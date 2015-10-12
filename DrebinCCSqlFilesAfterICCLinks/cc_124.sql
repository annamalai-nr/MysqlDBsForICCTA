-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_124
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (22,'Speedup.intent.action.refreshservice'),(27,'Speedup.intent.action.temp'),(12,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(26,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(29,'android.intent.action.CHOOSER'),(23,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.MEDIA_EJECT'),(16,'android.intent.action.MEDIA_SHARED'),(14,'android.intent.action.MEDIA_UNMOUNTED'),(19,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(24,'android.intent.action.SEND'),(25,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(18,'android.intent.action.VIEW'),(28,'android.intent.action.WEB_SEARCH'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(8,'android.net.wifi.WIFI_STATE_CHANGED'),(17,'com.android.service.START_AUDIO_SERVICE'),(13,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.safetest.myapn.widget.rotate.CLICK'),(9,'com.safetest.myapn.widget.switch.CLICK'),(6,'lenovo.intent.action.appstore');
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
INSERT INTO `Applications` VALUES (1,'com.allen.mp',1),(2,'com.tutusw.phonespeedup',14),(3,'com.wqx.blackjack',11),(4,'com.ps.llk',8),(5,'com.safetest.myapn',23),(6,'com.the9.gamechannel',4),(7,'com.gp.search',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.mp.Main'),(2,1,'com.allen.mp.Help'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.google.ssearch.SearchService'),(5,1,'com.google.ssearch.Receiver'),(6,2,'com.tutusw.phonespeedup.IntroActivity'),(7,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,4,'com.ps.llk.MainActivity'),(9,3,'com.wqx.blackjack.Blackjack'),(10,2,'com.tutusw.phonespeedup.InfoActivity'),(11,2,'com.google.ssearch.Dialog'),(12,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,3,'com.wqx.blackjack.Card'),(14,2,'com.tutusw.phonespeedup.Home'),(15,4,'com.google.update.Dialog'),(16,3,'com.google.update.Dialog'),(17,2,'com.tutusw.phonespeedup.PerflockActivity'),(18,3,'com.google.update.UpdateService'),(19,4,'com.waps.OffersWebView'),(20,2,'com.tutusw.phonespeedup.ProfilesActivity'),(21,3,'com.google.update.Receiver'),(22,4,'com.google.update.UpdateService'),(23,2,'com.tutusw.phonespeedup.ProfileEditActivity'),(24,4,'com.google.update.Receiver'),(25,2,'com.tutusw.phonespeedup.AdvancedActivity'),(26,2,'com.tutusw.phonespeedup.AboutActivity'),(27,2,'com.tutusw.phonespeedup.StresstestActivity'),(28,2,'com.tutusw.phonespeedup.Setcpu'),(29,2,'com.tutusw.phonespeedup.WidgetConfigActivity'),(30,5,'com.safetest.myapn.InitialActivity'),(31,2,'com.google.ssearch.SearchService'),(32,5,'com.safetest.myapn.PreferenceActivity'),(33,2,'com.tutusw.phonespeedup.StartupService'),(34,5,'com.safetest.myapn.HelpActivity'),(35,2,'com.tutusw.phonespeedup.ProfilesService'),(36,5,'com.safetest.common.app.ActivationActivity'),(37,1,'com.allen.mp.Help$4$1'),(38,2,'com.tutusw.phonespeedup.WidgetService'),(39,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,2,'com.google.ssearch.Receiver'),(41,5,'com.safetest.myapn.ShowTips'),(42,5,'com.safetest.myapn.UpdateService'),(43,2,'com.tutusw.phonespeedup.StartupReceiver'),(44,5,'com.safetest.myapn.HiApnWidgetProvider'),(45,1,'com.google.ssearch.SearchService$MyThread'),(46,2,'com.tutusw.phonespeedup.Widget'),(47,5,'com.safetest.myapn.HiApnSwitcherWidgetProvider'),(48,6,'com.the9.gamechannel.SpotlightActivity'),(49,5,'com.safetest.myapn.HiApnRotaterWidgetProvider'),(50,6,'com.openfeint.internal.ui.IntroFlow'),(51,6,'com.openfeint.api.ui.Dashboard'),(52,5,'com.safetest.myapn.Receiver'),(53,6,'com.openfeint.internal.ui.Settings'),(54,6,'com.openfeint.internal.ui.NativeBrowser'),(55,6,'com.the9.gamechannel.remoteview'),(56,6,'com.google.update.Dialog'),(57,6,'com.google.update.UpdateService'),(58,6,'com.google.update.Receiver'),(59,1,'com.google.ssearch.Dialog$1'),(60,7,'com.gp.search.IndexUI'),(61,1,'com.allen.mp.SDListenerActivity$1'),(62,7,'com.gp.search.LoadWeathreUI'),(63,7,'com.gp.search.WeatherInfoUI'),(64,7,'com.gp.search.IPSearchUI'),(65,7,'com.gp.search.TrainSearchUI'),(66,7,'com.gp.search.ExpressSearchUI'),(67,7,'com.gp.search.PhoneSearchUI'),(68,7,'com.gp.search.BusUI'),(69,7,'com.gp.search.RPSearchUI'),(70,7,'com.gp.search.ScoreSearchUI'),(71,7,'com.gp.search.weather.proc.Splash'),(72,7,'com.gp.search.weather.proc.MainService'),(73,7,'com.waps.OffersWebView'),(74,7,'com.google.update.Dialog'),(75,7,'cn.domob.android.ads.DomobActivity'),(76,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(77,7,'com.gp.search.weather.func.AlarmService'),(78,7,'com.android.weather.service.LoadDataService'),(79,7,'com.google.update.UpdateService'),(80,7,'com.google.update.Receiver'),(81,3,'com.google.update.Dialog$1'),(82,3,'com.google.update.Dialog$2'),(83,3,'com.google.update.UpdateService$AA'),(84,4,'com.waps.aa'),(85,4,'com.google.update.Dialog$2'),(86,4,'com.google.update.Dialog$1'),(87,4,'com.waps.z'),(88,4,'com.google.update.UpdateService$AA'),(89,4,'com.waps.o'),(90,4,'com.waps.ac'),(91,4,'com.waps.q'),(92,2,'com.tutusw.phonespeedup.WidgetService$1'),(93,2,'com.tutusw.phonespeedup.ProfilesService$1'),(94,2,'android.appwidget.AppWidgetProvider'),(95,2,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(96,2,'com.google.ssearch.Dialog$1'),(97,6,'com.google.update.UpdateService$MyThread'),(98,5,'com.adwo.adsdk.g'),(99,6,'com.openfeint.internal.ImagePicker'),(100,2,'com.google.ssearch.SearchService$MyThread'),(101,6,'com.ju6.a'),(102,6,'com.the9.gamechannel.SpotlightActivity$6'),(103,6,'com.google.update.Dialog$2'),(104,6,'com.google.update.Dialog$1'),(105,2,'com.tutusw.phonespeedup.Home$clicker'),(106,5,'com.safetest.myapn.HelpActivity$3'),(107,5,'com.safetest.myapn.HelpActivity$4'),(108,5,'com.safetest.myapn.ApnDao'),(109,5,'com.safetest.myapn.ShowTips$1'),(110,5,'com.safetest.myapn.HelpActivity$6$1'),(111,5,'com.safetest.myapn.PreferenceActivity$8'),(112,5,'com.safetest.myapn.Util'),(113,7,'com.waps.o'),(114,7,'com.waps.z'),(115,7,'cn.domob.android.ads.i$6'),(116,7,'cn.domob.android.ads.DomobAdManager'),(117,7,'com.waps.aa'),(118,7,'com.google.update.Dialog$2'),(119,7,'com.gp.search.control.MenuContorl$1'),(120,7,'cn.domob.android.ads.i'),(121,7,'com.waps.q'),(122,7,'cn.domob.android.ads.DomobAdEngine$2'),(123,7,'com.google.update.Dialog$1'),(124,7,'com.google.update.UpdateService$AA'),(125,7,'com.waps.AppConnect'),(126,7,'com.gp.search.weather.func.AlarmHelper'),(127,7,'cn.domob.android.ads.DomobActionReceiver'),(128,7,'com.waps.ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'TYPEdsada'),(2,3,'MSG'),(3,19,'ST_START_DELAY'),(4,9,'mWinCount'),(5,9,'mLoseCount'),(6,7,'overlayTransition'),(7,7,'shouldMakeOverlayTransparent'),(8,9,'mCurrentScore'),(9,9,'mStartTime'),(10,9,'mMoney'),(11,13,'mMaxScore'),(12,13,'mStartTime'),(13,13,'mWinCount'),(14,9,'mMaxScore'),(15,19,'ST_MY_PID'),(16,7,'shouldResizeOverlay'),(17,7,'url'),(18,9,'Blackjack'),(19,13,'mLoseCount'),(20,16,'MSG'),(21,13,'mCurrentScore'),(22,7,'overlayTitle'),(23,13,'mMoney'),(24,16,'TYPEdsada'),(25,7,'shouldEnableBottomBar'),(26,7,'shouldShowBottomBar'),(27,7,'transitionTime'),(28,7,'shouldShowTitlebar'),(29,18,'offers_webview_tag'),(30,22,'ST_MY_PID'),(31,18,'SHWO_FLAG'),(32,18,'URL'),(33,18,'Notify_Url_Params'),(34,18,'ACTIVITY_FLAG'),(35,18,'URL_PARAMS'),(36,8,'APP_ID'),(37,18,'APP_ID'),(38,18,'Notify_Id'),(39,12,'url'),(40,8,'WAPS_ID'),(41,18,'WAPS_ID'),(42,8,'CLIENT_PACKAGE'),(43,18,'CLIENT_PACKAGE'),(44,18,'isFinshClose'),(45,18,'Offers_URL'),(46,12,'shouldResizeOverlay'),(47,8,'WAPS_PID'),(48,18,'WAPS_PID'),(49,15,'TYPEdsada'),(50,18,'UrlPath'),(51,12,'transitionTime'),(52,12,'shouldEnableBottomBar'),(53,12,'shouldMakeOverlayTransparent'),(54,18,'USER_ID'),(55,12,'overlayTransition'),(56,8,'DEVICE_ID'),(57,18,'DEVICE_ID'),(58,12,'shouldShowBottomBar'),(59,22,'ST_START_DELAY'),(60,12,'overlayTitle'),(61,15,'MSG'),(62,12,'shouldShowTitlebar'),(63,29,'appWidgetId'),(64,54,'TYPEdsada'),(65,46,'content_name'),(66,51,'content_name'),(67,49,'content_name'),(68,48,'content_name'),(69,51,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(70,51,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(71,52,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(72,51,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(73,38,'overlayTransition'),(74,40,'MM'),(75,46,'screenName'),(76,51,'screenName'),(77,49,'screenName'),(78,48,'screenName'),(79,55,'ST_START_DELAY'),(80,54,'MSG'),(81,55,'ST_MY_PID'),(82,52,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(83,11,'MSG'),(84,23,'row_id'),(85,11,'TYPEdsada'),(86,47,'FROM_CLASS'),(87,30,'started'),(88,41,'SAFE_START'),(89,38,'overlayTitle'),(90,38,'shouldShowTitlebar'),(91,38,'transitionTime'),(92,38,'shouldMakeOverlayTransparent'),(93,41,'SAFE_PID'),(94,45,'FROM_CLASS'),(95,38,'shouldShowBottomBar'),(96,38,'shouldResizeOverlay'),(97,38,'url'),(98,43,'FROM_CLASS'),(99,38,'shouldEnableBottomBar'),(100,70,'WAPS_ID'),(101,67,'WAPS_ID'),(102,57,'WAPS_ID'),(103,73,'url'),(104,72,'actType'),(105,70,'CLIENT_PACKAGE'),(106,67,'CLIENT_PACKAGE'),(107,57,'CLIENT_PACKAGE'),(108,70,'URL_PARAMS'),(109,70,'isFinshClose'),(110,70,'SHWO_FLAG'),(111,71,'MSG'),(112,70,'ACTIVITY_FLAG'),(113,70,'URL'),(114,70,'APP_ID'),(115,67,'APP_ID'),(116,57,'APP_ID'),(117,70,'WAPS_PID'),(118,67,'WAPS_PID'),(119,57,'WAPS_PID'),(120,72,'appId'),(121,76,'ST_START_DELAY'),(122,76,'ST_MY_PID'),(123,71,'TYPEdsada'),(124,70,'UrlPath'),(125,73,'shouldEnableBottomBar'),(126,70,'Notify_Url_Params'),(127,70,'DEVICE_ID'),(128,67,'DEVICE_ID'),(129,57,'DEVICE_ID'),(130,73,'shouldShowTitlebar'),(131,72,'appName'),(132,70,'Offers_URL'),(133,73,'shouldShowBottomBar'),(134,70,'Notify_Id'),(135,70,'offers_webview_tag'),(136,69,'DOMOB_TEST_MODE'),(137,76,'DOMOB_TEST_MODE'),(138,73,'DOMOB_TEST_MODE'),(139,70,'USER_ID'),(140,73,'shouldResizeOverlay'),(141,73,'shouldMakeOverlayTransparent'),(142,73,'transitionTime'),(143,73,'overlayTransition'),(144,69,'DOMOB_ALLOW_LOCATION'),(145,76,'DOMOB_ALLOW_LOCATION'),(146,73,'DOMOB_ALLOW_LOCATION'),(147,69,'DOMOB_PID'),(148,76,'DOMOB_PID'),(149,73,'DOMOB_PID'),(150,73,'overlayTitle');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'r',1,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'s',0,NULL,NULL),(42,43,'r',0,10,NULL),(43,44,'r',1,NULL,NULL),(44,46,'r',1,NULL,NULL),(45,47,'r',1,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'r',1,NULL,NULL),(48,50,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'s',0,NULL,NULL),(56,58,'r',1,NULL,NULL),(57,60,'a',1,NULL,NULL),(58,61,'r',1,NULL,NULL),(59,62,'a',1,NULL,NULL),(60,63,'a',1,NULL,NULL),(61,64,'a',1,NULL,NULL),(62,65,'a',1,NULL,NULL),(63,66,'a',1,NULL,NULL),(64,67,'a',1,NULL,NULL),(65,68,'a',1,NULL,NULL),(66,69,'a',1,NULL,NULL),(67,70,'a',1,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'s',0,NULL,NULL),(75,78,'s',1,NULL,NULL),(76,79,'s',0,NULL,NULL),(77,80,'r',1,NULL,NULL),(78,91,'r',1,NULL,NULL),(79,92,'r',1,NULL,NULL),(80,93,'r',1,NULL,NULL),(81,94,'r',1,NULL,NULL),(82,43,'r',1,NULL,NULL),(83,121,'r',1,NULL,NULL),(84,127,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,4),(4,4,5),(5,5,4),(6,6,3),(7,7,4),(8,8,16),(9,9,9),(10,10,9),(11,11,19),(12,12,16),(13,13,19),(14,14,9),(15,15,19),(16,16,21),(17,17,18),(18,18,18),(19,19,15),(20,20,15),(21,21,22),(22,22,22),(23,23,18),(24,24,22),(25,25,18),(26,26,18),(27,27,24),(28,28,18),(29,29,33),(30,30,20),(31,31,10),(32,32,20),(33,33,20),(34,34,14),(35,35,11),(36,36,55),(37,37,31),(38,38,30),(39,39,48),(40,39,51),(41,40,14),(42,41,55),(43,42,31),(44,43,56),(45,44,29),(46,45,55),(47,46,42),(48,47,33),(49,48,46),(50,49,39),(51,50,20),(52,51,54),(53,52,20),(54,53,54),(55,54,55),(56,55,20),(57,56,14),(58,57,44),(59,58,6),(60,59,6),(61,60,14),(62,61,31),(63,62,14),(64,63,14),(65,64,26),(66,65,30),(67,66,34),(68,67,34),(69,68,30),(70,69,30),(71,70,30),(72,71,40),(73,72,50),(74,73,30),(75,74,34),(76,75,32),(77,76,43),(78,76,30),(79,76,45),(80,76,47),(81,76,32),(82,77,30),(83,78,30),(84,79,69),(85,80,70),(86,81,70),(87,82,73),(88,82,76),(89,83,70),(90,84,77),(91,85,76),(92,85,69),(93,85,73),(94,86,70),(95,87,70),(96,88,71),(97,89,76),(98,90,60),(99,91,73),(100,91,69),(101,91,76),(102,92,57),(103,93,69),(104,93,73),(105,93,76),(106,94,71),(107,95,76),(108,96,67),(109,96,57),(110,97,76),(111,98,69),(112,99,70);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.allen.mp.Main: boolean onLongClick(android.view.View)>',6,'a',NULL),(2,37,'<com.allen.mp.Help$4$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,45,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(4,5,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,4,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(6,59,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(7,4,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(8,81,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,9,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(10,9,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(11,18,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,82,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(13,18,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(14,9,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(15,83,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(16,21,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,84,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(18,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(19,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(20,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,22,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,22,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(23,87,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(24,88,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(25,89,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,90,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(27,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(29,33,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(30,95,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(31,10,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(32,95,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(33,20,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(34,14,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(35,96,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(36,97,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(37,31,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(38,98,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(39,99,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(40,14,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(41,57,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,100,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(43,58,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,29,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(45,101,'<com.ju6.a: boolean b()>',178,'p',NULL),(46,43,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(47,33,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(48,102,'<com.the9.gamechannel.SpotlightActivity$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(49,40,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,95,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(51,103,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,95,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(53,104,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(54,57,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(55,95,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(56,105,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(57,46,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(58,6,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(59,6,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(60,14,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(61,31,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(62,14,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(63,14,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(64,26,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(65,30,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(66,106,'<com.safetest.myapn.HelpActivity$3: void onClick(android.view.View)>',4,'a',NULL),(67,107,'<com.safetest.myapn.HelpActivity$4: void onClick(android.view.View)>',22,'a',NULL),(68,30,'<com.safetest.myapn.InitialActivity: void initialAdvertise()>',10,'s',NULL),(69,30,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(70,108,'<com.safetest.myapn.ApnDao: void delete(java.lang.String)>',4,'p',NULL),(71,109,'<com.safetest.myapn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(72,52,'<com.safetest.myapn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(73,108,'<com.safetest.myapn.ApnDao: java.util.List queryAll()>',19,'p',NULL),(74,110,'<com.safetest.myapn.HelpActivity$6$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(75,111,'<com.safetest.myapn.PreferenceActivity$8: void onClick(android.view.View)>',94,'a',NULL),(76,112,'<com.safetest.myapn.Util: void sendToUpdateWidget(android.content.Context,java.lang.Class)>',13,'r',NULL),(77,108,'<com.safetest.myapn.ApnDao: void insert(com.safetest.myapn.ApnDetailInfo)>',36,'p',NULL),(78,30,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(79,72,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(80,113,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(81,114,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(82,115,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,73,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(84,80,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,116,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(86,73,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(87,117,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(88,118,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(89,79,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(90,119,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(91,120,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(92,60,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(93,122,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(94,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(95,124,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(96,125,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(97,79,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(98,126,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(99,128,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,1),(3,4,1),(4,8,13),(5,11,1),(6,12,1),(7,17,13),(8,21,1),(9,22,1),(10,27,13),(11,28,1),(12,29,1),(13,34,18),(14,35,1),(15,36,1),(16,37,18),(17,41,1),(18,42,1),(19,43,12),(20,44,22),(21,46,22),(22,47,22),(23,49,13),(24,50,1),(25,52,1),(26,54,23),(27,57,24),(28,59,1),(29,61,1),(30,60,25),(31,63,18),(32,65,25),(33,66,24),(34,68,18),(35,69,24),(36,71,18),(37,73,13),(38,74,18),(39,76,1),(40,77,18),(41,78,1),(42,79,23),(43,80,18),(44,82,18),(45,84,22),(46,85,18),(47,86,25),(48,87,18),(49,88,24),(50,90,24),(51,91,24),(52,92,18),(53,93,24),(54,95,12),(55,96,25),(56,97,18),(57,98,24),(58,99,18),(59,102,24),(60,104,18),(61,106,25),(62,108,18),(63,111,28),(64,113,18),(65,114,28),(66,115,24),(67,116,18),(68,117,23),(69,120,18),(70,121,29),(71,122,29),(72,123,29),(73,124,29),(74,125,29),(75,126,29),(76,127,29),(77,128,29),(78,131,1),(79,132,1),(80,134,18),(81,136,7),(82,139,18),(83,140,18),(84,141,18),(85,143,18),(86,144,18),(87,145,18),(88,146,18),(89,150,1),(90,151,1),(91,154,13),(92,158,18),(93,168,1),(94,169,1),(95,170,1),(96,171,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,11,1),(4,12,2),(5,21,1),(6,22,2),(7,28,1),(8,29,2),(9,35,1),(10,36,2),(11,41,1),(12,42,2),(13,50,2),(14,52,1),(15,59,1),(16,61,2),(17,76,1),(18,78,2),(19,131,1),(20,132,2),(21,150,1),(22,151,2),(23,168,1),(24,169,2),(25,170,2),(26,171,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/allen/mp/Help'),(2,5,'com/google/ssearch/SearchService'),(3,6,'com/google/ssearch/Dialog'),(4,7,'com/google/ssearch/Dialog'),(5,9,'com/google/ssearch/Dialog'),(6,10,'com/google/ssearch/Dialog'),(7,13,'com/wqx/blackjack/Card'),(8,14,'com/wqx/blackjack/Blackjack'),(9,15,'com/google/update/Dialog'),(10,16,'com/google/update/Dialog'),(11,18,'com/google/update/Dialog'),(12,19,'com/google/update/Dialog'),(13,20,'com/wqx/blackjack/Card'),(14,23,'com/google/update/UpdateService'),(15,24,'com/waps/OffersWebView'),(16,25,'com/waps/OffersWebView'),(17,26,'(.*)'),(18,30,'com/google/update/Dialog'),(19,31,'com/google/update/Dialog'),(20,32,'com/google/update/Dialog'),(21,33,'com/google/update/Dialog'),(22,38,'NULL-CONSTANT'),(23,39,'com/google/update/UpdateService'),(24,45,'com/tutusw/phonespeedup/StresstestActivity'),(25,48,'com/tutusw/phonespeedup/IntroActivity'),(26,51,'com/google/ssearch/Dialog'),(27,53,'com/google/ssearch/Dialog'),(28,55,'com/tutusw/phonespeedup/ProfilesService'),(29,56,'com/google/update/Dialog'),(30,58,'com/google/update/Dialog'),(31,62,'com/google/update/UpdateService'),(32,64,'com/tutusw/phonespeedup/WidgetService'),(33,67,'com/tutusw/phonespeedup/ProfilesService'),(34,70,'com/google/ssearch/SearchService'),(35,72,'com/tutusw/phonespeedup/ProfileEditActivity'),(36,75,'com/tutusw/phonespeedup/ProfilesService'),(37,74,'com/adwo/adsdk/AdwoAdBrowserActivity'),(38,77,'com.google.android.maps.MapsActivity'),(39,81,'com/google/update/Dialog'),(40,83,'com/google/update/Dialog'),(41,89,'com/tutusw/phonespeedup/WidgetService'),(42,94,'com/tutusw/phonespeedup/Setcpu'),(43,99,'com.google.android.maps.MapsActivity'),(44,100,'com/google/ssearch/Dialog'),(45,103,'com/google/ssearch/Dialog'),(46,104,'com.google.android.maps.MapsActivity'),(47,105,'com/tutusw/phonespeedup/PerflockActivity'),(48,107,'com/tutusw/phonespeedup/AdvancedActivity'),(49,109,'com/tutusw/phonespeedup/InfoActivity'),(50,108,'com.google.android.maps.MapsActivity'),(51,110,'com/tutusw/phonespeedup/AboutActivity'),(52,112,'com/tutusw/phonespeedup/IntroActivity'),(53,116,'com.google.android.maps.MapsActivity'),(54,118,'com/safetest/myapn/HelpActivity'),(55,129,'com/safetest/myapn/UpdateService'),(56,130,'com/safetest/common/app/ActivationActivity'),(57,133,'com/safetest/myapn/UpdateService'),(58,135,'com/safetest/myapn/InitialActivity'),(59,137,'com/safetest/myapn/PreferenceActivity'),(60,138,'com.android.mms.ui.ComposeMessageActivity'),(61,147,'(.*)'),(62,148,'com/google/update/UpdateService'),(63,152,'com/waps/OffersWebView'),(64,153,'com/waps/OffersWebView'),(65,155,'com/google/update/Dialog'),(66,156,'com/google/update/Dialog'),(67,157,'com/gp/search/weather/proc/MainService'),(68,159,'com/gp/search/RPSearchUI'),(69,161,'com/gp/search/LoadWeathreUI'),(70,162,'com/gp/search/PhoneSearchUI'),(71,163,'com/gp/search/ScoreSearchUI'),(72,164,'com/gp/search/IPSearchUI'),(73,165,'com/gp/search/BusUI'),(74,166,'com/gp/search/TrainSearchUI'),(75,167,'com/gp/search/ExpressSearchUI'),(76,172,'com/waps/OffersWebView'),(77,173,'com/google/update/Dialog'),(78,174,'com/google/update/Dialog'),(79,175,'com/gp/search/weather/func/AlarmService'),(80,176,'NULL-CONSTANT');
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
INSERT INTO `IData` VALUES (1,34,1),(2,37,2),(3,54,3),(4,57,4),(5,60,5),(6,63,6),(7,65,8),(8,66,9),(9,68,10),(10,69,11),(11,71,12),(12,79,13),(13,80,14),(14,82,15),(15,86,16),(16,87,17),(17,88,18),(18,92,19),(19,93,20),(20,97,21),(21,98,22),(22,99,23),(23,102,24),(24,104,25),(25,106,26),(26,108,27),(27,113,28),(28,115,29),(29,116,30),(30,120,31),(31,134,34),(32,139,36),(33,140,37),(34,141,38),(35,143,39),(36,144,40),(37,145,41),(38,146,42),(39,158,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'appid'),(2,6,'MSG'),(3,6,'TYPEdsada'),(4,7,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,10,'TYPEdsada'),(8,13,'mMaxScore'),(9,13,'mMoney'),(10,13,'mWinCount'),(11,13,'mLoseCount'),(12,13,'mStartTime'),(13,13,'mCurrentScore'),(14,15,'MSG'),(15,15,'TYPEdsada'),(16,16,'TYPEdsada'),(17,18,'MSG'),(18,18,'TYPEdsada'),(19,19,'TYPEdsada'),(20,20,'mMaxScore'),(21,20,'mMoney'),(22,20,'mWinCount'),(23,20,'mLoseCount'),(24,20,'mStartTime'),(25,20,'mCurrentScore'),(26,24,'Notify_Url_Params'),(27,24,'UrlPath'),(28,24,'ACTIVITY_FLAG'),(29,24,'isFinshClose'),(30,24,'offers_webview_tag'),(31,25,'UrlPath'),(32,25,'ACTIVITY_FLAG'),(33,25,'isFinshClose'),(34,25,'offers_webview_tag'),(35,30,'TYPEdsada'),(36,31,'MSG'),(37,31,'TYPEdsada'),(38,32,'TYPEdsada'),(39,33,'MSG'),(40,33,'TYPEdsada'),(41,51,'TYPEdsada'),(42,53,'MSG'),(43,53,'TYPEdsada'),(44,56,'TYPEdsada'),(45,57,'android.intent.extra.TEXT'),(46,57,'android.intent.extra.SUBJECT'),(47,58,'MSG'),(48,57,'android.intent.extra.EMAIL'),(49,58,'TYPEdsada'),(50,60,'sms_body'),(51,66,'android.intent.extra.EMAIL'),(52,69,'android.intent.extra.TEXT'),(53,69,'android.intent.extra.EMAIL'),(54,74,'url'),(55,81,'TYPEdsada'),(56,83,'MSG'),(57,83,'TYPEdsada'),(58,88,'android.intent.extra.EMAIL'),(59,91,'android.intent.extra.TEXT'),(60,91,'android.intent.extra.SUBJECT'),(61,91,'android.intent.extra.EMAIL'),(62,93,'android.intent.extra.TEXT'),(63,93,'android.intent.extra.SUBJECT'),(64,93,'android.intent.extra.EMAIL'),(65,100,'TYPEdsada'),(66,102,'android.intent.extra.TEXT'),(67,103,'MSG'),(68,102,'android.intent.extra.EMAIL'),(69,103,'TYPEdsada'),(70,106,'sms_body'),(71,111,'query'),(72,121,'android.intent.extra.INTENT'),(73,122,'android.intent.extra.INTENT'),(74,123,'android.intent.extra.TITLE'),(75,123,'android.intent.extra.INTENT'),(76,124,'android.intent.extra.INTENT'),(77,125,'android.intent.extra.TITLE'),(78,125,'android.intent.extra.INTENT'),(79,126,'android.intent.extra.INTENT'),(80,127,'android.intent.extra.TITLE'),(81,127,'android.intent.extra.INTENT'),(82,128,'android.intent.extra.TITLE'),(83,128,'android.intent.extra.INTENT'),(84,135,'started'),(85,136,'FROM_CLASS'),(86,138,'sms_body'),(87,138,'address'),(88,152,'UrlPath'),(89,152,'ACTIVITY_FLAG'),(90,152,'isFinshClose'),(91,152,'offers_webview_tag'),(92,153,'Notify_Url_Params'),(93,153,'UrlPath'),(94,153,'ACTIVITY_FLAG'),(95,153,'isFinshClose'),(96,153,'offers_webview_tag'),(97,155,'MSG'),(98,155,'TYPEdsada'),(99,156,'TYPEdsada'),(100,172,'USER_ID'),(101,172,'CLIENT_PACKAGE'),(102,172,'Offers_URL'),(103,172,'offers_webview_tag'),(104,172,'URL_PARAMS'),(105,173,'MSG'),(106,173,'TYPEdsada'),(107,174,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,2),(12,7,3),(13,7,4),(14,8,1),(15,9,5),(16,10,3),(17,10,4),(18,10,2),(19,11,3),(20,12,8),(21,12,7),(22,12,10),(23,12,9),(24,12,11),(25,13,7),(26,13,12),(27,14,9),(28,14,8),(29,14,7),(30,15,1),(31,16,7),(32,16,8),(33,16,11),(34,17,4),(35,17,2),(36,17,3),(37,18,2),(38,18,3),(39,18,4),(40,19,1),(41,20,16),(42,20,15),(43,20,14),(44,22,16),(45,22,15),(46,22,14),(47,31,17),(48,32,4),(49,32,3),(50,32,2),(51,33,19),(52,34,20),(53,34,21),(54,34,12),(55,35,21),(56,35,20),(57,35,12),(58,36,21),(59,36,20),(60,36,12),(61,37,21),(62,37,20),(63,37,12),(64,38,12),(65,38,21),(66,38,20),(67,39,21),(68,39,20),(69,39,12),(70,40,21),(71,40,20),(72,40,12),(73,41,21),(74,41,20),(75,41,12),(76,42,21),(77,42,20),(78,42,12),(79,43,12),(80,43,20),(81,43,21),(82,44,12),(83,44,20),(84,44,21),(85,45,12),(86,45,20),(87,45,21),(88,46,20),(89,46,26),(90,46,27),(91,46,21),(92,46,22),(93,47,22),(94,47,27),(95,47,26),(96,47,21),(97,47,20),(98,48,26),(99,48,27),(100,48,20),(101,48,22),(102,48,21),(103,49,27),(104,49,26),(105,49,22),(106,49,21),(107,49,20),(108,50,26),(109,50,27),(110,50,22),(111,50,21),(112,50,20),(113,51,22),(114,51,20),(115,51,21),(116,51,26),(117,51,27),(118,52,19),(119,53,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,8,1),(6,15,1),(7,19,1),(8,21,1),(9,23,1),(10,24,1),(11,25,1),(12,26,1),(13,27,1),(14,28,1),(15,29,1),(16,30,1),(17,31,3);
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
INSERT INTO `IFData` VALUES (1,20,'file',NULL,NULL,NULL,NULL,NULL),(2,22,'file',NULL,NULL,NULL,NULL,NULL),(3,33,'package',NULL,NULL,NULL,NULL,NULL),(4,52,'package',NULL,NULL,NULL,NULL,NULL),(5,53,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,37,'application','vnd.android.package-archive'),(3,63,'*','*'),(4,68,'application','vnd.android.package-archive'),(5,82,'(.*)','(.*)'),(6,91,'message','rfc882'),(7,97,'(.*)','(.*)'),(8,113,'*','*'),(9,139,'application','vnd.android.package-archive'),(10,140,'application','vnd.android.package-archive'),(11,141,'application','vnd.android.package-archive'),(12,143,'application','vnd.android.package-archive'),(13,144,'application','vnd.android.package-archive'),(14,145,'application','vnd.android.package-archive'),(15,146,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.mp'),(2,3,'com.allen.mp'),(3,4,'com.allen.mp'),(4,5,'com.allen.mp'),(5,6,'com.allen.mp'),(6,7,'com.allen.mp'),(7,9,'com.allen.mp'),(8,10,'com.allen.mp'),(9,11,'com.noshufou.android.su'),(10,12,'com.noshufou.android.su'),(11,13,'com.wqx.blackjack'),(12,14,'com.wqx.blackjack'),(13,15,'com.wqx.blackjack'),(14,16,'com.wqx.blackjack'),(15,18,'com.wqx.blackjack'),(16,19,'com.wqx.blackjack'),(17,20,'com.wqx.blackjack'),(18,21,'com.wqx.blackjack'),(19,22,'com.wqx.blackjack'),(20,23,'com.wqx.blackjack'),(21,24,'com.ps.llk'),(22,25,'com.ps.llk'),(23,26,'(.*)'),(24,28,'com.noshufou.android.su'),(25,29,'com.noshufou.android.su'),(26,30,'com.ps.llk'),(27,31,'com.ps.llk'),(28,32,'com.ps.llk'),(29,33,'com.ps.llk'),(30,35,'com.ps.llk'),(31,36,'com.ps.llk'),(32,38,'NULL-CONSTANT'),(33,39,'com.ps.llk'),(34,41,'(.*)'),(35,42,'(.*)'),(36,45,'com.tutusw.phonespeedup'),(37,48,'com.tutusw.phonespeedup'),(38,50,'com.the9.gamechannel'),(39,51,'com.tutusw.phonespeedup'),(40,52,'com.the9.gamechannel'),(41,53,'com.tutusw.phonespeedup'),(42,55,'com.tutusw.phonespeedup'),(43,56,'com.the9.gamechannel'),(44,58,'com.the9.gamechannel'),(45,59,'com.tutusw.phonespeedup'),(46,61,'com.tutusw.phonespeedup'),(47,62,'com.the9.gamechannel'),(48,64,'com.tutusw.phonespeedup'),(49,67,'com.tutusw.phonespeedup'),(50,70,'com.tutusw.phonespeedup'),(51,72,'com.tutusw.phonespeedup'),(52,75,'com.tutusw.phonespeedup'),(53,74,'com.safetest.myapn'),(54,76,'com.noshufou.android.su'),(55,77,'com.google.android.apps.maps'),(56,78,'com.noshufou.android.su'),(57,81,'com.the9.gamechannel'),(58,83,'com.the9.gamechannel'),(59,89,'com.tutusw.phonespeedup'),(60,94,'com.tutusw.phonespeedup'),(61,99,'com.google.android.apps.maps'),(62,100,'com.tutusw.phonespeedup'),(63,103,'com.tutusw.phonespeedup'),(64,104,'com.google.android.apps.maps'),(65,105,'com.tutusw.phonespeedup'),(66,107,'com.tutusw.phonespeedup'),(67,109,'com.tutusw.phonespeedup'),(68,108,'com.google.android.apps.maps'),(69,110,'com.tutusw.phonespeedup'),(70,112,'com.tutusw.phonespeedup'),(71,116,'com.google.android.apps.maps'),(72,118,'com.safetest.myapn'),(73,129,'com.safetest.myapn'),(74,130,'com.safetest.myapn'),(75,131,'com.noshufou.android.su'),(76,132,'com.noshufou.android.su'),(77,133,'com.safetest.myapn'),(78,135,'com.safetest.myapn'),(79,137,'com.safetest.myapn'),(80,138,'com.android.mms'),(81,147,'(.*)'),(82,148,'com.gp.search'),(83,150,'(.*)'),(84,151,'(.*)'),(85,152,'com.gp.search'),(86,153,'com.gp.search'),(87,155,'com.gp.search'),(88,156,'com.gp.search'),(89,157,'com.gp.search'),(90,159,'com.gp.search'),(91,161,'com.gp.search'),(92,162,'com.gp.search'),(93,163,'com.gp.search'),(94,164,'com.gp.search'),(95,165,'com.gp.search'),(96,166,'com.gp.search'),(97,167,'com.gp.search'),(98,168,'com.noshufou.android.su'),(99,169,'com.noshufou.android.su'),(100,170,'com.gp.search'),(101,171,'com.gp.search'),(102,172,'com.gp.search'),(103,173,'com.gp.search'),(104,174,'com.gp.search'),(105,175,'com.gp.search'),(106,176,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,8,0),(5,9,0),(6,21,0),(7,24,0),(8,30,0),(9,29,0),(10,39,0),(11,42,0),(12,43,0),(13,44,0),(14,45,0),(15,46,0),(16,47,0),(17,50,0),(18,56,0),(19,57,0),(20,58,0),(21,59,0),(22,5,0),(23,60,0),(24,61,0),(25,62,0),(26,63,0),(27,64,0),(28,65,0),(29,66,0),(30,67,0),(31,75,0),(32,77,0),(33,78,0),(34,44,0),(35,39,0),(36,79,0),(37,80,0),(38,81,0),(39,82,0),(40,44,0),(41,39,0),(42,79,0),(43,80,0),(44,81,0),(45,82,0),(46,44,0),(47,39,0),(48,79,0),(49,80,0),(50,81,0),(51,82,0),(52,83,0),(53,84,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,5,0,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,1,0),(12,8,1,0),(13,9,0,0),(14,10,0,0),(15,11,0,0),(16,11,0,0),(17,12,1,0),(18,13,0,0),(19,13,0,0),(20,14,0,0),(21,15,1,0),(22,15,1,0),(23,16,0,0),(24,17,0,0),(25,17,0,0),(26,18,0,0),(27,19,1,0),(28,20,1,0),(29,20,1,0),(30,21,0,0),(31,21,0,0),(32,22,0,0),(33,22,0,0),(34,23,1,0),(35,24,1,0),(36,24,1,0),(37,25,1,0),(38,26,0,0),(39,27,0,0),(40,28,1,0),(41,28,1,0),(42,28,1,0),(43,29,1,0),(44,30,1,0),(45,31,0,0),(46,32,1,0),(47,33,1,0),(48,34,0,0),(49,35,1,0),(50,36,1,0),(51,37,0,0),(52,36,1,0),(53,37,0,0),(54,38,1,0),(55,40,0,0),(56,41,0,0),(57,38,1,0),(58,41,0,0),(59,42,1,0),(60,38,1,0),(61,42,1,0),(62,43,0,0),(63,38,1,0),(64,44,0,0),(65,38,1,0),(66,38,1,0),(67,47,0,0),(68,48,1,0),(69,38,1,0),(70,49,0,0),(71,38,1,0),(72,50,0,0),(73,51,1,0),(74,38,0,0),(75,52,0,0),(76,53,1,0),(77,38,0,0),(78,53,1,0),(79,38,1,0),(80,38,1,0),(81,54,0,0),(82,38,1,0),(83,54,0,0),(84,55,1,0),(85,38,1,0),(86,38,1,0),(87,56,1,0),(88,38,1,0),(89,57,0,0),(90,38,1,0),(91,38,1,0),(92,58,1,0),(93,38,1,0),(94,59,0,0),(95,60,1,0),(96,38,1,0),(97,38,1,0),(98,38,1,0),(99,38,0,0),(100,61,0,0),(101,38,1,0),(102,38,1,0),(103,61,0,0),(104,38,0,0),(105,62,0,0),(106,38,1,0),(107,63,0,0),(108,38,0,0),(109,63,0,0),(110,63,0,0),(111,38,1,0),(112,64,0,0),(113,38,1,0),(114,38,1,0),(115,38,1,0),(116,38,0,0),(117,38,1,0),(118,65,0,0),(119,66,1,0),(120,66,1,0),(121,67,1,0),(122,67,1,0),(123,67,1,0),(124,67,1,0),(125,67,1,0),(126,67,1,0),(127,67,1,0),(128,67,1,0),(129,68,0,0),(130,69,0,0),(131,71,1,0),(132,71,1,0),(133,72,0,0),(134,74,1,0),(135,75,0,0),(136,76,1,0),(137,78,0,0),(138,79,0,0),(139,80,1,0),(140,81,1,0),(141,82,1,0),(142,82,1,0),(143,82,1,0),(144,82,1,0),(145,82,1,0),(146,82,1,0),(147,83,0,0),(148,84,0,0),(149,86,1,0),(150,86,1,0),(151,86,1,0),(152,87,0,0),(153,87,0,0),(154,88,1,0),(155,89,0,0),(156,89,0,0),(157,90,0,0),(158,91,1,0),(159,92,0,0),(160,92,1,0),(161,92,0,0),(162,92,0,0),(163,92,0,0),(164,92,0,0),(165,92,0,0),(166,92,0,0),(167,92,0,0),(168,94,1,0),(169,94,1,0),(170,95,1,0),(171,95,1,0),(172,96,0,0),(173,97,0,0),(174,97,0,0),(175,98,0,0),(176,99,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,118,34,2,NULL),(2,129,41,2,NULL),(3,130,36,2,NULL),(4,137,32,2,NULL),(5,95,30,2,NULL),(6,47,30,2,NULL),(7,43,30,2,NULL),(8,40,30,2,NULL),(9,41,30,2,NULL),(10,42,30,2,NULL),(11,160,30,2,NULL),(12,149,30,2,NULL),(13,150,30,2,NULL),(14,151,30,2,NULL),(15,95,43,2,NULL),(16,13,13,2,NULL),(17,47,43,2,NULL),(18,14,9,2,NULL),(19,43,43,2,NULL),(20,20,13,2,NULL),(21,40,43,2,NULL),(22,95,9,2,NULL),(23,41,43,2,NULL),(24,47,9,2,NULL),(25,42,43,2,NULL),(26,43,9,2,NULL),(27,160,43,2,NULL),(28,40,9,2,NULL),(29,149,43,2,NULL),(30,41,9,2,NULL),(31,150,43,2,NULL),(32,42,9,2,NULL),(33,151,43,2,NULL),(34,160,9,2,NULL),(35,95,45,2,NULL),(36,149,9,2,NULL),(37,47,45,2,NULL),(38,150,9,2,NULL),(39,43,45,2,NULL),(40,151,9,2,NULL),(41,40,45,2,NULL),(42,15,15,2,NULL),(43,41,45,2,NULL),(44,15,16,2,NULL),(45,42,45,2,NULL),(46,15,54,2,NULL),(47,160,45,2,NULL),(48,15,71,2,NULL),(49,149,45,2,NULL),(50,16,15,2,NULL),(51,150,45,2,NULL),(52,16,16,2,NULL),(53,151,45,2,NULL),(54,16,54,2,NULL),(55,95,47,2,NULL),(56,16,71,2,NULL),(57,47,47,2,NULL),(58,18,15,2,NULL),(59,43,47,2,NULL),(60,18,16,2,NULL),(61,40,47,2,NULL),(62,18,54,2,NULL),(63,41,47,2,NULL),(64,18,71,2,NULL),(65,42,47,2,NULL),(66,19,15,2,NULL),(67,160,47,2,NULL),(68,19,16,2,NULL),(69,149,47,2,NULL),(70,19,54,2,NULL),(71,150,47,2,NULL),(72,19,71,2,NULL),(73,151,47,2,NULL),(74,23,19,2,NULL),(75,133,41,2,NULL),(76,23,22,2,NULL),(77,95,50,2,NULL),(78,23,55,2,NULL),(79,47,50,2,NULL),(80,23,76,2,NULL),(81,43,50,2,NULL),(82,95,21,2,NULL),(83,40,50,2,NULL),(84,47,21,2,NULL),(85,41,50,2,NULL),(86,43,21,2,NULL),(87,42,50,2,NULL),(88,40,21,2,NULL),(89,160,50,2,NULL),(90,41,21,2,NULL),(91,149,50,2,NULL),(92,42,21,2,NULL),(93,150,50,2,NULL),(94,160,21,2,NULL),(95,151,50,2,NULL),(96,149,21,2,NULL),(97,150,21,2,NULL),(98,151,21,2,NULL),(99,95,46,2,NULL),(100,47,46,2,NULL),(101,43,46,2,NULL),(102,40,46,2,NULL),(103,41,46,2,NULL),(104,42,46,2,NULL),(105,160,46,2,NULL),(106,149,46,2,NULL),(107,150,46,2,NULL),(108,151,46,2,NULL),(109,56,15,2,NULL),(110,56,16,2,NULL),(111,56,54,2,NULL),(112,56,71,2,NULL),(113,58,15,2,NULL),(114,58,16,2,NULL),(115,58,54,2,NULL),(116,58,71,2,NULL),(117,81,15,2,NULL),(118,81,16,2,NULL),(119,81,54,2,NULL),(120,81,71,2,NULL),(121,83,15,2,NULL),(122,83,16,2,NULL),(123,83,54,2,NULL),(124,83,71,2,NULL),(125,62,19,2,NULL),(126,62,22,2,NULL),(127,62,55,2,NULL),(128,62,76,2,NULL),(129,95,56,2,NULL),(130,47,56,2,NULL),(131,43,56,2,NULL),(132,40,56,2,NULL),(133,41,56,2,NULL),(134,42,56,2,NULL),(135,160,56,2,NULL),(136,149,56,2,NULL),(137,150,56,2,NULL),(138,151,56,2,NULL),(139,94,28,2,NULL),(140,95,6,2,NULL),(141,47,6,2,NULL),(142,43,6,2,NULL),(143,40,6,2,NULL),(144,41,6,2,NULL),(145,42,6,2,NULL),(146,160,6,2,NULL),(147,149,6,2,NULL),(148,150,6,2,NULL),(149,151,6,2,NULL),(150,45,27,2,NULL),(151,48,6,2,NULL),(152,55,35,2,NULL),(153,105,17,2,NULL),(154,107,25,2,NULL),(155,109,10,2,NULL),(156,110,26,2,NULL),(157,95,1,2,NULL),(158,95,5,2,NULL),(159,95,29,2,NULL),(160,95,39,2,NULL),(161,95,42,2,NULL),(162,95,82,2,NULL),(163,95,44,2,NULL),(164,95,79,2,NULL),(165,95,80,2,NULL),(166,95,81,2,NULL),(167,95,8,2,NULL),(168,95,24,2,NULL),(169,95,57,2,NULL),(170,95,59,2,NULL),(171,95,60,2,NULL),(172,95,61,2,NULL),(173,95,62,2,NULL),(174,95,63,2,NULL),(175,95,64,2,NULL),(176,95,65,2,NULL),(177,95,66,2,NULL),(178,95,67,2,NULL),(179,95,75,2,NULL),(180,95,77,2,NULL),(181,47,1,2,NULL),(182,47,5,2,NULL),(183,47,29,2,NULL),(184,47,39,2,NULL),(185,47,42,2,NULL),(186,47,82,2,NULL),(187,47,44,2,NULL),(188,47,79,2,NULL),(189,47,80,2,NULL),(190,47,81,2,NULL),(191,47,8,2,NULL),(192,47,24,2,NULL),(193,47,57,2,NULL),(194,47,59,2,NULL),(195,47,60,2,NULL),(196,47,61,2,NULL),(197,47,62,2,NULL),(198,47,63,2,NULL),(199,47,64,2,NULL),(200,47,65,2,NULL),(201,47,66,2,NULL),(202,47,67,2,NULL),(203,47,75,2,NULL),(204,47,77,2,NULL),(205,112,6,2,NULL),(206,64,37,2,NULL),(207,43,29,2,NULL),(208,40,29,2,NULL),(209,41,29,2,NULL),(210,42,29,2,NULL),(211,160,29,2,NULL),(212,149,29,2,NULL),(213,150,29,2,NULL),(214,151,29,2,NULL),(215,51,3,2,NULL),(216,51,11,2,NULL),(217,53,3,2,NULL),(218,53,11,2,NULL),(219,100,3,2,NULL),(220,100,11,2,NULL),(221,103,3,2,NULL),(222,103,11,2,NULL),(223,67,35,2,NULL),(224,43,1,2,NULL),(225,43,5,2,NULL),(226,43,39,2,NULL),(227,43,42,2,NULL),(228,43,82,2,NULL),(229,43,44,2,NULL),(230,43,79,2,NULL),(231,43,80,2,NULL),(232,43,81,2,NULL),(233,43,8,2,NULL),(234,43,24,2,NULL),(235,43,57,2,NULL),(236,43,59,2,NULL),(237,43,60,2,NULL),(238,43,61,2,NULL),(239,43,62,2,NULL),(240,43,63,2,NULL),(241,43,64,2,NULL),(242,43,65,2,NULL),(243,43,66,2,NULL),(244,43,67,2,NULL),(245,43,75,2,NULL),(246,43,77,2,NULL),(247,70,4,2,NULL),(248,70,31,2,NULL),(249,40,39,2,NULL),(250,41,39,2,NULL),(251,42,39,2,NULL),(252,160,39,2,NULL),(253,149,39,2,NULL),(254,150,39,2,NULL),(255,151,39,2,NULL),(256,40,42,2,NULL),(257,41,42,2,NULL),(258,42,42,2,NULL),(259,160,42,2,NULL),(260,149,42,2,NULL),(261,150,42,2,NULL),(262,151,42,2,NULL),(263,40,82,2,NULL),(264,41,82,2,NULL),(265,42,82,2,NULL),(266,160,82,2,NULL),(267,149,82,2,NULL),(268,150,82,2,NULL),(269,151,82,2,NULL),(270,89,37,2,NULL),(271,40,44,2,NULL),(272,41,44,2,NULL),(273,42,44,2,NULL),(274,160,44,2,NULL),(275,149,44,2,NULL),(276,150,44,2,NULL),(277,151,44,2,NULL),(278,40,79,2,NULL),(279,41,79,2,NULL),(280,42,79,2,NULL),(281,160,79,2,NULL),(282,149,79,2,NULL),(283,150,79,2,NULL),(284,151,79,2,NULL),(285,40,80,2,NULL),(286,41,80,2,NULL),(287,42,80,2,NULL),(288,160,80,2,NULL),(289,149,80,2,NULL),(290,150,80,2,NULL),(291,151,80,2,NULL),(292,40,81,2,NULL),(293,41,81,2,NULL),(294,42,81,2,NULL),(295,160,81,2,NULL),(296,149,81,2,NULL),(297,150,81,2,NULL),(298,151,81,2,NULL),(299,159,66,2,NULL),(300,161,59,2,NULL),(301,162,64,2,NULL),(302,163,67,2,NULL),(303,164,61,2,NULL),(304,165,65,2,NULL),(305,166,62,2,NULL),(306,167,63,2,NULL),(307,160,1,2,NULL),(308,160,5,2,NULL),(309,160,8,2,NULL),(310,40,57,2,NULL),(311,41,57,2,NULL),(312,42,57,2,NULL),(313,160,24,2,NULL),(314,160,59,2,NULL),(315,160,60,2,NULL),(316,160,61,2,NULL),(317,160,62,2,NULL),(318,160,63,2,NULL),(319,160,64,2,NULL),(320,160,65,2,NULL),(321,160,66,2,NULL),(322,160,67,2,NULL),(323,149,57,2,NULL),(324,150,57,2,NULL),(325,151,57,2,NULL),(326,160,75,2,NULL),(327,160,77,2,NULL),(328,40,59,2,NULL),(329,41,59,2,NULL),(330,42,59,2,NULL),(331,149,59,2,NULL),(332,150,59,2,NULL),(333,151,59,2,NULL),(334,40,60,2,NULL),(335,41,60,2,NULL),(336,42,60,2,NULL),(337,149,60,2,NULL),(338,150,60,2,NULL),(339,151,60,2,NULL),(340,40,61,2,NULL),(341,41,61,2,NULL),(342,42,61,2,NULL),(343,149,61,2,NULL),(344,150,61,2,NULL),(345,151,61,2,NULL),(346,40,62,2,NULL),(347,41,62,2,NULL),(348,42,62,2,NULL),(349,149,62,2,NULL),(350,150,62,2,NULL),(351,151,62,2,NULL),(352,40,63,2,NULL),(353,41,63,2,NULL),(354,42,63,2,NULL),(355,149,63,2,NULL),(356,150,63,2,NULL),(357,151,63,2,NULL),(358,40,64,2,NULL),(359,41,64,2,NULL),(360,42,64,2,NULL),(361,149,64,2,NULL),(362,150,64,2,NULL),(363,151,64,2,NULL),(364,40,65,2,NULL),(365,41,65,2,NULL),(366,42,65,2,NULL),(367,149,65,2,NULL),(368,150,65,2,NULL),(369,151,65,2,NULL),(370,40,66,2,NULL),(371,41,66,2,NULL),(372,42,66,2,NULL),(373,149,66,2,NULL),(374,150,66,2,NULL),(375,151,66,2,NULL),(376,40,67,2,NULL),(377,41,67,2,NULL),(378,42,67,2,NULL),(379,149,67,2,NULL),(380,150,67,2,NULL),(381,151,67,2,NULL),(382,149,1,2,NULL),(383,150,1,2,NULL),(384,151,1,2,NULL),(385,149,5,2,NULL),(386,150,5,2,NULL),(387,151,5,2,NULL),(388,149,8,2,NULL),(389,150,8,2,NULL),(390,151,8,2,NULL),(391,149,24,2,NULL),(392,150,24,2,NULL),(393,151,24,2,NULL),(394,149,75,2,NULL),(395,150,75,2,NULL),(396,151,75,2,NULL),(397,149,77,2,NULL),(398,150,77,2,NULL),(399,151,77,2,NULL),(400,40,75,2,NULL),(401,41,75,2,NULL),(402,42,75,2,NULL),(403,155,15,2,NULL),(404,155,16,2,NULL),(405,155,54,2,NULL),(406,155,71,2,NULL),(407,156,15,2,NULL),(408,156,16,2,NULL),(409,156,54,2,NULL),(410,156,71,2,NULL),(411,173,15,2,NULL),(412,173,16,2,NULL),(413,173,54,2,NULL),(414,173,71,2,NULL),(415,174,15,2,NULL),(416,174,16,2,NULL),(417,174,54,2,NULL),(418,174,71,2,NULL),(419,148,19,2,NULL),(420,148,22,2,NULL),(421,148,55,2,NULL),(422,148,76,2,NULL),(423,40,77,2,NULL),(424,41,77,2,NULL),(425,42,77,2,NULL),(426,40,8,2,NULL),(427,41,8,2,NULL),(428,42,8,2,NULL),(429,40,1,2,NULL),(430,41,1,2,NULL),(431,42,1,2,NULL),(432,40,5,2,NULL),(433,1,2,2,NULL),(434,41,5,2,NULL),(435,6,3,2,NULL),(436,42,5,2,NULL),(437,6,11,2,NULL),(438,40,24,2,NULL),(439,7,3,2,NULL),(440,41,24,2,NULL),(441,7,11,2,NULL),(442,42,24,2,NULL),(443,9,3,2,NULL),(444,9,11,2,NULL),(445,30,15,2,NULL),(446,10,3,2,NULL),(447,30,16,2,NULL),(448,10,11,2,NULL),(449,30,54,2,NULL),(450,5,4,2,NULL),(451,30,71,2,NULL),(452,5,31,2,NULL),(453,31,15,2,NULL),(454,31,16,2,NULL),(455,31,54,2,NULL),(456,31,71,2,NULL),(457,32,15,2,NULL),(458,32,16,2,NULL),(459,32,54,2,NULL),(460,32,71,2,NULL),(461,33,15,2,NULL),(462,33,16,2,NULL),(463,33,54,2,NULL),(464,33,71,2,NULL),(465,39,19,2,NULL),(466,39,22,2,NULL),(467,39,55,2,NULL),(468,39,76,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(23,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.CAMERA'),(14,'android.permission.CHANGE_NETWORK_STATE'),(6,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_ACCOUNTS'),(20,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(17,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(22,'android.permission.READ_CONTACTS'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(12,'android.permission.WRITE_APN_SETTINGS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'http://www.hidroid.net/droid/bbs/forumdisplay.php?fid=34',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(39,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,45,7),(2,70,32),(3,73,33),(4,77,35),(5,85,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,5),(13,2,6),(14,3,1),(15,2,7),(16,3,4),(17,2,8),(18,4,1),(19,3,5),(20,4,4),(21,2,9),(22,3,6),(23,4,5),(24,2,10),(25,3,8),(26,4,6),(27,2,11),(28,3,9),(29,4,8),(30,3,10),(31,4,9),(32,4,10),(33,5,1),(34,5,4),(35,5,5),(36,5,6),(37,5,8),(38,5,9),(39,5,11),(40,5,12),(41,5,13),(42,5,14),(43,6,17),(44,6,16),(45,6,1),(46,6,2),(47,6,18),(48,6,4),(49,6,5),(50,6,6),(51,6,8),(52,6,9),(53,6,10),(54,6,13),(55,6,15),(56,7,1),(57,7,4),(58,7,5),(59,7,6),(60,7,8),(61,7,9),(62,7,10),(63,7,19),(64,7,21),(65,7,20),(66,7,23),(67,7,22),(68,7,25),(69,7,24);
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

-- Dump completed on 2015-10-12  3:29:22
