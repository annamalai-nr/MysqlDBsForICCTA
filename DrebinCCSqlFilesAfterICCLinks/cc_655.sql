-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_655
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.MEDIA_BUTTON'),(9,'android.intent.action.NEW_OUTGOING_CALL'),(2,'android.intent.action.PHONE_STATE'),(16,'android.intent.action.PICK'),(18,'android.intent.action.RINGTONE_PICKER'),(19,'android.intent.action.VIEW'),(7,'android.service.wallpaper.WallpaperService'),(13,'com.aichess.alarm.message'),(15,'com.airpush.android.PushServiceStart35426'),(8,'com.airpush.android.PushServiceStart36236'),(10,'com.airpush.android.PushServiceStart54310'),(5,'com.airpush.android.PushServiceStart56632'),(17,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.applovin.sdk.AppLovinService'),(14,'com.google.android.c2dm.intent.RECEIVE'),(12,'com.google.android.c2dm.intent.REGISTRATION'),(4,'com.jiubang.goscreenlock.theme');
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
INSERT INTO `Applications` VALUES (1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake',1),(2,'com.free_apps.golocker_iphone4s',5),(3,'com.alarm.puzle',1),(4,'com.custom.lwp.pinkbutterfliesglitterlwp',4),(5,'com.airbit.soft.siii.lwp',3),(6,'com.aichess.guitar',3),(7,'com.andromadhu.freeway',2);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'com.airbit.soft.siii.lwp');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderSettings'),(2,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderCalibrateShakeSensitivity'),(3,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderManagePlaybackVoices'),(4,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderHowWouldISound'),(5,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.SamplingService'),(6,1,'com.plankton.device.android.service.AndroidMDKService'),(7,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderBroadcastReceiver'),(8,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.g'),(9,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.e'),(10,1,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.d'),(11,3,'com.alarm.puzle.Dashboard'),(12,2,'com.free_apps.golocker_iphone4s.GOLockerInstallDialog'),(13,3,'com.alarm.puzle.AddAlarm'),(14,3,'com.alarm.puzle.EditAlarm'),(15,3,'com.alarm.puzle.EasyLevelPuzzel'),(16,2,'com.airpush.android.PushAds'),(17,3,'com.alarm.puzle.PreviewSnoozeActivity'),(18,2,'com.free_apps.golocker_iphone4s.srv'),(19,3,'com.alarm.puzle.MediumLevelPuzzel'),(20,2,'com.free_apps.golocker_iphone4s.GoDownloadServiceervice'),(21,3,'com.alarm.puzle.HardLevelPuzzel'),(22,2,'com.airpush.android.PushService'),(23,3,'com.alarm.puzle.EasyLevelSeries'),(24,3,'com.alarm.puzle.MediumLevelSeries'),(25,2,'com.apperhand.device.android.AndroidSDKProvider'),(26,3,'com.alarm.puzle.HardLevelSeries'),(27,2,'com.free_apps.golocker_iphone4s.rcvr'),(28,3,'com.alarm.puzle.AlarmSnoozeActivity'),(29,2,'com.airpush.android.UserDetailsReceiver'),(30,3,'com.alarm.puzle.SnoozeService'),(31,4,'com.custom.lwp.pinkbutterfliesglitterlwp.settings'),(32,2,'com.airpush.android.MessageReceiver'),(33,4,'com.airpush.android.PushAds'),(34,3,'com.apperhand.device.android.AndroidSDKProvider'),(35,2,'com.airpush.android.DeliveryReceiver'),(36,4,'com.sellaring.sdk.PostCallScreenActivity'),(37,3,'com.alarm.puzle.AlarmReceiver'),(38,2,'com.free_apps.golocker_iphone4s.bootRcvr'),(39,4,'com.custom.lwp.pinkbutterfliesglitterlwp.IFBTLiveWallpaperService'),(40,2,'com.Leadbolt.AdNotification'),(41,4,'com.apperhand.device.android.AndroidSDKProvider'),(42,4,'com.airpush.android.PushService'),(43,4,'com.airpush.android.UserDetailsReceiver'),(44,4,'com.airpush.android.MessageReceiver'),(45,4,'com.airpush.android.DeliveryReceiver'),(46,4,'com.Leadbolt.AdNotification'),(47,4,'com.custom.lwp.pinkbutterfliesglitterlwp.BootReceiver'),(48,4,'com.sellaring.sdk.AlarmReceiver'),(49,4,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(50,4,'com.sellaring.sdk.PhoneStateReceiver'),(51,5,'com.airbit.soft.siii.lwp.WallpaperSettings'),(52,5,'com.airpush.android.PushAds'),(53,5,'com.airbit.soft.siii.lwp.RainDropsMain'),(54,5,'com.airpush.android.PushService'),(55,5,'com.apperhand.device.android.AndroidSDKProvider'),(56,6,'com.aichess.guitar.MainMenuActivity'),(57,5,'com.applovin.sdk.AppLovinService'),(58,6,'com.aichess.guitar.SettingsActivity'),(59,5,'com.airpush.android.UserDetailsReceiver'),(60,6,'com.aichess.guitar.HelpActivity'),(61,6,'com.aichess.guitar.BrowserActivity'),(62,5,'com.airpush.android.MessageReceiver'),(63,6,'com.aichess.guitar.SelectSkillActivity'),(64,5,'com.airpush.android.DeliveryReceiver'),(65,5,'com.airbit.soft.siii.lwp.boot'),(66,6,'com.aichess.guitar.GameActivity'),(67,6,'com.aichess.guitar.SongFinishedActivity'),(68,6,'com.aichess.guitar.ErrorReportActivity'),(69,5,'com.Leadbolt.AdNotification'),(70,6,'com.aichess.guitar.TestActivityestActivity'),(71,5,'com.applovin.sdk.AppLovinNotificationReceiver'),(72,6,'com.aichess.guitar.PlatformView'),(73,5,'com.applovin.sdk.AppLovinPushReceiver'),(74,6,'com.apperhand.device.android.AndroidSDKProvider'),(75,6,'com.Leadbolt.AdNotification'),(76,6,'com.aichess.guitar.BootReceiver'),(77,7,'com.andromadhu.freeway.Welcome'),(78,7,'com.andromadhu.freeway.HassanGame'),(79,7,'com.andromadhu.freeway.GameScore'),(80,7,'com.airpush.android.PushAds'),(81,7,'com.apperhand.device.android.AndroidSDKProvider'),(82,7,'com.airpush.android.PushService'),(83,7,'com.airpush.android.UserDetailsReceiver'),(84,7,'com.airpush.android.MessageReceiver'),(85,7,'com.airpush.android.DeliveryReceiver'),(86,7,'com.andromadhu.freeway.BootReceiver'),(87,3,'com.apperhand.device.android.b.d'),(88,3,'com.alarm.puzle.Dashboard$1'),(89,3,'com.apperhand.device.android.b.a'),(90,6,'com.waps.AppConnect'),(91,6,'com.waps.an'),(92,6,'com.apperhand.device.android.a.b'),(93,6,'com.apperhand.device.android.a.d'),(94,6,'com.waps.OffersWebView'),(95,6,'com.Leadbolt.AdController'),(96,6,'com.waps.SDKUtils');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'M_INSTALLATION_URL'),(2,7,'state'),(3,6,'M_SERVER_URL'),(4,6,'APPLICATION_ID'),(5,6,'DEVELOPER_ID'),(6,12,'selectedId'),(7,27,'selectedId'),(8,16,'tone_uri'),(9,16,'selectedId'),(10,21,'PLAY_TYPE'),(11,20,'SNOOZE_TYPE'),(12,12,'tone_uri'),(13,12,'SNOOZE_TYPE'),(14,31,'APPLICATION_ID'),(15,20,'selectedId'),(16,12,'PLAY_TYPE'),(17,21,'selectedId'),(18,21,'SNOOZE_TYPE'),(19,31,'DEVELOPER_ID'),(20,16,'SNOOZE_TYPE'),(21,25,'selectedId'),(22,23,'SNOOZE_TYPE'),(23,18,'selectedId'),(24,23,'tone_uri'),(25,18,'SNOOZE_TYPE'),(26,16,'PLAY_TYPE'),(27,11,'android.intent.extra.ringtone.PICKED_URI'),(28,23,'PLAY_TYPE'),(29,18,'tone_uri'),(30,31,'USER_AGENT'),(31,21,'tone_uri'),(32,20,'PLAY_TYPE'),(33,10,'android.intent.extra.ringtone.PICKED_URI'),(34,31,'M_SERVER_URL'),(35,31,'FIRST_RUN'),(36,18,'PLAY_TYPE'),(37,23,'selectedId'),(38,33,'selectedId'),(39,20,'tone_uri'),(40,61,'WAPS_ID'),(41,53,'WAPS_ID'),(42,64,'WAPS_ID'),(43,59,'WAPS_ID'),(44,63,'WAPS_ID'),(45,56,'WAPS_ID'),(46,73,'WAPS_ID'),(47,55,'WAPS_ID'),(48,64,'com.aichess.guitar.FinishedSongInfo'),(49,70,'USER_AGENT'),(50,61,'ADVIEW'),(51,53,'ADVIEW'),(52,64,'ADVIEW'),(53,59,'ADVIEW'),(54,63,'ADVIEW'),(55,56,'ADVIEW'),(56,73,'ADVIEW'),(57,69,'ADVIEW'),(58,55,'ADVIEW'),(59,69,'UrlPath'),(60,70,'SERVICE_MODE'),(61,65,'com.aichess.guitar.ErrorReport.PLEASE_TEXT'),(62,61,'DEVICE_ID'),(63,53,'DEVICE_ID'),(64,64,'DEVICE_ID'),(65,59,'DEVICE_ID'),(66,63,'DEVICE_ID'),(67,56,'DEVICE_ID'),(68,73,'DEVICE_ID'),(69,55,'DEVICE_ID'),(70,69,'URL_PARAMS'),(71,69,'URL'),(72,69,'Notify_Url_Params'),(73,69,'Offers_URL'),(74,65,'com.aichess.guitar.ErrorReport.REPORT'),(75,69,'SHWO_FLAG'),(76,61,'CLIENT_PACKAGE'),(77,53,'CLIENT_PACKAGE'),(78,64,'CLIENT_PACKAGE'),(79,59,'CLIENT_PACKAGE'),(80,63,'CLIENT_PACKAGE'),(81,56,'CLIENT_PACKAGE'),(82,55,'CLIENT_PACKAGE'),(83,65,'com.aichess.guitar.ErrorReport.DETAILS'),(84,63,'com.aichess.guitar.Activity:state'),(85,69,'isFinshClose'),(86,69,'offers_webview_tag'),(87,73,'CLIENT_PACKAGE'),(88,70,'M_SERVER_URL'),(89,72,'sectionid'),(90,69,'ACTIVITY_FLAG'),(91,70,'DEVELOPER_ID'),(92,70,'APPLICATION_ID'),(93,65,'com.aichess.guitar.ErrorReport.CAUSE_TEXT'),(94,69,'CLIENT_PACKAGE'),(95,61,'com.aichess.guitar.Activity:page'),(96,53,'com.aichess.guitar.Activity:page'),(97,59,'com.aichess.guitar.Activity:page'),(98,56,'com.aichess.guitar.Activity:page'),(99,55,'com.aichess.guitar.Activity:page'),(100,63,'com.aichess.guitar.SongInfo'),(101,61,'APP_ID'),(102,53,'APP_ID'),(103,64,'APP_ID'),(104,59,'APP_ID'),(105,63,'APP_ID'),(106,56,'APP_ID'),(107,73,'APP_ID'),(108,55,'APP_ID'),(109,61,'WAPS_PID'),(110,53,'WAPS_PID'),(111,64,'WAPS_PID'),(112,59,'WAPS_PID'),(113,63,'WAPS_PID'),(114,56,'WAPS_PID'),(115,73,'WAPS_PID'),(116,55,'WAPS_PID'),(117,69,'USER_ID'),(118,61,'com.aichess.guitar.SongInfo'),(119,69,'Notify_Id'),(120,70,'FIRST_RUN'),(121,61,'APP_PID'),(122,53,'APP_PID'),(123,64,'APP_PID'),(124,59,'APP_PID'),(125,63,'APP_PID'),(126,56,'APP_PID'),(127,73,'APP_PID'),(128,55,'APP_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,11,'a',1,NULL,NULL),(9,12,'a',1,NULL,NULL),(10,13,'a',0,NULL,NULL),(11,14,'a',0,NULL,NULL),(12,15,'a',0,NULL,NULL),(13,16,'a',0,NULL,NULL),(14,17,'a',0,NULL,NULL),(15,18,'s',0,NULL,NULL),(16,19,'a',0,NULL,NULL),(17,20,'s',0,NULL,NULL),(18,21,'a',0,NULL,NULL),(19,22,'s',1,NULL,NULL),(20,23,'a',0,NULL,NULL),(21,24,'a',0,NULL,NULL),(22,25,'s',0,NULL,NULL),(23,26,'a',0,NULL,NULL),(24,27,'r',0,NULL,NULL),(25,28,'a',0,NULL,NULL),(26,29,'r',0,NULL,NULL),(27,30,'s',0,NULL,NULL),(28,31,'a',1,NULL,NULL),(29,32,'r',0,NULL,NULL),(30,33,'a',0,NULL,NULL),(31,34,'s',0,NULL,NULL),(32,35,'r',0,NULL,NULL),(33,37,'r',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,39,'s',1,40,NULL),(37,40,'r',0,NULL,NULL),(38,41,'s',0,NULL,NULL),(39,42,'s',1,NULL,NULL),(40,43,'r',0,NULL,NULL),(41,44,'r',0,NULL,NULL),(42,45,'r',0,NULL,NULL),(43,46,'r',0,NULL,NULL),(44,47,'r',1,NULL,NULL),(45,48,'r',0,NULL,NULL),(46,49,'r',1,NULL,NULL),(47,50,'r',1,NULL,NULL),(48,51,'a',1,NULL,NULL),(49,52,'a',0,NULL,NULL),(50,53,'s',1,40,NULL),(51,54,'s',1,NULL,NULL),(52,55,'s',0,NULL,NULL),(53,56,'a',1,NULL,NULL),(54,57,'s',1,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,59,'r',0,NULL,NULL),(58,62,'r',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,64,'r',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,65,'r',1,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'r',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'r',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,74,'s',0,NULL,NULL),(71,73,'r',1,50,NULL),(72,75,'r',0,NULL,NULL),(73,76,'r',1,NULL,NULL),(74,77,'a',1,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'s',0,NULL,NULL),(79,82,'s',1,NULL,NULL),(80,83,'r',0,NULL,NULL),(81,84,'r',0,NULL,NULL),(82,85,'r',0,NULL,NULL),(83,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,1,4),(3,2,4),(4,2,5),(5,3,1),(6,4,1),(7,5,7),(8,6,1),(9,7,18),(10,8,11),(11,9,25),(12,10,25),(13,11,14),(14,12,25),(15,13,18),(16,14,25),(17,15,10),(18,16,25),(19,17,14),(20,18,20),(21,19,21),(22,20,16),(23,21,25),(24,22,12),(25,23,10),(26,24,25),(27,25,8),(28,26,14),(29,27,10),(30,28,25),(31,29,25),(32,30,14),(33,31,25),(34,32,12),(35,33,21),(36,34,18),(37,35,20),(38,36,25),(39,37,14),(40,38,23),(41,39,10),(42,40,14),(43,41,14),(44,42,25),(45,43,14),(46,44,21),(47,45,14),(48,46,12),(49,47,31),(50,48,14),(51,49,25),(52,50,25),(53,51,8),(54,52,14),(55,53,23),(56,54,14),(57,55,31),(58,56,14),(59,57,16),(60,58,23),(61,59,14),(62,60,25),(63,61,14),(64,62,31),(65,63,20),(66,64,16),(67,65,33),(68,66,25),(69,67,14),(70,68,25),(71,69,25),(72,70,14),(73,71,10),(74,72,14),(75,73,14),(76,74,8),(77,75,8),(78,76,14),(79,77,25),(80,78,11),(81,79,14),(82,80,14),(83,81,25),(84,82,25),(85,83,31),(86,84,14),(87,85,25),(88,86,25),(89,87,25),(90,88,11),(91,89,8),(92,90,14),(93,91,25),(94,92,11),(95,93,56),(96,93,59),(97,93,53),(98,93,55),(99,93,63),(100,93,61),(101,93,64),(102,94,56),(103,94,55),(104,94,53),(105,94,59),(106,94,61),(107,94,63),(108,94,64),(109,95,53),(110,96,70),(111,97,53),(112,97,64),(113,97,55),(114,97,61),(115,97,63),(116,97,56),(117,97,59),(118,98,70),(119,99,53),(120,99,55),(121,99,56),(122,99,59),(123,99,61),(124,99,63),(125,99,64),(126,100,70),(127,101,70),(128,102,59),(129,102,53),(130,102,55),(131,102,56),(132,102,61),(133,102,63),(134,102,64),(135,103,69),(136,104,64),(137,104,63),(138,104,53),(139,104,56),(140,104,73),(141,104,55),(142,104,72),(143,104,59),(144,104,61),(145,105,64),(146,105,55),(147,105,53),(148,105,59),(149,105,56),(150,105,63),(151,105,61),(152,106,53),(153,106,72),(154,106,55),(155,106,56),(156,106,61),(157,106,64),(158,106,63),(159,106,73),(160,106,59),(161,107,59),(162,108,70),(163,109,61),(164,109,63),(165,109,64),(166,109,53),(167,109,55),(168,109,56),(169,109,59),(170,110,70),(171,111,53),(172,111,63),(173,111,64),(174,111,59),(175,111,61),(176,111,55),(177,111,56),(178,112,55),(179,112,56),(180,112,61),(181,112,59),(182,112,65),(183,112,64),(184,112,63),(185,112,53),(186,113,56),(187,113,59),(188,113,61),(189,113,63),(190,113,64),(191,113,53),(192,113,55),(193,114,63),(194,114,64),(195,114,61),(196,114,59),(197,114,55),(198,114,56),(199,114,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.g: void run()>',84,'r',NULL),(2,8,'<com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.g: void run()>',69,'r',NULL),(3,9,'<com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.e: void onClick(android.view.View)>',8,'a',NULL),(4,6,'<com.plankton.device.android.service.AndroidMDKService: void a(android.content.Context,java.lang.String,java.lang.String)>',12,'s',NULL),(5,7,'<com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.CallEnderBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(6,10,'<com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake.d: void onClick(android.view.View)>',8,'a',NULL),(7,21,'<com.alarm.puzle.HardLevelPuzzel: void onClick(android.view.View)>',166,'s',NULL),(8,14,'<com.alarm.puzle.EditAlarm: void onClick(android.view.View)>',202,'a',NULL),(9,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',28,'a',NULL),(10,28,'<com.alarm.puzle.AlarmSnoozeActivity: void b()>',6,'s',NULL),(11,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',28,'a',NULL),(12,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',253,'a',NULL),(13,21,'<com.alarm.puzle.HardLevelPuzzel: void onClick(android.view.View)>',221,'a',NULL),(14,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',47,'a',NULL),(15,13,'<com.alarm.puzle.AddAlarm: void onClick(android.view.View)>',75,'a',NULL),(16,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',118,'a',NULL),(17,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',109,'a',NULL),(18,23,'<com.alarm.puzle.EasyLevelSeries: void onClick(android.view.View)>',166,'s',NULL),(19,24,'<com.alarm.puzle.MediumLevelSeries: void onClick(android.view.View)>',166,'s',NULL),(20,19,'<com.alarm.puzle.MediumLevelPuzzel: void onClick(android.view.View)>',166,'s',NULL),(21,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',90,'a',NULL),(22,15,'<com.alarm.puzle.EasyLevelPuzzel: void onClick(android.view.View)>',221,'a',NULL),(23,13,'<com.alarm.puzle.AddAlarm: void onClick(android.view.View)>',82,'a',NULL),(24,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',213,'a',NULL),(25,11,'<com.alarm.puzle.Dashboard: boolean onContextItemSelected(android.view.MenuItem)>',32,'a',NULL),(26,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',162,'a',NULL),(27,13,'<com.alarm.puzle.AddAlarm: void onClick(android.view.View)>',199,'a',NULL),(28,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',128,'a',NULL),(29,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',109,'a',NULL),(30,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',176,'a',NULL),(31,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',233,'a',NULL),(32,15,'<com.alarm.puzle.EasyLevelPuzzel: void onClick(android.view.View)>',166,'s',NULL),(33,24,'<com.alarm.puzle.MediumLevelSeries: void onClick(android.view.View)>',221,'a',NULL),(34,21,'<com.alarm.puzle.HardLevelPuzzel: void onClick(android.view.View)>',206,'a',NULL),(35,23,'<com.alarm.puzle.EasyLevelSeries: void onClick(android.view.View)>',206,'a',NULL),(36,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',66,'a',NULL),(37,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',212,'a',NULL),(38,26,'<com.alarm.puzle.HardLevelSeries: void onClick(android.view.View)>',206,'a',NULL),(39,13,'<com.alarm.puzle.AddAlarm: void onClick(android.view.View)>',7,'a',NULL),(40,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',142,'a',NULL),(41,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',47,'a',NULL),(42,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',278,'a',NULL),(43,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',317,'a',NULL),(44,24,'<com.alarm.puzle.MediumLevelSeries: void onClick(android.view.View)>',206,'a',NULL),(45,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',77,'a',NULL),(46,15,'<com.alarm.puzle.EasyLevelPuzzel: void onClick(android.view.View)>',206,'a',NULL),(47,87,'<com.apperhand.device.android.b.d: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(48,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',219,'a',NULL),(49,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',195,'a',NULL),(50,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',143,'a',NULL),(51,88,'<com.alarm.puzle.Dashboard$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(52,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',97,'a',NULL),(53,26,'<com.alarm.puzle.HardLevelSeries: void onClick(android.view.View)>',221,'a',NULL),(54,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',257,'a',NULL),(55,89,'<com.apperhand.device.android.b.a: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(56,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',297,'a',NULL),(57,19,'<com.alarm.puzle.MediumLevelPuzzel: void onClick(android.view.View)>',206,'a',NULL),(58,26,'<com.alarm.puzle.HardLevelSeries: void onClick(android.view.View)>',166,'s',NULL),(59,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',157,'a',NULL),(60,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',157,'a',NULL),(61,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',232,'a',NULL),(62,89,'<com.apperhand.device.android.b.a: java.util.List d()>',14,'p',NULL),(63,23,'<com.alarm.puzle.EasyLevelSeries: void onClick(android.view.View)>',221,'a',NULL),(64,19,'<com.alarm.puzle.MediumLevelPuzzel: void onClick(android.view.View)>',221,'a',NULL),(65,37,'<com.alarm.puzle.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'a',NULL),(66,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',78,'a',NULL),(67,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',117,'a',NULL),(68,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',219,'a',NULL),(69,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',183,'a',NULL),(70,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',90,'a',NULL),(71,13,'<com.alarm.puzle.AddAlarm: void onClick(android.view.View)>',192,'a',NULL),(72,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',182,'a',NULL),(73,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',252,'a',NULL),(74,11,'<com.alarm.puzle.Dashboard: boolean onContextItemSelected(android.view.MenuItem)>',25,'a',NULL),(75,11,'<com.alarm.puzle.Dashboard: void onClick(android.view.View)>',7,'a',NULL),(76,17,'<com.alarm.puzle.PreviewSnoozeActivity: void onClick(android.view.View)>',277,'a',NULL),(77,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',257,'a',NULL),(78,14,'<com.alarm.puzle.EditAlarm: void onClick(android.view.View)>',71,'a',NULL),(79,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',66,'a',NULL),(80,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',238,'a',NULL),(81,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',163,'a',NULL),(82,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',176,'a',NULL),(83,87,'<com.apperhand.device.android.b.d: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(84,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',195,'a',NULL),(85,28,'<com.alarm.puzle.AlarmSnoozeActivity: void a()>',238,'a',NULL),(86,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',98,'a',NULL),(87,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',298,'a',NULL),(88,14,'<com.alarm.puzle.EditAlarm: void onClick(android.view.View)>',7,'a',NULL),(89,34,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(90,17,'<com.alarm.puzle.PreviewSnoozeActivity: void a()>',128,'a',NULL),(91,28,'<com.alarm.puzle.AlarmSnoozeActivity: void onClick(android.view.View)>',318,'a',NULL),(92,14,'<com.alarm.puzle.EditAlarm: void onClick(android.view.View)>',195,'a',NULL),(93,90,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(94,91,'<com.waps.an: void onClick(android.view.View)>',55,'a',NULL),(95,74,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(96,92,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(97,56,'<com.aichess.guitar.MainMenuActivity: void onClick(android.view.View)>',16,'a',NULL),(98,93,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(99,56,'<com.aichess.guitar.MainMenuActivity: void onClick(android.view.View)>',20,'a',NULL),(100,92,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(101,93,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(102,67,'<com.aichess.guitar.SongFinishedActivity: void onClick(android.view.View)>',8,'a',NULL),(103,94,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(104,95,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(105,96,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(106,95,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(107,61,'<com.aichess.guitar.BrowserActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(108,92,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(109,91,'<com.waps.an: void onClick(android.view.View)>',84,'a',NULL),(110,93,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(111,96,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(112,68,'<com.aichess.guitar.ErrorReportActivity: void onClick(android.view.View)>',16,'a',NULL),(113,63,'<com.aichess.guitar.SelectSkillActivity: void playSong()>',23,'a',NULL),(114,56,'<com.aichess.guitar.MainMenuActivity: void onClick(android.view.View)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,2,3),(3,8,16),(4,27,16),(5,54,17),(6,69,18),(7,89,18),(8,92,1),(9,93,1),(10,97,17),(11,98,19),(12,99,1),(13,100,1),(14,101,17),(15,102,17),(16,103,17),(17,104,19),(18,105,19),(19,106,19),(20,107,19),(21,108,19),(22,109,19),(23,113,19),(24,114,20),(25,115,20),(26,116,20),(27,117,20),(28,118,20),(29,119,20),(30,120,20),(31,121,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,92,1),(2,93,2),(3,99,1),(4,100,2),(5,104,5),(6,104,2),(7,105,5),(8,105,1),(9,106,1),(10,106,5),(11,107,5),(12,107,2),(13,108,5),(14,109,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/crazyapps/com/call/ender/bad/reception/end/annoying/call/fake/CallEnderCalibrateShakeSensitivity'),(2,4,'com/plankton/device/android/service/AndroidMDKService'),(3,6,'com/crazyapps/com/call/ender/bad/reception/end/annoying/call/fake/CallEnderHowWouldISound'),(4,7,'com/alarm/puzle/SnoozeService'),(5,9,'com/alarm/puzle/EasyLevelPuzzel'),(6,10,'com/alarm/puzle/SnoozeService'),(7,11,'com/alarm/puzle/EasyLevelPuzzel'),(8,12,'com/alarm/puzle/HardLevelPuzzel'),(9,13,'com/alarm/puzle/PreviewSnoozeActivity'),(10,14,'com/alarm/puzle/MediumLevelPuzzel'),(11,15,'com/alarm/puzle/Dashboard'),(12,16,'com/alarm/puzle/HardLevelPuzzel'),(13,17,'com/alarm/puzle/MediumLevelSeries'),(14,18,'com/alarm/puzle/SnoozeService'),(15,19,'com/alarm/puzle/SnoozeService'),(16,20,'com/alarm/puzle/SnoozeService'),(17,21,'com/alarm/puzle/EasyLevelSeries'),(18,22,'com/alarm/puzle/PreviewSnoozeActivity'),(19,23,'com/alarm/puzle/Dashboard'),(20,24,'com/alarm/puzle/EasyLevelPuzzel'),(21,25,'com/alarm/puzle/EditAlarm'),(22,26,'com/alarm/puzle/MediumLevelSeries'),(23,28,'com/alarm/puzle/HardLevelSeries'),(24,29,'com/alarm/puzle/MediumLevelSeries'),(25,30,'com/alarm/puzle/MediumLevelPuzzel'),(26,31,'com/alarm/puzle/MediumLevelPuzzel'),(27,32,'com/alarm/puzle/SnoozeService'),(28,33,'com/alarm/puzle/PreviewSnoozeActivity'),(29,34,'com/alarm/puzle/AlarmSnoozeActivity'),(30,35,'com/alarm/puzle/AlarmSnoozeActivity'),(31,36,'com/alarm/puzle/HardLevelPuzzel'),(32,37,'com/alarm/puzle/EasyLevelPuzzel'),(33,38,'com/alarm/puzle/AlarmSnoozeActivity'),(34,39,'com/alarm/puzle/Dashboard'),(35,40,'com/alarm/puzle/EasyLevelSeries'),(36,41,'com/alarm/puzle/MediumLevelPuzzel'),(37,42,'com/alarm/puzle/EasyLevelSeries'),(38,43,'com/alarm/puzle/HardLevelSeries'),(39,44,'com/alarm/puzle/AlarmSnoozeActivity'),(40,45,'com/alarm/puzle/EasyLevelPuzzel'),(41,46,'com/alarm/puzle/AlarmSnoozeActivity'),(42,47,'com/alarm/puzle/EasyLevelSeries'),(43,48,'com/alarm/puzle/HardLevelPuzzel'),(44,49,'com/alarm/puzle/EasyLevelSeries'),(45,50,'com/alarm/puzle/EditAlarm'),(46,51,'com/alarm/puzle/MediumLevelPuzzel'),(47,52,'com/alarm/puzle/PreviewSnoozeActivity'),(48,53,'com/alarm/puzle/HardLevelSeries'),(49,55,'com/alarm/puzle/MediumLevelSeries'),(50,56,'com/alarm/puzle/AlarmSnoozeActivity'),(51,57,'com/alarm/puzle/SnoozeService'),(52,58,'com/alarm/puzle/EasyLevelPuzzel'),(53,59,'com/alarm/puzle/EasyLevelPuzzel'),(54,60,'com/alarm/puzle/MediumLevelPuzzel'),(55,61,'com/alarm/puzle/PreviewSnoozeActivity'),(56,62,'com/alarm/puzle/PreviewSnoozeActivity'),(57,63,'com/alarm/puzle/AlarmSnoozeActivity'),(58,64,'com/alarm/puzle/EasyLevelPuzzel'),(59,65,'com/alarm/puzle/HardLevelPuzzel'),(60,66,'com/alarm/puzle/EasyLevelSeries'),(61,67,'com/alarm/puzle/HardLevelSeries'),(62,68,'com/alarm/puzle/EasyLevelSeries'),(63,70,'com/alarm/puzle/HardLevelSeries'),(64,71,'com/alarm/puzle/HardLevelPuzzel'),(65,72,'com/alarm/puzle/PreviewSnoozeActivity'),(66,73,'com/alarm/puzle/AddAlarm'),(67,74,'com/alarm/puzle/EasyLevelSeries'),(68,75,'com/alarm/puzle/HardLevelSeries'),(69,76,'com/alarm/puzle/Dashboard'),(70,77,'com/alarm/puzle/HardLevelPuzzel'),(71,78,'com/alarm/puzle/MediumLevelSeries'),(72,79,'com/alarm/puzle/MediumLevelSeries'),(73,80,'com/alarm/puzle/MediumLevelPuzzel'),(74,81,'com/alarm/puzle/HardLevelPuzzel'),(75,82,'com/alarm/puzle/MediumLevelSeries'),(76,83,'com/alarm/puzle/MediumLevelPuzzel'),(77,84,'com/alarm/puzle/MediumLevelSeries'),(78,85,'com/alarm/puzle/Dashboard'),(79,86,'com/apperhand/device/android/AndroidSDKProvider'),(80,87,'com/alarm/puzle/HardLevelSeries'),(81,88,'com/alarm/puzle/HardLevelSeries'),(82,90,'(.*)'),(83,94,'com/apperhand/device/android/AndroidSDKProvider'),(84,95,'com/aichess/guitar/SettingsActivity'),(85,96,'com/aichess/guitar/HelpActivity'),(86,108,''),(87,109,''),(88,110,'com/aichess/guitar/SelectSkillActivity'),(89,111,'(.*)'),(90,112,'(.*)'),(91,122,'com/aichess/guitar/GameActivity'),(92,123,'com/aichess/guitar/BrowserActivity');
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
INSERT INTO `IData` VALUES (1,8,1),(2,27,2),(3,98,10),(4,104,11),(5,105,12),(6,106,13),(7,107,14),(8,108,15),(9,109,16),(10,113,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.KEY_EVENT'),(2,2,'android.intent.extra.KEY_EVENT'),(3,4,'M_SERVER_URL'),(4,4,'DEVELOPER_ID'),(5,4,'APPLICATION_ID'),(6,4,'M_INSTALLATION_URL'),(7,7,'selectedId'),(8,9,'totalPlays'),(9,9,'volume'),(10,9,'vibration'),(11,9,'tone_uri'),(12,9,'alarmType'),(13,10,'selectedId'),(14,11,'totalPlays'),(15,11,'volume'),(16,11,'vibration'),(17,11,'tone_uri'),(18,11,'alarmType'),(19,12,'totalPlays'),(20,12,'volume'),(21,12,'vibration'),(22,12,'tone_uri'),(23,12,'alarmType'),(24,14,'totalPlays'),(25,14,'volume'),(26,14,'vibration'),(27,14,'tone_uri'),(28,14,'alarmType'),(29,16,'totalPlays'),(30,16,'volume'),(31,16,'vibration'),(32,16,'tone_uri'),(33,16,'alarmType'),(34,17,'totalPlays'),(35,17,'volume'),(36,17,'vibration'),(37,17,'tone_uri'),(38,17,'alarmType'),(39,18,'selectedId'),(40,19,'selectedId'),(41,20,'selectedId'),(42,21,'totalPlays'),(43,21,'volume'),(44,21,'vibration'),(45,21,'tone_uri'),(46,21,'alarmType'),(47,24,'totalPlays'),(48,24,'volume'),(49,24,'vibration'),(50,24,'tone_uri'),(51,24,'alarmType'),(52,26,'totalPlays'),(53,26,'volume'),(54,26,'vibration'),(55,26,'tone_uri'),(56,26,'alarmType'),(57,28,'totalPlays'),(58,28,'volume'),(59,28,'vibration'),(60,28,'tone_uri'),(61,28,'alarmType'),(62,29,'totalPlays'),(63,29,'volume'),(64,29,'vibration'),(65,29,'tone_uri'),(66,29,'alarmType'),(67,30,'totalPlays'),(68,30,'volume'),(69,30,'vibration'),(70,30,'tone_uri'),(71,30,'alarmType'),(72,31,'totalPlays'),(73,31,'volume'),(74,31,'vibration'),(75,31,'tone_uri'),(76,31,'alarmType'),(77,32,'selectedId'),(78,34,'selectedId'),(79,35,'selectedId'),(80,36,'totalPlays'),(81,36,'volume'),(82,36,'vibration'),(83,36,'tone_uri'),(84,36,'alarmType'),(85,37,'totalPlays'),(86,37,'volume'),(87,37,'vibration'),(88,37,'tone_uri'),(89,37,'alarmType'),(90,38,'selectedId'),(91,40,'totalPlays'),(92,40,'volume'),(93,40,'vibration'),(94,40,'tone_uri'),(95,40,'alarmType'),(96,41,'totalPlays'),(97,41,'volume'),(98,41,'vibration'),(99,41,'tone_uri'),(100,41,'alarmType'),(101,42,'totalPlays'),(102,42,'volume'),(103,42,'vibration'),(104,42,'tone_uri'),(105,42,'alarmType'),(106,43,'totalPlays'),(107,43,'volume'),(108,43,'vibration'),(109,43,'tone_uri'),(110,43,'alarmType'),(111,44,'selectedId'),(112,45,'totalPlays'),(113,45,'volume'),(114,45,'vibration'),(115,45,'tone_uri'),(116,45,'alarmType'),(117,46,'selectedId'),(118,47,'totalPlays'),(119,47,'volume'),(120,47,'vibration'),(121,47,'tone_uri'),(122,47,'alarmType'),(123,48,'totalPlays'),(124,48,'volume'),(125,48,'vibration'),(126,48,'tone_uri'),(127,48,'alarmType'),(128,49,'totalPlays'),(129,49,'volume'),(130,49,'vibration'),(131,49,'tone_uri'),(132,49,'alarmType'),(133,51,'totalPlays'),(134,51,'volume'),(135,51,'vibration'),(136,51,'tone_uri'),(137,51,'alarmType'),(138,53,'totalPlays'),(139,53,'volume'),(140,53,'vibration'),(141,53,'tone_uri'),(142,53,'alarmType'),(143,54,'android.intent.extra.shortcut.NAME'),(144,54,'android.intent.extra.shortcut.ICON'),(145,54,'android.intent.extra.shortcut.INTENT'),(146,55,'totalPlays'),(147,55,'volume'),(148,55,'vibration'),(149,55,'tone_uri'),(150,55,'alarmType'),(151,56,'selectedId'),(152,57,'selectedId'),(153,58,'totalPlays'),(154,58,'volume'),(155,58,'vibration'),(156,58,'tone_uri'),(157,58,'alarmType'),(158,59,'totalPlays'),(159,59,'volume'),(160,59,'vibration'),(161,59,'tone_uri'),(162,59,'alarmType'),(163,60,'totalPlays'),(164,60,'volume'),(165,60,'vibration'),(166,60,'tone_uri'),(167,60,'alarmType'),(168,63,'selectedId'),(169,64,'totalPlays'),(170,64,'volume'),(171,64,'vibration'),(172,64,'tone_uri'),(173,64,'alarmType'),(174,65,'totalPlays'),(175,65,'volume'),(176,65,'vibration'),(177,65,'tone_uri'),(178,65,'alarmType'),(179,66,'totalPlays'),(180,66,'volume'),(181,66,'vibration'),(182,66,'tone_uri'),(183,66,'alarmType'),(184,67,'totalPlays'),(185,67,'volume'),(186,67,'vibration'),(187,67,'tone_uri'),(188,67,'alarmType'),(189,68,'totalPlays'),(190,68,'volume'),(191,68,'vibration'),(192,68,'tone_uri'),(193,68,'alarmType'),(194,69,'android.intent.extra.ringtone.TYPE'),(195,70,'totalPlays'),(196,70,'volume'),(197,70,'vibration'),(198,70,'tone_uri'),(199,70,'alarmType'),(200,71,'totalPlays'),(201,71,'volume'),(202,71,'vibration'),(203,71,'tone_uri'),(204,71,'alarmType'),(205,74,'totalPlays'),(206,74,'volume'),(207,74,'vibration'),(208,74,'tone_uri'),(209,74,'alarmType'),(210,75,'totalPlays'),(211,75,'volume'),(212,75,'vibration'),(213,75,'tone_uri'),(214,75,'alarmType'),(215,77,'totalPlays'),(216,77,'volume'),(217,77,'vibration'),(218,77,'tone_uri'),(219,77,'alarmType'),(220,78,'totalPlays'),(221,78,'volume'),(222,78,'vibration'),(223,78,'tone_uri'),(224,78,'alarmType'),(225,79,'totalPlays'),(226,79,'volume'),(227,79,'vibration'),(228,79,'tone_uri'),(229,79,'alarmType'),(230,80,'totalPlays'),(231,80,'volume'),(232,80,'vibration'),(233,80,'tone_uri'),(234,80,'alarmType'),(235,81,'totalPlays'),(236,81,'volume'),(237,81,'vibration'),(238,81,'tone_uri'),(239,81,'alarmType'),(240,82,'totalPlays'),(241,82,'volume'),(242,82,'vibration'),(243,82,'tone_uri'),(244,82,'alarmType'),(245,83,'totalPlays'),(246,83,'volume'),(247,83,'vibration'),(248,83,'tone_uri'),(249,83,'alarmType'),(250,84,'totalPlays'),(251,84,'volume'),(252,84,'vibration'),(253,84,'tone_uri'),(254,84,'alarmType'),(255,86,'USER_AGENT'),(256,86,'M_SERVER_URL'),(257,86,'DEVELOPER_ID'),(258,86,'FIRST_RUN'),(259,86,'APPLICATION_ID'),(260,87,'totalPlays'),(261,87,'volume'),(262,87,'vibration'),(263,87,'tone_uri'),(264,87,'alarmType'),(265,88,'totalPlays'),(266,88,'volume'),(267,88,'vibration'),(268,88,'tone_uri'),(269,88,'alarmType'),(270,89,'android.intent.extra.ringtone.TYPE'),(271,90,'USER_ID'),(272,90,'CLIENT_PACKAGE'),(273,90,'Offers_URL'),(274,90,'offers_webview_tag'),(275,90,'URL_PARAMS'),(276,94,'M_SERVER_URL'),(277,94,'USER_AGENT'),(278,94,'SERVICE_MODE'),(279,94,'FIRST_RUN'),(280,94,'DEVELOPER_ID'),(281,94,'APPLICATION_ID'),(282,97,'android.intent.extra.shortcut.NAME'),(283,97,'android.intent.extra.shortcut.ICON'),(284,97,'android.intent.extra.shortcut.INTENT'),(285,101,'android.intent.extra.shortcut.NAME'),(286,101,'android.intent.extra.shortcut.ICON_RESOURCE'),(287,101,'android.intent.extra.shortcut.INTENT'),(288,102,'android.intent.extra.shortcut.NAME'),(289,102,'android.intent.extra.shortcut.ICON'),(290,102,'android.intent.extra.shortcut.ICON_RESOURCE'),(291,102,'android.intent.extra.shortcut.INTENT'),(292,103,'android.intent.extra.shortcut.NAME'),(293,103,'android.intent.extra.shortcut.ICON'),(294,103,'android.intent.extra.shortcut.INTENT'),(295,110,'com.aichess.guitar.SongInfo'),(296,111,'CLIENT_PACKAGE'),(297,111,'URL'),(298,111,'offers_webview_tag'),(299,112,'CLIENT_PACKAGE'),(300,112,'URL'),(301,112,'isFinshClose'),(302,112,'offers_webview_tag'),(303,114,'android.intent.extra.INTENT'),(304,115,'android.intent.extra.INTENT'),(305,116,'android.intent.extra.TITLE'),(306,116,'android.intent.extra.INTENT'),(307,117,'android.intent.extra.INTENT'),(308,118,'android.intent.extra.TITLE'),(309,118,'android.intent.extra.INTENT'),(310,119,'android.intent.extra.INTENT'),(311,120,'android.intent.extra.TITLE'),(312,120,'android.intent.extra.INTENT'),(313,121,'android.intent.extra.TITLE'),(314,121,'android.intent.extra.INTENT'),(315,122,'com.aichess.guitar.SongInfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,4),(6,6,5),(7,7,6),(8,8,7),(9,9,8),(10,10,6),(11,11,6),(12,12,9),(13,12,2),(14,13,7),(15,14,10),(16,15,1),(17,16,11),(18,17,6),(19,18,12),(20,19,13),(21,19,6),(22,20,14),(23,21,1),(24,22,15),(25,23,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,2),(5,7,3),(6,10,3),(7,15,1),(8,17,3),(9,18,4),(10,19,3),(11,20,4),(12,21,1),(13,23,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake'),(2,4,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake'),(3,6,'com.crazyapps.com.call.ender.bad.reception.end.annoying.call.fake'),(4,7,'com.alarm.puzle'),(5,9,'com.alarm.puzle'),(6,10,'com.alarm.puzle'),(7,11,'com.alarm.puzle'),(8,12,'com.alarm.puzle'),(9,13,'com.alarm.puzle'),(10,14,'com.alarm.puzle'),(11,15,'com.alarm.puzle'),(12,16,'com.alarm.puzle'),(13,17,'com.alarm.puzle'),(14,18,'com.alarm.puzle'),(15,19,'com.alarm.puzle'),(16,20,'com.alarm.puzle'),(17,21,'com.alarm.puzle'),(18,22,'com.alarm.puzle'),(19,23,'com.alarm.puzle'),(20,24,'com.alarm.puzle'),(21,25,'com.alarm.puzle'),(22,26,'com.alarm.puzle'),(23,28,'com.alarm.puzle'),(24,29,'com.alarm.puzle'),(25,30,'com.alarm.puzle'),(26,31,'com.alarm.puzle'),(27,32,'com.alarm.puzle'),(28,33,'com.alarm.puzle'),(29,34,'com.alarm.puzle'),(30,35,'com.alarm.puzle'),(31,36,'com.alarm.puzle'),(32,37,'com.alarm.puzle'),(33,38,'com.alarm.puzle'),(34,39,'com.alarm.puzle'),(35,40,'com.alarm.puzle'),(36,41,'com.alarm.puzle'),(37,42,'com.alarm.puzle'),(38,43,'com.alarm.puzle'),(39,44,'com.alarm.puzle'),(40,45,'com.alarm.puzle'),(41,46,'com.alarm.puzle'),(42,47,'com.alarm.puzle'),(43,48,'com.alarm.puzle'),(44,49,'com.alarm.puzle'),(45,50,'com.alarm.puzle'),(46,51,'com.alarm.puzle'),(47,52,'com.alarm.puzle'),(48,53,'com.alarm.puzle'),(49,55,'com.alarm.puzle'),(50,56,'com.alarm.puzle'),(51,57,'com.alarm.puzle'),(52,58,'com.alarm.puzle'),(53,59,'com.alarm.puzle'),(54,60,'com.alarm.puzle'),(55,61,'com.alarm.puzle'),(56,62,'com.alarm.puzle'),(57,63,'com.alarm.puzle'),(58,64,'com.alarm.puzle'),(59,65,'com.alarm.puzle'),(60,66,'com.alarm.puzle'),(61,67,'com.alarm.puzle'),(62,68,'com.alarm.puzle'),(63,70,'com.alarm.puzle'),(64,71,'com.alarm.puzle'),(65,72,'com.alarm.puzle'),(66,73,'com.alarm.puzle'),(67,74,'com.alarm.puzle'),(68,75,'com.alarm.puzle'),(69,76,'com.alarm.puzle'),(70,77,'com.alarm.puzle'),(71,78,'com.alarm.puzle'),(72,79,'com.alarm.puzle'),(73,80,'com.alarm.puzle'),(74,81,'com.alarm.puzle'),(75,82,'com.alarm.puzle'),(76,83,'com.alarm.puzle'),(77,84,'com.alarm.puzle'),(78,85,'com.alarm.puzle'),(79,86,'com.alarm.puzle'),(80,87,'com.alarm.puzle'),(81,88,'com.alarm.puzle'),(82,90,'com.aichess.guitar'),(83,92,'(.*)'),(84,93,'(.*)'),(85,94,'com.aichess.guitar'),(86,95,'com.aichess.guitar'),(87,96,'com.aichess.guitar'),(88,99,'(.*)'),(89,100,'(.*)'),(90,104,''),(91,105,''),(92,106,'(.*)'),(93,107,'(.*)'),(94,108,''),(95,109,'(.*)'),(96,110,'com.aichess.guitar'),(97,111,'com.aichess.guitar'),(98,112,'com.aichess.guitar'),(99,122,'com.aichess.guitar'),(100,123,'com.aichess.guitar');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,9,0),(6,19,0),(7,35,0),(8,36,0),(9,39,0),(10,44,0),(11,46,0),(12,47,0),(13,50,0),(14,51,0),(15,53,0),(16,54,0),(17,62,0),(18,71,0),(19,73,0),(20,71,0),(21,74,0),(22,79,0),(23,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
INSERT INTO `IntentPermissions` VALUES (1,1,17),(2,2,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,25,0,0),(26,26,0,0),(27,27,1,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,0,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,48,0,0),(48,49,0,0),(49,50,0,0),(50,51,0,0),(51,52,0,0),(52,53,0,0),(53,54,0,0),(54,55,1,0),(55,56,0,0),(56,57,0,0),(57,58,0,0),(58,59,0,0),(59,60,0,0),(60,61,0,0),(61,63,0,0),(62,64,0,0),(63,65,0,0),(64,66,0,0),(65,67,0,0),(66,68,0,0),(67,69,0,0),(68,70,0,0),(69,71,1,0),(70,72,0,0),(71,73,0,0),(72,74,0,0),(73,75,0,0),(74,76,0,0),(75,77,0,0),(76,78,0,0),(77,79,0,0),(78,80,0,0),(79,81,0,0),(80,82,0,0),(81,84,0,0),(82,85,0,0),(83,86,0,0),(84,87,0,0),(85,88,0,0),(86,89,0,0),(87,90,0,0),(88,91,0,0),(89,92,1,0),(90,93,0,0),(91,94,1,0),(92,94,1,0),(93,94,1,0),(94,95,0,0),(95,97,0,0),(96,99,0,0),(97,101,1,0),(98,102,1,0),(99,103,1,0),(100,103,1,0),(101,104,1,0),(102,104,1,0),(103,104,1,0),(104,105,1,0),(105,105,1,0),(106,105,1,0),(107,105,1,0),(108,105,0,0),(109,105,0,0),(110,107,0,0),(111,109,0,0),(112,109,0,0),(113,111,1,0),(114,112,1,0),(115,112,1,0),(116,112,1,0),(117,112,1,0),(118,112,1,0),(119,112,1,0),(120,112,1,0),(121,112,1,0),(122,113,0,0),(123,114,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,36,2,NULL),(2,69,36,2,NULL),(3,89,36,2,NULL),(4,114,36,2,NULL),(5,115,36,2,NULL),(6,116,36,2,NULL),(7,117,36,2,NULL),(8,118,36,2,NULL),(9,119,36,2,NULL),(10,120,36,2,NULL),(11,121,36,2,NULL),(12,5,39,2,NULL),(13,69,39,2,NULL),(14,89,39,2,NULL),(15,114,39,2,NULL),(16,115,39,2,NULL),(17,116,39,2,NULL),(18,117,39,2,NULL),(19,118,39,2,NULL),(20,119,39,2,NULL),(21,120,39,2,NULL),(22,121,39,2,NULL),(23,5,44,2,NULL),(24,69,44,2,NULL),(25,89,44,2,NULL),(26,114,44,2,NULL),(27,115,44,2,NULL),(28,116,44,2,NULL),(29,117,44,2,NULL),(30,118,44,2,NULL),(31,119,44,2,NULL),(32,120,44,2,NULL),(33,121,44,2,NULL),(34,5,46,2,NULL),(35,69,46,2,NULL),(36,89,46,2,NULL),(37,114,46,2,NULL),(38,115,46,2,NULL),(39,116,46,2,NULL),(40,117,46,2,NULL),(41,118,46,2,NULL),(42,119,46,2,NULL),(43,120,46,2,NULL),(44,121,46,2,NULL),(45,5,47,2,NULL),(46,69,47,2,NULL),(47,89,47,2,NULL),(48,114,47,2,NULL),(49,115,47,2,NULL),(50,116,47,2,NULL),(51,117,47,2,NULL),(52,118,47,2,NULL),(53,119,47,2,NULL),(54,120,47,2,NULL),(55,121,47,2,NULL),(56,25,11,2,NULL),(57,72,14,2,NULL),(58,73,10,2,NULL),(59,5,8,2,NULL),(60,69,8,2,NULL),(61,89,8,2,NULL),(62,114,8,2,NULL),(63,115,8,2,NULL),(64,116,8,2,NULL),(65,117,8,2,NULL),(66,118,8,2,NULL),(67,119,8,2,NULL),(68,120,8,2,NULL),(69,121,8,2,NULL),(70,15,8,2,NULL),(71,23,8,2,NULL),(72,39,8,2,NULL),(73,69,1,2,NULL),(74,69,7,2,NULL),(75,69,9,2,NULL),(76,69,19,2,NULL),(77,69,35,2,NULL),(78,69,50,2,NULL),(79,69,51,2,NULL),(80,69,54,2,NULL),(81,69,62,2,NULL),(82,69,71,2,NULL),(83,69,53,2,NULL),(84,69,73,2,NULL),(85,69,74,2,NULL),(86,69,79,2,NULL),(87,69,83,2,NULL),(88,76,8,2,NULL),(89,85,8,2,NULL),(90,89,1,2,NULL),(91,89,7,2,NULL),(92,89,9,2,NULL),(93,89,19,2,NULL),(94,89,35,2,NULL),(95,89,50,2,NULL),(96,89,51,2,NULL),(97,89,54,2,NULL),(98,89,62,2,NULL),(99,89,71,2,NULL),(100,89,53,2,NULL),(101,89,73,2,NULL),(102,89,74,2,NULL),(103,89,79,2,NULL),(104,89,83,2,NULL),(105,22,14,2,NULL),(106,32,27,2,NULL),(107,46,25,2,NULL),(108,11,12,2,NULL),(109,17,21,2,NULL),(110,26,21,2,NULL),(111,30,16,2,NULL),(112,37,12,2,NULL),(113,40,20,2,NULL),(114,41,16,2,NULL),(115,43,23,2,NULL),(116,45,12,2,NULL),(117,47,20,2,NULL),(118,51,16,2,NULL),(119,53,23,2,NULL),(120,55,21,2,NULL),(121,58,12,2,NULL),(122,60,16,2,NULL),(123,65,18,2,NULL),(124,68,20,2,NULL),(125,70,23,2,NULL),(126,71,18,2,NULL),(127,74,20,2,NULL),(128,77,18,2,NULL),(129,78,21,2,NULL),(130,81,18,2,NULL),(131,87,23,2,NULL),(132,20,27,2,NULL),(133,56,25,2,NULL),(134,62,14,2,NULL),(135,7,27,2,NULL),(136,13,14,2,NULL),(137,34,25,2,NULL),(138,18,27,2,NULL),(139,35,25,2,NULL),(140,61,14,2,NULL),(141,19,27,2,NULL),(142,33,14,2,NULL),(143,44,25,2,NULL),(144,38,25,2,NULL),(145,52,14,2,NULL),(146,57,27,2,NULL),(147,9,12,2,NULL),(148,10,27,2,NULL),(149,12,18,2,NULL),(150,14,16,2,NULL),(151,16,18,2,NULL),(152,21,20,2,NULL),(153,24,12,2,NULL),(154,28,23,2,NULL),(155,29,21,2,NULL),(156,31,16,2,NULL),(157,36,18,2,NULL),(158,42,20,2,NULL),(159,48,18,2,NULL),(160,49,20,2,NULL),(161,59,12,2,NULL),(162,64,12,2,NULL),(163,66,20,2,NULL),(164,67,23,2,NULL),(165,75,23,2,NULL),(166,79,21,2,NULL),(167,80,16,2,NULL),(168,82,21,2,NULL),(169,83,16,2,NULL),(170,84,21,2,NULL),(171,88,23,2,NULL),(172,86,22,2,NULL),(173,86,31,2,NULL),(174,86,38,2,NULL),(175,86,52,2,NULL),(176,86,70,2,NULL),(177,86,78,2,NULL),(178,63,25,2,NULL),(179,5,74,2,NULL),(180,114,74,2,NULL),(181,115,74,2,NULL),(182,116,74,2,NULL),(183,117,74,2,NULL),(184,118,74,2,NULL),(185,119,74,2,NULL),(186,120,74,2,NULL),(187,121,74,2,NULL),(188,5,79,2,NULL),(189,114,79,2,NULL),(190,115,79,2,NULL),(191,116,79,2,NULL),(192,117,79,2,NULL),(193,118,79,2,NULL),(194,119,79,2,NULL),(195,120,79,2,NULL),(196,121,79,2,NULL),(197,5,83,2,NULL),(198,114,83,2,NULL),(199,115,83,2,NULL),(200,116,83,2,NULL),(201,117,83,2,NULL),(202,118,83,2,NULL),(203,119,83,2,NULL),(204,120,83,2,NULL),(205,121,83,2,NULL),(206,5,1,2,NULL),(207,114,1,2,NULL),(208,115,1,2,NULL),(209,116,1,2,NULL),(210,117,1,2,NULL),(211,118,1,2,NULL),(212,119,1,2,NULL),(213,120,1,2,NULL),(214,121,1,2,NULL),(215,4,6,2,NULL),(216,5,9,2,NULL),(217,5,19,2,NULL),(218,5,35,2,NULL),(219,5,50,2,NULL),(220,5,51,2,NULL),(221,5,54,2,NULL),(222,5,62,2,NULL),(223,5,71,2,NULL),(224,5,53,2,NULL),(225,114,7,2,NULL),(226,115,7,2,NULL),(227,116,7,2,NULL),(228,117,7,2,NULL),(229,118,7,2,NULL),(230,119,7,2,NULL),(231,120,7,2,NULL),(232,121,7,2,NULL),(233,5,73,2,NULL),(234,95,55,2,NULL),(235,96,56,2,NULL),(236,123,59,2,NULL),(237,114,53,2,NULL),(238,115,53,2,NULL),(239,116,53,2,NULL),(240,117,53,2,NULL),(241,118,53,2,NULL),(242,119,53,2,NULL),(243,120,53,2,NULL),(244,121,53,2,NULL),(245,110,61,2,NULL),(246,122,63,2,NULL),(247,114,9,2,NULL),(248,115,9,2,NULL),(249,116,9,2,NULL),(250,117,9,2,NULL),(251,118,9,2,NULL),(252,119,9,2,NULL),(253,120,9,2,NULL),(254,121,9,2,NULL),(255,114,19,2,NULL),(256,115,19,2,NULL),(257,116,19,2,NULL),(258,117,19,2,NULL),(259,118,19,2,NULL),(260,119,19,2,NULL),(261,120,19,2,NULL),(262,121,19,2,NULL),(263,114,35,2,NULL),(264,115,35,2,NULL),(265,116,35,2,NULL),(266,117,35,2,NULL),(267,118,35,2,NULL),(268,119,35,2,NULL),(269,120,35,2,NULL),(270,121,35,2,NULL),(271,114,50,2,NULL),(272,115,50,2,NULL),(273,116,50,2,NULL),(274,117,50,2,NULL),(275,118,50,2,NULL),(276,119,50,2,NULL),(277,120,50,2,NULL),(278,121,50,2,NULL),(279,114,51,2,NULL),(280,115,51,2,NULL),(281,116,51,2,NULL),(282,117,51,2,NULL),(283,118,51,2,NULL),(284,119,51,2,NULL),(285,120,51,2,NULL),(286,121,51,2,NULL),(287,114,54,2,NULL),(288,115,54,2,NULL),(289,116,54,2,NULL),(290,117,54,2,NULL),(291,118,54,2,NULL),(292,119,54,2,NULL),(293,120,54,2,NULL),(294,121,54,2,NULL),(295,114,62,2,NULL),(296,115,62,2,NULL),(297,116,62,2,NULL),(298,117,62,2,NULL),(299,118,62,2,NULL),(300,119,62,2,NULL),(301,120,62,2,NULL),(302,121,62,2,NULL),(303,114,71,2,NULL),(304,115,71,2,NULL),(305,116,71,2,NULL),(306,117,71,2,NULL),(307,118,71,2,NULL),(308,119,71,2,NULL),(309,120,71,2,NULL),(310,121,71,2,NULL),(311,114,73,2,NULL),(312,115,73,2,NULL),(313,116,73,2,NULL),(314,117,73,2,NULL),(315,118,73,2,NULL),(316,119,73,2,NULL),(317,120,73,2,NULL),(318,121,73,2,NULL),(319,94,22,2,NULL),(320,94,31,2,NULL),(321,94,38,2,NULL),(322,94,52,2,NULL),(323,94,70,2,NULL),(324,94,78,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (28,'android.permission.ACCESS_COARSE_LOCATION'),(30,'android.permission.ACCESS_FINE_LOCATION'),(33,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(31,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(40,'android.permission.BIND_WALLPAPER'),(38,'android.permission.CALL_PHONE'),(49,'android.permission.FLASHLIGHT'),(42,'android.permission.GET_ACCOUNTS'),(47,'android.permission.GET_TASKS'),(36,'android.permission.HARDWARE_TEST'),(19,'android.permission.INTERNET'),(17,'android.permission.MODIFY_AUDIO_SETTINGS'),(48,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(37,'android.permission.PROCESS_OUTGOING_CALLS'),(41,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(43,'android.permission.READ_SMS'),(29,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECORD_AUDIO'),(45,'android.permission.SEND_SMS'),(21,'android.permission.VIBRATE'),(32,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(44,'com.airbit.soft.siii.lwp.permission.C2D_MESSAGE'),(26,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.android.launcher.permission.READ_SETTINGS'),(18,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS'),(34,'com.fede.launcher.permission.READ_SETTINGS'),(46,'com.google.android.c2dm.permission.RECEIVE'),(50,'com.google.android.c2dm.permission.SEND'),(16,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(27,'com.lge.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.lge.launcher.permission.WRITE_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(20,'com.motorola.dlauncher.permission.UNINSTALL_SHORTCUT'),(13,'com.motorola.dlauncher.permission.WRITE_SETTINGS'),(12,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(8,'com.motorola.launcher.permission.UNINSTALL_SHORTCUT'),(6,'com.motorola.launcher.permission.WRITE_SETTINGS'),(39,'om.android.launcher.permission.INSTALL_SHORTCUT'),(35,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (44,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(2,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.aichess.guitar',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,47,3),(2,62,4),(3,83,5),(4,96,6),(5,98,7),(6,98,8),(7,100,9),(8,106,17),(9,108,18),(10,110,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,27),(27,1,26),(28,2,1),(29,2,2),(30,2,3),(31,2,5),(32,2,7),(33,2,9),(34,2,10),(35,2,11),(36,2,12),(37,3,34),(38,2,15),(39,3,5),(40,2,16),(41,3,36),(42,2,19),(43,3,7),(44,2,18),(45,3,9),(46,2,21),(47,3,10),(48,2,22),(49,3,11),(50,2,24),(51,3,15),(52,2,26),(53,3,17),(54,2,29),(55,3,16),(56,2,28),(57,3,19),(58,2,31),(59,3,18),(60,2,30),(61,3,21),(62,2,34),(63,4,1),(64,3,22),(65,2,35),(66,4,2),(67,3,24),(68,2,32),(69,4,3),(70,3,26),(71,2,33),(72,4,5),(73,4,7),(74,4,9),(75,4,10),(76,4,11),(77,4,12),(78,4,15),(79,4,16),(80,4,19),(81,4,18),(82,4,21),(83,4,22),(84,4,24),(85,4,26),(86,4,29),(87,4,28),(88,4,31),(89,4,30),(90,4,34),(91,4,35),(92,4,32),(93,4,33),(94,4,38),(95,4,39),(96,4,37),(97,5,1),(98,5,2),(99,5,3),(100,5,5),(101,5,7),(102,5,9),(103,5,10),(104,5,11),(105,5,12),(106,5,15),(107,5,16),(108,5,19),(109,5,18),(110,5,21),(111,5,22),(112,5,24),(113,5,26),(114,5,29),(115,5,28),(116,5,31),(117,6,34),(118,5,30),(119,6,35),(120,5,34),(121,6,1),(122,5,35),(123,6,2),(124,5,33),(125,6,3),(126,5,42),(127,6,5),(128,5,43),(129,6,7),(130,5,41),(131,6,9),(132,5,46),(133,5,44),(134,5,45),(135,6,10),(136,6,11),(137,6,12),(138,6,47),(139,6,15),(140,6,16),(141,6,19),(142,6,48),(143,6,18),(144,6,22),(145,6,24),(146,6,26),(147,6,29),(148,6,28),(149,6,31),(150,7,34),(151,7,35),(152,7,1),(153,7,32),(154,7,3),(155,7,5),(156,7,7),(157,7,9),(158,7,10),(159,7,11),(160,7,12),(161,7,15),(162,7,16),(163,7,49),(164,7,19),(165,7,18),(166,7,21),(167,7,22),(168,7,24),(169,7,26),(170,7,29),(171,7,28),(172,7,31),(173,7,30);
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

-- Dump completed on 2015-10-12  3:31:16
