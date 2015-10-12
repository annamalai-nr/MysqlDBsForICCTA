-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_645
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
INSERT INTO `ActionStrings` VALUES (28,'android.appwidget.action.APPWIDGET_UPDATE'),(21,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(15,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.SENDTO'),(18,'android.intent.action.VIEW'),(23,'android.service.wallpaper.WallpaperService'),(12,'com.airpush.android.PushServiceStart(.*)'),(4,'com.airpush.android.PushServiceStart16868'),(2,'com.airpush.android.PushServiceStart23731'),(8,'com.airpush.android.PushServiceStart31848'),(6,'com.airpush.android.PushServiceStart34223'),(5,'com.airpush.android.PushServiceStart34381'),(7,'com.airpush.android.PushServiceStart37731'),(17,'com.airpush.android.PushServiceStartInvalid'),(13,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(16,'com.airpush.android.PushServiceStartinvalid Id'),(29,'com.amazon.inapp.purchasing.NOTIFY'),(14,'com.android.launcher.action.INSTALL_SHORTCUT'),(24,'com.android.vending.INSTALL_REFERRER'),(25,'com.android.vending.billing.IN_APP_NOTIFY'),(26,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(27,'com.android.vending.billing.RESPONSE_CODE'),(9,'com.applovin.sdk.AppLovinService'),(11,'com.google.android.c2dm.intent.RECEIVE'),(10,'com.google.android.c2dm.intent.REGISTRATION'),(22,'com.tremorvideo.sdk.android.videoad.Playvideo');
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
INSERT INTO `Applications` VALUES (1,'com.apps.andromadhu.stdfinder',2),(2,'com.antonio.thermo2.activity',19),(3,'tetris.chelle',8),(4,'com.yolocker.icslock',1),(5,'hr.interactive.adele.adkins.videos',3),(6,'com.wideapps.android.facemoodscanner',34),(7,'com.apostek.apps.pocketbingo',29);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(5,'android.intent.category.EMBED'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(4,'hr.interactive.adele.adkins.videos');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.apps.andromadhu.stdfinder.STDCodeLocator'),(2,2,'com.antonio.thermo2.activity.AcCheck'),(3,1,'com.airpush.android.PushAds'),(4,2,'com.antonio.thermo2.activity.AcRateMeWith5Stars'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,2,'com.antonio.thermo2.activity.AcMyApps'),(7,1,'com.airpush.android.PushService'),(8,2,'com.antonio.thermo2.activity.AcLanguage'),(9,2,'com.antonio.thermo2.activity.AcEULA'),(10,2,'com.antonio.thermo2.activity.AcThermometer'),(11,1,'com.airpush.android.UserDetailsReceiver'),(12,2,'com.antonio.thermo2.activity.AcNewspaper'),(13,1,'com.airpush.android.MessageReceiver'),(14,2,'com.antonio.thermo2.activity.AcMenu'),(15,1,'com.airpush.android.DeliveryReceiver'),(16,2,'com.antonio.thermo2.activity.AcAbout'),(17,1,'com.apps.andromadhu.stdfinder.BootReceiver'),(18,2,'com.antonio.thermo2.activity.AcCalibrate'),(19,2,'com.airpush.android.PushAds'),(20,2,'com.apperhand.device.android.AndroidSDKProvider'),(21,2,'com.airpush.android.PushService'),(22,3,'tetris.chelle.Tetris'),(23,2,'com.airpush.android.UserDetailsReceiver'),(24,3,'com.airpush.android.PushAds'),(25,2,'com.airpush.android.MessageReceiver'),(26,3,'com.airpush.android.PushService'),(27,2,'com.airpush.android.DeliveryReceiver'),(28,2,'com.antonio.thermo2.airpush.BootReceiver'),(29,3,'com.apperhand.device.android.AndroidSDKProvider'),(30,3,'com.airpush.android.UserDetailsReceiver'),(31,3,'com.airpush.android.MessageReceiver'),(32,3,'com.airpush.android.DeliveryReceiver'),(33,3,'tetris.chelle.BootReceiver'),(34,3,'com.Leadbolt.AdNotification'),(35,4,'com.yolocker.icslock.AnimTestActivity'),(36,4,'com.yolocker.icslock.PrefActivity'),(37,4,'com.yolocker.icslock.HomeLauncher'),(38,6,'com.wideapps.android.facemoodscanner.FaceMoodScannerActivity'),(39,4,'com.yolocker.icslock.SetupWizard1'),(40,4,'com.yolocker.icslock.SetupWizard2'),(41,6,'com.wideapps.android.facemoodscanner.CameraView'),(42,4,'com.yolocker.icslock.SetupWizard3'),(43,6,'com.wideapps.android.facemoodscanner.ResultActivity'),(44,5,'hr.interactive.adele.adkins.videos.Main'),(45,4,'com.yolocker.icslock.SetupWizard4'),(46,6,'com.google.ads.AdActivity'),(47,4,'com.yolocker.icslock.SetupWizard5'),(48,6,'com.airpush.android.PushAds'),(49,4,'com.yolocker.icslock.MoreAppsActivity'),(50,5,'com.controlledsenility.android.youtube.OpenYouTubePlayerActivity'),(51,6,'com.airpush.android.PushService'),(52,5,'hr.interactive.adele.adkins.videos.IntroVideoActivity'),(53,5,'com.google.ads.AdActivity'),(54,4,'com.airpush.android.PushAds'),(55,5,'com.airpush.android.PushAds'),(56,6,'com.apperhand.device.android.AndroidSDKProvider'),(57,4,'com.yolocker.icslock.AppService'),(58,5,'com.airpush.android.PushService'),(59,6,'com.airpush.android.UserDetailsReceiver'),(60,4,'com.airpush.android.PushService'),(61,6,'com.airpush.android.MessageReceiver'),(62,6,'com.airpush.android.DeliveryReceiver'),(63,5,'com.apperhand.device.android.AndroidSDKProvider'),(64,4,'com.apperhand.device.android.AndroidSDKProvider'),(65,6,'com.wideapps.android.facemoodscanner.BootReceiver'),(66,5,'com.applovin.sdk.AppLovinService'),(67,4,'com.airpush.android.UserDetailsReceiver'),(68,4,'com.airpush.android.MessageReceiver'),(69,6,'com.Leadbolt.AdNotification'),(70,4,'com.airpush.android.DeliveryReceiver'),(71,5,'hr.interactive.sdk.C2DMRegistrationReceiver'),(72,4,'com.yolocker.icslock.BootReceiver'),(73,4,'com.Leadbolt.AdNotification'),(74,5,'hr.interactive.adele.adkins.videos.C2DMMessageReceiver'),(75,5,'com.airpush.android.UserDetailsReceiver'),(76,5,'com.airpush.android.MessageReceiver'),(77,5,'com.airpush.android.DeliveryReceiver'),(78,5,'hr.interactive.adele.adkins.videos.BootReceiver'),(79,5,'com.applovin.sdk.AppLovinBootReceiver'),(80,2,'com.antonio.thermo2.preference.options.SharedOptions'),(81,2,'com.apperhand.device.android.a.a'),(82,2,'com.antonio.thermo2.values.Values'),(83,2,'com.apperhand.device.android.a.e'),(84,2,'com.antonio.thermo2.activity.AcThermometer$1'),(85,7,'com.apostek.apps.pocketbingo.SplashScreen'),(86,7,'com.apostek.apps.pocketbingo.PocketBingo'),(87,7,'com.apostek.apps.pocketbingo.OptionsScreen'),(88,7,'com.apostek.apps.pocketbingo.GameScreen'),(89,7,'com.apostek.apps.pocketbingo.Statistics'),(90,7,'com.apostek.apps.pocketbingo.PauseScreen'),(91,7,'com.apostek.apps.pocketbingo.GameOver'),(92,7,'com.apostek.apps.pocketbingo.ChooseTicket'),(93,7,'com.apostek.apps.pocketbingo.GameBoardScreen'),(94,7,'com.apostek.apps.pocketbingo.HelpScreen'),(95,7,'com.apostek.apps.pocketbingo.Demo'),(96,7,'com.apostek.apps.pocketbingo.NewGameIntermediateScreen'),(97,7,'com.apostek.apps.pocketbingo.BuyProScreen'),(98,7,'com.apostek.library.ActivityOtherApps'),(99,7,'com.apostek.apps.pocketbingo.InfoScreen'),(100,7,'com.apostek.apps.pocketbingo.ShareOnFacebookScreen'),(101,7,'com.apostek.apps.pocketbingo.ShareOnFacebook'),(102,7,'com.apostek.apps.pocketbingo.ShareToFacebookFriends'),(103,7,'com.apostek.apps.pocketbingo.OpenFeintExample'),(104,7,'com.apostek.apps.pocketbingo.LeaderboardExplorer'),(105,7,'com.apostek.apps.pocketbingo.ScoreExplorer'),(106,7,'com.apostek.apps.pocketbingo.ScorePoster'),(107,7,'com.apostek.apps.pocketbingo.AchievementExplorer'),(108,7,'com.apostek.apps.pocketbingo.AchievementInvestigator'),(109,7,'com.apostek.apps.pocketbingo.UserExplorer'),(110,7,'com.apostek.apps.pocketbingo.CloudStorageExplorer'),(111,7,'com.apostek.apps.pocketbingo.CloudStorageInvestigator'),(112,7,'com.openfeint.internal.ui.IntroFlow'),(113,7,'com.openfeint.api.ui.Dashboard'),(114,7,'com.openfeint.internal.ui.Settings'),(115,7,'com.openfeint.internal.ui.NativeBrowser'),(116,7,'com.facebook.android.FacebookLogin'),(117,7,'com.apostek.apps.pocketbingo.InAppActivity'),(118,7,'com.radiumone.Publisher'),(119,7,'com.sponsorpay.sdk.android.publisher.OfferWallActivity'),(120,7,'com.sponsorpay.sdk.android.publisher.InterstitialActivity'),(121,7,'com.google.ads.AdActivity'),(122,7,'com.mobfox.sdk.InAppWebView'),(123,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(124,7,'com.millennialmedia.android.VideoPlayer'),(125,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(126,7,'com.greystripe.android.sdk.AdView'),(127,7,'com.tremorvideo.sdk.android.videoad.Playvideo'),(128,7,'com.mdotm.android.ads.MdotmLandingPage'),(129,7,'com.adyip.FullAdActivity'),(130,7,'com.tapjoy.TJCOffersWebView'),(131,7,'com.tapjoy.TapjoyFeaturedAppWebView'),(132,7,'com.tapjoy.TapjoyVideoView'),(133,7,'com.tapjoy.TJCVirtualGoods'),(134,7,'com.tapjoy.DownloadVirtualGood'),(135,7,'com.apostek.util.PollingService'),(136,7,'com.apostek.util.LiveWallpaper'),(137,7,'com.apostek.inapp.BillingService'),(138,7,'com.apperhand.device.android.AndroidSDKProvider'),(139,7,'com.apostek.common.ApostekReceiver'),(140,7,'com.apostek.inapp.BillingReceiver'),(141,7,'com.apostek.apps.pocketbingo.BingoWidget'),(142,7,'com.amazon.inapp.purchasing.ResponseReceiver'),(143,7,'com.greystripe.android.sdk.AdContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'imageurl'),(2,27,'appId'),(3,21,'appId'),(4,19,'appId'),(5,19,'number'),(6,19,'campId'),(7,21,'number'),(8,21,'adType'),(9,27,'title'),(10,19,'sms'),(11,19,'url'),(12,21,'text'),(13,21,'campId'),(14,27,'imageurl'),(15,27,'text'),(16,19,'test'),(17,19,'creativeId'),(18,21,'header'),(19,19,'apikey'),(20,27,'imei'),(21,20,'APPLICATION_ID'),(22,20,'FIRST_RUN'),(23,20,'DEVELOPER_ID'),(24,21,'creativeId'),(25,21,'apikey'),(26,27,'campId'),(27,27,'sms'),(28,21,'testMode'),(29,21,'url'),(30,19,'header'),(31,27,'number'),(32,21,'sms'),(33,27,'apikey'),(34,27,'creativeId'),(35,21,'title'),(36,20,'M_SERVER_URL'),(37,20,'USER_AGENT'),(38,27,'url'),(39,21,'link'),(40,27,'header'),(41,6,'EXTRA_DONT_SHOW_APPS3'),(42,19,'adType'),(43,8,'EXTRA_LANG_CHANGE_FROM_MENU'),(44,21,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',1,40,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',1,40,NULL),(75,75,'r',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,84,'r',1,NULL,NULL),(81,23,'r',1,NULL,NULL),(82,27,'r',1,NULL,NULL),(83,25,'r',1,NULL,NULL),(84,85,'a',1,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,90,'a',0,NULL,NULL),(90,91,'a',0,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,93,'a',0,NULL,NULL),(93,94,'a',0,NULL,NULL),(94,95,'a',0,NULL,NULL),(95,96,'a',0,NULL,NULL),(96,97,'a',0,NULL,NULL),(97,98,'a',0,NULL,NULL),(98,99,'a',0,NULL,NULL),(99,100,'a',0,NULL,NULL),(100,101,'a',0,NULL,NULL),(101,102,'a',0,NULL,NULL),(102,103,'a',0,NULL,NULL),(103,104,'a',0,NULL,NULL),(104,105,'a',0,NULL,NULL),(105,106,'a',0,NULL,NULL),(106,107,'a',0,NULL,NULL),(107,108,'a',0,NULL,NULL),(108,109,'a',0,NULL,NULL),(109,110,'a',0,NULL,NULL),(110,111,'a',0,NULL,NULL),(111,112,'a',0,NULL,NULL),(112,113,'a',0,NULL,NULL),(113,114,'a',0,NULL,NULL),(114,115,'a',0,NULL,NULL),(115,116,'a',0,NULL,NULL),(116,117,'a',0,NULL,NULL),(117,118,'a',0,NULL,NULL),(118,119,'a',0,NULL,NULL),(119,120,'a',0,NULL,NULL),(120,121,'a',0,NULL,NULL),(121,122,'a',0,NULL,NULL),(122,123,'a',0,NULL,NULL),(123,124,'a',0,NULL,NULL),(124,125,'a',0,NULL,NULL),(125,126,'a',1,NULL,NULL),(126,127,'a',1,NULL,NULL),(127,128,'a',1,NULL,NULL),(128,129,'a',0,NULL,NULL),(129,130,'a',0,NULL,NULL),(130,131,'a',0,NULL,NULL),(131,132,'a',0,NULL,NULL),(132,133,'a',0,NULL,NULL),(133,134,'a',0,NULL,NULL),(134,135,'s',0,NULL,NULL),(135,136,'s',1,43,NULL),(136,137,'s',0,NULL,NULL),(137,138,'s',0,NULL,NULL),(138,139,'r',1,NULL,NULL),(139,140,'r',1,NULL,NULL),(140,141,'r',1,NULL,NULL),(141,142,'r',1,NULL,NULL),(142,143,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,10),(3,3,19),(4,4,2),(5,5,10),(6,6,20),(7,7,8),(8,8,2),(9,9,2),(10,10,19),(11,11,2),(12,12,8),(13,13,27),(14,14,25),(15,15,8),(16,16,4),(17,16,6),(18,16,14),(19,17,20),(20,18,2),(21,19,10),(22,20,14),(23,21,19),(24,22,14),(25,23,23),(26,24,10),(27,25,8),(28,26,10),(29,27,14),(30,28,14),(31,29,20),(32,30,18),(33,31,14),(34,32,20),(35,33,14),(36,34,8),(37,35,19),(38,36,2),(39,37,2),(40,38,19),(41,39,2),(42,40,20),(43,41,10),(44,42,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,14,'<com.antonio.thermo2.activity.AcMenu: void onClick(android.view.View)>',13,'a',NULL),(2,80,'<com.antonio.thermo2.preference.options.SharedOptions: void checkMyApps(android.content.Context)>',5,'a',NULL),(3,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(4,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',55,'a',NULL),(5,20,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',21,'s',NULL),(6,81,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(7,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(8,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',31,'a',NULL),(9,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',39,'a',NULL),(10,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(11,2,'<com.antonio.thermo2.activity.AcCheck: void checkEULA()>',5,'a',NULL),(12,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',43,'a',NULL),(13,27,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(14,25,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(15,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',53,'a',NULL),(16,82,'<com.antonio.thermo2.values.Values: void applicationSearch(android.content.Context,java.lang.String)>',5,'a',NULL),(17,83,'<com.apperhand.device.android.a.e: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(18,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',23,'a',NULL),(19,80,'<com.antonio.thermo2.preference.options.SharedOptions: void checkRating(android.content.Context)>',7,'a',NULL),(20,14,'<com.antonio.thermo2.activity.AcMenu: void onClick(android.view.View)>',43,'a',NULL),(21,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(22,14,'<com.antonio.thermo2.activity.AcMenu: void share()>',14,'a',NULL),(23,23,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(24,10,'<com.antonio.thermo2.activity.AcThermometer: void onClick(android.view.View)>',6,'a',NULL),(25,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',63,'a',NULL),(26,10,'<com.antonio.thermo2.activity.AcThermometer: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(27,14,'<com.antonio.thermo2.activity.AcMenu: void onClick(android.view.View)>',26,'a',NULL),(28,82,'<com.antonio.thermo2.values.Values: void webSite(android.content.Context,java.lang.String)>',5,'a',NULL),(29,83,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(30,18,'<com.antonio.thermo2.activity.AcCalibrate: void onClick(android.view.View)>',12,'a',NULL),(31,14,'<com.antonio.thermo2.activity.AcMenu: void onClick(android.view.View)>',6,'a',NULL),(32,81,'<com.apperhand.device.android.a.a: java.util.List d()>',13,'p',NULL),(33,14,'<com.antonio.thermo2.activity.AcMenu: void onClick(android.view.View)>',19,'a',NULL),(34,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(35,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(36,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',15,'a',NULL),(37,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',47,'a',NULL),(38,19,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(39,2,'<com.antonio.thermo2.activity.AcCheck: void checkLanguage()>',7,'a',NULL),(40,83,'<com.apperhand.device.android.a.e: java.util.List a()>',13,'p',NULL),(41,80,'<com.antonio.thermo2.preference.options.SharedOptions: void checkNewspaper(android.content.Context)>',5,'a',NULL),(42,8,'<com.antonio.thermo2.activity.AcLanguage: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',33,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,12),(2,4,13),(3,7,14),(4,11,15),(5,15,12),(6,16,12),(7,17,13),(8,18,12),(9,19,12),(10,20,13),(11,21,13),(12,22,13),(13,23,12),(14,24,16),(15,25,17),(16,27,18),(17,28,18),(18,29,18),(19,30,18),(20,31,18),(21,32,18),(22,33,18),(23,34,18),(24,35,18),(25,36,18),(26,37,18),(27,38,18),(28,39,18),(29,40,18),(30,41,18),(31,42,18),(32,43,18),(33,44,18),(34,45,18),(35,46,18),(36,47,18),(37,48,18),(38,49,18),(39,50,18),(40,51,18),(41,52,18),(42,56,12),(43,57,13),(44,58,19),(45,59,19),(46,60,19),(47,61,19),(48,62,19),(49,63,19),(50,64,19),(51,65,19),(52,66,12),(53,67,17),(54,68,16),(55,73,18),(56,74,18),(57,75,18),(58,76,18),(59,80,12),(60,81,13),(61,84,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/antonio/thermo2/activity/AcAbout'),(2,2,'com/antonio/thermo2/activity/AcMyApps'),(3,5,'com/antonio/thermo2/activity/AcThermometer'),(4,6,'com/apperhand/device/android/AndroidSDKProvider'),(5,8,'com/antonio/thermo2/activity/AcThermometer'),(6,9,'com/antonio/thermo2/activity/AcThermometer'),(7,10,'com/antonio/thermo2/activity/AcThermometer'),(8,12,'com/antonio/thermo2/activity/AcEULA'),(9,13,'com/antonio/thermo2/activity/AcThermometer'),(10,26,'com/antonio/thermo2/activity/AcThermometer'),(11,53,'com/antonio/thermo2/activity/AcThermometer'),(12,54,'com/antonio/thermo2/activity/AcRateMeWith5Stars'),(13,55,'com/antonio/thermo2/activity/AcMyApps'),(14,69,'com/antonio/thermo2/activity/AcMenu'),(15,70,'com/antonio/thermo2/activity/AcThermometer'),(16,71,'com/antonio/thermo2/activity/AcMenu'),(17,72,'com/antonio/thermo2/activity/AcLanguage'),(18,77,'com/antonio/thermo2/activity/AcCalibrate'),(19,78,'com/antonio/thermo2/activity/AcNewspaper'),(20,79,'com/antonio/thermo2/activity/AcThermometer'),(21,82,'com/antonio/thermo2/activity/AcThermometer'),(22,83,'com/antonio/thermo2/activity/AcThermometer'),(23,85,'com/antonio/thermo2/activity/AcLanguage'),(24,86,'com/antonio/thermo2/activity/AcNewspaper'),(25,87,'com/antonio/thermo2/activity/AcThermometer');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,11,1),(2,27,2),(3,28,3),(4,29,4),(5,30,5),(6,31,6),(7,32,7),(8,33,8),(9,34,9),(10,35,10),(11,36,11),(12,37,12),(13,38,13),(14,39,14),(15,40,15),(16,41,16),(17,42,17),(18,43,18),(19,44,19),(20,45,20),(21,46,21),(22,47,22),(23,48,23),(24,49,24),(25,50,25),(26,51,26),(27,52,27),(28,73,29),(29,74,30),(30,75,31),(31,76,33),(32,84,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'<INTENT>'),(2,3,'type'),(3,4,'<INTENT>'),(4,4,'type'),(5,6,'M_SERVER_URL'),(6,6,'USER_AGENT'),(7,6,'SERVICE_MODE'),(8,6,'FIRST_RUN'),(9,6,'DEVELOPER_ID'),(10,6,'APPLICATION_ID'),(11,7,'android.intent.extra.shortcut.NAME'),(12,7,'android.intent.extra.shortcut.ICON'),(13,7,'android.intent.extra.shortcut.INTENT'),(14,15,'campId'),(15,15,'text'),(16,15,'title'),(17,15,'creativeId'),(18,15,'appId'),(19,15,'expiry_time'),(20,15,'number'),(21,15,'adType'),(22,15,'type'),(23,15,'sms'),(24,15,'imageurl'),(25,15,'apikey'),(26,16,'campId'),(27,16,'title'),(28,16,'text'),(29,16,'creativeId'),(30,16,'appId'),(31,16,'expiry_time'),(32,16,'link'),(33,16,'adType'),(34,16,'type'),(35,16,'imageurl'),(36,16,'header'),(37,16,'apikey'),(38,17,'campId'),(39,17,'text'),(40,17,'title'),(41,17,'creativeId'),(42,17,'appId'),(43,17,'expiry_time'),(44,17,'number'),(45,17,'adType'),(46,17,'type'),(47,17,'sms'),(48,17,'imageurl'),(49,17,'apikey'),(50,18,'title'),(51,18,'text'),(52,18,'appId'),(53,18,'expiry_time'),(54,18,'number'),(55,18,'adType'),(56,18,'type'),(57,18,'imageurl'),(58,18,'apikey'),(59,19,'campId'),(60,19,'title'),(61,19,'text'),(62,19,'creativeId'),(63,19,'appId'),(64,19,'expiry_time'),(65,19,'link'),(66,19,'adType'),(67,19,'type'),(68,19,'imageurl'),(69,19,'apikey'),(70,20,'campId'),(71,20,'title'),(72,20,'text'),(73,20,'creativeId'),(74,20,'appId'),(75,20,'expiry_time'),(76,20,'link'),(77,20,'adType'),(78,20,'type'),(79,20,'imageurl'),(80,20,'header'),(81,20,'apikey'),(82,21,'title'),(83,21,'text'),(84,21,'appId'),(85,21,'expiry_time'),(86,21,'number'),(87,21,'adType'),(88,21,'type'),(89,21,'imageurl'),(90,21,'apikey'),(91,22,'campId'),(92,22,'title'),(93,22,'text'),(94,22,'creativeId'),(95,22,'appId'),(96,22,'expiry_time'),(97,22,'link'),(98,22,'adType'),(99,22,'type'),(100,22,'imageurl'),(101,22,'apikey'),(102,23,'icon'),(103,23,'appId'),(104,23,'testMode'),(105,23,'type'),(106,23,'apikey'),(107,24,'icon'),(108,24,'appId'),(109,24,'testMode'),(110,24,'type'),(111,24,'apikey'),(112,25,'icon'),(113,25,'appId'),(114,25,'testMode'),(115,25,'type'),(116,25,'apikey'),(117,55,'EXTRA_DONT_SHOW_APPS3'),(118,56,'<INTENT>'),(119,56,'type'),(120,57,'<INTENT>'),(121,57,'type'),(122,58,'android.intent.extra.INTENT'),(123,59,'android.intent.extra.INTENT'),(124,60,'android.intent.extra.TITLE'),(125,60,'android.intent.extra.INTENT'),(126,61,'android.intent.extra.INTENT'),(127,62,'android.intent.extra.TITLE'),(128,62,'android.intent.extra.INTENT'),(129,63,'android.intent.extra.INTENT'),(130,64,'android.intent.extra.TITLE'),(131,64,'android.intent.extra.INTENT'),(132,65,'android.intent.extra.TITLE'),(133,65,'android.intent.extra.INTENT'),(134,66,'appId'),(135,66,'type'),(136,66,'apikey'),(137,67,'appId'),(138,67,'type'),(139,67,'apikey'),(140,68,'appId'),(141,68,'type'),(142,68,'apikey'),(143,72,'EXTRA_LANG_CHANGE_FROM_MENU'),(144,80,'<INTENT>'),(145,80,'type'),(146,81,'<INTENT>'),(147,81,'type'),(148,84,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,1),(7,7,5),(8,8,3),(9,9,3),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,6),(15,15,7),(16,16,8),(17,17,3),(18,18,9),(19,19,3),(20,20,10),(21,21,3),(22,22,11),(23,23,3),(24,24,3),(25,25,21),(26,26,21),(27,27,21),(28,28,21),(29,29,21),(30,30,1),(31,32,22),(32,34,23),(33,35,24),(34,36,26),(35,36,25),(36,36,27),(37,37,28),(38,38,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,6,1),(5,8,2),(6,9,2),(7,10,3),(8,10,2),(9,11,1),(10,12,1),(11,13,1),(12,17,2),(13,19,2),(14,20,4),(15,22,4),(16,23,2),(17,30,1),(18,31,1),(19,32,5),(20,33,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.antonio.thermo2.activity'),(2,2,'com.antonio.thermo2.activity'),(3,5,'com.antonio.thermo2.activity'),(4,6,'com.antonio.thermo2.activity'),(5,8,'com.antonio.thermo2.activity'),(6,9,'com.antonio.thermo2.activity'),(7,10,'com.antonio.thermo2.activity'),(8,12,'com.antonio.thermo2.activity'),(9,13,'com.antonio.thermo2.activity'),(10,26,'com.antonio.thermo2.activity'),(11,53,'com.antonio.thermo2.activity'),(12,54,'com.antonio.thermo2.activity'),(13,55,'com.antonio.thermo2.activity'),(14,69,'com.antonio.thermo2.activity'),(15,70,'com.antonio.thermo2.activity'),(16,71,'com.antonio.thermo2.activity'),(17,72,'com.antonio.thermo2.activity'),(18,77,'com.antonio.thermo2.activity'),(19,78,'com.antonio.thermo2.activity'),(20,79,'com.antonio.thermo2.activity'),(21,82,'com.antonio.thermo2.activity'),(22,83,'com.antonio.thermo2.activity'),(23,85,'com.antonio.thermo2.activity'),(24,86,'com.antonio.thermo2.activity'),(25,87,'com.antonio.thermo2.activity');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,7,0),(4,17,0),(5,21,0),(6,22,0),(7,26,0),(8,28,0),(9,33,0),(10,37,0),(11,38,0),(12,44,0),(13,49,0),(14,51,0),(15,58,0),(16,60,0),(17,65,0),(18,66,0),(19,72,0),(20,71,0),(21,72,0),(22,74,0),(23,78,0),(24,79,0),(25,28,0),(26,80,0),(27,81,0),(28,82,0),(29,83,0),(30,84,0),(31,125,0),(32,126,0),(33,127,0),(34,135,0),(35,138,0),(36,139,0),(37,140,0),(38,141,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,11,0,0),(13,12,0,0),(14,13,1,0),(15,13,1,0),(16,13,1,0),(17,13,1,0),(18,13,1,0),(19,13,1,0),(20,13,1,0),(21,13,1,0),(22,13,1,0),(23,14,1,0),(24,14,1,0),(25,14,1,0),(26,15,0,0),(27,16,1,0),(28,16,1,0),(29,16,1,0),(30,16,1,0),(31,16,1,0),(32,16,1,0),(33,16,1,0),(34,16,1,0),(35,16,1,0),(36,16,1,0),(37,16,1,0),(38,16,1,0),(39,16,1,0),(40,16,1,0),(41,16,1,0),(42,16,1,0),(43,16,1,0),(44,16,1,0),(45,16,1,0),(46,16,1,0),(47,16,1,0),(48,16,1,0),(49,16,1,0),(50,16,1,0),(51,16,1,0),(52,16,1,0),(53,18,0,0),(54,19,0,0),(55,20,0,0),(56,21,1,0),(57,21,1,0),(58,22,1,0),(59,22,1,0),(60,22,1,0),(61,22,1,0),(62,22,1,0),(63,22,1,0),(64,22,1,0),(65,22,1,0),(66,23,1,0),(67,23,1,0),(68,23,1,0),(69,24,0,0),(70,25,0,0),(71,26,0,0),(72,27,0,0),(73,28,1,0),(74,28,1,0),(75,28,1,0),(76,30,1,0),(77,31,0,0),(78,33,0,0),(79,34,0,0),(80,35,1,0),(81,35,1,0),(82,36,0,0),(83,37,0,0),(84,38,1,0),(85,39,0,0),(86,41,0,0),(87,42,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,58,1,2,NULL),(2,59,1,2,NULL),(3,60,1,2,NULL),(4,61,1,2,NULL),(5,62,1,2,NULL),(6,63,1,2,NULL),(7,64,1,2,NULL),(8,65,1,2,NULL),(9,3,1,2,NULL),(10,4,1,2,NULL),(11,11,1,2,NULL),(12,56,1,2,NULL),(13,57,1,2,NULL),(14,80,1,2,NULL),(15,81,1,2,NULL),(16,84,1,2,NULL),(17,66,1,2,NULL),(18,67,1,2,NULL),(19,68,1,2,NULL),(20,23,1,2,NULL),(21,24,1,2,NULL),(22,25,1,2,NULL),(23,14,1,2,NULL),(24,15,1,2,NULL),(25,16,1,2,NULL),(26,17,1,2,NULL),(27,18,1,2,NULL),(28,19,1,2,NULL),(29,20,1,2,NULL),(30,21,1,2,NULL),(31,22,1,2,NULL),(32,58,7,2,NULL),(33,59,7,2,NULL),(34,60,7,2,NULL),(35,61,7,2,NULL),(36,62,7,2,NULL),(37,63,7,2,NULL),(38,64,7,2,NULL),(39,65,7,2,NULL),(40,3,7,2,NULL),(41,4,7,2,NULL),(42,11,7,2,NULL),(43,56,7,2,NULL),(44,57,7,2,NULL),(45,80,7,2,NULL),(46,81,7,2,NULL),(47,84,7,2,NULL),(48,66,7,2,NULL),(49,67,7,2,NULL),(50,68,7,2,NULL),(51,23,7,2,NULL),(52,24,7,2,NULL),(53,25,7,2,NULL),(54,14,7,2,NULL),(55,15,7,2,NULL),(56,16,7,2,NULL),(57,17,7,2,NULL),(58,18,7,2,NULL),(59,19,7,2,NULL),(60,20,7,2,NULL),(61,21,7,2,NULL),(62,22,7,2,NULL),(63,58,17,2,NULL),(64,59,17,2,NULL),(65,60,17,2,NULL),(66,61,17,2,NULL),(67,62,17,2,NULL),(68,63,17,2,NULL),(69,64,17,2,NULL),(70,65,17,2,NULL),(71,3,17,2,NULL),(72,4,17,2,NULL),(73,11,17,2,NULL),(74,56,17,2,NULL),(75,57,17,2,NULL),(76,80,17,2,NULL),(77,81,17,2,NULL),(78,84,17,2,NULL),(79,66,17,2,NULL),(80,67,17,2,NULL),(81,68,17,2,NULL),(82,23,17,2,NULL),(83,24,17,2,NULL),(84,25,17,2,NULL),(85,14,17,2,NULL),(86,15,17,2,NULL),(87,16,17,2,NULL),(88,17,17,2,NULL),(89,18,17,2,NULL),(90,19,17,2,NULL),(91,20,17,2,NULL),(92,21,17,2,NULL),(93,22,17,2,NULL),(94,58,44,2,NULL),(95,59,44,2,NULL),(96,60,44,2,NULL),(97,61,44,2,NULL),(98,62,44,2,NULL),(99,63,44,2,NULL),(100,64,44,2,NULL),(101,65,44,2,NULL),(102,3,44,2,NULL),(103,4,44,2,NULL),(104,11,44,2,NULL),(105,56,44,2,NULL),(106,57,44,2,NULL),(107,80,44,2,NULL),(108,81,44,2,NULL),(109,84,44,2,NULL),(110,66,44,2,NULL),(111,67,44,2,NULL),(112,68,44,2,NULL),(113,23,44,2,NULL),(114,24,44,2,NULL),(115,25,44,2,NULL),(116,14,44,2,NULL),(117,15,44,2,NULL),(118,16,44,2,NULL),(119,17,44,2,NULL),(120,18,44,2,NULL),(121,19,44,2,NULL),(122,20,44,2,NULL),(123,21,44,2,NULL),(124,22,44,2,NULL),(125,58,58,2,NULL),(126,59,58,2,NULL),(127,60,58,2,NULL),(128,61,58,2,NULL),(129,62,58,2,NULL),(130,63,58,2,NULL),(131,64,58,2,NULL),(132,65,58,2,NULL),(133,3,58,2,NULL),(134,4,58,2,NULL),(135,11,58,2,NULL),(136,56,58,2,NULL),(137,57,58,2,NULL),(138,80,58,2,NULL),(139,81,58,2,NULL),(140,84,58,2,NULL),(141,66,58,2,NULL),(142,67,58,2,NULL),(143,68,58,2,NULL),(144,23,58,2,NULL),(145,24,58,2,NULL),(146,25,58,2,NULL),(147,14,58,2,NULL),(148,15,58,2,NULL),(149,16,58,2,NULL),(150,17,58,2,NULL),(151,18,58,2,NULL),(152,19,58,2,NULL),(153,20,58,2,NULL),(154,21,58,2,NULL),(155,22,58,2,NULL),(156,58,66,2,NULL),(157,59,66,2,NULL),(158,60,66,2,NULL),(159,61,66,2,NULL),(160,62,66,2,NULL),(161,63,66,2,NULL),(162,64,66,2,NULL),(163,65,66,2,NULL),(164,3,66,2,NULL),(165,4,66,2,NULL),(166,11,66,2,NULL),(167,56,66,2,NULL),(168,57,66,2,NULL),(169,80,66,2,NULL),(170,81,66,2,NULL),(171,84,66,2,NULL),(172,66,66,2,NULL),(173,67,66,2,NULL),(174,68,66,2,NULL),(175,23,66,2,NULL),(176,24,66,2,NULL),(177,25,66,2,NULL),(178,14,66,2,NULL),(179,15,66,2,NULL),(180,16,66,2,NULL),(181,17,66,2,NULL),(182,18,66,2,NULL),(183,19,66,2,NULL),(184,20,66,2,NULL),(185,21,66,2,NULL),(186,22,66,2,NULL),(187,58,71,2,NULL),(188,59,71,2,NULL),(189,60,71,2,NULL),(190,61,71,2,NULL),(191,62,71,2,NULL),(192,63,71,2,NULL),(193,64,71,2,NULL),(194,65,71,2,NULL),(195,3,71,2,NULL),(196,4,71,2,NULL),(197,11,71,2,NULL),(198,56,71,2,NULL),(199,57,71,2,NULL),(200,80,71,2,NULL),(201,81,71,2,NULL),(202,84,71,2,NULL),(203,66,71,2,NULL),(204,67,71,2,NULL),(205,68,71,2,NULL),(206,23,71,2,NULL),(207,24,71,2,NULL),(208,25,71,2,NULL),(209,14,71,2,NULL),(210,15,71,2,NULL),(211,16,71,2,NULL),(212,17,71,2,NULL),(213,18,71,2,NULL),(214,19,71,2,NULL),(215,20,71,2,NULL),(216,21,71,2,NULL),(217,22,71,2,NULL),(218,58,74,2,NULL),(219,59,74,2,NULL),(220,60,74,2,NULL),(221,61,74,2,NULL),(222,62,74,2,NULL),(223,63,74,2,NULL),(224,64,74,2,NULL),(225,65,74,2,NULL),(226,3,74,2,NULL),(227,4,74,2,NULL),(228,11,74,2,NULL),(229,56,74,2,NULL),(230,57,74,2,NULL),(231,80,74,2,NULL),(232,81,74,2,NULL),(233,84,74,2,NULL),(234,66,74,2,NULL),(235,67,74,2,NULL),(236,68,74,2,NULL),(237,23,74,2,NULL),(238,24,74,2,NULL),(239,25,74,2,NULL),(240,14,74,2,NULL),(241,15,74,2,NULL),(242,16,74,2,NULL),(243,17,74,2,NULL),(244,18,74,2,NULL),(245,19,74,2,NULL),(246,20,74,2,NULL),(247,21,74,2,NULL),(248,22,74,2,NULL),(249,58,78,2,NULL),(250,59,78,2,NULL),(251,60,78,2,NULL),(252,61,78,2,NULL),(253,62,78,2,NULL),(254,63,78,2,NULL),(255,64,78,2,NULL),(256,65,78,2,NULL),(257,3,78,2,NULL),(258,4,78,2,NULL),(259,11,78,2,NULL),(260,56,78,2,NULL),(261,57,78,2,NULL),(262,80,78,2,NULL),(263,81,78,2,NULL),(264,84,78,2,NULL),(265,66,78,2,NULL),(266,67,78,2,NULL),(267,68,78,2,NULL),(268,23,78,2,NULL),(269,24,78,2,NULL),(270,25,78,2,NULL),(271,14,78,2,NULL),(272,15,78,2,NULL),(273,16,78,2,NULL),(274,17,78,2,NULL),(275,18,78,2,NULL),(276,19,78,2,NULL),(277,20,78,2,NULL),(278,21,78,2,NULL),(279,22,78,2,NULL),(280,58,79,2,NULL),(281,59,79,2,NULL),(282,60,79,2,NULL),(283,61,79,2,NULL),(284,62,79,2,NULL),(285,63,79,2,NULL),(286,64,79,2,NULL),(287,65,79,2,NULL),(288,3,79,2,NULL),(289,4,79,2,NULL),(290,11,79,2,NULL),(291,56,79,2,NULL),(292,57,79,2,NULL),(293,80,79,2,NULL),(294,81,79,2,NULL),(295,84,79,2,NULL),(296,66,79,2,NULL),(297,67,79,2,NULL),(298,68,79,2,NULL),(299,23,79,2,NULL),(300,24,79,2,NULL),(301,25,79,2,NULL),(302,14,79,2,NULL),(303,15,79,2,NULL),(304,16,79,2,NULL),(305,17,79,2,NULL),(306,18,79,2,NULL),(307,19,79,2,NULL),(308,20,79,2,NULL),(309,21,79,2,NULL),(310,22,79,2,NULL),(311,58,37,2,NULL),(312,59,37,2,NULL),(313,60,37,2,NULL),(314,61,37,2,NULL),(315,62,37,2,NULL),(316,63,37,2,NULL),(317,64,37,2,NULL),(318,65,37,2,NULL),(319,3,37,2,NULL),(320,4,37,2,NULL),(321,11,37,2,NULL),(322,56,37,2,NULL),(323,57,37,2,NULL),(324,80,37,2,NULL),(325,81,37,2,NULL),(326,84,37,2,NULL),(327,66,37,2,NULL),(328,67,37,2,NULL),(329,68,37,2,NULL),(330,23,37,2,NULL),(331,24,37,2,NULL),(332,25,37,2,NULL),(333,14,37,2,NULL),(334,15,37,2,NULL),(335,16,37,2,NULL),(336,17,37,2,NULL),(337,18,37,2,NULL),(338,19,37,2,NULL),(339,20,37,2,NULL),(340,21,37,2,NULL),(341,22,37,2,NULL),(342,58,49,2,NULL),(343,59,49,2,NULL),(344,60,49,2,NULL),(345,61,49,2,NULL),(346,62,49,2,NULL),(347,63,49,2,NULL),(348,64,49,2,NULL),(349,65,49,2,NULL),(350,3,49,2,NULL),(351,4,49,2,NULL),(352,11,49,2,NULL),(353,56,49,2,NULL),(354,57,49,2,NULL),(355,80,49,2,NULL),(356,81,49,2,NULL),(357,84,49,2,NULL),(358,66,49,2,NULL),(359,67,49,2,NULL),(360,68,49,2,NULL),(361,23,49,2,NULL),(362,24,49,2,NULL),(363,25,49,2,NULL),(364,14,49,2,NULL),(365,15,49,2,NULL),(366,16,49,2,NULL),(367,17,49,2,NULL),(368,18,49,2,NULL),(369,19,49,2,NULL),(370,20,49,2,NULL),(371,21,49,2,NULL),(372,22,49,2,NULL),(373,58,60,2,NULL),(374,59,60,2,NULL),(375,60,60,2,NULL),(376,61,60,2,NULL),(377,62,60,2,NULL),(378,63,60,2,NULL),(379,64,60,2,NULL),(380,65,60,2,NULL),(381,3,60,2,NULL),(382,4,60,2,NULL),(383,11,60,2,NULL),(384,56,60,2,NULL),(385,57,60,2,NULL),(386,80,60,2,NULL),(387,81,60,2,NULL),(388,84,60,2,NULL),(389,66,60,2,NULL),(390,67,60,2,NULL),(391,68,60,2,NULL),(392,23,60,2,NULL),(393,24,60,2,NULL),(394,25,60,2,NULL),(395,14,60,2,NULL),(396,15,60,2,NULL),(397,16,60,2,NULL),(398,17,60,2,NULL),(399,18,60,2,NULL),(400,19,60,2,NULL),(401,20,60,2,NULL),(402,21,60,2,NULL),(403,22,60,2,NULL),(404,58,72,2,NULL),(405,59,72,2,NULL),(406,60,72,2,NULL),(407,61,72,2,NULL),(408,62,72,2,NULL),(409,63,72,2,NULL),(410,64,72,2,NULL),(411,65,72,2,NULL),(412,3,72,2,NULL),(413,4,72,2,NULL),(414,11,72,2,NULL),(415,56,72,2,NULL),(416,57,72,2,NULL),(417,80,72,2,NULL),(418,81,72,2,NULL),(419,84,72,2,NULL),(420,66,72,2,NULL),(421,67,72,2,NULL),(422,68,72,2,NULL),(423,23,72,2,NULL),(424,24,72,2,NULL),(425,25,72,2,NULL),(426,14,72,2,NULL),(427,15,72,2,NULL),(428,16,72,2,NULL),(429,17,72,2,NULL),(430,18,72,2,NULL),(431,19,72,2,NULL),(432,20,72,2,NULL),(433,21,72,2,NULL),(434,22,72,2,NULL),(435,58,38,2,NULL),(436,59,38,2,NULL),(437,60,38,2,NULL),(438,61,38,2,NULL),(439,62,38,2,NULL),(440,63,38,2,NULL),(441,64,38,2,NULL),(442,65,38,2,NULL),(443,3,38,2,NULL),(444,4,38,2,NULL),(445,11,38,2,NULL),(446,56,38,2,NULL),(447,57,38,2,NULL),(448,80,38,2,NULL),(449,81,38,2,NULL),(450,84,38,2,NULL),(451,66,38,2,NULL),(452,67,38,2,NULL),(453,68,38,2,NULL),(454,23,38,2,NULL),(455,24,38,2,NULL),(456,25,38,2,NULL),(457,14,38,2,NULL),(458,15,38,2,NULL),(459,16,38,2,NULL),(460,17,38,2,NULL),(461,18,38,2,NULL),(462,19,38,2,NULL),(463,20,38,2,NULL),(464,21,38,2,NULL),(465,22,38,2,NULL),(466,58,51,2,NULL),(467,59,51,2,NULL),(468,60,51,2,NULL),(469,61,51,2,NULL),(470,62,51,2,NULL),(471,63,51,2,NULL),(472,64,51,2,NULL),(473,65,51,2,NULL),(474,3,51,2,NULL),(475,4,51,2,NULL),(476,11,51,2,NULL),(477,56,51,2,NULL),(478,57,51,2,NULL),(479,80,51,2,NULL),(480,81,51,2,NULL),(481,84,51,2,NULL),(482,66,51,2,NULL),(483,67,51,2,NULL),(484,68,51,2,NULL),(485,23,51,2,NULL),(486,24,51,2,NULL),(487,25,51,2,NULL),(488,14,51,2,NULL),(489,15,51,2,NULL),(490,16,51,2,NULL),(491,17,51,2,NULL),(492,18,51,2,NULL),(493,19,51,2,NULL),(494,20,51,2,NULL),(495,21,51,2,NULL),(496,22,51,2,NULL),(497,58,65,2,NULL),(498,59,65,2,NULL),(499,60,65,2,NULL),(500,61,65,2,NULL),(501,62,65,2,NULL),(502,63,65,2,NULL),(503,64,65,2,NULL),(504,65,65,2,NULL),(505,3,65,2,NULL),(506,4,65,2,NULL),(507,11,65,2,NULL),(508,56,65,2,NULL),(509,57,65,2,NULL),(510,80,65,2,NULL),(511,81,65,2,NULL),(512,84,65,2,NULL),(513,66,65,2,NULL),(514,67,65,2,NULL),(515,68,65,2,NULL),(516,23,65,2,NULL),(517,24,65,2,NULL),(518,25,65,2,NULL),(519,14,65,2,NULL),(520,15,65,2,NULL),(521,16,65,2,NULL),(522,17,65,2,NULL),(523,18,65,2,NULL),(524,19,65,2,NULL),(525,20,65,2,NULL),(526,21,65,2,NULL),(527,22,65,2,NULL),(528,58,22,2,NULL),(529,59,22,2,NULL),(530,60,22,2,NULL),(531,61,22,2,NULL),(532,62,22,2,NULL),(533,63,22,2,NULL),(534,64,22,2,NULL),(535,65,22,2,NULL),(536,3,22,2,NULL),(537,4,22,2,NULL),(538,11,22,2,NULL),(539,56,22,2,NULL),(540,57,22,2,NULL),(541,80,22,2,NULL),(542,81,22,2,NULL),(543,84,22,2,NULL),(544,66,22,2,NULL),(545,67,22,2,NULL),(546,68,22,2,NULL),(547,23,22,2,NULL),(548,24,22,2,NULL),(549,25,22,2,NULL),(550,14,22,2,NULL),(551,15,22,2,NULL),(552,16,22,2,NULL),(553,17,22,2,NULL),(554,18,22,2,NULL),(555,19,22,2,NULL),(556,20,22,2,NULL),(557,21,22,2,NULL),(558,22,22,2,NULL),(559,58,26,2,NULL),(560,59,26,2,NULL),(561,60,26,2,NULL),(562,61,26,2,NULL),(563,62,26,2,NULL),(564,63,26,2,NULL),(565,64,26,2,NULL),(566,65,26,2,NULL),(567,3,26,2,NULL),(568,4,26,2,NULL),(569,11,26,2,NULL),(570,56,26,2,NULL),(571,57,26,2,NULL),(572,80,26,2,NULL),(573,81,26,2,NULL),(574,84,26,2,NULL),(575,66,26,2,NULL),(576,67,26,2,NULL),(577,68,26,2,NULL),(578,23,26,2,NULL),(579,24,26,2,NULL),(580,25,26,2,NULL),(581,14,26,2,NULL),(582,15,26,2,NULL),(583,16,26,2,NULL),(584,17,26,2,NULL),(585,18,26,2,NULL),(586,19,26,2,NULL),(587,20,26,2,NULL),(588,21,26,2,NULL),(589,22,26,2,NULL),(590,58,33,2,NULL),(591,59,33,2,NULL),(592,60,33,2,NULL),(593,61,33,2,NULL),(594,62,33,2,NULL),(595,63,33,2,NULL),(596,64,33,2,NULL),(597,65,33,2,NULL),(598,3,33,2,NULL),(599,4,33,2,NULL),(600,11,33,2,NULL),(601,56,33,2,NULL),(602,57,33,2,NULL),(603,80,33,2,NULL),(604,81,33,2,NULL),(605,84,33,2,NULL),(606,66,33,2,NULL),(607,67,33,2,NULL),(608,68,33,2,NULL),(609,23,33,2,NULL),(610,24,33,2,NULL),(611,25,33,2,NULL),(612,14,33,2,NULL),(613,15,33,2,NULL),(614,16,33,2,NULL),(615,17,33,2,NULL),(616,18,33,2,NULL),(617,19,33,2,NULL),(618,20,33,2,NULL),(619,21,33,2,NULL),(620,22,33,2,NULL),(621,58,84,2,NULL),(622,5,10,2,NULL),(623,59,84,2,NULL),(624,9,10,2,NULL),(625,60,84,2,NULL),(626,10,10,2,NULL),(627,61,84,2,NULL),(628,12,9,2,NULL),(629,62,84,2,NULL),(630,53,10,2,NULL),(631,63,84,2,NULL),(632,82,10,2,NULL),(633,64,84,2,NULL),(634,83,10,2,NULL),(635,65,84,2,NULL),(636,85,8,2,NULL),(637,3,84,2,NULL),(638,58,2,2,NULL),(639,4,84,2,NULL),(640,59,2,2,NULL),(641,11,84,2,NULL),(642,60,2,2,NULL),(643,56,84,2,NULL),(644,61,2,2,NULL),(645,57,84,2,NULL),(646,62,2,2,NULL),(647,80,84,2,NULL),(648,63,2,2,NULL),(649,81,84,2,NULL),(650,64,2,2,NULL),(651,84,84,2,NULL),(652,65,2,2,NULL),(653,66,84,2,NULL),(654,3,2,2,NULL),(655,67,84,2,NULL),(656,4,2,2,NULL),(657,68,84,2,NULL),(658,11,2,2,NULL),(659,23,84,2,NULL),(660,56,2,2,NULL),(661,24,84,2,NULL),(662,57,2,2,NULL),(663,25,84,2,NULL),(664,80,2,2,NULL),(665,14,84,2,NULL),(666,81,2,2,NULL),(667,15,84,2,NULL),(668,84,2,2,NULL),(669,16,84,2,NULL),(670,66,2,2,NULL),(671,17,84,2,NULL),(672,67,2,2,NULL),(673,18,84,2,NULL),(674,68,2,2,NULL),(675,19,84,2,NULL),(676,23,2,2,NULL),(677,20,84,2,NULL),(678,24,2,2,NULL),(679,21,84,2,NULL),(680,25,2,2,NULL),(681,22,84,2,NULL),(682,14,2,2,NULL),(683,58,125,2,NULL),(684,15,2,2,NULL),(685,59,125,2,NULL),(686,16,2,2,NULL),(687,60,125,2,NULL),(688,17,2,2,NULL),(689,61,125,2,NULL),(690,18,2,2,NULL),(691,62,125,2,NULL),(692,19,2,2,NULL),(693,63,125,2,NULL),(694,20,2,2,NULL),(695,64,125,2,NULL),(696,21,2,2,NULL),(697,65,125,2,NULL),(698,22,2,2,NULL),(699,3,125,2,NULL),(700,8,10,2,NULL),(701,4,125,2,NULL),(702,13,10,2,NULL),(703,11,125,2,NULL),(704,26,10,2,NULL),(705,56,125,2,NULL),(706,70,10,2,NULL),(707,57,125,2,NULL),(708,79,10,2,NULL),(709,80,125,2,NULL),(710,87,10,2,NULL),(711,81,125,2,NULL),(712,69,14,2,NULL),(713,84,125,2,NULL),(714,71,14,2,NULL),(715,66,125,2,NULL),(716,1,16,2,NULL),(717,67,125,2,NULL),(718,55,6,2,NULL),(719,68,125,2,NULL),(720,72,8,2,NULL),(721,23,125,2,NULL),(722,77,18,2,NULL),(723,24,125,2,NULL),(724,78,12,2,NULL),(725,25,125,2,NULL),(726,14,125,2,NULL),(727,58,21,2,NULL),(728,15,125,2,NULL),(729,59,21,2,NULL),(730,16,125,2,NULL),(731,60,21,2,NULL),(732,17,125,2,NULL),(733,61,21,2,NULL),(734,18,125,2,NULL),(735,62,21,2,NULL),(736,19,125,2,NULL),(737,63,21,2,NULL),(738,20,125,2,NULL),(739,64,21,2,NULL),(740,21,125,2,NULL),(741,65,21,2,NULL),(742,22,125,2,NULL),(743,58,81,2,NULL),(744,58,126,2,NULL),(745,59,81,2,NULL),(746,59,126,2,NULL),(747,60,81,2,NULL),(748,60,126,2,NULL),(749,61,81,2,NULL),(750,61,126,2,NULL),(751,62,81,2,NULL),(752,62,126,2,NULL),(753,63,81,2,NULL),(754,63,126,2,NULL),(755,64,81,2,NULL),(756,64,126,2,NULL),(757,65,81,2,NULL),(758,65,126,2,NULL),(759,58,83,2,NULL),(760,3,126,2,NULL),(761,59,83,2,NULL),(762,4,126,2,NULL),(763,60,83,2,NULL),(764,11,126,2,NULL),(765,61,83,2,NULL),(766,56,126,2,NULL),(767,62,83,2,NULL),(768,57,126,2,NULL),(769,63,83,2,NULL),(770,80,126,2,NULL),(771,64,83,2,NULL),(772,81,126,2,NULL),(773,65,83,2,NULL),(774,84,126,2,NULL),(775,58,82,2,NULL),(776,66,126,2,NULL),(777,59,82,2,NULL),(778,67,126,2,NULL),(779,60,82,2,NULL),(780,68,126,2,NULL),(781,61,82,2,NULL),(782,23,126,2,NULL),(783,62,82,2,NULL),(784,24,126,2,NULL),(785,63,82,2,NULL),(786,25,126,2,NULL),(787,64,82,2,NULL),(788,14,126,2,NULL),(789,65,82,2,NULL),(790,15,126,2,NULL),(791,58,28,2,NULL),(792,16,126,2,NULL),(793,59,28,2,NULL),(794,17,126,2,NULL),(795,60,28,2,NULL),(796,18,126,2,NULL),(797,61,28,2,NULL),(798,19,126,2,NULL),(799,62,28,2,NULL),(800,20,126,2,NULL),(801,63,28,2,NULL),(802,21,126,2,NULL),(803,64,28,2,NULL),(804,22,126,2,NULL),(805,65,28,2,NULL),(806,58,127,2,NULL),(807,58,80,2,NULL),(808,59,127,2,NULL),(809,59,80,2,NULL),(810,60,127,2,NULL),(811,60,80,2,NULL),(812,61,127,2,NULL),(813,61,80,2,NULL),(814,62,127,2,NULL),(815,62,80,2,NULL),(816,63,127,2,NULL),(817,63,80,2,NULL),(818,64,127,2,NULL),(819,64,80,2,NULL),(820,65,127,2,NULL),(821,65,80,2,NULL),(822,3,127,2,NULL),(823,58,135,2,NULL),(824,4,127,2,NULL),(825,59,135,2,NULL),(826,11,127,2,NULL),(827,60,135,2,NULL),(828,56,127,2,NULL),(829,61,135,2,NULL),(830,57,127,2,NULL),(831,62,135,2,NULL),(832,80,127,2,NULL),(833,63,135,2,NULL),(834,81,127,2,NULL),(835,64,135,2,NULL),(836,84,127,2,NULL),(837,65,135,2,NULL),(838,66,127,2,NULL),(839,58,138,2,NULL),(840,67,127,2,NULL),(841,59,138,2,NULL),(842,68,127,2,NULL),(843,60,138,2,NULL),(844,23,127,2,NULL),(845,61,138,2,NULL),(846,24,127,2,NULL),(847,62,138,2,NULL),(848,25,127,2,NULL),(849,63,138,2,NULL),(850,14,127,2,NULL),(851,64,138,2,NULL),(852,15,127,2,NULL),(853,65,138,2,NULL),(854,16,127,2,NULL),(855,58,139,2,NULL),(856,17,127,2,NULL),(857,59,139,2,NULL),(858,18,127,2,NULL),(859,60,139,2,NULL),(860,19,127,2,NULL),(861,61,139,2,NULL),(862,20,127,2,NULL),(863,62,139,2,NULL),(864,21,127,2,NULL),(865,63,139,2,NULL),(866,22,127,2,NULL),(867,64,139,2,NULL),(868,3,135,2,NULL),(869,65,139,2,NULL),(870,4,135,2,NULL),(871,58,140,2,NULL),(872,11,135,2,NULL),(873,59,140,2,NULL),(874,56,135,2,NULL),(875,60,140,2,NULL),(876,57,135,2,NULL),(877,61,140,2,NULL),(878,80,135,2,NULL),(879,62,140,2,NULL),(880,81,135,2,NULL),(881,63,140,2,NULL),(882,84,135,2,NULL),(883,64,140,2,NULL),(884,66,135,2,NULL),(885,65,140,2,NULL),(886,67,135,2,NULL),(887,58,141,2,NULL),(888,68,135,2,NULL),(889,59,141,2,NULL),(890,23,135,2,NULL),(891,60,141,2,NULL),(892,24,135,2,NULL),(893,61,141,2,NULL),(894,25,135,2,NULL),(895,62,141,2,NULL),(896,63,141,2,NULL),(897,14,135,2,NULL),(898,64,141,2,NULL),(899,15,135,2,NULL),(900,65,141,2,NULL),(901,16,135,2,NULL),(902,3,21,2,NULL),(903,17,135,2,NULL),(904,4,21,2,NULL),(905,18,135,2,NULL),(906,11,21,2,NULL),(907,19,135,2,NULL),(908,56,21,2,NULL),(909,20,135,2,NULL),(910,57,21,2,NULL),(911,21,135,2,NULL),(912,80,21,2,NULL),(913,22,135,2,NULL),(914,81,21,2,NULL),(915,3,138,2,NULL),(916,84,21,2,NULL),(917,4,138,2,NULL),(918,3,81,2,NULL),(919,11,138,2,NULL),(920,4,81,2,NULL),(921,56,138,2,NULL),(922,11,81,2,NULL),(923,57,138,2,NULL),(924,56,81,2,NULL),(925,80,138,2,NULL),(926,57,81,2,NULL),(927,81,138,2,NULL),(928,80,81,2,NULL),(929,84,138,2,NULL),(930,81,81,2,NULL),(931,66,138,2,NULL),(932,84,81,2,NULL),(933,67,138,2,NULL),(934,3,83,2,NULL),(935,68,138,2,NULL),(936,4,83,2,NULL),(937,23,138,2,NULL),(938,11,83,2,NULL),(939,24,138,2,NULL),(940,56,83,2,NULL),(941,25,138,2,NULL),(942,57,83,2,NULL),(943,14,138,2,NULL),(944,80,83,2,NULL),(945,15,138,2,NULL),(946,81,83,2,NULL),(947,16,138,2,NULL),(948,84,83,2,NULL),(949,17,138,2,NULL),(950,3,82,2,NULL),(951,18,138,2,NULL),(952,4,82,2,NULL),(953,19,138,2,NULL),(954,11,82,2,NULL),(955,20,138,2,NULL),(956,56,82,2,NULL),(957,21,138,2,NULL),(958,57,82,2,NULL),(959,22,138,2,NULL),(960,80,82,2,NULL),(961,3,139,2,NULL),(962,81,82,2,NULL),(963,4,139,2,NULL),(964,84,82,2,NULL),(965,11,139,2,NULL),(966,3,28,2,NULL),(967,56,139,2,NULL),(968,4,28,2,NULL),(969,57,139,2,NULL),(970,11,28,2,NULL),(971,80,139,2,NULL),(972,56,28,2,NULL),(973,81,139,2,NULL),(974,57,28,2,NULL),(975,84,139,2,NULL),(976,80,28,2,NULL),(977,66,139,2,NULL),(978,81,28,2,NULL),(979,67,139,2,NULL),(980,84,28,2,NULL),(981,68,139,2,NULL),(982,3,80,2,NULL),(983,23,139,2,NULL),(984,4,80,2,NULL),(985,24,139,2,NULL),(986,11,80,2,NULL),(987,25,139,2,NULL),(988,56,80,2,NULL),(989,14,139,2,NULL),(990,57,80,2,NULL),(991,15,139,2,NULL),(992,80,80,2,NULL),(993,16,139,2,NULL),(994,81,80,2,NULL),(995,17,139,2,NULL),(996,84,80,2,NULL),(997,18,139,2,NULL),(998,19,139,2,NULL),(999,20,139,2,NULL),(1000,21,139,2,NULL),(1001,3,140,2,NULL),(1002,22,139,2,NULL),(1003,4,140,2,NULL),(1004,11,140,2,NULL),(1005,56,140,2,NULL),(1006,57,140,2,NULL),(1007,80,140,2,NULL),(1008,81,140,2,NULL),(1009,84,140,2,NULL),(1010,66,140,2,NULL),(1011,3,141,2,NULL),(1012,67,140,2,NULL),(1013,4,141,2,NULL),(1014,68,140,2,NULL),(1015,11,141,2,NULL),(1016,23,140,2,NULL),(1017,56,141,2,NULL),(1018,24,140,2,NULL),(1019,57,141,2,NULL),(1020,25,140,2,NULL),(1021,80,141,2,NULL),(1022,14,140,2,NULL),(1023,81,141,2,NULL),(1024,15,140,2,NULL),(1025,84,141,2,NULL),(1026,16,140,2,NULL),(1027,6,5,2,NULL),(1028,17,140,2,NULL),(1029,6,20,2,NULL),(1030,18,140,2,NULL),(1031,6,29,2,NULL),(1032,19,140,2,NULL),(1033,6,56,2,NULL),(1034,20,140,2,NULL),(1035,6,63,2,NULL),(1036,21,140,2,NULL),(1037,6,64,2,NULL),(1038,22,140,2,NULL),(1039,6,137,2,NULL),(1040,66,141,2,NULL),(1041,66,21,2,NULL),(1042,67,141,2,NULL),(1043,67,21,2,NULL),(1044,68,141,2,NULL),(1045,68,21,2,NULL),(1046,23,141,2,NULL),(1047,23,21,2,NULL),(1048,24,141,2,NULL),(1049,24,21,2,NULL),(1050,25,141,2,NULL),(1051,25,21,2,NULL),(1052,14,141,2,NULL),(1053,14,21,2,NULL),(1054,15,141,2,NULL),(1055,15,21,2,NULL),(1056,16,141,2,NULL),(1057,16,21,2,NULL),(1058,17,141,2,NULL),(1059,17,21,2,NULL),(1060,18,141,2,NULL),(1061,18,21,2,NULL),(1062,19,141,2,NULL),(1063,19,21,2,NULL),(1064,20,141,2,NULL),(1065,20,21,2,NULL),(1066,21,141,2,NULL),(1067,21,21,2,NULL),(1068,22,141,2,NULL),(1069,22,21,2,NULL),(1070,66,83,2,NULL),(1071,67,83,2,NULL),(1072,68,83,2,NULL),(1073,66,82,2,NULL),(1074,67,82,2,NULL),(1075,68,82,2,NULL),(1076,66,28,2,NULL),(1077,67,28,2,NULL),(1078,68,28,2,NULL),(1079,66,80,2,NULL),(1080,67,80,2,NULL),(1081,68,80,2,NULL),(1082,23,81,2,NULL),(1083,24,81,2,NULL),(1084,25,81,2,NULL),(1085,14,81,2,NULL),(1086,15,81,2,NULL),(1087,16,81,2,NULL),(1088,17,81,2,NULL),(1089,18,81,2,NULL),(1090,19,81,2,NULL),(1091,20,81,2,NULL),(1092,21,81,2,NULL),(1093,22,81,2,NULL),(1094,23,82,2,NULL),(1095,24,82,2,NULL),(1096,25,82,2,NULL),(1097,23,28,2,NULL),(1098,24,28,2,NULL),(1099,25,28,2,NULL),(1100,23,80,2,NULL),(1101,24,80,2,NULL),(1102,25,80,2,NULL),(1103,14,83,2,NULL),(1104,15,83,2,NULL),(1105,16,83,2,NULL),(1106,17,83,2,NULL),(1107,18,83,2,NULL),(1108,19,83,2,NULL),(1109,20,83,2,NULL),(1110,21,83,2,NULL),(1111,22,83,2,NULL),(1112,14,28,2,NULL),(1113,15,28,2,NULL),(1114,16,28,2,NULL),(1115,17,28,2,NULL),(1116,18,28,2,NULL),(1117,19,28,2,NULL),(1118,20,28,2,NULL),(1119,21,28,2,NULL),(1120,22,28,2,NULL),(1121,14,80,2,NULL),(1122,15,80,2,NULL),(1123,16,80,2,NULL),(1124,17,80,2,NULL),(1125,18,80,2,NULL),(1126,19,80,2,NULL),(1127,20,80,2,NULL),(1128,21,80,2,NULL),(1129,22,80,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.apostek.apps.pocketbingo.AdContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.BATTERY_STATS'),(43,'android.permission.BIND_WALLPAPER'),(29,'android.permission.CAMERA'),(33,'android.permission.CHANGE_NETWORK_STATE'),(32,'android.permission.DISABLE_KEYGUARD'),(16,'android.permission.FLASHLIGHT'),(37,'android.permission.GET_ACCOUNTS'),(41,'android.permission.GET_TASKS'),(10,'android.permission.INTERNET'),(27,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(28,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(30,'android.permission.SET_PREFERRED_APPLICATIONS'),(35,'android.permission.SET_WALLPAPER'),(13,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(20,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(6,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(42,'com.android.vending.BILLING'),(25,'com.fede.launcher.permission.READ_SETTINGS'),(38,'com.google.android.c2dm.permission.RECEIVE'),(40,'com.google.android.c2dm.permission.SEND'),(39,'com.google.android.sdk.permission.RECEIVE'),(5,'com.htc.launcher.permission.READ_SETTINGS'),(19,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(21,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(2,'com.motorola.dlauncher.permission.READ_SETTINGS'),(22,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(18,'com.motorola.launcher.permission.READ_SETTINGS'),(34,'hr.interactive.adele.adkins.videos.permission.C2D_MESSAGE'),(36,'hr.interactive.sdk.permission.C2D_MESSAGE'),(26,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (34,'s'),(36,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,142,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'http://market.android.com/details?id=com.antonio.ani.plus.activity',NULL,NULL,NULL),(4,NULL,NULL,'http://market.android.com/details?id=org.tonee.motorbikes',NULL,NULL,NULL),(5,NULL,NULL,'http://market.android.com/details?id=com.antonio.futurecars',NULL,NULL,NULL),(6,NULL,NULL,'http://market.android.com/details?id=com.antonio.bodydots',NULL,NULL,NULL),(7,NULL,NULL,'http://market.android.com/details?id=com.antonio.messages.plus.widget',NULL,NULL,NULL),(8,NULL,NULL,'http://market.android.com/details?id=org.tonee.contact.widget',NULL,NULL,NULL),(9,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.home.plus',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pub:\"Antonio%20Tonev\"',NULL,NULL,NULL),(11,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.media.plus',NULL,NULL,NULL),(12,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.organize.plus',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/details?id=com.antonio.notes.plus',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/details?id=com.antonio.tattoo',NULL,NULL,NULL),(15,NULL,NULL,'http://market.android.com/details?id=com.antonio.fruits.plus',NULL,NULL,NULL),(16,NULL,NULL,'http://market.android.com/details?id=com.antonio.browser2.plus.widget',NULL,NULL,NULL),(17,NULL,NULL,'http://market.android.com/details?id=com.antonio.fashion',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/details?id=com.antonio.funny',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/details?id=org.tonee.tuningcars',NULL,NULL,NULL),(20,NULL,NULL,'http://market.android.com/details?id=com.antonio.home',NULL,NULL,NULL),(21,NULL,NULL,'http://market.android.com/details?id=com.antonio.media2.plus.widget',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=org.tonee.cuteanimals',NULL,NULL,NULL),(23,NULL,NULL,'http://market.android.com/details?id=com.antonio.smiley.plus',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/details?id=org.tonee.monster.widgets',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=org.tonee.fly.widgets',NULL,NULL,NULL),(26,NULL,NULL,'http://market.android.com/details?id=org.tonee.clock',NULL,NULL,NULL),(27,NULL,NULL,'http://market.android.com/details?id=com.antonio.wardrobe.apps',NULL,NULL,NULL),(28,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(29,NULL,NULL,'http://www.tonee.org',NULL,NULL,NULL),(30,NULL,NULL,'http://m.facebook.com/Tonee.org',NULL,NULL,NULL),(31,NULL,NULL,'http://mobile.twitter.com/toneff',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(33,NULL,NULL,'http://www.youtube.com/watch?v=jFb7vlXlq20',NULL,NULL,NULL),(34,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(35,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,17,28),(2,29,32),(3,32,34),(4,40,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,2),(7,1,5),(8,2,3),(9,1,6),(10,2,5),(11,1,7),(12,2,6),(13,1,8),(14,2,7),(15,1,9),(16,2,8),(17,1,10),(18,2,9),(19,1,11),(20,2,10),(21,1,12),(22,2,11),(23,1,13),(24,2,14),(25,1,14),(26,2,15),(27,1,15),(28,2,17),(29,1,17),(30,2,19),(31,1,16),(32,2,18),(33,1,18),(34,2,21),(35,2,20),(36,2,22),(37,3,1),(38,3,2),(39,3,3),(40,3,4),(41,3,5),(42,3,6),(43,3,7),(44,3,8),(45,3,9),(46,3,10),(47,3,11),(48,3,12),(49,3,13),(50,3,14),(51,3,15),(52,3,17),(53,3,19),(54,3,18),(55,3,21),(56,3,23),(57,3,22),(58,3,25),(59,3,24),(60,3,26),(61,4,1),(62,4,2),(63,4,3),(64,4,4),(65,4,5),(66,4,6),(67,4,7),(68,4,8),(69,4,9),(70,4,10),(71,4,11),(72,4,12),(73,4,13),(74,4,14),(75,5,1),(76,4,15),(77,6,1),(78,5,2),(79,4,17),(80,6,2),(81,4,19),(82,5,3),(83,4,18),(84,6,3),(85,5,4),(86,4,21),(87,6,4),(88,5,5),(89,4,20),(90,6,5),(91,5,6),(92,4,23),(93,5,7),(94,6,6),(95,4,22),(96,5,8),(97,6,7),(98,4,25),(99,6,8),(100,5,9),(101,4,24),(102,5,10),(103,6,9),(104,4,27),(105,6,10),(106,5,11),(107,4,26),(108,5,12),(109,6,11),(110,4,29),(111,5,13),(112,6,12),(113,4,28),(114,5,14),(115,6,13),(116,4,31),(117,6,14),(118,5,15),(119,4,30),(120,6,15),(121,5,17),(122,4,32),(123,5,19),(124,6,17),(125,4,33),(126,6,19),(127,5,18),(128,5,21),(129,6,18),(130,6,21),(131,5,23),(132,5,22),(133,6,23),(134,6,22),(135,5,25),(136,5,27),(137,6,25),(138,6,24),(139,5,26),(140,5,34),(141,6,26),(142,5,35),(143,6,29),(144,5,33),(145,5,38),(146,5,39),(147,5,36),(148,5,37),(149,7,1),(150,7,2),(151,7,3),(152,7,4),(153,7,5),(154,7,6),(155,7,7),(156,7,42),(157,7,9),(158,7,10),(159,7,41),(160,7,11),(161,7,12),(162,7,13),(163,7,14),(164,7,15),(165,7,17),(166,7,19),(167,7,18),(168,7,21),(169,7,20),(170,7,22),(171,7,25),(172,7,26);
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

-- Dump completed on 2015-10-12  3:31:13
