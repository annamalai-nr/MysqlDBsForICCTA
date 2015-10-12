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
) ENGINE=InnoDB AUTO_INCREMENT=1597 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,7,40,2,NULL),(2,9,40,2,NULL),(3,26,40,2,NULL),(4,27,40,2,NULL),(5,18,40,2,NULL),(6,19,40,2,NULL),(7,22,40,2,NULL),(8,24,40,2,NULL),(9,25,40,2,NULL),(10,85,40,2,NULL),(11,49,40,2,NULL),(12,51,40,2,NULL),(13,52,40,2,NULL),(14,53,40,2,NULL),(15,67,40,2,NULL),(16,68,40,2,NULL),(17,69,40,2,NULL),(18,70,40,2,NULL),(19,71,40,2,NULL),(20,72,40,2,NULL),(21,73,40,2,NULL),(22,74,40,2,NULL),(23,77,40,2,NULL),(24,79,40,2,NULL),(25,80,40,2,NULL),(26,81,40,2,NULL),(27,86,40,2,NULL),(28,87,40,2,NULL),(29,88,40,2,NULL),(30,89,40,2,NULL),(31,90,40,2,NULL),(32,91,40,2,NULL),(33,92,40,2,NULL),(34,93,40,2,NULL),(35,44,40,2,NULL),(36,46,40,2,NULL),(37,105,40,2,NULL),(38,106,40,2,NULL),(39,107,40,2,NULL),(40,108,40,2,NULL),(41,109,40,2,NULL),(42,110,40,2,NULL),(43,111,40,2,NULL),(44,112,40,2,NULL),(45,94,40,2,NULL),(46,95,40,2,NULL),(47,119,40,2,NULL),(48,104,40,2,NULL),(49,7,4,2,NULL),(50,102,40,2,NULL),(51,9,4,2,NULL),(52,120,40,2,NULL),(53,7,6,2,NULL),(54,121,40,2,NULL),(55,9,6,2,NULL),(56,7,43,2,NULL),(57,7,9,2,NULL),(58,9,43,2,NULL),(59,9,9,2,NULL),(60,26,43,2,NULL),(61,7,17,2,NULL),(62,27,43,2,NULL),(63,9,17,2,NULL),(64,18,43,2,NULL),(65,7,20,2,NULL),(66,19,43,2,NULL),(67,9,20,2,NULL),(68,22,43,2,NULL),(69,7,23,2,NULL),(70,24,43,2,NULL),(71,9,23,2,NULL),(72,25,43,2,NULL),(73,7,31,2,NULL),(74,85,43,2,NULL),(75,9,31,2,NULL),(76,49,43,2,NULL),(77,7,34,2,NULL),(78,51,43,2,NULL),(79,9,34,2,NULL),(80,52,43,2,NULL),(81,7,21,2,NULL),(82,53,43,2,NULL),(83,9,21,2,NULL),(84,67,43,2,NULL),(85,7,26,2,NULL),(86,68,43,2,NULL),(87,9,26,2,NULL),(88,69,43,2,NULL),(89,7,32,2,NULL),(90,70,43,2,NULL),(91,9,32,2,NULL),(92,71,43,2,NULL),(93,7,33,2,NULL),(94,72,43,2,NULL),(95,9,33,2,NULL),(96,73,43,2,NULL),(97,7,35,2,NULL),(98,74,43,2,NULL),(99,9,35,2,NULL),(100,77,43,2,NULL),(101,7,45,2,NULL),(102,79,43,2,NULL),(103,9,45,2,NULL),(104,80,43,2,NULL),(105,7,46,2,NULL),(106,81,43,2,NULL),(107,9,46,2,NULL),(108,86,43,2,NULL),(109,7,51,2,NULL),(110,87,43,2,NULL),(111,9,51,2,NULL),(112,88,43,2,NULL),(113,7,52,2,NULL),(114,89,43,2,NULL),(115,9,52,2,NULL),(116,90,43,2,NULL),(117,7,59,2,NULL),(118,91,43,2,NULL),(119,9,59,2,NULL),(120,92,43,2,NULL),(121,7,79,2,NULL),(122,93,43,2,NULL),(123,9,79,2,NULL),(124,44,43,2,NULL),(125,7,80,2,NULL),(126,46,43,2,NULL),(127,9,80,2,NULL),(128,105,43,2,NULL),(129,7,81,2,NULL),(130,106,43,2,NULL),(131,9,81,2,NULL),(132,107,43,2,NULL),(133,7,60,2,NULL),(134,108,43,2,NULL),(135,9,60,2,NULL),(136,109,43,2,NULL),(137,7,67,2,NULL),(138,110,43,2,NULL),(139,9,67,2,NULL),(140,111,43,2,NULL),(141,7,70,2,NULL),(142,112,43,2,NULL),(143,9,70,2,NULL),(144,94,43,2,NULL),(145,7,71,2,NULL),(146,95,43,2,NULL),(147,9,71,2,NULL),(148,119,43,2,NULL),(149,7,72,2,NULL),(150,104,43,2,NULL),(151,9,72,2,NULL),(152,102,43,2,NULL),(153,7,77,2,NULL),(154,120,43,2,NULL),(155,9,77,2,NULL),(156,121,43,2,NULL),(157,7,78,2,NULL),(158,26,45,2,NULL),(159,9,78,2,NULL),(160,27,45,2,NULL),(161,26,4,2,NULL),(162,18,45,2,NULL),(163,27,4,2,NULL),(164,19,45,2,NULL),(165,18,4,2,NULL),(166,22,45,2,NULL),(167,19,4,2,NULL),(168,24,45,2,NULL),(169,22,4,2,NULL),(170,25,45,2,NULL),(171,24,4,2,NULL),(172,85,45,2,NULL),(173,25,4,2,NULL),(174,49,45,2,NULL),(175,85,4,2,NULL),(176,51,45,2,NULL),(177,49,4,2,NULL),(178,52,45,2,NULL),(179,51,4,2,NULL),(180,53,45,2,NULL),(181,52,4,2,NULL),(182,67,45,2,NULL),(183,53,4,2,NULL),(184,68,45,2,NULL),(185,67,4,2,NULL),(186,69,45,2,NULL),(187,68,4,2,NULL),(188,70,45,2,NULL),(189,69,4,2,NULL),(190,71,45,2,NULL),(191,70,4,2,NULL),(192,72,45,2,NULL),(193,71,4,2,NULL),(194,73,45,2,NULL),(195,72,4,2,NULL),(196,74,45,2,NULL),(197,73,4,2,NULL),(198,77,45,2,NULL),(199,74,4,2,NULL),(200,79,45,2,NULL),(201,77,4,2,NULL),(202,80,45,2,NULL),(203,79,4,2,NULL),(204,81,45,2,NULL),(205,80,4,2,NULL),(206,86,45,2,NULL),(207,81,4,2,NULL),(208,87,45,2,NULL),(209,86,4,2,NULL),(210,88,45,2,NULL),(211,87,4,2,NULL),(212,89,45,2,NULL),(213,88,4,2,NULL),(214,90,45,2,NULL),(215,89,4,2,NULL),(216,91,45,2,NULL),(217,90,4,2,NULL),(218,92,45,2,NULL),(219,91,4,2,NULL),(220,93,45,2,NULL),(221,92,4,2,NULL),(222,44,45,2,NULL),(223,93,4,2,NULL),(224,46,45,2,NULL),(225,44,4,2,NULL),(226,105,45,2,NULL),(227,46,4,2,NULL),(228,106,45,2,NULL),(229,105,4,2,NULL),(230,107,45,2,NULL),(231,106,4,2,NULL),(232,108,45,2,NULL),(233,107,4,2,NULL),(234,109,45,2,NULL),(235,108,4,2,NULL),(236,110,45,2,NULL),(237,109,4,2,NULL),(238,111,45,2,NULL),(239,110,4,2,NULL),(240,112,45,2,NULL),(241,111,4,2,NULL),(242,94,45,2,NULL),(243,112,4,2,NULL),(244,95,45,2,NULL),(245,94,4,2,NULL),(246,119,45,2,NULL),(247,95,4,2,NULL),(248,104,45,2,NULL),(249,119,4,2,NULL),(250,102,45,2,NULL),(251,104,4,2,NULL),(252,120,45,2,NULL),(253,102,4,2,NULL),(254,121,45,2,NULL),(255,120,4,2,NULL),(256,26,46,2,NULL),(257,121,4,2,NULL),(258,27,46,2,NULL),(259,1,5,2,NULL),(260,18,46,2,NULL),(261,1,16,2,NULL),(262,19,46,2,NULL),(263,1,22,2,NULL),(264,22,46,2,NULL),(265,1,30,2,NULL),(266,24,46,2,NULL),(267,1,44,2,NULL),(268,25,46,2,NULL),(269,1,58,2,NULL),(270,85,46,2,NULL),(271,1,69,2,NULL),(272,49,46,2,NULL),(273,2,5,2,NULL),(274,51,46,2,NULL),(275,2,16,2,NULL),(276,52,46,2,NULL),(277,2,22,2,NULL),(278,53,46,2,NULL),(279,2,30,2,NULL),(280,67,46,2,NULL),(281,2,44,2,NULL),(282,68,46,2,NULL),(283,2,58,2,NULL),(284,69,46,2,NULL),(285,2,69,2,NULL),(286,70,46,2,NULL),(287,3,1,2,NULL),(288,71,46,2,NULL),(289,3,7,2,NULL),(290,72,46,2,NULL),(291,4,1,2,NULL),(292,73,46,2,NULL),(293,4,7,2,NULL),(294,74,46,2,NULL),(295,77,46,2,NULL),(296,79,46,2,NULL),(297,80,46,2,NULL),(298,81,46,2,NULL),(299,86,46,2,NULL),(300,87,46,2,NULL),(301,88,46,2,NULL),(302,89,46,2,NULL),(303,90,46,2,NULL),(304,91,46,2,NULL),(305,92,46,2,NULL),(306,93,46,2,NULL),(307,44,46,2,NULL),(308,46,46,2,NULL),(309,105,46,2,NULL),(310,106,46,2,NULL),(311,107,46,2,NULL),(312,108,46,2,NULL),(313,109,46,2,NULL),(314,110,46,2,NULL),(315,111,46,2,NULL),(316,112,46,2,NULL),(317,94,46,2,NULL),(318,95,46,2,NULL),(319,119,46,2,NULL),(320,104,46,2,NULL),(321,102,46,2,NULL),(322,120,46,2,NULL),(323,121,46,2,NULL),(324,26,51,2,NULL),(325,27,51,2,NULL),(326,18,51,2,NULL),(327,19,51,2,NULL),(328,22,51,2,NULL),(329,24,51,2,NULL),(330,25,51,2,NULL),(331,85,51,2,NULL),(332,49,51,2,NULL),(333,51,51,2,NULL),(334,52,51,2,NULL),(335,53,51,2,NULL),(336,67,51,2,NULL),(337,68,51,2,NULL),(338,69,51,2,NULL),(339,70,51,2,NULL),(340,71,51,2,NULL),(341,72,51,2,NULL),(342,73,51,2,NULL),(343,74,51,2,NULL),(344,77,51,2,NULL),(345,79,51,2,NULL),(346,80,51,2,NULL),(347,81,51,2,NULL),(348,86,51,2,NULL),(349,87,51,2,NULL),(350,88,51,2,NULL),(351,89,51,2,NULL),(352,90,51,2,NULL),(353,91,51,2,NULL),(354,92,51,2,NULL),(355,93,51,2,NULL),(356,44,51,2,NULL),(357,46,51,2,NULL),(358,105,51,2,NULL),(359,106,51,2,NULL),(360,107,51,2,NULL),(361,108,51,2,NULL),(362,109,51,2,NULL),(363,110,51,2,NULL),(364,111,51,2,NULL),(365,112,51,2,NULL),(366,94,51,2,NULL),(367,95,51,2,NULL),(368,119,51,2,NULL),(369,104,51,2,NULL),(370,102,51,2,NULL),(371,120,51,2,NULL),(372,121,51,2,NULL),(373,58,54,2,NULL),(374,84,53,2,NULL),(375,85,6,2,NULL),(376,85,9,2,NULL),(377,26,52,2,NULL),(378,27,52,2,NULL),(379,18,52,2,NULL),(380,19,52,2,NULL),(381,22,52,2,NULL),(382,24,52,2,NULL),(383,25,52,2,NULL),(384,85,17,2,NULL),(385,85,20,2,NULL),(386,85,23,2,NULL),(387,85,31,2,NULL),(388,85,34,2,NULL),(389,85,21,2,NULL),(390,85,26,2,NULL),(391,85,32,2,NULL),(392,85,33,2,NULL),(393,85,35,2,NULL),(394,49,52,2,NULL),(395,51,52,2,NULL),(396,52,52,2,NULL),(397,53,52,2,NULL),(398,67,52,2,NULL),(399,68,52,2,NULL),(400,69,52,2,NULL),(401,70,52,2,NULL),(402,71,52,2,NULL),(403,72,52,2,NULL),(404,73,52,2,NULL),(405,74,52,2,NULL),(406,77,52,2,NULL),(407,79,52,2,NULL),(408,80,52,2,NULL),(409,81,52,2,NULL),(410,86,52,2,NULL),(411,87,52,2,NULL),(412,88,52,2,NULL),(413,89,52,2,NULL),(414,90,52,2,NULL),(415,91,52,2,NULL),(416,92,52,2,NULL),(417,93,52,2,NULL),(418,44,52,2,NULL),(419,46,52,2,NULL),(420,85,59,2,NULL),(421,85,79,2,NULL),(422,85,80,2,NULL),(423,85,81,2,NULL),(424,85,60,2,NULL),(425,105,52,2,NULL),(426,106,52,2,NULL),(427,107,52,2,NULL),(428,108,52,2,NULL),(429,109,52,2,NULL),(430,110,52,2,NULL),(431,111,52,2,NULL),(432,112,52,2,NULL),(433,94,52,2,NULL),(434,95,52,2,NULL),(435,85,67,2,NULL),(436,85,70,2,NULL),(437,85,71,2,NULL),(438,85,72,2,NULL),(439,119,52,2,NULL),(440,104,52,2,NULL),(441,102,52,2,NULL),(442,120,52,2,NULL),(443,121,52,2,NULL),(444,85,77,2,NULL),(445,85,78,2,NULL),(446,40,55,2,NULL),(447,49,6,2,NULL),(448,51,6,2,NULL),(449,52,6,2,NULL),(450,53,6,2,NULL),(451,67,6,2,NULL),(452,68,6,2,NULL),(453,69,6,2,NULL),(454,70,6,2,NULL),(455,71,6,2,NULL),(456,72,6,2,NULL),(457,73,6,2,NULL),(458,74,6,2,NULL),(459,77,6,2,NULL),(460,79,6,2,NULL),(461,80,6,2,NULL),(462,81,6,2,NULL),(463,86,6,2,NULL),(464,87,6,2,NULL),(465,88,6,2,NULL),(466,89,6,2,NULL),(467,90,6,2,NULL),(468,91,6,2,NULL),(469,92,6,2,NULL),(470,93,6,2,NULL),(471,49,9,2,NULL),(472,51,9,2,NULL),(473,52,9,2,NULL),(474,53,9,2,NULL),(475,67,9,2,NULL),(476,68,9,2,NULL),(477,69,9,2,NULL),(478,70,9,2,NULL),(479,71,9,2,NULL),(480,72,9,2,NULL),(481,73,9,2,NULL),(482,74,9,2,NULL),(483,77,9,2,NULL),(484,79,9,2,NULL),(485,80,9,2,NULL),(486,81,9,2,NULL),(487,86,9,2,NULL),(488,87,9,2,NULL),(489,88,9,2,NULL),(490,89,9,2,NULL),(491,90,9,2,NULL),(492,91,9,2,NULL),(493,92,9,2,NULL),(494,93,9,2,NULL),(495,49,17,2,NULL),(496,51,17,2,NULL),(497,52,17,2,NULL),(498,53,17,2,NULL),(499,67,17,2,NULL),(500,68,17,2,NULL),(501,69,17,2,NULL),(502,70,17,2,NULL),(503,71,17,2,NULL),(504,72,17,2,NULL),(505,73,17,2,NULL),(506,74,17,2,NULL),(507,77,17,2,NULL),(508,79,17,2,NULL),(509,80,17,2,NULL),(510,81,17,2,NULL),(511,86,17,2,NULL),(512,87,17,2,NULL),(513,88,17,2,NULL),(514,89,17,2,NULL),(515,90,17,2,NULL),(516,91,17,2,NULL),(517,92,17,2,NULL),(518,93,17,2,NULL),(519,49,20,2,NULL),(520,51,20,2,NULL),(521,52,20,2,NULL),(522,53,20,2,NULL),(523,67,20,2,NULL),(524,68,20,2,NULL),(525,69,20,2,NULL),(526,70,20,2,NULL),(527,71,20,2,NULL),(528,72,20,2,NULL),(529,73,20,2,NULL),(530,74,20,2,NULL),(531,77,20,2,NULL),(532,79,20,2,NULL),(533,80,20,2,NULL),(534,81,20,2,NULL),(535,86,20,2,NULL),(536,87,20,2,NULL),(537,88,20,2,NULL),(538,89,20,2,NULL),(539,90,20,2,NULL),(540,91,20,2,NULL),(541,92,20,2,NULL),(542,93,20,2,NULL),(543,49,23,2,NULL),(544,51,23,2,NULL),(545,52,23,2,NULL),(546,53,23,2,NULL),(547,67,23,2,NULL),(548,68,23,2,NULL),(549,69,23,2,NULL),(550,70,23,2,NULL),(551,71,23,2,NULL),(552,72,23,2,NULL),(553,73,23,2,NULL),(554,74,23,2,NULL),(555,77,23,2,NULL),(556,79,23,2,NULL),(557,80,23,2,NULL),(558,81,23,2,NULL),(559,86,23,2,NULL),(560,87,23,2,NULL),(561,88,23,2,NULL),(562,89,23,2,NULL),(563,90,23,2,NULL),(564,91,23,2,NULL),(565,92,23,2,NULL),(566,93,23,2,NULL),(567,49,31,2,NULL),(568,51,31,2,NULL),(569,52,31,2,NULL),(570,53,31,2,NULL),(571,67,31,2,NULL),(572,68,31,2,NULL),(573,69,31,2,NULL),(574,70,31,2,NULL),(575,71,31,2,NULL),(576,72,31,2,NULL),(577,73,31,2,NULL),(578,74,31,2,NULL),(579,77,31,2,NULL),(580,79,31,2,NULL),(581,80,31,2,NULL),(582,81,31,2,NULL),(583,86,31,2,NULL),(584,87,31,2,NULL),(585,88,31,2,NULL),(586,89,31,2,NULL),(587,90,31,2,NULL),(588,91,31,2,NULL),(589,92,31,2,NULL),(590,93,31,2,NULL),(591,49,34,2,NULL),(592,51,34,2,NULL),(593,52,34,2,NULL),(594,53,34,2,NULL),(595,67,34,2,NULL),(596,68,34,2,NULL),(597,69,34,2,NULL),(598,70,34,2,NULL),(599,71,34,2,NULL),(600,72,34,2,NULL),(601,73,34,2,NULL),(602,74,34,2,NULL),(603,77,34,2,NULL),(604,79,34,2,NULL),(605,80,34,2,NULL),(606,81,34,2,NULL),(607,86,34,2,NULL),(608,87,34,2,NULL),(609,88,34,2,NULL),(610,89,34,2,NULL),(611,90,34,2,NULL),(612,91,34,2,NULL),(613,92,34,2,NULL),(614,93,34,2,NULL),(615,49,21,2,NULL),(616,51,21,2,NULL),(617,52,21,2,NULL),(618,53,21,2,NULL),(619,67,21,2,NULL),(620,68,21,2,NULL),(621,69,21,2,NULL),(622,70,21,2,NULL),(623,71,21,2,NULL),(624,72,21,2,NULL),(625,73,21,2,NULL),(626,74,21,2,NULL),(627,77,21,2,NULL),(628,79,21,2,NULL),(629,80,21,2,NULL),(630,81,21,2,NULL),(631,86,21,2,NULL),(632,87,21,2,NULL),(633,88,21,2,NULL),(634,89,21,2,NULL),(635,90,21,2,NULL),(636,91,21,2,NULL),(637,92,21,2,NULL),(638,93,21,2,NULL),(639,49,26,2,NULL),(640,51,26,2,NULL),(641,52,26,2,NULL),(642,53,26,2,NULL),(643,67,26,2,NULL),(644,68,26,2,NULL),(645,69,26,2,NULL),(646,70,26,2,NULL),(647,71,26,2,NULL),(648,72,26,2,NULL),(649,73,26,2,NULL),(650,74,26,2,NULL),(651,77,26,2,NULL),(652,79,26,2,NULL),(653,80,26,2,NULL),(654,81,26,2,NULL),(655,86,26,2,NULL),(656,87,26,2,NULL),(657,88,26,2,NULL),(658,89,26,2,NULL),(659,90,26,2,NULL),(660,91,26,2,NULL),(661,92,26,2,NULL),(662,93,26,2,NULL),(663,49,32,2,NULL),(664,51,32,2,NULL),(665,52,32,2,NULL),(666,53,32,2,NULL),(667,67,32,2,NULL),(668,68,32,2,NULL),(669,69,32,2,NULL),(670,70,32,2,NULL),(671,71,32,2,NULL),(672,72,32,2,NULL),(673,73,32,2,NULL),(674,74,32,2,NULL),(675,77,32,2,NULL),(676,79,32,2,NULL),(677,80,32,2,NULL),(678,81,32,2,NULL),(679,86,32,2,NULL),(680,87,32,2,NULL),(681,88,32,2,NULL),(682,89,32,2,NULL),(683,90,32,2,NULL),(684,91,32,2,NULL),(685,92,32,2,NULL),(686,93,32,2,NULL),(687,49,33,2,NULL),(688,51,33,2,NULL),(689,52,33,2,NULL),(690,53,33,2,NULL),(691,67,33,2,NULL),(692,68,33,2,NULL),(693,69,33,2,NULL),(694,70,33,2,NULL),(695,71,33,2,NULL),(696,72,33,2,NULL),(697,73,33,2,NULL),(698,74,33,2,NULL),(699,77,33,2,NULL),(700,79,33,2,NULL),(701,80,33,2,NULL),(702,81,33,2,NULL),(703,86,33,2,NULL),(704,87,33,2,NULL),(705,88,33,2,NULL),(706,89,33,2,NULL),(707,90,33,2,NULL),(708,91,33,2,NULL),(709,92,33,2,NULL),(710,93,33,2,NULL),(711,49,35,2,NULL),(712,51,35,2,NULL),(713,52,35,2,NULL),(714,53,35,2,NULL),(715,67,35,2,NULL),(716,68,35,2,NULL),(717,69,35,2,NULL),(718,70,35,2,NULL),(719,71,35,2,NULL),(720,72,35,2,NULL),(721,73,35,2,NULL),(722,74,35,2,NULL),(723,77,35,2,NULL),(724,79,35,2,NULL),(725,80,35,2,NULL),(726,81,35,2,NULL),(727,86,35,2,NULL),(728,87,35,2,NULL),(729,88,35,2,NULL),(730,89,35,2,NULL),(731,90,35,2,NULL),(732,91,35,2,NULL),(733,92,35,2,NULL),(734,93,35,2,NULL),(735,49,59,2,NULL),(736,51,59,2,NULL),(737,52,59,2,NULL),(738,53,59,2,NULL),(739,67,59,2,NULL),(740,68,59,2,NULL),(741,69,59,2,NULL),(742,70,59,2,NULL),(743,117,61,2,NULL),(744,71,59,2,NULL),(745,118,63,2,NULL),(746,72,59,2,NULL),(747,26,60,2,NULL),(748,73,59,2,NULL),(749,27,60,2,NULL),(750,74,59,2,NULL),(751,18,60,2,NULL),(752,77,59,2,NULL),(753,19,60,2,NULL),(754,79,59,2,NULL),(755,22,60,2,NULL),(756,80,59,2,NULL),(757,24,60,2,NULL),(758,81,59,2,NULL),(759,25,60,2,NULL),(760,86,59,2,NULL),(761,49,60,2,NULL),(762,87,59,2,NULL),(763,51,60,2,NULL),(764,88,59,2,NULL),(765,52,60,2,NULL),(766,89,59,2,NULL),(767,53,60,2,NULL),(768,90,59,2,NULL),(769,67,60,2,NULL),(770,91,59,2,NULL),(771,68,60,2,NULL),(772,92,59,2,NULL),(773,69,60,2,NULL),(774,93,59,2,NULL),(775,70,60,2,NULL),(776,49,79,2,NULL),(777,71,60,2,NULL),(778,51,79,2,NULL),(779,72,60,2,NULL),(780,52,79,2,NULL),(781,73,60,2,NULL),(782,53,79,2,NULL),(783,74,60,2,NULL),(784,67,79,2,NULL),(785,77,60,2,NULL),(786,68,79,2,NULL),(787,79,60,2,NULL),(788,69,79,2,NULL),(789,80,60,2,NULL),(790,70,79,2,NULL),(791,81,60,2,NULL),(792,71,79,2,NULL),(793,86,60,2,NULL),(794,72,79,2,NULL),(795,87,60,2,NULL),(796,73,79,2,NULL),(797,88,60,2,NULL),(798,74,79,2,NULL),(799,89,60,2,NULL),(800,77,79,2,NULL),(801,90,60,2,NULL),(802,79,79,2,NULL),(803,91,60,2,NULL),(804,80,79,2,NULL),(805,92,60,2,NULL),(806,81,79,2,NULL),(807,93,60,2,NULL),(808,86,79,2,NULL),(809,44,60,2,NULL),(810,87,79,2,NULL),(811,46,60,2,NULL),(812,88,79,2,NULL),(813,105,60,2,NULL),(814,89,79,2,NULL),(815,106,60,2,NULL),(816,90,79,2,NULL),(817,107,60,2,NULL),(818,91,79,2,NULL),(819,108,60,2,NULL),(820,92,79,2,NULL),(821,109,60,2,NULL),(822,93,79,2,NULL),(823,110,60,2,NULL),(824,49,80,2,NULL),(825,111,60,2,NULL),(826,51,80,2,NULL),(827,112,60,2,NULL),(828,52,80,2,NULL),(829,94,60,2,NULL),(830,53,80,2,NULL),(831,95,60,2,NULL),(832,67,80,2,NULL),(833,119,60,2,NULL),(834,68,80,2,NULL),(835,104,60,2,NULL),(836,69,80,2,NULL),(837,102,60,2,NULL),(838,70,80,2,NULL),(839,120,60,2,NULL),(840,71,80,2,NULL),(841,121,60,2,NULL),(842,72,80,2,NULL),(843,99,63,2,NULL),(844,73,80,2,NULL),(845,105,6,2,NULL),(846,74,80,2,NULL),(847,106,6,2,NULL),(848,77,80,2,NULL),(849,107,6,2,NULL),(850,79,80,2,NULL),(851,108,6,2,NULL),(852,80,80,2,NULL),(853,109,6,2,NULL),(854,81,80,2,NULL),(855,110,6,2,NULL),(856,86,80,2,NULL),(857,111,6,2,NULL),(858,87,80,2,NULL),(859,112,6,2,NULL),(860,88,80,2,NULL),(861,105,9,2,NULL),(862,89,80,2,NULL),(863,106,9,2,NULL),(864,90,80,2,NULL),(865,107,9,2,NULL),(866,91,80,2,NULL),(867,108,9,2,NULL),(868,92,80,2,NULL),(869,109,9,2,NULL),(870,93,80,2,NULL),(871,110,9,2,NULL),(872,49,81,2,NULL),(873,111,9,2,NULL),(874,51,81,2,NULL),(875,112,9,2,NULL),(876,52,81,2,NULL),(877,105,17,2,NULL),(878,53,81,2,NULL),(879,106,17,2,NULL),(880,67,81,2,NULL),(881,107,17,2,NULL),(882,68,81,2,NULL),(883,108,17,2,NULL),(884,69,81,2,NULL),(885,109,17,2,NULL),(886,70,81,2,NULL),(887,110,17,2,NULL),(888,71,81,2,NULL),(889,111,17,2,NULL),(890,72,81,2,NULL),(891,112,17,2,NULL),(892,73,81,2,NULL),(893,105,20,2,NULL),(894,74,81,2,NULL),(895,106,20,2,NULL),(896,77,81,2,NULL),(897,107,20,2,NULL),(898,79,81,2,NULL),(899,108,20,2,NULL),(900,80,81,2,NULL),(901,109,20,2,NULL),(902,81,81,2,NULL),(903,110,20,2,NULL),(904,86,81,2,NULL),(905,111,20,2,NULL),(906,87,81,2,NULL),(907,112,20,2,NULL),(908,88,81,2,NULL),(909,105,23,2,NULL),(910,89,81,2,NULL),(911,106,23,2,NULL),(912,90,81,2,NULL),(913,107,23,2,NULL),(914,91,81,2,NULL),(915,108,23,2,NULL),(916,92,81,2,NULL),(917,109,23,2,NULL),(918,93,81,2,NULL),(919,110,23,2,NULL),(920,49,67,2,NULL),(921,111,23,2,NULL),(922,51,67,2,NULL),(923,112,23,2,NULL),(924,52,67,2,NULL),(925,105,31,2,NULL),(926,53,67,2,NULL),(927,106,31,2,NULL),(928,67,67,2,NULL),(929,107,31,2,NULL),(930,68,67,2,NULL),(931,108,31,2,NULL),(932,69,67,2,NULL),(933,109,31,2,NULL),(934,70,67,2,NULL),(935,110,31,2,NULL),(936,71,67,2,NULL),(937,111,31,2,NULL),(938,72,67,2,NULL),(939,112,31,2,NULL),(940,73,67,2,NULL),(941,105,34,2,NULL),(942,74,67,2,NULL),(943,106,34,2,NULL),(944,77,67,2,NULL),(945,107,34,2,NULL),(946,79,67,2,NULL),(947,108,34,2,NULL),(948,80,67,2,NULL),(949,109,34,2,NULL),(950,81,67,2,NULL),(951,110,34,2,NULL),(952,86,67,2,NULL),(953,111,34,2,NULL),(954,87,67,2,NULL),(955,112,34,2,NULL),(956,88,67,2,NULL),(957,105,21,2,NULL),(958,89,67,2,NULL),(959,106,21,2,NULL),(960,90,67,2,NULL),(961,107,21,2,NULL),(962,91,67,2,NULL),(963,108,21,2,NULL),(964,92,67,2,NULL),(965,109,21,2,NULL),(966,93,67,2,NULL),(967,110,21,2,NULL),(968,49,70,2,NULL),(969,111,21,2,NULL),(970,51,70,2,NULL),(971,112,21,2,NULL),(972,52,70,2,NULL),(973,105,26,2,NULL),(974,53,70,2,NULL),(975,106,26,2,NULL),(976,67,70,2,NULL),(977,107,26,2,NULL),(978,68,70,2,NULL),(979,108,26,2,NULL),(980,69,70,2,NULL),(981,109,26,2,NULL),(982,70,70,2,NULL),(983,110,26,2,NULL),(984,71,70,2,NULL),(985,111,26,2,NULL),(986,72,70,2,NULL),(987,112,26,2,NULL),(988,73,70,2,NULL),(989,105,32,2,NULL),(990,74,70,2,NULL),(991,106,32,2,NULL),(992,77,70,2,NULL),(993,107,32,2,NULL),(994,79,70,2,NULL),(995,108,32,2,NULL),(996,80,70,2,NULL),(997,109,32,2,NULL),(998,81,70,2,NULL),(999,110,32,2,NULL),(1000,86,70,2,NULL),(1001,111,32,2,NULL),(1002,87,70,2,NULL),(1003,112,32,2,NULL),(1004,88,70,2,NULL),(1005,105,33,2,NULL),(1006,89,70,2,NULL),(1007,106,33,2,NULL),(1008,90,70,2,NULL),(1009,107,33,2,NULL),(1010,91,70,2,NULL),(1011,108,33,2,NULL),(1012,92,70,2,NULL),(1013,109,33,2,NULL),(1014,93,70,2,NULL),(1015,110,33,2,NULL),(1016,49,71,2,NULL),(1017,111,33,2,NULL),(1018,51,71,2,NULL),(1019,112,33,2,NULL),(1020,52,71,2,NULL),(1021,105,35,2,NULL),(1022,53,71,2,NULL),(1023,106,35,2,NULL),(1024,67,71,2,NULL),(1025,107,35,2,NULL),(1026,68,71,2,NULL),(1027,108,35,2,NULL),(1028,69,71,2,NULL),(1029,109,35,2,NULL),(1030,70,71,2,NULL),(1031,110,35,2,NULL),(1032,71,71,2,NULL),(1033,111,35,2,NULL),(1034,72,71,2,NULL),(1035,112,35,2,NULL),(1036,73,71,2,NULL),(1037,105,59,2,NULL),(1038,74,71,2,NULL),(1039,106,59,2,NULL),(1040,77,71,2,NULL),(1041,107,59,2,NULL),(1042,79,71,2,NULL),(1043,108,59,2,NULL),(1044,80,71,2,NULL),(1045,109,59,2,NULL),(1046,81,71,2,NULL),(1047,110,59,2,NULL),(1048,86,71,2,NULL),(1049,111,59,2,NULL),(1050,87,71,2,NULL),(1051,112,59,2,NULL),(1052,88,71,2,NULL),(1053,105,79,2,NULL),(1054,89,71,2,NULL),(1055,106,79,2,NULL),(1056,90,71,2,NULL),(1057,107,79,2,NULL),(1058,91,71,2,NULL),(1059,108,79,2,NULL),(1060,92,71,2,NULL),(1061,109,79,2,NULL),(1062,93,71,2,NULL),(1063,110,79,2,NULL),(1064,49,72,2,NULL),(1065,111,79,2,NULL),(1066,51,72,2,NULL),(1067,112,79,2,NULL),(1068,52,72,2,NULL),(1069,105,80,2,NULL),(1070,53,72,2,NULL),(1071,106,80,2,NULL),(1072,67,72,2,NULL),(1073,107,80,2,NULL),(1074,68,72,2,NULL),(1075,108,80,2,NULL),(1076,69,72,2,NULL),(1077,109,80,2,NULL),(1078,70,72,2,NULL),(1079,110,80,2,NULL),(1080,71,72,2,NULL),(1081,111,80,2,NULL),(1082,72,72,2,NULL),(1083,112,80,2,NULL),(1084,73,72,2,NULL),(1085,105,81,2,NULL),(1086,74,72,2,NULL),(1087,106,81,2,NULL),(1088,77,72,2,NULL),(1089,107,81,2,NULL),(1090,79,72,2,NULL),(1091,108,81,2,NULL),(1092,80,72,2,NULL),(1093,109,81,2,NULL),(1094,81,72,2,NULL),(1095,110,81,2,NULL),(1096,86,72,2,NULL),(1097,111,81,2,NULL),(1098,87,72,2,NULL),(1099,112,81,2,NULL),(1100,88,72,2,NULL),(1101,105,67,2,NULL),(1102,89,72,2,NULL),(1103,106,67,2,NULL),(1104,90,72,2,NULL),(1105,107,67,2,NULL),(1106,91,72,2,NULL),(1107,108,67,2,NULL),(1108,92,72,2,NULL),(1109,109,67,2,NULL),(1110,93,72,2,NULL),(1111,110,67,2,NULL),(1112,49,77,2,NULL),(1113,111,67,2,NULL),(1114,51,77,2,NULL),(1115,112,67,2,NULL),(1116,52,77,2,NULL),(1117,105,70,2,NULL),(1118,53,77,2,NULL),(1119,106,70,2,NULL),(1120,67,77,2,NULL),(1121,107,70,2,NULL),(1122,68,77,2,NULL),(1123,108,70,2,NULL),(1124,69,77,2,NULL),(1125,109,70,2,NULL),(1126,70,77,2,NULL),(1127,110,70,2,NULL),(1128,71,77,2,NULL),(1129,111,70,2,NULL),(1130,72,77,2,NULL),(1131,112,70,2,NULL),(1132,73,77,2,NULL),(1133,105,71,2,NULL),(1134,74,77,2,NULL),(1135,106,71,2,NULL),(1136,77,77,2,NULL),(1137,107,71,2,NULL),(1138,79,77,2,NULL),(1139,108,71,2,NULL),(1140,80,77,2,NULL),(1141,109,71,2,NULL),(1142,81,77,2,NULL),(1143,110,71,2,NULL),(1144,86,77,2,NULL),(1145,111,71,2,NULL),(1146,87,77,2,NULL),(1147,112,71,2,NULL),(1148,88,77,2,NULL),(1149,105,72,2,NULL),(1150,89,77,2,NULL),(1151,106,72,2,NULL),(1152,90,77,2,NULL),(1153,107,72,2,NULL),(1154,91,77,2,NULL),(1155,108,72,2,NULL),(1156,92,77,2,NULL),(1157,109,72,2,NULL),(1158,93,77,2,NULL),(1159,110,72,2,NULL),(1160,49,78,2,NULL),(1161,111,72,2,NULL),(1162,51,78,2,NULL),(1163,112,72,2,NULL),(1164,52,78,2,NULL),(1165,105,77,2,NULL),(1166,53,78,2,NULL),(1167,106,77,2,NULL),(1168,67,78,2,NULL),(1169,107,77,2,NULL),(1170,68,78,2,NULL),(1171,108,77,2,NULL),(1172,69,78,2,NULL),(1173,109,77,2,NULL),(1174,70,78,2,NULL),(1175,110,77,2,NULL),(1176,71,78,2,NULL),(1177,111,77,2,NULL),(1178,72,78,2,NULL),(1179,112,77,2,NULL),(1180,73,78,2,NULL),(1181,105,78,2,NULL),(1182,74,78,2,NULL),(1183,106,78,2,NULL),(1184,77,78,2,NULL),(1185,107,78,2,NULL),(1186,79,78,2,NULL),(1187,108,78,2,NULL),(1188,80,78,2,NULL),(1189,109,78,2,NULL),(1190,81,78,2,NULL),(1191,110,78,2,NULL),(1192,86,78,2,NULL),(1193,111,78,2,NULL),(1194,87,78,2,NULL),(1195,112,78,2,NULL),(1196,88,78,2,NULL),(1197,94,6,2,NULL),(1198,89,78,2,NULL),(1199,95,6,2,NULL),(1200,90,78,2,NULL),(1201,94,9,2,NULL),(1202,91,78,2,NULL),(1203,95,9,2,NULL),(1204,92,78,2,NULL),(1205,94,17,2,NULL),(1206,93,78,2,NULL),(1207,95,17,2,NULL),(1208,44,6,2,NULL),(1209,94,20,2,NULL),(1210,46,6,2,NULL),(1211,95,20,2,NULL),(1212,44,9,2,NULL),(1213,94,23,2,NULL),(1214,46,9,2,NULL),(1215,95,23,2,NULL),(1216,44,17,2,NULL),(1217,94,31,2,NULL),(1218,46,17,2,NULL),(1219,95,31,2,NULL),(1220,44,20,2,NULL),(1221,94,34,2,NULL),(1222,46,20,2,NULL),(1223,95,34,2,NULL),(1224,44,23,2,NULL),(1225,94,21,2,NULL),(1226,46,23,2,NULL),(1227,95,21,2,NULL),(1228,44,31,2,NULL),(1229,94,26,2,NULL),(1230,46,31,2,NULL),(1231,95,26,2,NULL),(1232,44,34,2,NULL),(1233,94,32,2,NULL),(1234,46,34,2,NULL),(1235,95,32,2,NULL),(1236,44,21,2,NULL),(1237,94,33,2,NULL),(1238,46,21,2,NULL),(1239,95,33,2,NULL),(1240,44,26,2,NULL),(1241,94,35,2,NULL),(1242,46,26,2,NULL),(1243,95,35,2,NULL),(1244,44,32,2,NULL),(1245,94,59,2,NULL),(1246,46,32,2,NULL),(1247,95,59,2,NULL),(1248,44,33,2,NULL),(1249,94,79,2,NULL),(1250,46,33,2,NULL),(1251,95,79,2,NULL),(1252,44,35,2,NULL),(1253,94,80,2,NULL),(1254,46,35,2,NULL),(1255,95,80,2,NULL),(1256,44,59,2,NULL),(1257,94,81,2,NULL),(1258,46,59,2,NULL),(1259,95,81,2,NULL),(1260,44,79,2,NULL),(1261,94,67,2,NULL),(1262,46,79,2,NULL),(1263,95,67,2,NULL),(1264,44,80,2,NULL),(1265,94,70,2,NULL),(1266,46,80,2,NULL),(1267,95,70,2,NULL),(1268,44,81,2,NULL),(1269,94,71,2,NULL),(1270,46,81,2,NULL),(1271,95,71,2,NULL),(1272,44,67,2,NULL),(1273,94,72,2,NULL),(1274,46,67,2,NULL),(1275,95,72,2,NULL),(1276,44,70,2,NULL),(1277,94,77,2,NULL),(1278,46,70,2,NULL),(1279,95,77,2,NULL),(1280,44,71,2,NULL),(1281,94,78,2,NULL),(1282,46,71,2,NULL),(1283,95,78,2,NULL),(1284,44,72,2,NULL),(1285,26,67,2,NULL),(1286,46,72,2,NULL),(1287,27,67,2,NULL),(1288,44,77,2,NULL),(1289,18,67,2,NULL),(1290,46,77,2,NULL),(1291,19,67,2,NULL),(1292,44,78,2,NULL),(1293,22,67,2,NULL),(1294,46,78,2,NULL),(1295,24,67,2,NULL),(1296,63,5,2,NULL),(1297,25,67,2,NULL),(1298,63,16,2,NULL),(1299,63,22,2,NULL),(1300,119,67,2,NULL),(1301,63,30,2,NULL),(1302,104,67,2,NULL),(1303,63,44,2,NULL),(1304,102,67,2,NULL),(1305,63,58,2,NULL),(1306,120,67,2,NULL),(1307,63,69,2,NULL),(1308,121,67,2,NULL),(1309,64,5,2,NULL),(1310,96,5,2,NULL),(1311,64,16,2,NULL),(1312,96,16,2,NULL),(1313,64,22,2,NULL),(1314,96,22,2,NULL),(1315,64,30,2,NULL),(1316,96,30,2,NULL),(1317,64,44,2,NULL),(1318,96,44,2,NULL),(1319,64,58,2,NULL),(1320,96,58,2,NULL),(1321,64,69,2,NULL),(1322,96,69,2,NULL),(1323,26,59,2,NULL),(1324,26,70,2,NULL),(1325,27,59,2,NULL),(1326,27,70,2,NULL),(1327,18,59,2,NULL),(1328,18,70,2,NULL),(1329,19,59,2,NULL),(1330,19,70,2,NULL),(1331,22,59,2,NULL),(1332,22,70,2,NULL),(1333,24,59,2,NULL),(1334,24,70,2,NULL),(1335,25,59,2,NULL),(1336,25,70,2,NULL),(1337,119,59,2,NULL),(1338,119,70,2,NULL),(1339,104,59,2,NULL),(1340,104,70,2,NULL),(1341,102,59,2,NULL),(1342,102,70,2,NULL),(1343,120,59,2,NULL),(1344,120,70,2,NULL),(1345,121,59,2,NULL),(1346,121,70,2,NULL),(1347,26,79,2,NULL),(1348,26,71,2,NULL),(1349,27,79,2,NULL),(1350,27,71,2,NULL),(1351,18,79,2,NULL),(1352,18,71,2,NULL),(1353,19,79,2,NULL),(1354,19,71,2,NULL),(1355,22,79,2,NULL),(1356,22,71,2,NULL),(1357,24,79,2,NULL),(1358,24,71,2,NULL),(1359,25,79,2,NULL),(1360,25,71,2,NULL),(1361,119,79,2,NULL),(1362,119,71,2,NULL),(1363,104,79,2,NULL),(1364,104,71,2,NULL),(1365,102,79,2,NULL),(1366,102,71,2,NULL),(1367,120,79,2,NULL),(1368,120,71,2,NULL),(1369,121,79,2,NULL),(1370,121,71,2,NULL),(1371,26,80,2,NULL),(1372,116,66,2,NULL),(1373,27,80,2,NULL),(1374,26,72,2,NULL),(1375,18,80,2,NULL),(1376,27,72,2,NULL),(1377,19,80,2,NULL),(1378,18,72,2,NULL),(1379,22,80,2,NULL),(1380,19,72,2,NULL),(1381,24,80,2,NULL),(1382,22,72,2,NULL),(1383,25,80,2,NULL),(1384,24,72,2,NULL),(1385,119,80,2,NULL),(1386,25,72,2,NULL),(1387,104,80,2,NULL),(1388,119,72,2,NULL),(1389,102,80,2,NULL),(1390,104,72,2,NULL),(1391,120,80,2,NULL),(1392,102,72,2,NULL),(1393,121,80,2,NULL),(1394,120,72,2,NULL),(1395,26,81,2,NULL),(1396,121,72,2,NULL),(1397,27,81,2,NULL),(1398,119,6,2,NULL),(1399,18,81,2,NULL),(1400,119,9,2,NULL),(1401,19,81,2,NULL),(1402,119,17,2,NULL),(1403,22,81,2,NULL),(1404,119,20,2,NULL),(1405,24,81,2,NULL),(1406,119,23,2,NULL),(1407,25,81,2,NULL),(1408,119,31,2,NULL),(1409,119,81,2,NULL),(1410,119,34,2,NULL),(1411,104,81,2,NULL),(1412,119,21,2,NULL),(1413,102,81,2,NULL),(1414,119,26,2,NULL),(1415,120,81,2,NULL),(1416,119,32,2,NULL),(1417,121,81,2,NULL),(1418,119,33,2,NULL),(1419,119,35,2,NULL),(1420,119,77,2,NULL),(1421,119,78,2,NULL),(1422,104,6,2,NULL),(1423,104,9,2,NULL),(1424,104,17,2,NULL),(1425,104,20,2,NULL),(1426,104,23,2,NULL),(1427,104,31,2,NULL),(1428,104,34,2,NULL),(1429,104,21,2,NULL),(1430,104,26,2,NULL),(1431,104,32,2,NULL),(1432,104,33,2,NULL),(1433,104,35,2,NULL),(1434,104,77,2,NULL),(1435,104,78,2,NULL),(1436,102,6,2,NULL),(1437,120,6,2,NULL),(1438,121,6,2,NULL),(1439,102,9,2,NULL),(1440,120,9,2,NULL),(1441,121,9,2,NULL),(1442,102,17,2,NULL),(1443,120,17,2,NULL),(1444,121,17,2,NULL),(1445,102,20,2,NULL),(1446,120,20,2,NULL),(1447,121,20,2,NULL),(1448,102,23,2,NULL),(1449,120,23,2,NULL),(1450,121,23,2,NULL),(1451,102,31,2,NULL),(1452,120,31,2,NULL),(1453,121,31,2,NULL),(1454,102,34,2,NULL),(1455,120,34,2,NULL),(1456,121,34,2,NULL),(1457,102,21,2,NULL),(1458,120,21,2,NULL),(1459,121,21,2,NULL),(1460,102,26,2,NULL),(1461,120,26,2,NULL),(1462,121,26,2,NULL),(1463,102,32,2,NULL),(1464,120,32,2,NULL),(1465,121,32,2,NULL),(1466,102,33,2,NULL),(1467,120,33,2,NULL),(1468,121,33,2,NULL),(1469,102,35,2,NULL),(1470,120,35,2,NULL),(1471,121,35,2,NULL),(1472,102,77,2,NULL),(1473,120,77,2,NULL),(1474,121,77,2,NULL),(1475,102,78,2,NULL),(1476,120,78,2,NULL),(1477,121,78,2,NULL),(1478,26,77,2,NULL),(1479,27,77,2,NULL),(1480,18,77,2,NULL),(1481,19,77,2,NULL),(1482,22,77,2,NULL),(1483,24,77,2,NULL),(1484,25,77,2,NULL),(1485,26,78,2,NULL),(1486,27,78,2,NULL),(1487,18,78,2,NULL),(1488,19,78,2,NULL),(1489,22,78,2,NULL),(1490,24,78,2,NULL),(1491,25,78,2,NULL),(1492,37,11,2,NULL),(1493,26,6,2,NULL),(1494,27,6,2,NULL),(1495,18,6,2,NULL),(1496,19,6,2,NULL),(1497,22,6,2,NULL),(1498,24,6,2,NULL),(1499,25,6,2,NULL),(1500,26,9,2,NULL),(1501,27,9,2,NULL),(1502,18,9,2,NULL),(1503,19,9,2,NULL),(1504,22,9,2,NULL),(1505,24,9,2,NULL),(1506,25,9,2,NULL),(1507,26,17,2,NULL),(1508,27,17,2,NULL),(1509,26,20,2,NULL),(1510,27,20,2,NULL),(1511,26,23,2,NULL),(1512,27,23,2,NULL),(1513,26,31,2,NULL),(1514,27,31,2,NULL),(1515,26,34,2,NULL),(1516,27,34,2,NULL),(1517,26,21,2,NULL),(1518,27,21,2,NULL),(1519,26,26,2,NULL),(1520,27,26,2,NULL),(1521,26,32,2,NULL),(1522,27,32,2,NULL),(1523,26,33,2,NULL),(1524,27,33,2,NULL),(1525,26,35,2,NULL),(1526,27,35,2,NULL),(1527,14,14,2,NULL),(1528,15,14,2,NULL),(1529,18,17,2,NULL),(1530,19,17,2,NULL),(1531,22,17,2,NULL),(1532,24,17,2,NULL),(1533,25,17,2,NULL),(1534,18,20,2,NULL),(1535,19,20,2,NULL),(1536,22,20,2,NULL),(1537,24,20,2,NULL),(1538,25,20,2,NULL),(1539,18,23,2,NULL),(1540,19,23,2,NULL),(1541,22,23,2,NULL),(1542,24,23,2,NULL),(1543,25,23,2,NULL),(1544,18,31,2,NULL),(1545,19,31,2,NULL),(1546,22,31,2,NULL),(1547,24,31,2,NULL),(1548,25,31,2,NULL),(1549,18,34,2,NULL),(1550,19,34,2,NULL),(1551,22,34,2,NULL),(1552,24,34,2,NULL),(1553,25,34,2,NULL),(1554,18,21,2,NULL),(1555,19,21,2,NULL),(1556,22,21,2,NULL),(1557,24,21,2,NULL),(1558,25,21,2,NULL),(1559,18,26,2,NULL),(1560,19,26,2,NULL),(1561,22,26,2,NULL),(1562,24,26,2,NULL),(1563,25,26,2,NULL),(1564,18,32,2,NULL),(1565,19,32,2,NULL),(1566,22,32,2,NULL),(1567,24,32,2,NULL),(1568,25,32,2,NULL),(1569,18,33,2,NULL),(1570,19,33,2,NULL),(1571,22,33,2,NULL),(1572,24,33,2,NULL),(1573,25,33,2,NULL),(1574,18,35,2,NULL),(1575,19,35,2,NULL),(1576,22,35,2,NULL),(1577,24,35,2,NULL),(1578,25,35,2,NULL),(1579,29,5,2,NULL),(1580,29,16,2,NULL),(1581,29,22,2,NULL),(1582,29,30,2,NULL),(1583,29,44,2,NULL),(1584,29,58,2,NULL),(1585,29,69,2,NULL),(1586,30,5,2,NULL),(1587,30,16,2,NULL),(1588,30,22,2,NULL),(1589,30,30,2,NULL),(1590,30,44,2,NULL),(1591,30,58,2,NULL),(1592,30,69,2,NULL),(1593,38,1,2,NULL),(1594,38,7,2,NULL),(1595,39,1,2,NULL),(1596,39,7,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:33
