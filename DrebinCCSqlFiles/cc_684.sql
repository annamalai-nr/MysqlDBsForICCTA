-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_684
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'(.*)'),(9,'INTENT_LordGaneshaTemple'),(11,'INTENT_ShriHanumanTemple'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.CHOOSER'),(2,'android.intent.action.MAIN'),(23,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.PACKAGE_REPLACED'),(24,'android.intent.action.PHONE_STATE'),(36,'android.intent.action.PICK'),(33,'android.intent.action.SCREEN_OFF'),(34,'android.intent.action.USER_PRESENT'),(30,'android.intent.action.VIEW'),(1,'android.service.wallpaper.WallpaperService'),(3,'com.airpush.android.PushServiceStart18279'),(5,'com.airpush.android.PushServiceStart18381'),(20,'com.airpush.android.PushServiceStart52139'),(10,'com.airpush.android.PushServiceStart59340'),(29,'com.android.launcher.action.INSTALL_SHORTCUT'),(17,'com.android.vending.INSTALL_REFERRER'),(31,'com.appbrain.CHECK'),(21,'com.applovin.sdk.AppLovinService'),(26,'com.coolphotoframes.instaframe'),(13,'com.gau.go.launcherex.action.hide_theme_icon'),(18,'com.gau.go.launcherex.action.inactive_apply_theme_flag'),(8,'com.gau.go.launcherex.theme'),(27,'com.google.android.c2dm.intent.RECEIVE'),(28,'com.google.android.c2dm.intent.REGISTRATION'),(37,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(25,'com.inoxpush.adnetwork.PushServiceStart55555'),(38,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(19,'com.jiubang.intent.action.LAUNCHER_START'),(4,'com.senddroid.AdServicebys.widgets.lordganesha'),(7,'com.senddroid.AdServicebys.widgets.srihanuman'),(22,'com.senddroid.AdServiceorg.drhu.discobeam');
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
INSERT INTO `Applications` VALUES (1,'com.AlDiApps.StarryNightlite',60),(2,'bys.widgets.lordganesha',22),(3,'bys.widgets.srihanuman',35),(4,'com.gau.go.launcherex.theme.galaxys3',2),(5,'org.soft88.sushi',2),(6,'org.drhu.discobeam',18),(7,'com.coolphotoframes.instaframe',13);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.AlDiApps.StarryNightlite.Settings'),(2,1,'com.AlDiApps.StarryNightlite.Livewallpaper'),(3,1,'com.apperhand.device.android.AndroidSDKProvider'),(4,2,'bys.widgets.lordganesha.TempleMainActivity'),(5,2,'bys.widgets.lordganesha.AboutActivity'),(6,2,'bys.widgets.lordganesha.LicenseAgreementActivity'),(7,2,'bys.widgets.lordganesha.HelpUsActivity'),(8,2,'bys.widgets.lordganesha.AudioListActivity'),(9,3,'bys.widgets.srihanuman.TempleMainActivity'),(10,2,'bys.widgets.lordganesha.PlayListMakerActivity'),(11,2,'bys.widgets.lordganesha.ChangeAudioActivity'),(12,3,'bys.widgets.srihanuman.AboutActivity'),(13,2,'bys.widgets.lordganesha.SettingsActivity'),(14,3,'bys.widgets.srihanuman.LicenseAgreementActivity'),(15,2,'com.google.ads.AdActivity'),(16,3,'bys.widgets.srihanuman.HelpUsActivity'),(17,2,'bys.widgets.lordganesha.FilePickerActivity'),(18,3,'bys.widgets.srihanuman.AudioListActivity'),(19,2,'com.airpush.android.PushAds'),(20,3,'bys.widgets.srihanuman.PlayListMakerActivity'),(21,2,'com.airpush.android.PushService'),(22,3,'bys.widgets.srihanuman.ChangeAudioActivity'),(23,3,'bys.widgets.srihanuman.SettingsActivity'),(24,2,'com.senddroid.AdService'),(25,3,'com.google.ads.AdActivity'),(26,3,'bys.widgets.srihanuman.FilePickerActivity'),(27,4,'com.gau.go.launcherex.theme.galaxys3.ViewPageActivity'),(28,3,'com.airpush.android.PushAds'),(29,2,'com.apperhand.device.android.AndroidSDKProvider'),(30,4,'com.gau.go.launcherex.theme.galaxys3.NotificationActivity'),(31,3,'com.airpush.android.PushService'),(32,2,'bys.widgets.lordganesha.GodWidgetProvider_80_100'),(33,4,'com.gau.go.launcherex.theme.galaxys3.classic'),(34,3,'com.senddroid.AdService'),(35,2,'bys.widgets.lordganesha.GodWidgetProvider_160_200'),(36,2,'bys.widgets.lordganesha.GodWidgetProvider_240_300'),(37,3,'com.apperhand.device.android.AndroidSDKProvider'),(38,3,'bys.widgets.srihanuman.GodWidgetProvider_80_100'),(39,2,'bys.widgets.lordganesha.AlarmReceiver'),(40,4,'com.airpush.android.PushAds'),(41,3,'bys.widgets.srihanuman.GodWidgetProvider_160_200'),(42,4,'com.gau.go.launcherex.theme.galaxys3.GoDownloadService'),(43,2,'com.airpush.android.UserDetailsReceiver'),(44,4,'com.airpush.android.PushService'),(45,3,'bys.widgets.srihanuman.GodWidgetProvider_240_300'),(46,2,'com.airpush.android.MessageReceiver'),(47,5,'org.soft88.sushi.SushiRush'),(48,2,'com.airpush.android.DeliveryReceiver'),(49,4,'com.apperhand.device.android.AndroidSDKProvider'),(50,3,'bys.widgets.srihanuman.AlarmReceiver'),(51,2,'bys.widgets.lordganesha.BootReceiver'),(52,4,'com.gau.go.launcherex.theme.galaxys3.ComponentControlReceiver'),(53,5,'com.appbrain.AppBrainActivity'),(54,5,'com.google.ads.AdActivity'),(55,3,'com.airpush.android.UserDetailsReceiver'),(56,5,'com.appbrain.AppBrainService'),(57,3,'com.airpush.android.MessageReceiver'),(58,5,'com.apperhand.device.android.AndroidSDKProvider'),(59,3,'com.airpush.android.DeliveryReceiver'),(60,5,'com.appbrain.ReferrerReceiver'),(61,4,'com.gau.go.launcherex.theme.galaxys3.ThemeControlReceiver'),(62,3,'bys.widgets.srihanuman.BootReceiver'),(63,4,'com.airpush.android.UserDetailsReceiver'),(64,4,'com.airpush.android.MessageReceiver'),(65,4,'com.airpush.android.DeliveryReceiver'),(66,4,'com.gau.go.launcherex.theme.galaxys3.BootReceiver'),(67,4,'com.gau.go.launcherex.theme.galaxys3.Boot'),(68,4,'com.Leadbolt.AdNotification'),(69,6,'org.drhu.discobeam.OurApps'),(70,6,'org.drhu.discobeam.WebviewActivity1'),(71,6,'org.drhu.discobeam.WebviewActivity2'),(72,6,'org.drhu.discobeam.Setting'),(73,6,'org.drhu.discobeam.Welcome'),(74,6,'com.maudau.mobile.android.api.activities.MaudauActivity'),(75,6,'com.airpush.android.PushAds'),(76,6,'com.sellaring.sdk.PostCallScreenActivity'),(77,6,'com.sec.android.ad.AdActivity'),(78,6,'org.drhu.discobeam.DiscoBeam'),(79,6,'com.airpush.android.PushService'),(80,6,'com.apperhand.device.android.AndroidSDKProvider'),(81,6,'com.applovin.sdk.AppLovinService'),(82,6,'com.senddroid.AdService'),(83,6,'com.airpush.android.UserDetailsReceiver'),(84,6,'com.airpush.android.MessageReceiver'),(85,6,'com.airpush.android.DeliveryReceiver'),(86,6,'org.drhu.discobeam.BootReceiver'),(87,7,'com.coolphotoframes.instaframe.LaunchScreen'),(88,6,'com.Leadbolt.AdNotification'),(89,6,'com.sellaring.sdk.AlarmReceiver'),(90,7,'com.coolphotoframes.instaframe.FrameScreen'),(91,6,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(92,7,'com.coolphotoframes.instaframe.HelpScreen'),(93,7,'com.coolphotoframes.instaframe.MoreAppsActivity'),(94,6,'com.sellaring.sdk.PhoneStateReceiver'),(95,7,'com.coolphotoframes.instaframe.Rate'),(96,7,'com.chartboost.sdk.CBDialogActivity'),(97,7,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(98,7,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(99,7,'com.inox.referrer.SendDataService'),(100,7,'com.inoxpush.adnetwork.PushAdService'),(101,7,'com.inoxpush.downloadticker.DownloadTickerService'),(102,7,'com.apperhand.device.android.AndroidSDKProvider'),(103,7,'com.applovin.sdk.AppLovinService'),(104,7,'com.senddroid.AdService'),(105,7,'com.inox.referrer.Receiver'),(106,7,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(107,7,'com.inoxpush.adnetwork.AdMessageReceiver'),(108,7,'com.inoxpush.adnetwork.ClickAdReceiver'),(109,7,'com.applovin.sdk.AppLovinNotificationReceiver'),(110,7,'com.applovin.sdk.AppLovinPushReceiver'),(111,7,'com.coolphotoframes.instaframe.BootReceiver'),(112,1,'com.apperhand.device.android.a.a'),(113,1,'com.apperhand.device.android.a.e'),(114,1,'com.AlDiApps.StarryNightlite.Settings$1'),(115,5,'com.apperhand.device.android.a.d'),(116,5,'com.apperhand.device.android.a.b'),(117,5,'com.appbrain.a.a'),(118,5,'com.appbrain.a.ak'),(119,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(120,7,'com.apperhand.device.android.a.d'),(121,7,'com.inoxpush.downloadticker.DownloadTicker'),(122,7,'com.apperhand.device.android.a.b'),(123,7,'com.coolphotoframes.instaframe.MoreAppsActivity$1'),(124,7,'com.senddroid.SendDroid'),(125,7,'com.pontiflex.mobile.webview.sdk.AdManager'),(126,7,'com.inox.referrer.StartAd'),(127,7,'com.chartboost.sdk.ChartBoost');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'USER_AGENT'),(2,3,'SERVICE_MODE'),(3,3,'permanent'),(4,3,'DEVELOPER_ID'),(5,3,'FIRST_RUN'),(6,3,'APPLICATION_ID'),(7,3,'M_SERVER_URL'),(8,53,'activity'),(9,60,'(.*)'),(10,54,'action'),(11,54,'com.google.ads.AdOpener'),(12,58,'APPLICATION_ID'),(13,60,'referrer'),(14,53,'maybe'),(15,54,'com.google.circles.platform.result.extra.CONFIRMATION'),(16,54,'params'),(17,58,'DEVELOPER_ID'),(18,58,'M_SERVER_URL'),(19,58,'FIRST_RUN'),(20,58,'USER_AGENT'),(21,58,'SERVICE_MODE'),(22,56,'key'),(23,53,'bo'),(24,54,'com.google.circles.platform.result.extra.ACTION'),(25,56,'event'),(26,90,'access_token'),(27,105,'referrer'),(28,108,'adType'),(29,90,'(.*)'),(30,90,'failing_url'),(31,102,'SERVICE_MODE'),(32,100,'type'),(33,108,'marketlink'),(34,110,'applovin.sdk.key'),(35,103,'applovin.sdk.key'),(36,109,'applovin.sdk.key'),(37,102,'FIRST_RUN'),(38,107,'appId'),(39,90,'error'),(40,96,'bk_type'),(41,108,'appId'),(42,96,'bk_cfgo'),(43,102,'DEVELOPER_ID'),(44,90,'error_description'),(45,102,'M_SERVER_URL'),(46,100,'adType'),(47,102,'USER_AGENT'),(48,90,'expires_in'),(49,106,'appId'),(50,110,'applovin.sdk.verbose_logging'),(51,103,'applovin.sdk.verbose_logging'),(52,109,'applovin.sdk.verbose_logging'),(53,102,'APPLICATION_ID'),(54,110,'applovin.sdk.autoupdate_disabled'),(55,103,'applovin.sdk.autoupdate_disabled'),(56,109,'applovin.sdk.autoupdate_disabled'),(57,90,'error_type');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,18,NULL),(3,3,'s',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,44,'s',1,NULL,NULL),(44,43,'r',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',1,18,NULL),(79,79,'s',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',1,NULL,NULL),(82,82,'s',1,NULL,NULL),(83,83,'r',0,NULL,NULL),(84,84,'r',0,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'r',0,NULL,NULL),(89,89,'r',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',1,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',1,NULL,NULL),(104,104,'s',1,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,106,'r',0,NULL,NULL),(107,107,'r',0,NULL,NULL),(108,108,'r',0,NULL,NULL),(109,109,'r',0,NULL,NULL),(110,110,'r',1,38,NULL),(111,111,'r',1,NULL,NULL),(112,119,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,1),(7,7,2),(8,8,3),(9,9,58),(10,10,58),(11,11,53),(12,12,58),(13,13,47),(14,13,60),(15,13,53),(16,13,56),(17,14,58),(18,15,58),(19,16,54),(20,17,56),(21,18,54),(22,19,58),(23,20,47),(24,21,111),(25,22,108),(26,23,95),(27,24,102),(28,25,87),(29,26,102),(30,27,90),(31,28,105),(32,29,87),(33,30,90),(34,31,87),(35,31,90),(36,32,87),(37,32,90),(38,32,93),(39,33,87),(40,34,102),(41,35,104),(42,36,102),(43,37,87),(44,38,106),(45,39,104),(46,40,87),(47,41,90),(48,41,87),(49,42,102),(50,43,102),(51,44,90),(52,45,87),(53,46,87),(54,47,108),(55,48,104),(56,49,107),(57,50,87);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,112,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(2,112,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(3,112,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(4,113,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(5,113,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(6,114,'<com.AlDiApps.StarryNightlite.Settings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(7,3,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(8,113,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(9,115,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(10,116,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(11,117,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.f.h,com.appbrain.a.b)>',10,'a',NULL),(12,116,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(13,118,'<com.appbrain.a.ak: void a(android.content.Context)>',4,'s',NULL),(14,115,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(15,115,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(16,54,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(17,118,'<com.appbrain.a.ak: void a(android.content.Context,java.lang.String,com.appbrain.f.v)>',9,'s',NULL),(18,54,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(19,116,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(20,58,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(21,102,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(22,108,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(23,95,'<com.coolphotoframes.instaframe.Rate: void onCreate(android.os.Bundle)>',7,'a',NULL),(24,120,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(25,121,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(26,122,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(27,90,'<com.coolphotoframes.instaframe.FrameScreen: void startHelpActivity(android.view.View)>',4,'a',NULL),(28,105,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(29,87,'<com.coolphotoframes.instaframe.LaunchScreen: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(30,90,'<com.coolphotoframes.instaframe.FrameScreen: void shareImage(byte[])>',51,'a',NULL),(31,90,'<com.coolphotoframes.instaframe.FrameScreen: void OpenGallery(com.coolphotoframes.instaframe.ResizeView)>',12,'a',NULL),(32,123,'<com.coolphotoframes.instaframe.MoreAppsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(33,87,'<com.coolphotoframes.instaframe.LaunchScreen: void startFrame(int)>',7,'a',NULL),(34,120,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(35,124,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(36,120,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(37,125,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(38,106,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(39,124,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(40,125,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(41,90,'<com.coolphotoframes.instaframe.FrameScreen: float rot(android.content.Context,android.net.Uri)>',8,'p',0),(42,122,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(43,122,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(44,126,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL),(45,125,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(46,127,'<com.chartboost.sdk.ChartBoost: void loadChartBoostView(org.json.JSONObject,com.chartboost.sdk.CBWebView$CBViewType)>',11,'a',NULL),(47,108,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(48,124,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(49,107,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(50,87,'<com.coolphotoframes.instaframe.LaunchScreen: void onCreate(android.os.Bundle)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,29),(2,2,30),(3,5,29),(4,8,31),(5,9,30),(6,10,32),(7,11,32),(8,12,30),(9,17,30),(10,23,35),(11,24,35),(12,25,35),(13,26,35),(14,27,35),(15,28,35),(16,29,35),(17,30,35),(18,31,36),(19,32,30),(20,34,29),(21,36,37),(22,38,29),(23,41,38),(24,42,37),(25,43,29),(26,44,37);
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
INSERT INTO `ICategories` VALUES (1,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/apperhand/device/android/AndroidSDKProvider'),(2,4,'com/apperhand/device/android/AndroidSDKProvider'),(3,6,'com/appbrain/AppBrainActivity'),(4,7,'com/appbrain/AppBrainActivity'),(5,8,'com/appbrain/AppBrainService'),(6,13,'com/appbrain/AppBrainService'),(7,14,'com.google.android.apps.circles.platform.PlusOneActivity'),(8,15,'com/apperhand/device/android/AndroidSDKProvider'),(9,16,'com/apperhand/device/android/AndroidSDKProvider'),(10,18,'com/coolphotoframes/instaframe/MoreAppsActivity'),(11,19,'com/inoxpush/downloadticker/DownloadTickerService'),(12,20,'com/coolphotoframes/instaframe/HelpScreen'),(13,21,'com/inox/referrer/SendDataService'),(14,22,'com/coolphotoframes/instaframe/Rate'),(15,33,'com/coolphotoframes/instaframe/FrameScreen'),(16,35,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(17,37,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(18,39,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(19,40,'com/chartboost/sdk/CBDialogActivity'),(20,45,'com/coolphotoframes/instaframe/HelpScreen');
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
INSERT INTO `IData` VALUES (1,2,5),(2,9,13),(3,10,14),(4,11,15),(5,12,16),(6,17,18),(7,31,21),(8,32,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,3,'M_SERVER_URL'),(5,3,'USER_AGENT'),(6,3,'SERVICE_MODE'),(7,3,'FIRST_RUN'),(8,3,'DEVELOPER_ID'),(9,3,'APPLICATION_ID'),(10,4,'M_SERVER_URL'),(11,4,'USER_AGENT'),(12,4,'SERVICE_MODE'),(13,4,'FIRST_RUN'),(14,4,'DEVELOPER_ID'),(15,4,'(.*)'),(16,4,'APPLICATION_ID'),(17,5,'android.intent.extra.shortcut.NAME'),(18,5,'android.intent.extra.shortcut.ICON'),(19,5,'android.intent.extra.shortcut.INTENT'),(20,6,'src'),(21,6,'activity'),(22,7,'hash'),(23,7,'hash_last'),(24,7,'src'),(25,7,'activity'),(26,13,'event'),(27,13,'key'),(28,14,'com.google.circles.platform.intent.extra.ACTION'),(29,14,'(.*)'),(30,14,'com.google.circles.platform.intent.extra.ENTITY'),(31,14,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(32,15,'M_SERVER_URL'),(33,15,'USER_AGENT'),(34,15,'SERVICE_MODE'),(35,15,'FIRST_RUN'),(36,15,'DEVELOPER_ID'),(37,15,'APPLICATION_ID'),(38,16,'M_SERVER_URL'),(39,16,'USER_AGENT'),(40,16,'SERVICE_MODE'),(41,16,'FIRST_RUN'),(42,16,'DEVELOPER_ID'),(43,16,'APPLICATION_ID'),(44,23,'android.intent.extra.INTENT'),(45,24,'android.intent.extra.INTENT'),(46,25,'android.intent.extra.TITLE'),(47,25,'android.intent.extra.INTENT'),(48,26,'android.intent.extra.INTENT'),(49,27,'android.intent.extra.TITLE'),(50,27,'android.intent.extra.INTENT'),(51,28,'android.intent.extra.INTENT'),(52,29,'android.intent.extra.TITLE'),(53,29,'android.intent.extra.INTENT'),(54,30,'android.intent.extra.TITLE'),(55,30,'android.intent.extra.INTENT'),(56,33,'total'),(57,33,'layout_id'),(58,34,'android.intent.extra.shortcut.NAME'),(59,34,'android.intent.extra.shortcut.ICON'),(60,34,'android.intent.extra.shortcut.INTENT'),(61,35,'offerCount'),(62,36,'NULL-CONSTANT'),(63,36,'type'),(64,37,'singleoffer'),(65,37,'offerCount'),(66,38,'duplicate'),(67,38,'android.intent.extra.shortcut.NAME'),(68,38,'android.intent.extra.shortcut.ICON'),(69,38,'android.intent.extra.shortcut.INTENT'),(70,40,'bk_cfgo'),(71,40,'bk_type'),(72,41,'NULL-CONSTANT'),(73,41,'type'),(74,42,'NULL-CONSTANT'),(75,42,'type'),(76,43,'duplicate'),(77,43,'android.intent.extra.shortcut.NAME'),(78,43,'android.intent.extra.shortcut.ICON'),(79,43,'android.intent.extra.shortcut.INTENT'),(80,44,'NULL-CONSTANT'),(81,44,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,4),(6,6,2),(7,7,5),(8,8,6),(9,9,2),(10,10,6),(11,11,7),(12,13,6),(13,12,8),(14,12,2),(15,14,6),(16,15,9),(17,16,6),(18,17,10),(19,18,6),(20,19,2),(21,20,11),(22,21,13),(23,22,12),(24,23,14),(25,23,15),(26,23,16),(27,25,12),(28,24,17),(29,26,18),(30,27,19),(31,28,12),(32,29,12),(33,30,2),(34,31,1),(35,32,20),(36,33,21),(37,34,22),(38,35,12),(39,36,2),(40,37,12),(41,38,12),(42,39,23),(43,39,24),(44,40,12),(45,41,25),(46,42,25),(47,43,21),(48,44,26),(49,45,17),(50,46,27),(51,47,28),(52,48,12),(53,49,34),(54,49,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,6,1),(4,9,2),(5,12,3),(6,19,1),(7,22,4),(8,25,4),(9,28,4),(10,30,1),(11,35,4),(12,36,1),(13,40,4),(14,46,5),(15,47,5),(16,48,4);
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
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,10,'(.*)','(.*)'),(2,12,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.AlDiApps.StarryNightlite'),(2,4,'com.AlDiApps.StarryNightlite'),(3,6,'org.soft88.sushi'),(4,7,'org.soft88.sushi'),(5,8,'org.soft88.sushi'),(6,13,'org.soft88.sushi'),(7,14,'com.google.android.apps.plus'),(8,15,'org.soft88.sushi'),(9,16,'com.coolphotoframes.instaframe'),(10,18,'com.coolphotoframes.instaframe'),(11,19,'com.coolphotoframes.instaframe'),(12,20,'com.coolphotoframes.instaframe'),(13,21,'com.coolphotoframes.instaframe'),(14,22,'com.coolphotoframes.instaframe'),(15,33,'com.coolphotoframes.instaframe'),(16,35,'com.coolphotoframes.instaframe'),(17,37,'com.coolphotoframes.instaframe'),(18,39,'com.coolphotoframes.instaframe'),(19,40,'com.coolphotoframes.instaframe'),(20,45,'com.coolphotoframes.instaframe');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,4,0),(3,9,0),(4,21,0),(5,24,0),(6,30,0),(7,31,0),(8,32,0),(9,33,0),(10,35,0),(11,34,0),(12,33,0),(13,36,0),(14,38,0),(15,39,0),(16,41,0),(17,43,0),(18,45,0),(19,47,0),(20,50,0),(21,52,0),(22,51,0),(23,52,0),(24,60,0),(25,62,0),(26,61,0),(27,61,0),(28,66,0),(29,67,0),(30,73,0),(31,78,0),(32,79,0),(33,81,0),(34,82,0),(35,86,0),(36,87,0),(37,86,0),(38,91,0),(39,94,0),(40,86,0),(41,100,0),(42,100,0),(43,103,0),(44,104,0),(45,105,0),(46,110,0),(47,110,0),(48,111,0),(49,112,0);
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
INSERT INTO `Intents` VALUES (1,5,1,0),(2,6,1,0),(3,7,0,0),(4,7,0,0),(5,9,1,0),(6,11,0,0),(7,11,0,0),(8,13,0,0),(9,16,1,0),(10,16,1,0),(11,16,1,0),(12,16,1,0),(13,17,0,0),(14,18,0,0),(15,20,0,0),(16,21,0,0),(17,22,1,0),(18,23,0,0),(19,25,0,0),(20,27,0,0),(21,28,0,0),(22,29,0,0),(23,30,1,0),(24,30,1,0),(25,30,1,0),(26,30,1,0),(27,30,1,0),(28,30,1,0),(29,30,1,0),(30,30,1,0),(31,31,1,0),(32,32,1,0),(33,33,0,0),(34,36,1,0),(35,37,0,0),(36,38,1,0),(37,40,0,0),(38,44,1,0),(39,45,0,0),(40,46,0,0),(41,47,1,0),(42,47,1,0),(43,48,1,0),(44,49,1,0),(45,50,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(23,'android.permission.ACCESS_FINE_LOCATION'),(33,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(26,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(36,'android.permission.BLUETOOTH'),(37,'android.permission.BLUETOOTH_ADMIN'),(30,'android.permission.CALL_PHONE'),(27,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(35,'android.permission.DISABLE_KEYGUARD'),(32,'android.permission.GET_ACCOUNTS'),(10,'android.permission.INTERNET'),(29,'android.permission.PROCESS_OUTGOING_CALLS'),(31,'android.permission.READ_CONTACTS'),(28,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_PHONE_STATE'),(21,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.SET_PREFERRED_APPLICATIONS'),(24,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SETTINGS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(12,'com.fede.launcher.permission.READ_SETTINGS'),(38,'com.google.android.c2dm.permission.SEND'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(16,'com.motorola.launcher.permission.READ_SETTINGS'),(13,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'http://aldiapps.blogspot.com/',NULL,NULL,NULL),(6,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(24,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,8,6),(6,8,7),(7,10,8),(8,12,9),(9,14,10),(10,15,11),(11,15,12),(12,19,17),(13,24,19),(14,26,20),(15,34,23),(16,34,24),(17,35,25),(18,39,26),(19,42,27),(20,43,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,10),(28,2,12),(29,2,13),(30,2,14),(31,3,1),(32,2,15),(33,3,2),(34,2,16),(35,3,3),(36,2,19),(37,3,4),(38,2,21),(39,3,5),(40,2,20),(41,3,6),(42,2,23),(43,3,7),(44,2,22),(45,3,8),(46,2,25),(47,3,9),(48,2,24),(49,3,10),(50,2,26),(51,3,12),(52,3,13),(53,3,14),(54,3,15),(55,3,16),(56,3,19),(57,3,21),(58,3,20),(59,3,23),(60,3,22),(61,4,1),(62,3,25),(63,4,2),(64,3,24),(65,4,3),(66,3,26),(67,4,4),(68,4,5),(69,4,6),(70,4,7),(71,4,8),(72,4,9),(73,4,10),(74,4,11),(75,4,12),(76,4,13),(77,4,14),(78,4,15),(79,4,17),(80,4,16),(81,4,19),(82,4,21),(83,4,20),(84,4,23),(85,4,25),(86,4,24),(87,4,27),(88,4,26),(89,5,1),(90,5,2),(91,5,3),(92,5,4),(93,5,5),(94,5,6),(95,5,7),(96,5,8),(97,5,9),(98,5,10),(99,5,12),(100,5,13),(101,5,14),(102,5,15),(103,5,16),(104,5,25),(105,5,26),(106,6,1),(107,6,2),(108,6,3),(109,6,4),(110,6,5),(111,6,6),(112,6,7),(113,6,8),(114,6,9),(115,6,10),(116,6,11),(117,6,12),(118,6,13),(119,6,14),(120,6,15),(121,6,17),(122,6,16),(123,6,19),(124,6,21),(125,6,20),(126,6,23),(127,6,25),(128,6,26),(129,6,29),(130,6,28),(131,6,31),(132,6,30),(133,6,32),(134,6,33),(135,7,1),(136,7,2),(137,7,3),(138,7,4),(139,7,5),(140,7,6),(141,7,7),(142,7,8),(143,7,9),(144,7,10),(145,7,11),(146,7,12),(147,7,13),(148,7,15),(149,7,17),(150,7,16),(151,7,19),(152,7,21),(153,7,20),(154,7,23),(155,7,25),(156,7,24),(157,7,26),(158,7,31),(159,7,34),(160,7,35),(161,7,32),(162,7,33),(163,7,36),(164,7,37);
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

-- Dump completed on 2015-10-09  0:40:47
