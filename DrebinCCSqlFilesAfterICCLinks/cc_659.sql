-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_659
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(20,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.NEW_OUTGOING_CALL'),(13,'android.intent.action.PHONE_STATE'),(24,'android.intent.action.SCREEN_OFF'),(25,'android.intent.action.SCREEN_ON'),(22,'android.intent.action.VIEW'),(21,'android.media.action.IMAGE_CAPTURE'),(5,'android.service.wallpaper.WallpaperService'),(2,'com.airpush.android.PushServiceStart33889'),(10,'com.airpush.android.PushServiceStart55412'),(14,'com.airpush.android.PushServiceStart56651'),(15,'com.airpush.android.PushServiceStart56727'),(6,'com.airpush.android.PushServiceStart57781'),(4,'com.airpush.android.PushServiceStart61154'),(23,'com.android.launcher.action.INSTALL_SHORTCUT'),(7,'com.android.vending.billing.IN_APP_NOTIFY'),(28,'com.android.vending.billing.MarketBillingService.BIND'),(8,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(9,'com.android.vending.billing.RESPONSE_CODE'),(16,'com.applovin.sdk.AppLovinService'),(27,'com.example.dungeons.GET_PURCHASE_INFORMATION'),(18,'com.senddroid.AdServicecom.wimolife.PhoneSketchFree'),(17,'com.senddroid.AdServicecom.wimolife.wallpaper.fireworksfree'),(11,'com.senddroid.AdServicecom.wimolife.wallpaper.snake');
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
INSERT INTO `Applications` VALUES (1,'com.addictingappz.penguinshoot',1),(2,'com.mobileriders.current.generalknowledge',2),(3,'com.hddevs.matajilwp',1),(4,'com.wimolife.wallpaper.snake',25),(5,'com.arbstudios.tikigolf3dfree',9),(6,'com.wimolife.wallpaper.fireworksfree',55),(7,'com.wimolife.PhoneSketchFree',43);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.addictingappz.activity.SplashScreen'),(2,1,'com.addictingappz.activity.WebViewActivity'),(3,1,'com.airpush.android.PushAds'),(4,1,'com.airpush.android.PushService'),(5,2,'com.mobileriders.current.generalknowledge.Main'),(6,1,'com.apperhand.device.android.AndroidSDKProvider'),(7,2,'com.mobileriders.current.generalknowledge.IndianGK'),(8,1,'com.airpush.android.UserDetailsReceiver'),(9,2,'com.mobileriders.current.generalknowledge.IndianHistory'),(10,1,'com.airpush.android.MessageReceiver'),(11,2,'com.mobileriders.current.generalknowledge.WorldGK'),(12,1,'com.airpush.android.DeliveryReceiver'),(13,2,'com.mobileriders.current.generalknowledge.DefenceIndia'),(14,1,'com.addictingappz.activity.BootReceiver'),(15,2,'com.mobileriders.current.generalknowledge.Sports'),(16,2,'com.mobileriders.current.generalknowledge.Awards'),(17,2,'com.mobileriders.current.generalknowledge.WorldFacts'),(18,2,'com.mobileriders.current.generalknowledge.WebContent'),(19,2,'com.mobileriders.current.generalknowledge.SmallBig'),(20,3,'com.hddevs.matajilwp.WallpaperActivity'),(21,2,'com.mobileriders.current.generalknowledge.WarsBattels'),(22,2,'com.mobileriders.current.generalknowledge.Wonders'),(23,2,'com.mobileriders.current.generalknowledge.Revolutions'),(24,3,'com.hddevs.matajilwp.PrefActivity'),(25,2,'com.airpush.android.PushAds'),(26,3,'com.airpush.android.PushAds'),(27,2,'com.apperhand.device.android.AndroidSDKProvider'),(28,3,'com.apperhand.device.android.AndroidSDKProvider'),(29,2,'com.airpush.android.PushService'),(30,3,'com.hddevs.matajilwp.Wallpaper'),(31,2,'com.airpush.android.UserDetailsReceiver'),(32,3,'com.airpush.android.PushService'),(33,2,'com.airpush.android.MessageReceiver'),(34,2,'com.airpush.android.DeliveryReceiver'),(35,2,'com.mobileriders.current.generalknowledge.BootReceiver'),(36,3,'com.airpush.android.UserDetailsReceiver'),(37,3,'com.airpush.android.MessageReceiver'),(38,3,'com.airpush.android.DeliveryReceiver'),(39,3,'com.hddevs.matajilwp.BootReceiver'),(40,3,'com.hddevs.matajilwp.boot'),(41,3,'com.Leadbolt.AdNotification'),(42,5,'com.arbstudios.tikigolf3dfree.AxCore'),(43,4,'com.wimolife.wallpaper.snake.SnakeSettings'),(44,4,'com.wimolife.wallpaper.snake.Snake'),(45,5,'com.google.ads.AdActivity'),(46,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(47,4,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(48,5,'com.apperhand.device.android.AndroidSDKProvider'),(49,4,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(50,5,'com.arbstudios.tikigolf3dfree.BillingService'),(51,4,'com.airpush.android.PushAds'),(52,5,'com.arbstudios.tikigolf3dfree.BillingReceiver'),(53,4,'com.cyberbounty.adapplib.ADScreen'),(54,4,'com.sellaring.sdk.PostCallScreenActivity'),(55,4,'com.wimolife.wallpaper.snake.SnakeWallpaper'),(56,4,'com.airpush.android.PushService'),(57,4,'com.apperhand.device.android.AndroidSDKProvider'),(58,4,'com.senddroid.AdService'),(59,4,'com.airpush.android.UserDetailsReceiver'),(60,6,'com.wimolife.wallpaper.fireworksfree.FireworksSettings'),(61,4,'com.airpush.android.MessageReceiver'),(62,6,'com.wimolife.wallpaper.fireworksfree.OurApps'),(63,4,'com.airpush.android.DeliveryReceiver'),(64,7,'com.wimolife.PhoneSketchFree.PhoneSketch'),(65,6,'com.wimolife.wallpaper.fireworksfree.WebviewActivity'),(66,4,'com.wimolife.wallpaper.snake.BootReceiver'),(67,6,'com.wimolife.wallpaper.fireworksfree.WebOfferActivity'),(68,6,'com.wimolife.wallpaper.fireworksfree.LWActivity'),(69,7,'com.wimolife.PhoneSketchFree.WebviewActivity'),(70,4,'com.Leadbolt.AdNotification'),(71,6,'com.airpush.android.PushAds'),(72,4,'com.sellaring.sdk.AlarmReceiver'),(73,7,'com.wimolife.PhoneSketchFree.PhoneSketchImageView'),(74,6,'com.sellaring.sdk.PostCallScreenActivity'),(75,4,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(76,6,'com.wimolife.wallpaper.fireworksfree.FireworksWallpaper'),(77,7,'com.wimolife.PhoneSketchFree.WebOfferActivity'),(78,4,'com.sellaring.sdk.PhoneStateReceiver'),(79,6,'com.airpush.android.PushService'),(80,7,'com.airpush.android.PushAds'),(81,7,'com.sec.android.ad.AdActivity'),(82,7,'com.airpush.android.PushService'),(83,6,'com.apperhand.device.android.AndroidSDKProvider'),(84,6,'com.applovin.sdk.AppLovinService'),(85,7,'com.apperhand.device.android.AndroidSDKProvider'),(86,7,'com.applovin.sdk.AppLovinService'),(87,6,'com.senddroid.AdService'),(88,7,'com.senddroid.AdService'),(89,6,'com.airpush.android.UserDetailsReceiver'),(90,6,'com.airpush.android.MessageReceiver'),(91,7,'com.airpush.android.UserDetailsReceiver'),(92,6,'com.airpush.android.DeliveryReceiver'),(93,7,'com.airpush.android.MessageReceiver'),(94,6,'com.wimolife.wallpaper.fireworksfree.BootReceiver'),(95,7,'com.airpush.android.DeliveryReceiver'),(96,7,'com.wimolife.PhoneSketchFree.BootReceiver'),(97,6,'com.Leadbolt.AdNotification'),(98,7,'com.Leadbolt.AdNotification'),(99,6,'com.sellaring.sdk.AlarmReceiver'),(100,6,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(101,6,'com.sellaring.sdk.PhoneStateReceiver'),(102,5,'com.apperhand.device.android.a.d'),(103,5,'com.apperhand.device.android.a.b'),(104,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(105,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(106,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(107,5,'com.arbstudios.billing.BillingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,46,'com.arbstudios.tikigolf3dfree.type'),(2,46,'com.arbstudios.tikigolf3dfree.data'),(3,48,'DEVELOPER_ID'),(4,45,'params'),(5,42,'com.arbstudios.ARBWHIRL_CFG'),(6,42,'com.arbstudios.AX_LINK_LIKE'),(7,48,'SERVICE_MODE'),(8,48,'USER_AGENT'),(9,45,'com.google.circles.platform.result.extra.CONFIRMATION'),(10,45,'com.google.circles.platform.result.extra.ACTION'),(11,48,'M_SERVER_URL'),(12,42,'com.arbstudios.AX_LINK_MOREGAMES'),(13,52,'inapp_signed_data'),(14,52,'notification_id'),(15,42,'RESPONSE_CODE'),(16,42,'REQUEST_ID'),(17,42,'com.arbstudios.AX_LINK_FULLVERRATE'),(18,42,'com.arbstudios.AX_FEATURE_HEYZAP'),(19,48,'FIRST_RUN'),(20,42,'com.arbstudios.AX_LINK_TRIALRATE'),(21,46,'imageUri'),(22,45,'com.google.ads.AdOpener'),(23,42,'com.arbstudios.AX_LINK_FULLVERSION'),(24,48,'APPLICATION_ID'),(25,45,'action'),(26,42,'com.arbstudios.AX_SHOWQUIT_BTN'),(27,52,'inapp_signature');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'s',1,25,NULL),(31,31,'r',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',1,25,NULL),(56,56,'s',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'s',1,25,NULL),(77,77,'a',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'s',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',1,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'s',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',1,NULL,NULL),(87,87,'s',1,NULL,NULL),(88,88,'s',1,NULL,NULL),(89,89,'r',0,NULL,NULL),(90,90,'r',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,92,'r',0,NULL,NULL),(93,93,'r',0,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'r',0,NULL,NULL),(98,98,'r',0,NULL,NULL),(99,99,'r',0,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,106,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,48),(2,2,48),(3,3,46),(4,4,48),(5,5,46),(6,6,52),(7,7,48),(8,8,46),(9,9,46),(10,10,46),(11,11,46),(12,12,46),(13,13,48),(14,14,46),(15,15,48),(16,16,46),(17,17,45),(18,18,45),(19,19,52),(20,20,42),(21,21,46),(22,22,52),(23,23,46),(24,24,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,102,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(2,103,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(3,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(4,102,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(5,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(6,52,'<com.arbstudios.tikigolf3dfree.BillingReceiver: void checkResponseCode(android.content.Context,long,int)>',9,'s',NULL),(7,103,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(8,104,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(9,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(10,104,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(11,104,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(12,104,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(13,102,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(14,105,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(15,103,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(16,104,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(17,45,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(18,45,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(19,52,'<com.arbstudios.tikigolf3dfree.BillingReceiver: void notify(android.content.Context,java.lang.String)>',7,'s',NULL),(20,107,'<com.arbstudios.billing.BillingService: boolean bindToMarketBillingService()>',4,'s',NULL),(21,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(22,52,'<com.arbstudios.tikigolf3dfree.BillingReceiver: void purchaseStateChanged(android.content.Context,java.lang.String,java.lang.String)>',9,'s',NULL),(23,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',133,'p',NULL),(24,46,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,19),(2,2,19),(3,3,19),(4,4,19),(5,5,19),(6,6,19),(7,7,19),(8,8,19),(9,10,20),(10,11,21),(11,12,21),(12,13,21),(13,15,21),(14,16,9),(15,18,19),(16,19,19),(17,20,19),(18,21,19),(19,22,19),(20,23,19),(21,24,19),(22,25,19),(23,28,22),(24,29,22),(25,30,23),(26,31,22),(27,32,22),(28,33,22),(29,34,22),(30,36,22),(31,37,26),(32,38,26),(33,39,22),(34,40,27),(35,41,28),(36,43,20),(37,44,21),(38,45,21),(39,46,21),(40,48,21),(41,49,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,35,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,16,'com/arbstudios/billing/BillingService'),(2,17,'com/mobclix/android/sdk/MobclixBrowserActivity'),(3,26,'com/mobclix/android/sdk/MobclixBrowserActivity'),(4,27,'com/mobclix/android/sdk/MobclixBrowserActivity'),(5,35,'com.google.android.apps.circles.platform.PlusOneActivity'),(6,40,'com/arbstudios/billing/BillingService'),(7,49,'com/arbstudios/billing/BillingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,28,6),(2,29,7),(3,31,8),(4,32,9),(5,33,11),(6,34,12),(7,36,13),(8,37,14),(9,38,15),(10,39,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.TITLE'),(7,5,'android.intent.extra.INTENT'),(8,6,'android.intent.extra.INTENT'),(9,7,'android.intent.extra.TITLE'),(10,7,'android.intent.extra.INTENT'),(11,8,'android.intent.extra.TITLE'),(12,8,'android.intent.extra.INTENT'),(13,11,'output'),(14,12,'output'),(15,12,'android.intent.extra.videoQuality'),(16,16,'request_id'),(17,16,'response_code'),(18,18,'android.intent.extra.INTENT'),(19,19,'android.intent.extra.INTENT'),(20,20,'android.intent.extra.TITLE'),(21,20,'android.intent.extra.INTENT'),(22,21,'android.intent.extra.INTENT'),(23,22,'android.intent.extra.TITLE'),(24,22,'android.intent.extra.INTENT'),(25,23,'android.intent.extra.INTENT'),(26,24,'android.intent.extra.TITLE'),(27,24,'android.intent.extra.INTENT'),(28,25,'android.intent.extra.TITLE'),(29,25,'android.intent.extra.INTENT'),(30,30,'android.intent.extra.shortcut.NAME'),(31,30,'android.intent.extra.shortcut.ICON'),(32,30,'android.intent.extra.shortcut.INTENT'),(33,35,'com.google.circles.platform.intent.extra.ACTION'),(34,35,'(.*)'),(35,35,'com.google.circles.platform.intent.extra.ENTITY'),(36,35,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(37,40,'notification_id'),(38,44,'output'),(39,45,'output'),(40,45,'android.intent.extra.videoQuality'),(41,49,'inapp_signature'),(42,49,'inapp_signed_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,1),(6,6,4),(7,7,5),(8,8,6),(9,9,3),(10,10,3),(11,11,3),(12,12,1),(13,13,1),(14,14,9),(15,14,8),(16,14,7),(17,15,5),(18,16,10),(19,17,11),(20,18,1),(21,19,3),(22,20,1),(23,21,1),(24,22,3),(25,23,1),(26,24,3),(27,25,5),(28,26,12),(29,26,13),(30,27,14),(31,28,3),(32,29,15),(33,30,16),(34,31,16),(35,32,17),(36,33,18),(37,34,3),(38,35,3),(39,36,3),(40,37,3),(41,38,3),(42,39,3),(43,40,13),(44,40,12),(45,41,3),(46,42,24),(47,42,25),(48,43,24),(49,43,25);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,1),(5,9,2),(6,10,2),(7,12,1),(8,13,1),(9,18,3),(10,19,2),(11,20,1),(12,21,1),(13,23,3),(14,28,2),(15,34,2),(16,35,2),(17,38,2),(18,41,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'image','*'),(2,14,'image','*'),(3,15,'image','*'),(4,37,'(.*)','(.*)'),(5,39,'(.*)','(.*)'),(6,43,'image','*'),(7,47,'image','*'),(8,48,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,16,'com.arbstudios.tikigolf3dfree'),(2,17,'com.arbstudios.tikigolf3dfree'),(3,26,'com.arbstudios.tikigolf3dfree'),(4,27,'com.arbstudios.tikigolf3dfree'),(5,35,'com.google.android.apps.plus'),(6,40,'com.arbstudios.tikigolf3dfree'),(7,49,'com.arbstudios.tikigolf3dfree');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,4,0),(4,14,0),(5,20,0),(6,29,0),(7,30,0),(8,32,0),(9,35,0),(10,39,0),(11,40,0),(12,42,0),(13,44,0),(14,52,0),(15,55,0),(16,56,0),(17,58,0),(18,64,0),(19,66,0),(20,68,0),(21,69,0),(22,66,0),(23,73,0),(24,75,0),(25,76,0),(26,78,0),(27,79,0),(28,66,0),(29,82,0),(30,84,0),(31,86,0),(32,87,0),(33,88,0),(34,94,0),(35,96,0),(36,94,0),(37,96,0),(38,96,0),(39,100,0),(40,101,0),(41,94,0),(42,102,0),(43,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,1,0),(2,3,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,5,1,0),(14,5,1,0),(15,5,1,0),(16,6,0,0),(17,8,0,0),(18,9,1,0),(19,9,1,0),(20,9,1,0),(21,9,1,0),(22,9,1,0),(23,9,1,0),(24,9,1,0),(25,9,1,0),(26,10,0,0),(27,11,0,0),(28,12,1,0),(29,12,1,0),(30,13,1,0),(31,14,1,0),(32,14,1,0),(33,16,1,0),(34,16,1,0),(35,17,0,0),(36,18,1,0),(37,18,1,0),(38,18,1,0),(39,18,1,0),(40,19,0,0),(41,20,1,0),(42,21,1,0),(43,21,1,0),(44,21,1,0),(45,21,1,0),(46,21,1,0),(47,21,1,0),(48,21,1,0),(49,22,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,36,5,2,NULL),(2,38,5,2,NULL),(3,1,5,2,NULL),(4,2,5,2,NULL),(5,3,5,2,NULL),(6,4,5,2,NULL),(7,5,5,2,NULL),(8,6,5,2,NULL),(9,7,5,2,NULL),(10,8,5,2,NULL),(11,9,5,2,NULL),(12,11,5,2,NULL),(13,12,5,2,NULL),(14,13,5,2,NULL),(15,18,5,2,NULL),(16,19,5,2,NULL),(17,20,5,2,NULL),(18,21,5,2,NULL),(19,22,5,2,NULL),(20,23,5,2,NULL),(21,24,5,2,NULL),(22,25,5,2,NULL),(23,42,5,2,NULL),(24,44,5,2,NULL),(25,45,5,2,NULL),(26,46,5,2,NULL),(27,36,29,2,NULL),(28,38,29,2,NULL),(29,1,29,2,NULL),(30,2,29,2,NULL),(31,3,29,2,NULL),(32,4,29,2,NULL),(33,5,29,2,NULL),(34,6,29,2,NULL),(35,7,29,2,NULL),(36,8,29,2,NULL),(37,9,29,2,NULL),(38,11,29,2,NULL),(39,12,29,2,NULL),(40,13,29,2,NULL),(41,18,29,2,NULL),(42,19,29,2,NULL),(43,20,29,2,NULL),(44,21,29,2,NULL),(45,22,29,2,NULL),(46,23,29,2,NULL),(47,24,29,2,NULL),(48,25,29,2,NULL),(49,42,29,2,NULL),(50,44,29,2,NULL),(51,45,29,2,NULL),(52,46,29,2,NULL),(53,36,35,2,NULL),(54,38,35,2,NULL),(55,1,35,2,NULL),(56,2,35,2,NULL),(57,3,35,2,NULL),(58,4,35,2,NULL),(59,5,35,2,NULL),(60,6,35,2,NULL),(61,7,35,2,NULL),(62,8,35,2,NULL),(63,9,35,2,NULL),(64,11,35,2,NULL),(65,12,35,2,NULL),(66,13,35,2,NULL),(67,18,35,2,NULL),(68,19,35,2,NULL),(69,20,35,2,NULL),(70,21,35,2,NULL),(71,22,35,2,NULL),(72,23,35,2,NULL),(73,24,35,2,NULL),(74,25,35,2,NULL),(75,42,35,2,NULL),(76,44,35,2,NULL),(77,45,35,2,NULL),(78,46,35,2,NULL),(79,36,42,2,NULL),(80,38,42,2,NULL),(81,1,42,2,NULL),(82,2,42,2,NULL),(83,3,42,2,NULL),(84,4,42,2,NULL),(85,5,42,2,NULL),(86,6,42,2,NULL),(87,7,42,2,NULL),(88,8,42,2,NULL),(89,9,42,2,NULL),(90,11,42,2,NULL),(91,12,42,2,NULL),(92,13,42,2,NULL),(93,18,42,2,NULL),(94,19,42,2,NULL),(95,20,42,2,NULL),(96,21,42,2,NULL),(97,22,42,2,NULL),(98,23,42,2,NULL),(99,24,42,2,NULL),(100,25,42,2,NULL),(101,42,42,2,NULL),(102,44,42,2,NULL),(103,45,42,2,NULL),(104,46,42,2,NULL),(105,36,1,2,NULL),(106,38,1,2,NULL),(107,36,4,2,NULL),(108,38,4,2,NULL),(109,36,14,2,NULL),(110,38,14,2,NULL),(111,36,20,2,NULL),(112,38,20,2,NULL),(113,36,30,2,NULL),(114,38,30,2,NULL),(115,36,32,2,NULL),(116,38,32,2,NULL),(117,36,39,2,NULL),(118,38,39,2,NULL),(119,36,40,2,NULL),(120,38,40,2,NULL),(121,36,44,2,NULL),(122,38,44,2,NULL),(123,36,55,2,NULL),(124,38,55,2,NULL),(125,36,56,2,NULL),(126,38,56,2,NULL),(127,36,58,2,NULL),(128,38,58,2,NULL),(129,36,66,2,NULL),(130,38,66,2,NULL),(131,36,75,2,NULL),(132,38,75,2,NULL),(133,36,78,2,NULL),(134,38,78,2,NULL),(135,36,52,2,NULL),(136,38,52,2,NULL),(137,36,102,2,NULL),(138,38,102,2,NULL),(139,36,68,2,NULL),(140,38,68,2,NULL),(141,36,76,2,NULL),(142,38,76,2,NULL),(143,36,79,2,NULL),(144,38,79,2,NULL),(145,36,84,2,NULL),(146,38,84,2,NULL),(147,36,87,2,NULL),(148,38,87,2,NULL),(149,36,94,2,NULL),(150,38,94,2,NULL),(151,36,100,2,NULL),(152,38,100,2,NULL),(153,36,101,2,NULL),(154,38,101,2,NULL),(155,36,64,2,NULL),(156,38,64,2,NULL),(157,36,69,2,NULL),(158,38,69,2,NULL),(159,36,73,2,NULL),(160,38,73,2,NULL),(161,36,82,2,NULL),(162,38,82,2,NULL),(163,36,86,2,NULL),(164,38,86,2,NULL),(165,36,88,2,NULL),(166,38,88,2,NULL),(167,36,96,2,NULL),(168,38,96,2,NULL),(169,1,1,2,NULL),(170,2,1,2,NULL),(171,3,1,2,NULL),(172,4,1,2,NULL),(173,5,1,2,NULL),(174,6,1,2,NULL),(175,7,1,2,NULL),(176,8,1,2,NULL),(177,9,1,2,NULL),(178,11,1,2,NULL),(179,12,1,2,NULL),(180,13,1,2,NULL),(181,18,1,2,NULL),(182,19,1,2,NULL),(183,20,1,2,NULL),(184,21,1,2,NULL),(185,22,1,2,NULL),(186,23,1,2,NULL),(187,24,1,2,NULL),(188,25,1,2,NULL),(189,42,1,2,NULL),(190,44,1,2,NULL),(191,45,1,2,NULL),(192,46,1,2,NULL),(193,1,4,2,NULL),(194,2,4,2,NULL),(195,3,4,2,NULL),(196,4,4,2,NULL),(197,5,4,2,NULL),(198,6,4,2,NULL),(199,7,4,2,NULL),(200,8,4,2,NULL),(201,9,4,2,NULL),(202,11,4,2,NULL),(203,12,4,2,NULL),(204,13,4,2,NULL),(205,18,4,2,NULL),(206,19,4,2,NULL),(207,20,4,2,NULL),(208,21,4,2,NULL),(209,22,4,2,NULL),(210,23,4,2,NULL),(211,24,4,2,NULL),(212,25,4,2,NULL),(213,42,4,2,NULL),(214,44,4,2,NULL),(215,45,4,2,NULL),(216,46,4,2,NULL),(217,1,14,2,NULL),(218,2,14,2,NULL),(219,3,14,2,NULL),(220,4,14,2,NULL),(221,5,14,2,NULL),(222,6,14,2,NULL),(223,7,14,2,NULL),(224,8,14,2,NULL),(225,9,14,2,NULL),(226,11,14,2,NULL),(227,12,14,2,NULL),(228,13,14,2,NULL),(229,18,14,2,NULL),(230,19,14,2,NULL),(231,20,14,2,NULL),(232,21,14,2,NULL),(233,22,14,2,NULL),(234,23,14,2,NULL),(235,24,14,2,NULL),(236,25,14,2,NULL),(237,42,14,2,NULL),(238,44,14,2,NULL),(239,45,14,2,NULL),(240,46,14,2,NULL),(241,1,20,2,NULL),(242,2,20,2,NULL),(243,3,20,2,NULL),(244,4,20,2,NULL),(245,5,20,2,NULL),(246,6,20,2,NULL),(247,7,20,2,NULL),(248,8,20,2,NULL),(249,9,20,2,NULL),(250,11,20,2,NULL),(251,12,20,2,NULL),(252,13,20,2,NULL),(253,18,20,2,NULL),(254,19,20,2,NULL),(255,20,20,2,NULL),(256,21,20,2,NULL),(257,22,20,2,NULL),(258,23,20,2,NULL),(259,24,20,2,NULL),(260,25,20,2,NULL),(261,42,20,2,NULL),(262,44,20,2,NULL),(263,45,20,2,NULL),(264,46,20,2,NULL),(265,1,30,2,NULL),(266,2,30,2,NULL),(267,3,30,2,NULL),(268,4,30,2,NULL),(269,5,30,2,NULL),(270,6,30,2,NULL),(271,7,30,2,NULL),(272,8,30,2,NULL),(273,9,30,2,NULL),(274,11,30,2,NULL),(275,12,30,2,NULL),(276,13,30,2,NULL),(277,18,30,2,NULL),(278,19,30,2,NULL),(279,20,30,2,NULL),(280,21,30,2,NULL),(281,22,30,2,NULL),(282,23,30,2,NULL),(283,24,30,2,NULL),(284,25,30,2,NULL),(285,42,30,2,NULL),(286,44,30,2,NULL),(287,45,30,2,NULL),(288,46,30,2,NULL),(289,1,32,2,NULL),(290,2,32,2,NULL),(291,3,32,2,NULL),(292,4,32,2,NULL),(293,5,32,2,NULL),(294,6,32,2,NULL),(295,7,32,2,NULL),(296,8,32,2,NULL),(297,9,32,2,NULL),(298,11,32,2,NULL),(299,12,32,2,NULL),(300,13,32,2,NULL),(301,18,32,2,NULL),(302,19,32,2,NULL),(303,20,32,2,NULL),(304,21,32,2,NULL),(305,22,32,2,NULL),(306,23,32,2,NULL),(307,24,32,2,NULL),(308,25,32,2,NULL),(309,42,32,2,NULL),(310,44,32,2,NULL),(311,45,32,2,NULL),(312,46,32,2,NULL),(313,1,39,2,NULL),(314,2,39,2,NULL),(315,3,39,2,NULL),(316,4,39,2,NULL),(317,5,39,2,NULL),(318,6,39,2,NULL),(319,7,39,2,NULL),(320,8,39,2,NULL),(321,9,39,2,NULL),(322,11,39,2,NULL),(323,12,39,2,NULL),(324,13,39,2,NULL),(325,18,39,2,NULL),(326,19,39,2,NULL),(327,20,39,2,NULL),(328,21,39,2,NULL),(329,22,39,2,NULL),(330,23,39,2,NULL),(331,24,39,2,NULL),(332,25,39,2,NULL),(333,42,39,2,NULL),(334,44,39,2,NULL),(335,45,39,2,NULL),(336,46,39,2,NULL),(337,1,40,2,NULL),(338,2,40,2,NULL),(339,3,40,2,NULL),(340,4,40,2,NULL),(341,5,40,2,NULL),(342,6,40,2,NULL),(343,7,40,2,NULL),(344,8,40,2,NULL),(345,9,40,2,NULL),(346,11,40,2,NULL),(347,12,40,2,NULL),(348,13,40,2,NULL),(349,18,40,2,NULL),(350,19,40,2,NULL),(351,20,40,2,NULL),(352,21,40,2,NULL),(353,22,40,2,NULL),(354,23,40,2,NULL),(355,24,40,2,NULL),(356,25,40,2,NULL),(357,42,40,2,NULL),(358,44,40,2,NULL),(359,45,40,2,NULL),(360,46,40,2,NULL),(361,1,44,2,NULL),(362,2,44,2,NULL),(363,3,44,2,NULL),(364,4,44,2,NULL),(365,5,44,2,NULL),(366,6,44,2,NULL),(367,7,44,2,NULL),(368,8,44,2,NULL),(369,9,44,2,NULL),(370,11,44,2,NULL),(371,12,44,2,NULL),(372,13,44,2,NULL),(373,18,44,2,NULL),(374,19,44,2,NULL),(375,20,44,2,NULL),(376,21,44,2,NULL),(377,22,44,2,NULL),(378,23,44,2,NULL),(379,24,44,2,NULL),(380,25,44,2,NULL),(381,42,44,2,NULL),(382,44,44,2,NULL),(383,45,44,2,NULL),(384,46,44,2,NULL),(385,1,55,2,NULL),(386,2,55,2,NULL),(387,3,55,2,NULL),(388,4,55,2,NULL),(389,5,55,2,NULL),(390,6,55,2,NULL),(391,7,55,2,NULL),(392,8,55,2,NULL),(393,9,55,2,NULL),(394,11,55,2,NULL),(395,12,55,2,NULL),(396,13,55,2,NULL),(397,18,55,2,NULL),(398,19,55,2,NULL),(399,20,55,2,NULL),(400,21,55,2,NULL),(401,22,55,2,NULL),(402,23,55,2,NULL),(403,24,55,2,NULL),(404,25,55,2,NULL),(405,42,55,2,NULL),(406,44,55,2,NULL),(407,45,55,2,NULL),(408,46,55,2,NULL),(409,1,56,2,NULL),(410,2,56,2,NULL),(411,3,56,2,NULL),(412,4,56,2,NULL),(413,5,56,2,NULL),(414,6,56,2,NULL),(415,7,56,2,NULL),(416,8,56,2,NULL),(417,9,56,2,NULL),(418,11,56,2,NULL),(419,12,56,2,NULL),(420,13,56,2,NULL),(421,18,56,2,NULL),(422,19,56,2,NULL),(423,20,56,2,NULL),(424,21,56,2,NULL),(425,22,56,2,NULL),(426,23,56,2,NULL),(427,24,56,2,NULL),(428,25,56,2,NULL),(429,42,56,2,NULL),(430,44,56,2,NULL),(431,45,56,2,NULL),(432,46,56,2,NULL),(433,1,58,2,NULL),(434,2,58,2,NULL),(435,3,58,2,NULL),(436,4,58,2,NULL),(437,5,58,2,NULL),(438,6,58,2,NULL),(439,7,58,2,NULL),(440,8,58,2,NULL),(441,9,58,2,NULL),(442,11,58,2,NULL),(443,12,58,2,NULL),(444,13,58,2,NULL),(445,18,58,2,NULL),(446,19,58,2,NULL),(447,20,58,2,NULL),(448,21,58,2,NULL),(449,22,58,2,NULL),(450,23,58,2,NULL),(451,24,58,2,NULL),(452,25,58,2,NULL),(453,42,58,2,NULL),(454,44,58,2,NULL),(455,45,58,2,NULL),(456,46,58,2,NULL),(457,1,66,2,NULL),(458,2,66,2,NULL),(459,3,66,2,NULL),(460,4,66,2,NULL),(461,5,66,2,NULL),(462,6,66,2,NULL),(463,7,66,2,NULL),(464,8,66,2,NULL),(465,9,66,2,NULL),(466,11,66,2,NULL),(467,12,66,2,NULL),(468,13,66,2,NULL),(469,18,66,2,NULL),(470,19,66,2,NULL),(471,20,66,2,NULL),(472,21,66,2,NULL),(473,22,66,2,NULL),(474,23,66,2,NULL),(475,24,66,2,NULL),(476,25,66,2,NULL),(477,42,66,2,NULL),(478,44,66,2,NULL),(479,45,66,2,NULL),(480,46,66,2,NULL),(481,1,75,2,NULL),(482,2,75,2,NULL),(483,3,75,2,NULL),(484,4,75,2,NULL),(485,5,75,2,NULL),(486,6,75,2,NULL),(487,7,75,2,NULL),(488,8,75,2,NULL),(489,9,75,2,NULL),(490,11,75,2,NULL),(491,12,75,2,NULL),(492,13,75,2,NULL),(493,18,75,2,NULL),(494,19,75,2,NULL),(495,20,75,2,NULL),(496,21,75,2,NULL),(497,22,75,2,NULL),(498,23,75,2,NULL),(499,24,75,2,NULL),(500,25,75,2,NULL),(501,42,75,2,NULL),(502,44,75,2,NULL),(503,45,75,2,NULL),(504,46,75,2,NULL),(505,1,78,2,NULL),(506,2,78,2,NULL),(507,3,78,2,NULL),(508,4,78,2,NULL),(509,5,78,2,NULL),(510,6,78,2,NULL),(511,7,78,2,NULL),(512,8,78,2,NULL),(513,9,78,2,NULL),(514,11,78,2,NULL),(515,12,78,2,NULL),(516,13,78,2,NULL),(517,18,78,2,NULL),(518,19,78,2,NULL),(519,20,78,2,NULL),(520,21,78,2,NULL),(521,22,78,2,NULL),(522,23,78,2,NULL),(523,24,78,2,NULL),(524,25,78,2,NULL),(525,42,78,2,NULL),(526,44,78,2,NULL),(527,45,78,2,NULL),(528,46,78,2,NULL),(529,1,52,2,NULL),(530,2,52,2,NULL),(531,3,52,2,NULL),(532,4,52,2,NULL),(533,5,52,2,NULL),(534,6,52,2,NULL),(535,7,52,2,NULL),(536,8,52,2,NULL),(537,9,52,2,NULL),(538,11,52,2,NULL),(539,12,52,2,NULL),(540,13,52,2,NULL),(541,18,52,2,NULL),(542,19,52,2,NULL),(543,20,52,2,NULL),(544,21,52,2,NULL),(545,22,52,2,NULL),(546,23,52,2,NULL),(547,24,52,2,NULL),(548,25,52,2,NULL),(549,42,52,2,NULL),(550,44,52,2,NULL),(551,45,52,2,NULL),(552,46,52,2,NULL),(553,1,102,2,NULL),(554,2,102,2,NULL),(555,3,102,2,NULL),(556,4,102,2,NULL),(557,5,102,2,NULL),(558,6,102,2,NULL),(559,7,102,2,NULL),(560,8,102,2,NULL),(561,9,102,2,NULL),(562,11,102,2,NULL),(563,12,102,2,NULL),(564,13,102,2,NULL),(565,18,102,2,NULL),(566,19,102,2,NULL),(567,20,102,2,NULL),(568,21,102,2,NULL),(569,22,102,2,NULL),(570,23,102,2,NULL),(571,24,102,2,NULL),(572,25,102,2,NULL),(573,42,102,2,NULL),(574,44,102,2,NULL),(575,45,102,2,NULL),(576,46,102,2,NULL),(577,1,68,2,NULL),(578,2,68,2,NULL),(579,3,68,2,NULL),(580,4,68,2,NULL),(581,5,68,2,NULL),(582,6,68,2,NULL),(583,7,68,2,NULL),(584,8,68,2,NULL),(585,9,68,2,NULL),(586,11,68,2,NULL),(587,12,68,2,NULL),(588,13,68,2,NULL),(589,18,68,2,NULL),(590,19,68,2,NULL),(591,20,68,2,NULL),(592,21,68,2,NULL),(593,22,68,2,NULL),(594,23,68,2,NULL),(595,24,68,2,NULL),(596,25,68,2,NULL),(597,42,68,2,NULL),(598,44,68,2,NULL),(599,45,68,2,NULL),(600,46,68,2,NULL),(601,1,76,2,NULL),(602,2,76,2,NULL),(603,3,76,2,NULL),(604,4,76,2,NULL),(605,5,76,2,NULL),(606,6,76,2,NULL),(607,7,76,2,NULL),(608,8,76,2,NULL),(609,9,76,2,NULL),(610,11,76,2,NULL),(611,12,76,2,NULL),(612,13,76,2,NULL),(613,18,76,2,NULL),(614,19,76,2,NULL),(615,20,76,2,NULL),(616,21,76,2,NULL),(617,22,76,2,NULL),(618,23,76,2,NULL),(619,24,76,2,NULL),(620,25,76,2,NULL),(621,42,76,2,NULL),(622,44,76,2,NULL),(623,45,76,2,NULL),(624,46,76,2,NULL),(625,1,79,2,NULL),(626,2,79,2,NULL),(627,3,79,2,NULL),(628,4,79,2,NULL),(629,5,79,2,NULL),(630,6,79,2,NULL),(631,7,79,2,NULL),(632,8,79,2,NULL),(633,9,79,2,NULL),(634,11,79,2,NULL),(635,12,79,2,NULL),(636,13,79,2,NULL),(637,18,79,2,NULL),(638,19,79,2,NULL),(639,20,79,2,NULL),(640,21,79,2,NULL),(641,22,79,2,NULL),(642,23,79,2,NULL),(643,24,79,2,NULL),(644,25,79,2,NULL),(645,42,79,2,NULL),(646,44,79,2,NULL),(647,45,79,2,NULL),(648,46,79,2,NULL),(649,1,84,2,NULL),(650,2,84,2,NULL),(651,3,84,2,NULL),(652,4,84,2,NULL),(653,5,84,2,NULL),(654,6,84,2,NULL),(655,7,84,2,NULL),(656,8,84,2,NULL),(657,9,84,2,NULL),(658,11,84,2,NULL),(659,12,84,2,NULL),(660,13,84,2,NULL),(661,18,84,2,NULL),(662,19,84,2,NULL),(663,20,84,2,NULL),(664,21,84,2,NULL),(665,22,84,2,NULL),(666,23,84,2,NULL),(667,24,84,2,NULL),(668,25,84,2,NULL),(669,42,84,2,NULL),(670,44,84,2,NULL),(671,45,84,2,NULL),(672,46,84,2,NULL),(673,1,87,2,NULL),(674,2,87,2,NULL),(675,3,87,2,NULL),(676,4,87,2,NULL),(677,5,87,2,NULL),(678,6,87,2,NULL),(679,7,87,2,NULL),(680,8,87,2,NULL),(681,9,87,2,NULL),(682,11,87,2,NULL),(683,12,87,2,NULL),(684,13,87,2,NULL),(685,18,87,2,NULL),(686,19,87,2,NULL),(687,20,87,2,NULL),(688,21,87,2,NULL),(689,22,87,2,NULL),(690,23,87,2,NULL),(691,24,87,2,NULL),(692,25,87,2,NULL),(693,42,87,2,NULL),(694,44,87,2,NULL),(695,45,87,2,NULL),(696,46,87,2,NULL),(697,1,94,2,NULL),(698,2,94,2,NULL),(699,3,94,2,NULL),(700,4,94,2,NULL),(701,5,94,2,NULL),(702,6,94,2,NULL),(703,7,94,2,NULL),(704,8,94,2,NULL),(705,9,94,2,NULL),(706,11,94,2,NULL),(707,12,94,2,NULL),(708,13,94,2,NULL),(709,18,94,2,NULL),(710,19,94,2,NULL),(711,20,94,2,NULL),(712,21,94,2,NULL),(713,22,94,2,NULL),(714,23,94,2,NULL),(715,24,94,2,NULL),(716,25,94,2,NULL),(717,42,94,2,NULL),(718,44,94,2,NULL),(719,45,94,2,NULL),(720,46,94,2,NULL),(721,1,100,2,NULL),(722,2,100,2,NULL),(723,3,100,2,NULL),(724,4,100,2,NULL),(725,5,100,2,NULL),(726,6,100,2,NULL),(727,7,100,2,NULL),(728,8,100,2,NULL),(729,9,100,2,NULL),(730,11,100,2,NULL),(731,12,100,2,NULL),(732,13,100,2,NULL),(733,18,100,2,NULL),(734,19,100,2,NULL),(735,20,100,2,NULL),(736,21,100,2,NULL),(737,22,100,2,NULL),(738,23,100,2,NULL),(739,24,100,2,NULL),(740,25,100,2,NULL),(741,42,100,2,NULL),(742,44,100,2,NULL),(743,45,100,2,NULL),(744,46,100,2,NULL),(745,1,101,2,NULL),(746,2,101,2,NULL),(747,3,101,2,NULL),(748,4,101,2,NULL),(749,5,101,2,NULL),(750,6,101,2,NULL),(751,7,101,2,NULL),(752,8,101,2,NULL),(753,9,101,2,NULL),(754,11,101,2,NULL),(755,12,101,2,NULL),(756,13,101,2,NULL),(757,18,101,2,NULL),(758,19,101,2,NULL),(759,20,101,2,NULL),(760,21,101,2,NULL),(761,22,101,2,NULL),(762,23,101,2,NULL),(763,24,101,2,NULL),(764,25,101,2,NULL),(765,42,101,2,NULL),(766,44,101,2,NULL),(767,45,101,2,NULL),(768,46,101,2,NULL),(769,1,64,2,NULL),(770,2,64,2,NULL),(771,3,64,2,NULL),(772,4,64,2,NULL),(773,5,64,2,NULL),(774,6,64,2,NULL),(775,7,64,2,NULL),(776,8,64,2,NULL),(777,9,64,2,NULL),(778,11,64,2,NULL),(779,12,64,2,NULL),(780,13,64,2,NULL),(781,18,64,2,NULL),(782,19,64,2,NULL),(783,20,64,2,NULL),(784,21,64,2,NULL),(785,22,64,2,NULL),(786,23,64,2,NULL),(787,24,64,2,NULL),(788,25,64,2,NULL),(789,42,64,2,NULL),(790,44,64,2,NULL),(791,45,64,2,NULL),(792,46,64,2,NULL),(793,1,69,2,NULL),(794,2,69,2,NULL),(795,3,69,2,NULL),(796,4,69,2,NULL),(797,5,69,2,NULL),(798,6,69,2,NULL),(799,7,69,2,NULL),(800,8,69,2,NULL),(801,9,69,2,NULL),(802,11,69,2,NULL),(803,12,69,2,NULL),(804,13,69,2,NULL),(805,18,69,2,NULL),(806,19,69,2,NULL),(807,20,69,2,NULL),(808,21,69,2,NULL),(809,22,69,2,NULL),(810,23,69,2,NULL),(811,24,69,2,NULL),(812,25,69,2,NULL),(813,42,69,2,NULL),(814,44,69,2,NULL),(815,45,69,2,NULL),(816,46,69,2,NULL),(817,1,73,2,NULL),(818,2,73,2,NULL),(819,3,73,2,NULL),(820,4,73,2,NULL),(821,5,73,2,NULL),(822,6,73,2,NULL),(823,7,73,2,NULL),(824,8,73,2,NULL),(825,9,73,2,NULL),(826,11,73,2,NULL),(827,12,73,2,NULL),(828,13,73,2,NULL),(829,18,73,2,NULL),(830,19,73,2,NULL),(831,20,73,2,NULL),(832,21,73,2,NULL),(833,22,73,2,NULL),(834,23,73,2,NULL),(835,24,73,2,NULL),(836,25,73,2,NULL),(837,42,73,2,NULL),(838,44,73,2,NULL),(839,45,73,2,NULL),(840,46,73,2,NULL),(841,1,82,2,NULL),(842,2,82,2,NULL),(843,3,82,2,NULL),(844,4,82,2,NULL),(845,5,82,2,NULL),(846,6,82,2,NULL),(847,7,82,2,NULL),(848,8,82,2,NULL),(849,9,82,2,NULL),(850,11,82,2,NULL),(851,12,82,2,NULL),(852,13,82,2,NULL),(853,18,82,2,NULL),(854,19,82,2,NULL),(855,20,82,2,NULL),(856,21,82,2,NULL),(857,22,82,2,NULL),(858,23,82,2,NULL),(859,24,82,2,NULL),(860,25,82,2,NULL),(861,42,82,2,NULL),(862,44,82,2,NULL),(863,45,82,2,NULL),(864,46,82,2,NULL),(865,1,86,2,NULL),(866,2,86,2,NULL),(867,3,86,2,NULL),(868,4,86,2,NULL),(869,5,86,2,NULL),(870,6,86,2,NULL),(871,7,86,2,NULL),(872,8,86,2,NULL),(873,9,86,2,NULL),(874,11,86,2,NULL),(875,12,86,2,NULL),(876,13,86,2,NULL),(877,18,86,2,NULL),(878,19,86,2,NULL),(879,20,86,2,NULL),(880,21,86,2,NULL),(881,22,86,2,NULL),(882,23,86,2,NULL),(883,24,86,2,NULL),(884,25,86,2,NULL),(885,42,86,2,NULL),(886,44,86,2,NULL),(887,45,86,2,NULL),(888,46,86,2,NULL),(889,1,88,2,NULL),(890,2,88,2,NULL),(891,3,88,2,NULL),(892,4,88,2,NULL),(893,5,88,2,NULL),(894,6,88,2,NULL),(895,7,88,2,NULL),(896,8,88,2,NULL),(897,9,88,2,NULL),(898,11,88,2,NULL),(899,12,88,2,NULL),(900,13,88,2,NULL),(901,18,88,2,NULL),(902,19,88,2,NULL),(903,20,88,2,NULL),(904,21,88,2,NULL),(905,22,88,2,NULL),(906,23,88,2,NULL),(907,24,88,2,NULL),(908,25,88,2,NULL),(909,42,88,2,NULL),(910,44,88,2,NULL),(911,45,88,2,NULL),(912,46,88,2,NULL),(913,1,96,2,NULL),(914,2,96,2,NULL),(915,3,96,2,NULL),(916,4,96,2,NULL),(917,5,96,2,NULL),(918,6,96,2,NULL),(919,7,96,2,NULL),(920,8,96,2,NULL),(921,9,96,2,NULL),(922,11,96,2,NULL),(923,12,96,2,NULL),(924,13,96,2,NULL),(925,18,96,2,NULL),(926,19,96,2,NULL),(927,20,96,2,NULL),(928,21,96,2,NULL),(929,22,96,2,NULL),(930,23,96,2,NULL),(931,24,96,2,NULL),(932,25,96,2,NULL),(933,42,96,2,NULL),(934,44,96,2,NULL),(935,45,96,2,NULL),(936,46,96,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(30,'android.permission.ACCESS_FINE_LOCATION'),(34,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(18,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(25,'android.permission.BIND_WALLPAPER'),(36,'android.permission.CAMERA'),(21,'android.permission.FLASHLIGHT'),(28,'android.permission.GET_ACCOUNTS'),(31,'android.permission.GET_TASKS'),(11,'android.permission.INTERNET'),(27,'android.permission.PROCESS_OUTGOING_CALLS'),(33,'android.permission.READ_CONTACTS'),(35,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(26,'android.permission.SET_WALLPAPER'),(29,'android.permission.SET_WALLPAPER_HINTS'),(15,'android.permission.VIBRATE'),(24,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(16,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(32,'com.android.vending.BILLING'),(13,'com.fede.launcher.permission.READ_SETTINGS'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(17,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(20,'com.motorola.launcher.permission.READ_SETTINGS'),(14,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,1,2),(3,2,3),(4,4,4),(5,7,5),(6,15,10),(7,23,17);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,1,12),(14,2,2),(15,1,13),(16,2,3),(17,1,14),(18,2,4),(19,1,15),(20,2,5),(21,1,17),(22,2,6),(23,1,16),(24,2,7),(25,1,19),(26,2,8),(27,1,18),(28,2,9),(29,1,20),(30,2,10),(31,2,11),(32,2,12),(33,2,13),(34,2,14),(35,2,15),(36,2,17),(37,2,16),(38,2,19),(39,2,18),(40,2,21),(41,2,20),(42,3,1),(43,3,2),(44,3,3),(45,3,4),(46,3,5),(47,3,6),(48,3,7),(49,3,8),(50,3,9),(51,3,10),(52,3,11),(53,3,12),(54,3,13),(55,3,14),(56,3,15),(57,3,17),(58,3,16),(59,3,19),(60,3,18),(61,3,20),(62,3,23),(63,3,22),(64,3,24),(65,4,1),(66,4,2),(67,4,3),(68,4,4),(69,4,5),(70,5,1),(71,4,6),(72,5,32),(73,4,7),(74,5,2),(75,4,8),(76,5,3),(77,4,9),(78,5,4),(79,4,10),(80,5,5),(81,4,11),(82,5,6),(83,4,12),(84,5,7),(85,4,13),(86,5,8),(87,4,14),(88,5,10),(89,4,17),(90,5,11),(91,4,16),(92,5,13),(93,4,19),(94,5,14),(95,4,18),(96,5,17),(97,4,20),(98,5,16),(99,4,23),(100,5,18),(101,4,22),(102,5,20),(103,4,24),(104,5,23),(105,4,27),(106,5,24),(107,4,26),(108,5,31),(109,4,29),(110,5,30),(111,4,28),(112,4,30),(113,6,1),(114,6,2),(115,6,3),(116,6,4),(117,6,5),(118,7,1),(119,6,6),(120,7,2),(121,6,7),(122,7,3),(123,6,8),(124,7,4),(125,6,9),(126,6,10),(127,7,5),(128,6,11),(129,7,6),(130,7,7),(131,6,12),(132,7,8),(133,6,13),(134,7,9),(135,6,14),(136,6,17),(137,7,10),(138,7,11),(139,6,16),(140,6,19),(141,7,12),(142,7,13),(143,6,18),(144,7,14),(145,6,20),(146,7,17),(147,6,23),(148,7,16),(149,6,22),(150,7,19),(151,6,24),(152,6,27),(153,7,18),(154,7,20),(155,6,26),(156,7,23),(157,6,29),(158,6,28),(159,7,22),(160,7,24),(161,6,30),(162,7,28),(163,6,34),(164,7,30),(165,6,33),(166,7,34),(167,7,35),(168,7,33),(169,7,36);
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

-- Dump completed on 2015-10-12  3:31:17
