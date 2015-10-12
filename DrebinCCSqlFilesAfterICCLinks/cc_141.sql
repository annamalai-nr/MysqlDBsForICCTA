-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_141
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(20,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(13,'android.intent.action.SEARCH'),(15,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(19,'com.android.music.musicservicecommand'),(7,'com.android.service.START_AUDIO_SERVICE'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'delete_history_account'),(12,'ps.android.view.tabbar.changeTab'),(11,'ps.keepaccount.activity.delteTodayAccount'),(8,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.itxinke.Puzzle',1),(2,'com.atools.cuttherope',5),(3,'com.ps.keepaccount',1),(4,'com.gp.search',10),(5,'com.gp.geekadoo',8),(6,'com.gp.lights',2),(7,'com.evilsunflower.reader.evilSongci5',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.itxinke.Puzzle.MainActivity'),(2,1,'com.itxinke.Puzzle.PuzzleActivity'),(3,1,'com.itxinke.Puzzle.OptionActivity'),(4,1,'com.itxinke.Puzzle.OrigActivity'),(5,1,'com.itxinke.Puzzle.LevelActivity'),(6,1,'com.itxinke.Puzzle.HelpActivity'),(7,1,'com.eguan.state.Dialog'),(8,1,'com.eguan.state.StateService'),(9,1,'com.eguan.state.Receiver'),(10,2,'com.atools.cuttherope.MainActivity'),(11,2,'com.atools.cuttherope.UpdateCheck'),(12,3,'com.ps.keepaccount.Main'),(13,1,'com.itxinke.Puzzle.MainActivity$4'),(14,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(15,3,'com.ps.keepaccount.activity.QueryAccount'),(16,3,'com.ps.keepaccount.activity.TodayAccount'),(17,1,'com.itxinke.Puzzle.MainActivity$1'),(18,3,'com.ps.keepaccount.activity.HistoryAccount'),(19,3,'com.ps.keepaccount.activity.WriteAccount'),(20,3,'com.ps.keepaccount.activity.TypeAccount'),(21,3,'com.ps.keepaccount.activity.DemoApp'),(22,3,'com.ps.keepaccount.activity.TypeAccountList'),(23,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(24,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(25,3,'org.achartengine.GraphicalActivity'),(26,3,'com.waps.OffersWebView'),(27,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(28,3,'com.google.update.Dialog'),(29,3,'com.google.update.UpdateService'),(30,3,'com.google.update.Receiver'),(31,1,'com.itxinke.Puzzle.MainActivity$2'),(32,2,'com.atools.cuttherope.MainActivity$2'),(33,1,'com.eguan.state.Dialog$1'),(34,2,'com.atools.cuttherope.MainActivity$3'),(35,1,'com.itxinke.Puzzle.MainActivity$3'),(36,4,'com.gp.search.IndexUI'),(37,5,'com.gp.geekadoo.ui.MainScreen'),(38,4,'com.gp.search.LoadWeathreUI'),(39,6,'com.gp.lights.ALuces'),(40,5,'com.gp.geekadoo.ui.Yaniv'),(41,5,'com.google.update.Dialog'),(42,4,'com.gp.search.WeatherInfoUI'),(43,6,'com.gp.lights.AJuego'),(44,5,'cn.domob.android.ads.DomobActivity'),(45,6,'com.gp.lights.AHelp'),(46,1,'com.eguan.state.StateService$MyThread'),(47,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,4,'com.gp.search.IPSearchUI'),(49,6,'com.gp.lights.AScores'),(50,5,'com.waps.OffersWebView'),(51,6,'cn.domob.android.ads.DomobActivity'),(52,5,'com.google.update.UpdateService'),(53,4,'com.gp.search.TrainSearchUI'),(54,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,5,'com.google.update.Receiver'),(56,6,'com.waps.OffersWebView'),(57,4,'com.gp.search.ExpressSearchUI'),(58,4,'com.gp.search.PhoneSearchUI'),(59,4,'com.gp.search.BusUI'),(60,4,'com.gp.search.RPSearchUI'),(61,4,'com.gp.search.ScoreSearchUI'),(62,4,'com.gp.search.weather.proc.Splash'),(63,4,'com.gp.search.weather.proc.MainService'),(64,4,'com.waps.OffersWebView'),(65,4,'com.google.update.Dialog'),(66,4,'cn.domob.android.ads.DomobActivity'),(67,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,4,'com.gp.search.weather.func.AlarmService'),(69,4,'com.android.weather.service.LoadDataService'),(70,4,'com.google.update.UpdateService'),(71,4,'com.google.update.Receiver'),(72,3,'com.waps.o'),(73,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(74,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(75,3,'com.waps.m'),(76,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(77,3,'com.waps.k'),(78,3,'com.ps.keepaccount.activity.WriteAccount$1'),(79,3,'com.google.update.Dialog$1'),(80,3,'com.google.update.UpdateService$MyThread'),(81,3,'com.ju6.a'),(82,3,'com.ps.keepaccount.activity.QueryAccount$1'),(83,3,'com.waps.AppConnect'),(84,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(85,3,'com.google.update.Dialog$2'),(86,6,'com.gp.lights.ALuces$4'),(87,5,'com.waps.aa'),(88,6,'cn.domob.android.ads.e'),(89,5,'cn.domob.android.ads.DomobAdManager'),(90,6,'cn.domob.android.ads.DomobAdManager'),(91,6,'com.waps.AppConnect'),(92,6,'com.waps.o'),(93,5,'cn.domob.android.ads.i'),(94,6,'com.gp.lights.ALuces$2'),(95,5,'com.waps.q'),(96,5,'cn.domob.android.ads.DomobActionReceiver'),(97,6,'cn.domob.android.a.a$a'),(98,5,'com.google.update.Dialog$1'),(99,6,'com.waps.aa'),(100,5,'cn.domob.android.ads.i$6'),(101,6,'com.gp.lights.ALuces$3'),(102,5,'cn.domob.android.ads.DomobAdEngine$2'),(103,6,'com.waps.z'),(104,5,'com.waps.o'),(105,6,'cn.domob.android.ads.o'),(106,5,'com.gp.geekadoo.ui.MainScreen$3'),(107,7,'com.evilsunflower.reader.evilSongci5.BugReportActivity'),(108,5,'com.google.update.UpdateService$AA'),(109,7,'com.evilsunflower.reader.FBReader'),(110,7,'com.evilsunflower.reader.CancelActivity'),(111,6,'com.waps.ac'),(112,7,'com.evilsunflower.reader.image.ImageViewActivity'),(113,7,'com.evilsunflower.reader.TOCActivity'),(114,7,'com.evilsunflower.reader.BookmarksActivity'),(115,6,'cn.domob.android.ads.g$1'),(116,7,'com.evilsunflower.reader.control.ShowTips'),(117,6,'cn.domob.android.ads.o$5'),(118,7,'com.evilsunflower.reader.BookmarkEditActivity'),(119,7,'com.evilsunflower.reader.Starter'),(120,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(121,5,'com.google.update.Dialog$2'),(122,7,'com.vpon.adon.android.WebInApp'),(123,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(124,5,'com.waps.z'),(125,7,'com.millennialmedia.android.VideoPlayer'),(126,7,'net.youmi.android.AdActivity'),(127,7,'com.google.ads.AdActivity'),(128,7,'com.guohead.sdk.GuoheAdActivity'),(129,5,'com.gp.geekadoo.ui.MainScreen$5'),(130,7,'cn.domob.android.ads.DomobActivity'),(131,7,'com.evilsunflower.reader.control.UpdateService'),(132,7,'com.evilsunflower.reader.control.Receiver'),(133,6,'com.waps.q'),(134,5,'com.waps.ac'),(135,4,'cn.domob.android.ads.DomobAdManager'),(136,4,'com.gp.search.control.MenuContorl$1'),(137,4,'com.waps.AppConnect'),(138,4,'com.waps.z'),(139,4,'com.waps.o'),(140,4,'com.google.update.UpdateService$AA'),(141,4,'com.google.update.Dialog$1'),(142,4,'cn.domob.android.ads.DomobActionReceiver'),(143,4,'com.waps.q'),(144,4,'cn.domob.android.ads.i'),(145,4,'cn.domob.android.ads.i$6'),(146,4,'com.google.update.Dialog$2'),(147,4,'com.waps.ac'),(148,4,'cn.domob.android.ads.DomobAdEngine$2'),(149,4,'com.gp.search.weather.func.AlarmHelper'),(150,4,'com.waps.aa'),(151,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(152,7,'com.ju6.mms.pdu.PduPersister'),(153,7,'com.ju6.mms.util.SqliteWrapper'),(154,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(155,7,'com.baidu.as'),(156,7,'net.youmi.android.be'),(157,7,'com.evilsunflower.reader.control.ShowTips$1'),(158,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(159,7,'com.madhouse.android.ads._'),(160,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(161,7,'net.youmi.android.eo'),(162,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(163,7,'com.adwo.adsdk.M'),(164,7,'com.ju6.c'),(165,7,'com.millennialmedia.android.MillennialMediaView'),(166,7,'net.youmi.android.t'),(167,7,'com.baidu.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'MSG'),(2,7,'TYPEdsada'),(3,11,'MYAD_PID'),(4,4,'bitmap_bg'),(5,20,'type'),(6,24,'isFinshClose'),(7,25,'shouldMakeOverlayTransparent'),(8,24,'URL'),(9,12,'DEVICE_ID'),(10,27,'DEVICE_ID'),(11,19,'DEVICE_ID'),(12,25,'DEVICE_ID'),(13,25,'transitionTime'),(14,25,'url'),(15,25,'shouldResizeOverlay'),(16,25,'shouldEnableBottomBar'),(17,24,'URL_PARAMS'),(18,14,'startDate'),(19,26,'TYPEdsada'),(20,23,'title'),(21,27,'ST_START_DELAY'),(22,25,'overlayTransition'),(23,25,'shouldShowBottomBar'),(24,12,'WAPS_ID'),(25,27,'WAPS_ID'),(26,19,'WAPS_ID'),(27,25,'WAPS_ID'),(28,27,'CLIENT_PACKAGE'),(29,19,'CLIENT_PACKAGE'),(30,25,'CLIENT_PACKAGE'),(31,26,'MSG'),(32,18,'endDate'),(33,23,'chart'),(34,25,'overlayTitle'),(35,24,'CLIENT_PACKAGE'),(36,12,'CLIENT_PACKAGE'),(37,20,'startDate'),(38,24,'USER_ID'),(39,12,'WAPS_PID'),(40,27,'WAPS_PID'),(41,19,'WAPS_PID'),(42,25,'WAPS_PID'),(43,27,'ST_MY_PID'),(44,14,'endDate'),(45,24,'Offers_URL'),(46,18,'startDate'),(47,25,'shouldShowTitlebar'),(48,20,'endDate'),(49,12,'APP_ID'),(50,27,'APP_ID'),(51,19,'APP_ID'),(52,25,'APP_ID'),(53,46,'transitionTime'),(54,46,'shouldShowTitlebar'),(55,36,'DEVICE_ID'),(56,32,'DEVICE_ID'),(57,48,'DEVICE_ID'),(58,34,'MSG'),(59,33,'gamedata'),(60,48,'Notify_Id'),(61,36,'DOMOB_ALLOW_LOCATION'),(62,46,'DOMOB_ALLOW_LOCATION'),(63,46,'shouldMakeOverlayTransparent'),(64,36,'DOMOB_TEST_MODE'),(65,46,'DOMOB_TEST_MODE'),(66,30,'DEVICE_ID'),(67,42,'DEVICE_ID'),(68,36,'WAPS_ID'),(69,32,'WAPS_ID'),(70,48,'WAPS_ID'),(71,48,'UrlPath'),(72,48,'URL_PARAMS'),(73,42,'Offers_URL'),(74,34,'TYPEdsada'),(75,44,'DOMOB_ALLOW_LOCATION'),(76,39,'DOMOB_ALLOW_LOCATION'),(77,48,'Notify_Url_Params'),(78,48,'SHWO_FLAG'),(79,33,'state'),(80,39,'url'),(81,39,'overlayTransition'),(82,48,'offers_webview_tag'),(83,36,'WAPS_PID'),(84,32,'WAPS_PID'),(85,48,'WAPS_PID'),(86,44,'DOMOB_TEST_MODE'),(87,39,'DOMOB_TEST_MODE'),(88,42,'UrlPath'),(89,42,'offers_webview_tag'),(90,39,'overlayTitle'),(91,48,'isFinshClose'),(92,36,'APP_ID'),(93,32,'APP_ID'),(94,48,'APP_ID'),(95,46,'shouldEnableBottomBar'),(96,43,'appId'),(97,42,'URL'),(98,42,'Notify_Id'),(99,39,'shouldShowTitlebar'),(100,39,'shouldShowBottomBar'),(101,39,'shouldMakeOverlayTransparent'),(102,37,'appId'),(103,42,'ACTIVITY_FLAG'),(104,46,'shouldResizeOverlay'),(105,36,'DOMOB_PID'),(106,46,'DOMOB_PID'),(107,48,'Offers_URL'),(108,30,'APP_ID'),(109,42,'APP_ID'),(110,46,'shouldShowBottomBar'),(111,46,'overlayTitle'),(112,36,'CLIENT_PACKAGE'),(113,42,'SHWO_FLAG'),(114,32,'CLIENT_PACKAGE'),(115,39,'shouldResizeOverlay'),(116,48,'CLIENT_PACKAGE'),(117,48,'URL'),(118,48,'ACTIVITY_FLAG'),(119,46,'overlayTransition'),(120,42,'URL_PARAMS'),(121,42,'Notify_Url_Params'),(122,30,'CLIENT_PACKAGE'),(123,42,'CLIENT_PACKAGE'),(124,39,'shouldEnableBottomBar'),(125,42,'USER_ID'),(126,44,'ST_START_DELAY'),(127,30,'WAPS_ID'),(128,42,'WAPS_ID'),(129,46,'url'),(130,43,'actType'),(131,37,'appName'),(132,30,'WAPS_PID'),(133,42,'WAPS_PID'),(134,39,'transitionTime'),(135,43,'appName'),(136,37,'actType'),(137,48,'USER_ID'),(138,44,'DOMOB_PID'),(139,39,'DOMOB_PID'),(140,42,'isFinshClose'),(141,44,'ST_MY_PID'),(142,59,'overlayTransition'),(143,56,'isFinshClose'),(144,56,'Notify_Id'),(145,59,'shouldMakeOverlayTransparent'),(146,56,'SHWO_FLAG'),(147,58,'actType'),(148,56,'WAPS_ID'),(149,53,'WAPS_ID'),(150,29,'WAPS_ID'),(151,59,'shouldEnableBottomBar'),(152,59,'shouldShowTitlebar'),(153,56,'Offers_URL'),(154,56,'offers_webview_tag'),(155,55,'DOMOB_PID'),(156,62,'DOMOB_PID'),(157,59,'DOMOB_PID'),(158,56,'UrlPath'),(159,57,'MSG'),(160,56,'DEVICE_ID'),(161,53,'DEVICE_ID'),(162,29,'DEVICE_ID'),(163,56,'URL_PARAMS'),(164,58,'appName'),(165,58,'appId'),(166,62,'ST_MY_PID'),(167,56,'CLIENT_PACKAGE'),(168,53,'CLIENT_PACKAGE'),(169,29,'CLIENT_PACKAGE'),(170,55,'DOMOB_TEST_MODE'),(171,62,'DOMOB_TEST_MODE'),(172,59,'DOMOB_TEST_MODE'),(173,56,'URL'),(174,56,'APP_ID'),(175,53,'APP_ID'),(176,29,'APP_ID'),(177,59,'shouldShowBottomBar'),(178,62,'ST_START_DELAY'),(179,59,'url'),(180,59,'shouldResizeOverlay'),(181,59,'transitionTime'),(182,57,'TYPEdsada'),(183,56,'ACTIVITY_FLAG'),(184,55,'DOMOB_ALLOW_LOCATION'),(185,62,'DOMOB_ALLOW_LOCATION'),(186,59,'DOMOB_ALLOW_LOCATION'),(187,59,'overlayTitle'),(188,56,'USER_ID'),(189,56,'Notify_Url_Params'),(190,56,'WAPS_PID'),(191,53,'WAPS_PID'),(192,29,'WAPS_PID'),(193,82,'url'),(194,83,'shouldEnableBottomBar'),(195,85,'EB80F3291A8E469c962CA133BDC549D7'),(196,82,'adWidth'),(197,81,'transitionTime'),(198,81,'shouldShowBottomBar'),(199,85,'D50EF1926ADD471892E72BCE6D7E032C'),(200,85,'D780FBF4215247bcBB1AC0AD33C474FE'),(201,83,'shouldShowBottomBar'),(202,84,'isCachedAd'),(203,83,'overlayTransition'),(204,73,'GH_APPKEY'),(205,83,'cachedAdView'),(206,84,'shouldShowBottomBar'),(207,81,'shouldEnableBottomBar'),(208,83,'shouldShowTitlebar'),(209,73,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(210,84,'videoPosition'),(211,77,'query'),(212,73,'Adwo_PID'),(213,83,'shouldMakeOverlayTransparent'),(214,83,'overlayTitle'),(215,81,'overlayTitle'),(216,84,'ADUrl'),(217,77,'ADUrl'),(218,73,'ADUrl'),(219,85,'ADUrl'),(220,83,'canAccelerate'),(221,81,'shouldShowTitlebar'),(222,81,'overlayTransition'),(223,83,'transitionTime'),(224,73,'query'),(225,85,'172C94EDC717477aBF600D7898A64A8E'),(226,84,'cached'),(227,78,'MM'),(228,73,'Wooboo_PID'),(229,81,'url'),(230,89,'SAFE_PID'),(231,81,'shouldMakeOverlayTransparent'),(232,84,'logSet'),(233,84,'adName'),(234,87,'link'),(235,89,'SAFE_START'),(236,73,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(237,84,'videoCompleted'),(238,73,'Market_ID'),(239,83,'shouldResizeOverlay'),(240,81,'shouldResizeOverlay'),(241,84,'videoAd');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,18,'a',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,29,'s',0,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,36,'a',1,NULL,NULL),(30,37,'a',1,NULL,NULL),(31,38,'a',1,NULL,NULL),(32,39,'a',1,NULL,NULL),(33,40,'a',0,NULL,NULL),(34,41,'a',0,NULL,NULL),(35,42,'a',1,NULL,NULL),(36,43,'a',0,NULL,NULL),(37,44,'a',0,NULL,NULL),(38,45,'a',0,NULL,NULL),(39,47,'a',0,NULL,NULL),(40,48,'a',1,NULL,NULL),(41,49,'a',0,NULL,NULL),(42,50,'a',0,NULL,NULL),(43,51,'a',0,NULL,NULL),(44,52,'s',0,NULL,NULL),(45,53,'a',1,NULL,NULL),(46,54,'a',0,NULL,NULL),(47,55,'r',1,NULL,NULL),(48,56,'a',0,NULL,NULL),(49,57,'a',1,NULL,NULL),(50,58,'a',1,NULL,NULL),(51,59,'a',1,NULL,NULL),(52,60,'a',1,NULL,NULL),(53,61,'a',1,NULL,NULL),(54,62,'a',0,NULL,NULL),(55,63,'a',0,NULL,NULL),(56,64,'a',0,NULL,NULL),(57,65,'a',0,NULL,NULL),(58,66,'a',0,NULL,NULL),(59,67,'a',0,NULL,NULL),(60,68,'s',0,NULL,NULL),(61,69,'s',1,NULL,NULL),(62,70,'s',0,NULL,NULL),(63,71,'r',1,NULL,NULL),(64,73,'r',1,NULL,NULL),(65,74,'r',1,NULL,NULL),(66,75,'r',1,NULL,NULL),(67,76,'r',1,NULL,NULL),(68,84,'r',1,NULL,NULL),(69,88,'r',1,NULL,NULL),(70,95,'r',1,NULL,NULL),(71,96,'r',1,NULL,NULL),(72,107,'a',0,NULL,NULL),(73,109,'a',1,NULL,NULL),(74,110,'a',0,NULL,NULL),(75,112,'a',0,NULL,NULL),(76,113,'a',0,NULL,NULL),(77,114,'a',1,NULL,NULL),(78,116,'a',0,NULL,NULL),(79,118,'a',0,NULL,NULL),(80,119,'a',0,NULL,NULL),(81,120,'a',0,NULL,NULL),(82,122,'a',0,NULL,NULL),(83,123,'a',0,NULL,NULL),(84,125,'a',0,NULL,NULL),(85,126,'a',0,NULL,NULL),(86,127,'a',0,NULL,NULL),(87,128,'a',0,NULL,NULL),(88,130,'a',0,NULL,NULL),(89,131,'s',0,NULL,NULL),(90,132,'r',1,NULL,NULL),(91,133,'r',1,NULL,NULL),(92,142,'r',1,NULL,NULL),(93,143,'r',1,NULL,NULL),(94,161,'r',1,NULL,NULL),(95,162,'r',1,NULL,NULL),(96,163,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,8),(5,5,9),(6,6,2),(7,7,10),(8,8,1),(9,9,10),(10,10,7),(11,11,10),(12,12,1),(13,13,8),(14,14,8),(15,15,19),(16,15,25),(17,15,27),(18,16,14),(19,17,18),(20,18,25),(21,18,27),(22,18,19),(23,19,24),(24,20,27),(25,21,14),(26,22,18),(27,23,17),(28,24,26),(29,25,27),(30,26,27),(31,27,14),(32,28,19),(33,29,27),(34,29,25),(35,29,19),(36,30,28),(37,31,26),(38,32,14),(39,33,27),(40,34,19),(41,35,48),(42,36,32),(43,37,42),(44,38,39),(45,38,44),(46,39,46),(47,39,36),(48,40,42),(49,41,30),(50,42,36),(51,43,44),(52,44,48),(53,45,44),(54,45,39),(55,46,32),(56,47,47),(57,48,46),(58,48,36),(59,49,34),(60,50,48),(61,51,39),(62,51,44),(63,52,32),(64,53,39),(65,53,44),(66,54,48),(67,55,42),(68,56,48),(69,57,30),(70,58,42),(71,59,46),(72,59,36),(73,60,32),(74,61,30),(75,62,44),(76,63,48),(77,64,44),(78,65,46),(79,65,36),(80,66,46),(81,66,36),(82,67,34),(83,68,42),(84,69,30),(85,70,42),(86,71,55),(87,71,59),(88,71,62),(89,72,35),(90,73,29),(91,73,53),(92,74,56),(93,75,56),(94,76,56),(95,77,62),(96,78,56),(97,79,62),(98,80,63),(99,81,57),(100,82,55),(101,82,62),(102,82,59),(103,83,62),(104,83,59),(105,84,57),(106,85,62),(107,86,56),(108,87,59),(109,87,55),(110,87,62),(111,88,55),(112,89,29),(113,90,55),(114,91,56),(115,92,90),(116,93,73),(117,94,73),(118,95,73),(119,96,73),(120,97,84),(121,97,85),(122,97,73),(123,97,77),(124,98,85),(125,98,73),(126,98,77),(127,99,73),(128,100,85),(129,100,84),(130,100,73),(131,100,77),(132,101,73),(133,101,85),(134,101,77),(135,102,85),(136,103,77),(137,104,78),(138,105,73),(139,106,85),(140,106,77),(141,106,73),(142,107,77),(143,107,73),(144,107,85),(145,108,85),(146,109,73),(147,110,73),(148,111,77),(149,111,84),(150,111,85),(151,111,73),(152,112,73),(153,112,77),(154,112,84),(155,112,85),(156,113,85),(157,114,77),(158,114,73),(159,114,85),(160,114,84),(161,115,73),(162,116,73),(163,116,85),(164,116,84),(165,116,77),(166,117,73),(167,118,85),(168,118,73),(169,118,77),(170,119,73),(171,120,84),(172,120,85),(173,120,77),(174,120,73),(175,121,85),(176,121,84),(177,121,77),(178,121,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,13,'<com.itxinke.Puzzle.MainActivity$4: void onClick(android.view.View)>',6,'a',NULL),(2,17,'<com.itxinke.Puzzle.MainActivity$1: void onClick(android.view.View)>',6,'a',NULL),(3,2,'<com.itxinke.Puzzle.PuzzleActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(4,8,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(5,9,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,2,'<com.itxinke.Puzzle.PuzzleActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(7,10,'<com.atools.cuttherope.MainActivity: void onCreate(android.os.Bundle)>',37,'s',NULL),(8,31,'<com.itxinke.Puzzle.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(9,32,'<com.atools.cuttherope.MainActivity$2: void onClick(android.view.View)>',8,'a',NULL),(10,33,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(11,34,'<com.atools.cuttherope.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(12,35,'<com.itxinke.Puzzle.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(13,8,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(14,46,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(15,72,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(16,15,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(17,20,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(18,72,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(19,77,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(20,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,15,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(22,20,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(23,78,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(24,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,80,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(26,81,'<com.ju6.a: boolean b()>',178,'p',NULL),(27,82,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(28,83,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(29,72,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(30,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(31,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,82,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(33,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,83,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(35,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(36,86,'<com.gp.lights.ALuces$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(37,87,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(38,89,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(39,90,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(40,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(41,37,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(42,91,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(43,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(44,92,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,93,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(46,94,'<com.gp.lights.ALuces$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(47,55,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(48,97,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(49,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,99,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(51,100,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(52,101,'<com.gp.lights.ALuces$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(53,102,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(54,103,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,104,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(56,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(57,37,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(58,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(59,105,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(60,39,'<com.gp.lights.ALuces: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(61,106,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(62,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(63,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(64,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,115,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(66,117,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(67,121,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,124,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,129,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(70,134,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(71,135,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(72,136,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(73,137,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(74,64,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(75,138,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(76,139,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(77,140,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(78,64,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(79,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(80,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(81,141,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,144,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(83,145,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,146,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(85,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(86,147,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(87,148,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(88,149,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(89,36,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(90,63,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(91,150,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(92,132,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(93,109,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(94,151,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(95,152,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(96,153,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(97,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(98,154,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(99,109,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(100,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(101,155,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(102,156,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(103,114,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(104,157,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(105,153,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(106,158,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(107,159,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(108,160,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(109,164,'<com.ju6.c: boolean b()>',192,'p',NULL),(110,164,'<com.ju6.c: void run()>',146,'p',NULL),(111,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(112,165,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(113,166,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(114,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(115,164,'<com.ju6.c: boolean b()>',195,'p',0),(116,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(117,164,'<com.ju6.c: boolean b()>',272,'p',NULL),(118,167,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(119,153,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(120,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(121,125,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,10,1),(2,11,5),(3,13,6),(4,16,1),(5,17,1),(6,21,6),(7,22,6),(8,23,6),(9,26,8),(10,29,1),(11,30,1),(12,31,1),(13,32,1),(14,33,9),(15,36,1),(16,37,1),(17,38,1),(18,39,1),(19,41,5),(20,42,11),(21,47,1),(22,48,1),(23,62,6),(24,63,6),(25,71,1),(26,72,1),(27,75,6),(28,77,6),(29,78,6),(30,81,6),(31,84,6),(32,87,6),(33,88,6),(34,92,1),(35,93,6),(36,94,1),(37,96,6),(38,101,1),(39,103,1),(40,107,6),(41,109,6),(42,110,5),(43,111,6),(44,112,6),(45,113,6),(46,114,14),(47,115,6),(48,116,14),(49,117,14),(50,118,14),(51,119,14),(52,120,14),(53,121,14),(54,122,14),(55,127,1),(56,128,1),(57,129,6),(58,130,6),(59,131,1),(60,132,1),(61,137,1),(62,138,1),(63,139,6),(64,140,6),(65,142,6),(66,143,6),(67,144,6),(68,145,6),(69,146,5),(70,166,6),(71,169,6),(72,170,6),(73,171,6),(74,172,6),(75,173,6),(76,174,6),(77,175,6),(78,176,6),(79,177,6),(80,178,6),(81,179,6),(82,181,1),(83,182,1),(84,184,15),(85,186,19),(86,187,14),(87,188,14),(88,189,14),(89,190,14),(90,191,14),(91,192,14),(92,193,14),(93,194,14),(94,195,6),(95,196,6),(96,197,6),(97,198,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,16,2),(3,17,1),(4,29,1),(5,30,2),(6,31,1),(7,32,2),(8,36,1),(9,37,2),(10,38,1),(11,39,2),(12,47,1),(13,48,2),(14,71,1),(15,72,2),(16,92,1),(17,94,2),(18,101,1),(19,103,2),(20,127,1),(21,128,2),(22,131,2),(23,132,1),(24,137,1),(25,138,2),(26,181,1),(27,182,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/itxinke/Puzzle/HelpActivity'),(2,2,'com/itxinke/Puzzle/PuzzleActivity'),(3,3,'com/itxinke/Puzzle/OrigActivity'),(4,4,'com/eguan/state/Dialog'),(5,5,'com/eguan/state/Dialog'),(6,6,'com/eguan/state/StateService'),(7,7,'com/itxinke/Puzzle/OptionActivity'),(8,8,'com/atools/cuttherope/UpdateCheck'),(9,9,'com/itxinke/Puzzle/OptionActivity'),(10,10,'(.*)'),(11,12,'com/itxinke/Puzzle/LevelActivity'),(12,14,'com/eguan/state/Dialog'),(13,15,'com/eguan/state/Dialog'),(14,18,'com/waps/OffersWebView'),(15,19,'com/ps/keepaccount/dialog/DateSelectorDialog'),(16,20,'com/ps/keepaccount/activity/TypeAccountList'),(17,24,'com/google/update/Dialog'),(18,25,'com/google/update/Dialog'),(19,27,'com/ps/keepaccount/dialog/DateSelectorDialog'),(20,28,'com/ps/keepaccount/dialog/CanlendarDialog'),(21,34,'com/waps/OffersWebView'),(22,40,'com/google/update/UpdateService'),(23,43,'com/google/update/Dialog'),(24,44,'com/google/update/Dialog'),(25,45,'com/waps/OffersWebView'),(26,50,'com.gp.lights.AJuego'),(27,51,'com.gp.lights.APause'),(28,52,''),(29,54,'com.gp.lights.AScores'),(30,53,'com/waps/OffersWebView'),(31,55,'com.gp.lights.AHelp'),(32,56,'com/waps/OffersWebView'),(33,57,'(.*)'),(34,58,'com/gp/geekadoo/ui/Yaniv'),(35,59,'com/waps/OffersWebView'),(36,60,'com/google/update/Dialog'),(37,61,'com/google/update/Dialog'),(38,65,'com.gp.lights.AJuego'),(39,66,'com.gp.lights.APause'),(40,67,'com/google/update/UpdateService'),(41,68,''),(42,69,'com.gp.lights.AScores'),(43,70,'com.gp.lights.AHelp'),(44,73,'com/waps/OffersWebView'),(45,74,'com/waps/OffersWebView'),(46,80,'com.gp.lights.AJuego'),(47,82,'com.gp.lights.APause'),(48,83,''),(49,85,'com.gp.lights.AScores'),(50,86,'com.gp.lights.AHelp'),(51,89,'(.*)'),(52,90,'com/gp/geekadoo/ui/Yaniv'),(53,95,''),(54,98,'com.gp.lights.AHelp'),(55,99,'com.gp.lights.AJuego'),(56,100,'com.gp.lights.AScores'),(57,102,'com.gp.lights.APause'),(58,104,'NULL-CONSTANT'),(59,105,'com/google/update/Dialog'),(60,106,'com/google/update/Dialog'),(61,123,'NULL-CONSTANT'),(62,124,'com/gp/search/weather/proc/MainService'),(63,125,'com/waps/OffersWebView'),(64,133,'(.*)'),(65,134,'com/google/update/Dialog'),(66,135,'com/google/update/Dialog'),(67,136,'com/google/update/UpdateService'),(68,147,'com/google/update/Dialog'),(69,148,'com/google/update/Dialog'),(70,149,'NULL-CONSTANT'),(71,150,'com/gp/search/weather/func/AlarmService'),(72,151,'com/gp/search/RPSearchUI'),(73,153,'com/gp/search/LoadWeathreUI'),(74,154,'com/gp/search/PhoneSearchUI'),(75,155,'com/gp/search/ScoreSearchUI'),(76,156,'com/gp/search/IPSearchUI'),(77,157,'com/gp/search/BusUI'),(78,158,'com/gp/search/TrainSearchUI'),(79,159,'com/gp/search/ExpressSearchUI'),(80,160,'com.android.mms.ui.ComposeMessageActivity'),(81,161,'com/waps/OffersWebView'),(82,162,'com/waps/OffersWebView'),(83,163,'com/evilsunflower/reader/control/UpdateService'),(84,164,'com.evilsunflower.reader.FBReader'),(85,165,'com/evilsunflower/reader/control/UpdateService'),(86,168,'com.evilsunflower.reader.FBReader'),(87,180,'com/evilsunflower/reader/BookmarkEditActivity'),(88,185,'com/millennialmedia/android/MMAdViewOverlayActivity'),(89,197,'com.android.browser.BrowserActivity'),(90,199,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,21,2),(3,22,3),(4,23,4),(5,62,8),(6,63,9),(7,75,11),(8,77,12),(9,78,13),(10,81,14),(11,84,15),(12,87,16),(13,88,17),(14,93,18),(15,96,19),(16,107,20),(17,109,21),(18,111,22),(19,112,23),(20,113,24),(21,115,25),(22,129,27),(23,130,28),(24,139,29),(25,140,30),(26,142,31),(27,143,32),(28,144,33),(29,145,34),(30,166,38),(31,169,39),(32,170,40),(33,171,41),(34,172,42),(35,173,43),(36,174,44),(37,175,45),(38,176,46),(39,177,47),(40,178,48),(41,179,49),(42,185,55),(43,195,56),(44,196,57),(45,197,59),(46,198,61),(47,199,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'bitmap_bg'),(2,4,'TYPEdsada'),(3,5,'MSG'),(4,5,'TYPEdsada'),(5,14,'TYPEdsada'),(6,15,'MSG'),(7,15,'TYPEdsada'),(8,18,'CLIENT_PACKAGE'),(9,18,'URL'),(10,18,'isFinshClose'),(11,20,'startDate'),(12,20,'endDate'),(13,20,'type'),(14,24,'TYPEdsada'),(15,25,'MSG'),(16,25,'TYPEdsada'),(17,26,'startDate'),(18,26,'endDate'),(19,34,'USER_ID'),(20,34,'CLIENT_PACKAGE'),(21,34,'Offers_URL'),(22,34,'URL_PARAMS'),(23,43,'TYPEdsada'),(24,44,'MSG'),(25,44,'TYPEdsada'),(26,45,'USER_ID'),(27,45,'CLIENT_PACKAGE'),(28,45,'Offers_URL'),(29,45,'URL_PARAMS'),(30,53,'UrlPath'),(31,53,'ACTIVITY_FLAG'),(32,53,'isFinshClose'),(33,53,'offers_webview_tag'),(34,56,'Notify_Url_Params'),(35,56,'UrlPath'),(36,56,'ACTIVITY_FLAG'),(37,56,'isFinshClose'),(38,56,'offers_webview_tag'),(39,58,'state'),(40,59,'USER_ID'),(41,59,'CLIENT_PACKAGE'),(42,59,'Offers_URL'),(43,59,'offers_webview_tag'),(44,59,'URL_PARAMS'),(45,60,'MSG'),(46,60,'TYPEdsada'),(47,61,'TYPEdsada'),(48,73,'Notify_Url_Params'),(49,73,'UrlPath'),(50,73,'ACTIVITY_FLAG'),(51,73,'isFinshClose'),(52,73,'offers_webview_tag'),(53,74,'UrlPath'),(54,74,'ACTIVITY_FLAG'),(55,74,'isFinshClose'),(56,74,'offers_webview_tag'),(57,90,'state'),(58,95,'last_score'),(59,97,'last_score'),(60,98,'last_score'),(61,99,'last_score'),(62,100,'last_score'),(63,102,'last_score'),(64,105,'MSG'),(65,105,'TYPEdsada'),(66,106,'TYPEdsada'),(67,114,'android.intent.extra.INTENT'),(68,116,'android.intent.extra.INTENT'),(69,117,'android.intent.extra.TITLE'),(70,117,'android.intent.extra.INTENT'),(71,118,'android.intent.extra.INTENT'),(72,119,'android.intent.extra.TITLE'),(73,119,'android.intent.extra.INTENT'),(74,120,'android.intent.extra.INTENT'),(75,121,'android.intent.extra.TITLE'),(76,121,'android.intent.extra.INTENT'),(77,122,'android.intent.extra.TITLE'),(78,122,'android.intent.extra.INTENT'),(79,125,'USER_ID'),(80,125,'CLIENT_PACKAGE'),(81,125,'Offers_URL'),(82,125,'offers_webview_tag'),(83,125,'URL_PARAMS'),(84,134,'MSG'),(85,134,'TYPEdsada'),(86,135,'TYPEdsada'),(87,147,'MSG'),(88,147,'TYPEdsada'),(89,148,'TYPEdsada'),(90,160,'sms_body'),(91,160,'address'),(92,161,'UrlPath'),(93,161,'ACTIVITY_FLAG'),(94,161,'isFinshClose'),(95,161,'offers_webview_tag'),(96,162,'Notify_Url_Params'),(97,162,'UrlPath'),(98,162,'ACTIVITY_FLAG'),(99,162,'isFinshClose'),(100,162,'offers_webview_tag'),(101,184,'android.intent.extra.TEXT'),(102,184,'android.intent.extra.SUBJECT'),(103,184,'android.intent.extra.EMAIL'),(104,185,'cachedAdView'),(105,186,'command'),(106,187,'android.intent.extra.INTENT'),(107,188,'android.intent.extra.INTENT'),(108,189,'android.intent.extra.TITLE'),(109,189,'android.intent.extra.INTENT'),(110,190,'android.intent.extra.INTENT'),(111,191,'android.intent.extra.TITLE'),(112,191,'android.intent.extra.INTENT'),(113,192,'android.intent.extra.INTENT'),(114,193,'android.intent.extra.TITLE'),(115,193,'android.intent.extra.INTENT'),(116,194,'android.intent.extra.TITLE'),(117,194,'android.intent.extra.INTENT'),(118,199,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,7,1),(12,9,1),(13,13,4),(14,13,3),(15,13,2),(16,19,7),(17,20,2),(18,20,4),(19,20,3),(20,21,8),(21,22,9),(22,23,10),(23,24,11),(24,25,12),(25,26,10),(26,27,10),(27,28,10),(28,29,10),(29,30,1),(30,31,13),(31,32,13),(32,33,3),(33,33,2),(34,33,4),(35,34,10),(36,35,10),(37,36,10),(38,37,16),(39,38,16),(40,39,16),(41,40,16),(42,41,17),(43,41,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,14,1),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,3),(17,30,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL),(2,26,'package',NULL,NULL,NULL,NULL,NULL),(3,27,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL),(5,29,'package',NULL,NULL,NULL,NULL,NULL),(6,34,'package',NULL,NULL,NULL,NULL,NULL),(7,35,'package',NULL,NULL,NULL,NULL,NULL),(8,36,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,62,'application','vnd.android.package-archive'),(3,75,'application','vnd.android.package-archive'),(4,77,'application','vnd.android.package-archive'),(5,78,'application','vnd.android.package-archive'),(6,81,'application','vnd.android.package-archive'),(7,84,'application','vnd.android.package-archive'),(8,87,'application','vnd.android.package-archive'),(9,88,'application','vnd.android.package-archive'),(10,107,'application','vnd.android.package-archive'),(11,109,'application','vnd.android.package-archive'),(12,111,'application','vnd.android.package-archive'),(13,112,'application','vnd.android.package-archive'),(14,113,'application','vnd.android.package-archive'),(15,115,'application','vnd.android.package-archive'),(16,129,'application','vnd.android.package-archive'),(17,130,'application','vnd.android.package-archive'),(18,140,'application','vnd.android.package-archive'),(19,142,'application','vnd.android.package-archive'),(20,143,'application','vnd.android.package-archive'),(21,144,'application','vnd.android.package-archive'),(22,145,'application','vnd.android.package-archive'),(23,170,'application','vnd.android.package-archive'),(24,171,'application','vnd.android.package-archive'),(25,172,'application','vnd.android.package-archive'),(26,173,'application','vnd.android.package-archive'),(27,174,'application','vnd.android.package-archive'),(28,175,'application','vnd.android.package-archive'),(29,176,'application','vnd.android.package-archive'),(30,177,'application','vnd.android.package-archive'),(31,178,'application','vnd.android.package-archive'),(32,179,'application','vnd.android.package-archive'),(33,184,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.itxinke.Puzzle'),(2,2,'com.itxinke.Puzzle'),(3,3,'com.itxinke.Puzzle'),(4,4,'com.itxinke.Puzzle'),(5,5,'com.itxinke.Puzzle'),(6,6,'com.itxinke.Puzzle'),(7,7,'com.itxinke.Puzzle'),(8,8,'com.atools.cuttherope'),(9,9,'com.itxinke.Puzzle'),(10,10,'(.*)'),(11,12,'com.itxinke.Puzzle'),(12,14,'com.itxinke.Puzzle'),(13,15,'com.itxinke.Puzzle'),(14,16,'com.itxinke.Puzzle'),(15,17,'com.itxinke.Puzzle'),(16,18,'com.ps.keepaccount'),(17,19,'com.ps.keepaccount'),(18,20,'com.ps.keepaccount'),(19,24,'com.ps.keepaccount'),(20,25,'com.ps.keepaccount'),(21,27,'com.ps.keepaccount'),(22,28,'com.ps.keepaccount'),(23,29,'com.noshufou.android.su'),(24,30,'com.noshufou.android.su'),(25,31,'com.ps.keepaccount'),(26,32,'com.ps.keepaccount'),(27,34,'com.ps.keepaccount'),(28,36,'(.*)'),(29,37,'(.*)'),(30,38,'NULL-CONSTANT'),(31,39,'NULL-CONSTANT'),(32,40,'com.ps.keepaccount'),(33,43,'com.ps.keepaccount'),(34,44,'com.ps.keepaccount'),(35,45,'com.ps.keepaccount'),(36,47,'(.*)'),(37,48,'(.*)'),(38,50,'com.gp.lights'),(39,51,'com.gp.lights'),(40,52,'com.gp.lights'),(41,54,'com.gp.lights'),(42,53,'com.gp.geekadoo'),(43,55,'com.gp.lights'),(44,56,'com.gp.geekadoo'),(45,57,'(.*)'),(46,58,'com.gp.geekadoo'),(47,59,'com.gp.lights'),(48,60,'com.gp.geekadoo'),(49,61,'com.gp.geekadoo'),(50,65,'com.gp.lights'),(51,66,'com.gp.lights'),(52,67,'com.gp.geekadoo'),(53,68,'com.gp.lights'),(54,69,'com.gp.lights'),(55,70,'com.gp.lights'),(56,71,'com.noshufou.android.su'),(57,72,'com.noshufou.android.su'),(58,73,'com.gp.lights'),(59,74,'com.gp.lights'),(60,80,'com.gp.lights'),(61,82,'com.gp.lights'),(62,83,'com.gp.lights'),(63,85,'com.gp.lights'),(64,86,'com.gp.lights'),(65,89,'(.*)'),(66,90,'com.gp.geekadoo'),(67,92,'(.*)'),(68,94,'(.*)'),(69,95,'com.gp.lights'),(70,98,'com.gp.lights'),(71,99,'com.gp.lights'),(72,100,'com.gp.lights'),(73,101,'com.gp.geekadoo'),(74,102,'com.gp.lights'),(75,103,'com.gp.geekadoo'),(76,104,'NULL-CONSTANT'),(77,105,'com.gp.geekadoo'),(78,106,'com.gp.geekadoo'),(79,123,'NULL-CONSTANT'),(80,124,'com.gp.search'),(81,125,'com.gp.search'),(82,127,'(.*)'),(83,128,'(.*)'),(84,131,'com.gp.search'),(85,132,'com.gp.search'),(86,133,'(.*)'),(87,134,'com.gp.search'),(88,135,'com.gp.search'),(89,136,'com.gp.search'),(90,137,'com.noshufou.android.su'),(91,138,'com.noshufou.android.su'),(92,147,'com.gp.search'),(93,148,'com.gp.search'),(94,149,'NULL-CONSTANT'),(95,150,'com.gp.search'),(96,151,'com.gp.search'),(97,153,'com.gp.search'),(98,154,'com.gp.search'),(99,155,'com.gp.search'),(100,156,'com.gp.search'),(101,157,'com.gp.search'),(102,158,'com.gp.search'),(103,159,'com.gp.search'),(104,160,'com.android.mms'),(105,161,'com.gp.search'),(106,162,'com.gp.search'),(107,163,'com.evilsunflower.reader.evilSongci5'),(108,164,'com.evilsunflower.reader.evilSongci5'),(109,165,'com.evilsunflower.reader.evilSongci5'),(110,168,'com.evilsunflower.reader.evilSongci5'),(111,180,'com.evilsunflower.reader.evilSongci5'),(112,181,'com.noshufou.android.su'),(113,182,'com.noshufou.android.su'),(114,185,'com.evilsunflower.reader.evilSongci5'),(115,197,'com.android.browser'),(116,199,'com.evilsunflower.reader.evilSongci5');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,12,0),(5,28,0),(6,29,0),(7,30,0),(8,31,0),(9,32,0),(10,35,0),(11,40,0),(12,45,0),(13,47,0),(14,49,0),(15,50,0),(16,51,0),(17,52,0),(18,53,0),(19,61,0),(20,63,0),(21,64,0),(22,65,0),(23,66,0),(24,67,0),(25,68,0),(26,69,0),(27,70,0),(28,71,0),(29,69,0),(30,73,0),(31,73,0),(32,77,0),(33,90,0),(34,91,0),(35,92,0),(36,93,0),(37,94,0),(38,90,0),(39,95,0),(40,96,0),(41,96,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,12,0,0),(13,11,1,0),(14,13,0,0),(15,13,0,0),(16,14,1,0),(17,14,1,0),(18,15,0,0),(19,16,0,0),(20,17,0,0),(21,18,1,0),(22,18,1,0),(23,19,1,0),(24,20,0,0),(25,20,0,0),(26,21,1,0),(27,22,0,0),(28,23,0,0),(29,24,1,0),(30,24,1,0),(31,25,1,0),(32,25,1,0),(33,27,1,0),(34,28,0,0),(35,29,1,0),(36,29,1,0),(37,29,1,0),(38,29,1,0),(39,29,1,0),(40,30,0,0),(41,31,1,0),(42,32,1,0),(43,33,0,0),(44,33,0,0),(45,34,0,0),(46,35,1,0),(47,35,1,0),(48,35,1,0),(49,36,1,0),(50,36,0,0),(51,36,0,0),(52,36,0,0),(53,37,0,0),(54,36,0,0),(55,36,0,0),(56,37,0,0),(57,40,0,0),(58,41,0,0),(59,42,0,0),(60,43,0,0),(61,43,0,0),(62,44,1,0),(63,45,1,0),(64,46,1,0),(65,46,0,0),(66,46,0,0),(67,47,0,0),(68,46,0,0),(69,46,0,0),(70,46,0,0),(71,49,1,0),(72,49,1,0),(73,50,0,0),(74,50,0,0),(75,51,1,0),(76,51,1,0),(77,51,1,0),(78,51,1,0),(79,52,1,0),(80,52,0,0),(81,51,1,0),(82,52,0,0),(83,52,0,0),(84,51,1,0),(85,52,0,0),(86,52,0,0),(87,54,1,0),(88,55,1,0),(89,56,0,0),(90,57,0,0),(91,58,1,0),(92,58,1,0),(93,59,1,0),(94,58,1,0),(95,60,0,0),(96,61,1,0),(97,60,1,0),(98,60,0,0),(99,60,0,0),(100,60,0,0),(101,62,1,0),(102,60,0,0),(103,62,1,0),(104,63,0,0),(105,64,0,0),(106,64,0,0),(107,66,1,0),(108,66,1,0),(109,66,1,0),(110,67,1,0),(111,66,1,0),(112,68,1,0),(113,66,1,0),(114,69,1,0),(115,66,1,0),(116,69,1,0),(117,69,1,0),(118,69,1,0),(119,69,1,0),(120,69,1,0),(121,69,1,0),(122,69,1,0),(123,70,0,0),(124,72,0,0),(125,73,0,0),(126,74,1,0),(127,74,1,0),(128,74,1,0),(129,75,1,0),(130,76,1,0),(131,77,1,0),(132,77,1,0),(133,78,0,0),(134,79,0,0),(135,79,0,0),(136,80,0,0),(137,81,1,0),(138,81,1,0),(139,82,1,0),(140,83,1,0),(141,83,1,0),(142,83,1,0),(143,83,1,0),(144,83,1,0),(145,83,1,0),(146,84,1,0),(147,85,0,0),(148,85,0,0),(149,86,0,0),(150,88,0,0),(151,89,0,0),(152,89,1,0),(153,89,0,0),(154,89,0,0),(155,89,0,0),(156,89,0,0),(157,89,0,0),(158,89,0,0),(159,89,0,0),(160,90,0,0),(161,91,0,0),(162,91,0,0),(163,92,0,0),(164,93,0,0),(165,94,0,0),(166,97,1,0),(167,98,1,0),(168,99,0,0),(169,100,1,0),(170,101,1,0),(171,102,1,0),(172,102,1,0),(173,102,1,0),(174,102,1,0),(175,102,1,0),(176,102,1,0),(177,102,1,0),(178,102,1,0),(179,102,1,0),(180,103,0,0),(181,104,1,0),(182,104,1,0),(183,106,1,0),(184,108,1,0),(185,111,0,0),(186,112,1,0),(187,113,1,0),(188,113,1,0),(189,113,1,0),(190,113,1,0),(191,113,1,0),(192,113,1,0),(193,113,1,0),(194,113,1,0),(195,114,1,0),(196,116,1,0),(197,118,0,0),(198,120,1,0),(199,121,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,58,33,2,NULL),(2,90,33,2,NULL),(3,26,30,2,NULL),(4,152,30,2,NULL),(5,126,30,2,NULL),(6,127,30,2,NULL),(7,128,30,2,NULL),(8,91,30,2,NULL),(9,92,30,2,NULL),(10,94,30,2,NULL),(11,97,30,2,NULL),(12,46,30,2,NULL),(13,47,30,2,NULL),(14,48,30,2,NULL),(15,166,30,2,NULL),(16,169,30,2,NULL),(17,195,30,2,NULL),(18,196,30,2,NULL),(19,198,30,2,NULL),(20,91,1,2,NULL),(21,92,1,2,NULL),(22,94,1,2,NULL),(23,91,9,2,NULL),(24,92,9,2,NULL),(25,94,9,2,NULL),(26,91,10,2,NULL),(27,92,10,2,NULL),(28,94,10,2,NULL),(29,91,12,2,NULL),(30,92,12,2,NULL),(31,94,12,2,NULL),(32,91,28,2,NULL),(33,92,28,2,NULL),(34,94,28,2,NULL),(35,91,64,2,NULL),(36,92,64,2,NULL),(37,94,64,2,NULL),(38,91,65,2,NULL),(39,92,65,2,NULL),(40,94,65,2,NULL),(41,91,67,2,NULL),(42,92,67,2,NULL),(43,94,67,2,NULL),(44,91,68,2,NULL),(45,92,68,2,NULL),(46,94,68,2,NULL),(47,91,29,2,NULL),(48,92,29,2,NULL),(49,94,29,2,NULL),(50,91,31,2,NULL),(51,92,31,2,NULL),(52,94,31,2,NULL),(53,91,35,2,NULL),(54,92,35,2,NULL),(55,94,35,2,NULL),(56,91,40,2,NULL),(57,92,40,2,NULL),(58,94,40,2,NULL),(59,91,45,2,NULL),(60,92,45,2,NULL),(61,94,45,2,NULL),(62,91,49,2,NULL),(63,92,49,2,NULL),(64,94,49,2,NULL),(65,91,50,2,NULL),(66,92,50,2,NULL),(67,94,50,2,NULL),(68,91,51,2,NULL),(69,92,51,2,NULL),(70,94,51,2,NULL),(71,91,52,2,NULL),(72,92,52,2,NULL),(73,94,52,2,NULL),(74,91,53,2,NULL),(75,92,53,2,NULL),(76,94,53,2,NULL),(77,91,61,2,NULL),(78,92,61,2,NULL),(79,94,61,2,NULL),(80,91,63,2,NULL),(81,92,63,2,NULL),(82,94,63,2,NULL),(83,91,47,2,NULL),(84,92,47,2,NULL),(85,94,47,2,NULL),(86,91,32,2,NULL),(87,92,32,2,NULL),(88,94,32,2,NULL),(89,91,73,2,NULL),(90,92,73,2,NULL),(91,94,73,2,NULL),(92,91,77,2,NULL),(93,92,77,2,NULL),(94,94,77,2,NULL),(95,91,90,2,NULL),(96,92,90,2,NULL),(97,94,90,2,NULL),(98,91,94,2,NULL),(99,92,94,2,NULL),(100,94,94,2,NULL),(101,91,95,2,NULL),(102,92,95,2,NULL),(103,94,95,2,NULL),(104,91,96,2,NULL),(105,92,96,2,NULL),(106,94,96,2,NULL),(107,60,26,2,NULL),(108,60,34,2,NULL),(109,60,57,2,NULL),(110,61,26,2,NULL),(111,61,34,2,NULL),(112,61,57,2,NULL),(113,105,26,2,NULL),(114,105,34,2,NULL),(115,105,57,2,NULL),(116,106,26,2,NULL),(117,106,34,2,NULL),(118,106,57,2,NULL),(119,67,27,2,NULL),(120,67,44,2,NULL),(121,67,62,2,NULL),(122,26,47,2,NULL),(123,152,47,2,NULL),(124,126,47,2,NULL),(125,127,47,2,NULL),(126,128,47,2,NULL),(127,97,47,2,NULL),(128,46,47,2,NULL),(129,47,47,2,NULL),(130,48,47,2,NULL),(131,166,47,2,NULL),(132,169,47,2,NULL),(133,195,47,2,NULL),(134,196,47,2,NULL),(135,198,47,2,NULL),(136,26,1,2,NULL),(137,152,1,2,NULL),(138,126,1,2,NULL),(139,127,1,2,NULL),(140,128,1,2,NULL),(141,97,1,2,NULL),(142,46,1,2,NULL),(143,47,1,2,NULL),(144,48,1,2,NULL),(145,166,1,2,NULL),(146,169,1,2,NULL),(147,195,1,2,NULL),(148,196,1,2,NULL),(149,198,1,2,NULL),(150,3,4,2,NULL),(151,7,3,2,NULL),(152,4,7,2,NULL),(153,5,7,2,NULL),(154,14,7,2,NULL),(155,15,7,2,NULL),(156,6,8,2,NULL),(157,26,9,2,NULL),(158,152,9,2,NULL),(159,126,9,2,NULL),(160,127,9,2,NULL),(161,128,9,2,NULL),(162,97,9,2,NULL),(163,46,9,2,NULL),(164,47,9,2,NULL),(165,48,9,2,NULL),(166,166,9,2,NULL),(167,169,9,2,NULL),(168,195,9,2,NULL),(169,196,9,2,NULL),(170,198,9,2,NULL),(171,164,73,2,NULL),(172,168,73,2,NULL),(173,26,73,2,NULL),(174,152,73,2,NULL),(175,126,73,2,NULL),(176,127,73,2,NULL),(177,128,73,2,NULL),(178,97,73,2,NULL),(179,46,73,2,NULL),(180,47,73,2,NULL),(181,48,73,2,NULL),(182,166,73,2,NULL),(183,169,73,2,NULL),(184,195,73,2,NULL),(185,196,73,2,NULL),(186,198,73,2,NULL),(187,180,79,2,NULL),(188,26,77,2,NULL),(189,152,77,2,NULL),(190,126,77,2,NULL),(191,127,77,2,NULL),(192,128,77,2,NULL),(193,97,77,2,NULL),(194,46,77,2,NULL),(195,47,77,2,NULL),(196,48,77,2,NULL),(197,166,77,2,NULL),(198,169,77,2,NULL),(199,195,77,2,NULL),(200,196,77,2,NULL),(201,198,77,2,NULL),(202,185,83,2,NULL),(203,199,83,2,NULL),(204,166,10,2,NULL),(205,169,10,2,NULL),(206,195,10,2,NULL),(207,196,10,2,NULL),(208,198,10,2,NULL),(209,166,12,2,NULL),(210,169,12,2,NULL),(211,195,12,2,NULL),(212,196,12,2,NULL),(213,198,12,2,NULL),(214,166,28,2,NULL),(215,169,28,2,NULL),(216,195,28,2,NULL),(217,196,28,2,NULL),(218,198,28,2,NULL),(219,166,64,2,NULL),(220,169,64,2,NULL),(221,195,64,2,NULL),(222,196,64,2,NULL),(223,198,64,2,NULL),(224,166,65,2,NULL),(225,169,65,2,NULL),(226,195,65,2,NULL),(227,196,65,2,NULL),(228,198,65,2,NULL),(229,166,67,2,NULL),(230,169,67,2,NULL),(231,195,67,2,NULL),(232,196,67,2,NULL),(233,198,67,2,NULL),(234,166,68,2,NULL),(235,169,68,2,NULL),(236,195,68,2,NULL),(237,196,68,2,NULL),(238,198,68,2,NULL),(239,166,29,2,NULL),(240,169,29,2,NULL),(241,195,29,2,NULL),(242,196,29,2,NULL),(243,198,29,2,NULL),(244,166,31,2,NULL),(245,169,31,2,NULL),(246,195,31,2,NULL),(247,196,31,2,NULL),(248,198,31,2,NULL),(249,166,35,2,NULL),(250,169,35,2,NULL),(251,195,35,2,NULL),(252,196,35,2,NULL),(253,198,35,2,NULL),(254,166,40,2,NULL),(255,169,40,2,NULL),(256,195,40,2,NULL),(257,196,40,2,NULL),(258,198,40,2,NULL),(259,166,45,2,NULL),(260,169,45,2,NULL),(261,195,45,2,NULL),(262,196,45,2,NULL),(263,198,45,2,NULL),(264,166,49,2,NULL),(265,169,49,2,NULL),(266,195,49,2,NULL),(267,196,49,2,NULL),(268,198,49,2,NULL),(269,166,50,2,NULL),(270,169,50,2,NULL),(271,195,50,2,NULL),(272,196,50,2,NULL),(273,198,50,2,NULL),(274,166,51,2,NULL),(275,169,51,2,NULL),(276,195,51,2,NULL),(277,196,51,2,NULL),(278,198,51,2,NULL),(279,166,52,2,NULL),(280,169,52,2,NULL),(281,195,52,2,NULL),(282,196,52,2,NULL),(283,198,52,2,NULL),(284,166,53,2,NULL),(285,169,53,2,NULL),(286,195,53,2,NULL),(287,196,53,2,NULL),(288,198,53,2,NULL),(289,166,61,2,NULL),(290,169,61,2,NULL),(291,195,61,2,NULL),(292,196,61,2,NULL),(293,198,61,2,NULL),(294,166,63,2,NULL),(295,169,63,2,NULL),(296,195,63,2,NULL),(297,196,63,2,NULL),(298,198,63,2,NULL),(299,166,32,2,NULL),(300,169,32,2,NULL),(301,195,32,2,NULL),(302,196,32,2,NULL),(303,198,32,2,NULL),(304,166,90,2,NULL),(305,169,90,2,NULL),(306,195,90,2,NULL),(307,196,90,2,NULL),(308,198,90,2,NULL),(309,166,94,2,NULL),(310,169,94,2,NULL),(311,195,94,2,NULL),(312,196,94,2,NULL),(313,198,94,2,NULL),(314,166,95,2,NULL),(315,169,95,2,NULL),(316,195,95,2,NULL),(317,196,95,2,NULL),(318,198,95,2,NULL),(319,166,96,2,NULL),(320,169,96,2,NULL),(321,195,96,2,NULL),(322,196,96,2,NULL),(323,198,96,2,NULL),(324,163,89,2,NULL),(325,26,90,2,NULL),(326,152,90,2,NULL),(327,126,90,2,NULL),(328,127,90,2,NULL),(329,128,90,2,NULL),(330,97,90,2,NULL),(331,46,90,2,NULL),(332,47,90,2,NULL),(333,48,90,2,NULL),(334,26,94,2,NULL),(335,152,94,2,NULL),(336,126,94,2,NULL),(337,127,94,2,NULL),(338,128,94,2,NULL),(339,97,94,2,NULL),(340,46,94,2,NULL),(341,47,94,2,NULL),(342,48,94,2,NULL),(343,26,95,2,NULL),(344,152,95,2,NULL),(345,126,95,2,NULL),(346,127,95,2,NULL),(347,128,95,2,NULL),(348,97,95,2,NULL),(349,46,95,2,NULL),(350,47,95,2,NULL),(351,48,95,2,NULL),(352,26,96,2,NULL),(353,152,96,2,NULL),(354,126,96,2,NULL),(355,127,96,2,NULL),(356,128,96,2,NULL),(357,97,96,2,NULL),(358,46,96,2,NULL),(359,47,96,2,NULL),(360,48,96,2,NULL),(361,151,52,2,NULL),(362,153,31,2,NULL),(363,154,50,2,NULL),(364,155,53,2,NULL),(365,156,40,2,NULL),(366,157,51,2,NULL),(367,158,45,2,NULL),(368,159,49,2,NULL),(369,152,10,2,NULL),(370,152,12,2,NULL),(371,26,29,2,NULL),(372,152,28,2,NULL),(373,152,64,2,NULL),(374,152,65,2,NULL),(375,152,67,2,NULL),(376,152,68,2,NULL),(377,152,31,2,NULL),(378,152,35,2,NULL),(379,152,40,2,NULL),(380,152,45,2,NULL),(381,152,49,2,NULL),(382,152,50,2,NULL),(383,152,51,2,NULL),(384,152,52,2,NULL),(385,152,53,2,NULL),(386,126,29,2,NULL),(387,127,29,2,NULL),(388,128,29,2,NULL),(389,152,61,2,NULL),(390,152,63,2,NULL),(391,152,32,2,NULL),(392,97,29,2,NULL),(393,46,29,2,NULL),(394,47,29,2,NULL),(395,48,29,2,NULL),(396,26,31,2,NULL),(397,126,31,2,NULL),(398,127,31,2,NULL),(399,128,31,2,NULL),(400,97,31,2,NULL),(401,46,31,2,NULL),(402,47,31,2,NULL),(403,48,31,2,NULL),(404,26,35,2,NULL),(405,126,35,2,NULL),(406,127,35,2,NULL),(407,128,35,2,NULL),(408,97,35,2,NULL),(409,46,35,2,NULL),(410,47,35,2,NULL),(411,48,35,2,NULL),(412,26,40,2,NULL),(413,126,40,2,NULL),(414,127,40,2,NULL),(415,128,40,2,NULL),(416,97,40,2,NULL),(417,46,40,2,NULL),(418,47,40,2,NULL),(419,48,40,2,NULL),(420,26,45,2,NULL),(421,126,45,2,NULL),(422,127,45,2,NULL),(423,128,45,2,NULL),(424,97,45,2,NULL),(425,46,45,2,NULL),(426,47,45,2,NULL),(427,48,45,2,NULL),(428,26,49,2,NULL),(429,126,49,2,NULL),(430,127,49,2,NULL),(431,128,49,2,NULL),(432,97,49,2,NULL),(433,46,49,2,NULL),(434,47,49,2,NULL),(435,48,49,2,NULL),(436,26,50,2,NULL),(437,126,50,2,NULL),(438,127,50,2,NULL),(439,128,50,2,NULL),(440,97,50,2,NULL),(441,46,50,2,NULL),(442,47,50,2,NULL),(443,48,50,2,NULL),(444,26,51,2,NULL),(445,126,51,2,NULL),(446,127,51,2,NULL),(447,128,51,2,NULL),(448,97,51,2,NULL),(449,46,51,2,NULL),(450,47,51,2,NULL),(451,48,51,2,NULL),(452,26,52,2,NULL),(453,126,52,2,NULL),(454,127,52,2,NULL),(455,128,52,2,NULL),(456,97,52,2,NULL),(457,46,52,2,NULL),(458,47,52,2,NULL),(459,48,52,2,NULL),(460,26,53,2,NULL),(461,126,53,2,NULL),(462,127,53,2,NULL),(463,128,53,2,NULL),(464,97,53,2,NULL),(465,46,53,2,NULL),(466,47,53,2,NULL),(467,48,53,2,NULL),(468,126,10,2,NULL),(469,127,10,2,NULL),(470,128,10,2,NULL),(471,126,12,2,NULL),(472,127,12,2,NULL),(473,128,12,2,NULL),(474,126,28,2,NULL),(475,127,28,2,NULL),(476,128,28,2,NULL),(477,126,64,2,NULL),(478,127,64,2,NULL),(479,128,64,2,NULL),(480,126,65,2,NULL),(481,127,65,2,NULL),(482,128,65,2,NULL),(483,126,67,2,NULL),(484,127,67,2,NULL),(485,128,67,2,NULL),(486,126,68,2,NULL),(487,127,68,2,NULL),(488,128,68,2,NULL),(489,126,61,2,NULL),(490,127,61,2,NULL),(491,128,61,2,NULL),(492,126,63,2,NULL),(493,127,63,2,NULL),(494,128,63,2,NULL),(495,126,32,2,NULL),(496,127,32,2,NULL),(497,128,32,2,NULL),(498,26,61,2,NULL),(499,97,61,2,NULL),(500,46,61,2,NULL),(501,47,61,2,NULL),(502,48,61,2,NULL),(503,134,26,2,NULL),(504,134,34,2,NULL),(505,134,57,2,NULL),(506,135,26,2,NULL),(507,135,34,2,NULL),(508,135,57,2,NULL),(509,147,26,2,NULL),(510,147,34,2,NULL),(511,147,57,2,NULL),(512,148,26,2,NULL),(513,148,34,2,NULL),(514,148,57,2,NULL),(515,136,27,2,NULL),(516,136,44,2,NULL),(517,136,62,2,NULL),(518,26,63,2,NULL),(519,97,63,2,NULL),(520,46,63,2,NULL),(521,47,63,2,NULL),(522,48,63,2,NULL),(523,26,12,2,NULL),(524,97,12,2,NULL),(525,46,12,2,NULL),(526,47,12,2,NULL),(527,48,12,2,NULL),(528,19,22,2,NULL),(529,26,10,2,NULL),(530,26,28,2,NULL),(531,26,64,2,NULL),(532,26,65,2,NULL),(533,26,67,2,NULL),(534,26,68,2,NULL),(535,26,32,2,NULL),(536,20,20,2,NULL),(537,27,22,2,NULL),(538,24,26,2,NULL),(539,24,34,2,NULL),(540,24,57,2,NULL),(541,25,26,2,NULL),(542,25,34,2,NULL),(543,25,57,2,NULL),(544,43,26,2,NULL),(545,43,34,2,NULL),(546,43,57,2,NULL),(547,44,26,2,NULL),(548,44,34,2,NULL),(549,44,57,2,NULL),(550,40,27,2,NULL),(551,40,44,2,NULL),(552,40,62,2,NULL),(553,97,28,2,NULL),(554,46,28,2,NULL),(555,47,28,2,NULL),(556,48,28,2,NULL),(557,97,64,2,NULL),(558,46,64,2,NULL),(559,47,64,2,NULL),(560,48,64,2,NULL),(561,97,65,2,NULL),(562,46,65,2,NULL),(563,47,65,2,NULL),(564,48,65,2,NULL),(565,97,67,2,NULL),(566,46,67,2,NULL),(567,47,67,2,NULL),(568,48,67,2,NULL),(569,97,68,2,NULL),(570,46,68,2,NULL),(571,47,68,2,NULL),(572,48,68,2,NULL),(573,98,38,2,NULL),(574,99,36,2,NULL),(575,100,41,2,NULL),(576,97,10,2,NULL),(577,46,32,2,NULL),(578,47,32,2,NULL),(579,48,32,2,NULL),(580,46,10,2,NULL),(581,47,10,2,NULL),(582,48,10,2,NULL),(583,8,11,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.GET_TASKS'),(7,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(14,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.facebook.com/otothel.apps',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(12,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(21,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(31,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(36,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'content://mms/',NULL,NULL,NULL),(51,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(54,NULL,NULL,'content://mms/',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,26,5),(2,38,6),(3,39,7),(4,48,10),(5,71,26),(6,96,35),(7,96,36),(8,96,37),(9,105,50),(10,105,51),(11,107,52),(12,109,53),(13,110,54),(14,117,58),(15,119,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,4),(8,2,5),(9,2,6),(10,3,1),(11,3,2),(12,3,3),(13,3,4),(14,3,5),(15,3,6),(16,3,7),(17,3,8),(18,3,9),(19,3,10),(20,3,11),(21,3,12),(22,4,17),(23,4,16),(24,4,1),(25,4,2),(26,5,17),(27,4,3),(28,5,16),(29,4,4),(30,5,1),(31,4,6),(32,5,2),(33,4,8),(34,5,3),(35,4,9),(36,6,17),(37,5,4),(38,4,12),(39,6,16),(40,5,6),(41,4,13),(42,6,1),(43,5,8),(44,6,2),(45,4,14),(46,5,9),(47,6,4),(48,4,15),(49,5,12),(50,6,5),(51,5,13),(52,6,6),(53,6,8),(54,6,9),(55,6,13),(56,7,17),(57,7,1),(58,7,19),(59,7,2),(60,7,18),(61,7,4),(62,7,5),(63,7,6),(64,7,9),(65,7,10),(66,7,11);
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
