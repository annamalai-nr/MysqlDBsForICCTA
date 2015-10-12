-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_109
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(20,'Speedup.intent.action.refreshservice'),(21,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(17,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CALL'),(27,'android.intent.action.CHOOSER'),(26,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(34,'android.intent.action.MEDIA_MOUNTED'),(33,'android.intent.action.MEDIA_SCANNER_FINISHED'),(32,'android.intent.action.MEDIA_SCANNER_STARTED'),(12,'android.intent.action.NEW_OUTGOING_CALL'),(23,'android.intent.action.PACKAGE_ADDED'),(30,'android.intent.action.PICK'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(9,'android.intent.action.SEND_MULTIPLE'),(3,'android.intent.action.SIG_STR'),(15,'android.intent.action.VIEW'),(25,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(8,'android.service.wallpaper.WallpaperService'),(29,'com.android.music.musicservicecommand'),(11,'com.android.service.START_AUDIO_SERVICE'),(22,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(31,'com.catsw.lock.service'),(13,'com.orderlong.netTrafficStats.intent.action.STATUS_CHANGED'),(35,'com/a/a/a/a'),(28,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.atools.netTrafficStats',3),(3,'com.gp.tiltmazes',13),(4,'com.gp.search',2),(5,'com.livegame.wallpapermingche',2),(6,'com.catsw.lockgallery',49),(7,'com.mogo.puzzle',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,1,'com.tutusw.phonespeedup.InfoActivity'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.tutusw.phonespeedup.Home'),(5,1,'com.tutusw.phonespeedup.PerflockActivity'),(6,1,'com.tutusw.phonespeedup.ProfilesActivity'),(7,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(8,1,'com.tutusw.phonespeedup.AdvancedActivity'),(9,1,'com.tutusw.phonespeedup.AboutActivity'),(10,1,'com.tutusw.phonespeedup.StresstestActivity'),(11,2,'com.atools.netTrafficStats.MainActivity'),(12,1,'com.tutusw.phonespeedup.Setcpu'),(13,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(14,2,'com.orderlong.netTrafficStats.NetTrafficStats'),(15,2,'com.atools.battery.ShowTips'),(16,1,'com.google.ssearch.SearchService'),(17,2,'com.atools.battery.UpdateService'),(18,1,'com.tutusw.phonespeedup.StartupService'),(19,1,'com.tutusw.phonespeedup.ProfilesService'),(20,1,'com.tutusw.phonespeedup.WidgetService'),(21,1,'com.google.ssearch.Receiver'),(22,1,'com.tutusw.phonespeedup.StartupReceiver'),(23,1,'com.tutusw.phonespeedup.Widget'),(24,3,'com.gp.tiltmazes.TiltMazesActivity'),(25,3,'com.gp.tiltmazes.SelectMazeActivity'),(26,3,'com.google.update.Dialog'),(27,3,'cn.domob.android.ads.DomobActivity'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,3,'com.google.update.UpdateService'),(30,3,'com.google.update.Receiver'),(31,5,'com.livegame.wallpapermingche.MainActivity'),(32,4,'com.gp.search.IndexUI'),(33,5,'com.livegame.wallpapermingche.SettingsActivity'),(34,5,'com.livegame.wallpapermingche.SelectFolderActivity'),(35,4,'com.gp.search.LoadWeathreUI'),(36,5,'com.google.ads.AdActivity'),(37,5,'com.vpon.adon.android.WebInApp'),(38,4,'com.gp.search.WeatherInfoUI'),(39,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,4,'com.gp.search.IPSearchUI'),(42,5,'com.waps.OffersWebView'),(43,5,'com.google.update.Dialog'),(44,4,'com.gp.search.TrainSearchUI'),(45,5,'com.livegame.wallpapermingche.WallpaperSlideshow'),(46,6,'com.catsw.lockgallery.MainActivity'),(47,4,'com.gp.search.ExpressSearchUI'),(48,6,'com.catsw.lockgallery.FolderActivity'),(49,5,'com.google.update.UpdateService'),(50,4,'com.gp.search.PhoneSearchUI'),(51,6,'com.catsw.lockgallery.GalleryActivity'),(52,5,'com.google.update.Receiver'),(53,6,'com.catsw.lockgallery.SettingsActivity'),(54,7,'com.mogo.puzzle.begin'),(55,4,'com.gp.search.BusUI'),(56,6,'com.catsw.lockgallery.PasswordActivity'),(57,6,'com.catsw.lockgallery.PatternPasswordActivity'),(58,4,'com.gp.search.RPSearchUI'),(59,7,'com.mogo.puzzle.Main'),(60,6,'com.catsw.lockgallery.InfoActivity'),(61,7,'com.google.ads.AdActivity'),(62,6,'com.catsw.lockgallery.SlideShowActivity'),(63,4,'com.gp.search.ScoreSearchUI'),(64,6,'com.catsw.lockgallery.HideByShareActivity'),(65,7,'com.vpon.adon.android.WebInApp'),(66,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(67,4,'com.gp.search.weather.proc.Splash'),(68,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,4,'com.gp.search.weather.proc.MainService'),(70,7,'com.waps.OffersWebView'),(71,4,'com.waps.OffersWebView'),(72,7,'com.google.update.Dialog'),(73,4,'com.google.update.Dialog'),(74,7,'com.google.update.UpdateService'),(75,4,'cn.domob.android.ads.DomobActivity'),(76,7,'com.google.update.Receiver'),(77,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(78,6,'com.catsw.lockgallery.pattern.ChooseLockPatternActivity'),(79,4,'com.gp.search.weather.func.AlarmService'),(80,6,'com.catsw.lockgallery.pattern.ChooseLockPatternExampleActivity'),(81,4,'com.android.weather.service.LoadDataService'),(82,6,'com.google.ads.AdActivity'),(83,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(84,6,'com.millennialmedia.android.VideoPlayer'),(85,4,'com.google.update.UpdateService'),(86,6,'com.catsw.lockgallery.UpdateCheck'),(87,4,'com.google.update.Receiver'),(88,6,'com.catsw.lockgallery.util.DialInvokeReceiver'),(89,6,'com.catsw.lockgallery.provider.GalleryLockProvider'),(90,6,'com.catsw.lockgallery.provider.FolderContentProvider'),(91,6,'com.catsw.lockgallery.provider.MediaContentProvider'),(92,2,'com.atools.battery.ShowTips$1'),(93,2,'com.orderlong.netTrafficStats.m'),(94,2,'b'),(95,1,'com.tutusw.phonespeedup.WidgetService$1'),(96,1,'com.tutusw.phonespeedup.ProfilesService$1'),(97,1,'android.appwidget.AppWidgetProvider'),(98,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(99,1,'com.tutusw.phonespeedup.Home$clicker'),(100,1,'com.google.ssearch.Dialog$1'),(101,1,'com.google.ssearch.SearchService$MyThread'),(102,3,'cn.domob.android.ads.i'),(103,3,'cn.domob.android.ads.DomobAdManager'),(104,3,'com.google.update.Dialog$2'),(105,5,'com.google.update.UpdateService$AA'),(106,3,'cn.domob.android.ads.DomobActionReceiver'),(107,7,'com.google.update.Dialog$2'),(108,3,'cn.domob.android.ads.i$6'),(109,7,'com.waps.AppConnect'),(110,5,'com.waps.o'),(111,7,'com.mogo.puzzle.begin$beginButtonListener'),(112,5,'com.waps.q'),(113,7,'com.google.update.Dialog$1'),(114,5,'com.waps.z'),(115,3,'com.google.update.Dialog$1'),(116,5,'com.waps.ac'),(117,3,'cn.domob.android.ads.DomobAdEngine$2'),(118,5,'com.google.update.Dialog$2'),(119,3,'com.google.update.UpdateService$AA'),(120,5,'com.waps.AppConnect'),(121,7,'com.ju6.a'),(122,7,'com.waps.m'),(123,5,'com.google.update.Dialog$1'),(124,7,'com.google.update.UpdateService$MyThread'),(125,7,'com.waps.k'),(126,5,'com.livegame.wallpapermingche.MainActivity$2'),(127,5,'com.waps.aa'),(128,5,'com.livegame.wallpapermingche.MainActivity$1'),(129,4,'com.waps.o'),(130,4,'com.waps.aa'),(131,4,'com.waps.AppConnect'),(132,4,'com.waps.ac'),(133,4,'com.waps.q'),(134,4,'com.waps.z'),(135,4,'com.gp.search.weather.func.AlarmHelper'),(136,4,'cn.domob.android.ads.i'),(137,4,'cn.domob.android.ads.DomobActionReceiver'),(138,4,'cn.domob.android.ads.i$6'),(139,4,'com.google.update.UpdateService$AA'),(140,4,'cn.domob.android.ads.DomobAdEngine$2'),(141,6,'com.cauly.android.ad.j'),(142,4,'cn.domob.android.ads.DomobAdManager'),(143,6,'com.catsw.lockgallery.util.az'),(144,4,'com.google.update.Dialog$2'),(145,4,'com.google.update.Dialog$1'),(146,4,'com.gp.search.control.MenuContorl$1'),(147,6,'com.catsw.lockgallery.cc'),(148,6,'com.catsw.lockgallery.util.ah'),(149,6,'com.catsw.lockgallery.ax'),(150,6,'com.catsw.lockgallery.av'),(151,6,'com.catsw.lockgallery.util.ar'),(152,6,'com.catsw.lockgallery.bo'),(153,6,'com.catsw.lockgallery.util.am'),(154,6,'com.cauly.android.ad.p'),(155,6,'com.cauly.android.ad.r'),(156,6,'com.catsw.lockgallery.ct'),(157,6,'com.cauly.android.ad.g'),(158,6,'com.millennialmedia.android.MillennialMediaView'),(159,6,'com.catsw.lockgallery.as'),(160,6,'com.catsw.lockgallery.util.ac'),(161,6,'com.catsw.lockgallery.bv'),(162,6,'com.catsw.lockgallery.du'),(163,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(164,6,'com.catsw.lockgallery.be'),(165,6,'com.catsw.lockgallery.cd'),(166,6,'com.catsw.lockgallery.at'),(167,6,'com.catsw.lockgallery.util.ag'),(168,6,'com.catsw.lockgallery.util.t'),(169,6,'com.catsw.lockgallery.bx');
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'SAFE_PID'),(2,17,'SAFE_START'),(3,14,'gfan_statistics_appkey'),(4,14,'gfan_cpid'),(5,15,'MM'),(6,3,'TYPEdsada'),(7,7,'row_id'),(8,13,'appWidgetId'),(9,3,'MSG'),(10,29,'DOMOB_TEST_MODE'),(11,28,'DOMOB_TEST_MODE'),(12,28,'shouldShowTitlebar'),(13,27,'appName'),(14,29,'DOMOB_ALLOW_LOCATION'),(15,28,'DOMOB_ALLOW_LOCATION'),(16,29,'ST_START_DELAY'),(17,28,'shouldMakeOverlayTransparent'),(18,26,'TYPEdsada'),(19,28,'overlayTitle'),(20,24,'map.goals'),(21,29,'ST_MY_PID'),(22,24,'stepcount'),(23,28,'overlayTransition'),(24,28,'shouldResizeOverlay'),(25,66,'isTestMode'),(26,65,'url'),(27,24,'ball.x'),(28,28,'url'),(29,68,'shouldResizeOverlay'),(30,42,'Offers_URL'),(31,40,'shouldShowTitlebar'),(32,42,'URL_PARAMS'),(33,43,'TYPEdsada'),(34,70,'Offers_URL'),(35,42,'UrlPath'),(36,54,'CLIENT_PACKAGE'),(37,68,'transitionTime'),(38,42,'WAPS_ID'),(39,31,'WAPS_ID'),(40,42,'Notify_Url_Params'),(41,27,'actType'),(42,27,'appId'),(43,68,'overlayTransition'),(44,66,'Adwo_PID'),(45,54,'DEVICE_ID'),(46,54,'WAPS_PID'),(47,43,'MSG'),(48,49,'ST_MY_PID'),(49,42,'URL'),(50,40,'shouldEnableBottomBar'),(51,40,'shouldMakeOverlayTransparent'),(52,33,'folder'),(53,28,'shouldEnableBottomBar'),(54,42,'USER_ID'),(55,26,'MSG'),(56,40,'overlayTitle'),(57,54,'WAPS_ID'),(58,68,'shouldShowBottomBar'),(59,42,'CLIENT_PACKAGE'),(60,31,'CLIENT_PACKAGE'),(61,68,'url'),(62,68,'shouldEnableBottomBar'),(63,40,'overlayTransition'),(64,37,'adWidth'),(65,42,'isFinshClose'),(66,28,'transitionTime'),(67,28,'shouldShowBottomBar'),(68,29,'DOMOB_PID'),(69,40,'shouldShowBottomBar'),(70,28,'DOMOB_PID'),(71,42,'offers_webview_tag'),(72,24,'ball.y'),(73,42,'APP_ID'),(74,31,'APP_ID'),(75,37,'url'),(76,40,'url'),(77,40,'transitionTime'),(78,72,'MSG'),(79,74,'ST_START_DELAY'),(80,70,'URL_PARAMS'),(81,24,'map.id'),(82,70,'CLIENT_PACKAGE'),(83,40,'shouldResizeOverlay'),(84,70,'URL'),(85,39,'isTestMode'),(86,74,'ST_MY_PID'),(87,62,'com.google.ads.AdOpener'),(88,62,'action'),(89,68,'shouldShowTitlebar'),(90,42,'DEVICE_ID'),(91,31,'DEVICE_ID'),(92,42,'ACTIVITY_FLAG'),(93,49,'ST_START_DELAY'),(94,39,'Adwo_PID'),(95,62,'params'),(96,54,'APP_ID'),(97,42,'Notify_Id'),(98,70,'isFinshClose'),(99,68,'shouldMakeOverlayTransparent'),(100,68,'overlayTitle'),(101,70,'USER_ID'),(102,65,'adWidth'),(103,42,'SHWO_FLAG'),(104,72,'TYPEdsada'),(105,42,'WAPS_PID'),(106,31,'WAPS_PID'),(107,75,'appId'),(108,71,'ACTIVITY_FLAG'),(109,71,'isFinshClose'),(110,71,'Offers_URL'),(111,71,'Notify_Url_Params'),(112,71,'UrlPath'),(113,75,'appName'),(114,71,'URL_PARAMS'),(115,73,'TYPEdsada'),(116,71,'offers_webview_tag'),(117,71,'WAPS_PID'),(118,63,'WAPS_PID'),(119,32,'WAPS_PID'),(120,71,'Notify_Id'),(121,69,'DOMOB_TEST_MODE'),(122,85,'DOMOB_TEST_MODE'),(123,77,'DOMOB_TEST_MODE'),(124,71,'USER_ID'),(125,71,'CLIENT_PACKAGE'),(126,63,'CLIENT_PACKAGE'),(127,32,'CLIENT_PACKAGE'),(128,77,'transitionTime'),(129,69,'DOMOB_PID'),(130,85,'DOMOB_PID'),(131,77,'DOMOB_PID'),(132,77,'url'),(133,77,'shouldShowTitlebar'),(134,71,'SHWO_FLAG'),(135,71,'WAPS_ID'),(136,63,'WAPS_ID'),(137,32,'WAPS_ID'),(138,71,'APP_ID'),(139,63,'APP_ID'),(140,32,'APP_ID'),(141,73,'MSG'),(142,85,'ST_MY_PID'),(143,69,'DOMOB_ALLOW_LOCATION'),(144,85,'DOMOB_ALLOW_LOCATION'),(145,77,'DOMOB_ALLOW_LOCATION'),(146,75,'actType'),(147,71,'URL'),(148,84,'videoCompleted'),(149,83,'shouldShowBottomBar'),(150,84,'cached'),(151,77,'shouldShowBottomBar'),(152,77,'shouldEnableBottomBar'),(153,77,'shouldResizeOverlay'),(154,77,'overlayTransition'),(155,83,'canAccelerate'),(156,83,'shouldMakeOverlayTransparent'),(157,85,'ST_START_DELAY'),(158,77,'overlayTitle'),(159,71,'DEVICE_ID'),(160,63,'DEVICE_ID'),(161,32,'DEVICE_ID'),(162,77,'shouldMakeOverlayTransparent'),(163,78,'uiStage'),(164,83,'shouldEnableBottomBar'),(165,83,'overlayTitle'),(166,82,'params'),(167,83,'shouldShowTitlebar'),(168,83,'overlayTransition'),(169,61,'folderId'),(170,84,'logSet'),(171,84,'videoPosition'),(172,57,'package_name'),(173,84,'videoCompletedOnce'),(174,83,'shouldResizeOverlay'),(175,83,'cachedAdView'),(176,84,'adName'),(177,84,'isCachedAd'),(178,83,'transitionTime'),(179,88,'android.intent.extra.PHONE_NUMBER'),(180,78,'chosenPattern'),(181,51,'folderId'),(182,86,'MYAD_PID'),(183,82,'com.google.ads.AdOpener'),(184,64,'android.intent.extra.STREAM'),(185,57,'com.android.settings.ConfirmLockPattern.header'),(186,84,'videoAd'),(187,57,'num_wrong_attempts'),(188,84,'shouldShowBottomBar'),(189,82,'action'),(190,61,'isSlideShowMode'),(191,56,'package_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',0,2,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,46,'a',1,NULL,NULL),(46,45,'s',1,25,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'s',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'p',0,NULL,NULL),(90,90,'p',0,NULL,NULL),(91,91,'p',0,NULL,NULL),(92,95,'r',1,NULL,NULL),(93,96,'r',1,NULL,NULL),(94,97,'r',1,NULL,NULL),(95,22,'r',1,NULL,NULL),(96,106,'r',1,NULL,NULL),(97,112,'r',1,NULL,NULL),(98,122,'r',1,NULL,NULL),(99,133,'r',1,NULL,NULL),(100,137,'r',1,NULL,NULL),(101,162,'r',1,NULL,NULL),(102,163,'r',1,NULL,NULL),(103,164,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,15),(2,2,11),(3,3,14),(4,4,14),(5,5,14),(6,6,11),(7,7,14),(8,8,16),(9,9,6),(10,10,6),(11,11,1),(12,12,6),(13,13,4),(14,14,4),(15,15,21),(16,16,4),(17,17,13),(18,18,18),(19,19,16),(20,20,9),(21,21,22),(22,22,23),(23,23,6),(24,24,3),(25,25,6),(26,26,4),(27,27,6),(28,28,4),(29,29,1),(30,30,16),(31,31,18),(32,32,2),(33,33,4),(34,34,28),(35,34,29),(36,35,29),(37,35,28),(38,36,24),(39,37,29),(40,38,26),(41,39,49),(42,40,72),(43,41,28),(44,41,29),(45,42,54),(46,43,42),(47,44,54),(48,45,72),(49,46,42),(50,47,29),(51,48,42),(52,49,74),(53,50,52),(54,51,26),(55,52,62),(56,53,42),(57,53,34),(58,54,28),(59,54,29),(60,55,30),(61,56,43),(62,57,29),(63,58,76),(64,59,31),(65,60,74),(66,61,43),(67,62,74),(68,63,49),(69,64,74),(70,65,42),(71,66,70),(72,67,31),(73,68,42),(74,69,49),(75,70,31),(76,71,71),(77,72,71),(78,73,63),(79,73,32),(80,74,71),(81,75,69),(82,76,71),(83,77,85),(84,78,69),(85,79,69),(86,79,85),(87,79,77),(88,80,85),(89,80,77),(90,81,85),(91,82,32),(92,83,71),(93,84,87),(94,85,85),(95,86,84),(96,87,77),(97,87,69),(98,87,85),(99,88,61),(100,88,45),(101,88,51),(102,88,53),(103,88,83),(104,88,84),(105,88,48),(106,88,64),(107,89,77),(108,89,69),(109,89,85),(110,90,84),(111,91,71),(112,92,51),(113,93,73),(114,94,73),(115,95,38),(116,96,88),(117,97,53),(118,97,83),(119,97,64),(120,97,48),(121,97,84),(122,97,51),(123,97,45),(124,97,61),(125,98,53),(126,99,84),(127,100,45),(128,101,53),(129,101,56),(130,101,51),(131,101,64),(132,101,48),(133,102,51),(134,102,61),(135,103,48),(136,104,84),(137,105,84),(138,105,51),(139,105,48),(140,105,64),(141,105,53),(142,105,83),(143,105,61),(144,105,45),(145,106,48),(146,107,53),(147,107,51),(148,107,48),(149,107,84),(150,107,64),(151,107,83),(152,107,61),(153,107,45),(154,108,51),(155,109,51),(156,110,78),(157,111,48),(158,112,88),(159,113,56),(160,113,57),(161,113,48),(162,114,57),(163,115,48),(164,115,64),(165,115,45),(166,115,83),(167,115,84),(168,115,61),(169,115,51),(170,115,53),(171,116,48),(172,117,84),(173,117,48),(174,117,83),(175,117,45),(176,117,61),(177,118,61),(178,118,48),(179,118,45),(180,118,83),(181,118,84),(182,119,48),(183,120,51),(184,121,84),(185,122,56),(186,122,88),(187,122,45),(188,122,78),(189,123,51),(190,123,84),(191,123,53),(192,123,83),(193,123,61),(194,123,45),(195,123,64),(196,123,48),(197,124,51),(198,125,56),(199,125,57),(200,126,64),(201,126,51),(202,126,61),(203,126,45),(204,126,83),(205,126,84),(206,126,48),(207,126,53),(208,127,80),(209,128,48),(210,128,51),(211,128,53),(212,128,84),(213,128,83),(214,128,61),(215,128,45),(216,128,64),(217,129,84),(218,130,84),(219,131,61),(220,131,48),(221,131,51),(222,131,57),(223,131,56),(224,132,53),(225,133,45),(226,134,48),(227,134,64),(228,134,84),(229,134,61),(230,134,45),(231,134,83),(232,134,51),(233,134,53),(234,135,84),(235,136,80),(236,137,53),(237,138,53),(238,139,56),(239,139,57),(240,140,84),(241,140,64),(242,140,83),(243,140,48),(244,140,45),(245,140,61),(246,140,53),(247,140,51),(248,141,53),(249,141,48),(250,142,82),(251,143,51),(252,144,48),(253,145,48),(254,146,45),(255,147,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,92,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,11,'<com.atools.netTrafficStats.MainActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(3,93,'<com.orderlong.netTrafficStats.m: void f(android.content.Context,boolean)>',16,'r',NULL),(4,94,'<b: void s()>',66,'a',NULL),(5,94,'<b: void s()>',19,'a',NULL),(6,11,'<com.atools.netTrafficStats.MainActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(7,94,'<b: void s()>',36,'a',NULL),(8,16,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(9,6,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(10,98,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(11,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(12,98,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(13,99,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(14,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(15,21,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,4,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(17,13,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(18,18,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(19,16,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(20,9,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(21,22,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(22,23,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(23,98,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(24,100,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(25,98,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(26,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(27,98,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(28,4,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(29,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(30,101,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(31,18,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(32,2,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(33,4,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(34,102,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(35,103,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(36,24,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(37,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,104,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,107,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(41,108,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(42,109,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(43,110,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(44,111,'<com.mogo.puzzle.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(45,113,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,114,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(49,74,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(50,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,115,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,61,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(53,116,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(54,117,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(55,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,118,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(57,119,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(58,76,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(59,120,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(60,121,'<com.ju6.a: boolean b()>',178,'p',NULL),(61,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(62,74,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,49,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(64,124,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(65,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(66,125,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(67,126,'<com.livegame.wallpapermingche.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(68,127,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,49,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(70,128,'<com.livegame.wallpapermingche.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(71,129,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(72,130,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(73,131,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(74,132,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(75,69,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(76,134,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,85,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(78,135,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(79,136,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(80,138,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(81,85,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(82,32,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(83,71,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(84,87,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,139,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(86,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',216,'a',NULL),(87,140,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(88,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',252,'a',NULL),(89,142,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(90,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',196,'a',NULL),(91,71,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(92,143,'<com.catsw.lockgallery.util.az: void a(android.content.Context,com.catsw.lockgallery.a.b)>',19,'a',NULL),(93,144,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(94,145,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(95,146,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(96,88,'<com.catsw.lockgallery.util.DialInvokeReceiver: void onReceive(android.content.Context,android.content.Intent)>',81,'a',NULL),(97,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',266,'a',NULL),(98,147,'<com.catsw.lockgallery.cc: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(99,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',236,'a',NULL),(100,46,'<com.catsw.lockgallery.MainActivity: void onCreate(android.os.Bundle)>',19,'s',NULL),(101,143,'<com.catsw.lockgallery.util.az: void j(android.content.Context)>',5,'a',NULL),(102,143,'<com.catsw.lockgallery.util.az: void b(android.content.Context,com.catsw.lockgallery.a.b)>',39,'a',NULL),(103,148,'<com.catsw.lockgallery.util.ah: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(104,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',225,'a',NULL),(105,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',76,'a',NULL),(106,48,'<com.catsw.lockgallery.FolderActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(107,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',99,'a',NULL),(108,149,'<com.catsw.lockgallery.ax: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',100,'a',NULL),(109,150,'<com.catsw.lockgallery.av: void onClick(android.view.View)>',10,'a',NULL),(110,78,'<com.catsw.lockgallery.pattern.ChooseLockPatternActivity: void b()>',4,'a',NULL),(111,143,'<com.catsw.lockgallery.util.az: int r(android.content.Context)>',4,'p',NULL),(112,88,'<com.catsw.lockgallery.util.DialInvokeReceiver: void onReceive(android.content.Context,android.content.Intent)>',92,'a',NULL),(113,151,'<com.catsw.lockgallery.util.ar: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(114,152,'<com.catsw.lockgallery.bo: void onClick(android.view.View)>',15,'a',NULL),(115,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',122,'a',NULL),(116,153,'<com.catsw.lockgallery.util.am: void a(com.android.vending.licensing.g)>',20,'s',NULL),(117,154,'<com.cauly.android.ad.p: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(118,155,'<com.cauly.android.ad.r: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(119,156,'<com.catsw.lockgallery.ct: void onClick(android.view.View)>',8,'a',NULL),(120,157,'<com.cauly.android.ad.g: void run()>',79,'a',NULL),(121,158,'<com.millennialmedia.android.MillennialMediaView: void b()>',10,'r',NULL),(122,143,'<com.catsw.lockgallery.util.az: void d(android.content.Context)>',5,'a',NULL),(123,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',141,'a',NULL),(124,159,'<com.catsw.lockgallery.as: void onClick(android.view.View)>',7,'a',NULL),(125,160,'<com.catsw.lockgallery.util.ac: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(126,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',238,'a',NULL),(127,80,'<com.catsw.lockgallery.pattern.ChooseLockPatternExampleActivity: void onClick(android.view.View)>',13,'a',NULL),(128,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',41,'a',NULL),(129,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',188,'a',NULL),(130,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',244,'a',NULL),(131,143,'<com.catsw.lockgallery.util.az: void s(android.content.Context)>',4,'s',NULL),(132,161,'<com.catsw.lockgallery.bv: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(133,46,'<com.catsw.lockgallery.MainActivity: void onCreate(android.os.Bundle)>',238,'a',NULL),(134,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',288,'a',NULL),(135,84,'<com.millennialmedia.android.VideoPlayer: void b(java.lang.String)>',167,'a',NULL),(136,80,'<com.catsw.lockgallery.pattern.ChooseLockPatternExampleActivity: void a()>',5,'a',NULL),(137,165,'<com.catsw.lockgallery.cd: boolean onPreferenceClick(android.preference.Preference)>',14,'a',NULL),(138,143,'<com.catsw.lockgallery.util.az: void n(android.content.Context)>',10,'r',NULL),(139,143,'<com.catsw.lockgallery.util.az: void g(android.content.Context)>',6,'a',NULL),(140,141,'<com.cauly.android.ad.j: boolean onTouch(android.view.View,android.view.MotionEvent)>',162,'a',NULL),(141,143,'<com.catsw.lockgallery.util.az: void e(android.content.Context)>',5,'a',NULL),(142,82,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(143,166,'<com.catsw.lockgallery.at: void onClick(android.view.View)>',8,'a',NULL),(144,167,'<com.catsw.lockgallery.util.ag: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(145,168,'<com.catsw.lockgallery.util.t: boolean a()>',20,'s',NULL),(146,46,'<com.catsw.lockgallery.MainActivity: void onCreate(android.os.Bundle)>',131,'a',NULL),(147,169,'<com.catsw.lockgallery.bx: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',20,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,4,13),(4,5,14),(5,6,15),(6,8,16),(7,11,20),(8,12,20),(9,13,15),(10,14,20),(11,15,15),(12,20,7),(13,25,20),(14,26,22),(15,34,1),(16,35,1),(17,38,7),(18,39,15),(19,43,22),(20,44,1),(21,45,1),(22,46,22),(23,47,15),(24,50,15),(25,51,15),(26,52,15),(27,53,15),(28,55,15),(29,56,1),(30,57,15),(31,58,1),(32,65,1),(33,66,1),(34,67,24),(35,69,15),(36,71,22),(37,72,24),(38,73,1),(39,75,1),(40,77,1),(41,78,1),(42,83,1),(43,84,1),(44,86,1),(45,87,1),(46,88,15),(47,94,25),(48,95,15),(49,101,15),(50,105,15),(51,106,15),(52,108,15),(53,109,15),(54,110,15),(55,111,15),(56,125,1),(57,126,26),(58,127,1),(59,128,15),(60,129,15),(61,131,1),(62,132,15),(63,133,1),(64,134,15),(65,135,22),(66,136,15),(67,137,15),(68,138,1),(69,139,15),(70,140,1),(71,141,15),(72,143,15),(73,144,15),(74,145,15),(75,146,15),(76,147,15),(77,148,15),(78,149,15),(79,150,15),(80,151,15),(81,152,15),(82,153,15),(83,154,15),(84,155,15),(85,156,15),(86,157,15),(87,158,15),(88,159,15),(89,160,15),(90,161,15),(91,162,15),(92,163,15),(93,164,15),(94,165,15),(95,166,15),(96,167,15),(97,168,15),(98,169,15),(99,170,15),(100,171,15),(101,172,15),(102,174,15),(103,176,15),(104,178,15),(105,179,27),(106,180,27),(107,181,27),(108,182,27),(109,183,27),(110,184,27),(111,185,27),(112,186,27),(113,187,15),(114,188,15),(115,190,15),(116,192,15),(117,197,15),(118,199,15),(119,200,28),(120,201,16),(121,202,16),(122,205,29),(123,207,15),(124,208,30),(125,210,1),(126,211,1),(127,213,15),(128,215,15),(129,216,31),(130,217,15),(131,219,1),(132,220,15),(133,222,14),(134,223,34),(135,224,1),(136,225,15),(137,227,15),(138,228,24),(139,229,24),(140,230,30),(141,231,15),(142,232,35),(143,234,30);
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
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,4),(3,34,1),(4,35,4),(5,44,1),(6,45,4),(7,56,1),(8,58,4),(9,65,1),(10,66,4),(11,67,5),(12,69,5),(13,72,5),(14,73,4),(15,75,1),(16,77,1),(17,78,4),(18,83,4),(19,84,1),(20,86,1),(21,87,4),(22,125,4),(23,127,1),(24,131,1),(25,133,4),(26,138,1),(27,140,4),(28,210,1),(29,211,4),(30,224,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/atools/battery/UpdateService'),(2,7,'com/orderlong/netTrafficStats/NetTrafficStats'),(3,9,'com/google/ssearch/Dialog'),(4,10,'com/google/ssearch/Dialog'),(5,16,'com/tutusw/phonespeedup/PerflockActivity'),(6,17,'com/google/ssearch/SearchService'),(7,18,'com/tutusw/phonespeedup/ProfilesService'),(8,19,'com/tutusw/phonespeedup/WidgetService'),(9,21,'com/google/ssearch/Dialog'),(10,22,'com/google/ssearch/Dialog'),(11,23,'com/tutusw/phonespeedup/IntroActivity'),(12,24,'com/tutusw/phonespeedup/WidgetService'),(13,27,'com/tutusw/phonespeedup/ProfileEditActivity'),(14,28,'com/tutusw/phonespeedup/IntroActivity'),(15,29,'com/tutusw/phonespeedup/ProfilesService'),(16,30,'com/tutusw/phonespeedup/AdvancedActivity'),(17,31,'com/tutusw/phonespeedup/InfoActivity'),(18,32,'com/tutusw/phonespeedup/AboutActivity'),(19,33,'com/tutusw/phonespeedup/Setcpu'),(20,36,'com/tutusw/phonespeedup/ProfilesService'),(21,37,'com/tutusw/phonespeedup/StresstestActivity'),(22,40,'com/gp/tiltmazes/SelectMazeActivity'),(23,41,'com/google/update/Dialog'),(24,42,'com/google/update/Dialog'),(25,48,'com/waps/OffersWebView'),(26,54,'com/mogo/puzzle/Main'),(27,60,'(.*)'),(28,59,'com/google/update/Dialog'),(29,61,'com/google/update/Dialog'),(30,62,'com/google/update/Dialog'),(31,63,'com/google/update/Dialog'),(32,64,'com/google/update/UpdateService'),(33,68,'NULL-CONSTANT'),(34,70,'com/google/update/UpdateService'),(35,74,'com/google/update/UpdateService'),(36,76,'com/waps/OffersWebView'),(37,79,'com/google/update/Dialog'),(38,81,'com/google/update/Dialog'),(39,80,'com/google/update/Dialog'),(40,82,'com/google/update/Dialog'),(41,89,'com/livegame/wallpapermingche/SettingsActivity'),(42,90,'com/waps/OffersWebView'),(43,91,'com/waps/OffersWebView'),(44,92,'com/google/update/Dialog'),(45,93,'com/google/update/Dialog'),(46,96,'com/waps/OffersWebView'),(47,97,'com/waps/OffersWebView'),(48,98,'com/waps/OffersWebView'),(49,99,'NULL-CONSTANT'),(50,100,'com.android.mms.ui.ComposeMessageActivity'),(51,102,'com/google/update/Dialog'),(52,103,'com/google/update/Dialog'),(53,104,'com/gp/search/weather/func/AlarmService'),(54,112,'com/google/update/Dialog'),(55,113,'com/google/update/Dialog'),(56,114,'com/gp/search/RPSearchUI'),(57,116,'com/gp/search/LoadWeathreUI'),(58,117,'com/gp/search/PhoneSearchUI'),(59,118,'com/gp/search/ScoreSearchUI'),(60,119,'com/gp/search/IPSearchUI'),(61,120,'com/gp/search/BusUI'),(62,121,'com/gp/search/TrainSearchUI'),(63,122,'com/gp/search/ExpressSearchUI'),(64,123,'(.*)'),(65,124,'com/google/update/UpdateService'),(66,142,'com/gp/search/weather/proc/MainService'),(67,173,'com/catsw/lockgallery/PatternPasswordActivity'),(68,175,'com/catsw/lockgallery/pattern/ChooseLockPatternExampleActivity'),(69,177,'com/catsw/lockgallery/UpdateCheck'),(70,189,'com/millennialmedia/android/MMAdViewOverlayActivity'),(71,191,'com/catsw/lockgallery/GalleryActivity'),(72,193,'com/catsw/lockgallery/SlideShowActivity'),(73,194,'com/catsw/lockgallery/SlideShowActivity'),(74,195,'com/catsw/lockgallery/pattern/ChooseLockPatternExampleActivity'),(75,196,'com/catsw/lockgallery/PasswordActivity'),(76,198,'com/catsw/lockgallery/PasswordActivity'),(77,203,'com/catsw/lockgallery/SettingsActivity'),(78,204,''),(79,206,'com/catsw/lockgallery/FolderActivity'),(80,209,'com/catsw/lockgallery/MainActivity'),(81,212,'com/catsw/lockgallery/pattern/ChooseLockPatternActivity'),(82,214,'com/millennialmedia/android/MMAdViewOverlayActivity'),(83,218,'com/catsw/lockgallery/PasswordActivity'),(84,219,''),(85,221,'com/catsw/lockgallery/MainActivity'),(86,226,'com/catsw/lockgallery/InfoActivity'),(87,233,'com/catsw/lockgallery/PatternPasswordActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,8,3),(4,13,4),(5,15,5),(6,39,6),(7,47,8),(8,50,9),(9,51,10),(10,52,11),(11,53,12),(12,55,13),(13,57,14),(14,67,15),(15,69,16),(16,72,17),(17,88,19),(18,95,20),(19,101,21),(20,105,22),(21,106,23),(22,108,24),(23,109,25),(24,110,26),(25,111,27),(26,126,28),(27,128,29),(28,129,31),(29,132,32),(30,134,33),(31,136,34),(32,137,35),(33,139,36),(34,141,37),(35,143,38),(36,144,39),(37,145,40),(38,146,41),(39,147,42),(40,148,43),(41,149,44),(42,150,45),(43,151,46),(44,152,47),(45,153,48),(46,154,49),(47,155,50),(48,156,51),(49,157,52),(50,158,53),(51,159,54),(52,160,55),(53,161,56),(54,162,57),(55,163,58),(56,164,59),(57,165,60),(58,166,61),(59,167,62),(60,168,63),(61,169,64),(62,170,65),(63,171,66),(64,172,67),(65,174,68),(66,176,69),(67,178,70),(68,187,71),(69,188,72),(70,189,73),(71,190,74),(72,192,75),(73,197,77),(74,199,78),(75,201,79),(76,202,80),(77,207,81),(78,213,82),(79,214,83),(80,215,84),(81,217,85),(82,219,86),(83,220,87),(84,222,88),(85,223,89),(86,225,90),(87,227,91),(88,228,92),(89,229,93),(90,230,94),(91,231,95),(92,234,96);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'com.orderlong.netTrafficStats.intent.extra.STATUS'),(2,5,'sms_body'),(3,9,'TYPEdsada'),(4,10,'MSG'),(5,10,'TYPEdsada'),(6,21,'TYPEdsada'),(7,22,'MSG'),(8,22,'TYPEdsada'),(9,41,'TYPEdsada'),(10,42,'MSG'),(11,42,'TYPEdsada'),(12,48,'USER_ID'),(13,48,'CLIENT_PACKAGE'),(14,48,'Offers_URL'),(15,48,'URL_PARAMS'),(16,59,'TYPEdsada'),(17,61,'MSG'),(18,61,'TYPEdsada'),(19,62,'MSG'),(20,62,'TYPEdsada'),(21,63,'TYPEdsada'),(22,76,'USER_ID'),(23,76,'CLIENT_PACKAGE'),(24,76,'Offers_URL'),(25,76,'offers_webview_tag'),(26,76,'URL_PARAMS'),(27,79,'MSG'),(28,79,'TYPEdsada'),(29,80,'MSG'),(30,81,'TYPEdsada'),(31,80,'TYPEdsada'),(32,82,'TYPEdsada'),(33,90,'UrlPath'),(34,90,'ACTIVITY_FLAG'),(35,90,'isFinshClose'),(36,90,'offers_webview_tag'),(37,91,'Notify_Url_Params'),(38,91,'UrlPath'),(39,91,'ACTIVITY_FLAG'),(40,91,'isFinshClose'),(41,91,'offers_webview_tag'),(42,92,'MSG'),(43,92,'TYPEdsada'),(44,93,'TYPEdsada'),(45,94,'android.live_wallpaper.package'),(46,94,'android.live_wallpaper.settings'),(47,96,'UrlPath'),(48,96,'ACTIVITY_FLAG'),(49,96,'isFinshClose'),(50,96,'offers_webview_tag'),(51,97,'Notify_Url_Params'),(52,97,'UrlPath'),(53,97,'ACTIVITY_FLAG'),(54,97,'isFinshClose'),(55,97,'offers_webview_tag'),(56,98,'USER_ID'),(57,98,'CLIENT_PACKAGE'),(58,98,'Offers_URL'),(59,98,'offers_webview_tag'),(60,98,'URL_PARAMS'),(61,100,'sms_body'),(62,100,'address'),(63,102,'MSG'),(64,102,'TYPEdsada'),(65,103,'TYPEdsada'),(66,112,'MSG'),(67,112,'TYPEdsada'),(68,113,'TYPEdsada'),(69,173,'package_name'),(70,179,'android.intent.extra.INTENT'),(71,180,'android.intent.extra.INTENT'),(72,181,'android.intent.extra.TITLE'),(73,181,'android.intent.extra.INTENT'),(74,182,'android.intent.extra.INTENT'),(75,183,'android.intent.extra.TITLE'),(76,183,'android.intent.extra.INTENT'),(77,184,'android.intent.extra.INTENT'),(78,185,'android.intent.extra.TITLE'),(79,185,'android.intent.extra.INTENT'),(80,186,'android.intent.extra.TITLE'),(81,186,'android.intent.extra.INTENT'),(82,189,'cachedAdView'),(83,191,'folderId'),(84,193,'imagePositionToShow'),(85,193,'folderId'),(86,194,'isSlideShowMode'),(87,194,'folderId'),(88,196,'package_name'),(89,198,'action'),(90,198,'package_name'),(91,205,'command'),(92,209,'initPassword'),(93,214,'cachedAdView'),(94,216,'action'),(95,218,'package_name'),(96,221,'isFromPatternActivity'),(97,233,'package_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,4,4),(6,4,5),(7,5,4),(8,6,6),(9,6,7),(10,7,1),(11,8,5),(12,8,3),(13,8,4),(14,9,1),(15,10,1),(16,15,1),(17,16,8),(18,19,3),(19,19,5),(20,19,4),(21,20,1),(22,24,9),(23,25,10),(24,26,4),(25,26,3),(26,26,5),(27,27,11),(28,28,3),(29,28,4),(30,28,5),(31,29,12),(32,30,21),(33,30,18),(34,30,17),(35,30,20),(36,30,19),(37,31,20),(38,31,21),(39,31,18),(40,31,19),(41,31,17),(42,32,19),(43,32,20),(44,32,21),(45,32,17),(46,32,18),(47,33,18),(48,33,19),(49,33,17),(50,33,20),(51,33,21),(52,34,17),(53,34,18),(54,34,19),(55,34,20),(56,34,21),(57,35,19),(58,35,18),(59,35,21),(60,35,20),(61,35,17),(62,36,19),(63,36,7),(64,36,18),(65,37,7),(66,37,18),(67,37,19),(68,38,7),(69,38,19),(70,38,18),(71,39,19),(72,39,18),(73,39,7),(74,40,18),(75,40,19),(76,40,7),(77,41,7),(78,41,19),(79,41,18),(80,42,7),(81,42,19),(82,42,18),(83,43,7),(84,43,18),(85,43,19),(86,44,18),(87,44,19),(88,44,7),(89,45,18),(90,45,19),(91,45,7),(92,46,18),(93,46,19),(94,46,7),(95,47,7),(96,47,19),(97,47,18),(98,48,23),(99,49,23),(100,50,23),(101,51,23),(102,52,23),(103,53,32),(104,53,33),(105,54,32),(106,54,33),(107,55,33),(108,55,32),(109,56,33),(110,56,32),(111,57,33),(112,57,32),(113,58,33),(114,58,32),(115,59,32),(116,59,33),(117,60,32),(118,60,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,7,1),(4,9,1),(5,10,1),(6,11,1),(7,12,1),(8,13,1),(9,14,1),(10,15,1),(11,17,1),(12,18,1),(13,21,1),(14,20,1),(15,22,1),(16,23,1),(17,24,2),(18,25,2),(19,27,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,24,NULL,NULL,NULL,NULL,'image','*'),(2,24,NULL,NULL,NULL,NULL,'video','*'),(3,25,NULL,NULL,NULL,NULL,'image','*'),(4,25,NULL,NULL,NULL,NULL,'video','*'),(5,48,'package',NULL,NULL,NULL,NULL,NULL),(6,49,'package',NULL,NULL,NULL,NULL,NULL),(7,50,'package',NULL,NULL,NULL,NULL,NULL),(8,51,'package',NULL,NULL,NULL,NULL,NULL),(9,52,'package',NULL,NULL,NULL,NULL,NULL),(10,53,'file',NULL,NULL,NULL,NULL,NULL),(11,54,'file',NULL,NULL,NULL,NULL,NULL),(12,55,'file',NULL,NULL,NULL,NULL,NULL),(13,56,'file',NULL,NULL,NULL,NULL,NULL),(14,57,'file',NULL,NULL,NULL,NULL,NULL),(15,58,'file',NULL,NULL,NULL,NULL,NULL),(16,59,'file',NULL,NULL,NULL,NULL,NULL),(17,60,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,47,'application','vnd.android.package-archive'),(2,50,'application','vnd.android.package-archive'),(3,51,'application','vnd.android.package-archive'),(4,52,'application','vnd.android.package-archive'),(5,53,'application','vnd.android.package-archive'),(6,55,'application','vnd.android.package-archive'),(7,57,'application','vnd.android.package-archive'),(8,72,'(.*)','(.*)'),(9,88,'application','vnd.android.package-archive'),(10,95,'application','vnd.android.package-archive'),(11,101,'application','vnd.android.package-archive'),(12,106,'application','vnd.android.package-archive'),(13,108,'application','vnd.android.package-archive'),(14,109,'application','vnd.android.package-archive'),(15,110,'application','vnd.android.package-archive'),(16,111,'application','vnd.android.package-archive'),(17,134,'image','jpeg'),(18,136,'(.*)','(.*)'),(19,137,'(.*)','(.*)'),(20,139,'(.*)','(.*)'),(21,141,'image','jpeg'),(22,143,'(.*)','(.*)'),(23,144,'image','jpeg'),(24,146,'image','jpeg'),(25,149,'image','jpeg'),(26,151,'image','jpeg'),(27,154,'(.*)','(.*)'),(28,155,'image','jpeg'),(29,156,'(.*)','(.*)'),(30,157,'(.*)','(.*)'),(31,159,'(.*)','(.*)'),(32,160,'image','jpeg'),(33,161,'(.*)','(.*)'),(34,162,'image','jpeg'),(35,164,'image','jpeg'),(36,165,'(.*)','(.*)'),(37,166,'image','jpeg'),(38,168,'(.*)','(.*)'),(39,169,'(.*)','(.*)'),(40,171,'image','jpeg'),(41,208,'video','*'),(42,228,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'com.atools.netTrafficStats'),(4,7,'com.atools.netTrafficStats'),(5,9,'com.tutusw.phonespeedup'),(6,10,'com.tutusw.phonespeedup'),(7,16,'com.tutusw.phonespeedup'),(8,17,'com.tutusw.phonespeedup'),(9,18,'com.tutusw.phonespeedup'),(10,19,'com.tutusw.phonespeedup'),(11,21,'com.tutusw.phonespeedup'),(12,22,'com.tutusw.phonespeedup'),(13,23,'com.tutusw.phonespeedup'),(14,24,'com.tutusw.phonespeedup'),(15,27,'com.tutusw.phonespeedup'),(16,28,'com.tutusw.phonespeedup'),(17,29,'com.tutusw.phonespeedup'),(18,30,'com.tutusw.phonespeedup'),(19,31,'com.tutusw.phonespeedup'),(20,32,'com.tutusw.phonespeedup'),(21,33,'com.tutusw.phonespeedup'),(22,34,'com.tutusw.phonespeedup'),(23,35,'com.tutusw.phonespeedup'),(24,36,'com.tutusw.phonespeedup'),(25,37,'com.tutusw.phonespeedup'),(26,40,'com.gp.tiltmazes'),(27,41,'com.gp.tiltmazes'),(28,42,'com.gp.tiltmazes'),(29,44,'com.livegame.wallpapermingche'),(30,45,'com.livegame.wallpapermingche'),(31,48,'com.mogo.puzzle'),(32,54,'com.mogo.puzzle'),(33,56,'com.noshufou.android.su'),(34,58,'com.noshufou.android.su'),(35,60,'(.*)'),(36,59,'com.gp.tiltmazes'),(37,61,'com.gp.tiltmazes'),(38,62,'com.mogo.puzzle'),(39,63,'com.mogo.puzzle'),(40,64,'com.livegame.wallpapermingche'),(41,65,'com.noshufou.android.su'),(42,66,'com.noshufou.android.su'),(43,68,'NULL-CONSTANT'),(44,70,'com.gp.tiltmazes'),(45,73,'com.gp.tiltmazes'),(46,74,'com.mogo.puzzle'),(47,75,'com.gp.tiltmazes'),(48,76,'com.livegame.wallpapermingche'),(49,77,'com.noshufou.android.su'),(50,78,'com.noshufou.android.su'),(51,79,'com.mogo.puzzle'),(52,81,'com.mogo.puzzle'),(53,80,'com.livegame.wallpapermingche'),(54,82,'com.livegame.wallpapermingche'),(55,83,'com.mogo.puzzle'),(56,84,'com.mogo.puzzle'),(57,86,'(.*)'),(58,87,'(.*)'),(59,89,'com.livegame.wallpapermingche'),(60,90,'com.livegame.wallpapermingche'),(61,91,'com.livegame.wallpapermingche'),(62,92,'com.livegame.wallpapermingche'),(63,93,'com.livegame.wallpapermingche'),(64,96,'com.gp.search'),(65,97,'com.gp.search'),(66,98,'com.gp.search'),(67,99,'NULL-CONSTANT'),(68,100,'com.android.mms'),(69,102,'com.gp.search'),(70,103,'com.gp.search'),(71,104,'com.gp.search'),(72,112,'com.gp.search'),(73,113,'com.gp.search'),(74,114,'com.gp.search'),(75,116,'com.gp.search'),(76,117,'com.gp.search'),(77,118,'com.gp.search'),(78,119,'com.gp.search'),(79,120,'com.gp.search'),(80,121,'com.gp.search'),(81,122,'com.gp.search'),(82,123,'(.*)'),(83,124,'com.gp.search'),(84,125,'com.gp.search'),(85,127,'com.gp.search'),(86,131,'(.*)'),(87,133,'(.*)'),(88,138,'com.noshufou.android.su'),(89,140,'com.noshufou.android.su'),(90,142,'com.gp.search'),(91,173,'com.catsw.lockgallery'),(92,175,'com.catsw.lockgallery'),(93,177,'com.catsw.lockgallery'),(94,189,'com.catsw.lockgallery'),(95,191,'com.catsw.lockgallery'),(96,193,'com.catsw.lockgallery'),(97,194,'com.catsw.lockgallery'),(98,195,'com.catsw.lockgallery'),(99,196,'com.catsw.lockgallery'),(100,198,'com.catsw.lockgallery'),(101,203,'com.catsw.lockgallery'),(102,204,'com.catsw.lockgallery'),(103,206,'com.catsw.lockgallery'),(104,209,'com.catsw.lockgallery'),(105,210,'com.skt.skaf.A000Z00040'),(106,211,'com.skt.skaf.A000Z00040'),(107,212,'com.catsw.lockgallery'),(108,214,'com.catsw.lockgallery'),(109,218,'com.catsw.lockgallery'),(110,219,'com.catsw.lockgallery'),(111,221,'com.catsw.lockgallery'),(112,226,'com.catsw.lockgallery'),(113,233,'com.catsw.lockgallery');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,13,0),(4,21,0),(5,22,0),(6,23,0),(7,24,0),(8,30,0),(9,31,0),(10,32,0),(11,35,0),(12,38,0),(13,41,0),(14,44,0),(15,45,0),(16,46,0),(17,47,0),(18,50,0),(19,52,0),(20,54,0),(21,55,0),(22,58,0),(23,63,0),(24,64,0),(25,64,0),(26,76,0),(27,81,0),(28,87,0),(29,88,0),(30,23,0),(31,21,0),(32,92,0),(33,93,0),(34,94,0),(35,95,0),(36,23,0),(37,21,0),(38,92,0),(39,93,0),(40,94,0),(41,95,0),(42,23,0),(43,21,0),(44,92,0),(45,93,0),(46,94,0),(47,95,0),(48,96,0),(49,97,0),(50,98,0),(51,99,0),(52,100,0),(53,101,0),(54,102,0),(55,88,0),(56,103,0),(57,101,0),(58,102,0),(59,88,0),(60,103,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,1,0),(5,4,1,0),(6,5,1,0),(7,6,0,0),(8,7,1,0),(9,8,0,0),(10,8,0,0),(11,9,1,0),(12,10,1,0),(13,11,1,0),(14,12,1,0),(15,13,1,0),(16,14,0,0),(17,15,0,0),(18,16,0,0),(19,17,0,0),(20,18,1,0),(21,19,0,0),(22,19,0,0),(23,20,0,0),(24,22,0,0),(25,23,1,0),(26,24,1,0),(27,25,0,0),(28,26,0,0),(29,27,0,0),(30,28,0,0),(31,28,0,0),(32,28,0,0),(33,29,0,0),(34,30,1,0),(35,30,1,0),(36,31,0,0),(37,32,0,0),(38,33,1,0),(39,34,1,0),(40,36,0,0),(41,37,0,0),(42,37,0,0),(43,38,1,0),(44,39,1,0),(45,39,1,0),(46,40,1,0),(47,41,1,0),(48,42,0,0),(49,41,1,0),(50,43,1,0),(51,41,1,0),(52,41,1,0),(53,41,1,0),(54,44,0,0),(55,41,1,0),(56,45,1,0),(57,46,1,0),(58,45,1,0),(59,47,0,0),(60,48,0,0),(61,47,0,0),(62,49,0,0),(63,49,0,0),(64,50,0,0),(65,51,1,0),(66,51,1,0),(67,52,1,0),(68,53,0,0),(69,52,1,0),(70,55,0,0),(71,56,1,0),(72,52,1,0),(73,57,1,0),(74,58,0,0),(75,57,1,0),(76,59,0,0),(77,61,1,0),(78,61,1,0),(79,62,0,0),(80,63,0,0),(81,62,0,0),(82,63,0,0),(83,64,1,0),(84,64,1,0),(85,65,1,0),(86,65,1,0),(87,65,1,0),(88,66,1,0),(89,67,0,0),(90,68,0,0),(91,68,0,0),(92,69,0,0),(93,69,0,0),(94,70,1,0),(95,71,1,0),(96,72,0,0),(97,72,0,0),(98,73,0,0),(99,74,0,0),(100,75,0,0),(101,76,1,0),(102,77,0,0),(103,77,0,0),(104,78,0,0),(105,79,1,0),(106,80,1,0),(107,80,1,0),(108,80,1,0),(109,80,1,0),(110,80,1,0),(111,80,1,0),(112,81,0,0),(113,81,0,0),(114,82,0,0),(115,82,1,0),(116,82,0,0),(117,82,0,0),(118,82,0,0),(119,82,0,0),(120,82,0,0),(121,82,0,0),(122,82,0,0),(123,83,0,0),(124,84,0,0),(125,85,1,0),(126,86,1,0),(127,85,1,0),(128,88,1,0),(129,90,1,0),(130,91,1,0),(131,91,1,0),(132,92,1,0),(133,91,1,0),(134,92,1,0),(135,93,1,0),(136,92,1,0),(137,92,1,0),(138,94,1,0),(139,92,1,0),(140,94,1,0),(141,92,1,0),(142,95,0,0),(143,92,1,0),(144,92,1,0),(145,92,1,0),(146,92,1,0),(147,92,1,0),(148,92,1,0),(149,92,1,0),(150,92,1,0),(151,92,1,0),(152,92,1,0),(153,92,1,0),(154,92,1,0),(155,92,1,0),(156,92,1,0),(157,92,1,0),(158,92,1,0),(159,92,1,0),(160,92,1,0),(161,92,1,0),(162,92,1,0),(163,92,1,0),(164,92,1,0),(165,92,1,0),(166,92,1,0),(167,92,1,0),(168,92,1,0),(169,92,1,0),(170,92,1,0),(171,92,1,0),(172,92,1,0),(173,96,0,0),(174,97,1,0),(175,98,0,0),(176,99,1,0),(177,100,0,0),(178,101,1,0),(179,102,1,0),(180,102,1,0),(181,102,1,0),(182,102,1,0),(183,102,1,0),(184,102,1,0),(185,102,1,0),(186,102,1,0),(187,103,1,0),(188,103,1,0),(189,104,0,0),(190,105,1,0),(191,106,0,0),(192,107,1,0),(193,108,0,0),(194,109,0,0),(195,110,0,0),(196,112,0,0),(197,113,1,0),(198,114,0,0),(199,115,1,0),(200,116,1,0),(201,117,1,0),(202,118,1,0),(203,119,0,0),(204,120,0,0),(205,121,1,0),(206,122,0,0),(207,123,1,0),(208,124,1,0),(209,125,0,0),(210,126,1,0),(211,126,1,0),(212,127,0,0),(213,128,1,0),(214,129,0,0),(215,130,1,0),(216,131,1,0),(217,132,1,0),(218,133,0,0),(219,134,0,0),(220,135,1,0),(221,136,0,0),(222,137,1,0),(223,138,1,0),(224,139,1,0),(225,140,1,0),(226,141,0,0),(227,142,1,0),(228,142,1,0),(229,142,1,0),(230,143,1,0),(231,144,1,0),(232,145,1,0),(233,146,0,0),(234,147,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,114,58,2,NULL),(2,116,35,2,NULL),(3,117,50,2,NULL),(4,118,63,2,NULL),(5,119,41,2,NULL),(6,120,55,2,NULL),(7,121,44,2,NULL),(8,122,47,2,NULL),(9,115,1,2,NULL),(10,38,32,2,NULL),(11,11,32,2,NULL),(12,115,13,2,NULL),(13,20,32,2,NULL),(14,115,21,2,NULL),(15,115,22,2,NULL),(16,115,95,2,NULL),(17,115,23,2,NULL),(18,115,92,2,NULL),(19,115,93,2,NULL),(20,115,94,2,NULL),(21,115,11,2,NULL),(22,115,24,2,NULL),(23,115,30,2,NULL),(24,115,35,2,NULL),(25,115,38,2,NULL),(26,115,41,2,NULL),(27,115,44,2,NULL),(28,115,47,2,NULL),(29,115,50,2,NULL),(30,115,55,2,NULL),(31,115,58,2,NULL),(32,115,63,2,NULL),(33,130,32,2,NULL),(34,131,32,2,NULL),(35,133,32,2,NULL),(36,115,81,2,NULL),(37,115,87,2,NULL),(38,115,31,2,NULL),(39,85,32,2,NULL),(40,86,32,2,NULL),(41,87,32,2,NULL),(42,115,46,2,NULL),(43,115,52,2,NULL),(44,115,45,2,NULL),(45,227,32,2,NULL),(46,229,32,2,NULL),(47,126,32,2,NULL),(48,129,32,2,NULL),(49,176,32,2,NULL),(50,215,32,2,NULL),(51,220,32,2,NULL),(52,115,88,2,NULL),(53,115,54,2,NULL),(54,67,32,2,NULL),(55,69,32,2,NULL),(56,115,76,2,NULL),(57,38,35,2,NULL),(58,11,35,2,NULL),(59,20,35,2,NULL),(60,130,35,2,NULL),(61,131,35,2,NULL),(62,133,35,2,NULL),(63,85,35,2,NULL),(64,86,35,2,NULL),(65,87,35,2,NULL),(66,227,35,2,NULL),(67,229,35,2,NULL),(68,126,35,2,NULL),(69,129,35,2,NULL),(70,176,35,2,NULL),(71,215,35,2,NULL),(72,220,35,2,NULL),(73,67,35,2,NULL),(74,69,35,2,NULL),(75,38,38,2,NULL),(76,11,38,2,NULL),(77,20,38,2,NULL),(78,130,38,2,NULL),(79,131,38,2,NULL),(80,133,38,2,NULL),(81,85,38,2,NULL),(82,86,38,2,NULL),(83,87,38,2,NULL),(84,227,38,2,NULL),(85,229,38,2,NULL),(86,126,38,2,NULL),(87,129,38,2,NULL),(88,176,38,2,NULL),(89,215,38,2,NULL),(90,220,38,2,NULL),(91,67,38,2,NULL),(92,69,38,2,NULL),(93,38,41,2,NULL),(94,11,41,2,NULL),(95,20,41,2,NULL),(96,130,41,2,NULL),(97,131,41,2,NULL),(98,133,41,2,NULL),(99,85,41,2,NULL),(100,86,41,2,NULL),(101,87,41,2,NULL),(102,227,41,2,NULL),(103,229,41,2,NULL),(104,126,41,2,NULL),(105,129,41,2,NULL),(106,176,41,2,NULL),(107,215,41,2,NULL),(108,220,41,2,NULL),(109,67,41,2,NULL),(110,69,41,2,NULL),(111,38,44,2,NULL),(112,11,44,2,NULL),(113,20,44,2,NULL),(114,130,44,2,NULL),(115,131,44,2,NULL),(116,133,44,2,NULL),(117,85,44,2,NULL),(118,86,44,2,NULL),(119,87,44,2,NULL),(120,227,44,2,NULL),(121,229,44,2,NULL),(122,126,44,2,NULL),(123,129,44,2,NULL),(124,176,44,2,NULL),(125,215,44,2,NULL),(126,220,44,2,NULL),(127,67,44,2,NULL),(128,69,44,2,NULL),(129,38,47,2,NULL),(130,11,47,2,NULL),(131,20,47,2,NULL),(132,130,47,2,NULL),(133,131,47,2,NULL),(134,133,47,2,NULL),(135,85,47,2,NULL),(136,86,47,2,NULL),(137,87,47,2,NULL),(138,227,47,2,NULL),(139,229,47,2,NULL),(140,126,47,2,NULL),(141,129,47,2,NULL),(142,176,47,2,NULL),(143,215,47,2,NULL),(144,220,47,2,NULL),(145,67,47,2,NULL),(146,69,47,2,NULL),(147,38,50,2,NULL),(148,11,50,2,NULL),(149,20,50,2,NULL),(150,130,50,2,NULL),(151,131,50,2,NULL),(152,133,50,2,NULL),(153,85,50,2,NULL),(154,86,50,2,NULL),(155,87,50,2,NULL),(156,227,50,2,NULL),(157,229,50,2,NULL),(158,126,50,2,NULL),(159,129,50,2,NULL),(160,176,50,2,NULL),(161,215,50,2,NULL),(162,220,50,2,NULL),(163,67,50,2,NULL),(164,69,50,2,NULL),(165,38,55,2,NULL),(166,11,55,2,NULL),(167,20,55,2,NULL),(168,130,55,2,NULL),(169,131,55,2,NULL),(170,133,55,2,NULL),(171,85,55,2,NULL),(172,86,55,2,NULL),(173,87,55,2,NULL),(174,227,55,2,NULL),(175,229,55,2,NULL),(176,126,55,2,NULL),(177,129,55,2,NULL),(178,176,55,2,NULL),(179,215,55,2,NULL),(180,220,55,2,NULL),(181,67,55,2,NULL),(182,69,55,2,NULL),(183,38,58,2,NULL),(184,11,58,2,NULL),(185,20,58,2,NULL),(186,130,58,2,NULL),(187,131,58,2,NULL),(188,133,58,2,NULL),(189,85,58,2,NULL),(190,86,58,2,NULL),(191,87,58,2,NULL),(192,227,58,2,NULL),(193,229,58,2,NULL),(194,126,58,2,NULL),(195,129,58,2,NULL),(196,176,58,2,NULL),(197,215,58,2,NULL),(198,220,58,2,NULL),(199,67,58,2,NULL),(200,69,58,2,NULL),(201,38,63,2,NULL),(202,11,63,2,NULL),(203,20,63,2,NULL),(204,130,63,2,NULL),(205,131,63,2,NULL),(206,133,63,2,NULL),(207,85,63,2,NULL),(208,86,63,2,NULL),(209,87,63,2,NULL),(210,227,63,2,NULL),(211,229,63,2,NULL),(212,126,63,2,NULL),(213,129,63,2,NULL),(214,176,63,2,NULL),(215,215,63,2,NULL),(216,220,63,2,NULL),(217,67,63,2,NULL),(218,69,63,2,NULL),(219,130,1,2,NULL),(220,131,1,2,NULL),(221,133,1,2,NULL),(222,130,13,2,NULL),(223,131,13,2,NULL),(224,133,13,2,NULL),(225,130,21,2,NULL),(226,131,21,2,NULL),(227,133,21,2,NULL),(228,130,22,2,NULL),(229,131,22,2,NULL),(230,133,22,2,NULL),(231,130,95,2,NULL),(232,131,95,2,NULL),(233,133,95,2,NULL),(234,130,23,2,NULL),(235,131,23,2,NULL),(236,133,23,2,NULL),(237,130,92,2,NULL),(238,131,92,2,NULL),(239,133,92,2,NULL),(240,130,93,2,NULL),(241,131,93,2,NULL),(242,133,93,2,NULL),(243,130,94,2,NULL),(244,131,94,2,NULL),(245,133,94,2,NULL),(246,130,11,2,NULL),(247,131,11,2,NULL),(248,133,11,2,NULL),(249,130,24,2,NULL),(250,131,24,2,NULL),(251,133,24,2,NULL),(252,130,30,2,NULL),(253,131,30,2,NULL),(254,133,30,2,NULL),(255,130,81,2,NULL),(256,131,81,2,NULL),(257,133,81,2,NULL),(258,130,87,2,NULL),(259,131,87,2,NULL),(260,133,87,2,NULL),(261,130,31,2,NULL),(262,131,31,2,NULL),(263,133,31,2,NULL),(264,130,46,2,NULL),(265,131,46,2,NULL),(266,133,46,2,NULL),(267,130,52,2,NULL),(268,131,52,2,NULL),(269,133,52,2,NULL),(270,130,45,2,NULL),(271,131,45,2,NULL),(272,133,45,2,NULL),(273,130,88,2,NULL),(274,131,88,2,NULL),(275,133,88,2,NULL),(276,130,54,2,NULL),(277,131,54,2,NULL),(278,133,54,2,NULL),(279,130,76,2,NULL),(280,131,76,2,NULL),(281,133,76,2,NULL),(282,38,81,2,NULL),(283,11,81,2,NULL),(284,20,81,2,NULL),(285,85,81,2,NULL),(286,86,81,2,NULL),(287,87,81,2,NULL),(288,227,81,2,NULL),(289,229,81,2,NULL),(290,126,81,2,NULL),(291,129,81,2,NULL),(292,176,81,2,NULL),(293,215,81,2,NULL),(294,220,81,2,NULL),(295,67,81,2,NULL),(296,69,81,2,NULL),(297,102,26,2,NULL),(298,102,43,2,NULL),(299,102,72,2,NULL),(300,102,73,2,NULL),(301,103,26,2,NULL),(302,103,43,2,NULL),(303,103,72,2,NULL),(304,103,73,2,NULL),(305,112,26,2,NULL),(306,112,43,2,NULL),(307,112,72,2,NULL),(308,112,73,2,NULL),(309,113,26,2,NULL),(310,113,43,2,NULL),(311,113,72,2,NULL),(312,113,73,2,NULL),(313,124,29,2,NULL),(314,124,49,2,NULL),(315,124,74,2,NULL),(316,124,85,2,NULL),(317,38,87,2,NULL),(318,11,87,2,NULL),(319,20,87,2,NULL),(320,85,87,2,NULL),(321,86,87,2,NULL),(322,87,87,2,NULL),(323,227,87,2,NULL),(324,229,87,2,NULL),(325,126,87,2,NULL),(326,129,87,2,NULL),(327,176,87,2,NULL),(328,215,87,2,NULL),(329,220,87,2,NULL),(330,67,87,2,NULL),(331,69,87,2,NULL),(332,38,31,2,NULL),(333,11,31,2,NULL),(334,20,31,2,NULL),(335,85,31,2,NULL),(336,86,31,2,NULL),(337,87,31,2,NULL),(338,227,31,2,NULL),(339,229,31,2,NULL),(340,126,31,2,NULL),(341,129,31,2,NULL),(342,176,31,2,NULL),(343,215,31,2,NULL),(344,220,31,2,NULL),(345,67,31,2,NULL),(346,69,31,2,NULL),(347,85,1,2,NULL),(348,86,1,2,NULL),(349,87,1,2,NULL),(350,85,13,2,NULL),(351,86,13,2,NULL),(352,87,13,2,NULL),(353,85,21,2,NULL),(354,86,21,2,NULL),(355,87,21,2,NULL),(356,85,22,2,NULL),(357,86,22,2,NULL),(358,87,22,2,NULL),(359,85,95,2,NULL),(360,86,95,2,NULL),(361,87,95,2,NULL),(362,85,23,2,NULL),(363,86,23,2,NULL),(364,87,23,2,NULL),(365,85,92,2,NULL),(366,86,92,2,NULL),(367,87,92,2,NULL),(368,85,93,2,NULL),(369,86,93,2,NULL),(370,87,93,2,NULL),(371,85,94,2,NULL),(372,86,94,2,NULL),(373,87,94,2,NULL),(374,85,11,2,NULL),(375,86,11,2,NULL),(376,87,11,2,NULL),(377,85,24,2,NULL),(378,86,24,2,NULL),(379,87,24,2,NULL),(380,85,30,2,NULL),(381,86,30,2,NULL),(382,87,30,2,NULL),(383,85,46,2,NULL),(384,86,46,2,NULL),(385,87,46,2,NULL),(386,85,52,2,NULL),(387,86,52,2,NULL),(388,87,52,2,NULL),(389,85,45,2,NULL),(390,86,45,2,NULL),(391,87,45,2,NULL),(392,85,88,2,NULL),(393,86,88,2,NULL),(394,87,88,2,NULL),(395,85,54,2,NULL),(396,86,54,2,NULL),(397,87,54,2,NULL),(398,85,76,2,NULL),(399,86,76,2,NULL),(400,87,76,2,NULL),(401,38,46,2,NULL),(402,11,46,2,NULL),(403,20,46,2,NULL),(404,227,46,2,NULL),(405,229,46,2,NULL),(406,126,46,2,NULL),(407,129,46,2,NULL),(408,176,46,2,NULL),(409,215,46,2,NULL),(410,220,46,2,NULL),(411,67,46,2,NULL),(412,69,46,2,NULL),(413,80,26,2,NULL),(414,80,43,2,NULL),(415,80,72,2,NULL),(416,80,73,2,NULL),(417,82,26,2,NULL),(418,82,43,2,NULL),(419,82,72,2,NULL),(420,82,73,2,NULL),(421,92,26,2,NULL),(422,92,43,2,NULL),(423,92,72,2,NULL),(424,92,73,2,NULL),(425,93,26,2,NULL),(426,93,43,2,NULL),(427,93,72,2,NULL),(428,93,73,2,NULL),(429,64,29,2,NULL),(430,64,49,2,NULL),(431,64,74,2,NULL),(432,64,85,2,NULL),(433,38,52,2,NULL),(434,11,52,2,NULL),(435,20,52,2,NULL),(436,227,52,2,NULL),(437,229,52,2,NULL),(438,126,52,2,NULL),(439,129,52,2,NULL),(440,176,52,2,NULL),(441,215,52,2,NULL),(442,220,52,2,NULL),(443,67,52,2,NULL),(444,69,52,2,NULL),(445,33,12,2,NULL),(446,38,1,2,NULL),(447,11,1,2,NULL),(448,20,1,2,NULL),(449,227,1,2,NULL),(450,229,1,2,NULL),(451,126,1,2,NULL),(452,129,1,2,NULL),(453,176,1,2,NULL),(454,215,1,2,NULL),(455,220,1,2,NULL),(456,67,1,2,NULL),(457,69,1,2,NULL),(458,37,10,2,NULL),(459,16,5,2,NULL),(460,18,19,2,NULL),(461,28,1,2,NULL),(462,30,8,2,NULL),(463,31,2,2,NULL),(464,32,9,2,NULL),(465,38,13,2,NULL),(466,38,21,2,NULL),(467,38,22,2,NULL),(468,38,95,2,NULL),(469,38,23,2,NULL),(470,38,92,2,NULL),(471,38,93,2,NULL),(472,38,94,2,NULL),(473,38,11,2,NULL),(474,38,24,2,NULL),(475,38,30,2,NULL),(476,38,45,2,NULL),(477,38,88,2,NULL),(478,38,54,2,NULL),(479,38,76,2,NULL),(480,11,13,2,NULL),(481,11,21,2,NULL),(482,11,22,2,NULL),(483,11,95,2,NULL),(484,11,23,2,NULL),(485,11,92,2,NULL),(486,11,93,2,NULL),(487,11,94,2,NULL),(488,11,11,2,NULL),(489,11,24,2,NULL),(490,11,30,2,NULL),(491,11,45,2,NULL),(492,11,88,2,NULL),(493,11,54,2,NULL),(494,11,76,2,NULL),(495,23,1,2,NULL),(496,19,20,2,NULL),(497,20,13,2,NULL),(498,227,13,2,NULL),(499,229,13,2,NULL),(500,126,13,2,NULL),(501,129,13,2,NULL),(502,176,13,2,NULL),(503,215,13,2,NULL),(504,220,13,2,NULL),(505,67,13,2,NULL),(506,69,13,2,NULL),(507,9,3,2,NULL),(508,10,3,2,NULL),(509,21,3,2,NULL),(510,22,3,2,NULL),(511,36,19,2,NULL),(512,20,21,2,NULL),(513,20,22,2,NULL),(514,20,95,2,NULL),(515,20,23,2,NULL),(516,20,92,2,NULL),(517,20,93,2,NULL),(518,20,94,2,NULL),(519,20,11,2,NULL),(520,20,24,2,NULL),(521,20,30,2,NULL),(522,20,45,2,NULL),(523,20,88,2,NULL),(524,20,54,2,NULL),(525,20,76,2,NULL),(526,17,16,2,NULL),(527,227,21,2,NULL),(528,229,21,2,NULL),(529,126,21,2,NULL),(530,129,21,2,NULL),(531,176,21,2,NULL),(532,215,21,2,NULL),(533,220,21,2,NULL),(534,67,21,2,NULL),(535,69,21,2,NULL),(536,227,22,2,NULL),(537,229,22,2,NULL),(538,126,22,2,NULL),(539,129,22,2,NULL),(540,176,22,2,NULL),(541,215,22,2,NULL),(542,220,22,2,NULL),(543,67,22,2,NULL),(544,69,22,2,NULL),(545,227,95,2,NULL),(546,229,95,2,NULL),(547,126,95,2,NULL),(548,129,95,2,NULL),(549,176,95,2,NULL),(550,215,95,2,NULL),(551,220,95,2,NULL),(552,67,95,2,NULL),(553,69,95,2,NULL),(554,24,20,2,NULL),(555,227,23,2,NULL),(556,229,23,2,NULL),(557,126,23,2,NULL),(558,129,23,2,NULL),(559,176,23,2,NULL),(560,215,23,2,NULL),(561,220,23,2,NULL),(562,67,23,2,NULL),(563,69,23,2,NULL),(564,227,92,2,NULL),(565,229,92,2,NULL),(566,126,92,2,NULL),(567,129,92,2,NULL),(568,176,92,2,NULL),(569,215,92,2,NULL),(570,220,92,2,NULL),(571,67,92,2,NULL),(572,69,92,2,NULL),(573,227,93,2,NULL),(574,229,93,2,NULL),(575,126,93,2,NULL),(576,129,93,2,NULL),(577,176,93,2,NULL),(578,215,93,2,NULL),(579,220,93,2,NULL),(580,67,93,2,NULL),(581,69,93,2,NULL),(582,227,94,2,NULL),(583,229,94,2,NULL),(584,126,94,2,NULL),(585,129,94,2,NULL),(586,176,94,2,NULL),(587,215,94,2,NULL),(588,220,94,2,NULL),(589,67,94,2,NULL),(590,69,94,2,NULL),(591,177,86,2,NULL),(592,218,56,2,NULL),(593,233,57,2,NULL),(594,227,45,2,NULL),(595,229,45,2,NULL),(596,126,45,2,NULL),(597,129,45,2,NULL),(598,176,45,2,NULL),(599,215,45,2,NULL),(600,220,45,2,NULL),(601,67,45,2,NULL),(602,69,45,2,NULL),(603,191,51,2,NULL),(604,195,80,2,NULL),(605,212,78,2,NULL),(606,221,45,2,NULL),(607,227,11,2,NULL),(608,229,11,2,NULL),(609,227,24,2,NULL),(610,229,24,2,NULL),(611,227,30,2,NULL),(612,229,30,2,NULL),(613,227,88,2,NULL),(614,229,88,2,NULL),(615,227,54,2,NULL),(616,229,54,2,NULL),(617,227,76,2,NULL),(618,229,76,2,NULL),(619,189,83,2,NULL),(620,214,83,2,NULL),(621,126,11,2,NULL),(622,129,11,2,NULL),(623,176,11,2,NULL),(624,215,11,2,NULL),(625,220,11,2,NULL),(626,126,24,2,NULL),(627,129,24,2,NULL),(628,176,24,2,NULL),(629,215,24,2,NULL),(630,220,24,2,NULL),(631,126,30,2,NULL),(632,129,30,2,NULL),(633,176,30,2,NULL),(634,215,30,2,NULL),(635,220,30,2,NULL),(636,126,88,2,NULL),(637,129,88,2,NULL),(638,176,88,2,NULL),(639,215,88,2,NULL),(640,220,88,2,NULL),(641,126,54,2,NULL),(642,129,54,2,NULL),(643,176,54,2,NULL),(644,215,54,2,NULL),(645,220,54,2,NULL),(646,126,76,2,NULL),(647,129,76,2,NULL),(648,176,76,2,NULL),(649,215,76,2,NULL),(650,220,76,2,NULL),(651,173,57,2,NULL),(652,196,56,2,NULL),(653,67,88,2,NULL),(654,69,88,2,NULL),(655,40,25,2,NULL),(656,67,24,2,NULL),(657,69,24,2,NULL),(658,41,26,2,NULL),(659,41,43,2,NULL),(660,41,72,2,NULL),(661,41,73,2,NULL),(662,42,26,2,NULL),(663,42,43,2,NULL),(664,42,72,2,NULL),(665,42,73,2,NULL),(666,59,26,2,NULL),(667,59,43,2,NULL),(668,59,72,2,NULL),(669,59,73,2,NULL),(670,61,26,2,NULL),(671,61,43,2,NULL),(672,61,72,2,NULL),(673,61,73,2,NULL),(674,70,29,2,NULL),(675,70,49,2,NULL),(676,70,74,2,NULL),(677,70,85,2,NULL),(678,67,30,2,NULL),(679,69,30,2,NULL),(680,3,17,2,NULL),(681,7,14,2,NULL),(682,67,11,2,NULL),(683,69,11,2,NULL),(684,67,54,2,NULL),(685,69,54,2,NULL),(686,67,76,2,NULL),(687,69,76,2,NULL),(688,62,26,2,NULL),(689,62,43,2,NULL),(690,62,72,2,NULL),(691,62,73,2,NULL),(692,63,26,2,NULL),(693,63,43,2,NULL),(694,63,72,2,NULL),(695,63,73,2,NULL),(696,79,26,2,NULL),(697,79,43,2,NULL),(698,79,72,2,NULL),(699,79,73,2,NULL),(700,81,26,2,NULL),(701,81,43,2,NULL),(702,81,72,2,NULL),(703,81,73,2,NULL),(704,74,29,2,NULL),(705,74,49,2,NULL),(706,74,74,2,NULL),(707,74,85,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.catsw.lockgallery.provider.gallerylock'),(2,2,'com.catsw.lockgallery.provider.folder'),(3,3,'com.catsw.lockgallery.provider.media');
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(25,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.GET_TASKS'),(22,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(18,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_EXTERNAL_STORAGE'),(19,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(24,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RESTART_PACKAGES'),(15,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_SMS'),(20,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,89,0,NULL,NULL),(2,90,0,NULL,NULL),(3,91,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(24,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(34,NULL,NULL,'(.*)/protected/(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(37,NULL,NULL,'(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)/protected/',NULL,NULL,NULL),(39,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)/',NULL,NULL,NULL),(41,NULL,NULL,'(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(42,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(44,NULL,NULL,'(.*)/sample_(.*).glk',NULL,NULL,NULL),(45,NULL,NULL,'(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(46,NULL,NULL,'(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(47,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(48,NULL,NULL,'(.*)/protected/',NULL,NULL,NULL),(49,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(50,NULL,NULL,'(.*)/protected/sample_(.*).glk',NULL,NULL,NULL),(51,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(52,NULL,NULL,'(.*)/sample_(.*).glk',NULL,NULL,NULL),(53,NULL,NULL,'(.*)/protected/sample_(.*).glk',NULL,NULL,NULL),(54,NULL,NULL,'(.*)/data/GalleryLock/protected/',NULL,NULL,NULL),(55,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)/protected/',NULL,NULL,NULL),(58,NULL,NULL,'(.*)/protected/(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)/protected/(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)/',NULL,NULL,NULL),(61,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(62,NULL,NULL,'(.*)/sample_(.*).glk',NULL,NULL,NULL),(63,NULL,NULL,'(.*)/data/GalleryLock/protected/(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)/protected/sample_(.*).glk',NULL,NULL,NULL),(65,NULL,NULL,'(.*)(.*)/data/GalleryLock/protected/sample_(.*).glk',NULL,NULL,NULL),(66,NULL,NULL,'(.*)/',NULL,NULL,NULL),(67,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'market://details?id=com.catsw.lockgallery',NULL,NULL,NULL),(71,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(72,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'content://com.catsw.lockgallerylite.provider.media',NULL,NULL,NULL),(77,NULL,NULL,'http://market.android.com/details?id=com.catsw.lockgallery',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'(.*)',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'market://details?id=com.catsw.applocklite',NULL,NULL,NULL),(86,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(87,NULL,NULL,'(.*)',NULL,NULL,NULL),(88,NULL,NULL,'mailto: (.*)',NULL,NULL,NULL),(89,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'(.*)',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL),(94,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(95,NULL,NULL,'market://details?id=com.catsw.applocklite',NULL,NULL,NULL),(96,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,35,7),(2,60,18),(3,89,30),(4,111,76);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,7),(13,2,9),(14,2,10),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,11),(25,3,12),(26,3,13),(27,4,1),(28,4,2),(29,5,1),(30,4,3),(31,5,2),(32,4,4),(33,5,3),(34,4,5),(35,5,4),(36,4,7),(37,5,5),(38,4,9),(39,5,7),(40,4,11),(41,5,9),(42,4,12),(43,5,10),(44,4,13),(45,5,12),(46,4,14),(47,5,14),(48,4,15),(49,4,17),(50,4,16),(51,6,1),(52,6,19),(53,6,18),(54,6,3),(55,6,21),(56,6,4),(57,6,20),(58,6,6),(59,6,8),(60,7,1),(61,7,3),(62,6,9),(63,7,4),(64,6,14),(65,7,5),(66,7,7),(67,7,9),(68,7,10),(69,7,11),(70,7,12),(71,7,13),(72,7,23),(73,7,22),(74,7,24);
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

-- Dump completed on 2015-10-12  3:29:18
