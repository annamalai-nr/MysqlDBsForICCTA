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
) ENGINE=InnoDB AUTO_INCREMENT=1878 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,9,42,2,NULL),(2,120,42,2,NULL),(3,121,42,2,NULL),(4,122,42,2,NULL),(5,123,42,2,NULL),(6,124,42,2,NULL),(7,125,42,2,NULL),(8,126,42,2,NULL),(9,127,42,2,NULL),(10,112,42,2,NULL),(11,113,42,2,NULL),(12,114,42,2,NULL),(13,115,42,2,NULL),(14,116,42,2,NULL),(15,117,42,2,NULL),(16,118,42,2,NULL),(17,119,42,2,NULL),(18,91,42,2,NULL),(19,92,42,2,NULL),(20,93,42,2,NULL),(21,94,42,2,NULL),(22,95,42,2,NULL),(23,96,42,2,NULL),(24,97,42,2,NULL),(25,98,42,2,NULL),(26,103,42,2,NULL),(27,104,42,2,NULL),(28,105,42,2,NULL),(29,106,42,2,NULL),(30,107,42,2,NULL),(31,108,42,2,NULL),(32,109,42,2,NULL),(33,110,42,2,NULL),(34,16,42,2,NULL),(35,18,42,2,NULL),(36,19,42,2,NULL),(37,21,42,2,NULL),(38,22,42,2,NULL),(39,24,42,2,NULL),(40,26,42,2,NULL),(41,27,42,2,NULL),(42,51,42,2,NULL),(43,53,42,2,NULL),(44,54,42,2,NULL),(45,55,42,2,NULL),(46,57,42,2,NULL),(47,58,42,2,NULL),(48,59,42,2,NULL),(49,61,42,2,NULL),(50,70,42,2,NULL),(51,74,42,2,NULL),(52,9,49,2,NULL),(53,120,49,2,NULL),(54,121,49,2,NULL),(55,122,49,2,NULL),(56,123,49,2,NULL),(57,124,49,2,NULL),(58,125,49,2,NULL),(59,126,49,2,NULL),(60,127,49,2,NULL),(61,112,49,2,NULL),(62,113,49,2,NULL),(63,114,49,2,NULL),(64,115,49,2,NULL),(65,116,49,2,NULL),(66,117,49,2,NULL),(67,118,49,2,NULL),(68,119,49,2,NULL),(69,91,49,2,NULL),(70,92,49,2,NULL),(71,93,49,2,NULL),(72,94,49,2,NULL),(73,95,49,2,NULL),(74,96,49,2,NULL),(75,97,49,2,NULL),(76,98,49,2,NULL),(77,103,49,2,NULL),(78,104,49,2,NULL),(79,105,49,2,NULL),(80,106,49,2,NULL),(81,107,49,2,NULL),(82,108,49,2,NULL),(83,109,49,2,NULL),(84,110,49,2,NULL),(85,16,49,2,NULL),(86,18,49,2,NULL),(87,19,49,2,NULL),(88,21,49,2,NULL),(89,22,49,2,NULL),(90,24,49,2,NULL),(91,26,49,2,NULL),(92,27,49,2,NULL),(93,51,49,2,NULL),(94,53,49,2,NULL),(95,54,49,2,NULL),(96,55,49,2,NULL),(97,57,49,2,NULL),(98,58,49,2,NULL),(99,59,49,2,NULL),(100,61,49,2,NULL),(101,70,49,2,NULL),(102,74,49,2,NULL),(103,9,56,2,NULL),(104,120,56,2,NULL),(105,121,56,2,NULL),(106,122,56,2,NULL),(107,123,56,2,NULL),(108,124,56,2,NULL),(109,125,56,2,NULL),(110,126,56,2,NULL),(111,127,56,2,NULL),(112,112,56,2,NULL),(113,113,56,2,NULL),(114,114,56,2,NULL),(115,115,56,2,NULL),(116,116,56,2,NULL),(117,117,56,2,NULL),(118,118,56,2,NULL),(119,119,56,2,NULL),(120,91,56,2,NULL),(121,92,56,2,NULL),(122,93,56,2,NULL),(123,94,56,2,NULL),(124,95,56,2,NULL),(125,96,56,2,NULL),(126,97,56,2,NULL),(127,98,56,2,NULL),(128,103,56,2,NULL),(129,104,56,2,NULL),(130,105,56,2,NULL),(131,106,56,2,NULL),(132,107,56,2,NULL),(133,108,56,2,NULL),(134,109,56,2,NULL),(135,110,56,2,NULL),(136,16,56,2,NULL),(137,18,56,2,NULL),(138,19,56,2,NULL),(139,21,56,2,NULL),(140,22,56,2,NULL),(141,24,56,2,NULL),(142,26,56,2,NULL),(143,27,56,2,NULL),(144,51,56,2,NULL),(145,53,56,2,NULL),(146,54,56,2,NULL),(147,55,56,2,NULL),(148,57,56,2,NULL),(149,58,56,2,NULL),(150,59,56,2,NULL),(151,61,56,2,NULL),(152,70,56,2,NULL),(153,74,56,2,NULL),(154,9,61,2,NULL),(155,120,61,2,NULL),(156,121,61,2,NULL),(157,122,61,2,NULL),(158,123,61,2,NULL),(159,124,61,2,NULL),(160,125,61,2,NULL),(161,126,61,2,NULL),(162,127,61,2,NULL),(163,112,61,2,NULL),(164,113,61,2,NULL),(165,114,61,2,NULL),(166,115,61,2,NULL),(167,116,61,2,NULL),(168,117,61,2,NULL),(169,118,61,2,NULL),(170,119,61,2,NULL),(171,91,61,2,NULL),(172,92,61,2,NULL),(173,93,61,2,NULL),(174,94,61,2,NULL),(175,95,61,2,NULL),(176,96,61,2,NULL),(177,97,61,2,NULL),(178,98,61,2,NULL),(179,103,61,2,NULL),(180,104,61,2,NULL),(181,105,61,2,NULL),(182,106,61,2,NULL),(183,107,61,2,NULL),(184,108,61,2,NULL),(185,109,61,2,NULL),(186,110,61,2,NULL),(187,16,61,2,NULL),(188,18,61,2,NULL),(189,19,61,2,NULL),(190,21,61,2,NULL),(191,22,61,2,NULL),(192,24,61,2,NULL),(193,26,61,2,NULL),(194,27,61,2,NULL),(195,51,61,2,NULL),(196,53,61,2,NULL),(197,54,61,2,NULL),(198,55,61,2,NULL),(199,57,61,2,NULL),(200,58,61,2,NULL),(201,59,61,2,NULL),(202,61,61,2,NULL),(203,70,61,2,NULL),(204,74,61,2,NULL),(205,9,75,2,NULL),(206,120,75,2,NULL),(207,121,75,2,NULL),(208,122,75,2,NULL),(209,123,75,2,NULL),(210,124,75,2,NULL),(211,125,75,2,NULL),(212,126,75,2,NULL),(213,127,75,2,NULL),(214,112,75,2,NULL),(215,113,75,2,NULL),(216,114,75,2,NULL),(217,115,75,2,NULL),(218,116,75,2,NULL),(219,117,75,2,NULL),(220,118,75,2,NULL),(221,119,75,2,NULL),(222,91,75,2,NULL),(223,92,75,2,NULL),(224,93,75,2,NULL),(225,94,75,2,NULL),(226,95,75,2,NULL),(227,96,75,2,NULL),(228,97,75,2,NULL),(229,98,75,2,NULL),(230,103,75,2,NULL),(231,104,75,2,NULL),(232,105,75,2,NULL),(233,106,75,2,NULL),(234,107,75,2,NULL),(235,108,75,2,NULL),(236,109,75,2,NULL),(237,110,75,2,NULL),(238,16,75,2,NULL),(239,18,75,2,NULL),(240,19,75,2,NULL),(241,21,75,2,NULL),(242,22,75,2,NULL),(243,24,75,2,NULL),(244,26,75,2,NULL),(245,27,75,2,NULL),(246,51,75,2,NULL),(247,53,75,2,NULL),(248,54,75,2,NULL),(249,55,75,2,NULL),(250,57,75,2,NULL),(251,58,75,2,NULL),(252,59,75,2,NULL),(253,61,75,2,NULL),(254,70,75,2,NULL),(255,74,75,2,NULL),(256,1,9,2,NULL),(257,8,2,2,NULL),(258,10,10,2,NULL),(259,12,4,2,NULL),(260,9,5,2,NULL),(261,9,6,2,NULL),(262,9,8,2,NULL),(263,9,9,2,NULL),(264,9,12,2,NULL),(265,9,88,2,NULL),(266,9,13,2,NULL),(267,9,28,2,NULL),(268,9,33,2,NULL),(269,9,29,2,NULL),(270,9,34,2,NULL),(271,9,44,2,NULL),(272,9,35,2,NULL),(273,120,1,2,NULL),(274,121,1,2,NULL),(275,122,1,2,NULL),(276,123,1,2,NULL),(277,124,1,2,NULL),(278,125,1,2,NULL),(279,126,1,2,NULL),(280,127,1,2,NULL),(281,9,37,2,NULL),(282,9,41,2,NULL),(283,112,1,2,NULL),(284,113,1,2,NULL),(285,114,1,2,NULL),(286,115,1,2,NULL),(287,116,1,2,NULL),(288,117,1,2,NULL),(289,118,1,2,NULL),(290,119,1,2,NULL),(291,9,45,2,NULL),(292,91,1,2,NULL),(293,92,1,2,NULL),(294,93,1,2,NULL),(295,94,1,2,NULL),(296,95,1,2,NULL),(297,96,1,2,NULL),(298,97,1,2,NULL),(299,98,1,2,NULL),(300,9,47,2,NULL),(301,103,1,2,NULL),(302,104,1,2,NULL),(303,105,1,2,NULL),(304,106,1,2,NULL),(305,107,1,2,NULL),(306,108,1,2,NULL),(307,109,1,2,NULL),(308,110,1,2,NULL),(309,9,51,2,NULL),(310,16,1,2,NULL),(311,18,1,2,NULL),(312,19,1,2,NULL),(313,21,1,2,NULL),(314,22,1,2,NULL),(315,24,1,2,NULL),(316,26,1,2,NULL),(317,27,1,2,NULL),(318,9,54,2,NULL),(319,51,1,2,NULL),(320,53,1,2,NULL),(321,54,1,2,NULL),(322,55,1,2,NULL),(323,57,1,2,NULL),(324,58,1,2,NULL),(325,59,1,2,NULL),(326,61,1,2,NULL),(327,70,1,2,NULL),(328,74,1,2,NULL),(329,9,89,2,NULL),(330,9,50,2,NULL),(331,9,62,2,NULL),(332,9,66,2,NULL),(333,9,71,2,NULL),(334,9,82,2,NULL),(335,9,84,2,NULL),(336,9,86,2,NULL),(337,9,55,2,NULL),(338,9,70,2,NULL),(339,9,83,2,NULL),(340,120,5,2,NULL),(341,121,5,2,NULL),(342,122,5,2,NULL),(343,123,5,2,NULL),(344,124,5,2,NULL),(345,125,5,2,NULL),(346,126,5,2,NULL),(347,127,5,2,NULL),(348,112,5,2,NULL),(349,113,5,2,NULL),(350,114,5,2,NULL),(351,115,5,2,NULL),(352,116,5,2,NULL),(353,117,5,2,NULL),(354,118,5,2,NULL),(355,119,5,2,NULL),(356,91,5,2,NULL),(357,92,5,2,NULL),(358,93,5,2,NULL),(359,94,5,2,NULL),(360,95,5,2,NULL),(361,96,5,2,NULL),(362,97,5,2,NULL),(363,98,5,2,NULL),(364,103,5,2,NULL),(365,104,5,2,NULL),(366,105,5,2,NULL),(367,106,5,2,NULL),(368,107,5,2,NULL),(369,108,5,2,NULL),(370,109,5,2,NULL),(371,110,5,2,NULL),(372,16,5,2,NULL),(373,18,5,2,NULL),(374,19,5,2,NULL),(375,21,5,2,NULL),(376,22,5,2,NULL),(377,24,5,2,NULL),(378,26,5,2,NULL),(379,27,5,2,NULL),(380,51,5,2,NULL),(381,53,5,2,NULL),(382,54,5,2,NULL),(383,55,5,2,NULL),(384,57,5,2,NULL),(385,58,5,2,NULL),(386,59,5,2,NULL),(387,61,5,2,NULL),(388,70,5,2,NULL),(389,74,5,2,NULL),(390,120,6,2,NULL),(391,121,6,2,NULL),(392,122,6,2,NULL),(393,123,6,2,NULL),(394,124,6,2,NULL),(395,125,6,2,NULL),(396,126,6,2,NULL),(397,127,6,2,NULL),(398,112,6,2,NULL),(399,113,6,2,NULL),(400,114,6,2,NULL),(401,115,6,2,NULL),(402,116,6,2,NULL),(403,117,6,2,NULL),(404,118,6,2,NULL),(405,119,6,2,NULL),(406,91,6,2,NULL),(407,92,6,2,NULL),(408,93,6,2,NULL),(409,94,6,2,NULL),(410,95,6,2,NULL),(411,96,6,2,NULL),(412,97,6,2,NULL),(413,98,6,2,NULL),(414,103,6,2,NULL),(415,104,6,2,NULL),(416,105,6,2,NULL),(417,106,6,2,NULL),(418,107,6,2,NULL),(419,108,6,2,NULL),(420,109,6,2,NULL),(421,110,6,2,NULL),(422,16,6,2,NULL),(423,18,6,2,NULL),(424,19,6,2,NULL),(425,21,6,2,NULL),(426,22,6,2,NULL),(427,24,6,2,NULL),(428,26,6,2,NULL),(429,27,6,2,NULL),(430,51,6,2,NULL),(431,53,6,2,NULL),(432,54,6,2,NULL),(433,55,6,2,NULL),(434,57,6,2,NULL),(435,58,6,2,NULL),(436,59,6,2,NULL),(437,61,6,2,NULL),(438,70,6,2,NULL),(439,74,6,2,NULL),(440,2,6,2,NULL),(441,6,10,2,NULL),(442,120,8,2,NULL),(443,121,8,2,NULL),(444,122,8,2,NULL),(445,123,8,2,NULL),(446,124,8,2,NULL),(447,125,8,2,NULL),(448,126,8,2,NULL),(449,127,8,2,NULL),(450,112,8,2,NULL),(451,113,8,2,NULL),(452,114,8,2,NULL),(453,115,8,2,NULL),(454,116,8,2,NULL),(455,117,8,2,NULL),(456,118,8,2,NULL),(457,119,8,2,NULL),(458,91,8,2,NULL),(459,92,8,2,NULL),(460,93,8,2,NULL),(461,94,8,2,NULL),(462,95,8,2,NULL),(463,96,8,2,NULL),(464,97,8,2,NULL),(465,98,8,2,NULL),(466,103,8,2,NULL),(467,104,8,2,NULL),(468,105,8,2,NULL),(469,106,8,2,NULL),(470,107,8,2,NULL),(471,108,8,2,NULL),(472,109,8,2,NULL),(473,110,8,2,NULL),(474,16,8,2,NULL),(475,18,8,2,NULL),(476,19,8,2,NULL),(477,21,8,2,NULL),(478,22,8,2,NULL),(479,24,8,2,NULL),(480,26,8,2,NULL),(481,27,8,2,NULL),(482,51,8,2,NULL),(483,53,8,2,NULL),(484,54,8,2,NULL),(485,55,8,2,NULL),(486,57,8,2,NULL),(487,58,8,2,NULL),(488,59,8,2,NULL),(489,61,8,2,NULL),(490,70,8,2,NULL),(491,74,8,2,NULL),(492,120,9,2,NULL),(493,121,9,2,NULL),(494,122,9,2,NULL),(495,123,9,2,NULL),(496,124,9,2,NULL),(497,125,9,2,NULL),(498,126,9,2,NULL),(499,127,9,2,NULL),(500,112,9,2,NULL),(501,113,9,2,NULL),(502,114,9,2,NULL),(503,115,9,2,NULL),(504,116,9,2,NULL),(505,117,9,2,NULL),(506,118,9,2,NULL),(507,119,9,2,NULL),(508,91,9,2,NULL),(509,92,9,2,NULL),(510,93,9,2,NULL),(511,94,9,2,NULL),(512,95,9,2,NULL),(513,96,9,2,NULL),(514,97,9,2,NULL),(515,98,9,2,NULL),(516,103,9,2,NULL),(517,104,9,2,NULL),(518,105,9,2,NULL),(519,106,9,2,NULL),(520,107,9,2,NULL),(521,108,9,2,NULL),(522,109,9,2,NULL),(523,110,9,2,NULL),(524,16,9,2,NULL),(525,18,9,2,NULL),(526,19,9,2,NULL),(527,21,9,2,NULL),(528,22,9,2,NULL),(529,24,9,2,NULL),(530,26,9,2,NULL),(531,27,9,2,NULL),(532,51,9,2,NULL),(533,53,9,2,NULL),(534,54,9,2,NULL),(535,55,9,2,NULL),(536,57,9,2,NULL),(537,58,9,2,NULL),(538,59,9,2,NULL),(539,61,9,2,NULL),(540,70,9,2,NULL),(541,74,9,2,NULL),(542,4,11,2,NULL),(543,4,30,2,NULL),(544,4,32,2,NULL),(545,4,52,2,NULL),(546,4,58,2,NULL),(547,4,63,2,NULL),(548,4,74,2,NULL),(549,5,11,2,NULL),(550,5,30,2,NULL),(551,5,32,2,NULL),(552,5,52,2,NULL),(553,5,58,2,NULL),(554,5,63,2,NULL),(555,5,74,2,NULL),(556,3,10,2,NULL),(557,120,12,2,NULL),(558,121,12,2,NULL),(559,122,12,2,NULL),(560,123,12,2,NULL),(561,124,12,2,NULL),(562,125,12,2,NULL),(563,126,12,2,NULL),(564,127,12,2,NULL),(565,112,12,2,NULL),(566,113,12,2,NULL),(567,114,12,2,NULL),(568,115,12,2,NULL),(569,116,12,2,NULL),(570,117,12,2,NULL),(571,118,12,2,NULL),(572,119,12,2,NULL),(573,91,12,2,NULL),(574,92,12,2,NULL),(575,93,12,2,NULL),(576,94,12,2,NULL),(577,95,12,2,NULL),(578,96,12,2,NULL),(579,97,12,2,NULL),(580,98,12,2,NULL),(581,103,12,2,NULL),(582,104,12,2,NULL),(583,105,12,2,NULL),(584,106,12,2,NULL),(585,107,12,2,NULL),(586,108,12,2,NULL),(587,109,12,2,NULL),(588,110,12,2,NULL),(589,16,12,2,NULL),(590,18,12,2,NULL),(591,19,12,2,NULL),(592,21,12,2,NULL),(593,22,12,2,NULL),(594,24,12,2,NULL),(595,26,12,2,NULL),(596,27,12,2,NULL),(597,51,12,2,NULL),(598,53,12,2,NULL),(599,54,12,2,NULL),(600,55,12,2,NULL),(601,57,12,2,NULL),(602,58,12,2,NULL),(603,59,12,2,NULL),(604,61,12,2,NULL),(605,70,12,2,NULL),(606,74,12,2,NULL),(607,120,88,2,NULL),(608,121,88,2,NULL),(609,122,88,2,NULL),(610,123,88,2,NULL),(611,124,88,2,NULL),(612,125,88,2,NULL),(613,126,88,2,NULL),(614,127,88,2,NULL),(615,112,88,2,NULL),(616,113,88,2,NULL),(617,114,88,2,NULL),(618,115,88,2,NULL),(619,116,88,2,NULL),(620,117,88,2,NULL),(621,118,88,2,NULL),(622,119,88,2,NULL),(623,91,88,2,NULL),(624,92,88,2,NULL),(625,93,88,2,NULL),(626,94,88,2,NULL),(627,120,55,2,NULL),(628,95,88,2,NULL),(629,121,55,2,NULL),(630,96,88,2,NULL),(631,122,55,2,NULL),(632,97,88,2,NULL),(633,123,55,2,NULL),(634,98,88,2,NULL),(635,124,55,2,NULL),(636,103,88,2,NULL),(637,125,55,2,NULL),(638,104,88,2,NULL),(639,126,55,2,NULL),(640,105,88,2,NULL),(641,127,55,2,NULL),(642,106,88,2,NULL),(643,112,55,2,NULL),(644,107,88,2,NULL),(645,113,55,2,NULL),(646,108,88,2,NULL),(647,114,55,2,NULL),(648,109,88,2,NULL),(649,115,55,2,NULL),(650,110,88,2,NULL),(651,116,55,2,NULL),(652,16,88,2,NULL),(653,117,55,2,NULL),(654,18,88,2,NULL),(655,118,55,2,NULL),(656,19,88,2,NULL),(657,119,55,2,NULL),(658,21,88,2,NULL),(659,91,55,2,NULL),(660,22,88,2,NULL),(661,92,55,2,NULL),(662,24,88,2,NULL),(663,93,55,2,NULL),(664,26,88,2,NULL),(665,94,55,2,NULL),(666,27,88,2,NULL),(667,95,55,2,NULL),(668,51,88,2,NULL),(669,96,55,2,NULL),(670,53,88,2,NULL),(671,97,55,2,NULL),(672,54,88,2,NULL),(673,98,55,2,NULL),(674,55,88,2,NULL),(675,103,55,2,NULL),(676,57,88,2,NULL),(677,104,55,2,NULL),(678,58,88,2,NULL),(679,105,55,2,NULL),(680,59,88,2,NULL),(681,106,55,2,NULL),(682,61,88,2,NULL),(683,107,55,2,NULL),(684,70,88,2,NULL),(685,108,55,2,NULL),(686,74,88,2,NULL),(687,109,55,2,NULL),(688,110,55,2,NULL),(689,16,55,2,NULL),(690,18,55,2,NULL),(691,19,55,2,NULL),(692,21,55,2,NULL),(693,22,55,2,NULL),(694,24,55,2,NULL),(695,26,55,2,NULL),(696,27,55,2,NULL),(697,51,55,2,NULL),(698,53,55,2,NULL),(699,54,55,2,NULL),(700,55,55,2,NULL),(701,57,55,2,NULL),(702,58,55,2,NULL),(703,59,55,2,NULL),(704,61,55,2,NULL),(705,70,55,2,NULL),(706,74,55,2,NULL),(707,120,70,2,NULL),(708,121,70,2,NULL),(709,122,70,2,NULL),(710,123,70,2,NULL),(711,124,70,2,NULL),(712,125,70,2,NULL),(713,126,70,2,NULL),(714,127,70,2,NULL),(715,112,70,2,NULL),(716,113,70,2,NULL),(717,114,70,2,NULL),(718,115,70,2,NULL),(719,116,70,2,NULL),(720,117,70,2,NULL),(721,118,70,2,NULL),(722,119,70,2,NULL),(723,91,70,2,NULL),(724,92,70,2,NULL),(725,93,70,2,NULL),(726,94,70,2,NULL),(727,95,70,2,NULL),(728,96,70,2,NULL),(729,97,70,2,NULL),(730,98,70,2,NULL),(731,103,70,2,NULL),(732,104,70,2,NULL),(733,105,70,2,NULL),(734,106,70,2,NULL),(735,107,70,2,NULL),(736,108,70,2,NULL),(737,109,70,2,NULL),(738,110,70,2,NULL),(739,16,70,2,NULL),(740,18,70,2,NULL),(741,19,70,2,NULL),(742,21,70,2,NULL),(743,22,70,2,NULL),(744,24,70,2,NULL),(745,26,70,2,NULL),(746,27,70,2,NULL),(747,51,70,2,NULL),(748,53,70,2,NULL),(749,54,70,2,NULL),(750,55,70,2,NULL),(751,57,70,2,NULL),(752,58,70,2,NULL),(753,59,70,2,NULL),(754,61,70,2,NULL),(755,70,70,2,NULL),(756,74,70,2,NULL),(757,120,83,2,NULL),(758,121,83,2,NULL),(759,122,83,2,NULL),(760,123,83,2,NULL),(761,124,83,2,NULL),(762,125,83,2,NULL),(763,126,83,2,NULL),(764,127,83,2,NULL),(765,112,83,2,NULL),(766,113,83,2,NULL),(767,114,83,2,NULL),(768,115,83,2,NULL),(769,116,83,2,NULL),(770,117,83,2,NULL),(771,118,83,2,NULL),(772,119,83,2,NULL),(773,91,83,2,NULL),(774,92,83,2,NULL),(775,93,83,2,NULL),(776,94,83,2,NULL),(777,95,83,2,NULL),(778,96,83,2,NULL),(779,97,83,2,NULL),(780,98,83,2,NULL),(781,103,83,2,NULL),(782,104,83,2,NULL),(783,105,83,2,NULL),(784,106,83,2,NULL),(785,107,83,2,NULL),(786,108,83,2,NULL),(787,109,83,2,NULL),(788,110,83,2,NULL),(789,16,83,2,NULL),(790,18,83,2,NULL),(791,19,83,2,NULL),(792,21,83,2,NULL),(793,22,83,2,NULL),(794,24,83,2,NULL),(795,26,83,2,NULL),(796,27,83,2,NULL),(797,51,83,2,NULL),(798,53,83,2,NULL),(799,54,83,2,NULL),(800,55,83,2,NULL),(801,57,83,2,NULL),(802,58,83,2,NULL),(803,59,83,2,NULL),(804,61,83,2,NULL),(805,70,83,2,NULL),(806,74,83,2,NULL),(807,120,29,2,NULL),(808,121,29,2,NULL),(809,122,29,2,NULL),(810,123,29,2,NULL),(811,124,29,2,NULL),(812,125,29,2,NULL),(813,126,29,2,NULL),(814,127,29,2,NULL),(815,112,29,2,NULL),(816,113,29,2,NULL),(817,114,29,2,NULL),(818,115,29,2,NULL),(819,116,29,2,NULL),(820,117,29,2,NULL),(821,118,29,2,NULL),(822,119,29,2,NULL),(823,91,29,2,NULL),(824,92,29,2,NULL),(825,93,29,2,NULL),(826,94,29,2,NULL),(827,95,29,2,NULL),(828,96,29,2,NULL),(829,97,29,2,NULL),(830,98,29,2,NULL),(831,103,29,2,NULL),(832,104,29,2,NULL),(833,105,29,2,NULL),(834,106,29,2,NULL),(835,107,29,2,NULL),(836,108,29,2,NULL),(837,109,29,2,NULL),(838,110,29,2,NULL),(839,16,29,2,NULL),(840,18,29,2,NULL),(841,19,29,2,NULL),(842,21,29,2,NULL),(843,22,29,2,NULL),(844,24,29,2,NULL),(845,26,29,2,NULL),(846,27,29,2,NULL),(847,51,29,2,NULL),(848,53,29,2,NULL),(849,54,29,2,NULL),(850,55,29,2,NULL),(851,57,29,2,NULL),(852,58,29,2,NULL),(853,59,29,2,NULL),(854,61,29,2,NULL),(855,70,29,2,NULL),(856,74,29,2,NULL),(857,120,34,2,NULL),(858,121,34,2,NULL),(859,122,34,2,NULL),(860,123,34,2,NULL),(861,124,34,2,NULL),(862,125,34,2,NULL),(863,126,34,2,NULL),(864,127,34,2,NULL),(865,112,34,2,NULL),(866,113,34,2,NULL),(867,114,34,2,NULL),(868,115,34,2,NULL),(869,116,34,2,NULL),(870,117,34,2,NULL),(871,118,34,2,NULL),(872,119,34,2,NULL),(873,91,34,2,NULL),(874,92,34,2,NULL),(875,93,34,2,NULL),(876,94,34,2,NULL),(877,95,34,2,NULL),(878,96,34,2,NULL),(879,97,34,2,NULL),(880,98,34,2,NULL),(881,103,34,2,NULL),(882,104,34,2,NULL),(883,105,34,2,NULL),(884,106,34,2,NULL),(885,107,34,2,NULL),(886,108,34,2,NULL),(887,109,34,2,NULL),(888,110,34,2,NULL),(889,16,34,2,NULL),(890,18,34,2,NULL),(891,19,34,2,NULL),(892,21,34,2,NULL),(893,22,34,2,NULL),(894,24,34,2,NULL),(895,26,34,2,NULL),(896,27,34,2,NULL),(897,51,34,2,NULL),(898,53,34,2,NULL),(899,54,34,2,NULL),(900,55,34,2,NULL),(901,57,34,2,NULL),(902,58,34,2,NULL),(903,59,34,2,NULL),(904,61,34,2,NULL),(905,70,34,2,NULL),(906,74,34,2,NULL),(907,120,44,2,NULL),(908,121,44,2,NULL),(909,122,44,2,NULL),(910,123,44,2,NULL),(911,124,44,2,NULL),(912,125,44,2,NULL),(913,126,44,2,NULL),(914,127,44,2,NULL),(915,112,44,2,NULL),(916,113,44,2,NULL),(917,114,44,2,NULL),(918,115,44,2,NULL),(919,116,44,2,NULL),(920,117,44,2,NULL),(921,118,44,2,NULL),(922,119,44,2,NULL),(923,91,44,2,NULL),(924,92,44,2,NULL),(925,93,44,2,NULL),(926,94,44,2,NULL),(927,95,44,2,NULL),(928,96,44,2,NULL),(929,97,44,2,NULL),(930,98,44,2,NULL),(931,103,44,2,NULL),(932,104,44,2,NULL),(933,105,44,2,NULL),(934,106,44,2,NULL),(935,107,44,2,NULL),(936,108,44,2,NULL),(937,109,44,2,NULL),(938,110,44,2,NULL),(939,16,44,2,NULL),(940,18,44,2,NULL),(941,19,44,2,NULL),(942,21,44,2,NULL),(943,22,44,2,NULL),(944,24,44,2,NULL),(945,26,44,2,NULL),(946,27,44,2,NULL),(947,51,44,2,NULL),(948,53,44,2,NULL),(949,54,44,2,NULL),(950,55,44,2,NULL),(951,57,44,2,NULL),(952,58,44,2,NULL),(953,59,44,2,NULL),(954,61,44,2,NULL),(955,70,44,2,NULL),(956,74,44,2,NULL),(957,14,54,2,NULL),(958,31,47,2,NULL),(959,34,45,2,NULL),(960,80,37,2,NULL),(961,101,41,2,NULL),(962,131,51,2,NULL),(963,120,13,2,NULL),(964,121,13,2,NULL),(965,122,13,2,NULL),(966,123,13,2,NULL),(967,124,13,2,NULL),(968,125,13,2,NULL),(969,126,13,2,NULL),(970,127,13,2,NULL),(971,120,28,2,NULL),(972,121,28,2,NULL),(973,122,28,2,NULL),(974,123,28,2,NULL),(975,124,28,2,NULL),(976,125,28,2,NULL),(977,126,28,2,NULL),(978,127,28,2,NULL),(979,120,33,2,NULL),(980,121,33,2,NULL),(981,122,33,2,NULL),(982,123,33,2,NULL),(983,124,33,2,NULL),(984,125,33,2,NULL),(985,126,33,2,NULL),(986,127,33,2,NULL),(987,120,37,2,NULL),(988,121,37,2,NULL),(989,122,37,2,NULL),(990,123,37,2,NULL),(991,124,37,2,NULL),(992,125,37,2,NULL),(993,126,37,2,NULL),(994,127,37,2,NULL),(995,120,41,2,NULL),(996,121,41,2,NULL),(997,122,41,2,NULL),(998,123,41,2,NULL),(999,124,41,2,NULL),(1000,125,41,2,NULL),(1001,126,41,2,NULL),(1002,127,41,2,NULL),(1003,112,35,2,NULL),(1004,113,35,2,NULL),(1005,114,35,2,NULL),(1006,115,35,2,NULL),(1007,116,35,2,NULL),(1008,117,35,2,NULL),(1009,118,35,2,NULL),(1010,119,35,2,NULL),(1011,120,45,2,NULL),(1012,121,45,2,NULL),(1013,122,45,2,NULL),(1014,123,45,2,NULL),(1015,124,45,2,NULL),(1016,125,45,2,NULL),(1017,126,45,2,NULL),(1018,127,45,2,NULL),(1019,91,35,2,NULL),(1020,92,35,2,NULL),(1021,93,35,2,NULL),(1022,94,35,2,NULL),(1023,95,35,2,NULL),(1024,96,35,2,NULL),(1025,97,35,2,NULL),(1026,98,35,2,NULL),(1027,120,47,2,NULL),(1028,121,47,2,NULL),(1029,122,47,2,NULL),(1030,123,47,2,NULL),(1031,124,47,2,NULL),(1032,125,47,2,NULL),(1033,126,47,2,NULL),(1034,127,47,2,NULL),(1035,103,35,2,NULL),(1036,104,35,2,NULL),(1037,105,35,2,NULL),(1038,106,35,2,NULL),(1039,107,35,2,NULL),(1040,108,35,2,NULL),(1041,109,35,2,NULL),(1042,110,35,2,NULL),(1043,120,51,2,NULL),(1044,121,51,2,NULL),(1045,122,51,2,NULL),(1046,123,51,2,NULL),(1047,124,51,2,NULL),(1048,125,51,2,NULL),(1049,126,51,2,NULL),(1050,127,51,2,NULL),(1051,16,35,2,NULL),(1052,18,35,2,NULL),(1053,19,35,2,NULL),(1054,21,35,2,NULL),(1055,22,35,2,NULL),(1056,24,35,2,NULL),(1057,26,35,2,NULL),(1058,27,35,2,NULL),(1059,120,54,2,NULL),(1060,121,54,2,NULL),(1061,122,54,2,NULL),(1062,123,54,2,NULL),(1063,124,54,2,NULL),(1064,125,54,2,NULL),(1065,126,54,2,NULL),(1066,127,54,2,NULL),(1067,51,35,2,NULL),(1068,53,35,2,NULL),(1069,54,35,2,NULL),(1070,55,35,2,NULL),(1071,57,35,2,NULL),(1072,58,35,2,NULL),(1073,59,35,2,NULL),(1074,61,35,2,NULL),(1075,70,35,2,NULL),(1076,74,35,2,NULL),(1077,120,89,2,NULL),(1078,121,89,2,NULL),(1079,122,89,2,NULL),(1080,123,89,2,NULL),(1081,124,89,2,NULL),(1082,125,89,2,NULL),(1083,126,89,2,NULL),(1084,127,89,2,NULL),(1085,120,50,2,NULL),(1086,121,50,2,NULL),(1087,122,50,2,NULL),(1088,123,50,2,NULL),(1089,124,50,2,NULL),(1090,125,50,2,NULL),(1091,126,50,2,NULL),(1092,127,50,2,NULL),(1093,120,62,2,NULL),(1094,121,62,2,NULL),(1095,122,62,2,NULL),(1096,123,62,2,NULL),(1097,124,62,2,NULL),(1098,125,62,2,NULL),(1099,126,62,2,NULL),(1100,127,62,2,NULL),(1101,120,66,2,NULL),(1102,121,66,2,NULL),(1103,122,66,2,NULL),(1104,123,66,2,NULL),(1105,124,66,2,NULL),(1106,125,66,2,NULL),(1107,126,66,2,NULL),(1108,127,66,2,NULL),(1109,120,71,2,NULL),(1110,121,71,2,NULL),(1111,122,71,2,NULL),(1112,123,71,2,NULL),(1113,124,71,2,NULL),(1114,125,71,2,NULL),(1115,126,71,2,NULL),(1116,127,71,2,NULL),(1117,120,82,2,NULL),(1118,121,82,2,NULL),(1119,122,82,2,NULL),(1120,123,82,2,NULL),(1121,124,82,2,NULL),(1122,125,82,2,NULL),(1123,126,82,2,NULL),(1124,127,82,2,NULL),(1125,120,84,2,NULL),(1126,121,84,2,NULL),(1127,122,84,2,NULL),(1128,123,84,2,NULL),(1129,124,84,2,NULL),(1130,125,84,2,NULL),(1131,126,84,2,NULL),(1132,127,84,2,NULL),(1133,120,86,2,NULL),(1134,121,86,2,NULL),(1135,122,86,2,NULL),(1136,123,86,2,NULL),(1137,124,86,2,NULL),(1138,125,86,2,NULL),(1139,126,86,2,NULL),(1140,127,86,2,NULL),(1141,112,37,2,NULL),(1142,113,37,2,NULL),(1143,114,37,2,NULL),(1144,115,37,2,NULL),(1145,116,37,2,NULL),(1146,117,37,2,NULL),(1147,118,37,2,NULL),(1148,119,37,2,NULL),(1149,91,37,2,NULL),(1150,92,37,2,NULL),(1151,93,37,2,NULL),(1152,94,37,2,NULL),(1153,95,37,2,NULL),(1154,96,37,2,NULL),(1155,97,37,2,NULL),(1156,98,37,2,NULL),(1157,103,37,2,NULL),(1158,104,37,2,NULL),(1159,105,37,2,NULL),(1160,106,37,2,NULL),(1161,107,37,2,NULL),(1162,108,37,2,NULL),(1163,109,37,2,NULL),(1164,110,37,2,NULL),(1165,16,37,2,NULL),(1166,18,37,2,NULL),(1167,19,37,2,NULL),(1168,21,37,2,NULL),(1169,22,37,2,NULL),(1170,24,37,2,NULL),(1171,26,37,2,NULL),(1172,27,37,2,NULL),(1173,51,37,2,NULL),(1174,53,37,2,NULL),(1175,54,37,2,NULL),(1176,55,37,2,NULL),(1177,57,37,2,NULL),(1178,58,37,2,NULL),(1179,59,37,2,NULL),(1180,61,37,2,NULL),(1181,70,37,2,NULL),(1182,74,37,2,NULL),(1183,48,37,2,NULL),(1184,62,35,2,NULL),(1185,102,54,2,NULL),(1186,129,45,2,NULL),(1187,130,47,2,NULL),(1188,137,51,2,NULL),(1189,112,13,2,NULL),(1190,113,13,2,NULL),(1191,114,13,2,NULL),(1192,115,13,2,NULL),(1193,116,13,2,NULL),(1194,117,13,2,NULL),(1195,118,13,2,NULL),(1196,119,13,2,NULL),(1197,112,28,2,NULL),(1198,113,28,2,NULL),(1199,114,28,2,NULL),(1200,115,28,2,NULL),(1201,116,28,2,NULL),(1202,117,28,2,NULL),(1203,118,28,2,NULL),(1204,119,28,2,NULL),(1205,112,33,2,NULL),(1206,113,33,2,NULL),(1207,114,33,2,NULL),(1208,115,33,2,NULL),(1209,116,33,2,NULL),(1210,117,33,2,NULL),(1211,118,33,2,NULL),(1212,119,33,2,NULL),(1213,112,45,2,NULL),(1214,113,45,2,NULL),(1215,114,45,2,NULL),(1216,115,45,2,NULL),(1217,116,45,2,NULL),(1218,117,45,2,NULL),(1219,118,45,2,NULL),(1220,119,45,2,NULL),(1221,91,41,2,NULL),(1222,92,41,2,NULL),(1223,93,41,2,NULL),(1224,94,41,2,NULL),(1225,95,41,2,NULL),(1226,96,41,2,NULL),(1227,97,41,2,NULL),(1228,98,41,2,NULL),(1229,112,47,2,NULL),(1230,113,47,2,NULL),(1231,114,47,2,NULL),(1232,115,47,2,NULL),(1233,116,47,2,NULL),(1234,117,47,2,NULL),(1235,118,47,2,NULL),(1236,119,47,2,NULL),(1237,103,41,2,NULL),(1238,104,41,2,NULL),(1239,105,41,2,NULL),(1240,106,41,2,NULL),(1241,107,41,2,NULL),(1242,108,41,2,NULL),(1243,109,41,2,NULL),(1244,110,41,2,NULL),(1245,112,51,2,NULL),(1246,113,51,2,NULL),(1247,114,51,2,NULL),(1248,115,51,2,NULL),(1249,116,51,2,NULL),(1250,117,51,2,NULL),(1251,118,51,2,NULL),(1252,119,51,2,NULL),(1253,16,41,2,NULL),(1254,18,41,2,NULL),(1255,19,41,2,NULL),(1256,21,41,2,NULL),(1257,22,41,2,NULL),(1258,24,41,2,NULL),(1259,26,41,2,NULL),(1260,27,41,2,NULL),(1261,112,54,2,NULL),(1262,113,54,2,NULL),(1263,114,54,2,NULL),(1264,115,54,2,NULL),(1265,116,54,2,NULL),(1266,117,54,2,NULL),(1267,118,54,2,NULL),(1268,119,54,2,NULL),(1269,51,41,2,NULL),(1270,53,41,2,NULL),(1271,54,41,2,NULL),(1272,55,41,2,NULL),(1273,57,41,2,NULL),(1274,58,41,2,NULL),(1275,59,41,2,NULL),(1276,61,41,2,NULL),(1277,70,41,2,NULL),(1278,74,41,2,NULL),(1279,112,89,2,NULL),(1280,113,89,2,NULL),(1281,114,89,2,NULL),(1282,115,89,2,NULL),(1283,116,89,2,NULL),(1284,117,89,2,NULL),(1285,118,89,2,NULL),(1286,119,89,2,NULL),(1287,112,50,2,NULL),(1288,113,50,2,NULL),(1289,114,50,2,NULL),(1290,115,50,2,NULL),(1291,116,50,2,NULL),(1292,117,50,2,NULL),(1293,118,50,2,NULL),(1294,119,50,2,NULL),(1295,112,62,2,NULL),(1296,113,62,2,NULL),(1297,114,62,2,NULL),(1298,115,62,2,NULL),(1299,116,62,2,NULL),(1300,117,62,2,NULL),(1301,118,62,2,NULL),(1302,119,62,2,NULL),(1303,112,66,2,NULL),(1304,113,66,2,NULL),(1305,114,66,2,NULL),(1306,115,66,2,NULL),(1307,116,66,2,NULL),(1308,117,66,2,NULL),(1309,118,66,2,NULL),(1310,119,66,2,NULL),(1311,112,71,2,NULL),(1312,113,71,2,NULL),(1313,114,71,2,NULL),(1314,115,71,2,NULL),(1315,116,71,2,NULL),(1316,117,71,2,NULL),(1317,118,71,2,NULL),(1318,119,71,2,NULL),(1319,112,82,2,NULL),(1320,113,82,2,NULL),(1321,114,82,2,NULL),(1322,115,82,2,NULL),(1323,116,82,2,NULL),(1324,117,82,2,NULL),(1325,118,82,2,NULL),(1326,119,82,2,NULL),(1327,112,84,2,NULL),(1328,113,84,2,NULL),(1329,114,84,2,NULL),(1330,115,84,2,NULL),(1331,116,84,2,NULL),(1332,117,84,2,NULL),(1333,118,84,2,NULL),(1334,119,84,2,NULL),(1335,112,86,2,NULL),(1336,113,86,2,NULL),(1337,114,86,2,NULL),(1338,115,86,2,NULL),(1339,116,86,2,NULL),(1340,117,86,2,NULL),(1341,118,86,2,NULL),(1342,119,86,2,NULL),(1343,29,35,2,NULL),(1344,66,51,2,NULL),(1345,69,54,2,NULL),(1346,99,37,2,NULL),(1347,132,47,2,NULL),(1348,136,41,2,NULL),(1349,91,13,2,NULL),(1350,92,13,2,NULL),(1351,93,13,2,NULL),(1352,94,13,2,NULL),(1353,95,13,2,NULL),(1354,96,13,2,NULL),(1355,97,13,2,NULL),(1356,98,13,2,NULL),(1357,91,28,2,NULL),(1358,92,28,2,NULL),(1359,93,28,2,NULL),(1360,94,28,2,NULL),(1361,95,28,2,NULL),(1362,96,28,2,NULL),(1363,97,28,2,NULL),(1364,98,28,2,NULL),(1365,91,33,2,NULL),(1366,92,33,2,NULL),(1367,93,33,2,NULL),(1368,94,33,2,NULL),(1369,95,33,2,NULL),(1370,96,33,2,NULL),(1371,97,33,2,NULL),(1372,98,33,2,NULL),(1373,91,47,2,NULL),(1374,92,47,2,NULL),(1375,93,47,2,NULL),(1376,94,47,2,NULL),(1377,95,47,2,NULL),(1378,96,47,2,NULL),(1379,97,47,2,NULL),(1380,98,47,2,NULL),(1381,103,45,2,NULL),(1382,104,45,2,NULL),(1383,105,45,2,NULL),(1384,106,45,2,NULL),(1385,107,45,2,NULL),(1386,108,45,2,NULL),(1387,109,45,2,NULL),(1388,110,45,2,NULL),(1389,91,51,2,NULL),(1390,92,51,2,NULL),(1391,93,51,2,NULL),(1392,94,51,2,NULL),(1393,95,51,2,NULL),(1394,96,51,2,NULL),(1395,97,51,2,NULL),(1396,98,51,2,NULL),(1397,16,45,2,NULL),(1398,18,45,2,NULL),(1399,19,45,2,NULL),(1400,21,45,2,NULL),(1401,22,45,2,NULL),(1402,24,45,2,NULL),(1403,26,45,2,NULL),(1404,27,45,2,NULL),(1405,91,54,2,NULL),(1406,92,54,2,NULL),(1407,93,54,2,NULL),(1408,94,54,2,NULL),(1409,95,54,2,NULL),(1410,96,54,2,NULL),(1411,97,54,2,NULL),(1412,98,54,2,NULL),(1413,51,45,2,NULL),(1414,53,45,2,NULL),(1415,54,45,2,NULL),(1416,55,45,2,NULL),(1417,57,45,2,NULL),(1418,58,45,2,NULL),(1419,59,45,2,NULL),(1420,61,45,2,NULL),(1421,70,45,2,NULL),(1422,74,45,2,NULL),(1423,91,89,2,NULL),(1424,92,89,2,NULL),(1425,93,89,2,NULL),(1426,94,89,2,NULL),(1427,95,89,2,NULL),(1428,96,89,2,NULL),(1429,97,89,2,NULL),(1430,98,89,2,NULL),(1431,91,50,2,NULL),(1432,92,50,2,NULL),(1433,93,50,2,NULL),(1434,94,50,2,NULL),(1435,95,50,2,NULL),(1436,96,50,2,NULL),(1437,97,50,2,NULL),(1438,98,50,2,NULL),(1439,91,62,2,NULL),(1440,92,62,2,NULL),(1441,93,62,2,NULL),(1442,94,62,2,NULL),(1443,95,62,2,NULL),(1444,96,62,2,NULL),(1445,97,62,2,NULL),(1446,98,62,2,NULL),(1447,91,66,2,NULL),(1448,92,66,2,NULL),(1449,93,66,2,NULL),(1450,94,66,2,NULL),(1451,95,66,2,NULL),(1452,96,66,2,NULL),(1453,97,66,2,NULL),(1454,98,66,2,NULL),(1455,91,71,2,NULL),(1456,92,71,2,NULL),(1457,93,71,2,NULL),(1458,94,71,2,NULL),(1459,95,71,2,NULL),(1460,96,71,2,NULL),(1461,97,71,2,NULL),(1462,98,71,2,NULL),(1463,91,82,2,NULL),(1464,92,82,2,NULL),(1465,93,82,2,NULL),(1466,94,82,2,NULL),(1467,95,82,2,NULL),(1468,96,82,2,NULL),(1469,97,82,2,NULL),(1470,98,82,2,NULL),(1471,91,84,2,NULL),(1472,92,84,2,NULL),(1473,93,84,2,NULL),(1474,94,84,2,NULL),(1475,95,84,2,NULL),(1476,96,84,2,NULL),(1477,97,84,2,NULL),(1478,98,84,2,NULL),(1479,91,86,2,NULL),(1480,92,86,2,NULL),(1481,93,86,2,NULL),(1482,94,86,2,NULL),(1483,95,86,2,NULL),(1484,96,86,2,NULL),(1485,97,86,2,NULL),(1486,98,86,2,NULL),(1487,33,35,2,NULL),(1488,46,37,2,NULL),(1489,65,54,2,NULL),(1490,128,51,2,NULL),(1491,133,45,2,NULL),(1492,134,41,2,NULL),(1493,103,13,2,NULL),(1494,104,13,2,NULL),(1495,105,13,2,NULL),(1496,106,13,2,NULL),(1497,107,13,2,NULL),(1498,108,13,2,NULL),(1499,109,13,2,NULL),(1500,110,13,2,NULL),(1501,103,28,2,NULL),(1502,104,28,2,NULL),(1503,105,28,2,NULL),(1504,106,28,2,NULL),(1505,107,28,2,NULL),(1506,108,28,2,NULL),(1507,109,28,2,NULL),(1508,110,28,2,NULL),(1509,103,33,2,NULL),(1510,104,33,2,NULL),(1511,105,33,2,NULL),(1512,106,33,2,NULL),(1513,107,33,2,NULL),(1514,108,33,2,NULL),(1515,109,33,2,NULL),(1516,110,33,2,NULL),(1517,103,51,2,NULL),(1518,104,51,2,NULL),(1519,105,51,2,NULL),(1520,106,51,2,NULL),(1521,107,51,2,NULL),(1522,108,51,2,NULL),(1523,109,51,2,NULL),(1524,110,51,2,NULL),(1525,16,47,2,NULL),(1526,18,47,2,NULL),(1527,19,47,2,NULL),(1528,21,47,2,NULL),(1529,22,47,2,NULL),(1530,24,47,2,NULL),(1531,26,47,2,NULL),(1532,27,47,2,NULL),(1533,103,54,2,NULL),(1534,104,54,2,NULL),(1535,105,54,2,NULL),(1536,106,54,2,NULL),(1537,107,54,2,NULL),(1538,108,54,2,NULL),(1539,109,54,2,NULL),(1540,110,54,2,NULL),(1541,51,47,2,NULL),(1542,53,47,2,NULL),(1543,54,47,2,NULL),(1544,55,47,2,NULL),(1545,57,47,2,NULL),(1546,58,47,2,NULL),(1547,59,47,2,NULL),(1548,61,47,2,NULL),(1549,70,47,2,NULL),(1550,74,47,2,NULL),(1551,103,89,2,NULL),(1552,104,89,2,NULL),(1553,105,89,2,NULL),(1554,106,89,2,NULL),(1555,107,89,2,NULL),(1556,108,89,2,NULL),(1557,109,89,2,NULL),(1558,110,89,2,NULL),(1559,103,50,2,NULL),(1560,104,50,2,NULL),(1561,105,50,2,NULL),(1562,106,50,2,NULL),(1563,107,50,2,NULL),(1564,108,50,2,NULL),(1565,109,50,2,NULL),(1566,110,50,2,NULL),(1567,103,62,2,NULL),(1568,104,62,2,NULL),(1569,105,62,2,NULL),(1570,106,62,2,NULL),(1571,107,62,2,NULL),(1572,108,62,2,NULL),(1573,109,62,2,NULL),(1574,110,62,2,NULL),(1575,103,66,2,NULL),(1576,104,66,2,NULL),(1577,105,66,2,NULL),(1578,106,66,2,NULL),(1579,107,66,2,NULL),(1580,108,66,2,NULL),(1581,109,66,2,NULL),(1582,110,66,2,NULL),(1583,103,71,2,NULL),(1584,104,71,2,NULL),(1585,105,71,2,NULL),(1586,106,71,2,NULL),(1587,107,71,2,NULL),(1588,108,71,2,NULL),(1589,109,71,2,NULL),(1590,110,71,2,NULL),(1591,103,82,2,NULL),(1592,104,82,2,NULL),(1593,105,82,2,NULL),(1594,106,82,2,NULL),(1595,107,82,2,NULL),(1596,108,82,2,NULL),(1597,109,82,2,NULL),(1598,110,82,2,NULL),(1599,103,84,2,NULL),(1600,104,84,2,NULL),(1601,105,84,2,NULL),(1602,106,84,2,NULL),(1603,107,84,2,NULL),(1604,108,84,2,NULL),(1605,109,84,2,NULL),(1606,110,84,2,NULL),(1607,103,86,2,NULL),(1608,104,86,2,NULL),(1609,105,86,2,NULL),(1610,106,86,2,NULL),(1611,107,86,2,NULL),(1612,108,86,2,NULL),(1613,109,86,2,NULL),(1614,110,86,2,NULL),(1615,37,41,2,NULL),(1616,40,47,2,NULL),(1617,44,35,2,NULL),(1618,50,45,2,NULL),(1619,86,54,2,NULL),(1620,111,37,2,NULL),(1621,16,13,2,NULL),(1622,18,13,2,NULL),(1623,19,13,2,NULL),(1624,21,13,2,NULL),(1625,22,13,2,NULL),(1626,24,13,2,NULL),(1627,26,13,2,NULL),(1628,27,13,2,NULL),(1629,16,28,2,NULL),(1630,18,28,2,NULL),(1631,19,28,2,NULL),(1632,21,28,2,NULL),(1633,22,28,2,NULL),(1634,24,28,2,NULL),(1635,26,28,2,NULL),(1636,27,28,2,NULL),(1637,16,33,2,NULL),(1638,18,33,2,NULL),(1639,19,33,2,NULL),(1640,21,33,2,NULL),(1641,22,33,2,NULL),(1642,24,33,2,NULL),(1643,26,33,2,NULL),(1644,27,33,2,NULL),(1645,16,54,2,NULL),(1646,18,54,2,NULL),(1647,19,54,2,NULL),(1648,21,54,2,NULL),(1649,22,54,2,NULL),(1650,24,54,2,NULL),(1651,26,54,2,NULL),(1652,27,54,2,NULL),(1653,51,51,2,NULL),(1654,53,51,2,NULL),(1655,54,51,2,NULL),(1656,55,51,2,NULL),(1657,57,51,2,NULL),(1658,58,51,2,NULL),(1659,59,51,2,NULL),(1660,61,51,2,NULL),(1661,70,51,2,NULL),(1662,74,51,2,NULL),(1663,16,89,2,NULL),(1664,18,89,2,NULL),(1665,19,89,2,NULL),(1666,21,89,2,NULL),(1667,22,89,2,NULL),(1668,24,89,2,NULL),(1669,26,89,2,NULL),(1670,27,89,2,NULL),(1671,16,50,2,NULL),(1672,18,50,2,NULL),(1673,19,50,2,NULL),(1674,21,50,2,NULL),(1675,22,50,2,NULL),(1676,24,50,2,NULL),(1677,26,50,2,NULL),(1678,27,50,2,NULL),(1679,16,62,2,NULL),(1680,18,62,2,NULL),(1681,19,62,2,NULL),(1682,21,62,2,NULL),(1683,22,62,2,NULL),(1684,24,62,2,NULL),(1685,26,62,2,NULL),(1686,27,62,2,NULL),(1687,16,66,2,NULL),(1688,18,66,2,NULL),(1689,19,66,2,NULL),(1690,21,66,2,NULL),(1691,22,66,2,NULL),(1692,24,66,2,NULL),(1693,26,66,2,NULL),(1694,27,66,2,NULL),(1695,16,71,2,NULL),(1696,18,71,2,NULL),(1697,19,71,2,NULL),(1698,21,71,2,NULL),(1699,22,71,2,NULL),(1700,24,71,2,NULL),(1701,26,71,2,NULL),(1702,27,71,2,NULL),(1703,16,82,2,NULL),(1704,18,82,2,NULL),(1705,19,82,2,NULL),(1706,21,82,2,NULL),(1707,22,82,2,NULL),(1708,24,82,2,NULL),(1709,26,82,2,NULL),(1710,27,82,2,NULL),(1711,16,84,2,NULL),(1712,18,84,2,NULL),(1713,19,84,2,NULL),(1714,21,84,2,NULL),(1715,22,84,2,NULL),(1716,24,84,2,NULL),(1717,26,84,2,NULL),(1718,27,84,2,NULL),(1719,16,86,2,NULL),(1720,18,86,2,NULL),(1721,19,86,2,NULL),(1722,21,86,2,NULL),(1723,22,86,2,NULL),(1724,24,86,2,NULL),(1725,26,86,2,NULL),(1726,27,86,2,NULL),(1727,35,51,2,NULL),(1728,42,47,2,NULL),(1729,76,45,2,NULL),(1730,84,37,2,NULL),(1731,100,35,2,NULL),(1732,135,41,2,NULL),(1733,51,13,2,NULL),(1734,53,13,2,NULL),(1735,54,13,2,NULL),(1736,55,13,2,NULL),(1737,57,13,2,NULL),(1738,58,13,2,NULL),(1739,59,13,2,NULL),(1740,61,13,2,NULL),(1741,51,28,2,NULL),(1742,53,28,2,NULL),(1743,54,28,2,NULL),(1744,55,28,2,NULL),(1745,57,28,2,NULL),(1746,58,28,2,NULL),(1747,59,28,2,NULL),(1748,61,28,2,NULL),(1749,51,33,2,NULL),(1750,53,33,2,NULL),(1751,54,33,2,NULL),(1752,55,33,2,NULL),(1753,57,33,2,NULL),(1754,58,33,2,NULL),(1755,59,33,2,NULL),(1756,61,33,2,NULL),(1757,70,54,2,NULL),(1758,74,54,2,NULL),(1759,51,89,2,NULL),(1760,53,89,2,NULL),(1761,54,89,2,NULL),(1762,55,89,2,NULL),(1763,57,89,2,NULL),(1764,58,89,2,NULL),(1765,59,89,2,NULL),(1766,61,89,2,NULL),(1767,51,50,2,NULL),(1768,53,50,2,NULL),(1769,54,50,2,NULL),(1770,55,50,2,NULL),(1771,57,50,2,NULL),(1772,58,50,2,NULL),(1773,59,50,2,NULL),(1774,61,50,2,NULL),(1775,51,62,2,NULL),(1776,53,62,2,NULL),(1777,54,62,2,NULL),(1778,55,62,2,NULL),(1779,57,62,2,NULL),(1780,58,62,2,NULL),(1781,59,62,2,NULL),(1782,61,62,2,NULL),(1783,51,66,2,NULL),(1784,53,66,2,NULL),(1785,54,66,2,NULL),(1786,55,66,2,NULL),(1787,57,66,2,NULL),(1788,58,66,2,NULL),(1789,59,66,2,NULL),(1790,61,66,2,NULL),(1791,51,71,2,NULL),(1792,53,71,2,NULL),(1793,54,71,2,NULL),(1794,55,71,2,NULL),(1795,57,71,2,NULL),(1796,58,71,2,NULL),(1797,59,71,2,NULL),(1798,61,71,2,NULL),(1799,51,82,2,NULL),(1800,53,82,2,NULL),(1801,54,82,2,NULL),(1802,55,82,2,NULL),(1803,57,82,2,NULL),(1804,58,82,2,NULL),(1805,59,82,2,NULL),(1806,61,82,2,NULL),(1807,51,84,2,NULL),(1808,53,84,2,NULL),(1809,54,84,2,NULL),(1810,55,84,2,NULL),(1811,57,84,2,NULL),(1812,58,84,2,NULL),(1813,59,84,2,NULL),(1814,61,84,2,NULL),(1815,51,86,2,NULL),(1816,53,86,2,NULL),(1817,54,86,2,NULL),(1818,55,86,2,NULL),(1819,57,86,2,NULL),(1820,58,86,2,NULL),(1821,59,86,2,NULL),(1822,61,86,2,NULL),(1823,70,13,2,NULL),(1824,74,13,2,NULL),(1825,70,28,2,NULL),(1826,74,28,2,NULL),(1827,70,33,2,NULL),(1828,74,33,2,NULL),(1829,70,89,2,NULL),(1830,74,89,2,NULL),(1831,70,50,2,NULL),(1832,74,50,2,NULL),(1833,70,62,2,NULL),(1834,74,62,2,NULL),(1835,70,66,2,NULL),(1836,74,66,2,NULL),(1837,70,71,2,NULL),(1838,74,71,2,NULL),(1839,70,82,2,NULL),(1840,74,82,2,NULL),(1841,70,84,2,NULL),(1842,74,84,2,NULL),(1843,70,86,2,NULL),(1844,74,86,2,NULL),(1845,88,11,2,NULL),(1846,88,30,2,NULL),(1847,88,32,2,NULL),(1848,88,52,2,NULL),(1849,88,58,2,NULL),(1850,88,63,2,NULL),(1851,88,74,2,NULL),(1852,17,15,2,NULL),(1853,20,17,2,NULL),(1854,71,23,2,NULL),(1855,77,14,2,NULL),(1856,41,18,2,NULL),(1857,73,19,2,NULL),(1858,15,22,2,NULL),(1859,52,17,2,NULL),(1860,56,23,2,NULL),(1861,79,20,2,NULL),(1862,43,24,2,NULL),(1863,45,24,2,NULL),(1864,60,11,2,NULL),(1865,60,30,2,NULL),(1866,60,32,2,NULL),(1867,60,52,2,NULL),(1868,60,58,2,NULL),(1869,60,63,2,NULL),(1870,60,74,2,NULL),(1871,63,11,2,NULL),(1872,63,30,2,NULL),(1873,63,32,2,NULL),(1874,63,52,2,NULL),(1875,63,58,2,NULL),(1876,63,63,2,NULL),(1877,63,74,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:25
