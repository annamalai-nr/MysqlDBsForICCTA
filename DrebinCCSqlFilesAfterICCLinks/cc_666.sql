-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_666
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
INSERT INTO `ActionStrings` VALUES (17,'NULL-CONSTANT'),(11,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.DIAL'),(20,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.VIEW'),(14,'android.net.wifi.WIFI_STATE_CHANGED'),(6,'android.service.wallpaper.WallpaperService'),(12,'com.airpush.android.PushServiceStart12138'),(7,'com.airpush.android.PushServiceStart26576'),(8,'com.airpush.android.PushServiceStart35740'),(10,'com.airpush.android.PushServiceStart48075'),(5,'com.airpush.android.PushServiceStart49339'),(9,'com.android.action_PUSHADSACTIVITY'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(21,'com.apperhand.action.show.eula'),(2,'com.applovin.sdk.AppLovinService'),(4,'com.senddroid.AdServicecom.sounds.effects');
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
INSERT INTO `Applications` VALUES (1,'com.aquarium.fish.live.lock',3),(2,'com.jigsaw.jigswacarrrr',3),(3,'com.sounds.effects',9),(4,'com.apps.andromadhu.benzslideme',2),(5,'com.luiso.games1russ',5),(6,'com.wimolife.wallpaper.iLive',21),(7,'com.shootinggames.swattraining',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.aquarium.fish.live.lock.SurfaceviewtestActivity'),(2,1,'com.aquarium.fish.live.lock.PrefActivity'),(3,1,'com.aquarium.fish.live.lock.SplashActivity'),(4,1,'com.apperhand.device.android.EULAActivity'),(5,1,'com.zapyAItb.ELMOuXlg107408.OptinActivity'),(6,1,'com.zapyAItb.ELMOuXlg107408.SmartWallActivity'),(7,1,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(8,1,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(9,1,'com.chartboost.sdk.CBDialogActivity'),(10,1,'com.aquarium.fish.live.lock.LockService'),(11,1,'com.apperhand.device.android.AndroidSDKProvider'),(12,1,'com.applovin.sdk.AppLovinService'),(13,1,'com.zapyAItb.ELMOuXlg107408.PushService'),(14,1,'com.adnotify.NotificationService'),(15,1,'com.aquarium.fish.live.lock.AppService'),(16,1,'com.pad.android.xappad.AdNotification'),(17,1,'com.pad.android.xappad.AdReminderNotification'),(18,1,'com.applovin.sdk.AppLovinNotificationReceiver'),(19,1,'com.zapyAItb.ELMOuXlg107408.BootReceiver'),(20,1,'com.adnotify.BootReceiver'),(21,1,'com.adnotify.MessageReceiver'),(22,2,'com.car.racing.puzzlegame.JigdrawPuzzleMain'),(23,2,'com.car.racing.puzzlegame.Ads'),(24,2,'com.car.racing.puzzlegame.PreferSettingActivity'),(25,2,'com.moolah.NotificationService'),(26,2,'com.apperhand.device.android.AndroidSDKProvider'),(27,2,'com.moolah.MessageReceiver'),(28,2,'com.moolah.BootReceiver'),(29,2,'com.Leadbolt.AdNotification'),(30,2,'com.car.racing.puzzlegame.BootReceiver'),(31,3,'com.sounds.effects.IntroActivity_'),(32,3,'com.sounds.effects.RateActivity'),(33,3,'com.airpush.android.PushAds'),(34,3,'com.apperhand.device.android.AndroidSDKProvider'),(35,3,'com.senddroid.AdService'),(36,3,'com.airpush.android.PushService'),(37,3,'com.airpush.android.UserDetailsReceiver'),(38,3,'com.airpush.android.MessageReceiver'),(39,3,'com.airpush.android.DeliveryReceiver'),(40,3,'com.Leadbolt.AdNotification'),(41,3,'com.sounds.effects.BootReceiver'),(42,4,'com.apps.andromadhu.benzslideme.LiveWallpaperTemplateSettings'),(43,4,'com.airpush.android.PushAds'),(44,5,'com.luiso.games1russ.TabSettingsActivity'),(45,4,'com.apperhand.device.android.AndroidSDKProvider'),(46,5,'com.luiso.games1russ.LiveWallpaperSettings'),(47,4,'com.apps.andromadhu.benzslideme.LiveWallpaperTemplate'),(48,5,'com.airpush.android.PushAds'),(49,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(50,5,'com.luiso.games1russ.SampleLiveWallpaperService'),(51,4,'com.airpush.android.PushService'),(52,5,'com.airpush.android.PushService'),(53,4,'com.airpush.android.UserDetailsReceiver'),(54,4,'com.airpush.android.MessageReceiver'),(55,5,'com.apperhand.device.android.AndroidSDKProvider'),(56,4,'com.airpush.android.DeliveryReceiver'),(57,5,'com.airpush.android.UserDetailsReceiver'),(58,4,'com.apps.andromadhu.benzslideme.BootReceiver'),(59,5,'com.airpush.android.MessageReceiver'),(60,5,'com.airpush.android.DeliveryReceiver'),(61,5,'com.luiso.games1russ.BootReceiver'),(62,7,'com.shootinggames.swattraining.MainActivity'),(63,6,'com.wimolife.wallpaper.iLive.iLiveSettings'),(64,7,'com.shootinggames.swattraining.Ranking'),(65,6,'com.wimolife.wallpaper.iLive.WAPS_Activity'),(66,7,'com.shootinggames.swattraining.EditProfile'),(67,7,'com.shootinggames.swattraining.AppsList'),(68,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(69,6,'com.wimolife.wallpaper.iLive.LWActivity'),(70,7,'com.google.ads.AdActivity'),(71,7,'com.airpush.android.PushAds'),(72,6,'com.airpush.android.PushAds'),(73,7,'com.shootinggames.swattraining.LiveWallpaper'),(74,6,'net.speedtong.WebViewActivity'),(75,6,'com.kuguo.openads.AdsOfferListActivity'),(76,7,'com.apperhand.device.android.AndroidSDKProvider'),(77,6,'com.kuguo.pushads.PushAdsActivity'),(78,7,'com.airpush.android.PushService'),(79,7,'com.shootinggames.swattraining.Widget'),(80,6,'net.miidi.credit.MiidiWebViewActivity'),(81,6,'com.wimolife.wallpaper.iLive.iLiveWallpaper'),(82,7,'com.airpush.android.UserDetailsReceiver'),(83,6,'com.airpush.android.PushService'),(84,7,'com.airpush.android.MessageReceiver'),(85,7,'com.airpush.android.DeliveryReceiver'),(86,6,'com.apperhand.device.android.AndroidSDKProvider'),(87,7,'com.shootinggames.swattraining.BootReceiver'),(88,6,'com.kuguo.pushads.AdsService'),(89,6,'net.miidi.credit.MiidiCreditService'),(90,6,'com.airpush.android.UserDetailsReceiver'),(91,6,'com.airpush.android.MessageReceiver'),(92,6,'com.airpush.android.DeliveryReceiver'),(93,6,'com.wimolife.wallpaper.iLive.BootReceiver'),(94,6,'com.kuguo.pushads.AdsReceiver'),(95,1,'com.zapyAItb.ELMOuXlg107408.h'),(96,1,'com.pad.android.xappad.AdController$AdIcon'),(97,1,'com.apperhand.device.android.a.e'),(98,1,'com.apperhand.device.android.a.b'),(99,1,'com.aquarium.fish.live.lock.PrefActivity$1'),(100,1,'com.pontiflex.mobile.webview.sdk.b'),(101,1,'com.apperhand.device.android.EULAActivity$a$1'),(102,1,'com.aquarium.fish.live.lock.LockService$1'),(103,1,'com.pontiflex.mobile.webview.sdk.activities.NotificationProcessorActivity$a'),(104,2,'com.apperhand.device.android.a.d'),(105,2,'com.apperhand.device.android.a.b'),(106,1,'com.apperhand.device.android.a.c'),(107,2,'com.Leadbolt.AdController');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'remindericon'),(2,17,'remindertext'),(3,6,'creativeid'),(4,5,'creativeid'),(5,5,'adtype'),(6,6,'sms'),(7,5,'sms'),(8,12,'applovin.sdk.key'),(9,18,'applovin.sdk.key'),(10,16,'sectionid'),(11,12,'applovin.sdk.ad_refresh_seconds'),(12,18,'applovin.sdk.ad_refresh_seconds'),(13,11,'SERVICE_MODE'),(14,13,'APIKEY'),(15,12,'applovin.sdk.verbose_logging'),(16,18,'applovin.sdk.verbose_logging'),(17,13,'appId'),(18,11,'APPLICATION_ID'),(19,6,'url'),(20,5,'url'),(21,13,'testMode'),(22,11,'USER_AGENT'),(23,13,'campId'),(24,6,'adtype'),(25,17,'alarmtype'),(26,13,'creativeId'),(27,6,'title'),(28,5,'title'),(29,13,'adtype'),(30,6,'campaignid'),(31,5,'campaignid'),(32,21,'notif_sig'),(33,6,'number'),(34,26,'DEVELOPER_ID'),(35,5,'number'),(36,22,'preferences_level_setting_modified'),(37,11,'M_SERVER_URL'),(38,26,'SERVICE_MODE'),(39,11,'DEVELOPER_ID'),(40,22,'preferences_audio_setting_modified'),(41,13,'sms'),(42,2,'com.zapyAItb.ELMOuXlg107408.APPID'),(43,6,'buttontxt'),(44,5,'buttontxt'),(45,26,'M_SERVER_URL'),(46,17,'remindertitle'),(47,17,'sectionid'),(48,11,'eulaAcceptDetails'),(49,13,'header'),(50,2,'com.zapyAItb.ELMOuXlg107408.APIKEY'),(51,26,'APPLICATION_ID'),(52,29,'sectionid'),(53,13,'number'),(54,26,'FIRST_RUN'),(55,27,'notif_sig'),(56,26,'USER_AGENT'),(57,11,'FIRST_RUN'),(58,13,'url'),(59,12,'applovin.sdk.autoupdate_disabled'),(60,18,'applovin.sdk.autoupdate_disabled');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'s',1,32,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,32,NULL),(51,51,'s',1,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',1,32,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'s',1,32,NULL),(82,82,'r',0,NULL,NULL),(83,83,'s',1,NULL,NULL),(84,84,'r',0,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'r',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,92,'r',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,101,'r',1,NULL,NULL),(96,102,'r',1,NULL,NULL),(97,18,'r',1,NULL,NULL),(98,17,'r',1,NULL,NULL),(99,16,'r',1,NULL,NULL),(100,21,'r',1,NULL,NULL),(101,19,'r',1,NULL,NULL),(102,103,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,13),(2,2,2),(3,3,2),(4,4,11),(5,5,11),(6,6,2),(7,7,2),(8,8,11),(9,9,21),(10,10,13),(11,11,11),(12,12,11),(13,13,26),(14,14,2),(15,15,27),(16,16,26),(17,17,26),(18,18,26),(19,19,2),(20,20,22),(21,21,26),(22,22,13),(23,23,11),(24,24,26),(25,25,2),(26,26,22),(27,27,11),(28,28,22),(29,28,29),(30,28,30),(31,29,22),(32,30,2),(33,31,22),(34,32,2),(35,33,22),(36,33,30),(37,33,29),(38,34,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,95,'<com.zapyAItb.ELMOuXlg107408.h: void b()>',17,'a',NULL),(2,96,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',60,'r',NULL),(3,96,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',91,'p',NULL),(4,97,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(5,98,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(6,99,'<com.aquarium.fish.live.lock.PrefActivity$1: boolean onPreferenceClick(android.preference.Preference)>',12,'s',NULL),(7,100,'<com.pontiflex.mobile.webview.sdk.b: void b(android.app.Activity)>',25,'a',NULL),(8,97,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(9,21,'<com.adnotify.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(10,95,'<com.zapyAItb.ELMOuXlg107408.h: void a()>',17,'a',NULL),(11,98,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(12,97,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(13,104,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(14,11,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(15,27,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(16,105,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(17,104,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(18,105,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(19,100,'<com.pontiflex.mobile.webview.sdk.b: void a(android.app.Activity)>',23,'a',NULL),(20,22,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(21,104,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(22,95,'<com.zapyAItb.ELMOuXlg107408.h: void c()>',11,'a',NULL),(23,98,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(24,105,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(25,2,'<com.aquarium.fish.live.lock.PrefActivity: void onCreate(android.os.Bundle)>',44,'s',NULL),(26,22,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: void chooseGameImage()>',5,'a',NULL),(27,106,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(28,107,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(29,22,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(30,2,'<com.aquarium.fish.live.lock.PrefActivity: void a()>',7,'s',NULL),(31,26,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(32,11,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context)>',60,'a',NULL),(33,107,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(34,100,'<com.pontiflex.mobile.webview.sdk.b: void a(com.pontiflex.mobile.webview.sdk.c)>',77,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,15),(2,2,16),(3,3,16),(4,4,16),(5,5,16),(6,8,17),(7,9,17),(8,10,18),(9,11,16),(10,13,17),(11,14,17),(12,18,15),(13,20,20),(14,21,21),(15,22,21),(16,23,15),(17,28,16),(18,30,16),(19,31,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,6,'com/aquarium/fish/live/lock/LockService'),(2,7,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(3,8,'com/adnotify/NotificationService'),(4,9,'com/adnotify/NotificationService'),(5,13,'com/moolah/NotificationService'),(6,12,'com/apperhand/device/android/AndroidSDKProvider'),(7,14,'com/moolah/NotificationService'),(8,15,'com/apperhand/device/android/AndroidSDKProvider'),(9,16,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(10,17,'com/car/racing/puzzlegame/PreferSettingActivity'),(11,19,'com/aquarium/fish/live/lock/LockService'),(12,24,'com/aquarium/fish/live/lock/LockService'),(13,26,'com/apperhand/device/android/EULAActivity'),(14,25,'com/apperhand/device/android/AndroidSDKProvider'),(15,27,'com/apperhand/device/android/EULAActivity'),(16,29,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,4),(2,18,13),(3,23,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,1,'address'),(3,2,'android.intent.extra.shortcut.NAME'),(4,2,'android.intent.extra.shortcut.ICON_RESOURCE'),(5,2,'android.intent.extra.shortcut.INTENT'),(6,3,'android.intent.extra.shortcut.NAME'),(7,3,'android.intent.extra.shortcut.ICON'),(8,3,'android.intent.extra.shortcut.ICON_RESOURCE'),(9,3,'android.intent.extra.shortcut.INTENT'),(10,4,'android.intent.extra.shortcut.NAME'),(11,4,'android.intent.extra.shortcut.ICON'),(12,4,'android.intent.extra.shortcut.INTENT'),(13,5,'android.intent.extra.shortcut.NAME'),(14,5,'android.intent.extra.shortcut.ICON'),(15,5,'android.intent.extra.shortcut.INTENT'),(16,7,'singleoffer'),(17,7,'offerCount'),(18,8,'test_mode'),(19,9,'notif_sig'),(20,9,'test_mode'),(21,11,'android.intent.extra.shortcut.NAME'),(22,11,'android.intent.extra.shortcut.ICON'),(23,11,'android.intent.extra.shortcut.INTENT'),(24,12,'M_SERVER_URL'),(25,12,'USER_AGENT'),(26,12,'SERVICE_MODE'),(27,13,'test_mode'),(28,12,'FIRST_RUN'),(29,12,'DEVELOPER_ID'),(30,12,'APPLICATION_ID'),(31,14,'notif_sig'),(32,14,'test_mode'),(33,15,'eulaAcceptDetails'),(34,15,'M_SERVER_URL'),(35,15,'USER_AGENT'),(36,15,'SERVICE_MODE'),(37,15,'FIRST_RUN'),(38,15,'DEVELOPER_ID'),(39,15,'APPLICATION_ID'),(40,22,'footerHTML'),(41,22,'bodyHTML'),(42,23,'sms_body'),(43,25,'M_SERVER_URL'),(44,25,'USER_AGENT'),(45,25,'SERVICE_MODE'),(46,25,'FIRST_RUN'),(47,25,'DEVELOPER_ID'),(48,25,'APPLICATION_ID'),(49,28,'android.intent.extra.shortcut.NAME'),(50,28,'android.intent.extra.shortcut.ICON_RESOURCE'),(51,28,'android.intent.extra.shortcut.INTENT'),(52,29,'offerCount'),(53,30,'android.intent.extra.shortcut.NAME'),(54,30,'android.intent.extra.shortcut.ICON'),(55,30,'android.intent.extra.shortcut.ICON_RESOURCE'),(56,30,'android.intent.extra.shortcut.INTENT'),(57,31,'android.intent.extra.shortcut.NAME'),(58,31,'android.intent.extra.shortcut.ICON'),(59,31,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,1),(6,6,3),(7,7,3),(8,8,1),(9,9,4),(10,10,5),(11,11,3),(12,12,6),(13,13,6),(14,14,7),(15,15,8),(16,16,3),(17,17,3),(18,18,1),(19,19,1),(20,20,1),(21,21,6),(22,22,9),(23,23,10),(24,24,11),(25,25,6),(26,26,12),(27,27,3),(28,28,3),(29,29,13),(30,30,14),(31,31,19),(32,32,19),(33,33,19),(34,34,19),(35,35,19),(36,36,19),(37,37,19),(38,38,19),(39,39,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,2),(4,5,1),(5,6,2),(6,8,1),(7,11,2),(8,16,2),(9,17,2),(10,18,1),(11,19,3),(12,20,1),(13,22,3),(14,27,2),(15,28,2);
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
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android-dir','mms-sms'),(2,20,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,6,'com.aquarium.fish.live.lock'),(2,7,'com.aquarium.fish.live.lock'),(3,8,'com.aquarium.fish.live.lock'),(4,9,'com.aquarium.fish.live.lock'),(5,13,'com.jigsaw.jigswacarrrr'),(6,12,'com.aquarium.fish.live.lock'),(7,14,'com.jigsaw.jigswacarrrr'),(8,15,'com.aquarium.fish.live.lock'),(9,16,'com.aquarium.fish.live.lock'),(10,17,'com.jigsaw.jigswacarrrr'),(11,19,'com.aquarium.fish.live.lock'),(12,21,'com.aquarium.fish.live.lock'),(13,22,'com.aquarium.fish.live.lock'),(14,24,'com.aquarium.fish.live.lock'),(15,26,'com.aquarium.fish.live.lock'),(16,25,'com.jigsaw.jigswacarrrr'),(17,27,'com.aquarium.fish.live.lock'),(18,29,'com.aquarium.fish.live.lock');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,12,0),(3,19,0),(4,20,0),(5,23,0),(6,28,0),(7,30,0),(8,31,0),(9,35,0),(10,36,0),(11,41,0),(12,47,0),(13,50,0),(14,51,0),(15,52,0),(16,58,0),(17,61,0),(18,62,0),(19,65,0),(20,69,0),(21,73,0),(22,77,0),(23,78,0),(24,79,0),(25,81,0),(26,83,0),(27,87,0),(28,93,0),(29,94,0),(30,94,0),(31,95,0),(32,96,0),(33,97,0),(34,98,0),(35,99,0),(36,20,0),(37,100,0),(38,101,0),(39,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,4,1,0),(6,6,0,0),(7,7,0,0),(8,9,0,0),(9,9,0,0),(10,10,1,0),(11,13,1,0),(12,14,0,0),(13,15,0,0),(14,15,0,0),(15,14,0,0),(16,19,0,0),(17,20,0,0),(18,22,1,0),(19,25,0,0),(20,26,1,0),(21,27,1,0),(22,27,1,0),(23,29,1,0),(24,30,0,0),(25,31,0,0),(26,32,0,0),(27,32,0,0),(28,33,1,0),(29,34,0,0),(30,33,1,0),(31,33,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,19,10,2,NULL),(2,24,10,2,NULL),(3,23,3,2,NULL),(4,12,11,2,NULL),(5,12,26,2,NULL),(6,12,34,2,NULL),(7,12,45,2,NULL),(8,12,55,2,NULL),(9,12,76,2,NULL),(10,12,86,2,NULL),(11,15,11,2,NULL),(12,15,26,2,NULL),(13,15,34,2,NULL),(14,15,45,2,NULL),(15,15,55,2,NULL),(16,15,76,2,NULL),(17,15,86,2,NULL),(18,26,4,2,NULL),(19,27,4,2,NULL),(20,23,12,2,NULL),(21,23,99,2,NULL),(22,23,98,2,NULL),(23,23,97,2,NULL),(24,23,19,2,NULL),(25,23,101,2,NULL),(26,23,20,2,NULL),(27,8,14,2,NULL),(28,9,14,2,NULL),(29,23,100,2,NULL),(30,23,95,2,NULL),(31,23,96,2,NULL),(32,23,102,2,NULL),(33,23,31,2,NULL),(34,23,35,2,NULL),(35,23,36,2,NULL),(36,23,41,2,NULL),(37,17,24,2,NULL),(38,23,23,2,NULL),(39,23,28,2,NULL),(40,23,30,2,NULL),(41,23,47,2,NULL),(42,23,51,2,NULL),(43,23,58,2,NULL),(44,23,50,2,NULL),(45,23,52,2,NULL),(46,23,61,2,NULL),(47,23,65,2,NULL),(48,23,69,2,NULL),(49,23,77,2,NULL),(50,23,81,2,NULL),(51,23,83,2,NULL),(52,23,93,2,NULL),(53,23,94,2,NULL),(54,23,62,2,NULL),(55,23,73,2,NULL),(56,23,78,2,NULL),(57,23,79,2,NULL),(58,23,87,2,NULL),(59,25,11,2,NULL),(60,25,26,2,NULL),(61,25,34,2,NULL),(62,25,45,2,NULL),(63,25,55,2,NULL),(64,25,76,2,NULL),(65,25,86,2,NULL),(66,13,25,2,NULL),(67,14,25,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(29,'android.permission.CALL_PHONE'),(19,'android.permission.DISABLE_KEYGUARD'),(31,'android.permission.FLASHLIGHT'),(7,'android.permission.GET_ACCOUNTS'),(35,'android.permission.INSTALL_PACKAGES'),(20,'android.permission.INTERNET'),(33,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(28,'android.permission.SET_WALLPAPER'),(34,'android.permission.SET_WALLPAPER_HINTS'),(24,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SETTINGS'),(26,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(25,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(27,'com.motorola.launcher.permission.READ_SETTINGS'),(23,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'sms:',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,5,2),(3,8,3),(4,11,5),(5,12,6),(6,12,7),(7,16,8),(8,17,9),(9,18,10),(10,21,11),(11,21,12),(12,23,14),(13,24,15),(14,28,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,27),(27,1,26),(28,2,1),(29,2,3),(30,2,4),(31,2,5),(32,2,7),(33,2,8),(34,2,9),(35,2,10),(36,2,11),(37,2,13),(38,2,14),(39,2,15),(40,2,17),(41,2,16),(42,2,18),(43,2,21),(44,2,20),(45,2,23),(46,2,27),(47,2,26),(48,2,29),(49,2,28),(50,3,1),(51,3,2),(52,3,3),(53,3,4),(54,3,6),(55,3,8),(56,3,9),(57,3,10),(58,3,11),(59,3,12),(60,3,13),(61,3,14),(62,3,15),(63,3,17),(64,3,16),(65,3,21),(66,3,20),(67,3,23),(68,3,22),(69,3,25),(70,3,24),(71,3,27),(72,3,26),(73,3,30),(74,5,1),(75,4,2),(76,5,2),(77,4,4),(78,5,3),(79,4,5),(80,5,4),(81,4,6),(82,5,5),(83,4,8),(84,5,8),(85,4,9),(86,5,9),(87,4,10),(88,5,10),(89,4,11),(90,5,11),(91,4,12),(92,5,13),(93,4,14),(94,5,14),(95,4,15),(96,5,17),(97,4,17),(98,5,16),(99,4,16),(100,5,18),(101,4,18),(102,5,21),(103,4,20),(104,5,20),(105,4,25),(106,5,23),(107,4,24),(108,5,25),(109,4,27),(110,5,24),(111,4,26),(112,5,27),(113,4,31),(114,5,26),(115,5,28),(116,5,31),(117,5,30),(118,6,1),(119,6,2),(120,6,3),(121,6,4),(122,6,5),(123,6,8),(124,6,9),(125,6,10),(126,7,1),(127,6,11),(128,7,3),(129,6,12),(130,7,4),(131,6,13),(132,7,5),(133,6,14),(134,7,6),(135,6,15),(136,7,8),(137,6,17),(138,7,9),(139,6,16),(140,7,10),(141,6,18),(142,7,13),(143,6,21),(144,7,14),(145,6,20),(146,7,17),(147,6,23),(148,7,16),(149,6,25),(150,7,18),(151,6,24),(152,7,21),(153,6,27),(154,7,20),(155,7,23),(156,7,25),(157,6,26),(158,7,27),(159,6,28),(160,6,34),(161,6,35),(162,6,33);
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

-- Dump completed on 2015-10-12  3:31:18
