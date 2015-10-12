-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_678
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CHOOSER'),(15,'android.intent.action.DIAL'),(2,'android.intent.action.MAIN'),(25,'android.intent.action.PICK'),(17,'android.intent.action.VIEW'),(24,'android.media.action.IMAGE_CAPTURE'),(6,'android.service.wallpaper.WallpaperService'),(11,'com.airpush.android.PushServiceStart27194'),(8,'com.airpush.android.PushServiceStart31047'),(9,'com.airpush.android.PushServiceStart31929'),(10,'com.airpush.android.PushServiceStart37416'),(4,'com.airpush.android.PushServiceStart48482'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.android.vending.INSTALL_REFERRER'),(20,'com.apperhand.action.show.eula'),(18,'com.applovin.sdk.AppLovinService'),(7,'com.gau.go.launcherex.theme'),(14,'com.google.android.c2dm.intent.RECEIVE'),(13,'com.google.android.c2dm.intent.REGISTRATION'),(23,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(19,'com.inoxpush.adnetwork.PushServiceStart55555'),(22,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(1,'com.jiubang.goscreenlock.theme'),(5,'com.senddroid.AdServicecom.test.t000009');
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
INSERT INTO `Applications` VALUES (1,'com.freeapps.iphone4.galaxy.s3',30),(2,'com.test.t000009',1),(3,'com.droidapps.bbombslwp',4),(4,'com.bacastudio.go_ics_theme',5),(5,'com.cube.liveWallpaper_lindsaylohan',1),(6,'cn.action.games.xoxo',3),(7,'com.coolphotoframes.instaframe',5);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER'),(5,'com.cube.liveWallpaper_lindsaylohan');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog'),(2,1,'com.bwlQIUxN.xljNyduA91603.OptinActivity'),(3,1,'com.bwlQIUxN.xljNyduA91603.SmartWallActivity'),(4,1,'com.freeapps.iphone4.galaxy.s3.srv'),(5,1,'com.freeapps.iphone4.galaxy.s3.GoDownloadServiceervice'),(6,1,'com.bwlQIUxN.xljNyduA91603.PushService'),(7,1,'com.apperhand.device.android.AndroidSDKProvider'),(8,1,'com.freeapps.iphone4.galaxy.s3.rec'),(9,1,'com.bwlQIUxN.xljNyduA91603.BootReceiver'),(10,1,'com.Leadbolt.AdNotification'),(11,2,'com.test.t000009.GameMenu'),(12,2,'com.test.t000009.AboutActivity'),(13,2,'com.test.t000009.BlockActivity'),(14,2,'com.airpush.android.PushAds'),(15,2,'com.test.t000009.BlockServ'),(16,2,'com.airpush.android.PushService'),(17,2,'com.apperhand.device.android.AndroidSDKProvider'),(18,2,'com.senddroid.AdService'),(19,2,'com.airpush.android.UserDetailsReceiver'),(20,2,'com.airpush.android.MessageReceiver'),(21,3,'com.droidapps.bbombslwp.PrefActivity'),(22,2,'com.airpush.android.DeliveryReceiver'),(23,3,'com.airpush.android.PushAds'),(24,4,'com.bacastudio.go_ics_theme.GOThemeActivity'),(25,2,'com.test.t000009.BootReceiver'),(26,3,'com.apperhand.device.android.AndroidSDKProvider'),(27,3,'com.droidapps.bbombslwp.Wallpaper'),(28,4,'com.bacastudio.go_ics_theme.theme'),(29,2,'com.test.t000009.BootReceiver2'),(30,3,'com.airpush.android.PushService'),(31,4,'com.google.ads.AdActivity'),(32,3,'com.airpush.android.UserDetailsReceiver'),(33,4,'com.airpush.android.PushAds'),(34,3,'com.airpush.android.MessageReceiver'),(35,4,'com.houseads.ShowPush'),(36,3,'com.airpush.android.DeliveryReceiver'),(37,4,'com.apperhand.device.android.AndroidSDKProvider'),(38,3,'com.droidapps.bbombslwp.BootReceiver'),(39,4,'com.airpush.android.PushService'),(40,3,'com.droidapps.bbombslwp.boot'),(41,4,'com.airpush.android.UserDetailsReceiver'),(42,4,'com.airpush.android.MessageReceiver'),(43,3,'com.Leadbolt.AdNotification'),(44,4,'com.airpush.android.DeliveryReceiver'),(45,4,'com.bacastudio.go_ics_theme.BootReceiver'),(46,4,'com.Leadbolt.AdNotification'),(47,4,'com.houseads.Push'),(48,5,'com.cube.liveWallpaper_lindsaylohan.AppLauncher'),(49,5,'com.moreapps.code.MoreAppsActivity'),(50,5,'com.cube.liveWallpaper_lindsaylohan.ImageCroping'),(51,5,'com.cube.liveWallpaper_lindsaylohan.Gallery_Activity'),(52,5,'com.cube.liveWallpaper_lindsaylohan.OptionSettingPreferanceActivity'),(53,5,'com.airpush.android.PushAds'),(54,5,'com.cube.liveWallpaper_lindsaylohan.PhotoCube3DLWPActivity'),(55,6,'cn.action.games.xoxo.ATF'),(56,5,'com.apperhand.device.android.AndroidSDKProvider'),(57,6,'com.google.ads.AdActivity'),(58,5,'com.airpush.android.PushService'),(59,6,'com.mt.airad.MultiAD'),(60,6,'com.airpush.android.PushAds'),(61,5,'com.cube.liveWallpaper_lindsaylohan.C2DMService'),(62,6,'com.apperhand.device.android.AndroidSDKProvider'),(63,5,'com.Leadbolt.AdNotification'),(64,6,'com.airpush.android.PushService'),(65,5,'com.airpush.android.UserDetailsReceiver'),(66,5,'com.airpush.android.MessageReceiver'),(67,6,'com.tapjoy.TapjoyReferralTracker'),(68,5,'com.airpush.android.DeliveryReceiver'),(69,5,'com.cube.liveWallpaper_lindsaylohan.BootReceiver'),(70,6,'com.airpush.android.UserDetailsReceiver'),(71,6,'com.airpush.android.MessageReceiver'),(72,5,'com.cube.liveWallpaper_lindsaylohan.C2DMRegistrationReceiver'),(73,6,'com.airpush.android.DeliveryReceiver'),(74,6,'cn.action.games.xoxo.BootReceiver'),(75,5,'com.cube.liveWallpaper_lindsaylohan.C2DMMessageReceiver'),(76,1,'com.bwlQIUxN.xljNyduA91603.HandleClicks'),(77,7,'com.coolphotoframes.instaframe.LaunchScreen'),(78,1,'com.apperhand.device.android.a.e'),(79,7,'com.coolphotoframes.instaframe.MainScreen'),(80,7,'com.coolphotoframes.instaframe.HelpScreen'),(81,7,'com.coolphotoframes.instaframe.MoreApp'),(82,7,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(83,7,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(84,7,'com.coolphotoframes.instaframe.Rate'),(85,7,'com.apperhand.device.android.AndroidSDKProvider'),(86,7,'com.inoxpush.downloadticker.DownloadTickerService'),(87,7,'com.applovin.sdk.AppLovinService'),(88,7,'com.inoxpush.adnetwork.PushAdService'),(89,1,'com.apperhand.device.android.a.c'),(90,7,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(91,7,'com.inoxpush.adnetwork.AdMessageReceiver'),(92,7,'com.inoxpush.adnetwork.ClickAdReceiver'),(93,7,'com.applovin.sdk.AppLovinBootReceiver'),(94,7,'com.inox.referrer.Receiver'),(95,1,'com.apperhand.device.android.a.b'),(96,7,'com.applovin.sdk.AppLovinPushReceiver'),(97,7,'com.applovin.sdk.AppLovinNotificationReceiver'),(98,7,'com.coolphotoframes.instaframe.LaunchScreen$2'),(99,7,'com.coolphotoframes.instaframe.LaunchScreen$4'),(100,7,'com.apperhand.device.android.a.d'),(101,7,'com.inoxpush.downloadticker.DownloadTicker'),(102,7,'com.pontiflex.mobile.webview.sdk.AdManager'),(103,7,'com.apperhand.device.android.a.b'),(104,7,'com.coolphotoframes.instaframe.LaunchScreen$1'),(105,7,'com.coolphotoframes.instaframe.LaunchScreen$3'),(106,7,'com.coolphotoframes.instaframe.MainScreen$5'),(107,7,'com.inox.referrer.StartAd');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'DEVELOPER_ID'),(2,3,'adtype'),(3,6,'sms'),(4,1,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(5,8,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(6,6,'url'),(7,3,'creativeid'),(8,2,'creativeid'),(9,6,'header'),(10,3,'url'),(11,3,'title'),(12,2,'title'),(13,6,'testMode'),(14,6,'appId'),(15,7,'eulaAcceptDetails'),(16,7,'APPLICATION_ID'),(17,6,'APIKEY'),(18,3,'sms'),(19,2,'sms'),(20,2,'adtype'),(21,3,'campaignid'),(22,2,'campaignid'),(23,3,'number'),(24,2,'number'),(25,7,'M_SERVER_URL'),(26,6,'creativeId'),(27,3,'buttontxt'),(28,2,'buttontxt'),(29,1,'com.bwlQIUxN.xljNyduA91603.APPID'),(30,8,'com.bwlQIUxN.xljNyduA91603.APPID'),(31,6,'adtype'),(32,6,'campId'),(33,7,'USER_AGENT'),(34,7,'FIRST_RUN'),(35,7,'SERVICE_MODE'),(36,6,'number'),(37,2,'url'),(38,92,'applovin.sdk.verbose_logging'),(39,85,'applovin.sdk.verbose_logging'),(40,93,'applovin.sdk.verbose_logging'),(41,86,'adType'),(42,89,'adType'),(43,83,'USER_AGENT'),(44,88,'appId'),(45,83,'DEVELOPER_ID'),(46,92,'applovin.sdk.key'),(47,85,'applovin.sdk.key'),(48,93,'applovin.sdk.key'),(49,83,'SERVICE_MODE'),(50,91,'referrer'),(51,83,'M_SERVER_URL'),(52,92,'applovin.sdk.autoupdate_disabled'),(53,85,'applovin.sdk.autoupdate_disabled'),(54,93,'applovin.sdk.autoupdate_disabled'),(55,83,'APPLICATION_ID'),(56,86,'type'),(57,87,'appId'),(58,89,'marketlink'),(59,89,'appId'),(60,77,'uriString'),(61,83,'FIRST_RUN');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',1,32,NULL),(28,28,'a',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,32,'r',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,36,'r',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,37,'s',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',1,32,NULL),(55,55,'a',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'s',1,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',1,38,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,38,NULL),(76,77,'a',1,NULL,NULL),(77,79,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'s',0,NULL,NULL),(84,86,'s',0,NULL,NULL),(85,87,'s',1,NULL,NULL),(86,88,'s',1,NULL,NULL),(87,90,'r',0,NULL,NULL),(88,91,'r',0,NULL,NULL),(89,92,'r',0,NULL,NULL),(90,93,'r',1,NULL,NULL),(91,94,'r',1,NULL,NULL),(92,96,'r',0,NULL,NULL),(93,97,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,7),(4,4,7),(5,5,1),(6,6,7),(7,7,7),(8,8,7),(9,9,1),(10,10,7),(11,11,1),(12,12,7),(13,13,6),(14,14,6),(15,15,1),(16,16,1),(17,17,89),(18,18,77),(19,18,76),(20,19,89),(21,20,90),(22,21,76),(23,21,77),(24,22,77),(25,23,76),(26,23,77),(27,24,83),(28,25,76),(29,26,76),(30,27,91),(31,28,83),(32,29,76),(33,30,76),(34,31,83),(35,32,83),(36,33,76),(37,34,76),(38,35,87),(39,36,83),(40,37,77),(41,37,76),(42,38,77),(43,38,76),(44,39,82),(45,40,83),(46,41,88),(47,42,76),(48,42,77),(49,43,76),(50,44,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(2,76,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void callNumber()>',18,'a',NULL),(3,78,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(4,78,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(5,1,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(6,89,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(7,95,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(8,78,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(9,1,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(10,95,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(11,1,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void onCreate(android.os.Bundle)>',5,'s',NULL),(12,95,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(13,76,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void displayUrl()>',11,'a',NULL),(14,76,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void sendSms()>',17,'a',NULL),(15,1,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(16,7,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',60,'a',NULL),(17,92,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(18,79,'<com.coolphotoframes.instaframe.MainScreen: void shareImage()>',52,'a',NULL),(19,92,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(20,93,'<com.applovin.sdk.AppLovinBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(21,98,'<com.coolphotoframes.instaframe.LaunchScreen$2: void onClick(android.view.View)>',28,'a',NULL),(22,85,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(23,99,'<com.coolphotoframes.instaframe.LaunchScreen$4: void onClick(android.view.View)>',6,'a',NULL),(24,100,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(25,101,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(26,102,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(27,94,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(28,103,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(29,102,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(30,77,'<com.coolphotoframes.instaframe.LaunchScreen: void onCreate(android.os.Bundle)>',12,'a',NULL),(31,100,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(32,100,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(33,102,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(34,77,'<com.coolphotoframes.instaframe.LaunchScreen: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(35,90,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(36,103,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(37,104,'<com.coolphotoframes.instaframe.LaunchScreen$1: void onClick(android.view.View)>',6,'a',NULL),(38,105,'<com.coolphotoframes.instaframe.LaunchScreen$3: void onClick(android.view.View)>',9,'a',NULL),(39,84,'<com.coolphotoframes.instaframe.Rate: void onClickRate(android.view.View)>',7,'a',NULL),(40,103,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(41,91,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(42,106,'<com.coolphotoframes.instaframe.MainScreen$5: void onClick(android.view.View)>',7,'a',NULL),(43,77,'<com.coolphotoframes.instaframe.LaunchScreen: void startMainActivity()>',8,'a',NULL),(44,107,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,15),(2,4,16),(3,5,17),(4,6,20),(5,7,20),(6,10,17),(7,11,17),(8,12,2),(9,13,2),(10,15,17),(11,16,21),(12,17,21),(13,18,21),(14,19,21),(15,20,21),(16,21,21),(17,22,21),(18,23,21),(19,24,22),(20,25,23),(21,27,24),(22,30,16),(23,38,23),(24,39,25),(25,40,17),(26,41,17),(27,42,23),(28,45,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,1),(2,13,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/device/android/AndroidSDKProvider'),(2,2,'com/apperhand/device/android/AndroidSDKProvider'),(3,8,'com/freeapps/iphone4/galaxy/s3/GoDownloadService'),(4,9,'com/freeapps/iphone4/galaxy/s3/srv'),(5,14,'com/apperhand/device/android/EULAActivity'),(6,26,'com/applovin/sdk/AppLovinService'),(7,28,'com/apperhand/device/android/AndroidSDKProvider'),(8,29,'com/coolphotoframes/instaframe/MoreApp'),(9,31,'com/inoxpush/downloadticker/DownloadTickerService'),(10,32,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(11,33,'com/inox/referrer/SendDataService'),(12,34,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(13,35,'com/coolphotoframes/instaframe/HelpScreen'),(14,36,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(15,37,'com/coolphotoframes/instaframe/Rate'),(16,43,'com/coolphotoframes/instaframe/HelpScreen'),(17,44,'com/coolphotoframes/instaframe/MainScreen');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,5,3),(3,10,9),(4,15,10),(5,39,16),(6,40,17),(7,41,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'eulaAcceptDetails'),(2,1,'M_SERVER_URL'),(3,1,'USER_AGENT'),(4,1,'SERVICE_MODE'),(5,1,'FIRST_RUN'),(6,1,'DEVELOPER_ID'),(7,1,'APPLICATION_ID'),(8,2,'M_SERVER_URL'),(9,2,'USER_AGENT'),(10,2,'SERVICE_MODE'),(11,2,'FIRST_RUN'),(12,2,'DEVELOPER_ID'),(13,2,'APPLICATION_ID'),(14,4,'android.intent.extra.shortcut.NAME'),(15,4,'android.intent.extra.shortcut.ICON'),(16,4,'android.intent.extra.shortcut.INTENT'),(17,7,'footerHTML'),(18,7,'bodyHTML'),(19,8,'downloadFileName'),(20,8,'downloadUrl'),(21,11,'sms_body'),(22,11,'address'),(23,16,'android.intent.extra.INTENT'),(24,17,'android.intent.extra.INTENT'),(25,18,'android.intent.extra.TITLE'),(26,18,'android.intent.extra.INTENT'),(27,19,'android.intent.extra.INTENT'),(28,20,'android.intent.extra.TITLE'),(29,20,'android.intent.extra.INTENT'),(30,21,'android.intent.extra.INTENT'),(31,22,'android.intent.extra.TITLE'),(32,22,'android.intent.extra.INTENT'),(33,23,'android.intent.extra.TITLE'),(34,23,'android.intent.extra.INTENT'),(35,24,'NULL-CONSTANT'),(36,24,'type'),(37,25,'NULL-CONSTANT'),(38,25,'type'),(39,27,'return-data'),(40,27,'output'),(41,28,'M_SERVER_URL'),(42,28,'USER_AGENT'),(43,28,'SERVICE_MODE'),(44,28,'FIRST_RUN'),(45,28,'DEVELOPER_ID'),(46,28,'APPLICATION_ID'),(47,30,'android.intent.extra.shortcut.NAME'),(48,30,'android.intent.extra.shortcut.ICON'),(49,30,'android.intent.extra.shortcut.INTENT'),(50,34,'offerCount'),(51,36,'singleoffer'),(52,36,'offerCount'),(53,38,'NULL-CONSTANT'),(54,38,'type'),(55,42,'NULL-CONSTANT'),(56,42,'type'),(57,44,'total'),(58,44,'uriString'),(59,45,'duplicate'),(60,45,'android.intent.extra.shortcut.NAME'),(61,45,'android.intent.extra.shortcut.ICON'),(62,45,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,2),(5,5,4),(6,6,5),(7,7,2),(8,8,3),(9,9,2),(10,10,3),(11,11,6),(12,12,7),(13,12,2),(14,13,8),(15,14,3),(16,15,9),(17,16,3),(18,17,3),(19,18,2),(20,19,6),(21,20,2),(22,21,10),(23,22,11),(24,23,12),(25,24,3),(26,25,13),(27,26,3),(28,27,14),(29,28,2),(30,29,18),(31,30,19),(32,31,3),(33,32,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,7,3),(6,8,2),(7,9,1),(8,10,2),(9,12,4),(10,14,2),(11,17,2),(12,18,1),(13,20,3),(14,24,2),(15,25,5),(16,26,2),(17,27,5),(18,28,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.freeapps.iphone4.galaxy.s3'),(2,2,'com.freeapps.iphone4.galaxy.s3'),(3,5,'com.android.vending'),(4,6,'com.freeapps.iphone4.galaxy.s3'),(5,7,'com.freeapps.iphone4.galaxy.s3'),(6,8,'com.freeapps.iphone4.galaxy.s3'),(7,9,'com.freeapps.iphone4.galaxy.s3'),(8,12,'com.jiubang.goscreenlock'),(9,13,'com.jiubang.goscreenlock'),(10,14,'com.freeapps.iphone4.galaxy.s3'),(11,26,'com.coolphotoframes.instaframe'),(12,28,'com.coolphotoframes.instaframe'),(13,29,'com.coolphotoframes.instaframe'),(14,31,'com.coolphotoframes.instaframe'),(15,32,'com.coolphotoframes.instaframe'),(16,33,'com.coolphotoframes.instaframe'),(17,34,'com.coolphotoframes.instaframe'),(18,35,'com.coolphotoframes.instaframe'),(19,36,'com.coolphotoframes.instaframe'),(20,37,'com.coolphotoframes.instaframe'),(21,43,'com.coolphotoframes.instaframe'),(22,44,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,9,0),(4,11,0),(5,16,0),(6,18,0),(7,24,0),(8,25,0),(9,28,0),(10,29,0),(11,27,0),(12,28,0),(13,30,0),(14,37,0),(15,39,0),(16,40,0),(17,45,0),(18,48,0),(19,54,0),(20,55,0),(21,58,0),(22,64,0),(23,67,0),(24,69,0),(25,72,0),(26,74,0),(27,75,0),(28,76,0),(29,85,0),(30,86,0),(31,90,0),(32,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,3,1,0),(5,5,1,0),(6,6,1,0),(7,6,1,0),(8,9,0,0),(9,11,0,0),(10,13,1,0),(11,14,1,0),(12,15,1,0),(13,15,1,0),(14,16,0,0),(15,17,1,0),(16,18,1,0),(17,18,1,0),(18,18,1,0),(19,18,1,0),(20,18,1,0),(21,18,1,0),(22,18,1,0),(23,18,1,0),(24,19,1,0),(25,19,1,0),(26,20,0,0),(27,21,1,0),(28,22,0,0),(29,23,0,0),(30,24,1,0),(31,25,0,0),(32,26,0,0),(33,27,0,0),(34,29,0,0),(35,30,0,0),(36,33,0,0),(37,34,0,0),(38,35,1,0),(39,37,1,0),(40,38,1,0),(41,39,1,0),(42,41,1,0),(43,42,0,0),(44,43,0,0),(45,44,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(39,'android.permission.BLUETOOTH'),(37,'android.permission.CALL_PHONE'),(36,'android.permission.DISABLE_KEYGUARD'),(30,'android.permission.FLASHLIGHT'),(7,'android.permission.GET_ACCOUNTS'),(28,'android.permission.GET_TASKS'),(31,'android.permission.INSTALL_PACKAGES'),(19,'android.permission.INTERNET'),(29,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(33,'android.permission.SET_PREFERRED_APPLICATIONS'),(27,'android.permission.SET_WALLPAPER'),(23,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(34,'com.cube.liveWallpaper_lindsaylohan.permission.C2D_MESSAGE'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(35,'com.google.android.c2dm.permission.RECEIVE'),(38,'com.google.android.c2dm.permission.SEND'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(26,'com.motorola.launcher.permission.READ_SETTINGS'),(22,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (34,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.jiubang.goscreenlock',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.coolphotoframes.instaframe',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.coolphotoframes.instaframe',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,2),(2,7,4),(3,8,5),(4,8,6),(5,10,7),(6,12,8),(7,28,11),(8,31,12),(9,31,13),(10,32,14),(11,36,15),(12,40,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,26),(27,2,1),(28,2,2),(29,2,3),(30,2,4),(31,2,5),(32,2,6),(33,2,7),(34,2,8),(35,2,9),(36,2,10),(37,2,11),(38,2,12),(39,2,13),(40,2,14),(41,2,15),(42,2,17),(43,2,16),(44,2,19),(45,2,18),(46,2,21),(47,2,23),(48,2,22),(49,2,25),(50,2,24),(51,2,27),(52,2,26),(53,2,29),(54,2,28),(55,2,31),(56,2,30),(57,3,1),(58,3,2),(59,3,3),(60,3,4),(61,3,5),(62,3,6),(63,3,8),(64,3,9),(65,3,10),(66,3,11),(67,3,13),(68,3,14),(69,3,15),(70,3,17),(71,3,16),(72,3,19),(73,3,18),(74,3,21),(75,3,23),(76,3,22),(77,4,19),(78,3,25),(79,4,5),(80,3,26),(81,4,8),(82,4,9),(83,4,14),(84,5,1),(85,5,2),(86,5,3),(87,5,4),(88,5,5),(89,5,6),(90,5,8),(91,5,9),(92,5,10),(93,5,11),(94,5,12),(95,5,13),(96,5,14),(97,5,15),(98,6,1),(99,5,17),(100,5,16),(101,6,2),(102,6,3),(103,5,19),(104,6,4),(105,5,18),(106,6,5),(107,5,21),(108,5,20),(109,6,6),(110,6,7),(111,5,23),(112,6,8),(113,5,22),(114,6,9),(115,5,25),(116,6,10),(117,5,26),(118,6,11),(119,5,34),(120,6,12),(121,5,35),(122,5,33),(123,6,13),(124,5,36),(125,6,14),(126,6,15),(127,6,17),(128,6,16),(129,6,19),(130,6,18),(131,6,21),(132,6,23),(133,6,22),(134,6,25),(135,6,24),(136,6,27),(137,6,26),(138,6,29),(139,6,28),(140,6,31),(141,6,30),(142,6,37),(143,7,1),(144,7,2),(145,7,3),(146,7,4),(147,7,5),(148,7,6),(149,7,7),(150,7,8),(151,7,9),(152,7,10),(153,7,11),(154,7,12),(155,7,13),(156,7,14),(157,7,15),(158,7,17),(159,7,16),(160,7,19),(161,7,18),(162,7,21),(163,7,20),(164,7,23),(165,7,22),(166,7,25),(167,7,26),(168,7,33),(169,7,39),(170,7,36);
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

-- Dump completed on 2015-10-09  0:40:46
