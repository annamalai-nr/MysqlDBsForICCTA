-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_206
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (31,'(.*).SEND_SMS'),(16,'android.appwidget.action.APPWIDGET_UPDATE'),(37,'android.bluetooth.adapter.action.STATE_CHANGED'),(36,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(38,'android.intent.action.AIRPLANE_MODE'),(26,'android.intent.action.BATTERY_CHANGED'),(29,'android.intent.action.BATTERY_LOW'),(25,'android.intent.action.BATTERY_OKAY'),(10,'android.intent.action.BOOT_COMPLETED'),(32,'android.intent.action.CHOOSER'),(30,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PICK_SAVE_BATTERY_KILLER_PRO'),(12,'android.intent.action.SAVE_BATTERY_PRO_IGNORE_LIST'),(13,'android.intent.action.SAVE_BATTERY_SETTINGS'),(27,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.SEARCH_LONG_PRESS'),(4,'android.intent.action.VIEW'),(40,'android.media.RINGER_MODE_CHANGED'),(39,'android.media.VIBRATE_SETTING_CHANGED'),(43,'android.net.conn.CONNECTIVITY_CHANGE'),(42,'android.net.wifi.STATE_CHANGE'),(44,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(41,'android.net.wifi.WIFI_STATE_CHANGED'),(3,'android.provider.Telephony.SMS_RECEIVED'),(24,'android.settings.APPLICATION_DETAILS_SETTINGS'),(45,'android.settings.DISPLAY_SETTINGS'),(23,'android.settings.LOCATION_SOURCE_SETTINGS'),(46,'android.settings.SECURITY_SETTINGS'),(5,'com.android.vending.INSTALL_REFERRER'),(18,'com.bwx.bequick.FLASHLIGHT'),(34,'com.bwx.bequick.FLASHLIGHT_STATE'),(20,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(21,'com.bwx.bequick.START_QS'),(22,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(35,'com.bwx.bequick.VOLUME_UPDATED'),(19,'com.bwx.bequick.WARN_FLASHLIGHT'),(9,'com.extend.battery.intent.http.SHOW'),(7,'com.itframework.installer.updater.CHECK'),(6,'com.itframework.installer.updater.UPDATE'),(33,'com.savebattery.killer.pro.ACTION_LOAD_FINISH'),(15,'com.savebattery.killer.pro.action.AUTO_KILL'),(17,'com.savebattery.killer.pro.action.KILLALL'),(2,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',71),(2,'com.extend.battery',91),(3,'com.extend.battery',89),(4,'com.batteryupgradeandroid.batteryupdate.killer',3);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BatteryActivity'),(10,1,'com.extend.battery.RatingActivity'),(11,1,'com.extend.battery.BatteryService'),(12,2,'com.extend.battery.Splash'),(13,1,'com.zanalytics.sms.SmsReceiverService'),(14,1,'com.zanalytics.sms.SmsReceiver'),(15,2,'com.extend.battery.TabHandler'),(16,2,'com.extend.battery.TaskKillerActivity'),(17,2,'com.extend.battery.UninstallerActivity'),(18,2,'com.extend.battery.SecurityAuditActivity'),(19,2,'com.extend.battery.SecurityAuditActivity'),(20,2,'com.extend.battery.InstallerActivity'),(21,3,'com.extend.battery.Splash'),(22,2,'com.extend.battery.FeaturesActivity'),(23,2,'com.extend.battery.FeaturesActivity'),(24,2,'com.extend.battery.BoosterActivity'),(25,1,'com.tapjoy.TapjoyReferralTracker'),(26,2,'com.extend.battery.BatteryActivity'),(27,2,'com.extend.battery.RatingActivity'),(28,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(29,3,'com.extend.battery.TabHandler'),(30,3,'com.extend.battery.TaskKillerActivity'),(31,2,'com.itframework.installer.util.NonMarketDialogActivity'),(32,3,'com.extend.battery.UninstallerActivity'),(33,2,'com.extend.battery.BatteryService'),(34,2,'com.extend.battery.BatteryService'),(35,2,'com.extend.battery.BatteryService'),(36,2,'com.itframework.installer.util.InstallWorker'),(37,3,'com.extend.battery.SecurityAuditActivity'),(38,2,'com.zanalytics.sms.SmsReceiverService'),(39,2,'com.zanalytics.sms.SmsReceiverService'),(40,2,'com.zanalytics.sms.SmsReceiverService'),(41,2,'com.itframework.installer.updater.UpdateReceiver'),(42,3,'com.extend.battery.InstallerActivity'),(43,3,'com.extend.battery.FeaturesActivity'),(44,3,'com.extend.battery.BoosterActivity'),(45,2,'com.extend.battery.NotificationReceiver'),(46,3,'com.extend.battery.BatteryActivity'),(47,2,'com.extend.battery.BootReceiver'),(48,2,'com.extend.battery.BootReceiver'),(49,3,'com.extend.battery.RatingActivity'),(50,3,'com.extend.battery.BatteryService'),(51,2,'com.zanalytics.sms.SmsReceiver'),(52,3,'com.zanalytics.sms.SmsReceiverService'),(53,3,'com.extend.battery.NotificationReceiver'),(54,3,'com.extend.battery.BootReceiver'),(55,3,'com.zanalytics.sms.SmsReceiver'),(56,4,'com.savebattery.killer.pro.EasyTaskKiller'),(57,3,'com.tapjoy.TapjoyReferralTracker'),(58,4,'com.savebattery.killer.pro.IgnoreList'),(59,4,'com.savebattery.killer.pro.AddToIgnoreList'),(60,4,'com.savebattery.killer.pro.PreferencesActivity'),(61,4,'com.bwx.bequick.EulaActivity'),(62,4,'com.bwx.bequick.ShowSettingsActivity'),(63,4,'com.bwx.bequick.DialogSettingsActivity'),(64,4,'com.bwx.bequick.MainSettingsActivity'),(65,4,'com.bwx.bequick.LayoutSettingsActivity'),(66,4,'com.bwx.bequick.preferences.CommonPrefs'),(67,4,'com.bwx.bequick.preferences.BrightnessPrefs'),(68,4,'com.bwx.bequick.preferences.MobileDataPrefs'),(69,4,'com.bwx.bequick.preferences.AirplaneModePrefs'),(70,4,'com.bwx.bequick.flashlight.ScreenLightActivity'),(71,4,'com.savebattery.killer.pro.OfferDialog'),(72,4,'com.savebattery.killer.pro.AutoKillService'),(73,4,'com.savebattery.killer.pro.widget.WidgetUpdateService'),(74,4,'com.savebattery.killer.pro.AutoStartReceiver'),(75,4,'com.savebattery.killer.pro.widget.EasyWidgetProvider'),(76,4,'com.savebattery.killer.pro.widget.KillAllEventReceiver'),(77,4,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(78,4,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(79,4,'com.savebattery.killer.pro.BaseStarReceiver'),(80,1,'com.extend.battery.s'),(81,1,'com.zanalytics.sms.j'),(82,1,'com.extend.battery.aw'),(83,1,'com.extend.battery.ay'),(84,1,'com.extend.battery.g'),(85,1,'com.extend.battery.i'),(86,1,'com.extend.battery.j'),(87,1,'com.zanalytics.sms.c'),(88,1,'com.extend.battery.f'),(89,1,'com.zanalytics.sms.a'),(90,4,'com.savebattery.killer.pro.EasyTaskKiller$2'),(91,4,'com.bwx.bequick.handlers.apn.ApnControl'),(92,4,'com.savebattery.killer.pro.EasyTaskKiller$LoadFinishReceiver'),(93,4,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(94,4,'com.savebattery.killer.pro.EasyTaskKiller$CommonIntentReceiver'),(95,4,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(96,4,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(97,4,'com.savebattery.killer.pro.EasyTaskKiller$ScreenStatusReceiver'),(98,4,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(99,4,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(100,4,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(101,4,'android.appwidget.AppWidgetProvider'),(102,4,'com.savebattery.killer.pro.widget.EasyWidgetProvider$ScreenStatusReceiver'),(103,4,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(104,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(105,4,'com.savebattery.killer.pro.IgnoreList$2'),(106,4,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(107,2,'com.extend.battery.ba'),(108,2,'com.extend.battery.k'),(109,4,'com.bwx.bequick.handlers.VolumeDialog'),(110,2,'com.zanalytics.sms.a'),(111,2,'com.extend.battery.d'),(112,4,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(113,2,'com.extend.battery.c'),(114,2,'com.extend.battery.a'),(115,4,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(116,2,'com.zanalytics.sms.c'),(117,2,'com.extend.battery.features.s'),(118,2,'com.zanalytics.sms.j'),(119,2,'com.extend.battery.bb'),(120,4,'com.savebattery.killer.pro.PreferencesActivity$3'),(121,4,'com.bwx.bequick.handlers.RingerSettingHandler'),(122,4,'com.savebattery.killer.pro.EasyTaskKiller$13'),(123,2,'com.itframework.installer.a.b'),(124,4,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(125,4,'com.savebattery.killer.pro.EasyTaskKiller$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'pdus'),(2,9,'technology'),(3,80,'inversed'),(4,36,'downloadingTitle'),(5,36,'downloadingProgress'),(6,36,'finishedTitle'),(7,45,'clickevent'),(8,25,'technology'),(9,36,'downloadingWait'),(10,36,'downloadingToast'),(11,36,'finishedText'),(12,28,'downloadingTitle'),(13,28,'forceDownload'),(14,28,'finishedTitle'),(15,36,'downloadStarting'),(16,36,'finishedTicker'),(17,46,'clickevent'),(18,81,'referrer'),(19,28,'downloadingProgress'),(20,36,'showNotifications'),(21,36,'callbackIntent'),(22,28,'downloadingWait'),(23,28,'finishedText'),(24,36,'downloadingTicker'),(25,36,'url'),(26,28,'finishedTicker'),(27,41,'URL'),(28,28,'downloadingTicker'),(29,28,'url'),(30,28,'downloadStarting'),(31,79,'enabled'),(32,28,'filename'),(33,36,'forceDownload'),(34,28,'downloadingToast'),(35,52,'pdus'),(36,28,'callbackIntent'),(37,53,'pdus'),(38,36,'filename'),(39,77,'appWidgetId');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,35,'s',0,NULL,NULL),(35,34,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,45,'r',1,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,47,'r',1,NULL,NULL),(49,48,'r',1,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,50,'s',0,NULL,NULL),(52,51,'r',1,NULL,NULL),(53,51,'r',1,NULL,NULL),(54,52,'s',0,NULL,NULL),(55,53,'r',1,NULL,NULL),(56,54,'r',1,NULL,NULL),(57,55,'r',1,NULL,NULL),(58,56,'a',1,NULL,NULL),(59,57,'r',1,NULL,NULL),(60,58,'a',1,NULL,NULL),(61,59,'a',0,NULL,NULL),(62,60,'a',1,NULL,NULL),(63,61,'a',0,NULL,NULL),(64,62,'a',1,NULL,NULL),(65,63,'a',0,NULL,NULL),(66,64,'a',0,NULL,NULL),(67,65,'a',0,NULL,NULL),(68,66,'a',0,NULL,NULL),(69,67,'a',0,NULL,NULL),(70,68,'a',0,NULL,NULL),(71,69,'a',0,NULL,NULL),(72,70,'a',0,NULL,NULL),(73,71,'a',0,NULL,NULL),(74,72,'s',1,NULL,NULL),(75,73,'s',0,NULL,NULL),(76,74,'r',1,NULL,NULL),(77,75,'r',1,NULL,NULL),(78,76,'r',1,NULL,NULL),(79,77,'r',1,NULL,NULL),(80,78,'r',1,NULL,NULL),(81,79,'r',1,NULL,NULL),(82,84,'r',1,NULL,NULL),(83,85,'r',1,NULL,NULL),(84,86,'r',1,NULL,NULL),(85,87,'r',1,NULL,NULL),(86,92,'r',1,NULL,NULL),(87,93,'r',1,NULL,NULL),(88,94,'r',1,NULL,NULL),(89,95,'r',1,NULL,NULL),(90,96,'r',1,NULL,NULL),(91,97,'r',1,NULL,NULL),(92,98,'r',1,NULL,NULL),(93,99,'r',1,NULL,NULL),(94,100,'r',1,NULL,NULL),(95,101,'r',1,NULL,NULL),(96,102,'r',1,NULL,NULL),(97,103,'r',1,NULL,NULL),(98,104,'r',1,NULL,NULL),(99,111,'r',1,NULL,NULL),(100,113,'r',1,NULL,NULL),(101,114,'r',1,NULL,NULL),(102,116,'r',1,NULL,NULL),(103,116,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,8),(3,1,5),(4,1,4),(5,1,6),(6,2,9),(7,3,5),(8,4,14),(9,5,4),(10,6,5),(11,6,9),(12,7,1),(13,8,9),(14,8,3),(15,9,14),(16,10,1),(17,11,9),(18,11,6),(19,12,4),(20,12,6),(21,12,5),(22,12,9),(23,13,9),(24,13,8),(25,14,9),(26,14,4),(27,15,4),(28,15,9),(29,16,2),(30,17,1),(31,18,1),(32,19,6),(33,19,9),(34,19,5),(35,19,4),(36,20,6),(37,21,14),(38,22,8),(39,22,9),(40,23,58),(41,23,66),(42,24,75),(43,25,66),(44,25,58),(45,26,66),(46,26,58),(47,27,66),(48,27,58),(49,28,58),(50,28,66),(51,29,66),(52,29,65),(53,29,58),(54,30,66),(55,30,58),(56,31,66),(57,31,58),(58,32,66),(59,32,58),(60,33,66),(61,33,58),(62,34,66),(63,34,58),(64,35,66),(65,35,58),(66,35,65),(67,36,60),(68,37,25),(69,37,17),(70,38,66),(71,38,58),(72,39,65),(73,39,66),(74,39,58),(75,40,12),(76,41,79),(77,42,24),(78,42,20),(79,42,19),(80,42,17),(81,42,25),(82,43,58),(83,43,66),(84,44,66),(85,44,58),(86,45,49),(87,46,25),(88,46,24),(89,47,58),(90,47,66),(91,48,19),(92,49,45),(93,50,48),(94,51,28),(95,52,77),(96,53,24),(97,54,66),(98,54,58),(99,55,20),(100,55,25),(101,56,36),(102,57,20),(103,57,19),(104,57,17),(105,57,25),(106,58,28),(107,59,58),(108,59,66),(109,60,66),(110,60,58),(111,61,25),(112,62,24),(113,62,25),(114,63,12),(115,64,45),(116,65,25),(117,65,20),(118,65,17),(119,65,18),(120,66,25),(121,66,24),(122,67,15),(123,68,15),(124,69,28),(125,70,17),(126,70,19),(127,70,20),(128,70,25),(129,71,52),(130,72,46),(131,73,52),(132,74,58),(133,74,65),(134,74,66),(135,75,66),(136,75,58),(137,76,19),(138,76,25),(139,77,25),(140,78,24),(141,79,52),(142,80,16),(143,80,25),(144,81,12),(145,82,12),(146,83,58),(147,83,66),(148,84,20),(149,85,12),(150,86,36),(151,87,58),(152,87,66),(153,88,12),(154,89,52),(155,90,62),(156,91,12),(157,92,52),(158,93,25),(159,93,16),(160,94,58),(161,94,66),(162,95,25),(163,95,18),(164,96,15),(165,97,66),(166,97,65),(167,97,58),(168,98,12),(169,99,66),(170,99,58),(171,100,17),(172,101,20),(173,101,25),(174,101,17),(175,101,18),(176,102,58),(177,102,66),(178,103,25),(179,103,16),(180,104,36),(181,105,20),(182,106,58),(183,107,20),(184,108,18),(185,109,36),(186,110,68),(187,111,53),(188,112,52),(189,113,58),(190,113,66),(191,114,25),(192,114,17),(193,115,65),(194,115,58),(195,115,66),(196,116,12),(197,117,25),(198,117,20),(199,118,25),(200,118,24),(201,118,17),(202,118,18),(203,118,20),(204,119,68),(205,120,25),(206,120,24),(207,121,18),(208,122,36),(209,123,36),(210,124,66),(211,124,58),(212,125,12),(213,126,76),(214,127,63),(215,128,17),(216,128,25),(217,129,28),(218,130,25),(219,130,18),(220,131,25),(221,131,24),(222,132,17),(223,133,17),(224,133,25),(225,134,28),(226,135,53),(227,136,25),(228,137,20),(229,137,18),(230,137,17),(231,137,25),(232,138,24),(233,139,53),(234,140,28),(235,141,12),(236,142,25),(237,142,20),(238,143,25),(239,143,17),(240,144,36),(241,145,25),(242,145,17),(243,146,36),(244,147,66),(245,147,58),(246,148,25),(247,148,24),(248,148,20),(249,148,18),(250,148,17),(251,149,36),(252,150,66),(253,150,58),(254,151,12),(255,152,66),(256,152,65),(257,152,58),(258,153,17),(259,153,18),(260,153,20),(261,153,25),(262,154,17),(263,155,58),(264,155,65),(265,155,66),(266,156,25),(267,156,24),(268,157,58),(269,158,48),(270,159,58),(271,159,66),(272,160,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,80,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(2,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(3,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(4,81,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(5,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(6,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(7,82,'<com.extend.battery.aw: void run()>',135,'a',NULL),(8,83,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(9,14,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(10,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(11,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(12,88,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(13,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(14,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(15,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(16,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(17,82,'<com.extend.battery.aw: void run()>',71,'a',NULL),(18,82,'<com.extend.battery.aw: void run()>',199,'a',NULL),(19,89,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(20,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(21,81,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(22,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(23,90,'<com.savebattery.killer.pro.EasyTaskKiller$2: void onClick(android.view.View)>',6,'a',NULL),(24,73,'<com.savebattery.killer.pro.widget.WidgetUpdateService: void onDestroy()>',5,'s',0),(25,56,'<com.savebattery.killer.pro.EasyTaskKiller: void shareApp()>',12,'a',NULL),(26,64,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(27,64,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(28,56,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(29,64,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(30,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',38,'a',NULL),(31,91,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(32,91,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(33,91,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(34,91,'<com.bwx.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(35,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onCreate(android.os.Bundle)>',33,'a',NULL),(36,105,'<com.savebattery.killer.pro.IgnoreList$2: void onClick(android.view.View)>',7,'a',0),(37,17,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(38,56,'<com.savebattery.killer.pro.EasyTaskKiller: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(39,106,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.savebattery.killer.pro.EasyTaskKiller)>',30,'p',NULL),(40,107,'<com.extend.battery.ba: void run()>',58,'a',NULL),(41,77,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(42,108,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(43,91,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(44,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',20,'a',NULL),(45,47,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(46,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(47,109,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',35,'r',NULL),(48,18,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(49,45,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(50,47,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(51,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(52,75,'<com.savebattery.killer.pro.widget.EasyWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',13,'s',NULL),(53,24,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(54,56,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(55,20,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(56,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(57,110,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(58,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(59,112,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',14,'r',NULL),(60,115,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',8,'a',NULL),(61,26,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(62,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(63,107,'<com.extend.battery.ba: void run()>',212,'a',NULL),(64,45,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(65,117,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(66,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(67,15,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(68,15,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(69,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(70,117,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(71,118,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(72,45,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(73,118,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(74,64,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(75,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',28,'r',NULL),(76,18,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(77,26,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(78,24,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(79,118,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(80,119,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(81,12,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(82,107,'<com.extend.battery.ba: void run()>',118,'a',NULL),(83,64,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(84,20,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(85,12,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(86,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(87,64,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(88,107,'<com.extend.battery.ba: void run()>',118,'a',NULL),(89,51,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(90,120,'<com.savebattery.killer.pro.PreferencesActivity$3: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'s',NULL),(91,107,'<com.extend.battery.ba: void run()>',58,'a',NULL),(92,118,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(93,119,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(94,121,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(95,18,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(96,15,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(97,122,'<com.savebattery.killer.pro.EasyTaskKiller$13: java.lang.Void doInBackground(java.lang.Void[])>',14,'r',NULL),(98,107,'<com.extend.battery.ba: void run()>',118,'a',NULL),(99,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',34,'a',NULL),(100,17,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(101,110,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(102,56,'<com.savebattery.killer.pro.EasyTaskKiller: void showSettingPage()>',3,'a',NULL),(103,119,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(104,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(105,20,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(106,56,'<com.savebattery.killer.pro.EasyTaskKiller: void findApplication(java.lang.String,java.lang.String)>',14,'a',NULL),(107,20,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(108,18,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(109,123,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(110,66,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(111,118,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(112,51,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(113,91,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',48,'p',NULL),(114,17,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(115,91,'<com.bwx.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(116,12,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(117,20,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(118,108,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(119,66,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(120,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(121,18,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(122,123,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(123,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(124,56,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(125,107,'<com.extend.battery.ba: void run()>',58,'a',NULL),(126,74,'<com.savebattery.killer.pro.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',0),(127,61,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(128,17,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(129,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(130,18,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(131,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(132,17,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(133,17,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(134,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(135,118,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(136,26,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(137,117,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(138,24,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(139,51,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(140,28,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(141,107,'<com.extend.battery.ba: void run()>',212,'a',NULL),(142,20,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(143,17,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(144,123,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(145,17,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(146,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(147,124,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',9,'a',NULL),(148,108,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(149,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(150,91,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',15,'p',NULL),(151,107,'<com.extend.battery.ba: void run()>',212,'a',NULL),(152,56,'<com.savebattery.killer.pro.EasyTaskKiller: void startAutoKillService()>',9,'s',NULL),(153,110,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(154,17,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(155,56,'<com.savebattery.killer.pro.EasyTaskKiller: void onResume()>',32,'r',NULL),(156,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(157,125,'<com.savebattery.killer.pro.EasyTaskKiller$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(158,47,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(159,64,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(160,62,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',7,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,23),(2,5,24),(3,6,1),(4,13,4),(5,15,30),(6,20,31),(7,21,4),(8,24,32),(9,25,32),(10,26,32),(11,27,32),(12,28,32),(13,29,32),(14,30,32),(15,31,32),(16,40,34),(17,41,23),(18,46,35),(19,52,24),(20,51,4),(21,55,31),(22,57,38),(23,62,4),(24,67,4),(25,69,21),(26,70,18),(27,73,4),(28,77,18),(29,78,4),(30,87,35),(31,90,33),(32,92,1),(33,93,31),(34,96,4),(35,97,4),(36,98,4),(37,100,18),(38,103,24),(39,107,23),(40,108,22),(41,111,4),(42,115,24),(43,121,1),(44,122,30),(45,125,4),(46,127,4),(47,132,30),(48,134,30),(49,135,4),(50,136,45),(51,137,46),(52,138,23),(53,139,4),(54,142,31),(55,143,1),(56,144,21),(57,146,4);
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
INSERT INTO `ICategories` VALUES (1,6,1),(2,92,1),(3,121,1),(4,143,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/extend/battery/FeaturesActivity'),(2,3,'com.android.settings.InstalledAppDetails'),(3,4,'com.android.settings.InstalledAppDetails'),(4,6,'NULL-CONSTANT'),(5,7,'com/extend/battery/FeaturesActivity'),(6,8,'com/extend/battery/TabHandler'),(7,9,'com/extend/battery/FeaturesActivity'),(8,10,'com/zanalytics/sms/SmsReceiverService'),(9,11,'com/extend/battery/TabHandler'),(10,12,'com/extend/battery/FeaturesActivity'),(11,14,'com/extend/battery/FeaturesActivity'),(12,16,'com/extend/battery/FeaturesActivity'),(13,17,'com/extend/battery/BatteryService'),(14,18,'com/extend/battery/TabHandler'),(15,19,'com/extend/battery/TabHandler'),(16,20,'com/zanalytics/sms/SmsReceiverService'),(17,22,'com/extend/battery/RatingActivity'),(18,23,'com.android.settings.RunningServices'),(19,32,'com/bwx/bequick/LayoutSettingsActivity'),(20,33,'com/bwx/bequick/preferences/CommonPrefs'),(21,34,'com.android.settings.RunningServices'),(22,35,'com/bwx/bequick/EulaActivity'),(23,36,'com/bwx/bequick/preferences/CommonPrefs'),(24,37,'com/savebattery/killer/pro/OfferDialog'),(25,38,'com/extend/battery/FeaturesActivity'),(26,39,'com/extend/battery/TabHandler'),(27,42,'com/bwx/bequick/flashlight/ScreenLightActivity'),(28,43,'com/extend/battery/BatteryService'),(29,44,'com/extend/battery/RatingActivity'),(30,45,'com.android.settings.InstalledAppDetails'),(31,47,'com/extend/battery/BatteryService'),(32,49,'com/itframework/installer/util/NonMarketDialogActivity'),(33,48,'com.android.settings.InstalledAppDetails'),(34,50,'com/savebattery/killer/pro/widget/WidgetUpdateService'),(35,53,'com/bwx/bequick/preferences/CommonPrefs'),(36,54,'com/extend/battery/FeaturesActivity'),(37,56,'com/itframework/installer/util/NonMarketDialogActivity'),(38,55,'com/zanalytics/sms/SmsReceiverService'),(39,58,'com.android.settings.ChooseLockPattern'),(40,59,'com/extend/battery/FeaturesActivity'),(41,60,'com/extend/battery/RatingActivity'),(42,61,'com/extend/battery/TabHandler'),(43,63,'com/extend/battery/RatingActivity'),(44,64,'com/extend/battery/BatteryService'),(45,65,'com/extend/battery/BatteryService'),(46,66,'com/itframework/installer/util/InstallWorker'),(47,68,'com/itframework/installer/util/InstallWorker'),(48,71,'com/extend/battery/FeaturesActivity'),(49,72,'com/extend/battery/FeaturesActivity'),(50,74,'com/extend/battery/FeaturesActivity'),(51,76,'com/extend/battery/TabHandler'),(52,75,'com/extend/battery/TabHandler'),(53,79,'com/extend/battery/TabHandler'),(54,80,'com/bwx/bequick/flashlight/ScreenLightActivity'),(55,81,'com/extend/battery/TabHandler'),(56,83,'com/savebattery/killer/pro/AutoKillService'),(57,84,'com/extend/battery/TabHandler'),(58,82,'com/zanalytics/sms/SmsReceiverService'),(59,85,'com/extend/battery/FeaturesActivity'),(60,86,'com/extend/battery/FeaturesActivity'),(61,88,'com/extend/battery/BatteryService'),(62,89,'com/extend/battery/TabHandler'),(63,91,'com/bwx/bequick/LayoutSettingsActivity'),(64,92,'NULL-CONSTANT'),(65,94,'com/savebattery/killer/pro/PreferencesActivity'),(66,95,'com/extend/battery/FeaturesActivity'),(67,93,'com/zanalytics/sms/SmsReceiverService'),(68,99,'com.android.settings.InstalledAppDetails'),(69,101,'com.android.settings.InstalledAppDetails'),(70,102,'com/zanalytics/sms/SmsReceiverService'),(71,104,'com/extend/battery/FeaturesActivity'),(72,105,'com/extend/battery/TabHandler'),(73,106,'com/extend/battery/FeaturesActivity'),(74,109,'com/extend/battery/FeaturesActivity'),(75,110,'com.android.settings.InstalledAppDetails'),(76,112,'com/bwx/bequick/LayoutSettingsActivity'),(77,113,'com/extend/battery/TabHandler'),(78,114,'com.android.settings.InstalledAppDetails'),(79,116,'com/savebattery/killer/pro/EasyTaskKiller'),(80,117,'com/extend/battery/FeaturesActivity'),(81,118,'com/itframework/installer/util/NonMarketDialogActivity'),(82,119,'com/extend/battery/FeaturesActivity'),(83,120,'com/extend/battery/FeaturesActivity'),(84,121,'NULL-CONSTANT'),(85,124,'com/extend/battery/FeaturesActivity'),(86,123,'com/itframework/installer/util/InstallWorker'),(87,128,'com/zanalytics/sms/SmsReceiverService'),(88,126,'com/itframework/installer/util/InstallWorker'),(89,130,'com/extend/battery/TabHandler'),(90,131,'com/extend/battery/FeaturesActivity'),(91,129,'com/itframework/installer/util/InstallWorker'),(92,133,'com/itframework/installer/util/InstallWorker'),(93,140,'com/extend/battery/TabHandler'),(94,141,'com/savebattery/killer/pro/AutoKillService'),(95,143,'NULL-CONSTANT'),(96,142,'com/zanalytics/sms/SmsReceiverService'),(97,145,'com/extend/battery/FeaturesActivity'),(98,147,'com/extend/battery/BatteryService'),(99,148,'com.savebattery.killer.pro.EasyTaskKiller');
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
INSERT INTO `IData` VALUES (1,5,1),(2,13,3),(3,15,4),(4,21,5),(5,51,14),(6,52,13),(7,62,15),(8,67,16),(9,73,20),(10,78,21),(11,96,23),(12,97,24),(13,98,25),(14,103,28),(15,111,30),(16,115,31),(17,122,32),(18,125,34),(19,127,35),(20,132,36),(21,134,37),(22,135,38),(23,139,40),(24,146,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'com.android.settings.ApplicationPkgName'),(2,4,'pkg'),(3,10,'result'),(4,10,'abort'),(5,11,'cacheUrl'),(6,20,'TryCount'),(7,20,'NextMessage'),(8,20,'TryAgain'),(9,20,'StoreMessage'),(10,20,'Message'),(11,20,'Delay'),(12,20,'PhoneNumber'),(13,20,'TagEvent'),(14,24,'android.intent.extra.INTENT'),(15,25,'android.intent.extra.INTENT'),(16,26,'android.intent.extra.TITLE'),(17,26,'android.intent.extra.INTENT'),(18,27,'android.intent.extra.INTENT'),(19,28,'android.intent.extra.TITLE'),(20,28,'android.intent.extra.INTENT'),(21,29,'android.intent.extra.INTENT'),(22,30,'android.intent.extra.TITLE'),(23,30,'android.intent.extra.INTENT'),(24,31,'android.intent.extra.TITLE'),(25,31,'android.intent.extra.INTENT'),(26,45,'com.android.settings.ApplicationPkgName'),(27,48,'pkg'),(28,50,'_id'),(29,55,'TryCount'),(30,55,'NextMessage'),(31,55,'TryAgain'),(32,55,'StoreMessage'),(33,55,'Message'),(34,55,'Delay'),(35,55,'PhoneNumber'),(36,55,'TagEvent'),(37,57,'state'),(38,66,'downloadingProgress'),(39,66,'downloadingWait'),(40,66,'downloadingToast'),(41,66,'finishedText'),(42,66,'downloadingTicker'),(43,66,'downloadingTitle'),(44,66,'filename'),(45,66,'finishedTicker'),(46,66,'forceDownload'),(47,66,'finishedTitle'),(48,66,'url'),(49,66,'downloadStarting'),(50,68,'downloadingProgress'),(51,68,'downloadingWait'),(52,68,'downloadingToast'),(53,68,'callbackIntent'),(54,68,'finishedText'),(55,68,'downloadingTicker'),(56,68,'downloadingTitle'),(57,68,'filename'),(58,68,'finishedTicker'),(59,68,'forceDownload'),(60,68,'finishedTitle'),(61,68,'url'),(62,68,'downloadStarting'),(63,70,'enabled'),(64,75,'cacheUrl'),(65,77,'enabled'),(66,79,'cacheUrl'),(67,82,'result'),(68,82,'abort'),(69,93,'TryCount'),(70,93,'NextMessage'),(71,93,'TryAgain'),(72,93,'StoreMessage'),(73,93,'Message'),(74,93,'Delay'),(75,93,'PhoneNumber'),(76,93,'TagEvent'),(77,99,'com.android.settings.ApplicationPkgName'),(78,100,'enabled'),(79,101,'pkg'),(80,102,'result'),(81,102,'abort'),(82,105,'cacheUrl'),(83,108,'appearence'),(84,108,'status'),(85,108,'inversed'),(86,110,'com.android.settings.ApplicationPkgName'),(87,114,'pkg'),(88,123,'downloadingProgress'),(89,123,'downloadingWait'),(90,123,'downloadingToast'),(91,123,'finishedText'),(92,123,'downloadingTicker'),(93,123,'downloadingTitle'),(94,123,'filename'),(95,123,'finishedTicker'),(96,123,'forceDownload'),(97,123,'finishedTitle'),(98,123,'url'),(99,123,'downloadStarting'),(100,126,'downloadingProgress'),(101,126,'downloadingWait'),(102,126,'downloadingToast'),(103,126,'callbackIntent'),(104,126,'finishedText'),(105,126,'downloadingTicker'),(106,128,'result'),(107,126,'downloadingTitle'),(108,128,'abort'),(109,126,'filename'),(110,126,'finishedTicker'),(111,126,'forceDownload'),(112,129,'downloadingProgress'),(113,126,'finishedTitle'),(114,129,'downloadingWait'),(115,126,'url'),(116,129,'downloadingToast'),(117,126,'downloadStarting'),(118,129,'finishedText'),(119,129,'downloadingTicker'),(120,129,'downloadingTitle'),(121,129,'filename'),(122,129,'finishedTicker'),(123,129,'forceDownload'),(124,129,'finishedTitle'),(125,129,'url'),(126,129,'downloadStarting'),(127,133,'downloadingProgress'),(128,133,'downloadingWait'),(129,133,'downloadingToast'),(130,133,'callbackIntent'),(131,133,'finishedText'),(132,133,'downloadingTicker'),(133,133,'downloadingTitle'),(134,133,'filename'),(135,133,'finishedTicker'),(136,133,'forceDownload'),(137,133,'finishedTitle'),(138,133,'url'),(139,133,'downloadStarting'),(140,142,'TryCount'),(141,142,'NextMessage'),(142,142,'TryAgain'),(143,142,'StoreMessage'),(144,142,'Message'),(145,142,'Delay'),(146,142,'PhoneNumber'),(147,142,'TagEvent');
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
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,1),(8,8,1),(9,9,4),(10,10,4),(11,11,5),(12,12,4),(13,13,4),(14,14,7),(15,15,7),(16,16,6),(17,17,6),(18,19,6),(19,18,7),(20,20,9),(21,21,9),(22,22,9),(23,23,10),(24,24,10),(25,25,10),(26,26,3),(27,28,3),(28,27,3),(29,29,2),(30,30,2),(31,31,2),(32,32,9),(33,33,10),(34,34,3),(35,35,1),(36,36,2),(37,37,11),(38,38,5),(39,39,12),(40,40,13),(41,41,14),(42,42,15),(43,43,10),(44,44,16),(45,45,17),(46,46,18),(47,46,19),(48,47,22),(49,47,10),(50,47,21),(51,47,20),(52,48,5),(53,49,29),(54,49,28),(55,49,27),(56,49,26),(57,49,25),(58,50,29),(59,50,26),(60,50,25),(61,50,28),(62,50,27),(63,51,25),(64,51,26),(65,51,27),(66,51,28),(67,51,29),(68,52,25),(69,52,26),(70,52,29),(71,52,27),(72,52,28),(73,53,25),(74,53,26),(75,53,27),(76,53,28),(77,53,29),(78,54,27),(79,54,28),(80,54,25),(81,54,26),(82,54,29),(83,55,26),(84,56,26),(85,57,26),(86,58,26),(87,59,26),(88,60,26),(89,61,26),(90,62,26),(91,63,26),(92,64,26),(93,65,26),(94,66,26),(95,67,26),(96,68,26),(97,69,26),(98,70,26),(99,71,26),(100,72,26),(101,73,33),(102,74,33),(103,75,33),(104,76,33),(105,77,33),(106,78,33),(107,79,33),(108,80,33),(109,81,33),(110,82,33),(111,83,33),(112,84,33),(113,85,33),(114,86,33),(115,87,33),(116,88,33),(117,89,33),(118,90,33),(119,91,33),(120,92,36),(121,93,27),(122,93,26),(123,93,25),(124,93,28),(125,93,29),(126,94,37),(127,95,25),(128,95,29),(129,95,28),(130,95,27),(131,95,26),(132,96,26),(133,97,28),(134,97,29),(135,97,26),(136,97,27),(137,97,25),(138,98,26),(139,99,26),(140,100,25),(141,100,26),(142,100,27),(143,100,28),(144,100,29),(145,101,26),(146,102,27),(147,102,28),(148,102,25),(149,102,26),(150,102,29),(151,103,26),(152,104,29),(153,104,27),(154,104,28),(155,104,25),(156,104,26),(157,106,35),(158,105,26),(159,107,35),(160,108,26),(161,109,28),(162,109,29),(163,109,27),(164,109,26),(165,109,25),(166,110,35),(167,111,26),(168,112,28),(169,112,27),(170,112,29),(171,112,26),(172,112,25),(173,113,35),(174,114,35),(175,115,35),(176,116,35),(177,117,35),(178,118,35),(179,119,35),(180,120,35),(181,121,35),(182,122,35),(183,123,35),(184,124,26),(185,125,35),(186,126,26),(187,127,26),(188,128,35),(189,129,26),(190,130,26),(191,131,35),(192,132,26),(193,133,26),(194,134,35),(195,135,26),(196,136,26),(197,137,35),(198,138,26),(199,139,26),(200,140,26),(201,141,26),(202,142,26),(203,143,26),(204,144,26),(205,145,40),(206,145,39),(207,146,42),(208,146,41),(209,147,26),(210,148,26),(211,149,26),(212,150,26),(213,151,26),(214,152,26),(215,153,26),(216,154,26),(217,155,38),(218,156,26),(219,157,43),(220,158,26),(221,159,43),(222,160,26),(223,161,26),(224,162,43),(225,163,26),(226,164,26),(227,165,43),(228,166,26),(229,167,26),(230,168,43),(231,169,26),(232,170,26),(233,171,43),(234,172,26),(235,173,26),(236,174,43),(237,175,26),(238,176,26),(239,177,43),(240,178,26),(241,179,43),(242,180,26),(243,181,26),(244,182,43),(245,183,26),(246,184,43),(247,185,26),(248,186,43),(249,187,26),(250,188,43),(251,189,26),(252,190,43),(253,191,26),(254,192,43),(255,193,26),(256,194,43),(257,195,26),(258,196,43),(259,197,43),(260,198,43),(261,199,44),(262,200,44),(263,201,44),(264,202,44),(265,203,44),(266,204,44),(267,205,44),(268,206,44),(269,207,26),(270,208,44),(271,209,26),(272,210,44),(273,211,26),(274,212,44),(275,213,26),(276,214,44),(277,215,26),(278,216,44),(279,217,26),(280,218,44),(281,219,26),(282,220,44),(283,221,28),(284,221,29),(285,221,25),(286,221,27),(287,221,26),(288,222,26),(289,223,44),(290,224,26),(291,224,25),(292,224,29),(293,224,28),(294,224,27),(295,225,26),(296,226,44),(297,227,28),(298,227,29),(299,227,26),(300,227,27),(301,227,25),(302,228,26),(303,229,27),(304,229,26),(305,229,25),(306,229,29),(307,229,28),(308,230,44),(309,231,25),(310,231,29),(311,231,28),(312,231,27),(313,231,26),(314,232,26),(315,233,27),(316,233,26),(317,233,25),(318,233,29),(319,233,28),(320,234,44),(321,235,29),(322,235,28),(323,235,27),(324,235,26),(325,235,25),(326,236,26),(327,237,27),(328,237,26),(329,237,25),(330,237,28),(331,237,29),(332,238,28),(333,238,27),(334,239,29),(335,239,28),(336,239,27),(337,239,26),(338,239,25),(339,240,26),(340,241,25),(341,241,26),(342,241,27),(343,241,28),(344,241,29),(345,242,27),(346,242,28),(347,242,25),(348,242,26),(349,242,29),(350,243,26),(351,244,25),(352,244,26),(353,244,29),(354,244,27),(355,244,28),(356,245,29),(357,245,28),(358,245,25),(359,245,27),(360,245,26),(361,246,26),(362,247,27),(363,247,26),(364,247,29),(365,247,28),(366,247,25),(367,248,26),(368,249,28),(369,249,29),(370,249,26),(371,249,27),(372,249,25),(373,250,29),(374,250,25),(375,250,26),(376,250,27),(377,250,28),(378,251,26),(379,251,34),(380,252,27),(381,252,28),(382,253,34),(383,253,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,1),(6,8,1),(7,9,2),(8,9,3),(9,10,3),(10,10,2),(11,13,3),(12,13,2),(13,12,3),(14,12,2),(15,35,1),(16,37,2),(17,39,2),(18,40,2),(19,41,2),(20,42,2),(21,43,2),(22,45,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,21,'application','vnd.android.package-archive'),(2,78,'application','vnd.android.package-archive'),(3,96,'application','vnd.android.package-archive'),(4,98,'application','vnd.android.package-archive'),(5,111,'application','vnd.android.package-archive'),(6,135,'application','vnd.android.package-archive'),(7,139,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.extend.battery'),(2,3,'com.android.settings'),(3,4,'com.android.settings'),(4,6,'NULL-CONSTANT'),(5,7,'com.extend.battery'),(6,8,'com.extend.battery'),(7,9,'com.extend.battery'),(8,10,'com.extend.battery'),(9,11,'com.extend.battery'),(10,12,'com.extend.battery'),(11,14,'com.extend.battery'),(12,16,'com.extend.battery'),(13,17,'com.extend.battery'),(14,18,'com.extend.battery'),(15,19,'com.extend.battery'),(16,20,'com.extend.battery'),(17,22,'com.extend.battery'),(18,23,'com.android.settings'),(19,32,'com.batteryupgradeandroid.batteryupdate.killer'),(20,33,'com.batteryupgradeandroid.batteryupdate.killer'),(21,34,'com.android.settings'),(22,35,'com.batteryupgradeandroid.batteryupdate.killer'),(23,36,'com.batteryupgradeandroid.batteryupdate.killer'),(24,37,'com.batteryupgradeandroid.batteryupdate.killer'),(25,38,'com.extend.battery'),(26,39,'com.extend.battery'),(27,42,'com.batteryupgradeandroid.batteryupdate.killer'),(28,43,'com.extend.battery'),(29,44,'com.extend.battery'),(30,45,'com.android.settings'),(31,47,'com.extend.battery'),(32,49,'com.extend.battery'),(33,48,'com.android.settings'),(34,50,'com.batteryupgradeandroid.batteryupdate.killer'),(35,53,'com.batteryupgradeandroid.batteryupdate.killer'),(36,54,'com.extend.battery'),(37,56,'com.extend.battery'),(38,55,'com.extend.battery'),(39,58,'com.android.settings'),(40,59,'com.extend.battery'),(41,60,'com.extend.battery'),(42,61,'com.extend.battery'),(43,63,'com.extend.battery'),(44,64,'com.extend.battery'),(45,65,'com.extend.battery'),(46,66,'com.extend.battery'),(47,68,'com.extend.battery'),(48,71,'com.extend.battery'),(49,72,'com.extend.battery'),(50,74,'com.extend.battery'),(51,76,'com.extend.battery'),(52,75,'com.extend.battery'),(53,80,'com.batteryupgradeandroid.batteryupdate.killer'),(54,79,'com.extend.battery'),(55,81,'com.extend.battery'),(56,83,'com.batteryupgradeandroid.batteryupdate.killer'),(57,84,'com.extend.battery'),(58,82,'com.extend.battery'),(59,85,'com.extend.battery'),(60,86,'com.extend.battery'),(61,88,'com.extend.battery'),(62,89,'com.extend.battery'),(63,91,'com.batteryupgradeandroid.batteryupdate.killer'),(64,92,'NULL-CONSTANT'),(65,94,'com.batteryupgradeandroid.batteryupdate.killer'),(66,95,'com.extend.battery'),(67,93,'com.extend.battery'),(68,99,'com.android.settings'),(69,101,'com.android.settings'),(70,102,'com.extend.battery'),(71,104,'com.extend.battery'),(72,105,'com.extend.battery'),(73,106,'com.extend.battery'),(74,109,'com.extend.battery'),(75,110,'com.android.settings'),(76,112,'com.batteryupgradeandroid.batteryupdate.killer'),(77,113,'com.extend.battery'),(78,114,'com.android.settings'),(79,116,'com.batteryupgradeandroid.batteryupdate.killer'),(80,117,'com.extend.battery'),(81,118,'com.extend.battery'),(82,119,'com.extend.battery'),(83,120,'com.extend.battery'),(84,121,'NULL-CONSTANT'),(85,124,'com.extend.battery'),(86,123,'com.extend.battery'),(87,128,'com.extend.battery'),(88,126,'com.extend.battery'),(89,130,'com.extend.battery'),(90,131,'com.extend.battery'),(91,129,'com.extend.battery'),(92,133,'com.extend.battery'),(93,140,'com.extend.battery'),(94,141,'com.batteryupgradeandroid.batteryupdate.killer'),(95,143,'NULL-CONSTANT'),(96,142,'com.extend.battery'),(97,145,'com.extend.battery'),(98,147,'com.extend.battery'),(99,148,'com.batteryupgradeandroid.batteryupdate.killer');
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
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,12,0),(3,12,0),(4,12,0),(5,14,0),(6,14,0),(7,12,0),(8,21,0),(9,28,0),(10,28,0),(11,26,0),(12,28,0),(13,28,0),(14,41,0),(15,41,0),(16,41,0),(17,41,0),(18,41,0),(19,41,0),(20,45,0),(21,46,0),(22,45,0),(23,48,0),(24,48,0),(25,49,0),(26,52,0),(27,52,0),(28,53,0),(29,52,0),(30,53,0),(31,52,0),(32,55,0),(33,56,0),(34,57,0),(35,58,0),(36,57,0),(37,58,0),(38,59,0),(39,60,0),(40,62,0),(41,64,0),(42,74,0),(43,76,0),(44,77,0),(45,78,0),(46,79,0),(47,80,0),(48,81,0),(49,82,0),(50,83,0),(51,26,0),(52,84,0),(53,14,0),(54,85,0),(55,82,0),(56,83,0),(57,26,0),(58,84,0),(59,14,0),(60,85,0),(61,82,0),(62,83,0),(63,26,0),(64,84,0),(65,14,0),(66,85,0),(67,82,0),(68,83,0),(69,26,0),(70,84,0),(71,14,0),(72,85,0),(73,80,0),(74,81,0),(75,86,0),(76,87,0),(77,77,0),(78,88,0),(79,89,0),(80,90,0),(81,91,0),(82,92,0),(83,76,0),(84,93,0),(85,94,0),(86,79,0),(87,78,0),(88,95,0),(89,96,0),(90,97,0),(91,98,0),(92,90,0),(93,99,0),(94,90,0),(95,41,0),(96,99,0),(97,100,0),(98,41,0),(99,100,0),(100,101,0),(101,101,0),(102,52,0),(103,52,0),(104,45,0),(105,45,0),(106,80,0),(107,81,0),(108,103,0),(109,102,0),(110,86,0),(111,48,0),(112,48,0),(113,87,0),(114,77,0),(115,88,0),(116,89,0),(117,90,0),(118,91,0),(119,92,0),(120,76,0),(121,93,0),(122,94,0),(123,79,0),(124,99,0),(125,78,0),(126,41,0),(127,99,0),(128,95,0),(129,100,0),(130,41,0),(131,96,0),(132,101,0),(133,100,0),(134,97,0),(135,52,0),(136,101,0),(137,98,0),(138,45,0),(139,52,0),(140,102,0),(141,45,0),(142,48,0),(143,102,0),(144,48,0),(145,94,0),(146,87,0),(147,99,0),(148,41,0),(149,100,0),(150,101,0),(151,52,0),(152,45,0),(153,102,0),(154,48,0),(155,98,0),(156,99,0),(157,80,0),(158,41,0),(159,81,0),(160,100,0),(161,99,0),(162,86,0),(163,101,0),(164,41,0),(165,87,0),(166,52,0),(167,100,0),(168,77,0),(169,45,0),(170,101,0),(171,88,0),(172,102,0),(173,52,0),(174,89,0),(175,48,0),(176,45,0),(177,90,0),(178,102,0),(179,91,0),(180,48,0),(181,99,0),(182,92,0),(183,41,0),(184,76,0),(185,100,0),(186,93,0),(187,101,0),(188,94,0),(189,52,0),(190,79,0),(191,45,0),(192,78,0),(193,102,0),(194,95,0),(195,48,0),(196,96,0),(197,97,0),(198,98,0),(199,80,0),(200,81,0),(201,86,0),(202,87,0),(203,77,0),(204,88,0),(205,89,0),(206,90,0),(207,99,0),(208,91,0),(209,41,0),(210,92,0),(211,100,0),(212,76,0),(213,101,0),(214,93,0),(215,52,0),(216,94,0),(217,45,0),(218,79,0),(219,102,0),(220,78,0),(221,99,0),(222,48,0),(223,95,0),(224,41,0),(225,99,0),(226,96,0),(227,100,0),(228,41,0),(229,99,0),(230,97,0),(231,101,0),(232,100,0),(233,41,0),(234,98,0),(235,52,0),(236,101,0),(237,100,0),(238,91,0),(239,45,0),(240,52,0),(241,101,0),(242,102,0),(243,45,0),(244,52,0),(245,48,0),(246,102,0),(247,45,0),(248,48,0),(249,102,0),(250,48,0),(251,88,0),(252,96,0),(253,92,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,3,1,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,1,0),(14,13,0,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,20,1,0),(22,22,0,0),(23,23,0,0),(24,25,1,0),(25,25,1,0),(26,25,1,0),(27,25,1,0),(28,25,1,0),(29,25,1,0),(30,25,1,0),(31,25,1,0),(32,26,0,0),(33,27,0,0),(34,28,0,0),(35,29,0,0),(36,30,0,0),(37,35,0,0),(38,37,0,0),(39,40,0,0),(40,41,1,0),(41,42,1,0),(42,44,0,0),(43,45,0,0),(44,46,0,0),(45,48,0,0),(46,47,1,0),(47,50,0,0),(48,48,0,0),(49,51,0,0),(50,52,0,0),(51,53,1,0),(52,48,1,0),(53,54,0,0),(54,55,0,0),(55,57,0,0),(56,58,0,0),(57,59,1,0),(58,60,0,0),(59,61,0,0),(60,62,0,0),(61,63,0,0),(62,65,1,0),(63,66,0,0),(64,67,0,0),(65,68,0,0),(66,69,0,0),(67,70,1,0),(68,69,0,0),(69,74,1,0),(70,75,1,0),(71,76,0,0),(72,77,0,0),(73,78,1,0),(74,80,0,0),(75,81,0,0),(76,82,0,0),(77,83,1,0),(78,84,1,0),(79,85,0,0),(80,87,0,0),(81,88,0,0),(82,89,0,0),(83,90,0,0),(84,91,0,0),(85,93,0,0),(86,95,0,0),(87,94,1,0),(88,96,0,0),(89,98,0,0),(90,97,1,0),(91,99,0,0),(92,100,0,0),(93,101,0,0),(94,102,0,0),(95,103,0,0),(96,105,1,0),(97,106,1,0),(98,107,1,0),(99,108,0,0),(100,110,1,0),(101,108,0,0),(102,112,0,0),(103,108,1,0),(104,114,0,0),(105,116,0,0),(106,117,0,0),(107,118,1,0),(108,119,1,0),(109,120,0,0),(110,121,0,0),(111,123,1,0),(112,124,0,0),(113,125,0,0),(114,121,0,0),(115,121,1,0),(116,127,0,0),(117,128,0,0),(118,129,0,0),(119,130,0,0),(120,131,0,0),(121,132,0,0),(122,133,1,0),(123,134,0,0),(124,136,0,0),(125,137,1,0),(126,134,0,0),(127,138,1,0),(128,139,0,0),(129,140,0,0),(130,141,0,0),(131,142,0,0),(132,143,1,0),(133,140,0,0),(134,145,1,0),(135,146,1,0),(136,147,1,0),(137,147,1,0),(138,148,1,0),(139,149,1,0),(140,151,0,0),(141,152,0,0),(142,153,0,0),(143,154,0,0),(144,155,1,0),(145,156,0,0),(146,157,1,0),(147,158,0,0),(148,160,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(26,'android.permission.CAMERA'),(16,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(10,'android.permission.DISABLE_KEYGUARD'),(27,'android.permission.FLASHLIGHT'),(25,'android.permission.GET_ACCOUNTS'),(24,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(29,'android.permission.HARDWARE_TEST'),(13,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(32,'android.permission.MODIFY_PHONE_STATE'),(9,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SECURE_SETTINGS'),(11,'android.permission.READ_SMS'),(33,'android.permission.READ_SYNC_SETTINGS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SECURE_SETTINGS'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(31,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(2,NULL,NULL,'content://mms',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://sms',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(11,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(14,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://sms',NULL,NULL,NULL),(18,NULL,NULL,'content://mms',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://mms',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'market://search?q=pname:com.batteryupgradeandroid.batteryupdate.killer',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://sms',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(28,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://mms',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'http://market.android.com/search?q=pub:\"BatteryDoubler\"',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,2),(2,21,6),(3,31,7),(4,32,8),(5,33,9),(6,34,10),(7,39,11),(8,43,12),(9,71,17),(10,73,18),(11,79,19),(12,92,22),(13,111,26),(14,113,27),(15,115,29),(16,135,33),(17,150,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,2),(24,2,3),(25,2,4),(26,2,5),(27,2,6),(28,2,8),(29,2,9),(30,3,1),(31,2,10),(32,3,2),(33,2,11),(34,3,3),(35,2,12),(36,3,4),(37,2,13),(38,3,5),(39,2,14),(40,3,6),(41,2,15),(42,3,7),(43,2,16),(44,3,8),(45,2,19),(46,3,9),(47,2,18),(48,3,10),(49,2,21),(50,3,11),(51,2,20),(52,3,12),(53,2,23),(54,3,13),(55,2,22),(56,3,14),(57,2,24),(58,3,15),(59,3,17),(60,3,16),(61,3,19),(62,3,18),(63,3,21),(64,3,20),(65,4,34),(66,4,32),(67,4,2),(68,4,33),(69,4,5),(70,4,8),(71,4,9),(72,4,12),(73,4,13),(74,4,14),(75,4,15),(76,4,17),(77,4,16),(78,4,19),(79,4,18),(80,4,21),(81,4,20),(82,4,25),(83,4,27),(84,4,26),(85,4,29),(86,4,28),(87,4,31),(88,4,30);
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

-- Dump completed on 2015-10-09  0:38:34
