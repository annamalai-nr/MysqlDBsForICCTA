-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_687
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
INSERT INTO `ActionStrings` VALUES (19,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PACKAGE_REMOVED'),(5,'android.intent.action.PACKAGE_REPLACED'),(21,'android.intent.action.VIEW'),(7,'android.service.wallpaper.WallpaperService'),(11,'com.airpush.android.PushServiceStart36579'),(14,'com.airpush.android.PushServiceStart52628'),(9,'com.airpush.android.PushServiceStart52821'),(17,'com.airpush.android.PushServiceStart60118'),(16,'com.airpush.android.PushServiceStart61084'),(20,'com.android.launcher.action.INSTALL_SHORTCUT'),(15,'com.applovin.sdk.AppLovinService'),(13,'com.google.android.c2dm.intent.RECEIVE'),(12,'com.google.android.c2dm.intent.REGISTRATION'),(10,'com.inoxpush.adnetwork.PushServiceStart21135'),(6,'com.jiubang.goscreenlock.action.hide_theme_icon'),(2,'com.jiubang.goscreenlock.theme'),(18,'com.senddroid.AdServiceultimate.robot.mecha.warrior');
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
INSERT INTO `Applications` VALUES (1,'com.exiticapps.golockers3',2),(2,'com.phd.lwp.rock',16),(3,'com.sexy_girls.beauty_busty',1),(4,'com.terabyte.iphonelockcouple',16),(5,'com.droidapps.mysterio_lwp',2),(6,'trioapps.ripple.iphone',1),(7,'ultimate.robot.mecha.warrior',20000);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'com.terabyte.iphonelockcouple'),(5,'trioapps.ripple.iphone');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.exiticapps.golockers3.GOScreenLockInstallDialog'),(2,1,'com.exiticapps.golockers3.ForSearch'),(3,1,'com.exiticapps.golockers3.GoDownloadService'),(4,1,'com.apperhand.device.android.AndroidSDKProvider'),(5,1,'com.exiticapps.golockers3.ComponentControlReceiver'),(6,2,'com.phd.lwp.rock.screen.LiveWallpaperSettings'),(7,2,'com.apperhand.device.android.AndroidSDKProvider'),(8,2,'com.phd.lwp.rock.screen.LiveWallpaper'),(9,1,'com.exiticapps.golockers3.Boot'),(10,1,'com.Leadbolt.AdNotification'),(11,2,'com.Leadbolt.AdNotification'),(12,2,'com.phd.lwp.rock.screen.LiveWallpaper$BootReceiver'),(13,3,'com.sexy_girls.beauty_busty.Preferences'),(14,3,'com.airpush.android.PushAds'),(15,3,'com.apperhand.device.android.AndroidSDKProvider'),(16,3,'com.sexy_girls.beauty_busty.Wallpaper'),(17,3,'com.airpush.android.PushService'),(18,3,'com.airpush.android.UserDetailsReceiver'),(19,3,'com.airpush.android.MessageReceiver'),(20,3,'com.airpush.android.DeliveryReceiver'),(21,3,'com.sexy_girls.beauty_busty.BootReceiver'),(22,3,'com.sexy_girls.beauty_busty.boot'),(23,3,'com.Leadbolt.AdNotification'),(24,4,'com.terabyte.iphonelockcouple.GOLockerInstallDialog'),(25,4,'com.airpush.android.PushAds'),(26,4,'com.inoxpush.adnetwork.PushAdService'),(27,4,'com.terabyte.iphonelockcouple.C2DMService'),(28,4,'com.terabyte.iphonelockcouple.GoDownloadServiceervice'),(29,4,'com.moolah.NotificationService'),(30,4,'com.airpush.android.PushService'),(31,4,'com.apperhand.device.android.AndroidSDKProvider'),(32,4,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(33,4,'com.inoxpush.adnetwork.AdMessageReceiver'),(34,4,'com.inoxpush.adnetwork.ClickAdReceiver'),(35,4,'com.terabyte.iphonelockcouple.C2DMRegistrationReceiver'),(36,4,'com.terabyte.iphonelockcouple.C2DMMessageReceiver'),(37,4,'com.moolah.MessageReceiver'),(38,4,'com.moolah.BootReceiver'),(39,4,'com.airpush.android.UserDetailsReceiver'),(40,4,'com.airpush.android.MessageReceiver'),(41,4,'com.airpush.android.DeliveryReceiver'),(42,4,'com.terabyte.iphonelockcar.BootReceiver'),(43,4,'com.Leadbolt.AdNotification'),(44,5,'com.droidapps.mysterio_lwp.WallpaperActivity'),(45,5,'com.droidapps.mysterio_lwp.PrefActivity'),(46,5,'com.airpush.android.PushAds'),(47,5,'com.apperhand.device.android.AndroidSDKProvider'),(48,5,'com.droidapps.mysterio_lwp.Wallpaper'),(49,5,'com.airpush.android.PushService'),(50,5,'com.applovin.sdk.AppLovinService'),(51,5,'com.airpush.android.UserDetailsReceiver'),(52,5,'com.airpush.android.MessageReceiver'),(53,5,'com.airpush.android.DeliveryReceiver'),(54,5,'com.droidapps.mysterio_lwp.BootReceiver'),(55,5,'com.applovin.sdk.AppLovinBootReceiver'),(56,5,'com.droidapps.mysterio_lwp.boot'),(57,5,'com.Leadbolt.AdNotification'),(58,6,'trioapps.ripple.iphone.WallpaperSettings'),(59,6,'com.airpush.android.PushAds'),(60,6,'trioapps.ripple.iphone.IphoneInit'),(61,6,'com.apperhand.device.android.AndroidSDKProvider'),(62,6,'com.airpush.android.PushService'),(63,6,'com.applovin.sdk.AppLovinService'),(64,6,'com.Leadbolt.AdNotification'),(65,6,'com.airpush.android.UserDetailsReceiver'),(66,6,'com.airpush.android.MessageReceiver'),(67,6,'com.airpush.android.DeliveryReceiver'),(68,6,'trioapps.ripple.iphone.Boot'),(69,6,'com.applovin.sdk.AppLovinNotificationReceiver'),(70,6,'com.applovin.sdk.AppLovinPushReceiver'),(71,7,'ultimate.robot.mecha.warrior.RobotMechaWarrior'),(72,7,'com.airpush.android.PushAds'),(73,7,'com.chartboost.sdk.CBDialogActivity'),(74,7,'com.airpush.android.PushService'),(75,7,'com.senddroid.AdService'),(76,7,'ultimate.robot.mecha.warrior.RobotMechaWarriorgb'),(77,7,'com.apperhand.device.android.AndroidSDKProvider'),(78,7,'com.Leadbolt.AdNotification'),(79,7,'com.airpush.android.UserDetailsReceiver'),(80,7,'com.airpush.android.MessageReceiver'),(81,7,'com.airpush.android.DeliveryReceiver'),(82,7,'ultimate.robot.mecha.warrior.BootReceiver'),(83,7,'ultimate.robot.mecha.warrior.RobotMechaWarrioru'),(84,1,'com.apperhand.device.android.a.d'),(85,1,'com.apperhand.device.android.a.b'),(86,1,'com.exiticapps.golockers3.GOScreenLockInstallDialog$1'),(87,2,'com.apperhand.device.android.a.b'),(88,2,'com.apperhand.device.android.a.d'),(89,2,'com.pad.android.xappad.AdController$AdIcon');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'downloadUrl'),(2,5,'pkgname'),(3,3,'downloadFileName'),(4,4,'M_SERVER_URL'),(5,4,'SERVICE_MODE'),(6,4,'USER_AGENT'),(7,4,'APPLICATION_ID'),(8,4,'FIRST_RUN'),(9,7,'APPLICATION_ID'),(10,4,'DEVELOPER_ID'),(11,10,'sectionid'),(12,7,'SERVICE_MODE'),(13,7,'USER_AGENT'),(14,7,'M_SERVER_URL'),(15,7,'FIRST_RUN'),(16,7,'DEVELOPER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,27,NULL),(7,7,'s',0,27,NULL),(8,9,'r',1,NULL,NULL),(9,8,'s',1,27,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,27,NULL),(12,12,'r',1,27,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',1,27,NULL),(17,17,'s',1,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',1,31,NULL),(36,36,'r',1,31,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',1,27,NULL),(49,49,'s',1,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',1,27,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',1,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',1,31,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',1,NULL,NULL),(75,75,'s',1,NULL,NULL),(76,76,'s',1,27,NULL),(77,77,'s',0,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,1),(4,4,1),(5,5,4),(6,6,4),(7,7,1),(8,8,1),(9,9,1),(10,10,7),(11,11,4),(12,12,7),(13,13,1),(14,14,7),(15,15,1),(16,16,7),(17,17,4),(18,18,9),(19,19,9),(20,20,7),(21,21,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,84,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(2,84,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(3,1,'<com.exiticapps.golockers3.GOScreenLockInstallDialog: void safeStartActivity(android.content.Context,android.content.Intent)>',3,'a',NULL),(4,4,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(5,85,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(6,84,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(7,86,'<com.exiticapps.golockers3.GOScreenLockInstallDialog$1: void onClick(android.content.DialogInterface,int)>',49,'a',NULL),(8,1,'<com.exiticapps.golockers3.GOScreenLockInstallDialog: boolean gotoMarket(android.content.Context,java.lang.String)>',7,'a',NULL),(9,86,'<com.exiticapps.golockers3.GOScreenLockInstallDialog$1: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(10,87,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(11,85,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(12,88,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(13,1,'<com.exiticapps.golockers3.GOScreenLockInstallDialog: void gotoDownloadFileDirectly(java.lang.String)>',11,'s',NULL),(14,88,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(15,1,'<com.exiticapps.golockers3.GOScreenLockInstallDialog: boolean gotoBrowser(android.content.Context,java.lang.String)>',7,'a',NULL),(16,87,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(17,85,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(18,89,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',62,'r',NULL),(19,89,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',93,'p',NULL),(20,87,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(21,88,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,1,20),(2,2,1),(3,3,1),(4,6,21),(5,7,21),(6,9,21),(7,10,20),(8,11,20),(9,12,20),(10,13,20);
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
INSERT INTO `ICategories` VALUES (1,2,2),(2,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/apperhand/device/android/AndroidSDKProvider'),(2,5,'android.lgt.appstore.Store'),(3,8,'com/exiticapps/golockers3/GoDownloadService');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,5),(2,9,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,4,'M_SERVER_URL'),(5,4,'USER_AGENT'),(6,4,'SERVICE_MODE'),(7,4,'FIRST_RUN'),(8,4,'DEVELOPER_ID'),(9,4,'APPLICATION_ID'),(10,5,'payload'),(11,7,'CONTENT_TYPE'),(12,7,'P_TYPE'),(13,7,'P_ID'),(14,7,'CAT_TYPE'),(15,7,'IS_ADULT'),(16,7,'N_ID'),(17,8,'downloadFileName'),(18,8,'downloadUrl'),(19,10,'android.intent.extra.shortcut.NAME'),(20,10,'android.intent.extra.shortcut.ICON_RESOURCE'),(21,10,'android.intent.extra.shortcut.INTENT'),(22,11,'android.intent.extra.shortcut.NAME'),(23,11,'android.intent.extra.shortcut.ICON'),(24,11,'android.intent.extra.shortcut.ICON_RESOURCE'),(25,11,'android.intent.extra.shortcut.INTENT'),(26,12,'android.intent.extra.shortcut.NAME'),(27,12,'android.intent.extra.shortcut.ICON'),(28,12,'android.intent.extra.shortcut.INTENT'),(29,13,'android.intent.extra.shortcut.NAME'),(30,13,'android.intent.extra.shortcut.ICON'),(31,13,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,5),(5,3,3),(6,4,6),(7,5,8),(8,6,7),(9,7,8),(10,8,7),(11,9,9),(12,10,8),(13,11,8),(14,12,1),(15,13,2),(16,14,10),(17,15,11),(18,16,12),(19,17,13),(20,18,8),(21,19,8),(22,20,1),(23,21,7),(24,22,14),(25,23,15),(26,24,8),(27,25,8),(28,26,8),(29,27,7),(30,28,16),(31,29,15),(32,30,8),(33,31,13),(34,32,12),(35,33,8),(36,34,1),(37,35,17),(38,36,18),(39,37,7),(40,38,8),(41,39,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,2),(4,10,3),(5,12,2),(6,13,2),(7,16,4),(8,17,4),(9,18,3),(10,19,3),(11,20,1),(12,24,3),(13,30,3),(14,31,5),(15,32,5),(16,33,3),(17,34,1),(18,38,3);
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
INSERT INTO `IFData` VALUES (1,3,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'vnd.kt.olleh.storefront','detail.kt.olleh.storefront');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.jiubang.goscreenlock'),(2,3,'com.jiubang.goscreenlock'),(3,4,'com.exiticapps.golockers3'),(4,5,'android.lgt.appstore'),(5,6,'com.android.vending'),(6,8,'com.exiticapps.golockers3');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,5,0),(5,8,0),(6,9,0),(7,12,0),(8,16,0),(9,17,0),(10,21,0),(11,22,0),(12,24,0),(13,24,0),(14,26,0),(15,30,0),(16,35,0),(17,36,0),(18,38,0),(19,42,0),(20,44,0),(21,48,0),(22,49,0),(23,50,0),(24,54,0),(25,55,0),(26,56,0),(27,60,0),(28,62,0),(29,63,0),(30,68,0),(31,70,0),(32,70,0),(33,68,0),(34,71,0),(35,74,0),(36,75,0),(37,76,0),(38,82,0),(39,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,3,1,0),(3,3,1,0),(4,4,0,0),(5,7,0,0),(6,8,1,0),(7,9,1,0),(8,13,0,0),(9,15,1,0),(10,18,1,0),(11,18,1,0),(12,18,1,0),(13,21,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_WALLPAPER'),(1,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(28,'android.permission.GET_ACCOUNTS'),(19,'android.permission.INTERNET'),(32,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(35,'android.permission.SEND_SMS'),(23,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.fede.launcher.permission.READ_SETTINGS'),(30,'com.google.android.c2dm.permission.RECEIVE'),(31,'com.google.android.c2dm.permission.SEND'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(26,'com.motorola.launcher.permission.READ_SETTINGS'),(29,'com.terabyte.iphonelockcouple.theme.permission.C2D_MESSAGE'),(22,'org.adw.launcher.permission.READ_SETTINGS'),(33,'trioapps.ripple.iphone.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (29,'s'),(33,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'http://market.android.com/details?id=com.jiubang.goscreenlock&referrer=utm_source%3DGOLockerThemeRedheart%26utm_medium%3DHyperlink%26utm_campaign%3D3DGOLauncher_Ads_Promotion',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'http://goo.gl/OMEkg',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,2,2),(3,5,3),(4,6,4),(5,10,6),(6,11,7),(7,12,8),(8,14,9),(9,14,10),(10,16,11),(11,17,13),(12,19,14),(13,20,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,2,2),(24,1,22),(25,2,4),(26,1,25),(27,2,5),(28,1,24),(29,2,6),(30,1,26),(31,2,7),(32,2,8),(33,2,9),(34,2,10),(35,2,11),(36,2,12),(37,2,13),(38,2,14),(39,2,15),(40,2,17),(41,2,16),(42,2,19),(43,2,18),(44,2,21),(45,2,20),(46,2,23),(47,2,22),(48,2,25),(49,2,24),(50,2,27),(51,2,26),(52,3,2),(53,3,3),(54,3,4),(55,3,5),(56,3,6),(57,3,7),(58,3,8),(59,3,9),(60,3,10),(61,3,11),(62,3,13),(63,3,14),(64,3,15),(65,3,17),(66,3,16),(67,3,19),(68,3,18),(69,3,21),(70,3,23),(71,3,22),(72,3,25),(73,3,26),(74,4,2),(75,4,3),(76,4,4),(77,4,5),(78,4,6),(79,4,7),(80,4,8),(81,4,9),(82,4,10),(83,4,11),(84,4,12),(85,4,13),(86,4,15),(87,4,17),(88,4,16),(89,4,19),(90,4,18),(91,4,21),(92,4,23),(93,4,22),(94,4,25),(95,4,24),(96,4,26),(97,4,29),(98,4,28),(99,4,30),(100,5,2),(101,5,3),(102,5,4),(103,5,5),(104,5,6),(105,5,7),(106,5,8),(107,5,9),(108,5,10),(109,5,11),(110,5,13),(111,5,14),(112,5,15),(113,5,17),(114,5,16),(115,5,19),(116,5,18),(117,5,21),(118,5,23),(119,5,22),(120,5,25),(121,5,26),(122,6,2),(123,6,3),(124,6,4),(125,6,5),(126,6,6),(127,6,7),(128,6,8),(129,6,9),(130,6,10),(131,6,11),(132,6,12),(133,6,13),(134,6,15),(135,6,17),(136,6,16),(137,6,19),(138,6,18),(139,6,21),(140,6,20),(141,6,23),(142,6,22),(143,6,25),(144,6,24),(145,6,26),(146,6,28),(147,6,30),(148,6,34),(149,6,35),(150,6,32),(151,6,33),(152,7,2),(153,7,3),(154,7,4),(155,7,5),(156,7,6),(157,7,7),(158,7,8),(159,7,9),(160,7,10),(161,7,11),(162,7,12),(163,7,13),(164,7,14),(165,7,15),(166,7,17),(167,7,16),(168,7,19),(169,7,18),(170,7,21),(171,7,20),(172,7,23),(173,7,22),(174,7,25),(175,7,24),(176,7,26);
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

-- Dump completed on 2015-10-09  0:40:48
