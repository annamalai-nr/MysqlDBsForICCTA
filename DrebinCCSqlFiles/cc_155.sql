-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_155
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(11,'Speedup.intent.action.refreshservice'),(17,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(16,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.MEDIA_MOUNTED'),(21,'android.intent.action.MEDIA_UNMOUNTED'),(18,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.SEND'),(15,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(25,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(19,'android.intent.action.WEB_SEARCH'),(20,'android.net.conn.CONNECTIVITY_CHANGE'),(23,'com.android.music.musicservicecommand'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.cosina.game.activity',4),(3,'com.ps.ddp',21),(4,'com.safetest.compass',9),(5,'com.gp.monolith',1),(6,'com.alan.translate',25),(7,'com.rovio.new.ads',1112);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,1,'com.tutusw.phonespeedup.InfoActivity'),(3,1,'com.google.ssearch.Dialog'),(4,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(5,1,'com.tutusw.phonespeedup.Home'),(6,2,'com.cosina.game.activity.StartUpActivity'),(7,1,'com.tutusw.phonespeedup.PerflockActivity'),(8,1,'com.tutusw.phonespeedup.ProfilesActivity'),(9,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(10,2,'com.google.update.Dialog'),(11,1,'com.tutusw.phonespeedup.AdvancedActivity'),(12,2,'com.google.update.UpdateService'),(13,1,'com.tutusw.phonespeedup.AboutActivity'),(14,2,'com.google.update.Receiver'),(15,1,'com.tutusw.phonespeedup.StresstestActivity'),(16,1,'com.tutusw.phonespeedup.Setcpu'),(17,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(18,1,'com.google.ssearch.SearchService'),(19,1,'com.tutusw.phonespeedup.StartupService'),(20,1,'com.tutusw.phonespeedup.ProfilesService'),(21,1,'com.tutusw.phonespeedup.WidgetService'),(22,1,'com.google.ssearch.Receiver'),(23,1,'com.tutusw.phonespeedup.StartupReceiver'),(24,1,'com.tutusw.phonespeedup.Widget'),(25,3,'com.ps.ddp.MainActivity'),(26,3,'com.ps.ddp.DemoApp'),(27,3,'com.ps.ddp.GameActivity'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,3,'com.google.update.Dialog'),(30,3,'com.waps.OffersWebView'),(31,3,'com.google.update.UpdateService'),(32,3,'com.google.update.Receiver'),(33,4,'com.safetest.compass.CompassActivity'),(34,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.safetest.compass.ShowTips'),(36,4,'com.safetest.compass.widget.CompassService'),(37,4,'com.safetest.compass.UpdateService'),(38,4,'com.safetest.compass.widget.CompassWidget'),(39,4,'com.safetest.compass.Receiver'),(40,5,'com.gp.monolith.Monolith'),(41,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,5,'com.google.update.Dialog'),(43,5,'cn.domob.android.ads.DomobActivity'),(44,5,'com.google.update.UpdateService'),(45,5,'com.google.update.Receiver'),(46,2,'com.ju6.a'),(47,2,'com.google.update.Dialog$1'),(48,2,'com.google.update.Dialog$2'),(49,2,'com.adwo.adsdk.D'),(50,2,'com.google.update.UpdateService$MyThread'),(51,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(52,1,'com.tutusw.phonespeedup.WidgetService$1'),(53,1,'com.tutusw.phonespeedup.ProfilesService$1'),(54,1,'android.appwidget.AppWidgetProvider'),(55,1,'com.google.ssearch.Dialog$1'),(56,4,'com.safetest.compass.ShowTips$1'),(57,3,'com.waps.x'),(58,4,'com.adwo.adsdk.g'),(59,3,'com.waps.aa'),(60,3,'com.waps.AppConnect'),(61,5,'com.ju6.a'),(62,5,'com.google.update.Dialog$1'),(63,1,'com.google.ssearch.SearchService$MyThread'),(64,3,'com.waps.s'),(65,5,'com.google.update.Dialog$2'),(66,6,'com.alan.translate.TranslateApp'),(67,5,'cn.domob.android.ads.DomobAdManager'),(68,6,'com.google.ads.AdActivity'),(69,1,'com.tutusw.phonespeedup.Home$clicker'),(70,6,'com.vpon.adon.android.WebInApp'),(71,5,'cn.domob.android.ads.DomobAdEngine$2'),(72,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(73,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(74,6,'com.waps.OffersWebView'),(75,6,'com.google.update.Dialog'),(76,6,'com.google.update.UpdateService'),(77,6,'com.google.update.Receiver'),(78,5,'com.google.update.UpdateService$MyThread'),(79,5,'cn.domob.android.ads.i'),(80,3,'com.google.update.UpdateService$AA'),(81,5,'cn.domob.android.ads.i$6'),(82,3,'com.waps.q'),(83,7,'com.rovio.ka3d.App'),(84,7,'com.burstly.lib.component.networkcomponent.burstly.VideoPlayerActivity'),(85,7,'com.burstly.lib.component.networkcomponent.burstly.BurstlyFullscreenActivity'),(86,7,'com.google.ads.AdActivity'),(87,7,'com.greystripe.android.sdk.AdView'),(88,3,'com.waps.y'),(89,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(90,7,'com.millennialmedia.android.VideoPlayer'),(91,7,'com.burstly.lib.component.networkcomponent.jumptap.JumptapActivity'),(92,7,'com.neworld.demo.UpdateCheck'),(93,7,'com.greystripe.android.sdk.AdContentProvider'),(94,5,'cn.domob.android.ads.DomobActionReceiver'),(95,4,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(96,3,'com.google.update.Dialog$1'),(97,4,'com.safetest.compass.widget.CompassService$1'),(98,3,'com.google.update.Dialog$2'),(99,4,'com.adwo.adsdk.D'),(100,4,'android.appwidget.AppWidgetProvider'),(101,3,'com.waps.o'),(102,6,'com.waps.AppConnect'),(103,6,'com.google.update.Dialog$1'),(104,6,'com.waps.o'),(105,6,'com.waps.z'),(106,6,'com.waps.aa'),(107,6,'com.waps.q'),(108,6,'com.google.update.UpdateService$AA'),(109,6,'com.google.update.Dialog$2'),(110,6,'com.waps.ac'),(111,7,'com.burstly.lib.component.networkcomponent.burstly.ormma.util.OrmmaConfigurationBroadcastReceiver'),(112,7,'com.burstly.lib.component.networkcomponent.burstly.ormma.util.OrmmaNetworkBroadcastReceiver'),(113,7,'com.burstly.lib.service.SdCardWatchingService$1'),(114,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(115,7,'com.burstly.lib.network.request.RequestManager$1'),(116,7,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(117,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'TYPEdsada'),(2,4,'transitionTime'),(3,4,'url'),(4,6,'Adwo_PID'),(5,12,'ST_START_DELAY'),(6,4,'shouldEnableBottomBar'),(7,4,'shouldShowBottomBar'),(8,4,'shouldResizeOverlay'),(9,12,'ST_MY_PID'),(10,4,'shouldShowTitlebar'),(11,10,'MSG'),(12,4,'overlayTransition'),(13,4,'shouldMakeOverlayTransparent'),(14,4,'overlayTitle'),(15,3,'TYPEdsada'),(16,3,'MSG'),(17,17,'appWidgetId'),(18,30,'Offers_URL'),(19,9,'row_id'),(20,37,'SAFE_PID'),(21,34,'shouldShowBottomBar'),(22,31,'ST_START_DELAY'),(23,25,'APP_ID'),(24,30,'APP_ID'),(25,31,'APP_ID'),(26,26,'APP_ID'),(27,28,'APP_ID'),(28,27,'APP_ID'),(29,28,'url'),(30,29,'TYPEdsada'),(31,30,'Notify_Id'),(32,30,'CLIENT_PACKAGE'),(33,28,'transitionTime'),(34,30,'UrlPath'),(35,43,'actType'),(36,41,'url'),(37,44,'DOMOB_TEST_MODE'),(38,41,'DOMOB_TEST_MODE'),(39,43,'appName'),(40,44,'DOMOB_ALLOW_LOCATION'),(41,41,'DOMOB_ALLOW_LOCATION'),(42,43,'appId'),(43,30,'isFinshClose'),(44,30,'URL_PARAMS'),(45,42,'MSG'),(46,41,'shouldShowBottomBar'),(47,44,'DOMOB_PID'),(48,28,'shouldResizeOverlay'),(49,41,'DOMOB_PID'),(50,31,'ST_MY_PID'),(51,41,'shouldShowTitlebar'),(52,25,'WAPS_ID'),(53,41,'shouldResizeOverlay'),(54,30,'WAPS_ID'),(55,44,'ST_MY_PID'),(56,31,'WAPS_ID'),(57,41,'shouldMakeOverlayTransparent'),(58,26,'WAPS_ID'),(59,42,'TYPEdsada'),(60,28,'WAPS_ID'),(61,44,'ST_START_DELAY'),(62,27,'WAPS_ID'),(63,28,'shouldMakeOverlayTransparent'),(64,31,'CLIENT_PACKAGE'),(65,26,'CLIENT_PACKAGE'),(66,28,'CLIENT_PACKAGE'),(67,41,'shouldEnableBottomBar'),(68,28,'overlayTitle'),(69,28,'shouldShowBottomBar'),(70,41,'overlayTransition'),(71,29,'MSG'),(72,25,'DEVICE_ID'),(73,30,'DEVICE_ID'),(74,31,'DEVICE_ID'),(75,26,'DEVICE_ID'),(76,28,'DEVICE_ID'),(77,27,'DEVICE_ID'),(78,41,'overlayTitle'),(79,41,'transitionTime'),(80,34,'overlayTransition'),(81,34,'shouldResizeOverlay'),(82,34,'shouldEnableBottomBar'),(83,28,'shouldEnableBottomBar'),(84,25,'WAPS_PID'),(85,30,'WAPS_PID'),(86,31,'WAPS_PID'),(87,26,'WAPS_PID'),(88,28,'WAPS_PID'),(89,34,'url'),(90,27,'WAPS_PID'),(91,34,'transitionTime'),(92,34,'overlayTitle'),(93,28,'shouldShowTitlebar'),(94,30,'SHWO_FLAG'),(95,34,'shouldMakeOverlayTransparent'),(96,34,'shouldShowTitlebar'),(97,35,'MM'),(98,30,'Notify_Url_Params'),(99,28,'overlayTransition'),(100,30,'URL'),(101,37,'SAFE_START'),(102,30,'ACTIVITY_FLAG'),(103,25,'CLIENT_PACKAGE'),(104,27,'CLIENT_PACKAGE'),(105,30,'USER_ID'),(106,30,'offers_webview_tag'),(107,56,'Notify_Id'),(108,55,'transitionTime'),(109,53,'adWidth'),(110,51,'APP_ID'),(111,56,'APP_ID'),(112,57,'TYPEdsada'),(113,56,'URL_PARAMS'),(114,53,'url'),(115,56,'Notify_Url_Params'),(116,54,'isTestMode'),(117,56,'isFinshClose'),(118,51,'WAPS_ID'),(119,56,'WAPS_ID'),(120,56,'offers_webview_tag'),(121,51,'DEVICE_ID'),(122,56,'DEVICE_ID'),(123,56,'CLIENT_PACKAGE'),(124,51,'CLIENT_PACKAGE'),(125,55,'shouldEnableBottomBar'),(126,56,'ACTIVITY_FLAG'),(127,56,'UrlPath'),(128,55,'url'),(129,56,'SHWO_FLAG'),(130,56,'Offers_URL'),(131,55,'shouldShowTitlebar'),(132,56,'USER_ID'),(133,58,'ST_START_DELAY'),(134,57,'MSG'),(135,55,'shouldMakeOverlayTransparent'),(136,54,'Adwo_PID'),(137,56,'URL'),(138,55,'overlayTitle'),(139,55,'overlayTransition'),(140,55,'shouldResizeOverlay'),(141,58,'ST_MY_PID'),(142,55,'shouldShowBottomBar'),(143,51,'WAPS_PID'),(144,56,'WAPS_PID'),(145,67,'logSet'),(146,67,'videoCompletedOnce'),(147,64,'action'),(148,66,'cachedAdView'),(149,66,'shouldMakeOverlayTransparent'),(150,63,'dataToPost'),(151,67,'videoCompleted'),(152,64,'com.google.circles.platform.result.extra.CONFIRMATION'),(153,67,'videoAd'),(154,63,'videoUrl'),(155,64,'com.google.circles.platform.result.extra.ACTION'),(156,67,'videoPosition'),(157,66,'canAccelerate'),(158,63,'responseData'),(159,64,'com.google.ads.AdOpener'),(160,65,'spinnerMsg'),(161,63,'url'),(162,67,'cached'),(163,63,'showCloseAfter'),(164,66,'shouldResizeOverlay'),(165,65,'stdActions'),(166,63,'hideCloseAfter'),(167,66,'overlayTransition'),(168,67,'shouldShowBottomBar'),(169,67,'isCachedAd'),(170,63,'content'),(171,66,'transitionTime'),(172,66,'shouldShowTitlebar'),(173,63,'fullResponseData'),(174,64,'params'),(175,66,'shouldShowBottomBar'),(176,67,'adName'),(177,63,'networkName'),(178,66,'shouldEnableBottomBar'),(179,67,'lastVideoPosition'),(180,66,'overlayTitle'),(181,66,'overlayOrientation'),(182,69,'MYAD_PID');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',0,2,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,49,'r',1,NULL,NULL),(47,52,'r',1,NULL,NULL),(48,53,'r',1,NULL,NULL),(49,54,'r',1,NULL,NULL),(50,23,'r',1,NULL,NULL),(51,66,'a',1,NULL,NULL),(52,68,'a',0,NULL,NULL),(53,70,'a',0,NULL,NULL),(54,72,'a',0,NULL,NULL),(55,73,'a',0,NULL,NULL),(56,74,'a',0,NULL,NULL),(57,75,'a',0,NULL,NULL),(58,76,'s',0,NULL,NULL),(59,77,'r',1,NULL,NULL),(60,82,'r',1,NULL,NULL),(61,83,'a',1,NULL,NULL),(62,84,'a',0,NULL,NULL),(63,85,'a',0,NULL,NULL),(64,86,'a',0,NULL,NULL),(65,87,'a',1,NULL,NULL),(66,89,'a',0,NULL,NULL),(67,90,'a',0,NULL,NULL),(68,91,'a',0,NULL,NULL),(69,92,'s',0,NULL,NULL),(70,93,'p',0,NULL,NULL),(71,94,'r',1,NULL,NULL),(72,95,'r',1,NULL,NULL),(73,97,'r',1,NULL,NULL),(74,99,'r',1,NULL,NULL),(75,100,'r',1,NULL,NULL),(76,107,'r',1,NULL,NULL),(77,111,'r',1,NULL,NULL),(78,112,'r',1,NULL,NULL),(79,113,'r',1,NULL,NULL),(80,114,'r',1,NULL,NULL),(81,115,'r',1,NULL,NULL),(82,116,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,12),(2,2,14),(3,3,12),(4,4,10),(5,5,10),(6,6,12),(7,7,12),(8,8,8),(9,9,5),(10,10,5),(11,11,22),(12,12,8),(13,13,1),(14,14,3),(15,15,13),(16,16,2),(17,17,30),(18,18,18),(19,20,31),(20,19,35),(21,21,39),(22,22,19),(23,23,30),(24,24,8),(25,25,33),(26,26,5),(27,27,30),(28,28,23),(29,29,1),(30,30,8),(31,31,25),(32,32,24),(33,33,25),(34,34,19),(35,35,8),(36,36,26),(37,37,5),(38,38,44),(39,39,18),(40,40,42),(41,41,28),(42,41,31),(43,41,26),(44,42,42),(45,43,30),(46,44,8),(47,45,44),(48,45,41),(49,46,5),(50,47,41),(51,47,44),(52,48,5),(53,49,44),(54,50,26),(55,52,17),(56,51,45),(57,53,32),(58,54,18),(59,55,44),(60,55,41),(61,56,31),(62,57,41),(63,57,44),(64,58,30),(65,59,25),(66,60,44),(67,61,30),(68,62,44),(69,63,29),(70,64,38),(71,65,29),(72,66,31),(73,67,25),(74,68,25),(75,69,31),(76,69,28),(77,69,26),(78,70,30),(79,71,51),(80,72,57),(81,73,58),(82,74,56),(83,75,56),(84,76,56),(85,77,56),(86,78,56),(87,79,58),(88,80,59),(89,81,58),(90,82,57),(91,83,56),(92,84,67),(93,85,70),(94,86,67),(95,87,67),(96,88,61),(97,89,67),(98,90,67),(99,91,67),(100,92,64),(101,93,67),(102,94,70),(103,95,67),(104,96,70),(105,97,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,46,'<com.ju6.a: boolean b()>',178,'p',NULL),(2,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,12,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,48,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(6,50,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(7,12,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,51,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(9,5,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(10,5,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(11,22,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,8,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(13,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(14,55,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(15,13,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(16,2,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(17,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(18,18,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(19,56,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(20,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,39,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,19,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(23,57,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(24,51,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(25,58,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(26,5,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(27,59,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(28,23,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(29,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(30,51,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(31,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(32,24,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(33,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(34,19,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(35,51,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(36,60,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,5,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(38,61,'<com.ju6.a: boolean b()>',178,'p',NULL),(39,63,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(40,62,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(41,64,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(42,65,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(43,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(44,51,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(45,67,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(46,69,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(47,71,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(48,5,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(49,78,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(50,60,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(51,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,17,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(53,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,18,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(55,79,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(56,80,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(57,81,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(59,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(60,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(61,88,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(62,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,96,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,36,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(65,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(66,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(68,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(69,64,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(70,101,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(71,102,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(72,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,76,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(74,74,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(75,74,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(76,104,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(77,105,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(78,106,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(79,76,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(80,77,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(81,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(82,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,110,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(84,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',171,'a',NULL),(85,93,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(86,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',215,'a',NULL),(87,117,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(88,83,'<com.rovio.ka3d.App: void onCreate(android.os.Bundle)>',24,'s',NULL),(89,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',138,'a',NULL),(90,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',192,'a',NULL),(91,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',221,'a',NULL),(92,86,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(93,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',203,'a',NULL),(94,93,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(95,90,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',162,'a',NULL),(96,93,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(97,86,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,6,8),(4,7,1),(5,8,1),(6,11,11),(7,15,7),(8,17,11),(9,19,8),(10,25,1),(11,28,1),(12,31,12),(13,32,11),(14,33,13),(15,36,14),(16,37,12),(17,38,15),(18,41,12),(19,44,15),(20,45,7),(21,46,14),(22,48,14),(23,51,12),(24,52,1),(25,53,1),(26,54,12),(27,57,1),(28,56,1),(29,58,13),(30,59,12),(31,61,12),(32,62,8),(33,63,12),(34,64,15),(35,66,1),(36,67,11),(37,68,14),(38,69,1),(39,70,12),(40,71,14),(41,72,14),(42,74,14),(43,75,1),(44,77,15),(45,78,1),(46,79,12),(47,80,14),(48,83,12),(49,86,12),(50,87,12),(51,88,1),(52,90,1),(53,91,12),(54,93,14),(55,95,1),(56,96,12),(57,97,12),(58,98,1),(59,99,12),(60,100,15),(61,101,12),(62,102,12),(63,104,12),(64,105,19),(65,107,12),(66,109,19),(67,111,14),(68,112,12),(69,115,13),(70,117,1),(71,119,1),(72,120,8),(73,126,1),(74,127,1),(75,128,1),(76,129,1),(77,130,12),(78,132,1),(79,133,1),(80,137,1),(81,138,1),(82,140,12),(83,141,12),(84,147,1),(85,148,1),(86,149,8),(87,151,12),(88,152,12),(89,153,12),(90,154,23),(91,156,12),(92,157,13),(93,158,13),(94,159,12),(95,160,12),(96,161,12),(97,162,24),(98,163,24),(99,164,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,2),(3,7,1),(4,8,2),(5,25,1),(6,28,2),(7,52,1),(8,53,1),(9,57,2),(10,56,2),(11,66,1),(12,69,2),(13,75,2),(14,78,1),(15,88,2),(16,90,1),(17,95,1),(18,98,2),(19,117,1),(20,119,2),(21,126,1),(22,127,2),(23,128,1),(24,129,2),(25,132,1),(26,133,2),(27,137,1),(28,138,2),(29,147,2),(30,148,1),(31,169,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/Dialog'),(4,9,'com/google/update/Dialog'),(5,10,'com/google/update/Dialog'),(6,12,'com/tutusw/phonespeedup/AdvancedActivity'),(7,13,'com/tutusw/phonespeedup/InfoActivity'),(8,14,'com/tutusw/phonespeedup/AboutActivity'),(9,16,'com/google/ssearch/SearchService'),(10,18,'com/tutusw/phonespeedup/Setcpu'),(11,20,'com/tutusw/phonespeedup/IntroActivity'),(12,21,'com/tutusw/phonespeedup/StresstestActivity'),(13,22,'(.*)'),(14,23,'com/google/ssearch/Dialog'),(15,24,'com/google/update/Dialog'),(16,26,'com/google/ssearch/Dialog'),(17,27,'com/google/update/Dialog'),(18,29,'com/safetest/compass/UpdateService'),(19,30,'com/tutusw/phonespeedup/ProfilesService'),(20,34,'com/tutusw/phonespeedup/IntroActivity'),(21,35,'NULL-CONSTANT'),(22,39,'com/tutusw/phonespeedup/ProfileEditActivity'),(23,40,'com/ps/ddp/GameActivity'),(24,42,'com/tutusw/phonespeedup/WidgetService'),(25,43,'com/ps/ddp/DemoApp'),(26,47,'com/tutusw/phonespeedup/ProfilesService'),(27,50,'com/tutusw/phonespeedup/ProfilesService'),(28,49,'com/waps/OffersWebView'),(29,54,'com.google.android.maps.MapsActivity'),(30,55,'com/waps/OffersWebView'),(31,60,'com/waps/OffersWebView'),(32,73,'com/tutusw/phonespeedup/PerflockActivity'),(33,76,'com/waps/OffersWebView'),(34,81,'com/tutusw/phonespeedup/WidgetService'),(35,82,'com/google/update/UpdateService'),(36,84,'com/google/update/UpdateService'),(37,83,'com/adwo/adsdk/AdwoAdBrowserActivity'),(38,85,'com/google/ssearch/Dialog'),(39,87,'com.google.android.maps.MapsActivity'),(40,89,'com/google/ssearch/Dialog'),(41,97,'com.google.android.maps.MapsActivity'),(42,102,'com.google.android.maps.MapsActivity'),(43,103,'com/ps/ddp/GameActivity'),(44,106,'com/google/update/Dialog'),(45,108,'com/google/update/Dialog'),(46,110,'com/waps/OffersWebView'),(47,112,'com.google.android.maps.MapsActivity'),(48,113,'com/google/update/Dialog'),(49,116,'com/google/update/Dialog'),(50,114,'com/waps/OffersWebView'),(51,118,'com/safetest/compass/widget/CompassService'),(52,121,'com/google/update/Dialog'),(53,122,'com/google/update/Dialog'),(54,123,'com/ps/ddp/GameActivity'),(55,124,'com/ps/ddp/GameActivity'),(56,131,'com/waps/OffersWebView'),(57,134,'com/google/update/Dialog'),(58,135,'com/google/update/Dialog'),(59,139,'(.*)'),(60,142,'com/waps/OffersWebView'),(61,143,'com/waps/OffersWebView'),(62,144,'com/google/update/Dialog'),(63,145,'com/google/update/Dialog'),(64,146,'com/google/update/UpdateService'),(65,150,'NULL-CONSTANT'),(66,155,'com/neworld/demo/UpdateCheck'),(67,165,'com/millennialmedia/android/MMAdViewOverlayActivity'),(68,166,'com/millennialmedia/android/MMAdViewOverlayActivity'),(69,167,'com/millennialmedia/android/MMAdViewOverlayActivity'),(70,168,'com/millennialmedia/android/MMAdViewOverlayActivity'),(71,169,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,31,2),(2,33,3),(3,36,4),(4,37,5),(5,38,6),(6,41,7),(7,44,8),(8,46,9),(9,48,10),(10,51,12),(11,58,13),(12,59,14),(13,61,15),(14,64,16),(15,68,18),(16,70,19),(17,74,20),(18,79,21),(19,80,22),(20,86,23),(21,87,24),(22,91,25),(23,93,26),(24,96,27),(25,97,28),(26,99,29),(27,100,30),(28,101,31),(29,102,32),(30,104,33),(31,107,34),(32,111,35),(33,112,36),(34,130,37),(35,140,38),(36,141,39),(37,151,40),(38,152,41),(39,153,42),(40,156,43),(41,157,44),(42,158,45),(43,159,46),(44,160,47),(45,161,48),(46,162,49),(47,163,50),(48,164,51),(49,165,52),(50,166,53),(51,167,54),(52,168,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,9,'TYPEdsada'),(5,10,'MSG'),(6,10,'TYPEdsada'),(7,23,'TYPEdsada'),(8,24,'TYPEdsada'),(9,26,'MSG'),(10,27,'MSG'),(11,26,'TYPEdsada'),(12,27,'TYPEdsada'),(13,36,'android.intent.extra.TEXT'),(14,36,'android.intent.extra.SUBJECT'),(15,36,'android.intent.extra.EMAIL'),(16,38,'sms_body'),(17,40,'type'),(18,46,'android.intent.extra.EMAIL'),(19,48,'android.intent.extra.TEXT'),(20,49,'USER_ID'),(21,48,'android.intent.extra.EMAIL'),(22,49,'CLIENT_PACKAGE'),(23,49,'Offers_URL'),(24,49,'offers_webview_tag'),(25,49,'URL_PARAMS'),(26,55,'CLIENT_PACKAGE'),(27,55,'URL'),(28,55,'offers_webview_tag'),(29,60,'CLIENT_PACKAGE'),(30,60,'URL'),(31,60,'isFinshClose'),(32,60,'offers_webview_tag'),(33,68,'android.intent.extra.EMAIL'),(34,72,'android.intent.extra.TEXT'),(35,72,'android.intent.extra.SUBJECT'),(36,72,'android.intent.extra.EMAIL'),(37,74,'android.intent.extra.TEXT'),(38,74,'android.intent.extra.SUBJECT'),(39,74,'android.intent.extra.EMAIL'),(40,76,'USER_ID'),(41,76,'CLIENT_PACKAGE'),(42,76,'Offers_URL'),(43,76,'offers_webview_tag'),(44,76,'URL_PARAMS'),(45,83,'url'),(46,85,'TYPEdsada'),(47,89,'MSG'),(48,89,'TYPEdsada'),(49,93,'android.intent.extra.TEXT'),(50,93,'android.intent.extra.EMAIL'),(51,100,'sms_body'),(52,103,'type'),(53,105,'query'),(54,106,'MSG'),(55,106,'TYPEdsada'),(56,108,'TYPEdsada'),(57,110,'UrlPath'),(58,110,'ACTIVITY_FLAG'),(59,110,'isFinshClose'),(60,110,'offers_webview_tag'),(61,113,'MSG'),(62,114,'Notify_Url_Params'),(63,113,'TYPEdsada'),(64,114,'UrlPath'),(65,114,'ACTIVITY_FLAG'),(66,114,'isFinshClose'),(67,116,'TYPEdsada'),(68,114,'offers_webview_tag'),(69,121,'TYPEdsada'),(70,122,'MSG'),(71,122,'TYPEdsada'),(72,123,'type'),(73,124,'type'),(74,131,'USER_ID'),(75,131,'CLIENT_PACKAGE'),(76,131,'Offers_URL'),(77,131,'offers_webview_tag'),(78,131,'URL_PARAMS'),(79,134,'MSG'),(80,134,'TYPEdsada'),(81,135,'TYPEdsada'),(82,142,'Notify_Url_Params'),(83,142,'UrlPath'),(84,142,'ACTIVITY_FLAG'),(85,142,'isFinshClose'),(86,142,'offers_webview_tag'),(87,143,'UrlPath'),(88,143,'ACTIVITY_FLAG'),(89,143,'isFinshClose'),(90,143,'offers_webview_tag'),(91,144,'MSG'),(92,144,'TYPEdsada'),(93,145,'TYPEdsada'),(94,154,'command'),(95,165,'overlayOrientation'),(96,165,'cachedAdView'),(97,166,'overlayOrientation'),(98,166,'cachedAdView'),(99,167,'overlayOrientation'),(100,167,'cachedAdView'),(101,168,'overlayOrientation'),(102,168,'cachedAdView'),(103,169,'com.google.circles.platform.intent.extra.ACTION'),(104,169,'(.*)'),(105,169,'com.google.circles.platform.intent.extra.ENTITY'),(106,169,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,5),(7,5,3),(8,5,2),(9,5,4),(10,6,3),(11,7,7),(12,7,6),(13,8,1),(14,9,4),(15,9,2),(16,9,3),(17,10,1),(18,11,6),(19,12,4),(20,12,3),(21,12,2),(22,13,1),(23,14,2),(24,14,4),(25,14,3),(26,15,9),(27,15,10),(28,16,7),(29,16,9),(30,16,10),(31,17,7),(32,17,10),(33,17,9),(34,18,7),(35,18,9),(36,18,10),(37,19,10),(38,19,7),(39,19,9),(40,20,10),(41,20,9),(42,20,7),(43,21,7),(44,21,9),(45,21,10),(46,22,7),(47,22,10),(48,22,9),(49,23,10),(50,23,7),(51,23,9),(52,24,9),(53,24,10),(54,24,7),(55,25,9),(56,25,10),(57,25,7),(58,26,9),(59,26,10),(60,26,7),(61,27,9),(62,27,7),(63,27,10),(64,28,1),(65,29,10),(66,29,11),(67,29,9),(68,29,17),(69,29,16),(70,30,2),(71,30,3),(72,30,4),(73,31,16),(74,31,17),(75,31,11),(76,31,10),(77,31,9),(78,32,16),(79,32,17),(80,32,11),(81,32,10),(82,32,9),(83,33,16),(84,33,17),(85,33,11),(86,33,10),(87,33,9),(88,34,17),(89,34,10),(90,34,9),(91,34,11),(92,34,16),(93,35,9),(94,35,10),(95,35,11),(96,35,16),(97,35,17),(98,36,18),(99,37,1),(100,39,18),(101,40,20),(102,41,9),(103,42,9),(104,43,9),(105,44,9),(106,45,9),(107,46,9),(108,47,10),(109,48,10),(110,49,10),(111,50,10),(112,51,10),(113,52,10),(114,53,18),(115,54,21),(116,54,22),(117,55,21),(118,55,22),(119,56,21),(120,56,22),(121,57,22),(122,57,21),(123,58,21),(124,58,22),(125,59,21),(126,59,22),(127,60,9),(128,60,10),(129,60,25);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,8,1),(4,10,1),(5,13,1),(6,28,1),(7,37,1),(8,38,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,36,'package',NULL,NULL,NULL,NULL,NULL),(2,39,'package',NULL,NULL,NULL,NULL,NULL),(3,53,'package',NULL,NULL,NULL,NULL,NULL),(4,54,'file',NULL,NULL,NULL,NULL,NULL),(5,55,'file',NULL,NULL,NULL,NULL,NULL),(6,56,'file',NULL,NULL,NULL,NULL,NULL),(7,57,'file',NULL,NULL,NULL,NULL,NULL),(8,58,'file',NULL,NULL,NULL,NULL,NULL),(9,59,'file',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,31,'application','vnd.android.package-archive'),(2,41,'*','*'),(3,61,'(.*)','(.*)'),(4,72,'message','rfc882'),(5,79,'(.*)','(.*)'),(6,91,'application','vnd.android.package-archive'),(7,96,'application','vnd.android.package-archive'),(8,99,'application','vnd.android.package-archive'),(9,101,'application','vnd.android.package-archive'),(10,104,'application','vnd.android.package-archive'),(11,107,'*','*'),(12,130,'application','vnd.android.package-archive'),(13,140,'application','vnd.android.package-archive'),(14,141,'application','vnd.android.package-archive'),(15,162,'(.*)','(.*)'),(16,164,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'com.cosina.game.activity'),(2,2,'com.cosina.game.activity'),(3,3,'com.cosina.game.activity'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,7,'com.cosina.game.activity'),(7,8,'com.cosina.game.activity'),(8,9,'com.cosina.game.activity'),(9,10,'com.cosina.game.activity'),(10,12,'com.tutusw.phonespeedup'),(11,13,'com.tutusw.phonespeedup'),(12,14,'com.tutusw.phonespeedup'),(13,16,'com.tutusw.phonespeedup'),(14,18,'com.tutusw.phonespeedup'),(15,20,'com.tutusw.phonespeedup'),(16,21,'com.tutusw.phonespeedup'),(17,22,'(.*)'),(18,23,'com.tutusw.phonespeedup'),(19,24,'com.ps.ddp'),(20,25,'com.noshufou.android.su'),(21,28,'com.noshufou.android.su'),(22,26,'com.tutusw.phonespeedup'),(23,27,'com.ps.ddp'),(24,29,'com.safetest.compass'),(25,30,'com.tutusw.phonespeedup'),(26,34,'com.tutusw.phonespeedup'),(27,35,'NULL-CONSTANT'),(28,39,'com.tutusw.phonespeedup'),(29,40,'com.ps.ddp'),(30,42,'com.tutusw.phonespeedup'),(31,43,'com.ps.ddp'),(32,47,'com.tutusw.phonespeedup'),(33,50,'com.tutusw.phonespeedup'),(34,49,'com.ps.ddp'),(35,52,'com.tutusw.phonespeedup'),(36,53,'com.noshufou.android.su'),(37,54,'com.google.android.apps.maps'),(38,56,'com.noshufou.android.su'),(39,57,'com.tutusw.phonespeedup'),(40,55,'com.ps.ddp'),(41,60,'com.ps.ddp'),(42,66,'(.*)'),(43,69,'(.*)'),(44,73,'com.tutusw.phonespeedup'),(45,75,'com.gp.monolith'),(46,78,'com.gp.monolith'),(47,76,'com.ps.ddp'),(48,81,'com.tutusw.phonespeedup'),(49,82,'com.gp.monolith'),(50,84,'com.ps.ddp'),(51,83,'com.safetest.compass'),(52,85,'com.tutusw.phonespeedup'),(53,88,'com.ps.ddp'),(54,87,'com.google.android.apps.maps'),(55,89,'com.tutusw.phonespeedup'),(56,90,'com.ps.ddp'),(57,95,'(.*)'),(58,98,'(.*)'),(59,97,'com.google.android.apps.maps'),(60,102,'com.google.android.apps.maps'),(61,103,'com.ps.ddp'),(62,106,'com.gp.monolith'),(63,108,'com.gp.monolith'),(64,110,'com.ps.ddp'),(65,112,'com.google.android.apps.maps'),(66,113,'com.gp.monolith'),(67,116,'com.gp.monolith'),(68,114,'com.ps.ddp'),(69,118,'com.safetest.compass'),(70,117,'com.noshufou.android.su'),(71,119,'com.noshufou.android.su'),(72,121,'com.ps.ddp'),(73,122,'com.ps.ddp'),(74,123,'com.ps.ddp'),(75,124,'com.ps.ddp'),(76,126,'(.*)'),(77,127,'(.*)'),(78,128,'NULL-CONSTANT'),(79,129,'NULL-CONSTANT'),(80,131,'com.alan.translate'),(81,132,'com.noshufou.android.su'),(82,133,'com.noshufou.android.su'),(83,134,'com.alan.translate'),(84,135,'com.alan.translate'),(85,137,'(.*)'),(86,138,'(.*)'),(87,139,'(.*)'),(88,142,'com.alan.translate'),(89,143,'com.alan.translate'),(90,144,'com.alan.translate'),(91,145,'com.alan.translate'),(92,146,'com.alan.translate'),(93,147,'com.alan.translate'),(94,148,'com.alan.translate'),(95,150,'NULL-CONSTANT'),(96,155,'com.rovio.new.ads'),(97,165,'com.rovio.new.ads'),(98,166,'com.rovio.new.ads'),(99,167,'com.rovio.new.ads'),(100,168,'com.rovio.new.ads'),(101,169,'com.google.android.apps.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,14,0),(4,17,0),(5,22,0),(6,23,0),(7,24,0),(8,25,0),(9,32,0),(10,33,0),(11,38,0),(12,39,0),(13,40,0),(14,45,0),(15,46,0),(16,24,0),(17,22,0),(18,47,0),(19,48,0),(20,49,0),(21,50,0),(22,24,0),(23,22,0),(24,47,0),(25,48,0),(26,49,0),(27,50,0),(28,51,0),(29,24,0),(30,59,0),(31,22,0),(32,47,0),(33,48,0),(34,49,0),(35,50,0),(36,60,0),(37,61,0),(38,65,0),(39,71,0),(40,72,0),(41,73,0),(42,72,0),(43,39,0),(44,74,0),(45,75,0),(46,38,0),(47,73,0),(48,72,0),(49,39,0),(50,74,0),(51,75,0),(52,38,0),(53,76,0),(54,77,0),(55,78,0),(56,79,0),(57,80,0),(58,81,0),(59,82,0),(60,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,1,0),(12,9,0,0),(13,9,0,0),(14,9,0,0),(15,10,1,0),(16,11,0,0),(17,12,1,0),(18,13,0,0),(19,14,1,0),(20,15,0,0),(21,16,0,0),(22,17,0,0),(23,18,0,0),(24,20,0,0),(25,19,1,0),(26,18,0,0),(27,20,0,0),(28,19,1,0),(29,21,0,0),(30,22,0,0),(31,23,1,0),(32,24,1,0),(33,25,1,0),(34,26,0,0),(35,27,0,0),(36,25,1,0),(37,29,1,0),(38,25,1,0),(39,30,0,0),(40,31,0,0),(41,25,1,0),(42,32,0,0),(43,33,0,0),(44,25,1,0),(45,34,1,0),(46,25,1,0),(47,35,0,0),(48,25,1,0),(49,36,0,0),(50,37,0,0),(51,25,1,0),(52,39,1,0),(53,40,1,0),(54,25,0,0),(55,41,0,0),(56,40,1,0),(57,39,1,0),(58,25,1,0),(59,25,1,0),(60,41,0,0),(61,25,1,0),(62,42,1,0),(63,25,1,0),(64,25,1,0),(65,43,1,0),(66,43,1,0),(67,44,1,0),(68,25,1,0),(69,43,1,0),(70,46,1,0),(71,25,1,0),(72,25,1,0),(73,48,0,0),(74,25,1,0),(75,49,1,0),(76,50,0,0),(77,25,1,0),(78,49,1,0),(79,25,1,0),(80,25,1,0),(81,52,0,0),(82,51,0,0),(83,25,0,0),(84,53,0,0),(85,54,0,0),(86,55,1,0),(87,25,0,0),(88,56,1,0),(89,54,0,0),(90,56,1,0),(91,57,1,0),(92,25,1,0),(93,25,1,0),(94,57,1,0),(95,58,1,0),(96,57,1,0),(97,25,0,0),(98,58,1,0),(99,57,1,0),(100,25,1,0),(101,57,1,0),(102,25,0,0),(103,59,0,0),(104,57,1,0),(105,25,1,0),(106,60,0,0),(107,25,1,0),(108,60,0,0),(109,25,1,0),(110,61,0,0),(111,25,1,0),(112,25,0,0),(113,62,0,0),(114,61,0,0),(115,25,1,0),(116,62,0,0),(117,63,1,0),(118,64,0,0),(119,63,1,0),(120,65,1,0),(121,66,0,0),(122,66,0,0),(123,67,0,0),(124,68,0,0),(125,69,1,0),(126,69,1,0),(127,69,1,0),(128,69,1,0),(129,69,1,0),(130,70,1,0),(131,71,0,0),(132,72,1,0),(133,72,1,0),(134,73,0,0),(135,73,0,0),(136,74,1,0),(137,74,1,0),(138,74,1,0),(139,75,0,0),(140,76,1,0),(141,77,1,0),(142,78,0,0),(143,78,0,0),(144,79,0,0),(145,79,0,0),(146,80,0,0),(147,81,1,0),(148,81,1,0),(149,82,1,0),(150,83,0,0),(151,84,1,0),(152,84,1,0),(153,86,1,0),(154,87,1,0),(155,88,0,0),(156,89,1,0),(157,90,1,0),(158,90,1,0),(159,91,1,0),(160,91,1,0),(161,92,1,0),(162,92,1,0),(163,92,1,0),(164,92,1,0),(165,93,0,0),(166,93,0,0),(167,95,0,0),(168,95,0,0),(169,97,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.rovio.new.AdContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.CALL_PHONE'),(5,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(21,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.SET_WALLPAPER'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS'),(14,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,70,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(30,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(32,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,38,11),(3,45,17);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,4),(14,2,5),(15,2,7),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,2,13),(21,3,1),(22,3,2),(23,3,3),(24,3,4),(25,3,5),(26,3,7),(27,3,9),(28,3,14),(29,3,15),(30,4,16),(31,4,1),(32,4,4),(33,4,7),(34,4,9),(35,4,11),(36,4,12),(37,4,13),(38,5,1),(39,5,2),(40,5,3),(41,5,4),(42,5,5),(43,5,7),(44,5,9),(45,5,10),(46,5,11),(47,5,12),(48,5,13),(49,5,17),(50,5,16),(51,5,19),(52,5,18),(53,6,1),(54,6,2),(55,6,3),(56,6,4),(57,6,5),(58,6,7),(59,6,9),(60,6,13),(61,6,15),(62,6,17),(63,6,16),(64,6,19),(65,6,20),(66,7,1),(67,7,3),(68,7,21),(69,7,4),(70,7,7),(71,7,9),(72,7,13);
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

-- Dump completed on 2015-10-09  0:38:20
