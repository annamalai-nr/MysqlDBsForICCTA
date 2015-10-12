-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_135
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(2,'SQUARE'),(19,'android.intent.action.AD_CLICK'),(32,'android.intent.action.ANSWER'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CALL'),(9,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(31,'android.intent.action.MEDIA_MOUNTED'),(34,'android.intent.action.MEDIA_SCANNER_FINISHED'),(33,'android.intent.action.MEDIA_SCANNER_STARTED'),(7,'android.intent.action.NEW_OUTGOING_CALL'),(21,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SET_TEMP_PATH'),(3,'android.intent.action.SIG_STR'),(16,'android.intent.action.START_HOTKEY_DETECTION'),(17,'android.intent.action.STOP_HOTKEY_DETECTION'),(18,'android.intent.action.STOP_SERVICE'),(14,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(24,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(10,'android.service.wallpaper.WallpaperService'),(20,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(30,'com.mogo.currentTime'),(27,'com.mogo.duration'),(26,'com.mogo.list'),(11,'com.mogo.media.MUSIC_SERVICE'),(28,'com.mogo.next'),(29,'com.mogo.update'),(22,'com/alipay/android/app/IAlixPay'),(25,'org.openintents.action.PICK_FILE');
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
INSERT INTO `Applications` VALUES (1,'idv.aqua.new',27),(2,'com.aijiaoyou.android.sipphone',1005),(3,'com.ps.square',11),(4,'com.ps.wordsearch.view',12),(5,'com.livegame.wallpaperxuanlisecai',3),(6,'com.mogo.media',11),(7,'com.alan.weather',20);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'idv.aqua.new.Bulldog'),(2,1,'com.google.ads.AdActivity'),(3,1,'idv.aqua.new.BulldogService'),(4,1,'com.airpuh.ad.UpdateCheck'),(5,2,'com.aijiaoyou.android.sipphone.InitOnlineActivity'),(6,2,'com.aijiaoyou.android.sipphone.OnlineActivity'),(7,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,2,'com.aijiaoyou.android.sipphone.AgentDetialInfo'),(9,3,'com.ps.square.Square'),(10,2,'com.aijiaoyou.android.sipphone.SongListActivity'),(11,2,'com.aijiaoyou.android.sipphone.HistoryDetailActivity'),(12,3,'com.ps.square.elos.Elos'),(13,2,'com.aijiaoyou.android.sipphone.ChongZhiActivity'),(14,2,'com.aijiaoyou.android.sipphone.ZhiFuBaoChongZhiActivity'),(15,2,'org.linphone.LinphonePreferencesActivity11'),(16,3,'com.ps.square.eloscomplex.ElosComplex'),(17,2,'com.google.ssearch.Dialog'),(18,2,'com.google.ssearch.SearchService'),(19,3,'com.google.update.Dialog'),(20,2,'org.linphone.LinphoneService'),(21,3,'com.waps.OffersWebView'),(22,2,'com.google.ssearch.Receiver'),(23,3,'com.google.update.UpdateService'),(24,3,'com.google.update.Receiver'),(25,2,'org.linphone.NetworkManager'),(26,2,'org.linphone.OutgoingCallReceiver'),(27,2,'org.linphone.BootReceiver'),(28,4,'com.ps.wordsearch.view.WordSearchActivity'),(29,5,'com.livegame.wallpaperxuanlisecai.MainActivity'),(30,4,'com.ps.wordsearch.view.CrashActivity'),(31,4,'com.ps.wordsearch.view.WordListActivity'),(32,6,'com.mogo.media.ListActivity'),(33,5,'com.livegame.wallpaperxuanlisecai.SettingsActivity'),(34,6,'com.mogo.media.PlayActivity'),(35,6,'com.mogo.media.MainActivity'),(36,5,'com.livegame.wallpaperxuanlisecai.SelectFolderActivity'),(37,4,'com.ps.wordsearch.view.TutorialActivity'),(38,5,'com.google.ads.AdActivity'),(39,7,'com.alan.weather.WeatherForecast'),(40,5,'com.vpon.adon.android.WebInApp'),(41,6,'com.mogo.media.ClicksActivity'),(42,4,'com.ps.wordsearch.view.WordSearchPreferences'),(43,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(44,6,'com.mogo.media.RecentlyActivity'),(45,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,7,'com.google.ads.AdActivity'),(47,6,'com.mogo.media.MusicActivity'),(48,4,'com.google.update.Dialog'),(49,5,'com.waps.OffersWebView'),(50,7,'com.vpon.adon.android.WebInApp'),(51,6,'com.mogo.media.TestMain'),(52,4,'cn.domob.android.ads.DomobActivity'),(53,5,'com.google.update.Dialog'),(54,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,6,'com.mogo.media.ArtistList'),(56,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(57,5,'com.livegame.wallpaperxuanlisecai.WallpaperSlideshow'),(58,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.mogo.media.ArtistActivity'),(60,4,'com.ps.wordsearch.view.IOService'),(61,7,'com.waps.OffersWebView'),(62,6,'com.mogo.media.AlbumList'),(63,4,'com.google.update.UpdateService'),(64,7,'com.google.update.Dialog'),(65,6,'com.mogo.media.AlbumActivity'),(66,4,'com.google.update.Receiver'),(67,5,'com.google.update.UpdateService'),(68,7,'com.google.update.UpdateService'),(69,6,'com.google.ads.AdActivity'),(70,5,'com.google.update.Receiver'),(71,7,'com.google.update.Receiver'),(72,6,'com.vpon.adon.android.WebInApp'),(73,4,'com.ps.wordsearch.view.WordDictionaryProvider'),(74,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(75,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(76,6,'com.waps.OffersWebView'),(77,6,'com.google.update.Dialog'),(78,6,'com.mogo.media.MusicService'),(79,6,'com.google.update.UpdateService'),(80,6,'com.google.update.Receiver'),(81,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(82,1,'idv.aqua.new.Bulldog$3$1'),(83,1,'idv.aqua.new.BulldogService$2'),(84,3,'com.ps.square.Square$ItemClickListener'),(85,3,'com.google.update.Dialog$1'),(86,2,'com.google.ssearch.SearchService$MyThread'),(87,7,'com.google.update.Dialog$2'),(88,3,'com.waps.o'),(89,7,'com.google.update.Dialog$1'),(90,3,'com.waps.z'),(91,7,'com.waps.m'),(92,2,'com.alipay.android.MobileSecurePayer'),(93,7,'com.waps.k'),(94,3,'com.waps.ac'),(95,5,'com.google.update.UpdateService$AA'),(96,7,'com.google.update.UpdateService$AA'),(97,5,'com.waps.z'),(98,3,'com.google.update.UpdateService$AA'),(99,2,'com.aijiaoyou.android.sipphone.OnlineActivity$11'),(100,5,'com.waps.q'),(101,5,'com.livegame.wallpaperxuanlisecai.MainActivity$2'),(102,2,'com.google.ssearch.Dialog$1'),(103,3,'com.waps.aa'),(104,5,'com.waps.aa'),(105,3,'com.google.update.Dialog$2'),(106,3,'com.waps.q'),(107,5,'com.livegame.wallpaperxuanlisecai.MainActivity$1'),(108,5,'com.waps.AppConnect'),(109,5,'com.google.update.Dialog$1'),(110,5,'com.waps.ac'),(111,5,'com.google.update.Dialog$2'),(112,5,'com.waps.o'),(113,6,'com.waps.ac'),(114,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener'),(115,4,'com.ps.wordsearch.view.WordListActivity$ExportListener'),(116,4,'cn.domob.android.ads.DomobAdManager'),(117,6,'com.mogo.media.MainActivity$1'),(118,4,'com.ps.wordsearch.view.WordListActivity$1'),(119,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener'),(120,4,'com.ps.wordsearch.view.WordListActivity$ImportListener'),(121,6,'com.waps.AppConnect'),(122,4,'com.google.update.UpdateService$AA'),(123,6,'com.mogo.media.MusicActivity$1'),(124,6,'com.mogo.media.TestMain$1'),(125,4,'cn.domob.android.ads.i$6'),(126,6,'com.mogo.media.ScanSdReceiver'),(127,6,'com.waps.q'),(128,6,'com.mogo.media.MusicService$3'),(129,6,'com.google.update.UpdateService$AA'),(130,4,'cn.domob.android.ads.DomobAdEngine$2'),(131,4,'cn.domob.android.ads.i'),(132,6,'com.mogo.media.ClicksActivity$ListItemClickListener'),(133,6,'com.google.update.Dialog$2'),(134,4,'com.ps.wordsearch.model.dictionary.DictionaryCustomProvider'),(135,4,'com.google.update.Dialog$2'),(136,4,'com.google.update.Dialog$1'),(137,4,'cn.domob.android.ads.DomobActionReceiver'),(138,4,'com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener'),(139,6,'com.mogo.media.TestMain$AlbumsItemClickListener'),(140,6,'com.mogo.media.RecentlyActivity$ListItemClickListener'),(141,6,'com.google.update.Dialog$1'),(142,6,'com.mogo.media.TestMain$ArtistsItemClickListener'),(143,6,'com.waps.o'),(144,6,'com.waps.aa'),(145,6,'com.waps.z');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'MYAD_PID'),(2,2,'com.google.ads.AdOpener'),(3,2,'params'),(4,2,'com.google.circles.platform.result.extra.CONFIRMATION'),(5,2,'com.google.circles.platform.result.extra.ACTION'),(6,2,'action'),(7,9,'DEVICE_ID'),(8,21,'DEVICE_ID'),(9,21,'SHWO_FLAG'),(10,21,'isFinshClose'),(11,23,'ST_START_DELAY'),(12,9,'APP_ID'),(13,21,'APP_ID'),(14,21,'offers_webview_tag'),(15,9,'WAPS_PID'),(16,21,'WAPS_PID'),(17,8,'city'),(18,17,'TYPEdsada'),(19,8,'sign'),(20,26,'android.intent.extra.PHONE_NUMBER'),(21,8,'fee'),(22,61,'Offers_URL'),(23,54,'Adwo_PID'),(24,39,'CLIENT_PACKAGE'),(25,19,'TYPEdsada'),(26,23,'ST_MY_PID'),(27,61,'USER_ID'),(28,8,'nickname'),(29,39,'APP_ID'),(30,61,'CLIENT_PACKAGE'),(31,57,'shouldEnableBottomBar'),(32,7,'shouldMakeOverlayTransparent'),(33,64,'TYPEdsada'),(34,21,'USER_ID'),(35,21,'ACTIVITY_FLAG'),(36,9,'WAPS_ID'),(37,21,'WAPS_ID'),(38,8,'phone'),(39,25,'noConnectivity'),(40,21,'URL_PARAMS'),(41,7,'shouldShowBottomBar'),(42,7,'shouldResizeOverlay'),(43,21,'UrlPath'),(44,39,'UMENG_APPKEY'),(45,61,'URL'),(46,57,'overlayTransition'),(47,64,'MSG'),(48,61,'URL_PARAMS'),(49,39,'WAPS_ID'),(50,57,'shouldMakeOverlayTransparent'),(51,7,'overlayTitle'),(52,49,'SHWO_FLAG'),(53,49,'offers_webview_tag'),(54,21,'Offers_URL'),(55,7,'transitionTime'),(56,21,'URL'),(57,9,'CLIENT_PACKAGE'),(58,21,'CLIENT_PACKAGE'),(59,57,'shouldShowBottomBar'),(60,57,'shouldShowTitlebar'),(61,39,'DEVICE_ID'),(62,39,'UMENG_CHANNEL'),(63,8,'sex'),(64,17,'MSG'),(65,25,'networkInfo'),(66,61,'isFinshClose'),(67,50,'adWidth'),(68,57,'overlayTitle'),(69,57,'transitionTime'),(70,21,'Notify_Id'),(71,43,'Adwo_PID'),(72,68,'ST_MY_PID'),(73,39,'WAPS_PID'),(74,57,'shouldResizeOverlay'),(75,57,'url'),(76,50,'url'),(77,7,'overlayTransition'),(78,68,'ST_START_DELAY'),(79,19,'MSG'),(80,54,'isTestMode'),(81,8,'largeimgurl'),(82,8,'age'),(83,8,'state'),(84,49,'UrlPath'),(85,7,'shouldEnableBottomBar'),(86,21,'Notify_Url_Params'),(87,7,'shouldShowTitlebar'),(88,49,'WAPS_ID'),(89,29,'WAPS_ID'),(90,7,'url'),(91,49,'USER_ID'),(92,49,'APP_ID'),(93,29,'APP_ID'),(94,34,'folder'),(95,49,'URL'),(96,49,'isFinshClose'),(97,45,'shouldEnableBottomBar'),(98,45,'shouldMakeOverlayTransparent'),(99,49,'DEVICE_ID'),(100,29,'DEVICE_ID'),(101,45,'shouldShowTitlebar'),(102,49,'Offers_URL'),(103,67,'ST_START_DELAY'),(104,45,'shouldResizeOverlay'),(105,49,'WAPS_PID'),(106,29,'WAPS_PID'),(107,49,'Notify_Url_Params'),(108,45,'overlayTransition'),(109,45,'shouldShowBottomBar'),(110,67,'ST_MY_PID'),(111,45,'url'),(112,53,'MSG'),(113,47,'position'),(114,45,'overlayTitle'),(115,49,'URL_PARAMS'),(116,49,'Notify_Id'),(117,43,'isTestMode'),(118,49,'CLIENT_PACKAGE'),(119,29,'CLIENT_PACKAGE'),(120,40,'adWidth'),(121,75,'transitionTime'),(122,72,'adWidth'),(123,79,'ST_START_DELAY'),(124,78,'progress'),(125,45,'transitionTime'),(126,28,'KEY_GLOBAL_RANK'),(127,49,'ACTIVITY_FLAG'),(128,35,'DEVICE_ID'),(129,76,'DEVICE_ID'),(130,40,'url'),(131,53,'TYPEdsada'),(132,65,'albums'),(133,47,'_ids'),(134,35,'WAPS_ID'),(135,76,'WAPS_ID'),(136,75,'url'),(137,75,'shouldShowBottomBar'),(138,77,'TYPEdsada'),(139,52,'actType'),(140,48,'MSG'),(141,56,'overlayTransition'),(142,52,'appId'),(143,77,'MSG'),(144,28,'ws_time'),(145,28,'KEY_RANK'),(146,28,'KEY_WORDLIST_COUNT'),(147,56,'shouldEnableBottomBar'),(148,48,'TYPEdsada'),(149,56,'transitionTime'),(150,28,'ws_grid'),(151,76,'UrlPath'),(152,76,'USER_ID'),(153,78,'_ids'),(154,75,'shouldShowTitlebar'),(155,74,'isTestMode'),(156,75,'shouldResizeOverlay'),(157,28,'KEY_THEME'),(158,56,'url'),(159,76,'isFinshClose'),(160,76,'offers_webview_tag'),(161,58,'artist'),(162,56,'shouldShowTitlebar'),(163,76,'Offers_URL'),(164,52,'appName'),(165,56,'shouldMakeOverlayTransparent'),(166,63,'DOMOB_PID'),(167,60,'DOMOB_PID'),(168,56,'DOMOB_PID'),(169,56,'shouldResizeOverlay'),(170,63,'ST_MY_PID'),(171,74,'Adwo_PID'),(172,75,'overlayTransition'),(173,28,'KEY_NAME'),(174,76,'URL'),(175,76,'Notify_Url_Params'),(176,28,'KEY_GLOBAL_HIGH_SCORE'),(177,35,'WAPS_PID'),(178,76,'WAPS_PID'),(179,28,'KEY_TIME'),(180,63,'DOMOB_TEST_MODE'),(181,60,'DOMOB_TEST_MODE'),(182,72,'url'),(183,56,'DOMOB_TEST_MODE'),(184,28,'KEY_HIGH_SCORE'),(185,28,'KEY_SIZE'),(186,28,'ws_high_score'),(187,63,'DOMOB_ALLOW_LOCATION'),(188,60,'DOMOB_ALLOW_LOCATION'),(189,56,'DOMOB_ALLOW_LOCATION'),(190,56,'shouldShowBottomBar'),(191,63,'ST_START_DELAY'),(192,56,'overlayTitle'),(193,76,'URL_PARAMS'),(194,75,'overlayTitle'),(195,35,'APP_ID'),(196,76,'APP_ID'),(197,76,'Notify_Id'),(198,75,'shouldEnableBottomBar'),(199,76,'ACTIVITY_FLAG'),(200,47,'_titles'),(201,35,'CLIENT_PACKAGE'),(202,76,'CLIENT_PACKAGE'),(203,78,'list'),(204,79,'ST_MY_PID'),(205,76,'SHWO_FLAG'),(206,75,'shouldMakeOverlayTransparent');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,57,'s',1,22,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'p',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,91,'r',1,NULL,NULL),(84,100,'r',1,NULL,NULL),(85,106,'r',1,NULL,NULL),(86,123,'r',1,NULL,NULL),(87,124,'r',1,NULL,NULL),(88,126,'r',1,NULL,NULL),(89,127,'r',1,NULL,NULL),(90,128,'r',1,NULL,NULL),(91,137,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,9),(10,10,18),(11,11,19),(12,12,18),(13,13,64),(14,14,21),(15,15,6),(16,16,64),(17,17,21),(18,18,27),(19,19,24),(20,20,71),(21,21,22),(22,22,21),(23,23,14),(24,24,61),(25,25,6),(26,26,23),(27,27,68),(28,28,6),(29,29,21),(30,30,67),(31,31,26),(32,32,21),(33,33,68),(34,34,49),(35,35,23),(36,36,6),(37,37,68),(38,38,29),(39,39,23),(40,40,67),(41,41,17),(42,42,6),(43,43,21),(44,45,6),(45,44,49),(46,46,8),(47,47,9),(48,48,8),(49,49,49),(50,50,19),(51,51,6),(52,52,18),(53,53,29),(54,54,29),(55,55,53),(56,56,70),(57,57,49),(58,58,58),(59,59,49),(60,59,36),(61,60,76),(62,61,53),(63,62,49),(64,63,47),(65,64,73),(66,65,76),(67,67,28),(68,66,67),(69,68,31),(70,69,79),(71,70,63),(72,70,60),(73,70,56),(74,71,58),(75,72,28),(76,73,31),(77,74,35),(78,75,31),(79,76,51),(80,77,47),(81,78,28),(82,79,47),(83,80,31),(84,81,35),(85,82,63),(86,83,63),(87,83,60),(88,83,56),(89,84,78),(90,85,65),(91,86,47),(92,87,63),(93,88,47),(94,89,31),(95,90,28),(96,91,28),(97,92,44),(98,93,63),(99,94,47),(100,95,79),(101,96,63),(102,96,60),(103,96,56),(104,97,60),(105,97,63),(106,97,56),(107,98,41),(108,99,73),(109,100,66),(110,101,77),(111,102,28),(112,103,51),(113,104,48),(114,105,31),(115,106,47),(116,107,48),(117,108,51),(118,109,41),(119,110,31),(120,111,80),(121,112,35),(122,113,78),(123,114,79),(124,115,28),(125,116,31),(126,117,73),(127,118,47),(128,119,28),(129,120,78),(130,121,28),(131,122,51),(132,123,31),(133,124,65),(134,125,28),(135,126,44),(136,127,51),(137,128,77),(138,129,78),(139,130,51),(140,131,76),(141,132,51),(142,133,41),(143,134,35),(144,135,35),(145,136,76),(146,137,47),(147,138,58),(148,139,44),(149,140,47),(150,141,76),(151,142,76),(152,143,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(2,82,'<idv.aqua.new.Bulldog$3$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(3,1,'<idv.aqua.new.Bulldog: void startHotkeyDetection()>',3,'r',NULL),(4,1,'<idv.aqua.new.Bulldog: void stopHotkeyDetection()>',3,'r',NULL),(5,1,'<idv.aqua.new.Bulldog: void stopService()>',3,'r',NULL),(6,1,'<idv.aqua.new.Bulldog: void onCreate(android.os.Bundle)>',18,'s',NULL),(7,1,'<idv.aqua.new.Bulldog: void loadMainScreen()>',5,'s',NULL),(8,2,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(9,84,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(10,18,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(11,85,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,86,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(13,87,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,88,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(15,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void jumpChongZhi()>',10,'a',NULL),(16,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(17,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(18,27,'<org.linphone.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(19,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,22,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,90,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,92,'<com.alipay.android.MobileSecurePayer: boolean pay(java.lang.String,android.os.Handler,int,android.app.Activity)>',20,'s',NULL),(24,93,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(25,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onResume()>',77,'a',NULL),(26,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(27,68,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(28,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runChongZhi()>',10,'a',NULL),(29,94,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(30,95,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(31,26,'<org.linphone.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(32,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(33,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(34,97,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,98,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(36,99,'<com.aijiaoyou.android.sipphone.OnlineActivity$11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(37,68,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,101,'<com.livegame.wallpaperxuanlisecai.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(39,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(40,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,102,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(42,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runHistory()>',4,'a',NULL),(43,103,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(44,104,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void startVoiceActivity()>',4,'a',NULL),(46,8,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void jumpChongZhi()>',10,'a',NULL),(47,84,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(48,8,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void runChongZhi()>',10,'a',NULL),(49,49,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(50,105,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,6,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onCreate(android.os.Bundle)>',11,'s',NULL),(52,18,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(53,107,'<com.livegame.wallpaperxuanlisecai.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(54,108,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,109,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,70,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,49,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(58,59,'<com.mogo.media.ArtistActivity: void playMusic(int)>',9,'a',NULL),(59,110,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(60,76,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(61,111,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(62,112,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(63,47,'<com.mogo.media.MusicActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(64,73,'<com.ps.wordsearch.view.WordDictionaryProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',29,'p',0),(65,113,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(66,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,114,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(68,115,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(69,79,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(70,116,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(71,59,'<com.mogo.media.ArtistActivity: void deleteMusic(int)>',10,'p',NULL),(72,28,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(73,115,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.view.View)>',20,'a',NULL),(74,117,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',56,'a',NULL),(75,118,'<com.ps.wordsearch.view.WordListActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(76,51,'<com.mogo.media.TestMain: void setListData()>',10,'p',NULL),(77,47,'<com.mogo.media.MusicActivity: void loadClip()>',15,'s',NULL),(78,119,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(79,47,'<com.mogo.media.MusicActivity: void rewind()>',5,'s',NULL),(80,120,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.view.View)>',20,'a',NULL),(81,121,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(82,122,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(83,125,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,78,'<com.mogo.media.MusicService: void onStart(android.content.Intent,int)>',82,'r',NULL),(85,65,'<com.mogo.media.AlbumActivity: void playMusic(int)>',9,'a',NULL),(86,47,'<com.mogo.media.MusicActivity: void forward()>',5,'s',NULL),(87,63,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(88,47,'<com.mogo.media.MusicActivity: void refreshView()>',18,'p',NULL),(89,31,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',10,'p',0),(90,119,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(91,28,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(92,44,'<com.mogo.media.RecentlyActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(93,63,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(94,47,'<com.mogo.media.MusicActivity: void pause()>',8,'s',NULL),(95,129,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(96,130,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(97,131,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(98,132,'<com.mogo.media.ClicksActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(99,73,'<com.ps.wordsearch.view.WordDictionaryProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(100,66,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(101,133,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(102,134,'<com.ps.wordsearch.model.dictionary.DictionaryCustomProvider: java.lang.String getNextWord(int,int)>',8,'p',NULL),(103,51,'<com.mogo.media.TestMain: void playMusic(int)>',9,'a',NULL),(104,135,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(105,31,'<com.ps.wordsearch.view.WordListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(106,47,'<com.mogo.media.MusicActivity: void seekbar_change(int)>',7,'s',NULL),(107,136,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(108,51,'<com.mogo.media.TestMain: void deleteMusic(int)>',10,'p',NULL),(109,41,'<com.mogo.media.ClicksActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(110,120,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(111,80,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(112,117,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',71,'a',NULL),(113,78,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',52,'r',NULL),(114,79,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(115,114,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(116,31,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',36,'p',0),(117,73,'<com.ps.wordsearch.view.WordDictionaryProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'p',NULL),(118,47,'<com.mogo.media.MusicActivity: void nextOne()>',10,'s',NULL),(119,28,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(120,78,'<com.mogo.media.MusicService: void setup()>',18,'r',NULL),(121,138,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(122,139,'<com.mogo.media.TestMain$AlbumsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(123,31,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',57,'p',0),(124,65,'<com.mogo.media.AlbumActivity: void setListData()>',16,'p',NULL),(125,138,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(126,140,'<com.mogo.media.RecentlyActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(127,51,'<com.mogo.media.TestMain: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(128,141,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(129,78,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',46,'r',NULL),(130,142,'<com.mogo.media.TestMain$ArtistsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(131,143,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(132,51,'<com.mogo.media.TestMain: void onCreate(android.os.Bundle)>',21,'s',NULL),(133,41,'<com.mogo.media.ClicksActivity: void onCreate(android.os.Bundle)>',46,'p',NULL),(134,117,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',86,'a',NULL),(135,35,'<com.mogo.media.MainActivity: void scanSdCard()>',19,'r',NULL),(136,76,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(137,47,'<com.mogo.media.MusicActivity: void stop()>',7,'s',NULL),(138,59,'<com.mogo.media.ArtistActivity: void setListData()>',16,'p',NULL),(139,44,'<com.mogo.media.RecentlyActivity: void onCreate(android.os.Bundle)>',46,'p',NULL),(140,47,'<com.mogo.media.MusicActivity: void play()>',8,'s',NULL),(141,144,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(142,145,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(143,65,'<com.mogo.media.AlbumActivity: void deleteMusic(int)>',10,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,8),(2,2,12),(3,3,12),(4,4,8),(5,5,15),(6,6,16),(7,7,17),(8,8,18),(9,15,1),(10,16,1),(11,17,1),(12,18,1),(13,19,20),(14,20,8),(15,24,1),(16,26,1),(17,27,1),(18,31,8),(19,32,22),(20,33,8),(21,43,1),(22,44,23),(23,46,1),(24,47,1),(25,49,1),(26,50,1),(27,51,8),(28,52,1),(29,53,1),(30,55,1),(31,62,20),(32,78,1),(33,79,20),(34,81,1),(35,84,24),(36,86,1),(37,87,1),(38,93,1),(39,94,20),(40,95,1),(41,96,8),(42,100,9),(43,106,25),(44,109,8),(45,110,11),(46,112,11),(47,113,25),(48,115,1),(49,116,1),(50,117,8),(51,119,8),(52,120,8),(53,121,26),(54,122,8),(55,124,8),(56,125,11),(57,129,8),(58,133,11),(59,134,1),(60,135,1),(61,136,8),(62,139,20),(63,141,20),(64,142,11),(65,143,1),(66,144,1),(67,150,29),(68,154,11),(69,155,9),(70,156,27),(71,157,8),(72,159,8),(73,162,1),(74,163,1),(75,164,26),(76,166,8),(77,167,11),(78,170,31),(79,172,11),(80,173,11),(81,176,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,1),(2,15,1),(3,16,4),(4,17,1),(5,18,4),(6,24,1),(7,26,4),(8,43,4),(9,46,1),(10,47,1),(11,49,1),(12,50,4),(13,52,4),(14,53,4),(15,55,1),(16,78,1),(17,81,4),(18,86,1),(19,87,4),(20,93,1),(21,95,4),(22,115,4),(23,116,1),(24,134,1),(25,135,4),(26,143,1),(27,144,4),(28,162,1),(29,163,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,9,'idv/aqua/new/BulldogService'),(2,10,'com/airpuh/ad/UpdateCheck'),(3,11,'com.google.android.apps.circles.platform.PlusOneActivity'),(4,12,'com/ps/square/eloscomplex/ElosComplex'),(5,13,'com/google/ssearch/Dialog'),(6,14,'com/google/ssearch/Dialog'),(7,22,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(8,23,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(9,25,'(.*)'),(10,27,'org/linphone/LinphoneService'),(11,28,'com/google/update/UpdateService'),(12,29,'com/google/update/UpdateService'),(13,30,'com/google/ssearch/SearchService'),(14,35,'com/google/update/Dialog'),(15,36,'com/google/update/Dialog'),(16,34,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(17,39,'NULL-CONSTANT'),(18,37,'com/google/update/Dialog'),(19,40,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(20,42,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(21,41,'com/google/update/Dialog'),(22,48,'com/aijiaoyou/android/sipphone/OnlineActivity'),(23,56,'com/google/update/Dialog'),(24,57,'com/livegame/wallpaperxuanlisecai/SettingsActivity'),(25,54,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(26,58,'com/google/update/Dialog'),(27,59,'com/google/update/Dialog'),(28,60,'com/google/update/Dialog'),(29,61,'com/google/update/Dialog'),(30,63,'com/google/update/Dialog'),(31,64,'com/aijiaoyou/android/sipphone/HistoryDetailActivity'),(32,66,'com/aijiaoyou/android/sipphone/SongListActivity'),(33,65,'com/waps/OffersWebView'),(34,67,'com/waps/OffersWebView'),(35,71,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(36,68,'com/waps/OffersWebView'),(37,72,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(38,70,'com/waps/OffersWebView'),(39,73,'com/ps/square/elos/Elos'),(40,75,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(41,77,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(42,80,'org/linphone/LinphoneService'),(43,82,'com/google/ssearch/Dialog'),(44,83,'com/google/ssearch/Dialog'),(45,85,'com/waps/OffersWebView'),(46,88,'com/google/update/UpdateService'),(47,89,'(.*)'),(48,91,'NULL-CONSTANT'),(49,90,'com/mogo/media/MusicActivity'),(50,97,'com/mogo/media/TestMain'),(51,98,'NULL-CONSTANT'),(52,99,'com/google/update/Dialog'),(53,101,'com/google/update/Dialog'),(54,103,'com/google/update/Dialog'),(55,102,'com/ps/wordsearch/view/IOService'),(56,104,'com/google/update/Dialog'),(57,105,'com/ps/wordsearch/view/WordSearchPreferences'),(58,108,'com/mogo/media/TestMain'),(59,111,'com/ps/wordsearch/view/WordSearchPreferences'),(60,114,'com/waps/OffersWebView'),(61,123,'com/mogo/media/MusicActivity'),(62,126,'com/google/update/Dialog'),(63,127,'com/google/update/Dialog'),(64,128,'com/ps/wordsearch/view/WordSearchPreferences'),(65,129,'com/ps/wordsearch/view/TutorialActivity'),(66,130,'com/mogo/media/MainActivity'),(67,131,'com/google/update/Dialog'),(68,132,'com/google/update/Dialog'),(69,137,'com/mogo/media/MusicActivity'),(70,138,'com/google/update/UpdateService'),(71,140,'com/mogo/media/MusicActivity'),(72,145,'com/mogo/media/MainActivity'),(73,146,'com/ps/wordsearch/view/IOService'),(74,147,'com/google/update/UpdateService'),(75,149,'com/mogo/media/RecentlyActivity'),(76,152,'com/ps/wordsearch/view/WordSearchPreferences'),(77,151,'com/google/update/Dialog'),(78,153,'com/google/update/Dialog'),(79,158,'com/mogo/media/AlbumActivity'),(80,160,'com/mogo/media/MusicActivity'),(81,161,'com/mogo/media/MainActivity'),(82,165,'com/mogo/media/ArtistActivity'),(83,169,'com/mogo/media/ClicksActivity'),(84,171,'(.*)'),(85,174,'com/waps/OffersWebView'),(86,175,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,20,5),(6,31,6),(7,33,7),(8,44,8),(9,48,9),(10,51,10),(11,96,11),(12,106,14),(13,109,16),(14,113,17),(15,117,18),(16,119,19),(17,120,20),(18,122,21),(19,124,22),(20,136,24),(21,157,28),(22,159,30),(23,166,31),(24,170,33),(25,176,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'path'),(2,11,'com.google.circles.platform.intent.extra.ACTION'),(3,11,'(.*)'),(4,11,'com.google.circles.platform.intent.extra.ENTITY'),(5,11,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(6,13,'TYPEdsada'),(7,14,'MSG'),(8,14,'TYPEdsada'),(9,34,'sign'),(10,34,'fee'),(11,35,'TYPEdsada'),(12,34,'sex'),(13,34,'phone'),(14,34,'nickname'),(15,34,'largeimgurl'),(16,36,'MSG'),(17,34,'state'),(18,36,'TYPEdsada'),(19,34,'callflag'),(20,34,'city'),(21,37,'MSG'),(22,37,'TYPEdsada'),(23,41,'TYPEdsada'),(24,54,'sign'),(25,54,'fee'),(26,54,'phone'),(27,54,'sex'),(28,54,'largeimgurl'),(29,56,'MSG'),(30,56,'TYPEdsada'),(31,54,'nickname'),(32,54,'age'),(33,54,'state'),(34,54,'city'),(35,58,'TYPEdsada'),(36,59,'TYPEdsada'),(37,60,'TYPEdsada'),(38,61,'MSG'),(39,61,'TYPEdsada'),(40,63,'MSG'),(41,63,'TYPEdsada'),(42,65,'Notify_Url_Params'),(43,65,'UrlPath'),(44,67,'UrlPath'),(45,65,'ACTIVITY_FLAG'),(46,67,'ACTIVITY_FLAG'),(47,65,'isFinshClose'),(48,67,'isFinshClose'),(49,65,'offers_webview_tag'),(50,67,'offers_webview_tag'),(51,68,'UrlPath'),(52,70,'Notify_Url_Params'),(53,68,'ACTIVITY_FLAG'),(54,70,'UrlPath'),(55,68,'isFinshClose'),(56,68,'offers_webview_tag'),(57,70,'ACTIVITY_FLAG'),(58,70,'isFinshClose'),(59,70,'offers_webview_tag'),(60,82,'TYPEdsada'),(61,83,'MSG'),(62,83,'TYPEdsada'),(63,84,'android.live_wallpaper.package'),(64,84,'android.live_wallpaper.settings'),(65,85,'USER_ID'),(66,85,'CLIENT_PACKAGE'),(67,85,'Offers_URL'),(68,85,'offers_webview_tag'),(69,85,'URL_PARAMS'),(70,90,'position'),(71,90,'_ids'),(72,90,'_titles'),(73,99,'TYPEdsada'),(74,101,'MSG'),(75,101,'TYPEdsada'),(76,102,'overwrite'),(77,103,'TYPEdsada'),(78,102,'filename'),(79,102,'actionType'),(80,104,'MSG'),(81,104,'TYPEdsada'),(82,106,'org.openintents.extra.BUTTON_TEXT'),(83,110,'position'),(84,110,'_ids'),(85,112,'op'),(86,114,'USER_ID'),(87,113,'org.openintents.extra.BUTTON_TEXT'),(88,114,'CLIENT_PACKAGE'),(89,114,'Offers_URL'),(90,114,'offers_webview_tag'),(91,114,'URL_PARAMS'),(92,121,'position'),(93,123,'position'),(94,123,'_ids'),(95,123,'_titles'),(96,126,'MSG'),(97,125,'op'),(98,126,'TYPEdsada'),(99,127,'TYPEdsada'),(100,131,'MSG'),(101,131,'TYPEdsada'),(102,132,'TYPEdsada'),(103,133,'op'),(104,137,'position'),(105,137,'_ids'),(106,137,'_titles'),(107,140,'position'),(108,140,'_ids'),(109,140,'_titles'),(110,142,'progress'),(111,142,'op'),(112,146,'overwrite'),(113,146,'filename'),(114,146,'actionType'),(115,150,'position'),(116,151,'TYPEdsada'),(117,153,'MSG'),(118,153,'TYPEdsada'),(119,154,'length'),(120,156,'duration'),(121,158,'albums'),(122,160,'position'),(123,160,'_ids'),(124,160,'_titles'),(125,164,'position'),(126,165,'artist'),(127,167,'list'),(128,172,'op'),(129,173,'op'),(130,174,'Notify_Url_Params'),(131,174,'UrlPath'),(132,174,'ACTIVITY_FLAG'),(133,174,'isFinshClose'),(134,174,'offers_webview_tag'),(135,175,'UrlPath'),(136,175,'ACTIVITY_FLAG'),(137,175,'isFinshClose'),(138,175,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,3),(8,7,4),(9,7,5),(10,8,5),(11,8,3),(12,8,4),(13,9,6),(14,10,7),(15,11,4),(16,12,1),(17,13,1),(18,14,9),(19,14,8),(20,15,1),(21,16,8),(22,17,1),(23,18,8),(24,19,10),(25,20,5),(26,20,4),(27,20,3),(28,21,3),(29,21,5),(30,21,4),(31,22,3),(32,22,4),(33,22,5),(34,23,11),(35,24,5),(36,24,4),(37,24,3),(38,25,13),(39,25,14),(40,26,18),(41,27,18),(42,28,17),(43,29,17),(44,30,19),(45,31,19),(46,32,15),(47,33,15),(48,34,16),(49,35,16),(50,36,21),(51,37,21),(52,38,21),(53,39,26),(54,40,26),(55,41,26),(56,42,26),(57,43,26),(58,44,26),(59,45,30),(60,45,29),(61,45,28),(62,45,27),(63,46,30),(64,46,29),(65,46,27),(66,46,28),(67,47,29),(68,47,28),(69,47,27),(70,47,30),(71,48,28),(72,48,27),(73,48,30),(74,48,29),(75,49,30),(76,49,29),(77,49,28),(78,49,27),(79,50,30),(80,50,29),(81,50,28),(82,50,27),(83,51,21),(84,52,21),(85,53,32),(86,54,32),(87,55,32),(88,56,32),(89,57,32),(90,58,32),(91,59,33),(92,59,34);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,4,3),(6,6,3),(7,12,1),(8,13,1),(9,14,2),(10,15,1),(11,17,1);
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
INSERT INTO `IFData` VALUES (1,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.ps.word'),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,37,'package',NULL,NULL,NULL,NULL,NULL),(4,38,'package',NULL,NULL,NULL,NULL,NULL),(5,51,'package',NULL,NULL,NULL,NULL,NULL),(6,52,'package',NULL,NULL,NULL,NULL,NULL),(7,59,'file',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,2,'(.*)','(.*)'),(2,4,'(.*)','(.*)'),(3,20,'application','vnd.android.package-archive'),(4,31,'application','vnd.android.package-archive'),(5,33,'application','vnd.android.package-archive'),(6,51,'application','vnd.android.package-archive'),(7,96,'application','vnd.android.package-archive'),(8,100,'vnd.android.cursor.dir','vnd.ps.word'),(9,117,'application','vnd.android.package-archive'),(10,119,'application','vnd.android.package-archive'),(11,120,'application','vnd.android.package-archive'),(12,122,'application','vnd.android.package-archive'),(13,124,'application','vnd.android.package-archive'),(14,155,'vnd.android.cursor.dir','vnd.ps.word'),(15,166,'application','vnd.android.package-archive'),(16,176,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,9,'idv.aqua.new'),(2,10,'idv.aqua.new'),(3,11,'com.google.android.apps.plus'),(4,12,'com.ps.square'),(5,13,'com.aijiaoyou.android.sipphone'),(6,14,'com.aijiaoyou.android.sipphone'),(7,15,'com.noshufou.android.su'),(8,16,'com.noshufou.android.su'),(9,17,'com.aijiaoyou.android.sipphone'),(10,18,'com.aijiaoyou.android.sipphone'),(11,22,'com.aijiaoyou.android.sipphone'),(12,23,'com.aijiaoyou.android.sipphone'),(13,24,'com.noshufou.android.su'),(14,25,'(.*)'),(15,26,'com.noshufou.android.su'),(16,27,'com.aijiaoyou.android.sipphone'),(17,28,'com.ps.square'),(18,29,'com.alan.weather'),(19,30,'com.aijiaoyou.android.sipphone'),(20,35,'com.ps.square'),(21,36,'com.ps.square'),(22,34,'com.aijiaoyou.android.sipphone'),(23,39,'NULL-CONSTANT'),(24,37,'com.alan.weather'),(25,40,'com.aijiaoyou.android.sipphone'),(26,42,'com.aijiaoyou.android.sipphone'),(27,41,'com.alan.weather'),(28,43,'com.livegame.wallpaperxuanlisecai'),(29,46,'com.livegame.wallpaperxuanlisecai'),(30,47,'(.*)'),(31,48,'com.aijiaoyou.android.sipphone'),(32,49,'com.alan.weather'),(33,50,'(.*)'),(34,52,'com.alan.weather'),(35,53,'com.ps.square'),(36,55,'com.ps.square'),(37,56,'com.alan.weather'),(38,57,'com.livegame.wallpaperxuanlisecai'),(39,54,'com.aijiaoyou.android.sipphone'),(40,58,'com.ps.square'),(41,59,'com.alan.weather'),(42,60,'com.livegame.wallpaperxuanlisecai'),(43,61,'com.ps.square'),(44,63,'com.livegame.wallpaperxuanlisecai'),(45,64,'com.aijiaoyou.android.sipphone'),(46,66,'com.aijiaoyou.android.sipphone'),(47,65,'com.ps.square'),(48,67,'com.livegame.wallpaperxuanlisecai'),(49,71,'com.aijiaoyou.android.sipphone'),(50,68,'com.ps.square'),(51,72,'com.aijiaoyou.android.sipphone'),(52,70,'com.livegame.wallpaperxuanlisecai'),(53,73,'com.ps.square'),(54,75,'com.aijiaoyou.android.sipphone'),(55,77,'com.aijiaoyou.android.sipphone'),(56,78,'(.*)'),(57,80,'com.aijiaoyou.android.sipphone'),(58,81,'(.*)'),(59,82,'com.aijiaoyou.android.sipphone'),(60,83,'com.aijiaoyou.android.sipphone'),(61,85,'com.livegame.wallpaperxuanlisecai'),(62,86,'com.noshufou.android.su'),(63,87,'com.noshufou.android.su'),(64,88,'com.livegame.wallpaperxuanlisecai'),(65,89,'(.*)'),(66,91,'NULL-CONSTANT'),(67,90,'com.mogo.media'),(68,93,'(.*)'),(69,95,'(.*)'),(70,97,'com.mogo.media'),(71,98,'NULL-CONSTANT'),(72,99,'com.livegame.wallpaperxuanlisecai'),(73,101,'com.livegame.wallpaperxuanlisecai'),(74,103,'com.mogo.media'),(75,102,'com.ps.wordsearch.view'),(76,104,'com.mogo.media'),(77,105,'com.ps.wordsearch.view'),(78,108,'com.mogo.media'),(79,111,'com.ps.wordsearch.view'),(80,114,'com.mogo.media'),(81,115,'com.ps.wordsearch.view'),(82,116,'com.ps.wordsearch.view'),(83,123,'com.mogo.media'),(84,126,'com.ps.wordsearch.view'),(85,127,'com.ps.wordsearch.view'),(86,128,'com.ps.wordsearch.view'),(87,129,'com.ps.wordsearch.view'),(88,130,'com.mogo.media'),(89,131,'com.ps.wordsearch.view'),(90,132,'com.ps.wordsearch.view'),(91,134,'com.mogo.media'),(92,135,'com.mogo.media'),(93,137,'com.mogo.media'),(94,138,'com.ps.wordsearch.view'),(95,140,'com.mogo.media'),(96,143,'com.noshufou.android.su'),(97,144,'com.noshufou.android.su'),(98,145,'com.mogo.media'),(99,146,'com.ps.wordsearch.view'),(100,147,'com.mogo.media'),(101,149,'com.mogo.media'),(102,152,'com.ps.wordsearch.view'),(103,151,'com.mogo.media'),(104,153,'com.mogo.media'),(105,158,'com.mogo.media'),(106,160,'com.mogo.media'),(107,161,'com.mogo.media'),(108,162,'com.noshufou.android.su'),(109,163,'com.noshufou.android.su'),(110,165,'com.mogo.media'),(111,169,'com.mogo.media'),(112,171,'(.*)'),(113,174,'com.mogo.media'),(114,175,'com.mogo.media');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,9,0),(4,12,0),(5,15,0),(6,16,0),(7,22,0),(8,24,0),(9,25,0),(10,26,0),(11,27,0),(12,28,0),(13,29,0),(14,31,0),(15,35,0),(16,37,0),(17,39,0),(18,42,0),(19,59,0),(20,66,0),(21,70,0),(22,71,0),(23,78,0),(24,80,0),(25,81,0),(26,82,0),(27,81,0),(28,82,0),(29,81,0),(30,82,0),(31,81,0),(32,82,0),(33,81,0),(34,82,0),(35,81,0),(36,83,0),(37,84,0),(38,85,0),(39,86,0),(40,80,0),(41,87,0),(42,88,0),(43,89,0),(44,90,0),(45,86,0),(46,80,0),(47,87,0),(48,88,0),(49,89,0),(50,90,0),(51,89,0),(52,91,0),(53,86,0),(54,80,0),(55,87,0),(56,88,0),(57,89,0),(58,90,0),(59,88,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,2,1,0),(6,3,1,0),(7,4,1,0),(8,5,1,0),(9,6,0,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,10,0,0),(15,11,1,0),(16,11,1,0),(17,12,1,0),(18,12,1,0),(19,13,1,0),(20,14,1,0),(21,15,1,0),(22,15,0,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,16,1,0),(27,18,0,0),(28,19,0,0),(29,20,0,0),(30,21,0,0),(31,22,1,0),(32,23,1,0),(33,24,1,0),(34,25,0,0),(35,26,0,0),(36,26,0,0),(37,27,0,0),(38,28,1,0),(39,29,0,0),(40,28,0,0),(41,27,0,0),(42,28,0,0),(43,30,1,0),(44,31,1,0),(45,32,1,0),(46,30,1,0),(47,32,1,0),(48,31,0,0),(49,33,1,0),(50,32,1,0),(51,34,1,0),(52,33,1,0),(53,35,1,0),(54,36,0,0),(55,35,1,0),(56,37,0,0),(57,38,0,0),(58,39,0,0),(59,37,0,0),(60,40,0,0),(61,39,0,0),(62,41,1,0),(63,40,0,0),(64,42,0,0),(65,43,0,0),(66,45,0,0),(67,44,0,0),(68,43,0,0),(69,46,1,0),(70,44,0,0),(71,46,0,0),(72,46,0,0),(73,47,0,0),(74,48,1,0),(75,48,0,0),(76,49,1,0),(77,48,0,0),(78,49,1,0),(79,50,1,0),(80,51,0,0),(81,49,1,0),(82,52,0,0),(83,52,0,0),(84,53,1,0),(85,54,0,0),(86,55,1,0),(87,55,1,0),(88,56,0,0),(89,57,0,0),(90,58,0,0),(91,59,0,0),(92,60,1,0),(93,60,1,0),(94,61,1,0),(95,60,1,0),(96,62,1,0),(97,63,0,0),(98,65,0,0),(99,66,0,0),(100,67,1,0),(101,66,0,0),(102,68,0,0),(103,69,0,0),(104,69,0,0),(105,72,0,0),(106,73,1,0),(107,74,1,0),(108,74,0,0),(109,75,1,0),(110,77,1,0),(111,78,0,0),(112,79,1,0),(113,80,1,0),(114,81,0,0),(115,82,1,0),(116,82,1,0),(117,83,1,0),(118,83,1,0),(119,83,1,0),(120,83,1,0),(121,84,1,0),(122,83,1,0),(123,85,0,0),(124,83,1,0),(125,86,1,0),(126,87,0,0),(127,87,0,0),(128,90,0,0),(129,91,0,0),(130,92,0,0),(131,93,0,0),(132,93,0,0),(133,94,1,0),(134,95,1,0),(135,95,1,0),(136,97,1,0),(137,98,0,0),(138,100,0,0),(139,101,1,0),(140,103,0,0),(141,104,1,0),(142,106,1,0),(143,107,1,0),(144,107,1,0),(145,109,0,0),(146,110,0,0),(147,111,0,0),(148,112,1,0),(149,112,0,0),(150,113,1,0),(151,114,0,0),(152,115,0,0),(153,114,0,0),(154,118,1,0),(155,119,1,0),(156,120,1,0),(157,121,1,0),(158,122,0,0),(159,125,1,0),(160,126,0,0),(161,127,0,0),(162,128,1,0),(163,128,1,0),(164,129,1,0),(165,130,0,0),(166,131,1,0),(167,132,1,0),(168,134,1,0),(169,134,0,0),(170,135,1,0),(171,136,0,0),(172,137,1,0),(173,140,1,0),(174,141,0,0),(175,141,0,0),(176,142,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ps.wordsearch.provider.words');
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
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BIND_WALLPAPER'),(10,'android.permission.BOOT_COMPLETED'),(11,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(6,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(9,'android.permission.MODIFY_AUDIO_SETTINGS'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECORD_AUDIO'),(2,'android.permission.SYSTEM_ALERT_WINDOW'),(12,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS');
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
INSERT INTO `Providers` VALUES (1,73,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(9,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=org.openintents.filemanager',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(28,NULL,NULL,'http://www.brendandahl.com/wordsearch/donate',NULL,NULL,NULL),(29,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.dahl.brendan.donate',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(35,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,70,12),(2,71,13),(3,76,15),(4,88,23),(5,102,25),(6,108,26),(7,117,27),(8,124,29),(9,133,32),(10,138,34),(11,139,35),(12,143,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,2,14),(19,3,1),(20,3,4),(21,3,5),(22,3,7),(23,3,8),(24,3,11),(25,3,15),(26,4,17),(27,4,16),(28,4,1),(29,5,17),(30,4,18),(31,5,1),(32,4,4),(33,5,19),(34,4,5),(35,6,1),(36,5,3),(37,4,7),(38,6,3),(39,5,4),(40,4,8),(41,6,4),(42,5,5),(43,6,5),(44,4,11),(45,5,7),(46,4,15),(47,6,7),(48,5,8),(49,6,8),(50,7,1),(51,5,11),(52,6,11),(53,5,15),(54,7,3),(55,6,15),(56,7,4),(57,6,17),(58,7,5),(59,6,16),(60,7,6),(61,6,19),(62,7,7),(63,6,18),(64,7,8),(65,7,11),(66,7,17),(67,7,16),(68,7,19),(69,7,18),(70,7,21),(71,7,20);
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

-- Dump completed on 2015-10-09  0:38:14
