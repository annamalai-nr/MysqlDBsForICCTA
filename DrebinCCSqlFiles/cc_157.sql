-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_157
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
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(16,'Speedup.intent.action.refreshservice'),(18,'Speedup.intent.action.temp'),(8,'Speedup.intent.action.updatewidget'),(6,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(17,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DELETE'),(2,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(12,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(1,'android.service.wallpaper.WallpaperService'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(24,'delete_history_account'),(23,'ps.android.view.tabbar.changeTab'),(21,'ps.keepaccount.activity.delteTodayAccount'),(22,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'waterfall3dLive.new',3),(2,'com.ps.kickmouse',17),(3,'com.tutusw.phonespeedup',14),(4,'com.safesys.remover',19),(5,'com.ps.keepaccount',13),(6,'com.livegame.wallpaperlangmanxk',2),(7,'com.gp.jaro',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'waterfall3dLive.new.LiveWallpaperSettings'),(2,1,'waterfall3dLive.new.TabSettings'),(3,1,'com.google.ads.AdActivity'),(4,1,'ye.activity.ImageStyleActivity'),(5,1,'waterfall3dLive.new.LiveWallpaperService'),(6,2,'com.ps.kickmouse.WhacAMouse'),(7,1,'com.neworld.demo.UpdateCheck'),(8,2,'com.ps.kickmouse.Game'),(9,3,'com.tutusw.phonespeedup.IntroActivity'),(10,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,2,'com.google.update.Dialog'),(12,2,'com.google.update.UpdateService'),(13,3,'com.tutusw.phonespeedup.InfoActivity'),(14,2,'com.google.update.Receiver'),(15,3,'com.google.ssearch.Dialog'),(16,3,'com.tutusw.phonespeedup.Home'),(17,3,'com.tutusw.phonespeedup.PerflockActivity'),(18,3,'com.tutusw.phonespeedup.ProfilesActivity'),(19,4,'com.safesys.remover.Uninstall'),(20,3,'com.tutusw.phonespeedup.ProfileEditActivity'),(21,3,'com.tutusw.phonespeedup.AdvancedActivity'),(22,4,'com.safesys.remover.ShowTips'),(23,3,'com.tutusw.phonespeedup.AboutActivity'),(24,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(25,3,'com.tutusw.phonespeedup.StresstestActivity'),(26,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,3,'com.tutusw.phonespeedup.Setcpu'),(28,5,'com.ps.keepaccount.Main'),(29,4,'com.safesys.remover.UpdateService'),(30,3,'com.tutusw.phonespeedup.WidgetConfigActivity'),(31,4,'com.safesys.remover.Receiver'),(32,5,'com.ps.keepaccount.tabbar.ButtonDemo'),(33,5,'com.ps.keepaccount.activity.QueryAccount'),(34,3,'com.google.ssearch.SearchService'),(35,3,'com.tutusw.phonespeedup.StartupService'),(36,5,'com.ps.keepaccount.activity.TodayAccount'),(37,3,'com.tutusw.phonespeedup.ProfilesService'),(38,5,'com.ps.keepaccount.activity.HistoryAccount'),(39,3,'com.tutusw.phonespeedup.WidgetService'),(40,5,'com.ps.keepaccount.activity.WriteAccount'),(41,3,'com.google.ssearch.Receiver'),(42,5,'com.ps.keepaccount.activity.TypeAccount'),(43,5,'com.ps.keepaccount.activity.DemoApp'),(44,3,'com.tutusw.phonespeedup.StartupReceiver'),(45,5,'com.ps.keepaccount.activity.StatisticsMainActivity'),(46,5,'com.ps.keepaccount.activity.TypeAccountList'),(47,3,'com.tutusw.phonespeedup.Widget'),(48,6,'com.livegame.wallpaperlangmanxk.MainActivity'),(49,5,'com.ps.keepaccount.dialog.CanlendarDialog'),(50,5,'com.ps.keepaccount.dialog.DateSelectorDialog'),(51,5,'org.achartengine.GraphicalActivity'),(52,6,'com.livegame.wallpaperlangmanxk.SettingsActivity'),(53,5,'com.google.update.Dialog'),(54,6,'com.livegame.wallpaperlangmanxk.SelectFolderActivity'),(55,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,6,'com.google.ads.AdActivity'),(57,5,'com.waps.OffersWebView'),(58,6,'com.vpon.adon.android.WebInApp'),(59,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(60,5,'com.google.update.UpdateService'),(61,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(62,5,'com.google.update.Receiver'),(63,6,'com.waps.OffersWebView'),(64,6,'com.google.update.Dialog'),(65,6,'com.livegame.wallpaperlangmanxk.WallpaperSlideshow'),(66,7,'com.gp.jaro.JaroActivity'),(67,6,'com.google.update.UpdateService'),(68,6,'com.google.update.Receiver'),(69,7,'cn.domob.android.ads.DomobActivity'),(70,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(71,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(72,7,'com.mt.airad.MultiAD'),(73,7,'com.google.update.Dialog'),(74,7,'com.google.update.UpdateService'),(75,7,'com.google.update.Receiver'),(76,2,'com.google.update.UpdateService$AA'),(77,2,'com.google.update.Dialog$2'),(78,2,'com.google.update.Dialog$1'),(79,2,'com.ps.kickmouse.WhacAMouse$2'),(80,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(81,4,'com.safesys.remover.ShowTips$1'),(82,4,'com.safesys.remover.Uninstall$uninstallClickListener'),(83,3,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(84,3,'com.tutusw.phonespeedup.Home$clicker'),(85,3,'com.tutusw.phonespeedup.WidgetService$1'),(86,3,'com.tutusw.phonespeedup.ProfilesService$1'),(87,3,'android.appwidget.AppWidgetProvider'),(88,3,'com.google.ssearch.Dialog$1'),(89,6,'com.waps.aa'),(90,6,'com.livegame.wallpaperlangmanxk.MainActivity$1'),(91,5,'com.waps.q'),(92,7,'com.google.update.UpdateService$AA'),(93,5,'com.waps.aa'),(94,7,'cn.domob.android.a.a$a'),(95,7,'com.mt.airad.IIIIlllIlllIIIII'),(96,3,'com.google.ssearch.SearchService$MyThread'),(97,6,'com.livegame.wallpaperlangmanxk.MainActivity$2'),(98,7,'cn.domob.android.ads.DomobAdManager'),(99,5,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(100,7,'com.google.update.Dialog$1'),(101,5,'com.waps.AppConnect'),(102,6,'com.waps.AppConnect'),(103,7,'com.google.update.Dialog$2'),(104,6,'com.google.update.Dialog$2'),(105,5,'com.waps.s'),(106,6,'com.waps.ac'),(107,7,'cn.domob.android.ads.g$1'),(108,6,'com.google.update.UpdateService$AA'),(109,5,'com.waps.o'),(110,7,'cn.domob.android.ads.e'),(111,6,'com.waps.o'),(112,6,'com.waps.z'),(113,5,'com.waps.ac'),(114,7,'cn.domob.android.ads.o$5'),(115,6,'com.waps.q'),(116,6,'com.google.update.Dialog$1'),(117,7,'cn.domob.android.ads.o'),(118,5,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(119,5,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(120,5,'com.google.update.Dialog$2'),(121,5,'com.google.update.UpdateService$AA'),(122,5,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(123,5,'com.ps.keepaccount.activity.QueryAccount$1'),(124,5,'com.ps.keepaccount.activity.WriteAccount$1'),(125,5,'com.waps.z'),(126,5,'com.google.update.Dialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'shouldResizeOverlay'),(2,10,'url'),(3,11,'TYPEdsada'),(4,10,'shouldShowBottomBar'),(5,10,'transitionTime'),(6,8,'MouseGame'),(7,10,'shouldShowTitlebar'),(8,8,'Progrees'),(9,12,'ST_START_DELAY'),(10,10,'shouldMakeOverlayTransparent'),(11,10,'overlayTransition'),(12,8,'restart'),(13,8,'HP'),(14,10,'shouldEnableBottomBar'),(15,12,'ST_MY_PID'),(16,4,'category'),(17,3,'params'),(18,10,'overlayTitle'),(19,3,'action'),(20,11,'MSG'),(21,3,'com.google.ads.AdOpener'),(22,7,'MYAD_PID'),(23,26,'overlayTitle'),(24,22,'MM'),(25,19,'number'),(26,29,'SAFE_START'),(27,26,'shouldEnableBottomBar'),(28,26,'shouldMakeOverlayTransparent'),(29,24,'Adwo_PID'),(30,29,'SAFE_PID'),(31,26,'shouldResizeOverlay'),(32,26,'overlayTransition'),(33,24,'isTestMode'),(34,26,'shouldShowTitlebar'),(35,26,'shouldShowBottomBar'),(36,26,'transitionTime'),(37,26,'url'),(38,19,'orderId'),(39,15,'TYPEdsada'),(40,15,'MSG'),(41,63,'Offers_URL'),(42,62,'shouldShowTitlebar'),(43,63,'ACTIVITY_FLAG'),(44,52,'folder'),(45,62,'shouldEnableBottomBar'),(46,57,'adWidth'),(47,30,'appWidgetId'),(48,63,'UrlPath'),(49,71,'shouldResizeOverlay'),(50,70,'url'),(51,71,'DOMOB_ALLOW_LOCATION'),(52,62,'overlayTransition'),(53,74,'DOMOB_ALLOW_LOCATION'),(54,57,'url'),(55,70,'DOMOB_ALLOW_LOCATION'),(56,63,'SHWO_FLAG'),(57,72,'adURL'),(58,62,'shouldResizeOverlay'),(59,71,'shouldShowTitlebar'),(60,63,'URL'),(61,69,'appId'),(62,63,'WAPS_ID'),(63,73,'MSG'),(64,48,'WAPS_ID'),(65,71,'overlayTitle'),(66,71,'overlayTransition'),(67,58,'URL'),(68,70,'shouldEnableBottomBar'),(69,70,'shouldMakeOverlayTransparent'),(70,71,'shouldMakeOverlayTransparent'),(71,67,'ST_START_DELAY'),(72,59,'CLIENT_PACKAGE'),(73,64,'MSG'),(74,43,'CLIENT_PACKAGE'),(75,63,'DEVICE_ID'),(76,48,'DEVICE_ID'),(77,55,'CLIENT_PACKAGE'),(78,70,'shouldShowBottomBar'),(79,60,'Adwo_PID'),(80,63,'isFinshClose'),(81,63,'offers_webview_tag'),(82,63,'WAPS_PID'),(83,48,'WAPS_PID'),(84,71,'shouldEnableBottomBar'),(85,71,'transitionTime'),(86,42,'endDate'),(87,64,'TYPEdsada'),(88,70,'shouldResizeOverlay'),(89,20,'row_id'),(90,62,'shouldShowBottomBar'),(91,58,'USER_ID'),(92,62,'shouldMakeOverlayTransparent'),(93,71,'DOMOB_TEST_MODE'),(94,74,'DOMOB_TEST_MODE'),(95,55,'shouldEnableBottomBar'),(96,63,'CLIENT_PACKAGE'),(97,70,'DOMOB_TEST_MODE'),(98,62,'transitionTime'),(99,63,'USER_ID'),(100,59,'ST_MY_PID'),(101,71,'FSAd'),(102,46,'startDate'),(103,71,'DOMOB_PID'),(104,62,'overlayTitle'),(105,58,'UrlPath'),(106,74,'DOMOB_PID'),(107,60,'isTestMode'),(108,70,'DOMOB_PID'),(109,70,'overlayTitle'),(110,69,'appName'),(111,70,'overlayTransition'),(112,67,'ST_MY_PID'),(113,70,'transitionTime'),(114,63,'Notify_Url_Params'),(115,70,'shouldShowTitlebar'),(116,69,'actType'),(117,74,'ST_MY_PID'),(118,73,'TYPEdsada'),(119,62,'url'),(120,48,'CLIENT_PACKAGE'),(121,63,'APP_ID'),(122,48,'APP_ID'),(123,63,'URL_PARAMS'),(124,58,'isFinshClose'),(125,59,'ST_START_DELAY'),(126,42,'startDate'),(127,58,'URL_PARAMS'),(128,55,'shouldShowBottomBar'),(129,34,'endDate'),(130,71,'shouldShowBottomBar'),(131,74,'ST_START_DELAY'),(132,72,'adID'),(133,51,'title'),(134,58,'CLIENT_PACKAGE'),(135,46,'type'),(136,55,'transitionTime'),(137,28,'APP_ID'),(138,58,'APP_ID'),(139,59,'APP_ID'),(140,63,'Notify_Id'),(141,43,'APP_ID'),(142,55,'APP_ID'),(143,58,'SHWO_FLAG'),(144,58,'offers_webview_tag'),(145,28,'CLIENT_PACKAGE'),(146,58,'Notify_Url_Params'),(147,55,'shouldMakeOverlayTransparent'),(148,28,'WAPS_ID'),(149,58,'WAPS_ID'),(150,59,'WAPS_ID'),(151,43,'WAPS_ID'),(152,55,'WAPS_ID'),(153,58,'Offers_URL'),(154,55,'shouldResizeOverlay'),(155,53,'TYPEdsada'),(156,58,'Notify_Id'),(157,28,'WAPS_PID'),(158,58,'WAPS_PID'),(159,59,'WAPS_PID'),(160,43,'WAPS_PID'),(161,55,'WAPS_PID'),(162,55,'shouldShowTitlebar'),(163,51,'chart'),(164,55,'overlayTitle'),(165,34,'startDate'),(166,46,'endDate'),(167,58,'ACTIVITY_FLAG'),(168,55,'url'),(169,28,'DEVICE_ID'),(170,58,'DEVICE_ID'),(171,59,'DEVICE_ID'),(172,43,'DEVICE_ID'),(173,55,'DEVICE_ID'),(174,53,'MSG'),(175,55,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,12,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'s',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',0,5,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,57,'a',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',1,12,NULL),(66,66,'a',1,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,80,'r',1,NULL,NULL),(77,85,'r',1,NULL,NULL),(78,86,'r',1,NULL,NULL),(79,87,'r',1,NULL,NULL),(80,44,'r',1,NULL,NULL),(81,91,'r',1,NULL,NULL),(82,99,'r',1,NULL,NULL),(83,110,'r',1,NULL,NULL),(84,115,'r',1,NULL,NULL),(85,118,'r',1,NULL,NULL),(86,119,'r',1,NULL,NULL),(87,122,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,12),(2,2,14),(3,3,12),(4,4,11),(5,5,6),(6,6,11),(7,7,12),(8,8,6),(9,9,6),(10,10,3),(11,11,4),(12,12,22),(13,13,31),(14,14,19),(15,15,19),(16,16,35),(17,17,33),(18,18,18),(19,19,41),(20,20,16),(21,21,33),(22,22,16),(23,23,16),(24,24,18),(25,25,15),(26,26,23),(27,27,13),(28,28,16),(29,29,47),(30,30,63),(31,31,18),(32,32,35),(33,33,67),(34,34,18),(35,35,9),(36,36,44),(37,37,63),(38,38,18),(39,39,16),(40,40,16),(41,41,63),(42,42,9),(43,43,48),(44,44,74),(45,45,67),(46,46,58),(47,47,18),(48,48,74),(49,48,71),(50,48,70),(51,49,30),(52,50,72),(53,51,33),(54,52,48),(55,53,71),(56,53,70),(57,53,74),(58,54,73),(59,55,48),(60,56,43),(61,57,58),(62,58,73),(63,59,64),(64,60,59),(65,60,43),(66,60,55),(67,61,63),(68,61,54),(69,62,74),(70,62,71),(71,62,70),(72,63,67),(73,64,74),(74,65,58),(75,66,63),(76,67,75),(77,68,63),(78,69,58),(79,70,70),(80,70,71),(81,70,74),(82,71,59),(83,72,64),(84,73,68),(85,74,43),(86,75,71),(87,75,70),(88,75,74),(89,76,55),(90,76,43),(91,76,59),(92,77,74),(93,78,53),(94,79,34),(95,80,59),(96,81,34),(97,82,58),(98,83,34),(99,84,59),(100,85,34),(101,86,61),(102,87,59),(103,87,55),(104,87,43),(105,88,42),(106,89,40),(107,90,58),(108,91,42),(109,92,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(2,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,12,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,77,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,6,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(6,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,12,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,79,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(9,6,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(10,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(11,4,'<ye.activity.ImageStyleActivity: void onCreate(android.os.Bundle)>',7,'s',NULL),(12,81,'<com.safesys.remover.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(13,31,'<com.safesys.remover.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,19,'<com.safesys.remover.Uninstall: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(15,82,'<com.safesys.remover.Uninstall$uninstallClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(16,35,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(17,34,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(18,83,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(19,41,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,16,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(21,34,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(22,84,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(23,16,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(24,83,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(25,88,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(26,23,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(27,13,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(28,16,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(29,47,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(30,63,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(31,83,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(32,35,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(33,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(34,83,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(35,9,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(36,44,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(37,89,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(38,18,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(39,16,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(40,16,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(41,63,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(42,9,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(43,90,'<com.livegame.wallpaperlangmanxk.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(44,92,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(46,93,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,83,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(48,94,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(49,30,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(50,95,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(51,96,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(52,97,'<com.livegame.wallpaperlangmanxk.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(53,98,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(54,100,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(55,102,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(56,101,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(57,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(58,103,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,104,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,105,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(61,106,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(62,107,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(63,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(64,74,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,109,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(66,111,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,75,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(68,112,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,113,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(70,114,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(71,60,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,68,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(74,101,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(75,117,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(76,105,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(77,74,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(78,120,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(79,33,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(80,121,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(81,33,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(82,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(83,123,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(84,60,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(85,123,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(86,62,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(87,105,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(88,42,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(89,124,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(90,125,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,42,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(92,126,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,2),(3,6,9),(4,8,2),(5,9,2),(6,12,10),(7,14,10),(8,15,13),(9,16,13),(10,18,2),(11,19,2),(12,21,10),(13,22,14),(14,23,8),(15,28,8),(16,31,10),(17,35,16),(18,36,9),(19,42,2),(20,44,2),(21,47,16),(22,49,10),(23,51,16),(24,57,19),(25,58,2),(26,59,2),(27,62,16),(28,66,10),(29,67,2),(30,68,2),(31,70,2),(32,73,2),(33,75,9),(34,76,9),(35,79,2),(36,80,2),(37,81,2),(38,82,2),(39,84,2),(40,85,2),(41,87,10),(42,88,10),(43,90,10),(44,92,10),(45,96,10),(46,97,2),(47,98,2),(48,99,10),(49,100,10),(50,103,10),(51,104,10),(52,105,10),(53,106,10),(54,109,9),(55,111,2),(56,112,2),(57,113,22),(58,115,2),(59,116,2),(60,117,21),(61,120,24),(62,125,10),(63,127,2),(64,128,2);
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
INSERT INTO `ICategories` VALUES (1,1,2),(2,2,1),(3,8,1),(4,9,2),(5,18,1),(6,19,2),(7,42,1),(8,44,2),(9,58,2),(10,59,1),(11,67,1),(12,68,2),(13,70,1),(14,73,2),(15,79,1),(16,80,2),(17,81,1),(18,82,1),(19,84,2),(20,85,2),(21,97,1),(22,98,2),(23,111,1),(24,112,2),(25,115,1),(26,116,2),(27,127,1),(28,128,2);
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
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/UpdateService'),(2,4,'com/google/update/Dialog'),(3,5,'com/google/update/Dialog'),(4,7,'com/ps/kickmouse/Game'),(5,10,'com/google/update/Dialog'),(6,11,'com/google/update/Dialog'),(7,13,'com/ps/kickmouse/Game'),(8,17,'com/neworld/demo/UpdateCheck'),(9,20,'com/safesys/remover/UpdateService'),(10,24,'com/google/ssearch/Dialog'),(11,25,'com/google/ssearch/Dialog'),(12,26,'com/tutusw/phonespeedup/ProfilesService'),(13,27,'com/google/ssearch/SearchService'),(14,29,'com/google/ssearch/Dialog'),(15,30,'com/google/ssearch/Dialog'),(16,32,'com/tutusw/phonespeedup/AdvancedActivity'),(17,33,'com/tutusw/phonespeedup/InfoActivity'),(18,34,'com/tutusw/phonespeedup/AboutActivity'),(19,37,'com/tutusw/phonespeedup/IntroActivity'),(20,38,'com/tutusw/phonespeedup/StresstestActivity'),(21,39,'com/tutusw/phonespeedup/IntroActivity'),(22,40,'com/tutusw/phonespeedup/WidgetService'),(23,43,'com/tutusw/phonespeedup/ProfileEditActivity'),(24,45,'com/tutusw/phonespeedup/ProfilesService'),(25,46,'com/google/update/Dialog'),(26,48,'com/google/update/Dialog'),(27,52,'com/tutusw/phonespeedup/ProfilesService'),(28,50,'com/waps/OffersWebView'),(29,54,'com/tutusw/phonespeedup/PerflockActivity'),(30,53,'com/waps/OffersWebView'),(31,55,'(.*)'),(32,56,'com/tutusw/phonespeedup/Setcpu'),(33,60,'com/google/update/Dialog'),(34,63,'com/google/update/Dialog'),(35,61,'com/waps/OffersWebView'),(36,64,'com/tutusw/phonespeedup/WidgetService'),(37,65,'com/waps/OffersWebView'),(38,69,'com/livegame/wallpaperlangmanxk/SettingsActivity'),(39,71,'com/waps/OffersWebView'),(40,72,'com/waps/OffersWebView'),(41,74,'(.*)'),(42,78,'NULL-CONSTANT'),(43,83,'com/google/update/Dialog'),(44,86,'com/google/update/Dialog'),(45,89,'com/google/update/UpdateService'),(46,91,'NULL-CONSTANT'),(47,93,'com/google/update/Dialog'),(48,95,'com/google/update/Dialog'),(49,101,'com/google/update/UpdateService'),(50,102,'com/waps/OffersWebView'),(51,107,'com/google/update/Dialog'),(52,108,'com/google/update/Dialog'),(53,110,'com/ps/keepaccount/dialog/DateSelectorDialog'),(54,118,'com/google/update/Dialog'),(55,119,'com/google/update/Dialog'),(56,121,'com/google/update/UpdateService'),(57,122,'com/waps/OffersWebView'),(58,123,'com/ps/keepaccount/activity/TypeAccountList'),(59,124,'com/ps/keepaccount/dialog/CanlendarDialog'),(60,126,'com/ps/keepaccount/dialog/DateSelectorDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,1),(2,14,2),(3,15,3),(4,16,4),(5,21,5),(6,22,6),(7,31,7),(8,49,8),(9,66,10),(10,87,12),(11,88,13),(12,90,14),(13,92,15),(14,96,16),(15,99,17),(16,100,18),(17,103,19),(18,104,20),(19,105,21),(20,106,22),(21,125,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'TYPEdsada'),(2,5,'MSG'),(3,5,'TYPEdsada'),(4,7,'restart'),(5,10,'TYPEdsada'),(6,11,'MSG'),(7,11,'TYPEdsada'),(8,24,'TYPEdsada'),(9,25,'MSG'),(10,25,'TYPEdsada'),(11,29,'TYPEdsada'),(12,30,'MSG'),(13,30,'TYPEdsada'),(14,46,'TYPEdsada'),(15,48,'MSG'),(16,48,'TYPEdsada'),(17,50,'Notify_Url_Params'),(18,50,'UrlPath'),(19,50,'ACTIVITY_FLAG'),(20,50,'isFinshClose'),(21,50,'offers_webview_tag'),(22,53,'UrlPath'),(23,53,'ACTIVITY_FLAG'),(24,53,'isFinshClose'),(25,53,'offers_webview_tag'),(26,57,'android.live_wallpaper.package'),(27,57,'android.live_wallpaper.settings'),(28,60,'TYPEdsada'),(29,61,'Notify_Url_Params'),(30,61,'UrlPath'),(31,61,'ACTIVITY_FLAG'),(32,63,'MSG'),(33,61,'isFinshClose'),(34,63,'TYPEdsada'),(35,61,'offers_webview_tag'),(36,65,'UrlPath'),(37,65,'ACTIVITY_FLAG'),(38,65,'isFinshClose'),(39,65,'offers_webview_tag'),(40,71,'USER_ID'),(41,72,'USER_ID'),(42,71,'CLIENT_PACKAGE'),(43,72,'CLIENT_PACKAGE'),(44,71,'Offers_URL'),(45,72,'Offers_URL'),(46,71,'offers_webview_tag'),(47,72,'offers_webview_tag'),(48,71,'URL_PARAMS'),(49,72,'URL_PARAMS'),(50,83,'MSG'),(51,83,'TYPEdsada'),(52,86,'TYPEdsada'),(53,93,'TYPEdsada'),(54,95,'MSG'),(55,95,'TYPEdsada'),(56,102,'USER_ID'),(57,102,'CLIENT_PACKAGE'),(58,102,'Offers_URL'),(59,102,'offers_webview_tag'),(60,102,'URL_PARAMS'),(61,107,'MSG'),(62,107,'TYPEdsada'),(63,108,'TYPEdsada'),(64,113,'startDate'),(65,113,'endDate'),(66,118,'TYPEdsada'),(67,119,'MSG'),(68,119,'TYPEdsada'),(69,122,'CLIENT_PACKAGE'),(70,122,'URL'),(71,122,'isFinshClose'),(72,122,'offers_webview_tag'),(73,123,'startDate'),(74,123,'endDate'),(75,123,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,4,4),(6,4,5),(7,5,2),(8,6,2),(9,7,6),(10,8,5),(11,8,3),(12,8,4),(13,9,4),(14,9,5),(15,9,3),(16,10,4),(17,11,2),(18,12,8),(19,12,7),(20,13,5),(21,13,4),(22,13,3),(23,14,1),(24,15,2),(25,16,3),(26,16,4),(27,16,5),(28,17,4),(29,17,5),(30,17,3),(31,18,11),(32,18,12),(33,19,15),(34,19,11),(35,19,8),(36,20,15),(37,20,11),(38,20,8),(39,21,15),(40,21,8),(41,21,11),(42,22,15),(43,22,8),(44,22,11),(45,23,11),(46,23,8),(47,23,15),(48,24,11),(49,24,8),(50,24,15),(51,25,8),(52,25,11),(53,25,15),(54,26,11),(55,26,15),(56,26,8),(57,27,8),(58,27,15),(59,27,11),(60,28,8),(61,28,15),(62,28,11),(63,29,11),(64,29,8),(65,29,15),(66,30,8),(67,30,11),(68,30,15),(69,31,18),(70,31,16),(71,31,17),(72,31,15),(73,31,11),(74,32,15),(75,32,16),(76,32,17),(77,32,18),(78,32,11),(79,33,20),(80,34,17),(81,34,18),(82,34,11),(83,34,16),(84,34,15),(85,35,18),(86,35,11),(87,35,15),(88,35,16),(89,35,17),(90,36,11),(91,36,17),(92,36,18),(93,36,15),(94,36,16),(95,37,11),(96,37,16),(97,37,17),(98,37,18),(99,37,15),(100,38,21),(101,39,20),(102,40,20),(103,41,20),(104,42,22),(105,43,23),(106,44,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,1),(5,11,1),(6,15,1);
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
INSERT INTO `IFData` VALUES (1,33,'package',NULL,NULL,NULL,NULL,NULL),(2,39,'package',NULL,NULL,NULL,NULL,NULL),(3,40,'package',NULL,NULL,NULL,NULL,NULL),(4,41,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,15,'(.*)','(.*)'),(2,87,'application','vnd.android.package-archive'),(3,88,'application','vnd.android.package-archive'),(4,90,'application','vnd.android.package-archive'),(5,92,'application','vnd.android.package-archive'),(6,96,'application','vnd.android.package-archive'),(7,99,'application','vnd.android.package-archive'),(8,100,'application','vnd.android.package-archive'),(9,103,'application','vnd.android.package-archive'),(10,125,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.ps.kickmouse'),(2,2,'com.ps.kickmouse'),(3,3,'com.ps.kickmouse'),(4,4,'com.ps.kickmouse'),(5,5,'com.ps.kickmouse'),(6,7,'com.ps.kickmouse'),(7,8,'com.noshufou.android.su'),(8,9,'com.noshufou.android.su'),(9,10,'com.ps.kickmouse'),(10,11,'com.ps.kickmouse'),(11,13,'com.ps.kickmouse'),(12,17,'waterfall3dLive.new'),(13,18,'com.noshufou.android.su'),(14,19,'com.noshufou.android.su'),(15,20,'com.safesys.remover'),(16,24,'com.tutusw.phonespeedup'),(17,25,'com.tutusw.phonespeedup'),(18,26,'com.tutusw.phonespeedup'),(19,27,'com.tutusw.phonespeedup'),(20,29,'com.tutusw.phonespeedup'),(21,30,'com.tutusw.phonespeedup'),(22,32,'com.tutusw.phonespeedup'),(23,33,'com.tutusw.phonespeedup'),(24,34,'com.tutusw.phonespeedup'),(25,37,'com.tutusw.phonespeedup'),(26,38,'com.tutusw.phonespeedup'),(27,39,'com.tutusw.phonespeedup'),(28,40,'com.tutusw.phonespeedup'),(29,42,'(.*)'),(30,43,'com.tutusw.phonespeedup'),(31,44,'(.*)'),(32,45,'com.tutusw.phonespeedup'),(33,46,'com.livegame.wallpaperlangmanxk'),(34,48,'com.livegame.wallpaperlangmanxk'),(35,52,'com.tutusw.phonespeedup'),(36,50,'com.livegame.wallpaperlangmanxk'),(37,54,'com.tutusw.phonespeedup'),(38,53,'com.livegame.wallpaperlangmanxk'),(39,55,'(.*)'),(40,56,'com.tutusw.phonespeedup'),(41,58,'com.gp.jaro'),(42,59,'com.gp.jaro'),(43,60,'com.livegame.wallpaperlangmanxk'),(44,63,'com.livegame.wallpaperlangmanxk'),(45,61,'com.ps.keepaccount'),(46,64,'com.tutusw.phonespeedup'),(47,65,'com.ps.keepaccount'),(48,67,'com.tutusw.phonespeedup'),(49,69,'com.livegame.wallpaperlangmanxk'),(50,68,'com.tutusw.phonespeedup'),(51,70,'com.noshufou.android.su'),(52,73,'com.noshufou.android.su'),(53,71,'com.ps.keepaccount'),(54,72,'com.livegame.wallpaperlangmanxk'),(55,74,'(.*)'),(56,78,'NULL-CONSTANT'),(57,79,'(.*)'),(58,80,'(.*)'),(59,82,'NULL-CONSTANT'),(60,81,'com.livegame.wallpaperlangmanxk'),(61,83,'com.gp.jaro'),(62,84,'com.livegame.wallpaperlangmanxk'),(63,85,'NULL-CONSTANT'),(64,86,'com.gp.jaro'),(65,89,'com.gp.jaro'),(66,91,'NULL-CONSTANT'),(67,93,'com.ps.keepaccount'),(68,97,'com.noshufou.android.su'),(69,95,'com.ps.keepaccount'),(70,98,'com.noshufou.android.su'),(71,101,'com.livegame.wallpaperlangmanxk'),(72,102,'com.ps.keepaccount'),(73,107,'com.gp.jaro'),(74,108,'com.gp.jaro'),(75,110,'com.ps.keepaccount'),(76,111,'com.ps.keepaccount'),(77,112,'com.ps.keepaccount'),(78,115,'(.*)'),(79,116,'(.*)'),(80,118,'com.ps.keepaccount'),(81,119,'com.ps.keepaccount'),(82,121,'com.ps.keepaccount'),(83,122,'com.ps.keepaccount'),(84,123,'com.ps.keepaccount'),(85,124,'com.ps.keepaccount'),(86,126,'com.ps.keepaccount'),(87,127,'com.noshufou.android.su'),(88,128,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,5,0),(2,6,0),(3,9,0),(4,14,0),(5,19,0),(6,28,0),(7,30,0),(8,31,0),(9,41,0),(10,44,0),(11,48,0),(12,47,0),(13,61,0),(14,65,0),(15,66,0),(16,68,0),(17,75,0),(18,76,0),(19,47,0),(20,41,0),(21,77,0),(22,78,0),(23,79,0),(24,80,0),(25,47,0),(26,41,0),(27,77,0),(28,78,0),(29,79,0),(30,80,0),(31,47,0),(32,41,0),(33,81,0),(34,77,0),(35,78,0),(36,79,0),(37,80,0),(38,82,0),(39,83,0),(40,83,0),(41,84,0),(42,85,0),(43,86,0),(44,87,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,3,0,0),(6,4,1,0),(7,5,0,0),(8,6,1,0),(9,6,1,0),(10,7,0,0),(11,7,0,0),(12,8,1,0),(13,9,0,0),(14,10,1,0),(15,10,1,0),(16,10,1,0),(17,11,0,0),(18,12,1,0),(19,12,1,0),(20,13,0,0),(21,14,1,0),(22,15,1,0),(23,16,1,0),(24,17,0,0),(25,17,0,0),(26,18,0,0),(27,19,0,0),(28,20,1,0),(29,21,0,0),(30,21,0,0),(31,22,1,0),(32,23,0,0),(33,23,0,0),(34,23,0,0),(35,24,1,0),(36,25,1,0),(37,26,0,0),(38,27,0,0),(39,28,0,0),(40,29,0,0),(41,30,1,0),(42,30,1,0),(43,31,0,0),(44,30,1,0),(45,32,0,0),(46,33,0,0),(47,34,1,0),(48,33,0,0),(49,35,1,0),(50,37,0,0),(51,38,1,0),(52,39,0,0),(53,37,0,0),(54,40,0,0),(55,41,0,0),(56,42,0,0),(57,43,1,0),(58,44,1,0),(59,44,1,0),(60,45,0,0),(61,46,0,0),(62,47,1,0),(63,45,0,0),(64,49,0,0),(65,46,0,0),(66,50,1,0),(67,51,1,0),(68,51,1,0),(69,52,0,0),(70,54,1,0),(71,56,0,0),(72,55,0,0),(73,54,1,0),(74,57,0,0),(75,58,1,0),(76,59,1,0),(77,60,1,0),(78,61,0,0),(79,60,1,0),(80,60,1,0),(81,63,1,0),(82,60,1,0),(83,64,0,0),(84,63,1,0),(85,60,1,0),(86,64,0,0),(87,65,1,0),(88,66,1,0),(89,67,0,0),(90,68,1,0),(91,69,0,0),(92,70,1,0),(93,71,0,0),(94,70,1,0),(95,71,0,0),(96,70,1,0),(97,72,1,0),(98,72,1,0),(99,70,1,0),(100,70,1,0),(101,73,0,0),(102,74,0,0),(103,70,1,0),(104,75,1,0),(105,76,1,0),(106,76,1,0),(107,77,0,0),(108,77,0,0),(109,78,1,0),(110,79,0,0),(111,80,1,0),(112,80,1,0),(113,81,1,0),(114,82,1,0),(115,82,1,0),(116,82,1,0),(117,83,1,0),(118,84,0,0),(119,84,0,0),(120,85,1,0),(121,86,0,0),(122,87,0,0),(123,88,0,0),(124,89,0,0),(125,90,1,0),(126,91,0,0),(127,92,1,0),(128,92,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(4,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.BIND_WALLPAPER'),(8,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(3,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECORD_AUDIO'),(10,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=3D0F649A840D6922D383D34F70112E4A',NULL,NULL,NULL),(6,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(16,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,48,9),(2,53,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,3,1),(14,3,2),(15,3,4),(16,3,5),(17,3,7),(18,3,8),(19,3,9),(20,3,10),(21,3,11),(22,4,1),(23,4,2),(24,4,4),(25,4,7),(26,4,11),(27,4,13),(28,5,16),(29,4,14),(30,5,1),(31,4,15),(32,5,2),(33,5,4),(34,5,5),(35,5,6),(36,5,7),(37,5,8),(38,5,9),(39,5,13),(40,5,14),(41,5,15),(42,6,17),(43,6,1),(44,6,2),(45,6,4),(46,6,5),(47,6,6),(48,6,7),(49,6,8),(50,6,9),(51,6,15),(52,7,1),(53,7,2),(54,7,4),(55,7,5),(56,7,7),(57,7,8),(58,7,9),(59,7,10),(60,7,11),(61,7,15),(62,7,17),(63,7,19),(64,7,18),(65,7,20);
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
