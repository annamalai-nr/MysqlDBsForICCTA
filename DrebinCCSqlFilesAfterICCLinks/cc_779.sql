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
) ENGINE=InnoDB AUTO_INCREMENT=1776 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,3,2,NULL),(2,9,1,2,NULL),(3,10,1,2,NULL),(4,12,1,2,NULL),(5,14,1,2,NULL),(6,15,1,2,NULL),(7,16,1,2,NULL),(8,18,1,2,NULL),(9,61,1,2,NULL),(10,64,1,2,NULL),(11,65,1,2,NULL),(12,72,1,2,NULL),(13,37,1,2,NULL),(14,39,1,2,NULL),(15,21,1,2,NULL),(16,23,1,2,NULL),(17,24,1,2,NULL),(18,25,1,2,NULL),(19,28,1,2,NULL),(20,30,1,2,NULL),(21,31,1,2,NULL),(22,32,1,2,NULL),(23,41,1,2,NULL),(24,42,1,2,NULL),(25,43,1,2,NULL),(26,44,1,2,NULL),(27,45,1,2,NULL),(28,46,1,2,NULL),(29,47,1,2,NULL),(30,48,1,2,NULL),(31,49,1,2,NULL),(32,50,1,2,NULL),(33,51,1,2,NULL),(34,52,1,2,NULL),(35,53,1,2,NULL),(36,54,1,2,NULL),(37,55,1,2,NULL),(38,56,1,2,NULL),(39,87,1,2,NULL),(40,89,1,2,NULL),(41,76,1,2,NULL),(42,77,1,2,NULL),(43,81,1,2,NULL),(44,85,1,2,NULL),(45,86,1,2,NULL),(46,9,3,2,NULL),(47,10,3,2,NULL),(48,12,3,2,NULL),(49,14,3,2,NULL),(50,15,3,2,NULL),(51,16,3,2,NULL),(52,18,3,2,NULL),(53,61,3,2,NULL),(54,64,3,2,NULL),(55,65,3,2,NULL),(56,72,3,2,NULL),(57,37,3,2,NULL),(58,39,3,2,NULL),(59,21,3,2,NULL),(60,23,3,2,NULL),(61,24,3,2,NULL),(62,25,3,2,NULL),(63,28,3,2,NULL),(64,30,3,2,NULL),(65,31,3,2,NULL),(66,32,3,2,NULL),(67,41,3,2,NULL),(68,42,3,2,NULL),(69,43,3,2,NULL),(70,44,3,2,NULL),(71,45,3,2,NULL),(72,46,3,2,NULL),(73,47,3,2,NULL),(74,48,3,2,NULL),(75,49,3,2,NULL),(76,50,3,2,NULL),(77,51,3,2,NULL),(78,52,3,2,NULL),(79,53,3,2,NULL),(80,54,3,2,NULL),(81,55,3,2,NULL),(82,56,3,2,NULL),(83,87,3,2,NULL),(84,89,3,2,NULL),(85,76,3,2,NULL),(86,77,3,2,NULL),(87,81,3,2,NULL),(88,85,3,2,NULL),(89,86,3,2,NULL),(90,9,5,2,NULL),(91,9,6,2,NULL),(92,9,8,2,NULL),(93,9,9,2,NULL),(94,10,4,2,NULL),(95,12,4,2,NULL),(96,1,7,2,NULL),(97,9,16,2,NULL),(98,10,6,2,NULL),(99,9,23,2,NULL),(100,12,6,2,NULL),(101,9,53,2,NULL),(102,14,6,2,NULL),(103,9,12,2,NULL),(104,14,4,2,NULL),(105,15,6,2,NULL),(106,15,4,2,NULL),(107,15,4,2,NULL),(108,16,6,2,NULL),(109,9,27,2,NULL),(110,16,4,2,NULL),(111,14,5,2,NULL),(112,18,6,2,NULL),(113,18,4,2,NULL),(114,15,5,2,NULL),(115,10,27,2,NULL),(116,61,6,2,NULL),(117,9,21,2,NULL),(118,12,27,2,NULL),(119,14,8,2,NULL),(120,64,6,2,NULL),(121,9,26,2,NULL),(122,15,8,2,NULL),(123,14,27,2,NULL),(124,65,6,2,NULL),(125,9,55,2,NULL),(126,15,27,2,NULL),(127,14,9,2,NULL),(128,72,6,2,NULL),(129,61,4,2,NULL),(130,16,27,2,NULL),(131,15,9,2,NULL),(132,37,6,2,NULL),(133,64,4,2,NULL),(134,18,27,2,NULL),(135,10,12,2,NULL),(136,39,6,2,NULL),(137,65,4,2,NULL),(138,12,12,2,NULL),(139,61,27,2,NULL),(140,21,6,2,NULL),(141,72,4,2,NULL),(142,14,16,2,NULL),(143,64,27,2,NULL),(144,23,6,2,NULL),(145,9,43,2,NULL),(146,15,16,2,NULL),(147,65,27,2,NULL),(148,24,6,2,NULL),(149,9,44,2,NULL),(150,14,23,2,NULL),(151,72,27,2,NULL),(152,25,6,2,NULL),(153,9,45,2,NULL),(154,37,27,2,NULL),(155,15,23,2,NULL),(156,28,6,2,NULL),(157,9,76,2,NULL),(158,39,27,2,NULL),(159,14,53,2,NULL),(160,30,6,2,NULL),(161,9,77,2,NULL),(162,15,53,2,NULL),(163,21,27,2,NULL),(164,31,6,2,NULL),(165,9,78,2,NULL),(166,16,12,2,NULL),(167,23,27,2,NULL),(168,32,6,2,NULL),(169,9,79,2,NULL),(170,18,12,2,NULL),(171,24,27,2,NULL),(172,41,6,2,NULL),(173,9,80,2,NULL),(174,14,21,2,NULL),(175,25,27,2,NULL),(176,42,6,2,NULL),(177,9,46,2,NULL),(178,28,27,2,NULL),(179,15,21,2,NULL),(180,43,6,2,NULL),(181,37,4,2,NULL),(182,30,27,2,NULL),(183,14,26,2,NULL),(184,44,6,2,NULL),(185,39,4,2,NULL),(186,15,26,2,NULL),(187,31,27,2,NULL),(188,45,6,2,NULL),(189,21,4,2,NULL),(190,32,27,2,NULL),(191,14,55,2,NULL),(192,46,6,2,NULL),(193,23,4,2,NULL),(194,15,55,2,NULL),(195,41,27,2,NULL),(196,47,6,2,NULL),(197,24,4,2,NULL),(198,61,12,2,NULL),(199,42,27,2,NULL),(200,48,6,2,NULL),(201,64,12,2,NULL),(202,43,27,2,NULL),(203,25,4,2,NULL),(204,49,6,2,NULL),(205,28,4,2,NULL),(206,65,12,2,NULL),(207,44,27,2,NULL),(208,50,6,2,NULL),(209,30,4,2,NULL),(210,45,27,2,NULL),(211,72,12,2,NULL),(212,51,6,2,NULL),(213,31,4,2,NULL),(214,14,43,2,NULL),(215,46,27,2,NULL),(216,52,6,2,NULL),(217,32,4,2,NULL),(218,15,43,2,NULL),(219,47,27,2,NULL),(220,53,6,2,NULL),(221,41,4,2,NULL),(222,14,44,2,NULL),(223,48,27,2,NULL),(224,54,6,2,NULL),(225,42,4,2,NULL),(226,15,44,2,NULL),(227,49,27,2,NULL),(228,55,6,2,NULL),(229,43,4,2,NULL),(230,50,27,2,NULL),(231,14,45,2,NULL),(232,56,6,2,NULL),(233,44,4,2,NULL),(234,15,45,2,NULL),(235,51,27,2,NULL),(236,87,6,2,NULL),(237,45,4,2,NULL),(238,14,76,2,NULL),(239,52,27,2,NULL),(240,89,6,2,NULL),(241,46,4,2,NULL),(242,15,76,2,NULL),(243,53,27,2,NULL),(244,76,6,2,NULL),(245,47,4,2,NULL),(246,14,77,2,NULL),(247,54,27,2,NULL),(248,77,6,2,NULL),(249,48,4,2,NULL),(250,15,77,2,NULL),(251,55,27,2,NULL),(252,81,6,2,NULL),(253,49,4,2,NULL),(254,14,78,2,NULL),(255,56,27,2,NULL),(256,85,6,2,NULL),(257,50,4,2,NULL),(258,15,78,2,NULL),(259,87,27,2,NULL),(260,86,6,2,NULL),(261,51,4,2,NULL),(262,14,79,2,NULL),(263,89,27,2,NULL),(264,2,7,2,NULL),(265,52,4,2,NULL),(266,15,79,2,NULL),(267,76,27,2,NULL),(268,10,8,2,NULL),(269,53,4,2,NULL),(270,14,80,2,NULL),(271,77,27,2,NULL),(272,12,8,2,NULL),(273,54,4,2,NULL),(274,15,80,2,NULL),(275,81,27,2,NULL),(276,16,8,2,NULL),(277,55,4,2,NULL),(278,14,46,2,NULL),(279,85,27,2,NULL),(280,18,8,2,NULL),(281,15,46,2,NULL),(282,56,4,2,NULL),(283,86,27,2,NULL),(284,61,8,2,NULL),(285,10,46,2,NULL),(286,37,12,2,NULL),(287,9,52,2,NULL),(288,64,8,2,NULL),(289,60,41,2,NULL),(290,12,46,2,NULL),(291,39,12,2,NULL),(292,9,75,2,NULL),(293,67,29,2,NULL),(294,65,8,2,NULL),(295,16,46,2,NULL),(296,21,12,2,NULL),(297,18,46,2,NULL),(298,72,8,2,NULL),(299,9,57,2,NULL),(300,61,5,2,NULL),(301,23,12,2,NULL),(302,87,4,2,NULL),(303,37,8,2,NULL),(304,61,9,2,NULL),(305,61,46,2,NULL),(306,24,12,2,NULL),(307,89,4,2,NULL),(308,39,8,2,NULL),(309,61,16,2,NULL),(310,64,46,2,NULL),(311,25,12,2,NULL),(312,76,4,2,NULL),(313,21,8,2,NULL),(314,61,23,2,NULL),(315,65,46,2,NULL),(316,28,12,2,NULL),(317,77,4,2,NULL),(318,23,8,2,NULL),(319,61,53,2,NULL),(320,72,46,2,NULL),(321,30,12,2,NULL),(322,81,4,2,NULL),(323,24,8,2,NULL),(324,61,21,2,NULL),(325,37,46,2,NULL),(326,31,12,2,NULL),(327,85,4,2,NULL),(328,25,8,2,NULL),(329,61,26,2,NULL),(330,39,46,2,NULL),(331,32,12,2,NULL),(332,86,4,2,NULL),(333,28,8,2,NULL),(334,61,55,2,NULL),(335,21,46,2,NULL),(336,41,12,2,NULL),(337,9,64,2,NULL),(338,30,8,2,NULL),(339,61,43,2,NULL),(340,23,46,2,NULL),(341,42,12,2,NULL),(342,9,67,2,NULL),(343,31,8,2,NULL),(344,61,44,2,NULL),(345,24,46,2,NULL),(346,43,12,2,NULL),(347,32,8,2,NULL),(348,9,68,2,NULL),(349,61,45,2,NULL),(350,25,46,2,NULL),(351,44,12,2,NULL),(352,61,76,2,NULL),(353,9,69,2,NULL),(354,41,8,2,NULL),(355,28,46,2,NULL),(356,45,12,2,NULL),(357,9,70,2,NULL),(358,61,77,2,NULL),(359,42,8,2,NULL),(360,30,46,2,NULL),(361,46,12,2,NULL),(362,9,71,2,NULL),(363,61,78,2,NULL),(364,43,8,2,NULL),(365,31,46,2,NULL),(366,47,12,2,NULL),(367,9,72,2,NULL),(368,44,8,2,NULL),(369,61,79,2,NULL),(370,32,46,2,NULL),(371,48,12,2,NULL),(372,61,80,2,NULL),(373,9,73,2,NULL),(374,45,8,2,NULL),(375,41,46,2,NULL),(376,49,12,2,NULL),(377,9,81,2,NULL),(378,61,52,2,NULL),(379,46,8,2,NULL),(380,42,46,2,NULL),(381,50,12,2,NULL),(382,9,82,2,NULL),(383,61,75,2,NULL),(384,47,8,2,NULL),(385,43,46,2,NULL),(386,51,12,2,NULL),(387,9,83,2,NULL),(388,61,57,2,NULL),(389,48,8,2,NULL),(390,44,46,2,NULL),(391,52,12,2,NULL),(392,61,64,2,NULL),(393,9,84,2,NULL),(394,49,8,2,NULL),(395,45,46,2,NULL),(396,53,12,2,NULL),(397,9,85,2,NULL),(398,61,67,2,NULL),(399,50,8,2,NULL),(400,46,46,2,NULL),(401,54,12,2,NULL),(402,10,5,2,NULL),(403,61,68,2,NULL),(404,51,8,2,NULL),(405,47,46,2,NULL),(406,55,12,2,NULL),(407,12,5,2,NULL),(408,61,69,2,NULL),(409,52,8,2,NULL),(410,48,46,2,NULL),(411,56,12,2,NULL),(412,61,70,2,NULL),(413,16,5,2,NULL),(414,53,8,2,NULL),(415,49,46,2,NULL),(416,14,52,2,NULL),(417,18,5,2,NULL),(418,54,8,2,NULL),(419,61,71,2,NULL),(420,50,46,2,NULL),(421,15,52,2,NULL),(422,64,5,2,NULL),(423,55,8,2,NULL),(424,61,72,2,NULL),(425,51,46,2,NULL),(426,14,75,2,NULL),(427,65,5,2,NULL),(428,61,73,2,NULL),(429,56,8,2,NULL),(430,52,46,2,NULL),(431,15,75,2,NULL),(432,72,5,2,NULL),(433,61,81,2,NULL),(434,87,8,2,NULL),(435,53,46,2,NULL),(436,14,57,2,NULL),(437,37,5,2,NULL),(438,89,8,2,NULL),(439,61,82,2,NULL),(440,54,46,2,NULL),(441,15,57,2,NULL),(442,39,5,2,NULL),(443,61,83,2,NULL),(444,76,8,2,NULL),(445,55,46,2,NULL),(446,87,12,2,NULL),(447,21,5,2,NULL),(448,77,8,2,NULL),(449,61,84,2,NULL),(450,56,46,2,NULL),(451,89,12,2,NULL),(452,23,5,2,NULL),(453,61,85,2,NULL),(454,81,8,2,NULL),(455,87,46,2,NULL),(456,76,12,2,NULL),(457,24,5,2,NULL),(458,85,8,2,NULL),(459,89,46,2,NULL),(460,64,9,2,NULL),(461,77,12,2,NULL),(462,25,5,2,NULL),(463,64,16,2,NULL),(464,86,8,2,NULL),(465,76,46,2,NULL),(466,81,12,2,NULL),(467,28,5,2,NULL),(468,64,23,2,NULL),(469,10,9,2,NULL),(470,77,46,2,NULL),(471,85,12,2,NULL),(472,30,5,2,NULL),(473,64,53,2,NULL),(474,12,9,2,NULL),(475,81,46,2,NULL),(476,86,12,2,NULL),(477,64,21,2,NULL),(478,31,5,2,NULL),(479,16,9,2,NULL),(480,85,46,2,NULL),(481,14,64,2,NULL),(482,86,46,2,NULL),(483,32,5,2,NULL),(484,64,26,2,NULL),(485,18,9,2,NULL),(486,15,64,2,NULL),(487,41,5,2,NULL),(488,64,55,2,NULL),(489,65,9,2,NULL),(490,37,9,2,NULL),(491,14,67,2,NULL),(492,42,5,2,NULL),(493,72,9,2,NULL),(494,64,43,2,NULL),(495,39,9,2,NULL),(496,15,67,2,NULL),(497,43,5,2,NULL),(498,64,44,2,NULL),(499,37,16,2,NULL),(500,21,9,2,NULL),(501,14,68,2,NULL),(502,44,5,2,NULL),(503,64,45,2,NULL),(504,23,9,2,NULL),(505,39,16,2,NULL),(506,15,68,2,NULL),(507,24,9,2,NULL),(508,45,5,2,NULL),(509,37,23,2,NULL),(510,64,76,2,NULL),(511,14,69,2,NULL),(512,46,5,2,NULL),(513,39,23,2,NULL),(514,64,77,2,NULL),(515,25,9,2,NULL),(516,15,69,2,NULL),(517,47,5,2,NULL),(518,37,53,2,NULL),(519,64,78,2,NULL),(520,28,9,2,NULL),(521,14,70,2,NULL),(522,48,5,2,NULL),(523,39,53,2,NULL),(524,64,79,2,NULL),(525,30,9,2,NULL),(526,15,70,2,NULL),(527,49,5,2,NULL),(528,64,80,2,NULL),(529,31,9,2,NULL),(530,37,21,2,NULL),(531,14,71,2,NULL),(532,50,5,2,NULL),(533,32,9,2,NULL),(534,64,52,2,NULL),(535,39,21,2,NULL),(536,15,71,2,NULL),(537,51,5,2,NULL),(538,64,75,2,NULL),(539,41,9,2,NULL),(540,37,26,2,NULL),(541,14,72,2,NULL),(542,52,5,2,NULL),(543,64,57,2,NULL),(544,42,9,2,NULL),(545,39,26,2,NULL),(546,15,72,2,NULL),(547,53,5,2,NULL),(548,64,64,2,NULL),(549,43,9,2,NULL),(550,37,55,2,NULL),(551,14,73,2,NULL),(552,64,67,2,NULL),(553,54,5,2,NULL),(554,44,9,2,NULL),(555,39,55,2,NULL),(556,15,73,2,NULL),(557,45,9,2,NULL),(558,64,68,2,NULL),(559,55,5,2,NULL),(560,37,43,2,NULL),(561,14,81,2,NULL),(562,56,5,2,NULL),(563,39,43,2,NULL),(564,46,9,2,NULL),(565,64,69,2,NULL),(566,15,81,2,NULL),(567,87,5,2,NULL),(568,64,70,2,NULL),(569,47,9,2,NULL),(570,37,44,2,NULL),(571,14,82,2,NULL),(572,64,71,2,NULL),(573,89,5,2,NULL),(574,48,9,2,NULL),(575,39,44,2,NULL),(576,15,82,2,NULL),(577,49,9,2,NULL),(578,64,72,2,NULL),(579,76,5,2,NULL),(580,37,45,2,NULL),(581,14,83,2,NULL),(582,50,9,2,NULL),(583,64,73,2,NULL),(584,77,5,2,NULL),(585,39,45,2,NULL),(586,15,83,2,NULL),(587,81,5,2,NULL),(588,64,81,2,NULL),(589,51,9,2,NULL),(590,37,76,2,NULL),(591,14,84,2,NULL),(592,85,5,2,NULL),(593,64,82,2,NULL),(594,39,76,2,NULL),(595,52,9,2,NULL),(596,15,84,2,NULL),(597,86,5,2,NULL),(598,64,83,2,NULL),(599,37,77,2,NULL),(600,53,9,2,NULL),(601,14,85,2,NULL),(602,64,84,2,NULL),(603,54,9,2,NULL),(604,39,77,2,NULL),(605,15,85,2,NULL),(606,37,78,2,NULL),(607,55,9,2,NULL),(608,64,85,2,NULL),(609,16,16,2,NULL),(610,56,9,2,NULL),(611,39,78,2,NULL),(612,71,39,2,NULL),(613,18,16,2,NULL),(614,87,9,2,NULL),(615,65,16,2,NULL),(616,37,79,2,NULL),(617,16,23,2,NULL),(618,39,79,2,NULL),(619,65,23,2,NULL),(620,89,9,2,NULL),(621,18,23,2,NULL),(622,76,9,2,NULL),(623,37,80,2,NULL),(624,65,53,2,NULL),(625,16,53,2,NULL),(626,77,9,2,NULL),(627,39,80,2,NULL),(628,65,21,2,NULL),(629,18,53,2,NULL),(630,81,9,2,NULL),(631,65,26,2,NULL),(632,37,52,2,NULL),(633,16,21,2,NULL),(634,65,55,2,NULL),(635,39,52,2,NULL),(636,85,9,2,NULL),(637,18,21,2,NULL),(638,65,43,2,NULL),(639,37,75,2,NULL),(640,86,9,2,NULL),(641,16,26,2,NULL),(642,65,44,2,NULL),(643,39,75,2,NULL),(644,18,26,2,NULL),(645,65,45,2,NULL),(646,37,57,2,NULL),(647,16,55,2,NULL),(648,39,57,2,NULL),(649,65,76,2,NULL),(650,18,55,2,NULL),(651,65,77,2,NULL),(652,37,64,2,NULL),(653,16,43,2,NULL),(654,65,78,2,NULL),(655,39,64,2,NULL),(656,18,43,2,NULL),(657,65,79,2,NULL),(658,37,67,2,NULL),(659,16,44,2,NULL),(660,39,67,2,NULL),(661,65,80,2,NULL),(662,18,44,2,NULL),(663,65,52,2,NULL),(664,37,68,2,NULL),(665,16,45,2,NULL),(666,65,75,2,NULL),(667,39,68,2,NULL),(668,18,45,2,NULL),(669,65,57,2,NULL),(670,37,69,2,NULL),(671,16,76,2,NULL),(672,65,64,2,NULL),(673,39,69,2,NULL),(674,18,76,2,NULL),(675,65,67,2,NULL),(676,37,70,2,NULL),(677,16,77,2,NULL),(678,39,70,2,NULL),(679,65,68,2,NULL),(680,18,77,2,NULL),(681,65,69,2,NULL),(682,37,71,2,NULL),(683,16,78,2,NULL),(684,39,71,2,NULL),(685,65,70,2,NULL),(686,18,78,2,NULL),(687,65,71,2,NULL),(688,37,72,2,NULL),(689,16,79,2,NULL),(690,65,72,2,NULL),(691,39,72,2,NULL),(692,18,79,2,NULL),(693,65,73,2,NULL),(694,37,73,2,NULL),(695,16,80,2,NULL),(696,65,81,2,NULL),(697,39,73,2,NULL),(698,18,80,2,NULL),(699,65,82,2,NULL),(700,37,81,2,NULL),(701,16,52,2,NULL),(702,65,83,2,NULL),(703,39,81,2,NULL),(704,18,52,2,NULL),(705,65,84,2,NULL),(706,37,82,2,NULL),(707,16,75,2,NULL),(708,39,82,2,NULL),(709,65,85,2,NULL),(710,18,75,2,NULL),(711,37,83,2,NULL),(712,73,41,2,NULL),(713,16,57,2,NULL),(714,39,83,2,NULL),(715,72,16,2,NULL),(716,18,57,2,NULL),(717,37,84,2,NULL),(718,72,23,2,NULL),(719,16,64,2,NULL),(720,72,53,2,NULL),(721,39,84,2,NULL),(722,18,64,2,NULL),(723,37,85,2,NULL),(724,72,21,2,NULL),(725,16,67,2,NULL),(726,72,26,2,NULL),(727,39,85,2,NULL),(728,18,67,2,NULL),(729,72,55,2,NULL),(730,16,68,2,NULL),(731,72,43,2,NULL),(732,21,16,2,NULL),(733,18,68,2,NULL),(734,72,44,2,NULL),(735,16,69,2,NULL),(736,23,16,2,NULL),(737,72,45,2,NULL),(738,18,69,2,NULL),(739,24,16,2,NULL),(740,72,76,2,NULL),(741,16,70,2,NULL),(742,25,16,2,NULL),(743,72,77,2,NULL),(744,18,70,2,NULL),(745,28,16,2,NULL),(746,72,78,2,NULL),(747,16,71,2,NULL),(748,30,16,2,NULL),(749,72,79,2,NULL),(750,31,16,2,NULL),(751,18,71,2,NULL),(752,72,80,2,NULL),(753,32,16,2,NULL),(754,16,72,2,NULL),(755,72,52,2,NULL),(756,41,16,2,NULL),(757,18,72,2,NULL),(758,72,75,2,NULL),(759,42,16,2,NULL),(760,16,73,2,NULL),(761,72,57,2,NULL),(762,43,16,2,NULL),(763,18,73,2,NULL),(764,72,64,2,NULL),(765,44,16,2,NULL),(766,16,81,2,NULL),(767,72,67,2,NULL),(768,18,81,2,NULL),(769,45,16,2,NULL),(770,72,68,2,NULL),(771,16,82,2,NULL),(772,46,16,2,NULL),(773,72,69,2,NULL),(774,18,82,2,NULL),(775,47,16,2,NULL),(776,72,70,2,NULL),(777,16,83,2,NULL),(778,48,16,2,NULL),(779,72,71,2,NULL),(780,18,83,2,NULL),(781,49,16,2,NULL),(782,72,72,2,NULL),(783,16,84,2,NULL),(784,50,16,2,NULL),(785,72,73,2,NULL),(786,18,84,2,NULL),(787,51,16,2,NULL),(788,72,81,2,NULL),(789,16,85,2,NULL),(790,52,16,2,NULL),(791,72,82,2,NULL),(792,53,16,2,NULL),(793,18,85,2,NULL),(794,72,83,2,NULL),(795,54,16,2,NULL),(796,10,21,2,NULL),(797,72,84,2,NULL),(798,12,21,2,NULL),(799,55,16,2,NULL),(800,72,85,2,NULL),(801,56,16,2,NULL),(802,21,21,2,NULL),(803,10,43,2,NULL),(804,21,23,2,NULL),(805,23,21,2,NULL),(806,12,43,2,NULL),(807,24,21,2,NULL),(808,23,23,2,NULL),(809,21,43,2,NULL),(810,25,21,2,NULL),(811,24,23,2,NULL),(812,23,43,2,NULL),(813,28,21,2,NULL),(814,25,23,2,NULL),(815,24,43,2,NULL),(816,30,21,2,NULL),(817,28,23,2,NULL),(818,25,43,2,NULL),(819,31,21,2,NULL),(820,30,23,2,NULL),(821,28,43,2,NULL),(822,32,21,2,NULL),(823,31,23,2,NULL),(824,30,43,2,NULL),(825,41,21,2,NULL),(826,32,23,2,NULL),(827,31,43,2,NULL),(828,42,21,2,NULL),(829,41,23,2,NULL),(830,32,43,2,NULL),(831,43,21,2,NULL),(832,42,23,2,NULL),(833,41,43,2,NULL),(834,44,21,2,NULL),(835,43,23,2,NULL),(836,42,43,2,NULL),(837,45,21,2,NULL),(838,44,23,2,NULL),(839,43,43,2,NULL),(840,46,21,2,NULL),(841,45,23,2,NULL),(842,44,43,2,NULL),(843,47,21,2,NULL),(844,46,23,2,NULL),(845,45,43,2,NULL),(846,48,21,2,NULL),(847,47,23,2,NULL),(848,46,43,2,NULL),(849,49,21,2,NULL),(850,48,23,2,NULL),(851,47,43,2,NULL),(852,78,56,2,NULL),(853,50,21,2,NULL),(854,49,23,2,NULL),(855,48,43,2,NULL),(856,10,57,2,NULL),(857,51,21,2,NULL),(858,50,23,2,NULL),(859,49,43,2,NULL),(860,12,57,2,NULL),(861,52,21,2,NULL),(862,51,23,2,NULL),(863,50,43,2,NULL),(864,21,57,2,NULL),(865,53,21,2,NULL),(866,52,23,2,NULL),(867,51,43,2,NULL),(868,23,57,2,NULL),(869,54,21,2,NULL),(870,53,23,2,NULL),(871,52,43,2,NULL),(872,24,57,2,NULL),(873,54,23,2,NULL),(874,55,21,2,NULL),(875,53,43,2,NULL),(876,25,57,2,NULL),(877,56,21,2,NULL),(878,55,23,2,NULL),(879,54,43,2,NULL),(880,28,57,2,NULL),(881,10,16,2,NULL),(882,87,21,2,NULL),(883,56,23,2,NULL),(884,55,43,2,NULL),(885,30,57,2,NULL),(886,12,16,2,NULL),(887,89,21,2,NULL),(888,21,53,2,NULL),(889,56,43,2,NULL),(890,31,57,2,NULL),(891,10,23,2,NULL),(892,76,21,2,NULL),(893,23,53,2,NULL),(894,87,43,2,NULL),(895,32,57,2,NULL),(896,12,23,2,NULL),(897,77,21,2,NULL),(898,24,53,2,NULL),(899,89,43,2,NULL),(900,41,57,2,NULL),(901,10,53,2,NULL),(902,81,21,2,NULL),(903,25,53,2,NULL),(904,76,43,2,NULL),(905,42,57,2,NULL),(906,12,53,2,NULL),(907,85,21,2,NULL),(908,28,53,2,NULL),(909,77,43,2,NULL),(910,43,57,2,NULL),(911,10,26,2,NULL),(912,86,21,2,NULL),(913,30,53,2,NULL),(914,81,43,2,NULL),(915,44,57,2,NULL),(916,12,26,2,NULL),(917,31,53,2,NULL),(918,21,26,2,NULL),(919,85,43,2,NULL),(920,45,57,2,NULL),(921,10,55,2,NULL),(922,23,26,2,NULL),(923,32,53,2,NULL),(924,86,43,2,NULL),(925,46,57,2,NULL),(926,12,55,2,NULL),(927,24,26,2,NULL),(928,41,53,2,NULL),(929,10,44,2,NULL),(930,47,57,2,NULL),(931,12,44,2,NULL),(932,25,26,2,NULL),(933,42,53,2,NULL),(934,21,44,2,NULL),(935,48,57,2,NULL),(936,10,45,2,NULL),(937,28,26,2,NULL),(938,43,53,2,NULL),(939,23,44,2,NULL),(940,49,57,2,NULL),(941,12,45,2,NULL),(942,30,26,2,NULL),(943,44,53,2,NULL),(944,24,44,2,NULL),(945,50,57,2,NULL),(946,10,76,2,NULL),(947,31,26,2,NULL),(948,45,53,2,NULL),(949,25,44,2,NULL),(950,51,57,2,NULL),(951,12,76,2,NULL),(952,32,26,2,NULL),(953,46,53,2,NULL),(954,28,44,2,NULL),(955,52,57,2,NULL),(956,10,77,2,NULL),(957,41,26,2,NULL),(958,47,53,2,NULL),(959,30,44,2,NULL),(960,53,57,2,NULL),(961,12,77,2,NULL),(962,42,26,2,NULL),(963,48,53,2,NULL),(964,31,44,2,NULL),(965,54,57,2,NULL),(966,10,78,2,NULL),(967,43,26,2,NULL),(968,49,53,2,NULL),(969,32,44,2,NULL),(970,55,57,2,NULL),(971,12,78,2,NULL),(972,44,26,2,NULL),(973,50,53,2,NULL),(974,41,44,2,NULL),(975,56,57,2,NULL),(976,10,79,2,NULL),(977,45,26,2,NULL),(978,51,53,2,NULL),(979,42,44,2,NULL),(980,87,57,2,NULL),(981,12,79,2,NULL),(982,46,26,2,NULL),(983,52,53,2,NULL),(984,43,44,2,NULL),(985,89,57,2,NULL),(986,10,80,2,NULL),(987,47,26,2,NULL),(988,53,53,2,NULL),(989,44,44,2,NULL),(990,76,57,2,NULL),(991,12,80,2,NULL),(992,48,26,2,NULL),(993,54,53,2,NULL),(994,45,44,2,NULL),(995,77,57,2,NULL),(996,10,52,2,NULL),(997,49,26,2,NULL),(998,55,53,2,NULL),(999,46,44,2,NULL),(1000,81,57,2,NULL),(1001,12,52,2,NULL),(1002,50,26,2,NULL),(1003,56,53,2,NULL),(1004,47,44,2,NULL),(1005,85,57,2,NULL),(1006,10,75,2,NULL),(1007,51,26,2,NULL),(1008,48,44,2,NULL),(1009,86,57,2,NULL),(1010,12,75,2,NULL),(1011,52,26,2,NULL),(1012,53,26,2,NULL),(1013,49,44,2,NULL),(1014,54,26,2,NULL),(1015,10,64,2,NULL),(1016,87,16,2,NULL),(1017,55,26,2,NULL),(1018,50,44,2,NULL),(1019,56,26,2,NULL),(1020,89,16,2,NULL),(1021,12,64,2,NULL),(1022,87,26,2,NULL),(1023,51,44,2,NULL),(1024,21,55,2,NULL),(1025,87,23,2,NULL),(1026,10,67,2,NULL),(1027,89,26,2,NULL),(1028,52,44,2,NULL),(1029,23,55,2,NULL),(1030,89,23,2,NULL),(1031,12,67,2,NULL),(1032,76,26,2,NULL),(1033,53,44,2,NULL),(1034,24,55,2,NULL),(1035,87,53,2,NULL),(1036,10,68,2,NULL),(1037,77,26,2,NULL),(1038,54,44,2,NULL),(1039,25,55,2,NULL),(1040,89,53,2,NULL),(1041,12,68,2,NULL),(1042,81,26,2,NULL),(1043,55,44,2,NULL),(1044,28,55,2,NULL),(1045,10,69,2,NULL),(1046,87,55,2,NULL),(1047,85,26,2,NULL),(1048,56,44,2,NULL),(1049,30,55,2,NULL),(1050,89,55,2,NULL),(1051,12,69,2,NULL),(1052,86,26,2,NULL),(1053,87,44,2,NULL),(1054,31,55,2,NULL),(1055,89,44,2,NULL),(1056,10,70,2,NULL),(1057,32,55,2,NULL),(1058,76,44,2,NULL),(1059,87,45,2,NULL),(1060,41,55,2,NULL),(1061,12,70,2,NULL),(1062,42,55,2,NULL),(1063,77,44,2,NULL),(1064,43,55,2,NULL),(1065,89,45,2,NULL),(1066,10,71,2,NULL),(1067,44,55,2,NULL),(1068,81,44,2,NULL),(1069,87,76,2,NULL),(1070,45,55,2,NULL),(1071,12,71,2,NULL),(1072,46,55,2,NULL),(1073,85,44,2,NULL),(1074,47,55,2,NULL),(1075,89,76,2,NULL),(1076,10,72,2,NULL),(1077,48,55,2,NULL),(1078,87,77,2,NULL),(1079,86,44,2,NULL),(1080,12,72,2,NULL),(1081,49,55,2,NULL),(1082,50,55,2,NULL),(1083,89,77,2,NULL),(1084,51,55,2,NULL),(1085,10,73,2,NULL),(1086,21,45,2,NULL),(1087,52,55,2,NULL),(1088,23,45,2,NULL),(1089,53,55,2,NULL),(1090,87,78,2,NULL),(1091,12,73,2,NULL),(1092,54,55,2,NULL),(1093,24,45,2,NULL),(1094,55,55,2,NULL),(1095,89,78,2,NULL),(1096,10,81,2,NULL),(1097,56,55,2,NULL),(1098,25,45,2,NULL),(1099,87,79,2,NULL),(1100,12,81,2,NULL),(1101,76,55,2,NULL),(1102,28,45,2,NULL),(1103,30,45,2,NULL),(1104,89,79,2,NULL),(1105,10,82,2,NULL),(1106,77,55,2,NULL),(1107,31,45,2,NULL),(1108,87,80,2,NULL),(1109,32,45,2,NULL),(1110,12,82,2,NULL),(1111,81,55,2,NULL),(1112,41,45,2,NULL),(1113,89,80,2,NULL),(1114,42,45,2,NULL),(1115,10,83,2,NULL),(1116,85,55,2,NULL),(1117,43,45,2,NULL),(1118,44,45,2,NULL),(1119,12,83,2,NULL),(1120,87,52,2,NULL),(1121,86,55,2,NULL),(1122,45,45,2,NULL),(1123,89,52,2,NULL),(1124,46,45,2,NULL),(1125,10,84,2,NULL),(1126,47,45,2,NULL),(1127,48,45,2,NULL),(1128,87,75,2,NULL),(1129,12,84,2,NULL),(1130,49,45,2,NULL),(1131,50,45,2,NULL),(1132,89,75,2,NULL),(1133,10,85,2,NULL),(1134,51,45,2,NULL),(1135,52,45,2,NULL),(1136,12,85,2,NULL),(1137,87,64,2,NULL),(1138,53,45,2,NULL),(1139,89,64,2,NULL),(1140,54,45,2,NULL),(1141,76,16,2,NULL),(1142,55,45,2,NULL),(1143,87,67,2,NULL),(1144,56,45,2,NULL),(1145,77,16,2,NULL),(1146,21,76,2,NULL),(1147,89,67,2,NULL),(1148,76,45,2,NULL),(1149,81,16,2,NULL),(1150,23,76,2,NULL),(1151,77,45,2,NULL),(1152,87,68,2,NULL),(1153,24,76,2,NULL),(1154,85,16,2,NULL),(1155,81,45,2,NULL),(1156,89,68,2,NULL),(1157,25,76,2,NULL),(1158,86,16,2,NULL),(1159,85,45,2,NULL),(1160,87,69,2,NULL),(1161,28,76,2,NULL),(1162,76,23,2,NULL),(1163,86,45,2,NULL),(1164,89,69,2,NULL),(1165,30,76,2,NULL),(1166,77,23,2,NULL),(1167,87,70,2,NULL),(1168,31,76,2,NULL),(1169,32,76,2,NULL),(1170,89,70,2,NULL),(1171,41,76,2,NULL),(1172,81,23,2,NULL),(1173,42,76,2,NULL),(1174,87,71,2,NULL),(1175,43,76,2,NULL),(1176,85,23,2,NULL),(1177,44,76,2,NULL),(1178,45,76,2,NULL),(1179,86,23,2,NULL),(1180,89,71,2,NULL),(1181,46,76,2,NULL),(1182,47,76,2,NULL),(1183,87,72,2,NULL),(1184,76,53,2,NULL),(1185,48,76,2,NULL),(1186,49,76,2,NULL),(1187,89,72,2,NULL),(1188,50,76,2,NULL),(1189,77,53,2,NULL),(1190,51,76,2,NULL),(1191,87,73,2,NULL),(1192,81,53,2,NULL),(1193,52,76,2,NULL),(1194,53,76,2,NULL),(1195,89,73,2,NULL),(1196,85,53,2,NULL),(1197,54,76,2,NULL),(1198,55,76,2,NULL),(1199,87,81,2,NULL),(1200,86,53,2,NULL),(1201,56,76,2,NULL),(1202,89,81,2,NULL),(1203,76,76,2,NULL),(1204,21,77,2,NULL),(1205,87,82,2,NULL),(1206,77,76,2,NULL),(1207,23,77,2,NULL),(1208,81,76,2,NULL),(1209,89,82,2,NULL),(1210,24,77,2,NULL),(1211,85,76,2,NULL),(1212,87,83,2,NULL),(1213,25,77,2,NULL),(1214,86,76,2,NULL),(1215,89,83,2,NULL),(1216,28,77,2,NULL),(1217,87,84,2,NULL),(1218,30,77,2,NULL),(1219,31,77,2,NULL),(1220,89,84,2,NULL),(1221,32,77,2,NULL),(1222,41,77,2,NULL),(1223,42,77,2,NULL),(1224,87,85,2,NULL),(1225,43,77,2,NULL),(1226,44,77,2,NULL),(1227,89,85,2,NULL),(1228,45,77,2,NULL),(1229,46,77,2,NULL),(1230,75,59,2,NULL),(1231,47,77,2,NULL),(1232,79,59,2,NULL),(1233,48,77,2,NULL),(1234,49,77,2,NULL),(1235,50,77,2,NULL),(1236,51,77,2,NULL),(1237,52,77,2,NULL),(1238,76,77,2,NULL),(1239,53,77,2,NULL),(1240,77,77,2,NULL),(1241,54,77,2,NULL),(1242,55,77,2,NULL),(1243,81,77,2,NULL),(1244,56,77,2,NULL),(1245,21,78,2,NULL),(1246,85,77,2,NULL),(1247,86,77,2,NULL),(1248,23,78,2,NULL),(1249,76,78,2,NULL),(1250,24,78,2,NULL),(1251,25,78,2,NULL),(1252,77,78,2,NULL),(1253,28,78,2,NULL),(1254,30,78,2,NULL),(1255,81,78,2,NULL),(1256,31,78,2,NULL),(1257,32,78,2,NULL),(1258,85,78,2,NULL),(1259,41,78,2,NULL),(1260,42,78,2,NULL),(1261,86,78,2,NULL),(1262,43,78,2,NULL),(1263,44,78,2,NULL),(1264,45,78,2,NULL),(1265,76,79,2,NULL),(1266,46,78,2,NULL),(1267,47,78,2,NULL),(1268,77,79,2,NULL),(1269,48,78,2,NULL),(1270,81,79,2,NULL),(1271,49,78,2,NULL),(1272,50,78,2,NULL),(1273,85,79,2,NULL),(1274,51,78,2,NULL),(1275,52,78,2,NULL),(1276,86,79,2,NULL),(1277,53,78,2,NULL),(1278,54,78,2,NULL),(1279,76,80,2,NULL),(1280,55,78,2,NULL),(1281,56,78,2,NULL),(1282,77,80,2,NULL),(1283,21,79,2,NULL),(1284,23,79,2,NULL),(1285,24,79,2,NULL),(1286,81,80,2,NULL),(1287,25,79,2,NULL),(1288,28,79,2,NULL),(1289,85,80,2,NULL),(1290,30,79,2,NULL),(1291,31,79,2,NULL),(1292,86,80,2,NULL),(1293,32,79,2,NULL),(1294,41,79,2,NULL),(1295,76,52,2,NULL),(1296,42,79,2,NULL),(1297,43,79,2,NULL),(1298,77,52,2,NULL),(1299,44,79,2,NULL),(1300,81,52,2,NULL),(1301,45,79,2,NULL),(1302,46,79,2,NULL),(1303,85,52,2,NULL),(1304,47,79,2,NULL),(1305,48,79,2,NULL),(1306,86,52,2,NULL),(1307,49,79,2,NULL),(1308,50,79,2,NULL),(1309,51,79,2,NULL),(1310,76,75,2,NULL),(1311,52,79,2,NULL),(1312,53,79,2,NULL),(1313,77,75,2,NULL),(1314,54,79,2,NULL),(1315,55,79,2,NULL),(1316,81,75,2,NULL),(1317,56,79,2,NULL),(1318,85,75,2,NULL),(1319,21,80,2,NULL),(1320,23,80,2,NULL),(1321,24,80,2,NULL),(1322,86,75,2,NULL),(1323,25,80,2,NULL),(1324,28,80,2,NULL),(1325,76,64,2,NULL),(1326,30,80,2,NULL),(1327,77,64,2,NULL),(1328,31,80,2,NULL),(1329,32,80,2,NULL),(1330,41,80,2,NULL),(1331,81,64,2,NULL),(1332,42,80,2,NULL),(1333,43,80,2,NULL),(1334,85,64,2,NULL),(1335,44,80,2,NULL),(1336,86,64,2,NULL),(1337,45,80,2,NULL),(1338,46,80,2,NULL),(1339,47,80,2,NULL),(1340,76,67,2,NULL),(1341,48,80,2,NULL),(1342,49,80,2,NULL),(1343,77,67,2,NULL),(1344,50,80,2,NULL),(1345,51,80,2,NULL),(1346,81,67,2,NULL),(1347,52,80,2,NULL),(1348,53,80,2,NULL),(1349,85,67,2,NULL),(1350,54,80,2,NULL),(1351,55,80,2,NULL),(1352,86,67,2,NULL),(1353,56,80,2,NULL),(1354,76,68,2,NULL),(1355,21,52,2,NULL),(1356,77,68,2,NULL),(1357,23,52,2,NULL),(1358,81,68,2,NULL),(1359,24,52,2,NULL),(1360,85,68,2,NULL),(1361,25,52,2,NULL),(1362,86,68,2,NULL),(1363,28,52,2,NULL),(1364,76,69,2,NULL),(1365,30,52,2,NULL),(1366,77,69,2,NULL),(1367,31,52,2,NULL),(1368,81,69,2,NULL),(1369,32,52,2,NULL),(1370,85,69,2,NULL),(1371,41,52,2,NULL),(1372,86,69,2,NULL),(1373,42,52,2,NULL),(1374,76,70,2,NULL),(1375,43,52,2,NULL),(1376,77,70,2,NULL),(1377,44,52,2,NULL),(1378,81,70,2,NULL),(1379,45,52,2,NULL),(1380,85,70,2,NULL),(1381,46,52,2,NULL),(1382,86,70,2,NULL),(1383,47,52,2,NULL),(1384,76,71,2,NULL),(1385,48,52,2,NULL),(1386,77,71,2,NULL),(1387,49,52,2,NULL),(1388,81,71,2,NULL),(1389,50,52,2,NULL),(1390,85,71,2,NULL),(1391,51,52,2,NULL),(1392,86,71,2,NULL),(1393,52,52,2,NULL),(1394,76,72,2,NULL),(1395,53,52,2,NULL),(1396,77,72,2,NULL),(1397,54,52,2,NULL),(1398,81,72,2,NULL),(1399,55,52,2,NULL),(1400,85,72,2,NULL),(1401,56,52,2,NULL),(1402,86,72,2,NULL),(1403,21,75,2,NULL),(1404,76,73,2,NULL),(1405,23,75,2,NULL),(1406,77,73,2,NULL),(1407,24,75,2,NULL),(1408,81,73,2,NULL),(1409,25,75,2,NULL),(1410,85,73,2,NULL),(1411,28,75,2,NULL),(1412,86,73,2,NULL),(1413,30,75,2,NULL),(1414,76,81,2,NULL),(1415,31,75,2,NULL),(1416,77,81,2,NULL),(1417,32,75,2,NULL),(1418,81,81,2,NULL),(1419,41,75,2,NULL),(1420,85,81,2,NULL),(1421,42,75,2,NULL),(1422,86,81,2,NULL),(1423,43,75,2,NULL),(1424,76,82,2,NULL),(1425,44,75,2,NULL),(1426,77,82,2,NULL),(1427,45,75,2,NULL),(1428,81,82,2,NULL),(1429,46,75,2,NULL),(1430,85,82,2,NULL),(1431,47,75,2,NULL),(1432,86,82,2,NULL),(1433,48,75,2,NULL),(1434,76,83,2,NULL),(1435,49,75,2,NULL),(1436,77,83,2,NULL),(1437,50,75,2,NULL),(1438,81,83,2,NULL),(1439,51,75,2,NULL),(1440,85,83,2,NULL),(1441,52,75,2,NULL),(1442,86,83,2,NULL),(1443,53,75,2,NULL),(1444,76,84,2,NULL),(1445,54,75,2,NULL),(1446,77,84,2,NULL),(1447,55,75,2,NULL),(1448,81,84,2,NULL),(1449,56,75,2,NULL),(1450,85,84,2,NULL),(1451,21,64,2,NULL),(1452,86,84,2,NULL),(1453,23,64,2,NULL),(1454,76,85,2,NULL),(1455,24,64,2,NULL),(1456,77,85,2,NULL),(1457,25,64,2,NULL),(1458,81,85,2,NULL),(1459,28,64,2,NULL),(1460,85,85,2,NULL),(1461,30,64,2,NULL),(1462,86,85,2,NULL),(1463,31,64,2,NULL),(1464,32,64,2,NULL),(1465,41,64,2,NULL),(1466,42,64,2,NULL),(1467,43,64,2,NULL),(1468,44,64,2,NULL),(1469,45,64,2,NULL),(1470,46,64,2,NULL),(1471,47,64,2,NULL),(1472,48,64,2,NULL),(1473,49,64,2,NULL),(1474,50,64,2,NULL),(1475,51,64,2,NULL),(1476,52,64,2,NULL),(1477,53,64,2,NULL),(1478,54,64,2,NULL),(1479,55,64,2,NULL),(1480,56,64,2,NULL),(1481,21,67,2,NULL),(1482,23,67,2,NULL),(1483,24,67,2,NULL),(1484,25,67,2,NULL),(1485,28,67,2,NULL),(1486,30,67,2,NULL),(1487,31,67,2,NULL),(1488,32,67,2,NULL),(1489,41,67,2,NULL),(1490,42,67,2,NULL),(1491,43,67,2,NULL),(1492,44,67,2,NULL),(1493,45,67,2,NULL),(1494,46,67,2,NULL),(1495,47,67,2,NULL),(1496,48,67,2,NULL),(1497,49,67,2,NULL),(1498,50,67,2,NULL),(1499,51,67,2,NULL),(1500,52,67,2,NULL),(1501,53,67,2,NULL),(1502,54,67,2,NULL),(1503,55,67,2,NULL),(1504,56,67,2,NULL),(1505,21,68,2,NULL),(1506,23,68,2,NULL),(1507,24,68,2,NULL),(1508,25,68,2,NULL),(1509,28,68,2,NULL),(1510,30,68,2,NULL),(1511,31,68,2,NULL),(1512,32,68,2,NULL),(1513,41,68,2,NULL),(1514,42,68,2,NULL),(1515,43,68,2,NULL),(1516,44,68,2,NULL),(1517,45,68,2,NULL),(1518,46,68,2,NULL),(1519,47,68,2,NULL),(1520,48,68,2,NULL),(1521,49,68,2,NULL),(1522,50,68,2,NULL),(1523,51,68,2,NULL),(1524,52,68,2,NULL),(1525,53,68,2,NULL),(1526,54,68,2,NULL),(1527,55,68,2,NULL),(1528,56,68,2,NULL),(1529,21,69,2,NULL),(1530,23,69,2,NULL),(1531,24,69,2,NULL),(1532,25,69,2,NULL),(1533,28,69,2,NULL),(1534,30,69,2,NULL),(1535,31,69,2,NULL),(1536,32,69,2,NULL),(1537,41,69,2,NULL),(1538,42,69,2,NULL),(1539,43,69,2,NULL),(1540,44,69,2,NULL),(1541,45,69,2,NULL),(1542,46,69,2,NULL),(1543,47,69,2,NULL),(1544,48,69,2,NULL),(1545,49,69,2,NULL),(1546,50,69,2,NULL),(1547,51,69,2,NULL),(1548,52,69,2,NULL),(1549,53,69,2,NULL),(1550,54,69,2,NULL),(1551,55,69,2,NULL),(1552,56,69,2,NULL),(1553,21,70,2,NULL),(1554,23,70,2,NULL),(1555,24,70,2,NULL),(1556,25,70,2,NULL),(1557,28,70,2,NULL),(1558,30,70,2,NULL),(1559,31,70,2,NULL),(1560,32,70,2,NULL),(1561,41,70,2,NULL),(1562,42,70,2,NULL),(1563,43,70,2,NULL),(1564,44,70,2,NULL),(1565,45,70,2,NULL),(1566,46,70,2,NULL),(1567,47,70,2,NULL),(1568,48,70,2,NULL),(1569,49,70,2,NULL),(1570,50,70,2,NULL),(1571,51,70,2,NULL),(1572,52,70,2,NULL),(1573,53,70,2,NULL),(1574,54,70,2,NULL),(1575,55,70,2,NULL),(1576,56,70,2,NULL),(1577,21,71,2,NULL),(1578,23,71,2,NULL),(1579,23,71,2,NULL),(1580,24,71,2,NULL),(1581,25,71,2,NULL),(1582,28,71,2,NULL),(1583,30,71,2,NULL),(1584,31,71,2,NULL),(1585,32,71,2,NULL),(1586,41,71,2,NULL),(1587,42,71,2,NULL),(1588,43,71,2,NULL),(1589,44,71,2,NULL),(1590,45,71,2,NULL),(1591,46,71,2,NULL),(1592,47,71,2,NULL),(1593,48,71,2,NULL),(1594,49,71,2,NULL),(1595,50,71,2,NULL),(1596,51,71,2,NULL),(1597,52,71,2,NULL),(1598,53,71,2,NULL),(1599,54,71,2,NULL),(1600,55,71,2,NULL),(1601,56,71,2,NULL),(1602,21,72,2,NULL),(1603,23,72,2,NULL),(1604,24,72,2,NULL),(1605,25,72,2,NULL),(1606,28,72,2,NULL),(1607,30,72,2,NULL),(1608,31,72,2,NULL),(1609,32,72,2,NULL),(1610,41,72,2,NULL),(1611,42,72,2,NULL),(1612,43,72,2,NULL),(1613,44,72,2,NULL),(1614,45,72,2,NULL),(1615,46,72,2,NULL),(1616,47,72,2,NULL),(1617,48,72,2,NULL),(1618,49,72,2,NULL),(1619,50,72,2,NULL),(1620,51,72,2,NULL),(1621,52,72,2,NULL),(1622,53,72,2,NULL),(1623,54,72,2,NULL),(1624,55,72,2,NULL),(1625,56,72,2,NULL),(1626,21,73,2,NULL),(1627,23,73,2,NULL),(1628,24,73,2,NULL),(1629,25,73,2,NULL),(1630,28,73,2,NULL),(1631,30,73,2,NULL),(1632,31,73,2,NULL),(1633,32,73,2,NULL),(1634,41,73,2,NULL),(1635,42,73,2,NULL),(1636,43,73,2,NULL),(1637,44,73,2,NULL),(1638,45,73,2,NULL),(1639,46,73,2,NULL),(1640,47,73,2,NULL),(1641,48,73,2,NULL),(1642,49,73,2,NULL),(1643,50,73,2,NULL),(1644,51,73,2,NULL),(1645,52,73,2,NULL),(1646,53,73,2,NULL),(1647,54,73,2,NULL),(1648,55,73,2,NULL),(1649,56,73,2,NULL),(1650,21,81,2,NULL),(1651,23,81,2,NULL),(1652,23,81,2,NULL),(1653,24,81,2,NULL),(1654,24,81,2,NULL),(1655,25,81,2,NULL),(1656,28,81,2,NULL),(1657,30,81,2,NULL),(1658,31,81,2,NULL),(1659,31,81,2,NULL),(1660,32,81,2,NULL),(1661,32,81,2,NULL),(1662,41,81,2,NULL),(1663,42,81,2,NULL),(1664,42,81,2,NULL),(1665,43,81,2,NULL),(1666,44,81,2,NULL),(1667,45,81,2,NULL),(1668,46,81,2,NULL),(1669,47,81,2,NULL),(1670,48,81,2,NULL),(1671,49,81,2,NULL),(1672,50,81,2,NULL),(1673,51,81,2,NULL),(1674,52,81,2,NULL),(1675,53,81,2,NULL),(1676,54,81,2,NULL),(1677,55,81,2,NULL),(1678,56,81,2,NULL),(1679,21,82,2,NULL),(1680,23,82,2,NULL),(1681,24,82,2,NULL),(1682,25,82,2,NULL),(1683,28,82,2,NULL),(1684,30,82,2,NULL),(1685,31,82,2,NULL),(1686,32,82,2,NULL),(1687,41,82,2,NULL),(1688,42,82,2,NULL),(1689,43,82,2,NULL),(1690,44,82,2,NULL),(1691,45,82,2,NULL),(1692,46,82,2,NULL),(1693,47,82,2,NULL),(1694,48,82,2,NULL),(1695,49,82,2,NULL),(1696,50,82,2,NULL),(1697,51,82,2,NULL),(1698,52,82,2,NULL),(1699,53,82,2,NULL),(1700,54,82,2,NULL),(1701,55,82,2,NULL),(1702,56,82,2,NULL),(1703,21,83,2,NULL),(1704,23,83,2,NULL),(1705,24,83,2,NULL),(1706,25,83,2,NULL),(1707,28,83,2,NULL),(1708,30,83,2,NULL),(1709,31,83,2,NULL),(1710,32,83,2,NULL),(1711,41,83,2,NULL),(1712,42,83,2,NULL),(1713,43,83,2,NULL),(1714,44,83,2,NULL),(1715,45,83,2,NULL),(1716,46,83,2,NULL),(1717,47,83,2,NULL),(1718,48,83,2,NULL),(1719,49,83,2,NULL),(1720,50,83,2,NULL),(1721,51,83,2,NULL),(1722,52,83,2,NULL),(1723,53,83,2,NULL),(1724,54,83,2,NULL),(1725,55,83,2,NULL),(1726,56,83,2,NULL),(1727,21,84,2,NULL),(1728,23,84,2,NULL),(1729,24,84,2,NULL),(1730,25,84,2,NULL),(1731,28,84,2,NULL),(1732,30,84,2,NULL),(1733,31,84,2,NULL),(1734,32,84,2,NULL),(1735,41,84,2,NULL),(1736,42,84,2,NULL),(1737,43,84,2,NULL),(1738,44,84,2,NULL),(1739,45,84,2,NULL),(1740,46,84,2,NULL),(1741,47,84,2,NULL),(1742,48,84,2,NULL),(1743,49,84,2,NULL),(1744,50,84,2,NULL),(1745,51,84,2,NULL),(1746,52,84,2,NULL),(1747,53,84,2,NULL),(1748,54,84,2,NULL),(1749,55,84,2,NULL),(1750,56,84,2,NULL),(1751,21,85,2,NULL),(1752,23,85,2,NULL),(1753,23,85,2,NULL),(1754,24,85,2,NULL),(1755,25,85,2,NULL),(1756,28,85,2,NULL),(1757,30,85,2,NULL),(1758,31,85,2,NULL),(1759,32,85,2,NULL),(1760,41,85,2,NULL),(1761,42,85,2,NULL),(1762,43,85,2,NULL),(1763,44,85,2,NULL),(1764,45,85,2,NULL),(1765,46,85,2,NULL),(1766,47,85,2,NULL),(1767,48,85,2,NULL),(1768,49,85,2,NULL),(1769,50,85,2,NULL),(1770,51,85,2,NULL),(1771,52,85,2,NULL),(1772,53,85,2,NULL),(1773,54,85,2,NULL),(1774,55,85,2,NULL),(1775,56,85,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:43
