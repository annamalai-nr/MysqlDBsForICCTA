-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_123
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'(.*)'),(13,'DownloadManageServicer.ACTION_CONTROL'),(16,'DownloadManageServicer.ACTION_UPDATE'),(10,'NULL-CONSTANT'),(20,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(17,'android.intent.action.DELETE'),(23,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(11,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(19,'android.intent.action.SEARCH'),(22,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(12,'android.intent.action.USER_PRESENT'),(14,'android.intent.action.VIEW'),(24,'com.android.music.musicservicecommand'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',32),(2,'com.ps.blackwhite',7),(3,'com.fantasmosoft.new',31),(4,'com.allen.txtdbwshs',1),(5,'com.gp.geekadoo',9),(6,'com.gp.mahjongg',1),(7,'com.evilsunflower.reader.evilShenger',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.google.update.Receiver'),(7,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,1,'com.safesys.viruskiller.ScanningReciever'),(9,3,'com.fantasmosoft.free_memory_recover.FreeMemoryRecover'),(10,2,'com.ps.blackwhite.BlackWhite'),(11,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(12,3,'com.fantasmosoft.free_memory_recover.SettingsActivity'),(13,2,'com.google.update.Dialog'),(14,3,'com.fantasmosoft.free_memory_recover.About'),(15,2,'com.google.update.UpdateService'),(16,3,'com.google.ads.AdActivity'),(17,2,'com.google.update.Receiver'),(18,3,'com.airpuh.ad.UpdateCheck'),(19,4,'com.allen.txtdbwshs.txtReader'),(20,4,'com.allen.txtdbwshs.ViewFileAct_Float'),(21,4,'com.allen.txtdbwshs.Settings'),(22,4,'com.eguan.state.Dialog'),(23,4,'com.eguan.state.StateService'),(24,4,'com.eguan.state.Receiver'),(25,5,'com.gp.geekadoo.ui.MainScreen'),(26,5,'com.gp.geekadoo.ui.Yaniv'),(27,5,'com.google.update.Dialog'),(28,5,'cn.domob.android.ads.DomobActivity'),(29,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,5,'com.waps.OffersWebView'),(31,5,'com.google.update.UpdateService'),(32,5,'com.google.update.Receiver'),(33,6,'com.gp.mahjongg.SelectActivity'),(34,6,'com.gp.mahjongg.PlayActivity'),(35,6,'com.gp.background.BackgroundActivity'),(36,6,'com.gp.mahjongg.SettingsActivity'),(37,6,'com.gp.mahjongg.BuilderActivity'),(38,6,'cn.domob.android.ads.DomobActivity'),(39,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,6,'com.vpon.adon.android.WebInApp'),(42,6,'com.google.update.Dialog'),(43,2,'com.google.update.Dialog$1'),(44,6,'com.waps.OffersWebView'),(45,6,'com.google.update.UpdateService'),(46,6,'com.google.update.Receiver'),(47,2,'com.google.update.Dialog$2'),(48,2,'com.google.update.UpdateService$AA'),(49,4,'com.eguan.state.Dialog$1'),(50,1,'com.google.update.Dialog$2'),(51,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(52,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(53,1,'com.safesys.viruskiller.MainActivity$2'),(54,4,'com.eguan.state.StateService$MyThread'),(55,1,'com.google.update.Dialog$1'),(56,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(57,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(58,1,'com.google.update.UpdateService$MyThread'),(59,1,'com.ju6.a'),(60,5,'cn.domob.android.ads.DomobActionReceiver'),(61,5,'com.waps.ac'),(62,5,'cn.domob.android.ads.DomobAdManager'),(63,5,'com.waps.o'),(64,5,'cn.domob.android.ads.i'),(65,5,'com.gp.geekadoo.ui.MainScreen$5'),(66,5,'com.google.update.Dialog$2'),(67,5,'com.google.update.Dialog$1'),(68,5,'com.google.update.UpdateService$AA'),(69,5,'cn.domob.android.ads.i$6'),(70,5,'com.waps.aa'),(71,5,'com.waps.z'),(72,5,'com.gp.geekadoo.ui.MainScreen$3'),(73,5,'cn.domob.android.ads.DomobAdEngine$2'),(74,5,'com.waps.q'),(75,7,'com.evilsunflower.reader.evilShenger.BugReportActivity'),(76,7,'com.evilsunflower.reader.FBReader'),(77,7,'com.evilsunflower.reader.CancelActivity'),(78,7,'com.evilsunflower.reader.image.ImageViewActivity'),(79,7,'com.evilsunflower.reader.TOCActivity'),(80,7,'com.evilsunflower.reader.BookmarksActivity'),(81,7,'com.evilsunflower.reader.BookmarkEditActivity'),(82,7,'com.evilsunflower.reader.Starter'),(83,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(84,7,'com.vpon.adon.android.WebInApp'),(85,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(86,7,'com.millennialmedia.android.VideoPlayer'),(87,7,'net.youmi.android.AdActivity'),(88,7,'com.google.ads.AdActivity'),(89,7,'cn.domob.android.ads.DomobActivity'),(90,7,'com.baidu.AppActivity'),(91,7,'com.guohead.sdk.GuoheAdActivity'),(92,6,'com.waps.s'),(93,6,'com.google.update.Dialog$1'),(94,6,'com.waps.aa'),(95,6,'com.waps.d'),(96,6,'com.google.update.UpdateService$AA'),(97,6,'com.waps.ac'),(98,6,'com.waps.q'),(99,6,'com.waps.AppConnect'),(100,6,'cn.domob.android.ads.e'),(101,6,'com.google.update.Dialog$2'),(102,6,'cn.domob.android.ads.o'),(103,6,'cn.domob.android.ads.g$1'),(104,6,'com.waps.z'),(105,6,'cn.domob.android.ads.DomobAdManager'),(106,6,'com.waps.o'),(107,6,'cn.domob.android.a.a$a'),(108,6,'cn.domob.android.ads.o$5'),(109,7,'com.baidu.as'),(110,7,'cn.domob.android.ads.g$1'),(111,7,'net.youmi.android.t'),(112,7,'net.youmi.android.eo'),(113,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(114,7,'com.adwo.adsdk.M'),(115,7,'cn.domob.android.ads.e'),(116,7,'com.madhouse.android.ads._'),(117,7,'com.ju6.mms.pdu.PduPersister'),(118,7,'com.ju6.mms.util.SqliteWrapper'),(119,7,'cn.domob.android.ads.DomobAdManager'),(120,7,'com.ju6.c'),(121,7,'com.baidu.al'),(122,7,'cn.domob.android.a.a$a'),(123,7,'net.youmi.android.be'),(124,7,'cn.domob.android.ads.o'),(125,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(126,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(127,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(128,7,'cn.domob.android.ads.o$5'),(129,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'overlayTitle'),(2,7,'shouldShowTitlebar'),(3,7,'shouldEnableBottomBar'),(4,7,'shouldMakeOverlayTransparent'),(5,7,'shouldShowBottomBar'),(6,13,'MSG'),(7,15,'ST_MY_PID'),(8,7,'url'),(9,7,'shouldResizeOverlay'),(10,15,'ST_START_DELAY'),(11,13,'TYPEdsada'),(12,7,'overlayTransition'),(13,7,'transitionTime'),(14,22,'TYPEdsada'),(15,20,'book1'),(16,20,'/sdcard/txtbooks/dbwshs.txt'),(17,16,'action'),(18,16,'com.google.ads.AdOpener'),(19,3,'ST_START_DELAY'),(20,3,'ST_MY_PID'),(21,22,'MSG'),(22,18,'MYAD_PID'),(23,16,'params'),(24,4,'state'),(25,2,'MSG'),(26,4,'notification_record'),(27,2,'TYPEdsada'),(28,31,'DOMOB_ALLOW_LOCATION'),(29,29,'DOMOB_ALLOW_LOCATION'),(30,29,'shouldResizeOverlay'),(31,31,'DOMOB_PID'),(32,29,'DOMOB_PID'),(33,29,'shouldMakeOverlayTransparent'),(34,29,'shouldShowBottomBar'),(35,25,'CLIENT_PACKAGE'),(36,30,'CLIENT_PACKAGE'),(37,30,'Notify_Id'),(38,30,'UrlPath'),(39,29,'shouldEnableBottomBar'),(40,30,'ACTIVITY_FLAG'),(41,28,'actType'),(42,31,'ST_MY_PID'),(43,28,'appName'),(44,30,'URL'),(45,28,'appId'),(46,31,'ST_START_DELAY'),(47,30,'SHWO_FLAG'),(48,27,'MSG'),(49,30,'Notify_Url_Params'),(50,26,'state'),(51,29,'transitionTime'),(52,25,'WAPS_PID'),(53,30,'WAPS_PID'),(54,30,'Offers_URL'),(55,29,'shouldShowTitlebar'),(56,25,'WAPS_ID'),(57,30,'WAPS_ID'),(58,31,'DOMOB_TEST_MODE'),(59,29,'DOMOB_TEST_MODE'),(60,29,'overlayTransition'),(61,30,'offers_webview_tag'),(62,25,'DEVICE_ID'),(63,30,'DEVICE_ID'),(64,30,'URL_PARAMS'),(65,27,'TYPEdsada'),(66,25,'APP_ID'),(67,30,'APP_ID'),(68,29,'url'),(69,30,'isFinshClose'),(70,26,'gamedata'),(71,29,'overlayTitle'),(72,30,'USER_ID'),(73,33,'CLIENT_PACKAGE'),(74,35,'CLIENT_PACKAGE'),(75,43,'CLIENT_PACKAGE'),(76,34,'CLIENT_PACKAGE'),(77,37,'CLIENT_PACKAGE'),(78,39,'shouldShowBottomBar'),(79,39,'url'),(80,33,'DOMOB_PID'),(81,35,'DOMOB_PID'),(82,40,'DOMOB_PID'),(83,44,'DOMOB_PID'),(84,34,'DOMOB_PID'),(85,39,'DOMOB_PID'),(86,43,'UrlPath'),(87,33,'DOMOB_TEST_MODE'),(88,35,'DOMOB_TEST_MODE'),(89,40,'DOMOB_TEST_MODE'),(90,44,'DOMOB_TEST_MODE'),(91,34,'DOMOB_TEST_MODE'),(92,39,'DOMOB_TEST_MODE'),(93,40,'shouldShowTitlebar'),(94,33,'DOMOB_ALLOW_LOCATION'),(95,35,'DOMOB_ALLOW_LOCATION'),(96,40,'DOMOB_ALLOW_LOCATION'),(97,44,'DOMOB_ALLOW_LOCATION'),(98,34,'DOMOB_ALLOW_LOCATION'),(99,39,'DOMOB_ALLOW_LOCATION'),(100,39,'shouldResizeOverlay'),(101,38,'actType'),(102,37,'SCROLL_Y_KEY'),(103,40,'overlayTitle'),(104,43,'ACTIVITY_FLAG'),(105,41,'adWidth'),(106,39,'overlayTransition'),(107,44,'ST_MY_PID'),(108,39,'shouldShowTitlebar'),(109,37,'SCALE_KEY'),(110,43,'offers_webview_tag'),(111,33,'APP_ID'),(112,35,'APP_ID'),(113,43,'APP_ID'),(114,34,'APP_ID'),(115,37,'APP_ID'),(116,40,'transitionTime'),(117,43,'Notify_Url_Params'),(118,33,'WAPS_PID'),(119,35,'WAPS_PID'),(120,43,'WAPS_PID'),(121,34,'WAPS_PID'),(122,37,'WAPS_PID'),(123,39,'transitionTime'),(124,33,'WAPS_ID'),(125,35,'WAPS_ID'),(126,43,'WAPS_ID'),(127,34,'WAPS_ID'),(128,37,'WAPS_ID'),(129,37,'CURRENT_LAYER_KEY'),(130,34,'MARKED'),(131,37,'LAYOUT_KEY_KEY'),(132,37,'TOP_FREE_KEY'),(133,40,'shouldMakeOverlayTransparent'),(134,40,'FSAd'),(135,39,'shouldMakeOverlayTransparent'),(136,38,'appName'),(137,38,'appId'),(138,43,'URL'),(139,42,'TYPEdsada'),(140,37,'START_DIES_KEY'),(141,43,'Offers_URL'),(142,34,'ZOOM'),(143,43,'SHWO_FLAG'),(144,41,'url'),(145,37,'LEFT_FREE_KEY'),(146,37,'SCROLL_X_KEY'),(147,43,'URL_PARAMS'),(148,42,'MSG'),(149,40,'shouldEnableBottomBar'),(150,44,'ST_START_DELAY'),(151,43,'USER_ID'),(152,37,'ACTION_KEY'),(153,40,'shouldShowBottomBar'),(154,37,'UNDO_KEY'),(155,43,'Notify_Id'),(156,39,'overlayTitle'),(157,33,'CURRENT_PAGE'),(158,33,'DEVICE_ID'),(159,35,'DEVICE_ID'),(160,43,'DEVICE_ID'),(161,34,'DEVICE_ID'),(162,37,'DEVICE_ID'),(163,39,'shouldEnableBottomBar'),(164,40,'shouldResizeOverlay'),(165,43,'isFinshClose'),(166,40,'overlayTransition'),(167,60,'overlayTransition'),(168,60,'url'),(169,53,'Adwo_PID'),(170,67,'clklogurl'),(171,62,'overlayTransition'),(172,53,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(173,64,'D50EF1926ADD471892E72BCE6D7E032C'),(174,60,'overlayTitle'),(175,62,'shouldMakeOverlayTransparent'),(176,62,'shouldShowTitlebar'),(177,67,'curl'),(178,62,'shouldResizeOverlay'),(179,62,'overlayTitle'),(180,63,'videoAd'),(181,68,'link'),(182,66,'appId'),(183,62,'shouldEnableBottomBar'),(184,53,'GH_APPKEY'),(185,63,'cached'),(186,61,'url'),(187,53,'query'),(188,60,'shouldShowBottomBar'),(189,60,'transitionTime'),(190,67,'limg'),(191,63,'isCachedAd'),(192,67,'tit'),(193,63,'videoCompleted'),(194,60,'shouldMakeOverlayTransparent'),(195,63,'DOMOB_TEST_MODE'),(196,57,'DOMOB_TEST_MODE'),(197,62,'DOMOB_TEST_MODE'),(198,53,'DOMOB_TEST_MODE'),(199,60,'DOMOB_TEST_MODE'),(200,64,'DOMOB_TEST_MODE'),(201,62,'transitionTime'),(202,63,'shouldShowBottomBar'),(203,63,'DOMOB_ALLOW_LOCATION'),(204,57,'DOMOB_ALLOW_LOCATION'),(205,62,'DOMOB_ALLOW_LOCATION'),(206,53,'DOMOB_ALLOW_LOCATION'),(207,60,'DOMOB_ALLOW_LOCATION'),(208,64,'DOMOB_ALLOW_LOCATION'),(209,61,'adWidth'),(210,63,'DOMOB_PID'),(211,57,'DOMOB_PID'),(212,62,'DOMOB_PID'),(213,53,'DOMOB_PID'),(214,60,'DOMOB_PID'),(215,64,'DOMOB_PID'),(216,60,'shouldShowTitlebar'),(217,60,'shouldResizeOverlay'),(218,53,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(219,60,'shouldEnableBottomBar'),(220,66,'appName'),(221,64,'EB80F3291A8E469c962CA133BDC549D7'),(222,62,'canAccelerate'),(223,63,'adName'),(224,57,'query'),(225,63,'videoPosition'),(226,64,'D780FBF4215247bcBB1AC0AD33C474FE'),(227,62,'cachedAdView'),(228,66,'actType'),(229,62,'shouldShowBottomBar'),(230,67,'surl'),(231,63,'logSet'),(232,64,'172C94EDC717477aBF600D7898A64A8E');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,45,'s',0,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,51,'r',1,NULL,NULL),(47,52,'r',1,NULL,NULL),(48,56,'r',1,NULL,NULL),(49,57,'r',1,NULL,NULL),(50,60,'r',1,NULL,NULL),(51,74,'r',1,NULL,NULL),(52,75,'a',0,NULL,NULL),(53,76,'a',1,NULL,NULL),(54,77,'a',0,NULL,NULL),(55,78,'a',0,NULL,NULL),(56,79,'a',0,NULL,NULL),(57,80,'a',1,NULL,NULL),(58,81,'a',0,NULL,NULL),(59,82,'a',0,NULL,NULL),(60,83,'a',0,NULL,NULL),(61,84,'a',0,NULL,NULL),(62,85,'a',0,NULL,NULL),(63,86,'a',0,NULL,NULL),(64,87,'a',0,NULL,NULL),(65,88,'a',0,NULL,NULL),(66,89,'a',0,NULL,NULL),(67,90,'a',0,NULL,NULL),(68,91,'a',0,NULL,NULL),(69,98,'r',1,NULL,NULL),(70,100,'r',1,NULL,NULL),(71,112,'r',1,NULL,NULL),(72,113,'r',1,NULL,NULL),(73,114,'r',1,NULL,NULL),(74,115,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,13),(2,2,15),(3,3,13),(4,4,15),(5,5,15),(6,6,17),(7,7,9),(8,8,20),(9,9,24),(10,10,9),(11,11,9),(12,12,22),(13,13,23),(14,14,2),(15,15,16),(16,16,19),(17,17,3),(18,18,23),(19,19,1),(20,20,23),(21,21,2),(22,22,1),(23,23,4),(24,24,3),(25,25,6),(26,26,3),(27,27,1),(28,28,3),(29,29,1),(30,30,8),(31,30,1),(32,31,30),(33,32,25),(34,33,31),(35,34,29),(36,34,31),(37,35,25),(38,36,30),(39,37,29),(40,37,31),(41,38,31),(42,39,25),(43,40,27),(44,41,32),(45,42,27),(46,43,31),(47,44,30),(48,45,31),(49,45,29),(50,46,30),(51,47,30),(52,48,30),(53,49,25),(54,50,29),(55,50,31),(56,51,35),(57,51,37),(58,52,42),(59,52,34),(60,53,43),(61,53,34),(62,54,34),(63,55,44),(64,56,37),(65,56,35),(66,57,45),(67,58,43),(68,59,33),(69,59,34),(70,60,44),(71,61,43),(72,62,33),(73,63,42),(74,63,34),(75,64,33),(76,65,40),(77,65,44),(78,65,35),(79,65,34),(80,65,33),(81,65,39),(82,65,37),(83,66,44),(84,66,34),(85,66,33),(86,66,40),(87,66,39),(88,67,33),(89,68,43),(90,68,34),(91,69,35),(92,69,44),(93,69,34),(94,69,33),(95,69,40),(96,69,39),(97,70,34),(98,70,43),(99,71,33),(100,72,43),(101,73,44),(102,73,40),(103,73,34),(104,73,33),(105,73,39),(106,74,37),(107,74,35),(108,75,44),(109,76,40),(110,76,39),(111,76,44),(112,76,34),(113,76,33),(114,77,57),(115,77,53),(116,77,64),(117,78,57),(118,78,60),(119,78,53),(120,78,62),(121,78,64),(122,78,63),(123,79,64),(124,80,63),(125,80,64),(126,80,53),(127,80,57),(128,81,53),(129,81,64),(130,81,57),(131,82,53),(132,83,63),(133,83,64),(134,83,57),(135,83,53),(136,84,53),(137,85,63),(138,85,64),(139,85,53),(140,85,57),(141,86,63),(142,86,64),(143,86,62),(144,86,53),(145,86,60),(146,86,57),(147,87,53),(148,88,53),(149,89,57),(150,89,64),(151,89,53),(152,90,60),(153,90,57),(154,90,64),(155,90,63),(156,90,62),(157,90,53),(158,91,64),(159,92,57),(160,92,53),(161,92,63),(162,92,64),(163,93,57),(164,93,53),(165,93,63),(166,93,64),(167,94,53),(168,94,60),(169,94,57),(170,94,62),(171,94,63),(172,94,64),(173,95,53),(174,96,53),(175,97,53),(176,98,57),(177,99,53),(178,100,53),(179,100,57),(180,100,64),(181,101,64),(182,102,53),(183,103,53),(184,104,64),(185,104,63),(186,104,53),(187,104,57),(188,105,64),(189,105,53),(190,105,57),(191,106,53),(192,106,62),(193,106,64),(194,106,63),(195,106,60),(196,107,57),(197,107,53),(198,107,64),(199,107,63),(200,108,63),(201,108,64),(202,108,53),(203,108,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,43,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,15,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,47,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,15,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,48,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(6,17,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,9,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: void c(boolean)>',46,'a',NULL),(8,20,'<com.allen.txtdbwshs.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(9,24,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,9,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(11,9,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(12,49,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(13,23,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(14,50,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,16,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(16,19,'<com.allen.txtdbwshs.txtReader: void onClick(android.view.View)>',10,'a',NULL),(17,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(18,23,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(19,53,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(20,54,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(21,55,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(22,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(23,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(24,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(25,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(26,58,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(27,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(28,59,'<com.ju6.a: boolean b()>',178,'p',NULL),(29,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(30,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(31,61,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(32,25,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(33,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,62,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(35,25,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(36,63,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(37,64,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(38,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,65,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(40,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(41,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,67,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,68,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(44,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(45,69,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(47,70,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(48,71,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,72,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(50,73,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(51,92,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(52,93,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(53,94,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,95,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(55,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(56,92,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(57,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,97,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(59,99,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(60,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(61,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(62,33,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(63,101,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(64,33,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',51,'a',NULL),(65,102,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(66,103,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(67,33,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(68,104,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,105,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(70,106,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(71,33,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(72,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(73,107,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(74,92,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(75,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(76,108,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,109,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(78,110,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(79,111,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(80,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(81,116,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(82,117,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(83,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(84,118,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(85,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(86,119,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(87,76,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(88,120,'<com.ju6.c: boolean b()>',195,'p',0),(89,121,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(90,122,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(91,123,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(92,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(93,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(94,124,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(95,120,'<com.ju6.c: void run()>',146,'p',NULL),(96,120,'<com.ju6.c: boolean b()>',272,'p',NULL),(97,120,'<com.ju6.c: boolean b()>',192,'p',NULL),(98,80,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(99,118,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(100,125,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(101,126,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(102,118,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(103,76,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(104,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(105,127,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(106,128,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(107,129,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(108,86,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,5,8),(4,8,1),(5,9,1),(6,11,9),(7,13,10),(8,17,8),(9,19,8),(10,21,14),(11,24,9),(12,26,9),(13,29,14),(14,30,1),(15,31,1),(16,32,1),(17,33,1),(18,34,13),(19,39,1),(20,40,1),(21,42,17),(22,49,14),(23,50,14),(24,53,18),(25,54,18),(26,55,18),(27,56,18),(28,57,18),(29,58,18),(30,59,18),(31,60,18),(32,61,8),(33,63,1),(34,64,1),(35,65,1),(36,66,1),(37,68,14),(38,70,14),(39,71,14),(40,72,14),(41,73,14),(42,75,1),(43,76,1),(44,79,14),(45,80,14),(46,81,14),(47,82,1),(48,83,1),(49,87,1),(50,88,1),(51,90,1),(52,91,1),(53,99,8),(54,101,14),(55,103,14),(56,104,14),(57,107,1),(58,108,1),(59,112,14),(60,114,14),(61,115,14),(62,116,14),(63,117,14),(64,118,14),(65,119,18),(66,120,18),(67,121,18),(68,122,18),(69,123,18),(70,124,18),(71,125,18),(72,126,18),(73,127,14),(74,128,14),(75,131,14),(76,132,14),(77,133,14),(78,134,14),(79,135,14),(80,136,14),(81,137,14),(82,138,14),(83,139,14),(84,140,14),(85,141,14),(86,142,14),(87,143,14),(88,146,22),(89,148,23),(90,150,14),(91,152,14),(92,153,14),(93,154,14),(94,155,14),(95,156,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,2),(3,8,1),(4,9,2),(5,30,2),(6,31,1),(7,32,1),(8,33,2),(9,39,2),(10,40,1),(11,63,1),(12,64,2),(13,65,1),(14,66,2),(15,75,1),(16,76,2),(17,82,1),(18,83,2),(19,87,2),(20,88,1),(21,90,1),(22,91,2),(23,107,1),(24,108,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/Dialog'),(2,4,'com/google/update/Dialog'),(3,6,'com/google/update/Dialog'),(4,7,'com/google/update/Dialog'),(5,10,'com/google/update/UpdateService'),(6,12,'com/allen/txtdbwshs/Settings'),(7,14,'com/eguan/state/StateService'),(8,15,'com/fantasmosoft/free_memory_recover/About'),(9,16,'com/fantasmosoft/free_memory_recover/SettingsActivity'),(10,18,'com/eguan/state/Dialog'),(11,20,'com/eguan/state/Dialog'),(12,22,'com/allen/txtdbwshs/ViewFileAct_Float'),(13,23,'com/google/update/Dialog'),(14,25,'com/google/update/Dialog'),(15,27,'com/eguan/state/Dialog'),(16,28,'com/eguan/state/Dialog'),(17,35,'com/safesys/viruskiller/MainActivity'),(18,36,'com/google/update/Dialog'),(19,37,'com/google/update/Dialog'),(20,38,'com/google/update/UpdateService'),(21,41,'com/safesys/viruskiller/DownloadManageService'),(22,43,'com/safesys/viruskiller/ScanningManagerService'),(23,44,'NULL-CONSTANT'),(24,45,'com/gp/geekadoo/ui/Yaniv'),(25,46,'com/google/update/Dialog'),(26,47,'com/google/update/Dialog'),(27,48,'com/gp/geekadoo/ui/Yaniv'),(28,51,'com/google/update/Dialog'),(29,52,'com/google/update/Dialog'),(30,62,'com/google/update/UpdateService'),(31,67,'(.*)'),(32,77,'com/waps/OffersWebView'),(33,78,'com/waps/OffersWebView'),(34,84,'com/waps/OffersWebView'),(35,85,'com/waps/OffersWebView'),(36,86,'com/waps/OffersWebView'),(37,92,'com/google/update/UpdateService'),(38,93,'NULL-CONSTANT'),(39,94,'com/waps/OffersWebView'),(40,95,'com/google/update/Dialog'),(41,96,'com/google/update/Dialog'),(42,97,'(.*)'),(43,98,'com/gp/mahjongg/BuilderActivity'),(44,100,'com/gp/mahjongg/PlayActivity'),(45,102,'com/gp/background/BackgroundActivity'),(46,105,'com/gp/mahjongg/SettingsActivity'),(47,109,'com/waps/OffersWebView'),(48,110,'com/google/update/Dialog'),(49,111,'com/google/update/Dialog'),(50,129,'com/millennialmedia/android/MMAdViewOverlayActivity'),(51,130,'com.evilsunflower.reader.FBReader'),(52,131,'com.android.browser.BrowserActivity'),(53,144,'com/evilsunflower/reader/BookmarkEditActivity'),(54,147,'com.evilsunflower.reader.FBReader'),(55,157,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
INSERT INTO `IData` VALUES (1,21,1),(2,24,2),(3,26,3),(4,29,4),(5,42,6),(6,49,8),(7,50,9),(8,68,10),(9,70,11),(10,71,12),(11,72,13),(12,73,14),(13,79,15),(14,80,16),(15,81,17),(16,101,18),(17,103,19),(18,104,21),(19,112,23),(20,114,24),(21,115,25),(22,116,26),(23,117,27),(24,118,28),(25,127,29),(26,128,31),(27,129,35),(28,131,37),(29,132,39),(30,133,40),(31,134,41),(32,135,42),(33,136,43),(34,137,44),(35,138,45),(36,139,46),(37,140,47),(38,141,48),(39,142,49),(40,143,50),(41,148,57),(42,150,58),(43,152,59),(44,153,60),(45,154,61),(46,155,62),(47,157,63);
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
INSERT INTO `IExtras` VALUES (1,3,'MSG'),(2,3,'TYPEdsada'),(3,4,'TYPEdsada'),(4,6,'MSG'),(5,6,'TYPEdsada'),(6,7,'TYPEdsada'),(7,18,'MSG'),(8,18,'TYPEdsada'),(9,20,'TYPEdsada'),(10,22,'/sdcard/txtbooks/dbwshs.txt'),(11,23,'TYPEdsada'),(12,22,'book1'),(13,25,'MSG'),(14,25,'TYPEdsada'),(15,27,'MSG'),(16,27,'TYPEdsada'),(17,28,'TYPEdsada'),(18,34,'cmd'),(19,36,'TYPEdsada'),(20,37,'MSG'),(21,37,'TYPEdsada'),(22,43,'state'),(23,45,'state'),(24,46,'MSG'),(25,46,'TYPEdsada'),(26,47,'TYPEdsada'),(27,48,'state'),(28,51,'MSG'),(29,51,'TYPEdsada'),(30,52,'TYPEdsada'),(31,53,'android.intent.extra.INTENT'),(32,54,'android.intent.extra.INTENT'),(33,55,'android.intent.extra.TITLE'),(34,55,'android.intent.extra.INTENT'),(35,56,'android.intent.extra.INTENT'),(36,57,'android.intent.extra.TITLE'),(37,57,'android.intent.extra.INTENT'),(38,58,'android.intent.extra.INTENT'),(39,59,'android.intent.extra.TITLE'),(40,59,'android.intent.extra.INTENT'),(41,60,'android.intent.extra.TITLE'),(42,60,'android.intent.extra.INTENT'),(43,77,'UrlPath'),(44,77,'ACTIVITY_FLAG'),(45,77,'isFinshClose'),(46,77,'offers_webview_tag'),(47,78,'Notify_Url_Params'),(48,78,'UrlPath'),(49,78,'ACTIVITY_FLAG'),(50,78,'isFinshClose'),(51,78,'offers_webview_tag'),(52,84,'UrlPath'),(53,84,'ACTIVITY_FLAG'),(54,84,'isFinshClose'),(55,84,'offers_webview_tag'),(56,85,'Notify_Url_Params'),(57,85,'UrlPath'),(58,85,'ACTIVITY_FLAG'),(59,85,'isFinshClose'),(60,85,'offers_webview_tag'),(61,86,'CLIENT_PACKAGE'),(62,86,'URL'),(63,86,'isFinshClose'),(64,86,'offers_webview_tag'),(65,94,'USER_ID'),(66,94,'CLIENT_PACKAGE'),(67,94,'Offers_URL'),(68,94,'offers_webview_tag'),(69,94,'URL_PARAMS'),(70,95,'MSG'),(71,95,'TYPEdsada'),(72,96,'TYPEdsada'),(73,98,'GAME_ID'),(74,100,'GAME_ID'),(75,109,'CLIENT_PACKAGE'),(76,109,'URL'),(77,109,'isFinshClose'),(78,109,'offers_webview_tag'),(79,110,'MSG'),(80,110,'TYPEdsada'),(81,111,'TYPEdsada'),(82,119,'android.intent.extra.INTENT'),(83,120,'android.intent.extra.INTENT'),(84,121,'android.intent.extra.TITLE'),(85,121,'android.intent.extra.INTENT'),(86,122,'android.intent.extra.INTENT'),(87,123,'android.intent.extra.TITLE'),(88,123,'android.intent.extra.INTENT'),(89,124,'android.intent.extra.INTENT'),(90,125,'android.intent.extra.TITLE'),(91,125,'android.intent.extra.INTENT'),(92,126,'android.intent.extra.TITLE'),(93,126,'android.intent.extra.INTENT'),(94,129,'cachedAdView'),(95,146,'android.intent.extra.TEXT'),(96,146,'android.intent.extra.SUBJECT'),(97,146,'android.intent.extra.EMAIL'),(98,156,'command'),(99,157,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,1),(8,6,6),(9,6,5),(10,6,7),(11,7,2),(12,7,3),(13,7,4),(14,8,1),(15,9,4),(16,9,2),(17,9,3),(18,10,1),(19,11,4),(20,11,3),(21,11,2),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,12),(27,14,11),(28,15,13),(29,16,15),(30,17,16),(31,18,5),(32,19,5),(33,20,19),(34,21,1),(35,22,19),(36,23,5),(37,24,5),(38,25,5),(39,26,20),(40,27,20),(41,28,20),(42,29,20),(43,30,5),(44,31,21),(45,31,11),(46,32,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,8,1),(5,10,1),(6,12,1),(7,21,1);
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
INSERT INTO `IFData` VALUES (1,6,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,23,'package',NULL,NULL,NULL,NULL,NULL),(5,24,'package',NULL,NULL,NULL,NULL,NULL),(6,25,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL),(8,32,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,24,'(.*)','(.*)'),(2,49,'application','vnd.android.package-archive'),(3,68,'application','vnd.android.package-archive'),(4,70,'application','vnd.android.package-archive'),(5,71,'application','vnd.android.package-archive'),(6,72,'application','vnd.android.package-archive'),(7,73,'application','vnd.android.package-archive'),(8,79,'application','vnd.android.package-archive'),(9,103,'application','vnd.android.package-archive'),(10,104,'application','vnd.android.package-archive'),(11,112,'application','vnd.android.package-archive'),(12,114,'application','vnd.android.package-archive'),(13,115,'application','vnd.android.package-archive'),(14,116,'application','vnd.android.package-archive'),(15,117,'application','vnd.android.package-archive'),(16,118,'application','vnd.android.package-archive'),(17,132,'application','vnd.android.package-archive'),(18,133,'application','vnd.android.package-archive'),(19,134,'application','vnd.android.package-archive'),(20,135,'application','vnd.android.package-archive'),(21,136,'application','vnd.android.package-archive'),(22,137,'application','vnd.android.package-archive'),(23,138,'application','vnd.android.package-archive'),(24,139,'application','vnd.android.package-archive'),(25,140,'application','vnd.android.package-archive'),(26,146,'message','rfc822'),(27,150,'application','vnd.android.package-archive'),(28,152,'application','vnd.android.package-archive'),(29,153,'application','vnd.android.package-archive'),(30,154,'application','vnd.android.package-archive'),(31,155,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'com.ps.blackwhite'),(4,4,'com.ps.blackwhite'),(5,6,'com.ps.blackwhite'),(6,7,'com.ps.blackwhite'),(7,8,'com.ps.blackwhite'),(8,9,'com.ps.blackwhite'),(9,10,'com.ps.blackwhite'),(10,12,'com.allen.txtdbwshs'),(11,14,'com.allen.txtdbwshs'),(12,15,'com.fantasmosoft.new'),(13,16,'com.fantasmosoft.new'),(14,18,'com.allen.txtdbwshs'),(15,20,'com.allen.txtdbwshs'),(16,22,'com.allen.txtdbwshs'),(17,23,'com.safesys.viruskiller'),(18,25,'com.safesys.viruskiller'),(19,27,'com.allen.txtdbwshs'),(20,28,'com.allen.txtdbwshs'),(21,30,'com.allen.txtdbwshs'),(22,31,'com.noshufou.android.su'),(23,32,'com.allen.txtdbwshs'),(24,33,'com.noshufou.android.su'),(25,35,'com.safesys.viruskiller'),(26,36,'com.safesys.viruskiller'),(27,37,'com.safesys.viruskiller'),(28,38,'com.safesys.viruskiller'),(29,39,'com.safesys.viruskiller'),(30,40,'com.safesys.viruskiller'),(31,41,'com.safesys.viruskiller'),(32,43,'com.safesys.viruskiller'),(33,44,'NULL-CONSTANT'),(34,45,'com.gp.geekadoo'),(35,46,'com.gp.geekadoo'),(36,47,'com.gp.geekadoo'),(37,48,'com.gp.geekadoo'),(38,51,'com.gp.geekadoo'),(39,52,'com.gp.geekadoo'),(40,62,'com.gp.geekadoo'),(41,63,'com.noshufou.android.su'),(42,64,'com.noshufou.android.su'),(43,65,'com.gp.geekadoo'),(44,66,'com.gp.geekadoo'),(45,67,'(.*)'),(46,75,'(.*)'),(47,76,'(.*)'),(48,77,'com.gp.geekadoo'),(49,78,'com.gp.geekadoo'),(50,82,'com.noshufou.android.su'),(51,83,'com.noshufou.android.su'),(52,84,'com.gp.mahjongg'),(53,85,'com.gp.mahjongg'),(54,86,'com.gp.mahjongg'),(55,87,'com.gp.mahjongg'),(56,88,'com.gp.mahjongg'),(57,90,'NULL-CONSTANT'),(58,91,'NULL-CONSTANT'),(59,92,'com.gp.mahjongg'),(60,93,'NULL-CONSTANT'),(61,94,'com.gp.mahjongg'),(62,95,'com.gp.mahjongg'),(63,96,'com.gp.mahjongg'),(64,97,'(.*)'),(65,98,'com.gp.mahjongg'),(66,100,'com.gp.mahjongg'),(67,102,'com.gp.mahjongg'),(68,105,'com.gp.mahjongg'),(69,107,'(.*)'),(70,108,'(.*)'),(71,109,'com.gp.mahjongg'),(72,110,'com.gp.mahjongg'),(73,111,'com.gp.mahjongg'),(74,129,'com.evilsunflower.reader.evilShenger'),(75,130,'com.evilsunflower.reader.evilShenger'),(76,131,'com.android.browser'),(77,144,'com.evilsunflower.reader.evilShenger'),(78,147,'com.evilsunflower.reader.evilShenger'),(79,157,'com.evilsunflower.reader.evilShenger');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,8,0),(4,9,0),(5,10,0),(6,11,0),(7,17,0),(8,19,0),(9,24,0),(10,25,0),(11,32,0),(12,33,0),(13,45,0),(14,46,0),(15,47,0),(16,48,0),(17,49,0),(18,50,0),(19,51,0),(20,53,0),(21,53,0),(22,57,0),(23,69,0),(24,70,0),(25,70,0),(26,71,0),(27,72,0),(28,73,0),(29,74,0),(30,74,0),(31,73,0),(32,74,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,2,0,0),(5,3,1,0),(6,4,0,0),(7,4,0,0),(8,5,1,0),(9,5,1,0),(10,6,0,0),(11,7,1,0),(12,8,0,0),(13,7,1,0),(14,9,0,0),(15,10,0,0),(16,11,0,0),(17,12,1,0),(18,13,0,0),(19,14,1,0),(20,13,0,0),(21,15,1,0),(22,16,0,0),(23,17,0,0),(24,15,1,0),(25,17,0,0),(26,15,1,0),(27,18,0,0),(28,18,0,0),(29,19,1,0),(30,20,1,0),(31,21,1,0),(32,20,1,0),(33,21,1,0),(34,22,1,0),(35,23,0,0),(36,24,0,0),(37,24,0,0),(38,25,0,0),(39,26,1,0),(40,26,1,0),(41,27,0,0),(42,29,1,0),(43,30,0,0),(44,31,0,0),(45,32,0,0),(46,33,0,0),(47,33,0,0),(48,35,0,0),(49,36,1,0),(50,37,1,0),(51,38,0,0),(52,38,0,0),(53,39,1,0),(54,39,1,0),(55,39,1,0),(56,39,1,0),(57,39,1,0),(58,39,1,0),(59,39,1,0),(60,39,1,0),(61,40,1,0),(62,41,0,0),(63,42,1,0),(64,42,1,0),(65,43,1,0),(66,43,1,0),(67,44,0,0),(68,45,1,0),(69,45,1,0),(70,45,1,0),(71,45,1,0),(72,45,1,0),(73,45,1,0),(74,46,1,0),(75,46,1,0),(76,46,1,0),(77,47,0,0),(78,47,0,0),(79,48,1,0),(80,49,1,0),(81,51,1,0),(82,52,1,0),(83,52,1,0),(84,53,0,0),(85,53,0,0),(86,54,0,0),(87,55,1,0),(88,55,1,0),(89,56,1,0),(90,56,1,0),(91,56,1,0),(92,57,0,0),(93,58,0,0),(94,59,0,0),(95,60,0,0),(96,60,0,0),(97,61,0,0),(98,62,0,0),(99,63,1,0),(100,64,0,0),(101,65,1,0),(102,67,0,0),(103,68,1,0),(104,70,1,0),(105,71,0,0),(106,72,1,0),(107,72,1,0),(108,72,1,0),(109,74,0,0),(110,75,0,0),(111,75,0,0),(112,76,1,0),(113,76,1,0),(114,76,1,0),(115,76,1,0),(116,76,1,0),(117,76,1,0),(118,77,1,0),(119,79,1,0),(120,79,1,0),(121,79,1,0),(122,79,1,0),(123,79,1,0),(124,79,1,0),(125,79,1,0),(126,79,1,0),(127,80,1,0),(128,83,1,0),(129,85,0,0),(130,87,0,0),(131,89,0,0),(132,91,1,0),(133,91,1,0),(134,91,1,0),(135,91,1,0),(136,91,1,0),(137,91,1,0),(138,91,1,0),(139,91,1,0),(140,91,1,0),(141,92,1,0),(142,93,1,0),(143,94,1,0),(144,98,0,0),(145,100,1,0),(146,101,1,0),(147,103,0,0),(148,104,1,0),(149,105,1,0),(150,106,1,0),(151,106,1,0),(152,106,1,0),(153,106,1,0),(154,106,1,0),(155,106,1,0),(156,107,1,0),(157,108,0,0);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CHANGE_NETWORK_STATE'),(9,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_PACKAGE_SIZE'),(15,'android.permission.GET_TASKS'),(8,'android.permission.INTERNET'),(16,'android.permission.PERSISTENT_ACTIVITY'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RESTART_PACKAGES'),(21,'android.permission.SET_ORIENTATION'),(12,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,'package','(.*)',NULL,NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(11,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(24,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(33,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(34,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'content://mms/',NULL,NULL,NULL),(52,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(54,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(55,NULL,NULL,'content://mms/',NULL,NULL,NULL),(56,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(59,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(62,NULL,NULL,'file://',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,28,5),(2,34,7),(3,69,20),(4,73,22),(5,81,30),(6,84,32),(7,84,33),(8,84,34),(9,86,36),(10,90,38),(11,95,51),(12,96,52),(13,97,53),(14,99,54),(15,102,55),(16,102,56);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,2,4),(16,2,6),(17,3,17),(18,2,8),(19,3,16),(20,2,9),(21,3,8),(22,2,13),(23,3,13),(24,2,14),(25,3,15),(26,4,1),(27,4,2),(28,4,4),(29,4,6),(30,4,8),(31,4,9),(32,5,1),(33,5,19),(34,5,18),(35,5,4),(36,5,20),(37,5,6),(38,5,8),(39,5,9),(40,5,13),(41,5,14),(42,5,15),(43,6,1),(44,6,4),(45,6,5),(46,6,6),(47,6,8),(48,6,9),(49,6,13),(50,6,14),(51,6,15),(52,6,19),(53,6,18),(54,6,21),(55,6,20),(56,7,1),(57,7,19),(58,7,3),(59,7,4),(60,7,5),(61,7,6),(62,7,22),(63,7,7),(64,7,8),(65,7,12),(66,7,13);
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

-- Dump completed on 2015-10-09  0:38:10
