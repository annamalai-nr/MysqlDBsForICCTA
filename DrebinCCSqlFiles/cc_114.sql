-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_114
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(18,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(17,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(13,'android.intent.action.SEARCH'),(19,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(12,'android.service.wallpaper.WallpaperService'),(16,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'delete_history_account'),(11,'ps.android.view.tabbar.changeTab'),(10,'ps.keepaccount.activity.delteTodayAccount'),(8,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.allen.txtbjyh',1),(2,'com.ps.keepaccount',1),(3,'com.safett.chess',5),(4,'com.alan.weather',23),(5,'com.gp.zoo',3),(6,'com.livegame.rss',6),(7,'com.evilsunflower.reader.evilQichang',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.txtbjyh.txtReader'),(2,1,'com.google.ssearch.Dialog'),(3,1,'com.allen.txtbjyh.ViewFileAct_Float'),(4,1,'com.allen.txtbjyh.Settings'),(5,1,'com.google.ssearch.SearchService'),(6,1,'com.google.ssearch.Receiver'),(7,2,'com.ps.keepaccount.Main'),(8,2,'com.ps.keepaccount.tabbar.ButtonDemo'),(9,2,'com.ps.keepaccount.activity.QueryAccount'),(10,2,'com.ps.keepaccount.activity.TodayAccount'),(11,2,'com.ps.keepaccount.activity.HistoryAccount'),(12,2,'com.ps.keepaccount.activity.WriteAccount'),(13,2,'com.ps.keepaccount.activity.TypeAccount'),(14,2,'com.ps.keepaccount.activity.DemoApp'),(15,2,'com.ps.keepaccount.activity.TypeAccountList'),(16,2,'com.ps.keepaccount.dialog.CanlendarDialog'),(17,2,'com.ps.keepaccount.dialog.DateSelectorDialog'),(18,2,'org.achartengine.GraphicalActivity'),(19,2,'com.waps.OffersWebView'),(20,3,'com.safett.chess.ChessActivity'),(21,3,'cn.domob.android.ads.DomobActivity'),(22,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,3,'com.safett.chess.ShowTips'),(24,3,'com.safett.chess.UpdateService'),(25,3,'com.safett.chess.Receiver'),(26,4,'com.alan.weather.WeatherForecast'),(27,4,'com.google.ads.AdActivity'),(28,4,'com.vpon.adon.android.WebInApp'),(29,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(30,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,4,'com.waps.OffersWebView'),(32,4,'com.google.update.Dialog'),(33,4,'com.google.update.UpdateService'),(34,4,'com.google.update.Receiver'),(35,5,'com.gp.zoo.SplashActivity'),(36,5,'com.gp.zoo.MainMenuActivity'),(37,5,'com.gp.zoo.CharacterCreationActivity'),(38,5,'com.gp.zoo.MainMapActivity'),(39,5,'com.gp.zoo.HallActivity'),(40,5,'com.gp.zoo.ExamActivity'),(41,5,'com.gp.zoo.StoreActivity'),(42,5,'com.gp.zoo.StoreDetailActivity'),(43,5,'com.gp.zoo.BagActivity'),(44,5,'com.gp.zoo.SettingsActivity'),(45,5,'com.gp.zoo.CreditActivity'),(46,5,'com.gp.zoo.BadgeActivity'),(47,5,'com.gp.zoo.PhotoActivity'),(48,5,'com.gp.zoo.CircusActivity'),(49,5,'com.gp.zoo.HelpActivity'),(50,5,'cn.domob.android.ads.DomobActivity'),(51,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,5,'com.google.update.Dialog'),(54,5,'com.google.update.UpdateService'),(55,5,'com.google.update.Receiver'),(56,1,'com.google.ssearch.Dialog$1'),(57,1,'com.google.ssearch.SearchService$MyThread'),(58,2,'com.waps.o'),(59,2,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(60,2,'com.waps.m'),(61,2,'com.ps.keepaccount.activity.QueryAccount$1'),(62,6,'com.livegame.rss.ShowStreams'),(63,6,'com.livegame.rss.menu.Settings'),(64,6,'com.livegame.rss.ClearCache'),(65,6,'com.livegame.rss.settings.ManageFeeds'),(66,6,'com.livegame.rss.settings.DirectoryBrowser'),(67,6,'com.livegame.rss.settings.SourceSelector'),(68,6,'com.livegame.rss.settings.FlickrBrowser'),(69,2,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(70,6,'com.livegame.rss.settings.PicasaBrowser'),(71,6,'com.livegame.rss.parser.facebook.FacebookAuth'),(72,6,'com.livegame.rss.settings.FacebookBrowser'),(73,6,'com.livegame.rss.parser.facebook.WebAuth'),(74,6,'com.livegame.rss.parser.facebook.FacebookAlbumBrowser'),(75,2,'com.ps.keepaccount.activity.WriteAccount$1'),(76,6,'com.livegame.rss.parser.facebook.FacebookFriendsBrowser'),(77,6,'com.livegame.rss.parser.facebook.FacebookFriendView'),(78,6,'com.livegame.rss.flickr.WebAuth'),(79,6,'com.livegame.rss.parser.flickr.FlickrAlbumBrowser'),(80,2,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(81,6,'com.livegame.rss.parser.picasa.PicasaWebAuth'),(82,6,'com.livegame.rss.parser.picasa.PicasaAlbumBrowser'),(83,6,'com.livegame.rss.parser.picasa.PicasaUserView'),(84,2,'com.waps.k'),(85,6,'com.livegame.rss.settings.About'),(86,6,'com.livegame.rss.menu.WallpaperSettings'),(87,6,'com.livegame.rss.menu.ApplicationFeedManagerLauncher'),(88,3,'cn.domob.android.ads.e'),(89,6,'com.livegame.rss.menu.WallpaperFeedManagerLauncher'),(90,2,'com.waps.AppConnect'),(91,6,'com.livegame.rss.settings.PhotobucketBrowser'),(92,6,'com.livegame.rss.parser.photobucket.PhotobucketShowUser'),(93,6,'com.google.ads.AdActivity'),(94,3,'cn.domob.android.a.a$a'),(95,6,'com.vpon.adon.android.WebInApp'),(96,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(97,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(98,6,'com.waps.OffersWebView'),(99,3,'com.safett.chess.ShowTips$1'),(100,6,'com.google.update.Dialog'),(101,6,'com.livegame.rss.Wallpaper'),(102,6,'com.google.update.UpdateService'),(103,6,'com.google.update.Receiver'),(104,3,'cn.domob.android.ads.o$5'),(105,2,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(106,4,'com.waps.aa'),(107,3,'cn.domob.android.ads.DomobAdManager'),(108,4,'com.google.update.Dialog$1'),(109,3,'cn.domob.android.ads.o'),(110,4,'com.google.update.UpdateService$AA'),(111,3,'cn.domob.android.ads.g$1'),(112,4,'com.waps.q'),(113,4,'com.waps.ac'),(114,4,'com.google.update.Dialog$2'),(115,4,'com.waps.z'),(116,4,'com.waps.o'),(117,7,'com.evilsunflower.reader.evilQichang.BugReportActivity'),(118,7,'com.evilsunflower.reader.FBReader'),(119,7,'com.evilsunflower.reader.CancelActivity'),(120,7,'com.evilsunflower.reader.image.ImageViewActivity'),(121,7,'com.evilsunflower.reader.TOCActivity'),(122,7,'com.evilsunflower.reader.BookmarksActivity'),(123,7,'com.evilsunflower.reader.BookmarkEditActivity'),(124,7,'com.evilsunflower.reader.Starter'),(125,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(126,7,'com.vpon.adon.android.WebInApp'),(127,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(128,7,'com.millennialmedia.android.VideoPlayer'),(129,7,'net.youmi.android.AdActivity'),(130,7,'com.google.ads.AdActivity'),(131,7,'cn.domob.android.ads.DomobActivity'),(132,7,'com.baidu.AppActivity'),(133,7,'com.guohead.sdk.GuoheAdActivity'),(134,6,'com.waps.k'),(135,6,'com.livegame.rss.flickr.FlickrFeeder'),(136,6,'com.google.update.Dialog$2'),(137,6,'com.livegame.rss.settings.ManageFeeds$AddClickListener'),(138,6,'com.google.update.UpdateService$MyThread'),(139,6,'com.livegame.rss.parser.facebook.FacebookFeeder'),(140,6,'com.livegame.rss.parser.picasa.PicasaFeeder'),(141,6,'com.waps.m'),(142,6,'com.google.update.Dialog$1'),(143,6,'com.ju6.a'),(144,6,'com.waps.AppConnect'),(145,7,'com.ju6.c'),(146,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(147,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(148,7,'com.millennialmedia.android.MillennialMediaView'),(149,7,'com.ju6.mms.pdu.PduPersister'),(150,7,'cn.domob.android.ads.o'),(151,7,'cn.domob.android.ads.DomobAdManager'),(152,7,'net.youmi.android.eo'),(153,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(154,7,'com.adwo.adsdk.M'),(155,7,'cn.domob.android.ads.e'),(156,7,'net.youmi.android.t'),(157,7,'com.ju6.mms.util.SqliteWrapper'),(158,7,'com.baidu.as'),(159,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(160,7,'cn.domob.android.a.a$a'),(161,7,'cn.domob.android.ads.g$1'),(162,7,'net.youmi.android.be'),(163,7,'cn.domob.android.ads.o$5'),(164,7,'com.baidu.al'),(165,7,'com.madhouse.android.ads._');
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'/sdcard/txtbooks/bjyh.txt'),(2,2,'MSG'),(3,3,'book1'),(4,2,'TYPEdsada'),(5,13,'startDate'),(6,9,'startDate'),(7,7,'CLIENT_PACKAGE'),(8,14,'CLIENT_PACKAGE'),(9,18,'chart'),(10,13,'endDate'),(11,19,'URL'),(12,7,'DEVICE_ID'),(13,14,'DEVICE_ID'),(14,9,'endDate'),(15,18,'title'),(16,19,'isFinshClose'),(17,19,'CLIENT_PACKAGE'),(18,7,'WAPS_ID'),(19,14,'WAPS_ID'),(20,19,'Offers_URL'),(21,23,'MM'),(22,22,'DOMOB_PID'),(23,22,'DOMOB_ALLOW_LOCATION'),(24,15,'type'),(25,22,'overlayTitle'),(26,15,'endDate'),(27,22,'shouldEnableBottomBar'),(28,7,'APP_ID'),(29,21,'appName'),(30,14,'APP_ID'),(31,22,'shouldResizeOverlay'),(32,19,'USER_ID'),(33,19,'URL_PARAMS'),(34,29,'Adwo_PID'),(35,31,'Notify_Url_Params'),(36,7,'WAPS_PID'),(37,26,'UMENG_CHANNEL'),(38,14,'WAPS_PID'),(39,26,'WAPS_ID'),(40,15,'startDate'),(41,31,'WAPS_ID'),(42,30,'shouldResizeOverlay'),(43,31,'UrlPath'),(44,22,'overlayTransition'),(45,22,'url'),(46,21,'actType'),(47,22,'transitionTime'),(48,22,'shouldShowBottomBar'),(49,22,'shouldMakeOverlayTransparent'),(50,24,'SAFE_START'),(51,24,'SAFE_PID'),(52,22,'DOMOB_TEST_MODE'),(53,26,'APP_ID'),(54,31,'APP_ID'),(55,31,'CLIENT_PACKAGE'),(56,30,'overlayTransition'),(57,22,'shouldShowTitlebar'),(58,21,'appId'),(59,31,'URL_PARAMS'),(60,31,'isFinshClose'),(61,30,'shouldEnableBottomBar'),(62,31,'Offers_URL'),(63,33,'ST_MY_PID'),(64,26,'WAPS_PID'),(65,31,'WAPS_PID'),(66,32,'TYPEdsada'),(67,30,'shouldMakeOverlayTransparent'),(68,30,'overlayTitle'),(69,31,'SHWO_FLAG'),(70,31,'ACTIVITY_FLAG'),(71,31,'USER_ID'),(72,26,'DEVICE_ID'),(73,31,'DEVICE_ID'),(74,32,'MSG'),(75,29,'isTestMode'),(76,30,'url'),(77,31,'URL'),(78,31,'offers_webview_tag'),(79,31,'Notify_Id'),(80,30,'shouldShowBottomBar'),(81,28,'url'),(82,28,'adWidth'),(83,30,'shouldShowTitlebar'),(84,26,'CLIENT_PACKAGE'),(85,30,'transitionTime'),(86,26,'UMENG_APPKEY'),(87,33,'ST_START_DELAY'),(88,88,'Adwo_PID'),(89,59,'WAPS_PID'),(90,58,'WAPS_PID'),(91,89,'shouldShowBottomBar'),(92,89,'shouldResizeOverlay'),(93,61,'EXTRAS'),(94,89,'shouldEnableBottomBar'),(95,93,'ST_START_DELAY'),(96,90,'isFinshClose'),(97,61,'PATH'),(98,86,'action'),(99,90,'URL_PARAMS'),(100,90,'USER_ID'),(101,91,'TYPEdsada'),(102,86,'params'),(103,78,'ID'),(104,85,'user'),(105,69,'URL'),(106,72,'ID'),(107,87,'url'),(108,77,'OWNER'),(109,70,'ID'),(110,87,'adWidth'),(111,59,'WAPS_ID'),(112,58,'WAPS_ID'),(113,90,'Offers_URL'),(114,90,'CLIENT_PACKAGE'),(115,61,'SHARED_PREFS_NAME'),(116,89,'overlayTransition'),(117,89,'transitionTime'),(118,90,'URL'),(119,59,'CLIENT_PACKAGE'),(120,58,'CLIENT_PACKAGE'),(121,59,'DEVICE_ID'),(122,58,'DEVICE_ID'),(123,89,'url'),(124,61,'TYPE'),(125,59,'APP_ID'),(126,58,'APP_ID'),(127,76,'URL'),(128,88,'isTestMode'),(129,74,'OWNER'),(130,89,'shouldMakeOverlayTransparent'),(131,72,'Name'),(132,61,'NAME'),(133,89,'overlayTitle'),(134,86,'com.google.ads.AdOpener'),(135,73,'URL'),(136,91,'MSG'),(137,93,'ST_MY_PID'),(138,89,'shouldShowTitlebar'),(139,108,'DOMOB_PID'),(140,102,'DOMOB_PID'),(141,107,'DOMOB_PID'),(142,98,'DOMOB_PID'),(143,105,'DOMOB_PID'),(144,109,'DOMOB_PID'),(145,105,'shouldResizeOverlay'),(146,112,'clklogurl'),(147,105,'overlayTransition'),(148,102,'query'),(149,107,'overlayTransition'),(150,107,'transitionTime'),(151,107,'shouldResizeOverlay'),(152,108,'cached'),(153,109,'172C94EDC717477aBF600D7898A64A8E'),(154,107,'overlayTitle'),(155,108,'videoAd'),(156,108,'videoPosition'),(157,107,'shouldShowBottomBar'),(158,108,'DOMOB_TEST_MODE'),(159,102,'DOMOB_TEST_MODE'),(160,107,'DOMOB_TEST_MODE'),(161,98,'DOMOB_TEST_MODE'),(162,105,'DOMOB_TEST_MODE'),(163,109,'DOMOB_TEST_MODE'),(164,105,'transitionTime'),(165,107,'shouldEnableBottomBar'),(166,105,'overlayTitle'),(167,109,'D50EF1926ADD471892E72BCE6D7E032C'),(168,108,'DOMOB_ALLOW_LOCATION'),(169,102,'DOMOB_ALLOW_LOCATION'),(170,107,'DOMOB_ALLOW_LOCATION'),(171,98,'DOMOB_ALLOW_LOCATION'),(172,105,'DOMOB_ALLOW_LOCATION'),(173,109,'DOMOB_ALLOW_LOCATION'),(174,106,'adWidth'),(175,108,'logSet'),(176,109,'EB80F3291A8E469c962CA133BDC549D7'),(177,105,'shouldShowBottomBar'),(178,106,'url'),(179,112,'tit'),(180,109,'D780FBF4215247bcBB1AC0AD33C474FE'),(181,105,'shouldEnableBottomBar'),(182,105,'url'),(183,98,'Adwo_PID'),(184,107,'shouldMakeOverlayTransparent'),(185,98,'GH_APPKEY'),(186,107,'canAccelerate'),(187,112,'surl'),(188,113,'link'),(189,111,'actType'),(190,111,'appId'),(191,108,'videoCompleted'),(192,105,'shouldMakeOverlayTransparent'),(193,105,'shouldShowTitlebar'),(194,107,'cachedAdView'),(195,108,'isCachedAd'),(196,108,'shouldShowBottomBar'),(197,112,'curl'),(198,112,'limg'),(199,108,'adName'),(200,98,'query'),(201,111,'appName'),(202,107,'shouldShowTitlebar'),(203,98,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(204,98,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,60,'r',1,NULL,NULL),(58,62,'a',1,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'a',0,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'r',1,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'a',1,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'a',0,NULL,NULL),(70,74,'a',0,NULL,NULL),(71,76,'a',0,NULL,NULL),(72,77,'a',0,NULL,NULL),(73,78,'a',0,NULL,NULL),(74,79,'a',0,NULL,NULL),(75,80,'r',1,NULL,NULL),(76,81,'a',0,NULL,NULL),(77,82,'a',0,NULL,NULL),(78,83,'a',0,NULL,NULL),(79,85,'a',0,NULL,NULL),(80,86,'a',1,NULL,NULL),(81,87,'a',0,NULL,NULL),(82,88,'r',1,NULL,NULL),(83,89,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,92,'a',0,NULL,NULL),(86,93,'a',0,NULL,NULL),(87,95,'a',0,NULL,NULL),(88,96,'a',0,NULL,NULL),(89,97,'a',0,NULL,NULL),(90,98,'a',0,NULL,NULL),(91,100,'a',0,NULL,NULL),(92,101,'s',1,21,NULL),(93,102,'s',0,NULL,NULL),(94,103,'r',1,NULL,NULL),(95,105,'r',1,NULL,NULL),(96,112,'r',1,NULL,NULL),(97,117,'a',0,NULL,NULL),(98,118,'a',1,NULL,NULL),(99,119,'a',0,NULL,NULL),(100,120,'a',0,NULL,NULL),(101,121,'a',0,NULL,NULL),(102,122,'a',1,NULL,NULL),(103,123,'a',0,NULL,NULL),(104,124,'a',0,NULL,NULL),(105,125,'a',0,NULL,NULL),(106,126,'a',0,NULL,NULL),(107,127,'a',0,NULL,NULL),(108,128,'a',0,NULL,NULL),(109,129,'a',0,NULL,NULL),(110,130,'a',0,NULL,NULL),(111,131,'a',0,NULL,NULL),(112,132,'a',0,NULL,NULL),(113,133,'a',0,NULL,NULL),(114,141,'r',1,NULL,NULL),(115,152,'r',1,NULL,NULL),(116,153,'r',1,NULL,NULL),(117,154,'r',1,NULL,NULL),(118,155,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,2),(3,3,5),(4,4,5),(5,5,1),(6,6,5),(7,7,3),(8,8,14),(9,9,14),(10,10,9),(11,11,9),(12,12,13),(13,13,14),(14,14,13),(15,15,12),(16,16,19),(17,17,14),(18,18,22),(19,19,14),(20,20,23),(21,21,9),(22,22,22),(23,23,9),(24,24,34),(25,25,31),(26,26,22),(27,27,32),(28,28,22),(29,29,25),(30,30,33),(31,31,22),(32,32,31),(33,33,31),(34,34,31),(35,35,32),(36,36,31),(37,37,33),(38,38,33),(39,39,31),(40,40,93),(41,41,63),(42,42,83),(43,43,64),(44,44,72),(45,45,93),(46,46,90),(47,47,64),(48,48,94),(49,49,68),(50,50,91),(51,51,61),(52,52,63),(53,53,63),(54,54,63),(55,55,58),(56,56,58),(57,57,93),(58,58,68),(59,59,66),(60,60,84),(61,61,86),(62,62,66),(63,63,78),(64,64,58),(65,65,91),(66,66,93),(67,67,81),(68,68,66),(69,69,63),(70,70,58),(71,71,71),(72,72,58),(73,73,68),(74,74,98),(75,75,98),(76,75,102),(77,75,109),(78,76,102),(79,76,98),(80,76,109),(81,77,98),(82,78,98),(83,79,98),(84,79,102),(85,79,108),(86,79,109),(87,80,102),(88,80,98),(89,80,109),(90,80,108),(91,81,102),(92,81,98),(93,81,108),(94,81,109),(95,82,98),(96,83,109),(97,83,108),(98,83,107),(99,83,105),(100,83,102),(101,83,98),(102,84,108),(103,84,107),(104,84,109),(105,84,98),(106,84,102),(107,84,105),(108,85,109),(109,85,108),(110,85,98),(111,85,102),(112,86,109),(113,87,108),(114,87,109),(115,87,102),(116,87,98),(117,88,102),(118,89,98),(119,90,102),(120,90,98),(121,90,109),(122,91,109),(123,92,102),(124,92,109),(125,92,108),(126,92,98),(127,93,102),(128,93,109),(129,93,108),(130,93,98),(131,94,98),(132,95,98),(133,96,98),(134,96,102),(135,96,109),(136,96,108),(137,97,98),(138,97,102),(139,97,105),(140,97,107),(141,97,109),(142,97,108),(143,98,98),(144,98,102),(145,98,105),(146,98,108),(147,98,107),(148,98,109),(149,99,109),(150,100,98),(151,101,107),(152,101,105),(153,101,98),(154,101,109),(155,101,108),(156,102,109),(157,102,102),(158,102,98),(159,103,98),(160,104,98),(161,104,102),(162,104,109),(163,105,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,56,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(3,5,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(4,57,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(5,1,'<com.allen.txtbjyh.txtReader: void onClick(android.view.View)>',10,'a',NULL),(6,5,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(7,3,'<com.allen.txtbjyh.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(8,58,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(9,58,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(10,9,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(11,61,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(12,13,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(13,58,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(14,13,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(15,75,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(16,84,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(17,90,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(18,94,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(19,90,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(20,99,'<com.safett.chess.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,61,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(22,104,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,9,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(24,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(25,106,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(26,107,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(27,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,109,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(29,25,'<com.safett.chess.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,110,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(31,111,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(32,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(33,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(34,113,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(35,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(36,115,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(38,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(39,116,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,102,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,67,'<com.livegame.rss.settings.SourceSelector: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(42,89,'<com.livegame.rss.menu.WallpaperFeedManagerLauncher: void onCreate(android.os.Bundle)>',6,'a',NULL),(43,68,'<com.livegame.rss.settings.FlickrBrowser: void showMyAlbums()>',3,'a',NULL),(44,77,'<com.livegame.rss.parser.facebook.FacebookFriendView: void showAlbums()>',5,'a',NULL),(45,102,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(46,134,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(47,135,'<com.livegame.rss.flickr.FlickrFeeder: void authorize(android.content.Context)>',16,'a',NULL),(48,103,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,72,'<com.livegame.rss.settings.FacebookBrowser: void showMyAlbums()>',4,'a',NULL),(50,136,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,137,'<com.livegame.rss.settings.ManageFeeds$AddClickListener: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(52,67,'<com.livegame.rss.settings.SourceSelector: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',22,'a',NULL),(53,67,'<com.livegame.rss.settings.SourceSelector: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',10,'a',NULL),(54,67,'<com.livegame.rss.settings.SourceSelector: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',26,'a',NULL),(55,62,'<com.livegame.rss.ShowStreams: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(56,62,'<com.livegame.rss.ShowStreams: void showSettings()>',3,'a',NULL),(57,138,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(58,139,'<com.livegame.rss.parser.facebook.FacebookFeeder: void getCode(android.content.Context)>',6,'a',NULL),(59,140,'<com.livegame.rss.parser.picasa.PicasaFeeder: void signIn(android.content.Context)>',21,'a',NULL),(60,91,'<com.livegame.rss.settings.PhotobucketBrowser: void showUser(java.lang.String)>',8,'a',NULL),(61,93,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(62,70,'<com.livegame.rss.settings.PicasaBrowser: void showMyAlbums()>',3,'a',NULL),(63,83,'<com.livegame.rss.parser.picasa.PicasaUserView: void showAlbums()>',5,'a',NULL),(64,62,'<com.livegame.rss.ShowStreams: boolean onContextItemSelected(android.view.MenuItem)>',12,'a',0),(65,142,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(66,143,'<com.ju6.a: boolean b()>',178,'p',NULL),(67,87,'<com.livegame.rss.menu.ApplicationFeedManagerLauncher: void onCreate(android.os.Bundle)>',6,'a',NULL),(68,70,'<com.livegame.rss.settings.PicasaBrowser: void showUser(java.lang.String)>',11,'a',NULL),(69,67,'<com.livegame.rss.settings.SourceSelector: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(70,144,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(71,76,'<com.livegame.rss.parser.facebook.FacebookFriendsBrowser: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',15,'a',NULL),(72,62,'<com.livegame.rss.ShowStreams: void showFolder()>',4,'a',NULL),(73,72,'<com.livegame.rss.settings.FacebookBrowser: void showFriends()>',3,'a',NULL),(74,145,'<com.ju6.c: boolean b()>',192,'p',NULL),(75,146,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(76,147,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(77,118,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(78,118,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(79,148,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(80,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(81,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(82,149,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(83,150,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(84,151,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(85,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(86,156,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(87,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(88,122,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(89,157,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(90,158,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(91,159,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(92,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(93,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(94,157,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(95,145,'<com.ju6.c: boolean b()>',195,'p',0),(96,128,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(97,160,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(98,161,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(99,162,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(100,145,'<com.ju6.c: void run()>',146,'p',NULL),(101,163,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(102,164,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(103,145,'<com.ju6.c: boolean b()>',272,'p',NULL),(104,165,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(105,157,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,5,1),(3,6,1),(4,13,1),(5,14,1),(6,15,1),(7,16,1),(8,17,8),(9,18,6),(10,20,9),(11,21,9),(12,24,9),(13,27,1),(14,28,1),(15,29,10),(16,30,9),(17,32,9),(18,34,9),(19,35,9),(20,37,9),(21,40,1),(22,41,9),(23,42,1),(24,44,1),(25,45,1),(26,48,1),(27,49,1),(28,51,5),(29,52,9),(30,57,9),(31,66,9),(32,70,5),(33,75,14),(34,76,14),(35,77,14),(36,78,14),(37,79,14),(38,80,14),(39,81,14),(40,82,14),(41,84,1),(42,85,1),(43,89,15),(44,90,9),(45,91,15),(46,94,1),(47,95,1),(48,107,16),(49,108,17),(50,110,9),(51,111,9),(52,112,14),(53,113,14),(54,114,14),(55,115,14),(56,116,14),(57,117,14),(58,118,14),(59,119,14),(60,120,9),(61,122,9),(62,123,19),(63,125,9),(64,126,9),(65,127,9),(66,128,9),(67,129,9),(68,130,9),(69,131,9),(70,132,9),(71,133,9),(72,134,9),(73,135,9),(74,136,9),(75,138,9),(76,139,9),(77,140,9),(78,141,9),(79,142,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,6,1),(3,13,1),(4,14,2),(5,15,1),(6,16,2),(7,27,1),(8,28,2),(9,40,1),(10,42,2),(11,44,1),(12,45,2),(13,48,1),(14,49,2),(15,84,2),(16,85,1),(17,89,4),(18,90,4),(19,91,4),(20,94,1),(21,95,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/SearchService'),(2,3,'com/google/ssearch/Dialog'),(3,4,'com/google/ssearch/Dialog'),(4,7,'com/allen/txtbjyh/ViewFileAct_Float'),(5,8,'com/google/ssearch/Dialog'),(6,9,'com/google/ssearch/Dialog'),(7,10,'com/allen/txtbjyh/Settings'),(8,11,'com/waps/OffersWebView'),(9,19,'com/ps/keepaccount/dialog/DateSelectorDialog'),(10,22,'com/ps/keepaccount/activity/TypeAccountList'),(11,23,'com/ps/keepaccount/dialog/CanlendarDialog'),(12,25,'com/waps/OffersWebView'),(13,26,'com/waps/OffersWebView'),(14,33,'com/ps/keepaccount/dialog/DateSelectorDialog'),(15,36,'com/google/update/UpdateService'),(16,38,'com/waps/OffersWebView'),(17,39,'com/waps/OffersWebView'),(18,43,'com/safett/chess/UpdateService'),(19,46,'(.*)'),(20,50,'NULL-CONSTANT'),(21,53,'com/google/update/Dialog'),(22,54,'com/google/update/Dialog'),(23,55,'com/google/update/Dialog'),(24,56,'com/google/update/Dialog'),(25,58,'com/google/update/Dialog'),(26,59,'com/google/update/Dialog'),(27,60,'com/livegame/rss/settings/PicasaBrowser'),(28,61,'com/livegame/rss/settings/ManageFeeds'),(29,62,'com/livegame/rss/parser/flickr/FlickrAlbumBrowser'),(30,63,'com/livegame/rss/parser/facebook/FacebookAlbumBrowser'),(31,64,'com/google/update/Dialog'),(32,65,'com/google/update/Dialog'),(33,67,'com/livegame/rss/flickr/WebAuth'),(34,68,'com/google/update/UpdateService'),(35,69,'com/livegame/rss/parser/facebook/FacebookAlbumBrowser'),(36,71,'com/livegame/rss/settings/SourceSelector'),(37,72,'com/livegame/rss/settings/FacebookBrowser'),(38,73,'com/livegame/rss/settings/DirectoryBrowser'),(39,74,'com/livegame/rss/settings/PhotobucketBrowser'),(40,83,'com/livegame/rss/menu/Settings'),(41,86,'com/livegame/rss/parser/facebook/WebAuth'),(42,87,'com/livegame/rss/parser/picasa/PicasaWebAuth'),(43,88,'com/livegame/rss/parser/photobucket/PhotobucketShowUser'),(44,92,'com/livegame/rss/parser/picasa/PicasaAlbumBrowser'),(45,93,'com/livegame/rss/parser/picasa/PicasaAlbumBrowser'),(46,96,'com/livegame/rss/settings/ManageFeeds'),(47,97,'com/livegame/rss/parser/picasa/PicasaUserView'),(48,98,'com/livegame/rss/settings/FlickrBrowser'),(49,99,'com/waps/OffersWebView'),(50,100,'com/livegame/rss/parser/facebook/FacebookFriendView'),(51,101,'com/livegame/rss/settings/ManageFeeds'),(52,102,'com/livegame/rss/parser/facebook/FacebookFriendsBrowser'),(53,105,'com.evilsunflower.reader.FBReader'),(54,106,'com.evilsunflower.reader.FBReader'),(55,109,'com/millennialmedia/android/MMAdViewOverlayActivity'),(56,121,'com/evilsunflower/reader/BookmarkEditActivity'),(57,124,'com/millennialmedia/android/MMAdViewOverlayActivity'),(58,142,'com.android.browser.BrowserActivity');
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
INSERT INTO `IData` VALUES (1,20,1),(2,21,2),(3,24,3),(4,30,5),(5,32,6),(6,34,7),(7,35,8),(8,37,9),(9,41,11),(10,52,12),(11,57,13),(12,66,14),(13,89,15),(14,90,16),(15,91,17),(16,108,20),(17,109,21),(18,110,22),(19,111,24),(20,120,25),(21,122,27),(22,124,28),(23,125,29),(24,126,33),(25,127,35),(26,128,36),(27,129,37),(28,130,38),(29,131,39),(30,132,40),(31,133,41),(32,134,42),(33,135,43),(34,136,45),(35,138,46),(36,139,47),(37,140,48),(38,141,49),(39,142,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'MSG'),(2,3,'TYPEdsada'),(3,4,'TYPEdsada'),(4,7,'book1'),(5,7,'/sdcard/txtbooks/bjyh.txt'),(6,8,'MSG'),(7,8,'TYPEdsada'),(8,9,'TYPEdsada'),(9,11,'CLIENT_PACKAGE'),(10,11,'URL'),(11,11,'isFinshClose'),(12,17,'startDate'),(13,17,'endDate'),(14,22,'startDate'),(15,22,'endDate'),(16,22,'type'),(17,25,'USER_ID'),(18,25,'CLIENT_PACKAGE'),(19,25,'Offers_URL'),(20,25,'URL_PARAMS'),(21,26,'USER_ID'),(22,26,'CLIENT_PACKAGE'),(23,26,'Offers_URL'),(24,26,'URL_PARAMS'),(25,38,'Notify_Url_Params'),(26,38,'UrlPath'),(27,38,'ACTIVITY_FLAG'),(28,38,'isFinshClose'),(29,38,'offers_webview_tag'),(30,39,'UrlPath'),(31,39,'ACTIVITY_FLAG'),(32,39,'isFinshClose'),(33,39,'offers_webview_tag'),(34,53,'MSG'),(35,53,'TYPEdsada'),(36,54,'TYPEdsada'),(37,55,'MSG'),(38,55,'TYPEdsada'),(39,56,'TYPEdsada'),(40,58,'MSG'),(41,58,'TYPEdsada'),(42,59,'TYPEdsada'),(43,61,'SHARED_PREFS_NAME'),(44,63,'ID'),(45,64,'MSG'),(46,64,'TYPEdsada'),(47,65,'TYPEdsada'),(48,67,'URL'),(49,69,'ID'),(50,75,'android.intent.extra.INTENT'),(51,76,'android.intent.extra.INTENT'),(52,77,'android.intent.extra.TITLE'),(53,77,'android.intent.extra.INTENT'),(54,78,'android.intent.extra.INTENT'),(55,79,'android.intent.extra.TITLE'),(56,79,'android.intent.extra.INTENT'),(57,80,'android.intent.extra.INTENT'),(58,81,'android.intent.extra.TITLE'),(59,81,'android.intent.extra.INTENT'),(60,82,'android.intent.extra.TITLE'),(61,82,'android.intent.extra.INTENT'),(62,86,'URL'),(63,87,'URL'),(64,88,'user'),(65,93,'OWNER'),(66,96,'SHARED_PREFS_NAME'),(67,97,'ID'),(68,99,'USER_ID'),(69,99,'CLIENT_PACKAGE'),(70,99,'Offers_URL'),(71,99,'URL_PARAMS'),(72,100,'Name'),(73,100,'ID'),(74,101,'SHARED_PREFS_NAME'),(75,107,'command'),(76,109,'cachedAdView'),(77,112,'android.intent.extra.INTENT'),(78,113,'android.intent.extra.INTENT'),(79,114,'android.intent.extra.TITLE'),(80,114,'android.intent.extra.INTENT'),(81,115,'android.intent.extra.INTENT'),(82,116,'android.intent.extra.TITLE'),(83,116,'android.intent.extra.INTENT'),(84,117,'android.intent.extra.INTENT'),(85,118,'android.intent.extra.TITLE'),(86,118,'android.intent.extra.INTENT'),(87,119,'android.intent.extra.TITLE'),(88,119,'android.intent.extra.INTENT'),(89,123,'android.intent.extra.TEXT'),(90,123,'android.intent.extra.SUBJECT'),(91,123,'android.intent.extra.EMAIL'),(92,124,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,1),(15,9,4),(16,9,2),(17,9,3),(18,10,6),(19,11,7),(20,12,1),(21,13,10),(22,14,9),(23,15,11),(24,16,7),(25,17,12),(26,18,2),(27,18,3),(28,18,4),(29,19,8),(30,20,7),(31,21,7),(32,22,13),(33,23,1),(34,24,13),(35,25,7),(36,26,18),(37,27,18),(38,28,18),(39,29,18),(40,30,7),(41,31,7),(42,32,20),(43,32,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,1),(5,8,1),(6,12,1),(7,14,4),(8,14,3),(9,23,1);
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
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,14,'floatingimage',NULL,NULL,NULL,NULL,NULL),(3,16,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,25,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL),(8,31,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,24,'application','vnd.android.package-archive'),(2,30,'application','vnd.android.package-archive'),(3,32,'application','vnd.android.package-archive'),(4,34,'application','vnd.android.package-archive'),(5,35,'application','vnd.android.package-archive'),(6,37,'application','vnd.android.package-archive'),(7,52,'application','vnd.android.package-archive'),(8,57,'application','vnd.android.package-archive'),(9,66,'application','vnd.android.package-archive'),(10,91,'(.*)','(.*)'),(11,122,'application','vnd.android.package-archive'),(12,123,'message','rfc822'),(13,127,'application','vnd.android.package-archive'),(14,128,'application','vnd.android.package-archive'),(15,129,'application','vnd.android.package-archive'),(16,130,'application','vnd.android.package-archive'),(17,131,'application','vnd.android.package-archive'),(18,132,'application','vnd.android.package-archive'),(19,133,'application','vnd.android.package-archive'),(20,134,'application','vnd.android.package-archive'),(21,135,'application','vnd.android.package-archive'),(22,136,'application','vnd.android.package-archive'),(23,138,'application','vnd.android.package-archive'),(24,139,'application','vnd.android.package-archive'),(25,140,'application','vnd.android.package-archive'),(26,141,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.txtbjyh'),(2,3,'com.allen.txtbjyh'),(3,4,'com.allen.txtbjyh'),(4,5,'com.allen.txtbjyh'),(5,6,'com.allen.txtbjyh'),(6,7,'com.allen.txtbjyh'),(7,8,'com.allen.txtbjyh'),(8,9,'com.allen.txtbjyh'),(9,10,'com.allen.txtbjyh'),(10,11,'com.ps.keepaccount'),(11,13,'(.*)'),(12,14,'(.*)'),(13,15,'NULL-CONSTANT'),(14,16,'NULL-CONSTANT'),(15,19,'com.ps.keepaccount'),(16,22,'com.ps.keepaccount'),(17,23,'com.ps.keepaccount'),(18,25,'com.ps.keepaccount'),(19,27,'com.noshufou.android.su'),(20,26,'com.ps.keepaccount'),(21,28,'com.noshufou.android.su'),(22,33,'com.ps.keepaccount'),(23,36,'com.alan.weather'),(24,38,'com.alan.weather'),(25,39,'com.alan.weather'),(26,40,'com.noshufou.android.su'),(27,42,'com.noshufou.android.su'),(28,43,'com.safett.chess'),(29,44,'com.alan.weather'),(30,45,'com.alan.weather'),(31,46,'(.*)'),(32,48,'(.*)'),(33,49,'(.*)'),(34,50,'NULL-CONSTANT'),(35,53,'com.alan.weather'),(36,54,'com.alan.weather'),(37,55,'com.alan.weather'),(38,56,'com.alan.weather'),(39,58,'com.livegame.rss'),(40,59,'com.livegame.rss'),(41,60,'com.livegame.rss'),(42,61,'com.livegame.rss'),(43,62,'com.livegame.rss'),(44,63,'com.livegame.rss'),(45,64,'com.livegame.rss'),(46,65,'com.livegame.rss'),(47,67,'com.livegame.rss'),(48,68,'com.livegame.rss'),(49,69,'com.livegame.rss'),(50,71,'com.livegame.rss'),(51,72,'com.livegame.rss'),(52,73,'com.livegame.rss'),(53,74,'com.livegame.rss'),(54,83,'com.livegame.rss'),(55,84,'com.livegame.rss'),(56,85,'com.livegame.rss'),(57,86,'com.livegame.rss'),(58,87,'com.livegame.rss'),(59,88,'com.livegame.rss'),(60,92,'com.livegame.rss'),(61,93,'com.livegame.rss'),(62,94,'com.noshufou.android.su'),(63,95,'com.noshufou.android.su'),(64,96,'com.livegame.rss'),(65,97,'com.livegame.rss'),(66,98,'com.livegame.rss'),(67,99,'com.livegame.rss'),(68,100,'com.livegame.rss'),(69,101,'com.livegame.rss'),(70,102,'com.livegame.rss'),(71,105,'com.evilsunflower.reader.evilQichang'),(72,106,'com.evilsunflower.reader.evilQichang'),(73,109,'com.evilsunflower.reader.evilQichang'),(74,121,'com.evilsunflower.reader.evilQichang'),(75,124,'com.evilsunflower.reader.evilQichang'),(76,142,'com.android.browser');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,20,0),(5,25,0),(6,26,0),(7,34,0),(8,35,0),(9,55,0),(10,56,0),(11,57,0),(12,58,0),(13,65,0),(14,67,0),(15,75,0),(16,82,0),(17,92,0),(18,94,0),(19,95,0),(20,82,0),(21,96,0),(22,98,0),(23,98,0),(24,102,0),(25,114,0),(26,115,0),(27,116,0),(28,117,0),(29,118,0),(30,118,0),(31,118,0),(32,117,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,3,0,0),(5,4,1,0),(6,4,1,0),(7,5,0,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,8,0,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,10,1,0),(18,11,1,0),(19,12,0,0),(20,13,1,0),(21,13,1,0),(22,14,0,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,19,0,0),(27,20,1,0),(28,20,1,0),(29,21,1,0),(30,22,1,0),(31,22,1,0),(32,22,1,0),(33,23,0,0),(34,22,1,0),(35,22,1,0),(36,24,0,0),(37,22,1,0),(38,25,0,0),(39,25,0,0),(40,27,1,0),(41,28,1,0),(42,27,1,0),(43,29,0,0),(44,30,1,0),(45,30,1,0),(46,32,0,0),(47,33,1,0),(48,33,1,0),(49,33,1,0),(50,34,0,0),(51,35,1,0),(52,36,1,0),(53,37,0,0),(54,37,0,0),(55,38,0,0),(56,38,0,0),(57,39,1,0),(58,40,0,0),(59,40,0,0),(60,41,0,0),(61,42,0,0),(62,43,0,0),(63,44,0,0),(64,45,0,0),(65,45,0,0),(66,46,1,0),(67,47,0,0),(68,48,0,0),(69,49,0,0),(70,50,1,0),(71,51,0,0),(72,52,0,0),(73,53,0,0),(74,54,0,0),(75,55,1,0),(76,55,1,0),(77,55,1,0),(78,55,1,0),(79,55,1,0),(80,55,1,0),(81,55,1,0),(82,55,1,0),(83,56,0,0),(84,57,1,0),(85,57,1,0),(86,58,0,0),(87,59,0,0),(88,60,0,0),(89,61,1,0),(90,61,1,0),(91,61,1,0),(92,62,0,0),(93,63,0,0),(94,65,1,0),(95,65,1,0),(96,67,0,0),(97,68,0,0),(98,69,0,0),(99,70,0,0),(100,71,0,0),(101,72,0,0),(102,73,0,0),(103,75,1,0),(104,76,1,0),(105,77,0,0),(106,78,0,0),(107,79,1,0),(108,80,1,0),(109,81,0,0),(110,83,1,0),(111,85,1,0),(112,86,1,0),(113,86,1,0),(114,86,1,0),(115,86,1,0),(116,86,1,0),(117,86,1,0),(118,86,1,0),(119,86,1,0),(120,87,1,0),(121,88,0,0),(122,90,1,0),(123,91,1,0),(124,92,0,0),(125,93,1,0),(126,96,1,0),(127,99,1,0),(128,99,1,0),(129,99,1,0),(130,99,1,0),(131,99,1,0),(132,99,1,0),(133,99,1,0),(134,99,1,0),(135,99,1,0),(136,101,1,0),(137,101,1,0),(138,101,1,0),(139,101,1,0),(140,101,1,0),(141,101,1,0),(142,102,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECORD_AUDIO'),(20,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SETTINGS'),(13,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(6,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(19,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(31,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'content://mms/',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(46,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://mms/',NULL,NULL,NULL),(54,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,18,4),(2,26,10),(3,66,18),(4,74,19),(5,84,23),(6,89,26),(7,94,30),(8,94,31),(9,94,32),(10,97,34),(11,100,44),(12,103,51),(13,104,52),(14,105,53),(15,105,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,3),(12,2,4),(13,2,9),(14,2,10),(15,3,1),(16,3,3),(17,3,4),(18,3,6),(19,3,8),(20,3,9),(21,3,11),(22,4,1),(23,4,2),(24,4,3),(25,4,4),(26,4,5),(27,4,6),(28,4,8),(29,4,9),(30,4,10),(31,4,12),(32,4,13),(33,4,14),(34,4,15),(35,4,17),(36,4,16),(37,5,1),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,8),(43,5,9),(44,5,11),(45,5,12),(46,5,14),(47,5,17),(48,5,16),(49,5,19),(50,5,18),(51,6,1),(52,6,2),(53,6,3),(54,6,4),(55,6,5),(56,6,6),(57,6,8),(58,6,9),(59,6,10),(60,6,11),(61,6,12),(62,6,13),(63,6,14),(64,6,15),(65,6,17),(66,6,18),(67,6,21),(68,6,20),(69,6,22),(70,7,1),(71,7,3),(72,7,4),(73,7,23),(74,7,6),(75,7,8),(76,7,9),(77,7,11),(78,7,13),(79,7,14),(80,7,15);
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

-- Dump completed on 2015-10-09  0:38:07
