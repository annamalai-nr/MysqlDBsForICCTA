-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_700
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(14,'android.appwidget.action.APPWIDGET_UPDATE'),(18,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CHOOSER'),(23,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(21,'android.intent.action.SENDTO'),(9,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(24,'android.media.action.IMAGE_CAPTURE'),(15,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.service.wallpaper.WallpaperService'),(10,'com.a.a.e'),(6,'com.airpush.android.PushServiceStart44582'),(3,'com.airpush.android.PushServiceStart46488'),(7,'com.airpush.android.PushServiceStart51583'),(11,'com.airpush.android.PushServiceStart52821'),(13,'com.airpush.android.PushServiceStart57053'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.android.vending.INSTALL_REFERRER'),(12,'com.senddroid.AdServiceit.MicroApps.Tron3D'),(5,'com.senddroid.AdServicesui.ji.oo.lax.w');
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
INSERT INTO `Applications` VALUES (1,'com.gpimports.gprestaurantlite',10),(2,'sui.ji.oo.lax.w',1),(3,'com.custom.lwp.BigboobsDenisenJordan',3),(4,'com.funbox.rccreator',1),(5,'com.sexy_girls.sexy_american_girls',1),(6,'it.MicroApps.Tron3D',5),(7,'com.gamevisa8.fish',11);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.gpimports.gprestaurantlite.McDonald'),(2,1,'com.gpimports.gprestaurantlite.WndTitle'),(3,1,'com.gpimports.gprestaurantlite.WndOption'),(4,1,'com.gpimports.gprestaurantlite.WndContinue'),(5,1,'com.gpimports.gprestaurantlite.WndGame'),(6,1,'com.apperhand.device.android.AndroidSDKProvider'),(7,1,'com.gpimports.gprestaurantlite.BootReceiver'),(8,1,'com.Leadbolt.AdNotification'),(9,2,'sui.ji.oo.lax.w.ImageViewer'),(10,3,'com.custom.lwp.BigboobsDenisenJordan.settings'),(11,2,'com.airpush.android.PushAds'),(12,3,'com.airpush.android.PushAds'),(13,2,'sui.ji.oo.lax.w.NetworkSrv'),(14,3,'com.custom.lwp.BigboobsDenisenJordan.IFBTLiveWallpaperService'),(15,2,'com.airpush.android.PushService'),(16,4,'com.a.a.c'),(17,2,'com.apperhand.device.android.AndroidSDKProvider'),(18,3,'com.apperhand.device.android.AndroidSDKProvider'),(19,2,'com.senddroid.AdService'),(20,4,'com.google.ads.AdActivity'),(21,3,'com.airpush.android.PushService'),(22,2,'com.airpush.android.UserDetailsReceiver'),(23,4,'com.airpush.android.PushAds'),(24,2,'com.airpush.android.MessageReceiver'),(25,4,'com.airpush.android.PushService'),(26,3,'com.airpush.android.UserDetailsReceiver'),(27,2,'com.airpush.android.DeliveryReceiver'),(28,3,'com.airpush.android.MessageReceiver'),(29,2,'sui.ji.oo.lax.w.BootReceiver'),(30,3,'com.airpush.android.DeliveryReceiver'),(31,4,'com.apperhand.device.android.AndroidSDKProvider'),(32,3,'com.Leadbolt.AdNotification'),(33,4,'com.a.a.a'),(34,3,'com.custom.lwp.BigboobsDenisenJordan.BootReceiver'),(35,2,'sui.ji.oo.lax.w.BootReceiver2'),(36,4,'com.a.a.d'),(37,5,'com.sexy_girls.sexy_american_girls.Preferences'),(38,5,'com.airpush.android.PushAds'),(39,4,'com.a.a.e'),(40,5,'com.apperhand.device.android.AndroidSDKProvider'),(41,5,'com.sexy_girls.sexy_american_girls.Wallpaper'),(42,4,'com.airpush.android.UserDetailsReceiver'),(43,5,'com.airpush.android.PushService'),(44,4,'com.airpush.android.MessageReceiver'),(45,4,'com.airpush.android.DeliveryReceiver'),(46,5,'com.airpush.android.UserDetailsReceiver'),(47,6,'it.MicroApps.Tron3D.Main'),(48,5,'com.airpush.android.MessageReceiver'),(49,5,'com.airpush.android.DeliveryReceiver'),(50,5,'com.sexy_girls.sexy_american_girls.BootReceiver'),(51,6,'it.MicroApps.Tron3D.glTron'),(52,6,'com.airpush.android.PushAds'),(53,6,'com.senddroid.AdService'),(54,5,'com.sexy_girls.sexy_american_girls.boot'),(55,5,'com.Leadbolt.AdNotification'),(56,6,'com.airpush.android.PushService'),(57,6,'com.apperhand.device.android.AndroidSDKProvider'),(58,6,'com.Leadbolt.AdNotification'),(59,6,'it.MicroApps.Tron3D.BootReceiver'),(60,7,'com.gamevisa8.fish.MainActivity'),(61,6,'com.airpush.android.UserDetailsReceiver'),(62,6,'com.airpush.android.MessageReceiver'),(63,6,'com.airpush.android.DeliveryReceiver'),(64,7,'com.gamevisa8.fish.Ranking'),(65,7,'com.gamevisa8.fish.AppsList'),(66,7,'com.gamevisa8.fish.EditProfile'),(67,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(68,7,'com.google.ads.AdActivity'),(69,7,'com.apperhand.device.android.AndroidSDKProvider'),(70,7,'com.feedback.d'),(71,7,'com.gamevisa8.fish.Widget'),(72,7,'com.apperhand.device.android.a.h'),(73,1,'com.apperhand.device.android.a.a'),(74,1,'com.apperhand.device.android.a.e'),(75,7,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(76,7,'com.mobclix.android.sdk.Mobclix$2'),(77,7,'org.codehaus.jackson.map.annotate.a'),(78,7,'com.mobclix.android.sdk.MobclixCreative$Action'),(79,7,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(80,7,'com.apperhand.device.android.a.b'),(81,7,'com.gamevisa8.fish.MainActivity$9'),(82,7,'com.apperhand.device.android.a.e'),(83,7,'com.gamevisa8.fish.MainActivity$5'),(84,7,'com.gamevisa8.fish.MainActivity$7'),(85,7,'com.gamevisa8.fish.Ranking$2'),(86,7,'com.gamevisa8.fish.MainActivity$13'),(87,7,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'M_SERVER_URL'),(2,6,'FIRST_RUN'),(3,6,'USER_AGENT'),(4,6,'SERVICE_MODE'),(5,6,'APPLICATION_ID'),(6,6,'DEVELOPER_ID'),(7,8,'sectionid'),(8,6,'permanent'),(9,66,'nick'),(10,68,'com.google.ads.AdOpener'),(11,67,'com.gamevisa8.fish.type'),(12,69,'APPLICATION_ID'),(13,60,'com.mobclix.APPLICATION_ID'),(14,64,'com.mobclix.APPLICATION_ID'),(15,66,'com.mobclix.APPLICATION_ID'),(16,69,'M_SERVER_URL'),(17,69,'permanent'),(18,60,'com.mobclix.LOG_LEVEL'),(19,64,'com.mobclix.LOG_LEVEL'),(20,66,'com.mobclix.LOG_LEVEL'),(21,64,'mThisGameHighScore'),(22,68,'params'),(23,60,'UMENG_APPKEY'),(24,64,'UMENG_APPKEY'),(25,66,'UMENG_APPKEY'),(26,67,'com.gamevisa8.fish.data'),(27,66,'mGameID'),(28,67,'imageUri'),(29,69,'USER_AGENT'),(30,69,'FIRST_RUN'),(31,64,'mGameID'),(32,69,'SERVICE_MODE'),(33,60,'ADMOB_PUBLISHER_ID'),(34,64,'ADMOB_PUBLISHER_ID'),(35,66,'ADMOB_PUBLISHER_ID'),(36,68,'action'),(37,69,'DEVELOPER_ID'),(38,65,'url'),(39,60,'UMENG_CHANNEL'),(40,64,'UMENG_CHANNEL'),(41,66,'UMENG_CHANNEL');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,15,'s',1,NULL,NULL),(15,14,'s',1,35,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,21,'s',1,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,33,'r',1,NULL,NULL),(33,32,'r',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',1,35,NULL),(42,42,'r',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,76,'r',1,NULL,NULL),(74,79,'r',1,NULL,NULL),(75,87,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,3),(4,4,4),(5,5,1),(6,6,6),(7,7,4),(8,8,6),(9,9,2),(10,10,6),(11,11,6),(12,12,2),(13,13,67),(14,14,67),(15,15,70),(16,16,60),(17,17,69),(18,18,60),(19,19,69),(20,20,60),(21,21,69),(22,22,67),(23,23,69),(24,24,60),(25,25,64),(26,26,67),(27,27,60),(28,28,60),(29,29,60),(30,30,60),(31,31,72),(32,32,69),(33,33,68),(34,34,64),(35,35,69),(36,36,60),(37,37,67),(38,38,60),(39,39,60),(40,40,60),(41,41,67),(42,42,67),(43,43,60);
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
INSERT INTO `ExitPoints` VALUES (1,73,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(2,74,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(3,3,'<com.gpimports.gprestaurantlite.WndOption: void gotoTitle()>',3,'a',NULL),(4,4,'<com.gpimports.gprestaurantlite.WndContinue: void gotoTitle()>',3,'a',NULL),(5,6,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(6,74,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(7,4,'<com.gpimports.gprestaurantlite.WndContinue: void gotoContinuePlay()>',7,'a',NULL),(8,73,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(9,2,'<com.gpimports.gprestaurantlite.WndTitle: void gotoPlay()>',5,'a',NULL),(10,74,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(11,73,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(12,2,'<com.gpimports.gprestaurantlite.WndTitle: void gotoOption()>',3,'a',NULL),(13,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(14,75,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(15,77,'<org.codehaus.jackson.map.annotate.a: void a()>',52,'a',NULL),(16,78,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(17,80,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(18,60,'<com.gamevisa8.fish.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(19,80,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(20,81,'<com.gamevisa8.fish.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(21,82,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(22,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(23,82,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(24,78,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(25,64,'<com.gamevisa8.fish.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(26,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(27,60,'<com.gamevisa8.fish.MainActivity: void n()>',10,'a',NULL),(28,83,'<com.gamevisa8.fish.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(29,84,'<com.gamevisa8.fish.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(30,78,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(31,72,'<com.apperhand.device.android.a.h: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(32,80,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(33,68,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(34,85,'<com.gamevisa8.fish.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(35,82,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(36,69,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',48,'s',NULL),(37,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(38,78,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(39,86,'<com.gamevisa8.fish.MainActivity$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(40,60,'<com.gamevisa8.fish.MainActivity: void t()>',21,'a',NULL),(41,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(42,67,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(43,78,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,16),(2,9,17),(3,10,17),(4,11,17),(5,12,17),(6,13,17),(7,14,17),(8,15,21),(9,16,17),(10,17,22),(11,18,22),(12,19,22),(13,20,22),(14,21,22),(15,22,22),(16,23,22),(17,24,22),(18,25,16),(19,29,23),(20,30,24),(21,31,24),(22,32,24),(23,34,24),(24,37,17),(25,40,17),(26,41,25),(27,42,25),(28,47,23),(29,48,24),(30,49,24),(31,50,24),(32,52,24),(33,53,17),(34,54,17),(35,55,17),(36,57,22),(37,58,22),(38,59,22),(39,60,22),(40,61,22),(41,62,22),(42,63,22),(43,64,22);
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
INSERT INTO `ICategories` VALUES (1,11,3),(2,12,3);
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
INSERT INTO `IClasses` VALUES (1,1,'com/gpimports/gprestaurantlite/WndTitle'),(2,2,'com/gpimports/gprestaurantlite/WndTitle'),(3,3,'com/apperhand/device/android/AndroidSDKProvider'),(4,4,'com/apperhand/device/android/AndroidSDKProvider'),(5,6,'com/gpimports/gprestaurantlite/WndGame'),(6,7,'com/gpimports/gprestaurantlite/WndGame'),(7,8,'com/gpimports/gprestaurantlite/WndOption'),(8,26,'com/mobclix/android/sdk/MobclixBrowserActivity'),(9,27,'com/gamevisa8/fish/EditProfile'),(10,35,'com/gamevisa8/fish/Ranking'),(11,38,'com/mobclix/android/sdk/MobclixBrowserActivity'),(12,39,'com/feedback/d'),(13,43,'com/gamevisa8/fish/EditProfile'),(14,44,'com/apperhand/device/android/AndroidSDKProvider'),(15,45,'com/apperhand/device/android/AndroidSDKProvider'),(16,56,'com/gamevisa8/fish/AppsList'),(17,65,'com/mobclix/android/sdk/MobclixBrowserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,7),(2,10,8),(3,11,9),(4,12,10),(5,13,11),(6,14,12),(7,15,14),(8,16,16),(9,37,19),(10,40,21),(11,41,22),(12,42,23),(13,53,25),(14,54,26),(15,55,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'M_SERVER_URL'),(2,3,'USER_AGENT'),(3,3,'SERVICE_MODE'),(4,3,'FIRST_RUN'),(5,3,'DEVELOPER_ID'),(6,3,'APPLICATION_ID'),(7,4,'M_SERVER_URL'),(8,4,'USER_AGENT'),(9,4,'SERVICE_MODE'),(10,4,'FIRST_RUN'),(11,4,'DEVELOPER_ID'),(12,4,'(.*)'),(13,4,'APPLICATION_ID'),(14,5,'android.intent.extra.shortcut.NAME'),(15,5,'android.intent.extra.shortcut.ICON'),(16,5,'android.intent.extra.shortcut.INTENT'),(17,15,'android.intent.extra.SUBJECT'),(18,17,'android.intent.extra.INTENT'),(19,18,'android.intent.extra.INTENT'),(20,19,'android.intent.extra.TITLE'),(21,19,'android.intent.extra.INTENT'),(22,20,'android.intent.extra.INTENT'),(23,21,'android.intent.extra.TITLE'),(24,21,'android.intent.extra.INTENT'),(25,22,'android.intent.extra.INTENT'),(26,23,'android.intent.extra.TITLE'),(27,23,'android.intent.extra.INTENT'),(28,24,'android.intent.extra.TITLE'),(29,24,'android.intent.extra.INTENT'),(30,25,'android.intent.extra.shortcut.NAME'),(31,25,'android.intent.extra.shortcut.ICON'),(32,25,'android.intent.extra.shortcut.INTENT'),(33,27,'mGameID'),(34,27,'nick'),(35,30,'output'),(36,31,'output'),(37,31,'android.intent.extra.videoQuality'),(38,35,'mGameID'),(39,35,'mThisGameHighScore'),(40,43,'mGameID'),(41,43,'nick'),(42,44,'M_SERVER_URL'),(43,44,'USER_AGENT'),(44,44,'SERVICE_MODE'),(45,44,'FIRST_RUN'),(46,44,'DEVELOPER_ID'),(47,44,'APPLICATION_ID'),(48,45,'M_SERVER_URL'),(49,45,'USER_AGENT'),(50,45,'SERVICE_MODE'),(51,45,'FIRST_RUN'),(52,45,'DEVELOPER_ID'),(53,45,'(.*)'),(54,45,'APPLICATION_ID'),(55,48,'output'),(56,49,'output'),(57,49,'android.intent.extra.videoQuality'),(58,56,'url'),(59,57,'android.intent.extra.INTENT'),(60,58,'android.intent.extra.INTENT'),(61,59,'android.intent.extra.TITLE'),(62,59,'android.intent.extra.INTENT'),(63,60,'android.intent.extra.INTENT'),(64,61,'android.intent.extra.TITLE'),(65,61,'android.intent.extra.INTENT'),(66,62,'android.intent.extra.INTENT'),(67,63,'android.intent.extra.TITLE'),(68,63,'android.intent.extra.INTENT'),(69,64,'android.intent.extra.TITLE'),(70,64,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,1),(7,7,5),(8,8,6),(9,9,7),(10,10,2),(11,11,8),(12,12,2),(13,13,2),(14,14,9),(15,15,10),(16,16,4),(17,17,11),(18,18,1),(19,19,2),(20,20,2),(21,21,12),(22,22,13),(23,23,2),(24,24,2),(25,25,1),(26,26,2),(27,27,14),(28,28,9),(29,29,15),(30,30,18),(31,31,20),(32,31,19),(33,32,19),(34,32,20),(35,33,19),(36,33,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,10,2),(5,12,2),(6,13,2),(7,18,1),(8,19,2),(9,24,2),(10,25,1),(11,26,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,29,'image','*'),(2,33,'image','*'),(3,34,'image','*'),(4,41,'(.*)','(.*)'),(5,47,'image','*'),(6,51,'image','*'),(7,52,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.gpimports.gprestaurantlite'),(2,2,'com.gpimports.gprestaurantlite'),(3,3,'com.gpimports.gprestaurantlite'),(4,4,'com.gpimports.gprestaurantlite'),(5,6,'com.gpimports.gprestaurantlite'),(6,7,'com.gpimports.gprestaurantlite'),(7,8,'com.gpimports.gprestaurantlite'),(8,11,'(.*)'),(9,12,'(.*)'),(10,26,'com.gamevisa8.fish'),(11,27,'com.gamevisa8.fish'),(12,35,'com.gamevisa8.fish'),(13,38,'com.gamevisa8.fish'),(14,39,'com.gamevisa8.fish'),(15,43,'com.gamevisa8.fish'),(16,44,'com.gamevisa8.fish'),(17,45,'com.gamevisa8.fish'),(18,56,'com.gamevisa8.fish'),(19,65,'com.gamevisa8.fish');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,9,0),(4,14,0),(5,15,0),(6,16,0),(7,19,0),(8,20,0),(9,25,0),(10,29,0),(11,32,0),(12,34,0),(13,35,0),(14,36,0),(15,39,0),(16,41,0),(17,43,0),(18,47,0),(19,50,0),(20,54,0),(21,53,0),(22,56,0),(23,59,0),(24,59,0),(25,60,0),(26,59,0),(27,71,0),(28,72,0),(29,72,0),(30,73,0),(31,74,0),(32,74,0),(33,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,4,0,0),(3,5,0,0),(4,5,0,0),(5,6,1,0),(6,7,0,0),(7,9,0,0),(8,12,0,0),(9,14,1,0),(10,14,1,0),(11,15,1,0),(12,15,1,0),(13,16,1,0),(14,16,1,0),(15,18,1,0),(16,20,1,0),(17,22,1,0),(18,22,1,0),(19,22,1,0),(20,22,1,0),(21,22,1,0),(22,22,1,0),(23,22,1,0),(24,22,1,0),(25,23,1,0),(26,24,0,0),(27,25,0,0),(28,26,1,0),(29,26,1,0),(30,26,1,0),(31,26,1,0),(32,26,1,0),(33,26,1,0),(34,26,1,0),(35,27,0,0),(36,28,1,0),(37,29,1,0),(38,30,0,0),(39,31,0,0),(40,33,1,0),(41,33,1,0),(42,33,1,0),(43,34,0,0),(44,36,0,0),(45,36,0,0),(46,37,1,0),(47,37,1,0),(48,37,1,0),(49,37,1,0),(50,37,1,0),(51,37,1,0),(52,37,1,0),(53,38,1,0),(54,38,1,0),(55,39,1,0),(56,40,0,0),(57,42,1,0),(58,42,1,0),(59,42,1,0),(60,42,1,0),(61,42,1,0),(62,42,1,0),(63,42,1,0),(64,42,1,0),(65,43,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=820 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,1,2,NULL),(2,17,1,2,NULL),(3,18,1,2,NULL),(4,19,1,2,NULL),(5,20,1,2,NULL),(6,21,1,2,NULL),(7,22,1,2,NULL),(8,23,1,2,NULL),(9,24,1,2,NULL),(10,28,1,2,NULL),(11,30,1,2,NULL),(12,31,1,2,NULL),(13,32,1,2,NULL),(14,46,1,2,NULL),(15,48,1,2,NULL),(16,49,1,2,NULL),(17,50,1,2,NULL),(18,57,1,2,NULL),(19,58,1,2,NULL),(20,59,1,2,NULL),(21,60,1,2,NULL),(22,61,1,2,NULL),(23,62,1,2,NULL),(24,63,1,2,NULL),(25,64,1,2,NULL),(26,40,1,2,NULL),(27,42,1,2,NULL),(28,7,5,2,NULL),(29,8,3,2,NULL),(30,1,2,2,NULL),(31,2,2,2,NULL),(32,6,5,2,NULL),(33,3,6,2,NULL),(34,3,17,2,NULL),(35,3,18,2,NULL),(36,3,31,2,NULL),(37,3,40,2,NULL),(38,3,57,2,NULL),(39,3,69,2,NULL),(40,4,6,2,NULL),(41,4,17,2,NULL),(42,4,18,2,NULL),(43,4,31,2,NULL),(44,4,40,2,NULL),(45,4,57,2,NULL),(46,4,69,2,NULL),(47,15,7,2,NULL),(48,17,7,2,NULL),(49,18,7,2,NULL),(50,19,7,2,NULL),(51,20,7,2,NULL),(52,21,7,2,NULL),(53,22,7,2,NULL),(54,23,7,2,NULL),(55,24,7,2,NULL),(56,28,7,2,NULL),(57,30,7,2,NULL),(58,31,7,2,NULL),(59,32,7,2,NULL),(60,46,7,2,NULL),(61,48,7,2,NULL),(62,49,7,2,NULL),(63,50,7,2,NULL),(64,57,7,2,NULL),(65,58,7,2,NULL),(66,59,7,2,NULL),(67,60,7,2,NULL),(68,61,7,2,NULL),(69,62,7,2,NULL),(70,63,7,2,NULL),(71,64,7,2,NULL),(72,40,7,2,NULL),(73,42,7,2,NULL),(74,15,15,2,NULL),(75,17,15,2,NULL),(76,18,15,2,NULL),(77,19,15,2,NULL),(78,20,15,2,NULL),(79,21,15,2,NULL),(80,22,15,2,NULL),(81,23,15,2,NULL),(82,24,15,2,NULL),(83,28,15,2,NULL),(84,30,15,2,NULL),(85,31,15,2,NULL),(86,32,15,2,NULL),(87,46,15,2,NULL),(88,48,15,2,NULL),(89,49,15,2,NULL),(90,50,15,2,NULL),(91,57,15,2,NULL),(92,58,15,2,NULL),(93,59,15,2,NULL),(94,60,15,2,NULL),(95,61,15,2,NULL),(96,62,15,2,NULL),(97,63,15,2,NULL),(98,64,15,2,NULL),(99,40,15,2,NULL),(100,42,15,2,NULL),(101,15,20,2,NULL),(102,17,20,2,NULL),(103,18,20,2,NULL),(104,19,20,2,NULL),(105,20,20,2,NULL),(106,21,20,2,NULL),(107,22,20,2,NULL),(108,23,20,2,NULL),(109,24,20,2,NULL),(110,28,20,2,NULL),(111,30,20,2,NULL),(112,31,20,2,NULL),(113,32,20,2,NULL),(114,46,20,2,NULL),(115,48,20,2,NULL),(116,49,20,2,NULL),(117,50,20,2,NULL),(118,57,20,2,NULL),(119,58,20,2,NULL),(120,59,20,2,NULL),(121,60,20,2,NULL),(122,61,20,2,NULL),(123,62,20,2,NULL),(124,63,20,2,NULL),(125,64,20,2,NULL),(126,40,20,2,NULL),(127,42,20,2,NULL),(128,15,34,2,NULL),(129,17,34,2,NULL),(130,18,34,2,NULL),(131,19,34,2,NULL),(132,20,34,2,NULL),(133,21,34,2,NULL),(134,22,34,2,NULL),(135,23,34,2,NULL),(136,24,34,2,NULL),(137,28,34,2,NULL),(138,30,34,2,NULL),(139,31,34,2,NULL),(140,32,34,2,NULL),(141,46,34,2,NULL),(142,48,34,2,NULL),(143,49,34,2,NULL),(144,50,34,2,NULL),(145,57,34,2,NULL),(146,58,34,2,NULL),(147,59,34,2,NULL),(148,60,34,2,NULL),(149,61,34,2,NULL),(150,62,34,2,NULL),(151,63,34,2,NULL),(152,64,34,2,NULL),(153,40,34,2,NULL),(154,42,34,2,NULL),(155,15,16,2,NULL),(156,17,16,2,NULL),(157,18,16,2,NULL),(158,19,16,2,NULL),(159,20,16,2,NULL),(160,21,16,2,NULL),(161,22,16,2,NULL),(162,23,16,2,NULL),(163,24,16,2,NULL),(164,28,16,2,NULL),(165,30,16,2,NULL),(166,31,16,2,NULL),(167,32,16,2,NULL),(168,46,16,2,NULL),(169,48,16,2,NULL),(170,49,16,2,NULL),(171,50,16,2,NULL),(172,57,16,2,NULL),(173,58,16,2,NULL),(174,59,16,2,NULL),(175,60,16,2,NULL),(176,61,16,2,NULL),(177,62,16,2,NULL),(178,63,16,2,NULL),(179,64,16,2,NULL),(180,40,16,2,NULL),(181,42,16,2,NULL),(182,15,25,2,NULL),(183,17,25,2,NULL),(184,18,25,2,NULL),(185,19,25,2,NULL),(186,20,25,2,NULL),(187,21,25,2,NULL),(188,22,25,2,NULL),(189,23,25,2,NULL),(190,24,25,2,NULL),(191,28,25,2,NULL),(192,30,25,2,NULL),(193,31,25,2,NULL),(194,32,25,2,NULL),(195,46,25,2,NULL),(196,48,25,2,NULL),(197,49,25,2,NULL),(198,50,25,2,NULL),(199,57,25,2,NULL),(200,58,25,2,NULL),(201,59,25,2,NULL),(202,60,25,2,NULL),(203,61,25,2,NULL),(204,62,25,2,NULL),(205,63,25,2,NULL),(206,64,25,2,NULL),(207,40,25,2,NULL),(208,42,25,2,NULL),(209,15,32,2,NULL),(210,17,32,2,NULL),(211,18,32,2,NULL),(212,19,32,2,NULL),(213,20,32,2,NULL),(214,21,32,2,NULL),(215,22,32,2,NULL),(216,23,32,2,NULL),(217,24,32,2,NULL),(218,28,32,2,NULL),(219,30,32,2,NULL),(220,31,32,2,NULL),(221,32,32,2,NULL),(222,46,32,2,NULL),(223,48,32,2,NULL),(224,49,32,2,NULL),(225,50,32,2,NULL),(226,57,32,2,NULL),(227,58,32,2,NULL),(228,59,32,2,NULL),(229,60,32,2,NULL),(230,61,32,2,NULL),(231,62,32,2,NULL),(232,63,32,2,NULL),(233,64,32,2,NULL),(234,40,32,2,NULL),(235,42,32,2,NULL),(236,15,36,2,NULL),(237,17,36,2,NULL),(238,18,36,2,NULL),(239,19,36,2,NULL),(240,20,36,2,NULL),(241,21,36,2,NULL),(242,22,36,2,NULL),(243,23,36,2,NULL),(244,24,36,2,NULL),(245,28,36,2,NULL),(246,30,36,2,NULL),(247,31,36,2,NULL),(248,32,36,2,NULL),(249,46,36,2,NULL),(250,48,36,2,NULL),(251,49,36,2,NULL),(252,50,36,2,NULL),(253,57,36,2,NULL),(254,58,36,2,NULL),(255,59,36,2,NULL),(256,60,36,2,NULL),(257,61,36,2,NULL),(258,62,36,2,NULL),(259,63,36,2,NULL),(260,64,36,2,NULL),(261,40,36,2,NULL),(262,42,36,2,NULL),(263,15,39,2,NULL),(264,17,39,2,NULL),(265,18,39,2,NULL),(266,19,39,2,NULL),(267,20,39,2,NULL),(268,21,39,2,NULL),(269,22,39,2,NULL),(270,23,39,2,NULL),(271,24,39,2,NULL),(272,28,39,2,NULL),(273,30,39,2,NULL),(274,31,39,2,NULL),(275,32,39,2,NULL),(276,46,39,2,NULL),(277,48,39,2,NULL),(278,49,39,2,NULL),(279,50,39,2,NULL),(280,57,39,2,NULL),(281,58,39,2,NULL),(282,59,39,2,NULL),(283,60,39,2,NULL),(284,61,39,2,NULL),(285,62,39,2,NULL),(286,63,39,2,NULL),(287,64,39,2,NULL),(288,40,39,2,NULL),(289,42,39,2,NULL),(290,15,41,2,NULL),(291,17,41,2,NULL),(292,18,41,2,NULL),(293,19,41,2,NULL),(294,20,41,2,NULL),(295,21,41,2,NULL),(296,22,41,2,NULL),(297,23,41,2,NULL),(298,24,41,2,NULL),(299,28,41,2,NULL),(300,30,41,2,NULL),(301,31,41,2,NULL),(302,32,41,2,NULL),(303,46,41,2,NULL),(304,48,41,2,NULL),(305,49,41,2,NULL),(306,50,41,2,NULL),(307,57,41,2,NULL),(308,58,41,2,NULL),(309,59,41,2,NULL),(310,60,41,2,NULL),(311,61,41,2,NULL),(312,62,41,2,NULL),(313,63,41,2,NULL),(314,64,41,2,NULL),(315,40,41,2,NULL),(316,42,41,2,NULL),(317,15,43,2,NULL),(318,17,43,2,NULL),(319,18,43,2,NULL),(320,19,43,2,NULL),(321,20,43,2,NULL),(322,21,43,2,NULL),(323,22,43,2,NULL),(324,23,43,2,NULL),(325,24,43,2,NULL),(326,28,43,2,NULL),(327,30,43,2,NULL),(328,31,43,2,NULL),(329,32,43,2,NULL),(330,46,43,2,NULL),(331,48,43,2,NULL),(332,49,43,2,NULL),(333,50,43,2,NULL),(334,57,43,2,NULL),(335,58,43,2,NULL),(336,59,43,2,NULL),(337,60,43,2,NULL),(338,61,43,2,NULL),(339,62,43,2,NULL),(340,63,43,2,NULL),(341,64,43,2,NULL),(342,40,43,2,NULL),(343,42,43,2,NULL),(344,15,50,2,NULL),(345,17,50,2,NULL),(346,18,50,2,NULL),(347,19,50,2,NULL),(348,20,50,2,NULL),(349,21,50,2,NULL),(350,22,50,2,NULL),(351,23,50,2,NULL),(352,24,50,2,NULL),(353,28,50,2,NULL),(354,30,50,2,NULL),(355,31,50,2,NULL),(356,32,50,2,NULL),(357,46,50,2,NULL),(358,48,50,2,NULL),(359,49,50,2,NULL),(360,50,50,2,NULL),(361,57,50,2,NULL),(362,58,50,2,NULL),(363,59,50,2,NULL),(364,60,50,2,NULL),(365,61,50,2,NULL),(366,62,50,2,NULL),(367,63,50,2,NULL),(368,64,50,2,NULL),(369,40,50,2,NULL),(370,42,50,2,NULL),(371,15,54,2,NULL),(372,17,54,2,NULL),(373,18,54,2,NULL),(374,19,54,2,NULL),(375,20,54,2,NULL),(376,21,54,2,NULL),(377,22,54,2,NULL),(378,23,54,2,NULL),(379,24,54,2,NULL),(380,28,54,2,NULL),(381,30,54,2,NULL),(382,31,54,2,NULL),(383,32,54,2,NULL),(384,46,54,2,NULL),(385,48,54,2,NULL),(386,49,54,2,NULL),(387,50,54,2,NULL),(388,57,54,2,NULL),(389,58,54,2,NULL),(390,59,54,2,NULL),(391,60,54,2,NULL),(392,61,54,2,NULL),(393,62,54,2,NULL),(394,63,54,2,NULL),(395,64,54,2,NULL),(396,40,54,2,NULL),(397,42,54,2,NULL),(398,35,64,2,NULL),(399,56,65,2,NULL),(400,15,9,2,NULL),(401,15,14,2,NULL),(402,15,19,2,NULL),(403,15,29,2,NULL),(404,15,35,2,NULL),(405,15,47,2,NULL),(406,15,53,2,NULL),(407,15,56,2,NULL),(408,15,59,2,NULL),(409,17,60,2,NULL),(410,18,60,2,NULL),(411,19,60,2,NULL),(412,20,60,2,NULL),(413,21,60,2,NULL),(414,22,60,2,NULL),(415,23,60,2,NULL),(416,24,60,2,NULL),(417,28,60,2,NULL),(418,30,60,2,NULL),(419,31,60,2,NULL),(420,32,60,2,NULL),(421,46,60,2,NULL),(422,48,60,2,NULL),(423,49,60,2,NULL),(424,50,60,2,NULL),(425,57,60,2,NULL),(426,58,60,2,NULL),(427,59,60,2,NULL),(428,60,60,2,NULL),(429,61,60,2,NULL),(430,62,60,2,NULL),(431,63,60,2,NULL),(432,64,60,2,NULL),(433,40,60,2,NULL),(434,42,60,2,NULL),(435,15,71,2,NULL),(436,15,72,2,NULL),(437,15,73,2,NULL),(438,15,74,2,NULL),(439,15,75,2,NULL),(440,27,66,2,NULL),(441,17,9,2,NULL),(442,18,9,2,NULL),(443,19,9,2,NULL),(444,20,9,2,NULL),(445,21,9,2,NULL),(446,22,9,2,NULL),(447,23,9,2,NULL),(448,24,9,2,NULL),(449,28,9,2,NULL),(450,30,9,2,NULL),(451,31,9,2,NULL),(452,32,9,2,NULL),(453,46,9,2,NULL),(454,48,9,2,NULL),(455,49,9,2,NULL),(456,50,9,2,NULL),(457,57,9,2,NULL),(458,58,9,2,NULL),(459,59,9,2,NULL),(460,60,9,2,NULL),(461,61,9,2,NULL),(462,62,9,2,NULL),(463,63,9,2,NULL),(464,64,9,2,NULL),(465,17,14,2,NULL),(466,18,14,2,NULL),(467,19,14,2,NULL),(468,20,14,2,NULL),(469,21,14,2,NULL),(470,22,14,2,NULL),(471,23,14,2,NULL),(472,24,14,2,NULL),(473,28,14,2,NULL),(474,30,14,2,NULL),(475,31,14,2,NULL),(476,32,14,2,NULL),(477,46,14,2,NULL),(478,48,14,2,NULL),(479,49,14,2,NULL),(480,50,14,2,NULL),(481,57,14,2,NULL),(482,58,14,2,NULL),(483,59,14,2,NULL),(484,60,14,2,NULL),(485,61,14,2,NULL),(486,62,14,2,NULL),(487,63,14,2,NULL),(488,64,14,2,NULL),(489,17,19,2,NULL),(490,18,19,2,NULL),(491,19,19,2,NULL),(492,20,19,2,NULL),(493,21,19,2,NULL),(494,22,19,2,NULL),(495,23,19,2,NULL),(496,24,19,2,NULL),(497,28,19,2,NULL),(498,30,19,2,NULL),(499,31,19,2,NULL),(500,32,19,2,NULL),(501,46,19,2,NULL),(502,48,19,2,NULL),(503,49,19,2,NULL),(504,50,19,2,NULL),(505,57,19,2,NULL),(506,58,19,2,NULL),(507,59,19,2,NULL),(508,60,19,2,NULL),(509,61,19,2,NULL),(510,62,19,2,NULL),(511,63,19,2,NULL),(512,64,19,2,NULL),(513,17,29,2,NULL),(514,18,29,2,NULL),(515,19,29,2,NULL),(516,20,29,2,NULL),(517,21,29,2,NULL),(518,22,29,2,NULL),(519,23,29,2,NULL),(520,24,29,2,NULL),(521,28,29,2,NULL),(522,30,29,2,NULL),(523,31,29,2,NULL),(524,32,29,2,NULL),(525,46,29,2,NULL),(526,48,29,2,NULL),(527,49,29,2,NULL),(528,50,29,2,NULL),(529,57,29,2,NULL),(530,58,29,2,NULL),(531,59,29,2,NULL),(532,60,29,2,NULL),(533,61,29,2,NULL),(534,62,29,2,NULL),(535,63,29,2,NULL),(536,64,29,2,NULL),(537,17,35,2,NULL),(538,18,35,2,NULL),(539,19,35,2,NULL),(540,20,35,2,NULL),(541,21,35,2,NULL),(542,22,35,2,NULL),(543,23,35,2,NULL),(544,24,35,2,NULL),(545,28,35,2,NULL),(546,30,35,2,NULL),(547,31,35,2,NULL),(548,32,35,2,NULL),(549,46,35,2,NULL),(550,48,35,2,NULL),(551,49,35,2,NULL),(552,50,35,2,NULL),(553,57,35,2,NULL),(554,58,35,2,NULL),(555,59,35,2,NULL),(556,60,35,2,NULL),(557,61,35,2,NULL),(558,62,35,2,NULL),(559,63,35,2,NULL),(560,64,35,2,NULL),(561,17,47,2,NULL),(562,18,47,2,NULL),(563,19,47,2,NULL),(564,20,47,2,NULL),(565,21,47,2,NULL),(566,22,47,2,NULL),(567,23,47,2,NULL),(568,24,47,2,NULL),(569,28,47,2,NULL),(570,30,47,2,NULL),(571,31,47,2,NULL),(572,32,47,2,NULL),(573,46,47,2,NULL),(574,48,47,2,NULL),(575,49,47,2,NULL),(576,50,47,2,NULL),(577,57,47,2,NULL),(578,58,47,2,NULL),(579,59,47,2,NULL),(580,60,47,2,NULL),(581,61,47,2,NULL),(582,62,47,2,NULL),(583,63,47,2,NULL),(584,64,47,2,NULL),(585,17,53,2,NULL),(586,18,53,2,NULL),(587,19,53,2,NULL),(588,20,53,2,NULL),(589,21,53,2,NULL),(590,22,53,2,NULL),(591,23,53,2,NULL),(592,24,53,2,NULL),(593,28,53,2,NULL),(594,30,53,2,NULL),(595,31,53,2,NULL),(596,32,53,2,NULL),(597,46,53,2,NULL),(598,48,53,2,NULL),(599,49,53,2,NULL),(600,50,53,2,NULL),(601,57,53,2,NULL),(602,58,53,2,NULL),(603,59,53,2,NULL),(604,60,53,2,NULL),(605,61,53,2,NULL),(606,62,53,2,NULL),(607,63,53,2,NULL),(608,64,53,2,NULL),(609,17,56,2,NULL),(610,18,56,2,NULL),(611,19,56,2,NULL),(612,20,56,2,NULL),(613,21,56,2,NULL),(614,22,56,2,NULL),(615,23,56,2,NULL),(616,24,56,2,NULL),(617,28,56,2,NULL),(618,30,56,2,NULL),(619,31,56,2,NULL),(620,32,56,2,NULL),(621,46,56,2,NULL),(622,48,56,2,NULL),(623,49,56,2,NULL),(624,50,56,2,NULL),(625,57,56,2,NULL),(626,58,56,2,NULL),(627,59,56,2,NULL),(628,60,56,2,NULL),(629,61,56,2,NULL),(630,62,56,2,NULL),(631,63,56,2,NULL),(632,64,56,2,NULL),(633,17,59,2,NULL),(634,18,59,2,NULL),(635,19,59,2,NULL),(636,20,59,2,NULL),(637,21,59,2,NULL),(638,22,59,2,NULL),(639,23,59,2,NULL),(640,24,59,2,NULL),(641,28,59,2,NULL),(642,30,59,2,NULL),(643,31,59,2,NULL),(644,32,59,2,NULL),(645,46,59,2,NULL),(646,48,59,2,NULL),(647,49,59,2,NULL),(648,50,59,2,NULL),(649,57,59,2,NULL),(650,58,59,2,NULL),(651,59,59,2,NULL),(652,60,59,2,NULL),(653,61,59,2,NULL),(654,62,59,2,NULL),(655,63,59,2,NULL),(656,64,59,2,NULL),(657,17,71,2,NULL),(658,18,71,2,NULL),(659,19,71,2,NULL),(660,20,71,2,NULL),(661,21,71,2,NULL),(662,22,71,2,NULL),(663,23,71,2,NULL),(664,24,71,2,NULL),(665,28,71,2,NULL),(666,30,71,2,NULL),(667,31,71,2,NULL),(668,32,71,2,NULL),(669,46,71,2,NULL),(670,48,71,2,NULL),(671,49,71,2,NULL),(672,50,71,2,NULL),(673,57,71,2,NULL),(674,58,71,2,NULL),(675,59,71,2,NULL),(676,60,71,2,NULL),(677,61,71,2,NULL),(678,62,71,2,NULL),(679,63,71,2,NULL),(680,64,71,2,NULL),(681,17,72,2,NULL),(682,18,72,2,NULL),(683,19,72,2,NULL),(684,20,72,2,NULL),(685,21,72,2,NULL),(686,22,72,2,NULL),(687,23,72,2,NULL),(688,24,72,2,NULL),(689,28,72,2,NULL),(690,30,72,2,NULL),(691,31,72,2,NULL),(692,32,72,2,NULL),(693,46,72,2,NULL),(694,48,72,2,NULL),(695,49,72,2,NULL),(696,50,72,2,NULL),(697,57,72,2,NULL),(698,58,72,2,NULL),(699,59,72,2,NULL),(700,60,72,2,NULL),(701,61,72,2,NULL),(702,62,72,2,NULL),(703,63,72,2,NULL),(704,64,72,2,NULL),(705,17,73,2,NULL),(706,18,73,2,NULL),(707,19,73,2,NULL),(708,20,73,2,NULL),(709,21,73,2,NULL),(710,22,73,2,NULL),(711,23,73,2,NULL),(712,24,73,2,NULL),(713,28,73,2,NULL),(714,30,73,2,NULL),(715,31,73,2,NULL),(716,32,73,2,NULL),(717,46,73,2,NULL),(718,48,73,2,NULL),(719,49,73,2,NULL),(720,50,73,2,NULL),(721,57,73,2,NULL),(722,58,73,2,NULL),(723,59,73,2,NULL),(724,60,73,2,NULL),(725,61,73,2,NULL),(726,62,73,2,NULL),(727,63,73,2,NULL),(728,64,73,2,NULL),(729,17,74,2,NULL),(730,18,74,2,NULL),(731,19,74,2,NULL),(732,20,74,2,NULL),(733,21,74,2,NULL),(734,22,74,2,NULL),(735,23,74,2,NULL),(736,24,74,2,NULL),(737,28,74,2,NULL),(738,30,74,2,NULL),(739,31,74,2,NULL),(740,32,74,2,NULL),(741,46,74,2,NULL),(742,48,74,2,NULL),(743,49,74,2,NULL),(744,50,74,2,NULL),(745,57,74,2,NULL),(746,58,74,2,NULL),(747,59,74,2,NULL),(748,60,74,2,NULL),(749,61,74,2,NULL),(750,62,74,2,NULL),(751,63,74,2,NULL),(752,64,74,2,NULL),(753,17,75,2,NULL),(754,18,75,2,NULL),(755,19,75,2,NULL),(756,20,75,2,NULL),(757,21,75,2,NULL),(758,22,75,2,NULL),(759,23,75,2,NULL),(760,24,75,2,NULL),(761,28,75,2,NULL),(762,30,75,2,NULL),(763,31,75,2,NULL),(764,32,75,2,NULL),(765,46,75,2,NULL),(766,48,75,2,NULL),(767,49,75,2,NULL),(768,50,75,2,NULL),(769,57,75,2,NULL),(770,58,75,2,NULL),(771,59,75,2,NULL),(772,60,75,2,NULL),(773,61,75,2,NULL),(774,62,75,2,NULL),(775,63,75,2,NULL),(776,64,75,2,NULL),(777,40,9,2,NULL),(778,42,9,2,NULL),(779,40,14,2,NULL),(780,42,14,2,NULL),(781,40,19,2,NULL),(782,42,19,2,NULL),(783,40,29,2,NULL),(784,42,29,2,NULL),(785,40,35,2,NULL),(786,42,35,2,NULL),(787,40,47,2,NULL),(788,42,47,2,NULL),(789,40,53,2,NULL),(790,42,53,2,NULL),(791,40,56,2,NULL),(792,42,56,2,NULL),(793,40,59,2,NULL),(794,42,59,2,NULL),(795,40,71,2,NULL),(796,42,71,2,NULL),(797,40,72,2,NULL),(798,42,72,2,NULL),(799,40,73,2,NULL),(800,42,73,2,NULL),(801,40,74,2,NULL),(802,42,74,2,NULL),(803,40,75,2,NULL),(804,42,75,2,NULL),(805,44,6,2,NULL),(806,44,17,2,NULL),(807,44,18,2,NULL),(808,44,31,2,NULL),(809,44,40,2,NULL),(810,44,57,2,NULL),(811,44,69,2,NULL),(812,45,6,2,NULL),(813,45,17,2,NULL),(814,45,18,2,NULL),(815,45,31,2,NULL),(816,45,40,2,NULL),(817,45,57,2,NULL),(818,45,69,2,NULL),(819,39,70,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(35,'android.permission.BIND_WALLPAPER'),(28,'android.permission.CALL_PHONE'),(31,'android.permission.FLASHLIGHT'),(29,'android.permission.GET_ACCOUNTS'),(26,'android.permission.GET_TASKS'),(32,'android.permission.INSTALL_PACKAGES'),(18,'android.permission.INTERNET'),(30,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RESTART_PACKAGES'),(25,'android.permission.SET_WALLPAPER'),(33,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(27,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.fede.launcher.permission.READ_SETTINGS'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(2,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(3,'com.motorola.dlauncher.permission.READ_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(34,'om.android.launcher.permission.INSTALL_SHORTCUT'),(21,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'(.*)NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'mailto:androidmj003@gmail.com',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=pname:com.gamevisa8.fishpro1',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=com.gamevisa8.fish',NULL,NULL,NULL),(28,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,8,3),(4,10,4),(5,10,5),(6,11,6),(7,17,13),(8,19,15),(9,21,17),(10,21,18),(11,32,20),(12,35,24),(13,41,28);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,24),(25,2,1),(26,2,2),(27,2,3),(28,2,4),(29,2,5),(30,2,7),(31,2,8),(32,2,9),(33,2,10),(34,2,11),(35,3,1),(36,2,12),(37,3,2),(38,2,13),(39,3,3),(40,2,14),(41,3,4),(42,2,15),(43,3,5),(44,2,17),(45,3,7),(46,2,16),(47,3,8),(48,2,18),(49,3,9),(50,2,21),(51,3,10),(52,2,20),(53,3,11),(54,2,23),(55,3,12),(56,2,22),(57,3,13),(58,2,25),(59,3,14),(60,2,24),(61,3,15),(62,2,27),(63,3,17),(64,2,26),(65,4,1),(66,3,16),(67,2,29),(68,4,2),(69,3,19),(70,2,28),(71,4,3),(72,3,18),(73,2,31),(74,4,4),(75,3,21),(76,2,30),(77,4,7),(78,3,20),(79,2,32),(80,4,9),(81,3,23),(82,2,33),(83,4,12),(84,3,22),(85,4,13),(86,3,24),(87,4,14),(88,3,27),(89,4,15),(90,3,34),(91,4,17),(92,3,33),(93,4,16),(94,4,18),(95,4,21),(96,4,20),(97,4,22),(98,4,24),(99,4,27),(100,5,1),(101,5,2),(102,5,33),(103,5,3),(104,5,4),(105,5,5),(106,5,7),(107,5,8),(108,5,9),(109,5,10),(110,5,12),(111,5,13),(112,5,14),(113,5,15),(114,5,17),(115,5,16),(116,6,1),(117,5,18),(118,6,2),(119,6,3),(120,5,21),(121,6,4),(122,5,20),(123,5,23),(124,6,5),(125,5,24),(126,6,7),(127,6,8),(128,5,27),(129,6,9),(130,6,10),(131,6,11),(132,6,12),(133,6,13),(134,6,14),(135,6,15),(136,6,17),(137,6,16),(138,6,19),(139,6,18),(140,6,21),(141,6,20),(142,6,23),(143,6,22),(144,6,24),(145,7,1),(146,7,2),(147,7,3),(148,7,7),(149,7,9),(150,7,12),(151,7,13),(152,7,14),(153,7,15),(154,7,17),(155,7,16),(156,7,18),(157,7,21),(158,7,20),(159,7,22),(160,7,24),(161,7,26);
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

-- Dump completed on 2015-10-12  3:31:26
