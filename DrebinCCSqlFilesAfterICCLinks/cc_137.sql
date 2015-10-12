-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_137
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'SQUARE'),(22,'Speedup.intent.action.refreshservice'),(27,'Speedup.intent.action.temp'),(9,'Speedup.intent.action.updatewidget'),(18,'Taskbar.QuickList.Added'),(13,'android.app.action.ADD_DEVICE_ADMIN'),(3,'android.app.action.DEVICE_ADMIN_ENABLED'),(7,'android.appwidget.action.APPWIDGET_CONFIGURE'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(26,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CALL_BUTTON'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.PACKAGE_CHANGED'),(21,'android.intent.action.PACKAGE_REMOVED'),(23,'android.intent.action.SCREEN_OFF'),(24,'android.intent.action.SCREEN_ON'),(4,'android.intent.action.SIG_STR'),(17,'android.intent.action.VIEW'),(16,'android.media.action.IMAGE_CAPTURE'),(25,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(10,'android.service.wallpaper.WallpaperService'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(14,'com.atools.swKey.resumeAutoHide'),(15,'com.atools.swkey.show');
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
INSERT INTO `Applications` VALUES (1,'com.atools.swkey',1),(2,'com.ps.ddp',15),(3,'com.tutusw.phonespeedup',14),(4,'com.ps.square',6),(5,'com.wqx.blackjack',15),(6,'com.livegame.wallpapershuizeguan',2),(7,'com.gp.jewels',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.atools.swkey.swkey'),(2,1,'com.atools.swkey.ManageOrder'),(3,1,'com.atools.battery.ShowTips'),(4,1,'com.atools.swkey.SWKeyService'),(5,2,'com.ps.ddp.MainActivity'),(6,1,'com.atools.battery.UpdateService'),(7,1,'com.atools.swkey.SWKeyLauncher'),(8,3,'com.tutusw.phonespeedup.IntroActivity'),(9,2,'com.ps.ddp.GameActivity'),(10,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,3,'com.tutusw.phonespeedup.InfoActivity'),(12,2,'com.google.update.Dialog'),(13,1,'com.atools.swkey.adminHelper$adminReciever'),(14,2,'com.google.update.UpdateService'),(15,3,'com.google.ssearch.Dialog'),(16,2,'com.google.update.Receiver'),(17,3,'com.tutusw.phonespeedup.Home'),(18,3,'com.tutusw.phonespeedup.PerflockActivity'),(19,1,'com.atools.battery.Receiver'),(20,3,'com.tutusw.phonespeedup.ProfilesActivity'),(21,3,'com.tutusw.phonespeedup.ProfileEditActivity'),(22,3,'com.tutusw.phonespeedup.AdvancedActivity'),(23,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,5,'com.wqx.blackjack.Blackjack'),(26,3,'com.tutusw.phonespeedup.AboutActivity'),(27,4,'com.ps.square.Square'),(28,3,'com.tutusw.phonespeedup.StresstestActivity'),(29,3,'com.tutusw.phonespeedup.Setcpu'),(30,5,'com.wqx.blackjack.Card'),(31,4,'com.ps.square.elos.Elos'),(32,3,'com.tutusw.phonespeedup.WidgetConfigActivity'),(33,5,'com.google.update.Dialog'),(34,5,'com.waps.OffersWebView'),(35,3,'com.google.ssearch.SearchService'),(36,5,'com.google.update.UpdateService'),(37,4,'com.ps.square.eloscomplex.ElosComplex'),(38,3,'com.tutusw.phonespeedup.StartupService'),(39,5,'com.google.update.Receiver'),(40,3,'com.tutusw.phonespeedup.ProfilesService'),(41,3,'com.tutusw.phonespeedup.WidgetService'),(42,4,'com.google.update.Dialog'),(43,3,'com.google.ssearch.Receiver'),(44,4,'com.google.update.UpdateService'),(45,4,'com.google.update.Receiver'),(46,3,'com.tutusw.phonespeedup.StartupReceiver'),(47,3,'com.tutusw.phonespeedup.Widget'),(48,6,'com.livegame.wallpapershuizeguan.MainActivity'),(49,6,'com.livegame.wallpapershuizeguan.SettingsActivity'),(50,6,'com.livegame.wallpapershuizeguan.SelectFolderActivity'),(51,6,'com.google.ads.AdActivity'),(52,6,'com.vpon.adon.android.WebInApp'),(53,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(54,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,6,'com.waps.OffersWebView'),(56,6,'com.google.update.Dialog'),(57,6,'com.livegame.wallpapershuizeguan.WallpaperSlideshow'),(58,6,'com.google.update.UpdateService'),(59,6,'com.google.update.Receiver'),(60,7,'com.gp.jewels.Menu'),(61,7,'com.gp.jewels.Jewels'),(62,7,'cn.domob.android.ads.DomobActivity'),(63,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(65,7,'com.mt.airad.MultiAD'),(66,7,'com.google.update.Dialog'),(67,7,'com.waps.OffersWebView'),(68,7,'com.google.update.UpdateService'),(69,7,'com.google.update.Receiver'),(70,2,'com.google.update.Dialog$1'),(71,2,'com.google.update.Dialog$2'),(72,2,'com.google.update.UpdateService$AA'),(73,1,'com.atools.swkey.SWKeyView$closeListener'),(74,4,'com.ps.square.Square$ItemClickListener'),(75,4,'com.google.update.UpdateService$MyThread'),(76,1,'com.atools.swkey.adminHelper'),(77,1,'com.atools.swkey.BetterPopupWindow$2'),(78,5,'com.google.update.UpdateService$AA'),(79,1,'com.atools.swkey.SWKeyService$ApplicationsIntentReceiver'),(80,1,'android.app.admin.DeviceAdminReceiver'),(81,4,'com.google.update.Dialog$1'),(82,1,'com.atools.swkey.SWKeyService$TaskBarIntentReceiver'),(83,1,'com.atools.swkey.BetterPopupWindow'),(84,5,'com.waps.o'),(85,1,'com.atools.battery.ShowTips$1'),(86,4,'com.ju6.a'),(87,4,'com.google.update.Dialog$2'),(88,5,'com.waps.z'),(89,5,'com.google.update.Dialog$2'),(90,3,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(91,5,'com.waps.ac'),(92,6,'com.waps.z'),(93,6,'com.google.update.Dialog$2'),(94,6,'com.livegame.wallpapershuizeguan.MainActivity$2'),(95,3,'com.tutusw.phonespeedup.WidgetService$1'),(96,6,'com.waps.q'),(97,5,'com.waps.aa'),(98,3,'com.tutusw.phonespeedup.ProfilesService$1'),(99,3,'android.appwidget.AppWidgetProvider'),(100,3,'com.tutusw.phonespeedup.Home$clicker'),(101,3,'com.google.ssearch.SearchService$MyThread'),(102,5,'com.google.update.Dialog$1'),(103,3,'com.google.ssearch.Dialog$1'),(104,6,'com.livegame.wallpapershuizeguan.MainActivity$1'),(105,6,'com.waps.AppConnect'),(106,6,'com.waps.ac'),(107,6,'com.waps.o'),(108,5,'com.waps.q'),(109,6,'com.waps.aa'),(110,6,'com.google.update.UpdateService$AA'),(111,6,'com.google.update.Dialog$1'),(112,7,'cn.domob.android.ads.e'),(113,7,'com.waps.ac'),(114,7,'cn.domob.android.ads.o$5'),(115,7,'com.waps.q'),(116,7,'com.google.update.Dialog$1'),(117,7,'cn.domob.android.ads.DomobAdManager'),(118,7,'com.google.update.UpdateService$AA'),(119,7,'com.google.update.Dialog$2'),(120,7,'cn.domob.android.a.a$a'),(121,7,'cn.domob.android.ads.g$1'),(122,7,'com.waps.z'),(123,7,'cn.domob.android.ads.o'),(124,7,'com.waps.o'),(125,7,'com.waps.aa'),(126,7,'com.mt.airad.IIIIlllIlllIIIII');
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'shouldShowBottomBar'),(2,10,'url'),(3,11,'TYPEdsada'),(4,10,'shouldResizeOverlay'),(5,14,'ST_MY_PID'),(6,10,'shouldShowTitlebar'),(7,10,'transitionTime'),(8,10,'shouldEnableBottomBar'),(9,10,'overlayTransition'),(10,10,'shouldMakeOverlayTransparent'),(11,24,'transitionTime'),(12,24,'overlayTransition'),(13,24,'shouldShowBottomBar'),(14,24,'url'),(15,11,'MSG'),(16,10,'overlayTitle'),(17,14,'ST_START_DELAY'),(18,34,'WAPS_PID'),(19,26,'WAPS_PID'),(20,26,'mMaxScore'),(21,23,'transitionTime'),(22,30,'mStartTime'),(23,34,'CLIENT_PACKAGE'),(24,24,'shouldResizeOverlay'),(25,26,'CLIENT_PACKAGE'),(26,24,'shouldShowTitlebar'),(27,34,'APP_ID'),(28,26,'APP_ID'),(29,44,'ST_START_DELAY'),(30,24,'overlayTitle'),(31,34,'SHWO_FLAG'),(32,44,'ST_MY_PID'),(33,24,'shouldMakeOverlayTransparent'),(34,26,'mWinCount'),(35,33,'TYPEdsada'),(36,34,'USER_ID'),(37,42,'TYPEdsada'),(38,26,'mStartTime'),(39,23,'shouldShowTitlebar'),(40,34,'Offers_URL'),(41,42,'MSG'),(42,34,'ACTIVITY_FLAG'),(43,6,'SAFE_START'),(44,26,'Blackjack'),(45,6,'SAFE_PID'),(46,24,'shouldEnableBottomBar'),(47,23,'url'),(48,23,'shouldEnableBottomBar'),(49,34,'URL_PARAMS'),(50,34,'isFinshClose'),(51,23,'overlayTransition'),(52,26,'mLoseCount'),(53,34,'Notify_Id'),(54,35,'ST_MY_PID'),(55,55,'APP_ID'),(56,3,'MM'),(57,48,'APP_ID'),(58,54,'shouldMakeOverlayTransparent'),(59,55,'URL'),(60,30,'mMaxScore'),(61,26,'mCurrentScore'),(62,34,'WAPS_ID'),(63,26,'WAPS_ID'),(64,26,'mMoney'),(65,52,'url'),(66,33,'MSG'),(67,23,'shouldMakeOverlayTransparent'),(68,34,'UrlPath'),(69,55,'UrlPath'),(70,54,'shouldResizeOverlay'),(71,53,'Adwo_PID'),(72,53,'isTestMode'),(73,55,'WAPS_PID'),(74,48,'WAPS_PID'),(75,55,'Notify_Url_Params'),(76,55,'SHWO_FLAG'),(77,54,'transitionTime'),(78,55,'USER_ID'),(79,55,'isFinshClose'),(80,54,'shouldShowBottomBar'),(81,52,'adWidth'),(82,56,'TYPEdsada'),(83,49,'folder'),(84,13,'TYPEdsada'),(85,54,'overlayTransition'),(86,32,'appWidgetId'),(87,56,'MSG'),(88,54,'overlayTitle'),(89,54,'shouldEnableBottomBar'),(90,34,'URL'),(91,30,'mMoney'),(92,21,'row_id'),(93,34,'offers_webview_tag'),(94,55,'CLIENT_PACKAGE'),(95,55,'Offers_URL'),(96,55,'URL_PARAMS'),(97,23,'shouldResizeOverlay'),(98,30,'mWinCount'),(99,23,'overlayTitle'),(100,35,'ST_START_DELAY'),(101,48,'CLIENT_PACKAGE'),(102,23,'shouldShowBottomBar'),(103,58,'ST_MY_PID'),(104,30,'mLoseCount'),(105,34,'Notify_Url_Params'),(106,30,'mCurrentScore'),(107,34,'DEVICE_ID'),(108,55,'WAPS_ID'),(109,26,'DEVICE_ID'),(110,48,'WAPS_ID'),(111,55,'ACTIVITY_FLAG'),(112,55,'Notify_Id'),(113,55,'DEVICE_ID'),(114,48,'DEVICE_ID'),(115,58,'ST_START_DELAY'),(116,13,'MSG'),(117,54,'shouldShowTitlebar'),(118,54,'url'),(119,55,'offers_webview_tag'),(120,63,'overlayTitle'),(121,64,'FSAd'),(122,67,'ACTIVITY_FLAG'),(123,67,'USER_ID'),(124,64,'shouldShowTitlebar'),(125,62,'appName'),(126,63,'shouldResizeOverlay'),(127,67,'URL'),(128,63,'overlayTransition'),(129,63,'transitionTime'),(130,67,'APP_ID'),(131,60,'APP_ID'),(132,61,'APP_ID'),(133,67,'Offers_URL'),(134,64,'DOMOB_ALLOW_LOCATION'),(135,68,'DOMOB_ALLOW_LOCATION'),(136,63,'DOMOB_ALLOW_LOCATION'),(137,60,'DOMOB_ALLOW_LOCATION'),(138,61,'DOMOB_ALLOW_LOCATION'),(139,67,'Notify_Id'),(140,64,'transitionTime'),(141,67,'Notify_Url_Params'),(142,68,'ST_MY_PID'),(143,64,'DOMOB_TEST_MODE'),(144,68,'DOMOB_TEST_MODE'),(145,63,'DOMOB_TEST_MODE'),(146,60,'DOMOB_TEST_MODE'),(147,61,'DOMOB_TEST_MODE'),(148,67,'DEVICE_ID'),(149,60,'DEVICE_ID'),(150,61,'DEVICE_ID'),(151,67,'WAPS_ID'),(152,60,'WAPS_ID'),(153,61,'WAPS_ID'),(154,63,'shouldEnableBottomBar'),(155,63,'shouldShowBottomBar'),(156,67,'CLIENT_PACKAGE'),(157,60,'CLIENT_PACKAGE'),(158,61,'CLIENT_PACKAGE'),(159,64,'overlayTransition'),(160,60,'mode'),(161,61,'mode'),(162,64,'shouldResizeOverlay'),(163,63,'shouldShowTitlebar'),(164,63,'shouldMakeOverlayTransparent'),(165,62,'actType'),(166,64,'shouldShowBottomBar'),(167,67,'URL_PARAMS'),(168,63,'url'),(169,64,'DOMOB_PID'),(170,68,'DOMOB_PID'),(171,63,'DOMOB_PID'),(172,60,'DOMOB_PID'),(173,61,'DOMOB_PID'),(174,64,'shouldEnableBottomBar'),(175,67,'UrlPath'),(176,67,'offers_webview_tag'),(177,64,'overlayTitle'),(178,67,'WAPS_PID'),(179,60,'WAPS_PID'),(180,61,'WAPS_PID'),(181,68,'ST_START_DELAY'),(182,64,'shouldMakeOverlayTransparent'),(183,62,'appId'),(184,65,'adID'),(185,67,'isFinshClose'),(186,66,'TYPEdsada'),(187,67,'SHWO_FLAG'),(188,66,'MSG'),(189,65,'adURL');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,13,'r',1,16,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,35,'s',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',0,9,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',1,18,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,13,'r',1,NULL,NULL),(71,79,'r',1,NULL,NULL),(72,80,'r',1,NULL,NULL),(73,82,'r',1,NULL,NULL),(74,95,'r',1,NULL,NULL),(75,96,'r',1,NULL,NULL),(76,98,'r',1,NULL,NULL),(77,99,'r',1,NULL,NULL),(78,46,'r',1,NULL,NULL),(79,108,'r',1,NULL,NULL),(80,112,'r',1,NULL,NULL),(81,115,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,5),(3,3,16),(4,4,11),(5,5,11),(6,6,14),(7,7,14),(8,8,5),(9,9,5),(10,10,14),(11,11,4),(12,12,27),(13,13,4),(14,14,44),(15,15,1),(16,16,4),(17,17,27),(18,18,1),(19,20,44),(20,19,35),(21,21,42),(22,22,34),(23,23,4),(24,24,4),(25,25,34),(26,26,45),(27,27,3),(28,28,44),(29,29,47),(30,30,19),(31,31,42),(32,32,36),(33,33,34),(34,34,1),(35,35,44),(36,36,1),(37,38,26),(38,37,38),(39,39,1),(40,40,25),(41,41,33),(42,42,20),(43,43,12),(44,44,34),(45,45,8),(46,46,35),(47,47,20),(48,48,1),(49,49,17),(50,50,26),(51,51,7),(52,52,43),(53,53,55),(54,54,20),(55,55,17),(56,56,56),(57,57,39),(58,58,48),(59,59,34),(60,60,17),(61,61,26),(62,62,36),(63,63,55),(64,64,33),(65,65,13),(66,66,48),(67,67,8),(68,68,17),(69,69,35),(70,70,48),(71,71,34),(72,72,55),(73,72,50),(74,73,36),(75,74,55),(76,75,46),(77,76,17),(78,77,55),(79,78,17),(80,79,59),(81,80,55),(82,81,38),(83,82,20),(84,83,58),(85,84,20),(86,85,20),(87,86,58),(88,87,32),(89,88,58),(90,89,56),(91,90,67),(92,91,68),(93,91,64),(94,91,63),(95,91,60),(96,91,61),(97,92,61),(98,93,69),(99,94,68),(100,95,66),(101,96,68),(102,96,64),(103,96,63),(104,96,61),(105,96,60),(106,97,68),(107,98,68),(108,99,66),(109,100,68),(110,100,60),(111,100,61),(112,100,63),(113,100,64),(114,101,68),(115,101,63),(116,101,60),(117,101,61),(118,101,64),(119,102,67),(120,103,67),(121,104,64),(122,104,63),(123,104,68),(124,104,60),(125,104,61),(126,105,67),(127,106,67),(128,107,65),(129,108,67);
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
INSERT INTO `ExitPoints` VALUES (1,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(2,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(3,16,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,70,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,71,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(6,72,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(7,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(9,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(10,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,73,'<com.atools.swkey.SWKeyView$closeListener: void onClick(android.view.View)>',91,'a',NULL),(12,74,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(13,73,'<com.atools.swkey.SWKeyView$closeListener: void onClick(android.view.View)>',40,'a',NULL),(14,75,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(15,76,'<com.atools.swkey.adminHelper: void addAdmin()>',7,'a',NULL),(16,77,'<com.atools.swkey.BetterPopupWindow$2: void onDismiss()>',11,'r',NULL),(17,74,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(18,1,'<com.atools.swkey.swkey: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',70,'a',NULL),(19,78,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(20,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,81,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(22,34,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(23,73,'<com.atools.swkey.SWKeyView$closeListener: void onClick(android.view.View)>',74,'a',NULL),(24,83,'<com.atools.swkey.BetterPopupWindow: void onClick(android.view.View)>',16,'a',0),(25,84,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,85,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,86,'<com.ju6.a: boolean b()>',178,'p',NULL),(29,47,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(30,19,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(31,87,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,35,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(33,88,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(34,1,'<com.atools.swkey.swkey: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',17,'s',NULL),(35,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(36,1,'<com.atools.swkey.swkey: void onCreate(android.os.Bundle)>',16,'s',NULL),(37,38,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(38,25,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(39,1,'<com.atools.swkey.swkey: void onResume()>',8,'s',NULL),(40,26,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(41,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,90,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(43,11,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(44,91,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(45,8,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(46,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(47,90,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(48,1,'<com.atools.swkey.swkey: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',9,'s',NULL),(49,17,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(50,25,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(51,7,'<com.atools.swkey.SWKeyLauncher: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(52,43,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(53,92,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,20,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(55,17,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(56,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(57,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,94,'<com.livegame.wallpapershuizeguan.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(59,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(60,100,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(61,25,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(62,101,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(63,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(64,102,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(65,103,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(66,104,'<com.livegame.wallpapershuizeguan.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(67,8,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(68,17,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(69,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(70,105,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(71,34,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(72,106,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(73,35,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(74,107,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(75,46,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(76,17,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(77,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(78,17,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(79,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(80,109,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,38,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(82,90,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(83,110,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(84,90,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(85,90,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(86,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(87,32,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(88,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(89,111,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(90,113,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(91,114,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,61,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(93,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(94,68,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(95,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(96,117,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(97,68,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(98,118,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(99,119,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(100,120,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(101,121,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(102,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(103,122,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(104,123,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(105,124,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(106,125,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(107,126,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(108,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,6,11),(4,7,1),(5,8,1),(6,15,12),(7,17,1),(8,18,1),(9,19,13),(10,20,1),(11,21,14),(12,25,1),(13,26,1),(14,28,1),(15,30,1),(16,31,1),(17,32,1),(18,33,16),(19,35,17),(20,36,1),(21,37,1),(22,40,11),(23,42,17),(24,52,11),(25,56,17),(26,59,22),(27,61,9),(28,65,17),(29,66,22),(30,68,11),(31,73,17),(32,75,1),(33,77,1),(34,78,1),(35,79,1),(36,80,1),(37,81,11),(38,82,1),(39,84,25),(40,93,17),(41,101,9),(42,102,22),(43,104,1),(44,106,1),(45,107,22),(46,113,1),(47,114,1),(48,116,17),(49,118,17),(50,119,17),(51,120,17),(52,121,17),(53,126,1),(54,127,1),(55,130,1),(56,131,1),(57,132,11),(58,134,1),(59,135,1),(60,136,17),(61,137,17),(62,138,17),(63,141,17);
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
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,4),(3,7,4),(4,8,1),(5,17,2),(6,18,4),(7,20,1),(8,25,1),(9,26,4),(10,28,1),(11,30,1),(12,31,4),(13,32,4),(14,36,1),(15,37,4),(16,75,1),(17,77,1),(18,78,4),(19,79,4),(20,80,1),(21,82,4),(22,104,1),(23,106,4),(24,113,1),(25,114,4),(26,126,1),(27,127,4),(28,130,1),(29,131,4),(30,134,1),(31,135,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ps/ddp/GameActivity'),(2,2,'com/ps/ddp/GameActivity'),(3,3,'com/google/update/UpdateService'),(4,9,'com/google/update/Dialog'),(5,10,'com/google/update/Dialog'),(6,11,'com/ps/ddp/GameActivity'),(7,12,'com/ps/ddp/GameActivity'),(8,13,'com/google/update/Dialog'),(9,14,'com/google/update/Dialog'),(10,16,'com/ps/square/elos/Elos'),(11,22,'com/ps/square/eloscomplex/ElosComplex'),(12,23,'com/atools/swkey/ManageOrder'),(13,24,'com/google/update/Dialog'),(14,27,'com/google/update/Dialog'),(15,34,'com/google/update/UpdateService'),(16,38,'com/tutusw/phonespeedup/WidgetService'),(17,39,'com/atools/battery/UpdateService'),(18,41,'com/google/ssearch/Dialog'),(19,43,'com/atools/swkey/SWKeyService'),(20,45,'com/google/update/Dialog'),(21,44,'com/google/ssearch/Dialog'),(22,47,'com/atools/battery/UpdateService'),(23,46,'com/google/update/Dialog'),(24,49,'com/tutusw/phonespeedup/ProfilesService'),(25,48,'com/wqx/blackjack/Blackjack'),(26,50,'com/atools/swkey/SWKeyService'),(27,51,'com/tutusw/phonespeedup/IntroActivity'),(28,53,'com/tutusw/phonespeedup/ProfilesService'),(29,54,'com/tutusw/phonespeedup/StresstestActivity'),(30,55,'NULL-CONSTANT'),(31,57,'com/google/update/Dialog'),(32,58,'com/google/update/Dialog'),(33,60,'com/atools/swkey/SWKeyService'),(34,63,'com/atools/swkey/SWKeyService'),(35,64,'com/google/ssearch/SearchService'),(36,62,'com/wqx/blackjack/Card'),(37,67,'com/tutusw/phonespeedup/IntroActivity'),(38,69,'com/google/update/UpdateService'),(39,70,'com/livegame/wallpapershuizeguan/SettingsActivity'),(40,71,'com/waps/OffersWebView'),(41,72,'com/waps/OffersWebView'),(42,74,'com/wqx/blackjack/Card'),(43,83,'com/tutusw/phonespeedup/Setcpu'),(44,86,'com/tutusw/phonespeedup/ProfilesService'),(45,85,'com/google/update/Dialog'),(46,88,'com/google/update/Dialog'),(47,87,'com/waps/OffersWebView'),(48,89,'(.*)'),(49,90,'NULL-CONSTANT'),(50,91,'com/google/ssearch/Dialog'),(51,92,'com/google/ssearch/Dialog'),(52,94,'com/tutusw/phonespeedup/PerflockActivity'),(53,95,'(.*)'),(54,96,'com/tutusw/phonespeedup/AdvancedActivity'),(55,97,'com/google/update/UpdateService'),(56,98,'com/tutusw/phonespeedup/InfoActivity'),(57,99,'com/tutusw/phonespeedup/AboutActivity'),(58,100,'com/waps/OffersWebView'),(59,103,'com/waps/OffersWebView'),(60,105,'com/tutusw/phonespeedup/ProfileEditActivity'),(61,109,'com/tutusw/phonespeedup/WidgetService'),(62,108,'com/google/update/Dialog'),(63,110,'com/google/update/Dialog'),(64,111,'com/google/update/Dialog'),(65,112,'com/google/update/Dialog'),(66,115,'NULL-CONSTANT'),(67,122,'com/gp/jewels/Menu'),(68,123,'com/google/update/UpdateService'),(69,124,'com/google/update/Dialog'),(70,125,'com/google/update/Dialog'),(71,128,'com/google/update/Dialog'),(72,129,'com/google/update/Dialog'),(73,139,'com/waps/OffersWebView'),(74,140,'com/waps/OffersWebView'),(75,142,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,35,1),(2,42,3),(3,56,4),(4,65,5),(5,73,6),(6,93,7),(7,116,8),(8,118,9),(9,119,10),(10,120,11),(11,121,12),(12,136,15),(13,137,16),(14,138,17),(15,141,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'type'),(2,2,'type'),(3,9,'TYPEdsada'),(4,10,'MSG'),(5,10,'TYPEdsada'),(6,11,'type'),(7,12,'type'),(8,13,'TYPEdsada'),(9,14,'MSG'),(10,14,'TYPEdsada'),(11,19,'android.app.extra.DEVICE_ADMIN'),(12,19,'android.app.extra.ADD_EXPLANATION'),(13,24,'TYPEdsada'),(14,27,'MSG'),(15,27,'TYPEdsada'),(16,41,'TYPEdsada'),(17,44,'MSG'),(18,45,'TYPEdsada'),(19,44,'TYPEdsada'),(20,46,'MSG'),(21,46,'TYPEdsada'),(22,57,'MSG'),(23,57,'TYPEdsada'),(24,58,'TYPEdsada'),(25,62,'mMaxScore'),(26,62,'mMoney'),(27,62,'mWinCount'),(28,62,'mLoseCount'),(29,62,'mStartTime'),(30,62,'mCurrentScore'),(31,71,'UrlPath'),(32,71,'ACTIVITY_FLAG'),(33,71,'isFinshClose'),(34,71,'offers_webview_tag'),(35,72,'Notify_Url_Params'),(36,72,'UrlPath'),(37,72,'ACTIVITY_FLAG'),(38,72,'isFinshClose'),(39,72,'offers_webview_tag'),(40,74,'mMaxScore'),(41,74,'mMoney'),(42,74,'mWinCount'),(43,74,'mLoseCount'),(44,74,'mStartTime'),(45,74,'mCurrentScore'),(46,84,'android.live_wallpaper.package'),(47,84,'android.live_wallpaper.settings'),(48,85,'MSG'),(49,85,'TYPEdsada'),(50,87,'USER_ID'),(51,87,'CLIENT_PACKAGE'),(52,88,'TYPEdsada'),(53,87,'Offers_URL'),(54,87,'offers_webview_tag'),(55,87,'URL_PARAMS'),(56,91,'TYPEdsada'),(57,92,'MSG'),(58,92,'TYPEdsada'),(59,100,'Notify_Url_Params'),(60,100,'UrlPath'),(61,100,'ACTIVITY_FLAG'),(62,100,'isFinshClose'),(63,100,'offers_webview_tag'),(64,103,'UrlPath'),(65,103,'ACTIVITY_FLAG'),(66,103,'isFinshClose'),(67,103,'offers_webview_tag'),(68,108,'MSG'),(69,108,'TYPEdsada'),(70,110,'TYPEdsada'),(71,111,'MSG'),(72,111,'TYPEdsada'),(73,112,'TYPEdsada'),(74,124,'MSG'),(75,124,'TYPEdsada'),(76,125,'TYPEdsada'),(77,128,'MSG'),(78,128,'TYPEdsada'),(79,129,'TYPEdsada'),(80,139,'UrlPath'),(81,139,'ACTIVITY_FLAG'),(82,139,'isFinshClose'),(83,139,'offers_webview_tag'),(84,140,'Notify_Url_Params'),(85,140,'UrlPath'),(86,140,'ACTIVITY_FLAG'),(87,140,'isFinshClose'),(88,140,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,4),(7,6,5),(8,6,2),(9,7,2),(10,7,4),(11,7,5),(12,8,1),(13,9,1),(14,10,7),(15,11,6),(16,12,6),(17,13,5),(18,13,4),(19,13,2),(20,14,5),(21,14,2),(22,14,4),(23,15,4),(24,15,5),(25,15,2),(26,16,2),(27,17,8),(28,17,9),(29,18,1),(30,19,10),(31,20,2),(32,20,5),(33,20,4),(34,21,1),(35,22,4),(36,22,2),(37,22,5),(38,23,14),(39,23,15),(40,24,14),(41,24,15),(42,25,14),(43,25,15),(44,26,15),(45,26,14),(46,27,15),(47,27,14),(48,28,15),(49,28,14),(50,29,21),(51,29,20),(52,29,19),(53,29,18),(54,30,21),(55,30,18),(56,30,20),(57,30,19),(58,31,20),(59,31,21),(60,31,18),(61,31,19),(62,32,19),(63,32,20),(64,32,21),(65,32,18),(66,33,18),(67,33,19),(68,33,20),(69,33,21),(70,34,18),(71,34,19),(72,34,20),(73,34,21),(74,35,23),(75,35,9),(76,35,24),(77,36,9),(78,36,24),(79,36,23),(80,37,24),(81,37,9),(82,37,23),(83,38,20),(84,39,23),(85,39,24),(86,39,9),(87,40,9),(88,40,23),(89,40,24),(90,41,23),(91,41,24),(92,41,9),(93,42,24),(94,42,23),(95,42,22),(96,42,27),(97,42,26),(98,43,27),(99,43,26),(100,43,24),(101,43,22),(102,43,23),(103,44,27),(104,44,22),(105,44,23),(106,44,24),(107,44,26),(108,45,26),(109,45,27),(110,45,24),(111,45,22),(112,45,23),(113,46,26),(114,46,27),(115,46,22),(116,46,23),(117,46,24),(118,47,24),(119,47,23),(120,47,22),(121,47,27),(122,47,26),(123,48,20),(124,49,9),(125,49,24),(126,49,23),(127,50,9),(128,50,24),(129,50,23),(130,51,23),(131,51,24),(132,51,9),(133,52,23),(134,52,24),(135,52,9),(136,53,9),(137,53,23),(138,53,24),(139,54,23),(140,54,24),(141,54,9),(142,55,20),(143,56,20),(144,57,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,8,1),(6,9,1),(7,11,3),(8,12,3),(9,18,1),(10,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,31,'package',NULL,NULL,NULL,NULL,NULL),(4,32,'package',NULL,NULL,NULL,NULL,NULL),(5,33,'package',NULL,NULL,NULL,NULL,NULL),(6,34,'package',NULL,NULL,NULL,NULL,NULL),(7,38,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL),(9,55,'package',NULL,NULL,NULL,NULL,NULL),(10,56,'package',NULL,NULL,NULL,NULL,NULL),(11,57,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,35,'application','vnd.android.package-archive'),(2,42,'application','vnd.android.package-archive'),(3,65,'application','vnd.android.package-archive'),(4,93,'application','vnd.android.package-archive'),(5,116,'application','vnd.android.package-archive'),(6,118,'application','vnd.android.package-archive'),(7,119,'application','vnd.android.package-archive'),(8,120,'application','vnd.android.package-archive'),(9,121,'application','vnd.android.package-archive'),(10,136,'application','vnd.android.package-archive'),(11,138,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.ddp'),(2,2,'com.ps.ddp'),(3,3,'com.ps.ddp'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,7,'com.ps.ddp'),(7,8,'com.ps.ddp'),(8,9,'com.ps.ddp'),(9,10,'com.ps.ddp'),(10,11,'com.ps.ddp'),(11,12,'com.ps.ddp'),(12,13,'com.ps.ddp'),(13,14,'com.ps.ddp'),(14,16,'com.ps.square'),(15,18,'com.ps.square'),(16,20,'com.ps.square'),(17,22,'com.ps.square'),(18,23,'com.atools.swkey'),(19,25,'com.wqx.blackjack'),(20,24,'com.ps.square'),(21,26,'com.wqx.blackjack'),(22,27,'com.ps.square'),(23,28,'com.noshufou.android.su'),(24,30,'(.*)'),(25,31,'com.noshufou.android.su'),(26,32,'(.*)'),(27,34,'com.ps.square'),(28,36,'com.noshufou.android.su'),(29,37,'com.noshufou.android.su'),(30,38,'com.tutusw.phonespeedup'),(31,39,'com.atools.swkey'),(32,41,'com.tutusw.phonespeedup'),(33,43,'com.atools.swkey'),(34,45,'com.ps.square'),(35,44,'com.tutusw.phonespeedup'),(36,47,'com.atools.swkey'),(37,46,'com.ps.square'),(38,49,'com.tutusw.phonespeedup'),(39,48,'com.wqx.blackjack'),(40,51,'com.tutusw.phonespeedup'),(41,50,'com.atools.swkey'),(42,53,'com.tutusw.phonespeedup'),(43,54,'com.tutusw.phonespeedup'),(44,55,'NULL-CONSTANT'),(45,57,'com.wqx.blackjack'),(46,58,'com.wqx.blackjack'),(47,60,'com.atools.swkey'),(48,63,'com.atools.swkey'),(49,64,'com.tutusw.phonespeedup'),(50,62,'com.wqx.blackjack'),(51,67,'com.tutusw.phonespeedup'),(52,69,'com.wqx.blackjack'),(53,70,'com.livegame.wallpapershuizeguan'),(54,71,'com.wqx.blackjack'),(55,72,'com.wqx.blackjack'),(56,75,'com.tutusw.phonespeedup'),(57,74,'com.wqx.blackjack'),(58,77,'(.*)'),(59,78,'com.tutusw.phonespeedup'),(60,79,'(.*)'),(61,80,'com.noshufou.android.su'),(62,82,'com.noshufou.android.su'),(63,83,'com.tutusw.phonespeedup'),(64,86,'com.tutusw.phonespeedup'),(65,85,'com.wqx.blackjack'),(66,88,'com.wqx.blackjack'),(67,87,'com.livegame.wallpapershuizeguan'),(68,89,'(.*)'),(69,90,'NULL-CONSTANT'),(70,91,'com.tutusw.phonespeedup'),(71,92,'com.tutusw.phonespeedup'),(72,94,'com.tutusw.phonespeedup'),(73,95,'(.*)'),(74,96,'com.tutusw.phonespeedup'),(75,97,'com.livegame.wallpapershuizeguan'),(76,98,'com.tutusw.phonespeedup'),(77,99,'com.tutusw.phonespeedup'),(78,100,'com.livegame.wallpapershuizeguan'),(79,103,'com.livegame.wallpapershuizeguan'),(80,104,'com.livegame.wallpapershuizeguan'),(81,105,'com.tutusw.phonespeedup'),(82,106,'com.livegame.wallpapershuizeguan'),(83,109,'com.tutusw.phonespeedup'),(84,108,'com.livegame.wallpapershuizeguan'),(85,110,'com.livegame.wallpapershuizeguan'),(86,111,'com.livegame.wallpapershuizeguan'),(87,112,'com.livegame.wallpapershuizeguan'),(88,113,'com.noshufou.android.su'),(89,114,'com.noshufou.android.su'),(90,115,'NULL-CONSTANT'),(91,122,'com.gp.jewels'),(92,123,'com.gp.jewels'),(93,124,'com.gp.jewels'),(94,125,'com.gp.jewels'),(95,126,'com.noshufou.android.su'),(96,127,'com.noshufou.android.su'),(97,128,'com.gp.jewels'),(98,129,'com.gp.jewels'),(99,130,'com.gp.jewels'),(100,131,'com.gp.jewels'),(101,134,'(.*)'),(102,135,'(.*)'),(103,139,'com.gp.jewels'),(104,140,'com.gp.jewels'),(105,142,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,8,0),(4,7,0),(5,15,0),(6,16,0),(7,19,0),(8,26,0),(9,27,0),(10,32,0),(11,31,0),(12,37,0),(13,39,0),(14,43,0),(15,45,0),(16,46,0),(17,47,0),(18,48,0),(19,57,0),(20,59,0),(21,60,0),(22,69,0),(23,19,0),(24,70,0),(25,71,0),(26,72,0),(27,73,0),(28,7,0),(29,19,0),(30,70,0),(31,71,0),(32,72,0),(33,73,0),(34,7,0),(35,47,0),(36,43,0),(37,74,0),(38,75,0),(39,76,0),(40,77,0),(41,78,0),(42,47,0),(43,43,0),(44,74,0),(45,76,0),(46,77,0),(47,78,0),(48,79,0),(49,47,0),(50,43,0),(51,74,0),(52,76,0),(53,77,0),(54,78,0),(55,80,0),(56,81,0),(57,80,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,10,0,0),(15,11,1,0),(16,12,0,0),(17,13,1,0),(18,14,1,0),(19,15,1,0),(20,14,1,0),(21,16,1,0),(22,17,0,0),(23,18,0,0),(24,20,0,0),(25,19,1,0),(26,19,1,0),(27,20,0,0),(28,21,1,0),(29,22,1,0),(30,22,1,0),(31,21,1,0),(32,22,1,0),(33,23,1,0),(34,26,0,0),(35,25,1,0),(36,27,1,0),(37,27,1,0),(38,29,0,0),(39,30,0,0),(40,31,1,0),(41,32,0,0),(42,33,1,0),(43,34,0,0),(44,32,0,0),(45,35,0,0),(46,35,0,0),(47,36,0,0),(48,38,0,0),(49,37,0,0),(50,39,0,0),(51,40,0,0),(52,41,1,0),(53,42,0,0),(54,43,0,0),(55,44,0,0),(56,45,1,0),(57,46,0,0),(58,46,0,0),(59,47,1,0),(60,48,0,0),(61,49,1,0),(62,50,0,0),(63,51,0,0),(64,52,0,0),(65,53,1,0),(66,54,1,0),(67,55,0,0),(68,56,1,0),(69,57,0,0),(70,58,0,0),(71,59,0,0),(72,59,0,0),(73,60,1,0),(74,61,0,0),(75,62,1,0),(76,63,1,0),(77,63,1,0),(78,62,1,0),(79,63,1,0),(80,64,1,0),(81,65,1,0),(82,64,1,0),(83,67,0,0),(84,66,1,0),(85,69,0,0),(86,68,0,0),(87,70,0,0),(88,69,0,0),(89,71,0,0),(90,72,0,0),(91,73,0,0),(92,73,0,0),(93,74,1,0),(94,76,0,0),(95,77,0,0),(96,78,0,0),(97,79,0,0),(98,78,0,0),(99,78,0,0),(100,80,0,0),(101,81,1,0),(102,82,1,0),(103,80,0,0),(104,83,1,0),(105,84,0,0),(106,83,1,0),(107,85,1,0),(108,86,0,0),(109,87,0,0),(110,86,0,0),(111,88,0,0),(112,88,0,0),(113,89,1,0),(114,89,1,0),(115,90,0,0),(116,91,1,0),(117,91,1,0),(118,91,1,0),(119,91,1,0),(120,91,1,0),(121,91,1,0),(122,92,0,0),(123,93,0,0),(124,94,0,0),(125,94,0,0),(126,95,1,0),(127,95,1,0),(128,97,0,0),(129,97,0,0),(130,98,1,0),(131,98,1,0),(132,99,1,0),(133,102,1,0),(134,102,1,0),(135,102,1,0),(136,103,1,0),(137,104,1,0),(138,105,1,0),(139,106,0,0),(140,106,0,0),(141,107,1,0),(142,108,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,61,48,2,NULL),(2,66,48,2,NULL),(3,101,48,2,NULL),(4,29,48,2,NULL),(5,30,48,2,NULL),(6,32,48,2,NULL),(7,76,48,2,NULL),(8,77,48,2,NULL),(9,79,48,2,NULL),(10,133,48,2,NULL),(11,134,48,2,NULL),(12,135,48,2,NULL),(13,76,1,2,NULL),(14,77,1,2,NULL),(15,79,1,2,NULL),(16,76,7,2,NULL),(17,77,7,2,NULL),(18,79,7,2,NULL),(19,76,15,2,NULL),(20,77,15,2,NULL),(21,79,15,2,NULL),(22,76,70,2,NULL),(23,77,70,2,NULL),(24,79,70,2,NULL),(25,76,19,2,NULL),(26,77,19,2,NULL),(27,79,19,2,NULL),(28,76,71,2,NULL),(29,77,71,2,NULL),(30,79,71,2,NULL),(31,76,72,2,NULL),(32,77,72,2,NULL),(33,79,72,2,NULL),(34,76,73,2,NULL),(35,77,73,2,NULL),(36,79,73,2,NULL),(37,76,5,2,NULL),(38,77,5,2,NULL),(39,79,5,2,NULL),(40,76,16,2,NULL),(41,77,16,2,NULL),(42,79,16,2,NULL),(43,76,8,2,NULL),(44,77,8,2,NULL),(45,79,8,2,NULL),(46,76,32,2,NULL),(47,77,32,2,NULL),(48,79,32,2,NULL),(49,76,43,2,NULL),(50,77,43,2,NULL),(51,79,43,2,NULL),(52,76,46,2,NULL),(53,77,46,2,NULL),(54,79,46,2,NULL),(55,76,78,2,NULL),(56,77,78,2,NULL),(57,79,78,2,NULL),(58,76,47,2,NULL),(59,77,47,2,NULL),(60,79,47,2,NULL),(61,76,74,2,NULL),(62,77,74,2,NULL),(63,79,74,2,NULL),(64,76,76,2,NULL),(65,77,76,2,NULL),(66,79,76,2,NULL),(67,76,77,2,NULL),(68,77,77,2,NULL),(69,79,77,2,NULL),(70,76,27,2,NULL),(71,77,27,2,NULL),(72,79,27,2,NULL),(73,76,31,2,NULL),(74,77,31,2,NULL),(75,79,31,2,NULL),(76,76,37,2,NULL),(77,77,37,2,NULL),(78,79,37,2,NULL),(79,76,45,2,NULL),(80,77,45,2,NULL),(81,79,45,2,NULL),(82,76,26,2,NULL),(83,77,26,2,NULL),(84,79,26,2,NULL),(85,76,39,2,NULL),(86,77,39,2,NULL),(87,79,39,2,NULL),(88,76,57,2,NULL),(89,77,57,2,NULL),(90,79,57,2,NULL),(91,76,59,2,NULL),(92,77,59,2,NULL),(93,79,59,2,NULL),(94,76,60,2,NULL),(95,77,60,2,NULL),(96,79,60,2,NULL),(97,76,69,2,NULL),(98,77,69,2,NULL),(99,79,69,2,NULL),(100,61,57,2,NULL),(101,66,57,2,NULL),(102,101,57,2,NULL),(103,29,57,2,NULL),(104,30,57,2,NULL),(105,32,57,2,NULL),(106,133,57,2,NULL),(107,134,57,2,NULL),(108,135,57,2,NULL),(109,108,11,2,NULL),(110,108,33,2,NULL),(111,108,42,2,NULL),(112,108,56,2,NULL),(113,108,66,2,NULL),(114,110,11,2,NULL),(115,110,33,2,NULL),(116,110,42,2,NULL),(117,110,56,2,NULL),(118,110,66,2,NULL),(119,111,11,2,NULL),(120,111,33,2,NULL),(121,111,42,2,NULL),(122,111,56,2,NULL),(123,111,66,2,NULL),(124,112,11,2,NULL),(125,112,33,2,NULL),(126,112,42,2,NULL),(127,112,56,2,NULL),(128,112,66,2,NULL),(129,97,14,2,NULL),(130,97,35,2,NULL),(131,97,44,2,NULL),(132,97,58,2,NULL),(133,97,68,2,NULL),(134,61,59,2,NULL),(135,66,59,2,NULL),(136,101,59,2,NULL),(137,29,59,2,NULL),(138,30,59,2,NULL),(139,32,59,2,NULL),(140,133,59,2,NULL),(141,134,59,2,NULL),(142,135,59,2,NULL),(143,1,9,2,NULL),(144,2,9,2,NULL),(145,11,9,2,NULL),(146,12,9,2,NULL),(147,61,5,2,NULL),(148,66,5,2,NULL),(149,101,5,2,NULL),(150,29,5,2,NULL),(151,30,5,2,NULL),(152,32,5,2,NULL),(153,133,5,2,NULL),(154,134,5,2,NULL),(155,135,5,2,NULL),(156,9,11,2,NULL),(157,9,33,2,NULL),(158,9,42,2,NULL),(159,9,56,2,NULL),(160,9,66,2,NULL),(161,10,11,2,NULL),(162,10,33,2,NULL),(163,10,42,2,NULL),(164,10,56,2,NULL),(165,10,66,2,NULL),(166,13,11,2,NULL),(167,13,33,2,NULL),(168,13,42,2,NULL),(169,13,56,2,NULL),(170,13,66,2,NULL),(171,14,11,2,NULL),(172,14,33,2,NULL),(173,14,42,2,NULL),(174,14,56,2,NULL),(175,14,66,2,NULL),(176,3,14,2,NULL),(177,3,35,2,NULL),(178,3,44,2,NULL),(179,3,58,2,NULL),(180,3,68,2,NULL),(181,61,16,2,NULL),(182,66,16,2,NULL),(183,101,16,2,NULL),(184,29,16,2,NULL),(185,30,16,2,NULL),(186,32,16,2,NULL),(187,133,16,2,NULL),(188,134,16,2,NULL),(189,135,16,2,NULL),(190,61,60,2,NULL),(191,66,60,2,NULL),(192,101,60,2,NULL),(193,29,60,2,NULL),(194,30,60,2,NULL),(195,32,60,2,NULL),(196,133,60,2,NULL),(197,134,60,2,NULL),(198,135,60,2,NULL),(199,122,60,2,NULL),(200,133,1,2,NULL),(201,134,1,2,NULL),(202,135,1,2,NULL),(203,133,7,2,NULL),(204,134,7,2,NULL),(205,135,7,2,NULL),(206,133,15,2,NULL),(207,134,15,2,NULL),(208,135,15,2,NULL),(209,133,70,2,NULL),(210,134,70,2,NULL),(211,135,70,2,NULL),(212,133,19,2,NULL),(213,134,19,2,NULL),(214,135,19,2,NULL),(215,133,71,2,NULL),(216,134,71,2,NULL),(217,135,71,2,NULL),(218,133,72,2,NULL),(219,134,72,2,NULL),(220,135,72,2,NULL),(221,133,73,2,NULL),(222,134,73,2,NULL),(223,135,73,2,NULL),(224,133,8,2,NULL),(225,134,8,2,NULL),(226,135,8,2,NULL),(227,133,32,2,NULL),(228,134,32,2,NULL),(229,135,32,2,NULL),(230,133,43,2,NULL),(231,134,43,2,NULL),(232,135,43,2,NULL),(233,133,46,2,NULL),(234,134,46,2,NULL),(235,135,46,2,NULL),(236,133,78,2,NULL),(237,134,78,2,NULL),(238,135,78,2,NULL),(239,133,47,2,NULL),(240,134,47,2,NULL),(241,135,47,2,NULL),(242,133,74,2,NULL),(243,134,74,2,NULL),(244,135,74,2,NULL),(245,133,76,2,NULL),(246,134,76,2,NULL),(247,135,76,2,NULL),(248,133,77,2,NULL),(249,134,77,2,NULL),(250,135,77,2,NULL),(251,133,27,2,NULL),(252,134,27,2,NULL),(253,135,27,2,NULL),(254,133,31,2,NULL),(255,134,31,2,NULL),(256,135,31,2,NULL),(257,133,37,2,NULL),(258,134,37,2,NULL),(259,135,37,2,NULL),(260,133,45,2,NULL),(261,134,45,2,NULL),(262,135,45,2,NULL),(263,133,26,2,NULL),(264,134,26,2,NULL),(265,135,26,2,NULL),(266,133,39,2,NULL),(267,134,39,2,NULL),(268,135,39,2,NULL),(269,133,69,2,NULL),(270,134,69,2,NULL),(271,135,69,2,NULL),(272,124,11,2,NULL),(273,124,33,2,NULL),(274,124,42,2,NULL),(275,124,56,2,NULL),(276,124,66,2,NULL),(277,125,11,2,NULL),(278,125,33,2,NULL),(279,125,42,2,NULL),(280,125,56,2,NULL),(281,125,66,2,NULL),(282,128,11,2,NULL),(283,128,33,2,NULL),(284,128,42,2,NULL),(285,128,56,2,NULL),(286,128,66,2,NULL),(287,129,11,2,NULL),(288,129,33,2,NULL),(289,129,42,2,NULL),(290,129,56,2,NULL),(291,129,66,2,NULL),(292,123,14,2,NULL),(293,123,35,2,NULL),(294,123,44,2,NULL),(295,123,58,2,NULL),(296,123,68,2,NULL),(297,61,69,2,NULL),(298,66,69,2,NULL),(299,101,69,2,NULL),(300,29,69,2,NULL),(301,30,69,2,NULL),(302,32,69,2,NULL),(303,83,29,2,NULL),(304,61,8,2,NULL),(305,66,8,2,NULL),(306,101,8,2,NULL),(307,29,8,2,NULL),(308,30,8,2,NULL),(309,32,8,2,NULL),(310,54,28,2,NULL),(311,67,8,2,NULL),(312,86,40,2,NULL),(313,94,18,2,NULL),(314,96,22,2,NULL),(315,98,12,2,NULL),(316,99,25,2,NULL),(317,61,1,2,NULL),(318,61,7,2,NULL),(319,61,15,2,NULL),(320,61,70,2,NULL),(321,61,19,2,NULL),(322,61,71,2,NULL),(323,61,72,2,NULL),(324,61,73,2,NULL),(325,61,32,2,NULL),(326,61,43,2,NULL),(327,61,46,2,NULL),(328,61,78,2,NULL),(329,61,47,2,NULL),(330,61,74,2,NULL),(331,61,76,2,NULL),(332,61,77,2,NULL),(333,61,27,2,NULL),(334,61,31,2,NULL),(335,61,37,2,NULL),(336,61,45,2,NULL),(337,61,26,2,NULL),(338,61,39,2,NULL),(339,66,1,2,NULL),(340,66,7,2,NULL),(341,66,15,2,NULL),(342,66,70,2,NULL),(343,66,19,2,NULL),(344,66,71,2,NULL),(345,66,72,2,NULL),(346,66,73,2,NULL),(347,66,32,2,NULL),(348,66,43,2,NULL),(349,66,46,2,NULL),(350,66,78,2,NULL),(351,66,47,2,NULL),(352,66,74,2,NULL),(353,66,76,2,NULL),(354,66,77,2,NULL),(355,66,27,2,NULL),(356,66,31,2,NULL),(357,66,37,2,NULL),(358,66,45,2,NULL),(359,66,26,2,NULL),(360,66,39,2,NULL),(361,51,8,2,NULL),(362,109,41,2,NULL),(363,101,32,2,NULL),(364,29,32,2,NULL),(365,30,32,2,NULL),(366,32,32,2,NULL),(367,41,13,2,NULL),(368,44,13,2,NULL),(369,91,13,2,NULL),(370,92,13,2,NULL),(371,49,40,2,NULL),(372,101,1,2,NULL),(373,101,7,2,NULL),(374,101,15,2,NULL),(375,101,70,2,NULL),(376,101,19,2,NULL),(377,101,71,2,NULL),(378,101,72,2,NULL),(379,101,73,2,NULL),(380,101,43,2,NULL),(381,101,46,2,NULL),(382,101,78,2,NULL),(383,101,47,2,NULL),(384,101,74,2,NULL),(385,101,76,2,NULL),(386,101,77,2,NULL),(387,101,27,2,NULL),(388,101,31,2,NULL),(389,101,37,2,NULL),(390,101,45,2,NULL),(391,101,26,2,NULL),(392,101,39,2,NULL),(393,64,36,2,NULL),(394,29,43,2,NULL),(395,30,43,2,NULL),(396,32,43,2,NULL),(397,29,46,2,NULL),(398,30,46,2,NULL),(399,32,46,2,NULL),(400,29,78,2,NULL),(401,30,78,2,NULL),(402,32,78,2,NULL),(403,38,41,2,NULL),(404,29,47,2,NULL),(405,30,47,2,NULL),(406,32,47,2,NULL),(407,29,74,2,NULL),(408,30,74,2,NULL),(409,32,74,2,NULL),(410,29,76,2,NULL),(411,30,76,2,NULL),(412,32,76,2,NULL),(413,29,77,2,NULL),(414,30,77,2,NULL),(415,32,77,2,NULL),(416,29,27,2,NULL),(417,30,27,2,NULL),(418,32,27,2,NULL),(419,29,31,2,NULL),(420,30,31,2,NULL),(421,32,31,2,NULL),(422,29,37,2,NULL),(423,30,37,2,NULL),(424,32,37,2,NULL),(425,24,11,2,NULL),(426,24,33,2,NULL),(427,24,42,2,NULL),(428,24,56,2,NULL),(429,24,66,2,NULL),(430,27,11,2,NULL),(431,27,33,2,NULL),(432,27,42,2,NULL),(433,27,56,2,NULL),(434,27,66,2,NULL),(435,45,11,2,NULL),(436,45,33,2,NULL),(437,45,42,2,NULL),(438,45,56,2,NULL),(439,45,66,2,NULL),(440,46,11,2,NULL),(441,46,33,2,NULL),(442,46,42,2,NULL),(443,46,56,2,NULL),(444,46,66,2,NULL),(445,34,14,2,NULL),(446,34,35,2,NULL),(447,34,44,2,NULL),(448,34,58,2,NULL),(449,34,68,2,NULL),(450,29,45,2,NULL),(451,30,45,2,NULL),(452,32,45,2,NULL),(453,23,2,2,NULL),(454,43,4,2,NULL),(455,47,6,2,NULL),(456,50,4,2,NULL),(457,60,4,2,NULL),(458,29,1,2,NULL),(459,30,1,2,NULL),(460,32,1,2,NULL),(461,63,4,2,NULL),(462,29,7,2,NULL),(463,30,7,2,NULL),(464,32,7,2,NULL),(465,29,15,2,NULL),(466,30,15,2,NULL),(467,32,15,2,NULL),(468,29,70,2,NULL),(469,30,70,2,NULL),(470,32,70,2,NULL),(471,39,6,2,NULL),(472,29,19,2,NULL),(473,30,19,2,NULL),(474,32,19,2,NULL),(475,29,71,2,NULL),(476,30,71,2,NULL),(477,32,71,2,NULL),(478,29,72,2,NULL),(479,30,72,2,NULL),(480,32,72,2,NULL),(481,29,73,2,NULL),(482,30,73,2,NULL),(483,32,73,2,NULL),(484,48,26,2,NULL),(485,62,30,2,NULL),(486,74,30,2,NULL),(487,29,26,2,NULL),(488,30,26,2,NULL),(489,32,26,2,NULL),(490,29,39,2,NULL),(491,30,39,2,NULL),(492,32,39,2,NULL),(493,57,11,2,NULL),(494,57,33,2,NULL),(495,57,42,2,NULL),(496,57,56,2,NULL),(497,57,66,2,NULL),(498,58,11,2,NULL),(499,58,33,2,NULL),(500,58,42,2,NULL),(501,58,56,2,NULL),(502,58,66,2,NULL),(503,85,11,2,NULL),(504,85,33,2,NULL),(505,85,42,2,NULL),(506,85,56,2,NULL),(507,85,66,2,NULL),(508,88,11,2,NULL),(509,88,33,2,NULL),(510,88,42,2,NULL),(511,88,56,2,NULL),(512,88,66,2,NULL),(513,69,14,2,NULL),(514,69,35,2,NULL),(515,69,44,2,NULL),(516,69,58,2,NULL),(517,69,68,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.BIND_DEVICE_ADMIN'),(18,'android.permission.BIND_WALLPAPER'),(11,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECORD_AUDIO'),(2,'android.permission.SYSTEM_ALERT_WINDOW'),(6,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(9,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,28,2),(2,96,13),(3,100,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,5),(12,3,1),(13,2,8),(14,3,4),(15,2,9),(16,3,5),(17,3,6),(18,2,10),(19,2,11),(20,3,8),(21,3,9),(22,3,10),(23,3,11),(24,3,12),(25,4,1),(26,4,4),(27,4,5),(28,4,7),(29,5,1),(30,4,8),(31,5,4),(32,4,9),(33,5,5),(34,4,10),(35,5,8),(36,4,11),(37,5,9),(38,4,13),(39,5,10),(40,4,14),(41,5,11),(42,4,15),(43,6,17),(44,6,1),(45,6,3),(46,6,4),(47,6,5),(48,6,7),(49,6,8),(50,6,9),(51,6,10),(52,6,11),(53,7,1),(54,7,3),(55,7,4),(56,7,5),(57,7,6),(58,7,7),(59,7,8),(60,7,9),(61,7,10),(62,7,11),(63,7,12),(64,7,17),(65,7,19),(66,7,21),(67,7,20);
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

-- Dump completed on 2015-10-12  3:29:24
