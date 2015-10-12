-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_686
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.MEDIA_EJECT'),(11,'android.intent.action.MEDIA_MOUNTED'),(22,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.USER_PRESENT'),(24,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(26,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(13,'com.airpush.android.PushServiceStart26644'),(2,'com.airpush.android.PushServiceStart31043'),(16,'com.airpush.android.PushServiceStart46884'),(4,'com.airpush.android.PushServiceStart48209'),(12,'com.airpush.android.PushServiceStart52905'),(27,'com.android.launcher.action.INSTALL_SHORTCUT'),(7,'com.android.vending.INSTALL_REFERRER'),(19,'com.android.vending.billing.IN_APP_NOTIFY'),(20,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(21,'com.android.vending.billing.RESPONSE_CODE'),(14,'com.applovin.sdk.AppLovinService'),(17,'com.google.android.c2dm.intent.RECEIVE'),(15,'com.google.android.c2dm.intent.REGISTRATION'),(8,'com.inoxpush.adnetwork.PushServiceStart10001'),(6,'com.jiubang.goscreenlock.theme'),(18,'com.quipper.a.query');
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
INSERT INTO `Applications` VALUES (1,'cx.makaveli.androidsecretcodes',11),(2,'com.mobileriders.india.first',2),(3,'com.ss.go.locker.theme.launcher.ex.sunrise',5),(4,'com.demo.android.magiccastle',14),(5,'com.macte.JigsawPuzzle.Abstract',15),(6,'com.djd.engineeringwowguide',4),(7,'com.quipack.a.b4fb4f4e15eb3400001000850',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(6,'com.djd.engineeringwowguide'),(7,'com.quipper.a.query.TOPIC'),(5,'com.ss.go.locker.theme.launcher.ex.sunrise');
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
INSERT INTO `Classes` VALUES (1,1,'cx.makaveli.androidsecretcodes.AndroidSecretCodes'),(2,1,'cx.makaveli.androidsecretcodes.SecretCodes'),(3,1,'cx.makaveli.androidsecretcodes.AboutApplication'),(4,1,'com.airpush.android.PushAds'),(5,1,'com.airpush.android.PushService'),(6,1,'com.apperhand.device.android.AndroidSDKProvider'),(7,1,'com.airpush.android.UserDetailsReceiver'),(8,1,'com.airpush.android.MessageReceiver'),(9,1,'com.airpush.android.DeliveryReceiver'),(10,1,'cx.makaveli.androidsecretcodes.BootReceiver'),(11,2,'com.mobileriders.india.first.Main'),(12,2,'com.airpush.android.PushAds'),(13,2,'com.apperhand.device.android.AndroidSDKProvider'),(14,2,'com.airpush.android.PushService'),(15,2,'com.airpush.android.UserDetailsReceiver'),(16,2,'com.airpush.android.MessageReceiver'),(17,2,'com.airpush.android.DeliveryReceiver'),(18,2,'com.mobileriders.india.first.BootReceiver'),(19,4,'com.demo.android.magiccastle.MagicCastleActivity'),(20,4,'com.demo.android.magiccastle.HowToActivity'),(21,4,'com.google.ads.AdActivity'),(22,4,'com.admob.android.ads.AdMobActivity'),(23,5,'com.macte.JigsawPuzzle.Abstract.JigsawPuzzle'),(24,4,'com.demo.android.magiccastle.MagicCastleService'),(25,3,'com.ss.go.locker.theme.launcher.ex.sunrise.GOLockerInstallDialog'),(26,5,'com.macte.JigsawPuzzle.Abstract.GameView'),(27,4,'com.apperhand.device.android.AndroidSDKProvider'),(28,4,'com.admob.android.ads.analytics.InstallReceiver'),(29,5,'com.mobfox.sdk.InAppWebView'),(30,5,'com.macte.JigsawPuzzle.Abstract.SettingsList'),(31,3,'com.airpush.android.PushAds'),(32,3,'com.inox.referrer.SendDataService'),(33,3,'com.inoxpush.downloadticker.DownloadTickerService'),(34,5,'com.macte.JigsawPuzzle.Abstract.GalleryLevel'),(35,3,'com.inoxpush.adnetwork.PushAdService'),(36,5,'com.macte.JigsawPuzzle.Abstract.ProVersion'),(37,3,'com.ss.go.locker.theme.launcher.ex.sunrise.C2DMService'),(38,5,'com.airpush.android.PushAds'),(39,3,'com.ss.go.locker.theme.launcher.ex.sunrise.GoDownloadServiceervice'),(40,5,'com.macte.JigsawPuzzle.Abstract.DownloadService'),(41,3,'com.moolah.NotificationService'),(42,3,'com.airpush.android.PushService'),(43,5,'com.apperhand.device.android.AndroidSDKProvider'),(44,5,'com.airpush.android.PushService'),(45,6,'com.djd.engineeringwowguide.WoWEngineeringActivity'),(46,3,'com.apperhand.device.android.AndroidSDKProvider'),(47,3,'com.inox.referrer.Receiver'),(48,5,'com.airpush.android.UserDetailsReceiver'),(49,6,'com.appbrain.AppBrainActivity'),(50,5,'com.airpush.android.MessageReceiver'),(51,3,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(52,6,'com.airpush.android.PushAds'),(53,5,'com.airpush.android.DeliveryReceiver'),(54,3,'com.inoxpush.adnetwork.AdMessageReceiver'),(55,6,'com.applovin.sdk.AppLovinService'),(56,5,'com.macte.JigsawPuzzle.Abstract.BootReceiver'),(57,3,'com.inoxpush.adnetwork.ClickAdReceiver'),(58,3,'com.ss.go.locker.theme.launcher.ex.sunrise.C2DMRegistrationReceiver'),(59,6,'com.appbrain.AppBrainService'),(60,6,'com.airpush.android.PushService'),(61,3,'com.ss.go.locker.theme.launcher.ex.sunrise.C2DMMessageReceiver'),(62,6,'com.apperhand.device.android.AndroidSDKProvider'),(63,6,'com.applovin.sdk.AppLovinBootReceiver'),(64,3,'com.moolah.MessageReceiver'),(65,6,'com.djd.engineeringwowguide.BootReceiver'),(66,3,'com.moolah.BootReceiver'),(67,6,'com.appbrain.ReferrerReceiver'),(68,3,'com.airpush.android.UserDetailsReceiver'),(69,3,'com.airpush.android.MessageReceiver'),(70,6,'com.airpush.android.UserDetailsReceiver'),(71,3,'com.airpush.android.DeliveryReceiver'),(72,6,'com.airpush.android.MessageReceiver'),(73,3,'com.ss.go.locker.theme.launcher.ex.sunrise.BootReceiver'),(74,6,'com.airpush.android.DeliveryReceiver'),(75,3,'com.Leadbolt.AdNotification'),(76,6,'com.Leadbolt.AdNotification'),(77,6,'hr.interactive.sdk.C2DMRegistrationReceiver'),(78,6,'com.djd.engineeringwowguide.C2DMMessageReceiver'),(79,7,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(80,7,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(81,7,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(82,7,'com.quipper.a.v5.single.activities.PurchaseActivity'),(83,7,'com.quipper.a.v5.activities.FlowControlActivity'),(84,7,'com.quipper.a.v5.activities.WebViewActivity'),(85,7,'com.quipper.a.v5.activities.LanderRibbonActivity'),(86,7,'com.quipper.a.v5.activities.UserPriorityActivity'),(87,7,'com.quipper.a.v5.single.activities.TopicActivity'),(88,7,'com.quipper.a.v5.activities.TopicReviewActivity'),(89,7,'com.quipper.a.v5.activities.VideoPlayerActivity'),(90,7,'com.quipper.a.v5.activities.FlagQuestionActivity'),(91,7,'com.quipper.a.v5.activities.ShareActivity'),(92,7,'com.quipper.a.v5.activities.QuipperDialog'),(93,7,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(94,7,'com.quipper.a.v5.activities.LoginActivity'),(95,7,'com.quipper.a.v5.activities.SignupActivity'),(96,7,'com.quipper.a.v5.activities.AgreementActivity'),(97,7,'com.quipper.a.v5.activities.FacebookConnectActivity'),(98,7,'com.quipper.a.v5.single.billing.BillingService'),(99,7,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(100,7,'com.apperhand.device.android.AndroidSDKProvider'),(101,7,'com.quipper.a.v5.single.receivers.TopicReceiver'),(102,7,'com.quipper.a.v5.single.billing.BillingReceiver'),(103,7,'com.Leadbolt.AdNotification'),(104,7,'com.quipper.a.v5.single.BootReceiver'),(105,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(106,4,'com.apperhand.device.android.a.b'),(107,4,'com.apperhand.device.android.a.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,22,'u'),(2,21,'com.google.ads.AdOpener'),(3,21,'action'),(4,22,'cbo'),(5,22,'a'),(6,22,'t'),(7,22,'si'),(8,22,'p'),(9,22,'sin'),(10,22,'ap'),(11,28,'referrer'),(12,22,'o'),(13,22,'ad'),(14,21,'com.google.circles.platform.result.extra.CONFIRMATION'),(15,22,'skd'),(16,22,'or'),(17,22,'su'),(18,22,'$'),(19,22,'oi'),(20,27,'DEVELOPER_ID'),(21,28,'(.*)'),(22,27,'permanent'),(23,22,'sku'),(24,27,'FIRST_RUN'),(25,28,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(26,22,'au'),(27,21,'com.google.circles.platform.result.extra.ACTION'),(28,22,'sd'),(29,22,'sc'),(30,22,'ru'),(31,22,'c'),(32,22,'rd'),(33,27,'USER_AGENT'),(34,27,'M_SERVER_URL'),(35,27,'SERVICE_MODE'),(36,22,'cs'),(37,22,'msm'),(38,22,'s'),(39,27,'APPLICATION_ID'),(40,22,'mi'),(41,22,'json'),(42,22,'int'),(43,28,'ADMOB_PUBLISHER_ID'),(44,28,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(45,22,'tr'),(46,21,'params'),(47,22,'nosk'),(48,22,'b');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',1,38,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',1,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,39,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'r',1,39,NULL),(62,62,'s',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'r',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',1,39,NULL),(78,78,'r',1,39,NULL),(79,79,'a',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'r',0,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,21),(2,2,27),(3,3,27),(4,4,20),(5,5,27),(6,6,19),(7,7,19),(8,8,20),(9,9,21),(10,10,19),(11,11,27),(12,12,19),(13,13,27),(14,14,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(2,106,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(3,107,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(4,27,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',45,'s',NULL),(5,106,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(6,19,'<com.demo.android.magiccastle.MagicCastleActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',10,'a',NULL),(7,19,'<com.demo.android.magiccastle.MagicCastleActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(8,20,'<com.demo.android.magiccastle.HowToActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(9,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(10,19,'<com.demo.android.magiccastle.MagicCastleActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',35,'a',NULL),(11,107,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(12,19,'<com.demo.android.magiccastle.MagicCastleActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(13,106,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(14,107,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,1,24),(2,2,25),(3,3,25),(4,4,24),(5,7,24),(6,8,24),(7,9,26),(8,11,24),(9,12,27),(10,13,24);
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
INSERT INTO `ICategories` VALUES (1,10,1);
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
INSERT INTO `IClasses` VALUES (1,5,'com/apperhand/device/android/AndroidSDKProvider'),(2,6,'com/apperhand/device/android/AndroidSDKProvider'),(3,10,'com.google.android.apps.circles.platform.PlusOneActivity');
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
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,7,8),(6,8,9),(7,11,10),(8,13,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'M_SERVER_URL'),(2,5,'USER_AGENT'),(3,5,'SERVICE_MODE'),(4,5,'FIRST_RUN'),(5,5,'DEVELOPER_ID'),(6,5,'(.*)'),(7,5,'APPLICATION_ID'),(8,6,'M_SERVER_URL'),(9,6,'USER_AGENT'),(10,6,'SERVICE_MODE'),(11,6,'FIRST_RUN'),(12,6,'DEVELOPER_ID'),(13,6,'APPLICATION_ID'),(14,10,'com.google.circles.platform.intent.extra.ACTION'),(15,10,'(.*)'),(16,10,'com.google.circles.platform.intent.extra.ENTITY'),(17,10,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(18,12,'android.intent.extra.shortcut.NAME'),(19,12,'android.intent.extra.shortcut.ICON'),(20,12,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,3),(7,7,1),(8,8,1),(9,9,5),(10,10,6),(11,11,1),(12,12,1),(13,13,7),(14,14,1),(15,15,1),(16,16,8),(17,17,10),(18,17,11),(19,17,9),(20,18,12),(21,19,1),(22,20,13),(23,21,7),(24,22,14),(25,23,3),(26,24,15),(27,25,16),(28,26,17),(29,27,3),(30,28,3),(31,29,3),(32,30,7),(33,31,3),(34,32,3),(35,33,15),(36,34,17),(37,35,1),(38,36,18),(39,37,21),(40,37,20),(41,37,19),(42,38,3),(43,39,22),(44,39,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,6,2),(5,7,3),(6,8,1),(7,10,3),(8,11,4),(9,12,3),(10,14,4),(11,15,4),(12,19,1),(13,23,2),(14,24,5),(15,26,5),(16,28,2),(17,29,2),(18,31,2),(19,32,2),(20,33,6),(21,34,6),(22,35,1),(23,36,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'(.*)','(.*)'),(2,4,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.demo.android.magiccastle'),(2,6,'com.demo.android.magiccastle'),(3,10,'com.google.android.apps.plus');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,10,0),(4,11,0),(5,14,0),(6,18,0),(7,20,0),(8,23,0),(9,24,0),(10,25,0),(11,26,0),(12,25,0),(13,28,0),(14,30,0),(15,36,0),(16,35,0),(17,40,0),(18,42,0),(19,45,0),(20,44,0),(21,47,0),(22,55,0),(23,56,0),(24,58,0),(25,60,0),(26,61,0),(27,63,0),(28,65,0),(29,66,0),(30,67,0),(31,73,0),(32,65,0),(33,77,0),(34,78,0),(35,79,0),(36,101,0),(37,102,0),(38,104,0),(39,105,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,4,0,0),(6,4,0,0),(7,6,1,0),(8,7,1,0),(9,8,1,0),(10,9,0,0),(11,10,1,0),(12,11,1,0),(13,12,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (25,'android.permission.ACCESS_COARSE_LOCATION'),(28,'android.permission.ACCESS_FINE_LOCATION'),(35,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(38,'android.permission.BIND_WALLPAPER'),(6,'android.permission.CALL_PHONE'),(36,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.FLASHLIGHT'),(26,'android.permission.GET_ACCOUNTS'),(12,'android.permission.INTERNET'),(27,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(31,'android.permission.SET_WALLPAPER'),(24,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(22,'com.android.launcher.permission.INSTALL_SHORTCUT'),(17,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(40,'com.android.vending.BILLING'),(32,'com.djd.engineeringwowguide.permission.C2D_MESSAGE'),(14,'com.fede.launcher.permission.READ_SETTINGS'),(30,'com.google.android.c2dm.permission.RECEIVE'),(39,'com.google.android.c2dm.permission.SEND'),(37,'com.google.android.sdk.permission.RECEIVE'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(18,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(21,'com.motorola.launcher.permission.READ_SETTINGS'),(29,'com.ss.go.locker.theme.launcher.ex.sunrise.permission.C2D_MESSAGE'),(33,'hr.interactive.sdk.permission.C2D_MESSAGE'),(15,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (29,'s'),(32,'s'),(33,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pub:\"A.O.I Studio\"',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=com.demo.android.waterfallwallpaper',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.reactor.livewallpaper.fallingflower',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.reactor.livewallpaper.easter',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,5),(2,3,6),(3,5,7),(4,13,12),(5,14,13),(6,14,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,3),(24,2,4),(25,2,5),(26,2,7),(27,2,8),(28,2,9),(29,2,10),(30,2,11),(31,2,12),(32,2,13),(33,2,14),(34,2,15),(35,2,17),(36,2,16),(37,2,19),(38,2,18),(39,2,21),(40,2,20),(41,2,23),(42,2,22),(43,4,1),(44,3,1),(45,5,1),(46,4,3),(47,3,2),(48,5,2),(49,3,3),(50,4,4),(51,5,3),(52,4,7),(53,3,4),(54,5,4),(55,4,8),(56,3,5),(57,5,5),(58,3,6),(59,4,9),(60,5,7),(61,4,11),(62,3,7),(63,5,8),(64,4,12),(65,3,8),(66,5,9),(67,3,9),(68,4,14),(69,5,10),(70,3,10),(71,4,15),(72,5,11),(73,3,11),(74,4,17),(75,5,12),(76,4,19),(77,3,12),(78,5,13),(79,4,18),(80,3,13),(81,5,14),(82,3,14),(83,4,21),(84,5,15),(85,3,15),(86,4,22),(87,5,17),(88,3,17),(89,4,24),(90,5,16),(91,3,16),(92,5,19),(93,3,19),(94,5,18),(95,3,18),(96,5,21),(97,3,21),(98,5,20),(99,3,20),(100,5,22),(101,3,22),(102,5,25),(103,3,25),(104,5,28),(105,3,27),(106,5,31),(107,3,26),(108,3,29),(109,3,28),(110,3,30),(111,6,1),(112,6,3),(113,6,4),(114,6,7),(115,6,8),(116,6,9),(117,6,10),(118,6,11),(119,6,12),(120,6,13),(121,6,14),(122,6,15),(123,6,17),(124,6,16),(125,6,19),(126,6,18),(127,6,21),(128,6,20),(129,6,22),(130,6,25),(131,6,27),(132,6,26),(133,6,28),(134,6,30),(135,6,34),(136,6,35),(137,6,32),(138,6,33),(139,6,36),(140,6,37),(141,7,1),(142,7,2),(143,7,3),(144,7,4),(145,7,5),(146,7,7),(147,7,8),(148,7,9),(149,7,10),(150,7,11),(151,7,12),(152,7,13),(153,7,14),(154,7,15),(155,7,17),(156,7,16),(157,7,19),(158,7,18),(159,7,21),(160,7,20),(161,7,22),(162,7,25),(163,7,28),(164,7,35),(165,7,40);
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
