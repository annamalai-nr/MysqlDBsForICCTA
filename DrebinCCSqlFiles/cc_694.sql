-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_694
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(9,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.BOOT_COMPLETED'),(28,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(29,'android.intent.action.SENDTO'),(25,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(22,'com.airpush.android.PushServiceStart(.*)'),(8,'com.airpush.android.PushServiceStart16424'),(4,'com.airpush.android.PushServiceStart16671'),(3,'com.airpush.android.PushServiceStart25277'),(11,'com.airpush.android.PushServiceStart27228'),(13,'com.airpush.android.PushServiceStart36579'),(17,'com.airpush.android.PushServiceStart52054'),(19,'com.airpush.android.PushServiceStart55912'),(24,'com.airpush.android.PushServiceStartInvalid'),(27,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(23,'com.airpush.android.PushServiceStartinvalid Id'),(26,'com.android.launcher.action.INSTALL_SHORTCUT'),(14,'com.android.vending.INSTALL_REFERRER'),(20,'com.applovin.sdk.AppLovinService'),(16,'com.google.android.c2dm.intent.RECEIVE'),(15,'com.google.android.c2dm.intent.REGISTRATION'),(12,'com.inoxpush.adnetwork.PushServiceStart31115'),(10,'com.jiubang.goscreenlock.theme'),(6,'com.senddroid.AdServicecom.custom.lwp.Not_touch_phone_gun_shot_ads'),(18,'com.senddroid.AdServicecom.zoomobile.lwp.baby.v01'),(21,'com.senddroid.AdServiceorg.drhu.iRadio');
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
INSERT INTO `Applications` VALUES (1,'com.antonio.home',13),(2,'com.custom.lwp.Not_touch_phone_gun_shot_ads',4),(3,'org.tonee.fly.widgets.free',5),(4,'androidtop.specialforces',11),(5,'com.go.launcher.ex.locker.theme.garfield',2),(6,'com.zoomobile.lwp.baby.v01',6),(7,'org.drhu.iRadio',20);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.go.launcher.ex.locker.theme.garfield');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.antonio.home.AcMain'),(2,1,'com.antonio.home.AcMyApps'),(3,3,'org.tonee.fly.widgets.free.AcHelp'),(4,1,'com.antonio.home.AcLoadCategoryPic'),(5,1,'com.antonio.home.AcLoadFavorites'),(6,3,'org.tonee.fly.widgets.free.AcFullVersion'),(7,1,'com.antonio.home.AcRateMeWith5Stars'),(8,3,'org.tonee.fly.widgets.free.AcMyApps'),(9,2,'com.custom.lwp.Not_touch_phone_gun_shot_ads.settings'),(10,1,'com.antonio.home.AcMenu'),(11,3,'org.tonee.fly.widgets.free.AcApplicationLunchers'),(12,2,'com.airpush.android.PushAds'),(13,1,'com.antonio.home.AcVote'),(14,3,'org.tonee.fly.widgets.free.AcExitMessage'),(15,2,'com.custom.lwp.Not_touch_phone_gun_shot_ads.IFBTLiveWallpaperService'),(16,1,'com.antonio.home.AcMessage'),(17,3,'org.tonee.fly.widgets.free.AcNoAdsMessage'),(18,1,'com.antonio.home.AcAbout'),(19,3,'org.tonee.fly.widgets.free.AcRateMeWith5Stars'),(20,1,'com.antonio.home.AcNewspaper'),(21,3,'org.tonee.fly.widgets.free.AcNewspaper'),(22,2,'com.apperhand.device.android.AndroidSDKProvider'),(23,1,'com.airpush.android.PushAds'),(24,3,'org.tonee.fly.widgets.free.AcEULA'),(25,2,'com.airpush.android.PushService'),(26,1,'com.apperhand.device.android.AndroidSDKProvider'),(27,3,'org.tonee.fly.widgets.free.AcAbout'),(28,1,'com.airpush.android.PushService'),(29,3,'org.tonee.fly.widgets.free.AcConfigure1x2'),(30,2,'com.senddroid.AdService'),(31,1,'com.airpush.android.UserDetailsReceiver'),(32,3,'org.tonee.fly.widgets.free.AcConfigure1x3'),(33,1,'com.airpush.android.MessageReceiver'),(34,2,'com.airpush.android.UserDetailsReceiver'),(35,1,'com.airpush.android.DeliveryReceiver'),(36,2,'com.airpush.android.MessageReceiver'),(37,3,'com.airpush.android.PushAds'),(38,1,'airpush.BootReceiver'),(39,2,'com.airpush.android.DeliveryReceiver'),(40,3,'com.apperhand.device.android.AndroidSDKProvider'),(41,2,'com.Leadbolt.AdNotification'),(42,3,'com.airpush.android.PushService'),(43,4,'androidtop.specialforces.SpecialForces'),(44,2,'com.custom.lwp.Not_touch_phone_gun_shot_ads.BootReceiver'),(45,5,'com.go.launcher.ex.locker.theme.garfield.GOLockerInstallDialog'),(46,3,'org.tonee.fly.widgets.free.Widget1x2'),(47,4,'com.google.ads.AdActivity'),(48,4,'com.airpush.android.PushAds'),(49,4,'com.jasonwu.pushads.AdmobProvider'),(50,3,'org.tonee.fly.widgets.free.Widget1x3'),(51,4,'com.apperhand.device.android.AndroidSDKProvider'),(52,4,'com.airpush.android.PushService'),(53,5,'com.airpush.android.PushAds'),(54,3,'com.airpush.android.UserDetailsReceiver'),(55,3,'com.airpush.android.MessageReceiver'),(56,5,'com.inox.referrer.SendDataService'),(57,4,'androidtop.specialforces.IconProvider'),(58,3,'com.airpush.android.DeliveryReceiver'),(59,5,'com.inoxpush.adnetwork.PushAdService'),(60,4,'com.jasonwu.pushads.MobAdsProvider'),(61,3,'org.tonee.fly.widgets.free.airpush.BootReceiver'),(62,4,'com.airpush.android.UserDetailsReceiver'),(63,5,'com.go.launcher.ex.locker.theme.garfield.C2DMService'),(64,4,'com.airpush.android.MessageReceiver'),(65,5,'com.go.launcher.ex.locker.theme.garfield.GoDownloadServiceervice'),(66,4,'com.airpush.android.DeliveryReceiver'),(67,4,'androidtop.specialforces.BootReceiver'),(68,5,'com.moolah.NotificationService'),(69,5,'com.airpush.android.PushService'),(70,4,'com.jasonwu.pushads.BootBroadCastReceiver'),(71,5,'com.apperhand.device.android.AndroidSDKProvider'),(72,5,'com.inox.referrer.Receiver'),(73,5,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(74,5,'com.inoxpush.adnetwork.AdMessageReceiver'),(75,6,'com.airpush.android.PushAds'),(76,5,'com.inoxpush.adnetwork.ClickAdReceiver'),(77,6,'com.appbrain.AppBrainActivity'),(78,5,'com.go.launcher.ex.locker.theme.garfield.C2DMRegistrationReceiver'),(79,6,'com.google.ads.AdActivity'),(80,6,'com.zoomobile.lwp.baby.v01.LWPSettings'),(81,6,'com.zoomobile.lwp.baby.v01.Launcher'),(82,7,'org.drhu.iRadio.WebviewActivity'),(83,5,'com.go.launcher.ex.locker.theme.garfield.C2DMMessageReceiver'),(84,6,'com.airpush.android.PushService'),(85,7,'org.drhu.iRadio.iRadio'),(86,5,'com.moolah.MessageReceiver'),(87,6,'com.appbrain.AppBrainService'),(88,7,'org.drhu.iRadio.AddRadio'),(89,5,'com.moolah.BootReceiver'),(90,6,'com.moolah.NotificationService'),(91,6,'com.senddroid.AdService'),(92,5,'com.airpush.android.UserDetailsReceiver'),(93,7,'org.drhu.iRadio.ChangeBG'),(94,5,'com.airpush.android.MessageReceiver'),(95,6,'com.apperhand.device.android.AndroidSDKProvider'),(96,5,'com.airpush.android.DeliveryReceiver'),(97,7,'com.airpush.android.PushAds'),(98,6,'com.zoomobile.lwp.baby.v01.LWPService'),(99,5,'com.terabyte.iphonelockcar.BootReceiver'),(100,7,'com.airpush.android.PushService'),(101,6,'com.airpush.android.UserDetailsReceiver'),(102,5,'com.Leadbolt.AdNotification'),(103,6,'com.airpush.android.MessageReceiver'),(104,7,'com.apperhand.device.android.AndroidSDKProvider'),(105,6,'com.airpush.android.DeliveryReceiver'),(106,7,'com.applovin.sdk.AppLovinService'),(107,6,'com.zoomobile.lwp.baby.v01.BCReceiver'),(108,7,'com.senddroid.AdService'),(109,6,'com.appbrain.ReferrerReceiver'),(110,7,'com.airpush.android.UserDetailsReceiver'),(111,6,'com.Leadbolt.AdNotification'),(112,7,'com.airpush.android.MessageReceiver'),(113,6,'com.moolah.MessageReceiver'),(114,7,'com.airpush.android.DeliveryReceiver'),(115,6,'com.moolah.BootReceiver'),(116,7,'org.drhu.iRadio.BootReceiver'),(117,7,'com.Leadbolt.AdNotification'),(118,3,'org.tonee.fly.widgets.free.preference.options.SharedOptions'),(119,3,'org.tonee.fly.widgets.free.values.Values'),(120,3,'com.apperhand.device.android.a.a'),(121,3,'com.apperhand.device.android.a.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,42,'appId'),(2,42,'apikey'),(3,58,'campId'),(4,42,'type'),(5,37,'sms'),(6,58,'appId'),(7,37,'campId'),(8,58,'text'),(9,42,'text'),(10,42,'number'),(11,42,'header'),(12,37,'creativeId'),(13,37,'appId'),(14,42,'url'),(15,42,'adType'),(16,58,'imei'),(17,42,'campId'),(18,58,'creativeId'),(19,58,'imageurl'),(20,58,'apikey'),(21,42,'imageurl'),(22,58,'title'),(23,42,'sms'),(24,29,'appWidgetId'),(25,32,'appWidgetId'),(26,58,'url'),(27,37,'apikey'),(28,42,'creativeId'),(29,42,'title'),(30,40,'USER_AGENT'),(31,58,'header'),(32,58,'number'),(33,37,'test'),(34,37,'header'),(35,37,'url'),(36,37,'number'),(37,40,'APPLICATION_ID'),(38,37,'adType'),(39,8,'EXTRA_DONT_SHOW_APPS'),(40,40,'FIRST_RUN'),(41,42,'testMode'),(42,42,'link'),(43,40,'M_SERVER_URL'),(44,40,'DEVELOPER_ID'),(45,58,'sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,15,'s',1,35,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,46,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,54,'r',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'s',1,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,64,'r',0,NULL,NULL),(64,63,'s',0,NULL,NULL),(65,66,'r',0,NULL,NULL),(66,65,'s',0,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,67,'r',1,NULL,NULL),(69,69,'s',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'r',1,37,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'r',1,37,NULL),(84,84,'s',1,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,89,'r',1,NULL,NULL),(89,88,'a',1,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',1,NULL,NULL),(92,92,'r',0,NULL,NULL),(93,93,'a',1,NULL,NULL),(94,94,'r',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'r',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'s',1,35,NULL),(99,99,'r',1,NULL,NULL),(100,100,'s',1,NULL,NULL),(101,101,'r',0,NULL,NULL),(102,102,'r',0,NULL,NULL),(103,103,'r',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',0,NULL,NULL),(106,106,'s',1,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'s',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'r',0,NULL,NULL),(111,111,'r',0,NULL,NULL),(112,112,'r',0,NULL,NULL),(113,113,'r',0,NULL,NULL),(114,114,'r',0,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,55),(2,2,29),(3,2,32),(4,3,29),(5,3,32),(6,4,8),(7,4,19),(8,4,6),(9,5,40),(10,6,40),(11,7,29),(12,7,32),(13,8,37),(14,9,37),(15,10,37),(16,11,40),(17,12,40),(18,13,53),(19,14,37),(20,15,37),(21,16,58),(22,17,32),(23,17,29),(24,18,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(2,40,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',21,'s',NULL),(3,118,'<org.tonee.fly.widgets.free.preference.options.SharedOptions: void checkNewspaper(android.content.Context)>',5,'a',NULL),(4,119,'<org.tonee.fly.widgets.free.values.Values: void applicationSearch(android.content.Context,java.lang.String)>',5,'a',NULL),(5,120,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(6,121,'<com.apperhand.device.android.a.e: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(7,118,'<org.tonee.fly.widgets.free.preference.options.SharedOptions: void checkMyApps(android.content.Context)>',5,'a',NULL),(8,37,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(9,37,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(10,37,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(11,121,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(12,120,'<com.apperhand.device.android.a.a: java.util.List d()>',13,'p',NULL),(13,54,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(14,37,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(15,37,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(16,58,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(17,118,'<org.tonee.fly.widgets.free.preference.options.SharedOptions: void checkRating(android.content.Context)>',5,'a',NULL),(18,121,'<com.apperhand.device.android.a.e: java.util.List a()>',13,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,22),(2,2,23),(3,3,24),(4,6,25),(5,7,25),(6,8,25),(7,9,25),(8,10,25),(9,11,25),(10,12,25),(11,13,25),(12,14,25),(13,15,25),(14,16,25),(15,17,25),(16,18,25),(17,19,25),(18,20,25),(19,21,25),(20,22,25),(21,23,25),(22,24,25),(23,25,25),(24,26,25),(25,27,25),(26,28,25),(27,29,25),(28,30,25),(29,31,25),(30,32,26),(31,34,22),(32,35,27),(33,36,22),(34,37,27),(35,38,28),(36,39,22),(37,40,24),(38,41,23),(39,42,22),(40,43,27),(41,44,29),(42,46,22),(43,47,22),(44,48,27),(45,49,22),(46,50,22),(47,51,27),(48,52,27),(49,53,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/apperhand/device/android/AndroidSDKProvider'),(2,5,'org/tonee/fly/widgets/free/AcNewspaper'),(3,33,'org/tonee/fly/widgets/free/AcMyApps'),(4,54,'org/tonee/fly/widgets/free/AcRateMeWith5Stars');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,8,3),(4,9,4),(5,10,5),(6,11,6),(7,12,7),(8,13,8),(9,14,9),(10,15,10),(11,16,11),(12,17,12),(13,18,13),(14,19,14),(15,20,15),(16,21,16),(17,22,17),(18,23,18),(19,24,19),(20,25,20),(21,26,21),(22,27,22),(23,28,23),(24,29,24),(25,30,25),(26,31,26),(27,38,28),(28,44,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'icon'),(2,1,'appId'),(3,1,'testMode'),(4,1,'type'),(5,1,'apikey'),(6,2,'icon'),(7,2,'appId'),(8,2,'testMode'),(9,2,'type'),(10,2,'apikey'),(11,3,'icon'),(12,3,'appId'),(13,3,'testMode'),(14,3,'type'),(15,3,'apikey'),(16,4,'M_SERVER_URL'),(17,4,'USER_AGENT'),(18,4,'SERVICE_MODE'),(19,4,'FIRST_RUN'),(20,4,'DEVELOPER_ID'),(21,4,'APPLICATION_ID'),(22,32,'android.intent.extra.shortcut.NAME'),(23,32,'android.intent.extra.shortcut.ICON'),(24,32,'android.intent.extra.shortcut.INTENT'),(25,34,'<INTENT>'),(26,34,'type'),(27,35,'<INTENT>'),(28,35,'type'),(29,36,'<INTENT>'),(30,36,'type'),(31,37,'<INTENT>'),(32,37,'type'),(33,39,'appId'),(34,39,'type'),(35,39,'apikey'),(36,40,'appId'),(37,40,'type'),(38,40,'apikey'),(39,41,'appId'),(40,41,'type'),(41,41,'apikey'),(42,42,'<INTENT>'),(43,42,'type'),(44,43,'<INTENT>'),(45,43,'type'),(46,44,'sms_body'),(47,46,'campId'),(48,46,'text'),(49,46,'title'),(50,46,'creativeId'),(51,46,'appId'),(52,46,'expiry_time'),(53,46,'number'),(54,46,'adType'),(55,46,'type'),(56,46,'sms'),(57,46,'imageurl'),(58,46,'apikey'),(59,47,'campId'),(60,47,'title'),(61,47,'text'),(62,47,'creativeId'),(63,47,'appId'),(64,47,'expiry_time'),(65,47,'link'),(66,47,'adType'),(67,47,'type'),(68,47,'imageurl'),(69,47,'header'),(70,47,'apikey'),(71,48,'campId'),(72,48,'text'),(73,48,'title'),(74,48,'creativeId'),(75,48,'appId'),(76,48,'expiry_time'),(77,48,'number'),(78,48,'adType'),(79,48,'type'),(80,48,'sms'),(81,48,'imageurl'),(82,48,'apikey'),(83,49,'title'),(84,49,'text'),(85,49,'appId'),(86,49,'expiry_time'),(87,49,'number'),(88,49,'adType'),(89,49,'type'),(90,49,'imageurl'),(91,49,'apikey'),(92,50,'campId'),(93,50,'title'),(94,50,'text'),(95,50,'creativeId'),(96,50,'appId'),(97,50,'expiry_time'),(98,50,'link'),(99,50,'adType'),(100,50,'type'),(101,50,'imageurl'),(102,50,'apikey'),(103,51,'campId'),(104,51,'title'),(105,51,'text'),(106,51,'creativeId'),(107,51,'appId'),(108,51,'expiry_time'),(109,51,'link'),(110,51,'adType'),(111,51,'type'),(112,51,'imageurl'),(113,51,'header'),(114,51,'apikey'),(115,52,'title'),(116,52,'text'),(117,52,'appId'),(118,52,'expiry_time'),(119,52,'number'),(120,52,'adType'),(121,52,'type'),(122,52,'imageurl'),(123,52,'apikey'),(124,53,'campId'),(125,53,'title'),(126,53,'text'),(127,53,'creativeId'),(128,53,'appId'),(129,53,'expiry_time'),(130,53,'link'),(131,53,'adType'),(132,53,'type'),(133,53,'imageurl'),(134,53,'apikey');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(8,8,5),(9,9,7),(10,10,1),(11,11,8),(12,12,7),(13,13,1),(14,14,9),(15,16,10),(16,17,9),(17,18,11),(18,19,12),(19,20,7),(20,21,7),(21,22,13),(22,23,7),(23,24,14),(24,25,15),(25,26,1),(26,27,1),(27,28,16),(28,29,1),(29,30,17),(30,31,1),(31,32,7),(32,33,18),(33,34,1),(34,35,2),(35,36,7),(36,37,19),(37,38,20),(38,39,7),(39,40,21),(40,41,14),(41,42,7),(42,43,7),(43,44,7),(44,45,7),(45,46,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,9,2),(4,10,1),(5,12,2),(6,13,3),(7,15,4),(8,16,3),(9,20,2),(10,21,2),(11,25,5),(12,26,1),(13,27,4),(14,28,5),(15,29,1),(16,31,4),(17,32,2),(18,34,4),(19,36,2),(20,39,2),(21,42,2),(22,43,2),(23,44,2),(24,46,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
INSERT INTO `IPackages` VALUES (1,4,'org.tonee.fly.widgets.free'),(2,5,'org.tonee.fly.widgets.free'),(3,33,'org.tonee.fly.widgets.free'),(4,54,'org.tonee.fly.widgets.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,16,0),(4,25,0),(5,28,0),(6,29,0),(7,30,0),(8,32,0),(9,38,0),(10,43,0),(11,42,0),(12,44,0),(13,45,0),(14,47,0),(15,49,0),(16,45,0),(17,50,0),(18,52,0),(19,59,0),(20,61,0),(21,68,0),(22,69,0),(23,70,0),(24,72,0),(25,78,0),(26,81,0),(27,82,0),(28,83,0),(29,85,0),(30,84,0),(31,89,0),(32,88,0),(33,91,0),(34,93,0),(35,98,0),(36,99,0),(37,100,0),(38,106,0),(39,107,0),(40,108,0),(41,109,0),(42,115,0),(43,116,0),(44,107,0),(45,116,0),(46,116,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,0,0),(5,3,0,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,4,1,0),(10,4,1,0),(11,4,1,0),(12,4,1,0),(13,4,1,0),(14,4,1,0),(15,4,1,0),(16,4,1,0),(17,4,1,0),(18,4,1,0),(19,4,1,0),(20,4,1,0),(21,4,1,0),(22,4,1,0),(23,4,1,0),(24,4,1,0),(25,4,1,0),(26,4,1,0),(27,4,1,0),(28,4,1,0),(29,4,1,0),(30,4,1,0),(31,4,1,0),(32,5,1,0),(33,7,0,0),(34,8,1,0),(35,8,1,0),(36,9,1,0),(37,9,1,0),(38,10,1,0),(39,13,1,0),(40,13,1,0),(41,13,1,0),(42,14,1,0),(43,14,1,0),(44,15,1,0),(45,16,1,0),(46,16,1,0),(47,16,1,0),(48,16,1,0),(49,16,1,0),(50,16,1,0),(51,16,1,0),(52,16,1,0),(53,16,1,0),(54,17,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(16,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(35,'android.permission.BIND_WALLPAPER'),(28,'android.permission.CALL_PHONE'),(31,'android.permission.FLASHLIGHT'),(29,'android.permission.GET_ACCOUNTS'),(27,'android.permission.GET_TASKS'),(32,'android.permission.INSTALL_PACKAGES'),(12,'android.permission.INTERNET'),(30,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(36,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(26,'android.permission.SET_WALLPAPER'),(25,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.fede.launcher.permission.READ_SETTINGS'),(34,'com.go.launcher.ex.locker.theme.garfield.theme.permission.C2D_MESSAGE'),(33,'com.google.android.c2dm.permission.RECEIVE'),(37,'com.google.android.c2dm.permission.SEND'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(18,'com.motorola.launcher.permission.READ_SETTINGS'),(24,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (34,'s');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://market.android.com/details?id=com.antonio.futurecars',NULL,NULL,NULL),(3,NULL,NULL,'http://market.android.com/details?id=org.tonee.motorbikes',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:org.tonee.fly.widgets',NULL,NULL,NULL),(5,NULL,NULL,'http://market.android.com/details?id=org.tonee.bottle',NULL,NULL,NULL),(6,NULL,NULL,'http://market.android.com/details?id=org.tonee.contact.widget',NULL,NULL,NULL),(7,NULL,NULL,'http://market.android.com/details?id=com.antonio.notes.plus',NULL,NULL,NULL),(8,NULL,NULL,'http://market.android.com/details?id=com.antonio.fruits.plus',NULL,NULL,NULL),(9,NULL,NULL,'http://market.android.com/details?id=org.tonee.tuningcars',NULL,NULL,NULL),(10,NULL,NULL,'http://market.android.com/details?id=com.antonio.media2.plus.widget',NULL,NULL,NULL),(11,NULL,NULL,'http://market.android.com/details?id=com.antonio.smiley.plus',NULL,NULL,NULL),(12,NULL,NULL,'http://market.android.com/details?id=org.tonee.monster.widgets',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/details?id=com.antonio.messages.plus.widget',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/details?id=com.antonio.bodydots',NULL,NULL,NULL),(15,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.media.plus',NULL,NULL,NULL),(16,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.home.plus',NULL,NULL,NULL),(17,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.organize.plus',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/details?id=com.antonio.thermo2.activity',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/details?id=com.antonio.tattoo',NULL,NULL,NULL),(20,NULL,NULL,'http://market.android.com/details?id=com.antonio.browser2.plus.widget',NULL,NULL,NULL),(21,NULL,NULL,'http://market.android.com/details?id=com.antonio.fashion',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=com.antonio.funny',NULL,NULL,NULL),(23,NULL,NULL,'http://market.android.com/details?id=com.antonio.home',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/details?id=org.tonee.cuteanimals',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=org.tonee.clock',NULL,NULL,NULL),(26,NULL,NULL,'http://market.android.com/details?id=com.antonio.wardrobe.apps',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(31,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,27),(2,11,29),(3,12,30),(4,18,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,3,1),(12,2,2),(13,1,10),(14,3,2),(15,2,3),(16,1,11),(17,3,4),(18,2,4),(19,3,5),(20,1,12),(21,2,5),(22,3,6),(23,1,13),(24,2,6),(25,1,14),(26,3,7),(27,2,7),(28,1,15),(29,3,8),(30,2,8),(31,3,9),(32,1,17),(33,2,9),(34,3,10),(35,1,16),(36,2,10),(37,1,18),(38,3,11),(39,2,11),(40,3,12),(41,2,12),(42,3,13),(43,2,13),(44,3,14),(45,2,14),(46,3,15),(47,2,15),(48,3,17),(49,2,17),(50,3,16),(51,2,16),(52,3,18),(53,2,19),(54,2,18),(55,2,21),(56,2,20),(57,2,23),(58,2,22),(59,4,1),(60,2,25),(61,4,2),(62,2,24),(63,4,3),(64,4,4),(65,4,5),(66,4,6),(67,4,7),(68,4,8),(69,4,9),(70,5,1),(71,5,2),(72,4,10),(73,5,3),(74,4,11),(75,5,4),(76,4,12),(77,5,5),(78,4,13),(79,4,14),(80,5,6),(81,4,15),(82,5,7),(83,5,8),(84,4,17),(85,5,9),(86,4,16),(87,5,10),(88,4,19),(89,4,18),(90,5,11),(91,4,21),(92,5,12),(93,4,20),(94,5,13),(95,5,14),(96,4,23),(97,5,15),(98,4,25),(99,5,17),(100,4,24),(101,4,27),(102,5,16),(103,4,26),(104,5,19),(105,4,29),(106,5,18),(107,4,28),(108,5,20),(109,4,31),(110,5,23),(111,5,25),(112,4,30),(113,4,32),(114,5,24),(115,5,29),(116,5,34),(117,5,33),(118,6,1),(119,6,2),(120,6,3),(121,6,4),(122,6,5),(123,6,6),(124,6,7),(125,6,8),(126,6,9),(127,6,10),(128,6,11),(129,7,1),(130,6,12),(131,7,2),(132,6,13),(133,7,3),(134,6,14),(135,7,4),(136,6,15),(137,7,5),(138,6,17),(139,7,6),(140,6,16),(141,7,7),(142,6,19),(143,7,8),(144,6,18),(145,7,9),(146,6,21),(147,7,10),(148,6,20),(149,7,11),(150,6,23),(151,7,12),(152,6,22),(153,7,13),(154,6,25),(155,7,14),(156,6,24),(157,7,15),(158,6,26),(159,7,17),(160,6,29),(161,7,16),(162,6,28),(163,7,19),(164,7,18),(165,7,21),(166,7,20),(167,7,23),(168,7,22),(169,7,24),(170,7,29),(171,7,36);
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

-- Dump completed on 2015-10-09  0:40:50
