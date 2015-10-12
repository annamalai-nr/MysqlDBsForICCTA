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
) ENGINE=InnoDB AUTO_INCREMENT=2833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,86,7,2,NULL),(2,86,6,2,NULL),(3,86,10,2,NULL),(4,86,32,2,NULL),(5,83,4,2,NULL),(6,34,4,2,NULL),(7,4,4,2,NULL),(8,18,4,2,NULL),(9,47,4,2,NULL),(10,49,4,2,NULL),(11,50,4,2,NULL),(12,52,4,2,NULL),(13,53,4,2,NULL),(14,54,4,2,NULL),(15,55,4,2,NULL),(16,57,4,2,NULL),(17,101,4,2,NULL),(18,127,4,2,NULL),(19,99,4,2,NULL),(20,110,4,2,NULL),(21,84,4,2,NULL),(22,131,4,2,NULL),(23,96,4,2,NULL),(24,44,4,2,NULL),(25,62,4,2,NULL),(26,46,4,2,NULL),(27,48,4,2,NULL),(28,69,4,2,NULL),(29,70,4,2,NULL),(30,89,4,2,NULL),(31,103,4,2,NULL),(32,118,4,2,NULL),(33,119,4,2,NULL),(34,112,4,2,NULL),(35,114,4,2,NULL),(36,116,4,2,NULL),(37,105,4,2,NULL),(38,107,4,2,NULL),(39,109,4,2,NULL),(40,130,4,2,NULL),(41,133,4,2,NULL),(42,135,4,2,NULL),(43,136,4,2,NULL),(44,137,4,2,NULL),(45,56,39,2,NULL),(46,56,46,2,NULL),(47,56,54,2,NULL),(48,42,20,2,NULL),(49,42,21,2,NULL),(50,42,26,2,NULL),(51,42,45,2,NULL),(52,83,1,2,NULL),(53,83,3,2,NULL),(54,83,34,2,NULL),(55,83,52,2,NULL),(56,83,57,2,NULL),(57,83,59,2,NULL),(58,83,61,2,NULL),(59,83,112,2,NULL),(60,83,113,2,NULL),(61,83,114,2,NULL),(62,83,115,2,NULL),(63,83,5,2,NULL),(64,83,44,2,NULL),(65,83,53,2,NULL),(66,83,108,2,NULL),(67,83,109,2,NULL),(68,83,110,2,NULL),(69,83,111,2,NULL),(70,83,23,2,NULL),(71,83,56,2,NULL),(72,83,58,2,NULL),(73,83,60,2,NULL),(74,83,62,2,NULL),(75,83,63,2,NULL),(76,83,64,2,NULL),(77,83,67,2,NULL),(78,83,72,2,NULL),(79,83,92,2,NULL),(80,83,99,2,NULL),(81,83,101,2,NULL),(82,83,103,2,NULL),(83,83,104,2,NULL),(84,83,105,2,NULL),(85,83,107,2,NULL),(86,83,116,2,NULL),(87,83,117,2,NULL),(88,83,118,2,NULL),(89,83,119,2,NULL),(90,83,120,2,NULL),(91,83,121,2,NULL),(92,83,122,2,NULL),(93,83,123,2,NULL),(94,83,124,2,NULL),(95,83,125,2,NULL),(96,83,126,2,NULL),(97,83,127,2,NULL),(98,83,128,2,NULL),(99,83,66,2,NULL),(100,83,87,2,NULL),(101,83,129,2,NULL),(102,83,134,2,NULL),(103,83,130,2,NULL),(104,83,97,2,NULL),(105,83,100,2,NULL),(106,83,102,2,NULL),(107,83,106,2,NULL),(108,83,131,2,NULL),(109,83,132,2,NULL),(110,83,133,2,NULL),(111,83,135,2,NULL),(112,88,20,2,NULL),(113,88,21,2,NULL),(114,88,26,2,NULL),(115,88,45,2,NULL),(116,34,1,2,NULL),(117,34,3,2,NULL),(118,34,34,2,NULL),(119,34,52,2,NULL),(120,34,57,2,NULL),(121,34,59,2,NULL),(122,34,61,2,NULL),(123,34,112,2,NULL),(124,34,113,2,NULL),(125,34,114,2,NULL),(126,34,115,2,NULL),(127,34,5,2,NULL),(128,34,44,2,NULL),(129,34,53,2,NULL),(130,34,108,2,NULL),(131,34,109,2,NULL),(132,34,110,2,NULL),(133,34,111,2,NULL),(134,34,23,2,NULL),(135,34,56,2,NULL),(136,34,58,2,NULL),(137,34,60,2,NULL),(138,34,62,2,NULL),(139,34,63,2,NULL),(140,34,64,2,NULL),(141,34,67,2,NULL),(142,34,72,2,NULL),(143,34,92,2,NULL),(144,34,99,2,NULL),(145,34,101,2,NULL),(146,34,103,2,NULL),(147,34,104,2,NULL),(148,34,105,2,NULL),(149,34,107,2,NULL),(150,34,116,2,NULL),(151,34,117,2,NULL),(152,34,118,2,NULL),(153,34,119,2,NULL),(154,34,120,2,NULL),(155,34,121,2,NULL),(156,34,122,2,NULL),(157,34,123,2,NULL),(158,34,124,2,NULL),(159,34,125,2,NULL),(160,34,126,2,NULL),(161,34,127,2,NULL),(162,34,128,2,NULL),(163,34,66,2,NULL),(164,34,87,2,NULL),(165,34,87,2,NULL),(166,60,92,2,NULL),(167,34,129,2,NULL),(168,81,82,2,NULL),(169,34,134,2,NULL),(170,34,130,2,NULL),(171,82,80,2,NULL),(172,34,97,2,NULL),(173,34,100,2,NULL),(174,106,82,2,NULL),(175,34,102,2,NULL),(176,34,106,2,NULL),(177,108,89,2,NULL),(178,34,131,2,NULL),(179,34,132,2,NULL),(180,111,90,2,NULL),(181,34,133,2,NULL),(182,34,135,2,NULL),(183,77,20,2,NULL),(184,115,80,2,NULL),(185,77,21,2,NULL),(186,77,26,2,NULL),(187,124,67,2,NULL),(188,77,45,2,NULL),(189,27,30,2,NULL),(190,47,1,2,NULL),(191,27,31,2,NULL),(192,27,37,2,NULL),(193,49,1,2,NULL),(194,27,51,2,NULL),(195,30,20,2,NULL),(196,50,1,2,NULL),(197,30,21,2,NULL),(198,30,26,2,NULL),(199,52,1,2,NULL),(200,30,45,2,NULL),(201,53,1,2,NULL),(202,71,20,2,NULL),(203,71,21,2,NULL),(204,54,1,2,NULL),(205,71,26,2,NULL),(206,71,45,2,NULL),(207,55,1,2,NULL),(208,25,48,2,NULL),(209,26,48,2,NULL),(210,57,1,2,NULL),(211,75,43,2,NULL),(212,4,34,2,NULL),(213,18,34,2,NULL),(214,101,1,2,NULL),(215,47,34,2,NULL),(216,49,34,2,NULL),(217,127,1,2,NULL),(218,50,34,2,NULL),(219,52,34,2,NULL),(220,47,3,2,NULL),(221,53,34,2,NULL),(222,54,34,2,NULL),(223,49,3,2,NULL),(224,55,34,2,NULL),(225,57,34,2,NULL),(226,50,3,2,NULL),(227,101,34,2,NULL),(228,127,34,2,NULL),(229,52,3,2,NULL),(230,99,34,2,NULL),(231,110,34,2,NULL),(232,53,3,2,NULL),(233,84,34,2,NULL),(234,131,34,2,NULL),(235,96,34,2,NULL),(236,54,3,2,NULL),(237,44,34,2,NULL),(238,62,34,2,NULL),(239,46,34,2,NULL),(240,55,3,2,NULL),(241,48,34,2,NULL),(242,69,34,2,NULL),(243,70,34,2,NULL),(244,57,3,2,NULL),(245,89,34,2,NULL),(246,103,34,2,NULL),(247,118,34,2,NULL),(248,101,3,2,NULL),(249,119,34,2,NULL),(250,112,34,2,NULL),(251,127,3,2,NULL),(252,114,34,2,NULL),(253,116,34,2,NULL),(254,105,34,2,NULL),(255,107,34,2,NULL),(256,109,34,2,NULL),(257,47,52,2,NULL),(258,130,34,2,NULL),(259,133,34,2,NULL),(260,49,52,2,NULL),(261,135,34,2,NULL),(262,136,34,2,NULL),(263,50,52,2,NULL),(264,137,34,2,NULL),(265,4,52,2,NULL),(266,52,52,2,NULL),(267,18,52,2,NULL),(268,53,52,2,NULL),(269,54,52,2,NULL),(270,55,52,2,NULL),(271,57,52,2,NULL),(272,101,52,2,NULL),(273,127,52,2,NULL),(274,99,52,2,NULL),(275,47,57,2,NULL),(276,110,52,2,NULL),(277,49,57,2,NULL),(278,84,52,2,NULL),(279,131,52,2,NULL),(280,50,57,2,NULL),(281,96,52,2,NULL),(282,44,52,2,NULL),(283,52,57,2,NULL),(284,62,52,2,NULL),(285,46,52,2,NULL),(286,53,57,2,NULL),(287,48,52,2,NULL),(288,69,52,2,NULL),(289,54,57,2,NULL),(290,70,52,2,NULL),(291,89,52,2,NULL),(292,55,57,2,NULL),(293,103,52,2,NULL),(294,118,52,2,NULL),(295,57,57,2,NULL),(296,119,52,2,NULL),(297,112,52,2,NULL),(298,101,57,2,NULL),(299,114,52,2,NULL),(300,116,52,2,NULL),(301,127,57,2,NULL),(302,105,52,2,NULL),(303,107,52,2,NULL),(304,47,59,2,NULL),(305,109,52,2,NULL),(306,130,52,2,NULL),(307,49,59,2,NULL),(308,133,52,2,NULL),(309,135,52,2,NULL),(310,50,59,2,NULL),(311,136,52,2,NULL),(312,137,52,2,NULL),(313,52,59,2,NULL),(314,53,59,2,NULL),(315,4,57,2,NULL),(316,18,57,2,NULL),(317,54,59,2,NULL),(318,55,59,2,NULL),(319,99,57,2,NULL),(320,110,57,2,NULL),(321,57,59,2,NULL),(322,84,57,2,NULL),(323,84,57,2,NULL),(324,101,59,2,NULL),(325,131,57,2,NULL),(326,96,57,2,NULL),(327,127,59,2,NULL),(328,44,57,2,NULL),(329,44,57,2,NULL),(330,47,61,2,NULL),(331,62,57,2,NULL),(332,62,57,2,NULL),(333,49,61,2,NULL),(334,46,57,2,NULL),(335,48,57,2,NULL),(336,50,61,2,NULL),(337,69,57,2,NULL),(338,70,57,2,NULL),(339,52,61,2,NULL),(340,89,57,2,NULL),(341,103,57,2,NULL),(342,53,61,2,NULL),(343,118,57,2,NULL),(344,119,57,2,NULL),(345,54,61,2,NULL),(346,112,57,2,NULL),(347,112,57,2,NULL),(348,55,61,2,NULL),(349,114,57,2,NULL),(350,114,57,2,NULL),(351,57,61,2,NULL),(352,116,57,2,NULL),(353,105,57,2,NULL),(354,101,61,2,NULL),(355,107,57,2,NULL),(356,127,61,2,NULL),(357,109,57,2,NULL),(358,130,57,2,NULL),(359,47,112,2,NULL),(360,133,57,2,NULL),(361,135,57,2,NULL),(362,49,112,2,NULL),(363,136,57,2,NULL),(364,137,57,2,NULL),(365,50,112,2,NULL),(366,59,39,2,NULL),(367,59,46,2,NULL),(368,52,112,2,NULL),(369,59,54,2,NULL),(370,53,112,2,NULL),(371,4,59,2,NULL),(372,18,59,2,NULL),(373,54,112,2,NULL),(374,99,59,2,NULL),(375,110,59,2,NULL),(376,55,112,2,NULL),(377,84,59,2,NULL),(378,57,112,2,NULL),(379,131,59,2,NULL),(380,96,59,2,NULL),(381,44,59,2,NULL),(382,101,112,2,NULL),(383,62,59,2,NULL),(384,46,59,2,NULL),(385,127,112,2,NULL),(386,48,59,2,NULL),(387,69,59,2,NULL),(388,70,59,2,NULL),(389,47,113,2,NULL),(390,89,59,2,NULL),(391,103,59,2,NULL),(392,118,59,2,NULL),(393,49,113,2,NULL),(394,119,59,2,NULL),(395,112,59,2,NULL),(396,50,113,2,NULL),(397,114,59,2,NULL),(398,116,59,2,NULL),(399,116,59,2,NULL),(400,52,113,2,NULL),(401,105,59,2,NULL),(402,107,59,2,NULL),(403,109,59,2,NULL),(404,53,113,2,NULL),(405,130,59,2,NULL),(406,130,59,2,NULL),(407,54,113,2,NULL),(408,133,59,2,NULL),(409,133,59,2,NULL),(410,135,59,2,NULL),(411,55,113,2,NULL),(412,136,59,2,NULL),(413,136,59,2,NULL),(414,57,113,2,NULL),(415,137,59,2,NULL),(416,29,41,2,NULL),(417,29,41,2,NULL),(418,101,113,2,NULL),(419,29,50,2,NULL),(420,29,55,2,NULL),(421,127,113,2,NULL),(422,4,61,2,NULL),(423,18,61,2,NULL),(424,47,114,2,NULL),(425,49,114,2,NULL),(426,99,61,2,NULL),(427,99,61,2,NULL),(428,110,61,2,NULL),(429,50,114,2,NULL),(430,84,61,2,NULL),(431,84,61,2,NULL),(432,52,114,2,NULL),(433,131,61,2,NULL),(434,96,61,2,NULL),(435,96,61,2,NULL),(436,53,114,2,NULL),(437,44,61,2,NULL),(438,44,61,2,NULL),(439,62,61,2,NULL),(440,54,114,2,NULL),(441,46,61,2,NULL),(442,46,61,2,NULL),(443,55,114,2,NULL),(444,48,61,2,NULL),(445,69,61,2,NULL),(446,69,61,2,NULL),(447,57,114,2,NULL),(448,70,61,2,NULL),(449,70,61,2,NULL),(450,89,61,2,NULL),(451,101,114,2,NULL),(452,103,61,2,NULL),(453,103,61,2,NULL),(454,127,114,2,NULL),(455,118,61,2,NULL),(456,119,61,2,NULL),(457,119,61,2,NULL),(458,47,115,2,NULL),(459,112,61,2,NULL),(460,112,61,2,NULL),(461,114,61,2,NULL),(462,49,115,2,NULL),(463,116,61,2,NULL),(464,116,61,2,NULL),(465,50,115,2,NULL),(466,105,61,2,NULL),(467,107,61,2,NULL),(468,109,61,2,NULL),(469,52,115,2,NULL),(470,53,115,2,NULL),(471,130,61,2,NULL),(472,133,61,2,NULL),(473,133,61,2,NULL),(474,54,115,2,NULL),(475,135,61,2,NULL),(476,135,61,2,NULL),(477,136,61,2,NULL),(478,55,115,2,NULL),(479,137,61,2,NULL),(480,57,115,2,NULL),(481,4,112,2,NULL),(482,18,112,2,NULL),(483,101,115,2,NULL),(484,99,112,2,NULL),(485,127,115,2,NULL),(486,110,112,2,NULL),(487,84,112,2,NULL),(488,131,112,2,NULL),(489,47,5,2,NULL),(490,96,112,2,NULL),(491,44,112,2,NULL),(492,49,5,2,NULL),(493,62,112,2,NULL),(494,46,112,2,NULL),(495,48,112,2,NULL),(496,50,5,2,NULL),(497,69,112,2,NULL),(498,70,112,2,NULL),(499,89,112,2,NULL),(500,52,5,2,NULL),(501,103,112,2,NULL),(502,118,112,2,NULL),(503,53,5,2,NULL),(504,119,112,2,NULL),(505,112,112,2,NULL),(506,114,112,2,NULL),(507,54,5,2,NULL),(508,116,112,2,NULL),(509,105,112,2,NULL),(510,55,5,2,NULL),(511,107,112,2,NULL),(512,109,112,2,NULL),(513,130,112,2,NULL),(514,57,5,2,NULL),(515,133,112,2,NULL),(516,135,112,2,NULL),(517,136,112,2,NULL),(518,101,5,2,NULL),(519,137,112,2,NULL),(520,127,5,2,NULL),(521,4,113,2,NULL),(522,18,113,2,NULL),(523,4,63,2,NULL),(524,99,113,2,NULL),(525,18,63,2,NULL),(526,110,113,2,NULL),(527,84,113,2,NULL),(528,131,113,2,NULL),(529,47,44,2,NULL),(530,96,113,2,NULL),(531,44,113,2,NULL),(532,62,113,2,NULL),(533,49,44,2,NULL),(534,46,113,2,NULL),(535,48,113,2,NULL),(536,50,44,2,NULL),(537,69,113,2,NULL),(538,70,113,2,NULL),(539,89,113,2,NULL),(540,52,44,2,NULL),(541,103,113,2,NULL),(542,118,113,2,NULL),(543,119,113,2,NULL),(544,53,44,2,NULL),(545,112,113,2,NULL),(546,114,113,2,NULL),(547,116,113,2,NULL),(548,54,44,2,NULL),(549,105,113,2,NULL),(550,107,113,2,NULL),(551,55,44,2,NULL),(552,109,113,2,NULL),(553,130,113,2,NULL),(554,133,113,2,NULL),(555,57,44,2,NULL),(556,135,113,2,NULL),(557,136,113,2,NULL),(558,101,44,2,NULL),(559,137,113,2,NULL),(560,4,114,2,NULL),(561,127,44,2,NULL),(562,18,114,2,NULL),(563,18,114,2,NULL),(564,99,114,2,NULL),(565,47,53,2,NULL),(566,110,114,2,NULL),(567,49,53,2,NULL),(568,84,114,2,NULL),(569,84,114,2,NULL),(570,131,114,2,NULL),(571,50,53,2,NULL),(572,96,114,2,NULL),(573,44,114,2,NULL),(574,62,114,2,NULL),(575,52,53,2,NULL),(576,46,114,2,NULL),(577,46,114,2,NULL),(578,48,114,2,NULL),(579,69,114,2,NULL),(580,53,53,2,NULL),(581,70,114,2,NULL),(582,89,114,2,NULL),(583,54,53,2,NULL),(584,103,114,2,NULL),(585,103,114,2,NULL),(586,118,114,2,NULL),(587,55,53,2,NULL),(588,119,114,2,NULL),(589,112,114,2,NULL),(590,114,114,2,NULL),(591,57,53,2,NULL),(592,116,114,2,NULL),(593,116,114,2,NULL),(594,105,114,2,NULL),(595,101,53,2,NULL),(596,107,114,2,NULL),(597,107,114,2,NULL),(598,109,114,2,NULL),(599,127,53,2,NULL),(600,130,114,2,NULL),(601,130,114,2,NULL),(602,133,114,2,NULL),(603,47,108,2,NULL),(604,135,114,2,NULL),(605,136,114,2,NULL),(606,136,114,2,NULL),(607,49,108,2,NULL),(608,137,114,2,NULL),(609,50,108,2,NULL),(610,4,115,2,NULL),(611,4,115,2,NULL),(612,18,115,2,NULL),(613,52,108,2,NULL),(614,99,115,2,NULL),(615,99,115,2,NULL),(616,53,108,2,NULL),(617,110,115,2,NULL),(618,84,115,2,NULL),(619,54,108,2,NULL),(620,131,115,2,NULL),(621,131,115,2,NULL),(622,96,115,2,NULL),(623,55,108,2,NULL),(624,44,115,2,NULL),(625,44,115,2,NULL),(626,62,115,2,NULL),(627,57,108,2,NULL),(628,46,115,2,NULL),(629,48,115,2,NULL),(630,69,115,2,NULL),(631,101,108,2,NULL),(632,70,115,2,NULL),(633,70,115,2,NULL),(634,89,115,2,NULL),(635,127,108,2,NULL),(636,103,115,2,NULL),(637,118,115,2,NULL),(638,119,115,2,NULL),(639,47,109,2,NULL),(640,112,115,2,NULL),(641,114,115,2,NULL),(642,116,115,2,NULL),(643,49,109,2,NULL),(644,105,115,2,NULL),(645,105,115,2,NULL),(646,107,115,2,NULL),(647,50,109,2,NULL),(648,109,115,2,NULL),(649,130,115,2,NULL),(650,133,115,2,NULL),(651,52,109,2,NULL),(652,135,115,2,NULL),(653,53,109,2,NULL),(654,136,115,2,NULL),(655,136,115,2,NULL),(656,137,115,2,NULL),(657,54,109,2,NULL),(658,13,7,2,NULL),(659,13,7,2,NULL),(660,13,6,2,NULL),(661,55,109,2,NULL),(662,13,10,2,NULL),(663,13,32,2,NULL),(664,13,32,2,NULL),(665,57,109,2,NULL),(666,4,5,2,NULL),(667,4,5,2,NULL),(668,4,5,2,NULL),(669,101,109,2,NULL),(670,18,5,2,NULL),(671,18,5,2,NULL),(672,99,5,2,NULL),(673,127,109,2,NULL),(674,110,5,2,NULL),(675,84,5,2,NULL),(676,84,5,2,NULL),(677,47,110,2,NULL),(678,131,5,2,NULL),(679,96,5,2,NULL),(680,96,5,2,NULL),(681,49,110,2,NULL),(682,44,5,2,NULL),(683,44,5,2,NULL),(684,44,5,2,NULL),(685,50,110,2,NULL),(686,62,5,2,NULL),(687,62,5,2,NULL),(688,46,5,2,NULL),(689,52,110,2,NULL),(690,48,5,2,NULL),(691,69,5,2,NULL),(692,69,5,2,NULL),(693,53,110,2,NULL),(694,70,5,2,NULL),(695,70,5,2,NULL),(696,89,5,2,NULL),(697,54,110,2,NULL),(698,103,5,2,NULL),(699,103,5,2,NULL),(700,103,5,2,NULL),(701,55,110,2,NULL),(702,118,5,2,NULL),(703,119,5,2,NULL),(704,112,5,2,NULL),(705,57,110,2,NULL),(706,114,5,2,NULL),(707,114,5,2,NULL),(708,114,5,2,NULL),(709,101,110,2,NULL),(710,116,5,2,NULL),(711,116,5,2,NULL),(712,116,5,2,NULL),(713,127,110,2,NULL),(714,105,5,2,NULL),(715,47,111,2,NULL),(716,107,5,2,NULL),(717,107,5,2,NULL),(718,109,5,2,NULL),(719,49,111,2,NULL),(720,130,5,2,NULL),(721,130,5,2,NULL),(722,133,5,2,NULL),(723,135,5,2,NULL),(724,136,5,2,NULL),(725,50,111,2,NULL),(726,137,5,2,NULL),(727,52,111,2,NULL),(728,8,39,2,NULL),(729,8,39,2,NULL),(730,8,46,2,NULL),(731,8,54,2,NULL),(732,8,54,2,NULL),(733,53,111,2,NULL),(734,12,20,2,NULL),(735,12,21,2,NULL),(736,54,111,2,NULL),(737,12,21,2,NULL),(738,12,26,2,NULL),(739,12,45,2,NULL),(740,4,1,2,NULL),(741,55,111,2,NULL),(742,4,3,2,NULL),(743,57,111,2,NULL),(744,4,44,2,NULL),(745,4,44,2,NULL),(746,4,53,2,NULL),(747,101,111,2,NULL),(748,4,108,2,NULL),(749,4,108,2,NULL),(750,4,109,2,NULL),(751,127,111,2,NULL),(752,4,110,2,NULL),(753,4,110,2,NULL),(754,47,23,2,NULL),(755,4,111,2,NULL),(756,4,23,2,NULL),(757,4,23,2,NULL),(758,49,23,2,NULL),(759,4,56,2,NULL),(760,4,58,2,NULL),(761,4,58,2,NULL),(762,4,60,2,NULL),(763,50,23,2,NULL),(764,4,62,2,NULL),(765,4,62,2,NULL),(766,52,23,2,NULL),(767,4,64,2,NULL),(768,4,67,2,NULL),(769,4,67,2,NULL),(770,53,23,2,NULL),(771,4,72,2,NULL),(772,4,92,2,NULL),(773,4,92,2,NULL),(774,4,99,2,NULL),(775,54,23,2,NULL),(776,4,101,2,NULL),(777,4,101,2,NULL),(778,55,23,2,NULL),(779,4,103,2,NULL),(780,4,104,2,NULL),(781,4,105,2,NULL),(782,57,23,2,NULL),(783,4,107,2,NULL),(784,4,116,2,NULL),(785,4,117,2,NULL),(786,101,23,2,NULL),(787,4,118,2,NULL),(788,4,119,2,NULL),(789,4,120,2,NULL),(790,127,23,2,NULL),(791,4,121,2,NULL),(792,4,122,2,NULL),(793,4,122,2,NULL),(794,47,56,2,NULL),(795,4,123,2,NULL),(796,4,124,2,NULL),(797,4,124,2,NULL),(798,49,56,2,NULL),(799,4,125,2,NULL),(800,4,126,2,NULL),(801,4,126,2,NULL),(802,50,56,2,NULL),(803,4,127,2,NULL),(804,4,128,2,NULL),(805,4,128,2,NULL),(806,52,56,2,NULL),(807,4,66,2,NULL),(808,4,87,2,NULL),(809,4,87,2,NULL),(810,4,129,2,NULL),(811,53,56,2,NULL),(812,4,134,2,NULL),(813,4,134,2,NULL),(814,54,56,2,NULL),(815,4,130,2,NULL),(816,4,97,2,NULL),(817,4,97,2,NULL),(818,55,56,2,NULL),(819,4,100,2,NULL),(820,4,102,2,NULL),(821,4,102,2,NULL),(822,57,56,2,NULL),(823,4,106,2,NULL),(824,4,131,2,NULL),(825,4,131,2,NULL),(826,101,56,2,NULL),(827,4,132,2,NULL),(828,4,133,2,NULL),(829,4,133,2,NULL),(830,127,56,2,NULL),(831,4,135,2,NULL),(832,21,20,2,NULL),(833,21,20,2,NULL),(834,47,58,2,NULL),(835,21,21,2,NULL),(836,21,26,2,NULL),(837,21,26,2,NULL),(838,49,58,2,NULL),(839,21,45,2,NULL),(840,18,1,2,NULL),(841,18,1,2,NULL),(842,50,58,2,NULL),(843,18,3,2,NULL),(844,18,44,2,NULL),(845,18,44,2,NULL),(846,52,58,2,NULL),(847,18,53,2,NULL),(848,18,108,2,NULL),(849,18,109,2,NULL),(850,53,58,2,NULL),(851,18,110,2,NULL),(852,18,110,2,NULL),(853,18,111,2,NULL),(854,54,58,2,NULL),(855,18,23,2,NULL),(856,18,56,2,NULL),(857,18,56,2,NULL),(858,55,58,2,NULL),(859,18,58,2,NULL),(860,18,58,2,NULL),(861,18,60,2,NULL),(862,57,58,2,NULL),(863,18,62,2,NULL),(864,18,62,2,NULL),(865,18,64,2,NULL),(866,101,58,2,NULL),(867,18,67,2,NULL),(868,18,67,2,NULL),(869,18,67,2,NULL),(870,127,58,2,NULL),(871,18,72,2,NULL),(872,18,92,2,NULL),(873,18,92,2,NULL),(874,47,60,2,NULL),(875,18,99,2,NULL),(876,18,99,2,NULL),(877,18,99,2,NULL),(878,49,60,2,NULL),(879,18,101,2,NULL),(880,18,103,2,NULL),(881,18,103,2,NULL),(882,50,60,2,NULL),(883,18,104,2,NULL),(884,18,104,2,NULL),(885,18,105,2,NULL),(886,52,60,2,NULL),(887,18,107,2,NULL),(888,18,116,2,NULL),(889,18,116,2,NULL),(890,53,60,2,NULL),(891,18,117,2,NULL),(892,18,117,2,NULL),(893,18,117,2,NULL),(894,54,60,2,NULL),(895,18,118,2,NULL),(896,18,118,2,NULL),(897,18,119,2,NULL),(898,55,60,2,NULL),(899,18,120,2,NULL),(900,18,120,2,NULL),(901,57,60,2,NULL),(902,18,121,2,NULL),(903,18,122,2,NULL),(904,101,60,2,NULL),(905,18,123,2,NULL),(906,18,124,2,NULL),(907,18,124,2,NULL),(908,127,60,2,NULL),(909,18,125,2,NULL),(910,18,126,2,NULL),(911,18,126,2,NULL),(912,47,62,2,NULL),(913,18,127,2,NULL),(914,18,128,2,NULL),(915,18,128,2,NULL),(916,49,62,2,NULL),(917,18,66,2,NULL),(918,18,66,2,NULL),(919,18,66,2,NULL),(920,50,62,2,NULL),(921,18,87,2,NULL),(922,18,87,2,NULL),(923,18,129,2,NULL),(924,52,62,2,NULL),(925,18,134,2,NULL),(926,18,134,2,NULL),(927,18,130,2,NULL),(928,53,62,2,NULL),(929,18,97,2,NULL),(930,18,97,2,NULL),(931,18,100,2,NULL),(932,54,62,2,NULL),(933,18,102,2,NULL),(934,18,102,2,NULL),(935,18,102,2,NULL),(936,55,62,2,NULL),(937,18,106,2,NULL),(938,18,106,2,NULL),(939,18,131,2,NULL),(940,57,62,2,NULL),(941,18,132,2,NULL),(942,18,132,2,NULL),(943,18,132,2,NULL),(944,101,62,2,NULL),(945,18,133,2,NULL),(946,18,133,2,NULL),(947,18,133,2,NULL),(948,127,62,2,NULL),(949,18,135,2,NULL),(950,18,135,2,NULL),(951,11,20,2,NULL),(952,47,64,2,NULL),(953,11,21,2,NULL),(954,11,21,2,NULL),(955,11,21,2,NULL),(956,49,64,2,NULL),(957,11,26,2,NULL),(958,11,26,2,NULL),(959,11,45,2,NULL),(960,50,64,2,NULL),(961,3,20,2,NULL),(962,3,20,2,NULL),(963,3,20,2,NULL),(964,52,64,2,NULL),(965,3,21,2,NULL),(966,53,64,2,NULL),(967,3,26,2,NULL),(968,3,26,2,NULL),(969,3,45,2,NULL),(970,54,64,2,NULL),(971,19,30,2,NULL),(972,19,31,2,NULL),(973,19,37,2,NULL),(974,55,64,2,NULL),(975,19,51,2,NULL),(976,19,51,2,NULL),(977,10,20,2,NULL),(978,10,21,2,NULL),(979,57,64,2,NULL),(980,10,21,2,NULL),(981,10,26,2,NULL),(982,10,45,2,NULL),(983,10,45,2,NULL),(984,101,64,2,NULL),(985,22,41,2,NULL),(986,127,64,2,NULL),(987,22,50,2,NULL),(988,22,55,2,NULL),(989,47,67,2,NULL),(990,99,44,2,NULL),(991,49,67,2,NULL),(992,110,44,2,NULL),(993,110,44,2,NULL),(994,84,44,2,NULL),(995,50,67,2,NULL),(996,131,44,2,NULL),(997,131,44,2,NULL),(998,96,44,2,NULL),(999,52,67,2,NULL),(1000,44,44,2,NULL),(1001,44,44,2,NULL),(1002,62,44,2,NULL),(1003,53,67,2,NULL),(1004,46,44,2,NULL),(1005,48,44,2,NULL),(1006,69,44,2,NULL),(1007,54,67,2,NULL),(1008,70,44,2,NULL),(1009,70,44,2,NULL),(1010,89,44,2,NULL),(1011,55,67,2,NULL),(1012,103,44,2,NULL),(1013,103,44,2,NULL),(1014,118,44,2,NULL),(1015,57,67,2,NULL),(1016,119,44,2,NULL),(1017,112,44,2,NULL),(1018,114,44,2,NULL),(1019,101,67,2,NULL),(1020,116,44,2,NULL),(1021,116,44,2,NULL),(1022,105,44,2,NULL),(1023,127,67,2,NULL),(1024,107,44,2,NULL),(1025,107,44,2,NULL),(1026,109,44,2,NULL),(1027,47,72,2,NULL),(1028,130,44,2,NULL),(1029,133,44,2,NULL),(1030,133,44,2,NULL),(1031,49,72,2,NULL),(1032,135,44,2,NULL),(1033,50,72,2,NULL),(1034,136,44,2,NULL),(1035,136,44,2,NULL),(1036,137,44,2,NULL),(1037,52,72,2,NULL),(1038,53,72,2,NULL),(1039,99,53,2,NULL),(1040,99,53,2,NULL),(1041,110,53,2,NULL),(1042,54,72,2,NULL),(1043,84,53,2,NULL),(1044,131,53,2,NULL),(1045,131,53,2,NULL),(1046,55,72,2,NULL),(1047,96,53,2,NULL),(1048,96,53,2,NULL),(1049,96,53,2,NULL),(1050,57,72,2,NULL),(1051,44,53,2,NULL),(1052,44,53,2,NULL),(1053,44,53,2,NULL),(1054,101,72,2,NULL),(1055,62,53,2,NULL),(1056,62,53,2,NULL),(1057,46,53,2,NULL),(1058,127,72,2,NULL),(1059,48,53,2,NULL),(1060,48,53,2,NULL),(1061,48,53,2,NULL),(1062,99,63,2,NULL),(1063,69,53,2,NULL),(1064,69,53,2,NULL),(1065,69,53,2,NULL),(1066,110,63,2,NULL),(1067,70,53,2,NULL),(1068,89,53,2,NULL),(1069,89,53,2,NULL),(1070,84,63,2,NULL),(1071,103,53,2,NULL),(1072,103,53,2,NULL),(1073,103,53,2,NULL),(1074,131,63,2,NULL),(1075,118,53,2,NULL),(1076,118,53,2,NULL),(1077,118,53,2,NULL),(1078,47,92,2,NULL),(1079,119,53,2,NULL),(1080,119,53,2,NULL),(1081,112,53,2,NULL),(1082,49,92,2,NULL),(1083,114,53,2,NULL),(1084,114,53,2,NULL),(1085,116,53,2,NULL),(1086,50,92,2,NULL),(1087,105,53,2,NULL),(1088,105,53,2,NULL),(1089,107,53,2,NULL),(1090,52,92,2,NULL),(1091,109,53,2,NULL),(1092,109,53,2,NULL),(1093,53,92,2,NULL),(1094,130,53,2,NULL),(1095,133,53,2,NULL),(1096,133,53,2,NULL),(1097,54,92,2,NULL),(1098,135,53,2,NULL),(1099,135,53,2,NULL),(1100,136,53,2,NULL),(1101,55,92,2,NULL),(1102,137,53,2,NULL),(1103,137,53,2,NULL),(1104,137,53,2,NULL),(1105,57,92,2,NULL),(1106,101,92,2,NULL),(1107,99,108,2,NULL),(1108,99,108,2,NULL),(1109,99,108,2,NULL),(1110,127,92,2,NULL),(1111,110,108,2,NULL),(1112,110,108,2,NULL),(1113,110,108,2,NULL),(1114,47,99,2,NULL),(1115,84,108,2,NULL),(1116,84,108,2,NULL),(1117,84,108,2,NULL),(1118,49,99,2,NULL),(1119,131,108,2,NULL),(1120,131,108,2,NULL),(1121,96,108,2,NULL),(1122,50,99,2,NULL),(1123,44,108,2,NULL),(1124,44,108,2,NULL),(1125,44,108,2,NULL),(1126,52,99,2,NULL),(1127,62,108,2,NULL),(1128,62,108,2,NULL),(1129,62,108,2,NULL),(1130,53,99,2,NULL),(1131,46,108,2,NULL),(1132,46,108,2,NULL),(1133,48,108,2,NULL),(1134,54,99,2,NULL),(1135,69,108,2,NULL),(1136,69,108,2,NULL),(1137,69,108,2,NULL),(1138,55,99,2,NULL),(1139,70,108,2,NULL),(1140,70,108,2,NULL),(1141,70,108,2,NULL),(1142,57,99,2,NULL),(1143,89,108,2,NULL),(1144,89,108,2,NULL),(1145,103,108,2,NULL),(1146,101,99,2,NULL),(1147,118,108,2,NULL),(1148,118,108,2,NULL),(1149,118,108,2,NULL),(1150,127,99,2,NULL),(1151,119,108,2,NULL),(1152,119,108,2,NULL),(1153,112,108,2,NULL),(1154,47,101,2,NULL),(1155,114,108,2,NULL),(1156,114,108,2,NULL),(1157,114,108,2,NULL),(1158,49,101,2,NULL),(1159,116,108,2,NULL),(1160,116,108,2,NULL),(1161,116,108,2,NULL),(1162,50,101,2,NULL),(1163,105,108,2,NULL),(1164,105,108,2,NULL),(1165,107,108,2,NULL),(1166,52,101,2,NULL),(1167,109,108,2,NULL),(1168,109,108,2,NULL),(1169,109,108,2,NULL),(1170,53,101,2,NULL),(1171,130,108,2,NULL),(1172,130,108,2,NULL),(1173,130,108,2,NULL),(1174,54,101,2,NULL),(1175,133,108,2,NULL),(1176,133,108,2,NULL),(1177,133,108,2,NULL),(1178,55,101,2,NULL),(1179,135,108,2,NULL),(1180,135,108,2,NULL),(1181,135,108,2,NULL),(1182,57,101,2,NULL),(1183,136,108,2,NULL),(1184,136,108,2,NULL),(1185,137,108,2,NULL),(1186,101,101,2,NULL),(1187,127,101,2,NULL),(1188,99,109,2,NULL),(1189,99,109,2,NULL),(1190,99,109,2,NULL),(1191,47,103,2,NULL),(1192,110,109,2,NULL),(1193,110,109,2,NULL),(1194,84,109,2,NULL),(1195,49,103,2,NULL),(1196,131,109,2,NULL),(1197,131,109,2,NULL),(1198,131,109,2,NULL),(1199,50,103,2,NULL),(1200,96,109,2,NULL),(1201,44,109,2,NULL),(1202,44,109,2,NULL),(1203,52,103,2,NULL),(1204,62,109,2,NULL),(1205,62,109,2,NULL),(1206,62,109,2,NULL),(1207,53,103,2,NULL),(1208,46,109,2,NULL),(1209,46,109,2,NULL),(1210,48,109,2,NULL),(1211,54,103,2,NULL),(1212,69,109,2,NULL),(1213,69,109,2,NULL),(1214,69,109,2,NULL),(1215,55,103,2,NULL),(1216,70,109,2,NULL),(1217,70,109,2,NULL),(1218,70,109,2,NULL),(1219,57,103,2,NULL),(1220,89,109,2,NULL),(1221,89,109,2,NULL),(1222,89,109,2,NULL),(1223,101,103,2,NULL),(1224,103,109,2,NULL),(1225,103,109,2,NULL),(1226,118,109,2,NULL),(1227,127,103,2,NULL),(1228,119,109,2,NULL),(1229,119,109,2,NULL),(1230,119,109,2,NULL),(1231,47,104,2,NULL),(1232,112,109,2,NULL),(1233,112,109,2,NULL),(1234,114,109,2,NULL),(1235,49,104,2,NULL),(1236,116,109,2,NULL),(1237,116,109,2,NULL),(1238,105,109,2,NULL),(1239,50,104,2,NULL),(1240,107,109,2,NULL),(1241,107,109,2,NULL),(1242,52,104,2,NULL),(1243,109,109,2,NULL),(1244,130,109,2,NULL),(1245,133,109,2,NULL),(1246,53,104,2,NULL),(1247,135,109,2,NULL),(1248,136,109,2,NULL),(1249,136,109,2,NULL),(1250,136,109,2,NULL),(1251,54,104,2,NULL),(1252,137,109,2,NULL),(1253,55,104,2,NULL),(1254,99,110,2,NULL),(1255,99,110,2,NULL),(1256,110,110,2,NULL),(1257,110,110,2,NULL),(1258,110,110,2,NULL),(1259,57,104,2,NULL),(1260,84,110,2,NULL),(1261,84,110,2,NULL),(1262,131,110,2,NULL),(1263,101,104,2,NULL),(1264,96,110,2,NULL),(1265,96,110,2,NULL),(1266,96,110,2,NULL),(1267,127,104,2,NULL),(1268,44,110,2,NULL),(1269,96,63,2,NULL),(1270,62,110,2,NULL),(1271,62,110,2,NULL),(1272,46,110,2,NULL),(1273,47,105,2,NULL),(1274,48,110,2,NULL),(1275,48,110,2,NULL),(1276,69,110,2,NULL),(1277,49,105,2,NULL),(1278,70,110,2,NULL),(1279,70,110,2,NULL),(1280,89,110,2,NULL),(1281,50,105,2,NULL),(1282,103,110,2,NULL),(1283,103,110,2,NULL),(1284,118,110,2,NULL),(1285,52,105,2,NULL),(1286,119,110,2,NULL),(1287,119,110,2,NULL),(1288,112,110,2,NULL),(1289,114,110,2,NULL),(1290,114,110,2,NULL),(1291,53,105,2,NULL),(1292,116,110,2,NULL),(1293,54,105,2,NULL),(1294,105,110,2,NULL),(1295,105,110,2,NULL),(1296,107,110,2,NULL),(1297,55,105,2,NULL),(1298,109,110,2,NULL),(1299,130,110,2,NULL),(1300,133,110,2,NULL),(1301,57,105,2,NULL),(1302,135,110,2,NULL),(1303,136,110,2,NULL),(1304,137,110,2,NULL),(1305,101,105,2,NULL),(1306,99,111,2,NULL),(1307,127,105,2,NULL),(1308,110,111,2,NULL),(1309,110,111,2,NULL),(1310,84,111,2,NULL),(1311,131,111,2,NULL),(1312,96,111,2,NULL),(1313,47,107,2,NULL),(1314,44,111,2,NULL),(1315,49,107,2,NULL),(1316,62,111,2,NULL),(1317,62,111,2,NULL),(1318,46,111,2,NULL),(1319,48,111,2,NULL),(1320,48,111,2,NULL),(1321,50,107,2,NULL),(1322,69,111,2,NULL),(1323,70,111,2,NULL),(1324,70,111,2,NULL),(1325,52,107,2,NULL),(1326,89,111,2,NULL),(1327,103,111,2,NULL),(1328,53,107,2,NULL),(1329,118,111,2,NULL),(1330,119,111,2,NULL),(1331,112,111,2,NULL),(1332,112,111,2,NULL),(1333,54,107,2,NULL),(1334,114,111,2,NULL),(1335,116,111,2,NULL),(1336,116,111,2,NULL),(1337,55,107,2,NULL),(1338,105,111,2,NULL),(1339,57,107,2,NULL),(1340,107,111,2,NULL),(1341,107,111,2,NULL),(1342,109,111,2,NULL),(1343,101,107,2,NULL),(1344,130,111,2,NULL),(1345,130,111,2,NULL),(1346,133,111,2,NULL),(1347,127,107,2,NULL),(1348,135,111,2,NULL),(1349,135,111,2,NULL),(1350,47,116,2,NULL),(1351,136,111,2,NULL),(1352,137,111,2,NULL),(1353,137,111,2,NULL),(1354,49,116,2,NULL),(1355,99,23,2,NULL),(1356,99,23,2,NULL),(1357,99,23,2,NULL),(1358,50,116,2,NULL),(1359,110,23,2,NULL),(1360,84,23,2,NULL),(1361,84,23,2,NULL),(1362,52,116,2,NULL),(1363,131,23,2,NULL),(1364,96,23,2,NULL),(1365,44,23,2,NULL),(1366,53,116,2,NULL),(1367,62,23,2,NULL),(1368,46,23,2,NULL),(1369,46,23,2,NULL),(1370,54,116,2,NULL),(1371,48,23,2,NULL),(1372,69,23,2,NULL),(1373,69,23,2,NULL),(1374,55,116,2,NULL),(1375,70,23,2,NULL),(1376,89,23,2,NULL),(1377,89,23,2,NULL),(1378,57,116,2,NULL),(1379,103,23,2,NULL),(1380,118,23,2,NULL),(1381,101,116,2,NULL),(1382,118,23,2,NULL),(1383,119,23,2,NULL),(1384,112,23,2,NULL),(1385,112,23,2,NULL),(1386,127,116,2,NULL),(1387,114,23,2,NULL),(1388,116,23,2,NULL),(1389,116,23,2,NULL),(1390,47,117,2,NULL),(1391,105,23,2,NULL),(1392,107,23,2,NULL),(1393,49,117,2,NULL),(1394,107,23,2,NULL),(1395,109,23,2,NULL),(1396,130,23,2,NULL),(1397,50,117,2,NULL),(1398,130,23,2,NULL),(1399,133,23,2,NULL),(1400,135,23,2,NULL),(1401,135,23,2,NULL),(1402,52,117,2,NULL),(1403,136,23,2,NULL),(1404,137,23,2,NULL),(1405,137,23,2,NULL),(1406,53,117,2,NULL),(1407,99,56,2,NULL),(1408,54,117,2,NULL),(1409,110,56,2,NULL),(1410,110,56,2,NULL),(1411,84,56,2,NULL),(1412,55,117,2,NULL),(1413,131,56,2,NULL),(1414,96,56,2,NULL),(1415,96,56,2,NULL),(1416,57,117,2,NULL),(1417,44,56,2,NULL),(1418,44,56,2,NULL),(1419,44,56,2,NULL),(1420,101,117,2,NULL),(1421,62,56,2,NULL),(1422,62,56,2,NULL),(1423,46,56,2,NULL),(1424,127,117,2,NULL),(1425,48,56,2,NULL),(1426,48,56,2,NULL),(1427,48,56,2,NULL),(1428,47,118,2,NULL),(1429,69,56,2,NULL),(1430,69,56,2,NULL),(1431,70,56,2,NULL),(1432,49,118,2,NULL),(1433,89,56,2,NULL),(1434,89,56,2,NULL),(1435,89,56,2,NULL),(1436,50,118,2,NULL),(1437,103,56,2,NULL),(1438,103,56,2,NULL),(1439,118,56,2,NULL),(1440,52,118,2,NULL),(1441,119,56,2,NULL),(1442,119,56,2,NULL),(1443,119,56,2,NULL),(1444,53,118,2,NULL),(1445,112,56,2,NULL),(1446,114,56,2,NULL),(1447,114,56,2,NULL),(1448,54,118,2,NULL),(1449,116,56,2,NULL),(1450,116,56,2,NULL),(1451,116,56,2,NULL),(1452,55,118,2,NULL),(1453,105,56,2,NULL),(1454,105,56,2,NULL),(1455,105,56,2,NULL),(1456,57,118,2,NULL),(1457,107,56,2,NULL),(1458,107,56,2,NULL),(1459,109,56,2,NULL),(1460,101,118,2,NULL),(1461,130,56,2,NULL),(1462,130,56,2,NULL),(1463,130,56,2,NULL),(1464,127,118,2,NULL),(1465,133,56,2,NULL),(1466,133,56,2,NULL),(1467,135,56,2,NULL),(1468,47,119,2,NULL),(1469,136,56,2,NULL),(1470,136,56,2,NULL),(1471,136,56,2,NULL),(1472,49,119,2,NULL),(1473,137,56,2,NULL),(1474,137,56,2,NULL),(1475,99,58,2,NULL),(1476,50,119,2,NULL),(1477,110,58,2,NULL),(1478,110,58,2,NULL),(1479,110,58,2,NULL),(1480,52,119,2,NULL),(1481,84,58,2,NULL),(1482,131,58,2,NULL),(1483,131,58,2,NULL),(1484,53,119,2,NULL),(1485,96,58,2,NULL),(1486,44,58,2,NULL),(1487,44,58,2,NULL),(1488,54,119,2,NULL),(1489,62,58,2,NULL),(1490,46,58,2,NULL),(1491,46,58,2,NULL),(1492,55,119,2,NULL),(1493,48,58,2,NULL),(1494,69,58,2,NULL),(1495,69,58,2,NULL),(1496,57,119,2,NULL),(1497,70,58,2,NULL),(1498,89,58,2,NULL),(1499,89,58,2,NULL),(1500,101,119,2,NULL),(1501,103,58,2,NULL),(1502,118,58,2,NULL),(1503,118,58,2,NULL),(1504,127,119,2,NULL),(1505,119,58,2,NULL),(1506,112,58,2,NULL),(1507,112,58,2,NULL),(1508,47,120,2,NULL),(1509,114,58,2,NULL),(1510,116,58,2,NULL),(1511,116,58,2,NULL),(1512,49,120,2,NULL),(1513,105,58,2,NULL),(1514,50,120,2,NULL),(1515,107,58,2,NULL),(1516,107,58,2,NULL),(1517,109,58,2,NULL),(1518,130,58,2,NULL),(1519,130,58,2,NULL),(1520,52,120,2,NULL),(1521,133,58,2,NULL),(1522,135,58,2,NULL),(1523,135,58,2,NULL),(1524,53,120,2,NULL),(1525,136,58,2,NULL),(1526,137,58,2,NULL),(1527,54,120,2,NULL),(1528,99,60,2,NULL),(1529,110,60,2,NULL),(1530,55,120,2,NULL),(1531,84,60,2,NULL),(1532,84,60,2,NULL),(1533,131,60,2,NULL),(1534,57,120,2,NULL),(1535,96,60,2,NULL),(1536,96,60,2,NULL),(1537,44,60,2,NULL),(1538,101,120,2,NULL),(1539,62,60,2,NULL),(1540,62,60,2,NULL),(1541,46,60,2,NULL),(1542,127,120,2,NULL),(1543,48,60,2,NULL),(1544,48,60,2,NULL),(1545,69,60,2,NULL),(1546,47,121,2,NULL),(1547,70,60,2,NULL),(1548,70,60,2,NULL),(1549,89,60,2,NULL),(1550,49,121,2,NULL),(1551,103,60,2,NULL),(1552,103,60,2,NULL),(1553,118,60,2,NULL),(1554,50,121,2,NULL),(1555,119,60,2,NULL),(1556,119,60,2,NULL),(1557,112,60,2,NULL),(1558,52,121,2,NULL),(1559,114,60,2,NULL),(1560,114,60,2,NULL),(1561,116,60,2,NULL),(1562,53,121,2,NULL),(1563,105,60,2,NULL),(1564,105,60,2,NULL),(1565,107,60,2,NULL),(1566,109,60,2,NULL),(1567,109,60,2,NULL),(1568,130,60,2,NULL),(1569,133,60,2,NULL),(1570,133,60,2,NULL),(1571,135,60,2,NULL),(1572,136,60,2,NULL),(1573,54,121,2,NULL),(1574,137,60,2,NULL),(1575,137,60,2,NULL),(1576,55,121,2,NULL),(1577,99,62,2,NULL),(1578,99,62,2,NULL),(1579,110,62,2,NULL),(1580,57,121,2,NULL),(1581,84,62,2,NULL),(1582,84,62,2,NULL),(1583,131,62,2,NULL),(1584,101,121,2,NULL),(1585,96,62,2,NULL),(1586,96,62,2,NULL),(1587,44,62,2,NULL),(1588,127,121,2,NULL),(1589,62,62,2,NULL),(1590,62,62,2,NULL),(1591,46,62,2,NULL),(1592,47,122,2,NULL),(1593,48,62,2,NULL),(1594,48,62,2,NULL),(1595,69,62,2,NULL),(1596,49,122,2,NULL),(1597,70,62,2,NULL),(1598,70,62,2,NULL),(1599,89,62,2,NULL),(1600,50,122,2,NULL),(1601,103,62,2,NULL),(1602,103,62,2,NULL),(1603,118,62,2,NULL),(1604,52,122,2,NULL),(1605,119,62,2,NULL),(1606,119,62,2,NULL),(1607,112,62,2,NULL),(1608,53,122,2,NULL),(1609,114,62,2,NULL),(1610,114,62,2,NULL),(1611,116,62,2,NULL),(1612,54,122,2,NULL),(1613,105,62,2,NULL),(1614,105,62,2,NULL),(1615,55,122,2,NULL),(1616,107,62,2,NULL),(1617,109,62,2,NULL),(1618,109,62,2,NULL),(1619,57,122,2,NULL),(1620,130,62,2,NULL),(1621,133,62,2,NULL),(1622,133,62,2,NULL),(1623,135,62,2,NULL),(1624,101,122,2,NULL),(1625,136,62,2,NULL),(1626,136,62,2,NULL),(1627,137,62,2,NULL),(1628,127,122,2,NULL),(1629,47,123,2,NULL),(1630,49,123,2,NULL),(1631,50,123,2,NULL),(1632,52,123,2,NULL),(1633,53,123,2,NULL),(1634,54,123,2,NULL),(1635,55,123,2,NULL),(1636,57,123,2,NULL),(1637,101,123,2,NULL),(1638,127,123,2,NULL),(1639,47,124,2,NULL),(1640,49,124,2,NULL),(1641,50,124,2,NULL),(1642,52,124,2,NULL),(1643,53,124,2,NULL),(1644,54,124,2,NULL),(1645,55,124,2,NULL),(1646,57,124,2,NULL),(1647,101,124,2,NULL),(1648,127,124,2,NULL),(1649,47,125,2,NULL),(1650,49,125,2,NULL),(1651,50,125,2,NULL),(1652,52,125,2,NULL),(1653,53,125,2,NULL),(1654,54,125,2,NULL),(1655,55,125,2,NULL),(1656,57,125,2,NULL),(1657,101,125,2,NULL),(1658,127,125,2,NULL),(1659,47,126,2,NULL),(1660,49,126,2,NULL),(1661,50,126,2,NULL),(1662,52,126,2,NULL),(1663,53,126,2,NULL),(1664,54,126,2,NULL),(1665,55,126,2,NULL),(1666,57,126,2,NULL),(1667,101,126,2,NULL),(1668,127,126,2,NULL),(1669,47,127,2,NULL),(1670,49,127,2,NULL),(1671,50,127,2,NULL),(1672,52,127,2,NULL),(1673,53,127,2,NULL),(1674,54,127,2,NULL),(1675,55,127,2,NULL),(1676,57,127,2,NULL),(1677,101,127,2,NULL),(1678,127,127,2,NULL),(1679,47,128,2,NULL),(1680,49,128,2,NULL),(1681,50,128,2,NULL),(1682,52,128,2,NULL),(1683,53,128,2,NULL),(1684,54,128,2,NULL),(1685,55,128,2,NULL),(1686,57,128,2,NULL),(1687,101,128,2,NULL),(1688,127,128,2,NULL),(1689,47,66,2,NULL),(1690,49,66,2,NULL),(1691,50,66,2,NULL),(1692,52,66,2,NULL),(1693,53,66,2,NULL),(1694,54,66,2,NULL),(1695,55,66,2,NULL),(1696,57,66,2,NULL),(1697,101,66,2,NULL),(1698,127,66,2,NULL),(1699,44,63,2,NULL),(1700,62,63,2,NULL),(1701,46,63,2,NULL),(1702,48,63,2,NULL),(1703,69,63,2,NULL),(1704,70,63,2,NULL),(1705,89,63,2,NULL),(1706,103,63,2,NULL),(1707,118,63,2,NULL),(1708,119,63,2,NULL),(1709,47,87,2,NULL),(1710,49,87,2,NULL),(1711,50,87,2,NULL),(1712,52,87,2,NULL),(1713,53,87,2,NULL),(1714,54,87,2,NULL),(1715,55,87,2,NULL),(1716,57,87,2,NULL),(1717,101,87,2,NULL),(1718,127,87,2,NULL),(1719,112,63,2,NULL),(1720,114,63,2,NULL),(1721,116,63,2,NULL),(1722,47,129,2,NULL),(1723,49,129,2,NULL),(1724,50,129,2,NULL),(1725,52,129,2,NULL),(1726,53,129,2,NULL),(1727,54,129,2,NULL),(1728,55,129,2,NULL),(1729,57,129,2,NULL),(1730,101,129,2,NULL),(1731,127,129,2,NULL),(1732,105,63,2,NULL),(1733,107,63,2,NULL),(1734,109,63,2,NULL),(1735,47,134,2,NULL),(1736,49,134,2,NULL),(1737,50,134,2,NULL),(1738,52,134,2,NULL),(1739,53,134,2,NULL),(1740,54,134,2,NULL),(1741,55,134,2,NULL),(1742,57,134,2,NULL),(1743,101,134,2,NULL),(1744,127,134,2,NULL),(1745,130,63,2,NULL),(1746,133,63,2,NULL),(1747,135,63,2,NULL),(1748,136,63,2,NULL),(1749,137,63,2,NULL),(1750,47,130,2,NULL),(1751,49,130,2,NULL),(1752,50,130,2,NULL),(1753,52,130,2,NULL),(1754,53,130,2,NULL),(1755,54,130,2,NULL),(1756,55,130,2,NULL),(1757,57,130,2,NULL),(1758,101,130,2,NULL),(1759,127,130,2,NULL),(1760,47,97,2,NULL),(1761,49,97,2,NULL),(1762,50,97,2,NULL),(1763,52,97,2,NULL),(1764,53,97,2,NULL),(1765,54,97,2,NULL),(1766,55,97,2,NULL),(1767,57,97,2,NULL),(1768,101,97,2,NULL),(1769,127,97,2,NULL),(1770,47,100,2,NULL),(1771,49,100,2,NULL),(1772,50,100,2,NULL),(1773,52,100,2,NULL),(1774,53,100,2,NULL),(1775,54,100,2,NULL),(1776,55,100,2,NULL),(1777,57,100,2,NULL),(1778,101,100,2,NULL),(1779,127,100,2,NULL),(1780,47,102,2,NULL),(1781,49,102,2,NULL),(1782,50,102,2,NULL),(1783,52,102,2,NULL),(1784,53,102,2,NULL),(1785,54,102,2,NULL),(1786,55,102,2,NULL),(1787,57,102,2,NULL),(1788,101,102,2,NULL),(1789,127,102,2,NULL),(1790,47,106,2,NULL),(1791,49,106,2,NULL),(1792,50,106,2,NULL),(1793,52,106,2,NULL),(1794,53,106,2,NULL),(1795,54,106,2,NULL),(1796,55,106,2,NULL),(1797,57,106,2,NULL),(1798,101,106,2,NULL),(1799,127,106,2,NULL),(1800,47,131,2,NULL),(1801,49,131,2,NULL),(1802,50,131,2,NULL),(1803,52,131,2,NULL),(1804,53,131,2,NULL),(1805,54,131,2,NULL),(1806,55,131,2,NULL),(1807,57,131,2,NULL),(1808,101,131,2,NULL),(1809,127,131,2,NULL),(1810,47,132,2,NULL),(1811,49,132,2,NULL),(1812,50,132,2,NULL),(1813,52,132,2,NULL),(1814,53,132,2,NULL),(1815,54,132,2,NULL),(1816,55,132,2,NULL),(1817,57,132,2,NULL),(1818,101,132,2,NULL),(1819,127,132,2,NULL),(1820,47,133,2,NULL),(1821,49,133,2,NULL),(1822,50,133,2,NULL),(1823,52,133,2,NULL),(1824,53,133,2,NULL),(1825,54,133,2,NULL),(1826,55,133,2,NULL),(1827,57,133,2,NULL),(1828,101,133,2,NULL),(1829,127,133,2,NULL),(1830,47,135,2,NULL),(1831,49,135,2,NULL),(1832,50,135,2,NULL),(1833,52,135,2,NULL),(1834,53,135,2,NULL),(1835,54,135,2,NULL),(1836,55,135,2,NULL),(1837,57,135,2,NULL),(1838,101,135,2,NULL),(1839,127,135,2,NULL),(1840,99,64,2,NULL),(1841,110,64,2,NULL),(1842,84,64,2,NULL),(1843,131,64,2,NULL),(1844,96,64,2,NULL),(1845,44,64,2,NULL),(1846,125,68,2,NULL),(1847,62,64,2,NULL),(1848,46,64,2,NULL),(1849,99,66,2,NULL),(1850,48,64,2,NULL),(1851,110,66,2,NULL),(1852,69,64,2,NULL),(1853,84,66,2,NULL),(1854,70,64,2,NULL),(1855,131,66,2,NULL),(1856,89,64,2,NULL),(1857,96,66,2,NULL),(1858,103,64,2,NULL),(1859,44,66,2,NULL),(1860,118,64,2,NULL),(1861,62,66,2,NULL),(1862,119,64,2,NULL),(1863,46,66,2,NULL),(1864,112,64,2,NULL),(1865,99,1,2,NULL),(1866,48,66,2,NULL),(1867,114,64,2,NULL),(1868,69,66,2,NULL),(1869,110,1,2,NULL),(1870,116,64,2,NULL),(1871,70,66,2,NULL),(1872,105,64,2,NULL),(1873,84,1,2,NULL),(1874,89,66,2,NULL),(1875,107,64,2,NULL),(1876,109,64,2,NULL),(1877,131,1,2,NULL),(1878,103,66,2,NULL),(1879,130,64,2,NULL),(1880,118,66,2,NULL),(1881,133,64,2,NULL),(1882,96,1,2,NULL),(1883,119,66,2,NULL),(1884,135,64,2,NULL),(1885,44,1,2,NULL),(1886,112,66,2,NULL),(1887,136,64,2,NULL),(1888,62,1,2,NULL),(1889,137,64,2,NULL),(1890,114,66,2,NULL),(1891,46,1,2,NULL),(1892,116,66,2,NULL),(1893,99,67,2,NULL),(1894,48,1,2,NULL),(1895,105,66,2,NULL),(1896,110,67,2,NULL),(1897,69,1,2,NULL),(1898,84,67,2,NULL),(1899,107,66,2,NULL),(1900,70,1,2,NULL),(1901,131,67,2,NULL),(1902,109,66,2,NULL),(1903,89,1,2,NULL),(1904,96,67,2,NULL),(1905,130,66,2,NULL),(1906,103,1,2,NULL),(1907,44,67,2,NULL),(1908,133,66,2,NULL),(1909,62,67,2,NULL),(1910,118,1,2,NULL),(1911,135,66,2,NULL),(1912,46,67,2,NULL),(1913,119,1,2,NULL),(1914,48,67,2,NULL),(1915,136,66,2,NULL),(1916,112,1,2,NULL),(1917,69,67,2,NULL),(1918,137,66,2,NULL),(1919,114,1,2,NULL),(1920,70,67,2,NULL),(1921,76,75,2,NULL),(1922,116,1,2,NULL),(1923,89,67,2,NULL),(1924,44,3,2,NULL),(1925,103,67,2,NULL),(1926,105,1,2,NULL),(1927,118,67,2,NULL),(1928,107,1,2,NULL),(1929,119,67,2,NULL),(1930,44,72,2,NULL),(1931,109,1,2,NULL),(1932,112,67,2,NULL),(1933,44,92,2,NULL),(1934,114,67,2,NULL),(1935,130,1,2,NULL),(1936,44,99,2,NULL),(1937,116,67,2,NULL),(1938,44,101,2,NULL),(1939,133,1,2,NULL),(1940,105,67,2,NULL),(1941,44,103,2,NULL),(1942,107,67,2,NULL),(1943,135,1,2,NULL),(1944,44,104,2,NULL),(1945,109,67,2,NULL),(1946,44,105,2,NULL),(1947,136,1,2,NULL),(1948,130,67,2,NULL),(1949,44,107,2,NULL),(1950,133,67,2,NULL),(1951,137,1,2,NULL),(1952,44,116,2,NULL),(1953,135,67,2,NULL),(1954,44,117,2,NULL),(1955,136,67,2,NULL),(1956,1,1,2,NULL),(1957,44,118,2,NULL),(1958,137,67,2,NULL),(1959,44,119,2,NULL),(1960,99,3,2,NULL),(1961,121,63,2,NULL),(1962,44,120,2,NULL),(1963,100,63,2,NULL),(1964,110,3,2,NULL),(1965,44,121,2,NULL),(1966,99,72,2,NULL),(1967,44,122,2,NULL),(1968,84,3,2,NULL),(1969,110,72,2,NULL),(1970,44,123,2,NULL),(1971,84,72,2,NULL),(1972,131,3,2,NULL),(1973,44,124,2,NULL),(1974,131,72,2,NULL),(1975,96,3,2,NULL),(1976,44,125,2,NULL),(1977,96,72,2,NULL),(1978,62,3,2,NULL),(1979,44,126,2,NULL),(1980,62,72,2,NULL),(1981,46,3,2,NULL),(1982,44,127,2,NULL),(1983,46,72,2,NULL),(1984,48,3,2,NULL),(1985,44,128,2,NULL),(1986,48,72,2,NULL),(1987,69,3,2,NULL),(1988,44,87,2,NULL),(1989,69,72,2,NULL),(1990,70,3,2,NULL),(1991,44,129,2,NULL),(1992,70,72,2,NULL),(1993,89,3,2,NULL),(1994,44,134,2,NULL),(1995,89,72,2,NULL),(1996,103,3,2,NULL),(1997,44,130,2,NULL),(1998,103,72,2,NULL),(1999,118,3,2,NULL),(2000,44,97,2,NULL),(2001,118,72,2,NULL),(2002,119,3,2,NULL),(2003,44,100,2,NULL),(2004,119,72,2,NULL),(2005,112,3,2,NULL),(2006,44,102,2,NULL),(2007,112,72,2,NULL),(2008,114,3,2,NULL),(2009,44,106,2,NULL),(2010,114,72,2,NULL),(2011,116,3,2,NULL),(2012,44,131,2,NULL),(2013,116,72,2,NULL),(2014,105,3,2,NULL),(2015,44,132,2,NULL),(2016,105,72,2,NULL),(2017,107,3,2,NULL),(2018,44,133,2,NULL),(2019,107,72,2,NULL),(2020,109,3,2,NULL),(2021,44,135,2,NULL),(2022,109,72,2,NULL),(2023,130,3,2,NULL),(2024,66,75,2,NULL),(2025,133,3,2,NULL),(2026,130,72,2,NULL),(2027,133,72,2,NULL),(2028,135,3,2,NULL),(2029,135,72,2,NULL),(2030,62,92,2,NULL),(2031,136,3,2,NULL),(2032,136,72,2,NULL),(2033,62,99,2,NULL),(2034,137,3,2,NULL),(2035,137,72,2,NULL),(2036,62,101,2,NULL),(2037,43,82,2,NULL),(2038,62,103,2,NULL),(2039,78,80,2,NULL),(2040,62,104,2,NULL),(2041,120,70,2,NULL),(2042,62,105,2,NULL),(2043,126,89,2,NULL),(2044,62,107,2,NULL),(2045,62,116,2,NULL),(2046,62,117,2,NULL),(2047,62,118,2,NULL),(2048,99,92,2,NULL),(2049,62,119,2,NULL),(2050,110,92,2,NULL),(2051,62,120,2,NULL),(2052,99,99,2,NULL),(2053,62,121,2,NULL),(2054,110,99,2,NULL),(2055,62,122,2,NULL),(2056,99,101,2,NULL),(2057,62,123,2,NULL),(2058,110,101,2,NULL),(2059,62,124,2,NULL),(2060,99,103,2,NULL),(2061,62,125,2,NULL),(2062,110,103,2,NULL),(2063,62,126,2,NULL),(2064,99,104,2,NULL),(2065,62,127,2,NULL),(2066,110,104,2,NULL),(2067,62,128,2,NULL),(2068,99,105,2,NULL),(2069,62,87,2,NULL),(2070,110,105,2,NULL),(2071,62,129,2,NULL),(2072,99,107,2,NULL),(2073,62,134,2,NULL),(2074,110,107,2,NULL),(2075,62,130,2,NULL),(2076,99,116,2,NULL),(2077,62,97,2,NULL),(2078,110,116,2,NULL),(2079,62,100,2,NULL),(2080,99,117,2,NULL),(2081,62,102,2,NULL),(2082,110,117,2,NULL),(2083,62,106,2,NULL),(2084,99,118,2,NULL),(2085,62,131,2,NULL),(2086,110,118,2,NULL),(2087,62,132,2,NULL),(2088,99,119,2,NULL),(2089,62,133,2,NULL),(2090,110,119,2,NULL),(2091,62,135,2,NULL),(2092,99,120,2,NULL),(2093,72,75,2,NULL),(2094,110,120,2,NULL),(2095,63,81,2,NULL),(2096,99,121,2,NULL),(2097,65,75,2,NULL),(2098,110,121,2,NULL),(2099,79,85,2,NULL),(2100,99,122,2,NULL),(2101,97,75,2,NULL),(2102,110,122,2,NULL),(2103,99,123,2,NULL),(2104,110,123,2,NULL),(2105,99,124,2,NULL),(2106,110,124,2,NULL),(2107,99,125,2,NULL),(2108,46,92,2,NULL),(2109,110,125,2,NULL),(2110,48,92,2,NULL),(2111,99,126,2,NULL),(2112,69,92,2,NULL),(2113,110,126,2,NULL),(2114,70,92,2,NULL),(2115,99,127,2,NULL),(2116,89,92,2,NULL),(2117,110,127,2,NULL),(2118,103,92,2,NULL),(2119,99,128,2,NULL),(2120,118,92,2,NULL),(2121,110,128,2,NULL),(2122,119,92,2,NULL),(2123,99,87,2,NULL),(2124,46,99,2,NULL),(2125,110,87,2,NULL),(2126,48,99,2,NULL),(2127,99,129,2,NULL),(2128,69,99,2,NULL),(2129,110,129,2,NULL),(2130,70,99,2,NULL),(2131,99,134,2,NULL),(2132,89,99,2,NULL),(2133,110,134,2,NULL),(2134,103,99,2,NULL),(2135,99,130,2,NULL),(2136,118,99,2,NULL),(2137,110,130,2,NULL),(2138,119,99,2,NULL),(2139,99,97,2,NULL),(2140,46,101,2,NULL),(2141,110,97,2,NULL),(2142,48,101,2,NULL),(2143,99,100,2,NULL),(2144,69,101,2,NULL),(2145,110,100,2,NULL),(2146,70,101,2,NULL),(2147,99,102,2,NULL),(2148,89,101,2,NULL),(2149,110,102,2,NULL),(2150,103,101,2,NULL),(2151,99,106,2,NULL),(2152,118,101,2,NULL),(2153,110,106,2,NULL),(2154,119,101,2,NULL),(2155,99,131,2,NULL),(2156,46,103,2,NULL),(2157,110,131,2,NULL),(2158,48,103,2,NULL),(2159,99,132,2,NULL),(2160,69,103,2,NULL),(2161,110,132,2,NULL),(2162,70,103,2,NULL),(2163,99,133,2,NULL),(2164,89,103,2,NULL),(2165,110,133,2,NULL),(2166,103,103,2,NULL),(2167,99,135,2,NULL),(2168,118,103,2,NULL),(2169,110,135,2,NULL),(2170,119,103,2,NULL),(2171,46,104,2,NULL),(2172,84,92,2,NULL),(2173,48,104,2,NULL),(2174,131,92,2,NULL),(2175,69,104,2,NULL),(2176,84,99,2,NULL),(2177,70,104,2,NULL),(2178,131,99,2,NULL),(2179,89,104,2,NULL),(2180,84,101,2,NULL),(2181,103,104,2,NULL),(2182,131,101,2,NULL),(2183,118,104,2,NULL),(2184,84,103,2,NULL),(2185,119,104,2,NULL),(2186,131,103,2,NULL),(2187,46,105,2,NULL),(2188,84,104,2,NULL),(2189,48,105,2,NULL),(2190,131,104,2,NULL),(2191,69,105,2,NULL),(2192,84,105,2,NULL),(2193,70,105,2,NULL),(2194,131,105,2,NULL),(2195,89,105,2,NULL),(2196,84,107,2,NULL),(2197,103,105,2,NULL),(2198,131,107,2,NULL),(2199,118,105,2,NULL),(2200,84,116,2,NULL),(2201,119,105,2,NULL),(2202,131,116,2,NULL),(2203,46,107,2,NULL),(2204,84,117,2,NULL),(2205,48,107,2,NULL),(2206,131,117,2,NULL),(2207,69,107,2,NULL),(2208,84,118,2,NULL),(2209,70,107,2,NULL),(2210,131,118,2,NULL),(2211,89,107,2,NULL),(2212,84,119,2,NULL),(2213,103,107,2,NULL),(2214,131,119,2,NULL),(2215,118,107,2,NULL),(2216,84,120,2,NULL),(2217,119,107,2,NULL),(2218,131,120,2,NULL),(2219,46,116,2,NULL),(2220,84,121,2,NULL),(2221,48,116,2,NULL),(2222,131,121,2,NULL),(2223,69,116,2,NULL),(2224,84,122,2,NULL),(2225,70,116,2,NULL),(2226,131,122,2,NULL),(2227,89,116,2,NULL),(2228,84,123,2,NULL),(2229,103,116,2,NULL),(2230,131,123,2,NULL),(2231,118,116,2,NULL),(2232,84,124,2,NULL),(2233,119,116,2,NULL),(2234,131,124,2,NULL),(2235,46,117,2,NULL),(2236,84,125,2,NULL),(2237,48,117,2,NULL),(2238,131,125,2,NULL),(2239,69,117,2,NULL),(2240,84,126,2,NULL),(2241,70,117,2,NULL),(2242,131,126,2,NULL),(2243,89,117,2,NULL),(2244,84,127,2,NULL),(2245,103,117,2,NULL),(2246,131,127,2,NULL),(2247,118,117,2,NULL),(2248,84,128,2,NULL),(2249,119,117,2,NULL),(2250,131,128,2,NULL),(2251,46,118,2,NULL),(2252,84,87,2,NULL),(2253,48,118,2,NULL),(2254,131,87,2,NULL),(2255,69,118,2,NULL),(2256,84,129,2,NULL),(2257,70,118,2,NULL),(2258,131,129,2,NULL),(2259,89,118,2,NULL),(2260,84,134,2,NULL),(2261,103,118,2,NULL),(2262,131,134,2,NULL),(2263,118,118,2,NULL),(2264,84,130,2,NULL),(2265,119,118,2,NULL),(2266,131,130,2,NULL),(2267,46,119,2,NULL),(2268,84,97,2,NULL),(2269,48,119,2,NULL),(2270,131,97,2,NULL),(2271,69,119,2,NULL),(2272,84,100,2,NULL),(2273,70,119,2,NULL),(2274,131,100,2,NULL),(2275,89,119,2,NULL),(2276,84,102,2,NULL),(2277,103,119,2,NULL),(2278,131,102,2,NULL),(2279,118,119,2,NULL),(2280,84,106,2,NULL),(2281,119,119,2,NULL),(2282,131,106,2,NULL),(2283,46,120,2,NULL),(2284,84,131,2,NULL),(2285,48,120,2,NULL),(2286,131,131,2,NULL),(2287,69,120,2,NULL),(2288,84,132,2,NULL),(2289,70,120,2,NULL),(2290,131,132,2,NULL),(2291,89,120,2,NULL),(2292,84,133,2,NULL),(2293,103,120,2,NULL),(2294,131,133,2,NULL),(2295,118,120,2,NULL),(2296,84,135,2,NULL),(2297,119,120,2,NULL),(2298,131,135,2,NULL),(2299,46,121,2,NULL),(2300,48,121,2,NULL),(2301,96,92,2,NULL),(2302,69,121,2,NULL),(2303,112,92,2,NULL),(2304,70,121,2,NULL),(2305,114,92,2,NULL),(2306,89,121,2,NULL),(2307,116,92,2,NULL),(2308,103,121,2,NULL),(2309,105,92,2,NULL),(2310,118,121,2,NULL),(2311,107,92,2,NULL),(2312,119,121,2,NULL),(2313,109,92,2,NULL),(2314,46,122,2,NULL),(2315,48,122,2,NULL),(2316,130,92,2,NULL),(2317,133,92,2,NULL),(2318,69,122,2,NULL),(2319,135,92,2,NULL),(2320,70,122,2,NULL),(2321,136,92,2,NULL),(2322,89,122,2,NULL),(2323,137,92,2,NULL),(2324,103,122,2,NULL),(2325,118,122,2,NULL),(2326,96,99,2,NULL),(2327,119,122,2,NULL),(2328,46,123,2,NULL),(2329,112,99,2,NULL),(2330,48,123,2,NULL),(2331,114,99,2,NULL),(2332,69,123,2,NULL),(2333,116,99,2,NULL),(2334,70,123,2,NULL),(2335,105,99,2,NULL),(2336,89,123,2,NULL),(2337,107,99,2,NULL),(2338,103,123,2,NULL),(2339,109,99,2,NULL),(2340,118,123,2,NULL),(2341,130,99,2,NULL),(2342,119,123,2,NULL),(2343,133,99,2,NULL),(2344,46,124,2,NULL),(2345,135,99,2,NULL),(2346,48,124,2,NULL),(2347,136,99,2,NULL),(2348,69,124,2,NULL),(2349,137,99,2,NULL),(2350,70,124,2,NULL),(2351,89,124,2,NULL),(2352,129,96,2,NULL),(2353,103,124,2,NULL),(2354,118,124,2,NULL),(2355,96,101,2,NULL),(2356,119,124,2,NULL),(2357,46,125,2,NULL),(2358,112,101,2,NULL),(2359,114,101,2,NULL),(2360,48,125,2,NULL),(2361,69,125,2,NULL),(2362,116,101,2,NULL),(2363,70,125,2,NULL),(2364,105,101,2,NULL),(2365,89,125,2,NULL),(2366,107,101,2,NULL),(2367,103,125,2,NULL),(2368,109,101,2,NULL),(2369,118,125,2,NULL),(2370,130,101,2,NULL),(2371,119,125,2,NULL),(2372,133,101,2,NULL),(2373,46,126,2,NULL),(2374,135,101,2,NULL),(2375,48,126,2,NULL),(2376,136,101,2,NULL),(2377,69,126,2,NULL),(2378,137,101,2,NULL),(2379,70,126,2,NULL),(2380,89,126,2,NULL),(2381,96,103,2,NULL),(2382,103,126,2,NULL),(2383,118,126,2,NULL),(2384,112,103,2,NULL),(2385,114,103,2,NULL),(2386,119,126,2,NULL),(2387,116,103,2,NULL),(2388,46,127,2,NULL),(2389,48,127,2,NULL),(2390,105,103,2,NULL),(2391,107,103,2,NULL),(2392,69,127,2,NULL),(2393,109,103,2,NULL),(2394,70,127,2,NULL),(2395,89,127,2,NULL),(2396,130,103,2,NULL),(2397,133,103,2,NULL),(2398,103,127,2,NULL),(2399,135,103,2,NULL),(2400,118,127,2,NULL),(2401,136,103,2,NULL),(2402,119,127,2,NULL),(2403,137,103,2,NULL),(2404,46,128,2,NULL),(2405,48,128,2,NULL),(2406,69,128,2,NULL),(2407,70,128,2,NULL),(2408,96,105,2,NULL),(2409,89,128,2,NULL),(2410,96,107,2,NULL),(2411,103,128,2,NULL),(2412,96,116,2,NULL),(2413,118,128,2,NULL),(2414,96,117,2,NULL),(2415,119,128,2,NULL),(2416,96,118,2,NULL),(2417,46,87,2,NULL),(2418,96,119,2,NULL),(2419,48,87,2,NULL),(2420,96,120,2,NULL),(2421,69,87,2,NULL),(2422,96,121,2,NULL),(2423,70,87,2,NULL),(2424,96,122,2,NULL),(2425,89,87,2,NULL),(2426,96,123,2,NULL),(2427,103,87,2,NULL),(2428,96,124,2,NULL),(2429,118,87,2,NULL),(2430,96,125,2,NULL),(2431,119,87,2,NULL),(2432,96,126,2,NULL),(2433,46,129,2,NULL),(2434,96,127,2,NULL),(2435,48,129,2,NULL),(2436,96,128,2,NULL),(2437,69,129,2,NULL),(2438,70,129,2,NULL),(2439,96,87,2,NULL),(2440,112,104,2,NULL),(2441,89,129,2,NULL),(2442,114,104,2,NULL),(2443,103,129,2,NULL),(2444,116,104,2,NULL),(2445,118,129,2,NULL),(2446,96,129,2,NULL),(2447,119,129,2,NULL),(2448,46,134,2,NULL),(2449,105,104,2,NULL),(2450,107,104,2,NULL),(2451,48,134,2,NULL),(2452,109,104,2,NULL),(2453,69,134,2,NULL),(2454,96,134,2,NULL),(2455,70,134,2,NULL),(2456,89,134,2,NULL),(2457,130,104,2,NULL),(2458,133,104,2,NULL),(2459,103,134,2,NULL),(2460,135,104,2,NULL),(2461,118,134,2,NULL),(2462,136,104,2,NULL),(2463,119,134,2,NULL),(2464,137,104,2,NULL),(2465,46,130,2,NULL),(2466,96,130,2,NULL),(2467,48,130,2,NULL),(2468,69,130,2,NULL),(2469,96,97,2,NULL),(2470,70,130,2,NULL),(2471,96,100,2,NULL),(2472,89,130,2,NULL),(2473,96,102,2,NULL),(2474,103,130,2,NULL),(2475,96,106,2,NULL),(2476,118,130,2,NULL),(2477,96,131,2,NULL),(2478,119,130,2,NULL),(2479,96,132,2,NULL),(2480,46,97,2,NULL),(2481,96,133,2,NULL),(2482,48,97,2,NULL),(2483,96,135,2,NULL),(2484,69,97,2,NULL),(2485,70,97,2,NULL),(2486,89,97,2,NULL),(2487,112,105,2,NULL),(2488,103,97,2,NULL),(2489,114,105,2,NULL),(2490,118,97,2,NULL),(2491,116,105,2,NULL),(2492,119,97,2,NULL),(2493,105,105,2,NULL),(2494,46,100,2,NULL),(2495,107,105,2,NULL),(2496,48,100,2,NULL),(2497,109,105,2,NULL),(2498,69,100,2,NULL),(2499,130,105,2,NULL),(2500,70,100,2,NULL),(2501,133,105,2,NULL),(2502,89,100,2,NULL),(2503,135,105,2,NULL),(2504,103,100,2,NULL),(2505,136,105,2,NULL),(2506,118,100,2,NULL),(2507,137,105,2,NULL),(2508,119,100,2,NULL),(2509,46,102,2,NULL),(2510,48,102,2,NULL),(2511,112,107,2,NULL),(2512,69,102,2,NULL),(2513,114,107,2,NULL),(2514,70,102,2,NULL),(2515,116,107,2,NULL),(2516,89,102,2,NULL),(2517,105,107,2,NULL),(2518,103,102,2,NULL),(2519,107,107,2,NULL),(2520,118,102,2,NULL),(2521,109,107,2,NULL),(2522,119,102,2,NULL),(2523,130,107,2,NULL),(2524,46,106,2,NULL),(2525,133,107,2,NULL),(2526,48,106,2,NULL),(2527,135,107,2,NULL),(2528,69,106,2,NULL),(2529,136,107,2,NULL),(2530,70,106,2,NULL),(2531,137,107,2,NULL),(2532,89,106,2,NULL),(2533,112,116,2,NULL),(2534,103,106,2,NULL),(2535,114,116,2,NULL),(2536,118,106,2,NULL),(2537,116,116,2,NULL),(2538,119,106,2,NULL),(2539,105,116,2,NULL),(2540,46,131,2,NULL),(2541,107,116,2,NULL),(2542,48,131,2,NULL),(2543,109,116,2,NULL),(2544,69,131,2,NULL),(2545,130,116,2,NULL),(2546,70,131,2,NULL),(2547,133,116,2,NULL),(2548,89,131,2,NULL),(2549,135,116,2,NULL),(2550,103,131,2,NULL),(2551,136,116,2,NULL),(2552,118,131,2,NULL),(2553,137,116,2,NULL),(2554,119,131,2,NULL),(2555,46,132,2,NULL),(2556,48,132,2,NULL),(2557,112,117,2,NULL),(2558,69,132,2,NULL),(2559,114,117,2,NULL),(2560,70,132,2,NULL),(2561,116,117,2,NULL),(2562,89,132,2,NULL),(2563,105,117,2,NULL),(2564,103,132,2,NULL),(2565,107,117,2,NULL),(2566,118,132,2,NULL),(2567,109,117,2,NULL),(2568,119,132,2,NULL),(2569,130,117,2,NULL),(2570,46,133,2,NULL),(2571,133,117,2,NULL),(2572,48,133,2,NULL),(2573,135,117,2,NULL),(2574,69,133,2,NULL),(2575,136,117,2,NULL),(2576,70,133,2,NULL),(2577,137,117,2,NULL),(2578,89,133,2,NULL),(2579,112,118,2,NULL),(2580,114,118,2,NULL),(2581,103,133,2,NULL),(2582,116,118,2,NULL),(2583,118,133,2,NULL),(2584,119,133,2,NULL),(2585,105,118,2,NULL),(2586,107,118,2,NULL),(2587,46,135,2,NULL),(2588,109,118,2,NULL),(2589,48,135,2,NULL),(2590,69,135,2,NULL),(2591,130,118,2,NULL),(2592,133,118,2,NULL),(2593,70,135,2,NULL),(2594,135,118,2,NULL),(2595,89,135,2,NULL),(2596,136,118,2,NULL),(2597,103,135,2,NULL),(2598,137,118,2,NULL),(2599,118,135,2,NULL),(2600,119,135,2,NULL),(2601,112,119,2,NULL),(2602,112,87,2,NULL),(2603,114,87,2,NULL),(2604,114,119,2,NULL),(2605,116,87,2,NULL),(2606,116,119,2,NULL),(2607,105,87,2,NULL),(2608,105,119,2,NULL),(2609,107,87,2,NULL),(2610,107,119,2,NULL),(2611,109,87,2,NULL),(2612,109,119,2,NULL),(2613,130,87,2,NULL),(2614,130,119,2,NULL),(2615,133,87,2,NULL),(2616,133,119,2,NULL),(2617,135,87,2,NULL),(2618,135,119,2,NULL),(2619,136,87,2,NULL),(2620,136,119,2,NULL),(2621,137,87,2,NULL),(2622,137,119,2,NULL),(2623,112,120,2,NULL),(2624,114,120,2,NULL),(2625,116,120,2,NULL),(2626,105,120,2,NULL),(2627,107,120,2,NULL),(2628,109,120,2,NULL),(2629,130,120,2,NULL),(2630,112,121,2,NULL),(2631,133,120,2,NULL),(2632,114,121,2,NULL),(2633,135,120,2,NULL),(2634,116,121,2,NULL),(2635,136,120,2,NULL),(2636,112,122,2,NULL),(2637,137,120,2,NULL),(2638,114,122,2,NULL),(2639,116,122,2,NULL),(2640,112,123,2,NULL),(2641,105,121,2,NULL),(2642,114,123,2,NULL),(2643,107,121,2,NULL),(2644,116,123,2,NULL),(2645,109,121,2,NULL),(2646,112,124,2,NULL),(2647,130,121,2,NULL),(2648,114,124,2,NULL),(2649,133,121,2,NULL),(2650,116,124,2,NULL),(2651,135,121,2,NULL),(2652,112,125,2,NULL),(2653,136,121,2,NULL),(2654,114,125,2,NULL),(2655,137,121,2,NULL),(2656,116,125,2,NULL),(2657,112,126,2,NULL),(2658,114,126,2,NULL),(2659,105,122,2,NULL),(2660,116,126,2,NULL),(2661,107,122,2,NULL),(2662,112,127,2,NULL),(2663,109,122,2,NULL),(2664,114,127,2,NULL),(2665,130,122,2,NULL),(2666,116,127,2,NULL),(2667,133,122,2,NULL),(2668,112,128,2,NULL),(2669,135,122,2,NULL),(2670,114,128,2,NULL),(2671,136,122,2,NULL),(2672,116,128,2,NULL),(2673,137,122,2,NULL),(2674,112,134,2,NULL),(2675,114,134,2,NULL),(2676,105,123,2,NULL),(2677,116,134,2,NULL),(2678,107,123,2,NULL),(2679,112,130,2,NULL),(2680,114,130,2,NULL),(2681,109,123,2,NULL),(2682,116,130,2,NULL),(2683,130,123,2,NULL),(2684,133,123,2,NULL),(2685,112,97,2,NULL),(2686,135,123,2,NULL),(2687,114,97,2,NULL),(2688,136,123,2,NULL),(2689,116,97,2,NULL),(2690,137,123,2,NULL),(2691,112,100,2,NULL),(2692,114,100,2,NULL),(2693,116,100,2,NULL),(2694,112,102,2,NULL),(2695,105,124,2,NULL),(2696,114,102,2,NULL),(2697,107,124,2,NULL),(2698,116,102,2,NULL),(2699,109,124,2,NULL),(2700,112,106,2,NULL),(2701,130,124,2,NULL),(2702,114,106,2,NULL),(2703,133,124,2,NULL),(2704,116,106,2,NULL),(2705,135,124,2,NULL),(2706,112,131,2,NULL),(2707,136,124,2,NULL),(2708,114,131,2,NULL),(2709,137,124,2,NULL),(2710,116,131,2,NULL),(2711,105,125,2,NULL),(2712,112,132,2,NULL),(2713,107,125,2,NULL),(2714,114,132,2,NULL),(2715,109,125,2,NULL),(2716,116,132,2,NULL),(2717,130,125,2,NULL),(2718,112,133,2,NULL),(2719,133,125,2,NULL),(2720,114,133,2,NULL),(2721,135,125,2,NULL),(2722,116,133,2,NULL),(2723,136,125,2,NULL),(2724,112,135,2,NULL),(2725,137,125,2,NULL),(2726,114,135,2,NULL),(2727,116,135,2,NULL),(2728,105,126,2,NULL),(2729,107,126,2,NULL),(2730,109,126,2,NULL),(2731,130,126,2,NULL),(2732,105,129,2,NULL),(2733,133,126,2,NULL),(2734,107,129,2,NULL),(2735,135,126,2,NULL),(2736,109,129,2,NULL),(2737,136,126,2,NULL),(2738,130,129,2,NULL),(2739,137,126,2,NULL),(2740,133,129,2,NULL),(2741,135,129,2,NULL),(2742,136,129,2,NULL),(2743,105,127,2,NULL),(2744,107,127,2,NULL),(2745,137,129,2,NULL),(2746,109,127,2,NULL),(2747,130,127,2,NULL),(2748,133,127,2,NULL),(2749,135,127,2,NULL),(2750,136,127,2,NULL),(2751,137,127,2,NULL),(2752,105,128,2,NULL),(2753,107,128,2,NULL),(2754,109,128,2,NULL),(2755,130,128,2,NULL),(2756,105,130,2,NULL),(2757,133,128,2,NULL),(2758,135,128,2,NULL),(2759,107,130,2,NULL),(2760,136,128,2,NULL),(2761,109,130,2,NULL),(2762,137,128,2,NULL),(2763,105,97,2,NULL),(2764,107,97,2,NULL),(2765,109,97,2,NULL),(2766,105,100,2,NULL),(2767,107,100,2,NULL),(2768,109,100,2,NULL),(2769,105,102,2,NULL),(2770,107,102,2,NULL),(2771,109,102,2,NULL),(2772,105,106,2,NULL),(2773,107,106,2,NULL),(2774,109,106,2,NULL),(2775,105,131,2,NULL),(2776,107,131,2,NULL),(2777,109,131,2,NULL),(2778,105,132,2,NULL),(2779,107,132,2,NULL),(2780,109,132,2,NULL),(2781,105,133,2,NULL),(2782,107,133,2,NULL),(2783,109,133,2,NULL),(2784,105,135,2,NULL),(2785,107,135,2,NULL),(2786,109,135,2,NULL),(2787,130,134,2,NULL),(2788,133,134,2,NULL),(2789,135,134,2,NULL),(2790,136,134,2,NULL),(2791,137,134,2,NULL),(2792,130,97,2,NULL),(2793,133,97,2,NULL),(2794,135,97,2,NULL),(2795,136,97,2,NULL),(2796,137,97,2,NULL),(2797,130,100,2,NULL),(2798,133,100,2,NULL),(2799,135,100,2,NULL),(2800,136,100,2,NULL),(2801,137,100,2,NULL),(2802,130,102,2,NULL),(2803,133,102,2,NULL),(2804,135,102,2,NULL),(2805,136,102,2,NULL),(2806,137,102,2,NULL),(2807,130,106,2,NULL),(2808,133,106,2,NULL),(2809,135,106,2,NULL),(2810,136,106,2,NULL),(2811,137,106,2,NULL),(2812,130,131,2,NULL),(2813,133,131,2,NULL),(2814,135,131,2,NULL),(2815,136,131,2,NULL),(2816,137,131,2,NULL),(2817,130,132,2,NULL),(2818,133,132,2,NULL),(2819,135,132,2,NULL),(2820,136,132,2,NULL),(2821,137,132,2,NULL),(2822,130,133,2,NULL),(2823,133,133,2,NULL),(2824,135,133,2,NULL),(2825,136,133,2,NULL),(2826,137,133,2,NULL),(2827,130,135,2,NULL),(2828,133,135,2,NULL),(2829,135,135,2,NULL),(2830,136,135,2,NULL),(2831,137,135,2,NULL),(2832,74,91,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:39
