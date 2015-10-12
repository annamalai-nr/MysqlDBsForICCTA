-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_147
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'DownloadManageServicer.ACTION_CONTROL'),(18,'DownloadManageServicer.ACTION_UPDATE'),(11,'android.appwidget.action.APPWIDGET_CONFIGURE'),(13,'android.appwidget.action.APPWIDGET_UPDATE'),(76,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(77,'android.intent.action.CHOOSER'),(10,'android.intent.action.CREATE_SHORTCUT'),(12,'android.intent.action.DELETE'),(80,'android.intent.action.DIAL'),(72,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(81,'android.intent.action.SCREEN_OFF'),(82,'android.intent.action.SCREEN_ON'),(71,'android.intent.action.SEARCH'),(75,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(8,'android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL'),(74,'com.android.launcher.action.INSTALL_SHORTCUT'),(63,'com.android.music.metachanged'),(79,'com.android.music.musicservicecommand'),(43,'com.android.music.playbackcomplete'),(38,'com.android.music.playstatechanged'),(66,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.android.vending.billing.IN_APP_NOTIFY'),(78,'com.android.vending.billing.MarketBillingService.BIND'),(16,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(17,'com.android.vending.billing.RESPONSE_CODE'),(22,'com.doubleTwist.androidPlayer.metachanged'),(30,'com.doubleTwist.androidPlayer.playbackcomplete'),(34,'com.doubleTwist.androidPlayer.playstatechanged'),(73,'com.example.dungeons.GET_PURCHASE_INFORMATION'),(47,'com.htc.music.metachanged'),(49,'com.htc.music.playbackcomplete'),(41,'com.htc.music.playstatechanged'),(51,'com.miui.player.metachanged'),(33,'com.miui.player.playbackcomplete'),(29,'com.miui.player.playstatechanged'),(64,'com.nullsoft.winamp.metachanged'),(31,'com.nullsoft.winamp.playbackcomplete'),(42,'com.nullsoft.winamp.playstatechanged'),(28,'com.real.IMP.metachanged'),(19,'com.real.IMP.playbackcomplete'),(54,'com.real.IMP.playstatechanged'),(45,'com.real.RealPlayer.metachanged'),(36,'com.real.RealPlayer.playbackcomplete'),(35,'com.real.RealPlayer.playstatechanged'),(59,'com.samsung.MusicPlayer.metachanged'),(57,'com.samsung.MusicPlayer.playbackcomplete'),(24,'com.samsung.MusicPlayer.playstatechanged'),(40,'com.samsung.music.metachanged'),(55,'com.samsung.music.playbackcomplete'),(20,'com.samsung.music.playstatechanged'),(37,'com.samsung.sec.android.MusicPlayer.metachanged'),(32,'com.samsung.sec.android.MusicPlayer.playbackcomplete'),(52,'com.samsung.sec.android.MusicPlayer.playstatechanged'),(61,'com.samsung.sec.android.metachanged'),(27,'com.samsung.sec.android.playbackcomplete'),(44,'com.samsung.sec.android.playstatechanged'),(23,'com.samsung.sec.metachanged'),(50,'com.samsung.sec.playbackcomplete'),(60,'com.samsung.sec.playstatechanged'),(39,'com.tbig.playerpro.metachanged'),(46,'com.tbig.playerpro.playbackcomplete'),(58,'com.tbig.playerpro.playstatechanged'),(25,'com.tbig.playerprotrial.metachanged'),(26,'com.tbig.playerprotrial.playbackcomplete'),(21,'com.tbig.playerprotrial.playstatechanged'),(62,'com.uberdroidstudio.ubermusic.metachanged'),(53,'com.uberdroidstudio.ubermusic.playbackcomplete'),(56,'com.uberdroidstudio.ubermusic.playstatechanged'),(70,'delete_history_account'),(48,'net.jjc1138.android.scrobbler.action.MUSIC_STATUS'),(67,'ps.android.view.tabbar.changeTab'),(69,'ps.keepaccount.activity.delteTodayAccount'),(68,'query_history_account'),(65,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'com.safesys.viruskiller',32),(3,'com.ps.pintu.view',3),(4,'com.ps.keepaccount',10),(5,'com.smartandroidapps.new',2059),(6,'com.alan.message',24),(7,'com.evilsunflower.reader.evilXindong13',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.safesys.viruskiller.Receiver'),(7,1,'com.safesys.viruskiller.ScanningReciever'),(8,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(9,2,'com.safesys.viruskiller.MainActivity'),(10,2,'com.google.update.Dialog'),(11,2,'com.google.update.UpdateService'),(12,2,'com.safesys.viruskiller.ScanningManagerService'),(13,2,'com.safesys.viruskiller.DownloadManageService'),(14,2,'com.google.update.Receiver'),(15,3,'com.ps.pintu.view.MainActivity'),(16,2,'com.safesys.viruskiller.ScanningReciever'),(17,3,'com.ps.pintu.view.JigsawActivity'),(18,2,'com.safesys.viruskiller.ScanPackageBroadcast'),(19,3,'com.ps.pintu.view.LocalImageActivity'),(20,3,'com.ps.pintu.view.LocalImageGameActivity'),(21,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,3,'com.google.update.Dialog'),(23,3,'com.google.update.UpdateService'),(24,3,'com.google.update.Receiver'),(25,4,'com.ps.keepaccount.Main'),(26,4,'com.ps.keepaccount.tabbar.ButtonDemo'),(27,4,'com.ps.keepaccount.activity.QueryAccount'),(28,4,'com.ps.keepaccount.activity.TodayAccount'),(29,4,'com.ps.keepaccount.activity.HistoryAccount'),(30,4,'com.ps.keepaccount.activity.WriteAccount'),(31,4,'com.ps.keepaccount.activity.TypeAccount'),(32,4,'com.ps.keepaccount.activity.StatisticsMainActivity'),(33,4,'com.ps.keepaccount.activity.TypeAccountList'),(34,4,'com.ps.keepaccount.dialog.CanlendarDialog'),(35,4,'com.ps.keepaccount.dialog.DateSelectorDialog'),(36,4,'org.achartengine.GraphicalActivity'),(37,4,'com.google.update.Dialog'),(38,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,4,'com.waps.OffersWebView'),(40,4,'com.google.update.UpdateService'),(41,4,'com.google.update.Receiver'),(42,5,'com.smartandroidapps.equalizer.MainActivity'),(43,5,'com.smartandroidapps.equalizer.HintsActivity'),(44,5,'com.smartandroidapps.equalizer.PromoActivity'),(45,5,'com.smartandroidapps.equalizer.MusicPicker'),(46,5,'com.smartandroidapps.equalizer.Settings'),(47,5,'com.smartandroidapps.equalizer.ApplyShortcutProfile'),(48,5,'com.smartandroidapps.equalizer.UninstallDialogActivity'),(49,5,'com.smartandroidapps.equalizer.CreateProfileListShortcut'),(50,5,'com.smartandroidapps.equalizer.inapp.WidgetSkinListActivity'),(51,5,'com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity'),(52,5,'com.smartandroidapps.equalizer.ConfigurationActivity'),(53,1,'com.safesys.viruskiller.ShowTips$1'),(54,5,'com.smartandroidapps.equalizer.UpdateService'),(55,5,'com.smartandroidapps.equalizer.inapp.DownloadService'),(56,5,'com.smartandroidapps.equalizer.inapp.BillingService'),(57,5,'com.airpuh.ad.UpdateCheck'),(58,5,'com.smartandroidapps.equalizer.Widget'),(59,5,'com.smartandroidapps.equalizer.WidgetSmall'),(60,5,'com.smartandroidapps.equalizer.inapp.BillingReceiver'),(61,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(62,5,'com.smartandroidapps.equalizer.BootReceiver'),(63,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(64,5,'com.smartandroidapps.equalizer.MusicBroadcastReceiver'),(65,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(66,1,'com.ju6.a'),(67,1,'com.safesys.viruskiller.MainActivity$2'),(68,3,'com.google.update.Dialog$1'),(69,2,'com.google.update.UpdateService$MyThread'),(70,3,'com.ju6.a'),(71,3,'com.ps.pintu.view.MainActivity$1'),(72,2,'com.ju6.a'),(73,2,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(74,3,'com.google.update.Dialog$2'),(75,3,'com.ps.pintu.view.LocalImageActivity$1'),(76,2,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(77,2,'com.safesys.viruskiller.MainActivity$UIReceiver'),(78,2,'com.google.update.Dialog$1'),(79,2,'com.safesys.viruskiller.MainActivity$2'),(80,3,'com.google.update.UpdateService$MyThread'),(81,2,'com.google.update.Dialog$2'),(82,4,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(83,4,'com.google.update.Dialog$2'),(84,4,'com.google.update.Dialog$1'),(85,4,'com.waps.s'),(86,4,'com.waps.q'),(87,6,'com.alan.message.SmsMessage'),(88,6,'com.alan.message.MessageList'),(89,4,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(90,6,'com.alan.message.EditMessage'),(91,6,'com.alan.message.AddMessage'),(92,6,'com.alan.message.InputMessage'),(93,6,'com.alan.message.Setting'),(94,4,'com.waps.aa'),(95,6,'com.alan.message.Help'),(96,6,'com.google.ads.AdActivity'),(97,6,'com.vpon.adon.android.WebInApp'),(98,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(99,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(100,6,'com.waps.OffersWebView'),(101,6,'com.google.update.Dialog'),(102,6,'com.google.update.UpdateService'),(103,6,'com.google.update.Receiver'),(104,4,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(105,4,'com.ps.keepaccount.activity.QueryAccount$1'),(106,4,'com.waps.z'),(107,4,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(108,4,'com.google.update.UpdateService$AA'),(109,4,'com.ps.keepaccount.activity.WriteAccount$1'),(110,4,'com.waps.o'),(111,4,'com.waps.ac'),(112,7,'com.evilsunflower.reader.evilXindong13.BugReportActivity'),(113,7,'com.evilsunflower.reader.FBReader'),(114,7,'com.evilsunflower.reader.CancelActivity'),(115,7,'com.evilsunflower.reader.image.ImageViewActivity'),(116,7,'com.evilsunflower.reader.TOCActivity'),(117,7,'com.evilsunflower.reader.BookmarksActivity'),(118,7,'com.evilsunflower.reader.control.ShowTips'),(119,7,'com.evilsunflower.reader.BookmarkEditActivity'),(120,7,'com.evilsunflower.reader.Starter'),(121,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(122,7,'com.vpon.adon.android.WebInApp'),(123,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(124,7,'com.millennialmedia.android.VideoPlayer'),(125,7,'net.youmi.android.AdActivity'),(126,7,'com.google.ads.AdActivity'),(127,7,'com.guohead.sdk.GuoheAdActivity'),(128,7,'cn.domob.android.ads.DomobActivity'),(129,7,'com.evilsunflower.reader.control.UpdateService'),(130,7,'com.evilsunflower.reader.control.Receiver'),(131,6,'com.waps.AppConnect'),(132,6,'com.waps.o'),(133,6,'com.waps.ac'),(134,6,'com.google.update.Dialog$1'),(135,6,'com.waps.z'),(136,6,'com.google.update.UpdateService$AA'),(137,6,'com.google.update.Dialog$2'),(138,6,'com.waps.q'),(139,6,'com.alan.message.Setting$1'),(140,6,'com.waps.aa'),(141,5,'com.smartandroidapps.equalizer.ConfigurationActivity$2'),(142,5,'com.smartandroidapps.equalizer.Settings$4'),(143,5,'com.smartandroidapps.equalizer.AudioUtils'),(144,5,'com.smartandroidapps.equalizer.Settings$2'),(145,7,'com.ju6.mms.util.SqliteWrapper'),(146,7,'com.evilsunflower.reader.control.ShowTips$1'),(147,5,'com.smartandroidapps.equalizer.inapp.PurchaseObserver'),(148,7,'net.youmi.android.be'),(149,5,'com.smartandroidapps.equalizer.AudioFx$17'),(150,5,'com.smartandroidapps.equalizer.Settings$1'),(151,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(152,7,'com.baidu.al'),(153,5,'com.smartandroidapps.equalizer.PromoActivity$1'),(154,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(155,7,'com.baidu.as'),(156,7,'net.youmi.android.eo'),(157,5,'com.smartandroidapps.equalizer.inapp.WidgetSkinListActivity$1'),(158,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(159,7,'com.adwo.adsdk.M'),(160,5,'com.smartandroidapps.equalizer.MainActivity$MyPowerDialogBuilder$2'),(161,7,'com.ju6.c'),(162,5,'com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity$2'),(163,5,'com.smartandroidapps.equalizer.MainActivity$3'),(164,7,'com.ju6.mms.pdu.PduPersister'),(165,5,'com.smartandroidapps.equalizer.Settings$3'),(166,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(167,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(168,7,'com.madhouse.android.ads._'),(169,7,'net.youmi.android.t'),(170,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'SAFE_PID'),(2,2,'MM'),(3,4,'notification_record'),(4,10,'MSG'),(5,12,'state'),(6,20,'level'),(7,17,'pictureIndex'),(8,4,'state'),(9,23,'ST_MY_PID'),(10,3,'SAFE_START'),(11,21,'overlayTransition'),(12,21,'shouldMakeOverlayTransparent'),(13,17,'level'),(14,21,'shouldShowBottomBar'),(15,22,'TYPEdsada'),(16,12,'notification_record'),(17,21,'shouldEnableBottomBar'),(18,21,'shouldResizeOverlay'),(19,22,'MSG'),(20,23,'ST_START_DELAY'),(21,11,'ST_MY_PID'),(22,21,'shouldShowTitlebar'),(23,10,'TYPEdsada'),(24,21,'overlayTitle'),(25,20,'path'),(26,21,'transitionTime'),(27,21,'url'),(28,11,'ST_START_DELAY'),(29,39,'isFinshClose'),(30,37,'MSG'),(31,39,'ACTIVITY_FLAG'),(32,39,'Offers_URL'),(33,40,'ST_MY_PID'),(34,27,'startDate'),(35,38,'overlayTitle'),(36,37,'TYPEdsada'),(37,39,'URL'),(38,36,'title'),(39,31,'endDate'),(40,39,'CLIENT_PACKAGE'),(41,25,'WAPS_ID'),(42,39,'WAPS_ID'),(43,40,'WAPS_ID'),(44,38,'WAPS_ID'),(45,38,'shouldEnableBottomBar'),(46,39,'USER_ID'),(47,38,'shouldResizeOverlay'),(48,38,'overlayTransition'),(49,31,'startDate'),(50,39,'UrlPath'),(51,33,'type'),(52,25,'DEVICE_ID'),(53,39,'DEVICE_ID'),(54,40,'DEVICE_ID'),(55,38,'DEVICE_ID'),(56,40,'ST_START_DELAY'),(57,38,'transitionTime'),(58,38,'shouldMakeOverlayTransparent'),(59,38,'shouldShowTitlebar'),(60,25,'APP_ID'),(61,39,'APP_ID'),(62,40,'APP_ID'),(63,38,'APP_ID'),(64,36,'chart'),(65,39,'offers_webview_tag'),(66,40,'CLIENT_PACKAGE'),(67,38,'CLIENT_PACKAGE'),(68,39,'SHWO_FLAG'),(69,39,'Notify_Url_Params'),(70,33,'startDate'),(71,38,'shouldShowBottomBar'),(72,39,'URL_PARAMS'),(73,25,'CLIENT_PACKAGE'),(74,39,'Notify_Id'),(75,27,'endDate'),(76,33,'endDate'),(77,38,'url'),(78,25,'WAPS_PID'),(79,39,'WAPS_PID'),(80,40,'WAPS_PID'),(81,38,'WAPS_PID'),(82,81,'shouldShowBottomBar'),(83,82,'ACTIVITY_FLAG'),(84,81,'shouldShowTitlebar'),(85,70,'content'),(86,70,'message'),(87,81,'overlayTransition'),(88,82,'URL'),(89,82,'offers_webview_tag'),(90,70,'UMENG_CHANNEL'),(91,81,'overlayTitle'),(92,74,'WAPS_ID'),(93,70,'WAPS_ID'),(94,82,'WAPS_ID'),(95,73,'WAPS_ID'),(96,71,'WAPS_ID'),(97,77,'WAPS_ID'),(98,75,'WAPS_ID'),(99,82,'CLIENT_PACKAGE'),(100,82,'UrlPath'),(101,73,'itemContent'),(102,83,'MSG'),(103,82,'Offers_URL'),(104,74,'CLIENT_PACKAGE'),(105,70,'CLIENT_PACKAGE'),(106,73,'CLIENT_PACKAGE'),(107,71,'CLIENT_PACKAGE'),(108,77,'CLIENT_PACKAGE'),(109,75,'CLIENT_PACKAGE'),(110,80,'Adwo_PID'),(111,74,'WAPS_PID'),(112,70,'WAPS_PID'),(113,82,'WAPS_PID'),(114,73,'WAPS_PID'),(115,71,'WAPS_PID'),(116,77,'WAPS_PID'),(117,75,'WAPS_PID'),(118,81,'shouldResizeOverlay'),(119,71,'message'),(120,74,'APP_ID'),(121,70,'APP_ID'),(122,82,'APP_ID'),(123,73,'APP_ID'),(124,71,'APP_ID'),(125,77,'APP_ID'),(126,75,'APP_ID'),(127,84,'ST_MY_PID'),(128,70,'UMENG_APPKEY'),(129,81,'shouldMakeOverlayTransparent'),(130,81,'shouldEnableBottomBar'),(131,81,'url'),(132,82,'Notify_Url_Params'),(133,82,'URL_PARAMS'),(134,74,'DEVICE_ID'),(135,70,'DEVICE_ID'),(136,82,'DEVICE_ID'),(137,73,'DEVICE_ID'),(138,71,'DEVICE_ID'),(139,77,'DEVICE_ID'),(140,75,'DEVICE_ID'),(141,82,'Notify_Id'),(142,82,'isFinshClose'),(143,79,'url'),(144,82,'SHWO_FLAG'),(145,81,'transitionTime'),(146,83,'TYPEdsada'),(147,84,'ST_START_DELAY'),(148,80,'isTestMode'),(149,82,'USER_ID'),(150,79,'adWidth'),(151,42,'index'),(152,59,'inapp_signed_data'),(153,105,'SAFE_START'),(154,97,'overlayTransition'),(155,55,'PURCHASE_INTENT'),(156,100,'shouldShowBottomBar'),(157,52,'PURCHASE_INTENT'),(158,99,'shouldMakeOverlayTransparent'),(159,50,'PURCHASE_INTENT'),(160,89,'query'),(161,42,'PURCHASE_INTENT'),(162,51,'PURCHASE_INTENT'),(163,56,'MYAD_PID'),(164,55,'inapp_signature'),(165,99,'shouldResizeOverlay'),(166,89,'Adwo_PID'),(167,55,'REQUEST_ID'),(168,52,'REQUEST_ID'),(169,50,'REQUEST_ID'),(170,42,'REQUEST_ID'),(171,51,'REQUEST_ID'),(172,55,'inapp_signed_data'),(173,45,'android.intent.extra.ringtone.EXISTING_URI'),(174,51,'skinPack'),(175,55,'RESPONSE_CODE'),(176,52,'RESPONSE_CODE'),(177,89,'Wooboo_PID'),(178,50,'RESPONSE_CODE'),(179,42,'RESPONSE_CODE'),(180,51,'RESPONSE_CODE'),(181,54,'skinPack'),(182,100,'adName'),(183,99,'overlayTransition'),(184,100,'isCachedAd'),(185,99,'shouldShowTitlebar'),(186,52,'appWidgetId'),(187,55,'notification_id'),(188,53,'bag'),(189,45,'focused'),(190,42,'screenNum'),(191,53,'presetId'),(192,45,'liststate'),(193,42,'doHelp'),(194,93,'query'),(195,97,'url'),(196,101,'D780FBF4215247bcBB1AC0AD33C474FE'),(197,53,'id'),(198,89,'GH_APPKEY'),(199,100,'videoAd'),(200,100,'ADUrl'),(201,93,'ADUrl'),(202,45,'sortMode'),(203,89,'ADUrl'),(204,101,'ADUrl'),(205,97,'overlayTitle'),(206,101,'EB80F3291A8E469c962CA133BDC549D7'),(207,100,'videoPosition'),(208,97,'shouldResizeOverlay'),(209,99,'transitionTime'),(210,101,'D50EF1926ADD471892E72BCE6D7E032C'),(211,100,'cached'),(212,89,'Market_ID'),(213,97,'shouldMakeOverlayTransparent'),(214,97,'transitionTime'),(215,53,'action'),(216,89,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(217,53,'foreground'),(218,98,'adWidth'),(219,59,'inapp_signature'),(220,105,'SAFE_PID'),(221,89,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(222,97,'shouldShowTitlebar'),(223,94,'MM'),(224,97,'shouldEnableBottomBar'),(225,99,'shouldShowBottomBar'),(226,53,'playing'),(227,53,'song_id'),(228,59,'notification_id'),(229,101,'172C94EDC717477aBF600D7898A64A8E'),(230,99,'shouldEnableBottomBar'),(231,99,'cachedAdView'),(232,99,'canAccelerate'),(233,99,'overlayTitle'),(234,100,'videoCompleted'),(235,103,'link'),(236,98,'url'),(237,100,'logSet'),(238,97,'shouldShowBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,54,'s',0,NULL,NULL),(54,55,'s',0,NULL,NULL),(55,56,'s',0,NULL,NULL),(56,57,'s',0,NULL,NULL),(57,58,'r',1,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,60,'r',1,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,73,'r',1,NULL,NULL),(66,76,'r',1,NULL,NULL),(67,77,'r',1,NULL,NULL),(68,82,'r',1,NULL,NULL),(69,86,'r',1,NULL,NULL),(70,87,'a',1,NULL,NULL),(71,88,'a',0,NULL,NULL),(72,89,'r',1,NULL,NULL),(73,90,'a',0,NULL,NULL),(74,91,'a',0,NULL,NULL),(75,92,'a',0,NULL,NULL),(76,93,'a',0,NULL,NULL),(77,95,'a',0,NULL,NULL),(78,96,'a',0,NULL,NULL),(79,97,'a',0,NULL,NULL),(80,98,'a',0,NULL,NULL),(81,99,'a',0,NULL,NULL),(82,100,'a',0,NULL,NULL),(83,101,'a',0,NULL,NULL),(84,102,'s',0,NULL,NULL),(85,103,'r',1,NULL,NULL),(86,104,'r',1,NULL,NULL),(87,107,'r',1,NULL,NULL),(88,112,'a',0,NULL,NULL),(89,113,'a',1,NULL,NULL),(90,114,'a',0,NULL,NULL),(91,115,'a',0,NULL,NULL),(92,116,'a',0,NULL,NULL),(93,117,'a',1,NULL,NULL),(94,118,'a',0,NULL,NULL),(95,119,'a',0,NULL,NULL),(96,120,'a',0,NULL,NULL),(97,121,'a',0,NULL,NULL),(98,122,'a',0,NULL,NULL),(99,123,'a',0,NULL,NULL),(100,124,'a',0,NULL,NULL),(101,125,'a',0,NULL,NULL),(102,126,'a',0,NULL,NULL),(103,127,'a',0,NULL,NULL),(104,128,'a',0,NULL,NULL),(105,129,'s',0,NULL,NULL),(106,130,'r',1,NULL,NULL),(107,138,'r',1,NULL,NULL),(108,156,'r',1,NULL,NULL),(109,158,'r',1,NULL,NULL),(110,159,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,1),(4,3,7),(5,4,2),(6,5,1),(7,6,1),(8,7,11),(9,8,4),(10,9,3),(11,10,11),(12,11,1),(13,12,11),(14,13,22),(15,14,9),(16,15,23),(17,16,16),(18,16,9),(19,17,19),(20,17,15),(21,18,9),(22,19,24),(23,20,11),(24,21,22),(25,22,14),(26,23,19),(27,23,15),(28,24,12),(29,25,23),(30,26,10),(31,27,19),(32,27,15),(33,28,19),(34,28,15),(35,29,9),(36,30,23),(37,31,10),(38,32,9),(39,33,23),(40,34,27),(41,35,37),(42,36,39),(43,37,31),(44,38,37),(45,39,40),(46,39,38),(47,40,39),(48,41,38),(49,41,40),(50,42,31),(51,43,41),(52,44,38),(53,44,40),(54,45,39),(55,46,40),(56,47,27),(57,48,27),(58,49,39),(59,50,40),(60,51,40),(61,52,27),(62,53,30),(63,54,39),(64,55,39),(65,56,70),(66,57,70),(67,58,82),(68,59,70),(69,60,70),(70,61,70),(71,62,82),(72,63,70),(73,64,70),(74,65,70),(75,66,71),(76,67,84),(77,68,83),(78,69,82),(79,70,70),(80,71,70),(81,72,82),(82,73,84),(83,74,83),(84,75,70),(85,76,75),(86,77,70),(87,78,76),(88,79,82),(89,80,70),(90,81,70),(91,82,71),(92,83,84),(93,84,82),(94,85,85),(95,86,50),(96,86,52),(97,86,51),(98,86,42),(99,87,42),(100,88,46),(101,89,53),(102,90,46),(103,91,42),(104,92,42),(105,93,42),(106,94,89),(107,95,42),(108,95,51),(109,95,50),(110,95,52),(111,96,101),(112,96,100),(113,96,93),(114,96,89),(115,97,42),(116,98,100),(117,98,101),(118,98,89),(119,98,93),(120,99,42),(121,100,51),(122,100,52),(123,100,42),(124,100,50),(125,101,94),(126,102,42),(127,102,55),(128,102,50),(129,102,52),(130,102,51),(131,103,42),(132,103,55),(133,103,52),(134,103,51),(135,103,50),(136,104,50),(137,104,51),(138,104,52),(139,104,55),(140,104,42),(141,105,42),(142,106,101),(143,107,59),(144,108,42),(145,108,50),(146,108,52),(147,108,51),(148,109,61),(149,110,46),(150,111,42),(151,112,89),(152,113,53),(153,114,93),(154,114,89),(155,114,101),(156,114,100),(157,115,59),(158,116,89),(159,116,101),(160,116,100),(161,116,93),(162,117,59),(163,118,101),(164,118,89),(165,118,93),(166,119,42),(167,120,42),(168,120,44),(169,120,50),(170,120,51),(171,120,52),(172,121,106),(173,122,58),(174,123,101),(175,124,45),(176,125,93),(177,125,89),(178,125,101),(179,126,57),(180,127,52),(181,127,50),(182,127,51),(183,127,42),(184,128,50),(185,128,51),(186,128,52),(187,128,42),(188,129,93),(189,129,89),(190,129,100),(191,129,101),(192,130,42),(193,130,50),(194,130,52),(195,130,51),(196,131,89),(197,132,47),(198,133,51),(199,134,89),(200,135,42),(201,136,89),(202,137,46),(203,138,93),(204,138,89),(205,138,101),(206,139,42),(207,139,50),(208,139,51),(209,139,52),(210,139,53),(211,140,101),(212,140,89),(213,140,93),(214,141,52),(215,141,42),(216,141,51),(217,141,50),(218,142,89),(219,142,101),(220,142,93),(221,143,89),(222,144,53),(223,145,63),(224,146,89),(225,147,53),(226,148,101),(227,149,42),(228,149,51),(229,149,50),(230,149,52),(231,149,55),(232,150,53),(233,151,89),(234,152,89),(235,153,89),(236,154,89),(237,155,93),(238,155,100),(239,155,101),(240,155,89),(241,156,93),(242,157,89),(243,157,101),(244,157,100),(245,157,93),(246,158,89),(247,158,101),(248,158,93),(249,158,100);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(2,6,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(4,53,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(6,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(7,11,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(9,66,'<com.ju6.a: boolean b()>',178,'p',NULL),(10,11,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,67,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(12,69,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(13,68,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(14,9,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(15,70,'<com.ju6.a: boolean b()>',178,'p',NULL),(16,12,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(17,71,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(18,9,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(19,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,72,'<com.ju6.a: boolean b()>',178,'p',NULL),(21,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(22,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,75,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(24,12,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(25,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,75,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(28,71,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(29,79,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(30,80,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(31,81,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,9,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(33,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,27,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(35,83,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(36,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(37,31,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(38,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(39,85,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(40,94,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(41,85,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(42,31,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(43,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,85,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(45,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(46,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(47,27,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(48,105,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(49,106,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(51,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(52,105,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(53,109,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(54,110,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(55,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(56,87,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(57,131,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(58,132,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(59,87,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(60,87,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(61,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',63,'a',NULL),(62,133,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(63,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',145,'a',NULL),(64,87,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(65,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',75,'a',NULL),(66,88,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(67,102,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,134,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(69,135,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,87,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(71,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',69,'a',NULL),(72,100,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(73,136,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(74,137,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',140,'a',NULL),(76,92,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(77,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(78,139,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(79,140,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(80,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',59,'a',NULL),(81,87,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',54,'a',NULL),(82,88,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(83,102,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(84,100,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(85,103,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(86,141,'<com.smartandroidapps.equalizer.ConfigurationActivity$2: void onClick(android.view.View)>',41,'s',NULL),(87,42,'<com.smartandroidapps.equalizer.MainActivity: void doBindService()>',6,'s',NULL),(88,142,'<com.smartandroidapps.equalizer.Settings$4: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(89,143,'<com.smartandroidapps.equalizer.AudioUtils: void ReadMetadata(java.lang.String,android.os.Handler,android.media.audiofx.Equalizer)>',40,'p',NULL),(90,144,'<com.smartandroidapps.equalizer.Settings$2: boolean onPreferenceClick(android.preference.Preference)>',108,'a',NULL),(91,42,'<com.smartandroidapps.equalizer.MainActivity: void doBindService()>',5,'s',NULL),(92,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',39,'a',NULL),(93,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(94,145,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(95,51,'<com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity: void doDownloadOfImagePack()>',18,'s',NULL),(96,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(97,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',88,'s',NULL),(98,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(99,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(100,141,'<com.smartandroidapps.equalizer.ConfigurationActivity$2: void onClick(android.view.View)>',52,'a',NULL),(101,146,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(102,147,'<com.smartandroidapps.equalizer.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'a',0),(103,147,'<com.smartandroidapps.equalizer.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'r',0),(104,147,'<com.smartandroidapps.equalizer.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'s',0),(105,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(106,148,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(107,60,'<com.smartandroidapps.equalizer.inapp.BillingReceiver: void notify(android.content.Context,java.lang.String)>',7,'s',NULL),(108,149,'<com.smartandroidapps.equalizer.AudioFx$17: void onClick(android.content.DialogInterface,int)>',50,'r',NULL),(109,62,'<com.smartandroidapps.equalizer.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(110,150,'<com.smartandroidapps.equalizer.Settings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(111,42,'<com.smartandroidapps.equalizer.MainActivity: void onCreate(android.os.Bundle)>',75,'a',NULL),(112,151,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(113,143,'<com.smartandroidapps.equalizer.AudioUtils: java.lang.String getFilenameFromUri(android.net.Uri)>',4,'p',NULL),(114,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(115,60,'<com.smartandroidapps.equalizer.inapp.BillingReceiver: void checkResponseCode(android.content.Context,long,int)>',9,'s',NULL),(116,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(117,60,'<com.smartandroidapps.equalizer.inapp.BillingReceiver: void purchaseStateChanged(android.content.Context,java.lang.String,java.lang.String)>',9,'s',NULL),(118,152,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(119,42,'<com.smartandroidapps.equalizer.MainActivity: void onPause()>',6,'s',NULL),(120,153,'<com.smartandroidapps.equalizer.PromoActivity$1: void onClick(android.view.View)>',17,'a',NULL),(121,130,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(122,59,'<com.smartandroidapps.equalizer.WidgetSmall: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',8,'s',NULL),(123,154,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(124,45,'<com.smartandroidapps.equalizer.MusicPicker: android.database.Cursor doQuery(boolean,java.lang.String)>',44,'p',NULL),(125,155,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(126,58,'<com.smartandroidapps.equalizer.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',8,'s',NULL),(127,157,'<com.smartandroidapps.equalizer.inapp.WidgetSkinListActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(128,51,'<com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity: void doDownloadOfImagePack()>',20,'s',NULL),(129,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(130,160,'<com.smartandroidapps.equalizer.MainActivity$MyPowerDialogBuilder$2: void onClick(android.content.DialogInterface,int)>',67,'s',NULL),(131,161,'<com.ju6.c: void run()>',146,'p',NULL),(132,47,'<com.smartandroidapps.equalizer.ApplyShortcutProfile: void onCreate(android.os.Bundle)>',23,'s',NULL),(133,162,'<com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(134,161,'<com.ju6.c: boolean b()>',192,'p',NULL),(135,163,'<com.smartandroidapps.equalizer.MainActivity$3: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(136,164,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(137,165,'<com.smartandroidapps.equalizer.Settings$3: boolean onPreferenceClick(android.preference.Preference)>',12,'s',NULL),(138,166,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(139,143,'<com.smartandroidapps.equalizer.AudioUtils: void updateNotification()>',11,'s',NULL),(140,167,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(141,51,'<com.smartandroidapps.equalizer.inapp.WidgetSkinBuyActivity: void onClick(android.view.View)>',19,'s',NULL),(142,168,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(143,145,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(144,54,'<com.smartandroidapps.equalizer.UpdateService: void handleMusicPlayerEvent(android.content.Intent,java.lang.String)>',84,'p',NULL),(145,64,'<com.smartandroidapps.equalizer.MusicBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'s',NULL),(146,113,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(147,143,'<com.smartandroidapps.equalizer.AudioUtils: void ReadMetadata(java.lang.String,android.os.Handler,android.media.audiofx.Equalizer)>',12,'p',0),(148,169,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(149,56,'<com.smartandroidapps.equalizer.inapp.BillingService: boolean bindToMarketBillingService()>',4,'s',NULL),(150,54,'<com.smartandroidapps.equalizer.UpdateService: void handleMusicPlayerEvent(android.content.Intent,java.lang.String)>',115,'p',NULL),(151,145,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(152,113,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(153,161,'<com.ju6.c: boolean b()>',272,'p',NULL),(154,161,'<com.ju6.c: boolean b()>',195,'p',0),(155,170,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(156,117,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(157,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(158,124,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,6,12),(4,7,14),(5,13,9),(6,14,1),(7,15,1),(8,16,1),(9,17,1),(10,18,12),(11,23,66),(12,29,1),(13,30,1),(14,33,9),(15,34,1),(16,35,66),(17,36,1),(18,37,14),(19,40,68),(20,41,66),(21,44,1),(22,45,1),(23,47,1),(24,48,1),(25,51,9),(26,56,1),(27,57,1),(28,61,70),(29,62,9),(30,63,1),(31,64,1),(32,67,69),(33,69,9),(34,72,9),(35,77,72),(36,81,1),(37,82,1),(38,83,9),(39,85,72),(40,87,1),(41,88,1),(42,89,66),(43,90,72),(44,92,72),(45,101,1),(46,102,1),(47,106,9),(48,107,9),(49,117,1),(50,118,1),(51,120,9),(52,121,9),(53,122,9),(54,123,73),(55,124,9),(56,125,9),(57,126,74),(58,127,9),(59,129,9),(60,130,9),(61,132,9),(62,135,9),(63,136,17),(64,137,9),(65,138,16),(66,139,9),(67,141,9),(68,144,75),(69,145,9),(70,149,9),(71,152,9),(72,153,9),(73,161,77),(74,162,78),(75,163,77),(76,164,77),(77,165,77),(78,166,77),(79,167,77),(80,168,77),(81,169,77),(82,171,79),(83,173,80),(84,174,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,3),(3,14,3),(4,15,1),(5,16,1),(6,17,3),(7,29,1),(8,30,3),(9,34,1),(10,36,3),(11,44,1),(12,45,3),(13,47,1),(14,48,3),(15,56,1),(16,57,3),(17,63,1),(18,64,3),(19,81,1),(20,82,3),(21,87,1),(22,88,3),(23,101,1),(24,102,3),(25,117,1),(26,118,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/safesys/viruskiller/DownloadManageService'),(2,2,'com/safesys/viruskiller/UpdateService'),(3,3,'com/safesys/viruskiller/ScanningManagerService'),(4,8,'com/google/update/Dialog'),(5,10,'com/safesys/viruskiller/MainActivity'),(6,9,'com/google/update/Dialog'),(7,11,'com/google/update/Dialog'),(8,12,'com/google/update/Dialog'),(9,19,'com/safesys/viruskiller/ScanningManagerService'),(10,20,'com/ps/pintu/view/JigsawActivity'),(11,21,'com/safesys/viruskiller/DownloadManageService'),(12,22,'com/google/update/UpdateService'),(13,24,'com/google/update/UpdateService'),(14,25,'com/ps/pintu/view/LocalImageGameActivity'),(15,26,'com/safesys/viruskiller/MainActivity'),(16,27,'com/google/update/Dialog'),(17,28,'com/google/update/Dialog'),(18,31,'com/ps/pintu/view/MainActivity'),(19,32,'com/ps/pintu/view/LocalImageActivity'),(20,38,'com/google/update/Dialog'),(21,39,'com/google/update/Dialog'),(22,42,'(.*)'),(23,43,'com/ps/keepaccount/activity/TypeAccountList'),(24,49,'com/waps/OffersWebView'),(25,50,'com/waps/OffersWebView'),(26,52,'com/ps/keepaccount/dialog/DateSelectorDialog'),(27,53,'com/google/update/UpdateService'),(28,54,'com/waps/OffersWebView'),(29,58,'com/google/update/Dialog'),(30,59,'com/google/update/Dialog'),(31,60,'com/ps/keepaccount/dialog/DateSelectorDialog'),(32,65,'com/google/update/Dialog'),(33,66,'com/google/update/Dialog'),(34,68,'com/ps/keepaccount/dialog/CanlendarDialog'),(35,70,'NULL-CONSTANT'),(36,71,'com/waps/OffersWebView'),(37,73,'com/alan/message/InputMessage'),(38,74,'NULL-CONSTANT'),(39,75,'com/alan/message/MessageList'),(40,76,'com/alan/message/Help'),(41,78,'com/alan/message/EditMessage'),(42,79,'com/google/update/Dialog'),(43,80,'com/google/update/Dialog'),(44,84,'com/alan/message/Setting'),(45,86,'(.*)'),(46,91,'com/alan/message/MessageList'),(47,93,'com/waps/OffersWebView'),(48,94,'com/waps/OffersWebView'),(49,95,'com/alan/message/MessageList'),(50,96,'com/alan/message/MessageList'),(51,97,'com/alan/message/AddMessage'),(52,98,'com/google/update/Dialog'),(53,99,'com/google/update/Dialog'),(54,103,'com/google/update/UpdateService'),(55,104,'com/smartandroidapps/equalizer/UpdateService'),(56,105,'com/smartandroidapps/equalizer/UpdateService'),(57,108,'com/smartandroidapps/equalizer/UpdateService'),(58,109,'com/smartandroidapps/equalizer/PromoActivity'),(59,110,'com/airpuh/ad/UpdateCheck'),(60,111,'com/smartandroidapps/equalizer/inapp/DownloadService'),(61,113,'com/airpuh/ad/UpdateCheck'),(62,112,'com/millennialmedia/android/MMAdViewOverlayActivity'),(63,114,'com/millennialmedia/android/MMAdViewOverlayActivity'),(64,115,'com/smartandroidapps/equalizer/UninstallDialogActivity'),(65,116,'com/smartandroidapps/equalizer/inapp/WidgetSkinListActivity'),(66,119,'com/smartandroidapps/equalizer/PromoActivity'),(67,123,'com/smartandroidapps/equalizer/inapp/BillingService'),(68,128,'com/smartandroidapps/equalizer/UpdateService'),(69,131,'com/smartandroidapps/equalizer/inapp/WidgetSkinListActivity'),(70,133,'com/smartandroidapps/equalizer/HintsActivity'),(71,134,'com/evilsunflower/reader/control/UpdateService'),(72,136,'com/smartandroidapps/equalizer/inapp/BillingService'),(73,138,'com/smartandroidapps/equalizer/inapp/BillingService'),(74,140,'com/smartandroidapps/equalizer/UpdateService'),(75,139,'com.android.browser.BrowserActivity'),(76,142,'com/evilsunflower/reader/control/UpdateService'),(77,143,'com/smartandroidapps/equalizer/UpdateService'),(78,146,'com/smartandroidapps/equalizer/UpdateService'),(79,147,'com/smartandroidapps/equalizer/inapp/WidgetSkinBuyActivity'),(80,148,'com/smartandroidapps/equalizer/inapp/DownloadService'),(81,150,'com/smartandroidapps/equalizer/UpdateService'),(82,151,'com/smartandroidapps/equalizer/UpdateService'),(83,154,'com/smartandroidapps/equalizer/UpdateService'),(84,156,'com/smartandroidapps/equalizer/UpdateService'),(85,158,'com/smartandroidapps/equalizer/UpdateService'),(86,160,'com.evilsunflower.reader.FBReader'),(87,159,'com/smartandroidapps/equalizer/UpdateService'),(88,170,'com.evilsunflower.reader.FBReader'),(89,172,'com/evilsunflower/reader/BookmarkEditActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,13,3),(3,18,5),(4,33,7),(5,51,8),(6,62,9),(7,69,10),(8,72,11),(9,83,12),(10,106,14),(11,107,16),(12,112,19),(13,114,20),(14,120,21),(15,121,22),(16,122,23),(17,124,24),(18,125,25),(19,127,26),(20,129,27),(21,130,28),(22,132,29),(23,135,31),(24,137,32),(25,139,33),(26,145,35),(27,149,36),(28,152,38),(29,173,48),(30,174,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'state'),(2,7,'cmd'),(3,8,'TYPEdsada'),(4,9,'MSG'),(5,9,'TYPEdsada'),(6,11,'TYPEdsada'),(7,12,'MSG'),(8,12,'TYPEdsada'),(9,19,'state'),(10,20,'level'),(11,20,'pictureIndex'),(12,25,'level'),(13,25,'path'),(14,27,'MSG'),(15,27,'TYPEdsada'),(16,28,'TYPEdsada'),(17,37,'cmd'),(18,38,'MSG'),(19,38,'TYPEdsada'),(20,39,'TYPEdsada'),(21,40,'startDate'),(22,40,'endDate'),(23,43,'startDate'),(24,43,'endDate'),(25,43,'type'),(26,49,'Notify_Url_Params'),(27,49,'UrlPath'),(28,49,'ACTIVITY_FLAG'),(29,49,'isFinshClose'),(30,49,'offers_webview_tag'),(31,50,'UrlPath'),(32,50,'ACTIVITY_FLAG'),(33,50,'isFinshClose'),(34,50,'offers_webview_tag'),(35,54,'CLIENT_PACKAGE'),(36,54,'URL'),(37,54,'isFinshClose'),(38,54,'offers_webview_tag'),(39,58,'TYPEdsada'),(40,59,'MSG'),(41,59,'TYPEdsada'),(42,65,'TYPEdsada'),(43,66,'MSG'),(44,66,'TYPEdsada'),(45,71,'USER_ID'),(46,71,'CLIENT_PACKAGE'),(47,71,'Offers_URL'),(48,71,'offers_webview_tag'),(49,71,'URL_PARAMS'),(50,75,'type'),(51,78,'itemContent'),(52,78,'type'),(53,79,'TYPEdsada'),(54,80,'MSG'),(55,80,'TYPEdsada'),(56,91,'type'),(57,93,'UrlPath'),(58,93,'ACTIVITY_FLAG'),(59,93,'isFinshClose'),(60,93,'offers_webview_tag'),(61,94,'Notify_Url_Params'),(62,94,'UrlPath'),(63,94,'ACTIVITY_FLAG'),(64,94,'isFinshClose'),(65,94,'offers_webview_tag'),(66,95,'type'),(67,96,'type'),(68,97,'type'),(69,98,'TYPEdsada'),(70,99,'MSG'),(71,99,'TYPEdsada'),(72,104,'job'),(73,111,'skinPack'),(74,112,'cachedAdView'),(75,114,'cachedAdView'),(76,123,'notification_id'),(77,126,'android.intent.extra.shortcut.NAME'),(78,126,'android.intent.extra.shortcut.ICON_RESOURCE'),(79,126,'android.intent.extra.shortcut.INTENT'),(80,128,'job'),(81,136,'request_id'),(82,136,'response_code'),(83,138,'inapp_signature'),(84,138,'inapp_signed_data'),(85,140,'job'),(86,143,'job'),(87,144,'android.intent.extra.TEXT'),(88,144,'android.intent.extra.SUBJECT'),(89,144,'android.intent.extra.EMAIL'),(90,146,'job'),(91,147,'skinPack'),(92,148,'skinPack'),(93,150,'job'),(94,151,'presetId'),(95,151,'job'),(96,154,'job'),(97,154,'foreground'),(98,156,'job'),(99,158,'job'),(100,159,'NULL-CONSTANT'),(101,159,'action'),(102,159,'job'),(103,161,'android.intent.extra.INTENT'),(104,163,'android.intent.extra.INTENT'),(105,164,'android.intent.extra.TITLE'),(106,164,'android.intent.extra.INTENT'),(107,165,'android.intent.extra.INTENT'),(108,166,'android.intent.extra.TITLE'),(109,166,'android.intent.extra.INTENT'),(110,167,'android.intent.extra.INTENT'),(111,168,'android.intent.extra.TITLE'),(112,168,'android.intent.extra.INTENT'),(113,169,'android.intent.extra.TITLE'),(114,169,'android.intent.extra.INTENT'),(115,171,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,7),(7,4,5),(8,4,6),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,3),(15,9,5),(16,9,6),(17,9,7),(18,10,3),(19,10,4),(20,10,2),(21,11,1),(22,12,4),(23,12,3),(24,12,2),(25,13,1),(26,14,8),(27,15,9),(28,16,9),(29,17,9),(30,18,9),(31,19,9),(32,20,9),(33,21,10),(34,22,9),(35,23,11),(36,24,13),(37,25,13),(38,26,15),(39,26,16),(40,26,17),(41,27,18),(42,28,3),(43,29,14),(44,30,22),(45,30,21),(46,30,24),(47,30,23),(48,30,26),(49,30,25),(50,30,28),(51,30,27),(52,30,20),(53,30,19),(54,30,62),(55,30,61),(56,30,64),(57,30,63),(58,30,51),(59,30,52),(60,30,49),(61,30,50),(62,30,47),(63,30,48),(64,30,45),(65,30,46),(66,30,59),(67,30,60),(68,30,57),(69,30,58),(70,30,55),(71,30,56),(72,30,53),(73,30,54),(74,30,36),(75,30,35),(76,30,34),(77,30,33),(78,30,32),(79,30,31),(80,30,30),(81,30,29),(82,30,44),(83,30,43),(84,30,42),(85,30,41),(86,30,40),(87,30,39),(88,30,38),(89,30,37),(90,31,65),(91,32,14),(92,33,18),(93,34,65),(94,35,67),(95,36,5),(96,37,1),(97,38,69),(98,39,4),(99,39,3),(100,39,2),(101,40,68),(102,41,70),(103,42,1),(104,43,71),(105,44,71),(106,45,3),(107,45,2),(108,45,4),(109,46,5),(110,47,76),(111,48,76),(112,49,76),(113,50,76),(114,51,82),(115,51,81);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,7,1),(4,11,1),(5,13,1),(6,14,2),(7,15,2),(8,16,2),(9,17,2),(10,18,2),(11,19,2),(12,20,2),(13,21,2),(14,23,2),(15,28,4),(16,37,1),(17,42,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,9,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,46,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,62,'application','vnd.android.package-archive'),(2,69,'application','vnd.android.package-archive'),(3,72,'application','vnd.android.package-archive'),(4,77,'vnd.android.cursor.item','phone'),(5,83,'application','vnd.android.package-archive'),(6,85,'vnd.android.cursor.item','phone'),(7,90,'vnd.android.cursor.item','phone'),(8,92,'image','*'),(9,120,'application','vnd.android.package-archive'),(10,121,'application','vnd.android.package-archive'),(11,122,'application','vnd.android.package-archive'),(12,124,'application','vnd.android.package-archive'),(13,125,'application','vnd.android.package-archive'),(14,127,'application','vnd.android.package-archive'),(15,129,'application','vnd.android.package-archive'),(16,130,'application','vnd.android.package-archive'),(17,132,'application','vnd.android.package-archive'),(18,144,'message','rfc822'),(19,145,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.safesys.viruskiller'),(2,2,'com.safesys.viruskiller'),(3,3,'com.safesys.viruskiller'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,8,'com.safesys.viruskiller'),(7,10,'com.safesys.viruskiller'),(8,9,'com.safesys.viruskiller'),(9,11,'com.safesys.viruskiller'),(10,12,'com.safesys.viruskiller'),(11,14,'com.safesys.viruskiller'),(12,15,'com.noshufou.android.su'),(13,16,'com.safesys.viruskiller'),(14,17,'com.noshufou.android.su'),(15,19,'com.safesys.viruskiller'),(16,20,'com.ps.pintu.view'),(17,21,'com.safesys.viruskiller'),(18,22,'com.ps.pintu.view'),(19,24,'com.safesys.viruskiller'),(20,25,'com.ps.pintu.view'),(21,26,'com.safesys.viruskiller'),(22,27,'com.ps.pintu.view'),(23,28,'com.ps.pintu.view'),(24,29,'com.noshufou.android.su'),(25,30,'com.noshufou.android.su'),(26,31,'com.ps.pintu.view'),(27,32,'com.ps.pintu.view'),(28,34,'com.ps.pintu.view'),(29,36,'com.ps.pintu.view'),(30,38,'com.ps.pintu.view'),(31,39,'com.ps.pintu.view'),(32,42,'(.*)'),(33,43,'com.ps.keepaccount'),(34,44,'com.noshufou.android.su'),(35,45,'com.noshufou.android.su'),(36,47,'NULL-CONSTANT'),(37,48,'NULL-CONSTANT'),(38,49,'com.ps.keepaccount'),(39,50,'com.ps.keepaccount'),(40,52,'com.ps.keepaccount'),(41,53,'com.ps.keepaccount'),(42,54,'com.ps.keepaccount'),(43,56,'(.*)'),(44,57,'(.*)'),(45,58,'com.ps.keepaccount'),(46,59,'com.ps.keepaccount'),(47,60,'com.ps.keepaccount'),(48,63,'com.ps.keepaccount'),(49,64,'com.ps.keepaccount'),(50,65,'com.ps.keepaccount'),(51,66,'com.ps.keepaccount'),(52,68,'com.ps.keepaccount'),(53,70,'NULL-CONSTANT'),(54,71,'com.alan.message'),(55,73,'com.alan.message'),(56,74,'NULL-CONSTANT'),(57,75,'com.alan.message'),(58,76,'com.alan.message'),(59,78,'com.alan.message'),(60,79,'com.alan.message'),(61,80,'com.alan.message'),(62,81,'com.noshufou.android.su'),(63,82,'com.noshufou.android.su'),(64,84,'com.alan.message'),(65,86,'(.*)'),(66,87,'com.alan.message'),(67,88,'com.alan.message'),(68,91,'com.alan.message'),(69,93,'com.alan.message'),(70,94,'com.alan.message'),(71,95,'com.alan.message'),(72,96,'com.alan.message'),(73,97,'com.alan.message'),(74,98,'com.alan.message'),(75,99,'com.alan.message'),(76,101,'(.*)'),(77,102,'(.*)'),(78,103,'com.alan.message'),(79,104,'com.smartandroidapps.new'),(80,105,'com.smartandroidapps.new'),(81,108,'com.smartandroidapps.new'),(82,109,'com.smartandroidapps.new'),(83,110,'com.smartandroidapps.new'),(84,111,'com.smartandroidapps.new'),(85,113,'com.smartandroidapps.new'),(86,112,'com.evilsunflower.reader.evilXindong13'),(87,114,'com.evilsunflower.reader.evilXindong13'),(88,115,'com.smartandroidapps.new'),(89,116,'com.smartandroidapps.new'),(90,117,'com.noshufou.android.su'),(91,118,'com.noshufou.android.su'),(92,119,'com.smartandroidapps.new'),(93,123,'com.smartandroidapps.new'),(94,128,'com.smartandroidapps.new'),(95,131,'com.smartandroidapps.new'),(96,133,'com.smartandroidapps.new'),(97,134,'com.evilsunflower.reader.evilXindong13'),(98,136,'com.smartandroidapps.new'),(99,138,'com.smartandroidapps.new'),(100,140,'com.smartandroidapps.new'),(101,139,'com.android.browser'),(102,142,'com.evilsunflower.reader.evilXindong13'),(103,143,'com.smartandroidapps.new'),(104,146,'com.smartandroidapps.new'),(105,147,'com.smartandroidapps.new'),(106,148,'com.smartandroidapps.new'),(107,150,'com.smartandroidapps.new'),(108,151,'com.smartandroidapps.new'),(109,154,'com.smartandroidapps.new'),(110,156,'com.smartandroidapps.new'),(111,158,'com.smartandroidapps.new'),(112,160,'com.evilsunflower.reader.evilXindong13'),(113,159,'com.smartandroidapps.new'),(114,170,'com.evilsunflower.reader.evilXindong13'),(115,172,'com.evilsunflower.reader.evilXindong13');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,9,0),(6,14,0),(7,15,0),(8,16,0),(9,18,0),(10,24,0),(11,25,0),(12,41,0),(13,42,0),(14,42,0),(15,43,0),(16,44,0),(17,45,0),(18,46,0),(19,47,0),(20,48,0),(21,49,0),(22,50,0),(23,52,0),(24,57,0),(25,58,0),(26,59,0),(27,60,0),(28,61,0),(29,62,0),(30,63,0),(31,64,0),(32,65,0),(33,66,0),(34,67,0),(35,68,0),(36,69,0),(37,70,0),(38,72,0),(39,85,0),(40,86,0),(41,87,0),(42,89,0),(43,89,0),(44,93,0),(45,106,0),(46,107,0),(47,108,0),(48,106,0),(49,109,0),(50,110,0),(51,110,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,7,0,0),(9,7,0,0),(10,8,0,0),(11,10,0,0),(12,10,0,0),(13,11,1,0),(14,12,1,0),(15,13,1,0),(16,12,1,0),(17,13,1,0),(18,14,1,0),(19,16,0,0),(20,17,0,0),(21,18,0,0),(22,19,0,0),(23,21,1,0),(24,22,0,0),(25,23,0,0),(26,24,0,0),(27,25,0,0),(28,25,0,0),(29,26,1,0),(30,26,1,0),(31,27,0,0),(32,28,0,0),(33,29,1,0),(34,30,1,0),(35,31,1,0),(36,30,1,0),(37,32,1,0),(38,33,0,0),(39,33,0,0),(40,34,1,0),(41,35,1,0),(42,36,0,0),(43,37,0,0),(44,38,1,0),(45,38,1,0),(46,39,1,0),(47,39,1,0),(48,39,1,0),(49,40,0,0),(50,40,0,0),(51,41,1,0),(52,42,0,0),(53,43,0,0),(54,44,0,0),(55,45,1,0),(56,45,1,0),(57,45,1,0),(58,46,0,0),(59,46,0,0),(60,47,0,0),(61,48,1,0),(62,49,1,0),(63,50,1,0),(64,50,1,0),(65,51,0,0),(66,51,0,0),(67,52,1,0),(68,53,0,0),(69,54,1,0),(70,55,0,0),(71,57,0,0),(72,58,1,0),(73,61,0,0),(74,62,0,0),(75,63,0,0),(76,64,0,0),(77,65,1,0),(78,66,0,0),(79,67,0,0),(80,67,0,0),(81,68,1,0),(82,68,1,0),(83,69,1,0),(84,70,0,0),(85,71,1,0),(86,72,0,0),(87,73,1,0),(88,73,1,0),(89,74,1,0),(90,75,1,0),(91,77,0,0),(92,78,1,0),(93,79,0,0),(94,79,0,0),(95,80,0,0),(96,81,0,0),(97,82,0,0),(98,83,0,0),(99,83,0,0),(100,84,1,0),(101,84,1,0),(102,84,1,0),(103,85,0,0),(104,86,0,0),(105,87,0,0),(106,88,1,0),(107,90,1,0),(108,91,0,0),(109,92,0,0),(110,93,0,0),(111,95,0,0),(112,96,0,0),(113,97,0,0),(114,98,0,0),(115,99,0,0),(116,100,0,0),(117,101,1,0),(118,101,1,0),(119,105,0,0),(120,106,1,0),(121,106,1,0),(122,106,1,0),(123,107,0,0),(124,106,1,0),(125,106,1,0),(126,108,1,0),(127,106,1,0),(128,109,0,0),(129,106,1,0),(130,106,1,0),(131,110,0,0),(132,106,1,0),(133,111,0,0),(134,112,0,0),(135,114,1,0),(136,115,0,0),(137,116,1,0),(138,117,0,0),(139,118,0,0),(140,119,0,0),(141,120,1,0),(142,121,0,0),(143,122,0,0),(144,123,1,0),(145,125,1,0),(146,126,0,0),(147,127,0,0),(148,128,0,0),(149,129,1,0),(150,130,0,0),(151,132,0,0),(152,133,1,0),(153,135,1,0),(154,137,0,0),(155,138,1,0),(156,139,0,0),(157,140,1,0),(158,141,0,0),(159,145,0,0),(160,146,0,0),(161,148,1,0),(162,149,1,0),(163,148,1,0),(164,148,1,0),(165,148,1,0),(166,148,1,0),(167,148,1,0),(168,148,1,0),(169,148,1,0),(170,152,0,0),(171,155,1,0),(172,156,0,0),(173,157,1,0),(174,158,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,7,25,2,NULL),(2,160,89,2,NULL),(3,37,25,2,NULL),(4,170,89,2,NULL),(5,7,89,2,NULL),(6,40,25,2,NULL),(7,37,89,2,NULL),(8,40,89,2,NULL),(9,55,25,2,NULL),(10,55,89,2,NULL),(11,56,25,2,NULL),(12,56,89,2,NULL),(13,57,25,2,NULL),(14,57,89,2,NULL),(15,162,25,2,NULL),(16,162,89,2,NULL),(17,100,25,2,NULL),(18,100,89,2,NULL),(19,101,25,2,NULL),(20,101,89,2,NULL),(21,102,25,2,NULL),(22,102,89,2,NULL),(23,135,25,2,NULL),(24,135,89,2,NULL),(25,137,25,2,NULL),(26,137,89,2,NULL),(27,149,25,2,NULL),(28,149,89,2,NULL),(29,173,25,2,NULL),(30,173,89,2,NULL),(31,174,25,2,NULL),(32,174,89,2,NULL),(33,60,35,2,NULL),(34,172,95,2,NULL),(35,40,1,2,NULL),(36,7,93,2,NULL),(37,40,6,2,NULL),(38,37,93,2,NULL),(39,40,7,2,NULL),(40,40,93,2,NULL),(41,40,60,2,NULL),(42,55,93,2,NULL),(43,40,62,2,NULL),(44,56,93,2,NULL),(45,40,64,2,NULL),(46,57,93,2,NULL),(47,40,9,2,NULL),(48,162,93,2,NULL),(49,40,14,2,NULL),(50,100,93,2,NULL),(51,40,16,2,NULL),(52,101,93,2,NULL),(53,40,65,2,NULL),(54,102,93,2,NULL),(55,40,66,2,NULL),(56,135,93,2,NULL),(57,40,67,2,NULL),(58,137,93,2,NULL),(59,40,15,2,NULL),(60,149,93,2,NULL),(61,40,24,2,NULL),(62,173,93,2,NULL),(63,40,41,2,NULL),(64,174,93,2,NULL),(65,40,68,2,NULL),(66,112,99,2,NULL),(67,40,72,2,NULL),(68,114,99,2,NULL),(69,40,86,2,NULL),(70,135,1,2,NULL),(71,40,87,2,NULL),(72,137,1,2,NULL),(73,40,42,2,NULL),(74,149,1,2,NULL),(75,40,43,2,NULL),(76,173,1,2,NULL),(77,40,44,2,NULL),(78,174,1,2,NULL),(79,40,45,2,NULL),(80,135,6,2,NULL),(81,40,46,2,NULL),(82,137,6,2,NULL),(83,40,47,2,NULL),(84,149,6,2,NULL),(85,40,48,2,NULL),(86,173,6,2,NULL),(87,40,49,2,NULL),(88,174,6,2,NULL),(89,40,50,2,NULL),(90,135,7,2,NULL),(91,40,52,2,NULL),(92,137,7,2,NULL),(93,40,57,2,NULL),(94,149,7,2,NULL),(95,40,58,2,NULL),(96,173,7,2,NULL),(97,1,5,2,NULL),(98,40,59,2,NULL),(99,174,7,2,NULL),(100,1,13,2,NULL),(101,40,61,2,NULL),(102,135,60,2,NULL),(103,7,6,2,NULL),(104,40,63,2,NULL),(105,137,60,2,NULL),(106,7,7,2,NULL),(107,40,70,2,NULL),(108,149,60,2,NULL),(109,7,60,2,NULL),(110,40,85,2,NULL),(111,173,60,2,NULL),(112,7,62,2,NULL),(113,40,106,2,NULL),(114,174,60,2,NULL),(115,7,64,2,NULL),(116,40,108,2,NULL),(117,135,62,2,NULL),(118,7,14,2,NULL),(119,40,109,2,NULL),(120,137,62,2,NULL),(121,7,16,2,NULL),(122,40,110,2,NULL),(123,149,62,2,NULL),(124,7,65,2,NULL),(125,43,33,2,NULL),(126,173,62,2,NULL),(127,7,66,2,NULL),(128,52,35,2,NULL),(129,174,62,2,NULL),(130,7,67,2,NULL),(131,55,1,2,NULL),(132,135,64,2,NULL),(133,7,15,2,NULL),(134,56,1,2,NULL),(135,137,64,2,NULL),(136,7,24,2,NULL),(137,57,1,2,NULL),(138,149,64,2,NULL),(139,7,41,2,NULL),(140,55,6,2,NULL),(141,173,64,2,NULL),(142,7,68,2,NULL),(143,56,6,2,NULL),(144,174,64,2,NULL),(145,7,72,2,NULL),(146,57,6,2,NULL),(147,135,9,2,NULL),(148,7,86,2,NULL),(149,55,7,2,NULL),(150,137,9,2,NULL),(151,7,87,2,NULL),(152,56,7,2,NULL),(153,149,9,2,NULL),(154,7,42,2,NULL),(155,57,7,2,NULL),(156,173,9,2,NULL),(157,7,43,2,NULL),(158,55,60,2,NULL),(159,174,9,2,NULL),(160,7,44,2,NULL),(161,56,60,2,NULL),(162,135,14,2,NULL),(163,7,45,2,NULL),(164,57,60,2,NULL),(165,137,14,2,NULL),(166,7,46,2,NULL),(167,55,62,2,NULL),(168,149,14,2,NULL),(169,7,47,2,NULL),(170,56,62,2,NULL),(171,173,14,2,NULL),(172,7,48,2,NULL),(173,57,62,2,NULL),(174,174,14,2,NULL),(175,7,49,2,NULL),(176,55,64,2,NULL),(177,135,16,2,NULL),(178,7,50,2,NULL),(179,56,64,2,NULL),(180,137,16,2,NULL),(181,7,52,2,NULL),(182,57,64,2,NULL),(183,149,16,2,NULL),(184,162,1,2,NULL),(185,55,9,2,NULL),(186,173,16,2,NULL),(187,7,57,2,NULL),(188,56,9,2,NULL),(189,174,16,2,NULL),(190,7,58,2,NULL),(191,57,9,2,NULL),(192,135,65,2,NULL),(193,7,59,2,NULL),(194,55,14,2,NULL),(195,137,65,2,NULL),(196,7,61,2,NULL),(197,56,14,2,NULL),(198,149,65,2,NULL),(199,7,63,2,NULL),(200,57,14,2,NULL),(201,173,65,2,NULL),(202,7,70,2,NULL),(203,55,16,2,NULL),(204,174,65,2,NULL),(205,100,1,2,NULL),(206,56,16,2,NULL),(207,135,66,2,NULL),(208,101,1,2,NULL),(209,57,16,2,NULL),(210,137,66,2,NULL),(211,102,1,2,NULL),(212,55,65,2,NULL),(213,7,85,2,NULL),(214,149,66,2,NULL),(215,56,65,2,NULL),(216,173,66,2,NULL),(217,7,106,2,NULL),(218,57,65,2,NULL),(219,174,66,2,NULL),(220,7,108,2,NULL),(221,55,66,2,NULL),(222,135,67,2,NULL),(223,7,109,2,NULL),(224,56,66,2,NULL),(225,137,67,2,NULL),(226,7,110,2,NULL),(227,57,66,2,NULL),(228,149,67,2,NULL),(229,3,4,2,NULL),(230,55,67,2,NULL),(231,173,67,2,NULL),(232,3,12,2,NULL),(233,56,67,2,NULL),(234,174,67,2,NULL),(235,10,1,2,NULL),(236,57,67,2,NULL),(237,135,15,2,NULL),(238,10,9,2,NULL),(239,55,15,2,NULL),(240,137,15,2,NULL),(241,2,3,2,NULL),(242,56,15,2,NULL),(243,149,15,2,NULL),(244,37,6,2,NULL),(245,57,15,2,NULL),(246,173,15,2,NULL),(247,162,6,2,NULL),(248,55,24,2,NULL),(249,174,15,2,NULL),(250,100,6,2,NULL),(251,56,24,2,NULL),(252,135,24,2,NULL),(253,101,6,2,NULL),(254,57,24,2,NULL),(255,137,24,2,NULL),(256,102,6,2,NULL),(257,55,41,2,NULL),(258,149,24,2,NULL),(259,37,7,2,NULL),(260,56,41,2,NULL),(261,173,24,2,NULL),(262,162,7,2,NULL),(263,57,41,2,NULL),(264,174,24,2,NULL),(265,100,7,2,NULL),(266,55,68,2,NULL),(267,101,7,2,NULL),(268,135,41,2,NULL),(269,56,68,2,NULL),(270,137,41,2,NULL),(271,102,7,2,NULL),(272,57,68,2,NULL),(273,149,41,2,NULL),(274,37,60,2,NULL),(275,55,72,2,NULL),(276,173,41,2,NULL),(277,162,60,2,NULL),(278,56,72,2,NULL),(279,174,41,2,NULL),(280,100,60,2,NULL),(281,57,72,2,NULL),(282,135,68,2,NULL),(283,101,60,2,NULL),(284,55,86,2,NULL),(285,137,68,2,NULL),(286,102,60,2,NULL),(287,56,86,2,NULL),(288,149,68,2,NULL),(289,37,62,2,NULL),(290,57,86,2,NULL),(291,173,68,2,NULL),(292,162,62,2,NULL),(293,55,87,2,NULL),(294,174,68,2,NULL),(295,100,62,2,NULL),(296,56,87,2,NULL),(297,135,72,2,NULL),(298,101,62,2,NULL),(299,57,87,2,NULL),(300,137,72,2,NULL),(301,102,62,2,NULL),(302,55,42,2,NULL),(303,149,72,2,NULL),(304,37,64,2,NULL),(305,56,42,2,NULL),(306,173,72,2,NULL),(307,162,64,2,NULL),(308,57,42,2,NULL),(309,174,72,2,NULL),(310,100,64,2,NULL),(311,55,43,2,NULL),(312,135,86,2,NULL),(313,101,64,2,NULL),(314,56,43,2,NULL),(315,137,86,2,NULL),(316,102,64,2,NULL),(317,57,43,2,NULL),(318,149,86,2,NULL),(319,21,5,2,NULL),(320,55,44,2,NULL),(321,173,86,2,NULL),(322,21,13,2,NULL),(323,56,44,2,NULL),(324,174,86,2,NULL),(325,37,14,2,NULL),(326,57,44,2,NULL),(327,135,87,2,NULL),(328,37,16,2,NULL),(329,55,45,2,NULL),(330,137,87,2,NULL),(331,37,65,2,NULL),(332,56,45,2,NULL),(333,149,87,2,NULL),(334,37,66,2,NULL),(335,57,45,2,NULL),(336,173,87,2,NULL),(337,37,67,2,NULL),(338,55,46,2,NULL),(339,174,87,2,NULL),(340,37,15,2,NULL),(341,56,46,2,NULL),(342,135,42,2,NULL),(343,37,24,2,NULL),(344,57,46,2,NULL),(345,137,42,2,NULL),(346,37,41,2,NULL),(347,55,47,2,NULL),(348,149,42,2,NULL),(349,37,68,2,NULL),(350,56,47,2,NULL),(351,173,42,2,NULL),(352,37,72,2,NULL),(353,57,47,2,NULL),(354,174,42,2,NULL),(355,37,86,2,NULL),(356,55,48,2,NULL),(357,135,43,2,NULL),(358,37,87,2,NULL),(359,56,48,2,NULL),(360,137,43,2,NULL),(361,37,42,2,NULL),(362,57,48,2,NULL),(363,149,43,2,NULL),(364,55,49,2,NULL),(365,37,43,2,NULL),(366,173,43,2,NULL),(367,37,44,2,NULL),(368,56,49,2,NULL),(369,174,43,2,NULL),(370,37,45,2,NULL),(371,57,49,2,NULL),(372,135,44,2,NULL),(373,55,50,2,NULL),(374,37,46,2,NULL),(375,137,44,2,NULL),(376,37,47,2,NULL),(377,56,50,2,NULL),(378,149,44,2,NULL),(379,57,50,2,NULL),(380,37,48,2,NULL),(381,173,44,2,NULL),(382,37,49,2,NULL),(383,55,52,2,NULL),(384,174,44,2,NULL),(385,37,50,2,NULL),(386,56,52,2,NULL),(387,135,45,2,NULL),(388,57,52,2,NULL),(389,37,52,2,NULL),(390,137,45,2,NULL),(391,55,57,2,NULL),(392,162,9,2,NULL),(393,149,45,2,NULL),(394,37,57,2,NULL),(395,56,57,2,NULL),(396,173,45,2,NULL),(397,57,57,2,NULL),(398,37,58,2,NULL),(399,174,45,2,NULL),(400,37,59,2,NULL),(401,55,58,2,NULL),(402,135,46,2,NULL),(403,56,58,2,NULL),(404,37,61,2,NULL),(405,137,46,2,NULL),(406,37,63,2,NULL),(407,57,58,2,NULL),(408,149,46,2,NULL),(409,55,59,2,NULL),(410,37,70,2,NULL),(411,173,46,2,NULL),(412,56,59,2,NULL),(413,100,9,2,NULL),(414,174,46,2,NULL),(415,101,9,2,NULL),(416,57,59,2,NULL),(417,135,47,2,NULL),(418,55,61,2,NULL),(419,102,9,2,NULL),(420,137,47,2,NULL),(421,37,85,2,NULL),(422,56,61,2,NULL),(423,149,47,2,NULL),(424,57,61,2,NULL),(425,37,106,2,NULL),(426,173,47,2,NULL),(427,55,63,2,NULL),(428,37,108,2,NULL),(429,174,47,2,NULL),(430,56,63,2,NULL),(431,37,109,2,NULL),(432,135,48,2,NULL),(433,37,110,2,NULL),(434,57,63,2,NULL),(435,137,48,2,NULL),(436,55,70,2,NULL),(437,8,10,2,NULL),(438,149,48,2,NULL),(439,56,70,2,NULL),(440,8,22,2,NULL),(441,173,48,2,NULL),(442,57,70,2,NULL),(443,8,37,2,NULL),(444,174,48,2,NULL),(445,55,85,2,NULL),(446,8,83,2,NULL),(447,135,49,2,NULL),(448,9,10,2,NULL),(449,56,85,2,NULL),(450,137,49,2,NULL),(451,57,85,2,NULL),(452,9,22,2,NULL),(453,149,49,2,NULL),(454,9,37,2,NULL),(455,55,106,2,NULL),(456,173,49,2,NULL),(457,9,83,2,NULL),(458,56,106,2,NULL),(459,174,49,2,NULL),(460,57,106,2,NULL),(461,11,10,2,NULL),(462,135,50,2,NULL),(463,55,108,2,NULL),(464,11,22,2,NULL),(465,137,50,2,NULL),(466,11,37,2,NULL),(467,56,108,2,NULL),(468,149,50,2,NULL),(469,57,108,2,NULL),(470,11,83,2,NULL),(471,173,50,2,NULL),(472,55,109,2,NULL),(473,12,10,2,NULL),(474,174,50,2,NULL),(475,56,109,2,NULL),(476,12,22,2,NULL),(477,135,52,2,NULL),(478,12,37,2,NULL),(479,57,109,2,NULL),(480,137,52,2,NULL),(481,12,83,2,NULL),(482,55,110,2,NULL),(483,149,52,2,NULL),(484,56,110,2,NULL),(485,19,4,2,NULL),(486,173,52,2,NULL),(487,19,12,2,NULL),(488,57,110,2,NULL),(489,174,52,2,NULL),(490,26,1,2,NULL),(491,58,10,2,NULL),(492,135,57,2,NULL),(493,58,22,2,NULL),(494,26,9,2,NULL),(495,137,57,2,NULL),(496,58,37,2,NULL),(497,24,11,2,NULL),(498,149,57,2,NULL),(499,58,83,2,NULL),(500,24,23,2,NULL),(501,173,57,2,NULL),(502,59,10,2,NULL),(503,24,40,2,NULL),(504,174,57,2,NULL),(505,59,22,2,NULL),(506,24,84,2,NULL),(507,135,58,2,NULL),(508,59,37,2,NULL),(509,162,14,2,NULL),(510,137,58,2,NULL),(511,59,83,2,NULL),(512,100,14,2,NULL),(513,149,58,2,NULL),(514,65,10,2,NULL),(515,101,14,2,NULL),(516,173,58,2,NULL),(517,65,22,2,NULL),(518,102,14,2,NULL),(519,174,58,2,NULL),(520,65,37,2,NULL),(521,162,16,2,NULL),(522,135,59,2,NULL),(523,65,83,2,NULL),(524,100,16,2,NULL),(525,137,59,2,NULL),(526,66,10,2,NULL),(527,101,16,2,NULL),(528,149,59,2,NULL),(529,66,22,2,NULL),(530,102,16,2,NULL),(531,173,59,2,NULL),(532,66,37,2,NULL),(533,162,65,2,NULL),(534,174,59,2,NULL),(535,100,65,2,NULL),(536,66,83,2,NULL),(537,135,61,2,NULL),(538,101,65,2,NULL),(539,53,11,2,NULL),(540,137,61,2,NULL),(541,53,23,2,NULL),(542,102,65,2,NULL),(543,149,61,2,NULL),(544,53,40,2,NULL),(545,162,66,2,NULL),(546,173,61,2,NULL),(547,53,84,2,NULL),(548,100,66,2,NULL),(549,174,61,2,NULL),(550,101,66,2,NULL),(551,162,41,2,NULL),(552,135,63,2,NULL),(553,102,66,2,NULL),(554,100,41,2,NULL),(555,137,63,2,NULL),(556,101,41,2,NULL),(557,162,67,2,NULL),(558,149,63,2,NULL),(559,102,41,2,NULL),(560,100,67,2,NULL),(561,173,63,2,NULL),(562,101,67,2,NULL),(563,162,68,2,NULL),(564,174,63,2,NULL),(565,100,68,2,NULL),(566,102,67,2,NULL),(567,135,70,2,NULL),(568,101,68,2,NULL),(569,137,70,2,NULL),(570,102,68,2,NULL),(571,149,70,2,NULL),(572,162,72,2,NULL),(573,173,70,2,NULL),(574,100,72,2,NULL),(575,174,70,2,NULL),(576,101,72,2,NULL),(577,135,85,2,NULL),(578,102,72,2,NULL),(579,137,85,2,NULL),(580,162,86,2,NULL),(581,149,85,2,NULL),(582,100,86,2,NULL),(583,173,85,2,NULL),(584,101,86,2,NULL),(585,174,85,2,NULL),(586,102,86,2,NULL),(587,135,106,2,NULL),(588,162,87,2,NULL),(589,137,106,2,NULL),(590,100,87,2,NULL),(591,149,106,2,NULL),(592,101,87,2,NULL),(593,173,106,2,NULL),(594,102,87,2,NULL),(595,174,106,2,NULL),(596,135,108,2,NULL),(597,137,108,2,NULL),(598,149,108,2,NULL),(599,173,108,2,NULL),(600,174,108,2,NULL),(601,135,109,2,NULL),(602,137,109,2,NULL),(603,149,109,2,NULL),(604,173,109,2,NULL),(605,174,109,2,NULL),(606,135,110,2,NULL),(607,137,110,2,NULL),(608,149,110,2,NULL),(609,173,110,2,NULL),(610,174,110,2,NULL),(611,142,105,2,NULL),(612,162,106,2,NULL),(613,100,106,2,NULL),(614,101,106,2,NULL),(615,102,106,2,NULL),(616,162,108,2,NULL),(617,100,108,2,NULL),(618,101,108,2,NULL),(619,102,108,2,NULL),(620,162,109,2,NULL),(621,100,109,2,NULL),(622,101,109,2,NULL),(623,102,109,2,NULL),(624,162,110,2,NULL),(625,100,110,2,NULL),(626,101,110,2,NULL),(627,102,110,2,NULL),(628,73,75,2,NULL),(629,75,71,2,NULL),(630,76,77,2,NULL),(631,84,76,2,NULL),(632,91,71,2,NULL),(633,95,71,2,NULL),(634,96,71,2,NULL),(635,162,70,2,NULL),(636,100,70,2,NULL),(637,101,70,2,NULL),(638,102,70,2,NULL),(639,78,73,2,NULL),(640,97,74,2,NULL),(641,100,15,2,NULL),(642,101,15,2,NULL),(643,102,15,2,NULL),(644,100,24,2,NULL),(645,101,24,2,NULL),(646,102,24,2,NULL),(647,100,42,2,NULL),(648,101,42,2,NULL),(649,102,42,2,NULL),(650,100,43,2,NULL),(651,101,43,2,NULL),(652,102,43,2,NULL),(653,100,44,2,NULL),(654,101,44,2,NULL),(655,102,44,2,NULL),(656,100,45,2,NULL),(657,101,45,2,NULL),(658,102,45,2,NULL),(659,100,46,2,NULL),(660,101,46,2,NULL),(661,102,46,2,NULL),(662,100,47,2,NULL),(663,101,47,2,NULL),(664,102,47,2,NULL),(665,100,48,2,NULL),(666,101,48,2,NULL),(667,102,48,2,NULL),(668,100,49,2,NULL),(669,101,49,2,NULL),(670,102,49,2,NULL),(671,100,50,2,NULL),(672,101,50,2,NULL),(673,102,50,2,NULL),(674,100,52,2,NULL),(675,101,52,2,NULL),(676,102,52,2,NULL),(677,100,57,2,NULL),(678,101,57,2,NULL),(679,102,57,2,NULL),(680,100,58,2,NULL),(681,101,58,2,NULL),(682,102,58,2,NULL),(683,100,59,2,NULL),(684,101,59,2,NULL),(685,102,59,2,NULL),(686,100,61,2,NULL),(687,101,61,2,NULL),(688,102,61,2,NULL),(689,100,63,2,NULL),(690,101,63,2,NULL),(691,102,63,2,NULL),(692,100,85,2,NULL),(693,101,85,2,NULL),(694,102,85,2,NULL),(695,79,10,2,NULL),(696,79,22,2,NULL),(697,79,37,2,NULL),(698,79,83,2,NULL),(699,80,10,2,NULL),(700,80,22,2,NULL),(701,80,37,2,NULL),(702,80,83,2,NULL),(703,98,10,2,NULL),(704,98,22,2,NULL),(705,98,37,2,NULL),(706,98,83,2,NULL),(707,99,10,2,NULL),(708,99,22,2,NULL),(709,99,37,2,NULL),(710,99,83,2,NULL),(711,103,11,2,NULL),(712,103,23,2,NULL),(713,103,40,2,NULL),(714,103,84,2,NULL),(715,162,85,2,NULL),(716,105,53,2,NULL),(717,108,53,2,NULL),(718,109,44,2,NULL),(719,110,56,2,NULL),(720,113,56,2,NULL),(721,115,48,2,NULL),(722,119,44,2,NULL),(723,133,43,2,NULL),(724,140,53,2,NULL),(725,162,42,2,NULL),(726,162,43,2,NULL),(727,162,44,2,NULL),(728,162,45,2,NULL),(729,162,46,2,NULL),(730,151,53,2,NULL),(731,162,47,2,NULL),(732,162,48,2,NULL),(733,162,49,2,NULL),(734,162,50,2,NULL),(735,111,54,2,NULL),(736,148,54,2,NULL),(737,158,53,2,NULL),(738,162,52,2,NULL),(739,162,15,2,NULL),(740,162,24,2,NULL),(741,162,57,2,NULL),(742,162,58,2,NULL),(743,162,59,2,NULL),(744,162,61,2,NULL),(745,162,63,2,NULL),(746,146,53,2,NULL),(747,143,53,2,NULL),(748,123,55,2,NULL),(749,136,55,2,NULL),(750,138,55,2,NULL),(751,128,53,2,NULL),(752,159,53,2,NULL),(753,27,10,2,NULL),(754,27,22,2,NULL),(755,27,37,2,NULL),(756,27,83,2,NULL),(757,28,10,2,NULL),(758,28,22,2,NULL),(759,28,37,2,NULL),(760,28,83,2,NULL),(761,38,10,2,NULL),(762,38,22,2,NULL),(763,38,37,2,NULL),(764,38,83,2,NULL),(765,39,10,2,NULL),(766,39,22,2,NULL),(767,39,37,2,NULL),(768,39,83,2,NULL),(769,22,11,2,NULL),(770,22,23,2,NULL),(771,22,40,2,NULL),(772,22,84,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(26,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_PACKAGE_SIZE'),(16,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(21,'android.permission.MODIFY_AUDIO_SETTINGS'),(24,'android.permission.READ_CONTACTS'),(22,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECORD_AUDIO'),(23,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.launcher.permission.INSTALL_SHORTCUT'),(18,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(5,'package','(.*)',NULL,NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(14,NULL,NULL,'https://market.android.com/search?q=pub:%22Smart%20Android%20Apps%2C%20LLC%22',NULL,NULL,NULL),(15,NULL,NULL,'(.*)/(.*)/members',NULL,NULL,NULL),(16,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(17,NULL,NULL,'content://mms/',NULL,NULL,NULL),(18,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(42,NULL,NULL,'content://com.google.android.music.MusicContent/audio/(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://dtmedia/media/(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(45,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(46,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(47,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,2),(2,15,4),(3,20,6),(4,76,13),(5,89,15),(6,94,17),(7,94,18),(8,113,30),(9,124,34),(10,131,37),(11,134,39),(12,142,40),(13,143,41),(14,144,42),(15,150,43),(16,151,44),(17,151,45),(18,151,46),(19,153,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,2,3),(16,2,4),(17,2,5),(18,2,6),(19,2,7),(20,2,8),(21,2,9),(22,2,10),(23,2,11),(24,2,12),(25,2,13),(26,3,1),(27,3,3),(28,3,4),(29,3,5),(30,3,6),(31,3,7),(32,3,8),(33,3,12),(34,3,13),(35,3,14),(36,3,15),(37,4,16),(38,4,1),(39,4,3),(40,4,4),(41,4,5),(42,4,6),(43,4,7),(44,4,8),(45,4,12),(46,4,13),(47,4,14),(48,4,15),(49,5,17),(50,5,1),(51,5,19),(52,5,18),(53,5,21),(54,5,20),(55,5,6),(56,5,8),(57,5,12),(58,5,15),(59,6,1),(60,6,4),(61,6,5),(62,6,6),(63,6,7),(64,6,8),(65,6,12),(66,6,13),(67,6,15),(68,6,16),(69,6,23),(70,6,22),(71,6,25),(72,6,24),(73,6,26),(74,7,1),(75,7,3),(76,7,4),(77,7,5),(78,7,6),(79,7,7),(80,7,25),(81,7,8),(82,7,27),(83,7,11),(84,7,12);
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
