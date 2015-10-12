-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_729
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
INSERT INTO `ActionStrings` VALUES (27,'(.*)'),(3,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(22,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.SENDTO'),(15,'android.intent.action.USER_PRESENT'),(24,'android.intent.action.VIEW'),(10,'android.service.wallpaper.WallpaperService'),(17,'com.airpush.android.PushServiceStart(.*)'),(9,'com.airpush.android.PushServiceStart13584'),(5,'com.airpush.android.PushServiceStart16433'),(8,'com.airpush.android.PushServiceStart23057'),(4,'com.airpush.android.PushServiceStart56632'),(12,'com.airpush.android.PushServiceStart64447'),(19,'com.airpush.android.PushServiceStartInvalid'),(20,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(18,'com.airpush.android.PushServiceStartinvalid Id'),(23,'com.android.launcher.action.INSTALL_SHORTCUT'),(26,'com.android.music.musicservicecommand'),(14,'com.feelingtouch.bannerad.ACTION_PUSHAD'),(16,'com.feelingtouch.bannerad.PUSH_AD_CLICK'),(2,'com.jiubang.goscreenlock.theme'),(13,'com.senddroid.AdServicecom.YRH.CleanTheCityG'),(11,'com.wangsong.freenumber');
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
INSERT INTO `Applications` VALUES (1,'org.tonee.monster.widgets.free',5),(2,'com.free_apps.golocker_iphone4_3dheart',1),(3,'com.phoneliving.talkingtommythermometerfree',3),(4,'verizop.beautyleg.girl.ashely',1),(5,'com.wangsong.costwatcher',34),(6,'com.YRH.CleanTheCityG',1),(7,'com.feelingtouch.physical',16);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.tonee.monster.widgets.free.AcHelp'),(2,1,'org.tonee.monster.widgets.free.AcMyApps'),(3,1,'org.tonee.monster.widgets.free.AcFullVersion'),(4,1,'org.tonee.monster.widgets.free.AcApplicationLunchers'),(5,2,'com.free_apps.golocker_iphone4_3dheart.GOLockerInstallDialog'),(6,1,'org.tonee.monster.widgets.free.AcExitMessage'),(7,1,'org.tonee.monster.widgets.free.AcNoAdsMessage'),(8,1,'org.tonee.monster.widgets.free.AcRateMeWith5Stars'),(9,1,'org.tonee.monster.widgets.free.AcNewspaper'),(10,1,'org.tonee.monster.widgets.free.AcEULA'),(11,2,'com.airpush.android.PushAds'),(12,1,'org.tonee.monster.widgets.free.AcAbout'),(13,2,'com.free_apps.golocker_iphone4_3dheart.srv'),(14,1,'org.tonee.monster.widgets.free.AcConfigure2x2'),(15,2,'com.free_apps.golocker_iphone4_3dheart.GoDownloadServiceervice'),(16,2,'com.airpush.android.PushService'),(17,1,'com.airpush.android.PushAds'),(18,1,'com.apperhand.device.android.AndroidSDKProvider'),(19,2,'com.apperhand.device.android.AndroidSDKProvider'),(20,1,'com.airpush.android.PushService'),(21,2,'com.free_apps.golocker_iphone4_3dheart.rec'),(22,2,'com.airpush.android.UserDetailsReceiver'),(23,2,'com.airpush.android.MessageReceiver'),(24,1,'org.tonee.monster.widgets.free.Widget2x2'),(25,2,'com.airpush.android.DeliveryReceiver'),(26,2,'com.free_apps.golocker_iphone4_3dheart.bReceiver'),(27,1,'com.airpush.android.UserDetailsReceiver'),(28,1,'com.airpush.android.MessageReceiver'),(29,1,'com.airpush.android.DeliveryReceiver'),(30,2,'com.Leadbolt.AdNotification'),(31,1,'org.tonee.monster.widgets.free.airpush.BootReceiver'),(32,4,'verizop.beautyleg.girl.ashely.Main'),(33,3,'com.phoneliving.talkingtommythermometerfree.Main'),(34,4,'com.airpush.android.PushAds'),(35,3,'com.google.ads.AdActivity'),(36,4,'verizop.beautyleg.girl.ashely.Market'),(37,3,'com.airpush.android.PushAds'),(38,4,'com.bonk.wallpaper.BonkSettings'),(39,3,'com.apperhand.device.android.AndroidSDKProvider'),(40,4,'com.jigsaw.puzzle.JigsawActivity'),(41,3,'com.airpush.android.PushService'),(42,4,'com.jigsaw.puzzle.JigsawSettings'),(43,4,'com.jigsaw.puzzle.PuzzleActivity'),(44,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,3,'com.Leadbolt.AdNotification'),(46,4,'com.airpush.android.PushService'),(47,3,'com.phoneliving.talkingtommythermometerfree.BootReceiverLeadBolt'),(48,3,'com.phoneliving.talkingtommythermometerfree.BootReceiverLeadBolt2'),(49,4,'com.apperhand.device.android.AndroidSDKProvider'),(50,5,'com.wangsong.costwatcher.PanelActivity'),(51,4,'com.bonk.wallpaper.BonkWallpaper'),(52,3,'com.airpush.android.UserDetailsReceiver'),(53,3,'com.airpush.android.MessageReceiver'),(54,5,'com.wangsong.costwatcher.MsgActivity'),(55,3,'com.airpush.android.DeliveryReceiver'),(56,5,'com.wangsong.costwatcher.PhoneActivity'),(57,4,'com.airpush.android.UserDetailsReceiver'),(58,3,'com.phoneliving.talkingtommythermometerfree.BootReceiver'),(59,5,'com.wangsong.costwatcher.DataActivity'),(60,4,'com.airpush.android.MessageReceiver'),(61,5,'com.wangsong.costwatcher.AboutActivity'),(62,4,'com.airpush.android.DeliveryReceiver'),(63,5,'com.wangsong.costwatcher.SettingActivity'),(64,4,'verizop.beautyleg.girl.ashely.BootReceiver'),(65,5,'com.wangsong.costwatcher.SetFreeNumber'),(66,4,'com.Leadbolt.AdNotification'),(67,4,'com.bonk.wallpaper.BonkWidget'),(68,5,'com.google.ads.AdActivity'),(69,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(70,5,'com.millennialmedia.android.VideoPlayer'),(71,5,'com.apperhand.device.android.AndroidSDKProvider'),(72,6,'com.YRH.InfectAllThem.GameActivity'),(73,6,'com.airpush.android.PushAds'),(74,6,'com.apperhand.device.android.AndroidSDKProvider'),(75,6,'com.airpush.android.PushService'),(76,6,'com.senddroid.AdService'),(77,6,'com.YRH.CleanTheCityG.BootReceiver'),(78,6,'com.Leadbolt.AdNotification'),(79,6,'com.airpush.android.UserDetailsReceiver'),(80,6,'com.airpush.android.MessageReceiver'),(81,6,'com.airpush.android.DeliveryReceiver'),(82,7,'com.feelingtouch.physical.MainMenu'),(83,7,'com.feelingtouch.physical.NoticeActivity'),(84,7,'com.feelingtouch.physical.ResetWarningActivity'),(85,7,'com.feelingtouch.physical.SubmitActivity'),(86,7,'com.feelingtouch.physical.gameactivity.CutTheRopeActivity'),(87,7,'com.feelingtouch.physical.OptionActivity'),(88,7,'com.feelingtouch.physical.GameMapActivity'),(89,7,'com.feelingtouch.physical.ChoiceGameActivity'),(90,7,'com.feelingtouch.physical.MenuActivity'),(91,7,'com.feelingtouch.gamebox.HighScore'),(92,7,'com.feelingtouch.gamebox.GameBox'),(93,7,'com.google.ads.AdActivity'),(94,7,'com.mt.airad.MultiAD'),(95,7,'com.apperhand.device.android.AndroidSDKProvider'),(96,7,'com.feelingtouch.bannerad.pushAd.PushAdService'),(97,7,'com.feelingtouch.bannerad.pushAd.PushAdReceiver'),(98,7,'com.feelingtouch.bannerad.pushAd.PushAdClickReceiver'),(99,1,'org.tonee.monster.widgets.free.preference.options.SharedOptions'),(100,1,'com.apperhand.device.android.a.a'),(101,1,'com.apperhand.device.android.a.e'),(102,1,'org.tonee.monster.widgets.free.values.Values'),(103,5,'com.apperhand.device.android.a.a'),(104,5,'com.wangsong.costwatcher.AboutActivity$1'),(105,5,'com.apperhand.device.android.a.e'),(106,5,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'campId'),(2,17,'url'),(3,20,'campId'),(4,20,'creativeId'),(5,17,'apikey'),(6,2,'EXTRA_DONT_SHOW_APPS'),(7,20,'link'),(8,29,'text'),(9,20,'title'),(10,29,'campId'),(11,29,'apikey'),(12,29,'title'),(13,29,'creativeId'),(14,20,'appId'),(15,29,'header'),(16,29,'appId'),(17,17,'creativeId'),(18,20,'sms'),(19,17,'appId'),(20,20,'imageurl'),(21,20,'apikey'),(22,20,'number'),(23,20,'url'),(24,20,'header'),(25,29,'imageurl'),(26,14,'appWidgetId'),(27,17,'test'),(28,18,'APPLICATION_ID'),(29,20,'type'),(30,17,'number'),(31,29,'number'),(32,20,'text'),(33,18,'FIRST_RUN'),(34,17,'sms'),(35,17,'header'),(36,29,'imei'),(37,20,'adType'),(38,17,'adType'),(39,29,'url'),(40,18,'DEVELOPER_ID'),(41,20,'testMode'),(42,18,'M_SERVER_URL'),(43,18,'USER_AGENT'),(44,29,'sms'),(45,70,'cached'),(46,71,'permanent'),(47,70,'logSet'),(48,70,'videoPosition'),(49,69,'shouldShowBottomBar'),(50,70,'shouldShowBottomBar'),(51,71,'USER_AGENT'),(52,70,'videoCompleted'),(53,71,'SERVICE_MODE'),(54,69,'overlayTransition'),(55,63,'index'),(56,68,'com.google.ads.AdOpener'),(57,71,'APPLICATION_ID'),(58,69,'shouldResizeOverlay'),(59,69,'canAccelerate'),(60,69,'shouldEnableBottomBar'),(61,68,'params'),(62,70,'videoCompletedOnce'),(63,71,'M_SERVER_URL'),(64,70,'isCachedAd'),(65,71,'FIRST_RUN'),(66,70,'videoAd'),(67,70,'adName'),(68,68,'action'),(69,71,'DEVELOPER_ID'),(70,69,'transitionTime'),(71,69,'overlayTitle'),(72,69,'shouldMakeOverlayTransparent'),(73,69,'shouldShowTitlebar'),(74,69,'cachedAdView');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'s',1,32,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',1,NULL,NULL),(76,76,'s',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',1,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,28),(2,2,29),(3,3,17),(4,4,17),(5,5,14),(6,6,18),(7,7,17),(8,8,18),(9,9,18),(10,10,14),(11,11,17),(12,12,14),(13,13,17),(14,14,18),(15,15,2),(16,15,3),(17,15,8),(18,16,14),(19,17,27),(20,18,18),(21,19,50),(22,19,70),(23,20,71),(24,21,50),(25,21,70),(26,22,63),(27,23,61),(28,24,71),(29,25,56),(30,26,71),(31,27,50),(32,28,50),(33,29,70),(34,29,50),(35,30,56),(36,31,61),(37,32,54),(38,33,50),(39,33,70),(40,34,50),(41,34,70),(42,35,50),(43,36,54),(44,37,54),(45,38,68),(46,39,71),(47,40,71),(48,41,61),(49,42,50),(50,42,70),(51,43,71),(52,44,50),(53,44,70),(54,45,54),(55,46,70),(56,46,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,28,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(2,29,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(3,17,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(4,17,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(5,99,'<org.tonee.monster.widgets.free.preference.options.SharedOptions: void checkNewspaper(android.content.Context)>',5,'a',NULL),(6,100,'<com.apperhand.device.android.a.a: java.util.List d()>',13,'p',NULL),(7,17,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(8,101,'<com.apperhand.device.android.a.e: java.util.List a()>',13,'p',NULL),(9,100,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(10,99,'<org.tonee.monster.widgets.free.preference.options.SharedOptions: void checkRating(android.content.Context)>',5,'a',NULL),(11,17,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(12,18,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',21,'s',NULL),(13,17,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(14,101,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(15,102,'<org.tonee.monster.widgets.free.values.Values: void applicationSearch(android.content.Context,java.lang.String)>',5,'a',NULL),(16,99,'<org.tonee.monster.widgets.free.preference.options.SharedOptions: void checkMyApps(android.content.Context)>',5,'a',NULL),(17,27,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(18,101,'<com.apperhand.device.android.a.e: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(19,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(20,103,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(21,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(22,63,'<com.wangsong.costwatcher.SettingActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(23,104,'<com.wangsong.costwatcher.AboutActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(24,103,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(25,56,'<com.wangsong.costwatcher.PhoneActivity: void sendPic()>',16,'a',NULL),(26,105,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(27,71,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(28,50,'<com.wangsong.costwatcher.PanelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(29,106,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(30,56,'<com.wangsong.costwatcher.PhoneActivity: void getCall()>',10,'p',NULL),(31,104,'<com.wangsong.costwatcher.AboutActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(32,54,'<com.wangsong.costwatcher.MsgActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(33,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(34,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(35,50,'<com.wangsong.costwatcher.PanelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(36,54,'<com.wangsong.costwatcher.MsgActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(37,54,'<com.wangsong.costwatcher.MsgActivity: void sendPic()>',16,'a',NULL),(38,68,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(39,105,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(40,103,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(41,104,'<com.wangsong.costwatcher.AboutActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(42,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(43,105,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(44,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(45,54,'<com.wangsong.costwatcher.MsgActivity: java.lang.String searchNamebyPhone(java.lang.String)>',8,'p',NULL),(46,70,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,17),(2,2,18),(3,3,19),(4,5,17),(5,6,17),(6,7,20),(7,8,17),(8,9,17),(9,10,20),(10,11,20),(11,12,20),(12,13,21),(13,14,17),(14,15,20),(15,17,22),(16,18,23),(17,20,17),(18,21,20),(19,23,17),(20,24,20),(21,25,24),(22,26,24),(23,27,24),(24,28,24),(25,29,24),(26,30,24),(27,31,24),(28,32,24),(29,33,24),(30,34,24),(31,35,24),(32,36,24),(33,37,24),(34,38,24),(35,39,24),(36,40,24),(37,41,24),(38,42,24),(39,43,24),(40,44,24),(41,45,24),(42,46,24),(43,47,24),(44,48,24),(45,49,24),(46,50,24),(47,52,17),(48,53,19),(49,54,18),(50,56,22),(51,58,24),(52,59,25),(53,60,25),(54,61,25),(55,62,25),(56,63,25),(57,64,25),(58,65,25),(59,66,25),(60,70,26),(61,71,24),(62,73,24),(63,77,25),(64,78,25),(65,79,25),(66,80,25),(67,81,25),(68,82,25),(69,83,25),(70,84,25),(71,85,24),(72,86,27),(73,87,27),(74,88,21),(75,89,24),(76,90,23),(77,91,24),(78,92,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,16,'org/tonee/monster/widgets/free/AcNewspaper'),(2,19,'org/tonee/monster/widgets/free/AcRateMeWith5Stars'),(3,22,'com/apperhand/device/android/AndroidSDKProvider'),(4,51,'org/tonee/monster/widgets/free/AcMyApps'),(5,55,'com/millennialmedia/android/MMAdViewOverlayActivity'),(6,57,'com/wangsong/costwatcher/PanelActivity'),(7,67,'com/apperhand/device/android/AndroidSDKProvider'),(8,68,'com/apperhand/device/android/AndroidSDKProvider'),(9,69,'com/wangsong/costwatcher/SettingActivity'),(10,72,'com/wangsong/costwatcher/SettingActivity'),(11,74,'com/millennialmedia/android/MMAdViewOverlayActivity'),(12,75,'com/wangsong/costwatcher/AboutActivity'),(13,76,'com/wangsong/costwatcher/AboutActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,17,3),(3,25,6),(4,26,7),(5,27,8),(6,28,9),(7,29,10),(8,30,11),(9,31,12),(10,32,13),(11,33,14),(12,34,15),(13,35,16),(14,36,17),(15,37,18),(16,38,19),(17,39,20),(18,40,21),(19,41,22),(20,42,23),(21,43,24),(22,44,25),(23,45,26),(24,46,27),(25,47,28),(26,48,29),(27,49,30),(28,50,31),(29,55,33),(30,56,35),(31,58,36),(32,71,40),(33,73,41),(34,74,42),(35,85,43),(36,86,44),(37,87,45),(38,88,49),(39,89,50),(40,91,51),(41,92,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'icon'),(2,1,'appId'),(3,1,'testMode'),(4,1,'type'),(5,1,'apikey'),(6,2,'icon'),(7,2,'appId'),(8,2,'testMode'),(9,2,'type'),(10,2,'apikey'),(11,3,'icon'),(12,3,'appId'),(13,3,'testMode'),(14,3,'type'),(15,3,'apikey'),(16,5,'campId'),(17,5,'text'),(18,5,'title'),(19,5,'creativeId'),(20,5,'appId'),(21,5,'expiry_time'),(22,5,'number'),(23,5,'adType'),(24,5,'type'),(25,5,'sms'),(26,5,'imageurl'),(27,5,'apikey'),(28,6,'campId'),(29,6,'title'),(30,6,'text'),(31,6,'creativeId'),(32,6,'appId'),(33,6,'expiry_time'),(34,6,'link'),(35,6,'adType'),(36,6,'type'),(37,6,'imageurl'),(38,6,'header'),(39,6,'apikey'),(40,7,'campId'),(41,7,'text'),(42,7,'title'),(43,7,'creativeId'),(44,7,'appId'),(45,7,'expiry_time'),(46,7,'number'),(47,7,'adType'),(48,7,'type'),(49,7,'sms'),(50,7,'imageurl'),(51,7,'apikey'),(52,8,'title'),(53,8,'text'),(54,8,'appId'),(55,8,'expiry_time'),(56,8,'number'),(57,8,'adType'),(58,8,'type'),(59,8,'imageurl'),(60,8,'apikey'),(61,9,'campId'),(62,9,'title'),(63,9,'text'),(64,9,'creativeId'),(65,9,'appId'),(66,9,'expiry_time'),(67,9,'link'),(68,9,'adType'),(69,9,'type'),(70,9,'imageurl'),(71,9,'apikey'),(72,10,'campId'),(73,10,'title'),(74,10,'text'),(75,10,'creativeId'),(76,10,'appId'),(77,10,'expiry_time'),(78,10,'link'),(79,10,'adType'),(80,10,'type'),(81,10,'imageurl'),(82,10,'header'),(83,10,'apikey'),(84,11,'title'),(85,11,'text'),(86,11,'appId'),(87,11,'expiry_time'),(88,11,'number'),(89,11,'adType'),(90,11,'type'),(91,11,'imageurl'),(92,11,'apikey'),(93,12,'campId'),(94,12,'title'),(95,12,'text'),(96,12,'creativeId'),(97,12,'appId'),(98,12,'expiry_time'),(99,12,'link'),(100,12,'adType'),(101,12,'type'),(102,12,'imageurl'),(103,12,'apikey'),(104,13,'sms_body'),(105,14,'<INTENT>'),(106,14,'type'),(107,15,'<INTENT>'),(108,15,'type'),(109,18,'android.intent.extra.shortcut.NAME'),(110,18,'android.intent.extra.shortcut.ICON'),(111,18,'android.intent.extra.shortcut.INTENT'),(112,20,'<INTENT>'),(113,20,'type'),(114,21,'<INTENT>'),(115,21,'type'),(116,22,'M_SERVER_URL'),(117,22,'USER_AGENT'),(118,22,'SERVICE_MODE'),(119,22,'FIRST_RUN'),(120,22,'DEVELOPER_ID'),(121,22,'APPLICATION_ID'),(122,23,'<INTENT>'),(123,23,'type'),(124,24,'<INTENT>'),(125,24,'type'),(126,52,'appId'),(127,52,'type'),(128,52,'apikey'),(129,53,'appId'),(130,53,'type'),(131,53,'apikey'),(132,54,'appId'),(133,54,'type'),(134,54,'apikey'),(135,55,'cachedAdView'),(136,59,'android.intent.extra.INTENT'),(137,60,'android.intent.extra.INTENT'),(138,61,'android.intent.extra.TITLE'),(139,61,'android.intent.extra.INTENT'),(140,62,'android.intent.extra.INTENT'),(141,63,'android.intent.extra.TITLE'),(142,63,'android.intent.extra.INTENT'),(143,64,'android.intent.extra.INTENT'),(144,65,'android.intent.extra.TITLE'),(145,65,'android.intent.extra.INTENT'),(146,66,'android.intent.extra.TITLE'),(147,66,'android.intent.extra.INTENT'),(148,67,'M_SERVER_URL'),(149,67,'USER_AGENT'),(150,67,'SERVICE_MODE'),(151,67,'FIRST_RUN'),(152,67,'DEVELOPER_ID'),(153,67,'APPLICATION_ID'),(154,68,'M_SERVER_URL'),(155,68,'USER_AGENT'),(156,68,'SERVICE_MODE'),(157,68,'FIRST_RUN'),(158,68,'DEVELOPER_ID'),(159,68,'(.*)'),(160,68,'APPLICATION_ID'),(161,70,'command'),(162,74,'cachedAdView'),(163,77,'android.intent.extra.INTENT'),(164,78,'android.intent.extra.INTENT'),(165,79,'android.intent.extra.TITLE'),(166,79,'android.intent.extra.INTENT'),(167,80,'android.intent.extra.INTENT'),(168,81,'android.intent.extra.TITLE'),(169,81,'android.intent.extra.INTENT'),(170,82,'android.intent.extra.INTENT'),(171,83,'android.intent.extra.TITLE'),(172,83,'android.intent.extra.INTENT'),(173,84,'android.intent.extra.TITLE'),(174,84,'android.intent.extra.INTENT'),(175,90,'android.intent.extra.shortcut.NAME'),(176,90,'android.intent.extra.shortcut.ICON'),(177,90,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(8,8,7),(9,9,7),(10,10,1),(11,11,1),(12,12,8),(13,13,7),(14,14,9),(15,15,7),(16,16,1),(17,17,10),(18,18,7),(19,19,7),(20,20,11),(21,21,6),(22,22,1),(23,23,12),(24,24,13),(25,25,7),(26,26,7),(27,27,7),(28,28,1),(29,29,14),(30,30,15),(31,31,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,8,3),(5,9,3),(6,10,1),(7,11,1),(8,16,1),(9,18,3),(10,19,3),(11,20,4),(12,22,1),(13,26,3),(14,27,3),(15,28,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,86,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,16,'org.tonee.monster.widgets.free'),(2,19,'org.tonee.monster.widgets.free'),(3,22,'org.tonee.monster.widgets.free'),(4,51,'org.tonee.monster.widgets.free'),(5,55,'com.wangsong.costwatcher'),(6,57,'com.wangsong.costwatcher'),(7,67,'com.wangsong.costwatcher'),(8,68,'com.wangsong.costwatcher'),(9,69,'com.wangsong.costwatcher'),(10,72,'com.wangsong.costwatcher'),(11,74,'com.wangsong.costwatcher'),(12,75,'com.wangsong.costwatcher'),(13,76,'com.wangsong.costwatcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,5,0),(4,14,0),(5,16,0),(6,20,0),(7,24,0),(8,26,0),(9,31,0),(10,32,0),(11,33,0),(12,41,0),(13,47,0),(14,46,0),(15,48,0),(16,50,0),(17,51,0),(18,58,0),(19,64,0),(20,65,0),(21,67,0),(22,72,0),(23,75,0),(24,76,0),(25,77,0),(26,77,0),(27,77,0),(28,82,0),(29,96,0),(30,97,0),(31,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,1,0),(5,2,1,0),(6,2,1,0),(7,2,1,0),(8,2,1,0),(9,2,1,0),(10,2,1,0),(11,2,1,0),(12,2,1,0),(13,3,1,0),(14,4,1,0),(15,4,1,0),(16,5,0,0),(17,7,1,0),(18,9,1,0),(19,10,0,0),(20,11,1,0),(21,11,1,0),(22,12,0,0),(23,13,1,0),(24,13,1,0),(25,15,1,0),(26,15,1,0),(27,15,1,0),(28,15,1,0),(29,15,1,0),(30,15,1,0),(31,15,1,0),(32,15,1,0),(33,15,1,0),(34,15,1,0),(35,15,1,0),(36,15,1,0),(37,15,1,0),(38,15,1,0),(39,15,1,0),(40,15,1,0),(41,15,1,0),(42,15,1,0),(43,15,1,0),(44,15,1,0),(45,15,1,0),(46,15,1,0),(47,15,1,0),(48,15,1,0),(49,15,1,0),(50,15,1,0),(51,16,0,0),(52,17,1,0),(53,17,1,0),(54,17,1,0),(55,19,0,0),(56,21,1,0),(57,22,0,0),(58,23,1,0),(59,25,1,0),(60,25,1,0),(61,25,1,0),(62,25,1,0),(63,25,1,0),(64,25,1,0),(65,25,1,0),(66,25,1,0),(67,27,0,0),(68,27,0,0),(69,28,0,0),(70,29,1,0),(71,31,1,0),(72,32,0,0),(73,33,1,0),(74,34,0,0),(75,35,0,0),(76,36,0,0),(77,37,1,0),(78,37,1,0),(79,37,1,0),(80,37,1,0),(81,37,1,0),(82,37,1,0),(83,37,1,0),(84,37,1,0),(85,38,1,0),(86,38,1,0),(87,38,1,0),(88,41,1,0),(89,42,1,0),(90,43,1,0),(91,44,1,0),(92,46,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,13,33,2,NULL),(2,14,33,2,NULL),(3,15,33,2,NULL),(4,17,33,2,NULL),(5,20,33,2,NULL),(6,21,33,2,NULL),(7,23,33,2,NULL),(8,24,33,2,NULL),(9,52,33,2,NULL),(10,53,33,2,NULL),(11,54,33,2,NULL),(12,1,33,2,NULL),(13,2,33,2,NULL),(14,3,33,2,NULL),(15,4,33,2,NULL),(16,5,33,2,NULL),(17,6,33,2,NULL),(18,7,33,2,NULL),(19,8,33,2,NULL),(20,9,33,2,NULL),(21,10,33,2,NULL),(22,11,33,2,NULL),(23,12,33,2,NULL),(24,77,33,2,NULL),(25,78,33,2,NULL),(26,79,33,2,NULL),(27,80,33,2,NULL),(28,81,33,2,NULL),(29,82,33,2,NULL),(30,83,33,2,NULL),(31,84,33,2,NULL),(32,59,33,2,NULL),(33,60,33,2,NULL),(34,61,33,2,NULL),(35,62,33,2,NULL),(36,63,33,2,NULL),(37,64,33,2,NULL),(38,65,33,2,NULL),(39,66,33,2,NULL),(40,85,33,2,NULL),(41,87,33,2,NULL),(42,56,33,2,NULL),(43,73,33,2,NULL),(44,89,33,2,NULL),(45,91,33,2,NULL),(46,92,33,2,NULL),(47,13,41,2,NULL),(48,14,41,2,NULL),(49,15,41,2,NULL),(50,17,41,2,NULL),(51,20,41,2,NULL),(52,21,41,2,NULL),(53,23,41,2,NULL),(54,24,41,2,NULL),(55,52,41,2,NULL),(56,53,41,2,NULL),(57,54,41,2,NULL),(58,1,41,2,NULL),(59,2,41,2,NULL),(60,3,41,2,NULL),(61,4,41,2,NULL),(62,5,41,2,NULL),(63,6,41,2,NULL),(64,7,41,2,NULL),(65,8,41,2,NULL),(66,9,41,2,NULL),(67,10,41,2,NULL),(68,11,41,2,NULL),(69,12,41,2,NULL),(70,77,41,2,NULL),(71,78,41,2,NULL),(72,79,41,2,NULL),(73,80,41,2,NULL),(74,81,41,2,NULL),(75,82,41,2,NULL),(76,83,41,2,NULL),(77,84,41,2,NULL),(78,59,41,2,NULL),(79,60,41,2,NULL),(80,61,41,2,NULL),(81,62,41,2,NULL),(82,63,41,2,NULL),(83,64,41,2,NULL),(84,65,41,2,NULL),(85,66,41,2,NULL),(86,85,41,2,NULL),(87,87,41,2,NULL),(88,56,41,2,NULL),(89,73,41,2,NULL),(90,89,41,2,NULL),(91,91,41,2,NULL),(92,92,41,2,NULL),(93,13,47,2,NULL),(94,14,47,2,NULL),(95,15,47,2,NULL),(96,17,47,2,NULL),(97,20,47,2,NULL),(98,21,47,2,NULL),(99,23,47,2,NULL),(100,24,47,2,NULL),(101,52,47,2,NULL),(102,53,47,2,NULL),(103,54,47,2,NULL),(104,1,47,2,NULL),(105,2,47,2,NULL),(106,3,47,2,NULL),(107,4,47,2,NULL),(108,5,47,2,NULL),(109,6,47,2,NULL),(110,7,47,2,NULL),(111,8,47,2,NULL),(112,9,47,2,NULL),(113,10,47,2,NULL),(114,11,47,2,NULL),(115,12,47,2,NULL),(116,77,47,2,NULL),(117,78,47,2,NULL),(118,79,47,2,NULL),(119,80,47,2,NULL),(120,81,47,2,NULL),(121,82,47,2,NULL),(122,83,47,2,NULL),(123,84,47,2,NULL),(124,59,47,2,NULL),(125,60,47,2,NULL),(126,61,47,2,NULL),(127,62,47,2,NULL),(128,63,47,2,NULL),(129,64,47,2,NULL),(130,65,47,2,NULL),(131,66,47,2,NULL),(132,85,47,2,NULL),(133,87,47,2,NULL),(134,56,47,2,NULL),(135,73,47,2,NULL),(136,89,47,2,NULL),(137,91,47,2,NULL),(138,92,47,2,NULL),(139,13,48,2,NULL),(140,14,48,2,NULL),(141,15,48,2,NULL),(142,17,48,2,NULL),(143,20,48,2,NULL),(144,21,48,2,NULL),(145,23,48,2,NULL),(146,24,48,2,NULL),(147,52,48,2,NULL),(148,53,48,2,NULL),(149,54,48,2,NULL),(150,1,48,2,NULL),(151,2,48,2,NULL),(152,3,48,2,NULL),(153,4,48,2,NULL),(154,5,48,2,NULL),(155,6,48,2,NULL),(156,7,48,2,NULL),(157,8,48,2,NULL),(158,9,48,2,NULL),(159,10,48,2,NULL),(160,11,48,2,NULL),(161,12,48,2,NULL),(162,77,48,2,NULL),(163,78,48,2,NULL),(164,79,48,2,NULL),(165,80,48,2,NULL),(166,81,48,2,NULL),(167,82,48,2,NULL),(168,83,48,2,NULL),(169,84,48,2,NULL),(170,59,48,2,NULL),(171,60,48,2,NULL),(172,61,48,2,NULL),(173,62,48,2,NULL),(174,63,48,2,NULL),(175,64,48,2,NULL),(176,65,48,2,NULL),(177,66,48,2,NULL),(178,85,48,2,NULL),(179,87,48,2,NULL),(180,56,48,2,NULL),(181,73,48,2,NULL),(182,89,48,2,NULL),(183,91,48,2,NULL),(184,92,48,2,NULL),(185,13,58,2,NULL),(186,14,58,2,NULL),(187,15,58,2,NULL),(188,17,58,2,NULL),(189,20,58,2,NULL),(190,21,58,2,NULL),(191,23,58,2,NULL),(192,24,58,2,NULL),(193,52,58,2,NULL),(194,53,58,2,NULL),(195,54,58,2,NULL),(196,1,58,2,NULL),(197,2,58,2,NULL),(198,3,58,2,NULL),(199,4,58,2,NULL),(200,5,58,2,NULL),(201,6,58,2,NULL),(202,7,58,2,NULL),(203,8,58,2,NULL),(204,9,58,2,NULL),(205,10,58,2,NULL),(206,11,58,2,NULL),(207,12,58,2,NULL),(208,77,58,2,NULL),(209,78,58,2,NULL),(210,79,58,2,NULL),(211,80,58,2,NULL),(212,81,58,2,NULL),(213,82,58,2,NULL),(214,83,58,2,NULL),(215,84,58,2,NULL),(216,59,58,2,NULL),(217,60,58,2,NULL),(218,61,58,2,NULL),(219,62,58,2,NULL),(220,63,58,2,NULL),(221,64,58,2,NULL),(222,65,58,2,NULL),(223,66,58,2,NULL),(224,85,58,2,NULL),(225,87,58,2,NULL),(226,56,58,2,NULL),(227,73,58,2,NULL),(228,89,58,2,NULL),(229,91,58,2,NULL),(230,92,58,2,NULL),(231,13,32,2,NULL),(232,14,32,2,NULL),(233,15,32,2,NULL),(234,17,32,2,NULL),(235,20,32,2,NULL),(236,21,32,2,NULL),(237,23,32,2,NULL),(238,24,32,2,NULL),(239,52,32,2,NULL),(240,53,32,2,NULL),(241,54,32,2,NULL),(242,1,32,2,NULL),(243,2,32,2,NULL),(244,3,32,2,NULL),(245,4,32,2,NULL),(246,5,32,2,NULL),(247,6,32,2,NULL),(248,7,32,2,NULL),(249,8,32,2,NULL),(250,9,32,2,NULL),(251,10,32,2,NULL),(252,11,32,2,NULL),(253,12,32,2,NULL),(254,77,32,2,NULL),(255,78,32,2,NULL),(256,79,32,2,NULL),(257,80,32,2,NULL),(258,81,32,2,NULL),(259,82,32,2,NULL),(260,83,32,2,NULL),(261,84,32,2,NULL),(262,59,32,2,NULL),(263,60,32,2,NULL),(264,61,32,2,NULL),(265,62,32,2,NULL),(266,63,32,2,NULL),(267,64,32,2,NULL),(268,65,32,2,NULL),(269,66,32,2,NULL),(270,85,32,2,NULL),(271,87,32,2,NULL),(272,56,32,2,NULL),(273,73,32,2,NULL),(274,89,32,2,NULL),(275,91,32,2,NULL),(276,92,32,2,NULL),(277,13,46,2,NULL),(278,14,46,2,NULL),(279,15,46,2,NULL),(280,17,46,2,NULL),(281,20,46,2,NULL),(282,21,46,2,NULL),(283,23,46,2,NULL),(284,24,46,2,NULL),(285,52,46,2,NULL),(286,53,46,2,NULL),(287,54,46,2,NULL),(288,1,46,2,NULL),(289,2,46,2,NULL),(290,3,46,2,NULL),(291,4,46,2,NULL),(292,5,46,2,NULL),(293,6,46,2,NULL),(294,7,46,2,NULL),(295,8,46,2,NULL),(296,9,46,2,NULL),(297,10,46,2,NULL),(298,11,46,2,NULL),(299,12,46,2,NULL),(300,77,46,2,NULL),(301,78,46,2,NULL),(302,79,46,2,NULL),(303,80,46,2,NULL),(304,81,46,2,NULL),(305,82,46,2,NULL),(306,83,46,2,NULL),(307,84,46,2,NULL),(308,59,46,2,NULL),(309,60,46,2,NULL),(310,61,46,2,NULL),(311,62,46,2,NULL),(312,63,46,2,NULL),(313,64,46,2,NULL),(314,65,46,2,NULL),(315,66,46,2,NULL),(316,85,46,2,NULL),(317,87,46,2,NULL),(318,56,46,2,NULL),(319,73,46,2,NULL),(320,89,46,2,NULL),(321,91,46,2,NULL),(322,92,46,2,NULL),(323,13,51,2,NULL),(324,14,51,2,NULL),(325,15,51,2,NULL),(326,17,51,2,NULL),(327,20,51,2,NULL),(328,21,51,2,NULL),(329,23,51,2,NULL),(330,24,51,2,NULL),(331,52,51,2,NULL),(332,53,51,2,NULL),(333,54,51,2,NULL),(334,1,51,2,NULL),(335,2,51,2,NULL),(336,3,51,2,NULL),(337,4,51,2,NULL),(338,5,51,2,NULL),(339,6,51,2,NULL),(340,7,51,2,NULL),(341,8,51,2,NULL),(342,9,51,2,NULL),(343,10,51,2,NULL),(344,11,51,2,NULL),(345,12,51,2,NULL),(346,77,51,2,NULL),(347,78,51,2,NULL),(348,79,51,2,NULL),(349,80,51,2,NULL),(350,81,51,2,NULL),(351,82,51,2,NULL),(352,83,51,2,NULL),(353,84,51,2,NULL),(354,59,51,2,NULL),(355,60,51,2,NULL),(356,61,51,2,NULL),(357,62,51,2,NULL),(358,63,51,2,NULL),(359,64,51,2,NULL),(360,65,51,2,NULL),(361,66,51,2,NULL),(362,85,51,2,NULL),(363,87,51,2,NULL),(364,56,51,2,NULL),(365,73,51,2,NULL),(366,89,51,2,NULL),(367,91,51,2,NULL),(368,92,51,2,NULL),(369,13,64,2,NULL),(370,14,64,2,NULL),(371,15,64,2,NULL),(372,17,64,2,NULL),(373,20,64,2,NULL),(374,21,64,2,NULL),(375,23,64,2,NULL),(376,24,64,2,NULL),(377,52,64,2,NULL),(378,53,64,2,NULL),(379,54,64,2,NULL),(380,1,64,2,NULL),(381,2,64,2,NULL),(382,3,64,2,NULL),(383,4,64,2,NULL),(384,5,64,2,NULL),(385,6,64,2,NULL),(386,7,64,2,NULL),(387,8,64,2,NULL),(388,9,64,2,NULL),(389,10,64,2,NULL),(390,11,64,2,NULL),(391,12,64,2,NULL),(392,77,64,2,NULL),(393,78,64,2,NULL),(394,79,64,2,NULL),(395,80,64,2,NULL),(396,81,64,2,NULL),(397,82,64,2,NULL),(398,83,64,2,NULL),(399,84,64,2,NULL),(400,59,64,2,NULL),(401,60,64,2,NULL),(402,61,64,2,NULL),(403,62,64,2,NULL),(404,63,64,2,NULL),(405,64,64,2,NULL),(406,65,64,2,NULL),(407,66,64,2,NULL),(408,85,64,2,NULL),(409,87,64,2,NULL),(410,56,64,2,NULL),(411,73,64,2,NULL),(412,89,64,2,NULL),(413,91,64,2,NULL),(414,92,64,2,NULL),(415,13,67,2,NULL),(416,14,67,2,NULL),(417,15,67,2,NULL),(418,17,67,2,NULL),(419,20,67,2,NULL),(420,21,67,2,NULL),(421,23,67,2,NULL),(422,24,67,2,NULL),(423,52,67,2,NULL),(424,53,67,2,NULL),(425,54,67,2,NULL),(426,1,67,2,NULL),(427,2,67,2,NULL),(428,3,67,2,NULL),(429,4,67,2,NULL),(430,5,67,2,NULL),(431,6,67,2,NULL),(432,7,67,2,NULL),(433,8,67,2,NULL),(434,9,67,2,NULL),(435,10,67,2,NULL),(436,11,67,2,NULL),(437,12,67,2,NULL),(438,77,67,2,NULL),(439,78,67,2,NULL),(440,79,67,2,NULL),(441,80,67,2,NULL),(442,81,67,2,NULL),(443,82,67,2,NULL),(444,83,67,2,NULL),(445,84,67,2,NULL),(446,59,67,2,NULL),(447,60,67,2,NULL),(448,61,67,2,NULL),(449,62,67,2,NULL),(450,63,67,2,NULL),(451,64,67,2,NULL),(452,65,67,2,NULL),(453,66,67,2,NULL),(454,85,67,2,NULL),(455,87,67,2,NULL),(456,56,67,2,NULL),(457,73,67,2,NULL),(458,89,67,2,NULL),(459,91,67,2,NULL),(460,92,67,2,NULL),(461,13,72,2,NULL),(462,14,72,2,NULL),(463,15,72,2,NULL),(464,17,72,2,NULL),(465,20,72,2,NULL),(466,21,72,2,NULL),(467,23,72,2,NULL),(468,24,72,2,NULL),(469,52,72,2,NULL),(470,53,72,2,NULL),(471,54,72,2,NULL),(472,1,72,2,NULL),(473,2,72,2,NULL),(474,3,72,2,NULL),(475,4,72,2,NULL),(476,5,72,2,NULL),(477,6,72,2,NULL),(478,7,72,2,NULL),(479,8,72,2,NULL),(480,9,72,2,NULL),(481,10,72,2,NULL),(482,11,72,2,NULL),(483,12,72,2,NULL),(484,77,72,2,NULL),(485,78,72,2,NULL),(486,79,72,2,NULL),(487,80,72,2,NULL),(488,81,72,2,NULL),(489,82,72,2,NULL),(490,83,72,2,NULL),(491,84,72,2,NULL),(492,59,72,2,NULL),(493,60,72,2,NULL),(494,61,72,2,NULL),(495,62,72,2,NULL),(496,63,72,2,NULL),(497,64,72,2,NULL),(498,65,72,2,NULL),(499,66,72,2,NULL),(500,85,72,2,NULL),(501,87,72,2,NULL),(502,56,72,2,NULL),(503,73,72,2,NULL),(504,89,72,2,NULL),(505,91,72,2,NULL),(506,92,72,2,NULL),(507,13,75,2,NULL),(508,14,75,2,NULL),(509,15,75,2,NULL),(510,17,75,2,NULL),(511,20,75,2,NULL),(512,21,75,2,NULL),(513,23,75,2,NULL),(514,24,75,2,NULL),(515,52,75,2,NULL),(516,53,75,2,NULL),(517,54,75,2,NULL),(518,1,75,2,NULL),(519,2,75,2,NULL),(520,3,75,2,NULL),(521,4,75,2,NULL),(522,5,75,2,NULL),(523,6,75,2,NULL),(524,7,75,2,NULL),(525,8,75,2,NULL),(526,9,75,2,NULL),(527,10,75,2,NULL),(528,11,75,2,NULL),(529,12,75,2,NULL),(530,77,75,2,NULL),(531,78,75,2,NULL),(532,79,75,2,NULL),(533,80,75,2,NULL),(534,81,75,2,NULL),(535,82,75,2,NULL),(536,83,75,2,NULL),(537,84,75,2,NULL),(538,59,75,2,NULL),(539,60,75,2,NULL),(540,61,75,2,NULL),(541,62,75,2,NULL),(542,63,75,2,NULL),(543,64,75,2,NULL),(544,65,75,2,NULL),(545,66,75,2,NULL),(546,85,75,2,NULL),(547,87,75,2,NULL),(548,56,75,2,NULL),(549,73,75,2,NULL),(550,89,75,2,NULL),(551,91,75,2,NULL),(552,92,75,2,NULL),(553,13,76,2,NULL),(554,14,76,2,NULL),(555,15,76,2,NULL),(556,17,76,2,NULL),(557,20,76,2,NULL),(558,21,76,2,NULL),(559,23,76,2,NULL),(560,24,76,2,NULL),(561,52,76,2,NULL),(562,53,76,2,NULL),(563,54,76,2,NULL),(564,13,5,2,NULL),(565,1,76,2,NULL),(566,14,5,2,NULL),(567,2,76,2,NULL),(568,15,5,2,NULL),(569,3,76,2,NULL),(570,17,5,2,NULL),(571,4,76,2,NULL),(572,20,5,2,NULL),(573,5,76,2,NULL),(574,21,5,2,NULL),(575,6,76,2,NULL),(576,23,5,2,NULL),(577,7,76,2,NULL),(578,24,5,2,NULL),(579,8,76,2,NULL),(580,52,5,2,NULL),(581,9,76,2,NULL),(582,53,5,2,NULL),(583,10,76,2,NULL),(584,54,5,2,NULL),(585,11,76,2,NULL),(586,1,5,2,NULL),(587,12,76,2,NULL),(588,2,5,2,NULL),(589,77,76,2,NULL),(590,3,5,2,NULL),(591,78,76,2,NULL),(592,4,5,2,NULL),(593,79,76,2,NULL),(594,5,5,2,NULL),(595,80,76,2,NULL),(596,6,5,2,NULL),(597,81,76,2,NULL),(598,7,5,2,NULL),(599,82,76,2,NULL),(600,8,5,2,NULL),(601,83,76,2,NULL),(602,9,5,2,NULL),(603,84,76,2,NULL),(604,10,5,2,NULL),(605,59,76,2,NULL),(606,11,5,2,NULL),(607,60,76,2,NULL),(608,12,5,2,NULL),(609,61,76,2,NULL),(610,77,5,2,NULL),(611,62,76,2,NULL),(612,78,5,2,NULL),(613,63,76,2,NULL),(614,79,5,2,NULL),(615,64,76,2,NULL),(616,80,5,2,NULL),(617,65,76,2,NULL),(618,81,5,2,NULL),(619,66,76,2,NULL),(620,82,5,2,NULL),(621,85,76,2,NULL),(622,83,5,2,NULL),(623,87,76,2,NULL),(624,84,5,2,NULL),(625,56,76,2,NULL),(626,59,5,2,NULL),(627,73,76,2,NULL),(628,60,5,2,NULL),(629,89,76,2,NULL),(630,61,5,2,NULL),(631,91,76,2,NULL),(632,62,5,2,NULL),(633,92,76,2,NULL),(634,63,5,2,NULL),(635,13,77,2,NULL),(636,64,5,2,NULL),(637,14,77,2,NULL),(638,65,5,2,NULL),(639,15,77,2,NULL),(640,66,5,2,NULL),(641,17,77,2,NULL),(642,85,5,2,NULL),(643,20,77,2,NULL),(644,87,5,2,NULL),(645,21,77,2,NULL),(646,56,5,2,NULL),(647,23,77,2,NULL),(648,73,5,2,NULL),(649,24,77,2,NULL),(650,89,5,2,NULL),(651,52,77,2,NULL),(652,91,5,2,NULL),(653,53,77,2,NULL),(654,92,5,2,NULL),(655,54,77,2,NULL),(656,13,16,2,NULL),(657,1,77,2,NULL),(658,14,16,2,NULL),(659,2,77,2,NULL),(660,15,16,2,NULL),(661,3,77,2,NULL),(662,17,16,2,NULL),(663,4,77,2,NULL),(664,20,16,2,NULL),(665,5,77,2,NULL),(666,21,16,2,NULL),(667,6,77,2,NULL),(668,23,16,2,NULL),(669,7,77,2,NULL),(670,24,16,2,NULL),(671,8,77,2,NULL),(672,52,16,2,NULL),(673,9,77,2,NULL),(674,53,16,2,NULL),(675,10,77,2,NULL),(676,54,16,2,NULL),(677,11,77,2,NULL),(678,1,16,2,NULL),(679,12,77,2,NULL),(680,2,16,2,NULL),(681,77,77,2,NULL),(682,3,16,2,NULL),(683,78,77,2,NULL),(684,4,16,2,NULL),(685,79,77,2,NULL),(686,5,16,2,NULL),(687,80,77,2,NULL),(688,6,16,2,NULL),(689,81,77,2,NULL),(690,7,16,2,NULL),(691,82,77,2,NULL),(692,8,16,2,NULL),(693,83,77,2,NULL),(694,9,16,2,NULL),(695,84,77,2,NULL),(696,10,16,2,NULL),(697,59,77,2,NULL),(698,11,16,2,NULL),(699,60,77,2,NULL),(700,12,16,2,NULL),(701,61,77,2,NULL),(702,77,16,2,NULL),(703,62,77,2,NULL),(704,78,16,2,NULL),(705,63,77,2,NULL),(706,79,16,2,NULL),(707,64,77,2,NULL),(708,80,16,2,NULL),(709,65,77,2,NULL),(710,81,16,2,NULL),(711,66,77,2,NULL),(712,82,16,2,NULL),(713,85,77,2,NULL),(714,83,16,2,NULL),(715,87,77,2,NULL),(716,84,16,2,NULL),(717,56,77,2,NULL),(718,59,16,2,NULL),(719,73,77,2,NULL),(720,60,16,2,NULL),(721,89,77,2,NULL),(722,61,16,2,NULL),(723,91,77,2,NULL),(724,62,16,2,NULL),(725,92,77,2,NULL),(726,63,16,2,NULL),(727,64,16,2,NULL),(728,65,16,2,NULL),(729,66,16,2,NULL),(730,85,16,2,NULL),(731,87,16,2,NULL),(732,56,16,2,NULL),(733,73,16,2,NULL),(734,89,16,2,NULL),(735,91,16,2,NULL),(736,92,16,2,NULL),(737,13,26,2,NULL),(738,14,26,2,NULL),(739,15,26,2,NULL),(740,17,26,2,NULL),(741,20,26,2,NULL),(742,21,26,2,NULL),(743,23,26,2,NULL),(744,24,26,2,NULL),(745,52,26,2,NULL),(746,53,26,2,NULL),(747,54,26,2,NULL),(748,1,26,2,NULL),(749,2,26,2,NULL),(750,3,26,2,NULL),(751,4,26,2,NULL),(752,5,26,2,NULL),(753,6,26,2,NULL),(754,7,26,2,NULL),(755,8,26,2,NULL),(756,9,26,2,NULL),(757,10,26,2,NULL),(758,11,26,2,NULL),(759,12,26,2,NULL),(760,77,26,2,NULL),(761,78,26,2,NULL),(762,79,26,2,NULL),(763,80,26,2,NULL),(764,81,26,2,NULL),(765,82,26,2,NULL),(766,83,26,2,NULL),(767,84,26,2,NULL),(768,59,26,2,NULL),(769,60,26,2,NULL),(770,61,26,2,NULL),(771,62,26,2,NULL),(772,63,26,2,NULL),(773,64,26,2,NULL),(774,65,26,2,NULL),(775,66,26,2,NULL),(776,85,26,2,NULL),(777,87,26,2,NULL),(778,56,26,2,NULL),(779,73,26,2,NULL),(780,89,26,2,NULL),(781,91,26,2,NULL),(782,92,26,2,NULL),(783,13,82,2,NULL),(784,14,82,2,NULL),(785,15,82,2,NULL),(786,17,82,2,NULL),(787,20,82,2,NULL),(788,21,82,2,NULL),(789,23,82,2,NULL),(790,24,82,2,NULL),(791,52,82,2,NULL),(792,53,82,2,NULL),(793,54,82,2,NULL),(794,1,82,2,NULL),(795,2,82,2,NULL),(796,3,82,2,NULL),(797,4,82,2,NULL),(798,5,82,2,NULL),(799,6,82,2,NULL),(800,7,82,2,NULL),(801,8,82,2,NULL),(802,9,82,2,NULL),(803,10,82,2,NULL),(804,11,82,2,NULL),(805,12,82,2,NULL),(806,77,82,2,NULL),(807,78,82,2,NULL),(808,79,82,2,NULL),(809,80,82,2,NULL),(810,81,82,2,NULL),(811,82,82,2,NULL),(812,83,82,2,NULL),(813,84,82,2,NULL),(814,59,82,2,NULL),(815,60,82,2,NULL),(816,61,82,2,NULL),(817,62,82,2,NULL),(818,63,82,2,NULL),(819,64,82,2,NULL),(820,65,82,2,NULL),(821,66,82,2,NULL),(822,85,82,2,NULL),(823,87,82,2,NULL),(824,56,82,2,NULL),(825,73,82,2,NULL),(826,89,82,2,NULL),(827,91,82,2,NULL),(828,92,82,2,NULL),(829,13,96,2,NULL),(830,14,96,2,NULL),(831,15,96,2,NULL),(832,17,96,2,NULL),(833,20,96,2,NULL),(834,21,96,2,NULL),(835,23,96,2,NULL),(836,24,96,2,NULL),(837,52,96,2,NULL),(838,53,96,2,NULL),(839,54,96,2,NULL),(840,1,96,2,NULL),(841,2,96,2,NULL),(842,3,96,2,NULL),(843,4,96,2,NULL),(844,5,96,2,NULL),(845,6,96,2,NULL),(846,7,96,2,NULL),(847,8,96,2,NULL),(848,9,96,2,NULL),(849,10,96,2,NULL),(850,11,96,2,NULL),(851,12,96,2,NULL),(852,77,96,2,NULL),(853,78,96,2,NULL),(854,79,96,2,NULL),(855,80,96,2,NULL),(856,81,96,2,NULL),(857,82,96,2,NULL),(858,83,96,2,NULL),(859,84,96,2,NULL),(860,59,96,2,NULL),(861,60,96,2,NULL),(862,61,96,2,NULL),(863,62,96,2,NULL),(864,63,96,2,NULL),(865,64,96,2,NULL),(866,65,96,2,NULL),(867,66,96,2,NULL),(868,85,96,2,NULL),(869,87,96,2,NULL),(870,56,96,2,NULL),(871,73,96,2,NULL),(872,89,96,2,NULL),(873,91,96,2,NULL),(874,92,96,2,NULL),(875,13,97,2,NULL),(876,14,97,2,NULL),(877,15,97,2,NULL),(878,17,97,2,NULL),(879,20,97,2,NULL),(880,21,97,2,NULL),(881,23,97,2,NULL),(882,24,97,2,NULL),(883,52,97,2,NULL),(884,53,97,2,NULL),(885,54,97,2,NULL),(886,1,97,2,NULL),(887,2,97,2,NULL),(888,3,97,2,NULL),(889,4,97,2,NULL),(890,5,97,2,NULL),(891,6,97,2,NULL),(892,7,97,2,NULL),(893,8,97,2,NULL),(894,9,97,2,NULL),(895,10,97,2,NULL),(896,11,97,2,NULL),(897,12,97,2,NULL),(898,77,97,2,NULL),(899,78,97,2,NULL),(900,79,97,2,NULL),(901,80,97,2,NULL),(902,81,97,2,NULL),(903,82,97,2,NULL),(904,83,97,2,NULL),(905,84,97,2,NULL),(906,59,97,2,NULL),(907,60,97,2,NULL),(908,61,97,2,NULL),(909,62,97,2,NULL),(910,63,97,2,NULL),(911,64,97,2,NULL),(912,65,97,2,NULL),(913,66,97,2,NULL),(914,85,97,2,NULL),(915,87,97,2,NULL),(916,56,97,2,NULL),(917,73,97,2,NULL),(918,89,97,2,NULL),(919,91,97,2,NULL),(920,92,97,2,NULL),(921,13,98,2,NULL),(922,14,98,2,NULL),(923,15,98,2,NULL),(924,17,98,2,NULL),(925,20,98,2,NULL),(926,21,98,2,NULL),(927,23,98,2,NULL),(928,24,98,2,NULL),(929,52,98,2,NULL),(930,53,98,2,NULL),(931,54,98,2,NULL),(932,1,98,2,NULL),(933,2,98,2,NULL),(934,3,98,2,NULL),(935,4,98,2,NULL),(936,5,98,2,NULL),(937,6,98,2,NULL),(938,7,98,2,NULL),(939,8,98,2,NULL),(940,9,98,2,NULL),(941,10,98,2,NULL),(942,11,98,2,NULL),(943,12,98,2,NULL),(944,77,98,2,NULL),(945,78,98,2,NULL),(946,79,98,2,NULL),(947,80,98,2,NULL),(948,81,98,2,NULL),(949,82,98,2,NULL),(950,83,98,2,NULL),(951,84,98,2,NULL),(952,59,98,2,NULL),(953,60,98,2,NULL),(954,61,98,2,NULL),(955,62,98,2,NULL),(956,63,98,2,NULL),(957,64,98,2,NULL),(958,65,98,2,NULL),(959,66,98,2,NULL),(960,85,98,2,NULL),(961,87,98,2,NULL),(962,56,98,2,NULL),(963,73,98,2,NULL),(964,89,98,2,NULL),(965,91,98,2,NULL),(966,92,98,2,NULL),(967,13,1,2,NULL),(968,14,1,2,NULL),(969,15,1,2,NULL),(970,17,1,2,NULL),(971,20,1,2,NULL),(972,21,1,2,NULL),(973,23,1,2,NULL),(974,24,1,2,NULL),(975,52,1,2,NULL),(976,53,1,2,NULL),(977,54,1,2,NULL),(978,1,1,2,NULL),(979,2,1,2,NULL),(980,3,1,2,NULL),(981,4,1,2,NULL),(982,5,1,2,NULL),(983,6,1,2,NULL),(984,69,63,2,NULL),(985,7,1,2,NULL),(986,75,61,2,NULL),(987,8,1,2,NULL),(988,13,50,2,NULL),(989,9,1,2,NULL),(990,14,50,2,NULL),(991,10,1,2,NULL),(992,15,50,2,NULL),(993,11,1,2,NULL),(994,17,50,2,NULL),(995,12,1,2,NULL),(996,20,50,2,NULL),(997,77,1,2,NULL),(998,21,50,2,NULL),(999,78,1,2,NULL),(1000,23,50,2,NULL),(1001,79,1,2,NULL),(1002,24,50,2,NULL),(1003,80,1,2,NULL),(1004,52,50,2,NULL),(1005,81,1,2,NULL),(1006,53,50,2,NULL),(1007,82,1,2,NULL),(1008,54,50,2,NULL),(1009,83,1,2,NULL),(1010,1,50,2,NULL),(1011,84,1,2,NULL),(1012,2,50,2,NULL),(1013,59,1,2,NULL),(1014,3,50,2,NULL),(1015,60,1,2,NULL),(1016,4,50,2,NULL),(1017,61,1,2,NULL),(1018,5,50,2,NULL),(1019,62,1,2,NULL),(1020,6,50,2,NULL),(1021,63,1,2,NULL),(1022,7,50,2,NULL),(1023,64,1,2,NULL),(1024,8,50,2,NULL),(1025,65,1,2,NULL),(1026,9,50,2,NULL),(1027,66,1,2,NULL),(1028,10,50,2,NULL),(1029,85,1,2,NULL),(1030,11,50,2,NULL),(1031,87,1,2,NULL),(1032,12,50,2,NULL),(1033,56,1,2,NULL),(1034,77,50,2,NULL),(1035,73,1,2,NULL),(1036,78,50,2,NULL),(1037,89,1,2,NULL),(1038,79,50,2,NULL),(1039,91,1,2,NULL),(1040,80,50,2,NULL),(1041,92,1,2,NULL),(1042,81,50,2,NULL),(1043,13,14,2,NULL),(1044,82,50,2,NULL),(1045,14,14,2,NULL),(1046,83,50,2,NULL),(1047,15,14,2,NULL),(1048,84,50,2,NULL),(1049,17,14,2,NULL),(1050,59,50,2,NULL),(1051,20,14,2,NULL),(1052,60,50,2,NULL),(1053,21,14,2,NULL),(1054,61,50,2,NULL),(1055,23,14,2,NULL),(1056,62,50,2,NULL),(1057,24,14,2,NULL),(1058,63,50,2,NULL),(1059,52,14,2,NULL),(1060,64,50,2,NULL),(1061,53,14,2,NULL),(1062,65,50,2,NULL),(1063,54,14,2,NULL),(1064,66,50,2,NULL),(1065,1,14,2,NULL),(1066,85,50,2,NULL),(1067,2,14,2,NULL),(1068,87,50,2,NULL),(1069,3,14,2,NULL),(1070,56,50,2,NULL),(1071,4,14,2,NULL),(1072,73,50,2,NULL),(1073,5,14,2,NULL),(1074,89,50,2,NULL),(1075,6,14,2,NULL),(1076,91,50,2,NULL),(1077,7,14,2,NULL),(1078,92,50,2,NULL),(1079,8,14,2,NULL),(1080,72,63,2,NULL),(1081,9,14,2,NULL),(1082,76,61,2,NULL),(1083,10,14,2,NULL),(1084,77,14,2,NULL),(1085,11,14,2,NULL),(1086,78,14,2,NULL),(1087,12,14,2,NULL),(1088,79,14,2,NULL),(1089,80,14,2,NULL),(1090,81,14,2,NULL),(1091,82,14,2,NULL),(1092,83,14,2,NULL),(1093,84,14,2,NULL),(1094,77,20,2,NULL),(1095,59,14,2,NULL),(1096,78,20,2,NULL),(1097,60,14,2,NULL),(1098,79,20,2,NULL),(1099,61,14,2,NULL),(1100,80,20,2,NULL),(1101,62,14,2,NULL),(1102,81,20,2,NULL),(1103,63,14,2,NULL),(1104,82,20,2,NULL),(1105,64,14,2,NULL),(1106,83,20,2,NULL),(1107,65,14,2,NULL),(1108,84,20,2,NULL),(1109,66,14,2,NULL),(1110,77,24,2,NULL),(1111,85,14,2,NULL),(1112,78,24,2,NULL),(1113,87,14,2,NULL),(1114,79,24,2,NULL),(1115,56,14,2,NULL),(1116,80,24,2,NULL),(1117,73,14,2,NULL),(1118,81,24,2,NULL),(1119,89,14,2,NULL),(1120,82,24,2,NULL),(1121,91,14,2,NULL),(1122,83,24,2,NULL),(1123,92,14,2,NULL),(1124,84,24,2,NULL),(1125,13,20,2,NULL),(1126,77,31,2,NULL),(1127,14,20,2,NULL),(1128,78,31,2,NULL),(1129,15,20,2,NULL),(1130,79,31,2,NULL),(1131,17,20,2,NULL),(1132,80,31,2,NULL),(1133,20,20,2,NULL),(1134,81,31,2,NULL),(1135,21,20,2,NULL),(1136,82,31,2,NULL),(1137,23,20,2,NULL),(1138,83,31,2,NULL),(1139,24,20,2,NULL),(1140,84,31,2,NULL),(1141,13,24,2,NULL),(1142,14,24,2,NULL),(1143,15,24,2,NULL),(1144,77,65,2,NULL),(1145,17,24,2,NULL),(1146,78,65,2,NULL),(1147,20,24,2,NULL),(1148,79,65,2,NULL),(1149,21,24,2,NULL),(1150,80,65,2,NULL),(1151,23,24,2,NULL),(1152,81,65,2,NULL),(1153,24,24,2,NULL),(1154,82,65,2,NULL),(1155,13,31,2,NULL),(1156,83,65,2,NULL),(1157,14,31,2,NULL),(1158,84,65,2,NULL),(1159,15,31,2,NULL),(1160,17,31,2,NULL),(1161,59,20,2,NULL),(1162,20,31,2,NULL),(1163,60,20,2,NULL),(1164,21,31,2,NULL),(1165,61,20,2,NULL),(1166,23,31,2,NULL),(1167,62,20,2,NULL),(1168,24,31,2,NULL),(1169,63,20,2,NULL),(1170,64,20,2,NULL),(1171,65,20,2,NULL),(1172,13,65,2,NULL),(1173,66,20,2,NULL),(1174,14,65,2,NULL),(1175,59,24,2,NULL),(1176,15,65,2,NULL),(1177,60,24,2,NULL),(1178,17,65,2,NULL),(1179,61,24,2,NULL),(1180,20,65,2,NULL),(1181,62,24,2,NULL),(1182,21,65,2,NULL),(1183,63,24,2,NULL),(1184,23,65,2,NULL),(1185,64,24,2,NULL),(1186,24,65,2,NULL),(1187,65,24,2,NULL),(1188,66,24,2,NULL),(1189,22,18,2,NULL),(1190,59,31,2,NULL),(1191,22,19,2,NULL),(1192,60,31,2,NULL),(1193,22,39,2,NULL),(1194,61,31,2,NULL),(1195,22,49,2,NULL),(1196,62,31,2,NULL),(1197,22,71,2,NULL),(1198,63,31,2,NULL),(1199,22,74,2,NULL),(1200,64,31,2,NULL),(1201,22,95,2,NULL),(1202,65,31,2,NULL),(1203,52,20,2,NULL),(1204,66,31,2,NULL),(1205,53,20,2,NULL),(1206,54,20,2,NULL),(1207,1,20,2,NULL),(1208,59,65,2,NULL),(1209,2,20,2,NULL),(1210,60,65,2,NULL),(1211,3,20,2,NULL),(1212,61,65,2,NULL),(1213,4,20,2,NULL),(1214,62,65,2,NULL),(1215,5,20,2,NULL),(1216,63,65,2,NULL),(1217,6,20,2,NULL),(1218,64,65,2,NULL),(1219,7,20,2,NULL),(1220,65,65,2,NULL),(1221,8,20,2,NULL),(1222,66,65,2,NULL),(1223,9,20,2,NULL),(1224,10,20,2,NULL),(1225,57,50,2,NULL),(1226,11,20,2,NULL),(1227,52,65,2,NULL),(1228,12,20,2,NULL),(1229,53,65,2,NULL),(1230,85,20,2,NULL),(1231,54,65,2,NULL),(1232,87,20,2,NULL),(1233,1,65,2,NULL),(1234,56,20,2,NULL),(1235,2,65,2,NULL),(1236,73,20,2,NULL),(1237,3,65,2,NULL),(1238,89,20,2,NULL),(1239,4,65,2,NULL),(1240,91,20,2,NULL),(1241,5,65,2,NULL),(1242,92,20,2,NULL),(1243,6,65,2,NULL),(1244,52,24,2,NULL),(1245,7,65,2,NULL),(1246,53,24,2,NULL),(1247,8,65,2,NULL),(1248,54,24,2,NULL),(1249,9,65,2,NULL),(1250,1,24,2,NULL),(1251,10,65,2,NULL),(1252,2,24,2,NULL),(1253,11,65,2,NULL),(1254,3,24,2,NULL),(1255,12,65,2,NULL),(1256,4,24,2,NULL),(1257,85,65,2,NULL),(1258,5,24,2,NULL),(1259,87,65,2,NULL),(1260,6,24,2,NULL),(1261,56,65,2,NULL),(1262,7,24,2,NULL),(1263,73,65,2,NULL),(1264,8,24,2,NULL),(1265,89,65,2,NULL),(1266,9,24,2,NULL),(1267,91,65,2,NULL),(1268,10,24,2,NULL),(1269,92,65,2,NULL),(1270,11,24,2,NULL),(1271,85,24,2,NULL),(1272,12,24,2,NULL),(1273,87,24,2,NULL),(1274,56,24,2,NULL),(1275,85,31,2,NULL),(1276,73,24,2,NULL),(1277,87,31,2,NULL),(1278,89,24,2,NULL),(1279,55,69,2,NULL),(1280,91,24,2,NULL),(1281,74,69,2,NULL),(1282,92,24,2,NULL),(1283,56,31,2,NULL),(1284,52,31,2,NULL),(1285,73,31,2,NULL),(1286,53,31,2,NULL),(1287,89,31,2,NULL),(1288,54,31,2,NULL),(1289,91,31,2,NULL),(1290,92,31,2,NULL),(1291,1,31,2,NULL),(1292,2,31,2,NULL),(1293,3,31,2,NULL),(1294,67,18,2,NULL),(1295,67,19,2,NULL),(1296,67,39,2,NULL),(1297,4,31,2,NULL),(1298,67,49,2,NULL),(1299,5,31,2,NULL),(1300,67,71,2,NULL),(1301,6,31,2,NULL),(1302,67,74,2,NULL),(1303,7,31,2,NULL),(1304,67,95,2,NULL),(1305,8,31,2,NULL),(1306,68,18,2,NULL),(1307,9,31,2,NULL),(1308,68,19,2,NULL),(1309,10,31,2,NULL),(1310,68,39,2,NULL),(1311,11,31,2,NULL),(1312,68,49,2,NULL),(1313,12,31,2,NULL),(1314,68,71,2,NULL),(1315,68,74,2,NULL),(1316,68,95,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(28,'android.permission.CALL_PHONE'),(26,'android.permission.GET_ACCOUNTS'),(11,'android.permission.INTERNET'),(30,'android.permission.MODIFY_AUDIO_SETTINGS'),(27,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(31,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(29,'android.permission.RECORD_AUDIO'),(25,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(18,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.fede.launcher.permission.READ_SETTINGS'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(14,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(16,'com.motorola.launcher.permission.READ_SETTINGS'),(24,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'http://market.android.com/details?id=com.antonio.futurecars',NULL,NULL,NULL),(8,NULL,NULL,'http://market.android.com/details?id=org.tonee.motorbikes',NULL,NULL,NULL),(9,NULL,NULL,'http://market.android.com/details?id=org.tonee.bottle',NULL,NULL,NULL),(10,NULL,NULL,'http://market.android.com/details?id=org.tonee.contact.widget',NULL,NULL,NULL),(11,NULL,NULL,'http://market.android.com/details?id=com.antonio.notes.plus',NULL,NULL,NULL),(12,NULL,NULL,'http://market.android.com/details?id=com.antonio.fruits.plus',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/details?id=org.tonee.tuningcars',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/details?id=com.antonio.media2.plus.widget',NULL,NULL,NULL),(15,NULL,NULL,'http://market.android.com/details?id=com.antonio.smiley.plus',NULL,NULL,NULL),(16,NULL,NULL,'http://market.android.com/details?id=org.tonee.fly.widgets',NULL,NULL,NULL),(17,NULL,NULL,'http://market.android.com/details?id=com.antonio.messages.plus.widget',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/details?id=com.antonio.bodydots',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.media.plus',NULL,NULL,NULL),(20,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.home.plus',NULL,NULL,NULL),(21,NULL,NULL,'http://market.android.com/details?id=com.antonio.widgets7.organize.plus',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=com.antonio.thermo2.activity',NULL,NULL,NULL),(23,NULL,NULL,'market://search?q=pname:org.tonee.monster.widgets',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/details?id=com.antonio.tattoo',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=com.antonio.browser2.plus.widget',NULL,NULL,NULL),(26,NULL,NULL,'http://market.android.com/details?id=com.antonio.fashion',NULL,NULL,NULL),(27,NULL,NULL,'http://market.android.com/details?id=com.antonio.funny',NULL,NULL,NULL),(28,NULL,NULL,'http://market.android.com/details?id=com.antonio.home',NULL,NULL,NULL),(29,NULL,NULL,'http://market.android.com/details?id=org.tonee.cuteanimals',NULL,NULL,NULL),(30,NULL,NULL,'http://market.android.com/details?id=org.tonee.clock',NULL,NULL,NULL),(31,NULL,NULL,'http://market.android.com/details?id=com.antonio.wardrobe.apps',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=com.wangsong.costwatcher',NULL,NULL,NULL),(37,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(38,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(39,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(40,NULL,NULL,'market://search?q=pub:\"Ja.w Dev\"',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(47,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(48,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(49,NULL,NULL,'mailto:jappre@gmail.com',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,6,2),(2,8,4),(3,14,5),(4,18,32),(5,20,34),(6,24,37),(7,26,38),(8,30,39),(9,39,46),(10,39,47),(11,40,48),(12,45,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,1,5),(7,2,2),(8,1,6),(9,2,3),(10,1,7),(11,2,4),(12,1,8),(13,2,5),(14,1,9),(15,2,6),(16,1,10),(17,2,7),(18,1,11),(19,2,8),(20,1,12),(21,2,9),(22,1,13),(23,2,10),(24,1,14),(25,2,11),(26,1,15),(27,2,12),(28,1,17),(29,2,13),(30,1,16),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,2,19),(36,2,18),(37,2,21),(38,2,20),(39,2,23),(40,2,22),(41,2,25),(42,2,24),(43,3,1),(44,3,2),(45,3,3),(46,3,4),(47,3,5),(48,3,6),(49,3,7),(50,3,8),(51,4,1),(52,3,9),(53,4,2),(54,3,10),(55,4,3),(56,3,11),(57,4,4),(58,3,12),(59,4,5),(60,3,13),(61,4,6),(62,3,14),(63,4,7),(64,3,15),(65,4,8),(66,3,17),(67,4,9),(68,3,16),(69,4,10),(70,3,19),(71,4,11),(72,3,18),(73,4,12),(74,3,21),(75,4,13),(76,3,20),(77,4,14),(78,3,23),(79,4,15),(80,3,22),(81,4,17),(82,3,25),(83,4,16),(84,3,24),(85,4,18),(86,3,27),(87,4,20),(88,3,26),(89,4,23),(90,3,29),(91,4,25),(92,3,28),(93,4,24),(94,3,30),(95,5,1),(96,5,2),(97,5,3),(98,5,4),(99,5,5),(100,5,6),(101,5,7),(102,5,8),(103,5,10),(104,5,11),(105,5,13),(106,5,14),(107,5,15),(108,5,16),(109,5,18),(110,5,23),(111,5,24),(112,5,27),(113,5,31),(114,6,1),(115,6,2),(116,6,3),(117,6,4),(118,6,5),(119,6,6),(120,6,7),(121,6,8),(122,6,9),(123,6,10),(124,6,11),(125,6,12),(126,6,13),(127,6,14),(128,6,15),(129,6,17),(130,6,16),(131,6,19),(132,6,18),(133,6,21),(134,6,20),(135,6,23),(136,6,22),(137,6,25),(138,6,24),(139,7,1),(140,7,2),(141,7,3),(142,7,4),(143,7,5),(144,7,6),(145,7,7),(146,7,8),(147,7,10),(148,7,11),(149,7,13),(150,7,14),(151,7,15),(152,7,16),(153,7,18),(154,7,21),(155,7,20),(156,7,23),(157,7,24),(158,7,26);
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

-- Dump completed on 2015-10-12  3:31:33
