-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_103
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'DownloadManageServicer.ACTION_CONTROL'),(14,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(8,'android.intent.action.SCREEN_OFF'),(9,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(18,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(12,'android.service.wallpaper.WallpaperService'),(17,'com.android.service.START_AUDIO_SERVICE'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'com.safesys.viruskiller',33),(3,'com.gp.tiltmazes',7),(4,'com.livegame.wallpaperhali',3),(5,'com.gp.search',9),(6,'com.gp.jewels',5),(7,'com.ps.pushbox',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,1,'com.tutusw.fingerscanner.FingerprintActivity'),(3,1,'com.tutusw.fingerscanner.HelpActivity'),(4,1,'com.eguan.state.Dialog'),(5,1,'com.eguan.state.StateService'),(6,1,'com.tutusw.fingerscanner.SleepService'),(7,1,'com.eguan.state.Receiver'),(8,1,'com.tutusw.fingerscanner.BootReceiver'),(9,2,'com.safesys.viruskiller.MainActivity'),(10,2,'com.safesys.viruskiller.ShowTips'),(11,2,'com.safesys.viruskiller.UpdateService'),(12,2,'com.safesys.viruskiller.ScanningManagerService'),(13,2,'com.safesys.viruskiller.DownloadManageService'),(14,2,'com.safesys.viruskiller.Receiver'),(15,2,'com.safesys.viruskiller.ScanningReciever'),(16,2,'com.safesys.viruskiller.ScanPackageBroadcast'),(17,1,'com.tutusw.fingerscanner.SleepService$1'),(18,1,'com.eguan.state.Dialog$1'),(19,4,'com.livegame.wallpaperhali.MainActivity'),(20,3,'com.gp.tiltmazes.TiltMazesActivity'),(21,3,'com.gp.tiltmazes.SelectMazeActivity'),(22,4,'com.livegame.wallpaperhali.SettingsActivity'),(23,4,'com.livegame.wallpaperhali.SelectFolderActivity'),(24,3,'com.google.update.Dialog'),(25,3,'cn.domob.android.ads.DomobActivity'),(26,4,'com.google.ads.AdActivity'),(27,4,'com.vpon.adon.android.WebInApp'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(30,3,'com.google.update.UpdateService'),(31,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,3,'com.google.update.Receiver'),(33,4,'com.waps.OffersWebView'),(34,4,'com.google.update.Dialog'),(35,4,'com.livegame.wallpaperhali.WallpaperSlideshow'),(36,4,'com.google.update.UpdateService'),(37,5,'com.gp.search.IndexUI'),(38,4,'com.google.update.Receiver'),(39,5,'com.gp.search.LoadWeathreUI'),(40,2,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(41,5,'com.gp.search.WeatherInfoUI'),(42,1,'com.eguan.state.StateService$MyThread'),(43,5,'com.gp.search.IPSearchUI'),(44,5,'com.gp.search.TrainSearchUI'),(45,5,'com.gp.search.ExpressSearchUI'),(46,5,'com.gp.search.PhoneSearchUI'),(47,2,'com.safesys.viruskiller.MainActivity$2'),(48,5,'com.gp.search.BusUI'),(49,2,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(50,5,'com.gp.search.RPSearchUI'),(51,5,'com.gp.search.ScoreSearchUI'),(52,5,'com.gp.search.weather.proc.Splash'),(53,2,'com.safesys.viruskiller.MainActivity$UIReceiver'),(54,5,'com.gp.search.weather.proc.MainService'),(55,5,'com.waps.OffersWebView'),(56,5,'com.google.update.Dialog'),(57,5,'cn.domob.android.ads.DomobActivity'),(58,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,5,'com.gp.search.weather.func.AlarmService'),(60,5,'com.android.weather.service.LoadDataService'),(61,2,'com.ju6.a'),(62,6,'com.gp.jewels.Menu'),(63,5,'com.google.update.UpdateService'),(64,5,'com.google.update.Receiver'),(65,2,'com.safesys.viruskiller.ShowTips$1'),(66,6,'com.gp.jewels.Jewels'),(67,6,'cn.domob.android.ads.DomobActivity'),(68,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(70,6,'com.mt.airad.MultiAD'),(71,6,'com.google.update.Dialog'),(72,6,'com.google.update.UpdateService'),(73,6,'com.google.update.Receiver'),(74,7,'com.ps.pushbox.Pushbox'),(75,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(76,7,'com.google.update.Dialog'),(77,7,'com.google.update.UpdateService'),(78,7,'com.google.update.Receiver'),(79,4,'com.waps.q'),(80,4,'com.google.update.Dialog$1'),(81,4,'com.google.update.Dialog$2'),(82,4,'com.waps.o'),(83,3,'cn.domob.android.ads.i'),(84,4,'com.waps.ac'),(85,3,'cn.domob.android.ads.i$6'),(86,4,'com.waps.aa'),(87,3,'cn.domob.android.ads.DomobAdManager'),(88,4,'com.google.update.UpdateService$AA'),(89,4,'com.waps.AppConnect'),(90,3,'cn.domob.android.ads.DomobAdEngine$2'),(91,3,'com.google.update.Dialog$2'),(92,4,'com.livegame.wallpaperhali.MainActivity$1'),(93,3,'cn.domob.android.ads.DomobActionReceiver'),(94,3,'com.google.update.Dialog$1'),(95,4,'com.livegame.wallpaperhali.MainActivity$2'),(96,3,'com.google.update.UpdateService$AA'),(97,4,'com.waps.z'),(98,7,'com.google.update.Dialog$1'),(99,7,'com.ju6.a'),(100,7,'com.google.update.UpdateService$MyThread'),(101,7,'com.google.update.Dialog$2'),(102,6,'cn.domob.android.ads.e'),(103,6,'com.google.update.UpdateService$AA'),(104,6,'cn.domob.android.ads.o'),(105,6,'cn.domob.android.ads.o$5'),(106,6,'com.google.update.Dialog$2'),(107,6,'com.google.update.Dialog$1'),(108,6,'cn.domob.android.a.a$a'),(109,6,'cn.domob.android.ads.DomobAdManager'),(110,6,'com.mt.airad.IIIIlllIlllIIIII'),(111,6,'cn.domob.android.ads.g$1'),(112,5,'com.waps.q'),(113,5,'com.google.update.Dialog$2'),(114,5,'com.google.update.UpdateService$AA'),(115,5,'com.gp.search.weather.func.AlarmHelper'),(116,5,'cn.domob.android.ads.i$6'),(117,5,'com.waps.ac'),(118,5,'cn.domob.android.ads.DomobAdManager'),(119,5,'com.waps.AppConnect'),(120,5,'cn.domob.android.ads.DomobAdEngine$2'),(121,5,'cn.domob.android.ads.DomobActionReceiver'),(122,5,'com.waps.aa'),(123,5,'com.google.update.Dialog$1'),(124,5,'com.waps.z'),(125,5,'com.waps.o'),(126,5,'cn.domob.android.ads.i'),(127,5,'com.gp.search.control.MenuContorl$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'TYPEdsada'),(2,4,'MSG'),(3,11,'SAFE_PID'),(4,12,'notification_record'),(5,11,'SAFE_START'),(6,12,'state'),(7,10,'MM'),(8,30,'shouldEnableBottomBar'),(9,28,'Adwo_PID'),(10,32,'USER_ID'),(11,32,'WAPS_ID'),(12,19,'WAPS_ID'),(13,35,'ST_START_DELAY'),(14,32,'UrlPath'),(15,32,'APP_ID'),(16,19,'APP_ID'),(17,27,'overlayTitle'),(18,30,'overlayTransition'),(19,32,'ACTIVITY_FLAG'),(20,33,'MSG'),(21,32,'Offers_URL'),(22,28,'isTestMode'),(23,25,'actType'),(24,23,'MSG'),(25,27,'url'),(26,25,'appName'),(27,27,'shouldEnableBottomBar'),(28,18,'ball.y'),(29,32,'offers_webview_tag'),(30,27,'transitionTime'),(31,32,'Notify_Id'),(32,30,'overlayTitle'),(33,33,'TYPEdsada'),(34,30,'shouldMakeOverlayTransparent'),(35,30,'shouldShowBottomBar'),(36,26,'url'),(37,29,'DOMOB_TEST_MODE'),(38,32,'URL_PARAMS'),(39,27,'DOMOB_TEST_MODE'),(40,30,'shouldShowTitlebar'),(41,18,'map.id'),(42,32,'URL'),(43,27,'shouldShowTitlebar'),(44,27,'overlayTransition'),(45,29,'DOMOB_PID'),(46,27,'DOMOB_PID'),(47,29,'DOMOB_ALLOW_LOCATION'),(48,27,'DOMOB_ALLOW_LOCATION'),(49,32,'Notify_Url_Params'),(50,27,'shouldMakeOverlayTransparent'),(51,27,'shouldResizeOverlay'),(52,18,'map.goals'),(53,29,'ST_MY_PID'),(54,18,'ball.x'),(55,32,'CLIENT_PACKAGE'),(56,19,'CLIENT_PACKAGE'),(57,25,'appId'),(58,23,'TYPEdsada'),(59,35,'ST_MY_PID'),(60,18,'stepcount'),(61,27,'shouldShowBottomBar'),(62,30,'url'),(63,32,'SHWO_FLAG'),(64,30,'transitionTime'),(65,72,'ST_MY_PID'),(66,32,'WAPS_PID'),(67,71,'TYPEdsada'),(68,19,'WAPS_PID'),(69,26,'adWidth'),(70,32,'isFinshClose'),(71,32,'DEVICE_ID'),(72,19,'DEVICE_ID'),(73,20,'folder'),(74,29,'ST_START_DELAY'),(75,30,'shouldResizeOverlay'),(76,70,'shouldShowBottomBar'),(77,72,'ST_START_DELAY'),(78,70,'overlayTitle'),(79,70,'shouldEnableBottomBar'),(80,70,'transitionTime'),(81,70,'shouldShowTitlebar'),(82,70,'overlayTransition'),(83,71,'MSG'),(84,70,'shouldMakeOverlayTransparent'),(85,70,'shouldResizeOverlay'),(86,70,'url'),(87,64,'shouldEnableBottomBar'),(88,64,'transitionTime'),(89,64,'overlayTransition'),(90,63,'transitionTime'),(91,63,'shouldShowBottomBar'),(92,62,'appId'),(93,63,'shouldResizeOverlay'),(94,63,'url'),(95,62,'appName'),(96,64,'shouldShowBottomBar'),(97,64,'shouldResizeOverlay'),(98,58,'mode'),(99,61,'mode'),(100,63,'overlayTitle'),(101,63,'shouldShowTitlebar'),(102,64,'FSAd'),(103,66,'TYPEdsada'),(104,66,'MSG'),(105,63,'overlayTransition'),(106,65,'adID'),(107,64,'shouldMakeOverlayTransparent'),(108,65,'adURL'),(109,64,'overlayTitle'),(110,63,'shouldEnableBottomBar'),(111,64,'DOMOB_ALLOW_LOCATION'),(112,67,'DOMOB_ALLOW_LOCATION'),(113,63,'DOMOB_ALLOW_LOCATION'),(114,58,'DOMOB_ALLOW_LOCATION'),(115,61,'DOMOB_ALLOW_LOCATION'),(116,64,'DOMOB_TEST_MODE'),(117,67,'DOMOB_TEST_MODE'),(118,63,'DOMOB_TEST_MODE'),(119,58,'DOMOB_TEST_MODE'),(120,61,'DOMOB_TEST_MODE'),(121,67,'ST_START_DELAY'),(122,67,'ST_MY_PID'),(123,62,'actType'),(124,64,'DOMOB_PID'),(125,67,'DOMOB_PID'),(126,63,'DOMOB_PID'),(127,58,'DOMOB_PID'),(128,61,'DOMOB_PID'),(129,64,'shouldShowTitlebar'),(130,63,'shouldMakeOverlayTransparent'),(131,54,'appName'),(132,52,'UrlPath'),(133,51,'DOMOB_PID'),(134,59,'DOMOB_PID'),(135,55,'DOMOB_PID'),(136,52,'WAPS_ID'),(137,48,'WAPS_ID'),(138,36,'WAPS_ID'),(139,52,'Offers_URL'),(140,54,'appId'),(141,55,'shouldMakeOverlayTransparent'),(142,52,'URL'),(143,55,'overlayTitle'),(144,52,'WAPS_PID'),(145,48,'WAPS_PID'),(146,36,'WAPS_PID'),(147,55,'overlayTransition'),(148,52,'SHWO_FLAG'),(149,52,'Notify_Url_Params'),(150,55,'transitionTime'),(151,59,'ST_MY_PID'),(152,54,'actType'),(153,53,'MSG'),(154,55,'shouldShowBottomBar'),(155,52,'APP_ID'),(156,48,'APP_ID'),(157,36,'APP_ID'),(158,55,'url'),(159,52,'offers_webview_tag'),(160,55,'shouldShowTitlebar'),(161,52,'DEVICE_ID'),(162,48,'DEVICE_ID'),(163,36,'DEVICE_ID'),(164,55,'shouldResizeOverlay'),(165,59,'ST_START_DELAY'),(166,52,'CLIENT_PACKAGE'),(167,48,'CLIENT_PACKAGE'),(168,36,'CLIENT_PACKAGE'),(169,53,'TYPEdsada'),(170,51,'DOMOB_ALLOW_LOCATION'),(171,59,'DOMOB_ALLOW_LOCATION'),(172,55,'DOMOB_ALLOW_LOCATION'),(173,52,'isFinshClose'),(174,55,'shouldEnableBottomBar'),(175,52,'Notify_Id'),(176,52,'ACTIVITY_FLAG'),(177,51,'DOMOB_TEST_MODE'),(178,59,'DOMOB_TEST_MODE'),(179,55,'DOMOB_TEST_MODE'),(180,52,'URL_PARAMS'),(181,52,'USER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,20,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,22,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'s',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'s',1,23,NULL),(35,36,'s',0,NULL,NULL),(36,37,'a',1,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,39,'a',1,NULL,NULL),(39,40,'r',1,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,43,'a',1,NULL,NULL),(42,44,'a',1,NULL,NULL),(43,45,'a',1,NULL,NULL),(44,46,'a',1,NULL,NULL),(45,48,'a',1,NULL,NULL),(46,49,'r',1,NULL,NULL),(47,50,'a',1,NULL,NULL),(48,51,'a',1,NULL,NULL),(49,52,'a',0,NULL,NULL),(50,53,'r',1,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'s',0,NULL,NULL),(57,60,'s',1,NULL,NULL),(58,62,'a',1,NULL,NULL),(59,63,'s',0,NULL,NULL),(60,64,'r',1,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'a',0,NULL,NULL),(65,70,'a',0,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'s',0,NULL,NULL),(68,73,'r',1,NULL,NULL),(69,74,'a',1,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,76,'a',0,NULL,NULL),(72,77,'s',0,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,79,'r',1,NULL,NULL),(75,93,'r',1,NULL,NULL),(76,102,'r',1,NULL,NULL),(77,112,'r',1,NULL,NULL),(78,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,5),(3,3,4),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,8),(10,10,1),(11,11,5),(12,12,5),(13,13,12),(14,14,9),(15,15,9),(16,16,14),(17,17,15),(18,17,9),(19,18,9),(20,19,11),(21,20,10),(22,21,9),(23,22,33),(24,23,35),(25,24,33),(26,25,32),(27,26,29),(28,26,27),(29,27,22),(30,27,32),(31,28,29),(32,28,27),(33,29,32),(34,30,32),(35,31,31),(36,32,37),(37,33,27),(38,33,29),(39,34,29),(40,35,35),(41,36,32),(42,37,19),(43,38,27),(44,38,29),(45,39,29),(46,40,35),(47,41,23),(48,42,19),(49,43,23),(50,44,19),(51,45,29),(52,46,73),(53,47,72),(54,48,32),(55,49,18),(56,50,71),(57,51,72),(58,52,72),(59,53,72),(60,54,71),(61,55,67),(62,56,64),(63,56,63),(64,56,67),(65,56,58),(66,56,61),(67,57,67),(68,58,67),(69,59,63),(70,59,64),(71,59,58),(72,59,61),(73,59,67),(74,60,61),(75,61,66),(76,62,68),(77,63,66),(78,64,61),(79,64,58),(80,64,64),(81,64,63),(82,64,67),(83,65,58),(84,65,63),(85,65,61),(86,65,64),(87,65,67),(88,66,65),(89,67,58),(90,67,61),(91,67,63),(92,67,64),(93,67,67),(94,68,52),(95,69,53),(96,70,52),(97,71,59),(98,72,51),(99,73,59),(100,73,55),(101,74,52),(102,75,51),(103,75,55),(104,75,59),(105,76,51),(106,77,59),(107,78,36),(108,78,48),(109,79,51),(110,79,55),(111,79,59),(112,80,60),(113,81,52),(114,82,53),(115,83,36),(116,84,52),(117,85,52),(118,86,51),(119,86,55),(120,86,59),(121,87,59),(122,88,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,5,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(3,18,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(4,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(5,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(6,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(7,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(8,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(9,8,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(10,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(11,5,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(12,42,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(13,12,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(14,9,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(15,47,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(16,14,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,12,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(18,9,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(19,61,'<com.ju6.a: boolean b()>',178,'p',NULL),(20,65,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,9,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(22,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(24,81,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,82,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,83,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(27,84,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(28,85,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(30,86,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,38,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,87,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(34,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(35,88,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(36,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(37,89,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(38,90,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(39,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(40,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,92,'<com.livegame.wallpaperhali.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(43,94,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,95,'<com.livegame.wallpaperhali.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(45,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(46,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,77,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,97,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,20,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(50,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,99,'<com.ju6.a: boolean b()>',178,'p',NULL),(52,100,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(53,77,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(54,101,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(55,103,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(56,104,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(57,72,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(58,72,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(59,105,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(60,66,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(61,106,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(62,73,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(63,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,108,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(65,109,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(66,110,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(67,111,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(68,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(69,113,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(70,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(71,114,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(72,115,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(73,116,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(74,117,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(75,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(76,54,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(77,63,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(78,119,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(79,120,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(80,64,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(81,122,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(82,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(83,37,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(84,124,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(85,125,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(86,126,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(87,63,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(88,127,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,10),(2,9,11),(3,15,1),(4,16,1),(5,17,13),(6,18,11),(7,21,16),(8,22,1),(9,23,1),(10,25,1),(11,26,1),(12,29,10),(13,30,11),(14,31,11),(15,33,11),(16,35,1),(17,37,1),(18,38,11),(19,39,11),(20,40,11),(21,42,11),(22,47,1),(23,49,1),(24,56,10),(25,57,18),(26,58,1),(27,60,1),(28,62,1),(29,63,1),(30,65,11),(31,68,1),(32,69,1),(33,70,1),(34,71,1),(35,74,10),(36,75,1),(37,76,1),(38,77,11),(39,82,11),(40,84,11),(41,85,11),(42,86,11),(43,87,11),(44,89,10),(45,91,1),(46,92,1),(47,93,11),(48,95,10),(49,97,1),(50,98,1),(51,99,1),(52,100,1),(53,102,11),(54,104,11),(55,105,11),(56,106,11),(57,107,11),(58,116,1),(59,117,1),(60,127,11),(61,128,11),(62,129,11);
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
INSERT INTO `ICategories` VALUES (1,15,2),(2,16,1),(3,22,1),(4,23,2),(5,25,1),(6,26,2),(7,35,1),(8,37,2),(9,47,1),(10,49,2),(11,58,1),(12,60,2),(13,62,2),(14,63,1),(15,68,1),(16,69,2),(17,70,1),(18,71,2),(19,75,1),(20,76,2),(21,91,1),(22,92,2),(23,97,1),(24,98,2),(25,99,2),(26,100,1),(27,116,1),(28,117,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/eguan/state/StateService'),(2,2,'com/eguan/state/Dialog'),(3,3,'com/eguan/state/Dialog'),(4,5,'com/tutusw/fingerscanner/SleepService'),(5,6,'com/tutusw/fingerscanner/SleepService'),(6,7,'com/tutusw/fingerscanner/FingerprintActivity'),(7,8,'com/tutusw/fingerscanner/HelpActivity'),(8,10,'com/tutusw/fingerscanner/SleepService'),(9,11,'com/tutusw/fingerscanner/SleepService'),(10,12,'com/eguan/state/Dialog'),(11,13,'com/eguan/state/Dialog'),(12,14,'com/safesys/viruskiller/MainActivity'),(13,19,'com/safesys/viruskiller/UpdateService'),(14,20,'com/safesys/viruskiller/ScanningManagerService'),(15,24,'com/safesys/viruskiller/DownloadManageService'),(16,27,'com/google/update/Dialog'),(17,28,'com/google/update/Dialog'),(18,32,'NULL-CONSTANT'),(19,41,'com/waps/OffersWebView'),(20,43,'com/waps/OffersWebView'),(21,44,'com/google/update/UpdateService'),(22,45,'com/google/update/UpdateService'),(23,46,'com/google/update/Dialog'),(24,48,'com/google/update/Dialog'),(25,50,'(.*)'),(26,51,'com/waps/OffersWebView'),(27,52,'com/google/update/Dialog'),(28,53,'com/google/update/Dialog'),(29,54,'com/google/update/Dialog'),(30,55,'com/google/update/Dialog'),(31,59,'com/livegame/wallpaperhali/SettingsActivity'),(32,61,'com/google/update/UpdateService'),(33,64,'com/google/update/Dialog'),(34,67,'com/gp/tiltmazes/SelectMazeActivity'),(35,66,'com/google/update/Dialog'),(36,72,'com/google/update/Dialog'),(37,73,'com/google/update/Dialog'),(38,78,'com/google/update/Dialog'),(39,79,'com/google/update/Dialog'),(40,80,'com/google/update/Dialog'),(41,81,'com/google/update/Dialog'),(42,88,'com/gp/jewels/Menu'),(43,90,'com/google/update/UpdateService'),(44,94,'(.*)'),(45,101,'com/gp/search/weather/func/AlarmService'),(46,108,'NULL-CONSTANT'),(47,109,'com.android.mms.ui.ComposeMessageActivity'),(48,110,'com/google/update/Dialog'),(49,111,'com/google/update/Dialog'),(50,112,'com/waps/OffersWebView'),(51,113,'com/google/update/UpdateService'),(52,114,'com/waps/OffersWebView'),(53,115,'com/waps/OffersWebView'),(54,118,'com/gp/search/RPSearchUI'),(55,120,'com/gp/search/LoadWeathreUI'),(56,121,'com/gp/search/PhoneSearchUI'),(57,122,'com/gp/search/ScoreSearchUI'),(58,123,'com/gp/search/IPSearchUI'),(59,124,'com/gp/search/BusUI'),(60,125,'com/gp/search/TrainSearchUI'),(61,126,'com/gp/search/ExpressSearchUI'),(62,130,'com/google/update/Dialog'),(63,131,'com/google/update/Dialog'),(64,132,'com/gp/search/weather/proc/MainService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,18,2),(3,21,3),(4,30,5),(5,31,6),(6,33,7),(7,38,8),(8,39,9),(9,40,10),(10,42,11),(11,65,13),(12,77,15),(13,82,16),(14,84,17),(15,85,18),(16,86,19),(17,87,20),(18,93,23),(19,102,24),(20,104,25),(21,105,26),(22,106,27),(23,107,28),(24,127,30),(25,128,31),(26,129,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'MSG'),(2,2,'TYPEdsada'),(3,3,'TYPEdsada'),(4,12,'MSG'),(5,12,'TYPEdsada'),(6,13,'TYPEdsada'),(7,17,'cmd'),(8,20,'state'),(9,27,'MSG'),(10,27,'TYPEdsada'),(11,28,'TYPEdsada'),(12,41,'UrlPath'),(13,41,'ACTIVITY_FLAG'),(14,41,'isFinshClose'),(15,41,'offers_webview_tag'),(16,43,'Notify_Url_Params'),(17,43,'UrlPath'),(18,43,'ACTIVITY_FLAG'),(19,43,'isFinshClose'),(20,43,'offers_webview_tag'),(21,46,'TYPEdsada'),(22,48,'MSG'),(23,48,'TYPEdsada'),(24,51,'USER_ID'),(25,51,'CLIENT_PACKAGE'),(26,51,'Offers_URL'),(27,51,'offers_webview_tag'),(28,51,'URL_PARAMS'),(29,52,'TYPEdsada'),(30,53,'MSG'),(31,53,'TYPEdsada'),(32,54,'MSG'),(33,54,'TYPEdsada'),(34,55,'TYPEdsada'),(35,57,'android.live_wallpaper.package'),(36,57,'android.live_wallpaper.settings'),(37,64,'TYPEdsada'),(38,66,'MSG'),(39,66,'TYPEdsada'),(40,72,'TYPEdsada'),(41,73,'MSG'),(42,73,'TYPEdsada'),(43,78,'MSG'),(44,78,'TYPEdsada'),(45,79,'TYPEdsada'),(46,80,'MSG'),(47,80,'TYPEdsada'),(48,81,'TYPEdsada'),(49,109,'sms_body'),(50,109,'address'),(51,110,'MSG'),(52,110,'TYPEdsada'),(53,111,'TYPEdsada'),(54,112,'USER_ID'),(55,112,'CLIENT_PACKAGE'),(56,112,'Offers_URL'),(57,112,'offers_webview_tag'),(58,112,'URL_PARAMS'),(59,114,'UrlPath'),(60,114,'ACTIVITY_FLAG'),(61,114,'isFinshClose'),(62,114,'offers_webview_tag'),(63,115,'Notify_Url_Params'),(64,115,'UrlPath'),(65,115,'ACTIVITY_FLAG'),(66,115,'isFinshClose'),(67,115,'offers_webview_tag'),(68,130,'MSG'),(69,130,'TYPEdsada'),(70,131,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,3),(11,7,7),(12,7,6),(13,7,5),(14,8,8),(15,8,9),(16,9,9),(17,9,8),(18,10,8),(19,10,9),(20,12,1),(21,11,1),(22,13,4),(23,13,3),(24,13,2),(25,14,12),(26,15,1),(27,16,2),(28,16,3),(29,16,4),(30,19,13),(31,26,14),(32,28,15),(33,29,17),(34,30,1),(35,31,4),(36,31,3),(37,31,2),(38,32,4),(39,32,3),(40,32,2),(41,33,1),(42,34,2),(43,34,4),(44,34,3),(45,35,5),(46,36,5),(47,37,5),(48,38,5),(49,39,5),(50,40,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,12,1),(4,11,1),(5,15,1),(6,17,1),(7,18,1),(8,20,1),(9,21,1),(10,22,1),(11,23,1),(12,24,1),(13,25,1),(14,27,1),(15,29,3),(16,30,1),(17,33,1);
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
INSERT INTO `IFData` VALUES (1,7,'package',NULL,NULL,NULL,NULL,NULL),(2,35,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,39,'package',NULL,NULL,NULL,NULL,NULL),(7,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,30,'application','vnd.android.package-archive'),(2,33,'application','vnd.android.package-archive'),(3,38,'application','vnd.android.package-archive'),(4,39,'application','vnd.android.package-archive'),(5,40,'application','vnd.android.package-archive'),(6,42,'application','vnd.android.package-archive'),(7,65,'application','vnd.android.package-archive'),(8,82,'application','vnd.android.package-archive'),(9,84,'application','vnd.android.package-archive'),(10,85,'application','vnd.android.package-archive'),(11,86,'application','vnd.android.package-archive'),(12,87,'application','vnd.android.package-archive'),(13,102,'application','vnd.android.package-archive'),(14,104,'application','vnd.android.package-archive'),(15,105,'application','vnd.android.package-archive'),(16,106,'application','vnd.android.package-archive'),(17,107,'application','vnd.android.package-archive'),(18,127,'application','vnd.android.package-archive'),(19,128,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.fingerscanner'),(2,2,'com.tutusw.fingerscanner'),(3,3,'com.tutusw.fingerscanner'),(4,5,'com.tutusw.fingerscanner'),(5,6,'com.tutusw.fingerscanner'),(6,7,'com.tutusw.fingerscanner'),(7,8,'com.tutusw.fingerscanner'),(8,10,'com.tutusw.fingerscanner'),(9,11,'com.tutusw.fingerscanner'),(10,12,'com.tutusw.fingerscanner'),(11,13,'com.tutusw.fingerscanner'),(12,14,'com.safesys.viruskiller'),(13,15,'com.tutusw.fingerscanner'),(14,16,'com.tutusw.fingerscanner'),(15,19,'com.safesys.viruskiller'),(16,20,'com.safesys.viruskiller'),(17,22,'com.noshufou.android.su'),(18,23,'com.noshufou.android.su'),(19,24,'com.safesys.viruskiller'),(20,25,'com.noshufou.android.su'),(21,26,'com.noshufou.android.su'),(22,27,'com.livegame.wallpaperhali'),(23,28,'com.livegame.wallpaperhali'),(24,32,'NULL-CONSTANT'),(25,35,'(.*)'),(26,37,'(.*)'),(27,41,'com.livegame.wallpaperhali'),(28,43,'com.livegame.wallpaperhali'),(29,44,'com.gp.tiltmazes'),(30,45,'com.livegame.wallpaperhali'),(31,46,'com.gp.tiltmazes'),(32,47,'com.livegame.wallpaperhali'),(33,49,'com.livegame.wallpaperhali'),(34,48,'com.gp.tiltmazes'),(35,50,'(.*)'),(36,51,'com.livegame.wallpaperhali'),(37,52,'com.gp.tiltmazes'),(38,53,'com.gp.tiltmazes'),(39,54,'com.livegame.wallpaperhali'),(40,55,'com.livegame.wallpaperhali'),(41,58,'com.noshufou.android.su'),(42,59,'com.livegame.wallpaperhali'),(43,60,'com.noshufou.android.su'),(44,61,'com.ps.pushbox'),(45,62,'com.gp.tiltmazes'),(46,63,'com.gp.tiltmazes'),(47,64,'com.ps.pushbox'),(48,66,'com.ps.pushbox'),(49,67,'com.gp.tiltmazes'),(50,68,'com.noshufou.android.su'),(51,69,'com.noshufou.android.su'),(52,70,'com.ps.pushbox'),(53,71,'com.ps.pushbox'),(54,72,'com.ps.pushbox'),(55,73,'com.ps.pushbox'),(56,75,'com.gp.jewels'),(57,76,'com.gp.jewels'),(58,78,'com.gp.jewels'),(59,79,'com.gp.jewels'),(60,80,'com.gp.jewels'),(61,81,'com.gp.jewels'),(62,88,'com.gp.jewels'),(63,90,'com.gp.jewels'),(64,91,'com.noshufou.android.su'),(65,92,'com.noshufou.android.su'),(66,94,'(.*)'),(67,97,'(.*)'),(68,98,'(.*)'),(69,99,'com.gp.search'),(70,100,'com.gp.search'),(71,101,'com.gp.search'),(72,108,'NULL-CONSTANT'),(73,109,'com.android.mms'),(74,110,'com.gp.search'),(75,111,'com.gp.search'),(76,112,'com.gp.search'),(77,113,'com.gp.search'),(78,114,'com.gp.search'),(79,115,'com.gp.search'),(80,116,'com.noshufou.android.su'),(81,117,'com.noshufou.android.su'),(82,118,'com.gp.search'),(83,120,'com.gp.search'),(84,121,'com.gp.search'),(85,122,'com.gp.search'),(86,123,'com.gp.search'),(87,124,'com.gp.search'),(88,125,'com.gp.search'),(89,126,'com.gp.search'),(90,130,'com.gp.search'),(91,131,'com.gp.search'),(92,132,'com.gp.search');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,14,0),(6,15,0),(7,16,0),(8,8,0),(9,17,0),(10,7,0),(11,19,0),(12,18,0),(13,31,0),(14,34,0),(15,36,0),(16,37,0),(17,38,0),(18,40,0),(19,39,0),(20,41,0),(21,42,0),(22,43,0),(23,44,0),(24,45,0),(25,47,0),(26,46,0),(27,48,0),(28,50,0),(29,57,0),(30,58,0),(31,60,0),(32,68,0),(33,69,0),(34,73,0),(35,74,0),(36,75,0),(37,76,0),(38,76,0),(39,77,0),(40,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,1,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,11,0,0),(14,13,0,0),(15,12,1,0),(16,12,1,0),(17,14,1,0),(18,15,1,0),(19,16,0,0),(20,17,0,0),(21,18,1,0),(22,20,1,0),(23,20,1,0),(24,21,0,0),(25,22,1,0),(26,22,1,0),(27,23,0,0),(28,23,0,0),(29,24,1,0),(30,25,1,0),(31,26,1,0),(32,27,0,0),(33,28,1,0),(34,29,1,0),(35,29,1,0),(36,28,1,0),(37,29,1,0),(38,28,1,0),(39,28,1,0),(40,28,1,0),(41,30,0,0),(42,28,1,0),(43,30,0,0),(44,31,0,0),(45,32,0,0),(46,34,0,0),(47,35,1,0),(48,34,0,0),(49,35,1,0),(50,36,0,0),(51,37,0,0),(52,39,0,0),(53,39,0,0),(54,40,0,0),(55,40,0,0),(56,41,1,0),(57,42,1,0),(58,43,1,0),(59,44,0,0),(60,43,1,0),(61,46,0,0),(62,45,1,0),(63,45,1,0),(64,47,0,0),(65,48,1,0),(66,47,0,0),(67,49,0,0),(68,50,1,0),(69,50,1,0),(70,52,1,0),(71,52,1,0),(72,53,0,0),(73,53,0,0),(74,54,1,0),(75,55,1,0),(76,55,1,0),(77,56,1,0),(78,57,0,0),(79,57,0,0),(80,58,0,0),(81,58,0,0),(82,59,1,0),(83,59,1,0),(84,59,1,0),(85,59,1,0),(86,59,1,0),(87,59,1,0),(88,60,0,0),(89,61,1,0),(90,62,0,0),(91,63,1,0),(92,63,1,0),(93,66,1,0),(94,68,0,0),(95,69,1,0),(96,70,1,0),(97,70,1,0),(98,70,1,0),(99,71,1,0),(100,71,1,0),(101,72,0,0),(102,73,1,0),(103,73,1,0),(104,73,1,0),(105,73,1,0),(106,73,1,0),(107,73,1,0),(108,74,0,0),(109,76,0,0),(110,77,0,0),(111,77,0,0),(112,78,0,0),(113,80,0,0),(114,81,0,0),(115,81,0,0),(116,82,1,0),(117,82,1,0),(118,83,0,0),(119,83,1,0),(120,83,0,0),(121,83,0,0),(122,83,0,0),(123,83,0,0),(124,83,0,0),(125,83,0,0),(126,83,0,0),(127,84,1,0),(128,85,1,0),(129,86,1,0),(130,87,0,0),(131,87,0,0),(132,88,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(22,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(23,'android.permission.BIND_WALLPAPER'),(13,'android.permission.CHANGE_NETWORK_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.GET_PACKAGE_SIZE'),(20,'android.permission.GET_TASKS'),(25,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(9,'android.permission.READ_LOGS'),(2,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(24,'android.permission.RECORD_AUDIO'),(6,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(2,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(3,'package','(.*)',NULL,NULL,NULL,NULL),(4,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(8,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(17,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(25,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,4),(2,33,12),(3,51,14),(4,64,21),(5,65,22),(6,75,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,16),(9,2,2),(10,2,4),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,2,14),(19,2,15),(20,3,17),(21,3,16),(22,3,19),(23,4,16),(24,3,2),(25,4,2),(26,3,18),(27,4,18),(28,4,3),(29,3,3),(30,4,4),(31,3,4),(32,3,5),(33,4,20),(34,4,5),(35,3,6),(36,4,7),(37,3,7),(38,4,8),(39,3,8),(40,3,15),(41,4,11),(42,5,2),(43,5,3),(44,5,4),(45,5,5),(46,5,7),(47,5,8),(48,5,17),(49,5,16),(50,5,19),(51,5,18),(52,5,21),(53,5,20),(54,5,22),(55,6,2),(56,6,3),(57,6,4),(58,6,5),(59,6,6),(60,6,7),(61,6,8),(62,6,11),(63,6,15),(64,6,17),(65,6,16),(66,6,19),(67,6,18),(68,6,24),(69,7,2),(70,7,3),(71,7,4),(72,7,5),(73,7,7),(74,7,8),(75,7,10),(76,7,11),(77,7,12),(78,7,17),(79,7,16),(80,7,19),(81,7,18),(82,7,25);
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

-- Dump completed on 2015-10-09  0:38:01
