-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_727
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(15,'android.appwidget.action.APPWIDGET_UPDATE'),(28,'android.intent.action.BATTERY_CHANGED'),(7,'android.intent.action.BOOT_COMPLETED'),(31,'android.intent.action.CHOOSER'),(24,'android.intent.action.DIAL'),(29,'android.intent.action.GET_CONTENT'),(2,'android.intent.action.MAIN'),(33,'android.intent.action.PICK'),(26,'android.intent.action.SCREEN_OFF'),(27,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SEARCH'),(32,'android.intent.action.SENDTO'),(9,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(30,'android.media.action.IMAGE_CAPTURE'),(1,'android.service.wallpaper.WallpaperService'),(10,'com.a.a.e'),(4,'com.airpush.android.PushServiceStart27191'),(6,'com.airpush.android.PushServiceStart48396'),(11,'com.airpush.android.PushServiceStart48438'),(23,'com.android.camera.action.CROP'),(14,'com.android.launcher.action.INSTALL_SHORTCUT'),(25,'com.android.music.musicservicecommand'),(8,'com.android.vending.INSTALL_REFERRER'),(17,'com.apperhand.action.show.eula'),(19,'com.applovin.sdk.AppLovinService'),(20,'com.coolphotoframes.instaframe'),(21,'com.google.android.c2dm.intent.RECEIVE'),(22,'com.google.android.c2dm.intent.REGISTRATION'),(34,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(18,'com.inoxpush.adnetwork.PushServiceStart55555'),(35,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(5,'com.senddroid.AdServicebe.top.apps.proi'),(12,'com.senddroid.AdServicecom.custom.lwp.MagictouchIcecubesinwaterone');
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
INSERT INTO `Applications` VALUES (1,'tmc.ipac.livewallpaper',9),(2,'com.wangsong.cargallery',10),(3,'be.top.apps.proi',6),(4,'com.domgold.shopper',1),(5,'com.custom.lwp.MagictouchIcecubesinwaterone',4),(6,'com.christmasgame.wildjump',1),(7,'com.coolphotoframes.instaframe',12);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.apperhand.device.android.EULAActivity'),(2,1,'com.google.ads.AdActivity'),(3,1,'tmc.ipac.livewallpaper.WallpaperSettings'),(4,1,'tmc.ipac.livewallpaper.AnimSwitchWallPaper'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,2,'com.wangsong.cargallery.SecondActivity'),(7,2,'com.apperhand.device.android.EULAActivity'),(8,2,'com.wangsong.cargallery.SecondList'),(9,2,'com.wangsong.cargallery.SearchResult'),(10,2,'com.wangsong.cargallery.ShowActivity'),(11,2,'com.wangsong.cargallery.FavouriteActivity'),(12,2,'com.wangsong.cargallery.EmptyActivity'),(13,2,'com.google.ads.AdActivity'),(14,2,'com.millennialmedia.android.MMAdViewOverlayActivity'),(15,2,'com.millennialmedia.android.VideoPlayer'),(16,2,'com.apperhand.device.android.AndroidSDKProvider'),(17,3,'be.top.apps.proi.Magic8Ball'),(18,3,'com.airpush.android.PushAds'),(19,3,'be.top.apps.proi.REV'),(20,3,'com.airpush.android.PushService'),(21,4,'com.a.a.c'),(22,3,'com.apperhand.device.android.AndroidSDKProvider'),(23,3,'com.senddroid.AdService'),(24,4,'com.google.ads.AdActivity'),(25,4,'com.airpush.android.PushAds'),(26,4,'com.airpush.android.PushService'),(27,3,'com.airpush.android.UserDetailsReceiver'),(28,3,'com.airpush.android.MessageReceiver'),(29,3,'com.airpush.android.DeliveryReceiver'),(30,4,'com.apperhand.device.android.AndroidSDKProvider'),(31,3,'be.top.apps.proi.BT1'),(32,4,'com.a.a.a'),(33,4,'com.a.a.d'),(34,3,'be.top.apps.proi.BT2'),(35,4,'com.a.a.e'),(36,4,'com.airpush.android.UserDetailsReceiver'),(37,4,'com.airpush.android.MessageReceiver'),(38,4,'com.airpush.android.DeliveryReceiver'),(39,5,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyWallpaperOptions'),(40,5,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyLauncher'),(41,5,'com.custom.uilib.FilePicker'),(42,5,'com.airpush.android.PushAds'),(43,5,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyWallpaperService'),(44,5,'com.apperhand.device.android.AndroidSDKProvider'),(45,5,'com.airpush.android.PushService'),(46,5,'com.senddroid.AdService'),(47,5,'com.airpush.android.UserDetailsReceiver'),(48,5,'com.airpush.android.MessageReceiver'),(49,5,'com.airpush.android.DeliveryReceiver'),(50,5,'com.Leadbolt.AdNotification'),(51,5,'com.custom.lwp.MagictouchIcecubesinwaterone.BootReceiver'),(52,1,'com.apperhand.device.android.a.b'),(53,1,'tmc.ipac.livewallpaper.WallpaperSettings$1'),(54,6,'com.christmasgame.wildjump.MainActivity'),(55,6,'com.christmasgame.wildjump.Ranking'),(56,6,'com.christmasgame.wildjump.AppsList'),(57,6,'com.christmasgame.wildjump.EditProfile'),(58,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(59,6,'com.google.ads.AdActivity'),(60,1,'com.apperhand.device.android.a.e'),(61,6,'com.apperhand.device.android.AndroidSDKProvider'),(62,6,'com.christmasgame.wildjumpornodeal.Widget'),(63,1,'com.apperhand.device.android.a.c'),(64,7,'com.coolphotoframes.instaframe.LaunchScreen'),(65,7,'com.coolphotoframes.instaframe.FrameScreen'),(66,7,'com.coolphotoframes.instaframe.RateActivity'),(67,7,'com.coolphotoframes.instaframe.HelpScreen'),(68,7,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(69,7,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(70,7,'com.inox.referrer.SendDataService'),(71,7,'com.inoxpush.adnetwork.PushAdService'),(72,7,'com.inoxpush.downloadticker.DownloadTickerService'),(73,7,'com.apperhand.device.android.AndroidSDKProvider'),(74,7,'com.applovin.sdk.AppLovinService'),(75,7,'com.senddroid.AdService'),(76,7,'com.inox.referrer.Receiver'),(77,7,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(78,7,'com.inoxpush.adnetwork.AdMessageReceiver'),(79,7,'com.inoxpush.adnetwork.ClickAdReceiver'),(80,7,'com.applovin.sdk.AppLovinNotificationReceiver'),(81,7,'com.applovin.sdk.AppLovinPushReceiver'),(82,7,'com.coolphotoframes.instaframe.BootReceiver'),(83,2,'com.wangsong.cargallery.SecondList$3'),(84,2,'com.apperhand.device.android.a.e'),(85,2,'com.wangsong.cargallery.SecondList$1'),(86,2,'com.apperhand.device.android.a.b'),(87,2,'com.wangsong.cargallery.AsyncAdapter$2'),(88,2,'com.apperhand.device.android.a.c'),(89,2,'com.wangsong.cargallery.SearchResult$1'),(90,2,'com.millennialmedia.android.MillennialMediaView'),(91,2,'com.wangsong.cargallery.SecondList$2'),(92,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(93,6,'com.mobclix.android.sdk.MobclixCreative$Action'),(94,6,'com.apperhand.device.android.a.a'),(95,6,'com.christmasgame.wildjump.Ranking$2'),(96,6,'com.mobclix.android.sdk.Mobclix$3'),(97,6,'com.christmasgame.wildjump.MainActivity$5'),(98,6,'com.christmasgame.wildjump.MainActivity$9'),(99,6,'com.apperhand.device.android.a.e'),(100,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(101,6,'com.christmasgame.wildjump.MainActivity$13'),(102,6,'com.christmasgame.wildjump.MainActivity$7'),(103,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(104,7,'com.apperhand.device.android.a.d'),(105,7,'com.senddroid.SendDroid'),(106,7,'com.inox.referrer.StartAd'),(107,7,'com.apperhand.device.android.a.b'),(108,7,'com.pontiflex.mobile.webview.sdk.AdManager'),(109,7,'com.inoxpush.downloadticker.DownloadTicker');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'USER_AGENT'),(2,5,'APPLICATION_ID'),(3,2,'params'),(4,5,'M_SERVER_URL'),(5,5,'eulaAcceptDetails'),(6,2,'com.google.ads.AdOpener'),(7,5,'DEVELOPER_ID'),(8,5,'SERVICE_MODE'),(9,2,'action'),(10,5,'FIRST_RUN'),(11,10,'baseUrl'),(12,11,'baseUrl'),(13,9,'query'),(14,15,'cached'),(15,13,'action'),(16,14,'shouldEnableBottomBar'),(17,14,'shouldShowBottomBar'),(18,14,'canAccelerate'),(19,15,'logSet'),(20,15,'shouldShowBottomBar'),(21,14,'cachedAdView'),(22,14,'shouldResizeOverlay'),(23,16,'M_SERVER_URL'),(24,15,'adName'),(25,15,'videoPosition'),(26,15,'videoAd'),(27,16,'APPLICATION_ID'),(28,16,'FIRST_RUN'),(29,13,'params'),(30,8,'carName'),(31,16,'SERVICE_MODE'),(32,14,'overlayTransition'),(33,14,'shouldShowTitlebar'),(34,16,'USER_AGENT'),(35,15,'isCachedAd'),(36,14,'transitionTime'),(37,15,'videoCompleted'),(38,14,'shouldMakeOverlayTransparent'),(39,13,'com.google.ads.AdOpener'),(40,16,'DEVELOPER_ID'),(41,16,'eulaAcceptDetails'),(42,14,'overlayTitle'),(43,54,'url'),(44,56,'com.christmasgame.wildjump.type'),(45,58,'APPLICATION_ID'),(46,52,'com.mobclix.APPLICATION_ID'),(47,53,'com.mobclix.APPLICATION_ID'),(48,55,'com.mobclix.APPLICATION_ID'),(49,58,'SERVICE_MODE'),(50,52,'UMENG_CHANNEL'),(51,53,'UMENG_CHANNEL'),(52,55,'UMENG_CHANNEL'),(53,57,'com.google.ads.AdOpener'),(54,52,'UMENG_APPKEY'),(55,53,'UMENG_APPKEY'),(56,55,'UMENG_APPKEY'),(57,53,'mThisGameHighScore'),(58,58,'FIRST_RUN'),(59,58,'permanent'),(60,56,'com.christmasgame.wildjump.data'),(61,55,'nick'),(62,52,'com.mobclix.LOG_LEVEL'),(63,53,'com.mobclix.LOG_LEVEL'),(64,55,'com.mobclix.LOG_LEVEL'),(65,57,'params'),(66,58,'DEVELOPER_ID'),(67,58,'USER_AGENT'),(68,53,'mGameID'),(69,58,'M_SERVER_URL'),(70,55,'mGameID'),(71,57,'action'),(72,56,'imageUri'),(73,52,'ADMOB_PUBLISHER_ID'),(74,53,'ADMOB_PUBLISHER_ID'),(75,55,'ADMOB_PUBLISHER_ID'),(76,75,'adType'),(77,67,'type'),(78,74,'appId'),(79,73,'appId'),(80,69,'M_SERVER_URL'),(81,69,'FIRST_RUN'),(82,62,'link'),(83,69,'DEVELOPER_ID'),(84,77,'applovin.sdk.verbose_logging'),(85,70,'applovin.sdk.verbose_logging'),(86,76,'applovin.sdk.verbose_logging'),(87,77,'applovin.sdk.autoupdate_disabled'),(88,70,'applovin.sdk.autoupdate_disabled'),(89,76,'applovin.sdk.autoupdate_disabled'),(90,69,'APPLICATION_ID'),(91,77,'applovin.sdk.key'),(92,70,'applovin.sdk.key'),(93,76,'applovin.sdk.key'),(94,72,'referrer'),(95,67,'adType'),(96,69,'USER_AGENT'),(97,75,'marketlink'),(98,69,'SERVICE_MODE'),(99,75,'appId');
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
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',1,20,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',1,20,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,54,'a',1,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,61,'s',0,NULL,NULL),(59,62,'r',1,NULL,NULL),(60,64,'a',1,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'s',0,NULL,NULL),(67,71,'s',1,NULL,NULL),(68,72,'s',0,NULL,NULL),(69,73,'s',0,NULL,NULL),(70,74,'s',1,NULL,NULL),(71,75,'s',1,NULL,NULL),(72,76,'r',1,NULL,NULL),(73,77,'r',0,NULL,NULL),(74,78,'r',0,NULL,NULL),(75,79,'r',0,NULL,NULL),(76,80,'r',0,NULL,NULL),(77,81,'r',1,40,NULL),(78,82,'r',1,NULL,NULL),(79,92,'r',1,NULL,NULL),(80,96,'r',1,NULL,NULL),(81,100,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,5),(3,3,4),(4,4,3),(5,5,5),(6,6,5),(7,7,5),(8,8,2),(9,9,5),(10,10,5),(11,11,5),(12,12,8),(13,13,16),(14,14,10),(15,14,11),(16,14,8),(17,15,15),(18,15,10),(19,15,11),(20,16,16),(21,17,15),(22,17,10),(23,17,11),(24,18,10),(25,18,11),(26,19,11),(27,19,10),(28,20,15),(29,20,11),(30,20,10),(31,21,15),(32,21,11),(33,21,10),(34,22,16),(35,23,8),(36,24,6),(37,25,10),(38,25,11),(39,25,15),(40,26,16),(41,27,16),(42,28,6),(43,29,10),(44,29,11),(45,29,15),(46,30,10),(47,30,11),(48,30,15),(49,31,13),(50,32,6),(51,33,16),(52,34,16),(53,35,9),(54,36,10),(55,36,11),(56,36,15),(57,37,8),(58,37,10),(59,37,11),(60,38,6),(61,39,6),(62,40,53),(63,41,52),(64,42,58),(65,43,53),(66,44,52),(67,45,57),(68,46,52),(69,47,56),(70,48,52),(71,49,52),(72,50,58),(73,51,56),(74,52,56),(75,53,52),(76,54,58),(77,55,52),(78,56,58),(79,57,52),(80,58,52),(81,59,52),(82,60,56),(83,61,56),(84,62,52),(85,63,58),(86,64,56),(87,65,52),(88,66,52),(89,67,56),(90,68,58),(91,69,69),(92,70,62),(93,70,60),(94,71,71),(95,72,78),(96,73,71),(97,74,61),(98,75,69),(99,76,69),(100,77,61),(101,78,60),(102,79,61),(103,79,60),(104,80,75),(105,81,60),(106,82,74),(107,83,60),(108,83,61),(109,84,71),(110,85,69),(111,86,60),(112,87,69),(113,88,69),(114,89,60),(115,90,72),(116,91,60),(117,91,61),(118,92,60),(119,93,60),(120,94,73),(121,95,75);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(2,52,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(3,5,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(4,53,'<tmc.ipac.livewallpaper.WallpaperSettings$1: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(5,52,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(6,60,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(7,60,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(8,2,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(9,52,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(10,63,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(11,60,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(12,83,'<com.wangsong.cargallery.SecondList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(13,84,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(14,85,'<com.wangsong.cargallery.SecondList$1: void onClick(android.view.View)>',18,'a',NULL),(15,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(16,86,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(17,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(18,11,'<com.wangsong.cargallery.FavouriteActivity: void cutImage(int)>',22,'a',NULL),(19,10,'<com.wangsong.cargallery.ShowActivity: void cutImage(int)>',41,'a',NULL),(20,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(21,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(22,86,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(23,83,'<com.wangsong.cargallery.SecondList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(24,87,'<com.wangsong.cargallery.AsyncAdapter$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(25,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(26,84,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(27,86,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(28,87,'<com.wangsong.cargallery.AsyncAdapter$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',41,'a',NULL),(29,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(30,15,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(31,13,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(32,16,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(33,88,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(34,84,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(35,89,'<com.wangsong.cargallery.SearchResult$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(36,90,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(37,91,'<com.wangsong.cargallery.SecondList$2: void onClick(android.view.View)>',6,'a',NULL),(38,6,'<com.wangsong.cargallery.SecondActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(39,16,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(40,55,'<com.christmasgame.wildjump.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(41,93,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(42,94,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(43,95,'<com.christmasgame.wildjump.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(44,97,'<com.christmasgame.wildjump.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(45,59,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(46,93,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(47,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(48,93,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(49,98,'<com.christmasgame.wildjump.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(50,94,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(51,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(52,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(53,54,'<com.christmasgame.wildjump.MainActivity: void t()>',21,'a',NULL),(54,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(55,93,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(56,94,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(57,101,'<com.christmasgame.wildjump.MainActivity$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(58,102,'<com.christmasgame.wildjump.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(59,61,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(60,103,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(61,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(62,93,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(63,99,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(64,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(65,54,'<com.christmasgame.wildjump.MainActivity: void n()>',10,'a',NULL),(66,54,'<com.christmasgame.wildjump.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(67,58,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(68,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(69,104,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(70,66,'<com.coolphotoframes.instaframe.RateActivity: void startRating()>',7,'a',NULL),(71,105,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(72,73,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(73,105,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(74,106,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL),(75,107,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(76,104,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(77,65,'<com.coolphotoframes.instaframe.FrameScreen: void startHelpActivity(android.view.View)>',4,'a',NULL),(78,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(79,65,'<com.coolphotoframes.instaframe.FrameScreen: void OpenGallery(com.coolphotoframes.instaframe.ResizeView)>',12,'a',NULL),(80,79,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(81,109,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(82,78,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(83,65,'<com.coolphotoframes.instaframe.FrameScreen: void shareImage()>',48,'a',NULL),(84,105,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(85,107,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(86,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(87,107,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(88,104,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(89,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(90,76,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(91,65,'<com.coolphotoframes.instaframe.FrameScreen: float rot(android.content.Context,android.net.Uri)>',8,'p',0),(92,64,'<com.coolphotoframes.instaframe.LaunchScreen: void startFrame(int)>',7,'a',NULL),(93,64,'<com.coolphotoframes.instaframe.LaunchScreen: void onCreate(android.os.Bundle)>',9,'a',NULL),(94,77,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(95,79,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,13),(2,6,14),(3,7,13),(4,8,16),(5,9,16),(6,10,17),(7,11,17),(8,16,23),(9,17,23),(10,18,24),(11,19,13),(12,22,13),(13,24,13),(14,25,13),(15,26,16),(16,27,13),(17,28,16),(18,31,17),(19,32,17),(20,33,14),(21,35,25),(22,44,13),(23,45,16),(24,46,16),(25,47,13),(26,48,13),(27,50,29),(28,51,30),(29,52,30),(30,53,30),(31,55,30),(32,57,13),(33,59,13),(34,60,13),(35,61,13),(36,62,13),(37,65,13),(38,66,13),(39,67,31),(40,68,31),(41,69,31),(42,70,31),(43,71,31),(44,72,31),(45,73,31),(46,74,31),(47,76,14),(48,78,29),(49,79,30),(50,80,30),(51,81,30),(52,83,30),(53,85,32),(54,86,31),(55,87,31),(56,88,31),(57,89,31),(58,90,31),(59,91,31),(60,92,31),(61,93,31),(62,94,13),(63,95,13),(64,97,14),(65,98,14),(66,101,33),(67,102,13),(68,104,34),(69,105,31),(70,106,31),(71,107,31),(72,108,31),(73,109,31),(74,110,31),(75,111,31),(76,112,31),(77,113,14),(78,119,34),(79,120,35),(80,121,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,26,4),(2,27,4),(3,28,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/device/android/AndroidSDKProvider'),(2,2,'com/apperhand/device/android/AndroidSDKProvider'),(3,3,'com/apperhand/device/android/EULAActivity'),(4,4,'com/apperhand/device/android/EULAActivity'),(5,12,'com/wangsong/cargallery/EmptyActivity'),(6,13,'com/wangsong/cargallery/FavouriteActivity'),(7,14,'com/millennialmedia/android/MMAdViewOverlayActivity'),(8,15,'com/millennialmedia/android/MMAdViewOverlayActivity'),(9,20,'com/wangsong/cargallery/ShowActivity'),(10,21,'com/wangsong/cargallery/EmptyActivity'),(11,23,'com/wangsong/cargallery/ShowActivity'),(12,29,'com/apperhand/device/android/AndroidSDKProvider'),(13,30,'com/apperhand/device/android/AndroidSDKProvider'),(14,34,'com/wangsong/cargallery/ShowActivity'),(15,36,'com/wangsong/cargallery/MainActivity'),(16,37,'com/wangsong/cargallery/FavouriteActivity'),(17,38,'com/apperhand/device/android/EULAActivity'),(18,39,'com/apperhand/device/android/EULAActivity'),(19,40,'com/christmasgame/wildjump/EditProfile'),(20,41,'com/mobclix/android/sdk/MobclixBrowserActivity'),(21,42,'com/christmasgame/wildjump/EditProfile'),(22,56,'com/mobclix/android/sdk/MobclixBrowserActivity'),(23,58,'com/christmasgame/wildjump/AppsList'),(24,63,'com/apperhand/device/android/AndroidSDKProvider'),(25,64,'com/apperhand/device/android/AndroidSDKProvider'),(26,75,'com/mobclix/android/sdk/MobclixBrowserActivity'),(27,84,'com/christmasgame/wildjump/Ranking'),(28,96,'com/apperhand/device/android/AndroidSDKProvider'),(29,99,'com/coolphotoframes/instaframe/HelpScreen'),(30,100,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(31,103,'com/inoxpush/downloadticker/DownloadTickerService'),(32,114,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(33,115,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(34,116,'com/inox/referrer/SendDataService'),(35,117,'com/coolphotoframes/instaframe/FrameScreen'),(36,118,'com/coolphotoframes/instaframe/HelpScreen');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,2),(2,7,6),(3,8,7),(4,9,8),(5,14,13),(6,15,15),(7,16,16),(8,17,17),(9,18,18),(10,19,19),(11,22,21),(12,24,24),(13,25,25),(14,26,26),(15,27,27),(16,28,28),(17,44,30),(18,45,31),(19,46,32),(20,47,33),(21,48,34),(22,57,35),(23,59,40),(24,60,41),(25,61,43),(26,62,44),(27,65,45),(28,66,46),(29,85,47),(30,94,50),(31,95,51),(32,101,55),(33,102,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'M_SERVER_URL'),(2,1,'USER_AGENT'),(3,1,'SERVICE_MODE'),(4,1,'FIRST_RUN'),(5,1,'DEVELOPER_ID'),(6,1,'APPLICATION_ID'),(7,2,'eulaAcceptDetails'),(8,2,'M_SERVER_URL'),(9,2,'USER_AGENT'),(10,2,'SERVICE_MODE'),(11,2,'FIRST_RUN'),(12,2,'DEVELOPER_ID'),(13,2,'APPLICATION_ID'),(14,6,'android.intent.extra.shortcut.NAME'),(15,6,'android.intent.extra.shortcut.ICON'),(16,6,'android.intent.extra.shortcut.INTENT'),(17,10,'footerHTML'),(18,10,'bodyHTML'),(19,14,'cachedAdView'),(20,15,'cachedAdView'),(21,16,'aspectX'),(22,16,'aspectY'),(23,16,'outputFormat'),(24,16,'output'),(25,16,'crop'),(26,17,'aspectX'),(27,17,'aspectY'),(28,17,'outputFormat'),(29,17,'output'),(30,17,'crop'),(31,20,'baseUrl'),(32,23,'baseUrl'),(33,29,'eulaAcceptDetails'),(34,29,'M_SERVER_URL'),(35,29,'USER_AGENT'),(36,29,'SERVICE_MODE'),(37,29,'FIRST_RUN'),(38,29,'DEVELOPER_ID'),(39,29,'APPLICATION_ID'),(40,30,'M_SERVER_URL'),(41,30,'USER_AGENT'),(42,30,'SERVICE_MODE'),(43,30,'FIRST_RUN'),(44,30,'DEVELOPER_ID'),(45,30,'APPLICATION_ID'),(46,32,'footerHTML'),(47,32,'bodyHTML'),(48,33,'android.intent.extra.shortcut.NAME'),(49,33,'android.intent.extra.shortcut.ICON'),(50,33,'android.intent.extra.shortcut.INTENT'),(51,34,'baseUrl'),(52,35,'command'),(53,40,'mGameID'),(54,40,'nick'),(55,42,'mGameID'),(56,42,'nick'),(57,51,'output'),(58,52,'output'),(59,52,'android.intent.extra.videoQuality'),(60,58,'url'),(61,63,'M_SERVER_URL'),(62,63,'USER_AGENT'),(63,63,'SERVICE_MODE'),(64,63,'FIRST_RUN'),(65,63,'DEVELOPER_ID'),(66,63,'APPLICATION_ID'),(67,64,'M_SERVER_URL'),(68,64,'USER_AGENT'),(69,64,'SERVICE_MODE'),(70,64,'FIRST_RUN'),(71,64,'DEVELOPER_ID'),(72,64,'(.*)'),(73,64,'APPLICATION_ID'),(74,67,'android.intent.extra.INTENT'),(75,68,'android.intent.extra.INTENT'),(76,69,'android.intent.extra.TITLE'),(77,69,'android.intent.extra.INTENT'),(78,70,'android.intent.extra.INTENT'),(79,71,'android.intent.extra.TITLE'),(80,71,'android.intent.extra.INTENT'),(81,72,'android.intent.extra.INTENT'),(82,73,'android.intent.extra.TITLE'),(83,73,'android.intent.extra.INTENT'),(84,74,'android.intent.extra.TITLE'),(85,74,'android.intent.extra.INTENT'),(86,76,'android.intent.extra.shortcut.NAME'),(87,76,'android.intent.extra.shortcut.ICON'),(88,76,'android.intent.extra.shortcut.INTENT'),(89,79,'output'),(90,80,'output'),(91,80,'android.intent.extra.videoQuality'),(92,84,'mGameID'),(93,84,'mThisGameHighScore'),(94,85,'android.intent.extra.SUBJECT'),(95,86,'android.intent.extra.INTENT'),(96,87,'android.intent.extra.INTENT'),(97,88,'android.intent.extra.TITLE'),(98,88,'android.intent.extra.INTENT'),(99,89,'android.intent.extra.INTENT'),(100,90,'android.intent.extra.TITLE'),(101,90,'android.intent.extra.INTENT'),(102,91,'android.intent.extra.INTENT'),(103,92,'android.intent.extra.TITLE'),(104,92,'android.intent.extra.INTENT'),(105,93,'android.intent.extra.TITLE'),(106,93,'android.intent.extra.INTENT'),(107,96,'M_SERVER_URL'),(108,96,'USER_AGENT'),(109,96,'SERVICE_MODE'),(110,96,'FIRST_RUN'),(111,96,'DEVELOPER_ID'),(112,96,'APPLICATION_ID'),(113,97,'duplicate'),(114,97,'android.intent.extra.shortcut.NAME'),(115,97,'android.intent.extra.shortcut.ICON'),(116,97,'android.intent.extra.shortcut.INTENT'),(117,98,'android.intent.extra.shortcut.NAME'),(118,98,'android.intent.extra.shortcut.ICON'),(119,98,'android.intent.extra.shortcut.INTENT'),(120,100,'singleoffer'),(121,100,'offerCount'),(122,104,'NULL-CONSTANT'),(123,104,'type'),(124,105,'android.intent.extra.INTENT'),(125,106,'android.intent.extra.INTENT'),(126,107,'android.intent.extra.TITLE'),(127,107,'android.intent.extra.INTENT'),(128,108,'android.intent.extra.INTENT'),(129,109,'android.intent.extra.TITLE'),(130,109,'android.intent.extra.INTENT'),(131,110,'android.intent.extra.INTENT'),(132,111,'android.intent.extra.TITLE'),(133,111,'android.intent.extra.INTENT'),(134,112,'android.intent.extra.TITLE'),(135,112,'android.intent.extra.INTENT'),(136,113,'duplicate'),(137,113,'android.intent.extra.shortcut.NAME'),(138,113,'android.intent.extra.shortcut.ICON'),(139,113,'android.intent.extra.shortcut.INTENT'),(140,115,'offerCount'),(141,117,'total'),(142,117,'layout_id'),(143,119,'NULL-CONSTANT'),(144,119,'type'),(145,120,'NULL-CONSTANT'),(146,120,'type'),(147,121,'NULL-CONSTANT'),(148,121,'type');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,2),(5,5,4),(6,6,2),(7,7,5),(8,8,6),(9,9,8),(10,10,7),(11,11,9),(12,12,7),(13,13,10),(14,14,2),(15,15,1),(16,16,11),(17,17,12),(18,18,7),(19,19,2),(20,20,15),(21,21,2),(22,22,18),(23,23,18),(24,24,19),(25,25,20),(26,26,8),(27,27,21),(28,28,22),(29,29,7),(30,30,26),(31,30,27),(32,31,28),(33,32,26),(34,32,9),(35,33,26),(36,33,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,6,1),(4,10,2),(5,12,2),(6,14,1),(7,18,2),(8,19,1),(9,21,1),(10,27,3),(11,28,3),(12,29,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
INSERT INTO `IMimeTypes` VALUES (1,8,'(.*)','(.*)'),(2,16,'image','*'),(3,17,'image','*'),(4,28,'(.*)','(.*)'),(5,45,'(.*)','(.*)'),(6,50,'image','*'),(7,54,'image','*'),(8,55,'image','*'),(9,78,'image','*'),(10,82,'image','*'),(11,83,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'tmc.ipac.livewallpaper'),(2,2,'tmc.ipac.livewallpaper'),(3,3,'tmc.ipac.livewallpaper'),(4,4,'tmc.ipac.livewallpaper'),(5,10,'tmc.ipac.livewallpaper'),(6,11,'tmc.ipac.livewallpaper'),(7,12,'com.wangsong.cargallery'),(8,13,'com.wangsong.cargallery'),(9,14,'com.wangsong.cargallery'),(10,15,'com.wangsong.cargallery'),(11,20,'com.wangsong.cargallery'),(12,21,'com.wangsong.cargallery'),(13,23,'com.wangsong.cargallery'),(14,29,'com.wangsong.cargallery'),(15,30,'com.wangsong.cargallery'),(16,31,'com.wangsong.cargallery'),(17,32,'com.wangsong.cargallery'),(18,34,'com.wangsong.cargallery'),(19,36,'com.wangsong.cargallery'),(20,37,'com.wangsong.cargallery'),(21,38,'com.wangsong.cargallery'),(22,39,'com.wangsong.cargallery'),(23,40,'com.christmasgame.wildjump'),(24,41,'com.christmasgame.wildjump'),(25,42,'com.christmasgame.wildjump'),(26,56,'com.christmasgame.wildjump'),(27,58,'com.christmasgame.wildjump'),(28,63,'com.christmasgame.wildjump'),(29,64,'com.christmasgame.wildjump'),(30,75,'com.christmasgame.wildjump'),(31,84,'com.christmasgame.wildjump'),(32,96,'com.coolphotoframes.instaframe'),(33,99,'com.coolphotoframes.instaframe'),(34,100,'com.coolphotoframes.instaframe'),(35,103,'com.coolphotoframes.instaframe'),(36,114,'com.coolphotoframes.instaframe'),(37,115,'com.coolphotoframes.instaframe'),(38,116,'com.coolphotoframes.instaframe'),(39,117,'com.coolphotoframes.instaframe'),(40,118,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,4,0),(2,6,0),(3,9,0),(4,17,0),(5,20,0),(6,21,0),(7,23,0),(8,26,0),(9,32,0),(10,31,0),(11,33,0),(12,34,0),(13,35,0),(14,40,0),(15,43,0),(16,45,0),(17,46,0),(18,51,0),(19,52,0),(20,59,0),(21,60,0),(22,67,0),(23,67,0),(24,70,0),(25,71,0),(26,72,0),(27,77,0),(28,77,0),(29,78,0),(30,79,0),(31,80,0),(32,81,0),(33,79,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,3,0,0),(4,3,0,0),(5,4,1,0),(6,6,1,0),(7,8,1,0),(8,8,1,0),(9,8,1,0),(10,10,1,0),(11,10,1,0),(12,12,0,0),(13,14,0,0),(14,15,0,0),(15,17,0,0),(16,18,1,0),(17,19,1,0),(18,20,1,0),(19,21,1,0),(20,23,0,0),(21,24,0,0),(22,25,1,0),(23,28,0,0),(24,29,1,0),(25,30,1,0),(26,31,1,0),(27,31,1,0),(28,31,1,0),(29,32,0,0),(30,32,0,0),(31,33,1,0),(32,33,1,0),(33,34,1,0),(34,35,0,0),(35,36,1,0),(36,37,0,0),(37,38,0,0),(38,39,0,0),(39,39,0,0),(40,40,0,0),(41,41,0,0),(42,43,0,0),(43,44,1,0),(44,45,1,0),(45,45,1,0),(46,45,1,0),(47,46,1,0),(48,46,1,0),(49,47,1,0),(50,47,1,0),(51,47,1,0),(52,47,1,0),(53,47,1,0),(54,47,1,0),(55,47,1,0),(56,48,0,0),(57,49,1,0),(58,53,0,0),(59,55,1,0),(60,55,1,0),(61,57,1,0),(62,58,1,0),(63,59,0,0),(64,59,0,0),(65,60,1,0),(66,60,1,0),(67,61,1,0),(68,61,1,0),(69,61,1,0),(70,61,1,0),(71,61,1,0),(72,61,1,0),(73,61,1,0),(74,61,1,0),(75,62,0,0),(76,63,1,0),(77,64,1,0),(78,64,1,0),(79,64,1,0),(80,64,1,0),(81,64,1,0),(82,64,1,0),(83,64,1,0),(84,65,0,0),(85,66,1,0),(86,67,1,0),(87,67,1,0),(88,67,1,0),(89,67,1,0),(90,67,1,0),(91,67,1,0),(92,67,1,0),(93,67,1,0),(94,70,1,0),(95,70,1,0),(96,72,0,0),(97,74,1,0),(98,76,1,0),(99,77,0,0),(100,78,0,0),(101,79,1,0),(102,80,1,0),(103,81,0,0),(104,82,1,0),(105,83,1,0),(106,83,1,0),(107,83,1,0),(108,83,1,0),(109,83,1,0),(110,83,1,0),(111,83,1,0),(112,83,1,0),(113,84,1,0),(114,86,0,0),(115,89,0,0),(116,90,0,0),(117,92,0,0),(118,93,0,0),(119,94,1,0),(120,95,1,0),(121,95,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (24,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(34,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.BIND_WALLPAPER'),(38,'android.permission.BLUETOOTH'),(39,'android.permission.BLUETOOTH_ADMIN'),(25,'android.permission.CALL_PHONE'),(37,'android.permission.DISABLE_KEYGUARD'),(31,'android.permission.FLASHLIGHT'),(26,'android.permission.GET_ACCOUNTS'),(23,'android.permission.GET_TASKS'),(32,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(27,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(35,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(28,'android.permission.RECEIVE_BOOT_COMPLETED'),(36,'android.permission.SET_PREFERRED_APPLICATIONS'),(21,'android.permission.SET_WALLPAPER'),(33,'android.permission.VIBRATE'),(30,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.software.live_wallpaper'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(12,'com.fede.launcher.permission.READ_SETTINGS'),(40,'com.google.android.c2dm.permission.SEND'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(18,'com.motorola.launcher.permission.READ_SETTINGS'),(13,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'http://market.android.com/search?q=pub:\"Remobile',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(36,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(37,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(38,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(39,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(43,NULL,NULL,'market://details?id=com.christmasgame.wildjump',NULL,NULL,NULL),(44,NULL,NULL,'market://search?q=pname:com.gamevisa8.drunkpro0',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'',NULL,NULL,NULL),(47,NULL,NULL,'mailto:ogregames@hotmail.com',NULL,NULL,NULL),(48,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(49,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'www.google.com',NULL,NULL,NULL),(52,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(53,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(54,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(55,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(58,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(59,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(60,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,5,3),(3,7,4),(4,7,5),(5,9,9),(6,11,10),(7,13,11),(8,13,12),(9,16,14),(10,22,20),(11,26,22),(12,27,23),(13,42,29),(14,50,36),(15,51,37),(16,54,38),(17,54,39),(18,56,42),(19,68,48),(20,69,49),(21,71,52),(22,73,53),(23,75,54),(24,85,57),(25,87,58),(26,88,59),(27,88,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,2,1),(21,2,2),(22,2,3),(23,2,4),(24,2,5),(25,2,6),(26,2,7),(27,2,8),(28,2,9),(29,2,10),(30,2,12),(31,2,13),(32,2,14),(33,2,15),(34,2,17),(35,2,18),(36,2,21),(37,2,22),(38,3,1),(39,3,2),(40,3,3),(41,3,4),(42,3,5),(43,3,6),(44,3,7),(45,3,8),(46,3,9),(47,3,10),(48,3,11),(49,3,12),(50,3,13),(51,3,14),(52,3,15),(53,3,17),(54,3,19),(55,3,18),(56,3,21),(57,3,23),(58,3,22),(59,3,25),(60,3,24),(61,3,27),(62,3,26),(63,4,1),(64,3,29),(65,4,2),(66,3,28),(67,4,3),(68,3,31),(69,4,4),(70,3,30),(71,4,5),(72,3,32),(73,4,6),(74,3,33),(75,4,7),(76,4,8),(77,4,9),(78,4,10),(79,4,12),(80,4,13),(81,4,14),(82,4,15),(83,4,17),(84,4,18),(85,4,22),(86,4,30),(87,5,1),(88,5,2),(89,5,3),(90,5,4),(91,5,5),(92,5,6),(93,5,7),(94,5,8),(95,5,9),(96,5,10),(97,5,11),(98,5,12),(99,5,13),(100,5,14),(101,5,15),(102,5,17),(103,5,19),(104,5,18),(105,5,22),(106,5,24),(107,5,29),(108,5,28),(109,5,30),(110,5,34),(111,5,33),(112,6,1),(113,6,2),(114,6,3),(115,6,4),(116,6,6),(117,6,7),(118,6,8),(119,6,9),(120,6,10),(121,6,12),(122,6,13),(123,6,14),(124,6,15),(125,6,17),(126,6,18),(127,6,30),(128,7,1),(129,7,2),(130,7,3),(131,7,4),(132,7,5),(133,7,6),(134,7,7),(135,7,8),(136,7,9),(137,7,10),(138,7,11),(139,7,12),(140,7,13),(141,7,15),(142,7,17),(143,7,19),(144,7,18),(145,7,22),(146,7,24),(147,7,26),(148,7,29),(149,7,28),(150,7,30),(151,7,34),(152,7,35),(153,7,33),(154,7,38),(155,7,39),(156,7,36),(157,7,37);
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

-- Dump completed on 2015-10-09  0:41:00
