-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_643
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(19,'android.intent.action.DIAL'),(2,'android.intent.action.MAIN'),(7,'android.intent.action.MEDIA_EJECT'),(9,'android.intent.action.MEDIA_MOUNTED'),(14,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.service.wallpaper.WallpaperService'),(10,'com.airpush.android.PushServiceStart26644'),(11,'com.airpush.android.PushServiceStart51932'),(3,'com.airpush.android.PushServiceStart52894'),(6,'com.airpush.android.PushServiceStart53423'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.applovin.sdk.AppLovinService'),(4,'com.jiubang.goscreenlock.theme'),(13,'com.senddroid.AdServiceorg.drhu.galaxy'),(15,'com.senddroid.AdServiceravishankar.app.smsbookhindi');
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
INSERT INTO `Applications` VALUES (1,'com.softcore.micoaust.operasydgolocker',2),(2,'com.macte.JigsawPuzzle.Christmas',15),(3,'net.vslf.app.wonders',4),(4,'org.drhu.galaxy',20),(5,'AppleGold.com',2),(6,'ravishankar.app.smsbookhindi',13),(7,'com.favasben.insectfightergold',1);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(5,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'net.vslf.app.wonders.Act_Preference'),(2,3,'com.airpush.android.PushAds'),(3,3,'net.vslf.app.wonders.Ser_WallpaperEngine'),(4,1,'com.softcore.micoaust.operasydgolocker.GOLockerInstallDialog'),(5,3,'com.airpush.android.PushService'),(6,2,'com.macte.JigsawPuzzle.Christmas.JigsawPuzzle'),(7,3,'com.apperhand.device.android.AndroidSDKProvider'),(8,2,'com.macte.JigsawPuzzle.Christmas.GameView'),(9,3,'net.vslf.app.wonders.Rec_Boot'),(10,1,'com.airpush.android.PushAds'),(11,1,'com.softcore.micoaust.operasydgolocker.Ser'),(12,2,'com.mobfox.sdk.InAppWebView'),(13,3,'com.airpush.android.UserDetailsReceiver'),(14,1,'com.softcore.micoaust.operasydgolocker.GoDownloadServiceervice'),(15,2,'com.macte.JigsawPuzzle.Christmas.SettingsList'),(16,3,'com.airpush.android.MessageReceiver'),(17,1,'com.airpush.android.PushService'),(18,3,'com.airpush.android.DeliveryReceiver'),(19,2,'com.macte.JigsawPuzzle.Christmas.GalleryLevel'),(20,3,'com.Leadbolt.AdNotification'),(21,1,'com.softcore.micoaust.operasydgolocker.BReceiver'),(22,2,'com.macte.JigsawPuzzle.Christmas.ProVersion'),(23,1,'com.airpush.android.UserDetailsReceiver'),(24,1,'com.airpush.android.MessageReceiver'),(25,2,'com.airpush.android.PushAds'),(26,1,'com.airpush.android.DeliveryReceiver'),(27,2,'com.macte.JigsawPuzzle.Christmas.DownloadService'),(28,2,'com.apperhand.device.android.AndroidSDKProvider'),(29,1,'com.Leadbolt.AdNotification'),(30,2,'com.airpush.android.PushService'),(31,2,'com.airpush.android.UserDetailsReceiver'),(32,2,'com.airpush.android.MessageReceiver'),(33,2,'com.airpush.android.DeliveryReceiver'),(34,2,'com.macte.JigsawPuzzle.Christmas.BootReceiver'),(35,4,'org.drhu.galaxy.GalaxySetting'),(36,4,'org.drhu.galaxy.WebviewActivity'),(37,4,'org.drhu.galaxy.Galaxy3D'),(38,4,'com.airpush.android.PushAds'),(39,4,'org.drhu.galaxy.Galaxy'),(40,4,'com.apperhand.device.android.AndroidSDKProvider'),(41,4,'com.airpush.android.PushService'),(42,4,'com.applovin.sdk.AppLovinService'),(43,5,'AppleGold.com.MainScene'),(44,4,'com.senddroid.AdService'),(45,5,'com.apperhand.device.android.AndroidSDKProvider'),(46,4,'com.Leadbolt.AdNotification'),(47,4,'org.drhu.galaxy.BootReceiver'),(48,4,'com.airpush.android.UserDetailsReceiver'),(49,4,'com.airpush.android.MessageReceiver'),(50,4,'com.airpush.android.DeliveryReceiver'),(51,6,'ravishankar.app.smscollection.SmsCollectionActivity'),(52,6,'com.google.ads.AdActivity'),(53,6,'ravishankar.app.smscollection.HomeActivity'),(54,6,'com.ravi.twitter.PrepareRequestTokenActivity'),(55,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(56,6,'com.FRQTzbWJ.TvPHDjAl6502.OptinActivity'),(57,6,'com.FRQTzbWJ.TvPHDjAl6502.SmartWallActivity'),(58,6,'com.FRQTzbWJ.TvPHDjAl6502.PushService'),(59,6,'com.apperhand.device.android.AndroidSDKProvider'),(60,6,'com.senddroid.AdService'),(61,6,'com.FRQTzbWJ.TvPHDjAl6502.BootReceiver'),(62,6,'ravishankar.app.smsbookhindi.BootReceiver'),(63,6,'com.Leadbolt.AdNotification'),(64,6,'ravishankar.app.smsbookhindi.BootReceiverSendDroid'),(65,7,'com.favasben.insectfightergold.Main'),(66,7,'com.favasben.insectfightergold.Options'),(67,7,'com.favasben.insectfightergold.Mode'),(68,7,'com.favasben.insectfightergold.Menu'),(69,7,'com.favasben.insectfightergold.Time'),(70,7,'com.favasben.insectfightergold.Arcade'),(71,7,'com.favasben.insectfightergold.Classic'),(72,7,'com.openfeint.internal.ui.IntroFlow'),(73,7,'com.openfeint.api.ui.Dashboard'),(74,7,'com.openfeint.internal.ui.Settings'),(75,7,'com.apperhand.device.android.AndroidSDKProvider'),(76,7,'com.favasben.insectfightergold.BootReceiver'),(77,7,'com.Leadbolt.AdNotification'),(78,5,'com.apperhand.device.android.a.d'),(79,5,'com.apperhand.device.android.a.a'),(80,6,'ravishankar.app.smscollection.SmsCollectionActivity$3$1'),(81,6,'com.apperhand.device.android.a.d'),(82,6,'ravishankar.app.smscollection.SmsCollectionActivity$3$4'),(83,6,'com.apperhand.device.android.a.b'),(84,6,'com.Leadbolt.AdController'),(85,6,'com.senddroid.SendDroid'),(86,6,'com.FRQTzbWJ.TvPHDjAl6502.HandleClicks'),(87,6,'com.ravi.twitter.PrepareRequestTokenActivity$RetrieveAccessTokenTask'),(88,6,'com.ravi.twitter.OAuthRequestTokenTask'),(89,6,'ravishankar.app.smscollection.SmsCollectionActivity$3$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,46,'M_SERVER_URL'),(2,46,'APPLICATION_ID'),(3,46,'SERVICE_MODE'),(4,46,'FIRST_RUN'),(5,46,'DEVELOPER_ID'),(6,46,'USER_AGENT'),(7,46,'permanent'),(8,57,'adtype'),(9,52,'(.*)'),(10,58,'adtype'),(11,54,'com.FRQTzbWJ.TvPHDjAl6502.APPID'),(12,55,'tweet_msg'),(13,58,'buttontxt'),(14,57,'buttontxt'),(15,60,'USER_AGENT'),(16,58,'title'),(17,57,'title'),(18,52,'access_token'),(19,53,'com.google.ads.AdOpener'),(20,59,'testMode'),(21,58,'sms'),(22,57,'sms'),(23,60,'DEVELOPER_ID'),(24,60,'SERVICE_MODE'),(25,59,'header'),(26,59,'appId'),(27,59,'creativeId'),(28,60,'APPLICATION_ID'),(29,59,'campId'),(30,54,'com.FRQTzbWJ.TvPHDjAl6502.APIKEY'),(31,64,'sectionid'),(32,59,'number'),(33,59,'adtype'),(34,59,'url'),(35,58,'url'),(36,57,'url'),(37,60,'FIRST_RUN'),(38,58,'creativeid'),(39,57,'creativeid'),(40,53,'action'),(41,53,'params'),(42,59,'sms'),(43,59,'APIKEY'),(44,58,'number'),(45,57,'number'),(46,52,'title'),(47,58,'campaignid'),(48,57,'campaignid'),(49,60,'M_SERVER_URL');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,26,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,17,'s',1,NULL,NULL),(17,16,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,21,'r',1,NULL,NULL),(28,27,'s',1,NULL,NULL),(29,28,'s',0,NULL,NULL),(30,29,'r',0,NULL,NULL),(31,30,'s',1,NULL,NULL),(32,31,'r',0,NULL,NULL),(33,32,'r',0,NULL,NULL),(34,33,'r',0,NULL,NULL),(35,34,'r',1,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,36,'a',1,NULL,NULL),(38,37,'a',1,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,39,'s',1,26,NULL),(41,40,'s',0,NULL,NULL),(42,41,'s',1,NULL,NULL),(43,42,'s',1,NULL,NULL),(44,43,'a',1,NULL,NULL),(45,44,'s',1,NULL,NULL),(46,45,'s',0,NULL,NULL),(47,46,'r',0,NULL,NULL),(48,47,'r',1,NULL,NULL),(49,48,'r',0,NULL,NULL),(50,49,'r',0,NULL,NULL),(51,50,'r',0,NULL,NULL),(52,51,'a',1,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,53,'a',1,NULL,NULL),(55,54,'a',1,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,57,'a',0,NULL,NULL),(59,58,'s',0,NULL,NULL),(60,59,'s',0,NULL,NULL),(61,60,'s',1,NULL,NULL),(62,61,'r',0,NULL,NULL),(63,62,'r',1,NULL,NULL),(64,63,'r',0,NULL,NULL),(65,64,'r',1,NULL,NULL),(66,65,'a',1,NULL,NULL),(67,66,'a',0,NULL,NULL),(68,67,'a',0,NULL,NULL),(69,68,'a',0,NULL,NULL),(70,69,'a',0,NULL,NULL),(71,70,'a',0,NULL,NULL),(72,71,'a',0,NULL,NULL),(73,72,'a',0,NULL,NULL),(74,73,'a',0,NULL,NULL),(75,74,'a',0,NULL,NULL),(76,75,'s',0,NULL,NULL),(77,76,'r',1,NULL,NULL),(78,77,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,44),(2,2,46),(3,3,46),(4,4,46),(5,5,46),(6,6,46),(7,7,46),(8,8,52),(9,9,60),(10,10,52),(11,11,60),(12,12,52),(13,12,54),(14,12,64),(15,13,61),(16,14,64),(17,14,52),(18,14,54),(19,15,60),(20,16,53),(21,17,59),(22,18,61),(23,19,60),(24,20,60),(25,21,55),(26,22,60),(27,23,52),(28,24,54),(29,25,61),(30,26,59),(31,27,55),(32,28,52),(33,29,59),(34,30,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,45,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(2,78,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(3,79,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(4,78,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',16,'p',NULL),(5,79,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(6,78,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',27,'p',NULL),(7,79,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(8,80,'<ravishankar.app.smscollection.SmsCollectionActivity$3$1: void onClick(android.view.View)>',14,'a',NULL),(9,81,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(10,82,'<ravishankar.app.smscollection.SmsCollectionActivity$3$4: void onClick(android.view.View)>',40,'a',NULL),(11,83,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(12,84,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(13,85,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(14,84,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(15,81,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(16,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(17,86,'<com.FRQTzbWJ.TvPHDjAl6502.HandleClicks: void displayUrl()>',11,'a',NULL),(18,85,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',133,'p',NULL),(19,81,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(20,83,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(21,87,'<com.ravi.twitter.PrepareRequestTokenActivity$RetrieveAccessTokenTask: java.lang.Void doInBackground(android.net.Uri[])>',26,'a',NULL),(22,83,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(23,51,'<ravishankar.app.smscollection.SmsCollectionActivity: void onRTLFling()>',17,'a',NULL),(24,59,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(25,85,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',108,'p',NULL),(26,86,'<com.FRQTzbWJ.TvPHDjAl6502.HandleClicks: void sendSms()>',17,'a',NULL),(27,88,'<com.ravi.twitter.OAuthRequestTokenTask: java.lang.Void doInBackground(java.lang.Void[])>',18,'a',0),(28,51,'<ravishankar.app.smscollection.SmsCollectionActivity: void onLTRFling()>',9,'a',NULL),(29,86,'<com.FRQTzbWJ.TvPHDjAl6502.HandleClicks: void callNumber()>',18,'a',NULL),(30,89,'<ravishankar.app.smscollection.SmsCollectionActivity$3$2: void onClick(android.view.View)>',22,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,16),(2,4,14),(3,5,16),(4,7,16),(5,8,16),(6,9,16),(7,10,16),(8,11,14),(9,12,17),(10,13,17),(11,14,14),(12,16,18),(13,17,18),(14,18,18),(15,19,18),(16,20,18),(17,21,18),(18,22,18),(19,23,18),(20,25,14),(21,26,14),(22,27,19),(23,28,18),(24,29,18),(25,30,18),(26,31,18),(27,32,18),(28,33,18),(29,34,18),(30,35,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/device/android/AndroidSDKProvider'),(2,2,'com/apperhand/device/android/AndroidSDKProvider'),(3,6,'com/ravi/twitter/PrepareRequestTokenActivity'),(4,15,'ravishankar/app/smscollection/SmsCollectionActivity'),(5,24,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,11,10),(2,12,11),(3,13,12),(4,14,13),(5,27,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'M_SERVER_URL'),(2,1,'USER_AGENT'),(3,1,'SERVICE_MODE'),(4,1,'FIRST_RUN'),(5,1,'DEVELOPER_ID'),(6,1,'APPLICATION_ID'),(7,2,'M_SERVER_URL'),(8,2,'USER_AGENT'),(9,2,'SERVICE_MODE'),(10,2,'FIRST_RUN'),(11,2,'DEVELOPER_ID'),(12,2,'(.*)'),(13,2,'APPLICATION_ID'),(14,3,'android.intent.extra.shortcut.NAME'),(15,3,'android.intent.extra.shortcut.ICON'),(16,3,'android.intent.extra.shortcut.INTENT'),(17,4,'sms_body'),(18,5,'android.intent.extra.shortcut.NAME'),(19,5,'android.intent.extra.shortcut.ICON'),(20,5,'android.intent.extra.shortcut.INTENT'),(21,6,'tweet_msg'),(22,7,'android.intent.extra.shortcut.NAME'),(23,7,'android.intent.extra.shortcut.ICON_RESOURCE'),(24,7,'android.intent.extra.shortcut.INTENT'),(25,8,'android.intent.extra.shortcut.NAME'),(26,8,'android.intent.extra.shortcut.ICON'),(27,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(28,8,'android.intent.extra.shortcut.INTENT'),(29,9,'android.intent.extra.shortcut.NAME'),(30,9,'android.intent.extra.shortcut.ICON'),(31,9,'android.intent.extra.shortcut.INTENT'),(32,10,'duplicate'),(33,10,'android.intent.extra.shortcut.NAME'),(34,10,'android.intent.extra.shortcut.ICON'),(35,10,'android.intent.extra.shortcut.INTENT'),(36,16,'android.intent.extra.INTENT'),(37,17,'android.intent.extra.INTENT'),(38,18,'android.intent.extra.TITLE'),(39,18,'android.intent.extra.INTENT'),(40,19,'android.intent.extra.INTENT'),(41,20,'android.intent.extra.TITLE'),(42,20,'android.intent.extra.INTENT'),(43,21,'android.intent.extra.INTENT'),(44,22,'android.intent.extra.TITLE'),(45,22,'android.intent.extra.INTENT'),(46,23,'android.intent.extra.TITLE'),(47,23,'android.intent.extra.INTENT'),(48,24,'M_SERVER_URL'),(49,24,'USER_AGENT'),(50,24,'SERVICE_MODE'),(51,24,'FIRST_RUN'),(52,24,'DEVELOPER_ID'),(53,24,'APPLICATION_ID'),(54,25,'sms_body'),(55,25,'address'),(56,26,'sms_body'),(57,28,'android.intent.extra.INTENT'),(58,29,'android.intent.extra.INTENT'),(59,30,'android.intent.extra.TITLE'),(60,30,'android.intent.extra.INTENT'),(61,31,'android.intent.extra.INTENT'),(62,32,'android.intent.extra.TITLE'),(63,32,'android.intent.extra.INTENT'),(64,33,'android.intent.extra.INTENT'),(65,34,'android.intent.extra.TITLE'),(66,34,'android.intent.extra.INTENT'),(67,35,'android.intent.extra.TITLE'),(68,35,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,2),(5,5,4),(6,6,2),(7,7,5),(8,8,2),(9,9,6),(10,10,2),(11,11,5),(12,12,8),(13,12,7),(14,12,9),(15,13,5),(16,14,10),(17,15,5),(18,16,2),(19,17,1),(20,18,11),(21,19,12),(22,20,2),(23,21,13),(24,22,5),(25,23,5),(26,24,5),(27,25,14),(28,26,2),(29,27,14),(30,28,15),(31,29,5),(32,30,5),(33,31,5),(34,32,2),(35,33,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,5,2),(4,6,3),(5,7,4),(6,8,3),(7,10,3),(8,11,4),(9,15,4),(10,16,1),(11,20,1),(12,23,4),(13,24,4),(14,25,5),(15,25,6),(16,26,1),(17,27,6),(18,27,5),(19,29,4),(20,31,4),(21,32,1);
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
INSERT INTO `IFData` VALUES (1,25,'http','test.com',NULL,'/myapp(.*)',NULL,NULL),(2,27,'x-oauthflow-twitter','callback',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'vnd.android-dir','mms-sms'),(2,12,'(.*)','(.*)'),(3,25,'vnd.android-dir','mms-sms'),(4,26,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'AppleGold.com'),(2,2,'AppleGold.com'),(3,6,'ravishankar.app.smsbookhindi'),(4,15,'ravishankar.app.smsbookhindi'),(5,24,'ravishankar.app.smsbookhindi');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,4,0),(3,5,0),(4,6,0),(5,4,0),(6,8,0),(7,9,0),(8,15,0),(9,16,0),(10,22,0),(11,27,0),(12,28,0),(13,27,0),(14,31,0),(15,35,0),(16,38,0),(17,40,0),(18,42,0),(19,43,0),(20,44,0),(21,45,0),(22,48,0),(23,48,0),(24,48,0),(25,52,0),(26,54,0),(27,55,0),(28,61,0),(29,62,0),(30,63,0),(31,65,0),(32,66,0),(33,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,8,1,0),(5,9,1,0),(6,10,0,0),(7,12,1,0),(8,12,1,0),(9,12,1,0),(10,13,1,0),(11,16,1,0),(12,16,1,0),(13,16,1,0),(14,17,1,0),(15,21,0,0),(16,23,1,0),(17,23,1,0),(18,23,1,0),(19,23,1,0),(20,23,1,0),(21,23,1,0),(22,23,1,0),(23,23,1,0),(24,24,0,0),(25,26,1,0),(26,28,1,0),(27,29,1,0),(28,30,1,0),(29,30,1,0),(30,30,1,0),(31,30,1,0),(32,30,1,0),(33,30,1,0),(34,30,1,0),(35,30,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,16,44,2,NULL),(2,17,44,2,NULL),(3,18,44,2,NULL),(4,19,44,2,NULL),(5,20,44,2,NULL),(6,21,44,2,NULL),(7,22,44,2,NULL),(8,23,44,2,NULL),(9,11,44,2,NULL),(10,13,44,2,NULL),(11,1,7,2,NULL),(12,1,29,2,NULL),(13,1,41,2,NULL),(14,1,46,2,NULL),(15,1,60,2,NULL),(16,1,76,2,NULL),(17,2,7,2,NULL),(18,2,29,2,NULL),(19,2,41,2,NULL),(20,2,46,2,NULL),(21,2,60,2,NULL),(22,2,76,2,NULL),(23,16,66,2,NULL),(24,17,66,2,NULL),(25,18,66,2,NULL),(26,19,66,2,NULL),(27,20,66,2,NULL),(28,21,66,2,NULL),(29,22,66,2,NULL),(30,23,66,2,NULL),(31,11,66,2,NULL),(32,13,66,2,NULL),(33,16,77,2,NULL),(34,17,77,2,NULL),(35,18,77,2,NULL),(36,19,77,2,NULL),(37,20,77,2,NULL),(38,21,77,2,NULL),(39,22,77,2,NULL),(40,23,77,2,NULL),(41,11,77,2,NULL),(42,13,77,2,NULL),(43,16,6,2,NULL),(44,17,6,2,NULL),(45,18,6,2,NULL),(46,19,6,2,NULL),(47,20,6,2,NULL),(48,21,6,2,NULL),(49,22,6,2,NULL),(50,23,6,2,NULL),(51,11,6,2,NULL),(52,13,6,2,NULL),(53,16,8,2,NULL),(54,17,8,2,NULL),(55,18,8,2,NULL),(56,19,8,2,NULL),(57,20,8,2,NULL),(58,21,8,2,NULL),(59,22,8,2,NULL),(60,23,8,2,NULL),(61,11,8,2,NULL),(62,13,8,2,NULL),(63,16,15,2,NULL),(64,17,15,2,NULL),(65,18,15,2,NULL),(66,19,15,2,NULL),(67,20,15,2,NULL),(68,21,15,2,NULL),(69,22,15,2,NULL),(70,23,15,2,NULL),(71,11,15,2,NULL),(72,13,15,2,NULL),(73,16,22,2,NULL),(74,17,22,2,NULL),(75,18,22,2,NULL),(76,19,22,2,NULL),(77,20,22,2,NULL),(78,21,22,2,NULL),(79,22,22,2,NULL),(80,23,22,2,NULL),(81,11,22,2,NULL),(82,13,22,2,NULL),(83,16,28,2,NULL),(84,17,28,2,NULL),(85,18,28,2,NULL),(86,19,28,2,NULL),(87,20,28,2,NULL),(88,21,28,2,NULL),(89,22,28,2,NULL),(90,23,28,2,NULL),(91,11,28,2,NULL),(92,13,28,2,NULL),(93,16,31,2,NULL),(94,17,31,2,NULL),(95,18,31,2,NULL),(96,19,31,2,NULL),(97,20,31,2,NULL),(98,21,31,2,NULL),(99,22,31,2,NULL),(100,23,31,2,NULL),(101,11,31,2,NULL),(102,13,31,2,NULL),(103,16,35,2,NULL),(104,17,35,2,NULL),(105,18,35,2,NULL),(106,19,35,2,NULL),(107,20,35,2,NULL),(108,21,35,2,NULL),(109,22,35,2,NULL),(110,23,35,2,NULL),(111,11,35,2,NULL),(112,13,35,2,NULL),(113,16,4,2,NULL),(114,17,4,2,NULL),(115,18,4,2,NULL),(116,19,4,2,NULL),(117,20,4,2,NULL),(118,21,4,2,NULL),(119,22,4,2,NULL),(120,23,4,2,NULL),(121,16,16,2,NULL),(122,17,16,2,NULL),(123,18,16,2,NULL),(124,19,16,2,NULL),(125,20,16,2,NULL),(126,21,16,2,NULL),(127,22,16,2,NULL),(128,23,16,2,NULL),(129,16,27,2,NULL),(130,17,27,2,NULL),(131,18,27,2,NULL),(132,19,27,2,NULL),(133,20,27,2,NULL),(134,21,27,2,NULL),(135,22,27,2,NULL),(136,23,27,2,NULL),(137,16,3,2,NULL),(138,17,3,2,NULL),(139,18,3,2,NULL),(140,19,3,2,NULL),(141,20,3,2,NULL),(142,21,3,2,NULL),(143,22,3,2,NULL),(144,23,3,2,NULL),(145,16,5,2,NULL),(146,17,5,2,NULL),(147,18,5,2,NULL),(148,19,5,2,NULL),(149,20,5,2,NULL),(150,21,5,2,NULL),(151,22,5,2,NULL),(152,23,5,2,NULL),(153,16,9,2,NULL),(154,17,9,2,NULL),(155,18,9,2,NULL),(156,19,9,2,NULL),(157,20,9,2,NULL),(158,21,9,2,NULL),(159,22,9,2,NULL),(160,23,9,2,NULL),(161,16,38,2,NULL),(162,17,38,2,NULL),(163,18,38,2,NULL),(164,19,38,2,NULL),(165,20,38,2,NULL),(166,21,38,2,NULL),(167,22,38,2,NULL),(168,23,38,2,NULL),(169,16,40,2,NULL),(170,17,40,2,NULL),(171,18,40,2,NULL),(172,19,40,2,NULL),(173,20,40,2,NULL),(174,21,40,2,NULL),(175,22,40,2,NULL),(176,23,40,2,NULL),(177,16,42,2,NULL),(178,17,42,2,NULL),(179,18,42,2,NULL),(180,19,42,2,NULL),(181,20,42,2,NULL),(182,21,42,2,NULL),(183,22,42,2,NULL),(184,23,42,2,NULL),(185,16,43,2,NULL),(186,17,43,2,NULL),(187,18,43,2,NULL),(188,19,43,2,NULL),(189,20,43,2,NULL),(190,21,43,2,NULL),(191,22,43,2,NULL),(192,23,43,2,NULL),(193,16,45,2,NULL),(194,17,45,2,NULL),(195,18,45,2,NULL),(196,19,45,2,NULL),(197,20,45,2,NULL),(198,21,45,2,NULL),(199,22,45,2,NULL),(200,23,45,2,NULL),(201,16,48,2,NULL),(202,17,48,2,NULL),(203,18,48,2,NULL),(204,19,48,2,NULL),(205,20,48,2,NULL),(206,21,48,2,NULL),(207,22,48,2,NULL),(208,23,48,2,NULL),(209,16,54,2,NULL),(210,17,54,2,NULL),(211,18,54,2,NULL),(212,19,54,2,NULL),(213,20,54,2,NULL),(214,21,54,2,NULL),(215,22,54,2,NULL),(216,23,54,2,NULL),(217,16,61,2,NULL),(218,17,61,2,NULL),(219,18,61,2,NULL),(220,19,61,2,NULL),(221,20,61,2,NULL),(222,21,61,2,NULL),(223,22,61,2,NULL),(224,23,61,2,NULL),(225,16,62,2,NULL),(226,17,62,2,NULL),(227,18,62,2,NULL),(228,19,62,2,NULL),(229,20,62,2,NULL),(230,21,62,2,NULL),(231,22,62,2,NULL),(232,23,62,2,NULL),(233,16,63,2,NULL),(234,17,63,2,NULL),(235,18,63,2,NULL),(236,19,63,2,NULL),(237,20,63,2,NULL),(238,21,63,2,NULL),(239,22,63,2,NULL),(240,23,63,2,NULL),(241,16,65,2,NULL),(242,17,65,2,NULL),(243,18,65,2,NULL),(244,19,65,2,NULL),(245,20,65,2,NULL),(246,21,65,2,NULL),(247,22,65,2,NULL),(248,23,65,2,NULL),(249,11,4,2,NULL),(250,13,4,2,NULL),(251,11,16,2,NULL),(252,13,16,2,NULL),(253,11,27,2,NULL),(254,13,27,2,NULL),(255,11,3,2,NULL),(256,13,3,2,NULL),(257,11,5,2,NULL),(258,13,5,2,NULL),(259,11,9,2,NULL),(260,13,9,2,NULL),(261,11,38,2,NULL),(262,13,38,2,NULL),(263,11,40,2,NULL),(264,13,40,2,NULL),(265,11,42,2,NULL),(266,13,42,2,NULL),(267,11,43,2,NULL),(268,13,43,2,NULL),(269,11,45,2,NULL),(270,13,45,2,NULL),(271,11,48,2,NULL),(272,13,48,2,NULL),(273,11,54,2,NULL),(274,13,54,2,NULL),(275,11,61,2,NULL),(276,13,61,2,NULL),(277,11,62,2,NULL),(278,13,62,2,NULL),(279,11,63,2,NULL),(280,13,63,2,NULL),(281,11,65,2,NULL),(282,13,65,2,NULL),(283,24,7,2,NULL),(284,24,29,2,NULL),(285,24,41,2,NULL),(286,24,46,2,NULL),(287,24,60,2,NULL),(288,24,76,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(21,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.BIND_WALLPAPER'),(28,'android.permission.GET_ACCOUNTS'),(13,'android.permission.INTERNET'),(27,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(29,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(24,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(19,'com.android.launcher.permission.READ_SETTINGS'),(9,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(16,'com.fede.launcher.permission.READ_SETTINGS'),(8,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(12,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(20,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(23,'com.motorola.launcher.permission.READ_SETTINGS'),(17,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,7,5),(6,11,6),(7,14,7),(8,15,8),(9,15,9),(10,18,14),(11,19,15),(12,20,16),(13,22,17),(14,25,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,2),(7,1,5),(8,2,3),(9,3,1),(10,1,6),(11,2,4),(12,1,7),(13,3,19),(14,2,5),(15,1,8),(16,3,18),(17,2,6),(18,1,9),(19,3,21),(20,2,7),(21,1,10),(22,3,6),(23,2,8),(24,1,11),(25,3,25),(26,2,9),(27,3,9),(28,1,12),(29,2,10),(30,3,10),(31,1,13),(32,2,11),(33,3,11),(34,1,14),(35,2,12),(36,1,15),(37,3,13),(38,2,13),(39,1,17),(40,2,14),(41,1,16),(42,2,15),(43,1,19),(44,2,17),(45,1,18),(46,2,16),(47,1,21),(48,2,19),(49,1,20),(50,2,18),(51,1,23),(52,2,21),(53,1,22),(54,2,20),(55,2,23),(56,2,22),(57,2,24),(58,4,1),(59,4,2),(60,4,4),(61,4,5),(62,4,6),(63,4,7),(64,4,8),(65,4,9),(66,4,10),(67,4,11),(68,4,12),(69,4,13),(70,4,14),(71,4,15),(72,4,17),(73,4,16),(74,4,19),(75,4,21),(76,4,20),(77,4,23),(78,4,22),(79,4,25),(80,4,27),(81,4,29),(82,4,28),(83,4,30),(84,5,1),(85,5,2),(86,5,4),(87,5,5),(88,5,6),(89,5,8),(90,5,9),(91,5,10),(92,5,12),(93,5,13),(94,5,14),(95,5,17),(96,5,16),(97,5,19),(98,5,20),(99,5,23),(100,5,22),(101,6,1),(102,6,2),(103,6,4),(104,6,5),(105,6,6),(106,6,7),(107,6,8),(108,6,9),(109,6,10),(110,6,11),(111,6,12),(112,6,13),(113,6,14),(114,6,15),(115,6,17),(116,6,16),(117,6,19),(118,6,18),(119,6,21),(120,6,20),(121,6,23),(122,6,22),(123,6,25),(124,7,1),(125,7,2),(126,7,4),(127,7,5),(128,7,6),(129,7,7),(130,7,8),(131,7,9),(132,7,10),(133,7,11),(134,7,12),(135,7,13),(136,7,14),(137,7,15),(138,7,17),(139,7,16),(140,7,19),(141,7,21),(142,7,20),(143,7,23),(144,7,22),(145,7,25),(146,7,30);
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

-- Dump completed on 2015-10-12  3:31:13
