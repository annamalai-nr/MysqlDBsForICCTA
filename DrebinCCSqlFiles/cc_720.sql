-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_720
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (37,'(.*)'),(15,'android.appwidget.action.APPWIDGET_UPDATE'),(28,'android.intent.action.BATTERY_CHANGED'),(9,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.CHOOSER'),(32,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.NEW_OUTGOING_CALL'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(22,'android.intent.action.PHONE_STATE'),(29,'android.intent.action.SCREEN_OFF'),(34,'android.intent.action.SCREEN_ON'),(36,'android.intent.action.SENDTO'),(30,'android.intent.action.USER_PRESENT'),(23,'android.intent.action.VIEW'),(33,'android.media.action.IMAGE_CAPTURE'),(18,'android.service.wallpaper.WallpaperService'),(3,'com.airpush.android.PushServiceStart24251'),(4,'com.airpush.android.PushServiceStart30823'),(12,'com.airpush.android.PushServiceStart52821'),(19,'com.airpush.android.PushServiceStart55413'),(17,'com.airpush.android.PushServiceStart65067'),(31,'com.android.launcher.action.INSTALL_SHORTCUT'),(25,'com.android.vending.billing.IN_APP_NOTIFY'),(26,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(27,'com.android.vending.billing.RESPONSE_CODE'),(13,'com.applovin.sdk.AppLovinService'),(8,'com.gau.go.launcherex.action.hide_theme_icon'),(11,'com.gau.go.launcherex.action.inactive_apply_theme_flag'),(2,'com.gau.go.launcherex.theme'),(14,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTRATION'),(10,'com.jiubang.intent.action.LAUNCHER_START'),(24,'com.quipper.a.query'),(20,'com.senddroid.AdServiceorg.andhat.PhotoSketch');
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
INSERT INTO `Applications` VALUES (1,'ics.cream.go.launcher.ex.theme',14),(2,'com.bluedares.colorteaser',2),(3,'com.free_apps.sexfacts',1),(4,'com.christmasgame.balloon',4),(5,'com.wallpapers.belsuebutterflies',3),(6,'org.andhat.PhotoSketch',11),(7,'com.quipack.a.b4ec5a7c21ae6fe00010000e8',5);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.free_apps.sexfacts'),(7,'com.quipper.a.query.TOPIC');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.go.theme.template.NotificationActivity'),(2,1,'com.go.theme.template.classic'),(3,2,'com.bluedares.colorteaser.A01_MainScreen'),(4,2,'com.bluedares.colorteaser.A02_Instructions'),(5,2,'com.bluedares.colorteaser.A03_ListImages'),(6,2,'com.bluedares.colorteaser.A04_TopScores'),(7,1,'com.airpush.android.PushAds'),(8,2,'com.airpush.android.PushAds'),(9,1,'com.go.theme.template.GoDownloadService'),(10,2,'com.google.ads.AdActivity'),(11,1,'com.apperhand.device.android.AndroidSDKProvider'),(12,2,'com.airpush.android.PushService'),(13,1,'com.airpush.android.PushService'),(14,2,'com.apperhand.device.android.AndroidSDKProvider'),(15,1,'com.go.theme.template.ComponentControlReceiver'),(16,2,'com.airpush.android.UserDetailsReceiver'),(17,2,'com.airpush.android.MessageReceiver'),(18,2,'com.airpush.android.DeliveryReceiver'),(19,2,'com.bluedares.colorteaser.BootReceiver'),(20,1,'com.go.theme.template.ThemeControlReceiver'),(21,1,'com.Leadbolt.AdNotification'),(22,1,'ics.cream.go.launcher.ex.theme.BootReceiver'),(23,3,'com.airpush.android.PushAds'),(24,3,'com.free_apps.sexfacts.AmazingSexFactsActivity'),(25,1,'com.airpush.android.UserDetailsReceiver'),(26,1,'com.airpush.android.MessageReceiver'),(27,3,'com.apperhand.device.android.AndroidSDKProvider'),(28,1,'com.airpush.android.DeliveryReceiver'),(29,3,'com.airpush.android.PushService'),(30,3,'com.applovin.sdk.AppLovinService'),(31,4,'com.christmasgame.balloon.MainActivity'),(32,3,'com.airpush.android.UserDetailsReceiver'),(33,3,'com.airpush.android.MessageReceiver'),(34,4,'com.christmasgame.balloon.Ranking'),(35,3,'com.airpush.android.DeliveryReceiver'),(36,4,'com.christmasgame.balloon.AppsList'),(37,3,'com.free_apps.sexfacts.BootReceiver'),(38,4,'com.christmasgame.balloon.EditProfile'),(39,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(40,4,'com.google.ads.AdActivity'),(41,3,'com.applovin.sdk.AppLovinNotificationReceiver'),(42,4,'com.apperhand.device.android.AndroidSDKProvider'),(43,3,'com.applovin.sdk.AppLovinPushReceiver'),(44,4,'com.christmasgame.balloonornodeal.Widget'),(45,5,'com.wallpapers.belsuebutterflies.NicechristmasActivity'),(46,3,'com.free_apps.sexfacts.boot'),(47,5,'com.airpush.android.PushAds'),(48,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(49,3,'com.Leadbolt.AdNotification'),(50,5,'com.airpush.android.PushService'),(51,6,'org.andhat.PhotoSketch.SelectPhoto'),(52,5,'com.apperhand.device.android.AndroidSDKProvider'),(53,6,'org.andhat.PhotoSketch.OurApps'),(54,5,'com.airpush.android.UserDetailsReceiver'),(55,6,'org.andhat.PhotoSketch.Setting'),(56,5,'com.airpush.android.MessageReceiver'),(57,6,'org.andhat.PhotoSketch.WebviewActivity'),(58,5,'com.airpush.android.DeliveryReceiver'),(59,6,'org.andhat.PhotoSketch.LWActivity'),(60,5,'com.wallpapers.belsuebutterflies.BootReceiver'),(61,6,'com.airpush.android.PushAds'),(62,6,'com.sellaring.sdk.PostCallScreenActivity'),(63,6,'org.andhat.PhotoSketch.Wallpaper'),(64,6,'com.airpush.android.PushService'),(65,6,'com.apperhand.device.android.AndroidSDKProvider'),(66,6,'com.applovin.sdk.AppLovinService'),(67,6,'com.senddroid.AdService'),(68,6,'com.airpush.android.UserDetailsReceiver'),(69,6,'com.airpush.android.MessageReceiver'),(70,6,'com.airpush.android.DeliveryReceiver'),(71,6,'org.andhat.PhotoSketch.BootReceiver'),(72,6,'com.applovin.sdk.AppLovinNotificationReceiver'),(73,6,'com.Leadbolt.AdNotification'),(74,6,'com.sellaring.sdk.AlarmReceiver'),(75,6,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(76,6,'com.sellaring.sdk.PhoneStateReceiver'),(77,7,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(78,7,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(79,7,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(80,7,'com.quipper.a.v5.single.activities.PurchaseActivity'),(81,7,'com.quipper.a.v5.activities.FlowControlActivity'),(82,7,'com.quipper.a.v5.activities.WebViewActivity'),(83,7,'com.quipper.a.v5.activities.LanderRibbonActivity'),(84,7,'com.quipper.a.v5.activities.UserPriorityActivity'),(85,7,'com.quipper.a.v5.single.activities.TopicActivity'),(86,7,'com.quipper.a.v5.activities.TopicReviewActivity'),(87,7,'com.quipper.a.v5.activities.VideoPlayerActivity'),(88,7,'com.quipper.a.v5.activities.TwitterActivity'),(89,7,'com.quipper.a.v5.activities.TwitterConnectActivity'),(90,7,'com.quipper.a.v5.activities.ShareActivity'),(91,7,'com.quipper.a.v5.activities.QuipperDialog'),(92,7,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(93,7,'com.quipper.a.v5.activities.LoginActivity'),(94,7,'com.quipper.a.v5.activities.SignupActivity'),(95,7,'com.quipper.a.v5.activities.AgreementActivity'),(96,7,'com.quipper.a.v5.activities.FacebookConnectActivity'),(97,7,'com.quipper.a.v5.single.billing.BillingService'),(98,7,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(99,7,'com.apperhand.device.android.AndroidSDKProvider'),(100,7,'com.quipper.a.v5.single.receivers.TopicReceiver'),(101,7,'com.quipper.a.v5.single.billing.BillingReceiver'),(102,7,'com.Leadbolt.AdNotification'),(103,7,'com.quipper.a.v5.single.BootReceiver'),(104,4,'com.mobclix.android.sdk.Mobclix$3'),(105,4,'com.christmasgame.balloon.MainActivity$9'),(106,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(107,4,'com.christmasgame.balloon.MainActivity$13'),(108,4,'com.apperhand.device.android.a.e'),(109,4,'com.christmasgame.balloon.Ranking$2'),(110,4,'com.mobclix.android.sdk.MobclixCreative$Action'),(111,4,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(112,4,'com.apperhand.device.android.a.a'),(113,4,'com.christmasgame.balloon.MainActivity$7'),(114,4,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(115,4,'com.christmasgame.balloon.MainActivity$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,39,'com.christmasgame.balloon.type'),(2,42,'APPLICATION_ID'),(3,31,'UMENG_APPKEY'),(4,38,'UMENG_APPKEY'),(5,34,'UMENG_APPKEY'),(6,34,'mGameID'),(7,42,'M_SERVER_URL'),(8,40,'com.google.ads.AdOpener'),(9,42,'SERVICE_MODE'),(10,42,'permanent'),(11,34,'mThisGameHighScore'),(12,40,'action'),(13,42,'USER_AGENT'),(14,39,'ADMOB_PUBLISHER_ID'),(15,31,'ADMOB_PUBLISHER_ID'),(16,38,'ADMOB_PUBLISHER_ID'),(17,34,'ADMOB_PUBLISHER_ID'),(18,38,'mGameID'),(19,39,'com.mobclix.APPLICATION_ID'),(20,31,'com.mobclix.APPLICATION_ID'),(21,38,'com.mobclix.APPLICATION_ID'),(22,34,'com.mobclix.APPLICATION_ID'),(23,42,'DEVELOPER_ID'),(24,39,'com.mobclix.LOG_LEVEL'),(25,31,'com.mobclix.LOG_LEVEL'),(26,38,'com.mobclix.LOG_LEVEL'),(27,34,'com.mobclix.LOG_LEVEL'),(28,39,'com.christmasgame.balloon.data'),(29,38,'nick'),(30,39,'imageUri'),(31,31,'UMENG_CHANNEL'),(32,38,'UMENG_CHANNEL'),(33,34,'UMENG_CHANNEL'),(34,36,'url'),(35,40,'params'),(36,42,'FIRST_RUN');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,37,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',1,38,NULL),(64,64,'s',1,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'s',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',0,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,106,'r',1,NULL,NULL),(106,111,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,31),(2,2,31),(3,3,42),(4,4,34),(5,5,42),(6,6,31),(7,7,31),(8,8,31),(9,9,39),(10,10,39),(11,11,39),(12,12,39),(13,13,39),(14,14,42),(15,15,34),(16,16,39),(17,17,31),(18,18,39),(19,19,39),(20,20,39),(21,21,42),(22,22,42),(23,23,42),(24,24,31),(25,25,40),(26,26,39),(27,27,39),(28,28,31),(29,29,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,105,'<com.christmasgame.balloon.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(2,107,'<com.christmasgame.balloon.MainActivity$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(3,108,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(4,109,'<com.christmasgame.balloon.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(5,108,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(6,31,'<com.christmasgame.balloon.MainActivity: void t()>',21,'a',NULL),(7,42,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(8,31,'<com.christmasgame.balloon.MainActivity: void n()>',10,'a',NULL),(9,110,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(10,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(11,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(12,110,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(13,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(14,112,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(15,34,'<com.christmasgame.balloon.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(16,110,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(17,113,'<com.christmasgame.balloon.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(19,110,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(20,114,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(21,112,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(22,108,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(23,112,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(24,31,'<com.christmasgame.balloon.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(25,40,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(26,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(27,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(28,115,'<com.christmasgame.balloon.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(29,110,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,23),(2,2,23),(3,4,31),(4,11,32),(5,12,33),(6,13,33),(7,14,33),(8,16,33),(9,19,23),(10,20,23),(11,21,23),(12,22,35),(13,23,35),(14,24,35),(15,25,35),(16,26,35),(17,27,35),(18,28,35),(19,29,35),(20,31,23),(21,32,23),(22,33,36),(23,34,23),(24,35,37),(25,36,37),(26,38,32),(27,39,33),(28,40,33),(29,41,33),(30,43,33),(31,44,35),(32,45,35),(33,46,35),(34,47,35),(35,48,35),(36,49,35),(37,50,35),(38,51,35),(39,53,23),(40,54,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/christmasgame/balloon/EditProfile'),(2,5,'com/christmasgame/balloon/AppsList'),(3,6,'com/apperhand/device/android/AndroidSDKProvider'),(4,7,'com/apperhand/device/android/AndroidSDKProvider'),(5,8,'com/christmasgame/balloon/Ranking'),(6,9,'com/mobclix/android/sdk/MobclixBrowserActivity'),(7,17,'com/mobclix/android/sdk/MobclixBrowserActivity'),(8,18,'com/christmasgame/balloon/EditProfile'),(9,30,'com/mobclix/android/sdk/MobclixBrowserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,19,7),(4,20,8),(5,21,9),(6,31,10),(7,32,11),(8,33,15),(9,34,16),(10,35,17),(11,36,18),(12,53,19),(13,54,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'mGameID'),(2,3,'nick'),(3,4,'android.intent.extra.shortcut.NAME'),(4,4,'android.intent.extra.shortcut.ICON'),(5,4,'android.intent.extra.shortcut.INTENT'),(6,5,'url'),(7,6,'M_SERVER_URL'),(8,6,'USER_AGENT'),(9,6,'SERVICE_MODE'),(10,6,'FIRST_RUN'),(11,6,'DEVELOPER_ID'),(12,6,'APPLICATION_ID'),(13,7,'M_SERVER_URL'),(14,7,'USER_AGENT'),(15,7,'SERVICE_MODE'),(16,7,'FIRST_RUN'),(17,7,'DEVELOPER_ID'),(18,7,'(.*)'),(19,7,'APPLICATION_ID'),(20,8,'mGameID'),(21,8,'mThisGameHighScore'),(22,12,'output'),(23,13,'output'),(24,13,'android.intent.extra.videoQuality'),(25,18,'mGameID'),(26,18,'nick'),(27,22,'android.intent.extra.INTENT'),(28,23,'android.intent.extra.INTENT'),(29,24,'android.intent.extra.TITLE'),(30,24,'android.intent.extra.INTENT'),(31,25,'android.intent.extra.INTENT'),(32,26,'android.intent.extra.TITLE'),(33,26,'android.intent.extra.INTENT'),(34,27,'android.intent.extra.INTENT'),(35,28,'android.intent.extra.TITLE'),(36,28,'android.intent.extra.INTENT'),(37,29,'android.intent.extra.TITLE'),(38,29,'android.intent.extra.INTENT'),(39,33,'android.intent.extra.SUBJECT'),(40,39,'output'),(41,40,'output'),(42,40,'android.intent.extra.videoQuality'),(43,44,'android.intent.extra.INTENT'),(44,45,'android.intent.extra.INTENT'),(45,46,'android.intent.extra.TITLE'),(46,46,'android.intent.extra.INTENT'),(47,47,'android.intent.extra.INTENT'),(48,48,'android.intent.extra.TITLE'),(49,48,'android.intent.extra.INTENT'),(50,49,'android.intent.extra.INTENT'),(51,50,'android.intent.extra.TITLE'),(52,50,'android.intent.extra.INTENT'),(53,51,'android.intent.extra.TITLE'),(54,51,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,3,2),(5,4,1),(6,5,3),(7,6,4),(8,7,7),(9,7,6),(10,7,5),(11,8,8),(12,9,9),(13,10,10),(14,11,11),(15,12,9),(16,13,1),(17,14,9),(18,15,12),(19,16,13),(20,17,1),(21,18,9),(22,19,15),(23,20,14),(24,21,16),(25,22,1),(26,23,9),(27,24,17),(28,25,1),(29,26,9),(30,27,18),(31,28,19),(32,29,13),(33,30,20),(34,31,9),(35,32,9),(36,33,9),(37,34,21),(38,34,22),(39,35,9),(40,36,1),(41,37,23),(42,38,24),(43,39,25),(44,39,26),(45,39,27),(46,40,9),(47,41,28),(48,42,29),(49,42,30),(50,43,29),(51,43,34),(52,44,29),(53,44,34);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,9,4),(6,13,1),(7,14,4),(8,17,1),(9,18,4),(10,20,5),(11,21,5),(12,22,1),(13,25,1),(14,26,4),(15,31,4),(16,35,4),(17,36,1),(18,37,6),(19,37,2),(20,38,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,7,'package',NULL,NULL,NULL,NULL,NULL),(2,37,'baseapp',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,11,'image','*'),(2,15,'image','*'),(3,16,'image','*'),(4,35,'(.*)','(.*)'),(5,38,'image','*'),(6,42,'image','*'),(7,43,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.christmasgame.balloon'),(2,5,'com.christmasgame.balloon'),(3,6,'com.christmasgame.balloon'),(4,7,'com.christmasgame.balloon'),(5,8,'com.christmasgame.balloon'),(6,9,'com.christmasgame.balloon'),(7,17,'com.christmasgame.balloon'),(8,18,'com.christmasgame.balloon'),(9,30,'com.christmasgame.balloon');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,2,0),(4,2,0),(5,12,0),(6,13,0),(7,15,0),(8,15,0),(9,19,0),(10,20,0),(11,20,0),(12,22,0),(13,24,0),(14,22,0),(15,29,0),(16,30,0),(17,31,0),(18,37,0),(19,44,0),(20,43,0),(21,43,0),(22,45,0),(23,46,0),(24,50,0),(25,59,0),(26,60,0),(27,63,0),(28,64,0),(29,66,0),(30,67,0),(31,71,0),(32,71,0),(33,75,0),(34,76,0),(35,71,0),(36,77,0),(37,89,0),(38,100,0),(39,101,0),(40,103,0),(41,104,0),(42,105,0),(43,106,0),(44,106,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,4,0,0),(4,5,1,0),(5,6,0,0),(6,7,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,10,1,0),(14,10,1,0),(15,10,1,0),(16,10,1,0),(17,12,0,0),(18,15,0,0),(19,16,1,0),(20,16,1,0),(21,17,1,0),(22,18,1,0),(23,18,1,0),(24,18,1,0),(25,18,1,0),(26,18,1,0),(27,18,1,0),(28,18,1,0),(29,18,1,0),(30,19,0,0),(31,20,1,0),(32,20,1,0),(33,24,1,0),(34,25,1,0),(35,25,1,0),(36,25,1,0),(37,26,1,0),(38,26,1,0),(39,26,1,0),(40,26,1,0),(41,26,1,0),(42,26,1,0),(43,26,1,0),(44,27,1,0),(45,27,1,0),(46,27,1,0),(47,27,1,0),(48,27,1,0),(49,27,1,0),(50,27,1,0),(51,27,1,0),(52,28,1,0),(53,29,1,0),(54,29,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(40,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(23,'android.permission.ACCESS_WIFI_STATE'),(38,'android.permission.BIND_WALLPAPER'),(1,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(33,'android.permission.FLASHLIGHT'),(25,'android.permission.GET_ACCOUNTS'),(7,'android.permission.INTERNET'),(35,'android.permission.PROCESS_OUTGOING_CALLS'),(24,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_PHONE_STATE'),(26,'android.permission.READ_SMS'),(6,'android.permission.RECEIVE_BOOT_COMPLETED'),(28,'android.permission.SEND_SMS'),(32,'android.permission.SET_WALLPAPER'),(36,'android.permission.SET_WALLPAPER_HINTS'),(9,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(34,'android.permission.WRITE_SETTINGS'),(12,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(8,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.READ_SETTINGS'),(4,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(39,'com.android.vending.BILLING'),(30,'com.fede.launcher.permission.READ_SETTINGS'),(27,'com.free_apps.sexfacts.permission.C2D_MESSAGE'),(29,'com.google.android.c2dm.permission.RECEIVE'),(37,'com.google.android.c2dm.permission.SEND'),(17,'com.htc.launcher.permission.READ_SETTINGS'),(13,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(18,'com.lge.launcher.permission.READ_SETTINGS'),(14,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(15,'com.motorola.dlauncher.permission.READ_SETTINGS'),(20,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.launcher.permission.READ_SETTINGS'),(31,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (27,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.christmasgame.balloon',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:com.gamevisa8.drunkpro0',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'mailto:ogregames@hotmail.com',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,3),(2,3,4),(3,11,5),(4,14,6),(5,21,12),(6,22,13),(7,23,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,1,2),(4,2,4),(5,1,3),(6,2,5),(7,1,4),(8,2,6),(9,1,5),(10,2,7),(11,1,6),(12,2,8),(13,1,7),(14,2,9),(15,1,8),(16,2,10),(17,1,9),(18,2,11),(19,1,10),(20,2,12),(21,1,11),(22,2,13),(23,1,12),(24,2,14),(25,2,15),(26,2,17),(27,2,16),(28,2,19),(29,2,18),(30,2,21),(31,2,20),(32,2,22),(33,3,2),(34,3,3),(35,3,4),(36,3,5),(37,3,6),(38,3,7),(39,3,8),(40,3,9),(41,3,11),(42,3,12),(43,3,13),(44,3,14),(45,3,15),(46,3,17),(47,3,16),(48,3,18),(49,3,21),(50,3,20),(51,3,23),(52,3,22),(53,3,25),(54,3,24),(55,3,27),(56,3,26),(57,3,29),(58,3,28),(59,3,31),(60,3,30),(61,4,2),(62,4,4),(63,4,5),(64,4,7),(65,4,10),(66,4,11),(67,4,13),(68,4,14),(69,4,15),(70,4,17),(71,4,18),(72,4,21),(73,4,20),(74,5,34),(75,4,22),(76,5,32),(77,4,31),(78,5,2),(79,4,30),(80,5,33),(81,5,3),(82,5,4),(83,5,5),(84,5,6),(85,5,7),(86,6,2),(87,5,8),(88,6,3),(89,5,9),(90,6,4),(91,5,10),(92,6,5),(93,6,6),(94,5,11),(95,5,12),(96,6,7),(97,5,13),(98,6,8),(99,5,14),(100,6,10),(101,5,15),(102,6,11),(103,5,17),(104,6,12),(105,5,18),(106,6,13),(107,5,20),(108,6,14),(109,5,23),(110,6,15),(111,5,22),(112,6,17),(113,5,31),(114,6,16),(115,5,30),(116,6,19),(117,6,18),(118,6,21),(119,6,20),(120,6,23),(121,6,22),(122,6,25),(123,6,24),(124,6,31),(125,6,30),(126,6,35),(127,6,32),(128,6,36),(129,7,2),(130,7,3),(131,7,4),(132,7,5),(133,7,6),(134,7,7),(135,7,8),(136,7,9),(137,7,10),(138,7,11),(139,7,12),(140,7,13),(141,7,14),(142,7,15),(143,7,17),(144,7,16),(145,7,19),(146,7,18),(147,7,20),(148,7,23),(149,7,22),(150,7,31),(151,7,30),(152,7,39),(153,7,40);
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

-- Dump completed on 2015-10-09  0:40:58
