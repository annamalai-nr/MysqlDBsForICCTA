-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_143
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(9,'DownloadManageServicer.ACTION_CONTROL'),(11,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CHOOSER'),(10,'android.intent.action.DELETE'),(22,'android.intent.action.DIAL'),(17,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.SEND'),(24,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(28,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(27,'android.intent.action.WEB_SEARCH'),(18,'android.media.action.IMAGE_CAPTURE'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'delete_history_account'),(15,'ps.android.view.tabbar.changeTab'),(25,'ps.keepaccount.activity.delteTodayAccount'),(26,'query_history_account'),(12,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',32),(2,'com.ps.kickmouse',16),(3,'com.ps.keepaccount',25),(4,'com.droidhen.vipbasketball',55),(5,'com.the9.gamechannel',4),(6,'com.evilsunflower.animalpuzzle',2),(7,'com.alan.siwameinv9',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,2,'com.ps.kickmouse.WhacAMouse'),(3,1,'com.google.update.Dialog'),(4,2,'com.ps.kickmouse.Game'),(5,1,'com.google.update.UpdateService'),(6,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(7,1,'com.safesys.viruskiller.ScanningManagerService'),(8,2,'com.google.update.Dialog'),(9,1,'com.safesys.viruskiller.DownloadManageService'),(10,2,'com.waps.OffersWebView'),(11,1,'com.google.update.Receiver'),(12,2,'com.ps.kickmouse.DemoApp'),(13,2,'com.google.update.UpdateService'),(14,1,'com.safesys.viruskiller.ScanningReciever'),(15,2,'com.google.update.Receiver'),(16,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(17,4,'com.droidhen.vipbasketball.GameActivity'),(18,3,'com.ps.keepaccount.Main'),(19,4,'com.droidhen.vipbasketball.OptionActivity'),(20,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(21,4,'com.droidhen.api.promptclient.more.MoreActivity'),(22,3,'com.ps.keepaccount.activity.QueryAccount'),(23,4,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(24,3,'com.ps.keepaccount.activity.TodayAccount'),(25,4,'com.droidhen.api.promptclient.prompt.RateActivity'),(26,3,'com.ps.keepaccount.activity.HistoryAccount'),(27,4,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(28,3,'com.ps.keepaccount.activity.WriteAccount'),(29,4,'com.droidhen.api.scoreclient.ui.AchievementListActivity'),(30,3,'com.ps.keepaccount.activity.TypeAccount'),(31,4,'com.droidhen.vipbasketball.ShowTips'),(32,3,'com.ps.keepaccount.activity.DemoApp'),(33,4,'com.droidhen.vipbasketball.UpdateService'),(34,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(35,4,'com.droidhen.vipbasketball.Receiver'),(36,3,'com.ps.keepaccount.activity.TypeAccountList'),(37,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(38,4,'com.droidhen.api.scoreclient.ScoreClientProvider'),(39,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(40,5,'com.the9.gamechannel.SpotlightActivity'),(41,3,'org.achartengine.GraphicalActivity'),(42,3,'com.google.update.Dialog'),(43,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,5,'com.openfeint.internal.ui.IntroFlow'),(45,3,'com.waps.OffersWebView'),(46,5,'com.openfeint.api.ui.Dashboard'),(47,3,'com.google.update.UpdateService'),(48,5,'com.openfeint.internal.ui.Settings'),(49,3,'com.google.update.Receiver'),(50,5,'com.openfeint.internal.ui.NativeBrowser'),(51,5,'com.the9.gamechannel.remoteview'),(52,5,'com.google.update.Dialog'),(53,5,'com.google.update.UpdateService'),(54,5,'com.google.update.Receiver'),(55,6,'com.evilsunflower.animalpuzzle.Main'),(56,6,'com.evilsunflower.animalpuzzle.PuzzleView'),(57,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(58,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.evilsunflower.animalpuzzle.ShowTips'),(60,6,'com.evilsunflower.animalpuzzle.UpdateService'),(61,6,'com.evilsunflower.animalpuzzle.Receiver'),(62,7,'com.alan.siwameinv9.PaperCollection'),(63,7,'com.alan.siwameinv9.PictureGrid'),(64,7,'com.google.ads.AdActivity'),(65,7,'com.vpon.adon.android.WebInApp'),(66,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(67,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,7,'com.waps.OffersWebView'),(69,7,'com.google.update.Dialog'),(70,7,'com.google.update.UpdateService'),(71,7,'com.google.update.Receiver'),(72,1,'com.google.update.Dialog$2'),(73,1,'com.ju6.a'),(74,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(75,2,'com.waps.s'),(76,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(77,1,'com.google.update.UpdateService$MyThread'),(78,2,'com.waps.aa'),(79,1,'com.google.update.Dialog$1'),(80,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(81,2,'com.ps.kickmouse.WhacAMouse$2'),(82,1,'com.safesys.viruskiller.MainActivity$2'),(83,4,'com.droidhen.vipbasketball.ShowTips$1'),(84,2,'com.waps.o'),(85,4,'com.droidhen.api.promptclient.prompt.RecommendActivity$1'),(86,5,'com.google.update.UpdateService$MyThread'),(87,5,'com.google.update.Dialog$2'),(88,2,'com.google.update.Dialog$2'),(89,5,'com.ju6.a'),(90,5,'com.openfeint.internal.ImagePicker'),(91,2,'com.waps.AppConnect'),(92,5,'com.google.update.Dialog$1'),(93,7,'com.google.update.Dialog$2'),(94,2,'com.waps.z'),(95,7,'com.waps.k'),(96,2,'com.waps.ac'),(97,7,'com.ju6.a'),(98,7,'com.google.update.Dialog$1'),(99,3,'com.waps.o'),(100,5,'com.the9.gamechannel.SpotlightActivity$6'),(101,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(102,7,'com.google.update.UpdateService$MyThread'),(103,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(104,3,'com.google.update.UpdateService$AA'),(105,7,'com.waps.AppConnect'),(106,2,'com.google.update.UpdateService$AA'),(107,3,'com.ps.keepaccount.activity.WriteAccount$1'),(108,2,'com.waps.q'),(109,6,'com.mobclix.android.sdk.MobclixCreative$Action'),(110,3,'com.ps.keepaccount.ApkOperation'),(111,7,'com.waps.m'),(112,2,'com.google.update.Dialog$1'),(113,3,'com.ps.keepaccount.activity.QueryAccount$1'),(114,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(115,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(116,3,'com.waps.s'),(117,3,'com.waps.x'),(118,3,'com.waps.aa'),(119,6,'com.adwo.adsdk.g'),(120,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(121,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(122,3,'com.waps.AppConnect'),(123,3,'com.google.update.Dialog$2'),(124,3,'com.waps.q'),(125,3,'com.google.update.Dialog$1'),(126,6,'com.adwo.adsdk.D'),(127,3,'com.waps.y'),(128,6,'com.evilsunflower.animalpuzzle.ShowTips$1'),(129,6,'com.madhouse.android.ads._'),(130,6,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'ST_MY_PID'),(2,13,'CLIENT_PACKAGE'),(3,6,'CLIENT_PACKAGE'),(4,12,'CLIENT_PACKAGE'),(5,8,'TYPEdsada'),(6,7,'notification_record'),(7,3,'MSG'),(8,10,'CLIENT_PACKAGE'),(9,10,'Offers_URL'),(10,10,'SHWO_FLAG'),(11,6,'shouldShowTitlebar'),(12,2,'WAPS_PID'),(13,10,'WAPS_PID'),(14,13,'WAPS_PID'),(15,6,'WAPS_PID'),(16,12,'WAPS_PID'),(17,5,'ST_START_DELAY'),(18,7,'state'),(19,6,'shouldEnableBottomBar'),(20,31,'MM'),(21,6,'overlayTransition'),(22,27,'submit'),(23,6,'shouldMakeOverlayTransparent'),(24,3,'TYPEdsada'),(25,2,'WAPS_ID'),(26,10,'WAPS_ID'),(27,13,'WAPS_ID'),(28,6,'WAPS_ID'),(29,12,'WAPS_ID'),(30,33,'SAFE_START'),(31,27,'mode'),(32,25,'msg'),(33,27,'global'),(34,25,'file'),(35,33,'SAFE_PID'),(36,27,'board'),(37,63,'CLIENT_PACKAGE'),(38,68,'URL'),(39,64,'com.google.ads.AdOpener'),(40,67,'shouldResizeOverlay'),(41,6,'shouldShowBottomBar'),(42,63,'APP_ID'),(43,70,'ST_START_DELAY'),(44,67,'url'),(45,68,'isFinshClose'),(46,67,'transitionTime'),(47,65,'url'),(48,10,'ACTIVITY_FLAG'),(49,4,'Progrees'),(50,53,'ST_START_DELAY'),(51,4,'restart'),(52,4,'HP'),(53,6,'url'),(54,6,'overlayTitle'),(55,52,'TYPEdsada'),(56,63,'WAPS_ID'),(57,40,'screenName'),(58,48,'screenName'),(59,46,'screenName'),(60,44,'screenName'),(61,40,'content_name'),(62,48,'content_name'),(63,46,'content_name'),(64,44,'content_name'),(65,48,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(66,67,'shouldShowBottomBar'),(67,67,'overlayTransition'),(68,63,'DEVICE_ID'),(69,68,'Offers_URL'),(70,68,'USER_ID'),(71,10,'URL'),(72,4,'MouseGame'),(73,50,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(74,52,'MSG'),(75,53,'ST_MY_PID'),(76,68,'CLIENT_PACKAGE'),(77,69,'TYPEdsada'),(78,10,'isFinshClose'),(79,50,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(80,10,'Notify_Id'),(81,64,'params'),(82,45,'Offers_URL'),(83,10,'offers_webview_tag'),(84,2,'APP_ID'),(85,10,'APP_ID'),(86,13,'APP_ID'),(87,6,'APP_ID'),(88,66,'isTestMode'),(89,12,'APP_ID'),(90,68,'URL_PARAMS'),(91,45,'offers_webview_tag'),(92,70,'ST_MY_PID'),(93,43,'shouldEnableBottomBar'),(94,66,'Adwo_PID'),(95,48,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(96,48,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(97,63,'WAPS_PID'),(98,67,'shouldShowTitlebar'),(99,43,'url'),(100,30,'startDate'),(101,67,'shouldEnableBottomBar'),(102,67,'shouldMakeOverlayTransparent'),(103,67,'overlayTitle'),(104,43,'overlayTitle'),(105,45,'URL'),(106,6,'transitionTime'),(107,2,'DEVICE_ID'),(108,10,'DEVICE_ID'),(109,64,'action'),(110,60,'SAFE_START'),(111,13,'DEVICE_ID'),(112,57,'com.evilsunflower.animalpuzzle.type'),(113,65,'adWidth'),(114,6,'DEVICE_ID'),(115,69,'MSG'),(116,12,'DEVICE_ID'),(117,13,'ST_MY_PID'),(118,10,'USER_ID'),(119,10,'UrlPath'),(120,6,'shouldResizeOverlay'),(121,57,'imageUri'),(122,18,'WAPS_ID'),(123,45,'WAPS_ID'),(124,47,'WAPS_ID'),(125,22,'WAPS_ID'),(126,28,'WAPS_ID'),(127,32,'WAPS_ID'),(128,26,'WAPS_ID'),(129,24,'WAPS_ID'),(130,43,'WAPS_ID'),(131,10,'URL_PARAMS'),(132,30,'WAPS_ID'),(133,57,'com.evilsunflower.animalpuzzle.data'),(134,58,'transitionTime'),(135,2,'CLIENT_PACKAGE'),(136,18,'WAPS_PID'),(137,8,'MSG'),(138,45,'WAPS_PID'),(139,10,'Notify_Url_Params'),(140,58,'shouldShowBottomBar'),(141,47,'WAPS_PID'),(142,13,'ST_START_DELAY'),(143,58,'url'),(144,22,'WAPS_PID'),(145,28,'WAPS_PID'),(146,32,'WAPS_PID'),(147,26,'WAPS_PID'),(148,24,'WAPS_PID'),(149,43,'WAPS_PID'),(150,30,'WAPS_PID'),(151,45,'USER_ID'),(152,22,'endDate'),(153,58,'shouldEnableBottomBar'),(154,57,'(.*)'),(155,36,'endDate'),(156,43,'shouldShowTitlebar'),(157,42,'MSG'),(158,41,'title'),(159,18,'APP_ID'),(160,45,'APP_ID'),(161,47,'APP_ID'),(162,22,'APP_ID'),(163,28,'APP_ID'),(164,32,'APP_ID'),(165,26,'APP_ID'),(166,24,'APP_ID'),(167,43,'APP_ID'),(168,57,'Adwo_PID'),(169,30,'APP_ID'),(170,58,'overlayTransition'),(171,41,'chart'),(172,43,'transitionTime'),(173,36,'type'),(174,43,'overlayTransition'),(175,47,'ST_START_DELAY'),(176,22,'startDate'),(177,45,'isFinshClose'),(178,36,'startDate'),(179,45,'CLIENT_PACKAGE'),(180,45,'SHWO_FLAG'),(181,18,'DEVICE_ID'),(182,45,'DEVICE_ID'),(183,47,'DEVICE_ID'),(184,22,'DEVICE_ID'),(185,28,'DEVICE_ID'),(186,32,'DEVICE_ID'),(187,26,'DEVICE_ID'),(188,24,'DEVICE_ID'),(189,43,'DEVICE_ID'),(190,30,'DEVICE_ID'),(191,30,'endDate'),(192,43,'shouldShowBottomBar'),(193,45,'URL_PARAMS'),(194,43,'shouldMakeOverlayTransparent'),(195,47,'CLIENT_PACKAGE'),(196,32,'CLIENT_PACKAGE'),(197,43,'CLIENT_PACKAGE'),(198,45,'UrlPath'),(199,47,'ST_MY_PID'),(200,45,'ACTIVITY_FLAG'),(201,18,'CLIENT_PACKAGE'),(202,22,'CLIENT_PACKAGE'),(203,28,'CLIENT_PACKAGE'),(204,26,'CLIENT_PACKAGE'),(205,24,'CLIENT_PACKAGE'),(206,30,'CLIENT_PACKAGE'),(207,43,'shouldResizeOverlay'),(208,45,'Notify_Url_Params'),(209,42,'TYPEdsada'),(210,45,'Notify_Id'),(211,58,'shouldResizeOverlay'),(212,60,'SAFE_PID'),(213,58,'shouldMakeOverlayTransparent'),(214,58,'overlayTitle'),(215,58,'shouldShowTitlebar'),(216,59,'MM');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'p',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,74,'r',1,NULL,NULL),(73,76,'r',1,NULL,NULL),(74,80,'r',1,NULL,NULL),(75,101,'r',1,NULL,NULL),(76,103,'r',1,NULL,NULL),(77,108,'r',1,NULL,NULL),(78,111,'r',1,NULL,NULL),(79,114,'r',1,NULL,NULL),(80,120,'r',1,NULL,NULL),(81,121,'r',1,NULL,NULL),(82,124,'r',1,NULL,NULL),(83,126,'r',1,NULL,NULL),(84,130,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,5),(4,4,1),(5,5,5),(6,6,5),(7,7,6),(8,7,13),(9,7,12),(10,8,14),(11,8,1),(12,9,2),(13,10,2),(14,11,5),(15,12,10),(16,13,3),(17,14,11),(18,15,38),(19,16,2),(20,17,1),(21,18,38),(22,19,31),(23,20,1),(24,21,13),(25,22,7),(26,23,35),(27,24,38),(28,25,10),(29,26,17),(30,26,23),(31,27,13),(32,28,53),(33,29,15),(34,30,70),(35,31,52),(36,32,8),(37,33,53),(38,34,6),(39,34,12),(40,34,13),(41,35,64),(42,36,48),(43,36,44),(44,37,54),(45,38,12),(46,39,52),(47,40,10),(48,41,69),(49,42,10),(50,43,53),(51,44,68),(52,45,10),(53,46,70),(54,47,53),(55,48,12),(56,49,69),(57,50,45),(58,51,40),(59,52,6),(60,52,12),(61,52,13),(62,53,70),(63,54,47),(64,55,63),(65,56,13),(66,57,28),(67,58,71),(68,59,45),(69,60,57),(70,61,18),(71,62,70),(72,63,8),(73,64,57),(74,65,2),(75,66,22),(76,67,57),(77,68,10),(78,69,61),(79,70,47),(80,71,57),(81,72,43),(82,72,32),(83,72,47),(84,73,57),(85,74,45),(86,75,45),(87,76,57),(88,77,45),(89,78,57),(90,79,57),(91,79,55),(92,80,47),(93,80,32),(94,80,43),(95,81,22),(96,82,45),(97,83,32),(98,84,47),(99,85,30),(100,86,49),(101,87,42),(102,88,42),(103,89,22),(104,90,30),(105,91,32),(106,92,57),(107,93,45),(108,94,59),(109,95,57),(110,96,22),(111,97,57),(112,98,55),(113,99,57),(114,100,57),(115,101,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,72,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(3,73,'<com.ju6.a: boolean b()>',178,'p',NULL),(4,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(5,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,75,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(8,7,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(9,2,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(10,2,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(11,77,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(12,78,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(13,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(14,11,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,38,'<com.droidhen.api.scoreclient.ScoreClientProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',28,'p',0),(16,81,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(17,82,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(18,38,'<com.droidhen.api.scoreclient.ScoreClientProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',14,'p',0),(19,83,'<com.droidhen.vipbasketball.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(20,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(21,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,7,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(23,35,'<com.droidhen.vipbasketball.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,38,'<com.droidhen.api.scoreclient.ScoreClientProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',31,'p',0),(25,84,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,85,'<com.droidhen.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',26,'a',NULL),(27,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(28,86,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(29,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(31,87,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,88,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(33,89,'<com.ju6.a: boolean b()>',178,'p',NULL),(34,75,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(35,64,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(36,90,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(37,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(38,91,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(39,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(41,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,53,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(44,95,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(45,96,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(46,97,'<com.ju6.a: boolean b()>',178,'p',NULL),(47,53,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,91,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(49,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,99,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(51,100,'<com.the9.gamechannel.SpotlightActivity$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(52,75,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(53,102,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(54,104,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(55,105,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(56,106,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(57,107,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(58,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(59,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(60,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(61,110,'<com.ps.keepaccount.ApkOperation: void openFile(java.io.File)>',11,'a',NULL),(62,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,112,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',NULL),(65,2,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(66,113,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(67,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(68,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(69,61,'<com.evilsunflower.animalpuzzle.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(70,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,115,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(72,116,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(73,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',53,'a',NULL),(74,117,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(75,118,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(76,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(77,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(78,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',0),(79,119,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(80,116,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(81,22,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(82,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(83,122,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(84,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(85,30,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(86,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(87,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(88,125,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(89,113,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(90,30,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(91,122,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(92,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(93,127,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(94,128,'<com.evilsunflower.animalpuzzle.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(95,129,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(96,22,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(97,109,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(98,55,'<com.evilsunflower.animalpuzzle.Main: void switchToPuzzleView()>',39,'s',NULL),(99,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',35,'a',NULL),(100,57,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',44,'a',NULL),(101,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,8),(2,2,9),(3,3,10),(4,12,1),(5,13,1),(6,15,1),(7,16,1),(8,19,13),(9,20,13),(10,21,1),(11,23,1),(12,28,13),(13,29,13),(14,32,1),(15,33,1),(16,36,8),(17,37,8),(18,39,13),(19,40,14),(20,42,13),(21,43,13),(22,45,14),(23,46,1),(24,48,1),(25,49,8),(26,50,13),(27,52,13),(28,58,1),(29,59,1),(30,60,13),(31,61,13),(32,63,1),(33,64,1),(34,65,1),(35,66,1),(36,67,1),(37,68,1),(38,69,1),(39,71,1),(40,72,1),(41,73,1),(42,78,13),(43,81,1),(44,82,17),(45,84,1),(46,85,18),(47,87,16),(48,90,1),(49,91,1),(50,94,13),(51,95,13),(52,97,1),(53,98,21),(54,99,1),(55,100,21),(56,101,1),(57,102,21),(58,103,1),(59,104,21),(60,105,21),(61,106,21),(62,107,13),(63,108,21),(64,109,21),(65,111,13),(66,112,13),(67,114,1),(68,115,22),(69,116,1),(70,117,23),(71,118,24),(72,120,13),(73,122,13),(74,123,24),(75,124,23),(76,125,23),(77,126,13),(78,127,13),(79,128,22),(80,129,13),(81,130,26),(82,131,13),(83,132,1),(84,133,13),(85,134,24),(86,135,1),(87,136,23),(88,137,23),(89,138,23),(90,140,23),(91,142,24),(92,143,13),(93,145,23),(94,147,13),(95,150,23),(96,151,8),(97,152,13),(98,153,24),(99,154,1),(100,155,13),(101,156,1),(102,157,27),(103,158,13),(104,159,25),(105,160,27),(106,161,23),(107,163,13),(108,164,22),(109,168,1),(110,169,1),(111,175,17),(112,176,18),(113,177,21),(114,178,21),(115,179,21),(116,180,21),(117,181,21),(118,182,21),(119,183,21),(120,184,21),(121,185,13),(122,186,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,2),(2,13,1),(3,15,1),(4,16,2),(5,21,1),(6,23,2),(7,32,2),(8,33,1),(9,40,3),(10,43,3),(11,45,3),(12,46,1),(13,48,2),(14,58,1),(15,59,2),(16,63,1),(17,64,2),(18,65,2),(19,66,1),(20,67,1),(21,68,1),(22,69,2),(23,71,2),(24,72,2),(25,73,1),(26,81,1),(27,84,2),(28,90,1),(29,91,2),(30,97,1),(31,99,2),(32,101,1),(33,103,2),(34,114,1),(35,116,2),(36,132,1),(37,135,2),(38,154,1),(39,156,2),(40,168,1),(41,169,2);
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
INSERT INTO `IClasses` VALUES (1,4,'com/google/update/Dialog'),(2,5,'com/google/update/Dialog'),(3,6,'com/google/update/Dialog'),(4,7,'com/google/update/Dialog'),(5,8,'com/waps/OffersWebView'),(6,9,'com/safesys/viruskiller/ScanningManagerService'),(7,10,'com/ps/kickmouse/Game'),(8,11,'com/ps/kickmouse/DemoApp'),(9,14,'com/waps/OffersWebView'),(10,18,'com/google/update/UpdateService'),(11,17,'com/waps/OffersWebView'),(12,22,'com/safesys/viruskiller/DownloadManageService'),(13,25,'com/safesys/viruskiller/MainActivity'),(14,24,'com/google/update/Dialog'),(15,26,'com/google/update/Dialog'),(16,27,'com/droidhen/vipbasketball/UpdateService'),(17,30,'com/google/update/Dialog'),(18,31,'com/google/update/Dialog'),(19,34,'com/google/update/UpdateService'),(20,35,'com/google/update/Dialog'),(21,38,'com/google/update/Dialog'),(22,41,'com/google/update/UpdateService'),(23,44,'com/waps/OffersWebView'),(24,47,'(.*)'),(25,51,'com/google/update/Dialog'),(26,53,'com/google/update/Dialog'),(27,54,'NULL-CONSTANT'),(28,55,'com/google/update/Dialog'),(29,56,'com/waps/OffersWebView'),(30,57,'com/google/update/Dialog'),(31,70,'com/waps/OffersWebView'),(32,74,'com/ps/keepaccount/dialog/CanlendarDialog'),(33,75,'com/google/update/UpdateService'),(34,76,'(.*)'),(35,77,'com/mobclix/android/sdk/MobclixBrowserActivity'),(36,79,'com/google/update/Dialog'),(37,83,'com/google/update/Dialog'),(38,86,'com/ps/kickmouse/Game'),(39,89,'com/evilsunflower/animalpuzzle/UpdateService'),(40,92,'com/google/update/Dialog'),(41,93,'com/google/update/Dialog'),(42,110,'NULL-CONSTANT'),(43,119,'com/waps/OffersWebView'),(44,120,'com/adwo/adsdk/AdwoAdBrowserActivity'),(45,121,'com/waps/OffersWebView'),(46,127,'com.google.android.maps.MapsActivity'),(47,139,'com/waps/OffersWebView'),(48,141,'com/google/update/Dialog'),(49,144,'com/google/update/Dialog'),(50,146,'com/ps/keepaccount/dialog/DateSelectorDialog'),(51,147,'com.google.android.maps.MapsActivity'),(52,148,'com/google/update/UpdateService'),(53,152,'com.google.android.maps.MapsActivity'),(54,155,'com.google.android.maps.MapsActivity'),(55,162,'com/ps/keepaccount/activity/TypeAccountList'),(56,163,'com.google.android.maps.MapsActivity'),(57,166,'com/mobclix/android/sdk/MobclixBrowserActivity'),(58,165,'com/waps/OffersWebView'),(59,167,'com/waps/OffersWebView'),(60,170,'com/waps/OffersWebView'),(61,171,'com/ps/keepaccount/dialog/DateSelectorDialog'),(62,172,'com/mobclix/android/sdk/MobclixBrowserActivity'),(63,173,'com/evilsunflower/animalpuzzle/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,2),(2,19,3),(3,20,4),(4,28,5),(5,29,6),(6,39,8),(7,42,9),(8,40,10),(9,43,11),(10,45,12),(11,50,13),(12,52,14),(13,60,16),(14,61,17),(15,78,18),(16,94,20),(17,95,21),(18,107,22),(19,111,23),(20,112,24),(21,115,25),(22,117,26),(23,118,27),(24,122,28),(25,123,29),(26,124,30),(27,125,31),(28,126,32),(29,128,33),(30,129,34),(31,131,35),(32,134,36),(33,136,37),(34,140,38),(35,143,39),(36,145,40),(37,147,41),(38,150,42),(39,152,43),(40,153,44),(41,155,45),(42,158,46),(43,161,47),(44,163,48),(45,185,50),(46,186,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'cmd'),(2,4,'TYPEdsada'),(3,5,'MSG'),(4,5,'TYPEdsada'),(5,6,'TYPEdsada'),(6,7,'MSG'),(7,7,'TYPEdsada'),(8,8,'CLIENT_PACKAGE'),(9,8,'URL'),(10,8,'isFinshClose'),(11,8,'offers_webview_tag'),(12,9,'state'),(13,10,'restart'),(14,14,'UrlPath'),(15,14,'ACTIVITY_FLAG'),(16,14,'isFinshClose'),(17,14,'offers_webview_tag'),(18,17,'Notify_Url_Params'),(19,17,'UrlPath'),(20,17,'ACTIVITY_FLAG'),(21,17,'isFinshClose'),(22,17,'offers_webview_tag'),(23,24,'TYPEdsada'),(24,26,'MSG'),(25,26,'TYPEdsada'),(26,30,'TYPEdsada'),(27,31,'MSG'),(28,31,'TYPEdsada'),(29,35,'MSG'),(30,35,'TYPEdsada'),(31,38,'TYPEdsada'),(32,44,'USER_ID'),(33,44,'CLIENT_PACKAGE'),(34,44,'Offers_URL'),(35,44,'offers_webview_tag'),(36,44,'URL_PARAMS'),(37,51,'TYPEdsada'),(38,53,'MSG'),(39,53,'TYPEdsada'),(40,55,'TYPEdsada'),(41,56,'USER_ID'),(42,56,'CLIENT_PACKAGE'),(43,56,'Offers_URL'),(44,56,'offers_webview_tag'),(45,57,'MSG'),(46,56,'URL_PARAMS'),(47,57,'TYPEdsada'),(48,70,'USER_ID'),(49,70,'CLIENT_PACKAGE'),(50,70,'Offers_URL'),(51,70,'URL_PARAMS'),(52,79,'MSG'),(53,79,'TYPEdsada'),(54,83,'TYPEdsada'),(55,85,'output'),(56,85,'android.intent.extra.videoQuality'),(57,92,'TYPEdsada'),(58,93,'MSG'),(59,93,'TYPEdsada'),(60,98,'android.intent.extra.INTENT'),(61,100,'android.intent.extra.INTENT'),(62,102,'android.intent.extra.TITLE'),(63,102,'android.intent.extra.INTENT'),(64,104,'android.intent.extra.INTENT'),(65,105,'android.intent.extra.TITLE'),(66,105,'android.intent.extra.INTENT'),(67,106,'android.intent.extra.INTENT'),(68,108,'android.intent.extra.TITLE'),(69,108,'android.intent.extra.INTENT'),(70,109,'android.intent.extra.TITLE'),(71,109,'android.intent.extra.INTENT'),(72,117,'android.intent.extra.TEXT'),(73,117,'android.intent.extra.SUBJECT'),(74,117,'android.intent.extra.EMAIL'),(75,119,'CLIENT_PACKAGE'),(76,118,'sms_body'),(77,119,'URL'),(78,119,'offers_webview_tag'),(79,120,'url'),(80,121,'CLIENT_PACKAGE'),(81,121,'URL'),(82,121,'isFinshClose'),(83,121,'offers_webview_tag'),(84,124,'android.intent.extra.EMAIL'),(85,125,'android.intent.extra.TEXT'),(86,125,'android.intent.extra.EMAIL'),(87,130,'startDate'),(88,130,'endDate'),(89,136,'android.intent.extra.EMAIL'),(90,138,'android.intent.extra.TEXT'),(91,139,'USER_ID'),(92,138,'android.intent.extra.SUBJECT'),(93,139,'CLIENT_PACKAGE'),(94,138,'android.intent.extra.EMAIL'),(95,139,'Offers_URL'),(96,139,'offers_webview_tag'),(97,139,'URL_PARAMS'),(98,140,'android.intent.extra.TEXT'),(99,140,'android.intent.extra.SUBJECT'),(100,140,'android.intent.extra.EMAIL'),(101,141,'TYPEdsada'),(102,144,'MSG'),(103,144,'TYPEdsada'),(104,150,'android.intent.extra.TEXT'),(105,150,'android.intent.extra.EMAIL'),(106,153,'sms_body'),(107,157,'query'),(108,162,'startDate'),(109,162,'endDate'),(110,162,'type'),(111,165,'USER_ID'),(112,165,'CLIENT_PACKAGE'),(113,165,'Offers_URL'),(114,165,'offers_webview_tag'),(115,165,'URL_PARAMS'),(116,167,'Notify_Url_Params'),(117,167,'UrlPath'),(118,167,'ACTIVITY_FLAG'),(119,167,'isFinshClose'),(120,167,'offers_webview_tag'),(121,170,'UrlPath'),(122,170,'ACTIVITY_FLAG'),(123,170,'isFinshClose'),(124,170,'offers_webview_tag'),(125,176,'output'),(126,176,'android.intent.extra.videoQuality'),(127,177,'android.intent.extra.INTENT'),(128,178,'android.intent.extra.INTENT'),(129,179,'android.intent.extra.TITLE'),(130,179,'android.intent.extra.INTENT'),(131,180,'android.intent.extra.INTENT'),(132,181,'android.intent.extra.TITLE'),(133,181,'android.intent.extra.INTENT'),(134,182,'android.intent.extra.INTENT'),(135,183,'android.intent.extra.TITLE'),(136,183,'android.intent.extra.INTENT'),(137,184,'android.intent.extra.TITLE'),(138,184,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,3),(7,5,3),(8,5,2),(9,5,4),(10,6,6),(11,6,5),(12,6,7),(13,7,1),(14,8,1),(15,9,4),(16,9,2),(17,9,3),(18,10,1),(19,11,4),(20,11,3),(21,11,2),(22,12,4),(23,12,3),(24,12,2),(25,13,1),(26,14,2),(27,14,4),(28,14,3),(29,15,1),(30,16,2),(31,16,3),(32,16,4),(33,17,11),(34,18,12),(35,19,9),(36,20,15),(37,21,16),(38,22,5),(39,23,5),(40,24,19),(41,24,20),(42,25,19),(43,25,20),(44,26,25),(45,27,26),(46,28,5),(47,29,20),(48,29,19),(49,30,28),(50,30,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,7,1),(4,8,1),(5,10,1),(6,13,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,28,'application','vnd.android.package-archive'),(2,45,'(.*)','(.*)'),(3,50,'application','vnd.android.package-archive'),(4,52,'application','vnd.android.package-archive'),(5,60,'application','vnd.android.package-archive'),(6,61,'application','vnd.android.package-archive'),(7,78,'application','vnd.android.package-archive'),(8,82,'image','*'),(9,107,'application','vnd.android.package-archive'),(10,122,'*','*'),(11,131,'(.*)','(.*)'),(12,138,'message','rfc882'),(13,143,'(.*)','(.*)'),(14,158,'*','*'),(15,175,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.safesys.viruskiller'),(2,5,'com.safesys.viruskiller'),(3,6,'com.safesys.viruskiller'),(4,7,'com.safesys.viruskiller'),(5,8,'com.ps.kickmouse'),(6,9,'com.safesys.viruskiller'),(7,10,'com.ps.kickmouse'),(8,11,'com.ps.kickmouse'),(9,12,'com.safesys.viruskiller'),(10,13,'com.safesys.viruskiller'),(11,15,'com.noshufou.android.su'),(12,14,'com.ps.kickmouse'),(13,16,'com.noshufou.android.su'),(14,18,'com.safesys.viruskiller'),(15,17,'com.ps.kickmouse'),(16,21,'com.noshufou.android.su'),(17,22,'com.safesys.viruskiller'),(18,23,'com.noshufou.android.su'),(19,25,'com.safesys.viruskiller'),(20,24,'com.ps.kickmouse'),(21,26,'com.ps.kickmouse'),(22,27,'com.droidhen.vipbasketball'),(23,30,'com.ps.kickmouse'),(24,31,'com.ps.kickmouse'),(25,32,'com.the9.gamechannel'),(26,33,'com.the9.gamechannel'),(27,34,'com.ps.kickmouse'),(28,35,'com.alan.siwameinv9'),(29,38,'com.alan.siwameinv9'),(30,41,'com.the9.gamechannel'),(31,44,'com.ps.kickmouse'),(32,46,'com.noshufou.android.su'),(33,47,'(.*)'),(34,48,'com.noshufou.android.su'),(35,51,'com.the9.gamechannel'),(36,53,'com.the9.gamechannel'),(37,54,'NULL-CONSTANT'),(38,55,'com.the9.gamechannel'),(39,58,'com.noshufou.android.su'),(40,56,'com.ps.kickmouse'),(41,57,'com.the9.gamechannel'),(42,59,'com.noshufou.android.su'),(43,63,'(.*)'),(44,64,'com.alan.siwameinv9'),(45,65,'(.*)'),(46,66,'com.alan.siwameinv9'),(47,67,'NULL-CONSTANT'),(48,68,'com.ps.keepaccount'),(49,69,'NULL-CONSTANT'),(50,71,'com.ps.keepaccount'),(51,70,'com.alan.siwameinv9'),(52,72,'com.ps.kickmouse'),(53,73,'com.ps.kickmouse'),(54,74,'com.ps.keepaccount'),(55,75,'com.alan.siwameinv9'),(56,76,'(.*)'),(57,77,'com.evilsunflower.animalpuzzle'),(58,81,'com.noshufou.android.su'),(59,79,'com.alan.siwameinv9'),(60,84,'com.noshufou.android.su'),(61,83,'com.alan.siwameinv9'),(62,86,'com.ps.kickmouse'),(63,89,'com.evilsunflower.animalpuzzle'),(64,90,'(.*)'),(65,91,'(.*)'),(66,92,'com.ps.keepaccount'),(67,93,'com.ps.keepaccount'),(68,97,'(.*)'),(69,99,'(.*)'),(70,101,'NULL-CONSTANT'),(71,103,'NULL-CONSTANT'),(72,110,'NULL-CONSTANT'),(73,114,'(.*)'),(74,116,'(.*)'),(75,119,'com.ps.keepaccount'),(76,120,'com.evilsunflower.animalpuzzle'),(77,121,'com.ps.keepaccount'),(78,127,'com.google.android.apps.maps'),(79,132,'(.*)'),(80,135,'(.*)'),(81,139,'com.ps.keepaccount'),(82,141,'com.ps.keepaccount'),(83,144,'com.ps.keepaccount'),(84,146,'com.ps.keepaccount'),(85,147,'com.google.android.apps.maps'),(86,148,'com.ps.keepaccount'),(87,152,'com.google.android.apps.maps'),(88,154,'com.noshufou.android.su'),(89,156,'com.noshufou.android.su'),(90,155,'com.google.android.apps.maps'),(91,162,'com.ps.keepaccount'),(92,163,'com.google.android.apps.maps'),(93,166,'com.evilsunflower.animalpuzzle'),(94,165,'com.ps.keepaccount'),(95,168,'com.noshufou.android.su'),(96,167,'com.ps.keepaccount'),(97,169,'com.noshufou.android.su'),(98,170,'com.ps.keepaccount'),(99,171,'com.ps.keepaccount'),(100,172,'com.evilsunflower.animalpuzzle'),(101,173,'com.evilsunflower.animalpuzzle');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,11,0),(4,14,0),(5,15,0),(6,16,0),(7,17,0),(8,18,0),(9,35,0),(10,40,0),(11,49,0),(12,54,0),(13,55,0),(14,61,0),(15,63,0),(16,71,0),(17,72,0),(18,73,0),(19,74,0),(20,75,0),(21,76,0),(22,77,0),(23,78,0),(24,79,0),(25,79,0),(26,80,0),(27,81,0),(28,82,0),(29,83,0),(30,84,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,4,1,0),(4,5,0,0),(5,5,0,0),(6,6,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,11,1,0),(13,11,1,0),(14,12,0,0),(15,13,1,0),(16,13,1,0),(17,12,0,0),(18,14,0,0),(19,16,1,0),(20,17,1,0),(21,19,1,0),(22,20,0,0),(23,19,1,0),(24,21,0,0),(25,22,0,0),(26,21,0,0),(27,23,0,0),(28,25,1,0),(29,26,1,0),(30,27,0,0),(31,27,0,0),(32,28,1,0),(33,28,1,0),(34,29,0,0),(35,30,0,0),(36,31,1,0),(37,32,1,0),(38,30,0,0),(39,34,1,0),(40,35,1,0),(41,37,0,0),(42,34,1,0),(43,35,1,0),(44,38,0,0),(45,35,1,0),(46,39,1,0),(47,40,0,0),(48,39,1,0),(49,41,1,0),(50,42,1,0),(51,43,0,0),(52,44,1,0),(53,43,0,0),(54,45,0,0),(55,47,0,0),(56,48,0,0),(57,47,0,0),(58,49,1,0),(59,49,1,0),(60,50,1,0),(61,51,1,0),(62,52,1,0),(63,52,1,0),(64,53,1,0),(65,52,1,0),(66,53,1,0),(67,52,1,0),(68,54,1,0),(69,52,1,0),(70,55,0,0),(71,54,1,0),(72,56,1,0),(73,56,1,0),(74,57,0,0),(75,58,0,0),(76,59,0,0),(77,60,0,0),(78,61,1,0),(79,62,0,0),(80,64,1,0),(81,63,1,0),(82,64,1,0),(83,62,0,0),(84,63,1,0),(85,64,1,0),(86,65,0,0),(87,66,1,0),(88,68,1,0),(89,69,0,0),(90,68,1,0),(91,68,1,0),(92,70,0,0),(93,70,0,0),(94,71,1,0),(95,71,1,0),(96,72,1,0),(97,72,1,0),(98,73,1,0),(99,72,1,0),(100,73,1,0),(101,72,1,0),(102,73,1,0),(103,72,1,0),(104,73,1,0),(105,73,1,0),(106,73,1,0),(107,74,1,0),(108,73,1,0),(109,73,1,0),(110,75,0,0),(111,76,1,0),(112,76,1,0),(113,77,1,0),(114,77,1,0),(115,79,1,0),(116,77,1,0),(117,79,1,0),(118,79,1,0),(119,80,0,0),(120,79,0,0),(121,80,0,0),(122,79,1,0),(123,79,1,0),(124,79,1,0),(125,79,1,0),(126,79,1,0),(127,79,0,0),(128,79,1,0),(129,79,1,0),(130,81,1,0),(131,79,1,0),(132,82,1,0),(133,79,1,0),(134,79,1,0),(135,82,1,0),(136,79,1,0),(137,79,1,0),(138,79,1,0),(139,83,0,0),(140,79,1,0),(141,84,0,0),(142,79,1,0),(143,79,1,0),(144,84,0,0),(145,79,1,0),(146,85,0,0),(147,79,0,0),(148,86,0,0),(149,79,1,0),(150,79,1,0),(151,87,1,0),(152,79,0,0),(153,79,1,0),(154,88,1,0),(155,79,0,0),(156,88,1,0),(157,79,1,0),(158,79,1,0),(159,89,1,0),(160,79,1,0),(161,79,1,0),(162,90,0,0),(163,79,0,0),(164,79,1,0),(165,91,0,0),(166,92,0,0),(167,93,0,0),(168,94,1,0),(169,94,1,0),(170,93,0,0),(171,96,0,0),(172,97,0,0),(173,98,0,0),(174,99,1,0),(175,99,1,0),(176,99,1,0),(177,100,1,0),(178,100,1,0),(179,100,1,0),(180,100,1,0),(181,100,1,0),(182,100,1,0),(183,100,1,0),(184,100,1,0),(185,101,1,0),(186,101,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,173,60,2,NULL),(2,2,55,2,NULL),(3,2,63,2,NULL),(4,88,55,2,NULL),(5,88,63,2,NULL),(6,90,55,2,NULL),(7,90,63,2,NULL),(8,91,55,2,NULL),(9,91,63,2,NULL),(10,130,55,2,NULL),(11,130,63,2,NULL),(12,113,55,2,NULL),(13,113,63,2,NULL),(14,114,55,2,NULL),(15,114,63,2,NULL),(16,116,55,2,NULL),(17,116,63,2,NULL),(18,132,55,2,NULL),(19,132,63,2,NULL),(20,135,55,2,NULL),(21,135,63,2,NULL),(22,80,55,2,NULL),(23,80,63,2,NULL),(24,85,55,2,NULL),(25,85,63,2,NULL),(26,98,55,2,NULL),(27,98,63,2,NULL),(28,100,55,2,NULL),(29,100,63,2,NULL),(30,102,55,2,NULL),(31,102,63,2,NULL),(32,104,55,2,NULL),(33,104,63,2,NULL),(34,105,55,2,NULL),(35,105,63,2,NULL),(36,106,55,2,NULL),(37,106,63,2,NULL),(38,108,55,2,NULL),(39,108,63,2,NULL),(40,109,55,2,NULL),(41,109,63,2,NULL),(42,174,55,2,NULL),(43,174,63,2,NULL),(44,176,55,2,NULL),(45,176,63,2,NULL),(46,177,55,2,NULL),(47,177,63,2,NULL),(48,178,55,2,NULL),(49,178,63,2,NULL),(50,179,55,2,NULL),(51,179,63,2,NULL),(52,180,55,2,NULL),(53,180,63,2,NULL),(54,181,55,2,NULL),(55,181,63,2,NULL),(56,182,55,2,NULL),(57,182,63,2,NULL),(58,183,55,2,NULL),(59,183,63,2,NULL),(60,184,55,2,NULL),(61,184,63,2,NULL),(62,40,55,2,NULL),(63,40,63,2,NULL),(64,43,55,2,NULL),(65,43,63,2,NULL),(66,80,1,2,NULL),(67,40,1,2,NULL),(68,85,1,2,NULL),(69,43,1,2,NULL),(70,98,1,2,NULL),(71,40,11,2,NULL),(72,100,1,2,NULL),(73,43,11,2,NULL),(74,102,1,2,NULL),(75,40,14,2,NULL),(76,104,1,2,NULL),(77,43,14,2,NULL),(78,105,1,2,NULL),(79,40,72,2,NULL),(80,106,1,2,NULL),(81,43,72,2,NULL),(82,108,1,2,NULL),(83,40,73,2,NULL),(84,109,1,2,NULL),(85,43,73,2,NULL),(86,174,1,2,NULL),(87,40,74,2,NULL),(88,176,1,2,NULL),(89,43,74,2,NULL),(90,177,1,2,NULL),(91,40,2,2,NULL),(92,178,1,2,NULL),(93,43,2,2,NULL),(94,179,1,2,NULL),(95,40,15,2,NULL),(96,180,1,2,NULL),(97,43,15,2,NULL),(98,181,1,2,NULL),(99,40,18,2,NULL),(100,182,1,2,NULL),(101,43,18,2,NULL),(102,183,1,2,NULL),(103,40,49,2,NULL),(104,184,1,2,NULL),(105,43,49,2,NULL),(106,80,11,2,NULL),(107,40,75,2,NULL),(108,85,11,2,NULL),(109,43,75,2,NULL),(110,98,11,2,NULL),(111,40,76,2,NULL),(112,100,11,2,NULL),(113,43,76,2,NULL),(114,102,11,2,NULL),(115,40,80,2,NULL),(116,104,11,2,NULL),(117,43,80,2,NULL),(118,105,11,2,NULL),(119,40,81,2,NULL),(120,106,11,2,NULL),(121,43,81,2,NULL),(122,108,11,2,NULL),(123,40,17,2,NULL),(124,109,11,2,NULL),(125,43,17,2,NULL),(126,174,11,2,NULL),(127,40,35,2,NULL),(128,176,11,2,NULL),(129,43,35,2,NULL),(130,177,11,2,NULL),(131,40,40,2,NULL),(132,178,11,2,NULL),(133,43,40,2,NULL),(134,179,11,2,NULL),(135,40,54,2,NULL),(136,180,11,2,NULL),(137,43,54,2,NULL),(138,181,11,2,NULL),(139,40,61,2,NULL),(140,182,11,2,NULL),(141,43,61,2,NULL),(142,183,11,2,NULL),(143,40,79,2,NULL),(144,184,11,2,NULL),(145,43,79,2,NULL),(146,80,14,2,NULL),(147,40,83,2,NULL),(148,85,14,2,NULL),(149,43,83,2,NULL),(150,98,14,2,NULL),(151,40,84,2,NULL),(152,100,14,2,NULL),(153,43,84,2,NULL),(154,102,14,2,NULL),(155,40,71,2,NULL),(156,104,14,2,NULL),(157,43,71,2,NULL),(158,105,14,2,NULL),(159,35,3,2,NULL),(160,106,14,2,NULL),(161,35,8,2,NULL),(162,108,14,2,NULL),(163,35,42,2,NULL),(164,109,14,2,NULL),(165,35,52,2,NULL),(166,174,14,2,NULL),(167,35,69,2,NULL),(168,176,14,2,NULL),(169,38,3,2,NULL),(170,177,14,2,NULL),(171,38,8,2,NULL),(172,178,14,2,NULL),(173,38,42,2,NULL),(174,179,14,2,NULL),(175,38,52,2,NULL),(176,180,14,2,NULL),(177,38,69,2,NULL),(178,181,14,2,NULL),(179,79,3,2,NULL),(180,182,14,2,NULL),(181,79,8,2,NULL),(182,183,14,2,NULL),(183,79,42,2,NULL),(184,184,14,2,NULL),(185,79,52,2,NULL),(186,80,72,2,NULL),(187,79,69,2,NULL),(188,85,72,2,NULL),(189,83,3,2,NULL),(190,98,72,2,NULL),(191,83,8,2,NULL),(192,100,72,2,NULL),(193,83,42,2,NULL),(194,102,72,2,NULL),(195,83,52,2,NULL),(196,104,72,2,NULL),(197,83,69,2,NULL),(198,105,72,2,NULL),(199,75,5,2,NULL),(200,106,72,2,NULL),(201,75,13,2,NULL),(202,108,72,2,NULL),(203,75,47,2,NULL),(204,109,72,2,NULL),(205,75,53,2,NULL),(206,174,72,2,NULL),(207,75,70,2,NULL),(208,176,72,2,NULL),(209,2,71,2,NULL),(210,177,72,2,NULL),(211,88,71,2,NULL),(212,178,72,2,NULL),(213,90,71,2,NULL),(214,179,72,2,NULL),(215,91,71,2,NULL),(216,180,72,2,NULL),(217,130,71,2,NULL),(218,181,72,2,NULL),(219,113,71,2,NULL),(220,182,72,2,NULL),(221,114,71,2,NULL),(222,183,72,2,NULL),(223,116,71,2,NULL),(224,184,72,2,NULL),(225,132,71,2,NULL),(226,80,73,2,NULL),(227,135,71,2,NULL),(228,85,73,2,NULL),(229,80,71,2,NULL),(230,98,73,2,NULL),(231,85,71,2,NULL),(232,100,73,2,NULL),(233,98,71,2,NULL),(234,102,73,2,NULL),(235,100,71,2,NULL),(236,104,73,2,NULL),(237,102,71,2,NULL),(238,105,73,2,NULL),(239,104,71,2,NULL),(240,106,73,2,NULL),(241,105,71,2,NULL),(242,108,73,2,NULL),(243,106,71,2,NULL),(244,109,73,2,NULL),(245,108,71,2,NULL),(246,174,73,2,NULL),(247,109,71,2,NULL),(248,176,73,2,NULL),(249,174,71,2,NULL),(250,177,73,2,NULL),(251,176,71,2,NULL),(252,178,73,2,NULL),(253,177,71,2,NULL),(254,179,73,2,NULL),(255,178,71,2,NULL),(256,180,73,2,NULL),(257,179,71,2,NULL),(258,181,73,2,NULL),(259,180,71,2,NULL),(260,182,73,2,NULL),(261,181,71,2,NULL),(262,183,73,2,NULL),(263,182,71,2,NULL),(264,184,73,2,NULL),(265,183,71,2,NULL),(266,80,74,2,NULL),(267,184,71,2,NULL),(268,85,74,2,NULL),(269,98,74,2,NULL),(270,100,74,2,NULL),(271,102,74,2,NULL),(272,104,74,2,NULL),(273,105,74,2,NULL),(274,106,74,2,NULL),(275,108,74,2,NULL),(276,109,74,2,NULL),(277,174,74,2,NULL),(278,176,74,2,NULL),(279,177,74,2,NULL),(280,178,74,2,NULL),(281,179,74,2,NULL),(282,180,74,2,NULL),(283,181,74,2,NULL),(284,182,74,2,NULL),(285,183,74,2,NULL),(286,184,74,2,NULL),(287,80,2,2,NULL),(288,85,2,2,NULL),(289,98,2,2,NULL),(290,100,2,2,NULL),(291,102,2,2,NULL),(292,104,2,2,NULL),(293,105,2,2,NULL),(294,106,2,2,NULL),(295,108,2,2,NULL),(296,109,2,2,NULL),(297,174,2,2,NULL),(298,176,2,2,NULL),(299,177,2,2,NULL),(300,178,2,2,NULL),(301,179,2,2,NULL),(302,180,2,2,NULL),(303,181,2,2,NULL),(304,182,2,2,NULL),(305,183,2,2,NULL),(306,184,2,2,NULL),(307,80,15,2,NULL),(308,85,15,2,NULL),(309,98,15,2,NULL),(310,100,15,2,NULL),(311,102,15,2,NULL),(312,104,15,2,NULL),(313,105,15,2,NULL),(314,106,15,2,NULL),(315,108,15,2,NULL),(316,109,15,2,NULL),(317,174,15,2,NULL),(318,176,15,2,NULL),(319,177,15,2,NULL),(320,178,15,2,NULL),(321,179,15,2,NULL),(322,180,15,2,NULL),(323,181,15,2,NULL),(324,182,15,2,NULL),(325,183,15,2,NULL),(326,184,15,2,NULL),(327,80,18,2,NULL),(328,85,18,2,NULL),(329,98,18,2,NULL),(330,100,18,2,NULL),(331,102,18,2,NULL),(332,104,18,2,NULL),(333,105,18,2,NULL),(334,106,18,2,NULL),(335,108,18,2,NULL),(336,109,18,2,NULL),(337,174,18,2,NULL),(338,176,18,2,NULL),(339,177,18,2,NULL),(340,178,18,2,NULL),(341,179,18,2,NULL),(342,180,18,2,NULL),(343,181,18,2,NULL),(344,182,18,2,NULL),(345,183,18,2,NULL),(346,184,18,2,NULL),(347,80,49,2,NULL),(348,85,49,2,NULL),(349,98,49,2,NULL),(350,100,49,2,NULL),(351,102,49,2,NULL),(352,104,49,2,NULL),(353,105,49,2,NULL),(354,106,49,2,NULL),(355,108,49,2,NULL),(356,109,49,2,NULL),(357,174,49,2,NULL),(358,176,49,2,NULL),(359,177,49,2,NULL),(360,178,49,2,NULL),(361,179,49,2,NULL),(362,180,49,2,NULL),(363,181,49,2,NULL),(364,182,49,2,NULL),(365,183,49,2,NULL),(366,184,49,2,NULL),(367,80,75,2,NULL),(368,85,75,2,NULL),(369,98,75,2,NULL),(370,100,75,2,NULL),(371,102,75,2,NULL),(372,104,75,2,NULL),(373,105,75,2,NULL),(374,106,75,2,NULL),(375,108,75,2,NULL),(376,109,75,2,NULL),(377,174,75,2,NULL),(378,176,75,2,NULL),(379,177,75,2,NULL),(380,178,75,2,NULL),(381,179,75,2,NULL),(382,180,75,2,NULL),(383,181,75,2,NULL),(384,182,75,2,NULL),(385,183,75,2,NULL),(386,184,75,2,NULL),(387,80,76,2,NULL),(388,85,76,2,NULL),(389,98,76,2,NULL),(390,100,76,2,NULL),(391,102,76,2,NULL),(392,104,76,2,NULL),(393,105,76,2,NULL),(394,106,76,2,NULL),(395,108,76,2,NULL),(396,109,76,2,NULL),(397,174,76,2,NULL),(398,176,76,2,NULL),(399,177,76,2,NULL),(400,178,76,2,NULL),(401,179,76,2,NULL),(402,180,76,2,NULL),(403,181,76,2,NULL),(404,182,76,2,NULL),(405,183,76,2,NULL),(406,184,76,2,NULL),(407,80,80,2,NULL),(408,85,80,2,NULL),(409,98,80,2,NULL),(410,100,80,2,NULL),(411,102,80,2,NULL),(412,104,80,2,NULL),(413,105,80,2,NULL),(414,106,80,2,NULL),(415,108,80,2,NULL),(416,109,80,2,NULL),(417,174,80,2,NULL),(418,176,80,2,NULL),(419,177,80,2,NULL),(420,178,80,2,NULL),(421,179,80,2,NULL),(422,180,80,2,NULL),(423,181,80,2,NULL),(424,182,80,2,NULL),(425,183,80,2,NULL),(426,184,80,2,NULL),(427,80,81,2,NULL),(428,85,81,2,NULL),(429,98,81,2,NULL),(430,100,81,2,NULL),(431,102,81,2,NULL),(432,104,81,2,NULL),(433,105,81,2,NULL),(434,106,81,2,NULL),(435,108,81,2,NULL),(436,109,81,2,NULL),(437,174,81,2,NULL),(438,176,81,2,NULL),(439,177,81,2,NULL),(440,178,81,2,NULL),(441,179,81,2,NULL),(442,180,81,2,NULL),(443,181,81,2,NULL),(444,182,81,2,NULL),(445,183,81,2,NULL),(446,184,81,2,NULL),(447,80,17,2,NULL),(448,85,17,2,NULL),(449,98,17,2,NULL),(450,100,17,2,NULL),(451,102,17,2,NULL),(452,104,17,2,NULL),(453,105,17,2,NULL),(454,106,17,2,NULL),(455,108,17,2,NULL),(456,109,17,2,NULL),(457,174,17,2,NULL),(458,176,17,2,NULL),(459,177,17,2,NULL),(460,178,17,2,NULL),(461,179,17,2,NULL),(462,180,17,2,NULL),(463,181,17,2,NULL),(464,182,17,2,NULL),(465,183,17,2,NULL),(466,184,17,2,NULL),(467,80,35,2,NULL),(468,85,35,2,NULL),(469,98,35,2,NULL),(470,100,35,2,NULL),(471,102,35,2,NULL),(472,104,35,2,NULL),(473,105,35,2,NULL),(474,106,35,2,NULL),(475,108,35,2,NULL),(476,109,35,2,NULL),(477,174,35,2,NULL),(478,176,35,2,NULL),(479,177,35,2,NULL),(480,178,35,2,NULL),(481,179,35,2,NULL),(482,180,35,2,NULL),(483,181,35,2,NULL),(484,182,35,2,NULL),(485,183,35,2,NULL),(486,184,35,2,NULL),(487,80,40,2,NULL),(488,85,40,2,NULL),(489,98,40,2,NULL),(490,100,40,2,NULL),(491,102,40,2,NULL),(492,104,40,2,NULL),(493,105,40,2,NULL),(494,106,40,2,NULL),(495,108,40,2,NULL),(496,109,40,2,NULL),(497,174,40,2,NULL),(498,176,40,2,NULL),(499,177,40,2,NULL),(500,178,40,2,NULL),(501,179,40,2,NULL),(502,180,40,2,NULL),(503,181,40,2,NULL),(504,182,40,2,NULL),(505,183,40,2,NULL),(506,184,40,2,NULL),(507,80,54,2,NULL),(508,85,54,2,NULL),(509,98,54,2,NULL),(510,100,54,2,NULL),(511,102,54,2,NULL),(512,104,54,2,NULL),(513,105,54,2,NULL),(514,106,54,2,NULL),(515,108,54,2,NULL),(516,109,54,2,NULL),(517,174,54,2,NULL),(518,176,54,2,NULL),(519,177,54,2,NULL),(520,178,54,2,NULL),(521,179,54,2,NULL),(522,180,54,2,NULL),(523,181,54,2,NULL),(524,182,54,2,NULL),(525,183,54,2,NULL),(526,184,54,2,NULL),(527,80,61,2,NULL),(528,85,61,2,NULL),(529,98,61,2,NULL),(530,100,61,2,NULL),(531,102,61,2,NULL),(532,104,61,2,NULL),(533,105,61,2,NULL),(534,106,61,2,NULL),(535,108,61,2,NULL),(536,109,61,2,NULL),(537,174,61,2,NULL),(538,176,61,2,NULL),(539,177,61,2,NULL),(540,178,61,2,NULL),(541,179,61,2,NULL),(542,180,61,2,NULL),(543,181,61,2,NULL),(544,182,61,2,NULL),(545,183,61,2,NULL),(546,184,61,2,NULL),(547,80,79,2,NULL),(548,85,79,2,NULL),(549,98,79,2,NULL),(550,100,79,2,NULL),(551,102,79,2,NULL),(552,104,79,2,NULL),(553,105,79,2,NULL),(554,106,79,2,NULL),(555,108,79,2,NULL),(556,109,79,2,NULL),(557,174,79,2,NULL),(558,176,79,2,NULL),(559,177,79,2,NULL),(560,178,79,2,NULL),(561,179,79,2,NULL),(562,180,79,2,NULL),(563,181,79,2,NULL),(564,182,79,2,NULL),(565,183,79,2,NULL),(566,184,79,2,NULL),(567,80,83,2,NULL),(568,85,83,2,NULL),(569,98,83,2,NULL),(570,100,83,2,NULL),(571,102,83,2,NULL),(572,104,83,2,NULL),(573,105,83,2,NULL),(574,106,83,2,NULL),(575,108,83,2,NULL),(576,109,83,2,NULL),(577,174,83,2,NULL),(578,176,83,2,NULL),(579,177,83,2,NULL),(580,178,83,2,NULL),(581,179,83,2,NULL),(582,180,83,2,NULL),(583,181,83,2,NULL),(584,182,83,2,NULL),(585,183,83,2,NULL),(586,184,83,2,NULL),(587,80,84,2,NULL),(588,85,84,2,NULL),(589,98,84,2,NULL),(590,100,84,2,NULL),(591,102,84,2,NULL),(592,104,84,2,NULL),(593,105,84,2,NULL),(594,106,84,2,NULL),(595,108,84,2,NULL),(596,109,84,2,NULL),(597,174,84,2,NULL),(598,176,84,2,NULL),(599,177,84,2,NULL),(600,178,84,2,NULL),(601,179,84,2,NULL),(602,180,84,2,NULL),(603,181,84,2,NULL),(604,182,84,2,NULL),(605,183,84,2,NULL),(606,184,84,2,NULL),(607,89,60,2,NULL),(608,2,61,2,NULL),(609,88,61,2,NULL),(610,90,61,2,NULL),(611,91,61,2,NULL),(612,130,61,2,NULL),(613,113,61,2,NULL),(614,114,61,2,NULL),(615,116,61,2,NULL),(616,132,61,2,NULL),(617,135,61,2,NULL),(618,2,79,2,NULL),(619,88,79,2,NULL),(620,90,79,2,NULL),(621,91,79,2,NULL),(622,130,79,2,NULL),(623,113,79,2,NULL),(624,114,79,2,NULL),(625,116,79,2,NULL),(626,132,79,2,NULL),(627,135,79,2,NULL),(628,2,83,2,NULL),(629,88,83,2,NULL),(630,90,83,2,NULL),(631,91,83,2,NULL),(632,130,83,2,NULL),(633,113,83,2,NULL),(634,114,83,2,NULL),(635,116,83,2,NULL),(636,132,83,2,NULL),(637,135,83,2,NULL),(638,2,84,2,NULL),(639,88,84,2,NULL),(640,90,84,2,NULL),(641,91,84,2,NULL),(642,130,84,2,NULL),(643,113,84,2,NULL),(644,114,84,2,NULL),(645,116,84,2,NULL),(646,132,84,2,NULL),(647,135,84,2,NULL),(648,10,4,2,NULL),(649,11,12,2,NULL),(650,86,4,2,NULL),(651,2,2,2,NULL),(652,88,2,2,NULL),(653,90,2,2,NULL),(654,91,2,2,NULL),(655,130,2,2,NULL),(656,113,2,2,NULL),(657,114,2,2,NULL),(658,116,2,2,NULL),(659,132,2,2,NULL),(660,135,2,2,NULL),(661,88,1,2,NULL),(662,90,1,2,NULL),(663,91,1,2,NULL),(664,88,11,2,NULL),(665,90,11,2,NULL),(666,91,11,2,NULL),(667,88,14,2,NULL),(668,90,14,2,NULL),(669,91,14,2,NULL),(670,88,72,2,NULL),(671,90,72,2,NULL),(672,91,72,2,NULL),(673,88,73,2,NULL),(674,90,73,2,NULL),(675,91,73,2,NULL),(676,88,74,2,NULL),(677,90,74,2,NULL),(678,91,74,2,NULL),(679,88,15,2,NULL),(680,90,15,2,NULL),(681,91,15,2,NULL),(682,88,18,2,NULL),(683,90,18,2,NULL),(684,91,18,2,NULL),(685,88,49,2,NULL),(686,90,49,2,NULL),(687,91,49,2,NULL),(688,88,75,2,NULL),(689,90,75,2,NULL),(690,91,75,2,NULL),(691,88,76,2,NULL),(692,90,76,2,NULL),(693,91,76,2,NULL),(694,88,80,2,NULL),(695,90,80,2,NULL),(696,91,80,2,NULL),(697,88,81,2,NULL),(698,90,81,2,NULL),(699,91,81,2,NULL),(700,88,17,2,NULL),(701,90,17,2,NULL),(702,91,17,2,NULL),(703,88,35,2,NULL),(704,90,35,2,NULL),(705,91,35,2,NULL),(706,88,40,2,NULL),(707,90,40,2,NULL),(708,91,40,2,NULL),(709,88,54,2,NULL),(710,90,54,2,NULL),(711,91,54,2,NULL),(712,24,3,2,NULL),(713,24,8,2,NULL),(714,24,42,2,NULL),(715,24,52,2,NULL),(716,24,69,2,NULL),(717,26,3,2,NULL),(718,26,8,2,NULL),(719,26,42,2,NULL),(720,26,52,2,NULL),(721,26,69,2,NULL),(722,30,3,2,NULL),(723,30,8,2,NULL),(724,30,42,2,NULL),(725,30,52,2,NULL),(726,30,69,2,NULL),(727,31,3,2,NULL),(728,31,8,2,NULL),(729,31,42,2,NULL),(730,31,52,2,NULL),(731,31,69,2,NULL),(732,34,5,2,NULL),(733,34,13,2,NULL),(734,34,47,2,NULL),(735,34,53,2,NULL),(736,34,70,2,NULL),(737,2,15,2,NULL),(738,130,15,2,NULL),(739,113,15,2,NULL),(740,114,15,2,NULL),(741,116,15,2,NULL),(742,132,15,2,NULL),(743,135,15,2,NULL),(744,2,17,2,NULL),(745,130,17,2,NULL),(746,113,17,2,NULL),(747,114,17,2,NULL),(748,116,17,2,NULL),(749,132,17,2,NULL),(750,135,17,2,NULL),(751,27,33,2,NULL),(752,2,35,2,NULL),(753,130,35,2,NULL),(754,113,35,2,NULL),(755,114,35,2,NULL),(756,116,35,2,NULL),(757,132,35,2,NULL),(758,135,35,2,NULL),(759,22,9,2,NULL),(760,2,11,2,NULL),(761,2,14,2,NULL),(762,2,72,2,NULL),(763,2,73,2,NULL),(764,2,74,2,NULL),(765,2,18,2,NULL),(766,130,1,2,NULL),(767,113,1,2,NULL),(768,114,1,2,NULL),(769,116,1,2,NULL),(770,132,1,2,NULL),(771,135,1,2,NULL),(772,2,49,2,NULL),(773,2,75,2,NULL),(774,2,76,2,NULL),(775,2,80,2,NULL),(776,2,81,2,NULL),(777,2,40,2,NULL),(778,2,54,2,NULL),(779,4,3,2,NULL),(780,4,8,2,NULL),(781,4,42,2,NULL),(782,4,52,2,NULL),(783,4,69,2,NULL),(784,5,3,2,NULL),(785,5,8,2,NULL),(786,5,42,2,NULL),(787,5,52,2,NULL),(788,5,69,2,NULL),(789,6,3,2,NULL),(790,6,8,2,NULL),(791,6,42,2,NULL),(792,6,52,2,NULL),(793,6,69,2,NULL),(794,7,3,2,NULL),(795,7,8,2,NULL),(796,7,42,2,NULL),(797,7,52,2,NULL),(798,7,69,2,NULL),(799,9,7,2,NULL),(800,25,1,2,NULL),(801,18,5,2,NULL),(802,18,13,2,NULL),(803,18,47,2,NULL),(804,18,53,2,NULL),(805,18,70,2,NULL),(806,130,11,2,NULL),(807,113,11,2,NULL),(808,114,11,2,NULL),(809,116,11,2,NULL),(810,132,11,2,NULL),(811,135,11,2,NULL),(812,130,14,2,NULL),(813,113,14,2,NULL),(814,114,14,2,NULL),(815,116,14,2,NULL),(816,132,14,2,NULL),(817,135,14,2,NULL),(818,130,72,2,NULL),(819,113,72,2,NULL),(820,114,72,2,NULL),(821,116,72,2,NULL),(822,132,72,2,NULL),(823,135,72,2,NULL),(824,130,73,2,NULL),(825,113,73,2,NULL),(826,114,73,2,NULL),(827,116,73,2,NULL),(828,132,73,2,NULL),(829,135,73,2,NULL),(830,130,74,2,NULL),(831,113,74,2,NULL),(832,114,74,2,NULL),(833,116,74,2,NULL),(834,132,74,2,NULL),(835,135,74,2,NULL),(836,130,18,2,NULL),(837,113,18,2,NULL),(838,114,18,2,NULL),(839,116,18,2,NULL),(840,130,40,2,NULL),(841,132,18,2,NULL),(842,113,40,2,NULL),(843,135,18,2,NULL),(844,114,40,2,NULL),(845,171,39,2,NULL),(846,116,40,2,NULL),(847,130,49,2,NULL),(848,132,40,2,NULL),(849,130,75,2,NULL),(850,135,40,2,NULL),(851,130,76,2,NULL),(852,51,3,2,NULL),(853,130,80,2,NULL),(854,51,8,2,NULL),(855,130,81,2,NULL),(856,51,42,2,NULL),(857,130,54,2,NULL),(858,51,52,2,NULL),(859,146,39,2,NULL),(860,51,69,2,NULL),(861,162,36,2,NULL),(862,53,3,2,NULL),(863,113,49,2,NULL),(864,53,8,2,NULL),(865,114,49,2,NULL),(866,53,42,2,NULL),(867,116,49,2,NULL),(868,53,52,2,NULL),(869,132,49,2,NULL),(870,53,69,2,NULL),(871,135,49,2,NULL),(872,55,3,2,NULL),(873,113,75,2,NULL),(874,55,8,2,NULL),(875,114,75,2,NULL),(876,55,42,2,NULL),(877,116,75,2,NULL),(878,55,52,2,NULL),(879,132,75,2,NULL),(880,55,69,2,NULL),(881,135,75,2,NULL),(882,57,3,2,NULL),(883,113,76,2,NULL),(884,57,8,2,NULL),(885,114,76,2,NULL),(886,57,42,2,NULL),(887,116,76,2,NULL),(888,57,52,2,NULL),(889,132,76,2,NULL),(890,57,69,2,NULL),(891,135,76,2,NULL),(892,41,5,2,NULL),(893,113,80,2,NULL),(894,41,13,2,NULL),(895,114,80,2,NULL),(896,41,47,2,NULL),(897,116,80,2,NULL),(898,41,53,2,NULL),(899,132,80,2,NULL),(900,41,70,2,NULL),(901,135,80,2,NULL),(902,113,54,2,NULL),(903,113,81,2,NULL),(904,114,54,2,NULL),(905,114,81,2,NULL),(906,116,54,2,NULL),(907,116,81,2,NULL),(908,132,54,2,NULL),(909,132,81,2,NULL),(910,135,54,2,NULL),(911,135,81,2,NULL),(912,92,3,2,NULL),(913,92,8,2,NULL),(914,92,42,2,NULL),(915,92,52,2,NULL),(916,92,69,2,NULL),(917,93,3,2,NULL),(918,93,8,2,NULL),(919,93,42,2,NULL),(920,93,52,2,NULL),(921,93,69,2,NULL),(922,141,3,2,NULL),(923,141,8,2,NULL),(924,141,42,2,NULL),(925,141,52,2,NULL),(926,141,69,2,NULL),(927,144,3,2,NULL),(928,144,8,2,NULL),(929,144,42,2,NULL),(930,144,52,2,NULL),(931,144,69,2,NULL),(932,148,5,2,NULL),(933,148,13,2,NULL),(934,148,47,2,NULL),(935,148,53,2,NULL),(936,148,70,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(26,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.CHANGE_CONFIGURATION'),(10,'android.permission.CHANGE_NETWORK_STATE'),(9,'android.permission.CHANGE_WIFI_STATE'),(19,'android.permission.GET_ACCOUNTS'),(11,'android.permission.GET_PACKAGE_SIZE'),(15,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(20,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(21,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(25,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,38,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,'package','(.*)',NULL,NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(44,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(45,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,33,7),(3,46,15),(4,67,19),(5,95,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,1,10),(12,2,4),(13,1,11),(14,2,6),(15,1,12),(16,2,8),(17,1,13),(18,2,9),(19,2,13),(20,2,14),(21,2,15),(22,3,17),(23,3,16),(24,3,1),(25,3,4),(26,3,5),(27,3,6),(28,3,8),(29,4,1),(30,3,9),(31,4,18),(32,3,13),(33,4,8),(34,3,14),(35,4,12),(36,3,15),(37,5,1),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,5,8),(44,5,9),(45,5,13),(46,5,14),(47,5,16),(48,5,19),(49,5,20),(50,6,1),(51,6,3),(52,6,4),(53,6,5),(54,6,6),(55,6,7),(56,6,8),(57,6,12),(58,6,13),(59,6,15),(60,6,21),(61,6,23),(62,6,22),(63,7,1),(64,7,3),(65,7,4),(66,7,5),(67,7,6),(68,7,7),(69,7,8),(70,7,9),(71,7,13),(72,7,15),(73,7,16),(74,7,22),(75,7,25),(76,7,24),(77,7,27),(78,7,26);
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

-- Dump completed on 2015-10-12  3:29:26
