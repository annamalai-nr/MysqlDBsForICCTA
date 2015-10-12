-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_673
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
INSERT INTO `ActionStrings` VALUES (28,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(29,'android.intent.action.CHOOSER'),(19,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(26,'android.intent.action.PICK'),(11,'android.intent.action.VIEW'),(4,'android.service.wallpaper.WallpaperService'),(21,'com.airpush.android.PushServiceStart24831'),(3,'com.airpush.android.PushServiceStart27158'),(10,'com.airpush.android.PushServiceStart38967'),(7,'com.airpush.android.PushServiceStart52206'),(6,'com.airpush.android.PushServiceStart58925'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(14,'com.android.vending.INSTALL_REFERRER'),(22,'com.android.vending.billing.IN_APP_NOTIFY'),(23,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(24,'com.android.vending.billing.RESPONSE_CODE'),(17,'com.apperhand.action.show.eula'),(8,'com.applovin.sdk.AppLovinService'),(13,'com.coolphotoframes.instaframe'),(15,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTRATION'),(25,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(12,'com.inoxpush.adnetwork.PushServiceStart55555'),(27,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(5,'com.senddroid.AdServicecom.triangularapps.ledlight'),(9,'com.senddroid.AdServiceorg.drhu.lightwaves'),(20,'myapp.chefcook.lite');
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
INSERT INTO `Applications` VALUES (1,'com.linuxmobile.android.nzoric.celebrity',11),(2,'com.fungamesstudio.angrybirds',1),(3,'com.triangularapps.ledlight',1),(4,'org.drhu.lightwaves',20),(5,'com.nocito.nocitoliverihanna',1),(6,'com.coolphotoframes.instaframe',11),(7,'com.oas.chefcookmanialite',27);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.linuxmobile.android.nzoric.celebrity.Splash'),(2,1,'com.linuxmobile.android.nzoric.celebrity.celebrity'),(3,1,'com.apperhand.device.android.EULAActivity'),(4,1,'com.KszcjCPK.cNoctkpK17946.OptinActivity'),(5,1,'com.KszcjCPK.cNoctkpK17946.SmartWallActivity'),(6,1,'com.apperhand.device.android.AndroidSDKProvider'),(7,1,'com.KszcjCPK.cNoctkpK17946.PushService'),(8,1,'com.pad.android.xappad.AdNotification'),(9,1,'com.pad.android.xappad.AdReminderNotification'),(10,1,'com.linuxmobile.android.nzoric.celebrity.BootReceiver'),(11,1,'com.KszcjCPK.cNoctkpK17946.BootReceiver'),(12,2,'com.fungames.activity.SplashScreen'),(13,2,'com.fungames.activity.WebViewActivity'),(14,2,'com.airpush.android.PushAds'),(15,2,'com.airpush.android.PushService'),(16,2,'com.apperhand.device.android.AndroidSDKProvider'),(17,2,'com.airpush.android.UserDetailsReceiver'),(18,2,'com.airpush.android.MessageReceiver'),(19,2,'com.airpush.android.DeliveryReceiver'),(20,2,'com.fungames.activity.BootReceiver'),(21,3,'com.triangularapps.ledlight.AppLauncher'),(22,3,'com.triangularapps.ledlight.LiveWallpaperSettings'),(23,3,'com.airpush.android.PushAds'),(24,3,'com.triangularapps.ledlight.GirlEyeWallpaperService'),(25,3,'com.senddroid.AdService'),(26,3,'com.airpush.android.PushService'),(27,3,'com.apperhand.device.android.AndroidSDKProvider'),(28,3,'com.airpush.android.UserDetailsReceiver'),(29,3,'com.airpush.android.MessageReceiver'),(30,3,'com.airpush.android.DeliveryReceiver'),(31,3,'com.triangularapps.ledlight.BootReceiver'),(32,4,'org.drhu.lightwaves.OurApps'),(33,4,'org.drhu.lightwaves.Setting'),(34,4,'org.drhu.lightwaves.WebviewActivity'),(35,4,'org.drhu.lightwaves.Welcome'),(36,4,'com.maudau.mobile.android.api.activities.MaudauActivity'),(37,4,'com.airpush.android.PushAds'),(38,4,'org.drhu.lightwaves.LightWaves'),(39,4,'com.airpush.android.PushService'),(40,4,'com.apperhand.device.android.AndroidSDKProvider'),(41,4,'com.applovin.sdk.AppLovinService'),(42,4,'com.senddroid.AdService'),(43,4,'com.airpush.android.UserDetailsReceiver'),(44,4,'com.airpush.android.MessageReceiver'),(45,4,'com.airpush.android.DeliveryReceiver'),(46,4,'org.drhu.lightwaves.BootReceiver'),(47,4,'com.Leadbolt.AdNotification'),(48,5,'com.nocito.nocitoliverihanna.TabSettingsActivity'),(49,5,'com.nocito.nocitoliverihanna.LiveWallpaperSettings'),(50,5,'com.airpush.android.PushAds'),(51,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(52,5,'com.nocito.nocitoliverihanna.SampleLiveWallpaperService'),(53,5,'com.apperhand.device.android.AndroidSDKProvider'),(54,5,'com.airpush.android.PushService'),(55,5,'com.airpush.android.UserDetailsReceiver'),(56,5,'com.airpush.android.MessageReceiver'),(57,5,'com.airpush.android.DeliveryReceiver'),(58,5,'com.nocito.nocitoliverihanna.BootReceiver'),(59,6,'com.coolphotoframes.instaframe.LaunchScreen'),(60,6,'com.coolphotoframes.instaframe.FrameScreen'),(61,1,'com.KszcjCPK.cNoctkpK17946.HandleClicks'),(62,6,'com.coolphotoframes.instaframe.RateActivity'),(63,6,'com.coolphotoframes.instaframe.HelpScreen'),(64,6,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(65,6,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(66,6,'com.inox.referrer.SendDataService'),(67,6,'com.inoxpush.adnetwork.PushAdService'),(68,6,'com.inoxpush.downloadticker.DownloadTickerService'),(69,6,'com.apperhand.device.android.AndroidSDKProvider'),(70,1,'com.apperhand.device.android.a.e'),(71,6,'com.applovin.sdk.AppLovinService'),(72,6,'com.senddroid.AdService'),(73,1,'com.pad.android.xappad.AdController$AdIcon'),(74,6,'com.moolah.NotificationService'),(75,6,'com.inox.referrer.Receiver'),(76,6,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(77,6,'com.inoxpush.adnetwork.AdMessageReceiver'),(78,1,'com.apperhand.device.android.a.b'),(79,6,'com.inoxpush.adnetwork.ClickAdReceiver'),(80,6,'com.applovin.sdk.AppLovinNotificationReceiver'),(81,6,'com.applovin.sdk.AppLovinPushReceiver'),(82,1,'com.apperhand.device.android.a.c'),(83,6,'com.coolphotoframes.instaframe.BootReceiver'),(84,6,'com.moolah.MessageReceiver'),(85,7,'com.oas.chefcookmanialite.Initializer'),(86,7,'com.oas.chefcookmanialite.GamePlay'),(87,7,'com.oas.chefcookmanialite.Hintgame'),(88,7,'com.oas.chefcookmanialite.Tutorial'),(89,7,'com.oas.chefcookmanialite.Gameover'),(90,7,'com.oas.chefcookmanialite.MainMenu'),(91,7,'com.oas.chefcookmanialite.Help'),(92,7,'com.oas.chefcookmanialite.SubmitScore'),(93,7,'com.oas.chefcookmanialite.SettingsJava'),(94,7,'com.oas.chefcookmanialite.Masterchefach'),(95,7,'com.oas.chefcookmanialite.AppStore'),(96,7,'com.oas.chefcookmanialite.Replenish'),(97,7,'com.oas.chefcookmanialite.IncreaseStorageInfo'),(98,7,'com.placeplay.ads.implementation.browser.PAAdBrowser'),(99,7,'com.airpush.android.PushAds'),(100,7,'com.flurry.android.CatalogActivity'),(101,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(102,7,'com.google.ads.AdActivity'),(103,7,'com.openfeint.internal.ui.IntroFlow'),(104,7,'com.openfeint.api.ui.Dashboard'),(105,7,'com.openfeint.internal.ui.Settings'),(106,7,'com.openfeint.internal.ui.NativeBrowser'),(107,7,'com.oas.chefcookmanialite.tapjoy.TapjoyFeaturedAppWebView'),(108,7,'com.oas.chefcookmanialite.tapjoy.TJCOffersWebView'),(109,7,'com.oas.chefcookmanialite.tapjoy.TapjoyVideoView'),(110,7,'com.airpush.android.PushService'),(111,7,'com.oas.chefcookmanialite.virtualmart.VMService'),(112,7,'com.apperhand.device.android.AndroidSDKProvider'),(113,7,'com.airpush.android.UserDetailsReceiver'),(114,7,'com.airpush.android.MessageReceiver'),(115,7,'com.airpush.android.DeliveryReceiver'),(116,7,'com.oas.chefcookmanialite.BootReceiver'),(117,7,'com.Leadbolt.AdNotification'),(118,7,'com.oas.chefcookmanialite.virtualmart.VMReceiver'),(119,6,'com.senddroid.SendDroid'),(120,6,'com.pontiflex.mobile.webview.sdk.AdManager'),(121,6,'com.apperhand.device.android.a.d'),(122,6,'com.inoxpush.downloadticker.DownloadTicker'),(123,6,'com.apperhand.device.android.a.b'),(124,6,'com.inox.referrer.StartAd');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'sectionid'),(2,4,'adtype'),(3,9,'remindericon'),(4,9,'alarmtype'),(5,5,'url'),(6,4,'url'),(7,2,'com.KszcjCPK.cNoctkpK17946.APPID'),(8,5,'adtype'),(9,9,'remindertitle'),(10,9,'remindertext'),(11,6,'DEVELOPER_ID'),(12,7,'number'),(13,6,'USER_AGENT'),(14,5,'creativeid'),(15,4,'creativeid'),(16,5,'sms'),(17,4,'sms'),(18,5,'number'),(19,4,'number'),(20,7,'campId'),(21,7,'testMode'),(22,7,'sms'),(23,7,'creativeId'),(24,6,'FIRST_RUN'),(25,7,'header'),(26,6,'APPLICATION_ID'),(27,7,'adtype'),(28,6,'eulaAcceptDetails'),(29,7,'appId'),(30,5,'buttontxt'),(31,4,'buttontxt'),(32,5,'title'),(33,4,'title'),(34,6,'SERVICE_MODE'),(35,7,'APIKEY'),(36,2,'com.KszcjCPK.cNoctkpK17946.APIKEY'),(37,5,'campaignid'),(38,4,'campaignid'),(39,7,'url'),(40,8,'sectionid'),(41,6,'M_SERVER_URL'),(42,68,'DEVELOPER_ID'),(43,61,'link'),(44,66,'adType'),(45,73,'appId'),(46,77,'applovin.sdk.verbose_logging'),(47,69,'applovin.sdk.verbose_logging'),(48,76,'applovin.sdk.verbose_logging'),(49,77,'applovin.sdk.autoupdate_disabled'),(50,69,'applovin.sdk.autoupdate_disabled'),(51,76,'applovin.sdk.autoupdate_disabled'),(52,68,'APPLICATION_ID'),(53,74,'appId'),(54,68,'FIRST_RUN'),(55,66,'type'),(56,79,'notif_sig'),(57,72,'referrer'),(58,68,'USER_AGENT'),(59,77,'applovin.sdk.key'),(60,69,'applovin.sdk.key'),(61,76,'applovin.sdk.key'),(62,75,'appId'),(63,75,'adType'),(64,68,'SERVICE_MODE'),(65,68,'M_SERVER_URL'),(66,75,'marketlink');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,30,NULL),(25,25,'s',1,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,30,NULL),(39,39,'s',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,30,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,67,'s',1,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,69,'s',0,NULL,NULL),(69,71,'s',1,NULL,NULL),(70,72,'s',1,NULL,NULL),(71,74,'s',0,NULL,NULL),(72,75,'r',1,NULL,NULL),(73,76,'r',0,NULL,NULL),(74,77,'r',0,NULL,NULL),(75,79,'r',0,NULL,NULL),(76,80,'r',0,NULL,NULL),(77,81,'r',1,39,NULL),(78,83,'r',1,NULL,NULL),(79,84,'r',0,NULL,NULL),(80,85,'a',1,NULL,NULL),(81,86,'a',0,NULL,NULL),(82,87,'a',0,NULL,NULL),(83,88,'a',0,NULL,NULL),(84,89,'a',0,NULL,NULL),(85,90,'a',0,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,93,'a',0,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',0,NULL,NULL),(91,96,'a',0,NULL,NULL),(92,97,'a',0,NULL,NULL),(93,98,'a',0,NULL,NULL),(94,99,'a',0,NULL,NULL),(95,100,'a',1,NULL,NULL),(96,101,'a',0,NULL,NULL),(97,102,'a',0,NULL,NULL),(98,103,'a',0,NULL,NULL),(99,104,'a',0,NULL,NULL),(100,105,'a',0,NULL,NULL),(101,106,'a',0,NULL,NULL),(102,107,'a',0,NULL,NULL),(103,108,'a',0,NULL,NULL),(104,109,'a',0,NULL,NULL),(105,110,'s',1,NULL,NULL),(106,111,'s',0,NULL,NULL),(107,112,'s',0,NULL,NULL),(108,113,'r',0,NULL,NULL),(109,114,'r',0,NULL,NULL),(110,115,'r',0,NULL,NULL),(111,116,'r',1,NULL,NULL),(112,117,'r',0,NULL,NULL),(113,118,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,6),(3,3,2),(4,4,6),(5,5,2),(6,6,6),(7,7,6),(8,8,2),(9,9,2),(10,10,7),(11,11,6),(12,12,6),(13,13,2),(14,14,2),(15,15,7),(16,16,6),(17,17,59),(18,18,70),(19,19,59),(20,20,74),(21,21,59),(22,22,72),(23,23,68),(24,24,61),(25,25,60),(26,26,59),(27,27,60),(28,28,75),(29,29,70),(30,30,68),(31,31,68),(32,32,59),(33,32,60),(34,33,60),(35,34,60),(36,35,68),(37,36,73),(38,37,59),(39,38,68),(40,39,75),(41,40,79),(42,41,78),(43,42,60),(44,43,68),(45,44,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<com.KszcjCPK.cNoctkpK17946.HandleClicks: void sendSms()>',17,'a',NULL),(2,70,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(3,73,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',93,'p',NULL),(4,78,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,6,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(6,82,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(7,78,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(8,2,'<com.linuxmobile.android.nzoric.celebrity.celebrity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(9,73,'<com.pad.android.xappad.AdController$AdIcon: java.lang.Void doInBackground(java.lang.Void[])>',62,'r',NULL),(10,61,'<com.KszcjCPK.cNoctkpK17946.HandleClicks: void displayUrl()>',11,'a',NULL),(11,78,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(12,70,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(13,6,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(14,2,'<com.linuxmobile.android.nzoric.celebrity.celebrity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(15,61,'<com.KszcjCPK.cNoctkpK17946.HandleClicks: void callNumber()>',18,'a',NULL),(16,70,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(17,59,'<com.coolphotoframes.instaframe.LaunchScreen: void onCreate(android.os.Bundle)>',9,'a',NULL),(18,119,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(19,120,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(20,77,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(21,120,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(22,75,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(23,121,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(24,62,'<com.coolphotoframes.instaframe.RateActivity: void startRating()>',7,'a',NULL),(25,60,'<com.coolphotoframes.instaframe.FrameScreen: float rot(android.content.Context,android.net.Uri)>',8,'p',0),(26,122,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(27,60,'<com.coolphotoframes.instaframe.FrameScreen: void chooseImage(int)>',6,'a',NULL),(28,79,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(29,119,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(30,121,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(31,123,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(32,59,'<com.coolphotoframes.instaframe.LaunchScreen: void startFrame(int)>',7,'a',NULL),(33,124,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL),(34,60,'<com.coolphotoframes.instaframe.FrameScreen: void startHelpActivity(android.view.View)>',4,'a',NULL),(35,123,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(36,76,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(37,120,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(38,121,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(39,79,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(40,84,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(41,69,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(42,60,'<com.coolphotoframes.instaframe.FrameScreen: void shareImage()>',48,'a',NULL),(43,123,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(44,119,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,4,17),(3,5,17),(4,6,11),(5,7,18),(6,8,18),(7,9,18),(8,10,11),(9,13,11),(10,14,19),(11,15,18),(12,17,18),(13,19,25),(14,22,11),(15,23,11),(16,25,26),(17,26,11),(18,28,18),(19,30,25),(20,32,18),(21,33,27),(22,34,25),(23,35,28),(24,36,28),(25,38,29),(26,39,29),(27,40,29),(28,41,29),(29,42,29),(30,43,29),(31,44,29),(32,45,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/apperhand/device/android/EULAActivity'),(2,3,'com/apperhand/device/android/EULAActivity'),(3,11,'com/apperhand/device/android/AndroidSDKProvider'),(4,12,'com/apperhand/device/android/AndroidSDKProvider'),(5,16,'com/coolphotoframes/instaframe/HelpScreen'),(6,18,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(7,20,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(8,21,'com/inox/referrer/SendDataService'),(9,24,'com/inoxpush/downloadticker/DownloadTickerService'),(10,27,'com/coolphotoframes/instaframe/FrameScreen'),(11,29,'com/coolphotoframes/instaframe/HelpScreen'),(12,31,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(13,35,'com/moolah/NotificationService'),(14,36,'com/moolah/NotificationService'),(15,37,'com/apperhand/device/android/AndroidSDKProvider');
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
INSERT INTO `IData` VALUES (1,6,6),(2,10,7),(3,13,10),(4,14,11),(5,22,13),(6,23,14),(7,25,15),(8,26,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,1,'address'),(3,4,'footerHTML'),(4,4,'bodyHTML'),(5,7,'android.intent.extra.shortcut.NAME'),(6,7,'android.intent.extra.shortcut.ICON_RESOURCE'),(7,7,'android.intent.extra.shortcut.INTENT'),(8,8,'android.intent.extra.shortcut.NAME'),(9,8,'android.intent.extra.shortcut.ICON'),(10,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(11,8,'android.intent.extra.shortcut.INTENT'),(12,9,'android.intent.extra.shortcut.NAME'),(13,9,'android.intent.extra.shortcut.ICON'),(14,9,'android.intent.extra.shortcut.INTENT'),(15,11,'M_SERVER_URL'),(16,11,'USER_AGENT'),(17,11,'SERVICE_MODE'),(18,11,'FIRST_RUN'),(19,11,'DEVELOPER_ID'),(20,11,'APPLICATION_ID'),(21,12,'eulaAcceptDetails'),(22,12,'M_SERVER_URL'),(23,12,'USER_AGENT'),(24,12,'SERVICE_MODE'),(25,12,'FIRST_RUN'),(26,12,'DEVELOPER_ID'),(27,12,'APPLICATION_ID'),(28,15,'android.intent.extra.shortcut.NAME'),(29,15,'android.intent.extra.shortcut.ICON'),(30,15,'android.intent.extra.shortcut.INTENT'),(31,17,'duplicate'),(32,17,'android.intent.extra.shortcut.NAME'),(33,17,'android.intent.extra.shortcut.ICON'),(34,17,'android.intent.extra.shortcut.INTENT'),(35,18,'offerCount'),(36,19,'NULL-CONSTANT'),(37,19,'type'),(38,20,'singleoffer'),(39,20,'offerCount'),(40,27,'total'),(41,27,'layout_id'),(42,28,'duplicate'),(43,28,'android.intent.extra.shortcut.NAME'),(44,28,'android.intent.extra.shortcut.ICON'),(45,28,'android.intent.extra.shortcut.INTENT'),(46,30,'NULL-CONSTANT'),(47,30,'type'),(48,32,'android.intent.extra.shortcut.NAME'),(49,32,'android.intent.extra.shortcut.ICON'),(50,32,'android.intent.extra.shortcut.INTENT'),(51,33,'NULL-CONSTANT'),(52,33,'type'),(53,34,'NULL-CONSTANT'),(54,34,'type'),(55,35,'test_mode'),(56,36,'notif_sig'),(57,36,'test_mode'),(58,37,'M_SERVER_URL'),(59,37,'USER_AGENT'),(60,37,'SERVICE_MODE'),(61,37,'FIRST_RUN'),(62,37,'DEVELOPER_ID'),(63,37,'APPLICATION_ID'),(64,38,'android.intent.extra.INTENT'),(65,39,'android.intent.extra.INTENT'),(66,40,'android.intent.extra.TITLE'),(67,40,'android.intent.extra.INTENT'),(68,41,'android.intent.extra.INTENT'),(69,42,'android.intent.extra.TITLE'),(70,42,'android.intent.extra.INTENT'),(71,43,'android.intent.extra.INTENT'),(72,44,'android.intent.extra.TITLE'),(73,44,'android.intent.extra.INTENT'),(74,45,'android.intent.extra.TITLE'),(75,45,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,3),(6,6,2),(7,7,1),(8,8,4),(9,9,5),(10,10,6),(11,11,2),(12,12,1),(13,13,4),(14,14,7),(15,15,8),(16,16,9),(17,17,2),(18,18,2),(19,19,2),(20,20,4),(21,21,10),(22,22,2),(23,23,1),(24,24,12),(25,25,12),(26,26,8),(27,27,13),(28,28,14),(29,29,15),(30,30,16),(31,31,2),(32,32,1),(33,33,20),(34,34,21),(35,35,2),(36,36,22),(37,36,24),(38,36,23);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,6,2),(5,7,3),(6,11,2),(7,12,1),(8,17,2),(9,19,2),(10,22,2),(11,23,1),(12,29,4),(13,30,4),(14,31,2),(15,32,1),(16,33,5),(17,35,2);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.linuxmobile.android.nzoric.celebrity'),(2,3,'com.linuxmobile.android.nzoric.celebrity'),(3,4,'com.linuxmobile.android.nzoric.celebrity'),(4,5,'com.linuxmobile.android.nzoric.celebrity'),(5,11,'com.linuxmobile.android.nzoric.celebrity'),(6,12,'com.linuxmobile.android.nzoric.celebrity'),(7,16,'com.coolphotoframes.instaframe'),(8,18,'com.coolphotoframes.instaframe'),(9,20,'com.coolphotoframes.instaframe'),(10,21,'com.coolphotoframes.instaframe'),(11,24,'com.coolphotoframes.instaframe'),(12,27,'com.coolphotoframes.instaframe'),(13,29,'com.coolphotoframes.instaframe'),(14,31,'com.coolphotoframes.instaframe'),(15,35,'com.coolphotoframes.instaframe'),(16,36,'com.coolphotoframes.instaframe'),(17,37,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,10,0),(3,11,0),(4,12,0),(5,15,0),(6,20,0),(7,21,0),(8,24,0),(9,25,0),(10,26,0),(11,31,0),(12,35,0),(13,38,0),(14,39,0),(15,41,0),(16,42,0),(17,46,0),(18,46,0),(19,46,0),(20,52,0),(21,54,0),(22,58,0),(23,59,0),(24,66,0),(25,66,0),(26,69,0),(27,70,0),(28,72,0),(29,77,0),(30,77,0),(31,78,0),(32,80,0),(33,95,0),(34,105,0),(35,111,0),(36,113,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,5,0,0),(3,5,0,0),(4,6,1,0),(5,6,1,0),(6,8,1,0),(7,9,1,0),(8,9,1,0),(9,9,1,0),(10,10,1,0),(11,13,0,0),(12,13,0,0),(13,14,1,0),(14,15,1,0),(15,16,1,0),(16,17,0,0),(17,18,1,0),(18,19,0,0),(19,20,1,0),(20,21,0,0),(21,22,0,0),(22,24,1,0),(23,24,1,0),(24,26,0,0),(25,27,1,0),(26,28,1,0),(27,32,0,0),(28,33,1,0),(29,34,0,0),(30,36,1,0),(31,37,0,0),(32,38,1,0),(33,39,1,0),(34,39,1,0),(35,40,0,0),(36,40,0,0),(37,41,0,0),(38,42,1,0),(39,42,1,0),(40,42,1,0),(41,42,1,0),(42,42,1,0),(43,42,1,0),(44,42,1,0),(45,42,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,38,21,2,NULL),(2,39,21,2,NULL),(3,40,21,2,NULL),(4,41,21,2,NULL),(5,42,21,2,NULL),(6,43,21,2,NULL),(7,44,21,2,NULL),(8,45,21,2,NULL),(9,22,21,2,NULL),(10,23,21,2,NULL),(11,30,21,2,NULL),(12,19,21,2,NULL),(13,26,21,2,NULL),(14,33,21,2,NULL),(15,34,21,2,NULL),(16,38,24,2,NULL),(17,39,24,2,NULL),(18,40,24,2,NULL),(19,41,24,2,NULL),(20,42,24,2,NULL),(21,43,24,2,NULL),(22,44,24,2,NULL),(23,45,24,2,NULL),(24,22,24,2,NULL),(25,23,24,2,NULL),(26,30,24,2,NULL),(27,19,24,2,NULL),(28,26,24,2,NULL),(29,33,24,2,NULL),(30,34,24,2,NULL),(31,38,25,2,NULL),(32,39,25,2,NULL),(33,40,25,2,NULL),(34,41,25,2,NULL),(35,42,25,2,NULL),(36,43,25,2,NULL),(37,44,25,2,NULL),(38,45,25,2,NULL),(39,22,25,2,NULL),(40,23,25,2,NULL),(41,30,25,2,NULL),(42,19,25,2,NULL),(43,26,25,2,NULL),(44,33,25,2,NULL),(45,34,25,2,NULL),(46,38,26,2,NULL),(47,39,26,2,NULL),(48,40,26,2,NULL),(49,41,26,2,NULL),(50,42,26,2,NULL),(51,43,26,2,NULL),(52,44,26,2,NULL),(53,45,26,2,NULL),(54,22,26,2,NULL),(55,23,26,2,NULL),(56,30,26,2,NULL),(57,19,26,2,NULL),(58,26,26,2,NULL),(59,33,26,2,NULL),(60,34,26,2,NULL),(61,38,31,2,NULL),(62,39,31,2,NULL),(63,40,31,2,NULL),(64,41,31,2,NULL),(65,42,31,2,NULL),(66,43,31,2,NULL),(67,44,31,2,NULL),(68,45,31,2,NULL),(69,22,31,2,NULL),(70,23,31,2,NULL),(71,30,31,2,NULL),(72,19,31,2,NULL),(73,26,31,2,NULL),(74,33,31,2,NULL),(75,34,31,2,NULL),(76,38,1,2,NULL),(77,39,1,2,NULL),(78,40,1,2,NULL),(79,41,1,2,NULL),(80,42,1,2,NULL),(81,43,1,2,NULL),(82,44,1,2,NULL),(83,45,1,2,NULL),(84,22,1,2,NULL),(85,23,1,2,NULL),(86,30,1,2,NULL),(87,19,1,2,NULL),(88,26,1,2,NULL),(89,33,1,2,NULL),(90,34,1,2,NULL),(91,2,3,2,NULL),(92,3,3,2,NULL),(93,11,6,2,NULL),(94,11,16,2,NULL),(95,11,27,2,NULL),(96,11,40,2,NULL),(97,11,53,2,NULL),(98,11,68,2,NULL),(99,11,107,2,NULL),(100,12,6,2,NULL),(101,12,16,2,NULL),(102,12,27,2,NULL),(103,12,40,2,NULL),(104,12,53,2,NULL),(105,12,68,2,NULL),(106,12,107,2,NULL),(107,38,10,2,NULL),(108,39,10,2,NULL),(109,40,10,2,NULL),(110,41,10,2,NULL),(111,42,10,2,NULL),(112,43,10,2,NULL),(113,44,10,2,NULL),(114,45,10,2,NULL),(115,22,10,2,NULL),(116,23,10,2,NULL),(117,30,10,2,NULL),(118,19,10,2,NULL),(119,26,10,2,NULL),(120,33,10,2,NULL),(121,34,10,2,NULL),(122,38,11,2,NULL),(123,39,11,2,NULL),(124,40,11,2,NULL),(125,41,11,2,NULL),(126,42,11,2,NULL),(127,43,11,2,NULL),(128,44,11,2,NULL),(129,45,11,2,NULL),(130,22,11,2,NULL),(131,23,11,2,NULL),(132,30,11,2,NULL),(133,19,11,2,NULL),(134,26,11,2,NULL),(135,33,11,2,NULL),(136,34,11,2,NULL),(137,38,12,2,NULL),(138,39,12,2,NULL),(139,40,12,2,NULL),(140,41,12,2,NULL),(141,42,12,2,NULL),(142,43,12,2,NULL),(143,44,12,2,NULL),(144,45,12,2,NULL),(145,22,12,2,NULL),(146,23,12,2,NULL),(147,30,12,2,NULL),(148,19,12,2,NULL),(149,26,12,2,NULL),(150,33,12,2,NULL),(151,34,12,2,NULL),(152,38,15,2,NULL),(153,39,15,2,NULL),(154,40,15,2,NULL),(155,41,15,2,NULL),(156,42,15,2,NULL),(157,43,15,2,NULL),(158,44,15,2,NULL),(159,45,15,2,NULL),(160,22,15,2,NULL),(161,23,15,2,NULL),(162,30,15,2,NULL),(163,19,15,2,NULL),(164,26,15,2,NULL),(165,33,15,2,NULL),(166,34,15,2,NULL),(167,38,20,2,NULL),(168,39,20,2,NULL),(169,40,20,2,NULL),(170,41,20,2,NULL),(171,42,20,2,NULL),(172,43,20,2,NULL),(173,44,20,2,NULL),(174,45,20,2,NULL),(175,22,20,2,NULL),(176,23,20,2,NULL),(177,30,20,2,NULL),(178,19,20,2,NULL),(179,26,20,2,NULL),(180,33,20,2,NULL),(181,34,20,2,NULL),(182,38,80,2,NULL),(183,39,80,2,NULL),(184,40,80,2,NULL),(185,41,80,2,NULL),(186,42,80,2,NULL),(187,43,80,2,NULL),(188,44,80,2,NULL),(189,45,80,2,NULL),(190,22,80,2,NULL),(191,23,80,2,NULL),(192,30,80,2,NULL),(193,19,80,2,NULL),(194,26,80,2,NULL),(195,33,80,2,NULL),(196,34,80,2,NULL),(197,38,95,2,NULL),(198,39,95,2,NULL),(199,40,95,2,NULL),(200,41,95,2,NULL),(201,42,95,2,NULL),(202,43,95,2,NULL),(203,44,95,2,NULL),(204,45,95,2,NULL),(205,22,95,2,NULL),(206,23,95,2,NULL),(207,30,95,2,NULL),(208,19,95,2,NULL),(209,26,95,2,NULL),(210,33,95,2,NULL),(211,34,95,2,NULL),(212,38,105,2,NULL),(213,39,105,2,NULL),(214,40,105,2,NULL),(215,41,105,2,NULL),(216,42,105,2,NULL),(217,43,105,2,NULL),(218,44,105,2,NULL),(219,45,105,2,NULL),(220,22,105,2,NULL),(221,23,105,2,NULL),(222,30,105,2,NULL),(223,19,105,2,NULL),(224,26,105,2,NULL),(225,33,105,2,NULL),(226,34,105,2,NULL),(227,38,111,2,NULL),(228,39,111,2,NULL),(229,40,111,2,NULL),(230,41,111,2,NULL),(231,42,111,2,NULL),(232,43,111,2,NULL),(233,44,111,2,NULL),(234,45,111,2,NULL),(235,22,111,2,NULL),(236,23,111,2,NULL),(237,30,111,2,NULL),(238,19,111,2,NULL),(239,26,111,2,NULL),(240,33,111,2,NULL),(241,34,111,2,NULL),(242,38,113,2,NULL),(243,39,113,2,NULL),(244,40,113,2,NULL),(245,41,113,2,NULL),(246,42,113,2,NULL),(247,43,113,2,NULL),(248,44,113,2,NULL),(249,45,113,2,NULL),(250,22,113,2,NULL),(251,23,113,2,NULL),(252,30,113,2,NULL),(253,19,113,2,NULL),(254,26,113,2,NULL),(255,33,113,2,NULL),(256,34,113,2,NULL),(257,16,62,2,NULL),(258,27,60,2,NULL),(259,38,59,2,NULL),(260,39,59,2,NULL),(261,40,59,2,NULL),(262,41,59,2,NULL),(263,42,59,2,NULL),(264,43,59,2,NULL),(265,44,59,2,NULL),(266,45,59,2,NULL),(267,22,59,2,NULL),(268,23,59,2,NULL),(269,30,59,2,NULL),(270,19,59,2,NULL),(271,26,59,2,NULL),(272,33,59,2,NULL),(273,34,59,2,NULL),(274,29,62,2,NULL),(275,38,35,2,NULL),(276,39,35,2,NULL),(277,40,35,2,NULL),(278,41,35,2,NULL),(279,42,35,2,NULL),(280,43,35,2,NULL),(281,44,35,2,NULL),(282,45,35,2,NULL),(283,38,38,2,NULL),(284,39,38,2,NULL),(285,40,38,2,NULL),(286,41,38,2,NULL),(287,42,38,2,NULL),(288,43,38,2,NULL),(289,44,38,2,NULL),(290,45,38,2,NULL),(291,38,39,2,NULL),(292,39,39,2,NULL),(293,40,39,2,NULL),(294,41,39,2,NULL),(295,42,39,2,NULL),(296,43,39,2,NULL),(297,44,39,2,NULL),(298,45,39,2,NULL),(299,38,41,2,NULL),(300,39,41,2,NULL),(301,40,41,2,NULL),(302,41,41,2,NULL),(303,42,41,2,NULL),(304,43,41,2,NULL),(305,44,41,2,NULL),(306,45,41,2,NULL),(307,38,42,2,NULL),(308,39,42,2,NULL),(309,40,42,2,NULL),(310,41,42,2,NULL),(311,42,42,2,NULL),(312,43,42,2,NULL),(313,44,42,2,NULL),(314,45,42,2,NULL),(315,38,46,2,NULL),(316,39,46,2,NULL),(317,40,46,2,NULL),(318,41,46,2,NULL),(319,42,46,2,NULL),(320,43,46,2,NULL),(321,44,46,2,NULL),(322,45,46,2,NULL),(323,38,52,2,NULL),(324,39,52,2,NULL),(325,40,52,2,NULL),(326,41,52,2,NULL),(327,42,52,2,NULL),(328,43,52,2,NULL),(329,44,52,2,NULL),(330,45,52,2,NULL),(331,38,54,2,NULL),(332,39,54,2,NULL),(333,40,54,2,NULL),(334,41,54,2,NULL),(335,42,54,2,NULL),(336,43,54,2,NULL),(337,44,54,2,NULL),(338,45,54,2,NULL),(339,38,58,2,NULL),(340,39,58,2,NULL),(341,40,58,2,NULL),(342,41,58,2,NULL),(343,42,58,2,NULL),(344,43,58,2,NULL),(345,44,58,2,NULL),(346,45,58,2,NULL),(347,38,66,2,NULL),(348,39,66,2,NULL),(349,40,66,2,NULL),(350,41,66,2,NULL),(351,42,66,2,NULL),(352,43,66,2,NULL),(353,44,66,2,NULL),(354,45,66,2,NULL),(355,38,69,2,NULL),(356,39,69,2,NULL),(357,40,69,2,NULL),(358,41,69,2,NULL),(359,42,69,2,NULL),(360,43,69,2,NULL),(361,44,69,2,NULL),(362,45,69,2,NULL),(363,38,70,2,NULL),(364,39,70,2,NULL),(365,40,70,2,NULL),(366,41,70,2,NULL),(367,42,70,2,NULL),(368,43,70,2,NULL),(369,44,70,2,NULL),(370,45,70,2,NULL),(371,38,72,2,NULL),(372,39,72,2,NULL),(373,40,72,2,NULL),(374,41,72,2,NULL),(375,42,72,2,NULL),(376,43,72,2,NULL),(377,44,72,2,NULL),(378,45,72,2,NULL),(379,38,77,2,NULL),(380,39,77,2,NULL),(381,40,77,2,NULL),(382,41,77,2,NULL),(383,42,77,2,NULL),(384,43,77,2,NULL),(385,44,77,2,NULL),(386,45,77,2,NULL),(387,38,78,2,NULL),(388,39,78,2,NULL),(389,40,78,2,NULL),(390,41,78,2,NULL),(391,42,78,2,NULL),(392,43,78,2,NULL),(393,44,78,2,NULL),(394,45,78,2,NULL),(395,22,35,2,NULL),(396,23,35,2,NULL),(397,22,38,2,NULL),(398,23,38,2,NULL),(399,22,39,2,NULL),(400,23,39,2,NULL),(401,22,41,2,NULL),(402,23,41,2,NULL),(403,22,42,2,NULL),(404,23,42,2,NULL),(405,22,46,2,NULL),(406,23,46,2,NULL),(407,22,52,2,NULL),(408,23,52,2,NULL),(409,22,54,2,NULL),(410,23,54,2,NULL),(411,22,58,2,NULL),(412,23,58,2,NULL),(413,22,66,2,NULL),(414,23,66,2,NULL),(415,22,69,2,NULL),(416,23,69,2,NULL),(417,22,70,2,NULL),(418,23,70,2,NULL),(419,22,72,2,NULL),(420,23,72,2,NULL),(421,22,77,2,NULL),(422,23,77,2,NULL),(423,22,78,2,NULL),(424,23,78,2,NULL),(425,30,66,2,NULL),(426,19,66,2,NULL),(427,26,66,2,NULL),(428,33,66,2,NULL),(429,34,66,2,NULL),(430,37,6,2,NULL),(431,37,16,2,NULL),(432,37,27,2,NULL),(433,37,40,2,NULL),(434,37,53,2,NULL),(435,37,68,2,NULL),(436,37,107,2,NULL),(437,30,69,2,NULL),(438,19,69,2,NULL),(439,26,69,2,NULL),(440,33,69,2,NULL),(441,34,69,2,NULL),(442,30,70,2,NULL),(443,19,70,2,NULL),(444,26,70,2,NULL),(445,33,70,2,NULL),(446,34,70,2,NULL),(447,21,65,2,NULL),(448,30,72,2,NULL),(449,19,72,2,NULL),(450,26,72,2,NULL),(451,33,72,2,NULL),(452,34,72,2,NULL),(453,30,35,2,NULL),(454,30,38,2,NULL),(455,30,39,2,NULL),(456,30,41,2,NULL),(457,30,42,2,NULL),(458,30,46,2,NULL),(459,30,52,2,NULL),(460,30,54,2,NULL),(461,30,58,2,NULL),(462,30,77,2,NULL),(463,19,52,2,NULL),(464,30,78,2,NULL),(465,26,52,2,NULL),(466,19,35,2,NULL),(467,33,52,2,NULL),(468,19,38,2,NULL),(469,34,52,2,NULL),(470,19,39,2,NULL),(471,19,54,2,NULL),(472,19,41,2,NULL),(473,26,54,2,NULL),(474,19,42,2,NULL),(475,33,54,2,NULL),(476,19,46,2,NULL),(477,34,54,2,NULL),(478,19,58,2,NULL),(479,26,58,2,NULL),(480,19,77,2,NULL),(481,33,58,2,NULL),(482,19,78,2,NULL),(483,34,58,2,NULL),(484,26,35,2,NULL),(485,33,35,2,NULL),(486,34,35,2,NULL),(487,26,38,2,NULL),(488,33,38,2,NULL),(489,34,38,2,NULL),(490,26,39,2,NULL),(491,33,39,2,NULL),(492,34,39,2,NULL),(493,26,41,2,NULL),(494,33,41,2,NULL),(495,34,41,2,NULL),(496,26,42,2,NULL),(497,33,42,2,NULL),(498,34,42,2,NULL),(499,26,46,2,NULL),(500,33,46,2,NULL),(501,34,46,2,NULL),(502,26,77,2,NULL),(503,33,77,2,NULL),(504,34,77,2,NULL),(505,26,78,2,NULL),(506,33,78,2,NULL),(507,34,78,2,NULL),(508,35,71,2,NULL),(509,36,71,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(30,'android.permission.BIND_WALLPAPER'),(37,'android.permission.BLUETOOTH'),(38,'android.permission.BLUETOOTH_ADMIN'),(29,'android.permission.CHANGE_CONFIGURATION'),(36,'android.permission.DISABLE_KEYGUARD'),(34,'android.permission.FLASHLIGHT'),(31,'android.permission.GET_ACCOUNTS'),(25,'android.permission.GET_TASKS'),(17,'android.permission.INTERNET'),(27,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_PHONE_STATE'),(32,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(35,'android.permission.SET_PREFERRED_APPLICATIONS'),(33,'android.permission.SET_WALLPAPER'),(21,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'android.permission.WRITE_SETTINGS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(9,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(14,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.android.launcher.permission.READ_SETTINGS'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(40,'com.android.vending.BILLING'),(19,'com.fede.launcher.permission.READ_SETTINGS'),(39,'com.google.android.c2dm.permission.SEND'),(15,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(8,'com.lge.launcher.permission.READ_SETTINGS'),(2,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(3,'com.motorola.dlauncher.permission.READ_SETTINGS'),(11,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(20,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'http://www.linux-mobile.com',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'http://www.linux-mobile.com',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'www.google.com',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,2,2),(3,3,3),(4,4,4),(5,7,5),(6,11,8),(7,12,9),(8,23,12),(9,29,17),(10,30,18),(11,30,19),(12,31,20),(13,35,21),(14,43,22),(15,44,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,24),(25,2,1),(26,2,2),(27,2,3),(28,2,4),(29,2,6),(30,2,7),(31,2,8),(32,2,9),(33,2,11),(34,2,13),(35,2,14),(36,2,15),(37,2,17),(38,2,16),(39,2,19),(40,2,21),(41,2,20),(42,2,23),(43,2,22),(44,2,24),(45,3,1),(46,3,2),(47,3,3),(48,3,4),(49,3,5),(50,3,6),(51,3,7),(52,3,8),(53,3,9),(54,3,10),(55,3,11),(56,3,12),(57,3,13),(58,3,14),(59,3,15),(60,3,17),(61,3,16),(62,3,19),(63,3,18),(64,3,21),(65,3,20),(66,3,23),(67,3,22),(68,3,25),(69,3,24),(70,3,27),(71,3,26),(72,3,29),(73,3,28),(74,4,1),(75,4,2),(76,4,3),(77,4,4),(78,4,5),(79,4,6),(80,4,7),(81,4,8),(82,4,9),(83,4,10),(84,4,11),(85,4,12),(86,4,13),(87,4,14),(88,4,15),(89,4,17),(90,4,16),(91,4,19),(92,4,18),(93,4,20),(94,4,23),(95,4,22),(96,4,24),(97,4,27),(98,4,31),(99,4,32),(100,5,34),(101,5,1),(102,5,2),(103,5,33),(104,5,3),(105,5,4),(106,5,6),(107,5,7),(108,5,8),(109,5,9),(110,5,11),(111,5,13),(112,5,14),(113,5,15),(114,5,17),(115,5,16),(116,5,19),(117,5,21),(118,5,20),(119,5,23),(120,5,22),(121,5,24),(122,5,26),(123,5,28),(124,6,1),(125,6,2),(126,6,3),(127,6,4),(128,6,5),(129,6,6),(130,6,7),(131,6,8),(132,6,9),(133,6,10),(134,6,11),(135,6,12),(136,6,13),(137,6,14),(138,6,15),(139,6,17),(140,6,16),(141,6,19),(142,6,18),(143,6,21),(144,6,20),(145,6,23),(146,6,24),(147,6,27),(148,6,26),(149,6,31),(150,6,35),(151,6,38),(152,6,36),(153,6,37),(154,7,1),(155,7,2),(156,7,3),(157,7,6),(158,7,7),(159,7,8),(160,7,9),(161,7,40),(162,7,11),(163,7,12),(164,7,13),(165,7,14),(166,7,15),(167,7,17),(168,7,16),(169,7,19),(170,7,20),(171,7,23),(172,7,22),(173,7,24),(174,7,26);
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

-- Dump completed on 2015-10-12  3:31:20
