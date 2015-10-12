-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_672
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (27,'(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.MEDIA_EJECT'),(7,'android.intent.action.MEDIA_MOUNTED'),(25,'android.intent.action.PICK'),(23,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SET_WALLPAPER'),(24,'android.intent.action.USER_PRESENT'),(20,'android.intent.action.VIEW'),(29,'android.media.action.IMAGE_CAPTURE'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.service.wallpaper.WallpaperService'),(8,'com.airpush.android.PushServiceStart50896'),(17,'com.airpush.android.PushServiceStart57565'),(15,'com.airpush.android.PushServiceStart58852'),(9,'com.airpush.android.PushServiceStart59915'),(21,'com.android.launcher.action.INSTALL_SHORTCUT'),(14,'com.android.vending.INSTALL_REFERRER'),(22,'com.apperhand.action.show.eula'),(10,'com.applovin.sdk.AppLovinService'),(11,'com.google.android.c2dm.intent.RECEIVE'),(12,'com.google.android.c2dm.intent.REGISTRATION'),(26,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(13,'com.inoxpush.adnetwork.PushServiceStart98108'),(28,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(2,'com.jiubang.goscreenlock.theme'),(18,'com.senddroid.AdServicecom.dessertapps.app.htcevowallpapers');
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
INSERT INTO `Applications` VALUES (1,'com.free_apps.golocker_iphone4_asianxxx',30),(2,'com.driftwood.wallpaper.starlight.free',28),(3,'com.macte.JigSaw.Abstract',17),(4,'com.airbit.jelly.bean',3),(5,'com.faceswap.juggler',1),(6,'com.exitics.galaxyripple',1),(7,'com.dessertapps.app.htcevowallpapers',101);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'com.airbit.jelly.bean');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.free_apps.golocker_iphone4_asianxxx.GOLockerInstallDialog'),(2,1,'com.bwlQIUxN.xljNyduA91603.OptinActivity'),(3,1,'com.bwlQIUxN.xljNyduA91603.SmartWallActivity'),(4,1,'com.free_apps.golocker_iphone4_asianxxx.srv'),(5,1,'com.free_apps.golocker_iphone4_asianxxx.GoDownloadServiceervice'),(6,1,'com.bwlQIUxN.xljNyduA91603.PushService'),(7,1,'com.apperhand.device.android.AndroidSDKProvider'),(8,1,'com.free_apps.golocker_iphone4_asianxxx.rec'),(9,1,'com.bwlQIUxN.xljNyduA91603.BootReceiver'),(10,1,'com.Leadbolt.AdNotification'),(11,2,'com.driftwood.wallpaper.starlight.free.LeadBoltAd'),(12,2,'com.driftwood.wallpaper.starlight.free.StarlightWallpaperSettings'),(13,2,'com.driftwood.wallpaper.starlight.free.WallpaperStarlight'),(14,2,'com.apperhand.device.android.AndroidSDKProvider'),(15,3,'com.macte.JigSaw.Abstract.JigsawPuzzle'),(16,3,'com.macte.JigSaw.Abstract.GameView'),(17,3,'com.google.ads.AdActivity'),(18,3,'com.macte.JigSaw.Abstract.SettingsList'),(19,3,'com.macte.JigSaw.Abstract.GalleryLevel'),(20,3,'com.macte.JigSaw.Abstract.ProVersion'),(21,3,'com.airpush.android.PushAds'),(22,3,'com.macte.JigSaw.Abstract.DownloadService'),(23,3,'com.apperhand.device.android.AndroidSDKProvider'),(24,3,'com.airpush.android.PushService'),(25,3,'com.airpush.android.UserDetailsReceiver'),(26,3,'com.airpush.android.MessageReceiver'),(27,3,'com.airpush.android.DeliveryReceiver'),(28,3,'com.macte.JigSaw.Abstract.BootReceiver'),(29,4,'com.airbit.jelly.bean.WallpaperSettings'),(30,4,'com.airpush.android.PushAds'),(31,4,'com.airbit.jelly.bean.JellyBeanInit'),(32,4,'com.apperhand.device.android.AndroidSDKProvider'),(33,4,'com.airpush.android.PushService'),(34,4,'com.applovin.sdk.AppLovinService'),(35,5,'com.faceswap.juggler.LoadingActivity'),(36,4,'com.Leadbolt.AdNotification'),(37,4,'com.airpush.android.UserDetailsReceiver'),(38,5,'com.faceswap.juggler.StartActivity'),(39,4,'com.airpush.android.MessageReceiver'),(40,5,'com.faceswap.juggler.SwapActivity'),(41,4,'com.airpush.android.DeliveryReceiver'),(42,5,'com.faceswap.juggler.MainActivity'),(43,4,'com.airbit.jelly.bean.Boot'),(44,5,'com.faceswap.juggler.SaveActivity'),(45,5,'com.faceswap.juggler.HelpScreen'),(46,4,'com.applovin.sdk.AppLovinNotificationReceiver'),(47,5,'com.google.ads.AdActivity'),(48,4,'com.applovin.sdk.AppLovinPushReceiver'),(49,5,'com.inox.referrer.SendDataService'),(50,5,'com.apperhand.device.android.AndroidSDKProvider'),(51,5,'com.applovin.sdk.AppLovinService'),(52,5,'com.inoxpush.downloadticker.DownloadTickerService'),(53,5,'com.inoxpush.adnetwork.PushAdService'),(54,5,'com.faceswap.juggler.BootReceiver'),(55,5,'com.inox.referrer.Receiver'),(56,5,'com.applovin.sdk.AppLovinNotificationReceiver'),(57,5,'com.applovin.sdk.AppLovinPushReceiver'),(58,5,'com.applovin.sdk.AppLovinBootReceiver'),(59,5,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(60,5,'com.inoxpush.adnetwork.AdMessageReceiver'),(61,5,'com.inoxpush.adnetwork.ClickAdReceiver'),(62,6,'com.exitics.galaxyripple.AppLauncher'),(63,6,'com.exitics.galaxyripple.WallpaperSettings'),(64,6,'com.exitics.galaxyripple.GalleryActivity'),(65,6,'com.airpush.android.PushAds'),(66,6,'com.exitics.galaxyripple.MyWallpaper'),(67,6,'com.airpush.android.PushService'),(68,6,'com.apperhand.device.android.AndroidSDKProvider'),(69,6,'com.exitics.galaxyripple.Boot'),(70,6,'com.Leadbolt.AdNotification'),(71,6,'com.airpush.android.UserDetailsReceiver'),(72,6,'com.airpush.android.MessageReceiver'),(73,6,'com.airpush.android.DeliveryReceiver'),(74,6,'com.exitics.galaxyripple.BootReceiver'),(75,7,'com.dessertapps.app.htcevowallpapers.MAINHTCEvoWallpapersActivity'),(76,7,'com.dessertapps.app.htcevowallpapers.HTCEvoWallpapersActivity'),(77,7,'com.dessertapps.app.htcevowallpapers.HTCEvoGalleryViewerActivity'),(78,7,'com.google.ads.AdActivity'),(79,7,'com.inmobi.androidsdk.IMBrowserActivity'),(80,7,'com.mobfox.sdk.InAppWebView'),(81,7,'com.adfonic.android.AdfonicActivity'),(82,7,'com.airpush.android.PushAds'),(83,7,'com.airpush.android.PushService'),(84,7,'com.senddroid.AdService'),(85,7,'com.apperhand.device.android.AndroidSDKProvider'),(86,7,'com.airpush.android.UserDetailsReceiver'),(87,7,'com.airpush.android.MessageReceiver'),(88,7,'com.airpush.android.DeliveryReceiver'),(89,7,'com.dessertapps.app.htcevowallpapers.BootReceiverps.app.htcevowallpapers.BootReceiver'),(90,1,'com.bwlQIUxN.xljNyduA91603.HandleClicks'),(91,7,'com.Leadbolt.AdNotification'),(92,1,'com.apperhand.device.android.a.e'),(93,1,'com.apperhand.device.android.a.c'),(94,1,'com.apperhand.device.android.a.b'),(95,2,'com.apperhand.device.android.a.d'),(96,2,'com.driftwood.wallpaper.starlight.free.StarlightWallpaperSettings$1'),(97,2,'com.apperhand.device.android.a.a'),(98,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(99,5,'com.faceswap.juggler.HelpScreen$1'),(100,5,'com.apperhand.device.android.a.d'),(101,5,'com.inoxpush.downloadticker.a'),(102,5,'com.faceswap.juggler.StartActivity$1'),(103,5,'com.apperhand.device.android.a.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'campId'),(2,6,'creativeId'),(3,7,'M_SERVER_URL'),(4,8,'com.bwlQIUxN.xljNyduA91603.APPID'),(5,1,'com.bwlQIUxN.xljNyduA91603.APPID'),(6,7,'FIRST_RUN'),(7,3,'buttontxt'),(8,2,'buttontxt'),(9,3,'sms'),(10,2,'sms'),(11,6,'testMode'),(12,3,'campaignid'),(13,2,'campaignid'),(14,3,'number'),(15,2,'number'),(16,6,'number'),(17,6,'header'),(18,7,'USER_AGENT'),(19,2,'adtype'),(20,3,'title'),(21,2,'title'),(22,3,'url'),(23,3,'adtype'),(24,7,'SERVICE_MODE'),(25,6,'sms'),(26,2,'url'),(27,7,'DEVELOPER_ID'),(28,7,'eulaAcceptDetails'),(29,6,'url'),(30,6,'appId'),(31,6,'APIKEY'),(32,3,'creativeid'),(33,2,'creativeid'),(34,6,'adtype'),(35,8,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(36,1,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(37,7,'APPLICATION_ID'),(38,14,'M_SERVER_URL'),(39,14,'APPLICATION_ID'),(40,14,'USER_AGENT'),(41,14,'DEVELOPER_ID'),(42,14,'FIRST_RUN'),(43,14,'SERVICE_MODE'),(44,14,'permanent'),(45,57,'applovin.sdk.verbose_logging'),(46,51,'applovin.sdk.verbose_logging'),(47,56,'applovin.sdk.verbose_logging'),(48,61,'marketlink'),(49,44,'bmpPath'),(50,47,'action'),(51,57,'applovin.sdk.key'),(52,51,'applovin.sdk.key'),(53,56,'applovin.sdk.key'),(54,44,'info'),(55,47,'com.google.ads.AdOpener'),(56,47,'params'),(57,61,'appId'),(58,50,'APPLICATION_ID'),(59,53,'type'),(60,50,'M_SERVER_URL'),(61,50,'USER_AGENT'),(62,47,'com.google.circles.platform.result.extra.CONFIRMATION'),(63,40,'image-uri'),(64,50,'FIRST_RUN'),(65,50,'DEVELOPER_ID'),(66,59,'appId'),(67,55,'referrer'),(68,42,'uri'),(69,61,'adType'),(70,47,'com.google.circles.platform.result.extra.ACTION'),(71,44,'bmpUri'),(72,50,'SERVICE_MODE'),(73,60,'appId'),(74,57,'applovin.sdk.autoupdate_disabled'),(75,51,'applovin.sdk.autoupdate_disabled'),(76,56,'applovin.sdk.autoupdate_disabled'),(77,53,'adType'),(78,40,'image-path');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,27,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',1,27,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,49,'s',0,NULL,NULL),(49,48,'r',1,36,NULL),(50,50,'s',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',1,27,NULL),(67,67,'s',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'s',1,NULL,NULL),(84,84,'s',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',0,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,91,'r',0,NULL,NULL),(91,98,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,6),(4,4,7),(5,5,1),(6,6,7),(7,7,1),(8,8,7),(9,9,1),(10,10,7),(11,11,6),(12,12,7),(13,13,7),(14,14,7),(15,15,6),(16,16,1),(17,17,14),(18,18,12),(19,19,14),(20,20,14),(21,21,14),(22,22,13),(23,23,14),(24,24,14),(25,25,40),(26,26,42),(27,27,38),(28,27,40),(29,27,45),(30,28,42),(31,29,50),(32,30,50),(33,31,42),(34,31,45),(35,31,38),(36,31,40),(37,32,35),(38,33,60),(39,34,38),(40,34,40),(41,34,45),(42,35,40),(43,35,38),(44,35,45),(45,36,50),(46,37,55),(47,38,45),(48,38,38),(49,38,40),(50,39,42),(51,40,47),(52,41,40),(53,42,50),(54,43,58),(55,44,61),(56,45,35),(57,46,50),(58,47,61),(59,48,40),(60,48,45),(61,48,38),(62,49,50),(63,50,45),(64,50,42),(65,50,38),(66,50,40),(67,51,38),(68,51,40),(69,51,45),(70,52,59),(71,53,47),(72,54,40),(73,54,38),(74,54,45),(75,55,42),(76,55,45),(77,55,38),(78,55,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.free_apps.golocker_iphone4_asianxxx.GOLockerInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(2,1,'<com.free_apps.golocker_iphone4_asianxxx.GOLockerInstallDialog: void onCreate(android.os.Bundle)>',5,'s',NULL),(3,90,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void callNumber()>',18,'a',NULL),(4,92,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(5,1,'<com.free_apps.golocker_iphone4_asianxxx.GOLockerInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(6,92,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(7,1,'<com.free_apps.golocker_iphone4_asianxxx.GOLockerInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(8,92,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(9,7,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(10,93,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(11,90,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void displayUrl()>',11,'a',NULL),(12,94,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(13,94,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(14,94,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(15,90,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void sendSms()>',17,'a',NULL),(16,7,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',60,'a',NULL),(17,95,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',16,'p',NULL),(18,96,'<com.driftwood.wallpaper.starlight.free.StarlightWallpaperSettings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(19,97,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(20,97,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(21,95,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(22,14,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(23,95,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',27,'p',NULL),(24,97,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(25,40,'<com.faceswap.juggler.SwapActivity: float a(android.content.Context,android.net.Uri)>',8,'p',NULL),(26,42,'<com.faceswap.juggler.MainActivity: void onActivityResult(int,int,android.content.Intent)>',54,'a',NULL),(27,99,'<com.faceswap.juggler.HelpScreen$1: void onClick(android.view.View)>',6,'a',NULL),(28,42,'<com.faceswap.juggler.MainActivity: float a(android.content.Context,android.net.Uri)>',8,'p',0),(29,100,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(30,100,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(31,42,'<com.faceswap.juggler.MainActivity: void a(com.faceswap.juggler.MainActivity)>',4,'a',NULL),(32,101,'<com.inoxpush.downloadticker.a: void <init>(android.content.Context)>',15,'s',NULL),(33,60,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(34,40,'<com.faceswap.juggler.SwapActivity: void a(com.faceswap.juggler.SwapActivity)>',42,'a',NULL),(35,102,'<com.faceswap.juggler.StartActivity$1: void onClick(android.view.View)>',19,'a',NULL),(36,103,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(37,55,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(38,102,'<com.faceswap.juggler.StartActivity$1: void onClick(android.view.View)>',42,'a',NULL),(39,42,'<com.faceswap.juggler.MainActivity: void onActivityResult(int,int,android.content.Intent)>',73,'a',NULL),(40,47,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',30,'a',NULL),(41,40,'<com.faceswap.juggler.SwapActivity: void onStart()>',6,'a',NULL),(42,103,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(43,58,'<com.applovin.sdk.AppLovinBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(44,61,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'a',NULL),(45,50,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context)>',45,'s',NULL),(46,103,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(47,61,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(48,102,'<com.faceswap.juggler.StartActivity$1: void onClick(android.view.View)>',25,'a',NULL),(49,100,'<com.apperhand.device.android.a.d: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(50,42,'<com.faceswap.juggler.MainActivity: void a()>',19,'a',NULL),(51,40,'<com.faceswap.juggler.SwapActivity: void a(com.faceswap.juggler.SwapActivity)>',17,'r',NULL),(52,59,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(53,47,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(54,102,'<com.faceswap.juggler.StartActivity$1: void onClick(android.view.View)>',48,'a',NULL),(55,42,'<com.faceswap.juggler.MainActivity: void a()>',12,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,19),(2,4,1),(3,5,1),(4,6,20),(5,7,21),(6,10,22),(7,11,22),(8,12,20),(9,13,20),(10,15,20),(11,16,21),(12,21,25),(13,23,26),(14,27,20),(15,29,20),(16,30,27),(17,31,27),(18,32,20),(19,35,20),(20,37,28),(21,38,26),(22,40,21),(23,41,29),(24,42,7),(25,43,26);
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
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,3),(3,44,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/free_apps/golocker_iphone4_asianxxx/GoDownloadService'),(2,2,'com/free_apps/golocker_iphone4_asianxxx/srv'),(3,8,'com/apperhand/device/android/AndroidSDKProvider'),(4,9,'com/apperhand/device/android/AndroidSDKProvider'),(5,14,'com/apperhand/device/android/EULAActivity'),(6,17,'com/apperhand/device/android/AndroidSDKProvider'),(7,18,'com/apperhand/device/android/AndroidSDKProvider'),(8,19,'com/faceswap/juggler/SwapActivity'),(9,20,'com/faceswap/juggler/MainActivity'),(10,22,'com/inoxpush/downloadticker/DownloadTickerService'),(11,24,'com/faceswap/juggler/SaveActivity'),(12,25,'com/faceswap/juggler/HelpScreen'),(13,26,'com/inox/referrer/SendDataService'),(14,28,'com/faceswap/juggler/SwapActivity'),(15,33,'com/faceswap/juggler/MainActivity'),(16,34,'com/applovin/sdk/AppLovinService'),(17,36,'com/apperhand/device/android/AndroidSDKProvider'),(18,39,'com/faceswap/juggler/MainActivity'),(19,44,'com.google.android.apps.circles.platform.PlusOneActivity'),(20,45,'com/faceswap/juggler/HelpScreen');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,6,5),(3,12,6),(4,15,11),(5,21,20),(6,27,22),(7,29,23),(8,30,24),(9,31,25),(10,32,26),(11,35,28),(12,42,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'downloadFileName'),(2,1,'downloadUrl'),(3,7,'android.intent.extra.shortcut.NAME'),(4,7,'android.intent.extra.shortcut.ICON'),(5,7,'android.intent.extra.shortcut.INTENT'),(6,8,'M_SERVER_URL'),(7,8,'USER_AGENT'),(8,8,'SERVICE_MODE'),(9,8,'FIRST_RUN'),(10,8,'DEVELOPER_ID'),(11,8,'APPLICATION_ID'),(12,9,'eulaAcceptDetails'),(13,9,'M_SERVER_URL'),(14,9,'USER_AGENT'),(15,9,'SERVICE_MODE'),(16,9,'FIRST_RUN'),(17,9,'DEVELOPER_ID'),(18,9,'APPLICATION_ID'),(19,11,'footerHTML'),(20,11,'bodyHTML'),(21,13,'sms_body'),(22,13,'address'),(23,16,'android.intent.extra.shortcut.NAME'),(24,16,'android.intent.extra.shortcut.ICON'),(25,16,'android.intent.extra.shortcut.INTENT'),(26,17,'M_SERVER_URL'),(27,17,'USER_AGENT'),(28,17,'SERVICE_MODE'),(29,17,'FIRST_RUN'),(30,17,'DEVELOPER_ID'),(31,17,'(.*)'),(32,17,'APPLICATION_ID'),(33,18,'M_SERVER_URL'),(34,18,'USER_AGENT'),(35,18,'SERVICE_MODE'),(36,18,'FIRST_RUN'),(37,18,'DEVELOPER_ID'),(38,18,'APPLICATION_ID'),(39,19,'scale'),(40,19,'image-path'),(41,19,'image-uri'),(42,23,'NULL-CONSTANT'),(43,23,'type'),(44,24,'info'),(45,28,'scale'),(46,28,'image-path'),(47,28,'image-uri'),(48,36,'M_SERVER_URL'),(49,36,'USER_AGENT'),(50,36,'SERVICE_MODE'),(51,36,'FIRST_RUN'),(52,36,'DEVELOPER_ID'),(53,36,'APPLICATION_ID'),(54,37,'NULL-CONSTANT'),(55,37,'type'),(56,38,'NULL-CONSTANT'),(57,38,'type'),(58,40,'android.intent.extra.shortcut.NAME'),(59,40,'android.intent.extra.shortcut.ICON'),(60,40,'android.intent.extra.shortcut.INTENT'),(61,41,'return-data'),(62,41,'output'),(63,43,'NULL-CONSTANT'),(64,43,'type'),(65,44,'com.google.circles.platform.intent.extra.ACTION'),(66,44,'(.*)'),(67,44,'com.google.circles.platform.intent.extra.ENTITY'),(68,44,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,7),(11,10,5),(12,10,6),(13,11,8),(14,12,3),(15,13,4),(16,14,9),(17,15,10),(18,16,1),(19,17,3),(20,18,11),(21,19,10),(22,20,12),(23,21,3),(24,22,13),(25,23,3),(26,24,14),(27,25,1),(28,26,4),(29,27,15),(30,28,3),(31,29,3),(32,30,1),(33,31,16),(34,32,17),(35,33,18),(36,34,3),(37,35,23),(38,35,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,6,3),(6,7,4),(7,8,4),(8,9,4),(9,12,2),(10,16,3),(11,17,2),(12,18,5),(13,20,5),(14,21,2),(15,23,2),(16,25,1),(17,29,2),(18,30,3),(19,31,6),(20,34,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'vnd.android-dir','mms-sms'),(2,30,'(.*)','(.*)'),(3,32,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.free_apps.golocker_iphone4_asianxxx'),(2,2,'com.free_apps.golocker_iphone4_asianxxx'),(3,4,'com.jiubang.goscreenlock'),(4,5,'com.jiubang.goscreenlock'),(5,6,'com.android.vending'),(6,8,'com.free_apps.golocker_iphone4_asianxxx'),(7,9,'com.free_apps.golocker_iphone4_asianxxx'),(8,10,'com.free_apps.golocker_iphone4_asianxxx'),(9,11,'com.free_apps.golocker_iphone4_asianxxx'),(10,14,'com.free_apps.golocker_iphone4_asianxxx'),(11,17,'com.driftwood.wallpaper.starlight.free'),(12,18,'com.driftwood.wallpaper.starlight.free'),(13,19,'com.faceswap.juggler'),(14,20,'com.faceswap.juggler'),(15,22,'com.faceswap.juggler'),(16,24,'com.faceswap.juggler'),(17,25,'com.faceswap.juggler'),(18,26,'com.faceswap.juggler'),(19,28,'com.faceswap.juggler'),(20,33,'com.faceswap.juggler'),(21,34,'com.faceswap.juggler'),(22,36,'com.faceswap.juggler'),(23,39,'com.faceswap.juggler'),(24,44,'com.google.android.apps.plus'),(25,45,'com.faceswap.juggler');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,9,0),(4,11,0),(5,13,0),(6,15,0),(7,16,0),(8,18,0),(9,20,0),(10,22,0),(11,24,0),(12,28,0),(13,31,0),(14,33,0),(15,34,0),(16,35,0),(17,43,0),(18,49,0),(19,51,0),(20,49,0),(21,43,0),(22,53,0),(23,54,0),(24,55,0),(25,62,0),(26,66,0),(27,67,0),(28,69,0),(29,74,0),(30,75,0),(31,76,0),(32,83,0),(33,84,0),(34,89,0),(35,91,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,5,1,0),(5,5,1,0),(6,7,1,0),(7,8,1,0),(8,9,0,0),(9,9,0,0),(10,10,1,0),(11,10,1,0),(12,11,1,0),(13,15,1,0),(14,16,0,0),(15,18,1,0),(16,21,1,0),(17,22,0,0),(18,22,0,0),(19,26,0,0),(20,27,0,0),(21,31,1,0),(22,32,0,0),(23,33,1,0),(24,34,0,0),(25,35,0,0),(26,37,0,0),(27,38,1,0),(28,39,0,0),(29,40,1,0),(30,40,1,0),(31,40,1,0),(32,40,1,0),(33,41,0,0),(34,43,0,0),(35,44,1,0),(36,45,0,0),(37,47,1,0),(38,47,1,0),(39,48,0,0),(40,49,1,0),(41,50,1,0),(42,51,1,0),(43,52,1,0),(44,53,0,0),(45,54,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,11,2,NULL),(2,5,11,2,NULL),(3,41,11,2,NULL),(4,29,11,2,NULL),(5,31,11,2,NULL),(6,43,11,2,NULL),(7,23,11,2,NULL),(8,35,11,2,NULL),(9,37,11,2,NULL),(10,38,11,2,NULL),(11,4,13,2,NULL),(12,5,13,2,NULL),(13,41,13,2,NULL),(14,29,13,2,NULL),(15,31,13,2,NULL),(16,43,13,2,NULL),(17,23,13,2,NULL),(18,35,13,2,NULL),(19,37,13,2,NULL),(20,38,13,2,NULL),(21,17,7,2,NULL),(22,17,14,2,NULL),(23,17,23,2,NULL),(24,17,32,2,NULL),(25,17,50,2,NULL),(26,17,68,2,NULL),(27,17,85,2,NULL),(28,18,7,2,NULL),(29,18,14,2,NULL),(30,18,23,2,NULL),(31,18,32,2,NULL),(32,18,50,2,NULL),(33,18,68,2,NULL),(34,18,85,2,NULL),(35,2,4,2,NULL),(36,4,9,2,NULL),(37,5,9,2,NULL),(38,4,15,2,NULL),(39,5,15,2,NULL),(40,4,16,2,NULL),(41,5,16,2,NULL),(42,4,18,2,NULL),(43,5,18,2,NULL),(44,4,20,2,NULL),(45,5,20,2,NULL),(46,4,22,2,NULL),(47,5,22,2,NULL),(48,4,24,2,NULL),(49,5,24,2,NULL),(50,4,28,2,NULL),(51,5,28,2,NULL),(52,4,31,2,NULL),(53,5,31,2,NULL),(54,4,33,2,NULL),(55,5,33,2,NULL),(56,4,34,2,NULL),(57,5,34,2,NULL),(58,4,43,2,NULL),(59,5,43,2,NULL),(60,4,49,2,NULL),(61,5,49,2,NULL),(62,4,35,2,NULL),(63,5,35,2,NULL),(64,41,1,2,NULL),(65,29,1,2,NULL),(66,31,1,2,NULL),(67,4,51,2,NULL),(68,5,51,2,NULL),(69,4,53,2,NULL),(70,5,53,2,NULL),(71,4,54,2,NULL),(72,5,54,2,NULL),(73,4,55,2,NULL),(74,5,55,2,NULL),(75,43,1,2,NULL),(76,23,1,2,NULL),(77,35,1,2,NULL),(78,37,1,2,NULL),(79,38,1,2,NULL),(80,4,91,2,NULL),(81,5,91,2,NULL),(82,4,62,2,NULL),(83,5,62,2,NULL),(84,4,66,2,NULL),(85,5,66,2,NULL),(86,4,67,2,NULL),(87,5,67,2,NULL),(88,4,69,2,NULL),(89,5,69,2,NULL),(90,4,74,2,NULL),(91,5,74,2,NULL),(92,4,75,2,NULL),(93,5,75,2,NULL),(94,4,76,2,NULL),(95,5,76,2,NULL),(96,4,83,2,NULL),(97,5,83,2,NULL),(98,4,84,2,NULL),(99,5,84,2,NULL),(100,4,89,2,NULL),(101,5,89,2,NULL),(102,8,7,2,NULL),(103,8,14,2,NULL),(104,8,23,2,NULL),(105,8,32,2,NULL),(106,8,50,2,NULL),(107,8,68,2,NULL),(108,8,85,2,NULL),(109,9,7,2,NULL),(110,9,14,2,NULL),(111,9,23,2,NULL),(112,9,32,2,NULL),(113,9,50,2,NULL),(114,9,68,2,NULL),(115,9,85,2,NULL),(116,41,9,2,NULL),(117,29,9,2,NULL),(118,31,9,2,NULL),(119,43,9,2,NULL),(120,23,9,2,NULL),(121,35,9,2,NULL),(122,37,9,2,NULL),(123,38,9,2,NULL),(124,41,62,2,NULL),(125,29,62,2,NULL),(126,31,62,2,NULL),(127,43,62,2,NULL),(128,23,62,2,NULL),(129,35,62,2,NULL),(130,37,62,2,NULL),(131,38,62,2,NULL),(132,41,66,2,NULL),(133,29,66,2,NULL),(134,31,66,2,NULL),(135,43,66,2,NULL),(136,23,66,2,NULL),(137,35,66,2,NULL),(138,37,66,2,NULL),(139,38,66,2,NULL),(140,41,67,2,NULL),(141,29,67,2,NULL),(142,31,67,2,NULL),(143,43,67,2,NULL),(144,23,67,2,NULL),(145,35,67,2,NULL),(146,37,67,2,NULL),(147,38,67,2,NULL),(148,41,69,2,NULL),(149,29,69,2,NULL),(150,31,69,2,NULL),(151,43,69,2,NULL),(152,23,69,2,NULL),(153,35,69,2,NULL),(154,37,69,2,NULL),(155,38,69,2,NULL),(156,41,74,2,NULL),(157,29,74,2,NULL),(158,31,74,2,NULL),(159,43,74,2,NULL),(160,23,74,2,NULL),(161,35,74,2,NULL),(162,37,74,2,NULL),(163,38,74,2,NULL),(164,41,35,2,NULL),(165,29,35,2,NULL),(166,31,35,2,NULL),(167,43,35,2,NULL),(168,23,35,2,NULL),(169,35,35,2,NULL),(170,37,35,2,NULL),(171,38,35,2,NULL),(172,24,44,2,NULL),(173,33,42,2,NULL),(174,19,40,2,NULL),(175,28,40,2,NULL),(176,41,15,2,NULL),(177,41,16,2,NULL),(178,41,18,2,NULL),(179,41,20,2,NULL),(180,41,22,2,NULL),(181,41,24,2,NULL),(182,41,28,2,NULL),(183,41,31,2,NULL),(184,41,33,2,NULL),(185,41,34,2,NULL),(186,41,43,2,NULL),(187,41,49,2,NULL),(188,41,51,2,NULL),(189,41,53,2,NULL),(190,41,54,2,NULL),(191,41,55,2,NULL),(192,41,91,2,NULL),(193,41,75,2,NULL),(194,41,76,2,NULL),(195,41,83,2,NULL),(196,41,84,2,NULL),(197,41,89,2,NULL),(198,29,15,2,NULL),(199,31,15,2,NULL),(200,29,16,2,NULL),(201,31,16,2,NULL),(202,29,18,2,NULL),(203,31,18,2,NULL),(204,29,20,2,NULL),(205,31,20,2,NULL),(206,29,22,2,NULL),(207,31,22,2,NULL),(208,29,24,2,NULL),(209,31,24,2,NULL),(210,29,28,2,NULL),(211,31,28,2,NULL),(212,29,31,2,NULL),(213,31,31,2,NULL),(214,29,33,2,NULL),(215,31,33,2,NULL),(216,29,34,2,NULL),(217,31,34,2,NULL),(218,29,43,2,NULL),(219,31,43,2,NULL),(220,29,49,2,NULL),(221,31,49,2,NULL),(222,29,51,2,NULL),(223,31,51,2,NULL),(224,29,53,2,NULL),(225,31,53,2,NULL),(226,29,54,2,NULL),(227,31,54,2,NULL),(228,29,55,2,NULL),(229,31,55,2,NULL),(230,29,91,2,NULL),(231,31,91,2,NULL),(232,29,75,2,NULL),(233,31,75,2,NULL),(234,29,76,2,NULL),(235,31,76,2,NULL),(236,29,83,2,NULL),(237,31,83,2,NULL),(238,29,84,2,NULL),(239,31,84,2,NULL),(240,29,89,2,NULL),(241,31,89,2,NULL),(242,36,7,2,NULL),(243,36,14,2,NULL),(244,36,23,2,NULL),(245,36,32,2,NULL),(246,36,50,2,NULL),(247,36,68,2,NULL),(248,36,85,2,NULL),(249,43,51,2,NULL),(250,23,51,2,NULL),(251,35,51,2,NULL),(252,37,51,2,NULL),(253,38,51,2,NULL),(254,43,53,2,NULL),(255,23,53,2,NULL),(256,35,53,2,NULL),(257,37,53,2,NULL),(258,38,53,2,NULL),(259,43,54,2,NULL),(260,23,54,2,NULL),(261,35,54,2,NULL),(262,37,54,2,NULL),(263,38,54,2,NULL),(264,26,48,2,NULL),(265,43,55,2,NULL),(266,23,55,2,NULL),(267,35,55,2,NULL),(268,37,55,2,NULL),(269,38,55,2,NULL),(270,34,34,2,NULL),(271,34,51,2,NULL),(272,43,15,2,NULL),(273,43,16,2,NULL),(274,43,18,2,NULL),(275,43,20,2,NULL),(276,43,22,2,NULL),(277,43,24,2,NULL),(278,43,28,2,NULL),(279,43,31,2,NULL),(280,43,33,2,NULL),(281,43,34,2,NULL),(282,43,43,2,NULL),(283,43,49,2,NULL),(284,43,91,2,NULL),(285,43,75,2,NULL),(286,43,76,2,NULL),(287,43,83,2,NULL),(288,43,84,2,NULL),(289,43,89,2,NULL),(290,23,15,2,NULL),(291,23,16,2,NULL),(292,23,18,2,NULL),(293,23,20,2,NULL),(294,23,22,2,NULL),(295,23,24,2,NULL),(296,23,28,2,NULL),(297,23,31,2,NULL),(298,23,33,2,NULL),(299,23,34,2,NULL),(300,23,43,2,NULL),(301,23,49,2,NULL),(302,23,91,2,NULL),(303,23,75,2,NULL),(304,23,76,2,NULL),(305,23,83,2,NULL),(306,23,84,2,NULL),(307,23,89,2,NULL),(308,35,15,2,NULL),(309,37,15,2,NULL),(310,38,15,2,NULL),(311,35,16,2,NULL),(312,37,16,2,NULL),(313,38,16,2,NULL),(314,35,18,2,NULL),(315,37,18,2,NULL),(316,38,18,2,NULL),(317,35,20,2,NULL),(318,37,20,2,NULL),(319,38,20,2,NULL),(320,35,22,2,NULL),(321,37,22,2,NULL),(322,38,22,2,NULL),(323,35,24,2,NULL),(324,37,24,2,NULL),(325,38,24,2,NULL),(326,35,28,2,NULL),(327,37,28,2,NULL),(328,38,28,2,NULL),(329,35,31,2,NULL),(330,37,31,2,NULL),(331,38,31,2,NULL),(332,35,33,2,NULL),(333,37,33,2,NULL),(334,38,33,2,NULL),(335,35,34,2,NULL),(336,37,34,2,NULL),(337,38,34,2,NULL),(338,35,43,2,NULL),(339,37,43,2,NULL),(340,38,43,2,NULL),(341,35,49,2,NULL),(342,37,49,2,NULL),(343,38,49,2,NULL),(344,35,91,2,NULL),(345,37,91,2,NULL),(346,38,91,2,NULL),(347,35,75,2,NULL),(348,37,75,2,NULL),(349,38,75,2,NULL),(350,35,76,2,NULL),(351,37,76,2,NULL),(352,38,76,2,NULL),(353,35,83,2,NULL),(354,37,83,2,NULL),(355,38,83,2,NULL),(356,35,84,2,NULL),(357,37,84,2,NULL),(358,38,84,2,NULL),(359,35,89,2,NULL),(360,37,89,2,NULL),(361,38,89,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_WALLPAPER'),(37,'android.permission.CALL_PHONE'),(35,'android.permission.CAMERA'),(38,'android.permission.FLASHLIGHT'),(7,'android.permission.GET_ACCOUNTS'),(19,'android.permission.INTERNET'),(29,'android.permission.READ_CONTACTS'),(34,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_PHONE_STATE'),(30,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(31,'android.permission.SEND_SMS'),(28,'android.permission.SET_WALLPAPER'),(23,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(33,'com.airbit.jelly.bean.permission.C2D_MESSAGE'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(32,'com.google.android.c2dm.permission.RECEIVE'),(36,'com.google.android.c2dm.permission.SEND'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(26,'com.motorola.launcher.permission.READ_SETTINGS'),(22,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (33,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.jiubang.goscreenlock',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=pub:\"Jason Allen\"',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.faceswap.juggler',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,2),(2,4,3),(3,6,4),(4,12,7),(5,13,8),(6,14,9),(7,17,10),(8,19,12),(9,20,13),(10,23,14),(11,24,15),(12,25,16),(13,29,17),(14,30,18),(15,30,19),(16,36,21),(17,42,27),(18,46,29),(19,55,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,26),(27,2,4),(28,2,8),(29,2,10),(30,2,11),(31,2,14),(32,2,17),(33,2,16),(34,2,19),(35,2,18),(36,2,25),(37,2,24),(38,2,26),(39,3,1),(40,3,2),(41,3,3),(42,3,4),(43,3,5),(44,3,6),(45,3,8),(46,3,9),(47,3,10),(48,3,11),(49,3,12),(50,3,13),(51,3,14),(52,3,17),(53,3,16),(54,3,19),(55,3,18),(56,3,21),(57,3,23),(58,3,22),(59,3,25),(60,3,24),(61,3,26),(62,3,28),(63,4,1),(64,4,2),(65,4,3),(66,4,4),(67,4,5),(68,4,6),(69,4,7),(70,4,8),(71,4,9),(72,4,10),(73,4,11),(74,4,12),(75,4,13),(76,4,14),(77,4,17),(78,4,16),(79,4,19),(80,4,18),(81,4,21),(82,4,20),(83,4,23),(84,4,22),(85,5,1),(86,4,25),(87,5,2),(88,4,24),(89,5,3),(90,4,26),(91,5,4),(92,4,29),(93,5,5),(94,4,31),(95,5,6),(96,4,30),(97,5,8),(98,4,32),(99,5,9),(100,4,33),(101,5,10),(102,5,11),(103,5,12),(104,5,13),(105,5,14),(106,5,17),(107,5,16),(108,5,19),(109,5,18),(110,5,21),(111,5,20),(112,5,23),(113,5,22),(114,5,25),(115,5,24),(116,5,26),(117,5,29),(118,5,34),(119,5,35),(120,6,1),(121,6,3),(122,6,4),(123,6,5),(124,6,6),(125,6,8),(126,6,9),(127,6,10),(128,6,11),(129,6,12),(130,6,13),(131,6,14),(132,6,15),(133,6,17),(134,6,16),(135,6,19),(136,6,18),(137,6,21),(138,6,22),(139,6,25),(140,6,24),(141,6,26),(142,7,1),(143,7,3),(144,7,4),(145,7,5),(146,7,6),(147,7,8),(148,7,9),(149,7,10),(150,7,11),(151,7,12),(152,7,13),(153,7,14),(154,7,15),(155,7,17),(156,7,16),(157,7,19),(158,7,18),(159,7,21),(160,7,23),(161,7,22),(162,7,25),(163,7,24),(164,7,26),(165,7,28),(166,7,38),(167,7,37);
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

-- Dump completed on 2015-10-12  3:31:20
