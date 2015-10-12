-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_677
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(19,'NULL-CONSTANT'),(11,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(22,'android.intent.action.DIAL'),(21,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.VIEW'),(14,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.service.wallpaper.WallpaperService'),(4,'com.airpush.android.PushServiceStart13270'),(6,'com.airpush.android.PushServiceStart47855'),(12,'com.airpush.android.PushServiceStart56021'),(8,'com.airpush.android.PushServiceStart61232'),(17,'com.android.launcher.action.INSTALL_SHORTCUT'),(18,'com.apperhand.action.show.eula'),(7,'com.applovin.sdk.AppLovinService'),(5,'com.senddroid.AdServicecom.jigsaw.jigswhockey'),(13,'com.senddroid.AdServiceorg.drhu.QRCode'),(9,'com.senddroid.AdServicewatch.tv.live.free');
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
INSERT INTO `Applications` VALUES (1,'com.wideapps.android.facemoodscanner',43),(2,'com.AlDiApps.FlyingThroughTheCloudslite',60),(3,'com.firstrequiem.funnyringtonescollection',14),(4,'com.jree.jigsawpool',3),(5,'tool.app.scl',1),(6,'watch.tv.live.free',649),(7,'org.drhu.QRCode',40);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wideapps.android.facemoodscanner.FaceMoodScannerActivity'),(2,1,'com.wideapps.android.facemoodscanner.CameraView'),(3,1,'com.wideapps.android.facemoodscanner.ResultActivity'),(4,1,'com.apperhand.device.android.EULAActivity'),(5,1,'com.google.ads.AdActivity'),(6,1,'com.GCxrSIXG.IFOWtuUK94640.OptinActivity'),(7,1,'com.GCxrSIXG.IFOWtuUK94640.PushService'),(8,1,'com.apperhand.device.android.AndroidSDKProvider'),(9,1,'com.GCxrSIXG.IFOWtuUK94640.BootReceiver'),(10,1,'com.pad.android.xappad.AdNotification'),(11,1,'com.pad.android.xappad.AdReminderNotification'),(12,2,'com.AlDiApps.FlyingThroughTheCloudslite.Settings'),(13,2,'com.AlDiApps.FlyingThroughTheCloudslite.Livewallpaper'),(14,3,'com.firstrequiem.funnyringtonescollection.FunnyRingtonesCollection'),(15,2,'com.apperhand.device.android.AndroidSDKProvider'),(16,3,'com.airpush.android.PushAds'),(17,3,'com.mobfox.sdk.InAppWebView'),(18,3,'com.airpush.android.PushService'),(19,3,'com.apperhand.device.android.AndroidSDKProvider'),(20,3,'com.airpush.android.UserDetailsReceiver'),(21,3,'com.airpush.android.MessageReceiver'),(22,3,'com.airpush.android.DeliveryReceiver'),(23,3,'com.firstrequiem.funnyringtonescollection.BootReceiver'),(24,4,'com.car.racing.puzzlegame.JigdrawPuzzleMain'),(25,4,'com.car.racing.puzzlegame.Ads'),(26,4,'com.car.racing.puzzlegame.PreferSettingActivity'),(27,4,'com.moolah.NotificationService'),(28,4,'com.apperhand.device.android.AndroidSDKProvider'),(29,4,'com.senddroid.AdService'),(30,4,'com.moolah.MessageReceiver'),(31,4,'com.moolah.BootReceiver'),(32,4,'com.Leadbolt.AdNotification'),(33,4,'com.car.racing.puzzlegame.BootReceiver'),(34,5,'tool.app.scl.OfferActivity'),(35,5,'tool.app.scl.DownloadManagerActivity'),(36,5,'tool.app.scl.SettingActivity'),(37,5,'com.airpush.android.PushAds'),(38,5,'com.airpush.android.PushService'),(39,5,'com.moolah.NotificationService'),(40,5,'com.androlib.android.AndrolibAdsService'),(41,5,'com.applovin.sdk.AppLovinService'),(42,5,'com.apperhand.device.android.AndroidSDKProvider'),(43,5,'com.airpush.android.UserDetailsReceiver'),(44,5,'com.airpush.android.MessageReceiver'),(45,5,'com.airpush.android.DeliveryReceiver'),(46,5,'tool.app.scl.BootReceiver'),(47,5,'com.moolah.MessageReceiver'),(48,5,'com.moolah.BootReceiver'),(49,5,'com.androlib.android.BootReceiver'),(50,5,'com.applovin.sdk.AppLovinBootReceiver'),(51,5,'com.Leadbolt.AdNotification'),(52,6,'watch.tv.live.free.TabWidgetActivity'),(53,6,'watch.tv.live.free.CategoriesActivity'),(54,6,'watch.tv.live.free.CategoryActivity'),(55,6,'watch.tv.live.free.BlankActivity'),(56,6,'watch.tv.live.free.ChannelActivity'),(57,6,'com.airpush.android.PushAds'),(58,6,'com.chartboost.sdk.CBDialogActivity'),(59,6,'com.boost.beluga.hotapps.HotAppsActivity'),(60,6,'com.airpush.android.PushService'),(61,6,'com.senddroid.AdService'),(62,6,'watch.tv.live.free.aufyebsuxbx7xto'),(63,6,'com.apperhand.device.android.AndroidSDKProvider'),(64,6,'com.Leadbolt.AdNotification'),(65,6,'com.airpush.android.UserDetailsReceiver'),(66,6,'com.airpush.android.MessageReceiver'),(67,6,'com.airpush.android.DeliveryReceiver'),(68,6,'watch.tv.live.free.BootReceiver'),(69,6,'com.boost.beluga.tracker.TrackerReceiver'),(70,6,'watch.tv.live.free.qiv1hxpb946lmclwc4rb'),(71,7,'org.drhu.QRCode.QRImageView'),(72,7,'org.drhu.QRCode.QRReceiverHandler'),(73,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(74,7,'com.millennialmedia.android.VideoPlayer'),(75,7,'com.airpush.android.PushAds'),(76,7,'com.airpush.android.PushService'),(77,7,'com.apperhand.device.android.AndroidSDKProvider'),(78,7,'com.senddroid.AdService'),(79,7,'org.drhu.QRCode.QRSMSReceiver'),(80,7,'com.airpush.android.UserDetailsReceiver'),(81,7,'com.airpush.android.MessageReceiver'),(82,7,'com.airpush.android.DeliveryReceiver'),(83,7,'org.drhu.QRCode.BootReceiver'),(84,7,'com.Leadbolt.AdNotification'),(85,1,'com.apperhand.device.android.a.e'),(86,1,'com.wideapps.android.facemoodscanner.ResultActivity$1'),(87,1,'com.apperhand.device.android.a.b'),(88,2,'com.apperhand.device.android.a.e'),(89,4,'com.apperhand.device.android.a.b'),(90,1,'com.apperhand.device.android.a.c'),(91,2,'com.apperhand.device.android.a.a'),(92,4,'com.Leadbolt.AdController'),(93,2,'com.AlDiApps.FlyingThroughTheCloudslite.Settings$1'),(94,1,'com.wideapps.android.facemoodscanner.FaceMoodScannerActivity$1'),(95,1,'com.GCxrSIXG.IFOWtuUK94640.HandleClicks'),(96,4,'com.apperhand.device.android.a.d');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'url'),(2,1,'com.GCxrSIXG.IFOWtuUK94640.APIKEY'),(3,10,'sectionid'),(4,7,'testMode'),(5,6,'buttontxt'),(6,8,'USER_AGENT'),(7,11,'remindertext'),(8,7,'number'),(9,6,'adtype'),(10,6,'url'),(11,8,'eulaAcceptDetails'),(12,5,'params'),(13,6,'sms'),(14,7,'APIKEY'),(15,8,'SERVICE_MODE'),(16,6,'campaignid'),(17,5,'com.google.circles.platform.result.extra.ACTION'),(18,11,'alarmtype'),(19,5,'com.google.circles.platform.result.extra.CONFIRMATION'),(20,11,'sectionid'),(21,7,'header'),(22,5,'com.google.ads.AdOpener'),(23,7,'appId'),(24,5,'action'),(25,15,'SERVICE_MODE'),(26,8,'M_SERVER_URL'),(27,8,'APPLICATION_ID'),(28,2,'usefrontcam'),(29,6,'creativeid'),(30,15,'M_SERVER_URL'),(31,28,'M_SERVER_URL'),(32,15,'DEVELOPER_ID'),(33,7,'adtype'),(34,11,'remindertitle'),(35,7,'campId'),(36,28,'APPLICATION_ID'),(37,32,'sectionid'),(38,15,'permanent'),(39,15,'APPLICATION_ID'),(40,15,'FIRST_RUN'),(41,15,'USER_AGENT'),(42,28,'FIRST_RUN'),(43,30,'notif_sig'),(44,24,'preferences_level_setting_modified'),(45,1,'com.GCxrSIXG.IFOWtuUK94640.APPID'),(46,24,'preferences_audio_setting_modified'),(47,28,'USER_AGENT'),(48,28,'DEVELOPER_ID'),(49,28,'SERVICE_MODE'),(50,11,'remindericon'),(51,7,'creativeId'),(52,8,'FIRST_RUN'),(53,6,'title'),(54,8,'DEVELOPER_ID'),(55,7,'sms'),(56,6,'number');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,29,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'s',1,29,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',1,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,8),(4,4,3),(5,5,5),(6,6,8),(7,7,15),(8,8,5),(9,9,13),(10,10,8),(11,11,3),(12,12,1),(13,13,15),(14,14,28),(15,15,8),(16,16,15),(17,17,32),(18,17,33),(19,17,24),(20,18,15),(21,19,8),(22,20,15),(23,21,12),(24,22,3),(25,23,30),(26,24,1),(27,25,15),(28,26,8),(29,27,1),(30,28,24),(31,29,7),(32,30,28),(33,31,3),(34,32,28),(35,33,33),(36,33,32),(37,33,24),(38,34,24),(39,35,28),(40,36,28),(41,37,1),(42,38,28),(43,39,24),(44,40,24),(45,41,7),(46,42,8),(47,43,7),(48,44,1);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.wideapps.android.facemoodscanner.FaceMoodScannerActivity: void downloadNewVersion()>',5,'a',NULL),(2,3,'<com.wideapps.android.facemoodscanner.ResultActivity: void goToRate()>',5,'a',NULL),(3,85,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(4,86,'<com.wideapps.android.facemoodscanner.ResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(5,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(6,87,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(7,88,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(8,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(9,15,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(10,87,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(11,3,'<com.wideapps.android.facemoodscanner.ResultActivity: void downloadNewVersion()>',5,'a',NULL),(12,1,'<com.wideapps.android.facemoodscanner.FaceMoodScannerActivity: void goToRate()>',5,'a',NULL),(13,88,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(14,89,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(15,90,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(16,91,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(17,92,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(18,91,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(19,85,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(20,88,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(21,93,'<com.AlDiApps.FlyingThroughTheCloudslite.Settings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(22,3,'<com.wideapps.android.facemoodscanner.ResultActivity: void showAdDialog()>',4,'a',NULL),(23,30,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(24,1,'<com.wideapps.android.facemoodscanner.FaceMoodScannerActivity: void showAdDialog()>',4,'a',NULL),(25,91,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(26,85,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(27,94,'<com.wideapps.android.facemoodscanner.FaceMoodScannerActivity$1: void onClick(android.view.View)>',14,'a',NULL),(28,28,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(29,95,'<com.GCxrSIXG.IFOWtuUK94640.HandleClicks: void sendSms()>',17,'a',NULL),(30,89,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(31,3,'<com.wideapps.android.facemoodscanner.ResultActivity: void shareMood()>',15,'a',NULL),(32,96,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(33,92,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(34,24,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: void chooseGameImage()>',5,'a',NULL),(35,96,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(36,96,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(37,8,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(38,89,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(39,24,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(40,24,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(41,95,'<com.GCxrSIXG.IFOWtuUK94640.HandleClicks: void callNumber()>',18,'a',NULL),(42,87,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(43,95,'<com.GCxrSIXG.IFOWtuUK94640.HandleClicks: void displayUrl()>',11,'a',NULL),(44,8,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,15),(2,2,15),(3,3,15),(4,4,15),(5,5,16),(6,6,16),(7,7,15),(8,8,17),(9,11,15),(10,13,15),(11,14,18),(12,15,18),(13,16,17),(14,17,17),(15,18,17),(16,19,17),(17,20,15),(18,21,15),(19,22,19),(20,23,15),(21,24,19),(22,27,15),(23,28,20),(24,29,20),(25,30,17),(26,31,20),(27,32,20),(28,33,20),(29,34,21),(30,35,20),(31,36,20),(32,37,20),(33,41,15),(34,42,22),(35,43,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,9,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,10,'com/apperhand/device/android/AndroidSDKProvider'),(3,12,'com/apperhand/device/android/AndroidSDKProvider'),(4,22,'com/moolah/NotificationService'),(5,24,'com/moolah/NotificationService'),(6,25,'com/wideapps/android/facemoodscanner/CameraView'),(7,26,'com/apperhand/device/android/AndroidSDKProvider'),(8,39,'com/car/racing/puzzlegame/PreferSettingActivity'),(9,38,'com/apperhand/device/android/AndroidSDKProvider'),(10,40,'com/apperhand/device/android/AndroidSDKProvider'),(11,44,'com/apperhand/device/android/EULAActivity'),(12,45,'com/apperhand/device/android/EULAActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,5),(4,4,6),(5,5,7),(6,6,8),(7,7,9),(8,11,12),(9,13,13),(10,20,20),(11,21,21),(12,23,22),(13,41,31),(14,42,32),(15,43,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'android.intent.extra.shortcut.NAME'),(2,9,'com.google.circles.platform.intent.extra.ACTION'),(3,8,'android.intent.extra.shortcut.ICON'),(4,9,'(.*)'),(5,8,'android.intent.extra.shortcut.INTENT'),(6,9,'com.google.circles.platform.intent.extra.ENTITY'),(7,9,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(8,10,'M_SERVER_URL'),(9,10,'USER_AGENT'),(10,10,'SERVICE_MODE'),(11,10,'FIRST_RUN'),(12,10,'DEVELOPER_ID'),(13,10,'(.*)'),(14,10,'APPLICATION_ID'),(15,12,'M_SERVER_URL'),(16,12,'USER_AGENT'),(17,12,'SERVICE_MODE'),(18,12,'FIRST_RUN'),(19,12,'DEVELOPER_ID'),(20,12,'APPLICATION_ID'),(21,15,'footerHTML'),(22,16,'android.intent.extra.shortcut.NAME'),(23,15,'bodyHTML'),(24,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(25,16,'android.intent.extra.shortcut.INTENT'),(26,17,'android.intent.extra.shortcut.NAME'),(27,17,'android.intent.extra.shortcut.ICON'),(28,17,'android.intent.extra.shortcut.ICON_RESOURCE'),(29,18,'android.intent.extra.shortcut.NAME'),(30,17,'android.intent.extra.shortcut.INTENT'),(31,18,'android.intent.extra.shortcut.ICON'),(32,18,'android.intent.extra.shortcut.INTENT'),(33,19,'android.intent.extra.shortcut.NAME'),(34,19,'android.intent.extra.shortcut.ICON'),(35,19,'android.intent.extra.shortcut.INTENT'),(36,22,'notif_sig'),(37,22,'test_mode'),(38,24,'test_mode'),(39,25,'usefrontcam'),(40,26,'M_SERVER_URL'),(41,26,'USER_AGENT'),(42,26,'SERVICE_MODE'),(43,26,'FIRST_RUN'),(44,26,'DEVELOPER_ID'),(45,26,'APPLICATION_ID'),(46,27,'sms_body'),(47,27,'address'),(48,28,'android.intent.extra.INTENT'),(49,29,'android.intent.extra.INTENT'),(50,30,'android.intent.extra.shortcut.NAME'),(51,30,'android.intent.extra.shortcut.ICON'),(52,30,'android.intent.extra.shortcut.INTENT'),(53,31,'android.intent.extra.TITLE'),(54,31,'android.intent.extra.INTENT'),(55,32,'android.intent.extra.INTENT'),(56,33,'android.intent.extra.TITLE'),(57,33,'android.intent.extra.INTENT'),(58,35,'android.intent.extra.INTENT'),(59,36,'android.intent.extra.TITLE'),(60,36,'android.intent.extra.INTENT'),(61,37,'android.intent.extra.TITLE'),(62,37,'android.intent.extra.INTENT'),(63,38,'M_SERVER_URL'),(64,38,'USER_AGENT'),(65,38,'SERVICE_MODE'),(66,38,'FIRST_RUN'),(67,38,'DEVELOPER_ID'),(68,38,'APPLICATION_ID'),(69,40,'eulaAcceptDetails'),(70,40,'M_SERVER_URL'),(71,40,'USER_AGENT'),(72,40,'SERVICE_MODE'),(73,40,'FIRST_RUN'),(74,41,'sms_body'),(75,40,'DEVELOPER_ID'),(76,40,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,2),(7,7,1),(8,8,5),(9,9,2),(10,10,2),(11,11,1),(12,12,6),(13,13,7),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,1),(19,19,8),(20,20,9),(21,21,3),(22,22,2),(23,23,10),(24,24,11),(25,25,1),(26,26,1),(27,27,12),(28,28,13),(29,29,14),(30,30,2),(31,31,2),(32,32,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,6,2),(5,7,1),(6,9,2),(7,11,1),(8,14,2),(9,15,2),(10,16,2),(11,18,1),(12,22,2),(13,25,1),(14,30,2),(15,32,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'(.*)','(.*)'),(2,7,'(.*)','(.*)'),(3,27,'vnd.android-dir','mms-sms'),(4,34,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,9,'com.google.android.apps.plus'),(2,10,'com.AlDiApps.FlyingThroughTheCloudslite'),(3,12,'com.AlDiApps.FlyingThroughTheCloudslite'),(4,14,'com.wideapps.android.facemoodscanner'),(5,15,'com.wideapps.android.facemoodscanner'),(6,22,'com.jree.jigsawpool'),(7,24,'com.jree.jigsawpool'),(8,25,'com.wideapps.android.facemoodscanner'),(9,26,'com.jree.jigsawpool'),(10,39,'com.jree.jigsawpool'),(11,38,'com.wideapps.android.facemoodscanner'),(12,40,'com.wideapps.android.facemoodscanner'),(13,44,'com.wideapps.android.facemoodscanner'),(14,45,'com.wideapps.android.facemoodscanner');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,14,0),(4,13,0),(5,18,0),(6,23,0),(7,25,0),(8,29,0),(9,31,0),(10,33,0),(11,34,0),(12,38,0),(13,41,0),(14,46,0),(15,48,0),(16,49,0),(17,50,0),(18,52,0),(19,60,0),(20,61,0),(21,62,0),(22,68,0),(23,69,0),(24,70,0),(25,71,0),(26,72,0),(27,76,0),(28,78,0),(29,79,0),(30,83,0),(31,83,0),(32,83,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,4,1,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,7,1,0),(9,8,0,0),(10,9,0,0),(11,11,1,0),(12,9,0,0),(13,12,1,0),(14,15,1,0),(15,15,1,0),(16,17,1,0),(17,17,1,0),(18,19,1,0),(19,17,1,0),(20,21,1,0),(21,22,1,0),(22,23,0,0),(23,24,1,0),(24,23,0,0),(25,27,0,0),(26,28,0,0),(27,29,1,0),(28,31,1,0),(29,31,1,0),(30,32,1,0),(31,31,1,0),(32,31,1,0),(33,31,1,0),(34,34,1,0),(35,31,1,0),(36,31,1,0),(37,31,1,0),(38,37,0,0),(39,39,0,0),(40,37,0,0),(41,40,1,0),(42,41,1,0),(43,43,1,0),(44,44,0,0),(45,44,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(31,'android.permission.CALL_PHONE'),(8,'android.permission.CAMERA'),(28,'android.permission.FLASHLIGHT'),(32,'android.permission.GET_ACCOUNTS'),(18,'android.permission.INTERNET'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(33,'android.permission.RECEIVE_SMS'),(34,'android.permission.SEND_SMS'),(30,'android.permission.SET_WALLPAPER'),(22,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_EXTERNAL_STORAGE'),(27,'android.permission.WRITE_SETTINGS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(23,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.fede.launcher.permission.READ_SETTINGS'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(2,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(3,'com.motorola.dlauncher.permission.READ_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(25,'com.motorola.launcher.permission.READ_SETTINGS'),(21,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.wideapps.android.facemooddetector',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.wideapps.android.facemoodscanner',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.wideapps.android.facemooddetector',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.wideapps.android.facemooddetector',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.wideapps.android.facemoodscanner',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'http://aldiapps.blogspot.com/',NULL,NULL,NULL),(21,NULL,NULL,'http://ad.leadboltads.net/show_app_wall?section_id=549285763',NULL,NULL,NULL),(22,NULL,NULL,'http://ad.leadboltads.net/show_app_wall?section_id=549285763',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(28,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(29,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'sms:',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,3),(2,3,4),(3,6,10),(4,10,11),(5,13,14),(6,14,15),(7,16,16),(8,18,17),(9,20,18),(10,20,19),(11,25,23),(12,26,24),(13,30,25),(14,33,26),(15,35,27),(16,35,28),(17,36,29),(18,38,30),(19,42,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,2,1),(27,2,2),(28,2,3),(29,2,4),(30,2,6),(31,3,4),(32,2,9),(33,3,5),(34,2,10),(35,3,6),(36,2,12),(37,3,7),(38,2,15),(39,3,10),(40,2,17),(41,3,11),(42,2,16),(43,3,13),(44,2,18),(45,3,15),(46,2,21),(47,3,17),(48,2,20),(49,3,18),(50,2,23),(51,3,23),(52,2,25),(53,3,22),(54,2,24),(55,3,24),(56,3,27),(57,3,26),(58,3,28),(59,4,1),(60,4,32),(61,4,2),(62,4,3),(63,4,4),(64,4,6),(65,4,7),(66,4,9),(67,4,10),(68,4,12),(69,4,13),(70,4,14),(71,4,15),(72,4,17),(73,4,16),(74,4,18),(75,4,21),(76,4,20),(77,4,25),(78,4,24),(79,4,31),(80,4,30),(81,5,1),(82,5,2),(83,5,3),(84,5,4),(85,5,5),(86,5,6),(87,5,7),(88,5,9),(89,5,10),(90,5,11),(91,5,12),(92,5,13),(93,5,14),(94,5,15),(95,5,17),(96,5,16),(97,5,19),(98,5,18),(99,5,21),(100,5,20),(101,5,23),(102,5,22),(103,5,25),(104,5,24),(105,5,26),(106,5,32),(107,6,1),(108,6,2),(109,6,3),(110,6,4),(111,6,5),(112,6,6),(113,6,7),(114,6,9),(115,6,10),(116,6,11),(117,6,12),(118,6,13),(119,6,14),(120,6,15),(121,6,17),(122,6,16),(123,6,19),(124,6,18),(125,6,21),(126,6,20),(127,6,23),(128,6,22),(129,6,25),(130,6,24),(131,6,26),(132,7,1),(133,7,2),(134,7,3),(135,7,4),(136,7,5),(137,7,6),(138,7,7),(139,7,8),(140,7,9),(141,7,10),(142,7,11),(143,7,12),(144,7,13),(145,7,14),(146,7,15),(147,7,17),(148,7,16),(149,7,19),(150,7,18),(151,7,21),(152,7,20),(153,7,23),(154,7,22),(155,7,25),(156,7,24),(157,7,26),(158,7,34),(159,7,32),(160,7,33);
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

-- Dump completed on 2015-10-09  0:40:45
