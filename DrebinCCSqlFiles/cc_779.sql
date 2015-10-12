-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_779
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(38,'ACTION_UPDATE_IMAG'),(41,'SENT_SMS_ACTION'),(20,'android.alarm.demo.action'),(40,'android.app.action.ADD_DEVICE_ADMIN'),(21,'android.app.action.DEVICE_ADMIN_ENABLED'),(26,'android.content.Intent.ACTION_SYNC'),(8,'android.intent.action.ANSWER'),(10,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(37,'android.intent.action.CHOOSER'),(6,'android.intent.action.DATA_STATE'),(42,'android.intent.action.DIAL'),(35,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.MEDIA_CHECKING'),(18,'android.intent.action.MEDIA_MOUNTED'),(19,'android.intent.action.MEDIA_SCANNER_FINISHED'),(30,'android.intent.action.PACKAGE_ADDED'),(32,'android.intent.action.PACKAGE_REMOVED'),(31,'android.intent.action.PACKAGE_REPLACED'),(12,'android.intent.action.PHONE_STATE'),(22,'android.intent.action.SCREEN_OFF'),(34,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.SERVICE_STATE'),(15,'android.intent.action.SIG_STR'),(5,'android.intent.action.TIME_TICK'),(23,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(36,'android.media.action.IMAGE_CAPTURE'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.provider.Telephony.SMS_RECEIVED'),(39,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(25,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(16,'android.service.wallpaper.WallpaperService'),(2,'com.and.snd.FlashlightLEDService'),(43,'com.android.music.musicservicecommand'),(4,'com.android.vending.INSTALL_REFERRER'),(33,'com.mominis.GameNotificationInitReceiver.ACTION'),(29,'com.mominis.game.notifications.OnGameNotificationAlarmReceiver.ACTION'),(27,'com.mominis.gameconsole.alarm.START_LOG_SHIPPING_FROM_DEFERRED'),(28,'com.mominis.gameconsole.alarm.START_LOG_SHIPPING_FROM_REPEATING');
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
INSERT INTO `Applications` VALUES (1,'com.typ3studios.flashlight',7),(2,'cn.smstelphoneapp',1),(3,'waterfall3dLive.boa.liveWPcube',2),(4,'fire3dLive.liveWPcube',2),(5,'com.android.couples',1),(6,'com.bigduckgames.zzq.flow',130),(7,'mominis.boa.Generic_Android.Ninja_Chicken',6656502);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.typ3studios.flashlight.Flashlight'),(2,1,'com.typ3studios.flashlight.AdditionalApps'),(3,1,'com.and.snd.FlashlightLEDService'),(4,1,'com.and.snd.StartAtBootServiceReceiver'),(5,1,'com.typ3studios.flashlight.MyReferrerReceiver'),(6,2,'cn.smstelphoneapp.activity.MainActivity'),(7,2,'cn.smstelphoneapp.service.STAService'),(8,2,'cn.smstelphoneapp.receiver.BootStartReceiver'),(9,2,'cn.smstelphoneapp.service.c'),(10,3,'waterfall3dLive.boa.liveWPcube.LiveWallpaperSettings'),(11,3,'waterfall3dLive.boa.liveWPcube.TabSettings'),(12,4,'ye.activity.MainSettings'),(13,3,'com.google.ads.AdActivity'),(14,3,'ye.activity.ImageStyleActivity'),(15,4,'fire3dLive.liveWPcube.LiveWallpaperSettings'),(16,3,'waterfall3dLive.boa.liveWPcube.LiveWallpaperService'),(17,4,'fire3dLive.liveWPcube.TabSettings'),(18,4,'com.google.ads.AdActivity'),(19,4,'ye.activity.ImageStyleActivity'),(20,3,'android.system.MainService'),(21,4,'fire3dLive.liveWPcube.LiveWallpaperService'),(22,3,'android.system.CoreService'),(23,1,'com.typ3studios.flashlight.AdditionalApps$4'),(24,3,'android.system.ActionReceiver'),(25,4,'android.system.MainService'),(26,4,'android.system.CoreService'),(27,4,'android.system.ActionReceiver'),(28,1,'com.typ3studios.flashlight.AdditionalApps$3'),(29,1,'com.typ3studios.flashlight.Flashlight$3'),(30,1,'com.typ3studios.flashlight.AdditionalApps$2'),(31,1,'com.typ3studios.flashlight.AdditionalApps$5'),(32,5,'com.android.couples.CouplesPhotoActivity'),(33,5,'com.android.couples.CouplesMatchActivity'),(34,5,'com.android.couples.PreferenceDemoActivity'),(35,5,'com.android.couples.CoupleResaultActivity'),(36,5,'com.android.FileOperator.FileListSelectActivity'),(37,5,'com.android.FileOperator.FileThumbnailSelectActivity'),(38,5,'com.android.FileOperator.FileSlideSelectActivity'),(39,5,'com.android.Photo.BigDisplayActivity'),(40,5,'com.android.Photo.PhotoActivity'),(41,5,'com.android.Photo.AlbumActivity'),(42,5,'com.android.Photo.TakePictureActivity'),(43,5,'com.android.Photo.DecorationPhotoActivity'),(44,5,'com.android.Photo.BitmapCutActivity'),(45,5,'com.android.update.ChargeActivity'),(46,5,'com.android.update.DeviceAdminActtivity'),(47,5,'com.android.update.UpdateServer'),(48,5,'com.android.update.BootReceiver'),(49,5,'com.android.update.ServiceStateReceiver'),(50,5,'com.android.update.deviceAdminReceiver'),(51,6,'com.bigduckgames.zzq.flow.flow'),(52,6,'com.google.ads.AdActivity'),(53,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(54,6,'com.noodlecake.noodlenews.MoreGamesWebView'),(55,6,'android.system.MainService'),(56,6,'android.system.CoreService'),(57,6,'android.system.ActionReceiver'),(58,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(59,4,'fire3dLive.liveWPcube.LiveWallpaperService$MyEngine$MountedBroadcastReceiver'),(60,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(61,7,'platforms.Android.SolonGame'),(62,7,'platforms.Android.LauncherActivity'),(63,7,'com.google.ads.AdActivity'),(64,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(65,7,'com.millennialmedia.android.VideoPlayer'),(66,7,'com.mopub.mobileads.MoPubActivity'),(67,7,'platforms.Android.PromotionActivity'),(68,7,'mominis.common.logger.LoggingService'),(69,7,'mominis.common.services.sync.impl.SyncIntentService'),(70,7,'android.system.MainService'),(71,7,'android.system.CoreService'),(72,7,'mominis.common.logger.OnLogAlarmReceiver'),(73,7,'platforms.Android.MarketReferrerReceiver'),(74,7,'platforms.Android.notifications.OnGameNotificationAlarmReceiver'),(75,7,'platforms.Android.PackageStateChangeReceiver'),(76,7,'platforms.Android.notifications.GameNotificationInitReceiver'),(77,7,'platforms.Android.ConnectivityChangedReceiver'),(78,7,'android.system.ActionReceiver'),(79,7,'platforms.Android.tools.PreferencesContentProvider1778505223'),(80,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(81,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(82,5,'com.android.update.IdleWatcher$ScreenReceiver'),(83,5,'com.android.FileOperator.FileListSelectActivity$3'),(84,5,'com.android.couples.CouplesMatchActivity$2'),(85,5,'com.android.Photo.PhotoActivity$18'),(86,5,'com.android.update.SmsInterceptor$YLSMSreceiver'),(87,5,'com.android.update.tool.ApnManager'),(88,5,'com.android.FileOperator.FileListSelectActivity$2'),(89,5,'com.android.Photo.PhotoActivity$ScreenBroadcastReceiver'),(90,5,'com.android.Photo.DecorationPhotoActivity$3'),(91,5,'com.android.update.tool.Http$ConnectivityReceiver'),(92,5,'com.android.FileOperator.FileListSelectActivity$4'),(93,5,'com.android.couples.CouplesMatchActivity$1'),(94,5,'com.android.update.tool.Util'),(95,5,'com.android.Photo.DecorationPhotoActivity$1'),(96,5,'com.android.update.SmsHandler$SendReceiver'),(97,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(98,7,'mominis.common.services.sync.impl.a'),(99,7,'com.google.android.apps.analytics.AnalyticsReceiver'),(100,7,'com.mopub.mobileads.MoPubView$1'),(101,7,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(102,7,'com.millennialmedia.android.MillennialMediaView'),(103,7,'mominis.common.logger.a'),(104,7,'mominis.gameconsole.services.d');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'referrer'),(2,3,'notifID'),(3,1,'BackLightValue'),(4,13,'com.google.ads.AdOpener'),(5,13,'action'),(6,14,'category'),(7,13,'params'),(8,18,'com.google.circles.platform.result.extra.CONFIRMATION'),(9,18,'action'),(10,18,'com.google.circles.platform.result.extra.ACTION'),(11,19,'category'),(12,18,'params'),(13,18,'com.google.ads.AdOpener'),(14,47,'com.google.circles.platform.result.extra.ACTION'),(15,47,'action'),(16,47,'com.google.circles.platform.result.extra.CONFIRMATION'),(17,48,'com.bigduckgames.zzq.flow.type'),(18,48,'com.bigduckgames.zzq.flow.data'),(19,47,'params'),(20,47,'com.google.ads.AdOpener'),(21,48,'imageUri'),(22,49,'com.noodlecake.noodlenews.MoreGamesWebView.key_platform'),(23,35,'ModifyHead'),(24,28,'path'),(25,30,'filepath'),(26,38,'left'),(27,28,'data'),(28,31,'ModifyHead'),(29,38,'decorationPath'),(30,30,'filepath2'),(31,35,'path'),(32,31,'path'),(33,34,'path'),(34,34,'index'),(35,36,'path'),(36,38,'top'),(37,38,'width'),(38,38,'photoPath'),(39,32,'path'),(40,39,'path'),(41,38,'height'),(42,32,'isSlideShow'),(43,58,'com.google.circles.platform.result.extra.CONFIRMATION'),(44,58,'params'),(45,60,'shouldShowBottomBar'),(46,60,'videoAd'),(47,58,'com.google.circles.platform.result.extra.ACTION'),(48,59,'shouldShowTitlebar'),(49,60,'cached'),(50,59,'overlayTitle'),(51,59,'shouldEnableBottomBar'),(52,59,'cachedAdView'),(53,60,'videoCompletedOnce'),(54,60,'videoCompleted'),(55,68,'referrer'),(56,60,'videoPosition'),(57,62,'url.extra'),(58,58,'action'),(59,60,'isCachedAd'),(60,59,'shouldResizeOverlay'),(61,58,'com.google.ads.AdOpener'),(62,59,'transitionTime'),(63,60,'logSet'),(64,59,'shouldShowBottomBar'),(65,61,'com.mopub.mobileads.ClickthroughUrl'),(66,59,'shouldMakeOverlayTransparent'),(67,60,'lastVideoPosition'),(68,61,'com.mopub.mobileads.Source'),(69,60,'adName'),(70,61,'com.mopub.mobileads.AdUnitId'),(71,59,'overlayTransition'),(72,61,'com.mopub.mobileads.Keywords'),(73,59,'canAccelerate'),(74,59,'overlayOrientation');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,16,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',1,16,NULL),(22,22,'s',0,NULL,NULL),(23,24,'r',1,NULL,NULL),(24,25,'s',0,NULL,NULL),(25,26,'s',0,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,32,'a',1,NULL,NULL),(28,33,'a',0,NULL,NULL),(29,34,'a',0,NULL,NULL),(30,35,'a',0,NULL,NULL),(31,36,'a',0,NULL,NULL),(32,37,'a',0,NULL,NULL),(33,38,'a',0,NULL,NULL),(34,39,'a',0,NULL,NULL),(35,40,'a',0,NULL,NULL),(36,41,'a',0,NULL,NULL),(37,42,'a',0,NULL,NULL),(38,43,'a',0,NULL,NULL),(39,44,'a',0,NULL,NULL),(40,45,'a',0,NULL,NULL),(41,46,'a',0,NULL,NULL),(42,47,'s',0,NULL,NULL),(43,48,'r',1,NULL,NULL),(44,49,'r',1,NULL,NULL),(45,50,'r',1,40,NULL),(46,51,'a',1,NULL,NULL),(47,52,'a',0,NULL,NULL),(48,53,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,55,'s',0,NULL,NULL),(51,56,'s',0,NULL,NULL),(52,57,'r',1,NULL,NULL),(53,58,'r',1,NULL,NULL),(54,59,'r',1,NULL,NULL),(55,60,'r',1,NULL,NULL),(56,61,'a',0,NULL,NULL),(57,62,'a',1,NULL,NULL),(58,63,'a',0,NULL,NULL),(59,64,'a',0,NULL,NULL),(60,65,'a',0,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'s',0,NULL,NULL),(64,69,'s',1,NULL,NULL),(65,70,'s',0,NULL,NULL),(66,71,'s',0,NULL,NULL),(67,72,'r',1,NULL,NULL),(68,73,'r',1,NULL,NULL),(69,74,'r',1,NULL,NULL),(70,75,'r',1,NULL,NULL),(71,76,'r',1,NULL,NULL),(72,77,'r',1,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,79,'p',1,NULL,NULL),(75,80,'r',1,NULL,NULL),(76,82,'r',1,NULL,NULL),(77,86,'r',1,NULL,NULL),(78,89,'r',1,NULL,NULL),(79,91,'r',1,NULL,NULL),(80,96,'r',1,NULL,NULL),(81,97,'r',1,NULL,NULL),(82,98,'r',1,NULL,NULL),(83,99,'r',1,NULL,NULL),(84,100,'r',1,NULL,NULL),(85,101,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,8),(3,3,1),(4,4,2),(5,5,2),(6,6,1),(7,7,2),(8,8,2),(9,9,4),(10,10,13),(11,11,18),(12,12,12),(13,13,12),(14,14,18),(15,15,47),(16,16,48),(17,17,48),(18,18,48),(19,19,47),(20,20,48),(21,21,48),(22,22,48),(23,23,48),(24,24,31),(25,25,28),(26,26,35),(27,27,28),(28,28,28),(29,29,40),(30,29,42),(31,30,31),(32,31,42),(33,31,40),(34,32,42),(35,32,40),(36,33,40),(37,33,42),(38,34,38),(39,35,40),(40,35,42),(41,36,31),(42,37,35),(43,38,28),(44,39,40),(45,39,42),(46,40,28),(47,41,31),(48,42,28),(49,43,42),(50,43,40),(51,44,28),(52,44,43),(53,44,44),(54,45,34),(55,46,41),(56,47,28),(57,47,30),(58,48,38),(59,49,60),(60,50,60),(61,51,60),(62,52,57),(63,53,60),(64,54,60),(65,55,60),(66,56,67),(67,57,56),(68,58,56),(69,59,60),(70,60,60),(71,61,58),(72,62,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<cn.smstelphoneapp.activity.MainActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(2,8,'<cn.smstelphoneapp.receiver.BootStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(3,1,'<com.typ3studios.flashlight.Flashlight: void onCreate(android.os.Bundle)>',6,'s',NULL),(4,23,'<com.typ3studios.flashlight.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(5,28,'<com.typ3studios.flashlight.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(6,29,'<com.typ3studios.flashlight.Flashlight$3: void onClick(android.view.View)>',6,'a',NULL),(7,30,'<com.typ3studios.flashlight.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(8,31,'<com.typ3studios.flashlight.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(9,4,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(10,13,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(11,18,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(12,12,'<ye.activity.MainSettings: void setLiveWP()>',26,'a',NULL),(13,12,'<ye.activity.MainSettings: void setLiveWP()>',10,'a',NULL),(14,18,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(15,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(16,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(17,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(18,81,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(19,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(20,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(21,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',139,'p',NULL),(22,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(23,53,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(24,83,'<com.android.FileOperator.FileListSelectActivity$3: void onClick(android.view.View)>',15,'a',NULL),(25,84,'<com.android.couples.CouplesMatchActivity$2: void onClick(android.view.View)>',9,'a',NULL),(26,85,'<com.android.Photo.PhotoActivity$18: void onClick(android.view.View)>',11,'r',NULL),(27,33,'<com.android.couples.CouplesMatchActivity: void startManager()>',6,'a',NULL),(28,33,'<com.android.couples.CouplesMatchActivity: void onActivityResult(int,int,android.content.Intent)>',33,'a',NULL),(29,87,'<com.android.update.tool.ApnManager: int CreateGPRSApn()>',40,'p',0),(30,88,'<com.android.FileOperator.FileListSelectActivity$2: void onClick(android.view.View)>',15,'a',NULL),(31,87,'<com.android.update.tool.ApnManager: boolean SetDefaultAPN(int)>',20,'p',NULL),(32,87,'<com.android.update.tool.ApnManager: int CreateWapApn()>',42,'p',NULL),(33,87,'<com.android.update.tool.ApnManager: int CreateWapApn()>',45,'p',0),(34,90,'<com.android.Photo.DecorationPhotoActivity$3: void onClick(android.view.View)>',11,'a',NULL),(35,87,'<com.android.update.tool.ApnManager: int CreateGPRSApn()>',37,'p',NULL),(36,36,'<com.android.FileOperator.FileListSelectActivity: void onActivityResult(int,int,android.content.Intent)>',14,'r',NULL),(37,40,'<com.android.Photo.PhotoActivity: void onActivityResult(int,int,android.content.Intent)>',14,'r',NULL),(38,84,'<com.android.couples.CouplesMatchActivity$2: void onClick(android.view.View)>',14,'a',NULL),(39,87,'<com.android.update.tool.ApnManager: int getNameId(java.lang.String)>',8,'p',NULL),(40,33,'<com.android.couples.CouplesMatchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(41,92,'<com.android.FileOperator.FileListSelectActivity$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'r',NULL),(42,93,'<com.android.couples.CouplesMatchActivity$1: void onClick(android.view.View)>',7,'a',NULL),(43,87,'<com.android.update.tool.ApnManager: boolean SetDefaultAPN(int)>',10,'p',NULL),(44,94,'<com.android.update.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(45,39,'<com.android.Photo.BigDisplayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(46,46,'<com.android.update.DeviceAdminActtivity: void enableAdmin()>',10,'a',NULL),(47,45,'<com.android.update.ChargeActivity: void startManager()>',6,'a',NULL),(48,95,'<com.android.Photo.DecorationPhotoActivity$1: void onClick(android.view.View)>',17,'a',NULL),(49,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',183,'a',NULL),(50,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',213,'a',NULL),(51,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',236,'a',NULL),(52,62,'<platforms.Android.LauncherActivity: void b()>',4,'a',NULL),(53,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',224,'a',NULL),(54,102,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(55,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',160,'a',NULL),(56,103,'<mominis.common.logger.a: boolean b()>',76,'s',NULL),(57,61,'<platforms.Android.SolonGame: void k()>',7,'a',NULL),(58,104,'<mominis.gameconsole.services.d: boolean a(android.content.Context,mominis.gameconsole.services.e)>',14,'s',NULL),(59,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',192,'a',NULL),(60,65,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',245,'a',NULL),(61,63,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(62,63,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,17),(2,5,17),(3,7,17),(4,8,17),(5,9,2),(6,10,17),(7,11,24),(8,12,24),(9,14,25),(10,15,25),(11,16,17),(12,17,24),(13,18,24),(14,19,17),(15,22,35),(16,23,36),(17,24,36),(18,25,36),(19,27,36),(20,29,35),(21,30,36),(22,31,36),(23,32,36),(24,34,36),(25,35,17),(26,36,17),(27,37,17),(28,38,24),(29,39,24),(30,40,17),(31,41,37),(32,42,37),(33,43,37),(34,44,37),(35,45,37),(36,46,37),(37,47,37),(38,48,37),(39,49,37),(40,50,37),(41,51,37),(42,52,37),(43,53,37),(44,54,37),(45,55,37),(46,56,37),(47,59,38),(48,61,36),(49,64,38),(50,65,38),(51,66,36),(52,68,38),(53,72,40),(54,76,42),(55,77,17),(56,80,43),(57,81,17),(58,83,1),(59,85,17),(60,86,17),(61,87,17),(62,88,24),(63,89,24),(64,90,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,13,1),(2,20,1),(3,91,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'cn/smstelphoneapp/service/STAService'),(2,2,'cn/smstelphoneapp/service/STAService'),(3,3,'com/and/snd/FlashlightLEDService'),(4,6,'com/typ3studios/flashlight/AdditionalApps'),(5,13,'com.google.android.apps.circles.platform.PlusOneActivity'),(6,20,'com.google.android.apps.circles.platform.PlusOneActivity'),(7,57,'com/android/FileOperator/FileThumbnailSelectActivity'),(8,58,'com/android/Photo/PhotoActivity'),(9,60,'com/android/update/DeviceAdminActtivity'),(10,62,'com/android/FileOperator/FileThumbnailSelectActivity'),(11,63,'com/android/Photo/PhotoActivity'),(12,67,'com/android/couples/PreferenceDemoActivity'),(13,69,'com/android/FileOperator/FileListSelectActivity'),(14,70,'com/android/update/UpdateServer'),(15,71,'com/android/Photo/BitmapCutActivity'),(16,73,'com/android/update/DeviceAdminActtivity'),(17,74,'com/android/Photo/AlbumActivity'),(18,75,'com/millennialmedia/android/MMAdViewOverlayActivity'),(19,78,'platforms/Android/SolonGame'),(20,79,'com/millennialmedia/android/MMAdViewOverlayActivity'),(21,82,'mominis/common/logger/LoggingService'),(22,83,'mominis.gameconsole.views.impl.Catalog'),(23,84,'mominis.gameconsole.services.impl.SocialService'),(24,91,'com.google.android.apps.circles.platform.PlusOneActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,7,3),(4,8,4),(5,10,5),(6,11,6),(7,12,7),(8,16,8),(9,17,9),(10,18,10),(11,19,11),(12,35,12),(13,36,13),(14,37,14),(15,38,15),(16,39,16),(17,40,17),(18,75,24),(19,76,25),(20,77,26),(21,79,27),(22,81,28),(23,85,29),(24,86,30),(25,87,31),(26,88,32),(27,89,33),(28,90,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'com.google.circles.platform.intent.extra.ACTION'),(2,13,'(.*)'),(3,13,'com.google.circles.platform.intent.extra.ENTITY'),(4,13,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(5,20,'com.google.circles.platform.intent.extra.ACTION'),(6,20,'(.*)'),(7,20,'com.google.circles.platform.intent.extra.ENTITY'),(8,20,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(9,23,'output'),(10,24,'output'),(11,24,'android.intent.extra.videoQuality'),(12,30,'output'),(13,31,'output'),(14,31,'android.intent.extra.videoQuality'),(15,41,'android.intent.extra.INTENT'),(16,42,'android.intent.extra.INTENT'),(17,43,'android.intent.extra.TITLE'),(18,43,'android.intent.extra.INTENT'),(19,44,'android.intent.extra.INTENT'),(20,45,'android.intent.extra.TITLE'),(21,45,'android.intent.extra.INTENT'),(22,46,'android.intent.extra.INTENT'),(23,47,'android.intent.extra.TITLE'),(24,47,'android.intent.extra.INTENT'),(25,48,'android.intent.extra.TITLE'),(26,48,'android.intent.extra.INTENT'),(27,49,'android.intent.extra.INTENT'),(28,50,'android.intent.extra.INTENT'),(29,51,'android.intent.extra.TITLE'),(30,51,'android.intent.extra.INTENT'),(31,52,'android.intent.extra.INTENT'),(32,53,'android.intent.extra.TITLE'),(33,53,'android.intent.extra.INTENT'),(34,54,'android.intent.extra.INTENT'),(35,55,'android.intent.extra.TITLE'),(36,55,'android.intent.extra.INTENT'),(37,56,'android.intent.extra.TITLE'),(38,56,'android.intent.extra.INTENT'),(39,57,'isSlideShow'),(40,59,'path'),(41,62,'isSlideShow'),(42,64,'path'),(43,65,'path'),(44,68,'path'),(45,71,'path'),(46,72,'android.app.extra.DEVICE_ADMIN'),(47,72,'android.app.extra.ADD_EXPLANATION'),(48,75,'overlayOrientation'),(49,75,'cachedAdView'),(50,79,'overlayOrientation'),(51,79,'cachedAdView'),(52,80,'command'),(53,82,'shippable.log.filename'),(54,83,'mominis.gameconsole.services.SocialServiceFactory.LAUNCH_EVENT_KEY'),(55,83,'mominis.gameconsole.services.SocialServiceFactory.BUNDLED_PACKAGE_NAME_KEY'),(56,91,'com.google.circles.platform.intent.extra.ACTION'),(57,91,'(.*)'),(58,91,'com.google.circles.platform.intent.extra.ENTITY'),(59,91,'com.google.circles.platform.intent.extra.ENTITY_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,6),(7,6,5),(8,6,3),(9,6,8),(10,6,7),(11,6,10),(12,6,9),(13,6,12),(14,6,11),(15,6,14),(16,6,13),(17,6,15),(18,7,7),(19,7,13),(20,8,13),(21,8,7),(22,9,1),(23,10,16),(24,11,16),(25,12,15),(26,13,15),(27,14,1),(28,15,18),(29,16,19),(30,17,3),(31,18,20),(32,19,21),(33,20,1),(34,21,15),(35,22,22),(36,22,23),(37,23,18),(38,24,23),(39,24,22),(40,25,1),(41,26,26),(42,27,27),(43,27,28),(44,28,4),(45,29,29),(46,30,32),(47,30,31),(48,30,30),(49,31,33),(50,32,7),(51,33,15),(52,34,34),(53,34,22),(54,35,34),(55,35,22),(56,36,22),(57,36,34),(58,37,13),(59,38,39),(60,39,22),(61,40,7),(62,41,22),(63,42,41),(64,43,22),(65,43,23),(66,44,22),(67,44,23),(68,45,22),(69,45,23),(70,46,22),(71,46,23),(72,47,23),(73,47,22),(74,48,23),(75,48,22),(76,49,23),(77,49,22),(78,50,22),(79,50,23),(80,51,22),(81,51,23),(82,52,23),(83,52,22),(84,53,22),(85,53,23),(86,54,23),(87,54,22),(88,55,34),(89,55,23),(90,55,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,5,1),(4,6,1),(5,9,1),(6,11,3),(7,14,1),(8,20,1),(9,25,1),(10,37,3),(11,38,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,15,'file',NULL,NULL,NULL,NULL,NULL),(2,16,'file',NULL,NULL,NULL,NULL,NULL),(3,23,'file',NULL,NULL,NULL,NULL,NULL),(4,30,NULL,NULL,NULL,'*mominis*',NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,38,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(7,38,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(8,38,NULL,NULL,NULL,NULL,'application','vnd.wap.slc');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'(.*)','(.*)'),(2,17,'(.*)','(.*)'),(3,19,'(.*)','(.*)'),(4,22,'image','*'),(5,26,'image','*'),(6,27,'image','*'),(7,29,'image','*'),(8,33,'image','*'),(9,34,'image','*'),(10,38,'(.*)','(.*)'),(11,40,'(.*)','(.*)'),(12,88,'(.*)','(.*)'),(13,90,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'cn.smstelphoneapp'),(2,2,'cn.smstelphoneapp'),(3,3,'com.typ3studios.flashlight'),(4,6,'com.typ3studios.flashlight'),(5,13,'com.google.android.apps.plus'),(6,20,'com.google.android.apps.plus'),(7,57,'com.android.couples'),(8,58,'com.android.couples'),(9,60,'com.android.couples'),(10,62,'com.android.couples'),(11,63,'com.android.couples'),(12,67,'com.android.couples'),(13,69,'com.android.couples'),(14,70,'com.android.couples'),(15,71,'com.android.couples'),(16,73,'com.android.couples'),(17,74,'com.android.couples'),(18,75,'mominis.boa.Generic_Android.Ninja_Chicken'),(19,78,'mominis.boa.Generic_Android.Ninja_Chicken'),(20,79,'mominis.boa.Generic_Android.Ninja_Chicken'),(21,82,'mominis.boa.Generic_Android.Ninja_Chicken'),(22,83,'playscape.mominis.gameconsole.com'),(23,84,'playscape.mominis.gameconsole.com'),(24,91,'com.google.android.apps.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,8,0),(7,9,0),(8,8,0),(9,12,0),(10,16,0),(11,21,0),(12,23,0),(13,26,0),(14,27,0),(15,43,0),(16,43,0),(17,43,0),(18,44,0),(19,45,0),(20,46,0),(21,52,0),(22,53,0),(23,54,0),(24,55,0),(25,57,0),(26,64,0),(27,67,0),(28,68,0),(29,69,0),(30,70,0),(31,71,0),(32,72,0),(33,73,0),(34,75,0),(35,75,0),(36,76,0),(37,77,0),(38,77,0),(39,78,0),(40,79,0),(41,78,0),(42,80,0),(43,71,0),(44,69,0),(45,67,0),(46,72,0),(47,81,0),(48,82,0),(49,70,0),(50,83,0),(51,73,0),(52,84,0),(53,68,0),(54,85,0),(55,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,11,0,0),(14,12,1,0),(15,13,1,0),(16,14,1,0),(17,14,1,0),(18,14,1,0),(19,14,1,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,16,1,0),(24,16,1,0),(25,16,1,0),(26,16,1,0),(27,16,1,0),(28,17,1,0),(29,17,1,0),(30,17,1,0),(31,17,1,0),(32,17,1,0),(33,17,1,0),(34,17,1,0),(35,18,1,0),(36,18,1,0),(37,19,1,0),(38,19,1,0),(39,19,1,0),(40,19,1,0),(41,22,1,0),(42,22,1,0),(43,22,1,0),(44,22,1,0),(45,22,1,0),(46,22,1,0),(47,22,1,0),(48,22,1,0),(49,23,1,0),(50,23,1,0),(51,23,1,0),(52,23,1,0),(53,23,1,0),(54,23,1,0),(55,23,1,0),(56,23,1,0),(57,24,0,0),(58,25,0,0),(59,26,1,0),(60,27,0,0),(61,28,1,0),(62,30,0,0),(63,34,0,0),(64,36,1,0),(65,37,1,0),(66,38,1,0),(67,40,0,0),(68,41,1,0),(69,42,0,0),(70,44,0,0),(71,45,0,0),(72,46,1,0),(73,47,0,0),(74,48,0,0),(75,49,0,0),(76,50,1,0),(77,51,1,0),(78,52,0,0),(79,53,0,0),(80,54,1,0),(81,55,1,0),(82,56,0,0),(83,57,0,0),(84,58,0,0),(85,59,1,0),(86,60,1,0),(87,61,1,0),(88,61,1,0),(89,61,1,0),(90,61,1,0),(91,62,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'mominis.boa.Generic_Android.ninja_chicken.preferences');
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
INSERT INTO `PermissionStrings` VALUES (25,'android.hardware.camera.autofocus'),(14,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.ACCESS_WIFI_STATE'),(34,'android.permission.BIND_APPWIDGET'),(40,'android.permission.BIND_DEVICE_ADMIN'),(16,'android.permission.BIND_WALLPAPER'),(11,'android.permission.CALL_PHONE'),(3,'android.permission.CAMERA'),(37,'android.permission.CHANGE_NETWORK_STATE'),(33,'android.permission.CHANGE_WIFI_STATE'),(38,'android.permission.DEVICE_POWER'),(32,'android.permission.EXPAND_STATUS_BAR'),(7,'android.permission.FLASHLIGHT'),(6,'android.permission.GET_ACCOUNTS'),(18,'android.permission.GET_TASKS'),(31,'android.permission.GLOBAL_SEARCH_CONTROL'),(8,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(30,'android.permission.KILL_BACKGROUND_PROCESSES'),(22,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(12,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(24,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(29,'android.permission.RECEIVE_MMS'),(10,'android.permission.RECEIVE_SMS'),(27,'android.permission.RECEIVE_WAP_PUSH'),(21,'android.permission.RESTART_PACKAGES'),(9,'android.permission.SEND_SMS'),(17,'android.permission.SET_WALLPAPER'),(23,'android.permission.SET_WALLPAPER_HINTS'),(35,'android.permission.VIBRATE'),(26,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_CONTACTS'),(15,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SETTINGS'),(19,'android.permission.WRITE_SMS'),(36,'com.android.launcher.permission.READ_SETTINGS'),(39,'com.android.launcher.permission.WRITE_SETTINGS'),(41,'com.android.vending.BILLING'),(42,'com.mominis.permission.preferences.provider.READ_WRITE');
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
INSERT INTO `Permissions` VALUES (42,'s');
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
INSERT INTO `Providers` VALUES (1,74,0,'com.mominis.permission.preferences.provider.READ_WRITE','com.mominis.permission.preferences.provider.READ_WRITE');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(2,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(3,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(4,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,21,18),(2,31,19),(3,32,20),(4,35,21),(5,39,22),(6,43,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,4),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,3,1),(18,3,4),(19,3,14),(20,4,1),(21,3,15),(22,4,4),(23,4,14),(24,4,15),(25,5,1),(26,5,2),(27,5,3),(28,5,4),(29,5,5),(30,5,9),(31,5,10),(32,5,11),(33,5,12),(34,5,14),(35,5,15),(36,5,17),(37,5,19),(38,5,18),(39,5,21),(40,5,20),(41,5,23),(42,5,22),(43,5,25),(44,5,24),(45,5,27),(46,5,26),(47,5,29),(48,5,28),(49,5,31),(50,5,30),(51,5,34),(52,5,35),(53,5,32),(54,5,33),(55,5,38),(56,5,39),(57,5,36),(58,5,37),(59,6,1),(60,6,4),(61,6,20),(62,6,41),(63,6,14),(64,6,15),(65,7,1),(66,7,4),(67,7,42),(68,7,26),(69,7,14),(70,7,15);
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

-- Dump completed on 2015-10-09  0:41:09
