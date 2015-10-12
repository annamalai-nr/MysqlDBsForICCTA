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
) ENGINE=InnoDB AUTO_INCREMENT=2216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,29,2,2,NULL),(2,29,6,2,NULL),(3,29,14,2,NULL),(4,29,16,2,NULL),(5,29,61,2,NULL),(6,39,1,2,NULL),(7,25,1,2,NULL),(8,21,1,2,NULL),(9,20,1,2,NULL),(10,95,1,2,NULL),(11,58,1,2,NULL),(12,135,1,2,NULL),(13,161,1,2,NULL),(14,134,1,2,NULL),(15,164,1,2,NULL),(16,69,1,2,NULL),(17,104,1,2,NULL),(18,62,1,2,NULL),(19,64,1,2,NULL),(20,105,1,2,NULL),(21,106,1,2,NULL),(22,110,1,2,NULL),(23,111,1,2,NULL),(24,113,1,2,NULL),(25,114,1,2,NULL),(26,49,1,2,NULL),(27,50,1,2,NULL),(28,52,1,2,NULL),(29,70,1,2,NULL),(30,72,1,2,NULL),(31,74,1,2,NULL),(32,87,1,2,NULL),(33,89,1,2,NULL),(34,91,1,2,NULL),(35,92,1,2,NULL),(36,94,1,2,NULL),(37,35,32,2,NULL),(38,35,38,2,NULL),(39,35,45,2,NULL),(40,35,57,2,NULL),(41,35,77,2,NULL),(42,36,13,2,NULL),(43,36,26,2,NULL),(44,36,28,2,NULL),(45,36,40,2,NULL),(46,36,68,2,NULL),(47,39,42,2,NULL),(48,39,53,2,NULL),(49,39,114,2,NULL),(50,39,115,2,NULL),(51,39,116,2,NULL),(52,39,117,2,NULL),(53,39,3,2,NULL),(54,39,50,2,NULL),(55,39,54,2,NULL),(56,39,118,2,NULL),(57,39,119,2,NULL),(58,39,120,2,NULL),(59,39,121,2,NULL),(60,39,8,2,NULL),(61,39,52,2,NULL),(62,39,62,2,NULL),(63,39,67,2,NULL),(64,39,70,2,NULL),(65,39,73,2,NULL),(66,39,122,2,NULL),(67,39,123,2,NULL),(68,39,124,2,NULL),(69,39,125,2,NULL),(70,39,9,2,NULL),(71,39,43,2,NULL),(72,39,48,2,NULL),(73,39,51,2,NULL),(74,39,55,2,NULL),(75,39,58,2,NULL),(76,39,75,2,NULL),(77,39,85,2,NULL),(78,39,90,2,NULL),(79,39,93,2,NULL),(80,39,137,2,NULL),(81,39,98,2,NULL),(82,39,102,2,NULL),(83,39,104,2,NULL),(84,39,107,2,NULL),(85,39,110,2,NULL),(86,39,133,2,NULL),(87,39,134,2,NULL),(88,39,135,2,NULL),(89,39,136,2,NULL),(90,39,83,2,NULL),(91,39,101,2,NULL),(92,39,126,2,NULL),(93,39,131,2,NULL),(94,39,127,2,NULL),(95,39,109,2,NULL),(96,39,111,2,NULL),(97,39,112,2,NULL),(98,39,113,2,NULL),(99,39,128,2,NULL),(100,39,129,2,NULL),(101,39,130,2,NULL),(102,39,132,2,NULL),(103,38,13,2,NULL),(104,38,26,2,NULL),(105,38,28,2,NULL),(106,38,40,2,NULL),(107,38,68,2,NULL),(108,25,42,2,NULL),(109,25,53,2,NULL),(110,25,114,2,NULL),(111,25,115,2,NULL),(112,25,116,2,NULL),(113,25,117,2,NULL),(114,25,3,2,NULL),(115,25,50,2,NULL),(116,25,54,2,NULL),(117,25,118,2,NULL),(118,25,119,2,NULL),(119,25,120,2,NULL),(120,25,121,2,NULL),(121,25,8,2,NULL),(122,25,52,2,NULL),(123,25,62,2,NULL),(124,25,67,2,NULL),(125,25,70,2,NULL),(126,25,73,2,NULL),(127,25,122,2,NULL),(128,25,123,2,NULL),(129,108,86,2,NULL),(130,25,124,2,NULL),(131,25,83,2,NULL),(132,25,125,2,NULL),(133,25,9,2,NULL),(134,21,83,2,NULL),(135,25,43,2,NULL),(136,20,83,2,NULL),(137,25,48,2,NULL),(138,25,51,2,NULL),(139,95,83,2,NULL),(140,25,55,2,NULL),(141,58,83,2,NULL),(142,25,58,2,NULL),(143,135,83,2,NULL),(144,25,75,2,NULL),(145,161,83,2,NULL),(146,25,85,2,NULL),(147,25,90,2,NULL),(148,134,83,2,NULL),(149,25,93,2,NULL),(150,164,83,2,NULL),(151,25,137,2,NULL),(152,25,98,2,NULL),(153,69,83,2,NULL),(154,25,102,2,NULL),(155,104,83,2,NULL),(156,25,104,2,NULL),(157,62,83,2,NULL),(158,25,107,2,NULL),(159,64,83,2,NULL),(160,25,110,2,NULL),(161,105,83,2,NULL),(162,25,133,2,NULL),(163,106,83,2,NULL),(164,25,134,2,NULL),(165,25,135,2,NULL),(166,110,83,2,NULL),(167,25,136,2,NULL),(168,25,101,2,NULL),(169,111,83,2,NULL),(170,25,126,2,NULL),(171,25,131,2,NULL),(172,113,83,2,NULL),(173,25,127,2,NULL),(174,25,109,2,NULL),(175,114,83,2,NULL),(176,25,111,2,NULL),(177,25,112,2,NULL),(178,49,83,2,NULL),(179,25,113,2,NULL),(180,25,128,2,NULL),(181,25,128,2,NULL),(182,50,83,2,NULL),(183,25,129,2,NULL),(184,25,130,2,NULL),(185,52,83,2,NULL),(186,25,132,2,NULL),(187,15,13,2,NULL),(188,15,26,2,NULL),(189,70,83,2,NULL),(190,15,28,2,NULL),(191,15,40,2,NULL),(192,72,83,2,NULL),(193,15,68,2,NULL),(194,74,83,2,NULL),(195,12,27,2,NULL),(196,12,34,2,NULL),(197,87,83,2,NULL),(198,12,41,2,NULL),(199,12,49,2,NULL),(200,89,83,2,NULL),(201,12,72,2,NULL),(202,91,83,2,NULL),(203,31,13,2,NULL),(204,31,26,2,NULL),(205,92,83,2,NULL),(206,31,28,2,NULL),(207,31,40,2,NULL),(208,94,83,2,NULL),(209,31,68,2,NULL),(210,78,92,2,NULL),(211,30,13,2,NULL),(212,30,26,2,NULL),(213,69,42,2,NULL),(214,30,28,2,NULL),(215,30,40,2,NULL),(216,69,53,2,NULL),(217,30,68,2,NULL),(218,69,114,2,NULL),(219,8,37,2,NULL),(220,8,39,2,NULL),(221,69,115,2,NULL),(222,8,47,2,NULL),(223,8,60,2,NULL),(224,69,116,2,NULL),(225,8,80,2,NULL),(226,69,117,2,NULL),(227,21,42,2,NULL),(228,20,42,2,NULL),(229,69,3,2,NULL),(230,95,42,2,NULL),(231,58,42,2,NULL),(232,69,50,2,NULL),(233,135,42,2,NULL),(234,161,42,2,NULL),(235,69,54,2,NULL),(236,134,42,2,NULL),(237,69,118,2,NULL),(238,164,42,2,NULL),(239,104,42,2,NULL),(240,69,119,2,NULL),(241,62,42,2,NULL),(242,69,120,2,NULL),(243,64,42,2,NULL),(244,105,42,2,NULL),(245,69,121,2,NULL),(246,106,42,2,NULL),(247,110,42,2,NULL),(248,69,8,2,NULL),(249,111,42,2,NULL),(250,113,42,2,NULL),(251,69,52,2,NULL),(252,114,42,2,NULL),(253,49,42,2,NULL),(254,69,62,2,NULL),(255,50,42,2,NULL),(256,69,67,2,NULL),(257,52,42,2,NULL),(258,70,42,2,NULL),(259,69,70,2,NULL),(260,72,42,2,NULL),(261,72,42,2,NULL),(262,69,73,2,NULL),(263,74,42,2,NULL),(264,69,122,2,NULL),(265,87,42,2,NULL),(266,69,123,2,NULL),(267,89,42,2,NULL),(268,91,42,2,NULL),(269,69,124,2,NULL),(270,92,42,2,NULL),(271,69,125,2,NULL),(272,94,42,2,NULL),(273,69,9,2,NULL),(274,21,53,2,NULL),(275,69,43,2,NULL),(276,20,53,2,NULL),(277,95,53,2,NULL),(278,69,48,2,NULL),(279,58,53,2,NULL),(280,135,53,2,NULL),(281,69,51,2,NULL),(282,161,53,2,NULL),(283,134,53,2,NULL),(284,69,55,2,NULL),(285,164,53,2,NULL),(286,69,58,2,NULL),(287,104,53,2,NULL),(288,62,53,2,NULL),(289,69,75,2,NULL),(290,64,53,2,NULL),(291,69,85,2,NULL),(292,105,53,2,NULL),(293,106,53,2,NULL),(294,69,90,2,NULL),(295,110,53,2,NULL),(296,111,53,2,NULL),(297,69,93,2,NULL),(298,113,53,2,NULL),(299,114,53,2,NULL),(300,69,137,2,NULL),(301,49,53,2,NULL),(302,50,53,2,NULL),(303,69,98,2,NULL),(304,52,53,2,NULL),(305,70,53,2,NULL),(306,69,102,2,NULL),(307,72,53,2,NULL),(308,69,104,2,NULL),(309,74,53,2,NULL),(310,87,53,2,NULL),(311,69,107,2,NULL),(312,89,53,2,NULL),(313,69,110,2,NULL),(314,91,53,2,NULL),(315,92,53,2,NULL),(316,69,133,2,NULL),(317,94,53,2,NULL),(318,69,134,2,NULL),(319,21,114,2,NULL),(320,20,114,2,NULL),(321,95,114,2,NULL),(322,69,135,2,NULL),(323,58,114,2,NULL),(324,69,136,2,NULL),(325,135,114,2,NULL),(326,135,114,2,NULL),(327,161,114,2,NULL),(328,69,101,2,NULL),(329,134,114,2,NULL),(330,69,126,2,NULL),(331,164,114,2,NULL),(332,164,114,2,NULL),(333,69,131,2,NULL),(334,104,114,2,NULL),(335,62,114,2,NULL),(336,64,114,2,NULL),(337,69,127,2,NULL),(338,105,114,2,NULL),(339,106,114,2,NULL),(340,106,114,2,NULL),(341,69,109,2,NULL),(342,110,114,2,NULL),(343,69,111,2,NULL),(344,111,114,2,NULL),(345,113,114,2,NULL),(346,69,112,2,NULL),(347,114,114,2,NULL),(348,114,114,2,NULL),(349,69,113,2,NULL),(350,49,114,2,NULL),(351,69,128,2,NULL),(352,50,114,2,NULL),(353,50,114,2,NULL),(354,69,129,2,NULL),(355,52,114,2,NULL),(356,52,114,2,NULL),(357,69,130,2,NULL),(358,69,132,2,NULL),(359,70,114,2,NULL),(360,72,114,2,NULL),(361,76,92,2,NULL),(362,74,114,2,NULL),(363,87,114,2,NULL),(364,104,115,2,NULL),(365,89,114,2,NULL),(366,91,114,2,NULL),(367,104,116,2,NULL),(368,92,114,2,NULL),(369,94,114,2,NULL),(370,104,117,2,NULL),(371,21,115,2,NULL),(372,20,115,2,NULL),(373,104,3,2,NULL),(374,95,115,2,NULL),(375,104,50,2,NULL),(376,58,115,2,NULL),(377,135,115,2,NULL),(378,104,54,2,NULL),(379,161,115,2,NULL),(380,134,115,2,NULL),(381,164,115,2,NULL),(382,104,118,2,NULL),(383,62,115,2,NULL),(384,104,119,2,NULL),(385,64,115,2,NULL),(386,105,115,2,NULL),(387,104,120,2,NULL),(388,106,115,2,NULL),(389,104,121,2,NULL),(390,110,115,2,NULL),(391,110,115,2,NULL),(392,111,115,2,NULL),(393,111,115,2,NULL),(394,104,8,2,NULL),(395,104,52,2,NULL),(396,113,115,2,NULL),(397,114,115,2,NULL),(398,104,62,2,NULL),(399,49,115,2,NULL),(400,49,115,2,NULL),(401,50,115,2,NULL),(402,50,115,2,NULL),(403,104,67,2,NULL),(404,52,115,2,NULL),(405,104,70,2,NULL),(406,70,115,2,NULL),(407,104,73,2,NULL),(408,72,115,2,NULL),(409,74,115,2,NULL),(410,104,122,2,NULL),(411,87,115,2,NULL),(412,89,115,2,NULL),(413,104,123,2,NULL),(414,91,115,2,NULL),(415,104,124,2,NULL),(416,92,115,2,NULL),(417,94,115,2,NULL),(418,104,125,2,NULL),(419,21,116,2,NULL),(420,20,116,2,NULL),(421,104,9,2,NULL),(422,95,116,2,NULL),(423,104,43,2,NULL),(424,58,116,2,NULL),(425,135,116,2,NULL),(426,104,48,2,NULL),(427,161,116,2,NULL),(428,134,116,2,NULL),(429,104,51,2,NULL),(430,164,116,2,NULL),(431,62,116,2,NULL),(432,104,55,2,NULL),(433,64,116,2,NULL),(434,105,116,2,NULL),(435,104,58,2,NULL),(436,106,116,2,NULL),(437,110,116,2,NULL),(438,104,75,2,NULL),(439,111,116,2,NULL),(440,111,116,2,NULL),(441,104,85,2,NULL),(442,113,116,2,NULL),(443,114,116,2,NULL),(444,104,90,2,NULL),(445,49,116,2,NULL),(446,49,116,2,NULL),(447,104,93,2,NULL),(448,50,116,2,NULL),(449,50,116,2,NULL),(450,104,137,2,NULL),(451,52,116,2,NULL),(452,70,116,2,NULL),(453,104,98,2,NULL),(454,72,116,2,NULL),(455,74,116,2,NULL),(456,104,102,2,NULL),(457,87,116,2,NULL),(458,104,104,2,NULL),(459,89,116,2,NULL),(460,91,116,2,NULL),(461,104,107,2,NULL),(462,92,116,2,NULL),(463,94,116,2,NULL),(464,104,110,2,NULL),(465,21,117,2,NULL),(466,20,117,2,NULL),(467,104,133,2,NULL),(468,95,117,2,NULL),(469,104,134,2,NULL),(470,58,117,2,NULL),(471,135,117,2,NULL),(472,104,135,2,NULL),(473,161,117,2,NULL),(474,134,117,2,NULL),(475,104,136,2,NULL),(476,164,117,2,NULL),(477,62,117,2,NULL),(478,104,101,2,NULL),(479,64,117,2,NULL),(480,105,117,2,NULL),(481,104,126,2,NULL),(482,106,117,2,NULL),(483,110,117,2,NULL),(484,104,131,2,NULL),(485,111,117,2,NULL),(486,111,117,2,NULL),(487,104,127,2,NULL),(488,113,117,2,NULL),(489,114,117,2,NULL),(490,104,109,2,NULL),(491,49,117,2,NULL),(492,49,117,2,NULL),(493,104,111,2,NULL),(494,50,117,2,NULL),(495,52,117,2,NULL),(496,104,112,2,NULL),(497,70,117,2,NULL),(498,70,117,2,NULL),(499,104,113,2,NULL),(500,72,117,2,NULL),(501,72,117,2,NULL),(502,104,128,2,NULL),(503,74,117,2,NULL),(504,74,117,2,NULL),(505,104,129,2,NULL),(506,87,117,2,NULL),(507,89,117,2,NULL),(508,104,130,2,NULL),(509,91,117,2,NULL),(510,91,117,2,NULL),(511,104,132,2,NULL),(512,92,117,2,NULL),(513,94,117,2,NULL),(514,117,92,2,NULL),(515,32,2,2,NULL),(516,32,2,2,NULL),(517,86,92,2,NULL),(518,32,6,2,NULL),(519,32,14,2,NULL),(520,32,16,2,NULL),(521,115,97,2,NULL),(522,32,61,2,NULL),(523,21,3,2,NULL),(524,112,100,2,NULL),(525,20,3,2,NULL),(526,95,3,2,NULL),(527,116,92,2,NULL),(528,58,3,2,NULL),(529,135,3,2,NULL),(530,161,3,2,NULL),(531,134,3,2,NULL),(532,164,3,2,NULL),(533,62,3,2,NULL),(534,64,3,2,NULL),(535,105,3,2,NULL),(536,106,3,2,NULL),(537,110,3,2,NULL),(538,111,3,2,NULL),(539,113,3,2,NULL),(540,114,3,2,NULL),(541,49,3,2,NULL),(542,62,50,2,NULL),(543,50,3,2,NULL),(544,52,3,2,NULL),(545,64,50,2,NULL),(546,70,3,2,NULL),(547,105,50,2,NULL),(548,72,3,2,NULL),(549,74,3,2,NULL),(550,87,3,2,NULL),(551,106,50,2,NULL),(552,89,3,2,NULL),(553,91,3,2,NULL),(554,110,50,2,NULL),(555,92,3,2,NULL),(556,94,3,2,NULL),(557,111,50,2,NULL),(558,43,32,2,NULL),(559,113,50,2,NULL),(560,43,38,2,NULL),(561,43,45,2,NULL),(562,43,57,2,NULL),(563,114,50,2,NULL),(564,43,77,2,NULL),(565,34,13,2,NULL),(566,62,54,2,NULL),(567,34,26,2,NULL),(568,34,28,2,NULL),(569,64,54,2,NULL),(570,34,40,2,NULL),(571,34,68,2,NULL),(572,105,54,2,NULL),(573,21,50,2,NULL),(574,106,54,2,NULL),(575,21,54,2,NULL),(576,21,118,2,NULL),(577,110,54,2,NULL),(578,21,119,2,NULL),(579,21,120,2,NULL),(580,21,120,2,NULL),(581,111,54,2,NULL),(582,21,121,2,NULL),(583,21,121,2,NULL),(584,113,54,2,NULL),(585,21,8,2,NULL),(586,21,8,2,NULL),(587,114,54,2,NULL),(588,21,52,2,NULL),(589,21,62,2,NULL),(590,62,118,2,NULL),(591,21,67,2,NULL),(592,64,118,2,NULL),(593,21,67,2,NULL),(594,21,70,2,NULL),(595,105,118,2,NULL),(596,21,70,2,NULL),(597,21,73,2,NULL),(598,106,118,2,NULL),(599,21,122,2,NULL),(600,21,123,2,NULL),(601,110,118,2,NULL),(602,21,124,2,NULL),(603,21,125,2,NULL),(604,111,118,2,NULL),(605,21,9,2,NULL),(606,21,43,2,NULL),(607,21,43,2,NULL),(608,113,118,2,NULL),(609,21,48,2,NULL),(610,21,48,2,NULL),(611,114,118,2,NULL),(612,21,51,2,NULL),(613,21,51,2,NULL),(614,62,119,2,NULL),(615,21,55,2,NULL),(616,64,119,2,NULL),(617,21,58,2,NULL),(618,21,75,2,NULL),(619,21,75,2,NULL),(620,105,119,2,NULL),(621,21,85,2,NULL),(622,106,119,2,NULL),(623,21,90,2,NULL),(624,21,93,2,NULL),(625,110,119,2,NULL),(626,21,93,2,NULL),(627,21,137,2,NULL),(628,111,119,2,NULL),(629,21,98,2,NULL),(630,21,102,2,NULL),(631,113,119,2,NULL),(632,21,104,2,NULL),(633,21,107,2,NULL),(634,114,119,2,NULL),(635,21,110,2,NULL),(636,21,133,2,NULL),(637,62,120,2,NULL),(638,21,134,2,NULL),(639,21,135,2,NULL),(640,64,120,2,NULL),(641,21,136,2,NULL),(642,21,101,2,NULL),(643,105,120,2,NULL),(644,21,126,2,NULL),(645,21,131,2,NULL),(646,106,120,2,NULL),(647,21,127,2,NULL),(648,21,109,2,NULL),(649,110,120,2,NULL),(650,21,111,2,NULL),(651,21,112,2,NULL),(652,111,120,2,NULL),(653,21,113,2,NULL),(654,21,128,2,NULL),(655,113,120,2,NULL),(656,21,129,2,NULL),(657,21,130,2,NULL),(658,114,120,2,NULL),(659,21,132,2,NULL),(660,28,13,2,NULL),(661,62,121,2,NULL),(662,28,26,2,NULL),(663,28,28,2,NULL),(664,28,40,2,NULL),(665,64,121,2,NULL),(666,28,68,2,NULL),(667,105,121,2,NULL),(668,20,50,2,NULL),(669,20,54,2,NULL),(670,106,121,2,NULL),(671,20,118,2,NULL),(672,110,121,2,NULL),(673,20,119,2,NULL),(674,20,120,2,NULL),(675,111,121,2,NULL),(676,20,121,2,NULL),(677,20,8,2,NULL),(678,20,52,2,NULL),(679,113,121,2,NULL),(680,20,62,2,NULL),(681,20,67,2,NULL),(682,114,121,2,NULL),(683,20,70,2,NULL),(684,62,8,2,NULL),(685,20,73,2,NULL),(686,20,122,2,NULL),(687,64,8,2,NULL),(688,20,123,2,NULL),(689,20,124,2,NULL),(690,105,8,2,NULL),(691,20,125,2,NULL),(692,20,9,2,NULL),(693,106,8,2,NULL),(694,20,43,2,NULL),(695,20,48,2,NULL),(696,110,8,2,NULL),(697,20,51,2,NULL),(698,20,55,2,NULL),(699,111,8,2,NULL),(700,20,58,2,NULL),(701,20,75,2,NULL),(702,113,8,2,NULL),(703,20,85,2,NULL),(704,20,90,2,NULL),(705,114,8,2,NULL),(706,20,93,2,NULL),(707,20,137,2,NULL),(708,62,52,2,NULL),(709,20,98,2,NULL),(710,20,102,2,NULL),(711,64,52,2,NULL),(712,20,104,2,NULL),(713,20,107,2,NULL),(714,105,52,2,NULL),(715,20,110,2,NULL),(716,20,133,2,NULL),(717,106,52,2,NULL),(718,20,134,2,NULL),(719,20,135,2,NULL),(720,110,52,2,NULL),(721,20,136,2,NULL),(722,20,101,2,NULL),(723,111,52,2,NULL),(724,20,126,2,NULL),(725,20,131,2,NULL),(726,113,52,2,NULL),(727,20,127,2,NULL),(728,20,109,2,NULL),(729,114,52,2,NULL),(730,20,111,2,NULL),(731,20,112,2,NULL),(732,62,62,2,NULL),(733,20,113,2,NULL),(734,20,128,2,NULL),(735,64,62,2,NULL),(736,20,129,2,NULL),(737,20,130,2,NULL),(738,20,130,2,NULL),(739,105,62,2,NULL),(740,20,132,2,NULL),(741,106,62,2,NULL),(742,5,13,2,NULL),(743,5,13,2,NULL),(744,110,62,2,NULL),(745,5,26,2,NULL),(746,5,26,2,NULL),(747,111,62,2,NULL),(748,5,28,2,NULL),(749,5,28,2,NULL),(750,113,62,2,NULL),(751,5,40,2,NULL),(752,5,68,2,NULL),(753,114,62,2,NULL),(754,4,13,2,NULL),(755,4,26,2,NULL),(756,62,67,2,NULL),(757,4,28,2,NULL),(758,4,40,2,NULL),(759,64,67,2,NULL),(760,4,68,2,NULL),(761,14,27,2,NULL),(762,105,67,2,NULL),(763,14,34,2,NULL),(764,14,41,2,NULL),(765,106,67,2,NULL),(766,14,49,2,NULL),(767,14,72,2,NULL),(768,110,67,2,NULL),(769,41,13,2,NULL),(770,41,26,2,NULL),(771,111,67,2,NULL),(772,41,28,2,NULL),(773,41,40,2,NULL),(774,113,67,2,NULL),(775,41,68,2,NULL),(776,9,37,2,NULL),(777,114,67,2,NULL),(778,9,39,2,NULL),(779,9,47,2,NULL),(780,62,70,2,NULL),(781,9,60,2,NULL),(782,9,80,2,NULL),(783,64,70,2,NULL),(784,95,50,2,NULL),(785,105,70,2,NULL),(786,58,50,2,NULL),(787,135,50,2,NULL),(788,106,70,2,NULL),(789,161,50,2,NULL),(790,134,50,2,NULL),(791,110,70,2,NULL),(792,164,50,2,NULL),(793,111,70,2,NULL),(794,49,50,2,NULL),(795,50,50,2,NULL),(796,113,70,2,NULL),(797,52,50,2,NULL),(798,114,70,2,NULL),(799,70,50,2,NULL),(800,62,73,2,NULL),(801,72,50,2,NULL),(802,64,73,2,NULL),(803,74,50,2,NULL),(804,87,50,2,NULL),(805,105,73,2,NULL),(806,106,73,2,NULL),(807,89,50,2,NULL),(808,91,50,2,NULL),(809,110,73,2,NULL),(810,92,50,2,NULL),(811,94,50,2,NULL),(812,111,73,2,NULL),(813,113,73,2,NULL),(814,95,54,2,NULL),(815,95,54,2,NULL),(816,114,73,2,NULL),(817,58,54,2,NULL),(818,135,54,2,NULL),(819,62,122,2,NULL),(820,161,54,2,NULL),(821,134,54,2,NULL),(822,64,122,2,NULL),(823,164,54,2,NULL),(824,105,122,2,NULL),(825,49,54,2,NULL),(826,106,122,2,NULL),(827,50,54,2,NULL),(828,52,54,2,NULL),(829,110,122,2,NULL),(830,70,54,2,NULL),(831,111,122,2,NULL),(832,72,54,2,NULL),(833,74,54,2,NULL),(834,113,122,2,NULL),(835,87,54,2,NULL),(836,87,54,2,NULL),(837,114,122,2,NULL),(838,89,54,2,NULL),(839,89,54,2,NULL),(840,62,123,2,NULL),(841,91,54,2,NULL),(842,91,54,2,NULL),(843,64,123,2,NULL),(844,92,54,2,NULL),(845,92,54,2,NULL),(846,105,123,2,NULL),(847,94,54,2,NULL),(848,106,123,2,NULL),(849,95,118,2,NULL),(850,58,118,2,NULL),(851,110,123,2,NULL),(852,135,118,2,NULL),(853,161,118,2,NULL),(854,134,118,2,NULL),(855,111,123,2,NULL),(856,164,118,2,NULL),(857,113,123,2,NULL),(858,49,118,2,NULL),(859,114,123,2,NULL),(860,50,118,2,NULL),(861,52,118,2,NULL),(862,62,124,2,NULL),(863,70,118,2,NULL),(864,72,118,2,NULL),(865,64,124,2,NULL),(866,74,118,2,NULL),(867,87,118,2,NULL),(868,105,124,2,NULL),(869,89,118,2,NULL),(870,91,118,2,NULL),(871,106,124,2,NULL),(872,92,118,2,NULL),(873,94,118,2,NULL),(874,110,124,2,NULL),(875,95,119,2,NULL),(876,58,119,2,NULL),(877,111,124,2,NULL),(878,135,119,2,NULL),(879,161,119,2,NULL),(880,113,124,2,NULL),(881,134,119,2,NULL),(882,164,119,2,NULL),(883,114,124,2,NULL),(884,49,119,2,NULL),(885,49,119,2,NULL),(886,62,125,2,NULL),(887,50,119,2,NULL),(888,52,119,2,NULL),(889,64,125,2,NULL),(890,70,119,2,NULL),(891,72,119,2,NULL),(892,105,125,2,NULL),(893,74,119,2,NULL),(894,87,119,2,NULL),(895,106,125,2,NULL),(896,89,119,2,NULL),(897,110,125,2,NULL),(898,91,119,2,NULL),(899,92,119,2,NULL),(900,111,125,2,NULL),(901,94,119,2,NULL),(902,95,120,2,NULL),(903,113,125,2,NULL),(904,58,120,2,NULL),(905,135,120,2,NULL),(906,161,120,2,NULL),(907,114,125,2,NULL),(908,134,120,2,NULL),(909,164,120,2,NULL),(910,62,9,2,NULL),(911,49,120,2,NULL),(912,64,9,2,NULL),(913,50,120,2,NULL),(914,52,120,2,NULL),(915,70,120,2,NULL),(916,105,9,2,NULL),(917,72,120,2,NULL),(918,106,9,2,NULL),(919,74,120,2,NULL),(920,87,120,2,NULL),(921,110,9,2,NULL),(922,89,120,2,NULL),(923,91,120,2,NULL),(924,111,9,2,NULL),(925,92,120,2,NULL),(926,94,120,2,NULL),(927,113,9,2,NULL),(928,95,121,2,NULL),(929,58,121,2,NULL),(930,114,9,2,NULL),(931,135,121,2,NULL),(932,161,121,2,NULL),(933,134,121,2,NULL),(934,62,43,2,NULL),(935,164,121,2,NULL),(936,64,43,2,NULL),(937,49,121,2,NULL),(938,50,121,2,NULL),(939,105,43,2,NULL),(940,52,121,2,NULL),(941,70,121,2,NULL),(942,106,43,2,NULL),(943,72,121,2,NULL),(944,74,121,2,NULL),(945,110,43,2,NULL),(946,87,121,2,NULL),(947,111,43,2,NULL),(948,89,121,2,NULL),(949,91,121,2,NULL),(950,113,43,2,NULL),(951,92,121,2,NULL),(952,94,121,2,NULL),(953,114,43,2,NULL),(954,71,2,2,NULL),(955,71,6,2,NULL),(956,62,48,2,NULL),(957,71,14,2,NULL),(958,71,16,2,NULL),(959,64,48,2,NULL),(960,71,61,2,NULL),(961,95,8,2,NULL),(962,105,48,2,NULL),(963,58,8,2,NULL),(964,135,8,2,NULL),(965,161,8,2,NULL),(966,106,48,2,NULL),(967,134,8,2,NULL),(968,110,48,2,NULL),(969,164,8,2,NULL),(970,49,8,2,NULL),(971,111,48,2,NULL),(972,50,8,2,NULL),(973,52,8,2,NULL),(974,113,48,2,NULL),(975,70,8,2,NULL),(976,72,8,2,NULL),(977,114,48,2,NULL),(978,74,8,2,NULL),(979,87,8,2,NULL),(980,62,51,2,NULL),(981,89,8,2,NULL),(982,91,8,2,NULL),(983,64,51,2,NULL),(984,92,8,2,NULL),(985,94,8,2,NULL),(986,105,51,2,NULL),(987,82,32,2,NULL),(988,82,32,2,NULL),(989,106,51,2,NULL),(990,82,38,2,NULL),(991,82,38,2,NULL),(992,110,51,2,NULL),(993,82,45,2,NULL),(994,82,45,2,NULL),(995,111,51,2,NULL),(996,82,57,2,NULL),(997,82,57,2,NULL),(998,113,51,2,NULL),(999,82,77,2,NULL),(1000,53,13,2,NULL),(1001,114,51,2,NULL),(1002,53,26,2,NULL),(1003,53,26,2,NULL),(1004,62,55,2,NULL),(1005,53,28,2,NULL),(1006,53,40,2,NULL),(1007,64,55,2,NULL),(1008,53,68,2,NULL),(1009,95,52,2,NULL),(1010,105,55,2,NULL),(1011,95,62,2,NULL),(1012,95,67,2,NULL),(1013,106,55,2,NULL),(1014,95,70,2,NULL),(1015,95,73,2,NULL),(1016,110,55,2,NULL),(1017,95,122,2,NULL),(1018,95,122,2,NULL),(1019,111,55,2,NULL),(1020,95,123,2,NULL),(1021,95,124,2,NULL),(1022,113,55,2,NULL),(1023,95,125,2,NULL),(1024,95,125,2,NULL),(1025,114,55,2,NULL),(1026,95,9,2,NULL),(1027,95,43,2,NULL),(1028,62,58,2,NULL),(1029,95,48,2,NULL),(1030,95,48,2,NULL),(1031,64,58,2,NULL),(1032,95,51,2,NULL),(1033,95,51,2,NULL),(1034,105,58,2,NULL),(1035,95,55,2,NULL),(1036,95,58,2,NULL),(1037,106,58,2,NULL),(1038,95,75,2,NULL),(1039,95,75,2,NULL),(1040,110,58,2,NULL),(1041,95,85,2,NULL),(1042,95,85,2,NULL),(1043,111,58,2,NULL),(1044,95,90,2,NULL),(1045,95,90,2,NULL),(1046,113,58,2,NULL),(1047,95,93,2,NULL),(1048,95,93,2,NULL),(1049,114,58,2,NULL),(1050,95,137,2,NULL),(1051,95,137,2,NULL),(1052,62,75,2,NULL),(1053,95,98,2,NULL),(1054,95,98,2,NULL),(1055,64,75,2,NULL),(1056,95,102,2,NULL),(1057,95,102,2,NULL),(1058,105,75,2,NULL),(1059,95,104,2,NULL),(1060,95,104,2,NULL),(1061,106,75,2,NULL),(1062,95,107,2,NULL),(1063,95,107,2,NULL),(1064,110,75,2,NULL),(1065,95,110,2,NULL),(1066,95,133,2,NULL),(1067,111,75,2,NULL),(1068,95,134,2,NULL),(1069,95,135,2,NULL),(1070,113,75,2,NULL),(1071,95,136,2,NULL),(1072,95,101,2,NULL),(1073,114,75,2,NULL),(1074,95,126,2,NULL),(1075,95,131,2,NULL),(1076,62,85,2,NULL),(1077,95,127,2,NULL),(1078,95,109,2,NULL),(1079,64,85,2,NULL),(1080,95,111,2,NULL),(1081,95,111,2,NULL),(1082,105,85,2,NULL),(1083,95,112,2,NULL),(1084,95,112,2,NULL),(1085,106,85,2,NULL),(1086,95,113,2,NULL),(1087,95,113,2,NULL),(1088,110,85,2,NULL),(1089,95,128,2,NULL),(1090,95,128,2,NULL),(1091,111,85,2,NULL),(1092,95,129,2,NULL),(1093,95,129,2,NULL),(1094,113,85,2,NULL),(1095,95,130,2,NULL),(1096,95,130,2,NULL),(1097,114,85,2,NULL),(1098,95,132,2,NULL),(1099,45,13,2,NULL),(1100,62,90,2,NULL),(1101,45,26,2,NULL),(1102,45,28,2,NULL),(1103,64,90,2,NULL),(1104,45,40,2,NULL),(1105,45,68,2,NULL),(1106,105,90,2,NULL),(1107,58,52,2,NULL),(1108,58,52,2,NULL),(1109,106,90,2,NULL),(1110,58,62,2,NULL),(1111,58,62,2,NULL),(1112,110,90,2,NULL),(1113,58,67,2,NULL),(1114,58,67,2,NULL),(1115,111,90,2,NULL),(1116,58,70,2,NULL),(1117,58,70,2,NULL),(1118,113,90,2,NULL),(1119,58,73,2,NULL),(1120,58,73,2,NULL),(1121,114,90,2,NULL),(1122,58,122,2,NULL),(1123,58,122,2,NULL),(1124,62,93,2,NULL),(1125,58,123,2,NULL),(1126,58,123,2,NULL),(1127,64,93,2,NULL),(1128,58,124,2,NULL),(1129,58,124,2,NULL),(1130,105,93,2,NULL),(1131,58,125,2,NULL),(1132,58,125,2,NULL),(1133,106,93,2,NULL),(1134,58,9,2,NULL),(1135,58,9,2,NULL),(1136,110,93,2,NULL),(1137,58,43,2,NULL),(1138,58,43,2,NULL),(1139,111,93,2,NULL),(1140,58,48,2,NULL),(1141,58,48,2,NULL),(1142,113,93,2,NULL),(1143,58,51,2,NULL),(1144,58,51,2,NULL),(1145,114,93,2,NULL),(1146,58,55,2,NULL),(1147,58,55,2,NULL),(1148,62,137,2,NULL),(1149,58,58,2,NULL),(1150,58,58,2,NULL),(1151,64,137,2,NULL),(1152,58,75,2,NULL),(1153,58,75,2,NULL),(1154,105,137,2,NULL),(1155,58,85,2,NULL),(1156,58,85,2,NULL),(1157,106,137,2,NULL),(1158,58,90,2,NULL),(1159,58,90,2,NULL),(1160,110,137,2,NULL),(1161,58,93,2,NULL),(1162,58,93,2,NULL),(1163,111,137,2,NULL),(1164,58,137,2,NULL),(1165,58,137,2,NULL),(1166,113,137,2,NULL),(1167,58,98,2,NULL),(1168,58,98,2,NULL),(1169,114,137,2,NULL),(1170,58,102,2,NULL),(1171,58,102,2,NULL),(1172,62,98,2,NULL),(1173,58,104,2,NULL),(1174,58,104,2,NULL),(1175,64,98,2,NULL),(1176,58,107,2,NULL),(1177,58,107,2,NULL),(1178,105,98,2,NULL),(1179,58,110,2,NULL),(1180,58,110,2,NULL),(1181,106,98,2,NULL),(1182,58,133,2,NULL),(1183,58,133,2,NULL),(1184,110,98,2,NULL),(1185,58,134,2,NULL),(1186,58,134,2,NULL),(1187,111,98,2,NULL),(1188,58,135,2,NULL),(1189,58,135,2,NULL),(1190,113,98,2,NULL),(1191,58,136,2,NULL),(1192,58,136,2,NULL),(1193,114,98,2,NULL),(1194,58,101,2,NULL),(1195,58,101,2,NULL),(1196,62,102,2,NULL),(1197,58,126,2,NULL),(1198,58,126,2,NULL),(1199,64,102,2,NULL),(1200,58,131,2,NULL),(1201,58,131,2,NULL),(1202,105,102,2,NULL),(1203,58,127,2,NULL),(1204,58,127,2,NULL),(1205,106,102,2,NULL),(1206,58,109,2,NULL),(1207,58,109,2,NULL),(1208,110,102,2,NULL),(1209,58,111,2,NULL),(1210,58,111,2,NULL),(1211,111,102,2,NULL),(1212,58,112,2,NULL),(1213,58,112,2,NULL),(1214,113,102,2,NULL),(1215,58,113,2,NULL),(1216,58,113,2,NULL),(1217,114,102,2,NULL),(1218,58,128,2,NULL),(1219,58,128,2,NULL),(1220,62,104,2,NULL),(1221,58,129,2,NULL),(1222,58,129,2,NULL),(1223,64,104,2,NULL),(1224,58,130,2,NULL),(1225,58,130,2,NULL),(1226,105,104,2,NULL),(1227,58,132,2,NULL),(1228,106,104,2,NULL),(1229,68,13,2,NULL),(1230,68,26,2,NULL),(1231,68,28,2,NULL),(1232,68,40,2,NULL),(1233,68,68,2,NULL),(1234,110,104,2,NULL),(1235,67,27,2,NULL),(1236,111,104,2,NULL),(1237,67,34,2,NULL),(1238,67,41,2,NULL),(1239,67,49,2,NULL),(1240,113,104,2,NULL),(1241,67,72,2,NULL),(1242,81,13,2,NULL),(1243,114,104,2,NULL),(1244,81,26,2,NULL),(1245,81,26,2,NULL),(1246,62,107,2,NULL),(1247,81,28,2,NULL),(1248,81,40,2,NULL),(1249,64,107,2,NULL),(1250,81,68,2,NULL),(1251,105,107,2,NULL),(1252,77,13,2,NULL),(1253,77,26,2,NULL),(1254,77,28,2,NULL),(1255,106,107,2,NULL),(1256,77,40,2,NULL),(1257,77,40,2,NULL),(1258,110,107,2,NULL),(1259,77,68,2,NULL),(1260,83,59,2,NULL),(1261,83,59,2,NULL),(1262,111,107,2,NULL),(1263,83,78,2,NULL),(1264,84,59,2,NULL),(1265,113,107,2,NULL),(1266,84,78,2,NULL),(1267,88,56,2,NULL),(1268,114,107,2,NULL),(1269,88,76,2,NULL),(1270,62,110,2,NULL),(1271,135,52,2,NULL),(1272,161,52,2,NULL),(1273,134,52,2,NULL),(1274,64,110,2,NULL),(1275,164,52,2,NULL),(1276,105,110,2,NULL),(1277,49,52,2,NULL),(1278,50,52,2,NULL),(1279,52,52,2,NULL),(1280,106,110,2,NULL),(1281,70,52,2,NULL),(1282,72,52,2,NULL),(1283,110,110,2,NULL),(1284,74,52,2,NULL),(1285,87,52,2,NULL),(1286,111,110,2,NULL),(1287,89,52,2,NULL),(1288,91,52,2,NULL),(1289,113,110,2,NULL),(1290,92,52,2,NULL),(1291,94,52,2,NULL),(1292,114,110,2,NULL),(1293,135,62,2,NULL),(1294,62,133,2,NULL),(1295,161,62,2,NULL),(1296,134,62,2,NULL),(1297,64,133,2,NULL),(1298,164,62,2,NULL),(1299,49,62,2,NULL),(1300,105,133,2,NULL),(1301,50,62,2,NULL),(1302,52,62,2,NULL),(1303,106,133,2,NULL),(1304,70,62,2,NULL),(1305,72,62,2,NULL),(1306,110,133,2,NULL),(1307,74,62,2,NULL),(1308,87,62,2,NULL),(1309,111,133,2,NULL),(1310,89,62,2,NULL),(1311,91,62,2,NULL),(1312,113,133,2,NULL),(1313,92,62,2,NULL),(1314,94,62,2,NULL),(1315,114,133,2,NULL),(1316,135,67,2,NULL),(1317,161,67,2,NULL),(1318,62,134,2,NULL),(1319,134,67,2,NULL),(1320,164,67,2,NULL),(1321,64,134,2,NULL),(1322,49,67,2,NULL),(1323,50,67,2,NULL),(1324,105,134,2,NULL),(1325,52,67,2,NULL),(1326,70,67,2,NULL),(1327,106,134,2,NULL),(1328,72,67,2,NULL),(1329,74,67,2,NULL),(1330,110,134,2,NULL),(1331,87,67,2,NULL),(1332,89,67,2,NULL),(1333,111,134,2,NULL),(1334,91,67,2,NULL),(1335,92,67,2,NULL),(1336,113,134,2,NULL),(1337,94,67,2,NULL),(1338,73,32,2,NULL),(1339,114,134,2,NULL),(1340,73,38,2,NULL),(1341,73,45,2,NULL),(1342,73,57,2,NULL),(1343,62,135,2,NULL),(1344,73,77,2,NULL),(1345,64,135,2,NULL),(1346,135,70,2,NULL),(1347,161,70,2,NULL),(1348,105,135,2,NULL),(1349,134,70,2,NULL),(1350,164,70,2,NULL),(1351,106,135,2,NULL),(1352,49,70,2,NULL),(1353,50,70,2,NULL),(1354,110,135,2,NULL),(1355,52,70,2,NULL),(1356,70,70,2,NULL),(1357,111,135,2,NULL),(1358,72,70,2,NULL),(1359,74,70,2,NULL),(1360,113,135,2,NULL),(1361,87,70,2,NULL),(1362,89,70,2,NULL),(1363,114,135,2,NULL),(1364,91,70,2,NULL),(1365,92,70,2,NULL),(1366,62,136,2,NULL),(1367,94,70,2,NULL),(1368,54,37,2,NULL),(1369,64,136,2,NULL),(1370,54,39,2,NULL),(1371,54,47,2,NULL),(1372,54,60,2,NULL),(1373,105,136,2,NULL),(1374,54,80,2,NULL),(1375,106,136,2,NULL),(1376,135,73,2,NULL),(1377,161,73,2,NULL),(1378,110,136,2,NULL),(1379,134,73,2,NULL),(1380,164,73,2,NULL),(1381,111,136,2,NULL),(1382,49,73,2,NULL),(1383,50,73,2,NULL),(1384,113,136,2,NULL),(1385,52,73,2,NULL),(1386,70,73,2,NULL),(1387,114,136,2,NULL),(1388,72,73,2,NULL),(1389,74,73,2,NULL),(1390,87,73,2,NULL),(1391,62,101,2,NULL),(1392,89,73,2,NULL),(1393,64,101,2,NULL),(1394,91,73,2,NULL),(1395,92,73,2,NULL),(1396,105,101,2,NULL),(1397,94,73,2,NULL),(1398,135,122,2,NULL),(1399,106,101,2,NULL),(1400,161,122,2,NULL),(1401,134,122,2,NULL),(1402,110,101,2,NULL),(1403,164,122,2,NULL),(1404,49,122,2,NULL),(1405,111,101,2,NULL),(1406,50,122,2,NULL),(1407,52,122,2,NULL),(1408,113,101,2,NULL),(1409,70,122,2,NULL),(1410,72,122,2,NULL),(1411,114,101,2,NULL),(1412,74,122,2,NULL),(1413,87,122,2,NULL),(1414,62,126,2,NULL),(1415,89,122,2,NULL),(1416,91,122,2,NULL),(1417,64,126,2,NULL),(1418,92,122,2,NULL),(1419,94,122,2,NULL),(1420,105,126,2,NULL),(1421,135,123,2,NULL),(1422,161,123,2,NULL),(1423,106,126,2,NULL),(1424,134,123,2,NULL),(1425,164,123,2,NULL),(1426,110,126,2,NULL),(1427,49,123,2,NULL),(1428,50,123,2,NULL),(1429,111,126,2,NULL),(1430,52,123,2,NULL),(1431,70,123,2,NULL),(1432,113,126,2,NULL),(1433,72,123,2,NULL),(1434,74,123,2,NULL),(1435,114,126,2,NULL),(1436,87,123,2,NULL),(1437,89,123,2,NULL),(1438,91,123,2,NULL),(1439,62,131,2,NULL),(1440,92,123,2,NULL),(1441,64,131,2,NULL),(1442,94,123,2,NULL),(1443,135,124,2,NULL),(1444,105,131,2,NULL),(1445,161,124,2,NULL),(1446,134,124,2,NULL),(1447,106,131,2,NULL),(1448,164,124,2,NULL),(1449,49,124,2,NULL),(1450,110,131,2,NULL),(1451,50,124,2,NULL),(1452,52,124,2,NULL),(1453,111,131,2,NULL),(1454,70,124,2,NULL),(1455,72,124,2,NULL),(1456,113,131,2,NULL),(1457,74,124,2,NULL),(1458,87,124,2,NULL),(1459,114,131,2,NULL),(1460,89,124,2,NULL),(1461,91,124,2,NULL),(1462,62,127,2,NULL),(1463,92,124,2,NULL),(1464,94,124,2,NULL),(1465,64,127,2,NULL),(1466,135,125,2,NULL),(1467,161,125,2,NULL),(1468,105,127,2,NULL),(1469,134,125,2,NULL),(1470,164,125,2,NULL),(1471,106,127,2,NULL),(1472,49,125,2,NULL),(1473,50,125,2,NULL),(1474,110,127,2,NULL),(1475,52,125,2,NULL),(1476,70,125,2,NULL),(1477,111,127,2,NULL),(1478,72,125,2,NULL),(1479,74,125,2,NULL),(1480,113,127,2,NULL),(1481,87,125,2,NULL),(1482,89,125,2,NULL),(1483,114,127,2,NULL),(1484,91,125,2,NULL),(1485,92,125,2,NULL),(1486,62,109,2,NULL),(1487,94,125,2,NULL),(1488,135,9,2,NULL),(1489,64,109,2,NULL),(1490,161,9,2,NULL),(1491,134,9,2,NULL),(1492,164,9,2,NULL),(1493,105,109,2,NULL),(1494,49,9,2,NULL),(1495,106,109,2,NULL),(1496,50,9,2,NULL),(1497,52,9,2,NULL),(1498,110,109,2,NULL),(1499,70,9,2,NULL),(1500,72,9,2,NULL),(1501,74,9,2,NULL),(1502,111,109,2,NULL),(1503,87,9,2,NULL),(1504,113,109,2,NULL),(1505,89,9,2,NULL),(1506,91,9,2,NULL),(1507,92,9,2,NULL),(1508,114,109,2,NULL),(1509,94,9,2,NULL),(1510,62,111,2,NULL),(1511,135,43,2,NULL),(1512,161,43,2,NULL),(1513,64,111,2,NULL),(1514,134,43,2,NULL),(1515,164,43,2,NULL),(1516,105,111,2,NULL),(1517,49,43,2,NULL),(1518,106,111,2,NULL),(1519,50,43,2,NULL),(1520,52,43,2,NULL),(1521,110,111,2,NULL),(1522,70,43,2,NULL),(1523,72,43,2,NULL),(1524,74,43,2,NULL),(1525,111,111,2,NULL),(1526,87,43,2,NULL),(1527,113,111,2,NULL),(1528,89,43,2,NULL),(1529,91,43,2,NULL),(1530,92,43,2,NULL),(1531,114,111,2,NULL),(1532,94,43,2,NULL),(1533,62,112,2,NULL),(1534,135,48,2,NULL),(1535,161,48,2,NULL),(1536,134,48,2,NULL),(1537,64,112,2,NULL),(1538,164,48,2,NULL),(1539,105,112,2,NULL),(1540,49,48,2,NULL),(1541,50,48,2,NULL),(1542,52,48,2,NULL),(1543,106,112,2,NULL),(1544,70,48,2,NULL),(1545,110,112,2,NULL),(1546,72,48,2,NULL),(1547,74,48,2,NULL),(1548,111,112,2,NULL),(1549,87,48,2,NULL),(1550,89,48,2,NULL),(1551,91,48,2,NULL),(1552,113,112,2,NULL),(1553,92,48,2,NULL),(1554,94,48,2,NULL),(1555,114,112,2,NULL),(1556,135,51,2,NULL),(1557,62,113,2,NULL),(1558,161,51,2,NULL),(1559,134,51,2,NULL),(1560,64,113,2,NULL),(1561,164,51,2,NULL),(1562,49,51,2,NULL),(1563,105,113,2,NULL),(1564,50,51,2,NULL),(1565,52,51,2,NULL),(1566,106,113,2,NULL),(1567,70,51,2,NULL),(1568,70,51,2,NULL),(1569,110,113,2,NULL),(1570,72,51,2,NULL),(1571,72,51,2,NULL),(1572,111,113,2,NULL),(1573,74,51,2,NULL),(1574,74,51,2,NULL),(1575,113,113,2,NULL),(1576,87,51,2,NULL),(1577,87,51,2,NULL),(1578,114,113,2,NULL),(1579,89,51,2,NULL),(1580,62,128,2,NULL),(1581,91,51,2,NULL),(1582,92,51,2,NULL),(1583,64,128,2,NULL),(1584,94,51,2,NULL),(1585,135,55,2,NULL),(1586,105,128,2,NULL),(1587,161,55,2,NULL),(1588,161,55,2,NULL),(1589,106,128,2,NULL),(1590,134,55,2,NULL),(1591,134,55,2,NULL),(1592,110,128,2,NULL),(1593,164,55,2,NULL),(1594,164,55,2,NULL),(1595,111,128,2,NULL),(1596,49,55,2,NULL),(1597,49,55,2,NULL),(1598,113,128,2,NULL),(1599,50,55,2,NULL),(1600,114,128,2,NULL),(1601,52,55,2,NULL),(1602,70,55,2,NULL),(1603,62,129,2,NULL),(1604,72,55,2,NULL),(1605,74,55,2,NULL),(1606,64,129,2,NULL),(1607,87,55,2,NULL),(1608,89,55,2,NULL),(1609,91,55,2,NULL),(1610,105,129,2,NULL),(1611,92,55,2,NULL),(1612,94,55,2,NULL),(1613,106,129,2,NULL),(1614,124,2,2,NULL),(1615,110,129,2,NULL),(1616,124,6,2,NULL),(1617,124,14,2,NULL),(1618,124,16,2,NULL),(1619,111,129,2,NULL),(1620,124,61,2,NULL),(1621,113,129,2,NULL),(1622,135,58,2,NULL),(1623,161,58,2,NULL),(1624,134,58,2,NULL),(1625,114,129,2,NULL),(1626,164,58,2,NULL),(1627,62,130,2,NULL),(1628,49,58,2,NULL),(1629,50,58,2,NULL),(1630,52,58,2,NULL),(1631,64,130,2,NULL),(1632,70,58,2,NULL),(1633,105,130,2,NULL),(1634,72,58,2,NULL),(1635,74,58,2,NULL),(1636,106,130,2,NULL),(1637,87,58,2,NULL),(1638,89,58,2,NULL),(1639,91,58,2,NULL),(1640,110,130,2,NULL),(1641,92,58,2,NULL),(1642,94,58,2,NULL),(1643,111,130,2,NULL),(1644,137,32,2,NULL),(1645,113,130,2,NULL),(1646,137,38,2,NULL),(1647,137,45,2,NULL),(1648,114,130,2,NULL),(1649,137,57,2,NULL),(1650,137,77,2,NULL),(1651,62,132,2,NULL),(1652,158,13,2,NULL),(1653,158,13,2,NULL),(1654,64,132,2,NULL),(1655,158,26,2,NULL),(1656,158,28,2,NULL),(1657,105,132,2,NULL),(1658,158,40,2,NULL),(1659,158,40,2,NULL),(1660,106,132,2,NULL),(1661,158,68,2,NULL),(1662,158,68,2,NULL),(1663,110,132,2,NULL),(1664,111,132,2,NULL),(1665,135,75,2,NULL),(1666,135,75,2,NULL),(1667,113,132,2,NULL),(1668,135,85,2,NULL),(1669,114,132,2,NULL),(1670,135,90,2,NULL),(1671,135,93,2,NULL),(1672,135,137,2,NULL),(1673,135,101,2,NULL),(1674,135,98,2,NULL),(1675,161,101,2,NULL),(1676,135,102,2,NULL),(1677,135,104,2,NULL),(1678,134,101,2,NULL),(1679,135,107,2,NULL),(1680,135,110,2,NULL),(1681,164,101,2,NULL),(1682,135,133,2,NULL),(1683,135,134,2,NULL),(1684,135,135,2,NULL),(1685,135,135,2,NULL),(1686,49,101,2,NULL),(1687,135,136,2,NULL),(1688,50,101,2,NULL),(1689,135,126,2,NULL),(1690,135,131,2,NULL),(1691,135,131,2,NULL),(1692,52,101,2,NULL),(1693,135,127,2,NULL),(1694,135,109,2,NULL),(1695,70,101,2,NULL),(1696,135,111,2,NULL),(1697,135,111,2,NULL),(1698,72,101,2,NULL),(1699,135,112,2,NULL),(1700,74,101,2,NULL),(1701,135,113,2,NULL),(1702,135,128,2,NULL),(1703,87,101,2,NULL),(1704,135,129,2,NULL),(1705,135,129,2,NULL),(1706,89,101,2,NULL),(1707,135,130,2,NULL),(1708,135,130,2,NULL),(1709,91,101,2,NULL),(1710,135,132,2,NULL),(1711,135,132,2,NULL),(1712,92,101,2,NULL),(1713,162,13,2,NULL),(1714,162,13,2,NULL),(1715,94,101,2,NULL),(1716,162,26,2,NULL),(1717,162,28,2,NULL),(1718,162,40,2,NULL),(1719,162,40,2,NULL),(1720,162,68,2,NULL),(1721,49,75,2,NULL),(1722,50,75,2,NULL),(1723,161,75,2,NULL),(1724,161,75,2,NULL),(1725,52,75,2,NULL),(1726,161,85,2,NULL),(1727,161,85,2,NULL),(1728,49,85,2,NULL),(1729,161,90,2,NULL),(1730,161,90,2,NULL),(1731,50,85,2,NULL),(1732,161,93,2,NULL),(1733,161,93,2,NULL),(1734,52,85,2,NULL),(1735,161,137,2,NULL),(1736,161,137,2,NULL),(1737,49,90,2,NULL),(1738,161,98,2,NULL),(1739,161,98,2,NULL),(1740,50,90,2,NULL),(1741,161,102,2,NULL),(1742,161,104,2,NULL),(1743,52,90,2,NULL),(1744,161,107,2,NULL),(1745,161,110,2,NULL),(1746,49,93,2,NULL),(1747,161,133,2,NULL),(1748,161,133,2,NULL),(1749,50,93,2,NULL),(1750,161,134,2,NULL),(1751,161,134,2,NULL),(1752,52,93,2,NULL),(1753,161,135,2,NULL),(1754,161,135,2,NULL),(1755,49,137,2,NULL),(1756,161,136,2,NULL),(1757,161,136,2,NULL),(1758,50,137,2,NULL),(1759,161,126,2,NULL),(1760,161,126,2,NULL),(1761,52,137,2,NULL),(1762,161,131,2,NULL),(1763,161,131,2,NULL),(1764,49,98,2,NULL),(1765,161,127,2,NULL),(1766,161,127,2,NULL),(1767,50,98,2,NULL),(1768,161,109,2,NULL),(1769,161,109,2,NULL),(1770,52,98,2,NULL),(1771,161,111,2,NULL),(1772,161,111,2,NULL),(1773,49,102,2,NULL),(1774,161,112,2,NULL),(1775,161,112,2,NULL),(1776,50,102,2,NULL),(1777,161,113,2,NULL),(1778,161,113,2,NULL),(1779,52,102,2,NULL),(1780,161,128,2,NULL),(1781,161,128,2,NULL),(1782,49,104,2,NULL),(1783,161,129,2,NULL),(1784,161,129,2,NULL),(1785,50,104,2,NULL),(1786,161,130,2,NULL),(1787,161,130,2,NULL),(1788,52,104,2,NULL),(1789,161,132,2,NULL),(1790,161,132,2,NULL),(1791,49,107,2,NULL),(1792,123,13,2,NULL),(1793,123,13,2,NULL),(1794,50,107,2,NULL),(1795,123,26,2,NULL),(1796,123,28,2,NULL),(1797,52,107,2,NULL),(1798,123,40,2,NULL),(1799,123,68,2,NULL),(1800,49,110,2,NULL),(1801,120,13,2,NULL),(1802,120,26,2,NULL),(1803,50,110,2,NULL),(1804,120,28,2,NULL),(1805,120,40,2,NULL),(1806,52,110,2,NULL),(1807,120,68,2,NULL),(1808,120,68,2,NULL),(1809,49,133,2,NULL),(1810,126,27,2,NULL),(1811,126,27,2,NULL),(1812,50,133,2,NULL),(1813,126,34,2,NULL),(1814,126,34,2,NULL),(1815,52,133,2,NULL),(1816,126,41,2,NULL),(1817,126,41,2,NULL),(1818,49,134,2,NULL),(1819,126,49,2,NULL),(1820,126,49,2,NULL),(1821,50,134,2,NULL),(1822,126,72,2,NULL),(1823,126,72,2,NULL),(1824,52,134,2,NULL),(1825,125,13,2,NULL),(1826,125,13,2,NULL),(1827,49,135,2,NULL),(1828,125,26,2,NULL),(1829,125,26,2,NULL),(1830,50,135,2,NULL),(1831,125,28,2,NULL),(1832,125,40,2,NULL),(1833,52,135,2,NULL),(1834,125,68,2,NULL),(1835,49,136,2,NULL),(1836,134,75,2,NULL),(1837,164,75,2,NULL),(1838,50,136,2,NULL),(1839,134,85,2,NULL),(1840,164,85,2,NULL),(1841,52,136,2,NULL),(1842,134,90,2,NULL),(1843,134,90,2,NULL),(1844,49,131,2,NULL),(1845,164,90,2,NULL),(1846,164,90,2,NULL),(1847,50,131,2,NULL),(1848,134,93,2,NULL),(1849,134,93,2,NULL),(1850,52,131,2,NULL),(1851,164,93,2,NULL),(1852,164,93,2,NULL),(1853,49,127,2,NULL),(1854,134,137,2,NULL),(1855,134,137,2,NULL),(1856,50,127,2,NULL),(1857,164,137,2,NULL),(1858,164,137,2,NULL),(1859,52,127,2,NULL),(1860,134,98,2,NULL),(1861,134,98,2,NULL),(1862,49,109,2,NULL),(1863,164,98,2,NULL),(1864,164,98,2,NULL),(1865,50,109,2,NULL),(1866,134,102,2,NULL),(1867,134,102,2,NULL),(1868,52,109,2,NULL),(1869,164,102,2,NULL),(1870,164,102,2,NULL),(1871,49,111,2,NULL),(1872,134,104,2,NULL),(1873,134,104,2,NULL),(1874,50,111,2,NULL),(1875,164,104,2,NULL),(1876,164,104,2,NULL),(1877,52,111,2,NULL),(1878,134,107,2,NULL),(1879,134,107,2,NULL),(1880,49,112,2,NULL),(1881,164,107,2,NULL),(1882,164,107,2,NULL),(1883,50,112,2,NULL),(1884,134,110,2,NULL),(1885,134,110,2,NULL),(1886,52,112,2,NULL),(1887,164,110,2,NULL),(1888,164,110,2,NULL),(1889,49,113,2,NULL),(1890,134,133,2,NULL),(1891,134,133,2,NULL),(1892,50,113,2,NULL),(1893,164,133,2,NULL),(1894,164,133,2,NULL),(1895,52,113,2,NULL),(1896,134,134,2,NULL),(1897,134,134,2,NULL),(1898,49,128,2,NULL),(1899,164,134,2,NULL),(1900,164,134,2,NULL),(1901,50,128,2,NULL),(1902,134,135,2,NULL),(1903,164,135,2,NULL),(1904,52,128,2,NULL),(1905,134,136,2,NULL),(1906,134,136,2,NULL),(1907,49,129,2,NULL),(1908,164,136,2,NULL),(1909,164,136,2,NULL),(1910,50,129,2,NULL),(1911,134,126,2,NULL),(1912,134,126,2,NULL),(1913,52,129,2,NULL),(1914,164,126,2,NULL),(1915,164,126,2,NULL),(1916,49,130,2,NULL),(1917,134,131,2,NULL),(1918,134,131,2,NULL),(1919,50,130,2,NULL),(1920,164,131,2,NULL),(1921,164,131,2,NULL),(1922,52,130,2,NULL),(1923,134,127,2,NULL),(1924,134,127,2,NULL),(1925,49,132,2,NULL),(1926,164,127,2,NULL),(1927,164,127,2,NULL),(1928,50,132,2,NULL),(1929,134,109,2,NULL),(1930,134,109,2,NULL),(1931,52,132,2,NULL),(1932,164,109,2,NULL),(1933,164,109,2,NULL),(1934,134,111,2,NULL),(1935,134,111,2,NULL),(1936,164,111,2,NULL),(1937,134,112,2,NULL),(1938,164,112,2,NULL),(1939,70,126,2,NULL),(1940,134,113,2,NULL),(1941,72,126,2,NULL),(1942,164,113,2,NULL),(1943,134,128,2,NULL),(1944,74,126,2,NULL),(1945,164,128,2,NULL),(1946,134,129,2,NULL),(1947,164,129,2,NULL),(1948,87,126,2,NULL),(1949,134,130,2,NULL),(1950,89,126,2,NULL),(1951,164,130,2,NULL),(1952,134,132,2,NULL),(1953,91,126,2,NULL),(1954,164,132,2,NULL),(1955,127,59,2,NULL),(1956,92,126,2,NULL),(1957,127,78,2,NULL),(1958,128,59,2,NULL),(1959,128,78,2,NULL),(1960,94,126,2,NULL),(1961,157,56,2,NULL),(1962,157,76,2,NULL),(1963,70,75,2,NULL),(1964,70,75,2,NULL),(1965,72,75,2,NULL),(1966,74,75,2,NULL),(1967,87,75,2,NULL),(1968,89,75,2,NULL),(1969,91,75,2,NULL),(1970,92,75,2,NULL),(1971,94,75,2,NULL),(1972,70,85,2,NULL),(1973,72,85,2,NULL),(1974,74,85,2,NULL),(1975,74,85,2,NULL),(1976,70,90,2,NULL),(1977,87,85,2,NULL),(1978,87,85,2,NULL),(1979,72,90,2,NULL),(1980,89,85,2,NULL),(1981,74,90,2,NULL),(1982,91,85,2,NULL),(1983,92,85,2,NULL),(1984,70,93,2,NULL),(1985,94,85,2,NULL),(1986,72,93,2,NULL),(1987,74,93,2,NULL),(1988,87,90,2,NULL),(1989,87,90,2,NULL),(1990,70,137,2,NULL),(1991,89,90,2,NULL),(1992,89,90,2,NULL),(1993,72,137,2,NULL),(1994,91,90,2,NULL),(1995,91,90,2,NULL),(1996,74,137,2,NULL),(1997,92,90,2,NULL),(1998,92,90,2,NULL),(1999,70,98,2,NULL),(2000,94,90,2,NULL),(2001,94,90,2,NULL),(2002,72,98,2,NULL),(2003,166,32,2,NULL),(2004,166,32,2,NULL),(2005,74,98,2,NULL),(2006,166,38,2,NULL),(2007,166,38,2,NULL),(2008,70,102,2,NULL),(2009,166,45,2,NULL),(2010,166,45,2,NULL),(2011,72,102,2,NULL),(2012,166,57,2,NULL),(2013,166,57,2,NULL),(2014,74,102,2,NULL),(2015,166,77,2,NULL),(2016,166,77,2,NULL),(2017,70,104,2,NULL),(2018,72,104,2,NULL),(2019,74,104,2,NULL),(2020,87,93,2,NULL),(2021,87,93,2,NULL),(2022,70,107,2,NULL),(2023,89,93,2,NULL),(2024,91,93,2,NULL),(2025,72,107,2,NULL),(2026,92,93,2,NULL),(2027,92,93,2,NULL),(2028,74,107,2,NULL),(2029,94,93,2,NULL),(2030,94,93,2,NULL),(2031,70,110,2,NULL),(2032,72,110,2,NULL),(2033,74,110,2,NULL),(2034,87,137,2,NULL),(2035,89,137,2,NULL),(2036,70,133,2,NULL),(2037,91,137,2,NULL),(2038,92,137,2,NULL),(2039,72,133,2,NULL),(2040,94,137,2,NULL),(2041,94,137,2,NULL),(2042,74,133,2,NULL),(2043,70,134,2,NULL),(2044,72,134,2,NULL),(2045,74,134,2,NULL),(2046,87,98,2,NULL),(2047,87,98,2,NULL),(2048,70,135,2,NULL),(2049,89,98,2,NULL),(2050,89,98,2,NULL),(2051,72,135,2,NULL),(2052,91,98,2,NULL),(2053,91,98,2,NULL),(2054,74,135,2,NULL),(2055,92,98,2,NULL),(2056,92,98,2,NULL),(2057,70,136,2,NULL),(2058,94,98,2,NULL),(2059,94,98,2,NULL),(2060,72,136,2,NULL),(2061,87,102,2,NULL),(2062,87,102,2,NULL),(2063,74,136,2,NULL),(2064,89,102,2,NULL),(2065,89,102,2,NULL),(2066,70,127,2,NULL),(2067,91,102,2,NULL),(2068,91,102,2,NULL),(2069,72,127,2,NULL),(2070,92,102,2,NULL),(2071,92,102,2,NULL),(2072,74,127,2,NULL),(2073,94,102,2,NULL),(2074,94,102,2,NULL),(2075,70,109,2,NULL),(2076,72,109,2,NULL),(2077,87,104,2,NULL),(2078,87,104,2,NULL),(2079,74,109,2,NULL),(2080,89,104,2,NULL),(2081,70,111,2,NULL),(2082,91,104,2,NULL),(2083,92,104,2,NULL),(2084,72,111,2,NULL),(2085,94,104,2,NULL),(2086,94,104,2,NULL),(2087,74,111,2,NULL),(2088,70,112,2,NULL),(2089,72,112,2,NULL),(2090,87,107,2,NULL),(2091,87,107,2,NULL),(2092,74,112,2,NULL),(2093,89,107,2,NULL),(2094,89,107,2,NULL),(2095,70,113,2,NULL),(2096,91,107,2,NULL),(2097,91,107,2,NULL),(2098,72,113,2,NULL),(2099,92,107,2,NULL),(2100,92,107,2,NULL),(2101,74,113,2,NULL),(2102,94,107,2,NULL),(2103,94,107,2,NULL),(2104,70,128,2,NULL),(2105,139,84,2,NULL),(2106,139,84,2,NULL),(2107,72,128,2,NULL),(2108,140,84,2,NULL),(2109,141,84,2,NULL),(2110,74,128,2,NULL),(2111,142,84,2,NULL),(2112,143,84,2,NULL),(2113,70,129,2,NULL),(2114,144,84,2,NULL),(2115,145,84,2,NULL),(2116,146,84,2,NULL),(2117,146,84,2,NULL),(2118,72,129,2,NULL),(2119,147,84,2,NULL),(2120,148,84,2,NULL),(2121,74,129,2,NULL),(2122,149,84,2,NULL),(2123,150,84,2,NULL),(2124,70,130,2,NULL),(2125,151,84,2,NULL),(2126,152,84,2,NULL),(2127,153,84,2,NULL),(2128,72,130,2,NULL),(2129,154,84,2,NULL),(2130,74,130,2,NULL),(2131,70,132,2,NULL),(2132,72,132,2,NULL),(2133,87,110,2,NULL),(2134,89,110,2,NULL),(2135,89,110,2,NULL),(2136,74,132,2,NULL),(2137,91,110,2,NULL),(2138,91,110,2,NULL),(2139,92,110,2,NULL),(2140,94,110,2,NULL),(2141,94,110,2,NULL),(2142,87,133,2,NULL),(2143,89,133,2,NULL),(2144,91,133,2,NULL),(2145,91,133,2,NULL),(2146,92,133,2,NULL),(2147,94,133,2,NULL),(2148,87,131,2,NULL),(2149,87,134,2,NULL),(2150,87,134,2,NULL),(2151,89,134,2,NULL),(2152,89,131,2,NULL),(2153,91,134,2,NULL),(2154,91,134,2,NULL),(2155,91,131,2,NULL),(2156,92,134,2,NULL),(2157,94,134,2,NULL),(2158,94,134,2,NULL),(2159,92,131,2,NULL),(2160,94,131,2,NULL),(2161,87,135,2,NULL),(2162,87,135,2,NULL),(2163,89,135,2,NULL),(2164,91,135,2,NULL),(2165,92,135,2,NULL),(2166,94,135,2,NULL),(2167,94,135,2,NULL),(2168,87,136,2,NULL),(2169,87,136,2,NULL),(2170,89,136,2,NULL),(2171,91,136,2,NULL),(2172,92,136,2,NULL),(2173,94,136,2,NULL),(2174,94,136,2,NULL),(2175,87,109,2,NULL),(2176,89,109,2,NULL),(2177,91,109,2,NULL),(2178,92,109,2,NULL),(2179,94,109,2,NULL),(2180,87,111,2,NULL),(2181,89,111,2,NULL),(2182,91,111,2,NULL),(2183,92,111,2,NULL),(2184,94,111,2,NULL),(2185,87,112,2,NULL),(2186,89,112,2,NULL),(2187,91,112,2,NULL),(2188,92,112,2,NULL),(2189,94,112,2,NULL),(2190,87,113,2,NULL),(2191,89,113,2,NULL),(2192,91,113,2,NULL),(2193,92,113,2,NULL),(2194,94,113,2,NULL),(2195,87,128,2,NULL),(2196,89,128,2,NULL),(2197,91,128,2,NULL),(2198,92,128,2,NULL),(2199,94,128,2,NULL),(2200,87,129,2,NULL),(2201,89,129,2,NULL),(2202,91,129,2,NULL),(2203,92,129,2,NULL),(2204,94,129,2,NULL),(2205,87,130,2,NULL),(2206,89,130,2,NULL),(2207,91,130,2,NULL),(2208,92,130,2,NULL),(2209,94,130,2,NULL),(2210,87,132,2,NULL),(2211,89,132,2,NULL),(2212,91,132,2,NULL),(2213,92,132,2,NULL),(2214,94,132,2,NULL),(2215,59,103,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:41
