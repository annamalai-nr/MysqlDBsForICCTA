-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_698
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(9,'COM.FSS.INS'),(8,'COM.FSS.LOCK'),(29,'NULL-CONSTANT'),(7,'android.intent.action.BOOT_COMPLETED'),(32,'android.intent.action.CHOOSER'),(35,'android.intent.action.DIAL'),(33,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(22,'android.intent.action.SCREEN_OFF'),(31,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.USER_PRESENT'),(24,'android.intent.action.VIEW'),(34,'android.media.action.IMAGE_CAPTURE'),(18,'android.net.conn.CONNECTIVITY_CHANGE'),(26,'android.speech.tts.engine.CHECK_TTS_DATA'),(30,'android.speech.tts.engine.INSTALL_TTS_DATA'),(3,'com.airpush.android.PushServiceStart28411'),(4,'com.airpush.android.PushServiceStart29992'),(16,'com.airpush.android.PushServiceStart61159'),(11,'com.android.action_PUSHADSACTIVITY'),(21,'com.android.launcher.action.INSTALL_SHORTCUT'),(36,'com.android.music.musicservicecommand'),(14,'com.android.vending.INSTALL_REFERRER'),(10,'com.applovin.sdk.AppLovinService'),(13,'com.custompush.adnetwork.PushServiceStart51108'),(6,'com.google.android.c2dm.intent.RECEIVE'),(5,'com.google.android.c2dm.intent.REGISTRATION'),(15,'com.google.zxing.client.android.SCAN'),(27,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(12,'com.inoxpush.adnetwork.PushServiceStart54321'),(28,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(2,'com.jiubang.goscreenlock.theme'),(17,'com.senddroid.AdServicecom.game.ns.lhj2'),(20,'goldenshorestechnologies.brightestflashlight.free.flurry.intent');
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
INSERT INTO `Applications` VALUES (1,'com.batmanjoker.theme',1),(2,'com.indelible.youtubedownloader',1),(3,'com.fingerprint.lock',1),(4,'com.fingerprint.security.pro',2),(5,'com.game.ns.lhj2',1),(6,'fr.mildlyusefulsoftware.awesomesportcars',1),(7,'goldenshorestechnologies.brightestflashlight.free',17);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (8,'android.intent.category.BROWSABLE'),(5,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(7,'com.fingerprint.lock'),(6,'com.fingerprint.security.pro'),(3,'com.moskvichgolocker.theme');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.indelible.SplashScreen'),(2,1,'com.batmanjoker.theme.GOLockerInstallDialog'),(3,2,'com.indelible.MainScreen'),(4,2,'com.indelible.MainScreen_Grid'),(5,2,'com.indelible.activity.CommonActivity'),(6,2,'com.indelible.activity.SocialMediaActivity'),(7,1,'com.airpush.android.PushAds'),(8,2,'com.indelible.activity.Biography'),(9,1,'com.batmanjoker.theme.C2DMService'),(10,2,'com.indelible.activity.CustomWebView'),(11,1,'com.batmanjoker.theme.GoDownloadServiceervice'),(12,2,'com.indelible.activity.FileBrowser'),(13,1,'com.airpush.android.PushService'),(14,2,'com.airpush.android.PushAds'),(15,2,'com.vdopia.client.android.VDOActivity'),(16,1,'com.apperhand.device.android.AndroidSDKProvider'),(17,2,'com.airpush.android.PushService'),(18,1,'com.batmanjoker.theme.C2DMRegistrationReceiver'),(19,2,'com.airpush.android.UserDetailsReceiver'),(20,2,'com.airpush.android.MessageReceiver'),(21,2,'com.airpush.android.DeliveryReceiver'),(22,1,'com.batmanjoker.theme.C2DMMessageReceiver'),(23,2,'com.indelible.BootReceiver'),(24,1,'com.airpush.android.UserDetailsReceiver'),(25,1,'com.airpush.android.MessageReceiver'),(26,1,'com.airpush.android.DeliveryReceiver'),(27,1,'com.batmanjoker.theme.BootReceiver'),(28,3,'com.fingerprint.lock.firstscreen'),(29,3,'com.fingerprint.lock.secondscreen'),(30,3,'com.fingerprint.lock.FPScannerActivity'),(31,3,'com.fingerprint.lock.Preference'),(32,3,'com.fingerprint.lock.ins'),(33,4,'com.fingerprint.security.pro.SettingActivity'),(34,3,'com.fingerprint.lock.moreapps'),(35,4,'com.fingerprint.security.pro.ScanActivity'),(36,3,'com.fingerprint.lock.Launcher'),(37,4,'com.fingerprint.security.pro.StartActivity'),(38,4,'com.fingerprint.security.pro.HelpScreen'),(39,3,'com.fingerprint.lock.launchscreen'),(40,4,'com.fingerprint.security.pro.RateActivity'),(41,3,'com.fingerprint.lock.W1'),(42,4,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(43,5,'com.game.ns.lhj2.LogoActivity'),(44,3,'com.fingerprint.lock.W2'),(45,4,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(46,3,'com.fingerprint.lock.W3'),(47,4,'com.moolah.NotificationService'),(48,3,'com.fingerprint.lock.W4'),(49,4,'com.inox.referrer.SendDataService'),(50,5,'com.game.ns.lhj2.GameActivity'),(51,3,'com.fingerprint.lock.W5'),(52,4,'com.apperhand.device.android.AndroidSDKProvider'),(53,5,'com.airpush.android.PushAds'),(54,4,'com.applovin.sdk.AppLovinService'),(55,3,'com.fingerprint.lock.addform'),(56,5,'com.google.ads.AdActivity'),(57,3,'com.fingerprint.lock.Rate'),(58,5,'com.kuguo.openads.AdsOfferListActivity'),(59,3,'com.fingerprint.lock.HelpScreen'),(60,5,'com.kuguo.pushads.PushAdsActivity'),(61,4,'com.inoxpush.downloadticker.DownloadTickerService'),(62,3,'com.fingerprint.lock.DownloadActivity'),(63,4,'com.inoxpush.adnetwork.PushAdService'),(64,3,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(65,3,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(66,5,'com.kuguo.ad.MainActivity'),(67,4,'com.moolah.MessageReceiver'),(68,3,'com.fingerprint.lock.StatusActivity'),(69,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(70,3,'com.custompush.adnetwork.PushAdService'),(71,4,'com.moolah.BootReceiver'),(72,5,'com.millennialmedia.android.VideoPlayer'),(73,5,'com.waps.OffersWebView'),(74,5,'com.vpon.adon.android.WebInApp'),(75,3,'com.apperhand.device.android.AndroidSDKProvider'),(76,4,'com.fingerprint.security.pro.BootReceiver'),(77,5,'com.vpon.adon.android.CrazyAdRun'),(78,3,'com.inoxpush.downloadticker.DownloadTickerService'),(79,5,'com.vpon.adon.android.webClientHandler.QRActivity'),(80,3,'com.moolah.NotificationService'),(81,4,'com.Leadbolt.AdNotification'),(82,5,'com.vpon.adon.android.webClientHandler.ShootActivity'),(83,3,'com.fingerprint.lock.Service_main'),(84,4,'com.inox.referrer.Receiver'),(85,5,'com.google.zxing.client.android.HelpActivity'),(86,3,'com.inox.referrer.SendDataService'),(87,5,'com.google.zxing.client.android.CaptureActivity'),(88,3,'com.fingerprint.lock.C2DMService'),(89,3,'com.applovin.sdk.AppLovinService'),(90,4,'com.applovin.sdk.AppLovinNotificationReceiver'),(91,4,'com.applovin.sdk.AppLovinPushReceiver'),(92,5,'cn.domob.android.ads.DomobActivity'),(93,3,'com.custompush.adnetwork.DeviceDetailsReceiver'),(94,5,'com.game.ns.lhj2.PushSercive'),(95,3,'com.custompush.adnetwork.AdMessageReceiver'),(96,5,'com.airpush.android.PushService'),(97,3,'com.custompush.adnetwork.ClickAdReceiver'),(98,3,'com.moolah.MessageReceiver'),(99,4,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(100,3,'com.moolah.BootReceiver'),(101,4,'com.inoxpush.adnetwork.AdMessageReceiver'),(102,5,'com.kuguo.ad.MainService'),(103,4,'com.inoxpush.adnetwork.ClickAdReceiver'),(104,5,'com.apperhand.device.android.AndroidSDKProvider'),(105,3,'com.inox.referrer.Receiver'),(106,5,'com.senddroid.AdService'),(107,3,'com.fingerprint.lock.boot'),(108,5,'com.airpush.android.UserDetailsReceiver'),(109,3,'com.Leadbolt.AdNotification'),(110,5,'com.airpush.android.MessageReceiver'),(111,3,'com.fingerprint.lock.C2DMRegistrationReceiver'),(112,5,'com.airpush.android.DeliveryReceiver'),(113,5,'com.game.ns.lhj2.BootReceiver'),(114,5,'com.google.ads.InstallReceiver'),(115,3,'com.fingerprint.lock.C2DMMessageReceiver'),(116,5,'com.Leadbolt.AdNotification'),(117,3,'com.applovin.sdk.AppLovinBootReceiver'),(118,5,'com.kuguo.ad.MainReceiver'),(119,6,'com.google.ads.AdActivity'),(120,6,'fr.mildlyusefulsoftware.awesomesportcars.activity.ViewPictureActivity'),(121,6,'com.apperhand.device.android.AndroidSDKProvider'),(122,7,'goldenshorestechnologies.brightestflashlight.free.BrightestFlashlightMain'),(123,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(124,7,'com.google.ads.AdActivity'),(125,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(126,7,'com.millennialmedia.android.VideoPlayer'),(127,7,'com.flurry.android.CatalogActivity'),(128,7,'com.apperhand.device.android.AndroidSDKProvider'),(129,6,'com.apperhand.device.android.a.d'),(130,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(131,6,'com.apperhand.device.android.a.b'),(132,4,'com.apperhand.device.android.a.b'),(133,4,'com.apperhand.device.android.a.d'),(134,4,'com.fingerprint.security.pro.SettingActivity$4'),(135,4,'com.pontiflex.mobile.webview.sdk.b'),(136,4,'com.fingerprint.security.pro.SettingActivity$2'),(137,4,'com.Leadbolt.AdController'),(138,4,'com.inoxpush.downloadticker.a'),(139,4,'com.fingerprint.security.pro.StartActivity$1'),(140,4,'com.fingerprint.security.pro.SettingActivity$6'),(141,7,'com.apperhand.device.android.a.e'),(142,7,'com.mobclix.android.sdk.MobclixCreative$Action'),(143,7,'goldenshorestechnologies.brightestflashlight.free.RatingRequestUI$1'),(144,7,'com.apperhand.device.android.a.b'),(145,7,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(146,7,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(147,7,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(148,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,119,'params'),(2,119,'com.google.ads.AdOpener'),(3,121,'DEVELOPER_ID'),(4,119,'com.google.circles.platform.result.extra.ACTION'),(5,121,'FIRST_RUN'),(6,121,'SERVICE_MODE'),(7,119,'action'),(8,121,'APPLICATION_ID'),(9,121,'M_SERVER_URL'),(10,120,'POSITION'),(11,119,'com.google.circles.platform.result.extra.CONFIRMATION'),(12,121,'USER_AGENT'),(13,63,'type'),(14,91,'applovin.sdk.autoupdate_disabled'),(15,55,'applovin.sdk.autoupdate_disabled'),(16,90,'applovin.sdk.autoupdate_disabled'),(17,63,'adType'),(18,103,'marketlink'),(19,103,'appId'),(20,52,'SERVICE_MODE'),(21,52,'DEVELOPER_ID'),(22,103,'adType'),(23,52,'M_SERVER_URL'),(24,52,'APPLICATION_ID'),(25,81,'sectionid'),(26,99,'appId'),(27,52,'USER_AGENT'),(28,68,'notif_sig'),(29,84,'referrer'),(30,91,'applovin.sdk.key'),(31,55,'applovin.sdk.key'),(32,90,'applovin.sdk.key'),(33,101,'appId'),(34,52,'FIRST_RUN'),(35,91,'applovin.sdk.verbose_logging'),(36,55,'applovin.sdk.verbose_logging'),(37,90,'applovin.sdk.verbose_logging'),(38,123,'goldenshorestechnologies.brightestflashlight.free.type'),(39,126,'cached'),(40,125,'shouldShowTitlebar'),(41,126,'videoPosition'),(42,126,'videoCompleted'),(43,126,'lastVideoPosition'),(44,128,'USER_AGENT'),(45,125,'transitionTime'),(46,125,'shouldEnableBottomBar'),(47,128,'DEVELOPER_ID'),(48,126,'videoAd'),(49,126,'isCachedAd'),(50,125,'cachedAdView'),(51,124,'com.google.ads.AdOpener'),(52,128,'SERVICE_MODE'),(53,126,'shouldShowBottomBar'),(54,125,'overlayTransition'),(55,126,'logSet'),(56,125,'overlayOrientation'),(57,125,'shouldResizeOverlay'),(58,128,'APPLICATION_ID'),(59,127,'o'),(60,127,'u'),(61,123,'imageUri'),(62,128,'M_SERVER_URL'),(63,126,'adName'),(64,124,'params'),(65,125,'canAccelerate'),(66,128,'FIRST_RUN'),(67,123,'goldenshorestechnologies.brightestflashlight.free.data'),(68,124,'action'),(69,126,'videoCompletedOnce'),(70,125,'shouldMakeOverlayTransparent'),(71,128,'permanent'),(72,125,'shouldShowBottomBar'),(73,125,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'r',1,32,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,32,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,54,'s',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,67,'r',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,71,'r',1,NULL,NULL),(71,70,'s',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',1,NULL,NULL),(90,90,'r',0,NULL,NULL),(91,91,'r',1,32,NULL),(92,92,'a',0,NULL,NULL),(93,93,'r',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,97,'r',0,NULL,NULL),(97,96,'s',1,NULL,NULL),(98,98,'r',0,NULL,NULL),(99,99,'r',0,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'r',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'r',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,106,'s',1,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',0,NULL,NULL),(109,109,'r',0,NULL,NULL),(110,110,'r',0,NULL,NULL),(111,111,'r',1,32,NULL),(112,112,'r',0,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,32,NULL),(116,116,'r',0,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,118,'r',1,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',1,NULL,NULL),(121,121,'s',0,NULL,NULL),(122,122,'a',1,NULL,NULL),(123,123,'a',0,NULL,NULL),(124,124,'a',0,NULL,NULL),(125,125,'a',0,NULL,NULL),(126,126,'a',0,NULL,NULL),(127,127,'a',1,NULL,NULL),(128,128,'s',0,NULL,NULL),(129,130,'r',1,NULL,NULL),(130,146,'r',1,NULL,NULL),(131,147,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,121),(2,2,121),(3,3,121),(4,4,121),(5,5,119),(6,6,121),(7,7,121),(8,8,120),(9,9,119),(10,10,33),(11,11,52),(12,12,52),(13,13,52),(14,14,52),(15,15,33),(16,16,84),(17,17,33),(18,18,33),(19,19,33),(20,19,76),(21,19,81),(22,19,37),(23,20,101),(24,21,33),(25,22,33),(26,23,52),(27,24,103),(28,25,99),(29,26,37),(30,26,81),(31,26,33),(32,26,76),(33,27,52),(34,28,37),(35,29,33),(36,30,103),(37,31,68),(38,32,33),(39,33,33),(40,34,40),(41,35,33),(42,36,33),(43,37,128),(44,38,126),(45,39,122),(46,40,128),(47,41,126),(48,42,123),(49,43,126),(50,44,128),(51,45,123),(52,46,124),(53,47,126),(54,48,122),(55,49,123),(56,50,123),(57,51,128),(58,52,126),(59,53,123),(60,54,126),(61,54,122),(62,55,126),(63,55,122),(64,56,128),(65,57,126),(66,57,122),(67,58,123),(68,59,123),(69,60,126),(70,60,122),(71,61,122),(72,61,126),(73,62,128),(74,63,122),(75,63,126),(76,64,122),(77,64,126),(78,65,122),(79,65,126);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,129,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(2,129,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(3,131,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(4,131,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,119,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(6,129,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(7,131,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(8,121,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(9,119,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(10,33,'<com.fingerprint.security.pro.SettingActivity: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',20,'a',NULL),(11,132,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(12,133,'<com.apperhand.device.android.a.d: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(13,133,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(14,133,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(15,134,'<com.fingerprint.security.pro.SettingActivity$4: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(16,84,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(17,135,'<com.pontiflex.mobile.webview.sdk.b: void a(com.pontiflex.mobile.webview.sdk.c)>',77,'a',NULL),(18,136,'<com.fingerprint.security.pro.SettingActivity$2: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(19,137,'<com.Leadbolt.AdController: void displayIcon()>',64,'r',NULL),(20,101,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(21,138,'<com.inoxpush.downloadticker.a: void <init>(android.content.Context)>',15,'s',NULL),(22,135,'<com.pontiflex.mobile.webview.sdk.b: void a(android.app.Activity)>',23,'a',NULL),(23,132,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(24,103,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'a',NULL),(25,99,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(26,137,'<com.Leadbolt.AdController: void displayIcon()>',91,'p',NULL),(27,132,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(28,139,'<com.fingerprint.security.pro.StartActivity$1: void onClick(android.view.View)>',9,'a',NULL),(29,33,'<com.fingerprint.security.pro.SettingActivity: void onCreate(android.os.Bundle)>',56,'a',NULL),(30,103,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(31,67,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(32,135,'<com.pontiflex.mobile.webview.sdk.b: void b(android.app.Activity)>',25,'a',NULL),(33,140,'<com.fingerprint.security.pro.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,40,'<com.fingerprint.security.pro.RateActivity: void onClickRate(android.view.View)>',7,'a',NULL),(35,33,'<com.fingerprint.security.pro.SettingActivity: void onBackPressed()>',4,'a',NULL),(36,52,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context)>',45,'s',NULL),(37,141,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(38,142,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(39,143,'<goldenshorestechnologies.brightestflashlight.free.RatingRequestUI$1: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(40,144,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(41,142,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(42,145,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(43,142,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(44,144,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(45,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',56,'a',0),(46,124,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(47,142,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(48,128,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',48,'s',NULL),(49,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(50,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',40,'a',NULL),(51,141,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(52,142,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(53,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',NULL),(54,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',214,'a',NULL),(55,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',159,'a',NULL),(56,141,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(57,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',184,'a',NULL),(58,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',49,'a',NULL),(59,123,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',31,'a',NULL),(60,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',237,'a',NULL),(61,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',193,'a',NULL),(62,144,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(63,148,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(64,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',225,'a',NULL),(65,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',246,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,21),(2,4,24),(3,5,25),(4,6,25),(5,7,24),(6,8,26),(7,9,21),(8,10,24),(9,14,21),(10,15,21),(11,16,21),(12,17,27),(13,20,24),(14,21,27),(15,24,28),(16,25,27),(17,26,29),(18,27,29),(19,29,30),(20,30,24),(21,33,21),(22,35,24),(23,37,24),(24,38,24),(25,39,24),(26,40,24),(27,41,25),(28,42,24),(29,43,25),(30,44,24),(31,45,24),(32,48,32),(33,49,32),(34,50,32),(35,51,32),(36,52,32),(37,53,32),(38,54,32),(39,55,32),(40,58,33),(41,59,34),(42,60,35),(43,61,24),(44,63,32),(45,64,32),(46,65,32),(47,66,32),(48,67,32),(49,68,32),(50,69,32),(51,70,32),(52,72,33),(53,73,34),(54,74,24),(55,75,24),(56,76,36),(57,78,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,41,8),(3,42,8),(4,43,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com.google.android.apps.circles.platform.PlusOneActivity'),(2,3,'com/apperhand/device/android/AndroidSDKProvider'),(3,11,'com/inox/referrer/SendDataService'),(4,12,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(5,13,'com/fingerprint/security/pro/ScanActivity'),(6,18,'com/inoxpush/downloadticker/DownloadTickerService'),(7,19,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(8,22,'com/fingerprint/security/pro/ScanActivity'),(9,23,'com/fingerprint/security/pro/HelpScreen'),(10,26,'com/moolah/NotificationService'),(11,27,'com/moolah/NotificationService'),(12,28,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(13,31,'com/fingerprint/security/pro/RateActivity'),(14,32,'com/apperhand/device/android/AndroidSDKProvider'),(15,34,'com/mobclix/android/sdk/MobclixBrowserActivity'),(16,36,'com/mobclix/android/sdk/MobclixBrowserActivity'),(17,46,'com/apperhand/device/android/AndroidSDKProvider'),(18,47,'com/apperhand/device/android/AndroidSDKProvider'),(19,56,'com/mobclix/android/sdk/MobclixBrowserActivity'),(20,62,'com/millennialmedia/android/MMAdViewOverlayActivity'),(21,77,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,7),(2,5,8),(3,6,9),(4,7,10),(5,10,15),(6,20,17),(7,30,20),(8,35,21),(9,37,23),(10,38,24),(11,39,25),(12,40,26),(13,41,28),(14,42,29),(15,43,30),(16,44,31),(17,45,32),(18,60,35),(19,61,36),(20,62,39),(21,74,40),(22,75,41),(23,77,43),(24,78,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'com.google.circles.platform.intent.extra.ACTION'),(5,2,'(.*)'),(6,2,'com.google.circles.platform.intent.extra.ENTITY'),(7,2,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(8,3,'M_SERVER_URL'),(9,3,'USER_AGENT'),(10,3,'SERVICE_MODE'),(11,3,'FIRST_RUN'),(12,3,'DEVELOPER_ID'),(13,3,'APPLICATION_ID'),(14,9,'android.intent.extra.shortcut.NAME'),(15,9,'android.intent.extra.shortcut.ICON'),(16,9,'android.intent.extra.shortcut.INTENT'),(17,12,'offerCount'),(18,14,'android.intent.extra.shortcut.NAME'),(19,14,'android.intent.extra.shortcut.ICON_RESOURCE'),(20,14,'android.intent.extra.shortcut.INTENT'),(21,15,'android.intent.extra.shortcut.NAME'),(22,15,'android.intent.extra.shortcut.ICON'),(23,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(24,15,'android.intent.extra.shortcut.INTENT'),(25,16,'android.intent.extra.shortcut.NAME'),(26,16,'android.intent.extra.shortcut.ICON'),(27,16,'android.intent.extra.shortcut.INTENT'),(28,17,'NULL-CONSTANT'),(29,17,'type'),(30,21,'NULL-CONSTANT'),(31,21,'type'),(32,24,'NULL-CONSTANT'),(33,24,'type'),(34,25,'NULL-CONSTANT'),(35,25,'type'),(36,26,'notif_sig'),(37,26,'test_mode'),(38,27,'test_mode'),(39,28,'singleoffer'),(40,28,'offerCount'),(41,32,'M_SERVER_URL'),(42,32,'USER_AGENT'),(43,32,'SERVICE_MODE'),(44,32,'FIRST_RUN'),(45,32,'DEVELOPER_ID'),(46,32,'APPLICATION_ID'),(47,33,'android.intent.extra.shortcut.NAME'),(48,33,'android.intent.extra.shortcut.ICON'),(49,33,'android.intent.extra.shortcut.INTENT'),(50,46,'M_SERVER_URL'),(51,46,'USER_AGENT'),(52,46,'SERVICE_MODE'),(53,46,'FIRST_RUN'),(54,46,'DEVELOPER_ID'),(55,46,'(.*)'),(56,46,'APPLICATION_ID'),(57,47,'M_SERVER_URL'),(58,47,'USER_AGENT'),(59,47,'SERVICE_MODE'),(60,47,'FIRST_RUN'),(61,47,'DEVELOPER_ID'),(62,47,'APPLICATION_ID'),(63,48,'android.intent.extra.INTENT'),(64,49,'android.intent.extra.INTENT'),(65,50,'android.intent.extra.TITLE'),(66,50,'android.intent.extra.INTENT'),(67,51,'android.intent.extra.INTENT'),(68,52,'android.intent.extra.TITLE'),(69,52,'android.intent.extra.INTENT'),(70,53,'android.intent.extra.INTENT'),(71,54,'android.intent.extra.TITLE'),(72,54,'android.intent.extra.INTENT'),(73,55,'android.intent.extra.TITLE'),(74,55,'android.intent.extra.INTENT'),(75,59,'output'),(76,59,'android.intent.extra.videoQuality'),(77,62,'overlayOrientation'),(78,62,'cachedAdView'),(79,63,'android.intent.extra.INTENT'),(80,64,'android.intent.extra.INTENT'),(81,65,'android.intent.extra.TITLE'),(82,65,'android.intent.extra.INTENT'),(83,66,'android.intent.extra.INTENT'),(84,67,'android.intent.extra.TITLE'),(85,67,'android.intent.extra.INTENT'),(86,68,'android.intent.extra.INTENT'),(87,69,'android.intent.extra.TITLE'),(88,69,'android.intent.extra.INTENT'),(89,70,'android.intent.extra.TITLE'),(90,70,'android.intent.extra.INTENT'),(91,73,'output'),(92,73,'android.intent.extra.videoQuality'),(93,76,'command'),(94,77,'overlayOrientation'),(95,77,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(8,8,7),(9,9,7),(10,10,8),(11,11,1),(12,12,9),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,10),(18,18,11),(19,19,12),(20,20,7),(21,21,13),(22,22,7),(23,23,14),(24,24,15),(25,25,10),(26,26,6),(27,27,5),(28,28,16),(29,29,7),(30,30,14),(31,31,17),(32,32,7),(33,33,5),(34,34,7),(35,35,7),(36,37,6),(37,36,14),(38,38,7),(39,39,18),(40,40,19),(41,41,1),(42,42,1),(43,43,20),(44,44,22),(45,44,23),(46,45,31),(47,45,22),(48,46,31),(49,46,22),(50,46,23),(51,47,22),(52,47,31);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,6,3),(5,7,3),(6,8,4),(7,9,4),(8,10,5),(9,11,1),(10,12,5),(11,13,1),(12,14,5),(13,15,4),(14,15,5),(15,16,1),(16,18,5),(17,20,4),(18,22,4),(19,24,5),(20,26,6),(21,27,6),(22,29,4),(23,33,7),(24,34,4),(25,37,7),(26,41,1),(27,42,1),(28,43,5);
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
INSERT INTO `IFData` VALUES (1,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'(.*)','(.*)'),(2,7,'(.*)','(.*)'),(3,43,'(.*)','(.*)'),(4,58,'image','*'),(5,72,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.google.android.apps.plus'),(2,3,'fr.mildlyusefulsoftware.awesomesportcars'),(3,11,'com.fingerprint.security.pro'),(4,12,'com.fingerprint.security.pro'),(5,13,'com.fingerprint.security.pro'),(6,18,'com.fingerprint.security.pro'),(7,19,'com.fingerprint.security.pro'),(8,22,'com.fingerprint.security.pro'),(9,23,'com.fingerprint.security.pro'),(10,26,'com.fingerprint.security.pro'),(11,27,'com.fingerprint.security.pro'),(12,28,'com.fingerprint.security.pro'),(13,31,'com.fingerprint.security.pro'),(14,32,'com.fingerprint.security.pro'),(15,34,'goldenshorestechnologies.brightestflashlight.free'),(16,36,'goldenshorestechnologies.brightestflashlight.free'),(17,46,'goldenshorestechnologies.brightestflashlight.free'),(18,47,'goldenshorestechnologies.brightestflashlight.free'),(19,56,'goldenshorestechnologies.brightestflashlight.free'),(20,62,'goldenshorestechnologies.brightestflashlight.free'),(21,77,'goldenshorestechnologies.brightestflashlight.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,2,0),(4,13,0),(5,17,0),(6,18,0),(7,22,0),(8,23,0),(9,27,0),(10,30,0),(11,31,0),(12,32,0),(13,33,0),(14,34,0),(15,36,0),(16,43,0),(17,55,0),(18,60,0),(19,63,0),(20,70,0),(21,71,0),(22,76,0),(23,84,0),(24,87,0),(25,89,0),(26,91,0),(27,91,0),(28,97,0),(29,100,0),(30,105,0),(31,106,0),(32,107,0),(33,111,0),(34,113,0),(35,107,0),(36,114,0),(37,115,0),(38,117,0),(39,118,0),(40,118,0),(41,120,0),(42,122,0),(43,127,0),(44,129,0),(45,130,0),(46,131,0),(47,130,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,5,0,0),(3,8,0,0),(4,9,1,0),(5,9,1,0),(6,9,1,0),(7,9,1,0),(8,10,1,0),(9,12,1,0),(10,15,1,0),(11,16,0,0),(12,17,0,0),(13,18,0,0),(14,19,1,0),(15,19,1,0),(16,19,1,0),(17,20,1,0),(18,21,0,0),(19,22,0,0),(20,24,1,0),(21,25,1,0),(22,28,0,0),(23,29,0,0),(24,30,1,0),(25,30,1,0),(26,31,0,0),(27,31,0,0),(28,32,0,0),(29,33,1,0),(30,34,1,0),(31,35,0,0),(32,36,0,0),(33,37,1,0),(34,38,0,0),(35,39,1,0),(36,41,0,0),(37,42,1,0),(38,42,1,0),(39,43,1,0),(40,43,1,0),(41,46,1,0),(42,46,1,0),(43,46,1,0),(44,47,1,0),(45,47,1,0),(46,48,0,0),(47,48,0,0),(48,50,1,0),(49,50,1,0),(50,50,1,0),(51,50,1,0),(52,50,1,0),(53,50,1,0),(54,50,1,0),(55,50,1,0),(56,52,0,0),(57,53,1,0),(58,53,1,0),(59,53,1,0),(60,54,1,0),(61,55,1,0),(62,57,0,0),(63,58,1,0),(64,58,1,0),(65,58,1,0),(66,58,1,0),(67,58,1,0),(68,58,1,0),(69,58,1,0),(70,58,1,0),(71,59,1,0),(72,59,1,0),(73,59,1,0),(74,60,1,0),(75,61,1,0),(76,63,1,0),(77,64,0,0),(78,65,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,122,2,NULL),(2,21,122,2,NULL),(3,17,122,2,NULL),(4,20,122,2,NULL),(5,24,122,2,NULL),(6,25,122,2,NULL),(7,4,122,2,NULL),(8,6,122,2,NULL),(9,48,122,2,NULL),(10,49,122,2,NULL),(11,50,122,2,NULL),(12,51,122,2,NULL),(13,52,122,2,NULL),(14,53,122,2,NULL),(15,54,122,2,NULL),(16,55,122,2,NULL),(17,57,122,2,NULL),(18,59,122,2,NULL),(19,63,122,2,NULL),(20,64,122,2,NULL),(21,65,122,2,NULL),(22,66,122,2,NULL),(23,67,122,2,NULL),(24,68,122,2,NULL),(25,69,122,2,NULL),(26,70,122,2,NULL),(27,71,122,2,NULL),(28,73,122,2,NULL),(29,41,122,2,NULL),(30,42,122,2,NULL),(31,60,122,2,NULL),(32,61,122,2,NULL),(33,74,122,2,NULL),(34,75,122,2,NULL),(35,78,122,2,NULL),(36,48,2,2,NULL),(37,49,2,2,NULL),(38,50,2,2,NULL),(39,51,2,2,NULL),(40,52,2,2,NULL),(41,53,2,2,NULL),(42,54,2,2,NULL),(43,55,2,2,NULL),(44,57,2,2,NULL),(45,59,2,2,NULL),(46,63,2,2,NULL),(47,64,2,2,NULL),(48,65,2,2,NULL),(49,66,2,2,NULL),(50,67,2,2,NULL),(51,68,2,2,NULL),(52,69,2,2,NULL),(53,70,2,2,NULL),(54,71,2,2,NULL),(55,73,2,2,NULL),(56,48,13,2,NULL),(57,49,13,2,NULL),(58,50,13,2,NULL),(59,51,13,2,NULL),(60,52,13,2,NULL),(61,53,13,2,NULL),(62,54,13,2,NULL),(63,55,13,2,NULL),(64,57,13,2,NULL),(65,59,13,2,NULL),(66,63,13,2,NULL),(67,64,13,2,NULL),(68,65,13,2,NULL),(69,66,13,2,NULL),(70,67,13,2,NULL),(71,68,13,2,NULL),(72,69,13,2,NULL),(73,70,13,2,NULL),(74,71,13,2,NULL),(75,73,13,2,NULL),(76,48,18,2,NULL),(77,49,18,2,NULL),(78,50,18,2,NULL),(79,51,18,2,NULL),(80,52,18,2,NULL),(81,53,18,2,NULL),(82,54,18,2,NULL),(83,55,18,2,NULL),(84,57,18,2,NULL),(85,59,18,2,NULL),(86,63,18,2,NULL),(87,64,18,2,NULL),(88,65,18,2,NULL),(89,66,18,2,NULL),(90,67,18,2,NULL),(91,68,18,2,NULL),(92,69,18,2,NULL),(93,70,18,2,NULL),(94,71,18,2,NULL),(95,73,18,2,NULL),(96,48,22,2,NULL),(97,49,22,2,NULL),(98,50,22,2,NULL),(99,51,22,2,NULL),(100,52,22,2,NULL),(101,53,22,2,NULL),(102,54,22,2,NULL),(103,55,22,2,NULL),(104,57,22,2,NULL),(105,59,22,2,NULL),(106,63,22,2,NULL),(107,64,22,2,NULL),(108,65,22,2,NULL),(109,66,22,2,NULL),(110,67,22,2,NULL),(111,68,22,2,NULL),(112,69,22,2,NULL),(113,70,22,2,NULL),(114,71,22,2,NULL),(115,73,22,2,NULL),(116,48,27,2,NULL),(117,49,27,2,NULL),(118,50,27,2,NULL),(119,51,27,2,NULL),(120,52,27,2,NULL),(121,53,27,2,NULL),(122,54,27,2,NULL),(123,55,27,2,NULL),(124,57,27,2,NULL),(125,59,27,2,NULL),(126,63,27,2,NULL),(127,64,27,2,NULL),(128,65,27,2,NULL),(129,66,27,2,NULL),(130,67,27,2,NULL),(131,68,27,2,NULL),(132,69,27,2,NULL),(133,70,27,2,NULL),(134,71,27,2,NULL),(135,73,27,2,NULL),(136,48,1,2,NULL),(137,49,1,2,NULL),(138,50,1,2,NULL),(139,51,1,2,NULL),(140,52,1,2,NULL),(141,53,1,2,NULL),(142,54,1,2,NULL),(143,55,1,2,NULL),(144,57,1,2,NULL),(145,59,1,2,NULL),(146,63,1,2,NULL),(147,64,1,2,NULL),(148,65,1,2,NULL),(149,66,1,2,NULL),(150,67,1,2,NULL),(151,68,1,2,NULL),(152,69,1,2,NULL),(153,70,1,2,NULL),(154,71,1,2,NULL),(155,73,1,2,NULL),(156,48,17,2,NULL),(157,49,17,2,NULL),(158,50,17,2,NULL),(159,51,17,2,NULL),(160,52,17,2,NULL),(161,53,17,2,NULL),(162,54,17,2,NULL),(163,55,17,2,NULL),(164,57,17,2,NULL),(165,59,17,2,NULL),(166,63,17,2,NULL),(167,64,17,2,NULL),(168,65,17,2,NULL),(169,66,17,2,NULL),(170,67,17,2,NULL),(171,68,17,2,NULL),(172,69,17,2,NULL),(173,70,17,2,NULL),(174,71,17,2,NULL),(175,73,17,2,NULL),(176,48,23,2,NULL),(177,49,23,2,NULL),(178,50,23,2,NULL),(179,51,23,2,NULL),(180,52,23,2,NULL),(181,53,23,2,NULL),(182,54,23,2,NULL),(183,55,23,2,NULL),(184,57,23,2,NULL),(185,59,23,2,NULL),(186,63,23,2,NULL),(187,64,23,2,NULL),(188,65,23,2,NULL),(189,66,23,2,NULL),(190,67,23,2,NULL),(191,68,23,2,NULL),(192,69,23,2,NULL),(193,70,23,2,NULL),(194,71,23,2,NULL),(195,73,23,2,NULL),(196,48,30,2,NULL),(197,49,30,2,NULL),(198,50,30,2,NULL),(199,51,30,2,NULL),(200,52,30,2,NULL),(201,53,30,2,NULL),(202,54,30,2,NULL),(203,55,30,2,NULL),(204,57,30,2,NULL),(205,59,30,2,NULL),(206,63,30,2,NULL),(207,64,30,2,NULL),(208,65,30,2,NULL),(209,66,30,2,NULL),(210,67,30,2,NULL),(211,68,30,2,NULL),(212,69,30,2,NULL),(213,70,30,2,NULL),(214,71,30,2,NULL),(215,73,30,2,NULL),(216,48,31,2,NULL),(217,49,31,2,NULL),(218,50,31,2,NULL),(219,51,31,2,NULL),(220,52,31,2,NULL),(221,53,31,2,NULL),(222,54,31,2,NULL),(223,55,31,2,NULL),(224,57,31,2,NULL),(225,59,31,2,NULL),(226,63,31,2,NULL),(227,64,31,2,NULL),(228,65,31,2,NULL),(229,66,31,2,NULL),(230,67,31,2,NULL),(231,68,31,2,NULL),(232,69,31,2,NULL),(233,70,31,2,NULL),(234,71,31,2,NULL),(235,73,31,2,NULL),(236,48,32,2,NULL),(237,49,32,2,NULL),(238,50,32,2,NULL),(239,51,32,2,NULL),(240,52,32,2,NULL),(241,53,32,2,NULL),(242,54,32,2,NULL),(243,55,32,2,NULL),(244,57,32,2,NULL),(245,59,32,2,NULL),(246,63,32,2,NULL),(247,64,32,2,NULL),(248,65,32,2,NULL),(249,66,32,2,NULL),(250,67,32,2,NULL),(251,68,32,2,NULL),(252,69,32,2,NULL),(253,70,32,2,NULL),(254,71,32,2,NULL),(255,73,32,2,NULL),(256,48,34,2,NULL),(257,49,34,2,NULL),(258,50,34,2,NULL),(259,51,34,2,NULL),(260,52,34,2,NULL),(261,53,34,2,NULL),(262,54,34,2,NULL),(263,55,34,2,NULL),(264,57,34,2,NULL),(265,59,34,2,NULL),(266,63,34,2,NULL),(267,64,34,2,NULL),(268,65,34,2,NULL),(269,66,34,2,NULL),(270,67,34,2,NULL),(271,68,34,2,NULL),(272,69,34,2,NULL),(273,70,34,2,NULL),(274,71,34,2,NULL),(275,73,34,2,NULL),(276,48,36,2,NULL),(277,49,36,2,NULL),(278,50,36,2,NULL),(279,51,36,2,NULL),(280,52,36,2,NULL),(281,53,36,2,NULL),(282,54,36,2,NULL),(283,55,36,2,NULL),(284,57,36,2,NULL),(285,59,36,2,NULL),(286,63,36,2,NULL),(287,64,36,2,NULL),(288,65,36,2,NULL),(289,66,36,2,NULL),(290,67,36,2,NULL),(291,68,36,2,NULL),(292,69,36,2,NULL),(293,70,36,2,NULL),(294,71,36,2,NULL),(295,73,36,2,NULL),(296,48,71,2,NULL),(297,49,71,2,NULL),(298,50,71,2,NULL),(299,51,71,2,NULL),(300,52,71,2,NULL),(301,53,71,2,NULL),(302,54,71,2,NULL),(303,55,71,2,NULL),(304,57,71,2,NULL),(305,59,71,2,NULL),(306,63,71,2,NULL),(307,64,71,2,NULL),(308,65,71,2,NULL),(309,66,71,2,NULL),(310,67,71,2,NULL),(311,68,71,2,NULL),(312,69,71,2,NULL),(313,70,71,2,NULL),(314,71,71,2,NULL),(315,73,71,2,NULL),(316,48,89,2,NULL),(317,49,89,2,NULL),(318,50,89,2,NULL),(319,51,89,2,NULL),(320,52,89,2,NULL),(321,53,89,2,NULL),(322,54,89,2,NULL),(323,55,89,2,NULL),(324,57,89,2,NULL),(325,59,89,2,NULL),(326,63,89,2,NULL),(327,64,89,2,NULL),(328,65,89,2,NULL),(329,66,89,2,NULL),(330,67,89,2,NULL),(331,68,89,2,NULL),(332,69,89,2,NULL),(333,70,89,2,NULL),(334,71,89,2,NULL),(335,73,89,2,NULL),(336,48,100,2,NULL),(337,49,100,2,NULL),(338,50,100,2,NULL),(339,51,100,2,NULL),(340,52,100,2,NULL),(341,53,100,2,NULL),(342,54,100,2,NULL),(343,55,100,2,NULL),(344,57,100,2,NULL),(345,59,100,2,NULL),(346,63,100,2,NULL),(347,64,100,2,NULL),(348,65,100,2,NULL),(349,66,100,2,NULL),(350,67,100,2,NULL),(351,68,100,2,NULL),(352,69,100,2,NULL),(353,70,100,2,NULL),(354,71,100,2,NULL),(355,73,100,2,NULL),(356,48,105,2,NULL),(357,49,105,2,NULL),(358,50,105,2,NULL),(359,51,105,2,NULL),(360,52,105,2,NULL),(361,53,105,2,NULL),(362,54,105,2,NULL),(363,55,105,2,NULL),(364,57,105,2,NULL),(365,59,105,2,NULL),(366,63,105,2,NULL),(367,64,105,2,NULL),(368,65,105,2,NULL),(369,66,105,2,NULL),(370,67,105,2,NULL),(371,68,105,2,NULL),(372,69,105,2,NULL),(373,70,105,2,NULL),(374,71,105,2,NULL),(375,73,105,2,NULL),(376,48,107,2,NULL),(377,49,107,2,NULL),(378,50,107,2,NULL),(379,51,107,2,NULL),(380,52,107,2,NULL),(381,53,107,2,NULL),(382,54,107,2,NULL),(383,55,107,2,NULL),(384,57,107,2,NULL),(385,59,107,2,NULL),(386,63,107,2,NULL),(387,64,107,2,NULL),(388,65,107,2,NULL),(389,66,107,2,NULL),(390,67,107,2,NULL),(391,68,107,2,NULL),(392,69,107,2,NULL),(393,70,107,2,NULL),(394,71,107,2,NULL),(395,73,107,2,NULL),(396,48,111,2,NULL),(397,49,111,2,NULL),(398,50,111,2,NULL),(399,51,111,2,NULL),(400,52,111,2,NULL),(401,53,111,2,NULL),(402,54,111,2,NULL),(403,55,111,2,NULL),(404,57,111,2,NULL),(405,59,111,2,NULL),(406,63,111,2,NULL),(407,64,111,2,NULL),(408,65,111,2,NULL),(409,66,111,2,NULL),(410,67,111,2,NULL),(411,68,111,2,NULL),(412,69,111,2,NULL),(413,70,111,2,NULL),(414,71,111,2,NULL),(415,73,111,2,NULL),(416,48,115,2,NULL),(417,49,115,2,NULL),(418,50,115,2,NULL),(419,51,115,2,NULL),(420,52,115,2,NULL),(421,53,115,2,NULL),(422,54,115,2,NULL),(423,55,115,2,NULL),(424,57,115,2,NULL),(425,59,115,2,NULL),(426,63,115,2,NULL),(427,64,115,2,NULL),(428,65,115,2,NULL),(429,66,115,2,NULL),(430,67,115,2,NULL),(431,68,115,2,NULL),(432,69,115,2,NULL),(433,70,115,2,NULL),(434,71,115,2,NULL),(435,73,115,2,NULL),(436,48,117,2,NULL),(437,49,117,2,NULL),(438,50,117,2,NULL),(439,51,117,2,NULL),(440,52,117,2,NULL),(441,53,117,2,NULL),(442,54,117,2,NULL),(443,55,117,2,NULL),(444,57,117,2,NULL),(445,59,117,2,NULL),(446,63,117,2,NULL),(447,64,117,2,NULL),(448,65,117,2,NULL),(449,66,117,2,NULL),(450,67,117,2,NULL),(451,68,117,2,NULL),(452,69,117,2,NULL),(453,70,117,2,NULL),(454,71,117,2,NULL),(455,73,117,2,NULL),(456,48,33,2,NULL),(457,49,33,2,NULL),(458,50,33,2,NULL),(459,51,33,2,NULL),(460,52,33,2,NULL),(461,53,33,2,NULL),(462,54,33,2,NULL),(463,55,33,2,NULL),(464,57,33,2,NULL),(465,59,33,2,NULL),(466,63,33,2,NULL),(467,64,33,2,NULL),(468,65,33,2,NULL),(469,66,33,2,NULL),(470,67,33,2,NULL),(471,68,33,2,NULL),(472,69,33,2,NULL),(473,70,33,2,NULL),(474,71,33,2,NULL),(475,73,33,2,NULL),(476,48,55,2,NULL),(477,49,55,2,NULL),(478,50,55,2,NULL),(479,51,55,2,NULL),(480,52,55,2,NULL),(481,53,55,2,NULL),(482,54,55,2,NULL),(483,55,55,2,NULL),(484,57,55,2,NULL),(485,59,55,2,NULL),(486,63,55,2,NULL),(487,64,55,2,NULL),(488,65,55,2,NULL),(489,66,55,2,NULL),(490,67,55,2,NULL),(491,68,55,2,NULL),(492,69,55,2,NULL),(493,70,55,2,NULL),(494,71,55,2,NULL),(495,73,55,2,NULL),(496,48,63,2,NULL),(497,49,63,2,NULL),(498,50,63,2,NULL),(499,51,63,2,NULL),(500,52,63,2,NULL),(501,53,63,2,NULL),(502,54,63,2,NULL),(503,55,63,2,NULL),(504,57,63,2,NULL),(505,59,63,2,NULL),(506,63,63,2,NULL),(507,64,63,2,NULL),(508,65,63,2,NULL),(509,66,63,2,NULL),(510,67,63,2,NULL),(511,68,63,2,NULL),(512,69,63,2,NULL),(513,70,63,2,NULL),(514,71,63,2,NULL),(515,73,63,2,NULL),(516,48,70,2,NULL),(517,49,70,2,NULL),(518,50,70,2,NULL),(519,51,70,2,NULL),(520,52,70,2,NULL),(521,53,70,2,NULL),(522,54,70,2,NULL),(523,55,70,2,NULL),(524,57,70,2,NULL),(525,59,70,2,NULL),(526,63,70,2,NULL),(527,64,70,2,NULL),(528,65,70,2,NULL),(529,66,70,2,NULL),(530,67,70,2,NULL),(531,68,70,2,NULL),(532,69,70,2,NULL),(533,70,70,2,NULL),(534,71,70,2,NULL),(535,73,70,2,NULL),(536,48,76,2,NULL),(537,49,76,2,NULL),(538,50,76,2,NULL),(539,51,76,2,NULL),(540,52,76,2,NULL),(541,53,76,2,NULL),(542,54,76,2,NULL),(543,55,76,2,NULL),(544,57,76,2,NULL),(545,59,76,2,NULL),(546,63,76,2,NULL),(547,64,76,2,NULL),(548,65,76,2,NULL),(549,66,76,2,NULL),(550,67,76,2,NULL),(551,68,76,2,NULL),(552,69,76,2,NULL),(553,70,76,2,NULL),(554,71,76,2,NULL),(555,73,76,2,NULL),(556,48,84,2,NULL),(557,49,84,2,NULL),(558,50,84,2,NULL),(559,51,84,2,NULL),(560,52,84,2,NULL),(561,53,84,2,NULL),(562,54,84,2,NULL),(563,55,84,2,NULL),(564,57,84,2,NULL),(565,59,84,2,NULL),(566,63,84,2,NULL),(567,64,84,2,NULL),(568,65,84,2,NULL),(569,66,84,2,NULL),(570,67,84,2,NULL),(571,68,84,2,NULL),(572,69,84,2,NULL),(573,70,84,2,NULL),(574,71,84,2,NULL),(575,73,84,2,NULL),(576,48,91,2,NULL),(577,49,91,2,NULL),(578,50,91,2,NULL),(579,51,91,2,NULL),(580,52,91,2,NULL),(581,53,91,2,NULL),(582,54,91,2,NULL),(583,55,91,2,NULL),(584,57,91,2,NULL),(585,59,91,2,NULL),(586,63,91,2,NULL),(587,64,91,2,NULL),(588,65,91,2,NULL),(589,66,91,2,NULL),(590,67,91,2,NULL),(591,68,91,2,NULL),(592,69,91,2,NULL),(593,70,91,2,NULL),(594,71,91,2,NULL),(595,73,91,2,NULL),(596,48,43,2,NULL),(597,49,43,2,NULL),(598,50,43,2,NULL),(599,51,43,2,NULL),(600,52,43,2,NULL),(601,53,43,2,NULL),(602,54,43,2,NULL),(603,55,43,2,NULL),(604,57,43,2,NULL),(605,59,43,2,NULL),(606,63,43,2,NULL),(607,64,43,2,NULL),(608,65,43,2,NULL),(609,66,43,2,NULL),(610,67,43,2,NULL),(611,68,43,2,NULL),(612,69,43,2,NULL),(613,70,43,2,NULL),(614,71,43,2,NULL),(615,73,43,2,NULL),(616,48,60,2,NULL),(617,49,60,2,NULL),(618,50,60,2,NULL),(619,51,60,2,NULL),(620,52,60,2,NULL),(621,53,60,2,NULL),(622,54,60,2,NULL),(623,55,60,2,NULL),(624,57,60,2,NULL),(625,59,60,2,NULL),(626,63,60,2,NULL),(627,64,60,2,NULL),(628,65,60,2,NULL),(629,66,60,2,NULL),(630,67,60,2,NULL),(631,68,60,2,NULL),(632,69,60,2,NULL),(633,70,60,2,NULL),(634,71,60,2,NULL),(635,73,60,2,NULL),(636,48,87,2,NULL),(637,49,87,2,NULL),(638,50,87,2,NULL),(639,51,87,2,NULL),(640,52,87,2,NULL),(641,53,87,2,NULL),(642,54,87,2,NULL),(643,55,87,2,NULL),(644,57,87,2,NULL),(645,59,87,2,NULL),(646,63,87,2,NULL),(647,64,87,2,NULL),(648,65,87,2,NULL),(649,66,87,2,NULL),(650,67,87,2,NULL),(651,68,87,2,NULL),(652,69,87,2,NULL),(653,70,87,2,NULL),(654,71,87,2,NULL),(655,73,87,2,NULL),(656,48,97,2,NULL),(657,49,97,2,NULL),(658,50,97,2,NULL),(659,51,97,2,NULL),(660,52,97,2,NULL),(661,53,97,2,NULL),(662,54,97,2,NULL),(663,55,97,2,NULL),(664,57,97,2,NULL),(665,59,97,2,NULL),(666,63,97,2,NULL),(667,64,97,2,NULL),(668,65,97,2,NULL),(669,66,97,2,NULL),(670,67,97,2,NULL),(671,68,97,2,NULL),(672,69,97,2,NULL),(673,70,97,2,NULL),(674,71,97,2,NULL),(675,73,97,2,NULL),(676,48,106,2,NULL),(677,49,106,2,NULL),(678,50,106,2,NULL),(679,51,106,2,NULL),(680,52,106,2,NULL),(681,53,106,2,NULL),(682,54,106,2,NULL),(683,55,106,2,NULL),(684,57,106,2,NULL),(685,59,106,2,NULL),(686,63,106,2,NULL),(687,64,106,2,NULL),(688,65,106,2,NULL),(689,66,106,2,NULL),(690,67,106,2,NULL),(691,68,106,2,NULL),(692,69,106,2,NULL),(693,70,106,2,NULL),(694,71,106,2,NULL),(695,73,106,2,NULL),(696,48,113,2,NULL),(697,49,113,2,NULL),(698,50,113,2,NULL),(699,51,113,2,NULL),(700,52,113,2,NULL),(701,53,113,2,NULL),(702,54,113,2,NULL),(703,55,113,2,NULL),(704,57,113,2,NULL),(705,59,113,2,NULL),(706,63,113,2,NULL),(707,64,113,2,NULL),(708,65,113,2,NULL),(709,66,113,2,NULL),(710,67,113,2,NULL),(711,68,113,2,NULL),(712,69,113,2,NULL),(713,70,113,2,NULL),(714,71,113,2,NULL),(715,73,113,2,NULL),(716,48,114,2,NULL),(717,49,114,2,NULL),(718,50,114,2,NULL),(719,51,114,2,NULL),(720,52,114,2,NULL),(721,53,114,2,NULL),(722,54,114,2,NULL),(723,55,114,2,NULL),(724,57,114,2,NULL),(725,59,114,2,NULL),(726,63,114,2,NULL),(727,64,114,2,NULL),(728,65,114,2,NULL),(729,66,114,2,NULL),(730,67,114,2,NULL),(731,68,114,2,NULL),(732,69,114,2,NULL),(733,70,114,2,NULL),(734,71,114,2,NULL),(735,73,114,2,NULL),(736,48,118,2,NULL),(737,49,118,2,NULL),(738,50,118,2,NULL),(739,51,118,2,NULL),(740,52,118,2,NULL),(741,53,118,2,NULL),(742,54,118,2,NULL),(743,55,118,2,NULL),(744,57,118,2,NULL),(745,59,118,2,NULL),(746,63,118,2,NULL),(747,64,118,2,NULL),(748,65,118,2,NULL),(749,66,118,2,NULL),(750,67,118,2,NULL),(751,68,118,2,NULL),(752,69,118,2,NULL),(753,70,118,2,NULL),(754,71,118,2,NULL),(755,73,118,2,NULL),(756,48,120,2,NULL),(757,49,120,2,NULL),(758,50,120,2,NULL),(759,51,120,2,NULL),(760,52,120,2,NULL),(761,53,120,2,NULL),(762,54,120,2,NULL),(763,55,120,2,NULL),(764,57,120,2,NULL),(765,59,120,2,NULL),(766,63,120,2,NULL),(767,64,120,2,NULL),(768,65,120,2,NULL),(769,66,120,2,NULL),(770,67,120,2,NULL),(771,68,120,2,NULL),(772,69,120,2,NULL),(773,70,120,2,NULL),(774,71,120,2,NULL),(775,73,120,2,NULL),(776,48,129,2,NULL),(777,49,129,2,NULL),(778,50,129,2,NULL),(779,51,129,2,NULL),(780,52,129,2,NULL),(781,53,129,2,NULL),(782,54,129,2,NULL),(783,55,129,2,NULL),(784,57,129,2,NULL),(785,59,129,2,NULL),(786,63,129,2,NULL),(787,64,129,2,NULL),(788,65,129,2,NULL),(789,66,129,2,NULL),(790,67,129,2,NULL),(791,68,129,2,NULL),(792,69,129,2,NULL),(793,70,129,2,NULL),(794,71,129,2,NULL),(795,73,129,2,NULL),(796,48,127,2,NULL),(797,49,127,2,NULL),(798,50,127,2,NULL),(799,51,127,2,NULL),(800,52,127,2,NULL),(801,53,127,2,NULL),(802,54,127,2,NULL),(803,55,127,2,NULL),(804,57,127,2,NULL),(805,59,127,2,NULL),(806,63,127,2,NULL),(807,64,127,2,NULL),(808,65,127,2,NULL),(809,66,127,2,NULL),(810,67,127,2,NULL),(811,68,127,2,NULL),(812,69,127,2,NULL),(813,70,127,2,NULL),(814,71,127,2,NULL),(815,73,127,2,NULL),(816,48,130,2,NULL),(817,49,130,2,NULL),(818,50,130,2,NULL),(819,51,130,2,NULL),(820,52,130,2,NULL),(821,53,130,2,NULL),(822,54,130,2,NULL),(823,55,130,2,NULL),(824,57,130,2,NULL),(825,59,130,2,NULL),(826,63,130,2,NULL),(827,64,130,2,NULL),(828,65,130,2,NULL),(829,66,130,2,NULL),(830,67,130,2,NULL),(831,68,130,2,NULL),(832,69,130,2,NULL),(833,70,130,2,NULL),(834,71,130,2,NULL),(835,73,130,2,NULL),(836,48,131,2,NULL),(837,49,131,2,NULL),(838,50,131,2,NULL),(839,51,131,2,NULL),(840,52,131,2,NULL),(841,53,131,2,NULL),(842,54,131,2,NULL),(843,55,131,2,NULL),(844,57,131,2,NULL),(845,59,131,2,NULL),(846,63,131,2,NULL),(847,64,131,2,NULL),(848,65,131,2,NULL),(849,66,131,2,NULL),(850,67,131,2,NULL),(851,68,131,2,NULL),(852,69,131,2,NULL),(853,70,131,2,NULL),(854,71,131,2,NULL),(855,73,131,2,NULL),(856,41,2,2,NULL),(857,42,2,2,NULL),(858,41,13,2,NULL),(859,42,13,2,NULL),(860,41,18,2,NULL),(861,42,18,2,NULL),(862,41,22,2,NULL),(863,42,22,2,NULL),(864,41,27,2,NULL),(865,42,27,2,NULL),(866,41,1,2,NULL),(867,42,1,2,NULL),(868,41,17,2,NULL),(869,42,17,2,NULL),(870,41,23,2,NULL),(871,42,23,2,NULL),(872,41,30,2,NULL),(873,42,30,2,NULL),(874,41,31,2,NULL),(875,42,31,2,NULL),(876,41,32,2,NULL),(877,42,32,2,NULL),(878,41,34,2,NULL),(879,42,34,2,NULL),(880,41,36,2,NULL),(881,42,36,2,NULL),(882,41,71,2,NULL),(883,42,71,2,NULL),(884,41,89,2,NULL),(885,42,89,2,NULL),(886,41,100,2,NULL),(887,42,100,2,NULL),(888,41,105,2,NULL),(889,42,105,2,NULL),(890,41,107,2,NULL),(891,42,107,2,NULL),(892,41,111,2,NULL),(893,42,111,2,NULL),(894,41,115,2,NULL),(895,42,115,2,NULL),(896,41,117,2,NULL),(897,42,117,2,NULL),(898,41,33,2,NULL),(899,42,33,2,NULL),(900,41,55,2,NULL),(901,42,55,2,NULL),(902,41,63,2,NULL),(903,42,63,2,NULL),(904,41,70,2,NULL),(905,42,70,2,NULL),(906,41,76,2,NULL),(907,42,76,2,NULL),(908,41,84,2,NULL),(909,42,84,2,NULL),(910,41,91,2,NULL),(911,42,91,2,NULL),(912,41,43,2,NULL),(913,42,43,2,NULL),(914,41,60,2,NULL),(915,42,60,2,NULL),(916,41,87,2,NULL),(917,42,87,2,NULL),(918,41,97,2,NULL),(919,42,97,2,NULL),(920,41,106,2,NULL),(921,42,106,2,NULL),(922,41,113,2,NULL),(923,42,113,2,NULL),(924,41,114,2,NULL),(925,42,114,2,NULL),(926,41,118,2,NULL),(927,42,118,2,NULL),(928,41,120,2,NULL),(929,42,120,2,NULL),(930,41,129,2,NULL),(931,42,129,2,NULL),(932,41,127,2,NULL),(933,42,127,2,NULL),(934,41,130,2,NULL),(935,42,130,2,NULL),(936,41,131,2,NULL),(937,42,131,2,NULL),(938,62,69,2,NULL),(939,62,125,2,NULL),(940,77,69,2,NULL),(941,77,125,2,NULL),(942,60,2,2,NULL),(943,61,2,2,NULL),(944,74,2,2,NULL),(945,75,2,2,NULL),(946,78,2,2,NULL),(947,60,13,2,NULL),(948,61,13,2,NULL),(949,74,13,2,NULL),(950,75,13,2,NULL),(951,78,13,2,NULL),(952,60,18,2,NULL),(953,61,18,2,NULL),(954,74,18,2,NULL),(955,75,18,2,NULL),(956,78,18,2,NULL),(957,60,22,2,NULL),(958,61,22,2,NULL),(959,74,22,2,NULL),(960,75,22,2,NULL),(961,78,22,2,NULL),(962,60,27,2,NULL),(963,61,27,2,NULL),(964,74,27,2,NULL),(965,75,27,2,NULL),(966,78,27,2,NULL),(967,60,1,2,NULL),(968,61,1,2,NULL),(969,74,1,2,NULL),(970,75,1,2,NULL),(971,78,1,2,NULL),(972,60,17,2,NULL),(973,61,17,2,NULL),(974,74,17,2,NULL),(975,75,17,2,NULL),(976,78,17,2,NULL),(977,60,23,2,NULL),(978,61,23,2,NULL),(979,74,23,2,NULL),(980,75,23,2,NULL),(981,78,23,2,NULL),(982,60,30,2,NULL),(983,61,30,2,NULL),(984,74,30,2,NULL),(985,75,30,2,NULL),(986,78,30,2,NULL),(987,60,31,2,NULL),(988,61,31,2,NULL),(989,74,31,2,NULL),(990,75,31,2,NULL),(991,78,31,2,NULL),(992,60,32,2,NULL),(993,61,32,2,NULL),(994,74,32,2,NULL),(995,75,32,2,NULL),(996,78,32,2,NULL),(997,60,34,2,NULL),(998,61,34,2,NULL),(999,74,34,2,NULL),(1000,75,34,2,NULL),(1001,78,34,2,NULL),(1002,60,36,2,NULL),(1003,61,36,2,NULL),(1004,74,36,2,NULL),(1005,75,36,2,NULL),(1006,78,36,2,NULL),(1007,60,71,2,NULL),(1008,61,71,2,NULL),(1009,74,71,2,NULL),(1010,75,71,2,NULL),(1011,78,71,2,NULL),(1012,60,89,2,NULL),(1013,61,89,2,NULL),(1014,74,89,2,NULL),(1015,75,89,2,NULL),(1016,78,89,2,NULL),(1017,60,100,2,NULL),(1018,61,100,2,NULL),(1019,74,100,2,NULL),(1020,75,100,2,NULL),(1021,78,100,2,NULL),(1022,60,105,2,NULL),(1023,61,105,2,NULL),(1024,74,105,2,NULL),(1025,75,105,2,NULL),(1026,78,105,2,NULL),(1027,60,107,2,NULL),(1028,61,107,2,NULL),(1029,74,107,2,NULL),(1030,75,107,2,NULL),(1031,78,107,2,NULL),(1032,60,111,2,NULL),(1033,61,111,2,NULL),(1034,74,111,2,NULL),(1035,75,111,2,NULL),(1036,78,111,2,NULL),(1037,60,115,2,NULL),(1038,61,115,2,NULL),(1039,74,115,2,NULL),(1040,75,115,2,NULL),(1041,78,115,2,NULL),(1042,60,117,2,NULL),(1043,61,117,2,NULL),(1044,74,117,2,NULL),(1045,75,117,2,NULL),(1046,78,117,2,NULL),(1047,60,33,2,NULL),(1048,61,33,2,NULL),(1049,74,33,2,NULL),(1050,75,33,2,NULL),(1051,78,33,2,NULL),(1052,60,55,2,NULL),(1053,61,55,2,NULL),(1054,74,55,2,NULL),(1055,75,55,2,NULL),(1056,78,55,2,NULL),(1057,60,63,2,NULL),(1058,61,63,2,NULL),(1059,74,63,2,NULL),(1060,75,63,2,NULL),(1061,78,63,2,NULL),(1062,60,70,2,NULL),(1063,61,70,2,NULL),(1064,74,70,2,NULL),(1065,75,70,2,NULL),(1066,78,70,2,NULL),(1067,60,76,2,NULL),(1068,61,76,2,NULL),(1069,74,76,2,NULL),(1070,75,76,2,NULL),(1071,78,76,2,NULL),(1072,60,84,2,NULL),(1073,61,84,2,NULL),(1074,74,84,2,NULL),(1075,75,84,2,NULL),(1076,78,84,2,NULL),(1077,60,91,2,NULL),(1078,61,91,2,NULL),(1079,74,91,2,NULL),(1080,75,91,2,NULL),(1081,78,91,2,NULL),(1082,60,43,2,NULL),(1083,61,43,2,NULL),(1084,74,43,2,NULL),(1085,75,43,2,NULL),(1086,78,43,2,NULL),(1087,60,60,2,NULL),(1088,61,60,2,NULL),(1089,74,60,2,NULL),(1090,75,60,2,NULL),(1091,78,60,2,NULL),(1092,60,87,2,NULL),(1093,61,87,2,NULL),(1094,74,87,2,NULL),(1095,75,87,2,NULL),(1096,78,87,2,NULL),(1097,60,97,2,NULL),(1098,61,97,2,NULL),(1099,74,97,2,NULL),(1100,75,97,2,NULL),(1101,78,97,2,NULL),(1102,60,106,2,NULL),(1103,61,106,2,NULL),(1104,74,106,2,NULL),(1105,75,106,2,NULL),(1106,78,106,2,NULL),(1107,60,113,2,NULL),(1108,61,113,2,NULL),(1109,74,113,2,NULL),(1110,75,113,2,NULL),(1111,78,113,2,NULL),(1112,60,114,2,NULL),(1113,61,114,2,NULL),(1114,74,114,2,NULL),(1115,75,114,2,NULL),(1116,78,114,2,NULL),(1117,60,118,2,NULL),(1118,61,118,2,NULL),(1119,74,118,2,NULL),(1120,75,118,2,NULL),(1121,78,118,2,NULL),(1122,60,120,2,NULL),(1123,61,120,2,NULL),(1124,74,120,2,NULL),(1125,75,120,2,NULL),(1126,78,120,2,NULL),(1127,60,129,2,NULL),(1128,61,129,2,NULL),(1129,74,129,2,NULL),(1130,75,129,2,NULL),(1131,78,129,2,NULL),(1132,60,127,2,NULL),(1133,61,127,2,NULL),(1134,74,127,2,NULL),(1135,75,127,2,NULL),(1136,78,127,2,NULL),(1137,60,130,2,NULL),(1138,61,130,2,NULL),(1139,74,130,2,NULL),(1140,75,130,2,NULL),(1141,78,130,2,NULL),(1142,60,131,2,NULL),(1143,61,131,2,NULL),(1144,74,131,2,NULL),(1145,75,131,2,NULL),(1146,78,131,2,NULL),(1147,8,127,2,NULL),(1148,21,127,2,NULL),(1149,17,127,2,NULL),(1150,20,127,2,NULL),(1151,24,127,2,NULL),(1152,25,127,2,NULL),(1153,4,127,2,NULL),(1154,6,127,2,NULL),(1155,46,16,2,NULL),(1156,46,52,2,NULL),(1157,46,75,2,NULL),(1158,46,104,2,NULL),(1159,46,121,2,NULL),(1160,46,128,2,NULL),(1161,47,16,2,NULL),(1162,47,52,2,NULL),(1163,47,75,2,NULL),(1164,47,104,2,NULL),(1165,47,121,2,NULL),(1166,47,128,2,NULL),(1167,8,130,2,NULL),(1168,21,130,2,NULL),(1169,17,130,2,NULL),(1170,20,130,2,NULL),(1171,24,130,2,NULL),(1172,25,130,2,NULL),(1173,4,130,2,NULL),(1174,6,130,2,NULL),(1175,8,131,2,NULL),(1176,21,131,2,NULL),(1177,17,131,2,NULL),(1178,20,131,2,NULL),(1179,24,131,2,NULL),(1180,25,131,2,NULL),(1181,4,131,2,NULL),(1182,6,131,2,NULL),(1183,4,2,2,NULL),(1184,8,43,2,NULL),(1185,6,2,2,NULL),(1186,21,43,2,NULL),(1187,4,13,2,NULL),(1188,17,43,2,NULL),(1189,6,13,2,NULL),(1190,20,43,2,NULL),(1191,4,18,2,NULL),(1192,24,43,2,NULL),(1193,6,18,2,NULL),(1194,25,43,2,NULL),(1195,4,22,2,NULL),(1196,4,43,2,NULL),(1197,6,22,2,NULL),(1198,6,43,2,NULL),(1199,4,27,2,NULL),(1200,8,60,2,NULL),(1201,6,27,2,NULL),(1202,21,60,2,NULL),(1203,4,1,2,NULL),(1204,17,60,2,NULL),(1205,6,1,2,NULL),(1206,20,60,2,NULL),(1207,4,17,2,NULL),(1208,24,60,2,NULL),(1209,6,17,2,NULL),(1210,25,60,2,NULL),(1211,4,23,2,NULL),(1212,4,60,2,NULL),(1213,6,23,2,NULL),(1214,6,60,2,NULL),(1215,4,30,2,NULL),(1216,8,87,2,NULL),(1217,6,30,2,NULL),(1218,21,87,2,NULL),(1219,4,31,2,NULL),(1220,17,87,2,NULL),(1221,6,31,2,NULL),(1222,20,87,2,NULL),(1223,4,32,2,NULL),(1224,24,87,2,NULL),(1225,6,32,2,NULL),(1226,25,87,2,NULL),(1227,4,34,2,NULL),(1228,4,87,2,NULL),(1229,6,34,2,NULL),(1230,6,87,2,NULL),(1231,4,36,2,NULL),(1232,8,97,2,NULL),(1233,6,36,2,NULL),(1234,21,97,2,NULL),(1235,4,71,2,NULL),(1236,17,97,2,NULL),(1237,6,71,2,NULL),(1238,20,97,2,NULL),(1239,4,89,2,NULL),(1240,24,97,2,NULL),(1241,6,89,2,NULL),(1242,25,97,2,NULL),(1243,4,100,2,NULL),(1244,4,97,2,NULL),(1245,6,100,2,NULL),(1246,6,97,2,NULL),(1247,4,105,2,NULL),(1248,8,106,2,NULL),(1249,6,105,2,NULL),(1250,21,106,2,NULL),(1251,4,107,2,NULL),(1252,17,106,2,NULL),(1253,6,107,2,NULL),(1254,20,106,2,NULL),(1255,4,111,2,NULL),(1256,24,106,2,NULL),(1257,6,111,2,NULL),(1258,25,106,2,NULL),(1259,4,115,2,NULL),(1260,4,106,2,NULL),(1261,6,115,2,NULL),(1262,6,106,2,NULL),(1263,4,117,2,NULL),(1264,8,113,2,NULL),(1265,6,117,2,NULL),(1266,21,113,2,NULL),(1267,4,33,2,NULL),(1268,17,113,2,NULL),(1269,6,33,2,NULL),(1270,20,113,2,NULL),(1271,4,55,2,NULL),(1272,24,113,2,NULL),(1273,6,55,2,NULL),(1274,25,113,2,NULL),(1275,4,63,2,NULL),(1276,4,113,2,NULL),(1277,6,63,2,NULL),(1278,6,113,2,NULL),(1279,4,70,2,NULL),(1280,8,114,2,NULL),(1281,6,70,2,NULL),(1282,21,114,2,NULL),(1283,4,76,2,NULL),(1284,17,114,2,NULL),(1285,6,76,2,NULL),(1286,20,114,2,NULL),(1287,4,84,2,NULL),(1288,24,114,2,NULL),(1289,6,84,2,NULL),(1290,25,114,2,NULL),(1291,4,91,2,NULL),(1292,4,114,2,NULL),(1293,6,91,2,NULL),(1294,6,114,2,NULL),(1295,4,118,2,NULL),(1296,8,118,2,NULL),(1297,6,118,2,NULL),(1298,21,118,2,NULL),(1299,4,120,2,NULL),(1300,17,118,2,NULL),(1301,6,120,2,NULL),(1302,20,118,2,NULL),(1303,4,129,2,NULL),(1304,24,118,2,NULL),(1305,6,129,2,NULL),(1306,25,118,2,NULL),(1307,8,120,2,NULL),(1308,21,120,2,NULL),(1309,17,120,2,NULL),(1310,20,120,2,NULL),(1311,24,120,2,NULL),(1312,25,120,2,NULL),(1313,3,16,2,NULL),(1314,3,52,2,NULL),(1315,3,75,2,NULL),(1316,3,104,2,NULL),(1317,3,121,2,NULL),(1318,3,128,2,NULL),(1319,8,129,2,NULL),(1320,21,129,2,NULL),(1321,17,129,2,NULL),(1322,20,129,2,NULL),(1323,24,129,2,NULL),(1324,25,129,2,NULL),(1325,8,30,2,NULL),(1326,21,30,2,NULL),(1327,17,30,2,NULL),(1328,20,30,2,NULL),(1329,24,30,2,NULL),(1330,25,30,2,NULL),(1331,8,31,2,NULL),(1332,21,31,2,NULL),(1333,17,31,2,NULL),(1334,20,31,2,NULL),(1335,24,31,2,NULL),(1336,25,31,2,NULL),(1337,8,32,2,NULL),(1338,21,32,2,NULL),(1339,17,32,2,NULL),(1340,20,32,2,NULL),(1341,24,32,2,NULL),(1342,25,32,2,NULL),(1343,8,34,2,NULL),(1344,21,34,2,NULL),(1345,17,34,2,NULL),(1346,20,34,2,NULL),(1347,24,34,2,NULL),(1348,25,34,2,NULL),(1349,8,36,2,NULL),(1350,21,36,2,NULL),(1351,17,36,2,NULL),(1352,20,36,2,NULL),(1353,24,36,2,NULL),(1354,25,36,2,NULL),(1355,8,71,2,NULL),(1356,21,71,2,NULL),(1357,17,71,2,NULL),(1358,20,71,2,NULL),(1359,24,71,2,NULL),(1360,25,71,2,NULL),(1361,8,89,2,NULL),(1362,21,89,2,NULL),(1363,17,89,2,NULL),(1364,20,89,2,NULL),(1365,24,89,2,NULL),(1366,25,89,2,NULL),(1367,8,100,2,NULL),(1368,21,100,2,NULL),(1369,17,100,2,NULL),(1370,20,100,2,NULL),(1371,24,100,2,NULL),(1372,25,100,2,NULL),(1373,8,105,2,NULL),(1374,21,105,2,NULL),(1375,17,105,2,NULL),(1376,20,105,2,NULL),(1377,24,105,2,NULL),(1378,25,105,2,NULL),(1379,8,107,2,NULL),(1380,21,107,2,NULL),(1381,17,107,2,NULL),(1382,20,107,2,NULL),(1383,24,107,2,NULL),(1384,25,107,2,NULL),(1385,8,111,2,NULL),(1386,21,111,2,NULL),(1387,17,111,2,NULL),(1388,20,111,2,NULL),(1389,24,111,2,NULL),(1390,25,111,2,NULL),(1391,8,115,2,NULL),(1392,21,115,2,NULL),(1393,17,115,2,NULL),(1394,20,115,2,NULL),(1395,24,115,2,NULL),(1396,25,115,2,NULL),(1397,8,117,2,NULL),(1398,21,117,2,NULL),(1399,17,117,2,NULL),(1400,20,117,2,NULL),(1401,24,117,2,NULL),(1402,25,117,2,NULL),(1403,23,38,2,NULL),(1404,31,40,2,NULL),(1405,8,2,2,NULL),(1406,8,13,2,NULL),(1407,8,18,2,NULL),(1408,8,22,2,NULL),(1409,8,27,2,NULL),(1410,8,1,2,NULL),(1411,8,17,2,NULL),(1412,8,23,2,NULL),(1413,8,55,2,NULL),(1414,8,63,2,NULL),(1415,8,70,2,NULL),(1416,8,76,2,NULL),(1417,8,84,2,NULL),(1418,8,91,2,NULL),(1419,21,33,2,NULL),(1420,17,33,2,NULL),(1421,20,33,2,NULL),(1422,24,33,2,NULL),(1423,25,33,2,NULL),(1424,32,16,2,NULL),(1425,32,52,2,NULL),(1426,32,75,2,NULL),(1427,32,104,2,NULL),(1428,32,121,2,NULL),(1429,32,128,2,NULL),(1430,21,55,2,NULL),(1431,17,55,2,NULL),(1432,20,55,2,NULL),(1433,24,55,2,NULL),(1434,25,55,2,NULL),(1435,21,63,2,NULL),(1436,17,63,2,NULL),(1437,20,63,2,NULL),(1438,24,63,2,NULL),(1439,25,63,2,NULL),(1440,26,47,2,NULL),(1441,26,80,2,NULL),(1442,27,47,2,NULL),(1443,27,80,2,NULL),(1444,21,70,2,NULL),(1445,17,70,2,NULL),(1446,20,70,2,NULL),(1447,24,70,2,NULL),(1448,25,70,2,NULL),(1449,21,76,2,NULL),(1450,17,76,2,NULL),(1451,20,76,2,NULL),(1452,24,76,2,NULL),(1453,25,76,2,NULL),(1454,11,49,2,NULL),(1455,11,86,2,NULL),(1456,21,84,2,NULL),(1457,17,84,2,NULL),(1458,20,84,2,NULL),(1459,24,84,2,NULL),(1460,25,84,2,NULL),(1461,21,91,2,NULL),(1462,17,91,2,NULL),(1463,20,91,2,NULL),(1464,24,91,2,NULL),(1465,25,91,2,NULL),(1466,21,2,2,NULL),(1467,21,13,2,NULL),(1468,21,18,2,NULL),(1469,21,22,2,NULL),(1470,21,27,2,NULL),(1471,21,1,2,NULL),(1472,21,17,2,NULL),(1473,21,23,2,NULL),(1474,17,2,2,NULL),(1475,17,13,2,NULL),(1476,17,18,2,NULL),(1477,17,22,2,NULL),(1478,17,27,2,NULL),(1479,17,1,2,NULL),(1480,17,17,2,NULL),(1481,17,23,2,NULL),(1482,20,2,2,NULL),(1483,24,2,2,NULL),(1484,25,2,2,NULL),(1485,20,13,2,NULL),(1486,24,13,2,NULL),(1487,25,13,2,NULL),(1488,20,18,2,NULL),(1489,24,18,2,NULL),(1490,25,18,2,NULL),(1491,20,22,2,NULL),(1492,24,22,2,NULL),(1493,25,22,2,NULL),(1494,20,27,2,NULL),(1495,24,27,2,NULL),(1496,25,27,2,NULL),(1497,20,1,2,NULL),(1498,24,1,2,NULL),(1499,25,1,2,NULL),(1500,20,17,2,NULL),(1501,24,17,2,NULL),(1502,25,17,2,NULL),(1503,20,23,2,NULL),(1504,24,23,2,NULL),(1505,25,23,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(39,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(35,'android.permission.CALL_PHONE'),(37,'android.permission.CAMERA'),(31,'android.permission.DISABLE_KEYGUARD'),(41,'android.permission.FLASHLIGHT'),(26,'android.permission.GET_ACCOUNTS'),(40,'android.permission.GET_TASKS'),(18,'android.permission.INTERNET'),(27,'android.permission.READ_CONTACTS'),(33,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_PHONE_STATE'),(36,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(38,'android.permission.SEND_SMS'),(28,'android.permission.SET_PREFERRED_APPLICATIONS'),(42,'android.permission.STATUS_BAR'),(22,'android.permission.VIBRATE'),(29,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(14,'com.android.launcher.permission.INSTALL_SHORTCUT'),(23,'com.android.launcher.permission.READ_SETTINGS'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.fede.launcher.permission.READ_SETTINGS'),(30,'com.fingerprint.lock.permission.C2D_MESSAGE'),(34,'com.fingerprint.security.pro.permission.C2D_MESSAGE'),(17,'com.google.android.c2dm.permission.RECEIVE'),(32,'com.google.android.c2dm.permission.SEND'),(15,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(19,'com.moskvichgolocker.theme.permission.C2D_MESSAGE'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(21,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (19,'s'),(30,'s'),(34,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.fingerprint.security.pro',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.fingerprint.security.pro',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=goldenshorestechnologies.brightestflashlight.free',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(34,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(38,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,3,2),(3,4,3),(4,6,4),(5,6,5),(6,7,6),(7,11,11),(8,13,12),(9,13,13),(10,14,14),(11,23,16),(12,26,18),(13,27,19),(14,40,22),(15,44,27),(16,49,33),(17,51,34),(18,56,37),(19,56,38),(20,62,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,1,3),(5,2,2),(6,1,4),(7,2,3),(8,1,5),(9,2,4),(10,1,6),(11,2,5),(12,1,7),(13,2,7),(14,1,8),(15,2,8),(16,1,9),(17,2,9),(18,1,10),(19,2,10),(20,1,11),(21,2,12),(22,1,12),(23,2,13),(24,1,13),(25,2,14),(26,1,14),(27,2,15),(28,1,15),(29,2,16),(30,1,17),(31,2,18),(32,1,16),(33,2,21),(34,1,19),(35,2,20),(36,1,18),(37,2,23),(38,1,21),(39,2,22),(40,1,20),(41,2,25),(42,1,23),(43,2,24),(44,1,22),(45,1,25),(46,1,24),(47,3,1),(48,3,2),(49,3,3),(50,3,4),(51,3,5),(52,3,6),(53,3,7),(54,3,8),(55,3,9),(56,3,10),(57,3,11),(58,3,12),(59,3,13),(60,3,14),(61,3,15),(62,3,17),(63,4,1),(64,3,16),(65,4,2),(66,3,18),(67,4,3),(68,3,21),(69,4,4),(70,3,20),(71,4,5),(72,3,23),(73,4,6),(74,3,22),(75,4,7),(76,3,25),(77,4,8),(78,3,24),(79,4,9),(80,3,27),(81,4,10),(82,3,26),(83,4,11),(84,3,29),(85,4,12),(86,3,28),(87,4,13),(88,3,31),(89,4,14),(90,3,30),(91,4,15),(92,4,17),(93,4,16),(94,4,18),(95,4,21),(96,4,20),(97,4,23),(98,5,1),(99,4,22),(100,5,2),(101,4,25),(102,5,3),(103,4,24),(104,5,4),(105,4,27),(106,4,26),(107,5,5),(108,4,34),(109,5,6),(110,5,7),(111,4,35),(112,4,33),(113,5,8),(114,4,38),(115,5,9),(116,5,10),(117,4,39),(118,5,11),(119,4,36),(120,5,12),(121,4,37),(122,5,13),(123,5,14),(124,5,15),(125,5,16),(126,5,18),(127,5,21),(128,5,20),(129,5,23),(130,5,22),(131,5,25),(132,5,24),(133,5,29),(134,5,33),(135,5,39),(136,5,40),(137,5,41),(138,6,1),(139,6,3),(140,6,4),(141,6,5),(142,6,7),(143,7,1),(144,6,9),(145,7,2),(146,6,10),(147,6,12),(148,7,3),(149,7,4),(150,6,13),(151,6,14),(152,7,5),(153,6,15),(154,7,6),(155,7,37),(156,6,16),(157,7,7),(158,6,18),(159,7,42),(160,6,21),(161,6,20),(162,7,9),(163,7,41),(164,6,23),(165,6,25),(166,7,11),(167,6,24),(168,7,12),(169,7,13),(170,7,14),(171,7,15),(172,7,16),(173,7,18),(174,7,21),(175,7,20),(176,7,23),(177,7,24),(178,7,29);
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

-- Dump completed on 2015-10-12  3:31:25
