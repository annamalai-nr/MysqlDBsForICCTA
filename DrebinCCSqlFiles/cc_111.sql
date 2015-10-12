-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_111
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(12,'NULL-CONSTANT'),(29,'android.bluetooth.adapter.action.STATE_CHANGED'),(28,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(35,'android.intent.action.AIRPLANE_MODE'),(39,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(25,'android.intent.action.DIAL'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SEARCH_LONG_PRESS'),(26,'android.intent.action.SEND'),(27,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(30,'android.intent.action.WEB_SEARCH'),(38,'android.media.RINGER_MODE_CHANGED'),(37,'android.media.VIBRATE_SETTING_CHANGED'),(44,'android.net.conn.CONNECTIVITY_CHANGE'),(42,'android.net.wifi.STATE_CHANGE'),(43,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(41,'android.net.wifi.WIFI_STATE_CHANGED'),(31,'android.settings.DISPLAY_SETTINGS'),(32,'android.settings.SECURITY_SETTINGS'),(34,'android.settings.WIRELESS_SETTINGS'),(5,'com.android.service.START_AUDIO_SERVICE'),(19,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(36,'com.htc.net.wimax.WIMAX_ENABLED_CHANGED'),(14,'com.mogo.bequick.FLASHLIGHT'),(40,'com.mogo.bequick.FLASHLIGHT_STATE'),(18,'com.mogo.bequick.INIT_STATUSBAR_INTEGRATION'),(16,'com.mogo.bequick.START_QS'),(17,'com.mogo.bequick.UPDATE_STATUSBAR_INTEGRATION'),(33,'com.mogo.bequick.VOLUME_UPDATED'),(15,'com.mogo.bequick.WARN_FLASHLIGHT'),(23,'delete_history_account'),(20,'ps.android.view.tabbar.changeTab'),(24,'ps.keepaccount.activity.delteTodayAccount'),(22,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.fantasmosoft.new',30),(2,'com.allen.picshare',2),(3,'com.ps.keepaccount',2),(4,'com.gp.search',11),(5,'com.evilsunflower.jump',2),(6,'com.mogo.bequick',7),(7,'com.mogo.guoshullk',7);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.fantasmosoft.free_memory_recover.FreeMemoryRecover'),(2,1,'com.fantasmosoft.free_memory_recover.SettingsActivity'),(3,1,'com.fantasmosoft.free_memory_recover.About'),(4,1,'com.google.ads.AdActivity'),(5,1,'com.airpuh.ad.UpdateCheck'),(6,2,'com.allen.picshare.MainActivity'),(7,2,'com.google.ssearch.Dialog'),(8,2,'com.google.ssearch.SearchService'),(9,2,'com.google.ssearch.Receiver'),(10,3,'com.ps.keepaccount.Main'),(11,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(12,3,'com.ps.keepaccount.activity.QueryAccount'),(13,3,'com.ps.keepaccount.activity.TodayAccount'),(14,3,'com.ps.keepaccount.activity.HistoryAccount'),(15,3,'com.ps.keepaccount.activity.WriteAccount'),(16,3,'com.ps.keepaccount.activity.TypeAccount'),(17,3,'com.ps.keepaccount.activity.DemoApp'),(18,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(19,3,'com.ps.keepaccount.activity.TypeAccountList'),(20,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(21,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(22,3,'org.achartengine.GraphicalActivity'),(23,3,'com.waps.OffersWebView'),(24,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,3,'com.google.update.Dialog'),(26,3,'com.google.update.UpdateService'),(27,3,'com.google.update.Receiver'),(28,4,'com.gp.search.IndexUI'),(29,4,'com.gp.search.LoadWeathreUI'),(30,4,'com.gp.search.WeatherInfoUI'),(31,4,'com.gp.search.IPSearchUI'),(32,4,'com.gp.search.TrainSearchUI'),(33,4,'com.gp.search.ExpressSearchUI'),(34,4,'com.gp.search.PhoneSearchUI'),(35,4,'com.gp.search.BusUI'),(36,4,'com.gp.search.RPSearchUI'),(37,4,'com.gp.search.ScoreSearchUI'),(38,4,'com.gp.search.weather.proc.Splash'),(39,4,'com.gp.search.weather.proc.MainService'),(40,4,'com.waps.OffersWebView'),(41,4,'com.google.update.Dialog'),(42,4,'cn.domob.android.ads.DomobActivity'),(43,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,4,'com.gp.search.weather.func.AlarmService'),(45,4,'com.android.weather.service.LoadDataService'),(46,4,'com.google.update.UpdateService'),(47,4,'com.google.update.Receiver'),(48,5,'com.evilsunflower.jump.Splash'),(49,5,'com.evilsunflower.jump.ShowTips'),(50,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(51,5,'com.evilsunflower.jump.AgileBuddyActivity'),(52,5,'com.evilsunflower.jump.Prefs'),(53,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(54,5,'com.evilsunflower.jump.TipsActivity'),(55,5,'com.scoreloop.android.coreui.HighscoresActivity'),(56,5,'com.scoreloop.android.coreui.ProfileActivity'),(57,5,'com.evilsunflower.jump.UpdateService'),(58,5,'com.evilsunflower.jump.Receiver'),(59,6,'com.mogo.bequick.EulaActivity'),(60,6,'com.mogo.bequick.ShowSettingsActivity'),(61,6,'com.mogo.bequick.DialogSettingsActivity'),(62,6,'com.mogo.bequick.MainSettingsActivity'),(63,6,'com.mogo.bequick.LayoutSettingsActivity'),(64,6,'com.mogo.bequick.preferences.CommonPrefs'),(65,6,'com.mogo.bequick.preferences.BrightnessPrefs'),(66,6,'com.mogo.bequick.preferences.MobileDataPrefs'),(67,6,'com.mogo.bequick.preferences.AirplaneModePrefs'),(68,6,'com.mogo.bequick.flashlight.ScreenLightActivity'),(69,6,'com.google.ads.AdActivity'),(70,6,'com.vpon.adon.android.WebInApp'),(71,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(72,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,6,'com.waps.OffersWebView'),(74,6,'com.google.update.Dialog'),(75,6,'com.google.update.UpdateService'),(76,6,'com.mogo.bequick.flashlight.LedFlashlightReceiver'),(77,6,'com.mogo.bequick.receivers.StatusBarIntegrationReceiver'),(78,6,'com.google.update.Receiver'),(79,7,'com.mogo.guoshullk.begin'),(80,7,'com.mogo.guoshullk.Main'),(81,7,'com.google.ads.AdActivity'),(82,7,'com.vpon.adon.android.WebInApp'),(83,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(84,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(85,7,'com.waps.OffersWebView'),(86,7,'com.google.update.Dialog'),(87,7,'com.google.update.UpdateService'),(88,7,'com.google.update.Receiver'),(89,3,'com.waps.o'),(90,3,'com.google.update.Dialog$2'),(91,3,'com.waps.AppConnect'),(92,3,'com.ju6.a'),(93,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(94,3,'com.waps.m'),(95,3,'com.ps.keepaccount.activity.WriteAccount$1'),(96,3,'com.google.update.Dialog$1'),(97,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(98,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(99,3,'com.ps.keepaccount.activity.QueryAccount$1'),(100,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(101,3,'com.google.update.UpdateService$MyThread'),(102,3,'com.waps.k'),(103,5,'com.evilsunflower.jump.ShowTips$1'),(104,5,'com.adwo.adsdk.g'),(105,7,'com.waps.k'),(106,6,'com.mogo.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(107,6,'com.ju6.a'),(108,7,'com.google.update.UpdateService$AA'),(109,6,'com.google.update.UpdateService$MyThread'),(110,7,'com.waps.AppConnect'),(111,6,'com.mogo.bequick.handlers.SystemPropertySettingHandler'),(112,6,'com.mogo.bequick.handlers.UnlockPatternSettingHandler'),(113,6,'com.mogo.bequick.handlers.VolumeDialog'),(114,7,'com.google.update.Dialog$1'),(115,6,'com.mogo.bequick.handlers.apn.ApnControl'),(116,7,'com.google.update.Dialog$2'),(117,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(118,6,'com.google.update.Dialog$1'),(119,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(120,6,'u$b'),(121,6,'com.mogo.bequick.handlers.MobileDataSettingHandler2$1'),(122,6,'com.mogo.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(123,6,'com.mogo.bequick.handlers.wimax.FourGEvoSettingHandler$1'),(124,7,'com.mobclick.android.MobclickAgent'),(125,6,'com.waps.m'),(126,7,'com.mogo.guoshullk.begin$beginButtonListener'),(127,6,'com.mogo.bequick.handlers.WifiHopspotSettingHandler$1'),(128,6,'com.mogo.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(129,6,'com.mogo.bequick.MainSettingsActivity$CommonIntentReceiver'),(130,7,'com.waps.m'),(131,6,'com.mogo.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(132,6,'com.mogo.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(133,6,'com.mogo.bequick.handlers.AirplaneModeSettingHandler'),(134,6,'com.waps.k'),(135,6,'com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler'),(136,6,'com.google.update.Dialog$2'),(137,4,'com.gp.search.weather.func.AlarmHelper'),(138,4,'com.waps.aa'),(139,6,'com.mogo.bequick.handlers.RingerSettingHandler'),(140,4,'cn.domob.android.ads.DomobActionReceiver'),(141,4,'com.google.update.Dialog$2'),(142,4,'cn.domob.android.ads.i'),(143,4,'com.waps.ac'),(144,4,'com.google.update.UpdateService$AA'),(145,4,'com.waps.z'),(146,4,'com.waps.AppConnect'),(147,4,'com.google.update.Dialog$1'),(148,4,'com.gp.search.control.MenuContorl$1'),(149,4,'cn.domob.android.ads.i$6'),(150,4,'com.waps.q'),(151,4,'cn.domob.android.ads.DomobAdEngine$2'),(152,4,'cn.domob.android.ads.DomobAdManager'),(153,4,'com.waps.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'bottom_caption'),(2,6,'photo_uri'),(3,6,'saved_image_uri'),(4,6,'caption_positions'),(5,6,'top_caption'),(6,5,'MYAD_PID'),(7,6,'saved_image_filename'),(8,4,'action'),(9,4,'params'),(10,4,'com.google.ads.AdOpener'),(11,24,'shouldMakeOverlayTransparent'),(12,23,'USER_ID'),(13,23,'URL'),(14,24,'url'),(15,10,'WAPS_PID'),(16,26,'WAPS_PID'),(17,17,'WAPS_PID'),(18,24,'WAPS_PID'),(19,10,'CLIENT_PACKAGE'),(20,26,'CLIENT_PACKAGE'),(21,17,'CLIENT_PACKAGE'),(22,24,'CLIENT_PACKAGE'),(23,25,'TYPEdsada'),(24,23,'CLIENT_PACKAGE'),(25,10,'WAPS_ID'),(26,26,'WAPS_ID'),(27,17,'WAPS_ID'),(28,24,'WAPS_ID'),(29,10,'DEVICE_ID'),(30,26,'DEVICE_ID'),(31,17,'DEVICE_ID'),(32,24,'DEVICE_ID'),(33,23,'isFinshClose'),(34,24,'overlayTransition'),(35,25,'MSG'),(36,16,'startDate'),(37,24,'shouldResizeOverlay'),(38,19,'startDate'),(39,23,'URL_PARAMS'),(40,24,'shouldShowTitlebar'),(41,23,'Offers_URL'),(42,12,'endDate'),(43,22,'title'),(44,26,'ST_MY_PID'),(45,10,'APP_ID'),(46,26,'APP_ID'),(47,17,'APP_ID'),(48,24,'APP_ID'),(49,24,'shouldEnableBottomBar'),(50,24,'overlayTitle'),(51,19,'type'),(52,24,'shouldShowBottomBar'),(53,12,'startDate'),(54,19,'endDate'),(55,26,'ST_START_DELAY'),(56,16,'endDate'),(57,24,'transitionTime'),(58,22,'chart'),(59,57,'SAFE_PID'),(60,50,'shouldEnableBottomBar'),(61,57,'SAFE_START'),(62,50,'transitionTime'),(63,49,'MM'),(64,50,'shouldShowTitlebar'),(65,50,'shouldShowBottomBar'),(66,50,'shouldMakeOverlayTransparent'),(67,50,'url'),(68,50,'overlayTransition'),(69,50,'overlayTitle'),(70,51,'SENSOR_MODE'),(71,80,'WAPS_ID'),(72,79,'WAPS_ID'),(73,84,'shouldShowBottomBar'),(74,79,'UMENG_APPKEY'),(75,87,'ST_MY_PID'),(76,80,'WAPS_PID'),(77,79,'WAPS_PID'),(78,71,'Adwo_PID'),(79,69,'params'),(80,82,'adWidth'),(81,83,'Adwo_PID'),(82,80,'DEVICE_ID'),(83,79,'DEVICE_ID'),(84,84,'overlayTransition'),(85,86,'TYPEdsada'),(86,50,'shouldResizeOverlay'),(87,85,'CLIENT_PACKAGE'),(88,87,'ST_START_DELAY'),(89,83,'isTestMode'),(90,72,'shouldShowTitlebar'),(91,71,'isTestMode'),(92,79,'UMENG_CHANNEL'),(93,72,'shouldMakeOverlayTransparent'),(94,75,'ST_START_DELAY'),(95,84,'overlayTitle'),(96,85,'URL_PARAMS'),(97,80,'CLIENT_PACKAGE'),(98,79,'CLIENT_PACKAGE'),(99,85,'USER_ID'),(100,84,'url'),(101,84,'transitionTime'),(102,85,'URL'),(103,84,'shouldResizeOverlay'),(104,84,'shouldEnableBottomBar'),(105,86,'MSG'),(106,84,'shouldMakeOverlayTransparent'),(107,85,'Offers_URL'),(108,84,'shouldShowTitlebar'),(109,82,'url'),(110,80,'APP_ID'),(111,79,'APP_ID'),(112,85,'isFinshClose'),(113,72,'shouldShowBottomBar'),(114,69,'com.google.ads.AdOpener'),(115,72,'overlayTransition'),(116,76,'enabled'),(117,73,'URL_PARAMS'),(118,73,'URL'),(119,73,'Offers_URL'),(120,60,'WAPS_PID'),(121,60,'APP_ID'),(122,72,'url'),(123,73,'USER_ID'),(124,60,'CLIENT_PACKAGE'),(125,60,'WAPS_ID'),(126,60,'DEVICE_ID'),(127,72,'overlayTitle'),(128,73,'isFinshClose'),(129,77,'inversed'),(130,72,'shouldEnableBottomBar'),(131,72,'transitionTime'),(132,75,'ST_MY_PID'),(133,69,'action'),(134,41,'MSG'),(135,40,'URL'),(136,43,'url'),(137,74,'MSG'),(138,40,'DEVICE_ID'),(139,73,'CLIENT_PACKAGE'),(140,37,'DEVICE_ID'),(141,74,'TYPEdsada'),(142,28,'DEVICE_ID'),(143,70,'url'),(144,40,'Offers_URL'),(145,70,'adWidth'),(146,43,'transitionTime'),(147,40,'APP_ID'),(148,37,'APP_ID'),(149,28,'APP_ID'),(150,72,'shouldResizeOverlay'),(151,43,'shouldEnableBottomBar'),(152,40,'WAPS_ID'),(153,37,'WAPS_ID'),(154,28,'WAPS_ID'),(155,43,'shouldShowTitlebar'),(156,40,'CLIENT_PACKAGE'),(157,37,'CLIENT_PACKAGE'),(158,28,'CLIENT_PACKAGE'),(159,42,'appId'),(160,40,'UrlPath'),(161,43,'shouldMakeOverlayTransparent'),(162,40,'offers_webview_tag'),(163,40,'isFinshClose'),(164,43,'overlayTransition'),(165,40,'Notify_Id'),(166,39,'DOMOB_TEST_MODE'),(167,46,'DOMOB_TEST_MODE'),(168,43,'DOMOB_TEST_MODE'),(169,40,'USER_ID'),(170,39,'DOMOB_PID'),(171,46,'DOMOB_PID'),(172,43,'DOMOB_PID'),(173,43,'shouldShowBottomBar'),(174,42,'appName'),(175,40,'URL_PARAMS'),(176,39,'DOMOB_ALLOW_LOCATION'),(177,46,'DOMOB_ALLOW_LOCATION'),(178,43,'DOMOB_ALLOW_LOCATION'),(179,41,'TYPEdsada'),(180,42,'actType'),(181,40,'SHWO_FLAG'),(182,40,'WAPS_PID'),(183,37,'WAPS_PID'),(184,28,'WAPS_PID'),(185,46,'ST_MY_PID'),(186,40,'Notify_Url_Params'),(187,43,'shouldResizeOverlay'),(188,43,'overlayTitle'),(189,40,'ACTIVITY_FLAG'),(190,46,'ST_START_DELAY');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,93,'r',1,NULL,NULL),(90,94,'r',1,NULL,NULL),(91,97,'r',1,NULL,NULL),(92,98,'r',1,NULL,NULL),(93,100,'r',1,NULL,NULL),(94,106,'r',1,NULL,NULL),(95,120,'r',1,NULL,NULL),(96,121,'r',1,NULL,NULL),(97,122,'r',1,NULL,NULL),(98,123,'r',1,NULL,NULL),(99,125,'r',1,NULL,NULL),(100,127,'r',1,NULL,NULL),(101,128,'r',1,NULL,NULL),(102,129,'r',1,NULL,NULL),(103,130,'r',1,NULL,NULL),(104,131,'r',1,NULL,NULL),(105,132,'r',1,NULL,NULL),(106,140,'r',1,NULL,NULL),(107,150,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,1),(4,4,4),(5,5,6),(6,6,1),(7,7,1),(8,8,24),(9,8,26),(10,8,17),(11,9,16),(12,10,16),(13,11,24),(14,11,26),(15,11,17),(16,12,12),(17,13,25),(18,14,17),(19,15,26),(20,16,17),(21,16,26),(22,16,24),(23,17,12),(24,18,27),(25,19,15),(26,20,25),(27,21,26),(28,22,12),(29,23,26),(30,24,12),(31,25,26),(32,26,17),(33,27,23),(34,28,55),(35,29,49),(36,30,54),(37,31,48),(38,32,58),(39,33,56),(40,34,48),(41,35,51),(42,36,51),(43,37,85),(44,38,75),(45,39,87),(46,40,75),(47,41,79),(48,42,62),(49,43,62),(50,44,87),(51,45,62),(52,46,62),(53,47,86),(54,48,62),(55,49,61),(56,49,62),(57,50,62),(58,51,86),(59,52,62),(60,53,84),(61,53,87),(62,53,80),(63,54,74),(64,55,84),(65,55,80),(66,55,87),(67,56,87),(68,57,62),(69,58,80),(70,58,87),(71,58,84),(72,59,79),(73,60,88),(74,61,62),(75,62,78),(76,63,62),(77,64,73),(78,65,62),(79,65,61),(80,66,61),(81,66,62),(82,67,62),(83,68,75),(84,69,62),(85,70,62),(86,71,75),(87,72,74),(88,73,62),(89,74,59),(90,75,62),(91,76,69),(92,77,39),(93,78,62),(94,79,40),(95,80,64),(96,81,64),(97,82,40),(98,83,62),(99,84,61),(100,84,62),(101,85,60),(102,86,76),(103,87,39),(104,88,40),(105,89,46),(106,90,41),(107,91,43),(108,91,46),(109,91,39),(110,92,40),(111,93,47),(112,94,46),(113,95,40),(114,96,37),(115,96,28),(116,97,41),(117,98,30),(118,99,43),(119,99,46),(120,100,39),(121,100,43),(122,100,46),(123,101,39),(124,101,43),(125,101,46),(126,102,28),(127,103,40),(128,104,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.allen.picshare.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(2,6,'<com.allen.picshare.MainActivity: void shareSavedImage(android.net.Uri)>',19,'a',NULL),(3,1,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(4,4,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(5,6,'<com.allen.picshare.MainActivity: void viewSavedImage(android.net.Uri)>',18,'a',NULL),(6,1,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: void c(boolean)>',46,'a',NULL),(7,1,'<com.fantasmosoft.free_memory_recover.FreeMemoryRecover: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(8,89,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(9,16,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(10,16,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(11,89,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(12,12,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(13,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,91,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(15,92,'<com.ju6.a: boolean b()>',178,'p',NULL),(16,89,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(17,12,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(18,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,95,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(20,96,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,99,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(23,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(24,99,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(25,101,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(26,91,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(27,102,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(28,55,'<com.scoreloop.android.coreui.HighscoresActivity: void showProfile()>',3,'a',NULL),(29,103,'<com.evilsunflower.jump.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(30,54,'<com.evilsunflower.jump.TipsActivity: void onClick(android.view.View)>',9,'a',NULL),(31,48,'<com.evilsunflower.jump.Splash: void onClick(android.view.View)>',6,'a',NULL),(32,58,'<com.evilsunflower.jump.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,56,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(34,48,'<com.evilsunflower.jump.Splash: void onClick(android.view.View)>',20,'a',NULL),(35,51,'<com.evilsunflower.jump.AgileBuddyActivity: void onCreate(android.os.Bundle)>',26,'s',NULL),(36,104,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(37,105,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(38,107,'<com.ju6.a: boolean b()>',178,'p',NULL),(39,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,109,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(41,110,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(42,111,'<com.mogo.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(43,62,'<com.mogo.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(44,87,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,112,'<com.mogo.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(46,113,'<com.mogo.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(47,114,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,115,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(49,115,'<com.mogo.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(50,115,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(51,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,115,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(53,117,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(54,118,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(55,119,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,87,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,115,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(58,124,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(59,126,'<com.mogo.guoshullk.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(60,88,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(61,133,'<com.mogo.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(62,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(63,115,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',14,'p',NULL),(64,134,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(65,62,'<com.mogo.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(66,135,'<com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.mogo.bequick.MainSettingsActivity)>',29,'p',NULL),(67,115,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',54,'p',NULL),(68,75,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(69,115,'<com.mogo.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(70,62,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(71,75,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,136,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(73,62,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(74,59,'<com.mogo.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(75,62,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(76,69,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(77,137,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(78,62,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(79,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(80,64,'<com.mogo.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(81,64,'<com.mogo.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(82,138,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(83,139,'<com.mogo.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(84,62,'<com.mogo.bequick.MainSettingsActivity: void onResume()>',23,'r',NULL),(85,60,'<com.mogo.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(86,76,'<com.mogo.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(87,39,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(88,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(89,46,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(90,141,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(91,142,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(92,143,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(93,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(94,144,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(95,145,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(96,146,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(97,147,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(98,148,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(99,149,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(100,151,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(101,152,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(102,28,'<com.gp.search.IndexUI: void onClick(android.view.View)>',28,'a',NULL),(103,153,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(104,46,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,7),(3,3,7),(4,4,7),(5,6,7),(6,7,7),(7,8,7),(8,9,10),(9,10,7),(10,11,11),(11,12,7),(12,13,11),(13,14,10),(14,15,11),(15,16,12),(16,21,10),(17,22,10),(18,24,19),(19,27,1),(20,28,1),(21,29,1),(22,30,1),(23,31,22),(24,34,1),(25,35,1),(26,38,24),(27,41,23),(28,42,1),(29,43,1),(30,45,10),(31,47,1),(32,48,1),(33,52,10),(34,58,25),(35,59,26),(36,60,27),(37,61,10),(38,62,27),(39,63,26),(40,64,26),(41,65,10),(42,66,10),(43,67,10),(44,68,25),(45,69,10),(46,70,10),(47,71,10),(48,72,27),(49,73,26),(50,74,26),(51,75,26),(52,76,26),(53,77,27),(54,78,10),(55,79,26),(56,80,10),(57,82,26),(58,83,10),(59,84,27),(60,85,10),(61,86,10),(62,87,30),(63,88,10),(64,89,1),(65,90,1),(66,91,1),(67,92,30),(68,93,1),(69,94,26),(70,95,10),(71,97,31),(72,99,25),(73,98,32),(74,103,33),(75,104,1),(76,105,1),(77,106,19),(78,108,1),(79,109,34),(80,110,1),(81,113,10),(82,116,35),(83,118,10),(84,125,19),(85,129,11),(86,130,10),(87,131,11),(88,133,14),(89,135,1),(90,136,14),(91,137,1),(92,138,17),(93,140,33),(94,142,16),(95,145,40),(96,150,19),(97,151,10),(98,154,1),(99,155,1),(100,156,10),(101,158,1),(102,159,1),(103,161,10),(104,163,10),(105,164,10),(106,165,10),(107,166,10),(108,176,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,27,1),(2,28,4),(3,29,1),(4,30,4),(5,34,1),(6,35,4),(7,42,1),(8,43,4),(9,47,1),(10,48,4),(11,89,1),(12,90,4),(13,91,4),(14,93,1),(15,104,1),(16,105,4),(17,108,1),(18,110,4),(19,129,5),(20,130,5),(21,131,5),(22,135,1),(23,137,4),(24,154,4),(25,155,1),(26,158,1),(27,159,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/fantasmosoft/free_memory_recover/SettingsActivity'),(2,17,'com/fantasmosoft/free_memory_recover/About'),(3,18,'com/waps/OffersWebView'),(4,19,'com/ps/keepaccount/dialog/DateSelectorDialog'),(5,20,'com/ps/keepaccount/activity/TypeAccountList'),(6,23,'com/ps/keepaccount/dialog/DateSelectorDialog'),(7,25,'com/waps/OffersWebView'),(8,32,'com/google/update/UpdateService'),(9,33,'com/ps/keepaccount/dialog/CanlendarDialog'),(10,36,'com/google/update/Dialog'),(11,37,'com/google/update/Dialog'),(12,39,'com/google/update/Dialog'),(13,40,'com/google/update/Dialog'),(14,44,'com/waps/OffersWebView'),(15,46,'com/scoreloop/android/coreui/ProfileActivity'),(16,49,'com/evilsunflower/jump/AgileBuddyActivity'),(17,51,'com/evilsunflower/jump/Prefs'),(18,53,'com/evilsunflower/jump/TipsActivity'),(19,54,'com/evilsunflower/jump/UpdateService'),(20,55,'com/scoreloop/android/coreui/HighscoresActivity'),(21,56,'com/scoreloop/android/coreui/HighscoresActivity'),(22,57,'com/evilsunflower/jump/UpdateService'),(23,66,'com/adwo/adsdk/AdwoAdBrowserActivity'),(24,67,'com.google.android.maps.MapsActivity'),(25,80,'com.google.android.maps.MapsActivity'),(26,83,'com.google.android.maps.MapsActivity'),(27,86,'com.google.android.maps.MapsActivity'),(28,95,'com.google.android.maps.MapsActivity'),(29,96,'com/waps/OffersWebView'),(30,100,'com/google/update/Dialog'),(31,101,'com.android.settings.ChooseLockPattern'),(32,102,'com/google/update/Dialog'),(33,111,'com/google/update/Dialog'),(34,112,'com/google/update/Dialog'),(35,114,'com/mogo/guoshullk/Main'),(36,115,'com/google/update/UpdateService'),(37,117,'com/google/update/UpdateService'),(38,119,'com/mogo/bequick/EulaActivity'),(39,120,'com/google/update/Dialog'),(40,121,'com/google/update/Dialog'),(41,122,'com/mogo/bequick/LayoutSettingsActivity'),(42,123,'com/google/update/Dialog'),(43,124,'com/google/update/Dialog'),(44,126,'com/mogo/bequick/flashlight/ScreenLightActivity'),(45,127,'com/mogo/bequick/ShowSettingsActivity'),(46,128,'com/mogo/bequick/preferences/CommonPrefs'),(47,132,'com/gp/search/weather/func/AlarmService'),(48,139,'com/waps/OffersWebView'),(49,141,'com/waps/OffersWebView'),(50,143,'com.mogo.bequick.MainSettingsActivity'),(51,144,'com.mogo.bequick.DialogSettingsActivity'),(52,146,'com.android.mms.ui.ComposeMessageActivity'),(53,147,'(.*)'),(54,148,'com/google/update/Dialog'),(55,149,'com/google/update/Dialog'),(56,152,'NULL-CONSTANT'),(57,153,'com/google/update/UpdateService'),(58,157,'com/waps/OffersWebView'),(59,160,'com/gp/search/weather/proc/MainService'),(60,167,'com/gp/search/RPSearchUI'),(61,169,'com/gp/search/LoadWeathreUI'),(62,170,'com/gp/search/PhoneSearchUI'),(63,171,'com/gp/search/ScoreSearchUI'),(64,172,'com/gp/search/IPSearchUI'),(65,173,'com/gp/search/BusUI'),(66,174,'com/gp/search/TrainSearchUI'),(67,175,'com/gp/search/ExpressSearchUI'),(68,177,'com/google/update/Dialog'),(69,178,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,11,2),(3,13,3),(4,14,4),(5,21,5),(6,22,6),(7,45,8),(8,52,9),(9,58,10),(10,59,11),(11,60,12),(12,61,13),(13,62,14),(14,63,15),(15,64,16),(16,65,17),(17,68,18),(18,69,19),(19,70,20),(20,72,21),(21,73,22),(22,76,23),(23,78,24),(24,79,25),(25,80,26),(26,82,27),(27,83,28),(28,84,29),(29,85,30),(30,86,31),(31,88,33),(32,94,34),(33,95,35),(34,113,41),(35,118,43),(36,129,47),(37,130,48),(38,131,49),(39,151,50),(40,156,51),(41,161,52),(42,163,53),(43,164,54),(44,165,55),(45,166,56),(46,176,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.INTENT'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.TITLE'),(4,4,'android.intent.extra.INTENT'),(5,6,'android.intent.extra.INTENT'),(6,7,'android.intent.extra.TITLE'),(7,7,'android.intent.extra.INTENT'),(8,8,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,12,'android.intent.extra.TITLE'),(12,12,'android.intent.extra.INTENT'),(13,18,'CLIENT_PACKAGE'),(14,18,'URL'),(15,18,'isFinshClose'),(16,20,'startDate'),(17,20,'endDate'),(18,20,'type'),(19,25,'USER_ID'),(20,25,'CLIENT_PACKAGE'),(21,25,'Offers_URL'),(22,25,'URL_PARAMS'),(23,31,'startDate'),(24,31,'endDate'),(25,36,'TYPEdsada'),(26,37,'MSG'),(27,37,'TYPEdsada'),(28,39,'TYPEdsada'),(29,40,'MSG'),(30,40,'TYPEdsada'),(31,44,'USER_ID'),(32,44,'CLIENT_PACKAGE'),(33,44,'Offers_URL'),(34,44,'URL_PARAMS'),(35,49,'SENSOR_MODE'),(36,59,'android.intent.extra.TEXT'),(37,59,'android.intent.extra.SUBJECT'),(38,59,'android.intent.extra.EMAIL'),(39,60,'sms_body'),(40,63,'android.intent.extra.EMAIL'),(41,64,'android.intent.extra.TEXT'),(42,64,'android.intent.extra.EMAIL'),(43,66,'url'),(44,73,'android.intent.extra.EMAIL'),(45,75,'android.intent.extra.TEXT'),(46,75,'android.intent.extra.SUBJECT'),(47,75,'android.intent.extra.EMAIL'),(48,76,'android.intent.extra.TEXT'),(49,76,'android.intent.extra.SUBJECT'),(50,76,'android.intent.extra.EMAIL'),(51,82,'android.intent.extra.TEXT'),(52,82,'android.intent.extra.EMAIL'),(53,84,'sms_body'),(54,87,'query'),(55,96,'USER_ID'),(56,96,'CLIENT_PACKAGE'),(57,96,'Offers_URL'),(58,96,'URL_PARAMS'),(59,100,'TYPEdsada'),(60,102,'MSG'),(61,102,'TYPEdsada'),(62,111,'TYPEdsada'),(63,112,'MSG'),(64,112,'TYPEdsada'),(65,116,'state'),(66,120,'MSG'),(67,120,'TYPEdsada'),(68,121,'TYPEdsada'),(69,123,'MSG'),(70,123,'TYPEdsada'),(71,124,'TYPEdsada'),(72,133,'enabled'),(73,136,'enabled'),(74,138,'appearence'),(75,138,'status'),(76,138,'inversed'),(77,139,'UrlPath'),(78,139,'ACTIVITY_FLAG'),(79,139,'isFinshClose'),(80,139,'offers_webview_tag'),(81,141,'Notify_Url_Params'),(82,141,'UrlPath'),(83,141,'ACTIVITY_FLAG'),(84,141,'isFinshClose'),(85,141,'offers_webview_tag'),(86,146,'sms_body'),(87,146,'address'),(88,148,'MSG'),(89,148,'TYPEdsada'),(90,149,'TYPEdsada'),(91,157,'USER_ID'),(92,157,'CLIENT_PACKAGE'),(93,157,'Offers_URL'),(94,157,'offers_webview_tag'),(95,157,'URL_PARAMS'),(96,177,'MSG'),(97,177,'TYPEdsada'),(98,178,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,16,5),(12,17,4),(13,17,2),(14,17,3),(15,18,1),(16,19,9),(17,19,8),(18,20,2),(19,20,4),(20,20,3),(21,21,1),(22,22,13),(23,23,14),(24,23,15),(25,24,3),(26,24,17),(27,24,18),(28,24,16),(29,25,3),(30,25,2),(31,25,4),(32,26,1),(33,27,4),(34,27,2),(35,27,3),(36,28,20),(37,29,21),(38,30,23),(39,31,24),(40,32,22),(41,33,28),(42,34,29),(43,35,33),(44,36,33),(45,37,33),(46,38,33),(47,39,33),(48,40,33),(49,41,33),(50,42,33),(51,43,33),(52,44,33),(53,45,33),(54,46,21),(55,47,33),(56,48,33),(57,49,33),(58,50,36),(59,51,36),(60,52,36),(61,53,36),(62,54,36),(63,55,36),(64,56,36),(65,57,36),(66,58,36),(67,59,36),(68,60,36),(69,61,36),(70,62,36),(71,63,36),(72,64,38),(73,64,37),(74,65,35),(75,66,40),(76,66,39),(77,67,42),(78,67,41),(79,68,43),(80,69,43),(81,70,43),(82,71,43),(83,72,43),(84,73,43),(85,74,43),(86,75,43),(87,76,43),(88,77,43),(89,78,43),(90,79,43),(91,80,43),(92,81,43),(93,82,44),(94,83,44),(95,84,44),(96,85,44),(97,86,44),(98,87,44),(99,88,44),(100,89,44),(101,90,44),(102,91,44),(103,92,44),(104,93,44),(105,94,44),(106,95,44),(107,96,21),(108,97,21),(109,98,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,2),(15,18,1),(16,21,1),(17,22,3),(18,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,46,'package',NULL,NULL,NULL,NULL,NULL),(3,96,'package',NULL,NULL,NULL,NULL,NULL),(4,97,'package',NULL,NULL,NULL,NULL,NULL),(5,98,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'image','*'),(2,11,'(.*)','(.*)'),(3,45,'application','vnd.android.package-archive'),(4,61,'*','*'),(5,70,'(.*)','(.*)'),(6,75,'message','rfc882'),(7,78,'(.*)','(.*)'),(8,85,'application','vnd.android.package-archive'),(9,88,'*','*'),(10,113,'application','vnd.android.package-archive'),(11,118,'application','vnd.android.package-archive'),(12,131,'(.*)','(.*)'),(13,156,'application','vnd.android.package-archive'),(14,161,'application','vnd.android.package-archive'),(15,163,'application','vnd.android.package-archive'),(16,164,'application','vnd.android.package-archive'),(17,165,'application','vnd.android.package-archive'),(18,166,'application','vnd.android.package-archive'),(19,176,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.fantasmosoft.new'),(2,17,'com.fantasmosoft.new'),(3,18,'com.ps.keepaccount'),(4,19,'com.ps.keepaccount'),(5,20,'com.ps.keepaccount'),(6,23,'com.ps.keepaccount'),(7,25,'com.ps.keepaccount'),(8,27,'(.*)'),(9,28,'(.*)'),(10,29,'NULL-CONSTANT'),(11,30,'NULL-CONSTANT'),(12,32,'com.ps.keepaccount'),(13,33,'com.ps.keepaccount'),(14,34,'com.noshufou.android.su'),(15,35,'com.noshufou.android.su'),(16,36,'com.ps.keepaccount'),(17,37,'com.ps.keepaccount'),(18,39,'com.ps.keepaccount'),(19,40,'com.ps.keepaccount'),(20,42,'com.ps.keepaccount'),(21,43,'com.ps.keepaccount'),(22,44,'com.ps.keepaccount'),(23,46,'com.evilsunflower.jump'),(24,47,'com.noshufou.android.su'),(25,48,'com.noshufou.android.su'),(26,49,'com.evilsunflower.jump'),(27,51,'com.evilsunflower.jump'),(28,53,'com.evilsunflower.jump'),(29,54,'com.evilsunflower.jump'),(30,55,'com.evilsunflower.jump'),(31,56,'com.evilsunflower.jump'),(32,57,'com.evilsunflower.jump'),(33,66,'com.evilsunflower.jump'),(34,67,'com.google.android.apps.maps'),(35,80,'com.google.android.apps.maps'),(36,83,'com.google.android.apps.maps'),(37,86,'com.google.android.apps.maps'),(38,89,'com.mogo.guoshullk'),(39,90,'com.mogo.bequick'),(40,91,'com.mogo.guoshullk'),(41,93,'com.mogo.bequick'),(42,95,'com.google.android.apps.maps'),(43,96,'com.mogo.guoshullk'),(44,100,'com.mogo.guoshullk'),(45,101,'com.android.settings'),(46,102,'com.mogo.guoshullk'),(47,104,'com.noshufou.android.su'),(48,105,'com.noshufou.android.su'),(49,108,'com.noshufou.android.su'),(50,110,'com.noshufou.android.su'),(51,111,'com.mogo.guoshullk'),(52,112,'com.mogo.guoshullk'),(53,114,'com.mogo.guoshullk'),(54,115,'com.mogo.guoshullk'),(55,117,'com.mogo.bequick'),(56,119,'com.mogo.bequick'),(57,120,'com.mogo.bequick'),(58,121,'com.mogo.bequick'),(59,122,'com.mogo.bequick'),(60,123,'com.mogo.bequick'),(61,124,'com.mogo.bequick'),(62,126,'com.mogo.bequick'),(63,127,'com.mogo.bequick'),(64,128,'com.mogo.bequick'),(65,132,'com.gp.search'),(66,135,'(.*)'),(67,137,'(.*)'),(68,139,'com.gp.search'),(69,141,'com.gp.search'),(70,143,'com.mogo.bequick'),(71,144,'com.mogo.bequick'),(72,146,'com.android.mms'),(73,147,'(.*)'),(74,148,'com.gp.search'),(75,149,'com.gp.search'),(76,152,'NULL-CONSTANT'),(77,153,'com.gp.search'),(78,154,'com.gp.search'),(79,155,'com.gp.search'),(80,157,'com.gp.search'),(81,158,'com.noshufou.android.su'),(82,159,'com.noshufou.android.su'),(83,160,'com.gp.search'),(84,167,'com.gp.search'),(85,169,'com.gp.search'),(86,170,'com.gp.search'),(87,171,'com.gp.search'),(88,172,'com.gp.search'),(89,173,'com.gp.search'),(90,174,'com.gp.search'),(91,175,'com.gp.search'),(92,177,'com.gp.search'),(93,178,'com.gp.search');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,9,0),(4,10,0),(5,27,0),(6,28,0),(7,29,0),(8,30,0),(9,31,0),(10,32,0),(11,33,0),(12,34,0),(13,35,0),(14,36,0),(15,37,0),(16,45,0),(17,47,0),(18,48,0),(19,53,0),(20,58,0),(21,60,0),(22,60,0),(23,76,0),(24,77,0),(25,78,0),(26,79,0),(27,88,0),(28,89,0),(29,90,0),(30,91,0),(31,92,0),(32,93,0),(33,94,0),(34,94,0),(35,95,0),(36,96,0),(37,94,0),(38,97,0),(39,98,0),(40,77,0),(41,99,0),(42,78,0),(43,100,0),(44,101,0),(45,102,0),(46,103,0),(47,76,0),(48,104,0),(49,105,0),(50,95,0),(51,96,0),(52,94,0),(53,97,0),(54,98,0),(55,77,0),(56,99,0),(57,78,0),(58,100,0),(59,101,0),(60,102,0),(61,76,0),(62,104,0),(63,105,0),(64,101,0),(65,104,0),(66,102,0),(67,105,0),(68,95,0),(69,96,0),(70,94,0),(71,97,0),(72,98,0),(73,77,0),(74,99,0),(75,78,0),(76,100,0),(77,101,0),(78,102,0),(79,76,0),(80,104,0),(81,105,0),(82,95,0),(83,96,0),(84,94,0),(85,97,0),(86,98,0),(87,77,0),(88,99,0),(89,78,0),(90,100,0),(91,101,0),(92,102,0),(93,76,0),(94,104,0),(95,105,0),(96,99,0),(97,106,0),(98,107,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,2,1,0),(7,2,1,0),(8,2,1,0),(9,4,1,0),(10,2,1,0),(11,4,1,0),(12,2,1,0),(13,4,1,0),(14,5,1,0),(15,6,1,0),(16,6,1,0),(17,7,0,0),(18,8,0,0),(19,9,0,0),(20,10,0,0),(21,11,1,0),(22,11,1,0),(23,12,0,0),(24,13,1,0),(25,14,0,0),(26,16,1,0),(27,16,1,0),(28,16,1,0),(29,16,1,0),(30,16,1,0),(31,17,1,0),(32,18,0,0),(33,19,0,0),(34,20,1,0),(35,20,1,0),(36,21,0,0),(37,21,0,0),(38,22,1,0),(39,23,0,0),(40,23,0,0),(41,24,1,0),(42,25,1,0),(43,25,1,0),(44,26,0,0),(45,27,1,0),(46,28,0,0),(47,29,1,0),(48,29,1,0),(49,30,0,0),(50,31,1,0),(51,31,0,0),(52,31,1,0),(53,31,0,0),(54,32,0,0),(55,33,0,0),(56,34,0,0),(57,35,0,0),(58,36,1,0),(59,36,1,0),(60,36,1,0),(61,36,1,0),(62,36,1,0),(63,36,1,0),(64,36,1,0),(65,36,1,0),(66,36,0,0),(67,36,0,0),(68,36,1,0),(69,36,1,0),(70,36,1,0),(71,36,1,0),(72,36,1,0),(73,36,1,0),(74,36,1,0),(75,36,1,0),(76,36,1,0),(77,36,1,0),(78,36,1,0),(79,36,1,0),(80,36,0,0),(81,36,1,0),(82,36,1,0),(83,36,0,0),(84,36,1,0),(85,37,1,0),(86,36,0,0),(87,36,1,0),(88,36,1,0),(89,39,1,0),(90,40,1,0),(91,39,1,0),(92,36,1,0),(93,40,1,0),(94,36,1,0),(95,36,0,0),(96,41,0,0),(97,42,1,0),(98,42,1,0),(99,36,1,0),(100,44,0,0),(101,45,0,0),(102,44,0,0),(103,46,1,0),(104,47,1,0),(105,47,1,0),(106,51,1,0),(107,53,1,0),(108,54,1,0),(109,55,1,0),(110,54,1,0),(111,56,0,0),(112,56,0,0),(113,58,1,0),(114,59,0,0),(115,60,0,0),(116,61,1,0),(117,62,0,0),(118,64,1,0),(119,65,0,0),(120,68,0,0),(121,68,0,0),(122,70,0,0),(123,71,0,0),(124,71,0,0),(125,72,1,0),(126,73,0,0),(127,74,0,0),(128,75,0,0),(129,76,1,0),(130,76,1,0),(131,76,1,0),(132,77,0,0),(133,78,1,0),(134,79,1,0),(135,79,1,0),(136,80,1,0),(137,79,1,0),(138,81,1,0),(139,82,0,0),(140,83,1,0),(141,82,0,0),(142,84,1,0),(143,85,0,0),(144,85,0,0),(145,86,1,0),(146,87,0,0),(147,88,0,0),(148,89,0,0),(149,89,0,0),(150,90,1,0),(151,91,1,0),(152,92,0,0),(153,93,0,0),(154,94,1,0),(155,94,1,0),(156,95,1,0),(157,96,0,0),(158,97,1,0),(159,97,1,0),(160,98,0,0),(161,99,1,0),(162,99,1,0),(163,99,1,0),(164,99,1,0),(165,99,1,0),(166,99,1,0),(167,102,0,0),(168,102,1,0),(169,102,0,0),(170,102,0,0),(171,102,0,0),(172,102,0,0),(173,102,0,0),(174,102,0,0),(175,102,0,0),(176,103,1,0),(177,104,0,0),(178,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(24,'android.permission.ACCESS_WIMAX_STATE'),(34,'android.permission.BLUETOOTH'),(37,'android.permission.BLUETOOTH_ADMIN'),(25,'android.permission.CAMERA'),(38,'android.permission.CHANGE_CONFIGURATION'),(9,'android.permission.CHANGE_WIFI_STATE'),(27,'android.permission.CHANGE_WIMAX_STATE'),(26,'android.permission.FLASHLIGHT'),(23,'android.permission.GET_ACCOUNTS'),(1,'android.permission.GET_TASKS'),(29,'android.permission.HARDWARE_TEST'),(7,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(32,'android.permission.MODIFY_PHONE_STATE'),(3,'android.permission.PERSISTENT_ACTIVITY'),(16,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(6,'android.permission.READ_PHONE_STATE'),(36,'android.permission.READ_SECURE_SETTINGS'),(13,'android.permission.READ_SMS'),(35,'android.permission.READ_SYNC_SETTINGS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RESTART_PACKAGES'),(20,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SECURE_SETTINGS'),(33,'android.permission.WRITE_SETTINGS'),(11,'android.permission.WRITE_SMS'),(31,'android.permission.WRITE_SYNC_SETTINGS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pub:\"FunBox\"',NULL,NULL,NULL),(10,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(53,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,15,7),(2,38,32),(3,48,36),(4,49,37),(5,50,38),(6,52,39),(7,57,40),(8,63,42),(9,66,44),(10,67,45),(11,69,46),(12,101,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,4),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,3,1),(14,3,2),(15,3,4),(16,3,6),(17,3,7),(18,3,8),(19,3,9),(20,3,10),(21,3,11),(22,3,12),(23,3,13),(24,3,14),(25,4,1),(26,4,2),(27,4,4),(28,4,6),(29,4,8),(30,4,9),(31,4,10),(32,4,14),(33,4,15),(34,4,17),(35,4,16),(36,4,19),(37,4,18),(38,5,16),(39,5,19),(40,5,2),(41,5,21),(42,5,4),(43,5,20),(44,5,6),(45,5,22),(46,5,8),(47,5,10),(48,5,11),(49,5,12),(50,5,13),(51,6,1),(52,6,2),(53,6,4),(54,6,6),(55,6,7),(56,6,8),(57,6,9),(58,6,10),(59,6,11),(60,6,12),(61,6,13),(62,6,14),(63,6,15),(64,6,19),(65,6,18),(66,6,21),(67,6,20),(68,6,23),(69,6,25),(70,6,24),(71,6,27),(72,6,26),(73,6,29),(74,6,28),(75,6,31),(76,6,30),(77,6,34),(78,6,35),(79,6,32),(80,6,33),(81,6,36),(82,6,37),(83,7,1),(84,7,2),(85,7,38),(86,7,4),(87,7,6),(88,7,8),(89,7,9),(90,7,10),(91,7,12),(92,7,14),(93,7,15),(94,7,19),(95,7,18);
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

-- Dump completed on 2015-10-09  0:38:06
