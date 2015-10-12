-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_202
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (35,'(.*).SEND_SMS'),(46,'NULL-CONSTANT'),(2,'android.appwidget.action.APPWIDGET_UPDATE'),(42,'android.bluetooth.adapter.action.STATE_CHANGED'),(43,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(49,'android.intent.action.AIRPLANE_MODE'),(28,'android.intent.action.BATTERY_CHANGED'),(34,'android.intent.action.BATTERY_LOW'),(31,'android.intent.action.BATTERY_OKAY'),(11,'android.intent.action.BOOT_COMPLETED'),(40,'android.intent.action.CHOOSER'),(27,'android.intent.action.DELETE'),(51,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PICK_SAVE_BATTERY_KILLER_PRO'),(13,'android.intent.action.SAVE_BATTERY_PRO_IGNORE_LIST'),(14,'android.intent.action.SAVE_BATTERY_SETTINGS'),(32,'android.intent.action.SCREEN_OFF'),(33,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SEARCH_LONG_PRESS'),(45,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(55,'android.media.RINGER_MODE_CHANGED'),(54,'android.media.VIBRATE_SETTING_CHANGED'),(50,'android.net.conn.CONNECTIVITY_CHANGE'),(57,'android.net.wifi.STATE_CHANGE'),(58,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(56,'android.net.wifi.WIFI_STATE_CHANGED'),(5,'android.provider.Telephony.SMS_RECEIVED'),(21,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(30,'android.settings.APPLICATION_DETAILS_SETTINGS'),(36,'android.settings.DISPLAY_SETTINGS'),(29,'android.settings.LOCATION_SOURCE_SETTINGS'),(37,'android.settings.SECURITY_SETTINGS'),(20,'com.android.mms.transaction.MESSAGE_SENT'),(8,'com.android.vending.INSTALL_REFERRER'),(22,'com.bwx.bequick.FLASHLIGHT'),(48,'com.bwx.bequick.FLASHLIGHT_STATE'),(24,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(25,'com.bwx.bequick.START_QS'),(26,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(38,'com.bwx.bequick.VOLUME_UPDATED'),(23,'com.bwx.bequick.WARN_FLASHLIGHT'),(10,'com.extend.battery.intent.http.SHOW'),(47,'com.flurry.android.ACTION_CATALOG'),(9,'com.itframework.installer.updater.CHECK'),(7,'com.itframework.installer.updater.UPDATE'),(18,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(39,'com.notifad.android.PushServiceStart(.*)'),(16,'com.notifad.android.PushServiceStart1'),(52,'com.notifad.android.PushServiceStartInvalid'),(41,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(53,'com.notifad.android.PushServiceStartinvalid Id'),(44,'com.savebattery.killer.pro.ACTION_LOAD_FINISH'),(17,'com.savebattery.killer.pro.action.AUTO_KILL'),(19,'com.savebattery.killer.pro.action.KILLALL'),(6,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.corner23.android.universalandroot',11),(2,'com.extend.battery',91),(3,'com.extend.battery',84),(4,'com.extend.battery',89),(5,'com.batteryupgradeandroid.batteryupdate.killer',26),(6,'com.extender.sc',53);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.corner23.android.universalandroot.UniversalAndroot'),(2,1,'com.corner23.android.universalandroot.service.SoftRootService'),(3,1,'com.corner23.android.universalandroot.receiver.WidgetProvider'),(4,2,'com.extend.battery.Splash'),(5,3,'com.extend.battery.Splash'),(6,2,'com.extend.battery.TabHandler'),(7,2,'com.extend.battery.TabHandler'),(8,2,'com.extend.battery.TaskKillerActivity'),(9,2,'com.extend.battery.TaskKillerActivity'),(10,3,'com.extend.battery.TabHandler'),(11,2,'com.extend.battery.UninstallerActivity'),(12,2,'com.extend.battery.UninstallerActivity'),(13,3,'com.extend.battery.TaskKillerActivity'),(14,2,'com.extend.battery.SecurityAuditActivity'),(15,2,'com.extend.battery.SecurityAuditActivity'),(16,3,'com.extend.battery.UninstallerActivity'),(17,2,'com.extend.battery.InstallerActivity'),(18,2,'com.extend.battery.InstallerActivity'),(19,3,'com.extend.battery.SecurityAuditActivity'),(20,2,'com.extend.battery.FeaturesActivity'),(21,2,'com.extend.battery.FeaturesActivity'),(22,3,'com.extend.battery.InstallerActivity'),(23,4,'com.extend.battery.Splash'),(24,2,'com.extend.battery.BoosterActivity'),(25,2,'com.extend.battery.BoosterActivity'),(26,3,'com.extend.battery.FeaturesActivity'),(27,2,'com.extend.battery.BatteryActivity'),(28,2,'com.extend.battery.BatteryActivity'),(29,3,'com.extend.battery.BoosterActivity'),(30,2,'com.extend.battery.RatingActivity'),(31,2,'com.extend.battery.RatingActivity'),(32,4,'com.extend.battery.TabHandler'),(33,3,'com.extend.battery.BatteryActivity'),(34,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(35,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(36,4,'com.extend.battery.TaskKillerActivity'),(37,3,'com.extend.battery.RatingActivity'),(38,4,'com.extend.battery.UninstallerActivity'),(39,3,'com.extend.battery.BatteryService'),(40,4,'com.extend.battery.SecurityAuditActivity'),(41,3,'com.zanalytics.sms.SmsReceiverService'),(42,4,'com.extend.battery.InstallerActivity'),(43,2,'com.itframework.installer.util.NonMarketDialogActivity'),(44,3,'com.zanalytics.sms.SmsReceiver'),(45,4,'com.extend.battery.FeaturesActivity'),(46,2,'com.extend.battery.BatteryService'),(47,4,'com.extend.battery.BoosterActivity'),(48,2,'com.itframework.installer.util.InstallWorker'),(49,4,'com.extend.battery.BatteryActivity'),(50,2,'com.zanalytics.sms.SmsReceiverService'),(51,4,'com.extend.battery.RatingActivity'),(52,2,'com.itframework.installer.updater.UpdateReceiver'),(53,3,'com.tapjoy.TapjoyReferralTracker'),(54,4,'com.extend.battery.BatteryService'),(55,4,'com.zanalytics.sms.SmsReceiverService'),(56,4,'com.extend.battery.NotificationReceiver'),(57,2,'com.extend.battery.NotificationReceiver'),(58,4,'com.extend.battery.BootReceiver'),(59,2,'com.extend.battery.BootReceiver'),(60,4,'com.zanalytics.sms.SmsReceiver'),(61,2,'com.zanalytics.sms.SmsReceiver'),(62,4,'com.tapjoy.TapjoyReferralTracker'),(63,5,'com.savebattery.killer.pro.EasyTaskKiller'),(64,5,'com.savebattery.killer.pro.IgnoreList'),(65,5,'com.savebattery.killer.pro.AddToIgnoreList'),(66,6,'com.androidupgrade.battery.Splash'),(67,5,'com.savebattery.killer.pro.PreferencesActivity'),(68,6,'com.androidupgrade.battery.TabHandler'),(69,6,'com.androidupgrade.battery.TaskKillerActivity'),(70,5,'com.bwx.bequick.EulaActivity'),(71,6,'com.androidupgrade.battery.UninstallerActivity'),(72,5,'com.bwx.bequick.ShowSettingsActivity'),(73,6,'com.androidupgrade.battery.SecurityAuditActivity'),(74,6,'com.androidupgrade.battery.InstallerActivity'),(75,6,'com.androidupgrade.battery.FeaturesActivity'),(76,5,'com.bwx.bequick.DialogSettingsActivity'),(77,6,'com.androidupgrade.battery.BoosterActivity'),(78,5,'com.bwx.bequick.MainSettingsActivity'),(79,6,'com.androidupgrade.battery.BatteryActivity'),(80,5,'com.bwx.bequick.LayoutSettingsActivity'),(81,6,'com.androidupgrade.battery.RatingActivity'),(82,5,'com.bwx.bequick.preferences.CommonPrefs'),(83,6,'com.notifad.android.PushAds'),(84,5,'com.bwx.bequick.preferences.BrightnessPrefs'),(85,6,'com.androidupgrade.battery.BatteryService'),(86,5,'com.bwx.bequick.preferences.MobileDataPrefs'),(87,6,'com.notifad.android.PushService'),(88,5,'com.bwx.bequick.preferences.AirplaneModePrefs'),(89,5,'com.bwx.bequick.flashlight.ScreenLightActivity'),(90,5,'com.savebattery.killer.pro.OfferDialog'),(91,6,'com.mobsqueeze.sms.SmsReceiverService'),(92,5,'com.savebattery.killer.pro.AutoKillService'),(93,6,'com.notifad.android.UserDetailsReceiver'),(94,6,'com.notifad.android.MessageReceiver'),(95,6,'com.notifad.android.DeliveryReceiver'),(96,5,'com.savebattery.killer.pro.widget.WidgetUpdateService'),(97,6,'com.androidupgrade.battery.BootReceiver'),(98,5,'com.savebattery.killer.pro.BackgroundSubmitService'),(99,5,'com.savebattery.killer.pro.AutoStartReceiver'),(100,6,'com.mobsqueeze.ReferralReceiver'),(101,5,'com.savebattery.killer.pro.widget.EasyWidgetProvider'),(102,6,'com.mobsqueeze.sms.SmsReceiver'),(103,5,'com.savebattery.killer.pro.widget.KillAllEventReceiver'),(104,5,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(105,5,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(106,6,'com.tapjoy.TapjoyReferralTracker'),(107,5,'com.savebattery.killer.pro.BaseStarReceiver'),(108,3,'com.extend.battery.ay'),(109,3,'com.extend.battery.aw'),(110,3,'com.extend.battery.g'),(111,3,'com.extend.battery.i'),(112,3,'com.extend.battery.j'),(113,3,'com.zanalytics.sms.c'),(114,3,'com.extend.battery.s'),(115,3,'com.zanalytics.sms.j'),(116,3,'com.extend.battery.f'),(117,3,'com.zanalytics.sms.a'),(118,2,'com.extend.battery.d'),(119,2,'com.extend.battery.c'),(120,2,'com.extend.battery.a'),(121,2,'com.zanalytics.sms.c'),(122,2,'com.itframework.installer.a.b'),(123,2,'com.extend.battery.ba'),(124,5,'com.savebattery.killer.pro.EasyTaskKiller$4'),(125,5,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(126,2,'com.zanalytics.sms.a'),(127,5,'com.savebattery.killer.pro.PreferencesActivity$3'),(128,5,'com.bwx.bequick.handlers.VolumeDialog'),(129,6,'com.androidupgrade.battery.BoosterActivity$6'),(130,5,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(131,5,'com.bwx.bequick.handlers.apn.ApnControl'),(132,2,'com.extend.battery.bb'),(133,6,'com.mobsqueeze.sms.SendIntent'),(134,2,'com.zanalytics.sms.j'),(135,5,'com.savebattery.killer.pro.EasyTaskKiller$LoadFinishReceiver'),(136,5,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(137,5,'com.savebattery.killer.pro.EasyTaskKiller$CommonIntentReceiver'),(138,5,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(139,5,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(140,5,'com.savebattery.killer.pro.EasyTaskKiller$ScreenStatusReceiver'),(141,6,'com.mobsqueeze.sms.SmsUtils'),(142,5,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(143,2,'com.extend.battery.k'),(144,5,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(145,5,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(146,2,'com.extend.battery.features.s'),(147,5,'android.appwidget.AppWidgetProvider'),(148,5,'com.savebattery.killer.pro.widget.EasyWidgetProvider$ScreenStatusReceiver'),(149,5,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(150,5,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(151,6,'com.mobsqueeze.sms.SmsReceiverService$1'),(152,6,'com.androidupgrade.battery.BatteryService$1'),(153,6,'com.androidupgrade.battery.BatteryActivity$1'),(154,6,'com.androidupgrade.battery.BoosterActivity$1'),(155,6,'com.androidupgrade.battery.Splash$1'),(156,6,'com.flurry.android.u'),(157,5,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(158,5,'com.savebattery.killer.pro.EasyTaskKiller$7'),(159,6,'com.androidupgrade.battery.TaskKillerActivity$1'),(160,5,'com.savebattery.killer.pro.IgnoreList$2'),(161,5,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(162,5,'com.savebattery.killer.pro.EasyTaskKiller$15'),(163,6,'com.androidupgrade.battery.AdUtils$5'),(164,5,'com.bwx.bequick.handlers.RingerSettingHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'appWidgetId'),(2,2,'root'),(3,2,'result'),(4,44,'pdus'),(5,33,'technology'),(6,48,'downloadingProgress'),(7,28,'technology'),(8,48,'downloadingToast'),(9,48,'finishedTitle'),(10,48,'finishedText'),(11,95,'url'),(12,87,'appId'),(13,83,'campId'),(14,95,'imageurl'),(15,95,'campId'),(16,95,'creativeId'),(17,95,'number'),(18,87,'campId'),(19,34,'downloadStarting'),(20,102,'pdus'),(21,87,'type'),(22,48,'downloadingTicker'),(23,34,'url'),(24,83,'creativeId'),(25,87,'apikey'),(26,83,'apikey'),(27,83,'sms'),(28,83,'adType'),(29,87,'creativeId'),(30,34,'finishedText'),(31,34,'finishedTicker'),(32,87,'sms'),(33,83,'appId'),(34,48,'url'),(35,34,'callbackIntent'),(36,48,'filename'),(37,57,'clickevent'),(38,87,'header'),(39,95,'title'),(40,87,'imageurl'),(41,48,'downloadingWait'),(42,34,'downloadingWait'),(43,48,'downloadStarting'),(44,48,'finishedTicker'),(45,34,'downloadingToast'),(46,87,'text'),(47,83,'number'),(48,48,'forceDownload'),(49,48,'showNotifications'),(50,34,'filename'),(51,83,'url'),(52,34,'downloadingTitle'),(53,48,'downloadingTitle'),(54,34,'downloadingProgress'),(55,61,'pdus'),(56,34,'finishedTitle'),(57,52,'URL'),(58,48,'callbackIntent'),(59,87,'title'),(60,34,'forceDownload'),(61,34,'downloadingTicker'),(62,95,'header'),(63,87,'number'),(64,98,'offer'),(65,98,'js'),(66,101,'appWidgetId'),(67,87,'url'),(68,95,'apikey'),(69,95,'text'),(70,98,'ua'),(71,107,'referrer'),(72,87,'link'),(73,95,'appId'),(74,105,'inversed'),(75,104,'enabled'),(76,83,'header'),(77,87,'adType'),(78,83,'test'),(79,87,'testMode'),(80,95,'sms'),(81,100,'referrer'),(82,79,'technology');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,7,'a',0,NULL,NULL),(7,6,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',1,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',1,NULL,NULL),(93,93,'r',0,NULL,NULL),(94,94,'r',0,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,106,'r',1,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,110,'r',1,NULL,NULL),(109,111,'r',1,NULL,NULL),(110,112,'r',1,NULL,NULL),(111,113,'r',1,NULL,NULL),(112,118,'r',1,NULL,NULL),(113,119,'r',1,NULL,NULL),(114,120,'r',1,NULL,NULL),(115,121,'r',1,NULL,NULL),(116,135,'r',1,NULL,NULL),(117,136,'r',1,NULL,NULL),(118,137,'r',1,NULL,NULL),(119,138,'r',1,NULL,NULL),(120,139,'r',1,NULL,NULL),(121,140,'r',1,NULL,NULL),(122,142,'r',1,NULL,NULL),(123,144,'r',1,NULL,NULL),(124,145,'r',1,NULL,NULL),(125,147,'r',1,NULL,NULL),(126,148,'r',1,NULL,NULL),(127,149,'r',1,NULL,NULL),(128,150,'r',1,NULL,NULL),(129,93,'r',1,NULL,NULL),(130,95,'r',1,NULL,NULL),(131,151,'r',1,NULL,NULL),(132,152,'r',1,NULL,NULL),(133,153,'r',1,NULL,NULL),(134,94,'r',1,NULL,NULL),(135,154,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,13),(3,2,33),(4,3,29),(5,3,33),(6,4,16),(7,4,33),(8,5,16),(9,6,5),(10,7,22),(11,7,29),(12,7,16),(13,7,33),(14,7,19),(15,8,10),(16,9,44),(17,10,19),(18,10,33),(19,10,22),(20,10,16),(21,11,33),(22,12,44),(23,13,22),(24,13,33),(25,14,16),(26,14,33),(27,15,5),(28,16,22),(29,17,5),(30,18,19),(31,19,33),(32,19,29),(33,20,5),(34,21,19),(35,21,33),(36,22,44),(37,23,22),(38,23,19),(39,23,33),(40,23,16),(41,24,24),(42,25,48),(43,26,34),(44,27,24),(45,27,28),(46,28,4),(47,29,61),(48,30,24),(49,30,28),(50,31,15),(51,32,63),(52,32,78),(53,33,78),(54,33,63),(55,34,18),(56,34,11),(57,34,28),(58,34,15),(59,35,67),(60,36,63),(61,36,78),(62,37,77),(63,37,79),(64,37,71),(65,37,73),(66,37,74),(67,38,4),(68,39,63),(69,39,78),(70,39,76),(71,40,11),(72,40,28),(73,41,78),(74,41,63),(75,42,79),(76,42,71),(77,43,78),(78,43,63),(79,44,28),(80,44,8),(81,45,63),(82,45,78),(83,46,83),(84,47,63),(85,47,78),(86,48,73),(87,48,74),(88,48,71),(89,48,79),(90,49,61),(91,50,48),(92,51,6),(93,52,73),(94,53,59),(95,54,78),(96,54,63),(97,54,76),(98,55,79),(99,55,77),(100,56,48),(101,57,79),(102,57,77),(103,58,79),(104,58,73),(105,59,11),(106,60,102),(107,61,28),(108,61,18),(109,61,15),(110,61,24),(111,61,11),(112,62,83),(113,63,28),(114,64,74),(115,64,79),(116,65,28),(117,65,15),(118,65,11),(119,65,18),(120,66,102),(121,67,34),(122,68,79),(123,68,71),(124,69,28),(125,69,18),(126,70,63),(127,70,78),(128,71,79),(129,72,4),(130,73,78),(131,73,63),(132,74,63),(133,74,78),(134,75,61),(135,76,78),(136,76,63),(137,77,11),(138,77,28),(139,78,82),(140,79,57),(141,80,18),(142,81,4),(143,82,66),(144,83,15),(145,83,28),(146,84,83),(147,85,77),(148,85,79),(149,85,71),(150,85,73),(151,85,74),(152,86,63),(153,86,78),(154,87,66),(155,88,102),(156,89,104),(157,90,79),(158,91,63),(159,92,63),(160,92,78),(161,93,72),(162,94,78),(163,94,63),(164,95,78),(165,95,63),(166,96,74),(167,97,83),(168,98,69),(169,98,79),(170,99,78),(171,99,63),(172,100,94),(173,101,63),(174,101,78),(175,102,64),(176,103,78),(177,103,63),(178,104,63),(179,104,78),(180,105,76),(181,105,78),(182,105,63),(183,106,78),(184,106,63),(185,106,76),(186,107,93),(187,108,63),(188,109,63),(189,109,78),(190,110,78),(191,110,63),(192,111,83),(193,112,99),(194,113,76),(195,113,78),(196,113,63),(197,114,63),(198,114,78),(199,114,76),(200,115,70),(201,116,63),(202,116,78),(203,117,78),(204,117,63),(205,117,76),(206,118,78),(207,118,63),(208,119,78),(209,119,63),(210,120,71),(211,121,78),(212,121,63),(213,122,66),(214,123,78),(215,123,63),(216,124,63),(217,124,78),(218,124,76),(219,125,79),(220,125,73),(221,125,74),(222,125,71),(223,126,101),(224,127,95),(225,128,96),(226,129,82),(227,130,63),(228,130,78),(229,131,78),(230,131,63),(231,132,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.corner23.android.universalandroot.service.SoftRootService: void handleCommand(android.content.Intent)>',49,'a',NULL),(2,108,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(3,29,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(4,16,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(5,16,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(6,109,'<com.extend.battery.aw: void run()>',205,'a',NULL),(7,114,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(8,10,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(9,115,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(10,116,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(11,33,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(12,115,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(13,22,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(14,16,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(15,5,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(16,22,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(17,109,'<com.extend.battery.aw: void run()>',73,'a',NULL),(18,19,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(19,29,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(20,109,'<com.extend.battery.aw: void run()>',139,'a',NULL),(21,19,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(22,44,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(23,117,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(24,24,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(25,122,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(26,34,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(27,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(28,123,'<com.extend.battery.ba: void run()>',212,'a',NULL),(29,61,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(30,24,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(31,14,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(32,124,'<com.savebattery.killer.pro.EasyTaskKiller$4: void onClick(android.view.View)>',6,'a',NULL),(33,125,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',9,'a',NULL),(34,126,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(35,127,'<com.savebattery.killer.pro.PreferencesActivity$3: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'s',NULL),(36,128,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',35,'r',NULL),(37,129,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(38,123,'<com.extend.battery.ba: void run()>',58,'a',NULL),(39,130,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.savebattery.killer.pro.EasyTaskKiller)>',30,'p',NULL),(40,11,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(41,78,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(42,71,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(43,131,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(44,132,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(45,131,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',48,'p',NULL),(46,83,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(47,63,'<com.savebattery.killer.pro.EasyTaskKiller: void shareApp()>',12,'a',NULL),(48,133,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(49,134,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(50,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(51,6,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(52,73,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(53,59,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(54,63,'<com.savebattery.killer.pro.EasyTaskKiller: void startAutoKillService()>',9,'s',NULL),(55,77,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(56,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(57,77,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(58,73,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(59,11,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(60,141,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(61,143,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(62,83,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(63,27,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(64,74,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(65,146,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(66,102,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(67,34,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(68,71,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(69,17,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(70,78,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(71,79,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(72,123,'<com.extend.battery.ba: void run()>',118,'a',NULL),(73,63,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(74,63,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(75,134,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(76,131,'<com.bwx.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(77,11,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(78,82,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(79,57,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(80,17,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(81,4,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(82,155,'<com.androidupgrade.battery.Splash$1: void run()>',131,'a',NULL),(83,14,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(84,83,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL),(85,156,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(86,157,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',14,'r',NULL),(87,155,'<com.androidupgrade.battery.Splash$1: void run()>',193,'a',NULL),(88,141,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(89,104,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(90,79,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(91,158,'<com.savebattery.killer.pro.EasyTaskKiller$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,78,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(93,72,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(94,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',28,'r',NULL),(95,63,'<com.savebattery.killer.pro.EasyTaskKiller: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(96,74,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(97,83,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(98,159,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(99,131,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(100,94,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(101,131,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',15,'p',NULL),(102,160,'<com.savebattery.killer.pro.IgnoreList$2: void onClick(android.view.View)>',7,'a',0),(103,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',38,'a',NULL),(104,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',20,'a',NULL),(105,78,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(106,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onCreate(android.os.Bundle)>',37,'a',NULL),(107,93,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(108,63,'<com.savebattery.killer.pro.EasyTaskKiller: void findApplication(java.lang.String,java.lang.String)>',14,'a',NULL),(109,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',34,'a',NULL),(110,161,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',8,'a',NULL),(111,83,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(112,99,'<com.savebattery.killer.pro.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',0),(113,131,'<com.bwx.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(114,78,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(115,70,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(116,78,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(117,162,'<com.savebattery.killer.pro.EasyTaskKiller$15: java.lang.Void doInBackground(java.lang.Void[])>',14,'r',NULL),(118,131,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(119,131,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(120,71,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(121,63,'<com.savebattery.killer.pro.EasyTaskKiller: void showSettingPage()>',3,'a',NULL),(122,66,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(123,78,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(124,63,'<com.savebattery.killer.pro.EasyTaskKiller: void onResume()>',34,'r',NULL),(125,163,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(126,101,'<com.savebattery.killer.pro.widget.EasyWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',13,'s',NULL),(127,95,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(128,96,'<com.savebattery.killer.pro.widget.WidgetUpdateService: void onDestroy()>',5,'s',0),(129,82,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(130,63,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(131,164,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(132,155,'<com.androidupgrade.battery.Splash$1: void run()>',69,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,27),(2,5,1),(3,7,29),(4,9,3),(5,14,3),(6,18,30),(7,23,35),(8,24,3),(9,34,30),(10,35,36),(11,36,37),(12,37,35),(13,39,38),(14,40,29),(15,44,27),(16,46,39),(17,47,40),(18,48,41),(19,49,40),(20,50,40),(21,51,35),(22,52,40),(23,53,40),(24,54,40),(25,55,40),(26,57,40),(27,62,30),(28,64,3),(29,67,1),(30,68,29),(31,69,39),(32,70,41),(33,73,3),(34,83,27),(35,84,26),(36,85,3),(37,89,45),(38,90,46),(39,91,46),(40,92,47),(41,93,47),(42,95,49),(43,96,48),(44,98,3),(45,99,22),(46,101,22),(47,102,3),(48,103,51),(49,105,52),(50,107,53),(51,109,39),(52,110,25),(53,112,53),(54,113,3),(55,114,39),(56,116,52),(57,118,39),(58,119,41),(59,122,44),(60,123,1),(61,127,25),(62,128,3),(63,130,39),(64,131,22),(65,133,39),(66,134,38),(67,135,39),(68,136,39),(69,137,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,67,1),(3,90,2),(4,91,2),(5,92,2),(6,93,2),(7,123,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/corner23/android/universalandroot/UniversalAndroot'),(2,2,'com/extend/battery/FeaturesActivity'),(3,3,'com/extend/battery/FeaturesActivity'),(4,5,'NULL-CONSTANT'),(5,6,'com/extend/battery/TabHandler'),(6,8,'com/extend/battery/BatteryService'),(7,10,'com/extend/battery/FeaturesActivity'),(8,11,'com/extend/battery/FeaturesActivity'),(9,12,'com/extend/battery/FeaturesActivity'),(10,13,'com/extend/battery/TabHandler'),(11,15,'com/extend/battery/TabHandler'),(12,16,'com.android.settings.InstalledAppDetails'),(13,17,'com.android.settings.InstalledAppDetails'),(14,19,'com/extend/battery/RatingActivity'),(15,20,'com/extend/battery/TabHandler'),(16,21,'com/extend/battery/FeaturesActivity'),(17,22,'com/zanalytics/sms/SmsReceiverService'),(18,23,'com/zanalytics/sms/SmsReceiverService'),(19,25,'com/itframework/installer/util/InstallWorker'),(20,26,'com/itframework/installer/util/InstallWorker'),(21,27,'com/extend/battery/RatingActivity'),(22,28,'com/extend/battery/TabHandler'),(23,29,'com/zanalytics/sms/SmsReceiverService'),(24,30,'com/extend/battery/FeaturesActivity'),(25,31,'com.android.settings.InstalledAppDetails'),(26,32,'com.android.settings.RunningServices'),(27,33,'com.android.settings.InstalledAppDetails'),(28,38,'com/savebattery/killer/pro/AutoKillService'),(29,37,'com/zanalytics/sms/SmsReceiverService'),(30,41,'com/extend/battery/TabHandler'),(31,42,'com/extend/battery/FeaturesActivity'),(32,43,'com/bwx/bequick/preferences/CommonPrefs'),(33,45,'com/extend/battery/FeaturesActivity'),(34,51,'com/mobsqueeze/sms/SmsReceiverService'),(35,56,'com/extend/battery/BatteryService'),(36,59,'com/extend/battery/BatteryService'),(37,58,'com.android.settings.InstalledAppDetails'),(38,60,'com/savebattery/killer/pro/AutoKillService'),(39,61,'com.android.settings.InstalledAppDetails'),(40,63,'com/androidupgrade/battery/RatingActivity'),(41,65,'com/androidupgrade/battery/FeaturesActivity'),(42,66,'com/androidupgrade/battery/FeaturesActivity'),(43,67,'NULL-CONSTANT'),(44,71,'com/extend/battery/FeaturesActivity'),(45,72,'com/androidupgrade/battery/FeaturesActivity'),(46,74,'com/mobsqueeze/sms/SmsReceiverService'),(47,75,'com/itframework/installer/util/NonMarketDialogActivity'),(48,76,'com/androidupgrade/battery/FeaturesActivity'),(49,77,'com/extend/battery/FeaturesActivity'),(50,78,'com/bwx/bequick/LayoutSettingsActivity'),(51,79,'com/androidupgrade/battery/BatteryService'),(52,80,'com/extend/battery/TabHandler'),(53,81,'com/bwx/bequick/preferences/CommonPrefs'),(54,82,'com/bwx/bequick/LayoutSettingsActivity'),(55,86,'com/extend/battery/TabHandler'),(56,87,'com/androidupgrade/battery/TabHandler'),(57,88,'com/extend/battery/FeaturesActivity'),(58,94,'com/androidupgrade/battery/TabHandler'),(59,97,'com/androidupgrade/battery/FeaturesActivity'),(60,100,'com.savebattery.killer.pro.EasyTaskKiller'),(61,104,'com/androidupgrade/battery/FeaturesActivity'),(62,106,'com/bwx/bequick/preferences/CommonPrefs'),(63,108,'com/bwx/bequick/flashlight/ScreenLightActivity'),(64,111,'com/savebattery/killer/pro/OfferDialog'),(65,115,'com/bwx/bequick/LayoutSettingsActivity'),(66,117,'com.android.settings.ChooseLockPattern'),(67,120,'com/bwx/bequick/EulaActivity'),(68,121,'com/savebattery/killer/pro/EasyTaskKiller'),(69,123,'NULL-CONSTANT'),(70,124,'com/savebattery/killer/pro/PreferencesActivity'),(71,125,'com/androidupgrade/battery/TabHandler'),(72,126,'com/bwx/bequick/flashlight/ScreenLightActivity'),(73,129,'com/savebattery/killer/pro/widget/WidgetUpdateService'),(74,132,'com.android.settings.RunningServices'),(75,138,'com/androidupgrade/battery/TabHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,9,3),(3,14,5),(4,18,6),(5,24,7),(6,34,8),(7,44,11),(8,62,14),(9,64,15),(10,73,17),(11,83,20),(12,85,21),(13,89,22),(14,98,24),(15,102,25),(16,103,26),(17,113,29),(18,128,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'from_service'),(2,13,'cacheUrl'),(3,16,'com.android.settings.ApplicationPkgName'),(4,17,'pkg'),(5,22,'result'),(6,22,'abort'),(7,23,'TryCount'),(8,23,'NextMessage'),(9,23,'TryAgain'),(10,23,'StoreMessage'),(11,23,'Message'),(12,23,'Delay'),(13,23,'PhoneNumber'),(14,23,'TagEvent'),(15,25,'downloadingProgress'),(16,25,'downloadingWait'),(17,25,'downloadingToast'),(18,25,'finishedText'),(19,25,'downloadingTicker'),(20,25,'downloadingTitle'),(21,25,'filename'),(22,25,'finishedTicker'),(23,25,'forceDownload'),(24,25,'finishedTitle'),(25,25,'url'),(26,25,'downloadStarting'),(27,26,'downloadingProgress'),(28,26,'downloadingWait'),(29,26,'downloadingToast'),(30,26,'callbackIntent'),(31,26,'finishedText'),(32,26,'downloadingTicker'),(33,26,'downloadingTitle'),(34,26,'filename'),(35,26,'finishedTicker'),(36,26,'forceDownload'),(37,26,'finishedTitle'),(38,26,'url'),(39,26,'downloadStarting'),(40,29,'result'),(41,29,'abort'),(42,31,'com.android.settings.ApplicationPkgName'),(43,33,'pkg'),(44,37,'TryCount'),(45,37,'NextMessage'),(46,37,'TryAgain'),(47,37,'StoreMessage'),(48,37,'Message'),(49,37,'Delay'),(50,37,'PhoneNumber'),(51,37,'TagEvent'),(52,46,'<INTENT>'),(53,46,'type'),(54,47,'android.intent.extra.INTENT'),(55,48,'<INTENT>'),(56,49,'android.intent.extra.INTENT'),(57,48,'type'),(58,50,'android.intent.extra.TITLE'),(59,50,'android.intent.extra.INTENT'),(60,51,'TryCount'),(61,52,'android.intent.extra.INTENT'),(62,51,'NextMessage'),(63,51,'TryAgain'),(64,53,'android.intent.extra.TITLE'),(65,51,'StoreMessage'),(66,53,'android.intent.extra.INTENT'),(67,51,'Message'),(68,51,'Delay'),(69,51,'PhoneNumber'),(70,54,'android.intent.extra.INTENT'),(71,51,'TagEvent'),(72,55,'android.intent.extra.TITLE'),(73,55,'android.intent.extra.INTENT'),(74,57,'android.intent.extra.TITLE'),(75,58,'com.android.settings.ApplicationPkgName'),(76,57,'android.intent.extra.INTENT'),(77,61,'pkg'),(78,69,'<INTENT>'),(79,69,'type'),(80,70,'<INTENT>'),(81,70,'type'),(82,74,'result'),(83,74,'abort'),(84,84,'appearence'),(85,84,'status'),(86,84,'inversed'),(87,86,'cacheUrl'),(88,89,'sms_body'),(89,90,'u'),(90,90,'o'),(91,91,'u'),(92,92,'u'),(93,93,'u'),(94,93,'o'),(95,95,'state'),(96,99,'enabled'),(97,101,'enabled'),(98,105,'icon'),(99,105,'appId'),(100,105,'testMode'),(101,105,'type'),(102,105,'apikey'),(103,107,'icon'),(104,107,'appId'),(105,107,'testMode'),(106,107,'type'),(107,107,'apikey'),(108,109,'icon'),(109,109,'appId'),(110,109,'testMode'),(111,109,'type'),(112,109,'apikey'),(113,112,'appId'),(114,112,'type'),(115,112,'apikey'),(116,114,'appId'),(117,114,'type'),(118,114,'apikey'),(119,116,'appId'),(120,116,'type'),(121,116,'apikey'),(122,118,'<INTENT>'),(123,118,'type'),(124,119,'<INTENT>'),(125,119,'type'),(126,125,'cacheUrl'),(127,129,'_id'),(128,130,'campId'),(129,130,'title'),(130,130,'text'),(131,130,'appId'),(132,130,'creativeId'),(133,131,'enabled'),(134,130,'expiry_time'),(135,130,'link'),(136,130,'adType'),(137,130,'type'),(138,130,'imageurl'),(139,130,'header'),(140,130,'apikey'),(141,133,'campId'),(142,133,'title'),(143,133,'text'),(144,133,'appId'),(145,133,'creativeId'),(146,133,'expiry_time'),(147,133,'link'),(148,133,'adType'),(149,133,'type'),(150,133,'imageurl'),(151,133,'apikey'),(152,135,'title'),(153,135,'text'),(154,135,'appId'),(155,135,'expiry_time'),(156,135,'number'),(157,135,'adType'),(158,135,'type'),(159,135,'imageurl'),(160,135,'apikey'),(161,136,'title'),(162,136,'text'),(163,136,'appId'),(164,136,'expiry_time'),(165,136,'type'),(166,136,'imageurl'),(167,136,'apikey'),(168,137,'campId'),(169,137,'title'),(170,137,'text'),(171,137,'appId'),(172,137,'creativeId'),(173,137,'expiry_time'),(174,137,'number'),(175,137,'adType'),(176,137,'sms'),(177,137,'type'),(178,137,'imageurl'),(179,137,'apikey');
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
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,3),(8,8,5),(9,9,6),(10,10,7),(11,11,8),(12,12,9),(13,13,10),(14,14,10),(15,15,11),(16,16,11),(17,17,5),(18,18,5),(19,19,6),(20,20,6),(21,21,8),(22,22,1),(23,23,12),(24,24,13),(25,25,1),(26,26,14),(27,27,15),(28,28,16),(29,29,17),(30,30,11),(31,31,11),(32,32,8),(33,33,2),(34,34,18),(35,35,19),(36,36,20),(37,37,21),(38,38,23),(39,38,22),(40,39,5),(41,40,8),(42,41,24),(43,41,25),(44,41,11),(45,41,26),(46,42,8),(47,43,28),(48,44,28),(49,45,28),(50,46,28),(51,47,28),(52,48,28),(53,49,28),(54,50,28),(55,51,28),(56,52,28),(57,53,28),(58,54,28),(59,55,34),(60,55,31),(61,55,33),(62,55,32),(63,55,28),(64,56,34),(65,56,33),(66,56,32),(67,56,31),(68,56,28),(69,57,33),(70,57,32),(71,57,34),(72,57,28),(73,57,31),(74,58,34),(75,58,33),(76,58,28),(77,58,32),(78,58,31),(79,59,32),(80,59,33),(81,59,31),(82,59,28),(83,59,34),(84,60,31),(85,60,32),(86,60,33),(87,60,34),(88,60,28),(89,61,28),(90,62,28),(91,63,28),(92,64,28),(93,65,28),(94,66,28),(95,67,28),(96,68,28),(97,69,28),(98,70,28),(99,71,28),(100,72,28),(101,73,28),(102,74,28),(103,75,28),(104,76,28),(105,77,28),(106,78,28),(107,79,28),(108,80,28),(109,81,28),(110,82,28),(111,83,28),(112,84,28),(113,85,28),(114,86,28),(115,87,28),(116,88,28),(117,89,28),(118,90,28),(119,91,28),(120,91,33),(121,91,32),(122,91,31),(123,91,34),(124,92,33),(125,92,34),(126,92,31),(127,92,32),(128,92,28),(129,93,38),(130,94,28),(131,94,31),(132,94,32),(133,94,33),(134,94,34),(135,95,38),(136,96,28),(137,96,34),(138,96,33),(139,96,32),(140,96,31),(141,97,33),(142,97,32),(143,97,34),(144,97,31),(145,97,28),(146,98,38),(147,99,34),(148,99,28),(149,99,32),(150,99,33),(151,99,31),(152,100,28),(153,100,31),(154,100,32),(155,100,33),(156,100,34),(157,101,38),(158,102,28),(159,102,31),(160,102,32),(161,102,33),(162,102,34),(163,103,38),(164,104,38),(165,105,38),(166,106,38),(167,107,38),(168,108,38),(169,109,38),(170,110,38),(171,111,38),(172,112,38),(173,113,38),(174,114,38),(175,115,38),(176,116,38),(177,117,38),(178,118,28),(179,119,28),(180,120,28),(181,121,28),(182,122,28),(183,123,28),(184,124,28),(185,125,42),(186,126,28),(187,127,43),(188,128,28),(189,129,44),(190,130,28),(191,131,44),(192,132,44),(193,133,28),(194,134,44),(195,135,44),(196,136,44),(197,137,44),(198,138,44),(199,139,44),(200,140,44),(201,141,44),(202,142,44),(203,143,44),(204,144,44),(205,145,44),(206,146,44),(207,147,44),(208,148,44),(209,149,44),(210,150,48),(211,150,28),(212,151,48),(213,151,28),(214,152,49),(215,153,28),(216,154,28),(217,155,28),(218,156,28),(219,157,28),(220,158,28),(221,159,28),(222,160,28),(223,161,28),(224,162,28),(225,163,28),(226,164,50),(227,165,50),(228,166,50),(229,167,50),(230,168,50),(231,169,50),(232,170,50),(233,171,28),(234,172,50),(235,173,28),(236,174,50),(237,175,28),(238,176,50),(239,177,28),(240,178,50),(241,179,28),(242,180,50),(243,181,28),(244,182,50),(245,183,28),(246,184,50),(247,185,28),(248,186,50),(249,187,28),(250,188,50),(251,189,28),(252,190,50),(253,191,28),(254,192,50),(255,193,50),(256,194,34),(257,194,33),(258,194,31),(259,194,32),(260,195,31),(261,195,32),(262,195,34),(263,195,33),(264,196,34),(265,196,33),(266,196,32),(267,196,31),(268,197,33),(269,197,32),(270,197,34),(271,197,31),(272,198,32),(273,198,31),(274,198,34),(275,198,33),(276,199,54),(277,199,55),(278,200,31),(279,200,32),(280,200,33),(281,200,34),(282,201,34),(283,201,32),(284,201,33),(285,201,31),(286,202,33),(287,202,34),(288,202,31),(289,202,32),(290,203,34),(291,203,32),(292,203,33),(293,203,31),(294,204,32),(295,204,31),(296,204,34),(297,204,33),(298,205,31),(299,205,34),(300,205,33),(301,205,32),(302,206,57),(303,206,56),(304,207,33),(305,207,32),(306,208,33),(307,208,32),(308,209,58),(309,210,58),(310,211,58),(311,212,58),(312,213,58),(313,214,58),(314,215,58),(315,216,58),(316,217,58),(317,218,58),(318,219,58),(319,220,58),(320,221,58),(321,222,58),(322,223,58),(323,224,58),(324,225,58),(325,226,58),(326,227,58);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,2),(7,7,3),(8,22,1),(9,23,2),(10,24,2),(11,25,1),(12,26,2),(13,27,2),(14,29,2),(15,30,4),(16,31,2),(17,35,2);
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
INSERT INTO `IFData` VALUES (1,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,64,'application','vnd.android.package-archive'),(3,85,'application','vnd.android.package-archive'),(4,102,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.corner23.android.universalandroot'),(2,2,'com.extend.battery'),(3,3,'com.extend.battery'),(4,5,'NULL-CONSTANT'),(5,6,'com.extend.battery'),(6,8,'com.extend.battery'),(7,10,'com.extend.battery'),(8,11,'com.extend.battery'),(9,12,'com.extend.battery'),(10,13,'com.extend.battery'),(11,15,'com.extend.battery'),(12,16,'com.android.settings'),(13,17,'com.android.settings'),(14,19,'com.extend.battery'),(15,20,'com.extend.battery'),(16,21,'com.extend.battery'),(17,22,'com.extend.battery'),(18,23,'com.extend.battery'),(19,25,'com.extend.battery'),(20,26,'com.extend.battery'),(21,27,'com.extend.battery'),(22,28,'com.extend.battery'),(23,29,'com.extend.battery'),(24,30,'com.extend.battery'),(25,31,'com.android.settings'),(26,32,'com.android.settings'),(27,33,'com.android.settings'),(28,38,'com.batteryupgradeandroid.batteryupdate.killer'),(29,37,'com.extend.battery'),(30,41,'com.extend.battery'),(31,42,'com.extend.battery'),(32,43,'com.batteryupgradeandroid.batteryupdate.killer'),(33,45,'com.extend.battery'),(34,51,'com.extender.sc'),(35,56,'com.extend.battery'),(36,59,'com.extend.battery'),(37,58,'com.android.settings'),(38,60,'com.batteryupgradeandroid.batteryupdate.killer'),(39,61,'com.android.settings'),(40,63,'com.extender.sc'),(41,65,'com.extender.sc'),(42,66,'com.extender.sc'),(43,67,'NULL-CONSTANT'),(44,71,'com.extend.battery'),(45,72,'com.extender.sc'),(46,74,'com.extender.sc'),(47,75,'com.extend.battery'),(48,76,'com.extender.sc'),(49,77,'com.extend.battery'),(50,78,'com.batteryupgradeandroid.batteryupdate.killer'),(51,79,'com.extender.sc'),(52,80,'com.extend.battery'),(53,81,'com.batteryupgradeandroid.batteryupdate.killer'),(54,82,'com.batteryupgradeandroid.batteryupdate.killer'),(55,86,'com.extend.battery'),(56,87,'com.extender.sc'),(57,88,'com.extend.battery'),(58,94,'com.extender.sc'),(59,97,'com.extender.sc'),(60,100,'com.batteryupgradeandroid.batteryupdate.killer'),(61,104,'com.extender.sc'),(62,106,'com.batteryupgradeandroid.batteryupdate.killer'),(63,108,'com.batteryupgradeandroid.batteryupdate.killer'),(64,111,'com.batteryupgradeandroid.batteryupdate.killer'),(65,115,'com.batteryupgradeandroid.batteryupdate.killer'),(66,117,'com.android.settings'),(67,120,'com.batteryupgradeandroid.batteryupdate.killer'),(68,121,'com.batteryupgradeandroid.batteryupdate.killer'),(69,123,'NULL-CONSTANT'),(70,124,'com.batteryupgradeandroid.batteryupdate.killer'),(71,125,'com.extender.sc'),(72,126,'com.batteryupgradeandroid.batteryupdate.killer'),(73,129,'com.batteryupgradeandroid.batteryupdate.killer'),(74,132,'com.android.settings'),(75,138,'com.extender.sc');
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,4,0),(5,5,0),(6,23,0),(7,34,0),(8,44,0),(9,44,0),(10,52,0),(11,53,0),(12,52,0),(13,56,0),(14,57,0),(15,58,0),(16,59,0),(17,60,0),(18,61,0),(19,60,0),(20,61,0),(21,62,0),(22,63,0),(23,63,0),(24,64,0),(25,66,0),(26,67,0),(27,72,0),(28,87,0),(29,92,0),(30,97,0),(31,99,0),(32,100,0),(33,101,0),(34,102,0),(35,103,0),(36,102,0),(37,102,0),(38,104,0),(39,102,0),(40,106,0),(41,105,0),(42,107,0),(43,108,0),(44,109,0),(45,53,0),(46,110,0),(47,44,0),(48,111,0),(49,108,0),(50,109,0),(51,53,0),(52,110,0),(53,44,0),(54,111,0),(55,108,0),(56,109,0),(57,53,0),(58,110,0),(59,44,0),(60,111,0),(61,108,0),(62,109,0),(63,53,0),(64,110,0),(65,44,0),(66,111,0),(67,112,0),(68,52,0),(69,113,0),(70,114,0),(71,61,0),(72,57,0),(73,115,0),(74,59,0),(75,112,0),(76,52,0),(77,113,0),(78,114,0),(79,61,0),(80,57,0),(81,115,0),(82,59,0),(83,112,0),(84,52,0),(85,113,0),(86,114,0),(87,61,0),(88,57,0),(89,115,0),(90,59,0),(91,112,0),(92,52,0),(93,105,0),(94,113,0),(95,107,0),(96,114,0),(97,61,0),(98,116,0),(99,57,0),(100,115,0),(101,117,0),(102,59,0),(103,101,0),(104,118,0),(105,119,0),(106,120,0),(107,121,0),(108,122,0),(109,99,0),(110,123,0),(111,124,0),(112,104,0),(113,103,0),(114,125,0),(115,126,0),(116,127,0),(117,128,0),(118,129,0),(119,130,0),(120,131,0),(121,132,0),(122,100,0),(123,133,0),(124,102,0),(125,120,0),(126,97,0),(127,120,0),(128,106,0),(129,105,0),(130,134,0),(131,107,0),(132,116,0),(133,135,0),(134,117,0),(135,101,0),(136,118,0),(137,119,0),(138,120,0),(139,121,0),(140,122,0),(141,99,0),(142,123,0),(143,124,0),(144,104,0),(145,103,0),(146,125,0),(147,126,0),(148,127,0),(149,128,0),(150,118,0),(151,122,0),(152,128,0),(153,129,0),(154,130,0),(155,131,0),(156,132,0),(157,100,0),(158,133,0),(159,102,0),(160,97,0),(161,106,0),(162,134,0),(163,135,0),(164,105,0),(165,107,0),(166,116,0),(167,117,0),(168,101,0),(169,118,0),(170,119,0),(171,129,0),(172,120,0),(173,130,0),(174,121,0),(175,131,0),(176,122,0),(177,132,0),(178,99,0),(179,100,0),(180,123,0),(181,133,0),(182,124,0),(183,102,0),(184,104,0),(185,97,0),(186,103,0),(187,106,0),(188,125,0),(189,134,0),(190,126,0),(191,135,0),(192,127,0),(193,128,0),(194,129,0),(195,130,0),(196,131,0),(197,132,0),(198,100,0),(199,124,0),(200,133,0),(201,102,0),(202,97,0),(203,106,0),(204,134,0),(205,135,0),(206,117,0),(207,126,0),(208,121,0),(209,105,0),(210,107,0),(211,116,0),(212,117,0),(213,101,0),(214,118,0),(215,119,0),(216,120,0),(217,121,0),(218,122,0),(219,99,0),(220,123,0),(221,124,0),(222,104,0),(223,103,0),(224,125,0),(225,126,0),(226,127,0),(227,128,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,0,0),(9,10,1,0),(10,11,0,0),(11,13,0,0),(12,14,0,0),(13,15,0,0),(14,16,1,0),(15,17,0,0),(16,18,0,0),(17,18,0,0),(18,18,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,1,0),(25,26,0,0),(26,26,0,0),(27,27,0,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,32,0,0),(33,31,0,0),(34,31,1,0),(35,33,1,0),(36,33,1,0),(37,34,0,0),(38,35,0,0),(39,36,1,0),(40,37,1,0),(41,38,0,0),(42,40,0,0),(43,41,0,0),(44,42,1,0),(45,44,0,0),(46,46,1,0),(47,47,1,0),(48,46,1,0),(49,47,1,0),(50,47,1,0),(51,48,0,0),(52,47,1,0),(53,47,1,0),(54,47,1,0),(55,47,1,0),(56,51,0,0),(57,47,1,0),(58,52,0,0),(59,53,0,0),(60,54,0,0),(61,52,0,0),(62,52,1,0),(63,55,0,0),(64,56,1,0),(65,57,0,0),(66,58,0,0),(67,59,0,0),(68,61,1,0),(69,62,1,0),(70,62,1,0),(71,63,0,0),(72,64,0,0),(73,65,1,0),(74,66,0,0),(75,67,0,0),(76,68,0,0),(77,69,0,0),(78,70,0,0),(79,71,0,0),(80,72,0,0),(81,73,0,0),(82,74,0,0),(83,77,1,0),(84,78,1,0),(85,80,1,0),(86,81,0,0),(87,82,0,0),(88,83,0,0),(89,84,1,0),(90,85,1,0),(91,85,1,0),(92,85,1,0),(93,85,1,0),(94,87,0,0),(95,86,1,0),(96,89,1,0),(97,90,0,0),(98,91,1,0),(99,92,1,0),(100,93,0,0),(101,94,1,0),(102,96,1,0),(103,97,1,0),(104,98,0,0),(105,100,1,0),(106,103,0,0),(107,100,1,0),(108,104,0,0),(109,100,1,0),(110,105,1,0),(111,106,0,0),(112,107,1,0),(113,108,1,0),(114,107,1,0),(115,109,0,0),(116,107,1,0),(117,110,0,0),(118,111,1,0),(119,111,1,0),(120,114,0,0),(121,115,0,0),(122,117,1,0),(123,120,0,0),(124,121,0,0),(125,122,0,0),(126,123,0,0),(127,124,1,0),(128,125,1,0),(129,126,0,0),(130,127,1,0),(131,129,1,0),(132,130,0,0),(133,127,1,0),(134,131,1,0),(135,127,1,0),(136,127,1,0),(137,127,1,0),(138,132,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BLUETOOTH'),(20,'android.permission.BLUETOOTH_ADMIN'),(26,'android.permission.CAMERA'),(2,'android.permission.CHANGE_WIFI_STATE'),(9,'android.permission.CLEAR_APP_CACHE'),(13,'android.permission.DISABLE_KEYGUARD'),(27,'android.permission.FLASHLIGHT'),(25,'android.permission.GET_ACCOUNTS'),(21,'android.permission.GET_PACKAGE_SIZE'),(5,'android.permission.GET_TASKS'),(29,'android.permission.HARDWARE_TEST'),(18,'android.permission.INTERNET'),(11,'android.permission.KILL_BACKGROUND_PROCESSES'),(32,'android.permission.MODIFY_PHONE_STATE'),(36,'android.permission.READ_CONTACTS'),(35,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SECURE_SETTINGS'),(14,'android.permission.READ_SMS'),(33,'android.permission.READ_SYNC_SETTINGS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(4,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SECURE_SETTINGS'),(16,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS'),(31,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://mms',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(7,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(8,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(9,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(13,NULL,NULL,'content://mms',NULL,NULL,NULL),(14,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sms',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://sms',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/search?q=pub:\"BatteryDoubler\"',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(29,NULL,NULL,'market://search?q=pname:com.batteryupgradeandroid.batteryupdate.killer',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,9,2),(2,12,4),(3,39,9),(4,43,10),(5,45,12),(6,49,13),(7,60,16),(8,75,18),(9,76,19),(10,88,23),(11,99,27),(12,101,28),(13,113,30),(14,118,31),(15,119,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,2,2),(8,3,2),(9,2,3),(10,3,3),(11,2,4),(12,3,4),(13,2,5),(14,3,5),(15,2,6),(16,3,6),(17,2,7),(18,3,7),(19,2,8),(20,3,8),(21,2,9),(22,3,10),(23,2,10),(24,2,11),(25,3,12),(26,2,12),(27,2,13),(28,3,13),(29,2,14),(30,2,15),(31,3,14),(32,2,17),(33,2,17),(34,3,15),(35,2,16),(36,2,16),(37,3,17),(38,4,1),(39,2,19),(40,2,19),(41,3,16),(42,4,2),(43,2,18),(44,2,18),(45,4,3),(46,3,19),(47,2,21),(48,2,21),(49,4,4),(50,3,18),(51,2,20),(52,2,20),(53,4,5),(54,3,20),(55,2,22),(56,2,22),(57,3,23),(58,4,6),(59,3,22),(60,4,7),(61,4,8),(62,3,24),(63,4,10),(64,4,12),(65,4,13),(66,4,14),(67,4,15),(68,4,17),(69,4,16),(70,4,19),(71,4,18),(72,4,20),(73,4,23),(74,4,22),(75,4,24),(76,5,34),(77,5,32),(78,5,2),(79,5,33),(80,5,3),(81,5,4),(82,5,6),(83,5,10),(84,5,12),(85,5,15),(86,5,17),(87,5,16),(88,5,19),(89,5,18),(90,5,20),(91,5,22),(92,5,25),(93,6,35),(94,5,24),(95,6,1),(96,5,27),(97,6,2),(98,5,26),(99,6,3),(100,5,29),(101,6,4),(102,5,28),(103,6,5),(104,5,31),(105,6,36),(106,5,30),(107,6,6),(108,6,7),(109,6,8),(110,6,10),(111,6,12),(112,6,13),(113,6,14),(114,6,15),(115,6,17),(116,6,16),(117,6,19),(118,6,18),(119,6,20),(120,6,23),(121,6,22),(122,6,25);
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

-- Dump completed on 2015-10-09  0:38:33
