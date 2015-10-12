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
) ENGINE=InnoDB AUTO_INCREMENT=1315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,57,62,2,NULL),(2,12,62,2,NULL),(3,14,62,2,NULL),(4,15,62,2,NULL),(5,16,62,2,NULL),(6,20,62,2,NULL),(7,22,62,2,NULL),(8,23,62,2,NULL),(9,24,62,2,NULL),(10,32,62,2,NULL),(11,33,62,2,NULL),(12,34,62,2,NULL),(13,35,62,2,NULL),(14,36,62,2,NULL),(15,37,62,2,NULL),(16,38,62,2,NULL),(17,39,62,2,NULL),(18,42,62,2,NULL),(19,43,62,2,NULL),(20,44,62,2,NULL),(21,45,62,2,NULL),(22,47,62,2,NULL),(23,48,62,2,NULL),(24,49,62,2,NULL),(25,50,62,2,NULL),(26,72,62,2,NULL),(27,75,62,2,NULL),(28,58,62,2,NULL),(29,59,62,2,NULL),(30,61,62,2,NULL),(31,62,62,2,NULL),(32,64,62,2,NULL),(33,65,62,2,NULL),(34,67,62,2,NULL),(35,69,62,2,NULL),(36,83,62,2,NULL),(37,84,62,2,NULL),(38,55,62,2,NULL),(39,86,62,2,NULL),(40,76,62,2,NULL),(41,77,62,2,NULL),(42,80,62,2,NULL),(43,57,84,2,NULL),(44,12,84,2,NULL),(45,14,84,2,NULL),(46,15,84,2,NULL),(47,16,84,2,NULL),(48,20,84,2,NULL),(49,22,84,2,NULL),(50,23,84,2,NULL),(51,24,84,2,NULL),(52,32,84,2,NULL),(53,33,84,2,NULL),(54,34,84,2,NULL),(55,35,84,2,NULL),(56,36,84,2,NULL),(57,37,84,2,NULL),(58,38,84,2,NULL),(59,39,84,2,NULL),(60,42,84,2,NULL),(61,43,84,2,NULL),(62,44,84,2,NULL),(63,45,84,2,NULL),(64,47,84,2,NULL),(65,48,84,2,NULL),(66,49,84,2,NULL),(67,50,84,2,NULL),(68,72,84,2,NULL),(69,75,84,2,NULL),(70,58,84,2,NULL),(71,59,84,2,NULL),(72,61,84,2,NULL),(73,62,84,2,NULL),(74,64,84,2,NULL),(75,65,84,2,NULL),(76,67,84,2,NULL),(77,69,84,2,NULL),(78,83,84,2,NULL),(79,84,84,2,NULL),(80,55,84,2,NULL),(81,86,84,2,NULL),(82,76,84,2,NULL),(83,77,84,2,NULL),(84,80,84,2,NULL),(85,57,85,2,NULL),(86,12,85,2,NULL),(87,14,85,2,NULL),(88,15,85,2,NULL),(89,16,85,2,NULL),(90,20,85,2,NULL),(91,22,85,2,NULL),(92,23,85,2,NULL),(93,24,85,2,NULL),(94,32,85,2,NULL),(95,33,85,2,NULL),(96,34,85,2,NULL),(97,35,85,2,NULL),(98,36,85,2,NULL),(99,37,85,2,NULL),(100,38,85,2,NULL),(101,39,85,2,NULL),(102,42,85,2,NULL),(103,43,85,2,NULL),(104,44,85,2,NULL),(105,45,85,2,NULL),(106,47,85,2,NULL),(107,48,85,2,NULL),(108,49,85,2,NULL),(109,50,85,2,NULL),(110,72,85,2,NULL),(111,75,85,2,NULL),(112,58,85,2,NULL),(113,59,85,2,NULL),(114,61,85,2,NULL),(115,62,85,2,NULL),(116,64,85,2,NULL),(117,65,85,2,NULL),(118,67,85,2,NULL),(119,69,85,2,NULL),(120,83,85,2,NULL),(121,84,85,2,NULL),(122,55,85,2,NULL),(123,86,85,2,NULL),(124,76,85,2,NULL),(125,77,85,2,NULL),(126,80,85,2,NULL),(127,57,87,2,NULL),(128,12,87,2,NULL),(129,14,87,2,NULL),(130,15,87,2,NULL),(131,16,87,2,NULL),(132,20,87,2,NULL),(133,22,87,2,NULL),(134,23,87,2,NULL),(135,24,87,2,NULL),(136,32,87,2,NULL),(137,33,87,2,NULL),(138,34,87,2,NULL),(139,35,87,2,NULL),(140,36,87,2,NULL),(141,37,87,2,NULL),(142,38,87,2,NULL),(143,39,87,2,NULL),(144,42,87,2,NULL),(145,43,87,2,NULL),(146,44,87,2,NULL),(147,45,87,2,NULL),(148,47,87,2,NULL),(149,48,87,2,NULL),(150,49,87,2,NULL),(151,50,87,2,NULL),(152,72,87,2,NULL),(153,75,87,2,NULL),(154,58,87,2,NULL),(155,59,87,2,NULL),(156,61,87,2,NULL),(157,62,87,2,NULL),(158,64,87,2,NULL),(159,65,87,2,NULL),(160,67,87,2,NULL),(161,69,87,2,NULL),(162,83,87,2,NULL),(163,84,87,2,NULL),(164,55,87,2,NULL),(165,86,87,2,NULL),(166,76,87,2,NULL),(167,77,87,2,NULL),(168,80,87,2,NULL),(169,57,13,2,NULL),(170,12,13,2,NULL),(171,14,13,2,NULL),(172,15,13,2,NULL),(173,16,13,2,NULL),(174,20,13,2,NULL),(175,22,13,2,NULL),(176,23,13,2,NULL),(177,24,13,2,NULL),(178,32,13,2,NULL),(179,33,13,2,NULL),(180,34,13,2,NULL),(181,35,13,2,NULL),(182,36,13,2,NULL),(183,37,13,2,NULL),(184,38,13,2,NULL),(185,39,13,2,NULL),(186,42,13,2,NULL),(187,43,13,2,NULL),(188,44,13,2,NULL),(189,45,13,2,NULL),(190,47,13,2,NULL),(191,48,13,2,NULL),(192,49,13,2,NULL),(193,50,13,2,NULL),(194,72,13,2,NULL),(195,75,13,2,NULL),(196,58,13,2,NULL),(197,59,13,2,NULL),(198,61,13,2,NULL),(199,62,13,2,NULL),(200,64,13,2,NULL),(201,65,13,2,NULL),(202,67,13,2,NULL),(203,69,13,2,NULL),(204,83,13,2,NULL),(205,84,13,2,NULL),(206,55,13,2,NULL),(207,86,13,2,NULL),(208,76,13,2,NULL),(209,77,13,2,NULL),(210,80,13,2,NULL),(211,57,16,2,NULL),(212,12,16,2,NULL),(213,14,16,2,NULL),(214,15,16,2,NULL),(215,16,16,2,NULL),(216,20,16,2,NULL),(217,22,16,2,NULL),(218,23,16,2,NULL),(219,24,16,2,NULL),(220,32,16,2,NULL),(221,33,16,2,NULL),(222,34,16,2,NULL),(223,35,16,2,NULL),(224,36,16,2,NULL),(225,37,16,2,NULL),(226,38,16,2,NULL),(227,39,16,2,NULL),(228,42,16,2,NULL),(229,43,16,2,NULL),(230,44,16,2,NULL),(231,45,16,2,NULL),(232,47,16,2,NULL),(233,48,16,2,NULL),(234,49,16,2,NULL),(235,50,16,2,NULL),(236,72,16,2,NULL),(237,75,16,2,NULL),(238,58,16,2,NULL),(239,59,16,2,NULL),(240,61,16,2,NULL),(241,62,16,2,NULL),(242,64,16,2,NULL),(243,65,16,2,NULL),(244,67,16,2,NULL),(245,69,16,2,NULL),(246,83,16,2,NULL),(247,84,16,2,NULL),(248,55,16,2,NULL),(249,86,16,2,NULL),(250,76,16,2,NULL),(251,77,16,2,NULL),(252,80,16,2,NULL),(253,57,19,2,NULL),(254,12,19,2,NULL),(255,14,19,2,NULL),(256,15,19,2,NULL),(257,16,19,2,NULL),(258,20,19,2,NULL),(259,22,19,2,NULL),(260,23,19,2,NULL),(261,24,19,2,NULL),(262,32,19,2,NULL),(263,33,19,2,NULL),(264,34,19,2,NULL),(265,35,19,2,NULL),(266,36,19,2,NULL),(267,37,19,2,NULL),(268,38,19,2,NULL),(269,39,19,2,NULL),(270,42,19,2,NULL),(271,43,19,2,NULL),(272,44,19,2,NULL),(273,45,19,2,NULL),(274,47,19,2,NULL),(275,48,19,2,NULL),(276,49,19,2,NULL),(277,50,19,2,NULL),(278,72,19,2,NULL),(279,75,19,2,NULL),(280,58,19,2,NULL),(281,59,19,2,NULL),(282,61,19,2,NULL),(283,62,19,2,NULL),(284,64,19,2,NULL),(285,65,19,2,NULL),(286,67,19,2,NULL),(287,69,19,2,NULL),(288,83,19,2,NULL),(289,84,19,2,NULL),(290,55,19,2,NULL),(291,86,19,2,NULL),(292,76,19,2,NULL),(293,77,19,2,NULL),(294,80,19,2,NULL),(295,57,21,2,NULL),(296,12,21,2,NULL),(297,14,21,2,NULL),(298,15,21,2,NULL),(299,16,21,2,NULL),(300,20,21,2,NULL),(301,22,21,2,NULL),(302,23,21,2,NULL),(303,24,21,2,NULL),(304,32,21,2,NULL),(305,33,21,2,NULL),(306,34,21,2,NULL),(307,35,21,2,NULL),(308,36,21,2,NULL),(309,37,21,2,NULL),(310,38,21,2,NULL),(311,39,21,2,NULL),(312,42,21,2,NULL),(313,43,21,2,NULL),(314,44,21,2,NULL),(315,45,21,2,NULL),(316,47,21,2,NULL),(317,48,21,2,NULL),(318,49,21,2,NULL),(319,50,21,2,NULL),(320,72,21,2,NULL),(321,75,21,2,NULL),(322,58,21,2,NULL),(323,59,21,2,NULL),(324,61,21,2,NULL),(325,62,21,2,NULL),(326,64,21,2,NULL),(327,65,21,2,NULL),(328,67,21,2,NULL),(329,69,21,2,NULL),(330,83,21,2,NULL),(331,84,21,2,NULL),(332,55,21,2,NULL),(333,86,21,2,NULL),(334,76,21,2,NULL),(335,77,21,2,NULL),(336,80,21,2,NULL),(337,57,23,2,NULL),(338,12,23,2,NULL),(339,14,23,2,NULL),(340,15,23,2,NULL),(341,16,23,2,NULL),(342,20,23,2,NULL),(343,22,23,2,NULL),(344,23,23,2,NULL),(345,24,23,2,NULL),(346,32,23,2,NULL),(347,33,23,2,NULL),(348,34,23,2,NULL),(349,35,23,2,NULL),(350,36,23,2,NULL),(351,37,23,2,NULL),(352,38,23,2,NULL),(353,39,23,2,NULL),(354,42,23,2,NULL),(355,43,23,2,NULL),(356,44,23,2,NULL),(357,45,23,2,NULL),(358,47,23,2,NULL),(359,48,23,2,NULL),(360,49,23,2,NULL),(361,50,23,2,NULL),(362,72,23,2,NULL),(363,75,23,2,NULL),(364,58,23,2,NULL),(365,59,23,2,NULL),(366,61,23,2,NULL),(367,62,23,2,NULL),(368,64,23,2,NULL),(369,65,23,2,NULL),(370,67,23,2,NULL),(371,69,23,2,NULL),(372,83,23,2,NULL),(373,84,23,2,NULL),(374,55,23,2,NULL),(375,86,23,2,NULL),(376,76,23,2,NULL),(377,77,23,2,NULL),(378,80,23,2,NULL),(379,57,25,2,NULL),(380,12,25,2,NULL),(381,14,25,2,NULL),(382,15,25,2,NULL),(383,16,25,2,NULL),(384,20,25,2,NULL),(385,22,25,2,NULL),(386,23,25,2,NULL),(387,24,25,2,NULL),(388,32,25,2,NULL),(389,33,25,2,NULL),(390,34,25,2,NULL),(391,35,25,2,NULL),(392,36,25,2,NULL),(393,37,25,2,NULL),(394,38,25,2,NULL),(395,39,25,2,NULL),(396,42,25,2,NULL),(397,43,25,2,NULL),(398,44,25,2,NULL),(399,45,25,2,NULL),(400,47,25,2,NULL),(401,48,25,2,NULL),(402,49,25,2,NULL),(403,50,25,2,NULL),(404,72,25,2,NULL),(405,75,25,2,NULL),(406,58,25,2,NULL),(407,59,25,2,NULL),(408,61,25,2,NULL),(409,62,25,2,NULL),(410,64,25,2,NULL),(411,65,25,2,NULL),(412,67,25,2,NULL),(413,69,25,2,NULL),(414,83,25,2,NULL),(415,84,25,2,NULL),(416,55,25,2,NULL),(417,86,25,2,NULL),(418,76,25,2,NULL),(419,77,25,2,NULL),(420,80,25,2,NULL),(421,57,29,2,NULL),(422,12,29,2,NULL),(423,14,29,2,NULL),(424,15,29,2,NULL),(425,16,29,2,NULL),(426,20,29,2,NULL),(427,22,29,2,NULL),(428,23,29,2,NULL),(429,24,29,2,NULL),(430,32,29,2,NULL),(431,33,29,2,NULL),(432,34,29,2,NULL),(433,35,29,2,NULL),(434,36,29,2,NULL),(435,37,29,2,NULL),(436,38,29,2,NULL),(437,39,29,2,NULL),(438,42,29,2,NULL),(439,43,29,2,NULL),(440,44,29,2,NULL),(441,45,29,2,NULL),(442,47,29,2,NULL),(443,48,29,2,NULL),(444,49,29,2,NULL),(445,50,29,2,NULL),(446,72,29,2,NULL),(447,75,29,2,NULL),(448,58,29,2,NULL),(449,59,29,2,NULL),(450,61,29,2,NULL),(451,62,29,2,NULL),(452,64,29,2,NULL),(453,65,29,2,NULL),(454,67,29,2,NULL),(455,69,29,2,NULL),(456,83,29,2,NULL),(457,84,29,2,NULL),(458,55,29,2,NULL),(459,86,29,2,NULL),(460,76,29,2,NULL),(461,77,29,2,NULL),(462,80,29,2,NULL),(463,6,33,2,NULL),(464,63,34,2,NULL),(465,57,1,2,NULL),(466,57,3,2,NULL),(467,57,4,2,NULL),(468,57,8,2,NULL),(469,57,15,2,NULL),(470,57,30,2,NULL),(471,12,32,2,NULL),(472,14,32,2,NULL),(473,15,32,2,NULL),(474,16,32,2,NULL),(475,20,32,2,NULL),(476,22,32,2,NULL),(477,23,32,2,NULL),(478,24,32,2,NULL),(479,32,32,2,NULL),(480,33,32,2,NULL),(481,34,32,2,NULL),(482,35,32,2,NULL),(483,36,32,2,NULL),(484,37,32,2,NULL),(485,38,32,2,NULL),(486,39,32,2,NULL),(487,42,32,2,NULL),(488,43,32,2,NULL),(489,44,32,2,NULL),(490,45,32,2,NULL),(491,47,32,2,NULL),(492,48,32,2,NULL),(493,49,32,2,NULL),(494,50,32,2,NULL),(495,72,32,2,NULL),(496,75,32,2,NULL),(497,57,39,2,NULL),(498,57,88,2,NULL),(499,57,89,2,NULL),(500,57,90,2,NULL),(501,57,40,2,NULL),(502,58,32,2,NULL),(503,59,32,2,NULL),(504,61,32,2,NULL),(505,62,32,2,NULL),(506,64,32,2,NULL),(507,65,32,2,NULL),(508,67,32,2,NULL),(509,69,32,2,NULL),(510,83,32,2,NULL),(511,84,32,2,NULL),(512,57,47,2,NULL),(513,57,50,2,NULL),(514,57,51,2,NULL),(515,57,53,2,NULL),(516,55,32,2,NULL),(517,86,32,2,NULL),(518,76,32,2,NULL),(519,77,32,2,NULL),(520,80,32,2,NULL),(521,57,58,2,NULL),(522,57,59,2,NULL),(523,57,61,2,NULL),(524,19,35,2,NULL),(525,12,1,2,NULL),(526,14,1,2,NULL),(527,15,1,2,NULL),(528,16,1,2,NULL),(529,20,1,2,NULL),(530,22,1,2,NULL),(531,23,1,2,NULL),(532,24,1,2,NULL),(533,32,1,2,NULL),(534,33,1,2,NULL),(535,34,1,2,NULL),(536,35,1,2,NULL),(537,36,1,2,NULL),(538,37,1,2,NULL),(539,38,1,2,NULL),(540,39,1,2,NULL),(541,42,1,2,NULL),(542,43,1,2,NULL),(543,44,1,2,NULL),(544,45,1,2,NULL),(545,47,1,2,NULL),(546,48,1,2,NULL),(547,49,1,2,NULL),(548,50,1,2,NULL),(549,12,3,2,NULL),(550,14,3,2,NULL),(551,15,3,2,NULL),(552,16,3,2,NULL),(553,20,3,2,NULL),(554,22,3,2,NULL),(555,23,3,2,NULL),(556,24,3,2,NULL),(557,32,3,2,NULL),(558,33,3,2,NULL),(559,34,3,2,NULL),(560,35,3,2,NULL),(561,36,3,2,NULL),(562,37,3,2,NULL),(563,38,3,2,NULL),(564,39,3,2,NULL),(565,42,3,2,NULL),(566,43,3,2,NULL),(567,44,3,2,NULL),(568,45,3,2,NULL),(569,47,3,2,NULL),(570,48,3,2,NULL),(571,49,3,2,NULL),(572,50,3,2,NULL),(573,12,4,2,NULL),(574,14,4,2,NULL),(575,15,4,2,NULL),(576,16,4,2,NULL),(577,20,4,2,NULL),(578,22,4,2,NULL),(579,23,4,2,NULL),(580,24,4,2,NULL),(581,32,4,2,NULL),(582,32,4,2,NULL),(583,33,4,2,NULL),(584,34,4,2,NULL),(585,35,4,2,NULL),(586,36,4,2,NULL),(587,37,4,2,NULL),(588,38,4,2,NULL),(589,38,4,2,NULL),(590,39,4,2,NULL),(591,42,4,2,NULL),(592,42,4,2,NULL),(593,43,4,2,NULL),(594,44,4,2,NULL),(595,44,4,2,NULL),(596,45,4,2,NULL),(597,47,4,2,NULL),(598,48,4,2,NULL),(599,49,4,2,NULL),(600,50,4,2,NULL),(601,12,8,2,NULL),(602,72,4,2,NULL),(603,14,8,2,NULL),(604,75,4,2,NULL),(605,15,8,2,NULL),(606,58,4,2,NULL),(607,16,8,2,NULL),(608,59,4,2,NULL),(609,20,8,2,NULL),(610,61,4,2,NULL),(611,22,8,2,NULL),(612,62,4,2,NULL),(613,23,8,2,NULL),(614,64,4,2,NULL),(615,24,8,2,NULL),(616,65,4,2,NULL),(617,32,8,2,NULL),(618,67,4,2,NULL),(619,33,8,2,NULL),(620,69,4,2,NULL),(621,34,8,2,NULL),(622,83,4,2,NULL),(623,35,8,2,NULL),(624,84,4,2,NULL),(625,36,8,2,NULL),(626,55,4,2,NULL),(627,37,8,2,NULL),(628,86,4,2,NULL),(629,38,8,2,NULL),(630,76,4,2,NULL),(631,39,8,2,NULL),(632,77,4,2,NULL),(633,42,8,2,NULL),(634,80,4,2,NULL),(635,43,8,2,NULL),(636,44,8,2,NULL),(637,45,8,2,NULL),(638,47,8,2,NULL),(639,48,8,2,NULL),(640,49,8,2,NULL),(641,50,8,2,NULL),(642,12,15,2,NULL),(643,72,8,2,NULL),(644,14,15,2,NULL),(645,75,8,2,NULL),(646,15,15,2,NULL),(647,58,8,2,NULL),(648,16,15,2,NULL),(649,59,8,2,NULL),(650,20,15,2,NULL),(651,61,8,2,NULL),(652,22,15,2,NULL),(653,62,8,2,NULL),(654,23,15,2,NULL),(655,64,8,2,NULL),(656,24,15,2,NULL),(657,65,8,2,NULL),(658,32,15,2,NULL),(659,67,8,2,NULL),(660,33,15,2,NULL),(661,69,8,2,NULL),(662,34,15,2,NULL),(663,83,8,2,NULL),(664,35,15,2,NULL),(665,84,8,2,NULL),(666,36,15,2,NULL),(667,55,8,2,NULL),(668,37,15,2,NULL),(669,86,8,2,NULL),(670,38,15,2,NULL),(671,76,8,2,NULL),(672,39,15,2,NULL),(673,77,8,2,NULL),(674,42,15,2,NULL),(675,80,8,2,NULL),(676,43,15,2,NULL),(677,44,15,2,NULL),(678,45,15,2,NULL),(679,47,15,2,NULL),(680,48,15,2,NULL),(681,49,15,2,NULL),(682,50,15,2,NULL),(683,72,15,2,NULL),(684,75,15,2,NULL),(685,58,15,2,NULL),(686,12,30,2,NULL),(687,59,15,2,NULL),(688,14,30,2,NULL),(689,61,15,2,NULL),(690,15,30,2,NULL),(691,62,15,2,NULL),(692,16,30,2,NULL),(693,64,15,2,NULL),(694,20,30,2,NULL),(695,65,15,2,NULL),(696,22,30,2,NULL),(697,67,15,2,NULL),(698,23,30,2,NULL),(699,69,15,2,NULL),(700,24,30,2,NULL),(701,83,15,2,NULL),(702,32,30,2,NULL),(703,84,15,2,NULL),(704,33,30,2,NULL),(705,55,15,2,NULL),(706,34,30,2,NULL),(707,86,15,2,NULL),(708,35,30,2,NULL),(709,76,15,2,NULL),(710,36,30,2,NULL),(711,77,15,2,NULL),(712,37,30,2,NULL),(713,80,15,2,NULL),(714,38,30,2,NULL),(715,39,30,2,NULL),(716,42,30,2,NULL),(717,43,30,2,NULL),(718,44,30,2,NULL),(719,45,30,2,NULL),(720,47,30,2,NULL),(721,48,30,2,NULL),(722,49,30,2,NULL),(723,50,30,2,NULL),(724,12,39,2,NULL),(725,14,39,2,NULL),(726,15,39,2,NULL),(727,16,39,2,NULL),(728,20,39,2,NULL),(729,22,39,2,NULL),(730,23,39,2,NULL),(731,24,39,2,NULL),(732,32,39,2,NULL),(733,33,39,2,NULL),(734,34,39,2,NULL),(735,35,39,2,NULL),(736,36,39,2,NULL),(737,37,39,2,NULL),(738,38,39,2,NULL),(739,39,39,2,NULL),(740,42,39,2,NULL),(741,43,39,2,NULL),(742,44,39,2,NULL),(743,45,39,2,NULL),(744,47,39,2,NULL),(745,48,39,2,NULL),(746,49,39,2,NULL),(747,50,39,2,NULL),(748,12,88,2,NULL),(749,14,88,2,NULL),(750,15,88,2,NULL),(751,16,88,2,NULL),(752,20,88,2,NULL),(753,22,88,2,NULL),(754,23,88,2,NULL),(755,24,88,2,NULL),(756,32,88,2,NULL),(757,33,88,2,NULL),(758,34,88,2,NULL),(759,35,88,2,NULL),(760,36,88,2,NULL),(761,37,88,2,NULL),(762,38,88,2,NULL),(763,39,88,2,NULL),(764,42,88,2,NULL),(765,43,88,2,NULL),(766,44,88,2,NULL),(767,45,88,2,NULL),(768,47,88,2,NULL),(769,48,88,2,NULL),(770,49,88,2,NULL),(771,50,88,2,NULL),(772,12,89,2,NULL),(773,14,89,2,NULL),(774,15,89,2,NULL),(775,16,89,2,NULL),(776,20,89,2,NULL),(777,22,89,2,NULL),(778,23,89,2,NULL),(779,24,89,2,NULL),(780,32,89,2,NULL),(781,33,89,2,NULL),(782,34,89,2,NULL),(783,35,89,2,NULL),(784,36,89,2,NULL),(785,37,89,2,NULL),(786,38,89,2,NULL),(787,39,89,2,NULL),(788,42,89,2,NULL),(789,43,89,2,NULL),(790,44,89,2,NULL),(791,45,89,2,NULL),(792,47,89,2,NULL),(793,48,89,2,NULL),(794,49,89,2,NULL),(795,50,89,2,NULL),(796,12,90,2,NULL),(797,14,90,2,NULL),(798,15,90,2,NULL),(799,16,90,2,NULL),(800,20,90,2,NULL),(801,22,90,2,NULL),(802,23,90,2,NULL),(803,24,90,2,NULL),(804,32,90,2,NULL),(805,33,90,2,NULL),(806,34,90,2,NULL),(807,35,90,2,NULL),(808,36,90,2,NULL),(809,37,90,2,NULL),(810,38,90,2,NULL),(811,39,90,2,NULL),(812,42,90,2,NULL),(813,43,90,2,NULL),(814,44,90,2,NULL),(815,45,90,2,NULL),(816,47,90,2,NULL),(817,48,90,2,NULL),(818,49,90,2,NULL),(819,50,90,2,NULL),(820,12,40,2,NULL),(821,14,40,2,NULL),(822,15,40,2,NULL),(823,16,40,2,NULL),(824,20,40,2,NULL),(825,22,40,2,NULL),(826,23,40,2,NULL),(827,24,40,2,NULL),(828,32,40,2,NULL),(829,33,40,2,NULL),(830,34,40,2,NULL),(831,35,40,2,NULL),(832,36,40,2,NULL),(833,37,40,2,NULL),(834,38,40,2,NULL),(835,39,40,2,NULL),(836,42,40,2,NULL),(837,43,40,2,NULL),(838,44,40,2,NULL),(839,45,40,2,NULL),(840,47,40,2,NULL),(841,48,40,2,NULL),(842,49,40,2,NULL),(843,50,40,2,NULL),(844,12,47,2,NULL),(845,14,47,2,NULL),(846,15,47,2,NULL),(847,16,47,2,NULL),(848,20,47,2,NULL),(849,22,47,2,NULL),(850,23,47,2,NULL),(851,24,47,2,NULL),(852,32,47,2,NULL),(853,33,47,2,NULL),(854,34,47,2,NULL),(855,35,47,2,NULL),(856,36,47,2,NULL),(857,37,47,2,NULL),(858,38,47,2,NULL),(859,39,47,2,NULL),(860,42,47,2,NULL),(861,43,47,2,NULL),(862,44,47,2,NULL),(863,45,47,2,NULL),(864,47,47,2,NULL),(865,48,47,2,NULL),(866,49,47,2,NULL),(867,50,47,2,NULL),(868,12,50,2,NULL),(869,14,50,2,NULL),(870,15,50,2,NULL),(871,16,50,2,NULL),(872,20,50,2,NULL),(873,22,50,2,NULL),(874,23,50,2,NULL),(875,24,50,2,NULL),(876,32,50,2,NULL),(877,33,50,2,NULL),(878,34,50,2,NULL),(879,35,50,2,NULL),(880,36,50,2,NULL),(881,37,50,2,NULL),(882,38,50,2,NULL),(883,39,50,2,NULL),(884,42,50,2,NULL),(885,43,50,2,NULL),(886,44,50,2,NULL),(887,45,50,2,NULL),(888,47,50,2,NULL),(889,48,50,2,NULL),(890,49,50,2,NULL),(891,50,50,2,NULL),(892,12,51,2,NULL),(893,14,51,2,NULL),(894,15,51,2,NULL),(895,16,51,2,NULL),(896,20,51,2,NULL),(897,22,51,2,NULL),(898,23,51,2,NULL),(899,24,51,2,NULL),(900,32,51,2,NULL),(901,33,51,2,NULL),(902,34,51,2,NULL),(903,35,51,2,NULL),(904,36,51,2,NULL),(905,37,51,2,NULL),(906,38,51,2,NULL),(907,39,51,2,NULL),(908,42,51,2,NULL),(909,43,51,2,NULL),(910,44,51,2,NULL),(911,45,51,2,NULL),(912,47,51,2,NULL),(913,48,51,2,NULL),(914,49,51,2,NULL),(915,50,51,2,NULL),(916,12,53,2,NULL),(917,14,53,2,NULL),(918,15,53,2,NULL),(919,16,53,2,NULL),(920,20,53,2,NULL),(921,22,53,2,NULL),(922,23,53,2,NULL),(923,24,53,2,NULL),(924,32,53,2,NULL),(925,33,53,2,NULL),(926,34,53,2,NULL),(927,35,53,2,NULL),(928,36,53,2,NULL),(929,37,53,2,NULL),(930,38,53,2,NULL),(931,39,53,2,NULL),(932,42,53,2,NULL),(933,43,53,2,NULL),(934,44,53,2,NULL),(935,45,53,2,NULL),(936,47,53,2,NULL),(937,48,53,2,NULL),(938,49,53,2,NULL),(939,50,53,2,NULL),(940,12,58,2,NULL),(941,14,58,2,NULL),(942,15,58,2,NULL),(943,16,58,2,NULL),(944,20,58,2,NULL),(945,22,58,2,NULL),(946,23,58,2,NULL),(947,24,58,2,NULL),(948,32,58,2,NULL),(949,33,58,2,NULL),(950,34,58,2,NULL),(951,35,58,2,NULL),(952,36,58,2,NULL),(953,37,58,2,NULL),(954,38,58,2,NULL),(955,39,58,2,NULL),(956,42,58,2,NULL),(957,43,58,2,NULL),(958,44,58,2,NULL),(959,45,58,2,NULL),(960,47,58,2,NULL),(961,48,58,2,NULL),(962,49,58,2,NULL),(963,50,58,2,NULL),(964,12,59,2,NULL),(965,14,59,2,NULL),(966,15,59,2,NULL),(967,16,59,2,NULL),(968,20,59,2,NULL),(969,22,59,2,NULL),(970,23,59,2,NULL),(971,24,59,2,NULL),(972,32,59,2,NULL),(973,33,59,2,NULL),(974,34,59,2,NULL),(975,35,59,2,NULL),(976,36,59,2,NULL),(977,37,59,2,NULL),(978,38,59,2,NULL),(979,39,59,2,NULL),(980,42,59,2,NULL),(981,43,59,2,NULL),(982,44,59,2,NULL),(983,45,59,2,NULL),(984,47,59,2,NULL),(985,48,59,2,NULL),(986,49,59,2,NULL),(987,50,59,2,NULL),(988,12,61,2,NULL),(989,14,61,2,NULL),(990,15,61,2,NULL),(991,16,61,2,NULL),(992,20,61,2,NULL),(993,22,61,2,NULL),(994,23,61,2,NULL),(995,24,61,2,NULL),(996,32,61,2,NULL),(997,33,61,2,NULL),(998,34,61,2,NULL),(999,35,61,2,NULL),(1000,36,61,2,NULL),(1001,37,61,2,NULL),(1002,38,61,2,NULL),(1003,39,61,2,NULL),(1004,42,61,2,NULL),(1005,43,61,2,NULL),(1006,44,61,2,NULL),(1007,45,61,2,NULL),(1008,47,61,2,NULL),(1009,48,61,2,NULL),(1010,49,61,2,NULL),(1011,50,61,2,NULL),(1012,72,1,2,NULL),(1013,75,1,2,NULL),(1014,72,3,2,NULL),(1015,75,3,2,NULL),(1016,72,30,2,NULL),(1017,75,30,2,NULL),(1018,72,39,2,NULL),(1019,75,39,2,NULL),(1020,72,88,2,NULL),(1021,75,88,2,NULL),(1022,72,89,2,NULL),(1023,75,89,2,NULL),(1024,72,90,2,NULL),(1025,75,90,2,NULL),(1026,72,40,2,NULL),(1027,75,40,2,NULL),(1028,72,47,2,NULL),(1029,75,47,2,NULL),(1030,72,50,2,NULL),(1031,75,50,2,NULL),(1032,72,51,2,NULL),(1033,75,51,2,NULL),(1034,72,53,2,NULL),(1035,75,53,2,NULL),(1036,72,58,2,NULL),(1037,75,58,2,NULL),(1038,72,59,2,NULL),(1039,75,59,2,NULL),(1040,72,61,2,NULL),(1041,75,61,2,NULL),(1042,27,2,2,NULL),(1043,27,9,2,NULL),(1044,27,24,2,NULL),(1045,27,31,2,NULL),(1046,27,38,2,NULL),(1047,27,49,2,NULL),(1048,27,83,2,NULL),(1049,28,2,2,NULL),(1050,28,9,2,NULL),(1051,28,24,2,NULL),(1052,28,31,2,NULL),(1053,28,38,2,NULL),(1054,28,49,2,NULL),(1055,28,83,2,NULL),(1056,58,39,2,NULL),(1057,59,39,2,NULL),(1058,61,39,2,NULL),(1059,62,39,2,NULL),(1060,64,39,2,NULL),(1061,65,39,2,NULL),(1062,67,39,2,NULL),(1063,69,39,2,NULL),(1064,83,39,2,NULL),(1065,84,39,2,NULL),(1066,55,39,2,NULL),(1067,86,39,2,NULL),(1068,76,39,2,NULL),(1069,77,39,2,NULL),(1070,80,39,2,NULL),(1071,58,88,2,NULL),(1072,59,88,2,NULL),(1073,61,88,2,NULL),(1074,62,88,2,NULL),(1075,64,88,2,NULL),(1076,65,88,2,NULL),(1077,67,88,2,NULL),(1078,69,88,2,NULL),(1079,83,88,2,NULL),(1080,84,88,2,NULL),(1081,55,88,2,NULL),(1082,86,88,2,NULL),(1083,76,88,2,NULL),(1084,77,88,2,NULL),(1085,80,88,2,NULL),(1086,58,89,2,NULL),(1087,59,89,2,NULL),(1088,61,89,2,NULL),(1089,62,89,2,NULL),(1090,64,89,2,NULL),(1091,65,89,2,NULL),(1092,67,89,2,NULL),(1093,69,89,2,NULL),(1094,83,89,2,NULL),(1095,84,89,2,NULL),(1096,55,89,2,NULL),(1097,86,89,2,NULL),(1098,76,89,2,NULL),(1099,77,89,2,NULL),(1100,80,89,2,NULL),(1101,58,90,2,NULL),(1102,59,90,2,NULL),(1103,61,90,2,NULL),(1104,62,90,2,NULL),(1105,64,90,2,NULL),(1106,65,90,2,NULL),(1107,67,90,2,NULL),(1108,69,90,2,NULL),(1109,83,90,2,NULL),(1110,84,90,2,NULL),(1111,55,90,2,NULL),(1112,86,90,2,NULL),(1113,76,90,2,NULL),(1114,77,90,2,NULL),(1115,80,90,2,NULL),(1116,58,30,2,NULL),(1117,59,30,2,NULL),(1118,61,30,2,NULL),(1119,62,30,2,NULL),(1120,64,30,2,NULL),(1121,65,30,2,NULL),(1122,67,30,2,NULL),(1123,69,30,2,NULL),(1124,83,30,2,NULL),(1125,84,30,2,NULL),(1126,55,30,2,NULL),(1127,86,30,2,NULL),(1128,76,30,2,NULL),(1129,77,30,2,NULL),(1130,80,30,2,NULL),(1131,4,2,2,NULL),(1132,4,9,2,NULL),(1133,4,24,2,NULL),(1134,4,31,2,NULL),(1135,4,38,2,NULL),(1136,4,49,2,NULL),(1137,4,83,2,NULL),(1138,5,2,2,NULL),(1139,5,9,2,NULL),(1140,5,24,2,NULL),(1141,5,31,2,NULL),(1142,5,38,2,NULL),(1143,5,49,2,NULL),(1144,5,83,2,NULL),(1145,58,1,2,NULL),(1146,59,1,2,NULL),(1147,61,1,2,NULL),(1148,62,1,2,NULL),(1149,64,1,2,NULL),(1150,65,1,2,NULL),(1151,67,1,2,NULL),(1152,69,1,2,NULL),(1153,83,1,2,NULL),(1154,84,1,2,NULL),(1155,55,1,2,NULL),(1156,86,1,2,NULL),(1157,76,1,2,NULL),(1158,77,1,2,NULL),(1159,80,1,2,NULL),(1160,1,2,2,NULL),(1161,1,9,2,NULL),(1162,1,24,2,NULL),(1163,1,31,2,NULL),(1164,1,38,2,NULL),(1165,1,49,2,NULL),(1166,1,83,2,NULL),(1167,58,3,2,NULL),(1168,59,3,2,NULL),(1169,61,3,2,NULL),(1170,62,3,2,NULL),(1171,64,3,2,NULL),(1172,65,3,2,NULL),(1173,67,3,2,NULL),(1174,69,3,2,NULL),(1175,83,3,2,NULL),(1176,84,3,2,NULL),(1177,55,3,2,NULL),(1178,86,3,2,NULL),(1179,76,3,2,NULL),(1180,77,3,2,NULL),(1181,80,3,2,NULL),(1182,53,41,2,NULL),(1183,79,43,2,NULL),(1184,58,40,2,NULL),(1185,59,40,2,NULL),(1186,61,40,2,NULL),(1187,62,40,2,NULL),(1188,64,40,2,NULL),(1189,65,40,2,NULL),(1190,67,40,2,NULL),(1191,69,40,2,NULL),(1192,83,40,2,NULL),(1193,84,40,2,NULL),(1194,55,40,2,NULL),(1195,86,40,2,NULL),(1196,76,40,2,NULL),(1197,77,40,2,NULL),(1198,80,40,2,NULL),(1199,88,43,2,NULL),(1200,58,47,2,NULL),(1201,59,47,2,NULL),(1202,61,47,2,NULL),(1203,62,47,2,NULL),(1204,64,47,2,NULL),(1205,65,47,2,NULL),(1206,67,47,2,NULL),(1207,69,47,2,NULL),(1208,58,50,2,NULL),(1209,59,50,2,NULL),(1210,61,50,2,NULL),(1211,62,50,2,NULL),(1212,64,50,2,NULL),(1213,65,50,2,NULL),(1214,67,50,2,NULL),(1215,69,50,2,NULL),(1216,58,51,2,NULL),(1217,59,51,2,NULL),(1218,61,51,2,NULL),(1219,62,51,2,NULL),(1220,64,51,2,NULL),(1221,65,51,2,NULL),(1222,67,51,2,NULL),(1223,69,51,2,NULL),(1224,58,53,2,NULL),(1225,59,53,2,NULL),(1226,61,53,2,NULL),(1227,62,53,2,NULL),(1228,64,53,2,NULL),(1229,65,53,2,NULL),(1230,67,53,2,NULL),(1231,69,53,2,NULL),(1232,58,58,2,NULL),(1233,59,58,2,NULL),(1234,61,58,2,NULL),(1235,62,58,2,NULL),(1236,64,58,2,NULL),(1237,65,58,2,NULL),(1238,67,58,2,NULL),(1239,69,58,2,NULL),(1240,58,59,2,NULL),(1241,59,59,2,NULL),(1242,61,59,2,NULL),(1243,62,59,2,NULL),(1244,64,59,2,NULL),(1245,65,59,2,NULL),(1246,67,59,2,NULL),(1247,69,59,2,NULL),(1248,58,61,2,NULL),(1249,59,61,2,NULL),(1250,61,61,2,NULL),(1251,62,61,2,NULL),(1252,64,61,2,NULL),(1253,65,61,2,NULL),(1254,67,61,2,NULL),(1255,69,61,2,NULL),(1256,83,47,2,NULL),(1257,84,47,2,NULL),(1258,83,50,2,NULL),(1259,84,50,2,NULL),(1260,83,51,2,NULL),(1261,84,51,2,NULL),(1262,83,53,2,NULL),(1263,84,53,2,NULL),(1264,83,58,2,NULL),(1265,84,58,2,NULL),(1266,83,59,2,NULL),(1267,84,59,2,NULL),(1268,83,61,2,NULL),(1269,84,61,2,NULL),(1270,55,47,2,NULL),(1271,86,47,2,NULL),(1272,76,47,2,NULL),(1273,77,47,2,NULL),(1274,80,47,2,NULL),(1275,46,2,2,NULL),(1276,46,9,2,NULL),(1277,46,24,2,NULL),(1278,46,31,2,NULL),(1279,46,38,2,NULL),(1280,46,49,2,NULL),(1281,46,83,2,NULL),(1282,55,50,2,NULL),(1283,86,50,2,NULL),(1284,76,50,2,NULL),(1285,77,50,2,NULL),(1286,80,50,2,NULL),(1287,55,51,2,NULL),(1288,86,51,2,NULL),(1289,76,51,2,NULL),(1290,77,51,2,NULL),(1291,80,51,2,NULL),(1292,81,46,2,NULL),(1293,55,53,2,NULL),(1294,86,53,2,NULL),(1295,76,53,2,NULL),(1296,77,53,2,NULL),(1297,80,53,2,NULL),(1298,55,58,2,NULL),(1299,55,59,2,NULL),(1300,55,61,2,NULL),(1301,86,58,2,NULL),(1302,86,59,2,NULL),(1303,86,61,2,NULL),(1304,76,58,2,NULL),(1305,77,58,2,NULL),(1306,80,58,2,NULL),(1307,76,59,2,NULL),(1308,77,59,2,NULL),(1309,80,59,2,NULL),(1310,76,61,2,NULL),(1311,77,61,2,NULL),(1312,80,61,2,NULL),(1313,71,52,2,NULL),(1314,73,52,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:22
