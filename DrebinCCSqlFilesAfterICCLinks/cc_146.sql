-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_146
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (39,'(.*)'),(27,'<INTENT>'),(29,'android.bluetooth.adapter.action.STATE_CHANGED'),(28,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(33,'android.intent.action.AIRPLANE_MODE'),(25,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.DIAL'),(7,'android.intent.action.EDIT'),(6,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SEARCH_LONG_PRESS'),(22,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(24,'android.media.RINGER_MODE_CHANGED'),(23,'android.media.VIBRATE_SETTING_CHANGED'),(37,'android.net.conn.CONNECTIVITY_CHANGE'),(31,'android.net.wifi.STATE_CHANGE'),(38,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(30,'android.net.wifi.WIFI_STATE_CHANGED'),(35,'android.settings.DISPLAY_SETTINGS'),(36,'android.settings.SECURITY_SETTINGS'),(15,'com.airpush.android.PushServiceStart(.*)'),(2,'com.airpush.android.PushServiceStart15071'),(19,'com.airpush.android.PushServiceStartInvalid'),(16,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(18,'com.airpush.android.PushServiceStartinvalid Id'),(17,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(34,'com.htc.net.wimax.WIMAX_ENABLED_CHANGED'),(10,'com.mogo.bequick.FLASHLIGHT'),(26,'com.mogo.bequick.FLASHLIGHT_STATE'),(14,'com.mogo.bequick.INIT_STATUSBAR_INTEGRATION'),(12,'com.mogo.bequick.START_QS'),(13,'com.mogo.bequick.UPDATE_STATUSBAR_INTEGRATION'),(32,'com.mogo.bequick.VOLUME_UPDATED'),(11,'com.mogo.bequick.WARN_FLASHLIGHT');
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
INSERT INTO `Applications` VALUES (1,'sunkay.BookGroupJinyong',5),(2,'com.ps.blackwhite',10),(3,'com.droidhen.vipbasketball',57),(4,'com.ps.opensudoku',5),(5,'com.the9.gamechannel',4),(6,'com.mogo.bequick',12),(7,'com.mogo.bequick',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (6,'<INTENT>'),(4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'sunkay.BookGroupJinyong.BookGroupJinyong'),(2,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(3,1,'com.airpush.android.PushAds'),(4,2,'com.ps.blackwhite.BlackWhite'),(5,1,'com.airpush.android.PushService'),(6,2,'com.google.update.Dialog'),(7,1,'com.airpush.android.UserDetailsReceiver'),(8,2,'com.waps.OffersWebView'),(9,1,'com.airpush.android.MessageReceiver'),(10,2,'com.google.update.UpdateService'),(11,1,'com.airpush.android.DeliveryReceiver'),(12,2,'com.google.update.Receiver'),(13,1,'sunkay.BookGroupJinyong.BootReceiver'),(14,3,'com.droidhen.vipbasketball.GameActivity'),(15,3,'com.droidhen.vipbasketball.OptionActivity'),(16,3,'com.droidhen.api.promptclient.more.MoreActivity'),(17,3,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(18,4,'com.ps.opensudoku.gui.FolderListActivity'),(19,3,'com.droidhen.api.promptclient.prompt.RateActivity'),(20,3,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(21,3,'com.droidhen.api.scoreclient.ui.AchievementListActivity'),(22,4,'com.ps.opensudoku.gui.SudokuListActivity'),(23,3,'com.droidhen.vipbasketball.ShowTips'),(24,4,'com.ps.opensudoku.gui.SudokuEditActivity'),(25,3,'com.droidhen.vipbasketball.UpdateService'),(26,3,'com.droidhen.vipbasketball.Receiver'),(27,4,'com.ps.opensudoku.gui.FileImportActivity'),(28,3,'com.droidhen.api.scoreclient.ScoreClientProvider'),(29,5,'com.the9.gamechannel.SpotlightActivity'),(30,4,'com.ps.opensudoku.gui.ImportSudokuActivity'),(31,5,'com.openfeint.internal.ui.IntroFlow'),(32,4,'com.ps.opensudoku.gui.SudokuImportActivity'),(33,5,'com.openfeint.api.ui.Dashboard'),(34,5,'com.openfeint.internal.ui.Settings'),(35,4,'com.ps.opensudoku.gui.SudokuExportActivity'),(36,5,'com.openfeint.internal.ui.NativeBrowser'),(37,4,'com.ps.opensudoku.gui.SudokuPlayActivity'),(38,5,'com.the9.gamechannel.remoteview'),(39,4,'com.ps.opensudoku.gui.GameSettingsActivity'),(40,5,'com.google.update.Dialog'),(41,4,'com.ps.opensudoku.gui.FileListActivity'),(42,5,'com.google.update.UpdateService'),(43,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,5,'com.google.update.Receiver'),(45,4,'com.google.update.Dialog'),(46,4,'com.google.update.UpdateService'),(47,4,'com.google.update.Receiver'),(48,6,'com.mogo.bequick.EulaActivity'),(49,6,'com.mogo.bequick.ShowSettingsActivity'),(50,6,'com.mogo.bequick.DialogSettingsActivity'),(51,6,'com.mogo.bequick.MainSettingsActivity'),(52,6,'com.mogo.bequick.LayoutSettingsActivity'),(53,6,'com.mogo.bequick.preferences.CommonPrefs'),(54,6,'com.mogo.bequick.preferences.BrightnessPrefs'),(55,6,'com.mogo.bequick.preferences.MobileDataPrefs'),(56,6,'com.mogo.bequick.preferences.AirplaneModePrefs'),(57,6,'com.mogo.bequick.flashlight.ScreenLightActivity'),(58,6,'com.google.ads.AdActivity'),(59,6,'com.vpon.adon.android.WebInApp'),(60,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(61,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(62,6,'com.waps.OffersWebView'),(63,6,'com.google.update.Dialog'),(64,7,'com.mogo.bequick.EulaActivity'),(65,6,'com.google.update.UpdateService'),(66,7,'com.mogo.bequick.ShowSettingsActivity'),(67,6,'com.mogo.bequick.flashlight.LedFlashlightReceiver'),(68,6,'com.mogo.bequick.receivers.StatusBarIntegrationReceiver'),(69,7,'com.mogo.bequick.DialogSettingsActivity'),(70,7,'com.mogo.bequick.MainSettingsActivity'),(71,6,'com.google.update.Receiver'),(72,7,'com.mogo.bequick.LayoutSettingsActivity'),(73,7,'com.mogo.bequick.preferences.CommonPrefs'),(74,7,'com.mogo.bequick.preferences.BrightnessPrefs'),(75,7,'com.mogo.bequick.preferences.MobileDataPrefs'),(76,7,'com.mogo.bequick.preferences.AirplaneModePrefs'),(77,7,'com.mogo.bequick.flashlight.ScreenLightActivity'),(78,7,'com.google.ads.AdActivity'),(79,7,'com.vpon.adon.android.WebInApp'),(80,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(81,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(82,7,'com.waps.OffersWebView'),(83,7,'com.google.update.Dialog'),(84,7,'com.google.update.UpdateService'),(85,7,'com.mogo.bequick.flashlight.LedFlashlightReceiver'),(86,7,'com.mogo.bequick.receivers.StatusBarIntegrationReceiver'),(87,7,'com.google.update.Receiver'),(88,2,'com.waps.aa'),(89,2,'com.google.update.Dialog$2'),(90,2,'com.waps.z'),(91,2,'com.google.update.UpdateService$AA'),(92,2,'com.waps.ac'),(93,3,'com.droidhen.api.promptclient.prompt.RecommendActivity$1'),(94,2,'com.google.update.Dialog$1'),(95,3,'com.droidhen.vipbasketball.ShowTips$1'),(96,2,'com.waps.o'),(97,5,'com.openfeint.internal.ImagePicker'),(98,5,'com.google.update.Dialog$2'),(99,2,'com.waps.q'),(100,5,'com.google.update.Dialog$1'),(101,5,'com.ju6.a'),(102,5,'com.google.update.UpdateService$MyThread'),(103,5,'com.the9.gamechannel.SpotlightActivity$6'),(104,4,'com.google.update.Dialog$2'),(105,4,'com.google.update.UpdateService$AA'),(106,7,'com.google.update.Dialog$1'),(107,4,'com.google.update.Dialog$1'),(108,7,'com.mogo.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(109,7,'com.mogo.bequick.handlers.apn.ApnControl'),(110,7,'com.ju6.a'),(111,7,'com.google.update.Dialog$2'),(112,4,'com.ps.opensudoku.gui.FileListActivity$3'),(113,7,'com.mogo.bequick.MainSettingsActivity$CommonIntentReceiver'),(114,4,'com.ps.opensudoku.gui.FolderListActivity$1'),(115,7,'com.mogo.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(116,7,'com.mogo.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(117,7,'u$b'),(118,7,'com.mogo.bequick.handlers.MobileDataSettingHandler2$1'),(119,7,'com.mogo.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(120,7,'com.mogo.bequick.handlers.wimax.FourGEvoSettingHandler$1'),(121,6,'com.waps.o'),(122,7,'com.waps.m'),(123,6,'com.waps.q'),(124,7,'com.mogo.bequick.handlers.WifiHopspotSettingHandler$1'),(125,6,'com.mogo.bequick.handlers.WiFiSettingHandler$WiFiStateReceiver'),(126,6,'com.mogo.bequick.handlers.VolumeDialog'),(127,7,'com.mogo.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(128,6,'com.waps.z'),(129,6,'com.mogo.bequick.handlers.apn.ApnControl'),(130,6,'com.mogo.bequick.handlers.MobileDataSettingHandler2$1'),(131,7,'com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler'),(132,6,'com.mogo.bequick.handlers.BluetoothSettingHandler$BluetoothStateReceiver'),(133,7,'com.mogo.bequick.handlers.VolumeDialog'),(134,6,'com.mogo.bequick.handlers.MasterVolumeSettingHandler$VolumeChangedReceiver'),(135,6,'com.mogo.bequick.handlers.wimax.FourGEvoSettingHandler$1'),(136,7,'com.waps.AppConnect'),(137,6,'com.mogo.bequick.handlers.WifiHopspotSettingHandler$1'),(138,6,'com.mogo.bequick.handlers.RingerSettingHandler$RingerStateReceiver'),(139,6,'com.mogo.bequick.MainSettingsActivity$CommonIntentReceiver'),(140,7,'com.mogo.bequick.handlers.AirplaneModeSettingHandler'),(141,6,'com.mogo.bequick.handlers.AirplaneModeSettingHandler$AirplaneModeReceiver'),(142,6,'com.mogo.bequick.handlers.RingerSettingHandler'),(143,6,'com.mogo.bequick.handlers.SystemPropertySettingHandler'),(144,6,'com.waps.AppConnect'),(145,7,'com.mogo.bequick.handlers.RingerSettingHandler'),(146,6,'com.waps.ac'),(147,7,'com.google.update.UpdateService$MyThread'),(148,6,'com.google.update.UpdateService$AA'),(149,6,'com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler'),(150,7,'com.mogo.bequick.handlers.UnlockPatternSettingHandler'),(151,6,'com.google.update.Dialog$2'),(152,6,'com.waps.aa'),(153,7,'com.mogo.bequick.handlers.SystemPropertySettingHandler'),(154,7,'com.waps.k'),(155,6,'com.mogo.bequick.handlers.UnlockPatternSettingHandler'),(156,6,'com.mogo.bequick.handlers.AirplaneModeSettingHandler'),(157,6,'com.google.update.Dialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'link'),(2,5,'adType'),(3,3,'number'),(4,3,'campId'),(5,3,'url'),(6,3,'appId'),(7,11,'text'),(8,5,'appId'),(9,11,'campId'),(10,11,'apikey'),(11,5,'campId'),(12,11,'title'),(13,5,'url'),(14,8,'WAPS_ID'),(15,4,'WAPS_ID'),(16,8,'CLIENT_PACKAGE'),(17,8,'DEVICE_ID'),(18,4,'DEVICE_ID'),(19,8,'ACTIVITY_FLAG'),(20,2,'shouldShowTitlebar'),(21,6,'TYPEdsada'),(22,8,'UrlPath'),(23,8,'Notify_Id'),(24,8,'Notify_Url_Params'),(25,8,'SHWO_FLAG'),(26,8,'Offers_URL'),(27,8,'APP_ID'),(28,4,'APP_ID'),(29,8,'WAPS_PID'),(30,4,'WAPS_PID'),(31,2,'overlayTitle'),(32,8,'URL'),(33,8,'isFinshClose'),(34,2,'shouldShowBottomBar'),(35,2,'shouldResizeOverlay'),(36,8,'USER_ID'),(37,2,'transitionTime'),(38,2,'url'),(39,2,'shouldEnableBottomBar'),(40,20,'mode'),(41,23,'MM'),(42,3,'apikey'),(43,6,'MSG'),(44,3,'creativeId'),(45,8,'offers_webview_tag'),(46,5,'apikey'),(47,10,'ST_MY_PID'),(48,5,'sms'),(49,4,'CLIENT_PACKAGE'),(50,2,'overlayTransition'),(51,20,'global'),(52,19,'msg'),(53,20,'submit'),(54,25,'SAFE_START'),(55,19,'file'),(56,20,'board'),(57,25,'SAFE_PID'),(58,8,'URL_PARAMS'),(59,11,'url'),(60,5,'creativeId'),(61,11,'imei'),(62,11,'header'),(63,5,'number'),(64,11,'creativeId'),(65,5,'text'),(66,2,'shouldMakeOverlayTransparent'),(67,42,'ST_START_DELAY'),(68,40,'TYPEdsada'),(69,11,'imageurl'),(70,11,'appId'),(71,10,'ST_START_DELAY'),(72,5,'header'),(73,5,'testMode'),(74,5,'title'),(75,29,'screenName'),(76,34,'screenName'),(77,33,'screenName'),(78,31,'screenName'),(79,5,'imageurl'),(80,29,'content_name'),(81,34,'content_name'),(82,33,'content_name'),(83,31,'content_name'),(84,34,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(85,3,'sms'),(86,5,'type'),(87,11,'number'),(88,3,'header'),(89,3,'test'),(90,36,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(91,3,'adType'),(92,11,'sms'),(93,40,'MSG'),(94,42,'ST_MY_PID'),(95,36,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(96,34,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(97,34,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(98,37,'commandClass'),(99,24,'commandClass'),(100,22,'mEditNotePuzzleID'),(101,37,'oldNote'),(102,24,'oldNote'),(103,37,'state'),(104,24,'state'),(105,37,'notes'),(106,24,'notes'),(107,37,'rows'),(108,24,'rows'),(109,37,'cellColumn'),(110,24,'cellColumn'),(111,37,'note'),(112,24,'note'),(113,43,'shouldEnableBottomBar'),(114,41,'mDirectory'),(115,43,'transitionTime'),(116,32,'APPEND_TO_FOLDER'),(117,37,'value'),(118,24,'value'),(119,46,'ST_MY_PID'),(120,37,'id'),(121,24,'id'),(122,37,'cmdStack.size'),(123,24,'cmdStack.size'),(124,45,'TYPEdsada'),(125,37,'tickCount'),(126,37,'cols'),(127,24,'cols'),(128,43,'shouldMakeOverlayTransparent'),(129,37,'cmdStack.(.*)'),(130,24,'cmdStack.(.*)'),(131,18,'mRenameFolderID'),(132,80,'Adwo_PID'),(133,82,'isFinshClose'),(134,66,'WAPS_ID'),(135,70,'WAPS_ID'),(136,69,'WAPS_ID'),(137,79,'url'),(138,82,'URL'),(139,82,'Offers_URL'),(140,82,'USER_ID'),(141,22,'mResetPuzzleID'),(142,78,'params'),(143,41,'FOLDER_NAME'),(144,37,'isRunning'),(145,43,'shouldResizeOverlay'),(146,37,'tickInterval'),(147,66,'WAPS_PID'),(148,18,'mDeleteFolderID'),(149,70,'WAPS_PID'),(150,69,'WAPS_PID'),(151,32,'GAMES'),(152,37,'created'),(153,84,'ST_MY_PID'),(154,24,'created'),(155,45,'MSG'),(156,81,'shouldShowBottomBar'),(157,84,'ST_START_DELAY'),(158,83,'TYPEdsada'),(159,43,'shouldShowBottomBar'),(160,46,'ST_START_DELAY'),(161,43,'url'),(162,37,'oldValue'),(163,24,'oldValue'),(164,43,'overlayTransition'),(165,37,'cells'),(166,24,'cells'),(167,37,'time'),(168,24,'time'),(169,32,'FOLDER_NAME'),(170,37,'cellRow'),(171,24,'cellRow'),(172,43,'shouldShowTitlebar'),(173,60,'isTestMode'),(174,62,'CLIENT_PACKAGE'),(175,43,'overlayTitle'),(176,22,'mDeletePuzzleID'),(177,37,'lastPlayed'),(178,24,'lastPlayed'),(179,37,'accumTime'),(180,79,'adWidth'),(181,66,'APP_ID'),(182,70,'APP_ID'),(183,69,'APP_ID'),(184,81,'overlayTitle'),(185,85,'enabled'),(186,81,'shouldShowTitlebar'),(187,61,'shouldShowTitlebar'),(188,82,'CLIENT_PACKAGE'),(189,81,'overlayTransition'),(190,81,'shouldResizeOverlay'),(191,66,'DEVICE_ID'),(192,70,'DEVICE_ID'),(193,69,'DEVICE_ID'),(194,81,'shouldEnableBottomBar'),(195,62,'Notify_Id'),(196,68,'inversed'),(197,61,'transitionTime'),(198,49,'UMENG_APPKEY'),(199,86,'inversed'),(200,49,'APP_ID'),(201,62,'APP_ID'),(202,51,'APP_ID'),(203,50,'APP_ID'),(204,78,'com.google.ads.AdOpener'),(205,61,'shouldResizeOverlay'),(206,62,'Offers_URL'),(207,60,'Adwo_PID'),(208,82,'URL_PARAMS'),(209,59,'adWidth'),(210,62,'offers_webview_tag'),(211,66,'CLIENT_PACKAGE'),(212,70,'CLIENT_PACKAGE'),(213,69,'CLIENT_PACKAGE'),(214,65,'ST_MY_PID'),(215,81,'shouldMakeOverlayTransparent'),(216,61,'shouldEnableBottomBar'),(217,67,'enabled'),(218,61,'shouldShowBottomBar'),(219,62,'UrlPath'),(220,78,'action'),(221,49,'WAPS_ID'),(222,62,'WAPS_ID'),(223,51,'WAPS_ID'),(224,83,'MSG'),(225,50,'WAPS_ID'),(226,81,'url'),(227,62,'URL_PARAMS'),(228,62,'SHWO_FLAG'),(229,65,'ST_START_DELAY'),(230,80,'isTestMode'),(231,62,'Notify_Url_Params'),(232,49,'CLIENT_PACKAGE'),(233,51,'CLIENT_PACKAGE'),(234,50,'CLIENT_PACKAGE'),(235,61,'shouldMakeOverlayTransparent'),(236,62,'ACTIVITY_FLAG'),(237,61,'url'),(238,63,'TYPEdsada'),(239,62,'USER_ID'),(240,49,'UMENG_CHANNEL'),(241,81,'transitionTime'),(242,49,'DEVICE_ID'),(243,62,'DEVICE_ID'),(244,51,'DEVICE_ID'),(245,50,'DEVICE_ID'),(246,59,'url'),(247,62,'isFinshClose'),(248,62,'URL'),(249,63,'MSG'),(250,61,'overlayTitle'),(251,49,'WAPS_PID'),(252,62,'WAPS_PID'),(253,51,'WAPS_PID'),(254,50,'WAPS_PID'),(255,61,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'p',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,99,'r',1,NULL,NULL),(89,108,'r',1,NULL,NULL),(90,113,'r',1,NULL,NULL),(91,115,'r',1,NULL,NULL),(92,116,'r',1,NULL,NULL),(93,117,'r',1,NULL,NULL),(94,118,'r',1,NULL,NULL),(95,119,'r',1,NULL,NULL),(96,120,'r',1,NULL,NULL),(97,122,'r',1,NULL,NULL),(98,123,'r',1,NULL,NULL),(99,124,'r',1,NULL,NULL),(100,125,'r',1,NULL,NULL),(101,127,'r',1,NULL,NULL),(102,130,'r',1,NULL,NULL),(103,132,'r',1,NULL,NULL),(104,134,'r',1,NULL,NULL),(105,135,'r',1,NULL,NULL),(106,137,'r',1,NULL,NULL),(107,138,'r',1,NULL,NULL),(108,139,'r',1,NULL,NULL),(109,141,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,8),(3,3,12),(4,4,6),(5,5,8),(6,6,8),(7,7,10),(8,8,8),(9,9,28),(10,10,28),(11,11,8),(12,12,28),(13,13,17),(14,13,14),(15,14,9),(16,15,6),(17,16,26),(18,17,10),(19,18,23),(20,19,8),(21,20,3),(22,21,10),(23,22,34),(24,22,31),(25,23,3),(26,24,40),(27,25,42),(28,26,7),(29,27,40),(30,28,3),(31,29,42),(32,30,42),(33,31,3),(34,32,3),(35,33,29),(36,34,42),(37,35,44),(38,36,39),(39,36,37),(40,36,45),(41,37,22),(42,38,46),(43,39,46),(44,40,47),(45,41,37),(46,42,83),(47,43,45),(48,43,37),(49,43,39),(50,44,22),(51,45,70),(52,46,27),(53,47,70),(54,48,18),(55,49,84),(56,50,18),(57,51,83),(58,52,70),(59,53,37),(60,53,39),(61,53,41),(62,54,84),(63,55,35),(64,55,37),(65,55,24),(66,55,18),(67,56,18),(68,57,87),(69,58,37),(70,59,70),(71,60,30),(72,61,70),(73,62,22),(74,63,73),(75,64,22),(76,65,22),(77,66,62),(78,67,18),(79,68,46),(80,69,51),(81,70,41),(82,71,51),(83,72,64),(84,73,62),(85,74,69),(86,74,70),(87,75,51),(88,76,70),(89,76,69),(90,77,70),(91,78,70),(92,79,70),(93,80,70),(94,81,70),(95,82,71),(96,83,51),(97,84,51),(98,85,51),(99,86,70),(100,86,69),(101,87,65),(102,88,73),(103,89,67),(104,90,78),(105,91,51),(106,92,53),(107,93,51),(108,93,50),(109,94,51),(110,95,70),(111,96,51),(112,96,50),(113,97,51),(114,98,49),(115,99,53),(116,100,70),(117,100,69),(118,101,70),(119,102,62),(120,103,85),(121,104,51),(122,105,84),(123,106,65),(124,107,84),(125,108,51),(126,109,51),(127,110,66),(128,111,51),(129,112,70),(130,113,70),(131,114,51),(132,114,50),(133,115,70),(134,116,70),(135,117,63),(136,118,62),(137,119,70),(138,120,70),(139,121,82),(140,122,51),(141,123,51),(142,123,50),(143,124,62),(144,125,51),(145,126,51),(146,127,48),(147,128,62),(148,129,65),(149,130,51),(150,131,51),(151,132,63);
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
INSERT INTO `ExitPoints` VALUES (1,11,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(2,88,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(3,12,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,8,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(6,90,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(7,91,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(8,8,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(9,28,'<com.droidhen.api.scoreclient.ScoreClientProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',28,'p',0),(10,28,'<com.droidhen.api.scoreclient.ScoreClientProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',31,'p',0),(11,92,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(12,28,'<com.droidhen.api.scoreclient.ScoreClientProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',14,'p',0),(13,93,'<com.droidhen.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',26,'a',NULL),(14,9,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(15,94,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,26,'<com.droidhen.vipbasketball.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,10,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,95,'<com.droidhen.vipbasketball.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(19,96,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,3,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(21,10,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,97,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(23,3,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(24,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,42,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,7,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(27,100,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,3,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(29,101,'<com.ju6.a: boolean b()>',178,'p',NULL),(30,102,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(31,3,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(32,3,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(33,103,'<com.the9.gamechannel.SpotlightActivity$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(34,42,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,44,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(36,104,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,22,'<com.ps.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(38,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(39,46,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(40,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(41,37,'<com.ps.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(42,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(45,109,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',14,'p',NULL),(46,27,'<com.ps.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(47,70,'<com.mogo.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(48,18,'<com.ps.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(49,110,'<com.ju6.a: boolean b()>',178,'p',NULL),(50,18,'<com.ps.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(51,111,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,70,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(53,112,'<com.ps.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(54,84,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(55,114,'<com.ps.opensudoku.gui.FolderListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(56,18,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(57,87,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,37,'<com.ps.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(59,70,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(60,30,'<com.ps.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(61,70,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(62,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(63,73,'<com.mogo.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(64,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(65,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(66,121,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,18,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(68,46,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(69,126,'<com.mogo.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(70,41,'<com.ps.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(71,51,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(72,64,'<com.mogo.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(73,128,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(74,109,'<com.mogo.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(75,129,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(76,131,'<com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.mogo.bequick.MainSettingsActivity)>',29,'p',NULL),(77,133,'<com.mogo.bequick.handlers.VolumeDialog: void onClick(android.view.View)>',25,'r',NULL),(78,109,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(79,136,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(80,109,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(81,140,'<com.mogo.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(82,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(83,142,'<com.mogo.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(84,143,'<com.mogo.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(85,129,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromProvider(android.content.Context)>',5,'p',NULL),(86,70,'<com.mogo.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(87,65,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(88,73,'<com.mogo.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(89,67,'<com.mogo.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(90,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(91,129,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',54,'p',NULL),(92,53,'<com.mogo.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)>',12,'r',NULL),(93,51,'<com.mogo.bequick.MainSettingsActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(94,144,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(95,145,'<com.mogo.bequick.handlers.RingerSettingHandler: void validateState(android.media.AudioManager)>',12,'r',NULL),(96,51,'<com.mogo.bequick.MainSettingsActivity: void onResume()>',29,'r',NULL),(97,51,'<com.mogo.bequick.MainSettingsActivity: boolean startActivitiesSafely(android.content.Intent[])>',7,'a',0),(98,49,'<com.mogo.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(99,53,'<com.mogo.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',36,'r',NULL),(100,70,'<com.mogo.bequick.MainSettingsActivity: void onResume()>',25,'r',NULL),(101,109,'<com.mogo.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(102,146,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(103,85,'<com.mogo.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)>',8,'r',NULL),(104,51,'<com.mogo.bequick.MainSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(105,147,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(106,148,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(107,84,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(108,129,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(109,129,'<com.mogo.bequick.handlers.apn.ApnControl: long getFirstCurrentApnId(android.content.Context)>',6,'p',NULL),(110,66,'<com.mogo.bequick.ShowSettingsActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(111,51,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',28,'r',NULL),(112,109,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',24,'p',NULL),(113,109,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',54,'p',NULL),(114,149,'<com.mogo.bequick.handlers.autosync.AutoSyncSettingHandler: void activate(com.mogo.bequick.MainSettingsActivity)>',29,'p',NULL),(115,109,'<com.mogo.bequick.handlers.apn.ApnControl: void restorePreferredApn(android.content.Context,android.content.SharedPreferences)>',20,'p',NULL),(116,150,'<com.mogo.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(117,151,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(118,152,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(119,153,'<com.mogo.bequick.handlers.SystemPropertySettingHandler: void onSelected(int)>',6,'a',NULL),(120,70,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',21,'a',NULL),(121,154,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(122,129,'<com.mogo.bequick.handlers.apn.ApnControl: long getPreferedApnIdFromPreferences(android.content.Context,android.content.SharedPreferences)>',14,'p',NULL),(123,129,'<com.mogo.bequick.handlers.apn.ApnControl: int getApnState(android.content.Context,android.content.SharedPreferences)>',9,'p',NULL),(124,62,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(125,155,'<com.mogo.bequick.handlers.UnlockPatternSettingHandler: void chooseLockPattern()>',5,'a',NULL),(126,51,'<com.mogo.bequick.MainSettingsActivity: void onClick(android.view.View)>',20,'a',NULL),(127,48,'<com.mogo.bequick.EulaActivity: void onEulaAccepted(boolean)>',11,'a',NULL),(128,62,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(129,65,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(130,129,'<com.mogo.bequick.handlers.apn.ApnControl: void setApnState(android.content.Context,android.content.SharedPreferences,boolean)>',15,'p',NULL),(131,156,'<com.mogo.bequick.handlers.AirplaneModeSettingHandler: void setAirMode(boolean)>',11,'r',NULL),(132,157,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,15),(2,4,15),(3,6,16),(4,8,15),(5,9,17),(6,11,15),(7,12,8),(8,13,16),(9,14,1),(10,15,1),(11,16,16),(12,18,1),(13,19,16),(14,20,1),(15,22,8),(16,23,15),(17,24,1),(18,26,1),(19,27,18),(20,29,1),(21,30,19),(22,32,1),(23,33,8),(24,34,15),(25,36,16),(26,38,20),(27,39,17),(28,41,15),(29,43,19),(30,44,18),(31,45,1),(32,46,1),(33,47,15),(34,48,16),(35,49,1),(36,50,22),(37,51,1),(38,52,15),(39,53,16),(40,54,8),(41,58,17),(42,60,1),(43,61,1),(44,66,1),(45,67,1),(46,68,1),(47,69,1),(48,74,17),(49,75,10),(50,78,8),(51,82,27),(52,84,27),(53,86,7),(54,87,10),(55,88,6),(56,90,8),(57,94,32),(58,98,8),(59,99,32),(60,101,33),(61,103,32),(62,104,35),(63,105,36),(64,109,13),(65,110,26),(66,111,39),(67,112,8),(68,113,13),(69,114,39),(70,117,32),(71,118,12),(72,121,10),(73,122,12),(74,124,26),(75,126,1),(76,127,1),(77,128,1),(78,129,1),(79,134,10),(80,136,17),(81,138,35),(82,139,36),(83,142,8),(84,148,1),(85,149,1),(86,152,33),(87,153,1),(88,154,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,1),(2,15,5),(3,18,1),(4,20,5),(5,24,1),(6,26,5),(7,29,1),(8,32,5),(9,45,1),(10,46,5),(11,49,5),(12,51,1),(13,60,5),(14,61,1),(15,66,1),(16,67,5),(17,68,1),(18,69,5),(19,82,6),(20,84,6),(21,111,4),(22,112,4),(23,114,4),(24,126,5),(25,127,1),(26,128,5),(27,129,1),(28,148,1),(29,149,5),(30,153,1),(31,154,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/waps/OffersWebView'),(2,5,'com/waps/OffersWebView'),(3,7,'com/google/update/UpdateService'),(4,10,'(.*)'),(5,21,'NULL-CONSTANT'),(6,25,'com/droidhen/vipbasketball/UpdateService'),(7,28,'com/google/update/Dialog'),(8,31,'com/google/update/Dialog'),(9,35,'com/google/update/Dialog'),(10,37,'com/google/update/Dialog'),(11,40,'com/google/update/Dialog'),(12,42,'com/google/update/Dialog'),(13,55,'com/google/update/Dialog'),(14,56,'com/google/update/Dialog'),(15,57,'com/google/update/UpdateService'),(16,59,'com/ps/opensudoku/gui/SudokuPlayActivity'),(17,62,'com/google/update/Dialog'),(18,63,'com/google/update/Dialog'),(19,64,'com/google/update/UpdateService'),(20,65,'com/ps/opensudoku/gui/GameSettingsActivity'),(21,70,'com/ps/opensudoku/gui/FolderListActivity'),(22,71,'com/ps/opensudoku/gui/ImportSudokuActivity'),(23,72,'com/ps/opensudoku/gui/SudokuExportActivity'),(24,73,'com/ps/opensudoku/gui/SudokuListActivity'),(25,76,'com/ps/opensudoku/gui/ImportSudokuActivity'),(26,77,'com/google/update/Dialog'),(27,79,'com/google/update/Dialog'),(28,80,'com/ps/opensudoku/gui/SudokuExportActivity'),(29,81,'com/google/update/UpdateService'),(30,83,'com/mogo/bequick/preferences/CommonPrefs'),(31,84,'com/ps/opensudoku/gui/SudokuImportActivity'),(32,85,'com/mogo/bequick/LayoutSettingsActivity'),(33,86,'com/ps/opensudoku/gui/SudokuEditActivity'),(34,88,'com/ps/opensudoku/gui/SudokuEditActivity'),(35,89,'com/ps/opensudoku/gui/FolderListActivity'),(36,91,'com/ps/opensudoku/gui/FileListActivity'),(37,92,'com/google/update/Dialog'),(38,93,'com/google/update/Dialog'),(39,95,'com/ps/opensudoku/gui/FileListActivity'),(40,96,'com/mogo/bequick/preferences/CommonPrefs'),(41,97,'com/mogo/bequick/ShowSettingsActivity'),(42,100,'com/waps/OffersWebView'),(43,102,'com/google/update/UpdateService'),(44,106,'com/mogo/bequick/EulaActivity'),(45,107,'com/google/update/Dialog'),(46,108,'com/google/update/Dialog'),(47,115,'com/mogo/bequick/EulaActivity'),(48,116,'com/waps/OffersWebView'),(49,119,'com.mogo.bequick.MainSettingsActivity'),(50,120,'com.mogo.bequick.DialogSettingsActivity'),(51,123,'NULL-CONSTANT'),(52,125,'com/mogo/bequick/LayoutSettingsActivity'),(53,130,'com/google/update/Dialog'),(54,131,'com/google/update/Dialog'),(55,132,'com.mogo.bequick.MainSettingsActivity'),(56,133,'com.mogo.bequick.DialogSettingsActivity'),(57,135,'com.android.settings.ChooseLockPattern'),(58,137,'com/waps/OffersWebView'),(59,140,'com/mogo/bequick/flashlight/ScreenLightActivity'),(60,141,'com/waps/OffersWebView'),(61,143,'(.*)'),(62,144,'com.android.settings.ChooseLockPattern'),(63,145,'com/mogo/bequick/flashlight/ScreenLightActivity'),(64,146,'com/mogo/bequick/ShowSettingsActivity'),(65,150,'com/google/update/Dialog'),(66,151,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,1),(2,22,2),(3,33,3),(4,38,4),(5,50,6),(6,54,7),(7,71,9),(8,76,11),(9,78,12),(10,90,13),(11,98,14),(12,111,21),(13,112,23),(14,114,24),(15,142,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'campId'),(2,2,'text'),(3,2,'title'),(4,2,'creativeId'),(5,2,'appId'),(6,2,'expiry_time'),(7,2,'number'),(8,2,'adType'),(9,2,'type'),(10,2,'sms'),(11,2,'imageurl'),(12,2,'apikey'),(13,3,'UrlPath'),(14,3,'ACTIVITY_FLAG'),(15,4,'campId'),(16,3,'isFinshClose'),(17,4,'title'),(18,3,'offers_webview_tag'),(19,4,'text'),(20,4,'creativeId'),(21,4,'appId'),(22,4,'expiry_time'),(23,5,'Notify_Url_Params'),(24,4,'link'),(25,5,'UrlPath'),(26,4,'adType'),(27,5,'ACTIVITY_FLAG'),(28,4,'type'),(29,5,'isFinshClose'),(30,4,'imageurl'),(31,5,'offers_webview_tag'),(32,4,'header'),(33,4,'apikey'),(34,6,'campId'),(35,6,'text'),(36,6,'title'),(37,6,'creativeId'),(38,6,'appId'),(39,6,'expiry_time'),(40,6,'number'),(41,6,'adType'),(42,6,'type'),(43,6,'sms'),(44,6,'imageurl'),(45,6,'apikey'),(46,8,'title'),(47,8,'text'),(48,8,'appId'),(49,8,'expiry_time'),(50,8,'number'),(51,8,'adType'),(52,8,'type'),(53,8,'imageurl'),(54,8,'apikey'),(55,11,'campId'),(56,11,'title'),(57,11,'text'),(58,11,'creativeId'),(59,11,'appId'),(60,11,'expiry_time'),(61,11,'link'),(62,11,'adType'),(63,11,'type'),(64,11,'imageurl'),(65,11,'apikey'),(66,13,'campId'),(67,13,'title'),(68,13,'text'),(69,13,'creativeId'),(70,13,'appId'),(71,13,'expiry_time'),(72,13,'link'),(73,13,'adType'),(74,13,'type'),(75,13,'imageurl'),(76,13,'header'),(77,13,'apikey'),(78,16,'title'),(79,16,'text'),(80,16,'appId'),(81,16,'expiry_time'),(82,16,'number'),(83,16,'adType'),(84,16,'type'),(85,16,'imageurl'),(86,16,'apikey'),(87,19,'campId'),(88,19,'title'),(89,19,'text'),(90,19,'creativeId'),(91,19,'appId'),(92,19,'expiry_time'),(93,19,'link'),(94,19,'adType'),(95,19,'type'),(96,19,'imageurl'),(97,19,'apikey'),(98,23,'icon'),(99,23,'appId'),(100,23,'testMode'),(101,23,'type'),(102,23,'apikey'),(103,27,'icon'),(104,27,'appId'),(105,27,'testMode'),(106,27,'type'),(107,28,'MSG'),(108,27,'apikey'),(109,28,'TYPEdsada'),(110,30,'icon'),(111,31,'TYPEdsada'),(112,30,'appId'),(113,30,'testMode'),(114,30,'type'),(115,30,'apikey'),(116,34,'<INTENT>'),(117,35,'MSG'),(118,34,'type'),(119,35,'TYPEdsada'),(120,36,'<INTENT>'),(121,36,'type'),(122,37,'TYPEdsada'),(123,40,'TYPEdsada'),(124,41,'appId'),(125,41,'type'),(126,42,'MSG'),(127,41,'apikey'),(128,42,'TYPEdsada'),(129,43,'appId'),(130,43,'type'),(131,43,'apikey'),(132,44,'appId'),(133,44,'type'),(134,44,'apikey'),(135,47,'<INTENT>'),(136,47,'type'),(137,48,'<INTENT>'),(138,48,'type'),(139,50,'sms_body'),(140,52,'<INTENT>'),(141,52,'type'),(142,53,'<INTENT>'),(143,53,'type'),(144,55,'TYPEdsada'),(145,56,'MSG'),(146,56,'TYPEdsada'),(147,59,'sudoku_id'),(148,62,'MSG'),(149,62,'TYPEdsada'),(150,63,'TYPEdsada'),(151,72,'FOLDER_ID'),(152,73,'folder_id'),(153,75,'enabled'),(154,77,'MSG'),(155,77,'TYPEdsada'),(156,79,'TYPEdsada'),(157,80,'FOLDER_ID'),(158,82,'<INTENT>'),(159,84,'<INTENT>'),(160,86,'sudoku_id'),(161,87,'enabled'),(162,88,'folder_id'),(163,91,'FOLDER_NAME'),(164,92,'MSG'),(165,92,'TYPEdsada'),(166,93,'TYPEdsada'),(167,95,'FOLDER_NAME'),(168,100,'USER_ID'),(169,100,'CLIENT_PACKAGE'),(170,100,'Offers_URL'),(171,100,'URL_PARAMS'),(172,101,'state'),(173,107,'MSG'),(174,107,'TYPEdsada'),(175,108,'TYPEdsada'),(176,109,'appearence'),(177,109,'status'),(178,109,'inversed'),(179,113,'appearence'),(180,113,'status'),(181,113,'inversed'),(182,116,'USER_ID'),(183,116,'CLIENT_PACKAGE'),(184,116,'Offers_URL'),(185,116,'offers_webview_tag'),(186,116,'URL_PARAMS'),(187,121,'enabled'),(188,130,'MSG'),(189,130,'TYPEdsada'),(190,131,'TYPEdsada'),(191,134,'enabled'),(192,137,'UrlPath'),(193,137,'ACTIVITY_FLAG'),(194,137,'isFinshClose'),(195,137,'offers_webview_tag'),(196,141,'Notify_Url_Params'),(197,141,'UrlPath'),(198,141,'ACTIVITY_FLAG'),(199,141,'isFinshClose'),(200,141,'offers_webview_tag'),(201,150,'MSG'),(202,150,'TYPEdsada'),(203,151,'TYPEdsada'),(204,152,'state');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,4,4),(6,4,5),(7,5,4),(8,6,1),(9,7,1),(10,8,7),(11,8,6),(12,9,4),(13,9,5),(14,9,3),(15,10,8),(16,11,1),(17,12,8),(18,13,8),(19,14,5),(20,14,4),(21,14,3),(22,15,4),(23,15,5),(24,15,3),(25,16,1),(26,17,9),(27,18,9),(28,19,11),(29,19,10),(30,20,1),(31,21,13),(32,21,12),(33,21,14),(34,21,4),(35,22,3),(36,22,4),(37,22,5),(38,23,10),(39,23,11),(40,24,13),(41,24,14),(42,24,12),(43,24,4),(44,25,3),(45,25,5),(46,25,4),(47,26,21),(48,27,24),(49,27,23),(50,28,26),(51,28,25),(52,29,28),(53,30,29),(54,31,31),(55,31,30),(56,32,32),(57,33,32),(58,34,32),(59,35,32),(60,36,32),(61,37,32),(62,38,32),(63,39,32),(64,40,21),(65,41,32),(66,42,32),(67,43,32),(68,44,30),(69,44,31),(70,45,32),(71,46,32),(72,47,32),(73,48,32),(74,49,32),(75,50,32),(76,51,32),(77,52,32),(78,53,32),(79,54,32),(80,55,32),(81,56,32),(82,57,32),(83,58,32),(84,59,32),(85,60,32),(86,61,34),(87,62,34),(88,63,34),(89,64,34),(90,65,34),(91,66,34),(92,67,34),(93,68,34),(94,69,34),(95,70,34),(96,71,34),(97,72,34),(98,73,34),(99,74,28),(100,75,34),(101,76,29),(102,77,37),(103,78,37),(104,79,33),(105,80,37),(106,81,37),(107,82,38),(108,83,37),(109,84,38),(110,85,37),(111,86,38),(112,87,37),(113,88,38),(114,89,37),(115,90,38),(116,91,37),(117,92,38),(118,93,37),(119,94,38),(120,95,37),(121,96,38),(122,97,37),(123,98,38),(124,99,37),(125,100,38),(126,101,38),(127,102,38),(128,103,38),(129,104,38),(130,105,37),(131,106,37),(132,107,37),(133,108,37),(134,109,37),(135,110,37),(136,111,33),(137,112,37),(138,113,37),(139,114,23),(140,114,24),(141,115,37),(142,116,37),(143,117,37),(144,118,37),(145,119,37),(146,120,37),(147,121,21),(148,122,25),(149,122,26),(150,123,38),(151,124,38),(152,125,38),(153,126,38),(154,127,38),(155,128,38),(156,129,38),(157,130,38),(158,131,38),(159,132,38),(160,133,38),(161,134,38),(162,135,38),(163,136,34),(164,137,34),(165,138,34),(166,139,34),(167,140,34),(168,141,34),(169,142,34),(170,143,34),(171,144,34),(172,145,34),(173,146,34),(174,147,34),(175,148,34);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,2),(4,6,1),(5,7,1),(6,8,3),(7,10,3),(8,10,4),(9,11,1),(10,12,4),(11,12,3),(12,13,4),(13,13,3),(14,16,1),(15,17,3),(16,18,3),(17,20,1);
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
INSERT INTO `IFData` VALUES (1,10,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,10,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,10,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,10,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,13,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,26,'package',NULL,NULL,NULL,NULL,NULL),(7,40,'package',NULL,NULL,NULL,NULL,NULL),(8,121,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,12,'application','vnd.android.package-archive'),(2,33,'application','vnd.android.package-archive'),(3,54,'application','vnd.android.package-archive'),(4,90,'application','vnd.android.package-archive'),(5,98,'application','vnd.android.package-archive'),(6,114,'(.*)','(.*)'),(7,142,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.ps.blackwhite'),(2,5,'com.ps.blackwhite'),(3,7,'com.ps.blackwhite'),(4,10,'(.*)'),(5,14,'com.ps.blackwhite'),(6,15,'com.ps.blackwhite'),(7,18,'(.*)'),(8,20,'(.*)'),(9,21,'NULL-CONSTANT'),(10,25,'com.droidhen.vipbasketball'),(11,24,'com.noshufou.android.su'),(12,26,'com.noshufou.android.su'),(13,28,'com.ps.blackwhite'),(14,29,'com.noshufou.android.su'),(15,31,'com.ps.blackwhite'),(16,32,'com.noshufou.android.su'),(17,35,'com.ps.blackwhite'),(18,37,'com.ps.blackwhite'),(19,40,'com.the9.gamechannel'),(20,42,'com.the9.gamechannel'),(21,45,'com.noshufou.android.su'),(22,46,'com.noshufou.android.su'),(23,49,'com.the9.gamechannel'),(24,51,'com.the9.gamechannel'),(25,55,'com.the9.gamechannel'),(26,56,'com.the9.gamechannel'),(27,57,'com.the9.gamechannel'),(28,59,'com.ps.opensudoku'),(29,60,'com.ps.opensudoku'),(30,61,'com.ps.opensudoku'),(31,62,'com.ps.opensudoku'),(32,63,'com.ps.opensudoku'),(33,64,'com.ps.opensudoku'),(34,65,'com.ps.opensudoku'),(35,66,'com.noshufou.android.su'),(36,67,'com.noshufou.android.su'),(37,68,'com.noshufou.android.su'),(38,69,'com.noshufou.android.su'),(39,70,'com.ps.opensudoku'),(40,71,'com.ps.opensudoku'),(41,72,'com.ps.opensudoku'),(42,73,'com.ps.opensudoku'),(43,76,'com.ps.opensudoku'),(44,77,'com.mogo.bequick'),(45,79,'com.mogo.bequick'),(46,80,'com.ps.opensudoku'),(47,81,'com.mogo.bequick'),(48,83,'com.mogo.bequick'),(49,84,'com.ps.opensudoku'),(50,85,'com.mogo.bequick'),(51,86,'com.ps.opensudoku'),(52,88,'com.ps.opensudoku'),(53,89,'com.ps.opensudoku'),(54,91,'com.ps.opensudoku'),(55,92,'com.ps.opensudoku'),(56,93,'com.ps.opensudoku'),(57,95,'com.ps.opensudoku'),(58,96,'com.mogo.bequick'),(59,97,'com.mogo.bequick'),(60,100,'com.mogo.bequick'),(61,102,'com.mogo.bequick'),(62,106,'com.mogo.bequick'),(63,107,'com.mogo.bequick'),(64,108,'com.mogo.bequick'),(65,115,'com.mogo.bequick'),(66,116,'com.mogo.bequick'),(67,119,'com.mogo.bequick'),(68,120,'com.mogo.bequick'),(69,123,'NULL-CONSTANT'),(70,125,'com.mogo.bequick'),(71,126,'com.mogo.bequick'),(72,127,'com.mogo.bequick'),(73,128,'com.mogo.bequick'),(74,129,'com.mogo.bequick'),(75,130,'com.mogo.bequick'),(76,131,'com.mogo.bequick'),(77,132,'com.mogo.bequick'),(78,133,'com.mogo.bequick'),(79,135,'com.android.settings'),(80,137,'com.mogo.bequick'),(81,140,'com.mogo.bequick'),(82,141,'com.mogo.bequick'),(83,143,'(.*)'),(84,144,'com.android.settings'),(85,145,'com.mogo.bequick'),(86,146,'com.mogo.bequick'),(87,148,'(.*)'),(88,149,'(.*)'),(89,150,'com.mogo.bequick'),(90,151,'com.mogo.bequick'),(91,153,'com.noshufou.android.su'),(92,154,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,12,0),(5,13,0),(6,14,0),(7,18,0),(8,24,0),(9,26,0),(10,27,0),(11,29,0),(12,30,0),(13,32,0),(14,44,0),(15,47,0),(16,49,0),(17,49,0),(18,66,0),(19,67,0),(20,66,0),(21,68,0),(22,71,0),(23,85,0),(24,86,0),(25,87,0),(26,88,0),(27,89,0),(28,90,0),(29,91,0),(30,91,0),(31,92,0),(32,93,0),(33,94,0),(34,91,0),(35,95,0),(36,96,0),(37,86,0),(38,97,0),(39,87,0),(40,98,0),(41,99,0),(42,89,0),(43,90,0),(44,100,0),(45,85,0),(46,101,0),(47,92,0),(48,102,0),(49,103,0),(50,104,0),(51,105,0),(52,68,0),(53,98,0),(54,71,0),(55,106,0),(56,107,0),(57,108,0),(58,67,0),(59,109,0),(60,100,0),(61,93,0),(62,94,0),(63,91,0),(64,95,0),(65,96,0),(66,86,0),(67,97,0),(68,87,0),(69,99,0),(70,89,0),(71,90,0),(72,85,0),(73,101,0),(74,103,0),(75,92,0),(76,103,0),(77,102,0),(78,103,0),(79,101,0),(80,104,0),(81,105,0),(82,93,0),(83,68,0),(84,94,0),(85,98,0),(86,91,0),(87,71,0),(88,95,0),(89,106,0),(90,96,0),(91,107,0),(92,86,0),(93,108,0),(94,97,0),(95,67,0),(96,87,0),(97,109,0),(98,99,0),(99,100,0),(100,89,0),(101,90,0),(102,85,0),(103,101,0),(104,92,0),(105,93,0),(106,94,0),(107,91,0),(108,95,0),(109,96,0),(110,86,0),(111,109,0),(112,97,0),(113,87,0),(114,107,0),(115,99,0),(116,89,0),(117,90,0),(118,85,0),(119,101,0),(120,92,0),(121,97,0),(122,108,0),(123,102,0),(124,103,0),(125,104,0),(126,105,0),(127,68,0),(128,98,0),(129,71,0),(130,106,0),(131,107,0),(132,108,0),(133,67,0),(134,109,0),(135,100,0),(136,102,0),(137,103,0),(138,104,0),(139,105,0),(140,68,0),(141,98,0),(142,71,0),(143,106,0),(144,107,0),(145,108,0),(146,67,0),(147,109,0),(148,100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,1,1,0),(5,2,0,0),(6,1,1,0),(7,3,0,0),(8,1,1,0),(9,4,1,0),(10,5,0,0),(11,1,1,0),(12,6,1,0),(13,1,1,0),(14,7,1,0),(15,7,1,0),(16,1,1,0),(17,8,1,0),(18,8,1,0),(19,1,1,0),(20,8,1,0),(21,11,0,0),(22,13,1,0),(23,14,1,0),(24,15,1,0),(25,16,0,0),(26,15,1,0),(27,14,1,0),(28,17,0,0),(29,18,1,0),(30,14,1,0),(31,17,0,0),(32,18,1,0),(33,19,1,0),(34,20,1,0),(35,21,0,0),(36,20,1,0),(37,21,0,0),(38,23,1,0),(39,24,1,0),(40,25,0,0),(41,26,1,0),(42,25,0,0),(43,26,1,0),(44,26,1,0),(45,27,1,0),(46,27,1,0),(47,28,1,0),(48,28,1,0),(49,30,1,0),(50,31,1,0),(51,30,1,0),(52,32,1,0),(53,32,1,0),(54,33,1,0),(55,34,0,0),(56,34,0,0),(57,35,0,0),(58,36,1,0),(59,37,0,0),(60,38,1,0),(61,38,1,0),(62,39,0,0),(63,39,0,0),(64,40,0,0),(65,41,0,0),(66,42,1,0),(67,42,1,0),(68,43,1,0),(69,43,1,0),(70,44,0,0),(71,46,0,0),(72,48,0,0),(73,50,0,0),(74,51,1,0),(75,52,1,0),(76,53,0,0),(77,54,0,0),(78,55,1,0),(79,54,0,0),(80,56,0,0),(81,57,0,0),(82,58,1,0),(83,59,0,0),(84,60,0,0),(85,61,0,0),(86,62,0,0),(87,63,1,0),(88,64,0,0),(89,65,0,0),(90,66,1,0),(91,67,0,0),(92,68,0,0),(93,68,0,0),(94,69,1,0),(95,70,0,0),(96,71,0,0),(97,72,0,0),(98,73,1,0),(99,77,1,0),(100,79,0,0),(101,81,1,0),(102,82,0,0),(103,83,1,0),(104,84,1,0),(105,84,1,0),(106,86,0,0),(107,87,0,0),(108,87,0,0),(109,88,1,0),(110,89,1,0),(111,90,1,0),(112,90,1,0),(113,92,1,0),(114,90,1,0),(115,93,0,0),(116,94,0,0),(117,95,1,0),(118,96,1,0),(119,98,0,0),(120,98,0,0),(121,99,1,0),(122,100,1,0),(123,102,0,0),(124,103,1,0),(125,104,0,0),(126,105,1,0),(127,105,1,0),(128,106,1,0),(129,106,1,0),(130,107,0,0),(131,107,0,0),(132,110,0,0),(133,110,0,0),(134,111,1,0),(135,116,0,0),(136,117,1,0),(137,118,0,0),(138,119,1,0),(139,119,1,0),(140,120,0,0),(141,118,0,0),(142,121,1,0),(143,124,0,0),(144,125,0,0),(145,126,0,0),(146,127,0,0),(147,128,1,0),(148,128,1,0),(149,128,1,0),(150,129,0,0),(151,129,0,0),(152,131,1,0),(153,132,1,0),(154,132,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,146,49,2,NULL),(2,146,66,2,NULL),(3,119,51,2,NULL),(4,119,70,2,NULL),(5,120,50,2,NULL),(6,120,69,2,NULL),(7,34,49,2,NULL),(8,36,49,2,NULL),(9,38,49,2,NULL),(10,47,49,2,NULL),(11,48,49,2,NULL),(12,50,49,2,NULL),(13,52,49,2,NULL),(14,53,49,2,NULL),(15,41,49,2,NULL),(16,43,49,2,NULL),(17,44,49,2,NULL),(18,23,49,2,NULL),(19,27,49,2,NULL),(20,30,49,2,NULL),(21,1,49,2,NULL),(22,2,49,2,NULL),(23,4,49,2,NULL),(24,6,49,2,NULL),(25,8,49,2,NULL),(26,11,49,2,NULL),(27,13,49,2,NULL),(28,16,49,2,NULL),(29,19,49,2,NULL),(30,17,49,2,NULL),(31,18,49,2,NULL),(32,20,49,2,NULL),(33,82,49,2,NULL),(34,118,49,2,NULL),(35,134,49,2,NULL),(36,113,49,2,NULL),(37,121,49,2,NULL),(38,147,49,2,NULL),(39,148,49,2,NULL),(40,149,49,2,NULL),(41,110,49,2,NULL),(42,75,49,2,NULL),(43,122,49,2,NULL),(44,87,49,2,NULL),(45,109,49,2,NULL),(46,111,49,2,NULL),(47,112,49,2,NULL),(48,124,49,2,NULL),(49,96,53,2,NULL),(50,96,73,2,NULL),(51,115,48,2,NULL),(52,115,64,2,NULL),(53,125,52,2,NULL),(54,125,72,2,NULL),(55,145,57,2,NULL),(56,145,77,2,NULL),(57,118,1,2,NULL),(58,134,1,2,NULL),(59,118,5,2,NULL),(60,134,5,2,NULL),(61,118,13,2,NULL),(62,134,13,2,NULL),(63,118,4,2,NULL),(64,134,4,2,NULL),(65,118,12,2,NULL),(66,134,12,2,NULL),(67,118,14,2,NULL),(68,134,14,2,NULL),(69,118,26,2,NULL),(70,134,26,2,NULL),(71,118,18,2,NULL),(72,134,18,2,NULL),(73,118,24,2,NULL),(74,134,24,2,NULL),(75,118,30,2,NULL),(76,134,30,2,NULL),(77,118,47,2,NULL),(78,134,47,2,NULL),(79,118,29,2,NULL),(80,134,29,2,NULL),(81,118,44,2,NULL),(82,134,44,2,NULL),(83,118,67,2,NULL),(84,134,67,2,NULL),(85,118,68,2,NULL),(86,134,68,2,NULL),(87,118,71,2,NULL),(88,134,71,2,NULL),(89,118,98,2,NULL),(90,134,98,2,NULL),(91,118,100,2,NULL),(92,134,100,2,NULL),(93,118,102,2,NULL),(94,134,102,2,NULL),(95,118,103,2,NULL),(96,134,103,2,NULL),(97,118,104,2,NULL),(98,134,104,2,NULL),(99,118,105,2,NULL),(100,134,105,2,NULL),(101,118,106,2,NULL),(102,134,106,2,NULL),(103,118,107,2,NULL),(104,134,107,2,NULL),(105,118,108,2,NULL),(106,134,108,2,NULL),(107,118,109,2,NULL),(108,134,109,2,NULL),(109,118,66,2,NULL),(110,134,66,2,NULL),(111,118,85,2,NULL),(112,134,85,2,NULL),(113,118,86,2,NULL),(114,134,86,2,NULL),(115,118,87,2,NULL),(116,134,87,2,NULL),(117,118,89,2,NULL),(118,134,89,2,NULL),(119,118,90,2,NULL),(120,134,90,2,NULL),(121,118,91,2,NULL),(122,134,91,2,NULL),(123,118,92,2,NULL),(124,134,92,2,NULL),(125,118,93,2,NULL),(126,134,93,2,NULL),(127,118,94,2,NULL),(128,134,94,2,NULL),(129,118,95,2,NULL),(130,134,95,2,NULL),(131,118,96,2,NULL),(132,134,96,2,NULL),(133,118,97,2,NULL),(134,134,97,2,NULL),(135,118,99,2,NULL),(136,134,99,2,NULL),(137,118,101,2,NULL),(138,134,101,2,NULL),(139,113,1,2,NULL),(140,121,1,2,NULL),(141,113,5,2,NULL),(142,121,5,2,NULL),(143,113,13,2,NULL),(144,121,13,2,NULL),(145,113,4,2,NULL),(146,121,4,2,NULL),(147,113,12,2,NULL),(148,121,12,2,NULL),(149,113,14,2,NULL),(150,121,14,2,NULL),(151,113,26,2,NULL),(152,121,26,2,NULL),(153,113,18,2,NULL),(154,121,18,2,NULL),(155,113,24,2,NULL),(156,121,24,2,NULL),(157,113,30,2,NULL),(158,121,30,2,NULL),(159,113,47,2,NULL),(160,121,47,2,NULL),(161,113,29,2,NULL),(162,121,29,2,NULL),(163,113,44,2,NULL),(164,121,44,2,NULL),(165,113,67,2,NULL),(166,121,67,2,NULL),(167,113,68,2,NULL),(168,121,68,2,NULL),(169,113,71,2,NULL),(170,121,71,2,NULL),(171,113,98,2,NULL),(172,121,98,2,NULL),(173,113,100,2,NULL),(174,121,100,2,NULL),(175,113,102,2,NULL),(176,121,102,2,NULL),(177,113,103,2,NULL),(178,121,103,2,NULL),(179,113,104,2,NULL),(180,121,104,2,NULL),(181,113,105,2,NULL),(182,121,105,2,NULL),(183,113,106,2,NULL),(184,121,106,2,NULL),(185,113,107,2,NULL),(186,121,107,2,NULL),(187,113,108,2,NULL),(188,121,108,2,NULL),(189,113,109,2,NULL),(190,121,109,2,NULL),(191,113,66,2,NULL),(192,121,66,2,NULL),(193,113,85,2,NULL),(194,121,85,2,NULL),(195,113,86,2,NULL),(196,121,86,2,NULL),(197,113,87,2,NULL),(198,121,87,2,NULL),(199,113,89,2,NULL),(200,121,89,2,NULL),(201,113,90,2,NULL),(202,121,90,2,NULL),(203,113,91,2,NULL),(204,121,91,2,NULL),(205,113,92,2,NULL),(206,121,92,2,NULL),(207,113,93,2,NULL),(208,121,93,2,NULL),(209,113,94,2,NULL),(210,121,94,2,NULL),(211,113,95,2,NULL),(212,121,95,2,NULL),(213,113,96,2,NULL),(214,121,96,2,NULL),(215,113,97,2,NULL),(216,121,97,2,NULL),(217,113,99,2,NULL),(218,121,99,2,NULL),(219,113,101,2,NULL),(220,121,101,2,NULL),(221,147,1,2,NULL),(222,148,1,2,NULL),(223,149,1,2,NULL),(224,147,5,2,NULL),(225,148,5,2,NULL),(226,149,5,2,NULL),(227,147,13,2,NULL),(228,148,13,2,NULL),(229,149,13,2,NULL),(230,147,4,2,NULL),(231,148,4,2,NULL),(232,149,4,2,NULL),(233,147,12,2,NULL),(234,148,12,2,NULL),(235,149,12,2,NULL),(236,147,14,2,NULL),(237,148,14,2,NULL),(238,149,14,2,NULL),(239,147,26,2,NULL),(240,148,26,2,NULL),(241,149,26,2,NULL),(242,147,18,2,NULL),(243,148,18,2,NULL),(244,149,18,2,NULL),(245,147,24,2,NULL),(246,148,24,2,NULL),(247,149,24,2,NULL),(248,147,30,2,NULL),(249,148,30,2,NULL),(250,149,30,2,NULL),(251,147,47,2,NULL),(252,148,47,2,NULL),(253,149,47,2,NULL),(254,147,29,2,NULL),(255,148,29,2,NULL),(256,149,29,2,NULL),(257,147,44,2,NULL),(258,148,44,2,NULL),(259,149,44,2,NULL),(260,147,67,2,NULL),(261,148,67,2,NULL),(262,149,67,2,NULL),(263,147,68,2,NULL),(264,148,68,2,NULL),(265,149,68,2,NULL),(266,147,71,2,NULL),(267,148,71,2,NULL),(268,149,71,2,NULL),(269,147,98,2,NULL),(270,148,98,2,NULL),(271,149,98,2,NULL),(272,147,100,2,NULL),(273,147,100,2,NULL),(274,148,100,2,NULL),(275,148,100,2,NULL),(276,149,100,2,NULL),(277,147,102,2,NULL),(278,148,102,2,NULL),(279,149,102,2,NULL),(280,147,103,2,NULL),(281,148,103,2,NULL),(282,149,103,2,NULL),(283,147,104,2,NULL),(284,148,104,2,NULL),(285,149,104,2,NULL),(286,147,105,2,NULL),(287,148,105,2,NULL),(288,149,105,2,NULL),(289,147,106,2,NULL),(290,148,106,2,NULL),(291,149,106,2,NULL),(292,147,107,2,NULL),(293,148,107,2,NULL),(294,149,107,2,NULL),(295,147,108,2,NULL),(296,148,108,2,NULL),(297,149,108,2,NULL),(298,147,109,2,NULL),(299,148,109,2,NULL),(300,149,109,2,NULL),(301,147,66,2,NULL),(302,148,66,2,NULL),(303,149,66,2,NULL),(304,147,85,2,NULL),(305,148,85,2,NULL),(306,149,85,2,NULL),(307,147,86,2,NULL),(308,148,86,2,NULL),(309,149,86,2,NULL),(310,147,87,2,NULL),(311,148,87,2,NULL),(312,149,87,2,NULL),(313,147,89,2,NULL),(314,148,89,2,NULL),(315,149,89,2,NULL),(316,147,90,2,NULL),(317,148,90,2,NULL),(318,149,90,2,NULL),(319,147,91,2,NULL),(320,148,91,2,NULL),(321,149,91,2,NULL),(322,147,92,2,NULL),(323,148,92,2,NULL),(324,149,92,2,NULL),(325,147,93,2,NULL),(326,148,93,2,NULL),(327,149,93,2,NULL),(328,147,94,2,NULL),(329,148,94,2,NULL),(330,149,94,2,NULL),(331,147,95,2,NULL),(332,148,95,2,NULL),(333,149,95,2,NULL),(334,147,96,2,NULL),(335,148,96,2,NULL),(336,149,96,2,NULL),(337,147,97,2,NULL),(338,148,97,2,NULL),(339,149,97,2,NULL),(340,147,99,2,NULL),(341,148,99,2,NULL),(342,149,99,2,NULL),(343,34,1,2,NULL),(344,147,101,2,NULL),(345,148,101,2,NULL),(346,36,1,2,NULL),(347,149,101,2,NULL),(348,107,6,2,NULL),(349,38,1,2,NULL),(350,107,40,2,NULL),(351,107,45,2,NULL),(352,47,1,2,NULL),(353,107,63,2,NULL),(354,107,83,2,NULL),(355,48,1,2,NULL),(356,108,6,2,NULL),(357,108,40,2,NULL),(358,50,1,2,NULL),(359,108,45,2,NULL),(360,108,63,2,NULL),(361,52,1,2,NULL),(362,108,83,2,NULL),(363,150,6,2,NULL),(364,53,1,2,NULL),(365,150,40,2,NULL),(366,150,45,2,NULL),(367,41,1,2,NULL),(368,150,63,2,NULL),(369,150,83,2,NULL),(370,43,1,2,NULL),(371,151,6,2,NULL),(372,151,40,2,NULL),(373,44,1,2,NULL),(374,151,45,2,NULL),(375,151,63,2,NULL),(376,23,1,2,NULL),(377,151,83,2,NULL),(378,110,1,2,NULL),(379,27,1,2,NULL),(380,34,67,2,NULL),(381,36,67,2,NULL),(382,30,1,2,NULL),(383,38,67,2,NULL),(384,47,67,2,NULL),(385,1,1,2,NULL),(386,48,67,2,NULL),(387,50,67,2,NULL),(388,2,1,2,NULL),(389,52,67,2,NULL),(390,53,67,2,NULL),(391,4,1,2,NULL),(392,110,5,2,NULL),(393,41,67,2,NULL),(394,6,1,2,NULL),(395,43,67,2,NULL),(396,44,67,2,NULL),(397,8,1,2,NULL),(398,23,67,2,NULL),(399,27,67,2,NULL),(400,11,1,2,NULL),(401,30,67,2,NULL),(402,1,67,2,NULL),(403,13,1,2,NULL),(404,2,67,2,NULL),(405,4,67,2,NULL),(406,16,1,2,NULL),(407,6,67,2,NULL),(408,8,67,2,NULL),(409,19,1,2,NULL),(410,11,67,2,NULL),(411,13,67,2,NULL),(412,17,1,2,NULL),(413,16,67,2,NULL),(414,19,67,2,NULL),(415,18,1,2,NULL),(416,110,13,2,NULL),(417,110,4,2,NULL),(418,20,1,2,NULL),(419,17,67,2,NULL),(420,18,67,2,NULL),(421,82,1,2,NULL),(422,20,67,2,NULL),(423,110,12,2,NULL),(424,75,1,2,NULL),(425,110,14,2,NULL),(426,110,26,2,NULL),(427,122,1,2,NULL),(428,110,18,2,NULL),(429,110,24,2,NULL),(430,87,1,2,NULL),(431,110,30,2,NULL),(432,82,67,2,NULL),(433,109,1,2,NULL),(434,110,47,2,NULL),(435,110,29,2,NULL),(436,111,1,2,NULL),(437,110,44,2,NULL),(438,112,1,2,NULL),(439,110,68,2,NULL),(440,110,71,2,NULL),(441,110,98,2,NULL),(442,124,1,2,NULL),(443,110,100,2,NULL),(444,110,102,2,NULL),(445,34,5,2,NULL),(446,110,103,2,NULL),(447,110,104,2,NULL),(448,36,5,2,NULL),(449,110,105,2,NULL),(450,38,5,2,NULL),(451,110,106,2,NULL),(452,110,107,2,NULL),(453,47,5,2,NULL),(454,110,108,2,NULL),(455,110,109,2,NULL),(456,48,5,2,NULL),(457,110,66,2,NULL),(458,75,67,2,NULL),(459,50,5,2,NULL),(460,122,67,2,NULL),(461,87,67,2,NULL),(462,52,5,2,NULL),(463,109,67,2,NULL),(464,111,67,2,NULL),(465,53,5,2,NULL),(466,112,67,2,NULL),(467,110,86,2,NULL),(468,34,13,2,NULL),(469,110,87,2,NULL),(470,110,89,2,NULL),(471,36,13,2,NULL),(472,110,90,2,NULL),(473,110,91,2,NULL),(474,38,13,2,NULL),(475,110,92,2,NULL),(476,110,93,2,NULL),(477,47,13,2,NULL),(478,110,94,2,NULL),(479,110,95,2,NULL),(480,48,13,2,NULL),(481,110,96,2,NULL),(482,110,97,2,NULL),(483,50,13,2,NULL),(484,110,99,2,NULL),(485,110,101,2,NULL),(486,52,13,2,NULL),(487,34,68,2,NULL),(488,36,68,2,NULL),(489,53,13,2,NULL),(490,38,68,2,NULL),(491,47,68,2,NULL),(492,34,4,2,NULL),(493,48,68,2,NULL),(494,50,68,2,NULL),(495,36,4,2,NULL),(496,52,68,2,NULL),(497,53,68,2,NULL),(498,38,4,2,NULL),(499,41,68,2,NULL),(500,43,68,2,NULL),(501,47,4,2,NULL),(502,44,68,2,NULL),(503,23,68,2,NULL),(504,48,4,2,NULL),(505,27,68,2,NULL),(506,30,68,2,NULL),(507,50,4,2,NULL),(508,1,68,2,NULL),(509,2,68,2,NULL),(510,52,4,2,NULL),(511,4,68,2,NULL),(512,6,68,2,NULL),(513,53,4,2,NULL),(514,8,68,2,NULL),(515,11,68,2,NULL),(516,34,12,2,NULL),(517,13,68,2,NULL),(518,16,68,2,NULL),(519,36,12,2,NULL),(520,19,68,2,NULL),(521,17,68,2,NULL),(522,38,12,2,NULL),(523,18,68,2,NULL),(524,20,68,2,NULL),(525,47,12,2,NULL),(526,82,68,2,NULL),(527,75,68,2,NULL),(528,48,12,2,NULL),(529,122,68,2,NULL),(530,87,68,2,NULL),(531,50,12,2,NULL),(532,109,68,2,NULL),(533,109,68,2,NULL),(534,52,12,2,NULL),(535,111,68,2,NULL),(536,111,68,2,NULL),(537,53,12,2,NULL),(538,112,68,2,NULL),(539,112,68,2,NULL),(540,34,14,2,NULL),(541,124,68,2,NULL),(542,124,68,2,NULL),(543,36,14,2,NULL),(544,102,10,2,NULL),(545,102,10,2,NULL),(546,38,14,2,NULL),(547,102,42,2,NULL),(548,102,42,2,NULL),(549,47,14,2,NULL),(550,102,46,2,NULL),(551,102,46,2,NULL),(552,48,14,2,NULL),(553,102,65,2,NULL),(554,102,65,2,NULL),(555,50,14,2,NULL),(556,102,84,2,NULL),(557,102,84,2,NULL),(558,52,14,2,NULL),(559,34,71,2,NULL),(560,34,71,2,NULL),(561,53,14,2,NULL),(562,36,71,2,NULL),(563,36,71,2,NULL),(564,34,26,2,NULL),(565,38,71,2,NULL),(566,38,71,2,NULL),(567,36,26,2,NULL),(568,47,71,2,NULL),(569,47,71,2,NULL),(570,38,26,2,NULL),(571,48,71,2,NULL),(572,48,71,2,NULL),(573,47,26,2,NULL),(574,50,71,2,NULL),(575,50,71,2,NULL),(576,48,26,2,NULL),(577,52,71,2,NULL),(578,52,71,2,NULL),(579,50,26,2,NULL),(580,53,71,2,NULL),(581,53,71,2,NULL),(582,52,26,2,NULL),(583,41,71,2,NULL),(584,41,71,2,NULL),(585,53,26,2,NULL),(586,43,71,2,NULL),(587,43,71,2,NULL),(588,34,18,2,NULL),(589,44,71,2,NULL),(590,44,71,2,NULL),(591,36,18,2,NULL),(592,23,71,2,NULL),(593,23,71,2,NULL),(594,38,18,2,NULL),(595,27,71,2,NULL),(596,27,71,2,NULL),(597,47,18,2,NULL),(598,30,71,2,NULL),(599,30,71,2,NULL),(600,48,18,2,NULL),(601,1,71,2,NULL),(602,1,71,2,NULL),(603,50,18,2,NULL),(604,2,71,2,NULL),(605,4,71,2,NULL),(606,52,18,2,NULL),(607,6,71,2,NULL),(608,6,71,2,NULL),(609,53,18,2,NULL),(610,8,71,2,NULL),(611,11,71,2,NULL),(612,34,24,2,NULL),(613,13,71,2,NULL),(614,13,71,2,NULL),(615,36,24,2,NULL),(616,16,71,2,NULL),(617,38,24,2,NULL),(618,19,71,2,NULL),(619,17,71,2,NULL),(620,47,24,2,NULL),(621,18,71,2,NULL),(622,18,71,2,NULL),(623,48,24,2,NULL),(624,20,71,2,NULL),(625,20,71,2,NULL),(626,50,24,2,NULL),(627,82,71,2,NULL),(628,82,71,2,NULL),(629,52,24,2,NULL),(630,75,71,2,NULL),(631,75,71,2,NULL),(632,53,24,2,NULL),(633,122,71,2,NULL),(634,122,71,2,NULL),(635,34,30,2,NULL),(636,87,71,2,NULL),(637,87,71,2,NULL),(638,36,30,2,NULL),(639,109,71,2,NULL),(640,109,71,2,NULL),(641,38,30,2,NULL),(642,111,71,2,NULL),(643,111,71,2,NULL),(644,47,30,2,NULL),(645,112,71,2,NULL),(646,112,71,2,NULL),(647,48,30,2,NULL),(648,124,71,2,NULL),(649,124,71,2,NULL),(650,50,30,2,NULL),(651,34,98,2,NULL),(652,34,98,2,NULL),(653,52,30,2,NULL),(654,36,98,2,NULL),(655,36,98,2,NULL),(656,53,30,2,NULL),(657,38,98,2,NULL),(658,38,98,2,NULL),(659,34,47,2,NULL),(660,47,98,2,NULL),(661,47,98,2,NULL),(662,36,47,2,NULL),(663,48,98,2,NULL),(664,48,98,2,NULL),(665,38,47,2,NULL),(666,50,98,2,NULL),(667,50,98,2,NULL),(668,47,47,2,NULL),(669,52,98,2,NULL),(670,53,98,2,NULL),(671,48,47,2,NULL),(672,41,98,2,NULL),(673,41,98,2,NULL),(674,50,47,2,NULL),(675,43,98,2,NULL),(676,43,98,2,NULL),(677,52,47,2,NULL),(678,44,98,2,NULL),(679,44,98,2,NULL),(680,53,47,2,NULL),(681,23,98,2,NULL),(682,23,98,2,NULL),(683,34,29,2,NULL),(684,27,98,2,NULL),(685,27,98,2,NULL),(686,36,29,2,NULL),(687,30,98,2,NULL),(688,30,98,2,NULL),(689,38,29,2,NULL),(690,1,98,2,NULL),(691,1,98,2,NULL),(692,47,29,2,NULL),(693,2,98,2,NULL),(694,2,98,2,NULL),(695,48,29,2,NULL),(696,4,98,2,NULL),(697,6,98,2,NULL),(698,50,29,2,NULL),(699,8,98,2,NULL),(700,8,98,2,NULL),(701,52,29,2,NULL),(702,11,98,2,NULL),(703,11,98,2,NULL),(704,53,29,2,NULL),(705,13,98,2,NULL),(706,13,98,2,NULL),(707,34,44,2,NULL),(708,16,98,2,NULL),(709,16,98,2,NULL),(710,36,44,2,NULL),(711,19,98,2,NULL),(712,19,98,2,NULL),(713,38,44,2,NULL),(714,17,98,2,NULL),(715,17,98,2,NULL),(716,47,44,2,NULL),(717,18,98,2,NULL),(718,18,98,2,NULL),(719,48,44,2,NULL),(720,20,98,2,NULL),(721,82,98,2,NULL),(722,50,44,2,NULL),(723,75,98,2,NULL),(724,75,98,2,NULL),(725,52,44,2,NULL),(726,122,98,2,NULL),(727,122,98,2,NULL),(728,53,44,2,NULL),(729,87,98,2,NULL),(730,87,98,2,NULL),(731,109,98,2,NULL),(732,109,98,2,NULL),(733,111,98,2,NULL),(734,34,100,2,NULL),(735,112,98,2,NULL),(736,36,100,2,NULL),(737,124,98,2,NULL),(738,38,100,2,NULL),(739,47,100,2,NULL),(740,48,100,2,NULL),(741,50,100,2,NULL),(742,52,100,2,NULL),(743,53,100,2,NULL),(744,41,100,2,NULL),(745,34,102,2,NULL),(746,43,100,2,NULL),(747,44,100,2,NULL),(748,36,102,2,NULL),(749,23,100,2,NULL),(750,27,100,2,NULL),(751,38,102,2,NULL),(752,30,100,2,NULL),(753,1,100,2,NULL),(754,47,102,2,NULL),(755,2,100,2,NULL),(756,4,100,2,NULL),(757,48,102,2,NULL),(758,6,100,2,NULL),(759,8,100,2,NULL),(760,11,100,2,NULL),(761,50,102,2,NULL),(762,13,100,2,NULL),(763,52,102,2,NULL),(764,16,100,2,NULL),(765,19,100,2,NULL),(766,53,102,2,NULL),(767,17,100,2,NULL),(768,18,100,2,NULL),(769,34,103,2,NULL),(770,20,100,2,NULL),(771,82,100,2,NULL),(772,36,103,2,NULL),(773,75,100,2,NULL),(774,122,100,2,NULL),(775,87,100,2,NULL),(776,38,103,2,NULL),(777,109,100,2,NULL),(778,111,100,2,NULL),(779,47,103,2,NULL),(780,112,100,2,NULL),(781,124,100,2,NULL),(782,48,103,2,NULL),(783,41,102,2,NULL),(784,50,103,2,NULL),(785,43,102,2,NULL),(786,44,102,2,NULL),(787,23,102,2,NULL),(788,52,103,2,NULL),(789,27,102,2,NULL),(790,30,102,2,NULL),(791,53,103,2,NULL),(792,1,102,2,NULL),(793,2,102,2,NULL),(794,34,104,2,NULL),(795,4,102,2,NULL),(796,6,102,2,NULL),(797,36,104,2,NULL),(798,8,102,2,NULL),(799,38,104,2,NULL),(800,11,102,2,NULL),(801,13,102,2,NULL),(802,47,104,2,NULL),(803,16,102,2,NULL),(804,19,102,2,NULL),(805,17,102,2,NULL),(806,48,104,2,NULL),(807,18,102,2,NULL),(808,20,102,2,NULL),(809,50,104,2,NULL),(810,82,102,2,NULL),(811,52,104,2,NULL),(812,75,102,2,NULL),(813,122,102,2,NULL),(814,53,104,2,NULL),(815,87,102,2,NULL),(816,109,102,2,NULL),(817,34,105,2,NULL),(818,111,102,2,NULL),(819,112,102,2,NULL),(820,36,105,2,NULL),(821,124,102,2,NULL),(822,41,103,2,NULL),(823,38,105,2,NULL),(824,43,103,2,NULL),(825,47,105,2,NULL),(826,44,103,2,NULL),(827,48,105,2,NULL),(828,23,103,2,NULL),(829,27,103,2,NULL),(830,50,105,2,NULL),(831,30,103,2,NULL),(832,1,103,2,NULL),(833,52,105,2,NULL),(834,2,103,2,NULL),(835,2,103,2,NULL),(836,53,105,2,NULL),(837,4,103,2,NULL),(838,4,103,2,NULL),(839,34,106,2,NULL),(840,6,103,2,NULL),(841,6,103,2,NULL),(842,36,106,2,NULL),(843,8,103,2,NULL),(844,8,103,2,NULL),(845,38,106,2,NULL),(846,11,103,2,NULL),(847,11,103,2,NULL),(848,47,106,2,NULL),(849,13,103,2,NULL),(850,13,103,2,NULL),(851,48,106,2,NULL),(852,16,103,2,NULL),(853,16,103,2,NULL),(854,50,106,2,NULL),(855,19,103,2,NULL),(856,19,103,2,NULL),(857,52,106,2,NULL),(858,17,103,2,NULL),(859,17,103,2,NULL),(860,53,106,2,NULL),(861,18,103,2,NULL),(862,18,103,2,NULL),(863,34,107,2,NULL),(864,20,103,2,NULL),(865,20,103,2,NULL),(866,36,107,2,NULL),(867,82,103,2,NULL),(868,82,103,2,NULL),(869,38,107,2,NULL),(870,75,103,2,NULL),(871,75,103,2,NULL),(872,47,107,2,NULL),(873,122,103,2,NULL),(874,122,103,2,NULL),(875,48,107,2,NULL),(876,87,103,2,NULL),(877,87,103,2,NULL),(878,50,107,2,NULL),(879,109,103,2,NULL),(880,109,103,2,NULL),(881,52,107,2,NULL),(882,111,103,2,NULL),(883,111,103,2,NULL),(884,53,107,2,NULL),(885,112,103,2,NULL),(886,112,103,2,NULL),(887,34,108,2,NULL),(888,124,103,2,NULL),(889,124,103,2,NULL),(890,36,108,2,NULL),(891,41,104,2,NULL),(892,41,104,2,NULL),(893,38,108,2,NULL),(894,43,104,2,NULL),(895,43,104,2,NULL),(896,47,108,2,NULL),(897,44,104,2,NULL),(898,44,104,2,NULL),(899,48,108,2,NULL),(900,23,104,2,NULL),(901,23,104,2,NULL),(902,50,108,2,NULL),(903,27,104,2,NULL),(904,27,104,2,NULL),(905,52,108,2,NULL),(906,30,104,2,NULL),(907,30,104,2,NULL),(908,53,108,2,NULL),(909,1,104,2,NULL),(910,1,104,2,NULL),(911,34,109,2,NULL),(912,2,104,2,NULL),(913,2,104,2,NULL),(914,36,109,2,NULL),(915,4,104,2,NULL),(916,4,104,2,NULL),(917,38,109,2,NULL),(918,6,104,2,NULL),(919,6,104,2,NULL),(920,47,109,2,NULL),(921,8,104,2,NULL),(922,8,104,2,NULL),(923,48,109,2,NULL),(924,11,104,2,NULL),(925,11,104,2,NULL),(926,50,109,2,NULL),(927,13,104,2,NULL),(928,13,104,2,NULL),(929,52,109,2,NULL),(930,16,104,2,NULL),(931,16,104,2,NULL),(932,53,109,2,NULL),(933,19,104,2,NULL),(934,19,104,2,NULL),(935,34,66,2,NULL),(936,17,104,2,NULL),(937,17,104,2,NULL),(938,36,66,2,NULL),(939,18,104,2,NULL),(940,18,104,2,NULL),(941,38,66,2,NULL),(942,20,104,2,NULL),(943,20,104,2,NULL),(944,47,66,2,NULL),(945,82,104,2,NULL),(946,82,104,2,NULL),(947,48,66,2,NULL),(948,75,104,2,NULL),(949,75,104,2,NULL),(950,50,66,2,NULL),(951,122,104,2,NULL),(952,122,104,2,NULL),(953,52,66,2,NULL),(954,87,104,2,NULL),(955,87,104,2,NULL),(956,53,66,2,NULL),(957,109,104,2,NULL),(958,109,104,2,NULL),(959,34,85,2,NULL),(960,111,104,2,NULL),(961,36,85,2,NULL),(962,112,104,2,NULL),(963,124,104,2,NULL),(964,124,104,2,NULL),(965,38,85,2,NULL),(966,41,105,2,NULL),(967,47,85,2,NULL),(968,43,105,2,NULL),(969,44,105,2,NULL),(970,23,105,2,NULL),(971,48,85,2,NULL),(972,23,105,2,NULL),(973,27,105,2,NULL),(974,30,105,2,NULL),(975,50,85,2,NULL),(976,1,105,2,NULL),(977,2,105,2,NULL),(978,52,85,2,NULL),(979,4,105,2,NULL),(980,53,85,2,NULL),(981,6,105,2,NULL),(982,8,105,2,NULL),(983,11,105,2,NULL),(984,34,86,2,NULL),(985,13,105,2,NULL),(986,36,86,2,NULL),(987,16,105,2,NULL),(988,19,105,2,NULL),(989,38,86,2,NULL),(990,17,105,2,NULL),(991,18,105,2,NULL),(992,20,105,2,NULL),(993,47,86,2,NULL),(994,82,105,2,NULL),(995,48,86,2,NULL),(996,75,105,2,NULL),(997,122,105,2,NULL),(998,87,105,2,NULL),(999,50,86,2,NULL),(1000,109,105,2,NULL),(1001,52,86,2,NULL),(1002,111,105,2,NULL),(1003,112,105,2,NULL),(1004,124,105,2,NULL),(1005,53,86,2,NULL),(1006,41,106,2,NULL),(1007,34,87,2,NULL),(1008,43,106,2,NULL),(1009,44,106,2,NULL),(1010,36,87,2,NULL),(1011,23,106,2,NULL),(1012,27,106,2,NULL),(1013,30,106,2,NULL),(1014,38,87,2,NULL),(1015,1,106,2,NULL),(1016,2,106,2,NULL),(1017,47,87,2,NULL),(1018,4,106,2,NULL),(1019,6,106,2,NULL),(1020,48,87,2,NULL),(1021,8,106,2,NULL),(1022,50,87,2,NULL),(1023,11,106,2,NULL),(1024,13,106,2,NULL),(1025,16,106,2,NULL),(1026,52,87,2,NULL),(1027,19,106,2,NULL),(1028,17,106,2,NULL),(1029,53,87,2,NULL),(1030,18,106,2,NULL),(1031,34,89,2,NULL),(1032,20,106,2,NULL),(1033,82,106,2,NULL),(1034,36,89,2,NULL),(1035,75,106,2,NULL),(1036,122,106,2,NULL),(1037,87,106,2,NULL),(1038,38,89,2,NULL),(1039,109,106,2,NULL),(1040,111,106,2,NULL),(1041,47,89,2,NULL),(1042,112,106,2,NULL),(1043,124,106,2,NULL),(1044,48,89,2,NULL),(1045,50,89,2,NULL),(1046,41,107,2,NULL),(1047,52,89,2,NULL),(1048,43,107,2,NULL),(1049,44,107,2,NULL),(1050,53,89,2,NULL),(1051,23,107,2,NULL),(1052,34,90,2,NULL),(1053,27,107,2,NULL),(1054,30,107,2,NULL),(1055,36,90,2,NULL),(1056,1,107,2,NULL),(1057,2,107,2,NULL),(1058,38,90,2,NULL),(1059,4,107,2,NULL),(1060,6,107,2,NULL),(1061,47,90,2,NULL),(1062,8,107,2,NULL),(1063,11,107,2,NULL),(1064,13,107,2,NULL),(1065,48,90,2,NULL),(1066,16,107,2,NULL),(1067,50,90,2,NULL),(1068,19,107,2,NULL),(1069,17,107,2,NULL),(1070,52,90,2,NULL),(1071,18,107,2,NULL),(1072,20,107,2,NULL),(1073,53,90,2,NULL),(1074,82,107,2,NULL),(1075,75,107,2,NULL),(1076,34,91,2,NULL),(1077,122,107,2,NULL),(1078,87,107,2,NULL),(1079,109,107,2,NULL),(1080,36,91,2,NULL),(1081,111,107,2,NULL),(1082,38,91,2,NULL),(1083,112,107,2,NULL),(1084,124,107,2,NULL),(1085,47,91,2,NULL),(1086,41,108,2,NULL),(1087,43,108,2,NULL),(1088,44,108,2,NULL),(1089,48,91,2,NULL),(1090,23,108,2,NULL),(1091,50,91,2,NULL),(1092,27,108,2,NULL),(1093,30,108,2,NULL),(1094,52,91,2,NULL),(1095,1,108,2,NULL),(1096,2,108,2,NULL),(1097,53,91,2,NULL),(1098,4,108,2,NULL),(1099,6,108,2,NULL),(1100,34,92,2,NULL),(1101,8,108,2,NULL),(1102,11,108,2,NULL),(1103,36,92,2,NULL),(1104,13,108,2,NULL),(1105,16,108,2,NULL),(1106,38,92,2,NULL),(1107,19,108,2,NULL),(1108,17,108,2,NULL),(1109,18,108,2,NULL),(1110,47,92,2,NULL),(1111,20,108,2,NULL),(1112,82,108,2,NULL),(1113,48,92,2,NULL),(1114,75,108,2,NULL),(1115,50,92,2,NULL),(1116,122,108,2,NULL),(1117,87,108,2,NULL),(1118,52,92,2,NULL),(1119,109,108,2,NULL),(1120,111,108,2,NULL),(1121,53,92,2,NULL),(1122,112,108,2,NULL),(1123,124,108,2,NULL),(1124,34,93,2,NULL),(1125,41,109,2,NULL),(1126,43,109,2,NULL),(1127,36,93,2,NULL),(1128,44,109,2,NULL),(1129,23,109,2,NULL),(1130,38,93,2,NULL),(1131,27,109,2,NULL),(1132,30,109,2,NULL),(1133,47,93,2,NULL),(1134,1,109,2,NULL),(1135,2,109,2,NULL),(1136,48,93,2,NULL),(1137,4,109,2,NULL),(1138,6,109,2,NULL),(1139,50,93,2,NULL),(1140,8,109,2,NULL),(1141,11,109,2,NULL),(1142,52,93,2,NULL),(1143,13,109,2,NULL),(1144,16,109,2,NULL),(1145,53,93,2,NULL),(1146,19,109,2,NULL),(1147,17,109,2,NULL),(1148,34,94,2,NULL),(1149,18,109,2,NULL),(1150,20,109,2,NULL),(1151,36,94,2,NULL),(1152,82,109,2,NULL),(1153,75,109,2,NULL),(1154,38,94,2,NULL),(1155,122,109,2,NULL),(1156,87,109,2,NULL),(1157,47,94,2,NULL),(1158,109,109,2,NULL),(1159,111,109,2,NULL),(1160,48,94,2,NULL),(1161,112,109,2,NULL),(1162,124,109,2,NULL),(1163,50,94,2,NULL),(1164,97,49,2,NULL),(1165,97,66,2,NULL),(1166,132,51,2,NULL),(1167,52,94,2,NULL),(1168,132,70,2,NULL),(1169,133,50,2,NULL),(1170,53,94,2,NULL),(1171,133,69,2,NULL),(1172,34,95,2,NULL),(1173,41,66,2,NULL),(1174,43,66,2,NULL),(1175,44,66,2,NULL),(1176,36,95,2,NULL),(1177,23,66,2,NULL),(1178,38,95,2,NULL),(1179,27,66,2,NULL),(1180,30,66,2,NULL),(1181,1,66,2,NULL),(1182,47,95,2,NULL),(1183,2,66,2,NULL),(1184,48,95,2,NULL),(1185,4,66,2,NULL),(1186,6,66,2,NULL),(1187,8,66,2,NULL),(1188,50,95,2,NULL),(1189,11,66,2,NULL),(1190,52,95,2,NULL),(1191,13,66,2,NULL),(1192,16,66,2,NULL),(1193,19,66,2,NULL),(1194,53,95,2,NULL),(1195,17,66,2,NULL),(1196,18,66,2,NULL),(1197,34,96,2,NULL),(1198,20,66,2,NULL),(1199,36,96,2,NULL),(1200,82,66,2,NULL),(1201,75,66,2,NULL),(1202,38,96,2,NULL),(1203,122,66,2,NULL),(1204,87,66,2,NULL),(1205,109,66,2,NULL),(1206,47,96,2,NULL),(1207,111,66,2,NULL),(1208,112,66,2,NULL),(1209,48,96,2,NULL),(1210,124,66,2,NULL),(1211,83,53,2,NULL),(1212,50,96,2,NULL),(1213,83,73,2,NULL),(1214,85,52,2,NULL),(1215,52,96,2,NULL),(1216,85,72,2,NULL),(1217,106,48,2,NULL),(1218,53,96,2,NULL),(1219,106,64,2,NULL),(1220,140,57,2,NULL),(1221,34,97,2,NULL),(1222,140,77,2,NULL),(1223,75,5,2,NULL),(1224,36,97,2,NULL),(1225,122,5,2,NULL),(1226,75,13,2,NULL),(1227,38,97,2,NULL),(1228,122,13,2,NULL),(1229,75,4,2,NULL),(1230,47,97,2,NULL),(1231,122,4,2,NULL),(1232,75,12,2,NULL),(1233,48,97,2,NULL),(1234,122,12,2,NULL),(1235,75,14,2,NULL),(1236,50,97,2,NULL),(1237,122,14,2,NULL),(1238,75,26,2,NULL),(1239,52,97,2,NULL),(1240,122,26,2,NULL),(1241,75,18,2,NULL),(1242,53,97,2,NULL),(1243,122,18,2,NULL),(1244,75,24,2,NULL),(1245,34,99,2,NULL),(1246,122,24,2,NULL),(1247,75,30,2,NULL),(1248,36,99,2,NULL),(1249,122,30,2,NULL),(1250,75,47,2,NULL),(1251,38,99,2,NULL),(1252,122,47,2,NULL),(1253,75,29,2,NULL),(1254,47,99,2,NULL),(1255,122,29,2,NULL),(1256,75,44,2,NULL),(1257,48,99,2,NULL),(1258,122,44,2,NULL),(1259,50,99,2,NULL),(1260,75,85,2,NULL),(1261,52,99,2,NULL),(1262,122,85,2,NULL),(1263,75,86,2,NULL),(1264,53,99,2,NULL),(1265,122,86,2,NULL),(1266,75,87,2,NULL),(1267,34,101,2,NULL),(1268,122,87,2,NULL),(1269,122,87,2,NULL),(1270,36,101,2,NULL),(1271,75,89,2,NULL),(1272,75,89,2,NULL),(1273,38,101,2,NULL),(1274,122,89,2,NULL),(1275,122,89,2,NULL),(1276,47,101,2,NULL),(1277,75,90,2,NULL),(1278,75,90,2,NULL),(1279,48,101,2,NULL),(1280,122,90,2,NULL),(1281,122,90,2,NULL),(1282,50,101,2,NULL),(1283,75,91,2,NULL),(1284,75,91,2,NULL),(1285,52,101,2,NULL),(1286,122,91,2,NULL),(1287,122,91,2,NULL),(1288,53,101,2,NULL),(1289,75,92,2,NULL),(1290,75,92,2,NULL),(1291,41,5,2,NULL),(1292,122,92,2,NULL),(1293,122,92,2,NULL),(1294,43,5,2,NULL),(1295,75,93,2,NULL),(1296,75,93,2,NULL),(1297,44,5,2,NULL),(1298,122,93,2,NULL),(1299,122,93,2,NULL),(1300,23,5,2,NULL),(1301,75,94,2,NULL),(1302,75,94,2,NULL),(1303,27,5,2,NULL),(1304,122,94,2,NULL),(1305,122,94,2,NULL),(1306,30,5,2,NULL),(1307,75,95,2,NULL),(1308,75,95,2,NULL),(1309,1,5,2,NULL),(1310,122,95,2,NULL),(1311,122,95,2,NULL),(1312,2,5,2,NULL),(1313,75,96,2,NULL),(1314,75,96,2,NULL),(1315,4,5,2,NULL),(1316,122,96,2,NULL),(1317,122,96,2,NULL),(1318,6,5,2,NULL),(1319,75,97,2,NULL),(1320,75,97,2,NULL),(1321,8,5,2,NULL),(1322,122,97,2,NULL),(1323,122,97,2,NULL),(1324,11,5,2,NULL),(1325,75,99,2,NULL),(1326,75,99,2,NULL),(1327,13,5,2,NULL),(1328,122,99,2,NULL),(1329,122,99,2,NULL),(1330,16,5,2,NULL),(1331,75,101,2,NULL),(1332,75,101,2,NULL),(1333,19,5,2,NULL),(1334,122,101,2,NULL),(1335,122,101,2,NULL),(1336,17,5,2,NULL),(1337,87,5,2,NULL),(1338,87,5,2,NULL),(1339,18,5,2,NULL),(1340,109,5,2,NULL),(1341,109,5,2,NULL),(1342,20,5,2,NULL),(1343,87,13,2,NULL),(1344,87,13,2,NULL),(1345,82,5,2,NULL),(1346,109,13,2,NULL),(1347,109,13,2,NULL),(1348,111,5,2,NULL),(1349,87,4,2,NULL),(1350,87,4,2,NULL),(1351,112,5,2,NULL),(1352,109,4,2,NULL),(1353,87,12,2,NULL),(1354,124,5,2,NULL),(1355,87,12,2,NULL),(1356,109,12,2,NULL),(1357,109,12,2,NULL),(1358,41,13,2,NULL),(1359,87,14,2,NULL),(1360,87,14,2,NULL),(1361,43,13,2,NULL),(1362,109,14,2,NULL),(1363,109,14,2,NULL),(1364,44,13,2,NULL),(1365,87,26,2,NULL),(1366,87,26,2,NULL),(1367,41,4,2,NULL),(1368,109,26,2,NULL),(1369,109,26,2,NULL),(1370,43,4,2,NULL),(1371,87,18,2,NULL),(1372,87,18,2,NULL),(1373,44,4,2,NULL),(1374,109,18,2,NULL),(1375,109,18,2,NULL),(1376,41,12,2,NULL),(1377,87,24,2,NULL),(1378,87,24,2,NULL),(1379,43,12,2,NULL),(1380,109,24,2,NULL),(1381,109,24,2,NULL),(1382,44,12,2,NULL),(1383,87,30,2,NULL),(1384,87,30,2,NULL),(1385,41,14,2,NULL),(1386,109,30,2,NULL),(1387,109,30,2,NULL),(1388,43,14,2,NULL),(1389,87,47,2,NULL),(1390,87,47,2,NULL),(1391,44,14,2,NULL),(1392,109,47,2,NULL),(1393,109,47,2,NULL),(1394,41,26,2,NULL),(1395,87,29,2,NULL),(1396,87,29,2,NULL),(1397,43,26,2,NULL),(1398,109,29,2,NULL),(1399,109,29,2,NULL),(1400,44,26,2,NULL),(1401,87,44,2,NULL),(1402,87,44,2,NULL),(1403,41,18,2,NULL),(1404,109,44,2,NULL),(1405,109,44,2,NULL),(1406,43,18,2,NULL),(1407,87,85,2,NULL),(1408,87,85,2,NULL),(1409,44,18,2,NULL),(1410,109,85,2,NULL),(1411,41,24,2,NULL),(1412,87,86,2,NULL),(1413,109,86,2,NULL),(1414,43,24,2,NULL),(1415,87,87,2,NULL),(1416,109,87,2,NULL),(1417,44,24,2,NULL),(1418,87,89,2,NULL),(1419,109,89,2,NULL),(1420,87,90,2,NULL),(1421,41,30,2,NULL),(1422,109,90,2,NULL),(1423,43,30,2,NULL),(1424,87,91,2,NULL),(1425,109,91,2,NULL),(1426,44,30,2,NULL),(1427,87,92,2,NULL),(1428,109,92,2,NULL),(1429,41,47,2,NULL),(1430,87,93,2,NULL),(1431,109,93,2,NULL),(1432,87,94,2,NULL),(1433,43,47,2,NULL),(1434,109,94,2,NULL),(1435,44,47,2,NULL),(1436,87,95,2,NULL),(1437,109,95,2,NULL),(1438,87,96,2,NULL),(1439,41,29,2,NULL),(1440,109,96,2,NULL),(1441,43,29,2,NULL),(1442,87,97,2,NULL),(1443,109,97,2,NULL),(1444,44,29,2,NULL),(1445,87,99,2,NULL),(1446,109,99,2,NULL),(1447,41,44,2,NULL),(1448,87,101,2,NULL),(1449,109,101,2,NULL),(1450,43,44,2,NULL),(1451,111,13,2,NULL),(1452,112,13,2,NULL),(1453,44,44,2,NULL),(1454,111,4,2,NULL),(1455,112,4,2,NULL),(1456,111,12,2,NULL),(1457,112,12,2,NULL),(1458,111,14,2,NULL),(1459,41,85,2,NULL),(1460,112,14,2,NULL),(1461,43,85,2,NULL),(1462,111,26,2,NULL),(1463,112,26,2,NULL),(1464,111,18,2,NULL),(1465,44,85,2,NULL),(1466,112,18,2,NULL),(1467,41,86,2,NULL),(1468,111,24,2,NULL),(1469,112,24,2,NULL),(1470,43,86,2,NULL),(1471,111,30,2,NULL),(1472,112,30,2,NULL),(1473,44,86,2,NULL),(1474,111,47,2,NULL),(1475,112,47,2,NULL),(1476,111,29,2,NULL),(1477,41,87,2,NULL),(1478,112,29,2,NULL),(1479,111,44,2,NULL),(1480,43,87,2,NULL),(1481,112,44,2,NULL),(1482,44,87,2,NULL),(1483,111,85,2,NULL),(1484,41,89,2,NULL),(1485,112,85,2,NULL),(1486,111,86,2,NULL),(1487,112,86,2,NULL),(1488,43,89,2,NULL),(1489,111,87,2,NULL),(1490,44,89,2,NULL),(1491,112,87,2,NULL),(1492,111,89,2,NULL),(1493,41,90,2,NULL),(1494,112,89,2,NULL),(1495,111,90,2,NULL),(1496,112,90,2,NULL),(1497,43,90,2,NULL),(1498,111,91,2,NULL),(1499,112,91,2,NULL),(1500,44,90,2,NULL),(1501,111,92,2,NULL),(1502,112,92,2,NULL),(1503,41,91,2,NULL),(1504,111,93,2,NULL),(1505,43,91,2,NULL),(1506,112,93,2,NULL),(1507,111,94,2,NULL),(1508,44,91,2,NULL),(1509,112,94,2,NULL),(1510,111,95,2,NULL),(1511,41,92,2,NULL),(1512,112,95,2,NULL),(1513,111,96,2,NULL),(1514,43,92,2,NULL),(1515,112,96,2,NULL),(1516,111,97,2,NULL),(1517,44,92,2,NULL),(1518,112,97,2,NULL),(1519,111,99,2,NULL),(1520,112,99,2,NULL),(1521,41,93,2,NULL),(1522,111,101,2,NULL),(1523,43,93,2,NULL),(1524,112,101,2,NULL),(1525,77,6,2,NULL),(1526,77,40,2,NULL),(1527,44,93,2,NULL),(1528,77,45,2,NULL),(1529,77,63,2,NULL),(1530,41,94,2,NULL),(1531,77,83,2,NULL),(1532,79,6,2,NULL),(1533,43,94,2,NULL),(1534,79,40,2,NULL),(1535,79,45,2,NULL),(1536,44,94,2,NULL),(1537,79,63,2,NULL),(1538,79,83,2,NULL),(1539,41,95,2,NULL),(1540,130,6,2,NULL),(1541,130,40,2,NULL),(1542,43,95,2,NULL),(1543,130,45,2,NULL),(1544,130,63,2,NULL),(1545,44,95,2,NULL),(1546,130,83,2,NULL),(1547,131,6,2,NULL),(1548,41,96,2,NULL),(1549,131,40,2,NULL),(1550,131,45,2,NULL),(1551,43,96,2,NULL),(1552,131,63,2,NULL),(1553,131,83,2,NULL),(1554,44,96,2,NULL),(1555,23,85,2,NULL),(1556,41,97,2,NULL),(1557,27,85,2,NULL),(1558,30,85,2,NULL),(1559,43,97,2,NULL),(1560,1,85,2,NULL),(1561,2,85,2,NULL),(1562,44,97,2,NULL),(1563,4,85,2,NULL),(1564,6,85,2,NULL),(1565,41,99,2,NULL),(1566,8,85,2,NULL),(1567,11,85,2,NULL),(1568,43,99,2,NULL),(1569,13,85,2,NULL),(1570,16,85,2,NULL),(1571,44,99,2,NULL),(1572,19,85,2,NULL),(1573,124,13,2,NULL),(1574,41,101,2,NULL),(1575,124,4,2,NULL),(1576,17,85,2,NULL),(1577,18,85,2,NULL),(1578,43,101,2,NULL),(1579,20,85,2,NULL),(1580,44,101,2,NULL),(1581,124,12,2,NULL),(1582,124,14,2,NULL),(1583,124,26,2,NULL),(1584,23,13,2,NULL),(1585,124,18,2,NULL),(1586,124,24,2,NULL),(1587,27,13,2,NULL),(1588,124,30,2,NULL),(1589,82,85,2,NULL),(1590,30,13,2,NULL),(1591,124,47,2,NULL),(1592,23,4,2,NULL),(1593,124,29,2,NULL),(1594,124,44,2,NULL),(1595,27,4,2,NULL),(1596,124,86,2,NULL),(1597,30,4,2,NULL),(1598,124,87,2,NULL),(1599,124,89,2,NULL),(1600,23,12,2,NULL),(1601,124,90,2,NULL),(1602,124,91,2,NULL),(1603,27,12,2,NULL),(1604,124,92,2,NULL),(1605,124,93,2,NULL),(1606,124,94,2,NULL),(1607,30,12,2,NULL),(1608,124,95,2,NULL),(1609,124,96,2,NULL),(1610,23,14,2,NULL),(1611,124,97,2,NULL),(1612,27,14,2,NULL),(1613,124,99,2,NULL),(1614,124,101,2,NULL),(1615,30,14,2,NULL),(1616,23,86,2,NULL),(1617,27,86,2,NULL),(1618,23,26,2,NULL),(1619,30,86,2,NULL),(1620,1,86,2,NULL),(1621,27,26,2,NULL),(1622,2,86,2,NULL),(1623,4,86,2,NULL),(1624,30,26,2,NULL),(1625,6,86,2,NULL),(1626,8,86,2,NULL),(1627,23,18,2,NULL),(1628,11,86,2,NULL),(1629,13,86,2,NULL),(1630,27,18,2,NULL),(1631,16,86,2,NULL),(1632,19,86,2,NULL),(1633,30,18,2,NULL),(1634,17,86,2,NULL),(1635,18,86,2,NULL),(1636,20,86,2,NULL),(1637,23,24,2,NULL),(1638,82,86,2,NULL),(1639,27,24,2,NULL),(1640,81,10,2,NULL),(1641,81,42,2,NULL),(1642,30,24,2,NULL),(1643,81,46,2,NULL),(1644,81,65,2,NULL),(1645,81,84,2,NULL),(1646,23,30,2,NULL),(1647,23,87,2,NULL),(1648,27,30,2,NULL),(1649,27,87,2,NULL),(1650,30,87,2,NULL),(1651,30,30,2,NULL),(1652,1,87,2,NULL),(1653,2,87,2,NULL),(1654,23,47,2,NULL),(1655,4,87,2,NULL),(1656,6,87,2,NULL),(1657,27,47,2,NULL),(1658,8,87,2,NULL),(1659,11,87,2,NULL),(1660,30,47,2,NULL),(1661,13,87,2,NULL),(1662,16,87,2,NULL),(1663,23,29,2,NULL),(1664,19,87,2,NULL),(1665,17,87,2,NULL),(1666,27,29,2,NULL),(1667,18,87,2,NULL),(1668,20,87,2,NULL),(1669,30,29,2,NULL),(1670,82,87,2,NULL),(1671,23,44,2,NULL),(1672,23,89,2,NULL),(1673,27,44,2,NULL),(1674,27,89,2,NULL),(1675,30,89,2,NULL),(1676,30,44,2,NULL),(1677,1,89,2,NULL),(1678,2,89,2,NULL),(1679,4,89,2,NULL),(1680,6,89,2,NULL),(1681,8,89,2,NULL),(1682,11,89,2,NULL),(1683,23,90,2,NULL),(1684,13,89,2,NULL),(1685,27,90,2,NULL),(1686,16,89,2,NULL),(1687,19,89,2,NULL),(1688,30,90,2,NULL),(1689,17,89,2,NULL),(1690,18,89,2,NULL),(1691,23,91,2,NULL),(1692,20,89,2,NULL),(1693,82,89,2,NULL),(1694,27,91,2,NULL),(1695,1,90,2,NULL),(1696,30,91,2,NULL),(1697,2,90,2,NULL),(1698,4,90,2,NULL),(1699,6,90,2,NULL),(1700,23,92,2,NULL),(1701,8,90,2,NULL),(1702,11,90,2,NULL),(1703,27,92,2,NULL),(1704,13,90,2,NULL),(1705,16,90,2,NULL),(1706,30,92,2,NULL),(1707,19,90,2,NULL),(1708,23,93,2,NULL),(1709,17,90,2,NULL),(1710,18,90,2,NULL),(1711,27,93,2,NULL),(1712,20,90,2,NULL),(1713,82,90,2,NULL),(1714,30,93,2,NULL),(1715,1,91,2,NULL),(1716,23,94,2,NULL),(1717,2,91,2,NULL),(1718,4,91,2,NULL),(1719,27,94,2,NULL),(1720,6,91,2,NULL),(1721,8,91,2,NULL),(1722,30,94,2,NULL),(1723,11,91,2,NULL),(1724,13,91,2,NULL),(1725,23,95,2,NULL),(1726,16,91,2,NULL),(1727,19,91,2,NULL),(1728,27,95,2,NULL),(1729,17,91,2,NULL),(1730,18,91,2,NULL),(1731,30,95,2,NULL),(1732,20,91,2,NULL),(1733,82,91,2,NULL),(1734,23,96,2,NULL),(1735,1,92,2,NULL),(1736,27,96,2,NULL),(1737,2,92,2,NULL),(1738,4,92,2,NULL),(1739,30,96,2,NULL),(1740,6,92,2,NULL),(1741,8,92,2,NULL),(1742,23,97,2,NULL),(1743,11,92,2,NULL),(1744,13,92,2,NULL),(1745,27,97,2,NULL),(1746,16,92,2,NULL),(1747,19,92,2,NULL),(1748,30,97,2,NULL),(1749,17,92,2,NULL),(1750,18,92,2,NULL),(1751,23,99,2,NULL),(1752,20,92,2,NULL),(1753,82,92,2,NULL),(1754,27,99,2,NULL),(1755,1,93,2,NULL),(1756,30,99,2,NULL),(1757,2,93,2,NULL),(1758,4,93,2,NULL),(1759,23,101,2,NULL),(1760,6,93,2,NULL),(1761,8,93,2,NULL),(1762,27,101,2,NULL),(1763,11,93,2,NULL),(1764,13,93,2,NULL),(1765,30,101,2,NULL),(1766,16,93,2,NULL),(1767,19,93,2,NULL),(1768,17,93,2,NULL),(1769,1,13,2,NULL),(1770,18,93,2,NULL),(1771,2,13,2,NULL),(1772,20,93,2,NULL),(1773,82,93,2,NULL),(1774,4,13,2,NULL),(1775,1,94,2,NULL),(1776,6,13,2,NULL),(1777,2,94,2,NULL),(1778,4,94,2,NULL),(1779,4,94,2,NULL),(1780,8,13,2,NULL),(1781,6,94,2,NULL),(1782,11,13,2,NULL),(1783,8,94,2,NULL),(1784,11,94,2,NULL),(1785,13,13,2,NULL),(1786,13,94,2,NULL),(1787,16,94,2,NULL),(1788,16,13,2,NULL),(1789,19,94,2,NULL),(1790,19,94,2,NULL),(1791,19,13,2,NULL),(1792,17,94,2,NULL),(1793,17,94,2,NULL),(1794,1,4,2,NULL),(1795,18,94,2,NULL),(1796,2,4,2,NULL),(1797,20,94,2,NULL),(1798,82,94,2,NULL),(1799,4,4,2,NULL),(1800,1,95,2,NULL),(1801,2,95,2,NULL),(1802,6,4,2,NULL),(1803,4,95,2,NULL),(1804,8,4,2,NULL),(1805,6,95,2,NULL),(1806,8,95,2,NULL),(1807,11,4,2,NULL),(1808,11,95,2,NULL),(1809,13,95,2,NULL),(1810,13,4,2,NULL),(1811,16,95,2,NULL),(1812,19,95,2,NULL),(1813,16,4,2,NULL),(1814,17,95,2,NULL),(1815,18,95,2,NULL),(1816,19,4,2,NULL),(1817,20,95,2,NULL),(1818,82,95,2,NULL),(1819,1,12,2,NULL),(1820,1,96,2,NULL),(1821,2,96,2,NULL),(1822,2,12,2,NULL),(1823,4,96,2,NULL),(1824,4,96,2,NULL),(1825,4,12,2,NULL),(1826,6,96,2,NULL),(1827,6,96,2,NULL),(1828,6,12,2,NULL),(1829,8,96,2,NULL),(1830,8,96,2,NULL),(1831,8,12,2,NULL),(1832,11,96,2,NULL),(1833,11,96,2,NULL),(1834,11,12,2,NULL),(1835,13,96,2,NULL),(1836,13,96,2,NULL),(1837,13,12,2,NULL),(1838,16,96,2,NULL),(1839,16,96,2,NULL),(1840,16,12,2,NULL),(1841,19,96,2,NULL),(1842,19,96,2,NULL),(1843,19,12,2,NULL),(1844,17,96,2,NULL),(1845,17,96,2,NULL),(1846,1,14,2,NULL),(1847,18,96,2,NULL),(1848,18,96,2,NULL),(1849,2,14,2,NULL),(1850,20,96,2,NULL),(1851,20,96,2,NULL),(1852,4,14,2,NULL),(1853,82,96,2,NULL),(1854,82,96,2,NULL),(1855,6,14,2,NULL),(1856,8,14,2,NULL),(1857,1,97,2,NULL),(1858,1,97,2,NULL),(1859,11,14,2,NULL),(1860,2,97,2,NULL),(1861,2,97,2,NULL),(1862,13,14,2,NULL),(1863,4,97,2,NULL),(1864,4,97,2,NULL),(1865,16,14,2,NULL),(1866,6,97,2,NULL),(1867,6,97,2,NULL),(1868,19,14,2,NULL),(1869,8,97,2,NULL),(1870,8,97,2,NULL),(1871,1,26,2,NULL),(1872,11,97,2,NULL),(1873,11,97,2,NULL),(1874,2,26,2,NULL),(1875,13,97,2,NULL),(1876,13,97,2,NULL),(1877,4,26,2,NULL),(1878,16,97,2,NULL),(1879,16,97,2,NULL),(1880,6,26,2,NULL),(1881,19,97,2,NULL),(1882,19,97,2,NULL),(1883,8,26,2,NULL),(1884,17,97,2,NULL),(1885,17,97,2,NULL),(1886,11,26,2,NULL),(1887,18,97,2,NULL),(1888,18,97,2,NULL),(1889,13,26,2,NULL),(1890,20,97,2,NULL),(1891,20,97,2,NULL),(1892,16,26,2,NULL),(1893,82,97,2,NULL),(1894,82,97,2,NULL),(1895,19,26,2,NULL),(1896,1,18,2,NULL),(1897,1,99,2,NULL),(1898,1,99,2,NULL),(1899,2,18,2,NULL),(1900,2,99,2,NULL),(1901,2,99,2,NULL),(1902,4,18,2,NULL),(1903,4,99,2,NULL),(1904,4,99,2,NULL),(1905,6,18,2,NULL),(1906,6,99,2,NULL),(1907,6,99,2,NULL),(1908,8,18,2,NULL),(1909,8,99,2,NULL),(1910,8,99,2,NULL),(1911,11,18,2,NULL),(1912,11,99,2,NULL),(1913,11,99,2,NULL),(1914,13,18,2,NULL),(1915,13,99,2,NULL),(1916,13,99,2,NULL),(1917,16,18,2,NULL),(1918,16,99,2,NULL),(1919,16,99,2,NULL),(1920,19,18,2,NULL),(1921,19,99,2,NULL),(1922,19,99,2,NULL),(1923,1,24,2,NULL),(1924,17,99,2,NULL),(1925,17,99,2,NULL),(1926,2,24,2,NULL),(1927,18,99,2,NULL),(1928,18,99,2,NULL),(1929,4,24,2,NULL),(1930,20,99,2,NULL),(1931,20,99,2,NULL),(1932,6,24,2,NULL),(1933,82,99,2,NULL),(1934,82,99,2,NULL),(1935,8,24,2,NULL),(1936,11,24,2,NULL),(1937,1,101,2,NULL),(1938,1,101,2,NULL),(1939,13,24,2,NULL),(1940,2,101,2,NULL),(1941,2,101,2,NULL),(1942,16,24,2,NULL),(1943,4,101,2,NULL),(1944,4,101,2,NULL),(1945,19,24,2,NULL),(1946,6,101,2,NULL),(1947,6,101,2,NULL),(1948,1,30,2,NULL),(1949,8,101,2,NULL),(1950,8,101,2,NULL),(1951,2,30,2,NULL),(1952,11,101,2,NULL),(1953,11,101,2,NULL),(1954,4,30,2,NULL),(1955,13,101,2,NULL),(1956,13,101,2,NULL),(1957,6,30,2,NULL),(1958,16,101,2,NULL),(1959,16,101,2,NULL),(1960,8,30,2,NULL),(1961,19,101,2,NULL),(1962,19,101,2,NULL),(1963,11,30,2,NULL),(1964,17,101,2,NULL),(1965,17,101,2,NULL),(1966,13,30,2,NULL),(1967,18,101,2,NULL),(1968,18,101,2,NULL),(1969,16,30,2,NULL),(1970,20,101,2,NULL),(1971,20,101,2,NULL),(1972,19,30,2,NULL),(1973,82,101,2,NULL),(1974,82,101,2,NULL),(1975,1,47,2,NULL),(1976,2,47,2,NULL),(1977,4,47,2,NULL),(1978,6,47,2,NULL),(1979,8,47,2,NULL),(1980,11,47,2,NULL),(1981,13,47,2,NULL),(1982,16,47,2,NULL),(1983,19,47,2,NULL),(1984,1,29,2,NULL),(1985,2,29,2,NULL),(1986,4,29,2,NULL),(1987,6,29,2,NULL),(1988,8,29,2,NULL),(1989,11,29,2,NULL),(1990,13,29,2,NULL),(1991,16,29,2,NULL),(1992,19,29,2,NULL),(1993,1,44,2,NULL),(1994,2,44,2,NULL),(1995,4,44,2,NULL),(1996,6,44,2,NULL),(1997,8,44,2,NULL),(1998,11,44,2,NULL),(1999,13,44,2,NULL),(2000,16,44,2,NULL),(2001,19,44,2,NULL),(2002,17,13,2,NULL),(2003,18,13,2,NULL),(2004,20,13,2,NULL),(2005,82,13,2,NULL),(2006,17,4,2,NULL),(2007,18,4,2,NULL),(2008,20,4,2,NULL),(2009,82,4,2,NULL),(2010,17,12,2,NULL),(2011,18,12,2,NULL),(2012,20,12,2,NULL),(2013,17,14,2,NULL),(2014,18,14,2,NULL),(2015,20,14,2,NULL),(2016,17,26,2,NULL),(2017,18,26,2,NULL),(2018,20,26,2,NULL),(2019,17,18,2,NULL),(2020,18,18,2,NULL),(2021,20,18,2,NULL),(2022,17,24,2,NULL),(2023,18,24,2,NULL),(2024,20,24,2,NULL),(2025,17,30,2,NULL),(2026,18,30,2,NULL),(2027,20,30,2,NULL),(2028,17,47,2,NULL),(2029,18,47,2,NULL),(2030,20,47,2,NULL),(2031,17,29,2,NULL),(2032,18,29,2,NULL),(2033,20,29,2,NULL),(2034,17,44,2,NULL),(2035,18,44,2,NULL),(2036,20,44,2,NULL),(2037,28,6,2,NULL),(2038,28,40,2,NULL),(2039,28,45,2,NULL),(2040,28,63,2,NULL),(2041,28,83,2,NULL),(2042,31,6,2,NULL),(2043,31,40,2,NULL),(2044,31,45,2,NULL),(2045,31,63,2,NULL),(2046,31,83,2,NULL),(2047,35,6,2,NULL),(2048,35,40,2,NULL),(2049,35,45,2,NULL),(2050,35,63,2,NULL),(2051,35,83,2,NULL),(2052,37,6,2,NULL),(2053,37,40,2,NULL),(2054,37,45,2,NULL),(2055,37,63,2,NULL),(2056,37,83,2,NULL),(2057,7,10,2,NULL),(2058,7,42,2,NULL),(2059,7,46,2,NULL),(2060,7,65,2,NULL),(2061,7,84,2,NULL),(2062,82,12,2,NULL),(2063,82,29,2,NULL),(2064,40,6,2,NULL),(2065,40,40,2,NULL),(2066,72,35,2,NULL),(2067,40,45,2,NULL),(2068,73,22,2,NULL),(2069,40,63,2,NULL),(2070,80,35,2,NULL),(2071,40,83,2,NULL),(2072,91,41,2,NULL),(2073,42,6,2,NULL),(2074,82,18,2,NULL),(2075,42,40,2,NULL),(2076,59,37,2,NULL),(2077,42,45,2,NULL),(2078,70,18,2,NULL),(2079,42,63,2,NULL),(2080,86,24,2,NULL),(2081,42,83,2,NULL),(2082,88,24,2,NULL),(2083,55,6,2,NULL),(2084,89,18,2,NULL),(2085,55,40,2,NULL),(2086,82,24,2,NULL),(2087,55,45,2,NULL),(2088,71,30,2,NULL),(2089,55,63,2,NULL),(2090,84,32,2,NULL),(2091,55,83,2,NULL),(2092,82,30,2,NULL),(2093,56,6,2,NULL),(2094,65,39,2,NULL),(2095,56,40,2,NULL),(2096,82,14,2,NULL),(2097,56,45,2,NULL),(2098,82,26,2,NULL),(2099,56,63,2,NULL),(2100,82,47,2,NULL),(2101,56,83,2,NULL),(2102,82,44,2,NULL),(2103,57,10,2,NULL),(2104,57,42,2,NULL),(2105,95,41,2,NULL),(2106,57,46,2,NULL),(2107,62,6,2,NULL),(2108,57,65,2,NULL),(2109,62,40,2,NULL),(2110,57,84,2,NULL),(2111,62,45,2,NULL),(2112,62,63,2,NULL),(2113,62,83,2,NULL),(2114,63,6,2,NULL),(2115,63,40,2,NULL),(2116,63,45,2,NULL),(2117,63,63,2,NULL),(2118,63,83,2,NULL),(2119,92,6,2,NULL),(2120,92,40,2,NULL),(2121,92,45,2,NULL),(2122,92,63,2,NULL),(2123,92,83,2,NULL),(2124,93,6,2,NULL),(2125,93,40,2,NULL),(2126,93,45,2,NULL),(2127,93,63,2,NULL),(2128,93,83,2,NULL),(2129,64,10,2,NULL),(2130,64,42,2,NULL),(2131,64,46,2,NULL),(2132,64,65,2,NULL),(2133,64,84,2,NULL),(2134,25,25,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.vipbasketball.ScoreClient');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(4,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.ACCESS_WIMAX_STATE'),(29,'android.permission.BLUETOOTH'),(33,'android.permission.BLUETOOTH_ADMIN'),(20,'android.permission.CAMERA'),(10,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CHANGE_WIMAX_STATE'),(21,'android.permission.FLASHLIGHT'),(14,'android.permission.GET_ACCOUNTS'),(18,'android.permission.GET_TASKS'),(24,'android.permission.HARDWARE_TEST'),(12,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(27,'android.permission.MODIFY_PHONE_STATE'),(15,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(32,'android.permission.READ_SECURE_SETTINGS'),(16,'android.permission.READ_SMS'),(30,'android.permission.READ_SYNC_SETTINGS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(23,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'android.permission.WRITE_SECURE_SETTINGS'),(28,'android.permission.WRITE_SETTINGS'),(13,'android.permission.WRITE_SMS'),(26,'android.permission.WRITE_SYNC_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,28,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://code.google.com/p/opensudoku-android/wiki/Puzzles',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(30,NULL,NULL,'content://sync/settings',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,29,5),(2,45,8),(3,49,10),(4,74,15),(5,75,16),(6,76,17),(7,78,18),(8,80,19),(9,85,20),(10,91,22),(11,101,25),(12,108,26),(13,109,27),(14,112,28),(15,113,29),(16,114,30),(17,115,31),(18,122,33),(19,123,34),(20,130,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,5),(13,2,8),(14,2,9),(15,2,10),(16,3,3),(17,3,6),(18,3,9),(19,3,11),(20,4,1),(21,4,2),(22,4,3),(23,4,5),(24,4,8),(25,4,9),(26,4,10),(27,5,1),(28,5,2),(29,5,3),(30,5,5),(31,5,7),(32,5,8),(33,5,9),(34,5,10),(35,5,12),(36,5,13),(37,5,14),(38,5,15),(39,5,16),(40,6,1),(41,6,2),(42,6,3),(43,6,4),(44,6,5),(45,6,6),(46,6,7),(47,6,8),(48,6,9),(49,6,10),(50,6,11),(51,6,14),(52,6,17),(53,6,19),(54,6,18),(55,6,21),(56,6,20),(57,6,23),(58,6,22),(59,6,25),(60,6,24),(61,6,27),(62,6,26),(63,6,29),(64,6,28),(65,6,31),(66,6,30),(67,6,32),(68,6,33),(69,7,1),(70,7,2),(71,7,3),(72,7,4),(73,7,5),(74,7,6),(75,7,7),(76,7,8),(77,7,9),(78,7,10),(79,7,11),(80,7,12),(81,7,13),(82,7,14),(83,7,17),(84,7,16),(85,7,19),(86,7,18),(87,7,21),(88,7,20),(89,7,23),(90,7,22),(91,7,25),(92,7,24),(93,7,27),(94,7,26),(95,7,29),(96,7,28),(97,7,31),(98,7,30),(99,7,32),(100,7,33);
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

-- Dump completed on 2015-10-12  3:29:27
