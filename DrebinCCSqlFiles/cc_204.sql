-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_204
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
INSERT INTO `ActionStrings` VALUES (26,'(.*).SEND_SMS'),(37,'NULL-CONSTANT'),(24,'android.intent.action.BATTERY_CHANGED'),(31,'android.intent.action.BATTERY_LOW'),(28,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.DELETE'),(34,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(29,'android.intent.action.SCREEN_OFF'),(30,'android.intent.action.SCREEN_ON'),(27,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(20,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(36,'android.settings.APPLICATION_DETAILS_SETTINGS'),(25,'android.settings.LOCATION_SOURCE_SETTINGS'),(19,'com.android.mms.transaction.MESSAGE_SENT'),(4,'com.android.vending.INSTALL_REFERRER'),(8,'com.extend.battery.CHECK'),(13,'com.extend.battery.DELIVERED_SMS'),(14,'com.extend.battery.SEND_SMS'),(12,'com.extend.battery.SENT_SMS'),(9,'com.extend.battery.UPDATE'),(6,'com.extend.battery.intent.http.SHOW'),(17,'com.extend.battery.notification.action.ALARM'),(15,'com.extend.battery.notification.action.CANCEL'),(16,'com.extend.battery.notification.action.CLICKED'),(38,'com.flurry.android.ACTION_CATALOG'),(10,'com.itframework.installer.updater.CHECK'),(11,'com.itframework.installer.updater.UPDATE'),(21,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(22,'com.notifad.android.PushServiceStart(.*)'),(18,'com.notifad.android.PushServiceStart1'),(32,'com.notifad.android.PushServiceStartInvalid'),(23,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(33,'com.notifad.android.PushServiceStartinvalid Id'),(2,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',83),(2,'com.extend.battery',89),(3,'com.extend.battery',91),(4,'com.extend.battery',103),(5,'com.androidupgrade.battery',28),(6,'com.extender.sc',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BatteryActivity'),(10,1,'com.extend.battery.RatingActivity'),(11,1,'com.extend.battery.BatteryService'),(12,1,'com.zanalytics.sms.SmsReceiverService'),(13,1,'com.zanalytics.sms.SmsReceiver'),(14,2,'com.extend.battery.Splash'),(15,3,'com.extend.battery.Splash'),(16,1,'com.tapjoy.TapjoyReferralTracker'),(17,2,'com.extend.battery.TabHandler'),(18,2,'com.extend.battery.TaskKillerActivity'),(19,3,'com.extend.battery.TabHandler'),(20,2,'com.extend.battery.UninstallerActivity'),(21,3,'com.extend.battery.TaskKillerActivity'),(22,4,'com.extend.battery.Splash'),(23,2,'com.extend.battery.SecurityAuditActivity'),(24,3,'com.extend.battery.UninstallerActivity'),(25,2,'com.extend.battery.InstallerActivity'),(26,3,'com.extend.battery.SecurityAuditActivity'),(27,4,'com.extend.battery.TabHandler'),(28,2,'com.extend.battery.FeaturesActivity'),(29,3,'com.extend.battery.InstallerActivity'),(30,4,'com.extend.battery.TaskKillerActivity'),(31,4,'com.extend.battery.UninstallerActivity'),(32,2,'com.extend.battery.BoosterActivity'),(33,3,'com.extend.battery.FeaturesActivity'),(34,4,'com.extend.battery.SecurityAuditActivity'),(35,4,'com.extend.battery.InstallerActivity'),(36,2,'com.extend.battery.BatteryActivity'),(37,3,'com.extend.battery.BoosterActivity'),(38,4,'com.extend.battery.FeaturesActivity'),(39,4,'com.extend.battery.BoosterActivity'),(40,2,'com.extend.battery.RatingActivity'),(41,4,'com.extend.battery.BatteryActivity'),(42,3,'com.extend.battery.BatteryActivity'),(43,4,'com.extend.battery.RatingActivity'),(44,2,'com.extend.battery.BatteryService'),(45,3,'com.extend.battery.RatingActivity'),(46,4,'com.extend.battery.UninstallingDialog'),(47,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(48,2,'com.zanalytics.sms.SmsReceiverService'),(49,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(50,2,'com.extend.battery.NotificationReceiver'),(51,4,'com.itframework.installer.util.NonMarketDialogActivity'),(52,3,'com.itframework.installer.util.NonMarketDialogActivity'),(53,4,'com.extend.battery.BatteryService'),(54,4,'com.itframework.installer.util.InstallWorker'),(55,2,'com.extend.battery.BootReceiver'),(56,4,'com.zanalytics.sms.SmsReceiverService'),(57,3,'com.extend.battery.BatteryService'),(58,4,'com.zanalytics.sms.SmsSendService'),(59,4,'com.itframework.base.util.UploadAnalyticsService'),(60,3,'com.itframework.installer.util.InstallWorker'),(61,4,'com.itframework.notification.NotificationService'),(62,4,'com.itframework.installer.updater.UpdateReceiver'),(63,3,'com.zanalytics.sms.SmsReceiverService'),(64,2,'com.zanalytics.sms.SmsReceiver'),(65,3,'com.itframework.installer.updater.UpdateReceiver'),(66,4,'com.extend.battery.NotificationReceiver'),(67,2,'com.tapjoy.TapjoyReferralTracker'),(68,4,'com.extend.battery.BootReceiver'),(69,3,'com.extend.battery.NotificationReceiver'),(70,4,'com.zanalytics.sms.SmsReceiver'),(71,3,'com.extend.battery.BootReceiver'),(72,4,'com.zanalytics.sms.SmsSentReceiver'),(73,3,'com.zanalytics.sms.SmsReceiver'),(74,4,'com.zanalytics.sms.SmsDeliveredReceiver'),(75,4,'com.zanalytics.sms.SmsDeliveredReceiver'),(76,4,'com.zanalytics.sms.SmsSendReceiver'),(77,5,'com.androidupgrade.battery.Splash'),(78,4,'com.itframework.notification.NotificationReceiver'),(79,5,'com.androidupgrade.battery.TabHandler'),(80,5,'com.androidupgrade.battery.TaskKillerActivity'),(81,5,'com.androidupgrade.battery.UninstallerActivity'),(82,5,'com.androidupgrade.battery.SecurityAuditActivity'),(83,5,'com.androidupgrade.battery.InstallerActivity'),(84,6,'com.androidupgrade.battery.Splash'),(85,5,'com.androidupgrade.battery.FeaturesActivity'),(86,5,'com.androidupgrade.battery.BoosterActivity'),(87,5,'com.androidupgrade.battery.BatteryActivity'),(88,6,'com.androidupgrade.battery.TabHandler'),(89,5,'com.androidupgrade.battery.RatingActivity'),(90,6,'com.androidupgrade.battery.TaskKillerActivity'),(91,5,'com.notifad.android.PushAds'),(92,6,'com.androidupgrade.battery.UninstallerActivity'),(93,5,'com.androidupgrade.battery.BatteryService'),(94,6,'com.androidupgrade.battery.SecurityAuditActivity'),(95,5,'com.notifad.android.PushService'),(96,6,'com.androidupgrade.battery.InstallerActivity'),(97,6,'com.androidupgrade.battery.FeaturesActivity'),(98,6,'com.androidupgrade.battery.BoosterActivity'),(99,5,'com.mobsqueeze.SmsService'),(100,6,'com.androidupgrade.battery.BatteryActivity'),(101,5,'com.mobsqueeze.sms.SmsReceiverService'),(102,6,'com.androidupgrade.battery.RatingActivity'),(103,5,'com.notifad.android.UserDetailsReceiver'),(104,6,'com.notifad.android.PushAds'),(105,5,'com.notifad.android.MessageReceiver'),(106,6,'com.androidupgrade.battery.BatteryService'),(107,5,'com.notifad.android.DeliveryReceiver'),(108,6,'com.notifad.android.PushService'),(109,5,'com.androidupgrade.battery.BootReceiver'),(110,6,'com.mobsqueeze.sms.SmsReceiverService'),(111,6,'com.notifad.android.UserDetailsReceiver'),(112,5,'com.mobsqueeze.sms.SmsReceiver'),(113,6,'com.notifad.android.MessageReceiver'),(114,6,'com.notifad.android.DeliveryReceiver'),(115,6,'com.androidupgrade.battery.BootReceiver'),(116,6,'com.mobsqueeze.ReferralReceiver'),(117,5,'com.tapjoy.TapjoyReferralTracker'),(118,6,'com.mobsqueeze.sms.SmsReceiver'),(119,6,'com.tapjoy.TapjoyReferralTracker'),(120,5,'com.androidupgrade.battery.AdUtils'),(121,5,'com.androidupgrade.battery.Splash$1'),(122,6,'com.mobsqueeze.sms.SmsUtils'),(123,3,'com.extend.battery.d'),(124,3,'com.extend.battery.c'),(125,3,'com.extend.battery.a'),(126,6,'com.mobsqueeze.sms.SmsReceiverService$1'),(127,6,'com.androidupgrade.battery.BatteryService$1'),(128,3,'com.zanalytics.sms.c'),(129,6,'com.androidupgrade.battery.BatteryActivity$1'),(130,6,'com.androidupgrade.battery.BoosterActivity$1'),(131,6,'com.androidupgrade.battery.TaskKillerActivity$1'),(132,5,'com.androidupgrade.battery.BoosterActivity$4'),(133,6,'com.androidupgrade.battery.Splash$1'),(134,5,'com.androidupgrade.battery.BatteryService$1'),(135,6,'com.mobsqueeze.sms.SendIntent'),(136,5,'com.androidupgrade.battery.BatteryActivity$1'),(137,5,'com.androidupgrade.battery.BoosterActivity$1'),(138,5,'com.mobsqueeze.sms.SmsUtils'),(139,6,'com.androidupgrade.battery.AdUtils$5'),(140,3,'com.extend.battery.ba'),(141,3,'com.extend.battery.k'),(142,5,'com.androidupgrade.battery.AdUtils$5'),(143,3,'com.zanalytics.sms.j'),(144,3,'com.extend.battery.features.s'),(145,3,'com.extend.battery.bb'),(146,3,'com.zanalytics.sms.a'),(147,3,'com.itframework.installer.a.b'),(148,5,'com.androidupgrade.battery.TaskKillerActivity$1'),(149,6,'com.androidupgrade.battery.BoosterActivity$6'),(150,6,'com.flurry.android.u'),(151,4,'com.extend.battery.d'),(152,4,'com.extend.battery.c'),(153,4,'com.extend.battery.a'),(154,4,'com.itframework.base.service.AlarmReceiver'),(155,4,'com.extend.battery.bb'),(156,4,'com.extend.battery.ba'),(157,4,'com.extend.battery.k'),(158,4,'com.zanalytics.sms.d'),(159,4,'com.extend.battery.features.s'),(160,4,'com.itframework.installer.a.b'),(161,4,'com.itframework.base.service.WakefulIntentService'),(162,4,'com.itframework.installer.b.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,95,'adType'),(2,95,'campId'),(3,95,'number'),(4,91,'appId'),(5,91,'creativeId'),(6,91,'header'),(7,95,'appId'),(8,108,'text'),(9,108,'apikey'),(10,104,'number'),(11,108,'type'),(12,108,'appId'),(13,104,'apikey'),(14,108,'creativeId'),(15,108,'imageurl'),(16,114,'campId'),(17,108,'header'),(18,108,'sms'),(19,104,'appId'),(20,49,'finishedTitle'),(21,49,'url'),(22,49,'downloadingProgress'),(23,49,'downloadingWait'),(24,42,'technology'),(25,49,'finishedText'),(26,95,'apikey'),(27,60,'url'),(28,95,'header'),(29,60,'filename'),(30,91,'number'),(31,60,'downloadingWait'),(32,114,'number'),(33,91,'test'),(34,104,'creativeId'),(35,49,'finishedTicker'),(36,108,'number'),(37,108,'url'),(38,60,'finishedText'),(39,49,'filename'),(40,104,'campId'),(41,104,'url'),(42,108,'campId'),(43,108,'link'),(44,104,'sms'),(45,95,'imageurl'),(46,95,'creativeId'),(47,91,'campId'),(48,107,'sms'),(49,114,'creativeId'),(50,65,'URL'),(51,114,'sms'),(52,91,'adType'),(53,95,'title'),(54,95,'link'),(55,91,'apikey'),(56,60,'downloadingProgress'),(57,60,'callbackIntent'),(58,60,'downloadingTitle'),(59,49,'downloadingToast'),(60,95,'url'),(61,95,'text'),(62,60,'finishedTicker'),(63,114,'url'),(64,108,'testMode'),(65,118,'pdus'),(66,104,'header'),(67,60,'downloadingTicker'),(68,107,'title'),(69,107,'number'),(70,95,'sms'),(71,107,'text'),(72,60,'showNotifications'),(73,49,'downloadStarting'),(74,114,'text'),(75,69,'clickevent'),(76,112,'pdus'),(77,49,'downloadingTicker'),(78,107,'url'),(79,107,'campId'),(80,60,'forceDownload'),(81,107,'creativeId'),(82,107,'apikey'),(83,49,'callbackIntent'),(84,49,'forceDownload'),(85,107,'appId'),(86,49,'downloadingTitle'),(87,107,'imageurl'),(88,107,'header'),(89,108,'title'),(90,108,'adType'),(91,116,'referrer'),(92,104,'adType'),(93,104,'test'),(94,91,'sms'),(95,60,'downloadStarting'),(96,95,'testMode'),(97,100,'technology'),(98,114,'apikey'),(99,60,'downloadingToast'),(100,60,'finishedTitle'),(101,73,'pdus'),(102,87,'technology'),(103,114,'appId'),(104,95,'type'),(105,91,'url'),(106,114,'header'),(107,114,'imageurl'),(108,114,'title'),(109,66,'clickevent'),(110,62,'URL'),(111,61,'BROADCAST_INTENT'),(112,54,'finishedText'),(113,72,'NextMessage'),(114,72,'PhoneNumber'),(115,54,'finishedTitle'),(116,54,'filename'),(117,54,'downloadingProgress'),(118,54,'downloadingTicker'),(119,47,'forceDownload'),(120,78,'DO_AUTO_CANCEL'),(121,54,'downloadingToast'),(122,47,'finishedTitle'),(123,47,'downloadingTitle'),(124,72,'TagEvent'),(125,47,'downloadingProgress'),(126,61,'NOTIFICATION_CATEGORY'),(127,54,'downloadStarting'),(128,72,'StoreMessage'),(129,78,'NOTIFICATION_CATEGORY'),(130,47,'finishedText'),(131,47,'finishedTicker'),(132,47,'url'),(133,72,'Message'),(134,47,'downloadStarting'),(135,72,'MessageExtra'),(136,61,'ACTION'),(137,40,'technology'),(138,47,'downloadingToast'),(139,54,'downloadingTitle'),(140,70,'pdus'),(141,54,'finishedTicker'),(142,54,'showNotifications'),(143,72,'TryAgain'),(144,78,'CLICKED_EVENT'),(145,54,'downloadingWait'),(146,47,'downloadingWait'),(147,54,'url'),(148,47,'callbackIntent'),(149,47,'filename'),(150,54,'forceDownload'),(151,78,'BROADCAST_INTENT'),(152,72,'SendIntent'),(153,61,'DO_AUTO_CANCEL'),(154,54,'callbackIntent'),(155,47,'downloadingTicker'),(156,61,'CLICKED_EVENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,44,'s',0,NULL,NULL),(46,45,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,56,'s',0,NULL,NULL),(56,55,'r',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'s',1,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'r',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'r',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'r',0,NULL,NULL),(108,108,'s',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'s',0,NULL,NULL),(111,111,'r',0,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',0,NULL,NULL),(114,114,'r',0,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,118,'r',1,NULL,NULL),(119,119,'r',1,NULL,NULL),(120,123,'r',1,NULL,NULL),(121,111,'r',1,NULL,NULL),(122,124,'r',1,NULL,NULL),(123,114,'r',1,NULL,NULL),(124,125,'r',1,NULL,NULL),(125,126,'r',1,NULL,NULL),(126,127,'r',1,NULL,NULL),(127,128,'r',1,NULL,NULL),(128,129,'r',1,NULL,NULL),(129,113,'r',1,NULL,NULL),(130,130,'r',1,NULL,NULL),(131,103,'r',1,NULL,NULL),(132,107,'r',1,NULL,NULL),(133,134,'r',1,NULL,NULL),(134,136,'r',1,NULL,NULL),(135,105,'r',1,NULL,NULL),(136,137,'r',1,NULL,NULL),(137,151,'r',1,NULL,NULL),(138,152,'r',1,NULL,NULL),(139,153,'r',1,NULL,NULL),(140,154,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,77),(2,2,87),(3,2,82),(4,2,81),(5,2,83),(6,3,77),(7,4,104),(8,5,86),(9,5,87),(10,6,107),(11,7,92),(12,7,100),(13,8,118),(14,9,73),(15,10,100),(16,10,98),(17,11,38),(18,12,100),(19,12,90),(20,13,69),(21,14,83),(22,14,82),(23,14,81),(24,14,87),(25,14,86),(26,15,42),(27,15,26),(28,16,84),(29,17,94),(30,17,92),(31,17,100),(32,17,96),(33,18,60),(34,19,49),(35,20,112),(36,21,100),(37,21,98),(38,22,87),(39,23,84),(40,24,91),(41,25,118),(42,26,100),(43,26,94),(44,27,92),(45,28,30),(46,29,100),(47,31,42),(48,30,96),(49,30,94),(50,30,100),(51,30,92),(52,32,81),(53,33,84),(54,34,112),(55,35,113),(56,36,112),(57,37,15),(58,38,87),(59,39,81),(60,39,87),(61,40,38),(62,40,26),(63,40,24),(64,40,30),(65,40,42),(66,41,82),(67,41,83),(68,41,81),(69,41,86),(70,41,87),(71,43,104),(72,42,71),(73,44,77),(74,45,49),(75,46,91),(76,47,38),(77,47,42),(78,48,104),(79,49,73),(80,50,91),(81,51,24),(82,51,30),(83,51,26),(84,51,42),(85,52,42),(86,52,21),(87,53,24),(88,53,26),(89,53,42),(90,53,30),(91,54,15),(92,55,83),(93,55,87),(94,56,38),(95,56,42),(96,57,82),(97,57,87),(98,58,60),(99,59,112),(100,60,118),(101,61,24),(102,61,42),(103,62,77),(104,63,100),(105,65,94),(106,64,26),(107,66,86),(108,66,87),(109,67,80),(110,67,87),(111,68,81),(112,68,82),(113,68,87),(114,68,83),(115,69,60),(116,70,92),(117,70,94),(118,70,96),(119,70,98),(120,70,100),(121,71,87),(122,71,81),(123,72,42),(124,72,30),(125,73,96),(126,74,103),(127,75,15),(128,76,24),(129,77,24),(130,77,42),(131,78,73),(132,79,15),(133,80,100),(134,80,98),(135,80,96),(136,80,94),(137,80,92),(138,81,105),(139,82,19),(140,83,114),(141,84,91),(142,85,82),(143,86,91),(144,87,83),(145,88,96),(146,88,100),(147,89,92),(148,89,100),(149,90,111),(150,91,104),(151,92,104),(152,93,84),(153,94,40),(154,94,28),(155,95,78),(156,96,22),(157,97,39),(158,97,40),(159,98,40),(160,99,35),(161,99,39),(162,99,40),(163,99,32),(164,99,31),(165,100,40),(166,100,31),(167,101,61),(168,102,54),(169,103,28),(170,103,40),(171,104,70),(172,105,27),(173,106,54),(174,107,22),(175,108,72),(176,109,31),(177,109,40),(178,110,35),(179,110,40),(180,111,40),(181,112,35),(182,113,32),(183,114,66),(184,115,22),(185,116,39),(186,117,40),(187,117,32),(188,118,40),(189,118,35),(190,118,32),(191,118,31),(192,119,54),(193,120,70),(194,121,39),(195,121,40),(196,122,39),(197,123,72),(198,124,47),(199,125,44),(200,125,40),(201,126,22),(202,127,31),(203,128,70),(204,129,54),(205,130,54),(206,131,35),(207,132,32),(208,132,31),(209,132,35),(210,132,40),(211,133,22),(212,134,47),(213,135,32),(214,135,31),(215,135,35),(216,135,39),(217,135,40),(218,136,54),(219,137,40),(220,137,32),(221,138,44),(222,138,40),(223,139,22),(224,140,68),(225,141,47),(226,142,22),(227,143,76),(228,143,40),(229,143,72),(230,143,70),(231,143,31),(232,143,32),(233,143,35),(234,144,61),(235,145,31),(236,146,40),(237,146,31),(238,147,52),(239,148,52),(240,149,40),(241,149,76),(242,149,72),(243,149,32),(244,149,35),(245,149,70),(246,149,31),(247,150,70),(248,151,78),(249,152,35),(250,152,40),(251,153,68),(252,154,39),(253,154,40),(254,155,47),(255,156,22),(256,157,27),(257,158,66),(258,159,39),(259,159,40),(260,160,40),(261,160,31),(262,161,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,77,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(2,120,'<com.androidupgrade.battery.AdUtils: void executeAccept(android.content.Context)>',19,'s',NULL),(3,121,'<com.androidupgrade.battery.Splash$1: void run()>',61,'a',NULL),(4,104,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',225,'s',NULL),(5,86,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',13,'a',NULL),(6,107,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(7,92,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(8,122,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(9,73,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(10,98,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(11,37,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(12,131,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(13,69,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(14,132,'<com.androidupgrade.battery.BoosterActivity$4: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(15,26,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(16,133,'<com.androidupgrade.battery.Splash$1: void run()>',126,'a',NULL),(17,135,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(18,60,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(19,49,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(20,138,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(21,98,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(22,87,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(23,133,'<com.androidupgrade.battery.Splash$1: void run()>',187,'a',NULL),(24,91,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL),(25,122,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(26,94,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(27,92,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(28,29,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(29,100,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(30,139,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(31,42,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(32,81,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(33,133,'<com.androidupgrade.battery.Splash$1: void run()>',62,'a',NULL),(34,138,'<com.mobsqueeze.sms.SmsUtils: com.mobsqueeze.sms.SmsUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',15,'p',NULL),(35,113,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(36,112,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(37,140,'<com.extend.battery.ba: void run()>',212,'a',NULL),(38,87,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(39,81,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(40,141,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(41,142,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(42,71,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(43,104,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',80,'s',NULL),(44,121,'<com.androidupgrade.battery.Splash$1: void run()>',169,'a',NULL),(45,49,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(46,91,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(47,37,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(48,104,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',89,'a',NULL),(49,143,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(50,91,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(51,144,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(52,145,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(53,146,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(54,140,'<com.extend.battery.ba: void run()>',118,'a',NULL),(55,83,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(56,37,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(57,82,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(58,147,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(59,138,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(60,118,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(61,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(62,121,'<com.androidupgrade.battery.Splash$1: void run()>',115,'a',NULL),(63,100,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(64,26,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(65,94,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(66,86,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',9,'a',NULL),(67,148,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(68,120,'<com.androidupgrade.battery.AdUtils: void executeContinue(android.content.Context,java.lang.String)>',24,'s',NULL),(69,60,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(70,149,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(71,81,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(72,29,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(73,96,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(74,103,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(75,15,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(76,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(77,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(78,143,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(79,140,'<com.extend.battery.ba: void run()>',58,'a',NULL),(80,150,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(81,105,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(82,19,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(83,114,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(84,91,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(85,82,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(86,91,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(87,83,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(88,96,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(89,92,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(90,111,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(91,104,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',161,'a',NULL),(92,104,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',150,'s',NULL),(93,84,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(94,155,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(95,78,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(96,156,'<com.extend.battery.ba: void run()>',255,'a',NULL),(97,39,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(98,41,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(99,157,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(100,31,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(101,61,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',88,'r',NULL),(102,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',127,'a',0),(103,155,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(104,158,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(105,27,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(106,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',75,'a',NULL),(107,22,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(108,72,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(109,31,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(110,35,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(111,41,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(112,35,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(113,34,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(114,66,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(115,156,'<com.extend.battery.ba: void run()>',160,'a',NULL),(116,39,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(117,34,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(118,159,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(119,160,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(120,158,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(121,39,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(122,39,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(123,72,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(124,47,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(125,46,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',20,'a',NULL),(126,156,'<com.extend.battery.ba: void run()>',255,'a',NULL),(127,31,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(128,158,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(129,160,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(130,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',75,'a',NULL),(131,35,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(132,159,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(133,156,'<com.extend.battery.ba: void run()>',65,'a',NULL),(134,47,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(135,157,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(136,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',127,'a',0),(137,34,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(138,46,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',20,'a',NULL),(139,22,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(140,68,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(141,47,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(142,156,'<com.extend.battery.ba: void run()>',65,'a',NULL),(143,161,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(144,61,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',88,'r',NULL),(145,31,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(146,31,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(147,162,'<com.itframework.installer.b.a: void run()>',31,'a',NULL),(148,162,'<com.itframework.installer.b.a: void run()>',31,'a',NULL),(149,161,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(150,158,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(151,78,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(152,35,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(153,68,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(154,39,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(155,47,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(156,156,'<com.extend.battery.ba: void run()>',160,'a',NULL),(157,27,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(158,66,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(159,39,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(160,31,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(161,34,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,22),(2,6,23),(3,7,22),(4,9,22),(5,12,22),(6,13,22),(7,14,22),(8,15,5),(9,17,25),(10,20,26),(11,26,27),(12,28,1),(13,29,5),(14,32,5),(15,33,1),(16,35,32),(17,37,33),(18,40,22),(19,42,25),(20,43,5),(21,45,22),(22,46,23),(23,49,22),(24,51,23),(25,52,34),(26,53,22),(27,54,5),(28,55,23),(29,57,26),(30,63,35),(31,72,36),(32,73,36),(33,75,5),(34,76,25),(35,77,35),(36,79,5),(37,80,33),(38,82,22),(39,83,1),(40,84,32),(41,87,37),(42,88,37),(43,89,32),(44,90,38),(45,91,33),(46,92,38),(47,94,22),(48,95,22),(49,96,34),(50,97,22),(51,100,36),(52,101,22),(53,102,22),(54,103,23),(55,104,22),(56,105,5),(57,106,22),(58,108,35),(59,109,33),(60,110,22),(61,111,32),(62,112,27),(63,113,22),(64,114,23),(65,125,25),(66,127,35),(67,139,5),(68,146,5),(69,150,36),(70,151,5),(71,153,5),(72,155,5),(73,157,1),(74,159,1),(75,160,5),(76,161,5),(77,162,5),(78,165,25),(79,168,1),(80,175,14),(81,177,1),(82,179,35),(83,185,14),(84,213,36);
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
INSERT INTO `ICategories` VALUES (1,28,1),(2,33,1),(3,83,1),(4,87,2),(5,88,2),(6,90,2),(7,92,2),(8,157,4),(9,159,1),(10,168,4),(11,177,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/androidupgrade/battery/TabHandler'),(2,2,'com/mobsqueeze/SmsService'),(3,3,'com/androidupgrade/battery/TabHandler'),(4,5,'com/androidupgrade/battery/RatingActivity'),(5,8,'com/androidupgrade/battery/FeaturesActivity'),(6,10,'com/zanalytics/sms/SmsReceiverService'),(7,11,'com/androidupgrade/battery/RatingActivity'),(8,16,'com/androidupgrade/battery/FeaturesActivity'),(9,18,'com/extend/battery/FeaturesActivity'),(10,19,'com/androidupgrade/battery/TabHandler'),(11,20,'com/mobsqueeze/sms/SmsReceiverService'),(12,22,'com/androidupgrade/battery/FeaturesActivity'),(13,23,'com/androidupgrade/battery/BatteryService'),(14,21,'com/itframework/installer/util/InstallWorker'),(15,24,'com/androidupgrade/battery/TabHandler'),(16,27,'com/androidupgrade/battery/FeaturesActivity'),(17,25,'com/itframework/installer/util/InstallWorker'),(18,28,'NULL-CONSTANT'),(19,30,'com/androidupgrade/battery/BatteryService'),(20,31,'com/extend/battery/FeaturesActivity'),(21,33,'NULL-CONSTANT'),(22,34,'com/androidupgrade/battery/TabHandler'),(23,36,'com/mobsqueeze/sms/SmsReceiverService'),(24,38,'com/extend/battery/TabHandler'),(25,39,'com/androidupgrade/battery/FeaturesActivity'),(26,41,'com/androidupgrade/battery/FeaturesActivity'),(27,44,'com/extend/battery/BatteryService'),(28,47,'com/androidupgrade/battery/TabHandler'),(29,48,'com/itframework/installer/util/NonMarketDialogActivity'),(30,50,'com/extend/battery/RatingActivity'),(31,56,'com/extend/battery/FeaturesActivity'),(32,57,'com/zanalytics/sms/SmsReceiverService'),(33,58,'com/extend/battery/TabHandler'),(34,59,'com/androidupgrade/battery/FeaturesActivity'),(35,60,'com/extend/battery/FeaturesActivity'),(36,61,'com/androidupgrade/battery/FeaturesActivity'),(37,62,'com/mobsqueeze/sms/SmsReceiverService'),(38,64,'com/androidupgrade/battery/TabHandler'),(39,65,'com/androidupgrade/battery/FeaturesActivity'),(40,68,'com/androidupgrade/battery/FeaturesActivity'),(41,66,'com.android.settings.InstalledAppDetails'),(42,67,'com.android.settings.InstalledAppDetails'),(43,69,'com.android.settings.InstalledAppDetails'),(44,70,'com.android.settings.InstalledAppDetails'),(45,71,'com/androidupgrade/battery/FeaturesActivity'),(46,74,'com/mobsqueeze/SmsService'),(47,78,'com/extend/battery/FeaturesActivity'),(48,81,'com/extend/battery/TabHandler'),(49,83,'NULL-CONSTANT'),(50,85,'com/extend/battery/FeaturesActivity'),(51,86,'com/extend/battery/TabHandler'),(52,93,'com/extend/battery/BatteryService'),(53,98,'com.android.settings.InstalledAppDetails'),(54,99,'com.android.settings.InstalledAppDetails'),(55,107,'com/androidupgrade/battery/FeaturesActivity'),(56,115,'com/androidupgrade/battery/TabHandler'),(57,116,'com/extend/battery/FeaturesActivity'),(58,117,'com/itframework/notification/NotificationService'),(59,118,'com/itframework/notification/NotificationService'),(60,120,'com/extend/battery/TabHandler'),(61,119,'com/itframework/notification/NotificationService'),(62,121,'com/extend/battery/FeaturesActivity'),(63,122,'com/itframework/notification/NotificationService'),(64,123,'com/extend/battery/FeaturesActivity'),(65,124,'com/itframework/notification/NotificationService'),(66,126,'com/itframework/notification/NotificationService'),(67,128,'com/itframework/notification/NotificationService'),(68,130,'com/itframework/notification/NotificationService'),(69,131,'com/itframework/notification/NotificationService'),(70,132,'com/itframework/notification/NotificationService'),(71,133,'com/itframework/notification/NotificationService'),(72,134,'com/extend/battery/FeaturesActivity'),(73,135,'com/itframework/notification/NotificationService'),(74,136,'com/itframework/notification/NotificationService'),(75,137,'com/extend/battery/BatteryService'),(76,138,'com/itframework/notification/NotificationService'),(77,140,'com/itframework/notification/NotificationService'),(78,141,'com/extend/battery/TabHandler'),(79,142,'com/itframework/notification/NotificationService'),(80,143,'com/extend/battery/FeaturesActivity'),(81,144,'com/extend/battery/FeaturesActivity'),(82,145,'com/extend/battery/FeaturesActivity'),(83,147,'com.android.settings.InstalledAppDetails'),(84,148,'com.android.settings.InstalledAppDetails'),(85,149,'com/extend/battery/TabHandler'),(86,152,'com/extend/battery/FeaturesActivity'),(87,154,'com/extend/battery/RatingActivity'),(88,156,'com/itframework/installer/util/NonMarketDialogActivity'),(89,158,'com/extend/battery/TabHandler'),(90,159,'NULL-CONSTANT'),(91,163,'com/extend/battery/TabHandler'),(92,164,'com/itframework/installer/util/InstallWorker'),(93,166,'com/itframework/installer/util/InstallWorker'),(94,167,'com/extend/battery/FeaturesActivity'),(95,169,'com/extend/battery/TabHandler'),(96,170,'com/extend/battery/BatteryService'),(97,171,'com/itframework/installer/util/NonMarketDialogActivity'),(98,172,'com/extend/battery/TabHandler'),(99,173,'com/itframework/base/util/UploadAnalyticsService'),(100,174,'com/zanalytics/sms/SmsSendService'),(101,177,'NULL-CONSTANT'),(102,175,'com/zanalytics/sms/SmsSendService'),(103,178,'com/zanalytics/sms/SmsReceiverService'),(104,180,'com/extend/battery/UninstallingDialog'),(105,181,'com/extend/battery/UninstallingDialog'),(106,182,'com/itframework/base/util/UploadAnalyticsService'),(107,183,'com/zanalytics/sms/SmsSendService'),(108,184,'com/itframework/notification/NotificationService'),(109,186,'com/itframework/notification/NotificationService'),(110,185,'com/zanalytics/sms/SmsSendService'),(111,188,'com/zanalytics/sms/SmsReceiverService'),(112,187,'com/itframework/notification/NotificationService'),(113,190,'com/extend/battery/FeaturesActivity'),(114,189,'com/itframework/notification/NotificationService'),(115,192,'com/extend/battery/BatteryService'),(116,191,'com/itframework/notification/NotificationService'),(117,193,'com/extend/battery/RatingActivity'),(118,194,'com/itframework/notification/NotificationService'),(119,196,'com/itframework/notification/NotificationService'),(120,195,'com/itframework/installer/util/InstallWorker'),(121,197,'com/itframework/notification/NotificationService'),(122,199,'com/itframework/notification/NotificationService'),(123,198,'com/itframework/installer/util/InstallWorker'),(124,200,'com/itframework/notification/NotificationService'),(125,202,'com/extend/battery/TabHandler'),(126,201,'com/itframework/notification/NotificationService'),(127,203,'com/extend/battery/BatteryService'),(128,204,'com/itframework/notification/NotificationService'),(129,205,'com/extend/battery/FeaturesActivity'),(130,206,'com/itframework/notification/NotificationService'),(131,207,'com/itframework/notification/NotificationService'),(132,208,'com/itframework/notification/NotificationService'),(133,209,'com/itframework/notification/NotificationService'),(134,210,'com/extend/battery/FeaturesActivity'),(135,211,'com.android.settings.InstalledAppDetails'),(136,212,'com.android.settings.InstalledAppDetails');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,15,2),(2,26,5),(3,29,6),(4,32,7),(5,43,9),(6,52,10),(7,54,12),(8,63,14),(9,72,15),(10,73,16),(11,75,17),(12,77,18),(13,79,19),(14,96,21),(15,100,22),(16,105,23),(17,108,24),(18,112,25),(19,127,26),(20,139,28),(21,146,30),(22,150,31),(23,151,32),(24,153,33),(25,155,36),(26,160,38),(27,161,39),(28,162,40),(29,179,41),(30,213,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'cacheUrl'),(2,2,'response'),(3,2,'message'),(4,2,'shortCode'),(5,2,'delay'),(6,4,'<INTENT>'),(7,4,'type'),(8,6,'<INTENT>'),(9,7,'campId'),(10,6,'type'),(11,7,'title'),(12,7,'text'),(13,7,'appId'),(14,7,'creativeId'),(15,7,'expiry_time'),(16,7,'link'),(17,7,'adType'),(18,7,'type'),(19,7,'imageurl'),(20,7,'header'),(21,7,'apikey'),(22,9,'campId'),(23,9,'title'),(24,9,'text'),(25,9,'appId'),(26,9,'creativeId'),(27,10,'result'),(28,9,'expiry_time'),(29,10,'abort'),(30,9,'link'),(31,9,'adType'),(32,9,'type'),(33,9,'imageurl'),(34,9,'apikey'),(35,12,'title'),(36,12,'text'),(37,12,'appId'),(38,12,'expiry_time'),(39,12,'number'),(40,12,'adType'),(41,12,'type'),(42,12,'imageurl'),(43,12,'apikey'),(44,13,'title'),(45,13,'text'),(46,13,'appId'),(47,13,'expiry_time'),(48,13,'type'),(49,13,'imageurl'),(50,13,'apikey'),(51,14,'campId'),(52,14,'title'),(53,14,'text'),(54,14,'appId'),(55,14,'creativeId'),(56,14,'expiry_time'),(57,14,'number'),(58,14,'adType'),(59,14,'sms'),(60,14,'type'),(61,14,'imageurl'),(62,14,'apikey'),(63,20,'TryCount'),(64,20,'NextMessage'),(65,20,'TryAgain'),(66,20,'StoreMessage'),(67,20,'Message'),(68,20,'Delay'),(69,20,'PhoneNumber'),(70,20,'TagEvent'),(71,21,'downloadingProgress'),(72,21,'downloadingWait'),(73,21,'downloadingToast'),(74,21,'finishedText'),(75,21,'downloadingTicker'),(76,21,'downloadingTitle'),(77,21,'filename'),(78,21,'finishedTicker'),(79,21,'forceDownload'),(80,21,'finishedTitle'),(81,21,'url'),(82,21,'downloadStarting'),(83,25,'downloadingProgress'),(84,25,'downloadingWait'),(85,26,'sms_body'),(86,25,'downloadingToast'),(87,25,'callbackIntent'),(88,25,'finishedText'),(89,25,'downloadingTicker'),(90,25,'downloadingTitle'),(91,25,'filename'),(92,25,'finishedTicker'),(93,25,'forceDownload'),(94,25,'finishedTitle'),(95,25,'url'),(96,25,'downloadStarting'),(97,35,'icon'),(98,35,'appId'),(99,36,'result'),(100,35,'testMode'),(101,35,'type'),(102,35,'apikey'),(103,37,'icon'),(104,37,'appId'),(105,37,'testMode'),(106,37,'type'),(107,37,'apikey'),(108,40,'icon'),(109,40,'appId'),(110,40,'testMode'),(111,40,'type'),(112,40,'apikey'),(113,45,'<INTENT>'),(114,45,'type'),(115,46,'<INTENT>'),(116,46,'type'),(117,49,'<INTENT>'),(118,49,'type'),(119,51,'<INTENT>'),(120,51,'type'),(121,53,'<INTENT>'),(122,53,'type'),(123,55,'<INTENT>'),(124,55,'type'),(125,57,'TryCount'),(126,57,'NextMessage'),(127,57,'TryAgain'),(128,57,'StoreMessage'),(129,57,'Message'),(130,57,'Delay'),(131,57,'PhoneNumber'),(132,57,'TagEvent'),(133,62,'result'),(134,62,'abort'),(135,66,'com.android.settings.ApplicationPkgName'),(136,67,'com.android.settings.ApplicationPkgName'),(137,69,'pkg'),(138,70,'pkg'),(139,74,'response'),(140,74,'message'),(141,74,'shortCode'),(142,80,'appId'),(143,81,'cacheUrl'),(144,80,'type'),(145,80,'apikey'),(146,82,'appId'),(147,82,'type'),(148,82,'apikey'),(149,84,'appId'),(150,84,'type'),(151,84,'apikey'),(152,87,'u'),(153,87,'o'),(154,88,'u'),(155,89,'icon'),(156,89,'appId'),(157,89,'testMode'),(158,89,'type'),(159,89,'apikey'),(160,90,'u'),(161,91,'icon'),(162,91,'appId'),(163,92,'u'),(164,91,'testMode'),(165,92,'o'),(166,91,'type'),(167,91,'apikey'),(168,94,'icon'),(169,94,'appId'),(170,95,'campId'),(171,94,'testMode'),(172,95,'title'),(173,94,'type'),(174,95,'text'),(175,94,'apikey'),(176,95,'appId'),(177,95,'creativeId'),(178,95,'expiry_time'),(179,95,'link'),(180,95,'adType'),(181,95,'type'),(182,95,'imageurl'),(183,95,'header'),(184,95,'apikey'),(185,98,'com.android.settings.ApplicationPkgName'),(186,97,'campId'),(187,97,'title'),(188,97,'text'),(189,97,'appId'),(190,99,'pkg'),(191,97,'creativeId'),(192,97,'expiry_time'),(193,97,'link'),(194,97,'adType'),(195,97,'type'),(196,97,'imageurl'),(197,97,'apikey'),(198,101,'title'),(199,101,'text'),(200,101,'appId'),(201,102,'<INTENT>'),(202,101,'expiry_time'),(203,102,'type'),(204,101,'number'),(205,101,'adType'),(206,101,'type'),(207,103,'<INTENT>'),(208,101,'imageurl'),(209,103,'type'),(210,101,'apikey'),(211,104,'title'),(212,104,'text'),(213,104,'appId'),(214,104,'expiry_time'),(215,104,'type'),(216,104,'imageurl'),(217,104,'apikey'),(218,106,'campId'),(219,106,'title'),(220,106,'text'),(221,106,'appId'),(222,106,'creativeId'),(223,106,'expiry_time'),(224,106,'number'),(225,106,'adType'),(226,106,'sms'),(227,106,'type'),(228,106,'imageurl'),(229,106,'apikey'),(230,109,'appId'),(231,109,'type'),(232,109,'apikey'),(233,110,'appId'),(234,110,'type'),(235,110,'apikey'),(236,111,'appId'),(237,111,'type'),(238,111,'apikey'),(239,112,'sms_body'),(240,113,'<INTENT>'),(241,113,'type'),(242,114,'<INTENT>'),(243,114,'type'),(244,115,'cacheUrl'),(245,117,'DO_AUTO_CANCEL'),(246,117,'NOTIFICATION_CATEGORY'),(247,117,'ACTION'),(248,117,'NOTIFICATION_ID'),(249,118,'NOTIFICATION_CATEGORY'),(250,118,'ACTION'),(251,118,'NOTIFICATION_ID'),(252,119,'DO_AUTO_CANCEL'),(253,119,'CLICKED_EVENT'),(254,119,'ACTION'),(255,119,'BROADCAST_INTENT'),(256,119,'NOTIFICATION_ID'),(257,122,'ACTION'),(258,122,'NOTIFICATION_ID'),(259,124,'CLICKED_EVENT'),(260,124,'ACTION'),(261,124,'BROADCAST_INTENT'),(262,124,'NOTIFICATION_ID'),(263,126,'DO_AUTO_CANCEL'),(264,126,'CLICKED_EVENT'),(265,126,'NOTIFICATION_CATEGORY'),(266,126,'ACTION'),(267,126,'BROADCAST_INTENT'),(268,126,'NOTIFICATION_ID'),(269,128,'CLICKED_EVENT'),(270,128,'ACTION'),(271,128,'NOTIFICATION_ID'),(272,130,'CLICKED_EVENT'),(273,130,'DO_AUTO_CANCEL'),(274,130,'NOTIFICATION_CATEGORY'),(275,130,'ACTION'),(276,130,'NOTIFICATION_ID'),(277,131,'DO_AUTO_CANCEL'),(278,131,'NOTIFICATION_CATEGORY'),(279,131,'ACTION'),(280,131,'BROADCAST_INTENT'),(281,131,'NOTIFICATION_ID'),(282,132,'DO_AUTO_CANCEL'),(283,132,'ACTION'),(284,132,'BROADCAST_INTENT'),(285,132,'NOTIFICATION_ID'),(286,133,'CLICKED_EVENT'),(287,133,'NOTIFICATION_CATEGORY'),(288,133,'ACTION'),(289,133,'BROADCAST_INTENT'),(290,133,'NOTIFICATION_ID'),(291,135,'ACTION'),(292,135,'BROADCAST_INTENT'),(293,135,'NOTIFICATION_ID'),(294,136,'DO_AUTO_CANCEL'),(295,136,'CLICKED_EVENT'),(296,136,'ACTION'),(297,136,'NOTIFICATION_ID'),(298,138,'NOTIFICATION_CATEGORY'),(299,138,'ACTION'),(300,138,'BROADCAST_INTENT'),(301,138,'NOTIFICATION_ID'),(302,140,'DO_AUTO_CANCEL'),(303,140,'ACTION'),(304,140,'NOTIFICATION_ID'),(305,141,'cacheUrl'),(306,142,'CLICKED_EVENT'),(307,142,'NOTIFICATION_CATEGORY'),(308,142,'ACTION'),(309,142,'NOTIFICATION_ID'),(310,147,'com.android.settings.ApplicationPkgName'),(311,148,'pkg'),(312,164,'downloadingProgress'),(313,164,'downloadingWait'),(314,164,'downloadingToast'),(315,164,'finishedText'),(316,164,'downloadingTicker'),(317,164,'downloadingTitle'),(318,164,'filename'),(319,164,'finishedTicker'),(320,164,'forceDownload'),(321,164,'finishedTitle'),(322,164,'url'),(323,164,'downloadStarting'),(324,166,'downloadingProgress'),(325,166,'downloadingWait'),(326,166,'downloadingToast'),(327,166,'callbackIntent'),(328,166,'finishedText'),(329,166,'downloadingTicker'),(330,166,'downloadingTitle'),(331,166,'filename'),(332,166,'finishedTicker'),(333,166,'forceDownload'),(334,166,'finishedTitle'),(335,166,'url'),(336,166,'downloadStarting'),(337,169,'cacheUrl'),(338,175,'TryCount'),(339,175,'NextMessage'),(340,175,'TryAgain'),(341,175,'StoreMessage'),(342,175,'Message'),(343,175,'Delay'),(344,175,'PhoneNumber'),(345,175,'TagEvent'),(346,175,'MessageExtra'),(347,178,'result'),(348,178,'abort'),(349,184,'DO_AUTO_CANCEL'),(350,184,'NOTIFICATION_CATEGORY'),(351,184,'ACTION'),(352,185,'TryCount'),(353,184,'NOTIFICATION_ID'),(354,185,'NextMessage'),(355,185,'TryAgain'),(356,185,'StoreMessage'),(357,185,'Message'),(358,186,'NOTIFICATION_CATEGORY'),(359,185,'Delay'),(360,186,'ACTION'),(361,185,'PhoneNumber'),(362,186,'NOTIFICATION_ID'),(363,185,'TagEvent'),(364,185,'MessageExtra'),(365,187,'DO_AUTO_CANCEL'),(366,187,'CLICKED_EVENT'),(367,188,'result'),(368,187,'ACTION'),(369,188,'abort'),(370,187,'BROADCAST_INTENT'),(371,187,'NOTIFICATION_ID'),(372,189,'ACTION'),(373,189,'NOTIFICATION_ID'),(374,191,'CLICKED_EVENT'),(375,191,'ACTION'),(376,191,'BROADCAST_INTENT'),(377,191,'NOTIFICATION_ID'),(378,194,'DO_AUTO_CANCEL'),(379,194,'CLICKED_EVENT'),(380,194,'NOTIFICATION_CATEGORY'),(381,194,'ACTION'),(382,194,'BROADCAST_INTENT'),(383,195,'downloadingProgress'),(384,194,'NOTIFICATION_ID'),(385,195,'downloadingWait'),(386,195,'downloadingToast'),(387,195,'finishedText'),(388,196,'CLICKED_EVENT'),(389,195,'downloadingTicker'),(390,196,'ACTION'),(391,195,'downloadingTitle'),(392,196,'NOTIFICATION_ID'),(393,195,'filename'),(394,195,'finishedTicker'),(395,195,'forceDownload'),(396,197,'CLICKED_EVENT'),(397,195,'finishedTitle'),(398,197,'DO_AUTO_CANCEL'),(399,195,'url'),(400,197,'NOTIFICATION_CATEGORY'),(401,195,'downloadStarting'),(402,197,'ACTION'),(403,197,'NOTIFICATION_ID'),(404,198,'downloadingProgress'),(405,198,'downloadingWait'),(406,199,'DO_AUTO_CANCEL'),(407,198,'downloadingToast'),(408,199,'NOTIFICATION_CATEGORY'),(409,198,'callbackIntent'),(410,199,'ACTION'),(411,198,'finishedText'),(412,199,'BROADCAST_INTENT'),(413,198,'downloadingTicker'),(414,199,'NOTIFICATION_ID'),(415,198,'downloadingTitle'),(416,198,'filename'),(417,198,'finishedTicker'),(418,198,'forceDownload'),(419,200,'DO_AUTO_CANCEL'),(420,198,'finishedTitle'),(421,200,'ACTION'),(422,198,'url'),(423,200,'BROADCAST_INTENT'),(424,198,'downloadStarting'),(425,200,'NOTIFICATION_ID'),(426,201,'CLICKED_EVENT'),(427,201,'NOTIFICATION_CATEGORY'),(428,201,'ACTION'),(429,201,'BROADCAST_INTENT'),(430,201,'NOTIFICATION_ID'),(431,204,'ACTION'),(432,204,'BROADCAST_INTENT'),(433,204,'NOTIFICATION_ID'),(434,206,'DO_AUTO_CANCEL'),(435,206,'CLICKED_EVENT'),(436,206,'ACTION'),(437,206,'NOTIFICATION_ID'),(438,207,'NOTIFICATION_CATEGORY'),(439,207,'ACTION'),(440,207,'BROADCAST_INTENT'),(441,207,'NOTIFICATION_ID'),(442,208,'DO_AUTO_CANCEL'),(443,208,'ACTION'),(444,208,'NOTIFICATION_ID'),(445,209,'CLICKED_EVENT'),(446,209,'NOTIFICATION_CATEGORY'),(447,209,'ACTION'),(448,209,'NOTIFICATION_ID'),(449,211,'com.android.settings.ApplicationPkgName'),(450,212,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,4),(7,7,1),(8,8,1),(9,9,5),(10,10,5),(11,11,5),(12,12,6),(13,13,7),(14,14,8),(15,15,8),(16,16,3),(17,17,9),(18,18,9),(19,19,2),(20,20,10),(21,21,6),(22,22,6),(23,23,11),(24,24,4),(25,25,7),(26,26,7),(27,27,6),(28,28,3),(29,29,3),(30,30,2),(31,31,7),(32,32,2),(33,33,12),(34,34,12),(35,35,3),(36,37,13),(37,36,2),(38,38,13),(39,39,14),(40,40,14),(41,41,1),(42,42,15),(43,43,15),(44,44,16),(45,45,16),(46,46,17),(47,47,17),(48,48,1),(49,49,18),(50,50,18),(51,51,7),(52,52,3),(53,53,19),(54,54,7),(55,55,20),(56,56,21),(57,57,4),(58,58,4),(59,59,21),(60,60,20),(61,61,3),(62,62,19),(63,63,4),(64,64,24),(65,65,24),(66,66,24),(67,67,24),(68,68,24),(69,69,24),(70,70,24),(71,71,24),(72,72,24),(73,73,24),(74,74,24),(75,75,24),(76,76,24),(77,77,24),(78,78,24),(79,79,24),(80,80,24),(81,81,24),(82,82,24),(83,83,24),(84,84,24),(85,85,24),(86,86,24),(87,87,24),(88,88,24),(89,89,24),(90,90,24),(91,91,24),(92,92,24),(93,93,24),(94,94,24),(95,95,24),(96,96,24),(97,97,24),(98,98,24),(99,99,24),(100,100,24),(101,101,24),(102,102,24),(103,103,24),(104,104,24),(105,105,24),(106,106,24),(107,107,24),(108,108,24),(109,109,30),(110,109,31),(111,109,28),(112,109,29),(113,109,24),(114,110,29),(115,110,30),(116,110,31),(117,110,24),(118,110,28),(119,111,30),(120,111,31),(121,111,29),(122,111,28),(123,111,24),(124,112,31),(125,112,28),(126,112,30),(127,112,29),(128,112,24),(129,113,24),(130,113,30),(131,113,31),(132,113,28),(133,113,29),(134,114,28),(135,114,29),(136,114,30),(137,114,31),(138,114,24),(139,115,30),(140,115,31),(141,115,28),(142,115,29),(143,115,24),(144,116,31),(145,116,28),(146,116,29),(147,116,30),(148,116,24),(149,117,24),(150,118,24),(151,119,24),(152,120,24),(153,121,24),(154,122,24),(155,123,24),(156,124,24),(157,125,24),(158,126,24),(159,127,24),(160,128,24),(161,129,24),(162,130,24),(163,131,24),(164,132,24),(165,133,29),(166,133,28),(167,133,31),(168,133,30),(169,134,24),(170,135,30),(171,135,31),(172,135,28),(173,135,29),(174,136,24),(175,137,30),(176,137,31),(177,137,28),(178,137,29),(179,138,24),(180,139,29),(181,139,28),(182,139,31),(183,139,30),(184,140,24),(185,141,31),(186,141,30),(187,141,29),(188,141,28),(189,142,28),(190,142,31),(191,142,29),(192,142,30),(193,143,29),(194,143,28),(195,143,30),(196,143,31),(197,144,30),(198,144,29),(199,144,28),(200,144,31),(201,145,29),(202,145,28),(203,145,31),(204,145,30),(205,146,28),(206,146,31),(207,146,29),(208,146,30),(209,147,28),(210,147,29),(211,147,30),(212,147,31),(213,148,24),(214,149,24),(215,150,24),(216,151,24),(217,152,24),(218,153,24),(219,154,24),(220,155,30),(221,155,31),(222,155,28),(223,155,29),(224,156,24),(225,157,30),(226,157,31),(227,157,28),(228,157,29),(229,158,24),(230,159,28),(231,159,29),(232,159,31),(233,159,30),(234,160,24),(235,161,30),(236,161,31),(237,161,28),(238,161,29),(239,162,24),(240,163,31),(241,163,30),(242,163,29),(243,163,28),(244,164,31),(245,164,28),(246,164,30),(247,164,29),(248,165,31),(249,165,30),(250,165,29),(251,165,28),(252,166,24),(253,167,28),(254,167,29),(255,167,30),(256,167,31),(257,168,24),(258,169,28),(259,169,29),(260,169,30),(261,169,31),(262,170,24),(263,171,24),(264,172,24),(265,173,24),(266,174,24),(267,175,24),(268,176,24),(269,177,24),(270,178,24),(271,179,24),(272,180,24),(273,181,24),(274,182,24),(275,183,24),(276,184,24),(277,185,24),(278,186,24),(279,187,24),(280,188,24),(281,188,31),(282,188,29),(283,188,30),(284,188,28),(285,189,24),(286,189,28),(287,189,29),(288,189,30),(289,189,31),(290,190,24),(291,190,28),(292,190,31),(293,190,29),(294,190,30),(295,191,24),(296,191,29),(297,191,28),(298,191,31),(299,191,30),(300,192,31),(301,192,29),(302,192,30),(303,192,28),(304,192,24),(305,193,28),(306,193,29),(307,193,30),(308,193,31),(309,193,24),(310,194,24),(311,194,28),(312,194,31),(313,194,29),(314,194,30),(315,195,24),(316,195,28),(317,195,29),(318,195,30),(319,195,31),(320,196,31),(321,196,30),(322,196,29),(323,196,28),(324,196,24),(325,197,29),(326,197,28),(327,197,31),(328,197,30),(329,197,24),(330,198,31),(331,198,30),(332,198,29),(333,198,24),(334,198,28),(335,199,31),(336,199,30),(337,199,24),(338,199,29),(339,199,28),(340,200,24),(341,201,24),(342,202,24),(343,203,24),(344,204,24),(345,205,24),(346,206,24),(347,207,24),(348,208,24),(349,209,24),(350,210,24),(351,211,24),(352,212,24),(353,213,24),(354,214,24),(355,215,24),(356,216,24),(357,217,24),(358,218,24),(359,219,24),(360,220,24),(361,221,24),(362,222,24),(363,223,24),(364,224,24),(365,225,24),(366,226,24),(367,227,24),(368,228,24),(369,229,24),(370,230,24),(371,231,24),(372,232,24),(373,233,24),(374,234,24),(375,235,24),(376,236,31),(377,236,28),(378,236,30),(379,236,29),(380,236,24),(381,237,24),(382,237,30),(383,237,31),(384,237,28),(385,237,29),(386,238,24),(387,238,28),(388,238,29),(389,238,30),(390,238,31),(391,239,29),(392,239,28),(393,239,24),(394,239,30),(395,239,31),(396,240,28),(397,240,30),(398,240,29),(399,240,24),(400,240,31),(401,241,24),(402,241,28),(403,241,29),(404,241,30),(405,241,31),(406,242,24),(407,242,28),(408,242,31),(409,242,29),(410,242,30),(411,243,24),(412,243,30),(413,243,31),(414,243,28),(415,243,29),(416,244,24),(417,244,31),(418,244,29),(419,244,30),(420,244,28),(421,245,29),(422,245,28),(423,245,31),(424,245,30),(425,245,24),(426,246,31),(427,246,30),(428,246,29),(429,246,24),(430,246,28),(431,247,31),(432,247,30),(433,247,29),(434,247,28),(435,247,24),(436,248,24),(437,249,24),(438,250,24),(439,251,24),(440,252,24),(441,253,24),(442,254,24),(443,255,24),(444,256,24),(445,257,24),(446,258,24),(447,259,24),(448,260,24),(449,261,24),(450,262,24),(451,263,24),(452,264,24),(453,265,24),(454,266,24),(455,267,24),(456,268,24),(457,269,24),(458,270,24),(459,271,24);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,7,1),(5,8,1),(6,9,2),(7,9,3),(8,10,3),(9,10,2),(10,11,3),(11,11,2),(12,41,1),(13,48,1),(14,51,4),(15,54,4);
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
INSERT INTO `IFData` VALUES (1,55,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,60,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,29,'application','vnd.android.package-archive'),(2,75,'application','vnd.android.package-archive'),(3,79,'application','vnd.android.package-archive'),(4,105,'application','vnd.android.package-archive'),(5,139,'application','vnd.android.package-archive'),(6,146,'application','vnd.android.package-archive'),(7,160,'application','vnd.android.package-archive'),(8,161,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.androidupgrade.battery'),(2,2,'com.androidupgrade.battery'),(3,3,'com.androidupgrade.battery'),(4,5,'com.androidupgrade.battery'),(5,8,'com.extender.sc'),(6,10,'com.extend.battery'),(7,11,'com.extender.sc'),(8,16,'com.extender.sc'),(9,18,'com.extend.battery'),(10,19,'com.extender.sc'),(11,20,'com.extender.sc'),(12,22,'com.extender.sc'),(13,23,'com.androidupgrade.battery'),(14,21,'com.extend.battery'),(15,24,'com.extender.sc'),(16,27,'com.extender.sc'),(17,25,'com.extend.battery'),(18,28,'NULL-CONSTANT'),(19,30,'com.extender.sc'),(20,31,'com.extend.battery'),(21,33,'NULL-CONSTANT'),(22,34,'com.extender.sc'),(23,36,'com.androidupgrade.battery'),(24,38,'com.extend.battery'),(25,39,'com.androidupgrade.battery'),(26,41,'com.androidupgrade.battery'),(27,44,'com.extend.battery'),(28,47,'com.androidupgrade.battery'),(29,48,'com.extend.battery'),(30,50,'com.extend.battery'),(31,56,'com.extend.battery'),(32,57,'com.extend.battery'),(33,58,'com.extend.battery'),(34,59,'com.androidupgrade.battery'),(35,60,'com.extend.battery'),(36,61,'com.androidupgrade.battery'),(37,62,'com.extender.sc'),(38,64,'com.androidupgrade.battery'),(39,65,'com.extender.sc'),(40,68,'com.androidupgrade.battery'),(41,66,'com.android.settings'),(42,67,'com.android.settings'),(43,69,'com.android.settings'),(44,70,'com.android.settings'),(45,71,'com.androidupgrade.battery'),(46,74,'com.androidupgrade.battery'),(47,78,'com.extend.battery'),(48,81,'com.extend.battery'),(49,83,'NULL-CONSTANT'),(50,85,'com.extend.battery'),(51,86,'com.extend.battery'),(52,93,'com.extend.battery'),(53,98,'com.android.settings'),(54,99,'com.android.settings'),(55,107,'com.extender.sc'),(56,115,'com.extender.sc'),(57,116,'com.extend.battery'),(58,117,'com.extend.battery'),(59,118,'com.extend.battery'),(60,120,'com.extend.battery'),(61,119,'com.extend.battery'),(62,121,'com.extend.battery'),(63,122,'com.extend.battery'),(64,123,'com.extend.battery'),(65,124,'com.extend.battery'),(66,126,'com.extend.battery'),(67,128,'com.extend.battery'),(68,130,'com.extend.battery'),(69,131,'com.extend.battery'),(70,132,'com.extend.battery'),(71,133,'com.extend.battery'),(72,134,'com.extend.battery'),(73,135,'com.extend.battery'),(74,136,'com.extend.battery'),(75,137,'com.extend.battery'),(76,138,'com.extend.battery'),(77,140,'com.extend.battery'),(78,141,'com.extend.battery'),(79,142,'com.extend.battery'),(80,143,'com.extend.battery'),(81,144,'com.extend.battery'),(82,145,'com.extend.battery'),(83,147,'com.android.settings'),(84,148,'com.android.settings'),(85,149,'com.extend.battery'),(86,152,'com.extend.battery'),(87,154,'com.extend.battery'),(88,156,'com.extend.battery'),(89,158,'com.extend.battery'),(90,159,'NULL-CONSTANT'),(91,163,'com.extend.battery'),(92,164,'com.extend.battery'),(93,166,'com.extend.battery'),(94,167,'com.extend.battery'),(95,169,'com.extend.battery'),(96,170,'com.extend.battery'),(97,171,'com.extend.battery'),(98,172,'com.extend.battery'),(99,173,'com.extend.battery'),(100,174,'com.extend.battery'),(101,177,'NULL-CONSTANT'),(102,175,'com.extend.battery'),(103,178,'com.extend.battery'),(104,180,'com.extend.battery'),(105,181,'com.extend.battery'),(106,182,'com.extend.battery'),(107,183,'com.extend.battery'),(108,184,'com.extend.battery'),(109,186,'com.extend.battery'),(110,185,'com.extend.battery'),(111,188,'com.extend.battery'),(112,187,'com.extend.battery'),(113,190,'com.extend.battery'),(114,189,'com.extend.battery'),(115,192,'com.extend.battery'),(116,191,'com.extend.battery'),(117,193,'com.extend.battery'),(118,194,'com.extend.battery'),(119,196,'com.extend.battery'),(120,195,'com.extend.battery'),(121,197,'com.extend.battery'),(122,199,'com.extend.battery'),(123,198,'com.extend.battery'),(124,200,'com.extend.battery'),(125,202,'com.extend.battery'),(126,201,'com.extend.battery'),(127,203,'com.extend.battery'),(128,204,'com.extend.battery'),(129,205,'com.extend.battery'),(130,206,'com.extend.battery'),(131,207,'com.extend.battery'),(132,208,'com.extend.battery'),(133,209,'com.extend.battery'),(134,210,'com.extend.battery'),(135,211,'com.android.settings'),(136,212,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,13,0),(3,13,0),(4,14,0),(5,15,0),(6,16,0),(7,22,0),(8,22,0),(9,47,0),(10,47,0),(11,49,0),(12,50,0),(13,56,0),(14,62,0),(15,62,0),(16,64,0),(17,62,0),(18,62,0),(19,64,0),(20,65,0),(21,66,0),(22,66,0),(23,65,0),(24,67,0),(25,68,0),(26,68,0),(27,69,0),(28,70,0),(29,70,0),(30,70,0),(31,71,0),(32,70,0),(33,72,0),(34,72,0),(35,73,0),(36,73,0),(37,75,0),(38,74,0),(39,76,0),(40,76,0),(41,77,0),(42,78,0),(43,78,0),(44,78,0),(45,78,0),(46,78,0),(47,78,0),(48,84,0),(49,95,0),(50,108,0),(51,109,0),(52,112,0),(53,112,0),(54,115,0),(55,112,0),(56,112,0),(57,116,0),(58,117,0),(59,118,0),(60,118,0),(61,118,0),(62,118,0),(63,119,0),(64,120,0),(65,65,0),(66,121,0),(67,122,0),(68,123,0),(69,124,0),(70,125,0),(71,73,0),(72,69,0),(73,126,0),(74,116,0),(75,127,0),(76,71,0),(77,128,0),(78,118,0),(79,115,0),(80,119,0),(81,129,0),(82,130,0),(83,131,0),(84,120,0),(85,65,0),(86,132,0),(87,122,0),(88,124,0),(89,133,0),(90,73,0),(91,69,0),(92,134,0),(93,127,0),(94,112,0),(95,71,0),(96,109,0),(97,117,0),(98,135,0),(99,136,0),(100,131,0),(101,132,0),(102,133,0),(103,134,0),(104,112,0),(105,109,0),(106,117,0),(107,135,0),(108,136,0),(109,120,0),(110,65,0),(111,122,0),(112,124,0),(113,73,0),(114,69,0),(115,127,0),(116,71,0),(117,121,0),(118,123,0),(119,125,0),(120,126,0),(121,116,0),(122,128,0),(123,118,0),(124,131,0),(125,115,0),(126,132,0),(127,119,0),(128,133,0),(129,129,0),(130,134,0),(131,130,0),(132,112,0),(133,121,0),(134,109,0),(135,123,0),(136,117,0),(137,125,0),(138,135,0),(139,126,0),(140,136,0),(141,116,0),(142,128,0),(143,118,0),(144,115,0),(145,119,0),(146,129,0),(147,130,0),(148,121,0),(149,123,0),(150,125,0),(151,126,0),(152,116,0),(153,128,0),(154,118,0),(155,131,0),(156,115,0),(157,132,0),(158,119,0),(159,133,0),(160,129,0),(161,134,0),(162,130,0),(163,112,0),(164,109,0),(165,117,0),(166,120,0),(167,135,0),(168,65,0),(169,136,0),(170,122,0),(171,124,0),(172,73,0),(173,69,0),(174,127,0),(175,71,0),(176,76,0),(177,137,0),(178,62,0),(179,72,0),(180,138,0),(181,74,0),(182,139,0),(183,140,0),(184,70,0),(185,78,0),(186,66,0),(187,68,0),(188,76,0),(189,137,0),(190,62,0),(191,72,0),(192,138,0),(193,74,0),(194,139,0),(195,140,0),(196,70,0),(197,78,0),(198,66,0),(199,68,0),(200,76,0),(201,137,0),(202,62,0),(203,72,0),(204,138,0),(205,74,0),(206,139,0),(207,76,0),(208,140,0),(209,137,0),(210,70,0),(211,62,0),(212,78,0),(213,72,0),(214,66,0),(215,138,0),(216,68,0),(217,74,0),(218,139,0),(219,140,0),(220,70,0),(221,78,0),(222,66,0),(223,68,0),(224,76,0),(225,137,0),(226,62,0),(227,72,0),(228,138,0),(229,74,0),(230,139,0),(231,140,0),(232,70,0),(233,78,0),(234,66,0),(235,68,0),(236,76,0),(237,137,0),(238,62,0),(239,72,0),(240,138,0),(241,74,0),(242,139,0),(243,140,0),(244,70,0),(245,78,0),(246,66,0),(247,68,0),(248,76,0),(249,137,0),(250,62,0),(251,72,0),(252,138,0),(253,74,0),(254,139,0),(255,140,0),(256,70,0),(257,78,0),(258,66,0),(259,68,0),(260,76,0),(261,137,0),(262,62,0),(263,72,0),(264,138,0),(265,74,0),(266,139,0),(267,140,0),(268,70,0),(269,78,0),(270,66,0),(271,68,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,4,1,0),(7,6,1,0),(8,7,0,0),(9,6,1,0),(10,9,0,0),(11,10,0,0),(12,6,1,0),(13,6,1,0),(14,6,1,0),(15,11,1,0),(16,12,0,0),(17,14,1,0),(18,15,0,0),(19,16,0,0),(20,17,0,0),(21,19,0,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,19,0,0),(26,24,1,0),(27,26,0,0),(28,27,0,0),(29,28,1,0),(30,29,0,0),(31,31,0,0),(32,30,1,0),(33,32,0,0),(34,33,0,0),(35,35,1,0),(36,36,0,0),(37,35,1,0),(38,37,0,0),(39,38,0,0),(40,35,1,0),(41,39,0,0),(42,40,1,0),(43,41,1,0),(44,42,0,0),(45,43,1,0),(46,43,1,0),(47,44,0,0),(48,45,0,0),(49,46,1,0),(50,47,0,0),(51,46,1,0),(52,48,1,0),(53,50,1,0),(54,51,1,0),(55,50,1,0),(56,52,0,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,0,0),(61,57,0,0),(62,60,0,0),(63,61,1,0),(64,62,0,0),(65,63,0,0),(66,65,0,0),(67,64,0,0),(68,66,0,0),(69,65,0,0),(70,64,0,0),(71,67,0,0),(72,65,1,0),(73,64,1,0),(74,68,0,0),(75,69,1,0),(76,70,1,0),(77,71,1,0),(78,72,0,0),(79,73,1,0),(80,74,1,0),(81,75,0,0),(82,74,1,0),(83,76,0,0),(84,74,1,0),(85,77,0,0),(86,79,0,0),(87,80,1,0),(88,80,1,0),(89,81,1,0),(90,80,1,0),(91,81,1,0),(92,80,1,0),(93,82,0,0),(94,81,1,0),(95,83,1,0),(96,84,1,0),(97,83,1,0),(98,85,0,0),(99,85,0,0),(100,85,1,0),(101,83,1,0),(102,86,1,0),(103,86,1,0),(104,83,1,0),(105,87,1,0),(106,83,1,0),(107,88,0,0),(108,89,1,0),(109,90,1,0),(110,90,1,0),(111,90,1,0),(112,91,1,0),(113,92,1,0),(114,92,1,0),(115,93,0,0),(116,94,0,0),(117,95,0,0),(118,95,0,0),(119,95,0,0),(120,96,0,0),(121,97,0,0),(122,95,0,0),(123,98,0,0),(124,95,0,0),(125,99,1,0),(126,95,0,0),(127,100,1,0),(128,95,0,0),(129,101,1,0),(130,95,0,0),(131,95,0,0),(132,95,0,0),(133,95,0,0),(134,103,0,0),(135,95,0,0),(136,95,0,0),(137,105,0,0),(138,95,0,0),(139,106,1,0),(140,95,0,0),(141,107,0,0),(142,95,0,0),(143,109,0,0),(144,110,0,0),(145,111,0,0),(146,112,1,0),(147,113,0,0),(148,113,0,0),(149,115,0,0),(150,113,1,0),(151,116,1,0),(152,117,0,0),(153,118,1,0),(154,121,0,0),(155,122,1,0),(156,124,0,0),(157,125,1,0),(158,126,0,0),(159,127,0,0),(160,130,1,0),(161,131,1,0),(162,132,1,0),(163,133,0,0),(164,134,0,0),(165,135,1,0),(166,134,0,0),(167,137,0,0),(168,138,1,0),(169,139,0,0),(170,140,0,0),(171,141,0,0),(172,142,0,0),(173,143,0,0),(174,143,0,0),(175,143,0,0),(176,144,1,0),(177,145,0,0),(178,143,0,0),(179,146,1,0),(180,147,0,0),(181,148,0,0),(182,149,0,0),(183,149,0,0),(184,151,0,0),(185,149,0,0),(186,151,0,0),(187,151,0,0),(188,149,0,0),(189,151,0,0),(190,152,0,0),(191,151,0,0),(192,153,0,0),(193,154,0,0),(194,151,0,0),(195,155,0,0),(196,151,0,0),(197,151,0,0),(198,155,0,0),(199,151,0,0),(200,151,0,0),(201,151,0,0),(202,156,0,0),(203,157,0,0),(204,151,0,0),(205,159,0,0),(206,151,0,0),(207,151,0,0),(208,151,0,0),(209,151,0,0),(210,160,0,0),(211,161,0,0),(212,161,0,0),(213,161,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'content://mms',NULL,NULL,NULL),(5,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://mms',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://mms',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(16,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(22,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(32,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://mms',NULL,NULL,NULL),(35,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(36,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(37,NULL,NULL,'content://sms',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://mms',NULL,NULL,NULL),(43,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,1),(2,20,3),(3,25,4),(4,34,8),(5,49,11),(6,59,13),(7,78,20),(8,104,27),(9,108,29),(10,120,34),(11,123,35),(12,128,37),(13,150,42);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,2),(24,3,1),(25,2,3),(26,3,2),(27,2,4),(28,3,3),(29,2,5),(30,3,4),(31,2,6),(32,3,5),(33,2,7),(34,3,6),(35,2,8),(36,3,8),(37,2,9),(38,3,9),(39,2,10),(40,3,10),(41,2,11),(42,3,11),(43,2,12),(44,3,12),(45,2,13),(46,4,1),(47,3,13),(48,2,14),(49,4,2),(50,3,14),(51,2,15),(52,4,3),(53,3,15),(54,2,17),(55,4,4),(56,3,16),(57,2,16),(58,4,5),(59,3,19),(60,2,19),(61,3,18),(62,4,6),(63,2,18),(64,4,8),(65,3,21),(66,2,21),(67,4,9),(68,3,20),(69,2,20),(70,4,10),(71,3,23),(72,4,11),(73,3,22),(74,4,12),(75,3,24),(76,4,13),(77,4,14),(78,4,15),(79,4,16),(80,4,19),(81,4,18),(82,4,21),(83,4,20),(84,4,23),(85,4,22),(86,4,25),(87,4,24),(88,5,1),(89,5,2),(90,5,3),(91,5,4),(92,5,5),(93,5,6),(94,5,7),(95,5,8),(96,5,9),(97,5,10),(98,5,11),(99,5,12),(100,5,13),(101,6,1),(102,5,14),(103,6,2),(104,5,15),(105,6,3),(106,6,4),(107,5,16),(108,6,5),(109,5,19),(110,5,18),(111,6,6),(112,5,20),(113,6,7),(114,6,8),(115,5,27),(116,6,9),(117,5,26),(118,6,10),(119,6,11),(120,6,12),(121,6,13),(122,6,14),(123,6,15),(124,6,16),(125,6,19),(126,6,18),(127,6,21),(128,6,20),(129,6,25),(130,6,27),(131,6,26);
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

-- Dump completed on 2015-10-09  0:38:34
