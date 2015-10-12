-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_97
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'DownloadManageServicer.ACTION_CONTROL'),(21,'DownloadManageServicer.ACTION_UPDATE'),(8,'SQUARE'),(27,'android.app.action.ADD_DEVICE_ADMIN'),(13,'android.app.action.DEVICE_ADMIN_ENABLED'),(30,'android.app.action.SET_NEW_PASSWORD'),(28,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CONFIGURATION_CHANGED'),(18,'android.intent.action.DELETE'),(26,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.NEW_OUTGOING_CALL'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(12,'android.intent.action.PHONE_STATE'),(31,'android.intent.action.RINGTONE_PICKER'),(2,'android.intent.action.SIG_STR'),(17,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(14,'com.google.android.c2dm.intent.RECEIVE'),(15,'com.google.android.c2dm.intent.REGISTRATION'),(29,'com/android/vending/licensing/ILicensingService'),(24,'delete_history_account'),(25,'ps.android.view.tabbar.changeTab'),(22,'ps.keepaccount.activity.delteTodayAccount'),(23,'query_history_account'),(19,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'com.allen.txtqc',1),(3,'com.ps.square',10),(4,'com.ps.keepaccount',36),(5,'com.kniusw.phoneloc',33),(6,'com.gp.solitaire',462),(7,'com.alan.message',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(6,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE'),(2,'android.intent.category.SQUARE'),(5,'com.kniusw.phoneloc');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.safesys.viruskiller.Receiver'),(7,1,'com.safesys.viruskiller.ScanningReciever'),(8,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(9,2,'com.allen.txtqc.txtReader'),(10,2,'com.allen.txtqc.ViewFileAct_Float'),(11,2,'com.allen.txtqc.Settings'),(12,2,'com.eguan.state.Dialog'),(13,2,'com.eguan.state.StateService'),(14,2,'com.eguan.state.Receiver'),(15,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(16,3,'com.ps.square.Square'),(17,3,'com.ps.square.elos.Elos'),(18,3,'com.ps.square.eloscomplex.ElosComplex'),(19,4,'com.ps.keepaccount.Main'),(20,3,'com.google.update.Dialog'),(21,3,'com.waps.OffersWebView'),(22,4,'com.ps.keepaccount.tabbar.ButtonDemo'),(23,3,'com.google.update.UpdateService'),(24,4,'com.ps.keepaccount.activity.QueryAccount'),(25,3,'com.google.update.Receiver'),(26,4,'com.ps.keepaccount.activity.TodayAccount'),(27,4,'com.ps.keepaccount.activity.HistoryAccount'),(28,4,'com.ps.keepaccount.activity.WriteAccount'),(29,4,'com.ps.keepaccount.activity.TypeAccount'),(30,4,'com.ps.keepaccount.activity.DemoApp'),(31,4,'com.ps.keepaccount.activity.StatisticsMainActivity'),(32,4,'com.ps.keepaccount.activity.TypeAccountList'),(33,4,'com.ps.keepaccount.dialog.CanlendarDialog'),(34,4,'com.ps.keepaccount.dialog.DateSelectorDialog'),(35,4,'org.achartengine.GraphicalActivity'),(36,4,'com.google.update.Dialog'),(37,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,4,'com.waps.OffersWebView'),(39,4,'com.google.update.UpdateService'),(40,4,'com.google.update.Receiver'),(41,5,'com.kniusw.phoneloc.PL'),(42,5,'com.kniusw.phoneloc.Intro'),(43,5,'com.kniusw.phoneloc.SettingsApp'),(44,5,'com.kniusw.phoneloc.SettingsPL'),(45,5,'com.kniusw.phoneloc.SettingsNearby'),(46,5,'com.kniusw.phoneloc.SettingsSecurity'),(47,5,'com.kniusw.phoneloc.Found'),(48,5,'com.kniusw.phoneloc.CheckPass'),(49,5,'com.kniusw.phoneloc.Block'),(50,5,'com.kniusw.phoneloc.AlertNoGPS'),(51,5,'com.kniusw.phoneloc.Start'),(52,5,'com.kniusw.phoneloc.DeviceAdmin$Controller'),(53,5,'com.kniusw.phoneloc.CameraActivity2'),(54,5,'com.kniusw.phoneloc.SimCheck'),(55,5,'com.kniusw.phoneloc.GetLocation'),(56,5,'com.kniusw.phoneloc.Locate'),(57,5,'com.kniusw.phoneloc.ResetAdmin'),(58,5,'com.kniusw.phoneloc.SendLog'),(59,5,'com.kniusw.phoneloc.Nearby'),(60,5,'com.kniusw.phoneloc.Wipe'),(61,5,'com.kniusw.phoneloc.Lock'),(62,5,'com.kniusw.phoneloc.CallsLog'),(63,5,'com.kniusw.phoneloc.DisableLock'),(64,5,'com.kniusw.phoneloc.BaseData'),(65,5,'com.kniusw.phoneloc.SIMDetails'),(66,5,'com.kniusw.phoneloc.OI'),(67,5,'com.kniusw.phoneloc.C2DMReceiver'),(68,5,'com.airpuh.ad.UpdateCheck'),(69,5,'com.kniusw.phoneloc.SIMCheckLauncher'),(70,5,'com.kniusw.phoneloc.Loc'),(71,5,'com.kniusw.phoneloc.CallsHandler'),(72,5,'com.kniusw.phoneloc.DeviceAdmin'),(73,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(74,2,'com.eguan.state.Dialog$1'),(75,1,'com.safesys.viruskiller.MainActivity$2'),(76,2,'com.eguan.state.StateService$MyThread'),(77,6,'com.gp.solitaire.Solitaire'),(78,6,'com.google.update.Dialog'),(79,6,'cn.domob.android.ads.DomobActivity'),(80,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(81,6,'com.waps.OffersWebView'),(82,6,'com.google.update.UpdateService'),(83,6,'com.google.update.Receiver'),(84,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(85,1,'com.ju6.a'),(86,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(87,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(88,1,'com.safesys.viruskiller.ShowTips$1'),(89,3,'com.google.update.Dialog$1'),(90,3,'com.waps.ac'),(91,3,'com.waps.o'),(92,3,'com.google.update.Dialog$2'),(93,3,'com.ps.square.Square$ItemClickListener'),(94,3,'com.waps.z'),(95,3,'com.google.update.UpdateService$AA'),(96,3,'com.waps.q'),(97,3,'com.waps.aa'),(98,4,'com.waps.o'),(99,4,'com.waps.y'),(100,4,'com.ps.keepaccount.activity.QueryAccount$1'),(101,7,'com.alan.message.SmsMessage'),(102,4,'com.waps.s'),(103,7,'com.alan.message.MessageList'),(104,7,'com.alan.message.EditMessage'),(105,7,'com.alan.message.AddMessage'),(106,7,'com.alan.message.InputMessage'),(107,7,'com.alan.message.Setting'),(108,7,'com.alan.message.Help'),(109,7,'com.google.ads.AdActivity'),(110,7,'com.vpon.adon.android.WebInApp'),(111,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(112,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(113,4,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(114,7,'com.waps.OffersWebView'),(115,7,'com.google.update.Dialog'),(116,7,'com.google.update.UpdateService'),(117,7,'com.google.update.Receiver'),(118,4,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(119,4,'com.google.update.Dialog$2'),(120,4,'com.google.update.UpdateService$AA'),(121,4,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(122,4,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(123,4,'com.waps.x'),(124,4,'com.waps.AppConnect'),(125,6,'cn.domob.android.ads.DomobAdManager'),(126,6,'com.google.update.UpdateService$AA'),(127,4,'com.google.update.Dialog$1'),(128,6,'com.waps.y'),(129,4,'com.waps.aa'),(130,6,'cn.domob.android.ads.i$6'),(131,4,'com.waps.q'),(132,4,'com.ps.keepaccount.activity.WriteAccount$1'),(133,6,'cn.domob.android.ads.DomobAdEngine$2'),(134,6,'cn.domob.android.ads.DomobActionReceiver'),(135,6,'com.waps.x'),(136,6,'com.waps.o'),(137,6,'com.waps.q'),(138,6,'com.google.update.Dialog$1'),(139,6,'com.google.update.Dialog$2'),(140,6,'com.waps.aa'),(141,6,'cn.domob.android.ads.i'),(142,7,'com.google.update.Dialog$1'),(143,7,'com.ju6.a'),(144,7,'com.waps.m'),(145,7,'com.waps.AppConnect'),(146,7,'com.google.update.UpdateService$MyThread'),(147,7,'com.google.update.Dialog$2'),(148,7,'com.alan.message.Setting$1'),(149,7,'com.waps.k'),(150,5,'com.kniusw.phoneloc.SendLog$1'),(151,5,'android.app.admin.DeviceAdminReceiver'),(152,5,'com.kniusw.phoneloc.GetLocation$1'),(153,5,'com.kniusw.phoneloc.OI$1'),(154,5,'com.android.vending.licensing.LicenseChecker'),(155,5,'com.kniusw.phoneloc.PL$5'),(156,5,'com.google.android.c2dm.C2DMBaseReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'book1'),(2,10,'/sdcard/txtbooks/qc.txt'),(3,12,'TYPEdsada'),(4,2,'MM'),(5,12,'MSG'),(6,3,'SAFE_PID'),(7,3,'SAFE_START'),(8,4,'state'),(9,4,'notification_record'),(10,16,'CLIENT_PACKAGE'),(11,21,'CLIENT_PACKAGE'),(12,21,'SHWO_FLAG'),(13,21,'Notify_Id'),(14,21,'URL_PARAMS'),(15,15,'shouldResizeOverlay'),(16,15,'shouldShowTitlebar'),(17,20,'TYPEdsada'),(18,16,'APP_ID'),(19,21,'APP_ID'),(20,21,'UrlPath'),(21,16,'DEVICE_ID'),(22,21,'DEVICE_ID'),(23,21,'URL'),(24,16,'WAPS_ID'),(25,21,'WAPS_ID'),(26,21,'offers_webview_tag'),(27,15,'shouldMakeOverlayTransparent'),(28,21,'Offers_URL'),(29,15,'transitionTime'),(30,15,'shouldEnableBottomBar'),(31,15,'url'),(32,21,'ACTIVITY_FLAG'),(33,16,'WAPS_PID'),(34,21,'WAPS_PID'),(35,15,'overlayTitle'),(36,15,'shouldShowBottomBar'),(37,23,'ST_START_DELAY'),(38,21,'isFinshClose'),(39,15,'overlayTransition'),(40,23,'ST_MY_PID'),(41,21,'USER_ID'),(42,20,'MSG'),(43,21,'Notify_Url_Params'),(44,38,'Offers_URL'),(45,38,'SHWO_FLAG'),(46,38,'Notify_Id'),(47,37,'overlayTitle'),(48,19,'APP_ID'),(49,38,'APP_ID'),(50,39,'APP_ID'),(51,24,'APP_ID'),(52,28,'APP_ID'),(53,30,'APP_ID'),(54,27,'APP_ID'),(55,26,'APP_ID'),(56,37,'APP_ID'),(57,29,'APP_ID'),(58,39,'ST_MY_PID'),(59,38,'ACTIVITY_FLAG'),(60,38,'UrlPath'),(61,37,'shouldShowBottomBar'),(62,32,'endDate'),(63,37,'shouldMakeOverlayTransparent'),(64,37,'shouldResizeOverlay'),(65,29,'startDate'),(66,19,'DEVICE_ID'),(67,38,'DEVICE_ID'),(68,39,'DEVICE_ID'),(69,24,'DEVICE_ID'),(70,28,'DEVICE_ID'),(71,30,'DEVICE_ID'),(72,27,'DEVICE_ID'),(73,26,'DEVICE_ID'),(74,37,'DEVICE_ID'),(75,29,'DEVICE_ID'),(76,38,'offers_webview_tag'),(77,38,'isFinshClose'),(78,19,'CLIENT_PACKAGE'),(79,38,'CLIENT_PACKAGE'),(80,39,'CLIENT_PACKAGE'),(81,24,'CLIENT_PACKAGE'),(82,28,'CLIENT_PACKAGE'),(83,30,'CLIENT_PACKAGE'),(84,27,'CLIENT_PACKAGE'),(85,26,'CLIENT_PACKAGE'),(86,37,'CLIENT_PACKAGE'),(87,29,'CLIENT_PACKAGE'),(88,35,'title'),(89,35,'chart'),(90,24,'endDate'),(91,19,'WAPS_ID'),(92,38,'WAPS_ID'),(93,39,'WAPS_ID'),(94,24,'WAPS_ID'),(95,28,'WAPS_ID'),(96,30,'WAPS_ID'),(97,27,'WAPS_ID'),(98,26,'WAPS_ID'),(99,37,'WAPS_ID'),(100,29,'WAPS_ID'),(101,37,'transitionTime'),(102,29,'endDate'),(103,38,'URL'),(104,32,'type'),(105,37,'overlayTransition'),(106,38,'Notify_Url_Params'),(107,38,'URL_PARAMS'),(108,37,'shouldEnableBottomBar'),(109,37,'url'),(110,37,'shouldShowTitlebar'),(111,19,'WAPS_PID'),(112,38,'WAPS_PID'),(113,39,'WAPS_PID'),(114,24,'WAPS_PID'),(115,28,'WAPS_PID'),(116,30,'WAPS_PID'),(117,27,'WAPS_PID'),(118,26,'WAPS_PID'),(119,37,'WAPS_PID'),(120,29,'WAPS_PID'),(121,38,'USER_ID'),(122,36,'MSG'),(123,75,'MSG'),(124,78,'Offers_URL'),(125,77,'shouldMakeOverlayTransparent'),(126,39,'ST_START_DELAY'),(127,78,'URL_PARAMS'),(128,78,'URL'),(129,78,'WAPS_PID'),(130,74,'WAPS_PID'),(131,79,'ST_MY_PID'),(132,24,'startDate'),(133,76,'appId'),(134,78,'DEVICE_ID'),(135,74,'DEVICE_ID'),(136,78,'Notify_Id'),(137,78,'CLIENT_PACKAGE'),(138,74,'CLIENT_PACKAGE'),(139,36,'TYPEdsada'),(140,79,'DOMOB_PID'),(141,74,'DOMOB_PID'),(142,77,'DOMOB_PID'),(143,77,'shouldShowTitlebar'),(144,32,'startDate'),(145,78,'Notify_Url_Params'),(146,78,'APP_ID'),(147,74,'APP_ID'),(148,77,'overlayTransition'),(149,78,'UrlPath'),(150,75,'TYPEdsada'),(151,78,'ACTIVITY_FLAG'),(152,79,'DOMOB_TEST_MODE'),(153,74,'DOMOB_TEST_MODE'),(154,77,'DOMOB_TEST_MODE'),(155,78,'isFinshClose'),(156,77,'url'),(157,77,'transitionTime'),(158,78,'WAPS_ID'),(159,74,'WAPS_ID'),(160,76,'actType'),(161,77,'shouldShowBottomBar'),(162,77,'overlayTitle'),(163,79,'DOMOB_ALLOW_LOCATION'),(164,74,'DOMOB_ALLOW_LOCATION'),(165,77,'DOMOB_ALLOW_LOCATION'),(166,78,'USER_ID'),(167,77,'shouldEnableBottomBar'),(168,78,'SHWO_FLAG'),(169,79,'ST_START_DELAY'),(170,77,'shouldResizeOverlay'),(171,78,'offers_webview_tag'),(172,76,'appName'),(173,95,'shouldMakeOverlayTransparent'),(174,88,'WAPS_PID'),(175,85,'WAPS_PID'),(176,87,'WAPS_PID'),(177,86,'WAPS_PID'),(178,91,'WAPS_PID'),(179,89,'WAPS_PID'),(180,85,'message'),(181,88,'APP_ID'),(182,85,'APP_ID'),(183,87,'APP_ID'),(184,86,'APP_ID'),(185,91,'APP_ID'),(186,89,'APP_ID'),(187,95,'url'),(188,97,'isFinshClose'),(189,95,'overlayTransition'),(190,97,'URL'),(191,98,'TYPEdsada'),(192,88,'CLIENT_PACKAGE'),(193,85,'CLIENT_PACKAGE'),(194,87,'CLIENT_PACKAGE'),(195,86,'CLIENT_PACKAGE'),(196,91,'CLIENT_PACKAGE'),(197,89,'CLIENT_PACKAGE'),(198,86,'message'),(199,95,'overlayTitle'),(200,95,'shouldShowBottomBar'),(201,95,'shouldEnableBottomBar'),(202,97,'URL_PARAMS'),(203,97,'CLIENT_PACKAGE'),(204,88,'DEVICE_ID'),(205,85,'DEVICE_ID'),(206,87,'DEVICE_ID'),(207,86,'DEVICE_ID'),(208,91,'DEVICE_ID'),(209,89,'DEVICE_ID'),(210,95,'shouldShowTitlebar'),(211,93,'adWidth'),(212,85,'content'),(213,95,'transitionTime'),(214,87,'itemContent'),(215,99,'ST_MY_PID'),(216,94,'isTestMode'),(217,99,'ST_START_DELAY'),(218,98,'MSG'),(219,95,'shouldResizeOverlay'),(220,94,'Adwo_PID'),(221,97,'USER_ID'),(222,88,'WAPS_ID'),(223,85,'WAPS_ID'),(224,87,'WAPS_ID'),(225,86,'WAPS_ID'),(226,91,'WAPS_ID'),(227,89,'WAPS_ID'),(228,97,'Offers_URL'),(229,93,'url'),(230,51,'SC'),(231,41,'tip'),(232,71,'state'),(233,71,'android.intent.extra.PHONE_NUMBER'),(234,58,'Log outgoing'),(235,58,'shortLog outgoing'),(236,46,'screen'),(237,64,'Distance'),(238,48,'APP'),(239,64,'Interval'),(240,65,'user'),(241,56,'code'),(242,55,'Distance'),(243,70,'pdus'),(244,43,'screen'),(245,56,'user'),(246,64,'item'),(247,66,'txt'),(248,45,'android.intent.extra.ringtone.PICKED_URI'),(249,57,'PASS'),(250,55,'Sender'),(251,55,'nrMesages'),(252,71,'incoming_number'),(253,41,'screen'),(254,64,'Sender'),(255,58,'shortLog incoming'),(256,42,'screen'),(257,64,'nrMesages'),(258,65,'id'),(259,45,'screen'),(260,55,'Interval'),(261,44,'screen'),(262,58,'Log incoming'),(263,68,'MYAD_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',1,36,NULL),(73,73,'r',1,37,NULL),(74,77,'a',1,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'a',0,NULL,NULL),(79,82,'s',0,NULL,NULL),(80,83,'r',1,NULL,NULL),(81,84,'r',1,NULL,NULL),(82,86,'r',1,NULL,NULL),(83,87,'r',1,NULL,NULL),(84,96,'r',1,NULL,NULL),(85,101,'a',1,NULL,NULL),(86,103,'a',0,NULL,NULL),(87,104,'a',0,NULL,NULL),(88,105,'a',0,NULL,NULL),(89,106,'a',0,NULL,NULL),(90,107,'a',0,NULL,NULL),(91,108,'a',0,NULL,NULL),(92,109,'a',0,NULL,NULL),(93,110,'a',0,NULL,NULL),(94,111,'a',0,NULL,NULL),(95,112,'a',0,NULL,NULL),(96,113,'r',1,NULL,NULL),(97,114,'a',0,NULL,NULL),(98,115,'a',0,NULL,NULL),(99,116,'s',0,NULL,NULL),(100,117,'r',1,NULL,NULL),(101,118,'r',1,NULL,NULL),(102,121,'r',1,NULL,NULL),(103,122,'r',1,NULL,NULL),(104,131,'r',1,NULL,NULL),(105,134,'r',1,NULL,NULL),(106,137,'r',1,NULL,NULL),(107,144,'r',1,NULL,NULL),(108,150,'r',1,NULL,NULL),(109,72,'r',1,NULL,NULL),(110,151,'r',1,NULL,NULL),(111,152,'r',1,NULL,NULL),(112,153,'r',1,NULL,NULL),(113,73,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,7),(3,2,12),(4,3,1),(5,4,13),(6,5,1),(7,6,9),(8,7,4),(9,8,13),(10,9,3),(11,10,1),(12,11,13),(13,12,14),(14,13,6),(15,14,10),(16,15,2),(17,16,1),(18,17,20),(19,18,21),(20,19,21),(21,20,25),(22,21,23),(23,22,23),(24,23,20),(25,24,16),(26,25,16),(27,26,21),(28,27,23),(29,28,21),(30,29,21),(31,30,21),(32,31,38),(33,32,38),(34,33,38),(35,34,24),(36,35,37),(37,35,39),(38,35,30),(39,36,24),(40,37,39),(41,38,36),(42,39,39),(43,40,24),(44,41,38),(45,42,39),(46,42,37),(47,42,30),(48,43,29),(49,44,38),(50,45,38),(51,46,30),(52,47,74),(53,47,77),(54,47,79),(55,48,78),(56,49,30),(57,50,29),(58,51,79),(59,52,36),(60,53,78),(61,54,39),(62,55,40),(63,56,38),(64,57,74),(65,57,79),(66,57,77),(67,58,28),(68,59,24),(69,60,79),(70,61,77),(71,61,79),(72,61,74),(73,62,78),(74,63,78),(75,64,78),(76,65,78),(77,66,75),(78,67,80),(79,68,75),(80,69,78),(81,70,74),(82,70,77),(83,70,79),(84,71,79),(85,72,85),(86,73,85),(87,74,99),(88,75,85),(89,76,98),(90,77,85),(91,78,85),(92,79,86),(93,80,99),(94,81,85),(95,82,99),(96,83,98),(97,84,85),(98,85,85),(99,86,90),(100,87,86),(101,88,85),(102,89,97),(103,90,99),(104,91,85),(105,92,89),(106,93,85),(107,94,85),(108,95,85),(109,96,100),(110,97,85),(111,98,53),(112,99,46),(113,100,52),(114,101,43),(115,102,51),(116,103,49),(117,104,72),(118,105,64),(119,106,64),(120,107,41),(121,108,41),(122,109,70),(123,110,41),(124,111,64),(125,112,59),(126,113,69),(127,114,46),(128,115,49),(129,116,41),(130,117,61),(131,118,73),(132,119,61),(133,120,41),(134,121,64),(135,122,71),(136,123,70),(137,124,70),(138,125,72),(139,126,47),(140,127,41),(141,128,41),(142,129,70),(143,130,42),(144,131,70),(145,132,42),(146,133,64),(147,134,62),(148,135,45),(149,136,41),(150,137,41),(151,138,72),(152,139,41),(153,140,72),(154,141,64),(155,142,72),(156,143,72),(157,144,42),(158,145,71);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(2,74,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(3,75,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(4,76,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(5,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(6,9,'<com.allen.txtqc.txtReader: void onClick(android.view.View)>',10,'a',NULL),(7,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(8,13,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(9,85,'<com.ju6.a: boolean b()>',178,'p',NULL),(10,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(11,13,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(12,14,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,6,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,10,'<com.allen.txtqc.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(15,88,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(17,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(18,90,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(19,91,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(23,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(24,93,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(25,93,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(26,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,95,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(29,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(31,98,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(32,99,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(33,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(34,100,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(35,102,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(36,24,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(37,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,119,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,120,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,24,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(41,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(42,102,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(43,29,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(44,123,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(46,124,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(47,125,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(48,81,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(49,124,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(50,29,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(51,126,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(52,127,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(53,128,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(55,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,129,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(57,130,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,132,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(59,100,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(60,82,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(61,133,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(62,135,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(63,136,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(64,81,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(65,81,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(66,138,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(67,83,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(68,139,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(69,140,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(70,141,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(71,82,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',55,'a',NULL),(73,101,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(74,116,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,101,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(76,142,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(77,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',70,'a',NULL),(78,101,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(79,103,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(80,143,'<com.ju6.a: boolean b()>',178,'p',NULL),(81,145,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(82,146,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(83,147,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(84,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',60,'a',NULL),(85,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',141,'a',NULL),(86,148,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(87,103,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(88,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',50,'a',NULL),(89,149,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(90,116,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(91,101,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(92,106,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(93,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',146,'a',NULL),(94,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',64,'a',NULL),(95,101,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(96,117,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(97,101,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',76,'a',NULL),(98,53,'<com.kniusw.phoneloc.CameraActivity2: void postRequest(java.io.File)>',19,'a',NULL),(99,46,'<com.kniusw.phoneloc.SettingsSecurity: void enableAdm()>',7,'a',NULL),(100,52,'<com.kniusw.phoneloc.DeviceAdmin$Controller: void enableAdmin()>',6,'a',NULL),(101,43,'<com.kniusw.phoneloc.SettingsApp: void previewOI()>',22,'s',0),(102,154,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback,int)>',29,'s',NULL),(103,49,'<com.kniusw.phoneloc.Block: void onClick(android.view.View)>',21,'a',NULL),(104,72,'<com.kniusw.phoneloc.DeviceAdmin: java.lang.CharSequence onDisableRequested(android.content.Context,android.content.Intent)>',11,'s',0),(105,64,'<com.kniusw.phoneloc.BaseData: void fp(int)>',57,'s',0),(106,64,'<com.kniusw.phoneloc.BaseData: void fp(int)>',41,'s',NULL),(107,41,'<com.kniusw.phoneloc.PL: void onCreate(android.os.Bundle)>',282,'a',NULL),(108,155,'<com.kniusw.phoneloc.PL$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(109,70,'<com.kniusw.phoneloc.Loc: void onReceive(android.content.Context,android.content.Intent)>',131,'s',0),(110,41,'<com.kniusw.phoneloc.PL: void fp(int,int)>',72,'a',NULL),(111,64,'<com.kniusw.phoneloc.BaseData: void fp(int)>',36,'s',NULL),(112,59,'<com.kniusw.phoneloc.Nearby: void onStart(android.content.Intent,int)>',8,'a',NULL),(113,69,'<com.kniusw.phoneloc.SIMCheckLauncher: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(114,46,'<com.kniusw.phoneloc.SettingsSecurity: void SetPass()>',3,'a',NULL),(115,49,'<com.kniusw.phoneloc.Block: void onClick(android.view.View)>',10,'a',NULL),(116,41,'<com.kniusw.phoneloc.PL: void fp(int,int)>',47,'a',NULL),(117,61,'<com.kniusw.phoneloc.Lock: void onCreate()>',94,'s',0),(118,156,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(119,61,'<com.kniusw.phoneloc.Lock: void onCreate()>',143,'s',0),(120,41,'<com.kniusw.phoneloc.PL: void fp(int,int)>',43,'a',NULL),(121,64,'<com.kniusw.phoneloc.BaseData: void gasestePoz()>',14,'s',0),(122,71,'<com.kniusw.phoneloc.CallsHandler: void onReceive(android.content.Context,android.content.Intent)>',95,'s',0),(123,70,'<com.kniusw.phoneloc.Loc: void onReceive(android.content.Context,android.content.Intent)>',63,'s',0),(124,70,'<com.kniusw.phoneloc.Loc: void onReceive(android.content.Context,android.content.Intent)>',160,'s',0),(125,72,'<com.kniusw.phoneloc.DeviceAdmin: void onPasswordFailed(android.content.Context,android.content.Intent)>',40,'a',NULL),(126,47,'<com.kniusw.phoneloc.Found: void onStart()>',35,'s',NULL),(127,41,'<com.kniusw.phoneloc.PL: void onClick(android.view.View)>',39,'a',NULL),(128,41,'<com.kniusw.phoneloc.PL: void wizard()>',5,'a',NULL),(129,70,'<com.kniusw.phoneloc.Loc: void onReceive(android.content.Context,android.content.Intent)>',191,'s',0),(130,42,'<com.kniusw.phoneloc.Intro: void writeMyPref(java.lang.String,java.lang.String)>',30,'a',NULL),(131,70,'<com.kniusw.phoneloc.Loc: void onReceive(android.content.Context,android.content.Intent)>',220,'s',0),(132,42,'<com.kniusw.phoneloc.Intro: void SetPass()>',3,'a',NULL),(133,64,'<com.kniusw.phoneloc.BaseData: void fp(int)>',63,'a',NULL),(134,62,'<com.kniusw.phoneloc.CallsLog: void onStart(android.content.Intent,int)>',11,'p',NULL),(135,45,'<com.kniusw.phoneloc.SettingsNearby: void onClick(android.view.View)>',42,'a',NULL),(136,41,'<com.kniusw.phoneloc.PL: void onCreate(android.os.Bundle)>',8,'s',NULL),(137,41,'<com.kniusw.phoneloc.PL: void showBlock(int)>',9,'a',NULL),(138,72,'<com.kniusw.phoneloc.DeviceAdmin: void onPasswordFailed(android.content.Context,android.content.Intent)>',62,'s',0),(139,41,'<com.kniusw.phoneloc.PL: void fp(int,int)>',39,'a',NULL),(140,72,'<com.kniusw.phoneloc.DeviceAdmin: void onPasswordSucceeded(android.content.Context,android.content.Intent)>',21,'s',0),(141,64,'<com.kniusw.phoneloc.BaseData: void fp(int)>',31,'s',NULL),(142,72,'<com.kniusw.phoneloc.DeviceAdmin: void onPasswordFailed(android.content.Context,android.content.Intent)>',48,'a',NULL),(143,72,'<com.kniusw.phoneloc.DeviceAdmin: void onPasswordFailed(android.content.Context,android.content.Intent)>',18,'s',0),(144,42,'<com.kniusw.phoneloc.Intro: void enableAdm()>',4,'a',NULL),(145,71,'<com.kniusw.phoneloc.CallsHandler: void onReceive(android.content.Context,android.content.Intent)>',144,'s',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,16),(2,3,17),(3,4,1),(4,5,1),(5,6,18),(6,11,20),(7,17,1),(8,18,1),(9,20,1),(10,21,1),(11,23,17),(12,29,16),(13,32,17),(14,33,1),(15,34,1),(16,36,1),(17,37,1),(18,41,17),(19,45,22),(20,47,1),(21,48,1),(22,49,1),(23,50,1),(24,54,16),(25,55,1),(26,56,1),(27,57,23),(28,58,1),(29,59,1),(30,63,17),(31,65,1),(32,66,1),(33,68,1),(34,70,1),(35,72,1),(36,73,1),(37,74,1),(38,75,1),(39,82,17),(40,84,17),(41,86,17),(42,87,24),(43,88,17),(44,89,17),(45,92,17),(46,93,17),(47,95,1),(48,96,1),(49,98,1),(50,99,1),(51,101,16),(52,103,17),(53,109,1),(54,110,1),(55,111,26),(56,115,1),(57,116,1),(58,117,16),(59,119,26),(60,120,26),(61,123,17),(62,130,26),(63,133,27),(64,134,29),(65,135,17),(66,138,17),(67,142,30),(68,143,17),(69,152,30),(70,154,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,6),(3,17,1),(4,18,6),(5,20,1),(6,21,6),(7,33,6),(8,34,1),(9,36,1),(10,37,6),(11,47,1),(12,48,6),(13,49,1),(14,50,6),(15,55,1),(16,56,6),(17,58,1),(18,59,6),(19,65,1),(20,66,6),(21,68,1),(22,70,6),(23,72,1),(24,73,6),(25,74,1),(26,75,6),(27,95,1),(28,96,6),(29,98,1),(30,99,6),(31,109,1),(32,110,6),(33,115,1),(34,116,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/safesys/viruskiller/ScanningManagerService'),(2,7,'com/safesys/viruskiller/MainActivity'),(3,8,'com/allen/txtqc/ViewFileAct_Float'),(4,9,'com/eguan/state/Dialog'),(5,10,'com/eguan/state/Dialog'),(6,12,'com/eguan/state/Dialog'),(7,13,'com/eguan/state/Dialog'),(8,14,'com/eguan/state/StateService'),(9,15,'com/safesys/viruskiller/UpdateService'),(10,16,'com/allen/txtqc/Settings'),(11,19,'com/safesys/viruskiller/DownloadManageService'),(12,22,'NULL-CONSTANT'),(13,24,'com/google/update/UpdateService'),(14,25,'com/google/update/Dialog'),(15,26,'com/google/update/Dialog'),(16,27,'com/google/update/Dialog'),(17,28,'com/google/update/Dialog'),(18,30,'com/ps/square/elos/Elos'),(19,31,'com/ps/square/eloscomplex/ElosComplex'),(20,38,'com/waps/OffersWebView'),(21,39,'com/waps/OffersWebView'),(22,40,'(.*)'),(23,42,'com/waps/OffersWebView'),(24,43,'com/waps/OffersWebView'),(25,44,'(.*)'),(26,51,'com/ps/keepaccount/dialog/DateSelectorDialog'),(27,52,'com/google/update/Dialog'),(28,53,'com/google/update/Dialog'),(29,60,'com/waps/OffersWebView'),(30,61,'com/waps/OffersWebView'),(31,62,'com/ps/keepaccount/dialog/DateSelectorDialog'),(32,67,'com/waps/OffersWebView'),(33,69,'com/waps/OffersWebView'),(34,71,'com/ps/keepaccount/activity/TypeAccountList'),(35,77,'com/google/update/Dialog'),(36,76,'com/waps/OffersWebView'),(37,78,'com/google/update/Dialog'),(38,79,'com/waps/OffersWebView'),(39,80,'com/google/update/UpdateService'),(40,81,'NULL-CONSTANT'),(41,85,'com/ps/keepaccount/dialog/CanlendarDialog'),(42,90,'com/google/update/Dialog'),(43,91,'com/google/update/Dialog'),(44,97,'(.*)'),(45,100,'com/google/update/UpdateService'),(46,102,'NULL-CONSTANT'),(47,104,'com/google/update/Dialog'),(48,105,'com/google/update/Dialog'),(49,106,'com/alan/message/MessageList'),(50,107,'com/google/update/Dialog'),(51,108,'com/google/update/Dialog'),(52,112,'com/alan/message/Help'),(53,113,'com/alan/message/AddMessage'),(54,114,'com/waps/OffersWebView'),(55,118,'com/alan/message/MessageList'),(56,121,'com/alan/message/EditMessage'),(57,122,'com/alan/message/MessageList'),(58,124,'com/google/update/Dialog'),(59,125,'com/google/update/Dialog'),(60,126,'com/alan/message/MessageList'),(61,127,'com/alan/message/InputMessage'),(62,128,'com/alan/message/Setting'),(63,129,'com/google/update/UpdateService'),(64,131,'com/kniusw/phoneloc/Found'),(65,132,'com/kniusw/phoneloc/DeviceAdmin$Controller'),(66,136,'com/kniusw/phoneloc/Nearby'),(67,137,'com/kniusw/phoneloc/CheckPass'),(68,139,'com/kniusw/phoneloc/Start'),(69,140,'com/kniusw/phoneloc/Wipe'),(70,141,'com/kniusw/phoneloc/Found'),(71,144,'com/kniusw/phoneloc/SettingsSecurity'),(72,145,'com.kniusw.phoneloc.C2DMReceiver'),(73,146,'com/kniusw/phoneloc/SettingsNearby'),(74,147,'com/kniusw/phoneloc/CameraActivity2'),(75,148,'com/kniusw/phoneloc/Lock'),(76,149,'com/kniusw/phoneloc/SettingsApp'),(77,150,'com/kniusw/phoneloc/Intro'),(78,151,'com/kniusw/phoneloc/DeviceAdmin$Controller'),(79,153,'com/kniusw/phoneloc/CameraActivity2'),(80,155,'com/airpuh/ad/UpdateCheck'),(81,156,'com/kniusw/phoneloc/Block'),(82,157,'com/kniusw/phoneloc/SettingsPL'),(83,158,'com/kniusw/phoneloc/Lock'),(84,159,'com/kniusw/phoneloc/Found'),(85,160,'com/kniusw/phoneloc/DeviceAdmin$Controller');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,6,2),(3,23,4),(4,32,5),(5,41,6),(6,63,7),(7,82,9),(8,84,10),(9,86,11),(10,88,12),(11,89,13),(12,92,14),(13,93,15),(14,103,16),(15,123,18),(16,135,20),(17,138,21),(18,143,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'state'),(2,8,'/sdcard/txtbooks/qc.txt'),(3,8,'book1'),(4,9,'TYPEdsada'),(5,10,'MSG'),(6,10,'TYPEdsada'),(7,11,'cmd'),(8,12,'TYPEdsada'),(9,13,'MSG'),(10,13,'TYPEdsada'),(11,25,'TYPEdsada'),(12,26,'MSG'),(13,26,'TYPEdsada'),(14,27,'TYPEdsada'),(15,28,'MSG'),(16,28,'TYPEdsada'),(17,38,'Notify_Url_Params'),(18,38,'UrlPath'),(19,38,'ACTIVITY_FLAG'),(20,38,'isFinshClose'),(21,38,'offers_webview_tag'),(22,39,'UrlPath'),(23,39,'ACTIVITY_FLAG'),(24,39,'isFinshClose'),(25,39,'offers_webview_tag'),(26,42,'Notify_Url_Params'),(27,42,'UrlPath'),(28,42,'ACTIVITY_FLAG'),(29,42,'isFinshClose'),(30,42,'offers_webview_tag'),(31,43,'UrlPath'),(32,43,'ACTIVITY_FLAG'),(33,43,'isFinshClose'),(34,43,'offers_webview_tag'),(35,52,'TYPEdsada'),(36,53,'MSG'),(37,53,'TYPEdsada'),(38,57,'startDate'),(39,57,'endDate'),(40,60,'CLIENT_PACKAGE'),(41,60,'URL'),(42,60,'offers_webview_tag'),(43,61,'CLIENT_PACKAGE'),(44,61,'URL'),(45,61,'isFinshClose'),(46,61,'offers_webview_tag'),(47,67,'USER_ID'),(48,67,'CLIENT_PACKAGE'),(49,67,'Offers_URL'),(50,67,'offers_webview_tag'),(51,67,'URL_PARAMS'),(52,69,'USER_ID'),(53,69,'CLIENT_PACKAGE'),(54,69,'Offers_URL'),(55,69,'offers_webview_tag'),(56,69,'URL_PARAMS'),(57,71,'startDate'),(58,71,'endDate'),(59,71,'type'),(60,76,'UrlPath'),(61,76,'ACTIVITY_FLAG'),(62,76,'isFinshClose'),(63,77,'TYPEdsada'),(64,76,'offers_webview_tag'),(65,78,'MSG'),(66,79,'Notify_Url_Params'),(67,78,'TYPEdsada'),(68,79,'UrlPath'),(69,79,'ACTIVITY_FLAG'),(70,79,'isFinshClose'),(71,79,'offers_webview_tag'),(72,90,'MSG'),(73,90,'TYPEdsada'),(74,91,'TYPEdsada'),(75,104,'MSG'),(76,104,'TYPEdsada'),(77,105,'TYPEdsada'),(78,106,'type'),(79,107,'TYPEdsada'),(80,108,'MSG'),(81,108,'TYPEdsada'),(82,113,'type'),(83,114,'USER_ID'),(84,114,'CLIENT_PACKAGE'),(85,114,'Offers_URL'),(86,114,'URL_PARAMS'),(87,118,'type'),(88,121,'itemContent'),(89,121,'type'),(90,122,'type'),(91,124,'TYPEdsada'),(92,125,'MSG'),(93,125,'TYPEdsada'),(94,126,'type'),(95,133,'android.app.extra.DEVICE_ADMIN'),(96,133,'android.app.extra.ADD_EXPLANATION'),(97,137,'APP'),(98,139,'SC'),(99,154,'android.intent.extra.ringtone.SHOW_DEFAULT'),(100,154,'android.intent.extra.ringtone.SHOW_SILENT'),(101,154,'android.intent.extra.ringtone.TITLE'),(102,154,'android.intent.extra.ringtone.EXISTING_URI'),(103,156,'infoText');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,7),(7,4,5),(8,4,6),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,8),(15,9,8),(16,10,1),(17,11,4),(18,11,3),(19,11,2),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,15,9),(25,16,3),(26,17,10),(27,18,11),(28,18,12),(29,19,13),(30,20,14),(31,21,15),(32,22,1),(33,23,3),(34,23,2),(35,23,4),(36,24,19),(37,25,20),(38,26,21),(39,27,5),(40,28,1),(41,29,23),(42,30,2),(43,30,3),(44,30,4),(45,31,24),(46,32,25),(47,33,22),(48,34,5),(49,35,5),(50,36,5),(51,37,5),(52,38,28),(53,39,28),(54,40,28),(55,41,28),(56,42,28),(57,43,28),(58,44,28),(59,45,28),(60,46,28),(61,47,28),(62,48,28),(63,49,28),(64,50,28),(65,51,28),(66,52,28),(67,53,28),(68,54,28),(69,55,28),(70,56,9),(71,57,9),(72,58,9),(73,59,9),(74,60,9),(75,61,9),(76,62,9),(77,63,9),(78,64,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,7,1),(4,8,2),(5,9,2),(6,10,1),(7,13,1),(8,14,3),(9,17,4),(10,20,5),(11,21,5),(12,22,1),(13,28,1);
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
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,34,'package',NULL,NULL,NULL,NULL,NULL),(4,35,'package',NULL,NULL,NULL,NULL,NULL),(5,36,'package',NULL,NULL,NULL,NULL,NULL),(6,37,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,32,'application','vnd.android.package-archive'),(3,41,'application','vnd.android.package-archive'),(4,63,'application','vnd.android.package-archive'),(5,82,'application','vnd.android.package-archive'),(6,84,'application','vnd.android.package-archive'),(7,86,'application','vnd.android.package-archive'),(8,88,'application','vnd.android.package-archive'),(9,89,'application','vnd.android.package-archive'),(10,92,'application','vnd.android.package-archive'),(11,93,'application','vnd.android.package-archive'),(12,111,'vnd.android.cursor.item','phone'),(13,119,'vnd.android.cursor.item','phone'),(14,120,'image','*'),(15,123,'application','vnd.android.package-archive'),(16,130,'vnd.android.cursor.item','phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.safesys.viruskiller'),(2,4,'com.allen.txtqc'),(3,5,'com.allen.txtqc'),(4,7,'com.safesys.viruskiller'),(5,8,'com.allen.txtqc'),(6,9,'com.allen.txtqc'),(7,10,'com.allen.txtqc'),(8,12,'com.allen.txtqc'),(9,13,'com.allen.txtqc'),(10,14,'com.allen.txtqc'),(11,15,'com.safesys.viruskiller'),(12,16,'com.allen.txtqc'),(13,17,'com.noshufou.android.su'),(14,18,'com.noshufou.android.su'),(15,19,'com.safesys.viruskiller'),(16,20,'com.noshufou.android.su'),(17,21,'com.noshufou.android.su'),(18,22,'NULL-CONSTANT'),(19,24,'com.ps.square'),(20,25,'com.ps.square'),(21,26,'com.ps.square'),(22,27,'com.ps.square'),(23,28,'com.ps.square'),(24,30,'com.ps.square'),(25,31,'com.ps.square'),(26,33,'com.ps.square'),(27,34,'com.ps.square'),(28,36,'(.*)'),(29,37,'(.*)'),(30,38,'com.ps.square'),(31,39,'com.ps.square'),(32,40,'(.*)'),(33,42,'com.ps.keepaccount'),(34,43,'com.ps.keepaccount'),(35,44,'(.*)'),(36,47,'(.*)'),(37,48,'(.*)'),(38,49,'NULL-CONSTANT'),(39,50,'NULL-CONSTANT'),(40,51,'com.ps.keepaccount'),(41,52,'com.ps.keepaccount'),(42,53,'com.ps.keepaccount'),(43,55,'com.ps.keepaccount'),(44,56,'com.ps.keepaccount'),(45,58,'(.*)'),(46,59,'(.*)'),(47,60,'com.ps.keepaccount'),(48,61,'com.ps.keepaccount'),(49,62,'com.ps.keepaccount'),(50,65,'(.*)'),(51,66,'(.*)'),(52,67,'com.ps.keepaccount'),(53,68,'(.*)'),(54,70,'(.*)'),(55,69,'com.ps.keepaccount'),(56,71,'com.ps.keepaccount'),(57,72,'com.gp.solitaire'),(58,73,'com.gp.solitaire'),(59,74,'com.noshufou.android.su'),(60,75,'com.noshufou.android.su'),(61,77,'com.ps.keepaccount'),(62,76,'com.gp.solitaire'),(63,78,'com.ps.keepaccount'),(64,79,'com.gp.solitaire'),(65,80,'com.ps.keepaccount'),(66,81,'NULL-CONSTANT'),(67,85,'com.ps.keepaccount'),(68,90,'com.gp.solitaire'),(69,91,'com.gp.solitaire'),(70,95,'(.*)'),(71,96,'(.*)'),(72,97,'(.*)'),(73,98,'com.noshufou.android.su'),(74,99,'com.noshufou.android.su'),(75,100,'com.gp.solitaire'),(76,102,'NULL-CONSTANT'),(77,104,'com.gp.solitaire'),(78,105,'com.gp.solitaire'),(79,106,'com.alan.message'),(80,107,'com.alan.message'),(81,108,'com.alan.message'),(82,109,'com.noshufou.android.su'),(83,110,'com.noshufou.android.su'),(84,112,'com.alan.message'),(85,113,'com.alan.message'),(86,114,'com.alan.message'),(87,115,'com.alan.message'),(88,116,'com.alan.message'),(89,118,'com.alan.message'),(90,121,'com.alan.message'),(91,122,'com.alan.message'),(92,124,'com.alan.message'),(93,125,'com.alan.message'),(94,126,'com.alan.message'),(95,127,'com.alan.message'),(96,128,'com.alan.message'),(97,129,'com.alan.message'),(98,131,'com.kniusw.phoneloc'),(99,132,'com.kniusw.phoneloc'),(100,136,'com.kniusw.phoneloc'),(101,137,'com.kniusw.phoneloc'),(102,139,'com.kniusw.phoneloc'),(103,140,'com.kniusw.phoneloc'),(104,141,'com.kniusw.phoneloc'),(105,144,'com.kniusw.phoneloc'),(106,145,'com.kniusw.phoneloc'),(107,146,'com.kniusw.phoneloc'),(108,147,'com.kniusw.phoneloc'),(109,148,'com.kniusw.phoneloc'),(110,149,'com.kniusw.phoneloc'),(111,150,'com.kniusw.phoneloc'),(112,151,'com.kniusw.phoneloc'),(113,153,'com.kniusw.phoneloc'),(114,155,'com.kniusw.phoneloc'),(115,156,'com.kniusw.phoneloc'),(116,157,'com.kniusw.phoneloc'),(117,158,'com.kniusw.phoneloc'),(118,159,'com.kniusw.phoneloc'),(119,160,'com.kniusw.phoneloc');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,9,0),(6,14,0),(7,16,0),(8,17,0),(9,18,0),(10,19,0),(11,25,0),(12,40,0),(13,41,0),(14,52,0),(15,66,0),(16,69,0),(17,70,0),(18,71,0),(19,72,0),(20,73,0),(21,73,0),(22,74,0),(23,80,0),(24,81,0),(25,82,0),(26,83,0),(27,84,0),(28,85,0),(29,96,0),(30,100,0),(31,101,0),(32,102,0),(33,103,0),(34,104,0),(35,105,0),(36,106,0),(37,107,0),(38,108,0),(39,109,0),(40,71,0),(41,110,0),(42,69,0),(43,111,0),(44,112,0),(45,113,0),(46,70,0),(47,108,0),(48,109,0),(49,71,0),(50,110,0),(51,69,0),(52,111,0),(53,112,0),(54,113,0),(55,70,0),(56,108,0),(57,109,0),(58,71,0),(59,110,0),(60,69,0),(61,111,0),(62,112,0),(63,113,0),(64,70,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,7,0,0),(8,6,0,0),(9,8,0,0),(10,8,0,0),(11,10,1,0),(12,11,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,1,0),(18,15,1,0),(19,16,0,0),(20,17,1,0),(21,17,1,0),(22,18,0,0),(23,19,1,0),(24,20,0,0),(25,21,0,0),(26,21,0,0),(27,22,0,0),(28,22,0,0),(29,23,1,0),(30,24,0,0),(31,25,0,0),(32,26,1,0),(33,27,1,0),(34,27,1,0),(35,28,1,0),(36,28,1,0),(37,28,1,0),(38,29,0,0),(39,29,0,0),(40,30,0,0),(41,31,1,0),(42,32,0,0),(43,32,0,0),(44,33,0,0),(45,34,1,0),(46,35,1,0),(47,35,1,0),(48,35,1,0),(49,35,1,0),(50,35,1,0),(51,36,0,0),(52,37,0,0),(53,37,0,0),(54,38,1,0),(55,39,1,0),(56,39,1,0),(57,40,1,0),(58,41,1,0),(59,41,1,0),(60,42,0,0),(61,42,0,0),(62,43,0,0),(63,44,1,0),(64,45,1,0),(65,45,1,0),(66,45,1,0),(67,46,0,0),(68,48,1,0),(69,49,0,0),(70,48,1,0),(71,50,0,0),(72,51,1,0),(73,51,1,0),(74,52,1,0),(75,52,1,0),(76,53,0,0),(77,54,0,0),(78,54,0,0),(79,53,0,0),(80,55,0,0),(81,56,0,0),(82,57,1,0),(83,57,1,0),(84,57,1,0),(85,58,0,0),(86,57,1,0),(87,59,1,0),(88,57,1,0),(89,57,1,0),(90,60,0,0),(91,60,0,0),(92,62,1,0),(93,63,1,0),(94,64,1,0),(95,64,1,0),(96,64,1,0),(97,65,0,0),(98,66,1,0),(99,66,1,0),(100,67,0,0),(101,68,1,0),(102,69,0,0),(103,70,1,0),(104,71,0,0),(105,71,0,0),(106,72,0,0),(107,74,0,0),(108,74,0,0),(109,76,1,0),(110,76,1,0),(111,77,1,0),(112,78,0,0),(113,79,0,0),(114,81,0,0),(115,82,1,0),(116,82,1,0),(117,83,1,0),(118,84,0,0),(119,85,1,0),(120,86,1,0),(121,87,0,0),(122,88,0,0),(123,89,1,0),(124,90,0,0),(125,90,0,0),(126,93,0,0),(127,94,0,0),(128,95,0,0),(129,96,0,0),(130,97,1,0),(131,98,0,0),(132,99,0,0),(133,100,1,0),(134,102,1,0),(135,103,1,0),(136,106,0,0),(137,107,0,0),(138,108,1,0),(139,110,0,0),(140,111,0,0),(141,112,0,0),(142,114,1,0),(143,115,1,0),(144,116,0,0),(145,118,0,0),(146,120,0,0),(147,125,0,0),(148,126,0,0),(149,127,0,0),(150,128,0,0),(151,130,0,0),(152,132,1,0),(153,133,0,0),(154,135,1,0),(155,136,0,0),(156,137,0,0),(157,139,0,0),(158,141,0,0),(159,142,0,0),(160,144,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(33,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(36,'android.permission.BIND_DEVICE_ADMIN'),(24,'android.permission.CAMERA'),(9,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.GET_ACCOUNTS'),(10,'android.permission.GET_PACKAGE_SIZE'),(17,'android.permission.GET_TASKS'),(15,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(30,'android.permission.KILL_BACKGROUND_PROCESSES'),(19,'android.permission.PROCESS_INCOMING_CALLS'),(18,'android.permission.PROCESS_OUTGOING_CALLS'),(21,'android.permission.READ_CONTACTS'),(38,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(23,'android.permission.RESTART_PACKAGES'),(27,'android.permission.SEND_SMS'),(31,'android.permission.SYSTEM_ALERT_WINDOW'),(34,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'android.permission.WRITE_SECURE_SETTINGS'),(32,'android.permission.WRITE_SETTINGS'),(3,'android.permission.WRITE_SMS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(26,'com.android.vending.CHECK_LICENSE'),(29,'com.google.android.c2dm.permission.RECEIVE'),(37,'com.google.android.c2dm.permission.SEND'),(35,'com.kniusw.phoneloc.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (35,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(2,'package','(.*)',NULL,NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.kniusw.phoneloc',NULL,NULL,NULL),(21,NULL,NULL,'http://www.phonelocatorpro.com',NULL,NULL,NULL),(22,NULL,NULL,'http://web.me.com/rvoandev/PhoneLocator/Pro_version.html',NULL,NULL,NULL),(23,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,3),(2,47,8),(3,80,17),(4,92,19),(5,134,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,4),(15,2,6),(16,2,8),(17,2,13),(18,3,1),(19,3,4),(20,3,6),(21,3,8),(22,3,12),(23,3,13),(24,3,14),(25,4,17),(26,4,16),(27,4,1),(28,4,4),(29,4,5),(30,4,6),(31,4,8),(32,4,12),(33,4,13),(34,4,14),(35,4,15),(36,5,1),(37,5,3),(38,5,5),(39,5,6),(40,5,7),(41,5,8),(42,5,11),(43,5,12),(44,5,14),(45,5,19),(46,5,18),(47,5,21),(48,5,20),(49,5,23),(50,5,22),(51,5,25),(52,5,24),(53,5,27),(54,5,26),(55,5,29),(56,5,28),(57,5,31),(58,5,30),(59,5,34),(60,5,35),(61,5,32),(62,5,33),(63,6,1),(64,6,33),(65,6,3),(66,6,38),(67,6,4),(68,6,5),(69,6,6),(70,6,7),(71,6,8),(72,6,12),(73,6,13),(74,6,14),(75,6,15),(76,6,17),(77,6,16),(78,6,25),(79,7,1),(80,7,33),(81,7,3),(82,7,4),(83,7,38),(84,7,5),(85,7,6),(86,7,7),(87,7,8),(88,7,12),(89,7,13),(90,7,15),(91,7,17),(92,7,21),(93,7,25),(94,7,27);
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

-- Dump completed on 2015-10-09  0:41:15
