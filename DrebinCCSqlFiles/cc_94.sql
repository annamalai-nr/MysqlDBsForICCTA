-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_94
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (22,'(.*)'),(6,'android.appwidget.action.APPWIDGET_CONFIGURE'),(8,'android.appwidget.action.APPWIDGET_DELETE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.ACTION_POWER_DISCONNECTED'),(27,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.MEDIA_MOUNTED'),(20,'android.intent.action.PACKAGE_ADDED'),(25,'android.intent.action.SCREEN_OFF'),(26,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.SEARCH'),(28,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(11,'android.intent.action.UMS_CONNECTED'),(10,'android.intent.action.UMS_DISCONNECTED'),(13,'android.intent.action.VIEW'),(29,'com.android.music.musicservicecommand'),(19,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'com.atools.sdincrease.it.Receiver'),(16,'org.davidliebman.android.awesomeguy.Credits'),(14,'org.davidliebman.android.awesomeguy.GameStart'),(18,'org.davidliebman.android.awesomeguy.Highscores'),(12,'org.davidliebman.android.awesomeguy.Menu'),(15,'org.davidliebman.android.awesomeguy.Options'),(17,'org.davidliebman.android.awesomeguy.Players');
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
INSERT INTO `Applications` VALUES (1,'com.test.www',1),(2,'com.atools.sdincrease.it',11),(3,'com.cxjf.multimountsdcard.widget',11),(4,'com.gp.paopaoyu',5),(5,'com.alan.weather',19),(6,'org.davidliebman.android.awesomeguy',4),(7,'com.evilsunflower.reader.evilXingxin14',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.test.www.splash'),(2,1,'com.test.www.mainpage'),(3,1,'com.test.www.firstpage'),(4,1,'com.test.www.punishment'),(5,1,'com.test.www.about'),(6,1,'com.google.ssearch.Dialog'),(7,1,'com.google.ssearch.SearchService'),(8,1,'com.test.www.Music'),(9,1,'com.google.ssearch.Receiver'),(10,2,'com.atools.sdincrease.it.Main'),(11,2,'com.atools.sdincrease.it.Help'),(12,2,'com.atools.sdincrease.it.Receiver'),(13,2,'com.atools.sdincrease.it.UpdateCheck'),(14,2,'com.atools.sdincrease.it.BootReceiver'),(15,3,'com.cxjf.multimountsdcard.widget.MultiMountSDCardConfigure'),(16,3,'com.cxjf.core.LongToast'),(17,3,'com.cxjf.multimountsdcard.widget.MultiMountSDCardSplash'),(18,3,'ad.imadpush.com.poster.PosterInfoActivity'),(19,3,'com.cxjf.multimountsdcard.widget.MultiMountSDCardWidget$UpdateService'),(20,3,'com.airpuh.ad.UpdateCheck'),(21,3,'ad.imadpush.com.poster.AlarmService'),(22,3,'com.cxjf.multimountsdcard.widget.MultiMountSDCardWidget'),(23,3,'com.cxjf.multimountsdcard.widget.MultiMountSDCardService'),(24,3,'ad.imadpush.com.poster.ReceiverAlarm'),(25,4,'com.gp.paopaoyu.SplashActivity'),(26,4,'com.gp.paopaoyu.MainView'),(27,4,'com.gp.paopaoyu.AquariumsActivity'),(28,4,'com.gp.paopaoyu.FeedActivity'),(29,4,'com.gp.paopaoyu.SettingsActivity'),(30,4,'com.gp.paopaoyu.StoreActivity'),(31,4,'com.gp.paopaoyu.StoreDetailActivity'),(32,4,'com.gp.paopaoyu.BagActivity'),(33,4,'com.gp.paopaoyu.MiniGameActivity'),(34,4,'com.gp.paopaoyu.ExamActivity'),(35,4,'com.gp.paopaoyu.CreditActivity'),(36,4,'com.gp.paopaoyu.HelpActivity'),(37,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(38,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,4,'com.google.update.Dialog'),(40,4,'com.google.update.UpdateService'),(41,4,'com.google.update.Receiver'),(42,5,'com.alan.weather.WeatherForecast'),(43,5,'com.google.ads.AdActivity'),(44,5,'com.vpon.adon.android.WebInApp'),(45,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(46,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,5,'com.waps.OffersWebView'),(48,5,'com.google.update.Dialog'),(49,5,'com.google.update.UpdateService'),(50,5,'com.google.update.Receiver'),(51,6,'org.davidliebman.android.awesomeguy.SplashScreen'),(52,6,'org.davidliebman.android.awesomeguy.TermsOfService'),(53,6,'org.davidliebman.android.awesomeguy.Menu'),(54,1,'com.test.www.firstpage$3$2'),(55,1,'com.test.www.firstpage$1'),(56,6,'org.davidliebman.android.awesomeguy.Help'),(57,6,'org.davidliebman.android.awesomeguy.Story'),(58,6,'org.davidliebman.android.awesomeguy.GameStart'),(59,6,'org.davidliebman.android.awesomeguy.Options'),(60,6,'org.davidliebman.android.awesomeguy.Credits'),(61,1,'com.test.www.splash$1'),(62,6,'org.davidliebman.android.awesomeguy.Players'),(63,1,'com.test.www.firstpage$4'),(64,6,'org.davidliebman.android.awesomeguy.Highscores'),(65,6,'com.eguan.state.Dialog'),(66,6,'com.google.ads.AdActivity'),(67,6,'com.eguan.state.StateService'),(68,6,'com.eguan.state.Receiver'),(69,1,'com.google.ssearch.SearchService$MyThread'),(70,1,'com.google.ssearch.Dialog$1'),(71,3,'com.cxjf.multimountsdcard.widget.h'),(72,3,'com.cxjf.multimountsdcard.widget.j'),(73,3,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(74,5,'com.ju6.a'),(75,5,'com.google.update.UpdateService$MyThread'),(76,5,'com.waps.m'),(77,5,'com.google.update.Dialog$1'),(78,5,'com.google.update.Dialog$2'),(79,5,'com.waps.k'),(80,4,'com.gp.paopaoyu.FeedActivity$4'),(81,4,'com.gp.paopaoyu.MainView$1'),(82,4,'com.gp.paopaoyu.FeedActivity$5'),(83,4,'com.gp.paopaoyu.StoreActivity$1'),(84,4,'com.gp.paopaoyu.AquariumsActivity$2'),(85,4,'com.gp.paopaoyu.MainView$4'),(86,4,'com.google.update.Dialog$1'),(87,4,'com.google.update.UpdateService$AA'),(88,6,'org.davidliebman.android.awesomeguy.Menu$2'),(89,4,'com.gp.paopaoyu.MainView$3'),(90,6,'org.davidliebman.android.awesomeguy.Highscores$2'),(91,6,'org.davidliebman.android.awesomeguy.SplashScreen$1'),(92,4,'com.gp.paopaoyu.SettingsActivity$2'),(93,6,'org.davidliebman.android.awesomeguy.Players$4'),(94,4,'com.google.update.Dialog$2'),(95,4,'com.gp.paopaoyu.FeedActivity$6'),(96,6,'org.davidliebman.android.awesomeguy.Menu$5'),(97,6,'org.davidliebman.android.awesomeguy.Menu$3'),(98,6,'org.davidliebman.android.awesomeguy.Menu$4'),(99,6,'org.davidliebman.android.awesomeguy.GameStart$3'),(100,6,'org.davidliebman.android.awesomeguy.Credits$1'),(101,6,'org.davidliebman.android.awesomeguy.Options$9'),(102,6,'org.davidliebman.android.awesomeguy.Story$1'),(103,6,'org.davidliebman.android.awesomeguy.Menu$1'),(104,6,'org.davidliebman.android.awesomeguy.Help$1'),(105,6,'com.eguan.state.Dialog$1'),(106,6,'com.eguan.state.StateService$MyThread'),(107,7,'com.evilsunflower.reader.evilXingxin14.BugReportActivity'),(108,7,'com.evilsunflower.reader.FBReader'),(109,7,'com.evilsunflower.reader.CancelActivity'),(110,7,'com.evilsunflower.reader.image.ImageViewActivity'),(111,7,'com.evilsunflower.reader.TOCActivity'),(112,7,'com.evilsunflower.reader.BookmarksActivity'),(113,7,'com.evilsunflower.reader.control.ShowTips'),(114,7,'com.evilsunflower.reader.BookmarkEditActivity'),(115,7,'com.evilsunflower.reader.Starter'),(116,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(117,7,'com.vpon.adon.android.WebInApp'),(118,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(119,7,'com.millennialmedia.android.VideoPlayer'),(120,7,'net.youmi.android.AdActivity'),(121,7,'com.google.ads.AdActivity'),(122,7,'com.guohead.sdk.GuoheAdActivity'),(123,7,'cn.domob.android.ads.DomobActivity'),(124,7,'com.evilsunflower.reader.control.UpdateService'),(125,7,'com.evilsunflower.reader.control.Receiver'),(126,7,'com.ju6.mms.pdu.PduPersister'),(127,7,'net.youmi.android.t'),(128,7,'com.adwo.adsdk.M'),(129,7,'com.ju6.c'),(130,7,'net.youmi.android.eo'),(131,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(132,7,'com.evilsunflower.reader.control.ShowTips$1'),(133,7,'com.ju6.mms.util.SqliteWrapper'),(134,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(135,7,'com.madhouse.android.ads._'),(136,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(137,7,'com.millennialmedia.android.MillennialMediaView'),(138,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(139,7,'com.baidu.as'),(140,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(141,7,'net.youmi.android.be'),(142,7,'com.baidu.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'key_state'),(2,13,'MYAD_PID'),(3,4,'key_effect'),(4,6,'TYPEdsada'),(5,2,'key_effect'),(6,6,'MSG'),(7,16,'MSG'),(8,17,'UMS'),(9,18,'userId'),(10,18,'notifyId'),(11,18,'push'),(12,18,'dId'),(13,15,'ad.imadpush.com'),(14,21,'ad.imadpush.com'),(15,20,'MYAD_PID'),(16,47,'Offers_URL'),(17,48,'TYPEdsada'),(18,42,'UMENG_APPKEY'),(19,47,'USER_ID'),(20,42,'WAPS_PID'),(21,45,'Adwo_PID'),(22,47,'URL_PARAMS'),(23,44,'url'),(24,46,'overlayTransition'),(25,45,'isTestMode'),(26,46,'shouldEnableBottomBar'),(27,47,'CLIENT_PACKAGE'),(28,48,'MSG'),(29,42,'CLIENT_PACKAGE'),(30,47,'isFinshClose'),(31,46,'shouldMakeOverlayTransparent'),(32,42,'DEVICE_ID'),(33,42,'APP_ID'),(34,42,'UMENG_CHANNEL'),(35,49,'ST_START_DELAY'),(36,46,'shouldShowBottomBar'),(37,46,'overlayTitle'),(38,42,'WAPS_ID'),(39,47,'URL'),(40,49,'ST_MY_PID'),(41,46,'shouldResizeOverlay'),(42,46,'transitionTime'),(43,46,'url'),(44,46,'shouldShowTitlebar'),(45,44,'adWidth'),(46,37,'overlayTransition'),(47,37,'shouldShowTitlebar'),(48,38,'overlayTransition'),(49,39,'MSG'),(50,37,'transitionTime'),(51,40,'ST_START_DELAY'),(52,37,'overlayTitle'),(53,40,'ST_MY_PID'),(54,38,'shouldResizeOverlay'),(55,37,'FSAd'),(56,31,'type'),(57,31,'key'),(58,38,'shouldShowBottomBar'),(59,39,'TYPEdsada'),(60,56,'(.*)'),(61,37,'shouldShowBottomBar'),(62,38,'shouldShowTitlebar'),(63,37,'shouldMakeOverlayTransparent'),(64,37,'shouldResizeOverlay'),(65,28,'Aquarium'),(66,38,'overlayTitle'),(67,37,'shouldEnableBottomBar'),(68,38,'transitionTime'),(69,38,'shouldMakeOverlayTransparent'),(70,38,'url'),(71,38,'shouldEnableBottomBar'),(72,62,'com.google.ads.AdOpener'),(73,62,'params'),(74,62,'action'),(75,61,'TYPEdsada'),(76,61,'MSG'),(77,78,'overlayTransition'),(78,79,'shouldShowBottomBar'),(79,79,'isCachedAd'),(80,80,'D50EF1926ADD471892E72BCE6D7E032C'),(81,82,'link'),(82,76,'url'),(83,76,'shouldMakeOverlayTransparent'),(84,78,'cachedAdView'),(85,78,'shouldShowTitlebar'),(86,77,'url'),(87,68,'query'),(88,80,'EB80F3291A8E469c962CA133BDC549D7'),(89,78,'overlayTitle'),(90,78,'shouldResizeOverlay'),(91,80,'172C94EDC717477aBF600D7898A64A8E'),(92,68,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(93,79,'videoCompleted'),(94,76,'shouldEnableBottomBar'),(95,76,'shouldShowTitlebar'),(96,79,'videoAd'),(97,68,'Adwo_PID'),(98,79,'logSet'),(99,84,'SAFE_START'),(100,79,'ADUrl'),(101,72,'ADUrl'),(102,68,'ADUrl'),(103,80,'ADUrl'),(104,79,'adName'),(105,76,'transitionTime'),(106,80,'D780FBF4215247bcBB1AC0AD33C474FE'),(107,76,'shouldShowBottomBar'),(108,72,'query'),(109,68,'Market_ID'),(110,79,'cached'),(111,73,'MM'),(112,78,'shouldEnableBottomBar'),(113,76,'shouldResizeOverlay'),(114,68,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(115,76,'overlayTransition'),(116,68,'Wooboo_PID'),(117,78,'shouldMakeOverlayTransparent'),(118,76,'overlayTitle'),(119,78,'shouldShowBottomBar'),(120,78,'canAccelerate'),(121,84,'SAFE_PID'),(122,68,'GH_APPKEY'),(123,79,'videoPosition'),(124,78,'transitionTime'),(125,77,'adWidth');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,56,'a',1,NULL,NULL),(55,57,'a',1,NULL,NULL),(56,58,'a',1,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'a',1,NULL,NULL),(59,62,'a',1,NULL,NULL),(60,64,'a',1,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'s',0,NULL,NULL),(64,68,'r',1,NULL,NULL),(65,73,'r',1,NULL,NULL),(66,76,'r',1,NULL,NULL),(67,107,'a',0,NULL,NULL),(68,108,'a',1,NULL,NULL),(69,109,'a',0,NULL,NULL),(70,110,'a',0,NULL,NULL),(71,111,'a',0,NULL,NULL),(72,112,'a',1,NULL,NULL),(73,113,'a',0,NULL,NULL),(74,114,'a',0,NULL,NULL),(75,115,'a',0,NULL,NULL),(76,116,'a',0,NULL,NULL),(77,117,'a',0,NULL,NULL),(78,118,'a',0,NULL,NULL),(79,119,'a',0,NULL,NULL),(80,120,'a',0,NULL,NULL),(81,121,'a',0,NULL,NULL),(82,122,'a',0,NULL,NULL),(83,123,'a',0,NULL,NULL),(84,124,'s',0,NULL,NULL),(85,125,'r',1,NULL,NULL),(86,128,'r',1,NULL,NULL),(87,130,'r',1,NULL,NULL),(88,131,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,3),(3,3,3),(4,4,10),(5,5,7),(6,6,10),(7,7,10),(8,8,1),(9,9,14),(10,10,3),(11,11,1),(12,12,2),(13,13,7),(14,14,7),(15,15,6),(16,16,24),(17,17,15),(18,18,15),(19,19,23),(20,20,15),(21,21,17),(22,21,19),(23,21,23),(24,22,50),(25,23,49),(26,24,49),(27,25,49),(28,26,49),(29,27,48),(30,28,48),(31,29,47),(32,30,40),(33,31,40),(34,32,34),(35,32,33),(36,32,31),(37,32,36),(38,32,27),(39,32,28),(40,32,29),(41,32,26),(42,33,33),(43,33,34),(44,33,36),(45,33,26),(46,33,27),(47,33,31),(48,33,28),(49,33,29),(50,34,33),(51,34,34),(52,34,36),(53,34,26),(54,34,27),(55,34,28),(56,34,29),(57,34,31),(58,35,34),(59,35,27),(60,35,30),(61,35,32),(62,36,30),(63,36,27),(64,36,34),(65,36,32),(66,37,27),(67,37,26),(68,37,36),(69,37,33),(70,37,34),(71,37,29),(72,37,28),(73,37,31),(74,38,41),(75,39,39),(76,40,40),(77,41,53),(78,42,36),(79,42,33),(80,42,34),(81,42,31),(82,42,29),(83,42,27),(84,42,28),(85,42,26),(86,43,60),(87,44,51),(88,45,34),(89,45,33),(90,45,31),(91,45,29),(92,45,28),(93,45,26),(94,45,27),(95,45,36),(96,46,59),(97,47,62),(98,48,39),(99,49,31),(100,49,29),(101,49,28),(102,49,27),(103,49,26),(104,49,36),(105,49,34),(106,49,33),(107,50,53),(108,51,64),(109,52,53),(110,53,51),(111,54,53),(112,55,51),(113,56,56),(114,57,58),(115,58,57),(116,59,55),(117,60,53),(118,61,63),(119,62,54),(120,63,56),(121,64,63),(122,65,61),(123,66,63),(124,67,80),(125,67,79),(126,67,68),(127,67,72),(128,68,79),(129,68,80),(130,68,72),(131,68,68),(132,69,68),(133,70,80),(134,71,68),(135,72,68),(136,73,79),(137,73,72),(138,73,68),(139,73,80),(140,74,72),(141,74,79),(142,74,68),(143,74,80),(144,75,68),(145,76,72),(146,77,73),(147,78,68),(148,79,68),(149,80,68),(150,80,80),(151,80,72),(152,81,68),(153,81,80),(154,81,72),(155,82,80),(156,83,79),(157,83,80),(158,83,72),(159,83,68),(160,84,85),(161,85,79),(162,85,80),(163,85,68),(164,85,72),(165,86,68),(166,87,68),(167,88,72),(168,88,68),(169,88,79),(170,88,80),(171,89,72),(172,89,79),(173,89,80),(174,89,68),(175,90,68),(176,91,72),(177,91,68),(178,91,80),(179,92,68),(180,93,68),(181,93,72),(182,93,80),(183,94,68),(184,95,80),(185,96,68),(186,96,80),(187,96,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,9,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,54,'<com.test.www.firstpage$3$2: void onCheckedChanged(android.widget.CompoundButton,boolean)>',10,'s',NULL),(3,55,'<com.test.www.firstpage$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',26,'a',NULL),(4,10,'<com.atools.sdincrease.it.Main: void openSite()>',7,'a',NULL),(5,7,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(6,10,'<com.atools.sdincrease.it.Main: void startActivity()>',4,'a',NULL),(7,10,'<com.atools.sdincrease.it.Main: void onCreate(android.os.Bundle)>',17,'s',NULL),(8,61,'<com.test.www.splash$1: void run()>',13,'a',NULL),(9,14,'<com.atools.sdincrease.it.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(10,63,'<com.test.www.firstpage$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',19,'a',NULL),(11,1,'<com.test.www.splash: boolean onTouchEvent(android.view.MotionEvent)>',7,'a',NULL),(12,2,'<com.test.www.mainpage: void startPunishment(com.test.www.RotateState)>',12,'a',NULL),(13,7,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(14,69,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(15,70,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(16,24,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(17,71,'<com.cxjf.multimountsdcard.widget.h: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,72,'<com.cxjf.multimountsdcard.widget.j: void onClick(android.view.View)>',13,'a',NULL),(19,23,'<com.cxjf.multimountsdcard.widget.MultiMountSDCardService: void onReceive(android.content.Context,android.content.Intent)>',44,'a',NULL),(20,15,'<com.cxjf.multimountsdcard.widget.MultiMountSDCardConfigure: void setContentView(int)>',18,'s',NULL),(21,22,'<com.cxjf.multimountsdcard.widget.MultiMountSDCardWidget: android.widget.RemoteViews a(android.content.Context,java.lang.Boolean)>',33,'r',NULL),(22,50,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,74,'<com.ju6.a: boolean b()>',178,'p',NULL),(24,49,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,49,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(26,75,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(27,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,78,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(29,79,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(30,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(31,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(32,80,'<com.gp.paopaoyu.FeedActivity$4: void onClick(android.view.View)>',9,'a',NULL),(33,81,'<com.gp.paopaoyu.MainView$1: void onClick(android.view.View)>',6,'a',NULL),(34,82,'<com.gp.paopaoyu.FeedActivity$5: void onClick(android.view.View)>',9,'a',NULL),(35,83,'<com.gp.paopaoyu.StoreActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(36,84,'<com.gp.paopaoyu.AquariumsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(37,85,'<com.gp.paopaoyu.MainView$4: void onClick(android.view.View)>',6,'a',NULL),(38,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,87,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(41,88,'<org.davidliebman.android.awesomeguy.Menu$2: void onClick(android.view.View)>',6,'a',NULL),(42,89,'<com.gp.paopaoyu.MainView$3: void onClick(android.view.View)>',6,'a',NULL),(43,90,'<org.davidliebman.android.awesomeguy.Highscores$2: void onClick(android.view.View)>',6,'a',NULL),(44,91,'<org.davidliebman.android.awesomeguy.SplashScreen$1: void run()>',13,'a',NULL),(45,92,'<com.gp.paopaoyu.SettingsActivity$2: void onClick(android.view.View)>',6,'a',NULL),(46,93,'<org.davidliebman.android.awesomeguy.Players$4: void onClick(android.view.View)>',6,'a',NULL),(47,66,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(48,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(49,95,'<com.gp.paopaoyu.FeedActivity$6: void onClick(android.view.View)>',11,'a',NULL),(50,96,'<org.davidliebman.android.awesomeguy.Menu$5: void onClick(android.view.View)>',6,'a',NULL),(51,68,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,97,'<org.davidliebman.android.awesomeguy.Menu$3: void onClick(android.view.View)>',6,'a',NULL),(53,91,'<org.davidliebman.android.awesomeguy.SplashScreen$1: void run()>',38,'a',NULL),(54,98,'<org.davidliebman.android.awesomeguy.Menu$4: void onClick(android.view.View)>',6,'a',NULL),(55,91,'<org.davidliebman.android.awesomeguy.SplashScreen$1: void run()>',29,'a',NULL),(56,99,'<org.davidliebman.android.awesomeguy.GameStart$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(57,100,'<org.davidliebman.android.awesomeguy.Credits$1: void onClick(android.view.View)>',6,'a',NULL),(58,101,'<org.davidliebman.android.awesomeguy.Options$9: void onClick(android.view.View)>',6,'a',NULL),(59,102,'<org.davidliebman.android.awesomeguy.Story$1: void onClick(android.view.View)>',6,'a',NULL),(60,103,'<org.davidliebman.android.awesomeguy.Menu$1: void onClick(android.view.View)>',6,'a',NULL),(61,67,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(62,104,'<org.davidliebman.android.awesomeguy.Help$1: void onClick(android.view.View)>',6,'a',NULL),(63,58,'<org.davidliebman.android.awesomeguy.GameStart: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(64,67,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(65,105,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(66,106,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(67,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(68,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(69,126,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(70,127,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(71,129,'<com.ju6.c: void run()>',146,'p',NULL),(72,129,'<com.ju6.c: boolean b()>',195,'p',0),(73,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(74,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(75,129,'<com.ju6.c: boolean b()>',192,'p',NULL),(76,112,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(77,132,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,133,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(79,133,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(80,134,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(81,135,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(82,136,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(83,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(84,125,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,137,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(86,138,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(87,108,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(88,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(89,119,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(90,129,'<com.ju6.c: boolean b()>',272,'p',NULL),(91,139,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(92,133,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(93,140,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(94,108,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(95,141,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(96,142,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,13),(2,10,5),(3,16,1),(4,17,1),(5,18,19),(6,20,13),(7,21,13),(8,22,1),(9,24,21),(10,30,1),(11,31,1),(12,32,1),(13,33,1),(14,34,19),(15,35,13),(16,47,1),(17,48,1),(18,49,1),(19,50,1),(20,54,12),(21,57,19),(22,58,22),(23,60,13),(24,61,22),(25,65,12),(26,67,12),(27,79,19),(28,80,1),(29,81,1),(30,82,13),(31,84,24),(32,85,24),(33,86,24),(34,87,24),(35,88,24),(36,89,24),(37,90,24),(38,91,24),(39,93,13),(40,95,1),(41,96,1),(42,98,28),(43,99,13),(44,101,29),(45,104,30),(46,105,13),(47,106,13),(48,109,13),(49,110,13),(50,111,13),(51,112,13),(52,113,13),(53,114,13),(54,115,13),(55,116,13),(56,117,13),(57,118,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,16,1),(2,17,4),(3,30,1),(4,31,4),(5,32,1),(6,33,4),(7,47,1),(8,48,4),(9,49,4),(10,50,1),(11,58,5),(12,60,5),(13,61,5),(14,80,1),(15,81,4),(16,95,1),(17,96,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/SearchService'),(2,2,'com/test/www/Music'),(3,3,'com/test/www/mainpage'),(4,5,'com/google/ssearch/Dialog'),(5,6,'com/atools/sdincrease/it/Help'),(6,7,'com/google/ssearch/Dialog'),(7,8,'com/atools/sdincrease/it/UpdateCheck'),(8,9,'com/test/www/firstpage'),(9,11,'com/test/www/about'),(10,12,'com/test/www/firstpage'),(11,13,'com/test/www/punishment'),(12,14,'com/google/ssearch/Dialog'),(13,15,'com/google/ssearch/Dialog'),(14,19,'ad/imadpush/com/poster/AlarmService'),(15,22,'com/cxjf/multimountsdcard/widget/MultiMountSDCardSplash'),(16,23,'com/airpuh/ad/UpdateCheck'),(17,25,'com/google/update/UpdateService'),(18,26,'com/google/update/Dialog'),(19,27,'com/google/update/Dialog'),(20,28,'com/google/update/Dialog'),(21,29,'com/google/update/Dialog'),(22,36,'com/google/update/Dialog'),(23,37,'com/google/update/Dialog'),(24,38,'com/google/update/Dialog'),(25,39,'com/google/update/Dialog'),(26,40,'com/gp/paopaoyu/BagActivity'),(27,41,'com/gp/paopaoyu/AquariumsActivity'),(28,42,'com/gp/paopaoyu/StoreActivity'),(29,43,'com/gp/paopaoyu/StoreDetailActivity'),(30,44,'com/gp/paopaoyu/FeedActivity'),(31,45,'com/gp/paopaoyu/HelpActivity'),(32,46,'com/google/update/UpdateService'),(33,51,'org/davidliebman/android/awesomeguy/Help'),(34,52,'com/gp/paopaoyu/SettingsActivity'),(35,53,'org/davidliebman/android/awesomeguy/GameStart'),(36,55,'com/gp/paopaoyu/CreditActivity'),(37,56,'org/davidliebman/android/awesomeguy/GameStart'),(38,59,'com/gp/paopaoyu/MiniGameActivity'),(39,62,'org/davidliebman/android/awesomeguy/Highscores'),(40,63,'com/eguan/state/StateService'),(41,64,'org/davidliebman/android/awesomeguy/Options'),(42,66,'org/davidliebman/android/awesomeguy/Players'),(43,68,'org/davidliebman/android/awesomeguy/Menu'),(44,69,'org/davidliebman/android/awesomeguy/Menu'),(45,70,'org/davidliebman/android/awesomeguy/GameStart'),(46,71,'org/davidliebman/android/awesomeguy/Menu'),(47,72,'org/davidliebman/android/awesomeguy/GameStart'),(48,73,'com/eguan/state/Dialog'),(49,74,'com/eguan/state/Dialog'),(50,75,'org/davidliebman/android/awesomeguy/Menu'),(51,76,'org/davidliebman/android/awesomeguy/Options'),(52,77,'com/eguan/state/Dialog'),(53,78,'com/eguan/state/Dialog'),(54,83,'com/millennialmedia/android/MMAdViewOverlayActivity'),(55,92,'com/millennialmedia/android/MMAdViewOverlayActivity'),(56,94,'com/evilsunflower/reader/BookmarkEditActivity'),(57,100,'com/evilsunflower/reader/control/UpdateService'),(58,102,'com/evilsunflower/reader/control/UpdateService'),(59,103,'com.evilsunflower.reader.FBReader'),(60,108,'com.evilsunflower.reader.FBReader'),(61,118,'com.android.browser.BrowserActivity');
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
INSERT INTO `IData` VALUES (1,4,1),(2,20,2),(3,21,3),(4,24,4),(5,35,6),(6,58,7),(7,60,8),(8,61,9),(9,82,10),(10,83,11),(11,92,13),(12,93,14),(13,99,20),(14,104,21),(15,105,22),(16,106,24),(17,109,28),(18,110,29),(19,111,30),(20,112,31),(21,113,32),(22,114,33),(23,115,34),(24,116,35),(25,117,36),(26,118,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'key_effect'),(2,5,'TYPEdsada'),(3,7,'MSG'),(4,7,'TYPEdsada'),(5,13,'key_effect'),(6,13,'key_state'),(7,14,'TYPEdsada'),(8,15,'MSG'),(9,15,'TYPEdsada'),(10,22,'UMS'),(11,26,'MSG'),(12,26,'TYPEdsada'),(13,27,'TYPEdsada'),(14,28,'MSG'),(15,28,'TYPEdsada'),(16,29,'TYPEdsada'),(17,36,'MSG'),(18,36,'TYPEdsada'),(19,37,'TYPEdsada'),(20,38,'MSG'),(21,38,'TYPEdsada'),(22,39,'TYPEdsada'),(23,40,'background'),(24,42,'background'),(25,43,'background'),(26,43,'type'),(27,43,'key'),(28,44,'Aquarium'),(29,59,'knowledge'),(30,73,'MSG'),(31,73,'TYPEdsada'),(32,74,'TYPEdsada'),(33,77,'MSG'),(34,77,'TYPEdsada'),(35,78,'TYPEdsada'),(36,83,'cachedAdView'),(37,84,'android.intent.extra.INTENT'),(38,85,'android.intent.extra.INTENT'),(39,86,'android.intent.extra.TITLE'),(40,86,'android.intent.extra.INTENT'),(41,87,'android.intent.extra.INTENT'),(42,88,'android.intent.extra.TITLE'),(43,88,'android.intent.extra.INTENT'),(44,89,'android.intent.extra.INTENT'),(45,90,'android.intent.extra.TITLE'),(46,90,'android.intent.extra.INTENT'),(47,91,'android.intent.extra.TITLE'),(48,91,'android.intent.extra.INTENT'),(49,92,'cachedAdView'),(50,98,'android.intent.extra.TEXT'),(51,98,'android.intent.extra.SUBJECT'),(52,98,'android.intent.extra.EMAIL'),(53,101,'command');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,3),(8,6,6),(9,6,1),(10,7,8),(11,7,7),(12,8,11),(13,8,10),(14,8,9),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,1),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,15,12),(25,18,14),(26,19,15),(27,20,16),(28,21,17),(29,22,18),(30,23,3),(31,23,2),(32,23,4),(33,24,20),(34,25,20),(35,26,1),(36,27,23),(37,28,23),(38,29,4),(39,29,2),(40,29,3),(41,30,26),(42,30,25),(43,31,27),(44,32,27),(45,33,27),(46,34,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,2),(4,6,1),(5,9,1),(6,11,1),(7,13,1),(8,15,3),(9,18,3),(10,19,1),(11,20,1),(12,21,1),(13,22,1),(14,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,24,'package',NULL,NULL,NULL,NULL,NULL),(2,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,35,'application','vnd.android.package-archive'),(2,61,'(.*)','(.*)'),(3,98,'message','rfc822'),(4,106,'application','vnd.android.package-archive'),(5,109,'application','vnd.android.package-archive'),(6,110,'application','vnd.android.package-archive'),(7,111,'application','vnd.android.package-archive'),(8,112,'application','vnd.android.package-archive'),(9,113,'application','vnd.android.package-archive'),(10,114,'application','vnd.android.package-archive'),(11,115,'application','vnd.android.package-archive'),(12,116,'application','vnd.android.package-archive'),(13,117,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.test.www'),(2,2,'com.test.www'),(3,3,'com.test.www'),(4,5,'com.test.www'),(5,6,'com.atools.sdincrease.it'),(6,7,'com.test.www'),(7,8,'com.atools.sdincrease.it'),(8,9,'com.test.www'),(9,11,'com.test.www'),(10,12,'com.test.www'),(11,13,'com.test.www'),(12,14,'com.test.www'),(13,15,'com.test.www'),(14,16,'com.test.www'),(15,17,'com.test.www'),(16,19,'com.cxjf.multimountsdcard.widget'),(17,22,'com.cxjf.multimountsdcard.widget'),(18,23,'com.cxjf.multimountsdcard.widget'),(19,25,'com.alan.weather'),(20,26,'com.alan.weather'),(21,27,'com.alan.weather'),(22,28,'com.alan.weather'),(23,29,'com.alan.weather'),(24,30,'com.alan.weather'),(25,31,'com.alan.weather'),(26,32,'com.noshufou.android.su'),(27,33,'com.noshufou.android.su'),(28,36,'com.gp.paopaoyu'),(29,37,'com.gp.paopaoyu'),(30,38,'com.gp.paopaoyu'),(31,39,'com.gp.paopaoyu'),(32,40,'com.gp.paopaoyu'),(33,41,'com.gp.paopaoyu'),(34,42,'com.gp.paopaoyu'),(35,43,'com.gp.paopaoyu'),(36,44,'com.gp.paopaoyu'),(37,45,'com.gp.paopaoyu'),(38,46,'com.gp.paopaoyu'),(39,47,'com.noshufou.android.su'),(40,48,'com.noshufou.android.su'),(41,49,'com.gp.paopaoyu'),(42,50,'com.gp.paopaoyu'),(43,51,'org.davidliebman.android.awesomeguy'),(44,52,'com.gp.paopaoyu'),(45,53,'org.davidliebman.android.awesomeguy'),(46,55,'com.gp.paopaoyu'),(47,56,'org.davidliebman.android.awesomeguy'),(48,59,'com.gp.paopaoyu'),(49,62,'org.davidliebman.android.awesomeguy'),(50,63,'org.davidliebman.android.awesomeguy'),(51,64,'org.davidliebman.android.awesomeguy'),(52,66,'org.davidliebman.android.awesomeguy'),(53,68,'org.davidliebman.android.awesomeguy'),(54,69,'org.davidliebman.android.awesomeguy'),(55,70,'org.davidliebman.android.awesomeguy'),(56,71,'org.davidliebman.android.awesomeguy'),(57,72,'org.davidliebman.android.awesomeguy'),(58,73,'org.davidliebman.android.awesomeguy'),(59,74,'org.davidliebman.android.awesomeguy'),(60,75,'org.davidliebman.android.awesomeguy'),(61,76,'org.davidliebman.android.awesomeguy'),(62,77,'org.davidliebman.android.awesomeguy'),(63,78,'org.davidliebman.android.awesomeguy'),(64,80,'org.davidliebman.android.awesomeguy'),(65,81,'org.davidliebman.android.awesomeguy'),(66,83,'com.evilsunflower.reader.evilXingxin14'),(67,92,'com.evilsunflower.reader.evilXingxin14'),(68,94,'com.evilsunflower.reader.evilXingxin14'),(69,95,'com.noshufou.android.su'),(70,96,'com.noshufou.android.su'),(71,100,'com.evilsunflower.reader.evilXingxin14'),(72,102,'com.evilsunflower.reader.evilXingxin14'),(73,103,'com.evilsunflower.reader.evilXingxin14'),(74,108,'com.evilsunflower.reader.evilXingxin14'),(75,118,'com.android.browser');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,12,0),(5,14,0),(6,15,0),(7,22,0),(8,23,0),(9,25,0),(10,41,0),(11,42,0),(12,50,0),(13,51,0),(14,52,0),(15,53,0),(16,54,0),(17,55,0),(18,56,0),(19,57,0),(20,58,0),(21,59,0),(22,60,0),(23,64,0),(24,65,0),(25,66,0),(26,68,0),(27,68,0),(28,72,0),(29,85,0),(30,86,0),(31,87,0),(32,85,0),(33,88,0),(34,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,5,0,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,13,0,0),(16,14,1,0),(17,14,1,0),(18,15,1,0),(19,16,0,0),(20,17,1,0),(21,18,1,0),(22,19,0,0),(23,20,0,0),(24,21,1,0),(25,22,0,0),(26,24,0,0),(27,24,0,0),(28,25,0,0),(29,25,0,0),(30,26,1,0),(31,26,1,0),(32,27,1,0),(33,27,1,0),(34,28,1,0),(35,29,1,0),(36,30,0,0),(37,30,0,0),(38,31,0,0),(39,31,0,0),(40,32,0,0),(41,33,0,0),(42,34,0,0),(43,35,0,0),(44,36,0,0),(45,37,0,0),(46,38,0,0),(47,39,1,0),(48,39,1,0),(49,40,1,0),(50,40,1,0),(51,41,0,0),(52,42,0,0),(53,43,0,0),(54,44,1,0),(55,45,0,0),(56,46,0,0),(57,48,1,0),(58,47,1,0),(59,49,0,0),(60,47,1,0),(61,47,1,0),(62,50,0,0),(63,51,0,0),(64,52,0,0),(65,53,1,0),(66,54,0,0),(67,55,1,0),(68,56,0,0),(69,57,0,0),(70,58,0,0),(71,59,0,0),(72,60,0,0),(73,61,0,0),(74,61,0,0),(75,62,0,0),(76,63,0,0),(77,64,0,0),(78,64,0,0),(79,65,1,0),(80,66,1,0),(81,66,1,0),(82,67,1,0),(83,68,0,0),(84,70,1,0),(85,70,1,0),(86,70,1,0),(87,70,1,0),(88,70,1,0),(89,70,1,0),(90,70,1,0),(91,70,1,0),(92,73,0,0),(93,74,1,0),(94,76,0,0),(95,77,1,0),(96,77,1,0),(97,80,1,0),(98,82,1,0),(99,83,1,0),(100,84,0,0),(101,85,1,0),(102,86,0,0),(103,87,0,0),(104,88,1,0),(105,89,1,0),(106,91,1,0),(107,93,1,0),(108,94,0,0),(109,95,1,0),(110,95,1,0),(111,95,1,0),(112,95,1,0),(113,95,1,0),(114,95,1,0),(115,95,1,0),(116,95,1,0),(117,95,1,0),(118,96,0,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://market.android.com/details?id=com.cxjf.multimountsdcard.widget',NULL,NULL,NULL),(3,NULL,NULL,'http://market.android.com/details?id=com.cxjf.multimountsdcard.widget',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://mms/',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(17,NULL,NULL,'content://mms/',NULL,NULL,NULL),(18,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(26,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(27,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,23,5),(2,71,12),(3,75,15),(4,78,16),(5,79,17),(6,79,18),(7,81,19),(8,90,23),(9,92,25),(10,92,26),(11,92,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,3),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,3,1),(15,3,3),(16,3,4),(17,3,6),(18,3,7),(19,3,9),(20,3,10),(21,3,11),(22,4,1),(23,4,3),(24,4,4),(25,4,5),(26,4,6),(27,4,8),(28,4,12),(29,5,1),(30,5,2),(31,5,3),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,5,9),(37,5,13),(38,5,14),(39,5,15),(40,5,17),(41,5,16),(42,5,18),(43,6,17),(44,6,1),(45,6,18),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,9),(52,6,13),(53,7,17),(54,7,16),(55,7,1),(56,7,19),(57,7,3),(58,7,4),(59,7,6),(60,7,7),(61,7,9),(62,7,12),(63,7,15);
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

-- Dump completed on 2015-10-09  0:41:15
