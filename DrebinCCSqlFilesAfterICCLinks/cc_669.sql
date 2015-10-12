-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_669
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(13,'INTENT_ShirdiSaiBabaTemple'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(22,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(15,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.MEDIA_EJECT'),(8,'android.intent.action.MEDIA_MOUNTED'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.SENDTO'),(21,'android.intent.action.USER_PRESENT'),(14,'android.intent.action.VIEW'),(16,'android.media.action.IMAGE_CAPTURE'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'com.airpush.android.PushServiceStart17549'),(2,'com.airpush.android.PushServiceStart27547'),(9,'com.airpush.android.PushServiceStart31806'),(5,'com.airpush.android.PushServiceStart42067'),(24,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.senddroid.AdServicebys.widgets.shirdisaibaba'),(4,'com.senddroid.AdServicecom.free.ringtones');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.indeliblezone.sexybilliards',1),(2,'com.free.ringtones',6),(3,'com.Madjad.JigSaw.Dolls',19),(4,'bys.widgets.shirdisaibaba',9),(5,'com.christmasgame.deal',2),(6,'com.FlyingZombiesGold',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.indeliblezone.activity.SplashScreen'),(2,1,'com.indeliblezone.activity.WebViewActivity'),(3,1,'com.airpush.android.PushAds'),(4,1,'com.airpush.android.PushService'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,1,'com.airpush.android.UserDetailsReceiver'),(7,1,'com.airpush.android.MessageReceiver'),(8,1,'com.airpush.android.DeliveryReceiver'),(9,1,'com.indeliblezone.activity.BootReceiver'),(10,2,'com.free.ringtones.IntroActivity_'),(11,2,'com.free.ringtones.RateActivity'),(12,2,'com.airpush.android.PushAds'),(13,2,'com.apperhand.device.android.AndroidSDKProvider'),(14,2,'com.senddroid.AdService'),(15,3,'com.Madjad.JigSaw.Dolls.JigsawPuzzle'),(16,2,'com.airpush.android.PushService'),(17,3,'com.Madjad.JigSaw.Dolls.GameView'),(18,2,'com.airpush.android.UserDetailsReceiver'),(19,3,'com.google.ads.AdActivity'),(20,2,'com.airpush.android.MessageReceiver'),(21,3,'com.Madjad.JigSaw.Dolls.SettingsList'),(22,2,'com.airpush.android.DeliveryReceiver'),(23,2,'com.free.ringtones.BootReceiver'),(24,3,'com.Madjad.JigSaw.Dolls.GalleryLevel'),(25,3,'com.Madjad.JigSaw.Dolls.ProVersion'),(26,2,'com.Leadbolt.AdNotification'),(27,3,'com.airpush.android.PushAds'),(28,3,'com.Madjad.JigSaw.Dolls.DownloadService'),(29,3,'com.apperhand.device.android.AndroidSDKProvider'),(30,3,'com.airpush.android.PushService'),(31,4,'bys.widgets.shirdisaibaba.TempleMainActivity'),(32,3,'com.airpush.android.UserDetailsReceiver'),(33,3,'com.airpush.android.MessageReceiver'),(34,5,'com.christmasgame.deal.MainActivity'),(35,3,'com.airpush.android.DeliveryReceiver'),(36,4,'bys.widgets.shirdisaibaba.AboutActivity'),(37,3,'com.Madjad.JigSaw.Dolls.BootReceiver'),(38,4,'bys.widgets.shirdisaibaba.LicenseAgreementActivity'),(39,5,'com.christmasgame.deal.Ranking'),(40,4,'bys.widgets.shirdisaibaba.HelpUsActivity'),(41,5,'com.christmasgame.deal.AppsList'),(42,4,'bys.widgets.shirdisaibaba.AudioListActivity'),(43,5,'com.christmasgame.deal.EditProfile'),(44,4,'bys.widgets.shirdisaibaba.PlayListMakerActivity'),(45,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(46,4,'bys.widgets.shirdisaibaba.ChangeAudioActivity'),(47,5,'com.google.ads.AdActivity'),(48,4,'bys.widgets.shirdisaibaba.SettingsActivity'),(49,5,'com.apperhand.device.android.AndroidSDKProvider'),(50,4,'com.google.ads.AdActivity'),(51,5,'com.christmasgame.dealornodeal.Widget'),(52,4,'bys.widgets.shirdisaibaba.FilePickerActivity'),(53,4,'com.airpush.android.PushAds'),(54,4,'com.airpush.android.PushService'),(55,4,'com.senddroid.AdService'),(56,4,'com.apperhand.device.android.AndroidSDKProvider'),(57,4,'bys.widgets.shirdisaibaba.GodWidgetProvider_80_100'),(58,4,'bys.widgets.shirdisaibaba.GodWidgetProvider_160_200'),(59,4,'bys.widgets.shirdisaibaba.GodWidgetProvider_240_300'),(60,4,'bys.widgets.shirdisaibaba.AlarmReceiver'),(61,6,'com.FlyingZombiesGold.firstScene'),(62,4,'com.airpush.android.UserDetailsReceiver'),(63,6,'com.apperhand.device.android.AndroidSDKProvider'),(64,4,'com.airpush.android.MessageReceiver'),(65,6,'com.FlyingZombiesGold.BootReceiver'),(66,4,'com.airpush.android.DeliveryReceiver'),(67,4,'bys.widgets.shirdisaibaba.BootReceiver'),(68,6,'com.Leadbolt.AdNotification'),(69,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(70,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(71,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(72,5,'com.apperhand.device.android.a.e'),(73,5,'com.apperhand.device.android.a.a'),(74,5,'com.christmasgame.deal.MainActivity$7'),(75,5,'com.christmasgame.deal.MainActivity$5'),(76,5,'com.christmasgame.deal.Ranking$2'),(77,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(78,5,'com.mobclix.android.sdk.Mobclix$3'),(79,5,'com.christmasgame.deal.MainActivity$9'),(80,5,'com.christmasgame.deal.MainActivity$13');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,47,'action'),(2,43,'nick'),(3,45,'com.christmasgame.deal.type'),(4,39,'mGameID'),(5,49,'SERVICE_MODE'),(6,34,'UMENG_APPKEY'),(7,39,'UMENG_APPKEY'),(8,43,'UMENG_APPKEY'),(9,49,'USER_AGENT'),(10,34,'com.mobclix.LOG_LEVEL'),(11,39,'com.mobclix.LOG_LEVEL'),(12,43,'com.mobclix.LOG_LEVEL'),(13,47,'com.google.ads.AdOpener'),(14,49,'APPLICATION_ID'),(15,41,'url'),(16,49,'M_SERVER_URL'),(17,49,'FIRST_RUN'),(18,43,'mGameID'),(19,45,'imageUri'),(20,39,'mThisGameHighScore'),(21,34,'com.mobclix.APPLICATION_ID'),(22,39,'com.mobclix.APPLICATION_ID'),(23,43,'com.mobclix.APPLICATION_ID'),(24,45,'com.christmasgame.deal.data'),(25,34,'UMENG_CHANNEL'),(26,39,'UMENG_CHANNEL'),(27,43,'UMENG_CHANNEL'),(28,34,'ADMOB_PUBLISHER_ID'),(29,39,'ADMOB_PUBLISHER_ID'),(30,43,'ADMOB_PUBLISHER_ID'),(31,49,'permanent'),(32,47,'params'),(33,49,'DEVELOPER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,70,'r',1,NULL,NULL),(70,77,'r',1,NULL,NULL),(71,78,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,34),(2,2,45),(3,3,45),(4,4,47),(5,5,34),(6,6,34),(7,7,49),(8,8,34),(9,9,49),(10,10,45),(11,11,34),(12,12,34),(13,13,39),(14,14,45),(15,15,45),(16,16,34),(17,17,34),(18,18,34),(19,19,49),(20,20,34),(21,21,34),(22,22,49),(23,23,49),(24,24,39),(25,25,34),(26,26,45),(27,27,49),(28,28,45),(29,29,34);
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
INSERT INTO `ExitPoints` VALUES (1,49,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(2,69,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(3,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(4,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(5,34,'<com.christmasgame.deal.MainActivity: void t()>',21,'a',NULL),(6,71,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(7,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(8,34,'<com.christmasgame.deal.MainActivity: void n()>',10,'a',NULL),(9,73,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(10,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(11,74,'<com.christmasgame.deal.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(12,75,'<com.christmasgame.deal.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(13,76,'<com.christmasgame.deal.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(14,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(15,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(16,71,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(17,79,'<com.christmasgame.deal.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(18,71,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(19,72,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(20,34,'<com.christmasgame.deal.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(21,80,'<com.christmasgame.deal.MainActivity$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(22,73,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(23,73,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(24,39,'<com.christmasgame.deal.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(25,71,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(26,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(27,72,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(28,45,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(29,71,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,3,14),(2,4,14),(3,6,15),(4,7,16),(5,8,16),(6,9,16),(7,11,16),(8,12,14),(9,13,17),(10,14,17),(11,16,14),(12,17,14),(13,20,15),(14,21,16),(15,22,16),(16,23,16),(17,25,16),(18,26,14),(19,29,20),(20,30,20),(21,31,20),(22,32,20),(23,33,20),(24,34,20),(25,35,20),(26,36,20),(27,38,14),(28,39,14),(29,40,14),(30,41,23),(31,42,14),(32,45,20),(33,46,20),(34,47,20),(35,48,20),(36,49,20),(37,50,20),(38,51,20),(39,52,20),(40,53,24);
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
INSERT INTO `IClasses` VALUES (1,1,'com/apperhand/device/android/AndroidSDKProvider'),(2,2,'com/apperhand/device/android/AndroidSDKProvider'),(3,15,'com/christmasgame/deal/AppsList'),(4,18,'com/christmasgame/deal/Ranking'),(5,28,'com/christmasgame/deal/EditProfile'),(6,37,'com/mobclix/android/sdk/MobclixBrowserActivity'),(7,43,'com/christmasgame/deal/EditProfile'),(8,44,'com/mobclix/android/sdk/MobclixBrowserActivity'),(9,54,'com/mobclix/android/sdk/MobclixBrowserActivity');
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
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,12,3),(4,13,4),(5,14,5),(6,16,6),(7,17,7),(8,26,10),(9,38,12),(10,39,13),(11,40,14),(12,41,17),(13,42,18);
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
INSERT INTO `IExtras` VALUES (1,1,'M_SERVER_URL'),(2,1,'USER_AGENT'),(3,1,'SERVICE_MODE'),(4,1,'FIRST_RUN'),(5,1,'DEVELOPER_ID'),(6,1,'APPLICATION_ID'),(7,2,'M_SERVER_URL'),(8,2,'USER_AGENT'),(9,2,'SERVICE_MODE'),(10,2,'FIRST_RUN'),(11,2,'DEVELOPER_ID'),(12,2,'(.*)'),(13,2,'APPLICATION_ID'),(14,7,'output'),(15,8,'output'),(16,8,'android.intent.extra.videoQuality'),(17,15,'url'),(18,18,'mGameID'),(19,18,'mThisGameHighScore'),(20,21,'output'),(21,22,'output'),(22,22,'android.intent.extra.videoQuality'),(23,28,'mGameID'),(24,28,'nick'),(25,29,'android.intent.extra.INTENT'),(26,30,'android.intent.extra.INTENT'),(27,31,'android.intent.extra.TITLE'),(28,31,'android.intent.extra.INTENT'),(29,32,'android.intent.extra.INTENT'),(30,33,'android.intent.extra.TITLE'),(31,33,'android.intent.extra.INTENT'),(32,34,'android.intent.extra.INTENT'),(33,35,'android.intent.extra.TITLE'),(34,35,'android.intent.extra.INTENT'),(35,36,'android.intent.extra.TITLE'),(36,36,'android.intent.extra.INTENT'),(37,41,'android.intent.extra.SUBJECT'),(38,43,'mGameID'),(39,43,'nick'),(40,45,'android.intent.extra.INTENT'),(41,46,'android.intent.extra.INTENT'),(42,47,'android.intent.extra.TITLE'),(43,47,'android.intent.extra.INTENT'),(44,48,'android.intent.extra.INTENT'),(45,49,'android.intent.extra.TITLE'),(46,49,'android.intent.extra.INTENT'),(47,50,'android.intent.extra.INTENT'),(48,51,'android.intent.extra.TITLE'),(49,51,'android.intent.extra.INTENT'),(50,52,'android.intent.extra.TITLE'),(51,52,'android.intent.extra.INTENT'),(52,53,'android.intent.extra.shortcut.NAME'),(53,53,'android.intent.extra.shortcut.ICON'),(54,53,'android.intent.extra.shortcut.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,4),(7,7,5),(8,8,1),(9,9,1),(10,10,3),(11,11,1),(12,12,6),(13,12,8),(14,12,7),(15,13,9),(16,14,1),(17,15,1),(18,16,3),(19,17,10),(20,18,11),(21,19,12),(22,20,10),(23,21,10),(24,22,10),(25,23,1),(26,24,13),(27,25,3),(28,26,3),(29,27,19),(30,27,18),(31,28,21),(32,28,18),(33,29,22),(34,30,18),(35,30,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,5,1),(5,8,3),(6,9,3),(7,10,2),(8,11,3),(9,14,1),(10,15,1),(11,16,2),(12,23,1),(13,26,2);
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
INSERT INTO `IMimeTypes` VALUES (1,6,'image','*'),(2,10,'image','*'),(3,11,'image','*'),(4,13,'(.*)','(.*)'),(5,20,'image','*'),(6,24,'image','*'),(7,25,'image','*');
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
INSERT INTO `IPackages` VALUES (1,1,'com.christmasgame.deal'),(2,2,'com.christmasgame.deal'),(3,15,'com.christmasgame.deal'),(4,18,'com.christmasgame.deal'),(5,28,'com.christmasgame.deal'),(6,37,'com.christmasgame.deal'),(7,43,'com.christmasgame.deal'),(8,44,'com.christmasgame.deal'),(9,54,'com.christmasgame.deal');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,9,0),(4,10,0),(5,15,0),(6,14,0),(7,16,0),(8,17,0),(9,21,0),(10,23,0),(11,25,0),(12,28,0),(13,30,0),(14,31,0),(15,34,0),(16,37,0),(17,51,0),(18,54,0),(19,55,0),(20,57,0),(21,58,0),(22,59,0),(23,61,0),(24,60,0),(25,65,0),(26,67,0),(27,69,0),(28,70,0),(29,71,0),(30,69,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,2,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,3,1,0),(12,4,1,0),(13,4,1,0),(14,4,1,0),(15,5,0,0),(16,6,1,0),(17,6,1,0),(18,8,0,0),(19,10,1,0),(20,10,1,0),(21,10,1,0),(22,10,1,0),(23,10,1,0),(24,10,1,0),(25,10,1,0),(26,11,1,0),(27,12,1,0),(28,13,0,0),(29,14,1,0),(30,14,1,0),(31,14,1,0),(32,14,1,0),(33,14,1,0),(34,14,1,0),(35,14,1,0),(36,14,1,0),(37,16,0,0),(38,17,1,0),(39,18,1,0),(40,18,1,0),(41,20,1,0),(42,21,1,0),(43,24,0,0),(44,25,0,0),(45,26,1,0),(46,26,1,0),(47,26,1,0),(48,26,1,0),(49,26,1,0),(50,26,1,0),(51,26,1,0),(52,26,1,0),(53,27,1,0),(54,29,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=798 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,41,2,NULL),(2,18,39,2,NULL),(3,41,1,2,NULL),(4,41,4,2,NULL),(5,41,9,2,NULL),(6,41,10,2,NULL),(7,41,14,2,NULL),(8,41,16,2,NULL),(9,41,23,2,NULL),(10,41,15,2,NULL),(11,41,17,2,NULL),(12,41,21,2,NULL),(13,41,25,2,NULL),(14,41,28,2,NULL),(15,41,30,2,NULL),(16,41,37,2,NULL),(17,41,31,2,NULL),(18,41,54,2,NULL),(19,41,55,2,NULL),(20,41,57,2,NULL),(21,41,58,2,NULL),(22,41,59,2,NULL),(23,41,60,2,NULL),(24,41,67,2,NULL),(25,5,34,2,NULL),(26,7,34,2,NULL),(27,8,34,2,NULL),(28,9,34,2,NULL),(29,19,34,2,NULL),(30,21,34,2,NULL),(31,22,34,2,NULL),(32,23,34,2,NULL),(33,29,34,2,NULL),(34,30,34,2,NULL),(35,31,34,2,NULL),(36,32,34,2,NULL),(37,33,34,2,NULL),(38,34,34,2,NULL),(39,35,34,2,NULL),(40,36,34,2,NULL),(41,45,34,2,NULL),(42,46,34,2,NULL),(43,47,34,2,NULL),(44,48,34,2,NULL),(45,49,34,2,NULL),(46,50,34,2,NULL),(47,51,34,2,NULL),(48,52,34,2,NULL),(49,12,34,2,NULL),(50,14,34,2,NULL),(51,41,51,2,NULL),(52,41,69,2,NULL),(53,41,70,2,NULL),(54,41,71,2,NULL),(55,41,61,2,NULL),(56,41,65,2,NULL),(57,43,43,2,NULL),(58,5,1,2,NULL),(59,7,1,2,NULL),(60,8,1,2,NULL),(61,9,1,2,NULL),(62,19,1,2,NULL),(63,21,1,2,NULL),(64,22,1,2,NULL),(65,23,1,2,NULL),(66,29,1,2,NULL),(67,30,1,2,NULL),(68,31,1,2,NULL),(69,32,1,2,NULL),(70,33,1,2,NULL),(71,34,1,2,NULL),(72,35,1,2,NULL),(73,36,1,2,NULL),(74,45,1,2,NULL),(75,46,1,2,NULL),(76,47,1,2,NULL),(77,48,1,2,NULL),(78,49,1,2,NULL),(79,50,1,2,NULL),(80,51,1,2,NULL),(81,52,1,2,NULL),(82,5,4,2,NULL),(83,7,4,2,NULL),(84,8,4,2,NULL),(85,9,4,2,NULL),(86,19,4,2,NULL),(87,21,4,2,NULL),(88,22,4,2,NULL),(89,23,4,2,NULL),(90,29,4,2,NULL),(91,30,4,2,NULL),(92,31,4,2,NULL),(93,32,4,2,NULL),(94,33,4,2,NULL),(95,34,4,2,NULL),(96,35,4,2,NULL),(97,36,4,2,NULL),(98,45,4,2,NULL),(99,46,4,2,NULL),(100,47,4,2,NULL),(101,48,4,2,NULL),(102,49,4,2,NULL),(103,50,4,2,NULL),(104,51,4,2,NULL),(105,52,4,2,NULL),(106,5,9,2,NULL),(107,7,9,2,NULL),(108,8,9,2,NULL),(109,9,9,2,NULL),(110,19,9,2,NULL),(111,21,9,2,NULL),(112,22,9,2,NULL),(113,23,9,2,NULL),(114,29,9,2,NULL),(115,30,9,2,NULL),(116,31,9,2,NULL),(117,32,9,2,NULL),(118,33,9,2,NULL),(119,34,9,2,NULL),(120,35,9,2,NULL),(121,36,9,2,NULL),(122,45,9,2,NULL),(123,46,9,2,NULL),(124,47,9,2,NULL),(125,48,9,2,NULL),(126,49,9,2,NULL),(127,50,9,2,NULL),(128,51,9,2,NULL),(129,52,9,2,NULL),(130,5,10,2,NULL),(131,7,10,2,NULL),(132,8,10,2,NULL),(133,9,10,2,NULL),(134,19,10,2,NULL),(135,21,10,2,NULL),(136,22,10,2,NULL),(137,23,10,2,NULL),(138,29,10,2,NULL),(139,30,10,2,NULL),(140,31,10,2,NULL),(141,32,10,2,NULL),(142,33,10,2,NULL),(143,34,10,2,NULL),(144,35,10,2,NULL),(145,36,10,2,NULL),(146,45,10,2,NULL),(147,46,10,2,NULL),(148,47,10,2,NULL),(149,48,10,2,NULL),(150,49,10,2,NULL),(151,50,10,2,NULL),(152,51,10,2,NULL),(153,52,10,2,NULL),(154,5,14,2,NULL),(155,7,14,2,NULL),(156,8,14,2,NULL),(157,9,14,2,NULL),(158,19,14,2,NULL),(159,21,14,2,NULL),(160,22,14,2,NULL),(161,23,14,2,NULL),(162,29,14,2,NULL),(163,30,14,2,NULL),(164,31,14,2,NULL),(165,32,14,2,NULL),(166,33,14,2,NULL),(167,34,14,2,NULL),(168,35,14,2,NULL),(169,12,1,2,NULL),(170,36,14,2,NULL),(171,14,1,2,NULL),(172,45,14,2,NULL),(173,12,4,2,NULL),(174,46,14,2,NULL),(175,14,4,2,NULL),(176,47,14,2,NULL),(177,48,14,2,NULL),(178,12,9,2,NULL),(179,49,14,2,NULL),(180,14,9,2,NULL),(181,50,14,2,NULL),(182,51,14,2,NULL),(183,52,14,2,NULL),(184,5,16,2,NULL),(185,7,16,2,NULL),(186,8,16,2,NULL),(187,9,16,2,NULL),(188,19,16,2,NULL),(189,21,16,2,NULL),(190,22,16,2,NULL),(191,23,16,2,NULL),(192,29,16,2,NULL),(193,30,16,2,NULL),(194,31,16,2,NULL),(195,32,16,2,NULL),(196,33,16,2,NULL),(197,34,16,2,NULL),(198,35,16,2,NULL),(199,36,16,2,NULL),(200,45,16,2,NULL),(201,46,16,2,NULL),(202,47,16,2,NULL),(203,48,16,2,NULL),(204,49,16,2,NULL),(205,50,16,2,NULL),(206,51,16,2,NULL),(207,52,16,2,NULL),(208,5,23,2,NULL),(209,7,23,2,NULL),(210,8,23,2,NULL),(211,9,23,2,NULL),(212,19,23,2,NULL),(213,21,23,2,NULL),(214,22,23,2,NULL),(215,23,23,2,NULL),(216,29,23,2,NULL),(217,30,23,2,NULL),(218,31,23,2,NULL),(219,32,23,2,NULL),(220,33,23,2,NULL),(221,34,23,2,NULL),(222,35,23,2,NULL),(223,36,23,2,NULL),(224,45,23,2,NULL),(225,46,23,2,NULL),(226,47,23,2,NULL),(227,48,23,2,NULL),(228,49,23,2,NULL),(229,50,23,2,NULL),(230,51,23,2,NULL),(231,52,23,2,NULL),(232,5,15,2,NULL),(233,7,15,2,NULL),(234,8,15,2,NULL),(235,9,15,2,NULL),(236,19,15,2,NULL),(237,21,15,2,NULL),(238,22,15,2,NULL),(239,23,15,2,NULL),(240,29,15,2,NULL),(241,30,15,2,NULL),(242,31,15,2,NULL),(243,32,15,2,NULL),(244,33,15,2,NULL),(245,34,15,2,NULL),(246,35,15,2,NULL),(247,36,15,2,NULL),(248,45,15,2,NULL),(249,46,15,2,NULL),(250,47,15,2,NULL),(251,48,15,2,NULL),(252,49,15,2,NULL),(253,50,15,2,NULL),(254,51,15,2,NULL),(255,52,15,2,NULL),(256,5,17,2,NULL),(257,7,17,2,NULL),(258,8,17,2,NULL),(259,9,17,2,NULL),(260,19,17,2,NULL),(261,21,17,2,NULL),(262,22,17,2,NULL),(263,23,17,2,NULL),(264,29,17,2,NULL),(265,30,17,2,NULL),(266,31,17,2,NULL),(267,32,17,2,NULL),(268,33,17,2,NULL),(269,34,17,2,NULL),(270,35,17,2,NULL),(271,36,17,2,NULL),(272,45,17,2,NULL),(273,46,17,2,NULL),(274,47,17,2,NULL),(275,48,17,2,NULL),(276,49,17,2,NULL),(277,50,17,2,NULL),(278,51,17,2,NULL),(279,52,17,2,NULL),(280,5,21,2,NULL),(281,7,21,2,NULL),(282,8,21,2,NULL),(283,9,21,2,NULL),(284,19,21,2,NULL),(285,21,21,2,NULL),(286,22,21,2,NULL),(287,23,21,2,NULL),(288,29,21,2,NULL),(289,30,21,2,NULL),(290,31,21,2,NULL),(291,32,21,2,NULL),(292,33,21,2,NULL),(293,34,21,2,NULL),(294,35,21,2,NULL),(295,36,21,2,NULL),(296,45,21,2,NULL),(297,46,21,2,NULL),(298,47,21,2,NULL),(299,48,21,2,NULL),(300,49,21,2,NULL),(301,50,21,2,NULL),(302,51,21,2,NULL),(303,52,21,2,NULL),(304,5,25,2,NULL),(305,7,25,2,NULL),(306,8,25,2,NULL),(307,9,25,2,NULL),(308,19,25,2,NULL),(309,21,25,2,NULL),(310,22,25,2,NULL),(311,23,25,2,NULL),(312,29,25,2,NULL),(313,30,25,2,NULL),(314,31,25,2,NULL),(315,32,25,2,NULL),(316,33,25,2,NULL),(317,34,25,2,NULL),(318,35,25,2,NULL),(319,36,25,2,NULL),(320,45,25,2,NULL),(321,46,25,2,NULL),(322,47,25,2,NULL),(323,48,25,2,NULL),(324,49,25,2,NULL),(325,50,25,2,NULL),(326,51,25,2,NULL),(327,52,25,2,NULL),(328,5,28,2,NULL),(329,7,28,2,NULL),(330,8,28,2,NULL),(331,9,28,2,NULL),(332,19,28,2,NULL),(333,21,28,2,NULL),(334,22,28,2,NULL),(335,23,28,2,NULL),(336,29,28,2,NULL),(337,30,28,2,NULL),(338,31,28,2,NULL),(339,32,28,2,NULL),(340,33,28,2,NULL),(341,34,28,2,NULL),(342,35,28,2,NULL),(343,36,28,2,NULL),(344,45,28,2,NULL),(345,46,28,2,NULL),(346,47,28,2,NULL),(347,48,28,2,NULL),(348,49,28,2,NULL),(349,50,28,2,NULL),(350,51,28,2,NULL),(351,52,28,2,NULL),(352,5,30,2,NULL),(353,7,30,2,NULL),(354,8,30,2,NULL),(355,9,30,2,NULL),(356,19,30,2,NULL),(357,21,30,2,NULL),(358,22,30,2,NULL),(359,23,30,2,NULL),(360,29,30,2,NULL),(361,30,30,2,NULL),(362,31,30,2,NULL),(363,32,30,2,NULL),(364,33,30,2,NULL),(365,34,30,2,NULL),(366,35,30,2,NULL),(367,36,30,2,NULL),(368,45,30,2,NULL),(369,46,30,2,NULL),(370,47,30,2,NULL),(371,48,30,2,NULL),(372,49,30,2,NULL),(373,50,30,2,NULL),(374,51,30,2,NULL),(375,52,30,2,NULL),(376,5,37,2,NULL),(377,7,37,2,NULL),(378,8,37,2,NULL),(379,9,37,2,NULL),(380,19,37,2,NULL),(381,21,37,2,NULL),(382,22,37,2,NULL),(383,23,37,2,NULL),(384,29,37,2,NULL),(385,30,37,2,NULL),(386,31,37,2,NULL),(387,32,37,2,NULL),(388,33,37,2,NULL),(389,34,37,2,NULL),(390,35,37,2,NULL),(391,36,37,2,NULL),(392,45,37,2,NULL),(393,46,37,2,NULL),(394,47,37,2,NULL),(395,48,37,2,NULL),(396,49,37,2,NULL),(397,50,37,2,NULL),(398,51,37,2,NULL),(399,52,37,2,NULL),(400,5,31,2,NULL),(401,7,31,2,NULL),(402,8,31,2,NULL),(403,9,31,2,NULL),(404,19,31,2,NULL),(405,21,31,2,NULL),(406,22,31,2,NULL),(407,23,31,2,NULL),(408,29,31,2,NULL),(409,30,31,2,NULL),(410,31,31,2,NULL),(411,32,31,2,NULL),(412,33,31,2,NULL),(413,34,31,2,NULL),(414,35,31,2,NULL),(415,36,31,2,NULL),(416,45,31,2,NULL),(417,46,31,2,NULL),(418,47,31,2,NULL),(419,48,31,2,NULL),(420,49,31,2,NULL),(421,50,31,2,NULL),(422,51,31,2,NULL),(423,52,31,2,NULL),(424,5,54,2,NULL),(425,7,54,2,NULL),(426,8,54,2,NULL),(427,9,54,2,NULL),(428,19,54,2,NULL),(429,21,54,2,NULL),(430,22,54,2,NULL),(431,23,54,2,NULL),(432,29,54,2,NULL),(433,30,54,2,NULL),(434,31,54,2,NULL),(435,32,54,2,NULL),(436,33,54,2,NULL),(437,34,54,2,NULL),(438,35,54,2,NULL),(439,36,54,2,NULL),(440,45,54,2,NULL),(441,46,54,2,NULL),(442,47,54,2,NULL),(443,48,54,2,NULL),(444,49,54,2,NULL),(445,50,54,2,NULL),(446,51,54,2,NULL),(447,52,54,2,NULL),(448,5,55,2,NULL),(449,7,55,2,NULL),(450,8,55,2,NULL),(451,9,55,2,NULL),(452,19,55,2,NULL),(453,21,55,2,NULL),(454,22,55,2,NULL),(455,23,55,2,NULL),(456,29,55,2,NULL),(457,30,55,2,NULL),(458,31,55,2,NULL),(459,32,55,2,NULL),(460,33,55,2,NULL),(461,34,55,2,NULL),(462,35,55,2,NULL),(463,36,55,2,NULL),(464,45,55,2,NULL),(465,46,55,2,NULL),(466,47,55,2,NULL),(467,48,55,2,NULL),(468,49,55,2,NULL),(469,50,55,2,NULL),(470,51,55,2,NULL),(471,52,55,2,NULL),(472,5,57,2,NULL),(473,7,57,2,NULL),(474,8,57,2,NULL),(475,9,57,2,NULL),(476,19,57,2,NULL),(477,21,57,2,NULL),(478,22,57,2,NULL),(479,23,57,2,NULL),(480,29,57,2,NULL),(481,30,57,2,NULL),(482,31,57,2,NULL),(483,32,57,2,NULL),(484,33,57,2,NULL),(485,34,57,2,NULL),(486,35,57,2,NULL),(487,36,57,2,NULL),(488,45,57,2,NULL),(489,46,57,2,NULL),(490,47,57,2,NULL),(491,48,57,2,NULL),(492,49,57,2,NULL),(493,50,57,2,NULL),(494,51,57,2,NULL),(495,52,57,2,NULL),(496,5,58,2,NULL),(497,7,58,2,NULL),(498,8,58,2,NULL),(499,9,58,2,NULL),(500,19,58,2,NULL),(501,21,58,2,NULL),(502,22,58,2,NULL),(503,23,58,2,NULL),(504,29,58,2,NULL),(505,30,58,2,NULL),(506,31,58,2,NULL),(507,32,58,2,NULL),(508,33,58,2,NULL),(509,34,58,2,NULL),(510,35,58,2,NULL),(511,36,58,2,NULL),(512,45,58,2,NULL),(513,46,58,2,NULL),(514,47,58,2,NULL),(515,48,58,2,NULL),(516,49,58,2,NULL),(517,50,58,2,NULL),(518,51,58,2,NULL),(519,52,58,2,NULL),(520,5,59,2,NULL),(521,7,59,2,NULL),(522,8,59,2,NULL),(523,9,59,2,NULL),(524,19,59,2,NULL),(525,21,59,2,NULL),(526,22,59,2,NULL),(527,23,59,2,NULL),(528,29,59,2,NULL),(529,30,59,2,NULL),(530,31,59,2,NULL),(531,32,59,2,NULL),(532,33,59,2,NULL),(533,34,59,2,NULL),(534,35,59,2,NULL),(535,36,59,2,NULL),(536,45,59,2,NULL),(537,46,59,2,NULL),(538,47,59,2,NULL),(539,48,59,2,NULL),(540,49,59,2,NULL),(541,50,59,2,NULL),(542,51,59,2,NULL),(543,52,59,2,NULL),(544,5,60,2,NULL),(545,7,60,2,NULL),(546,8,60,2,NULL),(547,9,60,2,NULL),(548,19,60,2,NULL),(549,21,60,2,NULL),(550,22,60,2,NULL),(551,23,60,2,NULL),(552,29,60,2,NULL),(553,30,60,2,NULL),(554,31,60,2,NULL),(555,32,60,2,NULL),(556,33,60,2,NULL),(557,34,60,2,NULL),(558,35,60,2,NULL),(559,36,60,2,NULL),(560,45,60,2,NULL),(561,46,60,2,NULL),(562,47,60,2,NULL),(563,48,60,2,NULL),(564,49,60,2,NULL),(565,50,60,2,NULL),(566,51,60,2,NULL),(567,52,60,2,NULL),(568,5,67,2,NULL),(569,7,67,2,NULL),(570,8,67,2,NULL),(571,9,67,2,NULL),(572,19,67,2,NULL),(573,21,67,2,NULL),(574,22,67,2,NULL),(575,23,67,2,NULL),(576,29,67,2,NULL),(577,30,67,2,NULL),(578,31,67,2,NULL),(579,32,67,2,NULL),(580,33,67,2,NULL),(581,34,67,2,NULL),(582,35,67,2,NULL),(583,36,67,2,NULL),(584,45,67,2,NULL),(585,46,67,2,NULL),(586,47,67,2,NULL),(587,48,67,2,NULL),(588,49,67,2,NULL),(589,50,67,2,NULL),(590,51,67,2,NULL),(591,52,67,2,NULL),(592,5,51,2,NULL),(593,7,51,2,NULL),(594,8,51,2,NULL),(595,9,51,2,NULL),(596,19,51,2,NULL),(597,21,51,2,NULL),(598,22,51,2,NULL),(599,23,51,2,NULL),(600,29,51,2,NULL),(601,30,51,2,NULL),(602,31,51,2,NULL),(603,32,51,2,NULL),(604,33,51,2,NULL),(605,34,51,2,NULL),(606,35,51,2,NULL),(607,36,51,2,NULL),(608,45,51,2,NULL),(609,46,51,2,NULL),(610,47,51,2,NULL),(611,48,51,2,NULL),(612,49,51,2,NULL),(613,50,51,2,NULL),(614,51,51,2,NULL),(615,52,51,2,NULL),(616,5,69,2,NULL),(617,7,69,2,NULL),(618,8,69,2,NULL),(619,9,69,2,NULL),(620,19,69,2,NULL),(621,21,69,2,NULL),(622,22,69,2,NULL),(623,23,69,2,NULL),(624,29,69,2,NULL),(625,30,69,2,NULL),(626,31,69,2,NULL),(627,32,69,2,NULL),(628,33,69,2,NULL),(629,34,69,2,NULL),(630,35,69,2,NULL),(631,36,69,2,NULL),(632,45,69,2,NULL),(633,46,69,2,NULL),(634,47,69,2,NULL),(635,48,69,2,NULL),(636,49,69,2,NULL),(637,50,69,2,NULL),(638,51,69,2,NULL),(639,52,69,2,NULL),(640,5,70,2,NULL),(641,7,70,2,NULL),(642,8,70,2,NULL),(643,9,70,2,NULL),(644,19,70,2,NULL),(645,21,70,2,NULL),(646,22,70,2,NULL),(647,23,70,2,NULL),(648,29,70,2,NULL),(649,30,70,2,NULL),(650,31,70,2,NULL),(651,32,70,2,NULL),(652,33,70,2,NULL),(653,34,70,2,NULL),(654,35,70,2,NULL),(655,36,70,2,NULL),(656,45,70,2,NULL),(657,46,70,2,NULL),(658,47,70,2,NULL),(659,48,70,2,NULL),(660,49,70,2,NULL),(661,50,70,2,NULL),(662,51,70,2,NULL),(663,52,70,2,NULL),(664,5,71,2,NULL),(665,7,71,2,NULL),(666,8,71,2,NULL),(667,9,71,2,NULL),(668,19,71,2,NULL),(669,21,71,2,NULL),(670,22,71,2,NULL),(671,23,71,2,NULL),(672,29,71,2,NULL),(673,30,71,2,NULL),(674,31,71,2,NULL),(675,32,71,2,NULL),(676,33,71,2,NULL),(677,34,71,2,NULL),(678,35,71,2,NULL),(679,36,71,2,NULL),(680,45,71,2,NULL),(681,46,71,2,NULL),(682,47,71,2,NULL),(683,48,71,2,NULL),(684,49,71,2,NULL),(685,50,71,2,NULL),(686,51,71,2,NULL),(687,52,71,2,NULL),(688,5,61,2,NULL),(689,7,61,2,NULL),(690,8,61,2,NULL),(691,9,61,2,NULL),(692,19,61,2,NULL),(693,21,61,2,NULL),(694,22,61,2,NULL),(695,23,61,2,NULL),(696,29,61,2,NULL),(697,30,61,2,NULL),(698,31,61,2,NULL),(699,32,61,2,NULL),(700,33,61,2,NULL),(701,34,61,2,NULL),(702,35,61,2,NULL),(703,36,61,2,NULL),(704,45,61,2,NULL),(705,46,61,2,NULL),(706,47,61,2,NULL),(707,48,61,2,NULL),(708,49,61,2,NULL),(709,50,61,2,NULL),(710,51,61,2,NULL),(711,52,61,2,NULL),(712,5,65,2,NULL),(713,7,65,2,NULL),(714,8,65,2,NULL),(715,9,65,2,NULL),(716,19,65,2,NULL),(717,21,65,2,NULL),(718,22,65,2,NULL),(719,23,65,2,NULL),(720,29,65,2,NULL),(721,30,65,2,NULL),(722,31,65,2,NULL),(723,32,65,2,NULL),(724,33,65,2,NULL),(725,34,65,2,NULL),(726,35,65,2,NULL),(727,36,65,2,NULL),(728,45,65,2,NULL),(729,46,65,2,NULL),(730,47,65,2,NULL),(731,48,65,2,NULL),(732,49,65,2,NULL),(733,50,65,2,NULL),(734,51,65,2,NULL),(735,52,65,2,NULL),(736,12,10,2,NULL),(737,14,10,2,NULL),(738,12,14,2,NULL),(739,14,14,2,NULL),(740,12,16,2,NULL),(741,14,16,2,NULL),(742,12,23,2,NULL),(743,14,23,2,NULL),(744,12,15,2,NULL),(745,14,15,2,NULL),(746,12,17,2,NULL),(747,14,17,2,NULL),(748,12,21,2,NULL),(749,14,21,2,NULL),(750,12,25,2,NULL),(751,14,25,2,NULL),(752,12,28,2,NULL),(753,14,28,2,NULL),(754,12,30,2,NULL),(755,14,30,2,NULL),(756,12,37,2,NULL),(757,14,37,2,NULL),(758,12,31,2,NULL),(759,14,31,2,NULL),(760,12,54,2,NULL),(761,14,54,2,NULL),(762,12,55,2,NULL),(763,14,55,2,NULL),(764,12,57,2,NULL),(765,14,57,2,NULL),(766,12,58,2,NULL),(767,14,58,2,NULL),(768,12,59,2,NULL),(769,14,59,2,NULL),(770,12,60,2,NULL),(771,14,60,2,NULL),(772,12,67,2,NULL),(773,14,67,2,NULL),(774,12,51,2,NULL),(775,14,51,2,NULL),(776,12,69,2,NULL),(777,14,69,2,NULL),(778,12,70,2,NULL),(779,14,70,2,NULL),(780,12,71,2,NULL),(781,14,71,2,NULL),(782,12,61,2,NULL),(783,14,61,2,NULL),(784,12,65,2,NULL),(785,14,65,2,NULL),(786,1,5,2,NULL),(787,1,13,2,NULL),(788,1,29,2,NULL),(789,1,49,2,NULL),(790,1,56,2,NULL),(791,1,63,2,NULL),(792,2,5,2,NULL),(793,2,13,2,NULL),(794,2,29,2,NULL),(795,2,49,2,NULL),(796,2,56,2,NULL),(797,2,63,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (22,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(18,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.INTERNET'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(26,'android.permission.SET_WALLPAPER'),(15,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_SETTINGS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(16,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(13,'com.fede.launcher.permission.READ_SETTINGS'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(17,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(20,'com.motorola.launcher.permission.READ_SETTINGS'),(14,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pname:com.gamevisa8.drunkpro0',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(12,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(16,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'mailto:ogregames@hotmail.com',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.christmasgame.deal',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,7,8),(2,9,9),(3,15,11),(4,19,15),(5,19,16),(6,22,19),(7,23,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,20),(21,2,1),(22,2,2),(23,2,3),(24,2,4),(25,2,6),(26,2,8),(27,2,9),(28,2,10),(29,2,11),(30,2,12),(31,2,13),(32,3,1),(33,2,14),(34,3,2),(35,2,15),(36,3,3),(37,2,17),(38,3,4),(39,2,16),(40,3,5),(41,2,19),(42,3,6),(43,2,18),(44,3,7),(45,2,21),(46,3,8),(47,2,20),(48,3,9),(49,2,23),(50,3,10),(51,2,22),(52,3,11),(53,2,25),(54,3,12),(55,2,24),(56,3,13),(57,3,14),(58,3,15),(59,3,17),(60,3,16),(61,3,19),(62,3,18),(63,3,21),(64,3,20),(65,3,22),(66,3,24),(67,3,26),(68,4,1),(69,4,2),(70,4,3),(71,4,4),(72,4,5),(73,4,6),(74,4,7),(75,4,8),(76,4,9),(77,4,10),(78,4,11),(79,5,1),(80,4,13),(81,5,2),(82,4,14),(83,5,3),(84,4,15),(85,5,4),(86,4,17),(87,5,6),(88,4,16),(89,5,7),(90,4,18),(91,5,8),(92,4,21),(93,5,10),(94,4,20),(95,5,11),(96,4,23),(97,5,13),(98,4,22),(99,5,14),(100,4,25),(101,5,17),(102,4,24),(103,5,16),(104,5,18),(105,5,20),(106,5,25),(107,6,1),(108,6,2),(109,6,3),(110,6,4),(111,6,5),(112,6,6),(113,6,7),(114,6,8),(115,6,9),(116,6,10),(117,6,11),(118,6,12),(119,6,13),(120,6,14),(121,6,17),(122,6,16),(123,6,19),(124,6,18),(125,6,20),(126,6,22),(127,6,25),(128,6,24),(129,6,27);
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

-- Dump completed on 2015-10-12  3:31:19
