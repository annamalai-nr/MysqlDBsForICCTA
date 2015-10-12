-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_93
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
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(7,'<INTENT>'),(13,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(19,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.SEARCH'),(16,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(11,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(18,'com.android.music.musicservicecommand'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.wqx.blackjack',8),(2,'com.mediagroup.wcms.view',6),(3,'com.livegame.wallpaperbxjg',3),(4,'com.gp.monolith',15),(5,'com.alan.siwameinv1',6),(6,'com.gp.tiltmazes',23),(7,'com.evilsunflower.reader.evilYingyou',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'<INTENT>'),(4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.wqx.blackjack.Blackjack'),(3,1,'com.wqx.blackjack.Card'),(4,1,'com.google.update.Dialog'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.mediagroup.wcms.view.SplashActivity'),(8,2,'com.mediagroup.wcms.view.PeriodicalsActivity'),(9,2,'com.mediagroup.wcms.view.MagazineActivity'),(10,2,'com.mediagroup.wcms.view.NewsListActivity'),(11,2,'com.mediagroup.wcms.view.ContextActivity'),(12,2,'com.mediagroup.wcms.view.AboutActivity'),(13,2,'com.mediagroup.wcms.view.FavoriteActivity'),(14,2,'com.mediagroup.wcms.view.SearchActivity'),(15,2,'com.mediagroup.wcms.view.OuterUrlActivity'),(16,2,'com.eguan.state.Dialog'),(17,2,'com.eguan.state.StateService'),(18,2,'com.eguan.state.Receiver'),(19,3,'com.livegame.wallpaperbxjg.MainActivity'),(20,4,'com.gp.monolith.Monolith'),(21,3,'com.livegame.wallpaperbxjg.SettingsActivity'),(22,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,3,'com.livegame.wallpaperbxjg.SelectFolderActivity'),(24,4,'com.google.update.Dialog'),(25,3,'com.google.ads.AdActivity'),(26,4,'cn.domob.android.ads.DomobActivity'),(27,3,'com.vpon.adon.android.WebInApp'),(28,4,'com.google.update.UpdateService'),(29,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(30,4,'com.google.update.Receiver'),(31,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,3,'com.waps.OffersWebView'),(33,3,'com.google.update.Dialog'),(34,3,'com.livegame.wallpaperbxjg.WallpaperSlideshow'),(35,3,'com.google.update.UpdateService'),(36,3,'com.google.update.Receiver'),(37,5,'com.alan.siwameinv1.PaperCollection'),(38,5,'com.alan.siwameinv1.PictureGrid'),(39,5,'com.google.ads.AdActivity'),(40,5,'com.vpon.adon.android.WebInApp'),(41,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(42,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,5,'com.waps.OffersWebView'),(44,5,'com.google.update.Dialog'),(45,5,'com.google.update.UpdateService'),(46,5,'com.google.update.Receiver'),(47,1,'com.google.update.Dialog$1'),(48,6,'com.gp.tiltmazes.TiltMazesActivity'),(49,6,'com.gp.tiltmazes.SelectMazeActivity'),(50,6,'com.google.update.Dialog'),(51,6,'cn.domob.android.ads.DomobActivity'),(52,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,6,'com.mt.airad.MultiAD'),(54,6,'com.waps.OffersWebView'),(55,6,'com.google.update.UpdateService'),(56,6,'com.google.update.Receiver'),(57,1,'com.google.update.UpdateService$AA'),(58,1,'com.google.update.Dialog$2'),(59,2,'com.eguan.state.Dialog$1'),(60,2,'com.mediagroup.wcms.view.AndroidActivity'),(61,2,'com.ju6.a'),(62,2,'com.mediagroup.wcms.view.DataListActivity'),(63,2,'com.mediagroup.wcms.view.ContextActivity$7'),(64,2,'com.mediagroup.wcms.view.NewsListActivity$1'),(65,2,'com.mediagroup.wcms.view.FavoriteActivity$1'),(66,2,'com.eguan.state.StateService$MyThread'),(67,5,'com.google.update.Dialog$2'),(68,3,'com.waps.aa'),(69,5,'com.waps.AppConnect'),(70,3,'com.waps.q'),(71,5,'com.waps.k'),(72,4,'cn.domob.android.ads.DomobActionReceiver'),(73,4,'cn.domob.android.ads.DomobAdEngine$2'),(74,3,'com.waps.o'),(75,5,'com.google.update.Dialog$1'),(76,4,'cn.domob.android.ads.DomobAdManager'),(77,5,'com.waps.m'),(78,3,'com.google.update.Dialog$2'),(79,4,'cn.domob.android.ads.i'),(80,4,'com.google.update.Dialog$1'),(81,3,'com.livegame.wallpaperbxjg.MainActivity$2'),(82,4,'com.google.update.UpdateService$AA'),(83,3,'com.waps.z'),(84,5,'com.ju6.a'),(85,3,'com.waps.AppConnect'),(86,4,'cn.domob.android.ads.i$6'),(87,5,'com.google.update.UpdateService$MyThread'),(88,3,'com.google.update.Dialog$1'),(89,3,'com.google.update.UpdateService$AA'),(90,3,'com.waps.ac'),(91,4,'com.google.update.Dialog$2'),(92,3,'com.livegame.wallpaperbxjg.MainActivity$1'),(93,6,'cn.domob.android.ads.o'),(94,6,'com.google.update.UpdateService$AA'),(95,6,'com.google.update.Dialog$2'),(96,6,'cn.domob.android.ads.DomobAdManager'),(97,6,'cn.domob.android.ads.e'),(98,6,'cn.domob.android.a.a$a'),(99,6,'com.waps.y'),(100,6,'com.mt.airad.IIIIlllIlllIIIII'),(101,6,'cn.domob.android.ads.o$5'),(102,7,'com.evilsunflower.reader.evilYingyou.BugReportActivity'),(103,7,'com.evilsunflower.reader.FBReader'),(104,7,'com.evilsunflower.reader.CancelActivity'),(105,7,'com.evilsunflower.reader.image.ImageViewActivity'),(106,7,'com.evilsunflower.reader.TOCActivity'),(107,7,'com.evilsunflower.reader.BookmarksActivity'),(108,7,'com.evilsunflower.reader.BookmarkEditActivity'),(109,7,'com.evilsunflower.reader.Starter'),(110,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(111,6,'com.waps.aa'),(112,7,'com.vpon.adon.android.WebInApp'),(113,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(114,7,'com.millennialmedia.android.VideoPlayer'),(115,7,'net.youmi.android.AdActivity'),(116,7,'com.google.ads.AdActivity'),(117,7,'cn.domob.android.ads.DomobActivity'),(118,7,'com.baidu.AppActivity'),(119,7,'com.guohead.sdk.GuoheAdActivity'),(120,6,'com.waps.o'),(121,6,'com.waps.q'),(122,6,'cn.domob.android.ads.g$1'),(123,6,'com.google.update.Dialog$1'),(124,6,'com.waps.x'),(125,7,'com.ju6.mms.util.SqliteWrapper'),(126,7,'net.youmi.android.eo'),(127,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(128,7,'com.adwo.adsdk.M'),(129,7,'cn.domob.android.ads.e'),(130,7,'net.youmi.android.be'),(131,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(132,7,'com.ju6.mms.pdu.PduPersister'),(133,7,'com.ju6.c'),(134,7,'cn.domob.android.a.a$a'),(135,7,'net.youmi.android.t'),(136,7,'cn.domob.android.ads.DomobAdManager'),(137,7,'com.millennialmedia.android.MillennialMediaView'),(138,7,'com.baidu.al'),(139,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(140,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(141,7,'cn.domob.android.ads.g$1'),(142,7,'cn.domob.android.ads.o$5'),(143,7,'com.baidu.as'),(144,7,'cn.domob.android.ads.o'),(145,7,'com.madhouse.android.ads._');
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'mMaxScore'),(2,4,'MSG'),(3,1,'shouldResizeOverlay'),(4,3,'mWinCount'),(5,2,'mWinCount'),(6,3,'mStartTime'),(7,2,'mStartTime'),(8,2,'Blackjack'),(9,4,'TYPEdsada'),(10,5,'ST_MY_PID'),(11,3,'mLoseCount'),(12,1,'transitionTime'),(13,3,'mMoney'),(14,2,'mMaxScore'),(15,1,'shouldEnableBottomBar'),(16,5,'ST_START_DELAY'),(17,1,'overlayTransition'),(18,2,'mMoney'),(19,3,'mCurrentScore'),(20,2,'mCurrentScore'),(21,1,'shouldShowTitlebar'),(22,1,'url'),(23,2,'mLoseCount'),(24,1,'shouldShowBottomBar'),(25,1,'overlayTitle'),(26,1,'shouldMakeOverlayTransparent'),(27,11,'com.mediagroup.wcms.MagazineTitle'),(28,10,'com.mediagroup.wcms.isMainactivity'),(29,16,'TYPEdsada'),(30,11,'com.mediagroup.wcms.items.content'),(31,10,'com.mediagroup.wcms.Keyword'),(32,10,'com.mediagroup.wcms.MagazineNum'),(33,11,'com.mediagroup.wcms.items.image'),(34,8,'com.mediagroup.wcms.isMainactivity'),(35,11,'com.mediagroup.wcms.items.link'),(36,13,'com.mediagroup.wcms.MagazineId'),(37,11,'com.mediagroup.wcms.items.pubtime'),(38,10,'com.mediagroup.wcms.MagazineTitle'),(39,10,'com.mediagroup.wcms.MagazineId'),(40,11,'com.mediagroup.wcms.items.newsBean'),(41,9,'com.mediagroup.wcms.isMainactivity'),(42,15,'com.mediagroup.wcms.title'),(43,15,'com.mediagroup.wcms.url'),(44,13,'com.mediagroup.wcms.MagazineTitle'),(45,11,'com.mediagroup.wcms.items.title'),(46,16,'MSG'),(47,11,'com.mediagroup.wcms.items.MagazineId'),(48,10,'com.mediagroup.wcms.ViewList'),(49,9,'com.mediagroup.wcms.MagazineId'),(50,29,'Adwo_PID'),(51,43,'URL'),(52,31,'overlayTransition'),(53,45,'ST_START_DELAY'),(54,42,'overlayTitle'),(55,42,'transitionTime'),(56,43,'USER_ID'),(57,42,'shouldResizeOverlay'),(58,22,'transitionTime'),(59,22,'url'),(60,22,'shouldMakeOverlayTransparent'),(61,28,'DOMOB_TEST_MODE'),(62,22,'DOMOB_TEST_MODE'),(63,38,'WAPS_ID'),(64,22,'shouldShowBottomBar'),(65,40,'adWidth'),(66,22,'overlayTransition'),(67,43,'Offers_URL'),(68,26,'appId'),(69,42,'overlayTransition'),(70,28,'ST_START_DELAY'),(71,32,'CLIENT_PACKAGE'),(72,41,'Adwo_PID'),(73,28,'ST_MY_PID'),(74,28,'DOMOB_PID'),(75,22,'DOMOB_PID'),(76,22,'shouldEnableBottomBar'),(77,32,'Notify_Url_Params'),(78,31,'overlayTitle'),(79,32,'URL'),(80,42,'shouldEnableBottomBar'),(81,26,'actType'),(82,35,'ST_MY_PID'),(83,33,'MSG'),(84,32,'SHWO_FLAG'),(85,31,'shouldShowBottomBar'),(86,31,'shouldMakeOverlayTransparent'),(87,32,'APP_ID'),(88,22,'shouldShowTitlebar'),(89,19,'APP_ID'),(90,32,'WAPS_PID'),(91,19,'WAPS_PID'),(92,39,'params'),(93,33,'TYPEdsada'),(94,38,'DEVICE_ID'),(95,32,'Notify_Id'),(96,42,'shouldMakeOverlayTransparent'),(97,32,'DEVICE_ID'),(98,38,'APP_ID'),(99,19,'DEVICE_ID'),(100,32,'isFinshClose'),(101,32,'Offers_URL'),(102,27,'adWidth'),(103,40,'url'),(104,38,'WAPS_PID'),(105,32,'URL_PARAMS'),(106,31,'shouldShowTitlebar'),(107,42,'url'),(108,42,'shouldShowBottomBar'),(109,38,'CLIENT_PACKAGE'),(110,41,'isTestMode'),(111,32,'WAPS_ID'),(112,19,'WAPS_ID'),(113,31,'url'),(114,44,'MSG'),(115,22,'shouldResizeOverlay'),(116,22,'overlayTitle'),(117,43,'CLIENT_PACKAGE'),(118,26,'appName'),(119,43,'isFinshClose'),(120,45,'ST_MY_PID'),(121,39,'action'),(122,39,'com.google.ads.AdOpener'),(123,43,'URL_PARAMS'),(124,44,'TYPEdsada'),(125,42,'shouldShowTitlebar'),(126,32,'USER_ID'),(127,24,'MSG'),(128,21,'folder'),(129,24,'TYPEdsada'),(130,32,'ACTIVITY_FLAG'),(131,28,'DOMOB_ALLOW_LOCATION'),(132,22,'DOMOB_ALLOW_LOCATION'),(133,31,'shouldEnableBottomBar'),(134,31,'shouldResizeOverlay'),(135,32,'UrlPath'),(136,35,'ST_START_DELAY'),(137,19,'CLIENT_PACKAGE'),(138,27,'url'),(139,29,'isTestMode'),(140,31,'transitionTime'),(141,32,'offers_webview_tag'),(142,51,'url'),(143,53,'Offers_URL'),(144,49,'MSG'),(145,54,'DOMOB_TEST_MODE'),(146,51,'DOMOB_TEST_MODE'),(147,51,'shouldShowTitlebar'),(148,53,'APP_ID'),(149,47,'APP_ID'),(150,53,'Notify_Id'),(151,49,'TYPEdsada'),(152,53,'ACTIVITY_FLAG'),(153,52,'adURL'),(154,52,'adID'),(155,47,'map.goals'),(156,47,'ball.y'),(157,51,'shouldShowBottomBar'),(158,47,'stepcount'),(159,53,'URL'),(160,53,'USER_ID'),(161,47,'map.id'),(162,53,'CLIENT_PACKAGE'),(163,51,'shouldEnableBottomBar'),(164,51,'overlayTitle'),(165,53,'WAPS_ID'),(166,47,'WAPS_ID'),(167,54,'ST_MY_PID'),(168,53,'Notify_Url_Params'),(169,53,'URL_PARAMS'),(170,53,'UrlPath'),(171,50,'appName'),(172,51,'transitionTime'),(173,54,'DOMOB_PID'),(174,51,'DOMOB_PID'),(175,51,'overlayTransition'),(176,51,'shouldMakeOverlayTransparent'),(177,47,'ball.x'),(178,54,'ST_START_DELAY'),(179,53,'WAPS_PID'),(180,47,'WAPS_PID'),(181,53,'DEVICE_ID'),(182,47,'DEVICE_ID'),(183,53,'SHWO_FLAG'),(184,50,'actType'),(185,51,'shouldResizeOverlay'),(186,54,'DOMOB_ALLOW_LOCATION'),(187,51,'DOMOB_ALLOW_LOCATION'),(188,53,'isFinshClose'),(189,50,'appId'),(190,47,'CLIENT_PACKAGE'),(191,53,'offers_webview_tag'),(192,75,'clklogurl'),(193,70,'overlayTransition'),(194,70,'transitionTime'),(195,68,'shouldShowBottomBar'),(196,70,'shouldMakeOverlayTransparent'),(197,76,'link'),(198,71,'adName'),(199,61,'Adwo_PID'),(200,68,'shouldEnableBottomBar'),(201,61,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(202,71,'logSet'),(203,68,'url'),(204,68,'transitionTime'),(205,70,'canAccelerate'),(206,68,'overlayTitle'),(207,75,'surl'),(208,68,'overlayTransition'),(209,74,'actType'),(210,71,'DOMOB_TEST_MODE'),(211,65,'DOMOB_TEST_MODE'),(212,70,'DOMOB_TEST_MODE'),(213,61,'DOMOB_TEST_MODE'),(214,68,'DOMOB_TEST_MODE'),(215,72,'DOMOB_TEST_MODE'),(216,70,'overlayTitle'),(217,61,'query'),(218,69,'adWidth'),(219,70,'cachedAdView'),(220,72,'D50EF1926ADD471892E72BCE6D7E032C'),(221,75,'tit'),(222,71,'DOMOB_ALLOW_LOCATION'),(223,65,'DOMOB_ALLOW_LOCATION'),(224,70,'DOMOB_ALLOW_LOCATION'),(225,61,'DOMOB_ALLOW_LOCATION'),(226,68,'DOMOB_ALLOW_LOCATION'),(227,72,'DOMOB_ALLOW_LOCATION'),(228,70,'shouldEnableBottomBar'),(229,71,'videoCompleted'),(230,65,'query'),(231,72,'D780FBF4215247bcBB1AC0AD33C474FE'),(232,71,'cached'),(233,72,'EB80F3291A8E469c962CA133BDC549D7'),(234,72,'172C94EDC717477aBF600D7898A64A8E'),(235,70,'shouldShowBottomBar'),(236,71,'shouldShowBottomBar'),(237,74,'appName'),(238,71,'isCachedAd'),(239,61,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(240,68,'shouldMakeOverlayTransparent'),(241,68,'shouldShowTitlebar'),(242,75,'curl'),(243,69,'url'),(244,70,'shouldResizeOverlay'),(245,71,'videoAd'),(246,68,'shouldResizeOverlay'),(247,71,'videoPosition'),(248,61,'GH_APPKEY'),(249,75,'limg'),(250,71,'DOMOB_PID'),(251,65,'DOMOB_PID'),(252,70,'DOMOB_PID'),(253,61,'DOMOB_PID'),(254,68,'DOMOB_PID'),(255,72,'DOMOB_PID'),(256,70,'shouldShowTitlebar'),(257,74,'appId');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',1,22,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,48,'a',1,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'s',0,NULL,NULL),(55,56,'r',1,NULL,NULL),(56,70,'r',1,NULL,NULL),(57,72,'r',1,NULL,NULL),(58,77,'r',1,NULL,NULL),(59,97,'r',1,NULL,NULL),(60,102,'a',0,NULL,NULL),(61,103,'a',1,NULL,NULL),(62,104,'a',0,NULL,NULL),(63,105,'a',0,NULL,NULL),(64,106,'a',0,NULL,NULL),(65,107,'a',1,NULL,NULL),(66,108,'a',0,NULL,NULL),(67,109,'a',0,NULL,NULL),(68,110,'a',0,NULL,NULL),(69,112,'a',0,NULL,NULL),(70,113,'a',0,NULL,NULL),(71,114,'a',0,NULL,NULL),(72,115,'a',0,NULL,NULL),(73,116,'a',0,NULL,NULL),(74,117,'a',0,NULL,NULL),(75,118,'a',0,NULL,NULL),(76,119,'a',0,NULL,NULL),(77,121,'r',1,NULL,NULL),(78,126,'r',1,NULL,NULL),(79,127,'r',1,NULL,NULL),(80,128,'r',1,NULL,NULL),(81,129,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,6),(3,3,2),(4,4,2),(5,5,5),(6,6,5),(7,7,2),(8,8,5),(9,9,4),(10,10,11),(11,10,8),(12,10,9),(13,10,10),(14,10,15),(15,10,16),(16,10,13),(17,11,17),(18,12,10),(19,13,10),(20,14,9),(21,15,8),(22,15,13),(23,15,10),(24,16,8),(25,17,10),(26,18,8),(27,19,15),(28,19,11),(29,19,10),(30,19,13),(31,19,7),(32,19,9),(33,19,8),(34,20,18),(35,21,13),(36,21,8),(37,21,10),(38,22,10),(39,23,10),(40,24,7),(41,25,9),(42,26,8),(43,27,8),(44,28,8),(45,28,9),(46,28,10),(47,28,15),(48,28,11),(49,28,13),(50,29,11),(51,30,8),(52,30,10),(53,30,13),(54,31,13),(55,31,10),(56,31,8),(57,32,17),(58,33,10),(59,33,8),(60,33,13),(61,34,17),(62,35,10),(63,36,11),(64,37,44),(65,38,32),(66,39,38),(67,40,43),(68,41,22),(69,41,28),(70,42,32),(71,43,44),(72,44,30),(73,45,28),(74,45,22),(75,46,46),(76,47,28),(77,48,33),(78,49,28),(79,49,22),(80,50,45),(81,51,36),(82,52,24),(83,53,19),(84,54,39),(85,55,28),(86,56,35),(87,57,28),(88,58,32),(89,59,45),(90,60,19),(91,61,28),(92,61,22),(93,62,45),(94,63,33),(95,64,45),(96,65,35),(97,66,32),(98,66,23),(99,67,24),(100,68,32),(101,69,32),(102,70,19),(103,71,35),(104,72,55),(105,73,54),(106,74,54),(107,74,51),(108,75,54),(109,76,49),(110,77,54),(111,77,51),(112,78,54),(113,78,51),(114,79,53),(115,80,53),(116,81,52),(117,82,54),(118,82,51),(119,83,53),(120,84,53),(121,85,54),(122,86,53),(123,87,53),(124,88,51),(125,88,54),(126,89,49),(127,90,53),(128,91,47),(129,92,61),(130,93,61),(131,94,71),(132,94,72),(133,94,61),(134,94,65),(135,95,72),(136,96,72),(137,97,61),(138,98,61),(139,99,61),(140,100,61),(141,101,72),(142,101,68),(143,101,71),(144,101,70),(145,101,61),(146,101,65),(147,102,72),(148,102,71),(149,102,65),(150,102,61),(151,103,61),(152,103,71),(153,103,72),(154,103,65),(155,104,65),(156,104,71),(157,104,72),(158,104,61),(159,105,61),(160,106,72),(161,107,65),(162,108,61),(163,108,65),(164,108,70),(165,108,68),(166,108,71),(167,108,72),(168,109,61),(169,109,65),(170,109,71),(171,109,72),(172,110,65),(173,110,61),(174,110,72),(175,111,65),(176,111,61),(177,111,72),(178,112,72),(179,112,61),(180,112,65),(181,113,72),(182,113,61),(183,113,65),(184,113,68),(185,113,71),(186,113,70),(187,114,61),(188,115,61),(189,116,71),(190,116,72),(191,116,68),(192,116,70),(193,116,61),(194,117,72),(195,117,65),(196,117,61),(197,118,71),(198,118,72),(199,118,61),(200,118,65),(201,119,72),(202,119,71),(203,119,61),(204,119,65),(205,120,68),(206,120,70),(207,120,65),(208,120,61),(209,120,72),(210,120,71),(211,121,61),(212,122,65),(213,122,71),(214,122,72),(215,122,61),(216,123,72),(217,123,61),(218,123,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,2,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(4,2,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(5,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(6,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(7,2,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(8,57,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(9,58,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,59,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(11,17,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(12,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(13,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(14,9,'<com.mediagroup.wcms.view.MagazineActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(15,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: void showNextActivity(java.lang.String,com.mediagroup.wcms.view.GridViewInfo)>',17,'a',NULL),(16,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(17,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(18,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(19,60,'<com.mediagroup.wcms.view.AndroidActivity: void messageIsWapNetWork()>',5,'p',NULL),(20,18,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: void showUrlView(java.lang.String,java.lang.String)>',12,'a',NULL),(22,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(23,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(24,61,'<com.ju6.a: boolean b()>',178,'p',NULL),(25,9,'<com.mediagroup.wcms.view.MagazineActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(26,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(27,8,'<com.mediagroup.wcms.view.PeriodicalsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',31,'a',NULL),(28,62,'<com.mediagroup.wcms.view.DataListActivity: void showOutUrl(java.lang.String,java.lang.String)>',11,'a',NULL),(29,63,'<com.mediagroup.wcms.view.ContextActivity$7: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',12,'a',NULL),(30,62,'<com.mediagroup.wcms.view.DataListActivity: void showContentActivity(com.mediagroup.wcms.view.NewsListBean)>',29,'a',NULL),(31,64,'<com.mediagroup.wcms.view.NewsListActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',63,'a',NULL),(32,17,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(33,65,'<com.mediagroup.wcms.view.FavoriteActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(34,66,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(35,10,'<com.mediagroup.wcms.view.NewsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(36,11,'<com.mediagroup.wcms.view.ContextActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',48,'a',NULL),(37,67,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,68,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,69,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(40,71,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(41,73,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(42,74,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,76,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(46,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,28,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,78,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(49,79,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(50,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(51,36,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(53,81,'<com.livegame.wallpaperbxjg.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(54,39,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(55,28,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(56,35,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(57,82,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(58,83,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,84,'<com.ju6.a: boolean b()>',178,'p',NULL),(60,85,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(61,86,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(62,87,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(63,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,89,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(66,90,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(67,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(69,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(70,92,'<com.livegame.wallpaperbxjg.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(71,35,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(72,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(73,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(74,93,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(75,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(76,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(77,96,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(78,98,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(79,54,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(80,99,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,100,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(82,101,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,54,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(84,111,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(85,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(86,54,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(87,120,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(88,122,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(89,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(90,124,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,48,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(92,125,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(93,125,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(94,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(95,130,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(96,131,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(97,125,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(98,132,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(99,133,'<com.ju6.c: void run()>',146,'p',NULL),(100,103,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(101,134,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(102,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(103,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(104,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(105,103,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(106,135,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(107,107,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(108,136,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(109,137,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(110,138,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(111,139,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(112,140,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(113,141,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(114,133,'<com.ju6.c: boolean b()>',195,'p',0),(115,133,'<com.ju6.c: boolean b()>',272,'p',NULL),(116,142,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(117,143,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(118,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(119,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(120,144,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(121,133,'<com.ju6.c: boolean b()>',192,'p',NULL),(122,114,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(123,145,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,11,1),(4,12,1),(5,13,6),(6,14,6),(7,17,7),(8,18,7),(9,22,7),(10,26,7),(11,27,7),(12,32,8),(13,33,7),(14,34,7),(15,38,1),(16,39,1),(17,40,7),(18,42,6),(19,46,8),(20,47,8),(21,48,1),(22,50,1),(23,54,6),(24,55,8),(25,59,1),(26,61,1),(27,64,10),(28,67,8),(29,68,10),(30,69,1),(31,70,8),(32,71,1),(33,73,8),(34,74,1),(35,76,8),(36,77,1),(37,78,1),(38,79,1),(39,80,8),(40,81,8),(41,83,1),(42,84,8),(43,85,1),(44,88,6),(45,90,1),(46,91,1),(47,93,11),(48,99,8),(49,100,1),(50,101,1),(51,102,6),(52,103,1),(53,104,1),(54,107,8),(55,108,8),(56,110,8),(57,111,8),(58,112,8),(59,113,8),(60,119,1),(61,120,1),(62,121,8),(63,122,1),(64,123,1),(65,124,8),(66,126,8),(67,127,8),(68,128,8),(69,129,8),(70,130,8),(71,131,8),(72,132,8),(73,133,8),(74,134,8),(75,135,8),(76,136,16),(77,138,8),(78,140,8),(79,142,17),(80,143,17),(81,144,17),(82,145,17),(83,146,17),(84,147,17),(85,148,17),(86,149,17),(87,151,18),(88,152,8),(89,155,8),(90,157,8),(91,158,8),(92,159,8),(93,160,8),(94,161,8),(95,162,19),(96,164,8),(97,165,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,2),(3,11,1),(4,12,2),(5,17,3),(6,18,3),(7,22,3),(8,26,3),(9,27,3),(10,33,3),(11,34,3),(12,38,1),(13,39,2),(14,40,3),(15,48,1),(16,50,2),(17,59,1),(18,61,2),(19,64,4),(20,67,4),(21,68,4),(22,69,2),(23,71,1),(24,74,1),(25,77,1),(26,78,2),(27,79,2),(28,83,2),(29,85,1),(30,90,1),(31,91,2),(32,100,2),(33,101,1),(34,103,1),(35,104,2),(36,119,1),(37,120,2),(38,122,1),(39,123,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/UpdateService'),(2,4,'com/wqx/blackjack/Blackjack'),(3,5,'com/wqx/blackjack/Card'),(4,6,'com/google/update/Dialog'),(5,7,'com/google/update/Dialog'),(6,8,'com/google/update/Dialog'),(7,9,'com/google/update/Dialog'),(8,10,'com/wqx/blackjack/Card'),(9,15,'com/eguan/state/Dialog'),(10,16,'com/eguan/state/Dialog'),(11,19,'com/mediagroup/wcms/view/FavoriteActivity'),(12,20,'com/mediagroup/wcms/view/NewsListActivity'),(13,21,'com/mediagroup/wcms/view/FavoriteActivity'),(14,23,'com/mediagroup/wcms/view/OuterUrlActivity'),(15,24,'com/eguan/state/StateService'),(16,25,'com/mediagroup/wcms/view/OuterUrlActivity'),(17,28,'com/mediagroup/wcms/view/AboutActivity'),(18,29,'com/mediagroup/wcms/view/AboutActivity'),(19,30,'com/mediagroup/wcms/view/OuterUrlActivity'),(20,31,'com/mediagroup/wcms/view/OuterUrlActivity'),(21,35,'com/eguan/state/Dialog'),(22,36,'com/eguan/state/Dialog'),(23,37,'com/mediagroup/wcms/view/ContextActivity'),(24,41,'com/mediagroup/wcms/view/AboutActivity'),(25,43,'com/waps/OffersWebView'),(26,44,'com/waps/OffersWebView'),(27,45,'com/waps/OffersWebView'),(28,49,'com/google/update/UpdateService'),(29,51,'com/google/update/UpdateService'),(30,52,'com/google/update/Dialog'),(31,53,'com/google/update/Dialog'),(32,56,'com/google/update/Dialog'),(33,57,'com/google/update/UpdateService'),(34,58,'com/google/update/Dialog'),(35,60,'com/livegame/wallpaperbxjg/SettingsActivity'),(36,63,'com/google/update/Dialog'),(37,62,'com/google/update/Dialog'),(38,66,'com/google/update/Dialog'),(39,65,'com/google/update/Dialog'),(40,72,'com/waps/OffersWebView'),(41,82,'com/google/update/Dialog'),(42,86,'com/google/update/Dialog'),(43,87,'NULL-CONSTANT'),(44,92,'(.*)'),(45,94,'com/google/update/Dialog'),(46,95,'com/google/update/Dialog'),(47,96,'com/google/update/UpdateService'),(48,97,'com/google/update/Dialog'),(49,98,'com/google/update/Dialog'),(50,105,'com/waps/OffersWebView'),(51,106,'com/waps/OffersWebView'),(52,114,'(.*)'),(53,115,'NULL-CONSTANT'),(54,116,'com/google/update/Dialog'),(55,117,'com/google/update/Dialog'),(56,125,'com/gp/tiltmazes/SelectMazeActivity'),(57,137,'com.evilsunflower.reader.FBReader'),(58,139,'com/millennialmedia/android/MMAdViewOverlayActivity'),(59,141,'com.evilsunflower.reader.FBReader'),(60,150,'com/evilsunflower/reader/BookmarkEditActivity'),(61,152,'com.android.browser.BrowserActivity'),(62,163,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
INSERT INTO `IData` VALUES (1,32,3),(2,46,4),(3,47,5),(4,55,7),(5,64,8),(6,67,9),(7,68,10),(8,70,11),(9,73,13),(10,76,14),(11,80,15),(12,81,16),(13,84,17),(14,99,18),(15,107,21),(16,108,22),(17,110,23),(18,111,24),(19,112,25),(20,113,26),(21,121,27),(22,124,28),(23,126,33),(24,127,34),(25,128,35),(26,129,36),(27,130,37),(28,131,38),(29,132,39),(30,133,40),(31,134,41),(32,135,42),(33,138,47),(34,139,48),(35,140,49),(36,152,51),(37,155,53),(38,157,54),(39,158,55),(40,159,56),(41,160,57),(42,161,58),(43,162,59),(44,163,60),(45,164,61),(46,165,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'mMaxScore'),(2,5,'mMoney'),(3,5,'mWinCount'),(4,5,'mLoseCount'),(5,5,'mStartTime'),(6,5,'mCurrentScore'),(7,6,'MSG'),(8,6,'TYPEdsada'),(9,7,'TYPEdsada'),(10,8,'MSG'),(11,8,'TYPEdsada'),(12,9,'TYPEdsada'),(13,10,'mMaxScore'),(14,10,'mMoney'),(15,10,'mWinCount'),(16,10,'mLoseCount'),(17,10,'mStartTime'),(18,10,'mCurrentScore'),(19,15,'TYPEdsada'),(20,16,'MSG'),(21,16,'TYPEdsada'),(22,17,'<INTENT>'),(23,18,'<INTENT>'),(24,19,'com.mediagroup.wcms.MagazineId'),(25,20,'com.mediagroup.wcms.MagazineId'),(26,20,'com.mediagroup.wcms.MagazineNum'),(27,20,'com.mediagroup.wcms.MagazineTitle'),(28,20,'com.mediagroup.wcms.isMainactivity'),(29,20,'com.mediagroup.wcms.updateFlag'),(30,21,'com.mediagroup.wcms.MagazineId'),(31,22,'<INTENT>'),(32,23,'com.mediagroup.wcms.url'),(33,23,'com.mediagroup.wcms.title'),(34,25,'com.mediagroup.wcms.url'),(35,25,'com.mediagroup.wcms.title'),(36,26,'<INTENT>'),(37,27,'<INTENT>'),(38,30,'com.mediagroup.wcms.url'),(39,30,'com.mediagroup.wcms.title'),(40,31,'com.mediagroup.wcms.url'),(41,31,'com.mediagroup.wcms.title'),(42,33,'<INTENT>'),(43,34,'<INTENT>'),(44,35,'TYPEdsada'),(45,36,'MSG'),(46,36,'TYPEdsada'),(47,37,'com.mediagroup.wcms.items.link'),(48,37,'com.mediagroup.wcms.MagazineId'),(49,37,'com.mediagroup.wcms.items.pubtime'),(50,37,'com.mediagroup.wcms.items.title'),(51,37,'com.mediagroup.wcms.items.newsBean'),(52,37,'com.mediagroup.wcms.items.image'),(53,37,'com.mediagroup.wcms.items.content'),(54,40,'<INTENT>'),(55,43,'Notify_Url_Params'),(56,43,'UrlPath'),(57,43,'ACTIVITY_FLAG'),(58,43,'isFinshClose'),(59,43,'offers_webview_tag'),(60,44,'USER_ID'),(61,44,'CLIENT_PACKAGE'),(62,44,'Offers_URL'),(63,44,'URL_PARAMS'),(64,45,'UrlPath'),(65,45,'ACTIVITY_FLAG'),(66,45,'isFinshClose'),(67,45,'offers_webview_tag'),(68,52,'MSG'),(69,52,'TYPEdsada'),(70,53,'TYPEdsada'),(71,56,'MSG'),(72,56,'TYPEdsada'),(73,58,'TYPEdsada'),(74,62,'MSG'),(75,63,'TYPEdsada'),(76,62,'TYPEdsada'),(77,65,'MSG'),(78,66,'TYPEdsada'),(79,65,'TYPEdsada'),(80,72,'USER_ID'),(81,72,'CLIENT_PACKAGE'),(82,72,'Offers_URL'),(83,72,'offers_webview_tag'),(84,72,'URL_PARAMS'),(85,82,'MSG'),(86,82,'TYPEdsada'),(87,86,'TYPEdsada'),(88,93,'android.live_wallpaper.package'),(89,93,'android.live_wallpaper.settings'),(90,94,'TYPEdsada'),(91,95,'MSG'),(92,95,'TYPEdsada'),(93,97,'TYPEdsada'),(94,98,'MSG'),(95,98,'TYPEdsada'),(96,105,'Notify_Url_Params'),(97,105,'UrlPath'),(98,105,'ACTIVITY_FLAG'),(99,105,'isFinshClose'),(100,105,'offers_webview_tag'),(101,106,'UrlPath'),(102,106,'ACTIVITY_FLAG'),(103,106,'isFinshClose'),(104,106,'offers_webview_tag'),(105,116,'TYPEdsada'),(106,117,'MSG'),(107,117,'TYPEdsada'),(108,136,'android.intent.extra.TEXT'),(109,136,'android.intent.extra.SUBJECT'),(110,136,'android.intent.extra.EMAIL'),(111,139,'cachedAdView'),(112,142,'android.intent.extra.INTENT'),(113,143,'android.intent.extra.INTENT'),(114,144,'android.intent.extra.TITLE'),(115,144,'android.intent.extra.INTENT'),(116,145,'android.intent.extra.INTENT'),(117,146,'android.intent.extra.TITLE'),(118,146,'android.intent.extra.INTENT'),(119,147,'android.intent.extra.INTENT'),(120,148,'android.intent.extra.TITLE'),(121,148,'android.intent.extra.INTENT'),(122,149,'android.intent.extra.TITLE'),(123,149,'android.intent.extra.INTENT'),(124,151,'command'),(125,163,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,5),(15,9,4),(16,9,2),(17,9,3),(18,10,1),(19,11,4),(20,11,3),(21,11,2),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,9),(27,15,9),(28,16,9),(29,17,9),(30,18,12),(31,19,1),(32,20,9),(33,21,12),(34,22,9),(35,23,13),(36,24,13),(37,25,13),(38,26,13),(39,27,15),(40,27,14),(41,28,9),(42,29,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,10,1),(6,12,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,15,'package',NULL,NULL,NULL,NULL,NULL),(3,16,'package',NULL,NULL,NULL,NULL,NULL),(4,17,'package',NULL,NULL,NULL,NULL,NULL),(5,20,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL),(7,28,'package',NULL,NULL,NULL,NULL,NULL),(8,29,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,46,'application','vnd.android.package-archive'),(2,47,'application','vnd.android.package-archive'),(3,68,'(.*)','(.*)'),(4,70,'application','vnd.android.package-archive'),(5,73,'application','vnd.android.package-archive'),(6,76,'application','vnd.android.package-archive'),(7,80,'application','vnd.android.package-archive'),(8,81,'application','vnd.android.package-archive'),(9,84,'application','vnd.android.package-archive'),(10,108,'application','vnd.android.package-archive'),(11,110,'application','vnd.android.package-archive'),(12,111,'application','vnd.android.package-archive'),(13,112,'application','vnd.android.package-archive'),(14,113,'application','vnd.android.package-archive'),(15,121,'application','vnd.android.package-archive'),(16,124,'application','vnd.android.package-archive'),(17,127,'application','vnd.android.package-archive'),(18,128,'application','vnd.android.package-archive'),(19,129,'application','vnd.android.package-archive'),(20,130,'application','vnd.android.package-archive'),(21,131,'application','vnd.android.package-archive'),(22,132,'application','vnd.android.package-archive'),(23,133,'application','vnd.android.package-archive'),(24,134,'application','vnd.android.package-archive'),(25,135,'application','vnd.android.package-archive'),(26,136,'message','rfc822'),(27,155,'application','vnd.android.package-archive'),(28,157,'application','vnd.android.package-archive'),(29,158,'application','vnd.android.package-archive'),(30,159,'application','vnd.android.package-archive'),(31,160,'application','vnd.android.package-archive'),(32,161,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'com.wqx.blackjack'),(4,4,'com.wqx.blackjack'),(5,5,'com.wqx.blackjack'),(6,6,'com.wqx.blackjack'),(7,7,'com.wqx.blackjack'),(8,8,'com.wqx.blackjack'),(9,9,'com.wqx.blackjack'),(10,10,'com.wqx.blackjack'),(11,11,'com.wqx.blackjack'),(12,12,'com.wqx.blackjack'),(13,15,'com.mediagroup.wcms.view'),(14,16,'com.mediagroup.wcms.view'),(15,19,'com.mediagroup.wcms.view'),(16,20,'com.mediagroup.wcms.view'),(17,21,'com.mediagroup.wcms.view'),(18,23,'com.mediagroup.wcms.view'),(19,24,'com.mediagroup.wcms.view'),(20,25,'com.mediagroup.wcms.view'),(21,28,'com.mediagroup.wcms.view'),(22,29,'com.mediagroup.wcms.view'),(23,30,'com.mediagroup.wcms.view'),(24,31,'com.mediagroup.wcms.view'),(25,35,'com.mediagroup.wcms.view'),(26,36,'com.mediagroup.wcms.view'),(27,37,'com.mediagroup.wcms.view'),(28,38,'com.mediagroup.wcms.view'),(29,39,'com.mediagroup.wcms.view'),(30,41,'com.mediagroup.wcms.view'),(31,43,'com.livegame.wallpaperbxjg'),(32,44,'com.alan.siwameinv1'),(33,45,'com.livegame.wallpaperbxjg'),(34,48,'com.noshufou.android.su'),(35,49,'com.gp.monolith'),(36,50,'com.noshufou.android.su'),(37,51,'com.alan.siwameinv1'),(38,52,'com.gp.monolith'),(39,53,'com.gp.monolith'),(40,56,'com.alan.siwameinv1'),(41,57,'com.livegame.wallpaperbxjg'),(42,58,'com.alan.siwameinv1'),(43,59,'com.noshufou.android.su'),(44,60,'com.livegame.wallpaperbxjg'),(45,61,'com.noshufou.android.su'),(46,63,'com.livegame.wallpaperbxjg'),(47,62,'com.gp.monolith'),(48,66,'com.gp.monolith'),(49,65,'com.livegame.wallpaperbxjg'),(50,69,'com.gp.monolith'),(51,71,'com.gp.monolith'),(52,72,'com.livegame.wallpaperbxjg'),(53,74,'com.alan.siwameinv1'),(54,77,'com.noshufou.android.su'),(55,78,'com.alan.siwameinv1'),(56,79,'com.noshufou.android.su'),(57,83,'com.livegame.wallpaperbxjg'),(58,82,'com.alan.siwameinv1'),(59,85,'com.livegame.wallpaperbxjg'),(60,86,'com.alan.siwameinv1'),(61,87,'NULL-CONSTANT'),(62,90,'(.*)'),(63,91,'(.*)'),(64,92,'(.*)'),(65,94,'com.livegame.wallpaperbxjg'),(66,95,'com.livegame.wallpaperbxjg'),(67,96,'com.gp.tiltmazes'),(68,97,'com.gp.tiltmazes'),(69,98,'com.gp.tiltmazes'),(70,100,'com.gp.tiltmazes'),(71,101,'com.gp.tiltmazes'),(72,103,'(.*)'),(73,104,'(.*)'),(74,105,'com.gp.tiltmazes'),(75,106,'com.gp.tiltmazes'),(76,114,'(.*)'),(77,115,'NULL-CONSTANT'),(78,116,'com.gp.tiltmazes'),(79,117,'com.gp.tiltmazes'),(80,119,'(.*)'),(81,120,'(.*)'),(82,122,'com.noshufou.android.su'),(83,123,'com.noshufou.android.su'),(84,125,'com.gp.tiltmazes'),(85,137,'com.evilsunflower.reader.evilYingyou'),(86,139,'com.evilsunflower.reader.evilYingyou'),(87,141,'com.evilsunflower.reader.evilYingyou'),(88,150,'com.evilsunflower.reader.evilYingyou'),(89,152,'com.android.browser'),(90,163,'com.evilsunflower.reader.evilYingyou');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,18,0),(5,19,0),(6,20,0),(7,30,0),(8,34,0),(9,36,0),(10,38,0),(11,46,0),(12,47,0),(13,55,0),(14,56,0),(15,57,0),(16,58,0),(17,59,0),(18,61,0),(19,61,0),(20,59,0),(21,65,0),(22,77,0),(23,78,0),(24,79,0),(25,80,0),(26,81,0),(27,80,0),(28,81,0),(29,81,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,5,0,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,8,1,0),(12,8,1,0),(13,9,1,0),(14,10,1,0),(15,11,0,0),(16,11,0,0),(17,12,1,0),(18,13,1,0),(19,14,0,0),(20,15,0,0),(21,16,0,0),(22,17,1,0),(23,18,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,1,0),(28,25,0,0),(29,26,0,0),(30,27,0,0),(31,28,0,0),(32,29,1,0),(33,30,1,0),(34,31,1,0),(35,32,0,0),(36,32,0,0),(37,33,0,0),(38,34,1,0),(39,34,1,0),(40,35,1,0),(41,36,0,0),(42,37,1,0),(43,38,0,0),(44,39,0,0),(45,38,0,0),(46,40,1,0),(47,42,1,0),(48,43,1,0),(49,44,0,0),(50,43,1,0),(51,46,0,0),(52,47,0,0),(53,47,0,0),(54,48,1,0),(55,49,1,0),(56,50,0,0),(57,51,0,0),(58,50,0,0),(59,52,1,0),(60,53,0,0),(61,52,1,0),(62,55,0,0),(63,56,0,0),(64,54,1,0),(65,56,0,0),(66,55,0,0),(67,54,1,0),(68,54,1,0),(69,57,1,0),(70,58,1,0),(71,57,1,0),(72,60,0,0),(73,61,1,0),(74,62,1,0),(75,61,1,0),(76,61,1,0),(77,63,1,0),(78,62,1,0),(79,63,1,0),(80,61,1,0),(81,61,1,0),(82,64,0,0),(83,65,1,0),(84,61,1,0),(85,65,1,0),(86,64,0,0),(87,66,0,0),(88,67,1,0),(89,68,1,0),(90,68,1,0),(91,68,1,0),(92,69,0,0),(93,70,1,0),(94,71,0,0),(95,71,0,0),(96,72,0,0),(97,73,0,0),(98,73,0,0),(99,74,1,0),(100,75,1,0),(101,75,1,0),(102,76,1,0),(103,79,1,0),(104,79,1,0),(105,80,0,0),(106,80,0,0),(107,81,1,0),(108,82,1,0),(109,82,1,0),(110,82,1,0),(111,82,1,0),(112,82,1,0),(113,82,1,0),(114,83,0,0),(115,84,0,0),(116,85,0,0),(117,85,0,0),(118,86,1,0),(119,86,1,0),(120,86,1,0),(121,87,1,0),(122,89,1,0),(123,89,1,0),(124,90,1,0),(125,91,0,0),(126,94,1,0),(127,95,1,0),(128,95,1,0),(129,95,1,0),(130,95,1,0),(131,95,1,0),(132,95,1,0),(133,95,1,0),(134,95,1,0),(135,95,1,0),(136,96,1,0),(137,100,0,0),(138,102,1,0),(139,103,0,0),(140,104,1,0),(141,105,0,0),(142,106,1,0),(143,106,1,0),(144,106,1,0),(145,106,1,0),(146,106,1,0),(147,106,1,0),(148,106,1,0),(149,106,1,0),(150,107,0,0),(151,109,1,0),(152,110,0,0),(153,111,1,0),(154,112,1,0),(155,116,1,0),(156,116,1,0),(157,116,1,0),(158,116,1,0),(159,116,1,0),(160,116,1,0),(161,117,1,0),(162,118,1,0),(163,119,0,0),(164,120,1,0),(165,122,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,137,61,2,NULL),(2,141,61,2,NULL),(3,17,61,2,NULL),(4,18,61,2,NULL),(5,22,61,2,NULL),(6,26,61,2,NULL),(7,27,61,2,NULL),(8,40,61,2,NULL),(9,89,61,2,NULL),(10,90,61,2,NULL),(11,91,61,2,NULL),(12,64,61,2,NULL),(13,67,61,2,NULL),(14,103,61,2,NULL),(15,104,61,2,NULL),(16,118,61,2,NULL),(17,119,61,2,NULL),(18,120,61,2,NULL),(19,126,61,2,NULL),(20,138,61,2,NULL),(21,140,61,2,NULL),(22,162,61,2,NULL),(23,165,61,2,NULL),(24,150,66,2,NULL),(25,17,65,2,NULL),(26,18,65,2,NULL),(27,22,65,2,NULL),(28,26,65,2,NULL),(29,27,65,2,NULL),(30,40,65,2,NULL),(31,89,65,2,NULL),(32,90,65,2,NULL),(33,91,65,2,NULL),(34,64,65,2,NULL),(35,67,65,2,NULL),(36,103,65,2,NULL),(37,104,65,2,NULL),(38,118,65,2,NULL),(39,119,65,2,NULL),(40,120,65,2,NULL),(41,126,65,2,NULL),(42,138,65,2,NULL),(43,140,65,2,NULL),(44,162,65,2,NULL),(45,165,65,2,NULL),(46,139,70,2,NULL),(47,163,70,2,NULL),(48,126,2,2,NULL),(49,138,2,2,NULL),(50,140,2,2,NULL),(51,162,2,2,NULL),(52,165,2,2,NULL),(53,126,6,2,NULL),(54,138,6,2,NULL),(55,140,6,2,NULL),(56,162,6,2,NULL),(57,165,6,2,NULL),(58,126,7,2,NULL),(59,138,7,2,NULL),(60,140,7,2,NULL),(61,162,7,2,NULL),(62,165,7,2,NULL),(63,126,18,2,NULL),(64,138,18,2,NULL),(65,140,18,2,NULL),(66,162,18,2,NULL),(67,165,18,2,NULL),(68,126,19,2,NULL),(69,138,19,2,NULL),(70,140,19,2,NULL),(71,162,19,2,NULL),(72,165,19,2,NULL),(73,126,34,2,NULL),(74,138,34,2,NULL),(75,140,34,2,NULL),(76,162,34,2,NULL),(77,165,34,2,NULL),(78,126,36,2,NULL),(79,138,36,2,NULL),(80,140,36,2,NULL),(81,162,36,2,NULL),(82,165,36,2,NULL),(83,126,20,2,NULL),(84,138,20,2,NULL),(85,140,20,2,NULL),(86,162,20,2,NULL),(87,165,20,2,NULL),(88,126,30,2,NULL),(89,138,30,2,NULL),(90,140,30,2,NULL),(91,162,30,2,NULL),(92,165,30,2,NULL),(93,126,38,2,NULL),(94,138,38,2,NULL),(95,140,38,2,NULL),(96,162,38,2,NULL),(97,165,38,2,NULL),(98,126,46,2,NULL),(99,138,46,2,NULL),(100,140,46,2,NULL),(101,162,46,2,NULL),(102,165,46,2,NULL),(103,126,47,2,NULL),(104,138,47,2,NULL),(105,140,47,2,NULL),(106,162,47,2,NULL),(107,165,47,2,NULL),(108,126,55,2,NULL),(109,138,55,2,NULL),(110,140,55,2,NULL),(111,162,55,2,NULL),(112,17,38,2,NULL),(113,165,55,2,NULL),(114,18,38,2,NULL),(115,126,78,2,NULL),(116,22,38,2,NULL),(117,138,78,2,NULL),(118,26,38,2,NULL),(119,140,78,2,NULL),(120,27,38,2,NULL),(121,162,78,2,NULL),(122,40,38,2,NULL),(123,165,78,2,NULL),(124,89,38,2,NULL),(125,126,79,2,NULL),(126,90,38,2,NULL),(127,138,79,2,NULL),(128,91,38,2,NULL),(129,140,79,2,NULL),(130,64,38,2,NULL),(131,162,79,2,NULL),(132,67,38,2,NULL),(133,165,79,2,NULL),(134,103,38,2,NULL),(135,126,80,2,NULL),(136,104,38,2,NULL),(137,138,80,2,NULL),(138,118,38,2,NULL),(139,140,80,2,NULL),(140,119,38,2,NULL),(141,162,80,2,NULL),(142,120,38,2,NULL),(143,165,80,2,NULL),(144,64,2,2,NULL),(145,126,81,2,NULL),(146,67,2,2,NULL),(147,138,81,2,NULL),(148,64,6,2,NULL),(149,140,81,2,NULL),(150,67,6,2,NULL),(151,162,81,2,NULL),(152,64,7,2,NULL),(153,165,81,2,NULL),(154,67,7,2,NULL),(155,17,78,2,NULL),(156,64,18,2,NULL),(157,18,78,2,NULL),(158,67,18,2,NULL),(159,22,78,2,NULL),(160,64,19,2,NULL),(161,26,78,2,NULL),(162,67,19,2,NULL),(163,27,78,2,NULL),(164,64,34,2,NULL),(165,40,78,2,NULL),(166,67,34,2,NULL),(167,89,78,2,NULL),(168,64,36,2,NULL),(169,90,78,2,NULL),(170,67,36,2,NULL),(171,91,78,2,NULL),(172,64,20,2,NULL),(173,64,78,2,NULL),(174,67,20,2,NULL),(175,67,78,2,NULL),(176,64,30,2,NULL),(177,103,78,2,NULL),(178,67,30,2,NULL),(179,104,78,2,NULL),(180,64,46,2,NULL),(181,118,78,2,NULL),(182,67,46,2,NULL),(183,119,78,2,NULL),(184,64,47,2,NULL),(185,120,78,2,NULL),(186,67,47,2,NULL),(187,17,79,2,NULL),(188,64,55,2,NULL),(189,18,79,2,NULL),(190,67,55,2,NULL),(191,22,79,2,NULL),(192,64,79,2,NULL),(193,26,79,2,NULL),(194,67,79,2,NULL),(195,27,79,2,NULL),(196,64,80,2,NULL),(197,40,79,2,NULL),(198,67,80,2,NULL),(199,89,79,2,NULL),(200,64,81,2,NULL),(201,90,79,2,NULL),(202,67,81,2,NULL),(203,91,79,2,NULL),(204,56,4,2,NULL),(205,103,79,2,NULL),(206,56,24,2,NULL),(207,104,79,2,NULL),(208,56,33,2,NULL),(209,118,79,2,NULL),(210,56,44,2,NULL),(211,119,79,2,NULL),(212,56,49,2,NULL),(213,120,79,2,NULL),(214,58,4,2,NULL),(215,17,80,2,NULL),(216,58,24,2,NULL),(217,18,80,2,NULL),(218,58,33,2,NULL),(219,22,80,2,NULL),(220,58,44,2,NULL),(221,26,80,2,NULL),(222,58,49,2,NULL),(223,27,80,2,NULL),(224,82,4,2,NULL),(225,40,80,2,NULL),(226,82,24,2,NULL),(227,89,80,2,NULL),(228,82,33,2,NULL),(229,90,80,2,NULL),(230,82,44,2,NULL),(231,91,80,2,NULL),(232,82,49,2,NULL),(233,103,80,2,NULL),(234,86,4,2,NULL),(235,104,80,2,NULL),(236,86,24,2,NULL),(237,118,80,2,NULL),(238,86,33,2,NULL),(239,119,80,2,NULL),(240,86,44,2,NULL),(241,120,80,2,NULL),(242,86,49,2,NULL),(243,17,81,2,NULL),(244,51,5,2,NULL),(245,18,81,2,NULL),(246,51,28,2,NULL),(247,22,81,2,NULL),(248,51,35,2,NULL),(249,26,81,2,NULL),(250,51,45,2,NULL),(251,27,81,2,NULL),(252,51,54,2,NULL),(253,40,81,2,NULL),(254,17,46,2,NULL),(255,89,81,2,NULL),(256,18,46,2,NULL),(257,90,81,2,NULL),(258,22,46,2,NULL),(259,91,81,2,NULL),(260,26,46,2,NULL),(261,103,81,2,NULL),(262,27,46,2,NULL),(263,104,81,2,NULL),(264,40,46,2,NULL),(265,118,81,2,NULL),(266,89,46,2,NULL),(267,119,81,2,NULL),(268,90,46,2,NULL),(269,120,81,2,NULL),(270,91,46,2,NULL),(271,103,46,2,NULL),(272,104,46,2,NULL),(273,118,46,2,NULL),(274,119,46,2,NULL),(275,120,46,2,NULL),(276,125,48,2,NULL),(277,17,47,2,NULL),(278,18,47,2,NULL),(279,22,47,2,NULL),(280,26,47,2,NULL),(281,27,47,2,NULL),(282,40,47,2,NULL),(283,89,47,2,NULL),(284,90,47,2,NULL),(285,91,47,2,NULL),(286,103,47,2,NULL),(287,104,47,2,NULL),(288,118,47,2,NULL),(289,119,47,2,NULL),(290,120,47,2,NULL),(291,103,2,2,NULL),(292,104,2,2,NULL),(293,118,2,2,NULL),(294,119,2,2,NULL),(295,120,2,2,NULL),(296,103,6,2,NULL),(297,104,6,2,NULL),(298,118,6,2,NULL),(299,119,6,2,NULL),(300,120,6,2,NULL),(301,103,7,2,NULL),(302,104,7,2,NULL),(303,118,7,2,NULL),(304,119,7,2,NULL),(305,120,7,2,NULL),(306,103,18,2,NULL),(307,104,18,2,NULL),(308,118,18,2,NULL),(309,119,18,2,NULL),(310,120,18,2,NULL),(311,103,19,2,NULL),(312,104,19,2,NULL),(313,118,19,2,NULL),(314,119,19,2,NULL),(315,120,19,2,NULL),(316,103,34,2,NULL),(317,104,34,2,NULL),(318,118,34,2,NULL),(319,119,34,2,NULL),(320,120,34,2,NULL),(321,103,36,2,NULL),(322,104,36,2,NULL),(323,118,36,2,NULL),(324,119,36,2,NULL),(325,120,36,2,NULL),(326,103,20,2,NULL),(327,104,20,2,NULL),(328,118,20,2,NULL),(329,119,20,2,NULL),(330,120,20,2,NULL),(331,103,30,2,NULL),(332,104,30,2,NULL),(333,118,30,2,NULL),(334,119,30,2,NULL),(335,120,30,2,NULL),(336,103,55,2,NULL),(337,104,55,2,NULL),(338,118,55,2,NULL),(339,119,55,2,NULL),(340,120,55,2,NULL),(341,97,4,2,NULL),(342,97,24,2,NULL),(343,97,33,2,NULL),(344,97,44,2,NULL),(345,97,49,2,NULL),(346,98,4,2,NULL),(347,98,24,2,NULL),(348,98,33,2,NULL),(349,98,44,2,NULL),(350,98,49,2,NULL),(351,116,4,2,NULL),(352,116,24,2,NULL),(353,116,33,2,NULL),(354,116,44,2,NULL),(355,116,49,2,NULL),(356,117,4,2,NULL),(357,117,24,2,NULL),(358,117,33,2,NULL),(359,117,44,2,NULL),(360,117,49,2,NULL),(361,96,5,2,NULL),(362,96,28,2,NULL),(363,96,35,2,NULL),(364,96,45,2,NULL),(365,96,54,2,NULL),(366,17,55,2,NULL),(367,18,55,2,NULL),(368,22,55,2,NULL),(369,26,55,2,NULL),(370,27,55,2,NULL),(371,40,55,2,NULL),(372,89,55,2,NULL),(373,90,55,2,NULL),(374,91,55,2,NULL),(375,17,19,2,NULL),(376,18,19,2,NULL),(377,22,19,2,NULL),(378,26,19,2,NULL),(379,27,19,2,NULL),(380,40,19,2,NULL),(381,89,19,2,NULL),(382,90,19,2,NULL),(383,91,19,2,NULL),(384,89,2,2,NULL),(385,90,2,2,NULL),(386,91,2,2,NULL),(387,89,6,2,NULL),(388,90,6,2,NULL),(389,91,6,2,NULL),(390,89,7,2,NULL),(391,90,7,2,NULL),(392,91,7,2,NULL),(393,89,18,2,NULL),(394,90,18,2,NULL),(395,91,18,2,NULL),(396,89,34,2,NULL),(397,90,34,2,NULL),(398,91,34,2,NULL),(399,89,36,2,NULL),(400,90,36,2,NULL),(401,91,36,2,NULL),(402,89,20,2,NULL),(403,90,20,2,NULL),(404,91,20,2,NULL),(405,89,30,2,NULL),(406,90,30,2,NULL),(407,91,30,2,NULL),(408,17,34,2,NULL),(409,18,34,2,NULL),(410,22,34,2,NULL),(411,26,34,2,NULL),(412,27,34,2,NULL),(413,40,34,2,NULL),(414,63,4,2,NULL),(415,63,24,2,NULL),(416,63,33,2,NULL),(417,63,44,2,NULL),(418,63,49,2,NULL),(419,65,4,2,NULL),(420,65,24,2,NULL),(421,65,33,2,NULL),(422,65,44,2,NULL),(423,65,49,2,NULL),(424,94,4,2,NULL),(425,94,24,2,NULL),(426,94,33,2,NULL),(427,94,44,2,NULL),(428,94,49,2,NULL),(429,95,4,2,NULL),(430,95,24,2,NULL),(431,95,33,2,NULL),(432,95,44,2,NULL),(433,95,49,2,NULL),(434,57,5,2,NULL),(435,57,28,2,NULL),(436,57,35,2,NULL),(437,57,45,2,NULL),(438,57,54,2,NULL),(439,17,36,2,NULL),(440,18,36,2,NULL),(441,22,36,2,NULL),(442,26,36,2,NULL),(443,27,36,2,NULL),(444,40,36,2,NULL),(445,17,20,2,NULL),(446,18,20,2,NULL),(447,22,20,2,NULL),(448,26,20,2,NULL),(449,27,20,2,NULL),(450,40,20,2,NULL),(451,52,4,2,NULL),(452,52,24,2,NULL),(453,52,33,2,NULL),(454,52,44,2,NULL),(455,52,49,2,NULL),(456,53,4,2,NULL),(457,53,24,2,NULL),(458,53,33,2,NULL),(459,53,44,2,NULL),(460,53,49,2,NULL),(461,62,4,2,NULL),(462,62,24,2,NULL),(463,62,33,2,NULL),(464,62,44,2,NULL),(465,62,49,2,NULL),(466,66,4,2,NULL),(467,66,24,2,NULL),(468,66,33,2,NULL),(469,66,44,2,NULL),(470,66,49,2,NULL),(471,49,5,2,NULL),(472,49,28,2,NULL),(473,49,35,2,NULL),(474,49,45,2,NULL),(475,49,54,2,NULL),(476,17,30,2,NULL),(477,18,30,2,NULL),(478,22,30,2,NULL),(479,26,30,2,NULL),(480,27,30,2,NULL),(481,40,30,2,NULL),(482,4,2,2,NULL),(483,5,3,2,NULL),(484,10,3,2,NULL),(485,17,2,2,NULL),(486,18,2,2,NULL),(487,22,2,2,NULL),(488,26,2,2,NULL),(489,27,2,2,NULL),(490,40,2,2,NULL),(491,6,4,2,NULL),(492,6,24,2,NULL),(493,6,33,2,NULL),(494,6,44,2,NULL),(495,6,49,2,NULL),(496,7,4,2,NULL),(497,7,24,2,NULL),(498,7,33,2,NULL),(499,7,44,2,NULL),(500,7,49,2,NULL),(501,8,4,2,NULL),(502,8,24,2,NULL),(503,8,33,2,NULL),(504,8,44,2,NULL),(505,8,49,2,NULL),(506,9,4,2,NULL),(507,9,24,2,NULL),(508,9,33,2,NULL),(509,9,44,2,NULL),(510,9,49,2,NULL),(511,3,5,2,NULL),(512,3,28,2,NULL),(513,3,35,2,NULL),(514,3,45,2,NULL),(515,3,54,2,NULL),(516,17,6,2,NULL),(517,18,6,2,NULL),(518,22,6,2,NULL),(519,26,6,2,NULL),(520,27,6,2,NULL),(521,40,6,2,NULL),(522,17,7,2,NULL),(523,18,7,2,NULL),(524,22,7,2,NULL),(525,26,7,2,NULL),(526,27,7,2,NULL),(527,40,7,2,NULL),(528,20,10,2,NULL),(529,21,13,2,NULL),(530,23,15,2,NULL),(531,25,15,2,NULL),(532,29,12,2,NULL),(533,30,15,2,NULL),(534,19,13,2,NULL),(535,28,12,2,NULL),(536,17,18,2,NULL),(537,18,18,2,NULL),(538,22,18,2,NULL),(539,26,18,2,NULL),(540,27,18,2,NULL),(541,40,18,2,NULL),(542,41,12,2,NULL),(543,15,16,2,NULL),(544,16,16,2,NULL),(545,35,16,2,NULL),(546,36,16,2,NULL),(547,24,17,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BIND_WALLPAPER'),(21,'android.permission.CHANGE_CONFIGURATION'),(14,'android.permission.CHANGE_NETWORK_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.GET_TASKS'),(19,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(11,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.SET_WALLPAPER'),(13,'android.permission.VIBRATE'),(24,'android.permission.WAKE_LOCK'),(8,'android.permission.WRITE_APN_SETTINGS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(23,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(14,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(23,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(30,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(31,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/',NULL,NULL,NULL),(44,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(45,NULL,NULL,'content://mms/',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(54,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(57,NULL,NULL,'file://',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,1),(2,24,2),(3,45,6),(4,59,12),(5,77,19),(6,78,20),(7,92,29),(8,92,30),(9,92,31),(10,93,32),(11,97,43),(12,97,44),(13,99,45),(14,101,46),(15,108,50),(16,115,52),(17,121,62),(18,123,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,2,7),(14,2,8),(15,2,9),(16,2,10),(17,2,11),(18,2,12),(19,2,13),(20,2,14),(21,3,16),(22,3,1),(23,4,17),(24,3,2),(25,4,16),(26,3,3),(27,4,1),(28,3,4),(29,4,2),(30,3,5),(31,4,18),(32,3,6),(33,4,3),(34,3,7),(35,4,4),(36,3,10),(37,4,5),(38,3,15),(39,4,6),(40,4,7),(41,5,1),(42,5,3),(43,5,4),(44,5,5),(45,5,6),(46,5,7),(47,5,9),(48,5,10),(49,5,12),(50,5,15),(51,5,17),(52,5,16),(53,5,19),(54,5,18),(55,5,21),(56,5,20),(57,6,1),(58,6,2),(59,6,3),(60,6,4),(61,6,5),(62,6,6),(63,6,7),(64,6,13),(65,6,15),(66,6,17),(67,6,16),(68,6,18),(69,6,23),(70,6,24),(71,7,16),(72,7,1),(73,7,3),(74,7,4),(75,7,6),(76,7,7),(77,7,25),(78,7,24),(79,7,9),(80,7,10),(81,7,12);
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

-- Dump completed on 2015-10-12  3:31:50
