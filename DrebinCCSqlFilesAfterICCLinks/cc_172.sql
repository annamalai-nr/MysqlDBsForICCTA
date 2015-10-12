-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_172
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
INSERT INTO `ActionStrings` VALUES (23,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(17,'android.intent.action.DIAL'),(6,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(21,'android.intent.action.SCREEN_OFF'),(22,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEARCH'),(19,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(5,'android.intent.action.VIEW'),(14,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(7,'android.service.wallpaper.WallpaperService'),(18,'com.android.music.musicservicecommand'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'delete_history_account'),(15,'org.openintents.action.PICK_FILE'),(11,'ps.android.view.tabbar.changeTab'),(10,'ps.keepaccount.activity.delteTodayAccount'),(13,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.allen.txtxcb',1),(2,'com.ps.ddp',9),(3,'com.ps.keepaccount',9),(4,'com.ps.wordsearch.view',4),(5,'com.livegame.wallpapertoumingyd',3),(6,'com.gp.mahjongg',5),(7,'com.evilsunflower.reader.evilMeiguo8',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.txtxcb.txtReader'),(2,1,'com.google.ssearch.Dialog'),(3,1,'com.allen.txtxcb.ViewFileAct_Float'),(4,1,'com.allen.txtxcb.Settings'),(5,1,'com.google.ssearch.SearchService'),(6,1,'com.google.ssearch.Receiver'),(7,2,'com.ps.ddp.MainActivity'),(8,2,'com.ps.ddp.DemoApp'),(9,2,'com.ps.ddp.GameActivity'),(10,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,2,'com.google.update.Dialog'),(12,2,'com.waps.OffersWebView'),(13,2,'com.google.update.UpdateService'),(14,2,'com.google.update.Receiver'),(15,3,'com.ps.keepaccount.Main'),(16,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(17,3,'com.ps.keepaccount.activity.QueryAccount'),(18,3,'com.ps.keepaccount.activity.TodayAccount'),(19,3,'com.ps.keepaccount.activity.HistoryAccount'),(20,3,'com.ps.keepaccount.activity.WriteAccount'),(21,3,'com.ps.keepaccount.activity.TypeAccount'),(22,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(23,3,'com.ps.keepaccount.activity.TypeAccountList'),(24,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(25,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(26,3,'org.achartengine.GraphicalActivity'),(27,3,'com.google.update.Dialog'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,3,'com.waps.OffersWebView'),(30,3,'com.google.update.UpdateService'),(31,3,'com.google.update.Receiver'),(32,4,'com.ps.wordsearch.view.WordSearchActivity'),(33,4,'com.ps.wordsearch.view.CrashActivity'),(34,4,'com.ps.wordsearch.view.WordListActivity'),(35,4,'com.ps.wordsearch.view.TutorialActivity'),(36,5,'com.livegame.wallpapertoumingyd.MainActivity'),(37,4,'com.ps.wordsearch.view.WordSearchPreferences'),(38,5,'com.livegame.wallpapertoumingyd.SettingsActivity'),(39,4,'com.google.update.Dialog'),(40,5,'com.livegame.wallpapertoumingyd.SelectFolderActivity'),(41,4,'cn.domob.android.ads.DomobActivity'),(42,5,'com.google.ads.AdActivity'),(43,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,5,'com.vpon.adon.android.WebInApp'),(45,4,'com.ps.wordsearch.view.IOService'),(46,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(47,4,'com.google.update.UpdateService'),(48,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,4,'com.google.update.Receiver'),(50,5,'com.waps.OffersWebView'),(51,5,'com.google.update.Dialog'),(52,4,'com.ps.wordsearch.view.WordDictionaryProvider'),(53,5,'com.livegame.wallpapertoumingyd.WallpaperSlideshow'),(54,1,'com.google.ssearch.SearchService$MyThread'),(55,5,'com.google.update.UpdateService'),(56,5,'com.google.update.Receiver'),(57,6,'com.gp.mahjongg.SelectActivity'),(58,6,'com.gp.mahjongg.PlayActivity'),(59,6,'com.gp.background.BackgroundActivity'),(60,6,'com.gp.mahjongg.SettingsActivity'),(61,6,'com.gp.mahjongg.BuilderActivity'),(62,6,'cn.domob.android.ads.DomobActivity'),(63,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(65,6,'com.vpon.adon.android.WebInApp'),(66,6,'com.google.update.Dialog'),(67,6,'com.waps.OffersWebView'),(68,6,'com.google.update.UpdateService'),(69,6,'com.google.update.Receiver'),(70,1,'com.google.ssearch.Dialog$1'),(71,2,'com.waps.m'),(72,2,'com.google.update.Dialog$2'),(73,2,'com.waps.k'),(74,2,'com.waps.AppConnect'),(75,2,'com.google.update.Dialog$1'),(76,2,'com.waps.o'),(77,2,'com.google.update.UpdateService$AA'),(78,5,'com.waps.o'),(79,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(80,5,'com.google.update.Dialog$2'),(81,3,'com.google.update.UpdateService$AA'),(82,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(83,5,'com.waps.AppConnect'),(84,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(85,5,'com.livegame.wallpapertoumingyd.MainActivity$2'),(86,3,'com.google.update.Dialog$1'),(87,5,'com.google.update.UpdateService$AA'),(88,3,'com.ps.keepaccount.activity.QueryAccount$1'),(89,3,'com.waps.z'),(90,4,'cn.domob.android.ads.DomobActionReceiver'),(91,4,'cn.domob.android.ads.DomobAdManager'),(92,5,'com.waps.z'),(93,3,'com.google.update.Dialog$2'),(94,3,'com.waps.s'),(95,5,'com.waps.ac'),(96,4,'com.google.update.UpdateService$AA'),(97,5,'com.livegame.wallpapertoumingyd.MainActivity$1'),(98,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(99,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener'),(100,5,'com.waps.aa'),(101,4,'com.ps.wordsearch.view.WordListActivity$ImportListener'),(102,3,'com.waps.o'),(103,3,'com.ps.keepaccount.activity.WriteAccount$1'),(104,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener'),(105,3,'com.waps.q'),(106,4,'com.google.update.Dialog$2'),(107,7,'com.evilsunflower.reader.evilMeiguo8.BugReportActivity'),(108,5,'com.google.update.Dialog$1'),(109,7,'com.evilsunflower.reader.FBReader'),(110,4,'cn.domob.android.ads.i'),(111,7,'com.evilsunflower.reader.CancelActivity'),(112,7,'com.evilsunflower.reader.image.ImageViewActivity'),(113,4,'com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener'),(114,7,'com.evilsunflower.reader.TOCActivity'),(115,5,'com.waps.q'),(116,7,'com.evilsunflower.reader.BookmarksActivity'),(117,7,'com.evilsunflower.reader.control.ShowTips'),(118,7,'com.evilsunflower.reader.BookmarkEditActivity'),(119,7,'com.evilsunflower.reader.Starter'),(120,4,'com.google.update.Dialog$1'),(121,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(122,7,'com.vpon.adon.android.WebInApp'),(123,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(124,7,'com.millennialmedia.android.VideoPlayer'),(125,7,'net.youmi.android.AdActivity'),(126,7,'com.google.ads.AdActivity'),(127,7,'com.guohead.sdk.GuoheAdActivity'),(128,7,'cn.domob.android.ads.DomobActivity'),(129,4,'com.ps.wordsearch.view.WordListActivity$ExportListener'),(130,7,'com.evilsunflower.reader.control.UpdateService'),(131,7,'com.evilsunflower.reader.control.Receiver'),(132,4,'cn.domob.android.ads.i$6'),(133,3,'com.waps.aa'),(134,3,'com.waps.ac'),(135,4,'com.ps.wordsearch.view.WordListActivity$1'),(136,4,'com.ps.wordsearch.model.dictionary.DictionaryCustomProvider'),(137,4,'cn.domob.android.ads.DomobAdEngine$2'),(138,6,'com.google.update.UpdateService$AA'),(139,6,'cn.domob.android.a.a$a'),(140,6,'com.waps.aa'),(141,6,'com.waps.s'),(142,6,'cn.domob.android.ads.e'),(143,6,'com.waps.q'),(144,6,'com.waps.AppConnect'),(145,6,'com.waps.z'),(146,6,'com.google.update.Dialog$1'),(147,6,'com.google.update.Dialog$2'),(148,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(149,6,'com.waps.d'),(150,7,'com.ju6.c'),(151,6,'cn.domob.android.ads.g$1'),(152,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(153,6,'cn.domob.android.ads.o'),(154,7,'com.madhouse.android.ads._'),(155,6,'cn.domob.android.ads.o$5'),(156,7,'com.evilsunflower.reader.control.ShowTips$1'),(157,6,'cn.domob.android.ads.DomobAdManager'),(158,7,'com.millennialmedia.android.MillennialMediaView'),(159,7,'net.youmi.android.be'),(160,6,'com.waps.o'),(161,6,'com.waps.ac'),(162,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(163,7,'com.ju6.mms.util.SqliteWrapper'),(164,7,'com.ju6.mms.pdu.PduPersister'),(165,7,'net.youmi.android.t'),(166,7,'com.baidu.al'),(167,7,'com.adwo.adsdk.M'),(168,7,'com.baidu.as'),(169,7,'net.youmi.android.eo'),(170,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(171,7,'com.evilsunflower.reader.ui.ZLAndroidActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'/sdcard/txtbooks/xcb.txt'),(2,2,'MSG'),(3,3,'book1'),(4,2,'TYPEdsada'),(5,10,'shouldShowBottomBar'),(6,7,'WAPS_PID'),(7,13,'WAPS_PID'),(8,8,'WAPS_PID'),(9,10,'WAPS_PID'),(10,12,'Offers_URL'),(11,11,'MSG'),(12,10,'shouldMakeOverlayTransparent'),(13,11,'TYPEdsada'),(14,7,'APP_ID'),(15,13,'APP_ID'),(16,8,'APP_ID'),(17,10,'APP_ID'),(18,10,'shouldResizeOverlay'),(19,12,'USER_ID'),(20,12,'CLIENT_PACKAGE'),(21,10,'transitionTime'),(22,7,'CLIENT_PACKAGE'),(23,13,'CLIENT_PACKAGE'),(24,8,'CLIENT_PACKAGE'),(25,10,'CLIENT_PACKAGE'),(26,12,'URL'),(27,10,'url'),(28,7,'DEVICE_ID'),(29,13,'DEVICE_ID'),(30,8,'DEVICE_ID'),(31,10,'DEVICE_ID'),(32,10,'overlayTransition'),(33,13,'ST_START_DELAY'),(34,13,'ST_MY_PID'),(35,12,'isFinshClose'),(36,10,'overlayTitle'),(37,12,'URL_PARAMS'),(38,7,'WAPS_ID'),(39,13,'WAPS_ID'),(40,8,'WAPS_ID'),(41,10,'WAPS_ID'),(42,10,'shouldShowTitlebar'),(43,10,'shouldEnableBottomBar'),(44,29,'URL'),(45,50,'CLIENT_PACKAGE'),(46,51,'TYPEdsada'),(47,50,'SHWO_FLAG'),(48,29,'SHWO_FLAG'),(49,46,'Adwo_PID'),(50,50,'APP_ID'),(51,36,'APP_ID'),(52,48,'shouldEnableBottomBar'),(53,36,'CLIENT_PACKAGE'),(54,50,'WAPS_ID'),(55,36,'WAPS_ID'),(56,29,'CLIENT_PACKAGE'),(57,50,'URL'),(58,15,'CLIENT_PACKAGE'),(59,50,'Offers_URL'),(60,30,'CLIENT_PACKAGE'),(61,50,'URL_PARAMS'),(62,28,'CLIENT_PACKAGE'),(63,50,'Notify_Url_Params'),(64,17,'startDate'),(65,48,'overlayTransition'),(66,23,'startDate'),(67,48,'shouldResizeOverlay'),(68,44,'url'),(69,29,'ACTIVITY_FLAG'),(70,28,'shouldShowBottomBar'),(71,28,'shouldResizeOverlay'),(72,51,'MSG'),(73,50,'WAPS_PID'),(74,36,'WAPS_PID'),(75,29,'isFinshClose'),(76,29,'Notify_Id'),(77,29,'UrlPath'),(78,15,'WAPS_ID'),(79,29,'WAPS_ID'),(80,30,'WAPS_ID'),(81,28,'WAPS_ID'),(82,50,'USER_ID'),(83,29,'offers_webview_tag'),(84,29,'Offers_URL'),(85,27,'TYPEdsada'),(86,47,'DOMOB_TEST_MODE'),(87,26,'title'),(88,45,'DOMOB_TEST_MODE'),(89,43,'DOMOB_TEST_MODE'),(90,32,'ws_high_score'),(91,43,'overlayTitle'),(92,47,'DOMOB_PID'),(93,45,'DOMOB_PID'),(94,43,'DOMOB_PID'),(95,21,'endDate'),(96,30,'ST_MY_PID'),(97,50,'UrlPath'),(98,48,'url'),(99,32,'KEY_GLOBAL_RANK'),(100,23,'type'),(101,50,'Notify_Id'),(102,28,'overlayTitle'),(103,50,'DEVICE_ID'),(104,17,'endDate'),(105,36,'DEVICE_ID'),(106,15,'APP_ID'),(107,29,'APP_ID'),(108,30,'APP_ID'),(109,28,'APP_ID'),(110,29,'URL_PARAMS'),(111,44,'adWidth'),(112,28,'overlayTransition'),(113,23,'endDate'),(114,39,'TYPEdsada'),(115,43,'overlayTransition'),(116,29,'USER_ID'),(117,54,'ST_START_DELAY'),(118,46,'isTestMode'),(119,38,'folder'),(120,54,'ST_MY_PID'),(121,28,'shouldShowTitlebar'),(122,15,'DEVICE_ID'),(123,29,'DEVICE_ID'),(124,30,'DEVICE_ID'),(125,28,'DEVICE_ID'),(126,27,'MSG'),(127,43,'transitionTime'),(128,50,'offers_webview_tag'),(129,50,'ACTIVITY_FLAG'),(130,28,'shouldEnableBottomBar'),(131,48,'overlayTitle'),(132,32,'KEY_SIZE'),(133,48,'shouldShowTitlebar'),(134,47,'ST_MY_PID'),(135,48,'shouldShowBottomBar'),(136,50,'isFinshClose'),(137,48,'transitionTime'),(138,48,'shouldMakeOverlayTransparent'),(139,32,'KEY_WORDLIST_COUNT'),(140,28,'transitionTime'),(141,28,'shouldMakeOverlayTransparent'),(142,15,'WAPS_PID'),(143,29,'WAPS_PID'),(144,30,'WAPS_PID'),(145,28,'WAPS_PID'),(146,32,'KEY_GLOBAL_HIGH_SCORE'),(147,32,'KEY_HIGH_SCORE'),(148,47,'ST_START_DELAY'),(149,21,'startDate'),(150,26,'chart'),(151,30,'ST_START_DELAY'),(152,28,'url'),(153,29,'Notify_Url_Params'),(154,32,'ws_grid'),(155,41,'actType'),(156,32,'ws_time'),(157,32,'KEY_RANK'),(158,32,'KEY_NAME'),(159,43,'shouldResizeOverlay'),(160,32,'KEY_TIME'),(161,47,'DOMOB_ALLOW_LOCATION'),(162,45,'DOMOB_ALLOW_LOCATION'),(163,43,'DOMOB_ALLOW_LOCATION'),(164,43,'shouldEnableBottomBar'),(165,43,'shouldMakeOverlayTransparent'),(166,39,'MSG'),(167,43,'shouldShowTitlebar'),(168,43,'shouldShowBottomBar'),(169,41,'appName'),(170,41,'appId'),(171,32,'KEY_THEME'),(172,43,'url'),(173,63,'shouldMakeOverlayTransparent'),(174,62,'shouldEnableBottomBar'),(175,62,'shouldShowBottomBar'),(176,66,'Notify_Url_Params'),(177,66,'offers_webview_tag'),(178,66,'Offers_URL'),(179,62,'shouldShowTitlebar'),(180,57,'MARKED'),(181,60,'START_DIES_KEY'),(182,56,'CLIENT_PACKAGE'),(183,58,'CLIENT_PACKAGE'),(184,66,'CLIENT_PACKAGE'),(185,57,'CLIENT_PACKAGE'),(186,60,'CLIENT_PACKAGE'),(187,60,'SCALE_KEY'),(188,63,'overlayTransition'),(189,65,'TYPEdsada'),(190,64,'adWidth'),(191,65,'MSG'),(192,62,'transitionTime'),(193,62,'overlayTransition'),(194,63,'FSAd'),(195,66,'URL'),(196,56,'WAPS_ID'),(197,58,'WAPS_ID'),(198,66,'WAPS_ID'),(199,57,'WAPS_ID'),(200,60,'WAPS_ID'),(201,66,'URL_PARAMS'),(202,66,'SHWO_FLAG'),(203,66,'isFinshClose'),(204,66,'USER_ID'),(205,63,'shouldEnableBottomBar'),(206,61,'actType'),(207,62,'url'),(208,56,'APP_ID'),(209,58,'APP_ID'),(210,66,'APP_ID'),(211,57,'APP_ID'),(212,60,'APP_ID'),(213,62,'overlayTitle'),(214,60,'CURRENT_LAYER_KEY'),(215,60,'UNDO_KEY'),(216,89,'ADUrl'),(217,82,'ADUrl'),(218,77,'ADUrl'),(219,90,'ADUrl'),(220,88,'shouldShowBottomBar'),(221,90,'D50EF1926ADD471892E72BCE6D7E032C'),(222,83,'MM'),(223,86,'url'),(224,77,'GH_APPKEY'),(225,82,'query'),(226,77,'Adwo_PID'),(227,88,'cachedAdView'),(228,89,'shouldShowBottomBar'),(229,88,'transitionTime'),(230,63,'overlayTitle'),(231,64,'url'),(232,86,'shouldMakeOverlayTransparent'),(233,77,'Market_ID'),(234,77,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(235,60,'ACTION_KEY'),(236,86,'overlayTitle'),(237,56,'DOMOB_PID'),(238,58,'DOMOB_PID'),(239,63,'DOMOB_PID'),(240,67,'DOMOB_PID'),(241,92,'link'),(242,57,'DOMOB_PID'),(243,62,'DOMOB_PID'),(244,57,'ZOOM'),(245,62,'shouldResizeOverlay'),(246,63,'shouldShowBottomBar'),(247,67,'ST_MY_PID'),(248,62,'shouldMakeOverlayTransparent'),(249,60,'LAYOUT_KEY_KEY'),(250,88,'shouldShowTitlebar'),(251,86,'transitionTime'),(252,86,'overlayTransition'),(253,60,'TOP_FREE_KEY'),(254,77,'query'),(255,88,'shouldEnableBottomBar'),(256,89,'videoAd'),(257,89,'videoPosition'),(258,77,'Wooboo_PID'),(259,66,'ACTIVITY_FLAG'),(260,88,'shouldResizeOverlay'),(261,60,'SCROLL_X_KEY'),(262,56,'DOMOB_ALLOW_LOCATION'),(263,58,'DOMOB_ALLOW_LOCATION'),(264,63,'DOMOB_ALLOW_LOCATION'),(265,67,'DOMOB_ALLOW_LOCATION'),(266,57,'DOMOB_ALLOW_LOCATION'),(267,62,'DOMOB_ALLOW_LOCATION'),(268,66,'UrlPath'),(269,63,'shouldResizeOverlay'),(270,94,'SAFE_START'),(271,56,'DEVICE_ID'),(272,58,'DEVICE_ID'),(273,86,'shouldShowBottomBar'),(274,66,'DEVICE_ID'),(275,57,'DEVICE_ID'),(276,60,'DEVICE_ID'),(277,61,'appName'),(278,67,'ST_START_DELAY'),(279,63,'shouldShowTitlebar'),(280,56,'CURRENT_PAGE'),(281,60,'SCROLL_Y_KEY'),(282,56,'WAPS_PID'),(283,58,'WAPS_PID'),(284,66,'WAPS_PID'),(285,57,'WAPS_PID'),(286,60,'WAPS_PID'),(287,61,'appId'),(288,56,'DOMOB_TEST_MODE'),(289,58,'DOMOB_TEST_MODE'),(290,63,'DOMOB_TEST_MODE'),(291,67,'DOMOB_TEST_MODE'),(292,57,'DOMOB_TEST_MODE'),(293,62,'DOMOB_TEST_MODE'),(294,63,'transitionTime'),(295,66,'Notify_Id'),(296,88,'overlayTitle'),(297,60,'LEFT_FREE_KEY'),(298,86,'shouldResizeOverlay'),(299,90,'D780FBF4215247bcBB1AC0AD33C474FE'),(300,88,'shouldMakeOverlayTransparent'),(301,89,'isCachedAd'),(302,88,'canAccelerate'),(303,89,'adName'),(304,89,'videoCompleted'),(305,90,'EB80F3291A8E469c962CA133BDC549D7'),(306,77,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(307,87,'adWidth'),(308,88,'overlayTransition'),(309,86,'shouldEnableBottomBar'),(310,89,'cached'),(311,90,'172C94EDC717477aBF600D7898A64A8E'),(312,86,'shouldShowTitlebar'),(313,87,'url'),(314,94,'SAFE_PID'),(315,89,'logSet');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'p',0,NULL,NULL),(53,53,'s',1,18,NULL),(54,55,'s',0,NULL,NULL),(55,56,'r',1,NULL,NULL),(56,57,'a',1,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,69,'r',1,NULL,NULL),(69,71,'r',1,NULL,NULL),(70,79,'r',1,NULL,NULL),(71,82,'r',1,NULL,NULL),(72,84,'r',1,NULL,NULL),(73,90,'r',1,NULL,NULL),(74,98,'r',1,NULL,NULL),(75,105,'r',1,NULL,NULL),(76,107,'a',0,NULL,NULL),(77,109,'a',1,NULL,NULL),(78,111,'a',0,NULL,NULL),(79,112,'a',0,NULL,NULL),(80,114,'a',0,NULL,NULL),(81,115,'r',1,NULL,NULL),(82,116,'a',1,NULL,NULL),(83,117,'a',0,NULL,NULL),(84,118,'a',0,NULL,NULL),(85,119,'a',0,NULL,NULL),(86,121,'a',0,NULL,NULL),(87,122,'a',0,NULL,NULL),(88,123,'a',0,NULL,NULL),(89,124,'a',0,NULL,NULL),(90,125,'a',0,NULL,NULL),(91,126,'a',0,NULL,NULL),(92,127,'a',0,NULL,NULL),(93,128,'a',0,NULL,NULL),(94,130,'s',0,NULL,NULL),(95,131,'r',1,NULL,NULL),(96,142,'r',1,NULL,NULL),(97,143,'r',1,NULL,NULL),(98,167,'r',1,NULL,NULL),(99,169,'r',1,NULL,NULL),(100,170,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,5),(3,3,3),(4,4,1),(5,5,5),(6,6,2),(7,7,5),(8,8,14),(9,9,7),(10,10,11),(11,11,12),(12,12,7),(13,13,8),(14,14,8),(15,15,11),(16,16,7),(17,17,13),(18,17,10),(19,17,8),(20,18,7),(21,19,13),(22,20,13),(23,21,7),(24,22,13),(25,22,8),(26,22,10),(27,23,13),(28,24,13),(29,24,10),(30,24,8),(31,25,50),(32,26,51),(33,27,17),(34,28,30),(35,29,55),(36,30,36),(37,31,36),(38,32,27),(39,33,54),(40,34,17),(41,35,50),(42,36,29),(43,37,54),(44,38,17),(45,39,47),(46,39,45),(47,39,43),(48,40,50),(49,41,27),(50,42,49),(51,43,28),(52,43,30),(53,44,50),(54,44,40),(55,45,47),(56,46,36),(57,47,32),(58,49,21),(59,48,50),(60,50,34),(61,51,29),(62,52,34),(63,53,20),(64,54,54),(65,55,32),(66,56,30),(67,57,39),(68,58,32),(69,59,51),(70,60,47),(71,60,43),(72,60,45),(73,61,29),(74,62,32),(75,63,29),(76,64,50),(77,65,34),(78,66,34),(79,67,39),(80,68,28),(81,68,30),(82,69,52),(83,70,34),(84,71,31),(85,72,34),(86,73,52),(87,74,30),(88,74,28),(89,75,32),(90,76,43),(91,76,45),(92,76,47),(93,77,29),(94,78,21),(95,79,52),(96,80,29),(97,81,34),(98,82,30),(99,83,32),(100,84,32),(101,85,17),(102,86,34),(103,87,32),(104,88,34),(105,89,32),(106,90,47),(107,91,47),(108,92,47),(109,92,45),(110,92,43),(111,93,32),(112,94,66),(113,95,67),(114,96,67),(115,96,63),(116,96,62),(117,96,57),(118,96,56),(119,97,66),(120,97,57),(121,98,56),(122,99,58),(123,99,60),(124,100,56),(125,100,57),(126,101,66),(127,102,67),(128,103,56),(129,104,58),(130,104,60),(131,105,66),(132,105,57),(133,106,65),(134,106,57),(135,107,77),(136,107,90),(137,107,82),(138,107,89),(139,108,65),(140,108,57),(141,109,82),(142,109,77),(143,109,90),(144,110,57),(145,111,77),(146,112,57),(147,112,56),(148,112,62),(149,112,63),(150,112,67),(151,113,77),(152,113,90),(153,113,82),(154,114,77),(155,114,89),(156,114,90),(157,114,82),(158,115,89),(159,115,82),(160,115,77),(161,115,90),(162,116,56),(163,116,58),(164,116,57),(165,116,67),(166,116,63),(167,116,60),(168,116,62),(169,117,89),(170,117,90),(171,117,82),(172,117,77),(173,118,68),(174,119,56),(175,120,82),(176,120,77),(177,120,90),(178,121,67),(179,121,62),(180,121,63),(181,121,56),(182,121,57),(183,122,83),(184,123,82),(185,123,89),(186,123,90),(187,123,77),(188,124,95),(189,125,77),(190,126,63),(191,126,62),(192,126,67),(193,126,57),(194,126,58),(195,126,56),(196,127,77),(197,128,77),(198,128,90),(199,128,89),(200,128,82),(201,129,67),(202,130,90),(203,130,89),(204,130,77),(205,130,82),(206,131,90),(207,132,60),(208,132,58),(209,133,66),(210,133,57),(211,134,66),(212,135,56),(213,136,77),(214,137,90),(215,138,77),(216,139,77),(217,140,77),(218,141,90),(219,142,90),(220,142,89),(221,142,82),(222,142,77),(223,143,77),(224,144,82),(225,144,77),(226,144,90),(227,145,77),(228,146,82),(229,146,77),(230,146,90),(231,147,82),(232,148,77),(233,149,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,54,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(3,3,'<com.allen.txtxcb.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(4,1,'<com.allen.txtxcb.txtReader: void onClick(android.view.View)>',10,'a',NULL),(5,5,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(6,70,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(7,5,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(8,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(10,72,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(11,73,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(12,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(13,74,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(14,74,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(15,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(17,76,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(18,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(19,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(20,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(21,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(22,76,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(23,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(24,76,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(25,78,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,17,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(28,81,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(29,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,83,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(31,85,'<com.livegame.wallpapertoumingyd.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(32,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,87,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(34,88,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(35,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(36,89,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,17,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(39,91,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(40,92,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(41,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(43,94,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(44,95,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(45,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(46,97,'<com.livegame.wallpapertoumingyd.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(47,99,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(48,100,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,21,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(50,101,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(51,102,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(52,101,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.view.View)>',20,'a',NULL),(53,103,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(54,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(55,104,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(57,106,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(58,104,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(59,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,110,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(61,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(62,113,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(63,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(64,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(65,34,'<com.ps.wordsearch.view.WordListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(66,34,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',10,'p',0),(67,120,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(68,94,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(69,52,'<com.ps.wordsearch.view.WordDictionaryProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',29,'p',0),(70,34,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',36,'p',0),(71,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(72,129,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(73,52,'<com.ps.wordsearch.view.WordDictionaryProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'p',NULL),(74,94,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(75,32,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(76,132,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,133,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(78,21,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(79,52,'<com.ps.wordsearch.view.WordDictionaryProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(80,134,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(81,135,'<com.ps.wordsearch.view.WordListActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(82,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(83,99,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(84,32,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(85,88,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(86,34,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',57,'p',0),(87,136,'<com.ps.wordsearch.model.dictionary.DictionaryCustomProvider: java.lang.String getNextWord(int,int)>',8,'p',NULL),(88,129,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.view.View)>',20,'a',NULL),(89,32,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(90,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(91,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(92,137,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(93,113,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(94,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(95,138,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(96,139,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(97,140,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(98,57,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',51,'a',NULL),(99,141,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(100,144,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(101,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(102,68,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(103,57,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(104,141,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(105,145,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(106,146,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(107,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(108,147,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(109,148,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(110,149,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(111,150,'<com.ju6.c: void run()>',146,'p',NULL),(112,151,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(113,152,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(114,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(115,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(116,153,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(117,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(118,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(119,57,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(120,154,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(121,155,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(122,156,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(123,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(124,131,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(125,109,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(126,157,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(127,109,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(128,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(129,68,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(130,158,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(131,159,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(132,141,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(133,160,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(134,161,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(135,57,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(136,150,'<com.ju6.c: boolean b()>',272,'p',NULL),(137,162,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(138,163,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(139,164,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(140,163,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(141,165,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(142,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(143,150,'<com.ju6.c: boolean b()>',195,'p',0),(144,166,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(145,163,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(146,168,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(147,116,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(148,171,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(149,150,'<com.ju6.c: boolean b()>',192,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,8,8),(4,13,8),(5,14,5),(6,18,1),(7,19,1),(8,22,1),(9,23,1),(10,24,1),(11,25,1),(12,27,1),(13,28,1),(14,35,5),(15,36,5),(16,37,5),(17,38,8),(18,40,1),(19,42,1),(20,45,1),(21,46,1),(22,47,1),(23,48,12),(24,49,1),(25,51,5),(26,52,1),(27,53,1),(28,56,13),(29,57,5),(30,58,8),(31,60,5),(32,62,1),(33,63,1),(34,64,14),(35,70,5),(36,71,15),(37,74,6),(38,77,8),(39,80,1),(40,81,5),(41,82,1),(42,84,5),(43,86,1),(44,88,1),(45,89,1),(46,91,1),(47,92,1),(48,93,1),(49,97,6),(50,98,5),(51,101,5),(52,103,5),(53,104,5),(54,106,5),(55,108,5),(56,113,10),(57,114,15),(58,115,5),(59,120,5),(60,122,1),(61,123,1),(62,127,5),(63,130,1),(64,131,1),(65,136,1),(66,137,1),(67,138,5),(68,139,1),(69,140,5),(70,141,1),(71,142,8),(72,146,17),(73,148,5),(74,149,5),(75,152,5),(76,153,1),(77,155,5),(78,156,1),(79,157,5),(80,158,5),(81,159,5),(82,160,5),(83,167,18),(84,168,5),(85,170,5),(86,171,5),(87,172,5),(88,173,5),(89,174,5),(90,176,5),(91,177,5),(92,178,5),(93,179,5),(94,181,19),(95,182,20),(96,183,20),(97,184,20),(98,185,20),(99,186,20),(100,187,20),(101,188,20),(102,189,20),(103,190,5),(104,191,5),(105,192,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,18,1),(4,19,3),(5,22,1),(6,23,3),(7,24,1),(8,25,3),(9,27,3),(10,28,1),(11,40,1),(12,42,3),(13,45,1),(14,46,3),(15,47,3),(16,49,1),(17,52,1),(18,53,3),(19,62,3),(20,63,1),(21,80,1),(22,82,3),(23,86,1),(24,88,3),(25,89,1),(26,91,1),(27,92,3),(28,93,3),(29,122,3),(30,123,1),(31,130,1),(32,131,3),(33,136,1),(34,137,3),(35,139,1),(36,141,3),(37,153,1),(38,156,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/SearchService'),(2,4,'com/allen/txtxcb/Settings'),(3,5,'com/allen/txtxcb/ViewFileAct_Float'),(4,6,'com/google/ssearch/Dialog'),(5,7,'com/google/ssearch/Dialog'),(6,9,'com/google/ssearch/Dialog'),(7,10,'com/google/ssearch/Dialog'),(8,11,'com/google/update/UpdateService'),(9,12,'com/ps/ddp/GameActivity'),(10,15,'com/ps/ddp/DemoApp'),(11,16,'com/waps/OffersWebView'),(12,17,'com/waps/OffersWebView'),(13,20,'com/ps/ddp/GameActivity'),(14,26,'com/ps/ddp/GameActivity'),(15,29,'com/google/update/Dialog'),(16,30,'com/google/update/Dialog'),(17,31,'com/ps/ddp/GameActivity'),(18,32,'com/waps/OffersWebView'),(19,33,'com/google/update/Dialog'),(20,34,'com/google/update/Dialog'),(21,39,'com/ps/keepaccount/dialog/DateSelectorDialog'),(22,41,'com/google/update/UpdateService'),(23,43,'com/waps/OffersWebView'),(24,44,'com/livegame/wallpapertoumingyd/SettingsActivity'),(25,54,'com/google/update/Dialog'),(26,55,'com/google/update/Dialog'),(27,59,'com/google/update/UpdateService'),(28,61,'NULL-CONSTANT'),(29,65,'com/ps/wordsearch/view/WordSearchPreferences'),(30,66,'com/ps/keepaccount/dialog/DateSelectorDialog'),(31,67,'com/waps/OffersWebView'),(32,68,'com/ps/wordsearch/view/IOService'),(33,69,'com/waps/OffersWebView'),(34,72,'com/ps/keepaccount/dialog/CanlendarDialog'),(35,73,'com/google/update/Dialog'),(36,75,'com/google/update/Dialog'),(37,76,'com/google/update/Dialog'),(38,79,'com/ps/wordsearch/view/WordSearchPreferences'),(39,78,'com/google/update/Dialog'),(40,83,'(.*)'),(41,87,'(.*)'),(42,94,'com/google/update/UpdateService'),(43,95,'com/ps/wordsearch/view/IOService'),(44,96,'com/waps/OffersWebView'),(45,99,'com/waps/OffersWebView'),(46,102,'com/waps/OffersWebView'),(47,105,'com/ps/keepaccount/activity/TypeAccountList'),(48,107,'NULL-CONSTANT'),(49,109,'com/google/update/Dialog'),(50,110,'com/ps/wordsearch/view/WordSearchPreferences'),(51,111,'com/google/update/Dialog'),(52,112,'com/ps/wordsearch/view/WordSearchPreferences'),(53,115,'com/ps/wordsearch/view/TutorialActivity'),(54,116,'com/google/update/Dialog'),(55,117,'com/google/update/Dialog'),(56,118,'com/google/update/Dialog'),(57,119,'com/google/update/Dialog'),(58,121,'(.*)'),(59,124,'com/waps/OffersWebView'),(60,125,'com/waps/OffersWebView'),(61,126,'com/gp/mahjongg/PlayActivity'),(62,128,'com/waps/OffersWebView'),(63,132,'com/google/update/Dialog'),(64,133,'com/google/update/Dialog'),(65,134,'com/gp/mahjongg/BuilderActivity'),(66,144,'com/waps/OffersWebView'),(67,147,'com/millennialmedia/android/MMAdViewOverlayActivity'),(68,150,'com/google/update/UpdateService'),(69,151,'com/gp/background/BackgroundActivity'),(70,161,'com/evilsunflower/reader/control/UpdateService'),(71,162,'com.evilsunflower.reader.FBReader'),(72,163,'com.evilsunflower.reader.FBReader'),(73,164,'com/millennialmedia/android/MMAdViewOverlayActivity'),(74,165,'com/google/update/Dialog'),(75,166,'com/google/update/Dialog'),(76,169,'com/waps/OffersWebView'),(77,175,'NULL-CONSTANT'),(78,180,'com/gp/mahjongg/SettingsActivity'),(79,191,'com.android.browser.BrowserActivity'),(80,193,'com/evilsunflower/reader/BookmarkEditActivity'),(81,194,'com/evilsunflower/reader/control/UpdateService');
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
INSERT INTO `IData` VALUES (1,14,1),(2,35,2),(3,36,3),(4,37,4),(5,51,5),(6,57,7),(7,60,8),(8,70,9),(9,71,10),(10,81,11),(11,84,12),(12,98,14),(13,101,15),(14,103,16),(15,104,17),(16,106,18),(17,108,19),(18,114,21),(19,120,22),(20,127,24),(21,138,25),(22,140,26),(23,146,28),(24,147,29),(25,148,30),(26,149,31),(27,152,33),(28,155,34),(29,157,35),(30,158,36),(31,159,37),(32,160,38),(33,164,40),(34,168,41),(35,170,42),(36,171,43),(37,172,44),(38,173,45),(39,174,46),(40,176,47),(41,177,48),(42,178,49),(43,179,50),(44,190,57),(45,191,58),(46,192,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'/sdcard/txtbooks/xcb.txt'),(2,5,'book1'),(3,6,'MSG'),(4,6,'TYPEdsada'),(5,7,'TYPEdsada'),(6,9,'MSG'),(7,9,'TYPEdsada'),(8,10,'TYPEdsada'),(9,12,'type'),(10,16,'USER_ID'),(11,16,'CLIENT_PACKAGE'),(12,16,'Offers_URL'),(13,16,'URL_PARAMS'),(14,17,'USER_ID'),(15,17,'CLIENT_PACKAGE'),(16,17,'Offers_URL'),(17,17,'URL_PARAMS'),(18,20,'type'),(19,26,'type'),(20,29,'TYPEdsada'),(21,30,'MSG'),(22,30,'TYPEdsada'),(23,31,'type'),(24,32,'CLIENT_PACKAGE'),(25,32,'URL'),(26,32,'isFinshClose'),(27,33,'TYPEdsada'),(28,34,'MSG'),(29,34,'TYPEdsada'),(30,43,'USER_ID'),(31,43,'CLIENT_PACKAGE'),(32,43,'Offers_URL'),(33,43,'offers_webview_tag'),(34,43,'URL_PARAMS'),(35,54,'MSG'),(36,54,'TYPEdsada'),(37,55,'TYPEdsada'),(38,56,'startDate'),(39,56,'endDate'),(40,64,'android.live_wallpaper.package'),(41,64,'android.live_wallpaper.settings'),(42,67,'UrlPath'),(43,67,'ACTIVITY_FLAG'),(44,68,'overwrite'),(45,67,'isFinshClose'),(46,68,'filename'),(47,67,'offers_webview_tag'),(48,68,'actionType'),(49,69,'Notify_Url_Params'),(50,69,'UrlPath'),(51,69,'ACTIVITY_FLAG'),(52,69,'isFinshClose'),(53,69,'offers_webview_tag'),(54,71,'org.openintents.extra.BUTTON_TEXT'),(55,73,'MSG'),(56,73,'TYPEdsada'),(57,75,'TYPEdsada'),(58,76,'TYPEdsada'),(59,78,'MSG'),(60,78,'TYPEdsada'),(61,95,'overwrite'),(62,95,'filename'),(63,95,'actionType'),(64,96,'CLIENT_PACKAGE'),(65,96,'URL'),(66,96,'isFinshClose'),(67,96,'offers_webview_tag'),(68,99,'Notify_Url_Params'),(69,99,'UrlPath'),(70,99,'ACTIVITY_FLAG'),(71,99,'isFinshClose'),(72,99,'offers_webview_tag'),(73,102,'UrlPath'),(74,102,'ACTIVITY_FLAG'),(75,102,'isFinshClose'),(76,102,'offers_webview_tag'),(77,105,'startDate'),(78,105,'endDate'),(79,105,'type'),(80,109,'TYPEdsada'),(81,111,'MSG'),(82,111,'TYPEdsada'),(83,114,'org.openintents.extra.BUTTON_TEXT'),(84,116,'MSG'),(85,116,'TYPEdsada'),(86,117,'TYPEdsada'),(87,118,'MSG'),(88,118,'TYPEdsada'),(89,119,'TYPEdsada'),(90,124,'UrlPath'),(91,124,'ACTIVITY_FLAG'),(92,124,'isFinshClose'),(93,124,'offers_webview_tag'),(94,125,'Notify_Url_Params'),(95,125,'UrlPath'),(96,125,'ACTIVITY_FLAG'),(97,125,'isFinshClose'),(98,125,'offers_webview_tag'),(99,126,'GAME_ID'),(100,128,'USER_ID'),(101,128,'CLIENT_PACKAGE'),(102,128,'Offers_URL'),(103,128,'offers_webview_tag'),(104,128,'URL_PARAMS'),(105,132,'MSG'),(106,132,'TYPEdsada'),(107,133,'TYPEdsada'),(108,134,'GAME_ID'),(109,144,'CLIENT_PACKAGE'),(110,144,'URL'),(111,144,'isFinshClose'),(112,144,'offers_webview_tag'),(113,147,'cachedAdView'),(114,164,'cachedAdView'),(115,165,'MSG'),(116,165,'TYPEdsada'),(117,166,'TYPEdsada'),(118,167,'command'),(119,169,'CLIENT_PACKAGE'),(120,169,'URL'),(121,169,'isFinshClose'),(122,169,'offers_webview_tag'),(123,181,'android.intent.extra.TEXT'),(124,181,'android.intent.extra.SUBJECT'),(125,181,'android.intent.extra.EMAIL'),(126,182,'android.intent.extra.INTENT'),(127,183,'android.intent.extra.INTENT'),(128,184,'android.intent.extra.TITLE'),(129,184,'android.intent.extra.INTENT'),(130,185,'android.intent.extra.INTENT'),(131,186,'android.intent.extra.TITLE'),(132,186,'android.intent.extra.INTENT'),(133,187,'android.intent.extra.INTENT'),(134,188,'android.intent.extra.TITLE'),(135,188,'android.intent.extra.INTENT'),(136,189,'android.intent.extra.TITLE'),(137,189,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,5),(15,8,6),(16,9,5),(17,10,1),(18,11,5),(19,12,4),(20,12,3),(21,12,2),(22,13,7),(23,14,2),(24,14,4),(25,14,3),(26,15,1),(27,16,2),(28,16,3),(29,16,4),(30,17,9),(31,18,10),(32,19,11),(33,20,12),(34,21,9),(35,22,13),(36,23,9),(37,24,16),(38,25,1),(39,26,9),(40,27,16),(41,28,3),(42,28,4),(43,28,2),(44,29,9),(45,30,9),(46,31,9),(47,32,21),(48,32,22),(49,33,23),(50,34,23),(51,35,23),(52,36,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,8,2),(6,10,1),(7,15,1),(8,25,1);
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
INSERT INTO `IFData` VALUES (1,8,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.ps.word'),(2,17,'package',NULL,NULL,NULL,NULL,NULL),(3,21,'package',NULL,NULL,NULL,NULL,NULL),(4,23,'package',NULL,NULL,NULL,NULL,NULL),(5,26,'package',NULL,NULL,NULL,NULL,NULL),(6,29,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL),(8,31,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,37,'application','vnd.android.package-archive'),(3,51,'application','vnd.android.package-archive'),(4,57,'application','vnd.android.package-archive'),(5,70,'application','vnd.android.package-archive'),(6,74,'vnd.android.cursor.dir','vnd.ps.word'),(7,97,'vnd.android.cursor.dir','vnd.ps.word'),(8,98,'application','vnd.android.package-archive'),(9,101,'application','vnd.android.package-archive'),(10,103,'application','vnd.android.package-archive'),(11,104,'application','vnd.android.package-archive'),(12,106,'application','vnd.android.package-archive'),(13,138,'application','vnd.android.package-archive'),(14,152,'application','vnd.android.package-archive'),(15,155,'application','vnd.android.package-archive'),(16,157,'application','vnd.android.package-archive'),(17,159,'application','vnd.android.package-archive'),(18,160,'application','vnd.android.package-archive'),(19,168,'application','vnd.android.package-archive'),(20,170,'application','vnd.android.package-archive'),(21,171,'application','vnd.android.package-archive'),(22,172,'application','vnd.android.package-archive'),(23,173,'application','vnd.android.package-archive'),(24,174,'application','vnd.android.package-archive'),(25,176,'application','vnd.android.package-archive'),(26,177,'application','vnd.android.package-archive'),(27,178,'application','vnd.android.package-archive'),(28,179,'application','vnd.android.package-archive'),(29,181,'message','rfc822'),(30,192,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.allen.txtxcb'),(2,2,'com.allen.txtxcb'),(3,3,'com.allen.txtxcb'),(4,4,'com.allen.txtxcb'),(5,5,'com.allen.txtxcb'),(6,6,'com.allen.txtxcb'),(7,7,'com.allen.txtxcb'),(8,9,'com.allen.txtxcb'),(9,10,'com.allen.txtxcb'),(10,11,'com.ps.ddp'),(11,12,'com.ps.ddp'),(12,15,'com.ps.ddp'),(13,16,'com.ps.ddp'),(14,17,'com.ps.ddp'),(15,18,'com.noshufou.android.su'),(16,19,'com.noshufou.android.su'),(17,20,'com.ps.ddp'),(18,22,'(.*)'),(19,23,'(.*)'),(20,24,'NULL-CONSTANT'),(21,25,'NULL-CONSTANT'),(22,26,'com.ps.ddp'),(23,27,'com.ps.ddp'),(24,28,'com.ps.ddp'),(25,29,'com.ps.ddp'),(26,30,'com.ps.ddp'),(27,31,'com.ps.ddp'),(28,32,'com.ps.ddp'),(29,33,'com.ps.ddp'),(30,34,'com.ps.ddp'),(31,39,'com.ps.keepaccount'),(32,40,'com.ps.keepaccount'),(33,41,'com.livegame.wallpapertoumingyd'),(34,42,'com.ps.keepaccount'),(35,43,'com.livegame.wallpapertoumingyd'),(36,44,'com.livegame.wallpapertoumingyd'),(37,45,'com.noshufou.android.su'),(38,46,'com.noshufou.android.su'),(39,47,'com.livegame.wallpapertoumingyd'),(40,49,'com.livegame.wallpapertoumingyd'),(41,52,'(.*)'),(42,53,'(.*)'),(43,54,'com.livegame.wallpapertoumingyd'),(44,55,'com.livegame.wallpapertoumingyd'),(45,59,'com.ps.wordsearch.view'),(46,61,'NULL-CONSTANT'),(47,62,'com.ps.wordsearch.view'),(48,63,'com.ps.wordsearch.view'),(49,65,'com.ps.wordsearch.view'),(50,66,'com.ps.keepaccount'),(51,67,'com.livegame.wallpapertoumingyd'),(52,68,'com.ps.wordsearch.view'),(53,69,'com.livegame.wallpapertoumingyd'),(54,72,'com.ps.keepaccount'),(55,73,'com.livegame.wallpapertoumingyd'),(56,75,'com.livegame.wallpapertoumingyd'),(57,76,'com.ps.keepaccount'),(58,79,'com.ps.wordsearch.view'),(59,78,'com.ps.keepaccount'),(60,80,'com.noshufou.android.su'),(61,82,'com.noshufou.android.su'),(62,83,'(.*)'),(63,86,'(.*)'),(64,87,'(.*)'),(65,88,'(.*)'),(66,89,'com.noshufou.android.su'),(67,91,'NULL-CONSTANT'),(68,92,'com.noshufou.android.su'),(69,93,'NULL-CONSTANT'),(70,94,'com.ps.keepaccount'),(71,95,'com.ps.wordsearch.view'),(72,96,'com.ps.keepaccount'),(73,99,'com.ps.keepaccount'),(74,102,'com.ps.keepaccount'),(75,105,'com.ps.keepaccount'),(76,107,'NULL-CONSTANT'),(77,109,'com.ps.keepaccount'),(78,110,'com.ps.wordsearch.view'),(79,111,'com.ps.keepaccount'),(80,112,'com.ps.wordsearch.view'),(81,115,'com.ps.wordsearch.view'),(82,116,'com.ps.wordsearch.view'),(83,117,'com.ps.wordsearch.view'),(84,118,'com.ps.wordsearch.view'),(85,119,'com.ps.wordsearch.view'),(86,121,'(.*)'),(87,122,'com.gp.mahjongg'),(88,123,'com.gp.mahjongg'),(89,124,'com.gp.mahjongg'),(90,125,'com.gp.mahjongg'),(91,126,'com.gp.mahjongg'),(92,128,'com.gp.mahjongg'),(93,130,'(.*)'),(94,131,'(.*)'),(95,132,'com.gp.mahjongg'),(96,133,'com.gp.mahjongg'),(97,134,'com.gp.mahjongg'),(98,136,'NULL-CONSTANT'),(99,137,'NULL-CONSTANT'),(100,139,'com.noshufou.android.su'),(101,141,'com.noshufou.android.su'),(102,144,'com.gp.mahjongg'),(103,147,'com.evilsunflower.reader.evilMeiguo8'),(104,150,'com.gp.mahjongg'),(105,151,'com.gp.mahjongg'),(106,153,'com.noshufou.android.su'),(107,156,'com.noshufou.android.su'),(108,161,'com.evilsunflower.reader.evilMeiguo8'),(109,162,'com.evilsunflower.reader.evilMeiguo8'),(110,163,'com.evilsunflower.reader.evilMeiguo8'),(111,164,'com.evilsunflower.reader.evilMeiguo8'),(112,165,'com.gp.mahjongg'),(113,166,'com.gp.mahjongg'),(114,169,'com.gp.mahjongg'),(115,175,'NULL-CONSTANT'),(116,180,'com.gp.mahjongg'),(117,191,'com.android.browser'),(118,193,'com.evilsunflower.reader.evilMeiguo8'),(119,194,'com.evilsunflower.reader.evilMeiguo8');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,14,0),(5,15,0),(6,31,0),(7,32,0),(8,34,0),(9,35,0),(10,36,0),(11,37,0),(12,49,0),(13,53,0),(14,55,0),(15,56,0),(16,68,0),(17,69,0),(18,70,0),(19,71,0),(20,72,0),(21,73,0),(22,74,0),(23,75,0),(24,77,0),(25,77,0),(26,81,0),(27,82,0),(28,95,0),(29,96,0),(30,97,0),(31,96,0),(32,98,0),(33,99,0),(34,95,0),(35,100,0),(36,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,5,0,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,10,1,0),(14,11,1,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,15,1,0),(19,15,1,0),(20,16,0,0),(21,17,1,0),(22,17,1,0),(23,17,1,0),(24,17,1,0),(25,17,1,0),(26,18,0,0),(27,19,1,0),(28,19,1,0),(29,20,0,0),(30,20,0,0),(31,21,0,0),(32,22,0,0),(33,23,0,0),(34,23,0,0),(35,24,1,0),(36,24,1,0),(37,25,1,0),(38,26,1,0),(39,27,0,0),(40,28,1,0),(41,29,0,0),(42,28,1,0),(43,30,0,0),(44,31,0,0),(45,32,1,0),(46,32,1,0),(47,33,1,0),(48,34,1,0),(49,33,1,0),(50,35,1,0),(51,36,1,0),(52,35,1,0),(53,35,1,0),(54,37,0,0),(55,37,0,0),(56,38,1,0),(57,40,1,0),(58,41,1,0),(59,42,0,0),(60,43,1,0),(61,44,0,0),(62,45,1,0),(63,45,1,0),(64,46,1,0),(65,47,0,0),(66,49,0,0),(67,48,0,0),(68,50,0,0),(69,48,0,0),(70,51,1,0),(71,52,1,0),(72,53,0,0),(73,54,0,0),(74,55,1,0),(75,54,0,0),(76,56,0,0),(77,57,1,0),(78,56,0,0),(79,58,0,0),(80,59,1,0),(81,60,1,0),(82,59,1,0),(83,61,0,0),(84,62,1,0),(85,63,1,0),(86,63,1,0),(87,64,0,0),(88,63,1,0),(89,67,1,0),(90,68,1,0),(91,68,1,0),(92,67,1,0),(93,68,1,0),(94,71,0,0),(95,72,0,0),(96,74,0,0),(97,75,1,0),(98,76,1,0),(99,77,0,0),(100,76,1,0),(101,76,1,0),(102,77,0,0),(103,76,1,0),(104,76,1,0),(105,78,0,0),(106,76,1,0),(107,80,0,0),(108,81,1,0),(109,82,0,0),(110,83,0,0),(111,82,0,0),(112,84,0,0),(113,85,1,0),(114,88,1,0),(115,89,0,0),(116,90,0,0),(117,90,0,0),(118,91,0,0),(119,91,0,0),(120,93,1,0),(121,94,0,0),(122,95,1,0),(123,95,1,0),(124,97,0,0),(125,97,0,0),(126,98,0,0),(127,99,1,0),(128,100,0,0),(129,101,1,0),(130,101,1,0),(131,101,1,0),(132,102,0,0),(133,102,0,0),(134,103,0,0),(135,104,1,0),(136,104,1,0),(137,104,1,0),(138,105,1,0),(139,106,1,0),(140,107,1,0),(141,106,1,0),(142,108,1,0),(143,109,1,0),(144,110,0,0),(145,113,1,0),(146,114,1,0),(147,115,0,0),(148,116,1,0),(149,117,1,0),(150,118,0,0),(151,119,0,0),(152,121,1,0),(153,122,1,0),(154,121,1,0),(155,121,1,0),(156,122,1,0),(157,121,1,0),(158,123,1,0),(159,121,1,0),(160,121,1,0),(161,124,0,0),(162,125,0,0),(163,127,0,0),(164,128,0,0),(165,129,0,0),(166,129,0,0),(167,130,1,0),(168,131,1,0),(169,132,0,0),(170,131,1,0),(171,131,1,0),(172,133,1,0),(173,131,1,0),(174,131,1,0),(175,134,0,0),(176,131,1,0),(177,131,1,0),(178,131,1,0),(179,131,1,0),(180,135,0,0),(181,137,1,0),(182,141,1,0),(183,141,1,0),(184,141,1,0),(185,141,1,0),(186,141,1,0),(187,141,1,0),(188,141,1,0),(189,141,1,0),(190,142,1,0),(191,144,0,0),(192,146,1,0),(193,147,0,0),(194,148,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,126,57,2,NULL),(2,134,60,2,NULL),(3,151,58,2,NULL),(4,180,59,2,NULL),(5,56,56,2,NULL),(6,85,56,2,NULL),(7,86,56,2,NULL),(8,88,56,2,NULL),(9,50,56,2,NULL),(10,52,56,2,NULL),(11,53,56,2,NULL),(12,129,56,2,NULL),(13,130,56,2,NULL),(14,131,56,2,NULL),(15,140,56,2,NULL),(16,146,56,2,NULL),(17,149,56,2,NULL),(18,158,56,2,NULL),(19,190,56,2,NULL),(20,129,1,2,NULL),(21,130,1,2,NULL),(22,131,1,2,NULL),(23,129,6,2,NULL),(24,130,6,2,NULL),(25,131,6,2,NULL),(26,129,7,2,NULL),(27,130,7,2,NULL),(28,131,7,2,NULL),(29,129,14,2,NULL),(30,130,14,2,NULL),(31,131,14,2,NULL),(32,129,15,2,NULL),(33,130,15,2,NULL),(34,131,15,2,NULL),(35,129,31,2,NULL),(36,130,31,2,NULL),(37,131,31,2,NULL),(38,129,70,2,NULL),(39,130,70,2,NULL),(40,131,70,2,NULL),(41,129,71,2,NULL),(42,130,71,2,NULL),(43,131,71,2,NULL),(44,129,72,2,NULL),(45,130,72,2,NULL),(46,131,72,2,NULL),(47,129,74,2,NULL),(48,130,74,2,NULL),(49,131,74,2,NULL),(50,129,32,2,NULL),(51,130,32,2,NULL),(52,131,32,2,NULL),(53,129,35,2,NULL),(54,130,35,2,NULL),(55,131,35,2,NULL),(56,129,37,2,NULL),(57,130,37,2,NULL),(58,131,37,2,NULL),(59,129,49,2,NULL),(60,130,49,2,NULL),(61,131,49,2,NULL),(62,129,36,2,NULL),(63,130,36,2,NULL),(64,131,36,2,NULL),(65,129,53,2,NULL),(66,130,53,2,NULL),(67,131,53,2,NULL),(68,129,55,2,NULL),(69,130,55,2,NULL),(70,131,55,2,NULL),(71,129,68,2,NULL),(72,130,68,2,NULL),(73,131,68,2,NULL),(74,129,77,2,NULL),(75,130,77,2,NULL),(76,131,77,2,NULL),(77,129,82,2,NULL),(78,130,82,2,NULL),(79,131,82,2,NULL),(80,129,95,2,NULL),(81,130,95,2,NULL),(82,131,95,2,NULL),(83,129,98,2,NULL),(84,130,98,2,NULL),(85,131,98,2,NULL),(86,129,99,2,NULL),(87,130,99,2,NULL),(88,131,99,2,NULL),(89,129,100,2,NULL),(90,130,100,2,NULL),(91,131,100,2,NULL),(92,132,11,2,NULL),(93,132,27,2,NULL),(94,132,39,2,NULL),(95,132,51,2,NULL),(96,132,65,2,NULL),(97,133,11,2,NULL),(98,133,27,2,NULL),(99,133,39,2,NULL),(100,133,51,2,NULL),(101,133,65,2,NULL),(102,165,11,2,NULL),(103,165,27,2,NULL),(104,165,39,2,NULL),(105,165,51,2,NULL),(106,165,65,2,NULL),(107,166,11,2,NULL),(108,166,27,2,NULL),(109,166,39,2,NULL),(110,166,51,2,NULL),(111,166,65,2,NULL),(112,150,13,2,NULL),(113,150,30,2,NULL),(114,150,47,2,NULL),(115,150,54,2,NULL),(116,150,67,2,NULL),(117,56,68,2,NULL),(118,85,68,2,NULL),(119,86,68,2,NULL),(120,88,68,2,NULL),(121,50,68,2,NULL),(122,52,68,2,NULL),(123,53,68,2,NULL),(124,140,68,2,NULL),(125,146,68,2,NULL),(126,149,68,2,NULL),(127,158,68,2,NULL),(128,190,68,2,NULL),(129,56,15,2,NULL),(130,85,15,2,NULL),(131,86,15,2,NULL),(132,88,15,2,NULL),(133,50,15,2,NULL),(134,52,15,2,NULL),(135,53,15,2,NULL),(136,140,15,2,NULL),(137,146,15,2,NULL),(138,149,15,2,NULL),(139,158,15,2,NULL),(140,190,15,2,NULL),(141,39,25,2,NULL),(142,56,1,2,NULL),(143,56,6,2,NULL),(144,56,7,2,NULL),(145,56,14,2,NULL),(146,56,31,2,NULL),(147,56,70,2,NULL),(148,56,71,2,NULL),(149,56,72,2,NULL),(150,56,74,2,NULL),(151,56,32,2,NULL),(152,56,35,2,NULL),(153,56,37,2,NULL),(154,56,49,2,NULL),(155,56,36,2,NULL),(156,56,53,2,NULL),(157,56,55,2,NULL),(158,56,77,2,NULL),(159,56,82,2,NULL),(160,56,95,2,NULL),(161,56,98,2,NULL),(162,56,99,2,NULL),(163,56,100,2,NULL),(164,66,25,2,NULL),(165,105,23,2,NULL),(166,85,1,2,NULL),(167,86,1,2,NULL),(168,88,1,2,NULL),(169,85,6,2,NULL),(170,86,6,2,NULL),(171,88,6,2,NULL),(172,85,7,2,NULL),(173,86,7,2,NULL),(174,88,7,2,NULL),(175,85,14,2,NULL),(176,86,14,2,NULL),(177,88,14,2,NULL),(178,85,31,2,NULL),(179,86,31,2,NULL),(180,88,31,2,NULL),(181,85,70,2,NULL),(182,86,70,2,NULL),(183,88,70,2,NULL),(184,85,71,2,NULL),(185,86,71,2,NULL),(186,88,71,2,NULL),(187,85,72,2,NULL),(188,86,72,2,NULL),(189,88,72,2,NULL),(190,85,74,2,NULL),(191,86,74,2,NULL),(192,88,74,2,NULL),(193,85,32,2,NULL),(194,86,32,2,NULL),(195,88,32,2,NULL),(196,85,35,2,NULL),(197,86,35,2,NULL),(198,88,35,2,NULL),(199,85,37,2,NULL),(200,86,37,2,NULL),(201,88,37,2,NULL),(202,85,49,2,NULL),(203,86,49,2,NULL),(204,88,49,2,NULL),(205,85,36,2,NULL),(206,86,36,2,NULL),(207,88,36,2,NULL),(208,85,53,2,NULL),(209,86,53,2,NULL),(210,88,53,2,NULL),(211,85,55,2,NULL),(212,86,55,2,NULL),(213,88,55,2,NULL),(214,85,77,2,NULL),(215,86,77,2,NULL),(216,88,77,2,NULL),(217,85,82,2,NULL),(218,86,82,2,NULL),(219,88,82,2,NULL),(220,85,95,2,NULL),(221,86,95,2,NULL),(222,88,95,2,NULL),(223,85,98,2,NULL),(224,86,98,2,NULL),(225,88,98,2,NULL),(226,85,99,2,NULL),(227,86,99,2,NULL),(228,88,99,2,NULL),(229,85,100,2,NULL),(230,86,100,2,NULL),(231,88,100,2,NULL),(232,76,11,2,NULL),(233,76,27,2,NULL),(234,76,39,2,NULL),(235,76,51,2,NULL),(236,76,65,2,NULL),(237,78,11,2,NULL),(238,78,27,2,NULL),(239,78,39,2,NULL),(240,78,51,2,NULL),(241,78,65,2,NULL),(242,109,11,2,NULL),(243,109,27,2,NULL),(244,109,39,2,NULL),(245,109,51,2,NULL),(246,109,65,2,NULL),(247,111,11,2,NULL),(248,111,27,2,NULL),(249,111,39,2,NULL),(250,111,51,2,NULL),(251,111,65,2,NULL),(252,94,13,2,NULL),(253,94,30,2,NULL),(254,94,47,2,NULL),(255,94,54,2,NULL),(256,94,67,2,NULL),(257,50,31,2,NULL),(258,52,31,2,NULL),(259,53,31,2,NULL),(260,140,31,2,NULL),(261,146,31,2,NULL),(262,149,31,2,NULL),(263,158,31,2,NULL),(264,190,31,2,NULL),(265,50,70,2,NULL),(266,52,70,2,NULL),(267,53,70,2,NULL),(268,140,70,2,NULL),(269,146,70,2,NULL),(270,149,70,2,NULL),(271,158,70,2,NULL),(272,190,70,2,NULL),(273,50,71,2,NULL),(274,52,71,2,NULL),(275,53,71,2,NULL),(276,140,71,2,NULL),(277,146,71,2,NULL),(278,149,71,2,NULL),(279,158,71,2,NULL),(280,190,71,2,NULL),(281,50,72,2,NULL),(282,52,72,2,NULL),(283,53,72,2,NULL),(284,140,72,2,NULL),(285,146,72,2,NULL),(286,149,72,2,NULL),(287,158,72,2,NULL),(288,190,72,2,NULL),(289,50,74,2,NULL),(290,52,74,2,NULL),(291,53,74,2,NULL),(292,140,74,2,NULL),(293,146,74,2,NULL),(294,149,74,2,NULL),(295,158,74,2,NULL),(296,190,74,2,NULL),(297,112,37,2,NULL),(298,115,35,2,NULL),(299,97,34,2,NULL),(300,50,32,2,NULL),(301,52,32,2,NULL),(302,53,32,2,NULL),(303,140,32,2,NULL),(304,146,32,2,NULL),(305,149,32,2,NULL),(306,158,32,2,NULL),(307,190,32,2,NULL),(308,50,35,2,NULL),(309,52,35,2,NULL),(310,53,35,2,NULL),(311,140,35,2,NULL),(312,146,35,2,NULL),(313,149,35,2,NULL),(314,158,35,2,NULL),(315,190,35,2,NULL),(316,50,37,2,NULL),(317,52,37,2,NULL),(318,53,37,2,NULL),(319,140,37,2,NULL),(320,146,37,2,NULL),(321,149,37,2,NULL),(322,158,37,2,NULL),(323,190,37,2,NULL),(324,116,11,2,NULL),(325,116,27,2,NULL),(326,116,39,2,NULL),(327,116,51,2,NULL),(328,116,65,2,NULL),(329,117,11,2,NULL),(330,117,27,2,NULL),(331,117,39,2,NULL),(332,117,51,2,NULL),(333,117,65,2,NULL),(334,118,11,2,NULL),(335,118,27,2,NULL),(336,118,39,2,NULL),(337,118,51,2,NULL),(338,118,65,2,NULL),(339,119,11,2,NULL),(340,119,27,2,NULL),(341,119,39,2,NULL),(342,119,51,2,NULL),(343,119,65,2,NULL),(344,59,13,2,NULL),(345,59,30,2,NULL),(346,59,47,2,NULL),(347,59,54,2,NULL),(348,59,67,2,NULL),(349,50,49,2,NULL),(350,52,49,2,NULL),(351,53,49,2,NULL),(352,140,49,2,NULL),(353,146,49,2,NULL),(354,149,49,2,NULL),(355,158,49,2,NULL),(356,190,49,2,NULL),(357,12,9,2,NULL),(358,15,8,2,NULL),(359,20,9,2,NULL),(360,26,9,2,NULL),(361,31,9,2,NULL),(362,50,7,2,NULL),(363,52,7,2,NULL),(364,53,7,2,NULL),(365,140,7,2,NULL),(366,146,7,2,NULL),(367,149,7,2,NULL),(368,158,7,2,NULL),(369,190,7,2,NULL),(370,29,11,2,NULL),(371,29,27,2,NULL),(372,29,39,2,NULL),(373,29,51,2,NULL),(374,29,65,2,NULL),(375,30,11,2,NULL),(376,30,27,2,NULL),(377,30,39,2,NULL),(378,30,51,2,NULL),(379,30,65,2,NULL),(380,33,11,2,NULL),(381,33,27,2,NULL),(382,33,39,2,NULL),(383,33,51,2,NULL),(384,33,65,2,NULL),(385,34,11,2,NULL),(386,34,27,2,NULL),(387,34,39,2,NULL),(388,34,51,2,NULL),(389,34,65,2,NULL),(390,11,13,2,NULL),(391,11,30,2,NULL),(392,11,47,2,NULL),(393,11,54,2,NULL),(394,11,67,2,NULL),(395,50,14,2,NULL),(396,52,14,2,NULL),(397,53,14,2,NULL),(398,140,14,2,NULL),(399,146,14,2,NULL),(400,149,14,2,NULL),(401,158,14,2,NULL),(402,190,14,2,NULL),(403,5,3,2,NULL),(404,50,1,2,NULL),(405,52,1,2,NULL),(406,53,1,2,NULL),(407,140,1,2,NULL),(408,146,1,2,NULL),(409,149,1,2,NULL),(410,158,1,2,NULL),(411,190,1,2,NULL),(412,4,4,2,NULL),(413,6,2,2,NULL),(414,7,2,2,NULL),(415,9,2,2,NULL),(416,10,2,2,NULL),(417,1,5,2,NULL),(418,50,6,2,NULL),(419,52,6,2,NULL),(420,53,6,2,NULL),(421,140,6,2,NULL),(422,146,6,2,NULL),(423,149,6,2,NULL),(424,158,6,2,NULL),(425,190,6,2,NULL),(426,50,36,2,NULL),(427,52,36,2,NULL),(428,53,36,2,NULL),(429,162,77,2,NULL),(430,140,36,2,NULL),(431,163,77,2,NULL),(432,146,36,2,NULL),(433,50,77,2,NULL),(434,149,36,2,NULL),(435,52,77,2,NULL),(436,158,36,2,NULL),(437,53,77,2,NULL),(438,190,36,2,NULL),(439,140,77,2,NULL),(440,50,53,2,NULL),(441,146,77,2,NULL),(442,52,53,2,NULL),(443,149,77,2,NULL),(444,53,53,2,NULL),(445,158,77,2,NULL),(446,50,55,2,NULL),(447,190,77,2,NULL),(448,52,55,2,NULL),(449,193,84,2,NULL),(450,53,55,2,NULL),(451,50,82,2,NULL),(452,52,82,2,NULL),(453,53,82,2,NULL),(454,50,95,2,NULL),(455,140,82,2,NULL),(456,52,95,2,NULL),(457,146,82,2,NULL),(458,53,95,2,NULL),(459,149,82,2,NULL),(460,50,98,2,NULL),(461,158,82,2,NULL),(462,52,98,2,NULL),(463,190,82,2,NULL),(464,53,98,2,NULL),(465,147,88,2,NULL),(466,50,99,2,NULL),(467,164,88,2,NULL),(468,52,99,2,NULL),(469,53,99,2,NULL),(470,140,53,2,NULL),(471,50,100,2,NULL),(472,146,53,2,NULL),(473,52,100,2,NULL),(474,149,53,2,NULL),(475,53,100,2,NULL),(476,158,53,2,NULL),(477,190,53,2,NULL),(478,140,55,2,NULL),(479,54,11,2,NULL),(480,146,55,2,NULL),(481,54,27,2,NULL),(482,149,55,2,NULL),(483,54,39,2,NULL),(484,158,55,2,NULL),(485,54,51,2,NULL),(486,190,55,2,NULL),(487,54,65,2,NULL),(488,140,95,2,NULL),(489,55,11,2,NULL),(490,146,95,2,NULL),(491,55,27,2,NULL),(492,149,95,2,NULL),(493,55,39,2,NULL),(494,158,95,2,NULL),(495,55,51,2,NULL),(496,190,95,2,NULL),(497,55,65,2,NULL),(498,140,98,2,NULL),(499,73,11,2,NULL),(500,146,98,2,NULL),(501,73,27,2,NULL),(502,149,98,2,NULL),(503,73,39,2,NULL),(504,158,98,2,NULL),(505,73,51,2,NULL),(506,190,98,2,NULL),(507,73,65,2,NULL),(508,140,99,2,NULL),(509,75,11,2,NULL),(510,146,99,2,NULL),(511,75,27,2,NULL),(512,149,99,2,NULL),(513,75,39,2,NULL),(514,158,99,2,NULL),(515,75,51,2,NULL),(516,190,99,2,NULL),(517,75,65,2,NULL),(518,140,100,2,NULL),(519,41,13,2,NULL),(520,146,100,2,NULL),(521,41,30,2,NULL),(522,149,100,2,NULL),(523,41,47,2,NULL),(524,158,100,2,NULL),(525,41,54,2,NULL),(526,190,100,2,NULL),(527,41,67,2,NULL),(528,161,94,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ps.wordsearch.provider.words');
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
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.SET_ORIENTATION'),(19,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `Providers` VALUES (1,52,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'http://www.brendandahl.com/wordsearch/donate',NULL,NULL,NULL),(13,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(15,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=org.openintents.filemanager',NULL,NULL,NULL),(20,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.dahl.brendan.donate',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://mms/',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(52,NULL,NULL,'content://mms/',NULL,NULL,NULL),(53,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(54,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(55,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(56,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,39,6),(2,73,13),(3,87,20),(4,96,23),(5,111,27),(6,120,32),(7,126,39),(8,136,51),(9,138,52),(10,138,53),(11,140,54),(12,140,55),(13,140,56),(14,145,59),(15,149,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,3),(12,2,4),(13,2,5),(14,2,8),(15,2,9),(16,2,10),(17,3,1),(18,3,2),(19,3,3),(20,3,4),(21,3,5),(22,3,8),(23,3,9),(24,3,10),(25,3,11),(26,3,12),(27,3,13),(28,3,14),(29,4,16),(30,4,1),(31,4,3),(32,4,4),(33,4,5),(34,4,6),(35,4,8),(36,4,9),(37,4,10),(38,4,15),(39,5,1),(40,5,3),(41,5,4),(42,5,5),(43,5,6),(44,5,8),(45,5,9),(46,5,10),(47,5,11),(48,5,13),(49,6,1),(50,6,3),(51,6,4),(52,6,5),(53,6,6),(54,6,8),(55,6,9),(56,6,10),(57,6,11),(58,6,13),(59,6,15),(60,6,17),(61,6,16),(62,7,1),(63,7,19),(64,7,3),(65,7,4),(66,7,20),(67,7,6),(68,7,8),(69,7,9),(70,7,12),(71,7,13),(72,7,14);
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

-- Dump completed on 2015-10-12  3:29:32
