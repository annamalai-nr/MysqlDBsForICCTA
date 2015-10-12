-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_665
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
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.BOOT_COMPLETED'),(27,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.MEDIA_EJECT'),(6,'android.intent.action.MEDIA_MOUNTED'),(26,'android.intent.action.PICK'),(23,'android.intent.action.VIEW'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(24,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(9,'android.service.wallpaper.WallpaperService'),(20,'com.airpush.android.PushServiceStart24831'),(8,'com.airpush.android.PushServiceStart26644'),(21,'com.airpush.android.PushServiceStart40196'),(12,'com.airpush.android.PushServiceStart55912'),(3,'com.airpush.android.PushServiceStart56632'),(22,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.vending.INSTALL_REFERRER'),(25,'com.appbrain.CHECK'),(13,'com.applovin.sdk.AppLovinService'),(16,'com.coolphotoframes.instaframe'),(17,'com.google.android.c2dm.intent.RECEIVE'),(18,'com.google.android.c2dm.intent.REGISTRATION'),(28,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(15,'com.inoxpush.adnetwork.PushServiceStart55555'),(29,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(2,'com.jiubang.goscreenlock.theme'),(10,'com.senddroid.AdServicecom.driftwood.wallpaper.easternglownight.free'),(14,'com.senddroid.AdServiceorg.andhat.iRadio'),(19,'my.trafficconductor.intent');
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
INSERT INTO `Applications` VALUES (1,'com.macte.JigsawPuzzle.Fantasy',15),(2,'com.free_apps.golocker_iphone4_niceass',1),(3,'com.driftwood.wallpaper.easternglownight.free',14),(4,'org.andhat.iRadio',20),(5,'com.coolphotoframes.instaframe',9),(6,'com.ozitech.trafficcontrolfree',23),(7,'org.game.CoolSoccerPhysics',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE'),(6,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.macte.JigsawPuzzle.Fantasy.JigsawPuzzle'),(2,2,'com.free_apps.golocker_iphone4_niceass.GOLockerInstallDialog'),(3,1,'com.macte.JigsawPuzzle.Fantasy.GameView'),(4,2,'com.airpush.android.PushAds'),(5,1,'com.mobfox.sdk.InAppWebView'),(6,2,'com.free_apps.golocker_iphone4_niceass.srv'),(7,1,'com.macte.JigsawPuzzle.Fantasy.SettingsList'),(8,2,'com.free_apps.golocker_iphone4_niceass.GoDownloadServiceervice'),(9,2,'com.airpush.android.PushService'),(10,1,'com.macte.JigsawPuzzle.Fantasy.GalleryLevel'),(11,1,'com.macte.JigsawPuzzle.Fantasy.ProVersion'),(12,2,'com.apperhand.device.android.AndroidSDKProvider'),(13,2,'com.free_apps.golocker_iphone4_niceass.rec'),(14,2,'com.airpush.android.UserDetailsReceiver'),(15,1,'com.airpush.android.PushAds'),(16,2,'com.airpush.android.MessageReceiver'),(17,1,'com.macte.JigsawPuzzle.Fantasy.DownloadService'),(18,3,'com.driftwood.wallpaper.easternglownight.free.LeadBoltAd'),(19,2,'com.airpush.android.DeliveryReceiver'),(20,2,'com.free_apps.golocker_iphone4_niceass.bReceiver'),(21,1,'com.apperhand.device.android.AndroidSDKProvider'),(22,3,'com.driftwood.wallpaper.easternglownight.free.OpenActivity'),(23,1,'com.airpush.android.PushService'),(24,2,'com.Leadbolt.AdNotification'),(25,3,'com.appbrain.AppBrainActivity'),(26,1,'com.airpush.android.UserDetailsReceiver'),(27,3,'com.driftwood.wallpaper.easternglownight.free.WallpaperSettings'),(28,1,'com.airpush.android.MessageReceiver'),(29,3,'com.driftwood.wallpaper.easternglownight.free.Wallpaper'),(30,1,'com.airpush.android.DeliveryReceiver'),(31,1,'com.macte.JigsawPuzzle.Fantasy.BootReceiver'),(32,3,'com.apperhand.device.android.AndroidSDKProvider'),(33,3,'com.senddroid.AdService'),(34,3,'com.appbrain.AppBrainService'),(35,3,'com.driftwood.wallpaper.easternglownight.free.BootReceiver'),(36,3,'com.appbrain.ReferrerReceiver'),(37,4,'org.andhat.iRadio.iRadio'),(38,4,'org.andhat.iRadio.AddRadio'),(39,4,'org.andhat.iRadio.ChangeBG'),(40,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(41,4,'com.millennialmedia.android.VideoPlayer'),(42,5,'com.coolphotoframes.instaframe.LaunchScreen'),(43,4,'com.airpush.android.PushAds'),(44,4,'com.airpush.android.PushService'),(45,5,'com.coolphotoframes.instaframe.FrameScreen'),(46,5,'com.coolphotoframes.instaframe.RateActivity'),(47,4,'com.apperhand.device.android.AndroidSDKProvider'),(48,5,'com.coolphotoframes.instaframe.HelpScreen'),(49,4,'com.applovin.sdk.AppLovinService'),(50,5,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(51,5,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(52,4,'com.senddroid.AdService'),(53,5,'com.inox.referrer.SendDataService'),(54,5,'com.inoxpush.adnetwork.PushAdService'),(55,4,'com.airpush.android.UserDetailsReceiver'),(56,4,'com.airpush.android.MessageReceiver'),(57,5,'com.inoxpush.downloadticker.DownloadTickerService'),(58,4,'com.airpush.android.DeliveryReceiver'),(59,5,'com.apperhand.device.android.AndroidSDKProvider'),(60,4,'org.andhat.iRadio.BootReceiver'),(61,5,'com.applovin.sdk.AppLovinService'),(62,4,'com.Leadbolt.AdNotification'),(63,5,'com.senddroid.AdService'),(64,5,'com.inox.referrer.Receiver'),(65,5,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(66,5,'com.inoxpush.adnetwork.AdMessageReceiver'),(67,5,'com.inoxpush.adnetwork.ClickAdReceiver'),(68,5,'com.applovin.sdk.AppLovinNotificationReceiver'),(69,5,'com.applovin.sdk.AppLovinPushReceiver'),(70,5,'com.coolphotoframes.instaframe.BootReceiver'),(71,6,'com.ozitech.trafficcontrolfree.MainGameActivity'),(72,6,'com.google.ads.AdActivity'),(73,6,'com.flurry.android.CatalogActivity'),(74,6,'com.airpush.android.PushAds'),(75,6,'com.ozitech.trafficcontrolfree.GamePlayActivity'),(76,6,'com.openfeint.internal.ui.IntroFlow'),(77,6,'com.openfeint.api.ui.Dashboard'),(78,6,'com.openfeint.internal.ui.Settings'),(79,6,'com.openfeint.internal.ui.NativeBrowser'),(80,6,'com.placeplay.ads.implementation.browser.PAAdBrowser'),(81,6,'com.ozitech.trafficcontrolfree.FeedBack'),(82,6,'com.airpush.android.PushService'),(83,6,'com.apperhand.device.android.AndroidSDKProvider'),(84,6,'com.Leadbolt.AdNotification'),(85,6,'com.airpush.android.UserDetailsReceiver'),(86,6,'com.airpush.android.MessageReceiver'),(87,6,'com.airpush.android.DeliveryReceiver'),(88,6,'com.ozitech.trafficcontrolfree.BootReceiver'),(89,7,'org.game.CoolSoccerPhysics.BasketBall'),(90,7,'com.airpush.android.PushAds'),(91,7,'com.apperhand.device.android.AndroidSDKProvider'),(92,7,'com.airpush.android.PushService'),(93,7,'org.game.CoolSoccerPhysics.BootReceiver'),(94,7,'com.Leadbolt.AdNotification'),(95,7,'com.airpush.android.UserDetailsReceiver'),(96,7,'com.airpush.android.MessageReceiver'),(97,7,'com.airpush.android.DeliveryReceiver'),(98,3,'com.appbrain.a.u'),(99,3,'com.senddroid.SendDroid'),(100,3,'com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$3'),(101,3,'com.apperhand.device.android.a.d'),(102,3,'com.apperhand.device.android.a.b'),(103,3,'com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$2'),(104,3,'com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$1'),(105,3,'com.appbrain.a.a'),(106,3,'com.Leadbolt.AdController'),(107,5,'com.apperhand.device.android.a.b'),(108,5,'com.apperhand.device.android.a.d'),(109,5,'com.senddroid.SendDroid'),(110,5,'com.inox.referrer.StartAd'),(111,5,'com.pontiflex.mobile.webview.sdk.AdManager'),(112,5,'com.inoxpush.downloadticker.DownloadTicker');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,36,'referrer'),(2,32,'FIRST_RUN'),(3,34,'key'),(4,32,'USER_AGENT'),(5,25,'activity'),(6,32,'M_SERVER_URL'),(7,32,'APPLICATION_ID'),(8,32,'SERVICE_MODE'),(9,36,'(.*)'),(10,25,'maybe'),(11,32,'DEVELOPER_ID'),(12,34,'event'),(13,64,'referrer'),(14,66,'appId'),(15,69,'applovin.sdk.autoupdate_disabled'),(16,61,'applovin.sdk.autoupdate_disabled'),(17,68,'applovin.sdk.autoupdate_disabled'),(18,59,'APPLICATION_ID'),(19,65,'appId'),(20,69,'applovin.sdk.key'),(21,61,'applovin.sdk.key'),(22,68,'applovin.sdk.key'),(23,67,'marketlink'),(24,67,'adType'),(25,59,'M_SERVER_URL'),(26,54,'adType'),(27,59,'FIRST_RUN'),(28,59,'USER_AGENT'),(29,67,'appId'),(30,54,'type'),(31,69,'applovin.sdk.verbose_logging'),(32,61,'applovin.sdk.verbose_logging'),(33,68,'applovin.sdk.verbose_logging'),(34,46,'link'),(35,59,'SERVICE_MODE'),(36,59,'DEVELOPER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,30,'r',0,NULL,NULL),(30,29,'s',1,27,NULL),(31,31,'r',1,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',1,34,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',1,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',0,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',1,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',0,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,96,'r',0,NULL,NULL),(97,97,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,34),(2,2,33),(3,3,27),(4,4,30),(5,5,32),(6,6,33),(7,7,22),(8,8,32),(9,9,32),(10,10,32),(11,11,34),(12,11,36),(13,11,25),(14,11,27),(15,12,32),(16,13,27),(17,14,27),(18,15,27),(19,16,27),(20,17,36),(21,17,30),(22,18,33),(23,19,32),(24,20,25),(25,21,46),(26,22,59),(27,23,59),(28,24,67),(29,25,45),(30,26,59),(31,27,45),(32,28,63),(33,29,45),(34,30,59),(35,31,42),(36,32,42),(37,32,45),(38,33,45),(39,34,45),(40,35,42),(41,36,63),(42,37,42),(43,38,65),(44,39,64),(45,40,59),(46,41,67),(47,42,42),(48,43,70),(49,44,66),(50,45,59),(51,46,42),(52,47,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,98,'<com.appbrain.a.u: void a(android.content.Context,java.lang.String,com.appbrain.e.t)>',9,'s',NULL),(2,99,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(3,100,'<com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$3: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(4,32,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(5,101,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(6,99,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(7,22,'<com.driftwood.wallpaper.easternglownight.free.OpenActivity: void onCreate(android.os.Bundle)>',9,'a',NULL),(8,102,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(9,102,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(10,102,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(11,98,'<com.appbrain.a.u: void a(android.content.Context)>',4,'s',NULL),(12,101,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(13,103,'<com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$2: void onClick(android.view.View)>',6,'a',NULL),(14,104,'<com.driftwood.wallpaper.easternglownight.free.WallpaperSettings$1: void onClick(android.view.View)>',6,'a',NULL),(15,27,'<com.driftwood.wallpaper.easternglownight.free.WallpaperSettings: void showContent(android.view.View)>',6,'a',NULL),(16,105,'<com.appbrain.a.a: void a(android.content.Context,boolean,com.appbrain.a.b)>',9,'a',NULL),(17,106,'<com.Leadbolt.AdController: void displayIcon()>',56,'r',NULL),(18,99,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(19,101,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(20,105,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.e.f,com.appbrain.a.b)>',10,'a',NULL),(21,46,'<com.coolphotoframes.instaframe.RateActivity: void startRating()>',7,'a',NULL),(22,107,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(23,107,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(24,67,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(25,45,'<com.coolphotoframes.instaframe.FrameScreen: void startHelpActivity(android.view.View)>',4,'a',NULL),(26,108,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(27,45,'<com.coolphotoframes.instaframe.FrameScreen: void chooseImage(int)>',6,'a',NULL),(28,109,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(29,110,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL),(30,107,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(31,111,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(32,42,'<com.coolphotoframes.instaframe.LaunchScreen: void startFrame(int)>',7,'a',NULL),(33,45,'<com.coolphotoframes.instaframe.FrameScreen: float rot(android.content.Context,android.net.Uri)>',8,'p',0),(34,45,'<com.coolphotoframes.instaframe.FrameScreen: void shareImage()>',48,'a',NULL),(35,111,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(36,109,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(37,111,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(38,65,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(39,64,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(40,108,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(41,67,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(42,42,'<com.coolphotoframes.instaframe.LaunchScreen: void onCreate(android.os.Bundle)>',11,'a',NULL),(43,59,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(44,66,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(45,108,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(46,112,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(47,109,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,22),(2,3,23),(3,5,24),(4,6,25),(5,7,23),(6,8,23),(7,9,23),(8,12,22),(9,13,22),(10,14,22),(11,15,22),(12,18,23),(13,19,23),(14,20,23),(15,22,22),(16,23,26),(17,24,22),(18,27,27),(19,28,27),(20,29,27),(21,30,27),(22,31,27),(23,32,27),(24,33,27),(25,34,27),(26,36,22),(27,38,28),(28,40,29),(29,41,28),(30,44,28);
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
INSERT INTO `IClasses` VALUES (1,1,'com/appbrain/AppBrainService'),(2,4,'com/apperhand/device/android/AndroidSDKProvider'),(3,6,'com/appbrain/AppBrainService'),(4,10,'com/appbrain/AppBrainActivity'),(5,11,'com/appbrain/AppBrainActivity'),(6,16,'com/appbrain/AppBrainActivity'),(7,17,'com/appbrain/AppBrainActivity'),(8,21,'com/coolphotoframes/instaframe/HelpScreen'),(9,25,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(10,26,'com/coolphotoframes/instaframe/FrameScreen'),(11,35,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(12,37,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(13,39,'com/inox/referrer/SendDataService'),(14,42,'com/coolphotoframes/instaframe/HelpScreen'),(15,43,'com/apperhand/device/android/AndroidSDKProvider'),(16,45,'com/inoxpush/downloadticker/DownloadTickerService');
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
INSERT INTO `IData` VALUES (1,3,1),(2,7,9),(3,8,10),(4,9,11),(5,18,13),(6,19,14),(7,20,17),(8,23,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'event'),(2,1,'key'),(3,2,'duplicate'),(4,2,'android.intent.extra.shortcut.NAME'),(5,2,'android.intent.extra.shortcut.ICON'),(6,2,'android.intent.extra.shortcut.INTENT'),(7,4,'M_SERVER_URL'),(8,4,'USER_AGENT'),(9,4,'SERVICE_MODE'),(10,4,'FIRST_RUN'),(11,4,'DEVELOPER_ID'),(12,4,'APPLICATION_ID'),(13,10,'maybe'),(14,10,'hash'),(15,10,'hash_last'),(16,10,'activity'),(17,11,'maybe'),(18,11,'activity'),(19,12,'android.intent.extra.shortcut.NAME'),(20,12,'android.intent.extra.shortcut.ICON_RESOURCE'),(21,12,'android.intent.extra.shortcut.INTENT'),(22,13,'android.intent.extra.shortcut.NAME'),(23,13,'android.intent.extra.shortcut.ICON'),(24,13,'android.intent.extra.shortcut.ICON_RESOURCE'),(25,13,'android.intent.extra.shortcut.INTENT'),(26,14,'android.intent.extra.shortcut.NAME'),(27,14,'android.intent.extra.shortcut.ICON'),(28,14,'android.intent.extra.shortcut.INTENT'),(29,15,'android.intent.extra.shortcut.NAME'),(30,15,'android.intent.extra.shortcut.ICON'),(31,15,'android.intent.extra.shortcut.INTENT'),(32,16,'src'),(33,16,'activity'),(34,17,'hash'),(35,17,'hash_last'),(36,17,'src'),(37,17,'activity'),(38,22,'android.intent.extra.shortcut.NAME'),(39,22,'android.intent.extra.shortcut.ICON'),(40,22,'android.intent.extra.shortcut.INTENT'),(41,24,'duplicate'),(42,24,'android.intent.extra.shortcut.NAME'),(43,24,'android.intent.extra.shortcut.ICON'),(44,24,'android.intent.extra.shortcut.INTENT'),(45,25,'singleoffer'),(46,25,'offerCount'),(47,26,'total'),(48,26,'layout_id'),(49,27,'android.intent.extra.INTENT'),(50,28,'android.intent.extra.INTENT'),(51,29,'android.intent.extra.TITLE'),(52,29,'android.intent.extra.INTENT'),(53,30,'android.intent.extra.INTENT'),(54,31,'android.intent.extra.TITLE'),(55,31,'android.intent.extra.INTENT'),(56,32,'android.intent.extra.INTENT'),(57,33,'android.intent.extra.TITLE'),(58,33,'android.intent.extra.INTENT'),(59,34,'android.intent.extra.TITLE'),(60,34,'android.intent.extra.INTENT'),(61,36,'duplicate'),(62,36,'android.intent.extra.shortcut.NAME'),(63,36,'android.intent.extra.shortcut.ICON'),(64,36,'android.intent.extra.shortcut.INTENT'),(65,37,'offerCount'),(66,38,'NULL-CONSTANT'),(67,38,'type'),(68,40,'NULL-CONSTANT'),(69,40,'type'),(70,41,'NULL-CONSTANT'),(71,41,'type'),(72,43,'M_SERVER_URL'),(73,43,'USER_AGENT'),(74,43,'SERVICE_MODE'),(75,43,'FIRST_RUN'),(76,43,'DEVELOPER_ID'),(77,43,'APPLICATION_ID'),(78,44,'NULL-CONSTANT'),(79,44,'type');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,3),(7,7,1),(8,8,5),(9,8,6),(10,8,4),(11,9,1),(12,10,7),(13,11,1),(14,12,8),(15,13,9),(16,14,7),(17,15,10),(18,16,7),(19,17,11),(20,18,1),(21,19,1),(22,20,1),(23,21,1),(24,22,12),(25,23,13),(26,24,14),(27,25,15),(28,26,15),(29,27,7),(30,28,13),(31,29,7),(32,30,7),(33,31,16),(34,32,11),(35,33,17),(36,34,18),(37,35,7),(38,36,1),(39,37,19),(40,38,20),(41,39,7),(42,40,1),(43,41,21),(44,42,7),(45,43,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(6,7,3),(7,9,2),(8,10,4),(9,11,2),(10,14,4),(11,16,4),(12,18,1),(13,19,5),(14,20,5),(15,21,1),(16,27,4),(17,30,4),(18,33,6),(19,34,6),(20,35,4),(21,36,1),(22,37,5),(23,39,4),(24,40,1),(25,43,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.driftwood.wallpaper.easternglownight.free'),(2,4,'com.driftwood.wallpaper.easternglownight.free'),(3,6,'com.driftwood.wallpaper.easternglownight.free'),(4,10,'com.driftwood.wallpaper.easternglownight.free'),(5,11,'com.driftwood.wallpaper.easternglownight.free'),(6,16,'com.driftwood.wallpaper.easternglownight.free'),(7,17,'com.driftwood.wallpaper.easternglownight.free'),(8,21,'com.coolphotoframes.instaframe'),(9,25,'com.coolphotoframes.instaframe'),(10,26,'com.coolphotoframes.instaframe'),(11,35,'com.coolphotoframes.instaframe'),(12,37,'com.coolphotoframes.instaframe'),(13,39,'com.coolphotoframes.instaframe'),(14,42,'com.coolphotoframes.instaframe'),(15,43,'com.coolphotoframes.instaframe'),(16,45,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,2,0),(4,3,0),(5,7,0),(6,9,0),(7,11,0),(8,17,0),(9,18,0),(10,20,0),(11,22,0),(12,23,0),(13,30,0),(14,31,0),(15,33,0),(16,35,0),(17,36,0),(18,37,0),(19,38,0),(20,39,0),(21,42,0),(22,44,0),(23,49,0),(24,52,0),(25,54,0),(26,54,0),(27,60,0),(28,61,0),(29,60,0),(30,60,0),(31,63,0),(32,64,0),(33,69,0),(34,69,0),(35,70,0),(36,71,0),(37,73,0),(38,82,0),(39,88,0),(40,89,0),(41,92,0),(42,93,0),(43,93,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,7,1,0),(6,11,0,0),(7,13,1,0),(8,14,1,0),(9,15,1,0),(10,16,0,0),(11,16,0,0),(12,17,1,0),(13,17,1,0),(14,17,1,0),(15,19,1,0),(16,20,0,0),(17,20,0,0),(18,21,1,0),(19,21,1,0),(20,24,1,0),(21,25,0,0),(22,26,1,0),(23,27,1,0),(24,29,1,0),(25,31,0,0),(26,32,0,0),(27,34,1,0),(28,34,1,0),(29,34,1,0),(30,34,1,0),(31,34,1,0),(32,34,1,0),(33,34,1,0),(34,34,1,0),(35,35,0,0),(36,36,1,0),(37,37,0,0),(38,38,1,0),(39,39,0,0),(40,41,1,0),(41,41,1,0),(42,42,0,0),(43,43,0,0),(44,44,1,0),(45,46,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,2,2,NULL),(2,27,2,2,NULL),(3,28,2,2,NULL),(4,29,2,2,NULL),(5,30,2,2,NULL),(6,31,2,2,NULL),(7,32,2,2,NULL),(8,33,2,2,NULL),(9,34,2,2,NULL),(10,18,2,2,NULL),(11,19,2,2,NULL),(12,38,2,2,NULL),(13,44,2,2,NULL),(14,20,2,2,NULL),(15,40,2,2,NULL),(16,41,2,2,NULL),(17,5,9,2,NULL),(18,27,9,2,NULL),(19,28,9,2,NULL),(20,29,9,2,NULL),(21,30,9,2,NULL),(22,31,9,2,NULL),(23,32,9,2,NULL),(24,33,9,2,NULL),(25,34,9,2,NULL),(26,18,9,2,NULL),(27,19,9,2,NULL),(28,38,9,2,NULL),(29,44,9,2,NULL),(30,20,9,2,NULL),(31,40,9,2,NULL),(32,41,9,2,NULL),(33,5,20,2,NULL),(34,27,20,2,NULL),(35,28,20,2,NULL),(36,29,20,2,NULL),(37,30,20,2,NULL),(38,31,20,2,NULL),(39,32,20,2,NULL),(40,33,20,2,NULL),(41,34,20,2,NULL),(42,18,20,2,NULL),(43,19,20,2,NULL),(44,38,20,2,NULL),(45,44,20,2,NULL),(46,20,20,2,NULL),(47,40,20,2,NULL),(48,41,20,2,NULL),(49,5,18,2,NULL),(50,27,18,2,NULL),(51,28,18,2,NULL),(52,29,18,2,NULL),(53,30,18,2,NULL),(54,31,18,2,NULL),(55,32,18,2,NULL),(56,33,18,2,NULL),(57,34,18,2,NULL),(58,18,18,2,NULL),(59,19,18,2,NULL),(60,38,18,2,NULL),(61,44,18,2,NULL),(62,20,18,2,NULL),(63,40,18,2,NULL),(64,41,18,2,NULL),(65,5,1,2,NULL),(66,5,3,2,NULL),(67,5,7,2,NULL),(68,5,11,2,NULL),(69,5,17,2,NULL),(70,5,23,2,NULL),(71,5,31,2,NULL),(72,5,30,2,NULL),(73,5,33,2,NULL),(74,5,35,2,NULL),(75,5,36,2,NULL),(76,5,37,2,NULL),(77,5,38,2,NULL),(78,5,39,2,NULL),(79,5,44,2,NULL),(80,5,49,2,NULL),(81,5,52,2,NULL),(82,5,60,2,NULL),(83,5,42,2,NULL),(84,27,22,2,NULL),(85,28,22,2,NULL),(86,29,22,2,NULL),(87,30,22,2,NULL),(88,31,22,2,NULL),(89,32,22,2,NULL),(90,33,22,2,NULL),(91,34,22,2,NULL),(92,18,22,2,NULL),(93,19,22,2,NULL),(94,5,54,2,NULL),(95,5,61,2,NULL),(96,5,63,2,NULL),(97,5,64,2,NULL),(98,38,22,2,NULL),(99,44,22,2,NULL),(100,20,22,2,NULL),(101,40,22,2,NULL),(102,41,22,2,NULL),(103,5,69,2,NULL),(104,5,70,2,NULL),(105,5,71,2,NULL),(106,5,73,2,NULL),(107,5,82,2,NULL),(108,5,88,2,NULL),(109,5,89,2,NULL),(110,5,92,2,NULL),(111,5,93,2,NULL),(112,27,30,2,NULL),(113,28,30,2,NULL),(114,29,30,2,NULL),(115,30,30,2,NULL),(116,31,30,2,NULL),(117,32,30,2,NULL),(118,33,30,2,NULL),(119,34,30,2,NULL),(120,18,30,2,NULL),(121,19,30,2,NULL),(122,38,30,2,NULL),(123,44,30,2,NULL),(124,20,30,2,NULL),(125,40,30,2,NULL),(126,41,30,2,NULL),(127,4,12,2,NULL),(128,4,21,2,NULL),(129,4,32,2,NULL),(130,4,47,2,NULL),(131,4,59,2,NULL),(132,4,83,2,NULL),(133,4,91,2,NULL),(134,27,33,2,NULL),(135,28,33,2,NULL),(136,29,33,2,NULL),(137,30,33,2,NULL),(138,31,33,2,NULL),(139,32,33,2,NULL),(140,33,33,2,NULL),(141,34,33,2,NULL),(142,18,33,2,NULL),(143,19,33,2,NULL),(144,38,33,2,NULL),(145,44,33,2,NULL),(146,20,33,2,NULL),(147,40,33,2,NULL),(148,41,33,2,NULL),(149,27,35,2,NULL),(150,28,35,2,NULL),(151,29,35,2,NULL),(152,30,35,2,NULL),(153,31,35,2,NULL),(154,32,35,2,NULL),(155,33,35,2,NULL),(156,34,35,2,NULL),(157,18,35,2,NULL),(158,19,35,2,NULL),(159,38,35,2,NULL),(160,44,35,2,NULL),(161,20,35,2,NULL),(162,40,35,2,NULL),(163,41,35,2,NULL),(164,27,36,2,NULL),(165,28,36,2,NULL),(166,29,36,2,NULL),(167,30,36,2,NULL),(168,31,36,2,NULL),(169,32,36,2,NULL),(170,33,36,2,NULL),(171,34,36,2,NULL),(172,18,36,2,NULL),(173,19,36,2,NULL),(174,38,36,2,NULL),(175,44,36,2,NULL),(176,20,36,2,NULL),(177,40,36,2,NULL),(178,41,36,2,NULL),(179,26,45,2,NULL),(180,42,48,2,NULL),(181,27,42,2,NULL),(182,28,42,2,NULL),(183,29,42,2,NULL),(184,30,42,2,NULL),(185,31,42,2,NULL),(186,32,42,2,NULL),(187,33,42,2,NULL),(188,34,42,2,NULL),(189,18,42,2,NULL),(190,19,42,2,NULL),(191,38,42,2,NULL),(192,44,42,2,NULL),(193,20,42,2,NULL),(194,40,42,2,NULL),(195,41,42,2,NULL),(196,21,48,2,NULL),(197,27,1,2,NULL),(198,28,1,2,NULL),(199,29,1,2,NULL),(200,30,1,2,NULL),(201,31,1,2,NULL),(202,32,1,2,NULL),(203,33,1,2,NULL),(204,34,1,2,NULL),(205,27,3,2,NULL),(206,28,3,2,NULL),(207,29,3,2,NULL),(208,30,3,2,NULL),(209,31,3,2,NULL),(210,32,3,2,NULL),(211,33,3,2,NULL),(212,34,3,2,NULL),(213,27,7,2,NULL),(214,28,7,2,NULL),(215,29,7,2,NULL),(216,30,7,2,NULL),(217,31,7,2,NULL),(218,32,7,2,NULL),(219,33,7,2,NULL),(220,34,7,2,NULL),(221,27,11,2,NULL),(222,28,11,2,NULL),(223,29,11,2,NULL),(224,30,11,2,NULL),(225,31,11,2,NULL),(226,32,11,2,NULL),(227,33,11,2,NULL),(228,34,11,2,NULL),(229,27,17,2,NULL),(230,28,17,2,NULL),(231,29,17,2,NULL),(232,30,17,2,NULL),(233,31,17,2,NULL),(234,32,17,2,NULL),(235,33,17,2,NULL),(236,34,17,2,NULL),(237,27,23,2,NULL),(238,28,23,2,NULL),(239,29,23,2,NULL),(240,30,23,2,NULL),(241,31,23,2,NULL),(242,32,23,2,NULL),(243,33,23,2,NULL),(244,34,23,2,NULL),(245,27,31,2,NULL),(246,28,31,2,NULL),(247,29,31,2,NULL),(248,30,31,2,NULL),(249,31,31,2,NULL),(250,32,31,2,NULL),(251,33,31,2,NULL),(252,34,31,2,NULL),(253,27,37,2,NULL),(254,28,37,2,NULL),(255,29,37,2,NULL),(256,30,37,2,NULL),(257,31,37,2,NULL),(258,32,37,2,NULL),(259,33,37,2,NULL),(260,34,37,2,NULL),(261,27,38,2,NULL),(262,28,38,2,NULL),(263,29,38,2,NULL),(264,30,38,2,NULL),(265,31,38,2,NULL),(266,32,38,2,NULL),(267,33,38,2,NULL),(268,34,38,2,NULL),(269,27,39,2,NULL),(270,28,39,2,NULL),(271,29,39,2,NULL),(272,30,39,2,NULL),(273,31,39,2,NULL),(274,32,39,2,NULL),(275,33,39,2,NULL),(276,34,39,2,NULL),(277,27,44,2,NULL),(278,28,44,2,NULL),(279,29,44,2,NULL),(280,30,44,2,NULL),(281,31,44,2,NULL),(282,32,44,2,NULL),(283,33,44,2,NULL),(284,34,44,2,NULL),(285,27,49,2,NULL),(286,28,49,2,NULL),(287,29,49,2,NULL),(288,30,49,2,NULL),(289,31,49,2,NULL),(290,32,49,2,NULL),(291,33,49,2,NULL),(292,34,49,2,NULL),(293,27,52,2,NULL),(294,28,52,2,NULL),(295,29,52,2,NULL),(296,30,52,2,NULL),(297,31,52,2,NULL),(298,32,52,2,NULL),(299,33,52,2,NULL),(300,34,52,2,NULL),(301,27,60,2,NULL),(302,28,60,2,NULL),(303,29,60,2,NULL),(304,30,60,2,NULL),(305,31,60,2,NULL),(306,32,60,2,NULL),(307,33,60,2,NULL),(308,34,60,2,NULL),(309,27,54,2,NULL),(310,28,54,2,NULL),(311,29,54,2,NULL),(312,30,54,2,NULL),(313,31,54,2,NULL),(314,32,54,2,NULL),(315,33,54,2,NULL),(316,34,54,2,NULL),(317,27,61,2,NULL),(318,28,61,2,NULL),(319,29,61,2,NULL),(320,30,61,2,NULL),(321,31,61,2,NULL),(322,32,61,2,NULL),(323,33,61,2,NULL),(324,34,61,2,NULL),(325,27,63,2,NULL),(326,28,63,2,NULL),(327,29,63,2,NULL),(328,30,63,2,NULL),(329,31,63,2,NULL),(330,32,63,2,NULL),(331,33,63,2,NULL),(332,34,63,2,NULL),(333,27,64,2,NULL),(334,28,64,2,NULL),(335,29,64,2,NULL),(336,30,64,2,NULL),(337,31,64,2,NULL),(338,32,64,2,NULL),(339,33,64,2,NULL),(340,34,64,2,NULL),(341,27,69,2,NULL),(342,28,69,2,NULL),(343,29,69,2,NULL),(344,30,69,2,NULL),(345,31,69,2,NULL),(346,32,69,2,NULL),(347,33,69,2,NULL),(348,34,69,2,NULL),(349,27,70,2,NULL),(350,28,70,2,NULL),(351,29,70,2,NULL),(352,30,70,2,NULL),(353,31,70,2,NULL),(354,32,70,2,NULL),(355,33,70,2,NULL),(356,34,70,2,NULL),(357,27,71,2,NULL),(358,28,71,2,NULL),(359,29,71,2,NULL),(360,30,71,2,NULL),(361,31,71,2,NULL),(362,32,71,2,NULL),(363,33,71,2,NULL),(364,34,71,2,NULL),(365,27,73,2,NULL),(366,28,73,2,NULL),(367,29,73,2,NULL),(368,30,73,2,NULL),(369,31,73,2,NULL),(370,32,73,2,NULL),(371,33,73,2,NULL),(372,34,73,2,NULL),(373,27,82,2,NULL),(374,28,82,2,NULL),(375,29,82,2,NULL),(376,30,82,2,NULL),(377,31,82,2,NULL),(378,32,82,2,NULL),(379,33,82,2,NULL),(380,34,82,2,NULL),(381,27,88,2,NULL),(382,28,88,2,NULL),(383,29,88,2,NULL),(384,30,88,2,NULL),(385,31,88,2,NULL),(386,32,88,2,NULL),(387,33,88,2,NULL),(388,34,88,2,NULL),(389,27,89,2,NULL),(390,28,89,2,NULL),(391,29,89,2,NULL),(392,30,89,2,NULL),(393,31,89,2,NULL),(394,32,89,2,NULL),(395,33,89,2,NULL),(396,34,89,2,NULL),(397,27,92,2,NULL),(398,28,92,2,NULL),(399,29,92,2,NULL),(400,30,92,2,NULL),(401,31,92,2,NULL),(402,32,92,2,NULL),(403,33,92,2,NULL),(404,34,92,2,NULL),(405,27,93,2,NULL),(406,28,93,2,NULL),(407,29,93,2,NULL),(408,30,93,2,NULL),(409,31,93,2,NULL),(410,32,93,2,NULL),(411,33,93,2,NULL),(412,34,93,2,NULL),(413,18,1,2,NULL),(414,19,1,2,NULL),(415,18,3,2,NULL),(416,19,3,2,NULL),(417,18,7,2,NULL),(418,19,7,2,NULL),(419,18,11,2,NULL),(420,19,11,2,NULL),(421,18,17,2,NULL),(422,19,17,2,NULL),(423,18,23,2,NULL),(424,19,23,2,NULL),(425,18,31,2,NULL),(426,19,31,2,NULL),(427,18,37,2,NULL),(428,19,37,2,NULL),(429,18,38,2,NULL),(430,19,38,2,NULL),(431,18,39,2,NULL),(432,19,39,2,NULL),(433,18,44,2,NULL),(434,19,44,2,NULL),(435,18,49,2,NULL),(436,19,49,2,NULL),(437,18,52,2,NULL),(438,19,52,2,NULL),(439,18,60,2,NULL),(440,19,60,2,NULL),(441,18,54,2,NULL),(442,19,54,2,NULL),(443,18,61,2,NULL),(444,19,61,2,NULL),(445,18,63,2,NULL),(446,19,63,2,NULL),(447,18,64,2,NULL),(448,19,64,2,NULL),(449,18,69,2,NULL),(450,19,69,2,NULL),(451,18,70,2,NULL),(452,19,70,2,NULL),(453,18,71,2,NULL),(454,19,71,2,NULL),(455,18,73,2,NULL),(456,19,73,2,NULL),(457,18,82,2,NULL),(458,19,82,2,NULL),(459,18,88,2,NULL),(460,19,88,2,NULL),(461,18,89,2,NULL),(462,19,89,2,NULL),(463,18,92,2,NULL),(464,19,92,2,NULL),(465,18,93,2,NULL),(466,19,93,2,NULL),(467,38,54,2,NULL),(468,44,54,2,NULL),(469,20,54,2,NULL),(470,40,54,2,NULL),(471,41,54,2,NULL),(472,43,12,2,NULL),(473,43,21,2,NULL),(474,43,32,2,NULL),(475,43,47,2,NULL),(476,43,59,2,NULL),(477,43,83,2,NULL),(478,43,91,2,NULL),(479,38,61,2,NULL),(480,44,61,2,NULL),(481,20,61,2,NULL),(482,40,61,2,NULL),(483,41,61,2,NULL),(484,38,63,2,NULL),(485,44,63,2,NULL),(486,20,63,2,NULL),(487,40,63,2,NULL),(488,41,63,2,NULL),(489,39,53,2,NULL),(490,38,64,2,NULL),(491,44,64,2,NULL),(492,20,64,2,NULL),(493,40,64,2,NULL),(494,41,64,2,NULL),(495,38,1,2,NULL),(496,38,3,2,NULL),(497,38,7,2,NULL),(498,38,11,2,NULL),(499,38,17,2,NULL),(500,38,23,2,NULL),(501,38,31,2,NULL),(502,38,37,2,NULL),(503,38,38,2,NULL),(504,38,39,2,NULL),(505,38,44,2,NULL),(506,38,49,2,NULL),(507,38,52,2,NULL),(508,38,60,2,NULL),(509,38,69,2,NULL),(510,38,70,2,NULL),(511,38,71,2,NULL),(512,38,73,2,NULL),(513,38,82,2,NULL),(514,38,88,2,NULL),(515,38,89,2,NULL),(516,38,92,2,NULL),(517,38,93,2,NULL),(518,44,1,2,NULL),(519,44,3,2,NULL),(520,44,7,2,NULL),(521,44,11,2,NULL),(522,44,17,2,NULL),(523,44,23,2,NULL),(524,44,31,2,NULL),(525,44,37,2,NULL),(526,44,38,2,NULL),(527,44,39,2,NULL),(528,44,44,2,NULL),(529,44,49,2,NULL),(530,44,52,2,NULL),(531,44,60,2,NULL),(532,44,69,2,NULL),(533,44,70,2,NULL),(534,44,71,2,NULL),(535,44,73,2,NULL),(536,44,82,2,NULL),(537,44,88,2,NULL),(538,44,89,2,NULL),(539,44,92,2,NULL),(540,44,93,2,NULL),(541,20,1,2,NULL),(542,40,1,2,NULL),(543,41,1,2,NULL),(544,20,3,2,NULL),(545,40,3,2,NULL),(546,41,3,2,NULL),(547,20,7,2,NULL),(548,40,7,2,NULL),(549,41,7,2,NULL),(550,20,11,2,NULL),(551,40,11,2,NULL),(552,41,11,2,NULL),(553,20,17,2,NULL),(554,40,17,2,NULL),(555,41,17,2,NULL),(556,20,23,2,NULL),(557,40,23,2,NULL),(558,41,23,2,NULL),(559,20,31,2,NULL),(560,40,31,2,NULL),(561,41,31,2,NULL),(562,20,37,2,NULL),(563,40,37,2,NULL),(564,41,37,2,NULL),(565,20,38,2,NULL),(566,40,38,2,NULL),(567,41,38,2,NULL),(568,20,39,2,NULL),(569,40,39,2,NULL),(570,41,39,2,NULL),(571,20,44,2,NULL),(572,40,44,2,NULL),(573,41,44,2,NULL),(574,20,49,2,NULL),(575,40,49,2,NULL),(576,41,49,2,NULL),(577,20,52,2,NULL),(578,40,52,2,NULL),(579,41,52,2,NULL),(580,20,60,2,NULL),(581,40,60,2,NULL),(582,41,60,2,NULL),(583,20,69,2,NULL),(584,40,69,2,NULL),(585,41,69,2,NULL),(586,20,70,2,NULL),(587,40,70,2,NULL),(588,41,70,2,NULL),(589,20,71,2,NULL),(590,40,71,2,NULL),(591,41,71,2,NULL),(592,20,73,2,NULL),(593,40,73,2,NULL),(594,41,73,2,NULL),(595,20,82,2,NULL),(596,40,82,2,NULL),(597,41,82,2,NULL),(598,20,88,2,NULL),(599,40,88,2,NULL),(600,41,88,2,NULL),(601,20,89,2,NULL),(602,40,89,2,NULL),(603,41,89,2,NULL),(604,20,92,2,NULL),(605,40,92,2,NULL),(606,41,92,2,NULL),(607,20,93,2,NULL),(608,40,93,2,NULL),(609,41,93,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(26,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_WALLPAPER'),(32,'android.permission.BLUETOOTH'),(33,'android.permission.BLUETOOTH_ADMIN'),(31,'android.permission.DISABLE_KEYGUARD'),(29,'android.permission.GET_ACCOUNTS'),(18,'android.permission.INTERNET'),(28,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(30,'android.permission.SET_PREFERRED_APPLICATIONS'),(1,'android.permission.SET_WALLPAPER'),(21,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(19,'com.fede.launcher.permission.READ_SETTINGS'),(34,'com.google.android.c2dm.permission.SEND'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(13,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(20,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pub:\"Jason Allen\"',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'http://www.facebook.com/EndPermian',NULL,NULL,NULL),(10,NULL,NULL,'http://www.twitter.com/EndPermian',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.driftwood.wallpaper.easternglownight',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'www.google.com',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(22,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(23,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,2),(2,6,3),(3,8,4),(4,9,5),(5,10,6),(6,12,7),(7,12,8),(8,18,12),(9,22,15),(10,23,16),(11,28,19),(12,30,20),(13,40,21),(14,40,22),(15,45,23),(16,47,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,1,2),(4,2,3),(5,1,3),(6,2,4),(7,1,4),(8,2,5),(9,1,5),(10,2,6),(11,1,6),(12,2,7),(13,1,7),(14,2,8),(15,1,8),(16,2,9),(17,1,9),(18,2,10),(19,1,10),(20,2,11),(21,1,11),(22,2,12),(23,1,12),(24,2,13),(25,1,13),(26,2,14),(27,1,14),(28,2,15),(29,1,15),(30,2,17),(31,1,17),(32,2,16),(33,1,16),(34,2,19),(35,1,19),(36,2,18),(37,1,18),(38,2,21),(39,1,21),(40,2,20),(41,1,20),(42,2,23),(43,1,23),(44,2,22),(45,1,22),(46,2,25),(47,1,24),(48,2,24),(49,2,26),(50,3,17),(51,3,18),(52,3,22),(53,3,25),(54,3,8),(55,3,9),(56,3,11),(57,3,14),(58,3,15),(59,4,2),(60,4,3),(61,4,4),(62,4,5),(63,4,6),(64,4,7),(65,4,8),(66,4,9),(67,4,10),(68,4,11),(69,4,12),(70,4,13),(71,4,14),(72,4,15),(73,4,17),(74,4,16),(75,5,2),(76,4,19),(77,5,3),(78,4,18),(79,5,4),(80,4,20),(81,5,5),(82,4,23),(83,5,6),(84,4,22),(85,5,7),(86,4,25),(87,5,8),(88,4,24),(89,5,9),(90,4,26),(91,5,10),(92,4,29),(93,5,11),(94,4,28),(95,5,12),(96,5,13),(97,5,14),(98,5,15),(99,5,17),(100,5,16),(101,5,19),(102,5,18),(103,5,21),(104,5,20),(105,5,23),(106,5,25),(107,5,24),(108,5,26),(109,5,29),(110,5,28),(111,5,31),(112,5,30),(113,5,32),(114,5,33),(115,6,2),(116,6,3),(117,6,4),(118,6,5),(119,6,6),(120,6,8),(121,6,9),(122,6,10),(123,6,11),(124,6,13),(125,6,14),(126,6,15),(127,6,17),(128,6,16),(129,6,19),(130,6,18),(131,6,21),(132,6,20),(133,6,23),(134,6,22),(135,6,25),(136,6,24),(137,7,2),(138,7,4),(139,7,5),(140,7,6),(141,7,7),(142,7,8),(143,7,9),(144,7,10),(145,7,11),(146,7,12),(147,7,13),(148,7,14),(149,7,15),(150,7,17),(151,7,16),(152,7,19),(153,7,18),(154,7,21),(155,7,20),(156,7,23),(157,7,22),(158,7,25),(159,7,24),(160,7,26);
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
