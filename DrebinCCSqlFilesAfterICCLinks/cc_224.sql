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
) ENGINE=InnoDB AUTO_INCREMENT=2826 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,2,2,NULL),(2,2,2,2,NULL),(3,1,5,2,NULL),(4,2,5,2,NULL),(5,1,23,2,NULL),(6,2,23,2,NULL),(7,1,40,2,NULL),(8,2,40,2,NULL),(9,1,6,2,NULL),(10,2,6,2,NULL),(11,1,10,2,NULL),(12,2,10,2,NULL),(13,1,11,2,NULL),(14,2,11,2,NULL),(15,1,13,2,NULL),(16,3,3,2,NULL),(17,2,13,2,NULL),(18,5,4,2,NULL),(19,1,74,2,NULL),(20,16,2,2,NULL),(21,2,74,2,NULL),(22,28,2,2,NULL),(23,1,79,2,NULL),(24,76,2,2,NULL),(25,2,79,2,NULL),(26,116,2,2,NULL),(27,1,14,2,NULL),(28,44,2,2,NULL),(29,2,14,2,NULL),(30,88,2,2,NULL),(31,16,1,2,NULL),(32,89,2,2,NULL),(33,28,1,2,NULL),(34,91,2,2,NULL),(35,1,31,2,NULL),(36,94,2,2,NULL),(37,2,31,2,NULL),(38,95,2,2,NULL),(39,1,36,2,NULL),(40,98,2,2,NULL),(41,2,36,2,NULL),(42,100,2,2,NULL),(43,1,96,2,NULL),(44,102,2,2,NULL),(45,2,96,2,NULL),(46,127,2,2,NULL),(47,1,97,2,NULL),(48,46,2,2,NULL),(49,2,97,2,NULL),(50,144,2,2,NULL),(51,1,98,2,NULL),(52,77,2,2,NULL),(53,2,98,2,NULL),(54,105,2,2,NULL),(55,1,99,2,NULL),(56,43,2,2,NULL),(57,2,99,2,NULL),(58,51,2,2,NULL),(59,1,21,2,NULL),(60,139,2,2,NULL),(61,2,21,2,NULL),(62,84,2,2,NULL),(63,76,1,2,NULL),(64,87,2,2,NULL),(65,116,1,2,NULL),(66,90,2,2,NULL),(67,1,39,2,NULL),(68,93,2,2,NULL),(69,2,39,2,NULL),(70,115,2,2,NULL),(71,1,47,2,NULL),(72,117,2,2,NULL),(73,2,47,2,NULL),(74,123,2,2,NULL),(75,1,50,2,NULL),(76,125,2,2,NULL),(77,2,50,2,NULL),(78,69,2,2,NULL),(79,1,52,2,NULL),(80,70,2,2,NULL),(81,2,52,2,NULL),(82,72,2,2,NULL),(83,1,54,2,NULL),(84,132,2,2,NULL),(85,2,54,2,NULL),(86,133,2,2,NULL),(87,1,103,2,NULL),(88,134,2,2,NULL),(89,2,103,2,NULL),(90,56,2,2,NULL),(91,1,106,2,NULL),(92,60,2,2,NULL),(93,2,106,2,NULL),(94,63,2,2,NULL),(95,1,108,2,NULL),(96,65,2,2,NULL),(97,2,108,2,NULL),(98,67,2,2,NULL),(99,1,110,2,NULL),(100,16,5,2,NULL),(101,2,110,2,NULL),(102,28,5,2,NULL),(103,1,41,2,NULL),(104,76,5,2,NULL),(105,2,41,2,NULL),(106,116,5,2,NULL),(107,44,1,2,NULL),(108,44,5,2,NULL),(109,88,1,2,NULL),(110,88,5,2,NULL),(111,89,1,2,NULL),(112,89,5,2,NULL),(113,91,1,2,NULL),(114,91,5,2,NULL),(115,94,1,2,NULL),(116,94,5,2,NULL),(117,95,1,2,NULL),(118,95,5,2,NULL),(119,98,1,2,NULL),(120,98,5,2,NULL),(121,100,1,2,NULL),(122,100,5,2,NULL),(123,102,1,2,NULL),(124,102,5,2,NULL),(125,127,1,2,NULL),(126,127,5,2,NULL),(127,1,46,2,NULL),(128,46,5,2,NULL),(129,2,46,2,NULL),(130,144,5,2,NULL),(131,1,49,2,NULL),(132,77,5,2,NULL),(133,2,49,2,NULL),(134,105,5,2,NULL),(135,1,53,2,NULL),(136,43,5,2,NULL),(137,2,53,2,NULL),(138,51,5,2,NULL),(139,46,1,2,NULL),(140,139,5,2,NULL),(141,144,1,2,NULL),(142,84,5,2,NULL),(143,77,1,2,NULL),(144,87,5,2,NULL),(145,105,1,2,NULL),(146,90,5,2,NULL),(147,1,66,2,NULL),(148,93,5,2,NULL),(149,2,66,2,NULL),(150,115,5,2,NULL),(151,1,76,2,NULL),(152,117,5,2,NULL),(153,2,76,2,NULL),(154,123,5,2,NULL),(155,1,80,2,NULL),(156,125,5,2,NULL),(157,2,80,2,NULL),(158,69,5,2,NULL),(159,1,84,2,NULL),(160,70,5,2,NULL),(161,2,84,2,NULL),(162,72,5,2,NULL),(163,1,86,2,NULL),(164,132,5,2,NULL),(165,2,86,2,NULL),(166,133,5,2,NULL),(167,43,1,2,NULL),(168,134,5,2,NULL),(169,1,90,2,NULL),(170,56,5,2,NULL),(171,2,90,2,NULL),(172,60,5,2,NULL),(173,1,92,2,NULL),(174,63,5,2,NULL),(175,2,92,2,NULL),(176,65,5,2,NULL),(177,1,100,2,NULL),(178,67,5,2,NULL),(179,2,100,2,NULL),(180,16,23,2,NULL),(181,1,101,2,NULL),(182,28,23,2,NULL),(183,2,101,2,NULL),(184,76,23,2,NULL),(185,1,113,2,NULL),(186,116,23,2,NULL),(187,2,113,2,NULL),(188,44,23,2,NULL),(189,1,114,2,NULL),(190,88,23,2,NULL),(191,2,114,2,NULL),(192,89,23,2,NULL),(193,1,115,2,NULL),(194,91,23,2,NULL),(195,2,115,2,NULL),(196,94,23,2,NULL),(197,1,116,2,NULL),(198,95,23,2,NULL),(199,2,116,2,NULL),(200,98,23,2,NULL),(201,1,117,2,NULL),(202,100,23,2,NULL),(203,2,117,2,NULL),(204,102,23,2,NULL),(205,1,118,2,NULL),(206,127,23,2,NULL),(207,2,118,2,NULL),(208,46,23,2,NULL),(209,1,119,2,NULL),(210,144,23,2,NULL),(211,2,119,2,NULL),(212,77,23,2,NULL),(213,1,120,2,NULL),(214,105,23,2,NULL),(215,2,120,2,NULL),(216,43,23,2,NULL),(217,1,121,2,NULL),(218,51,23,2,NULL),(219,2,121,2,NULL),(220,139,23,2,NULL),(221,1,122,2,NULL),(222,84,23,2,NULL),(223,2,122,2,NULL),(224,87,23,2,NULL),(225,1,123,2,NULL),(226,90,23,2,NULL),(227,7,8,2,NULL),(228,2,123,2,NULL),(229,93,23,2,NULL),(230,11,7,2,NULL),(231,1,61,2,NULL),(232,115,23,2,NULL),(233,16,6,2,NULL),(234,2,61,2,NULL),(235,117,23,2,NULL),(236,28,6,2,NULL),(237,51,1,2,NULL),(238,123,23,2,NULL),(239,76,6,2,NULL),(240,139,1,2,NULL),(241,125,23,2,NULL),(242,116,6,2,NULL),(243,84,1,2,NULL),(244,69,23,2,NULL),(245,44,6,2,NULL),(246,87,1,2,NULL),(247,70,23,2,NULL),(248,88,6,2,NULL),(249,90,1,2,NULL),(250,72,23,2,NULL),(251,89,6,2,NULL),(252,93,1,2,NULL),(253,132,23,2,NULL),(254,91,6,2,NULL),(255,115,1,2,NULL),(256,133,23,2,NULL),(257,94,6,2,NULL),(258,117,1,2,NULL),(259,134,23,2,NULL),(260,95,6,2,NULL),(261,123,1,2,NULL),(262,56,23,2,NULL),(263,125,1,2,NULL),(264,98,6,2,NULL),(265,60,23,2,NULL),(266,1,83,2,NULL),(267,100,6,2,NULL),(268,63,23,2,NULL),(269,2,83,2,NULL),(270,102,6,2,NULL),(271,65,23,2,NULL),(272,69,1,2,NULL),(273,127,6,2,NULL),(274,67,23,2,NULL),(275,70,1,2,NULL),(276,46,6,2,NULL),(277,16,40,2,NULL),(278,72,1,2,NULL),(279,28,40,2,NULL),(280,144,6,2,NULL),(281,1,102,2,NULL),(282,76,40,2,NULL),(283,77,6,2,NULL),(284,2,102,2,NULL),(285,116,40,2,NULL),(286,132,1,2,NULL),(287,105,6,2,NULL),(288,44,40,2,NULL),(289,133,1,2,NULL),(290,43,6,2,NULL),(291,88,40,2,NULL),(292,134,1,2,NULL),(293,51,6,2,NULL),(294,89,40,2,NULL),(295,1,111,2,NULL),(296,139,6,2,NULL),(297,91,40,2,NULL),(298,2,111,2,NULL),(299,84,6,2,NULL),(300,94,40,2,NULL),(301,56,1,2,NULL),(302,87,6,2,NULL),(303,95,40,2,NULL),(304,60,1,2,NULL),(305,90,6,2,NULL),(306,98,40,2,NULL),(307,63,1,2,NULL),(308,93,6,2,NULL),(309,100,40,2,NULL),(310,65,1,2,NULL),(311,115,6,2,NULL),(312,102,40,2,NULL),(313,67,1,2,NULL),(314,117,6,2,NULL),(315,127,40,2,NULL),(316,1,104,2,NULL),(317,123,6,2,NULL),(318,46,40,2,NULL),(319,2,104,2,NULL),(320,125,6,2,NULL),(321,144,40,2,NULL),(322,1,91,2,NULL),(323,69,6,2,NULL),(324,77,40,2,NULL),(325,2,91,2,NULL),(326,70,6,2,NULL),(327,105,40,2,NULL),(328,1,93,2,NULL),(329,72,6,2,NULL),(330,43,40,2,NULL),(331,2,93,2,NULL),(332,132,6,2,NULL),(333,51,40,2,NULL),(334,1,94,2,NULL),(335,133,6,2,NULL),(336,139,40,2,NULL),(337,2,94,2,NULL),(338,134,6,2,NULL),(339,84,40,2,NULL),(340,1,95,2,NULL),(341,56,6,2,NULL),(342,87,40,2,NULL),(343,2,95,2,NULL),(344,60,6,2,NULL),(345,90,40,2,NULL),(346,63,6,2,NULL),(347,1,105,2,NULL),(348,93,40,2,NULL),(349,2,105,2,NULL),(350,65,6,2,NULL),(351,115,40,2,NULL),(352,1,107,2,NULL),(353,67,6,2,NULL),(354,117,40,2,NULL),(355,2,107,2,NULL),(356,16,10,2,NULL),(357,123,40,2,NULL),(358,1,109,2,NULL),(359,28,10,2,NULL),(360,125,40,2,NULL),(361,2,109,2,NULL),(362,76,10,2,NULL),(363,69,40,2,NULL),(364,1,112,2,NULL),(365,116,10,2,NULL),(366,70,40,2,NULL),(367,2,112,2,NULL),(368,44,10,2,NULL),(369,72,40,2,NULL),(370,88,10,2,NULL),(371,132,40,2,NULL),(372,89,10,2,NULL),(373,133,40,2,NULL),(374,91,10,2,NULL),(375,134,40,2,NULL),(376,94,10,2,NULL),(377,56,40,2,NULL),(378,95,10,2,NULL),(379,60,40,2,NULL),(380,98,10,2,NULL),(381,63,40,2,NULL),(382,100,10,2,NULL),(383,65,40,2,NULL),(384,102,10,2,NULL),(385,67,40,2,NULL),(386,127,10,2,NULL),(387,21,15,2,NULL),(388,46,10,2,NULL),(389,21,26,2,NULL),(390,144,10,2,NULL),(391,16,14,2,NULL),(392,77,10,2,NULL),(393,28,14,2,NULL),(394,105,10,2,NULL),(395,76,14,2,NULL),(396,43,10,2,NULL),(397,116,14,2,NULL),(398,51,10,2,NULL),(399,44,14,2,NULL),(400,139,10,2,NULL),(401,88,14,2,NULL),(402,84,10,2,NULL),(403,89,14,2,NULL),(404,87,10,2,NULL),(405,91,14,2,NULL),(406,90,10,2,NULL),(407,94,14,2,NULL),(408,93,10,2,NULL),(409,95,14,2,NULL),(410,115,10,2,NULL),(411,98,14,2,NULL),(412,117,10,2,NULL),(413,100,14,2,NULL),(414,123,10,2,NULL),(415,102,14,2,NULL),(416,125,10,2,NULL),(417,127,14,2,NULL),(418,69,10,2,NULL),(419,46,14,2,NULL),(420,70,10,2,NULL),(421,144,14,2,NULL),(422,72,10,2,NULL),(423,77,14,2,NULL),(424,132,10,2,NULL),(425,105,14,2,NULL),(426,133,10,2,NULL),(427,43,14,2,NULL),(428,134,10,2,NULL),(429,51,14,2,NULL),(430,56,10,2,NULL),(431,139,14,2,NULL),(432,60,10,2,NULL),(433,84,14,2,NULL),(434,63,10,2,NULL),(435,87,14,2,NULL),(436,65,10,2,NULL),(437,90,14,2,NULL),(438,67,10,2,NULL),(439,93,14,2,NULL),(440,16,11,2,NULL),(441,115,14,2,NULL),(442,28,11,2,NULL),(443,117,14,2,NULL),(444,76,11,2,NULL),(445,123,14,2,NULL),(446,116,11,2,NULL),(447,125,14,2,NULL),(448,44,11,2,NULL),(449,69,14,2,NULL),(450,88,11,2,NULL),(451,70,14,2,NULL),(452,89,11,2,NULL),(453,72,14,2,NULL),(454,91,11,2,NULL),(455,132,14,2,NULL),(456,94,11,2,NULL),(457,133,14,2,NULL),(458,95,11,2,NULL),(459,134,14,2,NULL),(460,98,11,2,NULL),(461,56,14,2,NULL),(462,100,11,2,NULL),(463,60,14,2,NULL),(464,102,11,2,NULL),(465,63,14,2,NULL),(466,127,11,2,NULL),(467,65,14,2,NULL),(468,46,11,2,NULL),(469,67,14,2,NULL),(470,144,11,2,NULL),(471,24,27,2,NULL),(472,77,11,2,NULL),(473,24,43,2,NULL),(474,105,11,2,NULL),(475,32,20,2,NULL),(476,43,11,2,NULL),(477,32,34,2,NULL),(478,51,11,2,NULL),(479,139,11,2,NULL),(480,16,13,2,NULL),(481,84,11,2,NULL),(482,16,74,2,NULL),(483,87,11,2,NULL),(484,16,79,2,NULL),(485,90,11,2,NULL),(486,16,31,2,NULL),(487,93,11,2,NULL),(488,16,36,2,NULL),(489,115,11,2,NULL),(490,16,96,2,NULL),(491,117,11,2,NULL),(492,16,97,2,NULL),(493,123,11,2,NULL),(494,16,98,2,NULL),(495,125,11,2,NULL),(496,16,99,2,NULL),(497,69,11,2,NULL),(498,16,21,2,NULL),(499,70,11,2,NULL),(500,16,39,2,NULL),(501,72,11,2,NULL),(502,16,47,2,NULL),(503,132,11,2,NULL),(504,16,50,2,NULL),(505,133,11,2,NULL),(506,16,52,2,NULL),(507,134,11,2,NULL),(508,16,54,2,NULL),(509,56,11,2,NULL),(510,16,103,2,NULL),(511,60,11,2,NULL),(512,16,106,2,NULL),(513,63,11,2,NULL),(514,16,108,2,NULL),(515,65,11,2,NULL),(516,16,110,2,NULL),(517,67,11,2,NULL),(518,16,41,2,NULL),(519,28,13,2,NULL),(520,16,46,2,NULL),(521,76,13,2,NULL),(522,16,49,2,NULL),(523,116,13,2,NULL),(524,16,53,2,NULL),(525,44,13,2,NULL),(526,16,66,2,NULL),(527,88,13,2,NULL),(528,16,76,2,NULL),(529,89,13,2,NULL),(530,16,80,2,NULL),(531,91,13,2,NULL),(532,16,84,2,NULL),(533,94,13,2,NULL),(534,16,86,2,NULL),(535,95,13,2,NULL),(536,16,90,2,NULL),(537,98,13,2,NULL),(538,16,92,2,NULL),(539,100,13,2,NULL),(540,16,100,2,NULL),(541,102,13,2,NULL),(542,16,101,2,NULL),(543,127,13,2,NULL),(544,16,113,2,NULL),(545,46,13,2,NULL),(546,16,114,2,NULL),(547,144,13,2,NULL),(548,16,115,2,NULL),(549,77,13,2,NULL),(550,16,116,2,NULL),(551,105,13,2,NULL),(552,16,117,2,NULL),(553,43,13,2,NULL),(554,16,118,2,NULL),(555,51,13,2,NULL),(556,16,119,2,NULL),(557,139,13,2,NULL),(558,16,120,2,NULL),(559,84,13,2,NULL),(560,16,121,2,NULL),(561,87,13,2,NULL),(562,16,122,2,NULL),(563,90,13,2,NULL),(564,16,123,2,NULL),(565,93,13,2,NULL),(566,16,61,2,NULL),(567,115,13,2,NULL),(568,16,83,2,NULL),(569,117,13,2,NULL),(570,16,102,2,NULL),(571,123,13,2,NULL),(572,16,111,2,NULL),(573,125,13,2,NULL),(574,16,104,2,NULL),(575,69,13,2,NULL),(576,16,91,2,NULL),(577,70,13,2,NULL),(578,16,93,2,NULL),(579,72,13,2,NULL),(580,16,94,2,NULL),(581,132,13,2,NULL),(582,16,95,2,NULL),(583,133,13,2,NULL),(584,16,105,2,NULL),(585,134,13,2,NULL),(586,16,107,2,NULL),(587,56,13,2,NULL),(588,16,109,2,NULL),(589,60,13,2,NULL),(590,16,112,2,NULL),(591,63,13,2,NULL),(592,18,20,2,NULL),(593,65,13,2,NULL),(594,18,34,2,NULL),(595,67,13,2,NULL),(596,28,74,2,NULL),(597,76,74,2,NULL),(598,28,79,2,NULL),(599,116,74,2,NULL),(600,28,31,2,NULL),(601,44,74,2,NULL),(602,28,36,2,NULL),(603,88,74,2,NULL),(604,28,96,2,NULL),(605,89,74,2,NULL),(606,28,97,2,NULL),(607,91,74,2,NULL),(608,28,98,2,NULL),(609,94,74,2,NULL),(610,28,99,2,NULL),(611,95,74,2,NULL),(612,28,21,2,NULL),(613,98,74,2,NULL),(614,28,39,2,NULL),(615,100,74,2,NULL),(616,28,47,2,NULL),(617,102,74,2,NULL),(618,28,50,2,NULL),(619,127,74,2,NULL),(620,28,52,2,NULL),(621,46,74,2,NULL),(622,28,54,2,NULL),(623,144,74,2,NULL),(624,28,103,2,NULL),(625,77,74,2,NULL),(626,28,106,2,NULL),(627,105,74,2,NULL),(628,28,108,2,NULL),(629,43,74,2,NULL),(630,28,110,2,NULL),(631,112,65,2,NULL),(632,51,74,2,NULL),(633,28,41,2,NULL),(634,28,61,2,NULL),(635,139,74,2,NULL),(636,28,46,2,NULL),(637,76,61,2,NULL),(638,84,74,2,NULL),(639,28,49,2,NULL),(640,116,61,2,NULL),(641,87,74,2,NULL),(642,28,53,2,NULL),(643,44,61,2,NULL),(644,28,66,2,NULL),(645,90,74,2,NULL),(646,88,61,2,NULL),(647,28,76,2,NULL),(648,93,74,2,NULL),(649,89,61,2,NULL),(650,115,74,2,NULL),(651,28,80,2,NULL),(652,91,61,2,NULL),(653,117,74,2,NULL),(654,28,84,2,NULL),(655,94,61,2,NULL),(656,123,74,2,NULL),(657,28,86,2,NULL),(658,95,61,2,NULL),(659,28,90,2,NULL),(660,125,74,2,NULL),(661,98,61,2,NULL),(662,69,74,2,NULL),(663,28,92,2,NULL),(664,100,61,2,NULL),(665,28,100,2,NULL),(666,70,74,2,NULL),(667,102,61,2,NULL),(668,72,74,2,NULL),(669,28,101,2,NULL),(670,127,61,2,NULL),(671,28,113,2,NULL),(672,132,74,2,NULL),(673,46,61,2,NULL),(674,133,74,2,NULL),(675,28,114,2,NULL),(676,144,61,2,NULL),(677,134,74,2,NULL),(678,28,115,2,NULL),(679,77,61,2,NULL),(680,56,74,2,NULL),(681,28,116,2,NULL),(682,105,61,2,NULL),(683,60,74,2,NULL),(684,28,117,2,NULL),(685,43,61,2,NULL),(686,63,74,2,NULL),(687,28,118,2,NULL),(688,51,61,2,NULL),(689,65,74,2,NULL),(690,28,119,2,NULL),(691,139,61,2,NULL),(692,67,74,2,NULL),(693,28,120,2,NULL),(694,84,61,2,NULL),(695,76,79,2,NULL),(696,28,121,2,NULL),(697,87,61,2,NULL),(698,116,79,2,NULL),(699,28,122,2,NULL),(700,90,61,2,NULL),(701,44,79,2,NULL),(702,28,123,2,NULL),(703,93,61,2,NULL),(704,88,79,2,NULL),(705,28,83,2,NULL),(706,115,61,2,NULL),(707,89,79,2,NULL),(708,28,102,2,NULL),(709,117,61,2,NULL),(710,91,79,2,NULL),(711,28,111,2,NULL),(712,123,61,2,NULL),(713,94,79,2,NULL),(714,28,104,2,NULL),(715,125,61,2,NULL),(716,95,79,2,NULL),(717,28,91,2,NULL),(718,69,61,2,NULL),(719,98,79,2,NULL),(720,28,93,2,NULL),(721,70,61,2,NULL),(722,100,79,2,NULL),(723,28,94,2,NULL),(724,72,61,2,NULL),(725,102,79,2,NULL),(726,28,95,2,NULL),(727,132,61,2,NULL),(728,127,79,2,NULL),(729,28,105,2,NULL),(730,133,61,2,NULL),(731,46,79,2,NULL),(732,28,107,2,NULL),(733,134,61,2,NULL),(734,144,79,2,NULL),(735,28,109,2,NULL),(736,56,61,2,NULL),(737,77,79,2,NULL),(738,28,112,2,NULL),(739,60,61,2,NULL),(740,105,79,2,NULL),(741,20,20,2,NULL),(742,63,61,2,NULL),(743,43,79,2,NULL),(744,20,34,2,NULL),(745,65,61,2,NULL),(746,51,79,2,NULL),(747,15,25,2,NULL),(748,67,61,2,NULL),(749,139,79,2,NULL),(750,15,38,2,NULL),(751,45,72,2,NULL),(752,84,79,2,NULL),(753,31,20,2,NULL),(754,51,31,2,NULL),(755,31,34,2,NULL),(756,87,79,2,NULL),(757,51,36,2,NULL),(758,22,20,2,NULL),(759,90,79,2,NULL),(760,51,96,2,NULL),(761,93,79,2,NULL),(762,22,34,2,NULL),(763,51,97,2,NULL),(764,115,79,2,NULL),(765,33,29,2,NULL),(766,51,98,2,NULL),(767,117,79,2,NULL),(768,33,45,2,NULL),(769,51,99,2,NULL),(770,123,79,2,NULL),(771,76,31,2,NULL),(772,51,21,2,NULL),(773,125,79,2,NULL),(774,116,31,2,NULL),(775,51,39,2,NULL),(776,69,79,2,NULL),(777,44,31,2,NULL),(778,51,47,2,NULL),(779,70,79,2,NULL),(780,88,31,2,NULL),(781,51,50,2,NULL),(782,72,79,2,NULL),(783,89,31,2,NULL),(784,51,52,2,NULL),(785,91,31,2,NULL),(786,132,79,2,NULL),(787,51,54,2,NULL),(788,133,79,2,NULL),(789,94,31,2,NULL),(790,51,103,2,NULL),(791,95,31,2,NULL),(792,134,79,2,NULL),(793,51,106,2,NULL),(794,98,31,2,NULL),(795,56,79,2,NULL),(796,51,108,2,NULL),(797,60,79,2,NULL),(798,100,31,2,NULL),(799,51,110,2,NULL),(800,63,79,2,NULL),(801,102,31,2,NULL),(802,51,41,2,NULL),(803,65,79,2,NULL),(804,127,31,2,NULL),(805,51,46,2,NULL),(806,67,79,2,NULL),(807,51,49,2,NULL),(808,46,31,2,NULL),(809,51,53,2,NULL),(810,144,31,2,NULL),(811,51,66,2,NULL),(812,77,31,2,NULL),(813,51,76,2,NULL),(814,105,31,2,NULL),(815,51,80,2,NULL),(816,43,31,2,NULL),(817,51,84,2,NULL),(818,139,31,2,NULL),(819,51,86,2,NULL),(820,84,31,2,NULL),(821,51,90,2,NULL),(822,87,31,2,NULL),(823,51,92,2,NULL),(824,90,31,2,NULL),(825,51,100,2,NULL),(826,93,31,2,NULL),(827,51,101,2,NULL),(828,115,31,2,NULL),(829,51,113,2,NULL),(830,117,31,2,NULL),(831,51,114,2,NULL),(832,123,31,2,NULL),(833,51,115,2,NULL),(834,125,31,2,NULL),(835,51,116,2,NULL),(836,69,31,2,NULL),(837,51,117,2,NULL),(838,70,31,2,NULL),(839,51,118,2,NULL),(840,72,31,2,NULL),(841,51,119,2,NULL),(842,132,31,2,NULL),(843,51,120,2,NULL),(844,133,31,2,NULL),(845,51,121,2,NULL),(846,134,31,2,NULL),(847,51,122,2,NULL),(848,56,31,2,NULL),(849,51,123,2,NULL),(850,60,31,2,NULL),(851,51,83,2,NULL),(852,63,31,2,NULL),(853,51,102,2,NULL),(854,65,31,2,NULL),(855,51,111,2,NULL),(856,67,31,2,NULL),(857,51,104,2,NULL),(858,76,36,2,NULL),(859,51,91,2,NULL),(860,116,36,2,NULL),(861,51,93,2,NULL),(862,44,36,2,NULL),(863,51,94,2,NULL),(864,88,36,2,NULL),(865,51,95,2,NULL),(866,89,36,2,NULL),(867,51,105,2,NULL),(868,91,36,2,NULL),(869,51,107,2,NULL),(870,94,36,2,NULL),(871,51,109,2,NULL),(872,95,36,2,NULL),(873,51,112,2,NULL),(874,98,36,2,NULL),(875,148,72,2,NULL),(876,100,36,2,NULL),(877,139,36,2,NULL),(878,102,36,2,NULL),(879,139,96,2,NULL),(880,127,36,2,NULL),(881,139,97,2,NULL),(882,46,36,2,NULL),(883,139,98,2,NULL),(884,144,36,2,NULL),(885,139,99,2,NULL),(886,77,36,2,NULL),(887,139,21,2,NULL),(888,105,36,2,NULL),(889,139,39,2,NULL),(890,43,36,2,NULL),(891,139,47,2,NULL),(892,84,36,2,NULL),(893,139,50,2,NULL),(894,87,36,2,NULL),(895,139,52,2,NULL),(896,90,36,2,NULL),(897,139,54,2,NULL),(898,93,36,2,NULL),(899,139,103,2,NULL),(900,115,36,2,NULL),(901,139,106,2,NULL),(902,117,36,2,NULL),(903,139,108,2,NULL),(904,123,36,2,NULL),(905,139,110,2,NULL),(906,125,36,2,NULL),(907,139,41,2,NULL),(908,69,36,2,NULL),(909,139,46,2,NULL),(910,70,36,2,NULL),(911,139,49,2,NULL),(912,72,36,2,NULL),(913,139,53,2,NULL),(914,132,36,2,NULL),(915,139,66,2,NULL),(916,133,36,2,NULL),(917,139,76,2,NULL),(918,134,36,2,NULL),(919,139,80,2,NULL),(920,56,36,2,NULL),(921,139,84,2,NULL),(922,60,36,2,NULL),(923,139,86,2,NULL),(924,63,36,2,NULL),(925,139,90,2,NULL),(926,65,36,2,NULL),(927,139,92,2,NULL),(928,67,36,2,NULL),(929,139,100,2,NULL),(930,76,96,2,NULL),(931,139,101,2,NULL),(932,116,96,2,NULL),(933,139,113,2,NULL),(934,44,96,2,NULL),(935,139,114,2,NULL),(936,88,96,2,NULL),(937,139,115,2,NULL),(938,89,96,2,NULL),(939,139,116,2,NULL),(940,91,96,2,NULL),(941,139,117,2,NULL),(942,94,96,2,NULL),(943,139,118,2,NULL),(944,95,96,2,NULL),(945,139,119,2,NULL),(946,98,96,2,NULL),(947,139,120,2,NULL),(948,100,96,2,NULL),(949,139,121,2,NULL),(950,102,96,2,NULL),(951,139,122,2,NULL),(952,127,96,2,NULL),(953,139,123,2,NULL),(954,46,96,2,NULL),(955,139,83,2,NULL),(956,144,96,2,NULL),(957,139,102,2,NULL),(958,77,96,2,NULL),(959,139,111,2,NULL),(960,105,96,2,NULL),(961,139,104,2,NULL),(962,43,96,2,NULL),(963,139,91,2,NULL),(964,84,96,2,NULL),(965,139,93,2,NULL),(966,87,96,2,NULL),(967,139,94,2,NULL),(968,90,96,2,NULL),(969,139,95,2,NULL),(970,93,96,2,NULL),(971,139,105,2,NULL),(972,115,96,2,NULL),(973,139,107,2,NULL),(974,117,96,2,NULL),(975,139,109,2,NULL),(976,123,96,2,NULL),(977,139,112,2,NULL),(978,125,96,2,NULL),(979,147,72,2,NULL),(980,69,96,2,NULL),(981,78,72,2,NULL),(982,70,96,2,NULL),(983,122,78,2,NULL),(984,72,96,2,NULL),(985,74,72,2,NULL),(986,132,96,2,NULL),(987,101,82,2,NULL),(988,133,96,2,NULL),(989,134,96,2,NULL),(990,56,96,2,NULL),(991,60,96,2,NULL),(992,63,96,2,NULL),(993,84,97,2,NULL),(994,65,96,2,NULL),(995,87,97,2,NULL),(996,67,96,2,NULL),(997,90,97,2,NULL),(998,76,97,2,NULL),(999,93,97,2,NULL),(1000,116,97,2,NULL),(1001,115,97,2,NULL),(1002,44,97,2,NULL),(1003,117,97,2,NULL),(1004,88,97,2,NULL),(1005,123,97,2,NULL),(1006,89,97,2,NULL),(1007,125,97,2,NULL),(1008,91,97,2,NULL),(1009,84,98,2,NULL),(1010,94,97,2,NULL),(1011,87,98,2,NULL),(1012,95,97,2,NULL),(1013,90,98,2,NULL),(1014,98,97,2,NULL),(1015,93,98,2,NULL),(1016,100,97,2,NULL),(1017,115,98,2,NULL),(1018,102,97,2,NULL),(1019,117,98,2,NULL),(1020,127,97,2,NULL),(1021,123,98,2,NULL),(1022,46,97,2,NULL),(1023,125,98,2,NULL),(1024,144,97,2,NULL),(1025,84,99,2,NULL),(1026,77,97,2,NULL),(1027,87,99,2,NULL),(1028,105,97,2,NULL),(1029,90,99,2,NULL),(1030,43,97,2,NULL),(1031,93,99,2,NULL),(1032,115,99,2,NULL),(1033,69,97,2,NULL),(1034,117,99,2,NULL),(1035,70,97,2,NULL),(1036,123,99,2,NULL),(1037,72,97,2,NULL),(1038,125,99,2,NULL),(1039,132,97,2,NULL),(1040,84,21,2,NULL),(1041,133,97,2,NULL),(1042,87,21,2,NULL),(1043,134,97,2,NULL),(1044,90,21,2,NULL),(1045,56,97,2,NULL),(1046,93,21,2,NULL),(1047,60,97,2,NULL),(1048,115,21,2,NULL),(1049,63,97,2,NULL),(1050,117,21,2,NULL),(1051,65,97,2,NULL),(1052,123,21,2,NULL),(1053,67,97,2,NULL),(1054,125,21,2,NULL),(1055,76,98,2,NULL),(1056,84,39,2,NULL),(1057,116,98,2,NULL),(1058,87,39,2,NULL),(1059,44,98,2,NULL),(1060,90,39,2,NULL),(1061,88,98,2,NULL),(1062,93,39,2,NULL),(1063,89,98,2,NULL),(1064,115,39,2,NULL),(1065,91,98,2,NULL),(1066,117,39,2,NULL),(1067,94,98,2,NULL),(1068,123,39,2,NULL),(1069,95,98,2,NULL),(1070,125,39,2,NULL),(1071,98,98,2,NULL),(1072,84,47,2,NULL),(1073,100,98,2,NULL),(1074,87,47,2,NULL),(1075,102,98,2,NULL),(1076,90,47,2,NULL),(1077,127,98,2,NULL),(1078,93,47,2,NULL),(1079,46,98,2,NULL),(1080,115,47,2,NULL),(1081,144,98,2,NULL),(1082,117,47,2,NULL),(1083,77,98,2,NULL),(1084,123,47,2,NULL),(1085,105,98,2,NULL),(1086,125,47,2,NULL),(1087,43,98,2,NULL),(1088,84,50,2,NULL),(1089,87,50,2,NULL),(1090,69,98,2,NULL),(1091,90,50,2,NULL),(1092,70,98,2,NULL),(1093,93,50,2,NULL),(1094,72,98,2,NULL),(1095,115,50,2,NULL),(1096,132,98,2,NULL),(1097,117,50,2,NULL),(1098,133,98,2,NULL),(1099,123,50,2,NULL),(1100,134,98,2,NULL),(1101,125,50,2,NULL),(1102,56,98,2,NULL),(1103,84,52,2,NULL),(1104,60,98,2,NULL),(1105,87,52,2,NULL),(1106,63,98,2,NULL),(1107,90,52,2,NULL),(1108,65,98,2,NULL),(1109,93,52,2,NULL),(1110,67,98,2,NULL),(1111,115,52,2,NULL),(1112,117,52,2,NULL),(1113,76,99,2,NULL),(1114,123,52,2,NULL),(1115,116,99,2,NULL),(1116,125,52,2,NULL),(1117,44,99,2,NULL),(1118,84,54,2,NULL),(1119,88,99,2,NULL),(1120,87,54,2,NULL),(1121,89,99,2,NULL),(1122,90,54,2,NULL),(1123,91,99,2,NULL),(1124,93,54,2,NULL),(1125,94,99,2,NULL),(1126,115,54,2,NULL),(1127,95,99,2,NULL),(1128,117,54,2,NULL),(1129,98,99,2,NULL),(1130,123,54,2,NULL),(1131,100,99,2,NULL),(1132,125,54,2,NULL),(1133,102,99,2,NULL),(1134,84,103,2,NULL),(1135,127,99,2,NULL),(1136,46,99,2,NULL),(1137,87,103,2,NULL),(1138,144,99,2,NULL),(1139,77,99,2,NULL),(1140,90,103,2,NULL),(1141,105,99,2,NULL),(1142,93,103,2,NULL),(1143,43,99,2,NULL),(1144,43,99,2,NULL),(1145,115,103,2,NULL),(1146,69,99,2,NULL),(1147,117,103,2,NULL),(1148,70,99,2,NULL),(1149,72,99,2,NULL),(1150,123,103,2,NULL),(1151,132,99,2,NULL),(1152,132,99,2,NULL),(1153,125,103,2,NULL),(1154,133,99,2,NULL),(1155,134,99,2,NULL),(1156,84,106,2,NULL),(1157,56,99,2,NULL),(1158,87,106,2,NULL),(1159,60,99,2,NULL),(1160,63,99,2,NULL),(1161,90,106,2,NULL),(1162,65,99,2,NULL),(1163,67,99,2,NULL),(1164,93,106,2,NULL),(1165,40,15,2,NULL),(1166,115,106,2,NULL),(1167,40,26,2,NULL),(1168,76,21,2,NULL),(1169,117,106,2,NULL),(1170,116,21,2,NULL),(1171,123,106,2,NULL),(1172,44,21,2,NULL),(1173,88,21,2,NULL),(1174,125,106,2,NULL),(1175,89,21,2,NULL),(1176,91,21,2,NULL),(1177,84,108,2,NULL),(1178,94,21,2,NULL),(1179,87,108,2,NULL),(1180,95,21,2,NULL),(1181,98,21,2,NULL),(1182,90,108,2,NULL),(1183,100,21,2,NULL),(1184,102,21,2,NULL),(1185,93,108,2,NULL),(1186,127,21,2,NULL),(1187,46,21,2,NULL),(1188,115,108,2,NULL),(1189,144,21,2,NULL),(1190,77,21,2,NULL),(1191,117,108,2,NULL),(1192,105,21,2,NULL),(1193,43,21,2,NULL),(1194,123,108,2,NULL),(1195,69,21,2,NULL),(1196,125,108,2,NULL),(1197,70,21,2,NULL),(1198,72,21,2,NULL),(1199,84,110,2,NULL),(1200,132,21,2,NULL),(1201,133,21,2,NULL),(1202,87,110,2,NULL),(1203,134,21,2,NULL),(1204,56,21,2,NULL),(1205,90,110,2,NULL),(1206,60,21,2,NULL),(1207,63,21,2,NULL),(1208,93,110,2,NULL),(1209,65,21,2,NULL),(1210,67,21,2,NULL),(1211,115,110,2,NULL),(1212,55,27,2,NULL),(1213,117,110,2,NULL),(1214,55,43,2,NULL),(1215,59,20,2,NULL),(1216,123,110,2,NULL),(1217,59,34,2,NULL),(1218,125,110,2,NULL),(1219,76,39,2,NULL),(1220,76,47,2,NULL),(1221,84,41,2,NULL),(1222,76,50,2,NULL),(1223,87,41,2,NULL),(1224,76,52,2,NULL),(1225,76,54,2,NULL),(1226,90,41,2,NULL),(1227,76,103,2,NULL),(1228,76,106,2,NULL),(1229,93,41,2,NULL),(1230,76,108,2,NULL),(1231,76,110,2,NULL),(1232,115,41,2,NULL),(1233,76,41,2,NULL),(1234,76,46,2,NULL),(1235,76,49,2,NULL),(1236,117,41,2,NULL),(1237,76,53,2,NULL),(1238,76,66,2,NULL),(1239,123,41,2,NULL),(1240,76,76,2,NULL),(1241,125,41,2,NULL),(1242,76,80,2,NULL),(1243,76,84,2,NULL),(1244,84,46,2,NULL),(1245,76,86,2,NULL),(1246,76,90,2,NULL),(1247,87,46,2,NULL),(1248,76,92,2,NULL),(1249,76,100,2,NULL),(1250,90,46,2,NULL),(1251,76,101,2,NULL),(1252,76,113,2,NULL),(1253,93,46,2,NULL),(1254,76,114,2,NULL),(1255,76,115,2,NULL),(1256,115,46,2,NULL),(1257,76,116,2,NULL),(1258,76,117,2,NULL),(1259,117,46,2,NULL),(1260,76,118,2,NULL),(1261,76,119,2,NULL),(1262,123,46,2,NULL),(1263,76,120,2,NULL),(1264,76,121,2,NULL),(1265,125,46,2,NULL),(1266,76,122,2,NULL),(1267,76,123,2,NULL),(1268,84,49,2,NULL),(1269,76,83,2,NULL),(1270,76,102,2,NULL),(1271,87,49,2,NULL),(1272,76,111,2,NULL),(1273,76,104,2,NULL),(1274,90,49,2,NULL),(1275,76,91,2,NULL),(1276,76,93,2,NULL),(1277,93,49,2,NULL),(1278,76,94,2,NULL),(1279,76,95,2,NULL),(1280,115,49,2,NULL),(1281,76,105,2,NULL),(1282,76,107,2,NULL),(1283,117,49,2,NULL),(1284,76,109,2,NULL),(1285,76,112,2,NULL),(1286,123,49,2,NULL),(1287,85,20,2,NULL),(1288,85,34,2,NULL),(1289,125,49,2,NULL),(1290,116,39,2,NULL),(1291,84,53,2,NULL),(1292,116,47,2,NULL),(1293,116,50,2,NULL),(1294,87,53,2,NULL),(1295,116,52,2,NULL),(1296,116,54,2,NULL),(1297,90,53,2,NULL),(1298,116,103,2,NULL),(1299,116,106,2,NULL),(1300,93,53,2,NULL),(1301,116,108,2,NULL),(1302,116,110,2,NULL),(1303,115,53,2,NULL),(1304,116,41,2,NULL),(1305,116,46,2,NULL),(1306,117,53,2,NULL),(1307,116,49,2,NULL),(1308,116,53,2,NULL),(1309,123,53,2,NULL),(1310,116,66,2,NULL),(1311,116,76,2,NULL),(1312,125,53,2,NULL),(1313,116,80,2,NULL),(1314,116,84,2,NULL),(1315,84,66,2,NULL),(1316,116,86,2,NULL),(1317,116,90,2,NULL),(1318,87,66,2,NULL),(1319,116,92,2,NULL),(1320,116,100,2,NULL),(1321,90,66,2,NULL),(1322,116,101,2,NULL),(1323,116,113,2,NULL),(1324,93,66,2,NULL),(1325,116,114,2,NULL),(1326,116,115,2,NULL),(1327,115,66,2,NULL),(1328,116,116,2,NULL),(1329,116,117,2,NULL),(1330,117,66,2,NULL),(1331,116,118,2,NULL),(1332,116,119,2,NULL),(1333,123,66,2,NULL),(1334,116,120,2,NULL),(1335,116,121,2,NULL),(1336,125,66,2,NULL),(1337,116,122,2,NULL),(1338,116,123,2,NULL),(1339,84,76,2,NULL),(1340,116,83,2,NULL),(1341,116,102,2,NULL),(1342,87,76,2,NULL),(1343,116,111,2,NULL),(1344,116,104,2,NULL),(1345,90,76,2,NULL),(1346,116,91,2,NULL),(1347,116,93,2,NULL),(1348,93,76,2,NULL),(1349,116,94,2,NULL),(1350,116,95,2,NULL),(1351,115,76,2,NULL),(1352,116,105,2,NULL),(1353,116,107,2,NULL),(1354,117,76,2,NULL),(1355,116,109,2,NULL),(1356,116,112,2,NULL),(1357,123,76,2,NULL),(1358,92,20,2,NULL),(1359,92,34,2,NULL),(1360,125,76,2,NULL),(1361,61,20,2,NULL),(1362,61,34,2,NULL),(1363,84,80,2,NULL),(1364,120,25,2,NULL),(1365,120,38,2,NULL),(1366,87,80,2,NULL),(1367,62,20,2,NULL),(1368,62,34,2,NULL),(1369,90,80,2,NULL),(1370,66,44,2,NULL),(1371,66,44,2,NULL),(1372,93,80,2,NULL),(1373,68,44,2,NULL),(1374,75,42,2,NULL),(1375,115,80,2,NULL),(1376,44,39,2,NULL),(1377,44,39,2,NULL),(1378,117,80,2,NULL),(1379,88,39,2,NULL),(1380,89,39,2,NULL),(1381,123,80,2,NULL),(1382,91,39,2,NULL),(1383,91,39,2,NULL),(1384,125,80,2,NULL),(1385,94,39,2,NULL),(1386,95,39,2,NULL),(1387,84,84,2,NULL),(1388,98,39,2,NULL),(1389,98,39,2,NULL),(1390,87,84,2,NULL),(1391,100,39,2,NULL),(1392,102,39,2,NULL),(1393,90,84,2,NULL),(1394,127,39,2,NULL),(1395,127,39,2,NULL),(1396,93,84,2,NULL),(1397,46,39,2,NULL),(1398,144,39,2,NULL),(1399,115,84,2,NULL),(1400,77,39,2,NULL),(1401,77,39,2,NULL),(1402,117,84,2,NULL),(1403,105,39,2,NULL),(1404,43,39,2,NULL),(1405,123,84,2,NULL),(1406,69,39,2,NULL),(1407,69,39,2,NULL),(1408,125,84,2,NULL),(1409,70,39,2,NULL),(1410,72,39,2,NULL),(1411,84,86,2,NULL),(1412,132,39,2,NULL),(1413,132,39,2,NULL),(1414,87,86,2,NULL),(1415,133,39,2,NULL),(1416,134,39,2,NULL),(1417,90,86,2,NULL),(1418,56,39,2,NULL),(1419,56,39,2,NULL),(1420,93,86,2,NULL),(1421,60,39,2,NULL),(1422,63,39,2,NULL),(1423,115,86,2,NULL),(1424,65,39,2,NULL),(1425,65,39,2,NULL),(1426,117,86,2,NULL),(1427,67,39,2,NULL),(1428,123,86,2,NULL),(1429,44,47,2,NULL),(1430,125,86,2,NULL),(1431,88,47,2,NULL),(1432,89,47,2,NULL),(1433,84,90,2,NULL),(1434,91,47,2,NULL),(1435,91,47,2,NULL),(1436,87,90,2,NULL),(1437,94,47,2,NULL),(1438,94,47,2,NULL),(1439,90,90,2,NULL),(1440,95,47,2,NULL),(1441,98,47,2,NULL),(1442,93,90,2,NULL),(1443,100,47,2,NULL),(1444,100,47,2,NULL),(1445,115,90,2,NULL),(1446,102,47,2,NULL),(1447,127,47,2,NULL),(1448,117,90,2,NULL),(1449,46,47,2,NULL),(1450,46,47,2,NULL),(1451,123,90,2,NULL),(1452,144,47,2,NULL),(1453,144,47,2,NULL),(1454,125,90,2,NULL),(1455,77,47,2,NULL),(1456,84,92,2,NULL),(1457,105,47,2,NULL),(1458,43,47,2,NULL),(1459,87,92,2,NULL),(1460,69,47,2,NULL),(1461,69,47,2,NULL),(1462,90,92,2,NULL),(1463,70,47,2,NULL),(1464,93,92,2,NULL),(1465,72,47,2,NULL),(1466,132,47,2,NULL),(1467,115,92,2,NULL),(1468,133,47,2,NULL),(1469,134,47,2,NULL),(1470,117,92,2,NULL),(1471,56,47,2,NULL),(1472,60,47,2,NULL),(1473,123,92,2,NULL),(1474,63,47,2,NULL),(1475,125,92,2,NULL),(1476,65,47,2,NULL),(1477,67,47,2,NULL),(1478,84,100,2,NULL),(1479,44,50,2,NULL),(1480,88,50,2,NULL),(1481,87,100,2,NULL),(1482,89,50,2,NULL),(1483,90,100,2,NULL),(1484,91,50,2,NULL),(1485,94,50,2,NULL),(1486,93,100,2,NULL),(1487,95,50,2,NULL),(1488,98,50,2,NULL),(1489,115,100,2,NULL),(1490,100,50,2,NULL),(1491,102,50,2,NULL),(1492,117,100,2,NULL),(1493,127,50,2,NULL),(1494,46,50,2,NULL),(1495,123,100,2,NULL),(1496,144,50,2,NULL),(1497,77,50,2,NULL),(1498,125,100,2,NULL),(1499,105,50,2,NULL),(1500,43,50,2,NULL),(1501,84,101,2,NULL),(1502,69,50,2,NULL),(1503,87,101,2,NULL),(1504,70,50,2,NULL),(1505,72,50,2,NULL),(1506,90,101,2,NULL),(1507,132,50,2,NULL),(1508,133,50,2,NULL),(1509,93,101,2,NULL),(1510,134,50,2,NULL),(1511,115,101,2,NULL),(1512,56,50,2,NULL),(1513,60,50,2,NULL),(1514,117,101,2,NULL),(1515,63,50,2,NULL),(1516,65,50,2,NULL),(1517,123,101,2,NULL),(1518,67,50,2,NULL),(1519,67,50,2,NULL),(1520,125,101,2,NULL),(1521,38,64,2,NULL),(1522,64,27,2,NULL),(1523,64,27,2,NULL),(1524,84,113,2,NULL),(1525,64,43,2,NULL),(1526,64,43,2,NULL),(1527,41,63,2,NULL),(1528,87,113,2,NULL),(1529,44,52,2,NULL),(1530,90,113,2,NULL),(1531,88,52,2,NULL),(1532,42,57,2,NULL),(1533,89,52,2,NULL),(1534,93,113,2,NULL),(1535,91,52,2,NULL),(1536,80,58,2,NULL),(1537,115,113,2,NULL),(1538,94,52,2,NULL),(1539,95,52,2,NULL),(1540,117,113,2,NULL),(1541,98,52,2,NULL),(1542,111,58,2,NULL),(1543,100,52,2,NULL),(1544,123,113,2,NULL),(1545,102,52,2,NULL),(1546,127,52,2,NULL),(1547,124,57,2,NULL),(1548,46,52,2,NULL),(1549,125,113,2,NULL),(1550,144,52,2,NULL),(1551,84,114,2,NULL),(1552,77,52,2,NULL),(1553,128,49,2,NULL),(1554,105,52,2,NULL),(1555,87,114,2,NULL),(1556,43,52,2,NULL),(1557,129,66,2,NULL),(1558,90,114,2,NULL),(1559,69,52,2,NULL),(1560,70,52,2,NULL),(1561,93,114,2,NULL),(1562,72,52,2,NULL),(1563,132,52,2,NULL),(1564,115,114,2,NULL),(1565,133,52,2,NULL),(1566,134,52,2,NULL),(1567,117,114,2,NULL),(1568,56,52,2,NULL),(1569,60,52,2,NULL),(1570,123,114,2,NULL),(1571,63,52,2,NULL),(1572,125,114,2,NULL),(1573,65,52,2,NULL),(1574,67,52,2,NULL),(1575,84,115,2,NULL),(1576,73,29,2,NULL),(1577,73,45,2,NULL),(1578,87,115,2,NULL),(1579,44,54,2,NULL),(1580,88,54,2,NULL),(1581,90,115,2,NULL),(1582,89,54,2,NULL),(1583,91,54,2,NULL),(1584,93,115,2,NULL),(1585,94,54,2,NULL),(1586,95,54,2,NULL),(1587,98,54,2,NULL),(1588,115,115,2,NULL),(1589,100,54,2,NULL),(1590,102,54,2,NULL),(1591,117,115,2,NULL),(1592,127,54,2,NULL),(1593,46,54,2,NULL),(1594,44,103,2,NULL),(1595,123,115,2,NULL),(1596,144,54,2,NULL),(1597,77,54,2,NULL),(1598,88,103,2,NULL),(1599,125,115,2,NULL),(1600,105,54,2,NULL),(1601,43,54,2,NULL),(1602,84,116,2,NULL),(1603,89,103,2,NULL),(1604,69,54,2,NULL),(1605,70,54,2,NULL),(1606,91,103,2,NULL),(1607,72,54,2,NULL),(1608,132,54,2,NULL),(1609,94,103,2,NULL),(1610,87,116,2,NULL),(1611,133,54,2,NULL),(1612,134,54,2,NULL),(1613,90,116,2,NULL),(1614,56,54,2,NULL),(1615,95,103,2,NULL),(1616,60,54,2,NULL),(1617,93,116,2,NULL),(1618,63,54,2,NULL),(1619,98,103,2,NULL),(1620,65,54,2,NULL),(1621,115,116,2,NULL),(1622,67,54,2,NULL),(1623,100,103,2,NULL),(1624,117,116,2,NULL),(1625,102,103,2,NULL),(1626,102,103,2,NULL),(1627,127,103,2,NULL),(1628,123,116,2,NULL),(1629,46,103,2,NULL),(1630,125,116,2,NULL),(1631,144,103,2,NULL),(1632,44,106,2,NULL),(1633,77,103,2,NULL),(1634,84,117,2,NULL),(1635,105,103,2,NULL),(1636,43,103,2,NULL),(1637,88,106,2,NULL),(1638,87,117,2,NULL),(1639,69,103,2,NULL),(1640,90,117,2,NULL),(1641,70,103,2,NULL),(1642,89,106,2,NULL),(1643,72,103,2,NULL),(1644,93,117,2,NULL),(1645,132,103,2,NULL),(1646,133,103,2,NULL),(1647,91,106,2,NULL),(1648,115,117,2,NULL),(1649,134,103,2,NULL),(1650,94,106,2,NULL),(1651,56,103,2,NULL),(1652,117,117,2,NULL),(1653,60,103,2,NULL),(1654,95,106,2,NULL),(1655,63,103,2,NULL),(1656,123,117,2,NULL),(1657,65,103,2,NULL),(1658,67,103,2,NULL),(1659,98,106,2,NULL),(1660,125,117,2,NULL),(1661,100,106,2,NULL),(1662,84,118,2,NULL),(1663,102,106,2,NULL),(1664,102,106,2,NULL),(1665,127,106,2,NULL),(1666,87,118,2,NULL),(1667,46,106,2,NULL),(1668,46,106,2,NULL),(1669,44,108,2,NULL),(1670,144,106,2,NULL),(1671,144,106,2,NULL),(1672,90,118,2,NULL),(1673,88,108,2,NULL),(1674,77,106,2,NULL),(1675,77,106,2,NULL),(1676,93,118,2,NULL),(1677,89,108,2,NULL),(1678,105,106,2,NULL),(1679,105,106,2,NULL),(1680,115,118,2,NULL),(1681,91,108,2,NULL),(1682,43,106,2,NULL),(1683,43,106,2,NULL),(1684,117,118,2,NULL),(1685,94,108,2,NULL),(1686,123,118,2,NULL),(1687,69,106,2,NULL),(1688,69,106,2,NULL),(1689,95,108,2,NULL),(1690,125,118,2,NULL),(1691,70,106,2,NULL),(1692,70,106,2,NULL),(1693,98,108,2,NULL),(1694,84,119,2,NULL),(1695,72,106,2,NULL),(1696,72,106,2,NULL),(1697,100,108,2,NULL),(1698,87,119,2,NULL),(1699,102,108,2,NULL),(1700,132,106,2,NULL),(1701,132,106,2,NULL),(1702,90,119,2,NULL),(1703,133,106,2,NULL),(1704,133,106,2,NULL),(1705,127,108,2,NULL),(1706,93,119,2,NULL),(1707,134,106,2,NULL),(1708,134,106,2,NULL),(1709,44,110,2,NULL),(1710,115,119,2,NULL),(1711,88,110,2,NULL),(1712,56,106,2,NULL),(1713,56,106,2,NULL),(1714,117,119,2,NULL),(1715,60,106,2,NULL),(1716,63,106,2,NULL),(1717,89,110,2,NULL),(1718,123,119,2,NULL),(1719,65,106,2,NULL),(1720,65,106,2,NULL),(1721,91,110,2,NULL),(1722,125,119,2,NULL),(1723,67,106,2,NULL),(1724,67,106,2,NULL),(1725,94,110,2,NULL),(1726,84,120,2,NULL),(1727,95,110,2,NULL),(1728,87,120,2,NULL),(1729,46,108,2,NULL),(1730,46,108,2,NULL),(1731,98,110,2,NULL),(1732,90,120,2,NULL),(1733,144,108,2,NULL),(1734,144,108,2,NULL),(1735,100,110,2,NULL),(1736,93,120,2,NULL),(1737,77,108,2,NULL),(1738,77,108,2,NULL),(1739,102,110,2,NULL),(1740,115,120,2,NULL),(1741,105,108,2,NULL),(1742,105,108,2,NULL),(1743,127,110,2,NULL),(1744,117,120,2,NULL),(1745,43,108,2,NULL),(1746,43,108,2,NULL),(1747,44,46,2,NULL),(1748,123,120,2,NULL),(1749,88,46,2,NULL),(1750,69,108,2,NULL),(1751,69,108,2,NULL),(1752,125,120,2,NULL),(1753,89,46,2,NULL),(1754,70,108,2,NULL),(1755,70,108,2,NULL),(1756,84,121,2,NULL),(1757,91,46,2,NULL),(1758,87,121,2,NULL),(1759,72,108,2,NULL),(1760,72,108,2,NULL),(1761,94,46,2,NULL),(1762,90,121,2,NULL),(1763,132,108,2,NULL),(1764,132,108,2,NULL),(1765,95,46,2,NULL),(1766,93,121,2,NULL),(1767,133,108,2,NULL),(1768,133,108,2,NULL),(1769,98,46,2,NULL),(1770,134,108,2,NULL),(1771,134,108,2,NULL),(1772,115,121,2,NULL),(1773,100,46,2,NULL),(1774,117,121,2,NULL),(1775,56,108,2,NULL),(1776,56,108,2,NULL),(1777,102,46,2,NULL),(1778,60,108,2,NULL),(1779,123,121,2,NULL),(1780,63,108,2,NULL),(1781,127,46,2,NULL),(1782,125,121,2,NULL),(1783,65,108,2,NULL),(1784,65,108,2,NULL),(1785,44,49,2,NULL),(1786,67,108,2,NULL),(1787,84,122,2,NULL),(1788,88,49,2,NULL),(1789,87,122,2,NULL),(1790,46,110,2,NULL),(1791,89,49,2,NULL),(1792,90,122,2,NULL),(1793,144,110,2,NULL),(1794,91,49,2,NULL),(1795,77,110,2,NULL),(1796,93,122,2,NULL),(1797,105,110,2,NULL),(1798,94,49,2,NULL),(1799,43,110,2,NULL),(1800,115,122,2,NULL),(1801,69,110,2,NULL),(1802,95,49,2,NULL),(1803,117,122,2,NULL),(1804,70,110,2,NULL),(1805,98,49,2,NULL),(1806,72,110,2,NULL),(1807,123,122,2,NULL),(1808,132,110,2,NULL),(1809,100,49,2,NULL),(1810,133,110,2,NULL),(1811,125,122,2,NULL),(1812,134,110,2,NULL),(1813,102,49,2,NULL),(1814,56,110,2,NULL),(1815,84,123,2,NULL),(1816,60,110,2,NULL),(1817,127,49,2,NULL),(1818,63,110,2,NULL),(1819,87,123,2,NULL),(1820,65,110,2,NULL),(1821,44,53,2,NULL),(1822,67,110,2,NULL),(1823,90,123,2,NULL),(1824,88,53,2,NULL),(1825,93,123,2,NULL),(1826,89,53,2,NULL),(1827,115,123,2,NULL),(1828,91,53,2,NULL),(1829,117,123,2,NULL),(1830,94,53,2,NULL),(1831,123,123,2,NULL),(1832,95,53,2,NULL),(1833,125,123,2,NULL),(1834,98,53,2,NULL),(1835,84,83,2,NULL),(1836,100,53,2,NULL),(1837,87,83,2,NULL),(1838,102,53,2,NULL),(1839,90,83,2,NULL),(1840,127,53,2,NULL),(1841,93,83,2,NULL),(1842,46,41,2,NULL),(1843,115,83,2,NULL),(1844,144,41,2,NULL),(1845,117,83,2,NULL),(1846,77,41,2,NULL),(1847,123,83,2,NULL),(1848,105,41,2,NULL),(1849,125,83,2,NULL),(1850,44,66,2,NULL),(1851,84,102,2,NULL),(1852,88,66,2,NULL),(1853,87,102,2,NULL),(1854,89,66,2,NULL),(1855,90,102,2,NULL),(1856,91,66,2,NULL),(1857,93,102,2,NULL),(1858,94,66,2,NULL),(1859,115,102,2,NULL),(1860,95,66,2,NULL),(1861,117,102,2,NULL),(1862,98,66,2,NULL),(1863,123,102,2,NULL),(1864,100,66,2,NULL),(1865,125,102,2,NULL),(1866,102,66,2,NULL),(1867,84,111,2,NULL),(1868,127,66,2,NULL),(1869,87,111,2,NULL),(1870,44,76,2,NULL),(1871,90,111,2,NULL),(1872,88,76,2,NULL),(1873,93,111,2,NULL),(1874,89,76,2,NULL),(1875,115,111,2,NULL),(1876,91,76,2,NULL),(1877,117,111,2,NULL),(1878,94,76,2,NULL),(1879,123,111,2,NULL),(1880,95,76,2,NULL),(1881,125,111,2,NULL),(1882,98,76,2,NULL),(1883,84,104,2,NULL),(1884,100,76,2,NULL),(1885,87,104,2,NULL),(1886,102,76,2,NULL),(1887,90,104,2,NULL),(1888,127,76,2,NULL),(1889,93,104,2,NULL),(1890,44,80,2,NULL),(1891,115,104,2,NULL),(1892,88,80,2,NULL),(1893,117,104,2,NULL),(1894,89,80,2,NULL),(1895,123,104,2,NULL),(1896,91,80,2,NULL),(1897,125,104,2,NULL),(1898,94,80,2,NULL),(1899,84,91,2,NULL),(1900,95,80,2,NULL),(1901,87,91,2,NULL),(1902,98,80,2,NULL),(1903,90,91,2,NULL),(1904,100,80,2,NULL),(1905,93,91,2,NULL),(1906,102,80,2,NULL),(1907,115,91,2,NULL),(1908,127,80,2,NULL),(1909,117,91,2,NULL),(1910,44,84,2,NULL),(1911,123,91,2,NULL),(1912,88,84,2,NULL),(1913,125,91,2,NULL),(1914,89,84,2,NULL),(1915,84,93,2,NULL),(1916,91,84,2,NULL),(1917,87,93,2,NULL),(1918,94,84,2,NULL),(1919,90,93,2,NULL),(1920,95,84,2,NULL),(1921,93,93,2,NULL),(1922,98,84,2,NULL),(1923,115,93,2,NULL),(1924,100,84,2,NULL),(1925,117,93,2,NULL),(1926,102,84,2,NULL),(1927,123,93,2,NULL),(1928,127,84,2,NULL),(1929,125,93,2,NULL),(1930,44,86,2,NULL),(1931,84,94,2,NULL),(1932,88,86,2,NULL),(1933,87,94,2,NULL),(1934,89,86,2,NULL),(1935,90,94,2,NULL),(1936,91,86,2,NULL),(1937,93,94,2,NULL),(1938,94,86,2,NULL),(1939,115,94,2,NULL),(1940,95,86,2,NULL),(1941,117,94,2,NULL),(1942,98,86,2,NULL),(1943,123,94,2,NULL),(1944,100,86,2,NULL),(1945,125,94,2,NULL),(1946,102,86,2,NULL),(1947,84,95,2,NULL),(1948,127,86,2,NULL),(1949,87,95,2,NULL),(1950,43,41,2,NULL),(1951,90,95,2,NULL),(1952,44,90,2,NULL),(1953,93,95,2,NULL),(1954,88,90,2,NULL),(1955,115,95,2,NULL),(1956,89,90,2,NULL),(1957,117,95,2,NULL),(1958,91,90,2,NULL),(1959,123,95,2,NULL),(1960,94,90,2,NULL),(1961,125,95,2,NULL),(1962,95,90,2,NULL),(1963,84,105,2,NULL),(1964,98,90,2,NULL),(1965,87,105,2,NULL),(1966,100,90,2,NULL),(1967,90,105,2,NULL),(1968,102,90,2,NULL),(1969,93,105,2,NULL),(1970,127,90,2,NULL),(1971,115,105,2,NULL),(1972,44,92,2,NULL),(1973,117,105,2,NULL),(1974,88,92,2,NULL),(1975,123,105,2,NULL),(1976,89,92,2,NULL),(1977,125,105,2,NULL),(1978,91,92,2,NULL),(1979,84,107,2,NULL),(1980,94,92,2,NULL),(1981,87,107,2,NULL),(1982,95,92,2,NULL),(1983,90,107,2,NULL),(1984,98,92,2,NULL),(1985,93,107,2,NULL),(1986,100,92,2,NULL),(1987,115,107,2,NULL),(1988,102,92,2,NULL),(1989,117,107,2,NULL),(1990,127,92,2,NULL),(1991,123,107,2,NULL),(1992,44,100,2,NULL),(1993,125,107,2,NULL),(1994,88,100,2,NULL),(1995,84,109,2,NULL),(1996,89,100,2,NULL),(1997,87,109,2,NULL),(1998,91,100,2,NULL),(1999,90,109,2,NULL),(2000,94,100,2,NULL),(2001,93,109,2,NULL),(2002,95,100,2,NULL),(2003,115,109,2,NULL),(2004,98,100,2,NULL),(2005,117,109,2,NULL),(2006,100,100,2,NULL),(2007,123,109,2,NULL),(2008,102,100,2,NULL),(2009,125,109,2,NULL),(2010,127,100,2,NULL),(2011,84,112,2,NULL),(2012,44,101,2,NULL),(2013,87,112,2,NULL),(2014,88,101,2,NULL),(2015,90,112,2,NULL),(2016,89,101,2,NULL),(2017,93,112,2,NULL),(2018,91,101,2,NULL),(2019,115,112,2,NULL),(2020,94,101,2,NULL),(2021,117,112,2,NULL),(2022,95,101,2,NULL),(2023,123,112,2,NULL),(2024,98,101,2,NULL),(2025,125,112,2,NULL),(2026,100,101,2,NULL),(2027,44,83,2,NULL),(2028,102,101,2,NULL),(2029,88,83,2,NULL),(2030,127,101,2,NULL),(2031,89,83,2,NULL),(2032,44,113,2,NULL),(2033,91,83,2,NULL),(2034,88,113,2,NULL),(2035,94,83,2,NULL),(2036,89,113,2,NULL),(2037,95,83,2,NULL),(2038,91,113,2,NULL),(2039,98,83,2,NULL),(2040,94,113,2,NULL),(2041,100,83,2,NULL),(2042,95,113,2,NULL),(2043,102,83,2,NULL),(2044,98,113,2,NULL),(2045,127,83,2,NULL),(2046,100,113,2,NULL),(2047,46,83,2,NULL),(2048,102,113,2,NULL),(2049,144,83,2,NULL),(2050,127,113,2,NULL),(2051,77,83,2,NULL),(2052,44,114,2,NULL),(2053,105,83,2,NULL),(2054,88,114,2,NULL),(2055,43,83,2,NULL),(2056,89,114,2,NULL),(2057,69,83,2,NULL),(2058,91,114,2,NULL),(2059,70,83,2,NULL),(2060,94,114,2,NULL),(2061,72,83,2,NULL),(2062,95,114,2,NULL),(2063,132,83,2,NULL),(2064,98,114,2,NULL),(2065,133,83,2,NULL),(2066,100,114,2,NULL),(2067,134,83,2,NULL),(2068,102,114,2,NULL),(2069,56,83,2,NULL),(2070,127,114,2,NULL),(2071,60,83,2,NULL),(2072,44,115,2,NULL),(2073,63,83,2,NULL),(2074,88,115,2,NULL),(2075,65,83,2,NULL),(2076,89,115,2,NULL),(2077,67,83,2,NULL),(2078,91,115,2,NULL),(2079,94,115,2,NULL),(2080,95,115,2,NULL),(2081,98,115,2,NULL),(2082,100,115,2,NULL),(2083,69,41,2,NULL),(2084,102,115,2,NULL),(2085,70,41,2,NULL),(2086,127,115,2,NULL),(2087,72,41,2,NULL),(2088,44,116,2,NULL),(2089,69,46,2,NULL),(2090,88,116,2,NULL),(2091,70,46,2,NULL),(2092,89,116,2,NULL),(2093,72,46,2,NULL),(2094,91,116,2,NULL),(2095,69,49,2,NULL),(2096,94,116,2,NULL),(2097,70,49,2,NULL),(2098,95,116,2,NULL),(2099,72,49,2,NULL),(2100,98,116,2,NULL),(2101,69,53,2,NULL),(2102,100,116,2,NULL),(2103,70,53,2,NULL),(2104,102,116,2,NULL),(2105,72,53,2,NULL),(2106,127,116,2,NULL),(2107,69,66,2,NULL),(2108,44,117,2,NULL),(2109,70,66,2,NULL),(2110,88,117,2,NULL),(2111,72,66,2,NULL),(2112,89,117,2,NULL),(2113,69,76,2,NULL),(2114,91,117,2,NULL),(2115,70,76,2,NULL),(2116,94,117,2,NULL),(2117,72,76,2,NULL),(2118,95,117,2,NULL),(2119,69,80,2,NULL),(2120,98,117,2,NULL),(2121,70,80,2,NULL),(2122,100,117,2,NULL),(2123,72,80,2,NULL),(2124,102,117,2,NULL),(2125,69,84,2,NULL),(2126,127,117,2,NULL),(2127,70,84,2,NULL),(2128,44,118,2,NULL),(2129,72,84,2,NULL),(2130,88,118,2,NULL),(2131,69,86,2,NULL),(2132,89,118,2,NULL),(2133,70,86,2,NULL),(2134,91,118,2,NULL),(2135,72,86,2,NULL),(2136,94,118,2,NULL),(2137,69,90,2,NULL),(2138,95,118,2,NULL),(2139,70,90,2,NULL),(2140,98,118,2,NULL),(2141,72,90,2,NULL),(2142,100,118,2,NULL),(2143,69,92,2,NULL),(2144,102,118,2,NULL),(2145,70,92,2,NULL),(2146,127,118,2,NULL),(2147,72,92,2,NULL),(2148,44,119,2,NULL),(2149,69,100,2,NULL),(2150,88,119,2,NULL),(2151,70,100,2,NULL),(2152,89,119,2,NULL),(2153,72,100,2,NULL),(2154,91,119,2,NULL),(2155,69,101,2,NULL),(2156,94,119,2,NULL),(2157,70,101,2,NULL),(2158,95,119,2,NULL),(2159,72,101,2,NULL),(2160,98,119,2,NULL),(2161,69,113,2,NULL),(2162,100,119,2,NULL),(2163,70,113,2,NULL),(2164,102,119,2,NULL),(2165,72,113,2,NULL),(2166,127,119,2,NULL),(2167,69,114,2,NULL),(2168,44,120,2,NULL),(2169,70,114,2,NULL),(2170,88,120,2,NULL),(2171,72,114,2,NULL),(2172,89,120,2,NULL),(2173,69,115,2,NULL),(2174,91,120,2,NULL),(2175,70,115,2,NULL),(2176,94,120,2,NULL),(2177,72,115,2,NULL),(2178,95,120,2,NULL),(2179,69,116,2,NULL),(2180,98,120,2,NULL),(2181,70,116,2,NULL),(2182,100,120,2,NULL),(2183,72,116,2,NULL),(2184,102,120,2,NULL),(2185,69,117,2,NULL),(2186,127,120,2,NULL),(2187,70,117,2,NULL),(2188,44,121,2,NULL),(2189,72,117,2,NULL),(2190,88,121,2,NULL),(2191,69,118,2,NULL),(2192,89,121,2,NULL),(2193,70,118,2,NULL),(2194,91,121,2,NULL),(2195,72,118,2,NULL),(2196,94,121,2,NULL),(2197,69,119,2,NULL),(2198,95,121,2,NULL),(2199,70,119,2,NULL),(2200,98,121,2,NULL),(2201,72,119,2,NULL),(2202,100,121,2,NULL),(2203,69,120,2,NULL),(2204,102,121,2,NULL),(2205,70,120,2,NULL),(2206,127,121,2,NULL),(2207,72,120,2,NULL),(2208,44,122,2,NULL),(2209,69,121,2,NULL),(2210,88,122,2,NULL),(2211,70,121,2,NULL),(2212,89,122,2,NULL),(2213,72,121,2,NULL),(2214,91,122,2,NULL),(2215,69,122,2,NULL),(2216,94,122,2,NULL),(2217,70,122,2,NULL),(2218,95,122,2,NULL),(2219,72,122,2,NULL),(2220,98,122,2,NULL),(2221,69,123,2,NULL),(2222,100,122,2,NULL),(2223,70,123,2,NULL),(2224,102,122,2,NULL),(2225,72,123,2,NULL),(2226,127,122,2,NULL),(2227,69,111,2,NULL),(2228,44,123,2,NULL),(2229,70,111,2,NULL),(2230,88,123,2,NULL),(2231,72,111,2,NULL),(2232,89,123,2,NULL),(2233,69,104,2,NULL),(2234,91,123,2,NULL),(2235,70,104,2,NULL),(2236,94,123,2,NULL),(2237,72,104,2,NULL),(2238,95,123,2,NULL),(2239,69,91,2,NULL),(2240,98,123,2,NULL),(2241,70,91,2,NULL),(2242,100,123,2,NULL),(2243,72,91,2,NULL),(2244,102,123,2,NULL),(2245,69,93,2,NULL),(2246,127,123,2,NULL),(2247,70,93,2,NULL),(2248,72,93,2,NULL),(2249,44,102,2,NULL),(2250,69,94,2,NULL),(2251,88,102,2,NULL),(2252,70,94,2,NULL),(2253,89,102,2,NULL),(2254,72,94,2,NULL),(2255,91,102,2,NULL),(2256,69,95,2,NULL),(2257,94,102,2,NULL),(2258,70,95,2,NULL),(2259,95,102,2,NULL),(2260,72,95,2,NULL),(2261,98,102,2,NULL),(2262,69,105,2,NULL),(2263,100,102,2,NULL),(2264,70,105,2,NULL),(2265,102,102,2,NULL),(2266,72,105,2,NULL),(2267,127,102,2,NULL),(2268,69,107,2,NULL),(2269,132,41,2,NULL),(2270,70,107,2,NULL),(2271,133,41,2,NULL),(2272,72,107,2,NULL),(2273,134,41,2,NULL),(2274,69,109,2,NULL),(2275,44,111,2,NULL),(2276,70,109,2,NULL),(2277,88,111,2,NULL),(2278,72,109,2,NULL),(2279,89,111,2,NULL),(2280,69,112,2,NULL),(2281,91,111,2,NULL),(2282,70,112,2,NULL),(2283,94,111,2,NULL),(2284,72,112,2,NULL),(2285,95,111,2,NULL),(2286,98,111,2,NULL),(2287,100,111,2,NULL),(2288,102,111,2,NULL),(2289,46,102,2,NULL),(2290,127,111,2,NULL),(2291,144,102,2,NULL),(2292,56,41,2,NULL),(2293,77,102,2,NULL),(2294,60,41,2,NULL),(2295,105,102,2,NULL),(2296,63,41,2,NULL),(2297,43,102,2,NULL),(2298,65,41,2,NULL),(2299,67,41,2,NULL),(2300,132,102,2,NULL),(2301,44,104,2,NULL),(2302,133,102,2,NULL),(2303,88,104,2,NULL),(2304,134,102,2,NULL),(2305,89,104,2,NULL),(2306,56,102,2,NULL),(2307,91,104,2,NULL),(2308,60,102,2,NULL),(2309,94,104,2,NULL),(2310,63,102,2,NULL),(2311,95,104,2,NULL),(2312,65,102,2,NULL),(2313,98,104,2,NULL),(2314,67,102,2,NULL),(2315,100,104,2,NULL),(2316,102,104,2,NULL),(2317,127,104,2,NULL),(2318,44,91,2,NULL),(2319,88,91,2,NULL),(2320,132,46,2,NULL),(2321,89,91,2,NULL),(2322,133,46,2,NULL),(2323,91,91,2,NULL),(2324,134,46,2,NULL),(2325,94,91,2,NULL),(2326,132,49,2,NULL),(2327,95,91,2,NULL),(2328,133,49,2,NULL),(2329,98,91,2,NULL),(2330,134,49,2,NULL),(2331,100,91,2,NULL),(2332,132,53,2,NULL),(2333,102,91,2,NULL),(2334,133,53,2,NULL),(2335,127,91,2,NULL),(2336,134,53,2,NULL),(2337,44,93,2,NULL),(2338,132,66,2,NULL),(2339,88,93,2,NULL),(2340,133,66,2,NULL),(2341,89,93,2,NULL),(2342,134,66,2,NULL),(2343,91,93,2,NULL),(2344,132,76,2,NULL),(2345,94,93,2,NULL),(2346,133,76,2,NULL),(2347,95,93,2,NULL),(2348,134,76,2,NULL),(2349,98,93,2,NULL),(2350,132,80,2,NULL),(2351,100,93,2,NULL),(2352,133,80,2,NULL),(2353,102,93,2,NULL),(2354,134,80,2,NULL),(2355,127,93,2,NULL),(2356,132,84,2,NULL),(2357,44,94,2,NULL),(2358,133,84,2,NULL),(2359,88,94,2,NULL),(2360,134,84,2,NULL),(2361,89,94,2,NULL),(2362,132,86,2,NULL),(2363,91,94,2,NULL),(2364,133,86,2,NULL),(2365,94,94,2,NULL),(2366,134,86,2,NULL),(2367,95,94,2,NULL),(2368,132,90,2,NULL),(2369,98,94,2,NULL),(2370,133,90,2,NULL),(2371,100,94,2,NULL),(2372,134,90,2,NULL),(2373,102,94,2,NULL),(2374,132,92,2,NULL),(2375,127,94,2,NULL),(2376,133,92,2,NULL),(2377,44,95,2,NULL),(2378,134,92,2,NULL),(2379,88,95,2,NULL),(2380,132,100,2,NULL),(2381,89,95,2,NULL),(2382,133,100,2,NULL),(2383,91,95,2,NULL),(2384,134,100,2,NULL),(2385,94,95,2,NULL),(2386,132,101,2,NULL),(2387,95,95,2,NULL),(2388,133,101,2,NULL),(2389,98,95,2,NULL),(2390,134,101,2,NULL),(2391,100,95,2,NULL),(2392,132,113,2,NULL),(2393,102,95,2,NULL),(2394,133,113,2,NULL),(2395,127,95,2,NULL),(2396,134,113,2,NULL),(2397,44,105,2,NULL),(2398,132,114,2,NULL),(2399,88,105,2,NULL),(2400,133,114,2,NULL),(2401,89,105,2,NULL),(2402,134,114,2,NULL),(2403,91,105,2,NULL),(2404,132,115,2,NULL),(2405,94,105,2,NULL),(2406,133,115,2,NULL),(2407,95,105,2,NULL),(2408,134,115,2,NULL),(2409,98,105,2,NULL),(2410,132,116,2,NULL),(2411,100,105,2,NULL),(2412,133,116,2,NULL),(2413,102,105,2,NULL),(2414,134,116,2,NULL),(2415,127,105,2,NULL),(2416,132,117,2,NULL),(2417,44,107,2,NULL),(2418,133,117,2,NULL),(2419,88,107,2,NULL),(2420,134,117,2,NULL),(2421,132,118,2,NULL),(2422,133,118,2,NULL),(2423,89,107,2,NULL),(2424,134,118,2,NULL),(2425,91,107,2,NULL),(2426,132,119,2,NULL),(2427,94,107,2,NULL),(2428,133,119,2,NULL),(2429,95,107,2,NULL),(2430,134,119,2,NULL),(2431,98,107,2,NULL),(2432,132,120,2,NULL),(2433,100,107,2,NULL),(2434,133,120,2,NULL),(2435,102,107,2,NULL),(2436,134,120,2,NULL),(2437,127,107,2,NULL),(2438,132,121,2,NULL),(2439,44,109,2,NULL),(2440,133,121,2,NULL),(2441,88,109,2,NULL),(2442,134,121,2,NULL),(2443,89,109,2,NULL),(2444,132,122,2,NULL),(2445,91,109,2,NULL),(2446,133,122,2,NULL),(2447,94,109,2,NULL),(2448,134,122,2,NULL),(2449,95,109,2,NULL),(2450,132,123,2,NULL),(2451,98,109,2,NULL),(2452,133,123,2,NULL),(2453,100,109,2,NULL),(2454,134,123,2,NULL),(2455,102,109,2,NULL),(2456,132,104,2,NULL),(2457,127,109,2,NULL),(2458,133,104,2,NULL),(2459,44,112,2,NULL),(2460,134,104,2,NULL),(2461,88,112,2,NULL),(2462,132,91,2,NULL),(2463,89,112,2,NULL),(2464,133,91,2,NULL),(2465,91,112,2,NULL),(2466,134,91,2,NULL),(2467,94,112,2,NULL),(2468,132,93,2,NULL),(2469,95,112,2,NULL),(2470,133,93,2,NULL),(2471,98,112,2,NULL),(2472,134,93,2,NULL),(2473,100,112,2,NULL),(2474,132,94,2,NULL),(2475,102,112,2,NULL),(2476,133,94,2,NULL),(2477,127,112,2,NULL),(2478,134,94,2,NULL),(2479,46,46,2,NULL),(2480,132,95,2,NULL),(2481,144,46,2,NULL),(2482,133,95,2,NULL),(2483,77,46,2,NULL),(2484,134,95,2,NULL),(2485,105,46,2,NULL),(2486,132,105,2,NULL),(2487,43,46,2,NULL),(2488,133,105,2,NULL),(2489,56,46,2,NULL),(2490,134,105,2,NULL),(2491,60,46,2,NULL),(2492,132,107,2,NULL),(2493,63,46,2,NULL),(2494,133,107,2,NULL),(2495,65,46,2,NULL),(2496,134,107,2,NULL),(2497,67,46,2,NULL),(2498,132,109,2,NULL),(2499,46,49,2,NULL),(2500,133,109,2,NULL),(2501,144,49,2,NULL),(2502,134,109,2,NULL),(2503,77,49,2,NULL),(2504,132,112,2,NULL),(2505,105,49,2,NULL),(2506,133,112,2,NULL),(2507,43,49,2,NULL),(2508,134,112,2,NULL),(2509,56,49,2,NULL),(2510,60,49,2,NULL),(2511,63,49,2,NULL),(2512,65,49,2,NULL),(2513,46,111,2,NULL),(2514,67,49,2,NULL),(2515,144,111,2,NULL),(2516,131,41,2,NULL),(2517,77,111,2,NULL),(2518,83,41,2,NULL),(2519,105,111,2,NULL),(2520,46,53,2,NULL),(2521,144,53,2,NULL),(2522,43,111,2,NULL),(2523,77,53,2,NULL),(2524,105,53,2,NULL),(2525,43,53,2,NULL),(2526,56,111,2,NULL),(2527,56,53,2,NULL),(2528,60,111,2,NULL),(2529,60,53,2,NULL),(2530,63,111,2,NULL),(2531,63,53,2,NULL),(2532,65,111,2,NULL),(2533,65,53,2,NULL),(2534,67,111,2,NULL),(2535,67,53,2,NULL),(2536,34,58,2,NULL),(2537,35,57,2,NULL),(2538,110,51,2,NULL),(2539,137,63,2,NULL),(2540,56,66,2,NULL),(2541,60,66,2,NULL),(2542,63,66,2,NULL),(2543,65,66,2,NULL),(2544,67,66,2,NULL),(2545,46,66,2,NULL),(2546,56,76,2,NULL),(2547,144,66,2,NULL),(2548,60,76,2,NULL),(2549,46,76,2,NULL),(2550,63,76,2,NULL),(2551,144,76,2,NULL),(2552,65,76,2,NULL),(2553,46,80,2,NULL),(2554,67,76,2,NULL),(2555,144,80,2,NULL),(2556,56,80,2,NULL),(2557,46,84,2,NULL),(2558,60,80,2,NULL),(2559,144,84,2,NULL),(2560,63,80,2,NULL),(2561,46,86,2,NULL),(2562,65,80,2,NULL),(2563,144,86,2,NULL),(2564,67,80,2,NULL),(2565,46,90,2,NULL),(2566,56,84,2,NULL),(2567,144,90,2,NULL),(2568,60,84,2,NULL),(2569,46,92,2,NULL),(2570,63,84,2,NULL),(2571,144,92,2,NULL),(2572,65,84,2,NULL),(2573,46,100,2,NULL),(2574,67,84,2,NULL),(2575,144,100,2,NULL),(2576,56,86,2,NULL),(2577,46,101,2,NULL),(2578,60,86,2,NULL),(2579,144,101,2,NULL),(2580,63,86,2,NULL),(2581,46,113,2,NULL),(2582,65,86,2,NULL),(2583,144,113,2,NULL),(2584,67,86,2,NULL),(2585,46,114,2,NULL),(2586,56,90,2,NULL),(2587,144,114,2,NULL),(2588,60,90,2,NULL),(2589,46,115,2,NULL),(2590,144,115,2,NULL),(2591,63,90,2,NULL),(2592,46,116,2,NULL),(2593,65,90,2,NULL),(2594,144,116,2,NULL),(2595,67,90,2,NULL),(2596,46,117,2,NULL),(2597,56,92,2,NULL),(2598,144,117,2,NULL),(2599,60,92,2,NULL),(2600,46,118,2,NULL),(2601,63,92,2,NULL),(2602,144,118,2,NULL),(2603,65,92,2,NULL),(2604,46,119,2,NULL),(2605,67,92,2,NULL),(2606,144,119,2,NULL),(2607,56,100,2,NULL),(2608,46,120,2,NULL),(2609,60,100,2,NULL),(2610,144,120,2,NULL),(2611,63,100,2,NULL),(2612,46,121,2,NULL),(2613,65,100,2,NULL),(2614,144,121,2,NULL),(2615,67,100,2,NULL),(2616,46,122,2,NULL),(2617,56,101,2,NULL),(2618,144,122,2,NULL),(2619,60,101,2,NULL),(2620,46,123,2,NULL),(2621,63,101,2,NULL),(2622,144,123,2,NULL),(2623,65,101,2,NULL),(2624,46,104,2,NULL),(2625,67,101,2,NULL),(2626,144,104,2,NULL),(2627,56,113,2,NULL),(2628,46,91,2,NULL),(2629,60,113,2,NULL),(2630,144,91,2,NULL),(2631,63,113,2,NULL),(2632,46,93,2,NULL),(2633,65,113,2,NULL),(2634,144,93,2,NULL),(2635,67,113,2,NULL),(2636,46,94,2,NULL),(2637,56,114,2,NULL),(2638,144,94,2,NULL),(2639,60,114,2,NULL),(2640,46,95,2,NULL),(2641,63,114,2,NULL),(2642,144,95,2,NULL),(2643,65,114,2,NULL),(2644,46,105,2,NULL),(2645,67,114,2,NULL),(2646,144,105,2,NULL),(2647,56,115,2,NULL),(2648,46,107,2,NULL),(2649,60,115,2,NULL),(2650,144,107,2,NULL),(2651,63,115,2,NULL),(2652,46,109,2,NULL),(2653,65,115,2,NULL),(2654,144,109,2,NULL),(2655,67,115,2,NULL),(2656,46,112,2,NULL),(2657,56,116,2,NULL),(2658,144,112,2,NULL),(2659,60,116,2,NULL),(2660,63,116,2,NULL),(2661,77,66,2,NULL),(2662,105,66,2,NULL),(2663,65,116,2,NULL),(2664,77,76,2,NULL),(2665,67,116,2,NULL),(2666,56,117,2,NULL),(2667,105,76,2,NULL),(2668,60,117,2,NULL),(2669,77,80,2,NULL),(2670,63,117,2,NULL),(2671,105,80,2,NULL),(2672,65,117,2,NULL),(2673,77,84,2,NULL),(2674,67,117,2,NULL),(2675,105,84,2,NULL),(2676,56,118,2,NULL),(2677,77,86,2,NULL),(2678,60,118,2,NULL),(2679,105,86,2,NULL),(2680,63,118,2,NULL),(2681,77,90,2,NULL),(2682,65,118,2,NULL),(2683,105,90,2,NULL),(2684,67,118,2,NULL),(2685,77,92,2,NULL),(2686,56,119,2,NULL),(2687,105,92,2,NULL),(2688,60,119,2,NULL),(2689,77,100,2,NULL),(2690,63,119,2,NULL),(2691,105,100,2,NULL),(2692,65,119,2,NULL),(2693,77,101,2,NULL),(2694,67,119,2,NULL),(2695,105,101,2,NULL),(2696,56,120,2,NULL),(2697,77,113,2,NULL),(2698,60,120,2,NULL),(2699,105,113,2,NULL),(2700,63,120,2,NULL),(2701,77,114,2,NULL),(2702,65,120,2,NULL),(2703,105,114,2,NULL),(2704,67,120,2,NULL),(2705,77,115,2,NULL),(2706,56,121,2,NULL),(2707,105,115,2,NULL),(2708,60,121,2,NULL),(2709,77,116,2,NULL),(2710,63,121,2,NULL),(2711,105,116,2,NULL),(2712,65,121,2,NULL),(2713,77,117,2,NULL),(2714,67,121,2,NULL),(2715,105,117,2,NULL),(2716,56,122,2,NULL),(2717,77,118,2,NULL),(2718,60,122,2,NULL),(2719,105,118,2,NULL),(2720,63,122,2,NULL),(2721,77,119,2,NULL),(2722,65,122,2,NULL),(2723,105,119,2,NULL),(2724,67,122,2,NULL),(2725,77,120,2,NULL),(2726,56,123,2,NULL),(2727,105,120,2,NULL),(2728,60,123,2,NULL),(2729,77,121,2,NULL),(2730,63,123,2,NULL),(2731,105,121,2,NULL),(2732,65,123,2,NULL),(2733,77,122,2,NULL),(2734,67,123,2,NULL),(2735,105,122,2,NULL),(2736,77,123,2,NULL),(2737,56,91,2,NULL),(2738,105,123,2,NULL),(2739,60,91,2,NULL),(2740,77,104,2,NULL),(2741,63,91,2,NULL),(2742,65,91,2,NULL),(2743,105,104,2,NULL),(2744,67,91,2,NULL),(2745,77,91,2,NULL),(2746,56,93,2,NULL),(2747,105,91,2,NULL),(2748,60,93,2,NULL),(2749,77,93,2,NULL),(2750,63,93,2,NULL),(2751,105,93,2,NULL),(2752,65,93,2,NULL),(2753,77,94,2,NULL),(2754,67,93,2,NULL),(2755,105,94,2,NULL),(2756,56,94,2,NULL),(2757,77,95,2,NULL),(2758,60,94,2,NULL),(2759,105,95,2,NULL),(2760,63,94,2,NULL),(2761,77,105,2,NULL),(2762,65,94,2,NULL),(2763,105,105,2,NULL),(2764,67,94,2,NULL),(2765,77,107,2,NULL),(2766,56,95,2,NULL),(2767,105,107,2,NULL),(2768,60,95,2,NULL),(2769,77,109,2,NULL),(2770,63,95,2,NULL),(2771,105,109,2,NULL),(2772,65,95,2,NULL),(2773,77,112,2,NULL),(2774,67,95,2,NULL),(2775,105,112,2,NULL),(2776,56,105,2,NULL),(2777,60,105,2,NULL),(2778,43,66,2,NULL),(2779,63,105,2,NULL),(2780,65,105,2,NULL),(2781,43,76,2,NULL),(2782,67,105,2,NULL),(2783,56,107,2,NULL),(2784,135,71,2,NULL),(2785,60,107,2,NULL),(2786,43,80,2,NULL),(2787,63,107,2,NULL),(2788,65,107,2,NULL),(2789,43,84,2,NULL),(2790,67,107,2,NULL),(2791,56,109,2,NULL),(2792,60,109,2,NULL),(2793,43,90,2,NULL),(2794,63,109,2,NULL),(2795,43,92,2,NULL),(2796,65,109,2,NULL),(2797,43,100,2,NULL),(2798,67,109,2,NULL),(2799,43,101,2,NULL),(2800,56,112,2,NULL),(2801,43,113,2,NULL),(2802,60,112,2,NULL),(2803,43,114,2,NULL),(2804,63,112,2,NULL),(2805,43,115,2,NULL),(2806,65,112,2,NULL),(2807,43,116,2,NULL),(2808,67,112,2,NULL),(2809,43,117,2,NULL),(2810,43,118,2,NULL),(2811,43,119,2,NULL),(2812,43,104,2,NULL),(2813,43,120,2,NULL),(2814,43,121,2,NULL),(2815,43,91,2,NULL),(2816,43,122,2,NULL),(2817,43,123,2,NULL),(2818,43,93,2,NULL),(2819,43,94,2,NULL),(2820,97,85,2,NULL),(2821,43,95,2,NULL),(2822,43,105,2,NULL),(2823,43,107,2,NULL),(2824,43,109,2,NULL),(2825,43,112,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:43
