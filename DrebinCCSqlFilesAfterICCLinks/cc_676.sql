-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_676
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.NEW_OUTGOING_CALL'),(4,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(20,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(7,'android.service.wallpaper.WallpaperService'),(6,'com.airpush.android.PushServiceStart28411'),(12,'com.airpush.android.PushServiceStart31845'),(13,'com.airpush.android.PushServiceStart50842'),(9,'com.airpush.android.PushServiceStart52976'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(19,'com.apperhand.action.show.eula'),(11,'com.applovin.sdk.AppLovinService'),(10,'com.google.android.c2dm.intent.RECEIVE'),(8,'com.google.android.c2dm.intent.REGISTRATION'),(5,'com.jiubang.goscreenlock.theme');
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
INSERT INTO `Applications` VALUES (1,'com.games.apps.ww4shooterworldultimatewarfungames',3),(2,'com.chicagoberasgolocker.theme',4),(3,'com.free_live_wallpapers_hd.racing_cars_lwp',1),(4,'com.driftwood.wallpaper.wombat',8),(5,'in.droidplay.tajmahal',3),(6,'com.boxitsoft.puzzlebubble',13),(7,'com.hyperkani.bubbles',26);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'com.chicagoberasgolocker.theme');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.games.apps.ww4shooterworldultimatewarfungames.FlashGameActivity'),(2,1,'com.apperhand.device.android.EULAActivity'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.sellaring.sdk.PostCallScreenActivity'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,1,'com.sellaring.sdk.AlarmReceiver'),(7,1,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(8,1,'com.sellaring.sdk.PhoneStateReceiver'),(9,2,'com.chicagoberasgolocker.theme.GOLockerInstallDialog'),(10,2,'com.airpush.android.PushAds'),(11,2,'com.chicagoberasgolocker.theme.C2DMService'),(12,2,'com.chicagoberasgolocker.theme.GoDownloadServiceervice'),(13,2,'com.airpush.android.PushService'),(14,3,'com.free_live_wallpapers_hd.racing_cars_lwp.Preferences'),(15,4,'com.driftwood.wallpaper.wombat.OpenActivity'),(16,3,'com.airpush.android.PushAds'),(17,3,'com.apperhand.device.android.AndroidSDKProvider'),(18,2,'com.apperhand.device.android.AndroidSDKProvider'),(19,4,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(20,3,'com.free_live_wallpapers_hd.racing_cars_lwp.Wallpaper'),(21,2,'com.chicagoberasgolocker.theme.C2DMRegistrationReceiver'),(22,4,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(23,4,'com.driftwood.wallpaper.wombat.WallpaperSettings'),(24,4,'com.driftwood.wallpaper.wombat.Wallpaper'),(25,3,'com.airpush.android.PushService'),(26,2,'com.chicagoberasgolocker.theme.C2DMMessageReceiver'),(27,4,'com.apperhand.device.android.AndroidSDKProvider'),(28,3,'com.airpush.android.UserDetailsReceiver'),(29,3,'com.airpush.android.MessageReceiver'),(30,2,'com.airpush.android.UserDetailsReceiver'),(31,3,'com.airpush.android.DeliveryReceiver'),(32,2,'com.airpush.android.MessageReceiver'),(33,3,'com.free_live_wallpapers_hd.racing_cars_lwp.BootReceiver'),(34,2,'com.airpush.android.DeliveryReceiver'),(35,2,'com.chicagoberasgolocker.theme.BootReceiver'),(36,3,'com.free_live_wallpapers_hd.racing_cars_lwp.boot'),(37,3,'com.Leadbolt.AdNotification'),(38,5,'in.droidplay.tajmahal.Taj'),(39,5,'in.droidplay.tajmahal.PrefActivity'),(40,5,'com.airpush.android.PushAds'),(41,5,'com.apperhand.device.android.AndroidSDKProvider'),(42,5,'in.droidplay.tajmahal.Wallpaper'),(43,6,'com.boxitsoft.puzzlebubble.Main'),(44,5,'com.applovin.sdk.AppLovinService'),(45,6,'com.airpush.android.PushAds'),(46,6,'com.airpush.android.PushService'),(47,5,'com.airpush.android.PushService'),(48,6,'com.apperhand.device.android.AndroidSDKProvider'),(49,5,'com.applovin.sdk.AppLovinBootReceiver'),(50,6,'com.boxitsoft.ServiceTemplate'),(51,6,'com.airpush.android.UserDetailsReceiver'),(52,5,'com.airpush.android.UserDetailsReceiver'),(53,6,'com.airpush.android.MessageReceiver'),(54,5,'com.airpush.android.MessageReceiver'),(55,6,'com.airpush.android.DeliveryReceiver'),(56,5,'com.airpush.android.DeliveryReceiver'),(57,6,'com.Leadbolt.AdNotification'),(58,5,'in.droidplay.tajmahal.BootReceiver'),(59,6,'com.boxitsoft.BootReceiver'),(60,5,'in.droidplay.tajmahal.boot'),(61,6,'com.boxitsoft.MyStartServiceReceiver'),(62,5,'com.Leadbolt.AdNotification'),(63,7,'com.hyperkani.bubbles.MobflowUtil'),(64,7,'com.hyperkani.bubbles.BubblesAndroid'),(65,7,'com.apperhand.device.android.AndroidSDKProvider'),(66,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(67,1,'com.apperhand.device.android.a.e'),(68,1,'com.games.apps.ww4shooterworldultimatewarfungames.FlashGameActivity$1'),(69,1,'com.apperhand.device.android.a.b'),(70,1,'com.apperhand.device.android.a.c'),(71,4,'com.apperhand.device.android.a.e'),(72,4,'com.pontiflex.mobile.webview.sdk.AdManager'),(73,4,'com.apperhand.device.android.a.a'),(74,4,'com.driftwood.wallpaper.wombat.WallpaperSettings$1'),(75,7,'com.apperhand.device.android.a.a'),(76,7,'com.apperhand.device.android.a.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'USER_AGENT'),(2,3,'com.google.ads.AdOpener'),(3,5,'FIRST_RUN'),(4,4,'securityKey'),(5,6,'appRequestParams'),(6,3,'com.google.circles.platform.result.extra.ACTION'),(7,5,'DEVELOPER_ID'),(8,3,'params'),(9,5,'APPLICATION_ID'),(10,6,'appIdentificator'),(11,5,'eulaAcceptDetails'),(12,3,'action'),(13,5,'SERVICE_MODE'),(14,4,'pcsUrl'),(15,3,'com.google.circles.platform.result.extra.CONFIRMATION'),(16,8,'android.intent.extra.PHONE_NUMBER'),(17,4,'contentID'),(18,5,'M_SERVER_URL'),(19,27,'USER_AGENT'),(20,27,'FIRST_RUN'),(21,27,'APPLICATION_ID'),(22,27,'M_SERVER_URL'),(23,27,'DEVELOPER_ID'),(24,65,'DEVELOPER_ID'),(25,65,'M_SERVER_URL'),(26,65,'FIRST_RUN'),(27,65,'APPLICATION_ID'),(28,64,'returnFromWebView'),(29,65,'SERVICE_MODE'),(30,65,'permanent'),(31,65,'USER_AGENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',1,32,NULL),(21,22,'a',0,NULL,NULL),(22,21,'r',1,33,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',1,32,NULL),(25,25,'s',1,NULL,NULL),(26,26,'r',1,33,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',1,32,NULL),(43,43,'a',1,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,1),(4,4,5),(5,5,5),(6,6,4),(7,7,5),(8,8,5),(9,9,3),(10,10,3),(11,11,5),(12,12,1),(13,13,5),(14,14,27),(15,15,23),(16,16,27),(17,17,27),(18,18,27),(19,19,23),(20,20,23),(21,21,27),(22,22,15),(23,23,24),(24,24,65),(25,25,65),(26,26,65),(27,27,64),(28,28,65),(29,29,64),(30,30,65),(31,31,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,67,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(2,68,'<com.games.apps.ww4shooterworldultimatewarfungames.FlashGameActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(3,5,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(4,69,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(5,69,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(6,4,'<com.sellaring.sdk.PostCallScreenActivity: void closeAndGoToHome()>',7,'a',NULL),(7,69,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(8,67,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(9,3,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(10,3,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(11,70,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(12,5,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',60,'a',NULL),(13,67,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(14,71,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(15,72,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(16,71,'<com.apperhand.device.android.a.e: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(17,73,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(18,73,'<com.apperhand.device.android.a.a: java.util.List d()>',13,'p',NULL),(19,74,'<com.driftwood.wallpaper.wombat.WallpaperSettings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(20,23,'<com.driftwood.wallpaper.wombat.WallpaperSettings: void showMortalWombat(android.view.View)>',6,'a',NULL),(21,71,'<com.apperhand.device.android.a.e: java.util.List a()>',13,'p',NULL),(22,15,'<com.driftwood.wallpaper.wombat.OpenActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(23,27,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',21,'s',NULL),(24,75,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(25,76,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(26,75,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(27,64,'<com.hyperkani.bubbles.BubblesAndroid: void goToURL(java.lang.String)>',5,'a',NULL),(28,76,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(29,65,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(30,76,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(31,75,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,2,17),(3,5,1),(4,6,17),(5,7,18),(6,8,18),(7,9,17),(8,11,19),(9,12,19),(10,15,16),(11,16,17),(12,17,17),(13,18,20),(14,20,17),(15,21,17),(16,22,17),(17,23,17),(18,24,16);
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
INSERT INTO `ICategories` VALUES (1,5,4),(2,10,1);
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
INSERT INTO `IClasses` VALUES (1,3,'com/apperhand/device/android/AndroidSDKProvider'),(2,4,'com/apperhand/device/android/AndroidSDKProvider'),(3,10,'com.google.android.apps.circles.platform.PlusOneActivity'),(4,13,'com/apperhand/device/android/EULAActivity'),(5,14,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(6,19,'com/apperhand/device/android/AndroidSDKProvider'),(7,25,'com/apperhand/device/android/AndroidSDKProvider'),(8,26,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,6,6),(3,7,7),(4,8,8),(5,9,9),(6,16,15),(7,17,16),(8,20,22),(9,21,23),(10,22,24),(11,23,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,3,'eulaAcceptDetails'),(5,3,'M_SERVER_URL'),(6,3,'USER_AGENT'),(7,3,'SERVICE_MODE'),(8,3,'FIRST_RUN'),(9,3,'DEVELOPER_ID'),(10,3,'APPLICATION_ID'),(11,4,'M_SERVER_URL'),(12,4,'USER_AGENT'),(13,4,'SERVICE_MODE'),(14,4,'FIRST_RUN'),(15,4,'DEVELOPER_ID'),(16,4,'APPLICATION_ID'),(17,10,'com.google.circles.platform.intent.extra.ACTION'),(18,10,'(.*)'),(19,10,'com.google.circles.platform.intent.extra.ENTITY'),(20,10,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(21,12,'footerHTML'),(22,12,'bodyHTML'),(23,15,'android.intent.extra.shortcut.NAME'),(24,15,'android.intent.extra.shortcut.ICON'),(25,15,'android.intent.extra.shortcut.INTENT'),(26,19,'M_SERVER_URL'),(27,19,'USER_AGENT'),(28,19,'SERVICE_MODE'),(29,19,'FIRST_RUN'),(30,19,'DEVELOPER_ID'),(31,19,'APPLICATION_ID'),(32,24,'android.intent.extra.shortcut.NAME'),(33,24,'android.intent.extra.shortcut.ICON'),(34,24,'android.intent.extra.shortcut.INTENT'),(35,25,'M_SERVER_URL'),(36,25,'USER_AGENT'),(37,25,'SERVICE_MODE'),(38,25,'FIRST_RUN'),(39,25,'DEVELOPER_ID'),(40,25,'APPLICATION_ID'),(41,26,'M_SERVER_URL'),(42,26,'USER_AGENT'),(43,26,'SERVICE_MODE'),(44,26,'FIRST_RUN'),(45,26,'DEVELOPER_ID'),(46,26,'(.*)'),(47,26,'APPLICATION_ID');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,3),(5,4,1),(6,5,5),(7,6,1),(8,7,6),(9,8,7),(10,9,8),(11,10,7),(12,11,9),(13,12,10),(14,13,2),(15,14,2),(16,15,2),(17,16,1),(18,17,7),(19,18,1),(20,19,11),(21,20,12),(22,21,13),(23,22,2),(24,23,2),(25,24,2),(26,25,2),(27,26,1),(28,27,15),(29,27,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,2),(3,5,2),(4,6,2),(5,9,3),(6,12,3),(7,13,4),(8,14,4),(9,16,1),(10,18,1),(11,23,4),(12,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,9,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.games.apps.ww4shooterworldultimatewarfungames'),(2,4,'com.games.apps.ww4shooterworldultimatewarfungames'),(3,10,'com.google.android.apps.plus'),(4,11,'com.games.apps.ww4shooterworldultimatewarfungames'),(5,12,'com.games.apps.ww4shooterworldultimatewarfungames'),(6,13,'com.games.apps.ww4shooterworldultimatewarfungames'),(7,14,'com.driftwood.wallpaper.wombat'),(8,19,'com.driftwood.wallpaper.wombat'),(9,25,'com.hyperkani.bubbles'),(10,26,'com.hyperkani.bubbles');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,9,0),(6,15,0),(7,13,0),(8,20,0),(9,22,0),(10,24,0),(11,25,0),(12,26,0),(13,33,0),(14,35,0),(15,36,0),(16,38,0),(17,42,0),(18,43,0),(19,44,0),(20,46,0),(21,47,0),(22,49,0),(23,58,0),(24,59,0),(25,60,0),(26,64,0),(27,66,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,3,0,0),(5,6,1,0),(6,9,1,0),(7,9,1,0),(8,9,1,0),(9,9,1,0),(10,10,0,0),(11,11,1,0),(12,11,1,0),(13,12,0,0),(14,15,0,0),(15,17,1,0),(16,19,1,0),(17,20,1,0),(18,22,1,0),(19,23,0,0),(20,27,1,0),(21,27,1,0),(22,27,1,0),(23,27,1,0),(24,28,1,0),(25,29,0,0),(26,29,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,9,2,NULL),(2,8,9,2,NULL),(3,5,9,2,NULL),(4,18,9,2,NULL),(5,6,13,2,NULL),(6,8,13,2,NULL),(7,5,13,2,NULL),(8,18,13,2,NULL),(9,6,22,2,NULL),(10,8,22,2,NULL),(11,5,22,2,NULL),(12,18,22,2,NULL),(13,6,26,2,NULL),(14,8,26,2,NULL),(15,5,26,2,NULL),(16,18,26,2,NULL),(17,6,35,2,NULL),(18,8,35,2,NULL),(19,5,35,2,NULL),(20,18,35,2,NULL),(21,18,1,2,NULL),(22,6,15,2,NULL),(23,8,15,2,NULL),(24,5,15,2,NULL),(25,18,7,2,NULL),(26,18,8,2,NULL),(27,18,66,2,NULL),(28,18,20,2,NULL),(29,18,25,2,NULL),(30,18,33,2,NULL),(31,18,36,2,NULL),(32,18,24,2,NULL),(33,18,38,2,NULL),(34,18,42,2,NULL),(35,18,44,2,NULL),(36,18,47,2,NULL),(37,18,49,2,NULL),(38,18,58,2,NULL),(39,18,60,2,NULL),(40,18,43,2,NULL),(41,18,46,2,NULL),(42,18,59,2,NULL),(43,18,64,2,NULL),(44,6,24,2,NULL),(45,8,24,2,NULL),(46,5,24,2,NULL),(47,19,5,2,NULL),(48,19,17,2,NULL),(49,19,18,2,NULL),(50,19,27,2,NULL),(51,19,41,2,NULL),(52,19,48,2,NULL),(53,19,65,2,NULL),(54,6,20,2,NULL),(55,8,20,2,NULL),(56,5,20,2,NULL),(57,6,25,2,NULL),(58,8,25,2,NULL),(59,5,25,2,NULL),(60,6,33,2,NULL),(61,8,33,2,NULL),(62,5,33,2,NULL),(63,6,36,2,NULL),(64,8,36,2,NULL),(65,5,36,2,NULL),(66,6,38,2,NULL),(67,8,38,2,NULL),(68,5,38,2,NULL),(69,6,42,2,NULL),(70,8,42,2,NULL),(71,5,42,2,NULL),(72,6,44,2,NULL),(73,8,44,2,NULL),(74,5,44,2,NULL),(75,6,47,2,NULL),(76,8,47,2,NULL),(77,5,47,2,NULL),(78,6,49,2,NULL),(79,8,49,2,NULL),(80,5,49,2,NULL),(81,6,58,2,NULL),(82,8,58,2,NULL),(83,5,58,2,NULL),(84,6,60,2,NULL),(85,8,60,2,NULL),(86,5,60,2,NULL),(87,6,43,2,NULL),(88,8,43,2,NULL),(89,5,43,2,NULL),(90,6,46,2,NULL),(91,8,46,2,NULL),(92,5,46,2,NULL),(93,6,59,2,NULL),(94,8,59,2,NULL),(95,5,59,2,NULL),(96,6,1,2,NULL),(97,8,1,2,NULL),(98,5,1,2,NULL),(99,6,7,2,NULL),(100,8,7,2,NULL),(101,6,8,2,NULL),(102,8,8,2,NULL),(103,6,66,2,NULL),(104,8,66,2,NULL),(105,6,64,2,NULL),(106,8,64,2,NULL),(107,5,7,2,NULL),(108,5,8,2,NULL),(109,5,66,2,NULL),(110,5,64,2,NULL),(111,3,5,2,NULL),(112,3,17,2,NULL),(113,3,18,2,NULL),(114,3,27,2,NULL),(115,3,41,2,NULL),(116,3,48,2,NULL),(117,3,65,2,NULL),(118,4,5,2,NULL),(119,4,17,2,NULL),(120,4,18,2,NULL),(121,4,27,2,NULL),(122,4,41,2,NULL),(123,4,48,2,NULL),(124,4,65,2,NULL),(125,13,2,2,NULL),(126,25,5,2,NULL),(127,25,17,2,NULL),(128,25,18,2,NULL),(129,25,27,2,NULL),(130,25,41,2,NULL),(131,25,48,2,NULL),(132,25,65,2,NULL),(133,26,5,2,NULL),(134,26,17,2,NULL),(135,26,18,2,NULL),(136,26,27,2,NULL),(137,26,41,2,NULL),(138,26,48,2,NULL),(139,26,65,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(16,'android.permission.ACCESS_MOCK_LOCATION'),(18,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(7,'android.permission.CALL_PHONE'),(14,'android.permission.CONTROL_LOCATION_UPDATES'),(35,'android.permission.DEVICE_POWER'),(8,'android.permission.GET_ACCOUNTS'),(22,'android.permission.INTERNET'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.SET_ORIENTATION'),(26,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(19,'com.android.launcher.permission.INSTALL_SHORTCUT'),(27,'com.android.launcher.permission.READ_SETTINGS'),(21,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(30,'com.chicagoberasgolocker.theme.permission.C2D_MESSAGE'),(23,'com.fede.launcher.permission.READ_SETTINGS'),(31,'com.google.android.c2dm.permission.RECEIVE'),(33,'com.google.android.c2dm.permission.SEND'),(20,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(28,'com.motorola.launcher.permission.READ_SETTINGS'),(25,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (30,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.games.apps.ww4shooterworldultimatewarfungames',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=pub:\"Jason Allen\"',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.driftwood.wallpaper.wombat.full',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'https://market.android.com/details?id=com.hyperkani.marblemaze',NULL,NULL,NULL),(23,NULL,NULL,'https://market.android.com/details?id=com.hyperkani.village',NULL,NULL,NULL),(24,NULL,NULL,'https://market.android.com/details?id=com.hyperkani.hyppely',NULL,NULL,NULL),(25,NULL,NULL,'https://market.android.com/details?id=com.hyperkani.bubbles_noads',NULL,NULL,NULL),(26,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,2),(2,5,3),(3,7,4),(4,8,5),(5,13,10),(6,13,11),(7,14,12),(8,16,13),(9,18,14),(10,21,17),(11,24,18),(12,25,19),(13,25,20),(14,26,21),(15,30,26),(16,31,27);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,27),(27,1,26),(28,1,29),(29,1,28),(30,2,1),(31,2,2),(32,2,3),(33,2,4),(34,2,5),(35,2,6),(36,2,9),(37,2,10),(38,2,11),(39,2,12),(40,2,13),(41,2,15),(42,2,19),(43,2,18),(44,2,21),(45,2,20),(46,2,23),(47,2,22),(48,2,25),(49,2,27),(50,2,26),(51,3,1),(52,2,29),(53,3,2),(54,2,28),(55,3,3),(56,2,31),(57,3,4),(58,2,30),(59,3,5),(60,3,6),(61,3,9),(62,3,10),(63,4,4),(64,3,11),(65,4,5),(66,3,12),(67,4,8),(68,3,15),(69,4,9),(70,3,17),(71,4,11),(72,3,19),(73,4,12),(74,3,18),(75,4,19),(76,3,21),(77,4,18),(78,3,20),(79,4,21),(80,3,23),(81,4,20),(82,3,22),(83,4,22),(84,3,25),(85,3,26),(86,4,27),(87,3,29),(88,4,29),(89,3,28),(90,4,28),(91,5,1),(92,5,2),(93,5,3),(94,5,4),(95,5,5),(96,5,6),(97,5,9),(98,5,10),(99,5,11),(100,5,12),(101,5,15),(102,5,17),(103,5,19),(104,6,34),(105,5,18),(106,6,35),(107,5,21),(108,6,1),(109,5,20),(110,6,3),(111,5,23),(112,6,4),(113,5,22),(114,6,5),(115,5,25),(116,6,6),(117,5,27),(118,6,9),(119,5,26),(120,6,10),(121,5,29),(122,6,11),(123,5,28),(124,6,12),(125,6,13),(126,6,15),(127,6,17),(128,6,19),(129,6,18),(130,6,21),(131,6,20),(132,6,23),(133,6,22),(134,6,25),(135,6,27),(136,6,29),(137,6,28),(138,7,1),(139,7,3),(140,7,4),(141,7,5),(142,7,9),(143,7,11),(144,7,12),(145,7,15),(146,7,17),(147,7,19),(148,7,18),(149,7,21),(150,7,20),(151,7,23),(152,7,22),(153,7,25),(154,7,27),(155,7,26),(156,7,29),(157,7,28);
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

-- Dump completed on 2015-10-12  3:31:21
