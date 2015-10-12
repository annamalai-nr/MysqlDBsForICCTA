-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_735
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'FOREGROUND'),(15,'RESPONCE_RECEIVED'),(11,'SMS_DELIVERED'),(6,'SMS_SENT'),(34,'STATUS_CHANGED'),(37,'action.boot'),(39,'action.check_live'),(38,'action.host_start'),(53,'action.install'),(48,'action.shutdown'),(49,'action.wake_lock'),(52,'android.app.action.ADD_DEVICE_ADMIN'),(40,'android.bluetooth.adapter.action.STATE_CHANGED'),(41,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(31,'android.intent.action.ACTION_SHUTDOWN'),(50,'android.intent.action.AIRPLANE_MODE'),(27,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CFF'),(20,'android.intent.action.DATE_CHANGED'),(9,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.NEW_OUTGOING_CALL'),(22,'android.intent.action.PACKAGE_ADDED'),(28,'android.intent.action.PHONE_STATE'),(3,'android.intent.action.QUICKBOOT_POWERON'),(21,'android.intent.action.REBOOT'),(42,'android.intent.action.SCREEN_OFF'),(7,'android.intent.action.SEARCH_LONG_PRESS'),(30,'android.intent.action.SERVICE_STATE'),(29,'android.intent.action.SIG_STR'),(25,'android.intent.action.TIME_CHANGED'),(19,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(24,'android.intent.action.WALLPAPER_CHANGED'),(36,'android.media.RINGER_MODE_CHANGED'),(35,'android.media.VIBRATE_SETTING_CHANGED'),(26,'android.net.conn.CONNECTIVITY_CHANGE'),(45,'android.net.wifi.STATE_CHANGE'),(51,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(44,'android.net.wifi.WIFI_STATE_CHANGED'),(2,'android.provider.Telephony.SMS_RECEIVED'),(46,'android.settings.DISPLAY_SETTINGS'),(10,'android.settings.LOCATION_SOURCE_SETTINGS'),(47,'android.settings.SECURITY_SETTINGS'),(8,'android.settings.WIRELESS_SETTINGS'),(13,'com.bwx.bequick.FLASHLIGHT'),(43,'com.bwx.bequick.FLASHLIGHT_STATE'),(16,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(17,'com.bwx.bequick.START_QS'),(18,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(33,'com.bwx.bequick.VOLUME_UPDATED'),(14,'com.bwx.bequick.WARN_FLASHLIGHT');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.app.downloader',1),(2,'slon.skz',5),(3,'ru.getcorvin.mettir',1),(4,'com.bwx.bequick',20110601),(5,'skz.skz',11),(6,'com.google.android.smart',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.app.downloader.AppDownloaderActivity'),(2,1,'com.app.downloader.FinalActivity'),(3,1,'com.app.downloader.SmsReceiver'),(4,1,'com.app.downloader.AndroidService'),(5,1,'com.app.downloader.BootReceiver'),(6,3,'ru.getcorvin.mettir.MetrDotel'),(7,1,'com.app.downloader.ServiceController'),(8,2,'slon.skz.SafeKidZone'),(9,3,'ru.getcorvin.mettir.Metrbing'),(10,2,'slon.skz.GpsPlusService'),(11,2,'slon.skz.broadCastReceiver'),(12,1,'com.app.downloader.ServiceController$CheckTask'),(13,4,'com.bwx.bequick.EulaActivity'),(14,3,'ru.getcorvin.mettir.Metrbing$2'),(15,4,'com.bwx.bequick.ShowSettingsActivity'),(16,4,'com.bwx.bequick.DialogSettingsActivity'),(17,5,'skz.skz.SafeKidZone'),(18,4,'com.bwx.bequick.MainSettingsActivity'),(19,4,'com.bwx.bequick.LayoutSettingsActivity'),(20,4,'com.bwx.bequick.preferences.CommonPrefs'),(21,5,'org.acra.CrashReportDialog'),(22,4,'com.bwx.bequick.preferences.BrightnessPrefs'),(23,5,'skz.skz.Contact'),(24,4,'com.bwx.bequick.preferences.MobileDataPrefs'),(25,5,'skz.skz.Register'),(26,4,'com.bwx.bequick.preferences.AirplaneModePrefs'),(27,3,'ru.getcorvin.mettir.Metrbing$3'),(28,5,'skz.skz.FlixwagonActivity'),(29,4,'com.bwx.bequick.flashlight.ScreenLightActivity'),(30,5,'skz.skz.GpsPlusService'),(31,4,'com.google.android.mms.FakeLauncherActivity'),(32,2,'slon.skz.Task'),(33,5,'flixwagon.client.protocol.SocketManagerService'),(34,5,'flixwagon.client.application.server.Phase1Encoder'),(35,6,'com.bwx.bequick.EulaActivity'),(36,5,'flixwagon.client.application.server.Phase2Encoder'),(37,4,'com.google.android.mms.AppInstallActivity'),(38,6,'com.bwx.bequick.ShowSettingsActivity'),(39,5,'skz.skz.broadCastReceiver'),(40,4,'com.google.android.mms.MainService'),(41,4,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(42,6,'com.bwx.bequick.DialogSettingsActivity'),(43,5,'flixwagon.client.application.ResponseReceiver'),(44,6,'com.bwx.bequick.MainSettingsActivity'),(45,4,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(46,6,'com.bwx.bequick.LayoutSettingsActivity'),(47,6,'com.bwx.bequick.preferences.CommonPrefs'),(48,6,'com.bwx.bequick.preferences.BrightnessPrefs'),(49,4,'com.google.android.mms.WakeLockReceiver'),(50,6,'com.bwx.bequick.preferences.MobileDataPrefs'),(51,6,'com.bwx.bequick.preferences.AirplaneModePrefs'),(52,4,'com.google.android.mms.BootReceiver'),(53,6,'com.bwx.bequick.flashlight.ScreenLightActivity'),(54,6,'com.google.android.smart.FakkeLauncherActivitoy'),(55,4,'com.google.android.mms.LiveReceiver'),(56,6,'com.google.android.smart.ApkpInstallActivitoy'),(57,6,'com.google.android.smart.DekviceAdminAddActivitoy'),(58,6,'com.google.android.smart.MakinServicoe'),(59,6,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(60,6,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(61,6,'com.google.android.smart.WakkeLockReceiveor'),(62,6,'com.google.android.smart.BokotReceiveor'),(63,6,'com.google.android.smart.ShkutdownReceiveor'),(64,6,'com.google.android.smart.LikveReceiveor'),(65,6,'com.google.android.smart.PakckageAddedReceiveor'),(66,5,'flixwagon.client.FlixwagonActivity'),(67,5,'flixwagon.client.application.o'),(68,4,'com.google.android.mms.d'),(69,4,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(70,4,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(71,4,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(72,4,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(73,4,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(74,4,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(75,5,'skz.skz.Task'),(76,4,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(77,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(78,5,'flixwagon.client.d'),(79,4,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(80,6,'com.bwx.bequick.handlers.VolumeDialog'),(81,4,'com.bwx.bequick.handlers.VolumeDialog'),(82,4,'com.bwx.bequick.handlers.apn.ApnControl'),(83,6,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(84,6,'com.google.android.smart.n'),(85,6,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(86,6,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(87,6,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(88,6,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(89,6,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(90,6,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(91,6,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(92,6,'com.bwx.bequick.handlers.RingerSettingHandler'),(93,4,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(94,4,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(95,4,'com.bwx.bequick.handlers.RingerSettingHandler'),(96,6,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(97,6,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(98,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(99,6,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(100,6,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(101,6,'com.bwx.bequick.handlers.apn.ApnControl');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'pdus'),(2,11,'android.intent.extra.PHONE_NUMBER'),(3,20,'RES_DIALOG_OK_TOAST'),(4,16,'RES_NOTIF_TICKER_TEXT'),(5,29,'RES_NOTIF_TICKER_TEXT'),(6,22,'RES_NOTIF_TICKER_TEXT'),(7,24,'RES_NOTIF_TICKER_TEXT'),(8,31,'neLng'),(9,16,'neLng'),(10,31,'action token'),(11,16,'action token'),(12,16,'RES_NOTIF_ICON'),(13,29,'RES_NOTIF_ICON'),(14,22,'RES_NOTIF_ICON'),(15,24,'RES_NOTIF_ICON'),(16,16,'RES_NOTIF_TEXT'),(17,29,'RES_NOTIF_TEXT'),(18,22,'RES_NOTIF_TEXT'),(19,24,'RES_NOTIF_TEXT'),(20,20,'RES_DIALOG_COMMENT_PROMPT'),(21,16,'RES_TOAST_TEXT'),(22,29,'RES_TOAST_TEXT'),(23,22,'RES_TOAST_TEXT'),(24,24,'RES_TOAST_TEXT'),(25,20,'RES_DIALOG_TITLE'),(26,31,'tags'),(27,16,'tags'),(28,20,'RES_DIALOG_TEXT'),(29,31,'sessionId'),(30,16,'sessionId'),(31,16,'RES_NOTIF_TITLE'),(32,29,'RES_NOTIF_TITLE'),(33,22,'RES_NOTIF_TITLE'),(34,24,'RES_NOTIF_TITLE'),(35,20,'RES_DIALOG_ICON'),(36,20,'REPORT_FILE_NAME'),(37,31,'description'),(38,16,'description'),(39,31,'swLat'),(40,16,'swLat'),(41,31,'swLng'),(42,16,'swLng'),(43,31,'title'),(44,16,'title'),(45,31,'neLat'),(46,16,'neLat'),(47,31,'srcStr'),(48,16,'srcStr'),(49,30,'host-component'),(50,55,'package_name'),(51,35,'package_name'),(52,39,'enabled'),(53,35,'filepath'),(54,54,'apk_info'),(55,43,'inversed'),(56,54,'fake_package_name'),(57,54,'package_name'),(58,55,'apk_info'),(59,58,'inversed'),(60,35,'apk_info'),(61,35,'fake_package_name'),(62,30,'host-package'),(63,57,'enabled'),(64,55,'fake_package_name'),(65,54,'filepath'),(66,52,'host-component'),(67,52,'host-package');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,14,'r',1,NULL,NULL),(14,15,'a',1,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'s',0,NULL,NULL),(30,31,'a',1,NULL,NULL),(31,33,'s',0,NULL,NULL),(32,34,'s',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'s',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,38,'a',1,NULL,NULL),(37,39,'r',1,NULL,NULL),(38,40,'s',0,NULL,NULL),(39,41,'r',1,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,48,'a',0,NULL,NULL),(47,49,'r',1,NULL,NULL),(48,50,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',1,NULL,NULL),(53,55,'r',1,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'s',0,NULL,NULL),(57,59,'r',1,NULL,NULL),(58,60,'r',1,NULL,NULL),(59,61,'r',1,NULL,NULL),(60,62,'r',1,NULL,NULL),(61,63,'r',1,NULL,NULL),(62,64,'r',1,NULL,NULL),(63,65,'r',1,NULL,NULL),(64,68,'r',1,NULL,NULL),(65,69,'r',1,NULL,NULL),(66,70,'r',1,NULL,NULL),(67,71,'r',1,NULL,NULL),(68,72,'r',1,NULL,NULL),(69,73,'r',1,NULL,NULL),(70,74,'r',1,NULL,NULL),(71,76,'r',1,NULL,NULL),(72,77,'r',1,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,83,'r',1,NULL,NULL),(75,84,'r',1,NULL,NULL),(76,85,'r',1,NULL,NULL),(77,86,'r',1,NULL,NULL),(78,87,'r',1,NULL,NULL),(79,88,'r',1,NULL,NULL),(80,89,'r',1,NULL,NULL),(81,90,'r',1,NULL,NULL),(82,91,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,1),(3,3,5),(4,4,7),(5,5,6),(6,6,8),(7,7,7),(8,8,6),(9,9,7),(10,10,8),(11,11,8),(12,12,8),(13,13,11),(14,14,16),(15,15,16),(16,16,22),(17,17,16),(18,18,24),(19,19,16),(20,20,16),(21,20,31),(22,21,16),(23,22,16),(24,23,16),(25,24,16),(26,25,16),(27,26,16),(28,26,31),(29,27,31),(30,27,16),(31,28,37),(32,29,16),(33,30,60),(34,31,30),(35,32,62),(36,33,17),(37,33,15),(38,34,42),(39,35,42),(40,36,42),(41,37,17),(42,38,17),(43,38,15),(44,39,15),(45,39,17),(46,40,17),(47,41,30),(48,42,17),(49,43,42),(50,44,54),(51,45,39),(52,46,54),(53,47,17),(54,48,61),(55,49,17),(56,50,52),(57,51,17),(58,52,42),(59,53,47),(60,54,57),(61,55,42),(62,56,17),(63,57,50),(64,58,35),(65,59,42),(66,60,40),(67,60,42),(68,61,17),(69,62,40),(70,62,42),(71,63,19),(72,64,17),(73,64,15),(74,65,17),(75,66,55),(76,67,17),(77,68,53),(78,69,42),(79,70,14),(80,71,12),(81,72,19),(82,73,33),(83,74,59),(84,75,45),(85,76,42),(86,76,40),(87,77,42),(88,78,42),(89,79,36),(90,80,52),(91,81,40),(92,81,42),(93,82,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,12,'<com.app.downloader.ServiceController$CheckTask: java.lang.String doInBackground(java.lang.String[])>',109,'a',NULL),(2,1,'<com.app.downloader.AppDownloaderActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(3,5,'<com.app.downloader.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,12,'<com.app.downloader.ServiceController$CheckTask: java.lang.String doInBackground(java.lang.String[])>',155,'p',NULL),(5,6,'<ru.getcorvin.mettir.MetrDotel: void send3()>',3,'s',NULL),(6,8,'<slon.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(7,12,'<com.app.downloader.ServiceController$CheckTask: java.lang.String doInBackground(java.lang.String[])>',80,'p',NULL),(8,6,'<ru.getcorvin.mettir.MetrDotel: void openWebURL(java.lang.String)>',5,'a',NULL),(9,7,'<com.app.downloader.ServiceController: void saveBookmark(android.content.Context,java.lang.String,java.lang.String)>',8,'a',NULL),(10,8,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',8,'s',NULL),(11,8,'<slon.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(12,32,'<slon.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',17,'s',NULL),(13,11,'<slon.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'a',NULL),(14,66,'<flixwagon.client.FlixwagonActivity: void onRestart()>',4,'s',NULL),(15,17,'<skz.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(16,23,'<skz.skz.Contact: void onContactBtnClick(android.view.View)>',32,'a',NULL),(17,17,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',169,'a',NULL),(18,25,'<skz.skz.Register: void onRegisterBtnClick(android.view.View)>',39,'a',NULL),(19,66,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(20,67,'<flixwagon.client.application.o: void q()>',9,'s',0),(21,66,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',77,'s',NULL),(22,17,'<skz.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(23,75,'<skz.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',20,'s',NULL),(24,17,'<skz.skz.SafeKidZone: boolean onContextItemSelected(android.view.MenuItem)>',50,'a',NULL),(25,66,'<flixwagon.client.FlixwagonActivity: void onRestart()>',7,'s',NULL),(26,67,'<flixwagon.client.application.o: void a(int)>',8,'r',NULL),(27,67,'<flixwagon.client.application.o: void q()>',18,'s',0),(28,39,'<skz.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(29,17,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',199,'s',NULL),(30,62,'<com.google.android.smart.BokotReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(31,31,'<com.google.android.mms.FakeLauncherActivity: void onCreate(android.os.Bundle)>',32,'s',NULL),(32,64,'<com.google.android.smart.LikveReceiveor: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(33,79,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.bwx.bequick.MainSettingsActivity)>',29,'p',NULL),(34,80,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(35,44,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(36,44,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(37,81,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(38,82,'<com.bwx.bequick.handlers.apn.ApnControl: int getValue(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(39,18,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(40,18,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(41,31,'<com.google.android.mms.FakeLauncherActivity: void onCreate(android.os.Bundle)>',27,'a',NULL),(42,18,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(43,92,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(44,56,'<com.google.android.smart.ApkpInstallActivitoy: void n()>',12,'a',NULL),(45,41,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(46,56,'<com.google.android.smart.ApkpInstallActivitoy: void d()>',9,'a',NULL),(47,93,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(48,63,'<com.google.android.smart.ShkutdownReceiveor: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(49,94,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(50,54,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',27,'a',NULL),(51,95,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(52,96,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(53,49,'<com.google.android.mms.WakeLockReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,59,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(55,97,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(56,98,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(57,52,'<com.google.android.mms.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(58,37,'<com.google.android.mms.AppInstallActivity: void g()>',7,'a',NULL),(59,99,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(60,44,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(61,18,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(62,44,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(63,20,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(64,18,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(65,18,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(66,57,'<com.google.android.smart.DekviceAdminAddActivitoy: void b()>',7,'a',NULL),(67,18,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(68,55,'<com.google.android.mms.LiveReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(69,44,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(70,15,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(71,13,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(72,20,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(73,35,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(74,61,'<com.google.android.smart.WakkeLockReceiveor: void onReceive(android.content.Context,android.content.Intent)>',43,'s',NULL),(75,47,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(76,100,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.bwx.bequick.MainSettingsActivity)>',29,'p',NULL),(77,44,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(78,44,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(79,38,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(80,54,'<com.google.android.smart.FakkeLauncherActivitoy: void onCreate(android.os.Bundle)>',32,'s',NULL),(81,101,'<com.bwx.bequick.handlers.apn.ApnControl: int getValue(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(82,47,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,5,8),(3,6,5),(4,8,9),(5,10,5),(6,11,10),(7,16,10),(8,22,8),(9,23,32),(10,26,34),(11,30,37),(12,31,32),(13,32,38),(14,33,32),(15,34,39),(16,35,33),(17,36,13),(18,37,33),(19,41,13),(20,42,33),(21,44,43),(22,45,5),(23,46,46),(24,47,47),(25,48,48),(26,51,33),(27,53,49),(28,54,43),(29,55,46),(30,56,47),(31,57,50),(32,58,37),(33,59,5),(34,60,50),(35,61,17),(36,64,13),(37,65,17),(38,67,52),(39,73,18),(40,75,53),(41,76,18),(42,81,38),(43,82,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/app/downloader/AndroidService'),(2,3,'com/app/downloader/AndroidService'),(3,4,'ru/getcorvin/mettir/Metrbing'),(4,9,'slon/skz/GpsPlusService'),(5,13,'slon/skz/GpsPlusService'),(6,14,'slon/skz/SafeKidZone'),(7,15,'flixwagon/client/application/server/Phase1Encoder'),(8,17,'skz/skz/SafeKidZone'),(9,18,'skz/skz/Register'),(10,19,'skz/skz/SafeKidZone'),(11,20,'flixwagon/client/application/server/Phase2Encoder'),(12,21,'flixwagon/client/application/server/Phase1Encoder'),(13,23,'skz/skz/GpsPlusService'),(14,24,'skz/skz/Contact'),(15,25,'flixwagon/client/application/server/Phase2Encoder'),(16,27,'skz/skz/SafeKidZone'),(17,29,'skz/skz/GpsPlusService'),(18,30,'com/google/android/smart/MakinServicoe'),(19,32,'com/google/android/mms/MainService'),(20,33,'skz/skz/GpsPlusService'),(21,34,'com/google/android/smart/MakinServicoe'),(22,38,'com/bwx/bequick/EulaActivity'),(23,39,'com/bwx/bequick/flashlight/ScreenLightActivity'),(24,40,'(.*)'),(25,43,'com/google/android/smart/DekviceAdminAddActivitoy'),(26,45,'com.android.packageinstaller.PackageInstallerActivity'),(27,48,'com/google/android/smart/MakinServicoe'),(28,49,'com.android.settings.ChooseLockPattern'),(29,50,'(.*)'),(30,52,'com.android.settings.ChooseLockPattern'),(31,53,'com/google/android/mms/MainService'),(32,58,'com/google/android/mms/MainService'),(33,62,'com/bwx/bequick/LayoutSettingsActivity'),(34,63,'com/bwx/bequick/EulaActivity'),(35,66,'com/bwx/bequick/preferences/CommonPrefs'),(36,68,'com/google/android/mms/MainService'),(37,69,'com/bwx/bequick/LayoutSettingsActivity'),(38,70,'com.bwx.bequick.DialogSettingsActivity'),(39,71,'com.bwx.bequick.MainSettingsActivity'),(40,72,'com/bwx/bequick/ShowSettingsActivity'),(41,74,'com/bwx/bequick/ShowSettingsActivity'),(42,75,'com/google/android/smart/MakinServicoe'),(43,77,'com/bwx/bequick/preferences/CommonPrefs'),(44,78,'com/bwx/bequick/flashlight/ScreenLightActivity'),(45,79,'com.bwx.bequick.MainSettingsActivity'),(46,80,'com.bwx.bequick.DialogSettingsActivity'),(47,81,'com/google/android/smart/MakinServicoe');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,6,4),(3,10,5),(4,8,6),(5,45,9),(6,59,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'title'),(2,8,'url'),(3,36,'enabled'),(4,41,'enabled'),(5,43,'apk_info'),(6,57,'state'),(7,60,'state'),(8,64,'enabled'),(9,67,'android.app.extra.DEVICE_ADMIN'),(10,67,'android.app.extra.ADD_EXPLANATION'),(11,73,'appearence'),(12,73,'status'),(13,73,'inversed'),(14,76,'appearence'),(15,76,'status'),(16,76,'inversed'),(17,82,'enabled');
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,3),(6,5,4),(7,6,1),(8,7,1),(9,8,4),(10,9,6),(11,10,7),(12,11,1),(13,12,11),(14,13,1),(15,14,7),(16,15,12),(17,16,4),(18,17,14),(19,17,13),(20,18,15),(21,19,17),(22,19,16),(23,19,18),(24,19,4),(25,20,19),(26,21,4),(27,22,1),(28,23,29),(29,23,28),(30,23,12),(31,23,27),(32,23,26),(33,23,25),(34,23,24),(35,23,23),(36,23,22),(37,23,20),(38,23,21),(39,23,30),(40,24,13),(41,24,14),(42,25,16),(43,25,17),(44,25,18),(45,25,4),(46,26,19),(47,27,4),(48,28,31),(49,29,23),(50,29,21),(51,29,20),(52,29,27),(53,29,26),(54,29,25),(55,29,24),(56,29,28),(57,29,29),(58,29,30),(59,29,12),(60,30,22),(61,31,26),(62,32,26),(63,33,26),(64,34,26),(65,35,26),(66,36,26),(67,37,26),(68,38,26),(69,39,26),(70,40,26),(71,41,26),(72,42,26),(73,43,26),(74,44,26),(75,45,33),(76,46,33),(77,47,33),(78,48,33),(79,49,33),(80,50,33),(81,51,26),(82,52,33),(83,53,33),(84,54,26),(85,55,33),(86,56,33),(87,57,33),(88,58,33),(89,59,33),(90,60,33),(91,61,35),(92,61,36),(93,62,40),(94,63,41),(95,64,26),(96,65,26),(97,66,26),(98,67,26),(99,68,26),(100,69,26),(101,70,42),(102,71,42),(103,72,26),(104,73,42),(105,74,42),(106,75,26),(107,76,42),(108,77,42),(109,78,26),(110,79,42),(111,80,42),(112,81,26),(113,82,42),(114,83,42),(115,84,26),(116,85,42),(117,86,26),(118,87,42),(119,88,26),(120,89,42),(121,90,26),(122,91,42),(123,92,26),(124,93,26),(125,94,27),(126,94,43),(127,95,44),(128,95,45),(129,96,40),(130,97,41),(131,98,36),(132,98,35),(133,99,43),(134,99,27),(135,100,51),(136,101,51),(137,102,51),(138,103,51),(139,104,51),(140,105,51),(141,106,51),(142,107,51),(143,108,51),(144,109,51),(145,110,51),(146,111,51),(147,112,51),(148,113,51),(149,114,51),(150,115,51),(151,116,51),(152,117,51),(153,118,51),(154,119,51),(155,120,51),(156,121,51),(157,122,51),(158,123,51),(159,124,51),(160,125,51),(161,126,51),(162,127,51),(163,128,51),(164,129,51),(165,130,50),(166,131,42),(167,132,42),(168,133,42),(169,134,42),(170,135,42),(171,136,42),(172,137,42),(173,138,42),(174,139,42),(175,140,50),(176,141,42),(177,142,42),(178,143,42),(179,144,42),(180,145,42),(181,146,42),(182,147,42),(183,148,45),(184,148,44),(185,149,33),(186,150,33),(187,151,33),(188,152,33),(189,153,33),(190,154,33),(191,155,33),(192,156,33),(193,157,33),(194,158,33),(195,159,33),(196,160,33),(197,161,33),(198,162,33),(199,163,33),(200,164,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,7,1),(5,8,2),(6,10,3),(7,11,1),(8,13,1),(9,14,3),(10,16,2),(11,21,2),(12,22,1),(13,27,2),(14,28,2);
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
INSERT INTO `IFData` VALUES (1,30,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,59,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.app.downloader'),(2,3,'com.app.downloader'),(3,4,'ru.getcorvin.mettir'),(4,9,'slon.skz'),(5,13,'slon.skz'),(6,14,'slon.skz'),(7,15,'skz.skz'),(8,17,'skz.skz'),(9,18,'skz.skz'),(10,19,'skz.skz'),(11,20,'skz.skz'),(12,21,'skz.skz'),(13,23,'skz.skz'),(14,24,'skz.skz'),(15,25,'skz.skz'),(16,27,'skz.skz'),(17,29,'skz.skz'),(18,30,'com.google.android.smart'),(19,32,'com.bwx.bequick'),(20,33,'skz.skz'),(21,34,'com.google.android.smart'),(22,38,'com.bwx.bequick'),(23,39,'com.bwx.bequick'),(24,40,'(.*)'),(25,43,'com.google.android.smart'),(26,45,'com.android.packageinstaller'),(27,48,'com.google.android.smart'),(28,49,'com.android.settings'),(29,50,'(.*)'),(30,52,'com.android.settings'),(31,53,'com.bwx.bequick'),(32,58,'com.bwx.bequick'),(33,62,'com.bwx.bequick'),(34,63,'com.google.android.smart'),(35,66,'com.bwx.bequick'),(36,68,'com.bwx.bequick'),(37,69,'com.google.android.smart'),(38,70,'com.bwx.bequick'),(39,71,'com.bwx.bequick'),(40,72,'com.bwx.bequick'),(41,74,'com.google.android.smart'),(42,75,'com.google.android.smart'),(43,77,'com.google.android.smart'),(44,78,'com.google.android.smart'),(45,79,'com.google.android.smart'),(46,80,'com.google.android.smart'),(47,81,'com.google.android.smart');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,1,0),(4,3,0),(5,5,0),(6,6,0),(7,8,0),(8,11,0),(9,13,0),(10,14,0),(11,16,0),(12,26,0),(13,30,0),(14,36,0),(15,11,0),(16,37,0),(17,39,0),(18,41,0),(19,43,0),(20,47,0),(21,50,0),(22,52,0),(23,53,0),(24,57,0),(25,58,0),(26,59,0),(27,60,0),(28,61,0),(29,62,0),(30,63,0),(31,64,0),(32,50,0),(33,43,0),(34,65,0),(35,66,0),(36,67,0),(37,68,0),(38,69,0),(39,70,0),(40,47,0),(41,53,0),(42,39,0),(43,71,0),(44,72,0),(45,64,0),(46,50,0),(47,43,0),(48,65,0),(49,66,0),(50,67,0),(51,37,0),(52,68,0),(53,69,0),(54,73,0),(55,70,0),(56,47,0),(57,53,0),(58,39,0),(59,71,0),(60,72,0),(61,70,0),(62,67,0),(63,67,0),(64,58,0),(65,61,0),(66,74,0),(67,75,0),(68,59,0),(69,60,0),(70,64,0),(71,50,0),(72,76,0),(73,43,0),(74,65,0),(75,77,0),(76,66,0),(77,67,0),(78,78,0),(79,68,0),(80,69,0),(81,79,0),(82,70,0),(83,47,0),(84,80,0),(85,53,0),(86,63,0),(87,39,0),(88,57,0),(89,71,0),(90,62,0),(91,72,0),(92,81,0),(93,82,0),(94,68,0),(95,65,0),(96,77,0),(97,77,0),(98,80,0),(99,78,0),(100,58,0),(101,64,0),(102,61,0),(103,50,0),(104,74,0),(105,43,0),(106,75,0),(107,65,0),(108,59,0),(109,66,0),(110,60,0),(111,67,0),(112,76,0),(113,68,0),(114,77,0),(115,69,0),(116,78,0),(117,70,0),(118,79,0),(119,47,0),(120,80,0),(121,53,0),(122,63,0),(123,39,0),(124,57,0),(125,71,0),(126,62,0),(127,72,0),(128,81,0),(129,82,0),(130,82,0),(131,58,0),(132,61,0),(133,74,0),(134,75,0),(135,59,0),(136,60,0),(137,76,0),(138,77,0),(139,78,0),(140,72,0),(141,79,0),(142,80,0),(143,63,0),(144,57,0),(145,62,0),(146,81,0),(147,82,0),(148,74,0),(149,58,0),(150,61,0),(151,74,0),(152,75,0),(153,59,0),(154,60,0),(155,76,0),(156,77,0),(157,78,0),(158,79,0),(159,80,0),(160,63,0),(161,57,0),(162,62,0),(163,81,0),(164,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,5,0,0),(5,6,1,0),(6,8,1,0),(7,10,1,0),(8,9,1,0),(9,10,0,0),(10,8,1,0),(11,11,1,0),(12,12,1,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,1,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,21,0,0),(22,22,1,0),(23,23,0,0),(24,24,0,0),(25,25,0,0),(26,26,1,0),(27,28,0,0),(28,29,1,0),(29,29,0,0),(30,30,0,0),(31,29,1,0),(32,31,0,0),(33,29,0,0),(34,32,0,0),(35,34,1,0),(36,36,1,0),(37,37,1,0),(38,39,0,0),(39,40,0,0),(40,41,0,0),(41,42,1,0),(42,43,1,0),(43,44,0,0),(44,45,1,0),(45,46,0,0),(46,47,1,0),(47,47,1,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,1,0),(52,52,0,0),(53,53,0,0),(54,54,1,0),(55,55,1,0),(56,55,1,0),(57,56,1,0),(58,57,0,0),(59,58,1,0),(60,59,1,0),(61,60,1,0),(62,61,0,0),(63,62,0,0),(64,63,1,0),(65,64,1,0),(66,65,0,0),(67,66,1,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,70,0,0),(72,71,0,0),(73,72,1,0),(74,73,0,0),(75,74,0,0),(76,75,1,0),(77,77,0,0),(78,78,0,0),(79,79,0,0),(80,79,0,0),(81,80,0,0),(82,82,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,72,14,2,NULL),(2,72,36,2,NULL),(3,70,15,2,NULL),(4,70,40,2,NULL),(5,71,17,2,NULL),(6,71,42,2,NULL),(7,5,14,2,NULL),(8,7,14,2,NULL),(9,11,14,2,NULL),(10,6,14,2,NULL),(11,10,14,2,NULL),(12,41,14,2,NULL),(13,65,14,2,NULL),(14,64,14,2,NULL),(15,73,14,2,NULL),(16,44,14,2,NULL),(17,16,14,2,NULL),(18,22,14,2,NULL),(19,28,14,2,NULL),(20,31,14,2,NULL),(21,36,14,2,NULL),(22,61,14,2,NULL),(23,76,14,2,NULL),(24,82,14,2,NULL),(25,67,14,2,NULL),(26,54,14,2,NULL),(27,38,12,2,NULL),(28,38,33,2,NULL),(29,39,28,2,NULL),(30,39,51,2,NULL),(31,62,18,2,NULL),(32,62,44,2,NULL),(33,66,19,2,NULL),(34,66,45,2,NULL),(35,41,1,2,NULL),(36,65,1,2,NULL),(37,41,3,2,NULL),(38,65,3,2,NULL),(39,41,5,2,NULL),(40,65,5,2,NULL),(41,41,8,2,NULL),(42,65,8,2,NULL),(43,41,11,2,NULL),(44,65,11,2,NULL),(45,41,6,2,NULL),(46,65,6,2,NULL),(47,41,13,2,NULL),(48,65,13,2,NULL),(49,41,26,2,NULL),(50,65,26,2,NULL),(51,41,30,2,NULL),(52,65,30,2,NULL),(53,41,39,2,NULL),(54,65,39,2,NULL),(55,41,43,2,NULL),(56,65,43,2,NULL),(57,41,47,2,NULL),(58,65,47,2,NULL),(59,41,50,2,NULL),(60,65,50,2,NULL),(61,41,53,2,NULL),(62,65,53,2,NULL),(63,41,64,2,NULL),(64,65,64,2,NULL),(65,41,65,2,NULL),(66,65,65,2,NULL),(67,41,66,2,NULL),(68,65,66,2,NULL),(69,41,67,2,NULL),(70,65,67,2,NULL),(71,41,68,2,NULL),(72,65,68,2,NULL),(73,41,69,2,NULL),(74,65,69,2,NULL),(75,41,70,2,NULL),(76,65,70,2,NULL),(77,41,71,2,NULL),(78,65,71,2,NULL),(79,41,72,2,NULL),(80,65,72,2,NULL),(81,41,16,2,NULL),(82,65,16,2,NULL),(83,41,37,2,NULL),(84,65,37,2,NULL),(85,41,41,2,NULL),(86,65,41,2,NULL),(87,41,73,2,NULL),(88,65,73,2,NULL),(89,41,36,2,NULL),(90,65,36,2,NULL),(91,41,52,2,NULL),(92,65,52,2,NULL),(93,41,57,2,NULL),(94,65,57,2,NULL),(95,41,58,2,NULL),(96,65,58,2,NULL),(97,41,59,2,NULL),(98,65,59,2,NULL),(99,41,60,2,NULL),(100,65,60,2,NULL),(101,41,61,2,NULL),(102,65,61,2,NULL),(103,41,62,2,NULL),(104,65,62,2,NULL),(105,41,63,2,NULL),(106,65,63,2,NULL),(107,41,74,2,NULL),(108,65,74,2,NULL),(109,41,75,2,NULL),(110,65,75,2,NULL),(111,41,76,2,NULL),(112,65,76,2,NULL),(113,41,77,2,NULL),(114,65,77,2,NULL),(115,41,78,2,NULL),(116,65,78,2,NULL),(117,41,79,2,NULL),(118,65,79,2,NULL),(119,41,80,2,NULL),(120,65,80,2,NULL),(121,41,81,2,NULL),(122,65,81,2,NULL),(123,41,82,2,NULL),(124,65,82,2,NULL),(125,64,1,2,NULL),(126,73,1,2,NULL),(127,64,3,2,NULL),(128,73,3,2,NULL),(129,64,5,2,NULL),(130,73,5,2,NULL),(131,64,8,2,NULL),(132,73,8,2,NULL),(133,64,11,2,NULL),(134,73,11,2,NULL),(135,64,6,2,NULL),(136,73,6,2,NULL),(137,64,13,2,NULL),(138,73,13,2,NULL),(139,64,26,2,NULL),(140,73,26,2,NULL),(141,64,30,2,NULL),(142,73,30,2,NULL),(143,64,39,2,NULL),(144,73,39,2,NULL),(145,64,43,2,NULL),(146,73,43,2,NULL),(147,64,47,2,NULL),(148,73,47,2,NULL),(149,64,50,2,NULL),(150,73,50,2,NULL),(151,64,53,2,NULL),(152,73,53,2,NULL),(153,64,64,2,NULL),(154,73,64,2,NULL),(155,64,65,2,NULL),(156,73,65,2,NULL),(157,64,66,2,NULL),(158,73,66,2,NULL),(159,64,67,2,NULL),(160,73,67,2,NULL),(161,64,68,2,NULL),(162,73,68,2,NULL),(163,64,69,2,NULL),(164,73,69,2,NULL),(165,64,70,2,NULL),(166,73,70,2,NULL),(167,64,71,2,NULL),(168,73,71,2,NULL),(169,64,72,2,NULL),(170,73,72,2,NULL),(171,64,16,2,NULL),(172,73,16,2,NULL),(173,64,37,2,NULL),(174,73,37,2,NULL),(175,64,41,2,NULL),(176,73,41,2,NULL),(177,64,73,2,NULL),(178,73,73,2,NULL),(179,64,36,2,NULL),(180,73,36,2,NULL),(181,64,52,2,NULL),(182,73,52,2,NULL),(183,64,57,2,NULL),(184,73,57,2,NULL),(185,64,58,2,NULL),(186,73,58,2,NULL),(187,64,59,2,NULL),(188,73,59,2,NULL),(189,64,60,2,NULL),(190,73,60,2,NULL),(191,64,61,2,NULL),(192,73,61,2,NULL),(193,64,62,2,NULL),(194,73,62,2,NULL),(195,64,63,2,NULL),(196,73,63,2,NULL),(197,64,74,2,NULL),(198,73,74,2,NULL),(199,64,75,2,NULL),(200,73,75,2,NULL),(201,64,76,2,NULL),(202,73,76,2,NULL),(203,64,77,2,NULL),(204,73,77,2,NULL),(205,64,78,2,NULL),(206,73,78,2,NULL),(207,64,79,2,NULL),(208,73,79,2,NULL),(209,64,80,2,NULL),(210,73,80,2,NULL),(211,64,81,2,NULL),(212,73,81,2,NULL),(213,64,82,2,NULL),(214,73,82,2,NULL),(215,32,38,2,NULL),(216,5,30,2,NULL),(217,7,30,2,NULL),(218,11,30,2,NULL),(219,6,30,2,NULL),(220,10,30,2,NULL),(221,44,30,2,NULL),(222,16,30,2,NULL),(223,22,30,2,NULL),(224,28,30,2,NULL),(225,31,30,2,NULL),(226,36,30,2,NULL),(227,61,30,2,NULL),(228,76,30,2,NULL),(229,82,30,2,NULL),(230,67,30,2,NULL),(231,54,30,2,NULL),(232,44,1,2,NULL),(233,44,3,2,NULL),(234,44,5,2,NULL),(235,44,8,2,NULL),(236,5,39,2,NULL),(237,7,39,2,NULL),(238,11,39,2,NULL),(239,44,11,2,NULL),(240,44,6,2,NULL),(241,6,39,2,NULL),(242,10,39,2,NULL),(243,44,13,2,NULL),(244,44,26,2,NULL),(245,44,43,2,NULL),(246,44,47,2,NULL),(247,44,50,2,NULL),(248,44,53,2,NULL),(249,44,64,2,NULL),(250,44,65,2,NULL),(251,44,66,2,NULL),(252,44,67,2,NULL),(253,44,68,2,NULL),(254,44,69,2,NULL),(255,44,70,2,NULL),(256,44,71,2,NULL),(257,44,72,2,NULL),(258,44,16,2,NULL),(259,16,39,2,NULL),(260,22,39,2,NULL),(261,28,39,2,NULL),(262,31,39,2,NULL),(263,44,37,2,NULL),(264,44,41,2,NULL),(265,44,73,2,NULL),(266,44,36,2,NULL),(267,36,39,2,NULL),(268,61,39,2,NULL),(269,76,39,2,NULL),(270,82,39,2,NULL),(271,44,52,2,NULL),(272,67,39,2,NULL),(273,44,57,2,NULL),(274,54,39,2,NULL),(275,44,58,2,NULL),(276,44,59,2,NULL),(277,44,60,2,NULL),(278,44,61,2,NULL),(279,44,62,2,NULL),(280,44,63,2,NULL),(281,44,74,2,NULL),(282,44,75,2,NULL),(283,44,76,2,NULL),(284,44,77,2,NULL),(285,44,78,2,NULL),(286,44,79,2,NULL),(287,44,80,2,NULL),(288,44,81,2,NULL),(289,44,82,2,NULL),(290,5,43,2,NULL),(291,7,43,2,NULL),(292,11,43,2,NULL),(293,6,43,2,NULL),(294,10,43,2,NULL),(295,16,43,2,NULL),(296,22,43,2,NULL),(297,28,43,2,NULL),(298,31,43,2,NULL),(299,36,43,2,NULL),(300,61,43,2,NULL),(301,76,43,2,NULL),(302,82,43,2,NULL),(303,67,43,2,NULL),(304,54,43,2,NULL),(305,53,38,2,NULL),(306,5,47,2,NULL),(307,7,47,2,NULL),(308,11,47,2,NULL),(309,6,47,2,NULL),(310,10,47,2,NULL),(311,16,47,2,NULL),(312,22,47,2,NULL),(313,28,47,2,NULL),(314,31,47,2,NULL),(315,36,47,2,NULL),(316,61,47,2,NULL),(317,76,47,2,NULL),(318,82,47,2,NULL),(319,67,47,2,NULL),(320,54,47,2,NULL),(321,58,38,2,NULL),(322,5,50,2,NULL),(323,7,50,2,NULL),(324,11,50,2,NULL),(325,6,50,2,NULL),(326,10,50,2,NULL),(327,16,50,2,NULL),(328,22,50,2,NULL),(329,28,50,2,NULL),(330,31,50,2,NULL),(331,36,50,2,NULL),(332,61,50,2,NULL),(333,76,50,2,NULL),(334,82,50,2,NULL),(335,67,50,2,NULL),(336,54,50,2,NULL),(337,68,38,2,NULL),(338,5,53,2,NULL),(339,7,53,2,NULL),(340,11,53,2,NULL),(341,6,53,2,NULL),(342,10,53,2,NULL),(343,16,53,2,NULL),(344,22,53,2,NULL),(345,28,53,2,NULL),(346,31,53,2,NULL),(347,36,53,2,NULL),(348,61,53,2,NULL),(349,76,53,2,NULL),(350,82,53,2,NULL),(351,67,53,2,NULL),(352,54,53,2,NULL),(353,5,64,2,NULL),(354,7,64,2,NULL),(355,11,64,2,NULL),(356,6,64,2,NULL),(357,10,64,2,NULL),(358,16,64,2,NULL),(359,22,64,2,NULL),(360,28,64,2,NULL),(361,31,64,2,NULL),(362,36,64,2,NULL),(363,61,64,2,NULL),(364,76,64,2,NULL),(365,82,64,2,NULL),(366,67,64,2,NULL),(367,54,64,2,NULL),(368,5,65,2,NULL),(369,7,65,2,NULL),(370,11,65,2,NULL),(371,6,65,2,NULL),(372,10,65,2,NULL),(373,16,65,2,NULL),(374,22,65,2,NULL),(375,28,65,2,NULL),(376,31,65,2,NULL),(377,36,65,2,NULL),(378,61,65,2,NULL),(379,76,65,2,NULL),(380,82,65,2,NULL),(381,67,65,2,NULL),(382,54,65,2,NULL),(383,5,66,2,NULL),(384,7,66,2,NULL),(385,11,66,2,NULL),(386,6,66,2,NULL),(387,10,66,2,NULL),(388,16,66,2,NULL),(389,22,66,2,NULL),(390,28,66,2,NULL),(391,31,66,2,NULL),(392,36,66,2,NULL),(393,61,66,2,NULL),(394,76,66,2,NULL),(395,82,66,2,NULL),(396,67,66,2,NULL),(397,54,66,2,NULL),(398,5,67,2,NULL),(399,7,67,2,NULL),(400,11,67,2,NULL),(401,6,67,2,NULL),(402,10,67,2,NULL),(403,16,67,2,NULL),(404,22,67,2,NULL),(405,28,67,2,NULL),(406,31,67,2,NULL),(407,36,67,2,NULL),(408,61,67,2,NULL),(409,76,67,2,NULL),(410,82,67,2,NULL),(411,67,67,2,NULL),(412,54,67,2,NULL),(413,5,68,2,NULL),(414,7,68,2,NULL),(415,11,68,2,NULL),(416,6,68,2,NULL),(417,10,68,2,NULL),(418,16,68,2,NULL),(419,22,68,2,NULL),(420,28,68,2,NULL),(421,31,68,2,NULL),(422,36,68,2,NULL),(423,61,68,2,NULL),(424,76,68,2,NULL),(425,82,68,2,NULL),(426,67,68,2,NULL),(427,54,68,2,NULL),(428,5,69,2,NULL),(429,7,69,2,NULL),(430,11,69,2,NULL),(431,6,69,2,NULL),(432,10,69,2,NULL),(433,16,69,2,NULL),(434,22,69,2,NULL),(435,28,69,2,NULL),(436,31,69,2,NULL),(437,36,69,2,NULL),(438,61,69,2,NULL),(439,76,69,2,NULL),(440,82,69,2,NULL),(441,67,69,2,NULL),(442,54,69,2,NULL),(443,5,70,2,NULL),(444,7,70,2,NULL),(445,11,70,2,NULL),(446,6,70,2,NULL),(447,10,70,2,NULL),(448,16,70,2,NULL),(449,22,70,2,NULL),(450,28,70,2,NULL),(451,31,70,2,NULL),(452,36,70,2,NULL),(453,61,70,2,NULL),(454,76,70,2,NULL),(455,82,70,2,NULL),(456,67,70,2,NULL),(457,54,70,2,NULL),(458,5,71,2,NULL),(459,7,71,2,NULL),(460,11,71,2,NULL),(461,6,71,2,NULL),(462,10,71,2,NULL),(463,16,71,2,NULL),(464,22,71,2,NULL),(465,28,71,2,NULL),(466,31,71,2,NULL),(467,36,71,2,NULL),(468,61,71,2,NULL),(469,76,71,2,NULL),(470,82,71,2,NULL),(471,67,71,2,NULL),(472,54,71,2,NULL),(473,5,72,2,NULL),(474,7,72,2,NULL),(475,11,72,2,NULL),(476,6,72,2,NULL),(477,10,72,2,NULL),(478,16,72,2,NULL),(479,22,72,2,NULL),(480,28,72,2,NULL),(481,31,72,2,NULL),(482,36,72,2,NULL),(483,61,72,2,NULL),(484,76,72,2,NULL),(485,82,72,2,NULL),(486,67,72,2,NULL),(487,54,72,2,NULL),(488,74,14,2,NULL),(489,74,36,2,NULL),(490,79,17,2,NULL),(491,79,42,2,NULL),(492,80,15,2,NULL),(493,80,40,2,NULL),(494,5,36,2,NULL),(495,7,36,2,NULL),(496,11,36,2,NULL),(497,6,36,2,NULL),(498,10,36,2,NULL),(499,16,36,2,NULL),(500,22,36,2,NULL),(501,28,36,2,NULL),(502,31,36,2,NULL),(503,36,36,2,NULL),(504,4,9,2,NULL),(505,61,36,2,NULL),(506,6,1,2,NULL),(507,76,36,2,NULL),(508,10,1,2,NULL),(509,82,36,2,NULL),(510,6,3,2,NULL),(511,67,36,2,NULL),(512,10,3,2,NULL),(513,54,36,2,NULL),(514,6,5,2,NULL),(515,63,12,2,NULL),(516,10,5,2,NULL),(517,63,33,2,NULL),(518,6,8,2,NULL),(519,69,18,2,NULL),(520,10,8,2,NULL),(521,69,44,2,NULL),(522,5,6,2,NULL),(523,77,19,2,NULL),(524,7,6,2,NULL),(525,77,45,2,NULL),(526,11,6,2,NULL),(527,78,28,2,NULL),(528,6,11,2,NULL),(529,78,51,2,NULL),(530,10,11,2,NULL),(531,36,1,2,NULL),(532,6,13,2,NULL),(533,61,1,2,NULL),(534,10,13,2,NULL),(535,36,3,2,NULL),(536,6,26,2,NULL),(537,61,3,2,NULL),(538,10,26,2,NULL),(539,36,5,2,NULL),(540,6,16,2,NULL),(541,61,5,2,NULL),(542,10,16,2,NULL),(543,36,8,2,NULL),(544,16,6,2,NULL),(545,61,8,2,NULL),(546,22,6,2,NULL),(547,36,11,2,NULL),(548,28,6,2,NULL),(549,61,11,2,NULL),(550,31,6,2,NULL),(551,36,6,2,NULL),(552,6,37,2,NULL),(553,61,6,2,NULL),(554,10,37,2,NULL),(555,36,13,2,NULL),(556,6,41,2,NULL),(557,61,13,2,NULL),(558,10,41,2,NULL),(559,36,26,2,NULL),(560,6,73,2,NULL),(561,61,26,2,NULL),(562,10,73,2,NULL),(563,36,16,2,NULL),(564,76,6,2,NULL),(565,61,16,2,NULL),(566,82,6,2,NULL),(567,36,37,2,NULL),(568,6,52,2,NULL),(569,61,37,2,NULL),(570,10,52,2,NULL),(571,36,41,2,NULL),(572,67,6,2,NULL),(573,61,41,2,NULL),(574,6,57,2,NULL),(575,36,73,2,NULL),(576,10,57,2,NULL),(577,61,73,2,NULL),(578,54,6,2,NULL),(579,36,52,2,NULL),(580,6,58,2,NULL),(581,61,52,2,NULL),(582,10,58,2,NULL),(583,36,57,2,NULL),(584,6,59,2,NULL),(585,61,57,2,NULL),(586,10,59,2,NULL),(587,36,58,2,NULL),(588,6,60,2,NULL),(589,61,58,2,NULL),(590,10,60,2,NULL),(591,36,59,2,NULL),(592,6,61,2,NULL),(593,61,59,2,NULL),(594,10,61,2,NULL),(595,36,60,2,NULL),(596,6,62,2,NULL),(597,61,60,2,NULL),(598,10,62,2,NULL),(599,36,61,2,NULL),(600,6,63,2,NULL),(601,61,61,2,NULL),(602,10,63,2,NULL),(603,36,62,2,NULL),(604,6,74,2,NULL),(605,61,62,2,NULL),(606,10,74,2,NULL),(607,36,63,2,NULL),(608,6,75,2,NULL),(609,61,63,2,NULL),(610,10,75,2,NULL),(611,36,74,2,NULL),(612,6,76,2,NULL),(613,61,74,2,NULL),(614,10,76,2,NULL),(615,36,75,2,NULL),(616,6,77,2,NULL),(617,61,75,2,NULL),(618,10,77,2,NULL),(619,36,76,2,NULL),(620,6,78,2,NULL),(621,61,76,2,NULL),(622,10,78,2,NULL),(623,36,77,2,NULL),(624,6,79,2,NULL),(625,61,77,2,NULL),(626,10,79,2,NULL),(627,36,78,2,NULL),(628,6,80,2,NULL),(629,61,78,2,NULL),(630,10,80,2,NULL),(631,36,79,2,NULL),(632,6,81,2,NULL),(633,61,79,2,NULL),(634,10,81,2,NULL),(635,36,80,2,NULL),(636,6,82,2,NULL),(637,61,80,2,NULL),(638,10,82,2,NULL),(639,36,81,2,NULL),(640,5,13,2,NULL),(641,61,81,2,NULL),(642,7,13,2,NULL),(643,36,82,2,NULL),(644,11,13,2,NULL),(645,61,82,2,NULL),(646,16,13,2,NULL),(647,76,1,2,NULL),(648,22,13,2,NULL),(649,82,1,2,NULL),(650,28,13,2,NULL),(651,76,3,2,NULL),(652,31,13,2,NULL),(653,82,3,2,NULL),(654,76,13,2,NULL),(655,76,5,2,NULL),(656,82,13,2,NULL),(657,82,5,2,NULL),(658,67,13,2,NULL),(659,76,8,2,NULL),(660,54,13,2,NULL),(661,82,8,2,NULL),(662,5,26,2,NULL),(663,76,11,2,NULL),(664,7,26,2,NULL),(665,82,11,2,NULL),(666,11,26,2,NULL),(667,76,26,2,NULL),(668,16,26,2,NULL),(669,82,26,2,NULL),(670,22,26,2,NULL),(671,76,16,2,NULL),(672,28,26,2,NULL),(673,82,16,2,NULL),(674,31,26,2,NULL),(675,76,37,2,NULL),(676,67,26,2,NULL),(677,82,37,2,NULL),(678,54,26,2,NULL),(679,76,41,2,NULL),(680,82,41,2,NULL),(681,76,73,2,NULL),(682,82,73,2,NULL),(683,76,52,2,NULL),(684,82,52,2,NULL),(685,76,57,2,NULL),(686,82,57,2,NULL),(687,76,58,2,NULL),(688,82,58,2,NULL),(689,76,59,2,NULL),(690,82,59,2,NULL),(691,76,60,2,NULL),(692,82,60,2,NULL),(693,76,61,2,NULL),(694,82,61,2,NULL),(695,76,62,2,NULL),(696,82,62,2,NULL),(697,76,63,2,NULL),(698,82,63,2,NULL),(699,76,74,2,NULL),(700,82,74,2,NULL),(701,76,75,2,NULL),(702,82,75,2,NULL),(703,76,76,2,NULL),(704,82,76,2,NULL),(705,76,77,2,NULL),(706,82,77,2,NULL),(707,76,78,2,NULL),(708,82,78,2,NULL),(709,76,79,2,NULL),(710,82,79,2,NULL),(711,76,80,2,NULL),(712,82,80,2,NULL),(713,76,81,2,NULL),(714,82,81,2,NULL),(715,76,82,2,NULL),(716,82,82,2,NULL),(717,81,56,2,NULL),(718,5,52,2,NULL),(719,7,52,2,NULL),(720,11,52,2,NULL),(721,16,52,2,NULL),(722,22,52,2,NULL),(723,28,52,2,NULL),(724,31,52,2,NULL),(725,67,52,2,NULL),(726,54,52,2,NULL),(727,43,55,2,NULL),(728,67,1,2,NULL),(729,67,3,2,NULL),(730,18,24,2,NULL),(731,67,5,2,NULL),(732,24,22,2,NULL),(733,67,8,2,NULL),(734,29,29,2,NULL),(735,67,11,2,NULL),(736,33,29,2,NULL),(737,2,4,2,NULL),(738,67,16,2,NULL),(739,16,1,2,NULL),(740,5,1,2,NULL),(741,67,37,2,NULL),(742,22,1,2,NULL),(743,7,1,2,NULL),(744,67,41,2,NULL),(745,28,1,2,NULL),(746,11,1,2,NULL),(747,67,73,2,NULL),(748,31,1,2,NULL),(749,54,1,2,NULL),(750,67,57,2,NULL),(751,16,3,2,NULL),(752,5,3,2,NULL),(753,67,58,2,NULL),(754,22,3,2,NULL),(755,7,3,2,NULL),(756,67,59,2,NULL),(757,28,3,2,NULL),(758,11,3,2,NULL),(759,67,60,2,NULL),(760,31,3,2,NULL),(761,54,3,2,NULL),(762,67,61,2,NULL),(763,16,5,2,NULL),(764,3,4,2,NULL),(765,67,62,2,NULL),(766,22,5,2,NULL),(767,5,5,2,NULL),(768,67,63,2,NULL),(769,28,5,2,NULL),(770,7,5,2,NULL),(771,67,74,2,NULL),(772,31,5,2,NULL),(773,11,5,2,NULL),(774,67,75,2,NULL),(775,16,8,2,NULL),(776,54,5,2,NULL),(777,67,76,2,NULL),(778,22,8,2,NULL),(779,67,77,2,NULL),(780,28,8,2,NULL),(781,67,78,2,NULL),(782,31,8,2,NULL),(783,67,79,2,NULL),(784,5,16,2,NULL),(785,67,80,2,NULL),(786,7,16,2,NULL),(787,67,81,2,NULL),(788,11,16,2,NULL),(789,67,82,2,NULL),(790,16,11,2,NULL),(791,54,8,2,NULL),(792,22,11,2,NULL),(793,5,57,2,NULL),(794,28,11,2,NULL),(795,7,57,2,NULL),(796,31,11,2,NULL),(797,11,57,2,NULL),(798,54,11,2,NULL),(799,16,37,2,NULL),(800,54,16,2,NULL),(801,22,37,2,NULL),(802,16,57,2,NULL),(803,28,37,2,NULL),(804,22,57,2,NULL),(805,31,37,2,NULL),(806,28,57,2,NULL),(807,16,41,2,NULL),(808,31,57,2,NULL),(809,22,41,2,NULL),(810,54,37,2,NULL),(811,28,41,2,NULL),(812,54,41,2,NULL),(813,31,41,2,NULL),(814,54,73,2,NULL),(815,16,73,2,NULL),(816,54,58,2,NULL),(817,22,73,2,NULL),(818,54,59,2,NULL),(819,28,73,2,NULL),(820,54,60,2,NULL),(821,31,73,2,NULL),(822,54,61,2,NULL),(823,16,58,2,NULL),(824,54,62,2,NULL),(825,22,58,2,NULL),(826,54,63,2,NULL),(827,28,58,2,NULL),(828,54,74,2,NULL),(829,31,58,2,NULL),(830,54,75,2,NULL),(831,16,59,2,NULL),(832,54,76,2,NULL),(833,22,59,2,NULL),(834,54,77,2,NULL),(835,28,59,2,NULL),(836,54,78,2,NULL),(837,31,59,2,NULL),(838,54,79,2,NULL),(839,16,60,2,NULL),(840,54,80,2,NULL),(841,22,60,2,NULL),(842,54,81,2,NULL),(843,28,60,2,NULL),(844,54,82,2,NULL),(845,31,60,2,NULL),(846,5,58,2,NULL),(847,16,61,2,NULL),(848,7,58,2,NULL),(849,22,61,2,NULL),(850,11,58,2,NULL),(851,28,61,2,NULL),(852,31,61,2,NULL),(853,75,56,2,NULL),(854,16,62,2,NULL),(855,5,59,2,NULL),(856,22,62,2,NULL),(857,7,59,2,NULL),(858,28,62,2,NULL),(859,11,59,2,NULL),(860,31,62,2,NULL),(861,30,56,2,NULL),(862,16,63,2,NULL),(863,5,60,2,NULL),(864,22,63,2,NULL),(865,7,60,2,NULL),(866,28,63,2,NULL),(867,11,60,2,NULL),(868,31,63,2,NULL),(869,16,74,2,NULL),(870,48,56,2,NULL),(871,22,74,2,NULL),(872,5,61,2,NULL),(873,28,74,2,NULL),(874,7,61,2,NULL),(875,31,74,2,NULL),(876,11,61,2,NULL),(877,16,75,2,NULL),(878,34,56,2,NULL),(879,22,75,2,NULL),(880,5,62,2,NULL),(881,28,75,2,NULL),(882,7,62,2,NULL),(883,31,75,2,NULL),(884,11,62,2,NULL),(885,16,76,2,NULL),(886,5,63,2,NULL),(887,22,76,2,NULL),(888,7,63,2,NULL),(889,28,76,2,NULL),(890,11,63,2,NULL),(891,31,76,2,NULL),(892,16,77,2,NULL),(893,5,74,2,NULL),(894,22,77,2,NULL),(895,7,74,2,NULL),(896,28,77,2,NULL),(897,11,74,2,NULL),(898,31,77,2,NULL),(899,5,75,2,NULL),(900,16,78,2,NULL),(901,7,75,2,NULL),(902,22,78,2,NULL),(903,11,75,2,NULL),(904,28,78,2,NULL),(905,5,76,2,NULL),(906,31,78,2,NULL),(907,7,76,2,NULL),(908,16,79,2,NULL),(909,11,76,2,NULL),(910,22,79,2,NULL),(911,5,77,2,NULL),(912,28,79,2,NULL),(913,7,77,2,NULL),(914,31,79,2,NULL),(915,11,77,2,NULL),(916,16,80,2,NULL),(917,5,78,2,NULL),(918,22,80,2,NULL),(919,7,78,2,NULL),(920,28,80,2,NULL),(921,11,78,2,NULL),(922,31,80,2,NULL),(923,5,79,2,NULL),(924,16,81,2,NULL),(925,7,79,2,NULL),(926,22,81,2,NULL),(927,11,79,2,NULL),(928,28,81,2,NULL),(929,5,80,2,NULL),(930,31,81,2,NULL),(931,7,80,2,NULL),(932,16,82,2,NULL),(933,11,80,2,NULL),(934,22,82,2,NULL),(935,5,81,2,NULL),(936,28,82,2,NULL),(937,7,81,2,NULL),(938,31,82,2,NULL),(939,11,81,2,NULL),(940,17,16,2,NULL),(941,5,82,2,NULL),(942,19,16,2,NULL),(943,7,82,2,NULL),(944,27,16,2,NULL),(945,11,82,2,NULL),(946,5,37,2,NULL),(947,7,37,2,NULL),(948,11,37,2,NULL),(949,5,41,2,NULL),(950,7,41,2,NULL),(951,11,41,2,NULL),(952,5,73,2,NULL),(953,7,73,2,NULL),(954,9,10,2,NULL),(955,11,73,2,NULL),(956,5,11,2,NULL),(957,7,11,2,NULL),(958,11,11,2,NULL),(959,14,8,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (45,'android.permission.ACCESS_ASSISTED_GPS'),(39,'android.permission.ACCESS_CELL_ID'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(41,'android.permission.ACCESS_COARSE_UPDATES'),(14,'android.permission.ACCESS_FINE_LOCATION'),(42,'android.permission.ACCESS_GPS'),(38,'android.permission.ACCESS_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(18,'android.permission.ACCESS_MOCK_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.BLUETOOTH'),(36,'android.permission.BLUETOOTH_ADMIN'),(22,'android.permission.CAMERA'),(7,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(12,'android.permission.CHANGE_CONFIGURATION'),(32,'android.permission.CHANGE_WIFI_STATE'),(37,'android.permission.DEVICE_POWER'),(23,'android.permission.FLASHLIGHT'),(21,'android.permission.GET_ACCOUNTS'),(19,'android.permission.GET_TASKS'),(25,'android.permission.HARDWARE_TEST'),(8,'android.permission.INTERNET'),(29,'android.permission.MODIFY_PHONE_STATE'),(13,'android.permission.PROCESS_OUTGOING_CALLS'),(40,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_EXTERNAL_STORAGE'),(5,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SECURE_SETTINGS'),(1,'android.permission.READ_SMS'),(33,'android.permission.READ_SYNC_SETTINGS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(44,'android.permission.RECORD_AUDIO'),(43,'android.permission.RECORD_VIDEO'),(2,'android.permission.SEND_SMS'),(28,'android.permission.SYSTEM_ALERT_WINDOW'),(35,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(24,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_SECURE_SETTINGS'),(30,'android.permission.WRITE_SETTINGS'),(3,'android.permission.WRITE_SMS'),(27,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,2),(2,7,3),(3,33,7),(4,38,8),(5,76,11),(6,81,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,17),(12,3,2),(13,2,16),(14,3,4),(15,2,18),(16,3,5),(17,2,5),(18,3,8),(19,2,8),(20,3,11),(21,2,10),(22,3,12),(23,2,11),(24,2,13),(25,2,14),(26,2,15),(27,4,34),(28,4,35),(29,4,32),(30,4,33),(31,4,5),(32,4,36),(33,4,37),(34,4,8),(35,4,10),(36,4,11),(37,4,12),(38,4,14),(39,4,17),(40,5,35),(41,4,19),(42,5,32),(43,4,21),(44,5,38),(45,4,20),(46,5,39),(47,4,23),(48,5,5),(49,4,22),(50,5,42),(51,4,25),(52,5,8),(53,4,24),(54,5,43),(55,4,27),(56,5,9),(57,4,26),(58,5,40),(59,4,29),(60,5,10),(61,4,28),(62,5,41),(63,4,31),(64,5,11),(65,4,30),(66,5,13),(67,5,44),(68,5,14),(69,5,45),(70,6,5),(71,5,15),(72,6,8),(73,5,17),(74,6,10),(75,5,16),(76,6,11),(77,5,18),(78,6,12),(79,5,20),(80,6,14),(81,5,22),(82,6,17),(83,5,30),(84,6,19),(85,6,21),(86,6,20),(87,6,23),(88,6,22),(89,6,25),(90,6,24),(91,6,27),(92,6,26),(93,6,29),(94,6,28),(95,6,31),(96,6,30),(97,6,34),(98,6,35),(99,6,32),(100,6,33),(101,6,36),(102,6,37);
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

-- Dump completed on 2015-10-12  3:31:35
