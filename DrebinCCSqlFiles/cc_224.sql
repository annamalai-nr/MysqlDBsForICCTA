-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_224
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (34,'(.*).SEND_SMS'),(12,'INTENT_DONE'),(64,'NULL-CONSTANT'),(21,'SENDED'),(8,'SENT'),(22,'android.appwidget.action.APPWIDGET_UPDATE'),(49,'android.bluetooth.adapter.action.STATE_CHANGED'),(50,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(43,'android.intent.action.AIRPLANE_MODE'),(35,'android.intent.action.BATTERY_CHANGED'),(40,'android.intent.action.BATTERY_LOW'),(37,'android.intent.action.BATTERY_OKAY'),(2,'android.intent.action.BOOT_COMPLETED'),(60,'android.intent.action.CHOOSER'),(4,'android.intent.action.DATA_SMS_RECEIVED'),(36,'android.intent.action.DELETE'),(59,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PICK_SAVE_BATTERY_KILLER_PRO'),(14,'android.intent.action.SAVE_BATTERY_PRO_IGNORE_LIST'),(17,'android.intent.action.SAVE_BATTERY_SETTINGS'),(38,'android.intent.action.SCREEN_OFF'),(39,'android.intent.action.SCREEN_ON'),(19,'android.intent.action.SEARCH_LONG_PRESS'),(58,'android.intent.action.SENDTO'),(7,'android.intent.action.VIEW'),(45,'android.media.RINGER_MODE_CHANGED'),(44,'android.media.VIBRATE_SETTING_CHANGED'),(55,'android.net.conn.CONNECTIVITY_CHANGE'),(54,'android.net.wifi.STATE_CHANGE'),(62,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(53,'android.net.wifi.WIFI_STATE_CHANGED'),(10,'android.provider.Telephony.SMS_RECEIVED'),(33,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(42,'android.settings.APPLICATION_DETAILS_SETTINGS'),(47,'android.settings.DISPLAY_SETTINGS'),(41,'android.settings.LOCATION_SOURCE_SETTINGS'),(48,'android.settings.SECURITY_SETTINGS'),(32,'com.android.mms.transaction.MESSAGE_SENT'),(11,'com.android.vending.INSTALL_REFERRER'),(26,'com.bwx.bequick.FLASHLIGHT'),(46,'com.bwx.bequick.FLASHLIGHT_STATE'),(28,'com.bwx.bequick.INIT_STATUSBAR_INTEGRATION'),(29,'com.bwx.bequick.START_QS'),(30,'com.bwx.bequick.UPDATE_STATUSBAR_INTEGRATION'),(63,'com.bwx.bequick.VOLUME_UPDATED'),(27,'com.bwx.bequick.WARN_FLASHLIGHT'),(18,'com.extend.battery.intent.http.SHOW'),(65,'com.flurry.android.ACTION_CATALOG'),(6,'com.google.android.c2dm.intent.RECEIVE'),(24,'com.google.android.c2dm.intent.REGISTER'),(5,'com.google.android.c2dm.intent.REGISTRATION'),(15,'com.itframework.installer.updater.CHECK'),(16,'com.itframework.installer.updater.UPDATE'),(31,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(52,'com.notifad.android.PushServiceStart(.*)'),(23,'com.notifad.android.PushServiceStart1'),(57,'com.notifad.android.PushServiceStartInvalid'),(61,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(56,'com.notifad.android.PushServiceStartinvalid Id'),(51,'com.savebattery.killer.pro.ACTION_LOAD_FINISH'),(20,'com.savebattery.killer.pro.action.AUTO_KILL'),(25,'com.savebattery.killer.pro.action.KILLALL'),(3,'com.software.CHECKER'),(9,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.android.installer.full',3),(2,'com.software.apk',1),(3,'com.software.application',1),(4,'com.extend.battery',83),(5,'com.extend.battery',91),(6,'com.batteryupgradeandroid.batteryupdate.killer',28),(7,'com.extender.sc',48);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.installer.full.AndroidInstaller2Activity'),(2,2,'com.software.apk.Main'),(3,2,'com.software.apk.AgreementActivity'),(4,2,'com.software.apk.GrantAccess'),(5,2,'com.software.apk.Notifier'),(6,3,'com.software.application.Main'),(7,3,'com.software.application.OffertActivity'),(8,3,'com.software.application.ShowLink'),(9,3,'com.software.application.C2DMReceiver'),(10,3,'com.software.application.Notificator'),(11,3,'com.software.application.Checker'),(12,3,'com.software.application.SmsReceiver'),(13,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(14,4,'com.extend.battery.Splash'),(15,4,'com.extend.battery.TabHandler'),(16,4,'com.extend.battery.TaskKillerActivity'),(17,4,'com.extend.battery.UninstallerActivity'),(18,4,'com.extend.battery.SecurityAuditActivity'),(19,4,'com.extend.battery.InstallerActivity'),(20,4,'com.extend.battery.FeaturesActivity'),(21,5,'com.extend.battery.Splash'),(22,4,'com.extend.battery.BoosterActivity'),(23,2,'com.software.apk.Activater$1'),(24,4,'com.extend.battery.BatteryActivity'),(25,4,'com.extend.battery.RatingActivity'),(26,5,'com.extend.battery.TabHandler'),(27,4,'com.extend.battery.BatteryService'),(28,5,'com.extend.battery.TaskKillerActivity'),(29,4,'com.zanalytics.sms.SmsReceiverService'),(30,5,'com.extend.battery.UninstallerActivity'),(31,4,'com.zanalytics.sms.SmsReceiver'),(32,5,'com.extend.battery.SecurityAuditActivity'),(33,2,'com.software.apk.GrantAccess$1'),(34,5,'com.extend.battery.InstallerActivity'),(35,5,'com.extend.battery.FeaturesActivity'),(36,5,'com.extend.battery.BoosterActivity'),(37,4,'com.tapjoy.TapjoyReferralTracker'),(38,5,'com.extend.battery.BatteryActivity'),(39,5,'com.extend.battery.RatingActivity'),(40,5,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(41,2,'com.software.apk.Main$2'),(42,6,'com.savebattery.killer.pro.EasyTaskKiller'),(43,5,'com.itframework.installer.util.NonMarketDialogActivity'),(44,5,'com.extend.battery.BatteryService'),(45,5,'com.itframework.installer.util.InstallWorker'),(46,5,'com.zanalytics.sms.SmsReceiverService'),(47,6,'com.savebattery.killer.pro.IgnoreList'),(48,5,'com.itframework.installer.updater.UpdateReceiver'),(49,6,'com.savebattery.killer.pro.AddToIgnoreList'),(50,6,'com.savebattery.killer.pro.PreferencesActivity'),(51,5,'com.extend.battery.NotificationReceiver'),(52,6,'com.bwx.bequick.EulaActivity'),(53,5,'com.extend.battery.BootReceiver'),(54,6,'com.bwx.bequick.ShowSettingsActivity'),(55,5,'com.zanalytics.sms.SmsReceiver'),(56,6,'com.bwx.bequick.DialogSettingsActivity'),(57,6,'com.bwx.bequick.MainSettingsActivity'),(58,6,'com.bwx.bequick.LayoutSettingsActivity'),(59,3,'com.software.application.ShowLink$1'),(60,6,'com.bwx.bequick.preferences.CommonPrefs'),(61,6,'com.bwx.bequick.preferences.BrightnessPrefs'),(62,6,'com.bwx.bequick.preferences.MobileDataPrefs'),(63,7,'com.androidupgrade.battery.Splash'),(64,6,'com.bwx.bequick.preferences.AirplaneModePrefs'),(65,6,'com.bwx.bequick.flashlight.ScreenLightActivity'),(66,6,'com.savebattery.killer.pro.OfferDialog'),(67,7,'com.androidupgrade.battery.TabHandler'),(68,3,'com.software.application.Actor'),(69,6,'com.savebattery.killer.pro.AutoKillService'),(70,7,'com.androidupgrade.battery.TaskKillerActivity'),(71,7,'com.androidupgrade.battery.UninstallerActivity'),(72,7,'com.androidupgrade.battery.SecurityAuditActivity'),(73,3,'com.google.android.c2dm.C2DMBaseReceiver'),(74,6,'com.savebattery.killer.pro.widget.WidgetUpdateService'),(75,7,'com.androidupgrade.battery.InstallerActivity'),(76,7,'com.androidupgrade.battery.FeaturesActivity'),(77,6,'com.savebattery.killer.pro.BackgroundSubmitService'),(78,3,'com.software.application.Actor$1'),(79,7,'com.androidupgrade.battery.BoosterActivity'),(80,6,'com.savebattery.killer.pro.AutoStartReceiver'),(81,7,'com.androidupgrade.battery.BatteryActivity'),(82,7,'com.androidupgrade.battery.RatingActivity'),(83,6,'com.savebattery.killer.pro.widget.EasyWidgetProvider'),(84,3,'com.software.application.Main$3'),(85,7,'com.notifad.android.PushAds'),(86,7,'com.androidupgrade.battery.BatteryService'),(87,3,'com.google.android.c2dm.C2DMessaging'),(88,7,'com.notifad.android.PushService'),(89,6,'com.savebattery.killer.pro.widget.KillAllEventReceiver'),(90,7,'com.mobsqueeze.sms.SmsReceiverService'),(91,6,'com.bwx.bequick.flashlight.LedFlashlightReceiver'),(92,7,'com.notifad.android.UserDetailsReceiver'),(93,7,'com.notifad.android.MessageReceiver'),(94,7,'com.notifad.android.DeliveryReceiver'),(95,6,'com.bwx.bequick.receivers.StatusBarIntegrationReceiver'),(96,7,'com.androidupgrade.battery.BootReceiver'),(97,6,'com.savebattery.killer.pro.BaseStarReceiver'),(98,7,'com.mobsqueeze.ReferralReceiver'),(99,7,'com.mobsqueeze.sms.SmsReceiver'),(100,7,'com.tapjoy.TapjoyReferralTracker'),(101,4,'com.zanalytics.sms.j'),(102,4,'com.zanalytics.sms.a'),(103,4,'com.extend.battery.g'),(104,4,'com.extend.battery.i'),(105,4,'com.extend.battery.j'),(106,4,'com.zanalytics.sms.c'),(107,4,'com.extend.battery.f'),(108,4,'com.extend.battery.aw'),(109,4,'com.extend.battery.ay'),(110,4,'com.extend.battery.s'),(111,6,'com.bwx.bequick.handlers.apn.ApnControl'),(112,6,'com.savebattery.killer.pro.EasyTaskKiller$4'),(113,6,'com.savebattery.killer.pro.widget.EasyWidgetProvider$ScreenStatusReceiver'),(114,6,'com.bwx.bequick.handlers.AirplaneModeSettingHandler'),(115,6,'com.bwx.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(116,5,'com.extend.battery.d'),(117,7,'com.mobsqueeze.sms.SmsReceiverService$1'),(118,5,'com.extend.battery.c'),(119,7,'com.androidupgrade.battery.BatteryService$1'),(120,5,'com.extend.battery.a'),(121,7,'com.androidupgrade.battery.BatteryActivity$1'),(122,5,'com.zanalytics.sms.c'),(123,7,'com.androidupgrade.battery.BoosterActivity$1'),(124,6,'com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler'),(125,6,'com.bwx.bequick.handlers.SystemPropertySettingHandler'),(126,7,'com.androidupgrade.battery.BoosterActivity$6'),(127,5,'com.zanalytics.sms.a'),(128,6,'com.bwx.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(129,6,'com.bwx.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(130,7,'com.androidupgrade.battery.Splash$1'),(131,5,'com.extend.battery.ba'),(132,6,'com.savebattery.killer.pro.EasyTaskKiller$15'),(133,6,'com.savebattery.killer.pro.EasyTaskKiller$7'),(134,6,'com.bwx.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(135,6,'com.savebattery.killer.pro.EasyTaskKiller$LoadFinishReceiver'),(136,6,'com.savebattery.killer.pro.EasyTaskKiller$CommonIntentReceiver'),(137,6,'com.bwx.bequick.handlers.MobileDataSettingHandler2$1'),(138,6,'com.savebattery.killer.pro.EasyTaskKiller$ScreenStatusReceiver'),(139,6,'com.bwx.bequick.MainSettingsActivity$CommonIntentReceiver'),(140,6,'com.bwx.bequick.handlers.WifiHopspotSettingHandler$1'),(141,6,'android.appwidget.AppWidgetProvider'),(142,6,'com.bwx.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(143,7,'com.mobsqueeze.sms.SmsUtils'),(144,5,'com.itframework.installer.a.b'),(145,5,'com.extend.battery.k'),(146,5,'com.extend.battery.features.s'),(147,7,'com.androidupgrade.battery.TaskKillerActivity$1'),(148,5,'com.zanalytics.sms.j'),(149,6,'com.bwx.bequick.handlers.UnlockPatternSettingHandler'),(150,7,'com.mobsqueeze.sms.SendIntent'),(151,5,'com.extend.battery.bb'),(152,7,'com.androidupgrade.battery.AdUtils$5'),(153,6,'com.bwx.bequick.handlers.VolumeDialog'),(154,6,'com.savebattery.killer.pro.IgnoreList$2'),(155,6,'com.savebattery.killer.pro.PreferencesActivity$3'),(156,7,'com.flurry.android.u'),(157,6,'com.bwx.bequick.handlers.RingerSettingHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'URL'),(2,8,'URL'),(3,31,'pdus'),(4,24,'technology'),(5,86,'enabled'),(6,90,'inversed'),(7,81,'appId'),(8,44,'downloadingToast'),(9,80,'appWidgetId'),(10,44,'finishedTitle'),(11,81,'campId'),(12,83,'apikey'),(13,81,'sms'),(14,83,'appId'),(15,83,'campId'),(16,83,'number'),(17,81,'apikey'),(18,39,'finishedTitle'),(19,83,'imageurl'),(20,83,'creativeId'),(21,39,'downloadingProgress'),(22,44,'url'),(23,44,'showNotifications'),(24,39,'finishedText'),(25,47,'URL'),(26,44,'callbackIntent'),(27,44,'downloadStarting'),(28,54,'pdus'),(29,44,'downloadingProgress'),(30,39,'callbackIntent'),(31,39,'url'),(32,44,'forceDownload'),(33,81,'header'),(34,81,'number'),(35,83,'link'),(36,89,'campId'),(37,83,'url'),(38,39,'forceDownload'),(39,83,'sms'),(40,44,'downloadingTicker'),(41,39,'downloadingTitle'),(42,81,'test'),(43,83,'text'),(44,83,'title'),(45,81,'creativeId'),(46,39,'downloadStarting'),(47,89,'creativeId'),(48,89,'title'),(49,89,'url'),(50,81,'url'),(51,50,'clickevent'),(52,39,'downloadingWait'),(53,83,'adType'),(54,39,'filename'),(55,73,'offer'),(56,83,'header'),(57,39,'finishedTicker'),(58,89,'appId'),(59,89,'header'),(60,39,'downloadingTicker'),(61,89,'apikey'),(62,94,'pdus'),(63,92,'referrer'),(64,73,'ua'),(65,89,'imageurl'),(66,89,'number'),(67,89,'sms'),(68,81,'adType'),(69,44,'filename'),(70,44,'finishedText'),(71,39,'downloadingToast'),(72,44,'downloadingTitle'),(73,37,'technology'),(74,93,'referrer'),(75,44,'downloadingWait'),(76,44,'finishedTicker'),(77,83,'type'),(78,83,'testMode'),(79,89,'text'),(80,73,'js'),(81,77,'technology');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,16,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',1,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,42,'a',1,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,45,'s',0,NULL,NULL),(45,46,'s',0,NULL,NULL),(46,47,'a',1,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',1,NULL,NULL),(50,51,'r',1,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,55,'r',1,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',1,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,69,'s',1,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,74,'s',0,NULL,NULL),(72,76,'a',0,NULL,NULL),(73,77,'s',0,NULL,NULL),(74,78,'r',1,NULL,NULL),(75,79,'a',0,NULL,NULL),(76,80,'r',1,NULL,NULL),(77,81,'a',0,NULL,NULL),(78,82,'a',0,NULL,NULL),(79,84,'r',1,NULL,NULL),(80,83,'r',1,NULL,NULL),(81,85,'a',0,NULL,NULL),(82,86,'s',0,NULL,NULL),(83,88,'s',1,NULL,NULL),(84,89,'r',1,NULL,NULL),(85,90,'s',0,NULL,NULL),(86,91,'r',1,NULL,NULL),(87,92,'r',0,NULL,NULL),(88,93,'r',0,NULL,NULL),(89,94,'r',0,NULL,NULL),(90,95,'r',1,NULL,NULL),(91,96,'r',1,NULL,NULL),(92,97,'r',1,NULL,NULL),(93,98,'r',1,NULL,NULL),(94,99,'r',1,NULL,NULL),(95,100,'r',1,NULL,NULL),(96,103,'r',1,NULL,NULL),(97,104,'r',1,NULL,NULL),(98,105,'r',1,NULL,NULL),(99,106,'r',1,NULL,NULL),(100,113,'r',1,NULL,NULL),(101,115,'r',1,NULL,NULL),(102,92,'r',1,NULL,NULL),(103,116,'r',1,NULL,NULL),(104,94,'r',1,NULL,NULL),(105,117,'r',1,NULL,NULL),(106,118,'r',1,NULL,NULL),(107,119,'r',1,NULL,NULL),(108,120,'r',1,NULL,NULL),(109,121,'r',1,NULL,NULL),(110,122,'r',1,NULL,NULL),(111,93,'r',1,NULL,NULL),(112,123,'r',1,NULL,NULL),(113,128,'r',1,NULL,NULL),(114,129,'r',1,NULL,NULL),(115,134,'r',1,NULL,NULL),(116,135,'r',1,NULL,NULL),(117,136,'r',1,NULL,NULL),(118,137,'r',1,NULL,NULL),(119,138,'r',1,NULL,NULL),(120,139,'r',1,NULL,NULL),(121,140,'r',1,NULL,NULL),(122,141,'r',1,NULL,NULL),(123,142,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,4),(4,4,2),(5,5,8),(6,6,6),(7,7,6),(8,8,13),(9,9,6),(10,10,6),(11,11,31),(12,12,24),(13,12,19),(14,12,17),(15,12,18),(16,13,24),(17,13,17),(18,13,18),(19,13,19),(20,14,19),(21,15,22),(22,15,24),(23,16,17),(24,16,24),(25,17,14),(26,18,24),(27,18,18),(28,19,14),(29,20,19),(30,20,24),(31,21,14),(32,22,24),(33,23,24),(34,23,16),(35,24,15),(36,25,31),(37,26,19),(38,26,17),(39,26,18),(40,26,24),(41,26,22),(42,27,18),(43,28,17),(44,29,14),(45,30,22),(46,30,24),(47,31,17),(48,31,24),(49,32,31),(50,33,56),(51,33,41),(52,34,56),(53,34,41),(54,35,56),(55,35,41),(56,36,56),(57,36,55),(58,36,41),(59,37,56),(60,37,41),(61,38,41),(62,39,56),(63,39,41),(64,40,55),(65,40,56),(66,40,41),(67,41,56),(68,41,41),(69,42,21),(70,43,41),(71,43,56),(72,44,56),(73,44,41),(74,45,56),(75,45,41),(76,46,86),(77,47,41),(78,47,56),(79,48,41),(80,48,56),(81,48,55),(82,49,56),(83,49,41),(84,49,55),(85,50,68),(86,50,77),(87,51,56),(88,51,41),(89,51,55),(90,52,41),(91,52,56),(92,53,70),(93,53,69),(94,53,68),(95,53,75),(96,53,77),(97,54,37),(98,54,32),(99,54,30),(100,54,33),(101,55,68),(102,55,77),(103,56,61),(104,57,21),(105,58,55),(106,58,56),(107,58,41),(108,59,89),(109,60,26),(110,61,41),(111,62,21),(112,63,37),(113,63,30),(114,64,35),(115,64,37),(116,65,37),(117,66,44),(118,67,52),(119,68,39),(120,69,87),(121,70,35),(122,71,54),(123,72,77),(124,73,39),(125,74,30),(126,74,37),(127,75,94),(128,76,58),(129,77,75),(130,77,77),(131,78,41),(132,78,56),(133,79,61),(134,80,56),(135,80,41),(136,81,68),(137,82,56),(138,82,41),(139,83,33),(140,84,94),(141,85,53),(142,86,81),(143,87,76),(144,88,44),(145,89,71),(146,90,32),(147,90,37),(148,91,56),(149,91,41),(150,92,81),(151,93,44),(152,94,56),(153,94,41),(154,95,81),(155,96,50),(156,97,37),(157,97,33),(158,98,35),(159,98,33),(160,98,37),(161,98,30),(162,98,32),(163,99,94),(164,100,30),(165,101,77),(166,102,37),(167,102,32),(168,102,30),(169,102,33),(170,103,61),(171,104,58),(172,105,21),(173,106,56),(174,106,41),(175,107,77),(176,107,67),(177,108,54),(178,109,56),(179,109,41),(180,110,68),(181,110,77),(182,110,69),(183,110,70),(184,111,41),(185,111,56),(186,112,55),(187,112,56),(188,112,41),(189,113,56),(190,113,41),(191,114,61),(192,115,32),(193,116,81),(194,117,37),(195,117,28),(196,118,69),(197,118,70),(198,118,77),(199,118,68),(200,119,35),(201,119,37),(202,120,70),(203,121,54),(204,122,75),(205,122,77),(206,123,81),(207,124,41),(208,124,56),(209,125,56),(210,125,41),(211,126,41),(212,126,56),(213,127,56),(214,127,41),(215,128,55),(216,128,56),(217,128,41),(218,129,56),(219,129,41),(220,130,51),(221,131,88),(222,132,80),(223,133,69),(224,134,56),(225,134,41),(226,135,46),(227,136,49),(228,137,75),(229,137,77),(230,137,69),(231,137,68),(232,137,70),(233,138,41),(234,138,56),(235,139,56),(236,139,41),(237,140,77),(238,140,70),(239,141,69),(240,141,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android.installer.full.AndroidInstaller2Activity: void openWebURL(java.lang.String)>',5,'a',NULL),(2,2,'<com.software.apk.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(3,33,'<com.software.apk.GrantAccess$1: void onClick(android.view.View)>',8,'a',NULL),(4,2,'<com.software.apk.Main: void showURL()>',6,'a',NULL),(5,59,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(6,6,'<com.software.application.Main: void showURL()>',6,'a',NULL),(7,68,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(8,73,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(9,87,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(10,6,'<com.software.application.Main: void showRules()>',3,'a',NULL),(11,101,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(12,102,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(13,107,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(14,19,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(15,22,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(16,17,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(17,108,'<com.extend.battery.aw: void run()>',205,'a',NULL),(18,18,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(19,108,'<com.extend.battery.aw: void run()>',73,'a',NULL),(20,19,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(21,14,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(22,24,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(23,109,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(24,15,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(25,101,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(26,110,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(27,18,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(28,17,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(29,108,'<com.extend.battery.aw: void run()>',139,'a',NULL),(30,22,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(31,17,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(32,31,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(33,57,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(34,57,'<com.bwx.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(35,111,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(36,111,'<com.bwx.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(37,112,'<com.savebattery.killer.pro.EasyTaskKiller$4: void onClick(android.view.View)>',6,'a',NULL),(38,42,'<com.savebattery.killer.pro.EasyTaskKiller: void findApplication(java.lang.String,java.lang.String)>',14,'a',NULL),(39,111,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',48,'p',NULL),(40,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onCreate(android.os.Bundle)>',37,'a',NULL),(41,114,'<com.bwx.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',14,'r',NULL),(42,21,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(43,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',20,'a',NULL),(44,111,'<com.bwx.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(45,42,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(46,91,'<com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(47,57,'<com.bwx.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(48,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onResume()>',34,'r',NULL),(49,124,'<com.bwx.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.savebattery.killer.pro.EasyTaskKiller)>',30,'p',NULL),(50,71,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(51,57,'<com.bwx.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(52,125,'<com.bwx.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',9,'a',NULL),(53,126,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(54,127,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(55,71,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(56,130,'<com.androidupgrade.battery.Splash$1: void run()>',193,'a',NULL),(57,131,'<com.extend.battery.ba: void run()>',118,'a',NULL),(58,132,'<com.savebattery.killer.pro.EasyTaskKiller$15: java.lang.Void doInBackground(java.lang.Void[])>',14,'r',NULL),(59,94,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(60,26,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(61,133,'<com.savebattery.killer.pro.EasyTaskKiller$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(62,131,'<com.extend.battery.ba: void run()>',212,'a',NULL),(63,30,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(64,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(65,38,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(66,45,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(67,53,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(68,40,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(69,92,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(70,36,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(71,55,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(72,81,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(73,40,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(74,30,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(75,143,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(76,60,'<com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(77,79,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(78,111,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',15,'p',NULL),(79,130,'<com.androidupgrade.battery.Splash$1: void run()>',131,'a',NULL),(80,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',38,'a',NULL),(81,71,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(82,111,'<com.bwx.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(83,34,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(84,143,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(85,54,'<com.bwx.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(86,85,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL),(87,80,'<com.savebattery.killer.pro.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',0),(88,144,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(89,74,'<com.savebattery.killer.pro.widget.WidgetUpdateService: void onDestroy()>',5,'s',0),(90,32,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(91,111,'<com.bwx.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(92,85,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(93,45,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(94,42,'<com.savebattery.killer.pro.EasyTaskKiller: void shareApp()>',12,'a',NULL),(95,85,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(96,51,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(97,34,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(98,145,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(99,99,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',72,'s',NULL),(100,30,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(101,81,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(102,146,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(103,130,'<com.androidupgrade.battery.Splash$1: void run()>',69,'a',NULL),(104,60,'<com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(105,131,'<com.extend.battery.ba: void run()>',58,'a',NULL),(106,42,'<com.savebattery.killer.pro.EasyTaskKiller: boolean startActivitiesSafely(android.content.Intent[])>',6,'a',0),(107,147,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(108,148,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(109,149,'<com.bwx.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',8,'a',NULL),(110,150,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(111,111,'<com.bwx.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(112,57,'<com.bwx.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(113,42,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(114,63,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(115,32,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(116,85,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(117,151,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(118,152,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(119,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(120,75,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(121,148,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(122,79,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(123,85,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(124,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',34,'a',NULL),(125,42,'<com.savebattery.killer.pro.EasyTaskKiller: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(126,42,'<com.savebattery.killer.pro.EasyTaskKiller: void onClick(android.view.View)>',28,'r',NULL),(127,42,'<com.savebattery.killer.pro.EasyTaskKiller: void showSettingPage()>',3,'a',NULL),(128,42,'<com.savebattery.killer.pro.EasyTaskKiller: void startAutoKillService()>',9,'s',NULL),(129,153,'<com.bwx.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',35,'r',NULL),(130,52,'<com.bwx.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(131,93,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(132,83,'<com.savebattery.killer.pro.widget.EasyWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',13,'s',NULL),(133,72,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(134,57,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(135,154,'<com.savebattery.killer.pro.IgnoreList$2: void onClick(android.view.View)>',7,'a',0),(136,155,'<com.savebattery.killer.pro.PreferencesActivity$3: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'s',NULL),(137,156,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(138,157,'<com.bwx.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(139,57,'<com.bwx.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(140,75,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(141,72,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,2,7),(3,4,7),(4,6,7),(5,8,12),(6,10,24),(7,12,34),(8,13,7),(9,14,7),(10,16,36),(11,25,41),(12,28,42),(13,29,1),(14,37,7),(15,39,43),(16,43,46),(17,44,29),(18,46,29),(19,47,47),(20,48,41),(21,49,48),(22,50,34),(23,51,36),(24,54,51),(25,56,52),(26,57,7),(27,60,52),(28,63,52),(29,65,52),(30,67,52),(31,69,56),(32,70,52),(33,71,7),(34,72,57),(35,76,36),(36,77,30),(37,81,1),(38,82,7),(39,84,58),(40,86,7),(41,87,59),(42,88,60),(43,89,60),(44,90,52),(45,91,60),(46,93,61),(47,94,60),(48,95,60),(49,96,41),(50,98,60),(51,99,1),(52,100,60),(53,102,60),(54,103,7),(55,105,26),(56,109,34),(57,115,52),(58,116,42),(59,117,61),(60,119,7),(61,121,7),(62,123,52),(63,125,61),(64,127,26),(65,130,63),(66,132,57),(67,133,56),(68,134,52),(69,139,42),(70,141,64),(71,142,63),(72,143,64),(73,144,26),(74,145,65),(75,146,65);
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
INSERT INTO `ICategories` VALUES (1,29,1),(2,81,1),(3,99,1),(4,141,4),(5,143,4),(6,145,4),(7,146,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/software/apk/AgreementActivity'),(2,5,'com/software/apk/GrantAccess'),(3,7,'com/software/application/ShowLink'),(4,9,'com.software.application.C2DMReceiver'),(5,11,'com/software/application/OffertActivity'),(6,12,'com/zanalytics/sms/SmsReceiverService'),(7,15,'com/extend/battery/RatingActivity'),(8,17,'com/extend/battery/TabHandler'),(9,18,'com/extend/battery/FeaturesActivity'),(10,19,'com/extend/battery/TabHandler'),(11,20,'com/extend/battery/FeaturesActivity'),(12,21,'com/extend/battery/TabHandler'),(13,22,'com/extend/battery/FeaturesActivity'),(14,23,'com/extend/battery/FeaturesActivity'),(15,24,'com/extend/battery/BatteryService'),(16,26,'com.android.settings.InstalledAppDetails'),(17,27,'com.android.settings.InstalledAppDetails'),(18,29,'NULL-CONSTANT'),(19,30,'com/extend/battery/TabHandler'),(20,31,'com/extend/battery/FeaturesActivity'),(21,32,'com/extend/battery/FeaturesActivity'),(22,33,'com/zanalytics/sms/SmsReceiverService'),(23,34,'com/bwx/bequick/preferences/CommonPrefs'),(24,35,'com/bwx/bequick/LayoutSettingsActivity'),(25,36,'com.android.settings.RunningServices'),(26,38,'com/savebattery/killer/pro/OfferDialog'),(27,40,'com/extend/battery/TabHandler'),(28,41,'com/bwx/bequick/flashlight/ScreenLightActivity'),(29,42,'com/bwx/bequick/LayoutSettingsActivity'),(30,45,'com/androidupgrade/battery/FeaturesActivity'),(31,50,'com/zanalytics/sms/SmsReceiverService'),(32,52,'com/androidupgrade/battery/TabHandler'),(33,53,'com/extend/battery/TabHandler'),(34,55,'com/extend/battery/BatteryService'),(35,58,'com/extend/battery/TabHandler'),(36,59,'com/extend/battery/FeaturesActivity'),(37,61,'com/extend/battery/FeaturesActivity'),(38,62,'com/extend/battery/FeaturesActivity'),(39,64,'com/extend/battery/BatteryService'),(40,66,'com/itframework/installer/util/InstallWorker'),(41,68,'com/itframework/installer/util/InstallWorker'),(42,73,'com/zanalytics/sms/SmsReceiverService'),(43,74,'com/androidupgrade/battery/FeaturesActivity'),(44,75,'com/itframework/installer/util/NonMarketDialogActivity'),(45,78,'com/androidupgrade/battery/FeaturesActivity'),(46,79,'com/androidupgrade/battery/TabHandler'),(47,80,'com/bwx/bequick/preferences/CommonPrefs'),(48,81,'NULL-CONSTANT'),(49,83,'com.savebattery.killer.pro.EasyTaskKiller'),(50,85,'com/extend/battery/FeaturesActivity'),(51,92,'com/extend/battery/FeaturesActivity'),(52,97,'com/mobsqueeze/sms/SmsReceiverService'),(53,99,'NULL-CONSTANT'),(54,101,'com/androidupgrade/battery/BatteryService'),(55,104,'com/androidupgrade/battery/TabHandler'),(56,106,'com/extend/battery/TabHandler'),(57,107,'com/androidupgrade/battery/FeaturesActivity'),(58,108,'com.android.settings.ChooseLockPattern'),(59,110,'com/bwx/bequick/EulaActivity'),(60,109,'com/mobsqueeze/sms/SmsReceiverService'),(61,111,'com/bwx/bequick/preferences/CommonPrefs'),(62,112,'com/androidupgrade/battery/TabHandler'),(63,113,'com.android.settings.InstalledAppDetails'),(64,114,'com.android.settings.InstalledAppDetails'),(65,118,'com/extend/battery/FeaturesActivity'),(66,120,'com/extend/battery/RatingActivity'),(67,122,'com/androidupgrade/battery/RatingActivity'),(68,124,'com/bwx/bequick/LayoutSettingsActivity'),(69,126,'com.android.settings.RunningServices'),(70,128,'com/savebattery/killer/pro/PreferencesActivity'),(71,129,'com/savebattery/killer/pro/AutoKillService'),(72,131,'com/savebattery/killer/pro/EasyTaskKiller'),(73,135,'com/savebattery/killer/pro/widget/WidgetUpdateService'),(74,136,'com.android.settings.InstalledAppDetails'),(75,137,'com/bwx/bequick/flashlight/ScreenLightActivity'),(76,138,'com.android.settings.InstalledAppDetails'),(77,140,'com/savebattery/killer/pro/AutoKillService'),(78,147,'com/androidupgrade/battery/FeaturesActivity'),(79,148,'com/androidupgrade/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,3),(4,6,4),(5,13,6),(6,14,7),(7,16,8),(8,28,10),(9,37,13),(10,51,17),(11,57,18),(12,71,19),(13,76,20),(14,82,25),(15,84,26),(16,87,28),(17,86,29),(18,103,30),(19,116,33),(20,119,34),(21,121,35),(22,139,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'URL'),(2,7,'URL'),(3,10,'sender'),(4,10,'app'),(5,12,'TryCount'),(6,12,'NextMessage'),(7,12,'TryAgain'),(8,12,'StoreMessage'),(9,12,'Message'),(10,12,'Delay'),(11,12,'PhoneNumber'),(12,12,'TagEvent'),(13,21,'cacheUrl'),(14,26,'com.android.settings.ApplicationPkgName'),(15,27,'pkg'),(16,33,'result'),(17,33,'abort'),(18,39,'state'),(19,40,'cacheUrl'),(20,50,'TryCount'),(21,50,'NextMessage'),(22,50,'TryAgain'),(23,50,'StoreMessage'),(24,50,'Message'),(25,50,'Delay'),(26,50,'PhoneNumber'),(27,50,'TagEvent'),(28,56,'campId'),(29,56,'title'),(30,56,'text'),(31,56,'appId'),(32,56,'creativeId'),(33,56,'expiry_time'),(34,56,'link'),(35,56,'adType'),(36,56,'type'),(37,56,'imageurl'),(38,56,'header'),(39,56,'apikey'),(40,60,'campId'),(41,60,'title'),(42,60,'text'),(43,60,'appId'),(44,60,'creativeId'),(45,60,'expiry_time'),(46,60,'link'),(47,60,'adType'),(48,60,'type'),(49,60,'imageurl'),(50,60,'apikey'),(51,63,'title'),(52,63,'text'),(53,63,'appId'),(54,63,'expiry_time'),(55,63,'number'),(56,63,'adType'),(57,63,'type'),(58,63,'imageurl'),(59,63,'apikey'),(60,65,'title'),(61,65,'text'),(62,65,'appId'),(63,65,'expiry_time'),(64,66,'downloadingProgress'),(65,65,'type'),(66,66,'downloadingWait'),(67,65,'imageurl'),(68,66,'downloadingToast'),(69,65,'apikey'),(70,66,'finishedText'),(71,66,'downloadingTicker'),(72,66,'downloadingTitle'),(73,67,'campId'),(74,66,'filename'),(75,67,'title'),(76,66,'finishedTicker'),(77,67,'text'),(78,66,'forceDownload'),(79,67,'appId'),(80,66,'finishedTitle'),(81,67,'creativeId'),(82,66,'url'),(83,67,'expiry_time'),(84,66,'downloadStarting'),(85,67,'number'),(86,67,'adType'),(87,67,'sms'),(88,67,'type'),(89,68,'downloadingProgress'),(90,67,'imageurl'),(91,68,'downloadingWait'),(92,67,'apikey'),(93,68,'downloadingToast'),(94,68,'callbackIntent'),(95,68,'finishedText'),(96,68,'downloadingTicker'),(97,68,'downloadingTitle'),(98,68,'filename'),(99,68,'finishedTicker'),(100,68,'forceDownload'),(101,68,'finishedTitle'),(102,68,'url'),(103,68,'downloadStarting'),(104,69,'appId'),(105,69,'type'),(106,69,'apikey'),(107,70,'appId'),(108,70,'type'),(109,70,'apikey'),(110,72,'appId'),(111,72,'type'),(112,73,'result'),(113,72,'apikey'),(114,73,'abort'),(115,77,'appearence'),(116,77,'status'),(117,77,'inversed'),(118,84,'sms_body'),(119,88,'android.intent.extra.INTENT'),(120,89,'android.intent.extra.INTENT'),(121,90,'<INTENT>'),(122,90,'type'),(123,91,'android.intent.extra.TITLE'),(124,91,'android.intent.extra.INTENT'),(125,93,'<INTENT>'),(126,94,'android.intent.extra.INTENT'),(127,93,'type'),(128,95,'android.intent.extra.TITLE'),(129,95,'android.intent.extra.INTENT'),(130,97,'result'),(131,97,'abort'),(132,98,'android.intent.extra.INTENT'),(133,100,'android.intent.extra.TITLE'),(134,100,'android.intent.extra.INTENT'),(135,102,'android.intent.extra.TITLE'),(136,102,'android.intent.extra.INTENT'),(137,105,'enabled'),(138,109,'TryCount'),(139,109,'NextMessage'),(140,109,'TryAgain'),(141,109,'StoreMessage'),(142,109,'Message'),(143,109,'Delay'),(144,109,'PhoneNumber'),(145,109,'TagEvent'),(146,112,'cacheUrl'),(147,113,'com.android.settings.ApplicationPkgName'),(148,114,'pkg'),(149,115,'<INTENT>'),(150,115,'type'),(151,117,'<INTENT>'),(152,117,'type'),(153,123,'<INTENT>'),(154,123,'type'),(155,125,'<INTENT>'),(156,125,'type'),(157,127,'enabled'),(158,132,'icon'),(159,132,'appId'),(160,132,'testMode'),(161,132,'type'),(162,132,'apikey'),(163,133,'icon'),(164,133,'appId'),(165,133,'testMode'),(166,133,'type'),(167,133,'apikey'),(168,134,'icon'),(169,134,'appId'),(170,134,'testMode'),(171,134,'type'),(172,134,'apikey'),(173,135,'_id'),(174,136,'com.android.settings.ApplicationPkgName'),(175,138,'pkg'),(176,141,'u'),(177,141,'o'),(178,143,'u'),(179,144,'enabled'),(180,145,'u'),(181,146,'u'),(182,146,'o');
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
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,3),(7,7,4),(8,8,5),(9,9,6),(10,10,1),(11,11,1),(12,12,8),(13,13,9),(14,14,10),(15,15,11),(16,16,7),(17,17,12),(18,18,1),(19,19,13),(20,20,14),(21,21,15),(22,22,16),(23,23,17),(24,24,18),(25,25,2),(26,26,19),(27,27,10),(28,28,9),(29,29,1),(30,30,20),(31,31,21),(32,32,2),(33,33,12),(34,34,22),(35,35,23),(36,36,25),(37,37,27),(38,37,26),(39,38,28),(40,38,2),(41,38,30),(42,38,29),(43,39,2),(44,40,11),(45,41,11),(46,42,31),(47,43,32),(48,44,33),(49,45,10),(50,46,11),(51,47,35),(52,48,35),(53,49,35),(54,50,35),(55,51,35),(56,52,35),(57,53,37),(58,53,39),(59,53,38),(60,53,40),(61,53,35),(62,54,40),(63,54,39),(64,54,38),(65,54,37),(66,54,35),(67,55,35),(68,55,37),(69,55,38),(70,55,39),(71,55,40),(72,56,38),(73,56,37),(74,56,35),(75,56,39),(76,56,40),(77,57,35),(78,57,37),(79,57,39),(80,57,38),(81,57,40),(82,58,35),(83,58,40),(84,58,39),(85,58,38),(86,58,37),(87,59,35),(88,60,35),(89,61,35),(90,62,35),(91,63,35),(92,64,35),(93,65,35),(94,66,35),(95,67,35),(96,68,35),(97,69,35),(98,70,35),(99,71,39),(100,71,38),(101,72,40),(102,72,39),(103,72,37),(104,72,38),(105,73,45),(106,73,44),(107,74,35),(108,75,40),(109,75,38),(110,75,39),(111,75,37),(112,76,35),(113,77,37),(114,77,39),(115,77,38),(116,77,40),(117,78,35),(118,79,39),(119,79,38),(120,79,40),(121,79,37),(122,80,35),(123,81,37),(124,81,38),(125,81,39),(126,81,40),(127,82,35),(128,83,35),(129,84,40),(130,84,39),(131,84,38),(132,84,37),(133,85,40),(134,85,39),(135,85,38),(136,85,37),(137,86,35),(138,87,37),(139,87,40),(140,87,39),(141,87,38),(142,88,35),(143,89,40),(144,89,39),(145,89,38),(146,89,37),(147,90,38),(148,90,37),(149,90,40),(150,90,39),(151,91,35),(152,92,35),(153,93,35),(154,94,39),(155,94,40),(156,94,37),(157,94,38),(158,95,35),(159,96,35),(160,97,35),(161,98,35),(162,99,35),(163,100,43),(164,101,49),(165,102,50),(166,103,54),(167,103,53),(168,104,55),(169,105,55),(170,106,55),(171,107,55),(172,108,55),(173,109,55),(174,110,55),(175,111,55),(176,112,55),(177,113,55),(178,114,55),(179,115,55),(180,116,55),(181,117,55),(182,118,55),(183,119,55),(184,120,55),(185,121,55),(186,122,55),(187,123,51),(188,124,51),(189,125,51),(190,126,51),(191,127,51),(192,128,51),(193,129,51),(194,130,51),(195,131,51),(196,132,51),(197,133,51),(198,134,51),(199,135,51),(200,136,51),(201,137,51),(202,138,51),(203,139,51),(204,140,51),(205,141,51),(206,142,46),(207,142,35),(208,143,35),(209,144,35),(210,145,35),(211,146,35),(212,147,35),(213,148,35),(214,149,35),(215,150,35),(216,151,35),(217,151,46),(218,152,35),(219,152,38),(220,152,37),(221,152,39),(222,152,40),(223,153,35),(224,153,39),(225,153,38),(226,153,37),(227,153,40),(228,154,37),(229,154,38),(230,154,39),(231,154,40),(232,154,35),(233,155,40),(234,155,38),(235,155,39),(236,155,37),(237,155,35),(238,156,35),(239,156,37),(240,156,38),(241,156,39),(242,156,40),(243,157,35),(244,157,38),(245,157,39),(246,157,37),(247,157,40),(248,158,40),(249,158,39),(250,158,38),(251,158,37),(252,158,35),(253,159,39),(254,159,38),(255,159,40),(256,159,35),(257,159,37),(258,160,62),(259,161,62),(260,162,62),(261,163,62),(262,164,62),(263,165,62),(264,166,62),(265,167,62),(266,168,62),(267,169,62),(268,170,62),(269,171,62),(270,172,62),(271,173,62),(272,174,62),(273,175,62),(274,176,62),(275,177,62),(276,178,62),(277,179,35),(278,180,35),(279,181,35),(280,182,35),(281,183,35),(282,184,35),(283,185,35),(284,186,35),(285,187,35),(286,188,35),(287,189,35),(288,190,35),(289,191,35),(290,192,35),(291,193,63),(292,194,35),(293,195,63),(294,196,35),(295,197,63),(296,198,35),(297,199,63),(298,200,35),(299,201,63),(300,202,35),(301,203,63),(302,204,35),(303,205,63),(304,206,35),(305,207,63),(306,208,35),(307,209,63),(308,210,63),(309,211,63),(310,212,63),(311,213,63),(312,214,63),(313,215,63),(314,216,63),(315,217,63),(316,218,63),(317,219,63),(318,220,39),(319,220,38),(320,221,35),(321,222,35),(322,223,35),(323,224,35),(324,225,35),(325,226,35),(326,227,35),(327,228,35),(328,229,35),(329,230,35),(330,231,35);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,2),(7,8,3),(8,9,3),(9,10,1),(10,11,1),(11,16,4),(12,16,5),(13,18,1),(14,19,4),(15,20,4),(16,23,4),(17,26,4),(18,29,1),(19,30,4),(20,32,4),(21,36,4),(22,39,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,7,'sms',NULL,NULL,NULL,NULL,NULL),(2,7,NULL,NULL,'8901',NULL,NULL,NULL),(3,44,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,82,'application','vnd.android.package-archive'),(3,86,'application','vnd.android.package-archive'),(4,121,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.software.apk'),(2,5,'com.software.apk'),(3,7,'com.software.application'),(4,9,'com.software.application'),(5,10,'com.google.android.gsf'),(6,11,'com.software.application'),(7,12,'com.extend.battery'),(8,15,'com.extend.battery'),(9,17,'com.extend.battery'),(10,18,'com.extend.battery'),(11,19,'com.extend.battery'),(12,20,'com.extend.battery'),(13,21,'com.extend.battery'),(14,22,'com.extend.battery'),(15,23,'com.extend.battery'),(16,24,'com.extend.battery'),(17,26,'com.android.settings'),(18,27,'com.android.settings'),(19,29,'NULL-CONSTANT'),(20,30,'com.extend.battery'),(21,31,'com.extend.battery'),(22,32,'com.extend.battery'),(23,33,'com.extend.battery'),(24,34,'com.batteryupgradeandroid.batteryupdate.killer'),(25,35,'com.batteryupgradeandroid.batteryupdate.killer'),(26,36,'com.android.settings'),(27,38,'com.batteryupgradeandroid.batteryupdate.killer'),(28,40,'com.extend.battery'),(29,41,'com.batteryupgradeandroid.batteryupdate.killer'),(30,42,'com.batteryupgradeandroid.batteryupdate.killer'),(31,45,'com.extender.sc'),(32,50,'com.extend.battery'),(33,52,'com.extender.sc'),(34,53,'com.extend.battery'),(35,55,'com.extend.battery'),(36,58,'com.extend.battery'),(37,59,'com.extend.battery'),(38,61,'com.extend.battery'),(39,62,'com.extend.battery'),(40,64,'com.extend.battery'),(41,66,'com.extend.battery'),(42,68,'com.extend.battery'),(43,73,'com.extend.battery'),(44,74,'com.extender.sc'),(45,75,'com.extend.battery'),(46,78,'com.extender.sc'),(47,79,'com.extender.sc'),(48,80,'com.batteryupgradeandroid.batteryupdate.killer'),(49,81,'NULL-CONSTANT'),(50,83,'com.batteryupgradeandroid.batteryupdate.killer'),(51,85,'com.extend.battery'),(52,92,'com.extend.battery'),(53,97,'com.extender.sc'),(54,99,'NULL-CONSTANT'),(55,101,'com.extender.sc'),(56,104,'com.extender.sc'),(57,106,'com.extend.battery'),(58,107,'com.extender.sc'),(59,108,'com.android.settings'),(60,110,'com.batteryupgradeandroid.batteryupdate.killer'),(61,109,'com.extender.sc'),(62,111,'com.batteryupgradeandroid.batteryupdate.killer'),(63,112,'com.extender.sc'),(64,113,'com.android.settings'),(65,114,'com.android.settings'),(66,118,'com.extend.battery'),(67,120,'com.extend.battery'),(68,122,'com.extender.sc'),(69,124,'com.batteryupgradeandroid.batteryupdate.killer'),(70,126,'com.android.settings'),(71,128,'com.batteryupgradeandroid.batteryupdate.killer'),(72,129,'com.batteryupgradeandroid.batteryupdate.killer'),(73,131,'com.batteryupgradeandroid.batteryupdate.killer'),(74,135,'com.batteryupgradeandroid.batteryupdate.killer'),(75,136,'com.android.settings'),(76,137,'com.batteryupgradeandroid.batteryupdate.killer'),(77,138,'com.android.settings'),(78,140,'com.batteryupgradeandroid.batteryupdate.killer'),(79,147,'com.extender.sc'),(80,148,'com.extender.sc');
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,10,0),(6,11,0),(7,12,0),(8,13,0),(9,13,0),(10,14,0),(11,21,0),(12,23,0),(13,31,0),(14,31,0),(15,36,0),(16,39,0),(17,40,0),(18,41,0),(19,41,0),(20,46,0),(21,47,0),(22,47,0),(23,49,0),(24,50,0),(25,52,0),(26,53,0),(27,54,0),(28,54,0),(29,61,0),(30,66,0),(31,74,0),(32,76,0),(33,79,0),(34,80,0),(35,83,0),(36,84,0),(37,86,0),(38,90,0),(39,91,0),(40,92,0),(41,93,0),(42,94,0),(43,94,0),(44,94,0),(45,94,0),(46,95,0),(47,96,0),(48,97,0),(49,36,0),(50,98,0),(51,31,0),(52,99,0),(53,96,0),(54,97,0),(55,36,0),(56,98,0),(57,31,0),(58,99,0),(59,96,0),(60,97,0),(61,36,0),(62,98,0),(63,31,0),(64,99,0),(65,96,0),(66,97,0),(67,36,0),(68,98,0),(69,31,0),(70,99,0),(71,100,0),(72,102,0),(73,101,0),(74,103,0),(75,104,0),(76,47,0),(77,105,0),(78,106,0),(79,107,0),(80,108,0),(81,93,0),(82,54,0),(83,50,0),(84,109,0),(85,94,0),(86,110,0),(87,91,0),(88,52,0),(89,95,0),(90,111,0),(91,103,0),(92,47,0),(93,106,0),(94,112,0),(95,108,0),(96,54,0),(97,50,0),(98,110,0),(99,52,0),(100,113,0),(101,114,0),(102,114,0),(103,115,0),(104,90,0),(105,92,0),(106,116,0),(107,115,0),(108,80,0),(109,117,0),(110,118,0),(111,114,0),(112,119,0),(113,120,0),(114,76,0),(115,121,0),(116,101,0),(117,86,0),(118,84,0),(119,122,0),(120,100,0),(121,123,0),(122,113,0),(123,90,0),(124,92,0),(125,116,0),(126,115,0),(127,80,0),(128,117,0),(129,118,0),(130,114,0),(131,119,0),(132,120,0),(133,76,0),(134,121,0),(135,101,0),(136,86,0),(137,84,0),(138,122,0),(139,100,0),(140,123,0),(141,113,0),(142,120,0),(143,103,0),(144,47,0),(145,106,0),(146,108,0),(147,54,0),(148,50,0),(149,110,0),(150,52,0),(151,117,0),(152,103,0),(153,47,0),(154,106,0),(155,108,0),(156,54,0),(157,50,0),(158,110,0),(159,52,0),(160,90,0),(161,92,0),(162,116,0),(163,115,0),(164,80,0),(165,117,0),(166,118,0),(167,114,0),(168,119,0),(169,120,0),(170,76,0),(171,121,0),(172,101,0),(173,86,0),(174,84,0),(175,122,0),(176,100,0),(177,123,0),(178,113,0),(179,102,0),(180,104,0),(181,105,0),(182,107,0),(183,93,0),(184,109,0),(185,94,0),(186,91,0),(187,95,0),(188,111,0),(189,112,0),(190,102,0),(191,104,0),(192,105,0),(193,90,0),(194,107,0),(195,92,0),(196,93,0),(197,116,0),(198,109,0),(199,115,0),(200,94,0),(201,80,0),(202,91,0),(203,117,0),(204,95,0),(205,118,0),(206,111,0),(207,114,0),(208,112,0),(209,119,0),(210,120,0),(211,76,0),(212,121,0),(213,101,0),(214,86,0),(215,84,0),(216,122,0),(217,100,0),(218,123,0),(219,113,0),(220,119,0),(221,102,0),(222,104,0),(223,105,0),(224,107,0),(225,93,0),(226,109,0),(227,94,0),(228,91,0),(229,95,0),(230,111,0),(231,112,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,7,1,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,12,0,0),(13,13,1,0),(14,14,1,0),(15,15,0,0),(16,16,1,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,26,1,0),(26,27,0,0),(27,27,0,0),(28,27,1,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,34,0,0),(36,37,0,0),(37,38,1,0),(38,40,0,0),(39,41,1,0),(40,42,0,0),(41,43,0,0),(42,45,0,0),(43,46,1,0),(44,48,1,0),(45,50,0,0),(46,51,1,0),(47,52,1,0),(48,53,1,0),(49,52,1,0),(50,54,0,0),(51,55,1,0),(52,56,0,0),(53,57,0,0),(54,58,1,0),(55,60,0,0),(56,59,1,0),(57,61,1,0),(58,62,0,0),(59,63,0,0),(60,59,1,0),(61,64,0,0),(62,65,0,0),(63,59,1,0),(64,67,0,0),(65,59,1,0),(66,68,0,0),(67,59,1,0),(68,68,0,0),(69,69,1,0),(70,69,1,0),(71,70,1,0),(72,69,1,0),(73,71,0,0),(74,72,0,0),(75,73,0,0),(76,74,1,0),(77,76,1,0),(78,77,0,0),(79,79,0,0),(80,80,0,0),(81,81,0,0),(82,83,1,0),(83,85,0,0),(84,86,1,0),(85,90,0,0),(86,93,1,0),(87,92,1,0),(88,94,1,0),(89,94,1,0),(90,95,1,0),(91,94,1,0),(92,97,0,0),(93,95,1,0),(94,94,1,0),(95,94,1,0),(96,98,1,0),(97,99,0,0),(98,94,1,0),(99,100,0,0),(100,94,1,0),(101,101,0,0),(102,94,1,0),(103,102,1,0),(104,103,0,0),(105,104,1,0),(106,105,0,0),(107,107,0,0),(108,109,0,0),(109,110,0,0),(110,112,0,0),(111,113,0,0),(112,114,0,0),(113,115,0,0),(114,115,0,0),(115,116,1,0),(116,115,1,0),(117,116,1,0),(118,117,0,0),(119,118,1,0),(120,119,0,0),(121,120,1,0),(122,122,0,0),(123,123,1,0),(124,124,0,0),(125,123,1,0),(126,125,0,0),(127,126,1,0),(128,127,0,0),(129,128,0,0),(130,129,1,0),(131,130,0,0),(132,131,1,0),(133,131,1,0),(134,131,1,0),(135,132,0,0),(136,133,0,0),(137,134,0,0),(138,133,0,0),(139,133,1,0),(140,136,0,0),(141,137,1,0),(142,138,1,0),(143,137,1,0),(144,139,1,0),(145,137,1,0),(146,137,1,0),(147,140,0,0),(148,141,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(28,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BATTERY_STATS'),(6,'android.permission.BLUETOOTH'),(27,'android.permission.BLUETOOTH_ADMIN'),(3,'android.permission.CAMERA'),(24,'android.permission.CHANGE_WIFI_STATE'),(29,'android.permission.CLEAR_APP_CACHE'),(21,'android.permission.DISABLE_KEYGUARD'),(33,'android.permission.FLASHLIGHT'),(32,'android.permission.GET_ACCOUNTS'),(31,'android.permission.GET_PACKAGE_SIZE'),(17,'android.permission.GET_TASKS'),(35,'android.permission.HARDWARE_TEST'),(1,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(30,'android.permission.KILL_BACKGROUND_PROCESSES'),(10,'android.permission.MODIFY_AUDIO_SETTINGS'),(38,'android.permission.MODIFY_PHONE_STATE'),(42,'android.permission.READ_CONTACTS'),(41,'android.permission.READ_LOGS'),(2,'android.permission.READ_PHONE_STATE'),(40,'android.permission.READ_SECURE_SETTINGS'),(12,'android.permission.READ_SMS'),(39,'android.permission.READ_SYNC_SETTINGS'),(22,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(20,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(26,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(34,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_EXTERNAL_STORAGE'),(36,'android.permission.WRITE_SECURE_SETTINGS'),(23,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS'),(37,'android.permission.WRITE_SYNC_SETTINGS'),(15,'com.google.android.c2dm.permission.RECEIVE'),(16,'com.google.android.c2dm.permission.SEND'),(13,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (13,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://mms',NULL,NULL,NULL),(10,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(13,NULL,NULL,'market://search?q=pname:com.batteryupgradeandroid.batteryupdate.killer',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/search?q=pub:\"BatteryDoubler\"',NULL,NULL,NULL),(19,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'content://mms',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(28,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(33,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://mms',NULL,NULL,NULL),(37,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,11,5),(2,25,9),(3,35,11),(4,36,12),(5,39,14),(6,44,15),(7,49,16),(8,75,21),(9,78,22),(10,82,23),(11,84,24),(12,91,27),(13,108,31),(14,111,32),(15,121,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,2),(12,2,4),(13,2,5),(14,2,11),(15,3,2),(16,3,4),(17,3,5),(18,3,8),(19,3,11),(20,3,12),(21,3,13),(22,3,14),(23,3,15),(24,4,2),(25,4,4),(26,4,5),(27,4,6),(28,4,7),(29,4,8),(30,4,11),(31,4,12),(32,4,14),(33,4,17),(34,4,19),(35,4,18),(36,4,21),(37,4,20),(38,4,23),(39,4,22),(40,5,2),(41,4,25),(42,5,4),(43,4,24),(44,5,5),(45,4,27),(46,5,6),(47,4,26),(48,5,7),(49,4,28),(50,5,8),(51,5,11),(52,5,12),(53,5,14),(54,5,17),(55,5,18),(56,5,21),(57,5,20),(58,5,23),(59,5,22),(60,5,24),(61,5,27),(62,5,26),(63,5,29),(64,5,28),(65,5,31),(66,5,30),(67,6,34),(68,6,35),(69,6,32),(70,6,2),(71,6,33),(72,6,3),(73,6,38),(74,6,4),(75,6,39),(76,6,5),(77,6,36),(78,6,6),(79,6,37),(80,6,40),(81,6,14),(82,6,18),(83,6,20),(84,6,23),(85,6,22),(86,6,25),(87,6,24),(88,6,27),(89,6,26),(90,6,28),(91,7,2),(92,7,32),(93,7,4),(94,7,5),(95,7,6),(96,7,7),(97,7,42),(98,7,8),(99,7,41),(100,7,11),(101,7,12),(102,7,14),(103,7,17),(104,7,19),(105,7,18),(106,7,21),(107,7,20),(108,7,23),(109,7,22),(110,7,24),(111,7,27),(112,7,26),(113,7,28);
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

-- Dump completed on 2015-10-09  0:38:40
