-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_95
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
INSERT INTO `ActionStrings` VALUES (9,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(15,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.SCREEN_ON'),(8,'android.intent.action.SEARCH'),(12,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(13,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.blackwhite',10),(2,'com.ps.kickfly',2),(3,'com.safetest.pvz',12),(4,'com.ps.ddp',3),(5,'com.gp.mahjongg',3),(6,'com.evilsunflower.reader.evilYingyu9',1),(7,'com.evilsunflower.reader.evilSanguo4',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.blackwhite.BlackWhite'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.ps.kickfly.GameMainActivity'),(7,2,'com.ps.kickfly.KickFly'),(8,2,'com.ps.kickfly.GameModeActivity'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.google.update.Dialog'),(11,2,'com.google.update.UpdateService'),(12,2,'com.google.update.Receiver'),(13,3,'com.safetest.pvz.pvz'),(14,3,'com.safetest.pvz.ShowGame'),(15,3,'com.safetest.pvz.End'),(16,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,3,'com.safetest.pvz.ShowTips'),(18,3,'com.safetest.pvz.UpdateService'),(19,3,'com.safetest.pvz.Receiver'),(20,4,'com.ps.ddp.MainActivity'),(21,4,'com.ps.ddp.DemoApp'),(22,4,'com.ps.ddp.GameActivity'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.google.update.Dialog'),(25,4,'com.waps.OffersWebView'),(26,4,'com.google.update.UpdateService'),(27,4,'com.google.update.Receiver'),(28,5,'com.gp.mahjongg.SelectActivity'),(29,5,'com.gp.mahjongg.PlayActivity'),(30,5,'com.gp.background.BackgroundActivity'),(31,5,'com.gp.mahjongg.SettingsActivity'),(32,5,'com.gp.mahjongg.BuilderActivity'),(33,5,'cn.domob.android.ads.DomobActivity'),(34,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(36,1,'com.google.update.UpdateService$AA'),(37,5,'com.vpon.adon.android.WebInApp'),(38,5,'com.google.update.Dialog'),(39,5,'com.waps.OffersWebView'),(40,5,'com.winad.android.ads.VideoPlayerActivity'),(41,5,'com.google.update.UpdateService'),(42,5,'com.google.update.Receiver'),(43,1,'com.google.update.Dialog$2'),(44,1,'com.google.update.Dialog$1'),(45,2,'com.google.update.UpdateService$MyThread'),(46,2,'com.ju6.a'),(47,2,'com.google.update.Dialog$1'),(48,2,'com.google.update.Dialog$2'),(49,3,'com.safetest.pvz.ShowTips$1'),(50,3,'com.safetest.pvz.pvz$1'),(51,3,'com.safetest.pvz.End$1'),(52,4,'com.waps.o'),(53,4,'com.waps.k'),(54,4,'com.google.update.Dialog$2'),(55,4,'com.google.update.UpdateService$MyThread'),(56,4,'com.waps.AppConnect'),(57,4,'com.ju6.a'),(58,4,'com.waps.m'),(59,4,'com.google.update.Dialog$1'),(60,6,'com.evilsunflower.reader.evilYingyu9.BugReportActivity'),(61,6,'com.evilsunflower.reader.FBReader'),(62,6,'com.evilsunflower.reader.CancelActivity'),(63,6,'com.evilsunflower.reader.image.ImageViewActivity'),(64,6,'com.evilsunflower.reader.TOCActivity'),(65,6,'com.evilsunflower.reader.BookmarksActivity'),(66,6,'com.evilsunflower.reader.control.ShowTips'),(67,6,'com.evilsunflower.reader.BookmarkEditActivity'),(68,6,'com.evilsunflower.reader.Starter'),(69,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(70,6,'com.vpon.adon.android.WebInApp'),(71,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(72,6,'com.millennialmedia.android.VideoPlayer'),(73,6,'net.youmi.android.AdActivity'),(74,6,'com.google.ads.AdActivity'),(75,6,'com.guohead.sdk.GuoheAdActivity'),(76,6,'cn.domob.android.ads.DomobActivity'),(77,6,'com.evilsunflower.reader.control.UpdateService'),(78,6,'com.evilsunflower.reader.control.Receiver'),(79,7,'com.evilsunflower.reader.evilSanguo4.BugReportActivity'),(80,7,'com.evilsunflower.reader.FBReader'),(81,7,'com.evilsunflower.reader.CancelActivity'),(82,7,'com.evilsunflower.reader.image.ImageViewActivity'),(83,7,'com.evilsunflower.reader.TOCActivity'),(84,7,'com.evilsunflower.reader.BookmarksActivity'),(85,7,'com.evilsunflower.reader.control.ShowTips'),(86,7,'com.evilsunflower.reader.BookmarkEditActivity'),(87,7,'com.evilsunflower.reader.Starter'),(88,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(89,7,'com.vpon.adon.android.WebInApp'),(90,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(91,7,'com.millennialmedia.android.VideoPlayer'),(92,7,'net.youmi.android.AdActivity'),(93,7,'com.google.ads.AdActivity'),(94,7,'com.guohead.sdk.GuoheAdActivity'),(95,7,'cn.domob.android.ads.DomobActivity'),(96,7,'com.evilsunflower.reader.control.UpdateService'),(97,7,'com.evilsunflower.reader.control.Receiver'),(98,7,'net.youmi.android.eo'),(99,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(100,7,'com.adwo.adsdk.M'),(101,7,'com.ju6.c'),(102,6,'com.adwo.adsdk.M'),(103,7,'com.baidu.as'),(104,6,'com.baidu.as'),(105,6,'com.ju6.c'),(106,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(107,7,'com.evilsunflower.reader.control.ShowTips$1'),(108,7,'com.ju6.mms.util.SqliteWrapper'),(109,6,'com.baidu.al'),(110,5,'com.waps.d'),(111,6,'net.youmi.android.be'),(112,5,'com.waps.s'),(113,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(114,5,'com.google.update.Dialog$1'),(115,7,'com.baidu.al'),(116,7,'com.ju6.mms.pdu.PduPersister'),(117,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(118,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(119,7,'com.madhouse.android.ads._'),(120,5,'com.waps.aa'),(121,6,'com.millennialmedia.android.MillennialMediaView'),(122,7,'com.millennialmedia.android.MillennialMediaView'),(123,6,'net.youmi.android.t'),(124,5,'com.waps.ac'),(125,5,'com.waps.AppConnect'),(126,7,'net.youmi.android.be'),(127,5,'com.waps.o'),(128,5,'com.google.update.Dialog$2'),(129,6,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(130,5,'cn.domob.android.ads.o$5'),(131,6,'com.ju6.mms.util.SqliteWrapper'),(132,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(133,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(134,7,'net.youmi.android.t'),(135,6,'net.youmi.android.eo'),(136,5,'com.waps.z'),(137,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(138,5,'cn.domob.android.ads.DomobAdManager'),(139,6,'com.madhouse.android.ads._'),(140,6,'com.ju6.mms.pdu.PduPersister'),(141,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(142,5,'com.google.update.UpdateService$AA'),(143,6,'com.evilsunflower.reader.control.ShowTips$1'),(144,5,'cn.domob.android.ads.e'),(145,5,'cn.domob.android.a.a$a'),(146,5,'cn.domob.android.ads.g$1'),(147,5,'com.waps.q'),(148,5,'cn.domob.android.ads.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'shouldShowBottomBar'),(2,1,'url'),(3,1,'shouldShowTitlebar'),(4,1,'shouldMakeOverlayTransparent'),(5,3,'MSG'),(6,4,'ST_START_DELAY'),(7,1,'overlayTitle'),(8,1,'shouldEnableBottomBar'),(9,1,'transitionTime'),(10,1,'overlayTransition'),(11,1,'shouldResizeOverlay'),(12,3,'TYPEdsada'),(13,4,'ST_MY_PID'),(14,10,'MSG'),(15,10,'TYPEdsada'),(16,9,'overlayTransition'),(17,9,'shouldShowBottomBar'),(18,9,'shouldEnableBottomBar'),(19,9,'shouldMakeOverlayTransparent'),(20,11,'ST_MY_PID'),(21,11,'ST_START_DELAY'),(22,9,'url'),(23,9,'transitionTime'),(24,9,'shouldResizeOverlay'),(25,9,'overlayTitle'),(26,9,'shouldShowTitlebar'),(27,16,'shouldShowTitlebar'),(28,18,'SAFE_PID'),(29,16,'url'),(30,16,'overlayTitle'),(31,16,'shouldResizeOverlay'),(32,16,'overlayTransition'),(33,17,'MM'),(34,16,'shouldShowBottomBar'),(35,18,'SAFE_START'),(36,16,'transitionTime'),(37,16,'shouldMakeOverlayTransparent'),(38,16,'shouldEnableBottomBar'),(39,23,'url'),(40,20,'WAPS_ID'),(41,26,'WAPS_ID'),(42,21,'WAPS_ID'),(43,23,'WAPS_ID'),(44,24,'TYPEdsada'),(45,20,'APP_ID'),(46,26,'APP_ID'),(47,21,'APP_ID'),(48,23,'APP_ID'),(49,23,'shouldResizeOverlay'),(50,25,'URL'),(51,26,'ST_START_DELAY'),(52,26,'CLIENT_PACKAGE'),(53,21,'CLIENT_PACKAGE'),(54,23,'CLIENT_PACKAGE'),(55,25,'isFinshClose'),(56,23,'shouldEnableBottomBar'),(57,25,'Offers_URL'),(58,23,'transitionTime'),(59,23,'shouldShowBottomBar'),(60,23,'shouldMakeOverlayTransparent'),(61,23,'shouldShowTitlebar'),(62,25,'CLIENT_PACKAGE'),(63,20,'DEVICE_ID'),(64,26,'DEVICE_ID'),(65,21,'DEVICE_ID'),(66,23,'DEVICE_ID'),(67,24,'MSG'),(68,20,'WAPS_PID'),(69,26,'WAPS_PID'),(70,21,'WAPS_PID'),(71,23,'WAPS_PID'),(72,26,'ST_MY_PID'),(73,23,'overlayTransition'),(74,20,'CLIENT_PACKAGE'),(75,25,'URL_PARAMS'),(76,23,'overlayTitle'),(77,25,'USER_ID'),(78,77,'link'),(79,52,'transitionTime'),(80,44,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(81,54,'shouldEnableBottomBar'),(82,79,'SAFE_START'),(83,74,'ADUrl'),(84,67,'ADUrl'),(85,63,'ADUrl'),(86,75,'ADUrl'),(87,67,'query'),(88,72,'url'),(89,55,'cached'),(90,63,'query'),(91,54,'canAccelerate'),(92,52,'overlayTransition'),(93,44,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(94,73,'shouldShowTitlebar'),(95,28,'DOMOB_ALLOW_LOCATION'),(96,35,'DOMOB_ALLOW_LOCATION'),(97,40,'DOMOB_ALLOW_LOCATION'),(98,29,'DOMOB_ALLOW_LOCATION'),(99,34,'DOMOB_ALLOW_LOCATION'),(100,39,'DOMOB_ALLOW_LOCATION'),(101,38,'Notify_Url_Params'),(102,71,'transitionTime'),(103,55,'logSet'),(104,56,'D780FBF4215247bcBB1AC0AD33C474FE'),(105,44,'Market_ID'),(106,44,'Adwo_PID'),(107,48,'query'),(108,55,'shouldShowBottomBar'),(109,71,'overlayTransition'),(110,55,'videoPosition'),(111,63,'Wooboo_PID'),(112,55,'videoCompleted'),(113,71,'shouldEnableBottomBar'),(114,53,'url'),(115,40,'ST_MY_PID'),(116,36,'adWidth'),(117,74,'logSet'),(118,32,'ACTION_KEY'),(119,74,'isCachedAd'),(120,32,'START_DIES_KEY'),(121,73,'overlayTitle'),(122,32,'SCROLL_Y_KEY'),(123,38,'Notify_Id'),(124,33,'actType'),(125,30,'APP_ID'),(126,28,'APP_ID'),(127,38,'APP_ID'),(128,29,'APP_ID'),(129,32,'APP_ID'),(130,79,'SAFE_PID'),(131,74,'shouldShowBottomBar'),(132,40,'ST_START_DELAY'),(133,38,'Offers_URL'),(134,71,'shouldResizeOverlay'),(135,73,'shouldResizeOverlay'),(136,72,'adWidth'),(137,32,'SCROLL_X_KEY'),(138,30,'CLIENT_PACKAGE'),(139,32,'CLIENT_PACKAGE'),(140,35,'shouldMakeOverlayTransparent'),(141,38,'ACTIVITY_FLAG'),(142,34,'overlayTransition'),(143,73,'shouldMakeOverlayTransparent'),(144,32,'LAYOUT_KEY_KEY'),(145,63,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(146,33,'appName'),(147,34,'shouldResizeOverlay'),(148,56,'172C94EDC717477aBF600D7898A64A8E'),(149,71,'shouldMakeOverlayTransparent'),(150,74,'videoAd'),(151,71,'shouldShowBottomBar'),(152,73,'cachedAdView'),(153,35,'overlayTransition'),(154,74,'videoCompleted'),(155,75,'172C94EDC717477aBF600D7898A64A8E'),(156,75,'EB80F3291A8E469c962CA133BDC549D7'),(157,75,'D780FBF4215247bcBB1AC0AD33C474FE'),(158,75,'D50EF1926ADD471892E72BCE6D7E032C'),(159,56,'EB80F3291A8E469c962CA133BDC549D7'),(160,68,'MM'),(161,55,'isCachedAd'),(162,52,'shouldShowTitlebar'),(163,54,'cachedAdView'),(164,52,'shouldResizeOverlay'),(165,29,'MARKED'),(166,38,'URL'),(167,54,'transitionTime'),(168,60,'SAFE_PID'),(169,54,'shouldResizeOverlay'),(170,55,'ADUrl'),(171,48,'ADUrl'),(172,44,'ADUrl'),(173,56,'ADUrl'),(174,32,'SCALE_KEY'),(175,32,'CURRENT_LAYER_KEY'),(176,52,'shouldShowBottomBar'),(177,44,'query'),(178,71,'overlayTitle'),(179,44,'GH_APPKEY'),(180,73,'overlayTransition'),(181,74,'cached'),(182,63,'Market_ID'),(183,52,'shouldMakeOverlayTransparent'),(184,63,'GH_APPKEY'),(185,54,'shouldShowTitlebar'),(186,71,'shouldShowTitlebar'),(187,55,'adName'),(188,29,'ZOOM'),(189,28,'DOMOB_TEST_MODE'),(190,52,'url'),(191,35,'DOMOB_TEST_MODE'),(192,54,'overlayTitle'),(193,40,'DOMOB_TEST_MODE'),(194,29,'DOMOB_TEST_MODE'),(195,34,'DOMOB_TEST_MODE'),(196,39,'DOMOB_TEST_MODE'),(197,38,'CLIENT_PACKAGE'),(198,55,'videoAd'),(199,38,'USER_ID'),(200,54,'shouldShowBottomBar'),(201,56,'D50EF1926ADD471892E72BCE6D7E032C'),(202,44,'Wooboo_PID'),(203,35,'shouldResizeOverlay'),(204,30,'WAPS_ID'),(205,28,'WAPS_ID'),(206,49,'MM'),(207,54,'overlayTransition'),(208,38,'WAPS_ID'),(209,29,'WAPS_ID'),(210,32,'WAPS_ID'),(211,39,'URL'),(212,53,'adWidth'),(213,38,'offers_webview_tag'),(214,73,'shouldEnableBottomBar'),(215,63,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(216,73,'canAccelerate'),(217,33,'appId'),(218,30,'WAPS_PID'),(219,74,'videoPosition'),(220,28,'WAPS_PID'),(221,63,'Adwo_PID'),(222,38,'WAPS_PID'),(223,73,'shouldShowBottomBar'),(224,29,'WAPS_PID'),(225,71,'url'),(226,32,'WAPS_PID'),(227,38,'isFinshClose'),(228,34,'shouldShowTitlebar'),(229,32,'LEFT_FREE_KEY'),(230,52,'shouldEnableBottomBar'),(231,74,'adName'),(232,73,'transitionTime'),(233,52,'overlayTitle'),(234,54,'shouldMakeOverlayTransparent'),(235,35,'overlayTitle'),(236,35,'transitionTime'),(237,37,'MSG'),(238,34,'url'),(239,34,'transitionTime'),(240,37,'TYPEdsada'),(241,28,'DOMOB_PID'),(242,35,'DOMOB_PID'),(243,40,'DOMOB_PID'),(244,29,'DOMOB_PID'),(245,34,'DOMOB_PID'),(246,39,'DOMOB_PID'),(247,35,'shouldShowBottomBar'),(248,38,'UrlPath'),(249,30,'DEVICE_ID'),(250,28,'DEVICE_ID'),(251,38,'DEVICE_ID'),(252,29,'DEVICE_ID'),(253,32,'DEVICE_ID'),(254,34,'shouldShowBottomBar'),(255,60,'SAFE_START'),(256,58,'link'),(257,36,'url'),(258,32,'TOP_FREE_KEY'),(259,35,'FSAd'),(260,34,'shouldMakeOverlayTransparent'),(261,28,'CURRENT_PAGE'),(262,35,'shouldEnableBottomBar'),(263,28,'CLIENT_PACKAGE'),(264,29,'CLIENT_PACKAGE'),(265,32,'UNDO_KEY'),(266,34,'shouldEnableBottomBar'),(267,38,'URL_PARAMS'),(268,38,'SHWO_FLAG'),(269,35,'shouldShowTitlebar'),(270,34,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'s',0,NULL,NULL),(41,42,'r',1,NULL,NULL),(42,58,'r',1,NULL,NULL),(43,60,'a',0,NULL,NULL),(44,61,'a',1,NULL,NULL),(45,62,'a',0,NULL,NULL),(46,63,'a',0,NULL,NULL),(47,64,'a',0,NULL,NULL),(48,65,'a',1,NULL,NULL),(49,66,'a',0,NULL,NULL),(50,67,'a',0,NULL,NULL),(51,68,'a',0,NULL,NULL),(52,69,'a',0,NULL,NULL),(53,70,'a',0,NULL,NULL),(54,71,'a',0,NULL,NULL),(55,72,'a',0,NULL,NULL),(56,73,'a',0,NULL,NULL),(57,74,'a',0,NULL,NULL),(58,75,'a',0,NULL,NULL),(59,76,'a',0,NULL,NULL),(60,77,'s',0,NULL,NULL),(61,78,'r',1,NULL,NULL),(62,79,'a',0,NULL,NULL),(63,80,'a',1,NULL,NULL),(64,81,'a',0,NULL,NULL),(65,82,'a',0,NULL,NULL),(66,83,'a',0,NULL,NULL),(67,84,'a',1,NULL,NULL),(68,85,'a',0,NULL,NULL),(69,86,'a',0,NULL,NULL),(70,87,'a',0,NULL,NULL),(71,88,'a',0,NULL,NULL),(72,89,'a',0,NULL,NULL),(73,90,'a',0,NULL,NULL),(74,91,'a',0,NULL,NULL),(75,92,'a',0,NULL,NULL),(76,93,'a',0,NULL,NULL),(77,94,'a',0,NULL,NULL),(78,95,'a',0,NULL,NULL),(79,96,'s',0,NULL,NULL),(80,97,'r',1,NULL,NULL),(81,98,'r',1,NULL,NULL),(82,99,'r',1,NULL,NULL),(83,100,'r',1,NULL,NULL),(84,102,'r',1,NULL,NULL),(85,135,'r',1,NULL,NULL),(86,137,'r',1,NULL,NULL),(87,144,'r',1,NULL,NULL),(88,147,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,5),(4,4,4),(5,5,3),(6,6,3),(7,7,11),(8,8,11),(9,9,11),(10,10,10),(11,11,11),(12,12,12),(13,13,10),(14,14,13),(15,15,17),(16,16,13),(17,17,15),(18,18,19),(19,19,26),(20,19,23),(21,19,21),(22,20,25),(23,21,20),(24,22,26),(25,22,21),(26,22,23),(27,23,20),(28,24,24),(29,25,26),(30,26,20),(31,27,26),(32,28,21),(33,29,21),(34,30,20),(35,31,26),(36,32,24),(37,33,26),(38,34,21),(39,34,23),(40,34,26),(41,35,20),(42,36,27),(43,37,67),(44,37,63),(45,37,75),(46,37,74),(47,38,63),(48,39,44),(49,40,67),(50,40,63),(51,40,75),(52,41,48),(53,41,44),(54,41,56),(55,42,74),(56,42,75),(57,42,63),(58,42,67),(59,43,44),(60,44,75),(61,45,48),(62,45,44),(63,45,56),(64,45,55),(65,46,48),(66,47,68),(67,48,44),(68,48,56),(69,48,55),(70,48,48),(71,49,28),(72,50,63),(73,51,56),(74,51,48),(75,51,44),(76,52,38),(77,53,67),(78,54,29),(79,55,80),(80,56,63),(81,57,56),(82,58,32),(83,58,30),(84,59,63),(85,60,63),(86,61,63),(87,61,67),(88,61,75),(89,62,29),(90,62,37),(91,63,75),(92,63,67),(93,63,63),(94,64,38),(95,65,75),(96,65,74),(97,65,63),(98,65,67),(99,66,63),(100,67,63),(101,68,56),(102,69,67),(103,69,63),(104,69,75),(105,70,29),(106,70,38),(107,71,55),(108,71,56),(109,71,44),(110,71,48),(111,72,75),(112,72,74),(113,72,63),(114,72,67),(115,73,56),(116,74,63),(117,75,28),(118,76,67),(119,76,74),(120,76,63),(121,76,75),(122,77,38),(123,78,63),(124,79,41),(125,80,63),(126,80,67),(127,80,74),(128,80,75),(129,81,29),(130,81,28),(131,82,75),(132,83,61),(133,84,29),(134,84,38),(135,85,44),(136,86,29),(137,86,37),(138,87,44),(139,88,40),(140,89,44),(141,90,44),(142,90,48),(143,90,55),(144,90,56),(145,91,29),(146,91,28),(147,91,35),(148,91,34),(149,91,40),(150,92,44),(151,93,56),(152,93,48),(153,93,44),(154,94,44),(155,95,55),(156,95,56),(157,95,44),(158,95,48),(159,96,67),(160,96,63),(161,96,75),(162,97,75),(163,98,38),(164,98,29),(165,99,35),(166,99,34),(167,99,39),(168,99,40),(169,99,28),(170,99,29),(171,100,56),(172,100,44),(173,100,48),(174,101,44),(175,102,44),(176,103,63),(177,104,30),(178,104,32),(179,105,44),(180,106,67),(181,106,63),(182,106,75),(183,106,74),(184,107,56),(185,107,55),(186,107,48),(187,107,44),(188,108,75),(189,108,63),(190,108,67),(191,108,74),(192,109,44),(193,109,48),(194,109,56),(195,110,40),(196,111,63),(197,112,55),(198,112,56),(199,112,44),(200,112,48),(201,113,49),(202,114,44),(203,115,48),(204,115,44),(205,115,55),(206,115,56),(207,116,40),(208,117,40),(209,117,39),(210,117,35),(211,117,34),(212,117,29),(213,117,28),(214,118,28),(215,118,39),(216,118,40),(217,118,35),(218,118,34),(219,118,29),(220,119,28),(221,120,30),(222,120,32),(223,121,28),(224,122,39),(225,122,40),(226,122,35),(227,122,34),(228,122,32),(229,122,29),(230,122,30),(231,122,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(2,36,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(3,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,43,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(6,44,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,45,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(8,46,'<com.ju6.a: boolean b()>',178,'p',NULL),(9,11,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(10,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,11,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,12,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,48,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,13,'<com.safetest.pvz.pvz: void onStart()>',5,'s',NULL),(15,49,'<com.safetest.pvz.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,50,'<com.safetest.pvz.pvz$1: void onClick(android.view.View)>',7,'a',NULL),(17,51,'<com.safetest.pvz.End$1: void onClick(android.view.View)>',7,'a',NULL),(18,19,'<com.safetest.pvz.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,52,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(20,53,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(21,20,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(22,52,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(23,20,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(24,54,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,55,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(26,20,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(27,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(28,56,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(29,56,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(30,20,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(31,57,'<com.ju6.a: boolean b()>',178,'p',NULL),(32,59,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,52,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(35,20,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(36,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(38,101,'<com.ju6.c: void run()>',146,'p',NULL),(39,61,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(40,103,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(41,104,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(42,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(43,105,'<com.ju6.c: boolean b()>',272,'p',NULL),(44,106,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(45,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(46,65,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(47,107,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(49,28,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(50,108,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(51,109,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(52,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(53,84,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(54,110,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(55,97,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,108,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(57,111,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(58,112,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(59,101,'<com.ju6.c: boolean b()>',192,'p',NULL),(60,80,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(61,113,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(62,114,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(63,115,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(64,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(65,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(66,116,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(67,117,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(68,118,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(69,119,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(70,120,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(71,121,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(72,122,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(73,123,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(74,108,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(75,28,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',51,'a',NULL),(76,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(77,124,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(78,101,'<com.ju6.c: boolean b()>',272,'p',NULL),(79,42,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(80,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(81,125,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(82,126,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(83,78,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(84,127,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(85,105,'<com.ju6.c: boolean b()>',192,'p',NULL),(86,128,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(87,129,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(88,41,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(89,105,'<com.ju6.c: void run()>',146,'p',NULL),(90,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(91,130,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,131,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(93,132,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(94,105,'<com.ju6.c: boolean b()>',195,'p',0),(95,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(96,133,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(97,134,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(98,136,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(99,138,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(100,139,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(101,140,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(102,61,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(103,101,'<com.ju6.c: boolean b()>',195,'p',0),(104,112,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(105,131,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(106,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(107,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(108,91,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(109,141,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(110,142,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(111,80,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(112,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(113,143,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(114,131,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(115,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(116,41,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(117,145,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(118,146,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(119,28,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(120,112,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(121,28,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(122,148,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,8,5),(4,9,1),(5,10,1),(6,11,1),(7,12,1),(8,15,1),(9,16,1),(10,20,5),(11,22,1),(12,23,1),(13,27,6),(14,28,6),(15,29,6),(16,33,5),(17,34,1),(18,35,1),(19,42,1),(20,43,1),(21,47,1),(22,48,1),(23,49,1),(24,50,1),(25,55,6),(26,56,6),(27,57,6),(28,59,12),(29,61,1),(30,63,1),(31,65,6),(32,70,6),(33,72,6),(34,73,6),(35,75,6),(36,77,6),(37,78,1),(38,79,6),(39,80,6),(40,81,1),(41,82,6),(42,84,6),(43,85,1),(44,86,6),(45,87,1),(46,88,6),(47,90,12),(48,92,13),(49,94,13),(50,95,14),(51,96,14),(52,97,14),(53,99,14),(54,100,6),(55,101,14),(56,103,14),(57,105,14),(58,106,6),(59,107,14),(60,109,6),(61,111,6),(62,112,6),(63,113,6),(64,114,5),(65,115,6),(66,118,6),(67,120,6),(68,121,6),(69,122,6),(70,123,6),(71,124,6),(72,126,6),(73,127,6),(74,128,6),(75,130,6),(76,131,6),(77,133,15),(78,134,14),(79,135,14),(80,136,14),(81,137,6),(82,138,14),(83,139,14),(84,140,14),(85,141,14),(86,142,14),(87,145,1),(88,147,1),(89,148,6),(90,149,15),(91,151,1),(92,153,6),(93,154,1),(94,155,1),(95,156,1),(96,157,6),(97,161,6),(98,163,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,9,1),(4,10,2),(5,11,2),(6,12,1),(7,15,1),(8,16,2),(9,22,1),(10,23,2),(11,34,2),(12,35,1),(13,42,1),(14,43,2),(15,47,1),(16,48,2),(17,49,1),(18,50,2),(19,61,1),(20,63,2),(21,78,1),(22,81,2),(23,85,1),(24,87,2),(25,145,1),(26,147,2),(27,151,2),(28,154,1),(29,155,1),(30,156,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,5,'com/google/update/UpdateService'),(4,6,'com/google/update/Dialog'),(5,7,'com/google/update/Dialog'),(6,13,'com/google/update/Dialog'),(7,14,'com/google/update/Dialog'),(8,17,'com/google/update/Dialog'),(9,18,'com/google/update/Dialog'),(10,19,'com/google/update/UpdateService'),(11,21,'com/safetest/pvz/UpdateService'),(12,24,'com/safetest/pvz/ShowGame'),(13,25,'com/safetest/pvz/ShowGame'),(14,26,'com/safetest/pvz/UpdateService'),(15,30,'com/ps/ddp/GameActivity'),(16,31,'com/waps/OffersWebView'),(17,32,'com/ps/ddp/GameActivity'),(18,36,'com/ps/ddp/DemoApp'),(19,37,'com/google/update/Dialog'),(20,38,'com/google/update/Dialog'),(21,39,'com/waps/OffersWebView'),(22,40,'com/waps/OffersWebView'),(23,41,'com/ps/ddp/GameActivity'),(24,44,'com/google/update/Dialog'),(25,45,'com/google/update/Dialog'),(26,51,'com/ps/ddp/GameActivity'),(27,52,'com/google/update/UpdateService'),(28,53,'com/millennialmedia/android/MMAdViewOverlayActivity'),(29,54,'com.evilsunflower.reader.FBReader'),(30,58,'com/millennialmedia/android/MMAdViewOverlayActivity'),(31,60,'com/evilsunflower/reader/BookmarkEditActivity'),(32,62,'com/millennialmedia/android/MMAdViewOverlayActivity'),(33,64,'com/gp/mahjongg/BuilderActivity'),(34,66,'(.*)'),(35,65,'com.android.browser.BrowserActivity'),(36,67,'com/evilsunflower/reader/BookmarkEditActivity'),(37,69,'com/evilsunflower/reader/control/UpdateService'),(38,68,'com/waps/OffersWebView'),(39,71,'com/waps/OffersWebView'),(40,74,'com.evilsunflower.reader.FBReader'),(41,80,'com.android.browser.BrowserActivity'),(42,89,'com/evilsunflower/reader/control/UpdateService'),(43,91,'com/waps/OffersWebView'),(44,93,'com/waps/OffersWebView'),(45,98,'com/gp/mahjongg/PlayActivity'),(46,102,'NULL-CONSTANT'),(47,104,'com/google/update/UpdateService'),(48,108,'com/waps/OffersWebView'),(49,110,'com/evilsunflower/reader/control/UpdateService'),(50,116,'com/evilsunflower/reader/control/UpdateService'),(51,117,'com/google/update/Dialog'),(52,119,'com/google/update/Dialog'),(53,143,'com.evilsunflower.reader.FBReader'),(54,146,'com/millennialmedia/android/MMAdViewOverlayActivity'),(55,152,'com.evilsunflower.reader.FBReader'),(56,158,'com/google/update/Dialog'),(57,159,'com/google/update/Dialog'),(58,160,'com/gp/background/BackgroundActivity'),(59,162,'com/gp/mahjongg/SettingsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,27,2),(2,28,3),(3,29,4),(4,53,6),(5,55,8),(6,56,9),(7,57,10),(8,58,12),(9,62,13),(10,65,15),(11,70,19),(12,72,21),(13,73,22),(14,75,23),(15,77,24),(16,80,25),(17,79,26),(18,82,27),(19,84,28),(20,86,29),(21,88,30),(22,100,34),(23,106,36),(24,109,37),(25,112,38),(26,111,39),(27,113,41),(28,115,42),(29,118,44),(30,120,45),(31,121,46),(32,122,47),(33,123,48),(34,124,51),(35,126,52),(36,127,53),(37,128,54),(38,130,55),(39,131,56),(40,133,57),(41,137,58),(42,146,63),(43,148,65),(44,149,66),(45,153,67),(46,157,69),(47,161,71),(48,163,72);
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
INSERT INTO `IExtras` VALUES (1,1,'MSG'),(2,1,'TYPEdsada'),(3,2,'TYPEdsada'),(4,6,'MSG'),(5,6,'TYPEdsada'),(6,7,'TYPEdsada'),(7,13,'TYPEdsada'),(8,14,'MSG'),(9,14,'TYPEdsada'),(10,17,'TYPEdsada'),(11,18,'MSG'),(12,18,'TYPEdsada'),(13,30,'type'),(14,31,'CLIENT_PACKAGE'),(15,31,'URL'),(16,31,'isFinshClose'),(17,32,'type'),(18,37,'TYPEdsada'),(19,38,'MSG'),(20,38,'TYPEdsada'),(21,39,'USER_ID'),(22,39,'CLIENT_PACKAGE'),(23,39,'Offers_URL'),(24,39,'URL_PARAMS'),(25,40,'USER_ID'),(26,40,'CLIENT_PACKAGE'),(27,40,'Offers_URL'),(28,40,'URL_PARAMS'),(29,41,'type'),(30,44,'TYPEdsada'),(31,45,'MSG'),(32,45,'TYPEdsada'),(33,51,'type'),(34,53,'cachedAdView'),(35,58,'cachedAdView'),(36,59,'android.intent.extra.TEXT'),(37,59,'android.intent.extra.SUBJECT'),(38,59,'android.intent.extra.EMAIL'),(39,62,'cachedAdView'),(40,64,'GAME_ID'),(41,68,'CLIENT_PACKAGE'),(42,68,'URL'),(43,68,'isFinshClose'),(44,68,'offers_webview_tag'),(45,71,'CLIENT_PACKAGE'),(46,71,'URL'),(47,71,'isFinshClose'),(48,71,'offers_webview_tag'),(49,90,'android.intent.extra.TEXT'),(50,90,'android.intent.extra.SUBJECT'),(51,90,'android.intent.extra.EMAIL'),(52,91,'UrlPath'),(53,91,'ACTIVITY_FLAG'),(54,91,'isFinshClose'),(55,91,'offers_webview_tag'),(56,92,'command'),(57,93,'Notify_Url_Params'),(58,93,'UrlPath'),(59,94,'command'),(60,93,'ACTIVITY_FLAG'),(61,93,'isFinshClose'),(62,93,'offers_webview_tag'),(63,95,'android.intent.extra.INTENT'),(64,96,'android.intent.extra.INTENT'),(65,98,'GAME_ID'),(66,97,'android.intent.extra.TITLE'),(67,97,'android.intent.extra.INTENT'),(68,99,'android.intent.extra.INTENT'),(69,101,'android.intent.extra.TITLE'),(70,101,'android.intent.extra.INTENT'),(71,103,'android.intent.extra.INTENT'),(72,105,'android.intent.extra.TITLE'),(73,105,'android.intent.extra.INTENT'),(74,108,'USER_ID'),(75,107,'android.intent.extra.TITLE'),(76,108,'CLIENT_PACKAGE'),(77,107,'android.intent.extra.INTENT'),(78,108,'Offers_URL'),(79,108,'offers_webview_tag'),(80,108,'URL_PARAMS'),(81,117,'MSG'),(82,117,'TYPEdsada'),(83,119,'TYPEdsada'),(84,134,'android.intent.extra.INTENT'),(85,135,'android.intent.extra.INTENT'),(86,136,'android.intent.extra.TITLE'),(87,136,'android.intent.extra.INTENT'),(88,138,'android.intent.extra.INTENT'),(89,139,'android.intent.extra.TITLE'),(90,139,'android.intent.extra.INTENT'),(91,140,'android.intent.extra.INTENT'),(92,141,'android.intent.extra.TITLE'),(93,141,'android.intent.extra.INTENT'),(94,142,'android.intent.extra.TITLE'),(95,142,'android.intent.extra.INTENT'),(96,146,'cachedAdView'),(97,158,'MSG'),(98,158,'TYPEdsada'),(99,159,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,6,4),(7,6,3),(8,6,2),(9,7,1),(10,8,2),(11,8,3),(12,8,4),(13,9,1),(14,10,3),(15,10,4),(16,10,2),(17,11,1),(18,12,4),(19,12,3),(20,12,2),(21,13,7),(22,14,1),(23,15,8),(24,16,8),(25,17,4),(26,17,2),(27,17,3),(28,18,8),(29,19,1),(30,20,8),(31,21,2),(32,21,3),(33,21,4),(34,22,9),(35,23,9),(36,24,9),(37,25,9),(38,26,11),(39,26,10),(40,27,11),(41,27,10),(42,28,9),(43,29,9),(44,30,9),(45,31,9),(46,32,7),(47,33,7),(48,34,7);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,7,1),(4,9,1),(5,11,1),(6,14,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,13,'package',NULL,NULL,NULL,NULL,NULL),(2,32,'package',NULL,NULL,NULL,NULL,NULL),(3,33,'package',NULL,NULL,NULL,NULL,NULL),(4,34,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,29,'application','vnd.android.package-archive'),(2,55,'application','vnd.android.package-archive'),(3,56,'application','vnd.android.package-archive'),(4,59,'message','rfc822'),(5,70,'application','vnd.android.package-archive'),(6,72,'application','vnd.android.package-archive'),(7,73,'application','vnd.android.package-archive'),(8,75,'application','vnd.android.package-archive'),(9,77,'application','vnd.android.package-archive'),(10,79,'application','vnd.android.package-archive'),(11,82,'application','vnd.android.package-archive'),(12,86,'application','vnd.android.package-archive'),(13,88,'application','vnd.android.package-archive'),(14,90,'message','rfc822'),(15,109,'application','vnd.android.package-archive'),(16,112,'application','vnd.android.package-archive'),(17,111,'application','vnd.android.package-archive'),(18,113,'application','vnd.android.package-archive'),(19,115,'application','vnd.android.package-archive'),(20,118,'application','vnd.android.package-archive'),(21,120,'application','vnd.android.package-archive'),(22,122,'application','vnd.android.package-archive'),(23,123,'application','vnd.android.package-archive'),(24,124,'application','vnd.android.package-archive'),(25,126,'application','vnd.android.package-archive'),(26,127,'application','vnd.android.package-archive'),(27,128,'application','vnd.android.package-archive'),(28,130,'application','vnd.android.package-archive'),(29,131,'application','vnd.android.package-archive'),(30,137,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.blackwhite'),(2,2,'com.ps.blackwhite'),(3,3,'com.ps.blackwhite'),(4,4,'com.ps.blackwhite'),(5,5,'com.ps.blackwhite'),(6,6,'com.ps.blackwhite'),(7,7,'com.ps.blackwhite'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'com.ps.kickfly'),(11,12,'com.ps.kickfly'),(12,13,'com.ps.kickfly'),(13,14,'com.ps.kickfly'),(14,15,'com.noshufou.android.su'),(15,16,'com.noshufou.android.su'),(16,17,'com.ps.kickfly'),(17,18,'com.ps.kickfly'),(18,19,'com.ps.kickfly'),(19,21,'com.safetest.pvz'),(20,22,'com.noshufou.android.su'),(21,23,'com.noshufou.android.su'),(22,24,'com.safetest.pvz'),(23,25,'com.safetest.pvz'),(24,26,'com.safetest.pvz'),(25,30,'com.ps.ddp'),(26,31,'com.ps.ddp'),(27,32,'com.ps.ddp'),(28,34,'com.ps.ddp'),(29,35,'com.ps.ddp'),(30,36,'com.ps.ddp'),(31,37,'com.ps.ddp'),(32,38,'com.ps.ddp'),(33,39,'com.ps.ddp'),(34,40,'com.ps.ddp'),(35,41,'com.ps.ddp'),(36,42,'com.noshufou.android.su'),(37,43,'com.noshufou.android.su'),(38,44,'com.ps.ddp'),(39,45,'com.ps.ddp'),(40,47,'(.*)'),(41,48,'(.*)'),(42,49,'NULL-CONSTANT'),(43,50,'NULL-CONSTANT'),(44,51,'com.ps.ddp'),(45,52,'com.ps.ddp'),(46,53,'com.evilsunflower.reader.evilSanguo4'),(47,54,'com.evilsunflower.reader.evilYingyu9'),(48,58,'com.evilsunflower.reader.evilYingyu9'),(49,60,'com.evilsunflower.reader.evilYingyu9'),(50,61,'com.noshufou.android.su'),(51,63,'com.noshufou.android.su'),(52,62,'com.evilsunflower.reader.evilYingyu9'),(53,64,'com.gp.mahjongg'),(54,66,'(.*)'),(55,65,'com.android.browser'),(56,67,'com.evilsunflower.reader.evilSanguo4'),(57,69,'com.evilsunflower.reader.evilSanguo4'),(58,68,'com.gp.mahjongg'),(59,71,'com.gp.mahjongg'),(60,74,'com.evilsunflower.reader.evilSanguo4'),(61,78,'com.noshufou.android.su'),(62,81,'com.noshufou.android.su'),(63,80,'com.android.browser'),(64,85,'(.*)'),(65,87,'(.*)'),(66,89,'com.evilsunflower.reader.evilSanguo4'),(67,91,'com.gp.mahjongg'),(68,93,'com.gp.mahjongg'),(69,98,'com.gp.mahjongg'),(70,102,'NULL-CONSTANT'),(71,104,'com.gp.mahjongg'),(72,108,'com.gp.mahjongg'),(73,110,'com.evilsunflower.reader.evilYingyu9'),(74,116,'com.evilsunflower.reader.evilYingyu9'),(75,117,'com.gp.mahjongg'),(76,119,'com.gp.mahjongg'),(77,143,'com.evilsunflower.reader.evilYingyu9'),(78,145,'NULL-CONSTANT'),(79,147,'NULL-CONSTANT'),(80,146,'com.evilsunflower.reader.evilSanguo4'),(81,151,'com.gp.mahjongg'),(82,152,'com.evilsunflower.reader.evilSanguo4'),(83,154,'com.gp.mahjongg'),(84,155,'com.noshufou.android.su'),(85,156,'com.noshufou.android.su'),(86,158,'com.gp.mahjongg'),(87,159,'com.gp.mahjongg'),(88,160,'com.gp.mahjongg'),(89,162,'com.gp.mahjongg');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,6,0),(4,7,0),(5,8,0),(6,12,0),(7,13,0),(8,19,0),(9,20,0),(10,27,0),(11,28,0),(12,41,0),(13,42,0),(14,44,0),(15,44,0),(16,48,0),(17,61,0),(18,63,0),(19,63,0),(20,67,0),(21,80,0),(22,81,0),(23,80,0),(24,82,0),(25,83,0),(26,84,0),(27,83,0),(28,85,0),(29,61,0),(30,86,0),(31,84,0),(32,87,0),(33,87,0),(34,88,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,0,0),(7,4,0,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,7,1,0),(12,7,1,0),(13,9,0,0),(14,9,0,0),(15,10,1,0),(16,10,1,0),(17,11,0,0),(18,11,0,0),(19,12,0,0),(20,13,1,0),(21,14,0,0),(22,15,1,0),(23,15,1,0),(24,16,0,0),(25,17,0,0),(26,18,0,0),(27,19,1,0),(28,19,1,0),(29,20,1,0),(30,21,0,0),(31,22,0,0),(32,23,0,0),(33,24,1,0),(34,25,1,0),(35,25,1,0),(36,26,0,0),(37,27,0,0),(38,27,0,0),(39,28,0,0),(40,29,0,0),(41,30,0,0),(42,32,1,0),(43,32,1,0),(44,33,0,0),(45,33,0,0),(46,34,1,0),(47,34,1,0),(48,34,1,0),(49,34,1,0),(50,34,1,0),(51,35,0,0),(52,36,0,0),(53,37,0,0),(54,39,0,0),(55,40,1,0),(56,41,1,0),(57,42,1,0),(58,45,0,0),(59,44,1,0),(60,46,0,0),(61,47,1,0),(62,48,0,0),(63,47,1,0),(64,49,0,0),(65,51,0,0),(66,52,0,0),(67,53,0,0),(68,54,0,0),(69,55,0,0),(70,57,1,0),(71,58,0,0),(72,57,1,0),(73,57,1,0),(74,60,0,0),(75,57,1,0),(76,61,1,0),(77,57,1,0),(78,62,1,0),(79,57,1,0),(80,63,0,0),(81,62,1,0),(82,57,1,0),(83,64,1,0),(84,65,1,0),(85,64,1,0),(86,57,1,0),(87,64,1,0),(88,57,1,0),(89,67,0,0),(90,68,1,0),(91,70,0,0),(92,71,1,0),(93,70,0,0),(94,72,1,0),(95,73,1,0),(96,73,1,0),(97,73,1,0),(98,75,0,0),(99,73,1,0),(100,76,1,0),(101,73,1,0),(102,77,0,0),(103,73,1,0),(104,79,0,0),(105,73,1,0),(106,80,1,0),(107,73,1,0),(108,81,0,0),(109,82,1,0),(110,83,0,0),(111,84,1,0),(112,82,1,0),(113,82,1,0),(114,86,1,0),(115,82,1,0),(116,87,0,0),(117,88,0,0),(118,82,1,0),(119,88,0,0),(120,82,1,0),(121,90,1,0),(122,82,1,0),(123,91,1,0),(124,82,1,0),(125,91,1,0),(126,91,1,0),(127,82,1,0),(128,91,1,0),(129,93,1,0),(130,91,1,0),(131,91,1,0),(132,96,1,0),(133,95,1,0),(134,97,1,0),(135,97,1,0),(136,97,1,0),(137,98,1,0),(138,97,1,0),(139,97,1,0),(140,97,1,0),(141,97,1,0),(142,97,1,0),(143,102,0,0),(144,104,1,0),(145,104,1,0),(146,106,0,0),(147,104,1,0),(148,107,1,0),(149,108,1,0),(150,109,1,0),(151,110,1,0),(152,111,0,0),(153,112,1,0),(154,110,1,0),(155,113,1,0),(156,113,1,0),(157,115,1,0),(158,116,0,0),(159,116,0,0),(160,119,0,0),(161,120,1,0),(162,121,0,0),(163,122,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,21,18,2,NULL),(2,83,13,2,NULL),(3,85,13,2,NULL),(4,87,13,2,NULL),(5,121,13,2,NULL),(6,133,13,2,NULL),(7,148,13,2,NULL),(8,153,13,2,NULL),(9,157,13,2,NULL),(10,57,13,2,NULL),(11,84,13,2,NULL),(12,100,13,2,NULL),(13,106,13,2,NULL),(14,149,13,2,NULL),(15,26,18,2,NULL),(16,83,19,2,NULL),(17,85,19,2,NULL),(18,87,19,2,NULL),(19,121,19,2,NULL),(20,133,19,2,NULL),(21,148,19,2,NULL),(22,153,19,2,NULL),(23,157,19,2,NULL),(24,57,19,2,NULL),(25,84,19,2,NULL),(26,100,19,2,NULL),(27,106,19,2,NULL),(28,149,19,2,NULL),(29,74,44,2,NULL),(30,74,63,2,NULL),(31,152,44,2,NULL),(32,152,63,2,NULL),(33,83,63,2,NULL),(34,85,63,2,NULL),(35,87,63,2,NULL),(36,121,63,2,NULL),(37,133,63,2,NULL),(38,148,63,2,NULL),(39,153,63,2,NULL),(40,157,63,2,NULL),(41,57,63,2,NULL),(42,84,63,2,NULL),(43,100,63,2,NULL),(44,106,63,2,NULL),(45,149,63,2,NULL),(46,67,50,2,NULL),(47,67,69,2,NULL),(48,83,67,2,NULL),(49,85,67,2,NULL),(50,87,67,2,NULL),(51,121,67,2,NULL),(52,133,67,2,NULL),(53,148,67,2,NULL),(54,153,67,2,NULL),(55,157,67,2,NULL),(56,57,67,2,NULL),(57,84,67,2,NULL),(58,100,67,2,NULL),(59,106,67,2,NULL),(60,149,67,2,NULL),(61,53,54,2,NULL),(62,53,73,2,NULL),(63,146,54,2,NULL),(64,146,73,2,NULL),(65,57,2,2,NULL),(66,84,2,2,NULL),(67,100,2,2,NULL),(68,106,2,2,NULL),(69,149,2,2,NULL),(70,57,5,2,NULL),(71,84,5,2,NULL),(72,100,5,2,NULL),(73,106,5,2,NULL),(74,149,5,2,NULL),(75,57,6,2,NULL),(76,84,6,2,NULL),(77,100,6,2,NULL),(78,106,6,2,NULL),(79,149,6,2,NULL),(80,57,7,2,NULL),(81,84,7,2,NULL),(82,100,7,2,NULL),(83,106,7,2,NULL),(84,149,7,2,NULL),(85,57,8,2,NULL),(86,84,8,2,NULL),(87,100,8,2,NULL),(88,106,8,2,NULL),(89,149,8,2,NULL),(90,57,12,2,NULL),(91,84,12,2,NULL),(92,100,12,2,NULL),(93,106,12,2,NULL),(94,149,12,2,NULL),(95,57,20,2,NULL),(96,84,20,2,NULL),(97,100,20,2,NULL),(98,106,20,2,NULL),(99,149,20,2,NULL),(100,57,27,2,NULL),(101,84,27,2,NULL),(102,100,27,2,NULL),(103,106,27,2,NULL),(104,149,27,2,NULL),(105,57,28,2,NULL),(106,84,28,2,NULL),(107,100,28,2,NULL),(108,106,28,2,NULL),(109,149,28,2,NULL),(110,57,41,2,NULL),(111,84,41,2,NULL),(112,100,41,2,NULL),(113,106,41,2,NULL),(114,149,41,2,NULL),(115,57,44,2,NULL),(116,84,44,2,NULL),(117,100,44,2,NULL),(118,106,44,2,NULL),(119,149,44,2,NULL),(120,57,48,2,NULL),(121,84,48,2,NULL),(122,100,48,2,NULL),(123,106,48,2,NULL),(124,149,48,2,NULL),(125,57,61,2,NULL),(126,84,61,2,NULL),(127,100,61,2,NULL),(128,106,61,2,NULL),(129,149,61,2,NULL),(130,57,84,2,NULL),(131,84,84,2,NULL),(132,100,84,2,NULL),(133,106,84,2,NULL),(134,149,84,2,NULL),(135,57,85,2,NULL),(136,84,85,2,NULL),(137,100,85,2,NULL),(138,106,85,2,NULL),(139,149,85,2,NULL),(140,57,86,2,NULL),(141,84,86,2,NULL),(142,100,86,2,NULL),(143,106,86,2,NULL),(144,149,86,2,NULL),(145,57,80,2,NULL),(146,84,80,2,NULL),(147,100,80,2,NULL),(148,106,80,2,NULL),(149,149,80,2,NULL),(150,57,81,2,NULL),(151,84,81,2,NULL),(152,100,81,2,NULL),(153,106,81,2,NULL),(154,149,81,2,NULL),(155,57,82,2,NULL),(156,84,82,2,NULL),(157,100,82,2,NULL),(158,106,82,2,NULL),(159,149,82,2,NULL),(160,57,83,2,NULL),(161,84,83,2,NULL),(162,100,83,2,NULL),(163,106,83,2,NULL),(164,149,83,2,NULL),(165,69,60,2,NULL),(166,69,79,2,NULL),(167,83,80,2,NULL),(168,85,80,2,NULL),(169,87,80,2,NULL),(170,121,80,2,NULL),(171,133,80,2,NULL),(172,148,80,2,NULL),(173,153,80,2,NULL),(174,157,80,2,NULL),(175,83,81,2,NULL),(176,85,81,2,NULL),(177,87,81,2,NULL),(178,121,81,2,NULL),(179,133,81,2,NULL),(180,148,81,2,NULL),(181,153,81,2,NULL),(182,157,81,2,NULL),(183,83,82,2,NULL),(184,85,82,2,NULL),(185,87,82,2,NULL),(186,121,82,2,NULL),(187,133,82,2,NULL),(188,148,82,2,NULL),(189,153,82,2,NULL),(190,157,82,2,NULL),(191,83,83,2,NULL),(192,85,83,2,NULL),(193,87,83,2,NULL),(194,121,83,2,NULL),(195,133,83,2,NULL),(196,148,83,2,NULL),(197,153,83,2,NULL),(198,157,83,2,NULL),(199,54,44,2,NULL),(200,54,63,2,NULL),(201,143,44,2,NULL),(202,143,63,2,NULL),(203,83,44,2,NULL),(204,85,44,2,NULL),(205,87,44,2,NULL),(206,121,44,2,NULL),(207,133,44,2,NULL),(208,148,44,2,NULL),(209,153,44,2,NULL),(210,157,44,2,NULL),(211,60,50,2,NULL),(212,60,69,2,NULL),(213,83,48,2,NULL),(214,85,48,2,NULL),(215,87,48,2,NULL),(216,121,48,2,NULL),(217,133,48,2,NULL),(218,148,48,2,NULL),(219,153,48,2,NULL),(220,157,48,2,NULL),(221,58,54,2,NULL),(222,58,73,2,NULL),(223,62,54,2,NULL),(224,62,73,2,NULL),(225,121,2,2,NULL),(226,133,2,2,NULL),(227,148,2,2,NULL),(228,153,2,2,NULL),(229,157,2,2,NULL),(230,121,5,2,NULL),(231,133,5,2,NULL),(232,148,5,2,NULL),(233,153,5,2,NULL),(234,157,5,2,NULL),(235,121,6,2,NULL),(236,133,6,2,NULL),(237,148,6,2,NULL),(238,153,6,2,NULL),(239,157,6,2,NULL),(240,121,7,2,NULL),(241,133,7,2,NULL),(242,148,7,2,NULL),(243,153,7,2,NULL),(244,157,7,2,NULL),(245,121,8,2,NULL),(246,133,8,2,NULL),(247,148,8,2,NULL),(248,153,8,2,NULL),(249,157,8,2,NULL),(250,121,12,2,NULL),(251,133,12,2,NULL),(252,148,12,2,NULL),(253,153,12,2,NULL),(254,157,12,2,NULL),(255,121,20,2,NULL),(256,133,20,2,NULL),(257,148,20,2,NULL),(258,153,20,2,NULL),(259,157,20,2,NULL),(260,121,27,2,NULL),(261,133,27,2,NULL),(262,148,27,2,NULL),(263,153,27,2,NULL),(264,157,27,2,NULL),(265,121,28,2,NULL),(266,133,28,2,NULL),(267,148,28,2,NULL),(268,153,28,2,NULL),(269,157,28,2,NULL),(270,121,41,2,NULL),(271,133,41,2,NULL),(272,148,41,2,NULL),(273,153,41,2,NULL),(274,157,41,2,NULL),(275,121,61,2,NULL),(276,133,61,2,NULL),(277,148,61,2,NULL),(278,153,61,2,NULL),(279,157,61,2,NULL),(280,121,84,2,NULL),(281,133,84,2,NULL),(282,148,84,2,NULL),(283,153,84,2,NULL),(284,157,84,2,NULL),(285,121,85,2,NULL),(286,133,85,2,NULL),(287,148,85,2,NULL),(288,153,85,2,NULL),(289,157,85,2,NULL),(290,121,86,2,NULL),(291,133,86,2,NULL),(292,148,86,2,NULL),(293,153,86,2,NULL),(294,157,86,2,NULL),(295,110,60,2,NULL),(296,110,79,2,NULL),(297,83,61,2,NULL),(298,85,61,2,NULL),(299,87,61,2,NULL),(300,83,84,2,NULL),(301,85,84,2,NULL),(302,87,84,2,NULL),(303,83,85,2,NULL),(304,85,85,2,NULL),(305,87,85,2,NULL),(306,83,86,2,NULL),(307,85,86,2,NULL),(308,87,86,2,NULL),(309,64,32,2,NULL),(310,98,29,2,NULL),(311,160,30,2,NULL),(312,162,31,2,NULL),(313,83,28,2,NULL),(314,85,28,2,NULL),(315,87,28,2,NULL),(316,83,2,2,NULL),(317,85,2,2,NULL),(318,87,2,2,NULL),(319,83,5,2,NULL),(320,85,5,2,NULL),(321,87,5,2,NULL),(322,83,6,2,NULL),(323,85,6,2,NULL),(324,87,6,2,NULL),(325,83,7,2,NULL),(326,85,7,2,NULL),(327,87,7,2,NULL),(328,83,8,2,NULL),(329,85,8,2,NULL),(330,87,8,2,NULL),(331,83,12,2,NULL),(332,85,12,2,NULL),(333,87,12,2,NULL),(334,83,20,2,NULL),(335,85,20,2,NULL),(336,87,20,2,NULL),(337,83,27,2,NULL),(338,85,27,2,NULL),(339,87,27,2,NULL),(340,83,41,2,NULL),(341,85,41,2,NULL),(342,87,41,2,NULL),(343,117,3,2,NULL),(344,117,10,2,NULL),(345,117,24,2,NULL),(346,117,37,2,NULL),(347,119,3,2,NULL),(348,119,10,2,NULL),(349,119,24,2,NULL),(350,119,37,2,NULL),(351,158,3,2,NULL),(352,158,10,2,NULL),(353,158,24,2,NULL),(354,158,37,2,NULL),(355,159,3,2,NULL),(356,159,10,2,NULL),(357,159,24,2,NULL),(358,159,37,2,NULL),(359,104,4,2,NULL),(360,104,11,2,NULL),(361,104,26,2,NULL),(362,104,40,2,NULL),(363,30,22,2,NULL),(364,32,22,2,NULL),(365,36,21,2,NULL),(366,41,22,2,NULL),(367,51,22,2,NULL),(368,37,3,2,NULL),(369,37,10,2,NULL),(370,37,24,2,NULL),(371,37,37,2,NULL),(372,38,3,2,NULL),(373,38,10,2,NULL),(374,38,24,2,NULL),(375,38,37,2,NULL),(376,44,3,2,NULL),(377,44,10,2,NULL),(378,44,24,2,NULL),(379,44,37,2,NULL),(380,45,3,2,NULL),(381,45,10,2,NULL),(382,45,24,2,NULL),(383,45,37,2,NULL),(384,52,4,2,NULL),(385,52,11,2,NULL),(386,52,26,2,NULL),(387,52,40,2,NULL),(388,13,3,2,NULL),(389,13,10,2,NULL),(390,13,24,2,NULL),(391,13,37,2,NULL),(392,14,3,2,NULL),(393,14,10,2,NULL),(394,14,24,2,NULL),(395,14,37,2,NULL),(396,17,3,2,NULL),(397,17,10,2,NULL),(398,17,24,2,NULL),(399,17,37,2,NULL),(400,18,3,2,NULL),(401,18,10,2,NULL),(402,18,24,2,NULL),(403,18,37,2,NULL),(404,19,4,2,NULL),(405,19,11,2,NULL),(406,19,26,2,NULL),(407,19,40,2,NULL),(408,1,3,2,NULL),(409,1,10,2,NULL),(410,1,24,2,NULL),(411,1,37,2,NULL),(412,2,3,2,NULL),(413,2,10,2,NULL),(414,2,24,2,NULL),(415,2,37,2,NULL),(416,6,3,2,NULL),(417,6,10,2,NULL),(418,6,24,2,NULL),(419,6,37,2,NULL),(420,7,3,2,NULL),(421,7,10,2,NULL),(422,7,24,2,NULL),(423,7,37,2,NULL),(424,5,4,2,NULL),(425,5,11,2,NULL),(426,5,26,2,NULL),(427,5,40,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.SET_ORIENTATION'),(17,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://mms/',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(17,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(18,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(21,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/',NULL,NULL,NULL),(33,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(49,NULL,NULL,'content://mms/',NULL,NULL,NULL),(50,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(62,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(71,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,1),(2,31,5),(3,38,7),(4,43,11),(5,50,14),(6,56,16),(7,56,17),(8,56,18),(9,59,20),(10,69,31),(11,74,32),(12,74,33),(13,78,35),(14,85,40),(15,89,43),(16,92,49),(17,92,50),(18,99,59),(19,100,60),(20,105,61),(21,105,62),(22,105,64),(23,114,68),(24,117,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,2,9),(17,2,10),(18,2,11),(19,3,1),(20,3,3),(21,3,6),(22,3,7),(23,3,9),(24,3,10),(25,3,11),(26,4,1),(27,4,2),(28,4,3),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,9),(35,4,10),(36,4,11),(37,5,1),(38,5,2),(39,5,3),(40,5,4),(41,5,5),(42,5,6),(43,5,7),(44,5,11),(45,5,12),(46,5,13),(47,5,14),(48,5,15),(49,5,16),(50,6,17),(51,6,1),(52,6,18),(53,6,3),(54,6,4),(55,6,6),(56,6,7),(57,6,9),(58,6,10),(59,6,11),(60,6,15),(61,7,17),(62,7,1),(63,7,18),(64,7,3),(65,7,4),(66,7,6),(67,7,7),(68,7,9),(69,7,10),(70,7,11),(71,7,15);
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
