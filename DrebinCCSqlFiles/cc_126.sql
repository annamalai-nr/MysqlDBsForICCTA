-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_126
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'SQUARE'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.CALL'),(10,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.SEARCH'),(12,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.google.zxing.client.android.SCAN');
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
INSERT INTO `Applications` VALUES (1,'com.ps.square',9),(2,'com.cxjf.hexamobrecoverypro',11),(3,'com.ps.yams',9),(4,'com.gp.geekadoo',7),(5,'com.alan.weather',21),(6,'com.livegame.android.shelves',9),(7,'com.ps.pushbox',2);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.square.Square'),(3,1,'com.ps.square.elos.Elos'),(4,2,'com.cxjf.hexamobrecoverypro.Logo'),(5,2,'com.cxjf.hexamobrecoverypro.Intro'),(6,1,'com.ps.square.eloscomplex.ElosComplex'),(7,2,'com.cxjf.hexamobrecoverypro.MainActivity'),(8,2,'com.cxjf.hexamobrecoverypro.Types'),(9,1,'com.google.update.Dialog'),(10,2,'com.cxjf.hexamobrecoverypro.Selection'),(11,1,'com.waps.OffersWebView'),(12,2,'com.cxjf.hexamobrecoverypro.SearchThread'),(13,1,'com.google.update.UpdateService'),(14,2,'com.cxjf.hexamobrecoverypro.Results'),(15,1,'com.google.update.Receiver'),(16,2,'com.cxjf.hexamobrecoverypro.RecoveryThread'),(17,2,'com.cxjf.hexamobrecoverypro.Recovered'),(18,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder'),(19,2,'com.cxjf.hexamobrecoverypro.Loadingitems'),(20,2,'com.cxjf.hexamobrecoverypro.FoundAdapter'),(21,2,'com.cxjf.hexamobrecoverypro.RecoveredAdapter'),(22,3,'com.ps.yams.Yams'),(23,2,'com.cxjf.hexamobrecoverypro.SqlHelper'),(24,2,'com.cxjf.hexamobrecoverypro.MyOnKeyListener'),(25,4,'com.gp.geekadoo.ui.MainScreen'),(26,3,'com.google.update.Dialog'),(27,2,'ad.imadpush.com.poster.PosterInfoActivity'),(28,3,'cn.domob.android.ads.DomobActivity'),(29,2,'com.airpuh.ad.UpdateCheck'),(30,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,4,'com.gp.geekadoo.ui.Yaniv'),(32,2,'ad.imadpush.com.poster.AlarmService'),(33,3,'com.waps.OffersWebView'),(34,4,'com.google.update.Dialog'),(35,2,'ad.imadpush.com.poster.ReceiverAlarm'),(36,3,'com.google.update.UpdateService'),(37,4,'cn.domob.android.ads.DomobActivity'),(38,3,'com.google.update.Receiver'),(39,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,4,'com.google.update.UpdateService'),(41,4,'com.google.update.Receiver'),(42,5,'com.alan.weather.WeatherForecast'),(43,6,'com.livegame.android.shelves.activity.ShelvesActivity'),(44,5,'com.google.ads.AdActivity'),(45,5,'com.vpon.adon.android.WebInApp'),(46,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(47,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,5,'com.waps.OffersWebView'),(49,6,'com.livegame.android.shelves.activity.AddBookActivity'),(50,5,'com.google.update.Dialog'),(51,6,'com.livegame.android.shelves.activity.BookDetailsActivity'),(52,5,'com.google.update.UpdateService'),(53,5,'com.google.update.Receiver'),(54,6,'com.livegame.android.shelves.activity.SettingsActivity'),(55,6,'com.google.ads.AdActivity'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.waps.OffersWebView'),(60,6,'com.google.update.Dialog'),(61,6,'com.google.update.UpdateService'),(62,6,'com.google.update.Receiver'),(63,6,'com.livegame.android.shelves.provider.BooksProvider'),(64,7,'com.ps.pushbox.Pushbox'),(65,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(66,7,'com.google.update.Dialog'),(67,7,'com.google.update.UpdateService'),(68,7,'com.google.update.Receiver'),(69,1,'com.waps.q'),(70,1,'com.google.update.Dialog$1'),(71,1,'com.waps.ac'),(72,1,'com.ps.square.Square$ItemClickListener'),(73,1,'com.waps.o'),(74,1,'com.google.update.Dialog$2'),(75,1,'com.waps.z'),(76,1,'com.waps.aa'),(77,5,'com.google.update.UpdateService$AA'),(78,1,'com.google.update.UpdateService$AA'),(79,4,'cn.domob.android.ads.DomobAdManager'),(80,2,'com.cxjf.hexamobrecoverypro.Selection$1'),(81,4,'cn.domob.android.ads.i$6'),(82,5,'com.google.update.Dialog$2'),(83,2,'com.cxjf.hexamobrecoverypro.Results$7'),(84,2,'com.cxjf.hexamobrecoverypro.Types$37'),(85,5,'com.waps.q'),(86,3,'com.waps.o'),(87,2,'com.cxjf.hexamobrecoverypro.Types$6$1'),(88,3,'com.google.update.Dialog$1'),(89,2,'com.cxjf.hexamobrecoverypro.Recovered$4$1'),(90,4,'com.google.update.UpdateService$AA'),(91,2,'com.cxjf.hexamobrecoverypro.Selection$11'),(92,3,'cn.domob.android.ads.i'),(93,5,'com.google.update.Dialog$1'),(94,4,'com.google.update.Dialog$2'),(95,3,'com.google.update.Dialog$2'),(96,4,'cn.domob.android.ads.i'),(97,6,'com.waps.aa'),(98,3,'com.waps.ac'),(99,5,'com.waps.ac'),(100,5,'com.waps.o'),(101,2,'com.cxjf.hexamobrecoverypro.Results$11'),(102,4,'cn.domob.android.ads.DomobActionReceiver'),(103,7,'com.google.update.Dialog$1'),(104,6,'com.livegame.android.shelves.provider.BooksUpdater'),(105,2,'com.cxjf.hexamobrecoverypro.MainActivity$11'),(106,4,'cn.domob.android.ads.DomobAdEngine$2'),(107,4,'com.gp.geekadoo.ui.MainScreen$3'),(108,7,'com.ju6.a'),(109,6,'com.waps.z'),(110,3,'cn.domob.android.ads.DomobAdManager'),(111,5,'com.waps.z'),(112,7,'com.google.update.Dialog$2'),(113,5,'com.waps.aa'),(114,3,'com.waps.aa'),(115,2,'b'),(116,2,'com.cxjf.hexamobrecoverypro.Results$3$1'),(117,7,'com.google.update.UpdateService$MyThread'),(118,2,'com.cxjf.hexamobrecoverypro.Types$33'),(119,4,'com.google.update.Dialog$1'),(120,2,'com.cxjf.hexamobrecoverypro.MainActivity$10'),(121,3,'cn.domob.android.ads.DomobAdEngine$2'),(122,6,'com.livegame.android.shelves.provider.BooksManager'),(123,2,'com.cxjf.hexamobrecoverypro.Results$10'),(124,4,'com.gp.geekadoo.ui.MainScreen$5'),(125,2,'com.cxjf.hexamobrecoverypro.Recovered$13'),(126,3,'com.waps.z'),(127,6,'com.google.update.Dialog$2'),(128,2,'com.cxjf.hexamobrecoverypro.Types$36'),(129,6,'com.waps.AppConnect'),(130,3,'com.google.update.UpdateService$AA'),(131,3,'cn.domob.android.ads.DomobActionReceiver'),(132,3,'com.waps.q'),(133,2,'com.cxjf.hexamobrecoverypro.MainActivity$9'),(134,2,'com.cxjf.hexamobrecoverypro.Selection$2$1'),(135,6,'com.waps.q'),(136,2,'com.cxjf.hexamobrecoverypro.Recovered$10'),(137,3,'cn.domob.android.ads.i$6'),(138,6,'com.waps.ac'),(139,2,'com.cxjf.hexamobrecoverypro.MainActivity$5'),(140,2,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(141,6,'com.google.update.UpdateService$AA'),(142,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$5'),(143,2,'com.cxjf.hexamobrecoverypro.MainActivity$12'),(144,6,'com.waps.o'),(145,2,'com.cxjf.hexamobrecoverypro.Recovered$7'),(146,2,'com.cxjf.hexamobrecoverypro.Selection$6'),(147,6,'com.google.update.Dialog$1'),(148,2,'com.cxjf.hexamobrecoverypro.Selection$9'),(149,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$7'),(150,2,'com.cxjf.hexamobrecoverypro.Results$13'),(151,2,'com.cxjf.hexamobrecoverypro.Types$5'),(152,2,'com.cxjf.hexamobrecoverypro.Types$8'),(153,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$10'),(154,2,'com.cxjf.hexamobrecoverypro.MainActivity$6'),(155,2,'com.cxjf.hexamobrecoverypro.Results$4'),(156,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$9'),(157,2,'com.cxjf.hexamobrecoverypro.Selection$10'),(158,2,'com.cxjf.hexamobrecoverypro.Results$9'),(159,2,'com.cxjf.hexamobrecoverypro.Selection$12'),(160,2,'com.cxjf.hexamobrecoverypro.Recovered$9'),(161,2,'com.cxjf.hexamobrecoverypro.Recovered$11'),(162,2,'com.cxjf.hexamobrecoverypro.Recovered$8'),(163,2,'com.cxjf.hexamobrecoverypro.Selection$8'),(164,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$4$1'),(165,2,'com.cxjf.hexamobrecoverypro.Recovered$6'),(166,2,'com.cxjf.hexamobrecoverypro.Types$34'),(167,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$11'),(168,2,'com.cxjf.hexamobrecoverypro.ListRecoveredFolder$8'),(169,2,'com.cxjf.hexamobrecoverypro.Results$12'),(170,2,'com.cxjf.hexamobrecoverypro.MainActivity$8'),(171,2,'com.cxjf.hexamobrecoverypro.Intro$1'),(172,2,'com.cxjf.hexamobrecoverypro.Types$35');
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'url'),(2,11,'USER_ID'),(3,2,'APP_ID'),(4,11,'APP_ID'),(5,11,'isFinshClose'),(6,1,'shouldShowTitlebar'),(7,1,'overlayTitle'),(8,2,'DEVICE_ID'),(9,11,'DEVICE_ID'),(10,11,'offers_webview_tag'),(11,2,'CLIENT_PACKAGE'),(12,11,'CLIENT_PACKAGE'),(13,11,'ACTIVITY_FLAG'),(14,11,'URL_PARAMS'),(15,11,'URL'),(16,13,'ST_MY_PID'),(17,2,'WAPS_ID'),(18,11,'WAPS_ID'),(19,11,'Notify_Id'),(20,11,'Offers_URL'),(21,11,'UrlPath'),(22,1,'shouldShowBottomBar'),(23,11,'Notify_Url_Params'),(24,13,'ST_START_DELAY'),(25,1,'transitionTime'),(26,9,'MSG'),(27,2,'WAPS_PID'),(28,11,'WAPS_PID'),(29,1,'shouldEnableBottomBar'),(30,11,'SHWO_FLAG'),(31,1,'shouldMakeOverlayTransparent'),(32,1,'overlayTransition'),(33,52,'ST_MY_PID'),(34,48,'CLIENT_PACKAGE'),(35,42,'APP_ID'),(36,1,'shouldResizeOverlay'),(37,48,'APP_ID'),(38,52,'ST_START_DELAY'),(39,42,'WAPS_ID'),(40,48,'WAPS_ID'),(41,47,'transitionTime'),(42,47,'shouldShowTitlebar'),(43,46,'isTestMode'),(44,39,'overlayTransition'),(45,9,'TYPEdsada'),(46,34,'TYPEdsada'),(47,47,'shouldShowBottomBar'),(48,47,'url'),(49,42,'CLIENT_PACKAGE'),(50,48,'URL_PARAMS'),(51,48,'UrlPath'),(52,48,'offers_webview_tag'),(53,42,'DEVICE_ID'),(54,48,'DEVICE_ID'),(55,48,'URL'),(56,47,'overlayTransition'),(57,42,'UMENG_CHANNEL'),(58,48,'Notify_Url_Params'),(59,28,'actType'),(60,33,'Offers_URL'),(61,48,'isFinshClose'),(62,39,'overlayTitle'),(63,39,'shouldMakeOverlayTransparent'),(64,46,'Adwo_PID'),(65,45,'url'),(66,42,'UMENG_APPKEY'),(67,50,'MSG'),(68,48,'Notify_Id'),(69,48,'USER_ID'),(70,39,'shouldEnableBottomBar'),(71,30,'shouldEnableBottomBar'),(72,36,'DOMOB_TEST_MODE'),(73,30,'DOMOB_TEST_MODE'),(74,48,'Offers_URL'),(75,47,'shouldEnableBottomBar'),(76,67,'ST_MY_PID'),(77,30,'transitionTime'),(78,37,'appId'),(79,37,'actType'),(80,33,'Notify_Id'),(81,30,'shouldShowTitlebar'),(82,30,'overlayTitle'),(83,26,'TYPEdsada'),(84,47,'shouldResizeOverlay'),(85,45,'adWidth'),(86,65,'shouldResizeOverlay'),(87,47,'overlayTitle'),(88,58,'shouldShowTitlebar'),(89,39,'shouldResizeOverlay'),(90,22,'tours'),(91,40,'DOMOB_ALLOW_LOCATION'),(92,36,'ST_START_DELAY'),(93,43,'SCAN_RESULT'),(94,39,'DOMOB_ALLOW_LOCATION'),(95,22,'points'),(96,43,'query'),(97,40,'DOMOB_PID'),(98,36,'ST_MY_PID'),(99,59,'Notify_Url_Params'),(100,33,'isFinshClose'),(101,39,'DOMOB_PID'),(102,57,'Adwo_PID'),(103,36,'DOMOB_ALLOW_LOCATION'),(104,59,'APP_ID'),(105,30,'DOMOB_ALLOW_LOCATION'),(106,43,'APP_ID'),(107,42,'WAPS_PID'),(108,48,'WAPS_PID'),(109,48,'ACTIVITY_FLAG'),(110,47,'shouldMakeOverlayTransparent'),(111,65,'shouldMakeOverlayTransparent'),(112,50,'TYPEdsada'),(113,40,'DOMOB_TEST_MODE'),(114,39,'DOMOB_TEST_MODE'),(115,48,'SHWO_FLAG'),(116,65,'shouldEnableBottomBar'),(117,39,'url'),(118,37,'appName'),(119,32,'gamedata'),(120,39,'shouldShowTitlebar'),(121,66,'MSG'),(122,30,'shouldResizeOverlay'),(123,65,'url'),(124,33,'DEVICE_ID'),(125,65,'transitionTime'),(126,22,'DEVICE_ID'),(127,65,'shouldShowBottomBar'),(128,33,'UrlPath'),(129,51,'shelves.extra.book_id'),(130,27,'dId'),(131,39,'shouldShowBottomBar'),(132,34,'MSG'),(133,65,'overlayTransition'),(134,59,'UrlPath'),(135,58,'shouldMakeOverlayTransparent'),(136,49,'shelves.search.inprogress'),(137,43,'shelves.add.book'),(138,59,'isFinshClose'),(139,28,'appName'),(140,26,'MSG'),(141,36,'DOMOB_PID'),(142,30,'DOMOB_PID'),(143,33,'WAPS_ID'),(144,61,'ST_START_DELAY'),(145,22,'WAPS_ID'),(146,65,'shouldShowTitlebar'),(147,43,'shelves.import.index'),(148,30,'overlayTransition'),(149,67,'ST_START_DELAY'),(150,61,'ST_MY_PID'),(151,66,'TYPEdsada'),(152,65,'overlayTitle'),(153,58,'shouldShowBottomBar'),(154,40,'ST_START_DELAY'),(155,33,'WAPS_PID'),(156,22,'WAPS_PID'),(157,49,'shelves.add.bookToAdd'),(158,59,'offers_webview_tag'),(159,59,'Offers_URL'),(160,60,'TYPEdsada'),(161,33,'URL_PARAMS'),(162,49,'shelves.add.book'),(163,33,'URL'),(164,30,'url'),(165,33,'CLIENT_PACKAGE'),(166,22,'CLIENT_PACKAGE'),(167,30,'shouldMakeOverlayTransparent'),(168,33,'offers_webview_tag'),(169,60,'MSG'),(170,40,'ST_MY_PID'),(171,32,'state'),(172,39,'transitionTime'),(173,58,'shouldEnableBottomBar'),(174,33,'Notify_Url_Params'),(175,59,'WAPS_ID'),(176,30,'shouldShowBottomBar'),(177,43,'WAPS_ID'),(178,22,'de_valeur'),(179,43,'shelves.add.inprogress'),(180,43,'SCAN_RESULT_FORMAT'),(181,59,'DEVICE_ID'),(182,43,'DEVICE_ID'),(183,59,'URL'),(184,29,'MYAD_PID'),(185,59,'USER_ID'),(186,58,'overlayTransition'),(187,59,'ACTIVITY_FLAG'),(188,56,'url'),(189,59,'Notify_Id'),(190,33,'USER_ID'),(191,58,'url'),(192,33,'SHWO_FLAG'),(193,22,'lances'),(194,33,'ACTIVITY_FLAG'),(195,49,'shelves.search.book'),(196,59,'CLIENT_PACKAGE'),(197,43,'CLIENT_PACKAGE'),(198,58,'overlayTitle'),(199,59,'URL_PARAMS'),(200,59,'WAPS_PID'),(201,43,'WAPS_PID'),(202,33,'APP_ID'),(203,22,'APP_ID'),(204,22,'dialog_shown'),(205,28,'appId'),(206,58,'shouldResizeOverlay'),(207,49,'shelves.add.inprogress'),(208,58,'transitionTime'),(209,43,'shelves.import.books'),(210,56,'adWidth'),(211,59,'SHWO_FLAG'),(212,57,'isTestMode'),(213,43,'shelves.import.inprogress'),(214,4,'ad.imadpush.com'),(215,31,'ad.imadpush.com'),(216,27,'push'),(217,27,'notifyId'),(218,27,'userId');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'s',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'p',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,85,'r',1,NULL,NULL),(71,102,'r',1,NULL,NULL),(72,131,'r',1,NULL,NULL),(73,132,'r',1,NULL,NULL),(74,135,'r',1,NULL,NULL),(75,140,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,15),(2,2,13),(3,3,11),(4,4,11),(5,5,9),(6,6,11),(7,7,2),(8,8,11),(9,9,9),(10,10,13),(11,11,2),(12,12,11),(13,13,48),(14,14,11),(15,15,52),(16,16,13),(17,17,52),(18,18,40),(19,18,39),(20,19,10),(21,20,40),(22,20,39),(23,21,4),(24,22,50),(25,23,14),(26,24,8),(27,25,33),(28,26,8),(29,27,52),(30,28,26),(31,29,17),(32,30,40),(33,31,10),(34,32,36),(35,32,30),(36,33,34),(37,34,50),(38,35,25),(39,36,26),(40,37,40),(41,37,39),(42,38,59),(43,39,33),(44,40,48),(45,41,67),(46,42,48),(47,43,25),(48,44,36),(49,45,14),(50,46,66),(51,47,48),(52,48,43),(53,49,7),(54,50,39),(55,50,40),(56,51,25),(57,52,67),(58,53,33),(59,54,59),(60,56,53),(61,55,68),(62,57,41),(63,58,61),(64,59,30),(65,59,36),(66,60,48),(67,61,66),(68,62,40),(69,63,48),(70,64,67),(71,65,61),(72,66,33),(73,67,7),(74,68,40),(75,69,14),(76,70,67),(77,71,8),(78,72,43),(79,73,34),(80,74,7),(81,75,30),(82,75,36),(83,76,43),(84,77,33),(85,78,14),(86,79,43),(87,80,25),(88,81,38),(89,82,17),(90,83,63),(91,84,33),(92,85,60),(93,86,8),(94,87,43),(95,88,36),(96,89,43),(97,90,7),(98,91,62),(99,92,36),(100,93,10),(101,94,17),(102,95,43),(103,96,36),(104,96,30),(105,97,59),(106,98,51),(107,98,43),(108,99,63),(109,100,43),(110,100,49),(111,101,10),(112,102,59),(113,103,7),(114,104,35),(115,105,43),(116,106,61),(117,107,18),(118,108,7),(119,109,51),(120,110,43),(121,111,8),(122,112,59),(123,113,17),(124,114,43),(125,115,10),(126,116,60),(127,117,10),(128,118,18),(129,119,43),(130,120,14),(131,121,59),(132,122,8),(133,123,18),(134,124,7),(135,125,8),(136,126,18),(137,127,7),(138,128,14),(139,129,18),(140,130,10),(141,131,14),(142,132,10),(143,133,17),(144,134,17),(145,135,7),(146,136,19),(147,137,17),(148,138,10),(149,139,18),(150,140,17),(151,141,8),(152,142,18),(153,143,18),(154,144,14),(155,145,7),(156,146,5),(157,147,8);
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
INSERT INTO `ExitPoints` VALUES (1,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(4,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(5,70,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,71,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(7,72,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(8,73,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(9,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,72,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(12,75,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(13,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(14,76,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(15,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(16,78,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(17,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,79,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(19,80,'<com.cxjf.hexamobrecoverypro.Selection$1: void onClick(android.view.View)>',8,'a',NULL),(20,81,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(21,4,'<com.cxjf.hexamobrecoverypro.Logo: void onCreate(android.os.Bundle)>',22,'s',NULL),(22,82,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(23,83,'<com.cxjf.hexamobrecoverypro.Results$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,84,'<com.cxjf.hexamobrecoverypro.Types$37: void onClick(android.view.View)>',6,'a',NULL),(25,86,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,87,'<com.cxjf.hexamobrecoverypro.Types$6$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(27,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(28,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(29,89,'<com.cxjf.hexamobrecoverypro.Recovered$4$1: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,90,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(31,91,'<com.cxjf.hexamobrecoverypro.Selection$11: void onClick(android.view.View)>',12,'a',NULL),(32,92,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(33,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(34,93,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,25,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(36,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,96,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(38,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,98,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(40,99,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(41,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,100,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,25,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(44,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(45,101,'<com.cxjf.hexamobrecoverypro.Results$11: void onClick(android.view.View)>',6,'a',NULL),(46,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(48,104,'<com.livegame.android.shelves.provider.BooksUpdater: void run()>',50,'p',NULL),(49,105,'<com.cxjf.hexamobrecoverypro.MainActivity$11: void onClick(android.view.View)>',12,'a',NULL),(50,106,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(51,107,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(52,108,'<com.ju6.a: boolean b()>',178,'p',NULL),(53,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(54,109,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,68,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,61,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(59,110,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(60,111,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(61,112,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(62,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,113,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,61,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(66,114,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(67,115,'<b: void s()>',19,'a',NULL),(68,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(69,116,'<com.cxjf.hexamobrecoverypro.Results$3$1: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(70,117,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(71,118,'<com.cxjf.hexamobrecoverypro.Types$33: void onClick(android.view.View)>',6,'a',NULL),(72,43,'<com.livegame.android.shelves.activity.ShelvesActivity: void startScan(int)>',5,'a',NULL),(73,119,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(74,120,'<com.cxjf.hexamobrecoverypro.MainActivity$10: void onClick(android.view.View)>',6,'a',NULL),(75,121,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,122,'<com.livegame.android.shelves.provider.BooksManager: java.lang.String findBookId(android.content.ContentResolver,java.lang.String)>',11,'p',NULL),(77,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(78,123,'<com.cxjf.hexamobrecoverypro.Results$10: void onClick(android.view.View)>',6,'a',NULL),(79,43,'<com.livegame.android.shelves.activity.ShelvesActivity: void handleSearchQuery(android.content.Intent)>',14,'a',NULL),(80,124,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(81,38,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(82,125,'<com.cxjf.hexamobrecoverypro.Recovered$13: void onClick(android.content.DialogInterface,int)>',24,'a',NULL),(83,63,'<com.livegame.android.shelves.provider.BooksProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(84,126,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(85,127,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(86,128,'<com.cxjf.hexamobrecoverypro.Types$36: void onClick(android.view.View)>',12,'a',NULL),(87,129,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(88,130,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(89,122,'<com.livegame.android.shelves.provider.BooksManager: boolean deleteBook(android.content.ContentResolver,java.lang.String)>',6,'p',NULL),(90,133,'<com.cxjf.hexamobrecoverypro.MainActivity$9: void onClick(android.view.View)>',6,'a',NULL),(91,62,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(92,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(93,134,'<com.cxjf.hexamobrecoverypro.Selection$2$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(94,136,'<com.cxjf.hexamobrecoverypro.Recovered$10: void onClick(android.view.View)>',12,'a',NULL),(95,51,'<com.livegame.android.shelves.activity.BookDetailsActivity: void show(android.content.Context,java.lang.String)>',5,'a',NULL),(96,137,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(97,138,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(98,122,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(99,63,'<com.livegame.android.shelves.provider.BooksProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',31,'p',0),(100,122,'<com.livegame.android.shelves.provider.BooksManager: boolean bookExists(android.content.ContentResolver,java.lang.String)>',10,'p',NULL),(101,10,'<com.cxjf.hexamobrecoverypro.Selection: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(102,59,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(103,139,'<com.cxjf.hexamobrecoverypro.MainActivity$5: void onClick(android.view.View)>',14,'a',NULL),(104,35,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(105,43,'<com.livegame.android.shelves.activity.ShelvesActivity: void onBuy(com.livegame.android.shelves.provider.BooksStore$Book)>',6,'a',NULL),(106,141,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(107,142,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$5: void onClick(android.view.View)>',8,'a',NULL),(108,143,'<com.cxjf.hexamobrecoverypro.MainActivity$12: void onClick(android.view.View)>',6,'a',NULL),(109,122,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,android.net.Uri)>',4,'p',0),(110,54,'<com.livegame.android.shelves.activity.SettingsActivity: void show(android.content.Context)>',3,'a',NULL),(111,8,'<com.cxjf.hexamobrecoverypro.Types: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(112,144,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(113,145,'<com.cxjf.hexamobrecoverypro.Recovered$7: void onClick(android.view.View)>',6,'a',NULL),(114,43,'<com.livegame.android.shelves.activity.ShelvesActivity: void onNewIntent(android.content.Intent)>',15,'a',NULL),(115,146,'<com.cxjf.hexamobrecoverypro.Selection$6: void onClick(android.view.View)>',17,'a',NULL),(116,147,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(117,148,'<com.cxjf.hexamobrecoverypro.Selection$9: void onClick(android.view.View)>',6,'a',NULL),(118,149,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$7: void onClick(android.view.View)>',6,'a',NULL),(119,49,'<com.livegame.android.shelves.activity.AddBookActivity: void show(android.content.Context)>',3,'a',NULL),(120,150,'<com.cxjf.hexamobrecoverypro.Results$13: void onClick(android.view.View)>',6,'a',NULL),(121,59,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(122,151,'<com.cxjf.hexamobrecoverypro.Types$5: void onClick(android.view.View)>',8,'a',NULL),(123,18,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(124,115,'<b: void s()>',66,'a',NULL),(125,152,'<com.cxjf.hexamobrecoverypro.Types$8: void onClick(android.view.View)>',18,'a',NULL),(126,153,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$10: void onClick(android.view.View)>',12,'a',NULL),(127,154,'<com.cxjf.hexamobrecoverypro.MainActivity$6: void onClick(android.view.View)>',13,'a',NULL),(128,155,'<com.cxjf.hexamobrecoverypro.Results$4: void onClick(android.view.View)>',15,'a',NULL),(129,156,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$9: void onClick(android.view.View)>',6,'a',NULL),(130,157,'<com.cxjf.hexamobrecoverypro.Selection$10: void onClick(android.view.View)>',6,'a',NULL),(131,158,'<com.cxjf.hexamobrecoverypro.Results$9: void onClick(android.view.View)>',6,'a',NULL),(132,159,'<com.cxjf.hexamobrecoverypro.Selection$12: void onClick(android.view.View)>',6,'a',NULL),(133,160,'<com.cxjf.hexamobrecoverypro.Recovered$9: void onClick(android.view.View)>',6,'a',NULL),(134,161,'<com.cxjf.hexamobrecoverypro.Recovered$11: void onClick(android.view.View)>',6,'a',NULL),(135,115,'<b: void s()>',36,'a',NULL),(136,19,'<com.cxjf.hexamobrecoverypro.Loadingitems: void onCreate(android.os.Bundle)>',6,'a',NULL),(137,162,'<com.cxjf.hexamobrecoverypro.Recovered$8: void onClick(android.view.View)>',6,'a',NULL),(138,163,'<com.cxjf.hexamobrecoverypro.Selection$8: void onClick(android.view.View)>',6,'a',NULL),(139,164,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$4$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(140,165,'<com.cxjf.hexamobrecoverypro.Recovered$6: void onClick(android.view.View)>',14,'a',NULL),(141,166,'<com.cxjf.hexamobrecoverypro.Types$34: void onClick(android.view.View)>',6,'a',NULL),(142,167,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$11: void onClick(android.view.View)>',6,'a',NULL),(143,168,'<com.cxjf.hexamobrecoverypro.ListRecoveredFolder$8: void onClick(android.view.View)>',6,'a',NULL),(144,169,'<com.cxjf.hexamobrecoverypro.Results$12: void onClick(android.view.View)>',12,'a',NULL),(145,170,'<com.cxjf.hexamobrecoverypro.MainActivity$8: void onClick(android.view.View)>',6,'a',NULL),(146,171,'<com.cxjf.hexamobrecoverypro.Intro$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(147,172,'<com.cxjf.hexamobrecoverypro.Types$35: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,1),(2,6,1),(3,8,1),(4,9,1),(5,12,7),(6,13,9),(7,17,7),(8,20,1),(9,22,1),(10,23,1),(11,24,1),(12,28,7),(13,31,7),(14,32,9),(15,34,7),(16,35,7),(17,36,7),(18,37,7),(19,38,7),(20,41,1),(21,44,1),(22,45,1),(23,46,1),(24,47,10),(25,48,10),(26,49,7),(27,50,10),(28,52,1),(29,51,9),(30,53,10),(31,55,1),(32,56,9),(33,57,10),(34,58,10),(35,59,7),(36,63,10),(37,65,10),(38,68,7),(39,71,7),(40,74,1),(41,75,1),(42,76,10),(43,77,1),(44,78,1),(45,79,10),(46,80,10),(47,81,7),(48,83,1),(49,85,10),(50,84,7),(51,86,10),(52,89,1),(53,92,10),(54,93,10),(55,94,7),(56,95,9),(57,97,10),(58,104,7),(59,111,1),(60,113,7),(61,114,1),(62,115,11),(63,116,1),(64,117,7),(65,118,1),(66,120,7),(67,121,7),(68,123,10),(69,124,10),(70,126,10),(71,127,7),(72,128,9),(73,129,10),(74,130,10),(75,131,10),(76,132,10),(77,133,10),(78,134,10),(79,136,10),(80,137,10),(81,138,1),(82,139,10),(83,140,10),(84,141,1),(85,142,10),(86,143,10),(87,144,10),(88,145,7),(89,150,10),(90,152,10),(91,153,10),(92,154,7),(93,156,10),(94,158,7),(95,159,10),(96,160,10),(97,161,7),(98,162,10),(99,163,7),(100,164,10),(101,165,7),(102,168,1),(103,169,1),(104,172,7),(105,173,1),(106,175,1),(107,176,7),(108,179,7),(109,180,7),(110,181,7),(111,183,1),(112,184,7),(113,185,1),(114,186,7),(115,188,7),(116,192,12),(117,194,10),(118,195,10),(119,196,10),(120,197,10),(121,198,10),(122,199,10),(123,200,10),(124,201,10),(125,204,7),(126,205,7),(127,206,7),(128,207,7),(129,208,7),(130,209,7),(131,210,13),(132,212,7),(133,213,7),(134,216,7),(135,217,7),(136,218,7),(137,219,10),(138,220,10),(139,221,10),(140,222,10),(141,223,10),(142,224,10),(143,225,10),(144,226,10),(145,227,7),(146,229,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,4),(3,8,1),(4,9,4),(5,20,1),(6,22,4),(7,23,4),(8,24,1),(9,41,1),(10,44,1),(11,45,4),(12,46,4),(13,52,1),(14,55,4),(15,74,1),(16,75,1),(17,77,4),(18,78,4),(19,83,1),(20,89,4),(21,111,1),(22,114,4),(23,116,1),(24,118,4),(25,138,1),(26,141,4),(27,168,1),(28,169,4),(29,173,4),(30,175,1),(31,183,1),(32,185,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/Dialog'),(4,7,'(.*)'),(5,10,'NULL-CONSTANT'),(6,11,'com/ps/square/elos/Elos'),(7,14,'com/google/update/Dialog'),(8,15,'com/google/update/Dialog'),(9,16,'com/ps/square/eloscomplex/ElosComplex'),(10,18,'(.*)'),(11,19,'com/waps/OffersWebView'),(12,21,'com/waps/OffersWebView'),(13,25,'com/google/update/Dialog'),(14,26,'com/google/update/Dialog'),(15,27,'com/cxjf/hexamobrecoverypro/Types'),(16,29,'com/airpuh/ad/UpdateCheck'),(17,33,'com/cxjf/hexamobrecoverypro/Selection'),(18,39,'com/cxjf/hexamobrecoverypro/MainActivity'),(19,40,'com/google/update/Dialog'),(20,42,'com/cxjf/hexamobrecoverypro/Results'),(21,43,'com/google/update/Dialog'),(22,54,'com/gp/geekadoo/ui/Yaniv'),(23,61,'NULL-CONSTANT'),(24,62,'NULL-CONSTANT'),(25,60,'com/waps/OffersWebView'),(26,64,'com/google/update/Dialog'),(27,67,'com/gp/geekadoo/ui/Yaniv'),(28,69,'com/google/update/Dialog'),(29,66,'com/waps/OffersWebView'),(30,70,'com/google/update/Dialog'),(31,72,'com/google/update/Dialog'),(32,87,'com/google/update/UpdateService'),(33,88,'com/google/update/UpdateService'),(34,90,'com/google/update/UpdateService'),(35,91,'com/google/update/Dialog'),(36,96,'com/google/update/Dialog'),(37,98,'com/google/update/Dialog'),(38,99,'com/google/update/Dialog'),(39,103,'com/google/update/Dialog'),(40,101,'com/google/update/Dialog'),(41,102,'com/waps/OffersWebView'),(42,100,'com/waps/OffersWebView'),(43,105,'com/google/update/Dialog'),(44,106,'com/google/update/Dialog'),(45,110,'com/cxjf/hexamobrecoverypro/Selection'),(46,109,'com/google/update/Dialog'),(47,107,'com/waps/OffersWebView'),(48,108,'com/waps/OffersWebView'),(49,112,'com/google/update/Dialog'),(50,119,'(.*)'),(51,122,'com/google/update/UpdateService'),(52,125,'com/cxjf/hexamobrecoverypro/Results'),(53,135,'com/waps/OffersWebView'),(54,146,'com/google/update/UpdateService'),(55,147,'com/google/update/Dialog'),(56,148,'com/cxjf/hexamobrecoverypro/MainActivity'),(57,149,'com/google/update/Dialog'),(58,151,'com/livegame/android/shelves/activity/BookDetailsActivity'),(59,155,'NULL-CONSTANT'),(60,166,'com/cxjf/hexamobrecoverypro/Types'),(61,170,'com/cxjf/hexamobrecoverypro/Loadingitems'),(62,171,'ad/imadpush/com/poster/AlarmService'),(63,174,'com/cxjf/hexamobrecoverypro/MainActivity'),(64,177,'com/livegame/android/shelves/activity/SettingsActivity'),(65,178,'com/cxjf/hexamobrecoverypro/MainActivity'),(66,182,'com/cxjf/hexamobrecoverypro/SearchThread'),(67,187,'com/livegame/android/shelves/activity/AddBookActivity'),(68,189,'(.*)'),(69,190,'com/cxjf/hexamobrecoverypro/MainActivity'),(70,191,'com/cxjf/hexamobrecoverypro/MainActivity'),(71,193,'com/cxjf/hexamobrecoverypro/Selection'),(72,202,'com/cxjf/hexamobrecoverypro/Types'),(73,203,'com/cxjf/hexamobrecoverypro/RecoveryThread'),(74,211,'com/cxjf/hexamobrecoverypro/ListRecoveredFolder'),(75,214,'com/cxjf/hexamobrecoverypro/MainActivity'),(76,215,'com/cxjf/hexamobrecoverypro/MainActivity'),(77,228,'com/cxjf/hexamobrecoverypro/MainActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,1),(2,17,2),(3,28,4),(4,31,5),(5,34,6),(6,36,7),(7,35,8),(8,37,9),(9,38,10),(10,49,11),(11,59,12),(12,68,13),(13,71,14),(14,81,17),(15,84,18),(16,94,20),(17,104,21),(18,113,22),(19,117,23),(20,120,25),(21,121,26),(22,127,27),(23,145,29),(24,154,30),(25,158,31),(26,161,33),(27,163,34),(28,165,36),(29,172,37),(30,176,38),(31,179,39),(32,180,40),(33,181,41),(34,184,42),(35,186,43),(36,188,44),(37,192,45),(38,204,46),(39,205,47),(40,206,48),(41,207,49),(42,208,50),(43,209,51),(44,210,52),(45,212,53),(46,213,54),(47,216,55),(48,217,56),(49,218,57),(50,227,58),(51,229,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,14,'TYPEdsada'),(5,15,'MSG'),(6,15,'TYPEdsada'),(7,19,'Notify_Url_Params'),(8,19,'UrlPath'),(9,19,'ACTIVITY_FLAG'),(10,19,'isFinshClose'),(11,19,'offers_webview_tag'),(12,21,'UrlPath'),(13,21,'ACTIVITY_FLAG'),(14,21,'isFinshClose'),(15,21,'offers_webview_tag'),(16,25,'MSG'),(17,25,'TYPEdsada'),(18,26,'TYPEdsada'),(19,40,'MSG'),(20,40,'TYPEdsada'),(21,43,'TYPEdsada'),(22,47,'android.intent.extra.INTENT'),(23,48,'android.intent.extra.INTENT'),(24,50,'android.intent.extra.TITLE'),(25,50,'android.intent.extra.INTENT'),(26,54,'state'),(27,53,'android.intent.extra.INTENT'),(28,57,'android.intent.extra.TITLE'),(29,57,'android.intent.extra.INTENT'),(30,58,'android.intent.extra.INTENT'),(31,60,'UrlPath'),(32,60,'ACTIVITY_FLAG'),(33,60,'isFinshClose'),(34,63,'android.intent.extra.TITLE'),(35,60,'offers_webview_tag'),(36,63,'android.intent.extra.INTENT'),(37,64,'TYPEdsada'),(38,65,'android.intent.extra.TITLE'),(39,66,'Notify_Url_Params'),(40,67,'state'),(41,65,'android.intent.extra.INTENT'),(42,66,'UrlPath'),(43,69,'MSG'),(44,66,'ACTIVITY_FLAG'),(45,69,'TYPEdsada'),(46,66,'isFinshClose'),(47,70,'MSG'),(48,66,'offers_webview_tag'),(49,70,'TYPEdsada'),(50,72,'TYPEdsada'),(51,76,'android.intent.extra.INTENT'),(52,79,'android.intent.extra.INTENT'),(53,80,'android.intent.extra.TITLE'),(54,80,'android.intent.extra.INTENT'),(55,85,'android.intent.extra.INTENT'),(56,86,'android.intent.extra.TITLE'),(57,86,'android.intent.extra.INTENT'),(58,91,'MSG'),(59,92,'android.intent.extra.INTENT'),(60,91,'TYPEdsada'),(61,93,'android.intent.extra.TITLE'),(62,93,'android.intent.extra.INTENT'),(63,96,'TYPEdsada'),(64,98,'MSG'),(65,97,'android.intent.extra.TITLE'),(66,98,'TYPEdsada'),(67,97,'android.intent.extra.INTENT'),(68,99,'TYPEdsada'),(69,100,'Notify_Url_Params'),(70,101,'MSG'),(71,102,'UrlPath'),(72,100,'UrlPath'),(73,103,'TYPEdsada'),(74,101,'TYPEdsada'),(75,102,'ACTIVITY_FLAG'),(76,100,'ACTIVITY_FLAG'),(77,102,'isFinshClose'),(78,100,'isFinshClose'),(79,102,'offers_webview_tag'),(80,100,'offers_webview_tag'),(81,105,'MSG'),(82,105,'TYPEdsada'),(83,106,'TYPEdsada'),(84,107,'UrlPath'),(85,108,'Notify_Url_Params'),(86,109,'MSG'),(87,108,'UrlPath'),(88,107,'ACTIVITY_FLAG'),(89,107,'isFinshClose'),(90,109,'TYPEdsada'),(91,108,'ACTIVITY_FLAG'),(92,107,'offers_webview_tag'),(93,108,'isFinshClose'),(94,108,'offers_webview_tag'),(95,112,'TYPEdsada'),(96,115,'SCAN_MODE'),(97,123,'android.intent.extra.INTENT'),(98,124,'android.intent.extra.INTENT'),(99,126,'android.intent.extra.TITLE'),(100,126,'android.intent.extra.INTENT'),(101,129,'android.intent.extra.INTENT'),(102,130,'android.intent.extra.INTENT'),(103,131,'android.intent.extra.TITLE'),(104,132,'android.intent.extra.INTENT'),(105,131,'android.intent.extra.INTENT'),(106,133,'android.intent.extra.TITLE'),(107,135,'USER_ID'),(108,134,'android.intent.extra.INTENT'),(109,133,'android.intent.extra.INTENT'),(110,135,'CLIENT_PACKAGE'),(111,135,'Offers_URL'),(112,135,'offers_webview_tag'),(113,136,'android.intent.extra.TITLE'),(114,137,'android.intent.extra.INTENT'),(115,135,'URL_PARAMS'),(116,136,'android.intent.extra.INTENT'),(117,139,'android.intent.extra.TITLE'),(118,140,'android.intent.extra.TITLE'),(119,139,'android.intent.extra.INTENT'),(120,140,'android.intent.extra.INTENT'),(121,142,'android.intent.extra.INTENT'),(122,143,'android.intent.extra.TITLE'),(123,143,'android.intent.extra.INTENT'),(124,144,'android.intent.extra.TITLE'),(125,144,'android.intent.extra.INTENT'),(126,147,'MSG'),(127,147,'TYPEdsada'),(128,149,'TYPEdsada'),(129,150,'android.intent.extra.INTENT'),(130,151,'shelves.extra.book_id'),(131,152,'android.intent.extra.INTENT'),(132,153,'android.intent.extra.TITLE'),(133,153,'android.intent.extra.INTENT'),(134,156,'android.intent.extra.INTENT'),(135,159,'android.intent.extra.TITLE'),(136,159,'android.intent.extra.INTENT'),(137,160,'android.intent.extra.INTENT'),(138,162,'android.intent.extra.TITLE'),(139,162,'android.intent.extra.INTENT'),(140,164,'android.intent.extra.TITLE'),(141,164,'android.intent.extra.INTENT'),(142,192,'sms_body'),(143,194,'android.intent.extra.INTENT'),(144,195,'android.intent.extra.INTENT'),(145,196,'android.intent.extra.TITLE'),(146,196,'android.intent.extra.INTENT'),(147,197,'android.intent.extra.INTENT'),(148,198,'android.intent.extra.TITLE'),(149,198,'android.intent.extra.INTENT'),(150,199,'android.intent.extra.INTENT'),(151,200,'android.intent.extra.TITLE'),(152,200,'android.intent.extra.INTENT'),(153,201,'android.intent.extra.TITLE'),(154,201,'android.intent.extra.INTENT'),(155,219,'android.intent.extra.INTENT'),(156,220,'android.intent.extra.INTENT'),(157,221,'android.intent.extra.TITLE'),(158,221,'android.intent.extra.INTENT'),(159,222,'android.intent.extra.INTENT'),(160,223,'android.intent.extra.TITLE'),(161,223,'android.intent.extra.INTENT'),(162,224,'android.intent.extra.INTENT'),(163,225,'android.intent.extra.TITLE'),(164,225,'android.intent.extra.INTENT'),(165,226,'android.intent.extra.TITLE'),(166,226,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,5,4),(7,5,5),(8,6,1),(9,7,1),(10,8,5),(11,8,3),(12,8,4),(13,9,4),(14,9,5),(15,9,3),(16,10,1),(17,11,1),(18,12,6),(19,13,7),(20,14,5),(21,14,4),(22,14,3),(23,15,4),(24,15,5),(25,15,3),(26,16,1),(27,17,4),(28,17,5),(29,17,3),(30,18,8),(31,19,8),(32,20,8),(33,21,8),(34,22,8),(35,23,8),(36,24,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,6,1),(6,7,1),(7,10,1),(8,11,1),(9,12,3),(10,13,3),(11,16,1);
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
INSERT INTO `IFData` VALUES (1,13,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.com.livegame.provider.shelves'),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL),(7,23,'package',NULL,NULL,NULL,NULL,NULL),(8,24,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,12,'application','vnd.android.package-archive'),(2,17,'application','vnd.android.package-archive'),(3,28,'application','vnd.android.package-archive'),(4,31,'application','vnd.android.package-archive'),(5,34,'application','vnd.android.package-archive'),(6,35,'application','vnd.android.package-archive'),(7,37,'application','vnd.android.package-archive'),(8,38,'application','vnd.android.package-archive'),(9,68,'application','vnd.android.package-archive'),(10,84,'application','vnd.android.package-archive'),(11,94,'application','vnd.android.package-archive'),(12,127,'application','vnd.android.package-archive'),(13,154,'application','vnd.android.package-archive'),(14,158,'application','vnd.android.package-archive'),(15,161,'application','vnd.android.package-archive'),(16,163,'application','vnd.android.package-archive'),(17,165,'application','vnd.android.package-archive'),(18,179,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.square'),(2,2,'com.ps.square'),(3,3,'com.ps.square'),(4,5,'(.*)'),(5,6,'(.*)'),(6,7,'(.*)'),(7,8,'com.noshufou.android.su'),(8,9,'com.noshufou.android.su'),(9,10,'NULL-CONSTANT'),(10,11,'com.ps.square'),(11,14,'com.ps.square'),(12,15,'com.ps.square'),(13,16,'com.ps.square'),(14,18,'(.*)'),(15,19,'com.ps.square'),(16,20,'com.alan.weather'),(17,22,'com.alan.weather'),(18,21,'com.ps.square'),(19,23,'com.ps.square'),(20,24,'com.ps.square'),(21,25,'com.alan.weather'),(22,26,'com.alan.weather'),(23,27,'com.cxjf.hexamobrecoverypro'),(24,29,'com.cxjf.hexamobrecoverypro'),(25,33,'com.cxjf.hexamobrecoverypro'),(26,39,'com.cxjf.hexamobrecoverypro'),(27,40,'com.alan.weather'),(28,42,'com.cxjf.hexamobrecoverypro'),(29,41,'com.noshufou.android.su'),(30,43,'com.alan.weather'),(31,44,'com.gp.geekadoo'),(32,45,'com.noshufou.android.su'),(33,46,'com.gp.geekadoo'),(34,52,'com.noshufou.android.su'),(35,55,'com.noshufou.android.su'),(36,54,'com.gp.geekadoo'),(37,61,'NULL-CONSTANT'),(38,62,'NULL-CONSTANT'),(39,60,'com.livegame.android.shelves'),(40,64,'com.ps.pushbox'),(41,67,'com.gp.geekadoo'),(42,69,'com.ps.pushbox'),(43,66,'com.livegame.android.shelves'),(44,70,'com.ps.yams'),(45,72,'com.ps.yams'),(46,74,'com.noshufou.android.su'),(47,75,'(.*)'),(48,77,'com.noshufou.android.su'),(49,78,'(.*)'),(50,83,'(.*)'),(51,87,'com.alan.weather'),(52,88,'com.ps.pushbox'),(53,89,'(.*)'),(54,90,'com.gp.geekadoo'),(55,91,'com.livegame.android.shelves'),(56,96,'com.livegame.android.shelves'),(57,98,'com.gp.geekadoo'),(58,99,'com.ps.pushbox'),(59,103,'com.gp.geekadoo'),(60,101,'com.livegame.android.shelves'),(61,102,'com.ps.yams'),(62,100,'com.alan.weather'),(63,105,'com.ps.pushbox'),(64,106,'com.livegame.android.shelves'),(65,110,'com.cxjf.hexamobrecoverypro'),(66,109,'com.gp.geekadoo'),(67,107,'com.alan.weather'),(68,108,'com.ps.yams'),(69,111,'com.ps.pushbox'),(70,112,'com.gp.geekadoo'),(71,114,'com.ps.pushbox'),(72,116,'com.noshufou.android.su'),(73,118,'com.noshufou.android.su'),(74,119,'(.*)'),(75,122,'com.ps.yams'),(76,125,'com.cxjf.hexamobrecoverypro'),(77,135,'com.livegame.android.shelves'),(78,138,'com.ps.yams'),(79,141,'com.ps.yams'),(80,146,'com.livegame.android.shelves'),(81,147,'com.ps.yams'),(82,148,'com.cxjf.hexamobrecoverypro'),(83,149,'com.ps.yams'),(84,151,'com.livegame.android.shelves'),(85,155,'NULL-CONSTANT'),(86,166,'com.cxjf.hexamobrecoverypro'),(87,168,'(.*)'),(88,170,'com.cxjf.hexamobrecoverypro'),(89,169,'(.*)'),(90,171,'com.cxjf.hexamobrecoverypro'),(91,173,'com.livegame.android.shelves'),(92,174,'com.cxjf.hexamobrecoverypro'),(93,175,'com.livegame.android.shelves'),(94,177,'com.livegame.android.shelves'),(95,178,'com.cxjf.hexamobrecoverypro'),(96,182,'com.cxjf.hexamobrecoverypro'),(97,183,'com.noshufou.android.su'),(98,185,'com.noshufou.android.su'),(99,187,'com.livegame.android.shelves'),(100,189,'(.*)'),(101,190,'com.cxjf.hexamobrecoverypro'),(102,191,'com.cxjf.hexamobrecoverypro'),(103,193,'com.cxjf.hexamobrecoverypro'),(104,202,'com.cxjf.hexamobrecoverypro'),(105,203,'com.cxjf.hexamobrecoverypro'),(106,211,'com.cxjf.hexamobrecoverypro'),(107,214,'com.cxjf.hexamobrecoverypro'),(108,215,'com.cxjf.hexamobrecoverypro'),(109,228,'com.cxjf.hexamobrecoverypro');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,4,0),(3,3,0),(4,6,0),(5,15,0),(6,22,0),(7,25,0),(8,38,0),(9,41,0),(10,42,0),(11,43,0),(12,43,0),(13,51,0),(14,53,0),(15,62,0),(16,64,0),(17,68,0),(18,69,0),(19,70,0),(20,71,0),(21,72,0),(22,73,0),(23,74,0),(24,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,4,0,0),(8,5,1,0),(9,5,1,0),(10,6,0,0),(11,7,0,0),(12,8,1,0),(13,9,1,0),(14,10,0,0),(15,10,0,0),(16,11,0,0),(17,12,1,0),(18,13,0,0),(19,14,0,0),(20,15,1,0),(21,14,0,0),(22,15,1,0),(23,16,1,0),(24,16,1,0),(25,17,0,0),(26,17,0,0),(27,19,0,0),(28,20,1,0),(29,21,0,0),(30,20,1,0),(31,20,1,0),(32,22,1,0),(33,23,0,0),(34,20,1,0),(35,20,1,0),(36,24,1,0),(37,20,1,0),(38,25,1,0),(39,26,0,0),(40,27,0,0),(41,28,1,0),(42,29,0,0),(43,27,0,0),(44,30,1,0),(45,28,1,0),(46,30,1,0),(47,31,1,0),(48,31,1,0),(49,32,1,0),(50,31,1,0),(51,33,1,0),(52,34,1,0),(53,31,1,0),(54,35,0,0),(55,34,1,0),(56,36,1,0),(57,31,1,0),(58,31,1,0),(59,37,1,0),(60,38,0,0),(61,39,0,0),(62,40,0,0),(63,31,1,0),(64,41,0,0),(65,31,1,0),(66,38,0,0),(67,43,0,0),(68,42,1,0),(69,41,0,0),(70,44,0,0),(71,45,1,0),(72,44,0,0),(73,47,1,0),(74,46,1,0),(75,47,1,0),(76,49,1,0),(77,46,1,0),(78,47,1,0),(79,49,1,0),(80,49,1,0),(81,51,1,0),(82,53,1,0),(83,53,1,0),(84,54,1,0),(85,49,1,0),(86,49,1,0),(87,56,0,0),(88,55,0,0),(89,53,1,0),(90,57,0,0),(91,58,0,0),(92,49,1,0),(93,49,1,0),(94,60,1,0),(95,61,1,0),(96,58,0,0),(97,49,1,0),(98,62,0,0),(99,64,0,0),(100,63,0,0),(101,65,0,0),(102,66,0,0),(103,62,0,0),(104,67,1,0),(105,64,0,0),(106,65,0,0),(107,63,0,0),(108,66,0,0),(109,68,0,0),(110,69,0,0),(111,70,1,0),(112,68,0,0),(113,71,1,0),(114,70,1,0),(115,72,1,0),(116,73,1,0),(117,74,1,0),(118,73,1,0),(119,77,0,0),(120,78,1,0),(121,79,1,0),(122,81,0,0),(123,80,1,0),(124,80,1,0),(125,82,0,0),(126,80,1,0),(127,84,1,0),(128,85,1,0),(129,80,1,0),(130,86,1,0),(131,80,1,0),(132,86,1,0),(133,86,1,0),(134,80,1,0),(135,87,0,0),(136,80,1,0),(137,86,1,0),(138,88,1,0),(139,86,1,0),(140,80,1,0),(141,88,1,0),(142,86,1,0),(143,86,1,0),(144,86,1,0),(145,90,1,0),(146,91,0,0),(147,92,0,0),(148,93,0,0),(149,92,0,0),(150,94,1,0),(151,95,0,0),(152,94,1,0),(153,94,1,0),(154,96,1,0),(155,97,0,0),(156,94,1,0),(157,96,1,0),(158,96,1,0),(159,94,1,0),(160,94,1,0),(161,96,1,0),(162,94,1,0),(163,96,1,0),(164,94,1,0),(165,96,1,0),(166,101,0,0),(167,102,1,0),(168,102,1,0),(169,102,1,0),(170,103,0,0),(171,104,0,0),(172,105,1,0),(173,106,1,0),(174,107,0,0),(175,106,1,0),(176,108,1,0),(177,110,0,0),(178,111,0,0),(179,112,1,0),(180,113,1,0),(181,114,1,0),(182,115,0,0),(183,116,1,0),(184,117,1,0),(185,116,1,0),(186,118,1,0),(187,119,0,0),(188,120,1,0),(189,121,0,0),(190,122,0,0),(191,123,0,0),(192,124,1,0),(193,125,0,0),(194,126,1,0),(195,126,1,0),(196,126,1,0),(197,126,1,0),(198,126,1,0),(199,126,1,0),(200,126,1,0),(201,126,1,0),(202,127,0,0),(203,128,0,0),(204,129,1,0),(205,130,1,0),(206,131,1,0),(207,132,1,0),(208,133,1,0),(209,134,1,0),(210,135,1,0),(211,136,0,0),(212,137,1,0),(213,138,1,0),(214,139,0,0),(215,140,0,0),(216,141,1,0),(217,142,1,0),(218,143,1,0),(219,144,1,0),(220,144,1,0),(221,144,1,0),(222,144,1,0),(223,144,1,0),(224,144,1,0),(225,144,1,0),(226,144,1,0),(227,145,1,0),(228,146,0,0),(229,147,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'shelves');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(10,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.VIBRATE'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS');
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
INSERT INTO `Providers` VALUES (1,63,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(5,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(7,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL),(15,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(23,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL),(24,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(25,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(26,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(29,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(31,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(35,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(41,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(42,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(43,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(44,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(45,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(46,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL),(47,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL),(48,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(49,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(50,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL),(51,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(52,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(53,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(54,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(55,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(56,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LCHA8A6RJCUPE',NULL,NULL,NULL),(57,NULL,NULL,'http://twitter.com/#!/hexamob_cb',NULL,NULL,NULL),(58,NULL,NULL,'http://www.facebook.com/profile.php?id=100002211141447',NULL,NULL,NULL),(59,NULL,NULL,'http://www.youtube.com/user/hexamob?feature=mhee',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,3),(2,48,15),(3,52,16),(4,59,19),(5,76,24),(6,89,28),(7,98,32),(8,100,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,3),(10,2,4),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,4,1),(22,3,7),(23,4,2),(24,3,10),(25,4,3),(26,3,11),(27,4,4),(28,3,12),(29,4,5),(30,3,13),(31,4,6),(32,4,7),(33,4,10),(34,4,12),(35,4,13),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,6,1),(44,5,9),(45,6,2),(46,5,10),(47,6,3),(48,5,11),(49,6,4),(50,5,12),(51,6,5),(52,5,13),(53,6,6),(54,5,14),(55,6,7),(56,5,15),(57,6,9),(58,5,16),(59,6,10),(60,6,11),(61,6,12),(62,6,13),(63,7,1),(64,7,2),(65,7,3),(66,7,4),(67,7,5),(68,7,6),(69,7,7),(70,7,9),(71,7,10),(72,7,12),(73,7,13),(74,7,14),(75,7,15),(76,7,16);
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

-- Dump completed on 2015-10-09  0:38:11
