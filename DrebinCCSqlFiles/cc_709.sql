-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_709
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(23,'NULL-CONSTANT'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.EDIT'),(4,'android.intent.action.MAIN'),(22,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(17,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SET_WALLPAPER'),(18,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(25,'android.provider.MediaStore.RECORD_SOUND'),(15,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(1,'android.service.wallpaper.WallpaperService'),(8,'com.airpush.android.PushServiceStart46673'),(2,'com.airpush.android.PushServiceStart52821'),(6,'com.airpush.android.PushServiceStart56632'),(11,'com.airpush.android.PushServiceStart57448'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(7,'com.android.vending.INSTALL_REFERRER'),(20,'com.appbrain.CHECK'),(21,'com.eleganttools.elegantringtonemaker.newplayer.MUSIC_STATUS'),(19,'com.eleganttools.elegantringtonemaker.player.StreamService.MUSIC_GUI_STATUS'),(24,'com.flurry.android.ACTION_CATALOG'),(3,'com.jiubang.goscreenlock.theme'),(12,'com.senddroid.AdServicecom.dessertapps.app.xperiaplaywallpapers');
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
INSERT INTO `Applications` VALUES (1,'com.free_live_wallpapers_hd.christiano_ronaldo',1),(2,'com.macte.JigsawPuzzle.Tales',15),(3,'com.free_apps.golocker_iphone4_mac',3),(4,'com.reactor.livewallpaper.fallingsakura',30),(5,'com.boxitsoft.superhockeyglow1',6),(6,'com.eleganttools.elegantringtonemaker',10),(7,'com.dessertapps.app.xperiaplaywallpapers',101);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.free_live_wallpapers_hd.christiano_ronaldo.Preferences'),(2,1,'com.airpush.android.PushAds'),(3,1,'com.apperhand.device.android.AndroidSDKProvider'),(4,1,'com.free_live_wallpapers_hd.christiano_ronaldo.Wallpaper'),(5,1,'com.airpush.android.PushService'),(6,3,'com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog'),(7,1,'com.airpush.android.UserDetailsReceiver'),(8,1,'com.airpush.android.MessageReceiver'),(9,1,'com.airpush.android.DeliveryReceiver'),(10,1,'com.free_live_wallpapers_hd.christiano_ronaldo.BootReceiver'),(11,3,'com.airpush.android.PushAds'),(12,1,'com.free_live_wallpapers_hd.christiano_ronaldo.boot'),(13,3,'com.free_apps.golocker_iphone4_mac.srv'),(14,3,'com.free_apps.golocker_iphone4_mac.GoDownloadServiceervice'),(15,1,'com.Leadbolt.AdNotification'),(16,3,'com.airpush.android.PushService'),(17,4,'com.reactor.livewallpaper.fallingsakura.SakuraSetting'),(18,4,'com.reactor.livewallpaper.fallingsakura.PopActivity'),(19,4,'com.reactor.livewallpaper.fallingsakura.HowToActivity'),(20,3,'com.apperhand.device.android.AndroidSDKProvider'),(21,3,'com.free_apps.golocker_iphone4_mac.rec'),(22,4,'com.google.ads.AdActivity'),(23,3,'com.airpush.android.UserDetailsReceiver'),(24,4,'com.admob.android.ads.AdMobActivity'),(25,3,'com.airpush.android.MessageReceiver'),(26,4,'com.reactor.livewallpaper.fallingsakura.SakuraWallpaperService'),(27,3,'com.airpush.android.DeliveryReceiver'),(28,3,'com.free_apps.golocker_iphone4_mac.bReceiver'),(29,4,'com.reactor.livewallpaper.fallingsakura.HowToProvider'),(30,4,'com.admob.android.ads.analytics.InstallReceiver'),(31,3,'com.Leadbolt.AdNotification'),(32,5,'com.boxitsoft.superhockeyglow1.Main'),(33,5,'com.airpush.android.PushAds'),(34,5,'com.airpush.android.PushService'),(35,5,'com.apperhand.device.android.AndroidSDKProvider'),(36,5,'com.airpush.android.UserDetailsReceiver'),(37,5,'com.airpush.android.MessageReceiver'),(38,5,'com.airpush.android.DeliveryReceiver'),(39,5,'com.Leadbolt.AdNotification'),(40,5,'com.boxitsoft.BootReceiver'),(41,5,'com.google.android.apps.analytics.AnalyticsReceiver'),(42,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity'),(43,6,'com.eleganttools.elegantringtonemaker.Library'),(44,6,'com.eleganttools.elegantringtonemaker.ElegantLibrary'),(45,6,'com.eleganttools.elegantringtonemaker.SelectMusic'),(46,6,'com.eleganttools.elegantringtonemaker.musicSearch.SearchMusic'),(47,6,'com.eleganttools.elegantringtonemaker.editor.EditActivity'),(48,6,'com.eleganttools.elegantringtonemaker.editor.ChooseContactActivity'),(49,6,'com.eleganttools.elegantringtonemaker.recorder.SoundRecorder'),(50,6,'com.appbrain.AppBrainActivity'),(51,6,'com.eleganttools.elegantringtonemaker.musicSearch.StreamService'),(52,6,'com.eleganttools.elegantringtonemaker.musicSearch.FileDownloadService'),(53,6,'com.eleganttools.elegantringtonemaker.musicSearch.DownloadService'),(54,6,'com.apperhand.device.android.AndroidSDKProvider'),(55,6,'com.appbrain.AppBrainService'),(56,6,'com.Leadbolt.AdNotification'),(57,6,'com.eleganttools.elegantringtonemaker.BootReceiver'),(58,6,'com.appbrain.ReferrerReceiver'),(59,7,'com.dessertapps.app.xperiaplaywallpapers.MAINXperiaplayWallpapersActivity'),(60,7,'com.dessertapps.app.xperiaplaywallpapers.XperiaplayWallpapersActivity'),(61,7,'com.dessertapps.app.xperiaplaywallpapers.XperiaplayGalleryViewerActivity'),(62,7,'com.google.ads.AdActivity'),(63,7,'com.inmobi.androidsdk.IMBrowserActivity'),(64,7,'com.mobfox.sdk.InAppWebView'),(65,7,'com.adfonic.android.AdfonicActivity'),(66,7,'com.airpush.android.PushAds'),(67,7,'com.airpush.android.PushService'),(68,7,'com.senddroid.AdService'),(69,7,'com.apperhand.device.android.AndroidSDKProvider'),(70,7,'com.airpush.android.UserDetailsReceiver'),(71,7,'com.airpush.android.MessageReceiver'),(72,7,'com.airpush.android.DeliveryReceiver'),(73,7,'com.dessertapps.app.xperiaplaywallpapers.BootReceiver'),(74,4,'com.apperhand.device.android.a.b'),(75,4,'com.reactor.livewallpaper.fallingsakura.PopActivity$1'),(76,4,'com.reactor.livewallpaper.fallingsakura.SakuraSetting$2'),(77,4,'com.reactor.livewallpaper.fallingsakura.PopActivity$5'),(78,4,'com.apperhand.device.android.a.e'),(79,4,'com.reactor.livewallpaper.fallingsakura.PopActivity$3'),(80,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(81,6,'com.appbrain.a.a'),(82,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$3'),(83,6,'com.apperhand.device.android.a.d'),(84,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$1'),(85,6,'com.Leadbolt.AdController'),(86,6,'cmn.j'),(87,6,'com.eleganttools.elegantringtonemaker.musicSearch.StreamPlayerMediaStatusReceiver'),(88,6,'com.eleganttools.elegantringtonemaker.musicSearch.StreamService$1'),(89,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$5'),(90,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$4'),(91,6,'com.apperhand.device.android.a.b'),(92,6,'com.appbrain.a.x'),(93,6,'com.eleganttools.elegantringtonemaker.SelectMusic$4'),(94,6,'com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$2'),(95,6,'com.eleganttools.elegantringtonemaker.musicSearch.StreamService$4'),(96,6,'com.eleganttools.elegantringtonemaker.musicSearch.StreamService$5'),(97,6,'com.flurry.android.ao');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,24,'u'),(2,24,'su'),(3,22,'com.google.circles.platform.result.extra.CONFIRMATION'),(4,29,'FIRST_RUN'),(5,24,'t'),(6,24,'msm'),(7,24,'ap'),(8,24,'c'),(9,24,'mi'),(10,29,'SERVICE_MODE'),(11,29,'permanent'),(12,29,'USER_AGENT'),(13,22,'params'),(14,29,'APPLICATION_ID'),(15,30,'ADMOB_PUBLISHER_ID'),(16,30,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(17,30,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(18,22,'com.google.circles.platform.result.extra.ACTION'),(19,24,'tr'),(20,24,'s'),(21,30,'referrer'),(22,24,'nosk'),(23,22,'action'),(24,24,'int'),(25,24,'json'),(26,24,'$'),(27,29,'PACKAGE_NAME'),(28,24,'rd'),(29,24,'ru'),(30,24,'sin'),(31,24,'o'),(32,24,'oi'),(33,24,'cs'),(34,24,'skd'),(35,24,'si'),(36,24,'a'),(37,22,'com.google.ads.AdOpener'),(38,24,'b'),(39,24,'p'),(40,24,'sd'),(41,30,'(.*)'),(42,24,'sc'),(43,24,'ad'),(44,29,'M_SERVER_URL'),(45,24,'or'),(46,24,'sku'),(47,24,'cbo'),(48,29,'DEVELOPER_ID'),(49,24,'au'),(50,54,'USER_AGENT'),(51,58,'(.*)'),(52,49,'sample_interrupted'),(53,49,'sample_path'),(54,49,'recorder_state'),(55,50,'activity'),(56,54,'FIRST_RUN'),(57,55,'event'),(58,47,'was_get_content_intent'),(59,54,'DEVELOPER_ID'),(60,56,'sectionid'),(61,58,'referrer'),(62,50,'maybe'),(63,54,'M_SERVER_URL'),(64,47,'songName'),(65,54,'SERVICE_MODE'),(66,47,'fileName'),(67,55,'key'),(68,49,'sample_length'),(69,45,'listMode'),(70,47,'privacy'),(71,54,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',1,50,NULL),(5,5,'s',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,16,'s',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'s',1,50,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',1,NULL,NULL),(68,68,'s',1,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,80,'r',1,NULL,NULL),(75,86,'r',1,NULL,NULL),(76,56,'r',1,NULL,NULL),(77,87,'r',1,NULL,NULL),(78,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,16),(2,2,22),(3,3,16),(4,4,29),(5,5,16),(6,6,18),(7,7,16),(8,8,18),(9,9,19),(10,9,16),(11,10,29),(12,11,29),(13,12,22),(14,13,16),(15,14,18),(16,15,19),(17,16,29),(18,17,29),(19,18,29),(20,19,42),(21,20,47),(22,20,49),(23,21,47),(24,21,42),(25,22,54),(26,23,42),(27,23,47),(28,24,47),(29,24,49),(30,25,42),(31,25,47),(32,25,56),(33,25,57),(34,26,49),(35,26,47),(36,27,47),(37,27,49),(38,28,45),(39,28,47),(40,29,42),(41,29,47),(42,30,46),(43,31,47),(44,31,42),(45,32,54),(46,33,50),(47,33,55),(48,33,58),(49,33,42),(50,34,45),(51,34,47),(52,35,42),(53,35,47),(54,36,48),(55,37,54),(56,38,54),(57,39,51),(58,40,46),(59,41,46),(60,42,42),(61,42,57),(62,42,47),(63,42,56),(64,43,55),(65,44,49),(66,44,47),(67,45,44),(68,45,47),(69,46,47),(70,46,49),(71,47,42),(72,48,54),(73,49,47),(74,50,51),(75,51,47),(76,51,49),(77,52,54),(78,53,47),(79,53,50),(80,54,47),(81,55,47),(82,56,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,17,'<com.reactor.livewallpaper.fallingsakura.SakuraSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',35,'a',NULL),(2,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(3,17,'<com.reactor.livewallpaper.fallingsakura.SakuraSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',10,'a',NULL),(4,74,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,17,'<com.reactor.livewallpaper.fallingsakura.SakuraSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(6,75,'<com.reactor.livewallpaper.fallingsakura.PopActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(7,76,'<com.reactor.livewallpaper.fallingsakura.SakuraSetting$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(8,77,'<com.reactor.livewallpaper.fallingsakura.PopActivity$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,29,'<com.reactor.livewallpaper.fallingsakura.HowToProvider: void a(android.content.Context,int,android.os.Bundle)>',49,'s',NULL),(10,78,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(11,74,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(12,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(13,17,'<com.reactor.livewallpaper.fallingsakura.SakuraSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(14,79,'<com.reactor.livewallpaper.fallingsakura.PopActivity$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(15,19,'<com.reactor.livewallpaper.fallingsakura.HowToActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(16,78,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(17,74,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(18,78,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(19,81,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.a.e)>',8,'a',NULL),(20,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void b()>',86,'p',0),(21,82,'<com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$3: void onClick(android.view.View)>',6,'a',NULL),(22,83,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(23,84,'<com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(24,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: android.database.Cursor a(android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[])>',8,'p',0),(25,85,'<com.Leadbolt.AdController: void displayIcon()>',91,'p',NULL),(26,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void b()>',47,'p',NULL),(27,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void b()>',97,'p',0),(28,45,'<com.eleganttools.elegantringtonemaker.SelectMusic: void b()>',31,'p',NULL),(29,89,'<com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$5: void onClick(android.view.View)>',6,'a',NULL),(30,46,'<com.eleganttools.elegantringtonemaker.musicSearch.SearchMusic: void onCreate(android.os.Bundle)>',10,'s',NULL),(31,90,'<com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$4: void onClick(android.view.View)>',7,'a',NULL),(32,91,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(33,92,'<com.appbrain.a.x: void a(android.content.Context)>',4,'s',NULL),(34,93,'<com.eleganttools.elegantringtonemaker.SelectMusic$4: void onClick(android.view.View)>',28,'a',NULL),(35,94,'<com.eleganttools.elegantringtonemaker.ElegantRingtoneMakerActivity$2: void onClick(android.view.View)>',6,'a',NULL),(36,48,'<com.eleganttools.elegantringtonemaker.editor.ChooseContactActivity: void a(com.eleganttools.elegantringtonemaker.editor.ChooseContactActivity)>',15,'p',NULL),(37,91,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(38,83,'<com.apperhand.device.android.a.d: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(39,95,'<com.eleganttools.elegantringtonemaker.musicSearch.StreamService$4: void onBufferingUpdate(android.media.MediaPlayer,int)>',8,'r',NULL),(40,46,'<com.eleganttools.elegantringtonemaker.musicSearch.SearchMusic: void onCreate(android.os.Bundle)>',15,'s',NULL),(41,46,'<com.eleganttools.elegantringtonemaker.musicSearch.SearchMusic: void onCreate(android.os.Bundle)>',24,'s',NULL),(42,85,'<com.Leadbolt.AdController: void displayIcon()>',64,'r',NULL),(43,92,'<com.appbrain.a.x: void a(android.content.Context,java.lang.String,com.appbrain.e.t)>',9,'s',NULL),(44,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void onClick(android.view.View)>',22,'a',NULL),(45,44,'<com.eleganttools.elegantringtonemaker.ElegantLibrary: android.net.Uri a(com.eleganttools.elegantringtonemaker.ElegantLibrary,java.io.File,int)>',24,'p',NULL),(46,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void b()>',100,'r',NULL),(47,54,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context)>',45,'s',NULL),(48,91,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(49,47,'<com.eleganttools.elegantringtonemaker.editor.EditActivity: void onDestroy()>',22,'p',NULL),(50,96,'<com.eleganttools.elegantringtonemaker.musicSearch.StreamService$5: void onCompletion(android.media.MediaPlayer)>',6,'r',NULL),(51,49,'<com.eleganttools.elegantringtonemaker.recorder.SoundRecorder: void b()>',69,'p',0),(52,83,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(53,81,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.e.f,com.appbrain.a.e)>',10,'a',NULL),(54,97,'<com.flurry.android.ao: void onClick(android.view.View)>',27,'a',NULL),(55,47,'<com.eleganttools.elegantringtonemaker.editor.EditActivity: void onCreate(android.os.Bundle)>',26,'a',NULL),(56,46,'<com.eleganttools.elegantringtonemaker.musicSearch.SearchMusic: void onCreate(android.os.Bundle)>',19,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,1,13),(2,3,13),(3,4,13),(4,5,13),(5,6,13),(6,7,13),(7,10,13),(8,11,14),(9,12,14),(10,13,13),(11,14,13),(12,15,13),(13,16,15),(14,17,16),(15,22,13),(16,25,20),(17,28,16),(18,29,21),(19,32,16),(20,33,16),(21,34,16),(22,37,22),(23,39,21),(24,42,23),(25,43,23),(26,44,24),(27,45,24),(28,46,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,3),(2,42,4),(3,43,4),(4,44,4),(5,45,4);
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
INSERT INTO `IClasses` VALUES (1,2,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,8,'com/reactor/livewallpaper/fallingsakura/HowToProvider'),(3,9,'com/reactor/livewallpaper/fallingsakura/HowToProvider'),(4,18,'com/appbrain/AppBrainActivity'),(5,19,'com/appbrain/AppBrainActivity'),(6,20,'com/eleganttools/elegantringtonemaker/Library'),(7,21,'com/eleganttools/elegantringtonemaker/musicSearch/SearchMusic'),(8,23,'com/eleganttools/elegantringtonemaker/musicSearch/StreamService'),(9,24,'com/eleganttools/elegantringtonemaker/SelectMusic'),(10,25,'com/appbrain/AppBrainService'),(11,26,'com/eleganttools/elegantringtonemaker/editor/EditActivity'),(12,27,'com/eleganttools/elegantringtonemaker/recorder/SoundRecorder'),(13,30,'com/eleganttools/elegantringtonemaker/musicSearch/StreamService'),(14,31,'com/eleganttools/elegantringtonemaker/musicSearch/DownloadService'),(15,35,'com/appbrain/AppBrainService'),(16,36,'com/eleganttools/elegantringtonemaker/editor/EditActivity'),(17,38,'com/apperhand/device/android/AndroidSDKProvider'),(18,40,'com/appbrain/AppBrainActivity'),(19,41,'com/appbrain/AppBrainActivity'),(20,47,'com/eleganttools/elegantringtonemaker/musicSearch/DownloadService');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,4,4),(4,5,5),(5,6,6),(6,7,7),(7,10,10),(8,11,11),(9,12,12),(10,13,13),(11,14,14),(12,15,15),(13,22,23),(14,37,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'com.google.circles.platform.intent.extra.ACTION'),(2,2,'(.*)'),(3,2,'com.google.circles.platform.intent.extra.ENTITY'),(4,2,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(5,8,'M_SERVER_URL'),(6,8,'USER_AGENT'),(7,8,'SERVICE_MODE'),(8,8,'FIRST_RUN'),(9,8,'(.*)'),(10,8,'DEVELOPER_ID'),(11,8,'APPLICATION_ID'),(12,8,'PACKAGE_NAME'),(13,9,'M_SERVER_URL'),(14,9,'USER_AGENT'),(15,9,'SERVICE_MODE'),(16,9,'FIRST_RUN'),(17,9,'DEVELOPER_ID'),(18,9,'APPLICATION_ID'),(19,9,'PACKAGE_NAME'),(20,17,'android.intent.extra.shortcut.NAME'),(21,17,'android.intent.extra.shortcut.ICON'),(22,17,'android.intent.extra.shortcut.INTENT'),(23,18,'maybe'),(24,18,'activity'),(25,19,'maybe'),(26,19,'hash'),(27,19,'hash_last'),(28,19,'activity'),(29,24,'listMode'),(30,26,'fileName'),(31,26,'was_get_content_intent'),(32,26,'songName'),(33,28,'android.intent.extra.shortcut.NAME'),(34,28,'android.intent.extra.shortcut.ICON'),(35,28,'android.intent.extra.shortcut.INTENT'),(36,29,'percent'),(37,29,'status'),(38,32,'android.intent.extra.shortcut.NAME'),(39,32,'android.intent.extra.shortcut.ICON_RESOURCE'),(40,32,'android.intent.extra.shortcut.INTENT'),(41,33,'android.intent.extra.shortcut.NAME'),(42,33,'android.intent.extra.shortcut.ICON'),(43,33,'android.intent.extra.shortcut.ICON_RESOURCE'),(44,33,'android.intent.extra.shortcut.INTENT'),(45,34,'android.intent.extra.shortcut.NAME'),(46,34,'android.intent.extra.shortcut.ICON'),(47,34,'android.intent.extra.shortcut.INTENT'),(48,35,'event'),(49,35,'key'),(50,36,'fileName'),(51,36,'was_get_content_intent'),(52,36,'songName'),(53,38,'M_SERVER_URL'),(54,38,'USER_AGENT'),(55,38,'SERVICE_MODE'),(56,38,'FIRST_RUN'),(57,38,'DEVELOPER_ID'),(58,38,'APPLICATION_ID'),(59,39,'status'),(60,40,'src'),(61,40,'activity'),(62,41,'hash'),(63,41,'hash_last'),(64,41,'src'),(65,41,'activity'),(66,42,'u'),(67,42,'o'),(68,43,'u'),(69,44,'u'),(70,45,'u'),(71,45,'o');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,5),(7,7,6),(8,8,4),(9,9,1),(10,10,5),(11,11,7),(12,12,4),(13,13,8),(14,14,5),(15,15,7),(16,16,4),(17,17,9),(18,18,5),(19,19,7),(20,20,4),(21,21,10),(22,22,11),(23,23,12),(24,24,5),(25,25,17),(26,25,18),(27,26,19),(28,27,19),(29,28,19),(30,29,19),(31,30,19),(32,31,19),(33,32,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,2),(4,8,1),(5,10,2),(6,12,3),(7,16,3),(8,20,3),(9,21,4),(10,24,2);
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
INSERT INTO `IFData` VALUES (1,17,NULL,NULL,NULL,NULL,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.google.android.apps.plus'),(2,8,'com.reactor.livewallpaper.fallingsakura'),(3,9,'com.reactor.livewallpaper.fallingsakura'),(4,18,'com.eleganttools.elegantringtonemaker'),(5,19,'com.eleganttools.elegantringtonemaker'),(6,20,'com.eleganttools.elegantringtonemaker'),(7,21,'com.eleganttools.elegantringtonemaker'),(8,23,'com.eleganttools.elegantringtonemaker'),(9,24,'com.eleganttools.elegantringtonemaker'),(10,25,'com.eleganttools.elegantringtonemaker'),(11,26,'com.eleganttools.elegantringtonemaker'),(12,27,'com.eleganttools.elegantringtonemaker'),(13,30,'com.eleganttools.elegantringtonemaker'),(14,31,'com.eleganttools.elegantringtonemaker'),(15,35,'com.eleganttools.elegantringtonemaker'),(16,36,'com.eleganttools.elegantringtonemaker'),(17,38,'com.eleganttools.elegantringtonemaker'),(18,40,'com.eleganttools.elegantringtonemaker'),(19,41,'com.eleganttools.elegantringtonemaker'),(20,47,'com.eleganttools.elegantringtonemaker');
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
INSERT INTO `IntentFilters` VALUES (1,4,0),(2,5,0),(3,6,0),(4,6,0),(5,10,0),(6,12,0),(7,17,0),(8,19,0),(9,26,0),(10,28,0),(11,30,0),(12,32,0),(13,34,0),(14,40,0),(15,41,0),(16,42,0),(17,47,0),(18,57,0),(19,58,0),(20,59,0),(21,60,0),(22,67,0),(23,68,0),(24,73,0),(25,74,0),(26,75,0),(27,76,0),(28,77,0),(29,58,0),(30,57,0),(31,78,0),(32,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,5,1,0),(5,6,1,0),(6,7,1,0),(7,8,1,0),(8,9,0,0),(9,9,0,0),(10,12,1,0),(11,12,1,0),(12,12,1,0),(13,12,1,0),(14,13,1,0),(15,14,1,0),(16,15,1,0),(17,16,1,0),(18,19,0,0),(19,19,0,0),(20,21,0,0),(21,23,0,0),(22,29,1,0),(23,30,0,0),(24,31,0,0),(25,33,0,0),(26,34,0,0),(27,35,0,0),(28,38,1,0),(29,39,1,0),(30,40,0,0),(31,41,0,0),(32,42,1,0),(33,42,1,0),(34,42,1,0),(35,43,0,0),(36,44,0,0),(37,46,1,0),(38,47,0,0),(39,50,1,0),(40,53,0,0),(41,53,0,0),(42,54,1,0),(43,54,1,0),(44,54,1,0),(45,54,1,0),(46,55,1,0),(47,56,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(47,'android.permission.ACCESS_FINE_LOCATION'),(48,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(20,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(50,'android.permission.BIND_WALLPAPER'),(60,'android.permission.CALL_PHONE'),(53,'android.permission.DEVICE_POWER'),(61,'android.permission.FLASHLIGHT'),(13,'android.permission.INTERNET'),(54,'android.permission.READ_EXTERNAL_STORAGE'),(10,'android.permission.READ_PHONE_STATE'),(58,'android.permission.READ_SETTINGS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(56,'android.permission.RECORD_AUDIO'),(55,'android.permission.RECORD_VIDEO'),(52,'android.permission.SET_ORIENTATION'),(59,'android.permission.SET_WALLPAPER'),(51,'android.permission.SYSTEM_ALERT_WINDOW'),(17,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(57,'android.permission.WRITE_SETTINGS'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(49,'com.android.launcher.permission.READ_SETTINGS'),(9,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(15,'com.fede.launcher.permission.READ_SETTINGS'),(8,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(12,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(18,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.launcher.permission.READ_SETTINGS'),(16,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.AOI.hqq.LiveWallpaper_Skyrocket',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:\"Go Wallpaper Dev Team\"',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.mai.livewallpaper.hyperspacelite',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.gau.go.launcherex',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.reactor.livewallpaper.sakurapro',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.jb.gosms',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=com.AOI.hqq.LiveWallpaper_FireFlieslite',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.jarodyv.lwp.globelite',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.eleganttools.elegantringtonemaker',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(29,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(32,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,3),(2,10,8),(3,11,9),(4,17,16),(5,18,17),(6,18,18),(7,22,19),(8,25,20),(9,26,21),(10,28,22),(11,32,24),(12,36,25),(13,36,26),(14,37,27),(15,45,28),(16,48,30),(17,52,31),(18,52,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,3,1),(18,1,16),(19,3,2),(20,1,19),(21,3,3),(22,1,18),(23,3,4),(24,1,21),(25,3,5),(26,1,20),(27,3,6),(28,1,22),(29,3,7),(30,3,8),(31,3,9),(32,3,10),(33,3,11),(34,3,12),(35,3,13),(36,3,14),(37,3,15),(38,3,17),(39,3,16),(40,3,19),(41,3,18),(42,3,21),(43,3,20),(44,3,22),(45,3,47),(46,3,49),(47,3,48),(48,4,1),(49,4,2),(50,4,4),(51,4,5),(52,4,8),(53,4,9),(54,4,12),(55,4,13),(56,4,15),(57,4,51),(58,4,16),(59,4,49),(60,4,18),(61,4,20),(62,4,22),(63,5,1),(64,5,2),(65,5,4),(66,5,5),(67,5,6),(68,5,8),(69,5,9),(70,5,10),(71,5,11),(72,5,12),(73,5,13),(74,5,14),(75,5,15),(76,5,16),(77,5,19),(78,5,49),(79,5,18),(80,5,21),(81,5,20),(82,5,53),(83,5,52),(84,5,22),(85,6,1),(86,6,2),(87,6,3),(88,6,4),(89,6,5),(90,6,6),(91,6,7),(92,6,8),(93,6,9),(94,6,10),(95,6,11),(96,6,12),(97,6,47),(98,6,13),(99,6,15),(100,6,16),(101,6,19),(102,6,49),(103,6,18),(104,6,48),(105,6,55),(106,6,54),(107,6,20),(108,6,22),(109,6,58),(110,6,57),(111,6,56),(112,7,1),(113,7,2),(114,7,4),(115,7,5),(116,7,6),(117,7,7),(118,7,8),(119,7,9),(120,7,10),(121,7,11),(122,7,12),(123,7,47),(124,7,13),(125,7,14),(126,7,15),(127,7,17),(128,7,16),(129,7,19),(130,7,49),(131,7,18),(132,7,21),(133,7,20),(134,7,22),(135,7,59),(136,7,61),(137,7,60);
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

-- Dump completed on 2015-10-09  0:40:55
