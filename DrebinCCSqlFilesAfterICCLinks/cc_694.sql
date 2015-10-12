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
) ENGINE=InnoDB AUTO_INCREMENT=974 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,34,16,2,NULL),(2,35,16,2,NULL),(3,36,16,2,NULL),(4,37,16,2,NULL),(5,38,16,2,NULL),(6,42,16,2,NULL),(7,43,16,2,NULL),(8,44,16,2,NULL),(9,39,16,2,NULL),(10,40,16,2,NULL),(11,41,16,2,NULL),(12,1,16,2,NULL),(13,2,16,2,NULL),(14,3,16,2,NULL),(15,45,16,2,NULL),(16,46,16,2,NULL),(17,47,16,2,NULL),(18,48,16,2,NULL),(19,49,16,2,NULL),(20,50,16,2,NULL),(21,51,16,2,NULL),(22,52,16,2,NULL),(23,53,16,2,NULL),(24,34,25,2,NULL),(25,35,25,2,NULL),(26,36,25,2,NULL),(27,37,25,2,NULL),(28,38,25,2,NULL),(29,42,25,2,NULL),(30,43,25,2,NULL),(31,44,25,2,NULL),(32,39,25,2,NULL),(33,40,25,2,NULL),(34,41,25,2,NULL),(35,1,25,2,NULL),(36,2,25,2,NULL),(37,3,25,2,NULL),(38,45,25,2,NULL),(39,46,25,2,NULL),(40,47,25,2,NULL),(41,48,25,2,NULL),(42,49,25,2,NULL),(43,50,25,2,NULL),(44,51,25,2,NULL),(45,52,25,2,NULL),(46,53,25,2,NULL),(47,34,30,2,NULL),(48,35,30,2,NULL),(49,36,30,2,NULL),(50,37,30,2,NULL),(51,38,30,2,NULL),(52,42,30,2,NULL),(53,43,30,2,NULL),(54,44,30,2,NULL),(55,39,30,2,NULL),(56,40,30,2,NULL),(57,41,30,2,NULL),(58,1,30,2,NULL),(59,2,30,2,NULL),(60,3,30,2,NULL),(61,45,30,2,NULL),(62,46,30,2,NULL),(63,47,30,2,NULL),(64,48,30,2,NULL),(65,49,30,2,NULL),(66,50,30,2,NULL),(67,51,30,2,NULL),(68,52,30,2,NULL),(69,53,30,2,NULL),(70,34,44,2,NULL),(71,35,44,2,NULL),(72,36,44,2,NULL),(73,37,44,2,NULL),(74,38,44,2,NULL),(75,42,44,2,NULL),(76,43,44,2,NULL),(77,44,44,2,NULL),(78,39,44,2,NULL),(79,40,44,2,NULL),(80,41,44,2,NULL),(81,1,44,2,NULL),(82,2,44,2,NULL),(83,3,44,2,NULL),(84,45,44,2,NULL),(85,46,44,2,NULL),(86,47,44,2,NULL),(87,48,44,2,NULL),(88,49,44,2,NULL),(89,50,44,2,NULL),(90,51,44,2,NULL),(91,52,44,2,NULL),(92,53,44,2,NULL),(93,34,3,2,NULL),(94,35,3,2,NULL),(95,36,3,2,NULL),(96,37,3,2,NULL),(97,38,3,2,NULL),(98,42,3,2,NULL),(99,43,3,2,NULL),(100,44,3,2,NULL),(101,39,3,2,NULL),(102,40,3,2,NULL),(103,41,3,2,NULL),(104,1,3,2,NULL),(105,2,3,2,NULL),(106,3,3,2,NULL),(107,45,3,2,NULL),(108,46,3,2,NULL),(109,47,3,2,NULL),(110,48,3,2,NULL),(111,49,3,2,NULL),(112,50,3,2,NULL),(113,51,3,2,NULL),(114,52,3,2,NULL),(115,53,3,2,NULL),(116,34,29,2,NULL),(117,35,29,2,NULL),(118,36,29,2,NULL),(119,37,29,2,NULL),(120,38,29,2,NULL),(121,42,29,2,NULL),(122,43,29,2,NULL),(123,44,29,2,NULL),(124,39,29,2,NULL),(125,40,29,2,NULL),(126,41,29,2,NULL),(127,1,29,2,NULL),(128,2,29,2,NULL),(129,3,29,2,NULL),(130,45,29,2,NULL),(131,46,29,2,NULL),(132,47,29,2,NULL),(133,48,29,2,NULL),(134,49,29,2,NULL),(135,50,29,2,NULL),(136,51,29,2,NULL),(137,52,29,2,NULL),(138,53,29,2,NULL),(139,34,32,2,NULL),(140,35,32,2,NULL),(141,36,32,2,NULL),(142,37,32,2,NULL),(143,38,32,2,NULL),(144,42,32,2,NULL),(145,43,32,2,NULL),(146,44,32,2,NULL),(147,39,32,2,NULL),(148,40,32,2,NULL),(149,41,32,2,NULL),(150,1,32,2,NULL),(151,2,32,2,NULL),(152,3,32,2,NULL),(153,45,32,2,NULL),(154,46,32,2,NULL),(155,47,32,2,NULL),(156,48,32,2,NULL),(157,49,32,2,NULL),(158,50,32,2,NULL),(159,51,32,2,NULL),(160,52,32,2,NULL),(161,53,32,2,NULL),(162,34,1,2,NULL),(163,35,1,2,NULL),(164,36,1,2,NULL),(165,37,1,2,NULL),(166,38,1,2,NULL),(167,42,1,2,NULL),(168,43,1,2,NULL),(169,44,1,2,NULL),(170,34,28,2,NULL),(171,35,28,2,NULL),(172,36,28,2,NULL),(173,37,28,2,NULL),(174,38,28,2,NULL),(175,42,28,2,NULL),(176,43,28,2,NULL),(177,44,28,2,NULL),(178,34,38,2,NULL),(179,35,38,2,NULL),(180,36,38,2,NULL),(181,37,38,2,NULL),(182,38,38,2,NULL),(183,42,38,2,NULL),(184,43,38,2,NULL),(185,44,38,2,NULL),(186,34,42,2,NULL),(187,35,42,2,NULL),(188,36,42,2,NULL),(189,37,42,2,NULL),(190,38,42,2,NULL),(191,42,42,2,NULL),(192,43,42,2,NULL),(193,44,42,2,NULL),(194,34,47,2,NULL),(195,35,47,2,NULL),(196,36,47,2,NULL),(197,37,47,2,NULL),(198,38,47,2,NULL),(199,42,47,2,NULL),(200,43,47,2,NULL),(201,44,47,2,NULL),(202,34,50,2,NULL),(203,35,50,2,NULL),(204,36,50,2,NULL),(205,37,50,2,NULL),(206,38,50,2,NULL),(207,42,50,2,NULL),(208,43,50,2,NULL),(209,44,50,2,NULL),(210,34,61,2,NULL),(211,35,61,2,NULL),(212,36,61,2,NULL),(213,37,61,2,NULL),(214,38,61,2,NULL),(215,42,61,2,NULL),(216,43,61,2,NULL),(217,44,61,2,NULL),(218,34,43,2,NULL),(219,35,43,2,NULL),(220,36,43,2,NULL),(221,37,43,2,NULL),(222,38,43,2,NULL),(223,42,43,2,NULL),(224,43,43,2,NULL),(225,44,43,2,NULL),(226,34,49,2,NULL),(227,35,49,2,NULL),(228,36,49,2,NULL),(229,37,49,2,NULL),(230,38,49,2,NULL),(231,42,49,2,NULL),(232,43,49,2,NULL),(233,44,49,2,NULL),(234,34,52,2,NULL),(235,35,52,2,NULL),(236,36,52,2,NULL),(237,37,52,2,NULL),(238,38,52,2,NULL),(239,42,52,2,NULL),(240,43,52,2,NULL),(241,44,52,2,NULL),(242,34,68,2,NULL),(243,35,68,2,NULL),(244,36,68,2,NULL),(245,37,68,2,NULL),(246,38,68,2,NULL),(247,42,68,2,NULL),(248,43,68,2,NULL),(249,44,68,2,NULL),(250,34,70,2,NULL),(251,35,70,2,NULL),(252,36,70,2,NULL),(253,37,70,2,NULL),(254,38,70,2,NULL),(255,42,70,2,NULL),(256,43,70,2,NULL),(257,44,70,2,NULL),(258,34,45,2,NULL),(259,35,45,2,NULL),(260,36,45,2,NULL),(261,37,45,2,NULL),(262,38,45,2,NULL),(263,42,45,2,NULL),(264,43,45,2,NULL),(265,44,45,2,NULL),(266,34,59,2,NULL),(267,35,59,2,NULL),(268,36,59,2,NULL),(269,37,59,2,NULL),(270,38,59,2,NULL),(271,42,59,2,NULL),(272,43,59,2,NULL),(273,44,59,2,NULL),(274,34,69,2,NULL),(275,35,69,2,NULL),(276,36,69,2,NULL),(277,37,69,2,NULL),(278,38,69,2,NULL),(279,42,69,2,NULL),(280,43,69,2,NULL),(281,44,69,2,NULL),(282,34,72,2,NULL),(283,35,72,2,NULL),(284,36,72,2,NULL),(285,37,72,2,NULL),(286,38,72,2,NULL),(287,42,72,2,NULL),(288,43,72,2,NULL),(289,44,72,2,NULL),(290,34,78,2,NULL),(291,35,78,2,NULL),(292,36,78,2,NULL),(293,37,78,2,NULL),(294,38,78,2,NULL),(295,42,78,2,NULL),(296,43,78,2,NULL),(297,44,78,2,NULL),(298,34,83,2,NULL),(299,35,83,2,NULL),(300,36,83,2,NULL),(301,37,83,2,NULL),(302,38,83,2,NULL),(303,42,83,2,NULL),(304,43,83,2,NULL),(305,44,83,2,NULL),(306,34,88,2,NULL),(307,35,88,2,NULL),(308,36,88,2,NULL),(309,37,88,2,NULL),(310,38,88,2,NULL),(311,42,88,2,NULL),(312,43,88,2,NULL),(313,44,88,2,NULL),(314,34,99,2,NULL),(315,35,99,2,NULL),(316,36,99,2,NULL),(317,37,99,2,NULL),(318,38,99,2,NULL),(319,42,99,2,NULL),(320,43,99,2,NULL),(321,44,99,2,NULL),(322,34,81,2,NULL),(323,35,81,2,NULL),(324,36,81,2,NULL),(325,37,81,2,NULL),(326,38,81,2,NULL),(327,42,81,2,NULL),(328,43,81,2,NULL),(329,44,81,2,NULL),(330,34,84,2,NULL),(331,35,84,2,NULL),(332,36,84,2,NULL),(333,37,84,2,NULL),(334,38,84,2,NULL),(335,42,84,2,NULL),(336,43,84,2,NULL),(337,44,84,2,NULL),(338,34,91,2,NULL),(339,35,91,2,NULL),(340,36,91,2,NULL),(341,37,91,2,NULL),(342,38,91,2,NULL),(343,42,91,2,NULL),(344,43,91,2,NULL),(345,44,91,2,NULL),(346,34,98,2,NULL),(347,35,98,2,NULL),(348,36,98,2,NULL),(349,37,98,2,NULL),(350,38,98,2,NULL),(351,42,98,2,NULL),(352,43,98,2,NULL),(353,44,98,2,NULL),(354,34,107,2,NULL),(355,35,107,2,NULL),(356,36,107,2,NULL),(357,37,107,2,NULL),(358,38,107,2,NULL),(359,42,107,2,NULL),(360,43,107,2,NULL),(361,44,107,2,NULL),(362,34,109,2,NULL),(363,35,109,2,NULL),(364,36,109,2,NULL),(365,37,109,2,NULL),(366,38,109,2,NULL),(367,42,109,2,NULL),(368,43,109,2,NULL),(369,44,109,2,NULL),(370,34,115,2,NULL),(371,35,115,2,NULL),(372,36,115,2,NULL),(373,37,115,2,NULL),(374,38,115,2,NULL),(375,42,115,2,NULL),(376,43,115,2,NULL),(377,44,115,2,NULL),(378,34,82,2,NULL),(379,35,82,2,NULL),(380,36,82,2,NULL),(381,37,82,2,NULL),(382,38,82,2,NULL),(383,42,82,2,NULL),(384,43,82,2,NULL),(385,44,82,2,NULL),(386,34,85,2,NULL),(387,35,85,2,NULL),(388,36,85,2,NULL),(389,37,85,2,NULL),(390,38,85,2,NULL),(391,42,85,2,NULL),(392,43,85,2,NULL),(393,44,85,2,NULL),(394,34,89,2,NULL),(395,35,89,2,NULL),(396,36,89,2,NULL),(397,37,89,2,NULL),(398,38,89,2,NULL),(399,42,89,2,NULL),(400,43,89,2,NULL),(401,44,89,2,NULL),(402,34,93,2,NULL),(403,35,93,2,NULL),(404,36,93,2,NULL),(405,37,93,2,NULL),(406,38,93,2,NULL),(407,42,93,2,NULL),(408,43,93,2,NULL),(409,44,93,2,NULL),(410,34,100,2,NULL),(411,35,100,2,NULL),(412,36,100,2,NULL),(413,37,100,2,NULL),(414,38,100,2,NULL),(415,42,100,2,NULL),(416,43,100,2,NULL),(417,44,100,2,NULL),(418,34,106,2,NULL),(419,35,106,2,NULL),(420,36,106,2,NULL),(421,37,106,2,NULL),(422,38,106,2,NULL),(423,42,106,2,NULL),(424,43,106,2,NULL),(425,44,106,2,NULL),(426,34,108,2,NULL),(427,35,108,2,NULL),(428,36,108,2,NULL),(429,37,108,2,NULL),(430,38,108,2,NULL),(431,42,108,2,NULL),(432,43,108,2,NULL),(433,44,108,2,NULL),(434,34,116,2,NULL),(435,35,116,2,NULL),(436,36,116,2,NULL),(437,37,116,2,NULL),(438,38,116,2,NULL),(439,42,116,2,NULL),(440,43,116,2,NULL),(441,44,116,2,NULL),(442,4,22,2,NULL),(443,4,26,2,NULL),(444,4,40,2,NULL),(445,4,51,2,NULL),(446,4,71,2,NULL),(447,4,95,2,NULL),(448,4,104,2,NULL),(449,39,42,2,NULL),(450,40,42,2,NULL),(451,41,42,2,NULL),(452,1,42,2,NULL),(453,2,42,2,NULL),(454,3,42,2,NULL),(455,45,42,2,NULL),(456,46,42,2,NULL),(457,47,42,2,NULL),(458,48,42,2,NULL),(459,49,42,2,NULL),(460,50,42,2,NULL),(461,51,42,2,NULL),(462,52,42,2,NULL),(463,53,42,2,NULL),(464,39,47,2,NULL),(465,40,47,2,NULL),(466,41,47,2,NULL),(467,1,47,2,NULL),(468,2,47,2,NULL),(469,3,47,2,NULL),(470,45,47,2,NULL),(471,46,47,2,NULL),(472,47,47,2,NULL),(473,48,47,2,NULL),(474,49,47,2,NULL),(475,50,47,2,NULL),(476,51,47,2,NULL),(477,52,47,2,NULL),(478,53,47,2,NULL),(479,39,50,2,NULL),(480,40,50,2,NULL),(481,41,50,2,NULL),(482,1,50,2,NULL),(483,2,50,2,NULL),(484,3,50,2,NULL),(485,45,50,2,NULL),(486,46,50,2,NULL),(487,47,50,2,NULL),(488,48,50,2,NULL),(489,49,50,2,NULL),(490,50,50,2,NULL),(491,51,50,2,NULL),(492,52,50,2,NULL),(493,53,50,2,NULL),(494,39,1,2,NULL),(495,40,1,2,NULL),(496,41,1,2,NULL),(497,39,28,2,NULL),(498,40,28,2,NULL),(499,41,28,2,NULL),(500,39,38,2,NULL),(501,40,38,2,NULL),(502,41,38,2,NULL),(503,39,61,2,NULL),(504,40,61,2,NULL),(505,41,61,2,NULL),(506,39,43,2,NULL),(507,40,43,2,NULL),(508,41,43,2,NULL),(509,39,49,2,NULL),(510,40,49,2,NULL),(511,41,49,2,NULL),(512,39,52,2,NULL),(513,40,52,2,NULL),(514,41,52,2,NULL),(515,39,68,2,NULL),(516,40,68,2,NULL),(517,41,68,2,NULL),(518,39,70,2,NULL),(519,40,70,2,NULL),(520,41,70,2,NULL),(521,39,45,2,NULL),(522,40,45,2,NULL),(523,41,45,2,NULL),(524,39,59,2,NULL),(525,40,59,2,NULL),(526,41,59,2,NULL),(527,39,69,2,NULL),(528,40,69,2,NULL),(529,41,69,2,NULL),(530,39,72,2,NULL),(531,40,72,2,NULL),(532,41,72,2,NULL),(533,39,78,2,NULL),(534,40,78,2,NULL),(535,41,78,2,NULL),(536,39,83,2,NULL),(537,40,83,2,NULL),(538,41,83,2,NULL),(539,39,88,2,NULL),(540,40,88,2,NULL),(541,41,88,2,NULL),(542,39,99,2,NULL),(543,40,99,2,NULL),(544,41,99,2,NULL),(545,39,81,2,NULL),(546,40,81,2,NULL),(547,41,81,2,NULL),(548,39,84,2,NULL),(549,40,84,2,NULL),(550,41,84,2,NULL),(551,39,91,2,NULL),(552,40,91,2,NULL),(553,41,91,2,NULL),(554,39,98,2,NULL),(555,40,98,2,NULL),(556,41,98,2,NULL),(557,39,107,2,NULL),(558,40,107,2,NULL),(559,41,107,2,NULL),(560,39,109,2,NULL),(561,40,109,2,NULL),(562,41,109,2,NULL),(563,39,115,2,NULL),(564,40,115,2,NULL),(565,41,115,2,NULL),(566,39,82,2,NULL),(567,40,82,2,NULL),(568,41,82,2,NULL),(569,39,85,2,NULL),(570,40,85,2,NULL),(571,41,85,2,NULL),(572,39,89,2,NULL),(573,40,89,2,NULL),(574,41,89,2,NULL),(575,39,93,2,NULL),(576,40,93,2,NULL),(577,41,93,2,NULL),(578,39,100,2,NULL),(579,40,100,2,NULL),(580,41,100,2,NULL),(581,39,106,2,NULL),(582,40,106,2,NULL),(583,41,106,2,NULL),(584,39,108,2,NULL),(585,40,108,2,NULL),(586,41,108,2,NULL),(587,39,116,2,NULL),(588,40,116,2,NULL),(589,41,116,2,NULL),(590,1,1,2,NULL),(591,2,1,2,NULL),(592,3,1,2,NULL),(593,1,28,2,NULL),(594,2,28,2,NULL),(595,3,28,2,NULL),(596,1,38,2,NULL),(597,2,38,2,NULL),(598,3,38,2,NULL),(599,1,61,2,NULL),(600,2,61,2,NULL),(601,3,61,2,NULL),(602,1,43,2,NULL),(603,2,43,2,NULL),(604,3,43,2,NULL),(605,1,49,2,NULL),(606,2,49,2,NULL),(607,3,49,2,NULL),(608,1,52,2,NULL),(609,2,52,2,NULL),(610,3,52,2,NULL),(611,1,68,2,NULL),(612,2,68,2,NULL),(613,3,68,2,NULL),(614,1,70,2,NULL),(615,2,70,2,NULL),(616,3,70,2,NULL),(617,1,45,2,NULL),(618,2,45,2,NULL),(619,3,45,2,NULL),(620,1,59,2,NULL),(621,2,59,2,NULL),(622,3,59,2,NULL),(623,1,69,2,NULL),(624,2,69,2,NULL),(625,3,69,2,NULL),(626,1,72,2,NULL),(627,2,72,2,NULL),(628,3,72,2,NULL),(629,1,78,2,NULL),(630,2,78,2,NULL),(631,3,78,2,NULL),(632,1,83,2,NULL),(633,2,83,2,NULL),(634,3,83,2,NULL),(635,1,88,2,NULL),(636,2,88,2,NULL),(637,3,88,2,NULL),(638,1,99,2,NULL),(639,2,99,2,NULL),(640,3,99,2,NULL),(641,1,81,2,NULL),(642,2,81,2,NULL),(643,3,81,2,NULL),(644,1,84,2,NULL),(645,2,84,2,NULL),(646,3,84,2,NULL),(647,1,91,2,NULL),(648,2,91,2,NULL),(649,3,91,2,NULL),(650,1,98,2,NULL),(651,2,98,2,NULL),(652,3,98,2,NULL),(653,1,107,2,NULL),(654,2,107,2,NULL),(655,3,107,2,NULL),(656,1,109,2,NULL),(657,2,109,2,NULL),(658,3,109,2,NULL),(659,1,115,2,NULL),(660,2,115,2,NULL),(661,3,115,2,NULL),(662,1,82,2,NULL),(663,2,82,2,NULL),(664,3,82,2,NULL),(665,1,85,2,NULL),(666,2,85,2,NULL),(667,3,85,2,NULL),(668,1,89,2,NULL),(669,2,89,2,NULL),(670,3,89,2,NULL),(671,1,93,2,NULL),(672,2,93,2,NULL),(673,3,93,2,NULL),(674,1,100,2,NULL),(675,2,100,2,NULL),(676,3,100,2,NULL),(677,1,106,2,NULL),(678,2,106,2,NULL),(679,3,106,2,NULL),(680,1,108,2,NULL),(681,2,108,2,NULL),(682,3,108,2,NULL),(683,1,116,2,NULL),(684,2,116,2,NULL),(685,3,116,2,NULL),(686,45,1,2,NULL),(687,46,1,2,NULL),(688,47,1,2,NULL),(689,48,1,2,NULL),(690,49,1,2,NULL),(691,50,1,2,NULL),(692,51,1,2,NULL),(693,52,1,2,NULL),(694,53,1,2,NULL),(695,45,28,2,NULL),(696,46,28,2,NULL),(697,47,28,2,NULL),(698,48,28,2,NULL),(699,49,28,2,NULL),(700,50,28,2,NULL),(701,51,28,2,NULL),(702,52,28,2,NULL),(703,53,28,2,NULL),(704,45,38,2,NULL),(705,46,38,2,NULL),(706,47,38,2,NULL),(707,48,38,2,NULL),(708,49,38,2,NULL),(709,50,38,2,NULL),(710,51,38,2,NULL),(711,52,38,2,NULL),(712,53,38,2,NULL),(713,45,61,2,NULL),(714,46,61,2,NULL),(715,47,61,2,NULL),(716,48,61,2,NULL),(717,49,61,2,NULL),(718,50,61,2,NULL),(719,51,61,2,NULL),(720,52,61,2,NULL),(721,53,61,2,NULL),(722,45,43,2,NULL),(723,46,43,2,NULL),(724,47,43,2,NULL),(725,48,43,2,NULL),(726,49,43,2,NULL),(727,50,43,2,NULL),(728,51,43,2,NULL),(729,52,43,2,NULL),(730,53,43,2,NULL),(731,45,49,2,NULL),(732,46,49,2,NULL),(733,47,49,2,NULL),(734,48,49,2,NULL),(735,49,49,2,NULL),(736,50,49,2,NULL),(737,51,49,2,NULL),(738,52,49,2,NULL),(739,53,49,2,NULL),(740,45,52,2,NULL),(741,46,52,2,NULL),(742,47,52,2,NULL),(743,48,52,2,NULL),(744,49,52,2,NULL),(745,50,52,2,NULL),(746,51,52,2,NULL),(747,52,52,2,NULL),(748,53,52,2,NULL),(749,45,68,2,NULL),(750,46,68,2,NULL),(751,47,68,2,NULL),(752,48,68,2,NULL),(753,49,68,2,NULL),(754,50,68,2,NULL),(755,51,68,2,NULL),(756,52,68,2,NULL),(757,53,68,2,NULL),(758,45,70,2,NULL),(759,46,70,2,NULL),(760,47,70,2,NULL),(761,48,70,2,NULL),(762,49,70,2,NULL),(763,50,70,2,NULL),(764,51,70,2,NULL),(765,52,70,2,NULL),(766,53,70,2,NULL),(767,45,45,2,NULL),(768,46,45,2,NULL),(769,47,45,2,NULL),(770,48,45,2,NULL),(771,49,45,2,NULL),(772,50,45,2,NULL),(773,51,45,2,NULL),(774,52,45,2,NULL),(775,53,45,2,NULL),(776,45,59,2,NULL),(777,46,59,2,NULL),(778,47,59,2,NULL),(779,48,59,2,NULL),(780,49,59,2,NULL),(781,50,59,2,NULL),(782,51,59,2,NULL),(783,52,59,2,NULL),(784,53,59,2,NULL),(785,45,69,2,NULL),(786,46,69,2,NULL),(787,47,69,2,NULL),(788,48,69,2,NULL),(789,49,69,2,NULL),(790,50,69,2,NULL),(791,51,69,2,NULL),(792,52,69,2,NULL),(793,53,69,2,NULL),(794,45,72,2,NULL),(795,46,72,2,NULL),(796,47,72,2,NULL),(797,48,72,2,NULL),(798,49,72,2,NULL),(799,50,72,2,NULL),(800,51,72,2,NULL),(801,52,72,2,NULL),(802,53,72,2,NULL),(803,45,78,2,NULL),(804,46,78,2,NULL),(805,47,78,2,NULL),(806,48,78,2,NULL),(807,49,78,2,NULL),(808,50,78,2,NULL),(809,51,78,2,NULL),(810,52,78,2,NULL),(811,53,78,2,NULL),(812,45,83,2,NULL),(813,46,83,2,NULL),(814,47,83,2,NULL),(815,48,83,2,NULL),(816,49,83,2,NULL),(817,50,83,2,NULL),(818,51,83,2,NULL),(819,52,83,2,NULL),(820,53,83,2,NULL),(821,45,88,2,NULL),(822,46,88,2,NULL),(823,47,88,2,NULL),(824,48,88,2,NULL),(825,49,88,2,NULL),(826,50,88,2,NULL),(827,51,88,2,NULL),(828,52,88,2,NULL),(829,53,88,2,NULL),(830,45,99,2,NULL),(831,46,99,2,NULL),(832,47,99,2,NULL),(833,48,99,2,NULL),(834,49,99,2,NULL),(835,50,99,2,NULL),(836,51,99,2,NULL),(837,52,99,2,NULL),(838,53,99,2,NULL),(839,45,81,2,NULL),(840,46,81,2,NULL),(841,47,81,2,NULL),(842,48,81,2,NULL),(843,49,81,2,NULL),(844,50,81,2,NULL),(845,51,81,2,NULL),(846,52,81,2,NULL),(847,53,81,2,NULL),(848,45,84,2,NULL),(849,46,84,2,NULL),(850,47,84,2,NULL),(851,48,84,2,NULL),(852,49,84,2,NULL),(853,50,84,2,NULL),(854,51,84,2,NULL),(855,52,84,2,NULL),(856,53,84,2,NULL),(857,45,91,2,NULL),(858,46,91,2,NULL),(859,47,91,2,NULL),(860,48,91,2,NULL),(861,49,91,2,NULL),(862,50,91,2,NULL),(863,51,91,2,NULL),(864,52,91,2,NULL),(865,53,91,2,NULL),(866,45,98,2,NULL),(867,46,98,2,NULL),(868,47,98,2,NULL),(869,48,98,2,NULL),(870,49,98,2,NULL),(871,50,98,2,NULL),(872,51,98,2,NULL),(873,52,98,2,NULL),(874,53,98,2,NULL),(875,45,107,2,NULL),(876,46,107,2,NULL),(877,47,107,2,NULL),(878,48,107,2,NULL),(879,49,107,2,NULL),(880,50,107,2,NULL),(881,51,107,2,NULL),(882,52,107,2,NULL),(883,53,107,2,NULL),(884,45,109,2,NULL),(885,46,109,2,NULL),(886,47,109,2,NULL),(887,48,109,2,NULL),(888,49,109,2,NULL),(889,50,109,2,NULL),(890,51,109,2,NULL),(891,52,109,2,NULL),(892,53,109,2,NULL),(893,45,115,2,NULL),(894,46,115,2,NULL),(895,47,115,2,NULL),(896,48,115,2,NULL),(897,49,115,2,NULL),(898,50,115,2,NULL),(899,51,115,2,NULL),(900,52,115,2,NULL),(901,53,115,2,NULL),(902,45,82,2,NULL),(903,46,82,2,NULL),(904,47,82,2,NULL),(905,48,82,2,NULL),(906,49,82,2,NULL),(907,50,82,2,NULL),(908,51,82,2,NULL),(909,52,82,2,NULL),(910,53,82,2,NULL),(911,45,85,2,NULL),(912,46,85,2,NULL),(913,47,85,2,NULL),(914,48,85,2,NULL),(915,49,85,2,NULL),(916,50,85,2,NULL),(917,51,85,2,NULL),(918,52,85,2,NULL),(919,53,85,2,NULL),(920,45,89,2,NULL),(921,46,89,2,NULL),(922,47,89,2,NULL),(923,48,89,2,NULL),(924,49,89,2,NULL),(925,50,89,2,NULL),(926,51,89,2,NULL),(927,52,89,2,NULL),(928,53,89,2,NULL),(929,45,93,2,NULL),(930,46,93,2,NULL),(931,47,93,2,NULL),(932,48,93,2,NULL),(933,49,93,2,NULL),(934,50,93,2,NULL),(935,51,93,2,NULL),(936,52,93,2,NULL),(937,53,93,2,NULL),(938,45,100,2,NULL),(939,46,100,2,NULL),(940,47,100,2,NULL),(941,48,100,2,NULL),(942,49,100,2,NULL),(943,50,100,2,NULL),(944,51,100,2,NULL),(945,52,100,2,NULL),(946,53,100,2,NULL),(947,45,106,2,NULL),(948,46,106,2,NULL),(949,47,106,2,NULL),(950,48,106,2,NULL),(951,49,106,2,NULL),(952,50,106,2,NULL),(953,51,106,2,NULL),(954,52,106,2,NULL),(955,53,106,2,NULL),(956,45,108,2,NULL),(957,46,108,2,NULL),(958,47,108,2,NULL),(959,48,108,2,NULL),(960,49,108,2,NULL),(961,50,108,2,NULL),(962,51,108,2,NULL),(963,52,108,2,NULL),(964,53,108,2,NULL),(965,45,116,2,NULL),(966,46,116,2,NULL),(967,47,116,2,NULL),(968,48,116,2,NULL),(969,49,116,2,NULL),(970,50,116,2,NULL),(971,51,116,2,NULL),(972,52,116,2,NULL),(973,53,116,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:24
