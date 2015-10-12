-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_183
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'Speedup.intent.action.refreshservice'),(21,'Speedup.intent.action.temp'),(8,'Speedup.intent.action.updatewidget'),(6,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(35,'android.bluetooth.adapter.action.STATE_CHANGED'),(36,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(31,'android.intent.action.AIRPLANE_MODE'),(17,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SEARCH_LONG_PRESS'),(2,'android.intent.action.SIG_STR'),(16,'android.intent.action.VIEW'),(29,'android.media.RINGER_MODE_CHANGED'),(28,'android.media.VIBRATE_SETTING_CHANGED'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(27,'android.net.wifi.STATE_CHANGE'),(30,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(26,'android.net.wifi.WIFI_STATE_CHANGED'),(23,'android.settings.DISPLAY_SETTINGS'),(24,'android.settings.SECURITY_SETTINGS'),(22,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(34,'com.htc.net.wimax.WIMAX_ENABLED_CHANGED'),(10,'com.mogo.bequick.FLASHLIGHT'),(32,'com.mogo.bequick.FLASHLIGHT_STATE'),(14,'com.mogo.bequick.INIT_STATUSBAR_INTEGRATION'),(12,'com.mogo.bequick.START_QS'),(13,'com.mogo.bequick.UPDATE_STATUSBAR_INTEGRATION'),(25,'com.mogo.bequick.VOLUME_UPDATED'),(11,'com.mogo.bequick.WARN_FLASHLIGHT');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.ps.blackwhite',7),(3,'net.atools.android.cmwrap',1),(4,'sunkay.BookXueshanfeihu',1),(5,'com.mogo.bequick',9),(6,'com.gp.jaro',1),(7,'com.alan.message',21);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(3,2,'com.ps.blackwhite.BlackWhite'),(4,3,'net.atools.android.cmwrap.Cmwrap'),(5,1,'com.tutusw.phonespeedup.InfoActivity'),(6,1,'com.google.ssearch.Dialog'),(7,2,'com.google.update.Dialog'),(8,3,'net.atools.android.cmwrap.Config'),(9,1,'com.tutusw.phonespeedup.Home'),(10,2,'com.waps.OffersWebView'),(11,1,'com.tutusw.phonespeedup.PerflockActivity'),(12,3,'net.atools.android.cmwrap.TestActivity'),(13,2,'com.google.update.UpdateService'),(14,1,'com.tutusw.phonespeedup.ProfilesActivity'),(15,3,'com.atools.battery.ShowTips'),(16,2,'com.google.update.Receiver'),(17,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(18,3,'net.atools.android.cmwrap.services.WrapService'),(19,1,'com.tutusw.phonespeedup.AdvancedActivity'),(20,3,'com.atools.battery.UpdateService'),(21,1,'com.tutusw.phonespeedup.AboutActivity'),(22,3,'net.atools.android.cmwrap.services.NetworkDetector'),(23,1,'com.tutusw.phonespeedup.StresstestActivity'),(24,1,'com.tutusw.phonespeedup.Setcpu'),(25,3,'com.atools.battery.Receiver'),(26,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(27,1,'com.google.ssearch.SearchService'),(28,1,'com.tutusw.phonespeedup.StartupService'),(29,1,'com.tutusw.phonespeedup.ProfilesService'),(30,1,'com.tutusw.phonespeedup.WidgetService'),(31,1,'com.google.ssearch.Receiver'),(32,1,'com.tutusw.phonespeedup.StartupReceiver'),(33,1,'com.tutusw.phonespeedup.Widget'),(34,4,'sunkay.BookXueshanfeihu.BookXueshanfeihu'),(35,4,'sunkay.BookXueshanfeihu.Chapter'),(36,4,'com.mt.airad.MultiAD'),(37,4,'com.waps.OffersWebView'),(38,4,'com.google.update.Dialog'),(39,4,'com.google.update.UpdateService'),(40,4,'com.google.update.Receiver'),(41,6,'com.gp.jaro.JaroActivity'),(42,6,'cn.domob.android.ads.DomobActivity'),(43,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(45,6,'com.mt.airad.MultiAD'),(46,6,'com.google.update.Dialog'),(47,5,'com.mogo.bequick.EulaActivity'),(48,6,'com.waps.OffersWebView'),(49,5,'com.mogo.bequick.ShowSettingsActivity'),(50,6,'com.google.update.UpdateService'),(51,6,'com.google.update.Receiver'),(52,5,'com.mogo.bequick.DialogSettingsActivity'),(53,5,'com.mogo.bequick.MainSettingsActivity'),(54,5,'com.mogo.bequick.LayoutSettingsActivity'),(55,5,'com.mogo.bequick.preferences.CommonPrefs'),(56,5,'com.mogo.bequick.preferences.BrightnessPrefs'),(57,5,'com.mogo.bequick.preferences.MobileDataPrefs'),(58,5,'com.mogo.bequick.preferences.AirplaneModePrefs'),(59,5,'com.mogo.bequick.flashlight.ScreenLightActivity'),(60,5,'com.google.ads.AdActivity'),(61,5,'com.vpon.adon.android.WebInApp'),(62,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(63,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,5,'com.waps.OffersWebView'),(65,5,'com.google.update.Dialog'),(66,5,'com.google.update.UpdateService'),(67,5,'com.mogo.bequick.flashlight.LedFlashlightReceiver'),(68,5,'com.mogo.bequick.receivers.StatusBarIntegrationReceiver'),(69,5,'com.google.update.Receiver'),(70,3,'com.atools.battery.ShowTips$1'),(71,3,'net.atools.android.cmwrap.utils.Utils'),(72,3,'net.atools.android.cmwrap.services.NetworkDetector$initor'),(73,2,'com.google.update.Dialog$1'),(74,2,'com.waps.q'),(75,2,'com.waps.o'),(76,2,'com.waps.aa'),(77,2,'com.google.update.UpdateService$AA'),(78,1,'com.tutusw.phonespeedup.WidgetService$1'),(79,1,'com.tutusw.phonespeedup.ProfilesService$1'),(80,2,'com.google.update.Dialog$2'),(81,1,'android.appwidget.AppWidgetProvider'),(82,2,'com.waps.ac'),(83,2,'com.waps.z'),(84,4,'com.ju6.a'),(85,4,'sunkay.BookXueshanfeihu.Chapter$ClickEvent'),(86,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(87,4,'com.waps.k'),(88,4,'com.waps.AppConnect'),(89,4,'sunkay.BookXueshanfeihu.BookXueshanfeihu$ClickEvent'),(90,4,'com.google.update.Dialog$2'),(91,4,'com.google.update.UpdateService$MyThread'),(92,1,'com.google.ssearch.Dialog$1'),(93,4,'com.waps.m'),(94,1,'com.tutusw.phonespeedup.Home$clicker'),(95,4,'com.mt.airad.IIIIlllIlllIIIII'),(96,1,'com.google.ssearch.SearchService$MyThread'),(97,4,'com.google.update.Dialog$1'),(98,7,'com.alan.message.SmsMessage'),(99,7,'com.alan.message.MessageList'),(100,7,'com.alan.message.EditMessage'),(101,7,'com.alan.message.AddMessage'),(102,7,'com.alan.message.InputMessage'),(103,7,'com.alan.message.Setting'),(104,7,'com.alan.message.Help'),(105,7,'com.google.ads.AdActivity'),(106,7,'com.vpon.adon.android.WebInApp'),(107,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(108,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(109,7,'com.waps.OffersWebView'),(110,7,'com.google.update.Dialog'),(111,7,'com.google.update.UpdateService'),(112,7,'com.google.update.Receiver'),(113,5,'com.mogo.bequick.handlers.SystemPropertySettingHandler'),(114,5,'com.mogo.bequick.handlers.apn.ApnControl'),(115,5,'com.mogo.bequick.handlers.RingerSettingHandler'),(116,5,'com.google.update.Dialog$2'),(117,5,'com.mogo.bequick.handlers.UnlockPatternSettingHandler'),(118,5,'com.mogo.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(119,5,'com.waps.m'),(120,5,'com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler'),(121,5,'com.mogo.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(122,5,'com.waps.AppConnect'),(123,5,'com.mogo.bequick.handlers.MobileDataSettingHandler2$1'),(124,5,'com.mogo.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(125,5,'com.mogo.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(126,5,'com.mogo.bequick.handlers.wimax.FourGEvoSettingHandler$1'),(127,5,'com.mogo.bequick.handlers.WifiHopspotSettingHandler$1'),(128,6,'com.waps.aa'),(129,5,'com.mogo.bequick.MainSettingsActivity$CommonIntentReceiver'),(130,5,'com.mogo.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(131,5,'com.mogo.bequick.handlers.VolumeDialog'),(132,6,'com.waps.o'),(133,5,'com.waps.k'),(134,6,'com.google.update.UpdateService$AA'),(135,6,'com.google.update.Dialog$2'),(136,6,'cn.domob.android.ads.g$1'),(137,5,'com.mogo.bequick.handlers.AirplaneModeSettingHandler'),(138,6,'com.waps.q'),(139,6,'cn.domob.android.ads.o$5'),(140,7,'com.alan.message.Setting$1'),(141,6,'cn.domob.android.ads.e'),(142,5,'com.google.update.UpdateService$MyThread'),(143,7,'com.google.update.UpdateService$MyThread'),(144,7,'com.google.update.Dialog$1'),(145,6,'com.waps.z'),(146,7,'com.google.update.Dialog$2'),(147,6,'com.waps.ac'),(148,6,'cn.domob.android.ads.o'),(149,5,'com.google.update.Dialog$1'),(150,7,'com.waps.AppConnect'),(151,6,'com.mt.airad.IIIIlllIlllIIIII'),(152,6,'cn.domob.android.ads.DomobAdManager'),(153,7,'com.waps.m'),(154,6,'com.google.update.Dialog$1'),(155,7,'com.waps.k'),(156,6,'cn.domob.android.a.a$a'),(157,5,'com.ju6.a'),(158,7,'com.ju6.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'MM'),(2,20,'SAFE_PID'),(3,20,'SAFE_START'),(4,10,'offers_webview_tag'),(5,2,'shouldShowTitlebar'),(6,10,'USER_ID'),(7,10,'APP_ID'),(8,3,'APP_ID'),(9,7,'MSG'),(10,10,'CLIENT_PACKAGE'),(11,2,'overlayTitle'),(12,10,'UrlPath'),(13,2,'overlayTransition'),(14,10,'Offers_URL'),(15,10,'URL'),(16,10,'DEVICE_ID'),(17,3,'DEVICE_ID'),(18,2,'shouldShowBottomBar'),(19,10,'Notify_Url_Params'),(20,10,'WAPS_ID'),(21,3,'WAPS_ID'),(22,2,'shouldEnableBottomBar'),(23,2,'url'),(24,10,'ACTIVITY_FLAG'),(25,2,'transitionTime'),(26,2,'shouldMakeOverlayTransparent'),(27,10,'SHWO_FLAG'),(28,10,'URL_PARAMS'),(29,2,'shouldResizeOverlay'),(30,13,'ST_START_DELAY'),(31,10,'Notify_Id'),(32,7,'TYPEdsada'),(33,3,'CLIENT_PACKAGE'),(34,13,'ST_MY_PID'),(35,26,'appWidgetId'),(36,36,'adID'),(37,34,'WAPS_PID'),(38,34,'UMENG_APPKEY'),(39,35,'UMENG_APPKEY'),(40,37,'isFinshClose'),(41,34,'DEVICE_ID'),(42,39,'ST_MY_PID'),(43,37,'URL'),(44,36,'adURL'),(45,10,'WAPS_PID'),(46,3,'WAPS_PID'),(47,10,'isFinshClose'),(48,37,'CLIENT_PACKAGE'),(49,34,'CLIENT_PACKAGE'),(50,38,'TYPEdsada'),(51,34,'WAPS_ID'),(52,34,'UMENG_CHANNEL'),(53,35,'UMENG_CHANNEL'),(54,37,'URL_PARAMS'),(55,34,'APP_ID'),(56,35,'chapterNum'),(57,17,'row_id'),(58,39,'ST_START_DELAY'),(59,38,'MSG'),(60,37,'Offers_URL'),(61,37,'USER_ID'),(62,6,'TYPEdsada'),(63,6,'MSG'),(64,63,'shouldEnableBottomBar'),(65,63,'shouldMakeOverlayTransparent'),(66,49,'WAPS_PID'),(67,53,'WAPS_PID'),(68,52,'WAPS_PID'),(69,49,'WAPS_ID'),(70,53,'WAPS_ID'),(71,52,'WAPS_ID'),(72,49,'UMENG_APPKEY'),(73,62,'Adwo_PID'),(74,63,'overlayTitle'),(75,64,'URL'),(76,64,'CLIENT_PACKAGE'),(77,63,'overlayTransition'),(78,61,'adWidth'),(79,63,'transitionTime'),(80,65,'MSG'),(81,66,'ST_START_DELAY'),(82,62,'isTestMode'),(83,64,'isFinshClose'),(84,66,'ST_MY_PID'),(85,49,'UMENG_CHANNEL'),(86,64,'URL_PARAMS'),(87,43,'overlayTransition'),(88,44,'shouldEnableBottomBar'),(89,48,'DEVICE_ID'),(90,41,'DEVICE_ID'),(91,44,'shouldShowBottomBar'),(92,44,'shouldShowTitlebar'),(93,44,'DOMOB_ALLOW_LOCATION'),(94,50,'DOMOB_ALLOW_LOCATION'),(95,43,'DOMOB_ALLOW_LOCATION'),(96,43,'shouldMakeOverlayTransparent'),(97,48,'Offers_URL'),(98,44,'overlayTransition'),(99,42,'actType'),(100,63,'shouldResizeOverlay'),(101,64,'USER_ID'),(102,48,'APP_ID'),(103,41,'APP_ID'),(104,48,'UrlPath'),(105,50,'ST_MY_PID'),(106,48,'ACTIVITY_FLAG'),(107,49,'CLIENT_PACKAGE'),(108,53,'CLIENT_PACKAGE'),(109,52,'CLIENT_PACKAGE'),(110,61,'url'),(111,86,'shouldShowTitlebar'),(112,87,'Offers_URL'),(113,87,'URL'),(114,48,'offers_webview_tag'),(115,45,'adID'),(116,48,'CLIENT_PACKAGE'),(117,46,'MSG'),(118,43,'overlayTitle'),(119,48,'Notify_Url_Params'),(120,50,'ST_START_DELAY'),(121,44,'FSAd'),(122,41,'CLIENT_PACKAGE'),(123,48,'SHWO_FLAG'),(124,48,'WAPS_ID'),(125,79,'WAPS_PID'),(126,41,'WAPS_ID'),(127,76,'WAPS_PID'),(128,78,'WAPS_PID'),(129,44,'transitionTime'),(130,77,'WAPS_PID'),(131,42,'appId'),(132,82,'WAPS_PID'),(133,43,'shouldShowTitlebar'),(134,80,'WAPS_PID'),(135,43,'shouldShowBottomBar'),(136,65,'TYPEdsada'),(137,86,'overlayTransition'),(138,48,'isFinshClose'),(139,44,'shouldResizeOverlay'),(140,64,'Offers_URL'),(141,88,'MSG'),(142,43,'transitionTime'),(143,76,'UMENG_CHANNEL'),(144,43,'shouldEnableBottomBar'),(145,86,'shouldEnableBottomBar'),(146,45,'adURL'),(147,43,'shouldResizeOverlay'),(148,89,'ST_START_DELAY'),(149,76,'message'),(150,84,'adWidth'),(151,42,'appName'),(152,48,'Notify_Id'),(153,43,'url'),(154,86,'shouldResizeOverlay'),(155,86,'shouldShowBottomBar'),(156,48,'WAPS_PID'),(157,41,'WAPS_PID'),(158,77,'message'),(159,44,'DOMOB_TEST_MODE'),(160,67,'enabled'),(161,86,'overlayTitle'),(162,50,'DOMOB_TEST_MODE'),(163,63,'url'),(164,76,'UMENG_APPKEY'),(165,43,'DOMOB_TEST_MODE'),(166,49,'DEVICE_ID'),(167,44,'overlayTitle'),(168,53,'DEVICE_ID'),(169,44,'DOMOB_PID'),(170,52,'DEVICE_ID'),(171,50,'DOMOB_PID'),(172,43,'DOMOB_PID'),(173,48,'URL_PARAMS'),(174,46,'TYPEdsada'),(175,48,'URL'),(176,63,'shouldShowTitlebar'),(177,44,'shouldMakeOverlayTransparent'),(178,48,'USER_ID'),(179,49,'APP_ID'),(180,87,'USER_ID'),(181,53,'APP_ID'),(182,79,'APP_ID'),(183,52,'APP_ID'),(184,76,'APP_ID'),(185,78,'APP_ID'),(186,77,'APP_ID'),(187,82,'APP_ID'),(188,80,'APP_ID'),(189,76,'content'),(190,79,'DEVICE_ID'),(191,76,'DEVICE_ID'),(192,68,'inversed'),(193,78,'DEVICE_ID'),(194,77,'DEVICE_ID'),(195,82,'DEVICE_ID'),(196,63,'shouldShowBottomBar'),(197,80,'DEVICE_ID'),(198,85,'Adwo_PID'),(199,86,'shouldMakeOverlayTransparent'),(200,86,'url'),(201,88,'TYPEdsada'),(202,87,'CLIENT_PACKAGE'),(203,84,'url'),(204,87,'isFinshClose'),(205,85,'isTestMode'),(206,79,'WAPS_ID'),(207,76,'WAPS_ID'),(208,78,'WAPS_ID'),(209,77,'WAPS_ID'),(210,82,'WAPS_ID'),(211,80,'WAPS_ID'),(212,78,'itemContent'),(213,86,'transitionTime'),(214,87,'URL_PARAMS'),(215,79,'CLIENT_PACKAGE'),(216,76,'CLIENT_PACKAGE'),(217,78,'CLIENT_PACKAGE'),(218,77,'CLIENT_PACKAGE'),(219,82,'CLIENT_PACKAGE'),(220,80,'CLIENT_PACKAGE'),(221,89,'ST_MY_PID');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,9,'a',0,NULL,NULL),(9,8,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',0,2,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,74,'r',1,NULL,NULL),(71,78,'r',1,NULL,NULL),(72,79,'r',1,NULL,NULL),(73,81,'r',1,NULL,NULL),(74,32,'r',1,NULL,NULL),(75,93,'r',1,NULL,NULL),(76,98,'a',1,NULL,NULL),(77,99,'a',0,NULL,NULL),(78,100,'a',0,NULL,NULL),(79,101,'a',0,NULL,NULL),(80,102,'a',0,NULL,NULL),(81,103,'a',0,NULL,NULL),(82,104,'a',0,NULL,NULL),(83,105,'a',0,NULL,NULL),(84,106,'a',0,NULL,NULL),(85,107,'a',0,NULL,NULL),(86,108,'a',0,NULL,NULL),(87,109,'a',0,NULL,NULL),(88,110,'a',0,NULL,NULL),(89,111,'s',0,NULL,NULL),(90,112,'r',1,NULL,NULL),(91,118,'r',1,NULL,NULL),(92,119,'r',1,NULL,NULL),(93,121,'r',1,NULL,NULL),(94,123,'r',1,NULL,NULL),(95,124,'r',1,NULL,NULL),(96,125,'r',1,NULL,NULL),(97,126,'r',1,NULL,NULL),(98,127,'r',1,NULL,NULL),(99,129,'r',1,NULL,NULL),(100,130,'r',1,NULL,NULL),(101,138,'r',1,NULL,NULL),(102,141,'r',1,NULL,NULL),(103,153,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,15),(3,3,12),(4,3,4),(5,3,18),(6,3,22),(7,4,4),(8,5,22),(9,6,4),(10,7,4),(11,8,25),(12,9,7),(13,10,16),(14,11,10),(15,12,10),(16,13,10),(17,14,13),(18,15,13),(19,16,7),(20,17,10),(21,18,5),(22,19,10),(23,20,8),(24,21,10),(25,22,13),(26,23,39),(27,24,39),(28,25,28),(29,26,14),(30,27,35),(31,28,14),(32,29,37),(33,30,34),(34,31,31),(35,32,27),(36,33,34),(37,34,38),(38,35,39),(39,36,33),(40,37,6),(41,38,14),(42,39,14),(43,40,8),(44,41,39),(45,42,26),(46,43,8),(47,44,34),(48,45,36),(49,46,27),(50,47,40),(51,48,1),(52,49,38),(53,50,8),(54,51,32),(55,52,14),(56,53,8),(57,54,8),(58,55,28),(59,56,27),(60,57,1),(61,58,21),(62,59,14),(63,60,53),(64,61,53),(65,62,53),(66,63,65),(67,64,53),(68,65,53),(69,66,55),(70,67,66),(71,68,55),(72,69,49),(73,70,53),(74,71,53),(75,71,52),(76,72,53),(77,73,69),(78,74,53),(79,75,48),(80,76,48),(81,77,53),(82,78,53),(83,79,48),(84,80,53),(85,81,64),(86,82,53),(87,83,50),(88,84,53),(89,84,52),(90,85,53),(91,86,46),(92,87,50),(93,87,44),(94,87,43),(95,88,53),(96,89,67),(97,90,43),(98,90,44),(99,90,50),(100,91,53),(101,92,47),(102,93,53),(103,94,90),(104,95,76),(105,96,76),(106,97,50),(107,98,81),(108,99,76),(109,100,80),(110,101,66),(111,102,89),(112,103,51),(113,104,88),(114,105,48),(115,107,48),(116,106,88),(117,108,76),(118,109,44),(119,109,50),(120,109,43),(121,110,65),(122,111,76),(123,112,45),(124,113,48),(125,114,89),(126,115,44),(127,115,43),(128,115,50),(129,116,76),(130,117,50),(131,118,76),(132,119,66),(133,120,76),(134,121,46),(135,122,77),(136,123,53),(137,123,52),(138,124,87),(139,125,50),(140,125,44),(141,125,43),(142,126,52),(143,126,53),(144,127,66),(145,128,77),(146,129,53),(147,130,53),(148,131,76),(149,132,89),(150,133,76),(151,134,89),(152,135,76),(153,136,76),(154,137,76),(155,138,76);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<net.atools.android.cmwrap.Cmwrap: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(2,70,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,71,'<net.atools.android.cmwrap.utils.Utils: java.lang.String getCurrentDataConn(android.content.Context)>',6,'p',NULL),(4,4,'<net.atools.android.cmwrap.Cmwrap: void onClick(android.view.View)>',18,'s',NULL),(5,72,'<net.atools.android.cmwrap.services.NetworkDetector$initor: void run()>',70,'s',NULL),(6,4,'<net.atools.android.cmwrap.Cmwrap: void onStart()>',15,'s',NULL),(7,4,'<net.atools.android.cmwrap.Cmwrap: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(8,25,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,73,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,16,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(11,75,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(12,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(13,76,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(14,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(16,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,82,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(18,5,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(19,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(20,9,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(21,83,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(23,84,'<com.ju6.a: boolean b()>',178,'p',NULL),(24,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,28,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(26,14,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(27,85,'<sunkay.BookXueshanfeihu.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(28,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(29,87,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(30,88,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(31,31,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,27,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(33,89,'<sunkay.BookXueshanfeihu.BookXueshanfeihu$ClickEvent: void onClick(android.view.View)>',44,'a',0),(34,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,91,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(36,33,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(37,92,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(38,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(39,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(40,9,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(41,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,26,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(43,94,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(44,89,'<sunkay.BookXueshanfeihu.BookXueshanfeihu$ClickEvent: void onClick(android.view.View)>',21,'a',0),(45,95,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(46,96,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(47,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(48,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(49,97,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,9,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(51,32,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(52,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(53,9,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(54,9,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(55,28,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(56,27,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(57,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(58,21,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(59,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(60,113,'<com.mogo.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(61,114,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(62,115,'<com.mogo.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(63,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(64,117,'<com.mogo.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(65,114,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',14,'p',NULL),(66,55,'<com.mogo.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(67,66,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(68,55,'<com.mogo.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(69,49,'<com.mogo.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(70,114,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(71,120,'<com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.mogo.bequick.MainSettingsActivity)>',29,'p',NULL),(72,114,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(73,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(74,122,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(75,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(76,128,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,131,'<com.mogo.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(78,53,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(79,132,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(80,114,'<com.mogo.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(81,133,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(82,114,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',54,'p',NULL),(83,134,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(84,53,'<com.mogo.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(85,53,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(86,135,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(87,136,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(88,137,'<com.mogo.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(89,67,'<com.mogo.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(90,139,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(91,53,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(92,47,'<com.mogo.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(93,53,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(94,112,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(95,98,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(96,98,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(97,50,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(98,140,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(99,98,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(100,102,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(101,142,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(102,143,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(103,51,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(104,144,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(105,145,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(106,146,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(107,147,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(108,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(109,148,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(110,149,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(111,150,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(112,151,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(113,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(114,111,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(115,152,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(116,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',46,'a',NULL),(117,50,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(118,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',61,'a',NULL),(119,66,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(120,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',132,'a',NULL),(121,154,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(122,99,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(123,114,'<com.mogo.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(124,155,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(125,156,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(126,53,'<com.mogo.bequick.MainSettingsActivity: void onResume()>',25,'r',NULL),(127,157,'<com.ju6.a: boolean b()>',178,'p',NULL),(128,99,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(129,114,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(130,53,'<com.mogo.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(131,98,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(132,111,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(133,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',137,'a',NULL),(134,158,'<com.ju6.a: boolean b()>',178,'p',NULL),(135,98,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(136,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',41,'a',NULL),(137,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',55,'a',NULL),(138,98,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,9,1),(4,10,1),(5,12,16),(6,14,1),(7,15,1),(8,20,1),(9,21,1),(10,22,22),(11,28,16),(12,35,20),(13,36,16),(14,37,20),(15,38,16),(16,43,22),(17,44,1),(18,46,1),(19,47,22),(20,48,20),(21,54,16),(22,55,16),(23,56,1),(24,57,1),(25,60,1),(26,62,1),(27,65,8),(28,66,8),(29,69,16),(30,71,20),(31,72,23),(32,73,24),(33,74,25),(34,75,22),(35,77,10),(36,80,13),(37,86,1),(38,87,1),(39,90,25),(40,91,10),(41,92,16),(42,93,16),(43,94,1),(44,96,1),(45,98,22),(46,99,31),(47,100,32),(48,101,16),(49,104,16),(50,106,16),(51,109,16),(52,111,16),(53,115,33),(54,116,1),(55,117,1),(56,118,1),(57,119,1),(58,121,1),(59,122,16),(60,123,1),(61,125,22),(62,127,16),(63,128,1),(64,130,16),(65,131,1),(66,138,33),(67,140,33),(68,142,1),(69,144,1),(70,145,16),(71,146,12),(72,153,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,9,1),(4,10,3),(5,14,1),(6,15,3),(7,20,1),(8,21,3),(9,44,1),(10,46,3),(11,56,1),(12,57,3),(13,60,1),(14,62,3),(15,86,1),(16,87,3),(17,94,3),(18,96,1),(19,116,3),(20,117,1),(21,118,1),(22,119,3),(23,121,1),(24,123,3),(25,128,1),(26,131,3),(27,142,1),(28,144,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'net/atools/android/cmwrap/TestActivity'),(2,4,'net/atools/android/cmwrap/services/WrapService'),(3,5,'net/atools/android/cmwrap/services/WrapService'),(4,6,'com/atools/battery/UpdateService'),(5,7,'net/atools/android/cmwrap/Config'),(6,8,'com/atools/battery/UpdateService'),(7,11,'com/google/update/UpdateService'),(8,16,'com/waps/OffersWebView'),(9,17,'com/waps/OffersWebView'),(10,18,'com/google/update/Dialog'),(11,19,'com/google/update/Dialog'),(12,23,'NULL-CONSTANT'),(13,24,'com/tutusw/phonespeedup/StresstestActivity'),(14,25,'(.*)'),(15,26,'com/tutusw/phonespeedup/AdvancedActivity'),(16,27,'com/tutusw/phonespeedup/InfoActivity'),(17,29,'com/tutusw/phonespeedup/AboutActivity'),(18,30,'com/google/update/Dialog'),(19,31,'com/google/update/Dialog'),(20,32,'com/google/update/Dialog'),(21,34,'com/tutusw/phonespeedup/ProfilesService'),(22,33,'com/google/update/Dialog'),(23,40,'com/google/ssearch/SearchService'),(24,39,'com/waps/OffersWebView'),(25,41,'com/google/ssearch/Dialog'),(26,42,'com/google/ssearch/Dialog'),(27,45,'com/tutusw/phonespeedup/WidgetService'),(28,49,'com/tutusw/phonespeedup/ProfilesService'),(29,50,'com/tutusw/phonespeedup/PerflockActivity'),(30,51,'com/google/update/Dialog'),(31,52,'com/tutusw/phonespeedup/WidgetService'),(32,53,'com/google/update/Dialog'),(33,58,'com/google/update/UpdateService'),(34,59,'com/tutusw/phonespeedup/Setcpu'),(35,61,'com/tutusw/phonespeedup/ProfilesService'),(36,63,'com/tutusw/phonespeedup/ProfileEditActivity'),(37,64,'com/tutusw/phonespeedup/IntroActivity'),(38,67,'com/google/ssearch/Dialog'),(39,68,'com/google/ssearch/Dialog'),(40,70,'com/tutusw/phonespeedup/IntroActivity'),(41,76,'com.android.settings.ChooseLockPattern'),(42,78,'com/google/update/Dialog'),(43,79,'com/google/update/Dialog'),(44,81,'com.mogo.bequick.MainSettingsActivity'),(45,82,'com.mogo.bequick.DialogSettingsActivity'),(46,83,'com/google/update/UpdateService'),(47,84,'com/waps/OffersWebView'),(48,88,'com/waps/OffersWebView'),(49,89,'com/waps/OffersWebView'),(50,95,'com/mogo/bequick/EulaActivity'),(51,97,'com/mogo/bequick/LayoutSettingsActivity'),(52,102,'com/mogo/bequick/flashlight/ScreenLightActivity'),(53,105,'com/mogo/bequick/ShowSettingsActivity'),(54,107,'com/mogo/bequick/preferences/CommonPrefs'),(55,108,'com/google/update/UpdateService'),(56,110,'com/alan/message/Help'),(57,112,'com/alan/message/Setting'),(58,113,'com/google/update/Dialog'),(59,114,'com/google/update/Dialog'),(60,120,'com/google/update/UpdateService'),(61,124,'NULL-CONSTANT'),(62,126,'com/alan/message/MessageList'),(63,129,'com/waps/OffersWebView'),(64,132,'(.*)'),(65,133,'com/google/update/Dialog'),(66,134,'com/google/update/Dialog'),(67,135,'com/alan/message/MessageList'),(68,136,'com/google/update/Dialog'),(69,137,'com/google/update/Dialog'),(70,139,'com/google/update/Dialog'),(71,141,'com/google/update/Dialog'),(72,143,'com/alan/message/EditMessage'),(73,147,'com/alan/message/AddMessage'),(74,148,'com/google/update/Dialog'),(75,149,'com/google/update/Dialog'),(76,150,'com/alan/message/MessageList'),(77,151,'com/alan/message/MessageList'),(78,152,'com/alan/message/InputMessage');
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
INSERT INTO `IData` VALUES (1,12,2),(2,28,3),(3,36,5),(4,38,6),(5,54,7),(6,55,8),(7,69,9),(8,92,15),(9,93,17),(10,101,19),(11,104,20),(12,106,21),(13,109,22),(14,111,23),(15,122,25),(16,127,26),(17,130,27),(18,145,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'SERVERLEVEL'),(2,16,'UrlPath'),(3,16,'ACTIVITY_FLAG'),(4,16,'isFinshClose'),(5,16,'offers_webview_tag'),(6,17,'Notify_Url_Params'),(7,17,'UrlPath'),(8,17,'ACTIVITY_FLAG'),(9,17,'isFinshClose'),(10,17,'offers_webview_tag'),(11,18,'MSG'),(12,18,'TYPEdsada'),(13,19,'TYPEdsada'),(14,30,'MSG'),(15,30,'TYPEdsada'),(16,31,'TYPEdsada'),(17,32,'TYPEdsada'),(18,33,'MSG'),(19,33,'TYPEdsada'),(20,39,'USER_ID'),(21,39,'CLIENT_PACKAGE'),(22,39,'Offers_URL'),(23,39,'URL_PARAMS'),(24,41,'TYPEdsada'),(25,42,'MSG'),(26,42,'TYPEdsada'),(27,51,'TYPEdsada'),(28,53,'MSG'),(29,53,'TYPEdsada'),(30,67,'TYPEdsada'),(31,68,'MSG'),(32,68,'TYPEdsada'),(33,77,'enabled'),(34,78,'MSG'),(35,78,'TYPEdsada'),(36,79,'TYPEdsada'),(37,80,'appearence'),(38,80,'status'),(39,80,'inversed'),(40,84,'USER_ID'),(41,84,'CLIENT_PACKAGE'),(42,84,'Offers_URL'),(43,84,'URL_PARAMS'),(44,88,'UrlPath'),(45,88,'ACTIVITY_FLAG'),(46,88,'isFinshClose'),(47,88,'offers_webview_tag'),(48,89,'Notify_Url_Params'),(49,89,'UrlPath'),(50,89,'ACTIVITY_FLAG'),(51,89,'isFinshClose'),(52,89,'offers_webview_tag'),(53,91,'enabled'),(54,99,'state'),(55,113,'MSG'),(56,113,'TYPEdsada'),(57,114,'TYPEdsada'),(58,126,'type'),(59,129,'USER_ID'),(60,129,'CLIENT_PACKAGE'),(61,129,'Offers_URL'),(62,129,'URL_PARAMS'),(63,133,'TYPEdsada'),(64,134,'MSG'),(65,134,'TYPEdsada'),(66,135,'type'),(67,136,'MSG'),(68,136,'TYPEdsada'),(69,137,'TYPEdsada'),(70,139,'MSG'),(71,139,'TYPEdsada'),(72,141,'TYPEdsada'),(73,143,'itemContent'),(74,143,'type'),(75,147,'type'),(76,148,'TYPEdsada'),(77,149,'MSG'),(78,149,'TYPEdsada'),(79,150,'type'),(80,151,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,3),(8,5,5),(9,6,4),(10,6,3),(11,6,2),(12,7,6),(13,8,2),(14,8,3),(15,8,4),(16,9,3),(17,10,7),(18,10,8),(19,11,1),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,14,1),(25,15,4),(26,15,2),(27,15,3),(28,16,9),(29,17,10),(30,17,11),(31,18,3),(32,18,13),(33,18,14),(34,18,12),(35,19,3),(36,19,2),(37,19,4),(38,20,15),(39,21,17),(40,21,19),(41,21,18),(42,21,20),(43,21,21),(44,22,20),(45,22,21),(46,22,19),(47,22,18),(48,22,17),(49,23,18),(50,23,19),(51,23,20),(52,23,21),(53,23,17),(54,24,21),(55,24,19),(56,24,20),(57,24,17),(58,24,18),(59,25,17),(60,25,18),(61,25,19),(62,25,20),(63,25,21),(64,26,19),(65,26,20),(66,26,17),(67,26,18),(68,26,21),(69,27,8),(70,27,19),(71,27,18),(72,28,8),(73,28,19),(74,28,18),(75,29,8),(76,29,19),(77,29,18),(78,30,8),(79,30,18),(80,30,19),(81,31,18),(82,31,19),(83,31,8),(84,32,19),(85,32,18),(86,32,8),(87,33,18),(88,33,19),(89,33,8),(90,34,18),(91,34,19),(92,34,8),(93,35,19),(94,35,18),(95,35,8),(96,36,19),(97,36,8),(98,36,18),(99,37,8),(100,37,18),(101,37,19),(102,38,8),(103,38,19),(104,38,18),(105,39,15),(106,40,1),(107,41,2),(108,41,3),(109,41,4),(110,42,27),(111,42,26),(112,43,15),(113,44,28),(114,44,29),(115,45,30),(116,46,30),(117,47,30),(118,48,30),(119,49,30),(120,50,30),(121,51,30),(122,52,30),(123,53,30),(124,54,30),(125,55,30),(126,56,30),(127,57,30),(128,58,31),(129,59,15),(130,60,32),(131,60,17),(132,61,25),(133,62,25),(134,63,25),(135,64,25),(136,65,25),(137,66,25),(138,67,25),(139,68,25),(140,69,25),(141,70,25),(142,71,25),(143,72,25),(144,73,25),(145,74,15),(146,75,34),(147,76,34),(148,77,34),(149,78,34),(150,79,34),(151,80,34),(152,81,34),(153,82,34),(154,83,34),(155,84,34),(156,85,34),(157,86,34),(158,87,34),(159,88,5),(160,89,5),(161,90,5),(162,91,5),(163,92,5),(164,93,5),(165,94,5),(166,95,5),(167,96,5),(168,97,5),(169,98,5),(170,99,5),(171,100,5),(172,101,15),(173,102,15),(174,103,35),(175,104,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,11,1),(5,13,1),(6,14,1),(7,16,2),(8,40,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,20,'package',NULL,NULL,NULL,NULL,NULL),(2,39,'package',NULL,NULL,NULL,NULL,NULL),(3,43,'package',NULL,NULL,NULL,NULL,NULL),(4,59,'package',NULL,NULL,NULL,NULL,NULL),(5,74,'package',NULL,NULL,NULL,NULL,NULL),(6,101,'package',NULL,NULL,NULL,NULL,NULL),(7,102,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,12,'application','vnd.android.package-archive'),(2,28,'application','vnd.android.package-archive'),(3,38,'application','vnd.android.package-archive'),(4,92,'application','vnd.android.package-archive'),(5,93,'application','vnd.android.package-archive'),(6,101,'application','vnd.android.package-archive'),(7,104,'application','vnd.android.package-archive'),(8,106,'application','vnd.android.package-archive'),(9,109,'application','vnd.android.package-archive'),(10,111,'application','vnd.android.package-archive'),(11,115,'image','*'),(12,122,'application','vnd.android.package-archive'),(13,138,'vnd.android.cursor.item','phone'),(14,140,'vnd.android.cursor.item','phone'),(15,145,'application','vnd.android.package-archive'),(16,153,'vnd.android.cursor.item','phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'net.atools.android.cmwrap'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'net.atools.android.cmwrap'),(5,5,'net.atools.android.cmwrap'),(6,6,'net.atools.android.cmwrap'),(7,7,'net.atools.android.cmwrap'),(8,8,'net.atools.android.cmwrap'),(9,9,'com.noshufou.android.su'),(10,10,'com.noshufou.android.su'),(11,11,'com.ps.blackwhite'),(12,14,'(.*)'),(13,15,'(.*)'),(14,16,'com.ps.blackwhite'),(15,17,'com.ps.blackwhite'),(16,18,'com.ps.blackwhite'),(17,19,'com.ps.blackwhite'),(18,20,'com.ps.blackwhite'),(19,21,'com.ps.blackwhite'),(20,23,'NULL-CONSTANT'),(21,24,'com.tutusw.phonespeedup'),(22,25,'(.*)'),(23,26,'com.tutusw.phonespeedup'),(24,27,'com.tutusw.phonespeedup'),(25,29,'com.tutusw.phonespeedup'),(26,30,'com.ps.blackwhite'),(27,31,'com.ps.blackwhite'),(28,32,'sunkay.BookXueshanfeihu'),(29,34,'com.tutusw.phonespeedup'),(30,33,'sunkay.BookXueshanfeihu'),(31,40,'com.tutusw.phonespeedup'),(32,39,'sunkay.BookXueshanfeihu'),(33,41,'com.tutusw.phonespeedup'),(34,42,'com.tutusw.phonespeedup'),(35,45,'com.tutusw.phonespeedup'),(36,44,'sunkay.BookXueshanfeihu'),(37,46,'sunkay.BookXueshanfeihu'),(38,49,'com.tutusw.phonespeedup'),(39,50,'com.tutusw.phonespeedup'),(40,51,'sunkay.BookXueshanfeihu'),(41,52,'com.tutusw.phonespeedup'),(42,53,'sunkay.BookXueshanfeihu'),(43,56,'com.tutusw.phonespeedup'),(44,57,'com.tutusw.phonespeedup'),(45,58,'sunkay.BookXueshanfeihu'),(46,59,'com.tutusw.phonespeedup'),(47,60,'com.noshufou.android.su'),(48,61,'com.tutusw.phonespeedup'),(49,62,'com.noshufou.android.su'),(50,63,'com.tutusw.phonespeedup'),(51,64,'com.tutusw.phonespeedup'),(52,67,'com.tutusw.phonespeedup'),(53,68,'com.tutusw.phonespeedup'),(54,70,'com.tutusw.phonespeedup'),(55,76,'com.android.settings'),(56,78,'com.mogo.bequick'),(57,79,'com.mogo.bequick'),(58,81,'com.mogo.bequick'),(59,82,'com.mogo.bequick'),(60,83,'com.mogo.bequick'),(61,84,'com.mogo.bequick'),(62,86,'(.*)'),(63,87,'(.*)'),(64,88,'com.gp.jaro'),(65,89,'com.gp.jaro'),(66,94,'com.gp.jaro'),(67,95,'com.mogo.bequick'),(68,96,'com.gp.jaro'),(69,97,'com.mogo.bequick'),(70,102,'com.mogo.bequick'),(71,105,'com.mogo.bequick'),(72,107,'com.mogo.bequick'),(73,108,'com.alan.message'),(74,110,'com.alan.message'),(75,112,'com.alan.message'),(76,113,'com.gp.jaro'),(77,114,'com.gp.jaro'),(78,116,'com.mogo.bequick'),(79,117,'com.alan.message'),(80,118,'com.mogo.bequick'),(81,119,'com.alan.message'),(82,120,'com.gp.jaro'),(83,121,'com.noshufou.android.su'),(84,123,'com.noshufou.android.su'),(85,124,'NULL-CONSTANT'),(86,126,'com.alan.message'),(87,128,'com.noshufou.android.su'),(88,131,'com.noshufou.android.su'),(89,129,'com.alan.message'),(90,132,'(.*)'),(91,133,'com.alan.message'),(92,134,'com.alan.message'),(93,135,'com.alan.message'),(94,136,'com.gp.jaro'),(95,137,'com.gp.jaro'),(96,139,'com.mogo.bequick'),(97,141,'com.mogo.bequick'),(98,142,'com.noshufou.android.su'),(99,143,'com.alan.message'),(100,144,'com.noshufou.android.su'),(101,147,'com.alan.message'),(102,148,'com.alan.message'),(103,149,'com.alan.message'),(104,150,'com.alan.message'),(105,151,'com.alan.message'),(106,152,'com.alan.message');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,16,0),(5,22,0),(6,25,0),(7,26,0),(8,31,0),(9,32,0),(10,33,0),(11,34,0),(12,40,0),(13,41,0),(14,49,0),(15,51,0),(16,49,0),(17,67,0),(18,68,0),(19,69,0),(20,70,0),(21,33,0),(22,31,0),(23,71,0),(24,72,0),(25,73,0),(26,74,0),(27,33,0),(28,31,0),(29,71,0),(30,72,0),(31,73,0),(32,74,0),(33,33,0),(34,31,0),(35,71,0),(36,72,0),(37,73,0),(38,74,0),(39,75,0),(40,76,0),(41,90,0),(42,91,0),(43,92,0),(44,93,0),(45,94,0),(46,95,0),(47,96,0),(48,97,0),(49,68,0),(50,92,0),(51,69,0),(52,98,0),(53,93,0),(54,99,0),(55,67,0),(56,100,0),(57,91,0),(58,100,0),(59,101,0),(60,99,0),(61,94,0),(62,95,0),(63,96,0),(64,97,0),(65,68,0),(66,92,0),(67,69,0),(68,98,0),(69,93,0),(70,99,0),(71,67,0),(72,100,0),(73,91,0),(74,102,0),(75,94,0),(76,95,0),(77,96,0),(78,97,0),(79,68,0),(80,92,0),(81,69,0),(82,98,0),(83,93,0),(84,99,0),(85,67,0),(86,100,0),(87,91,0),(88,94,0),(89,95,0),(90,96,0),(91,97,0),(92,68,0),(93,92,0),(94,69,0),(95,98,0),(96,93,0),(97,99,0),(98,67,0),(99,100,0),(100,91,0),(101,103,0),(102,102,0),(103,95,0),(104,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,9,1,0),(11,10,0,0),(12,11,1,0),(13,12,1,0),(14,12,1,0),(15,12,1,0),(16,13,0,0),(17,13,0,0),(18,14,0,0),(19,14,0,0),(20,15,1,0),(21,15,1,0),(22,16,1,0),(23,17,0,0),(24,18,0,0),(25,19,0,0),(26,20,0,0),(27,20,0,0),(28,21,1,0),(29,20,0,0),(30,22,0,0),(31,22,0,0),(32,24,0,0),(33,24,0,0),(34,25,0,0),(35,26,1,0),(36,27,1,0),(37,28,1,0),(38,29,1,0),(39,30,0,0),(40,31,0,0),(41,32,0,0),(42,32,0,0),(43,34,1,0),(44,35,1,0),(45,36,0,0),(46,35,1,0),(47,37,1,0),(48,38,1,0),(49,39,0,0),(50,40,0,0),(51,41,0,0),(52,42,0,0),(53,41,0,0),(54,43,1,0),(55,45,1,0),(56,46,1,0),(57,46,1,0),(58,47,0,0),(59,48,0,0),(60,49,1,0),(61,50,0,0),(62,49,1,0),(63,52,0,0),(64,53,0,0),(65,54,1,0),(66,55,1,0),(67,56,0,0),(68,56,0,0),(69,57,1,0),(70,58,0,0),(71,59,1,0),(72,60,1,0),(73,60,1,0),(74,62,1,0),(75,63,1,0),(76,64,0,0),(77,66,1,0),(78,67,0,0),(79,67,0,0),(80,68,1,0),(81,69,0,0),(82,69,0,0),(83,73,0,0),(84,74,0,0),(85,75,1,0),(86,75,1,0),(87,75,1,0),(88,76,0,0),(89,76,0,0),(90,77,1,0),(91,78,1,0),(92,79,1,0),(93,81,1,0),(94,83,1,0),(95,84,0,0),(96,83,1,0),(97,85,0,0),(98,86,1,0),(99,88,1,0),(100,89,1,0),(101,90,1,0),(102,91,0,0),(103,90,1,0),(104,90,1,0),(105,92,0,0),(106,90,1,0),(107,93,0,0),(108,94,0,0),(109,90,1,0),(110,95,0,0),(111,90,1,0),(112,96,0,0),(113,97,0,0),(114,97,0,0),(115,98,1,0),(116,101,1,0),(117,102,1,0),(118,101,1,0),(119,102,1,0),(120,103,0,0),(121,104,1,0),(122,105,1,0),(123,104,1,0),(124,107,0,0),(125,106,1,0),(126,108,0,0),(127,109,1,0),(128,110,1,0),(129,111,0,0),(130,112,1,0),(131,110,1,0),(132,113,0,0),(133,114,0,0),(134,114,0,0),(135,116,0,0),(136,117,0,0),(137,117,0,0),(138,118,1,0),(139,119,0,0),(140,120,1,0),(141,119,0,0),(142,121,1,0),(143,122,0,0),(144,121,1,0),(145,124,1,0),(146,126,1,0),(147,128,0,0),(148,132,0,0),(149,132,0,0),(150,133,0,0),(151,136,0,0),(152,137,0,0),(153,138,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.ACCESS_WIMAX_STATE'),(28,'android.permission.BLUETOOTH'),(32,'android.permission.BLUETOOTH_ADMIN'),(19,'android.permission.CAMERA'),(5,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.CHANGE_WIMAX_STATE'),(20,'android.permission.FLASHLIGHT'),(17,'android.permission.GET_ACCOUNTS'),(16,'android.permission.GET_TASKS'),(23,'android.permission.HARDWARE_TEST'),(11,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(26,'android.permission.MODIFY_PHONE_STATE'),(35,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(31,'android.permission.READ_SECURE_SETTINGS'),(13,'android.permission.READ_SMS'),(29,'android.permission.READ_SYNC_SETTINGS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(33,'android.permission.RECORD_AUDIO'),(34,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SECURE_SETTINGS'),(27,'android.permission.WRITE_SETTINGS'),(12,'android.permission.WRITE_SMS'),(25,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(5,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(20,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(34,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,23,4),(3,61,10),(4,65,11),(5,70,12),(6,71,13),(7,72,14),(8,80,16),(9,82,18),(10,100,24),(11,115,28),(12,123,29),(13,125,31),(14,127,32),(15,129,33),(16,134,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,1,7),(9,2,2),(10,1,8),(11,2,3),(12,1,9),(13,2,4),(14,2,5),(15,3,1),(16,2,7),(17,3,4),(18,2,9),(19,3,7),(20,3,9),(21,3,10),(22,4,1),(23,4,2),(24,4,3),(25,4,4),(26,4,5),(27,4,7),(28,4,9),(29,4,10),(30,4,11),(31,4,12),(32,4,13),(33,4,14),(34,5,1),(35,5,2),(36,5,3),(37,5,4),(38,6,1),(39,5,5),(40,6,2),(41,5,6),(42,6,33),(43,5,7),(44,6,3),(45,5,8),(46,6,4),(47,5,9),(48,6,5),(49,5,10),(50,6,6),(51,5,11),(52,6,7),(53,5,12),(54,6,8),(55,5,13),(56,6,9),(57,5,14),(58,6,10),(59,5,15),(60,6,14),(61,5,17),(62,6,15),(63,5,16),(64,6,16),(65,5,19),(66,6,30),(67,5,18),(68,5,21),(69,5,20),(70,5,23),(71,5,22),(72,5,25),(73,5,24),(74,5,27),(75,5,26),(76,5,29),(77,5,28),(78,5,31),(79,5,30),(80,5,32),(81,7,34),(82,7,35),(83,7,1),(84,7,3),(85,7,4),(86,7,5),(87,7,7),(88,7,9),(89,7,10),(90,7,11),(91,7,12),(92,7,13),(93,7,14),(94,7,15),(95,7,16),(96,7,30);
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

-- Dump completed on 2015-10-09  0:38:27
