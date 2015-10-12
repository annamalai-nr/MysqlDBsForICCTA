-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_721
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(23,'android.appwidget.action.APPWIDGET_UPDATE'),(24,'android.intent.action.ACTION_POWER_CONNECTED'),(4,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CAMERA_BUTTON'),(38,'android.intent.action.CHOOSER'),(37,'android.intent.action.DIAL'),(32,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(29,'android.intent.action.PACKAGE_ADDED'),(30,'android.intent.action.PACKAGE_REMOVED'),(34,'android.intent.action.SCREEN_OFF'),(35,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.SEARCH_LONG_PRESS'),(36,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(33,'android.media.action.IMAGE_CAPTURE'),(13,'android.service.wallpaper.WallpaperService'),(14,'com.airpush.android.PushServiceStart16437'),(7,'com.airpush.android.PushServiceStart55413'),(3,'com.airpush.android.PushServiceStart56632'),(31,'com.amazon.inapp.purchasing.NOTIFY'),(40,'com.android.launcher.action.INSTALL_SHORTCUT'),(39,'com.android.music.musicservicecommand'),(22,'com.android.vending.INSTALL_REFERRER'),(15,'com.android.vending.billing.IN_APP_NOTIFY'),(16,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(17,'com.android.vending.billing.RESPONSE_CODE'),(8,'com.applovin.sdk.AppLovinService'),(2,'com.jiubang.goscreenlock.theme'),(9,'com.senddroid.AdServicecom.andhat.FunnyCamera'),(10,'com.senddroid.AdServiceorg.game.TableTennisG'),(19,'com.tremorvideo.sdk.android.videoad.Playvideo'),(21,'com.xtify.android.sdk.IMainService'),(28,'com.xtify.android.sdk.NOTIFICATION_CLEARED'),(27,'com.xtify.android.sdk.NOTIFICATION_CLICKED'),(25,'com.xtify.android.sdk.SEND_SETTINGS'),(26,'com.xtify.android.sdk.SHOW_NOTIFICATION'),(18,'goldenshorestechnologies.brightestflashlight.free.flurry.intent'),(20,'org.OpenUDID.GETUDID');
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
INSERT INTO `Applications` VALUES (1,'com.planktond.guesslogo',1),(2,'com.freeapps.iphone4.fire.skull',1),(3,'com.andhat.FunnyCamera',27),(4,'org.game.TableTennisG',3),(5,'com.banana.spycameralite',1887),(6,'goldenshorestechnologies.brightestflashlight.free',16),(7,'com.apostek.SlotMachine',73);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(5,'android.intent.category.DEFAULT'),(6,'android.intent.category.EMBED'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(8,'com.xtify.android.sdk.IMainService'),(7,'com.xtify.android.sdk.IMainService.V1050');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.planktond.guesslogo.SplashActivity'),(2,1,'com.planktond.guesslogo.StartActivity'),(3,1,'com.planktond.guesslogo.EndGameActivity'),(4,1,'com.planktond.guesslogo.GuessActivity'),(5,1,'com.google.ads.AdActivity'),(6,1,'com.plankton.device.android.service.AndroidMDKService'),(7,2,'com.freeapps.iphone4.fire.skull.GOLockerInstallDialog'),(8,2,'com.airpush.android.PushAds'),(9,2,'com.freeapps.iphone4.fire.skull.srv'),(10,2,'com.freeapps.iphone4.fire.skull.GoDownloadServiceervice'),(11,2,'com.airpush.android.PushService'),(12,2,'com.apperhand.device.android.AndroidSDKProvider'),(13,2,'com.freeapps.iphone4.fire.skull.rec'),(14,2,'com.airpush.android.UserDetailsReceiver'),(15,2,'com.airpush.android.MessageReceiver'),(16,2,'com.airpush.android.DeliveryReceiver'),(17,2,'com.freeapps.iphone4.fire.skull.bReceiver'),(18,2,'com.Leadbolt.AdNotification'),(19,1,'com.planktond.guesslogo.StartActivity$1'),(20,3,'com.andhat.FunnyCamera.WebviewActivity'),(21,3,'com.andhat.FunnyCamera.FunnyCamera'),(22,3,'com.airpush.android.PushAds'),(23,3,'com.airpush.android.PushService'),(24,3,'com.apperhand.device.android.AndroidSDKProvider'),(25,3,'com.applovin.sdk.AppLovinService'),(26,3,'com.senddroid.AdService'),(27,3,'com.airpush.android.UserDetailsReceiver'),(28,3,'com.airpush.android.MessageReceiver'),(29,3,'com.airpush.android.DeliveryReceiver'),(30,3,'com.andhat.FunnyCamera.BootReceiver'),(31,3,'com.Leadbolt.AdNotification'),(32,4,'org.game.TableTennisG.TableTennis'),(33,4,'com.apperhand.device.android.AndroidSDKProvider'),(34,4,'com.senddroid.AdService'),(35,4,'org.game.TableTennisG.BootReceiver'),(36,4,'com.Leadbolt.AdNotification'),(37,5,'com.airpush.android.PushAds'),(38,5,'com.banana.spycameralite.activity.LeadBoltWeb'),(39,5,'com.banana.spycameralite.activity.PrefTabActivity'),(40,5,'com.banana.spycameralite.activity.GalleryActivity'),(41,5,'com.banana.spycameralite.activity.AdDialogActivity'),(42,5,'com.banana.spycameralite.activity.CameraActivity'),(43,5,'com.banana.spycameralite.activity.FullCameraActivity'),(44,5,'com.banana.spycameralite.activity.PrefActivity'),(45,5,'com.google.ads.AdActivity'),(46,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(47,5,'com.millennialmedia.android.VideoPlayer'),(48,5,'com.mobfox.sdk.InAppWebView'),(49,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(50,5,'com.tapjoy.TJCOffersWebView'),(51,5,'com.tapjoy.TapjoyFeaturedAppWebView'),(52,5,'com.tapjoy.TapjoyVideoView'),(53,5,'com.tapjoy.TJCVirtualGoods'),(54,5,'com.tapjoy.DownloadVirtualGood'),(55,5,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(56,5,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(57,5,'com.apperhand.device.android.AndroidSDKProvider'),(58,5,'com.banana.spycameralite.service.CameraLiveService'),(59,5,'service.CameraService'),(60,5,'com.banana.spycameralite.inapp.BillingService'),(61,5,'com.airpush.android.PushService'),(62,5,'com.banana.spycameralite.inapp.BillingReceiver'),(63,5,'com.banana.spycameralite.service.BootReceiver'),(64,5,'com.airpush.android.UserDetailsReceiver'),(65,5,'com.airpush.android.MessageReceiver'),(66,5,'com.airpush.android.DeliveryReceiver'),(67,5,'com.Leadbolt.AdNotification'),(68,6,'goldenshorestechnologies.brightestflashlight.free.BrightestFlashlightMain'),(69,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(70,6,'com.google.ads.AdActivity'),(71,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(72,6,'com.millennialmedia.android.VideoPlayer'),(73,6,'com.flurry.android.CatalogActivity'),(74,6,'com.apperhand.device.android.AndroidSDKProvider'),(75,7,'com.apostek.SlotMachine.PlayGame'),(76,7,'com.apostek.library.ActivityOtherApps'),(77,7,'com.apostek.SlotMachine.Info'),(78,7,'com.apostek.SlotMachine.Settings'),(79,7,'com.apostek.SlotMachine.SuperSpinner'),(80,7,'com.apostek.SlotMachine.Shop'),(81,7,'com.apostek.SlotMachine.LeaderboardView'),(82,7,'com.apostek.SlotMachine.PayTable'),(83,7,'com.apostek.SlotMachine.YourRecord'),(84,7,'com.apostek.SlotMachine.LeaderBoardPopUp'),(85,7,'com.apostek.SlotMachine.Help'),(86,7,'com.apostek.SlotMachine.HorseRunnerSelection'),(87,7,'com.apostek.SlotMachine.HorseRunnerGame'),(88,7,'com.apostek.SlotMachine.XfactorGameScreen'),(89,7,'com.apostek.SlotMachine.VPGameScreen'),(90,7,'com.apostek.SlotMachine.VPSplashActivity'),(91,7,'com.apostek.SlotMachine.ShareToFacebookFriends'),(92,7,'com.apostek.SlotMachine.ShareOnFacebook'),(93,7,'com.apostek.SlotMachine.InAppActivity'),(94,7,'com.apostek.SlotMachine.BonusGameActivity'),(95,7,'com.sponsorpay.sdk.android.publisher.OfferWallActivity'),(96,7,'com.apostek.SlotMachine.MiniGamesActivity'),(97,7,'com.apostek.SlotMachine.TutorialActivity'),(98,7,'com.apostek.SlotMachine.LuckyPot'),(99,7,'com.openfeint.internal.ui.IntroFlow'),(100,7,'com.openfeint.api.ui.Dashboard'),(101,7,'com.openfeint.internal.ui.Settings'),(102,7,'com.openfeint.internal.ui.NativeBrowser'),(103,7,'com.w3i.offerwall.ui.ComplexVideoOfferActivity'),(104,7,'com.w3i.offerwall.ui.OfferwallActivity'),(105,7,'com.w3i.offerwall.ui.OfferDescriptionActivity'),(106,7,'com.w3i.offerwall.ui.HistoryActivity'),(107,7,'com.radiumone.Publisher'),(108,7,'com.mdotm.android.ads.MdotmLandingPage'),(109,7,'com.google.ads.AdActivity'),(110,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(111,7,'com.millennialmedia.android.VideoPlayer'),(112,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(113,7,'com.greystripe.android.sdk.AdView'),(114,7,'com.mobfox.sdk.InAppWebView'),(115,7,'com.tremorvideo.sdk.android.videoad.Playvideo'),(116,7,'com.sponsorpay.sdk.android.publisher.InterstitialActivity'),(117,7,'com.tapjoy.TJCOffersWebView'),(118,7,'com.tapjoy.TapjoyFeaturedAppWebView'),(119,7,'com.tapjoy.TapjoyVideoView'),(120,7,'com.tapjoy.TJCVirtualGoods'),(121,7,'com.tapjoy.DownloadVirtualGood'),(122,7,'com.zong.android.engine.ui.ZongUI'),(123,7,'com.xtify.android.sdk.SettingsActivity'),(124,7,'com.xtify.android.sdk.NotificationDetailsActivity'),(125,7,'com.xtify.android.sdk.NotificationSettingsActivity'),(126,7,'com.apostek.pnotification.NotificationInbox'),(127,7,'com.apostek.utils.NotificationService'),(128,7,'org.OpenUDID.OpenUDID_service'),(129,7,'com.apostek.utils.PollingService'),(130,7,'com.apperhand.device.android.AndroidSDKProvider'),(131,7,'com.zong.android.engine.process.ZongServiceProcess'),(132,7,'com.apostek.SlotMachine.SlotWallPaper1'),(133,7,'com.apostek.SlotMachine.SlotWallPaper3'),(134,7,'com.xtify.android.sdk.MainService'),(135,7,'com.apostek.inapp.BillingService'),(136,7,'com.w3i.advertiser.ReferralReceiver'),(137,7,'com.apostek.common.ApostekReceiver'),(138,7,'com.apostek.SlotMachine.SlotWidget'),(139,7,'com.xtify.android.sdk.MainReceiver'),(140,7,'com.apostek.pnotification.NotificationInboxReceiver'),(141,7,'com.apostek.SlotMachine.XtifyBlocker'),(142,7,'com.apostek.inapp.BillingReceiver'),(143,7,'com.amazon.inapp.purchasing.ResponseReceiver'),(144,7,'com.greystripe.android.sdk.AdContentProvider'),(145,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(146,6,'com.mobclix.android.sdk.MobclixCreative$Action'),(147,6,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(148,6,'com.apperhand.device.android.a.a'),(149,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(150,6,'com.millennialmedia.android.MillennialMediaView'),(151,6,'com.apperhand.device.android.a.e'),(152,6,'goldenshorestechnologies.brightestflashlight.free.RatingRequestUI$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'APPLICATION_ID'),(2,6,'M_SERVER_URL'),(3,5,'action'),(4,6,'DEVELOPER_ID'),(5,5,'com.google.ads.AdOpener'),(6,6,'M_INSTALLATION_URL'),(7,5,'params'),(8,71,'videoCompletedOnce'),(9,71,'isCachedAd'),(10,70,'overlayOrientation'),(11,68,'goldenshorestechnologies.brightestflashlight.free.data'),(12,70,'shouldResizeOverlay'),(13,68,'goldenshorestechnologies.brightestflashlight.free.type'),(14,71,'adName'),(15,70,'overlayTitle'),(16,70,'canAccelerate'),(17,72,'o'),(18,73,'APPLICATION_ID'),(19,68,'imageUri'),(20,71,'videoCompleted'),(21,73,'M_SERVER_URL'),(22,71,'lastVideoPosition'),(23,70,'overlayTransition'),(24,70,'cachedAdView'),(25,73,'FIRST_RUN'),(26,70,'shouldShowBottomBar'),(27,71,'logSet'),(28,73,'permanent'),(29,71,'videoPosition'),(30,71,'cached'),(31,73,'SERVICE_MODE'),(32,70,'shouldShowTitlebar'),(33,70,'shouldEnableBottomBar'),(34,73,'DEVELOPER_ID'),(35,70,'transitionTime'),(36,69,'com.google.ads.AdOpener'),(37,71,'videoAd'),(38,69,'params'),(39,71,'shouldShowBottomBar'),(40,73,'USER_AGENT'),(41,69,'action'),(42,72,'u'),(43,70,'shouldMakeOverlayTransparent');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,20,'a',1,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'s',1,NULL,NULL),(23,24,'s',0,NULL,NULL),(24,25,'s',1,NULL,NULL),(25,26,'s',1,NULL,NULL),(26,27,'r',0,NULL,NULL),(27,28,'r',0,NULL,NULL),(28,29,'r',0,NULL,NULL),(29,30,'r',1,NULL,NULL),(30,31,'r',0,NULL,NULL),(31,32,'a',1,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,34,'s',1,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'r',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'a',1,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'a',1,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'s',0,NULL,NULL),(57,58,'s',1,41,NULL),(58,59,'s',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,61,'s',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',0,NULL,NULL),(64,65,'r',0,NULL,NULL),(65,66,'r',0,NULL,NULL),(66,67,'r',0,NULL,NULL),(67,68,'a',1,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',1,NULL,NULL),(73,74,'s',0,NULL,NULL),(74,75,'a',1,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,84,'a',0,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,90,'a',0,NULL,NULL),(90,91,'a',0,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,93,'a',0,NULL,NULL),(93,94,'a',0,NULL,NULL),(94,95,'a',0,NULL,NULL),(95,96,'a',0,NULL,NULL),(96,97,'a',0,NULL,NULL),(97,98,'a',0,NULL,NULL),(98,99,'a',0,NULL,NULL),(99,100,'a',0,NULL,NULL),(100,101,'a',0,NULL,NULL),(101,102,'a',0,NULL,NULL),(102,103,'a',0,NULL,NULL),(103,104,'a',0,NULL,NULL),(104,105,'a',0,NULL,NULL),(105,106,'a',0,NULL,NULL),(106,107,'a',0,NULL,NULL),(107,108,'a',1,NULL,NULL),(108,109,'a',0,NULL,NULL),(109,110,'a',0,NULL,NULL),(110,111,'a',0,NULL,NULL),(111,112,'a',0,NULL,NULL),(112,113,'a',0,NULL,NULL),(113,114,'a',0,NULL,NULL),(114,115,'a',1,NULL,NULL),(115,116,'a',0,NULL,NULL),(116,117,'a',0,NULL,NULL),(117,118,'a',0,NULL,NULL),(118,119,'a',0,NULL,NULL),(119,120,'a',0,NULL,NULL),(120,121,'a',0,NULL,NULL),(121,122,'a',0,NULL,NULL),(122,123,'a',0,NULL,NULL),(123,124,'a',0,NULL,NULL),(124,125,'a',0,NULL,NULL),(125,126,'a',0,NULL,NULL),(126,127,'s',0,NULL,NULL),(127,128,'s',1,NULL,NULL),(128,129,'s',0,NULL,NULL),(129,130,'s',0,NULL,NULL),(130,131,'s',0,NULL,NULL),(131,132,'s',1,41,NULL),(132,133,'s',1,41,NULL),(133,134,'s',1,NULL,NULL),(134,135,'s',0,NULL,NULL),(135,136,'r',1,NULL,NULL),(136,137,'r',1,NULL,NULL),(137,138,'r',1,NULL,NULL),(138,139,'r',1,NULL,NULL),(139,140,'r',1,NULL,NULL),(140,141,'r',1,NULL,NULL),(141,142,'r',1,NULL,NULL),(142,143,'r',1,NULL,NULL),(143,144,'p',0,NULL,NULL),(144,147,'r',1,NULL,NULL),(145,149,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,2),(4,4,67),(5,4,71),(6,5,68),(7,6,71),(8,7,68),(9,8,71),(10,8,67),(11,9,71),(12,10,71),(13,11,71),(14,11,67),(15,12,67),(16,13,73),(17,14,73),(18,15,67),(19,15,71),(20,16,68),(21,17,71),(22,17,67),(23,18,73),(24,19,73),(25,20,73),(26,21,71),(27,21,67),(28,22,68),(29,23,73),(30,24,69),(31,25,71),(32,26,68),(33,27,67),(34,27,71),(35,28,71),(36,29,68),(37,30,67),(38,31,67),(39,31,71),(40,32,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(2,1,'<com.planktond.guesslogo.SplashActivity: void initMDK()>',26,'s',NULL),(3,19,'<com.planktond.guesslogo.StartActivity$1: void onClick(android.view.View)>',9,'a',NULL),(4,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',246,'a',NULL),(5,145,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(6,146,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(7,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',NULL),(8,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',225,'a',NULL),(9,146,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(10,146,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(11,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',237,'a',NULL),(12,74,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(13,148,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(14,148,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(15,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',214,'a',NULL),(16,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',40,'a',NULL),(17,150,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(18,151,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(19,151,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(20,148,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(21,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',193,'a',NULL),(22,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',31,'a',NULL),(23,151,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(24,70,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(25,146,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(26,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(27,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',184,'a',NULL),(28,146,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(29,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',49,'a',NULL),(30,152,'<goldenshorestechnologies.brightestflashlight.free.RatingRequestUI$1: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(31,72,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',159,'a',NULL),(32,69,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',56,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,2,6),(3,3,5),(4,6,6),(5,7,6),(6,8,6),(7,9,6),(8,10,6),(9,12,32),(10,13,33),(11,15,6),(12,16,6),(13,18,6),(14,21,37),(15,22,38),(16,23,38),(17,24,38),(18,25,38),(19,26,38),(20,27,38),(21,28,38),(22,29,38),(23,30,39),(24,31,40),(25,32,6),(26,34,32),(27,35,33),(28,36,5),(29,37,6),(30,38,5),(31,42,38),(32,43,38),(33,44,38),(34,45,38),(35,46,38),(36,47,38),(37,48,38),(38,49,38),(39,50,6),(40,51,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,4),(2,2,4),(3,3,4),(4,36,4),(5,37,4),(6,38,4);
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
INSERT INTO `IClasses` VALUES (1,4,'com/plankton/device/android/service/AndroidMDKService'),(2,5,'com/planktond/guesslogo/GuessActivity'),(3,14,'com/millennialmedia/android/MMAdViewOverlayActivity'),(4,17,'com/mobclix/android/sdk/MobclixBrowserActivity'),(5,19,'com/apperhand/device/android/AndroidSDKProvider'),(6,20,'com/apperhand/device/android/AndroidSDKProvider'),(7,39,'com/mobclix/android/sdk/MobclixBrowserActivity'),(8,40,'com/millennialmedia/android/MMAdViewOverlayActivity'),(9,41,'com/mobclix/android/sdk/MobclixBrowserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,6,4),(5,7,5),(6,8,6),(7,9,7),(8,10,8),(9,14,9),(10,15,10),(11,16,11),(12,18,12),(13,21,15),(14,32,19),(15,36,21),(16,37,22),(17,38,23),(18,40,25),(19,50,26),(20,51,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'M_SERVER_URL'),(2,4,'DEVELOPER_ID'),(3,4,'APPLICATION_ID'),(4,4,'M_INSTALLATION_URL'),(5,13,'output'),(6,13,'android.intent.extra.videoQuality'),(7,14,'overlayOrientation'),(8,14,'cachedAdView'),(9,19,'M_SERVER_URL'),(10,19,'USER_AGENT'),(11,19,'SERVICE_MODE'),(12,19,'FIRST_RUN'),(13,19,'DEVELOPER_ID'),(14,19,'(.*)'),(15,19,'APPLICATION_ID'),(16,20,'M_SERVER_URL'),(17,20,'USER_AGENT'),(18,20,'SERVICE_MODE'),(19,20,'FIRST_RUN'),(20,20,'DEVELOPER_ID'),(21,20,'APPLICATION_ID'),(22,22,'android.intent.extra.INTENT'),(23,23,'android.intent.extra.INTENT'),(24,24,'android.intent.extra.TITLE'),(25,24,'android.intent.extra.INTENT'),(26,25,'android.intent.extra.INTENT'),(27,26,'android.intent.extra.TITLE'),(28,26,'android.intent.extra.INTENT'),(29,27,'android.intent.extra.INTENT'),(30,28,'android.intent.extra.TITLE'),(31,28,'android.intent.extra.INTENT'),(32,29,'android.intent.extra.TITLE'),(33,29,'android.intent.extra.INTENT'),(34,30,'command'),(35,31,'android.intent.extra.shortcut.NAME'),(36,31,'android.intent.extra.shortcut.ICON'),(37,31,'android.intent.extra.shortcut.INTENT'),(38,35,'output'),(39,35,'android.intent.extra.videoQuality'),(40,40,'overlayOrientation'),(41,40,'cachedAdView'),(42,42,'android.intent.extra.INTENT'),(43,43,'android.intent.extra.INTENT'),(44,44,'android.intent.extra.TITLE'),(45,44,'android.intent.extra.INTENT'),(46,45,'android.intent.extra.INTENT'),(47,46,'android.intent.extra.TITLE'),(48,46,'android.intent.extra.INTENT'),(49,47,'android.intent.extra.INTENT'),(50,48,'android.intent.extra.TITLE'),(51,48,'android.intent.extra.INTENT'),(52,49,'android.intent.extra.TITLE'),(53,49,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,1),(7,7,1),(8,8,7),(9,9,8),(10,10,9),(11,11,4),(12,12,4),(13,13,4),(14,14,1),(15,15,10),(16,16,4),(17,17,4),(18,18,1),(19,18,11),(20,18,12),(21,19,13),(22,20,14),(23,21,15),(24,21,17),(25,21,16),(26,22,4),(27,23,1),(28,24,18),(29,25,1),(30,27,19),(31,28,20),(32,29,13),(33,30,13),(34,31,21),(35,32,22),(36,33,22),(37,34,23),(38,35,4),(39,35,25),(40,35,24),(41,36,26),(42,36,28),(43,36,27),(44,37,29),(45,37,30),(46,38,26),(47,39,26),(48,40,17),(49,40,16),(50,40,15),(51,41,31),(52,42,35),(53,42,36),(54,42,34),(55,43,35),(56,43,34),(57,44,34),(58,44,35);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,5,3),(5,6,1),(6,7,5),(7,11,3),(8,13,3),(9,14,1),(10,17,3),(11,18,5),(12,18,1),(13,22,3),(14,23,1),(15,24,5),(16,25,1),(17,26,4),(18,27,6),(19,31,8),(20,31,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,36,'notif','notification.xtify.com',NULL,'/80e94987-39a8-4b56-8018-5c62c31373e3(.*)',NULL,NULL),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'notif','notification.xtify.com',NULL,'/80e94987-39a8-4b56-8018-5c62c31373e3(.*)',NULL,NULL),(4,39,'notif','notification.xtify.com',NULL,'/80e94987-39a8-4b56-8018-5c62c31373e3(.*)',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'(.*)','(.*)'),(2,12,'image','*'),(3,34,'image','*'),(4,38,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,4,'com.planktond.guesslogo'),(2,5,'com.planktond.guesslogo'),(3,14,'goldenshorestechnologies.brightestflashlight.free'),(4,17,'goldenshorestechnologies.brightestflashlight.free'),(5,19,'goldenshorestechnologies.brightestflashlight.free'),(6,20,'goldenshorestechnologies.brightestflashlight.free'),(7,39,'goldenshorestechnologies.brightestflashlight.free'),(8,40,'goldenshorestechnologies.brightestflashlight.free'),(9,41,'goldenshorestechnologies.brightestflashlight.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,7,0),(4,11,0),(5,17,0),(6,19,0),(7,20,0),(8,22,0),(9,24,0),(10,25,0),(11,29,0),(12,29,0),(13,29,0),(14,31,0),(15,33,0),(16,34,0),(17,34,0),(18,41,0),(19,57,0),(20,60,0),(21,61,0),(22,62,0),(23,67,0),(24,72,0),(25,74,0),(26,107,0),(27,114,0),(28,127,0),(29,131,0),(30,132,0),(31,133,0),(32,135,0),(33,136,0),(34,137,0),(35,138,0),(36,138,0),(37,138,0),(38,139,0),(39,140,0),(40,141,0),(41,142,0),(42,144,0),(43,145,0),(44,145,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,0,0),(5,3,0,0),(6,4,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,7,1,0),(12,7,1,0),(13,7,1,0),(14,8,0,0),(15,9,1,0),(16,9,1,0),(17,10,0,0),(18,11,1,0),(19,12,0,0),(20,12,0,0),(21,15,1,0),(22,16,1,0),(23,16,1,0),(24,16,1,0),(25,16,1,0),(26,16,1,0),(27,16,1,0),(28,16,1,0),(29,16,1,0),(30,17,1,0),(31,19,1,0),(32,21,1,0),(33,22,1,0),(34,22,1,0),(35,22,1,0),(36,24,1,0),(37,24,1,0),(38,24,1,0),(39,25,0,0),(40,27,0,0),(41,28,0,0),(42,29,1,0),(43,29,1,0),(44,29,1,0),(45,29,1,0),(46,29,1,0),(47,29,1,0),(48,29,1,0),(49,29,1,0),(50,30,1,0),(51,31,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.apostek.SlotMachine');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(40,'android.permission.ACCESS_SURFACE_FLINGER'),(6,'android.permission.ACCESS_WIFI_STATE'),(41,'android.permission.BIND_WALLPAPER'),(38,'android.permission.CALL_PHONE'),(36,'android.permission.CAMERA'),(43,'android.permission.FLASHLIGHT'),(35,'android.permission.GET_ACCOUNTS'),(44,'android.permission.GET_TASKS'),(18,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(37,'android.permission.READ_EXTERNAL_STORAGE'),(3,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(28,'android.permission.RECEIVE_BOOT_COMPLETED'),(42,'android.permission.STATUS_BAR'),(34,'android.permission.VIBRATE'),(30,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(20,'com.android.launcher.permission.READ_SETTINGS'),(17,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.android.launcher.permission.WRITE_SETTINGS'),(39,'com.android.vending.BILLING'),(32,'com.fede.launcher.permission.READ_SETTINGS'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(25,'com.lge.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.lge.launcher.permission.WRITE_SETTINGS'),(2,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(19,'com.motorola.dlauncher.permission.UNINSTALL_SHORTCUT'),(14,'com.motorola.dlauncher.permission.WRITE_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.launcher.permission.READ_SETTINGS'),(8,'com.motorola.launcher.permission.UNINSTALL_SHORTCUT'),(4,'com.motorola.launcher.permission.WRITE_SETTINGS'),(33,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (15,'n'),(17,'n');
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
INSERT INTO `Providers` VALUES (1,143,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=goldenshorestechnologies.brightestflashlight.free',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,13,13),(2,14,14),(3,18,16),(4,18,17),(5,20,18),(6,23,20),(7,26,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,2,34),(27,2,1),(28,2,32),(29,2,2),(30,2,33),(31,2,5),(32,2,6),(33,2,9),(34,2,10),(35,2,11),(36,2,12),(37,2,13),(38,2,15),(39,2,17),(40,2,16),(41,2,18),(42,2,20),(43,2,22),(44,2,24),(45,2,27),(46,2,26),(47,2,29),(48,2,28),(49,2,31),(50,2,30),(51,3,1),(52,3,2),(53,3,5),(54,3,6),(55,3,7),(56,3,9),(57,3,10),(58,3,11),(59,3,12),(60,3,13),(61,3,15),(62,3,17),(63,3,16),(64,3,18),(65,3,20),(66,3,22),(67,3,24),(68,3,27),(69,3,26),(70,3,29),(71,3,28),(72,3,31),(73,3,30),(74,3,35),(75,3,32),(76,3,33),(77,3,36),(78,4,1),(79,4,2),(80,4,5),(81,4,6),(82,4,9),(83,4,10),(84,4,11),(85,4,12),(86,4,13),(87,4,15),(88,4,17),(89,4,16),(90,4,18),(91,4,20),(92,4,22),(93,4,24),(94,4,27),(95,4,29),(96,4,28),(97,4,31),(98,4,30),(99,4,34),(100,4,32),(101,4,33),(102,5,34),(103,5,35),(104,5,38),(105,5,39),(106,5,36),(107,5,6),(108,5,37),(109,5,9),(110,5,40),(111,5,11),(112,5,13),(113,5,15),(114,5,17),(115,5,18),(116,5,20),(117,5,24),(118,5,27),(119,5,26),(120,5,29),(121,5,28),(122,5,31),(123,6,1),(124,6,32),(125,6,2),(126,6,33),(127,6,5),(128,6,36),(129,6,6),(130,6,42),(131,6,43),(132,6,9),(133,6,10),(134,6,12),(135,6,13),(136,6,15),(137,6,17),(138,6,16),(139,6,18),(140,6,20),(141,6,22),(142,6,27),(143,6,26),(144,6,29),(145,6,30),(146,7,34),(147,7,1),(148,7,32),(149,7,2),(150,7,33),(151,7,39),(152,7,5),(153,7,6),(154,7,9),(155,7,10),(156,7,12),(157,7,13),(158,7,44),(159,7,15),(160,7,17),(161,7,16),(162,7,18),(163,7,20),(164,7,22),(165,7,27),(166,7,26),(167,7,29),(168,7,30);
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

-- Dump completed on 2015-10-09  0:40:58
