-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_654
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
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(12,'.e2ray3piv49'),(13,'INTENT_LordBalajiTemple'),(11,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.USER_PRESENT'),(15,'android.intent.action.VIEW'),(4,'android.service.wallpaper.WallpaperService'),(9,'com.airpush.android.PushServiceStart18531'),(8,'com.airpush.android.PushServiceStart52596'),(5,'com.airpush.android.PushServiceStart53215'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(17,'com.apperhand.action.show.eula'),(6,'com.bindapps.SEXSTORYACTIVITY'),(7,'com.bindapps.STORY'),(2,'com.jiubang.goscreenlock.theme'),(10,'com.senddroid.AdServicebys.widgets.lordvenkateshwara');
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
INSERT INTO `Applications` VALUES (1,'com.free_apps.golocker_iphone4_mac',30),(2,'com.hddevs.hindugod',2),(3,'com.bindapps.story_sex_urdu',1),(4,'bys.widgets.lordvenkateshwara',12),(5,'com.addictivegamesinc.amateur.surgeon',1000000),(6,'com.sappsg.phone_accelerator',3),(7,'com.BikeRiderGold',2);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog'),(2,1,'com.bwlQIUxN.xljNyduA91603.OptinActivity'),(3,1,'com.bwlQIUxN.xljNyduA91603.SmartWallActivity'),(4,1,'com.free_apps.golocker_iphone4_mac.srv'),(5,1,'com.free_apps.golocker_iphone4_mac.GoDownloadServiceervice'),(6,1,'com.bwlQIUxN.xljNyduA91603.PushService'),(7,1,'com.apperhand.device.android.AndroidSDKProvider'),(8,1,'com.free_apps.golocker_iphone4_mac.rec'),(9,1,'com.bwlQIUxN.xljNyduA91603.BootReceiver'),(10,1,'com.Leadbolt.AdNotification'),(11,2,'com.hddevs.hindugod.WallpaperActivity'),(12,2,'com.hddevs.hindugod.PrefActivity'),(13,2,'com.airpush.android.PushAds'),(14,2,'com.apperhand.device.android.AndroidSDKProvider'),(15,2,'com.hddevs.hindugod.Wallpaper'),(16,2,'com.airpush.android.PushService'),(17,2,'com.airpush.android.UserDetailsReceiver'),(18,2,'com.airpush.android.MessageReceiver'),(19,2,'com.airpush.android.DeliveryReceiver'),(20,2,'com.hddevs.hindugod.BootReceiver'),(21,2,'com.hddevs.hindugod.boot'),(22,2,'com.Leadbolt.AdNotification'),(23,3,'com.bindapps.story_sex_urdu.Splash'),(24,3,'com.bindapps.story_sex_urdu.SexstoryActivity'),(25,3,'com.bindapps.story_sex_urdu.Story'),(26,3,'com.airpush.android.PushAds'),(27,3,'com.apperhand.device.android.AndroidSDKProvider'),(28,3,'com.airpush.android.PushService'),(29,4,'bys.widgets.lordvenkateshwara.TempleMainActivity'),(30,3,'com.airpush.android.UserDetailsReceiver'),(31,4,'bys.widgets.lordvenkateshwara.AboutActivity'),(32,3,'com.airpush.android.MessageReceiver'),(33,4,'bys.widgets.lordvenkateshwara.LicenseAgreementActivity'),(34,3,'com.airpush.android.DeliveryReceiver'),(35,4,'bys.widgets.lordvenkateshwara.HelpUsActivity'),(36,3,'com.bindapps.story_sex_urdu.BootReceiver'),(37,4,'bys.widgets.lordvenkateshwara.AudioListActivity'),(38,4,'bys.widgets.lordvenkateshwara.PlayListMakerActivity'),(39,4,'bys.widgets.lordvenkateshwara.ChangeAudioActivity'),(40,3,'com.bindapps.story_sex_urdu.boot'),(41,5,'com.addictivegamesinc.amateur.surgeon.AmateurSurgeon'),(42,4,'bys.widgets.lordvenkateshwara.SettingsActivity'),(43,4,'com.google.ads.AdActivity'),(44,3,'com.Leadbolt.AdNotification'),(45,5,'com.airpush.android.OptinActivity'),(46,4,'bys.widgets.lordvenkateshwara.FilePickerActivity'),(47,5,'com.airpush.android.SmartWallActivity'),(48,4,'com.airpush.android.PushAds'),(49,5,'com.chartboost.sdk.CBDialogActivity'),(50,4,'com.airpush.android.PushService'),(51,5,'com.boost.beluga.hotapps.HotAppsActivity'),(52,5,'com.apperhand.device.android.EULAActivity'),(53,4,'com.senddroid.AdService'),(54,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(55,5,'com.millennialmedia.android.VideoPlayer'),(56,5,'com.mopub.mobileads.MoPubActivity'),(57,4,'com.apperhand.device.android.AndroidSDKProvider'),(58,5,'com.mopub.mobileads.MraidActivity'),(59,4,'bys.widgets.lordvenkateshwara.GodWidgetProvider_80_100'),(60,5,'com.mopub.mobileads.MraidBrowser'),(61,5,'com.revmob.ads.fullscreen.FullscreenActivity'),(62,4,'bys.widgets.lordvenkateshwara.GodWidgetProvider_160_200'),(63,5,'com.airpush.android.PushService'),(64,6,'com.sappsg.phoneaccelerator.AcceleratorActivity'),(65,5,'com.apperhand.device.android.AndroidSDKProvider'),(66,4,'bys.widgets.lordvenkateshwara.GodWidgetProvider_240_300'),(67,5,'com.addictivegamesinc.amateur.surgeon.e2ray3piv49'),(68,6,'com.houseads.ShowPush'),(69,4,'bys.widgets.lordvenkateshwara.AlarmReceiver'),(70,6,'com.apperhand.device.android.AndroidSDKProvider'),(71,5,'com.addictivegamesinc.amateur.surgeon.AmateurSurgeonsny'),(72,6,'com.houseads.Push'),(73,4,'com.airpush.android.UserDetailsReceiver'),(74,6,'com.Leadbolt.AdNotification'),(75,5,'com.pad.android.xappad.AdNotification'),(76,6,'com.sappsg.phone_accelerator.BootReceiver'),(77,5,'com.pad.android.xappad.AdReminderNotification'),(78,4,'com.airpush.android.MessageReceiver'),(79,5,'com.addictivegamesinc.amateur.surgeon.BootReceiver'),(80,4,'com.airpush.android.DeliveryReceiver'),(81,4,'bys.widgets.lordvenkateshwara.BootReceiver'),(82,5,'com.boost.beluga.tracker.TrackerReceiver'),(83,5,'com.addictivegamesinc.amateur.surgeon.lhrg3mejpjmav'),(84,5,'com.addictivegamesinc.amateur.surgeon.w2zdui77d5x'),(85,5,'com.addictivegamesinc.amateur.surgeon.AmateurSurgeonhg'),(86,7,'com.BikeRiderGold.BikeRider'),(87,7,'com.google.ads.AdActivity'),(88,7,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(89,7,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(90,7,'com.apperhand.device.android.AndroidSDKProvider'),(91,7,'com.BikeRiderGold.BootReceiver'),(92,7,'com.Leadbolt.AdNotification'),(93,1,'com.bwlQIUxN.xljNyduA91603.HandleClicks'),(94,1,'com.apperhand.device.android.a.b'),(95,1,'com.apperhand.device.android.a.e'),(96,1,'com.apperhand.device.android.a.c'),(97,6,'com.Leadbolt.AdController'),(98,6,'com.apperhand.device.android.a.d'),(99,6,'com.apperhand.device.android.a.b'),(100,7,'com.apperhand.device.android.a.e'),(101,7,'com.apperhand.device.android.a.a'),(102,7,'u$b'),(103,7,'com.BikeRiderGold.BikeRider$1'),(104,7,'com.pontiflex.mobile.webview.sdk.AdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'APPLICATION_ID'),(2,8,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(3,1,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(4,8,'com.bwlQIUxN.xljNyduA91603.APPID'),(5,1,'com.bwlQIUxN.xljNyduA91603.APPID'),(6,6,'campId'),(7,3,'url'),(8,2,'url'),(9,6,'APIKEY'),(10,6,'number'),(11,3,'sms'),(12,2,'sms'),(13,2,'adtype'),(14,6,'testMode'),(15,6,'sms'),(16,7,'M_SERVER_URL'),(17,6,'creativeId'),(18,3,'creativeid'),(19,2,'creativeid'),(20,7,'FIRST_RUN'),(21,3,'buttontxt'),(22,2,'buttontxt'),(23,3,'adtype'),(24,7,'USER_AGENT'),(25,3,'campaignid'),(26,2,'campaignid'),(27,3,'number'),(28,2,'number'),(29,7,'DEVELOPER_ID'),(30,6,'header'),(31,6,'url'),(32,7,'eulaAcceptDetails'),(33,7,'SERVICE_MODE'),(34,6,'appId'),(35,3,'title'),(36,2,'title'),(37,6,'adtype'),(38,70,'APPLICATION_ID'),(39,73,'sectionid'),(40,70,'DEVELOPER_ID'),(41,70,'SERVICE_MODE'),(42,70,'USER_AGENT'),(43,70,'FIRST_RUN'),(44,70,'M_SERVER_URL'),(45,87,'action'),(46,87,'com.google.ads.AdOpener'),(47,90,'DEVELOPER_ID'),(48,92,'sectionid'),(49,90,'APPLICATION_ID'),(50,90,'USER_AGENT'),(51,90,'SERVICE_MODE'),(52,87,'params'),(53,90,'permanent'),(54,90,'FIRST_RUN'),(55,90,'M_SERVER_URL');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',1,27,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'s',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',1,27,NULL),(72,72,'r',0,NULL,NULL),(73,74,'r',0,NULL,NULL),(74,75,'r',0,NULL,NULL),(75,73,'r',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'r',0,NULL,NULL),(93,102,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,7),(3,3,1),(4,4,7),(5,5,7),(6,6,1),(7,7,7),(8,8,6),(9,9,6),(10,10,7),(11,11,1),(12,12,1),(13,13,7),(14,14,1),(15,15,1),(16,16,7),(17,17,73),(18,17,64),(19,18,70),(20,19,70),(21,20,70),(22,21,64),(23,22,70),(24,23,70),(25,24,70),(26,25,68),(27,26,90),(28,27,90),(29,28,90),(30,29,90),(31,30,90),(32,31,90),(33,32,86),(34,33,86),(35,34,86),(36,35,87),(37,36,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,93,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void sendSms()>',17,'a',NULL),(2,94,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(3,1,'<com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog: void onCreate(android.os.Bundle)>',5,'s',NULL),(4,94,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,95,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(6,7,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(7,95,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(8,93,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void callNumber()>',18,'a',NULL),(9,93,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void displayUrl()>',11,'a',NULL),(10,96,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(11,1,'<com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(12,1,'<com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(13,95,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(14,7,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',60,'a',NULL),(15,1,'<com.free_apps.golocker_iphone4_mac.GOLockerInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(16,94,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(17,97,'<com.Leadbolt.AdController: void displayIcon()>',56,'r',NULL),(18,98,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(19,99,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(20,98,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(21,70,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(22,98,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(23,99,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(24,99,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(25,68,'<com.houseads.ShowPush: void onCreate(android.os.Bundle)>',10,'a',NULL),(26,100,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(27,101,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(28,100,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(29,101,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(30,101,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(31,100,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(32,103,'<com.BikeRiderGold.BikeRider$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,104,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(34,90,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(35,87,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(36,104,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,15),(2,5,16),(3,6,15),(4,7,17),(5,8,17),(6,10,15),(7,11,18),(8,13,1),(9,14,1),(10,15,18),(11,16,18),(12,17,18),(13,18,18),(14,20,15),(15,21,18),(16,22,15),(17,26,21),(18,27,15),(19,28,21);
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
INSERT INTO `ICategories` VALUES (1,13,1),(2,14,3),(3,26,5),(4,27,5),(5,28,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/free_apps/golocker_iphone4_mac/srv'),(2,3,'com/apperhand/device/android/AndroidSDKProvider'),(3,4,'com/apperhand/device/android/AndroidSDKProvider'),(4,9,'com/free_apps/golocker_iphone4_mac/GoDownloadService'),(5,12,'com/apperhand/device/android/EULAActivity'),(6,19,'com/apperhand/device/android/AndroidSDKProvider'),(7,23,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(8,24,'com/apperhand/device/android/AndroidSDKProvider'),(9,25,'com/apperhand/device/android/AndroidSDKProvider'),(10,29,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,6),(2,6,7),(3,10,8),(4,20,16),(5,22,23),(6,26,24),(7,27,25),(8,28,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,1,'address'),(3,3,'M_SERVER_URL'),(4,3,'USER_AGENT'),(5,3,'SERVICE_MODE'),(6,3,'FIRST_RUN'),(7,3,'DEVELOPER_ID'),(8,3,'APPLICATION_ID'),(9,4,'eulaAcceptDetails'),(10,4,'M_SERVER_URL'),(11,4,'USER_AGENT'),(12,4,'SERVICE_MODE'),(13,4,'FIRST_RUN'),(14,4,'DEVELOPER_ID'),(15,4,'APPLICATION_ID'),(16,8,'footerHTML'),(17,8,'bodyHTML'),(18,9,'downloadFileName'),(19,9,'downloadUrl'),(20,11,'android.intent.extra.shortcut.NAME'),(21,11,'android.intent.extra.shortcut.ICON'),(22,11,'android.intent.extra.shortcut.INTENT'),(23,15,'android.intent.extra.shortcut.NAME'),(24,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(25,15,'android.intent.extra.shortcut.INTENT'),(26,16,'android.intent.extra.shortcut.NAME'),(27,16,'android.intent.extra.shortcut.ICON'),(28,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(29,16,'android.intent.extra.shortcut.INTENT'),(30,17,'android.intent.extra.shortcut.NAME'),(31,17,'android.intent.extra.shortcut.ICON'),(32,17,'android.intent.extra.shortcut.INTENT'),(33,18,'android.intent.extra.shortcut.NAME'),(34,18,'android.intent.extra.shortcut.ICON'),(35,18,'android.intent.extra.shortcut.INTENT'),(36,19,'M_SERVER_URL'),(37,19,'USER_AGENT'),(38,19,'SERVICE_MODE'),(39,19,'FIRST_RUN'),(40,19,'DEVELOPER_ID'),(41,19,'APPLICATION_ID'),(42,21,'android.intent.extra.shortcut.NAME'),(43,21,'android.intent.extra.shortcut.ICON'),(44,21,'android.intent.extra.shortcut.INTENT'),(45,24,'M_SERVER_URL'),(46,24,'USER_AGENT'),(47,24,'SERVICE_MODE'),(48,24,'FIRST_RUN'),(49,24,'DEVELOPER_ID'),(50,24,'APPLICATION_ID'),(51,25,'M_SERVER_URL'),(52,25,'USER_AGENT'),(53,25,'SERVICE_MODE'),(54,25,'FIRST_RUN'),(55,25,'DEVELOPER_ID'),(56,25,'(.*)'),(57,25,'APPLICATION_ID'),(58,29,'offerCount');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,3),(8,8,3),(9,9,1),(10,10,6),(11,11,7),(12,12,1),(13,13,8),(14,14,3),(15,15,3),(16,16,1),(17,17,9),(18,18,10),(19,19,11),(20,20,11),(21,21,1),(22,22,11),(23,23,12),(24,24,13),(25,25,4),(26,26,3),(27,27,3),(28,28,3),(29,29,14),(30,30,12),(31,31,12),(32,32,11),(33,33,1),(34,34,3),(35,35,19),(36,35,20);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,7,2),(6,9,3),(7,10,4),(8,11,4),(9,12,3),(10,14,2),(11,16,3),(12,21,3),(13,26,2),(14,27,2),(15,28,2),(16,33,3);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android-dir','mms-sms'),(2,28,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.free_apps.golocker_iphone4_mac'),(2,3,'com.free_apps.golocker_iphone4_mac'),(3,4,'com.free_apps.golocker_iphone4_mac'),(4,7,'com.free_apps.golocker_iphone4_mac'),(5,8,'com.free_apps.golocker_iphone4_mac'),(6,9,'com.free_apps.golocker_iphone4_mac'),(7,10,'com.android.vending'),(8,12,'com.free_apps.golocker_iphone4_mac'),(9,13,'com.jiubang.goscreenlock'),(10,14,'com.jiubang.goscreenlock'),(11,19,'com.sappsg.phone_accelerator'),(12,23,'com.BikeRiderGold'),(13,24,'com.BikeRiderGold'),(14,25,'com.BikeRiderGold'),(15,29,'com.BikeRiderGold');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,9,0),(4,11,0),(5,15,0),(6,16,0),(7,20,0),(8,21,0),(9,23,0),(10,24,0),(11,25,0),(12,29,0),(13,28,0),(14,36,0),(15,40,0),(16,41,0),(17,50,0),(18,53,0),(19,59,0),(20,62,0),(21,64,0),(22,66,0),(23,67,0),(24,69,0),(25,71,0),(26,76,0),(27,79,0),(28,81,0),(29,82,0),(30,83,0),(31,84,0),(32,85,0),(33,86,0),(34,91,0),(35,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,3,0,0),(3,6,0,0),(4,6,0,0),(5,8,1,0),(6,9,1,0),(7,10,1,0),(8,10,1,0),(9,11,0,0),(10,12,1,0),(11,13,1,0),(12,14,0,0),(13,15,1,0),(14,15,1,0),(15,17,1,0),(16,17,1,0),(17,17,1,0),(18,18,1,0),(19,21,0,0),(20,25,1,0),(21,28,1,0),(22,32,1,0),(23,33,0,0),(24,34,0,0),(25,34,0,0),(26,35,1,0),(27,35,1,0),(28,35,1,0),(29,36,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,13,29,2,NULL),(2,14,29,2,NULL),(3,26,29,2,NULL),(4,27,29,2,NULL),(5,13,50,2,NULL),(6,14,50,2,NULL),(7,26,50,2,NULL),(8,27,50,2,NULL),(9,13,53,2,NULL),(10,14,53,2,NULL),(11,26,53,2,NULL),(12,27,53,2,NULL),(13,13,59,2,NULL),(14,14,59,2,NULL),(15,26,59,2,NULL),(16,27,59,2,NULL),(17,13,62,2,NULL),(18,14,62,2,NULL),(19,26,62,2,NULL),(20,27,62,2,NULL),(21,13,66,2,NULL),(22,14,66,2,NULL),(23,26,66,2,NULL),(24,27,66,2,NULL),(25,13,69,2,NULL),(26,14,69,2,NULL),(27,26,69,2,NULL),(28,27,69,2,NULL),(29,13,81,2,NULL),(30,14,81,2,NULL),(31,26,81,2,NULL),(32,27,81,2,NULL),(33,13,23,2,NULL),(34,14,23,2,NULL),(35,26,23,2,NULL),(36,27,23,2,NULL),(37,13,24,2,NULL),(38,14,24,2,NULL),(39,26,24,2,NULL),(40,27,24,2,NULL),(41,13,25,2,NULL),(42,14,25,2,NULL),(43,26,25,2,NULL),(44,27,25,2,NULL),(45,13,28,2,NULL),(46,14,28,2,NULL),(47,26,28,2,NULL),(48,27,28,2,NULL),(49,13,36,2,NULL),(50,14,36,2,NULL),(51,26,36,2,NULL),(52,27,36,2,NULL),(53,13,40,2,NULL),(54,14,40,2,NULL),(55,26,40,2,NULL),(56,27,40,2,NULL),(57,13,86,2,NULL),(58,14,86,2,NULL),(59,26,86,2,NULL),(60,27,86,2,NULL),(61,26,1,2,NULL),(62,27,1,2,NULL),(63,26,9,2,NULL),(64,27,9,2,NULL),(65,26,11,2,NULL),(66,27,11,2,NULL),(67,26,15,2,NULL),(68,27,15,2,NULL),(69,26,16,2,NULL),(70,27,16,2,NULL),(71,26,20,2,NULL),(72,27,20,2,NULL),(73,26,21,2,NULL),(74,27,21,2,NULL),(75,26,41,2,NULL),(76,27,41,2,NULL),(77,26,67,2,NULL),(78,27,67,2,NULL),(79,26,71,2,NULL),(80,27,71,2,NULL),(81,26,79,2,NULL),(82,27,79,2,NULL),(83,26,83,2,NULL),(84,27,83,2,NULL),(85,26,84,2,NULL),(86,27,84,2,NULL),(87,26,85,2,NULL),(88,27,85,2,NULL),(89,26,64,2,NULL),(90,27,64,2,NULL),(91,26,76,2,NULL),(92,27,76,2,NULL),(93,26,91,2,NULL),(94,27,91,2,NULL),(95,26,93,2,NULL),(96,27,93,2,NULL),(97,24,7,2,NULL),(98,24,14,2,NULL),(99,24,27,2,NULL),(100,24,57,2,NULL),(101,24,65,2,NULL),(102,24,70,2,NULL),(103,24,90,2,NULL),(104,25,7,2,NULL),(105,25,14,2,NULL),(106,25,27,2,NULL),(107,25,57,2,NULL),(108,25,65,2,NULL),(109,25,70,2,NULL),(110,25,90,2,NULL),(111,13,91,2,NULL),(112,14,91,2,NULL),(113,13,93,2,NULL),(114,14,93,2,NULL),(115,2,4,2,NULL),(116,13,9,2,NULL),(117,14,9,2,NULL),(118,13,11,2,NULL),(119,14,11,2,NULL),(120,13,15,2,NULL),(121,14,15,2,NULL),(122,13,16,2,NULL),(123,14,16,2,NULL),(124,13,20,2,NULL),(125,14,20,2,NULL),(126,13,21,2,NULL),(127,14,21,2,NULL),(128,13,41,2,NULL),(129,14,41,2,NULL),(130,13,67,2,NULL),(131,14,67,2,NULL),(132,13,71,2,NULL),(133,14,71,2,NULL),(134,13,79,2,NULL),(135,14,79,2,NULL),(136,13,83,2,NULL),(137,14,83,2,NULL),(138,13,84,2,NULL),(139,14,84,2,NULL),(140,13,85,2,NULL),(141,14,85,2,NULL),(142,13,64,2,NULL),(143,14,64,2,NULL),(144,13,76,2,NULL),(145,14,76,2,NULL),(146,3,7,2,NULL),(147,3,14,2,NULL),(148,3,27,2,NULL),(149,3,57,2,NULL),(150,3,65,2,NULL),(151,3,70,2,NULL),(152,3,90,2,NULL),(153,4,7,2,NULL),(154,4,14,2,NULL),(155,4,27,2,NULL),(156,4,57,2,NULL),(157,4,65,2,NULL),(158,4,70,2,NULL),(159,4,90,2,NULL),(160,12,52,2,NULL),(161,19,7,2,NULL),(162,19,14,2,NULL),(163,19,27,2,NULL),(164,19,57,2,NULL),(165,19,65,2,NULL),(166,19,70,2,NULL),(167,19,90,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_WALLPAPER'),(7,'android.permission.GET_ACCOUNTS'),(19,'android.permission.INTERNET'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(23,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'android.permission.WRITE_SETTINGS'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(26,'com.motorola.launcher.permission.READ_SETTINGS'),(22,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.jiubang.goscreenlock',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(22,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,4,2),(3,5,3),(4,5,4),(5,7,5),(6,16,9),(7,19,10),(8,20,11),(9,22,12),(10,22,13),(11,23,14),(12,24,15),(13,26,17),(14,27,18),(15,29,19),(16,30,20),(17,31,21),(18,31,22);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,26),(27,2,1),(28,2,2),(29,2,3),(30,2,4),(31,2,5),(32,2,6),(33,2,8),(34,2,9),(35,2,10),(36,2,11),(37,2,13),(38,2,14),(39,2,15),(40,2,17),(41,2,16),(42,2,19),(43,2,18),(44,2,21),(45,2,23),(46,2,22),(47,2,25),(48,2,24),(49,2,26),(50,3,1),(51,3,2),(52,3,3),(53,3,4),(54,3,5),(55,3,6),(56,3,8),(57,3,9),(58,3,10),(59,3,11),(60,3,13),(61,3,14),(62,3,15),(63,3,17),(64,3,16),(65,3,19),(66,3,18),(67,3,21),(68,3,23),(69,3,22),(70,4,1),(71,3,25),(72,4,2),(73,3,24),(74,4,3),(75,3,26),(76,4,4),(77,4,5),(78,4,6),(79,4,8),(80,4,9),(81,4,10),(82,4,12),(83,4,13),(84,4,14),(85,4,15),(86,5,1),(87,4,17),(88,5,2),(89,4,16),(90,5,3),(91,4,19),(92,5,4),(93,4,18),(94,5,5),(95,4,21),(96,5,6),(97,4,23),(98,5,7),(99,4,22),(100,5,8),(101,4,24),(102,5,9),(103,4,26),(104,5,10),(105,4,28),(106,5,11),(107,5,12),(108,5,13),(109,5,14),(110,5,15),(111,5,17),(112,5,16),(113,5,19),(114,5,18),(115,5,21),(116,5,20),(117,5,23),(118,5,22),(119,5,25),(120,5,24),(121,5,26),(122,6,6),(123,6,8),(124,6,9),(125,6,11),(126,6,12),(127,6,14),(128,6,16),(129,6,19),(130,6,18),(131,6,23),(132,6,25),(133,6,24),(134,7,1),(135,7,3),(136,7,4),(137,7,5),(138,7,6),(139,7,7),(140,7,8),(141,7,9),(142,7,10),(143,7,11),(144,7,12),(145,7,13),(146,7,14),(147,7,15),(148,7,17),(149,7,16),(150,7,19),(151,7,18),(152,7,21),(153,7,20),(154,7,22),(155,7,25),(156,7,24),(157,7,26);
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

-- Dump completed on 2015-10-12  3:31:16
