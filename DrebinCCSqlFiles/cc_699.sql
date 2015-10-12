-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_699
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CAMERA_BUTTON'),(18,'android.intent.action.CHOOSER'),(5,'android.intent.action.CREATE_SHORTCUT'),(14,'android.intent.action.HEADSET_PLUG'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.NEW_OUTGOING_CALL'),(15,'android.intent.action.PICK'),(8,'android.intent.action.VIEW'),(13,'android.intent.action.WALLPAPER_CHANGED'),(17,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(2,'android.service.wallpaper.WallpaperService'),(9,'com.airpush.android.PushServiceStart54586'),(7,'com.airpush.android.PushServiceStart63055'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.vending.INSTALL_REFERRER'),(6,'com.senddroid.AdServicecom.lovely.inlove'),(3,'com.senddroid.AdServicecom.mai.livewallpaper.kaleidoscopegamelite');
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
INSERT INTO `Applications` VALUES (1,'com.mai.livewallpaper.kaleidoscopegamelite',3),(2,'com.apperhand.app.text.faker',2),(3,'com.AlDiApps.FlyingOverTheOceanlite',60),(4,'org.tonee.mathboard',6),(5,'uk.co.ashtonbrsc.android.starpulse.ad',8),(6,'com.lovely.inlove',1),(7,'feel.mylove.valentine',22);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mai.livewallpaper.kaleidoscopegamelite.KaleidoscopeActivity'),(2,1,'com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeSetting'),(3,1,'com.mai.livewallpaper.kaleidoscopegamelite.HowToActivity'),(4,1,'com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeWallpaperService'),(5,2,'com.apperhand.app.text.faker.Main'),(6,1,'com.senddroid.AdService'),(7,3,'com.AlDiApps.FlyingOverTheOceanlite.Settings'),(8,2,'com.apperhand.app.text.faker.NotifyClick'),(9,3,'com.AlDiApps.FlyingOverTheOceanlite.Livewallpaper'),(10,2,'com.apperhand.device.android.AndroidSDKProvider'),(11,1,'com.apperhand.device.android.AndroidSDKProvider'),(12,2,'com.apperhand.app.text.faker.Alarm'),(13,3,'com.apperhand.device.android.AndroidSDKProvider'),(14,4,'org.tonee.mathboard.AcMain'),(15,4,'org.tonee.mathboard.AcMenu'),(16,4,'org.tonee.mathboard.AcNewspaper'),(17,4,'org.tonee.mathboard.AcRateMeWith5Stars'),(18,4,'org.tonee.mathboard.AcDialogInfo'),(19,4,'org.tonee.mathboard.AcHints'),(20,4,'com.apperhand.device.android.AndroidSDKProvider'),(21,4,'com.Leadbolt.AdNotification'),(22,4,'org.tonee.mathboard.leadbolt.LeadBoltReceiver'),(23,5,'uk.co.ashtonbrsc.android.starpulse.preferences.Preferences'),(24,5,'uk.co.ashtonbrsc.android.starpulse.HowToShowLiveWallpaper'),(25,5,'uk.co.ashtonbrsc.android.starpulse.themes.ThemeManagerActivity'),(26,5,'uk.co.ashtonbrsc.android.starpulse.palettes.PaletteManagerActivity'),(27,5,'uk.co.ashtonbrsc.android.starpulse.palettes.PaletteEditActivity'),(28,5,'uk.co.ashtonbrsc.android.starpulse.AddShortcut'),(29,5,'uk.co.ashtonbrsc.android.starpulse.StarPulseWallpaperService'),(30,5,'com.apperhand.device.android.AndroidSDKProvider'),(31,6,'com.airpush.android.PushAds'),(32,6,'com.lovely.inlove.BubbleWallpaperService'),(33,6,'com.senddroid.AdService'),(34,6,'com.airpush.android.PushService'),(35,6,'com.moolah.NotificationService'),(36,6,'com.androlib.android.AndrolibAdsService'),(37,6,'com.apperhand.device.android.AndroidSDKProvider'),(38,6,'com.lovely.inlove.BootReceiver'),(39,6,'com.airpush.android.UserDetailsReceiver'),(40,6,'com.airpush.android.MessageReceiver'),(41,6,'com.airpush.android.DeliveryReceiver'),(42,7,'feel.mylove.valentine.SplashActivity'),(43,6,'com.moolah.MessageReceiver'),(44,6,'com.moolah.BootReceiver'),(45,7,'feel.mylove.valentine.MainMenuActivity'),(46,6,'com.androlib.android.BootReceiver'),(47,7,'feel.mylove.valentine.SubMenuActivity'),(48,7,'feel.mylove.valentine.RecepiDisplayActivity'),(49,7,'feel.mylove.valentine.AboutActivity'),(50,6,'com.Leadbolt.AdNotification'),(51,7,'feel.mylove.valentine.SeperateFaceBookActivity'),(52,7,'feel.mylove.valentine.TwitterWebViewActivity'),(53,7,'feel.mylove.valentine.AboutUsActivity'),(54,7,'feel.mylove.valentine.TwitterPostActivity'),(55,7,'com.google.ads.AdActivity'),(56,7,'com.greystripe.android.sdk.AdView'),(57,7,'com.airpush.android.PushAds'),(58,7,'com.airpush.android.PushService'),(59,7,'com.apperhand.device.android.AndroidSDKProvider'),(60,7,'com.google.android.apps.analytics.AnalyticsReceiver'),(61,7,'com.airpush.android.UserDetailsReceiver'),(62,7,'com.airpush.android.MessageReceiver'),(63,7,'com.airpush.android.DeliveryReceiver'),(64,7,'feel.mylove.valentine.BootReceiver'),(65,7,'com.greystripe.android.sdk.AdContentProvider'),(66,2,'com.apperhand.app.text.faker.Main$8'),(67,2,'com.apperhand.device.android.c.c'),(68,2,'com.apperhand.app.text.faker.b'),(69,2,'com.apperhand.device.android.c.b'),(70,1,'com.apperhand.device.android.a.e'),(71,3,'com.AlDiApps.FlyingOverTheOceanlite.Settings$1'),(72,3,'com.apperhand.device.android.a.e'),(73,1,'com.apperhand.device.android.a.b'),(74,1,'com.senddroid.SendDroid'),(75,3,'com.apperhand.device.android.a.a'),(76,4,'com.apperhand.device.android.a.d'),(77,4,'org.tonee.mathboard.options.XMLSettings'),(78,4,'com.Leadbolt.AdController'),(79,4,'com.apperhand.device.android.a.b'),(80,5,'uk.co.ashtonbrsc.android.starpulse.HowToShowLiveWallpaper$2'),(81,5,'com.apperhand.device.android.a.f'),(82,5,'com.apperhand.device.android.a.a'),(83,5,'uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$1'),(84,5,'uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$2'),(85,5,'uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$4'),(86,5,'uk.co.ashtonbrsc.android.starpulse.StarPulseWallpaperService$StarPulseEngine$3'),(87,5,'uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'thread'),(2,10,'DEVELOPER_ID'),(3,12,'id'),(4,10,'M_SERVER_URL'),(5,10,'FIRST_RUN'),(6,10,'APPLICATION_ID'),(7,10,'USER_AGENT'),(8,13,'M_SERVER_URL'),(9,13,'SERVICE_MODE'),(10,11,'FIRST_RUN'),(11,13,'APPLICATION_ID'),(12,11,'USER_AGENT'),(13,13,'permanent'),(14,13,'USER_AGENT'),(15,11,'DEVELOPER_ID'),(16,13,'DEVELOPER_ID'),(17,13,'FIRST_RUN'),(18,14,'android.speech.extra.RESULTS'),(19,20,'APPLICATION_ID'),(20,11,'permanent'),(21,20,'SERVICE_MODE'),(22,11,'M_SERVER_URL'),(23,11,'SERVICE_MODE'),(24,11,'APPLICATION_ID'),(25,20,'FIRST_RUN'),(26,20,'USER_AGENT'),(27,20,'M_SERVER_URL'),(28,21,'sectionid'),(29,18,'EXTRA_DIALOG_MESSAGE'),(30,20,'DEVELOPER_ID'),(31,30,'M_SERVER_URL'),(32,30,'SERVICE_MODE'),(33,30,'APPLICATION_ID'),(34,30,'FIRST_RUN'),(35,30,'DEVELOPER_ID'),(36,30,'USER_AGENT'),(37,30,'permanent');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',1,25,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,25,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',1,25,NULL),(30,30,'s',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,25,NULL),(33,33,'s',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'p',1,NULL,NULL),(66,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,8),(3,3,10),(4,4,10),(5,5,12),(6,5,5),(7,6,5),(8,7,10),(9,8,10),(10,9,12),(11,9,5),(12,10,8),(13,11,5),(14,11,12),(15,12,5),(16,13,5),(17,13,12),(18,14,11),(19,15,2),(20,16,7),(21,17,2),(22,18,13),(23,19,11),(24,20,13),(25,21,2),(26,22,6),(27,23,13),(28,24,13),(29,25,11),(30,26,11),(31,27,9),(32,28,6),(33,29,11),(34,30,3),(35,31,13),(36,32,11),(37,33,13),(38,34,14),(39,35,2),(40,36,16),(41,37,1),(42,38,14),(43,39,20),(44,40,16),(45,41,6),(46,42,14),(47,43,14),(48,44,21),(49,44,22),(50,45,20),(51,46,20),(52,47,14),(53,48,20),(54,49,29),(55,50,14),(56,51,20),(57,52,14),(58,53,20),(59,54,24),(60,54,25),(61,55,30),(62,56,30),(63,57,23),(64,58,30),(65,59,30),(66,60,30),(67,61,23),(68,62,26),(69,63,23),(70,64,23),(71,65,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,66,'<com.apperhand.app.text.faker.Main$8: void onClick(android.view.View)>',7,'a',NULL),(2,8,'<com.apperhand.app.text.faker.NotifyClick: void a()>',8,'a',NULL),(3,67,'<com.apperhand.device.android.c.c: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(4,67,'<com.apperhand.device.android.c.c: java.util.List d()>',14,'p',NULL),(5,68,'<com.apperhand.app.text.faker.b: java.lang.String a(android.content.Context,java.lang.String)>',13,'p',NULL),(6,68,'<com.apperhand.app.text.faker.b: java.util.ArrayList a(android.content.Context,long)>',19,'p',NULL),(7,69,'<com.apperhand.device.android.c.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(8,69,'<com.apperhand.device.android.c.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(9,5,'<com.apperhand.app.text.faker.Main: boolean a(android.content.Context,android.content.SharedPreferences,java.lang.String,java.lang.String,boolean,long,boolean)>',27,'p',0),(10,8,'<com.apperhand.app.text.faker.NotifyClick: void onCreate(android.os.Bundle)>',22,'a',NULL),(11,5,'<com.apperhand.app.text.faker.Main: boolean a(android.content.Context,android.content.SharedPreferences,java.lang.String,java.lang.String,boolean,long,boolean)>',22,'p',NULL),(12,10,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(13,5,'<com.apperhand.app.text.faker.Main: boolean a(android.content.Context,android.content.SharedPreferences,java.lang.String,java.lang.String,boolean,long,boolean)>',20,'p',NULL),(14,70,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(15,2,'<com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',35,'a',NULL),(16,71,'<com.AlDiApps.FlyingOverTheOceanlite.Settings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(17,2,'<com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(18,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(19,73,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(20,72,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(21,2,'<com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(22,74,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(23,75,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(24,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(25,70,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(26,73,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(27,13,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(28,74,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(29,73,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(30,3,'<com.mai.livewallpaper.kaleidoscopegamelite.HowToActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(31,75,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(32,70,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(33,75,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(34,14,'<org.tonee.mathboard.AcMain: void equal()>',45,'a',NULL),(35,2,'<com.mai.livewallpaper.kaleidoscopegamelite.KoleidoscopeSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',10,'a',NULL),(36,16,'<org.tonee.mathboard.AcNewspaper: void validateAndSend()>',21,'a',NULL),(37,11,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(38,14,'<org.tonee.mathboard.AcMain: void equal()>',38,'a',NULL),(39,76,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(40,16,'<org.tonee.mathboard.AcNewspaper: void validateAndSend()>',14,'a',NULL),(41,74,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(42,14,'<org.tonee.mathboard.AcMain: void equal()>',53,'a',NULL),(43,77,'<org.tonee.mathboard.options.XMLSettings: void checkNewspaper(android.content.Context)>',6,'a',NULL),(44,78,'<com.Leadbolt.AdController: void displayIcon()>',56,'r',NULL),(45,79,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(46,76,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(47,14,'<org.tonee.mathboard.AcMain: void equal()>',69,'a',NULL),(48,79,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(49,30,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,java.lang.String,java.lang.String,int,android.os.Bundle)>',27,'s',NULL),(50,14,'<org.tonee.mathboard.AcMain: void equal()>',61,'a',NULL),(51,79,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(52,77,'<org.tonee.mathboard.options.XMLSettings: void checkHints(android.content.Context)>',6,'a',NULL),(53,76,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(54,80,'<uk.co.ashtonbrsc.android.starpulse.HowToShowLiveWallpaper$2: void onClick(android.view.View)>',5,'a',NULL),(55,81,'<com.apperhand.device.android.a.f: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(56,82,'<com.apperhand.device.android.a.a: java.util.List b(java.util.List)>',17,'p',NULL),(57,83,'<uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$1: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(58,81,'<com.apperhand.device.android.a.f: java.util.List a()>',13,'p',NULL),(59,81,'<com.apperhand.device.android.a.f: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(60,82,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(61,84,'<uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(62,26,'<uk.co.ashtonbrsc.android.starpulse.palettes.PaletteManagerActivity: void showEditPaletteFragment(int)>',5,'a',NULL),(63,85,'<uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$4: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(64,87,'<uk.co.ashtonbrsc.android.starpulse.preferences.Preferences$5: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(65,82,'<com.apperhand.device.android.a.a: java.util.List b(java.util.List)>',28,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,1,15),(2,2,1),(3,3,16),(4,4,8),(5,6,8),(6,7,8),(7,8,8),(8,9,16),(9,10,8),(10,12,16),(11,14,17),(12,15,16),(13,17,8),(14,25,16),(15,26,16),(16,27,16),(17,28,16),(18,36,17),(19,37,18),(20,38,18),(21,39,18),(22,40,18),(23,41,18),(24,42,18),(25,43,18),(26,44,18),(27,45,16),(28,46,8);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/apperhand/device/android/AndroidSDKProvider'),(2,11,'com/apperhand/device/android/AndroidSDKProvider'),(3,13,'com/apperhand/device/android/AndroidSDKProvider'),(4,16,'org/tonee/mathboard/AcDialogInfo'),(5,18,'org/tonee/mathboard/AcDialogInfo'),(6,20,'org/tonee/mathboard/AcDialogInfo'),(7,19,'com/apperhand/device/android/AndroidSDKProvider'),(8,21,'com/apperhand/device/android/AndroidSDKProvider'),(9,22,'org/tonee/mathboard/AcDialogInfo'),(10,23,'org/tonee/mathboard/AcDialogInfo'),(11,24,'org/tonee/mathboard/AcNewspaper'),(12,29,'org/tonee/mathboard/AcDialogInfo'),(13,30,'com/apperhand/device/android/AndroidSDKProvider'),(14,32,'org/tonee/mathboard/AcDialogInfo'),(15,31,'com/apperhand/device/android/AndroidSDKProvider'),(16,33,'com/apperhand/device/android/AndroidSDKProvider'),(17,34,'org/tonee/mathboard/AcHints'),(18,35,'com/apperhand/device/android/AndroidSDKProvider'),(19,47,'uk/co/ashtonbrsc/android/starpulse/palettes/PaletteEditActivity'),(20,48,'uk/co/ashtonbrsc/android/starpulse/themes/ThemeManagerActivity'),(21,49,'uk/co/ashtonbrsc/android/starpulse/palettes/PaletteManagerActivity');
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
INSERT INTO `IData` VALUES (1,4,6),(2,6,11),(3,7,12),(4,8,13),(5,10,17),(6,17,26),(7,46,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.shortcut.NAME'),(2,3,'android.intent.extra.shortcut.ICON'),(3,3,'android.intent.extra.shortcut.INTENT'),(4,5,'USER_AGENT'),(5,5,'M_SERVER_URL'),(6,5,'DEVELOPER_ID'),(7,5,'FIRST_RUN'),(8,5,'APPLICATION_ID'),(9,9,'android.intent.extra.shortcut.NAME'),(10,9,'android.intent.extra.shortcut.ICON'),(11,9,'android.intent.extra.shortcut.INTENT'),(12,11,'M_SERVER_URL'),(13,11,'USER_AGENT'),(14,11,'SERVICE_MODE'),(15,11,'FIRST_RUN'),(16,11,'DEVELOPER_ID'),(17,11,'(.*)'),(18,12,'duplicate'),(19,11,'APPLICATION_ID'),(20,12,'android.intent.extra.shortcut.NAME'),(21,12,'android.intent.extra.shortcut.ICON'),(22,12,'android.intent.extra.shortcut.INTENT'),(23,13,'M_SERVER_URL'),(24,13,'USER_AGENT'),(25,13,'SERVICE_MODE'),(26,13,'FIRST_RUN'),(27,13,'DEVELOPER_ID'),(28,13,'APPLICATION_ID'),(29,15,'android.intent.extra.shortcut.NAME'),(30,15,'android.intent.extra.shortcut.ICON'),(31,15,'android.intent.extra.shortcut.INTENT'),(32,16,'EXTRA_DIALOG_MESSAGE'),(33,18,'EXTRA_DIALOG_MESSAGE'),(34,19,'M_SERVER_URL'),(35,19,'USER_AGENT'),(36,19,'SERVICE_MODE'),(37,19,'FIRST_RUN'),(38,19,'DEVELOPER_ID'),(39,20,'EXTRA_DIALOG_MESSAGE'),(40,19,'APPLICATION_ID'),(41,21,'M_SERVER_URL'),(42,21,'USER_AGENT'),(43,21,'SERVICE_MODE'),(44,21,'FIRST_RUN'),(45,21,'DEVELOPER_ID'),(46,21,'(.*)'),(47,21,'APPLICATION_ID'),(48,22,'EXTRA_DIALOG_MESSAGE'),(49,23,'EXTRA_DIALOG_MESSAGE'),(50,25,'android.intent.extra.shortcut.NAME'),(51,25,'android.intent.extra.shortcut.ICON_RESOURCE'),(52,25,'android.intent.extra.shortcut.INTENT'),(53,26,'android.intent.extra.shortcut.NAME'),(54,26,'android.intent.extra.shortcut.ICON'),(55,26,'android.intent.extra.shortcut.ICON_RESOURCE'),(56,26,'android.intent.extra.shortcut.INTENT'),(57,27,'android.intent.extra.shortcut.NAME'),(58,27,'android.intent.extra.shortcut.ICON'),(59,27,'android.intent.extra.shortcut.INTENT'),(60,28,'android.intent.extra.shortcut.NAME'),(61,28,'android.intent.extra.shortcut.ICON'),(62,28,'android.intent.extra.shortcut.INTENT'),(63,29,'EXTRA_DIALOG_MESSAGE'),(64,30,'SERVICE_MODE'),(65,30,'(.*)'),(66,31,'M_SERVER_URL'),(67,32,'EXTRA_DIALOG_MESSAGE'),(68,31,'USER_AGENT'),(69,31,'SERVICE_MODE'),(70,31,'FIRST_RUN'),(71,31,'DEVELOPER_ID'),(72,31,'(.*)'),(73,31,'APPLICATION_ID'),(74,33,'SERVICE_MODE'),(75,35,'M_SERVER_URL'),(76,35,'USER_AGENT'),(77,35,'SERVICE_MODE'),(78,35,'FIRST_RUN'),(79,35,'DEVELOPER_ID'),(80,35,'APPLICATION_ID'),(81,37,'android.intent.extra.INTENT'),(82,38,'android.intent.extra.INTENT'),(83,39,'android.intent.extra.TITLE'),(84,39,'android.intent.extra.INTENT'),(85,40,'android.intent.extra.INTENT'),(86,41,'android.intent.extra.TITLE'),(87,41,'android.intent.extra.INTENT'),(88,42,'android.intent.extra.INTENT'),(89,43,'android.intent.extra.TITLE'),(90,43,'android.intent.extra.INTENT'),(91,44,'android.intent.extra.TITLE'),(92,44,'android.intent.extra.INTENT'),(93,45,'android.intent.extra.shortcut.NAME'),(94,45,'android.intent.extra.shortcut.ICON'),(95,45,'android.intent.extra.shortcut.INTENT'),(96,47,'position');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,6,2),(7,7,1),(8,8,4),(9,9,1),(10,10,5),(11,11,2),(12,12,2),(13,13,6),(14,14,7),(15,15,4),(16,16,4),(17,17,8),(18,18,1),(19,19,4),(20,20,4),(21,21,4),(22,22,8),(23,24,9),(24,25,10),(25,26,11),(26,26,12),(27,26,13),(28,26,14),(29,26,4),(30,27,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,7,1),(5,9,2),(6,10,3),(7,15,4),(8,16,4),(9,17,5),(10,17,3),(11,18,1),(12,19,4),(13,20,4),(14,22,3),(15,22,5),(16,23,1),(17,26,4);
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
INSERT INTO `IFData` VALUES (1,22,'bestapp','bestactivity',NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android.cursor.dir','contact'),(2,2,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.apperhand.app.text.faker'),(2,11,'com.AlDiApps.FlyingOverTheOceanlite'),(3,13,'com.AlDiApps.FlyingOverTheOceanlite'),(4,16,'org.tonee.mathboard'),(5,18,'org.tonee.mathboard'),(6,20,'org.tonee.mathboard'),(7,19,'com.mai.livewallpaper.kaleidoscopegamelite'),(8,21,'com.mai.livewallpaper.kaleidoscopegamelite'),(9,22,'org.tonee.mathboard'),(10,23,'org.tonee.mathboard'),(11,24,'org.tonee.mathboard'),(12,29,'org.tonee.mathboard'),(13,30,'uk.co.ashtonbrsc.android.starpulse.ad'),(14,32,'org.tonee.mathboard'),(15,31,'uk.co.ashtonbrsc.android.starpulse.ad'),(16,33,'uk.co.ashtonbrsc.android.starpulse.ad'),(17,34,'org.tonee.mathboard'),(18,35,'uk.co.ashtonbrsc.android.starpulse.ad'),(19,47,'uk.co.ashtonbrsc.android.starpulse.ad'),(20,48,'uk.co.ashtonbrsc.android.starpulse.ad'),(21,49,'uk.co.ashtonbrsc.android.starpulse.ad');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,9,0),(7,14,0),(8,22,0),(9,24,0),(10,28,0),(11,29,0),(12,32,0),(13,33,0),(14,34,0),(15,38,0),(16,38,0),(17,42,0),(18,42,0),(19,44,0),(20,46,0),(21,38,0),(22,54,0),(23,56,0),(24,58,0),(25,60,0),(26,64,0),(27,66,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,10,1,0),(5,12,0,0),(6,15,1,0),(7,16,1,0),(8,17,1,0),(9,20,1,0),(10,21,1,0),(11,27,0,0),(12,28,1,0),(13,27,0,0),(14,30,1,0),(15,32,1,0),(16,34,0,0),(17,35,1,0),(18,36,0,0),(19,37,0,0),(20,38,0,0),(21,37,0,0),(22,40,0,0),(23,42,0,0),(24,43,0,0),(25,44,1,0),(26,44,1,0),(27,44,1,0),(28,46,1,0),(29,47,0,0),(30,49,0,0),(31,49,0,0),(32,50,0,0),(33,49,0,0),(34,52,0,0),(35,49,0,0),(36,54,1,0),(37,57,1,0),(38,57,1,0),(39,57,1,0),(40,57,1,0),(41,57,1,0),(42,57,1,0),(43,57,1,0),(44,57,1,0),(45,60,1,0),(46,61,1,0),(47,62,0,0),(48,63,0,0),(49,64,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'feel.mylove.valentine.AdContentProvider');
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
INSERT INTO `PermissionStrings` VALUES (29,'android.permission.ACCESS_COARSE_LOCATION'),(33,'android.permission.ACCESS_FINE_LOCATION'),(35,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(18,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(25,'android.permission.BIND_WALLPAPER'),(32,'android.permission.CAMERA'),(30,'android.permission.GET_ACCOUNTS'),(11,'android.permission.INTERNET'),(31,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(22,'android.permission.READ_CONTACTS'),(27,'android.permission.READ_EXTERNAL_STORAGE'),(9,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(26,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.RECORD_AUDIO'),(28,'android.permission.SET_WALLPAPER'),(24,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(13,'com.fede.launcher.permission.READ_SETTINGS'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(16,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(20,'com.motorola.launcher.permission.READ_SETTINGS'),(14,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,65,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://mms-sms/conversations/(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.reactor.livewallpaper.sakurapro',NULL,NULL,NULL),(12,NULL,NULL,'http://aldiapps.blogspot.com/',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.mai.livewallpaper.hyperspace',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.reactor.game.torus',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(26,NULL,NULL,'market://search?q=pub:\"Go Wallpaper Dev Team\"',NULL,NULL,NULL),(27,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(28,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(33,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(34,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(35,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(36,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(37,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(38,NULL,NULL,'market://search?q=pub:AshtonBRSC',NULL,NULL,NULL),(39,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,1),(2,5,2),(3,6,3),(4,7,4),(5,8,5),(6,11,7),(7,13,8),(8,14,9),(9,14,10),(10,18,14),(11,18,15),(12,19,16),(13,22,18),(14,23,19),(15,24,20),(16,25,21),(17,26,22),(18,29,23),(19,31,24),(20,33,25),(21,39,27),(22,39,28),(23,41,29),(24,45,30),(25,48,31),(26,51,32),(27,53,33),(28,55,34),(29,56,35),(30,58,36),(31,59,37),(32,65,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,20),(21,2,1),(22,2,5),(23,2,6),(24,2,7),(25,3,1),(26,2,8),(27,3,2),(28,2,9),(29,3,4),(30,2,10),(31,3,5),(32,2,11),(33,3,6),(34,2,12),(35,3,7),(36,2,13),(37,3,8),(38,2,15),(39,3,9),(40,2,19),(41,3,10),(42,2,21),(43,3,11),(44,2,20),(45,3,12),(46,2,23),(47,3,13),(48,2,22),(49,3,14),(50,2,24),(51,3,15),(52,3,16),(53,3,19),(54,3,20),(55,4,1),(56,4,2),(57,4,4),(58,4,5),(59,4,6),(60,4,7),(61,4,8),(62,4,9),(63,4,10),(64,4,11),(65,4,12),(66,4,15),(67,4,16),(68,4,19),(69,4,18),(70,4,20),(71,4,26),(72,5,1),(73,5,2),(74,5,3),(75,5,4),(76,5,5),(77,5,6),(78,5,7),(79,5,8),(80,5,9),(81,5,10),(82,5,11),(83,5,12),(84,5,15),(85,5,16),(86,5,19),(87,5,20),(88,6,1),(89,6,2),(90,6,3),(91,6,4),(92,6,5),(93,6,6),(94,6,7),(95,6,8),(96,6,9),(97,6,10),(98,6,11),(99,6,12),(100,6,13),(101,6,14),(102,6,15),(103,6,17),(104,6,16),(105,6,19),(106,6,18),(107,6,20),(108,6,24),(109,6,27),(110,6,26),(111,6,29),(112,6,28),(113,6,31),(114,6,30),(115,6,34),(116,6,35),(117,6,32),(118,6,33),(119,7,1),(120,7,2),(121,7,33),(122,7,4),(123,7,5),(124,7,6),(125,7,7),(126,7,8),(127,7,9),(128,7,10),(129,7,11),(130,7,12),(131,7,13),(132,7,14),(133,7,15),(134,7,16),(135,7,19),(136,7,18),(137,7,20),(138,7,24),(139,7,26),(140,7,29);
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
