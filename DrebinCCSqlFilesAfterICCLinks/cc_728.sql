-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_728
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
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.SEND'),(6,'android.intent.action.SENDTO'),(17,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(4,'android.service.wallpaper.WallpaperService'),(9,'com.airpush.android.PushServiceStart27891'),(7,'com.airpush.android.PushServiceStart29313'),(11,'com.airpush.android.PushServiceStart39246'),(12,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.vending.INSTALL_REFERRER'),(13,'com.apperhand.action.show.eula'),(2,'com.jiubang.goscreenlock.theme');
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
INSERT INTO `Applications` VALUES (1,'com.crazyapps.angry.birds.multi.user',1),(2,'com.freeapps.iphone4.galaxy.s3',31),(3,'com.di.internet_accelerator',4),(4,'com.adamantsoft.android.heartslwp',3),(5,'org.tonee.undosms',5),(6,'com.gpapcnew',1),(7,'com.BreakOutG',1);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.crazyapps.angry.birds.multi.user.AngryBirdsMultiUserMain'),(2,1,'com.crazyapps.angry.birds.multi.user.ProfilesActivity'),(3,1,'com.crazyapps.angry.birds.multi.user.RestoreActivity'),(4,1,'com.plankton.device.android.service.AndroidMDKService'),(5,2,'com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog'),(6,2,'com.bwlQIUxN.xljNyduA91603.OptinActivity'),(7,2,'com.bwlQIUxN.xljNyduA91603.SmartWallActivity'),(8,2,'com.apperhand.device.android.EULAActivity'),(9,2,'com.freeapps.iphone4.galaxy.s3.srv'),(10,2,'com.freeapps.iphone4.galaxy.s3.GoDownloadServiceervice'),(11,2,'com.bwlQIUxN.xljNyduA91603.PushService'),(12,2,'com.apperhand.device.android.AndroidSDKProvider'),(13,2,'com.freeapps.iphone4.galaxy.s3.rec'),(14,2,'com.bwlQIUxN.xljNyduA91603.BootReceiver'),(15,2,'com.Leadbolt.AdNotification'),(16,2,'com.freeapps.iphone4.galaxy.s3.bReceiver'),(17,2,'com.pad.android.xappad.AdNotification'),(18,2,'com.pad.android.xappad.AdReminderNotification'),(19,1,'com.crazyapps.angry.birds.multi.user.af'),(20,1,'com.crazyapps.angry.birds.multi.user.ac'),(21,3,'com.di.internet_accelerator.InternetAcceleratorActivity'),(22,1,'com.crazyapps.angry.birds.multi.user.ab'),(23,3,'com.mobfox.sdk.InAppWebView'),(24,3,'com.apperhand.device.android.AndroidSDKProvider'),(25,3,'com.Leadbolt.AdNotification'),(26,3,'com.di.internet_accelerator.BootReceiver'),(27,4,'com.adamantsoft.android.animframework.SplashActivity'),(28,4,'com.adamantsoft.android.animframework.MainActivity'),(29,1,'com.crazyapps.angry.birds.multi.user.ae'),(30,4,'com.airpush.android.PushAds'),(31,4,'com.adamantsoft.android.animframework.LiveWallpaper'),(32,5,'org.tonee.undosms.AcMain'),(33,4,'com.apperhand.device.android.AndroidSDKProvider'),(34,4,'com.airpush.android.PushService'),(35,4,'com.airpush.android.UserDetailsReceiver'),(36,4,'com.airpush.android.MessageReceiver'),(37,4,'com.airpush.android.DeliveryReceiver'),(38,4,'com.adamantsoft.android.animframework.BootReceiver'),(39,5,'org.tonee.undosms.AcUndoSMSHint'),(40,5,'org.tonee.undosms.AcDialogDiscard'),(41,5,'org.tonee.undosms.AcDialogUndone'),(42,5,'org.tonee.undosms.AcDialogSend'),(43,5,'org.tonee.undosms.AcMenu'),(44,5,'org.tonee.undosms.AcRateMeWith5Stars'),(45,5,'org.tonee.undosms.AcAbout'),(46,5,'org.tonee.undosms.AcNewspaper'),(47,5,'com.airpush.android.PushAds'),(48,5,'org.tonee.undosms.service.SMSSendService'),(49,5,'com.apperhand.device.android.AndroidSDKProvider'),(50,6,'com.gpapcnew.PontiflexWebviewSDKDemoActivity'),(51,5,'com.airpush.android.PushService'),(52,6,'com.google.ads.AdActivity'),(53,6,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(54,5,'com.airpush.android.UserDetailsReceiver'),(55,6,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(56,5,'com.airpush.android.MessageReceiver'),(57,6,'com.gpapcnew.Harbor'),(58,5,'com.airpush.android.DeliveryReceiver'),(59,6,'com.apperhand.device.android.AndroidSDKProvider'),(60,5,'org.tonee.undosms.airpush.BootReceiver'),(61,6,'com.admob.android.ads.analytics.InstallReceiver'),(62,7,'com.BreakOutG.BreakOut'),(63,7,'com.airpush.android.PushAds'),(64,7,'com.apperhand.device.android.AndroidSDKProvider'),(65,7,'com.airpush.android.PushService'),(66,7,'com.BreakOutG.BootReceiver'),(67,7,'com.Leadbolt.AdNotification'),(68,7,'com.airpush.android.UserDetailsReceiver'),(69,7,'com.airpush.android.MessageReceiver'),(70,7,'com.airpush.android.DeliveryReceiver'),(71,2,'com.bwlQIUxN.xljNyduA91603.HandleClicks'),(72,2,'com.apperhand.device.android.a.e'),(73,2,'com.apperhand.device.android.a.b'),(74,2,'com.apperhand.device.android.a.c'),(75,3,'com.apperhand.device.android.a.b'),(76,3,'com.apperhand.device.android.a.d'),(77,3,'com.Leadbolt.AdController'),(78,3,'com.di.internet_accelerator.InternetAcceleratorActivity$1'),(79,6,'com.apperhand.device.android.a.a'),(80,6,'com.apperhand.device.android.a.e'),(81,6,'com.pontiflex.mobile.webview.sdk.AdManager'),(82,6,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'ANGRY_BIRDS_SETTINGS_FILENAME_PATH'),(2,4,'M_SERVER_URL'),(3,2,'ANGRY_BIRDS_RIO_HIGHSCORES_FILENAME_PATH'),(4,2,'ANGRY_BIRDS_SEASONS_SETTINGS_FILENAME_PATH'),(5,4,'APPLICATION_ID'),(6,2,'ANGRY_BIRDS_HIGHSCORES_FILENAME_PATH'),(7,2,'isRioGameFound'),(8,2,'ANGRY_BIRDS_SEASONS_HIGHSCORES_FILENAME_PATH'),(9,4,'M_INSTALLATION_URL'),(10,2,'isNormalGameFound'),(11,2,'isSeasonsGameFound'),(12,4,'DEVELOPER_ID'),(13,2,'ANGRY_BIRDS_RIO_SETTINGS_FILENAME_PATH'),(14,7,'sms'),(15,6,'sms'),(16,5,'com.bwlQIUxN.xljNyduA91603.APPID'),(17,13,'com.bwlQIUxN.xljNyduA91603.APPID'),(18,11,'number'),(19,12,'M_SERVER_URL'),(20,11,'appId'),(21,7,'url'),(22,6,'adtype'),(23,7,'adtype'),(24,7,'creativeid'),(25,6,'creativeid'),(26,12,'USER_AGENT'),(27,12,'eulaAcceptDetails'),(28,7,'campaignid'),(29,6,'campaignid'),(30,18,'sectionid'),(31,18,'remindericon'),(32,18,'alarmtype'),(33,11,'header'),(34,11,'APIKEY'),(35,7,'title'),(36,6,'title'),(37,17,'sectionid'),(38,7,'buttontxt'),(39,6,'buttontxt'),(40,5,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(41,13,'com.bwlQIUxN.xljNyduA91603.APIKEY'),(42,11,'testMode'),(43,12,'FIRST_RUN'),(44,11,'adtype'),(45,11,'sms'),(46,18,'remindertitle'),(47,12,'APPLICATION_ID'),(48,11,'campId'),(49,12,'SERVICE_MODE'),(50,11,'creativeId'),(51,11,'url'),(52,18,'remindertext'),(53,12,'DEVELOPER_ID'),(54,7,'number'),(55,6,'number'),(56,6,'url'),(57,20,'REDIRECT_URI'),(58,21,'SERVICE_MODE'),(59,22,'sectionid'),(60,21,'DEVELOPER_ID'),(61,21,'USER_AGENT'),(62,21,'M_SERVER_URL'),(63,21,'APPLICATION_ID'),(64,21,'FIRST_RUN'),(65,55,'permanent'),(66,48,'com.google.ads.AdOpener'),(67,55,'M_SERVER_URL'),(68,55,'APPLICATION_ID'),(69,55,'USER_AGENT'),(70,48,'params'),(71,48,'action'),(72,55,'FIRST_RUN'),(73,55,'SERVICE_MODE'),(74,55,'DEVELOPER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,21,'a',1,NULL,NULL),(20,23,'a',0,NULL,NULL),(21,24,'s',0,NULL,NULL),(22,25,'r',0,NULL,NULL),(23,26,'r',1,NULL,NULL),(24,27,'a',1,NULL,NULL),(25,28,'a',0,NULL,NULL),(26,30,'a',0,NULL,NULL),(27,31,'s',1,38,NULL),(28,32,'a',1,NULL,NULL),(29,33,'s',0,NULL,NULL),(30,34,'s',1,NULL,NULL),(31,35,'r',0,NULL,NULL),(32,36,'r',0,NULL,NULL),(33,37,'r',0,NULL,NULL),(34,38,'r',1,NULL,NULL),(35,39,'a',0,NULL,NULL),(36,40,'a',0,NULL,NULL),(37,41,'a',0,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'a',0,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'a',0,NULL,NULL),(44,48,'s',0,NULL,NULL),(45,49,'s',0,NULL,NULL),(46,50,'a',1,NULL,NULL),(47,51,'s',1,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'a',0,NULL,NULL),(50,54,'r',0,NULL,NULL),(51,55,'a',0,NULL,NULL),(52,56,'r',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'r',0,NULL,NULL),(55,59,'s',0,NULL,NULL),(56,60,'r',1,NULL,NULL),(57,61,'r',1,NULL,NULL),(58,62,'a',1,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'s',0,NULL,NULL),(61,65,'s',1,NULL,NULL),(62,66,'r',1,NULL,NULL),(63,67,'r',0,NULL,NULL),(64,68,'r',0,NULL,NULL),(65,69,'r',0,NULL,NULL),(66,70,'r',0,NULL,NULL),(67,82,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,5),(8,8,5),(9,9,11),(10,10,5),(11,11,12),(12,12,12),(13,13,12),(14,14,5),(15,15,12),(16,16,12),(17,17,5),(18,18,11),(19,19,11),(20,20,5),(21,21,12),(22,22,12),(23,23,21),(24,24,21),(25,25,19),(26,26,21),(27,27,21),(28,28,23),(29,28,19),(30,28,22),(31,29,19),(32,30,21),(33,31,21),(34,32,55),(35,33,55),(36,34,55),(37,35,55),(38,36,46),(39,37,55),(40,38,53),(41,39,55),(42,40,46),(43,41,46),(44,42,48),(45,43,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,19,'<com.crazyapps.angry.birds.multi.user.af: void onClick(android.view.View)>',10,'a',NULL),(2,2,'<com.crazyapps.angry.birds.multi.user.ProfilesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(3,1,'<com.crazyapps.angry.birds.multi.user.AngryBirdsMultiUserMain: void onCreate(android.os.Bundle)>',28,'s',NULL),(4,20,'<com.crazyapps.angry.birds.multi.user.ac: void onClick(android.view.View)>',10,'a',NULL),(5,22,'<com.crazyapps.angry.birds.multi.user.ab: void onClick(android.view.View)>',33,'a',NULL),(6,29,'<com.crazyapps.angry.birds.multi.user.ae: void onClick(android.view.View)>',10,'a',NULL),(7,5,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(8,5,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(9,71,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void displayUrl()>',11,'a',NULL),(10,12,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(11,72,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(12,73,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(13,73,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(14,12,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(15,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(16,74,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(17,5,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: void onCreate(android.os.Bundle)>',5,'s',NULL),(18,71,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void sendSms()>',17,'a',NULL),(19,71,'<com.bwlQIUxN.xljNyduA91603.HandleClicks: void callNumber()>',18,'a',NULL),(20,5,'<com.freeapps.iphone4.galaxy.s3.GOLockerInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(21,73,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(22,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(23,75,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(24,75,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(25,24,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(26,76,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(27,76,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(28,77,'<com.Leadbolt.AdController: void displayIcon()>',56,'r',NULL),(29,78,'<com.di.internet_accelerator.InternetAcceleratorActivity$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(30,75,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(31,76,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(32,79,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(33,80,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(34,79,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(35,80,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(36,81,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(37,79,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(38,59,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(39,80,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(40,81,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(41,50,'<com.gpapcnew.PontiflexWebviewSDKDemoActivity: void onResume()>',25,'a',NULL),(42,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(43,50,'<com.gpapcnew.PontiflexWebviewSDKDemoActivity: void onResume()>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,4,1),(3,6,1),(4,8,1),(5,9,1),(6,10,5),(7,13,12),(8,16,13),(9,17,13),(10,19,5),(11,20,14),(12,21,5),(13,23,12),(14,24,12),(15,25,12),(16,26,12),(17,27,5),(18,31,12),(19,34,5),(20,35,15),(21,36,15);
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
INSERT INTO `ICategories` VALUES (1,1,1),(2,4,1),(3,6,1),(4,8,2),(5,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.rovio.ka3d.App'),(2,2,'com/crazyapps/angry/birds/multi/user/RestoreActivity'),(3,3,'com/plankton/device/android/service/AndroidMDKService'),(4,4,'com.rovio.ka3d.App'),(5,5,'com/crazyapps/angry/birds/multi/user/ProfilesActivity'),(6,6,'com.rovio.ka3d.App'),(7,7,'com/freeapps/iphone4/galaxy/s3/GoDownloadService'),(8,11,'com/apperhand/device/android/EULAActivity'),(9,12,'com/apperhand/device/android/EULAActivity'),(10,14,'com/apperhand/device/android/AndroidSDKProvider'),(11,15,'com/apperhand/device/android/AndroidSDKProvider'),(12,18,'com/freeapps/iphone4/galaxy/s3/srv'),(13,22,'com/apperhand/device/android/AndroidSDKProvider'),(14,28,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(15,29,'com/apperhand/device/android/AndroidSDKProvider'),(16,30,'com/apperhand/device/android/AndroidSDKProvider'),(17,32,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(18,33,'com/gpapcnew/Harbor'),(19,37,'com/gpapcnew/Harbor');
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
INSERT INTO `IData` VALUES (1,10,1),(2,20,5),(3,21,6),(4,27,13),(5,34,23),(6,35,24),(7,36,25);
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
INSERT INTO `IExtras` VALUES (1,3,'M_SERVER_URL'),(2,3,'DEVELOPER_ID'),(3,3,'APPLICATION_ID'),(4,3,'M_INSTALLATION_URL'),(5,5,'ANGRY_BIRDS_RIO_SETTINGS_FILENAME_PATH'),(6,5,'isNormalGameFound'),(7,5,'ANGRY_BIRDS_RIO_HIGHSCORES_FILENAME_PATH'),(8,5,'ANGRY_BIRDS_SEASONS_SETTINGS_FILENAME_PATH'),(9,5,'isSeasonsGameFound'),(10,5,'ANGRY_BIRDS_HIGHSCORES_FILENAME_PATH'),(11,5,'isRioGameFound'),(12,5,'ANGRY_BIRDS_SETTINGS_FILENAME_PATH'),(13,5,'ANGRY_BIRDS_SEASONS_HIGHSCORES_FILENAME_PATH'),(14,7,'downloadFileName'),(15,7,'downloadUrl'),(16,13,'android.intent.extra.shortcut.NAME'),(17,13,'android.intent.extra.shortcut.ICON'),(18,13,'android.intent.extra.shortcut.INTENT'),(19,14,'eulaAcceptDetails'),(20,14,'M_SERVER_URL'),(21,14,'USER_AGENT'),(22,14,'SERVICE_MODE'),(23,14,'FIRST_RUN'),(24,14,'DEVELOPER_ID'),(25,14,'APPLICATION_ID'),(26,15,'M_SERVER_URL'),(27,15,'USER_AGENT'),(28,15,'SERVICE_MODE'),(29,15,'FIRST_RUN'),(30,15,'DEVELOPER_ID'),(31,15,'APPLICATION_ID'),(32,17,'footerHTML'),(33,17,'bodyHTML'),(34,19,'sms_body'),(35,19,'address'),(36,22,'M_SERVER_URL'),(37,22,'USER_AGENT'),(38,22,'SERVICE_MODE'),(39,22,'FIRST_RUN'),(40,22,'DEVELOPER_ID'),(41,22,'APPLICATION_ID'),(42,23,'android.intent.extra.shortcut.NAME'),(43,23,'android.intent.extra.shortcut.ICON'),(44,23,'android.intent.extra.shortcut.INTENT'),(45,24,'android.intent.extra.shortcut.NAME'),(46,24,'android.intent.extra.shortcut.ICON_RESOURCE'),(47,24,'android.intent.extra.shortcut.INTENT'),(48,25,'android.intent.extra.shortcut.NAME'),(49,25,'android.intent.extra.shortcut.ICON'),(50,25,'android.intent.extra.shortcut.ICON_RESOURCE'),(51,25,'android.intent.extra.shortcut.INTENT'),(52,26,'android.intent.extra.shortcut.NAME'),(53,26,'android.intent.extra.shortcut.ICON'),(54,26,'android.intent.extra.shortcut.INTENT'),(55,29,'M_SERVER_URL'),(56,29,'USER_AGENT'),(57,29,'SERVICE_MODE'),(58,29,'FIRST_RUN'),(59,29,'DEVELOPER_ID'),(60,29,'(.*)'),(61,29,'APPLICATION_ID'),(62,30,'M_SERVER_URL'),(63,30,'USER_AGENT'),(64,30,'SERVICE_MODE'),(65,30,'FIRST_RUN'),(66,30,'DEVELOPER_ID'),(67,30,'APPLICATION_ID'),(68,31,'android.intent.extra.shortcut.NAME'),(69,31,'android.intent.extra.shortcut.ICON'),(70,31,'android.intent.extra.shortcut.INTENT'),(71,32,'offerCount');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,3),(6,6,1),(7,7,3),(8,8,1),(9,9,4),(10,10,5),(11,10,6),(12,11,1),(13,12,7),(14,13,8),(15,14,5),(16,15,3),(17,16,1),(18,17,9),(19,18,3),(20,19,10),(21,20,1),(22,21,11),(23,22,3),(24,23,3),(25,24,17),(26,24,16);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,6,1),(6,8,1),(7,10,5),(8,10,4),(9,11,1),(10,13,4),(11,14,4),(12,15,3),(13,16,1),(14,18,3),(15,20,1),(16,23,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'sms',NULL,NULL,NULL,NULL,NULL),(2,10,'smsto',NULL,NULL,NULL,NULL,NULL),(3,13,NULL,NULL,NULL,NULL,'text','plain'),(4,14,NULL,NULL,NULL,NULL,'vnd.android-dir','mms-sms');
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
INSERT INTO `IMimeTypes` VALUES (1,19,'vnd.android-dir','mms-sms'),(2,35,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rovio.angrybirds'),(2,2,'com.crazyapps.angry.birds.multi.user'),(3,3,'com.crazyapps.angry.birds.multi.user'),(4,4,'com.rovio.angrybirdsseasons'),(5,5,'com.crazyapps.angry.birds.multi.user'),(6,6,'com.rovio.angrybirdsrio'),(7,7,'com.freeapps.iphone4.galaxy.s3'),(8,8,'com.jiubang.goscreenlock'),(9,9,'com.jiubang.goscreenlock'),(10,11,'com.freeapps.iphone4.galaxy.s3'),(11,12,'com.freeapps.iphone4.galaxy.s3'),(12,14,'com.freeapps.iphone4.galaxy.s3'),(13,15,'com.freeapps.iphone4.galaxy.s3'),(14,16,'com.freeapps.iphone4.galaxy.s3'),(15,17,'com.freeapps.iphone4.galaxy.s3'),(16,18,'com.freeapps.iphone4.galaxy.s3'),(17,21,'com.android.vending'),(18,22,'com.di.internet_accelerator'),(19,28,'com.gpapcnew'),(20,29,'com.gpapcnew'),(21,30,'com.gpapcnew'),(22,32,'com.gpapcnew'),(23,33,'com.gpapcnew'),(24,37,'com.gpapcnew');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,5,0),(4,14,0),(5,16,0),(6,19,0),(7,23,0),(8,24,0),(9,27,0),(10,28,0),(11,28,0),(12,30,0),(13,28,0),(14,28,0),(15,34,0),(16,46,0),(17,47,0),(18,56,0),(19,57,0),(20,58,0),(21,61,0),(22,62,0),(23,62,0),(24,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,8,1,0),(10,9,1,0),(11,10,0,0),(12,10,0,0),(13,11,1,0),(14,14,0,0),(15,14,0,0),(16,16,1,0),(17,16,1,0),(18,17,0,0),(19,18,1,0),(20,19,1,0),(21,20,1,0),(22,25,0,0),(23,26,1,0),(24,28,1,0),(25,28,1,0),(26,28,1,0),(27,29,1,0),(28,36,0,0),(29,38,0,0),(30,38,0,0),(31,39,1,0),(32,40,0,0),(33,41,0,0),(34,42,1,0),(35,42,1,0),(36,42,1,0),(37,43,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,18,9,2,NULL),(2,8,1,2,NULL),(3,9,1,2,NULL),(4,8,14,2,NULL),(5,9,14,2,NULL),(6,8,16,2,NULL),(7,9,16,2,NULL),(8,8,19,2,NULL),(9,9,19,2,NULL),(10,8,23,2,NULL),(11,9,23,2,NULL),(12,8,24,2,NULL),(13,9,24,2,NULL),(14,8,27,2,NULL),(15,9,27,2,NULL),(16,8,30,2,NULL),(17,9,30,2,NULL),(18,8,34,2,NULL),(19,9,34,2,NULL),(20,8,28,2,NULL),(21,9,28,2,NULL),(22,8,47,2,NULL),(23,9,47,2,NULL),(24,8,56,2,NULL),(25,9,56,2,NULL),(26,8,46,2,NULL),(27,9,46,2,NULL),(28,34,5,2,NULL),(29,36,5,2,NULL),(30,8,57,2,NULL),(31,9,57,2,NULL),(32,8,67,2,NULL),(33,9,67,2,NULL),(34,8,58,2,NULL),(35,9,58,2,NULL),(36,8,61,2,NULL),(37,9,61,2,NULL),(38,8,62,2,NULL),(39,9,62,2,NULL),(40,11,8,2,NULL),(41,12,8,2,NULL),(42,14,12,2,NULL),(43,14,21,2,NULL),(44,14,29,2,NULL),(45,14,45,2,NULL),(46,14,55,2,NULL),(47,14,60,2,NULL),(48,15,12,2,NULL),(49,15,21,2,NULL),(50,15,29,2,NULL),(51,15,45,2,NULL),(52,15,55,2,NULL),(53,15,60,2,NULL),(54,34,14,2,NULL),(55,36,14,2,NULL),(56,34,16,2,NULL),(57,36,16,2,NULL),(58,34,58,2,NULL),(59,36,58,2,NULL),(60,34,61,2,NULL),(61,36,61,2,NULL),(62,34,62,2,NULL),(63,36,62,2,NULL),(64,33,53,2,NULL),(65,37,53,2,NULL),(66,34,46,2,NULL),(67,36,46,2,NULL),(68,34,1,2,NULL),(69,36,1,2,NULL),(70,34,19,2,NULL),(71,36,19,2,NULL),(72,34,23,2,NULL),(73,36,23,2,NULL),(74,34,24,2,NULL),(75,36,24,2,NULL),(76,34,27,2,NULL),(77,36,27,2,NULL),(78,34,30,2,NULL),(79,36,30,2,NULL),(80,34,34,2,NULL),(81,36,34,2,NULL),(82,34,28,2,NULL),(83,36,28,2,NULL),(84,34,47,2,NULL),(85,36,47,2,NULL),(86,34,56,2,NULL),(87,36,56,2,NULL),(88,34,57,2,NULL),(89,36,57,2,NULL),(90,34,67,2,NULL),(91,36,67,2,NULL),(92,29,12,2,NULL),(93,29,21,2,NULL),(94,29,29,2,NULL),(95,29,45,2,NULL),(96,29,55,2,NULL),(97,29,60,2,NULL),(98,30,12,2,NULL),(99,30,21,2,NULL),(100,30,29,2,NULL),(101,30,45,2,NULL),(102,30,55,2,NULL),(103,30,60,2,NULL),(104,22,12,2,NULL),(105,22,21,2,NULL),(106,22,29,2,NULL),(107,22,45,2,NULL),(108,22,55,2,NULL),(109,22,60,2,NULL),(110,3,4,2,NULL),(111,2,3,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (26,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(32,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(30,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(38,'android.permission.BIND_WALLPAPER'),(27,'android.permission.GET_ACCOUNTS'),(18,'android.permission.INTERNET'),(8,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(28,'android.permission.RECEIVE_BOOT_COMPLETED'),(37,'android.permission.RECEIVE_SMS'),(36,'android.permission.SEND_SMS'),(35,'android.permission.VIBRATE'),(31,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(20,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.android.launcher.permission.WRITE_SETTINGS'),(33,'com.fede.launcher.permission.READ_SETTINGS'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(25,'com.lge.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.lge.launcher.permission.WRITE_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(6,'com.motorola.dlauncher.permission.READ_SETTINGS'),(19,'com.motorola.dlauncher.permission.UNINSTALL_SHORTCUT'),(14,'com.motorola.dlauncher.permission.WRITE_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.launcher.permission.READ_SETTINGS'),(9,'com.motorola.launcher.permission.UNINSTALL_SHORTCUT'),(5,'com.motorola.launcher.permission.WRITE_SETTINGS'),(34,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (15,'n'),(17,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=pname:com.jiubang.goscreenlock',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.di.internet_accelerator',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,12,2),(2,13,3),(3,15,4),(4,21,7),(5,22,8),(6,22,9),(7,23,10),(8,24,11),(9,27,12),(10,30,14),(11,31,15),(12,31,16),(13,32,17),(14,33,18),(15,34,19),(16,35,20),(17,35,21),(18,37,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,2,1),(27,2,2),(28,2,3),(29,2,6),(30,2,7),(31,2,10),(32,2,11),(33,2,12),(34,2,13),(35,2,15),(36,2,17),(37,2,16),(38,2,18),(39,2,20),(40,2,22),(41,2,24),(42,2,27),(43,2,26),(44,2,29),(45,2,28),(46,2,31),(47,2,30),(48,2,34),(49,2,35),(50,2,32),(51,2,33),(52,3,35),(53,3,10),(54,3,12),(55,3,15),(56,3,17),(57,3,18),(58,3,20),(59,3,24),(60,3,26),(61,4,34),(62,3,29),(63,4,35),(64,3,28),(65,4,1),(66,3,30),(67,4,33),(68,4,3),(69,4,6),(70,4,7),(71,4,10),(72,4,11),(73,4,12),(74,4,13),(75,5,1),(76,4,15),(77,5,3),(78,5,36),(79,4,17),(80,4,16),(81,5,6),(82,5,37),(83,4,18),(84,4,20),(85,5,7),(86,4,22),(87,5,8),(88,4,24),(89,5,10),(90,5,11),(91,4,28),(92,4,30),(93,5,12),(94,5,13),(95,5,15),(96,5,17),(97,5,16),(98,5,18),(99,5,20),(100,5,22),(101,5,24),(102,5,28),(103,5,30),(104,6,34),(105,6,1),(106,6,33),(107,6,3),(108,6,6),(109,6,7),(110,6,10),(111,6,11),(112,6,12),(113,6,13),(114,6,15),(115,6,17),(116,6,16),(117,6,18),(118,6,20),(119,6,22),(120,6,24),(121,6,27),(122,6,30),(123,7,1),(124,7,3),(125,7,6),(126,7,7),(127,7,10),(128,7,11),(129,7,12),(130,7,13),(131,7,15),(132,7,17),(133,7,16),(134,7,18),(135,7,20),(136,7,22),(137,7,24),(138,7,26),(139,7,29),(140,7,28),(141,7,31),(142,7,30),(143,7,34),(144,7,35),(145,7,32),(146,7,33);
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

-- Dump completed on 2015-10-12  3:31:33
