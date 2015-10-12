-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_548
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
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CHOOSER'),(16,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(21,'android.intent.action.SENDTO'),(11,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(12,'com.airpush.android.PushServiceStart(.*)'),(7,'com.airpush.android.PushServiceStart12856'),(9,'com.airpush.android.PushServiceStart12924'),(8,'com.airpush.android.PushServiceStart15312'),(3,'com.airpush.android.PushServiceStart28183'),(13,'com.airpush.android.PushServiceStartInvalid'),(17,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(14,'com.airpush.android.PushServiceStartinvalid Id'),(18,'com.android.music.musicservicecommand'),(4,'com.appenda.AppNotify'),(6,'com.appenda.INSTALL_INTENT');
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
INSERT INTO `Applications` VALUES (1,'com.inoxapps.fallingsperm',3),(2,'com.floydlabs.finger_security_scanner',2),(3,'com.inoxapps.finger_security_aqua',5),(4,'com.iphonelocker.iphonelocker04_love',1),(5,'com.inoxapps.finger_security1',2),(6,'com.livewallpaper.livewp06_haydenpanettiere',1),(7,'com.iphonelocker.iphonelocker04_deer',1);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.ALTERNATIVE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(4,'android.intent.category.LAUNCHER'),(6,'android.intent.category.SELECTED_ALTERNATIVE');
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
INSERT INTO `Classes` VALUES (1,1,'com.inoxapps.fallingsperm.AppLauncher'),(2,1,'com.moreapps.code.XMLParsingDOMExample'),(3,1,'com.airpush.android.PushAds'),(4,1,'com.inoxapps.fallingsperm.Gallery_Activity'),(5,1,'com.inoxapps.fallingsperm.SnowWallpaperSettings'),(6,1,'com.inoxapps.fallingsperm.SnowWallpaper'),(7,1,'com.airpush.android.PushService'),(8,1,'com.appenda.AppNotify'),(9,1,'com.airpush.android.UserDetailsReceiver'),(10,1,'com.airpush.android.MessageReceiver'),(11,1,'com.airpush.android.DeliveryReceiver'),(12,1,'com.inoxapps.fallingsperm.BootReceiver'),(13,1,'com.appenda.BootReceiver'),(14,2,'com.floydlabs.finger_security_scanner.FingerSecurityScanner'),(15,2,'com.millennialmedia.android.MMAdViewOverlayActivity'),(16,2,'com.millennialmedia.android.VideoPlayer'),(17,3,'com.inoxapps.finger_security_aqua.FingerSecurityScanner'),(18,2,'com.floydlabs.finger_security_scanner.FingerAct'),(19,2,'com.airpush.android.PushAds'),(20,3,'com.inoxapps.finger_security_aqua.FingerAct'),(21,2,'com.mobfox.sdk.InAppWebView'),(22,3,'com.inoxapps.finger_security_aqua.HomeLauncher'),(23,2,'com.floydlabs.finger_security_scanner.Ser'),(24,2,'com.airpush.android.PushService'),(25,3,'com.inoxapps.finger_security_aqua.SetupWizard1'),(26,3,'com.inoxapps.finger_security_aqua.SetupWizard2'),(27,2,'com.airpush.android.UserDetailsReceiver'),(28,3,'com.inoxapps.finger_security_aqua.SetupWizard3'),(29,2,'com.airpush.android.MessageReceiver'),(30,3,'com.inoxapps.finger_security_aqua.SetupWizard4'),(31,2,'com.airpush.android.DeliveryReceiver'),(32,3,'com.inoxapps.finger_security_aqua.SetupWizard5'),(33,2,'com.floydlabs.finger_security_scanner.BootReceiver'),(34,3,'com.google.ads.AdActivity'),(35,3,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(36,3,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(37,3,'com.airpush.android.PushAds'),(38,3,'com.inoxapps.finger_security_aqua.FingerService'),(39,3,'com.airpush.android.PushService'),(40,3,'com.airpush.android.UserDetailsReceiver'),(41,3,'com.airpush.android.MessageReceiver'),(42,3,'com.airpush.android.DeliveryReceiver'),(43,5,'com.inoxapps.finger_security1.FingerSecurityScanner'),(44,3,'com.inoxapps.finger_security_aqua.BootReceiver'),(45,4,'com.iphonelocker.iphonelocker04_love.Iphonelocker'),(46,5,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(47,5,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(48,6,'com.livewallpaper.livewp06_haydenpanettiere.LiveWallpaperSettings'),(49,4,'com.iphonelocker.iphonelocker04_love.SwipeImage'),(50,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(51,6,'com.airpush.android.PushAds'),(52,4,'com.iphonelocker.iphonelocker04_love.HomeLauncher'),(53,5,'com.millennialmedia.android.VideoPlayer'),(54,6,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(55,5,'com.inoxapps.finger_security1.FingerAct'),(56,6,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(57,5,'com.airpush.android.PushAds'),(58,4,'com.iphonelocker.iphonelocker04_love.SetupWizard1'),(59,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(60,5,'com.inoxapps.finger_security1.Ser'),(61,4,'com.iphonelocker.iphonelocker04_love.SetupWizard2'),(62,6,'com.millennialmedia.android.VideoPlayer'),(63,5,'com.airpush.android.PushService'),(64,4,'com.iphonelocker.iphonelocker04_love.SetupWizard3'),(65,6,'com.livewallpaper.livewp06_haydenpanettiere.LiveWallpaperService'),(66,4,'com.iphonelocker.iphonelocker04_love.SetupWizard4'),(67,7,'com.iphonelocker.iphonelocker04_deer.Iphonelocker'),(68,5,'com.appenda.AppNotify'),(69,4,'com.iphonelocker.iphonelocker04_love.SetupWizard5'),(70,6,'com.airpush.android.PushService'),(71,4,'com.iphonelocker.iphonelocker04_love.SliderList'),(72,5,'com.airpush.android.UserDetailsReceiver'),(73,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(74,4,'com.iphonelocker.iphonelocker04_love.GalleryView'),(75,6,'com.appenda.AppNotify'),(76,5,'com.airpush.android.MessageReceiver'),(77,7,'com.millennialmedia.android.VideoPlayer'),(78,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(79,5,'com.airpush.android.DeliveryReceiver'),(80,4,'com.millennialmedia.android.VideoPlayer'),(81,7,'com.iphonelocker.iphonelocker04_deer.GalleryView'),(82,5,'com.inoxapps.finger_security1.BootReceiver'),(83,6,'com.airpush.android.UserDetailsReceiver'),(84,4,'com.airpush.android.PushAds'),(85,7,'com.airpush.android.PushAds'),(86,6,'com.airpush.android.MessageReceiver'),(87,4,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(88,7,'com.iphonelocker.iphonelocker04_deer.SwipeImage'),(89,6,'com.airpush.android.DeliveryReceiver'),(90,5,'com.appenda.BootReceiver'),(91,4,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(92,7,'com.google.ads.AdActivity'),(93,6,'com.livewallpaper.livewp06_haydenpanettiere.BootReceiver'),(94,7,'com.iphonelocker.iphonelocker04_deer.Ser'),(95,4,'com.iphonelocker.iphonelocker04_love.Ser'),(96,4,'com.airpush.android.PushService'),(97,7,'com.airpush.android.PushService'),(98,6,'com.appenda.BootReceiver'),(99,4,'com.appenda.AppNotify'),(100,4,'com.airpush.android.UserDetailsReceiver'),(101,4,'com.airpush.android.MessageReceiver'),(102,4,'com.airpush.android.DeliveryReceiver'),(103,4,'com.iphonelocker.iphonelocker04_love.BootReceiver'),(104,4,'com.appenda.BootReceiver'),(105,2,'com.floydlabs.finger_security_scanner.FingerSecurityScanner$2'),(106,2,'com.millennialmedia.android.MillennialMediaView'),(107,2,'com.floydlabs.finger_security_scanner.BReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'overlayTransition'),(2,15,'shouldMakeOverlayTransparent'),(3,31,'imei'),(4,19,'campId'),(5,16,'isCachedAd'),(6,24,'title'),(7,24,'creativeId'),(8,31,'header'),(9,31,'creativeId'),(10,31,'number'),(11,24,'header'),(12,19,'appId'),(13,15,'shouldResizeOverlay'),(14,24,'number'),(15,24,'appId'),(16,19,'creativeId'),(17,24,'apikey'),(18,15,'shouldShowTitlebar'),(19,19,'apikey'),(20,24,'adType'),(21,24,'type'),(22,31,'imageurl'),(23,31,'appId'),(24,19,'number'),(25,16,'logSet'),(26,16,'videoAd'),(27,15,'shouldShowBottomBar'),(28,24,'campId'),(29,19,'header'),(30,16,'videoCompleted'),(31,15,'cachedAdView'),(32,16,'videoPosition'),(33,31,'apikey'),(34,24,'sms'),(35,31,'campId'),(36,24,'url'),(37,24,'text'),(38,24,'imageurl'),(39,31,'text'),(40,19,'sms'),(41,31,'title'),(42,19,'url'),(43,15,'shouldEnableBottomBar'),(44,24,'link'),(45,15,'canAccelerate'),(46,19,'adType'),(47,16,'adName'),(48,15,'transitionTime'),(49,31,'sms'),(50,16,'shouldShowBottomBar'),(51,16,'cached'),(52,31,'url'),(53,24,'testMode'),(54,19,'test'),(55,16,'videoCompletedOnce'),(56,15,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',1,11,NULL),(7,7,'s',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',1,11,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'s',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',1,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,80,'a',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'r',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,91,'a',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,95,'s',0,NULL,NULL),(95,94,'s',0,NULL,NULL),(96,96,'s',1,NULL,NULL),(97,97,'s',1,NULL,NULL),(98,98,'r',1,NULL,NULL),(99,99,'s',1,NULL,NULL),(100,100,'r',0,NULL,NULL),(101,101,'r',0,NULL,NULL),(102,102,'r',0,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,107,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,27),(3,3,14),(4,4,16),(5,5,16),(6,6,16),(7,7,14),(8,8,31),(9,9,16),(10,10,16),(11,11,16),(12,12,14),(13,13,19),(14,14,29),(15,15,19),(16,16,14),(17,17,16),(18,18,19),(19,19,19),(20,20,19),(21,21,16);
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
INSERT INTO `ExitPoints` VALUES (1,14,'<com.floydlabs.finger_security_scanner.FingerSecurityScanner: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(2,27,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(3,14,'<com.floydlabs.finger_security_scanner.FingerSecurityScanner: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(4,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(5,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(6,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(7,105,'<com.floydlabs.finger_security_scanner.FingerSecurityScanner$2: boolean onPreferenceClick(android.preference.Preference)>',11,'s',NULL),(8,31,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(9,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(10,106,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(11,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(12,14,'<com.floydlabs.finger_security_scanner.FingerSecurityScanner: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(13,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(14,29,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(15,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(16,14,'<com.floydlabs.finger_security_scanner.FingerSecurityScanner: void servicecheck()>',7,'s',NULL),(17,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(18,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(19,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(20,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(21,16,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,2,12),(3,3,13),(4,4,14),(5,5,15),(6,6,15),(7,7,15),(8,8,15),(9,9,15),(10,10,15),(11,11,15),(12,12,15),(13,14,16),(14,15,11),(15,18,12),(16,19,12),(17,20,17),(18,21,12),(19,22,12),(20,23,17),(21,24,17),(22,25,17),(23,26,11),(24,27,18),(25,28,11),(26,29,11),(27,30,12),(28,31,17),(29,32,12),(30,33,14),(31,34,13),(32,35,12),(33,36,17),(34,38,11),(35,39,16),(36,40,21),(37,41,12),(38,42,17);
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
INSERT INTO `IClasses` VALUES (1,13,'com/millennialmedia/android/MMAdViewOverlayActivity'),(2,16,'com/floydlabs/finger_security_scanner/Ser'),(3,37,'com/floydlabs/finger_security_scanner/Ser'),(4,43,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,13,2),(3,14,3),(4,15,4),(5,26,5),(6,28,6),(7,29,7),(8,38,8),(9,39,9),(10,40,10),(11,43,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'appId'),(2,2,'type'),(3,2,'apikey'),(4,3,'appId'),(5,3,'type'),(6,3,'apikey'),(7,4,'appId'),(8,4,'type'),(9,4,'apikey'),(10,5,'android.intent.extra.INTENT'),(11,6,'android.intent.extra.INTENT'),(12,7,'android.intent.extra.TITLE'),(13,7,'android.intent.extra.INTENT'),(14,8,'android.intent.extra.INTENT'),(15,9,'android.intent.extra.TITLE'),(16,9,'android.intent.extra.INTENT'),(17,10,'android.intent.extra.INTENT'),(18,11,'android.intent.extra.TITLE'),(19,11,'android.intent.extra.INTENT'),(20,12,'android.intent.extra.TITLE'),(21,12,'android.intent.extra.INTENT'),(22,13,'cachedAdView'),(23,18,'campId'),(24,18,'text'),(25,18,'title'),(26,18,'creativeId'),(27,18,'appId'),(28,18,'expiry_time'),(29,18,'number'),(30,18,'adType'),(31,18,'type'),(32,18,'sms'),(33,18,'imageurl'),(34,18,'apikey'),(35,19,'campId'),(36,19,'title'),(37,19,'text'),(38,19,'creativeId'),(39,19,'appId'),(40,19,'expiry_time'),(41,19,'link'),(42,19,'adType'),(43,19,'type'),(44,19,'imageurl'),(45,19,'header'),(46,19,'apikey'),(47,20,'campId'),(48,20,'text'),(49,20,'title'),(50,20,'creativeId'),(51,20,'appId'),(52,20,'expiry_time'),(53,20,'number'),(54,20,'adType'),(55,20,'type'),(56,20,'sms'),(57,20,'imageurl'),(58,20,'apikey'),(59,21,'title'),(60,21,'text'),(61,21,'appId'),(62,21,'expiry_time'),(63,21,'number'),(64,21,'adType'),(65,21,'type'),(66,21,'imageurl'),(67,21,'apikey'),(68,22,'campId'),(69,22,'title'),(70,22,'text'),(71,22,'creativeId'),(72,22,'appId'),(73,22,'expiry_time'),(74,22,'link'),(75,22,'adType'),(76,22,'type'),(77,22,'imageurl'),(78,22,'apikey'),(79,23,'campId'),(80,23,'title'),(81,23,'text'),(82,23,'creativeId'),(83,23,'appId'),(84,23,'expiry_time'),(85,23,'link'),(86,23,'adType'),(87,23,'type'),(88,23,'imageurl'),(89,23,'header'),(90,23,'apikey'),(91,24,'title'),(92,24,'text'),(93,24,'appId'),(94,24,'expiry_time'),(95,24,'number'),(96,24,'adType'),(97,24,'type'),(98,24,'imageurl'),(99,24,'apikey'),(100,25,'campId'),(101,25,'title'),(102,25,'text'),(103,25,'creativeId'),(104,25,'appId'),(105,25,'expiry_time'),(106,25,'link'),(107,25,'adType'),(108,25,'type'),(109,25,'imageurl'),(110,25,'apikey'),(111,27,'command'),(112,30,'<INTENT>'),(113,30,'type'),(114,31,'<INTENT>'),(115,31,'type'),(116,32,'icon'),(117,32,'appId'),(118,32,'testMode'),(119,32,'type'),(120,32,'apikey'),(121,33,'icon'),(122,33,'appId'),(123,33,'testMode'),(124,33,'type'),(125,33,'apikey'),(126,34,'icon'),(127,34,'appId'),(128,34,'testMode'),(129,34,'type'),(130,34,'apikey'),(131,35,'<INTENT>'),(132,35,'type'),(133,36,'<INTENT>'),(134,36,'type'),(135,40,'sms_body'),(136,41,'<INTENT>'),(137,41,'type'),(138,42,'<INTENT>'),(139,42,'type'),(140,43,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,6,5),(8,7,1),(9,8,1),(10,9,1),(11,10,7),(12,11,5),(13,12,7),(14,13,1),(15,14,5),(16,15,1),(17,16,1),(18,17,7),(19,18,2),(20,19,1),(21,20,4),(22,21,8),(23,22,4),(24,23,5),(25,24,6),(26,24,5),(27,25,5),(28,26,9),(29,27,6),(30,27,5),(31,28,4),(32,29,5),(33,30,5),(34,30,6),(35,31,20),(36,31,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,2),(3,7,6),(4,7,3),(5,7,4),(6,7,5),(7,8,4),(8,9,2),(9,9,3),(10,11,2),(11,13,6),(12,13,5),(13,13,4),(14,13,3),(15,14,2),(16,15,4),(17,15,5),(18,15,3),(19,15,6),(20,16,2),(21,16,3),(22,19,6),(23,19,3),(24,19,5),(25,19,4),(26,23,2),(27,25,2),(28,29,2);
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
INSERT INTO `IPackages` VALUES (1,13,'com.floydlabs.finger_security_scanner'),(2,16,'com.floydlabs.finger_security_scanner'),(3,37,'com.floydlabs.finger_security_scanner'),(4,43,'com.floydlabs.finger_security_scanner');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,12,0),(6,13,0),(7,14,0),(8,17,0),(9,22,0),(10,24,0),(11,33,0),(12,39,0),(13,43,0),(14,44,0),(15,45,0),(16,52,0),(17,63,0),(18,65,0),(19,67,0),(20,68,0),(21,70,0),(22,75,0),(23,82,0),(24,90,0),(25,93,0),(26,96,0),(27,98,0),(28,99,0),(29,103,0),(30,104,0),(31,105,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,3,1,0),(12,3,1,0),(13,4,0,0),(14,5,1,0),(15,6,1,0),(16,7,0,0),(17,8,1,0),(18,8,1,0),(19,8,1,0),(20,8,1,0),(21,8,1,0),(22,8,1,0),(23,8,1,0),(24,8,1,0),(25,8,1,0),(26,9,1,0),(27,10,1,0),(28,11,1,0),(29,12,1,0),(30,13,1,0),(31,13,1,0),(32,14,1,0),(33,14,1,0),(34,14,1,0),(35,15,1,0),(36,15,1,0),(37,16,0,0),(38,17,1,0),(39,18,1,0),(40,19,1,0),(41,20,1,0),(42,20,1,0),(43,21,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,37,23,2,NULL),(2,5,1,2,NULL),(3,6,1,2,NULL),(4,7,1,2,NULL),(5,8,1,2,NULL),(6,9,1,2,NULL),(7,10,1,2,NULL),(8,11,1,2,NULL),(9,12,1,2,NULL),(10,5,6,2,NULL),(11,6,6,2,NULL),(12,7,6,2,NULL),(13,8,6,2,NULL),(14,9,6,2,NULL),(15,10,6,2,NULL),(16,11,6,2,NULL),(17,12,6,2,NULL),(18,5,7,2,NULL),(19,6,7,2,NULL),(20,7,7,2,NULL),(21,8,7,2,NULL),(22,9,7,2,NULL),(23,10,7,2,NULL),(24,11,7,2,NULL),(25,12,7,2,NULL),(26,5,8,2,NULL),(27,6,8,2,NULL),(28,7,8,2,NULL),(29,8,8,2,NULL),(30,9,8,2,NULL),(31,10,8,2,NULL),(32,11,8,2,NULL),(33,12,8,2,NULL),(34,5,12,2,NULL),(35,6,12,2,NULL),(36,7,12,2,NULL),(37,8,12,2,NULL),(38,9,12,2,NULL),(39,10,12,2,NULL),(40,11,12,2,NULL),(41,12,12,2,NULL),(42,5,13,2,NULL),(43,6,13,2,NULL),(44,7,13,2,NULL),(45,8,13,2,NULL),(46,9,13,2,NULL),(47,10,13,2,NULL),(48,11,13,2,NULL),(49,12,13,2,NULL),(50,14,14,2,NULL),(51,15,14,2,NULL),(52,26,14,2,NULL),(53,28,14,2,NULL),(54,38,14,2,NULL),(55,30,14,2,NULL),(56,31,14,2,NULL),(57,35,14,2,NULL),(58,36,14,2,NULL),(59,39,14,2,NULL),(60,40,14,2,NULL),(61,41,14,2,NULL),(62,42,14,2,NULL),(63,5,24,2,NULL),(64,6,24,2,NULL),(65,7,24,2,NULL),(66,8,24,2,NULL),(67,9,24,2,NULL),(68,10,24,2,NULL),(69,11,24,2,NULL),(70,12,24,2,NULL),(71,2,14,2,NULL),(72,3,14,2,NULL),(73,4,14,2,NULL),(74,32,14,2,NULL),(75,33,14,2,NULL),(76,34,14,2,NULL),(77,17,14,2,NULL),(78,18,14,2,NULL),(79,19,14,2,NULL),(80,20,14,2,NULL),(81,21,14,2,NULL),(82,22,14,2,NULL),(83,23,14,2,NULL),(84,24,14,2,NULL),(85,25,14,2,NULL),(86,5,33,2,NULL),(87,6,33,2,NULL),(88,7,33,2,NULL),(89,8,33,2,NULL),(90,9,33,2,NULL),(91,10,33,2,NULL),(92,11,33,2,NULL),(93,12,33,2,NULL),(94,5,105,2,NULL),(95,6,105,2,NULL),(96,7,105,2,NULL),(97,8,105,2,NULL),(98,9,105,2,NULL),(99,10,105,2,NULL),(100,11,105,2,NULL),(101,12,105,2,NULL),(102,5,17,2,NULL),(103,6,17,2,NULL),(104,7,17,2,NULL),(105,8,17,2,NULL),(106,9,17,2,NULL),(107,10,17,2,NULL),(108,11,17,2,NULL),(109,12,17,2,NULL),(110,5,22,2,NULL),(111,6,22,2,NULL),(112,7,22,2,NULL),(113,8,22,2,NULL),(114,9,22,2,NULL),(115,10,22,2,NULL),(116,11,22,2,NULL),(117,12,22,2,NULL),(118,5,39,2,NULL),(119,6,39,2,NULL),(120,7,39,2,NULL),(121,8,39,2,NULL),(122,9,39,2,NULL),(123,10,39,2,NULL),(124,11,39,2,NULL),(125,12,39,2,NULL),(126,5,44,2,NULL),(127,6,44,2,NULL),(128,7,44,2,NULL),(129,8,44,2,NULL),(130,9,44,2,NULL),(131,10,44,2,NULL),(132,11,44,2,NULL),(133,12,44,2,NULL),(134,5,45,2,NULL),(135,6,45,2,NULL),(136,7,45,2,NULL),(137,8,45,2,NULL),(138,9,45,2,NULL),(139,10,45,2,NULL),(140,11,45,2,NULL),(141,12,45,2,NULL),(142,5,52,2,NULL),(143,6,52,2,NULL),(144,7,52,2,NULL),(145,8,52,2,NULL),(146,9,52,2,NULL),(147,10,52,2,NULL),(148,11,52,2,NULL),(149,12,52,2,NULL),(150,5,96,2,NULL),(151,6,96,2,NULL),(152,7,96,2,NULL),(153,8,96,2,NULL),(154,9,96,2,NULL),(155,10,96,2,NULL),(156,11,96,2,NULL),(157,12,96,2,NULL),(158,5,99,2,NULL),(159,6,99,2,NULL),(160,7,99,2,NULL),(161,8,99,2,NULL),(162,9,99,2,NULL),(163,10,99,2,NULL),(164,11,99,2,NULL),(165,12,99,2,NULL),(166,5,103,2,NULL),(167,6,103,2,NULL),(168,7,103,2,NULL),(169,8,103,2,NULL),(170,9,103,2,NULL),(171,10,103,2,NULL),(172,11,103,2,NULL),(173,12,103,2,NULL),(174,5,104,2,NULL),(175,6,104,2,NULL),(176,7,104,2,NULL),(177,8,104,2,NULL),(178,9,104,2,NULL),(179,10,104,2,NULL),(180,11,104,2,NULL),(181,12,104,2,NULL),(182,5,43,2,NULL),(183,6,43,2,NULL),(184,7,43,2,NULL),(185,8,43,2,NULL),(186,9,43,2,NULL),(187,10,43,2,NULL),(188,11,43,2,NULL),(189,12,43,2,NULL),(190,5,63,2,NULL),(191,6,63,2,NULL),(192,7,63,2,NULL),(193,8,63,2,NULL),(194,9,63,2,NULL),(195,10,63,2,NULL),(196,11,63,2,NULL),(197,12,63,2,NULL),(198,5,68,2,NULL),(199,6,68,2,NULL),(200,7,68,2,NULL),(201,8,68,2,NULL),(202,9,68,2,NULL),(203,10,68,2,NULL),(204,11,68,2,NULL),(205,12,68,2,NULL),(206,5,82,2,NULL),(207,6,82,2,NULL),(208,7,82,2,NULL),(209,8,82,2,NULL),(210,9,82,2,NULL),(211,10,82,2,NULL),(212,11,82,2,NULL),(213,12,82,2,NULL),(214,5,90,2,NULL),(215,6,90,2,NULL),(216,7,90,2,NULL),(217,8,90,2,NULL),(218,9,90,2,NULL),(219,10,90,2,NULL),(220,11,90,2,NULL),(221,12,90,2,NULL),(222,5,65,2,NULL),(223,6,65,2,NULL),(224,7,65,2,NULL),(225,8,65,2,NULL),(226,9,65,2,NULL),(227,10,65,2,NULL),(228,11,65,2,NULL),(229,12,65,2,NULL),(230,5,70,2,NULL),(231,6,70,2,NULL),(232,7,70,2,NULL),(233,8,70,2,NULL),(234,9,70,2,NULL),(235,10,70,2,NULL),(236,11,70,2,NULL),(237,12,70,2,NULL),(238,5,75,2,NULL),(239,6,75,2,NULL),(240,7,75,2,NULL),(241,8,75,2,NULL),(242,9,75,2,NULL),(243,10,75,2,NULL),(244,11,75,2,NULL),(245,12,75,2,NULL),(246,5,93,2,NULL),(247,6,93,2,NULL),(248,7,93,2,NULL),(249,8,93,2,NULL),(250,9,93,2,NULL),(251,10,93,2,NULL),(252,11,93,2,NULL),(253,12,93,2,NULL),(254,5,98,2,NULL),(255,6,98,2,NULL),(256,7,98,2,NULL),(257,8,98,2,NULL),(258,9,98,2,NULL),(259,10,98,2,NULL),(260,11,98,2,NULL),(261,12,98,2,NULL),(262,5,67,2,NULL),(263,6,67,2,NULL),(264,7,67,2,NULL),(265,8,67,2,NULL),(266,9,67,2,NULL),(267,10,67,2,NULL),(268,11,67,2,NULL),(269,12,67,2,NULL),(270,13,15,2,NULL),(271,13,50,2,NULL),(272,13,59,2,NULL),(273,13,73,2,NULL),(274,13,77,2,NULL),(275,43,15,2,NULL),(276,43,50,2,NULL),(277,43,59,2,NULL),(278,43,73,2,NULL),(279,43,77,2,NULL),(280,14,1,2,NULL),(281,15,1,2,NULL),(282,26,1,2,NULL),(283,28,1,2,NULL),(284,38,1,2,NULL),(285,14,6,2,NULL),(286,15,6,2,NULL),(287,26,6,2,NULL),(288,28,6,2,NULL),(289,14,45,2,NULL),(290,38,6,2,NULL),(291,15,45,2,NULL),(292,14,7,2,NULL),(293,26,45,2,NULL),(294,15,7,2,NULL),(295,26,7,2,NULL),(296,28,45,2,NULL),(297,28,7,2,NULL),(298,38,45,2,NULL),(299,38,7,2,NULL),(300,30,45,2,NULL),(301,14,8,2,NULL),(302,15,8,2,NULL),(303,31,45,2,NULL),(304,26,8,2,NULL),(305,28,8,2,NULL),(306,35,45,2,NULL),(307,38,8,2,NULL),(308,36,45,2,NULL),(309,14,12,2,NULL),(310,39,45,2,NULL),(311,15,12,2,NULL),(312,40,45,2,NULL),(313,26,12,2,NULL),(314,41,45,2,NULL),(315,28,12,2,NULL),(316,42,45,2,NULL),(317,38,12,2,NULL),(318,2,45,2,NULL),(319,14,13,2,NULL),(320,3,45,2,NULL),(321,15,13,2,NULL),(322,4,45,2,NULL),(323,26,13,2,NULL),(324,32,45,2,NULL),(325,28,13,2,NULL),(326,33,45,2,NULL),(327,38,13,2,NULL),(328,34,45,2,NULL),(329,14,24,2,NULL),(330,17,45,2,NULL),(331,15,24,2,NULL),(332,18,45,2,NULL),(333,26,24,2,NULL),(334,19,45,2,NULL),(335,28,24,2,NULL),(336,20,45,2,NULL),(337,38,24,2,NULL),(338,21,45,2,NULL),(339,14,33,2,NULL),(340,22,45,2,NULL),(341,15,33,2,NULL),(342,23,45,2,NULL),(343,26,33,2,NULL),(344,24,45,2,NULL),(345,28,33,2,NULL),(346,25,45,2,NULL),(347,38,33,2,NULL),(348,14,52,2,NULL),(349,14,105,2,NULL),(350,15,52,2,NULL),(351,15,105,2,NULL),(352,26,52,2,NULL),(353,26,105,2,NULL),(354,28,52,2,NULL),(355,28,105,2,NULL),(356,38,52,2,NULL),(357,38,105,2,NULL),(358,30,52,2,NULL),(359,14,17,2,NULL),(360,31,52,2,NULL),(361,15,17,2,NULL),(362,35,52,2,NULL),(363,26,17,2,NULL),(364,36,52,2,NULL),(365,28,17,2,NULL),(366,39,52,2,NULL),(367,38,17,2,NULL),(368,40,52,2,NULL),(369,14,22,2,NULL),(370,41,52,2,NULL),(371,15,22,2,NULL),(372,42,52,2,NULL),(373,26,22,2,NULL),(374,2,52,2,NULL),(375,28,22,2,NULL),(376,3,52,2,NULL),(377,38,22,2,NULL),(378,4,52,2,NULL),(379,14,39,2,NULL),(380,32,52,2,NULL),(381,15,39,2,NULL),(382,33,52,2,NULL),(383,26,39,2,NULL),(384,34,52,2,NULL),(385,28,39,2,NULL),(386,17,52,2,NULL),(387,38,39,2,NULL),(388,18,52,2,NULL),(389,14,44,2,NULL),(390,19,52,2,NULL),(391,15,44,2,NULL),(392,20,52,2,NULL),(393,26,44,2,NULL),(394,21,52,2,NULL),(395,28,44,2,NULL),(396,22,52,2,NULL),(397,38,44,2,NULL),(398,23,52,2,NULL),(399,14,96,2,NULL),(400,24,52,2,NULL),(401,15,96,2,NULL),(402,25,52,2,NULL),(403,26,96,2,NULL),(404,28,96,2,NULL),(405,38,96,2,NULL),(406,30,96,2,NULL),(407,14,99,2,NULL),(408,31,96,2,NULL),(409,15,99,2,NULL),(410,35,96,2,NULL),(411,26,99,2,NULL),(412,36,96,2,NULL),(413,28,99,2,NULL),(414,39,96,2,NULL),(415,38,99,2,NULL),(416,40,96,2,NULL),(417,14,103,2,NULL),(418,41,96,2,NULL),(419,30,17,2,NULL),(420,15,103,2,NULL),(421,42,96,2,NULL),(422,31,17,2,NULL),(423,26,103,2,NULL),(424,2,96,2,NULL),(425,35,17,2,NULL),(426,28,103,2,NULL),(427,3,96,2,NULL),(428,36,17,2,NULL),(429,38,103,2,NULL),(430,4,96,2,NULL),(431,39,17,2,NULL),(432,14,104,2,NULL),(433,32,96,2,NULL),(434,40,17,2,NULL),(435,15,104,2,NULL),(436,33,96,2,NULL),(437,41,17,2,NULL),(438,26,104,2,NULL),(439,34,96,2,NULL),(440,42,17,2,NULL),(441,28,104,2,NULL),(442,17,96,2,NULL),(443,38,104,2,NULL),(444,2,17,2,NULL),(445,18,96,2,NULL),(446,14,43,2,NULL),(447,3,17,2,NULL),(448,19,96,2,NULL),(449,15,43,2,NULL),(450,20,96,2,NULL),(451,4,17,2,NULL),(452,26,43,2,NULL),(453,21,96,2,NULL),(454,28,43,2,NULL),(455,32,17,2,NULL),(456,22,96,2,NULL),(457,38,43,2,NULL),(458,33,17,2,NULL),(459,23,96,2,NULL),(460,14,63,2,NULL),(461,34,17,2,NULL),(462,24,96,2,NULL),(463,15,63,2,NULL),(464,17,17,2,NULL),(465,25,96,2,NULL),(466,26,63,2,NULL),(467,18,17,2,NULL),(468,30,99,2,NULL),(469,28,63,2,NULL),(470,19,17,2,NULL),(471,31,99,2,NULL),(472,38,63,2,NULL),(473,20,17,2,NULL),(474,35,99,2,NULL),(475,14,68,2,NULL),(476,21,17,2,NULL),(477,36,99,2,NULL),(478,15,68,2,NULL),(479,22,17,2,NULL),(480,39,99,2,NULL),(481,26,68,2,NULL),(482,23,17,2,NULL),(483,40,99,2,NULL),(484,28,68,2,NULL),(485,24,17,2,NULL),(486,41,99,2,NULL),(487,38,68,2,NULL),(488,25,17,2,NULL),(489,42,99,2,NULL),(490,14,82,2,NULL),(491,30,22,2,NULL),(492,2,99,2,NULL),(493,15,82,2,NULL),(494,31,22,2,NULL),(495,3,99,2,NULL),(496,26,82,2,NULL),(497,35,22,2,NULL),(498,4,99,2,NULL),(499,28,82,2,NULL),(500,36,22,2,NULL),(501,32,99,2,NULL),(502,38,82,2,NULL),(503,39,22,2,NULL),(504,33,99,2,NULL),(505,14,90,2,NULL),(506,40,22,2,NULL),(507,34,99,2,NULL),(508,15,90,2,NULL),(509,41,22,2,NULL),(510,17,99,2,NULL),(511,26,90,2,NULL),(512,42,22,2,NULL),(513,18,99,2,NULL),(514,28,90,2,NULL),(515,2,22,2,NULL),(516,19,99,2,NULL),(517,38,90,2,NULL),(518,3,22,2,NULL),(519,20,99,2,NULL),(520,14,65,2,NULL),(521,4,22,2,NULL),(522,21,99,2,NULL),(523,15,65,2,NULL),(524,32,22,2,NULL),(525,22,99,2,NULL),(526,26,65,2,NULL),(527,33,22,2,NULL),(528,23,99,2,NULL),(529,28,65,2,NULL),(530,34,22,2,NULL),(531,24,99,2,NULL),(532,38,65,2,NULL),(533,17,22,2,NULL),(534,25,99,2,NULL),(535,14,70,2,NULL),(536,18,22,2,NULL),(537,30,103,2,NULL),(538,19,22,2,NULL),(539,15,70,2,NULL),(540,31,103,2,NULL),(541,20,22,2,NULL),(542,26,70,2,NULL),(543,35,103,2,NULL),(544,21,22,2,NULL),(545,28,70,2,NULL),(546,36,103,2,NULL),(547,38,70,2,NULL),(548,22,22,2,NULL),(549,39,103,2,NULL),(550,14,75,2,NULL),(551,23,22,2,NULL),(552,40,103,2,NULL),(553,24,22,2,NULL),(554,15,75,2,NULL),(555,41,103,2,NULL),(556,26,75,2,NULL),(557,25,22,2,NULL),(558,42,103,2,NULL),(559,28,75,2,NULL),(560,30,39,2,NULL),(561,2,103,2,NULL),(562,38,75,2,NULL),(563,31,39,2,NULL),(564,3,103,2,NULL),(565,14,93,2,NULL),(566,35,39,2,NULL),(567,4,103,2,NULL),(568,36,39,2,NULL),(569,15,93,2,NULL),(570,32,103,2,NULL),(571,26,93,2,NULL),(572,39,39,2,NULL),(573,33,103,2,NULL),(574,28,93,2,NULL),(575,40,39,2,NULL),(576,34,103,2,NULL),(577,38,93,2,NULL),(578,41,39,2,NULL),(579,17,103,2,NULL),(580,14,98,2,NULL),(581,42,39,2,NULL),(582,18,103,2,NULL),(583,2,39,2,NULL),(584,15,98,2,NULL),(585,19,103,2,NULL),(586,3,39,2,NULL),(587,26,98,2,NULL),(588,20,103,2,NULL),(589,28,98,2,NULL),(590,4,39,2,NULL),(591,21,103,2,NULL),(592,38,98,2,NULL),(593,32,39,2,NULL),(594,22,103,2,NULL),(595,14,67,2,NULL),(596,33,39,2,NULL),(597,23,103,2,NULL),(598,15,67,2,NULL),(599,34,39,2,NULL),(600,24,103,2,NULL),(601,26,67,2,NULL),(602,17,39,2,NULL),(603,25,103,2,NULL),(604,28,67,2,NULL),(605,18,39,2,NULL),(606,30,104,2,NULL),(607,19,39,2,NULL),(608,31,104,2,NULL),(609,20,39,2,NULL),(610,38,67,2,NULL),(611,35,104,2,NULL),(612,21,39,2,NULL),(613,30,1,2,NULL),(614,36,104,2,NULL),(615,31,1,2,NULL),(616,22,39,2,NULL),(617,39,104,2,NULL),(618,23,39,2,NULL),(619,35,1,2,NULL),(620,40,104,2,NULL),(621,36,1,2,NULL),(622,24,39,2,NULL),(623,41,104,2,NULL),(624,25,39,2,NULL),(625,39,1,2,NULL),(626,42,104,2,NULL),(627,40,1,2,NULL),(628,30,44,2,NULL),(629,2,104,2,NULL),(630,41,1,2,NULL),(631,31,44,2,NULL),(632,3,104,2,NULL),(633,35,44,2,NULL),(634,42,1,2,NULL),(635,4,104,2,NULL),(636,36,44,2,NULL),(637,30,6,2,NULL),(638,32,104,2,NULL),(639,31,6,2,NULL),(640,39,44,2,NULL),(641,33,104,2,NULL),(642,35,6,2,NULL),(643,40,44,2,NULL),(644,34,104,2,NULL),(645,36,6,2,NULL),(646,41,44,2,NULL),(647,17,104,2,NULL),(648,39,6,2,NULL),(649,42,44,2,NULL),(650,18,104,2,NULL),(651,2,44,2,NULL),(652,40,6,2,NULL),(653,19,104,2,NULL),(654,3,44,2,NULL),(655,41,6,2,NULL),(656,20,104,2,NULL),(657,42,6,2,NULL),(658,4,44,2,NULL),(659,21,104,2,NULL),(660,30,7,2,NULL),(661,32,44,2,NULL),(662,22,104,2,NULL),(663,31,7,2,NULL),(664,33,44,2,NULL),(665,23,104,2,NULL),(666,34,44,2,NULL),(667,35,7,2,NULL),(668,24,104,2,NULL),(669,36,7,2,NULL),(670,17,44,2,NULL),(671,25,104,2,NULL),(672,39,7,2,NULL),(673,18,44,2,NULL),(674,19,44,2,NULL),(675,40,7,2,NULL),(676,20,44,2,NULL),(677,41,7,2,NULL),(678,21,44,2,NULL),(679,42,7,2,NULL),(680,22,44,2,NULL),(681,30,8,2,NULL),(682,23,44,2,NULL),(683,31,8,2,NULL),(684,24,44,2,NULL),(685,35,8,2,NULL),(686,25,44,2,NULL),(687,36,8,2,NULL),(688,39,8,2,NULL),(689,40,8,2,NULL),(690,41,8,2,NULL),(691,42,8,2,NULL),(692,30,12,2,NULL),(693,31,12,2,NULL),(694,35,12,2,NULL),(695,36,12,2,NULL),(696,39,12,2,NULL),(697,40,12,2,NULL),(698,41,12,2,NULL),(699,42,12,2,NULL),(700,30,13,2,NULL),(701,31,13,2,NULL),(702,35,13,2,NULL),(703,36,13,2,NULL),(704,39,13,2,NULL),(705,40,13,2,NULL),(706,41,13,2,NULL),(707,42,13,2,NULL),(708,30,24,2,NULL),(709,31,24,2,NULL),(710,35,24,2,NULL),(711,36,24,2,NULL),(712,39,24,2,NULL),(713,40,24,2,NULL),(714,41,24,2,NULL),(715,42,24,2,NULL),(716,30,33,2,NULL),(717,31,33,2,NULL),(718,35,33,2,NULL),(719,36,33,2,NULL),(720,39,33,2,NULL),(721,40,33,2,NULL),(722,41,33,2,NULL),(723,42,33,2,NULL),(724,30,105,2,NULL),(725,31,105,2,NULL),(726,35,105,2,NULL),(727,36,105,2,NULL),(728,39,105,2,NULL),(729,40,105,2,NULL),(730,41,105,2,NULL),(731,42,105,2,NULL),(732,30,43,2,NULL),(733,31,43,2,NULL),(734,35,43,2,NULL),(735,36,43,2,NULL),(736,39,43,2,NULL),(737,40,43,2,NULL),(738,41,43,2,NULL),(739,42,43,2,NULL),(740,30,63,2,NULL),(741,31,63,2,NULL),(742,35,63,2,NULL),(743,36,63,2,NULL),(744,39,63,2,NULL),(745,40,63,2,NULL),(746,41,63,2,NULL),(747,42,63,2,NULL),(748,30,68,2,NULL),(749,31,68,2,NULL),(750,35,68,2,NULL),(751,36,68,2,NULL),(752,39,68,2,NULL),(753,40,68,2,NULL),(754,41,68,2,NULL),(755,42,68,2,NULL),(756,30,82,2,NULL),(757,31,82,2,NULL),(758,35,82,2,NULL),(759,36,82,2,NULL),(760,39,82,2,NULL),(761,40,82,2,NULL),(762,41,82,2,NULL),(763,42,82,2,NULL),(764,30,90,2,NULL),(765,31,90,2,NULL),(766,35,90,2,NULL),(767,36,90,2,NULL),(768,39,90,2,NULL),(769,40,90,2,NULL),(770,41,90,2,NULL),(771,42,90,2,NULL),(772,30,65,2,NULL),(773,31,65,2,NULL),(774,35,65,2,NULL),(775,36,65,2,NULL),(776,39,65,2,NULL),(777,40,65,2,NULL),(778,41,65,2,NULL),(779,42,65,2,NULL),(780,30,70,2,NULL),(781,31,70,2,NULL),(782,35,70,2,NULL),(783,36,70,2,NULL),(784,39,70,2,NULL),(785,40,70,2,NULL),(786,41,70,2,NULL),(787,42,70,2,NULL),(788,30,75,2,NULL),(789,31,75,2,NULL),(790,35,75,2,NULL),(791,36,75,2,NULL),(792,39,75,2,NULL),(793,40,75,2,NULL),(794,41,75,2,NULL),(795,42,75,2,NULL),(796,30,93,2,NULL),(797,31,93,2,NULL),(798,35,93,2,NULL),(799,36,93,2,NULL),(800,39,93,2,NULL),(801,40,93,2,NULL),(802,41,93,2,NULL),(803,42,93,2,NULL),(804,30,98,2,NULL),(805,31,98,2,NULL),(806,35,98,2,NULL),(807,36,98,2,NULL),(808,39,98,2,NULL),(809,40,98,2,NULL),(810,41,98,2,NULL),(811,42,98,2,NULL),(812,30,67,2,NULL),(813,31,67,2,NULL),(814,35,67,2,NULL),(815,36,67,2,NULL),(816,39,67,2,NULL),(817,40,67,2,NULL),(818,41,67,2,NULL),(819,42,67,2,NULL),(820,2,24,2,NULL),(821,3,24,2,NULL),(822,4,24,2,NULL),(823,32,24,2,NULL),(824,33,24,2,NULL),(825,34,24,2,NULL),(826,17,24,2,NULL),(827,18,24,2,NULL),(828,19,24,2,NULL),(829,20,24,2,NULL),(830,21,24,2,NULL),(831,22,24,2,NULL),(832,23,24,2,NULL),(833,24,24,2,NULL),(834,25,24,2,NULL),(835,2,1,2,NULL),(836,3,1,2,NULL),(837,4,1,2,NULL),(838,2,6,2,NULL),(839,3,6,2,NULL),(840,4,6,2,NULL),(841,2,7,2,NULL),(842,3,7,2,NULL),(843,4,7,2,NULL),(844,2,8,2,NULL),(845,3,8,2,NULL),(846,4,8,2,NULL),(847,2,12,2,NULL),(848,3,12,2,NULL),(849,4,12,2,NULL),(850,2,13,2,NULL),(851,3,13,2,NULL),(852,4,13,2,NULL),(853,2,33,2,NULL),(854,3,33,2,NULL),(855,4,33,2,NULL),(856,2,105,2,NULL),(857,3,105,2,NULL),(858,4,105,2,NULL),(859,2,43,2,NULL),(860,3,43,2,NULL),(861,4,43,2,NULL),(862,2,63,2,NULL),(863,3,63,2,NULL),(864,4,63,2,NULL),(865,2,68,2,NULL),(866,3,68,2,NULL),(867,4,68,2,NULL),(868,2,82,2,NULL),(869,3,82,2,NULL),(870,4,82,2,NULL),(871,2,90,2,NULL),(872,3,90,2,NULL),(873,4,90,2,NULL),(874,2,65,2,NULL),(875,3,65,2,NULL),(876,4,65,2,NULL),(877,2,70,2,NULL),(878,3,70,2,NULL),(879,4,70,2,NULL),(880,2,75,2,NULL),(881,3,75,2,NULL),(882,4,75,2,NULL),(883,2,93,2,NULL),(884,3,93,2,NULL),(885,4,93,2,NULL),(886,2,98,2,NULL),(887,3,98,2,NULL),(888,4,98,2,NULL),(889,2,67,2,NULL),(890,3,67,2,NULL),(891,4,67,2,NULL),(892,32,1,2,NULL),(893,33,1,2,NULL),(894,34,1,2,NULL),(895,32,6,2,NULL),(896,33,6,2,NULL),(897,34,6,2,NULL),(898,32,7,2,NULL),(899,33,7,2,NULL),(900,34,7,2,NULL),(901,32,8,2,NULL),(902,33,8,2,NULL),(903,34,8,2,NULL),(904,32,12,2,NULL),(905,33,12,2,NULL),(906,34,12,2,NULL),(907,32,13,2,NULL),(908,33,13,2,NULL),(909,34,13,2,NULL),(910,32,33,2,NULL),(911,33,33,2,NULL),(912,34,33,2,NULL),(913,32,105,2,NULL),(914,33,105,2,NULL),(915,34,105,2,NULL),(916,32,43,2,NULL),(917,33,43,2,NULL),(918,34,43,2,NULL),(919,32,63,2,NULL),(920,33,63,2,NULL),(921,34,63,2,NULL),(922,32,68,2,NULL),(923,33,68,2,NULL),(924,34,68,2,NULL),(925,32,82,2,NULL),(926,33,82,2,NULL),(927,34,82,2,NULL),(928,32,90,2,NULL),(929,33,90,2,NULL),(930,34,90,2,NULL),(931,32,65,2,NULL),(932,33,65,2,NULL),(933,34,65,2,NULL),(934,32,70,2,NULL),(935,33,70,2,NULL),(936,34,70,2,NULL),(937,32,75,2,NULL),(938,33,75,2,NULL),(939,34,75,2,NULL),(940,32,93,2,NULL),(941,33,93,2,NULL),(942,34,93,2,NULL),(943,32,98,2,NULL),(944,33,98,2,NULL),(945,34,98,2,NULL),(946,32,67,2,NULL),(947,33,67,2,NULL),(948,34,67,2,NULL),(949,17,1,2,NULL),(950,18,1,2,NULL),(951,19,1,2,NULL),(952,20,1,2,NULL),(953,21,1,2,NULL),(954,22,1,2,NULL),(955,23,1,2,NULL),(956,24,1,2,NULL),(957,25,1,2,NULL),(958,17,6,2,NULL),(959,18,6,2,NULL),(960,19,6,2,NULL),(961,20,6,2,NULL),(962,21,6,2,NULL),(963,22,6,2,NULL),(964,23,6,2,NULL),(965,24,6,2,NULL),(966,25,6,2,NULL),(967,17,7,2,NULL),(968,18,7,2,NULL),(969,19,7,2,NULL),(970,20,7,2,NULL),(971,21,7,2,NULL),(972,22,7,2,NULL),(973,23,7,2,NULL),(974,24,7,2,NULL),(975,25,7,2,NULL),(976,17,8,2,NULL),(977,18,8,2,NULL),(978,19,8,2,NULL),(979,20,8,2,NULL),(980,21,8,2,NULL),(981,22,8,2,NULL),(982,23,8,2,NULL),(983,24,8,2,NULL),(984,25,8,2,NULL),(985,17,12,2,NULL),(986,18,12,2,NULL),(987,19,12,2,NULL),(988,17,67,2,NULL),(989,20,12,2,NULL),(990,18,67,2,NULL),(991,21,12,2,NULL),(992,19,67,2,NULL),(993,22,12,2,NULL),(994,20,67,2,NULL),(995,23,12,2,NULL),(996,21,67,2,NULL),(997,24,12,2,NULL),(998,22,67,2,NULL),(999,25,12,2,NULL),(1000,23,67,2,NULL),(1001,17,13,2,NULL),(1002,24,67,2,NULL),(1003,18,13,2,NULL),(1004,25,67,2,NULL),(1005,19,13,2,NULL),(1006,20,13,2,NULL),(1007,21,13,2,NULL),(1008,22,13,2,NULL),(1009,23,13,2,NULL),(1010,24,13,2,NULL),(1011,25,13,2,NULL),(1012,17,33,2,NULL),(1013,18,33,2,NULL),(1014,19,33,2,NULL),(1015,20,33,2,NULL),(1016,21,33,2,NULL),(1017,22,33,2,NULL),(1018,23,33,2,NULL),(1019,24,33,2,NULL),(1020,25,33,2,NULL),(1021,17,105,2,NULL),(1022,18,105,2,NULL),(1023,19,105,2,NULL),(1024,20,105,2,NULL),(1025,21,105,2,NULL),(1026,22,105,2,NULL),(1027,23,105,2,NULL),(1028,24,105,2,NULL),(1029,25,105,2,NULL),(1030,17,43,2,NULL),(1031,18,43,2,NULL),(1032,19,43,2,NULL),(1033,20,43,2,NULL),(1034,21,43,2,NULL),(1035,22,43,2,NULL),(1036,23,43,2,NULL),(1037,24,43,2,NULL),(1038,25,43,2,NULL),(1039,17,63,2,NULL),(1040,18,63,2,NULL),(1041,19,63,2,NULL),(1042,20,63,2,NULL),(1043,21,63,2,NULL),(1044,22,63,2,NULL),(1045,23,63,2,NULL),(1046,24,63,2,NULL),(1047,25,63,2,NULL),(1048,17,68,2,NULL),(1049,18,68,2,NULL),(1050,19,68,2,NULL),(1051,20,68,2,NULL),(1052,21,68,2,NULL),(1053,22,68,2,NULL),(1054,23,68,2,NULL),(1055,24,68,2,NULL),(1056,25,68,2,NULL),(1057,17,82,2,NULL),(1058,18,82,2,NULL),(1059,19,82,2,NULL),(1060,20,82,2,NULL),(1061,21,82,2,NULL),(1062,22,82,2,NULL),(1063,23,82,2,NULL),(1064,24,82,2,NULL),(1065,25,82,2,NULL),(1066,17,90,2,NULL),(1067,18,90,2,NULL),(1068,19,90,2,NULL),(1069,20,90,2,NULL),(1070,21,90,2,NULL),(1071,22,90,2,NULL),(1072,23,90,2,NULL),(1073,24,90,2,NULL),(1074,25,90,2,NULL),(1075,17,65,2,NULL),(1076,18,65,2,NULL),(1077,19,65,2,NULL),(1078,20,65,2,NULL),(1079,21,65,2,NULL),(1080,22,65,2,NULL),(1081,23,65,2,NULL),(1082,24,65,2,NULL),(1083,25,65,2,NULL),(1084,17,70,2,NULL),(1085,18,70,2,NULL),(1086,19,70,2,NULL),(1087,20,70,2,NULL),(1088,21,70,2,NULL),(1089,22,70,2,NULL),(1090,23,70,2,NULL),(1091,24,70,2,NULL),(1092,25,70,2,NULL),(1093,17,75,2,NULL),(1094,18,75,2,NULL),(1095,19,75,2,NULL),(1096,20,75,2,NULL),(1097,21,75,2,NULL),(1098,22,75,2,NULL),(1099,23,75,2,NULL),(1100,24,75,2,NULL),(1101,25,75,2,NULL),(1102,17,93,2,NULL),(1103,18,93,2,NULL),(1104,19,93,2,NULL),(1105,20,93,2,NULL),(1106,21,93,2,NULL),(1107,22,93,2,NULL),(1108,23,93,2,NULL),(1109,24,93,2,NULL),(1110,25,93,2,NULL),(1111,17,98,2,NULL),(1112,18,98,2,NULL),(1113,19,98,2,NULL),(1114,20,98,2,NULL),(1115,21,98,2,NULL),(1116,22,98,2,NULL),(1117,23,98,2,NULL),(1118,24,98,2,NULL),(1119,25,98,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BATTERY_STATS'),(11,'android.permission.BIND_WALLPAPER'),(21,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.DISABLE_KEYGUARD'),(9,'android.permission.GET_ACCOUNTS'),(3,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.SET_PREFERRED_APPLICATIONS'),(7,'android.permission.VIBRATE'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(16,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'https://market.android.com/details?id=com.fs.finger_security_scanner3',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'https://market.android.com/search?q=mojolabs',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,4),(13,2,5),(14,2,7),(15,2,8),(16,2,9),(17,3,17),(18,2,10),(19,3,16),(20,2,12),(21,3,1),(22,2,13),(23,3,4),(24,2,14),(25,3,5),(26,3,7),(27,3,8),(28,3,9),(29,3,10),(30,3,12),(31,3,13),(32,3,14),(33,3,15),(34,5,1),(35,4,1),(36,5,4),(37,4,4),(38,5,5),(39,4,5),(40,5,7),(41,4,7),(42,5,8),(43,4,8),(44,5,9),(45,4,9),(46,5,10),(47,4,10),(48,5,12),(49,4,12),(50,5,13),(51,4,13),(52,5,14),(53,6,17),(54,4,14),(55,5,15),(56,4,15),(57,6,16),(58,5,17),(59,4,17),(60,6,1),(61,5,16),(62,6,2),(63,4,16),(64,4,19),(65,6,4),(66,4,18),(67,6,5),(68,4,21),(69,6,7),(70,4,20),(71,6,8),(72,6,9),(73,6,10),(74,6,15),(75,7,1),(76,7,4),(77,7,5),(78,7,7),(79,7,8),(80,7,9),(81,7,10),(82,7,12),(83,7,13),(84,7,14),(85,7,15),(86,7,17),(87,7,16),(88,7,18),(89,7,21),(90,7,20);
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

-- Dump completed on 2015-10-12  3:30:52
