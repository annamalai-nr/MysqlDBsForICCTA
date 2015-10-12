-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_685
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
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(5,'android.app.action.DEVICE_ADMIN_ENABLED'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(4,'android.service.wallpaper.WallpaperService'),(10,'com.airpush.android.PushServiceStart37416'),(14,'com.airpush.android.PushServiceStart41382'),(3,'com.airpush.android.PushServiceStart44816'),(6,'com.airpush.android.PushServiceStart52976'),(8,'com.airpush.android.PushServiceStart61129'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.vending.INSTALL_REFERRER'),(2,'com.gau.go.launcherex.theme'),(13,'com.google.android.c2dm.intent.RECEIVE'),(12,'com.google.android.c2dm.intent.REGISTRATION'),(15,'com.senddroid.AdServicecom.boxitsoft.gronchoalphastrike');
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
INSERT INTO `Applications` VALUES (1,'com.airbitapps.bestPhoneLock',1),(2,'com.syndicateapps.ilocker.stock',1102012),(3,'com.free_live_wallpapers_hd.need_for_speed_lwp',1),(4,'com.bacastudio.jb_theme',5),(5,'com.cube.liveWallpaper_rihanna',1),(6,'com.AOI.hqq.LiveWallpaper_FireFlieslite',19),(7,'com.boxitsoft.gronchoalphastrike',6);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.cube.liveWallpaper_rihanna');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.syndicateapps.ilocker.stock.Splash'),(2,2,'com.syndicateapps.ilocker.stock.LockScreen'),(3,2,'com.syndicateapps.ilocker.stock.Main'),(4,2,'com.syndicateapps.ilocker.stock.PermissionSet'),(5,2,'com.syndicateapps.ilocker.stock.UnlockSound'),(6,2,'com.syndicateapps.ilocker.stock.SettingsScreen'),(7,4,'com.bacastudio.jb_theme.GOThemeActivity'),(8,2,'com.airpush.android.PushAds'),(9,1,'com.airbitapps.bestPhoneLock.TabActivityexample'),(10,2,'com.syndicateapps.ilocker.stock.iLockerStockService'),(11,4,'com.bacastudio.jb_theme.theme'),(12,3,'com.free_live_wallpapers_hd.need_for_speed_lwp.Preferences'),(13,2,'com.syndicateapps.ilocker.stock.LockScreenService'),(14,3,'com.airpush.android.PushAds'),(15,2,'com.airpush.android.PushService'),(16,1,'com.airbitapps.bestPhoneLock.MainLock1'),(17,3,'com.apperhand.device.android.AndroidSDKProvider'),(18,1,'com.airbitapps.bestPhoneLock.SettingLock'),(19,3,'com.free_live_wallpapers_hd.need_for_speed_lwp.Wallpaper'),(20,1,'com.airbitapps.bestPhoneLock.wallpaper'),(21,2,'com.syndicateapps.ilocker.stock.PermissionReceiver'),(22,1,'com.airbitapps.bestPhoneLock.back'),(23,4,'com.google.ads.AdActivity'),(24,1,'com.airpush.android.PushAds'),(25,3,'com.airpush.android.PushService'),(26,4,'com.houseads.ShowPush'),(27,1,'com.airbitapps.bestPhoneLock.Serviceview'),(28,2,'com.syndicateapps.ilocker.stock.PermissionWidgetProvider'),(29,1,'com.airpush.android.PushService'),(30,4,'com.apperhand.device.android.AndroidSDKProvider'),(31,3,'com.airpush.android.UserDetailsReceiver'),(32,4,'com.bacastudio.jb_theme.BootReceiver'),(33,2,'com.airpush.android.UserDetailsReceiver'),(34,3,'com.airpush.android.MessageReceiver'),(35,1,'com.apperhand.device.android.AndroidSDKProvider'),(36,2,'com.airpush.android.MessageReceiver'),(37,3,'com.airpush.android.DeliveryReceiver'),(38,1,'com.airpush.android.UserDetailsReceiver'),(39,2,'com.airpush.android.DeliveryReceiver'),(40,3,'com.free_live_wallpapers_hd.need_for_speed_lwp.BootReceiver'),(41,4,'com.Leadbolt.AdNotification'),(42,1,'com.airpush.android.MessageReceiver'),(43,2,'com.syndicateapps.ilocker.stock.BootReceiver'),(44,4,'com.houseads.Push'),(45,1,'com.airpush.android.DeliveryReceiver'),(46,3,'com.free_live_wallpapers_hd.need_for_speed_lwp.boot'),(47,1,'com.airbitapps.bestPhoneLock.BootReceiver'),(48,3,'com.Leadbolt.AdNotification'),(49,1,'com.Leadbolt.AdNotification'),(50,5,'com.cube.liveWallpaper_rihanna.AppLauncher'),(51,5,'com.moreapps.code.MoreAppsActivity'),(52,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting'),(53,5,'com.cube.liveWallpaper_rihanna.ImageCroping'),(54,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.HowToActivity'),(55,5,'com.cube.liveWallpaper_rihanna.Gallery_Activity'),(56,5,'com.cube.liveWallpaper_rihanna.OptionSettingPreferanceActivity'),(57,5,'com.airpush.android.PushAds'),(58,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity'),(59,5,'com.cube.liveWallpaper_rihanna.PhotoCube3DLWPActivity'),(60,6,'com.google.ads.AdActivity'),(61,6,'com.admob.android.ads.AdMobActivity'),(62,5,'com.apperhand.device.android.AndroidSDKProvider'),(63,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesWallpaperService'),(64,5,'com.airpush.android.PushService'),(65,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.HowToProvider'),(66,6,'com.admob.android.ads.analytics.InstallReceiver'),(67,5,'com.cube.liveWallpaper_rihanna.C2DMService'),(68,5,'com.Leadbolt.AdNotification'),(69,5,'com.airpush.android.UserDetailsReceiver'),(70,5,'com.airpush.android.MessageReceiver'),(71,5,'com.airpush.android.DeliveryReceiver'),(72,5,'com.cube.liveWallpaper_rihanna.BootReceiver'),(73,5,'com.cube.liveWallpaper_rihanna.C2DMRegistrationReceiver'),(74,7,'com.boxitsoft.gronchoalphastrike.Main'),(75,5,'com.cube.liveWallpaper_rihanna.C2DMMessageReceiver'),(76,7,'com.airpush.android.PushAds'),(77,7,'com.airpush.android.PushService'),(78,7,'com.senddroid.AdService'),(79,7,'com.apperhand.device.android.AndroidSDKProvider'),(80,7,'com.boxitsoft.ServiceTemplate'),(81,7,'com.airpush.android.UserDetailsReceiver'),(82,7,'com.airpush.android.MessageReceiver'),(83,7,'com.airpush.android.DeliveryReceiver'),(84,7,'com.google.android.apps.analytics.AnalyticsReceiver'),(85,7,'com.Leadbolt.AdNotification'),(86,7,'com.boxitsoft.BootReceiver'),(87,7,'com.boxitsoft.MyStartServiceReceiver'),(88,4,'com.apperhand.device.android.a.d'),(89,4,'com.Leadbolt.AdController'),(90,4,'com.bacastudio.jb_theme.GOThemeActivity$2'),(91,4,'com.apperhand.device.android.a.b'),(92,4,'com.bacastudio.jb_theme.GOThemeActivity$1'),(93,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$3'),(94,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$5'),(95,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$6'),(96,6,'com.apperhand.device.android.a.e'),(97,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting$2'),(98,6,'com.apperhand.device.android.a.b'),(99,6,'com.AOI.hqq.LiveWallpaper_FireFlieslite.AboutDialog'),(100,6,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,23,'action'),(2,30,'USER_AGENT'),(3,30,'SERVICE_MODE'),(4,30,'DEVELOPER_ID'),(5,23,'com.google.ads.AdOpener'),(6,30,'APPLICATION_ID'),(7,30,'M_SERVER_URL'),(8,30,'FIRST_RUN'),(9,23,'params'),(10,41,'sectionid'),(11,61,'b'),(12,61,'t'),(13,61,'a'),(14,61,'int'),(15,61,'sin'),(16,61,'p'),(17,61,'tr'),(18,61,'ru'),(19,60,'com.google.circles.platform.result.extra.CONFIRMATION'),(20,61,'$'),(21,61,'u'),(22,60,'com.google.ads.AdOpener'),(23,65,'permanent'),(24,60,'action'),(25,61,'sc'),(26,60,'com.google.circles.platform.result.extra.ACTION'),(27,65,'USER_AGENT'),(28,61,'s'),(29,61,'oi'),(30,61,'json'),(31,65,'APPLICATION_ID'),(32,61,'c'),(33,65,'SERVICE_MODE'),(34,61,'au'),(35,65,'M_SERVER_URL'),(36,61,'su'),(37,61,'or'),(38,61,'cs'),(39,61,'msm'),(40,61,'ad'),(41,60,'params'),(42,52,'ADMOB_PUBLISHER_ID'),(43,52,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(44,66,'ADMOB_PUBLISHER_ID'),(45,66,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(46,61,'cbo'),(47,61,'ap'),(48,65,'DEVELOPER_ID'),(49,61,'skd'),(50,61,'rd'),(51,52,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(52,66,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(53,61,'sd'),(54,61,'sku'),(55,61,'mi'),(56,61,'si'),(57,66,'referrer'),(58,61,'nosk'),(59,66,'(.*)'),(60,61,'o'),(61,65,'FIRST_RUN'),(62,65,'PACKAGE_NAME');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,12,'a',1,NULL,NULL),(12,11,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',1,33,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,34,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,46,'r',1,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',1,33,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',1,33,NULL),(64,64,'s',1,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,40,NULL),(74,74,'a',1,NULL,NULL),(75,75,'r',1,40,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',1,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,83,'r',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,100,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,30),(2,2,23),(3,3,32),(4,3,41),(5,3,7),(6,4,7),(7,5,7),(8,6,30),(9,7,26),(10,8,30),(11,9,30),(12,10,30),(13,11,41),(14,11,7),(15,11,32),(16,12,30),(17,13,7),(18,14,52),(19,15,58),(20,16,58),(21,17,54),(22,18,58),(23,19,52),(24,20,52),(25,21,60),(26,22,65),(27,23,52),(28,24,52),(29,25,54),(30,25,52),(31,26,65),(32,27,65),(33,28,65),(34,29,52),(35,29,58),(36,30,65),(37,31,60),(38,32,65),(39,33,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,88,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(2,23,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(3,89,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(4,90,'<com.bacastudio.jb_theme.GOThemeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(5,30,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(6,91,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(7,26,'<com.houseads.ShowPush: void onCreate(android.os.Bundle)>',10,'a',NULL),(8,91,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(9,88,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(10,88,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(11,89,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(12,91,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(13,92,'<com.bacastudio.jb_theme.GOThemeActivity$1: void onClick(android.view.View)>',6,'a',NULL),(14,52,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(15,93,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(16,94,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(17,54,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.HowToActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(18,95,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.PopActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(19,52,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(20,52,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',35,'a',NULL),(21,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(22,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(23,52,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',10,'a',NULL),(24,97,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(25,65,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.HowToProvider: void a(android.content.Context,int,android.os.Bundle)>',49,'s',NULL),(26,98,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(27,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(28,96,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(29,99,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.AboutDialog: void onClick(android.view.View)>',10,'a',NULL),(30,98,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(31,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(32,98,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(33,52,'<com.AOI.hqq.LiveWallpaper_FireFlieslite.FireFliesSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',66,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,16),(2,2,17),(3,3,17),(4,4,16),(5,6,16),(6,7,18),(7,8,18),(8,9,18),(9,10,18),(10,11,16),(11,12,16),(12,13,16),(13,14,16),(14,15,19),(15,16,16),(16,17,16),(17,18,16),(18,19,16),(19,20,17),(20,21,17),(21,22,16),(22,23,16),(23,24,16),(24,27,18),(25,28,16),(26,29,16),(27,30,16),(28,32,16);
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
INSERT INTO `ICategories` VALUES (1,31,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/apperhand/device/android/AndroidSDKProvider'),(2,25,'com/AOI/hqq/LiveWallpaper_FireFlieslite/HowToProvider'),(3,26,'com/AOI/hqq/LiveWallpaper_FireFlieslite/HowToProvider'),(4,31,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,3),(2,2,4),(3,3,5),(4,4,7),(5,6,9),(6,11,13),(7,12,14),(8,13,15),(9,14,16),(10,16,17),(11,17,18),(12,18,19),(13,19,20),(14,20,21),(15,21,22),(16,22,23),(17,23,25),(18,24,26),(19,28,30),(20,29,31),(21,30,32),(22,32,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'M_SERVER_URL'),(2,5,'USER_AGENT'),(3,5,'SERVICE_MODE'),(4,5,'FIRST_RUN'),(5,5,'DEVELOPER_ID'),(6,5,'APPLICATION_ID'),(7,7,'android.intent.extra.shortcut.NAME'),(8,7,'android.intent.extra.shortcut.ICON'),(9,7,'android.intent.extra.shortcut.INTENT'),(10,8,'android.intent.extra.shortcut.NAME'),(11,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(12,8,'android.intent.extra.shortcut.INTENT'),(13,9,'android.intent.extra.shortcut.NAME'),(14,9,'android.intent.extra.shortcut.ICON'),(15,9,'android.intent.extra.shortcut.ICON_RESOURCE'),(16,9,'android.intent.extra.shortcut.INTENT'),(17,10,'android.intent.extra.shortcut.NAME'),(18,10,'android.intent.extra.shortcut.ICON'),(19,10,'android.intent.extra.shortcut.INTENT'),(20,25,'M_SERVER_URL'),(21,25,'USER_AGENT'),(22,25,'SERVICE_MODE'),(23,25,'FIRST_RUN'),(24,25,'DEVELOPER_ID'),(25,25,'APPLICATION_ID'),(26,25,'PACKAGE_NAME'),(27,26,'M_SERVER_URL'),(28,26,'USER_AGENT'),(29,26,'SERVICE_MODE'),(30,26,'FIRST_RUN'),(31,26,'(.*)'),(32,26,'DEVELOPER_ID'),(33,26,'APPLICATION_ID'),(34,26,'PACKAGE_NAME'),(35,27,'android.intent.extra.shortcut.NAME'),(36,27,'android.intent.extra.shortcut.ICON'),(37,27,'android.intent.extra.shortcut.INTENT'),(38,31,'com.google.circles.platform.intent.extra.ACTION'),(39,31,'(.*)'),(40,31,'com.google.circles.platform.intent.extra.ENTITY'),(41,31,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,1),(6,5,3),(7,6,1),(8,7,4),(9,8,5),(10,9,6),(11,10,7),(12,11,8),(13,12,9),(14,13,9),(15,14,9),(16,15,9),(17,16,9),(18,17,9),(19,18,1),(20,19,1),(21,20,4),(22,21,4),(23,22,10),(24,23,11),(25,24,9),(26,25,12),(27,26,1),(28,27,13),(29,28,14),(30,29,15),(31,30,11),(32,31,9),(33,32,20),(34,32,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,6,3),(6,12,4),(7,13,4),(8,14,4),(9,16,4),(10,18,3),(11,19,3),(12,24,4),(13,25,5),(14,26,1),(15,27,5);
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
INSERT INTO `IMimeTypes` VALUES (1,2,'(.*)','(.*)'),(2,20,'(.*)','(.*)'),(3,22,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.bacastudio.jb_theme'),(2,25,'com.AOI.hqq.LiveWallpaper_FireFlieslite'),(3,26,'com.AOI.hqq.LiveWallpaper_FireFlieslite'),(4,31,'com.google.android.apps.plus');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,9,0),(4,12,0),(5,15,0),(6,12,0),(7,19,0),(8,21,0),(9,25,0),(10,28,0),(11,29,0),(12,32,0),(13,40,0),(14,43,0),(15,47,0),(16,46,0),(17,46,0),(18,50,0),(19,54,0),(20,59,0),(21,63,0),(22,64,0),(23,66,0),(24,72,0),(25,73,0),(26,74,0),(27,75,0),(28,77,0),(29,78,0),(30,84,0),(31,86,0),(32,88,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,2,1,0),(3,2,1,0),(4,4,1,0),(5,5,0,0),(6,7,1,0),(7,10,1,0),(8,11,1,0),(9,11,1,0),(10,11,1,0),(11,13,1,0),(12,14,1,0),(13,15,1,0),(14,16,1,0),(15,17,1,0),(16,18,1,0),(17,19,1,0),(18,20,1,0),(19,21,1,0),(20,21,1,0),(21,21,1,0),(22,21,1,0),(23,23,1,0),(24,24,1,0),(25,25,0,0),(26,25,0,0),(27,28,1,0),(28,29,1,0),(29,29,1,0),(30,29,1,0),(31,31,0,0),(32,33,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,19,2,NULL),(2,3,19,2,NULL),(3,15,19,2,NULL),(4,19,19,2,NULL),(5,21,19,2,NULL),(6,1,25,2,NULL),(7,3,25,2,NULL),(8,15,25,2,NULL),(9,19,25,2,NULL),(10,21,25,2,NULL),(11,1,40,2,NULL),(12,3,40,2,NULL),(13,15,40,2,NULL),(14,19,40,2,NULL),(15,21,40,2,NULL),(16,1,47,2,NULL),(17,3,47,2,NULL),(18,15,47,2,NULL),(19,19,47,2,NULL),(20,21,47,2,NULL),(21,1,9,2,NULL),(22,3,9,2,NULL),(23,15,9,2,NULL),(24,19,9,2,NULL),(25,21,9,2,NULL),(26,1,29,2,NULL),(27,3,29,2,NULL),(28,15,29,2,NULL),(29,19,29,2,NULL),(30,21,29,2,NULL),(31,1,46,2,NULL),(32,3,46,2,NULL),(33,15,46,2,NULL),(34,19,46,2,NULL),(35,21,46,2,NULL),(36,1,1,2,NULL),(37,3,1,2,NULL),(38,15,1,2,NULL),(39,19,1,2,NULL),(40,21,1,2,NULL),(41,1,15,2,NULL),(42,3,15,2,NULL),(43,15,15,2,NULL),(44,19,15,2,NULL),(45,21,15,2,NULL),(46,1,21,2,NULL),(47,3,21,2,NULL),(48,15,21,2,NULL),(49,19,21,2,NULL),(50,21,21,2,NULL),(51,1,28,2,NULL),(52,3,28,2,NULL),(53,15,28,2,NULL),(54,19,28,2,NULL),(55,21,28,2,NULL),(56,1,43,2,NULL),(57,3,43,2,NULL),(58,15,43,2,NULL),(59,19,43,2,NULL),(60,21,43,2,NULL),(61,1,74,2,NULL),(62,3,74,2,NULL),(63,15,74,2,NULL),(64,19,74,2,NULL),(65,21,74,2,NULL),(66,1,77,2,NULL),(67,3,77,2,NULL),(68,15,77,2,NULL),(69,19,77,2,NULL),(70,21,77,2,NULL),(71,1,78,2,NULL),(72,3,78,2,NULL),(73,15,78,2,NULL),(74,19,78,2,NULL),(75,21,78,2,NULL),(76,1,84,2,NULL),(77,3,84,2,NULL),(78,15,84,2,NULL),(79,19,84,2,NULL),(80,21,84,2,NULL),(81,1,86,2,NULL),(82,3,86,2,NULL),(83,15,86,2,NULL),(84,19,86,2,NULL),(85,21,86,2,NULL),(86,1,50,2,NULL),(87,3,50,2,NULL),(88,15,50,2,NULL),(89,19,50,2,NULL),(90,21,50,2,NULL),(91,1,59,2,NULL),(92,3,59,2,NULL),(93,15,59,2,NULL),(94,19,59,2,NULL),(95,21,59,2,NULL),(96,1,64,2,NULL),(97,3,64,2,NULL),(98,15,64,2,NULL),(99,19,64,2,NULL),(100,21,64,2,NULL),(101,1,72,2,NULL),(102,3,72,2,NULL),(103,15,72,2,NULL),(104,19,72,2,NULL),(105,21,72,2,NULL),(106,1,73,2,NULL),(107,3,73,2,NULL),(108,15,73,2,NULL),(109,19,73,2,NULL),(110,21,73,2,NULL),(111,1,75,2,NULL),(112,3,75,2,NULL),(113,15,75,2,NULL),(114,19,75,2,NULL),(115,21,75,2,NULL),(116,1,7,2,NULL),(117,3,7,2,NULL),(118,15,7,2,NULL),(119,19,7,2,NULL),(120,21,7,2,NULL),(121,1,12,2,NULL),(122,3,12,2,NULL),(123,15,12,2,NULL),(124,19,12,2,NULL),(125,21,12,2,NULL),(126,1,32,2,NULL),(127,3,32,2,NULL),(128,1,54,2,NULL),(129,3,54,2,NULL),(130,1,63,2,NULL),(131,3,63,2,NULL),(132,1,66,2,NULL),(133,3,66,2,NULL),(134,1,88,2,NULL),(135,3,88,2,NULL),(136,5,17,2,NULL),(137,5,30,2,NULL),(138,5,35,2,NULL),(139,5,62,2,NULL),(140,5,79,2,NULL),(141,15,32,2,NULL),(142,19,32,2,NULL),(143,21,32,2,NULL),(144,19,54,2,NULL),(145,21,54,2,NULL),(146,15,63,2,NULL),(147,15,66,2,NULL),(148,15,88,2,NULL),(149,19,63,2,NULL),(150,21,63,2,NULL),(151,19,66,2,NULL),(152,21,66,2,NULL),(153,19,88,2,NULL),(154,21,88,2,NULL),(155,25,65,2,NULL),(156,26,65,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.BATTERY_STATS'),(34,'android.permission.BIND_DEVICE_ADMIN'),(33,'android.permission.BIND_WALLPAPER'),(11,'android.permission.CAMERA'),(30,'android.permission.CHANGE_NETWORK_STATE'),(39,'android.permission.DEVICE_POWER'),(23,'android.permission.DISABLE_KEYGUARD'),(24,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(38,'android.permission.SET_ORIENTATION'),(13,'android.permission.SET_PREFERRED_APPLICATIONS'),(37,'android.permission.SYSTEM_ALERT_WINDOW'),(28,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(31,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(19,'com.android.launcher.permission.INSTALL_SHORTCUT'),(29,'com.android.launcher.permission.READ_SETTINGS'),(22,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(35,'com.cube.liveWallpaper_rihanna.permission.C2D_MESSAGE'),(26,'com.fede.launcher.permission.READ_SETTINGS'),(36,'com.google.android.c2dm.permission.RECEIVE'),(40,'com.google.android.c2dm.permission.SEND'),(21,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(12,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(16,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(32,'com.motorola.launcher.permission.READ_SETTINGS'),(27,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (35,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.bacastudio.jb_theme_adfree',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.bacastudio.jb_theme',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=com.mai.livewallpaper.hyperspacelite',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.happybug.livewallpaper.jellyfishlite',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.gau.go.launcherex',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.jb.gosms',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.AOI.hqq.LiveWallpaper_Skyrocket',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.helioslite',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(25,NULL,NULL,'market://search?q=pub:\"Go Wallpaper Dev Team\"',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.fireflies',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(29,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(30,NULL,NULL,'mailto:golivewallpaper@gmail.com',NULL,NULL,NULL),(31,NULL,NULL,'http://github.com/JarodYv/Fireflies',NULL,NULL,NULL),(32,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(34,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=com.jarodyv.livewallpaper.helioslite',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,1,2),(3,3,6),(4,6,8),(5,8,10),(6,9,11),(7,12,12),(8,22,24),(9,26,27),(10,27,28),(11,27,29),(12,30,33),(13,32,34);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,17),(6,1,5),(7,2,2),(8,1,6),(9,2,19),(10,1,7),(11,2,5),(12,1,8),(13,2,6),(14,1,9),(15,2,23),(16,1,10),(17,2,8),(18,1,11),(19,2,24),(20,1,12),(21,2,10),(22,1,13),(23,3,1),(24,2,28),(25,1,14),(26,3,32),(27,1,15),(28,3,2),(29,3,3),(30,1,17),(31,3,4),(32,1,16),(33,1,19),(34,3,5),(35,3,6),(36,1,18),(37,1,21),(38,3,8),(39,1,20),(40,3,10),(41,1,23),(42,3,12),(43,3,14),(44,1,22),(45,1,25),(46,3,17),(47,3,16),(48,1,24),(49,4,17),(50,3,19),(51,1,27),(52,4,5),(53,3,18),(54,1,26),(55,4,8),(56,3,21),(57,4,24),(58,1,29),(59,3,22),(60,4,10),(61,1,28),(62,3,24),(63,1,31),(64,3,27),(65,1,30),(66,3,26),(67,1,32),(68,3,28),(69,3,31),(70,5,1),(71,5,2),(72,5,3),(73,5,4),(74,5,5),(75,5,6),(76,5,8),(77,5,10),(78,5,12),(79,5,13),(80,5,14),(81,5,15),(82,5,17),(83,5,16),(84,5,19),(85,5,18),(86,5,21),(87,5,23),(88,5,22),(89,5,25),(90,5,24),(91,6,1),(92,5,27),(93,6,32),(94,5,26),(95,6,3),(96,5,28),(97,6,4),(98,5,31),(99,6,37),(100,5,35),(101,6,12),(102,5,32),(103,6,17),(104,5,36),(105,6,16),(106,6,19),(107,6,21),(108,6,22),(109,6,24),(110,6,27),(111,6,26),(112,6,29),(113,7,1),(114,7,3),(115,7,4),(116,7,5),(117,7,6),(118,7,8),(119,7,10),(120,7,12),(121,7,14),(122,7,15),(123,7,17),(124,7,16),(125,7,19),(126,7,18),(127,7,21),(128,7,22),(129,7,24),(130,7,27),(131,7,26),(132,7,29),(133,7,28),(134,7,31),(135,7,32),(136,7,38),(137,7,39);
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

-- Dump completed on 2015-10-12  3:31:22
