-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_725
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'android.appwidget.action.APPWIDGET_UPDATE'),(14,'android.intent.actcom.SyndicateApps.ICS.IconPacks.mainpps.ICS.IconPacks.main.category.LAUNCHER'),(5,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CHOOSER'),(29,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PHONE_STATE'),(26,'android.intent.action.SENDTO'),(13,'android.intent.action.SET_WALLPAPER'),(18,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(24,'com.airpush.android.PushServiceStart(.*)'),(7,'com.airpush.android.PushServiceStart19681'),(8,'com.airpush.android.PushServiceStart38967'),(3,'com.airpush.android.PushServiceStart47980'),(6,'com.airpush.android.PushServiceStart53097'),(11,'com.airpush.android.PushServiceStart58274'),(28,'com.airpush.android.PushServiceStartInvalid'),(25,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(27,'com.airpush.android.PushServiceStartinvalid Id'),(15,'com.android.launcher.action.INSTALL_SHORTCUT'),(16,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(12,'com.android.vending.INSTALL_REFERRER'),(20,'com.android.vending.billing.IN_APP_NOTIFY'),(21,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(22,'com.android.vending.billing.RESPONSE_CODE'),(4,'com.jiubang.goscreenlock.theme'),(19,'com.quipper.a.query'),(10,'enMusicAPPPLAY');
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
INSERT INTO `Applications` VALUES (1,'com.jacksonfan.messi',1),(2,'com.coollocker.blubabepanda',2),(3,'com.antonio.fruits.free',9),(4,'com.nocito.nocitolivebobmarley',1),(5,'com.bsr.music.app',9),(6,'mobi.SyndicateApps.ICSv2',14002011),(7,'com.quipack.a.b4e60d33797abcc0004000438',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(5,'android.intent.category.MONKEY'),(7,'com.quipper.a.query.TOPIC');
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.jacksonfan.messi.AppLauncher'),(2,1,'com.airpush.android.PushAds'),(3,1,'com.jacksonfan.messi.Preferences'),(4,1,'com.jacksonfan.messi.MoreAppActivity'),(5,1,'com.jacksonfan.messi.RihanaWallpaper'),(6,1,'com.airpush.android.PushService'),(7,1,'com.apperhand.device.android.AndroidSDKProvider'),(8,1,'com.airpush.android.UserDetailsReceiver'),(9,2,'com.coollocker.blubabepanda.GOLockerInstallDialog'),(10,1,'com.airpush.android.MessageReceiver'),(11,3,'com.antonio.fruits.free.AcGridMenu'),(12,1,'com.airpush.android.DeliveryReceiver'),(13,1,'com.jacksonfan.messi.BootReceiver'),(14,3,'com.antonio.fruits.free.AcRateMeWith5Stars'),(15,2,'com.airpush.android.PushAds'),(16,3,'com.antonio.fruits.free.AcMyApps'),(17,2,'com.coollocker.blubabepanda.GoDownloadServiceervice'),(18,1,'com.Leadbolt.AdNotification'),(19,3,'com.antonio.fruits.free.AcNews'),(20,2,'com.airpush.android.PushService'),(21,3,'com.antonio.fruits.free.AcAds'),(22,1,'com.jacksonfan.messi.LeadBoltBootReceiver'),(23,3,'com.antonio.fruits.free.AcInformation'),(24,3,'com.antonio.fruits.free.AcAbout'),(25,2,'com.apperhand.device.android.AndroidSDKProvider'),(26,3,'com.antonio.fruits.free.AcNewspaper'),(27,2,'com.airpush.android.UserDetailsReceiver'),(28,3,'com.antonio.fruits.free.AcMenu'),(29,2,'com.airpush.android.MessageReceiver'),(30,3,'com.antonio.fruits.free.AcEULA'),(31,2,'com.airpush.android.DeliveryReceiver'),(32,3,'com.antonio.fruits.free.AcFruitProperties'),(33,2,'com.coollocker.blubabepanda.BootReceiver'),(34,3,'com.airpush.android.PushAds'),(35,3,'com.apperhand.device.android.AndroidSDKProvider'),(36,2,'com.Leadbolt.AdNotification'),(37,3,'com.airpush.android.PushService'),(38,3,'com.airpush.android.UserDetailsReceiver'),(39,3,'com.airpush.android.MessageReceiver'),(40,3,'com.airpush.android.DeliveryReceiver'),(41,3,'com.antonio.fruits.free.airpush'),(42,4,'com.nocito.nocitolivebobmarley.TabSettingsActivity'),(43,4,'com.nocito.nocitolivebobmarley.LiveWallpaperSettings'),(44,4,'com.airpush.android.PushAds'),(45,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(46,4,'com.nocito.nocitolivebobmarley.SampleLiveWallpaperService'),(47,4,'com.apperhand.device.android.AndroidSDKProvider'),(48,4,'com.airpush.android.PushService'),(49,4,'com.airpush.android.UserDetailsReceiver'),(50,4,'com.airpush.android.MessageReceiver'),(51,4,'com.airpush.android.DeliveryReceiver'),(52,4,'com.nocito.nocitolivebobmarley.BootReceiver'),(53,5,'com.bsr.music.app.MegaMusicActivity'),(54,5,'com.bsr.music.app.frmWebPlayerActivity'),(55,5,'com.bsr.music.app.frmAbout'),(56,5,'com.google.ads.AdActivity'),(57,5,'com.bsr.music.app.SongsActivity'),(58,5,'com.bsr.music.app.frmSongSearch'),(59,5,'com.bsr.music.app.lstLibrary'),(60,5,'com.bsr.music.app.lstMediaStore'),(61,5,'com.bsr.music.app.frmSongArchive'),(62,5,'com.bsr.music.app.frmLibraryActivity'),(63,5,'com.bsr.music.app.frmPlayerActivity'),(64,5,'com.bsr.music.app.frmSearchActivity'),(65,5,'com.bsr.music.app.frmLyricList'),(66,5,'com.bsr.music.app.frmLyricView'),(67,5,'com.bsr.music.app.frmCache'),(68,5,'com.bsr.music.app.frmCacheView'),(69,5,'com.airpush.android.PushAds'),(70,5,'com.appbrain.AppBrainActivity'),(71,5,'com.bsr.music.app.MusicAppService'),(72,5,'com.airpush.android.PushService'),(73,5,'com.appbrain.AppBrainService'),(74,5,'com.airpush.android.UserDetailsReceiver'),(75,5,'com.airpush.android.MessageReceiver'),(76,5,'com.airpush.android.DeliveryReceiver'),(77,5,'com.bsr.music.app.BootReceiver'),(78,5,'com.appbrain.ReferrerReceiver'),(79,6,'mobi.SyndicateApps.ICSv2.Launcher'),(80,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettings'),(81,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBar'),(82,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsScreen'),(83,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsDrawer'),(84,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsGeneral'),(85,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsSystem'),(86,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsUI'),(87,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsBackupRestore'),(88,6,'mobi.SyndicateApps.ICSv2.SettingsOMEGAtemplates'),(89,6,'mobi.SyndicateApps.ICSv2.SettingsADWtemplates'),(90,6,'mobi.SyndicateApps.ICSv2.SettingsAHOMEtemplates'),(91,6,'mobi.SyndicateApps.ICSv2.SettingsGOLAUNCHERtemplates'),(92,6,'mobi.SyndicateApps.ICSv2.SettingsLPtemplates'),(93,6,'com.SyndicateApps.Extra.SetPreference'),(94,6,'com.SyndicateApps.Extra.SetOmegaOwner'),(95,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBarExpanded'),(96,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBarExpandedTier1'),(97,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBarExpandedTier2'),(98,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBarExpandedTier3'),(99,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsOmegaBarExpandedTier4'),(100,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsColorTweaks'),(101,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsRootUser'),(102,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsText'),(103,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsBatteryPrefs'),(104,6,'mobi.SyndicateApps.ICSv2.MyLauncherSettingsTextAdvanced'),(105,6,'mobi.SyndicateApps.ICSv2.ActivityPickerActivity'),(106,6,'mobi.SyndicateApps.ICSv2.CustomShirtcutActivity'),(107,6,'com.SyndicateApps.Extra.WallpaperChooserv2'),(108,6,'mobi.SyndicateApps.ICSv2.catalogue.AppInfoMList'),(109,6,'com.SyndicateApps.Extra.BatteryLevelActivity'),(110,6,'com.SyndicateApps.Extra.CoverFlow'),(111,6,'com.SyndicateApps.Extra.Omega_Drop_CoverFlow'),(112,6,'com.SyndicateApps.Extra.Omega_Drop'),(113,6,'com.SyndicateApps.Extra.CarrierEditPreference'),(114,6,'mobi.SyndicateApps.ICSv2.SBSettingsStyledPreview'),(115,6,'mobi.SyndicateApps.ICSv2.OmegaMenu'),(116,6,'com.SyndicateApps.Extra.CustomAndroidSettings'),(117,6,'mobi.SyndicateApps.ICSv2.User.Logs.UserLogOmegaLauncher'),(118,6,'com.SyndicateApps.Extra.ActivateRootSettings'),(119,6,'com.SyndicateApps.Extra.CheckForProTextPrefs'),(120,6,'com.SyndicateApps.Extra.CheckForProBetteryPrefs'),(121,6,'com.SyndicateApps.Extra.CheckForProColorPrefs'),(122,6,'com.SyndicateApps.Extra.EditScreens'),(123,6,'mobi.SyndicateApps.ICSv2.ThemeSelector'),(124,6,'mobi.SyndicateApps.ICSv2.Market.MarketHome'),(125,6,'com.apperhand.device.android.AndroidSDKProvider'),(126,6,'mobi.SyndicateApps.ICSv2.InstallShortcutReceiver'),(127,6,'mobi.SyndicateApps.ICSv2.UninstallShortcutReceiver'),(128,6,'com.SyndicateApps.Extra.Analog_Clock_Widget'),(129,6,'mobi.SyndicateApps.ICSv2.LauncherProvider'),(130,7,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(131,7,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(132,7,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(133,7,'com.quipper.a.v5.single.activities.PurchaseActivity'),(134,7,'com.quipper.a.v5.activities.FlowControlActivity'),(135,7,'com.quipper.a.v5.activities.WebViewActivity'),(136,7,'com.quipper.a.v5.activities.LanderRibbonActivity'),(137,7,'com.quipper.a.v5.activities.UserPriorityActivity'),(138,7,'com.quipper.a.v5.single.activities.TopicActivity'),(139,7,'com.quipper.a.v5.activities.TopicReviewActivity'),(140,7,'com.quipper.a.v5.activities.VideoPlayerActivity'),(141,7,'com.quipper.a.v5.activities.TwitterActivity'),(142,7,'com.quipper.a.v5.activities.TwitterConnectActivity'),(143,7,'com.quipper.a.v5.activities.ShareActivity'),(144,7,'com.quipper.a.v5.activities.QuipperDialog'),(145,7,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(146,7,'com.quipper.a.v5.activities.LoginActivity'),(147,7,'com.quipper.a.v5.activities.SignupActivity'),(148,7,'com.quipper.a.v5.activities.AgreementActivity'),(149,7,'com.quipper.a.v5.activities.FacebookConnectActivity'),(150,7,'com.quipper.a.v5.single.billing.BillingService'),(151,7,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(152,7,'com.apperhand.device.android.AndroidSDKProvider'),(153,7,'com.quipper.a.v5.single.receivers.TopicReceiver'),(154,7,'com.quipper.a.v5.single.billing.BillingReceiver'),(155,7,'com.Leadbolt.AdNotification'),(156,7,'com.quipper.a.v5.single.BootReceiver'),(157,3,'com.antonio.fruits.free.preference.options.SharedOptions'),(158,3,'com.apperhand.device.android.a.a'),(159,3,'com.antonio.fruits.free.values.Values'),(160,3,'com.apperhand.device.android.a.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,40,'creativeId'),(2,34,'campId'),(3,37,'text'),(4,37,'campId'),(5,34,'header'),(6,37,'appId'),(7,40,'campId'),(8,34,'apikey'),(9,40,'appId'),(10,34,'creativeId'),(11,40,'imei'),(12,37,'apikey'),(13,35,'USER_AGENT'),(14,37,'creativeId'),(15,37,'number'),(16,40,'title'),(17,34,'number'),(18,34,'appId'),(19,40,'text'),(20,32,'EXTRA_FRUIT'),(21,34,'url'),(22,40,'url'),(23,40,'number'),(24,40,'imageurl'),(25,37,'title'),(26,16,'EXTRA_DONT_SHOW_APPS1'),(27,37,'link'),(28,40,'sms'),(29,37,'testMode'),(30,37,'imageurl'),(31,37,'header'),(32,35,'APPLICATION_ID'),(33,37,'url'),(34,35,'M_SERVER_URL'),(35,40,'apikey'),(36,37,'adType'),(37,32,'PARCELABLE_LIST_HISTORY'),(38,34,'test'),(39,37,'sms'),(40,37,'type'),(41,34,'sms'),(42,35,'DEVELOPER_ID'),(43,34,'adType'),(44,35,'FIRST_RUN'),(45,40,'header');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',1,26,NULL),(6,6,'s',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',0,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',1,26,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',1,NULL,NULL),(72,72,'s',1,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'r',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',1,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'a',0,NULL,NULL),(122,122,'a',0,NULL,NULL),(123,123,'a',0,NULL,NULL),(124,124,'a',0,NULL,NULL),(125,80,'a',1,NULL,NULL),(126,125,'s',0,NULL,NULL),(127,126,'r',1,14,NULL),(128,127,'r',1,16,NULL),(129,128,'r',1,NULL,NULL),(130,129,'p',0,NULL,NULL),(131,130,'a',1,NULL,NULL),(132,131,'a',0,NULL,NULL),(133,132,'a',0,NULL,NULL),(134,133,'a',0,NULL,NULL),(135,134,'a',0,NULL,NULL),(136,135,'a',0,NULL,NULL),(137,136,'a',0,NULL,NULL),(138,137,'a',0,NULL,NULL),(139,138,'a',0,NULL,NULL),(140,139,'a',0,NULL,NULL),(141,140,'a',0,NULL,NULL),(142,141,'a',0,NULL,NULL),(143,142,'a',1,NULL,NULL),(144,143,'a',0,NULL,NULL),(145,144,'a',0,NULL,NULL),(146,145,'a',0,NULL,NULL),(147,146,'a',0,NULL,NULL),(148,147,'a',0,NULL,NULL),(149,148,'a',0,NULL,NULL),(150,149,'a',0,NULL,NULL),(151,150,'s',0,NULL,NULL),(152,151,'s',0,NULL,NULL),(153,152,'s',0,NULL,NULL),(154,153,'r',1,NULL,NULL),(155,154,'r',1,NULL,NULL),(156,155,'r',0,NULL,NULL),(157,156,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,11),(3,3,35),(4,4,28),(5,5,11),(6,6,28),(7,7,11),(8,8,11),(9,9,34),(10,10,11),(11,11,11),(12,12,28),(13,13,11),(14,14,34),(15,15,11),(16,16,34),(17,17,34),(18,18,35),(19,19,39),(20,20,35),(21,21,34),(22,22,28),(23,23,40),(24,24,35),(25,25,28),(26,26,16),(27,26,14),(28,26,28),(29,27,38),(30,28,28),(31,29,35),(32,30,11),(33,31,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.antonio.fruits.free.AcGridMenu: void onClick(android.view.View)>',36,'a',NULL),(2,157,'<com.antonio.fruits.free.preference.options.SharedOptions: void checkRating(android.content.Context)>',5,'a',NULL),(3,158,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(4,28,'<com.antonio.fruits.free.AcMenu: void onClick(android.view.View)>',11,'a',NULL),(5,157,'<com.antonio.fruits.free.preference.options.SharedOptions: void checkMyApps(android.content.Context)>',5,'a',NULL),(6,28,'<com.antonio.fruits.free.AcMenu: void share()>',14,'a',NULL),(7,11,'<com.antonio.fruits.free.AcGridMenu: void fruitProperties(android.widget.ImageButton,android.widget.TextView,java.lang.String,android.view.View,com.antonio.fruits.free.objects.Fruit)>',23,'a',NULL),(8,11,'<com.antonio.fruits.free.AcGridMenu: void onClick(android.view.View)>',15,'a',NULL),(9,34,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(10,157,'<com.antonio.fruits.free.preference.options.SharedOptions: void checkNewspaper(android.content.Context)>',5,'a',NULL),(11,157,'<com.antonio.fruits.free.preference.options.SharedOptions: void checkNews(android.content.Context)>',5,'a',NULL),(12,159,'<com.antonio.fruits.free.values.Values: void webSite(android.content.Context,java.lang.String)>',5,'a',NULL),(13,11,'<com.antonio.fruits.free.AcGridMenu: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(14,34,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(15,11,'<com.antonio.fruits.free.AcGridMenu: void checkEULA()>',5,'a',NULL),(16,34,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(17,34,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(18,160,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(19,39,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(20,160,'<com.apperhand.device.android.a.e: java.util.List a()>',13,'p',NULL),(21,34,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(22,28,'<com.antonio.fruits.free.AcMenu: void onClick(android.view.View)>',23,'a',NULL),(23,40,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(24,160,'<com.apperhand.device.android.a.e: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(25,28,'<com.antonio.fruits.free.AcMenu: void onClick(android.view.View)>',35,'a',NULL),(26,159,'<com.antonio.fruits.free.values.Values: void applicationSearch(android.content.Context,java.lang.String)>',5,'a',NULL),(27,38,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(28,28,'<com.antonio.fruits.free.AcMenu: void onClick(android.view.View)>',17,'a',NULL),(29,158,'<com.apperhand.device.android.a.a: java.util.List d()>',13,'p',NULL),(30,35,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',21,'s',NULL),(31,19,'<com.antonio.fruits.free.AcNews: void onClick(android.view.View)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,15),(2,6,23),(3,7,23),(4,8,23),(5,9,23),(6,10,23),(7,11,23),(8,12,23),(9,13,23),(10,16,24),(11,17,25),(12,20,18),(13,21,18),(14,23,24),(15,24,25),(16,26,24),(17,27,25),(18,28,26),(19,29,24),(20,30,27),(21,31,28),(22,32,29),(23,35,24),(24,36,24),(25,37,25),(26,38,24),(27,39,24),(28,40,25),(29,41,25),(30,42,25),(31,44,18),(32,45,18),(33,46,18),(34,47,18),(35,48,18),(36,49,18),(37,50,18),(38,51,18),(39,52,18),(40,53,18),(41,54,18),(42,55,18),(43,56,18),(44,57,18),(45,58,18),(46,59,18),(47,60,18),(48,61,18),(49,62,18),(50,63,18),(51,64,18),(52,65,18),(53,66,24),(54,67,28),(55,68,27),(56,71,18);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/antonio/fruits/free/AcNews'),(2,2,'com/antonio/fruits/free/AcRateMeWith5Stars'),(3,4,'com/antonio/fruits/free/AcInformation'),(4,5,'com/antonio/fruits/free/AcMyApps'),(5,14,'com/antonio/fruits/free/AcFruitProperties'),(6,15,'com/antonio/fruits/free/AcFruitProperties'),(7,18,'com/antonio/fruits/free/AcNewspaper'),(8,19,'com/antonio/fruits/free/AcNews'),(9,22,'com/antonio/fruits/free/AcMenu'),(10,25,'com/antonio/fruits/free/AcEULA'),(11,33,'com/antonio/fruits/free/AcNewspaper'),(12,43,'com/antonio/fruits/free/AcMyApps'),(13,69,'com/antonio/fruits/free/AcAbout'),(14,70,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,20,1),(2,21,2),(3,28,3),(4,32,6),(5,44,8),(6,45,9),(7,46,10),(8,47,11),(9,48,12),(10,49,13),(11,50,14),(12,51,15),(13,52,16),(14,53,17),(15,54,18),(16,55,19),(17,56,20),(18,57,21),(19,58,22),(20,59,23),(21,60,24),(22,61,25),(23,62,26),(24,63,27),(25,64,28),(26,65,29),(27,71,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.shortcut.NAME'),(2,3,'android.intent.extra.shortcut.ICON'),(3,3,'android.intent.extra.shortcut.INTENT'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.TITLE'),(13,12,'android.intent.extra.INTENT'),(14,13,'android.intent.extra.TITLE'),(15,13,'android.intent.extra.INTENT'),(16,14,'EXTRA_FRUIT'),(17,15,'EXTRA_FRUIT'),(18,16,'<INTENT>'),(19,16,'type'),(20,17,'<INTENT>'),(21,17,'type'),(22,23,'<INTENT>'),(23,23,'type'),(24,24,'<INTENT>'),(25,24,'type'),(26,26,'<INTENT>'),(27,26,'type'),(28,27,'<INTENT>'),(29,27,'type'),(30,28,'sms_body'),(31,29,'icon'),(32,29,'appId'),(33,29,'testMode'),(34,29,'type'),(35,29,'apikey'),(36,30,'icon'),(37,30,'appId'),(38,30,'testMode'),(39,30,'type'),(40,30,'apikey'),(41,31,'icon'),(42,31,'appId'),(43,31,'testMode'),(44,31,'type'),(45,31,'apikey'),(46,35,'campId'),(47,35,'text'),(48,35,'title'),(49,35,'creativeId'),(50,35,'appId'),(51,35,'expiry_time'),(52,35,'number'),(53,35,'adType'),(54,35,'type'),(55,35,'sms'),(56,35,'imageurl'),(57,35,'apikey'),(58,36,'campId'),(59,36,'title'),(60,36,'text'),(61,36,'creativeId'),(62,36,'appId'),(63,36,'expiry_time'),(64,36,'link'),(65,36,'adType'),(66,36,'type'),(67,36,'imageurl'),(68,36,'header'),(69,36,'apikey'),(70,37,'campId'),(71,37,'text'),(72,37,'title'),(73,37,'creativeId'),(74,37,'appId'),(75,37,'expiry_time'),(76,37,'number'),(77,37,'adType'),(78,37,'type'),(79,37,'sms'),(80,37,'imageurl'),(81,37,'apikey'),(82,38,'title'),(83,38,'text'),(84,38,'appId'),(85,38,'expiry_time'),(86,38,'number'),(87,38,'adType'),(88,38,'type'),(89,38,'imageurl'),(90,38,'apikey'),(91,39,'campId'),(92,39,'title'),(93,39,'text'),(94,39,'creativeId'),(95,39,'appId'),(96,39,'expiry_time'),(97,39,'link'),(98,39,'adType'),(99,39,'type'),(100,39,'imageurl'),(101,39,'apikey'),(102,40,'campId'),(103,40,'title'),(104,40,'text'),(105,40,'creativeId'),(106,40,'appId'),(107,40,'expiry_time'),(108,40,'link'),(109,40,'adType'),(110,40,'type'),(111,40,'imageurl'),(112,40,'header'),(113,40,'apikey'),(114,41,'title'),(115,41,'text'),(116,41,'appId'),(117,41,'expiry_time'),(118,41,'number'),(119,41,'adType'),(120,41,'type'),(121,41,'imageurl'),(122,41,'apikey'),(123,42,'campId'),(124,42,'title'),(125,42,'text'),(126,42,'creativeId'),(127,42,'appId'),(128,42,'expiry_time'),(129,42,'link'),(130,42,'adType'),(131,42,'type'),(132,42,'imageurl'),(133,42,'apikey'),(134,43,'EXTRA_DONT_SHOW_APPS1'),(135,66,'appId'),(136,66,'type'),(137,66,'apikey'),(138,67,'appId'),(139,67,'type'),(140,67,'apikey'),(141,68,'appId'),(142,68,'type'),(143,68,'apikey'),(144,70,'M_SERVER_URL'),(145,70,'USER_AGENT'),(146,70,'SERVICE_MODE'),(147,70,'FIRST_RUN'),(148,70,'DEVELOPER_ID'),(149,70,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,1),(7,7,5),(8,9,5),(9,8,6),(10,10,5),(11,11,7),(12,12,5),(13,13,2),(14,14,8),(15,15,5),(16,16,1),(17,17,9),(18,18,10),(19,19,11),(20,20,5),(21,21,12),(22,22,1),(23,23,13),(24,24,14),(25,27,15),(26,28,16),(27,29,17),(28,30,1),(29,31,18),(30,32,19),(31,33,22),(32,33,20),(33,33,21),(34,34,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,2),(4,6,1),(5,7,3),(6,10,3),(7,12,3),(8,15,3),(9,16,2),(10,20,3),(11,22,3),(12,22,4),(13,22,5),(14,23,4),(15,25,2),(16,26,2),(17,30,2),(18,31,4),(19,31,6),(20,32,7);
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
INSERT INTO `IFData` VALUES (1,31,'baseapp',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.antonio.fruits.free'),(2,2,'com.antonio.fruits.free'),(3,4,'com.antonio.fruits.free'),(4,5,'com.antonio.fruits.free'),(5,14,'com.antonio.fruits.free'),(6,15,'com.antonio.fruits.free'),(7,18,'com.antonio.fruits.free'),(8,19,'com.antonio.fruits.free'),(9,22,'com.antonio.fruits.free'),(10,25,'com.antonio.fruits.free'),(11,33,'com.antonio.fruits.free'),(12,43,'com.antonio.fruits.free'),(13,69,'com.antonio.fruits.free'),(14,70,'com.antonio.fruits.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,9,0),(5,11,0),(6,9,0),(7,13,0),(8,20,0),(9,22,0),(10,33,0),(11,37,0),(12,41,0),(13,46,0),(14,48,0),(15,52,0),(16,53,0),(17,63,0),(18,71,0),(19,72,0),(20,77,0),(21,78,0),(22,79,0),(23,107,0),(24,107,0),(25,107,0),(26,125,0),(27,127,0),(28,128,0),(29,129,0),(30,131,0),(31,143,0),(32,154,0),(33,155,0),(34,157,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,6,1,0),(13,6,1,0),(14,7,0,0),(15,8,0,0),(16,9,1,0),(17,9,1,0),(18,10,0,0),(19,11,0,0),(20,12,1,0),(21,12,1,0),(22,13,0,0),(23,14,1,0),(24,14,1,0),(25,15,0,0),(26,16,1,0),(27,16,1,0),(28,17,1,0),(29,19,1,0),(30,19,1,0),(31,19,1,0),(32,21,1,0),(33,22,0,0),(34,23,1,0),(35,23,1,0),(36,23,1,0),(37,23,1,0),(38,23,1,0),(39,23,1,0),(40,23,1,0),(41,23,1,0),(42,23,1,0),(43,25,0,0),(44,26,1,0),(45,26,1,0),(46,26,1,0),(47,26,1,0),(48,26,1,0),(49,26,1,0),(50,26,1,0),(51,26,1,0),(52,26,1,0),(53,26,1,0),(54,26,1,0),(55,26,1,0),(56,26,1,0),(57,26,1,0),(58,26,1,0),(59,26,1,0),(60,26,1,0),(61,26,1,0),(62,26,1,0),(63,26,1,0),(64,26,1,0),(65,26,1,0),(66,27,1,0),(67,27,1,0),(68,27,1,0),(69,28,0,0),(70,30,0,0),(71,31,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=946 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,19,2,NULL),(2,14,32,2,NULL),(3,15,32,2,NULL),(4,22,28,2,NULL),(5,25,30,2,NULL),(6,6,11,2,NULL),(7,7,11,2,NULL),(8,8,11,2,NULL),(9,9,11,2,NULL),(10,10,11,2,NULL),(11,11,11,2,NULL),(12,12,11,2,NULL),(13,13,11,2,NULL),(14,16,11,2,NULL),(15,17,11,2,NULL),(16,23,11,2,NULL),(17,24,11,2,NULL),(18,26,11,2,NULL),(19,27,11,2,NULL),(20,28,11,2,NULL),(21,32,11,2,NULL),(22,66,11,2,NULL),(23,67,11,2,NULL),(24,68,11,2,NULL),(25,29,11,2,NULL),(26,30,11,2,NULL),(27,31,11,2,NULL),(28,34,11,2,NULL),(29,35,11,2,NULL),(30,36,11,2,NULL),(31,37,11,2,NULL),(32,38,11,2,NULL),(33,39,11,2,NULL),(34,40,11,2,NULL),(35,41,11,2,NULL),(36,42,11,2,NULL),(37,4,23,2,NULL),(38,33,26,2,NULL),(39,43,16,2,NULL),(40,69,24,2,NULL),(41,6,1,2,NULL),(42,7,1,2,NULL),(43,8,1,2,NULL),(44,9,1,2,NULL),(45,10,1,2,NULL),(46,11,1,2,NULL),(47,12,1,2,NULL),(48,13,1,2,NULL),(49,6,5,2,NULL),(50,7,5,2,NULL),(51,8,5,2,NULL),(52,9,5,2,NULL),(53,10,5,2,NULL),(54,11,5,2,NULL),(55,12,5,2,NULL),(56,13,5,2,NULL),(57,6,6,2,NULL),(58,7,6,2,NULL),(59,8,6,2,NULL),(60,9,6,2,NULL),(61,10,6,2,NULL),(62,11,6,2,NULL),(63,12,6,2,NULL),(64,13,6,2,NULL),(65,6,13,2,NULL),(66,7,13,2,NULL),(67,8,13,2,NULL),(68,9,13,2,NULL),(69,10,13,2,NULL),(70,11,13,2,NULL),(71,12,13,2,NULL),(72,13,13,2,NULL),(73,6,22,2,NULL),(74,7,22,2,NULL),(75,8,22,2,NULL),(76,9,22,2,NULL),(77,10,22,2,NULL),(78,11,22,2,NULL),(79,12,22,2,NULL),(80,13,22,2,NULL),(81,6,9,2,NULL),(82,7,9,2,NULL),(83,8,9,2,NULL),(84,9,9,2,NULL),(85,10,9,2,NULL),(86,11,9,2,NULL),(87,12,9,2,NULL),(88,13,9,2,NULL),(89,6,20,2,NULL),(90,7,20,2,NULL),(91,8,20,2,NULL),(92,9,20,2,NULL),(93,10,20,2,NULL),(94,11,20,2,NULL),(95,12,20,2,NULL),(96,13,20,2,NULL),(97,6,33,2,NULL),(98,7,33,2,NULL),(99,8,33,2,NULL),(100,9,33,2,NULL),(101,10,33,2,NULL),(102,11,33,2,NULL),(103,12,33,2,NULL),(104,13,33,2,NULL),(105,6,37,2,NULL),(106,7,37,2,NULL),(107,8,37,2,NULL),(108,9,37,2,NULL),(109,10,37,2,NULL),(110,11,37,2,NULL),(111,12,37,2,NULL),(112,13,37,2,NULL),(113,6,41,2,NULL),(114,7,41,2,NULL),(115,8,41,2,NULL),(116,9,41,2,NULL),(117,10,41,2,NULL),(118,11,41,2,NULL),(119,12,41,2,NULL),(120,13,41,2,NULL),(121,6,46,2,NULL),(122,7,46,2,NULL),(123,8,46,2,NULL),(124,9,46,2,NULL),(125,10,46,2,NULL),(126,11,46,2,NULL),(127,12,46,2,NULL),(128,13,46,2,NULL),(129,6,48,2,NULL),(130,7,48,2,NULL),(131,8,48,2,NULL),(132,9,48,2,NULL),(133,10,48,2,NULL),(134,11,48,2,NULL),(135,12,48,2,NULL),(136,13,48,2,NULL),(137,6,52,2,NULL),(138,7,52,2,NULL),(139,8,52,2,NULL),(140,9,52,2,NULL),(141,10,52,2,NULL),(142,11,52,2,NULL),(143,12,52,2,NULL),(144,13,52,2,NULL),(145,6,53,2,NULL),(146,7,53,2,NULL),(147,8,53,2,NULL),(148,9,53,2,NULL),(149,10,53,2,NULL),(150,11,53,2,NULL),(151,12,53,2,NULL),(152,13,53,2,NULL),(153,6,63,2,NULL),(154,7,63,2,NULL),(155,8,63,2,NULL),(156,9,63,2,NULL),(157,10,63,2,NULL),(158,11,63,2,NULL),(159,12,63,2,NULL),(160,13,63,2,NULL),(161,6,71,2,NULL),(162,7,71,2,NULL),(163,8,71,2,NULL),(164,9,71,2,NULL),(165,10,71,2,NULL),(166,11,71,2,NULL),(167,12,71,2,NULL),(168,13,71,2,NULL),(169,6,72,2,NULL),(170,7,72,2,NULL),(171,8,72,2,NULL),(172,9,72,2,NULL),(173,10,72,2,NULL),(174,11,72,2,NULL),(175,12,72,2,NULL),(176,13,72,2,NULL),(177,6,77,2,NULL),(178,7,77,2,NULL),(179,8,77,2,NULL),(180,9,77,2,NULL),(181,10,77,2,NULL),(182,11,77,2,NULL),(183,12,77,2,NULL),(184,13,77,2,NULL),(185,6,78,2,NULL),(186,7,78,2,NULL),(187,8,78,2,NULL),(188,9,78,2,NULL),(189,10,78,2,NULL),(190,11,78,2,NULL),(191,12,78,2,NULL),(192,13,78,2,NULL),(193,6,79,2,NULL),(194,7,79,2,NULL),(195,8,79,2,NULL),(196,9,79,2,NULL),(197,10,79,2,NULL),(198,11,79,2,NULL),(199,12,79,2,NULL),(200,13,79,2,NULL),(201,6,125,2,NULL),(202,7,125,2,NULL),(203,8,125,2,NULL),(204,9,125,2,NULL),(205,10,125,2,NULL),(206,11,125,2,NULL),(207,12,125,2,NULL),(208,13,125,2,NULL),(209,6,107,2,NULL),(210,7,107,2,NULL),(211,8,107,2,NULL),(212,9,107,2,NULL),(213,10,107,2,NULL),(214,11,107,2,NULL),(215,12,107,2,NULL),(216,13,107,2,NULL),(217,6,127,2,NULL),(218,7,127,2,NULL),(219,8,127,2,NULL),(220,9,127,2,NULL),(221,10,127,2,NULL),(222,11,127,2,NULL),(223,12,127,2,NULL),(224,13,127,2,NULL),(225,6,128,2,NULL),(226,7,128,2,NULL),(227,16,46,2,NULL),(228,8,128,2,NULL),(229,17,46,2,NULL),(230,9,128,2,NULL),(231,23,46,2,NULL),(232,10,128,2,NULL),(233,24,46,2,NULL),(234,11,128,2,NULL),(235,26,46,2,NULL),(236,12,128,2,NULL),(237,27,46,2,NULL),(238,13,128,2,NULL),(239,28,46,2,NULL),(240,6,129,2,NULL),(241,32,46,2,NULL),(242,7,129,2,NULL),(243,66,46,2,NULL),(244,8,129,2,NULL),(245,67,46,2,NULL),(246,9,129,2,NULL),(247,68,46,2,NULL),(248,10,129,2,NULL),(249,29,46,2,NULL),(250,11,129,2,NULL),(251,30,46,2,NULL),(252,12,129,2,NULL),(253,31,46,2,NULL),(254,13,129,2,NULL),(255,34,46,2,NULL),(256,6,131,2,NULL),(257,35,46,2,NULL),(258,7,131,2,NULL),(259,36,46,2,NULL),(260,8,131,2,NULL),(261,37,46,2,NULL),(262,9,131,2,NULL),(263,38,46,2,NULL),(264,10,131,2,NULL),(265,39,46,2,NULL),(266,11,131,2,NULL),(267,40,46,2,NULL),(268,12,131,2,NULL),(269,41,46,2,NULL),(270,13,131,2,NULL),(271,42,46,2,NULL),(272,6,154,2,NULL),(273,16,48,2,NULL),(274,7,154,2,NULL),(275,17,48,2,NULL),(276,8,154,2,NULL),(277,23,48,2,NULL),(278,9,154,2,NULL),(279,24,48,2,NULL),(280,10,154,2,NULL),(281,26,48,2,NULL),(282,11,154,2,NULL),(283,27,48,2,NULL),(284,12,154,2,NULL),(285,28,48,2,NULL),(286,13,154,2,NULL),(287,32,48,2,NULL),(288,6,155,2,NULL),(289,66,48,2,NULL),(290,7,155,2,NULL),(291,67,48,2,NULL),(292,8,155,2,NULL),(293,68,48,2,NULL),(294,9,155,2,NULL),(295,29,48,2,NULL),(296,10,155,2,NULL),(297,30,48,2,NULL),(298,11,155,2,NULL),(299,31,48,2,NULL),(300,12,155,2,NULL),(301,34,48,2,NULL),(302,13,155,2,NULL),(303,35,48,2,NULL),(304,6,157,2,NULL),(305,36,48,2,NULL),(306,7,157,2,NULL),(307,37,48,2,NULL),(308,8,157,2,NULL),(309,38,48,2,NULL),(310,9,157,2,NULL),(311,39,48,2,NULL),(312,10,157,2,NULL),(313,40,48,2,NULL),(314,11,157,2,NULL),(315,41,48,2,NULL),(316,12,157,2,NULL),(317,42,48,2,NULL),(318,13,157,2,NULL),(319,16,52,2,NULL),(320,16,1,2,NULL),(321,17,52,2,NULL),(322,17,1,2,NULL),(323,23,52,2,NULL),(324,23,1,2,NULL),(325,24,52,2,NULL),(326,24,1,2,NULL),(327,26,52,2,NULL),(328,26,1,2,NULL),(329,27,52,2,NULL),(330,27,1,2,NULL),(331,28,52,2,NULL),(332,28,1,2,NULL),(333,32,52,2,NULL),(334,32,1,2,NULL),(335,66,52,2,NULL),(336,16,5,2,NULL),(337,67,52,2,NULL),(338,17,5,2,NULL),(339,68,52,2,NULL),(340,23,5,2,NULL),(341,29,52,2,NULL),(342,24,5,2,NULL),(343,30,52,2,NULL),(344,26,5,2,NULL),(345,31,52,2,NULL),(346,27,5,2,NULL),(347,34,52,2,NULL),(348,28,5,2,NULL),(349,35,52,2,NULL),(350,32,5,2,NULL),(351,36,52,2,NULL),(352,16,6,2,NULL),(353,37,52,2,NULL),(354,17,6,2,NULL),(355,38,52,2,NULL),(356,23,6,2,NULL),(357,39,52,2,NULL),(358,24,6,2,NULL),(359,40,52,2,NULL),(360,26,6,2,NULL),(361,41,52,2,NULL),(362,27,6,2,NULL),(363,42,52,2,NULL),(364,28,6,2,NULL),(365,32,6,2,NULL),(366,16,13,2,NULL),(367,17,13,2,NULL),(368,23,13,2,NULL),(369,24,13,2,NULL),(370,26,13,2,NULL),(371,27,13,2,NULL),(372,28,13,2,NULL),(373,32,13,2,NULL),(374,16,22,2,NULL),(375,17,22,2,NULL),(376,23,22,2,NULL),(377,24,22,2,NULL),(378,26,22,2,NULL),(379,27,22,2,NULL),(380,28,22,2,NULL),(381,32,22,2,NULL),(382,16,9,2,NULL),(383,17,9,2,NULL),(384,23,9,2,NULL),(385,24,9,2,NULL),(386,26,9,2,NULL),(387,27,9,2,NULL),(388,28,9,2,NULL),(389,32,9,2,NULL),(390,16,20,2,NULL),(391,17,20,2,NULL),(392,23,20,2,NULL),(393,24,20,2,NULL),(394,26,20,2,NULL),(395,27,20,2,NULL),(396,28,20,2,NULL),(397,32,20,2,NULL),(398,16,33,2,NULL),(399,17,33,2,NULL),(400,23,33,2,NULL),(401,24,33,2,NULL),(402,26,33,2,NULL),(403,27,33,2,NULL),(404,28,33,2,NULL),(405,32,33,2,NULL),(406,16,37,2,NULL),(407,17,37,2,NULL),(408,23,37,2,NULL),(409,24,37,2,NULL),(410,26,37,2,NULL),(411,27,37,2,NULL),(412,28,37,2,NULL),(413,32,37,2,NULL),(414,16,41,2,NULL),(415,17,41,2,NULL),(416,23,41,2,NULL),(417,24,41,2,NULL),(418,26,41,2,NULL),(419,27,41,2,NULL),(420,28,41,2,NULL),(421,32,41,2,NULL),(422,16,53,2,NULL),(423,17,53,2,NULL),(424,23,53,2,NULL),(425,24,53,2,NULL),(426,26,53,2,NULL),(427,27,53,2,NULL),(428,28,53,2,NULL),(429,32,53,2,NULL),(430,16,63,2,NULL),(431,17,63,2,NULL),(432,23,63,2,NULL),(433,24,63,2,NULL),(434,26,63,2,NULL),(435,27,63,2,NULL),(436,28,63,2,NULL),(437,32,63,2,NULL),(438,16,71,2,NULL),(439,17,71,2,NULL),(440,23,71,2,NULL),(441,24,71,2,NULL),(442,26,71,2,NULL),(443,27,71,2,NULL),(444,28,71,2,NULL),(445,32,71,2,NULL),(446,16,72,2,NULL),(447,17,72,2,NULL),(448,23,72,2,NULL),(449,24,72,2,NULL),(450,26,72,2,NULL),(451,27,72,2,NULL),(452,28,72,2,NULL),(453,32,72,2,NULL),(454,16,77,2,NULL),(455,17,77,2,NULL),(456,23,77,2,NULL),(457,24,77,2,NULL),(458,26,77,2,NULL),(459,27,77,2,NULL),(460,28,77,2,NULL),(461,32,77,2,NULL),(462,16,78,2,NULL),(463,17,78,2,NULL),(464,23,78,2,NULL),(465,24,78,2,NULL),(466,26,78,2,NULL),(467,27,78,2,NULL),(468,28,78,2,NULL),(469,32,78,2,NULL),(470,16,79,2,NULL),(471,17,79,2,NULL),(472,23,79,2,NULL),(473,24,79,2,NULL),(474,26,79,2,NULL),(475,27,79,2,NULL),(476,28,79,2,NULL),(477,32,79,2,NULL),(478,16,125,2,NULL),(479,17,125,2,NULL),(480,23,125,2,NULL),(481,24,125,2,NULL),(482,26,125,2,NULL),(483,27,125,2,NULL),(484,28,125,2,NULL),(485,32,125,2,NULL),(486,16,107,2,NULL),(487,17,107,2,NULL),(488,23,107,2,NULL),(489,24,107,2,NULL),(490,26,107,2,NULL),(491,27,107,2,NULL),(492,28,107,2,NULL),(493,32,107,2,NULL),(494,16,127,2,NULL),(495,17,127,2,NULL),(496,23,127,2,NULL),(497,24,127,2,NULL),(498,26,127,2,NULL),(499,27,127,2,NULL),(500,28,127,2,NULL),(501,32,127,2,NULL),(502,16,128,2,NULL),(503,17,128,2,NULL),(504,23,128,2,NULL),(505,24,128,2,NULL),(506,26,128,2,NULL),(507,27,128,2,NULL),(508,28,128,2,NULL),(509,32,128,2,NULL),(510,16,129,2,NULL),(511,17,129,2,NULL),(512,23,129,2,NULL),(513,24,129,2,NULL),(514,26,129,2,NULL),(515,27,129,2,NULL),(516,28,129,2,NULL),(517,32,129,2,NULL),(518,16,131,2,NULL),(519,17,131,2,NULL),(520,23,131,2,NULL),(521,24,131,2,NULL),(522,26,131,2,NULL),(523,27,131,2,NULL),(524,28,131,2,NULL),(525,32,131,2,NULL),(526,16,154,2,NULL),(527,17,154,2,NULL),(528,23,154,2,NULL),(529,24,154,2,NULL),(530,26,154,2,NULL),(531,27,154,2,NULL),(532,28,154,2,NULL),(533,32,154,2,NULL),(534,16,155,2,NULL),(535,17,155,2,NULL),(536,23,155,2,NULL),(537,24,155,2,NULL),(538,26,155,2,NULL),(539,27,155,2,NULL),(540,28,155,2,NULL),(541,32,155,2,NULL),(542,16,157,2,NULL),(543,17,157,2,NULL),(544,23,157,2,NULL),(545,24,157,2,NULL),(546,26,157,2,NULL),(547,27,157,2,NULL),(548,28,157,2,NULL),(549,32,157,2,NULL),(550,70,7,2,NULL),(551,70,25,2,NULL),(552,70,35,2,NULL),(553,70,47,2,NULL),(554,70,126,2,NULL),(555,70,153,2,NULL),(556,66,37,2,NULL),(557,67,37,2,NULL),(558,68,37,2,NULL),(559,29,37,2,NULL),(560,30,37,2,NULL),(561,31,37,2,NULL),(562,34,37,2,NULL),(563,35,37,2,NULL),(564,36,37,2,NULL),(565,37,37,2,NULL),(566,38,37,2,NULL),(567,39,37,2,NULL),(568,40,37,2,NULL),(569,41,37,2,NULL),(570,42,37,2,NULL),(571,66,1,2,NULL),(572,67,1,2,NULL),(573,68,1,2,NULL),(574,66,5,2,NULL),(575,67,5,2,NULL),(576,68,5,2,NULL),(577,66,6,2,NULL),(578,67,6,2,NULL),(579,68,6,2,NULL),(580,66,13,2,NULL),(581,67,13,2,NULL),(582,68,13,2,NULL),(583,66,22,2,NULL),(584,67,22,2,NULL),(585,68,22,2,NULL),(586,66,9,2,NULL),(587,67,9,2,NULL),(588,68,9,2,NULL),(589,66,20,2,NULL),(590,67,20,2,NULL),(591,68,20,2,NULL),(592,66,33,2,NULL),(593,67,33,2,NULL),(594,68,33,2,NULL),(595,66,41,2,NULL),(596,67,41,2,NULL),(597,68,41,2,NULL),(598,66,53,2,NULL),(599,67,53,2,NULL),(600,68,53,2,NULL),(601,66,63,2,NULL),(602,67,63,2,NULL),(603,68,63,2,NULL),(604,66,71,2,NULL),(605,67,71,2,NULL),(606,68,71,2,NULL),(607,66,72,2,NULL),(608,67,72,2,NULL),(609,68,72,2,NULL),(610,66,77,2,NULL),(611,67,77,2,NULL),(612,68,77,2,NULL),(613,66,78,2,NULL),(614,67,78,2,NULL),(615,68,78,2,NULL),(616,66,79,2,NULL),(617,67,79,2,NULL),(618,68,79,2,NULL),(619,66,125,2,NULL),(620,67,125,2,NULL),(621,68,125,2,NULL),(622,66,107,2,NULL),(623,67,107,2,NULL),(624,68,107,2,NULL),(625,66,127,2,NULL),(626,67,127,2,NULL),(627,68,127,2,NULL),(628,66,128,2,NULL),(629,67,128,2,NULL),(630,68,128,2,NULL),(631,66,129,2,NULL),(632,67,129,2,NULL),(633,68,129,2,NULL),(634,66,131,2,NULL),(635,67,131,2,NULL),(636,68,131,2,NULL),(637,66,154,2,NULL),(638,67,154,2,NULL),(639,68,154,2,NULL),(640,66,155,2,NULL),(641,67,155,2,NULL),(642,68,155,2,NULL),(643,66,157,2,NULL),(644,67,157,2,NULL),(645,68,157,2,NULL),(646,29,1,2,NULL),(647,30,1,2,NULL),(648,31,1,2,NULL),(649,29,5,2,NULL),(650,30,5,2,NULL),(651,31,5,2,NULL),(652,29,6,2,NULL),(653,30,6,2,NULL),(654,31,6,2,NULL),(655,29,13,2,NULL),(656,30,13,2,NULL),(657,31,13,2,NULL),(658,29,22,2,NULL),(659,30,22,2,NULL),(660,31,22,2,NULL),(661,29,9,2,NULL),(662,30,9,2,NULL),(663,31,9,2,NULL),(664,29,20,2,NULL),(665,30,20,2,NULL),(666,31,20,2,NULL),(667,29,33,2,NULL),(668,30,33,2,NULL),(669,31,33,2,NULL),(670,29,41,2,NULL),(671,30,41,2,NULL),(672,31,41,2,NULL),(673,29,53,2,NULL),(674,30,53,2,NULL),(675,31,53,2,NULL),(676,29,63,2,NULL),(677,30,63,2,NULL),(678,31,63,2,NULL),(679,29,71,2,NULL),(680,30,71,2,NULL),(681,31,71,2,NULL),(682,29,72,2,NULL),(683,30,72,2,NULL),(684,31,72,2,NULL),(685,29,77,2,NULL),(686,30,77,2,NULL),(687,31,77,2,NULL),(688,29,78,2,NULL),(689,30,78,2,NULL),(690,31,78,2,NULL),(691,29,79,2,NULL),(692,30,79,2,NULL),(693,31,79,2,NULL),(694,29,125,2,NULL),(695,30,125,2,NULL),(696,31,125,2,NULL),(697,29,107,2,NULL),(698,30,107,2,NULL),(699,31,107,2,NULL),(700,29,127,2,NULL),(701,30,127,2,NULL),(702,31,127,2,NULL),(703,29,128,2,NULL),(704,30,128,2,NULL),(705,31,128,2,NULL),(706,29,129,2,NULL),(707,30,129,2,NULL),(708,31,129,2,NULL),(709,29,131,2,NULL),(710,30,131,2,NULL),(711,31,131,2,NULL),(712,29,154,2,NULL),(713,30,154,2,NULL),(714,31,154,2,NULL),(715,29,155,2,NULL),(716,30,155,2,NULL),(717,31,155,2,NULL),(718,29,157,2,NULL),(719,30,157,2,NULL),(720,31,157,2,NULL),(721,34,1,2,NULL),(722,35,1,2,NULL),(723,36,1,2,NULL),(724,37,1,2,NULL),(725,38,1,2,NULL),(726,39,1,2,NULL),(727,40,1,2,NULL),(728,41,1,2,NULL),(729,42,1,2,NULL),(730,34,5,2,NULL),(731,35,5,2,NULL),(732,36,5,2,NULL),(733,37,5,2,NULL),(734,38,5,2,NULL),(735,39,5,2,NULL),(736,40,5,2,NULL),(737,41,5,2,NULL),(738,42,5,2,NULL),(739,34,6,2,NULL),(740,35,6,2,NULL),(741,36,6,2,NULL),(742,37,6,2,NULL),(743,38,6,2,NULL),(744,39,6,2,NULL),(745,40,6,2,NULL),(746,41,6,2,NULL),(747,42,6,2,NULL),(748,34,13,2,NULL),(749,35,13,2,NULL),(750,36,13,2,NULL),(751,37,13,2,NULL),(752,38,13,2,NULL),(753,39,13,2,NULL),(754,40,13,2,NULL),(755,41,13,2,NULL),(756,42,13,2,NULL),(757,34,22,2,NULL),(758,35,22,2,NULL),(759,36,22,2,NULL),(760,37,22,2,NULL),(761,38,22,2,NULL),(762,39,22,2,NULL),(763,40,22,2,NULL),(764,41,22,2,NULL),(765,42,22,2,NULL),(766,34,9,2,NULL),(767,35,9,2,NULL),(768,36,9,2,NULL),(769,37,9,2,NULL),(770,38,9,2,NULL),(771,39,9,2,NULL),(772,40,9,2,NULL),(773,41,9,2,NULL),(774,42,9,2,NULL),(775,34,20,2,NULL),(776,35,20,2,NULL),(777,36,20,2,NULL),(778,37,20,2,NULL),(779,38,20,2,NULL),(780,39,20,2,NULL),(781,40,20,2,NULL),(782,41,20,2,NULL),(783,42,20,2,NULL),(784,34,33,2,NULL),(785,35,33,2,NULL),(786,36,33,2,NULL),(787,37,33,2,NULL),(788,38,33,2,NULL),(789,39,33,2,NULL),(790,40,33,2,NULL),(791,41,33,2,NULL),(792,42,33,2,NULL),(793,34,41,2,NULL),(794,35,41,2,NULL),(795,36,41,2,NULL),(796,37,41,2,NULL),(797,38,41,2,NULL),(798,39,41,2,NULL),(799,40,41,2,NULL),(800,41,41,2,NULL),(801,42,41,2,NULL),(802,34,53,2,NULL),(803,35,53,2,NULL),(804,36,53,2,NULL),(805,37,53,2,NULL),(806,38,53,2,NULL),(807,39,53,2,NULL),(808,40,53,2,NULL),(809,41,53,2,NULL),(810,42,53,2,NULL),(811,34,63,2,NULL),(812,35,63,2,NULL),(813,36,63,2,NULL),(814,37,63,2,NULL),(815,38,63,2,NULL),(816,39,63,2,NULL),(817,40,63,2,NULL),(818,41,63,2,NULL),(819,42,63,2,NULL),(820,34,71,2,NULL),(821,35,71,2,NULL),(822,36,71,2,NULL),(823,37,71,2,NULL),(824,38,71,2,NULL),(825,39,71,2,NULL),(826,40,71,2,NULL),(827,41,71,2,NULL),(828,42,71,2,NULL),(829,34,72,2,NULL),(830,35,72,2,NULL),(831,36,72,2,NULL),(832,37,72,2,NULL),(833,38,72,2,NULL),(834,39,72,2,NULL),(835,40,72,2,NULL),(836,41,72,2,NULL),(837,42,72,2,NULL),(838,34,77,2,NULL),(839,35,77,2,NULL),(840,36,77,2,NULL),(841,37,77,2,NULL),(842,38,77,2,NULL),(843,39,77,2,NULL),(844,40,77,2,NULL),(845,41,77,2,NULL),(846,42,77,2,NULL),(847,34,78,2,NULL),(848,35,78,2,NULL),(849,36,78,2,NULL),(850,37,78,2,NULL),(851,38,78,2,NULL),(852,39,78,2,NULL),(853,40,78,2,NULL),(854,41,78,2,NULL),(855,42,78,2,NULL),(856,34,79,2,NULL),(857,35,79,2,NULL),(858,36,79,2,NULL),(859,37,79,2,NULL),(860,38,79,2,NULL),(861,39,79,2,NULL),(862,40,79,2,NULL),(863,41,79,2,NULL),(864,42,79,2,NULL),(865,34,125,2,NULL),(866,35,125,2,NULL),(867,36,125,2,NULL),(868,37,125,2,NULL),(869,38,125,2,NULL),(870,39,125,2,NULL),(871,40,125,2,NULL),(872,41,125,2,NULL),(873,42,125,2,NULL),(874,34,107,2,NULL),(875,35,107,2,NULL),(876,36,107,2,NULL),(877,37,107,2,NULL),(878,38,107,2,NULL),(879,39,107,2,NULL),(880,40,107,2,NULL),(881,41,107,2,NULL),(882,42,107,2,NULL),(883,34,127,2,NULL),(884,35,127,2,NULL),(885,36,127,2,NULL),(886,37,127,2,NULL),(887,38,127,2,NULL),(888,39,127,2,NULL),(889,40,127,2,NULL),(890,41,127,2,NULL),(891,42,127,2,NULL),(892,34,128,2,NULL),(893,35,128,2,NULL),(894,36,128,2,NULL),(895,37,128,2,NULL),(896,38,128,2,NULL),(897,39,128,2,NULL),(898,40,128,2,NULL),(899,41,128,2,NULL),(900,42,128,2,NULL),(901,34,129,2,NULL),(902,35,129,2,NULL),(903,36,129,2,NULL),(904,37,129,2,NULL),(905,38,129,2,NULL),(906,39,129,2,NULL),(907,40,129,2,NULL),(908,41,129,2,NULL),(909,42,129,2,NULL),(910,34,131,2,NULL),(911,35,131,2,NULL),(912,36,131,2,NULL),(913,37,131,2,NULL),(914,38,131,2,NULL),(915,39,131,2,NULL),(916,40,131,2,NULL),(917,41,131,2,NULL),(918,42,131,2,NULL),(919,34,154,2,NULL),(920,35,154,2,NULL),(921,36,154,2,NULL),(922,37,154,2,NULL),(923,38,154,2,NULL),(924,39,154,2,NULL),(925,40,154,2,NULL),(926,41,154,2,NULL),(927,42,154,2,NULL),(928,34,155,2,NULL),(929,35,155,2,NULL),(930,36,155,2,NULL),(931,37,155,2,NULL),(932,38,155,2,NULL),(933,39,155,2,NULL),(934,40,155,2,NULL),(935,41,155,2,NULL),(936,42,155,2,NULL),(937,34,157,2,NULL),(938,35,157,2,NULL),(939,36,157,2,NULL),(940,37,157,2,NULL),(941,38,157,2,NULL),(942,39,157,2,NULL),(943,40,157,2,NULL),(944,41,157,2,NULL),(945,42,157,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'mobi.SyndicateApps.ICSv2.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(39,'android.permission.BIND_APPWIDGET'),(26,'android.permission.BIND_WALLPAPER'),(30,'android.permission.BLUETOOTH'),(31,'android.permission.BLUETOOTH_ADMIN'),(38,'android.permission.EXPAND_STATUS_BAR'),(28,'android.permission.FLASHLIGHT'),(33,'android.permission.GET_TASKS'),(17,'android.permission.INTERNET'),(36,'android.permission.PERSISTENT_ACTIVITY'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.RESTART_PACKAGES'),(27,'android.permission.SET_WALLPAPER'),(35,'android.permission.SET_WALLPAPER_HINTS'),(21,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(25,'android.permission.WRITE_EXTERNAL_STORAGE'),(37,'android.permission.WRITE_SECURE_SETTINGS'),(29,'android.permission.WRITE_SETTINGS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(9,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(14,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.android.launcher.permission.READ_SETTINGS'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(41,'com.android.vending.BILLING'),(19,'com.fede.launcher.permission.READ_SETTINGS'),(15,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(8,'com.lge.launcher.permission.READ_SETTINGS'),(2,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(3,'com.motorola.dlauncher.permission.READ_SETTINGS'),(11,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(24,'com.motorola.launcher.permission.READ_SETTINGS'),(40,'mobi.SyndicateApps.ICSv2.permission.READ_SETTINGS'),(32,'mobi.SyndicateApps.ICSv2.permission.WRITE_SETTINGS'),(20,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (14,'n'),(16,'n'),(32,'n'),(40,'n');
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
INSERT INTO `Providers` VALUES (1,130,0,NULL,'mobi.SyndicateApps.ICSv2.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.tonee.org',NULL,NULL,NULL),(2,NULL,NULL,'http://www.facebook.com/Tonee.org',NULL,NULL,NULL),(3,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://market.android.com/details?id=com.antonio.ani.plus.activity',NULL,NULL,NULL),(10,NULL,NULL,'http://market.android.com/details?id=com.antonio.futurecars',NULL,NULL,NULL),(11,NULL,NULL,'http://market.android.com/details?id=com.antonio.bodydots',NULL,NULL,NULL),(12,NULL,NULL,'http://market.android.com/details?id=com.antonio.messages.plus.widget',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/details?id=org.tonee.contact.widget',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.home.plus',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=pub:\"Antonio%20Tonev\"',NULL,NULL,NULL),(16,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.media.plus',NULL,NULL,NULL),(17,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.organize.plus',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/details?id=com.antonio.thermo2.activity',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/details?id=com.antonio.tattoo',NULL,NULL,NULL),(20,NULL,NULL,'http://market.android.com/details?id=com.antonio.notes.plus',NULL,NULL,NULL),(21,NULL,NULL,'http://market.android.com/details?id=com.antonio.browser2.plus.widget',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=com.antonio.fashion',NULL,NULL,NULL),(23,NULL,NULL,'http://market.android.com/details?id=com.antonio.funny',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/details?id=com.antonio.home',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=com.antonio.media2.plus.widget',NULL,NULL,NULL),(26,NULL,NULL,'http://market.android.com/details?id=com.antonio.smiley.plus',NULL,NULL,NULL),(27,NULL,NULL,'http://market.android.com/details?id=org.tonee.monster.widgets',NULL,NULL,NULL),(28,NULL,NULL,'http://market.android.com/details?id=org.tonee.fly.widgets',NULL,NULL,NULL),(29,NULL,NULL,'http://market.android.com/details?id=com.antonio.wardrobe.apps',NULL,NULL,NULL),(30,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(31,NULL,NULL,'market://search?q=pname:com.antonio.fruits.plus',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,4),(2,20,5),(3,24,7),(4,29,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,24),(25,2,1),(26,2,2),(27,2,3),(28,2,4),(29,2,5),(30,2,6),(31,2,7),(32,2,8),(33,3,1),(34,2,9),(35,3,2),(36,2,10),(37,3,3),(38,2,11),(39,3,4),(40,2,12),(41,3,6),(42,2,13),(43,3,7),(44,2,14),(45,3,8),(46,2,15),(47,3,9),(48,2,17),(49,3,11),(50,2,16),(51,3,13),(52,2,19),(53,3,14),(54,2,21),(55,3,15),(56,2,20),(57,3,17),(58,2,23),(59,3,16),(60,2,22),(61,3,23),(62,2,25),(63,3,22),(64,2,24),(65,3,25),(66,3,24),(67,4,1),(68,4,2),(69,4,3),(70,4,4),(71,4,6),(72,4,7),(73,4,8),(74,4,9),(75,4,11),(76,4,13),(77,4,14),(78,4,15),(79,4,17),(80,4,16),(81,4,19),(82,4,21),(83,4,20),(84,4,23),(85,4,22),(86,4,25),(87,4,24),(88,4,27),(89,4,29),(90,4,28),(91,5,1),(92,5,2),(93,5,3),(94,5,4),(95,5,5),(96,5,6),(97,5,7),(98,5,8),(99,5,9),(100,5,10),(101,5,11),(102,5,12),(103,5,13),(104,5,14),(105,5,15),(106,5,17),(107,5,16),(108,5,19),(109,5,18),(110,5,21),(111,5,20),(112,5,23),(113,5,22),(114,5,25),(115,5,24),(116,5,28),(117,5,31),(118,5,30),(119,6,1),(120,6,2),(121,6,3),(122,6,4),(123,6,6),(124,6,8),(125,6,9),(126,6,11),(127,6,14),(128,6,15),(129,6,17),(130,6,16),(131,6,19),(132,6,21),(133,6,20),(134,6,23),(135,6,22),(136,6,25),(137,6,24),(138,6,27),(139,6,29),(140,6,34),(141,6,35),(142,6,32),(143,6,33),(144,6,38),(145,6,39),(146,6,36),(147,6,37),(148,6,40),(149,7,1),(150,7,2),(151,7,3),(152,7,4),(153,7,5),(154,7,6),(155,7,7),(156,7,8),(157,7,9),(158,7,10),(159,7,11),(160,7,13),(161,7,14),(162,7,15),(163,7,17),(164,7,16),(165,7,19),(166,7,18),(167,7,21),(168,7,20),(169,7,23),(170,7,22),(171,7,25),(172,7,24),(173,7,41);
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

-- Dump completed on 2015-10-12  3:31:32
