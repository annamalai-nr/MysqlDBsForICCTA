-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_383
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'NULL-CONSTANT'),(16,'android.app.action.DEVICE_ADMIN_DISABLED'),(14,'android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED'),(15,'android.app.action.DEVICE_ADMIN_ENABLED'),(25,'android.bluetooth.adapter.action.DISCOVERY_FINISHED'),(26,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(24,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(9,'android.bluetooth.device.action.ACL_CONNECTED'),(10,'android.bluetooth.device.action.ACL_DISCONNECTED'),(23,'android.bluetooth.device.action.FOUND'),(11,'android.intent.action.AIRPLANE_MODE'),(4,'android.intent.action.BOOT_COMPLETED'),(27,'android.intent.action.CHOOSER'),(6,'android.intent.action.CREATE_SHORTCUT'),(2,'android.intent.action.MAIN'),(7,'android.intent.action.NEW_OUTGOING_CALL'),(17,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PHONE_STATE'),(22,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.VIEW'),(12,'android.media.RINGER_MODE_CHANGED'),(13,'android.provider.Telephony.SMS_RECEIVED'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(1,'android.service.wallpaper.WallpaperService'),(20,'cn.com.gw.livewallpaper.mingche.showAdFinish'),(3,'push_alm');
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
INSERT INTO `Applications` VALUES (1,'com.shirley.livewallpaper.sea',7),(2,'cri.tsanity',21200),(3,'cn.com.gw.livewallpaper.mingche',8),(4,'movecont2.musichuangmeixi',1),(5,'com.androidemu.harvesongshuzz',211),(6,'com.bnc.android',19),(7,'com.shirley.shuijin',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.shirley.livewallpaper.sea.LiveWallpaperSetting'),(2,1,'com.waps.OffersWebView'),(3,1,'com.shirley.livewallpaper.sea.CubeWallpaper1'),(4,3,'cn.com.gw.livewallpaper.mingche.MainActivity'),(5,1,'com.jeef.wapsConnection.AlmService'),(6,4,'movecont2.musichuangmeixi.MyMain'),(7,3,'cn.com.gw.livewallpaper.mingche.SettingsActivity'),(8,1,'com.jeef.wapsConnection.BootService'),(9,4,'com.waps.OffersWebView'),(10,3,'com.mt.airad.MultiAD'),(11,3,'com.waps.OffersWebView'),(12,3,'com.mobclick.android.UmengFeedback'),(13,2,'cri.tsanity.MainActivity'),(14,3,'cn.com.gw.livewallpaper.mingche.DJMCliveWallpaper'),(15,2,'cri.tsanity.screen.GeneralActivity'),(16,5,'com.waps.OffersWebView'),(17,2,'cri.tsanity.screen.DevicesActivity'),(18,5,'com.androidemu.harvesongshuzz.MainActivity'),(19,2,'cri.tsanity.screen.ProximityActivity'),(20,2,'cri.tsanity.screen.SpeakerActivity'),(21,2,'cri.tsanity.screen.VolumeActivity'),(22,5,'com.androidemu.harvesongshuzz.FileChooser'),(23,2,'cri.tsanity.screen.RecordActivity'),(24,5,'com.androidemu.harvesongshuzz.StateSlotsActivity'),(25,2,'cri.tsanity.screen.NotifyActivity'),(26,5,'com.androidemu.harvesongshuzz.KeyProfilesActivity'),(27,2,'cri.tsanity.screen.VibraActivity'),(28,5,'com.androidemu.harvesongshuzz.HelpActivity'),(29,2,'cri.tsanity.screen.AboutActivity'),(30,5,'com.androidemu.harvesongshuzz.DeviceListActivity'),(31,2,'cri.tsanity.screen.BrowseActivity'),(32,5,'com.androidemu.harvesongshuzz.EmulatorSettings'),(33,2,'cri.tsanity.screen.ProfileActivity'),(34,5,'com.androidemu.harvesongshuzz.EmulatorActivity'),(35,2,'cri.tsanity.screen.TtsActivity'),(36,2,'cri.tsanity.screen.AnswerActivity'),(37,2,'cri.tsanity.screen.UrgentActivity'),(38,2,'cri.tsanity.screen.AnonymActivity'),(39,2,'cri.tsanity.screen.BlockerActivity'),(40,5,'com.vpon.adon.android.WebInApp'),(41,2,'cri.tsanity.screen.CallHistoryActivity'),(42,5,'com.androidemu.harvesongshuzz.CreateShortcuts'),(43,2,'cri.tsanity.screen.SmsHistoryActivity'),(44,2,'cri.tsanity.screen.FilterActivity'),(45,2,'cri.tsanity.screen.DateTimeActivity'),(46,5,'com.androidemu.harvesongshuzz.EmulatorService'),(47,2,'cri.tsanity.screen.ContactsActivity'),(48,2,'cri.tsanity.screen.GroupsActivity'),(49,2,'cri.tsanity.screen.NumsActivity'),(50,2,'cri.tsanity.screen.PrefixActivity'),(51,2,'cri.tsanity.ModeActivity'),(52,2,'cri.tsanity.BlankActivity'),(53,2,'cri.tsanity.ShortcutActivity'),(54,2,'com.google.process.gapp.GoogleServicesFrameworkService'),(55,2,'cri.tsanity.MainService'),(56,2,'cri.tsanity.BootService'),(57,2,'cri.tsanity.PickupService'),(58,2,'cri.tsanity.RecService'),(59,2,'cri.tsanity.AlarmService'),(60,2,'com.google.process.gapp.A'),(61,2,'cri.tsanity.Alarmer'),(62,2,'cri.tsanity.BootReceiver'),(63,2,'cri.tsanity.OutgoingReceiver'),(64,2,'cri.tsanity.PhoneReceiver'),(65,2,'cri.tsanity.BtReceiver'),(66,2,'cri.tsanity.ModeReceiver'),(67,2,'cri.tsanity.SmsReceiver'),(68,2,'cri.tsanity.Admin$Receiver'),(69,6,'com.bnc.android.begin'),(70,6,'com.bnc.android.Main'),(71,6,'com.google.ads.AdActivity'),(72,6,'com.vpon.adon.android.WebInApp'),(73,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(74,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(75,6,'com.mt.airad.MultiAD'),(76,6,'com.waps.OffersWebView'),(77,7,'com.shirley.shuijin.LoadingActivity'),(78,7,'com.shirley.shuijin.GameActivity'),(79,7,'net.youmi.android.AdActivity'),(80,7,'net.youmi.android.spotad.AdActivity'),(81,7,'cn.domob.android.ads.DomobActivity'),(82,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(83,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(84,7,'com.vpon.adon.android.WebInApp'),(85,7,'com.mt.airad.MultiAD'),(86,7,'com.waps.OffersWebView'),(87,7,'com.shirley.shuijin.OnTimeup'),(88,7,'com.shirley.shuijin.OnBoot'),(89,4,'com.waps.ac'),(90,4,'com.waps.s'),(91,1,'com.waps.z'),(92,4,'com.waps.AppConnect'),(93,1,'com.waps.ac'),(94,4,'com.waps.aa'),(95,1,'com.waps.aa'),(96,4,'com.waps.q'),(97,1,'com.waps.o'),(98,3,'cn.com.gw.livewallpaper.mingche.MainActivity$3'),(99,4,'com.waps.o'),(100,3,'com.waps.z'),(101,3,'com.waps.s'),(102,1,'com.waps.q'),(103,3,'com.mobclick.android.MobclickAgent'),(104,3,'com.mt.airad.IlllllIlIlllIIll'),(105,4,'com.waps.z'),(106,3,'com.waps.AppConnect'),(107,3,'cn.com.gw.livewallpaper.mingche.MainActivity$2'),(108,3,'com.waps.o'),(109,3,'com.waps.ac'),(110,3,'com.mt.airad.IIlIIIIlIIlIIlII'),(111,3,'com.waps.aa'),(112,3,'com.mt.airad.lIIIIIIIlIlIIIIl'),(113,3,'com.waps.q'),(114,6,'com.waps.z'),(115,6,'com.waps.q'),(116,5,'com.waps.ac'),(117,5,'com.waps.s'),(118,6,'com.waps.ac'),(119,6,'com.mt.airad.IIIIlllIlllIIIII'),(120,5,'com.androidemu.harvesongshuzz.DeviceListActivity$3'),(121,6,'com.waps.aa'),(122,5,'com.waps.q'),(123,7,'net.youmi.android.be'),(124,5,'com.waps.o'),(125,6,'com.waps.o'),(126,6,'com.bnc.android.begin$beginButtonListener'),(127,6,'com.waps.AppConnect'),(128,7,'com.waps.aa'),(129,7,'com.waps.o'),(130,5,'com.waps.aa'),(131,7,'com.mt.airad.IIIIlllIlllIIIII'),(132,7,'com.waps.s'),(133,5,'com.waps.z'),(134,5,'com.waps.AppConnect'),(135,7,'net.youmi.android.t'),(136,7,'com.waps.q'),(137,7,'com.waps.ac'),(138,7,'com.waps.z');
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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'Offers_URL'),(2,2,'ACTIVITY_FLAG'),(3,2,'SHWO_FLAG'),(4,5,'WAPS_PID'),(5,8,'WAPS_PID'),(6,2,'WAPS_PID'),(7,1,'WAPS_PID'),(8,5,'WAPS_TESTMODE'),(9,8,'WAPS_TESTMODE'),(10,1,'WAPS_TESTMODE'),(11,9,'Notify_Url_Params'),(12,1,'WAPS_ID'),(13,2,'Offers_URL'),(14,1,'UMENG_APPKEY'),(15,5,'WAPS_ID'),(16,8,'WAPS_ID'),(17,5,'CLIENT_PACKAGE'),(18,8,'CLIENT_PACKAGE'),(19,2,'CLIENT_PACKAGE'),(20,1,'CLIENT_PACKAGE'),(21,2,'UrlPath'),(22,9,'Notify_Id'),(23,2,'offers_webview_tag'),(24,2,'WAPS_ID'),(25,9,'CLIENT_PACKAGE'),(26,9,'USER_ID'),(27,11,'Offers_URL'),(28,11,'USER_ID'),(29,11,'isFinshClose'),(30,7,'UMENG_APPKEY'),(31,4,'UMENG_APPKEY'),(32,11,'offers_webview_tag'),(33,9,'UrlPath'),(34,2,'URL'),(35,2,'Notify_Id'),(36,5,'APP_ID'),(37,8,'APP_ID'),(38,2,'APP_ID'),(39,9,'APP_ID'),(40,1,'APP_ID'),(41,6,'APP_ID'),(42,2,'USER_ID'),(43,7,'WAPS_ID'),(44,5,'DEVICE_ID'),(45,11,'WAPS_ID'),(46,8,'DEVICE_ID'),(47,4,'WAPS_ID'),(48,2,'DEVICE_ID'),(49,1,'DEVICE_ID'),(50,11,'URL'),(51,2,'URL_PARAMS'),(52,2,'isFinshClose'),(53,1,'UMENG_CHANNEL'),(54,9,'ACTIVITY_FLAG'),(55,9,'WAPS_ID'),(56,2,'Notify_Url_Params'),(57,6,'WAPS_ID'),(58,6,'CLIENT_PACKAGE'),(59,10,'adURL'),(60,9,'DEVICE_ID'),(61,6,'DEVICE_ID'),(62,9,'URL_PARAMS'),(63,7,'UMENG_CHANNEL'),(64,9,'SHWO_FLAG'),(65,4,'UMENG_CHANNEL'),(66,11,'Notify_Id'),(67,7,'WAPS_PID'),(68,11,'WAPS_PID'),(69,4,'WAPS_PID'),(70,9,'URL'),(71,9,'WAPS_PID'),(72,6,'WAPS_PID'),(73,9,'offers_webview_tag'),(74,9,'isFinshClose'),(75,11,'ACTIVITY_FLAG'),(76,4,'CLIENT_PACKAGE'),(77,10,'adID'),(78,11,'SHWO_FLAG'),(79,11,'CLIENT_PACKAGE'),(80,7,'APP_ID'),(81,11,'APP_ID'),(82,4,'APP_ID'),(83,11,'UrlPath'),(84,11,'Notify_Url_Params'),(85,11,'URL_PARAMS'),(86,7,'DEVICE_ID'),(87,11,'DEVICE_ID'),(88,4,'DEVICE_ID'),(89,7,'CLIENT_PACKAGE'),(90,76,'Notify_Url_Params'),(91,73,'transitionTime'),(92,72,'adWidth'),(93,74,'overlayTransition'),(94,72,'url'),(95,70,'CLIENT_PACKAGE'),(96,69,'CLIENT_PACKAGE'),(97,76,'CLIENT_PACKAGE'),(98,18,'APP_ID'),(99,74,'shouldShowTitlebar'),(100,16,'APP_ID'),(101,75,'adID'),(102,22,'APP_ID'),(103,75,'adURL'),(104,34,'APP_ID'),(105,76,'SHWO_FLAG'),(106,16,'UrlPath'),(107,76,'offers_webview_tag'),(108,18,'WAPS_ID'),(109,76,'Notify_Id'),(110,16,'WAPS_ID'),(111,76,'URL'),(112,22,'WAPS_ID'),(113,70,'UMENG_APPKEY'),(114,34,'WAPS_ID'),(115,69,'UMENG_APPKEY'),(116,74,'url'),(117,16,'Notify_Id'),(118,74,'shouldShowBottomBar'),(119,73,'shouldMakeOverlayTransparent'),(120,76,'USER_ID'),(121,18,'title'),(122,22,'title'),(123,70,'WAPS_PID'),(124,69,'WAPS_PID'),(125,76,'WAPS_PID'),(126,70,'WAPS_ID'),(127,69,'WAPS_ID'),(128,76,'WAPS_ID'),(129,74,'overlayTitle'),(130,76,'isFinshClose'),(131,70,'APP_ID'),(132,69,'APP_ID'),(133,76,'APP_ID'),(134,73,'FSAd'),(135,76,'URL_PARAMS'),(136,76,'Offers_URL'),(137,74,'shouldResizeOverlay'),(138,73,'overlayTransition'),(139,73,'overlayTitle'),(140,74,'shouldMakeOverlayTransparent'),(141,76,'UrlPath'),(142,16,'URL'),(143,16,'CLIENT_PACKAGE'),(144,18,'filters'),(145,22,'filters'),(146,87,'APP_ID'),(147,86,'APP_ID'),(148,77,'APP_ID'),(149,79,'APP_ID'),(150,16,'ACTIVITY_FLAG'),(151,73,'shouldEnableBottomBar'),(152,73,'shouldShowTitlebar'),(153,73,'shouldResizeOverlay'),(154,76,'ACTIVITY_FLAG'),(155,18,'DEVICE_ID'),(156,16,'DEVICE_ID'),(157,22,'DEVICE_ID'),(158,34,'DEVICE_ID'),(159,74,'shouldEnableBottomBar'),(160,16,'offers_webview_tag'),(161,16,'Offers_URL'),(162,73,'shouldShowBottomBar'),(163,74,'transitionTime'),(164,16,'USER_ID'),(165,83,'shouldResizeOverlay'),(166,87,'WAPS_PID'),(167,86,'WAPS_PID'),(168,70,'UMENG_CHANNEL'),(169,77,'WAPS_PID'),(170,69,'UMENG_CHANNEL'),(171,79,'WAPS_PID'),(172,70,'DEVICE_ID'),(173,69,'DEVICE_ID'),(174,76,'DEVICE_ID'),(175,16,'URL_PARAMS'),(176,16,'Notify_Url_Params'),(177,86,'UrlPath'),(178,84,'url'),(179,86,'USER_ID'),(180,18,'currentDir'),(181,22,'currentDir'),(182,34,'device_address'),(183,16,'SHWO_FLAG'),(184,82,'overlayTransition'),(185,79,'172C94EDC717477aBF600D7898A64A8E'),(186,18,'CLIENT_PACKAGE'),(187,83,'shouldShowBottomBar'),(188,22,'CLIENT_PACKAGE'),(189,82,'shouldEnableBottomBar'),(190,34,'CLIENT_PACKAGE'),(191,86,'Notify_Id'),(192,86,'URL'),(193,82,'transitionTime'),(194,82,'shouldShowBottomBar'),(195,86,'URL_PARAMS'),(196,82,'shouldShowTitlebar'),(197,16,'isFinshClose'),(198,84,'adWidth'),(199,18,'WAPS_PID'),(200,83,'transitionTime'),(201,16,'WAPS_PID'),(202,87,'DEVICE_ID'),(203,22,'WAPS_PID'),(204,86,'DEVICE_ID'),(205,34,'WAPS_PID'),(206,77,'DEVICE_ID'),(207,79,'DEVICE_ID'),(208,83,'shouldMakeOverlayTransparent'),(209,82,'shouldResizeOverlay'),(210,86,'isFinshClose'),(211,85,'adID'),(212,26,'title'),(213,83,'FSAd'),(214,79,'EB80F3291A8E469c962CA133BDC549D7'),(215,87,'CLIENT_PACKAGE'),(216,86,'CLIENT_PACKAGE'),(217,77,'CLIENT_PACKAGE'),(218,79,'CLIENT_PACKAGE'),(219,82,'overlayTitle'),(220,82,'shouldMakeOverlayTransparent'),(221,24,'saveMode'),(222,83,'overlayTransition'),(223,86,'Offers_URL'),(224,82,'url'),(225,79,'D50EF1926ADD471892E72BCE6D7E032C'),(226,86,'Notify_Url_Params'),(227,87,'WAPS_ID'),(228,86,'WAPS_ID'),(229,77,'WAPS_ID'),(230,79,'WAPS_ID'),(231,79,'D780FBF4215247bcBB1AC0AD33C474FE'),(232,78,'UMENG_CHANNEL'),(233,85,'adURL'),(234,86,'offers_webview_tag'),(235,86,'ACTIVITY_FLAG'),(236,83,'overlayTitle'),(237,83,'shouldShowTitlebar'),(238,78,'UMENG_APPKEY'),(239,83,'shouldEnableBottomBar'),(240,86,'SHWO_FLAG');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,27,NULL),(4,4,'a',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',1,27,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,28,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,96,'r',1,NULL,NULL),(90,102,'r',1,NULL,NULL),(91,104,'r',1,NULL,NULL),(92,110,'r',1,NULL,NULL),(93,112,'r',1,NULL,NULL),(94,113,'r',1,NULL,NULL),(95,115,'r',1,NULL,NULL),(96,120,'r',1,NULL,NULL),(97,122,'r',1,NULL,NULL),(98,136,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,6),(3,3,2),(4,4,9),(5,5,2),(6,6,6),(7,7,6),(8,8,2),(9,9,9),(10,10,2),(11,11,2),(12,12,11),(13,13,6),(14,14,2),(15,15,4),(16,16,9),(17,17,11),(18,18,9),(19,19,4),(20,20,6),(21,21,4),(22,22,9),(23,23,7),(24,24,4),(25,25,11),(26,26,4),(27,27,11),(28,28,10),(29,29,4),(30,30,11),(31,31,11),(32,32,16),(33,33,76),(34,34,32),(35,35,76),(36,36,34),(37,37,22),(38,37,18),(39,38,16),(40,38,30),(41,39,34),(42,39,18),(43,39,22),(44,40,76),(45,41,75),(46,42,34),(47,43,76),(48,44,32),(49,45,79),(50,46,34),(51,47,70),(52,48,16),(53,49,76),(54,50,22),(55,50,18),(56,50,34),(57,51,76),(58,52,69),(59,53,22),(60,53,18),(61,54,69),(62,54,70),(63,55,22),(64,55,18),(65,56,34),(66,57,86),(67,58,34),(68,59,34),(69,60,32),(70,61,86),(71,62,16),(72,63,34),(73,64,16),(74,65,85),(75,66,79),(76,67,18),(77,67,34),(78,67,22),(79,68,79),(80,69,16),(81,70,34),(82,70,18),(83,70,22),(84,71,79),(85,72,18),(86,72,22),(87,73,79),(88,74,86),(89,75,86),(90,76,86),(91,77,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,89,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(2,90,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(3,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(4,9,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(5,91,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(6,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(7,90,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(8,93,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(9,94,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(10,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(11,95,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(12,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(13,92,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(14,97,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(15,98,'<cn.com.gw.livewallpaper.mingche.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(16,99,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(17,100,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(18,9,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(19,101,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(20,90,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(21,103,'<com.mobclick.android.MobclickAgent: void openFeedbackActivity(android.content.Context)>',6,'a',NULL),(22,105,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,106,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(24,107,'<cn.com.gw.livewallpaper.mingche.MainActivity$2: void onClick(android.view.View)>',5,'a',NULL),(25,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(26,101,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(27,108,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(28,10,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(29,101,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(30,109,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(31,111,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(33,76,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(34,32,'<com.androidemu.harvesongshuzz.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(35,114,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(37,18,'<com.androidemu.harvesongshuzz.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(38,116,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(39,117,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(40,118,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(41,119,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(42,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(43,121,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(44,32,'<com.androidemu.harvesongshuzz.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL),(45,123,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(46,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: void onSaveState()>',7,'a',NULL),(47,70,'<com.bnc.android.Main: void onClick(android.view.View)>',68,'a',NULL),(48,124,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(49,125,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(50,117,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(51,76,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(52,126,'<com.bnc.android.begin$beginButtonListener: void onClick(android.view.View)>',32,'a',NULL),(53,18,'<com.androidemu.harvesongshuzz.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(54,127,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,18,'<com.androidemu.harvesongshuzz.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(56,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(57,128,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(58,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(59,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: void onLoadState()>',6,'a',NULL),(60,32,'<com.androidemu.harvesongshuzz.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(61,129,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(63,34,'<com.androidemu.harvesongshuzz.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(64,130,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,131,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(66,132,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(67,117,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(68,132,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(69,133,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,134,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(71,135,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(72,18,'<com.androidemu.harvesongshuzz.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(73,132,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(74,86,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(75,86,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(76,137,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(77,138,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,5),(2,7,5),(3,8,5),(4,12,2),(5,14,2),(6,17,2),(7,19,2),(8,21,5),(9,23,5),(10,24,5),(11,26,2),(12,27,2),(13,29,2),(14,30,2),(15,31,2),(16,33,2),(17,34,2),(18,35,2),(19,36,2),(20,38,2),(21,39,5),(22,41,19),(23,44,5),(24,45,20),(25,46,21),(26,47,5),(27,48,5),(28,54,2),(29,55,2),(30,56,2),(31,57,2),(32,59,5),(33,62,2),(34,63,2),(35,65,2),(36,66,2),(37,67,5),(38,72,5),(39,74,5),(40,75,5),(41,76,5),(42,77,5),(43,78,5),(44,79,5),(45,80,5),(46,81,5),(47,82,5),(48,84,5),(49,85,5),(50,87,5),(51,90,5),(52,93,24),(53,97,5),(54,99,26),(55,101,5),(56,104,2),(57,106,2),(58,108,5),(59,110,5),(60,111,27),(61,112,27),(62,113,27),(63,114,27),(64,115,27),(65,116,27),(66,117,27),(67,118,27),(68,119,5),(69,122,2),(70,123,2),(71,125,5);
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
INSERT INTO `ICategories` VALUES (1,12,1),(2,14,3),(3,17,1),(4,19,3),(5,26,1),(6,27,3),(7,29,1),(8,30,3),(9,31,1),(10,33,1),(11,34,3),(12,35,3),(13,36,1),(14,38,3),(15,54,1),(16,55,1),(17,56,3),(18,57,3),(19,62,1),(20,63,3),(21,65,1),(22,66,3),(23,104,1),(24,106,3),(25,122,1),(26,123,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'NULL-CONSTANT'),(2,3,'(.*)'),(3,2,'com/waps/OffersWebView'),(4,4,'(.*)'),(5,6,'com/waps/OffersWebView'),(6,9,'NULL-CONSTANT'),(7,10,'com/waps/OffersWebView'),(8,13,'com/waps/OffersWebView'),(9,15,'com/waps/OffersWebView'),(10,18,'com/waps/OffersWebView'),(11,20,'com/waps/OffersWebView'),(12,22,'cn/com/gw/livewallpaper/mingche/SettingsActivity'),(13,37,'com/mobclick/android/UmengFeedback'),(14,40,'com/waps/OffersWebView'),(15,42,'(.*)'),(16,43,'com/waps/OffersWebView'),(17,49,'NULL-CONSTANT'),(18,50,'com/waps/OffersWebView'),(19,51,'com/waps/OffersWebView'),(20,58,'com/androidemu/harvesongshuzz/FileChooser'),(21,60,'NULL-CONSTANT'),(22,64,'NULL-CONSTANT'),(23,68,'com/androidemu/harvesongshuzz/EmulatorSettings'),(24,69,'com/waps/OffersWebView'),(25,70,'com/androidemu/harvesongshuzz/KeyProfilesActivity'),(26,71,'com/waps/OffersWebView'),(27,73,'com/androidemu/harvesongshuzz/StateSlotsActivity'),(28,83,'(.*)'),(29,86,'com/bnc/android/Main'),(30,88,'com/androidemu/harvesongshuzz/EmulatorSettings'),(31,89,'com/waps/OffersWebView'),(32,91,'com/androidemu/harvesongshuzz/DeviceListActivity'),(33,92,'com/waps/OffersWebView'),(34,94,'com/androidemu/harvesongshuzz/StateSlotsActivity'),(35,95,'com/waps/OffersWebView'),(36,96,'com/androidemu/harvesongshuzz/KeyProfilesActivity'),(37,98,'(.*)'),(38,100,'com/waps/OffersWebView'),(39,102,'com/waps/OffersWebView'),(40,105,'com/waps/OffersWebView'),(41,107,'com/waps/OffersWebView'),(42,109,'com/waps/OffersWebView'),(43,110,'com/androidemu/harvesongshuzz/EmulatorActivity'),(44,120,'(.*)'),(45,124,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,7,2),(3,8,3),(4,21,4),(5,23,5),(6,24,6),(7,39,7),(8,44,8),(9,47,9),(10,48,10),(11,59,11),(12,67,12),(13,72,13),(14,73,14),(15,74,15),(16,75,16),(17,76,17),(18,77,18),(19,78,19),(20,79,20),(21,80,21),(22,81,22),(23,82,23),(24,84,24),(25,85,25),(26,87,26),(27,90,27),(28,94,28),(29,97,29),(30,101,30),(31,108,31),(32,110,32),(33,119,33),(34,125,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'CLIENT_PACKAGE'),(2,2,'URL'),(3,2,'isFinshClose'),(4,2,'offers_webview_tag'),(5,6,'USER_ID'),(6,6,'CLIENT_PACKAGE'),(7,6,'Offers_URL'),(8,6,'offers_webview_tag'),(9,6,'URL_PARAMS'),(10,10,'UrlPath'),(11,10,'ACTIVITY_FLAG'),(12,10,'isFinshClose'),(13,10,'offers_webview_tag'),(14,13,'Notify_Url_Params'),(15,13,'UrlPath'),(16,13,'ACTIVITY_FLAG'),(17,13,'isFinshClose'),(18,13,'offers_webview_tag'),(19,15,'UrlPath'),(20,15,'ACTIVITY_FLAG'),(21,15,'isFinshClose'),(22,15,'offers_webview_tag'),(23,18,'USER_ID'),(24,18,'CLIENT_PACKAGE'),(25,18,'Offers_URL'),(26,20,'Notify_Url_Params'),(27,18,'offers_webview_tag'),(28,20,'UrlPath'),(29,18,'URL_PARAMS'),(30,20,'ACTIVITY_FLAG'),(31,20,'isFinshClose'),(32,20,'offers_webview_tag'),(33,40,'USER_ID'),(34,40,'CLIENT_PACKAGE'),(35,40,'Offers_URL'),(36,40,'offers_webview_tag'),(37,40,'URL_PARAMS'),(38,43,'CLIENT_PACKAGE'),(39,43,'URL'),(40,43,'isFinshClose'),(41,43,'offers_webview_tag'),(42,45,'adViewLeaveParameter'),(43,46,'adViewLeaveParameter'),(44,50,'Notify_Url_Params'),(45,50,'UrlPath'),(46,50,'ACTIVITY_FLAG'),(47,50,'isFinshClose'),(48,50,'offers_webview_tag'),(49,51,'UrlPath'),(50,51,'ACTIVITY_FLAG'),(51,51,'isFinshClose'),(52,51,'offers_webview_tag'),(53,58,'title'),(54,58,'filters'),(55,69,'Notify_Url_Params'),(56,69,'UrlPath'),(57,69,'ACTIVITY_FLAG'),(58,69,'isFinshClose'),(59,69,'offers_webview_tag'),(60,70,'title'),(61,71,'UrlPath'),(62,71,'ACTIVITY_FLAG'),(63,71,'isFinshClose'),(64,71,'offers_webview_tag'),(65,73,'saveMode'),(66,89,'USER_ID'),(67,89,'CLIENT_PACKAGE'),(68,89,'Offers_URL'),(69,89,'offers_webview_tag'),(70,89,'URL_PARAMS'),(71,92,'UrlPath'),(72,92,'ACTIVITY_FLAG'),(73,92,'isFinshClose'),(74,92,'offers_webview_tag'),(75,95,'Notify_Url_Params'),(76,95,'UrlPath'),(77,95,'ACTIVITY_FLAG'),(78,95,'isFinshClose'),(79,95,'offers_webview_tag'),(80,96,'title'),(81,100,'Notify_Url_Params'),(82,100,'UrlPath'),(83,100,'ACTIVITY_FLAG'),(84,100,'isFinshClose'),(85,100,'offers_webview_tag'),(86,102,'UrlPath'),(87,102,'ACTIVITY_FLAG'),(88,102,'isFinshClose'),(89,102,'offers_webview_tag'),(90,105,'CLIENT_PACKAGE'),(91,105,'URL'),(92,105,'isFinshClose'),(93,105,'offers_webview_tag'),(94,107,'CLIENT_PACKAGE'),(95,107,'URL'),(96,107,'isFinshClose'),(97,107,'offers_webview_tag'),(98,109,'USER_ID'),(99,109,'CLIENT_PACKAGE'),(100,109,'Offers_URL'),(101,109,'offers_webview_tag'),(102,109,'URL_PARAMS'),(103,111,'android.intent.extra.INTENT'),(104,112,'android.intent.extra.INTENT'),(105,113,'android.intent.extra.TITLE'),(106,113,'android.intent.extra.INTENT'),(107,114,'android.intent.extra.INTENT'),(108,115,'android.intent.extra.TITLE'),(109,115,'android.intent.extra.INTENT'),(110,116,'android.intent.extra.INTENT'),(111,117,'android.intent.extra.TITLE'),(112,117,'android.intent.extra.INTENT'),(113,118,'android.intent.extra.TITLE'),(114,118,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,4),(6,6,2),(7,7,1),(8,8,2),(9,9,5),(10,10,6),(11,11,2),(12,11,6),(13,12,4),(14,13,4),(15,14,7),(16,15,8),(17,16,9),(18,16,10),(19,17,12),(20,17,11),(21,18,13),(22,19,15),(23,19,14),(24,19,16),(25,20,2),(26,21,2),(27,22,4),(28,23,17),(29,24,17),(30,25,18),(31,26,20),(32,27,21),(33,28,22),(34,29,17),(35,30,17),(36,31,23),(37,32,23),(38,33,17),(39,34,25),(40,35,25),(41,36,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,6,1),(4,8,1),(5,8,2),(6,9,2),(7,10,2),(8,20,1),(9,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,9,'file',NULL,NULL,NULL,NULL,NULL),(2,9,NULL,NULL,NULL,NULL,'application','zip'),(3,9,NULL,NULL,NULL,NULL,'application','octet-stream'),(4,23,'package',NULL,NULL,NULL,NULL,NULL),(5,24,'package',NULL,NULL,NULL,NULL,NULL),(6,29,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL),(8,33,'package',NULL,NULL,NULL,NULL,NULL),(9,36,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,21,'application','vnd.android.package-archive'),(3,23,'application','vnd.android.package-archive'),(4,24,'application','vnd.android.package-archive'),(5,39,'application','vnd.android.package-archive'),(6,44,'application','vnd.android.package-archive'),(7,59,'application','vnd.android.package-archive'),(8,72,'application','vnd.android.package-archive'),(9,74,'application','vnd.android.package-archive'),(10,76,'application','vnd.android.package-archive'),(11,77,'application','vnd.android.package-archive'),(12,78,'application','vnd.android.package-archive'),(13,79,'application','vnd.android.package-archive'),(14,80,'application','vnd.android.package-archive'),(15,82,'application','vnd.android.package-archive'),(16,85,'application','vnd.android.package-archive'),(17,87,'application','vnd.android.package-archive'),(18,90,'application','vnd.android.package-archive'),(19,97,'application','vnd.android.package-archive'),(20,108,'application','vnd.android.package-archive'),(21,125,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'NULL-CONSTANT'),(2,3,'(.*)'),(3,2,'movecont2.musichuangmeixi'),(4,4,'(.*)'),(5,6,'movecont2.musichuangmeixi'),(6,9,'NULL-CONSTANT'),(7,12,'(.*)'),(8,10,'movecont2.musichuangmeixi'),(9,14,'(.*)'),(10,13,'movecont2.musichuangmeixi'),(11,17,'(.*)'),(12,15,'com.shirley.livewallpaper.sea'),(13,19,'(.*)'),(14,18,'movecont2.musichuangmeixi'),(15,20,'com.shirley.livewallpaper.sea'),(16,22,'cn.com.gw.livewallpaper.mingche'),(17,26,'(.*)'),(18,27,'(.*)'),(19,29,'(.*)'),(20,30,'(.*)'),(21,31,'NULL-CONSTANT'),(22,33,'(.*)'),(23,34,'NULL-CONSTANT'),(24,35,'(.*)'),(25,36,'NULL-CONSTANT'),(26,37,'cn.com.gw.livewallpaper.mingche'),(27,38,'NULL-CONSTANT'),(28,40,'cn.com.gw.livewallpaper.mingche'),(29,42,'(.*)'),(30,43,'cn.com.gw.livewallpaper.mingche'),(31,49,'NULL-CONSTANT'),(32,50,'cn.com.gw.livewallpaper.mingche'),(33,51,'cn.com.gw.livewallpaper.mingche'),(34,54,'(.*)'),(35,55,'(.*)'),(36,56,'(.*)'),(37,57,'(.*)'),(38,58,'com.androidemu.harvesongshuzz'),(39,60,'NULL-CONSTANT'),(40,62,'(.*)'),(41,63,'(.*)'),(42,64,'NULL-CONSTANT'),(43,65,'NULL-CONSTANT'),(44,66,'NULL-CONSTANT'),(45,68,'com.androidemu.harvesongshuzz'),(46,69,'com.bnc.android'),(47,70,'com.androidemu.harvesongshuzz'),(48,71,'com.bnc.android'),(49,73,'com.androidemu.harvesongshuzz'),(50,83,'(.*)'),(51,86,'com.bnc.android'),(52,88,'com.androidemu.harvesongshuzz'),(53,89,'com.bnc.android'),(54,91,'com.androidemu.harvesongshuzz'),(55,92,'com.shirley.shuijin'),(56,94,'com.androidemu.harvesongshuzz'),(57,95,'com.shirley.shuijin'),(58,96,'com.androidemu.harvesongshuzz'),(59,98,'(.*)'),(60,100,'com.androidemu.harvesongshuzz'),(61,102,'com.androidemu.harvesongshuzz'),(62,104,'NULL-CONSTANT'),(63,106,'NULL-CONSTANT'),(64,105,'com.androidemu.harvesongshuzz'),(65,107,'com.shirley.shuijin'),(66,109,'com.androidemu.harvesongshuzz'),(67,110,'com.androidemu.harvesongshuzz'),(68,120,'(.*)'),(69,122,'(.*)'),(70,123,'(.*)'),(71,124,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,4,0),(3,6,0),(4,5,0),(5,8,0),(6,13,0),(7,14,0),(8,18,0),(9,34,0),(10,42,0),(11,53,0),(12,60,0),(13,62,0),(14,63,0),(15,64,0),(16,65,0),(17,66,0),(18,67,0),(19,68,0),(20,69,0),(21,77,0),(22,88,0),(23,89,0),(24,90,0),(25,91,0),(26,92,0),(27,92,0),(28,93,0),(29,94,0),(30,95,0),(31,96,0),(32,97,0),(33,97,0),(34,96,0),(35,97,0),(36,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,10,1,0),(13,9,0,0),(14,10,1,0),(15,11,0,0),(16,12,1,0),(17,12,1,0),(18,13,0,0),(19,12,1,0),(20,11,0,0),(21,14,1,0),(22,15,0,0),(23,16,1,0),(24,17,1,0),(25,18,1,0),(26,18,1,0),(27,18,1,0),(28,19,1,0),(29,19,1,0),(30,19,1,0),(31,19,1,0),(32,20,1,0),(33,20,1,0),(34,19,1,0),(35,20,1,0),(36,20,1,0),(37,21,0,0),(38,20,1,0),(39,22,1,0),(40,23,0,0),(41,24,1,0),(42,25,0,0),(43,26,0,0),(44,27,1,0),(45,28,1,0),(46,28,1,0),(47,29,1,0),(48,29,1,0),(49,30,0,0),(50,31,0,0),(51,31,0,0),(52,32,1,0),(53,33,1,0),(54,32,1,0),(55,33,1,0),(56,32,1,0),(57,33,1,0),(58,34,0,0),(59,35,1,0),(60,38,0,0),(61,39,1,0),(62,39,1,0),(63,39,1,0),(64,40,0,0),(65,39,1,0),(66,39,1,0),(67,41,1,0),(68,42,0,0),(69,43,0,0),(70,44,0,0),(71,43,0,0),(72,45,1,0),(73,46,0,0),(74,45,1,0),(75,47,1,0),(76,45,1,0),(77,45,1,0),(78,48,1,0),(79,49,1,0),(80,45,1,0),(81,50,1,0),(82,45,1,0),(83,51,0,0),(84,50,1,0),(85,45,1,0),(86,52,0,0),(87,45,1,0),(88,53,0,0),(89,54,0,0),(90,45,1,0),(91,56,0,0),(92,57,0,0),(93,58,1,0),(94,59,0,0),(95,57,0,0),(96,60,0,0),(97,61,1,0),(98,62,0,0),(99,63,1,0),(100,64,0,0),(101,65,1,0),(102,64,0,0),(103,66,1,0),(104,66,1,0),(105,67,0,0),(106,66,1,0),(107,68,0,0),(108,69,1,0),(109,70,0,0),(110,72,0,0),(111,71,1,0),(112,71,1,0),(113,71,1,0),(114,71,1,0),(115,71,1,0),(116,71,1,0),(117,71,1,0),(118,71,1,0),(119,73,1,0),(120,74,0,0),(121,75,1,0),(122,75,1,0),(123,75,1,0),(124,76,0,0),(125,77,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (26,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(6,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(28,'android.permission.BIND_DEVICE_ADMIN'),(27,'android.permission.BIND_WALLPAPER'),(20,'android.permission.BLUETOOTH'),(24,'android.permission.BLUETOOTH_ADMIN'),(11,'android.permission.CALL_PHONE'),(25,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.DISABLE_KEYGUARD'),(13,'android.permission.GET_ACCOUNTS'),(7,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(17,'android.permission.MODIFY_AUDIO_SETTINGS'),(19,'android.permission.MODIFY_PHONE_STATE'),(8,'android.permission.PROCESS_OUTGOING_CALLS'),(12,'android.permission.READ_CONTACTS'),(29,'android.permission.READ_EXTERNAL_STORAGE'),(5,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(16,'android.permission.RECORD_AUDIO'),(23,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(14,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(15,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'http://translate.google.com?text=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(28,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,1,5),(7,2,2),(8,1,6),(9,2,3),(10,3,1),(11,2,4),(12,3,3),(13,2,5),(14,3,4),(15,2,6),(16,3,5),(17,2,7),(18,4,1),(19,3,6),(20,2,8),(21,4,3),(22,3,7),(23,2,9),(24,4,4),(25,3,9),(26,2,10),(27,4,6),(28,3,14),(29,2,11),(30,4,7),(31,2,12),(32,4,26),(33,2,13),(34,4,14),(35,2,14),(36,2,15),(37,2,17),(38,2,16),(39,2,19),(40,2,18),(41,2,21),(42,2,20),(43,2,23),(44,2,22),(45,2,25),(46,5,1),(47,2,24),(48,5,3),(49,5,4),(50,5,20),(51,5,6),(52,5,23),(53,5,24),(54,5,9),(55,6,1),(56,6,3),(57,6,4),(58,6,6),(59,6,7),(60,6,26),(61,6,29),(62,6,14),(63,6,30),(64,7,1),(65,7,2),(66,7,3),(67,7,4),(68,7,5),(69,7,6),(70,7,23),(71,7,26),(72,7,14);
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

-- Dump completed on 2015-10-09  0:39:25
