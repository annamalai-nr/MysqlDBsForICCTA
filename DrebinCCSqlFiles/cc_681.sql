-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_681
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (34,'(.*)'),(33,'NULL-CONSTANT'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(29,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(28,'android.intent.action.CHOOSER'),(26,'android.intent.action.GET_CONTENT'),(4,'android.intent.action.MAIN'),(6,'android.intent.action.MEDIA_EJECT'),(8,'android.intent.action.MEDIA_MOUNTED'),(23,'android.intent.action.SCREEN_OFF'),(24,'android.intent.action.SCREEN_ON'),(32,'android.intent.action.SENDTO'),(31,'android.intent.action.USER_PRESENT'),(25,'android.intent.action.VIEW'),(27,'android.media.action.IMAGE_CAPTURE'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.service.wallpaper.WallpaperService'),(9,'com.airpush.android.PushServiceStart26644'),(5,'com.airpush.android.PushServiceStart56632'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(15,'com.android.vending.INSTALL_REFERRER'),(20,'com.android.vending.billing.IN_APP_NOTIFY'),(21,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(22,'com.android.vending.billing.RESPONSE_CODE'),(13,'com.applovin.sdk.AppLovinService'),(17,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTRATION'),(30,'com.inoxpush.adnetwork.PushServiceStart(.*)'),(11,'com.inoxpush.adnetwork.PushServiceStart43971'),(12,'com.inoxpush.adnetwork.PushServiceStart8911'),(35,'com.inoxpush.adnetwork.PushServiceStartNULL-CONSTANT'),(14,'com.instacollage.picture.frames'),(3,'com.jiubang.goscreenlock.theme'),(19,'com.quipper.a.query');
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
INSERT INTO `Applications` VALUES (1,'com.yukka.livewallpaper.stream',2),(2,'com.freeapps.iphone4.horror',1),(3,'com.macte.JigsawPuzzle.Butterflies',15),(4,'org.fishgold',1),(5,'com.christmasgame.balloon',6),(6,'com.instacollage.picture.frames',4),(7,'com.quipack.a.b4fb2755ff04272000100744b',2);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(1,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'com.instacollage.picture.frames'),(6,'com.quipper.a.query.TOPIC');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.yukka.livewallpaper.stream.LiveWallpaperService'),(2,1,'com.apperhand.device.android.AndroidSDKProvider'),(3,1,'com.yukka.BootReceiver'),(4,2,'com.freeapps.iphone4.horror.GOLockerInstallDialog'),(5,2,'com.airpush.android.PushAds'),(6,2,'com.freeapps.iphone4.horror.srv'),(7,2,'com.freeapps.iphone4.horror.GoDownloadServiceervice'),(8,2,'com.airpush.android.PushService'),(9,2,'com.apperhand.device.android.AndroidSDKProvider'),(10,2,'com.freeapps.iphone4.horror.rec'),(11,2,'com.airpush.android.UserDetailsReceiver'),(12,2,'com.airpush.android.MessageReceiver'),(13,3,'com.macte.JigsawPuzzle.Butterflies.JigsawPuzzle'),(14,2,'com.airpush.android.DeliveryReceiver'),(15,2,'com.freeapps.iphone4.horror.bReceiver'),(16,3,'com.macte.JigsawPuzzle.Butterflies.GameView'),(17,2,'com.Leadbolt.AdNotification'),(18,3,'com.mobfox.sdk.InAppWebView'),(19,3,'com.macte.JigsawPuzzle.Butterflies.SettingsList'),(20,3,'com.macte.JigsawPuzzle.Butterflies.GalleryLevel'),(21,3,'com.macte.JigsawPuzzle.Butterflies.ProVersion'),(22,3,'com.airpush.android.PushAds'),(23,3,'com.macte.JigsawPuzzle.Butterflies.DownloadService'),(24,3,'com.apperhand.device.android.AndroidSDKProvider'),(25,3,'com.airpush.android.PushService'),(26,3,'com.airpush.android.UserDetailsReceiver'),(27,3,'com.airpush.android.MessageReceiver'),(28,3,'com.airpush.android.DeliveryReceiver'),(29,3,'com.macte.JigsawPuzzle.Butterflies.BootReceiver'),(30,4,'org.fishgold.main'),(31,4,'com.apperhand.device.android.AndroidSDKProvider'),(32,5,'com.christmasgame.balloon.MainActivity'),(33,5,'com.christmasgame.balloon.Ranking'),(34,5,'com.christmasgame.balloon.AppsList'),(35,5,'com.christmasgame.balloon.EditProfile'),(36,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(37,5,'com.google.ads.AdActivity'),(38,5,'com.apperhand.device.android.AndroidSDKProvider'),(39,5,'com.christmasgame.balloonornodeal.Widget'),(40,6,'com.instacollage.picture.frames.LaunchScreen'),(41,6,'com.instacollage.picture.frames.FrameScreen'),(42,6,'com.instacollage.picture.frames.RateActivity'),(43,6,'com.instacollage.picture.frames.HelpScreen'),(44,6,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(45,6,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(46,6,'com.inox.referrer.SendDataService'),(47,6,'com.inoxpush.adnetwork.PushAdService'),(48,6,'com.inoxpush.downloadticker.DownloadTickerService'),(49,6,'com.apperhand.device.android.AndroidSDKProvider'),(50,6,'com.applovin.sdk.AppLovinService'),(51,6,'com.senddroid.AdService'),(52,6,'com.moolah.NotificationService'),(53,6,'com.inox.referrer.Receiver'),(54,6,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(55,6,'com.inoxpush.adnetwork.AdMessageReceiver'),(56,6,'com.inoxpush.adnetwork.ClickAdReceiver'),(57,6,'com.applovin.sdk.AppLovinNotificationReceiver'),(58,6,'com.applovin.sdk.AppLovinPushReceiver'),(59,6,'com.instacollage.picture.frames.BootReceiver'),(60,6,'com.moolah.MessageReceiver'),(61,6,'com.moolah.BootReceiver'),(62,1,'com.apperhand.device.android.a.b'),(63,1,'com.apperhand.device.android.a.d'),(64,7,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(65,7,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(66,7,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(67,7,'com.quipper.a.v5.single.activities.PurchaseActivity'),(68,7,'com.quipper.a.v5.activities.FlowControlActivity'),(69,7,'com.quipper.a.v5.activities.WebViewActivity'),(70,7,'com.quipper.a.v5.activities.LanderRibbonActivity'),(71,7,'com.quipper.a.v5.activities.UserPriorityActivity'),(72,7,'com.quipper.a.v5.single.activities.TopicActivity'),(73,7,'com.quipper.a.v5.activities.TopicReviewActivity'),(74,7,'com.quipper.a.v5.activities.VideoPlayerActivity'),(75,7,'com.quipper.a.v5.activities.FlagQuestionActivity'),(76,7,'com.quipper.a.v5.activities.ShareActivity'),(77,4,'com.apperhand.device.android.a.d'),(78,7,'com.quipper.a.v5.activities.QuipperDialog'),(79,7,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(80,4,'com.apperhand.device.android.a.a'),(81,7,'com.quipper.a.v5.activities.LoginActivity'),(82,7,'com.quipper.a.v5.activities.SignupActivity'),(83,7,'com.quipper.a.v5.activities.AgreementActivity'),(84,7,'com.quipper.a.v5.activities.FacebookConnectActivity'),(85,7,'com.quipper.a.v5.single.billing.BillingService'),(86,7,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(87,7,'com.apperhand.device.android.AndroidSDKProvider'),(88,7,'com.quipper.a.v5.single.receivers.TopicReceiver'),(89,7,'com.quipper.a.v5.single.billing.BillingReceiver'),(90,7,'com.Leadbolt.AdNotification'),(91,7,'com.quipper.a.v5.single.BootReceiver'),(92,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(93,5,'com.apperhand.device.android.a.b'),(94,5,'com.christmasgame.balloon.MainActivity$13'),(95,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(96,5,'com.apperhand.device.android.a.e'),(97,5,'com.christmasgame.balloon.Ranking$2'),(98,5,'com.christmasgame.balloon.MainActivity$7'),(99,6,'com.inoxpush.downloadticker.DownloadTicker'),(100,6,'com.senddroid.SendDroid'),(101,6,'com.apperhand.device.android.a.b'),(102,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(103,5,'com.christmasgame.balloon.MainActivity$5'),(104,5,'com.mobclix.android.sdk.Mobclix$3'),(105,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(106,5,'com.christmasgame.balloon.MainActivity$9'),(107,6,'com.apperhand.device.android.a.d'),(108,6,'com.pontiflex.mobile.webview.sdk.AdManager'),(109,6,'com.inox.referrer.StartAd');
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
INSERT INTO `ComponentExtras` VALUES (1,2,'DEVELOPER_ID'),(2,2,'APPLICATION_ID'),(3,2,'USER_AGENT'),(4,2,'FIRST_RUN'),(5,2,'M_SERVER_URL'),(6,2,'SERVICE_MODE'),(7,31,'APPLICATION_ID'),(8,31,'SERVICE_MODE'),(9,31,'USER_AGENT'),(10,31,'M_SERVER_URL'),(11,31,'DEVELOPER_ID'),(12,31,'FIRST_RUN'),(13,31,'permanent'),(14,36,'com.mobclix.APPLICATION_ID'),(15,32,'com.mobclix.APPLICATION_ID'),(16,35,'com.mobclix.APPLICATION_ID'),(17,33,'com.mobclix.APPLICATION_ID'),(18,34,'url'),(19,36,'com.christmasgame.balloon.data'),(20,38,'FIRST_RUN'),(21,36,'com.christmasgame.balloon.type'),(22,38,'DEVELOPER_ID'),(23,37,'com.google.ads.AdOpener'),(24,38,'APPLICATION_ID'),(25,32,'UMENG_CHANNEL'),(26,35,'UMENG_CHANNEL'),(27,33,'UMENG_CHANNEL'),(28,36,'com.mobclix.LOG_LEVEL'),(29,32,'com.mobclix.LOG_LEVEL'),(30,35,'com.mobclix.LOG_LEVEL'),(31,33,'com.mobclix.LOG_LEVEL'),(32,36,'imageUri'),(33,38,'SERVICE_MODE'),(34,37,'params'),(35,33,'mGameID'),(36,37,'action'),(37,38,'M_SERVER_URL'),(38,32,'UMENG_APPKEY'),(39,35,'UMENG_APPKEY'),(40,33,'UMENG_APPKEY'),(41,60,'notif_sig'),(42,33,'mThisGameHighScore'),(43,58,'applovin.sdk.autoupdate_disabled'),(44,50,'applovin.sdk.autoupdate_disabled'),(45,57,'applovin.sdk.autoupdate_disabled'),(46,55,'appId'),(47,58,'applovin.sdk.verbose_logging'),(48,50,'applovin.sdk.verbose_logging'),(49,57,'applovin.sdk.verbose_logging'),(50,56,'marketlink'),(51,49,'FIRST_RUN'),(52,38,'USER_AGENT'),(53,35,'mGameID'),(54,35,'nick'),(55,56,'adType'),(56,49,'USER_AGENT'),(57,56,'appId'),(58,49,'M_SERVER_URL'),(59,38,'permanent'),(60,49,'DEVELOPER_ID'),(61,36,'ADMOB_PUBLISHER_ID'),(62,32,'ADMOB_PUBLISHER_ID'),(63,35,'ADMOB_PUBLISHER_ID'),(64,33,'ADMOB_PUBLISHER_ID'),(65,49,'SERVICE_MODE'),(66,42,'link'),(67,58,'applovin.sdk.key'),(68,50,'applovin.sdk.key'),(69,57,'applovin.sdk.key'),(70,54,'appId'),(71,53,'referrer'),(72,47,'adType'),(73,49,'APPLICATION_ID'),(74,47,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',1,19,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'r',1,37,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,64,'a',1,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,81,'a',0,NULL,NULL),(78,82,'a',0,NULL,NULL),(79,83,'a',0,NULL,NULL),(80,84,'a',0,NULL,NULL),(81,85,'s',0,NULL,NULL),(82,86,'s',0,NULL,NULL),(83,87,'s',0,NULL,NULL),(84,88,'r',1,NULL,NULL),(85,89,'r',1,NULL,NULL),(86,90,'r',0,NULL,NULL),(87,91,'r',1,NULL,NULL),(88,92,'r',1,NULL,NULL),(89,104,'r',1,NULL,NULL),(90,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,2,3),(4,3,2),(5,4,2),(6,5,2),(7,6,2),(8,7,2),(9,8,31),(10,9,31),(11,10,31),(12,11,30),(13,12,31),(14,13,31),(15,14,31),(16,15,32),(17,16,38),(18,17,32),(19,18,36),(20,19,38),(21,20,38),(22,21,33),(23,22,36),(24,23,33),(25,24,36),(26,25,32),(27,26,36),(28,27,36),(29,28,32),(30,29,36),(31,30,36),(32,31,38),(33,32,40),(34,33,36),(35,34,51),(36,35,59),(37,36,49),(38,37,49),(39,38,36),(40,39,49),(41,40,40),(42,40,41),(43,41,32),(44,42,54),(45,43,38),(46,44,38),(47,45,41),(48,46,51),(49,47,32),(50,48,41),(51,49,32),(52,50,32),(53,51,36),(54,52,36),(55,53,60),(56,54,36),(57,55,37),(58,56,49),(59,57,56),(60,58,40),(61,59,40),(62,60,56),(63,61,49),(64,62,53),(65,63,40),(66,64,42),(67,65,41),(68,66,55),(69,67,49),(70,68,51),(71,69,41),(72,70,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,62,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(2,2,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(3,63,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(4,62,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(5,63,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(6,62,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(7,63,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(8,77,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',16,'p',NULL),(9,80,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(10,77,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(11,31,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(12,77,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',27,'p',NULL),(13,80,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(14,80,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(15,32,'<com.christmasgame.balloon.MainActivity: void o()>',10,'a',NULL),(16,93,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(17,94,'<com.christmasgame.balloon.MainActivity$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(18,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(19,96,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(20,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(21,97,'<com.christmasgame.balloon.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(22,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(23,33,'<com.christmasgame.balloon.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(24,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(25,38,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',48,'s',NULL),(26,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(27,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(28,98,'<com.christmasgame.balloon.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(30,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(31,96,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(32,99,'<com.inoxpush.downloadticker.DownloadTicker: void <init>(android.content.Context)>',8,'s',NULL),(33,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(34,100,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(35,49,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(36,101,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(37,101,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(38,102,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(39,101,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(40,40,'<com.instacollage.picture.frames.LaunchScreen: void startFrame(int)>',7,'a',NULL),(41,103,'<com.christmasgame.balloon.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(42,54,'<com.inoxpush.adnetwork.DeviceDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(43,93,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(44,93,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(45,41,'<com.instacollage.picture.frames.FrameScreen: float rot(android.content.Context,android.net.Uri)>',8,'p',0),(46,100,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(47,32,'<com.christmasgame.balloon.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(48,41,'<com.instacollage.picture.frames.FrameScreen: void shareImage()>',48,'a',NULL),(49,106,'<com.christmasgame.balloon.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(50,32,'<com.christmasgame.balloon.MainActivity: void u()>',21,'a',NULL),(51,95,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(52,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(53,60,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(54,36,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(55,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(56,107,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(57,56,'<com.inoxpush.adnetwork.ClickAdReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(58,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startSingleOfferActivity(android.app.Activity)>',26,'a',NULL),(59,40,'<com.instacollage.picture.frames.LaunchScreen: void onCreate(android.os.Bundle)>',11,'a',NULL),(60,56,'<com.inoxpush.adnetwork.ClickAdReceiver: void sendToMarket(android.content.Context)>',10,'a',NULL),(61,107,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(62,53,'<com.inox.referrer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(63,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(64,42,'<com.instacollage.picture.frames.RateActivity: void startRating()>',7,'a',NULL),(65,109,'<com.inox.referrer.StartAd: void makeShortcut()>',6,'r',NULL),(66,55,'<com.inoxpush.adnetwork.AdMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(67,107,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(68,100,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL),(69,41,'<com.instacollage.picture.frames.FrameScreen: void startHelpActivity(android.view.View)>',4,'a',NULL),(70,108,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,18),(2,3,18),(3,7,25),(4,8,25),(5,10,18),(6,13,26),(7,14,27),(8,15,27),(9,16,27),(10,18,27),(11,21,26),(12,22,27),(13,23,27),(14,24,27),(15,26,27),(16,29,25),(17,30,25),(18,31,25),(19,32,28),(20,33,28),(21,34,28),(22,35,28),(23,36,28),(24,37,28),(25,38,28),(26,39,28),(27,42,28),(28,43,28),(29,44,28),(30,45,28),(31,47,28),(32,48,28),(33,49,28),(34,50,28),(35,51,25),(36,52,25),(37,55,30),(38,56,18),(39,57,32),(40,58,28),(41,59,28),(42,60,25),(43,61,28),(44,62,28),(45,64,28),(46,65,28),(47,67,28),(48,68,25),(49,69,28),(50,70,25),(51,71,33),(52,72,25),(53,73,33),(54,74,34),(55,75,34),(56,76,35),(57,77,30),(58,80,25),(59,83,25),(60,84,25),(61,85,18),(62,86,30),(63,87,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/device/android/AndroidSDKProvider'),(2,4,'com/apperhand/device/android/AndroidSDKProvider'),(3,5,'com/apperhand/device/android/AndroidSDKProvider'),(4,6,'com/christmasgame/balloon/Ranking'),(5,9,'com/mobclix/android/sdk/MobclixBrowserActivity'),(6,11,'com/christmasgame/balloon/EditProfile'),(7,19,'com/christmasgame/balloon/EditProfile'),(8,27,'com/apperhand/device/android/AndroidSDKProvider'),(9,28,'com/apperhand/device/android/AndroidSDKProvider'),(10,40,'com/mobclix/android/sdk/MobclixBrowserActivity'),(11,41,'com/inoxpush/downloadticker/DownloadTickerService'),(12,46,'com/apperhand/device/android/AndroidSDKProvider'),(13,53,'com/instacollage/picture/frames/FrameScreen'),(14,63,'com/christmasgame/balloon/AppsList'),(15,66,'com/mobclix/android/sdk/MobclixBrowserActivity'),(16,71,'com/moolah/NotificationService'),(17,73,'com/moolah/NotificationService'),(18,78,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(19,79,'com/instacollage/picture/frames/HelpScreen'),(20,81,'com/inox/referrer/SendDataService'),(21,82,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity'),(22,88,'com/instacollage/picture/frames/HelpScreen'),(23,89,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,13),(2,8,14),(3,29,16),(4,30,17),(5,31,19),(6,51,25),(7,52,27),(8,57,30),(9,60,31),(10,68,32),(11,70,33),(12,72,34),(13,74,35),(14,75,37),(15,80,38),(16,83,41),(17,84,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'M_SERVER_URL'),(2,1,'USER_AGENT'),(3,1,'SERVICE_MODE'),(4,1,'FIRST_RUN'),(5,1,'DEVELOPER_ID'),(6,1,'APPLICATION_ID'),(7,2,'android.intent.extra.shortcut.NAME'),(8,2,'android.intent.extra.shortcut.ICON'),(9,2,'android.intent.extra.shortcut.INTENT'),(10,3,'android.intent.extra.shortcut.NAME'),(11,3,'android.intent.extra.shortcut.ICON'),(12,3,'android.intent.extra.shortcut.INTENT'),(13,4,'M_SERVER_URL'),(14,4,'USER_AGENT'),(15,4,'SERVICE_MODE'),(16,4,'FIRST_RUN'),(17,4,'DEVELOPER_ID'),(18,4,'(.*)'),(19,4,'APPLICATION_ID'),(20,5,'M_SERVER_URL'),(21,5,'USER_AGENT'),(22,5,'SERVICE_MODE'),(23,5,'FIRST_RUN'),(24,5,'DEVELOPER_ID'),(25,5,'APPLICATION_ID'),(26,6,'mGameID'),(27,6,'mThisGameHighScore'),(28,10,'android.intent.extra.shortcut.NAME'),(29,10,'android.intent.extra.shortcut.ICON'),(30,10,'android.intent.extra.shortcut.INTENT'),(31,11,'mGameID'),(32,11,'nick'),(33,14,'output'),(34,15,'output'),(35,15,'android.intent.extra.videoQuality'),(36,19,'mGameID'),(37,19,'nick'),(38,22,'output'),(39,23,'output'),(40,23,'android.intent.extra.videoQuality'),(41,27,'M_SERVER_URL'),(42,27,'USER_AGENT'),(43,27,'SERVICE_MODE'),(44,27,'FIRST_RUN'),(45,27,'DEVELOPER_ID'),(46,27,'APPLICATION_ID'),(47,28,'M_SERVER_URL'),(48,28,'USER_AGENT'),(49,28,'SERVICE_MODE'),(50,28,'FIRST_RUN'),(51,28,'DEVELOPER_ID'),(52,28,'(.*)'),(53,28,'APPLICATION_ID'),(54,32,'android.intent.extra.INTENT'),(55,33,'android.intent.extra.INTENT'),(56,34,'android.intent.extra.TITLE'),(57,34,'android.intent.extra.INTENT'),(58,35,'android.intent.extra.INTENT'),(59,36,'android.intent.extra.TITLE'),(60,36,'android.intent.extra.INTENT'),(61,37,'android.intent.extra.INTENT'),(62,38,'android.intent.extra.TITLE'),(63,38,'android.intent.extra.INTENT'),(64,39,'android.intent.extra.TITLE'),(65,39,'android.intent.extra.INTENT'),(66,42,'android.intent.extra.INTENT'),(67,43,'android.intent.extra.INTENT'),(68,44,'android.intent.extra.TITLE'),(69,44,'android.intent.extra.INTENT'),(70,45,'android.intent.extra.INTENT'),(71,46,'M_SERVER_URL'),(72,46,'USER_AGENT'),(73,47,'android.intent.extra.TITLE'),(74,46,'SERVICE_MODE'),(75,47,'android.intent.extra.INTENT'),(76,46,'FIRST_RUN'),(77,46,'DEVELOPER_ID'),(78,46,'APPLICATION_ID'),(79,48,'android.intent.extra.INTENT'),(80,49,'android.intent.extra.TITLE'),(81,49,'android.intent.extra.INTENT'),(82,50,'android.intent.extra.TITLE'),(83,50,'android.intent.extra.INTENT'),(84,53,'total'),(85,53,'layout_id'),(86,55,'NULL-CONSTANT'),(87,55,'type'),(88,56,'duplicate'),(89,56,'android.intent.extra.shortcut.NAME'),(90,56,'android.intent.extra.shortcut.ICON'),(91,56,'android.intent.extra.shortcut.INTENT'),(92,57,'android.intent.extra.SUBJECT'),(93,58,'android.intent.extra.INTENT'),(94,59,'android.intent.extra.INTENT'),(95,61,'android.intent.extra.TITLE'),(96,61,'android.intent.extra.INTENT'),(97,62,'android.intent.extra.INTENT'),(98,63,'url'),(99,64,'android.intent.extra.TITLE'),(100,64,'android.intent.extra.INTENT'),(101,65,'android.intent.extra.INTENT'),(102,67,'android.intent.extra.TITLE'),(103,67,'android.intent.extra.INTENT'),(104,69,'android.intent.extra.TITLE'),(105,69,'android.intent.extra.INTENT'),(106,71,'test_mode'),(107,73,'notif_sig'),(108,73,'test_mode'),(109,76,'NULL-CONSTANT'),(110,76,'type'),(111,77,'NULL-CONSTANT'),(112,77,'type'),(113,78,'singleoffer'),(114,78,'offerCount'),(115,82,'offerCount'),(116,85,'duplicate'),(117,85,'android.intent.extra.shortcut.NAME'),(118,85,'android.intent.extra.shortcut.ICON'),(119,85,'android.intent.extra.shortcut.INTENT'),(120,86,'NULL-CONSTANT'),(121,86,'type'),(122,87,'android.intent.extra.shortcut.NAME'),(123,87,'android.intent.extra.shortcut.ICON'),(124,87,'android.intent.extra.shortcut.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,4),(7,7,2),(8,8,4),(9,9,4),(10,10,4),(11,11,8),(12,11,7),(13,11,6),(14,12,9),(15,13,2),(16,14,4),(17,15,4),(18,16,10),(19,17,4),(20,18,11),(21,19,12),(22,20,13),(23,21,14),(24,22,15),(25,23,16),(26,24,17),(27,25,2),(28,26,2),(29,27,4),(30,28,19),(31,29,22),(32,29,21),(33,29,20),(34,30,2),(35,31,24),(36,31,23),(37,32,23),(38,32,24),(39,33,29),(40,34,23),(41,34,31);
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
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,6,2),(4,7,3),(5,8,4),(6,9,4),(7,10,4),(8,13,3),(9,14,2),(10,15,2),(11,17,2),(12,23,5),(13,24,5),(14,25,3),(15,26,3),(16,27,2),(17,28,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'image','*'),(2,17,'image','*'),(3,18,'image','*'),(4,21,'image','*'),(5,25,'image','*'),(6,26,'image','*'),(7,74,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.yukka.livewallpaper.stream'),(2,4,'org.fishgold'),(3,5,'org.fishgold'),(4,6,'com.christmasgame.balloon'),(5,9,'com.christmasgame.balloon'),(6,11,'com.christmasgame.balloon'),(7,19,'com.christmasgame.balloon'),(8,27,'com.christmasgame.balloon'),(9,28,'com.christmasgame.balloon'),(10,40,'com.christmasgame.balloon'),(11,41,'com.instacollage.picture.frames'),(12,46,'com.instacollage.picture.frames'),(13,53,'com.instacollage.picture.frames'),(14,63,'com.christmasgame.balloon'),(15,66,'com.christmasgame.balloon'),(16,71,'com.instacollage.picture.frames'),(17,73,'com.instacollage.picture.frames'),(18,78,'com.instacollage.picture.frames'),(19,79,'com.instacollage.picture.frames'),(20,81,'com.instacollage.picture.frames'),(21,82,'com.instacollage.picture.frames'),(22,88,'com.instacollage.picture.frames'),(23,89,'com.instacollage.picture.frames');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,4,0),(5,8,0),(6,13,0),(7,15,0),(8,16,0),(9,19,0),(10,21,0),(11,23,0),(12,25,0),(13,29,0),(14,30,0),(15,32,0),(16,39,0),(17,40,0),(18,47,0),(19,47,0),(20,50,0),(21,51,0),(22,53,0),(23,58,0),(24,58,0),(25,59,0),(26,61,0),(27,62,0),(28,84,0),(29,85,0),(30,87,0),(31,88,0),(32,88,0),(33,89,0),(34,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,7,1,0),(3,10,1,0),(4,11,0,0),(5,11,0,0),(6,15,0,0),(7,17,1,0),(8,17,1,0),(9,18,0,0),(10,19,1,0),(11,21,0,0),(12,22,1,0),(13,22,1,0),(14,22,1,0),(15,22,1,0),(16,22,1,0),(17,22,1,0),(18,22,1,0),(19,23,0,0),(20,24,1,0),(21,24,1,0),(22,24,1,0),(23,24,1,0),(24,24,1,0),(25,24,1,0),(26,24,1,0),(27,25,0,0),(28,25,0,0),(29,26,1,0),(30,26,1,0),(31,28,1,0),(32,29,1,0),(33,29,1,0),(34,29,1,0),(35,29,1,0),(36,29,1,0),(37,29,1,0),(38,29,1,0),(39,29,1,0),(40,30,0,0),(41,32,0,0),(42,33,1,0),(43,33,1,0),(44,33,1,0),(45,33,1,0),(46,35,0,0),(47,33,1,0),(48,33,1,0),(49,33,1,0),(50,33,1,0),(51,38,1,0),(52,38,1,0),(53,40,0,0),(54,41,1,0),(55,42,1,0),(56,46,1,0),(57,47,1,0),(58,48,1,0),(59,48,1,0),(60,49,1,0),(61,48,1,0),(62,48,1,0),(63,50,0,0),(64,48,1,0),(65,48,1,0),(66,51,0,0),(67,48,1,0),(68,52,1,0),(69,48,1,0),(70,52,1,0),(71,53,0,0),(72,55,1,0),(73,53,0,0),(74,55,1,0),(75,55,1,0),(76,57,1,0),(77,57,1,0),(78,58,0,0),(79,59,0,0),(80,60,1,0),(81,62,0,0),(82,63,0,0),(83,64,1,0),(84,64,1,0),(85,65,1,0),(86,66,1,0),(87,67,1,0),(88,69,0,0),(89,70,0,0);
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
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(23,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BIND_WALLPAPER'),(35,'android.permission.BLUETOOTH'),(36,'android.permission.BLUETOOTH_ADMIN'),(28,'android.permission.CALL_PHONE'),(33,'android.permission.DISABLE_KEYGUARD'),(30,'android.permission.GET_ACCOUNTS'),(11,'android.permission.INTERNET'),(29,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(31,'android.permission.SET_PREFERRED_APPLICATIONS'),(27,'android.permission.SET_WALLPAPER'),(26,'android.permission.VIBRATE'),(24,'android.permission.WAKE_LOCK'),(20,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(38,'com.android.vending.BILLING'),(13,'com.fede.launcher.permission.READ_SETTINGS'),(32,'com.google.android.c2dm.permission.RECEIVE'),(37,'com.google.android.c2dm.permission.SEND'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(34,'com.instacollage.picture.frames.permission.C2D_MESSAGE'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(16,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(17,'com.motorola.launcher.permission.READ_SETTINGS'),(14,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (34,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.christmasgame.balloon',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=pname:com.gamevisa8.drunkpro0',NULL,NULL,NULL),(20,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(21,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'mailto:ogregames@hotmail.com',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(40,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'www.google.com',NULL,NULL,NULL),(43,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,8,7),(8,9,8),(9,12,9),(10,13,10),(11,14,11),(12,16,12),(13,20,15),(14,27,18),(15,31,20),(16,31,21),(17,34,22),(18,36,23),(19,37,24),(20,39,26),(21,43,28),(22,44,29),(23,56,36),(24,61,39),(25,61,40),(26,68,43);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,8),(27,2,9),(28,2,10),(29,2,11),(30,2,12),(31,2,13),(32,2,14),(33,2,15),(34,2,17),(35,2,16),(36,2,18),(37,2,21),(38,2,20),(39,2,23),(40,2,22),(41,2,25),(42,2,24),(43,2,26),(44,3,1),(45,3,2),(46,3,3),(47,3,4),(48,3,5),(49,3,6),(50,3,7),(51,3,8),(52,3,9),(53,3,10),(54,3,11),(55,3,12),(56,3,13),(57,3,14),(58,3,15),(59,3,17),(60,3,16),(61,3,18),(62,3,21),(63,3,20),(64,3,23),(65,3,22),(66,3,27),(67,3,26),(68,4,1),(69,4,2),(70,4,3),(71,4,4),(72,4,5),(73,4,6),(74,4,7),(75,4,8),(76,4,10),(77,4,11),(78,4,12),(79,4,13),(80,4,14),(81,4,15),(82,4,17),(83,4,16),(84,4,18),(85,5,1),(86,5,2),(87,5,3),(88,5,4),(89,5,6),(90,5,7),(91,5,8),(92,5,10),(93,5,11),(94,5,13),(95,5,14),(96,5,15),(97,5,17),(98,5,16),(99,5,23),(100,5,24),(101,6,1),(102,6,2),(103,6,3),(104,6,4),(105,6,5),(106,6,6),(107,6,7),(108,6,8),(109,6,9),(110,6,10),(111,6,11),(112,6,12),(113,6,13),(114,6,14),(115,6,17),(116,6,16),(117,6,18),(118,6,21),(119,6,20),(120,6,23),(121,6,22),(122,6,25),(123,6,24),(124,6,26),(125,6,29),(126,6,28),(127,6,31),(128,6,30),(129,6,34),(130,6,35),(131,6,32),(132,6,33),(133,6,36),(134,7,1),(135,7,2),(136,7,3),(137,7,4),(138,7,5),(139,7,6),(140,7,7),(141,7,8),(142,7,9),(143,7,10),(144,7,11),(145,7,12),(146,7,13),(147,7,14),(148,7,15),(149,7,17),(150,7,16),(151,7,18),(152,7,21),(153,7,20),(154,7,23),(155,7,22),(156,7,25),(157,7,26),(158,7,38);
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

-- Dump completed on 2015-10-09  0:40:47
