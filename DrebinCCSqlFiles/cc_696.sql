-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_696
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(22,'android.intent.action.DIAL'),(21,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(7,'android.service.wallpaper.WallpaperService'),(8,'com.airpush.android.PushServiceStart31506'),(12,'com.airpush.android.PushServiceStart34223'),(11,'com.airpush.android.PushServiceStart49897'),(9,'com.airpush.android.PushServiceStart58529'),(17,'com.android.launcher.action.INSTALL_SHORTCUT'),(19,'com.apperhand.action.show.eula'),(6,'com.applovin.sdk.AppLovinService'),(15,'com.jiubang.screenguru.SCREEN_SAVER_OPEN'),(4,'com.jiubang.screenguru.finger.CERT'),(3,'com.jiubang.screenguru.finger.GESTURE'),(2,'com.jiubang.screenguru.finger.NINEGRID'),(10,'com.senddroid.AdServicecom.custom.lwp.MagictouchHeartwatersplashone');
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
INSERT INTO `Applications` VALUES (1,'com.gau.screenguru.finger',14),(2,'com.antonio.tattoo',22),(3,'com.custom.lwp.DarkClownJokerByRedNose',3),(4,'homer.soundboard',16),(5,'com.custom.lwp.MagictouchHeartwatersplashone',4),(6,'com.bindapps.flag_india_lwp',1),(7,'com.wideapps.android.facemoodscanner',38);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.gau.screenguru.finger.mainmenu.StartScreenActivity'),(2,1,'com.gau.screenguru.finger.mainmenu.SettingActivity'),(3,1,'com.gau.screenguru.finger.mainmenu.Help'),(4,1,'com.gau.screenguru.finger.mainmenu.PreviewActivity'),(5,1,'com.gau.screenguru.finger.unlock9grid.CreatePatternActivity'),(6,1,'com.gau.screenguru.finger.unlockgesture.CreateGestureActivity'),(7,1,'com.gau.screenguru.finger.unlockgesture.GestureUnlockActivity'),(8,1,'com.gau.screenguru.finger.Finger'),(9,1,'com.gau.screenguru.finger.GatherFinger'),(10,1,'com.gau.screenguru.finger.service.ScreenService'),(11,1,'com.apperhand.device.android.AndroidSDKProvider'),(12,1,'com.gau.screenguru.finger.service.BootReceiver'),(13,2,'com.antonio.tattoo.AcMain'),(14,2,'com.antonio.tattoo.AcLoadCategoryPic'),(15,2,'com.antonio.tattoo.AcLoadFavorites'),(16,2,'com.antonio.tattoo.AcRateMeWith5Stars'),(17,2,'com.antonio.tattoo.AcMyAppsFragment'),(18,2,'com.antonio.tattoo.AcMenu'),(19,2,'com.antonio.tattoo.AcVote'),(20,2,'com.antonio.tattoo.AcUpload'),(21,2,'com.antonio.tattoo.AcMessage'),(22,2,'com.antonio.tattoo.AcAbout'),(23,2,'com.antonio.tattoo.AcNewspaper'),(24,2,'com.apperhand.device.android.EULAActivity'),(25,3,'com.custom.lwp.DarkClownJokerByRedNose.settings'),(26,2,'com.airpush.android.OptinActivity'),(27,3,'com.airpush.android.PushAds'),(28,2,'com.applovin.sdk.AppLovinService'),(29,3,'com.custom.lwp.DarkClownJokerByRedNose.IFBTLiveWallpaperService'),(30,2,'com.apperhand.device.android.AndroidSDKProvider'),(31,2,'com.airpush.android.PushService'),(32,3,'com.apperhand.device.android.AndroidSDKProvider'),(33,2,'com.airpush.android.BootReceiver'),(34,3,'com.airpush.android.PushService'),(35,4,'scooby.doo.soundboardActivity'),(36,3,'com.airpush.android.UserDetailsReceiver'),(37,4,'scooby.doo.optionsActivity'),(38,3,'com.airpush.android.MessageReceiver'),(39,5,'com.custom.lwp.MagictouchHeartwatersplashone.vickyWallpaperOptions'),(40,4,'scooby.doo.shaggyActivity'),(41,3,'com.airpush.android.DeliveryReceiver'),(42,5,'com.custom.lwp.MagictouchHeartwatersplashone.vickyLauncher'),(43,3,'com.Leadbolt.AdNotification'),(44,3,'com.custom.lwp.DarkClownJokerByRedNose.BootReceiver'),(45,4,'scooby.doo.freddyActivity'),(46,5,'com.custom.uilib.FilePicker'),(47,4,'scooby.doo.velmaActivity'),(48,5,'com.airpush.android.PushAds'),(49,5,'com.custom.lwp.MagictouchHeartwatersplashone.vickyWallpaperService'),(50,6,'com.bindapps.flag_india_lwp.Slider1Activity'),(51,4,'scooby.doo.daphneActivity'),(52,5,'com.apperhand.device.android.AndroidSDKProvider'),(53,4,'scooby.doo.miscActivity'),(54,6,'com.bindapps.flag_india_lwp.PrefActivity'),(55,7,'com.wideapps.android.facemoodscanner.FaceMoodScannerActivity'),(56,5,'com.airpush.android.PushService'),(57,6,'com.airpush.android.PushAds'),(58,4,'com.google.ads.AdActivity'),(59,6,'com.apperhand.device.android.AndroidSDKProvider'),(60,7,'com.wideapps.android.facemoodscanner.CameraView'),(61,5,'com.senddroid.AdService'),(62,6,'com.bindapps.flag_india_lwp.Wallpaper'),(63,4,'com.apperhand.device.android.AndroidSDKProvider'),(64,7,'com.wideapps.android.facemoodscanner.ResultActivity'),(65,7,'com.google.ads.AdActivity'),(66,6,'com.airpush.android.PushService'),(67,5,'com.airpush.android.UserDetailsReceiver'),(68,7,'com.airpush.android.PushAds'),(69,5,'com.airpush.android.MessageReceiver'),(70,7,'com.airpush.android.PushService'),(71,5,'com.airpush.android.DeliveryReceiver'),(72,6,'com.applovin.sdk.AppLovinService'),(73,5,'com.Leadbolt.AdNotification'),(74,7,'com.apperhand.device.android.AndroidSDKProvider'),(75,5,'com.custom.lwp.MagictouchHeartwatersplashone.BootReceiver'),(76,6,'com.airpush.android.UserDetailsReceiver'),(77,7,'com.airpush.android.UserDetailsReceiver'),(78,6,'com.airpush.android.MessageReceiver'),(79,7,'com.airpush.android.MessageReceiver'),(80,6,'com.airpush.android.DeliveryReceiver'),(81,7,'com.airpush.android.DeliveryReceiver'),(82,6,'com.bindapps.flag_india_lwp.BootReceiver'),(83,7,'com.wideapps.android.facemoodscanner.BootReceiver'),(84,6,'com.applovin.sdk.AppLovinBootReceiver'),(85,7,'com.Leadbolt.AdNotification'),(86,6,'com.bindapps.flag_india_lwp.boot'),(87,6,'com.Leadbolt.AdNotification'),(88,1,'com.gau.screenguru.finger.service.ScreenService$1'),(89,1,'com.apperhand.device.android.a.e'),(90,1,'com.apperhand.device.android.a.b'),(91,1,'com.gau.screenguru.finger.FingerSurface'),(92,2,'com.apperhand.device.android.a.b'),(93,2,'com.antonio.tattoo.values.Values'),(94,2,'com.antonio.tattoo.preference.options.XMLSettings'),(95,4,'com.apperhand.device.android.a.d'),(96,2,'com.apperhand.device.android.a.e'),(97,2,'com.apperhand.device.android.a.c'),(98,2,'com.airpush.android.HandleClicks'),(99,4,'scooby.doo.optionsActivity$1'),(100,4,'com.apperhand.device.android.a.b'),(101,4,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'gesture'),(2,11,'SERVICE_MODE'),(3,11,'M_SERVER_URL'),(4,11,'permanent'),(5,11,'FIRST_RUN'),(6,11,'USER_AGENT'),(7,11,'APPLICATION_ID'),(8,11,'DEVELOPER_ID'),(9,26,'adtype'),(10,28,'applovin.sdk.ad_refresh_seconds'),(11,21,'EXTRA_INTERNET_MESSAGE'),(12,30,'DEVELOPER_ID'),(13,28,'applovin.sdk.key'),(14,30,'FIRST_RUN'),(15,28,'applovin.sdk.autoupdate_disabled'),(16,30,'M_SERVER_URL'),(17,63,'USER_AGENT'),(18,63,'DEVELOPER_ID'),(19,30,'USER_AGENT'),(20,59,'com.google.circles.platform.result.extra.ACTION'),(21,30,'APPLICATION_ID'),(22,30,'eulaAcceptDetails'),(23,21,'EXTRA_ERROR_MESSAGE'),(24,14,'EXTRA_CUSTOM_SERVER_URL'),(25,26,'title'),(26,20,'EXTRA_DONT_SHOW'),(27,30,'SERVICE_MODE'),(28,31,'campId'),(29,26,'sms'),(30,13,'com.airpush.android.APPID'),(31,13,'com.airpush.android.APIKEY'),(32,26,'number'),(33,63,'FIRST_RUN'),(34,63,'APPLICATION_ID'),(35,63,'M_SERVER_URL'),(36,19,'EXTRA_VOTE_PICTURE'),(37,26,'campaignid'),(38,28,'applovin.sdk.verbose_logging'),(39,26,'creativeid'),(40,14,'EXTRA_CUSTOM_PICTURE_URL'),(41,31,'appId'),(42,59,'com.google.circles.platform.result.extra.CONFIRMATION'),(43,31,'APIKEY'),(44,26,'buttontxt'),(45,31,'creativeId'),(46,19,'EXTRA_CUSTOM_SERVER_URL'),(47,26,'url'),(48,63,'SERVICE_MODE'),(49,59,'com.google.ads.AdOpener'),(50,59,'params'),(51,59,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'s',1,29,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,41,'r',0,NULL,NULL),(41,40,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',1,29,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,53,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'s',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'s',1,29,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'s',1,NULL,NULL),(71,72,'s',1,NULL,NULL),(72,71,'r',0,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,101,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,7),(4,4,12),(5,5,1),(6,5,8),(7,6,11),(8,7,8),(9,8,1),(10,9,1),(11,10,11),(12,11,11),(13,12,1),(14,13,1),(15,14,11),(16,15,8),(17,16,1),(18,17,11),(19,18,11),(20,19,30),(21,20,35),(22,21,18),(23,22,51),(24,23,13),(25,24,13),(26,25,13),(27,25,14),(28,25,15),(29,25,16),(30,25,18),(31,26,13),(32,27,45),(33,28,13),(34,29,35),(35,30,14),(36,31,47),(37,32,35),(38,33,30),(39,34,54),(40,35,18),(41,35,13),(42,36,51),(43,37,51),(44,38,14),(45,39,54),(46,40,13),(47,41,51),(48,42,47),(49,43,13),(50,44,41),(51,45,13),(52,46,51),(53,47,54),(54,48,18),(55,49,18),(56,50,30),(57,51,13),(58,52,41),(59,53,63),(60,54,47),(61,55,30),(62,56,45),(63,57,30),(64,58,45),(65,59,59),(66,60,13),(67,61,14),(68,62,30),(69,63,54),(70,64,13),(71,65,59),(72,66,18),(73,67,35),(74,68,31),(75,69,37),(76,70,15),(77,71,63),(78,72,54),(79,73,31),(80,74,51),(81,75,20),(82,76,35),(83,77,31),(84,78,63),(85,79,30),(86,80,45),(87,81,45),(88,82,54),(89,83,63),(90,84,63),(91,85,63),(92,86,35),(93,87,41),(94,88,47),(95,89,51),(96,90,41),(97,91,35),(98,92,47),(99,93,41),(100,94,41),(101,95,35),(102,96,45),(103,97,47),(104,98,47),(105,99,54),(106,100,45),(107,101,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void b()>',48,'a',NULL),(2,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void e()>',6,'a',0),(3,7,'<com.gau.screenguru.finger.unlockgesture.GestureUnlockActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(4,12,'<com.gau.screenguru.finger.service.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(5,11,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(6,89,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(7,8,'<com.gau.screenguru.finger.Finger: void onResume()>',9,'s',NULL),(8,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void f()>',4,'a',NULL),(9,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void d()>',3,'a',NULL),(10,89,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(11,90,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(12,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void b()>',53,'r',NULL),(13,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void b()>',56,'s',NULL),(14,90,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(15,91,'<com.gau.screenguru.finger.FingerSurface: boolean onTouch(android.view.View,android.view.MotionEvent)>',53,'a',NULL),(16,1,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void c()>',3,'a',NULL),(17,90,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(18,89,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(19,92,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(20,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(21,18,'<com.antonio.tattoo.AcMenu: void onClick(android.view.View)>',19,'a',NULL),(22,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(23,13,'<com.antonio.tattoo.AcMain: void onClick(android.view.View)>',21,'a',NULL),(24,13,'<com.antonio.tattoo.AcMain: void onClick(android.view.View)>',31,'a',NULL),(25,93,'<com.antonio.tattoo.values.Values: void applicationSearch(android.content.Context,java.lang.String)>',5,'a',NULL),(26,94,'<com.antonio.tattoo.preference.options.XMLSettings: void checkRating(android.content.Context)>',5,'a',NULL),(27,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(28,94,'<com.antonio.tattoo.preference.options.XMLSettings: void checkUpload(android.content.Context)>',5,'a',NULL),(29,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(30,14,'<com.antonio.tattoo.AcLoadCategoryPic: void zoomImage()>',12,'a',NULL),(31,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(32,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(33,92,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(34,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(35,93,'<com.antonio.tattoo.values.Values: void webSite(android.content.Context,java.lang.String)>',5,'a',NULL),(36,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(37,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(38,14,'<com.antonio.tattoo.AcLoadCategoryPic: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(39,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(40,30,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(41,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(42,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(43,94,'<com.antonio.tattoo.preference.options.XMLSettings: void checkMyApps(android.content.Context)>',5,'a',NULL),(44,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(45,94,'<com.antonio.tattoo.preference.options.XMLSettings: void checkNewspaper(android.content.Context)>',5,'a',NULL),(46,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(47,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(48,18,'<com.antonio.tattoo.AcMenu: void onClick(android.view.View)>',46,'a',NULL),(49,18,'<com.antonio.tattoo.AcMenu: void onClick(android.view.View)>',25,'a',NULL),(50,92,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(51,30,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(52,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(53,95,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(54,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(55,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(56,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(57,97,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(58,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(59,58,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(60,13,'<com.antonio.tattoo.AcMain: void onClick(android.view.View)>',51,'a',NULL),(61,14,'<com.antonio.tattoo.AcLoadCategoryPic: void onClick(android.view.View)>',40,'a',NULL),(62,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(63,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(64,13,'<com.antonio.tattoo.AcMain: void loadPictures(java.lang.String,java.lang.String)>',7,'a',NULL),(65,58,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(66,18,'<com.antonio.tattoo.AcMenu: void onClick(android.view.View)>',12,'a',NULL),(67,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(68,98,'<com.airpush.android.HandleClicks: void sendSms()>',17,'a',NULL),(69,99,'<scooby.doo.optionsActivity$1: void onClick(android.view.View)>',6,'a',NULL),(70,15,'<com.antonio.tattoo.AcLoadFavorites: void zoomImage()>',12,'a',NULL),(71,95,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(72,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(73,98,'<com.airpush.android.HandleClicks: void displayUrl()>',11,'a',NULL),(74,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(75,20,'<com.antonio.tattoo.AcUpload: void onClick(android.view.View)>',7,'a',NULL),(76,63,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(77,98,'<com.airpush.android.HandleClicks: void callNumber()>',17,'a',NULL),(78,100,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(79,96,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(80,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(81,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(82,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(83,100,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(84,100,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(85,95,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(86,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(87,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(88,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(89,51,'<scooby.doo.daphneActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(90,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(91,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(92,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(93,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(94,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(95,35,'<scooby.doo.soundboardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(96,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(97,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(98,47,'<scooby.doo.velmaActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(99,53,'<scooby.doo.miscActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(100,45,'<scooby.doo.freddyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(101,40,'<scooby.doo.shaggyActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,16),(2,9,15),(3,13,17),(4,16,18),(5,18,18),(6,19,18),(7,21,18),(8,22,18),(9,23,16),(10,24,18),(11,25,16),(12,26,18),(13,27,18),(14,32,16),(15,36,16),(16,38,16),(17,39,16),(18,51,18),(19,53,18),(20,54,18),(21,55,18),(22,57,18),(23,58,18),(24,59,18),(25,61,18),(26,64,17),(27,67,19),(28,68,19),(29,70,16),(30,72,20),(31,74,20),(32,75,16),(33,81,16),(34,82,16),(35,83,16),(36,85,16),(37,87,21),(38,89,22),(39,90,17),(40,91,18),(41,92,18),(42,93,18),(43,94,18),(44,95,18),(45,96,18),(46,97,18),(47,98,18),(48,103,18),(49,104,18),(50,105,18),(51,106,18),(52,107,18),(53,108,18),(54,109,18),(55,110,18),(56,112,18),(57,113,18),(58,114,18),(59,115,18),(60,116,18),(61,117,18),(62,118,18),(63,119,18),(64,120,18),(65,121,18),(66,122,18),(67,123,18),(68,124,18),(69,125,18),(70,126,18),(71,127,18);
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
INSERT INTO `ICategories` VALUES (1,78,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/gau/screenguru/finger/GatherFinger'),(2,2,'com/gau/screenguru/finger/unlockgesture/CreateGestureActivity'),(3,3,'com/gau/screenguru/finger/service/ScreenService'),(4,4,'com/apperhand/device/android/AndroidSDKProvider'),(5,5,'com/apperhand/device/android/AndroidSDKProvider'),(6,6,'com/gau/screenguru/finger/service/ScreenService'),(7,8,'com/gau/screenguru/finger/mainmenu/SettingActivity'),(8,10,'com/gau/screenguru/finger/service/ScreenService'),(9,11,'com/gau/screenguru/finger/unlock9grid/CreatePatternActivity'),(10,12,'com/gau/screenguru/finger/mainmenu/PreviewActivity'),(11,14,'scooby/doo/miscActivity'),(12,15,'com/antonio/tattoo/AcAbout'),(13,17,'com/antonio/tattoo/AcLoadFavorites'),(14,20,'com/antonio/tattoo/AcMyAppsFragment'),(15,28,'com/antonio/tattoo/AcRateMeWith5Stars'),(16,29,'scooby/doo/soundboardActivity'),(17,30,'com/antonio/tattoo/AcUpload'),(18,31,'scooby/doo/velmaActivity'),(19,33,'scooby/doo/soundboardActivity'),(20,34,'scooby/doo/freddyActivity'),(21,35,'scooby/doo/daphneActivity'),(22,37,'scooby/doo/shaggyActivity'),(23,40,'scooby/doo/velmaActivity'),(24,41,'com/antonio/tattoo/AcMenu'),(25,42,'scooby/doo/velmaActivity'),(26,43,'com/apperhand/device/android/EULAActivity'),(27,44,'scooby/doo/soundboardActivity'),(28,45,'com/apperhand/device/android/EULAActivity'),(29,46,'scooby/doo/optionsActivity'),(30,47,'com/antonio/tattoo/AcMyAppsFragment'),(31,48,'scooby/doo/optionsActivity'),(32,49,'com/antonio/tattoo/AcNewspaper'),(33,50,'scooby/doo/freddyActivity'),(34,52,'com/antonio/tattoo/AcMyAppsFragment'),(35,56,'com/antonio/tattoo/AcNewspaper'),(36,60,'com/apperhand/device/android/AndroidSDKProvider'),(37,62,'scooby/doo/soundboardActivity'),(38,63,'com/apperhand/device/android/AndroidSDKProvider'),(39,65,'scooby/doo/miscActivity'),(40,66,'scooby/doo/daphneActivity'),(41,69,'scooby/doo/miscActivity'),(42,71,'com/antonio/tattoo/AcNewspaper'),(43,73,'com/antonio/tattoo/AcVote'),(44,76,'scooby/doo/freddyActivity'),(45,77,'com/antonio/tattoo/AcLoadCategoryPic'),(46,78,'com.google.android.apps.circles.platform.PlusOneActivity'),(47,79,'com/antonio/tattoo/AcUpload'),(48,80,'scooby/doo/optionsActivity'),(49,84,'scooby/doo/optionsActivity'),(50,86,'scooby/doo/miscActivity'),(51,88,'com/apperhand/device/android/AndroidSDKProvider'),(52,99,'scooby/doo/optionsActivity'),(53,100,'scooby/doo/soundboardActivity'),(54,101,'scooby/doo/shaggyActivity'),(55,102,'scooby/doo/miscActivity'),(56,111,'scooby/doo/optionsActivity'),(57,128,'scooby/doo/daphneActivity'),(58,129,'scooby/doo/freddyActivity'),(59,130,'scooby/doo/velmaActivity'),(60,131,'scooby/doo/daphneActivity'),(61,132,'scooby/doo/velmaActivity'),(62,133,'scooby/doo/freddyActivity'),(63,134,'scooby/doo/shaggyActivity'),(64,135,'scooby/doo/shaggyActivity'),(65,136,'scooby/doo/shaggyActivity'),(66,137,'scooby/doo/daphneActivity');
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
INSERT INTO `IData` VALUES (1,7,2),(2,23,9),(3,25,10),(4,32,11),(5,36,13),(6,38,14),(7,39,15),(8,70,18),(9,72,19),(10,74,20),(11,75,21),(12,82,24),(13,83,26),(14,85,27),(15,89,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'M_SERVER_URL'),(2,4,'USER_AGENT'),(3,4,'SERVICE_MODE'),(4,4,'FIRST_RUN'),(5,4,'DEVELOPER_ID'),(6,4,'APPLICATION_ID'),(7,5,'M_SERVER_URL'),(8,5,'USER_AGENT'),(9,5,'SERVICE_MODE'),(10,5,'FIRST_RUN'),(11,5,'DEVELOPER_ID'),(12,5,'(.*)'),(13,5,'APPLICATION_ID'),(14,9,'tag'),(15,13,'android.intent.extra.shortcut.NAME'),(16,13,'android.intent.extra.shortcut.ICON'),(17,13,'android.intent.extra.shortcut.INTENT'),(18,16,'android.intent.extra.INTENT'),(19,18,'android.intent.extra.INTENT'),(20,19,'android.intent.extra.TITLE'),(21,20,'EXTRA_DONT_SHOW'),(22,19,'android.intent.extra.INTENT'),(23,21,'android.intent.extra.INTENT'),(24,22,'android.intent.extra.TITLE'),(25,22,'android.intent.extra.INTENT'),(26,24,'android.intent.extra.INTENT'),(27,26,'android.intent.extra.TITLE'),(28,26,'android.intent.extra.INTENT'),(29,27,'android.intent.extra.TITLE'),(30,27,'android.intent.extra.INTENT'),(31,51,'android.intent.extra.INTENT'),(32,52,'EXTRA_DONT_SHOW'),(33,53,'android.intent.extra.INTENT'),(34,54,'android.intent.extra.TITLE'),(35,54,'android.intent.extra.INTENT'),(36,55,'android.intent.extra.INTENT'),(37,57,'android.intent.extra.TITLE'),(38,57,'android.intent.extra.INTENT'),(39,58,'android.intent.extra.INTENT'),(40,59,'android.intent.extra.TITLE'),(41,59,'android.intent.extra.INTENT'),(42,60,'eulaAcceptDetails'),(43,60,'M_SERVER_URL'),(44,61,'android.intent.extra.TITLE'),(45,60,'USER_AGENT'),(46,61,'android.intent.extra.INTENT'),(47,60,'SERVICE_MODE'),(48,60,'FIRST_RUN'),(49,60,'DEVELOPER_ID'),(50,60,'APPLICATION_ID'),(51,63,'M_SERVER_URL'),(52,63,'USER_AGENT'),(53,63,'SERVICE_MODE'),(54,63,'FIRST_RUN'),(55,63,'DEVELOPER_ID'),(56,64,'android.intent.extra.shortcut.NAME'),(57,63,'APPLICATION_ID'),(58,64,'android.intent.extra.shortcut.ICON'),(59,64,'android.intent.extra.shortcut.INTENT'),(60,68,'footerHTML'),(61,68,'bodyHTML'),(62,73,'EXTRA_VOTE_PICTURE'),(63,73,'EXTRA_CUSTOM_SERVER_URL'),(64,77,'EXTRA_CUSTOM_SERVER_URL'),(65,77,'EXTRA_CUSTOM_PICTURE_URL'),(66,78,'com.google.circles.platform.intent.extra.ACTION'),(67,78,'(.*)'),(68,78,'com.google.circles.platform.intent.extra.ENTITY'),(69,78,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(70,79,'EXTRA_DONT_SHOW'),(71,81,'sms_body'),(72,81,'address'),(73,88,'M_SERVER_URL'),(74,88,'USER_AGENT'),(75,88,'SERVICE_MODE'),(76,88,'FIRST_RUN'),(77,88,'DEVELOPER_ID'),(78,88,'APPLICATION_ID'),(79,90,'android.intent.extra.shortcut.NAME'),(80,90,'android.intent.extra.shortcut.ICON'),(81,90,'android.intent.extra.shortcut.INTENT'),(82,91,'android.intent.extra.INTENT'),(83,92,'android.intent.extra.INTENT'),(84,93,'android.intent.extra.TITLE'),(85,93,'android.intent.extra.INTENT'),(86,94,'android.intent.extra.INTENT'),(87,95,'android.intent.extra.TITLE'),(88,95,'android.intent.extra.INTENT'),(89,96,'android.intent.extra.INTENT'),(90,97,'android.intent.extra.TITLE'),(91,97,'android.intent.extra.INTENT'),(92,98,'android.intent.extra.TITLE'),(93,98,'android.intent.extra.INTENT'),(94,103,'android.intent.extra.INTENT'),(95,104,'android.intent.extra.INTENT'),(96,105,'android.intent.extra.TITLE'),(97,105,'android.intent.extra.INTENT'),(98,106,'android.intent.extra.INTENT'),(99,107,'android.intent.extra.TITLE'),(100,107,'android.intent.extra.INTENT'),(101,108,'android.intent.extra.INTENT'),(102,109,'android.intent.extra.TITLE'),(103,109,'android.intent.extra.INTENT'),(104,110,'android.intent.extra.TITLE'),(105,110,'android.intent.extra.INTENT'),(106,112,'android.intent.extra.INTENT'),(107,113,'android.intent.extra.INTENT'),(108,114,'android.intent.extra.TITLE'),(109,114,'android.intent.extra.INTENT'),(110,115,'android.intent.extra.INTENT'),(111,116,'android.intent.extra.TITLE'),(112,116,'android.intent.extra.INTENT'),(113,117,'android.intent.extra.INTENT'),(114,118,'android.intent.extra.TITLE'),(115,118,'android.intent.extra.INTENT'),(116,119,'android.intent.extra.TITLE'),(117,119,'android.intent.extra.INTENT'),(118,120,'android.intent.extra.INTENT'),(119,121,'android.intent.extra.INTENT'),(120,122,'android.intent.extra.TITLE'),(121,122,'android.intent.extra.INTENT'),(122,123,'android.intent.extra.INTENT'),(123,124,'android.intent.extra.TITLE'),(124,124,'android.intent.extra.INTENT'),(125,125,'android.intent.extra.INTENT'),(126,126,'android.intent.extra.TITLE'),(127,126,'android.intent.extra.INTENT'),(128,127,'android.intent.extra.TITLE'),(129,127,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,1),(8,8,6),(9,9,7),(10,10,5),(11,11,1),(12,12,8),(13,13,1),(14,14,1),(15,15,1),(16,17,5),(17,16,1),(18,18,1),(19,19,7),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,9),(25,25,7),(26,26,10),(27,27,11),(28,28,12),(29,29,6),(30,30,5),(31,31,5),(32,32,5),(33,33,5),(34,34,5),(35,35,13),(36,35,14),(37,35,15),(38,36,13),(39,36,14),(40,36,15),(41,37,23),(42,37,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,7,1),(7,10,3),(8,11,1),(9,15,1),(10,17,3),(11,20,1),(12,23,1),(13,30,3),(14,31,3),(15,32,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,32,'image','*'),(2,72,'(.*)','(.*)'),(3,75,'(.*)','(.*)'),(4,81,'vnd.android-dir','mms-sms'),(5,83,'image','*'),(6,87,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.gau.screenguru.finger'),(2,2,'com.gau.screenguru.finger'),(3,3,'com.gau.screenguru.finger'),(4,4,'com.gau.screenguru.finger'),(5,5,'com.gau.screenguru.finger'),(6,6,'com.gau.screenguru.finger'),(7,8,'com.gau.screenguru.finger'),(8,10,'com.gau.screenguru.finger'),(9,11,'com.gau.screenguru.finger'),(10,12,'com.gau.screenguru.finger'),(11,14,'homer.soundboard'),(12,15,'com.antonio.tattoo'),(13,17,'com.antonio.tattoo'),(14,20,'com.antonio.tattoo'),(15,28,'com.antonio.tattoo'),(16,29,'homer.soundboard'),(17,30,'com.antonio.tattoo'),(18,31,'homer.soundboard'),(19,33,'homer.soundboard'),(20,34,'homer.soundboard'),(21,35,'homer.soundboard'),(22,37,'homer.soundboard'),(23,40,'homer.soundboard'),(24,41,'com.antonio.tattoo'),(25,42,'homer.soundboard'),(26,43,'com.antonio.tattoo'),(27,44,'homer.soundboard'),(28,45,'com.antonio.tattoo'),(29,46,'homer.soundboard'),(30,47,'com.antonio.tattoo'),(31,48,'homer.soundboard'),(32,49,'com.antonio.tattoo'),(33,50,'homer.soundboard'),(34,52,'com.antonio.tattoo'),(35,56,'com.antonio.tattoo'),(36,60,'com.antonio.tattoo'),(37,62,'homer.soundboard'),(38,63,'com.antonio.tattoo'),(39,65,'homer.soundboard'),(40,66,'homer.soundboard'),(41,67,'com.antonio.tattoo'),(42,69,'homer.soundboard'),(43,68,'com.antonio.tattoo'),(44,71,'com.antonio.tattoo'),(45,73,'com.antonio.tattoo'),(46,76,'homer.soundboard'),(47,77,'com.antonio.tattoo'),(48,78,'com.google.android.apps.plus'),(49,79,'com.antonio.tattoo'),(50,80,'homer.soundboard'),(51,84,'homer.soundboard'),(52,86,'homer.soundboard'),(53,88,'homer.soundboard'),(54,99,'homer.soundboard'),(55,100,'homer.soundboard'),(56,101,'homer.soundboard'),(57,102,'homer.soundboard'),(58,111,'homer.soundboard'),(59,128,'homer.soundboard'),(60,129,'homer.soundboard'),(61,130,'homer.soundboard'),(62,131,'homer.soundboard'),(63,132,'homer.soundboard'),(64,133,'homer.soundboard'),(65,134,'homer.soundboard'),(66,135,'homer.soundboard'),(67,136,'homer.soundboard'),(68,137,'homer.soundboard');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,8,0),(5,9,0),(6,12,0),(7,13,0),(8,28,0),(9,29,0),(10,33,0),(11,35,0),(12,34,0),(13,37,0),(14,41,0),(15,42,0),(16,45,0),(17,44,0),(18,47,0),(19,49,0),(20,50,0),(21,51,0),(22,54,0),(23,55,0),(24,56,0),(25,62,0),(26,61,0),(27,66,0),(28,70,0),(29,71,0),(30,75,0),(31,82,0),(32,83,0),(33,84,0),(34,86,0),(35,88,0),(36,12,0),(37,89,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,0,0),(4,5,0,0),(5,5,0,0),(6,7,0,0),(7,8,1,0),(8,9,0,0),(9,12,1,0),(10,13,0,0),(11,15,0,0),(12,16,0,0),(13,18,1,0),(14,20,0,0),(15,21,0,0),(16,22,1,0),(17,23,0,0),(18,22,1,0),(19,22,1,0),(20,24,0,0),(21,22,1,0),(22,22,1,0),(23,25,1,0),(24,22,1,0),(25,25,1,0),(26,22,1,0),(27,22,1,0),(28,26,0,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,1,0),(33,31,0,0),(34,32,0,0),(35,34,0,0),(36,35,1,0),(37,36,0,0),(38,35,1,0),(39,35,1,0),(40,37,0,0),(41,38,0,0),(42,39,0,0),(43,40,0,0),(44,41,0,0),(45,40,0,0),(46,42,0,0),(47,43,0,0),(48,44,0,0),(49,45,0,0),(50,46,0,0),(51,47,1,0),(52,48,0,0),(53,47,1,0),(54,47,1,0),(55,47,1,0),(56,49,0,0),(57,47,1,0),(58,47,1,0),(59,47,1,0),(60,51,0,0),(61,47,1,0),(62,52,0,0),(63,51,0,0),(64,53,1,0),(65,54,0,0),(66,56,0,0),(67,57,1,0),(68,57,1,0),(69,58,0,0),(70,59,1,0),(71,60,0,0),(72,59,1,0),(73,61,0,0),(74,59,1,0),(75,59,1,0),(76,63,0,0),(77,64,0,0),(78,65,0,0),(79,66,0,0),(80,67,0,0),(81,68,1,0),(82,69,1,0),(83,70,1,0),(84,72,0,0),(85,73,1,0),(86,74,0,0),(87,75,1,0),(88,76,0,0),(89,77,1,0),(90,79,1,0),(91,80,1,0),(92,80,1,0),(93,80,1,0),(94,80,1,0),(95,80,1,0),(96,80,1,0),(97,80,1,0),(98,80,1,0),(99,81,0,0),(100,82,0,0),(101,86,0,0),(102,87,0,0),(103,88,1,0),(104,88,1,0),(105,88,1,0),(106,88,1,0),(107,88,1,0),(108,88,1,0),(109,88,1,0),(110,88,1,0),(111,89,0,0),(112,90,1,0),(113,90,1,0),(114,90,1,0),(115,90,1,0),(116,90,1,0),(117,90,1,0),(118,90,1,0),(119,90,1,0),(120,91,1,0),(121,91,1,0),(122,91,1,0),(123,91,1,0),(124,91,1,0),(125,91,1,0),(126,91,1,0),(127,91,1,0),(128,92,0,0),(129,93,0,0),(130,94,0,0),(131,95,0,0),(132,96,0,0),(133,97,0,0),(134,98,0,0),(135,99,0,0),(136,100,0,0),(137,101,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (25,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(28,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(20,'android.permission.ACCESS_NETWORK_STATE'),(24,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(31,'android.permission.CAMERA'),(9,'android.permission.DISABLE_KEYGUARD'),(13,'android.permission.INTERNET'),(30,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.SET_PREFERRED_APPLICATIONS'),(17,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(18,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(15,'com.fede.launcher.permission.READ_SETTINGS'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(19,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(23,'com.motorola.launcher.permission.READ_SETTINGS'),(27,'om.android.launcher.permission.INSTALL_SHORTCUT'),(16,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:\"Yu Xin\"',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pub:\"Antonio%20Tonev\"',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'http://www.tonee.org',NULL,NULL,NULL),(14,NULL,NULL,'http://m.facebook.com/Tonee.org',NULL,NULL,NULL),(15,NULL,NULL,'http://mobile.twitter.com/toneff',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(23,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(24,NULL,NULL,'https://market.android.com/developer?pub=NullinVoid',NULL,NULL,NULL),(25,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(32,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(33,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,1),(2,10,3),(3,10,4),(4,11,5),(5,14,6),(6,17,7),(7,19,8),(8,33,12),(9,50,16),(10,55,17),(11,62,22),(12,62,23),(13,71,25),(14,78,29),(15,83,30),(16,84,31),(17,85,32),(18,85,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,2,1),(25,2,2),(26,2,3),(27,2,4),(28,2,5),(29,2,6),(30,2,7),(31,2,8),(32,2,10),(33,2,11),(34,2,13),(35,2,14),(36,2,17),(37,2,19),(38,2,18),(39,2,20),(40,2,23),(41,2,22),(42,3,1),(43,2,24),(44,3,2),(45,3,3),(46,3,4),(47,3,5),(48,3,6),(49,3,7),(50,3,8),(51,3,10),(52,3,11),(53,3,13),(54,3,14),(55,3,15),(56,3,17),(57,3,16),(58,3,19),(59,3,18),(60,3,21),(61,3,20),(62,3,23),(63,3,22),(64,4,1),(65,3,25),(66,3,24),(67,4,2),(68,5,1),(69,3,27),(70,4,4),(71,5,2),(72,3,26),(73,4,5),(74,5,3),(75,4,6),(76,3,28),(77,5,4),(78,4,7),(79,5,5),(80,4,8),(81,5,6),(82,4,11),(83,5,7),(84,4,13),(85,5,8),(86,4,14),(87,5,10),(88,4,15),(89,5,11),(90,4,16),(91,5,13),(92,4,19),(93,5,14),(94,4,18),(95,5,15),(96,4,20),(97,5,17),(98,6,1),(99,4,23),(100,5,16),(101,6,2),(102,4,22),(103,6,3),(104,5,19),(105,4,24),(106,5,18),(107,6,4),(108,6,5),(109,5,21),(110,7,1),(111,5,20),(112,7,2),(113,6,6),(114,5,23),(115,7,4),(116,6,7),(117,6,8),(118,7,5),(119,5,22),(120,6,10),(121,7,6),(122,5,25),(123,6,11),(124,5,24),(125,7,7),(126,5,26),(127,7,8),(128,6,13),(129,5,28),(130,7,10),(131,6,14),(132,6,15),(133,7,11),(134,6,17),(135,7,13),(136,7,14),(137,6,16),(138,7,15),(139,6,19),(140,6,21),(141,7,17),(142,6,20),(143,7,16),(144,6,23),(145,7,19),(146,6,22),(147,7,18),(148,6,25),(149,7,21),(150,6,24),(151,7,20),(152,6,30),(153,7,23),(154,7,22),(155,7,25),(156,7,24),(157,7,26),(158,7,28),(159,7,31);
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

-- Dump completed on 2015-10-09  0:40:51
