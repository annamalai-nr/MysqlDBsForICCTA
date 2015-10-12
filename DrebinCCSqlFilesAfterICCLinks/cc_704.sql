-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_704
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(7,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.USER_PRESENT'),(20,'android.intent.action.VIEW'),(14,'android.net.wifi.WIFI_STATE_CHANGED'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(2,'android.service.wallpaper.WallpaperService'),(11,'com.airpush.android.PushServiceStart12138'),(3,'com.airpush.android.PushServiceStart23405'),(15,'com.airpush.android.PushServiceStart39748'),(12,'com.airpush.android.PushServiceStart40441'),(4,'com.airpush.android.PushServiceStart44584'),(9,'com.airpush.android.PushServiceStart52225'),(10,'com.android.action_PUSHADSACTIVITY'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(6,'com.android.vending.INSTALL_REFERRER'),(5,'com.senddroid.AdServicecom.custom.lwp.sexy_girl_washing_your_phone_4_ap'),(8,'com.senddroid.AdServicecom.sexpositions.allday');
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
INSERT INTO `Applications` VALUES (1,'com.custom.lwp.BuxomtitsDenisenJordan',3),(2,'com.custom.lwp.sexy_girl_washing_your_phone_4_ap',4),(3,'com.jarodyv.livewallpaper.matrix',43),(4,'com.sexpositions.allday',5),(5,'com.androidhat.android.wallpapermonkey',24),(6,'it.inforbit.tanks',1),(7,'org.aaa.MemBlockG',2);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'com.jarodyv.livewallpaper.matrix.MatrixSetting'),(2,2,'com.custom.lwp.sexy_girl_washing_your_phone_4_ap.settings'),(3,1,'com.custom.lwp.BuxomtitsDenisenJordan.settings'),(4,3,'com.jarodyv.livewallpaper.matrix.HowToActivity'),(5,2,'com.airpush.android.PushAds'),(6,1,'com.airpush.android.PushAds'),(7,2,'com.custom.lwp.sexy_girl_washing_your_phone_4_ap.IFBTLiveWallpaperService'),(8,1,'com.custom.lwp.BuxomtitsDenisenJordan.IFBTLiveWallpaperService'),(9,3,'com.google.ads.AdActivity'),(10,2,'com.apperhand.device.android.AndroidSDKProvider'),(11,1,'com.apperhand.device.android.AndroidSDKProvider'),(12,3,'com.admob.android.ads.AdMobActivity'),(13,2,'com.airpush.android.PushService'),(14,1,'com.airpush.android.PushService'),(15,3,'com.jarodyv.livewallpaper.matrix.MatrixWallpaperService'),(16,4,'com.sexpositions.allday.MainActivity_'),(17,3,'com.apperhand.device.android.AndroidSDKProvider'),(18,2,'com.senddroid.AdService'),(19,1,'com.airpush.android.UserDetailsReceiver'),(20,3,'com.admob.android.ads.analytics.InstallReceiver'),(21,1,'com.airpush.android.MessageReceiver'),(22,1,'com.airpush.android.DeliveryReceiver'),(23,4,'com.sexpositions.allday.RateActivity'),(24,2,'com.airpush.android.UserDetailsReceiver'),(25,1,'com.Leadbolt.AdNotification'),(26,4,'com.airpush.android.PushAds'),(27,2,'com.airpush.android.MessageReceiver'),(28,4,'com.apperhand.device.android.AndroidSDKProvider'),(29,1,'com.custom.lwp.BuxomtitsDenisenJordan.BootReceiver'),(30,2,'com.airpush.android.DeliveryReceiver'),(31,4,'com.senddroid.AdService'),(32,2,'com.Leadbolt.AdNotification'),(33,2,'com.custom.lwp.sexy_girl_washing_your_phone_4_ap.BootReceiver'),(34,4,'com.airpush.android.PushService'),(35,4,'com.airpush.android.UserDetailsReceiver'),(36,4,'com.airpush.android.MessageReceiver'),(37,4,'com.airpush.android.DeliveryReceiver'),(38,4,'com.Leadbolt.AdNotification'),(39,4,'com.sexpositions.allday.BootReceiver'),(40,5,'com.androidhat.android.wallpapermonkey.WAPS_Activity'),(41,5,'com.androidhat.android.wallpapermonkey.LWActivity'),(42,5,'com.airpush.android.PushAds'),(43,5,'com.donson.momark.activity.AdActivity'),(44,5,'com.kuguo.openads.AdsOfferListActivity'),(45,5,'com.kuguo.pushads.PushAdsActivity'),(46,5,'net.miidi.credit.MiidiWebViewActivity'),(47,5,'com.androidhat.android.wallpapermonkey.MonkeyWallpaper'),(48,5,'com.airpush.android.PushService'),(49,6,'it.inforbit.tanks.GalleryActivity'),(50,5,'com.apperhand.device.android.AndroidSDKProvider'),(51,6,'com.google.ads.AdActivity'),(52,5,'com.kuguo.pushads.AdsService'),(53,6,'com.mobfox.sdk.InAppWebView'),(54,5,'net.miidi.credit.MiidiCreditService'),(55,6,'com.inmobi.androidsdk.IMBrowserActivity'),(56,5,'com.airpush.android.UserDetailsReceiver'),(57,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(58,5,'com.airpush.android.MessageReceiver'),(59,6,'com.airpush.android.PushAds'),(60,5,'com.airpush.android.DeliveryReceiver'),(61,6,'com.millennialmedia.android.VideoPlayer'),(62,5,'com.androidhat.android.wallpapermonkey.BootReceiver'),(63,6,'com.airpush.android.PushService'),(64,5,'com.kuguo.pushads.AdsReceiver'),(65,6,'com.apperhand.device.android.AndroidSDKProvider'),(66,6,'com.airpush.android.UserDetailsReceiver'),(67,6,'com.airpush.android.MessageReceiver'),(68,6,'com.airpush.android.DeliveryReceiver'),(69,6,'com.Leadbolt.AdNotification'),(70,6,'it.inforbit.tanks.BootReceiver'),(71,7,'com.airpush.android.PushAds'),(72,7,'mobi.vserv.android.adengine.VservAdManager'),(73,7,'org.aaa.MemBlockG.MemBlock'),(74,7,'mobi.vserv.android.adengine.VservAgent'),(75,7,'mobi.vserv.android.adengine.VservInstallNotifier'),(76,7,'com.apperhand.device.android.AndroidSDKProvider'),(77,7,'com.airpush.android.PushService'),(78,7,'org.aaa.MemBlockG.BootReceiver'),(79,7,'com.Leadbolt.AdNotification'),(80,7,'com.airpush.android.UserDetailsReceiver'),(81,7,'com.airpush.android.MessageReceiver'),(82,7,'com.airpush.android.DeliveryReceiver'),(83,3,'com.apperhand.device.android.a.e'),(84,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(85,3,'com.apperhand.device.android.a.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'skd'),(2,20,'(.*)'),(3,12,'mi'),(4,17,'SERVICE_MODE'),(5,12,'u'),(6,17,'DEVELOPER_ID'),(7,12,'c'),(8,9,'com.google.circles.platform.result.extra.ACTION'),(9,12,'json'),(10,17,'M_SERVER_URL'),(11,9,'com.google.ads.AdOpener'),(12,12,'or'),(13,12,'tr'),(14,17,'USER_AGENT'),(15,12,'t'),(16,12,'sd'),(17,12,'a'),(18,12,'msm'),(19,9,'params'),(20,12,'sin'),(21,12,'si'),(22,12,'ap'),(23,20,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(24,12,'rd'),(25,20,'ADMOB_PUBLISHER_ID'),(26,20,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(27,9,'action'),(28,17,'permanent'),(29,17,'APPLICATION_ID'),(30,12,'ad'),(31,20,'referrer'),(32,17,'FIRST_RUN'),(33,12,'cbo'),(34,9,'com.google.circles.platform.result.extra.CONFIRMATION'),(35,12,'b'),(36,12,'ru'),(37,12,'nosk'),(38,12,'su'),(39,12,'p'),(40,12,'$'),(41,12,'sc'),(42,12,'oi'),(43,12,'au'),(44,12,'sku'),(45,12,'cs'),(46,12,'int'),(47,12,'o'),(48,12,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,8,'s',1,29,NULL),(8,7,'s',1,29,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,29,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,29,NULL),(48,48,'s',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,84,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,17),(2,2,17),(3,3,4),(4,4,9),(5,5,1),(6,6,1),(7,7,17),(8,8,1),(9,9,1),(10,10,17),(11,11,4),(12,12,17),(13,13,17),(14,14,9),(15,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,83,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(2,83,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(3,4,'<com.jarodyv.livewallpaper.matrix.HowToActivity: void onCreate(android.os.Bundle)>',10,'a',NULL),(4,9,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(5,1,'<com.jarodyv.livewallpaper.matrix.MatrixSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(6,1,'<com.jarodyv.livewallpaper.matrix.MatrixSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(7,85,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(8,1,'<com.jarodyv.livewallpaper.matrix.MatrixSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(9,1,'<com.jarodyv.livewallpaper.matrix.MatrixSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',10,'a',NULL),(10,85,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(11,17,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(12,85,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(13,83,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(14,9,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(15,1,'<com.jarodyv.livewallpaper.matrix.MatrixSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',35,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,18),(2,2,19),(3,4,20),(4,5,20),(5,6,20),(6,7,20),(7,10,20),(8,11,21),(9,12,21),(10,13,20),(11,14,20);
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
INSERT INTO `ICategories` VALUES (1,3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,8,'com/apperhand/device/android/AndroidSDKProvider'),(3,9,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,3),(2,5,4),(3,6,6),(4,7,7),(5,10,11),(6,11,12),(7,12,13),(8,13,14),(9,14,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,3,'com.google.circles.platform.intent.extra.ACTION'),(5,3,'(.*)'),(6,3,'com.google.circles.platform.intent.extra.ENTITY'),(7,3,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(8,8,'M_SERVER_URL'),(9,8,'USER_AGENT'),(10,8,'SERVICE_MODE'),(11,8,'FIRST_RUN'),(12,8,'DEVELOPER_ID'),(13,8,'(.*)'),(14,8,'APPLICATION_ID'),(15,9,'M_SERVER_URL'),(16,9,'USER_AGENT'),(17,9,'SERVICE_MODE'),(18,9,'FIRST_RUN'),(19,9,'DEVELOPER_ID'),(20,9,'APPLICATION_ID');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,1),(6,5,2),(7,6,4),(8,7,1),(9,8,5),(10,9,6),(11,10,7),(12,11,8),(13,12,7),(14,13,9),(15,14,7),(16,15,1),(17,16,1),(18,17,10),(19,18,2),(20,19,11),(21,20,1),(22,21,7),(23,22,12),(24,23,13),(25,24,14),(26,25,7),(27,26,1),(28,27,15),(29,28,7),(30,29,7),(31,30,16),(32,30,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,7,2),(3,10,3),(4,12,3),(5,14,3),(6,15,4),(7,16,2),(8,17,4),(9,20,2),(10,21,3),(11,25,3),(12,26,2),(13,29,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'(.*)','(.*)'),(2,13,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.google.android.apps.plus'),(2,8,'com.jarodyv.livewallpaper.matrix'),(3,9,'com.jarodyv.livewallpaper.matrix');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,4,0),(2,8,0),(3,7,0),(4,13,0),(5,15,0),(6,14,0),(7,16,0),(8,18,0),(9,20,0),(10,29,0),(11,31,0),(12,33,0),(13,34,0),(14,39,0),(15,40,0),(16,41,0),(17,45,0),(18,47,0),(19,48,0),(20,49,0),(21,62,0),(22,63,0),(23,64,0),(24,64,0),(25,70,0),(26,72,0),(27,77,0),(28,78,0),(29,78,0),(30,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,3,1,0),(3,4,0,0),(4,5,1,0),(5,6,1,0),(6,8,1,0),(7,9,1,0),(8,11,0,0),(9,11,0,0),(10,14,1,0),(11,14,1,0),(12,14,1,0),(13,14,1,0),(14,15,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,7,2,NULL),(2,10,7,2,NULL),(3,12,7,2,NULL),(4,2,14,2,NULL),(5,10,14,2,NULL),(6,12,14,2,NULL),(7,2,29,2,NULL),(8,10,29,2,NULL),(9,12,29,2,NULL),(10,2,8,2,NULL),(11,2,13,2,NULL),(12,2,18,2,NULL),(13,2,33,2,NULL),(14,10,4,2,NULL),(15,12,4,2,NULL),(16,2,15,2,NULL),(17,2,20,2,NULL),(18,2,83,2,NULL),(19,2,16,2,NULL),(20,2,31,2,NULL),(21,2,34,2,NULL),(22,2,39,2,NULL),(23,2,40,2,NULL),(24,2,41,2,NULL),(25,2,45,2,NULL),(26,2,47,2,NULL),(27,2,48,2,NULL),(28,2,62,2,NULL),(29,2,64,2,NULL),(30,2,49,2,NULL),(31,2,63,2,NULL),(32,2,70,2,NULL),(33,2,72,2,NULL),(34,2,77,2,NULL),(35,2,78,2,NULL),(36,10,8,2,NULL),(37,12,8,2,NULL),(38,10,13,2,NULL),(39,12,13,2,NULL),(40,10,18,2,NULL),(41,12,18,2,NULL),(42,10,33,2,NULL),(43,12,33,2,NULL),(44,10,15,2,NULL),(45,12,15,2,NULL),(46,10,20,2,NULL),(47,12,20,2,NULL),(48,10,83,2,NULL),(49,12,83,2,NULL),(50,10,16,2,NULL),(51,12,16,2,NULL),(52,10,31,2,NULL),(53,12,31,2,NULL),(54,10,34,2,NULL),(55,12,34,2,NULL),(56,10,39,2,NULL),(57,12,39,2,NULL),(58,10,40,2,NULL),(59,12,40,2,NULL),(60,10,41,2,NULL),(61,12,41,2,NULL),(62,10,45,2,NULL),(63,12,45,2,NULL),(64,10,47,2,NULL),(65,12,47,2,NULL),(66,10,48,2,NULL),(67,12,48,2,NULL),(68,10,62,2,NULL),(69,12,62,2,NULL),(70,10,64,2,NULL),(71,12,64,2,NULL),(72,10,49,2,NULL),(73,12,49,2,NULL),(74,10,63,2,NULL),(75,12,63,2,NULL),(76,10,70,2,NULL),(77,12,70,2,NULL),(78,10,72,2,NULL),(79,12,72,2,NULL),(80,10,77,2,NULL),(81,12,77,2,NULL),(82,10,78,2,NULL),(83,12,78,2,NULL),(84,8,10,2,NULL),(85,8,11,2,NULL),(86,8,17,2,NULL),(87,8,28,2,NULL),(88,8,50,2,NULL),(89,8,65,2,NULL),(90,8,76,2,NULL),(91,9,10,2,NULL),(92,9,11,2,NULL),(93,9,17,2,NULL),(94,9,28,2,NULL),(95,9,50,2,NULL),(96,9,65,2,NULL),(97,9,76,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(31,'android.permission.GET_TASKS'),(34,'android.permission.INSTALL_PACKAGES'),(19,'android.permission.INTERNET'),(32,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(30,'android.permission.SET_WALLPAPER'),(33,'android.permission.SET_WALLPAPER_HINTS'),(27,'android.permission.SYSTEM_ALERT_WINDOW'),(23,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'android.permission.WRITE_SETTINGS'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(26,'com.motorola.launcher.permission.READ_SETTINGS'),(18,'om.android.launcher.permission.INSTALL_SHORTCUT'),(22,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.matrix2',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.matrixfour',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.matrixgl',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:\"A.O.I Studio\"',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.matrix3',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,1,2),(3,7,5),(4,10,8),(5,12,9),(6,13,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(15,1,8),(16,2,8),(17,1,9),(18,2,9),(19,3,1),(20,1,10),(21,3,3),(22,2,10),(23,1,11),(24,2,11),(25,3,4),(26,1,12),(27,3,7),(28,2,12),(29,1,13),(30,3,9),(31,2,13),(32,1,14),(33,2,14),(34,3,12),(35,1,15),(36,3,14),(37,2,15),(38,1,17),(39,2,17),(40,3,15),(41,1,16),(42,4,1),(43,3,17),(44,2,16),(45,1,19),(46,4,2),(47,2,19),(48,3,16),(49,1,18),(50,4,3),(51,3,19),(52,2,21),(53,1,21),(54,4,4),(55,2,20),(56,3,21),(57,1,20),(58,4,6),(59,2,23),(60,3,22),(61,1,23),(62,4,7),(63,3,24),(64,2,22),(65,1,22),(66,4,8),(67,2,25),(68,3,27),(69,4,9),(70,1,25),(71,3,26),(72,2,24),(73,4,10),(74,1,24),(75,2,26),(76,1,26),(77,4,11),(78,4,12),(79,4,13),(80,4,14),(81,4,15),(82,4,16),(83,4,19),(84,4,21),(85,4,20),(86,4,23),(87,4,22),(88,4,25),(89,4,24),(90,4,26),(91,4,28),(92,5,1),(93,5,2),(94,5,3),(95,5,4),(96,5,5),(97,5,6),(98,5,7),(99,5,8),(100,5,9),(101,5,10),(102,5,11),(103,5,12),(104,5,13),(105,5,14),(106,5,15),(107,5,17),(108,5,16),(109,5,19),(110,5,21),(111,5,23),(112,5,22),(113,5,25),(114,5,24),(115,5,26),(116,5,31),(117,5,30),(118,5,34),(119,5,32),(120,5,33),(121,6,1),(122,6,2),(123,6,3),(124,6,4),(125,6,5),(126,6,6),(127,6,7),(128,6,8),(129,6,9),(130,6,10),(131,6,11),(132,6,12),(133,6,13),(134,6,14),(135,6,15),(136,6,17),(137,6,16),(138,6,19),(139,6,21),(140,6,20),(141,6,22),(142,6,25),(143,6,26),(144,6,30),(145,7,1),(146,7,3),(147,7,4),(148,7,5),(149,7,6),(150,7,7),(151,7,8),(152,7,9),(153,7,10),(154,7,11),(155,7,12),(156,7,13),(157,7,14),(158,7,15),(159,7,17),(160,7,16),(161,7,19),(162,7,21),(163,7,20),(164,7,23),(165,7,22),(166,7,25),(167,7,24),(168,7,26);
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

-- Dump completed on 2015-10-12  3:31:26
