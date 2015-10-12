-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_722
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
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.NEW_OUTGOING_CALL'),(16,'android.intent.action.PHONE_STATE'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(9,'android.service.wallpaper.WallpaperService'),(14,'c.o.m.c.ys.y.ch'),(3,'com.airpush.android.PushServiceStart25146'),(7,'com.airpush.android.PushServiceStart34094'),(8,'com.airpush.android.PushServiceStart46911'),(11,'com.airpush.android.PushServiceStart57188'),(13,'com.airpush.android.PushServiceStart63829'),(12,'com.android.vending.INSTALL_REFERRER'),(10,'com.applovin.sdk.AppLovinService'),(6,'com.senddroid.AdServicecom.lovepoemsh1');
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
INSERT INTO `Applications` VALUES (1,'com.crazyapps.favorite.games.backup',1),(2,'org.tonee.sense3.organizer.free',1),(3,'com.lovepoemsh1',7),(4,'in.droidplay.whiterose',1),(5,'com.boxitsoft.bubblebatshooter',9),(6,'com.real_football_match2012.free',1),(7,'androidtop.specialforces',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.crazyapps.favorite.games.backup.Main'),(2,1,'com.crazyapps.favorite.games.backup.GameActivity'),(3,1,'com.plankton.device.android.service.AndroidMDKService'),(4,1,'com.crazyapps.favorite.games.backup.k'),(5,1,'com.crazyapps.favorite.games.backup.e'),(6,2,'org.tonee.sense3.organizer.free.AcHelp'),(7,2,'org.tonee.sense3.organizer.free.AcAbout'),(8,2,'org.tonee.sense3.organizer.free.AcMyApps'),(9,2,'org.tonee.sense3.organizer.free.AcRateMeWith5Stars'),(10,2,'org.tonee.sense3.organizer.free.AcNewspaper'),(11,2,'org.tonee.sense3.organizer.free.AcApplicationLunchers'),(12,2,'org.tonee.sense3.organizer.free.AcSquareLuncher01'),(13,2,'org.tonee.sense3.organizer.free.AcSquareLuncher02'),(14,2,'org.tonee.sense3.organizer.free.AcSquareLuncher03'),(15,2,'org.tonee.sense3.organizer.free.AcSquareLuncher04'),(16,2,'org.tonee.sense3.organizer.free.AcFullVersionBrowser'),(17,2,'org.tonee.sense3.organizer.free.AcFullVersionMedia'),(18,2,'org.tonee.sense3.organizer.free.AcFullVersionMessages'),(19,2,'org.tonee.sense3.organizer.free.AcFullVersionOrganizer'),(20,2,'org.tonee.sense3.organizer.free.AcFullVersionSounds'),(21,2,'org.tonee.sense3.organizer.free.AcSettingsMedium'),(22,2,'com.airpush.android.PushAds'),(23,2,'com.apperhand.device.android.AndroidSDKProvider'),(24,2,'com.airpush.android.PushService'),(25,2,'org.tonee.sense3.organizer.free.WidgetMedium'),(26,2,'com.airpush.android.UserDetailsReceiver'),(27,2,'com.airpush.android.MessageReceiver'),(28,3,'com.lovepoemsh1.MainActivity_'),(29,2,'com.airpush.android.DeliveryReceiver'),(30,2,'org.tonee.sense3.organizer.free.airpush.BootReceiver'),(31,3,'com.lovepoemsh1.RateActivity'),(32,3,'com.airpush.android.PushAds'),(33,3,'com.apperhand.device.android.AndroidSDKProvider'),(34,3,'com.senddroid.AdService'),(35,3,'com.airpush.android.PushService'),(36,3,'com.airpush.android.UserDetailsReceiver'),(37,3,'com.airpush.android.MessageReceiver'),(38,3,'com.airpush.android.DeliveryReceiver'),(39,3,'com.lovepoemsh1.BootReceiver'),(40,4,'in.droidplay.whiterose.App'),(41,5,'com.boxitsoft.bubblebatshooter.Main'),(42,3,'com.Leadbolt.AdNotification'),(43,4,'in.droidplay.whiterose.PrefActivity'),(44,5,'com.airpush.android.PushAds'),(45,4,'com.airpush.android.PushAds'),(46,5,'com.airpush.android.PushService'),(47,4,'com.apperhand.device.android.AndroidSDKProvider'),(48,4,'in.droidplay.whiterose.Wallpaper'),(49,5,'com.apperhand.device.android.AndroidSDKProvider'),(50,5,'com.boxitsoft.ServiceTemplate'),(51,4,'com.applovin.sdk.AppLovinService'),(52,5,'com.airpush.android.UserDetailsReceiver'),(53,5,'com.airpush.android.MessageReceiver'),(54,4,'com.airpush.android.PushService'),(55,5,'com.airpush.android.DeliveryReceiver'),(56,5,'com.google.android.apps.analytics.AnalyticsReceiver'),(57,4,'com.applovin.sdk.AppLovinBootReceiver'),(58,5,'com.Leadbolt.AdNotification'),(59,6,'com.real_football_match2012.free.AngryWarriorActivity'),(60,4,'com.airpush.android.UserDetailsReceiver'),(61,5,'com.boxitsoft.BootReceiver'),(62,4,'com.airpush.android.MessageReceiver'),(63,4,'com.airpush.android.DeliveryReceiver'),(64,6,'com.airpush.android.PushAds'),(65,5,'com.boxitsoft.MyStartServiceReceiver'),(66,4,'in.droidplay.whiterose.BootReceiver'),(67,6,'com.sellaring.sdk.PostCallScreenActivity'),(68,6,'com.moolah.NotificationService'),(69,6,'com.apperhand.device.android.AndroidSDKProvider'),(70,4,'in.droidplay.whiterose.boot'),(71,6,'com.airpush.android.PushService'),(72,4,'com.Leadbolt.AdNotification'),(73,6,'com.Leadbolt.AdNotification'),(74,6,'com.moolah.MessageReceiver'),(75,6,'com.moolah.BootReceiver'),(76,7,'androidtop.specialforces.SpecialForces'),(77,6,'com.airpush.android.UserDetailsReceiver'),(78,7,'com.google.ads.AdActivity'),(79,6,'com.airpush.android.MessageReceiver'),(80,7,'com.jasonwu.pushads.AdmobProvider'),(81,6,'com.airpush.android.DeliveryReceiver'),(82,6,'com.real_football_match2012.free.BootReceiver'),(83,7,'com.jasonwu.pushads.MobAdsProvider'),(84,6,'com.sellaring.sdk.AlarmReceiver'),(85,7,'com.jasonwu.pushads.BootBroadCastReceiver'),(86,6,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(87,6,'com.sellaring.sdk.PhoneStateReceiver'),(88,7,'com.jasonwu.pushads.e'),(89,7,'androidtop.specialforces.SpecialForces$5'),(90,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(91,7,'androidtop.specialforces.SpecialForces$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'M_INSTALLATION_URL'),(2,2,'appId'),(3,3,'APPLICATION_ID'),(4,3,'M_SERVER_URL'),(5,3,'DEVELOPER_ID'),(6,76,'com.google.circles.platform.result.extra.CONFIRMATION'),(7,76,'com.google.circles.platform.result.extra.ACTION'),(8,76,'params'),(9,76,'com.google.ads.AdOpener'),(10,76,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,6,'a',1,NULL,NULL),(5,7,'a',0,NULL,NULL),(6,8,'a',0,NULL,NULL),(7,9,'a',0,NULL,NULL),(8,10,'a',0,NULL,NULL),(9,11,'a',0,NULL,NULL),(10,12,'a',0,NULL,NULL),(11,13,'a',0,NULL,NULL),(12,14,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'a',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',1,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'s',0,NULL,NULL),(22,24,'s',1,NULL,NULL),(23,25,'r',1,NULL,NULL),(24,26,'r',0,NULL,NULL),(25,27,'r',0,NULL,NULL),(26,28,'a',1,NULL,NULL),(27,29,'r',0,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'s',0,NULL,NULL),(32,34,'s',1,NULL,NULL),(33,35,'s',1,NULL,NULL),(34,36,'r',0,NULL,NULL),(35,37,'r',0,NULL,NULL),(36,38,'r',0,NULL,NULL),(37,39,'r',1,NULL,NULL),(38,40,'a',1,NULL,NULL),(39,41,'a',1,NULL,NULL),(40,42,'r',0,NULL,NULL),(41,43,'a',1,NULL,NULL),(42,45,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,46,'s',1,NULL,NULL),(45,47,'s',0,NULL,NULL),(46,48,'s',1,42,NULL),(47,49,'s',0,NULL,NULL),(48,50,'s',0,NULL,NULL),(49,51,'s',1,NULL,NULL),(50,52,'r',0,NULL,NULL),(51,53,'r',0,NULL,NULL),(52,54,'s',1,NULL,NULL),(53,55,'r',0,NULL,NULL),(54,56,'r',1,NULL,NULL),(55,57,'r',1,NULL,NULL),(56,58,'r',0,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'r',0,NULL,NULL),(59,61,'r',1,NULL,NULL),(60,62,'r',0,NULL,NULL),(61,63,'r',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'r',0,NULL,NULL),(64,66,'r',1,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'s',0,NULL,NULL),(67,69,'s',0,NULL,NULL),(68,70,'r',1,NULL,NULL),(69,71,'s',1,NULL,NULL),(70,72,'r',0,NULL,NULL),(71,73,'r',0,NULL,NULL),(72,74,'r',0,NULL,NULL),(73,75,'r',1,NULL,NULL),(74,76,'a',1,NULL,NULL),(75,77,'r',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'r',0,NULL,NULL),(78,80,'a',1,NULL,NULL),(79,81,'r',0,NULL,NULL),(80,82,'r',1,NULL,NULL),(81,83,'s',0,NULL,NULL),(82,84,'r',0,NULL,NULL),(83,85,'r',1,NULL,NULL),(84,86,'r',1,NULL,NULL),(85,87,'r',1,NULL,NULL),(86,90,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,74),(5,4,78),(6,5,74),(7,6,74),(8,7,76),(9,8,83),(10,9,74),(11,10,76);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.crazyapps.favorite.games.backup.k: void onClick(android.view.View)>',8,'a',NULL),(2,3,'<com.plankton.device.android.service.AndroidMDKService: void a(android.content.Context,java.lang.String,java.lang.String)>',12,'s',NULL),(3,5,'<com.crazyapps.favorite.games.backup.e: void onClick(android.view.View)>',15,'a',NULL),(4,88,'<com.jasonwu.pushads.e: void a(android.app.Activity,java.lang.String,java.lang.String,com.jasonwu.pushads.d)>',10,'s',NULL),(5,76,'<androidtop.specialforces.SpecialForces: void a()>',25,'a',NULL),(6,89,'<androidtop.specialforces.SpecialForces$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(7,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(8,85,'<com.jasonwu.pushads.BootBroadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(9,91,'<androidtop.specialforces.SpecialForces$6: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(10,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,1),(23,25,1),(24,26,1),(25,27,1),(26,28,1),(27,29,1),(28,30,1),(29,32,17),(30,33,17),(31,36,17),(32,37,17),(33,38,20),(34,39,20),(35,40,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,1),(23,25,1),(24,26,1),(25,27,1),(26,28,1),(27,29,1),(28,30,1),(29,34,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/crazyapps/favorite/games/backup/GameActivity'),(2,2,'com/plankton/device/android/service/AndroidMDKService'),(3,3,'com.halfbrick.fruitninja.FruitNinjaActivity'),(4,4,'com.halfbrick.fruitninja.FruitNinjaActivity'),(5,5,'com.magicwach.rdefense.TitleActivity'),(6,6,'com.halfbrick.fruitninja.FruitNinjaActivity'),(7,7,'com.magicwach.rdefense_free.TitleActivity'),(8,8,'com.magicwach.rdefense.TitleActivity'),(9,9,'com.rovio.ka3d.App'),(10,10,'com.magicwach.rdefense_free.TitleActivity'),(11,11,'com.magicwach.rdefense_free.TitleActivity'),(12,12,'com.rovio.ka3d.App'),(13,13,'com.magicwach.rdefense.TitleActivity'),(14,14,'com.magicwach.rdefense.TitleActivity'),(15,15,'com.halfbrick.fruitninja.FruitNinjaActivity'),(16,16,'com.halfbrick.fruitninja.FruitNinjaActivity'),(17,17,'com.magicwach.rdefense_free.TitleActivity'),(18,18,'com.magicwach.rdefense_free.TitleActivity'),(19,19,'com.rovio.ka3d.App'),(20,20,'com.halfbrick.fruitninja.FruitNinjaActivity'),(21,21,'com.magicwach.rdefense.TitleActivity'),(22,22,'com.magicwach.rdefense.TitleActivity'),(23,23,'com.rovio.ka3d.App'),(24,24,'com.rovio.ka3d.App'),(25,25,'com.rovio.ka3d.App'),(26,26,'com.rovio.ka3d.App'),(27,27,'com.halfbrick.fruitninja.FruitNinjaActivity'),(28,28,'com.magicwach.rdefense_free.TitleActivity'),(29,29,'com.magicwach.rdefense.TitleActivity'),(30,30,'com.magicwach.rdefense_free.TitleActivity'),(31,31,'com/jasonwu/pushads/MobAdsProvider'),(32,34,'com.google.android.apps.circles.platform.PlusOneActivity'),(33,35,'com/jasonwu/pushads/MobAdsProvider');
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
INSERT INTO `IData` VALUES (1,32,1),(2,33,2),(3,36,3),(4,37,4),(5,38,5),(6,39,6),(7,40,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'appId'),(2,2,'M_SERVER_URL'),(3,2,'DEVELOPER_ID'),(4,2,'APPLICATION_ID'),(5,2,'M_INSTALLATION_URL'),(6,34,'com.google.circles.platform.intent.extra.ACTION'),(7,34,'(.*)'),(8,34,'com.google.circles.platform.intent.extra.ENTITY'),(9,34,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,1),(7,7,5),(8,8,6),(9,9,7),(10,10,5),(11,11,1),(12,12,1),(13,13,8),(14,14,9),(15,15,10),(16,16,11),(17,17,12),(18,18,5),(19,19,1),(20,20,5),(21,21,5),(22,22,5),(23,23,13),(24,24,5),(25,25,1),(26,26,14),(27,27,5),(28,28,5),(29,29,5),(30,30,16),(31,30,15),(32,31,18),(33,31,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,1),(4,7,2),(5,10,2),(6,11,1),(7,12,1),(8,19,1),(9,21,2),(10,24,2),(11,25,1),(12,26,3),(13,27,2);
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
INSERT INTO `IMimeTypes` VALUES (1,32,'application','vnd.android.package-archive'),(2,38,'(.*)','(.*)'),(3,40,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.crazyapps.favorite.games.backup'),(2,2,'com.crazyapps.favorite.games.backup'),(3,3,'com.magicwach.rdefense_free'),(4,4,'com.magicwach.rdefense'),(5,5,'NULL-CONSTANT'),(6,6,'com.rovio.angrybirdsseasons'),(7,7,'com.magicwach.rdefense'),(8,8,'com.magicwach.rdefense_free'),(9,9,'NULL-CONSTANT'),(10,10,'com.rovio.angrybirdsrio'),(11,11,'com.magicwach.rdefense_free'),(12,12,'com.rovio.angrybirdsrio'),(13,13,'com.magicwach.rdefense'),(14,14,'com.halfbrick.fruitninja'),(15,15,'com.rovio.angrybirds'),(16,16,'com.halfbrick.fruitninja'),(17,17,'com.rovio.angrybirds'),(18,18,'com.halfbrick.fruitninja'),(19,19,'com.magicwach.rdefense'),(20,20,'com.rovio.angrybirdsrio'),(21,21,'com.rovio.angrybirds'),(22,22,'com.rovio.angrybirdsseasons'),(23,23,'com.magicwach.rdefense_free'),(24,24,'com.halfbrick.fruitninja'),(25,25,'com.rovio.angrybirdsseasons'),(26,26,'com.rovio.angrybirds'),(27,27,'NULL-CONSTANT'),(28,28,'com.rovio.angrybirdsseasons'),(29,29,'com.rovio.angrybirdsrio'),(30,30,'NULL-CONSTANT'),(31,31,'androidtop.specialforces'),(32,34,'com.google.android.apps.plus'),(33,35,'androidtop.specialforces');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,19,0),(4,22,0),(5,23,0),(6,26,0),(7,28,0),(8,32,0),(9,33,0),(10,37,0),(11,38,0),(12,39,0),(13,44,0),(14,46,0),(15,49,0),(16,52,0),(17,54,0),(18,55,0),(19,57,0),(20,59,0),(21,64,0),(22,68,0),(23,69,0),(24,73,0),(25,74,0),(26,78,0),(27,80,0),(28,83,0),(29,84,0),(30,85,0),(31,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,3,0,0),(6,3,0,0),(7,3,0,0),(8,3,0,0),(9,3,0,0),(10,3,0,0),(11,3,0,0),(12,3,0,0),(13,3,0,0),(14,3,0,0),(15,3,0,0),(16,3,0,0),(17,3,0,0),(18,3,0,0),(19,3,0,0),(20,3,0,0),(21,3,0,0),(22,3,0,0),(23,3,0,0),(24,3,0,0),(25,3,0,0),(26,3,0,0),(27,3,0,0),(28,3,0,0),(29,3,0,0),(30,3,0,0),(31,4,0,0),(32,5,1,0),(33,6,1,0),(34,7,0,0),(35,8,0,0),(36,9,1,0),(37,10,1,0),(38,10,1,0),(39,10,1,0),(40,10,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,37,39,2,NULL),(2,39,39,2,NULL),(3,37,44,2,NULL),(4,39,44,2,NULL),(5,37,54,2,NULL),(6,39,54,2,NULL),(7,37,59,2,NULL),(8,39,59,2,NULL),(9,37,4,2,NULL),(10,39,4,2,NULL),(11,37,19,2,NULL),(12,39,19,2,NULL),(13,37,22,2,NULL),(14,39,22,2,NULL),(15,37,23,2,NULL),(16,39,23,2,NULL),(17,37,28,2,NULL),(18,39,28,2,NULL),(19,37,38,2,NULL),(20,39,38,2,NULL),(21,37,46,2,NULL),(22,39,46,2,NULL),(23,37,49,2,NULL),(24,39,49,2,NULL),(25,37,52,2,NULL),(26,39,52,2,NULL),(27,37,55,2,NULL),(28,39,55,2,NULL),(29,37,64,2,NULL),(30,39,64,2,NULL),(31,37,68,2,NULL),(32,39,68,2,NULL),(33,37,57,2,NULL),(34,39,57,2,NULL),(35,37,69,2,NULL),(36,39,69,2,NULL),(37,37,73,2,NULL),(38,39,73,2,NULL),(39,37,80,2,NULL),(40,39,80,2,NULL),(41,37,84,2,NULL),(42,39,84,2,NULL),(43,37,85,2,NULL),(44,39,85,2,NULL),(45,37,1,2,NULL),(46,39,1,2,NULL),(47,2,3,2,NULL),(48,37,26,2,NULL),(49,39,26,2,NULL),(50,37,32,2,NULL),(51,39,32,2,NULL),(52,37,33,2,NULL),(53,39,33,2,NULL),(54,37,37,2,NULL),(55,39,37,2,NULL),(56,37,74,2,NULL),(57,39,74,2,NULL),(58,37,78,2,NULL),(59,39,78,2,NULL),(60,37,83,2,NULL),(61,39,83,2,NULL),(62,37,86,2,NULL),(63,39,86,2,NULL),(64,35,81,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (25,'android.permission.ACCESS_COARSE_LOCATION'),(27,'android.permission.ACCESS_FINE_LOCATION'),(41,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(40,'android.permission.ACCESS_MOCK_LOCATION'),(24,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(42,'android.permission.BIND_WALLPAPER'),(38,'android.permission.CALL_PHONE'),(39,'android.permission.CONTROL_LOCATION_UPDATES'),(36,'android.permission.DEVICE_POWER'),(46,'android.permission.FLASHLIGHT'),(32,'android.permission.GET_ACCOUNTS'),(44,'android.permission.GET_TASKS'),(47,'android.permission.INSTALL_PACKAGES'),(12,'android.permission.INTERNET'),(45,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(37,'android.permission.PROCESS_OUTGOING_CALLS'),(33,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(35,'android.permission.SET_ORIENTATION'),(43,'android.permission.SET_WALLPAPER'),(30,'android.permission.VIBRATE'),(31,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_SETTINGS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(17,'com.android.launcher.permission.WRITE_SETTINGS'),(28,'com.fede.launcher.permission.READ_SETTINGS'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(20,'com.lge.launcher.permission.UNINSTALL_SHORTCUT'),(16,'com.lge.launcher.permission.WRITE_SETTINGS'),(21,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(19,'com.motorola.launcher.permission.READ_SETTINGS'),(10,'com.motorola.launcher.permission.UNINSTALL_SHORTCUT'),(5,'com.motorola.launcher.permission.WRITE_SETTINGS'),(29,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:\"XXXVIP\"',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=androidtop.specialforces',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,20),(21,2,1),(22,2,2),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,11),(28,2,12),(29,2,13),(30,2,14),(31,2,15),(32,2,19),(33,2,18),(34,2,21),(35,2,23),(36,2,22),(37,2,24),(38,3,1),(39,3,2),(40,3,7),(41,3,9),(42,3,11),(43,3,12),(44,3,13),(45,3,14),(46,3,15),(47,3,19),(48,3,18),(49,3,21),(50,3,23),(51,3,22),(52,3,25),(53,3,24),(54,3,27),(55,3,26),(56,3,29),(57,3,28),(58,3,31),(59,3,30),(60,4,34),(61,4,1),(62,4,32),(63,5,35),(64,4,2),(65,5,1),(66,4,33),(67,5,2),(68,4,6),(69,5,36),(70,4,7),(71,5,6),(72,4,8),(73,5,7),(74,4,9),(75,5,8),(76,4,11),(77,5,9),(78,4,12),(79,5,11),(80,4,13),(81,5,12),(82,4,14),(83,5,13),(84,4,15),(85,5,14),(86,4,19),(87,5,15),(88,4,18),(89,5,19),(90,4,21),(91,5,18),(92,4,23),(93,5,21),(94,4,22),(95,5,23),(96,4,25),(97,5,22),(98,4,24),(99,5,25),(100,4,27),(101,5,24),(102,4,29),(103,5,27),(104,4,28),(105,5,29),(106,4,30),(107,5,28),(108,5,31),(109,6,1),(110,6,2),(111,6,3),(112,6,6),(113,6,7),(114,6,8),(115,6,9),(116,6,11),(117,6,12),(118,6,13),(119,6,14),(120,6,15),(121,6,19),(122,6,18),(123,6,21),(124,6,23),(125,6,22),(126,6,25),(127,6,24),(128,6,27),(129,6,29),(130,6,28),(131,7,1),(132,6,31),(133,7,2),(134,6,30),(135,7,3),(136,6,32),(137,7,6),(138,6,38),(139,7,7),(140,6,39),(141,7,8),(142,6,37),(143,7,9),(144,6,40),(145,7,11),(146,6,41),(147,7,12),(148,7,13),(149,7,14),(150,7,15),(151,7,19),(152,7,18),(153,7,21),(154,7,23),(155,7,22),(156,7,25),(157,7,24),(158,7,27),(159,7,29),(160,7,28),(161,7,31),(162,7,30),(163,7,32),(164,7,38),(165,7,43),(166,7,46),(167,7,47),(168,7,44),(169,7,45);
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

-- Dump completed on 2015-10-12  3:31:32
