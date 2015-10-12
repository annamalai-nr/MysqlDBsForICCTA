-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_102
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(24,'android.intent.action.ANSWER'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.CALL'),(30,'android.intent.action.CHOOSER'),(31,'android.intent.action.DIAL'),(32,'android.intent.action.INSERT_OR_EDIT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.MEDIA_EJECT'),(27,'android.intent.action.MEDIA_MOUNTED'),(26,'android.intent.action.MEDIA_SCANNER_FINISHED'),(25,'android.intent.action.MEDIA_SCANNER_STARTED'),(11,'android.intent.action.MEDIA_SHARED'),(9,'android.intent.action.MEDIA_UNMOUNTED'),(16,'android.intent.action.PACKAGE_ADDED'),(36,'android.intent.action.PHONE_STATE'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(8,'android.intent.action.SECURITY_GUARDER_SERVICE'),(29,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(15,'android.intent.action.VIEW'),(28,'android.intent.action.VOICE_COMMAND'),(35,'android.media.RINGER_MODE_CHANGED'),(34,'android.provider.Telephony.SMS_RECEIVED'),(17,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(7,'android.service.wallpaper.WallpaperService'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(22,'com.mogo.currentTime'),(19,'com.mogo.duration'),(23,'com.mogo.list'),(12,'com.mogo.media.MUSIC_SERVICE'),(20,'com.mogo.next'),(21,'com.mogo.update'),(5,'lenovo.intent.action.appstore');
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
INSERT INTO `Applications` VALUES (1,'com.allen.mp',1),(2,'com.cosina.game.activity',15),(3,'com.ps.llk',16),(4,'com.safett.butler',9),(5,'com.livegame.wallpapershuimohua',3),(6,'com.mogo.media',8),(7,'com.livegame.puke',8);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.mp.Main'),(2,1,'com.allen.mp.Help'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.google.ssearch.SearchService'),(5,1,'com.google.ssearch.Receiver'),(6,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(7,2,'com.cosina.game.activity.StartUpActivity'),(8,2,'com.google.update.Dialog'),(9,2,'com.google.update.UpdateService'),(10,2,'com.google.update.Receiver'),(11,3,'com.ps.llk.MainActivity'),(12,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,3,'com.google.update.Dialog'),(14,3,'com.google.update.UpdateService'),(15,3,'com.google.update.Receiver'),(16,1,'com.allen.mp.Help$4$1'),(17,4,'com.safett.butler.Butler'),(18,4,'com.safett.butler.FilterRecords'),(19,1,'com.google.ssearch.SearchService$MyThread'),(20,4,'com.safett.butler.BlackLists'),(21,4,'com.safett.butler.WhiteLists'),(22,5,'com.livegame.wallpapershuimohua.MainActivity'),(23,4,'com.safett.butler.ContactList'),(24,4,'com.safett.butler.RecentCalls'),(25,5,'com.livegame.wallpapershuimohua.SettingsActivity'),(26,4,'com.safett.butler.Preferences'),(27,5,'com.livegame.wallpapershuimohua.SelectFolderActivity'),(28,4,'com.safett.butler.ManualItem'),(29,5,'com.google.ads.AdActivity'),(30,4,'com.safett.butler.EditItem'),(31,5,'com.vpon.adon.android.WebInApp'),(32,4,'com.safett.butler.Rules'),(33,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(34,1,'com.google.ssearch.Dialog$1'),(35,4,'com.safett.butler.sms.ConversationList'),(36,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(37,4,'com.safett.butler.HelpActivity'),(38,5,'com.waps.OffersWebView'),(39,4,'com.safett.butler.vip.VipCenter'),(40,5,'com.google.update.Dialog'),(41,4,'com.safett.butler.vip.VipConversationList'),(42,5,'com.livegame.wallpapershuimohua.WallpaperSlideshow'),(43,4,'com.safett.butler.vip.VipRecentCalls'),(44,4,'com.safett.butler.vip.CallDetailActivity'),(45,4,'com.safett.butler.vip.VipPreferences'),(46,5,'com.google.update.UpdateService'),(47,4,'com.safett.butler.vip.VipMessagingPreferenceActivity'),(48,5,'com.google.update.Receiver'),(49,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(50,4,'com.safett.butler.ShowTips'),(51,4,'com.safett.butler.UpdateService'),(52,4,'com.safett.butler.service.MonitorService'),(53,6,'com.mogo.media.ListActivity'),(54,6,'com.mogo.media.PlayActivity'),(55,6,'com.mogo.media.MainActivity'),(56,1,'com.allen.mp.SDListenerActivity$1'),(57,4,'com.safett.butler.Receiver'),(58,6,'com.mogo.media.ClicksActivity'),(59,4,'com.safett.butler.service.AutoStartReceiver'),(60,6,'com.mogo.media.RecentlyActivity'),(61,3,'com.google.update.Dialog$1'),(62,6,'com.mogo.media.MusicActivity'),(63,6,'com.mogo.media.TestMain'),(64,4,'com.safett.butler.service.SmsResultNotifier'),(65,6,'com.mogo.media.ArtistList'),(66,6,'com.mogo.media.ArtistActivity'),(67,6,'com.mogo.media.AlbumList'),(68,6,'com.mogo.media.AlbumActivity'),(69,6,'com.google.ads.AdActivity'),(70,6,'com.vpon.adon.android.WebInApp'),(71,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(72,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,6,'com.waps.OffersWebView'),(74,3,'com.google.update.UpdateService$AA'),(75,6,'com.google.update.Dialog'),(76,6,'com.mogo.media.MusicService'),(77,6,'com.google.update.UpdateService'),(78,6,'com.google.update.Receiver'),(79,3,'com.google.update.Dialog$2'),(80,2,'com.google.update.UpdateService$AA'),(81,7,'com.livegame.puke.ui.MainScreen'),(82,2,'com.google.update.Dialog$1'),(83,7,'com.livegame.puke.ui.Yaniv'),(84,7,'com.livegame.puke.ui.YanivPreferencesScreen'),(85,7,'com.scoreloop.android.coreui.HighscoresActivity'),(86,7,'com.scoreloop.android.coreui.ProfileActivity'),(87,7,'com.scoreloop.android.coreui.AccountActivity'),(88,7,'com.scoreloop.android.coreui.BuddiesActivity'),(89,7,'com.scoreloop.android.coreui.BuddiesAddActivity'),(90,7,'com.scoreloop.android.coreui.GamesActivity'),(91,7,'com.scoreloop.android.coreui.GameActivity'),(92,7,'com.scoreloop.android.coreui.UserActivity'),(93,7,'com.scoreloop.android.coreui.PostScoreActivity'),(94,7,'com.google.ads.AdActivity'),(95,7,'com.vpon.adon.android.WebInApp'),(96,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(97,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(98,7,'com.waps.OffersWebView'),(99,7,'com.google.update.Dialog'),(100,2,'com.google.update.Dialog$2'),(101,7,'com.google.update.UpdateService'),(102,7,'com.google.update.Receiver'),(103,2,'com.adwo.adsdk.D'),(104,5,'com.waps.AppConnect'),(105,5,'com.waps.z'),(106,5,'com.waps.aa'),(107,5,'com.waps.q'),(108,5,'com.google.update.UpdateService$AA'),(109,5,'com.livegame.wallpapershuimohua.MainActivity$1'),(110,5,'com.google.update.Dialog$1'),(111,5,'com.livegame.wallpapershuimohua.MainActivity$2'),(112,5,'com.waps.ac'),(113,5,'com.waps.o'),(114,5,'com.google.update.Dialog$2'),(115,6,'u$b'),(116,6,'com.mogo.media.MusicActivity$1'),(117,6,'com.mogo.media.TestMain$1'),(118,6,'com.waps.m'),(119,6,'com.mogo.media.ScanSdReceiver'),(120,6,'com.mogo.media.MusicService$3'),(121,6,'com.mogo.media.RecentlyActivity$ListItemClickListener'),(122,6,'com.mogo.media.TestMain$ArtistsItemClickListener'),(123,6,'com.waps.AppConnect'),(124,6,'com.mogo.media.TestMain$AlbumsItemClickListener'),(125,6,'com.mogo.media.MainActivity$1'),(126,6,'com.google.update.Dialog$2'),(127,6,'com.google.update.Dialog$1'),(128,6,'com.mogo.media.ClicksActivity$ListItemClickListener'),(129,6,'com.ju6.a'),(130,6,'com.waps.k'),(131,6,'com.google.update.UpdateService$MyThread'),(132,7,'com.scoreloop.client.android.core.controller.AddressBook'),(133,7,'com.google.update.Dialog$2'),(134,7,'com.waps.ac'),(135,7,'com.waps.AppConnect'),(136,7,'com.waps.aa'),(137,7,'com.scoreloop.android.coreui.GameActivity$1'),(138,7,'com.scoreloop.android.coreui.HighscoresActivity$2'),(139,7,'com.scoreloop.android.coreui.BuddiesActivity$1'),(140,7,'com.waps.o'),(141,7,'com.waps.q'),(142,7,'com.waps.z'),(143,7,'com.scoreloop.android.coreui.GamesActivity$2'),(144,7,'com.scoreloop.android.coreui.GamesActivity$1'),(145,7,'com.google.update.Dialog$1'),(146,7,'com.scoreloop.android.coreui.AccountActivity$2'),(147,7,'com.livegame.puke.ui.MyUserControllerObserver$1'),(148,7,'com.livegame.puke.ui.MainScreen$3'),(149,7,'com.google.update.UpdateService$AA'),(150,4,'com.safett.butler.sms.ContactInfoCache'),(151,4,'com.safett.butler.vip.VipRecentCalls$RecentCallsAdapter'),(152,4,'com.safett.butler.ShowTips$1'),(153,4,'com.safett.butler.service.SmsReceiver'),(154,4,'b'),(155,4,'com.adwo.adsdk.D'),(156,4,'com.safett.butler.service.MonitorService$1'),(157,4,'com.safett.butler.sms.SqliteWrapper'),(158,4,'com.safett.butler.vip.VipConversationList$CachingNameStoreImpl'),(159,4,'com.safett.butler.sms.ConversationList$CachingNameStoreImpl');
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'TYPEdsada'),(2,3,'MSG'),(3,12,'url'),(4,12,'shouldMakeOverlayTransparent'),(5,12,'overlayTransition'),(6,9,'ST_MY_PID'),(7,13,'TYPEdsada'),(8,6,'overlayTitle'),(9,12,'shouldResizeOverlay'),(10,6,'shouldShowBottomBar'),(11,14,'ST_MY_PID'),(12,6,'shouldEnableBottomBar'),(13,12,'shouldShowBottomBar'),(14,12,'shouldShowTitlebar'),(15,12,'shouldEnableBottomBar'),(16,12,'overlayTitle'),(17,14,'ST_START_DELAY'),(18,13,'MSG'),(19,12,'transitionTime'),(20,8,'TYPEdsada'),(21,6,'url'),(22,6,'shouldShowTitlebar'),(23,6,'shouldResizeOverlay'),(24,6,'shouldMakeOverlayTransparent'),(25,7,'Adwo_PID'),(26,9,'ST_START_DELAY'),(27,6,'overlayTransition'),(28,6,'transitionTime'),(29,8,'MSG'),(30,37,'MSG'),(31,37,'TYPEdsada'),(32,35,'isFinshClose'),(33,35,'WAPS_ID'),(34,20,'WAPS_ID'),(35,35,'URL_PARAMS'),(36,23,'folder'),(37,35,'USER_ID'),(38,35,'UrlPath'),(39,33,'shouldShowBottomBar'),(40,33,'overlayTransition'),(41,33,'shouldMakeOverlayTransparent'),(42,33,'shouldShowTitlebar'),(43,35,'SHWO_FLAG'),(44,33,'shouldResizeOverlay'),(45,33,'shouldEnableBottomBar'),(46,33,'transitionTime'),(47,43,'ST_START_DELAY'),(48,35,'Notify_Id'),(49,35,'DEVICE_ID'),(50,20,'DEVICE_ID'),(51,35,'WAPS_PID'),(52,20,'WAPS_PID'),(53,35,'APP_ID'),(54,20,'APP_ID'),(55,33,'url'),(56,33,'overlayTitle'),(57,35,'Notify_Url_Params'),(58,35,'Offers_URL'),(59,31,'Adwo_PID'),(60,35,'CLIENT_PACKAGE'),(61,35,'URL'),(62,20,'CLIENT_PACKAGE'),(63,35,'offers_webview_tag'),(64,35,'ACTIVITY_FLAG'),(65,29,'adWidth'),(66,31,'isTestMode'),(67,43,'ST_MY_PID'),(68,29,'url'),(69,52,'WAPS_PID'),(70,67,'Adwo_PID'),(71,52,'APP_ID'),(72,62,'artist'),(73,58,'_ids'),(74,68,'overlayTransition'),(75,69,'URL_PARAMS'),(76,69,'USER_ID'),(77,66,'url'),(78,52,'CLIENT_PACKAGE'),(79,52,'WAPS_ID'),(80,72,'ST_MY_PID'),(81,68,'shouldResizeOverlay'),(82,66,'adWidth'),(83,72,'ST_START_DELAY'),(84,71,'progress'),(85,52,'DEVICE_ID'),(86,69,'CLIENT_PACKAGE'),(87,68,'shouldMakeOverlayTransparent'),(88,69,'Offers_URL'),(89,70,'TYPEdsada'),(90,69,'URL'),(91,70,'MSG'),(92,68,'shouldShowTitlebar'),(93,71,'_ids'),(94,68,'url'),(95,71,'list'),(96,65,'params'),(97,68,'overlayTitle'),(98,64,'albums'),(99,69,'isFinshClose'),(100,68,'shouldEnableBottomBar'),(101,68,'transitionTime'),(102,58,'_titles'),(103,65,'action'),(104,65,'com.google.ads.AdOpener'),(105,67,'isTestMode'),(106,68,'shouldShowBottomBar'),(107,58,'position'),(108,88,'isTestMode'),(109,90,'offers_webview_tag'),(110,75,'difficultyLevel'),(111,90,'WAPS_ID'),(112,74,'WAPS_ID'),(113,90,'ACTIVITY_FLAG'),(114,90,'DEVICE_ID'),(115,74,'DEVICE_ID'),(116,89,'url'),(117,91,'TYPEdsada'),(118,88,'Adwo_PID'),(119,90,'WAPS_PID'),(120,74,'WAPS_PID'),(121,90,'UrlPath'),(122,90,'APP_ID'),(123,74,'APP_ID'),(124,89,'shouldShowBottomBar'),(125,90,'isFinshClose'),(126,90,'Offers_URL'),(127,90,'URL_PARAMS'),(128,90,'USER_ID'),(129,90,'Notify_Url_Params'),(130,75,'state'),(131,89,'shouldResizeOverlay'),(132,87,'adWidth'),(133,90,'CLIENT_PACKAGE'),(134,75,'gamedata'),(135,92,'ST_START_DELAY'),(136,90,'Notify_Id'),(137,92,'ST_MY_PID'),(138,89,'overlayTitle'),(139,74,'CLIENT_PACKAGE'),(140,89,'shouldShowTitlebar'),(141,89,'shouldEnableBottomBar'),(142,89,'shouldMakeOverlayTransparent'),(143,91,'MSG'),(144,90,'URL'),(145,74,'UMENG_CHANNEL'),(146,74,'UMENG_APPKEY'),(147,90,'SHWO_FLAG'),(148,87,'url'),(149,89,'overlayTransition'),(150,32,'base_uri'),(151,32,'whitelist'),(152,89,'transitionTime'),(153,75,'playerName'),(154,38,'base_uri'),(155,26,'areacode'),(156,32,'search_flag'),(157,32,'viplist'),(158,28,'number'),(159,46,'transitionTime'),(160,28,'name'),(161,38,'Adwo_PID'),(162,21,'whitelist'),(163,26,'whitelist'),(164,22,'viplist'),(165,38,'search_flag'),(166,28,'areacode'),(167,47,'MM'),(168,46,'url'),(169,22,'whitelist'),(170,46,'shouldShowTitlebar'),(171,46,'overlayTitle'),(172,38,'filter'),(173,46,'shouldResizeOverlay'),(174,32,'filter'),(175,28,'whitelist'),(176,21,'viplist'),(177,32,'query_token'),(178,46,'overlayTransition'),(179,26,'viplist'),(180,17,'sms'),(181,46,'shouldEnableBottomBar'),(182,46,'shouldShowBottomBar'),(183,38,'query_token'),(184,46,'shouldMakeOverlayTransparent'),(185,28,'mode'),(186,48,'SAFE_PID'),(187,48,'SAFE_START');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',1,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',1,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,35,'a',0,NULL,NULL),(33,36,'a',0,NULL,NULL),(34,37,'a',0,NULL,NULL),(35,38,'a',0,NULL,NULL),(36,39,'a',0,NULL,NULL),(37,40,'a',0,NULL,NULL),(38,41,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,42,'s',1,29,NULL),(41,44,'a',0,NULL,NULL),(42,45,'a',0,NULL,NULL),(43,46,'s',0,NULL,NULL),(44,47,'a',0,NULL,NULL),(45,48,'r',1,NULL,NULL),(46,49,'a',0,NULL,NULL),(47,50,'a',0,NULL,NULL),(48,51,'s',0,NULL,NULL),(49,52,'s',1,NULL,NULL),(50,53,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',1,NULL,NULL),(53,56,'r',1,NULL,NULL),(54,57,'r',1,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'r',0,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'a',0,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'a',0,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,76,'s',1,NULL,NULL),(72,77,'s',0,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,81,'a',1,NULL,NULL),(75,83,'a',0,NULL,NULL),(76,84,'a',0,NULL,NULL),(77,85,'a',0,NULL,NULL),(78,86,'a',0,NULL,NULL),(79,87,'a',0,NULL,NULL),(80,88,'a',0,NULL,NULL),(81,89,'a',0,NULL,NULL),(82,90,'a',0,NULL,NULL),(83,91,'a',0,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,93,'a',0,NULL,NULL),(86,94,'a',0,NULL,NULL),(87,95,'a',0,NULL,NULL),(88,96,'a',0,NULL,NULL),(89,97,'a',0,NULL,NULL),(90,98,'a',0,NULL,NULL),(91,99,'a',0,NULL,NULL),(92,101,'s',0,NULL,NULL),(93,102,'r',1,NULL,NULL),(94,103,'r',1,NULL,NULL),(95,107,'r',1,NULL,NULL),(96,115,'r',1,NULL,NULL),(97,116,'r',1,NULL,NULL),(98,117,'r',1,NULL,NULL),(99,118,'r',1,NULL,NULL),(100,119,'r',1,NULL,NULL),(101,120,'r',1,NULL,NULL),(102,141,'r',1,NULL,NULL),(103,153,'r',1,NULL,NULL),(104,155,'r',1,NULL,NULL),(105,156,'r',1,NULL,NULL),(106,64,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,4),(4,4,5),(5,5,3),(6,6,4),(7,7,4),(8,8,15),(9,9,13),(10,10,14),(11,11,14),(12,12,13),(13,13,9),(14,14,14),(15,15,8),(16,16,10),(17,17,9),(18,18,8),(19,19,9),(20,20,20),(21,21,35),(22,22,35),(23,23,43),(24,24,35),(25,25,20),(26,26,37),(27,27,43),(28,28,35),(29,29,43),(30,30,20),(31,31,45),(32,32,35),(33,32,25),(34,33,35),(35,34,37),(36,35,58),(37,36,62),(38,37,59),(39,38,58),(40,39,64),(41,40,65),(42,41,73),(43,42,55),(44,43,55),(45,44,57),(46,45,58),(47,46,57),(48,47,62),(49,48,58),(50,49,58),(51,50,64),(52,51,57),(53,52,59),(54,53,52),(55,54,59),(56,55,71),(57,56,59),(58,57,52),(59,58,70),(60,59,58),(61,60,71),(62,61,71),(63,62,52),(64,63,70),(65,64,52),(66,65,58),(67,66,64),(68,67,59),(69,68,52),(70,69,72),(71,70,58),(72,71,58),(73,72,59),(74,73,71),(75,74,72),(76,75,59),(77,76,62),(78,77,55),(79,78,72),(80,79,69),(81,80,58),(82,81,72),(83,82,74),(84,83,81),(85,84,93),(86,85,91),(87,86,77),(88,87,90),(89,88,74),(90,89,90),(91,90,77),(92,91,90),(93,92,92),(94,93,83),(95,94,77),(96,95,78),(97,96,80),(98,97,90),(99,98,90),(100,99,82),(101,100,82),(102,101,90),(103,102,82),(104,103,75),(105,104,39),(106,104,38),(107,105,91),(108,106,38),(109,107,79),(110,108,18),(111,109,83),(112,109,82),(113,109,81),(114,109,80),(115,109,79),(116,109,77),(117,109,76),(118,109,85),(119,109,75),(120,109,84),(121,110,36),(122,111,78),(123,112,92),(124,113,82),(125,114,74),(126,115,92),(127,116,16),(128,116,38),(129,117,38),(130,117,32),(131,118,41),(132,119,38),(133,119,32),(134,120,16),(135,120,38),(136,121,38),(137,122,18),(138,123,36),(139,124,41),(140,125,38),(141,126,19),(142,127,39),(143,128,18),(144,129,19),(145,130,38),(146,131,38),(147,131,39),(148,132,36),(149,133,18),(150,134,47),(151,134,38),(152,135,17),(153,136,38),(154,137,38),(155,138,39),(156,139,16),(157,139,38),(158,140,19),(159,141,39),(160,142,38),(161,143,38),(162,144,56),(163,145,24),(164,145,16),(165,146,17),(166,147,19),(167,148,36),(168,149,49),(169,150,36),(170,151,39),(171,152,54),(172,153,26),(173,154,38),(174,154,16),(175,155,41),(176,155,38),(177,156,38),(178,157,19),(179,158,41),(180,158,38),(181,159,21),(182,160,32),(183,160,38),(184,161,18),(185,162,36),(186,163,38),(187,163,16),(188,164,18),(189,165,38),(190,165,16),(191,166,17),(192,167,16),(193,168,32),(194,168,38),(195,169,38),(196,170,18),(197,171,19),(198,172,36),(199,173,19),(200,174,38),(201,175,38),(202,176,38),(203,176,39),(204,177,38),(205,178,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.allen.mp.Main: boolean onLongClick(android.view.View)>',6,'a',NULL),(2,16,'<com.allen.mp.Help$4$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,19,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(4,5,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,34,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(6,4,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(7,4,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(8,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,74,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(12,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(13,80,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(14,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,82,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(18,100,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(20,104,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(21,105,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,106,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(24,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(25,109,'<com.livegame.wallpapershuimohua.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(26,110,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,46,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(28,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(29,46,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(30,111,'<com.livegame.wallpapershuimohua.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(31,48,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,112,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(33,113,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(34,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,62,'<com.mogo.media.MusicActivity: void loadClip()>',15,'s',NULL),(36,66,'<com.mogo.media.ArtistActivity: void playMusic(int)>',9,'a',NULL),(37,63,'<com.mogo.media.TestMain: void setListData()>',10,'p',NULL),(38,62,'<com.mogo.media.MusicActivity: void forward()>',5,'s',NULL),(39,68,'<com.mogo.media.AlbumActivity: void playMusic(int)>',9,'a',NULL),(40,69,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(41,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,58,'<com.mogo.media.ClicksActivity: void onCreate(android.os.Bundle)>',48,'p',NULL),(43,58,'<com.mogo.media.ClicksActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(44,60,'<com.mogo.media.RecentlyActivity: void onCreate(android.os.Bundle)>',48,'p',NULL),(45,62,'<com.mogo.media.MusicActivity: void seekbar_change(int)>',7,'s',NULL),(46,60,'<com.mogo.media.RecentlyActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(47,66,'<com.mogo.media.ArtistActivity: void setListData()>',16,'p',NULL),(48,62,'<com.mogo.media.MusicActivity: void refreshView()>',18,'p',NULL),(49,62,'<com.mogo.media.MusicActivity: void stop()>',7,'s',NULL),(50,68,'<com.mogo.media.AlbumActivity: void setListData()>',16,'p',NULL),(51,121,'<com.mogo.media.RecentlyActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(52,122,'<com.mogo.media.TestMain$ArtistsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(53,123,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(54,124,'<com.mogo.media.TestMain$AlbumsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(55,76,'<com.mogo.media.MusicService: void onStart(android.content.Intent,int)>',82,'r',NULL),(56,63,'<com.mogo.media.TestMain: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(57,125,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',57,'a',NULL),(58,126,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,62,'<com.mogo.media.MusicActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(60,76,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',46,'r',NULL),(61,76,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',52,'r',NULL),(62,125,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(63,127,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,125,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',87,'a',NULL),(65,62,'<com.mogo.media.MusicActivity: void rewind()>',5,'s',NULL),(66,68,'<com.mogo.media.AlbumActivity: void deleteMusic(int)>',10,'p',NULL),(67,63,'<com.mogo.media.TestMain: void deleteMusic(int)>',10,'p',NULL),(68,55,'<com.mogo.media.MainActivity: void scanSdCard()>',19,'r',NULL),(69,77,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(70,62,'<com.mogo.media.MusicActivity: void pause()>',8,'s',NULL),(71,62,'<com.mogo.media.MusicActivity: void play()>',8,'s',NULL),(72,63,'<com.mogo.media.TestMain: void onCreate(android.os.Bundle)>',23,'s',NULL),(73,76,'<com.mogo.media.MusicService: void setup()>',18,'r',NULL),(74,77,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(75,63,'<com.mogo.media.TestMain: void playMusic(int)>',9,'a',NULL),(76,66,'<com.mogo.media.ArtistActivity: void deleteMusic(int)>',10,'p',NULL),(77,128,'<com.mogo.media.ClicksActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(78,129,'<com.ju6.a: boolean b()>',178,'p',NULL),(79,130,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(80,62,'<com.mogo.media.MusicActivity: void nextOne()>',10,'s',NULL),(81,131,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(82,81,'<com.livegame.puke.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(83,132,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(84,102,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,133,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(86,85,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(87,134,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(88,135,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(89,98,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(90,85,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(91,136,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(92,101,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(93,137,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(94,138,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(95,86,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(96,139,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(97,140,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(98,142,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(99,90,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(100,143,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(101,98,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(102,144,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(103,83,'<com.livegame.puke.ui.Yaniv: void showSettingsDialog()>',3,'a',NULL),(104,43,'<com.safett.butler.vip.VipRecentCalls: boolean onKeyDown(int,android.view.KeyEvent)>',16,'a',NULL),(105,145,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(106,41,'<com.safett.butler.vip.VipConversationList: void openThread(long,java.lang.String)>',10,'a',NULL),(107,146,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(108,20,'<com.safett.butler.BlackLists: void reply()>',22,'a',NULL),(109,147,'<com.livegame.puke.ui.MyUserControllerObserver$1: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(110,39,'<com.safett.butler.vip.VipCenter: void callback()>',28,'a',NULL),(111,86,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(112,101,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(113,90,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(114,148,'<com.livegame.puke.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(115,149,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(116,17,'<com.safett.butler.Butler: void showRecords()>',6,'a',NULL),(117,150,'<com.safett.butler.sms.ContactInfoCache: void <init>(android.content.Context)>',27,'p',NULL),(118,44,'<com.safett.butler.vip.CallDetailActivity: void updateData(android.net.Uri)>',76,'p',NULL),(119,150,'<com.safett.butler.sms.ContactInfoCache: com.safett.butler.sms.ContactInfoCache$CacheEntry queryContactInfoByNumber(android.content.Context,java.lang.String)>',12,'p',NULL),(120,17,'<com.safett.butler.Butler: void showRules()>',6,'a',NULL),(121,41,'<com.safett.butler.vip.VipConversationList: boolean onContextItemSelected(android.view.MenuItem)>',21,'a',NULL),(122,20,'<com.safett.butler.BlackLists: boolean handleMenuItemSelected(int)>',26,'a',0),(123,39,'<com.safett.butler.vip.VipCenter: boolean handleMenuItemSelected(int)>',18,'a',0),(124,44,'<com.safett.butler.vip.CallDetailActivity: void updateData(android.net.Uri)>',4,'p',0),(125,151,'<com.safett.butler.vip.VipRecentCalls$RecentCallsAdapter: void onClick(android.view.View)>',10,'a',NULL),(126,21,'<com.safett.butler.WhiteLists: boolean handleMenuItemSelected(int)>',26,'a',0),(127,43,'<com.safett.butler.vip.VipRecentCalls: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',10,'a',NULL),(128,20,'<com.safett.butler.BlackLists: void callback()>',28,'a',NULL),(129,21,'<com.safett.butler.WhiteLists: boolean handleMenuItemSelected(int)>',18,'a',0),(130,41,'<com.safett.butler.vip.VipConversationList: void sendIm(java.lang.String)>',21,'p',NULL),(131,43,'<com.safett.butler.vip.VipRecentCalls: void callEntry(int)>',30,'a',NULL),(132,39,'<com.safett.butler.vip.VipCenter: boolean handleMenuItemSelected(int)>',44,'a',0),(133,20,'<com.safett.butler.BlackLists: boolean handleMenuItemSelected(int)>',48,'a',0),(134,152,'<com.safett.butler.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(135,18,'<com.safett.butler.FilterRecords: void restore()>',29,'p',NULL),(136,154,'<b: void p()>',66,'a',NULL),(137,41,'<com.safett.butler.vip.VipConversationList: void sendIm(java.lang.String)>',39,'a',NULL),(138,43,'<com.safett.butler.vip.VipRecentCalls: boolean onContextItemSelected(android.view.MenuItem)>',24,'p',NULL),(139,17,'<com.safett.butler.Butler: void showBlacklists()>',6,'a',NULL),(140,21,'<com.safett.butler.WhiteLists: void reply()>',22,'a',NULL),(141,43,'<com.safett.butler.vip.VipRecentCalls: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(142,41,'<com.safett.butler.vip.VipConversationList: void createNewMessage()>',4,'a',NULL),(143,154,'<b: void p()>',36,'a',NULL),(144,59,'<com.safett.butler.service.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(145,26,'<com.safett.butler.Preferences: void changeMonitorServiceStatus(android.content.Context,boolean)>',5,'s',NULL),(146,18,'<com.safett.butler.FilterRecords: void callback()>',28,'a',NULL),(147,21,'<com.safett.butler.WhiteLists: boolean handleMenuItemSelected(int)>',71,'a',NULL),(148,39,'<com.safett.butler.vip.VipCenter: boolean handleMenuItemSelected(int)>',10,'a',0),(149,52,'<com.safett.butler.service.MonitorService: void revertVolume()>',13,'r',NULL),(150,39,'<com.safett.butler.vip.VipCenter: boolean handleMenuItemSelected(int)>',72,'a',NULL),(151,43,'<com.safett.butler.vip.VipRecentCalls: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'p',NULL),(152,57,'<com.safett.butler.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(153,28,'<com.safett.butler.ManualItem: void onCreate(android.os.Bundle)>',24,'p',NULL),(154,17,'<com.safett.butler.Butler: void showHelp()>',6,'a',NULL),(155,44,'<com.safett.butler.vip.CallDetailActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',0),(156,41,'<com.safett.butler.vip.VipConversationList: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',0),(157,21,'<com.safett.butler.WhiteLists: boolean handleMenuItemSelected(int)>',10,'a',0),(158,44,'<com.safett.butler.vip.CallDetailActivity: boolean onKeyDown(int,android.view.KeyEvent)>',14,'a',NULL),(159,23,'<com.safett.butler.ContactList: void onCreate(android.os.Bundle)>',18,'p',NULL),(160,150,'<com.safett.butler.sms.ContactInfoCache: void <init>(android.content.Context)>',21,'p',NULL),(161,20,'<com.safett.butler.BlackLists: boolean handleMenuItemSelected(int)>',18,'a',0),(162,39,'<com.safett.butler.vip.VipCenter: boolean handleMenuItemSelected(int)>',26,'a',0),(163,17,'<com.safett.butler.Butler: void showSettings()>',6,'a',NULL),(164,20,'<com.safett.butler.BlackLists: boolean handleMenuItemSelected(int)>',80,'a',NULL),(165,17,'<com.safett.butler.Butler: void showWhitelists()>',6,'a',NULL),(166,18,'<com.safett.butler.FilterRecords: void reply()>',22,'a',NULL),(167,17,'<com.safett.butler.Butler: void onCreate(android.os.Bundle)>',14,'s',NULL),(168,157,'<com.safett.butler.sms.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(169,41,'<com.safett.butler.vip.VipConversationList: void viewContact(java.lang.String)>',16,'a',NULL),(170,20,'<com.safett.butler.BlackLists: boolean handleMenuItemSelected(int)>',10,'a',0),(171,21,'<com.safett.butler.WhiteLists: boolean handleMenuItemSelected(int)>',39,'a',0),(172,39,'<com.safett.butler.vip.VipCenter: void reply()>',22,'a',NULL),(173,21,'<com.safett.butler.WhiteLists: void callback()>',28,'a',NULL),(174,158,'<com.safett.butler.vip.VipConversationList$CachingNameStoreImpl: void <init>(com.safett.butler.vip.VipConversationList,android.content.Context)>',17,'p',NULL),(175,41,'<com.safett.butler.vip.VipConversationList: void onResume()>',6,'p',NULL),(176,43,'<com.safett.butler.vip.VipRecentCalls: java.lang.String getBetterNumberFromContacts(java.lang.String)>',23,'p',NULL),(177,154,'<b: void p()>',19,'a',NULL),(178,159,'<com.safett.butler.sms.ConversationList$CachingNameStoreImpl: void <init>(com.safett.butler.sms.ConversationList,android.content.Context)>',17,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,3,1),(3,4,1),(4,6,6),(5,12,1),(6,13,1),(7,16,1),(8,17,1),(9,18,6),(10,19,1),(11,21,1),(12,23,1),(13,24,1),(14,28,6),(15,32,15),(16,35,1),(17,36,1),(18,38,17),(19,39,1),(20,40,1),(21,44,1),(22,45,1),(23,51,15),(24,52,6),(25,53,12),(26,55,12),(27,57,18),(28,58,15),(29,59,18),(30,62,12),(31,64,12),(32,69,23),(33,73,6),(34,75,23),(35,76,21),(36,79,1),(37,80,1),(38,83,12),(39,84,27),(40,87,12),(41,88,12),(42,89,12),(43,90,19),(44,95,15),(45,96,12),(46,97,1),(47,98,1),(48,101,6),(49,105,1),(50,106,1),(51,111,15),(52,114,15),(53,115,15),(54,120,28),(55,121,1),(56,122,15),(57,123,1),(58,124,15),(59,125,15),(60,126,29),(61,127,30),(62,128,30),(63,129,30),(64,130,31),(65,131,31),(66,132,30),(67,133,31),(68,134,30),(69,135,31),(70,136,30),(71,137,31),(72,138,30),(73,139,31),(74,140,30),(75,141,31),(76,142,31),(77,144,31),(78,146,31),(79,147,31),(80,148,31),(81,150,31),(82,151,1),(83,152,31),(84,153,1),(85,154,31),(86,155,31),(87,158,32),(88,159,32),(89,160,33),(90,162,31),(91,163,31),(92,164,31),(93,165,31),(94,166,31),(95,167,31),(96,168,31),(97,169,31),(98,170,31),(99,171,31),(100,172,31),(101,173,31),(102,174,31),(103,175,31),(104,176,31),(105,177,31),(106,178,33),(107,179,33),(108,180,1),(109,181,1),(110,182,29),(111,183,29),(112,185,29),(113,186,15),(114,187,15),(115,188,33),(116,189,8),(117,191,33),(118,192,33),(119,193,33),(120,194,33),(121,195,33),(122,196,33),(123,197,33),(124,198,33),(125,199,33),(126,200,33),(127,201,33),(128,202,33),(129,203,33),(130,204,33),(131,205,33),(132,206,33),(133,208,35),(134,212,33),(135,213,33),(136,217,29),(137,219,15),(138,220,29),(139,221,31),(140,222,31),(141,223,31),(142,224,31),(143,225,31),(144,226,31),(145,227,31),(146,228,31),(147,229,31),(148,230,31),(149,231,31),(150,232,31),(151,233,31),(152,234,31),(153,235,31),(154,236,31),(155,237,15);
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
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,12,1),(4,13,2),(5,16,1),(6,17,2),(7,19,1),(8,21,2),(9,23,1),(10,24,2),(11,35,2),(12,36,1),(13,39,1),(14,40,2),(15,44,1),(16,45,2),(17,57,4),(18,58,4),(19,59,4),(20,79,1),(21,80,2),(22,97,1),(23,98,2),(24,105,1),(25,106,2),(26,121,1),(27,123,2),(28,151,1),(29,153,2),(30,180,1),(31,181,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/allen/mp/Help'),(2,5,'com/google/ssearch/SearchService'),(3,7,'com/google/ssearch/Dialog'),(4,8,'com/google/ssearch/Dialog'),(5,9,'com/google/ssearch/Dialog'),(6,10,'com/google/ssearch/Dialog'),(7,11,'com/google/update/UpdateService'),(8,14,'com/google/update/Dialog'),(9,15,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,22,'com/google/update/Dialog'),(12,25,'com/google/update/UpdateService'),(13,26,'com/google/update/Dialog'),(14,27,'com/google/update/Dialog'),(15,29,'com/google/update/Dialog'),(16,30,'com/google/update/Dialog'),(17,31,'com/waps/OffersWebView'),(18,33,'com/waps/OffersWebView'),(19,34,'com/waps/OffersWebView'),(20,37,'(.*)'),(21,41,'com/google/update/Dialog'),(22,42,'com/google/update/Dialog'),(23,46,'com/google/update/Dialog'),(24,47,'com/google/update/Dialog'),(25,48,'com/livegame/wallpapershuimohua/SettingsActivity'),(26,49,'com/google/update/UpdateService'),(27,50,'NULL-CONSTANT'),(28,54,'com/mogo/media/MusicActivity'),(29,56,'com/mogo/media/MusicActivity'),(30,60,'com/google/update/UpdateService'),(31,61,'com/mogo/media/MainActivity'),(32,63,'com/mogo/media/MainActivity'),(33,65,'com/mogo/media/MusicActivity'),(34,66,'com/mogo/media/ArtistActivity'),(35,67,'com/waps/OffersWebView'),(36,68,'com/mogo/media/AlbumActivity'),(37,70,'com/mogo/media/MainActivity'),(38,72,'com/mogo/media/TestMain'),(39,74,'com/mogo/media/TestMain'),(40,78,'com/mogo/media/RecentlyActivity'),(41,82,'com/mogo/media/ClicksActivity'),(42,85,'com/google/update/Dialog'),(43,86,'com/google/update/Dialog'),(44,91,'com/google/update/Dialog'),(45,92,'com/google/update/Dialog'),(46,93,'com/mogo/media/MusicActivity'),(47,94,'com/mogo/media/MusicActivity'),(48,99,'com/livegame/puke/ui/Yaniv'),(49,100,'com/google/update/UpdateService'),(50,102,'NULL-CONSTANT'),(51,103,'com/waps/OffersWebView'),(52,107,'com/waps/OffersWebView'),(53,108,'com/waps/OffersWebView'),(54,109,'com/google/update/Dialog'),(55,110,'com/google/update/Dialog'),(56,112,'com/scoreloop/android/coreui/UserActivity'),(57,113,'com/scoreloop/android/coreui/UserActivity'),(58,116,'com/scoreloop/android/coreui/GameActivity'),(59,117,'(.*)'),(60,118,'com/scoreloop/android/coreui/GameActivity'),(61,119,'com/livegame/puke/ui/YanivPreferencesScreen'),(62,122,'com.android.mms.ui.ComposeMessageActivity'),(63,124,'com.android.mms.ui.ComposeMessageActivity'),(64,143,'com/google/update/Dialog'),(65,145,'com/google/update/Dialog'),(66,149,'com/livegame/puke/ui/YanivPreferencesScreen'),(67,156,'com/safett/butler/FilterRecords'),(68,157,'com/safett/butler/Rules'),(69,161,'com/safett/butler/vip/CallDetailActivity'),(70,184,'com/safett/butler/BlackLists'),(71,187,'com.android.mms.ui.ComposeMessageActivity'),(72,190,'com/safett/butler/service/MonitorService'),(73,207,'com/safett/butler/EditItem'),(74,209,'com/safett/butler/EditItem'),(75,210,'com/safett/butler/UpdateService'),(76,211,'com/safett/butler/HelpActivity'),(77,214,'com/safett/butler/Preferences'),(78,215,'com/safett/butler/EditItem'),(79,216,'com/safett/butler/WhiteLists'),(80,218,'com/safett/butler/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,32,1),(2,51,2),(3,57,4),(4,58,5),(5,59,6),(6,84,14),(7,95,17),(8,111,19),(9,114,20),(10,115,21),(11,125,22),(12,126,23),(13,131,24),(14,135,25),(15,137,26),(16,139,27),(17,141,28),(18,142,29),(19,144,30),(20,146,31),(21,147,32),(22,148,33),(23,150,34),(24,152,35),(25,154,36),(26,155,37),(27,160,41),(28,161,42),(29,163,43),(30,165,44),(31,166,45),(32,167,46),(33,168,47),(34,169,48),(35,170,49),(36,171,50),(37,172,51),(38,173,52),(39,174,53),(40,175,54),(41,176,55),(42,177,56),(43,178,58),(44,179,59),(45,182,61),(46,183,62),(47,185,64),(48,186,65),(49,188,66),(50,191,67),(51,192,68),(52,193,69),(53,194,70),(54,195,71),(55,196,72),(56,197,73),(57,198,74),(58,200,75),(59,201,76),(60,202,77),(61,204,78),(62,205,79),(63,206,80),(64,212,83),(65,213,84),(66,217,87),(67,219,92),(68,220,93),(69,222,94),(70,224,95),(71,225,96),(72,226,97),(73,227,98),(74,228,99),(75,229,100),(76,230,101),(77,231,102),(78,232,103),(79,233,104),(80,234,105),(81,235,106),(82,236,107),(83,237,111);
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
INSERT INTO `IExtras` VALUES (1,2,'appid'),(2,7,'MSG'),(3,7,'TYPEdsada'),(4,8,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,10,'TYPEdsada'),(8,14,'TYPEdsada'),(9,15,'MSG'),(10,15,'TYPEdsada'),(11,20,'TYPEdsada'),(12,22,'MSG'),(13,22,'TYPEdsada'),(14,26,'TYPEdsada'),(15,27,'MSG'),(16,27,'TYPEdsada'),(17,29,'TYPEdsada'),(18,30,'MSG'),(19,30,'TYPEdsada'),(20,31,'USER_ID'),(21,31,'CLIENT_PACKAGE'),(22,31,'Offers_URL'),(23,31,'offers_webview_tag'),(24,31,'URL_PARAMS'),(25,33,'Notify_Url_Params'),(26,33,'UrlPath'),(27,33,'ACTIVITY_FLAG'),(28,33,'isFinshClose'),(29,33,'offers_webview_tag'),(30,34,'UrlPath'),(31,34,'ACTIVITY_FLAG'),(32,34,'isFinshClose'),(33,34,'offers_webview_tag'),(34,38,'android.live_wallpaper.package'),(35,38,'android.live_wallpaper.settings'),(36,41,'TYPEdsada'),(37,42,'MSG'),(38,42,'TYPEdsada'),(39,46,'TYPEdsada'),(40,47,'MSG'),(41,47,'TYPEdsada'),(42,53,'position'),(43,53,'_ids'),(44,54,'position'),(45,54,'_ids'),(46,54,'_titles'),(47,55,'op'),(48,56,'position'),(49,56,'_ids'),(50,56,'_titles'),(51,62,'progress'),(52,62,'op'),(53,64,'op'),(54,65,'position'),(55,65,'_ids'),(56,65,'_titles'),(57,66,'artist'),(58,67,'USER_ID'),(59,67,'CLIENT_PACKAGE'),(60,67,'Offers_URL'),(61,67,'URL_PARAMS'),(62,68,'albums'),(63,69,'position'),(64,75,'position'),(65,76,'position'),(66,83,'op'),(67,85,'TYPEdsada'),(68,86,'MSG'),(69,86,'TYPEdsada'),(70,87,'op'),(71,88,'op'),(72,89,'list'),(73,90,'duration'),(74,91,'TYPEdsada'),(75,92,'MSG'),(76,92,'TYPEdsada'),(77,93,'position'),(78,93,'_ids'),(79,93,'_titles'),(80,94,'position'),(81,94,'_ids'),(82,94,'_titles'),(83,96,'length'),(84,99,'state'),(85,103,'USER_ID'),(86,103,'CLIENT_PACKAGE'),(87,103,'Offers_URL'),(88,103,'offers_webview_tag'),(89,103,'URL_PARAMS'),(90,107,'UrlPath'),(91,107,'ACTIVITY_FLAG'),(92,107,'isFinshClose'),(93,107,'offers_webview_tag'),(94,108,'Notify_Url_Params'),(95,108,'UrlPath'),(96,108,'ACTIVITY_FLAG'),(97,108,'isFinshClose'),(98,108,'offers_webview_tag'),(99,109,'TYPEdsada'),(100,110,'MSG'),(101,110,'TYPEdsada'),(102,122,'address'),(103,122,'thread_id'),(104,124,'thread_id'),(105,127,'android.intent.extra.INTENT'),(106,128,'android.intent.extra.INTENT'),(107,129,'android.intent.extra.TITLE'),(108,129,'android.intent.extra.INTENT'),(109,132,'android.intent.extra.INTENT'),(110,134,'android.intent.extra.TITLE'),(111,134,'android.intent.extra.INTENT'),(112,136,'android.intent.extra.INTENT'),(113,138,'android.intent.extra.TITLE'),(114,138,'android.intent.extra.INTENT'),(115,140,'android.intent.extra.TITLE'),(116,140,'android.intent.extra.INTENT'),(117,143,'TYPEdsada'),(118,145,'MSG'),(119,145,'TYPEdsada'),(120,158,'phone'),(121,159,'email'),(122,182,'sms_body'),(123,207,'name'),(124,207,'areacode'),(125,207,'number'),(126,207,'whitelist'),(127,207,'mode'),(128,208,'android.media.EXTRA_RINGER_MODE'),(129,209,'viplist'),(130,209,'name'),(131,209,'areacode'),(132,209,'number'),(133,209,'mode'),(134,215,'name'),(135,215,'areacode'),(136,215,'number'),(137,215,'whitelist'),(138,215,'mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,1),(15,9,7),(16,10,3),(17,10,4),(18,10,2),(19,11,8),(20,12,1),(21,13,11),(22,13,10),(23,13,9),(24,14,2),(25,14,4),(26,14,3),(27,15,9),(28,15,10),(29,15,11),(30,16,3),(31,17,12),(32,18,2),(33,18,3),(34,18,4),(35,19,1),(36,20,2),(37,20,4),(38,20,3),(39,21,13),(40,21,14),(41,22,16),(42,23,22),(43,23,19),(44,23,20),(45,23,21),(46,24,21),(47,24,22),(48,24,19),(49,24,20),(50,25,19),(51,25,20),(52,25,21),(53,25,22),(54,26,19),(55,26,20),(56,26,21),(57,26,22),(58,27,22),(59,27,21),(60,27,20),(61,27,19),(62,28,20),(63,28,19),(64,28,22),(65,28,21),(66,29,22),(67,29,21),(68,29,20),(69,29,19),(70,30,23),(71,31,23),(72,32,23),(73,33,23),(74,34,23),(75,35,23),(76,36,23),(77,37,24),(78,38,24),(79,39,24),(80,40,24),(81,41,24),(82,42,24),(83,43,24),(84,44,16),(85,45,26),(86,45,25),(87,46,16),(88,47,34),(89,48,13),(90,48,14),(91,49,36),(92,50,36),(93,51,36),(94,52,36),(95,53,36),(96,54,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,8,1),(6,11,3),(7,12,1),(8,16,3),(9,19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'file',NULL,NULL,NULL,NULL,NULL),(2,15,'file',NULL,NULL,NULL,NULL,NULL),(3,22,'package',NULL,NULL,NULL,NULL,NULL),(4,44,'package',NULL,NULL,NULL,NULL,NULL),(5,45,'file',NULL,NULL,NULL,NULL,NULL),(6,46,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,32,'application','vnd.android.package-archive'),(2,51,'application','vnd.android.package-archive'),(3,59,'(.*)','(.*)'),(4,95,'application','vnd.android.package-archive'),(5,114,'application','vnd.android.package-archive'),(6,115,'application','vnd.android.package-archive'),(7,158,'vnd.android.cursor.item','person'),(8,159,'vnd.android.cursor.item','person');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.mp'),(2,3,'com.allen.mp'),(3,4,'com.allen.mp'),(4,5,'com.allen.mp'),(5,7,'com.allen.mp'),(6,8,'com.allen.mp'),(7,9,'com.allen.mp'),(8,10,'com.allen.mp'),(9,11,'com.ps.llk'),(10,12,'com.noshufou.android.su'),(11,13,'com.noshufou.android.su'),(12,14,'com.ps.llk'),(13,15,'com.ps.llk'),(14,16,'com.ps.llk'),(15,17,'com.ps.llk'),(16,19,'com.cosina.game.activity'),(17,21,'com.cosina.game.activity'),(18,20,'com.ps.llk'),(19,22,'com.ps.llk'),(20,23,'com.noshufou.android.su'),(21,24,'com.noshufou.android.su'),(22,25,'com.cosina.game.activity'),(23,26,'com.cosina.game.activity'),(24,27,'com.cosina.game.activity'),(25,29,'com.cosina.game.activity'),(26,30,'com.cosina.game.activity'),(27,31,'com.livegame.wallpapershuimohua'),(28,33,'com.livegame.wallpapershuimohua'),(29,34,'com.livegame.wallpapershuimohua'),(30,35,'com.livegame.wallpapershuimohua'),(31,36,'com.livegame.wallpapershuimohua'),(32,37,'(.*)'),(33,39,'com.noshufou.android.su'),(34,40,'com.noshufou.android.su'),(35,41,'com.livegame.wallpapershuimohua'),(36,42,'com.livegame.wallpapershuimohua'),(37,44,'(.*)'),(38,45,'(.*)'),(39,46,'com.livegame.wallpapershuimohua'),(40,47,'com.livegame.wallpapershuimohua'),(41,48,'com.livegame.wallpapershuimohua'),(42,49,'com.livegame.wallpapershuimohua'),(43,50,'NULL-CONSTANT'),(44,54,'com.mogo.media'),(45,56,'com.mogo.media'),(46,60,'com.mogo.media'),(47,61,'com.mogo.media'),(48,63,'com.mogo.media'),(49,65,'com.mogo.media'),(50,66,'com.mogo.media'),(51,67,'com.mogo.media'),(52,68,'com.mogo.media'),(53,70,'com.mogo.media'),(54,72,'com.mogo.media'),(55,74,'com.mogo.media'),(56,78,'com.mogo.media'),(57,79,'com.noshufou.android.su'),(58,80,'com.noshufou.android.su'),(59,82,'com.mogo.media'),(60,85,'com.mogo.media'),(61,86,'com.mogo.media'),(62,91,'com.mogo.media'),(63,92,'com.mogo.media'),(64,93,'com.mogo.media'),(65,94,'com.mogo.media'),(66,97,'com.mogo.media'),(67,98,'com.mogo.media'),(68,99,'com.livegame.puke'),(69,100,'com.livegame.puke'),(70,102,'NULL-CONSTANT'),(71,103,'com.livegame.puke'),(72,105,'(.*)'),(73,106,'(.*)'),(74,107,'com.livegame.puke'),(75,108,'com.livegame.puke'),(76,109,'com.livegame.puke'),(77,110,'com.livegame.puke'),(78,112,'com.livegame.puke'),(79,113,'com.livegame.puke'),(80,116,'com.livegame.puke'),(81,117,'(.*)'),(82,118,'com.livegame.puke'),(83,119,'com.livegame.puke'),(84,121,'com.noshufou.android.su'),(85,123,'com.noshufou.android.su'),(86,122,'com.android.mms'),(87,124,'com.android.mms'),(88,143,'com.livegame.puke'),(89,145,'com.livegame.puke'),(90,149,'com.livegame.puke'),(91,151,'com.livegame.puke'),(92,153,'com.livegame.puke'),(93,156,'com.safett.butler'),(94,157,'com.safett.butler'),(95,161,'com.safett.butler'),(96,180,'com.noshufou.android.su'),(97,181,'com.noshufou.android.su'),(98,184,'com.safett.butler'),(99,187,'com.android.mms'),(100,190,'com.safett.butler'),(101,207,'com.safett.butler'),(102,209,'com.safett.butler'),(103,210,'com.safett.butler'),(104,211,'com.safett.butler'),(105,214,'com.safett.butler'),(106,215,'com.safett.butler'),(107,216,'com.safett.butler'),(108,218,'com.safett.butler');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,7,0),(4,10,0),(5,11,0),(6,15,0),(7,16,0),(8,20,0),(9,40,0),(10,45,0),(11,49,0),(12,52,0),(13,53,0),(14,54,0),(15,5,0),(16,56,0),(17,71,0),(18,73,0),(19,74,0),(20,93,0),(21,94,0),(22,95,0),(23,96,0),(24,97,0),(25,73,0),(26,98,0),(27,99,0),(28,100,0),(29,101,0),(30,96,0),(31,97,0),(32,73,0),(33,98,0),(34,99,0),(35,100,0),(36,101,0),(37,96,0),(38,97,0),(39,73,0),(40,98,0),(41,99,0),(42,100,0),(43,101,0),(44,99,0),(45,100,0),(46,102,0),(47,103,0),(48,104,0),(49,103,0),(50,54,0),(51,105,0),(52,104,0),(53,56,0),(54,106,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,6,0,0),(9,7,0,0),(10,7,0,0),(11,8,0,0),(12,9,1,0),(13,9,1,0),(14,10,0,0),(15,10,0,0),(16,11,1,0),(17,11,1,0),(18,12,1,0),(19,13,1,0),(20,14,0,0),(21,13,1,0),(22,14,0,0),(23,15,1,0),(24,15,1,0),(25,16,0,0),(26,17,0,0),(27,17,0,0),(28,18,1,0),(29,19,0,0),(30,19,0,0),(31,20,0,0),(32,21,1,0),(33,22,0,0),(34,22,0,0),(35,23,1,0),(36,23,1,0),(37,24,0,0),(38,25,1,0),(39,26,1,0),(40,26,1,0),(41,27,0,0),(42,27,0,0),(43,28,1,0),(44,28,1,0),(45,28,1,0),(46,29,0,0),(47,29,0,0),(48,30,0,0),(49,31,0,0),(50,32,0,0),(51,33,1,0),(52,34,1,0),(53,35,1,0),(54,36,0,0),(55,38,1,0),(56,39,0,0),(57,40,1,0),(58,40,1,0),(59,40,1,0),(60,41,0,0),(61,43,0,0),(62,45,1,0),(63,46,0,0),(64,49,1,0),(65,51,0,0),(66,52,0,0),(67,53,0,0),(68,54,0,0),(69,55,1,0),(70,56,0,0),(71,57,1,0),(72,57,0,0),(73,58,1,0),(74,59,0,0),(75,60,1,0),(76,61,1,0),(77,62,1,0),(78,62,0,0),(79,63,1,0),(80,63,1,0),(81,64,1,0),(82,64,0,0),(83,65,1,0),(84,68,1,0),(85,69,0,0),(86,69,0,0),(87,70,1,0),(88,71,1,0),(89,72,1,0),(90,73,1,0),(91,74,0,0),(92,74,0,0),(93,75,0,0),(94,77,0,0),(95,79,1,0),(96,80,1,0),(97,81,1,0),(98,81,1,0),(99,82,0,0),(100,84,0,0),(101,85,1,0),(102,87,0,0),(103,88,0,0),(104,89,1,0),(105,89,1,0),(106,89,1,0),(107,91,0,0),(108,91,0,0),(109,92,0,0),(110,92,0,0),(111,93,1,0),(112,94,0,0),(113,96,0,0),(114,97,1,0),(115,98,1,0),(116,100,0,0),(117,101,0,0),(118,102,0,0),(119,103,0,0),(120,104,1,0),(121,105,1,0),(122,106,0,0),(123,105,1,0),(124,106,0,0),(125,107,1,0),(126,108,1,0),(127,109,1,0),(128,109,1,0),(129,109,1,0),(130,110,1,0),(131,110,1,0),(132,109,1,0),(133,110,1,0),(134,109,1,0),(135,110,1,0),(136,109,1,0),(137,110,1,0),(138,109,1,0),(139,110,1,0),(140,109,1,0),(141,110,1,0),(142,110,1,0),(143,112,0,0),(144,110,1,0),(145,112,0,0),(146,110,1,0),(147,110,1,0),(148,110,1,0),(149,114,0,0),(150,110,1,0),(151,115,1,0),(152,110,1,0),(153,115,1,0),(154,110,1,0),(155,110,1,0),(156,116,0,0),(157,120,0,0),(158,121,1,0),(159,121,1,0),(160,125,1,0),(161,127,0,0),(162,128,1,0),(163,128,1,0),(164,128,1,0),(165,128,1,0),(166,128,1,0),(167,128,1,0),(168,128,1,0),(169,128,1,0),(170,128,1,0),(171,128,1,0),(172,128,1,0),(173,128,1,0),(174,128,1,0),(175,128,1,0),(176,128,1,0),(177,128,1,0),(178,131,1,0),(179,131,1,0),(180,134,1,0),(181,134,1,0),(182,136,1,0),(183,137,1,0),(184,139,0,0),(185,140,1,0),(186,141,1,0),(187,142,0,0),(188,143,1,0),(189,144,1,0),(190,145,0,0),(191,146,1,0),(192,146,1,0),(193,146,1,0),(194,146,1,0),(195,146,1,0),(196,146,1,0),(197,146,1,0),(198,146,1,0),(199,146,1,0),(200,146,1,0),(201,146,1,0),(202,146,1,0),(203,146,1,0),(204,146,1,0),(205,146,1,0),(206,146,1,0),(207,147,0,0),(208,149,1,0),(209,150,0,0),(210,152,0,0),(211,154,0,0),(212,158,1,0),(213,158,1,0),(214,163,0,0),(215,164,0,0),(216,165,0,0),(217,166,1,0),(218,167,0,0),(219,169,1,0),(220,172,1,0),(221,173,1,0),(222,173,1,0),(223,173,1,0),(224,173,1,0),(225,173,1,0),(226,173,1,0),(227,173,1,0),(228,173,1,0),(229,173,1,0),(230,173,1,0),(231,173,1,0),(232,173,1,0),(233,173,1,0),(234,173,1,0),(235,173,1,0),(236,173,1,0),(237,177,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1772 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,99,75,2,NULL),(2,195,74,2,NULL),(3,197,74,2,NULL),(4,198,74,2,NULL),(5,199,74,2,NULL),(6,202,74,2,NULL),(7,203,74,2,NULL),(8,204,74,2,NULL),(9,205,74,2,NULL),(10,162,74,2,NULL),(11,164,74,2,NULL),(12,170,74,2,NULL),(13,171,74,2,NULL),(14,172,74,2,NULL),(15,173,74,2,NULL),(16,175,74,2,NULL),(17,176,74,2,NULL),(18,221,74,2,NULL),(19,223,74,2,NULL),(20,229,74,2,NULL),(21,230,74,2,NULL),(22,231,74,2,NULL),(23,232,74,2,NULL),(24,234,74,2,NULL),(25,235,74,2,NULL),(26,130,74,2,NULL),(27,133,74,2,NULL),(28,144,74,2,NULL),(29,146,74,2,NULL),(30,147,74,2,NULL),(31,148,74,2,NULL),(32,152,74,2,NULL),(33,154,74,2,NULL),(34,120,74,2,NULL),(35,208,74,2,NULL),(36,189,74,2,NULL),(37,43,74,2,NULL),(38,44,74,2,NULL),(39,45,74,2,NULL),(40,53,74,2,NULL),(41,55,74,2,NULL),(42,62,74,2,NULL),(43,64,74,2,NULL),(44,83,74,2,NULL),(45,87,74,2,NULL),(46,88,74,2,NULL),(47,96,74,2,NULL),(48,89,74,2,NULL),(49,57,74,2,NULL),(50,58,74,2,NULL),(51,69,74,2,NULL),(52,75,74,2,NULL),(53,76,74,2,NULL),(54,90,74,2,NULL),(55,104,74,2,NULL),(56,105,74,2,NULL),(57,106,74,2,NULL),(58,119,76,2,NULL),(59,104,1,2,NULL),(60,105,1,2,NULL),(61,106,1,2,NULL),(62,104,5,2,NULL),(63,105,5,2,NULL),(64,106,5,2,NULL),(65,104,7,2,NULL),(66,105,7,2,NULL),(67,106,7,2,NULL),(68,104,10,2,NULL),(69,105,10,2,NULL),(70,106,10,2,NULL),(71,104,94,2,NULL),(72,105,94,2,NULL),(73,106,94,2,NULL),(74,104,11,2,NULL),(75,105,11,2,NULL),(76,106,11,2,NULL),(77,104,15,2,NULL),(78,105,15,2,NULL),(79,106,15,2,NULL),(80,104,16,2,NULL),(81,105,16,2,NULL),(82,106,16,2,NULL),(83,104,49,2,NULL),(84,105,49,2,NULL),(85,106,49,2,NULL),(86,104,54,2,NULL),(87,105,54,2,NULL),(88,106,54,2,NULL),(89,104,56,2,NULL),(90,105,56,2,NULL),(91,106,56,2,NULL),(92,104,106,2,NULL),(93,105,106,2,NULL),(94,106,106,2,NULL),(95,104,103,2,NULL),(96,105,103,2,NULL),(97,195,11,2,NULL),(98,106,103,2,NULL),(99,197,11,2,NULL),(100,104,104,2,NULL),(101,198,11,2,NULL),(102,105,104,2,NULL),(103,199,11,2,NULL),(104,106,104,2,NULL),(105,202,11,2,NULL),(106,104,105,2,NULL),(107,203,11,2,NULL),(108,105,105,2,NULL),(109,204,11,2,NULL),(110,106,105,2,NULL),(111,205,11,2,NULL),(112,104,20,2,NULL),(113,162,11,2,NULL),(114,105,20,2,NULL),(115,164,11,2,NULL),(116,106,20,2,NULL),(117,170,11,2,NULL),(118,104,40,2,NULL),(119,171,11,2,NULL),(120,105,40,2,NULL),(121,172,11,2,NULL),(122,106,40,2,NULL),(123,173,11,2,NULL),(124,104,45,2,NULL),(125,175,11,2,NULL),(126,105,45,2,NULL),(127,176,11,2,NULL),(128,106,45,2,NULL),(129,221,11,2,NULL),(130,104,52,2,NULL),(131,223,11,2,NULL),(132,105,52,2,NULL),(133,229,11,2,NULL),(134,106,52,2,NULL),(135,230,11,2,NULL),(136,104,71,2,NULL),(137,231,11,2,NULL),(138,105,71,2,NULL),(139,232,11,2,NULL),(140,106,71,2,NULL),(141,234,11,2,NULL),(142,104,73,2,NULL),(143,235,11,2,NULL),(144,105,73,2,NULL),(145,130,11,2,NULL),(146,106,73,2,NULL),(147,133,11,2,NULL),(148,104,96,2,NULL),(149,144,11,2,NULL),(150,105,96,2,NULL),(151,146,11,2,NULL),(152,106,96,2,NULL),(153,147,11,2,NULL),(154,104,97,2,NULL),(155,148,11,2,NULL),(156,105,97,2,NULL),(157,152,11,2,NULL),(158,106,97,2,NULL),(159,154,11,2,NULL),(160,104,98,2,NULL),(161,120,11,2,NULL),(162,105,98,2,NULL),(163,208,11,2,NULL),(164,106,98,2,NULL),(165,189,11,2,NULL),(166,104,99,2,NULL),(167,43,11,2,NULL),(168,105,99,2,NULL),(169,44,11,2,NULL),(170,106,99,2,NULL),(171,45,11,2,NULL),(172,104,100,2,NULL),(173,53,11,2,NULL),(174,105,100,2,NULL),(175,55,11,2,NULL),(176,106,100,2,NULL),(177,62,11,2,NULL),(178,104,101,2,NULL),(179,64,11,2,NULL),(180,105,101,2,NULL),(181,83,11,2,NULL),(182,106,101,2,NULL),(183,87,11,2,NULL),(184,104,93,2,NULL),(185,88,11,2,NULL),(186,105,93,2,NULL),(187,96,11,2,NULL),(188,106,93,2,NULL),(189,89,11,2,NULL),(190,109,8,2,NULL),(191,57,11,2,NULL),(192,109,13,2,NULL),(193,58,11,2,NULL),(194,109,37,2,NULL),(195,69,11,2,NULL),(196,109,70,2,NULL),(197,75,11,2,NULL),(198,109,91,2,NULL),(199,76,11,2,NULL),(200,110,8,2,NULL),(201,90,11,2,NULL),(202,110,13,2,NULL),(203,14,8,2,NULL),(204,110,37,2,NULL),(205,14,13,2,NULL),(206,110,70,2,NULL),(207,14,37,2,NULL),(208,110,91,2,NULL),(209,14,70,2,NULL),(210,143,8,2,NULL),(211,14,91,2,NULL),(212,143,13,2,NULL),(213,15,8,2,NULL),(214,143,37,2,NULL),(215,15,13,2,NULL),(216,143,70,2,NULL),(217,15,37,2,NULL),(218,143,91,2,NULL),(219,15,70,2,NULL),(220,145,8,2,NULL),(221,15,91,2,NULL),(222,145,13,2,NULL),(223,20,8,2,NULL),(224,145,37,2,NULL),(225,20,13,2,NULL),(226,145,70,2,NULL),(227,20,37,2,NULL),(228,145,91,2,NULL),(229,20,70,2,NULL),(230,100,9,2,NULL),(231,20,91,2,NULL),(232,100,14,2,NULL),(233,22,8,2,NULL),(234,100,43,2,NULL),(235,22,13,2,NULL),(236,100,72,2,NULL),(237,22,37,2,NULL),(238,100,92,2,NULL),(239,22,70,2,NULL),(240,195,93,2,NULL),(241,22,91,2,NULL),(242,197,93,2,NULL),(243,11,9,2,NULL),(244,198,93,2,NULL),(245,11,14,2,NULL),(246,199,93,2,NULL),(247,11,43,2,NULL),(248,202,93,2,NULL),(249,11,72,2,NULL),(250,203,93,2,NULL),(251,11,92,2,NULL),(252,204,93,2,NULL),(253,195,15,2,NULL),(254,205,93,2,NULL),(255,197,15,2,NULL),(256,162,93,2,NULL),(257,198,15,2,NULL),(258,164,93,2,NULL),(259,199,15,2,NULL),(260,170,93,2,NULL),(261,202,15,2,NULL),(262,171,93,2,NULL),(263,203,15,2,NULL),(264,172,93,2,NULL),(265,204,15,2,NULL),(266,173,93,2,NULL),(267,205,15,2,NULL),(268,175,93,2,NULL),(269,162,15,2,NULL),(270,176,93,2,NULL),(271,164,15,2,NULL),(272,221,93,2,NULL),(273,170,15,2,NULL),(274,223,93,2,NULL),(275,171,15,2,NULL),(276,229,93,2,NULL),(277,172,15,2,NULL),(278,230,93,2,NULL),(279,173,15,2,NULL),(280,231,93,2,NULL),(281,175,15,2,NULL),(282,232,93,2,NULL),(283,176,15,2,NULL),(284,234,93,2,NULL),(285,221,15,2,NULL),(286,235,93,2,NULL),(287,223,15,2,NULL),(288,130,93,2,NULL),(289,229,15,2,NULL),(290,133,93,2,NULL),(291,230,15,2,NULL),(292,144,93,2,NULL),(293,231,15,2,NULL),(294,146,93,2,NULL),(295,232,15,2,NULL),(296,147,93,2,NULL),(297,234,15,2,NULL),(298,148,93,2,NULL),(299,235,15,2,NULL),(300,152,93,2,NULL),(301,130,15,2,NULL),(302,154,93,2,NULL),(303,133,15,2,NULL),(304,120,93,2,NULL),(305,144,15,2,NULL),(306,208,93,2,NULL),(307,146,15,2,NULL),(308,189,93,2,NULL),(309,147,15,2,NULL),(310,43,93,2,NULL),(311,148,15,2,NULL),(312,44,93,2,NULL),(313,152,15,2,NULL),(314,45,93,2,NULL),(315,154,15,2,NULL),(316,53,93,2,NULL),(317,120,15,2,NULL),(318,55,93,2,NULL),(319,208,15,2,NULL),(320,62,93,2,NULL),(321,189,15,2,NULL),(322,64,93,2,NULL),(323,43,15,2,NULL),(324,83,93,2,NULL),(325,44,15,2,NULL),(326,87,93,2,NULL),(327,45,15,2,NULL),(328,88,93,2,NULL),(329,53,15,2,NULL),(330,96,93,2,NULL),(331,55,15,2,NULL),(332,89,93,2,NULL),(333,62,15,2,NULL),(334,57,93,2,NULL),(335,64,15,2,NULL),(336,58,93,2,NULL),(337,83,15,2,NULL),(338,69,93,2,NULL),(339,87,15,2,NULL),(340,75,93,2,NULL),(341,88,15,2,NULL),(342,76,93,2,NULL),(343,96,15,2,NULL),(344,90,93,2,NULL),(345,89,15,2,NULL),(346,57,15,2,NULL),(347,58,15,2,NULL),(348,69,15,2,NULL),(349,75,15,2,NULL),(350,76,15,2,NULL),(351,90,15,2,NULL),(352,195,20,2,NULL),(353,197,20,2,NULL),(354,198,20,2,NULL),(355,199,20,2,NULL),(356,202,20,2,NULL),(357,203,20,2,NULL),(358,204,20,2,NULL),(359,205,20,2,NULL),(360,162,20,2,NULL),(361,164,20,2,NULL),(362,170,20,2,NULL),(363,171,20,2,NULL),(364,172,20,2,NULL),(365,173,20,2,NULL),(366,175,20,2,NULL),(367,176,20,2,NULL),(368,221,20,2,NULL),(369,223,20,2,NULL),(370,229,20,2,NULL),(371,230,20,2,NULL),(372,231,20,2,NULL),(373,232,20,2,NULL),(374,234,20,2,NULL),(375,235,20,2,NULL),(376,130,20,2,NULL),(377,133,20,2,NULL),(378,144,20,2,NULL),(379,146,20,2,NULL),(380,147,20,2,NULL),(381,148,20,2,NULL),(382,152,20,2,NULL),(383,154,20,2,NULL),(384,120,20,2,NULL),(385,208,20,2,NULL),(386,189,20,2,NULL),(387,43,20,2,NULL),(388,44,20,2,NULL),(389,45,20,2,NULL),(390,53,20,2,NULL),(391,55,20,2,NULL),(392,62,20,2,NULL),(393,64,20,2,NULL),(394,83,20,2,NULL),(395,87,20,2,NULL),(396,88,20,2,NULL),(397,96,20,2,NULL),(398,89,20,2,NULL),(399,57,20,2,NULL),(400,58,20,2,NULL),(401,69,20,2,NULL),(402,75,20,2,NULL),(403,76,20,2,NULL),(404,90,20,2,NULL),(405,43,1,2,NULL),(406,44,1,2,NULL),(407,45,1,2,NULL),(408,43,5,2,NULL),(409,44,5,2,NULL),(410,45,5,2,NULL),(411,43,7,2,NULL),(412,44,7,2,NULL),(413,45,7,2,NULL),(414,43,10,2,NULL),(415,44,10,2,NULL),(416,45,10,2,NULL),(417,43,94,2,NULL),(418,44,94,2,NULL),(419,45,94,2,NULL),(420,43,16,2,NULL),(421,44,16,2,NULL),(422,45,16,2,NULL),(423,43,49,2,NULL),(424,44,49,2,NULL),(425,45,49,2,NULL),(426,43,54,2,NULL),(427,44,54,2,NULL),(428,45,54,2,NULL),(429,43,56,2,NULL),(430,44,56,2,NULL),(431,45,56,2,NULL),(432,43,106,2,NULL),(433,44,106,2,NULL),(434,45,106,2,NULL),(435,43,103,2,NULL),(436,44,103,2,NULL),(437,45,103,2,NULL),(438,43,104,2,NULL),(439,44,104,2,NULL),(440,45,104,2,NULL),(441,43,105,2,NULL),(442,44,105,2,NULL),(443,45,105,2,NULL),(444,43,40,2,NULL),(445,44,40,2,NULL),(446,45,40,2,NULL),(447,43,45,2,NULL),(448,44,45,2,NULL),(449,45,45,2,NULL),(450,43,52,2,NULL),(451,44,52,2,NULL),(452,45,52,2,NULL),(453,43,71,2,NULL),(454,44,71,2,NULL),(455,45,71,2,NULL),(456,43,73,2,NULL),(457,44,73,2,NULL),(458,45,73,2,NULL),(459,43,96,2,NULL),(460,44,96,2,NULL),(461,45,96,2,NULL),(462,43,97,2,NULL),(463,44,97,2,NULL),(464,45,97,2,NULL),(465,43,98,2,NULL),(466,44,98,2,NULL),(467,45,98,2,NULL),(468,43,99,2,NULL),(469,44,99,2,NULL),(470,45,99,2,NULL),(471,43,100,2,NULL),(472,44,100,2,NULL),(473,45,100,2,NULL),(474,43,101,2,NULL),(475,44,101,2,NULL),(476,45,101,2,NULL),(477,195,40,2,NULL),(478,197,40,2,NULL),(479,198,40,2,NULL),(480,199,40,2,NULL),(481,202,40,2,NULL),(482,203,40,2,NULL),(483,204,40,2,NULL),(484,205,40,2,NULL),(485,162,40,2,NULL),(486,164,40,2,NULL),(487,170,40,2,NULL),(488,171,40,2,NULL),(489,172,40,2,NULL),(490,173,40,2,NULL),(491,175,40,2,NULL),(492,176,40,2,NULL),(493,221,40,2,NULL),(494,223,40,2,NULL),(495,229,40,2,NULL),(496,230,40,2,NULL),(497,231,40,2,NULL),(498,232,40,2,NULL),(499,234,40,2,NULL),(500,235,40,2,NULL),(501,130,40,2,NULL),(502,133,40,2,NULL),(503,144,40,2,NULL),(504,146,40,2,NULL),(505,147,40,2,NULL),(506,148,40,2,NULL),(507,152,40,2,NULL),(508,154,40,2,NULL),(509,120,40,2,NULL),(510,208,40,2,NULL),(511,189,40,2,NULL),(512,53,40,2,NULL),(513,55,40,2,NULL),(514,62,40,2,NULL),(515,64,40,2,NULL),(516,83,40,2,NULL),(517,87,40,2,NULL),(518,88,40,2,NULL),(519,96,40,2,NULL),(520,89,40,2,NULL),(521,57,40,2,NULL),(522,58,40,2,NULL),(523,69,40,2,NULL),(524,75,40,2,NULL),(525,76,40,2,NULL),(526,90,40,2,NULL),(527,41,8,2,NULL),(528,41,13,2,NULL),(529,41,37,2,NULL),(530,41,70,2,NULL),(531,41,91,2,NULL),(532,42,8,2,NULL),(533,42,13,2,NULL),(534,42,37,2,NULL),(535,42,70,2,NULL),(536,42,91,2,NULL),(537,46,8,2,NULL),(538,46,13,2,NULL),(539,46,37,2,NULL),(540,46,70,2,NULL),(541,46,91,2,NULL),(542,47,8,2,NULL),(543,47,13,2,NULL),(544,47,37,2,NULL),(545,47,70,2,NULL),(546,47,91,2,NULL),(547,49,9,2,NULL),(548,49,14,2,NULL),(549,49,43,2,NULL),(550,49,72,2,NULL),(551,49,92,2,NULL),(552,195,45,2,NULL),(553,197,45,2,NULL),(554,198,45,2,NULL),(555,199,45,2,NULL),(556,202,45,2,NULL),(557,203,45,2,NULL),(558,204,45,2,NULL),(559,205,45,2,NULL),(560,162,45,2,NULL),(561,164,45,2,NULL),(562,170,45,2,NULL),(563,171,45,2,NULL),(564,172,45,2,NULL),(565,173,45,2,NULL),(566,175,45,2,NULL),(567,176,45,2,NULL),(568,221,45,2,NULL),(569,223,45,2,NULL),(570,229,45,2,NULL),(571,230,45,2,NULL),(572,231,45,2,NULL),(573,232,45,2,NULL),(574,234,45,2,NULL),(575,235,45,2,NULL),(576,130,45,2,NULL),(577,133,45,2,NULL),(578,144,45,2,NULL),(579,146,45,2,NULL),(580,147,45,2,NULL),(581,148,45,2,NULL),(582,152,45,2,NULL),(583,154,45,2,NULL),(584,120,45,2,NULL),(585,208,45,2,NULL),(586,189,45,2,NULL),(587,53,45,2,NULL),(588,55,45,2,NULL),(589,62,45,2,NULL),(590,64,45,2,NULL),(591,83,45,2,NULL),(592,87,45,2,NULL),(593,88,45,2,NULL),(594,96,45,2,NULL),(595,89,45,2,NULL),(596,57,45,2,NULL),(597,58,45,2,NULL),(598,69,45,2,NULL),(599,75,45,2,NULL),(600,76,45,2,NULL),(601,90,45,2,NULL),(602,1,2,2,NULL),(603,195,1,2,NULL),(604,197,1,2,NULL),(605,198,1,2,NULL),(606,199,1,2,NULL),(607,202,1,2,NULL),(608,203,1,2,NULL),(609,204,1,2,NULL),(610,205,1,2,NULL),(611,162,1,2,NULL),(612,164,1,2,NULL),(613,170,1,2,NULL),(614,171,1,2,NULL),(615,172,1,2,NULL),(616,173,1,2,NULL),(617,175,1,2,NULL),(618,176,1,2,NULL),(619,221,1,2,NULL),(620,223,1,2,NULL),(621,229,1,2,NULL),(622,230,1,2,NULL),(623,231,1,2,NULL),(624,232,1,2,NULL),(625,234,1,2,NULL),(626,235,1,2,NULL),(627,130,1,2,NULL),(628,133,1,2,NULL),(629,144,1,2,NULL),(630,146,1,2,NULL),(631,147,1,2,NULL),(632,148,1,2,NULL),(633,152,1,2,NULL),(634,154,1,2,NULL),(635,120,1,2,NULL),(636,208,1,2,NULL),(637,189,1,2,NULL),(638,53,1,2,NULL),(639,55,1,2,NULL),(640,62,1,2,NULL),(641,64,1,2,NULL),(642,83,1,2,NULL),(643,87,1,2,NULL),(644,88,1,2,NULL),(645,96,1,2,NULL),(646,89,1,2,NULL),(647,57,1,2,NULL),(648,58,1,2,NULL),(649,69,1,2,NULL),(650,75,1,2,NULL),(651,76,1,2,NULL),(652,90,1,2,NULL),(653,7,3,2,NULL),(654,8,3,2,NULL),(655,9,3,2,NULL),(656,10,3,2,NULL),(657,5,4,2,NULL),(658,195,5,2,NULL),(659,197,5,2,NULL),(660,198,5,2,NULL),(661,199,5,2,NULL),(662,202,5,2,NULL),(663,203,5,2,NULL),(664,204,5,2,NULL),(665,205,5,2,NULL),(666,162,5,2,NULL),(667,164,5,2,NULL),(668,170,5,2,NULL),(669,171,5,2,NULL),(670,172,5,2,NULL),(671,173,5,2,NULL),(672,175,5,2,NULL),(673,176,5,2,NULL),(674,221,5,2,NULL),(675,223,5,2,NULL),(676,229,5,2,NULL),(677,230,5,2,NULL),(678,231,5,2,NULL),(679,232,5,2,NULL),(680,234,5,2,NULL),(681,235,5,2,NULL),(682,130,5,2,NULL),(683,133,5,2,NULL),(684,144,5,2,NULL),(685,146,5,2,NULL),(686,147,5,2,NULL),(687,148,5,2,NULL),(688,152,5,2,NULL),(689,154,5,2,NULL),(690,120,5,2,NULL),(691,208,5,2,NULL),(692,189,5,2,NULL),(693,53,5,2,NULL),(694,55,5,2,NULL),(695,62,5,2,NULL),(696,64,5,2,NULL),(697,83,5,2,NULL),(698,87,5,2,NULL),(699,88,5,2,NULL),(700,96,5,2,NULL),(701,89,5,2,NULL),(702,57,5,2,NULL),(703,58,5,2,NULL),(704,69,5,2,NULL),(705,75,5,2,NULL),(706,76,5,2,NULL),(707,90,5,2,NULL),(708,195,7,2,NULL),(709,197,7,2,NULL),(710,198,7,2,NULL),(711,199,7,2,NULL),(712,202,7,2,NULL),(713,203,7,2,NULL),(714,204,7,2,NULL),(715,205,7,2,NULL),(716,162,7,2,NULL),(717,164,7,2,NULL),(718,170,7,2,NULL),(719,171,7,2,NULL),(720,172,7,2,NULL),(721,173,7,2,NULL),(722,175,7,2,NULL),(723,176,7,2,NULL),(724,221,7,2,NULL),(725,223,7,2,NULL),(726,229,7,2,NULL),(727,230,7,2,NULL),(728,231,7,2,NULL),(729,232,7,2,NULL),(730,234,7,2,NULL),(731,235,7,2,NULL),(732,130,7,2,NULL),(733,133,7,2,NULL),(734,144,7,2,NULL),(735,146,7,2,NULL),(736,147,7,2,NULL),(737,148,7,2,NULL),(738,152,7,2,NULL),(739,154,7,2,NULL),(740,120,7,2,NULL),(741,208,7,2,NULL),(742,189,7,2,NULL),(743,53,7,2,NULL),(744,55,7,2,NULL),(745,62,7,2,NULL),(746,64,7,2,NULL),(747,83,7,2,NULL),(748,87,7,2,NULL),(749,88,7,2,NULL),(750,96,7,2,NULL),(751,89,7,2,NULL),(752,57,7,2,NULL),(753,58,7,2,NULL),(754,69,7,2,NULL),(755,75,7,2,NULL),(756,76,7,2,NULL),(757,90,7,2,NULL),(758,26,8,2,NULL),(759,26,13,2,NULL),(760,26,37,2,NULL),(761,26,70,2,NULL),(762,26,91,2,NULL),(763,27,8,2,NULL),(764,27,13,2,NULL),(765,27,37,2,NULL),(766,27,70,2,NULL),(767,27,91,2,NULL),(768,29,8,2,NULL),(769,29,13,2,NULL),(770,29,37,2,NULL),(771,29,70,2,NULL),(772,29,91,2,NULL),(773,30,8,2,NULL),(774,30,13,2,NULL),(775,30,37,2,NULL),(776,30,70,2,NULL),(777,30,91,2,NULL),(778,25,9,2,NULL),(779,25,14,2,NULL),(780,25,43,2,NULL),(781,25,72,2,NULL),(782,25,92,2,NULL),(783,195,10,2,NULL),(784,197,10,2,NULL),(785,198,10,2,NULL),(786,199,10,2,NULL),(787,202,10,2,NULL),(788,203,10,2,NULL),(789,204,10,2,NULL),(790,205,10,2,NULL),(791,162,10,2,NULL),(792,164,10,2,NULL),(793,170,10,2,NULL),(794,171,10,2,NULL),(795,172,10,2,NULL),(796,173,10,2,NULL),(797,175,10,2,NULL),(798,176,10,2,NULL),(799,221,10,2,NULL),(800,223,10,2,NULL),(801,229,10,2,NULL),(802,230,10,2,NULL),(803,231,10,2,NULL),(804,232,10,2,NULL),(805,234,10,2,NULL),(806,235,10,2,NULL),(807,130,10,2,NULL),(808,133,10,2,NULL),(809,144,10,2,NULL),(810,146,10,2,NULL),(811,147,10,2,NULL),(812,148,10,2,NULL),(813,152,10,2,NULL),(814,154,10,2,NULL),(815,120,10,2,NULL),(816,208,10,2,NULL),(817,189,10,2,NULL),(818,53,10,2,NULL),(819,55,10,2,NULL),(820,62,10,2,NULL),(821,64,10,2,NULL),(822,83,10,2,NULL),(823,87,10,2,NULL),(824,88,10,2,NULL),(825,96,10,2,NULL),(826,89,10,2,NULL),(827,57,10,2,NULL),(828,58,10,2,NULL),(829,69,10,2,NULL),(830,75,10,2,NULL),(831,76,10,2,NULL),(832,90,10,2,NULL),(833,195,94,2,NULL),(834,197,94,2,NULL),(835,198,94,2,NULL),(836,199,94,2,NULL),(837,202,94,2,NULL),(838,203,94,2,NULL),(839,204,94,2,NULL),(840,205,94,2,NULL),(841,162,94,2,NULL),(842,164,94,2,NULL),(843,170,94,2,NULL),(844,171,94,2,NULL),(845,172,94,2,NULL),(846,173,94,2,NULL),(847,175,94,2,NULL),(848,176,94,2,NULL),(849,221,94,2,NULL),(850,223,94,2,NULL),(851,229,94,2,NULL),(852,230,94,2,NULL),(853,231,94,2,NULL),(854,232,94,2,NULL),(855,234,94,2,NULL),(856,235,94,2,NULL),(857,130,94,2,NULL),(858,133,94,2,NULL),(859,144,94,2,NULL),(860,146,94,2,NULL),(861,147,94,2,NULL),(862,148,94,2,NULL),(863,152,94,2,NULL),(864,154,94,2,NULL),(865,120,94,2,NULL),(866,208,94,2,NULL),(867,189,94,2,NULL),(868,53,94,2,NULL),(869,55,94,2,NULL),(870,62,94,2,NULL),(871,64,94,2,NULL),(872,83,94,2,NULL),(873,87,94,2,NULL),(874,88,94,2,NULL),(875,96,94,2,NULL),(876,89,94,2,NULL),(877,57,94,2,NULL),(878,58,94,2,NULL),(879,69,94,2,NULL),(880,75,94,2,NULL),(881,76,94,2,NULL),(882,90,94,2,NULL),(883,195,52,2,NULL),(884,197,52,2,NULL),(885,198,52,2,NULL),(886,199,52,2,NULL),(887,202,52,2,NULL),(888,203,52,2,NULL),(889,204,52,2,NULL),(890,205,52,2,NULL),(891,162,52,2,NULL),(892,164,52,2,NULL),(893,170,52,2,NULL),(894,171,52,2,NULL),(895,172,52,2,NULL),(896,173,52,2,NULL),(897,175,52,2,NULL),(898,176,52,2,NULL),(899,221,52,2,NULL),(900,223,52,2,NULL),(901,229,52,2,NULL),(902,230,52,2,NULL),(903,231,52,2,NULL),(904,232,52,2,NULL),(905,234,52,2,NULL),(906,235,52,2,NULL),(907,130,52,2,NULL),(908,133,52,2,NULL),(909,144,52,2,NULL),(910,146,52,2,NULL),(911,147,52,2,NULL),(912,148,52,2,NULL),(913,152,52,2,NULL),(914,154,52,2,NULL),(915,120,52,2,NULL),(916,208,52,2,NULL),(917,189,52,2,NULL),(918,53,52,2,NULL),(919,55,52,2,NULL),(920,62,52,2,NULL),(921,64,52,2,NULL),(922,83,52,2,NULL),(923,87,52,2,NULL),(924,88,52,2,NULL),(925,96,52,2,NULL),(926,89,52,2,NULL),(927,57,52,2,NULL),(928,58,52,2,NULL),(929,69,52,2,NULL),(930,75,52,2,NULL),(931,76,52,2,NULL),(932,90,52,2,NULL),(933,61,52,2,NULL),(934,63,52,2,NULL),(935,74,59,2,NULL),(936,53,16,2,NULL),(937,55,16,2,NULL),(938,62,16,2,NULL),(939,64,16,2,NULL),(940,83,16,2,NULL),(941,87,16,2,NULL),(942,88,16,2,NULL),(943,96,16,2,NULL),(944,53,49,2,NULL),(945,55,49,2,NULL),(946,62,49,2,NULL),(947,64,49,2,NULL),(948,83,49,2,NULL),(949,87,49,2,NULL),(950,88,49,2,NULL),(951,96,49,2,NULL),(952,53,54,2,NULL),(953,55,54,2,NULL),(954,62,54,2,NULL),(955,64,54,2,NULL),(956,83,54,2,NULL),(957,87,54,2,NULL),(958,88,54,2,NULL),(959,96,54,2,NULL),(960,53,56,2,NULL),(961,55,56,2,NULL),(962,62,56,2,NULL),(963,64,56,2,NULL),(964,83,56,2,NULL),(965,87,56,2,NULL),(966,88,56,2,NULL),(967,96,56,2,NULL),(968,53,106,2,NULL),(969,55,106,2,NULL),(970,62,106,2,NULL),(971,64,106,2,NULL),(972,83,106,2,NULL),(973,87,106,2,NULL),(974,88,106,2,NULL),(975,96,106,2,NULL),(976,53,103,2,NULL),(977,55,103,2,NULL),(978,62,103,2,NULL),(979,64,103,2,NULL),(980,83,103,2,NULL),(981,87,103,2,NULL),(982,88,103,2,NULL),(983,96,103,2,NULL),(984,53,104,2,NULL),(985,55,104,2,NULL),(986,62,104,2,NULL),(987,64,104,2,NULL),(988,83,104,2,NULL),(989,87,104,2,NULL),(990,88,104,2,NULL),(991,96,104,2,NULL),(992,53,105,2,NULL),(993,55,105,2,NULL),(994,62,105,2,NULL),(995,64,105,2,NULL),(996,83,105,2,NULL),(997,87,105,2,NULL),(998,88,105,2,NULL),(999,96,105,2,NULL),(1000,53,71,2,NULL),(1001,55,71,2,NULL),(1002,62,71,2,NULL),(1003,64,71,2,NULL),(1004,83,71,2,NULL),(1005,87,71,2,NULL),(1006,88,71,2,NULL),(1007,96,71,2,NULL),(1008,53,73,2,NULL),(1009,55,73,2,NULL),(1010,62,73,2,NULL),(1011,64,73,2,NULL),(1012,83,73,2,NULL),(1013,87,73,2,NULL),(1014,88,73,2,NULL),(1015,96,73,2,NULL),(1016,53,96,2,NULL),(1017,55,96,2,NULL),(1018,62,96,2,NULL),(1019,64,96,2,NULL),(1020,83,96,2,NULL),(1021,87,96,2,NULL),(1022,88,96,2,NULL),(1023,96,96,2,NULL),(1024,53,97,2,NULL),(1025,55,97,2,NULL),(1026,62,97,2,NULL),(1027,64,97,2,NULL),(1028,83,97,2,NULL),(1029,87,97,2,NULL),(1030,88,97,2,NULL),(1031,96,97,2,NULL),(1032,53,98,2,NULL),(1033,55,98,2,NULL),(1034,62,98,2,NULL),(1035,64,98,2,NULL),(1036,83,98,2,NULL),(1037,87,98,2,NULL),(1038,88,98,2,NULL),(1039,96,98,2,NULL),(1040,53,99,2,NULL),(1041,55,99,2,NULL),(1042,62,99,2,NULL),(1043,64,99,2,NULL),(1044,83,99,2,NULL),(1045,87,99,2,NULL),(1046,88,99,2,NULL),(1047,96,99,2,NULL),(1048,53,100,2,NULL),(1049,55,100,2,NULL),(1050,62,100,2,NULL),(1051,64,100,2,NULL),(1052,83,100,2,NULL),(1053,87,100,2,NULL),(1054,88,100,2,NULL),(1055,96,100,2,NULL),(1056,53,101,2,NULL),(1057,55,101,2,NULL),(1058,62,101,2,NULL),(1059,64,101,2,NULL),(1060,83,101,2,NULL),(1061,87,101,2,NULL),(1062,88,101,2,NULL),(1063,96,101,2,NULL),(1064,70,52,2,NULL),(1065,93,58,2,NULL),(1066,89,16,2,NULL),(1067,89,49,2,NULL),(1068,89,54,2,NULL),(1069,89,56,2,NULL),(1070,89,106,2,NULL),(1071,89,103,2,NULL),(1072,89,104,2,NULL),(1073,89,105,2,NULL),(1074,89,71,2,NULL),(1075,89,73,2,NULL),(1076,89,96,2,NULL),(1077,89,97,2,NULL),(1078,89,98,2,NULL),(1079,89,99,2,NULL),(1080,89,100,2,NULL),(1081,89,101,2,NULL),(1082,54,58,2,NULL),(1083,56,58,2,NULL),(1084,57,16,2,NULL),(1085,58,16,2,NULL),(1086,57,49,2,NULL),(1087,58,49,2,NULL),(1088,57,54,2,NULL),(1089,58,54,2,NULL),(1090,57,56,2,NULL),(1091,58,56,2,NULL),(1092,57,106,2,NULL),(1093,58,106,2,NULL),(1094,57,103,2,NULL),(1095,58,103,2,NULL),(1096,57,104,2,NULL),(1097,58,104,2,NULL),(1098,57,105,2,NULL),(1099,58,105,2,NULL),(1100,57,71,2,NULL),(1101,58,71,2,NULL),(1102,57,73,2,NULL),(1103,58,73,2,NULL),(1104,57,96,2,NULL),(1105,58,96,2,NULL),(1106,57,97,2,NULL),(1107,58,97,2,NULL),(1108,57,98,2,NULL),(1109,58,98,2,NULL),(1110,57,99,2,NULL),(1111,58,99,2,NULL),(1112,57,100,2,NULL),(1113,58,100,2,NULL),(1114,57,101,2,NULL),(1115,58,101,2,NULL),(1116,69,16,2,NULL),(1117,75,16,2,NULL),(1118,76,16,2,NULL),(1119,90,16,2,NULL),(1120,195,71,2,NULL),(1121,197,71,2,NULL),(1122,198,71,2,NULL),(1123,199,71,2,NULL),(1124,202,71,2,NULL),(1125,203,71,2,NULL),(1126,204,71,2,NULL),(1127,205,71,2,NULL),(1128,162,71,2,NULL),(1129,164,71,2,NULL),(1130,170,71,2,NULL),(1131,171,71,2,NULL),(1132,172,71,2,NULL),(1133,173,71,2,NULL),(1134,175,71,2,NULL),(1135,176,71,2,NULL),(1136,221,71,2,NULL),(1137,223,71,2,NULL),(1138,229,71,2,NULL),(1139,230,71,2,NULL),(1140,231,71,2,NULL),(1141,232,71,2,NULL),(1142,234,71,2,NULL),(1143,235,71,2,NULL),(1144,130,71,2,NULL),(1145,133,71,2,NULL),(1146,144,71,2,NULL),(1147,146,71,2,NULL),(1148,147,71,2,NULL),(1149,156,17,2,NULL),(1150,148,71,2,NULL),(1151,152,71,2,NULL),(1152,157,30,2,NULL),(1153,154,71,2,NULL),(1154,120,71,2,NULL),(1155,184,18,2,NULL),(1156,69,49,2,NULL),(1157,75,49,2,NULL),(1158,211,34,2,NULL),(1159,76,49,2,NULL),(1160,90,49,2,NULL),(1161,214,24,2,NULL),(1162,208,71,2,NULL),(1163,69,54,2,NULL),(1164,216,19,2,NULL),(1165,75,54,2,NULL),(1166,218,48,2,NULL),(1167,76,54,2,NULL),(1168,195,16,2,NULL),(1169,90,54,2,NULL),(1170,197,16,2,NULL),(1171,69,56,2,NULL),(1172,198,16,2,NULL),(1173,75,56,2,NULL),(1174,199,16,2,NULL),(1175,76,56,2,NULL),(1176,202,16,2,NULL),(1177,90,56,2,NULL),(1178,203,16,2,NULL),(1179,189,71,2,NULL),(1180,204,16,2,NULL),(1181,69,106,2,NULL),(1182,205,16,2,NULL),(1183,75,106,2,NULL),(1184,162,16,2,NULL),(1185,76,106,2,NULL),(1186,164,16,2,NULL),(1187,90,106,2,NULL),(1188,170,16,2,NULL),(1189,69,103,2,NULL),(1190,171,16,2,NULL),(1191,75,103,2,NULL),(1192,172,16,2,NULL),(1193,76,103,2,NULL),(1194,173,16,2,NULL),(1195,90,103,2,NULL),(1196,175,16,2,NULL),(1197,69,104,2,NULL),(1198,176,16,2,NULL),(1199,75,104,2,NULL),(1200,221,16,2,NULL),(1201,76,104,2,NULL),(1202,223,16,2,NULL),(1203,90,104,2,NULL),(1204,229,16,2,NULL),(1205,69,105,2,NULL),(1206,230,16,2,NULL),(1207,75,105,2,NULL),(1208,231,16,2,NULL),(1209,76,105,2,NULL),(1210,232,16,2,NULL),(1211,90,105,2,NULL),(1212,234,16,2,NULL),(1213,69,73,2,NULL),(1214,235,16,2,NULL),(1215,75,73,2,NULL),(1216,130,16,2,NULL),(1217,76,73,2,NULL),(1218,133,16,2,NULL),(1219,90,73,2,NULL),(1220,144,16,2,NULL),(1221,69,96,2,NULL),(1222,146,16,2,NULL),(1223,75,96,2,NULL),(1224,147,16,2,NULL),(1225,76,96,2,NULL),(1226,148,16,2,NULL),(1227,90,96,2,NULL),(1228,152,16,2,NULL),(1229,69,97,2,NULL),(1230,154,16,2,NULL),(1231,75,97,2,NULL),(1232,120,16,2,NULL),(1233,76,97,2,NULL),(1234,208,16,2,NULL),(1235,90,97,2,NULL),(1236,189,16,2,NULL),(1237,69,98,2,NULL),(1238,75,98,2,NULL),(1239,195,49,2,NULL),(1240,76,98,2,NULL),(1241,197,49,2,NULL),(1242,90,98,2,NULL),(1243,198,49,2,NULL),(1244,69,99,2,NULL),(1245,199,49,2,NULL),(1246,75,99,2,NULL),(1247,202,49,2,NULL),(1248,76,99,2,NULL),(1249,203,49,2,NULL),(1250,90,99,2,NULL),(1251,204,49,2,NULL),(1252,69,100,2,NULL),(1253,205,49,2,NULL),(1254,75,100,2,NULL),(1255,195,54,2,NULL),(1256,76,100,2,NULL),(1257,197,54,2,NULL),(1258,90,100,2,NULL),(1259,198,54,2,NULL),(1260,69,101,2,NULL),(1261,199,54,2,NULL),(1262,75,101,2,NULL),(1263,202,54,2,NULL),(1264,76,101,2,NULL),(1265,203,54,2,NULL),(1266,90,101,2,NULL),(1267,204,54,2,NULL),(1268,85,8,2,NULL),(1269,205,54,2,NULL),(1270,85,13,2,NULL),(1271,195,56,2,NULL),(1272,85,37,2,NULL),(1273,197,56,2,NULL),(1274,85,70,2,NULL),(1275,198,56,2,NULL),(1276,85,91,2,NULL),(1277,199,56,2,NULL),(1278,86,8,2,NULL),(1279,202,56,2,NULL),(1280,86,13,2,NULL),(1281,203,56,2,NULL),(1282,86,37,2,NULL),(1283,204,56,2,NULL),(1284,86,70,2,NULL),(1285,205,56,2,NULL),(1286,86,91,2,NULL),(1287,195,106,2,NULL),(1288,91,8,2,NULL),(1289,197,106,2,NULL),(1290,91,13,2,NULL),(1291,198,106,2,NULL),(1292,91,37,2,NULL),(1293,199,106,2,NULL),(1294,91,70,2,NULL),(1295,202,106,2,NULL),(1296,91,91,2,NULL),(1297,203,106,2,NULL),(1298,92,8,2,NULL),(1299,204,106,2,NULL),(1300,92,13,2,NULL),(1301,205,106,2,NULL),(1302,92,37,2,NULL),(1303,195,103,2,NULL),(1304,92,70,2,NULL),(1305,197,103,2,NULL),(1306,92,91,2,NULL),(1307,198,103,2,NULL),(1308,60,9,2,NULL),(1309,199,103,2,NULL),(1310,60,14,2,NULL),(1311,202,103,2,NULL),(1312,60,43,2,NULL),(1313,203,103,2,NULL),(1314,60,72,2,NULL),(1315,204,103,2,NULL),(1316,60,92,2,NULL),(1317,205,103,2,NULL),(1318,195,73,2,NULL),(1319,195,104,2,NULL),(1320,197,73,2,NULL),(1321,197,104,2,NULL),(1322,198,73,2,NULL),(1323,198,104,2,NULL),(1324,199,73,2,NULL),(1325,199,104,2,NULL),(1326,202,73,2,NULL),(1327,202,104,2,NULL),(1328,203,73,2,NULL),(1329,203,104,2,NULL),(1330,204,73,2,NULL),(1331,204,104,2,NULL),(1332,205,73,2,NULL),(1333,205,104,2,NULL),(1334,162,73,2,NULL),(1335,195,105,2,NULL),(1336,164,73,2,NULL),(1337,197,105,2,NULL),(1338,170,73,2,NULL),(1339,198,105,2,NULL),(1340,171,73,2,NULL),(1341,199,105,2,NULL),(1342,172,73,2,NULL),(1343,202,105,2,NULL),(1344,173,73,2,NULL),(1345,203,105,2,NULL),(1346,175,73,2,NULL),(1347,204,105,2,NULL),(1348,176,73,2,NULL),(1349,205,105,2,NULL),(1350,221,73,2,NULL),(1351,195,96,2,NULL),(1352,223,73,2,NULL),(1353,197,96,2,NULL),(1354,229,73,2,NULL),(1355,198,96,2,NULL),(1356,230,73,2,NULL),(1357,199,96,2,NULL),(1358,231,73,2,NULL),(1359,202,96,2,NULL),(1360,232,73,2,NULL),(1361,203,96,2,NULL),(1362,234,73,2,NULL),(1363,204,96,2,NULL),(1364,235,73,2,NULL),(1365,205,96,2,NULL),(1366,130,73,2,NULL),(1367,195,97,2,NULL),(1368,133,73,2,NULL),(1369,197,97,2,NULL),(1370,144,73,2,NULL),(1371,198,97,2,NULL),(1372,146,73,2,NULL),(1373,199,97,2,NULL),(1374,147,73,2,NULL),(1375,202,97,2,NULL),(1376,148,73,2,NULL),(1377,203,97,2,NULL),(1378,152,73,2,NULL),(1379,204,97,2,NULL),(1380,154,73,2,NULL),(1381,205,97,2,NULL),(1382,120,73,2,NULL),(1383,195,98,2,NULL),(1384,208,73,2,NULL),(1385,197,98,2,NULL),(1386,189,73,2,NULL),(1387,198,98,2,NULL),(1388,162,96,2,NULL),(1389,199,98,2,NULL),(1390,164,96,2,NULL),(1391,202,98,2,NULL),(1392,170,96,2,NULL),(1393,203,98,2,NULL),(1394,171,96,2,NULL),(1395,204,98,2,NULL),(1396,172,96,2,NULL),(1397,205,98,2,NULL),(1398,173,96,2,NULL),(1399,195,99,2,NULL),(1400,175,96,2,NULL),(1401,197,99,2,NULL),(1402,176,96,2,NULL),(1403,198,99,2,NULL),(1404,221,96,2,NULL),(1405,199,99,2,NULL),(1406,223,96,2,NULL),(1407,202,99,2,NULL),(1408,229,96,2,NULL),(1409,203,99,2,NULL),(1410,230,96,2,NULL),(1411,204,99,2,NULL),(1412,205,99,2,NULL),(1413,195,100,2,NULL),(1414,197,100,2,NULL),(1415,231,96,2,NULL),(1416,198,100,2,NULL),(1417,232,96,2,NULL),(1418,199,100,2,NULL),(1419,234,96,2,NULL),(1420,202,100,2,NULL),(1421,235,96,2,NULL),(1422,203,100,2,NULL),(1423,130,96,2,NULL),(1424,204,100,2,NULL),(1425,133,96,2,NULL),(1426,205,100,2,NULL),(1427,144,96,2,NULL),(1428,195,101,2,NULL),(1429,146,96,2,NULL),(1430,197,101,2,NULL),(1431,147,96,2,NULL),(1432,198,101,2,NULL),(1433,148,96,2,NULL),(1434,199,101,2,NULL),(1435,152,96,2,NULL),(1436,202,101,2,NULL),(1437,154,96,2,NULL),(1438,203,101,2,NULL),(1439,120,96,2,NULL),(1440,204,101,2,NULL),(1441,208,96,2,NULL),(1442,205,101,2,NULL),(1443,189,96,2,NULL),(1444,215,28,2,NULL),(1445,162,97,2,NULL),(1446,164,97,2,NULL),(1447,162,49,2,NULL),(1448,170,97,2,NULL),(1449,164,49,2,NULL),(1450,171,97,2,NULL),(1451,170,49,2,NULL),(1452,172,97,2,NULL),(1453,171,49,2,NULL),(1454,173,97,2,NULL),(1455,172,49,2,NULL),(1456,175,97,2,NULL),(1457,173,49,2,NULL),(1458,176,97,2,NULL),(1459,175,49,2,NULL),(1460,221,97,2,NULL),(1461,176,49,2,NULL),(1462,223,97,2,NULL),(1463,162,54,2,NULL),(1464,229,97,2,NULL),(1465,164,54,2,NULL),(1466,230,97,2,NULL),(1467,170,54,2,NULL),(1468,231,97,2,NULL),(1469,171,54,2,NULL),(1470,232,97,2,NULL),(1471,172,54,2,NULL),(1472,234,97,2,NULL),(1473,173,54,2,NULL),(1474,235,97,2,NULL),(1475,175,54,2,NULL),(1476,130,97,2,NULL),(1477,176,54,2,NULL),(1478,133,97,2,NULL),(1479,162,56,2,NULL),(1480,144,97,2,NULL),(1481,164,56,2,NULL),(1482,146,97,2,NULL),(1483,170,56,2,NULL),(1484,147,97,2,NULL),(1485,171,56,2,NULL),(1486,148,97,2,NULL),(1487,172,56,2,NULL),(1488,152,97,2,NULL),(1489,173,56,2,NULL),(1490,154,97,2,NULL),(1491,175,56,2,NULL),(1492,120,97,2,NULL),(1493,176,56,2,NULL),(1494,208,97,2,NULL),(1495,162,106,2,NULL),(1496,189,97,2,NULL),(1497,164,106,2,NULL),(1498,170,106,2,NULL),(1499,162,98,2,NULL),(1500,171,106,2,NULL),(1501,164,98,2,NULL),(1502,172,106,2,NULL),(1503,170,98,2,NULL),(1504,173,106,2,NULL),(1505,171,98,2,NULL),(1506,175,106,2,NULL),(1507,172,98,2,NULL),(1508,176,106,2,NULL),(1509,173,98,2,NULL),(1510,162,103,2,NULL),(1511,175,98,2,NULL),(1512,164,103,2,NULL),(1513,176,98,2,NULL),(1514,170,103,2,NULL),(1515,221,98,2,NULL),(1516,171,103,2,NULL),(1517,223,98,2,NULL),(1518,172,103,2,NULL),(1519,229,98,2,NULL),(1520,173,103,2,NULL),(1521,230,98,2,NULL),(1522,175,103,2,NULL),(1523,231,98,2,NULL),(1524,176,103,2,NULL),(1525,232,98,2,NULL),(1526,162,104,2,NULL),(1527,234,98,2,NULL),(1528,164,104,2,NULL),(1529,235,98,2,NULL),(1530,170,104,2,NULL),(1531,130,98,2,NULL),(1532,171,104,2,NULL),(1533,133,98,2,NULL),(1534,172,104,2,NULL),(1535,144,98,2,NULL),(1536,173,104,2,NULL),(1537,146,98,2,NULL),(1538,175,104,2,NULL),(1539,147,98,2,NULL),(1540,176,104,2,NULL),(1541,148,98,2,NULL),(1542,162,105,2,NULL),(1543,152,98,2,NULL),(1544,164,105,2,NULL),(1545,154,98,2,NULL),(1546,170,105,2,NULL),(1547,120,98,2,NULL),(1548,171,105,2,NULL),(1549,208,98,2,NULL),(1550,172,105,2,NULL),(1551,189,98,2,NULL),(1552,173,105,2,NULL),(1553,162,99,2,NULL),(1554,175,105,2,NULL),(1555,164,99,2,NULL),(1556,176,105,2,NULL),(1557,170,99,2,NULL),(1558,171,99,2,NULL),(1559,172,99,2,NULL),(1560,173,99,2,NULL),(1561,175,99,2,NULL),(1562,176,99,2,NULL),(1563,162,100,2,NULL),(1564,221,99,2,NULL),(1565,164,100,2,NULL),(1566,223,99,2,NULL),(1567,170,100,2,NULL),(1568,229,99,2,NULL),(1569,171,100,2,NULL),(1570,230,99,2,NULL),(1571,172,100,2,NULL),(1572,231,99,2,NULL),(1573,173,100,2,NULL),(1574,232,99,2,NULL),(1575,175,100,2,NULL),(1576,234,99,2,NULL),(1577,176,100,2,NULL),(1578,235,99,2,NULL),(1579,162,101,2,NULL),(1580,130,99,2,NULL),(1581,164,101,2,NULL),(1582,133,99,2,NULL),(1583,170,101,2,NULL),(1584,144,99,2,NULL),(1585,171,101,2,NULL),(1586,146,99,2,NULL),(1587,172,101,2,NULL),(1588,147,99,2,NULL),(1589,173,101,2,NULL),(1590,148,99,2,NULL),(1591,175,101,2,NULL),(1592,152,99,2,NULL),(1593,176,101,2,NULL),(1594,154,99,2,NULL),(1595,207,28,2,NULL),(1596,120,99,2,NULL),(1597,208,99,2,NULL),(1598,221,49,2,NULL),(1599,189,99,2,NULL),(1600,223,49,2,NULL),(1601,221,100,2,NULL),(1602,229,49,2,NULL),(1603,223,100,2,NULL),(1604,230,49,2,NULL),(1605,229,100,2,NULL),(1606,231,49,2,NULL),(1607,230,100,2,NULL),(1608,232,49,2,NULL),(1609,231,100,2,NULL),(1610,234,49,2,NULL),(1611,232,100,2,NULL),(1612,235,49,2,NULL),(1613,234,100,2,NULL),(1614,221,54,2,NULL),(1615,235,100,2,NULL),(1616,223,54,2,NULL),(1617,130,100,2,NULL),(1618,229,54,2,NULL),(1619,133,100,2,NULL),(1620,230,54,2,NULL),(1621,144,100,2,NULL),(1622,231,54,2,NULL),(1623,146,100,2,NULL),(1624,232,54,2,NULL),(1625,147,100,2,NULL),(1626,234,54,2,NULL),(1627,148,100,2,NULL),(1628,235,54,2,NULL),(1629,152,100,2,NULL),(1630,221,56,2,NULL),(1631,154,100,2,NULL),(1632,223,56,2,NULL),(1633,120,100,2,NULL),(1634,229,56,2,NULL),(1635,208,100,2,NULL),(1636,230,56,2,NULL),(1637,189,100,2,NULL),(1638,231,56,2,NULL),(1639,232,56,2,NULL),(1640,221,101,2,NULL),(1641,234,56,2,NULL),(1642,223,101,2,NULL),(1643,235,56,2,NULL),(1644,229,101,2,NULL),(1645,221,106,2,NULL),(1646,230,101,2,NULL),(1647,223,106,2,NULL),(1648,231,101,2,NULL),(1649,229,106,2,NULL),(1650,232,101,2,NULL),(1651,230,106,2,NULL),(1652,234,101,2,NULL),(1653,231,106,2,NULL),(1654,235,101,2,NULL),(1655,232,106,2,NULL),(1656,130,101,2,NULL),(1657,234,106,2,NULL),(1658,133,101,2,NULL),(1659,235,106,2,NULL),(1660,144,101,2,NULL),(1661,221,103,2,NULL),(1662,146,101,2,NULL),(1663,223,103,2,NULL),(1664,147,101,2,NULL),(1665,229,103,2,NULL),(1666,148,101,2,NULL),(1667,230,103,2,NULL),(1668,152,101,2,NULL),(1669,231,103,2,NULL),(1670,154,101,2,NULL),(1671,232,103,2,NULL),(1672,120,101,2,NULL),(1673,234,103,2,NULL),(1674,208,101,2,NULL),(1675,235,103,2,NULL),(1676,189,101,2,NULL),(1677,221,104,2,NULL),(1678,223,104,2,NULL),(1679,229,104,2,NULL),(1680,230,104,2,NULL),(1681,231,104,2,NULL),(1682,232,104,2,NULL),(1683,234,104,2,NULL),(1684,235,104,2,NULL),(1685,221,105,2,NULL),(1686,223,105,2,NULL),(1687,229,105,2,NULL),(1688,230,105,2,NULL),(1689,231,105,2,NULL),(1690,232,105,2,NULL),(1691,234,105,2,NULL),(1692,235,105,2,NULL),(1693,190,49,2,NULL),(1694,209,28,2,NULL),(1695,130,49,2,NULL),(1696,133,49,2,NULL),(1697,144,49,2,NULL),(1698,146,49,2,NULL),(1699,147,49,2,NULL),(1700,148,49,2,NULL),(1701,152,49,2,NULL),(1702,154,49,2,NULL),(1703,130,54,2,NULL),(1704,133,54,2,NULL),(1705,144,54,2,NULL),(1706,146,54,2,NULL),(1707,147,54,2,NULL),(1708,148,54,2,NULL),(1709,152,54,2,NULL),(1710,154,54,2,NULL),(1711,130,56,2,NULL),(1712,133,56,2,NULL),(1713,144,56,2,NULL),(1714,146,56,2,NULL),(1715,147,56,2,NULL),(1716,148,56,2,NULL),(1717,152,56,2,NULL),(1718,154,56,2,NULL),(1719,130,106,2,NULL),(1720,133,106,2,NULL),(1721,144,106,2,NULL),(1722,146,106,2,NULL),(1723,147,106,2,NULL),(1724,148,106,2,NULL),(1725,152,106,2,NULL),(1726,154,106,2,NULL),(1727,130,103,2,NULL),(1728,133,103,2,NULL),(1729,144,103,2,NULL),(1730,146,103,2,NULL),(1731,147,103,2,NULL),(1732,148,103,2,NULL),(1733,152,103,2,NULL),(1734,154,103,2,NULL),(1735,130,104,2,NULL),(1736,133,104,2,NULL),(1737,144,104,2,NULL),(1738,146,104,2,NULL),(1739,147,104,2,NULL),(1740,148,104,2,NULL),(1741,152,104,2,NULL),(1742,154,104,2,NULL),(1743,130,105,2,NULL),(1744,133,105,2,NULL),(1745,144,105,2,NULL),(1746,146,105,2,NULL),(1747,147,105,2,NULL),(1748,148,105,2,NULL),(1749,152,105,2,NULL),(1750,154,105,2,NULL),(1751,161,41,2,NULL),(1752,120,49,2,NULL),(1753,120,54,2,NULL),(1754,120,56,2,NULL),(1755,120,106,2,NULL),(1756,120,103,2,NULL),(1757,120,104,2,NULL),(1758,120,105,2,NULL),(1759,208,54,2,NULL),(1760,208,56,2,NULL),(1761,189,49,2,NULL),(1762,208,106,2,NULL),(1763,208,103,2,NULL),(1764,208,104,2,NULL),(1765,208,105,2,NULL),(1766,210,48,2,NULL),(1767,189,54,2,NULL),(1768,189,106,2,NULL),(1769,189,103,2,NULL),(1770,189,104,2,NULL),(1771,189,105,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(28,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(13,'android.permission.BROADCAST_WAP_PUSH'),(19,'android.permission.CALL_PHONE'),(24,'android.permission.CALL_PRIVILEGED'),(3,'android.permission.CAMERA'),(6,'android.permission.CHANGE_WIFI_STATE'),(25,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(22,'android.permission.MODIFY_PHONE_STATE'),(12,'android.permission.PROCESS_OUTGOING_CALLS'),(18,'android.permission.READ_CONTACTS'),(27,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_MMS'),(16,'android.permission.RECEIVE_SMS'),(11,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(20,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_SETTINGS'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(10,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,'sms','NULL-CONSTANT',NULL,NULL,NULL,NULL),(24,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(25,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(26,'tel',NULL,NULL,NULL,NULL,NULL),(27,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(28,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(29,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(30,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(31,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(32,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(33,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(34,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(35,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(36,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(37,'tel',NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(39,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(40,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(41,'tel','(.*)',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(43,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(44,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(45,'tel',NULL,NULL,NULL,NULL,NULL),(46,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(47,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(48,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(49,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(50,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(51,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(52,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(53,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(54,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(55,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(56,'tel',NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,'content://contacts/presence',NULL,NULL,NULL),(58,'tel','(.*)',NULL,NULL,NULL,NULL),(59,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(60,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(61,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(62,NULL,NULL,'imto://(.*)(.*)(.*)',NULL,NULL,NULL),(63,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(64,'sms','NULL-CONSTANT',NULL,NULL,NULL,NULL),(65,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(66,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(67,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(68,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(69,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(70,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(71,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(72,'tel',NULL,NULL,NULL,NULL,NULL),(73,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(74,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(75,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(76,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(77,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(78,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(79,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(80,'tel',NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(82,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(83,'tel','(.*)',NULL,NULL,NULL,NULL),(84,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(85,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(86,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(87,'sms','NULL-CONSTANT',NULL,NULL,NULL,NULL),(88,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(89,NULL,NULL,'content://contacts/contact_methods',NULL,NULL,NULL),(90,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(91,NULL,NULL,'content://mms-sms/canonical-address/(.*)',NULL,NULL,NULL),(92,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(93,'sms','NULL-CONSTANT',NULL,NULL,NULL,NULL),(94,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(95,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(96,'tel',NULL,NULL,NULL,NULL,NULL),(97,'tel','NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(98,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(99,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(100,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(101,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(102,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(103,NULL,'NULL-CONSTANT',NULL,NULL,NULL,NULL),(104,'tel',NULL,'voicemail:x',NULL,NULL,NULL),(105,NULL,NULL,'voicemail:x',NULL,NULL,NULL),(106,NULL,'NULL-CONSTANT','voicemail:x',NULL,NULL,NULL),(107,'tel',NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(109,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(110,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(111,NULL,NULL,'(.*)',NULL,NULL,NULL),(112,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,37,3),(2,42,7),(3,44,8),(4,47,9),(5,48,10),(6,50,11),(7,66,12),(8,67,13),(9,76,15),(10,78,16),(11,83,18),(12,117,38),(13,118,39),(14,119,40),(15,130,57),(16,135,60),(17,138,63),(18,151,81),(19,153,82),(20,159,85),(21,160,86),(22,168,88),(23,168,89),(24,168,90),(25,168,91),(26,174,108),(27,175,109),(28,176,110),(29,178,112);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,5),(13,2,6),(14,2,8),(15,2,9),(16,2,10),(17,3,1),(18,3,4),(19,3,5),(20,3,6),(21,3,8),(22,3,9),(23,3,10),(24,4,1),(25,4,5),(26,4,8),(27,4,9),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,4,15),(33,4,17),(34,4,16),(35,4,19),(36,4,18),(37,4,21),(38,4,20),(39,4,23),(40,4,22),(41,4,24),(42,5,17),(43,5,1),(44,5,4),(45,5,5),(46,5,6),(47,5,25),(48,5,8),(49,5,9),(50,5,10),(51,5,26),(52,6,1),(53,6,2),(54,6,4),(55,6,5),(56,6,6),(57,6,8),(58,6,9),(59,6,14),(60,6,17),(61,6,21),(62,6,25),(63,6,27),(64,6,26),(65,6,28),(66,7,1),(67,7,4),(68,7,5),(69,7,6),(70,7,8),(71,7,9),(72,7,10),(73,7,17),(74,7,25),(75,7,27),(76,7,26),(77,7,28);
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

-- Dump completed on 2015-10-12  3:29:17
