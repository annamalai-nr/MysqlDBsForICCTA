-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_712
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(22,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.NEW_OUTGOING_CALL'),(15,'android.intent.action.PHONE_STATE'),(24,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.USER_PRESENT'),(21,'android.intent.action.VIEW'),(20,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(2,'android.service.wallpaper.WallpaperService'),(3,'com.airpush.android.PushServiceStart33132'),(16,'com.airpush.android.PushServiceStart39872'),(6,'com.airpush.android.PushServiceStart48442'),(12,'com.airpush.android.PushServiceStart58450'),(19,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.android.vending.INSTALL_REFERRER'),(9,'com.android.vending.billing.IN_APP_NOTIFY'),(23,'com.android.vending.billing.MarketBillingService.BIND'),(10,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(11,'com.android.vending.billing.RESPONSE_CODE'),(27,'com.example.dungeons.GET_PURCHASE_INFORMATION'),(4,'com.jiubang.goscreenlock.theme'),(13,'com.senddroid.AdServicecom.BikeRiderGold'),(7,'com.senddroid.AdServicecom.custom.lwp.MagictouchWaterwavesphoneone'),(17,'com.senddroid.AdServiceorg.longlong.bss');
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
INSERT INTO `Applications` VALUES (1,'com.driftwood.wallpaper.moonbun.free',12),(2,'com.adamantsoft.android.littleprincerose',1),(3,'com.free_apps.galaxy',13),(4,'com.custom.lwp.MagictouchWaterwavesphoneone',4),(5,'com.scoompa.voicechanger',16),(6,'com.BikeRiderGold',3),(7,'org.longlong.bss',22);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.driftwood.wallpaper.moonbun.free.MoonBunWallpaperSettings'),(2,1,'com.driftwood.wallpaper.moonbun.free.OpenActivity'),(3,1,'com.driftwood.wallpaper.moonbun.free.WallpaperMoonBun'),(4,1,'com.apperhand.device.android.AndroidSDKProvider'),(5,1,'com.Leadbolt.AdNotification'),(6,2,'com.adamantsoft.android.animframework.SplashActivity'),(7,2,'com.adamantsoft.android.animframework.MainActivity'),(8,2,'com.airpush.android.PushAds'),(9,2,'com.adamantsoft.android.animframework.LiveWallpaper'),(10,3,'com.free_apps.galaxy.GOLockerInstallDialog'),(11,2,'com.apperhand.device.android.AndroidSDKProvider'),(12,4,'com.custom.lwp.MagictouchWaterwavesphoneone.vickyWallpaperOptions'),(13,2,'com.airpush.android.PushService'),(14,4,'com.custom.lwp.MagictouchWaterwavesphoneone.vickyLauncher'),(15,2,'com.airpush.android.UserDetailsReceiver'),(16,4,'com.custom.uilib.FilePicker'),(17,3,'com.kcWCkrvt.bmHZlWxI109703.OptinActivity'),(18,2,'com.airpush.android.MessageReceiver'),(19,4,'com.airpush.android.PushAds'),(20,3,'com.kcWCkrvt.bmHZlWxI109703.SmartWallActivity'),(21,2,'com.airpush.android.DeliveryReceiver'),(22,4,'com.custom.lwp.MagictouchWaterwavesphoneone.vickyWallpaperService'),(23,3,'com.free_apps.galaxy.srv'),(24,2,'com.adamantsoft.android.littleprincerose.BootReceiver'),(25,3,'com.free_apps.galaxy.GoDownloadServiceervice'),(26,4,'com.apperhand.device.android.AndroidSDKProvider'),(27,3,'com.kcWCkrvt.bmHZlWxI109703.PushService'),(28,4,'com.airpush.android.PushService'),(29,3,'com.apperhand.device.android.AndroidSDKProvider'),(30,3,'com.free_apps.galaxy.rcvr'),(31,4,'com.senddroid.AdService'),(32,3,'com.kcWCkrvt.bmHZlWxI109703.BootReceiver'),(33,4,'com.airpush.android.UserDetailsReceiver'),(34,3,'com.Leadbolt.AdNotification'),(35,4,'com.airpush.android.MessageReceiver'),(36,4,'com.airpush.android.DeliveryReceiver'),(37,4,'com.Leadbolt.AdNotification'),(38,4,'com.custom.lwp.MagictouchWaterwavesphoneone.BootReceiver'),(39,5,'com.scoompa.voicechanger.LoaderActivity'),(40,5,'com.scoompa.voicechanger.VoiceChanger'),(41,5,'com.scoompa.voicechanger.OptionsActivity'),(42,5,'com.scoompa.voicechanger.FileListActivity'),(43,5,'com.scoompa.voicechanger.FeedbackActivity'),(44,5,'com.scoompa.voicechanger.UnlockFeaturesActivity'),(45,5,'com.google.ads.AdActivity'),(46,5,'com.scoompa.voicechanger.billing.BillingService'),(47,5,'com.apperhand.device.android.AndroidSDKProvider'),(48,5,'com.scoompa.voicechanger.OnInstallReceiver'),(49,5,'com.scoompa.voicechanger.billing.BillingReceiver'),(50,6,'com.airpush.android.PushAds'),(51,6,'com.sellaring.sdk.PostCallScreenActivity'),(52,6,'com.BikeRiderGold.BikeRider'),(53,6,'com.google.ads.AdActivity'),(54,6,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(55,6,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(56,6,'com.apperhand.device.android.AndroidSDKProvider'),(57,6,'com.airpush.android.PushService'),(58,6,'com.senddroid.AdService'),(59,6,'com.BikeRiderGold.BootReceiver'),(60,6,'com.Leadbolt.AdNotification'),(61,6,'com.airpush.android.UserDetailsReceiver'),(62,6,'com.airpush.android.MessageReceiver'),(63,6,'com.airpush.android.DeliveryReceiver'),(64,6,'com.sellaring.sdk.AlarmReceiver'),(65,6,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(66,6,'com.sellaring.sdk.PhoneStateReceiver'),(67,7,'org.longlong.bss.Login'),(68,7,'org.longlong.bss.Main'),(69,7,'org.longlong.bss.Settings'),(70,7,'org.longlong.bss.TitleList'),(71,7,'org.longlong.bss.DisplayContent'),(72,7,'org.longlong.bss.AppWall'),(73,7,'org.longlong.bss.DonatePage'),(74,7,'com.google.ads.AdActivity'),(75,7,'com.airpush.android.PushAds'),(76,7,'com.airpush.android.PushService'),(77,7,'com.apperhand.device.android.AndroidSDKProvider'),(78,7,'com.senddroid.AdService'),(79,7,'org.longlong.bss.SReceiver'),(80,7,'com.Leadbolt.AdNotification'),(81,7,'com.airpush.android.UserDetailsReceiver'),(82,7,'com.airpush.android.MessageReceiver'),(83,7,'com.airpush.android.DeliveryReceiver'),(84,7,'org.longlong.bss.BootReceiver'),(85,1,'com.apperhand.device.android.a.e'),(86,1,'com.apperhand.device.android.a.a'),(87,1,'com.driftwood.wallpaper.moonbun.free.MoonBunWallpaperSettings$1'),(88,3,'com.Leadbolt.AdController'),(89,3,'com.kcWCkrvt.bmHZlWxI109703.HandleClicks'),(90,3,'com.apperhand.device.android.a.b'),(91,3,'com.apperhand.device.android.a.d'),(92,5,'com.apperhand.device.android.a.e'),(93,5,'com.scoompa.voicechanger.billing.c'),(94,5,'com.scoompa.common.android.FeedbackActivityBase$6'),(95,5,'com.scoompa.voicechanger.LoaderActivity$1'),(96,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(97,5,'com.scoompa.voicechanger.UnlockFeaturesActivity$1'),(98,5,'com.apperhand.device.android.a.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'USER_AGENT'),(2,4,'M_SERVER_URL'),(3,4,'APPLICATION_ID'),(4,5,'sectionid'),(5,4,'DEVELOPER_ID'),(6,4,'permanent'),(7,4,'SERVICE_MODE'),(8,4,'FIRST_RUN'),(9,17,'adtype'),(10,34,'sectionid'),(11,17,'campaignid'),(12,20,'campaignid'),(13,17,'creativeid'),(14,20,'creativeid'),(15,17,'number'),(16,20,'number'),(17,30,'com.kcWCkrvt.bmHZlWxI109703.APIKEY'),(18,10,'com.kcWCkrvt.bmHZlWxI109703.APIKEY'),(19,27,'number'),(20,27,'sms'),(21,27,'header'),(22,27,'APIKEY'),(23,20,'adtype'),(24,29,'USER_AGENT'),(25,27,'testMode'),(26,30,'com.kcWCkrvt.bmHZlWxI109703.APPID'),(27,10,'com.kcWCkrvt.bmHZlWxI109703.APPID'),(28,20,'url'),(29,29,'DEVELOPER_ID'),(30,27,'campId'),(31,29,'FIRST_RUN'),(32,27,'url'),(33,29,'M_SERVER_URL'),(34,27,'appId'),(35,17,'title'),(36,20,'title'),(37,17,'url'),(38,17,'buttontxt'),(39,20,'buttontxt'),(40,29,'APPLICATION_ID'),(41,27,'adtype'),(42,29,'SERVICE_MODE'),(43,17,'sms'),(44,20,'sms'),(45,27,'creativeId'),(46,48,'referrer'),(47,40,'fid'),(48,49,'inapp_signed_data'),(49,45,'action'),(50,49,'inapp_signature'),(51,44,'RESPONSE_CODE'),(52,46,'RESPONSE_CODE'),(53,44,'REQUEST_ID'),(54,46,'REQUEST_ID'),(55,44,'PURCHASE_INTENT'),(56,46,'PURCHASE_INTENT'),(57,49,'notification_id'),(58,47,'USER_AGENT'),(59,47,'FIRST_RUN'),(60,46,'notification_id'),(61,45,'com.google.ads.AdOpener'),(62,40,'sb'),(63,45,'params'),(64,47,'M_SERVER_URL'),(65,40,'fileId'),(66,40,'fp'),(67,47,'permanent'),(68,40,'sv'),(69,46,'inapp_signed_data'),(70,47,'APPLICATION_ID'),(71,40,'fin'),(72,47,'SERVICE_MODE'),(73,47,'DEVELOPER_ID'),(74,40,'se'),(75,43,'m'),(76,43,'e'),(77,46,'inapp_signature'),(78,43,'t');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',1,18,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,18,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'s',1,18,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',1,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',1,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,83,'r',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,3),(3,3,4),(4,4,4),(5,5,2),(6,6,4),(7,7,4),(8,8,4),(9,9,1),(10,10,34),(11,10,30),(12,11,27),(13,12,29),(14,13,10),(15,14,30),(16,14,34),(17,15,29),(18,16,10),(19,17,29),(20,18,10),(21,19,27),(22,20,27),(23,21,29),(24,22,29),(25,23,10),(26,24,10),(27,25,29),(28,26,40),(29,27,47),(30,28,46),(31,28,44),(32,29,44),(33,29,46),(34,30,46),(35,30,44),(36,31,47),(37,32,43),(38,33,49),(39,34,44),(40,34,46),(41,35,39),(42,36,40),(43,37,39),(44,38,44),(45,39,47),(46,40,40),(47,41,40),(48,42,49),(49,43,40),(50,44,47),(51,45,40),(52,46,40),(53,47,40),(54,48,45),(55,49,49),(56,50,47),(57,51,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,85,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(2,4,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(3,85,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(4,86,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(5,2,'<com.driftwood.wallpaper.moonbun.free.OpenActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(6,85,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(7,86,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(8,86,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(9,87,'<com.driftwood.wallpaper.moonbun.free.MoonBunWallpaperSettings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(10,88,'<com.Leadbolt.AdController: void displayIcon()>',91,'p',NULL),(11,89,'<com.kcWCkrvt.bmHZlWxI109703.HandleClicks: void callNumber()>',18,'a',NULL),(12,90,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(13,29,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(14,88,'<com.Leadbolt.AdController: void displayIcon()>',64,'r',NULL),(15,91,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(16,10,'<com.free_apps.galaxy.GOLockerInstallDialog: void onCreate(android.os.Bundle)>',5,'s',NULL),(17,91,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(18,10,'<com.free_apps.galaxy.GOLockerInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(19,89,'<com.kcWCkrvt.bmHZlWxI109703.HandleClicks: void displayUrl()>',11,'a',NULL),(20,89,'<com.kcWCkrvt.bmHZlWxI109703.HandleClicks: void sendSms()>',17,'a',NULL),(21,91,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(22,90,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(23,10,'<com.free_apps.galaxy.GOLockerInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(24,10,'<com.free_apps.galaxy.GOLockerInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(25,90,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(26,40,'<com.scoompa.voicechanger.VoiceChanger: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(27,92,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(28,93,'<com.scoompa.voicechanger.billing.c: void a(android.app.PendingIntent,android.content.Intent)>',29,'a',0),(29,93,'<com.scoompa.voicechanger.billing.c: void a(android.app.PendingIntent,android.content.Intent)>',29,'r',0),(30,93,'<com.scoompa.voicechanger.billing.c: void a(android.app.PendingIntent,android.content.Intent)>',29,'s',0),(31,92,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(32,94,'<com.scoompa.common.android.FeedbackActivityBase$6: void onClick(android.view.View)>',17,'a',NULL),(33,49,'<com.scoompa.voicechanger.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(34,46,'<com.scoompa.voicechanger.billing.BillingService: boolean h()>',3,'s',NULL),(35,95,'<com.scoompa.voicechanger.LoaderActivity$1: void onAnimationEnd(android.view.animation.Animation)>',6,'a',NULL),(36,40,'<com.scoompa.voicechanger.VoiceChanger: void a(com.scoompa.voicechanger.VoiceChanger,java.lang.String)>',44,'p',NULL),(37,47,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(38,97,'<com.scoompa.voicechanger.UnlockFeaturesActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(39,98,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(40,40,'<com.scoompa.voicechanger.VoiceChanger: void a(com.scoompa.voicechanger.VoiceChanger,int)>',72,'a',NULL),(41,40,'<com.scoompa.voicechanger.VoiceChanger: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(42,49,'<com.scoompa.voicechanger.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(43,40,'<com.scoompa.voicechanger.VoiceChanger: void a(com.scoompa.voicechanger.VoiceChanger,int)>',94,'a',NULL),(44,98,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(45,40,'<com.scoompa.voicechanger.VoiceChanger: void a(com.scoompa.voicechanger.VoiceChanger,int)>',90,'a',NULL),(46,40,'<com.scoompa.voicechanger.VoiceChanger: void a(com.scoompa.voicechanger.VoiceChanger,int)>',86,'a',NULL),(47,40,'<com.scoompa.voicechanger.VoiceChanger: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(48,45,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(49,49,'<com.scoompa.voicechanger.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(50,92,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(51,98,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,19),(2,4,20),(3,5,21),(4,6,22),(5,8,19),(6,9,19),(7,10,19),(8,12,19),(9,13,21),(10,14,21),(11,15,21),(12,16,1),(13,17,1),(14,20,21),(15,21,11),(16,22,23),(17,26,21),(18,27,25),(19,28,25),(20,29,25),(21,30,25),(22,31,25),(23,32,25),(24,33,25),(25,34,25),(26,36,10),(27,41,21),(28,42,26),(29,43,26),(30,44,27),(31,45,19);
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
INSERT INTO `ICategories` VALUES (1,16,1),(2,17,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/apperhand/device/android/AndroidSDKProvider'),(2,3,'com/apperhand/device/android/AndroidSDKProvider'),(3,7,'com/apperhand/device/android/AndroidSDKProvider'),(4,11,'com/free_apps/galaxy/srv'),(5,18,'com/free_apps/galaxy/GoDownloadService'),(6,19,'com/scoompa/voicechanger/FeedbackActivity'),(7,21,'com/scoompa/voicechanger/billing/BillingService'),(8,23,'com/scoompa/voicechanger/VoiceChanger'),(9,24,'com/apperhand/device/android/AndroidSDKProvider'),(10,25,'com/apperhand/device/android/AndroidSDKProvider'),(11,35,'com/scoompa/voicechanger/OptionsActivity'),(12,36,'com/scoompa/voicechanger/billing/BillingService'),(13,37,'com/scoompa/voicechanger/OptionsActivity'),(14,38,'com/scoompa/voicechanger/FeedbackActivity'),(15,39,'com/scoompa/voicechanger/FileListActivity'),(16,40,'com/scoompa/voicechanger/FileListActivity'),(17,44,'com/scoompa/voicechanger/billing/BillingService');
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
INSERT INTO `IData` VALUES (1,5,7),(2,6,9),(3,13,13),(4,14,14),(5,20,21),(6,26,23),(7,41,26),(8,42,27),(9,43,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'M_SERVER_URL'),(5,2,'USER_AGENT'),(6,2,'SERVICE_MODE'),(7,2,'FIRST_RUN'),(8,2,'DEVELOPER_ID'),(9,2,'APPLICATION_ID'),(10,3,'M_SERVER_URL'),(11,3,'USER_AGENT'),(12,3,'SERVICE_MODE'),(13,3,'FIRST_RUN'),(14,3,'DEVELOPER_ID'),(15,3,'(.*)'),(16,3,'APPLICATION_ID'),(17,7,'M_SERVER_URL'),(18,7,'USER_AGENT'),(19,7,'SERVICE_MODE'),(20,7,'FIRST_RUN'),(21,7,'DEVELOPER_ID'),(22,7,'APPLICATION_ID'),(23,8,'android.intent.extra.shortcut.NAME'),(24,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(25,8,'android.intent.extra.shortcut.INTENT'),(26,9,'android.intent.extra.shortcut.NAME'),(27,9,'android.intent.extra.shortcut.ICON'),(28,9,'android.intent.extra.shortcut.ICON_RESOURCE'),(29,9,'android.intent.extra.shortcut.INTENT'),(30,10,'android.intent.extra.shortcut.NAME'),(31,10,'android.intent.extra.shortcut.ICON'),(32,10,'android.intent.extra.shortcut.INTENT'),(33,12,'android.intent.extra.shortcut.NAME'),(34,12,'android.intent.extra.shortcut.ICON'),(35,12,'android.intent.extra.shortcut.INTENT'),(36,15,'sms_body'),(37,15,'address'),(38,18,'downloadFileName'),(39,18,'downloadUrl'),(40,21,'request_id'),(41,21,'response_code'),(42,24,'M_SERVER_URL'),(43,24,'USER_AGENT'),(44,24,'SERVICE_MODE'),(45,24,'FIRST_RUN'),(46,24,'DEVELOPER_ID'),(47,24,'(.*)'),(48,24,'APPLICATION_ID'),(49,25,'M_SERVER_URL'),(50,25,'USER_AGENT'),(51,25,'SERVICE_MODE'),(52,25,'FIRST_RUN'),(53,25,'DEVELOPER_ID'),(54,25,'APPLICATION_ID'),(55,27,'android.intent.extra.INTENT'),(56,28,'android.intent.extra.INTENT'),(57,29,'android.intent.extra.TITLE'),(58,29,'android.intent.extra.INTENT'),(59,30,'android.intent.extra.INTENT'),(60,31,'android.intent.extra.TITLE'),(61,31,'android.intent.extra.INTENT'),(62,32,'android.intent.extra.INTENT'),(63,33,'android.intent.extra.TITLE'),(64,33,'android.intent.extra.INTENT'),(65,34,'android.intent.extra.TITLE'),(66,34,'android.intent.extra.INTENT'),(67,36,'inapp_signature'),(68,36,'inapp_signed_data'),(69,44,'notification_id'),(70,45,'android.intent.extra.shortcut.NAME'),(71,45,'android.intent.extra.shortcut.ICON'),(72,45,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,3),(7,7,1),(8,8,4),(9,9,2),(10,10,5),(11,11,6),(12,12,5),(13,13,7),(14,14,5),(15,15,1),(16,16,8),(17,17,10),(18,17,11),(19,17,9),(20,18,1),(21,19,12),(22,20,13),(23,21,5),(24,22,5),(25,23,5),(26,24,14),(27,24,15),(28,25,5),(29,26,1),(30,27,16),(31,28,17),(32,29,18),(33,30,5),(34,31,18),(35,31,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,5,1),(4,7,2),(5,8,1),(6,10,3),(7,12,3),(8,14,3),(9,15,2),(10,18,2),(11,22,3),(12,25,3),(13,26,2),(14,30,3);
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
INSERT INTO `IMimeTypes` VALUES (1,15,'vnd.android-dir','mms-sms'),(2,42,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,2,'com.driftwood.wallpaper.moonbun.free'),(2,3,'com.driftwood.wallpaper.moonbun.free'),(3,7,'com.free_apps.galaxy'),(4,11,'com.free_apps.galaxy'),(5,13,'com.android.vending'),(6,16,'com.jiubang.goscreenlock'),(7,17,'com.jiubang.goscreenlock'),(8,18,'com.free_apps.galaxy'),(9,19,'com.scoompa.voicechanger'),(10,21,'com.scoompa.voicechanger'),(11,23,'com.scoompa.voicechanger'),(12,24,'com.scoompa.voicechanger'),(13,25,'com.scoompa.voicechanger'),(14,35,'com.scoompa.voicechanger'),(15,36,'com.scoompa.voicechanger'),(16,37,'com.scoompa.voicechanger'),(17,38,'com.scoompa.voicechanger'),(18,39,'com.scoompa.voicechanger'),(19,40,'com.scoompa.voicechanger'),(20,44,'com.scoompa.voicechanger');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,6,0),(4,9,0),(5,10,0),(6,13,0),(7,14,0),(8,10,0),(9,22,0),(10,24,0),(11,28,0),(12,32,0),(13,31,0),(14,38,0),(15,39,0),(16,48,0),(17,49,0),(18,52,0),(19,57,0),(20,58,0),(21,59,0),(22,59,0),(23,65,0),(24,66,0),(25,59,0),(26,67,0),(27,76,0),(28,78,0),(29,79,0),(30,84,0),(31,85,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,5,1,0),(5,9,1,0),(6,11,1,0),(7,13,0,0),(8,14,1,0),(9,14,1,0),(10,14,1,0),(11,16,0,0),(12,17,1,0),(13,18,1,0),(14,19,1,0),(15,20,1,0),(16,23,1,0),(17,23,1,0),(18,24,0,0),(19,26,0,0),(20,32,1,0),(21,33,0,0),(22,34,1,0),(23,35,0,0),(24,37,0,0),(25,37,0,0),(26,38,1,0),(27,40,1,0),(28,40,1,0),(29,40,1,0),(30,40,1,0),(31,40,1,0),(32,40,1,0),(33,40,1,0),(34,40,1,0),(35,41,0,0),(36,42,0,0),(37,43,0,0),(38,45,0,0),(39,46,0,0),(40,47,0,0),(41,48,1,0),(42,48,1,0),(43,48,1,0),(44,49,0,0),(45,50,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,3,2,NULL),(2,4,6,2,NULL),(3,4,9,2,NULL),(4,4,13,2,NULL),(5,4,24,2,NULL),(6,4,10,2,NULL),(7,16,2,2,NULL),(8,17,2,2,NULL),(9,4,32,2,NULL),(10,4,14,2,NULL),(11,4,22,2,NULL),(12,4,28,2,NULL),(13,4,31,2,NULL),(14,4,38,2,NULL),(15,4,39,2,NULL),(16,27,2,2,NULL),(17,28,2,2,NULL),(18,29,2,2,NULL),(19,30,2,2,NULL),(20,31,2,2,NULL),(21,32,2,2,NULL),(22,33,2,2,NULL),(23,34,2,2,NULL),(24,41,2,2,NULL),(25,43,2,2,NULL),(26,22,2,2,NULL),(27,4,48,2,NULL),(28,4,49,2,NULL),(29,4,85,2,NULL),(30,4,52,2,NULL),(31,4,57,2,NULL),(32,4,58,2,NULL),(33,4,59,2,NULL),(34,4,65,2,NULL),(35,4,66,2,NULL),(36,4,67,2,NULL),(37,4,76,2,NULL),(38,4,78,2,NULL),(39,4,79,2,NULL),(40,4,84,2,NULL),(41,16,3,2,NULL),(42,17,3,2,NULL),(43,27,3,2,NULL),(44,28,3,2,NULL),(45,29,3,2,NULL),(46,30,3,2,NULL),(47,31,3,2,NULL),(48,32,3,2,NULL),(49,33,3,2,NULL),(50,34,3,2,NULL),(51,41,3,2,NULL),(52,43,3,2,NULL),(53,22,3,2,NULL),(54,2,4,2,NULL),(55,2,11,2,NULL),(56,2,26,2,NULL),(57,2,29,2,NULL),(58,2,47,2,NULL),(59,2,56,2,NULL),(60,2,77,2,NULL),(61,3,4,2,NULL),(62,3,11,2,NULL),(63,3,26,2,NULL),(64,3,29,2,NULL),(65,3,47,2,NULL),(66,3,56,2,NULL),(67,3,77,2,NULL),(68,16,52,2,NULL),(69,17,52,2,NULL),(70,27,52,2,NULL),(71,28,52,2,NULL),(72,29,52,2,NULL),(73,30,52,2,NULL),(74,31,52,2,NULL),(75,32,52,2,NULL),(76,33,52,2,NULL),(77,34,52,2,NULL),(78,41,52,2,NULL),(79,43,52,2,NULL),(80,22,52,2,NULL),(81,16,57,2,NULL),(82,17,57,2,NULL),(83,27,57,2,NULL),(84,28,57,2,NULL),(85,29,57,2,NULL),(86,30,57,2,NULL),(87,31,57,2,NULL),(88,32,57,2,NULL),(89,33,57,2,NULL),(90,34,57,2,NULL),(91,41,57,2,NULL),(92,43,57,2,NULL),(93,22,57,2,NULL),(94,16,58,2,NULL),(95,17,58,2,NULL),(96,27,58,2,NULL),(97,28,58,2,NULL),(98,29,58,2,NULL),(99,30,58,2,NULL),(100,31,58,2,NULL),(101,32,58,2,NULL),(102,33,58,2,NULL),(103,34,58,2,NULL),(104,41,58,2,NULL),(105,43,58,2,NULL),(106,22,58,2,NULL),(107,16,59,2,NULL),(108,17,59,2,NULL),(109,27,59,2,NULL),(110,28,59,2,NULL),(111,29,59,2,NULL),(112,30,59,2,NULL),(113,31,59,2,NULL),(114,32,59,2,NULL),(115,33,59,2,NULL),(116,34,59,2,NULL),(117,41,59,2,NULL),(118,43,59,2,NULL),(119,22,59,2,NULL),(120,16,65,2,NULL),(121,17,65,2,NULL),(122,27,65,2,NULL),(123,28,65,2,NULL),(124,29,65,2,NULL),(125,30,65,2,NULL),(126,31,65,2,NULL),(127,32,65,2,NULL),(128,33,65,2,NULL),(129,34,65,2,NULL),(130,41,65,2,NULL),(131,43,65,2,NULL),(132,22,65,2,NULL),(133,16,66,2,NULL),(134,17,66,2,NULL),(135,27,66,2,NULL),(136,28,66,2,NULL),(137,29,66,2,NULL),(138,30,66,2,NULL),(139,31,66,2,NULL),(140,32,66,2,NULL),(141,33,66,2,NULL),(142,34,66,2,NULL),(143,41,66,2,NULL),(144,43,66,2,NULL),(145,22,66,2,NULL),(146,16,67,2,NULL),(147,17,67,2,NULL),(148,27,67,2,NULL),(149,28,67,2,NULL),(150,29,67,2,NULL),(151,30,67,2,NULL),(152,31,67,2,NULL),(153,32,67,2,NULL),(154,33,67,2,NULL),(155,34,67,2,NULL),(156,41,67,2,NULL),(157,43,67,2,NULL),(158,22,67,2,NULL),(159,16,76,2,NULL),(160,17,76,2,NULL),(161,27,76,2,NULL),(162,28,76,2,NULL),(163,29,76,2,NULL),(164,30,76,2,NULL),(165,31,76,2,NULL),(166,32,76,2,NULL),(167,33,76,2,NULL),(168,34,76,2,NULL),(169,41,76,2,NULL),(170,43,76,2,NULL),(171,22,76,2,NULL),(172,16,78,2,NULL),(173,17,78,2,NULL),(174,27,78,2,NULL),(175,28,78,2,NULL),(176,29,78,2,NULL),(177,30,78,2,NULL),(178,31,78,2,NULL),(179,32,78,2,NULL),(180,33,78,2,NULL),(181,34,78,2,NULL),(182,41,78,2,NULL),(183,43,78,2,NULL),(184,22,78,2,NULL),(185,16,79,2,NULL),(186,17,79,2,NULL),(187,27,79,2,NULL),(188,28,79,2,NULL),(189,29,79,2,NULL),(190,30,79,2,NULL),(191,31,79,2,NULL),(192,32,79,2,NULL),(193,33,79,2,NULL),(194,34,79,2,NULL),(195,41,79,2,NULL),(196,43,79,2,NULL),(197,22,79,2,NULL),(198,16,84,2,NULL),(199,17,84,2,NULL),(200,27,84,2,NULL),(201,28,84,2,NULL),(202,29,84,2,NULL),(203,30,84,2,NULL),(204,31,84,2,NULL),(205,32,84,2,NULL),(206,33,84,2,NULL),(207,34,84,2,NULL),(208,41,84,2,NULL),(209,43,84,2,NULL),(210,22,84,2,NULL),(211,16,6,2,NULL),(212,17,6,2,NULL),(213,27,6,2,NULL),(214,28,6,2,NULL),(215,29,6,2,NULL),(216,30,6,2,NULL),(217,31,6,2,NULL),(218,32,6,2,NULL),(219,33,6,2,NULL),(220,34,6,2,NULL),(221,41,6,2,NULL),(222,43,6,2,NULL),(223,22,6,2,NULL),(224,16,9,2,NULL),(225,17,9,2,NULL),(226,27,9,2,NULL),(227,28,9,2,NULL),(228,29,9,2,NULL),(229,30,9,2,NULL),(230,31,9,2,NULL),(231,32,9,2,NULL),(232,33,9,2,NULL),(233,34,9,2,NULL),(234,41,9,2,NULL),(235,43,9,2,NULL),(236,22,9,2,NULL),(237,16,13,2,NULL),(238,17,13,2,NULL),(239,27,13,2,NULL),(240,28,13,2,NULL),(241,29,13,2,NULL),(242,30,13,2,NULL),(243,31,13,2,NULL),(244,32,13,2,NULL),(245,33,13,2,NULL),(246,34,13,2,NULL),(247,41,13,2,NULL),(248,43,13,2,NULL),(249,22,13,2,NULL),(250,16,24,2,NULL),(251,17,24,2,NULL),(252,27,24,2,NULL),(253,28,24,2,NULL),(254,29,24,2,NULL),(255,30,24,2,NULL),(256,31,24,2,NULL),(257,32,24,2,NULL),(258,33,24,2,NULL),(259,34,24,2,NULL),(260,41,24,2,NULL),(261,43,24,2,NULL),(262,22,24,2,NULL),(263,11,23,2,NULL),(264,16,32,2,NULL),(265,17,32,2,NULL),(266,16,14,2,NULL),(267,17,14,2,NULL),(268,16,22,2,NULL),(269,17,22,2,NULL),(270,16,28,2,NULL),(271,17,28,2,NULL),(272,16,31,2,NULL),(273,17,31,2,NULL),(274,16,38,2,NULL),(275,17,38,2,NULL),(276,16,39,2,NULL),(277,17,39,2,NULL),(278,27,10,2,NULL),(279,28,10,2,NULL),(280,29,10,2,NULL),(281,30,10,2,NULL),(282,31,10,2,NULL),(283,32,10,2,NULL),(284,33,10,2,NULL),(285,34,10,2,NULL),(286,41,10,2,NULL),(287,43,10,2,NULL),(288,22,10,2,NULL),(289,16,48,2,NULL),(290,17,48,2,NULL),(291,16,49,2,NULL),(292,17,49,2,NULL),(293,16,85,2,NULL),(294,17,85,2,NULL),(295,7,4,2,NULL),(296,7,11,2,NULL),(297,7,26,2,NULL),(298,7,29,2,NULL),(299,7,47,2,NULL),(300,7,56,2,NULL),(301,7,77,2,NULL),(302,27,32,2,NULL),(303,28,32,2,NULL),(304,29,32,2,NULL),(305,30,32,2,NULL),(306,31,32,2,NULL),(307,32,32,2,NULL),(308,33,32,2,NULL),(309,34,32,2,NULL),(310,41,32,2,NULL),(311,43,32,2,NULL),(312,22,32,2,NULL),(313,27,39,2,NULL),(314,28,39,2,NULL),(315,29,39,2,NULL),(316,30,39,2,NULL),(317,31,39,2,NULL),(318,32,39,2,NULL),(319,33,39,2,NULL),(320,34,39,2,NULL),(321,41,39,2,NULL),(322,43,39,2,NULL),(323,22,39,2,NULL),(324,19,43,2,NULL),(325,35,41,2,NULL),(326,37,41,2,NULL),(327,38,43,2,NULL),(328,39,42,2,NULL),(329,40,42,2,NULL),(330,27,14,2,NULL),(331,28,14,2,NULL),(332,29,14,2,NULL),(333,30,14,2,NULL),(334,31,14,2,NULL),(335,32,14,2,NULL),(336,33,14,2,NULL),(337,34,14,2,NULL),(338,27,22,2,NULL),(339,28,22,2,NULL),(340,29,22,2,NULL),(341,30,22,2,NULL),(342,31,22,2,NULL),(343,32,22,2,NULL),(344,33,22,2,NULL),(345,34,22,2,NULL),(346,27,28,2,NULL),(347,28,28,2,NULL),(348,29,28,2,NULL),(349,30,28,2,NULL),(350,31,28,2,NULL),(351,32,28,2,NULL),(352,33,28,2,NULL),(353,34,28,2,NULL),(354,27,31,2,NULL),(355,28,31,2,NULL),(356,29,31,2,NULL),(357,30,31,2,NULL),(358,31,31,2,NULL),(359,32,31,2,NULL),(360,33,31,2,NULL),(361,34,31,2,NULL),(362,27,38,2,NULL),(363,28,38,2,NULL),(364,29,38,2,NULL),(365,30,38,2,NULL),(366,31,38,2,NULL),(367,32,38,2,NULL),(368,33,38,2,NULL),(369,34,38,2,NULL),(370,27,48,2,NULL),(371,28,48,2,NULL),(372,29,48,2,NULL),(373,30,48,2,NULL),(374,31,48,2,NULL),(375,32,48,2,NULL),(376,33,48,2,NULL),(377,34,48,2,NULL),(378,27,49,2,NULL),(379,28,49,2,NULL),(380,29,49,2,NULL),(381,30,49,2,NULL),(382,31,49,2,NULL),(383,32,49,2,NULL),(384,33,49,2,NULL),(385,34,49,2,NULL),(386,27,85,2,NULL),(387,28,85,2,NULL),(388,29,85,2,NULL),(389,30,85,2,NULL),(390,31,85,2,NULL),(391,32,85,2,NULL),(392,33,85,2,NULL),(393,34,85,2,NULL),(394,41,14,2,NULL),(395,43,14,2,NULL),(396,41,22,2,NULL),(397,43,22,2,NULL),(398,41,28,2,NULL),(399,43,28,2,NULL),(400,41,31,2,NULL),(401,43,31,2,NULL),(402,41,38,2,NULL),(403,43,38,2,NULL),(404,41,48,2,NULL),(405,43,48,2,NULL),(406,41,49,2,NULL),(407,43,49,2,NULL),(408,41,85,2,NULL),(409,43,85,2,NULL),(410,22,14,2,NULL),(411,22,22,2,NULL),(412,22,28,2,NULL),(413,22,31,2,NULL),(414,22,38,2,NULL),(415,22,48,2,NULL),(416,22,49,2,NULL),(417,22,85,2,NULL),(418,24,4,2,NULL),(419,24,11,2,NULL),(420,24,26,2,NULL),(421,24,29,2,NULL),(422,24,47,2,NULL),(423,24,56,2,NULL),(424,24,77,2,NULL),(425,25,4,2,NULL),(426,25,11,2,NULL),(427,25,26,2,NULL),(428,25,29,2,NULL),(429,25,47,2,NULL),(430,25,56,2,NULL),(431,25,77,2,NULL),(432,21,46,2,NULL),(433,36,46,2,NULL),(434,44,46,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (24,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(16,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(30,'android.permission.CALL_PHONE'),(25,'android.permission.GET_ACCOUNTS'),(11,'android.permission.INTERNET'),(29,'android.permission.PROCESS_OUTGOING_CALLS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(28,'android.permission.RECORD_AUDIO'),(21,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(23,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(19,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.fede.launcher.permission.READ_SETTINGS'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(14,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(17,'com.motorola.launcher.permission.READ_SETTINGS'),(12,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:\"Jason Allen\"',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'market://search?q=pname:com.jiubang.goscreenlock',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.scoompa.voicechanger',NULL,NULL,NULL),(22,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,6,3),(4,6,4),(5,7,5),(6,8,6),(7,10,8),(8,12,10),(9,15,11),(10,15,12),(11,21,15),(12,22,16),(13,25,17),(14,27,18),(15,31,19),(16,31,20),(17,36,22),(18,39,24),(19,44,25),(20,51,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,2,7),(25,2,8),(26,3,1),(27,2,9),(28,3,2),(29,2,10),(30,3,3),(31,4,1),(32,2,11),(33,4,2),(34,3,4),(35,2,12),(36,3,5),(37,4,3),(38,2,13),(39,4,4),(40,3,6),(41,2,14),(42,3,7),(43,4,5),(44,2,17),(45,4,6),(46,3,8),(47,2,16),(48,3,9),(49,4,7),(50,2,19),(51,3,10),(52,4,8),(53,2,21),(54,3,11),(55,4,9),(56,2,20),(57,4,10),(58,3,12),(59,2,22),(60,3,13),(61,4,11),(62,3,14),(63,4,12),(64,3,15),(65,4,13),(66,4,14),(67,3,17),(68,3,16),(69,4,15),(70,4,17),(71,3,19),(72,4,16),(73,3,21),(74,3,20),(75,4,19),(76,3,23),(77,4,21),(78,3,22),(79,4,20),(80,3,25),(81,4,23),(82,3,24),(83,4,22),(84,4,24),(85,3,27),(86,4,27),(87,3,26),(88,4,26),(89,5,1),(90,5,2),(91,5,3),(92,5,4),(93,5,5),(94,5,6),(95,5,7),(96,5,8),(97,5,10),(98,5,11),(99,5,12),(100,5,13),(101,5,14),(102,5,17),(103,5,16),(104,5,20),(105,5,23),(106,5,25),(107,5,24),(108,5,28),(109,6,1),(110,6,2),(111,6,3),(112,6,4),(113,6,5),(114,6,6),(115,6,7),(116,6,8),(117,6,9),(118,6,10),(119,6,11),(120,6,12),(121,6,13),(122,6,14),(123,6,15),(124,6,17),(125,6,16),(126,6,19),(127,6,21),(128,6,20),(129,6,23),(130,6,22),(131,6,25),(132,6,24),(133,6,27),(134,6,26),(135,6,29),(136,6,30),(137,7,1),(138,7,2),(139,7,3),(140,7,4),(141,7,5),(142,7,6),(143,7,7),(144,7,8),(145,7,9),(146,7,10),(147,7,11),(148,7,12),(149,7,13),(150,7,14),(151,7,15),(152,7,17),(153,7,16),(154,7,19),(155,7,21),(156,7,20),(157,7,23),(158,7,22),(159,7,24),(160,7,27),(161,7,26);
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

-- Dump completed on 2015-10-12  3:31:28
