-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_719
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'NULL-CONSTANT'),(5,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.MAIN'),(11,'android.provider.Telephony.SMS_RECEIVED'),(1,'android.service.wallpaper.WallpaperService'),(17,'android.speech.tts.engine.CHECK_TTS_DATA'),(15,'android.speech.tts.engine.INSTALL_TTS_DATA'),(3,'com.airpush.android.PushServiceStart30444'),(8,'com.airpush.android.PushServiceStart37416'),(12,'com.airpush.android.PushServiceStart45982'),(7,'com.airpush.android.PushServiceStart50896'),(2,'com.airpush.android.PushServiceStart52821'),(6,'com.airpush.android.PushServiceStart57858'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(13,'com.android.music.musicservicecommand.togglepause'),(10,'com.google.android.c2dm.intent.RECEIVE'),(9,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.sexy_girls.koreas_sex_bomb',1),(2,'it.inforbit.tropicalfish.lwp',5),(3,'com.custom.lwp.MagictouchHeartofrosesone',3),(4,'com.cube.liveWallpaper_johnnydepp',1),(5,'com.macte.Wallpaper.Anime',3),(6,'com.talking_message.proversion',1),(7,'com.zebilabs.freewaybiker',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'com.cube.liveWallpaper_johnnydepp');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sexy_girls.koreas_sex_bomb.Preferences'),(2,1,'com.airpush.android.PushAds'),(3,2,'it.inforbit.tropicalfish.lwp.settings'),(4,1,'com.apperhand.device.android.AndroidSDKProvider'),(5,2,'com.airpush.android.PushAds'),(6,1,'com.sexy_girls.koreas_sex_bomb.Wallpaper'),(7,2,'it.inforbit.tropicalfish.lwp.IFBTLiveWallpaperService'),(8,1,'com.airpush.android.PushService'),(9,2,'com.airpush.android.PushService'),(10,1,'com.airpush.android.UserDetailsReceiver'),(11,2,'com.apperhand.device.android.AndroidSDKProvider'),(12,1,'com.airpush.android.MessageReceiver'),(13,2,'com.airpush.android.UserDetailsReceiver'),(14,3,'com.custom.lwp.MagictouchHeartofrosesone.vickyWallpaperOptions'),(15,1,'com.airpush.android.DeliveryReceiver'),(16,2,'com.airpush.android.MessageReceiver'),(17,3,'com.custom.lwp.MagictouchHeartofrosesone.vickyLauncher'),(18,1,'com.sexy_girls.koreas_sex_bomb.BootReceiver'),(19,2,'com.airpush.android.DeliveryReceiver'),(20,4,'com.cube.liveWallpaper_johnnydepp.AppLauncher'),(21,2,'com.Leadbolt.AdNotification'),(22,2,'it.inforbit.tropicalfish.lwp.BootReceiver'),(23,5,'com.macte.Wallpaper.Anime.Main'),(24,3,'com.custom.uilib.FilePicker'),(25,1,'com.sexy_girls.koreas_sex_bomb.boot'),(26,4,'com.moreapps.code.MoreAppsActivity'),(27,3,'com.airpush.android.PushAds'),(28,5,'com.google.ads.AdActivity'),(29,4,'com.cube.liveWallpaper_johnnydepp.ImageCroping'),(30,3,'com.custom.lwp.MagictouchHeartofrosesone.vickyWallpaperService'),(31,1,'com.Leadbolt.AdNotification'),(32,4,'com.cube.liveWallpaper_johnnydepp.Gallery_Activity'),(33,5,'com.macte.Wallpaper.Anime.Wallpaper'),(34,4,'com.cube.liveWallpaper_johnnydepp.OptionSettingPreferanceActivity'),(35,3,'com.apperhand.device.android.AndroidSDKProvider'),(36,4,'com.airpush.android.PushAds'),(37,3,'com.airpush.android.PushService'),(38,5,'com.airpush.android.PushAds'),(39,4,'com.cube.liveWallpaper_johnnydepp.PhotoCube3DLWPActivity'),(40,5,'com.apperhand.device.android.AndroidSDKProvider'),(41,3,'com.airpush.android.UserDetailsReceiver'),(42,4,'com.apperhand.device.android.AndroidSDKProvider'),(43,5,'com.airpush.android.PushService'),(44,3,'com.airpush.android.MessageReceiver'),(45,4,'com.airpush.android.PushService'),(46,3,'com.airpush.android.DeliveryReceiver'),(47,5,'com.airpush.android.UserDetailsReceiver'),(48,3,'com.Leadbolt.AdNotification'),(49,4,'com.cube.liveWallpaper_johnnydepp.C2DMService'),(50,5,'com.airpush.android.MessageReceiver'),(51,3,'com.custom.lwp.MagictouchHeartofrosesone.BootReceiver'),(52,4,'com.Leadbolt.AdNotification'),(53,5,'com.airpush.android.DeliveryReceiver'),(54,4,'com.airpush.android.UserDetailsReceiver'),(55,5,'com.macte.Wallpaper.Anime.BootReceiver'),(56,4,'com.airpush.android.MessageReceiver'),(57,4,'com.airpush.android.DeliveryReceiver'),(58,4,'com.cube.liveWallpaper_johnnydepp.BootReceiver'),(59,6,'com.talking_message.proversion.RunOnActivity'),(60,4,'com.cube.liveWallpaper_johnnydepp.C2DMRegistrationReceiver'),(61,6,'com.talking_message.proversion.Settings'),(62,6,'com.google.ads.AdActivity'),(63,4,'com.cube.liveWallpaper_johnnydepp.C2DMMessageReceiver'),(64,6,'com.talking_message.proversion.SpeakSmsService'),(65,6,'com.moolah.NotificationService'),(66,6,'com.apperhand.device.android.AndroidSDKProvider'),(67,6,'com.talking_message.proversion.SmsReceiver'),(68,6,'com.talking_message.proversion.BootReceiver'),(69,6,'com.Leadbolt.AdNotification'),(70,6,'com.moolah.MessageReceiver'),(71,6,'com.moolah.BootReceiver'),(72,7,'com.zebilabs.freewaybiker.Welcome'),(73,7,'com.zebilabs.freewaybiker.TiltRacingActivity'),(74,7,'com.zebilabs.freewaybiker.GameScore'),(75,7,'com.airpush.android.PushAds'),(76,7,'com.airpush.android.PushService'),(77,7,'com.airpush.android.UserDetailsReceiver'),(78,7,'com.airpush.android.MessageReceiver'),(79,7,'com.airpush.android.DeliveryReceiver'),(80,7,'com.zebilabs.freewaybiker.BootReceiver'),(81,6,'com.talking_message.proversion.RunOnActivity$2'),(82,6,'com.apperhand.device.android.a.d'),(83,6,'com.apperhand.device.android.a.b'),(84,6,'com.Leadbolt.AdController');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,66,'USER_AGENT'),(2,67,'pdus'),(3,66,'SERVICE_MODE'),(4,69,'sectionid'),(5,66,'DEVELOPER_ID'),(6,64,'originatingAddress'),(7,70,'notif_sig'),(8,66,'M_SERVER_URL'),(9,64,'messageBody'),(10,66,'FIRST_RUN'),(11,66,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,7,'s',1,31,NULL),(7,6,'s',1,31,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,30,'s',1,31,NULL),(31,31,'r',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',1,31,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,55,'r',1,NULL,NULL),(55,54,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'r',1,39,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'r',1,39,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',1,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,64),(2,2,70),(3,3,59),(4,4,59),(5,5,59),(6,6,64),(7,7,67),(8,8,59),(9,9,66),(10,10,64),(11,11,66),(12,12,66),(13,13,66),(14,14,61),(15,15,68),(16,15,69),(17,15,59),(18,16,68),(19,16,69),(20,16,59),(21,17,66),(22,18,59),(23,19,66),(24,20,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,64,'<com.talking_message.proversion.SpeakSmsService: void onUtteranceCompleted(java.lang.String)>',17,'r',NULL),(2,70,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(3,66,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(4,81,'<com.talking_message.proversion.RunOnActivity$2: void onClick(android.view.View)>',7,'a',NULL),(5,59,'<com.talking_message.proversion.RunOnActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(6,64,'<com.talking_message.proversion.SpeakSmsService: java.lang.String contactName(java.lang.String)>',14,'p',NULL),(7,67,'<com.talking_message.proversion.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'s',NULL),(8,59,'<com.talking_message.proversion.RunOnActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(9,82,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(10,64,'<com.talking_message.proversion.SpeakSmsService: void onInit(int)>',38,'r',NULL),(11,82,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(12,83,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(13,83,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(14,61,'<com.talking_message.proversion.Settings: boolean onPreferenceClick(android.preference.Preference)>',22,'a',NULL),(15,84,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(16,84,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(17,82,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(18,59,'<com.talking_message.proversion.RunOnActivity: void onCreate(android.os.Bundle)>',48,'a',NULL),(19,83,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(20,61,'<com.talking_message.proversion.Settings: boolean onPreferenceClick(android.preference.Preference)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,2,14),(3,3,14),(4,8,15),(5,9,13),(6,10,16),(7,12,16),(8,13,16),(9,14,16),(10,15,17);
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
INSERT INTO `ICategories` VALUES (1,11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/moolah/NotificationService'),(2,3,'com/moolah/NotificationService'),(3,4,'com/apperhand/device/android/AndroidSDKProvider'),(4,5,'com/talking_message/proversion/Settings'),(5,6,'com/talking_message/proversion/Settings'),(6,7,'com/talking_message/proversion/SpeakSmsService'),(7,11,'com.android.settings.TextToSpeechSettings'),(8,16,'com/talking_message/proversion/SpeakSmsService');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'notif_sig'),(2,2,'test_mode'),(3,3,'test_mode'),(4,4,'M_SERVER_URL'),(5,4,'USER_AGENT'),(6,4,'SERVICE_MODE'),(7,4,'FIRST_RUN'),(8,4,'DEVELOPER_ID'),(9,4,'APPLICATION_ID'),(10,7,'messageBody'),(11,7,'originatingAddress'),(12,10,'android.intent.extra.shortcut.NAME'),(13,10,'android.intent.extra.shortcut.ICON'),(14,10,'android.intent.extra.shortcut.INTENT'),(15,12,'android.intent.extra.shortcut.NAME'),(16,12,'android.intent.extra.shortcut.ICON_RESOURCE'),(17,12,'android.intent.extra.shortcut.INTENT'),(18,13,'android.intent.extra.shortcut.NAME'),(19,13,'android.intent.extra.shortcut.ICON'),(20,13,'android.intent.extra.shortcut.ICON_RESOURCE'),(21,13,'android.intent.extra.shortcut.INTENT'),(22,14,'android.intent.extra.shortcut.NAME'),(23,14,'android.intent.extra.shortcut.ICON'),(24,14,'android.intent.extra.shortcut.INTENT'),(25,16,'messageBody'),(26,16,'originatingAddress');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,4),(8,8,5),(9,9,4),(10,10,5),(11,11,1),(12,12,4),(13,13,6),(14,14,1),(15,15,7),(16,16,8),(17,17,5),(18,18,5),(19,19,5),(20,20,4),(21,21,9),(22,22,10),(23,23,11),(24,24,5),(25,25,5),(26,26,5),(27,27,4),(28,28,12),(29,29,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,5,1),(2,6,2),(3,7,3),(4,8,2),(5,9,1),(6,12,4),(7,17,2),(8,18,2),(9,19,2),(10,20,1),(11,21,5),(12,22,5),(13,24,2),(14,25,2),(15,27,1),(16,29,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.talking_message.proversion'),(2,3,'com.talking_message.proversion'),(3,4,'com.talking_message.proversion'),(4,5,'com.talking_message.proversion'),(5,6,'com.talking_message.proversion'),(6,7,'com.talking_message.proversion'),(7,11,'com.android.settings'),(8,16,'com.talking_message.proversion');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,7,0),(2,6,0),(3,8,0),(4,9,0),(5,17,0),(6,18,0),(7,20,0),(8,22,0),(9,23,0),(10,25,0),(11,30,0),(12,33,0),(13,37,0),(14,39,0),(15,43,0),(16,45,0),(17,51,0),(18,54,0),(19,58,0),(20,59,0),(21,60,0),(22,63,0),(23,67,0),(24,68,0),(25,71,0),(26,68,0),(27,72,0),(28,76,0),(29,80,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,7,0,0),(8,8,1,0),(9,10,1,0),(10,11,1,0),(11,14,0,0),(12,15,1,0),(13,15,1,0),(14,15,1,0),(15,18,1,0),(16,20,0,0);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(23,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(37,'android.permission.ACCESS_MOCK_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.BIND_WALLPAPER'),(33,'android.permission.CALL_PHONE'),(36,'android.permission.CONTROL_LOCATION_UPDATES'),(29,'android.permission.DISABLE_KEYGUARD'),(34,'android.permission.GET_ACCOUNTS'),(13,'android.permission.INTERNET'),(38,'android.permission.MODIFY_AUDIO_SETTINGS'),(35,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(32,'android.permission.RECEIVE_SMS'),(26,'android.permission.SET_PREFERRED_APPLICATIONS'),(30,'android.permission.SET_WALLPAPER'),(17,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(25,'com.android.launcher.permission.READ_SETTINGS'),(9,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(27,'com.cube.liveWallpaper_johnnydepp.permission.C2D_MESSAGE'),(15,'com.fede.launcher.permission.READ_SETTINGS'),(28,'com.google.android.c2dm.permission.RECEIVE'),(39,'com.google.android.c2dm.permission.SEND'),(8,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(12,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(18,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.launcher.permission.READ_SETTINGS'),(16,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (27,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,1),(2,9,2),(3,12,3),(4,13,4),(5,16,5),(6,17,6),(7,17,7),(8,19,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(15,1,8),(16,2,8),(17,1,9),(18,2,9),(19,1,10),(20,2,10),(21,1,11),(22,2,11),(23,1,12),(24,2,12),(25,1,13),(26,2,13),(27,1,14),(28,2,14),(29,1,15),(30,2,15),(31,1,17),(32,2,17),(33,1,16),(34,3,1),(35,2,16),(36,4,1),(37,1,19),(38,3,2),(39,2,19),(40,4,2),(41,1,18),(42,3,3),(43,4,3),(44,2,18),(45,1,21),(46,3,4),(47,2,21),(48,4,4),(49,3,5),(50,1,20),(51,2,20),(52,4,5),(53,1,22),(54,3,6),(55,2,23),(56,4,6),(57,3,7),(58,4,7),(59,2,22),(60,3,8),(61,4,8),(62,2,24),(63,3,9),(64,4,9),(65,5,1),(66,3,10),(67,4,10),(68,5,2),(69,3,11),(70,4,11),(71,5,3),(72,3,12),(73,5,4),(74,4,12),(75,3,13),(76,5,5),(77,4,13),(78,3,14),(79,4,14),(80,5,6),(81,3,15),(82,4,15),(83,5,7),(84,3,17),(85,4,17),(86,5,8),(87,3,16),(88,4,16),(89,5,9),(90,3,19),(91,4,19),(92,5,10),(93,3,18),(94,4,18),(95,5,11),(96,3,21),(97,4,21),(98,5,12),(99,3,20),(100,4,20),(101,5,13),(102,3,23),(103,4,23),(104,5,14),(105,3,22),(106,4,22),(107,5,15),(108,3,25),(109,4,24),(110,5,17),(111,3,24),(112,4,27),(113,5,16),(114,4,26),(115,5,18),(116,4,29),(117,5,21),(118,4,28),(119,5,20),(120,5,23),(121,5,22),(122,5,25),(123,5,30),(124,6,1),(125,6,2),(126,6,3),(127,6,4),(128,6,5),(129,6,6),(130,6,7),(131,6,8),(132,6,9),(133,6,10),(134,6,11),(135,6,12),(136,6,13),(137,6,14),(138,6,15),(139,6,17),(140,6,16),(141,6,19),(142,6,18),(143,6,21),(144,6,20),(145,6,23),(146,6,22),(147,6,25),(148,6,24),(149,6,34),(150,6,35),(151,6,32),(152,6,33),(153,6,38),(154,6,36),(155,6,37),(156,7,17),(157,7,1),(158,7,19),(159,7,3),(160,7,20),(161,7,23),(162,7,7),(163,7,10),(164,7,11),(165,7,13);
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

-- Dump completed on 2015-10-09  0:40:57
