-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_213
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
INSERT INTO `ActionStrings` VALUES (32,'(.*).SEND_SMS'),(21,'android.intent.action.BATTERY_CHANGED'),(24,'android.intent.action.BATTERY_LOW'),(20,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(27,'android.intent.action.DELETE'),(28,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SCREEN_ON'),(34,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(30,'android.settings.APPLICATION_DETAILS_SETTINGS'),(29,'android.settings.LOCATION_SOURCE_SETTINGS'),(12,'com.android.vending.INSTALL_REFERRER'),(11,'com.extend.battery.CHECK'),(15,'com.extend.battery.DELIVERED_SMS'),(16,'com.extend.battery.SEND_SMS'),(14,'com.extend.battery.SENT_SMS'),(13,'com.extend.battery.UPDATE'),(6,'com.extend.battery.intent.http.SHOW'),(19,'com.extend.battery.notification.action.ALARM'),(17,'com.extend.battery.notification.action.CANCEL'),(18,'com.extend.battery.notification.action.CLICKED'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(25,'com.notifad.android.PushServiceStart(.*)'),(10,'com.notifad.android.PushServiceStart1'),(33,'com.notifad.android.PushServiceStartInvalid'),(26,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(31,'com.notifad.android.PushServiceStartinvalid Id'),(9,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',105),(3,'com.androiddoctor.battery',5),(4,'com.extend.battery',103),(5,'com.extend.battery',89);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BoosterActivity'),(10,1,'com.extend.battery.BatteryActivity'),(11,3,'com.androiddoctor.battery.Splash'),(12,1,'com.extend.battery.RatingActivity'),(13,1,'com.extend.battery.RatingActivity'),(14,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(15,3,'com.androiddoctor.battery.TabHandler'),(16,1,'com.itframework.installer.util.NonMarketDialogActivity'),(17,2,'com.extend.battery.Splash'),(18,4,'com.extend.battery.Splash'),(19,3,'com.androiddoctor.battery.UpgradeActivity'),(20,1,'com.extend.battery.BatteryService'),(21,1,'com.itframework.installer.util.InstallWorker'),(22,3,'com.androiddoctor.battery.TaskKillerActivity'),(23,1,'com.zanalytics.sms.SmsReceiverService'),(24,1,'com.itframework.installer.updater.UpdateReceiver'),(25,2,'com.extend.battery.TabHandler'),(26,3,'com.androiddoctor.battery.UninstallerActivity'),(27,4,'com.extend.battery.TabHandler'),(28,2,'com.extend.battery.TaskKillerActivity'),(29,3,'com.androiddoctor.battery.SecurityAuditActivity'),(30,4,'com.extend.battery.TaskKillerActivity'),(31,2,'com.extend.battery.UninstallerActivity'),(32,3,'com.androiddoctor.battery.InstallerActivity'),(33,4,'com.extend.battery.UninstallerActivity'),(34,1,'com.extend.battery.NotificationReceiver'),(35,3,'com.androiddoctor.battery.FeaturesActivity'),(36,2,'com.extend.battery.SecurityAuditActivity'),(37,4,'com.extend.battery.SecurityAuditActivity'),(38,3,'com.androiddoctor.battery.BoosterActivity'),(39,2,'com.extend.battery.InstallerActivity'),(40,1,'com.extend.battery.BootReceiver'),(41,4,'com.extend.battery.InstallerActivity'),(42,3,'com.androiddoctor.battery.BatteryActivity'),(43,2,'com.extend.battery.FeaturesActivity'),(44,4,'com.extend.battery.FeaturesActivity'),(45,1,'com.zanalytics.sms.SmsReceiver'),(46,3,'com.notifad.android.PushAds'),(47,2,'com.extend.battery.BoosterActivity'),(48,4,'com.extend.battery.BoosterActivity'),(49,3,'com.mobsqueeze.SqueezeActivity'),(50,2,'com.extend.battery.BatteryActivity'),(51,4,'com.extend.battery.BatteryActivity'),(52,3,'com.mobsqueeze.SqueezeDialog'),(53,2,'com.extend.battery.RatingActivity'),(54,4,'com.extend.battery.RatingActivity'),(55,2,'com.extend.battery.UninstallingDialog'),(56,3,'com.mobsqueeze.webimageview.BannerWall'),(57,4,'com.extend.battery.UninstallingDialog'),(58,5,'com.extend.battery.Splash'),(59,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(60,3,'com.androiddoctor.battery.BatteryService'),(61,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(62,3,'com.notifad.android.PushService'),(63,5,'com.extend.battery.TabHandler'),(64,2,'com.itframework.installer.util.NonMarketDialogActivity'),(65,4,'com.itframework.installer.util.NonMarketDialogActivity'),(66,5,'com.extend.battery.TaskKillerActivity'),(67,3,'com.mobsqueeze.SubmitService'),(68,2,'com.extend.battery.BatteryService'),(69,4,'com.extend.battery.BatteryService'),(70,5,'com.extend.battery.UninstallerActivity'),(71,2,'com.itframework.installer.util.InstallWorker'),(72,3,'com.notifad.android.UserDetailsReceiver'),(73,4,'com.itframework.installer.util.InstallWorker'),(74,5,'com.extend.battery.SecurityAuditActivity'),(75,2,'com.itframework.network.NetworkOperationService'),(76,3,'com.notifad.android.MessageReceiver'),(77,4,'com.zanalytics.sms.SmsReceiverService'),(78,5,'com.extend.battery.InstallerActivity'),(79,3,'com.notifad.android.DeliveryReceiver'),(80,2,'com.zanalytics.sms.SmsReceiverService'),(81,4,'com.zanalytics.sms.SmsSendService'),(82,5,'com.extend.battery.FeaturesActivity'),(83,2,'com.zanalytics.sms.SmsSendService'),(84,3,'com.androiddoctor.battery.BootReceiver'),(85,4,'com.itframework.base.util.UploadAnalyticsService'),(86,5,'com.extend.battery.BoosterActivity'),(87,2,'com.itframework.base.util.UploadAnalyticsService'),(88,4,'com.itframework.notification.NotificationService'),(89,5,'com.extend.battery.BatteryActivity'),(90,2,'com.itframework.notification.NotificationService'),(91,4,'com.itframework.installer.updater.UpdateReceiver'),(92,5,'com.extend.battery.RatingActivity'),(93,3,'com.mobsqueeze.BaseStarReceiver'),(94,2,'com.itframework.installer.updater.UpdateReceiver'),(95,5,'com.extend.battery.BatteryService'),(96,5,'com.zanalytics.sms.SmsReceiverService'),(97,5,'com.extend.battery.NotificationReceiver'),(98,2,'com.extend.battery.NotificationReceiver'),(99,4,'com.extend.battery.NotificationReceiver'),(100,5,'com.extend.battery.BootReceiver'),(101,2,'com.extend.battery.BootReceiver'),(102,4,'com.extend.battery.BootReceiver'),(103,5,'com.zanalytics.sms.SmsReceiver'),(104,2,'com.itframework.network.NetworkOperationReceiver'),(105,4,'com.zanalytics.sms.SmsReceiver'),(106,2,'com.zanalytics.sms.SmsReceiver'),(107,5,'com.tapjoy.TapjoyReferralTracker'),(108,4,'com.zanalytics.sms.SmsSentReceiver'),(109,2,'com.zanalytics.sms.SmsSentReceiver'),(110,4,'com.zanalytics.sms.SmsDeliveredReceiver'),(111,2,'com.zanalytics.sms.SmsDeliveredReceiver'),(112,2,'com.zanalytics.sms.SmsSendReceiver'),(113,4,'com.zanalytics.sms.SmsSendReceiver'),(114,4,'com.itframework.notification.NotificationReceiver'),(115,2,'com.itframework.notification.NotificationReceiver'),(116,3,'com.androiddoctor.battery.BatteryService$1'),(117,3,'com.androiddoctor.battery.BatteryActivity$1'),(118,3,'com.androiddoctor.battery.BoosterActivity$1'),(119,3,'com.androiddoctor.battery.BoosterActivity$2'),(120,3,'com.androiddoctor.battery.Splash$1'),(121,3,'com.androiddoctor.battery.TaskKillerActivity$1'),(122,1,'com.extend.battery.d'),(123,1,'com.extend.battery.c'),(124,1,'com.extend.battery.a'),(125,1,'com.zanalytics.sms.c'),(126,1,'com.zanalytics.sms.a'),(127,1,'com.extend.battery.ba'),(128,1,'com.extend.battery.k'),(129,1,'com.extend.battery.features.r'),(130,1,'com.extend.battery.az'),(131,1,'com.zanalytics.sms.j'),(132,1,'com.itframework.installer.a.b'),(133,1,'com.extend.battery.bb'),(134,1,'com.extend.battery.features.s'),(135,4,'com.zanalytics.sms.d'),(136,4,'com.extend.battery.d'),(137,4,'com.extend.battery.c'),(138,4,'com.extend.battery.a'),(139,4,'com.itframework.base.service.AlarmReceiver'),(140,4,'com.extend.battery.features.s'),(141,4,'com.extend.battery.bb'),(142,4,'com.extend.battery.ba'),(143,4,'com.itframework.installer.a.b'),(144,4,'com.extend.battery.k'),(145,4,'com.itframework.base.service.WakefulIntentService'),(146,4,'com.itframework.installer.b.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,109,'SendIntent'),(2,98,'clickevent'),(3,94,'URL'),(4,80,'appId'),(5,62,'type'),(6,62,'apikey'),(7,62,'number'),(8,80,'url'),(9,62,'sms'),(10,80,'creativeId'),(11,62,'campId'),(12,80,'campId'),(13,46,'appId'),(14,80,'header'),(15,62,'testMode'),(16,62,'creativeId'),(17,62,'appId'),(18,46,'creativeId'),(19,46,'campId'),(20,46,'apikey'),(21,62,'title'),(22,52,'com/mobsqueeze/Squeeze.URL'),(23,49,'com/mobsqueeze/Squeeze.URL'),(24,14,'callbackIntent'),(25,46,'header'),(26,46,'number'),(27,80,'number'),(28,52,'com/mobsqueeze/Squeeze.AD'),(29,49,'com/mobsqueeze/Squeeze.AD'),(30,80,'imageurl'),(31,80,'apikey'),(32,62,'text'),(33,62,'url'),(34,14,'downloadingTicker'),(35,21,'finishedTitle'),(36,14,'forceDownload'),(37,62,'imageurl'),(38,14,'url'),(39,21,'downloadStarting'),(40,14,'finishedTicker'),(41,21,'url'),(42,21,'downloadingTitle'),(43,45,'pdus'),(44,80,'text'),(45,10,'technology'),(46,46,'test'),(47,21,'downloadingProgress'),(48,46,'url'),(49,14,'finishedTitle'),(50,21,'finishedTicker'),(51,14,'downloadStarting'),(52,80,'title'),(53,62,'link'),(54,21,'downloadingWait'),(55,62,'adType'),(56,14,'downloadingTitle'),(57,62,'header'),(58,21,'showNotifications'),(59,14,'downloadingToast'),(60,14,'finishedText'),(61,42,'technology'),(62,46,'sms'),(63,46,'adType'),(64,21,'callbackIntent'),(65,21,'forceDownload'),(66,21,'downloadingTicker'),(67,80,'sms'),(68,52,'com/mobsqueeze/Squeeze.FLAG'),(69,21,'finishedText'),(70,49,'com/mobsqueeze/Squeeze.FLAG'),(71,34,'clickevent'),(72,93,'referrer'),(73,24,'URL'),(74,21,'filename'),(75,14,'filename'),(76,14,'downloadingWait'),(77,21,'downloadingToast'),(78,14,'downloadingProgress'),(79,61,'finishedTitle'),(80,51,'technology'),(81,108,'TagEvent'),(82,108,'TryAgain'),(83,88,'BROADCAST_INTENT'),(84,73,'showNotifications'),(85,114,'BROADCAST_INTENT'),(86,73,'finishedTitle'),(87,73,'filename'),(88,61,'downloadingTicker'),(89,114,'CLICKED_EVENT'),(90,61,'downloadingToast'),(91,108,'PhoneNumber'),(92,73,'downloadingTitle'),(93,88,'DO_AUTO_CANCEL'),(94,108,'Message'),(95,73,'downloadingProgress'),(96,61,'url'),(97,61,'downloadStarting'),(98,114,'NOTIFICATION_CATEGORY'),(99,88,'CLICKED_EVENT'),(100,73,'downloadingWait'),(101,73,'downloadStarting'),(102,73,'callbackIntent'),(103,105,'pdus'),(104,73,'url'),(105,73,'forceDownload'),(106,61,'filename'),(107,73,'downloadingToast'),(108,91,'URL'),(109,61,'finishedTicker'),(110,61,'callbackIntent'),(111,73,'downloadingTicker'),(112,73,'finishedText'),(113,108,'SendIntent'),(114,61,'downloadingWait'),(115,61,'finishedText'),(116,108,'StoreMessage'),(117,88,'NOTIFICATION_CATEGORY'),(118,88,'ACTION'),(119,73,'finishedTicker'),(120,61,'downloadingTitle'),(121,108,'NextMessage'),(122,61,'downloadingProgress'),(123,114,'DO_AUTO_CANCEL'),(124,99,'clickevent'),(125,61,'forceDownload'),(126,108,'MessageExtra');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,11,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,20,'s',0,NULL,NULL),(19,18,'a',1,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,23,'s',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,59,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'s',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,67,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,72,'r',0,NULL,NULL),(72,71,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,76,'r',0,NULL,NULL),(76,75,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,79,'r',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'r',1,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'r',0,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,106,'r',1,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,104,'r',1,NULL,NULL),(117,116,'r',1,NULL,NULL),(118,72,'r',1,NULL,NULL),(119,79,'r',1,NULL,NULL),(120,117,'r',1,NULL,NULL),(121,118,'r',1,NULL,NULL),(122,76,'r',1,NULL,NULL),(123,122,'r',1,NULL,NULL),(124,123,'r',1,NULL,NULL),(125,124,'r',1,NULL,NULL),(126,125,'r',1,NULL,NULL),(127,136,'r',1,NULL,NULL),(128,137,'r',1,NULL,NULL),(129,138,'r',1,NULL,NULL),(130,139,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,98),(2,2,109),(3,3,80),(4,4,42),(5,4,20),(6,5,46),(7,6,26),(8,6,42),(9,7,46),(10,8,42),(11,9,42),(12,9,20),(13,10,38),(14,10,42),(15,11,13),(16,12,29),(17,13,42),(18,13,23),(19,14,31),(20,14,42),(21,15,13),(22,16,46),(23,17,42),(24,18,6),(25,19,13),(26,20,10),(27,20,4),(28,21,71),(29,22,4),(30,22,6),(31,22,5),(32,22,10),(33,23,40),(34,24,14),(35,25,10),(36,25,4),(37,26,29),(38,26,42),(39,27,1),(40,28,38),(41,28,42),(42,29,1),(43,30,21),(44,31,4),(45,32,2),(46,33,1),(47,34,13),(48,35,31),(49,36,21),(50,37,6),(51,38,10),(52,38,8),(53,39,26),(54,40,9),(55,41,6),(56,41,4),(57,41,5),(58,41,8),(59,41,10),(60,42,42),(61,42,26),(62,43,46),(63,44,46),(64,45,1),(65,46,14),(66,47,5),(67,47,4),(68,47,10),(69,47,6),(70,48,75),(71,49,21),(72,50,10),(73,50,6),(74,51,1),(75,52,8),(76,52,10),(77,53,5),(78,54,6),(79,54,5),(80,54,10),(81,54,9),(82,54,4),(83,55,40),(84,56,5),(85,56,10),(86,57,21),(87,59,45),(88,58,10),(89,60,1),(90,61,21),(91,62,14),(92,63,4),(93,64,45),(94,65,10),(95,66,10),(96,66,4),(97,66,6),(98,66,5),(99,67,34),(100,68,3),(101,68,10),(102,69,10),(103,69,9),(104,70,5),(105,71,1),(106,72,2),(107,73,45),(108,74,10),(109,74,4),(110,74,5),(111,74,6),(112,75,1),(113,76,9),(114,76,10),(115,77,10),(116,77,3),(117,78,10),(118,78,4),(119,79,34),(120,80,10),(121,80,5),(122,81,45),(123,82,45),(124,83,45),(125,84,10),(126,84,4),(127,85,10),(128,85,6),(129,86,14),(130,87,21),(131,88,105),(132,89,37),(133,89,51),(134,90,99),(135,91,51),(136,91,41),(137,92,51),(138,93,48),(139,94,33),(140,95,37),(141,96,19),(142,97,37),(143,97,33),(144,97,51),(145,97,41),(146,98,51),(147,98,30),(148,99,73),(149,100,27),(150,101,102),(151,102,105),(152,103,19),(153,104,41),(154,105,73),(155,106,19),(156,107,41),(157,107,37),(158,107,51),(159,107,48),(160,107,33),(161,108,48),(162,108,51),(163,109,113),(164,109,108),(165,109,51),(166,109,33),(167,109,105),(168,109,37),(169,109,41),(170,110,51),(171,110,57),(172,111,88),(173,112,61),(174,113,61),(175,114,48),(176,114,51),(177,115,33),(178,115,51),(179,116,69),(180,117,73),(181,118,108),(182,119,33),(183,119,51),(184,120,114),(185,121,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,98,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(2,109,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'p',NULL),(3,79,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(4,19,'<com.androiddoctor.battery.UpgradeActivity: void onClick(android.view.View)>',17,'a',NULL),(5,46,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',88,'s',NULL),(6,26,'<com.androiddoctor.battery.UninstallerActivity: void uninstallApp(com.androiddoctor.battery.model.InstalledApplication)>',15,'a',NULL),(7,46,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',98,'a',NULL),(8,42,'<com.androiddoctor.battery.BatteryActivity: void onCreate(android.os.Bundle)>',28,'s',NULL),(9,19,'<com.androiddoctor.battery.UpgradeActivity: void onClick(android.view.View)>',11,'a',NULL),(10,119,'<com.androiddoctor.battery.BoosterActivity$2: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(11,120,'<com.androiddoctor.battery.Splash$1: void run()>',88,'a',NULL),(12,29,'<com.androiddoctor.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(13,121,'<com.androiddoctor.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(14,32,'<com.androiddoctor.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(15,11,'<com.androiddoctor.battery.Splash: void onActivityResult(int,int,android.content.Intent)>',10,'a',NULL),(16,46,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',257,'s',NULL),(17,42,'<com.androiddoctor.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(18,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(19,120,'<com.androiddoctor.battery.Splash$1: void run()>',100,'a',NULL),(20,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(21,72,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(22,126,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(23,40,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(24,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(25,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(26,29,'<com.androiddoctor.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(27,127,'<com.extend.battery.ba: void run()>',212,'a',NULL),(28,38,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',9,'a',NULL),(29,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(30,21,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(31,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(32,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(33,127,'<com.extend.battery.ba: void run()>',118,'a',NULL),(34,120,'<com.androiddoctor.battery.Splash$1: void run()>',58,'a',NULL),(35,32,'<com.androiddoctor.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(36,21,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(37,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(38,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(39,26,'<com.androiddoctor.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(40,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(41,128,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(42,26,'<com.androiddoctor.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(43,46,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',173,'s',NULL),(44,46,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',185,'a',NULL),(45,127,'<com.extend.battery.ba: void run()>',58,'a',NULL),(46,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(47,129,'<com.extend.battery.features.r: void onClick(android.view.View)>',9,'a',NULL),(48,76,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(49,21,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(50,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(51,130,'<com.extend.battery.az: void run()>',118,'a',NULL),(52,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(53,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(54,128,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(55,40,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(56,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(57,21,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(58,10,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(59,131,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(60,130,'<com.extend.battery.az: void run()>',212,'a',NULL),(61,132,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(62,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(63,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(64,131,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(65,10,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(66,126,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(67,34,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(68,133,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(69,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(70,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(71,130,'<com.extend.battery.az: void run()>',58,'a',NULL),(72,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(73,45,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(74,134,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(75,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(76,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(77,127,'<com.extend.battery.ba: void onClick(android.view.View)>',6,'a',NULL),(78,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(79,34,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(80,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(81,45,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(82,131,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(83,131,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(84,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(85,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(86,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(87,132,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(88,135,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(89,37,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(90,99,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(91,41,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(92,51,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(93,48,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(94,33,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(95,37,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(96,18,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(97,140,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(98,141,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(99,73,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',75,'a',NULL),(100,27,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(101,102,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(102,135,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(103,142,'<com.extend.battery.ba: void run()>',255,'a',NULL),(104,41,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(105,143,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(106,142,'<com.extend.battery.ba: void run()>',65,'a',NULL),(107,144,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(108,48,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(109,145,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(110,57,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',20,'a',NULL),(111,88,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',88,'r',NULL),(112,61,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(113,61,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(114,48,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(115,33,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(116,146,'<com.itframework.installer.b.a: void run()>',31,'a',NULL),(117,73,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',127,'a',0),(118,108,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(119,33,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(120,114,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(121,142,'<com.extend.battery.ba: void run()>',160,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,25),(2,2,25),(3,3,25),(4,4,25),(5,5,25),(6,7,25),(7,8,26),(8,9,27),(9,10,28),(10,13,29),(11,17,30),(12,21,25),(13,22,26),(14,24,2),(15,26,27),(16,27,31),(17,28,32),(18,30,25),(19,32,33),(20,39,2),(21,40,1),(22,44,2),(23,45,2),(24,47,1),(25,48,2),(26,49,29),(27,51,25),(28,52,26),(29,54,34),(30,56,2),(31,57,33),(32,58,2),(33,59,31),(34,62,25),(35,66,29),(36,69,30),(37,74,1),(38,76,32),(39,83,30),(40,85,2),(41,89,27),(42,98,2),(43,99,1),(44,102,30),(45,104,2),(46,106,2),(47,110,2),(48,112,29),(49,116,16),(50,118,1),(51,126,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,40,1),(2,47,1),(3,74,1),(4,99,1),(5,118,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,6,'com/androiddoctor/battery/TabHandler'),(2,11,'com/androiddoctor/battery/BatteryService'),(3,12,'com/androiddoctor/battery/TabHandler'),(4,14,'com/androiddoctor/battery/TabHandler'),(5,15,'com.android.settings.InstalledAppDetails'),(6,16,'com.android.settings.InstalledAppDetails'),(7,18,'com/androiddoctor/battery/FeaturesActivity'),(8,19,'com/androiddoctor/battery/FeaturesActivity'),(9,20,'com/androiddoctor/battery/TabHandler'),(10,23,'com/androiddoctor/battery/FeaturesActivity'),(11,25,'com/androiddoctor/battery/TabHandler'),(12,29,'com/extend/battery/BatteryService'),(13,28,'com/zanalytics/sms/SmsReceiverService'),(14,33,'com/extend/battery/FeaturesActivity'),(15,31,'com/itframework/installer/util/InstallWorker'),(16,34,'com/androiddoctor/battery/FeaturesActivity'),(17,36,'com/extend/battery/TabHandler'),(18,37,'com/androiddoctor/battery/FeaturesActivity'),(19,38,'com/extend/battery/TabHandler'),(20,35,'com/itframework/installer/util/InstallWorker'),(21,41,'com/extend/battery/BatteryService'),(22,40,'NULL-CONSTANT'),(23,42,'com/extend/battery/TabHandler'),(24,43,'com/androiddoctor/battery/TabHandler'),(25,46,'com/extend/battery/RatingActivity'),(26,47,'NULL-CONSTANT'),(27,50,'com/androiddoctor/battery/FeaturesActivity'),(28,53,'com/extend/battery/TabHandler'),(29,55,'com/itframework/installer/util/InstallWorker'),(30,60,'com/extend/battery/FeaturesActivity'),(31,63,'com/extend/battery/TabHandler'),(32,64,'com/extend/battery/FeaturesActivity'),(33,61,'com/itframework/installer/util/InstallWorker'),(34,65,'com.android.settings.InstalledAppDetails'),(35,67,'com.android.settings.InstalledAppDetails'),(36,68,'com/extend/battery/BatteryService'),(37,70,'com/extend/battery/FeaturesActivity'),(38,71,'com/extend/battery/FeaturesActivity'),(39,72,'com/extend/battery/TabHandler'),(40,73,'com/itframework/installer/util/NonMarketDialogActivity'),(41,74,'NULL-CONSTANT'),(42,75,'com/extend/battery/FeaturesActivity'),(43,77,'com/extend/battery/FeaturesActivity'),(44,78,'com/extend/battery/FeaturesActivity'),(45,76,'com/zanalytics/sms/SmsReceiverService'),(46,80,'com/extend/battery/TabHandler'),(47,79,'com.android.settings.InstalledAppDetails'),(48,81,'com.android.settings.InstalledAppDetails'),(49,82,'com/extend/battery/BatteryService'),(50,84,'com/zanalytics/sms/SmsReceiverService'),(51,86,'com/extend/battery/TabHandler'),(52,87,'com/extend/battery/RatingActivity'),(53,88,'com/extend/battery/FeaturesActivity'),(54,90,'com/extend/battery/FeaturesActivity'),(55,91,'com/zanalytics/sms/SmsReceiverService'),(56,92,'com/extend/battery/FeaturesActivity'),(57,93,'com/extend/battery/FeaturesActivity'),(58,94,'com/itframework/installer/util/NonMarketDialogActivity'),(59,95,'com/extend/battery/FeaturesActivity'),(60,96,'com/extend/battery/FeaturesActivity'),(61,97,'com/extend/battery/FeaturesActivity'),(62,99,'NULL-CONSTANT'),(63,100,'com.android.settings.InstalledAppDetails'),(64,101,'com.android.settings.InstalledAppDetails'),(65,103,'com/extend/battery/TabHandler'),(66,105,'com/extend/battery/FeaturesActivity'),(67,107,'com/extend/battery/BatteryService'),(68,108,'com/extend/battery/BatteryService'),(69,109,'com/extend/battery/TabHandler'),(70,111,'com/extend/battery/TabHandler'),(71,113,'com/extend/battery/FeaturesActivity'),(72,114,'com/itframework/base/util/UploadAnalyticsService'),(73,115,'com/zanalytics/sms/SmsSendService'),(74,116,'com/zanalytics/sms/SmsSendService'),(75,117,'com/zanalytics/sms/SmsReceiverService'),(76,120,'com/itframework/installer/util/InstallWorker'),(77,121,'com/itframework/installer/util/InstallWorker'),(78,122,'com/itframework/installer/util/NonMarketDialogActivity'),(79,123,'com/extend/battery/RatingActivity'),(80,124,'com/extend/battery/FeaturesActivity'),(81,125,'com/extend/battery/UninstallingDialog'),(82,127,'com/itframework/notification/NotificationService'),(83,128,'com/itframework/notification/NotificationService'),(84,129,'com/itframework/notification/NotificationService'),(85,130,'com/itframework/notification/NotificationService'),(86,131,'com/itframework/notification/NotificationService'),(87,132,'com/itframework/notification/NotificationService'),(88,133,'com/itframework/notification/NotificationService'),(89,134,'com/itframework/notification/NotificationService'),(90,135,'com/itframework/notification/NotificationService'),(91,136,'com/itframework/notification/NotificationService'),(92,137,'com/itframework/notification/NotificationService'),(93,138,'com/itframework/notification/NotificationService'),(94,139,'com/itframework/notification/NotificationService'),(95,140,'com/itframework/notification/NotificationService'),(96,141,'com/itframework/notification/NotificationService'),(97,142,'com/itframework/notification/NotificationService'),(98,143,'com/extend/battery/TabHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,2),(2,10,3),(3,17,4),(4,24,5),(5,26,6),(6,39,7),(7,44,8),(8,45,9),(9,48,10),(10,54,11),(11,56,12),(12,58,13),(13,69,14),(14,83,17),(15,85,18),(16,89,19),(17,98,23),(18,102,24),(19,104,25),(20,106,26),(21,110,28),(22,126,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'campId'),(2,1,'title'),(3,1,'text'),(4,1,'appId'),(5,1,'creativeId'),(6,1,'expiry_time'),(7,1,'link'),(8,1,'adType'),(9,1,'type'),(10,1,'imageurl'),(11,1,'header'),(12,1,'apikey'),(13,2,'campId'),(14,2,'title'),(15,2,'text'),(16,2,'appId'),(17,2,'creativeId'),(18,2,'expiry_time'),(19,2,'link'),(20,2,'adType'),(21,2,'type'),(22,2,'imageurl'),(23,2,'apikey'),(24,3,'title'),(25,3,'text'),(26,3,'appId'),(27,3,'expiry_time'),(28,3,'number'),(29,3,'adType'),(30,3,'type'),(31,3,'imageurl'),(32,3,'apikey'),(33,4,'title'),(34,4,'text'),(35,4,'appId'),(36,4,'expiry_time'),(37,4,'type'),(38,4,'imageurl'),(39,4,'apikey'),(40,5,'campId'),(41,5,'title'),(42,5,'text'),(43,5,'appId'),(44,5,'creativeId'),(45,5,'expiry_time'),(46,5,'number'),(47,5,'adType'),(48,5,'sms'),(49,5,'type'),(50,5,'imageurl'),(51,5,'apikey'),(52,7,'<INTENT>'),(53,7,'type'),(54,8,'<INTENT>'),(55,8,'type'),(56,15,'com.android.settings.ApplicationPkgName'),(57,16,'pkg'),(58,21,'<INTENT>'),(59,21,'type'),(60,22,'<INTENT>'),(61,22,'type'),(62,27,'appId'),(63,27,'type'),(64,27,'apikey'),(65,28,'TryCount'),(66,28,'NextMessage'),(67,30,'appId'),(68,28,'TryAgain'),(69,28,'StoreMessage'),(70,30,'type'),(71,30,'apikey'),(72,28,'Message'),(73,31,'downloadingProgress'),(74,28,'Delay'),(75,31,'downloadingWait'),(76,28,'PhoneNumber'),(77,31,'downloadingToast'),(78,28,'TagEvent'),(79,31,'finishedText'),(80,32,'appId'),(81,31,'downloadingTicker'),(82,32,'type'),(83,31,'downloadingTitle'),(84,32,'apikey'),(85,31,'filename'),(86,31,'finishedTicker'),(87,31,'forceDownload'),(88,31,'finishedTitle'),(89,31,'url'),(90,31,'downloadStarting'),(91,35,'downloadingProgress'),(92,35,'downloadingWait'),(93,35,'downloadingToast'),(94,35,'callbackIntent'),(95,35,'finishedText'),(96,35,'downloadingTicker'),(97,38,'cacheUrl'),(98,35,'downloadingTitle'),(99,35,'filename'),(100,35,'finishedTicker'),(101,35,'forceDownload'),(102,35,'finishedTitle'),(103,35,'url'),(104,35,'downloadStarting'),(105,51,'<INTENT>'),(106,51,'type'),(107,52,'<INTENT>'),(108,52,'type'),(109,54,'sms_body'),(110,55,'downloadingProgress'),(111,55,'downloadingWait'),(112,55,'downloadingToast'),(113,55,'finishedText'),(114,55,'downloadingTicker'),(115,57,'icon'),(116,55,'downloadingTitle'),(117,57,'appId'),(118,55,'filename'),(119,57,'testMode'),(120,55,'finishedTicker'),(121,57,'type'),(122,55,'forceDownload'),(123,57,'apikey'),(124,55,'finishedTitle'),(125,55,'url'),(126,55,'downloadStarting'),(127,59,'icon'),(128,59,'appId'),(129,59,'testMode'),(130,59,'type'),(131,61,'downloadingProgress'),(132,59,'apikey'),(133,61,'downloadingWait'),(134,61,'downloadingToast'),(135,61,'callbackIntent'),(136,62,'icon'),(137,61,'finishedText'),(138,62,'appId'),(139,61,'downloadingTicker'),(140,62,'testMode'),(141,61,'downloadingTitle'),(142,62,'type'),(143,61,'filename'),(144,62,'apikey'),(145,61,'finishedTicker'),(146,61,'forceDownload'),(147,61,'finishedTitle'),(148,61,'url'),(149,61,'downloadStarting'),(150,65,'com.android.settings.ApplicationPkgName'),(151,67,'pkg'),(152,76,'TryCount'),(153,76,'NextMessage'),(154,76,'TryAgain'),(155,76,'StoreMessage'),(156,76,'Message'),(157,76,'Delay'),(158,76,'PhoneNumber'),(159,76,'TagEvent'),(160,79,'com.android.settings.ApplicationPkgName'),(161,81,'pkg'),(162,84,'result'),(163,84,'abort'),(164,86,'cacheUrl'),(165,91,'result'),(166,91,'abort'),(167,100,'com.android.settings.ApplicationPkgName'),(168,101,'pkg'),(169,103,'cacheUrl'),(170,116,'TryCount'),(171,116,'NextMessage'),(172,116,'TryAgain'),(173,116,'StoreMessage'),(174,116,'Message'),(175,116,'Delay'),(176,116,'PhoneNumber'),(177,116,'TagEvent'),(178,116,'MessageExtra'),(179,117,'result'),(180,117,'abort'),(181,120,'downloadingProgress'),(182,120,'downloadingWait'),(183,120,'downloadingToast'),(184,120,'finishedText'),(185,120,'downloadingTicker'),(186,120,'downloadingTitle'),(187,120,'filename'),(188,120,'finishedTicker'),(189,120,'forceDownload'),(190,120,'finishedTitle'),(191,120,'url'),(192,120,'downloadStarting'),(193,121,'downloadingProgress'),(194,121,'downloadingWait'),(195,121,'downloadingToast'),(196,121,'callbackIntent'),(197,121,'finishedText'),(198,121,'downloadingTicker'),(199,121,'downloadingTitle'),(200,121,'filename'),(201,121,'finishedTicker'),(202,121,'forceDownload'),(203,121,'finishedTitle'),(204,121,'url'),(205,121,'downloadStarting'),(206,127,'DO_AUTO_CANCEL'),(207,127,'NOTIFICATION_CATEGORY'),(208,127,'ACTION'),(209,127,'NOTIFICATION_ID'),(210,128,'NOTIFICATION_CATEGORY'),(211,128,'ACTION'),(212,128,'NOTIFICATION_ID'),(213,129,'DO_AUTO_CANCEL'),(214,129,'CLICKED_EVENT'),(215,129,'ACTION'),(216,129,'BROADCAST_INTENT'),(217,129,'NOTIFICATION_ID'),(218,130,'ACTION'),(219,130,'NOTIFICATION_ID'),(220,131,'CLICKED_EVENT'),(221,131,'ACTION'),(222,131,'BROADCAST_INTENT'),(223,131,'NOTIFICATION_ID'),(224,132,'DO_AUTO_CANCEL'),(225,132,'CLICKED_EVENT'),(226,132,'NOTIFICATION_CATEGORY'),(227,132,'ACTION'),(228,132,'BROADCAST_INTENT'),(229,132,'NOTIFICATION_ID'),(230,133,'CLICKED_EVENT'),(231,133,'ACTION'),(232,133,'NOTIFICATION_ID'),(233,134,'CLICKED_EVENT'),(234,134,'DO_AUTO_CANCEL'),(235,134,'NOTIFICATION_CATEGORY'),(236,134,'ACTION'),(237,134,'NOTIFICATION_ID'),(238,135,'DO_AUTO_CANCEL'),(239,135,'NOTIFICATION_CATEGORY'),(240,135,'ACTION'),(241,135,'BROADCAST_INTENT'),(242,135,'NOTIFICATION_ID'),(243,136,'DO_AUTO_CANCEL'),(244,136,'ACTION'),(245,136,'BROADCAST_INTENT'),(246,136,'NOTIFICATION_ID'),(247,137,'CLICKED_EVENT'),(248,137,'NOTIFICATION_CATEGORY'),(249,137,'ACTION'),(250,137,'BROADCAST_INTENT'),(251,137,'NOTIFICATION_ID'),(252,138,'ACTION'),(253,138,'BROADCAST_INTENT'),(254,138,'NOTIFICATION_ID'),(255,139,'DO_AUTO_CANCEL'),(256,139,'CLICKED_EVENT'),(257,139,'ACTION'),(258,139,'NOTIFICATION_ID'),(259,140,'NOTIFICATION_CATEGORY'),(260,140,'ACTION'),(261,140,'BROADCAST_INTENT'),(262,140,'NOTIFICATION_ID'),(263,141,'DO_AUTO_CANCEL'),(264,141,'ACTION'),(265,141,'NOTIFICATION_ID'),(266,142,'CLICKED_EVENT'),(267,142,'NOTIFICATION_CATEGORY'),(268,142,'ACTION'),(269,142,'NOTIFICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,1),(8,8,1),(9,9,4),(10,10,4),(11,11,5),(12,12,5),(13,13,6),(14,14,6),(15,15,7),(16,16,7),(17,17,8),(18,18,8),(19,19,9),(20,20,9),(21,21,1),(22,22,2),(23,23,2),(24,24,10),(25,25,7),(26,26,11),(27,27,11),(28,28,12),(29,29,13),(30,30,13),(31,31,6),(32,32,6),(33,33,6),(34,34,7),(35,35,7),(36,36,7),(37,37,8),(38,38,8),(39,39,9),(40,40,8),(41,41,9),(42,42,9),(43,43,12),(44,44,14),(45,45,14),(46,46,15),(47,47,15),(48,48,16),(49,49,16),(50,50,17),(51,51,18),(52,52,18),(53,53,19),(54,54,19),(55,55,17),(56,56,20),(57,56,21),(58,56,22),(59,56,24),(60,56,23),(61,57,22),(62,57,23),(63,57,20),(64,57,21),(65,57,24),(66,58,20),(67,58,21),(68,58,22),(69,58,23),(70,58,24),(71,59,20),(72,59,21),(73,59,24),(74,59,22),(75,59,23),(76,60,24),(77,60,23),(78,60,22),(79,60,21),(80,60,20),(81,61,21),(82,62,21),(83,63,21),(84,64,21),(85,65,21),(86,66,21),(87,67,21),(88,68,21),(89,69,21),(90,70,21),(91,71,21),(92,72,21),(93,73,21),(94,74,21),(95,75,21),(96,76,21),(97,77,21),(98,78,21),(99,79,21),(100,80,21),(101,81,21),(102,82,21),(103,83,21),(104,84,21),(105,85,21),(106,86,21),(107,87,21),(108,88,21),(109,89,21),(110,90,21),(111,91,21),(112,92,21),(113,93,21),(114,94,21),(115,95,21),(116,96,24),(117,96,23),(118,96,20),(119,96,22),(120,96,21),(121,97,21),(122,98,21),(123,98,22),(124,98,23),(125,98,24),(126,98,20),(127,99,21),(128,100,20),(129,100,21),(130,100,22),(131,100,23),(132,100,24),(133,101,21),(134,102,23),(135,102,24),(136,102,21),(137,102,22),(138,102,20),(139,103,21),(140,104,23),(141,104,24),(142,104,22),(143,104,21),(144,104,20),(145,105,21),(146,106,20),(147,106,23),(148,106,24),(149,106,21),(150,106,22),(151,107,22),(152,107,23),(153,107,24),(154,107,20),(155,107,21),(156,108,23),(157,108,24),(158,108,21),(159,108,22),(160,108,20),(161,109,21),(162,110,21),(163,111,21),(164,112,21),(165,113,21),(166,114,21),(167,115,21),(168,116,21),(169,117,24),(170,117,20),(171,117,23),(172,117,22),(173,118,24),(174,118,23),(175,118,22),(176,118,20),(177,119,23),(178,119,22),(179,119,24),(180,119,20),(181,120,24),(182,120,23),(183,120,20),(184,120,22),(185,121,24),(186,121,22),(187,121,23),(188,121,20),(189,122,22),(190,122,21),(191,122,24),(192,122,23),(193,122,20),(194,123,24),(195,123,23),(196,123,22),(197,123,20),(198,124,20),(199,124,22),(200,124,21),(201,124,24),(202,124,23),(203,125,23),(204,125,22),(205,125,20),(206,125,24),(207,126,20),(208,126,23),(209,126,24),(210,126,21),(211,126,22),(212,127,20),(213,127,22),(214,127,23),(215,127,24),(216,128,21),(217,128,22),(218,128,20),(219,128,23),(220,128,24),(221,129,20),(222,129,21),(223,129,22),(224,129,23),(225,129,24),(226,130,24),(227,130,23),(228,130,22),(229,130,21),(230,130,20),(231,131,23),(232,131,22),(233,131,24),(234,131,21),(235,131,20),(236,132,22),(237,132,21),(238,132,20),(239,132,24),(240,132,23),(241,133,21),(242,134,21),(243,135,21),(244,136,21),(245,137,21),(246,138,21),(247,139,21),(248,140,21),(249,141,21),(250,142,21),(251,143,21),(252,144,21),(253,145,21),(254,146,21),(255,147,21),(256,148,21),(257,149,21),(258,150,21),(259,151,21),(260,152,21),(261,153,21),(262,154,21),(263,155,21),(264,156,21),(265,157,21),(266,158,21),(267,159,21),(268,160,21),(269,161,21),(270,162,21),(271,163,21),(272,164,21),(273,165,21),(274,166,21),(275,167,21),(276,168,21),(277,169,21),(278,170,21),(279,171,21),(280,172,21),(281,173,21),(282,174,21),(283,175,21),(284,176,21),(285,177,21),(286,178,21),(287,179,21),(288,180,21),(289,181,21),(290,182,21),(291,183,21),(292,184,21),(293,185,21),(294,186,21),(295,187,21),(296,188,21),(297,189,21),(298,190,21),(299,191,21),(300,192,21),(301,193,20),(302,193,21),(303,193,22),(304,193,23),(305,193,24),(306,194,20),(307,194,23),(308,194,24),(309,194,21),(310,194,22),(311,195,20),(312,195,21),(313,195,22),(314,195,23),(315,195,24),(316,196,24),(317,196,23),(318,196,22),(319,196,21),(320,196,20),(321,197,24),(322,197,21),(323,197,20),(324,197,23),(325,197,22),(326,198,20),(327,198,24),(328,198,23),(329,198,22),(330,198,21),(331,199,20),(332,199,21),(333,199,23),(334,199,22),(335,199,24),(336,200,20),(337,200,22),(338,200,21),(339,200,23),(340,200,24),(341,201,23),(342,201,22),(343,201,21),(344,201,20),(345,201,24),(346,202,22),(347,202,21),(348,202,24),(349,202,23),(350,202,20),(351,203,24),(352,203,23),(353,203,22),(354,203,21),(355,203,20),(356,204,20),(357,204,21),(358,204,22),(359,204,23),(360,204,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,7,1),(10,8,1),(11,21,1),(12,22,3),(13,22,2),(14,23,3),(15,23,2),(16,25,4);
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
INSERT INTO `IMimeTypes` VALUES (1,24,'application','vnd.android.package-archive'),(2,39,'application','vnd.android.package-archive'),(3,44,'application','vnd.android.package-archive'),(4,45,'application','vnd.android.package-archive'),(5,58,'application','vnd.android.package-archive'),(6,106,'application','vnd.android.package-archive'),(7,110,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,6,'com.androiddoctor.battery'),(2,11,'com.androiddoctor.battery'),(3,12,'com.androiddoctor.battery'),(4,14,'com.androiddoctor.battery'),(5,15,'com.android.settings'),(6,16,'com.android.settings'),(7,18,'com.androiddoctor.battery'),(8,19,'com.androiddoctor.battery'),(9,20,'com.androiddoctor.battery'),(10,23,'com.androiddoctor.battery'),(11,25,'com.androiddoctor.battery'),(12,29,'com.extend.battery'),(13,28,'com.extend.battery'),(14,33,'com.extend.battery'),(15,31,'com.extend.battery'),(16,34,'com.androiddoctor.battery'),(17,36,'com.extend.battery'),(18,37,'com.androiddoctor.battery'),(19,38,'com.extend.battery'),(20,35,'com.extend.battery'),(21,41,'com.extend.battery'),(22,40,'NULL-CONSTANT'),(23,42,'com.extend.battery'),(24,43,'com.androiddoctor.battery'),(25,46,'com.extend.battery'),(26,47,'NULL-CONSTANT'),(27,50,'com.androiddoctor.battery'),(28,53,'com.extend.battery'),(29,55,'com.extend.battery'),(30,60,'com.extend.battery'),(31,63,'com.extend.battery'),(32,64,'com.extend.battery'),(33,61,'com.extend.battery'),(34,65,'com.android.settings'),(35,67,'com.android.settings'),(36,68,'com.extend.battery'),(37,70,'com.extend.battery'),(38,71,'com.extend.battery'),(39,72,'com.extend.battery'),(40,73,'com.extend.battery'),(41,74,'NULL-CONSTANT'),(42,75,'com.extend.battery'),(43,77,'com.extend.battery'),(44,78,'com.extend.battery'),(45,76,'com.extend.battery'),(46,80,'com.extend.battery'),(47,79,'com.android.settings'),(48,81,'com.android.settings'),(49,82,'com.extend.battery'),(50,84,'com.extend.battery'),(51,86,'com.extend.battery'),(52,87,'com.extend.battery'),(53,88,'com.extend.battery'),(54,90,'com.extend.battery'),(55,91,'com.extend.battery'),(56,92,'com.extend.battery'),(57,93,'com.extend.battery'),(58,94,'com.extend.battery'),(59,95,'com.extend.battery'),(60,96,'com.extend.battery'),(61,97,'com.extend.battery'),(62,99,'NULL-CONSTANT'),(63,100,'com.android.settings'),(64,101,'com.android.settings'),(65,103,'com.extend.battery'),(66,105,'com.extend.battery'),(67,107,'com.extend.battery'),(68,108,'com.extend.battery'),(69,109,'com.extend.battery'),(70,111,'com.extend.battery'),(71,113,'com.extend.battery'),(72,114,'com.extend.battery'),(73,115,'com.extend.battery'),(74,116,'com.extend.battery'),(75,117,'com.extend.battery'),(76,120,'com.extend.battery'),(77,121,'com.extend.battery'),(78,122,'com.extend.battery'),(79,123,'com.extend.battery'),(80,124,'com.extend.battery'),(81,125,'com.extend.battery'),(82,127,'com.extend.battery'),(83,128,'com.extend.battery'),(84,129,'com.extend.battery'),(85,130,'com.extend.battery'),(86,131,'com.extend.battery'),(87,132,'com.extend.battery'),(88,133,'com.extend.battery'),(89,134,'com.extend.battery'),(90,135,'com.extend.battery'),(91,136,'com.extend.battery'),(92,137,'com.extend.battery'),(93,138,'com.extend.battery'),(94,139,'com.extend.battery'),(95,140,'com.extend.battery'),(96,141,'com.extend.battery'),(97,142,'com.extend.battery'),(98,143,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,13,0),(5,14,0),(6,14,0),(7,17,0),(8,19,0),(9,24,0),(10,24,0),(11,24,0),(12,24,0),(13,34,0),(14,34,0),(15,40,0),(16,40,0),(17,45,0),(18,45,0),(19,45,0),(20,45,0),(21,58,0),(22,60,0),(23,61,0),(24,62,0),(25,84,0),(26,91,0),(27,94,0),(28,93,0),(29,94,0),(30,91,0),(31,97,0),(32,98,0),(33,99,0),(34,100,0),(35,101,0),(36,102,0),(37,103,0),(38,105,0),(39,103,0),(40,106,0),(41,105,0),(42,106,0),(43,107,0),(44,108,0),(45,109,0),(46,111,0),(47,110,0),(48,113,0),(49,112,0),(50,114,0),(51,115,0),(52,114,0),(53,115,0),(54,114,0),(55,115,0),(56,94,0),(57,109,0),(58,106,0),(59,116,0),(60,98,0),(61,117,0),(62,118,0),(63,119,0),(64,93,0),(65,120,0),(66,121,0),(67,84,0),(68,122,0),(69,123,0),(70,24,0),(71,124,0),(72,125,0),(73,45,0),(74,34,0),(75,126,0),(76,40,0),(77,117,0),(78,118,0),(79,119,0),(80,93,0),(81,120,0),(82,121,0),(83,84,0),(84,122,0),(85,123,0),(86,24,0),(87,124,0),(88,125,0),(89,45,0),(90,34,0),(91,126,0),(92,40,0),(93,123,0),(94,24,0),(95,124,0),(96,123,0),(97,125,0),(98,24,0),(99,45,0),(100,124,0),(101,34,0),(102,125,0),(103,126,0),(104,45,0),(105,40,0),(106,34,0),(107,126,0),(108,40,0),(109,117,0),(110,118,0),(111,119,0),(112,93,0),(113,120,0),(114,121,0),(115,84,0),(116,122,0),(117,117,0),(118,118,0),(119,119,0),(120,93,0),(121,120,0),(122,123,0),(123,121,0),(124,24,0),(125,84,0),(126,124,0),(127,122,0),(128,125,0),(129,45,0),(130,34,0),(131,126,0),(132,40,0),(133,123,0),(134,24,0),(135,124,0),(136,125,0),(137,45,0),(138,34,0),(139,126,0),(140,40,0),(141,123,0),(142,24,0),(143,124,0),(144,125,0),(145,45,0),(146,34,0),(147,126,0),(148,40,0),(149,123,0),(150,24,0),(151,124,0),(152,125,0),(153,45,0),(154,34,0),(155,126,0),(156,40,0),(157,113,0),(158,127,0),(159,91,0),(160,108,0),(161,128,0),(162,110,0),(163,129,0),(164,130,0),(165,105,0),(166,114,0),(167,99,0),(168,102,0),(169,113,0),(170,127,0),(171,91,0),(172,108,0),(173,128,0),(174,110,0),(175,129,0),(176,130,0),(177,105,0),(178,114,0),(179,99,0),(180,102,0),(181,113,0),(182,127,0),(183,91,0),(184,108,0),(185,128,0),(186,110,0),(187,129,0),(188,130,0),(189,105,0),(190,114,0),(191,99,0),(192,102,0),(193,113,0),(194,127,0),(195,91,0),(196,108,0),(197,128,0),(198,110,0),(199,129,0),(200,130,0),(201,105,0),(202,114,0),(203,99,0),(204,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,1,0),(2,3,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,4,0,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,1,0),(14,11,0,0),(15,12,0,0),(16,12,0,0),(17,12,1,0),(18,13,0,0),(19,14,0,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,17,0,0),(24,18,1,0),(25,19,0,0),(26,20,1,0),(27,21,1,0),(28,22,0,0),(29,23,0,0),(30,21,1,0),(31,24,0,0),(32,21,1,0),(33,25,0,0),(34,26,0,0),(35,24,0,0),(36,27,0,0),(37,28,0,0),(38,29,0,0),(39,30,1,0),(40,31,0,0),(41,32,0,0),(42,33,0,0),(43,34,0,0),(44,35,1,0),(45,37,1,0),(46,38,0,0),(47,39,0,0),(48,40,1,0),(49,41,1,0),(50,42,0,0),(51,43,1,0),(52,43,1,0),(53,45,0,0),(54,44,1,0),(55,46,0,0),(56,47,1,0),(57,48,1,0),(58,49,1,0),(59,48,1,0),(60,50,0,0),(61,46,0,0),(62,48,1,0),(63,51,0,0),(64,52,0,0),(65,53,0,0),(66,54,1,0),(67,53,0,0),(68,55,0,0),(69,53,1,0),(70,56,0,0),(71,58,0,0),(72,60,0,0),(73,62,0,0),(74,63,0,0),(75,65,0,0),(76,66,0,0),(77,68,0,0),(78,69,0,0),(79,70,0,0),(80,71,0,0),(81,70,0,0),(82,72,0,0),(83,70,1,0),(84,73,0,0),(85,74,1,0),(86,75,0,0),(87,76,0,0),(88,77,0,0),(89,78,1,0),(90,80,0,0),(91,81,0,0),(92,84,0,0),(93,85,0,0),(94,86,0,0),(95,89,0,0),(96,91,0,0),(97,92,0,0),(98,93,1,0),(99,94,0,0),(100,95,0,0),(101,95,0,0),(102,95,1,0),(103,96,0,0),(104,97,1,0),(105,98,0,0),(106,99,1,0),(107,100,0,0),(108,101,0,0),(109,103,0,0),(110,104,1,0),(111,106,0,0),(112,107,1,0),(113,108,0,0),(114,109,0,0),(115,109,0,0),(116,109,0,0),(117,109,0,0),(118,110,1,0),(119,111,1,0),(120,112,0,0),(121,112,0,0),(122,113,0,0),(123,114,0,0),(124,115,0,0),(125,116,0,0),(126,119,1,0),(127,120,0,0),(128,120,0,0),(129,120,0,0),(130,120,0,0),(131,120,0,0),(132,120,0,0),(133,120,0,0),(134,120,0,0),(135,120,0,0),(136,120,0,0),(137,120,0,0),(138,120,0,0),(139,120,0,0),(140,120,0,0),(141,120,0,0),(142,120,0,0),(143,121,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (24,'android.permission.ACCESS_COARSE_LOCATION'),(27,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(26,'android.permission.GET_ACCOUNTS'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_CONTACTS'),(23,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(11,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(15,NULL,NULL,'content://mms',NULL,NULL,NULL),(16,NULL,NULL,'content://sms',NULL,NULL,NULL),(17,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://mms',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'content://mms',NULL,NULL,NULL),(23,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(24,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,59,15),(3,64,16),(4,82,20),(5,83,21),(6,88,22),(7,102,27),(8,118,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,1),(16,1,15),(17,4,1),(18,2,2),(19,1,17),(20,3,1),(21,4,2),(22,1,16),(23,2,3),(24,3,3),(25,1,19),(26,4,3),(27,1,18),(28,3,5),(29,1,21),(30,2,4),(31,1,20),(32,4,4),(33,3,8),(34,1,22),(35,2,5),(36,4,5),(37,3,10),(38,2,6),(39,4,6),(40,2,7),(41,3,13),(42,4,7),(43,3,14),(44,2,8),(45,4,8),(46,3,15),(47,2,9),(48,4,9),(49,2,10),(50,3,17),(51,4,10),(52,2,11),(53,3,16),(54,4,11),(55,3,19),(56,2,12),(57,4,12),(58,2,13),(59,3,18),(60,4,13),(61,2,14),(62,3,21),(63,4,14),(64,3,25),(65,2,15),(66,4,15),(67,3,24),(68,2,17),(69,4,17),(70,3,26),(71,2,16),(72,4,16),(73,2,19),(74,4,19),(75,2,18),(76,4,18),(77,2,21),(78,4,21),(79,2,20),(80,4,20),(81,2,23),(82,4,23),(83,2,22),(84,4,22),(85,5,1),(86,5,2),(87,5,3),(88,5,4),(89,5,5),(90,5,6),(91,5,8),(92,5,10),(93,5,11),(94,5,12),(95,5,13),(96,5,14),(97,5,15),(98,5,17),(99,5,16),(100,5,19),(101,5,18),(102,5,21),(103,5,22),(104,5,24),(105,5,27);
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

-- Dump completed on 2015-10-09  0:38:37
