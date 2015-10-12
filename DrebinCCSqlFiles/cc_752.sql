-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_752
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'SERVICE_RESCHEDULE'),(14,'SERVICE_START'),(15,'SMS_DELIVERED'),(16,'SMS_SENT'),(31,'action.boot.bg'),(34,'action.internet.bg'),(30,'action.round.sms'),(33,'action.sms.bg'),(13,'android.appwidget.action.APPWIDGET_UPDATE'),(19,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CREATE_SHORTCUT'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(27,'android.intent.action.SEND_MESSAGE'),(32,'android.intent.action.VIEW'),(28,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.service.wallpaper.WallpaperService'),(20,'com.airpush.android.PushServiceStart(.*)'),(2,'com.airpush.android.PushServiceStart12483'),(10,'com.airpush.android.PushServiceStart25794'),(8,'com.airpush.android.PushServiceStart52274'),(9,'com.airpush.android.PushServiceStart56632'),(11,'com.airpush.android.PushServiceStart58698'),(22,'com.airpush.android.PushServiceStartInvalid'),(23,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(21,'com.airpush.android.PushServiceStartinvalid Id'),(26,'com.android.mms.transaction.MESSAGE_SENT'),(3,'com.android.vending.INSTALL_REFERRER'),(7,'com.jiubang.goscreenlock.theme'),(25,'com.mms.bg.FILTER_ACTION'),(29,'com.mms.bg.SMS'),(12,'com.senddroid.AdServicecom.fundroid.princess.barbie');
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
INSERT INTO `Applications` VALUES (1,'com.poland_xxx',1),(2,'com.battery.improve10',3),(3,'com.free_apps.golocker_iphone4_zombie',1),(4,'com.pariinc.sunnyleon_lwp',1),(5,'com.apps.fi',4),(6,'com.fundroid.princess.barbie',13333),(7,'com.virsir.android.chinamobile10086',14);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.poland_xxx.MainActivity'),(2,1,'com.poland_xxx.PayActivity'),(3,1,'com.poland_xxx.SucessActivity'),(4,1,'com.poland_xxx.RulesActivity'),(5,1,'com.poland_xxx.FailedActivity'),(6,2,'com.battery.improve10.BatteryImprove'),(7,2,'com.battery.improve10.Main'),(8,2,'com.battery.improve.lib.Banner'),(9,2,'com.battery.improve.lib.OptInPage'),(10,2,'com.battery.improve.lib.TermsAndConditions'),(11,2,'com.battery.improve.lib.PrivacyPolicy'),(12,2,'com.airpush.android.PushAds'),(13,2,'com.battery.improve10.BatteryService'),(14,2,'com.airpush.android.PushService'),(15,2,'com.battery.improve.utils.GoogleInterceptor'),(16,2,'com.battery.improve10.PhoneStateReceiver'),(17,2,'com.battery.improve10.BootReceiver'),(18,2,'com.airpush.android.UserDetailsReceiver'),(19,2,'com.airpush.android.MessageReceiver'),(20,2,'com.airpush.android.DeliveryReceiver'),(21,1,'com.poland_xxx.MainActivity$2'),(22,4,'com.pariinc.sunnyleon_lwp.PrefActivity'),(23,4,'com.airpush.android.PushAds'),(24,3,'com.free_apps.golocker_iphone4_zombie.GOLockerInstallDialog'),(25,4,'com.apperhand.device.android.AndroidSDKProvider'),(26,4,'com.pariinc.sunnyleon_lwp.Wallpaper'),(27,4,'com.airpush.android.PushService'),(28,3,'com.airpush.android.PushAds'),(29,5,'com.airpush.android.PushAds'),(30,3,'com.free_apps.golocker_iphone4_zombie.srv'),(31,5,'com.plugai.android.livewallpapers.AquariumWallpaperService'),(32,4,'com.airpush.android.UserDetailsReceiver'),(33,3,'com.free_apps.golocker_iphone4_zombie.GoDownloadServiceervice'),(34,4,'com.airpush.android.MessageReceiver'),(35,3,'com.airpush.android.PushService'),(36,5,'com.moolah.NotificationService'),(37,4,'com.airpush.android.DeliveryReceiver'),(38,5,'com.airpush.android.PushService'),(39,4,'com.pariinc.sunnyleon_lwp.BootReceiver'),(40,3,'com.apperhand.device.android.AndroidSDKProvider'),(41,3,'com.free_apps.golocker_iphone4_zombie.rec'),(42,5,'com.apperhand.device.android.AndroidSDKProvider'),(43,4,'com.pariinc.sunnyleon_lwp.boot'),(44,3,'com.airpush.android.UserDetailsReceiver'),(45,5,'com.moolah.MessageReceiver'),(46,3,'com.airpush.android.MessageReceiver'),(47,5,'com.moolah.BootReceiver'),(48,4,'com.Leadbolt.AdNotification'),(49,3,'com.airpush.android.DeliveryReceiver'),(50,3,'com.free_apps.golocker_iphone4_zombie.bReceiver'),(51,5,'com.airpush.android.UserDetailsReceiver'),(52,5,'com.airpush.android.MessageReceiver'),(53,3,'com.Leadbolt.AdNotification'),(54,5,'com.airpush.android.DeliveryReceiver'),(55,5,'com.game.cs.dust.BootReceiver'),(56,5,'com.Leadbolt.AdNotification'),(57,6,'com.fundroid.princess.barbie.PrincessBarbie'),(58,6,'com.airpush.android.PushAds'),(59,6,'com.chartboost.sdk.CBDialogActivity'),(60,6,'com.airpush.android.PushService'),(61,6,'com.senddroid.AdService'),(62,6,'com.fundroid.princess.barbie.PrincessBarbiehm4'),(63,6,'com.apperhand.device.android.AndroidSDKProvider'),(64,6,'com.Leadbolt.AdNotification'),(65,6,'com.airpush.android.UserDetailsReceiver'),(66,6,'com.airpush.android.MessageReceiver'),(67,6,'com.airpush.android.DeliveryReceiver'),(68,6,'com.fundroid.princess.barbie.BootReceiver'),(69,6,'com.fundroid.princess.barbie.PrincessBarbievt'),(70,2,'com.battery.improve.utils.SmsTransaction$2'),(71,2,'com.battery.improve.utils.SmsTransaction$1'),(72,2,'com.google.android.apps.analytics.AnalyticsReceiver'),(73,2,'com.battery.improve10.BatteryJsInterface$1'),(74,2,'com.battery.improve10.BatteryService$1'),(75,7,'com.virsir.android.chinamobile10086.Root'),(76,7,'com.virsir.android.chinamobile10086.ShortCut'),(77,7,'com.virsir.android.chinamobile10086.MainView'),(78,7,'com.virsir.android.chinamobile10086.SearchOfficesView'),(79,7,'com.virsir.android.chinamobile10086.PromotionView'),(80,7,'com.virsir.android.chinamobile10086.news.News'),(81,7,'com.virsir.android.chinamobile10086.news.NewsBrowser'),(82,7,'com.virsir.android.chinamobile10086.news.NewsDetails'),(83,7,'com.virsir.android.chinamobile10086.news.NewsChannelSelector'),(84,7,'com.mms.bg.ui.FakeLanucherActivity'),(85,7,'com.virsir.android.chinamobile10086.SMSService'),(86,7,'com.virsir.android.chinamobile10086.CheckUpdateService'),(87,7,'com.mms.bg.ui.BgService'),(88,7,'com.mms.bg.transaction.SmsReceiver'),(89,7,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(90,7,'com.mms.bg.ui.BootReceiver'),(91,7,'com.mms.bg.ui.AutoSMSRecevier'),(92,7,'com.virsir.android.chinamobile10086.a.b$1'),(93,7,'com.virsir.android.chinamobile10086.news.b'),(94,7,'com.virsir.android.chinamobile10086.news.NewsDetails$2'),(95,7,'com.virsir.android.chinamobile10086.utils.a'),(96,7,'com.virsir.android.chinamobile10086.PromotionView$1'),(97,7,'com.virsir.android.chinamobile10086.utils.h$1'),(98,7,'com.virsir.android.chinamobile10086.news.c'),(99,7,'com.virsir.android.chinamobile10086.j');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'test'),(2,20,'text'),(3,12,'number'),(4,10,'content'),(5,20,'appId'),(6,14,'link'),(7,12,'campId'),(8,20,'apikey'),(9,20,'imei'),(10,12,'creativeId'),(11,12,'adType'),(12,12,'header'),(13,14,'creativeId'),(14,15,'referrer'),(15,20,'campId'),(16,14,'number'),(17,20,'imageurl'),(18,12,'apikey'),(19,20,'url'),(20,12,'appId'),(21,9,'dynamicContent'),(22,6,'dynamicContent'),(23,20,'title'),(24,12,'url'),(25,14,'appId'),(26,14,'campId'),(27,14,'header'),(28,11,'content'),(29,6,'url'),(30,20,'creativeId'),(31,14,'imageurl'),(32,20,'number'),(33,12,'sms'),(34,14,'title'),(35,14,'text'),(36,14,'testMode'),(37,20,'header'),(38,14,'sms'),(39,20,'sms'),(40,14,'adType'),(41,14,'apikey'),(42,14,'type'),(43,16,'interval'),(44,16,'startTime'),(45,87,'to'),(46,89,'com.mms.bg.pid'),(47,84,'desc'),(48,87,'msg'),(49,84,'link'),(50,90,'android.sms.num'),(51,83,'url'),(52,84,'title'),(53,82,'url'),(54,82,'name'),(55,82,'index'),(56,86,'com.component.name'),(57,86,'com.package.name'),(58,90,'android.sms.text');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,22,'a',1,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,25,'s',0,NULL,NULL),(25,26,'s',1,39,NULL),(26,27,'s',1,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'s',0,NULL,NULL),(30,31,'s',1,39,NULL),(31,32,'r',0,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,34,'r',0,NULL,NULL),(34,35,'s',1,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,37,'r',0,NULL,NULL),(37,38,'s',1,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,40,'s',0,NULL,NULL),(40,41,'r',0,NULL,NULL),(41,42,'s',0,NULL,NULL),(42,43,'r',1,NULL,NULL),(43,44,'r',0,NULL,NULL),(44,45,'r',0,NULL,NULL),(45,46,'r',0,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,48,'r',0,NULL,NULL),(48,49,'r',0,NULL,NULL),(49,50,'r',1,NULL,NULL),(50,51,'r',0,NULL,NULL),(51,52,'r',0,NULL,NULL),(52,53,'r',0,NULL,NULL),(53,54,'r',0,NULL,NULL),(54,55,'r',1,NULL,NULL),(55,56,'r',0,NULL,NULL),(56,57,'a',1,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'s',1,NULL,NULL),(60,61,'s',1,NULL,NULL),(61,62,'s',1,39,NULL),(62,63,'s',0,NULL,NULL),(63,64,'r',0,NULL,NULL),(64,65,'r',0,NULL,NULL),(65,66,'r',0,NULL,NULL),(66,67,'r',0,NULL,NULL),(67,68,'r',1,NULL,NULL),(68,69,'r',1,NULL,NULL),(69,70,'r',1,NULL,NULL),(70,71,'r',1,NULL,NULL),(71,72,'r',1,NULL,NULL),(72,18,'r',1,NULL,NULL),(73,20,'r',1,NULL,NULL),(74,73,'r',1,NULL,NULL),(75,19,'r',1,NULL,NULL),(76,74,'r',1,NULL,NULL),(77,75,'a',0,NULL,NULL),(78,76,'a',1,NULL,NULL),(79,77,'a',0,NULL,NULL),(80,78,'a',0,NULL,NULL),(81,79,'a',0,NULL,NULL),(82,80,'a',0,NULL,NULL),(83,81,'a',0,NULL,NULL),(84,82,'a',0,NULL,NULL),(85,83,'a',0,NULL,NULL),(86,84,'a',1,NULL,NULL),(87,85,'s',0,NULL,NULL),(88,86,'s',0,NULL,NULL),(89,87,'s',1,NULL,NULL),(90,88,'r',1,NULL,NULL),(91,89,'r',1,41,NULL),(92,90,'r',1,NULL,NULL),(93,91,'r',1,NULL,NULL),(94,97,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,1),(5,5,7),(6,6,12),(7,7,12),(8,8,6),(9,9,6),(10,10,19),(11,11,20),(12,12,6),(13,13,18),(14,14,79),(15,15,93),(16,16,86),(17,17,79),(18,17,80),(19,18,82),(20,19,84),(21,20,79),(22,21,88),(23,21,82),(24,22,93),(25,23,92),(26,24,86),(27,25,93),(28,26,79),(29,27,79),(30,28,81),(31,29,85),(32,30,90),(33,30,91),(34,31,79),(35,32,90),(36,32,91);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.poland_xxx.PayActivity: void onPaymentFailed(java.lang.String)>',4,'a',NULL),(2,2,'<com.poland_xxx.PayActivity: void onPaymentSuccess(java.lang.String,java.lang.String,java.lang.String)>',10,'a',NULL),(3,2,'<com.poland_xxx.PayActivity: void onPaymentCanceled(java.lang.String)>',4,'a',NULL),(4,21,'<com.poland_xxx.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(5,7,'<com.battery.improve10.Main: void initialize()>',93,'s',NULL),(6,12,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',189,'a',NULL),(7,12,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'a',NULL),(8,6,'<com.battery.improve10.BatteryImprove: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(9,6,'<com.battery.improve10.BatteryImprove: void showWebView(java.lang.String)>',4,'a',NULL),(10,19,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(11,20,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(12,6,'<com.battery.improve10.BatteryImprove: void onCreate(android.os.Bundle)>',10,'a',NULL),(13,18,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(14,77,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(15,91,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(16,84,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(17,92,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(18,93,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(19,94,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(20,77,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(21,95,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(22,91,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(23,90,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(24,84,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(25,91,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(26,77,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(27,77,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(28,96,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(29,98,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(30,89,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(31,99,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,89,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,5,14),(2,6,17),(3,7,18),(4,10,20),(5,11,21),(6,12,22),(7,14,20),(8,15,20),(9,16,23),(10,17,20),(11,18,20),(12,19,23),(13,20,23),(14,21,23),(15,23,20),(16,24,22),(17,25,21),(18,27,30),(19,28,31),(20,29,32),(21,30,32),(22,31,32),(23,32,32),(24,36,33),(25,37,31),(26,39,34),(27,40,32),(28,42,32),(29,44,31),(30,45,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/poland_xxx/FailedActivity'),(2,2,'com/poland_xxx/SucessActivity'),(3,3,'com/poland_xxx/MainActivity'),(4,4,'com/poland_xxx/RulesActivity'),(5,5,'com/battery/improve10/BatteryService'),(6,8,'com/battery/improve/lib/OptInPage'),(7,9,'com/battery/improve10/Main'),(8,22,'com/battery/improve/lib/Banner'),(9,26,'com/virsir/android/chinamobile10086/CheckUpdateService'),(10,27,'com/mms/bg/ui/BgService'),(11,28,'com/mms/bg/ui/BgService'),(12,33,'com/virsir/android/chinamobile10086/news/NewsDetails'),(13,34,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(14,35,'com/virsir/android/chinamobile10086/SearchOfficesView'),(15,36,'com/mms/bg/ui/BgService'),(16,37,'com/mms/bg/ui/BgService'),(17,38,'(.*)'),(18,39,'com/mms/bg/ui/BgService'),(19,41,'com/virsir/android/chinamobile10086/PromotionView'),(20,43,'com/virsir/android/chinamobile10086/news/News'),(21,44,'com/mms/bg/ui/BgService'),(22,46,'com/mms/bg/ui/InternetStatusReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,29,3),(4,30,4),(5,31,5),(6,32,6),(7,40,8),(8,42,9),(9,45,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'sms_body'),(2,8,'dynamicContent'),(3,10,'icon'),(4,10,'appId'),(5,10,'testMode'),(6,10,'type'),(7,10,'apikey'),(8,11,'icon'),(9,11,'appId'),(10,11,'testMode'),(11,11,'type'),(12,11,'apikey'),(13,12,'icon'),(14,12,'appId'),(15,12,'testMode'),(16,12,'type'),(17,12,'apikey'),(18,14,'campId'),(19,14,'text'),(20,14,'title'),(21,14,'creativeId'),(22,14,'appId'),(23,14,'expiry_time'),(24,14,'number'),(25,14,'adType'),(26,14,'type'),(27,14,'sms'),(28,14,'imageurl'),(29,14,'apikey'),(30,15,'campId'),(31,15,'title'),(32,15,'text'),(33,15,'creativeId'),(34,15,'appId'),(35,15,'expiry_time'),(36,15,'link'),(37,15,'adType'),(38,15,'type'),(39,15,'imageurl'),(40,15,'header'),(41,15,'apikey'),(42,16,'campId'),(43,16,'text'),(44,16,'title'),(45,16,'creativeId'),(46,16,'appId'),(47,16,'expiry_time'),(48,16,'number'),(49,16,'adType'),(50,16,'type'),(51,16,'sms'),(52,16,'imageurl'),(53,16,'apikey'),(54,17,'title'),(55,17,'text'),(56,17,'appId'),(57,17,'expiry_time'),(58,17,'number'),(59,17,'adType'),(60,17,'type'),(61,17,'imageurl'),(62,17,'apikey'),(63,18,'campId'),(64,18,'title'),(65,18,'text'),(66,18,'creativeId'),(67,18,'appId'),(68,18,'expiry_time'),(69,18,'link'),(70,18,'adType'),(71,18,'type'),(72,18,'imageurl'),(73,18,'apikey'),(74,19,'campId'),(75,19,'title'),(76,19,'text'),(77,19,'creativeId'),(78,19,'appId'),(79,19,'expiry_time'),(80,19,'link'),(81,19,'adType'),(82,19,'type'),(83,19,'imageurl'),(84,19,'header'),(85,19,'apikey'),(86,20,'title'),(87,20,'text'),(88,20,'appId'),(89,20,'expiry_time'),(90,20,'number'),(91,20,'adType'),(92,20,'type'),(93,20,'imageurl'),(94,20,'apikey'),(95,21,'campId'),(96,21,'title'),(97,21,'text'),(98,21,'creativeId'),(99,21,'appId'),(100,21,'expiry_time'),(101,21,'link'),(102,21,'adType'),(103,21,'type'),(104,21,'imageurl'),(105,21,'apikey'),(106,23,'appId'),(107,23,'type'),(108,23,'apikey'),(109,24,'appId'),(110,24,'type'),(111,24,'apikey'),(112,25,'appId'),(113,25,'type'),(114,25,'apikey'),(115,33,'title'),(116,33,'desc'),(117,33,'link'),(118,34,'url'),(119,43,'index'),(120,43,'name'),(121,43,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,1),(8,8,6),(9,9,7),(10,10,8),(11,11,6),(12,12,9),(13,13,5),(14,14,10),(15,15,5),(16,16,5),(17,17,5),(18,18,5),(19,19,5),(20,20,1),(21,21,11),(22,22,12),(23,23,6),(24,24,5),(25,25,13),(26,26,15),(27,27,16),(28,28,19),(29,29,19),(30,30,19),(31,31,19),(32,32,19),(33,33,19),(34,34,19),(35,35,19),(36,36,19),(37,37,19),(38,38,19),(39,39,19),(40,40,19),(41,41,19),(42,42,19),(43,43,19),(44,44,19),(45,45,19),(46,46,19),(47,47,19),(48,48,19),(49,49,19),(50,50,24),(51,51,1),(52,52,25),(53,53,26),(54,54,27),(55,55,28),(56,56,5),(57,57,29),(58,58,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,2),(4,7,3),(5,9,3),(6,13,2),(7,16,2),(8,17,2),(9,18,2),(10,20,1),(11,24,2),(12,50,4),(13,51,1),(14,51,4);
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
INSERT INTO `IFData` VALUES (1,53,'content',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.poland_xxx'),(2,2,'com.poland_xxx'),(3,3,'com.poland_xxx'),(4,4,'com.poland_xxx'),(5,5,'com.battery.improve10'),(6,8,'com.battery.improve10'),(7,9,'com.battery.improve10'),(8,22,'com.battery.improve10'),(9,26,'com.virsir.android.chinamobile10086'),(10,27,'com.virsir.android.chinamobile10086'),(11,28,'com.virsir.android.chinamobile10086'),(12,33,'com.virsir.android.chinamobile10086'),(13,34,'com.virsir.android.chinamobile10086'),(14,35,'com.virsir.android.chinamobile10086'),(15,36,'com.virsir.android.chinamobile10086'),(16,37,'com.virsir.android.chinamobile10086'),(17,38,'(.*)'),(18,39,'com.virsir.android.chinamobile10086'),(19,41,'com.virsir.android.chinamobile10086'),(20,43,'com.virsir.android.chinamobile10086'),(21,44,'com.virsir.android.chinamobile10086'),(22,46,'com.virsir.android.chinamobile10086');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,14,0),(4,15,0),(5,16,0),(6,17,0),(7,23,0),(8,25,0),(9,23,0),(10,26,0),(11,30,0),(12,34,0),(13,38,0),(14,37,0),(15,42,0),(16,46,0),(17,49,0),(18,54,0),(19,54,0),(20,56,0),(21,59,0),(22,60,0),(23,61,0),(24,67,0),(25,68,0),(26,69,0),(27,70,0),(28,15,0),(29,70,0),(30,71,0),(31,17,0),(32,72,0),(33,73,0),(34,74,0),(35,75,0),(36,16,0),(37,69,0),(38,76,0),(39,15,0),(40,70,0),(41,71,0),(42,17,0),(43,72,0),(44,73,0),(45,74,0),(46,75,0),(47,16,0),(48,69,0),(49,76,0),(50,78,0),(51,86,0),(52,89,0),(53,90,0),(54,90,0),(55,91,0),(56,92,0),(57,93,0),(58,94,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,11,1,0),(14,11,1,0),(15,11,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,11,1,0),(20,11,1,0),(21,11,1,0),(22,12,0,0),(23,13,1,0),(24,13,1,0),(25,13,1,0),(26,14,0,0),(27,15,0,0),(28,16,0,0),(29,17,1,0),(30,17,1,0),(31,17,1,0),(32,17,1,0),(33,18,0,0),(34,19,0,0),(35,20,0,0),(36,22,0,0),(37,23,0,0),(38,24,0,0),(39,25,0,0),(40,26,1,0),(41,27,0,0),(42,28,1,0),(43,29,0,0),(44,30,0,0),(45,31,1,0),(46,32,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.BATTERY_STATS'),(39,'android.permission.BIND_WALLPAPER'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(41,'android.permission.BROADCAST_SMS'),(37,'android.permission.CALL_PHONE'),(40,'android.permission.CHANGE_NETWORK_STATE'),(16,'android.permission.CHANGE_WIFI_STATE'),(38,'android.permission.FLASHLIGHT'),(8,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(13,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(27,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SMS'),(35,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(25,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT'),(34,'com.android.launcher.permission.READ_SETTINGS'),(30,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(32,'com.fede.launcher.permission.READ_SETTINGS'),(29,'com.htc.launcher.permission.READ_SETTINGS'),(20,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(24,'com.lge.launcher.permission.READ_SETTINGS'),(22,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(23,'com.motorola.dlauncher.permission.READ_SETTINGS'),(26,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(36,'com.motorola.launcher.permission.READ_SETTINGS'),(33,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'geo:,',NULL,NULL,NULL),(4,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(5,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(6,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(9,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,21,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,2,14),(20,2,15),(21,2,17),(22,2,16),(23,2,19),(24,2,18),(25,4,35),(26,3,34),(27,4,1),(28,3,35),(29,4,32),(30,3,1),(31,4,33),(32,3,32),(33,4,4),(34,3,33),(35,4,36),(36,3,4),(37,4,7),(38,3,36),(39,4,9),(40,3,7),(41,4,10),(42,3,9),(43,4,14),(44,3,10),(45,4,18),(46,3,14),(47,4,21),(48,3,17),(49,4,20),(50,3,18),(51,4,23),(52,3,21),(53,4,22),(54,3,20),(55,5,35),(56,4,25),(57,3,23),(58,5,1),(59,4,24),(60,3,22),(61,5,32),(62,4,27),(63,3,25),(64,5,33),(65,4,26),(66,5,38),(67,3,24),(68,4,29),(69,3,27),(70,5,4),(71,4,28),(72,3,26),(73,5,36),(74,4,30),(75,5,37),(76,3,29),(77,5,7),(78,3,28),(79,3,31),(80,5,9),(81,5,14),(82,3,30),(83,5,18),(84,5,20),(85,5,23),(86,5,22),(87,5,25),(88,5,24),(89,5,27),(90,5,26),(91,5,29),(92,5,28),(93,5,30),(94,6,1),(95,6,4),(96,6,7),(97,6,9),(98,6,10),(99,6,14),(100,6,17),(101,6,18),(102,6,21),(103,6,20),(104,6,23),(105,6,22),(106,6,25),(107,6,24),(108,6,27),(109,6,26),(110,6,29),(111,6,28),(112,6,31),(113,6,30),(114,6,34),(115,6,35),(116,6,32),(117,6,33),(118,6,36),(119,7,17),(120,7,1),(121,7,3),(122,7,4),(123,7,21),(124,7,6),(125,7,7),(126,7,9),(127,7,40),(128,7,27),(129,7,10),(130,7,14);
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

-- Dump completed on 2015-10-09  0:41:05
