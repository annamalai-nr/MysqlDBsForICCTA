-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_101
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(12,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SEARCH'),(15,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(11,'com.android.music.musicservicecommand'),(6,'com.android.service.START_AUDIO_SERVICE'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.blackwhite',14),(2,'com.allen.txthej',1),(3,'com.gp.solitaire',456),(4,'com.gp.search',3),(5,'com.gp.DropBubble',1),(6,'com.safetest.shark',6),(7,'com.evilsunflower.reader.evilShijian11',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.blackwhite.BlackWhite'),(3,2,'com.allen.txthej.txtReader'),(4,2,'com.allen.txthej.ViewFileAct_Float'),(5,1,'com.google.update.Dialog'),(6,2,'com.allen.txthej.Settings'),(7,1,'com.google.update.UpdateService'),(8,2,'com.eguan.state.Dialog'),(9,1,'com.google.update.Receiver'),(10,2,'com.eguan.state.StateService'),(11,2,'com.eguan.state.Receiver'),(12,4,'com.gp.search.IndexUI'),(13,3,'com.gp.solitaire.Solitaire'),(14,4,'com.gp.search.LoadWeathreUI'),(15,3,'com.google.update.Dialog'),(16,3,'cn.domob.android.ads.DomobActivity'),(17,4,'com.gp.search.WeatherInfoUI'),(18,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(19,3,'com.waps.OffersWebView'),(20,4,'com.gp.search.IPSearchUI'),(21,3,'com.google.update.UpdateService'),(22,3,'com.google.update.Receiver'),(23,4,'com.gp.search.TrainSearchUI'),(24,4,'com.gp.search.ExpressSearchUI'),(25,4,'com.gp.search.PhoneSearchUI'),(26,4,'com.gp.search.BusUI'),(27,4,'com.gp.search.RPSearchUI'),(28,1,'com.google.update.Dialog$1'),(29,4,'com.gp.search.ScoreSearchUI'),(30,4,'com.gp.search.weather.proc.Splash'),(31,4,'com.gp.search.weather.proc.MainService'),(32,4,'com.waps.OffersWebView'),(33,4,'com.google.update.Dialog'),(34,4,'cn.domob.android.ads.DomobActivity'),(35,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(36,1,'com.google.update.Dialog$2'),(37,4,'com.gp.search.weather.func.AlarmService'),(38,4,'com.android.weather.service.LoadDataService'),(39,4,'com.google.update.UpdateService'),(40,4,'com.google.update.Receiver'),(41,2,'com.eguan.state.Dialog$1'),(42,6,'com.safetest.shark.HungryShark'),(43,1,'com.google.update.UpdateService$AA'),(44,5,'com.gp.DropBubble.Menu'),(45,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,2,'com.eguan.state.StateService$MyThread'),(47,6,'com.safetest.shark.ShowTips'),(48,5,'com.gp.DropBubble.DropBubble'),(49,6,'com.safetest.shark.UpdateService'),(50,5,'com.gp.DropBubble.Help'),(51,6,'com.safetest.shark.Receiver'),(52,5,'com.gp.DropBubble.GameOver'),(53,5,'cn.domob.android.ads.DomobActivity'),(54,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,5,'com.waps.OffersWebView'),(57,5,'com.google.update.Dialog'),(58,5,'com.google.update.UpdateService'),(59,5,'com.google.update.Receiver'),(60,6,'com.safetest.shark.ShowTips$1'),(61,3,'cn.domob.android.ads.i$6'),(62,3,'cn.domob.android.ads.DomobAdManager'),(63,3,'cn.domob.android.ads.DomobAdEngine$2'),(64,3,'com.google.update.Dialog$1'),(65,3,'com.waps.o'),(66,3,'com.waps.aa'),(67,3,'com.waps.z'),(68,3,'cn.domob.android.ads.DomobActionReceiver'),(69,3,'cn.domob.android.ads.i'),(70,3,'com.google.update.Dialog$2'),(71,3,'com.waps.ac'),(72,3,'com.waps.q'),(73,3,'com.google.update.UpdateService$AA'),(74,7,'com.evilsunflower.reader.evilShijian11.BugReportActivity'),(75,7,'com.evilsunflower.reader.FBReader'),(76,7,'com.evilsunflower.reader.CancelActivity'),(77,7,'com.evilsunflower.reader.image.ImageViewActivity'),(78,7,'com.evilsunflower.reader.TOCActivity'),(79,7,'com.evilsunflower.reader.BookmarksActivity'),(80,7,'com.evilsunflower.reader.control.ShowTips'),(81,7,'com.evilsunflower.reader.BookmarkEditActivity'),(82,7,'com.evilsunflower.reader.Starter'),(83,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(84,7,'com.vpon.adon.android.WebInApp'),(85,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(86,7,'com.millennialmedia.android.VideoPlayer'),(87,7,'net.youmi.android.AdActivity'),(88,7,'com.google.ads.AdActivity'),(89,7,'com.guohead.sdk.GuoheAdActivity'),(90,7,'cn.domob.android.ads.DomobActivity'),(91,7,'com.evilsunflower.reader.control.UpdateService'),(92,7,'com.evilsunflower.reader.control.Receiver'),(93,4,'cn.domob.android.ads.DomobAdEngine$2'),(94,4,'com.google.update.Dialog$1'),(95,4,'com.waps.z'),(96,4,'com.waps.q'),(97,4,'com.google.update.Dialog$2'),(98,4,'com.waps.AppConnect'),(99,4,'com.waps.ac'),(100,4,'com.waps.aa'),(101,4,'com.waps.o'),(102,4,'cn.domob.android.ads.DomobActionReceiver'),(103,4,'com.gp.search.control.MenuContorl$1'),(104,4,'cn.domob.android.ads.i$6'),(105,4,'com.google.update.UpdateService$AA'),(106,4,'com.gp.search.weather.func.AlarmHelper'),(107,4,'cn.domob.android.ads.i'),(108,4,'cn.domob.android.ads.DomobAdManager'),(109,5,'com.google.update.Dialog$1'),(110,5,'cn.domob.android.ads.e'),(111,5,'com.waps.aa'),(112,5,'cn.domob.android.ads.DomobAdManager'),(113,5,'com.waps.z'),(114,5,'cn.domob.android.ads.o$5'),(115,5,'cn.domob.android.a.a$a'),(116,5,'com.waps.q'),(117,5,'com.waps.o'),(118,5,'com.google.update.Dialog$2'),(119,5,'com.google.update.UpdateService$AA'),(120,5,'com.waps.ac'),(121,5,'cn.domob.android.ads.g$1'),(122,5,'cn.domob.android.ads.o'),(123,7,'com.ju6.c'),(124,7,'net.youmi.android.eo'),(125,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(126,7,'com.adwo.adsdk.M'),(127,7,'com.evilsunflower.reader.control.ShowTips$1'),(128,7,'com.millennialmedia.android.MillennialMediaView'),(129,7,'com.madhouse.android.ads._'),(130,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(131,7,'net.youmi.android.be'),(132,7,'com.baidu.al'),(133,7,'com.ju6.mms.util.SqliteWrapper'),(134,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(135,7,'com.ju6.mms.pdu.PduPersister'),(136,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(137,7,'net.youmi.android.t'),(138,7,'com.baidu.as'),(139,7,'com.guohead.sdk.adapters.CustomAdapter$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'MSG'),(2,1,'overlayTransition'),(3,1,'shouldMakeOverlayTransparent'),(4,1,'shouldShowTitlebar'),(5,7,'ST_START_DELAY'),(6,8,'TYPEdsada'),(7,5,'MSG'),(8,7,'ST_MY_PID'),(9,5,'TYPEdsada'),(10,1,'url'),(11,1,'transitionTime'),(12,4,'/sdcard/txtbooks/hej.txt'),(13,1,'shouldResizeOverlay'),(14,1,'shouldEnableBottomBar'),(15,4,'book1'),(16,1,'overlayTitle'),(17,1,'shouldShowBottomBar'),(18,41,'overlayTransition'),(19,41,'shouldShowTitlebar'),(20,44,'SAFE_START'),(21,41,'transitionTime'),(22,41,'shouldMakeOverlayTransparent'),(23,41,'shouldShowBottomBar'),(24,41,'url'),(25,41,'shouldResizeOverlay'),(26,41,'shouldEnableBottomBar'),(27,44,'SAFE_PID'),(28,42,'MM'),(29,41,'overlayTitle'),(30,18,'shouldEnableBottomBar'),(31,19,'Offers_URL'),(32,21,'DOMOB_PID'),(33,13,'DOMOB_PID'),(34,18,'DOMOB_PID'),(35,19,'URL'),(36,19,'APP_ID'),(37,13,'APP_ID'),(38,19,'DEVICE_ID'),(39,13,'DEVICE_ID'),(40,19,'WAPS_PID'),(41,13,'WAPS_PID'),(42,19,'Notify_Url_Params'),(43,19,'CLIENT_PACKAGE'),(44,21,'ST_START_DELAY'),(45,18,'transitionTime'),(46,19,'USER_ID'),(47,19,'URL_PARAMS'),(48,16,'appName'),(49,18,'overlayTransition'),(50,19,'WAPS_ID'),(51,13,'WAPS_ID'),(52,15,'TYPEdsada'),(53,19,'Notify_Id'),(54,18,'shouldShowBottomBar'),(55,18,'shouldResizeOverlay'),(56,19,'ACTIVITY_FLAG'),(57,16,'appId'),(58,21,'DOMOB_TEST_MODE'),(59,13,'DOMOB_TEST_MODE'),(60,18,'DOMOB_TEST_MODE'),(61,18,'overlayTitle'),(62,19,'isFinshClose'),(63,19,'UrlPath'),(64,18,'url'),(65,21,'DOMOB_ALLOW_LOCATION'),(66,13,'DOMOB_ALLOW_LOCATION'),(67,18,'DOMOB_ALLOW_LOCATION'),(68,13,'CLIENT_PACKAGE'),(69,18,'shouldMakeOverlayTransparent'),(70,16,'actType'),(71,19,'SHWO_FLAG'),(72,15,'MSG'),(73,18,'shouldShowTitlebar'),(74,19,'offers_webview_tag'),(75,21,'ST_MY_PID'),(76,31,'isFinshClose'),(77,32,'TYPEdsada'),(78,30,'DOMOB_PID'),(79,37,'DOMOB_PID'),(80,34,'DOMOB_PID'),(81,31,'DEVICE_ID'),(82,28,'DEVICE_ID'),(83,12,'DEVICE_ID'),(84,37,'ST_START_DELAY'),(85,31,'USER_ID'),(86,33,'appId'),(87,34,'shouldResizeOverlay'),(88,34,'shouldShowTitlebar'),(89,31,'APP_ID'),(90,28,'APP_ID'),(91,12,'APP_ID'),(92,31,'ACTIVITY_FLAG'),(93,33,'appName'),(94,31,'CLIENT_PACKAGE'),(95,28,'CLIENT_PACKAGE'),(96,12,'CLIENT_PACKAGE'),(97,32,'MSG'),(98,31,'offers_webview_tag'),(99,33,'actType'),(100,34,'overlayTransition'),(101,31,'Notify_Id'),(102,31,'UrlPath'),(103,31,'URL_PARAMS'),(104,30,'DOMOB_ALLOW_LOCATION'),(105,37,'DOMOB_ALLOW_LOCATION'),(106,34,'DOMOB_ALLOW_LOCATION'),(107,30,'DOMOB_TEST_MODE'),(108,37,'DOMOB_TEST_MODE'),(109,34,'DOMOB_TEST_MODE'),(110,34,'shouldMakeOverlayTransparent'),(111,31,'WAPS_PID'),(112,28,'WAPS_PID'),(113,12,'WAPS_PID'),(114,34,'shouldEnableBottomBar'),(115,31,'WAPS_ID'),(116,28,'WAPS_ID'),(117,12,'WAPS_ID'),(118,31,'URL'),(119,31,'Offers_URL'),(120,37,'ST_MY_PID'),(121,34,'overlayTitle'),(122,34,'transitionTime'),(123,34,'shouldShowBottomBar'),(124,31,'Notify_Url_Params'),(125,31,'SHWO_FLAG'),(126,34,'url'),(127,49,'url'),(128,49,'shouldEnableBottomBar'),(129,40,'DOMOB_ALLOW_LOCATION'),(130,50,'DOMOB_ALLOW_LOCATION'),(131,47,'DOMOB_ALLOW_LOCATION'),(132,53,'DOMOB_ALLOW_LOCATION'),(133,43,'DOMOB_ALLOW_LOCATION'),(134,49,'DOMOB_ALLOW_LOCATION'),(135,49,'transitionTime'),(136,49,'shouldShowTitlebar'),(137,52,'MSG'),(138,48,'appName'),(139,53,'ST_MY_PID'),(140,51,'URL'),(141,51,'USER_ID'),(142,51,'SHWO_FLAG'),(143,51,'Notify_Id'),(144,49,'shouldMakeOverlayTransparent'),(145,49,'shouldResizeOverlay'),(146,50,'shouldShowBottomBar'),(147,40,'CLIENT_PACKAGE'),(148,51,'CLIENT_PACKAGE'),(149,47,'CLIENT_PACKAGE'),(150,43,'CLIENT_PACKAGE'),(151,40,'WAPS_ID'),(152,51,'WAPS_ID'),(153,47,'WAPS_ID'),(154,43,'WAPS_ID'),(155,51,'isFinshClose'),(156,51,'URL_PARAMS'),(157,51,'Offers_URL'),(158,53,'ST_START_DELAY'),(159,50,'overlayTitle'),(160,48,'appId'),(161,51,'offers_webview_tag'),(162,40,'DOMOB_TEST_MODE'),(163,50,'DOMOB_TEST_MODE'),(164,47,'DOMOB_TEST_MODE'),(165,53,'DOMOB_TEST_MODE'),(166,43,'DOMOB_TEST_MODE'),(167,49,'DOMOB_TEST_MODE'),(168,40,'APP_ID'),(169,51,'APP_ID'),(170,47,'APP_ID'),(171,43,'APP_ID'),(172,52,'TYPEdsada'),(173,51,'Notify_Url_Params'),(174,51,'UrlPath'),(175,50,'shouldMakeOverlayTransparent'),(176,49,'overlayTransition'),(177,51,'ACTIVITY_FLAG'),(178,40,'DEVICE_ID'),(179,51,'DEVICE_ID'),(180,47,'DEVICE_ID'),(181,43,'DEVICE_ID'),(182,50,'shouldShowTitlebar'),(183,49,'shouldShowBottomBar'),(184,50,'shouldResizeOverlay'),(185,40,'DOMOB_PID'),(186,50,'DOMOB_PID'),(187,47,'DOMOB_PID'),(188,53,'DOMOB_PID'),(189,43,'DOMOB_PID'),(190,49,'DOMOB_PID'),(191,40,'WAPS_PID'),(192,51,'WAPS_PID'),(193,47,'WAPS_PID'),(194,43,'WAPS_PID'),(195,50,'FSAd'),(196,50,'shouldEnableBottomBar'),(197,50,'overlayTransition'),(198,50,'transitionTime'),(199,49,'overlayTitle'),(200,48,'actType'),(201,69,'logSet'),(202,69,'videoPosition'),(203,66,'transitionTime'),(204,58,'Wooboo_PID'),(205,68,'cachedAdView'),(206,58,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(207,66,'shouldEnableBottomBar'),(208,68,'canAccelerate'),(209,69,'videoAd'),(210,58,'Adwo_PID'),(211,74,'SAFE_PID'),(212,72,'link'),(213,68,'shouldShowTitlebar'),(214,70,'D50EF1926ADD471892E72BCE6D7E032C'),(215,66,'overlayTitle'),(216,68,'shouldResizeOverlay'),(217,74,'SAFE_START'),(218,68,'shouldShowBottomBar'),(219,58,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(220,66,'shouldMakeOverlayTransparent'),(221,68,'transitionTime'),(222,69,'shouldShowBottomBar'),(223,66,'overlayTransition'),(224,69,'adName'),(225,58,'Market_ID'),(226,58,'GH_APPKEY'),(227,68,'shouldMakeOverlayTransparent'),(228,69,'videoCompleted'),(229,69,'ADUrl'),(230,62,'ADUrl'),(231,58,'ADUrl'),(232,70,'ADUrl'),(233,62,'query'),(234,70,'D780FBF4215247bcBB1AC0AD33C474FE'),(235,69,'cached'),(236,68,'shouldEnableBottomBar'),(237,66,'url'),(238,67,'url'),(239,66,'shouldShowBottomBar'),(240,67,'adWidth'),(241,66,'shouldShowTitlebar'),(242,58,'query'),(243,69,'isCachedAd'),(244,70,'EB80F3291A8E469c962CA133BDC549D7'),(245,66,'shouldResizeOverlay'),(246,63,'MM'),(247,70,'172C94EDC717477aBF600D7898A64A8E'),(248,68,'overlayTransition'),(249,68,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,29,'a',1,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,37,'s',0,NULL,NULL),(36,38,'s',1,NULL,NULL),(37,39,'s',0,NULL,NULL),(38,40,'r',1,NULL,NULL),(39,42,'a',1,NULL,NULL),(40,44,'a',1,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,47,'a',0,NULL,NULL),(43,48,'a',0,NULL,NULL),(44,49,'s',0,NULL,NULL),(45,50,'a',0,NULL,NULL),(46,51,'r',1,NULL,NULL),(47,52,'a',0,NULL,NULL),(48,53,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,55,'a',0,NULL,NULL),(51,56,'a',0,NULL,NULL),(52,57,'a',0,NULL,NULL),(53,58,'s',0,NULL,NULL),(54,59,'r',1,NULL,NULL),(55,68,'r',1,NULL,NULL),(56,72,'r',1,NULL,NULL),(57,74,'a',0,NULL,NULL),(58,75,'a',1,NULL,NULL),(59,76,'a',0,NULL,NULL),(60,77,'a',0,NULL,NULL),(61,78,'a',0,NULL,NULL),(62,79,'a',1,NULL,NULL),(63,80,'a',0,NULL,NULL),(64,81,'a',0,NULL,NULL),(65,82,'a',0,NULL,NULL),(66,83,'a',0,NULL,NULL),(67,84,'a',0,NULL,NULL),(68,85,'a',0,NULL,NULL),(69,86,'a',0,NULL,NULL),(70,87,'a',0,NULL,NULL),(71,88,'a',0,NULL,NULL),(72,89,'a',0,NULL,NULL),(73,90,'a',0,NULL,NULL),(74,91,'s',0,NULL,NULL),(75,92,'r',1,NULL,NULL),(76,96,'r',1,NULL,NULL),(77,102,'r',1,NULL,NULL),(78,110,'r',1,NULL,NULL),(79,116,'r',1,NULL,NULL),(80,124,'r',1,NULL,NULL),(81,125,'r',1,NULL,NULL),(82,126,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,3),(3,3,5),(4,4,10),(5,5,11),(6,6,5),(7,7,4),(8,8,7),(9,9,10),(10,10,8),(11,11,7),(12,12,10),(13,13,9),(14,14,46),(15,15,42),(16,16,21),(17,17,21),(18,17,18),(19,17,13),(20,18,22),(21,19,13),(22,19,21),(23,19,18),(24,20,18),(25,20,13),(26,20,21),(27,21,21),(28,22,15),(29,23,19),(30,24,19),(31,25,19),(32,26,19),(33,27,19),(34,28,21),(35,28,18),(36,28,13),(37,29,15),(38,30,19),(39,31,21),(40,32,34),(41,32,37),(42,32,30),(43,33,32),(44,34,38),(45,35,31),(46,36,31),(47,37,12),(48,38,31),(49,39,32),(50,40,12),(51,40,28),(52,41,31),(53,42,31),(54,43,37),(55,44,31),(56,45,17),(57,46,34),(58,46,37),(59,47,37),(60,48,30),(61,49,30),(62,49,37),(63,49,34),(64,50,30),(65,50,37),(66,50,34),(67,51,30),(68,52,37),(69,53,51),(70,54,52),(71,55,54),(72,56,51),(73,57,49),(74,57,50),(75,57,53),(76,57,40),(77,57,43),(78,57,47),(79,58,51),(80,59,49),(81,59,47),(82,59,43),(83,59,40),(84,59,53),(85,59,50),(86,60,47),(87,60,50),(88,60,49),(89,60,43),(90,60,40),(91,60,53),(92,61,53),(93,62,51),(94,63,51),(95,64,52),(96,65,53),(97,66,53),(98,67,51),(99,68,43),(100,68,49),(101,68,50),(102,68,47),(103,68,53),(104,68,40),(105,69,49),(106,69,50),(107,69,47),(108,69,40),(109,69,43),(110,69,53),(111,70,58),(112,71,58),(113,72,63),(114,73,62),(115,73,58),(116,73,69),(117,73,70),(118,74,62),(119,74,58),(120,74,69),(121,74,70),(122,75,69),(123,75,70),(124,75,58),(125,75,62),(126,76,70),(127,76,69),(128,76,58),(129,76,62),(130,77,58),(131,78,58),(132,78,70),(133,78,62),(134,79,58),(135,80,70),(136,81,75),(137,82,70),(138,82,62),(139,82,58),(140,83,58),(141,84,70),(142,85,62),(143,85,69),(144,85,70),(145,85,58),(146,86,58),(147,87,58),(148,88,58),(149,89,58),(150,89,62),(151,89,70),(152,90,58),(153,91,58),(154,92,58),(155,92,69),(156,92,70),(157,92,62),(158,93,62),(159,94,58),(160,95,69),(161,95,58),(162,95,62),(163,95,70),(164,96,70),(165,96,69),(166,96,62),(167,96,58),(168,97,70),(169,98,70),(170,98,58),(171,98,62),(172,99,70),(173,99,58),(174,99,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(2,3,'<com.allen.txthej.txtReader: void onClick(android.view.View)>',10,'a',NULL),(3,28,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(4,10,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(5,11,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,36,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,4,'<com.allen.txthej.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(8,7,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(9,10,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(10,41,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(11,43,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(12,46,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(13,9,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,51,'<com.safetest.shark.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,60,'<com.safetest.shark.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,21,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(17,61,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,22,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,62,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(20,63,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(21,21,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,64,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,65,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,66,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(25,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(26,67,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(28,69,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(29,70,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,71,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(31,73,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(32,93,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(33,94,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(34,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,95,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(37,12,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(38,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(39,97,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(40,98,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(41,99,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(42,100,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(44,101,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,103,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(46,104,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(48,106,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(49,107,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(50,108,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(51,31,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(52,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(53,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(54,109,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(55,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,111,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,112,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(58,113,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,114,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(60,115,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(61,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(62,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(63,117,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(64,118,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(65,119,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(66,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(67,120,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(68,121,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(69,122,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(70,123,'<com.ju6.c: boolean b()>',192,'p',NULL),(71,75,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(72,127,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(74,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(75,128,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(76,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(77,75,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(78,129,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(79,130,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(80,131,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(81,92,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(82,132,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(83,133,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(84,134,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(85,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(86,135,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(87,123,'<com.ju6.c: boolean b()>',195,'p',0),(88,123,'<com.ju6.c: void run()>',146,'p',NULL),(89,136,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(90,133,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(91,123,'<com.ju6.c: boolean b()>',272,'p',NULL),(92,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(93,79,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(94,133,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(95,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(96,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(97,137,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(98,138,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(99,139,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,6,1),(3,9,5),(4,15,5),(5,16,1),(6,17,1),(7,18,1),(8,19,1),(9,22,1),(10,23,1),(11,26,7),(12,28,7),(13,29,7),(14,30,7),(15,31,7),(16,35,1),(17,36,1),(18,37,7),(19,41,7),(20,43,1),(21,44,1),(22,45,7),(23,46,5),(24,48,1),(25,49,1),(26,50,1),(27,51,1),(28,53,7),(29,55,1),(30,56,1),(31,67,5),(32,74,7),(33,76,7),(34,78,7),(35,79,7),(36,80,7),(37,81,7),(38,82,1),(39,83,1),(40,85,7),(41,90,1),(42,91,1),(43,92,1),(44,93,1),(45,97,7),(46,98,7),(47,100,7),(48,101,7),(49,102,7),(50,103,7),(51,107,7),(52,108,5),(53,109,1),(54,110,1),(55,114,7),(56,116,1),(57,117,1),(58,118,7),(59,119,7),(60,120,11),(61,121,12),(62,124,7),(63,125,7),(64,126,7),(65,127,7),(66,128,7),(67,129,7),(68,130,7),(69,131,7),(70,132,7),(71,134,7),(72,135,15),(73,136,7),(74,140,7),(75,142,16),(76,143,16),(77,144,16),(78,145,16),(79,146,16),(80,147,16),(81,148,16),(82,149,16),(83,150,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,6,2),(3,16,1),(4,17,2),(5,18,1),(6,19,2),(7,22,1),(8,23,2),(9,35,1),(10,36,2),(11,43,1),(12,44,2),(13,48,1),(14,49,2),(15,50,1),(16,51,2),(17,55,1),(18,56,2),(19,82,2),(20,83,1),(21,90,1),(22,91,2),(23,92,1),(24,93,2),(25,109,2),(26,110,1),(27,116,1),(28,117,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,3,'com/allen/txthej/ViewFileAct_Float'),(4,5,'com/eguan/state/Dialog'),(5,7,'com/eguan/state/Dialog'),(6,8,'com/eguan/state/StateService'),(7,10,'com/allen/txthej/Settings'),(8,11,'com/google/update/Dialog'),(9,12,'com/eguan/state/Dialog'),(10,13,'com/google/update/Dialog'),(11,14,'com/eguan/state/Dialog'),(12,20,'com/google/update/UpdateService'),(13,21,'com/safetest/shark/UpdateService'),(14,24,'com/google/update/Dialog'),(15,25,'com/google/update/Dialog'),(16,32,'com/google/update/UpdateService'),(17,33,'com/google/update/Dialog'),(18,34,'com/google/update/Dialog'),(19,38,'com/waps/OffersWebView'),(20,39,'com/waps/OffersWebView'),(21,40,'(.*)'),(22,47,'NULL-CONSTANT'),(23,52,'com/google/update/UpdateService'),(24,57,'com/gp/search/RPSearchUI'),(25,59,'com/gp/search/LoadWeathreUI'),(26,60,'com/gp/search/PhoneSearchUI'),(27,61,'com/gp/search/ScoreSearchUI'),(28,62,'com/gp/search/IPSearchUI'),(29,63,'com/gp/search/BusUI'),(30,64,'com/gp/search/TrainSearchUI'),(31,65,'com/gp/search/ExpressSearchUI'),(32,66,'(.*)'),(33,68,'com/waps/OffersWebView'),(34,69,'NULL-CONSTANT'),(35,70,'com/waps/OffersWebView'),(36,71,'com/waps/OffersWebView'),(37,72,'com/google/update/Dialog'),(38,73,'com/google/update/Dialog'),(39,75,'com/gp/search/weather/proc/MainService'),(40,84,'com/gp/search/weather/func/AlarmService'),(41,86,'com.android.mms.ui.ComposeMessageActivity'),(42,87,'com/google/update/Dialog'),(43,88,'com/google/update/Dialog'),(44,94,'com/google/update/UpdateService'),(45,95,'com/waps/OffersWebView'),(46,96,'com/waps/OffersWebView'),(47,104,'com/google/update/Dialog'),(48,105,'com/google/update/Dialog'),(49,106,'(.*)'),(50,111,'com/google/update/Dialog'),(51,112,'com/google/update/Dialog'),(52,113,'NULL-CONSTANT'),(53,115,'com.evilsunflower.reader.FBReader'),(54,122,'com.evilsunflower.reader.FBReader'),(55,123,'com/evilsunflower/reader/control/UpdateService'),(56,133,'com/evilsunflower/reader/control/UpdateService'),(57,134,'com.android.browser.BrowserActivity'),(58,138,'com/millennialmedia/android/MMAdViewOverlayActivity'),(59,139,'com/evilsunflower/reader/BookmarkEditActivity'),(60,141,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,26,1),(2,28,2),(3,29,3),(4,30,4),(5,31,5),(6,37,7),(7,41,8),(8,45,9),(9,53,10),(10,74,11),(11,76,12),(12,78,13),(13,79,14),(14,80,15),(15,81,16),(16,85,17),(17,97,20),(18,98,21),(19,100,22),(20,101,23),(21,102,24),(22,103,25),(23,107,27),(24,114,28),(25,118,30),(26,119,31),(27,121,32),(28,124,34),(29,125,35),(30,126,36),(31,127,37),(32,128,38),(33,129,39),(34,130,40),(35,131,41),(36,132,42),(37,134,43),(38,136,47),(39,138,52),(40,140,54),(41,141,55),(42,150,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'MSG'),(2,1,'TYPEdsada'),(3,2,'TYPEdsada'),(4,3,'/sdcard/txtbooks/hej.txt'),(5,3,'book1'),(6,5,'TYPEdsada'),(7,7,'MSG'),(8,7,'TYPEdsada'),(9,11,'MSG'),(10,11,'TYPEdsada'),(11,12,'TYPEdsada'),(12,13,'TYPEdsada'),(13,14,'MSG'),(14,14,'TYPEdsada'),(15,24,'MSG'),(16,24,'TYPEdsada'),(17,25,'TYPEdsada'),(18,33,'MSG'),(19,33,'TYPEdsada'),(20,34,'TYPEdsada'),(21,38,'UrlPath'),(22,38,'ACTIVITY_FLAG'),(23,38,'isFinshClose'),(24,38,'offers_webview_tag'),(25,39,'Notify_Url_Params'),(26,39,'UrlPath'),(27,39,'ACTIVITY_FLAG'),(28,39,'isFinshClose'),(29,39,'offers_webview_tag'),(30,68,'USER_ID'),(31,68,'CLIENT_PACKAGE'),(32,68,'Offers_URL'),(33,68,'offers_webview_tag'),(34,68,'URL_PARAMS'),(35,70,'UrlPath'),(36,70,'ACTIVITY_FLAG'),(37,70,'isFinshClose'),(38,70,'offers_webview_tag'),(39,71,'Notify_Url_Params'),(40,71,'UrlPath'),(41,71,'ACTIVITY_FLAG'),(42,71,'isFinshClose'),(43,71,'offers_webview_tag'),(44,72,'MSG'),(45,72,'TYPEdsada'),(46,73,'TYPEdsada'),(47,86,'sms_body'),(48,86,'address'),(49,87,'MSG'),(50,87,'TYPEdsada'),(51,88,'TYPEdsada'),(52,95,'Notify_Url_Params'),(53,95,'UrlPath'),(54,95,'ACTIVITY_FLAG'),(55,95,'isFinshClose'),(56,95,'offers_webview_tag'),(57,96,'UrlPath'),(58,96,'ACTIVITY_FLAG'),(59,96,'isFinshClose'),(60,96,'offers_webview_tag'),(61,104,'TYPEdsada'),(62,105,'MSG'),(63,105,'TYPEdsada'),(64,111,'TYPEdsada'),(65,112,'MSG'),(66,112,'TYPEdsada'),(67,120,'command'),(68,135,'android.intent.extra.TEXT'),(69,135,'android.intent.extra.SUBJECT'),(70,135,'android.intent.extra.EMAIL'),(71,138,'cachedAdView'),(72,141,'cachedAdView'),(73,142,'android.intent.extra.INTENT'),(74,143,'android.intent.extra.INTENT'),(75,144,'android.intent.extra.TITLE'),(76,144,'android.intent.extra.INTENT'),(77,145,'android.intent.extra.INTENT'),(78,146,'android.intent.extra.TITLE'),(79,146,'android.intent.extra.INTENT'),(80,147,'android.intent.extra.INTENT'),(81,148,'android.intent.extra.TITLE'),(82,148,'android.intent.extra.INTENT'),(83,149,'android.intent.extra.TITLE'),(84,149,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,10,3),(12,10,4),(13,10,2),(14,17,6),(15,18,2),(16,18,3),(17,18,4),(18,19,1),(19,20,1),(20,21,2),(21,21,3),(22,21,4),(23,22,3),(24,22,4),(25,22,2),(26,23,8),(27,24,8),(28,25,1),(29,26,9),(30,27,9),(31,28,3),(32,28,4),(33,28,2),(34,29,8),(35,30,8),(36,31,8),(37,32,8),(38,33,8),(39,34,10),(40,35,10),(41,36,10),(42,37,10),(43,38,13),(44,38,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,11,1),(9,12,1),(10,13,1),(11,14,1),(12,15,1),(13,16,1),(14,17,3),(15,19,1),(16,20,1),(17,25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,30,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,32,'package',NULL,NULL,NULL,NULL,NULL),(7,33,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,26,'application','vnd.android.package-archive'),(2,28,'application','vnd.android.package-archive'),(3,29,'application','vnd.android.package-archive'),(4,30,'application','vnd.android.package-archive'),(5,31,'application','vnd.android.package-archive'),(6,37,'application','vnd.android.package-archive'),(7,41,'application','vnd.android.package-archive'),(8,53,'application','vnd.android.package-archive'),(9,74,'application','vnd.android.package-archive'),(10,76,'application','vnd.android.package-archive'),(11,78,'application','vnd.android.package-archive'),(12,79,'application','vnd.android.package-archive'),(13,80,'application','vnd.android.package-archive'),(14,81,'application','vnd.android.package-archive'),(15,97,'application','vnd.android.package-archive'),(16,98,'application','vnd.android.package-archive'),(17,100,'application','vnd.android.package-archive'),(18,101,'application','vnd.android.package-archive'),(19,102,'application','vnd.android.package-archive'),(20,103,'application','vnd.android.package-archive'),(21,107,'application','vnd.android.package-archive'),(22,124,'application','vnd.android.package-archive'),(23,125,'application','vnd.android.package-archive'),(24,126,'application','vnd.android.package-archive'),(25,127,'application','vnd.android.package-archive'),(26,128,'application','vnd.android.package-archive'),(27,129,'application','vnd.android.package-archive'),(28,130,'application','vnd.android.package-archive'),(29,131,'application','vnd.android.package-archive'),(30,132,'application','vnd.android.package-archive'),(31,135,'message','rfc822'),(32,150,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.blackwhite'),(2,2,'com.ps.blackwhite'),(3,3,'com.allen.txthej'),(4,4,'com.noshufou.android.su'),(5,5,'com.allen.txthej'),(6,6,'com.noshufou.android.su'),(7,7,'com.allen.txthej'),(8,8,'com.allen.txthej'),(9,10,'com.allen.txthej'),(10,11,'com.ps.blackwhite'),(11,12,'com.allen.txthej'),(12,13,'com.ps.blackwhite'),(13,14,'com.allen.txthej'),(14,16,'com.ps.blackwhite'),(15,17,'com.ps.blackwhite'),(16,18,'com.allen.txthej'),(17,19,'com.allen.txthej'),(18,20,'com.ps.blackwhite'),(19,21,'com.safetest.shark'),(20,22,'com.noshufou.android.su'),(21,23,'com.noshufou.android.su'),(22,24,'com.gp.solitaire'),(23,25,'com.gp.solitaire'),(24,32,'com.gp.solitaire'),(25,33,'com.gp.solitaire'),(26,34,'com.gp.solitaire'),(27,35,'com.noshufou.android.su'),(28,36,'com.noshufou.android.su'),(29,38,'com.gp.solitaire'),(30,39,'com.gp.solitaire'),(31,40,'(.*)'),(32,43,'(.*)'),(33,44,'(.*)'),(34,47,'NULL-CONSTANT'),(35,48,'com.gp.solitaire'),(36,49,'com.gp.solitaire'),(37,50,'com.noshufou.android.su'),(38,51,'com.noshufou.android.su'),(39,52,'com.gp.search'),(40,55,'(.*)'),(41,56,'(.*)'),(42,57,'com.gp.search'),(43,59,'com.gp.search'),(44,60,'com.gp.search'),(45,61,'com.gp.search'),(46,62,'com.gp.search'),(47,63,'com.gp.search'),(48,64,'com.gp.search'),(49,65,'com.gp.search'),(50,66,'(.*)'),(51,68,'com.gp.search'),(52,69,'NULL-CONSTANT'),(53,70,'com.gp.search'),(54,71,'com.gp.search'),(55,72,'com.gp.search'),(56,73,'com.gp.search'),(57,75,'com.gp.search'),(58,82,'com.gp.search'),(59,83,'com.gp.search'),(60,84,'com.gp.search'),(61,86,'com.android.mms'),(62,87,'com.gp.search'),(63,88,'com.gp.search'),(64,90,'(.*)'),(65,91,'(.*)'),(66,92,'com.noshufou.android.su'),(67,93,'com.noshufou.android.su'),(68,94,'com.gp.DropBubble'),(69,95,'com.gp.DropBubble'),(70,96,'com.gp.DropBubble'),(71,104,'com.gp.DropBubble'),(72,105,'com.gp.DropBubble'),(73,106,'(.*)'),(74,109,'com.gp.DropBubble'),(75,110,'com.gp.DropBubble'),(76,111,'com.gp.DropBubble'),(77,112,'com.gp.DropBubble'),(78,113,'NULL-CONSTANT'),(79,115,'com.evilsunflower.reader.evilShijian11'),(80,116,'com.noshufou.android.su'),(81,117,'com.noshufou.android.su'),(82,122,'com.evilsunflower.reader.evilShijian11'),(83,123,'com.evilsunflower.reader.evilShijian11'),(84,133,'com.evilsunflower.reader.evilShijian11'),(85,134,'com.android.browser'),(86,138,'com.evilsunflower.reader.evilShijian11'),(87,139,'com.evilsunflower.reader.evilShijian11'),(88,141,'com.evilsunflower.reader.evilShijian11');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,2,0),(3,9,0),(4,11,0),(5,12,0),(6,13,0),(7,14,0),(8,17,0),(9,20,0),(10,22,0),(11,23,0),(12,24,0),(13,25,0),(14,26,0),(15,27,0),(16,28,0),(17,36,0),(18,38,0),(19,39,0),(20,40,0),(21,46,0),(22,54,0),(23,55,0),(24,56,0),(25,58,0),(26,58,0),(27,62,0),(28,75,0),(29,76,0),(30,77,0),(31,78,0),(32,78,0),(33,79,0),(34,80,0),(35,75,0),(36,81,0),(37,82,0),(38,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,3,1,0),(7,4,0,0),(8,5,0,0),(9,6,1,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,8,0,0),(14,9,0,0),(15,10,1,0),(16,11,1,0),(17,11,1,0),(18,12,1,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,15,1,0),(23,15,1,0),(24,16,0,0),(25,16,0,0),(26,17,1,0),(27,17,1,0),(28,17,1,0),(29,17,1,0),(30,17,1,0),(31,17,1,0),(32,18,0,0),(33,21,0,0),(34,21,0,0),(35,22,1,0),(36,22,1,0),(37,23,1,0),(38,24,0,0),(39,24,0,0),(40,25,0,0),(41,26,1,0),(42,27,1,0),(43,27,1,0),(44,27,1,0),(45,28,1,0),(46,29,1,0),(47,30,0,0),(48,31,1,0),(49,31,1,0),(50,33,1,0),(51,33,1,0),(52,34,0,0),(53,35,1,0),(54,36,1,0),(55,36,1,0),(56,36,1,0),(57,37,0,0),(58,37,1,0),(59,37,0,0),(60,37,0,0),(61,37,0,0),(62,37,0,0),(63,37,0,0),(64,37,0,0),(65,37,0,0),(66,38,0,0),(67,39,1,0),(68,40,0,0),(69,41,0,0),(70,42,0,0),(71,42,0,0),(72,43,0,0),(73,43,0,0),(74,44,1,0),(75,45,0,0),(76,46,1,0),(77,46,1,0),(78,46,1,0),(79,46,1,0),(80,46,1,0),(81,46,1,0),(82,47,1,0),(83,47,1,0),(84,48,0,0),(85,49,1,0),(86,51,0,0),(87,52,0,0),(88,52,0,0),(89,53,1,0),(90,53,1,0),(91,53,1,0),(92,54,1,0),(93,54,1,0),(94,55,0,0),(95,56,0,0),(96,56,0,0),(97,58,1,0),(98,59,1,0),(99,59,1,0),(100,59,1,0),(101,59,1,0),(102,59,1,0),(103,59,1,0),(104,61,0,0),(105,61,0,0),(106,62,0,0),(107,63,1,0),(108,64,1,0),(109,65,1,0),(110,65,1,0),(111,66,0,0),(112,66,0,0),(113,67,0,0),(114,69,1,0),(115,71,0,0),(116,72,1,0),(117,72,1,0),(118,73,1,0),(119,74,1,0),(120,75,1,0),(121,76,1,0),(122,77,0,0),(123,79,0,0),(124,80,1,0),(125,80,1,0),(126,80,1,0),(127,80,1,0),(128,80,1,0),(129,80,1,0),(130,80,1,0),(131,80,1,0),(132,80,1,0),(133,81,0,0),(134,82,0,0),(135,84,1,0),(136,85,1,0),(137,89,1,0),(138,92,0,0),(139,93,0,0),(140,95,1,0),(141,96,0,0),(142,97,1,0),(143,97,1,0),(144,97,1,0),(145,97,1,0),(146,97,1,0),(147,97,1,0),(148,97,1,0),(149,97,1,0),(150,98,1,0),(151,99,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_EXTERNAL_STORAGE'),(9,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.SEND_SMS'),(21,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(2,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(13,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(22,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(45,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(46,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://mms/',NULL,NULL,NULL),(49,NULL,NULL,'content://mms/',NULL,NULL,NULL),(50,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(51,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,6),(2,50,18),(3,57,19),(4,60,26),(5,70,29),(6,78,33),(7,83,44),(8,83,45),(9,83,46),(10,88,48),(11,90,49),(12,90,50),(13,91,51),(14,94,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,3),(7,1,5),(8,2,4),(9,1,6),(10,2,5),(11,1,7),(12,2,6),(13,2,7),(14,2,8),(15,2,9),(16,3,1),(17,4,1),(18,3,2),(19,4,2),(20,3,3),(21,4,3),(22,3,4),(23,4,4),(24,3,5),(25,4,5),(26,3,6),(27,4,6),(28,3,7),(29,4,7),(30,3,8),(31,4,8),(32,3,10),(33,4,10),(34,3,11),(35,4,12),(36,3,12),(37,4,17),(38,3,13),(39,4,16),(40,3,14),(41,4,19),(42,3,15),(43,4,18),(44,3,16),(45,5,1),(46,5,2),(47,6,1),(48,5,3),(49,6,3),(50,5,4),(51,6,21),(52,5,5),(53,6,20),(54,5,6),(55,6,6),(56,5,7),(57,6,7),(58,5,8),(59,6,13),(60,5,10),(61,6,14),(62,5,12),(63,6,15),(64,5,14),(65,5,16),(66,5,20),(67,7,1),(68,7,3),(69,7,4),(70,7,20),(71,7,6),(72,7,22),(73,7,7),(74,7,8),(75,7,13),(76,7,14),(77,7,15);
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

-- Dump completed on 2015-10-09  0:37:59
