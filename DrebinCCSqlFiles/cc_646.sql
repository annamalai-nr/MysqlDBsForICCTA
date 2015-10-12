-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_646
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
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(14,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(13,'com.airpush.android.PushServiceStart16534'),(6,'com.airpush.android.PushServiceStart41970'),(3,'com.airpush.android.PushServiceStart49398'),(8,'com.airpush.android.PushServiceStart52905'),(15,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.vending.INSTALL_REFERRER'),(12,'com.applovin.sdk.AppLovinService'),(11,'com.google.android.c2dm.intent.RECEIVE'),(10,'com.google.android.c2dm.intent.REGISTRATION'),(7,'com.inoxpush.adnetwork.PushServiceStart10001'),(5,'com.jiubang.goscreenlock.theme');
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
INSERT INTO `Applications` VALUES (1,'com.AlDiApps.NightSeaLite',10),(2,'com.appspot.yourdepot.pirateflag',1),(3,'com.apperhand.secretsms',3),(4,'com.ss.go.locker.theme.launcher.ex.audione',2),(5,'com.rockshow.jessicaalba1',2),(6,'com.macte.FifteenPuzzle.HarryPotter',7),(7,'com.banana.videowallpaperlite',99);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'com.ss.go.locker.theme.launcher.ex.audione');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.appspot.yourdepot.MainActivity'),(2,1,'com.AlDiApps.NightSeaLite.Settings'),(3,1,'com.AlDiApps.NightSeaLite.Livewallpaper'),(4,2,'com.appspot.yourdepot.SplashActivity'),(5,2,'com.appspot.yourdepot.ExitActivity'),(6,1,'com.apperhand.device.android.AndroidSDKProvider'),(7,2,'com.appspot.yourdepot.LiveWallpaperSettings'),(8,2,'com.airpush.android.PushAds'),(9,2,'com.appspot.yourdepot.LiveWallpaper'),(10,2,'com.apperhand.device.android.AndroidSDKProvider'),(11,2,'com.airpush.android.PushService'),(12,3,'com.apperhand.secretsms.LoginActivity'),(13,2,'com.airpush.android.UserDetailsReceiver'),(14,3,'com.apperhand.secretsms.MessagesListActivity'),(15,2,'com.airpush.android.MessageReceiver'),(16,3,'com.apperhand.secretsms.MessagingThreadsListActivity'),(17,2,'com.airpush.android.DeliveryReceiver'),(18,3,'com.apperhand.device.android.AndroidSDKProvider'),(19,2,'com.appspot.yourdepot.BootReceiver'),(20,5,'com.rockshow.jessicaalba1.AppLauncher'),(21,5,'com.airpush.android.PushAds'),(22,4,'com.ss.go.locker.theme.launcher.ex.audione.GOLockerInstallDialog'),(23,5,'com.rockshow.jessicaalba1.Preferences'),(24,6,'com.macte.FifteenPuzzle.HarryPotter.FifteenPuzzle'),(25,5,'com.rockshow.jessicaalba1.RihanaWallpaper'),(26,5,'com.airpush.android.PushService'),(27,6,'com.macte.FifteenPuzzle.HarryPotter.GameView'),(28,4,'com.airpush.android.PushAds'),(29,4,'com.inox.referrer.SendDataService'),(30,5,'com.apperhand.device.android.AndroidSDKProvider'),(31,4,'com.inoxpush.downloadticker.DownloadTickerService'),(32,6,'com.mobfox.sdk.InAppWebView'),(33,5,'com.airpush.android.UserDetailsReceiver'),(34,4,'com.inoxpush.adnetwork.PushAdService'),(35,6,'com.macte.FifteenPuzzle.HarryPotter.SettingsList'),(36,5,'com.airpush.android.MessageReceiver'),(37,5,'com.airpush.android.DeliveryReceiver'),(38,4,'com.ss.go.locker.theme.launcher.ex.audione.C2DMService'),(39,5,'com.rockshow.jessicaalba1.BootReceiver'),(40,6,'com.macte.FifteenPuzzle.HarryPotter.GalleryLevel'),(41,4,'com.ss.go.locker.theme.launcher.ex.audione.GoDownloadServiceervice'),(42,6,'com.google.ads.AdActivity'),(43,4,'com.moolah.NotificationService'),(44,6,'com.apperhand.device.android.AndroidSDKProvider'),(45,5,'com.Leadbolt.AdNotification'),(46,4,'com.airpush.android.PushService'),(47,5,'com.rockshow.jessicaalba1.LeadBoltBootReceiver'),(48,4,'com.apperhand.device.android.AndroidSDKProvider'),(49,4,'com.inox.referrer.Receiver'),(50,4,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(51,4,'com.inoxpush.adnetwork.AdMessageReceiver'),(52,4,'com.inoxpush.adnetwork.ClickAdReceiver'),(53,4,'com.ss.go.locker.theme.launcher.ex.audione.C2DMRegistrationReceiver'),(54,4,'com.ss.go.locker.theme.launcher.ex.audione.C2DMMessageReceiver'),(55,4,'com.moolah.MessageReceiver'),(56,4,'com.moolah.BootReceiver'),(57,4,'com.airpush.android.UserDetailsReceiver'),(58,4,'com.airpush.android.MessageReceiver'),(59,4,'com.airpush.android.DeliveryReceiver'),(60,4,'com.ss.go.locker.theme.launcher.ex.audione.BootReceiver'),(61,4,'com.Leadbolt.AdNotification'),(62,7,'com.moolah.adroll.MoolahActivity'),(63,7,'de.madvertise.android.sdk.MadvertiseActivity'),(64,7,'com.appbrain.AppBrainActivity'),(65,7,'com.airpush.android.PushAds'),(66,7,'com.banana.videowallpaperlite.PrefActivity'),(67,7,'com.banana.videowallpaperlite.YoutubePickActivity'),(68,7,'com.banana.videowallpaperlite.AdDialogActivity'),(69,7,'com.banana.videowallpaperlite.Main'),(70,7,'com.google.ads.AdActivity'),(71,7,'com.mobfox.sdk.InAppWebView'),(72,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(73,7,'com.applovin.sdk.AppLovinService'),(74,7,'com.moolah.NotificationService'),(75,7,'com.appbrain.AppBrainService'),(76,7,'com.apperhand.device.android.AndroidSDKProvider'),(77,3,'com.apperhand.device.android.c.a'),(78,7,'com.banana.videowallpaperlite.BootService'),(79,7,'com.airpush.android.PushService'),(80,7,'com.banana.videowallpaperlite.CameraLiveService'),(81,7,'com.applovin.sdk.AppLovinBootReceiver'),(82,3,'com.apperhand.device.android.c.d'),(83,7,'com.moolah.MessageReceiver'),(84,7,'com.moolah.BootReceiver'),(85,7,'com.banana.videowallpaperlite.IconAppWidgetProvider'),(86,3,'com.apperhand.secretsms.a'),(87,7,'com.appbrain.ReferrerReceiver'),(88,7,'com.banana.videowallpaperlite.BootReceiver'),(89,3,'com.apperhand.secretsms.b.c'),(90,7,'com.airpush.android.UserDetailsReceiver'),(91,7,'com.airpush.android.MessageReceiver'),(92,7,'com.airpush.android.DeliveryReceiver'),(93,7,'com.Leadbolt.AdNotification'),(94,1,'com.apperhand.device.android.a.a'),(95,1,'com.AlDiApps.NightSeaLite.Settings$2'),(96,1,'com.apperhand.device.android.a.e'),(97,1,'com.AlDiApps.NightSeaLite.Settings$3'),(98,1,'com.AlDiApps.NightSeaLite.Settings$4'),(99,6,'com.apperhand.device.android.a.e'),(100,1,'com.AlDiApps.NightSeaLite.Settings$1'),(101,6,'com.apperhand.device.android.a.b'),(102,6,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
INSERT INTO `ComponentExtras` VALUES (1,14,'com.apperhand.secretsms.threads.index'),(2,18,'USER_AGENT'),(3,18,'M_SERVER_URL'),(4,18,'APPLICATION_ID'),(5,18,'DEVELOPER_ID'),(6,18,'FIRST_RUN'),(7,14,'person'),(8,6,'FIRST_RUN'),(9,6,'DEVELOPER_ID'),(10,6,'permanent'),(11,44,'APPLICATION_ID'),(12,6,'SERVICE_MODE'),(13,6,'APPLICATION_ID'),(14,35,'NAME'),(15,39,'Integrated'),(16,6,'M_SERVER_URL'),(17,44,'USER_AGENT'),(18,44,'FIRST_RUN'),(19,6,'USER_AGENT'),(20,39,'NumLevel'),(21,39,'MaxLevel'),(22,44,'M_SERVER_URL'),(23,42,'params'),(24,32,'REDIRECT_URI'),(25,39,'mComplex'),(26,42,'action'),(27,39,'mLevels'),(28,42,'com.google.ads.AdOpener'),(29,44,'permanent'),(30,39,'Name'),(31,44,'DEVELOPER_ID'),(32,39,'Directory'),(33,39,'Service'),(34,44,'SERVICE_MODE'),(35,24,'com.macte.FifteenPuzzle.HarryPotter.OUTPUT_PARAMS'),(36,39,'Gallery'),(37,35,'Service');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',1,24,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,24,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',1,24,NULL),(26,27,'a',1,NULL,NULL),(27,26,'s',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'r',1,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',1,35,NULL),(54,54,'r',1,35,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',1,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,79,'s',1,NULL,NULL),(79,80,'s',1,24,NULL),(80,81,'r',1,NULL,NULL),(81,83,'r',0,NULL,NULL),(82,84,'r',1,NULL,NULL),(83,85,'r',1,NULL,NULL),(84,87,'r',1,NULL,NULL),(85,88,'r',1,NULL,NULL),(86,90,'r',0,NULL,NULL),(87,91,'r',0,NULL,NULL),(88,92,'r',0,NULL,NULL),(89,93,'r',0,NULL,NULL),(90,102,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,12),(3,3,18),(4,4,18),(5,5,16),(6,6,18),(7,7,16),(8,7,14),(9,8,16),(10,9,18),(11,10,16),(12,11,12),(13,12,16),(14,13,6),(15,14,2),(16,15,6),(17,16,2),(18,17,3),(19,18,6),(20,19,24),(21,20,2),(22,21,24),(23,22,6),(24,23,6),(25,24,6),(26,25,44),(27,26,2),(28,27,42),(29,28,44),(30,29,24),(31,30,24),(32,31,24),(33,32,44),(34,33,44),(35,34,44),(36,35,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,77,'<com.apperhand.device.android.c.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(2,12,'<com.apperhand.secretsms.LoginActivity: void a()>',5,'a',NULL),(3,82,'<com.apperhand.device.android.c.d: java.util.List d()>',13,'p',NULL),(4,77,'<com.apperhand.device.android.c.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,86,'<com.apperhand.secretsms.a: java.util.List a()>',6,'p',NULL),(6,77,'<com.apperhand.device.android.c.a: java.util.List a()>',13,'p',NULL),(7,89,'<com.apperhand.secretsms.b.c: void a(android.content.ContentResolver,java.lang.Long,java.lang.String)>',11,'p',NULL),(8,16,'<com.apperhand.secretsms.MessagingThreadsListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(9,82,'<com.apperhand.device.android.c.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(10,86,'<com.apperhand.secretsms.a: java.util.List a()>',56,'p',NULL),(11,18,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(12,86,'<com.apperhand.secretsms.a: java.util.List a(java.lang.Long)>',9,'p',NULL),(13,94,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(14,95,'<com.AlDiApps.NightSeaLite.Settings$2: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(15,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(16,97,'<com.AlDiApps.NightSeaLite.Settings$3: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(17,6,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(18,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(19,24,'<com.macte.FifteenPuzzle.HarryPotter.FifteenPuzzle: void menuMorePuzzle()>',13,'a',NULL),(20,98,'<com.AlDiApps.NightSeaLite.Settings$4: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(21,24,'<com.macte.FifteenPuzzle.HarryPotter.FifteenPuzzle: void menuGallery()>',35,'a',NULL),(22,94,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(23,94,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(24,96,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(25,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(26,100,'<com.AlDiApps.NightSeaLite.Settings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(27,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(28,101,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(29,44,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(30,24,'<com.macte.FifteenPuzzle.HarryPotter.FifteenPuzzle: void menuMorePuzzle()>',26,'a',NULL),(31,24,'<com.macte.FifteenPuzzle.HarryPotter.FifteenPuzzle: void menuOptions()>',5,'a',NULL),(32,101,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(33,101,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(34,99,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(35,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,15),(2,5,16),(3,6,16),(4,9,16),(5,10,16),(6,12,15),(7,13,16),(8,14,16),(9,15,17),(10,16,17),(11,19,16),(12,21,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/secretsms/MessagingThreadsListActivity'),(2,2,'com/apperhand/secretsms/MessagesListActivity'),(3,4,'com/apperhand/device/android/AndroidSDKProvider'),(4,7,'com/apperhand/device/android/AndroidSDKProvider'),(5,8,'com/apperhand/device/android/AndroidSDKProvider'),(6,11,'com/macte/FifteenPuzzle/HarryPotter/GalleryLevel'),(7,17,'com/apperhand/device/android/AndroidSDKProvider'),(8,18,'com/apperhand/device/android/AndroidSDKProvider'),(9,20,'com/macte/FifteenPuzzle/HarryPotter/SettingsList');
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
INSERT INTO `IData` VALUES (1,5,10),(2,6,12),(3,9,15),(4,10,16),(5,13,20),(6,14,21),(7,15,22),(8,16,23),(9,19,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'run'),(2,2,'com.apperhand.secretsms.threads.index'),(3,3,'android.intent.extra.shortcut.NAME'),(4,3,'android.intent.extra.shortcut.ICON'),(5,3,'android.intent.extra.shortcut.INTENT'),(6,4,'USER_AGENT'),(7,4,'M_SERVER_URL'),(8,4,'DEVELOPER_ID'),(9,4,'FIRST_RUN'),(10,4,'APPLICATION_ID'),(11,7,'M_SERVER_URL'),(12,7,'USER_AGENT'),(13,7,'SERVICE_MODE'),(14,7,'FIRST_RUN'),(15,7,'DEVELOPER_ID'),(16,7,'APPLICATION_ID'),(17,8,'M_SERVER_URL'),(18,8,'USER_AGENT'),(19,8,'SERVICE_MODE'),(20,8,'FIRST_RUN'),(21,8,'DEVELOPER_ID'),(22,8,'(.*)'),(23,8,'APPLICATION_ID'),(24,11,'Name'),(25,11,'mLevels'),(26,11,'Integrated'),(27,11,'NumLevel'),(28,11,'MaxLevel'),(29,11,'mComplex'),(30,11,'Directory'),(31,11,'Gallery'),(32,12,'android.intent.extra.shortcut.NAME'),(33,12,'android.intent.extra.shortcut.ICON'),(34,12,'android.intent.extra.shortcut.INTENT'),(35,17,'M_SERVER_URL'),(36,17,'USER_AGENT'),(37,17,'SERVICE_MODE'),(38,17,'FIRST_RUN'),(39,17,'DEVELOPER_ID'),(40,17,'APPLICATION_ID'),(41,18,'M_SERVER_URL'),(42,18,'USER_AGENT'),(43,18,'SERVICE_MODE'),(44,18,'FIRST_RUN'),(45,18,'DEVELOPER_ID'),(46,18,'(.*)'),(47,18,'APPLICATION_ID'),(48,20,'NAME'),(49,21,'android.intent.extra.shortcut.NAME'),(50,21,'android.intent.extra.shortcut.ICON'),(51,21,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,1),(6,6,4),(7,7,1),(8,8,5),(9,9,1),(10,10,2),(11,11,1),(12,12,1),(13,13,6),(14,14,1),(15,15,7),(16,16,4),(17,17,8),(18,18,4),(19,19,9),(20,20,10),(21,21,11),(22,22,4),(23,23,4),(24,24,1),(25,25,12),(26,26,13),(27,27,2),(28,28,4),(29,29,4),(30,30,14),(31,31,9),(32,32,4),(33,33,18),(34,33,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,6,2),(4,7,3),(5,8,3),(6,9,1),(7,11,3),(8,12,4),(9,14,4),(10,16,2),(11,20,5),(12,21,5),(13,22,2),(14,23,2),(15,24,1),(16,29,2),(17,32,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,15,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.apperhand.secretsms'),(2,2,'com.apperhand.secretsms'),(3,4,'com.apperhand.secretsms'),(4,7,'com.AlDiApps.NightSeaLite'),(5,8,'com.AlDiApps.NightSeaLite'),(6,11,'com.macte.FifteenPuzzle.HarryPotter'),(7,17,'com.macte.FifteenPuzzle.HarryPotter'),(8,18,'com.macte.FifteenPuzzle.HarryPotter'),(9,20,'com.macte.FifteenPuzzle.HarryPotter');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,9,0),(4,11,0),(5,12,0),(6,19,0),(7,20,0),(8,22,0),(9,24,0),(10,25,0),(11,22,0),(12,26,0),(13,27,0),(14,35,0),(15,34,0),(16,40,0),(17,46,0),(18,47,0),(19,49,0),(20,53,0),(21,54,0),(22,56,0),(23,60,0),(24,69,0),(25,73,0),(26,78,0),(27,79,0),(28,80,0),(29,82,0),(30,83,0),(31,84,0),(32,85,0),(33,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,8,0,0),(3,9,1,0),(4,11,0,0),(5,14,1,0),(6,16,1,0),(7,17,0,0),(8,17,0,0),(9,19,1,0),(10,20,1,0),(11,21,0,0),(12,24,1,0),(13,26,1,0),(14,27,1,0),(15,27,1,0),(16,27,1,0),(17,29,0,0),(18,29,0,0),(19,30,1,0),(20,31,0,0),(21,34,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (26,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(32,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(24,'android.permission.BIND_WALLPAPER'),(27,'android.permission.CALL_PHONE'),(28,'android.permission.GET_ACCOUNTS'),(36,'android.permission.GET_TASKS'),(10,'android.permission.INTERNET'),(22,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.SET_WALLPAPER'),(19,'android.permission.VIBRATE'),(33,'android.permission.WAKE_LOCK'),(25,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(12,'com.fede.launcher.permission.READ_SETTINGS'),(31,'com.google.android.c2dm.permission.RECEIVE'),(35,'com.google.android.c2dm.permission.SEND'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(16,'com.motorola.launcher.permission.READ_SETTINGS'),(30,'com.ss.go.locker.theme.launcher.ex.audione.permission.C2D_MESSAGE'),(13,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (30,'s');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://mms-sms/conversations/',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://sms',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.AlDiApps.DawnandDusklite',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.NightSea',NULL,NULL,NULL),(13,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=pub:%22(.*)%22',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=pub:\"AlDiApps\"',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.AlDiApps.IntheCloudslite',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/developer?pub=(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(29,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,7,6),(7,10,7),(8,12,8),(9,13,9),(10,15,11),(11,18,13),(12,18,14),(13,22,17),(14,23,18),(15,25,19),(16,28,24),(17,32,26),(18,33,27),(19,35,28),(20,35,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,17),(5,1,4),(6,2,1),(7,1,5),(8,2,19),(9,1,6),(10,2,18),(11,1,7),(12,2,20),(13,1,8),(14,2,5),(15,1,9),(16,2,7),(17,1,10),(18,2,8),(19,1,11),(20,2,10),(21,1,12),(22,2,11),(23,1,13),(24,2,14),(25,1,14),(26,1,15),(27,1,17),(28,1,16),(29,3,1),(30,3,4),(31,3,5),(32,3,6),(33,3,7),(34,3,8),(35,3,9),(36,3,10),(37,3,11),(38,3,12),(39,3,14),(40,3,17),(41,3,16),(42,3,21),(43,3,23),(44,3,22),(45,4,1),(46,5,1),(47,4,2),(48,5,32),(49,4,3),(50,5,2),(51,4,4),(52,5,33),(53,4,5),(54,5,3),(55,4,6),(56,5,4),(57,4,7),(58,5,5),(59,4,8),(60,5,6),(61,4,9),(62,5,7),(63,4,10),(64,5,8),(65,4,11),(66,5,9),(67,6,34),(68,5,10),(69,4,12),(70,6,1),(71,4,13),(72,5,12),(73,6,2),(74,4,14),(75,5,13),(76,6,3),(77,4,15),(78,6,4),(79,5,14),(80,4,17),(81,5,15),(82,6,5),(83,4,16),(84,5,16),(85,6,6),(86,4,19),(87,6,7),(88,5,19),(89,4,18),(90,6,8),(91,5,18),(92,4,20),(93,6,9),(94,5,20),(95,4,22),(96,5,26),(97,6,10),(98,4,25),(99,5,29),(100,6,11),(101,4,27),(102,6,12),(103,4,26),(104,6,13),(105,4,29),(106,6,14),(107,4,28),(108,6,15),(109,4,31),(110,6,17),(111,4,30),(112,6,16),(113,6,20),(114,6,25),(115,6,29),(116,7,1),(117,7,32),(118,7,36),(119,7,7),(120,7,8),(121,7,10),(122,7,11),(123,7,14),(124,7,17),(125,7,19),(126,7,18),(127,7,20),(128,7,23),(129,7,22),(130,7,25),(131,7,26),(132,7,29),(133,7,28);
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

-- Dump completed on 2015-10-09  0:40:35
