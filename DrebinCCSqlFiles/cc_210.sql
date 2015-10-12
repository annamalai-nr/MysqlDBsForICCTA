-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_210
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (23,'(.*).SEND_SMS'),(35,'NULL-CONSTANT'),(22,'android.intent.action.BATTERY_CHANGED'),(30,'android.intent.action.BATTERY_LOW'),(27,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.DELETE'),(37,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(28,'android.intent.action.SCREEN_OFF'),(29,'android.intent.action.SCREEN_ON'),(38,'android.intent.action.SENDTO'),(6,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(21,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(25,'android.settings.APPLICATION_DETAILS_SETTINGS'),(24,'android.settings.LOCATION_SOURCE_SETTINGS'),(20,'com.android.mms.transaction.MESSAGE_SENT'),(7,'com.android.vending.INSTALL_REFERRER'),(11,'com.extend.battery.CHECK'),(14,'com.extend.battery.DELIVERED_SMS'),(15,'com.extend.battery.SEND_SMS'),(13,'com.extend.battery.SENT_SMS'),(10,'com.extend.battery.UPDATE'),(2,'com.extend.battery.intent.http.SHOW'),(16,'com.extend.battery.notification.action.ALARM'),(18,'com.extend.battery.notification.action.CANCEL'),(17,'com.extend.battery.notification.action.CLICKED'),(36,'com.flurry.android.ACTION_CATALOG'),(8,'com.itframework.installer.updater.CHECK'),(9,'com.itframework.installer.updater.UPDATE'),(19,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(32,'com.notifad.android.PushServiceStart(.*)'),(12,'com.notifad.android.PushServiceStart1'),(33,'com.notifad.android.PushServiceStartInvalid'),(34,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(31,'com.notifad.android.PushServiceStartinvalid Id'),(3,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',71),(2,'com.extend.battery',83),(3,'com.extend.battery',91),(4,'com.extend.battery',89),(5,'com.extend.battery',103),(6,'com.extender.sc',47);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,2,'com.extend.battery.Splash'),(4,1,'com.extend.battery.TaskKillerActivity'),(5,1,'com.extend.battery.UninstallerActivity'),(6,2,'com.extend.battery.TabHandler'),(7,1,'com.extend.battery.SecurityAuditActivity'),(8,3,'com.extend.battery.Splash'),(9,2,'com.extend.battery.TaskKillerActivity'),(10,4,'com.extend.battery.Splash'),(11,1,'com.extend.battery.InstallerActivity'),(12,2,'com.extend.battery.UninstallerActivity'),(13,1,'com.extend.battery.FeaturesActivity'),(14,4,'com.extend.battery.TabHandler'),(15,2,'com.extend.battery.SecurityAuditActivity'),(16,3,'com.extend.battery.TabHandler'),(17,1,'com.extend.battery.BoosterActivity'),(18,4,'com.extend.battery.TaskKillerActivity'),(19,2,'com.extend.battery.InstallerActivity'),(20,4,'com.extend.battery.UninstallerActivity'),(21,3,'com.extend.battery.TaskKillerActivity'),(22,1,'com.extend.battery.BatteryActivity'),(23,4,'com.extend.battery.SecurityAuditActivity'),(24,3,'com.extend.battery.UninstallerActivity'),(25,2,'com.extend.battery.FeaturesActivity'),(26,4,'com.extend.battery.InstallerActivity'),(27,1,'com.extend.battery.RatingActivity'),(28,4,'com.extend.battery.FeaturesActivity'),(29,3,'com.extend.battery.SecurityAuditActivity'),(30,2,'com.extend.battery.BoosterActivity'),(31,4,'com.extend.battery.BoosterActivity'),(32,1,'com.extend.battery.BatteryService'),(33,4,'com.extend.battery.BatteryActivity'),(34,3,'com.extend.battery.InstallerActivity'),(35,2,'com.extend.battery.BatteryActivity'),(36,4,'com.extend.battery.RatingActivity'),(37,1,'com.zanalytics.sms.SmsReceiverService'),(38,4,'com.extend.battery.BatteryService'),(39,3,'com.extend.battery.FeaturesActivity'),(40,2,'com.extend.battery.RatingActivity'),(41,4,'com.zanalytics.sms.SmsReceiverService'),(42,1,'com.zanalytics.sms.SmsReceiver'),(43,4,'com.extend.battery.NotificationReceiver'),(44,3,'com.extend.battery.BoosterActivity'),(45,2,'com.extend.battery.BatteryService'),(46,3,'com.extend.battery.BatteryActivity'),(47,2,'com.zanalytics.sms.SmsReceiverService'),(48,4,'com.extend.battery.BootReceiver'),(49,3,'com.extend.battery.RatingActivity'),(50,2,'com.zanalytics.sms.SmsReceiver'),(51,4,'com.zanalytics.sms.SmsReceiver'),(52,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(53,1,'com.tapjoy.TapjoyReferralTracker'),(54,2,'com.tapjoy.TapjoyReferralTracker'),(55,4,'com.tapjoy.TapjoyReferralTracker'),(56,3,'com.itframework.installer.util.NonMarketDialogActivity'),(57,3,'com.extend.battery.BatteryService'),(58,5,'com.extend.battery.Splash'),(59,3,'com.itframework.installer.util.InstallWorker'),(60,3,'com.zanalytics.sms.SmsReceiverService'),(61,5,'com.extend.battery.TabHandler'),(62,3,'com.itframework.installer.updater.UpdateReceiver'),(63,5,'com.extend.battery.TaskKillerActivity'),(64,5,'com.extend.battery.UninstallerActivity'),(65,5,'com.extend.battery.SecurityAuditActivity'),(66,5,'com.extend.battery.InstallerActivity'),(67,3,'com.extend.battery.NotificationReceiver'),(68,5,'com.extend.battery.FeaturesActivity'),(69,5,'com.extend.battery.BoosterActivity'),(70,3,'com.extend.battery.BootReceiver'),(71,5,'com.extend.battery.BatteryActivity'),(72,5,'com.extend.battery.RatingActivity'),(73,3,'com.zanalytics.sms.SmsReceiver'),(74,5,'com.extend.battery.UninstallingDialog'),(75,5,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(76,5,'com.itframework.installer.util.NonMarketDialogActivity'),(77,5,'com.extend.battery.BatteryService'),(78,5,'com.itframework.installer.util.InstallWorker'),(79,5,'com.itframework.network.NetworkOperationService'),(80,5,'com.zanalytics.sms.SmsReceiverService'),(81,5,'com.zanalytics.sms.SmsSendService'),(82,5,'com.itframework.base.util.UploadAnalyticsService'),(83,6,'com.androidupgrade.battery.Splash'),(84,5,'com.itframework.notification.NotificationService'),(85,5,'com.itframework.installer.updater.UpdateReceiver'),(86,6,'com.androidupgrade.battery.TabHandler'),(87,6,'com.androidupgrade.battery.TaskKillerActivity'),(88,6,'com.androidupgrade.battery.UninstallerActivity'),(89,6,'com.androidupgrade.battery.SecurityAuditActivity'),(90,5,'com.extend.battery.NotificationReceiver'),(91,6,'com.androidupgrade.battery.InstallerActivity'),(92,6,'com.androidupgrade.battery.FeaturesActivity'),(93,5,'com.extend.battery.BootReceiver'),(94,6,'com.androidupgrade.battery.BoosterActivity'),(95,6,'com.androidupgrade.battery.BatteryActivity'),(96,5,'com.itframework.network.NetworkOperationReceiver'),(97,6,'com.androidupgrade.battery.RatingActivity'),(98,5,'com.zanalytics.sms.SmsReceiver'),(99,6,'com.notifad.android.PushAds'),(100,6,'com.androidupgrade.battery.BatteryService'),(101,6,'com.notifad.android.PushService'),(102,5,'com.zanalytics.sms.SmsSentReceiver'),(103,6,'com.mobsqueeze.sms.SmsReceiverService'),(104,5,'com.zanalytics.sms.SmsDeliveredReceiver'),(105,6,'com.notifad.android.UserDetailsReceiver'),(106,6,'com.notifad.android.MessageReceiver'),(107,5,'com.zanalytics.sms.SmsSendReceiver'),(108,6,'com.notifad.android.DeliveryReceiver'),(109,6,'com.androidupgrade.battery.BootReceiver'),(110,5,'com.itframework.notification.NotificationReceiver'),(111,6,'com.mobsqueeze.ReferralReceiver'),(112,6,'com.mobsqueeze.sms.SmsReceiver'),(113,6,'com.tapjoy.TapjoyReferralTracker'),(114,1,'com.extend.battery.g'),(115,1,'com.extend.battery.i'),(116,1,'com.extend.battery.j'),(117,1,'com.zanalytics.sms.c'),(118,1,'com.zanalytics.sms.a'),(119,2,'com.extend.battery.ay'),(120,1,'com.extend.battery.ay'),(121,2,'com.extend.battery.aw'),(122,2,'com.extend.battery.s'),(123,1,'com.zanalytics.sms.j'),(124,1,'com.extend.battery.s'),(125,1,'com.extend.battery.aw'),(126,2,'com.extend.battery.f'),(127,2,'com.extend.battery.g'),(128,2,'com.extend.battery.i'),(129,2,'com.extend.battery.j'),(130,2,'com.zanalytics.sms.c'),(131,1,'com.extend.battery.f'),(132,2,'com.zanalytics.sms.j'),(133,2,'com.zanalytics.sms.a'),(134,6,'com.androidupgrade.battery.BoosterActivity$6'),(135,3,'com.zanalytics.sms.a'),(136,6,'com.androidupgrade.battery.Splash$1'),(137,6,'com.mobsqueeze.sms.SendIntent'),(138,3,'com.extend.battery.d'),(139,3,'com.extend.battery.c'),(140,3,'com.extend.battery.a'),(141,6,'com.androidupgrade.battery.AdUtils$5'),(142,3,'com.zanalytics.sms.c'),(143,3,'com.extend.battery.ba'),(144,3,'com.extend.battery.k'),(145,3,'com.itframework.installer.a.b'),(146,6,'com.mobsqueeze.sms.SmsReceiverService$1'),(147,6,'com.androidupgrade.battery.BatteryService$1'),(148,6,'com.androidupgrade.battery.BatteryActivity$1'),(149,6,'com.androidupgrade.battery.BoosterActivity$1'),(150,6,'com.mobsqueeze.sms.SmsUtils'),(151,3,'com.zanalytics.sms.j'),(152,3,'com.extend.battery.features.s'),(153,3,'com.extend.battery.bb'),(154,6,'com.flurry.android.u'),(155,6,'com.androidupgrade.battery.TaskKillerActivity$1'),(156,5,'com.extend.battery.bd'),(157,5,'com.extend.battery.a'),(158,5,'com.itframework.base.service.AlarmReceiver'),(159,5,'com.extend.battery.h'),(160,5,'com.extend.battery.i'),(161,5,'com.extend.battery.features.s'),(162,5,'com.itframework.base.service.WakefulIntentService'),(163,5,'com.zanalytics.sms.d'),(164,5,'com.itframework.installer.a.b'),(165,5,'com.itframework.installer.b.a'),(166,5,'com.extend.battery.be'),(167,5,'com.extend.battery.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,35,'technology'),(2,42,'pdus'),(3,22,'technology'),(4,50,'pdus'),(5,101,'appId'),(6,59,'downloadingWait'),(7,99,'apikey'),(8,59,'downloadingProgress'),(9,101,'link'),(10,99,'campId'),(11,59,'url'),(12,59,'showNotifications'),(13,101,'title'),(14,59,'downloadingTitle'),(15,101,'imageurl'),(16,101,'campId'),(17,101,'creativeId'),(18,99,'number'),(19,101,'number'),(20,99,'header'),(21,101,'adType'),(22,59,'downloadingTicker'),(23,108,'appId'),(24,99,'appId'),(25,52,'finishedText'),(26,52,'downloadingTitle'),(27,108,'sms'),(28,52,'downloadingTicker'),(29,59,'downloadStarting'),(30,52,'downloadingWait'),(31,111,'referrer'),(32,108,'url'),(33,108,'text'),(34,59,'forceDownload'),(35,99,'creativeId'),(36,101,'type'),(37,101,'apikey'),(38,101,'url'),(39,101,'header'),(40,99,'url'),(41,52,'filename'),(42,108,'creativeId'),(43,95,'technology'),(44,59,'finishedText'),(45,59,'finishedTitle'),(46,52,'finishedTitle'),(47,59,'finishedTicker'),(48,101,'text'),(49,99,'sms'),(50,101,'sms'),(51,108,'campId'),(52,108,'imageurl'),(53,108,'title'),(54,99,'test'),(55,52,'callbackIntent'),(56,59,'filename'),(57,52,'downloadingToast'),(58,67,'clickevent'),(59,46,'technology'),(60,52,'url'),(61,59,'callbackIntent'),(62,73,'pdus'),(63,59,'downloadingToast'),(64,52,'downloadingProgress'),(65,52,'finishedTicker'),(66,52,'forceDownload'),(67,52,'downloadStarting'),(68,62,'URL'),(69,108,'number'),(70,112,'pdus'),(71,101,'testMode'),(72,108,'header'),(73,99,'adType'),(74,108,'apikey'),(75,75,'downloadingProgress'),(76,84,'NOTIFICATION_CATEGORY'),(77,71,'technology'),(78,75,'downloadingToast'),(79,78,'url'),(80,110,'BROADCAST_INTENT'),(81,75,'finishedTitle'),(82,85,'URL'),(83,78,'finishedText'),(84,110,'NOTIFICATION_CATEGORY'),(85,102,'MessageExtra'),(86,78,'downloadingTicker'),(87,75,'downloadStarting'),(88,110,'CLICKED_EVENT'),(89,75,'url'),(90,75,'forceDownload'),(91,90,'clickevent'),(92,75,'finishedText'),(93,84,'CLICKED_EVENT'),(94,78,'downloadingToast'),(95,78,'callbackIntent'),(96,75,'callbackIntent'),(97,78,'filename'),(98,75,'finishedTicker'),(99,84,'BROADCAST_INTENT'),(100,84,'ACTION'),(101,78,'forceDownload'),(102,98,'pdus'),(103,102,'TagEvent'),(104,84,'DO_AUTO_CANCEL'),(105,78,'downloadingProgress'),(106,102,'PhoneNumber'),(107,78,'downloadStarting'),(108,78,'showNotifications'),(109,78,'finishedTitle'),(110,78,'downloadingWait'),(111,75,'filename'),(112,75,'downloadingTicker'),(113,110,'DO_AUTO_CANCEL'),(114,102,'StoreMessage'),(115,102,'SendIntent'),(116,75,'downloadingTitle'),(117,102,'Message'),(118,78,'downloadingTitle'),(119,102,'TryAgain'),(120,78,'finishedTicker'),(121,75,'downloadingWait'),(122,102,'NextMessage');
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,10,'a',1,NULL,NULL),(10,9,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,19,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,34,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,41,'s',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'r',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'r',1,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'s',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,105,'r',0,NULL,NULL),(106,106,'r',0,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',0,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,127,'r',1,NULL,NULL),(119,128,'r',1,NULL,NULL),(120,129,'r',1,NULL,NULL),(121,130,'r',1,NULL,NULL),(122,138,'r',1,NULL,NULL),(123,139,'r',1,NULL,NULL),(124,140,'r',1,NULL,NULL),(125,142,'r',1,NULL,NULL),(126,105,'r',1,NULL,NULL),(127,108,'r',1,NULL,NULL),(128,146,'r',1,NULL,NULL),(129,147,'r',1,NULL,NULL),(130,148,'r',1,NULL,NULL),(131,106,'r',1,NULL,NULL),(132,149,'r',1,NULL,NULL),(133,157,'r',1,NULL,NULL),(134,158,'r',1,NULL,NULL),(135,159,'r',1,NULL,NULL),(136,160,'r',1,NULL,NULL),(137,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,11),(3,2,5),(4,2,22),(5,2,7),(6,3,10),(7,3,35),(8,4,31),(9,4,35),(10,5,35),(11,5,21),(12,6,4),(13,6,22),(14,7,3),(15,8,42),(16,9,50),(17,10,35),(18,10,21),(19,10,12),(20,10,15),(21,10,31),(22,11,3),(23,12,22),(24,12,17),(25,13,21),(26,14,42),(27,15,31),(28,15,35),(29,16,22),(30,16,11),(31,17,15),(32,18,5),(33,18,7),(34,18,22),(35,18,17),(36,18,11),(37,19,1),(38,20,42),(39,21,12),(40,21,35),(41,22,7),(42,23,12),(43,23,35),(44,23,21),(45,23,15),(46,24,1),(47,25,1),(48,26,35),(49,26,15),(50,27,1),(51,28,22),(52,29,22),(53,29,17),(54,30,3),(55,31,5),(56,31,11),(57,31,22),(58,31,7),(59,32,35),(60,32,12),(61,33,2),(62,34,5),(63,34,22),(64,35,11),(65,36,50),(66,37,22),(67,37,7),(68,38,5),(69,38,22),(70,39,15),(71,39,35),(72,39,21),(73,39,12),(74,40,35),(75,41,50),(76,42,12),(77,43,6),(78,44,3),(79,45,30),(80,45,46),(81,46,88),(82,46,89),(83,46,91),(84,46,94),(85,46,95),(86,47,25),(87,47,46),(88,47,30),(89,47,36),(90,48,83),(91,49,105),(92,50,44),(93,51,25),(94,51,46),(95,52,73),(96,53,95),(97,53,89),(98,53,88),(99,53,91),(100,54,30),(101,55,112),(102,56,91),(103,57,95),(104,57,91),(105,57,88),(106,57,89),(107,58,99),(108,59,8),(109,60,44),(110,60,46),(111,60,30),(112,60,25),(113,60,36),(114,61,88),(115,62,59),(116,63,44),(117,63,46),(118,64,46),(119,64,36),(120,65,88),(121,65,95),(122,66,106),(123,67,8),(124,68,70),(125,69,36),(126,70,89),(127,70,95),(128,71,46),(129,72,88),(130,72,95),(131,73,8),(132,74,8),(133,75,112),(134,76,44),(135,76,46),(136,77,16),(137,78,59),(138,79,52),(139,80,83),(140,81,95),(141,81,94),(142,82,108),(143,83,73),(144,84,52),(145,85,30),(146,85,46),(147,85,25),(148,85,36),(149,86,73),(150,87,46),(151,87,20),(152,88,67),(153,89,46),(154,89,25),(155,90,59),(156,91,89),(157,91,88),(158,91,94),(159,91,95),(160,91,91),(161,92,25),(162,93,89),(163,94,99),(164,95,112),(165,96,95),(166,96,87),(167,97,83),(168,98,83),(169,99,99),(170,100,99),(171,101,95),(172,102,99),(173,103,95),(174,103,94),(175,104,95),(176,105,95),(177,105,91),(178,106,58),(179,107,78),(180,108,69),(181,108,71),(182,109,69),(183,110,58),(184,111,66),(185,111,71),(186,112,58),(187,113,71),(188,114,102),(189,115,71),(190,115,69),(191,116,75),(192,117,71),(193,117,66),(194,117,65),(195,117,64),(196,118,84),(197,119,98),(198,119,107),(199,119,102),(200,120,98),(201,121,74),(202,122,78),(203,123,71),(204,123,64),(205,124,77),(206,125,61),(207,126,63),(208,126,71),(209,127,110),(210,128,84),(211,129,69),(212,129,71),(213,129,64),(214,129,65),(215,129,66),(216,130,64),(217,131,75),(218,132,64),(219,132,71),(220,133,78),(221,134,65),(222,135,65),(223,135,71),(224,136,58),(225,137,74),(226,137,71),(227,138,66),(228,139,93),(229,140,98),(230,141,90);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(2,118,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(3,119,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(4,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(5,19,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(6,120,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(7,121,'<com.extend.battery.aw: void run()>',73,'a',NULL),(8,42,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(9,50,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(10,122,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(11,121,'<com.extend.battery.aw: void run()>',139,'a',NULL),(12,17,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(13,19,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(14,123,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(15,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(16,11,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(17,15,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(18,124,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(19,125,'<com.extend.battery.aw: void run()>',135,'a',NULL),(20,123,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(21,12,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(22,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(23,126,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(24,125,'<com.extend.battery.aw: void run()>',199,'a',NULL),(25,125,'<com.extend.battery.aw: void run()>',71,'a',NULL),(26,15,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(27,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(28,22,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(29,17,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(30,3,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(31,131,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(32,12,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(33,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(34,5,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(35,11,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(36,132,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(37,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(38,5,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(39,133,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(40,35,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(41,132,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(42,12,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(43,6,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(44,121,'<com.extend.battery.aw: void run()>',205,'a',NULL),(45,29,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(46,134,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(47,135,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(48,136,'<com.androidupgrade.battery.Splash$1: void run()>',193,'a',NULL),(49,105,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(50,44,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(51,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(52,73,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(53,137,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(54,29,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(55,112,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(56,91,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(57,141,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(58,99,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(59,143,'<com.extend.battery.ba: void run()>',58,'a',NULL),(60,144,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(61,88,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(62,145,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(63,44,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(64,34,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(65,88,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(66,106,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(67,8,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(68,70,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(69,34,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(70,89,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(71,46,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(72,88,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(73,143,'<com.extend.battery.ba: void run()>',212,'a',NULL),(74,143,'<com.extend.battery.ba: void run()>',118,'a',NULL),(75,150,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(76,44,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(77,16,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(78,59,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(79,52,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(80,136,'<com.androidupgrade.battery.Splash$1: void run()>',131,'a',NULL),(81,94,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(82,108,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(83,151,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(84,52,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(85,152,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(86,151,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(87,153,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(88,67,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(89,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(90,59,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(91,154,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(92,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(93,89,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(94,99,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(95,150,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(96,155,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(97,83,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(98,136,'<com.androidupgrade.battery.Splash$1: void run()>',69,'a',NULL),(99,99,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(100,99,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL),(101,95,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(102,99,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(103,94,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(104,95,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(105,91,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(106,156,'<com.extend.battery.bd: void run()>',212,'a',NULL),(107,78,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',69,'a',NULL),(108,69,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(109,69,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(110,156,'<com.extend.battery.bd: void run()>',58,'a',NULL),(111,66,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(112,58,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(113,71,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(114,102,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(115,69,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(116,75,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(117,161,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(118,84,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',112,'r',0),(119,162,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(120,163,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(121,74,'<com.extend.battery.UninstallingDialog: void onBackPressed()>',10,'a',NULL),(122,164,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(123,64,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(124,165,'<com.itframework.installer.b.a: void run()>',30,'a',NULL),(125,61,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(126,166,'<com.extend.battery.be: void onClick(android.view.View)>',6,'a',NULL),(127,110,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(128,84,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',82,'a',0),(129,167,'<com.extend.battery.o: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(130,64,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(131,75,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(132,64,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(133,78,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',131,'a',0),(134,65,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(135,65,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(136,156,'<com.extend.battery.bd: void run()>',118,'a',NULL),(137,74,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',21,'a',NULL),(138,66,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(139,93,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(140,163,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(141,90,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,23),(3,10,24),(4,13,6),(5,17,24),(6,20,25),(7,21,26),(8,24,6),(9,25,25),(10,33,6),(11,37,6),(12,39,26),(13,40,23),(14,42,1),(15,46,24),(16,47,23),(17,49,31),(18,50,32),(19,51,6),(20,52,33),(21,55,23),(22,58,25),(23,60,6),(24,61,6),(25,62,32),(26,64,34),(27,65,24),(28,66,1),(29,69,26),(30,70,33),(31,72,31),(32,74,32),(33,75,6),(34,87,32),(35,89,32),(36,90,6),(37,91,32),(38,92,32),(39,94,32),(40,95,26),(41,96,6),(42,97,35),(43,98,35),(44,99,1),(45,100,36),(46,101,36),(47,104,25),(48,105,32),(49,106,34),(50,110,37),(51,111,38),(52,113,32),(53,114,34),(54,119,6),(55,121,6),(56,129,6),(57,132,15),(58,134,1),(59,135,26),(60,155,24),(61,156,1),(62,161,25),(63,164,1),(64,165,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,42,1),(3,66,1),(4,97,2),(5,98,2),(6,99,1),(7,100,2),(8,101,2),(9,134,4),(10,156,1),(11,164,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'NULL-CONSTANT'),(2,3,'com/extend/battery/FeaturesActivity'),(3,4,'com/extend/battery/FeaturesActivity'),(4,2,'com/zanalytics/sms/SmsReceiverService'),(5,5,'com/extend/battery/FeaturesActivity'),(6,6,'com/extend/battery/FeaturesActivity'),(7,7,'com/extend/battery/TabHandler'),(8,8,'com/zanalytics/sms/SmsReceiverService'),(9,9,'com/zanalytics/sms/SmsReceiverService'),(10,11,'com/extend/battery/TabHandler'),(11,12,'com/extend/battery/RatingActivity'),(12,14,'com/extend/battery/RatingActivity'),(13,15,'com/extend/battery/FeaturesActivity'),(14,16,'com.android.settings.InstalledAppDetails'),(15,18,'com.android.settings.InstalledAppDetails'),(16,19,'com/extend/battery/TabHandler'),(17,22,'com.android.settings.InstalledAppDetails'),(18,23,'com.android.settings.InstalledAppDetails'),(19,26,'com/extend/battery/TabHandler'),(20,27,'com/extend/battery/TabHandler'),(21,28,'com/extend/battery/FeaturesActivity'),(22,29,'com/extend/battery/TabHandler'),(23,30,'com/extend/battery/FeaturesActivity'),(24,31,'com/extend/battery/FeaturesActivity'),(25,32,'com/extend/battery/TabHandler'),(26,34,'com/extend/battery/FeaturesActivity'),(27,35,'com/extend/battery/BatteryService'),(28,36,'com/extend/battery/FeaturesActivity'),(29,38,'com/extend/battery/FeaturesActivity'),(30,40,'com/zanalytics/sms/SmsReceiverService'),(31,41,'com/extend/battery/FeaturesActivity'),(32,42,'NULL-CONSTANT'),(33,43,'com/extend/battery/BatteryService'),(34,44,'com/extend/battery/TabHandler'),(35,45,'com/extend/battery/FeaturesActivity'),(36,48,'com/androidupgrade/battery/TabHandler'),(37,47,'com/zanalytics/sms/SmsReceiverService'),(38,53,'com/extend/battery/FeaturesActivity'),(39,54,'com/zanalytics/sms/SmsReceiverService'),(40,56,'com.android.settings.InstalledAppDetails'),(41,55,'com/mobsqueeze/sms/SmsReceiverService'),(42,57,'com.android.settings.InstalledAppDetails'),(43,59,'com/mobsqueeze/sms/SmsReceiverService'),(44,63,'com/extend/battery/TabHandler'),(45,66,'NULL-CONSTANT'),(46,67,'com/extend/battery/RatingActivity'),(47,68,'com/extend/battery/FeaturesActivity'),(48,71,'com/extend/battery/TabHandler'),(49,73,'com/extend/battery/BatteryService'),(50,76,'com/androidupgrade/battery/FeaturesActivity'),(51,77,'com/extend/battery/FeaturesActivity'),(52,78,'com/androidupgrade/battery/FeaturesActivity'),(53,79,'com/extend/battery/TabHandler'),(54,80,'com/extend/battery/TabHandler'),(55,81,'com/extend/battery/FeaturesActivity'),(56,82,'com/extend/battery/BatteryService'),(57,83,'com/itframework/installer/util/InstallWorker'),(58,85,'com/androidupgrade/battery/TabHandler'),(59,86,'com/androidupgrade/battery/FeaturesActivity'),(60,84,'com/itframework/installer/util/InstallWorker'),(61,88,'com/itframework/installer/util/NonMarketDialogActivity'),(62,93,'com/extend/battery/FeaturesActivity'),(63,99,'NULL-CONSTANT'),(64,102,'com.android.settings.InstalledAppDetails'),(65,103,'com.android.settings.InstalledAppDetails'),(66,107,'com/androidupgrade/battery/FeaturesActivity'),(67,108,'com/androidupgrade/battery/TabHandler'),(68,109,'com/androidupgrade/battery/TabHandler'),(69,112,'com/androidupgrade/battery/BatteryService'),(70,115,'com/androidupgrade/battery/RatingActivity'),(71,116,'com/androidupgrade/battery/FeaturesActivity'),(72,117,'com/androidupgrade/battery/FeaturesActivity'),(73,118,'com/extend/battery/TabHandler'),(74,120,'com/extend/battery/FeaturesActivity'),(75,122,'com/extend/battery/TabHandler'),(76,123,'com/extend/battery/FeaturesActivity'),(77,124,'com/extend/battery/TabHandler'),(78,125,'com/extend/battery/FeaturesActivity'),(79,126,'com/extend/battery/RatingActivity'),(80,127,'com/itframework/installer/util/InstallWorker'),(81,128,'com/itframework/installer/util/InstallWorker'),(82,130,'com/itframework/base/util/UploadAnalyticsService'),(83,131,'com/zanalytics/sms/SmsSendService'),(84,132,'com/zanalytics/sms/SmsSendService'),(85,133,'com/zanalytics/sms/SmsReceiverService'),(86,136,'com/extend/battery/UninstallingDialog'),(87,137,'com/extend/battery/BatteryService'),(88,138,'com/extend/battery/FeaturesActivity'),(89,139,'com/itframework/notification/NotificationService'),(90,140,'com/itframework/notification/NotificationService'),(91,141,'com/itframework/notification/NotificationService'),(92,142,'com/itframework/notification/NotificationService'),(93,143,'com/itframework/notification/NotificationService'),(94,144,'com/itframework/notification/NotificationService'),(95,145,'com/itframework/notification/NotificationService'),(96,146,'com/itframework/notification/NotificationService'),(97,147,'com/itframework/notification/NotificationService'),(98,148,'com/itframework/notification/NotificationService'),(99,149,'com/itframework/notification/NotificationService'),(100,150,'com/itframework/notification/NotificationService'),(101,151,'com/itframework/notification/NotificationService'),(102,152,'com/itframework/notification/NotificationService'),(103,153,'com/itframework/notification/NotificationService'),(104,154,'com/itframework/notification/NotificationService'),(105,156,'NULL-CONSTANT'),(106,157,'com/itframework/installer/util/NonMarketDialogActivity'),(107,158,'com/extend/battery/FeaturesActivity'),(108,159,'com.android.settings.InstalledAppDetails'),(109,160,'com.android.settings.InstalledAppDetails'),(110,162,'com/extend/battery/FeaturesActivity'),(111,163,'com/extend/battery/TabHandler'),(112,166,'com/extend/battery/BatteryService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,20,3),(3,21,5),(4,24,6),(5,25,7),(6,33,8),(7,37,9),(8,39,11),(9,51,13),(10,58,14),(11,60,15),(12,61,16),(13,69,17),(14,75,18),(15,90,21),(16,95,23),(17,96,24),(18,104,25),(19,110,27),(20,111,28),(21,119,29),(22,121,30),(23,129,32),(24,135,34),(25,161,35),(26,165,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TryCount'),(2,2,'NextMessage'),(3,2,'TryAgain'),(4,2,'StoreMessage'),(5,2,'Message'),(6,2,'Delay'),(7,2,'PhoneNumber'),(8,2,'TagEvent'),(9,8,'result'),(10,8,'abort'),(11,9,'result'),(12,9,'abort'),(13,16,'com.android.settings.ApplicationPkgName'),(14,18,'pkg'),(15,22,'com.android.settings.ApplicationPkgName'),(16,23,'pkg'),(17,29,'cacheUrl'),(18,32,'cacheUrl'),(19,40,'TryCount'),(20,40,'NextMessage'),(21,40,'TryAgain'),(22,40,'StoreMessage'),(23,40,'Message'),(24,40,'Delay'),(25,40,'PhoneNumber'),(26,40,'TagEvent'),(27,47,'TryCount'),(28,47,'NextMessage'),(29,47,'TryAgain'),(30,47,'StoreMessage'),(31,47,'Message'),(32,47,'Delay'),(33,47,'PhoneNumber'),(34,47,'TagEvent'),(35,49,'appId'),(36,49,'type'),(37,49,'apikey'),(38,50,'appId'),(39,50,'type'),(40,50,'apikey'),(41,52,'appId'),(42,52,'type'),(43,52,'apikey'),(44,54,'result'),(45,54,'abort'),(46,55,'TryCount'),(47,55,'NextMessage'),(48,55,'TryAgain'),(49,55,'StoreMessage'),(50,55,'Message'),(51,56,'com.android.settings.ApplicationPkgName'),(52,55,'Delay'),(53,55,'PhoneNumber'),(54,55,'TagEvent'),(55,57,'pkg'),(56,59,'result'),(57,59,'abort'),(58,62,'<INTENT>'),(59,62,'type'),(60,64,'<INTENT>'),(61,64,'type'),(62,70,'icon'),(63,70,'appId'),(64,70,'testMode'),(65,71,'cacheUrl'),(66,70,'type'),(67,70,'apikey'),(68,72,'icon'),(69,72,'appId'),(70,72,'testMode'),(71,72,'type'),(72,72,'apikey'),(73,74,'icon'),(74,74,'appId'),(75,74,'testMode'),(76,74,'type'),(77,74,'apikey'),(78,83,'downloadingProgress'),(79,83,'downloadingWait'),(80,83,'downloadingToast'),(81,83,'finishedText'),(82,83,'downloadingTicker'),(83,83,'downloadingTitle'),(84,83,'filename'),(85,83,'finishedTicker'),(86,83,'forceDownload'),(87,83,'finishedTitle'),(88,83,'url'),(89,83,'downloadStarting'),(90,84,'downloadingProgress'),(91,84,'downloadingWait'),(92,84,'downloadingToast'),(93,84,'callbackIntent'),(94,84,'finishedText'),(95,84,'downloadingTicker'),(96,84,'downloadingTitle'),(97,84,'filename'),(98,84,'finishedTicker'),(99,84,'forceDownload'),(100,84,'finishedTitle'),(101,84,'url'),(102,84,'downloadStarting'),(103,87,'campId'),(104,87,'title'),(105,87,'text'),(106,87,'appId'),(107,87,'creativeId'),(108,87,'expiry_time'),(109,87,'link'),(110,87,'adType'),(111,87,'type'),(112,87,'imageurl'),(113,87,'header'),(114,87,'apikey'),(115,89,'campId'),(116,89,'title'),(117,89,'text'),(118,89,'appId'),(119,89,'creativeId'),(120,89,'expiry_time'),(121,89,'link'),(122,89,'adType'),(123,89,'type'),(124,89,'imageurl'),(125,89,'apikey'),(126,91,'title'),(127,91,'text'),(128,91,'appId'),(129,91,'expiry_time'),(130,91,'number'),(131,91,'adType'),(132,91,'type'),(133,91,'imageurl'),(134,91,'apikey'),(135,92,'title'),(136,92,'text'),(137,92,'appId'),(138,92,'expiry_time'),(139,92,'type'),(140,92,'imageurl'),(141,92,'apikey'),(142,94,'campId'),(143,94,'title'),(144,94,'text'),(145,94,'appId'),(146,94,'creativeId'),(147,94,'expiry_time'),(148,94,'number'),(149,94,'adType'),(150,94,'sms'),(151,94,'type'),(152,94,'imageurl'),(153,94,'apikey'),(154,97,'u'),(155,97,'o'),(156,98,'u'),(157,100,'u'),(158,101,'u'),(159,101,'o'),(160,102,'com.android.settings.ApplicationPkgName'),(161,103,'pkg'),(162,105,'<INTENT>'),(163,105,'type'),(164,106,'<INTENT>'),(165,106,'type'),(166,108,'cacheUrl'),(167,111,'sms_body'),(168,113,'<INTENT>'),(169,113,'type'),(170,114,'<INTENT>'),(171,114,'type'),(172,124,'cacheUrl'),(173,127,'downloadingProgress'),(174,127,'downloadingWait'),(175,127,'downloadingToast'),(176,127,'finishedText'),(177,127,'downloadingTicker'),(178,127,'downloadingTitle'),(179,127,'filename'),(180,127,'finishedTicker'),(181,127,'forceDownload'),(182,127,'finishedTitle'),(183,127,'url'),(184,127,'downloadStarting'),(185,128,'downloadingProgress'),(186,128,'downloadingWait'),(187,128,'downloadingToast'),(188,128,'callbackIntent'),(189,128,'finishedText'),(190,128,'downloadingTicker'),(191,128,'downloadingTitle'),(192,128,'filename'),(193,128,'finishedTicker'),(194,128,'forceDownload'),(195,128,'finishedTitle'),(196,128,'url'),(197,128,'downloadStarting'),(198,132,'TryCount'),(199,132,'NextMessage'),(200,132,'TryAgain'),(201,132,'StoreMessage'),(202,132,'Message'),(203,132,'Delay'),(204,132,'PhoneNumber'),(205,132,'TagEvent'),(206,132,'MessageExtra'),(207,133,'result'),(208,133,'abort'),(209,139,'NOTIFICATION_CATEGORY'),(210,139,'ACTION'),(211,139,'NOTIFICATION_ID'),(212,140,'DO_AUTO_CANCEL'),(213,140,'NOTIFICATION_CATEGORY'),(214,140,'ACTION'),(215,140,'NOTIFICATION_ID'),(216,141,'DO_AUTO_CANCEL'),(217,141,'CLICKED_EVENT'),(218,141,'ACTION'),(219,141,'BROADCAST_INTENT'),(220,141,'NOTIFICATION_ID'),(221,142,'ACTION'),(222,142,'NOTIFICATION_ID'),(223,143,'CLICKED_EVENT'),(224,143,'ACTION'),(225,143,'BROADCAST_INTENT'),(226,143,'NOTIFICATION_ID'),(227,144,'DO_AUTO_CANCEL'),(228,144,'CLICKED_EVENT'),(229,144,'NOTIFICATION_CATEGORY'),(230,144,'ACTION'),(231,144,'BROADCAST_INTENT'),(232,144,'NOTIFICATION_ID'),(233,145,'CLICKED_EVENT'),(234,145,'ACTION'),(235,145,'NOTIFICATION_ID'),(236,146,'CLICKED_EVENT'),(237,146,'DO_AUTO_CANCEL'),(238,146,'NOTIFICATION_CATEGORY'),(239,146,'ACTION'),(240,146,'NOTIFICATION_ID'),(241,147,'DO_AUTO_CANCEL'),(242,147,'NOTIFICATION_CATEGORY'),(243,147,'ACTION'),(244,147,'BROADCAST_INTENT'),(245,147,'NOTIFICATION_ID'),(246,148,'DO_AUTO_CANCEL'),(247,148,'ACTION'),(248,148,'BROADCAST_INTENT'),(249,148,'NOTIFICATION_ID'),(250,149,'CLICKED_EVENT'),(251,149,'NOTIFICATION_CATEGORY'),(252,149,'ACTION'),(253,149,'BROADCAST_INTENT'),(254,149,'NOTIFICATION_ID'),(255,150,'ACTION'),(256,150,'BROADCAST_INTENT'),(257,150,'NOTIFICATION_ID'),(258,151,'DO_AUTO_CANCEL'),(259,151,'CLICKED_EVENT'),(260,151,'ACTION'),(261,151,'NOTIFICATION_ID'),(262,152,'NOTIFICATION_CATEGORY'),(263,152,'ACTION'),(264,152,'BROADCAST_INTENT'),(265,152,'NOTIFICATION_ID'),(266,153,'DO_AUTO_CANCEL'),(267,153,'ACTION'),(268,153,'NOTIFICATION_ID'),(269,154,'CLICKED_EVENT'),(270,154,'NOTIFICATION_CATEGORY'),(271,154,'ACTION'),(272,154,'NOTIFICATION_ID'),(273,159,'com.android.settings.ApplicationPkgName'),(274,160,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,3),(9,9,5),(10,10,4),(11,11,5),(12,12,3),(13,13,4),(14,14,3),(15,15,4),(16,16,3),(17,17,7),(18,18,4),(19,19,6),(20,20,7),(21,21,7),(22,22,7),(23,23,1),(24,24,8),(25,25,9),(26,26,2),(27,27,5),(28,28,4),(29,29,3),(30,30,6),(31,31,1),(32,32,10),(33,33,11),(34,34,2),(35,35,5),(36,36,4),(37,37,3),(38,38,12),(39,39,13),(40,40,14),(41,41,15),(42,42,5),(43,43,16),(44,44,7),(45,45,17),(46,46,18),(47,47,19),(48,48,20),(49,49,21),(50,50,4),(51,51,7),(52,52,22),(53,53,22),(54,54,22),(55,55,22),(56,56,22),(57,57,22),(58,58,22),(59,59,22),(60,60,22),(61,61,22),(62,62,22),(63,63,22),(64,64,29),(65,64,30),(66,64,27),(67,64,28),(68,64,22),(69,65,22),(70,66,27),(71,66,28),(72,66,29),(73,66,30),(74,66,22),(75,67,22),(76,68,28),(77,68,27),(78,68,30),(79,68,29),(80,68,22),(81,69,22),(82,70,22),(83,71,30),(84,71,29),(85,71,28),(86,71,27),(87,71,22),(88,72,22),(89,73,27),(90,73,30),(91,73,28),(92,73,29),(93,73,22),(94,74,22),(95,75,30),(96,75,28),(97,75,29),(98,75,27),(99,75,22),(100,76,22),(101,77,22),(102,78,22),(103,79,22),(104,80,22),(105,81,22),(106,82,22),(107,83,22),(108,84,22),(109,85,22),(110,86,22),(111,87,22),(112,88,22),(113,89,22),(114,90,22),(115,91,22),(116,92,22),(117,93,27),(118,93,22),(119,93,28),(120,93,29),(121,93,30),(122,94,22),(123,95,22),(124,95,29),(125,95,28),(126,95,27),(127,95,30),(128,96,28),(129,96,27),(130,96,30),(131,96,29),(132,96,22),(133,97,22),(134,97,30),(135,97,28),(136,97,29),(137,97,27),(138,98,22),(139,98,29),(140,98,30),(141,98,27),(142,98,28),(143,99,22),(144,99,28),(145,99,29),(146,99,27),(147,99,30),(148,100,22),(149,101,22),(150,102,22),(151,103,22),(152,104,22),(153,105,22),(154,106,22),(155,107,22),(156,108,22),(157,109,22),(158,110,22),(159,111,22),(160,112,22),(161,113,22),(162,114,22),(163,115,22),(164,116,22),(165,117,22),(166,118,22),(167,119,22),(168,120,22),(169,121,22),(170,122,22),(171,123,22),(172,124,22),(173,125,22),(174,126,22),(175,127,22),(176,128,22),(177,129,22),(178,130,22),(179,131,22),(180,132,22),(181,133,22),(182,134,22),(183,135,22),(184,136,22),(185,137,22),(186,138,22),(187,139,22),(188,140,22),(189,141,22),(190,142,22),(191,143,22),(192,144,22),(193,145,22),(194,146,22),(195,146,27),(196,146,28),(197,146,29),(198,146,30),(199,147,22),(200,147,27),(201,147,28),(202,147,29),(203,147,30),(204,148,22),(205,148,29),(206,148,30),(207,148,27),(208,148,28),(209,149,27),(210,149,22),(211,149,28),(212,149,29),(213,149,30),(214,150,30),(215,150,29),(216,150,28),(217,150,27),(218,150,22),(219,151,30),(220,151,29),(221,151,28),(222,151,27),(223,151,22),(224,152,22),(225,152,28),(226,152,27),(227,152,30),(228,152,29),(229,153,22),(230,153,27),(231,153,30),(232,153,29),(233,153,28),(234,154,29),(235,154,30),(236,154,27),(237,154,28),(238,155,30),(239,155,28),(240,155,29),(241,155,27),(242,156,27),(243,156,28),(244,156,29),(245,156,30),(246,157,30),(247,157,28),(248,157,29),(249,157,27),(250,158,28),(251,158,27),(252,158,30),(253,158,29),(254,159,28),(255,159,29),(256,159,27),(257,159,30),(258,160,27),(259,160,28),(260,160,29),(261,160,30),(262,161,27),(263,161,30),(264,161,28),(265,161,29),(266,162,27),(267,162,28),(268,162,29),(269,162,30),(270,163,30),(271,163,29),(272,163,28),(273,163,27),(274,164,28),(275,164,27),(276,164,30),(277,164,29),(278,165,22),(279,166,22),(280,167,22),(281,168,22),(282,169,22),(283,170,22),(284,171,22),(285,172,22),(286,173,22),(287,174,22),(288,175,22),(289,176,22),(290,177,22),(291,178,22),(292,179,22),(293,180,22),(294,181,22),(295,182,22),(296,183,22),(297,184,22),(298,185,22),(299,186,22),(300,187,22),(301,188,22),(302,189,22),(303,190,22),(304,191,22),(305,192,22),(306,193,22),(307,194,22),(308,195,22),(309,196,22),(310,197,22),(311,198,22),(312,199,22),(313,200,22),(314,201,22),(315,202,22),(316,203,22),(317,204,22),(318,205,22),(319,206,22),(320,207,22),(321,208,22),(322,209,22),(323,210,22),(324,211,22),(325,212,22),(326,213,22),(327,214,22),(328,215,27),(329,215,28),(330,215,29),(331,215,22),(332,215,30),(333,216,28),(334,216,27),(335,216,30),(336,216,22),(337,216,29),(338,217,22),(339,217,30),(340,217,29),(341,217,28),(342,217,27),(343,218,22),(344,218,28),(345,218,27),(346,218,30),(347,218,29),(348,219,22),(349,219,29),(350,219,28),(351,219,27),(352,219,30),(353,220,22),(354,220,27),(355,220,28),(356,220,29),(357,220,30),(358,221,30),(359,221,28),(360,221,29),(361,221,27),(362,221,22),(363,222,29),(364,222,30),(365,222,28),(366,222,27),(367,222,22),(368,223,30),(369,223,22),(370,223,27),(371,223,29),(372,223,28),(373,224,22),(374,224,30),(375,224,29),(376,224,28),(377,224,27),(378,225,30),(379,225,28),(380,225,29),(381,225,27),(382,225,22),(383,226,29),(384,226,30),(385,226,27),(386,226,28),(387,226,22),(388,227,28),(389,227,29),(390,227,27),(391,227,30),(392,227,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,19,3),(7,19,2),(8,23,1),(9,30,2),(10,30,3),(11,31,1),(12,42,4);
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
INSERT INTO `IFData` VALUES (1,49,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,13,'application','vnd.android.package-archive'),(2,37,'application','vnd.android.package-archive'),(3,60,'application','vnd.android.package-archive'),(4,75,'application','vnd.android.package-archive'),(5,96,'application','vnd.android.package-archive'),(6,119,'application','vnd.android.package-archive'),(7,165,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'NULL-CONSTANT'),(2,3,'com.extend.battery'),(3,4,'com.extend.battery'),(4,2,'com.extend.battery'),(5,5,'com.extend.battery'),(6,6,'com.extend.battery'),(7,7,'com.extend.battery'),(8,8,'com.extend.battery'),(9,9,'com.extend.battery'),(10,11,'com.extend.battery'),(11,12,'com.extend.battery'),(12,14,'com.extend.battery'),(13,15,'com.extend.battery'),(14,16,'com.android.settings'),(15,18,'com.android.settings'),(16,19,'com.extend.battery'),(17,22,'com.android.settings'),(18,23,'com.android.settings'),(19,26,'com.extend.battery'),(20,27,'com.extend.battery'),(21,28,'com.extend.battery'),(22,29,'com.extend.battery'),(23,30,'com.extend.battery'),(24,31,'com.extend.battery'),(25,32,'com.extend.battery'),(26,34,'com.extend.battery'),(27,35,'com.extend.battery'),(28,36,'com.extend.battery'),(29,38,'com.extend.battery'),(30,40,'com.extend.battery'),(31,41,'com.extend.battery'),(32,42,'NULL-CONSTANT'),(33,43,'com.extend.battery'),(34,44,'com.extend.battery'),(35,45,'com.extend.battery'),(36,48,'com.extender.sc'),(37,47,'com.extend.battery'),(38,53,'com.extend.battery'),(39,54,'com.extend.battery'),(40,56,'com.android.settings'),(41,55,'com.extender.sc'),(42,57,'com.android.settings'),(43,59,'com.extender.sc'),(44,63,'com.extend.battery'),(45,66,'NULL-CONSTANT'),(46,67,'com.extend.battery'),(47,68,'com.extend.battery'),(48,71,'com.extend.battery'),(49,73,'com.extend.battery'),(50,76,'com.extender.sc'),(51,77,'com.extend.battery'),(52,78,'com.extender.sc'),(53,79,'com.extend.battery'),(54,80,'com.extend.battery'),(55,81,'com.extend.battery'),(56,82,'com.extend.battery'),(57,83,'com.extend.battery'),(58,85,'com.extender.sc'),(59,86,'com.extender.sc'),(60,84,'com.extend.battery'),(61,88,'com.extend.battery'),(62,93,'com.extend.battery'),(63,99,'NULL-CONSTANT'),(64,102,'com.android.settings'),(65,103,'com.android.settings'),(66,107,'com.extender.sc'),(67,108,'com.extender.sc'),(68,109,'com.extender.sc'),(69,112,'com.extender.sc'),(70,115,'com.extender.sc'),(71,116,'com.extender.sc'),(72,117,'com.extender.sc'),(73,118,'com.extend.battery'),(74,120,'com.extend.battery'),(75,122,'com.extend.battery'),(76,123,'com.extend.battery'),(77,124,'com.extend.battery'),(78,125,'com.extend.battery'),(79,126,'com.extend.battery'),(80,127,'com.extend.battery'),(81,128,'com.extend.battery'),(82,130,'com.extend.battery'),(83,131,'com.extend.battery'),(84,132,'com.extend.battery'),(85,133,'com.extend.battery'),(86,136,'com.extend.battery'),(87,137,'com.extend.battery'),(88,138,'com.extend.battery'),(89,139,'com.extend.battery'),(90,140,'com.extend.battery'),(91,141,'com.extend.battery'),(92,142,'com.extend.battery'),(93,143,'com.extend.battery'),(94,144,'com.extend.battery'),(95,145,'com.extend.battery'),(96,146,'com.extend.battery'),(97,147,'com.extend.battery'),(98,148,'com.extend.battery'),(99,149,'com.extend.battery'),(100,150,'com.extend.battery'),(101,151,'com.extend.battery'),(102,152,'com.extend.battery'),(103,153,'com.extend.battery'),(104,154,'com.extend.battery'),(105,156,'NULL-CONSTANT'),(106,157,'com.extend.battery'),(107,158,'com.extend.battery'),(108,159,'com.android.settings'),(109,160,'com.android.settings'),(110,162,'com.extend.battery'),(111,163,'com.extend.battery'),(112,166,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,9,0),(4,8,0),(5,9,0),(6,43,0),(7,43,0),(8,42,0),(9,48,0),(10,42,0),(11,48,0),(12,50,0),(13,51,0),(14,51,0),(15,50,0),(16,51,0),(17,53,0),(18,51,0),(19,52,0),(20,54,0),(21,55,0),(22,55,0),(23,58,0),(24,62,0),(25,62,0),(26,67,0),(27,70,0),(28,73,0),(29,73,0),(30,75,0),(31,83,0),(32,85,0),(33,85,0),(34,90,0),(35,93,0),(36,98,0),(37,98,0),(38,101,0),(39,102,0),(40,104,0),(41,107,0),(42,109,0),(43,110,0),(44,111,0),(45,110,0),(46,110,0),(47,112,0),(48,112,0),(49,112,0),(50,112,0),(51,113,0),(52,114,0),(53,115,0),(54,53,0),(55,116,0),(56,42,0),(57,117,0),(58,114,0),(59,115,0),(60,53,0),(61,116,0),(62,42,0),(63,117,0),(64,118,0),(65,114,0),(66,119,0),(67,115,0),(68,54,0),(69,53,0),(70,116,0),(71,120,0),(72,42,0),(73,50,0),(74,117,0),(75,121,0),(76,118,0),(77,119,0),(78,54,0),(79,120,0),(80,50,0),(81,121,0),(82,118,0),(83,119,0),(84,54,0),(85,120,0),(86,50,0),(87,121,0),(88,118,0),(89,119,0),(90,54,0),(91,120,0),(92,50,0),(93,114,0),(94,121,0),(95,115,0),(96,53,0),(97,116,0),(98,42,0),(99,117,0),(100,122,0),(101,62,0),(102,123,0),(103,124,0),(104,73,0),(105,67,0),(106,125,0),(107,70,0),(108,126,0),(109,127,0),(110,122,0),(111,62,0),(112,128,0),(113,123,0),(114,124,0),(115,129,0),(116,73,0),(117,111,0),(118,67,0),(119,125,0),(120,130,0),(121,70,0),(122,112,0),(123,109,0),(124,113,0),(125,122,0),(126,131,0),(127,62,0),(128,123,0),(129,132,0),(130,124,0),(131,73,0),(132,67,0),(133,125,0),(134,70,0),(135,126,0),(136,127,0),(137,128,0),(138,129,0),(139,111,0),(140,130,0),(141,112,0),(142,109,0),(143,113,0),(144,131,0),(145,132,0),(146,122,0),(147,62,0),(148,123,0),(149,124,0),(150,73,0),(151,67,0),(152,125,0),(153,70,0),(154,126,0),(155,127,0),(156,128,0),(157,129,0),(158,111,0),(159,130,0),(160,112,0),(161,109,0),(162,113,0),(163,131,0),(164,132,0),(165,126,0),(166,127,0),(167,128,0),(168,129,0),(169,111,0),(170,130,0),(171,112,0),(172,109,0),(173,113,0),(174,131,0),(175,132,0),(176,107,0),(177,85,0),(178,102,0),(179,104,0),(180,133,0),(181,134,0),(182,135,0),(183,136,0),(184,98,0),(185,110,0),(186,137,0),(187,90,0),(188,93,0),(189,107,0),(190,85,0),(191,102,0),(192,104,0),(193,133,0),(194,134,0),(195,135,0),(196,136,0),(197,98,0),(198,110,0),(199,137,0),(200,90,0),(201,93,0),(202,107,0),(203,85,0),(204,102,0),(205,104,0),(206,133,0),(207,134,0),(208,135,0),(209,136,0),(210,98,0),(211,110,0),(212,137,0),(213,90,0),(214,93,0),(215,107,0),(216,85,0),(217,102,0),(218,104,0),(219,133,0),(220,134,0),(221,135,0),(222,136,0),(223,98,0),(224,110,0),(225,137,0),(226,90,0),(227,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,1,0),(18,17,0,0),(19,19,0,0),(20,17,1,0),(21,21,1,0),(22,22,0,0),(23,22,0,0),(24,23,1,0),(25,22,1,0),(26,24,0,0),(27,25,0,0),(28,26,0,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,0,0),(33,31,1,0),(34,32,0,0),(35,33,0,0),(36,34,0,0),(37,35,1,0),(38,37,0,0),(39,38,1,0),(40,39,0,0),(41,40,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,1,0),(47,47,0,0),(48,48,0,0),(49,49,1,0),(50,49,1,0),(51,50,1,0),(52,49,1,0),(53,51,0,0),(54,52,0,0),(55,53,0,0),(56,54,0,0),(57,54,0,0),(58,54,1,0),(59,55,0,0),(60,56,1,0),(61,57,1,0),(62,58,1,0),(63,59,0,0),(64,58,1,0),(65,60,1,0),(66,61,0,0),(67,63,0,0),(68,64,0,0),(69,65,1,0),(70,66,1,0),(71,67,0,0),(72,66,1,0),(73,68,0,0),(74,66,1,0),(75,69,1,0),(76,70,0,0),(77,71,0,0),(78,72,0,0),(79,73,0,0),(80,74,0,0),(81,76,0,0),(82,77,0,0),(83,79,0,0),(84,79,0,0),(85,80,0,0),(86,81,0,0),(87,82,1,0),(88,84,0,0),(89,82,1,0),(90,85,1,0),(91,82,1,0),(92,82,1,0),(93,87,0,0),(94,82,1,0),(95,89,1,0),(96,90,1,0),(97,91,1,0),(98,91,1,0),(99,92,0,0),(100,91,1,0),(101,91,1,0),(102,93,0,0),(103,93,0,0),(104,93,1,0),(105,94,1,0),(106,94,1,0),(107,96,0,0),(108,97,0,0),(109,98,0,0),(110,99,1,0),(111,100,1,0),(112,101,0,0),(113,102,1,0),(114,102,1,0),(115,103,0,0),(116,104,0,0),(117,105,0,0),(118,106,0,0),(119,107,1,0),(120,108,0,0),(121,109,1,0),(122,110,0,0),(123,111,0,0),(124,112,0,0),(125,113,0,0),(126,115,0,0),(127,116,0,0),(128,116,0,0),(129,117,1,0),(130,119,0,0),(131,119,0,0),(132,119,0,0),(133,119,0,0),(134,121,1,0),(135,123,1,0),(136,124,0,0),(137,125,0,0),(138,126,0,0),(139,127,0,0),(140,127,0,0),(141,127,0,0),(142,127,0,0),(143,127,0,0),(144,127,0,0),(145,127,0,0),(146,127,0,0),(147,127,0,0),(148,127,0,0),(149,127,0,0),(150,127,0,0),(151,127,0,0),(152,127,0,0),(153,127,0,0),(154,127,0,0),(155,129,1,0),(156,130,0,0),(157,131,0,0),(158,132,0,0),(159,134,0,0),(160,134,0,0),(161,134,1,0),(162,135,0,0),(163,136,0,0),(164,137,1,0),(165,138,1,0),(166,139,0,0);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(16,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(10,'android.permission.DISABLE_KEYGUARD'),(27,'android.permission.GET_ACCOUNTS'),(24,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(13,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(26,'android.permission.READ_CONTACTS'),(25,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://mms',NULL,NULL,NULL),(3,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(4,NULL,NULL,'content://sms',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://mms',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(14,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://mms',NULL,NULL,NULL),(20,NULL,NULL,'content://mms',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(26,NULL,NULL,'content://sms',NULL,NULL,NULL),(27,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(28,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(31,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://sms',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'content://mms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,14,2),(2,20,4),(3,36,10),(4,41,12),(5,75,19),(6,83,20),(7,86,22),(8,95,26),(9,114,31),(10,120,33),(11,140,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,2,3),(14,1,11),(15,2,4),(16,1,12),(17,2,5),(18,1,13),(19,2,6),(20,3,1),(21,1,14),(22,2,7),(23,3,2),(24,1,15),(25,3,3),(26,2,8),(27,1,17),(28,2,9),(29,3,4),(30,1,16),(31,3,5),(32,2,10),(33,1,19),(34,2,11),(35,3,6),(36,1,18),(37,2,12),(38,3,8),(39,1,21),(40,3,9),(41,2,13),(42,1,20),(43,2,14),(44,3,10),(45,2,15),(46,3,11),(47,3,12),(48,2,17),(49,2,16),(50,3,13),(51,4,1),(52,3,14),(53,4,2),(54,2,19),(55,4,3),(56,3,15),(57,2,18),(58,3,16),(59,4,4),(60,2,21),(61,4,5),(62,2,20),(63,3,19),(64,4,6),(65,4,7),(66,3,18),(67,4,8),(68,4,9),(69,3,21),(70,4,10),(71,4,11),(72,3,20),(73,4,12),(74,4,13),(75,3,23),(76,4,14),(77,4,15),(78,3,22),(79,4,17),(80,4,16),(81,3,24),(82,4,19),(83,4,18),(84,4,21),(85,4,20),(86,5,1),(87,5,2),(88,5,3),(89,5,4),(90,5,5),(91,5,6),(92,5,8),(93,5,9),(94,5,10),(95,5,11),(96,5,12),(97,5,13),(98,5,14),(99,5,15),(100,5,16),(101,5,19),(102,5,18),(103,5,21),(104,5,20),(105,5,23),(106,5,22),(107,5,25),(108,5,24),(109,6,1),(110,6,2),(111,6,3),(112,6,4),(113,6,5),(114,6,6),(115,6,7),(116,6,8),(117,6,9),(118,6,10),(119,6,11),(120,6,12),(121,6,13),(122,6,14),(123,6,15),(124,6,16),(125,6,19),(126,6,18),(127,6,21),(128,6,20),(129,6,25),(130,6,27),(131,6,26);
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

-- Dump completed on 2015-10-09  0:38:36
