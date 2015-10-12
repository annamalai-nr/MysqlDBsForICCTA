-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_185
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(21,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(9,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEARCH'),(10,'android.intent.action.SEND'),(11,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(12,'android.intent.action.WEB_SEARCH'),(13,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(15,'android.settings.WIRELESS_SETTINGS'),(18,'com.android.music.musicservicecommand'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.mine',15),(2,'com.evilsunflower.compass',6),(3,'com.livegame.wallpapershuimohua',1),(4,'com.gp.monolith',2),(5,'com.mogo.shuijinllk',3),(6,'com.evilsunflower.reader.evilJipin',1),(7,'com.cdjm.reader.evilSanguo4',1);
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
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.mine.Main'),(3,1,'com.google.update.Dialog'),(4,1,'com.waps.OffersWebView'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.evilsunflower.compass.Main'),(8,2,'com.vpon.adon.android.WebInApp'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.admob.android.ads.AdMobActivity'),(11,2,'com.evilsunflower.compass.ShowTips'),(12,2,'com.evilsunflower.compass.UpdateService'),(13,2,'com.evilsunflower.compass.Receiver'),(14,3,'com.livegame.wallpapershuimohua.MainActivity'),(15,3,'com.livegame.wallpapershuimohua.SettingsActivity'),(16,3,'com.livegame.wallpapershuimohua.SelectFolderActivity'),(17,3,'com.google.ads.AdActivity'),(18,3,'com.vpon.adon.android.WebInApp'),(19,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(20,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,3,'com.waps.OffersWebView'),(22,3,'com.google.update.Dialog'),(23,3,'com.livegame.wallpapershuimohua.WallpaperSlideshow'),(24,4,'com.gp.monolith.Monolith'),(25,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,3,'com.google.update.UpdateService'),(27,4,'com.google.update.Dialog'),(28,3,'com.google.update.Receiver'),(29,4,'cn.domob.android.ads.DomobActivity'),(30,4,'com.google.update.UpdateService'),(31,4,'com.google.update.Receiver'),(32,5,'com.mogo.shuijinllk.Main'),(33,1,'com.waps.z'),(34,5,'com.google.ssearch.Dialog'),(35,5,'com.google.ads.AdActivity'),(36,5,'com.google.ssearch.SearchService'),(37,5,'com.google.ssearch.Receiver'),(38,1,'com.waps.ac'),(39,1,'com.waps.aa'),(40,1,'com.google.update.Dialog$2'),(41,1,'com.waps.o'),(42,1,'com.google.update.UpdateService$AA'),(43,1,'com.google.update.Dialog$1'),(44,1,'com.waps.q'),(45,2,'com.adwo.adsdk.g'),(46,3,'com.google.update.Dialog$2'),(47,3,'com.waps.q'),(48,3,'com.waps.AppConnect'),(49,4,'cn.domob.android.ads.DomobAdManager'),(50,4,'com.ju6.a'),(51,4,'cn.domob.android.ads.DomobActionReceiver'),(52,3,'com.waps.o'),(53,4,'cn.domob.android.ads.i$6'),(54,3,'com.ju6.a'),(55,3,'com.waps.z'),(56,3,'com.google.update.Dialog$1'),(57,4,'com.google.update.Dialog$2'),(58,3,'com.livegame.wallpapershuimohua.MainActivity$1'),(59,2,'com.madhouse.android.ads._'),(60,5,'com.google.ssearch.Dialog$1'),(61,4,'com.google.update.Dialog$1'),(62,3,'com.waps.aa'),(63,5,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(64,4,'cn.domob.android.ads.DomobAdEngine$2'),(65,2,'com.admob.android.ads.q'),(66,3,'com.livegame.wallpapershuimohua.MainActivity$2'),(67,4,'cn.domob.android.ads.i'),(68,3,'com.google.update.UpdateService$AA'),(69,4,'com.google.update.UpdateService$MyThread'),(70,2,'com.evilsunflower.compass.ShowTips$1'),(71,5,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(72,5,'com.google.ssearch.SearchService$MyThread'),(73,3,'com.waps.ac'),(74,6,'com.evilsunflower.reader.evilJipin.BugReportActivity'),(75,6,'com.evilsunflower.reader.FBReader'),(76,6,'com.evilsunflower.reader.CancelActivity'),(77,6,'com.evilsunflower.reader.image.ImageViewActivity'),(78,6,'com.evilsunflower.reader.TOCActivity'),(79,6,'com.evilsunflower.reader.BookmarksActivity'),(80,6,'com.evilsunflower.reader.BookmarkEditActivity'),(81,6,'com.evilsunflower.reader.Starter'),(82,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(83,6,'com.vpon.adon.android.WebInApp'),(84,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(85,6,'com.millennialmedia.android.VideoPlayer'),(86,6,'net.youmi.android.AdActivity'),(87,6,'com.google.ads.AdActivity'),(88,6,'cn.domob.android.ads.DomobActivity'),(89,6,'com.baidu.AppActivity'),(90,6,'com.guohead.sdk.GuoheAdActivity'),(91,7,'com.cdjm.reader.evilSanguo4.BugReportActivity'),(92,7,'com.cdjm.reader.FBReader'),(93,7,'com.cdjm.reader.CancelActivity'),(94,7,'com.cdjm.reader.image.ImageViewActivity'),(95,7,'com.cdjm.reader.TOCActivity'),(96,7,'com.cdjm.reader.BookmarksActivity'),(97,7,'com.cdjm.reader.control.ShowTips'),(98,7,'com.cdjm.reader.BookmarkEditActivity'),(99,7,'com.cdjm.reader.Starter'),(100,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(101,7,'com.vpon.adon.android.WebInApp'),(102,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(103,7,'com.millennialmedia.android.VideoPlayer'),(104,7,'net.youmi.android.AdActivity'),(105,7,'com.google.ads.AdActivity'),(106,7,'com.guohead.sdk.GuoheAdActivity'),(107,7,'cn.domob.android.ads.DomobActivity'),(108,7,'com.cdjm.reader.control.UpdateService'),(109,7,'com.cdjm.reader.control.Receiver'),(110,6,'cn.domob.android.ads.e'),(111,6,'net.youmi.android.t'),(112,6,'cn.domob.android.ads.DomobAdManager'),(113,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(114,6,'com.baidu.as'),(115,6,'com.baidu.al'),(116,6,'com.millennialmedia.android.MillennialMediaView'),(117,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(118,6,'cn.domob.android.ads.o'),(119,6,'com.adwo.adsdk.M'),(120,6,'com.ju6.mms.util.SqliteWrapper'),(121,6,'net.youmi.android.be'),(122,6,'com.ju6.c'),(123,6,'com.madhouse.android.ads._'),(124,6,'cn.domob.android.ads.g$1'),(125,6,'cn.domob.android.a.a$a'),(126,6,'com.ju6.mms.pdu.PduPersister'),(127,6,'cn.domob.android.ads.o$5'),(128,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(129,6,'net.youmi.android.eo'),(130,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'Notify_Id'),(2,1,'url'),(3,4,'Notify_Url_Params'),(4,3,'MSG'),(5,4,'UrlPath'),(6,2,'WAPS_ID'),(7,4,'WAPS_ID'),(8,2,'APP_ID'),(9,4,'APP_ID'),(10,5,'ST_MY_PID'),(11,4,'URL'),(12,4,'isFinshClose'),(13,4,'Offers_URL'),(14,4,'ACTIVITY_FLAG'),(15,4,'CLIENT_PACKAGE'),(16,1,'shouldMakeOverlayTransparent'),(17,2,'WAPS_PID'),(18,4,'WAPS_PID'),(19,1,'overlayTransition'),(20,4,'offers_webview_tag'),(21,2,'DEVICE_ID'),(22,4,'DEVICE_ID'),(23,1,'shouldShowTitlebar'),(24,4,'URL_PARAMS'),(25,5,'ST_START_DELAY'),(26,2,'CLIENT_PACKAGE'),(27,4,'SHWO_FLAG'),(28,1,'overlayTitle'),(29,1,'shouldResizeOverlay'),(30,4,'USER_ID'),(31,1,'transitionTime'),(32,1,'shouldEnableBottomBar'),(33,1,'shouldShowBottomBar'),(34,3,'TYPEdsada'),(35,10,'s'),(36,10,'t'),(37,10,'c'),(38,10,'or'),(39,10,'json'),(40,10,'a'),(41,10,'skd'),(42,10,'p'),(43,10,'sc'),(44,9,'overlayTransition'),(45,10,'ru'),(46,20,'shouldShowTitlebar'),(47,21,'WAPS_PID'),(48,14,'WAPS_PID'),(49,18,'adWidth'),(50,21,'CLIENT_PACKAGE'),(51,14,'CLIENT_PACKAGE'),(52,21,'Notify_Id'),(53,20,'url'),(54,20,'shouldEnableBottomBar'),(55,21,'USER_ID'),(56,22,'TYPEdsada'),(57,21,'Offers_URL'),(58,20,'shouldMakeOverlayTransparent'),(59,29,'appId'),(60,25,'url'),(61,25,'shouldResizeOverlay'),(62,30,'DOMOB_TEST_MODE'),(63,25,'DOMOB_TEST_MODE'),(64,27,'MSG'),(65,20,'transitionTime'),(66,19,'isTestMode'),(67,20,'shouldShowBottomBar'),(68,19,'Adwo_PID'),(69,21,'WAPS_ID'),(70,14,'WAPS_ID'),(71,20,'shouldResizeOverlay'),(72,21,'SHWO_FLAG'),(73,21,'DEVICE_ID'),(74,14,'DEVICE_ID'),(75,21,'APP_ID'),(76,14,'APP_ID'),(77,20,'overlayTransition'),(78,30,'DOMOB_PID'),(79,25,'DOMOB_PID'),(80,26,'ST_MY_PID'),(81,18,'url'),(82,21,'URL'),(83,20,'overlayTitle'),(84,10,'$'),(85,10,'ad'),(86,9,'shouldMakeOverlayTransparent'),(87,9,'shouldShowTitlebar'),(88,29,'actType'),(89,10,'oi'),(90,10,'nosk'),(91,9,'overlayTitle'),(92,12,'SAFE_PID'),(93,10,'si'),(94,10,'sd'),(95,34,'action'),(96,10,'cbo'),(97,34,'com.google.ads.AdOpener'),(98,11,'MM'),(99,9,'shouldEnableBottomBar'),(100,9,'url'),(101,10,'ap'),(102,10,'u'),(103,10,'o'),(104,25,'shouldMakeOverlayTransparent'),(105,8,'adWidth'),(106,10,'int'),(107,30,'ST_START_DELAY'),(108,8,'(.*)'),(109,10,'su'),(110,21,'UrlPath'),(111,25,'shouldShowBottomBar'),(112,30,'ST_MY_PID'),(113,10,'au'),(114,25,'overlayTitle'),(115,29,'appName'),(116,10,'sin'),(117,12,'SAFE_START'),(118,9,'transitionTime'),(119,22,'MSG'),(120,9,'shouldResizeOverlay'),(121,21,'isFinshClose'),(122,10,'cs'),(123,7,'ADMOB_PUBLISHER_ID'),(124,7,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(125,7,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(126,25,'shouldShowTitlebar'),(127,10,'msm'),(128,25,'transitionTime'),(129,10,'tr'),(130,10,'mi'),(131,10,'b'),(132,9,'shouldShowBottomBar'),(133,25,'overlayTransition'),(134,25,'shouldEnableBottomBar'),(135,10,'sku'),(136,30,'DOMOB_ALLOW_LOCATION'),(137,10,'rd'),(138,25,'DOMOB_ALLOW_LOCATION'),(139,8,'url'),(140,27,'TYPEdsada'),(141,21,'Notify_Url_Params'),(142,33,'TYPEdsada'),(143,21,'offers_webview_tag'),(144,21,'URL_PARAMS'),(145,21,'ACTIVITY_FLAG'),(146,15,'folder'),(147,34,'params'),(148,33,'MSG'),(149,26,'ST_START_DELAY'),(150,48,'url'),(151,55,'curl'),(152,51,'adName'),(153,41,'GH_APPKEY'),(154,50,'shouldMakeOverlayTransparent'),(155,55,'clklogurl'),(156,51,'cached'),(157,45,'query'),(158,55,'tit'),(159,48,'shouldShowBottomBar'),(160,48,'transitionTime'),(161,52,'EB80F3291A8E469c962CA133BDC549D7'),(162,50,'cachedAdView'),(163,55,'surl'),(164,50,'canAccelerate'),(165,50,'shouldShowTitlebar'),(166,52,'172C94EDC717477aBF600D7898A64A8E'),(167,49,'adWidth'),(168,55,'limg'),(169,48,'shouldMakeOverlayTransparent'),(170,56,'link'),(171,41,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(172,48,'overlayTitle'),(173,48,'shouldShowTitlebar'),(174,50,'shouldShowBottomBar'),(175,41,'query'),(176,51,'DOMOB_ALLOW_LOCATION'),(177,45,'DOMOB_ALLOW_LOCATION'),(178,50,'DOMOB_ALLOW_LOCATION'),(179,41,'DOMOB_ALLOW_LOCATION'),(180,48,'DOMOB_ALLOW_LOCATION'),(181,52,'DOMOB_ALLOW_LOCATION'),(182,54,'appId'),(183,48,'shouldEnableBottomBar'),(184,51,'DOMOB_PID'),(185,45,'DOMOB_PID'),(186,50,'DOMOB_PID'),(187,41,'DOMOB_PID'),(188,48,'DOMOB_PID'),(189,52,'DOMOB_PID'),(190,52,'D50EF1926ADD471892E72BCE6D7E032C'),(191,50,'overlayTransition'),(192,50,'shouldEnableBottomBar'),(193,48,'overlayTransition'),(194,51,'videoPosition'),(195,50,'overlayTitle'),(196,51,'videoCompleted'),(197,51,'logSet'),(198,51,'videoAd'),(199,48,'shouldResizeOverlay'),(200,51,'isCachedAd'),(201,51,'DOMOB_TEST_MODE'),(202,45,'DOMOB_TEST_MODE'),(203,50,'DOMOB_TEST_MODE'),(204,41,'DOMOB_TEST_MODE'),(205,48,'DOMOB_TEST_MODE'),(206,52,'DOMOB_TEST_MODE'),(207,50,'shouldResizeOverlay'),(208,49,'url'),(209,50,'transitionTime'),(210,41,'Adwo_PID'),(211,52,'D780FBF4215247bcBB1AC0AD33C474FE'),(212,51,'shouldShowBottomBar'),(213,41,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(214,54,'actType'),(215,54,'appName');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,23,'s',1,17,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,44,'r',1,NULL,NULL),(38,47,'r',1,NULL,NULL),(39,51,'r',1,NULL,NULL),(40,74,'a',0,NULL,NULL),(41,75,'a',1,NULL,NULL),(42,76,'a',0,NULL,NULL),(43,77,'a',0,NULL,NULL),(44,78,'a',0,NULL,NULL),(45,79,'a',1,NULL,NULL),(46,80,'a',0,NULL,NULL),(47,81,'a',0,NULL,NULL),(48,82,'a',0,NULL,NULL),(49,83,'a',0,NULL,NULL),(50,84,'a',0,NULL,NULL),(51,85,'a',0,NULL,NULL),(52,86,'a',0,NULL,NULL),(53,87,'a',0,NULL,NULL),(54,88,'a',0,NULL,NULL),(55,89,'a',0,NULL,NULL),(56,90,'a',0,NULL,NULL),(57,91,'a',0,NULL,NULL),(58,92,'a',1,NULL,NULL),(59,93,'a',0,NULL,NULL),(60,94,'a',0,NULL,NULL),(61,95,'a',0,NULL,NULL),(62,96,'a',1,NULL,NULL),(63,97,'a',0,NULL,NULL),(64,98,'a',0,NULL,NULL),(65,99,'a',0,NULL,NULL),(66,100,'a',0,NULL,NULL),(67,101,'a',0,NULL,NULL),(68,102,'a',0,NULL,NULL),(69,103,'a',0,NULL,NULL),(70,104,'a',0,NULL,NULL),(71,105,'a',0,NULL,NULL),(72,106,'a',0,NULL,NULL),(73,107,'a',0,NULL,NULL),(74,108,'s',0,NULL,NULL),(75,109,'r',1,NULL,NULL),(76,110,'r',1,NULL,NULL),(77,119,'r',1,NULL,NULL),(78,129,'r',1,NULL,NULL),(79,130,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,5),(3,3,4),(4,4,4),(5,5,4),(6,6,3),(7,7,4),(8,8,6),(9,9,4),(10,10,5),(11,11,3),(12,12,5),(13,13,7),(14,14,22),(15,15,14),(16,16,30),(17,16,25),(18,17,28),(19,18,30),(20,19,21),(21,20,30),(22,20,25),(23,21,26),(24,22,21),(25,23,22),(26,24,30),(27,25,26),(28,26,27),(29,27,7),(30,28,30),(31,29,14),(32,30,8),(33,31,33),(34,32,27),(35,33,21),(36,34,13),(37,35,35),(38,36,31),(39,37,32),(40,37,35),(41,38,25),(42,38,30),(43,39,34),(44,40,8),(45,41,14),(46,42,30),(47,42,25),(48,43,26),(49,44,30),(50,45,11),(51,46,21),(52,47,32),(53,47,35),(54,48,35),(55,49,26),(56,50,35),(57,51,16),(58,51,21),(59,52,36),(60,53,21),(61,54,52),(62,55,50),(63,55,51),(64,55,52),(65,55,48),(66,55,45),(67,55,41),(68,56,52),(69,57,51),(70,57,52),(71,57,41),(72,57,45),(73,58,51),(74,58,52),(75,58,41),(76,58,45),(77,59,45),(78,59,41),(79,59,52),(80,60,41),(81,61,45),(82,61,51),(83,61,52),(84,61,41),(85,62,45),(86,62,52),(87,62,41),(88,63,45),(89,63,41),(90,63,52),(91,63,51),(92,64,45),(93,64,41),(94,64,51),(95,64,52),(96,65,41),(97,65,45),(98,65,52),(99,66,41),(100,66,45),(101,66,48),(102,66,50),(103,66,51),(104,66,52),(105,67,45),(106,67,51),(107,67,52),(108,67,41),(109,68,41),(110,69,52),(111,70,51),(112,70,52),(113,70,45),(114,70,41),(115,71,41),(116,72,41),(117,72,45),(118,72,52),(119,73,41),(120,74,41),(121,75,52),(122,75,50),(123,75,51),(124,75,45),(125,75,41),(126,75,48),(127,76,51),(128,76,52),(129,76,41),(130,76,45),(131,76,48),(132,76,50),(133,77,41),(134,78,41),(135,79,41),(136,80,52),(137,80,51),(138,80,41),(139,80,45),(140,81,41),(141,82,50),(142,82,52),(143,82,51),(144,82,48),(145,82,41),(146,83,41),(147,83,52),(148,83,45),(149,84,45),(150,85,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,33,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(2,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(3,38,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(4,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(5,39,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(6,40,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,41,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(8,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(10,42,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(11,43,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(13,45,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(14,46,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,48,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(16,49,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(17,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,50,'<com.ju6.a: boolean b()>',178,'p',NULL),(19,52,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,53,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(21,54,'<com.ju6.a: boolean b()>',178,'p',NULL),(22,55,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,56,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(24,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,57,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,7,'<com.evilsunflower.compass.Main: void onCreate(android.os.Bundle)>',47,'s',NULL),(28,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(29,58,'<com.livegame.wallpapershuimohua.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(30,59,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(31,60,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(32,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,62,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(34,13,'<com.evilsunflower.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,36,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(36,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,63,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,64,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(39,35,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(40,65,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(41,66,'<com.livegame.wallpapershuimohua.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(42,67,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(43,68,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(44,69,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(45,70,'<com.evilsunflower.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(47,71,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,36,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(49,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(50,72,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(51,73,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(52,37,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(53,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(54,111,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(55,112,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(56,113,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(57,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(58,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(59,114,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(60,75,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(61,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(62,115,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(63,116,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(64,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(65,117,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(66,118,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(67,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(68,120,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(69,121,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(70,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(71,122,'<com.ju6.c: boolean b()>',195,'p',0),(72,123,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(73,122,'<com.ju6.c: boolean b()>',192,'p',NULL),(74,120,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(75,124,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,125,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(77,122,'<com.ju6.c: void run()>',146,'p',NULL),(78,75,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(79,122,'<com.ju6.c: boolean b()>',272,'p',NULL),(80,85,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(81,126,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(82,127,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,128,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(84,79,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(85,120,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,6,1),(3,7,1),(4,10,7),(5,11,6),(6,14,1),(7,15,1),(8,16,1),(9,17,1),(10,20,9),(11,21,10),(12,22,11),(13,23,6),(14,24,11),(15,25,10),(16,26,10),(17,27,6),(18,28,6),(19,29,9),(20,30,6),(21,31,6),(22,32,6),(23,33,11),(24,34,10),(25,35,6),(26,36,7),(27,37,10),(28,38,10),(29,39,10),(30,40,11),(31,42,6),(32,43,10),(33,44,6),(34,47,10),(35,48,6),(36,49,6),(37,50,6),(38,52,6),(39,53,11),(40,54,6),(41,55,6),(42,56,6),(43,57,6),(44,58,12),(45,59,6),(46,60,6),(47,61,12),(48,62,1),(49,63,10),(50,65,1),(51,66,6),(52,68,9),(53,70,7),(54,75,13),(55,76,7),(56,77,1),(57,80,1),(58,87,14),(59,88,6),(60,89,6),(61,90,1),(62,91,14),(63,92,1),(64,93,1),(65,94,1),(66,95,1),(67,97,1),(68,98,1),(69,99,15),(70,100,1),(71,105,1),(72,106,1),(73,110,17),(74,111,17),(75,112,17),(76,113,17),(77,114,17),(78,115,17),(79,116,17),(80,117,17),(81,118,10),(82,119,6),(83,120,6),(84,121,6),(85,123,6),(86,124,6),(87,125,18),(88,126,9),(89,128,6),(90,130,6),(91,131,6),(92,132,6),(93,133,6),(94,134,6),(95,135,6),(96,136,6),(97,137,6),(98,138,6),(99,139,6),(100,142,6),(101,144,6),(102,145,6),(103,146,6),(104,147,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,1),(2,7,2),(3,14,2),(4,15,1),(5,16,1),(6,17,2),(7,62,1),(8,65,2),(9,77,1),(10,80,2),(11,87,3),(12,89,3),(13,90,2),(14,91,3),(15,92,1),(16,93,2),(17,94,1),(18,95,1),(19,97,1),(20,98,2),(21,100,2),(22,105,1),(23,106,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/Dialog'),(2,3,'com/google/update/Dialog'),(3,4,'NULL-CONSTANT'),(4,8,'com/waps/OffersWebView'),(5,9,'com/waps/OffersWebView'),(6,12,'com/google/update/UpdateService'),(7,13,'(.*)'),(8,18,'com/google/update/Dialog'),(9,19,'com/google/update/Dialog'),(10,28,'com.google.android.maps.MapsActivity'),(11,35,'com/adwo/adsdk/AdwoAdBrowserActivity'),(12,41,'com/waps/OffersWebView'),(13,45,'com/google/update/UpdateService'),(14,44,'com.google.android.maps.MapsActivity'),(15,50,'com.google.android.maps.MapsActivity'),(16,55,'com.google.android.maps.MapsActivity'),(17,64,'com/google/update/Dialog'),(18,66,'com.google.android.maps.MapsActivity'),(19,67,'com/google/update/Dialog'),(20,69,'com/google/update/Dialog'),(21,72,'com/evilsunflower/compass/UpdateService'),(22,71,'com/google/update/Dialog'),(23,73,'com/google/update/Dialog'),(24,74,'com/google/update/Dialog'),(25,79,'com/evilsunflower/compass/UpdateService'),(26,78,'com/waps/OffersWebView'),(27,81,'com/google/ssearch/Dialog'),(28,84,'com/google/update/UpdateService'),(29,82,'com/google/ssearch/Dialog'),(30,83,'com/waps/OffersWebView'),(31,86,'com/livegame/wallpapershuimohua/SettingsActivity'),(32,101,'com/google/ssearch/Dialog'),(33,102,'com/google/ssearch/Dialog'),(34,103,'com/google/update/Dialog'),(35,104,'com/google/update/Dialog'),(36,107,'NULL-CONSTANT'),(37,108,'com/google/ssearch/SearchService'),(38,109,'(.*)'),(39,122,'com.evilsunflower.reader.FBReader'),(40,124,'com.android.browser.BrowserActivity'),(41,129,'com/millennialmedia/android/MMAdViewOverlayActivity'),(42,140,'com.evilsunflower.reader.FBReader'),(43,141,'com/millennialmedia/android/MMAdViewOverlayActivity'),(44,149,'com/evilsunflower/reader/BookmarkEditActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,11,2),(3,20,3),(4,21,4),(5,22,5),(6,23,6),(7,24,7),(8,25,8),(9,26,9),(10,27,10),(11,29,11),(12,30,12),(13,31,13),(14,33,14),(15,34,15),(16,39,16),(17,42,18),(18,43,19),(19,44,21),(20,47,22),(21,48,23),(22,50,24),(23,49,25),(24,52,27),(25,53,28),(26,55,29),(27,54,30),(28,56,31),(29,57,32),(30,59,34),(31,60,33),(32,63,35),(33,66,36),(34,87,38),(35,88,39),(36,89,40),(37,91,41),(38,119,43),(39,120,44),(40,121,45),(41,123,46),(42,124,47),(43,126,48),(44,128,49),(45,129,50),(46,130,53),(47,131,54),(48,132,55),(49,133,56),(50,134,57),(51,135,58),(52,136,59),(53,137,60),(54,138,61),(55,139,62),(56,141,71),(57,142,72),(58,144,73),(59,145,74),(60,146,75),(61,147,76);
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
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,8,'UrlPath'),(5,8,'ACTIVITY_FLAG'),(6,8,'isFinshClose'),(7,8,'offers_webview_tag'),(8,9,'Notify_Url_Params'),(9,9,'UrlPath'),(10,9,'ACTIVITY_FLAG'),(11,9,'isFinshClose'),(12,9,'offers_webview_tag'),(13,18,'TYPEdsada'),(14,19,'MSG'),(15,19,'TYPEdsada'),(16,21,'android.intent.extra.TEXT'),(17,21,'android.intent.extra.SUBJECT'),(18,21,'android.intent.extra.EMAIL'),(19,22,'sms_body'),(20,25,'android.intent.extra.EMAIL'),(21,26,'android.intent.extra.TEXT'),(22,26,'android.intent.extra.EMAIL'),(23,34,'android.intent.extra.EMAIL'),(24,35,'url'),(25,38,'android.intent.extra.TEXT'),(26,38,'android.intent.extra.SUBJECT'),(27,38,'android.intent.extra.EMAIL'),(28,39,'android.intent.extra.TEXT'),(29,39,'android.intent.extra.SUBJECT'),(30,39,'android.intent.extra.EMAIL'),(31,41,'USER_ID'),(32,41,'CLIENT_PACKAGE'),(33,41,'Offers_URL'),(34,41,'offers_webview_tag'),(35,41,'URL_PARAMS'),(36,47,'android.intent.extra.TEXT'),(37,47,'android.intent.extra.EMAIL'),(38,53,'sms_body'),(39,58,'query'),(40,64,'MSG'),(41,64,'TYPEdsada'),(42,67,'TYPEdsada'),(43,69,'TYPEdsada'),(44,71,'MSG'),(45,71,'TYPEdsada'),(46,73,'MSG'),(47,73,'TYPEdsada'),(48,74,'TYPEdsada'),(49,75,'android.live_wallpaper.package'),(50,75,'android.live_wallpaper.settings'),(51,78,'Notify_Url_Params'),(52,78,'UrlPath'),(53,78,'ACTIVITY_FLAG'),(54,78,'isFinshClose'),(55,81,'MSG'),(56,78,'offers_webview_tag'),(57,81,'TYPEdsada'),(58,82,'TYPEdsada'),(59,83,'UrlPath'),(60,83,'ACTIVITY_FLAG'),(61,83,'isFinshClose'),(62,83,'offers_webview_tag'),(63,101,'MSG'),(64,101,'TYPEdsada'),(65,102,'TYPEdsada'),(66,103,'TYPEdsada'),(67,104,'MSG'),(68,104,'TYPEdsada'),(69,110,'android.intent.extra.INTENT'),(70,111,'android.intent.extra.INTENT'),(71,112,'android.intent.extra.TITLE'),(72,112,'android.intent.extra.INTENT'),(73,113,'android.intent.extra.INTENT'),(74,114,'android.intent.extra.TITLE'),(75,114,'android.intent.extra.INTENT'),(76,115,'android.intent.extra.INTENT'),(77,116,'android.intent.extra.TITLE'),(78,116,'android.intent.extra.INTENT'),(79,117,'android.intent.extra.TITLE'),(80,117,'android.intent.extra.INTENT'),(81,118,'android.intent.extra.TEXT'),(82,118,'android.intent.extra.SUBJECT'),(83,118,'android.intent.extra.EMAIL'),(84,125,'command'),(85,129,'cachedAdView'),(86,141,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,5),(12,8,2),(13,8,3),(14,8,4),(15,9,4),(16,9,2),(17,9,3),(18,10,1),(19,11,4),(20,11,3),(21,11,2),(22,12,8),(23,13,8),(24,14,8),(25,15,1),(26,16,16),(27,17,16),(28,18,16),(29,19,1),(30,20,16),(31,21,2),(32,21,3),(33,21,4),(34,22,8),(35,23,19),(36,23,20),(37,24,21),(38,25,21),(39,26,21),(40,27,21),(41,28,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,10,1),(6,15,1),(7,19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,13,'package',NULL,NULL,NULL,NULL,NULL),(3,14,'package',NULL,NULL,NULL,NULL,NULL),(4,22,'package',NULL,NULL,NULL,NULL,NULL),(5,28,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,23,'*','*'),(4,31,'(.*)','(.*)'),(5,38,'message','rfc882'),(6,42,'(.*)','(.*)'),(7,48,'application','vnd.android.package-archive'),(8,49,'application','vnd.android.package-archive'),(9,52,'application','vnd.android.package-archive'),(10,54,'application','vnd.android.package-archive'),(11,56,'application','vnd.android.package-archive'),(12,57,'application','vnd.android.package-archive'),(13,59,'*','*'),(14,60,'application','vnd.android.package-archive'),(15,91,'(.*)','(.*)'),(16,118,'message','rfc822'),(17,121,'application','vnd.android.package-archive'),(18,130,'application','vnd.android.package-archive'),(19,131,'application','vnd.android.package-archive'),(20,132,'application','vnd.android.package-archive'),(21,133,'application','vnd.android.package-archive'),(22,134,'application','vnd.android.package-archive'),(23,135,'application','vnd.android.package-archive'),(24,136,'application','vnd.android.package-archive'),(25,137,'application','vnd.android.package-archive'),(26,138,'application','vnd.android.package-archive'),(27,142,'application','vnd.android.package-archive'),(28,144,'application','vnd.android.package-archive'),(29,145,'application','vnd.android.package-archive'),(30,146,'application','vnd.android.package-archive'),(31,147,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.mine'),(2,3,'com.ps.mine'),(3,4,'NULL-CONSTANT'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'com.ps.mine'),(7,9,'com.ps.mine'),(8,12,'com.ps.mine'),(9,13,'(.*)'),(10,14,'com.ps.mine'),(11,15,'com.ps.mine'),(12,16,'com.noshufou.android.su'),(13,17,'com.noshufou.android.su'),(14,18,'com.ps.mine'),(15,19,'com.ps.mine'),(16,28,'com.google.android.apps.maps'),(17,35,'com.evilsunflower.compass'),(18,41,'com.livegame.wallpapershuimohua'),(19,45,'com.livegame.wallpapershuimohua'),(20,44,'com.google.android.apps.maps'),(21,50,'com.google.android.apps.maps'),(22,55,'com.google.android.apps.maps'),(23,62,'com.noshufou.android.su'),(24,65,'com.noshufou.android.su'),(25,64,'com.gp.monolith'),(26,66,'com.google.android.apps.maps'),(27,67,'com.gp.monolith'),(28,69,'com.livegame.wallpapershuimohua'),(29,72,'com.evilsunflower.compass'),(30,71,'com.livegame.wallpapershuimohua'),(31,73,'com.gp.monolith'),(32,74,'com.gp.monolith'),(33,77,'com.noshufou.android.su'),(34,79,'com.evilsunflower.compass'),(35,80,'com.noshufou.android.su'),(36,78,'com.livegame.wallpapershuimohua'),(37,81,'com.mogo.shuijinllk'),(38,84,'com.gp.monolith'),(39,82,'com.mogo.shuijinllk'),(40,83,'com.livegame.wallpapershuimohua'),(41,86,'com.livegame.wallpapershuimohua'),(42,90,'com.livegame.wallpapershuimohua'),(43,92,'com.livegame.wallpapershuimohua'),(44,93,'com.gp.monolith'),(45,94,'com.noshufou.android.su'),(46,95,'com.gp.monolith'),(47,97,'(.*)'),(48,98,'com.noshufou.android.su'),(49,100,'(.*)'),(50,101,'com.mogo.shuijinllk'),(51,102,'com.mogo.shuijinllk'),(52,103,'com.livegame.wallpapershuimohua'),(53,104,'com.livegame.wallpapershuimohua'),(54,105,'com.mogo.shuijinllk'),(55,106,'com.mogo.shuijinllk'),(56,107,'NULL-CONSTANT'),(57,108,'com.mogo.shuijinllk'),(58,109,'(.*)'),(59,122,'com.evilsunflower.reader.evilJipin'),(60,124,'com.android.browser'),(61,129,'com.evilsunflower.reader.evilJipin'),(62,140,'com.evilsunflower.reader.evilJipin'),(63,141,'com.evilsunflower.reader.evilJipin'),(64,149,'com.evilsunflower.reader.evilJipin');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,13,0),(5,14,0),(6,23,0),(7,24,0),(8,28,0),(9,31,0),(10,32,0),(11,36,0),(12,37,0),(13,38,0),(14,39,0),(15,41,0),(16,41,0),(17,45,0),(18,58,0),(19,58,0),(20,62,0),(21,75,0),(22,76,0),(23,77,0),(24,78,0),(25,79,0),(26,77,0),(27,76,0),(28,76,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,5,0,0),(9,5,0,0),(10,6,1,0),(11,7,1,0),(12,8,0,0),(13,9,0,0),(14,10,1,0),(15,10,1,0),(16,11,1,0),(17,11,1,0),(18,12,0,0),(19,12,0,0),(20,13,1,0),(21,13,1,0),(22,13,1,0),(23,13,1,0),(24,13,1,0),(25,13,1,0),(26,13,1,0),(27,13,1,0),(28,13,0,0),(29,13,1,0),(30,13,1,0),(31,13,1,0),(32,13,1,0),(33,13,1,0),(34,13,1,0),(35,13,0,0),(36,14,1,0),(37,13,1,0),(38,13,1,0),(39,13,1,0),(40,13,1,0),(41,15,0,0),(42,13,1,0),(43,13,1,0),(44,13,0,0),(45,17,0,0),(46,13,1,0),(47,13,1,0),(48,19,1,0),(49,20,1,0),(50,13,0,0),(51,20,1,0),(52,20,1,0),(53,13,1,0),(54,20,1,0),(55,13,0,0),(56,22,1,0),(57,20,1,0),(58,13,1,0),(59,13,1,0),(60,20,1,0),(61,13,1,0),(62,23,1,0),(63,13,1,0),(64,24,0,0),(65,23,1,0),(66,13,0,0),(67,24,0,0),(68,13,1,0),(69,25,0,0),(70,26,1,0),(71,25,0,0),(72,27,0,0),(73,28,0,0),(74,28,0,0),(75,29,1,0),(76,31,1,0),(77,32,1,0),(78,33,0,0),(79,34,0,0),(80,32,1,0),(81,35,0,0),(82,35,0,0),(83,33,0,0),(84,36,0,0),(85,37,1,0),(86,41,0,0),(87,39,1,0),(88,42,1,0),(89,39,1,0),(90,43,1,0),(91,39,1,0),(92,43,1,0),(93,44,1,0),(94,45,1,0),(95,44,1,0),(96,46,1,0),(97,46,1,0),(98,45,1,0),(99,47,1,0),(100,46,1,0),(101,48,0,0),(102,48,0,0),(103,49,0,0),(104,49,0,0),(105,50,1,0),(106,50,1,0),(107,51,0,0),(108,52,0,0),(109,53,0,0),(110,54,1,0),(111,54,1,0),(112,54,1,0),(113,54,1,0),(114,54,1,0),(115,54,1,0),(116,54,1,0),(117,54,1,0),(118,56,1,0),(119,57,1,0),(120,58,1,0),(121,59,1,0),(122,60,0,0),(123,61,1,0),(124,62,0,0),(125,63,1,0),(126,64,1,0),(127,65,1,0),(128,66,1,0),(129,67,0,0),(130,69,1,0),(131,69,1,0),(132,69,1,0),(133,69,1,0),(134,69,1,0),(135,69,1,0),(136,69,1,0),(137,69,1,0),(138,69,1,0),(139,70,1,0),(140,78,0,0),(141,80,0,0),(142,82,1,0),(143,82,1,0),(144,82,1,0),(145,82,1,0),(146,82,1,0),(147,82,1,0),(148,83,1,0),(149,84,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BIND_WALLPAPER'),(18,'android.permission.CHANGE_CONFIGURATION'),(6,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(15,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(26,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(27,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://mms/',NULL,NULL,NULL),(52,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(65,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(66,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(67,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(68,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(69,NULL,NULL,'content://mms/',NULL,NULL,NULL),(70,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(73,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(76,NULL,NULL,'file://',NULL,NULL,NULL),(77,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,16,17),(2,18,20),(3,21,26),(4,30,37),(5,55,42),(6,68,51),(7,68,52),(8,72,63),(9,73,64),(10,74,65),(11,74,66),(12,74,67),(13,76,68),(14,77,69),(15,79,70),(16,85,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,3,1),(18,3,2),(19,3,3),(20,3,4),(21,3,5),(22,3,6),(23,3,7),(24,3,8),(25,3,10),(26,3,12),(27,4,1),(28,4,2),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,9),(35,4,10),(36,4,11),(37,4,12),(38,4,14),(39,4,15),(40,4,16),(41,5,16),(42,5,1),(43,5,18),(44,5,4),(45,5,5),(46,5,6),(47,5,8),(48,5,10),(49,5,12),(50,5,14),(51,5,15),(52,6,1),(53,6,19),(54,6,4),(55,6,5),(56,6,7),(57,6,8),(58,6,9),(59,6,10),(60,6,11),(61,6,12),(62,6,13),(63,7,1),(64,7,19),(65,7,4),(66,7,5),(67,7,7),(68,7,8),(69,7,9),(70,7,10),(71,7,11),(72,7,12),(73,7,13);
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

-- Dump completed on 2015-10-09  0:38:28
