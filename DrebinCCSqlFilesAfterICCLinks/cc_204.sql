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
) ENGINE=InnoDB AUTO_INCREMENT=3569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,63,1,2,NULL),(2,73,1,2,NULL),(3,127,1,2,NULL),(4,179,1,2,NULL),(5,150,1,2,NULL),(6,213,1,2,NULL),(7,157,1,2,NULL),(8,168,1,2,NULL),(9,129,1,2,NULL),(10,176,1,2,NULL),(11,77,1,2,NULL),(12,100,1,2,NULL),(13,26,1,2,NULL),(14,49,1,2,NULL),(15,51,1,2,NULL),(16,53,1,2,NULL),(17,55,1,2,NULL),(18,96,1,2,NULL),(19,102,1,2,NULL),(20,103,1,2,NULL),(21,80,1,2,NULL),(22,82,1,2,NULL),(23,84,1,2,NULL),(24,89,1,2,NULL),(25,91,1,2,NULL),(26,94,1,2,NULL),(27,7,1,2,NULL),(28,9,1,2,NULL),(29,12,1,2,NULL),(30,13,1,2,NULL),(31,14,1,2,NULL),(32,108,1,2,NULL),(33,72,1,2,NULL),(34,4,1,2,NULL),(35,6,1,2,NULL),(36,45,1,2,NULL),(37,46,1,2,NULL),(38,52,1,2,NULL),(39,112,1,2,NULL),(40,113,1,2,NULL),(41,114,1,2,NULL),(42,109,1,2,NULL),(43,110,1,2,NULL),(44,111,1,2,NULL),(45,35,1,2,NULL),(46,37,1,2,NULL),(47,40,1,2,NULL),(48,95,1,2,NULL),(49,97,1,2,NULL),(50,101,1,2,NULL),(51,104,1,2,NULL),(52,106,1,2,NULL),(53,63,13,2,NULL),(54,73,13,2,NULL),(55,127,13,2,NULL),(56,179,13,2,NULL),(57,150,13,2,NULL),(58,213,13,2,NULL),(59,157,13,2,NULL),(60,168,13,2,NULL),(61,129,13,2,NULL),(62,176,13,2,NULL),(63,77,13,2,NULL),(64,100,13,2,NULL),(65,26,13,2,NULL),(66,49,13,2,NULL),(67,51,13,2,NULL),(68,53,13,2,NULL),(69,55,13,2,NULL),(70,96,13,2,NULL),(71,102,13,2,NULL),(72,103,13,2,NULL),(73,80,13,2,NULL),(74,82,13,2,NULL),(75,84,13,2,NULL),(76,89,13,2,NULL),(77,91,13,2,NULL),(78,94,13,2,NULL),(79,7,13,2,NULL),(80,9,13,2,NULL),(81,12,13,2,NULL),(82,13,13,2,NULL),(83,14,13,2,NULL),(84,108,13,2,NULL),(85,72,13,2,NULL),(86,4,13,2,NULL),(87,6,13,2,NULL),(88,45,13,2,NULL),(89,46,13,2,NULL),(90,52,13,2,NULL),(91,112,13,2,NULL),(92,113,13,2,NULL),(93,114,13,2,NULL),(94,109,13,2,NULL),(95,110,13,2,NULL),(96,111,13,2,NULL),(97,35,13,2,NULL),(98,37,13,2,NULL),(99,40,13,2,NULL),(100,95,13,2,NULL),(101,97,13,2,NULL),(102,101,13,2,NULL),(103,104,13,2,NULL),(104,106,13,2,NULL),(105,63,16,2,NULL),(106,73,16,2,NULL),(107,127,16,2,NULL),(108,179,16,2,NULL),(109,150,16,2,NULL),(110,213,16,2,NULL),(111,157,16,2,NULL),(112,168,16,2,NULL),(113,129,16,2,NULL),(114,176,16,2,NULL),(115,77,16,2,NULL),(116,100,16,2,NULL),(117,26,16,2,NULL),(118,49,16,2,NULL),(119,51,16,2,NULL),(120,53,16,2,NULL),(121,55,16,2,NULL),(122,96,16,2,NULL),(123,102,16,2,NULL),(124,103,16,2,NULL),(125,80,16,2,NULL),(126,82,16,2,NULL),(127,84,16,2,NULL),(128,89,16,2,NULL),(129,91,16,2,NULL),(130,94,16,2,NULL),(131,7,16,2,NULL),(132,9,16,2,NULL),(133,12,16,2,NULL),(134,13,16,2,NULL),(135,14,16,2,NULL),(136,108,16,2,NULL),(137,72,16,2,NULL),(138,4,16,2,NULL),(139,6,16,2,NULL),(140,45,16,2,NULL),(141,46,16,2,NULL),(142,52,16,2,NULL),(143,112,16,2,NULL),(144,113,16,2,NULL),(145,114,16,2,NULL),(146,109,16,2,NULL),(147,110,16,2,NULL),(148,111,16,2,NULL),(149,35,16,2,NULL),(150,37,16,2,NULL),(151,40,16,2,NULL),(152,95,16,2,NULL),(153,97,16,2,NULL),(154,101,16,2,NULL),(155,104,16,2,NULL),(156,106,16,2,NULL),(157,63,14,2,NULL),(158,73,14,2,NULL),(159,127,14,2,NULL),(160,179,14,2,NULL),(161,150,14,2,NULL),(162,213,14,2,NULL),(163,157,14,2,NULL),(164,168,14,2,NULL),(165,129,14,2,NULL),(166,176,14,2,NULL),(167,77,14,2,NULL),(168,100,14,2,NULL),(169,26,14,2,NULL),(170,49,14,2,NULL),(171,51,14,2,NULL),(172,53,14,2,NULL),(173,55,14,2,NULL),(174,96,14,2,NULL),(175,102,14,2,NULL),(176,103,14,2,NULL),(177,80,14,2,NULL),(178,82,14,2,NULL),(179,84,14,2,NULL),(180,89,14,2,NULL),(181,91,14,2,NULL),(182,94,14,2,NULL),(183,7,14,2,NULL),(184,9,14,2,NULL),(185,12,14,2,NULL),(186,13,14,2,NULL),(187,14,14,2,NULL),(188,108,14,2,NULL),(189,72,14,2,NULL),(190,4,14,2,NULL),(191,6,14,2,NULL),(192,45,14,2,NULL),(193,46,14,2,NULL),(194,52,14,2,NULL),(195,112,14,2,NULL),(196,113,14,2,NULL),(197,114,14,2,NULL),(198,109,14,2,NULL),(199,110,14,2,NULL),(200,111,14,2,NULL),(201,35,14,2,NULL),(202,37,14,2,NULL),(203,40,14,2,NULL),(204,95,14,2,NULL),(205,97,14,2,NULL),(206,101,14,2,NULL),(207,104,14,2,NULL),(208,106,14,2,NULL),(209,63,50,2,NULL),(210,73,50,2,NULL),(211,127,50,2,NULL),(212,179,50,2,NULL),(213,150,50,2,NULL),(214,213,50,2,NULL),(215,157,50,2,NULL),(216,168,50,2,NULL),(217,129,50,2,NULL),(218,176,50,2,NULL),(219,77,50,2,NULL),(220,100,50,2,NULL),(221,26,50,2,NULL),(222,49,50,2,NULL),(223,51,50,2,NULL),(224,53,50,2,NULL),(225,55,50,2,NULL),(226,96,50,2,NULL),(227,102,50,2,NULL),(228,103,50,2,NULL),(229,80,50,2,NULL),(230,82,50,2,NULL),(231,84,50,2,NULL),(232,89,50,2,NULL),(233,91,50,2,NULL),(234,94,50,2,NULL),(235,7,50,2,NULL),(236,7,50,2,NULL),(237,9,50,2,NULL),(238,12,50,2,NULL),(239,13,50,2,NULL),(240,14,50,2,NULL),(241,14,50,2,NULL),(242,108,50,2,NULL),(243,72,50,2,NULL),(244,4,50,2,NULL),(245,6,50,2,NULL),(246,45,50,2,NULL),(247,46,50,2,NULL),(248,52,50,2,NULL),(249,112,50,2,NULL),(250,113,50,2,NULL),(251,114,50,2,NULL),(252,109,50,2,NULL),(253,110,50,2,NULL),(254,111,50,2,NULL),(255,35,50,2,NULL),(256,115,79,2,NULL),(257,37,50,2,NULL),(258,40,50,2,NULL),(259,115,88,2,NULL),(260,95,50,2,NULL),(261,97,50,2,NULL),(262,101,50,2,NULL),(263,104,50,2,NULL),(264,63,84,2,NULL),(265,106,50,2,NULL),(266,63,56,2,NULL),(267,73,84,2,NULL),(268,73,56,2,NULL),(269,127,56,2,NULL),(270,179,56,2,NULL),(271,127,84,2,NULL),(272,150,56,2,NULL),(273,213,56,2,NULL),(274,157,56,2,NULL),(275,179,84,2,NULL),(276,168,56,2,NULL),(277,129,56,2,NULL),(278,150,84,2,NULL),(279,176,56,2,NULL),(280,77,56,2,NULL),(281,100,56,2,NULL),(282,213,84,2,NULL),(283,26,56,2,NULL),(284,49,56,2,NULL),(285,51,56,2,NULL),(286,157,84,2,NULL),(287,53,56,2,NULL),(288,55,56,2,NULL),(289,96,56,2,NULL),(290,168,84,2,NULL),(291,102,56,2,NULL),(292,103,56,2,NULL),(293,80,56,2,NULL),(294,129,84,2,NULL),(295,82,56,2,NULL),(296,84,56,2,NULL),(297,176,84,2,NULL),(298,89,56,2,NULL),(299,91,56,2,NULL),(300,77,84,2,NULL),(301,94,56,2,NULL),(302,7,56,2,NULL),(303,100,84,2,NULL),(304,9,56,2,NULL),(305,12,56,2,NULL),(306,13,56,2,NULL),(307,26,84,2,NULL),(308,14,56,2,NULL),(309,108,56,2,NULL),(310,72,56,2,NULL),(311,49,84,2,NULL),(312,4,56,2,NULL),(313,6,56,2,NULL),(314,45,56,2,NULL),(315,51,84,2,NULL),(316,46,56,2,NULL),(317,52,56,2,NULL),(318,53,84,2,NULL),(319,112,56,2,NULL),(320,113,56,2,NULL),(321,55,84,2,NULL),(322,114,56,2,NULL),(323,109,56,2,NULL),(324,110,56,2,NULL),(325,96,84,2,NULL),(326,111,56,2,NULL),(327,35,56,2,NULL),(328,102,84,2,NULL),(329,37,56,2,NULL),(330,40,56,2,NULL),(331,95,56,2,NULL),(332,103,84,2,NULL),(333,97,56,2,NULL),(334,101,56,2,NULL),(335,80,84,2,NULL),(336,104,56,2,NULL),(337,106,56,2,NULL),(338,82,84,2,NULL),(339,63,64,2,NULL),(340,73,64,2,NULL),(341,84,84,2,NULL),(342,127,64,2,NULL),(343,179,64,2,NULL),(344,89,84,2,NULL),(345,150,64,2,NULL),(346,213,64,2,NULL),(347,157,64,2,NULL),(348,91,84,2,NULL),(349,168,64,2,NULL),(350,129,64,2,NULL),(351,94,84,2,NULL),(352,176,64,2,NULL),(353,77,64,2,NULL),(354,7,84,2,NULL),(355,100,64,2,NULL),(356,26,64,2,NULL),(357,9,84,2,NULL),(358,49,64,2,NULL),(359,51,64,2,NULL),(360,12,84,2,NULL),(361,53,64,2,NULL),(362,55,64,2,NULL),(363,13,84,2,NULL),(364,96,64,2,NULL),(365,102,64,2,NULL),(366,14,84,2,NULL),(367,103,64,2,NULL),(368,80,64,2,NULL),(369,108,84,2,NULL),(370,82,64,2,NULL),(371,84,64,2,NULL),(372,72,84,2,NULL),(373,89,64,2,NULL),(374,4,84,2,NULL),(375,91,64,2,NULL),(376,94,64,2,NULL),(377,6,84,2,NULL),(378,7,64,2,NULL),(379,9,64,2,NULL),(380,12,64,2,NULL),(381,45,84,2,NULL),(382,13,64,2,NULL),(383,14,64,2,NULL),(384,46,84,2,NULL),(385,108,64,2,NULL),(386,52,84,2,NULL),(387,72,64,2,NULL),(388,4,64,2,NULL),(389,6,64,2,NULL),(390,112,84,2,NULL),(391,45,64,2,NULL),(392,46,64,2,NULL),(393,113,84,2,NULL),(394,52,64,2,NULL),(395,112,64,2,NULL),(396,114,84,2,NULL),(397,113,64,2,NULL),(398,114,64,2,NULL),(399,109,84,2,NULL),(400,109,64,2,NULL),(401,110,64,2,NULL),(402,110,84,2,NULL),(403,111,64,2,NULL),(404,111,84,2,NULL),(405,35,64,2,NULL),(406,37,64,2,NULL),(407,40,64,2,NULL),(408,35,84,2,NULL),(409,95,64,2,NULL),(410,37,84,2,NULL),(411,97,64,2,NULL),(412,101,64,2,NULL),(413,104,64,2,NULL),(414,40,84,2,NULL),(415,106,64,2,NULL),(416,95,84,2,NULL),(417,63,67,2,NULL),(418,73,67,2,NULL),(419,127,67,2,NULL),(420,127,67,2,NULL),(421,97,84,2,NULL),(422,179,67,2,NULL),(423,150,67,2,NULL),(424,101,84,2,NULL),(425,213,67,2,NULL),(426,213,67,2,NULL),(427,104,84,2,NULL),(428,157,67,2,NULL),(429,106,84,2,NULL),(430,168,67,2,NULL),(431,168,67,2,NULL),(432,8,85,2,NULL),(433,129,67,2,NULL),(434,176,67,2,NULL),(435,8,97,2,NULL),(436,77,67,2,NULL),(437,100,67,2,NULL),(438,108,67,2,NULL),(439,26,67,2,NULL),(440,26,67,2,NULL),(441,108,15,2,NULL),(442,49,67,2,NULL),(443,51,67,2,NULL),(444,108,49,2,NULL),(445,53,67,2,NULL),(446,53,67,2,NULL),(447,108,65,2,NULL),(448,55,67,2,NULL),(449,96,67,2,NULL),(450,108,69,2,NULL),(451,102,67,2,NULL),(452,102,67,2,NULL),(453,108,71,2,NULL),(454,103,67,2,NULL),(455,80,67,2,NULL),(456,108,73,2,NULL),(457,82,67,2,NULL),(458,82,67,2,NULL),(459,108,120,2,NULL),(460,84,67,2,NULL),(461,89,67,2,NULL),(462,108,122,2,NULL),(463,91,67,2,NULL),(464,94,67,2,NULL),(465,108,124,2,NULL),(466,7,67,2,NULL),(467,9,67,2,NULL),(468,108,127,2,NULL),(469,12,67,2,NULL),(470,12,67,2,NULL),(471,108,22,2,NULL),(472,13,67,2,NULL),(473,14,67,2,NULL),(474,108,47,2,NULL),(475,72,67,2,NULL),(476,72,67,2,NULL),(477,108,62,2,NULL),(478,4,67,2,NULL),(479,6,67,2,NULL),(480,108,66,2,NULL),(481,45,67,2,NULL),(482,46,67,2,NULL),(483,108,68,2,NULL),(484,52,67,2,NULL),(485,52,67,2,NULL),(486,108,70,2,NULL),(487,112,67,2,NULL),(488,113,67,2,NULL),(489,108,72,2,NULL),(490,114,67,2,NULL),(491,114,67,2,NULL),(492,108,74,2,NULL),(493,109,67,2,NULL),(494,110,67,2,NULL),(495,108,75,2,NULL),(496,111,67,2,NULL),(497,111,67,2,NULL),(498,108,76,2,NULL),(499,35,67,2,NULL),(500,35,67,2,NULL),(501,108,78,2,NULL),(502,37,67,2,NULL),(503,40,67,2,NULL),(504,108,137,2,NULL),(505,95,67,2,NULL),(506,95,67,2,NULL),(507,108,138,2,NULL),(508,97,67,2,NULL),(509,97,67,2,NULL),(510,108,139,2,NULL),(511,101,67,2,NULL),(512,101,67,2,NULL),(513,108,140,2,NULL),(514,104,67,2,NULL),(515,106,67,2,NULL),(516,108,77,2,NULL),(517,81,2,2,NULL),(518,81,2,2,NULL),(519,108,95,2,NULL),(520,81,17,2,NULL),(521,81,19,2,NULL),(522,108,131,2,NULL),(523,81,27,2,NULL),(524,81,27,2,NULL),(525,108,135,2,NULL),(526,63,15,2,NULL),(527,63,15,2,NULL),(528,108,132,2,NULL),(529,73,15,2,NULL),(530,127,15,2,NULL),(531,108,109,2,NULL),(532,179,15,2,NULL),(533,179,15,2,NULL),(534,108,112,2,NULL),(535,150,15,2,NULL),(536,213,15,2,NULL),(537,108,117,2,NULL),(538,157,15,2,NULL),(539,157,15,2,NULL),(540,108,133,2,NULL),(541,168,15,2,NULL),(542,129,15,2,NULL),(543,108,134,2,NULL),(544,176,15,2,NULL),(545,176,15,2,NULL),(546,108,136,2,NULL),(547,77,15,2,NULL),(548,77,15,2,NULL),(549,108,108,2,NULL),(550,100,15,2,NULL),(551,26,15,2,NULL),(552,108,121,2,NULL),(553,49,15,2,NULL),(554,49,15,2,NULL),(555,108,129,2,NULL),(556,51,15,2,NULL),(557,53,15,2,NULL),(558,108,123,2,NULL),(559,55,15,2,NULL),(560,55,15,2,NULL),(561,108,115,2,NULL),(562,96,15,2,NULL),(563,96,15,2,NULL),(564,108,116,2,NULL),(565,102,15,2,NULL),(566,102,15,2,NULL),(567,108,118,2,NULL),(568,103,15,2,NULL),(569,103,15,2,NULL),(570,108,119,2,NULL),(571,80,15,2,NULL),(572,82,15,2,NULL),(573,108,125,2,NULL),(574,84,15,2,NULL),(575,84,15,2,NULL),(576,108,126,2,NULL),(577,89,15,2,NULL),(578,89,15,2,NULL),(579,108,128,2,NULL),(580,91,15,2,NULL),(581,91,15,2,NULL),(582,108,130,2,NULL),(583,94,15,2,NULL),(584,7,15,2,NULL),(585,27,85,2,NULL),(586,9,15,2,NULL),(587,12,15,2,NULL),(588,27,97,2,NULL),(589,13,15,2,NULL),(590,14,15,2,NULL),(591,72,15,2,NULL),(592,4,15,2,NULL),(593,4,15,2,NULL),(594,72,49,2,NULL),(595,6,15,2,NULL),(596,45,15,2,NULL),(597,72,65,2,NULL),(598,46,15,2,NULL),(599,46,15,2,NULL),(600,72,69,2,NULL),(601,52,15,2,NULL),(602,112,15,2,NULL),(603,72,71,2,NULL),(604,113,15,2,NULL),(605,113,15,2,NULL),(606,72,73,2,NULL),(607,114,15,2,NULL),(608,109,15,2,NULL),(609,72,120,2,NULL),(610,110,15,2,NULL),(611,110,15,2,NULL),(612,72,122,2,NULL),(613,111,15,2,NULL),(614,35,15,2,NULL),(615,72,124,2,NULL),(616,37,15,2,NULL),(617,40,15,2,NULL),(618,72,127,2,NULL),(619,95,15,2,NULL),(620,95,15,2,NULL),(621,72,22,2,NULL),(622,97,15,2,NULL),(623,101,15,2,NULL),(624,72,47,2,NULL),(625,104,15,2,NULL),(626,104,15,2,NULL),(627,72,62,2,NULL),(628,106,15,2,NULL),(629,93,11,2,NULL),(630,72,66,2,NULL),(631,93,45,2,NULL),(632,93,52,2,NULL),(633,72,68,2,NULL),(634,93,57,2,NULL),(635,85,7,2,NULL),(636,72,70,2,NULL),(637,85,29,2,NULL),(638,85,29,2,NULL),(639,72,72,2,NULL),(640,85,34,2,NULL),(641,85,36,2,NULL),(642,72,74,2,NULL),(643,63,49,2,NULL),(644,63,49,2,NULL),(645,72,75,2,NULL),(646,63,65,2,NULL),(647,63,69,2,NULL),(648,72,76,2,NULL),(649,63,71,2,NULL),(650,63,71,2,NULL),(651,72,78,2,NULL),(652,63,73,2,NULL),(653,63,120,2,NULL),(654,72,137,2,NULL),(655,63,122,2,NULL),(656,72,138,2,NULL),(657,63,124,2,NULL),(658,63,127,2,NULL),(659,63,22,2,NULL),(660,72,139,2,NULL),(661,63,47,2,NULL),(662,63,62,2,NULL),(663,72,140,2,NULL),(664,63,66,2,NULL),(665,63,68,2,NULL),(666,72,77,2,NULL),(667,63,70,2,NULL),(668,72,95,2,NULL),(669,63,72,2,NULL),(670,63,74,2,NULL),(671,72,131,2,NULL),(672,63,75,2,NULL),(673,63,76,2,NULL),(674,72,135,2,NULL),(675,63,78,2,NULL),(676,63,137,2,NULL),(677,72,132,2,NULL),(678,63,138,2,NULL),(679,63,139,2,NULL),(680,72,109,2,NULL),(681,63,140,2,NULL),(682,63,77,2,NULL),(683,72,112,2,NULL),(684,63,95,2,NULL),(685,63,131,2,NULL),(686,63,135,2,NULL),(687,72,117,2,NULL),(688,63,132,2,NULL),(689,72,133,2,NULL),(690,63,109,2,NULL),(691,63,112,2,NULL),(692,72,134,2,NULL),(693,63,117,2,NULL),(694,63,133,2,NULL),(695,72,136,2,NULL),(696,63,134,2,NULL),(697,63,136,2,NULL),(698,72,108,2,NULL),(699,63,108,2,NULL),(700,63,121,2,NULL),(701,72,121,2,NULL),(702,63,129,2,NULL),(703,63,123,2,NULL),(704,72,129,2,NULL),(705,63,115,2,NULL),(706,63,116,2,NULL),(707,72,123,2,NULL),(708,63,118,2,NULL),(709,63,119,2,NULL),(710,72,115,2,NULL),(711,63,125,2,NULL),(712,63,126,2,NULL),(713,72,116,2,NULL),(714,63,128,2,NULL),(715,63,130,2,NULL),(716,72,118,2,NULL),(717,18,7,2,NULL),(718,18,29,2,NULL),(719,18,34,2,NULL),(720,72,119,2,NULL),(721,18,36,2,NULL),(722,72,125,2,NULL),(723,73,49,2,NULL),(724,73,65,2,NULL),(725,73,69,2,NULL),(726,72,126,2,NULL),(727,73,71,2,NULL),(728,72,128,2,NULL),(729,73,73,2,NULL),(730,73,120,2,NULL),(731,72,130,2,NULL),(732,73,122,2,NULL),(733,73,124,2,NULL),(734,107,85,2,NULL),(735,73,127,2,NULL),(736,73,22,2,NULL),(737,107,97,2,NULL),(738,73,47,2,NULL),(739,73,62,2,NULL),(740,73,66,2,NULL),(741,11,89,2,NULL),(742,73,68,2,NULL),(743,73,70,2,NULL),(744,11,102,2,NULL),(745,73,72,2,NULL),(746,73,74,2,NULL),(747,22,85,2,NULL),(748,73,75,2,NULL),(749,73,76,2,NULL),(750,22,97,2,NULL),(751,73,78,2,NULL),(752,73,78,2,NULL),(753,30,93,2,NULL),(754,73,137,2,NULL),(755,73,138,2,NULL),(756,30,106,2,NULL),(757,73,139,2,NULL),(758,65,85,2,NULL),(759,73,140,2,NULL),(760,73,77,2,NULL),(761,65,97,2,NULL),(762,73,95,2,NULL),(763,73,131,2,NULL),(764,73,135,2,NULL),(765,73,135,2,NULL),(766,4,49,2,NULL),(767,73,132,2,NULL),(768,6,49,2,NULL),(769,73,109,2,NULL),(770,73,109,2,NULL),(771,45,49,2,NULL),(772,73,112,2,NULL),(773,73,112,2,NULL),(774,46,49,2,NULL),(775,73,117,2,NULL),(776,73,117,2,NULL),(777,52,49,2,NULL),(778,73,133,2,NULL),(779,73,133,2,NULL),(780,112,49,2,NULL),(781,73,134,2,NULL),(782,73,134,2,NULL),(783,113,49,2,NULL),(784,73,136,2,NULL),(785,73,136,2,NULL),(786,114,49,2,NULL),(787,73,108,2,NULL),(788,4,65,2,NULL),(789,73,121,2,NULL),(790,73,129,2,NULL),(791,73,123,2,NULL),(792,6,65,2,NULL),(793,73,115,2,NULL),(794,45,65,2,NULL),(795,73,116,2,NULL),(796,73,118,2,NULL),(797,46,65,2,NULL),(798,73,119,2,NULL),(799,73,125,2,NULL),(800,52,65,2,NULL),(801,73,126,2,NULL),(802,73,128,2,NULL),(803,73,130,2,NULL),(804,112,65,2,NULL),(805,78,7,2,NULL),(806,113,65,2,NULL),(807,78,29,2,NULL),(808,78,34,2,NULL),(809,114,65,2,NULL),(810,78,36,2,NULL),(811,50,10,2,NULL),(812,4,69,2,NULL),(813,50,41,2,NULL),(814,50,43,2,NULL),(815,6,69,2,NULL),(816,50,46,2,NULL),(817,60,7,2,NULL),(818,45,69,2,NULL),(819,60,29,2,NULL),(820,60,34,2,NULL),(821,46,69,2,NULL),(822,60,36,2,NULL),(823,52,69,2,NULL),(824,31,7,2,NULL),(825,31,29,2,NULL),(826,112,69,2,NULL),(827,31,34,2,NULL),(828,31,36,2,NULL),(829,113,69,2,NULL),(830,21,54,2,NULL),(831,21,60,2,NULL),(832,114,69,2,NULL),(833,25,54,2,NULL),(834,25,60,2,NULL),(835,4,71,2,NULL),(836,48,51,2,NULL),(837,48,53,2,NULL),(838,6,71,2,NULL),(839,127,49,2,NULL),(840,179,49,2,NULL),(841,150,49,2,NULL),(842,45,71,2,NULL),(843,213,49,2,NULL),(844,157,49,2,NULL),(845,168,49,2,NULL),(846,46,71,2,NULL),(847,129,49,2,NULL),(848,176,49,2,NULL),(849,52,71,2,NULL),(850,77,49,2,NULL),(851,100,49,2,NULL),(852,112,71,2,NULL),(853,26,49,2,NULL),(854,49,49,2,NULL),(855,113,71,2,NULL),(856,51,49,2,NULL),(857,53,49,2,NULL),(858,114,71,2,NULL),(859,55,49,2,NULL),(860,96,49,2,NULL),(861,4,73,2,NULL),(862,102,49,2,NULL),(863,103,49,2,NULL),(864,6,73,2,NULL),(865,80,49,2,NULL),(866,82,49,2,NULL),(867,45,73,2,NULL),(868,84,49,2,NULL),(869,89,49,2,NULL),(870,46,73,2,NULL),(871,91,49,2,NULL),(872,94,49,2,NULL),(873,52,73,2,NULL),(874,7,49,2,NULL),(875,9,49,2,NULL),(876,112,73,2,NULL),(877,12,49,2,NULL),(878,13,49,2,NULL),(879,113,73,2,NULL),(880,14,49,2,NULL),(881,114,73,2,NULL),(882,109,49,2,NULL),(883,110,49,2,NULL),(884,111,49,2,NULL),(885,4,120,2,NULL),(886,35,49,2,NULL),(887,6,120,2,NULL),(888,37,49,2,NULL),(889,40,49,2,NULL),(890,45,120,2,NULL),(891,95,49,2,NULL),(892,97,49,2,NULL),(893,101,49,2,NULL),(894,46,120,2,NULL),(895,104,49,2,NULL),(896,106,49,2,NULL),(897,52,120,2,NULL),(898,127,65,2,NULL),(899,112,120,2,NULL),(900,179,65,2,NULL),(901,150,65,2,NULL),(902,113,120,2,NULL),(903,213,65,2,NULL),(904,157,65,2,NULL),(905,114,120,2,NULL),(906,168,65,2,NULL),(907,129,65,2,NULL),(908,4,122,2,NULL),(909,176,65,2,NULL),(910,77,65,2,NULL),(911,6,122,2,NULL),(912,100,65,2,NULL),(913,26,65,2,NULL),(914,45,122,2,NULL),(915,49,65,2,NULL),(916,51,65,2,NULL),(917,46,122,2,NULL),(918,53,65,2,NULL),(919,55,65,2,NULL),(920,52,122,2,NULL),(921,96,65,2,NULL),(922,102,65,2,NULL),(923,112,122,2,NULL),(924,103,65,2,NULL),(925,80,65,2,NULL),(926,113,122,2,NULL),(927,82,65,2,NULL),(928,84,65,2,NULL),(929,114,122,2,NULL),(930,89,65,2,NULL),(931,91,65,2,NULL),(932,4,124,2,NULL),(933,94,65,2,NULL),(934,7,65,2,NULL),(935,6,124,2,NULL),(936,9,65,2,NULL),(937,12,65,2,NULL),(938,45,124,2,NULL),(939,13,65,2,NULL),(940,14,65,2,NULL),(941,46,124,2,NULL),(942,109,65,2,NULL),(943,52,124,2,NULL),(944,110,65,2,NULL),(945,110,65,2,NULL),(946,112,124,2,NULL),(947,111,65,2,NULL),(948,111,65,2,NULL),(949,113,124,2,NULL),(950,35,65,2,NULL),(951,35,65,2,NULL),(952,114,124,2,NULL),(953,37,65,2,NULL),(954,4,127,2,NULL),(955,40,65,2,NULL),(956,95,65,2,NULL),(957,6,127,2,NULL),(958,97,65,2,NULL),(959,101,65,2,NULL),(960,45,127,2,NULL),(961,104,65,2,NULL),(962,106,65,2,NULL),(963,46,127,2,NULL),(964,127,69,2,NULL),(965,52,127,2,NULL),(966,179,69,2,NULL),(967,150,69,2,NULL),(968,112,127,2,NULL),(969,213,69,2,NULL),(970,157,69,2,NULL),(971,113,127,2,NULL),(972,168,69,2,NULL),(973,129,69,2,NULL),(974,114,127,2,NULL),(975,176,69,2,NULL),(976,77,69,2,NULL),(977,4,22,2,NULL),(978,100,69,2,NULL),(979,100,69,2,NULL),(980,6,22,2,NULL),(981,26,69,2,NULL),(982,26,69,2,NULL),(983,45,22,2,NULL),(984,49,69,2,NULL),(985,49,69,2,NULL),(986,46,22,2,NULL),(987,51,69,2,NULL),(988,51,69,2,NULL),(989,52,22,2,NULL),(990,53,69,2,NULL),(991,53,69,2,NULL),(992,112,22,2,NULL),(993,55,69,2,NULL),(994,55,69,2,NULL),(995,113,22,2,NULL),(996,96,69,2,NULL),(997,96,69,2,NULL),(998,114,22,2,NULL),(999,102,69,2,NULL),(1000,102,69,2,NULL),(1001,4,47,2,NULL),(1002,103,69,2,NULL),(1003,103,69,2,NULL),(1004,6,47,2,NULL),(1005,80,69,2,NULL),(1006,80,69,2,NULL),(1007,45,47,2,NULL),(1008,82,69,2,NULL),(1009,82,69,2,NULL),(1010,46,47,2,NULL),(1011,84,69,2,NULL),(1012,84,69,2,NULL),(1013,52,47,2,NULL),(1014,89,69,2,NULL),(1015,89,69,2,NULL),(1016,112,47,2,NULL),(1017,91,69,2,NULL),(1018,91,69,2,NULL),(1019,113,47,2,NULL),(1020,94,69,2,NULL),(1021,94,69,2,NULL),(1022,114,47,2,NULL),(1023,7,69,2,NULL),(1024,7,69,2,NULL),(1025,4,62,2,NULL),(1026,9,69,2,NULL),(1027,9,69,2,NULL),(1028,6,62,2,NULL),(1029,12,69,2,NULL),(1030,12,69,2,NULL),(1031,45,62,2,NULL),(1032,13,69,2,NULL),(1033,13,69,2,NULL),(1034,46,62,2,NULL),(1035,14,69,2,NULL),(1036,14,69,2,NULL),(1037,52,62,2,NULL),(1038,112,62,2,NULL),(1039,109,69,2,NULL),(1040,109,69,2,NULL),(1041,113,62,2,NULL),(1042,110,69,2,NULL),(1043,110,69,2,NULL),(1044,114,62,2,NULL),(1045,111,69,2,NULL),(1046,111,69,2,NULL),(1047,4,66,2,NULL),(1048,35,69,2,NULL),(1049,35,69,2,NULL),(1050,6,66,2,NULL),(1051,37,69,2,NULL),(1052,37,69,2,NULL),(1053,45,66,2,NULL),(1054,40,69,2,NULL),(1055,40,69,2,NULL),(1056,46,66,2,NULL),(1057,95,69,2,NULL),(1058,95,69,2,NULL),(1059,52,66,2,NULL),(1060,97,69,2,NULL),(1061,101,69,2,NULL),(1062,112,66,2,NULL),(1063,104,69,2,NULL),(1064,104,69,2,NULL),(1065,113,66,2,NULL),(1066,106,69,2,NULL),(1067,106,69,2,NULL),(1068,114,66,2,NULL),(1069,44,11,2,NULL),(1070,44,11,2,NULL),(1071,4,68,2,NULL),(1072,44,45,2,NULL),(1073,44,52,2,NULL),(1074,6,68,2,NULL),(1075,44,57,2,NULL),(1076,45,68,2,NULL),(1077,127,71,2,NULL),(1078,179,71,2,NULL),(1079,150,71,2,NULL),(1080,46,68,2,NULL),(1081,213,71,2,NULL),(1082,157,71,2,NULL),(1083,52,68,2,NULL),(1084,168,71,2,NULL),(1085,129,71,2,NULL),(1086,112,68,2,NULL),(1087,176,71,2,NULL),(1088,77,71,2,NULL),(1089,113,68,2,NULL),(1090,100,71,2,NULL),(1091,26,71,2,NULL),(1092,114,68,2,NULL),(1093,49,71,2,NULL),(1094,51,71,2,NULL),(1095,4,70,2,NULL),(1096,53,71,2,NULL),(1097,55,71,2,NULL),(1098,6,70,2,NULL),(1099,96,71,2,NULL),(1100,102,71,2,NULL),(1101,45,70,2,NULL),(1102,103,71,2,NULL),(1103,103,71,2,NULL),(1104,46,70,2,NULL),(1105,80,71,2,NULL),(1106,80,71,2,NULL),(1107,52,70,2,NULL),(1108,82,71,2,NULL),(1109,82,71,2,NULL),(1110,112,70,2,NULL),(1111,84,71,2,NULL),(1112,84,71,2,NULL),(1113,113,70,2,NULL),(1114,89,71,2,NULL),(1115,89,71,2,NULL),(1116,114,70,2,NULL),(1117,91,71,2,NULL),(1118,91,71,2,NULL),(1119,4,72,2,NULL),(1120,94,71,2,NULL),(1121,94,71,2,NULL),(1122,6,72,2,NULL),(1123,7,71,2,NULL),(1124,7,71,2,NULL),(1125,45,72,2,NULL),(1126,9,71,2,NULL),(1127,12,71,2,NULL),(1128,46,72,2,NULL),(1129,13,71,2,NULL),(1130,13,71,2,NULL),(1131,52,72,2,NULL),(1132,14,71,2,NULL),(1133,14,71,2,NULL),(1134,112,72,2,NULL),(1135,113,72,2,NULL),(1136,109,71,2,NULL),(1137,109,71,2,NULL),(1138,114,72,2,NULL),(1139,110,71,2,NULL),(1140,110,71,2,NULL),(1141,4,74,2,NULL),(1142,111,71,2,NULL),(1143,111,71,2,NULL),(1144,6,74,2,NULL),(1145,35,71,2,NULL),(1146,35,71,2,NULL),(1147,45,74,2,NULL),(1148,37,71,2,NULL),(1149,40,71,2,NULL),(1150,46,74,2,NULL),(1151,95,71,2,NULL),(1152,95,71,2,NULL),(1153,52,74,2,NULL),(1154,97,71,2,NULL),(1155,97,71,2,NULL),(1156,112,74,2,NULL),(1157,101,71,2,NULL),(1158,101,71,2,NULL),(1159,113,74,2,NULL),(1160,104,71,2,NULL),(1161,104,71,2,NULL),(1162,114,74,2,NULL),(1163,106,71,2,NULL),(1164,106,71,2,NULL),(1165,4,75,2,NULL),(1166,10,12,2,NULL),(1167,10,12,2,NULL),(1168,6,75,2,NULL),(1169,10,48,2,NULL),(1170,10,55,2,NULL),(1171,45,75,2,NULL),(1172,10,63,2,NULL),(1173,46,75,2,NULL),(1174,127,73,2,NULL),(1175,179,73,2,NULL),(1176,52,75,2,NULL),(1177,150,73,2,NULL),(1178,213,73,2,NULL),(1179,112,75,2,NULL),(1180,157,73,2,NULL),(1181,168,73,2,NULL),(1182,113,75,2,NULL),(1183,129,73,2,NULL),(1184,176,73,2,NULL),(1185,114,75,2,NULL),(1186,77,73,2,NULL),(1187,100,73,2,NULL),(1188,4,76,2,NULL),(1189,26,73,2,NULL),(1190,49,73,2,NULL),(1191,51,73,2,NULL),(1192,6,76,2,NULL),(1193,53,73,2,NULL),(1194,55,73,2,NULL),(1195,45,76,2,NULL),(1196,96,73,2,NULL),(1197,46,76,2,NULL),(1198,102,73,2,NULL),(1199,103,73,2,NULL),(1200,52,76,2,NULL),(1201,80,73,2,NULL),(1202,82,73,2,NULL),(1203,112,76,2,NULL),(1204,84,73,2,NULL),(1205,89,73,2,NULL),(1206,113,76,2,NULL),(1207,91,73,2,NULL),(1208,94,73,2,NULL),(1209,114,76,2,NULL),(1210,7,73,2,NULL),(1211,4,78,2,NULL),(1212,9,73,2,NULL),(1213,12,73,2,NULL),(1214,13,73,2,NULL),(1215,6,78,2,NULL),(1216,14,73,2,NULL),(1217,45,78,2,NULL),(1218,46,78,2,NULL),(1219,109,73,2,NULL),(1220,110,73,2,NULL),(1221,52,78,2,NULL),(1222,111,73,2,NULL),(1223,35,73,2,NULL),(1224,112,78,2,NULL),(1225,37,73,2,NULL),(1226,113,78,2,NULL),(1227,40,73,2,NULL),(1228,95,73,2,NULL),(1229,114,78,2,NULL),(1230,97,73,2,NULL),(1231,101,73,2,NULL),(1232,4,137,2,NULL),(1233,104,73,2,NULL),(1234,106,73,2,NULL),(1235,6,137,2,NULL),(1236,127,120,2,NULL),(1237,179,120,2,NULL),(1238,45,137,2,NULL),(1239,150,120,2,NULL),(1240,213,120,2,NULL),(1241,46,137,2,NULL),(1242,157,120,2,NULL),(1243,168,120,2,NULL),(1244,52,137,2,NULL),(1245,129,120,2,NULL),(1246,176,120,2,NULL),(1247,112,137,2,NULL),(1248,77,120,2,NULL),(1249,100,120,2,NULL),(1250,113,137,2,NULL),(1251,26,120,2,NULL),(1252,114,137,2,NULL),(1253,49,120,2,NULL),(1254,51,120,2,NULL),(1255,53,120,2,NULL),(1256,4,138,2,NULL),(1257,55,120,2,NULL),(1258,96,120,2,NULL),(1259,6,138,2,NULL),(1260,102,120,2,NULL),(1261,103,120,2,NULL),(1262,45,138,2,NULL),(1263,80,120,2,NULL),(1264,82,120,2,NULL),(1265,46,138,2,NULL),(1266,84,120,2,NULL),(1267,52,138,2,NULL),(1268,89,120,2,NULL),(1269,91,120,2,NULL),(1270,91,120,2,NULL),(1271,112,138,2,NULL),(1272,94,120,2,NULL),(1273,113,138,2,NULL),(1274,7,120,2,NULL),(1275,9,120,2,NULL),(1276,114,138,2,NULL),(1277,12,120,2,NULL),(1278,13,120,2,NULL),(1279,14,120,2,NULL),(1280,4,139,2,NULL),(1281,6,139,2,NULL),(1282,109,120,2,NULL),(1283,109,120,2,NULL),(1284,45,139,2,NULL),(1285,110,120,2,NULL),(1286,110,120,2,NULL),(1287,46,139,2,NULL),(1288,111,120,2,NULL),(1289,111,120,2,NULL),(1290,52,139,2,NULL),(1291,35,120,2,NULL),(1292,35,120,2,NULL),(1293,112,139,2,NULL),(1294,37,120,2,NULL),(1295,37,120,2,NULL),(1296,113,139,2,NULL),(1297,40,120,2,NULL),(1298,40,120,2,NULL),(1299,114,139,2,NULL),(1300,95,120,2,NULL),(1301,95,120,2,NULL),(1302,4,140,2,NULL),(1303,97,120,2,NULL),(1304,97,120,2,NULL),(1305,6,140,2,NULL),(1306,101,120,2,NULL),(1307,101,120,2,NULL),(1308,45,140,2,NULL),(1309,104,120,2,NULL),(1310,104,120,2,NULL),(1311,46,140,2,NULL),(1312,106,120,2,NULL),(1313,106,120,2,NULL),(1314,52,140,2,NULL),(1315,127,122,2,NULL),(1316,127,122,2,NULL),(1317,112,140,2,NULL),(1318,179,122,2,NULL),(1319,179,122,2,NULL),(1320,113,140,2,NULL),(1321,150,122,2,NULL),(1322,150,122,2,NULL),(1323,114,140,2,NULL),(1324,213,122,2,NULL),(1325,213,122,2,NULL),(1326,4,77,2,NULL),(1327,157,122,2,NULL),(1328,157,122,2,NULL),(1329,6,77,2,NULL),(1330,168,122,2,NULL),(1331,168,122,2,NULL),(1332,45,77,2,NULL),(1333,129,122,2,NULL),(1334,129,122,2,NULL),(1335,46,77,2,NULL),(1336,176,122,2,NULL),(1337,176,122,2,NULL),(1338,52,77,2,NULL),(1339,77,122,2,NULL),(1340,77,122,2,NULL),(1341,112,77,2,NULL),(1342,100,122,2,NULL),(1343,100,122,2,NULL),(1344,113,77,2,NULL),(1345,26,122,2,NULL),(1346,26,122,2,NULL),(1347,114,77,2,NULL),(1348,49,122,2,NULL),(1349,49,122,2,NULL),(1350,4,95,2,NULL),(1351,51,122,2,NULL),(1352,51,122,2,NULL),(1353,6,95,2,NULL),(1354,53,122,2,NULL),(1355,53,122,2,NULL),(1356,45,95,2,NULL),(1357,55,122,2,NULL),(1358,55,122,2,NULL),(1359,46,95,2,NULL),(1360,96,122,2,NULL),(1361,96,122,2,NULL),(1362,52,95,2,NULL),(1363,102,122,2,NULL),(1364,102,122,2,NULL),(1365,112,95,2,NULL),(1366,103,122,2,NULL),(1367,103,122,2,NULL),(1368,113,95,2,NULL),(1369,80,122,2,NULL),(1370,80,122,2,NULL),(1371,82,122,2,NULL),(1372,82,122,2,NULL),(1373,114,95,2,NULL),(1374,84,122,2,NULL),(1375,4,131,2,NULL),(1376,89,122,2,NULL),(1377,91,122,2,NULL),(1378,6,131,2,NULL),(1379,94,122,2,NULL),(1380,7,122,2,NULL),(1381,45,131,2,NULL),(1382,9,122,2,NULL),(1383,12,122,2,NULL),(1384,46,131,2,NULL),(1385,13,122,2,NULL),(1386,14,122,2,NULL),(1387,52,131,2,NULL),(1388,109,122,2,NULL),(1389,112,131,2,NULL),(1390,110,122,2,NULL),(1391,111,122,2,NULL),(1392,113,131,2,NULL),(1393,35,122,2,NULL),(1394,37,122,2,NULL),(1395,114,131,2,NULL),(1396,40,122,2,NULL),(1397,95,122,2,NULL),(1398,4,135,2,NULL),(1399,97,122,2,NULL),(1400,101,122,2,NULL),(1401,6,135,2,NULL),(1402,104,122,2,NULL),(1403,104,122,2,NULL),(1404,45,135,2,NULL),(1405,106,122,2,NULL),(1406,106,122,2,NULL),(1407,46,135,2,NULL),(1408,127,124,2,NULL),(1409,127,124,2,NULL),(1410,52,135,2,NULL),(1411,179,124,2,NULL),(1412,112,135,2,NULL),(1413,150,124,2,NULL),(1414,213,124,2,NULL),(1415,113,135,2,NULL),(1416,157,124,2,NULL),(1417,168,124,2,NULL),(1418,114,135,2,NULL),(1419,129,124,2,NULL),(1420,176,124,2,NULL),(1421,4,132,2,NULL),(1422,77,124,2,NULL),(1423,100,124,2,NULL),(1424,6,132,2,NULL),(1425,26,124,2,NULL),(1426,49,124,2,NULL),(1427,45,132,2,NULL),(1428,51,124,2,NULL),(1429,53,124,2,NULL),(1430,46,132,2,NULL),(1431,55,124,2,NULL),(1432,96,124,2,NULL),(1433,52,132,2,NULL),(1434,102,124,2,NULL),(1435,103,124,2,NULL),(1436,112,132,2,NULL),(1437,80,124,2,NULL),(1438,82,124,2,NULL),(1439,113,132,2,NULL),(1440,84,124,2,NULL),(1441,89,124,2,NULL),(1442,114,132,2,NULL),(1443,91,124,2,NULL),(1444,94,124,2,NULL),(1445,4,109,2,NULL),(1446,7,124,2,NULL),(1447,9,124,2,NULL),(1448,6,109,2,NULL),(1449,12,124,2,NULL),(1450,13,124,2,NULL),(1451,45,109,2,NULL),(1452,14,124,2,NULL),(1453,109,124,2,NULL),(1454,46,109,2,NULL),(1455,110,124,2,NULL),(1456,111,124,2,NULL),(1457,52,109,2,NULL),(1458,35,124,2,NULL),(1459,37,124,2,NULL),(1460,112,109,2,NULL),(1461,40,124,2,NULL),(1462,40,124,2,NULL),(1463,113,109,2,NULL),(1464,95,124,2,NULL),(1465,95,124,2,NULL),(1466,114,109,2,NULL),(1467,97,124,2,NULL),(1468,97,124,2,NULL),(1469,4,112,2,NULL),(1470,101,124,2,NULL),(1471,101,124,2,NULL),(1472,6,112,2,NULL),(1473,104,124,2,NULL),(1474,104,124,2,NULL),(1475,45,112,2,NULL),(1476,106,124,2,NULL),(1477,106,124,2,NULL),(1478,46,112,2,NULL),(1479,127,127,2,NULL),(1480,127,127,2,NULL),(1481,52,112,2,NULL),(1482,179,127,2,NULL),(1483,112,112,2,NULL),(1484,150,127,2,NULL),(1485,213,127,2,NULL),(1486,113,112,2,NULL),(1487,157,127,2,NULL),(1488,168,127,2,NULL),(1489,129,127,2,NULL),(1490,114,112,2,NULL),(1491,176,127,2,NULL),(1492,4,117,2,NULL),(1493,77,127,2,NULL),(1494,100,127,2,NULL),(1495,6,117,2,NULL),(1496,26,127,2,NULL),(1497,49,127,2,NULL),(1498,45,117,2,NULL),(1499,51,127,2,NULL),(1500,53,127,2,NULL),(1501,46,117,2,NULL),(1502,55,127,2,NULL),(1503,96,127,2,NULL),(1504,52,117,2,NULL),(1505,102,127,2,NULL),(1506,103,127,2,NULL),(1507,112,117,2,NULL),(1508,80,127,2,NULL),(1509,82,127,2,NULL),(1510,113,117,2,NULL),(1511,84,127,2,NULL),(1512,89,127,2,NULL),(1513,114,117,2,NULL),(1514,91,127,2,NULL),(1515,94,127,2,NULL),(1516,4,133,2,NULL),(1517,7,127,2,NULL),(1518,9,127,2,NULL),(1519,6,133,2,NULL),(1520,12,127,2,NULL),(1521,13,127,2,NULL),(1522,45,133,2,NULL),(1523,14,127,2,NULL),(1524,46,133,2,NULL),(1525,109,127,2,NULL),(1526,110,127,2,NULL),(1527,52,133,2,NULL),(1528,111,127,2,NULL),(1529,111,127,2,NULL),(1530,112,133,2,NULL),(1531,35,127,2,NULL),(1532,35,127,2,NULL),(1533,113,133,2,NULL),(1534,37,127,2,NULL),(1535,37,127,2,NULL),(1536,114,133,2,NULL),(1537,40,127,2,NULL),(1538,40,127,2,NULL),(1539,4,134,2,NULL),(1540,95,127,2,NULL),(1541,95,127,2,NULL),(1542,6,134,2,NULL),(1543,97,127,2,NULL),(1544,97,127,2,NULL),(1545,45,134,2,NULL),(1546,101,127,2,NULL),(1547,101,127,2,NULL),(1548,46,134,2,NULL),(1549,104,127,2,NULL),(1550,104,127,2,NULL),(1551,52,134,2,NULL),(1552,106,127,2,NULL),(1553,106,127,2,NULL),(1554,112,134,2,NULL),(1555,141,2,2,NULL),(1556,141,2,2,NULL),(1557,113,134,2,NULL),(1558,141,17,2,NULL),(1559,141,17,2,NULL),(1560,114,134,2,NULL),(1561,141,19,2,NULL),(1562,141,19,2,NULL),(1563,4,136,2,NULL),(1564,141,27,2,NULL),(1565,141,27,2,NULL),(1566,6,136,2,NULL),(1567,169,2,2,NULL),(1568,169,2,2,NULL),(1569,45,136,2,NULL),(1570,169,17,2,NULL),(1571,169,17,2,NULL),(1572,46,136,2,NULL),(1573,169,19,2,NULL),(1574,169,19,2,NULL),(1575,52,136,2,NULL),(1576,169,27,2,NULL),(1577,169,27,2,NULL),(1578,112,136,2,NULL),(1579,127,22,2,NULL),(1580,127,22,2,NULL),(1581,113,136,2,NULL),(1582,179,22,2,NULL),(1583,179,22,2,NULL),(1584,114,136,2,NULL),(1585,150,22,2,NULL),(1586,150,22,2,NULL),(1587,4,108,2,NULL),(1588,213,22,2,NULL),(1589,213,22,2,NULL),(1590,6,108,2,NULL),(1591,157,22,2,NULL),(1592,157,22,2,NULL),(1593,45,108,2,NULL),(1594,168,22,2,NULL),(1595,168,22,2,NULL),(1596,46,108,2,NULL),(1597,129,22,2,NULL),(1598,129,22,2,NULL),(1599,52,108,2,NULL),(1600,176,22,2,NULL),(1601,176,22,2,NULL),(1602,112,108,2,NULL),(1603,77,22,2,NULL),(1604,77,22,2,NULL),(1605,113,108,2,NULL),(1606,100,22,2,NULL),(1607,100,22,2,NULL),(1608,114,108,2,NULL),(1609,26,22,2,NULL),(1610,26,22,2,NULL),(1611,4,121,2,NULL),(1612,49,22,2,NULL),(1613,49,22,2,NULL),(1614,6,121,2,NULL),(1615,51,22,2,NULL),(1616,51,22,2,NULL),(1617,45,121,2,NULL),(1618,53,22,2,NULL),(1619,53,22,2,NULL),(1620,46,121,2,NULL),(1621,55,22,2,NULL),(1622,55,22,2,NULL),(1623,52,121,2,NULL),(1624,96,22,2,NULL),(1625,96,22,2,NULL),(1626,112,121,2,NULL),(1627,102,22,2,NULL),(1628,102,22,2,NULL),(1629,113,121,2,NULL),(1630,103,22,2,NULL),(1631,103,22,2,NULL),(1632,114,121,2,NULL),(1633,80,22,2,NULL),(1634,80,22,2,NULL),(1635,4,129,2,NULL),(1636,82,22,2,NULL),(1637,82,22,2,NULL),(1638,6,129,2,NULL),(1639,84,22,2,NULL),(1640,84,22,2,NULL),(1641,45,129,2,NULL),(1642,89,22,2,NULL),(1643,89,22,2,NULL),(1644,46,129,2,NULL),(1645,91,22,2,NULL),(1646,91,22,2,NULL),(1647,52,129,2,NULL),(1648,94,22,2,NULL),(1649,94,22,2,NULL),(1650,112,129,2,NULL),(1651,7,22,2,NULL),(1652,7,22,2,NULL),(1653,113,129,2,NULL),(1654,9,22,2,NULL),(1655,9,22,2,NULL),(1656,114,129,2,NULL),(1657,12,22,2,NULL),(1658,12,22,2,NULL),(1659,4,123,2,NULL),(1660,13,22,2,NULL),(1661,13,22,2,NULL),(1662,6,123,2,NULL),(1663,14,22,2,NULL),(1664,14,22,2,NULL),(1665,45,123,2,NULL),(1666,109,22,2,NULL),(1667,109,22,2,NULL),(1668,46,123,2,NULL),(1669,110,22,2,NULL),(1670,52,123,2,NULL),(1671,111,22,2,NULL),(1672,35,22,2,NULL),(1673,112,123,2,NULL),(1674,37,22,2,NULL),(1675,37,22,2,NULL),(1676,113,123,2,NULL),(1677,40,22,2,NULL),(1678,40,22,2,NULL),(1679,114,123,2,NULL),(1680,95,22,2,NULL),(1681,95,22,2,NULL),(1682,4,115,2,NULL),(1683,97,22,2,NULL),(1684,97,22,2,NULL),(1685,6,115,2,NULL),(1686,101,22,2,NULL),(1687,101,22,2,NULL),(1688,45,115,2,NULL),(1689,104,22,2,NULL),(1690,104,22,2,NULL),(1691,46,115,2,NULL),(1692,106,22,2,NULL),(1693,106,22,2,NULL),(1694,52,115,2,NULL),(1695,137,11,2,NULL),(1696,137,11,2,NULL),(1697,112,115,2,NULL),(1698,137,45,2,NULL),(1699,137,45,2,NULL),(1700,113,115,2,NULL),(1701,137,52,2,NULL),(1702,137,52,2,NULL),(1703,114,115,2,NULL),(1704,137,57,2,NULL),(1705,137,57,2,NULL),(1706,4,116,2,NULL),(1707,203,11,2,NULL),(1708,203,11,2,NULL),(1709,6,116,2,NULL),(1710,203,45,2,NULL),(1711,203,45,2,NULL),(1712,45,116,2,NULL),(1713,203,52,2,NULL),(1714,203,52,2,NULL),(1715,46,116,2,NULL),(1716,203,57,2,NULL),(1717,203,57,2,NULL),(1718,52,116,2,NULL),(1719,143,7,2,NULL),(1720,143,29,2,NULL),(1721,112,116,2,NULL),(1722,143,34,2,NULL),(1723,143,34,2,NULL),(1724,113,116,2,NULL),(1725,143,36,2,NULL),(1726,143,36,2,NULL),(1727,114,116,2,NULL),(1728,210,7,2,NULL),(1729,210,7,2,NULL),(1730,4,118,2,NULL),(1731,210,29,2,NULL),(1732,210,29,2,NULL),(1733,6,118,2,NULL),(1734,210,34,2,NULL),(1735,210,34,2,NULL),(1736,45,118,2,NULL),(1737,210,36,2,NULL),(1738,210,36,2,NULL),(1739,46,118,2,NULL),(1740,52,118,2,NULL),(1741,112,118,2,NULL),(1742,127,47,2,NULL),(1743,127,47,2,NULL),(1744,113,118,2,NULL),(1745,179,47,2,NULL),(1746,179,47,2,NULL),(1747,114,118,2,NULL),(1748,127,62,2,NULL),(1749,127,62,2,NULL),(1750,4,119,2,NULL),(1751,179,62,2,NULL),(1752,179,62,2,NULL),(1753,6,119,2,NULL),(1754,127,66,2,NULL),(1755,127,66,2,NULL),(1756,45,119,2,NULL),(1757,179,66,2,NULL),(1758,179,66,2,NULL),(1759,46,119,2,NULL),(1760,127,68,2,NULL),(1761,127,68,2,NULL),(1762,52,119,2,NULL),(1763,179,68,2,NULL),(1764,179,68,2,NULL),(1765,112,119,2,NULL),(1766,127,70,2,NULL),(1767,127,70,2,NULL),(1768,113,119,2,NULL),(1769,179,70,2,NULL),(1770,179,70,2,NULL),(1771,114,119,2,NULL),(1772,127,72,2,NULL),(1773,127,72,2,NULL),(1774,4,125,2,NULL),(1775,179,72,2,NULL),(1776,179,72,2,NULL),(1777,6,125,2,NULL),(1778,127,74,2,NULL),(1779,127,74,2,NULL),(1780,45,125,2,NULL),(1781,179,74,2,NULL),(1782,179,74,2,NULL),(1783,46,125,2,NULL),(1784,127,75,2,NULL),(1785,127,75,2,NULL),(1786,52,125,2,NULL),(1787,179,75,2,NULL),(1788,179,75,2,NULL),(1789,112,125,2,NULL),(1790,127,76,2,NULL),(1791,127,76,2,NULL),(1792,113,125,2,NULL),(1793,179,76,2,NULL),(1794,179,76,2,NULL),(1795,114,125,2,NULL),(1796,127,78,2,NULL),(1797,127,78,2,NULL),(1798,4,126,2,NULL),(1799,179,78,2,NULL),(1800,179,78,2,NULL),(1801,6,126,2,NULL),(1802,127,137,2,NULL),(1803,127,137,2,NULL),(1804,45,126,2,NULL),(1805,179,137,2,NULL),(1806,127,138,2,NULL),(1807,46,126,2,NULL),(1808,179,138,2,NULL),(1809,179,138,2,NULL),(1810,52,126,2,NULL),(1811,127,139,2,NULL),(1812,127,139,2,NULL),(1813,112,126,2,NULL),(1814,179,139,2,NULL),(1815,127,140,2,NULL),(1816,113,126,2,NULL),(1817,179,140,2,NULL),(1818,179,140,2,NULL),(1819,114,126,2,NULL),(1820,127,77,2,NULL),(1821,127,77,2,NULL),(1822,4,128,2,NULL),(1823,179,77,2,NULL),(1824,179,77,2,NULL),(1825,6,128,2,NULL),(1826,127,95,2,NULL),(1827,127,95,2,NULL),(1828,45,128,2,NULL),(1829,179,95,2,NULL),(1830,179,95,2,NULL),(1831,46,128,2,NULL),(1832,127,131,2,NULL),(1833,127,131,2,NULL),(1834,52,128,2,NULL),(1835,179,131,2,NULL),(1836,179,131,2,NULL),(1837,112,128,2,NULL),(1838,127,135,2,NULL),(1839,127,135,2,NULL),(1840,113,128,2,NULL),(1841,179,135,2,NULL),(1842,179,135,2,NULL),(1843,114,128,2,NULL),(1844,127,132,2,NULL),(1845,127,132,2,NULL),(1846,4,130,2,NULL),(1847,179,132,2,NULL),(1848,179,132,2,NULL),(1849,6,130,2,NULL),(1850,127,109,2,NULL),(1851,127,109,2,NULL),(1852,45,130,2,NULL),(1853,179,109,2,NULL),(1854,179,109,2,NULL),(1855,46,130,2,NULL),(1856,127,112,2,NULL),(1857,127,112,2,NULL),(1858,52,130,2,NULL),(1859,179,112,2,NULL),(1860,179,112,2,NULL),(1861,112,130,2,NULL),(1862,127,117,2,NULL),(1863,127,117,2,NULL),(1864,113,130,2,NULL),(1865,179,117,2,NULL),(1866,179,117,2,NULL),(1867,114,130,2,NULL),(1868,127,133,2,NULL),(1869,127,133,2,NULL),(1870,127,108,2,NULL),(1871,179,133,2,NULL),(1872,179,133,2,NULL),(1873,179,108,2,NULL),(1874,127,134,2,NULL),(1875,127,134,2,NULL),(1876,150,108,2,NULL),(1877,179,134,2,NULL),(1878,179,134,2,NULL),(1879,213,108,2,NULL),(1880,127,136,2,NULL),(1881,127,136,2,NULL),(1882,157,108,2,NULL),(1883,179,136,2,NULL),(1884,179,136,2,NULL),(1885,168,108,2,NULL),(1886,127,121,2,NULL),(1887,127,121,2,NULL),(1888,129,108,2,NULL),(1889,179,121,2,NULL),(1890,179,121,2,NULL),(1891,176,108,2,NULL),(1892,127,129,2,NULL),(1893,127,129,2,NULL),(1894,77,108,2,NULL),(1895,179,129,2,NULL),(1896,179,129,2,NULL),(1897,100,108,2,NULL),(1898,127,123,2,NULL),(1899,127,123,2,NULL),(1900,26,108,2,NULL),(1901,179,123,2,NULL),(1902,179,123,2,NULL),(1903,49,108,2,NULL),(1904,127,115,2,NULL),(1905,127,115,2,NULL),(1906,51,108,2,NULL),(1907,179,115,2,NULL),(1908,127,116,2,NULL),(1909,53,108,2,NULL),(1910,179,116,2,NULL),(1911,179,116,2,NULL),(1912,55,108,2,NULL),(1913,127,118,2,NULL),(1914,127,118,2,NULL),(1915,96,108,2,NULL),(1916,179,118,2,NULL),(1917,179,118,2,NULL),(1918,102,108,2,NULL),(1919,127,119,2,NULL),(1920,127,119,2,NULL),(1921,103,108,2,NULL),(1922,179,119,2,NULL),(1923,179,119,2,NULL),(1924,80,108,2,NULL),(1925,127,125,2,NULL),(1926,127,125,2,NULL),(1927,82,108,2,NULL),(1928,179,125,2,NULL),(1929,179,125,2,NULL),(1930,84,108,2,NULL),(1931,127,126,2,NULL),(1932,127,126,2,NULL),(1933,89,108,2,NULL),(1934,179,126,2,NULL),(1935,179,126,2,NULL),(1936,91,108,2,NULL),(1937,127,128,2,NULL),(1938,127,128,2,NULL),(1939,94,108,2,NULL),(1940,179,128,2,NULL),(1941,179,128,2,NULL),(1942,7,108,2,NULL),(1943,127,130,2,NULL),(1944,127,130,2,NULL),(1945,9,108,2,NULL),(1946,179,130,2,NULL),(1947,179,130,2,NULL),(1948,12,108,2,NULL),(1949,152,7,2,NULL),(1950,152,7,2,NULL),(1951,13,108,2,NULL),(1952,152,29,2,NULL),(1953,152,29,2,NULL),(1954,14,108,2,NULL),(1955,152,34,2,NULL),(1956,152,34,2,NULL),(1957,109,108,2,NULL),(1958,152,36,2,NULL),(1959,152,36,2,NULL),(1960,110,108,2,NULL),(1961,167,7,2,NULL),(1962,167,7,2,NULL),(1963,111,108,2,NULL),(1964,167,29,2,NULL),(1965,167,29,2,NULL),(1966,35,108,2,NULL),(1967,167,34,2,NULL),(1968,167,34,2,NULL),(1969,37,108,2,NULL),(1970,167,36,2,NULL),(1971,167,36,2,NULL),(1972,40,108,2,NULL),(1973,95,108,2,NULL),(1974,97,108,2,NULL),(1975,150,47,2,NULL),(1976,101,108,2,NULL),(1977,213,47,2,NULL),(1978,213,47,2,NULL),(1979,104,108,2,NULL),(1980,150,62,2,NULL),(1981,150,62,2,NULL),(1982,106,108,2,NULL),(1983,213,62,2,NULL),(1984,213,62,2,NULL),(1985,150,66,2,NULL),(1986,150,66,2,NULL),(1987,213,66,2,NULL),(1988,150,68,2,NULL),(1989,109,47,2,NULL),(1990,213,68,2,NULL),(1991,110,47,2,NULL),(1992,150,70,2,NULL),(1993,213,70,2,NULL),(1994,111,47,2,NULL),(1995,150,72,2,NULL),(1996,213,72,2,NULL),(1997,109,62,2,NULL),(1998,150,74,2,NULL),(1999,213,74,2,NULL),(2000,110,62,2,NULL),(2001,150,75,2,NULL),(2002,213,75,2,NULL),(2003,150,76,2,NULL),(2004,111,62,2,NULL),(2005,213,76,2,NULL),(2006,109,66,2,NULL),(2007,150,78,2,NULL),(2008,213,78,2,NULL),(2009,110,66,2,NULL),(2010,150,137,2,NULL),(2011,213,137,2,NULL),(2012,111,66,2,NULL),(2013,150,138,2,NULL),(2014,213,138,2,NULL),(2015,109,68,2,NULL),(2016,150,139,2,NULL),(2017,213,139,2,NULL),(2018,110,68,2,NULL),(2019,150,140,2,NULL),(2020,213,140,2,NULL),(2021,111,68,2,NULL),(2022,150,77,2,NULL),(2023,213,77,2,NULL),(2024,150,95,2,NULL),(2025,109,70,2,NULL),(2026,213,95,2,NULL),(2027,150,131,2,NULL),(2028,110,70,2,NULL),(2029,213,131,2,NULL),(2030,111,70,2,NULL),(2031,150,135,2,NULL),(2032,213,135,2,NULL),(2033,150,132,2,NULL),(2034,109,72,2,NULL),(2035,213,132,2,NULL),(2036,150,109,2,NULL),(2037,110,72,2,NULL),(2038,213,109,2,NULL),(2039,150,112,2,NULL),(2040,111,72,2,NULL),(2041,213,112,2,NULL),(2042,109,74,2,NULL),(2043,150,117,2,NULL),(2044,213,117,2,NULL),(2045,150,133,2,NULL),(2046,110,74,2,NULL),(2047,213,133,2,NULL),(2048,150,134,2,NULL),(2049,111,74,2,NULL),(2050,213,134,2,NULL),(2051,150,136,2,NULL),(2052,109,75,2,NULL),(2053,213,136,2,NULL),(2054,110,75,2,NULL),(2055,150,121,2,NULL),(2056,213,121,2,NULL),(2057,111,75,2,NULL),(2058,150,129,2,NULL),(2059,213,129,2,NULL),(2060,109,76,2,NULL),(2061,150,123,2,NULL),(2062,213,123,2,NULL),(2063,150,115,2,NULL),(2064,110,76,2,NULL),(2065,213,115,2,NULL),(2066,111,76,2,NULL),(2067,150,116,2,NULL),(2068,213,116,2,NULL),(2069,109,78,2,NULL),(2070,150,118,2,NULL),(2071,213,118,2,NULL),(2072,150,119,2,NULL),(2073,110,78,2,NULL),(2074,213,119,2,NULL),(2075,150,125,2,NULL),(2076,111,78,2,NULL),(2077,213,125,2,NULL),(2078,150,126,2,NULL),(2079,109,137,2,NULL),(2080,213,126,2,NULL),(2081,150,128,2,NULL),(2082,110,137,2,NULL),(2083,213,128,2,NULL),(2084,150,130,2,NULL),(2085,111,137,2,NULL),(2086,213,130,2,NULL),(2087,144,7,2,NULL),(2088,109,138,2,NULL),(2089,144,29,2,NULL),(2090,144,34,2,NULL),(2091,144,34,2,NULL),(2092,110,138,2,NULL),(2093,144,36,2,NULL),(2094,190,7,2,NULL),(2095,111,138,2,NULL),(2096,190,29,2,NULL),(2097,190,34,2,NULL),(2098,109,139,2,NULL),(2099,190,36,2,NULL),(2100,110,139,2,NULL),(2101,121,7,2,NULL),(2102,121,29,2,NULL),(2103,121,34,2,NULL),(2104,111,139,2,NULL),(2105,121,36,2,NULL),(2106,121,36,2,NULL),(2107,109,140,2,NULL),(2108,154,10,2,NULL),(2109,154,41,2,NULL),(2110,154,41,2,NULL),(2111,110,140,2,NULL),(2112,154,43,2,NULL),(2113,154,46,2,NULL),(2114,111,140,2,NULL),(2115,193,10,2,NULL),(2116,193,41,2,NULL),(2117,109,77,2,NULL),(2118,193,43,2,NULL),(2119,110,77,2,NULL),(2120,193,46,2,NULL),(2121,205,7,2,NULL),(2122,111,77,2,NULL),(2123,205,29,2,NULL),(2124,205,34,2,NULL),(2125,109,95,2,NULL),(2126,205,36,2,NULL),(2127,110,95,2,NULL),(2128,123,7,2,NULL),(2129,123,29,2,NULL),(2130,111,95,2,NULL),(2131,123,34,2,NULL),(2132,109,131,2,NULL),(2133,123,36,2,NULL),(2134,145,7,2,NULL),(2135,145,29,2,NULL),(2136,110,131,2,NULL),(2137,145,34,2,NULL),(2138,145,36,2,NULL),(2139,111,131,2,NULL),(2140,157,47,2,NULL),(2141,109,135,2,NULL),(2142,168,47,2,NULL),(2143,110,135,2,NULL),(2144,157,62,2,NULL),(2145,168,62,2,NULL),(2146,111,135,2,NULL),(2147,157,66,2,NULL),(2148,168,66,2,NULL),(2149,109,132,2,NULL),(2150,157,68,2,NULL),(2151,110,132,2,NULL),(2152,168,68,2,NULL),(2153,157,70,2,NULL),(2154,111,132,2,NULL),(2155,168,70,2,NULL),(2156,157,72,2,NULL),(2157,109,109,2,NULL),(2158,168,72,2,NULL),(2159,157,74,2,NULL),(2160,110,109,2,NULL),(2161,168,74,2,NULL),(2162,157,75,2,NULL),(2163,111,109,2,NULL),(2164,168,75,2,NULL),(2165,157,76,2,NULL),(2166,109,112,2,NULL),(2167,168,76,2,NULL),(2168,157,78,2,NULL),(2169,110,112,2,NULL),(2170,168,78,2,NULL),(2171,157,137,2,NULL),(2172,111,112,2,NULL),(2173,168,137,2,NULL),(2174,157,138,2,NULL),(2175,109,117,2,NULL),(2176,168,138,2,NULL),(2177,157,139,2,NULL),(2178,110,117,2,NULL),(2179,168,139,2,NULL),(2180,157,140,2,NULL),(2181,111,117,2,NULL),(2182,168,140,2,NULL),(2183,157,77,2,NULL),(2184,109,133,2,NULL),(2185,168,77,2,NULL),(2186,157,95,2,NULL),(2187,110,133,2,NULL),(2188,168,95,2,NULL),(2189,157,131,2,NULL),(2190,168,131,2,NULL),(2191,111,133,2,NULL),(2192,157,135,2,NULL),(2193,109,134,2,NULL),(2194,168,135,2,NULL),(2195,157,132,2,NULL),(2196,110,134,2,NULL),(2197,168,132,2,NULL),(2198,157,109,2,NULL),(2199,111,134,2,NULL),(2200,168,109,2,NULL),(2201,157,112,2,NULL),(2202,109,136,2,NULL),(2203,168,112,2,NULL),(2204,157,117,2,NULL),(2205,110,136,2,NULL),(2206,168,117,2,NULL),(2207,157,133,2,NULL),(2208,111,136,2,NULL),(2209,168,133,2,NULL),(2210,157,134,2,NULL),(2211,168,134,2,NULL),(2212,109,129,2,NULL),(2213,157,136,2,NULL),(2214,110,129,2,NULL),(2215,168,136,2,NULL),(2216,157,121,2,NULL),(2217,111,129,2,NULL),(2218,168,121,2,NULL),(2219,157,129,2,NULL),(2220,109,123,2,NULL),(2221,168,129,2,NULL),(2222,157,123,2,NULL),(2223,110,123,2,NULL),(2224,168,123,2,NULL),(2225,157,115,2,NULL),(2226,111,123,2,NULL),(2227,168,115,2,NULL),(2228,157,116,2,NULL),(2229,109,115,2,NULL),(2230,168,116,2,NULL),(2231,157,118,2,NULL),(2232,110,115,2,NULL),(2233,168,118,2,NULL),(2234,157,119,2,NULL),(2235,111,115,2,NULL),(2236,168,119,2,NULL),(2237,157,125,2,NULL),(2238,109,116,2,NULL),(2239,168,125,2,NULL),(2240,157,126,2,NULL),(2241,110,116,2,NULL),(2242,168,126,2,NULL),(2243,157,128,2,NULL),(2244,111,116,2,NULL),(2245,168,128,2,NULL),(2246,157,130,2,NULL),(2247,109,118,2,NULL),(2248,168,130,2,NULL),(2249,156,51,2,NULL),(2250,156,53,2,NULL),(2251,110,118,2,NULL),(2252,164,54,2,NULL),(2253,164,60,2,NULL),(2254,111,118,2,NULL),(2255,166,54,2,NULL),(2256,166,60,2,NULL),(2257,109,119,2,NULL),(2258,171,51,2,NULL),(2259,171,53,2,NULL),(2260,110,119,2,NULL),(2261,195,54,2,NULL),(2262,195,60,2,NULL),(2263,111,119,2,NULL),(2264,198,54,2,NULL),(2265,198,60,2,NULL),(2266,109,125,2,NULL),(2267,129,47,2,NULL),(2268,110,125,2,NULL),(2269,176,47,2,NULL),(2270,77,47,2,NULL),(2271,100,47,2,NULL),(2272,111,125,2,NULL),(2273,26,47,2,NULL),(2274,49,47,2,NULL),(2275,109,126,2,NULL),(2276,51,47,2,NULL),(2277,53,47,2,NULL),(2278,110,126,2,NULL),(2279,55,47,2,NULL),(2280,96,47,2,NULL),(2281,111,126,2,NULL),(2282,102,47,2,NULL),(2283,103,47,2,NULL),(2284,109,128,2,NULL),(2285,80,47,2,NULL),(2286,82,47,2,NULL),(2287,110,128,2,NULL),(2288,84,47,2,NULL),(2289,111,128,2,NULL),(2290,89,47,2,NULL),(2291,91,47,2,NULL),(2292,94,47,2,NULL),(2293,109,130,2,NULL),(2294,7,47,2,NULL),(2295,110,130,2,NULL),(2296,9,47,2,NULL),(2297,12,47,2,NULL),(2298,13,47,2,NULL),(2299,111,130,2,NULL),(2300,14,47,2,NULL),(2301,35,47,2,NULL),(2302,35,47,2,NULL),(2303,37,47,2,NULL),(2304,129,121,2,NULL),(2305,40,47,2,NULL),(2306,176,121,2,NULL),(2307,95,47,2,NULL),(2308,97,47,2,NULL),(2309,101,47,2,NULL),(2310,104,47,2,NULL),(2311,106,47,2,NULL),(2312,129,62,2,NULL),(2313,129,62,2,NULL),(2314,77,121,2,NULL),(2315,176,62,2,NULL),(2316,100,121,2,NULL),(2317,129,66,2,NULL),(2318,176,66,2,NULL),(2319,26,121,2,NULL),(2320,129,68,2,NULL),(2321,176,68,2,NULL),(2322,49,121,2,NULL),(2323,129,70,2,NULL),(2324,176,70,2,NULL),(2325,51,121,2,NULL),(2326,129,72,2,NULL),(2327,176,72,2,NULL),(2328,53,121,2,NULL),(2329,129,74,2,NULL),(2330,176,74,2,NULL),(2331,55,121,2,NULL),(2332,129,75,2,NULL),(2333,176,75,2,NULL),(2334,129,76,2,NULL),(2335,96,121,2,NULL),(2336,176,76,2,NULL),(2337,102,121,2,NULL),(2338,129,78,2,NULL),(2339,176,78,2,NULL),(2340,103,121,2,NULL),(2341,129,137,2,NULL),(2342,176,137,2,NULL),(2343,129,138,2,NULL),(2344,80,121,2,NULL),(2345,176,138,2,NULL),(2346,82,121,2,NULL),(2347,129,139,2,NULL),(2348,176,139,2,NULL),(2349,84,121,2,NULL),(2350,129,140,2,NULL),(2351,176,140,2,NULL),(2352,129,77,2,NULL),(2353,89,121,2,NULL),(2354,176,77,2,NULL),(2355,129,95,2,NULL),(2356,176,95,2,NULL),(2357,91,121,2,NULL),(2358,129,131,2,NULL),(2359,94,121,2,NULL),(2360,176,131,2,NULL),(2361,129,135,2,NULL),(2362,176,135,2,NULL),(2363,7,121,2,NULL),(2364,129,132,2,NULL),(2365,176,132,2,NULL),(2366,9,121,2,NULL),(2367,129,109,2,NULL),(2368,176,109,2,NULL),(2369,12,121,2,NULL),(2370,129,112,2,NULL),(2371,176,112,2,NULL),(2372,13,121,2,NULL),(2373,129,117,2,NULL),(2374,176,117,2,NULL),(2375,14,121,2,NULL),(2376,129,133,2,NULL),(2377,176,133,2,NULL),(2378,129,134,2,NULL),(2379,176,134,2,NULL),(2380,129,136,2,NULL),(2381,176,136,2,NULL),(2382,35,121,2,NULL),(2383,129,129,2,NULL),(2384,176,129,2,NULL),(2385,129,123,2,NULL),(2386,37,121,2,NULL),(2387,176,123,2,NULL),(2388,40,121,2,NULL),(2389,129,115,2,NULL),(2390,176,115,2,NULL),(2391,129,116,2,NULL),(2392,95,121,2,NULL),(2393,176,116,2,NULL),(2394,129,118,2,NULL),(2395,97,121,2,NULL),(2396,176,118,2,NULL),(2397,129,119,2,NULL),(2398,101,121,2,NULL),(2399,176,119,2,NULL),(2400,129,125,2,NULL),(2401,104,121,2,NULL),(2402,176,125,2,NULL),(2403,129,126,2,NULL),(2404,106,121,2,NULL),(2405,176,126,2,NULL),(2406,129,128,2,NULL),(2407,176,128,2,NULL),(2408,129,130,2,NULL),(2409,176,130,2,NULL),(2410,77,62,2,NULL),(2411,100,62,2,NULL),(2412,26,62,2,NULL),(2413,49,62,2,NULL),(2414,35,62,2,NULL),(2415,51,62,2,NULL),(2416,53,62,2,NULL),(2417,37,62,2,NULL),(2418,55,62,2,NULL),(2419,96,62,2,NULL),(2420,40,62,2,NULL),(2421,102,62,2,NULL),(2422,103,62,2,NULL),(2423,35,66,2,NULL),(2424,80,62,2,NULL),(2425,82,62,2,NULL),(2426,37,66,2,NULL),(2427,84,62,2,NULL),(2428,89,62,2,NULL),(2429,40,66,2,NULL),(2430,91,62,2,NULL),(2431,94,62,2,NULL),(2432,35,68,2,NULL),(2433,7,62,2,NULL),(2434,9,62,2,NULL),(2435,37,68,2,NULL),(2436,12,62,2,NULL),(2437,13,62,2,NULL),(2438,40,68,2,NULL),(2439,14,62,2,NULL),(2440,95,62,2,NULL),(2441,35,70,2,NULL),(2442,97,62,2,NULL),(2443,101,62,2,NULL),(2444,37,70,2,NULL),(2445,104,62,2,NULL),(2446,106,62,2,NULL),(2447,40,70,2,NULL),(2448,35,72,2,NULL),(2449,77,66,2,NULL),(2450,77,66,2,NULL),(2451,37,72,2,NULL),(2452,100,66,2,NULL),(2453,100,66,2,NULL),(2454,40,72,2,NULL),(2455,26,66,2,NULL),(2456,26,66,2,NULL),(2457,35,74,2,NULL),(2458,49,66,2,NULL),(2459,49,66,2,NULL),(2460,37,74,2,NULL),(2461,51,66,2,NULL),(2462,51,66,2,NULL),(2463,40,74,2,NULL),(2464,53,66,2,NULL),(2465,53,66,2,NULL),(2466,35,75,2,NULL),(2467,55,66,2,NULL),(2468,55,66,2,NULL),(2469,37,75,2,NULL),(2470,96,66,2,NULL),(2471,96,66,2,NULL),(2472,40,75,2,NULL),(2473,102,66,2,NULL),(2474,102,66,2,NULL),(2475,35,76,2,NULL),(2476,103,66,2,NULL),(2477,103,66,2,NULL),(2478,37,76,2,NULL),(2479,80,66,2,NULL),(2480,80,66,2,NULL),(2481,40,76,2,NULL),(2482,82,66,2,NULL),(2483,82,66,2,NULL),(2484,35,78,2,NULL),(2485,84,66,2,NULL),(2486,84,66,2,NULL),(2487,37,78,2,NULL),(2488,89,66,2,NULL),(2489,89,66,2,NULL),(2490,40,78,2,NULL),(2491,91,66,2,NULL),(2492,35,137,2,NULL),(2493,94,66,2,NULL),(2494,7,66,2,NULL),(2495,37,137,2,NULL),(2496,9,66,2,NULL),(2497,12,66,2,NULL),(2498,40,137,2,NULL),(2499,13,66,2,NULL),(2500,14,66,2,NULL),(2501,35,138,2,NULL),(2502,37,138,2,NULL),(2503,95,66,2,NULL),(2504,97,66,2,NULL),(2505,40,138,2,NULL),(2506,101,66,2,NULL),(2507,101,66,2,NULL),(2508,35,139,2,NULL),(2509,104,66,2,NULL),(2510,104,66,2,NULL),(2511,37,139,2,NULL),(2512,106,66,2,NULL),(2513,40,139,2,NULL),(2514,170,11,2,NULL),(2515,35,140,2,NULL),(2516,170,45,2,NULL),(2517,170,52,2,NULL),(2518,37,140,2,NULL),(2519,170,57,2,NULL),(2520,170,57,2,NULL),(2521,40,140,2,NULL),(2522,192,11,2,NULL),(2523,192,11,2,NULL),(2524,35,77,2,NULL),(2525,192,45,2,NULL),(2526,192,45,2,NULL),(2527,37,77,2,NULL),(2528,192,52,2,NULL),(2529,192,52,2,NULL),(2530,40,77,2,NULL),(2531,192,57,2,NULL),(2532,192,57,2,NULL),(2533,35,95,2,NULL),(2534,37,95,2,NULL),(2535,77,68,2,NULL),(2536,77,68,2,NULL),(2537,40,95,2,NULL),(2538,100,68,2,NULL),(2539,100,68,2,NULL),(2540,35,131,2,NULL),(2541,26,68,2,NULL),(2542,26,68,2,NULL),(2543,37,131,2,NULL),(2544,49,68,2,NULL),(2545,49,68,2,NULL),(2546,40,131,2,NULL),(2547,51,68,2,NULL),(2548,51,68,2,NULL),(2549,35,135,2,NULL),(2550,53,68,2,NULL),(2551,53,68,2,NULL),(2552,37,135,2,NULL),(2553,55,68,2,NULL),(2554,55,68,2,NULL),(2555,40,135,2,NULL),(2556,96,68,2,NULL),(2557,96,68,2,NULL),(2558,35,132,2,NULL),(2559,102,68,2,NULL),(2560,102,68,2,NULL),(2561,37,132,2,NULL),(2562,103,68,2,NULL),(2563,103,68,2,NULL),(2564,40,132,2,NULL),(2565,80,68,2,NULL),(2566,80,68,2,NULL),(2567,35,109,2,NULL),(2568,82,68,2,NULL),(2569,82,68,2,NULL),(2570,37,109,2,NULL),(2571,84,68,2,NULL),(2572,84,68,2,NULL),(2573,40,109,2,NULL),(2574,89,68,2,NULL),(2575,89,68,2,NULL),(2576,35,112,2,NULL),(2577,91,68,2,NULL),(2578,91,68,2,NULL),(2579,37,112,2,NULL),(2580,94,68,2,NULL),(2581,94,68,2,NULL),(2582,40,112,2,NULL),(2583,7,68,2,NULL),(2584,7,68,2,NULL),(2585,35,117,2,NULL),(2586,9,68,2,NULL),(2587,9,68,2,NULL),(2588,37,117,2,NULL),(2589,12,68,2,NULL),(2590,12,68,2,NULL),(2591,40,117,2,NULL),(2592,13,68,2,NULL),(2593,13,68,2,NULL),(2594,35,133,2,NULL),(2595,14,68,2,NULL),(2596,14,68,2,NULL),(2597,37,133,2,NULL),(2598,40,133,2,NULL),(2599,35,134,2,NULL),(2600,95,68,2,NULL),(2601,37,134,2,NULL),(2602,95,68,2,NULL),(2603,97,68,2,NULL),(2604,40,134,2,NULL),(2605,101,68,2,NULL),(2606,104,68,2,NULL),(2607,35,136,2,NULL),(2608,106,68,2,NULL),(2609,37,136,2,NULL),(2610,40,136,2,NULL),(2611,77,70,2,NULL),(2612,100,70,2,NULL),(2613,35,123,2,NULL),(2614,26,70,2,NULL),(2615,49,70,2,NULL),(2616,37,123,2,NULL),(2617,51,70,2,NULL),(2618,53,70,2,NULL),(2619,40,123,2,NULL),(2620,55,70,2,NULL),(2621,96,70,2,NULL),(2622,35,115,2,NULL),(2623,102,70,2,NULL),(2624,37,115,2,NULL),(2625,103,70,2,NULL),(2626,80,70,2,NULL),(2627,40,115,2,NULL),(2628,82,70,2,NULL),(2629,84,70,2,NULL),(2630,35,116,2,NULL),(2631,89,70,2,NULL),(2632,91,70,2,NULL),(2633,37,116,2,NULL),(2634,94,70,2,NULL),(2635,40,116,2,NULL),(2636,7,70,2,NULL),(2637,9,70,2,NULL),(2638,35,118,2,NULL),(2639,12,70,2,NULL),(2640,13,70,2,NULL),(2641,37,118,2,NULL),(2642,14,70,2,NULL),(2643,40,118,2,NULL),(2644,35,119,2,NULL),(2645,37,119,2,NULL),(2646,95,70,2,NULL),(2647,97,70,2,NULL),(2648,40,119,2,NULL),(2649,101,70,2,NULL),(2650,104,70,2,NULL),(2651,106,70,2,NULL),(2652,35,125,2,NULL),(2653,77,72,2,NULL),(2654,37,125,2,NULL),(2655,100,72,2,NULL),(2656,26,72,2,NULL),(2657,40,125,2,NULL),(2658,49,72,2,NULL),(2659,35,126,2,NULL),(2660,51,72,2,NULL),(2661,53,72,2,NULL),(2662,37,126,2,NULL),(2663,55,72,2,NULL),(2664,96,72,2,NULL),(2665,40,126,2,NULL),(2666,102,72,2,NULL),(2667,103,72,2,NULL),(2668,35,128,2,NULL),(2669,80,72,2,NULL),(2670,82,72,2,NULL),(2671,37,128,2,NULL),(2672,84,72,2,NULL),(2673,89,72,2,NULL),(2674,40,128,2,NULL),(2675,91,72,2,NULL),(2676,94,72,2,NULL),(2677,35,130,2,NULL),(2678,7,72,2,NULL),(2679,9,72,2,NULL),(2680,37,130,2,NULL),(2681,12,72,2,NULL),(2682,40,130,2,NULL),(2683,13,72,2,NULL),(2684,14,72,2,NULL),(2685,95,72,2,NULL),(2686,95,72,2,NULL),(2687,97,72,2,NULL),(2688,101,72,2,NULL),(2689,104,72,2,NULL),(2690,106,72,2,NULL),(2691,77,129,2,NULL),(2692,77,74,2,NULL),(2693,100,74,2,NULL),(2694,100,129,2,NULL),(2695,26,74,2,NULL),(2696,49,74,2,NULL),(2697,26,129,2,NULL),(2698,51,74,2,NULL),(2699,53,74,2,NULL),(2700,49,129,2,NULL),(2701,55,74,2,NULL),(2702,55,74,2,NULL),(2703,51,129,2,NULL),(2704,96,74,2,NULL),(2705,96,74,2,NULL),(2706,53,129,2,NULL),(2707,102,74,2,NULL),(2708,102,74,2,NULL),(2709,55,129,2,NULL),(2710,103,74,2,NULL),(2711,103,74,2,NULL),(2712,96,129,2,NULL),(2713,80,74,2,NULL),(2714,80,74,2,NULL),(2715,102,129,2,NULL),(2716,82,74,2,NULL),(2717,82,74,2,NULL),(2718,103,129,2,NULL),(2719,84,74,2,NULL),(2720,84,74,2,NULL),(2721,80,129,2,NULL),(2722,89,74,2,NULL),(2723,89,74,2,NULL),(2724,82,129,2,NULL),(2725,91,74,2,NULL),(2726,91,74,2,NULL),(2727,84,129,2,NULL),(2728,94,74,2,NULL),(2729,94,74,2,NULL),(2730,89,129,2,NULL),(2731,7,74,2,NULL),(2732,7,74,2,NULL),(2733,91,129,2,NULL),(2734,9,74,2,NULL),(2735,9,74,2,NULL),(2736,94,129,2,NULL),(2737,12,74,2,NULL),(2738,12,74,2,NULL),(2739,7,129,2,NULL),(2740,13,74,2,NULL),(2741,13,74,2,NULL),(2742,9,129,2,NULL),(2743,14,74,2,NULL),(2744,14,74,2,NULL),(2745,12,129,2,NULL),(2746,13,129,2,NULL),(2747,14,129,2,NULL),(2748,95,74,2,NULL),(2749,95,74,2,NULL),(2750,97,74,2,NULL),(2751,97,74,2,NULL),(2752,101,74,2,NULL),(2753,104,74,2,NULL),(2754,106,74,2,NULL),(2755,95,129,2,NULL),(2756,97,129,2,NULL),(2757,77,75,2,NULL),(2758,100,75,2,NULL),(2759,101,129,2,NULL),(2760,26,75,2,NULL),(2761,49,75,2,NULL),(2762,104,129,2,NULL),(2763,51,75,2,NULL),(2764,53,75,2,NULL),(2765,106,129,2,NULL),(2766,55,75,2,NULL),(2767,96,75,2,NULL),(2768,102,75,2,NULL),(2769,103,75,2,NULL),(2770,80,75,2,NULL),(2771,82,75,2,NULL),(2772,84,75,2,NULL),(2773,89,75,2,NULL),(2774,91,75,2,NULL),(2775,94,75,2,NULL),(2776,7,75,2,NULL),(2777,9,75,2,NULL),(2778,12,75,2,NULL),(2779,13,75,2,NULL),(2780,14,75,2,NULL),(2781,95,75,2,NULL),(2782,95,75,2,NULL),(2783,97,75,2,NULL),(2784,101,75,2,NULL),(2785,104,75,2,NULL),(2786,106,75,2,NULL),(2787,106,75,2,NULL),(2788,77,76,2,NULL),(2789,95,76,2,NULL),(2790,100,76,2,NULL),(2791,26,76,2,NULL),(2792,97,76,2,NULL),(2793,49,76,2,NULL),(2794,51,76,2,NULL),(2795,101,76,2,NULL),(2796,53,76,2,NULL),(2797,55,76,2,NULL),(2798,104,76,2,NULL),(2799,96,76,2,NULL),(2800,102,76,2,NULL),(2801,106,76,2,NULL),(2802,103,76,2,NULL),(2803,80,76,2,NULL),(2804,95,78,2,NULL),(2805,82,76,2,NULL),(2806,97,78,2,NULL),(2807,84,76,2,NULL),(2808,89,76,2,NULL),(2809,101,78,2,NULL),(2810,91,76,2,NULL),(2811,94,76,2,NULL),(2812,104,78,2,NULL),(2813,7,76,2,NULL),(2814,106,78,2,NULL),(2815,9,76,2,NULL),(2816,9,76,2,NULL),(2817,95,137,2,NULL),(2818,12,76,2,NULL),(2819,12,76,2,NULL),(2820,97,137,2,NULL),(2821,13,76,2,NULL),(2822,13,76,2,NULL),(2823,101,137,2,NULL),(2824,14,76,2,NULL),(2825,104,137,2,NULL),(2826,117,61,2,NULL),(2827,118,61,2,NULL),(2828,106,137,2,NULL),(2829,119,61,2,NULL),(2830,122,61,2,NULL),(2831,95,138,2,NULL),(2832,124,61,2,NULL),(2833,124,61,2,NULL),(2834,97,138,2,NULL),(2835,126,61,2,NULL),(2836,126,61,2,NULL),(2837,101,138,2,NULL),(2838,128,61,2,NULL),(2839,128,61,2,NULL),(2840,104,138,2,NULL),(2841,130,61,2,NULL),(2842,130,61,2,NULL),(2843,106,138,2,NULL),(2844,131,61,2,NULL),(2845,95,139,2,NULL),(2846,132,61,2,NULL),(2847,133,61,2,NULL),(2848,135,61,2,NULL),(2849,135,61,2,NULL),(2850,97,139,2,NULL),(2851,136,61,2,NULL),(2852,138,61,2,NULL),(2853,101,139,2,NULL),(2854,140,61,2,NULL),(2855,142,61,2,NULL),(2856,104,139,2,NULL),(2857,184,61,2,NULL),(2858,186,61,2,NULL),(2859,106,139,2,NULL),(2860,187,61,2,NULL),(2861,189,61,2,NULL),(2862,95,140,2,NULL),(2863,191,61,2,NULL),(2864,191,61,2,NULL),(2865,97,140,2,NULL),(2866,194,61,2,NULL),(2867,196,61,2,NULL),(2868,101,140,2,NULL),(2869,197,61,2,NULL),(2870,199,61,2,NULL),(2871,104,140,2,NULL),(2872,200,61,2,NULL),(2873,201,61,2,NULL),(2874,106,140,2,NULL),(2875,204,61,2,NULL),(2876,206,61,2,NULL),(2877,95,77,2,NULL),(2878,207,61,2,NULL),(2879,97,77,2,NULL),(2880,208,61,2,NULL),(2881,209,61,2,NULL),(2882,101,77,2,NULL),(2883,77,78,2,NULL),(2884,104,77,2,NULL),(2885,100,78,2,NULL),(2886,26,78,2,NULL),(2887,106,77,2,NULL),(2888,49,78,2,NULL),(2889,51,78,2,NULL),(2890,95,95,2,NULL),(2891,53,78,2,NULL),(2892,55,78,2,NULL),(2893,97,95,2,NULL),(2894,96,78,2,NULL),(2895,102,78,2,NULL),(2896,101,95,2,NULL),(2897,103,78,2,NULL),(2898,80,78,2,NULL),(2899,104,95,2,NULL),(2900,82,78,2,NULL),(2901,84,78,2,NULL),(2902,106,95,2,NULL),(2903,89,78,2,NULL),(2904,91,78,2,NULL),(2905,95,131,2,NULL),(2906,94,78,2,NULL),(2907,7,78,2,NULL),(2908,97,131,2,NULL),(2909,9,78,2,NULL),(2910,12,78,2,NULL),(2911,101,131,2,NULL),(2912,13,78,2,NULL),(2913,14,78,2,NULL),(2914,104,131,2,NULL),(2915,106,131,2,NULL),(2916,95,135,2,NULL),(2917,97,135,2,NULL),(2918,101,135,2,NULL),(2919,104,135,2,NULL),(2920,77,137,2,NULL),(2921,77,137,2,NULL),(2922,106,135,2,NULL),(2923,100,137,2,NULL),(2924,100,137,2,NULL),(2925,95,132,2,NULL),(2926,26,137,2,NULL),(2927,26,137,2,NULL),(2928,97,132,2,NULL),(2929,49,137,2,NULL),(2930,49,137,2,NULL),(2931,101,132,2,NULL),(2932,51,137,2,NULL),(2933,51,137,2,NULL),(2934,104,132,2,NULL),(2935,53,137,2,NULL),(2936,53,137,2,NULL),(2937,106,132,2,NULL),(2938,55,137,2,NULL),(2939,55,137,2,NULL),(2940,95,109,2,NULL),(2941,96,137,2,NULL),(2942,96,137,2,NULL),(2943,97,109,2,NULL),(2944,102,137,2,NULL),(2945,102,137,2,NULL),(2946,101,109,2,NULL),(2947,103,137,2,NULL),(2948,103,137,2,NULL),(2949,104,109,2,NULL),(2950,80,137,2,NULL),(2951,80,137,2,NULL),(2952,106,109,2,NULL),(2953,82,137,2,NULL),(2954,82,137,2,NULL),(2955,95,112,2,NULL),(2956,84,137,2,NULL),(2957,84,137,2,NULL),(2958,97,112,2,NULL),(2959,89,137,2,NULL),(2960,89,137,2,NULL),(2961,101,112,2,NULL),(2962,91,137,2,NULL),(2963,91,137,2,NULL),(2964,104,112,2,NULL),(2965,94,137,2,NULL),(2966,94,137,2,NULL),(2967,106,112,2,NULL),(2968,7,137,2,NULL),(2969,7,137,2,NULL),(2970,95,117,2,NULL),(2971,9,137,2,NULL),(2972,9,137,2,NULL),(2973,97,117,2,NULL),(2974,12,137,2,NULL),(2975,12,137,2,NULL),(2976,101,117,2,NULL),(2977,13,137,2,NULL),(2978,13,137,2,NULL),(2979,104,117,2,NULL),(2980,14,137,2,NULL),(2981,14,137,2,NULL),(2982,106,117,2,NULL),(2983,95,133,2,NULL),(2984,97,133,2,NULL),(2985,101,133,2,NULL),(2986,104,133,2,NULL),(2987,77,138,2,NULL),(2988,77,138,2,NULL),(2989,106,133,2,NULL),(2990,100,138,2,NULL),(2991,100,138,2,NULL),(2992,95,134,2,NULL),(2993,26,138,2,NULL),(2994,26,138,2,NULL),(2995,97,134,2,NULL),(2996,49,138,2,NULL),(2997,49,138,2,NULL),(2998,101,134,2,NULL),(2999,51,138,2,NULL),(3000,53,138,2,NULL),(3001,104,134,2,NULL),(3002,55,138,2,NULL),(3003,96,138,2,NULL),(3004,106,134,2,NULL),(3005,102,138,2,NULL),(3006,102,138,2,NULL),(3007,95,136,2,NULL),(3008,103,138,2,NULL),(3009,103,138,2,NULL),(3010,97,136,2,NULL),(3011,80,138,2,NULL),(3012,80,138,2,NULL),(3013,101,136,2,NULL),(3014,82,138,2,NULL),(3015,82,138,2,NULL),(3016,104,136,2,NULL),(3017,84,138,2,NULL),(3018,84,138,2,NULL),(3019,106,136,2,NULL),(3020,89,138,2,NULL),(3021,89,138,2,NULL),(3022,91,138,2,NULL),(3023,91,138,2,NULL),(3024,95,115,2,NULL),(3025,94,138,2,NULL),(3026,97,115,2,NULL),(3027,7,138,2,NULL),(3028,9,138,2,NULL),(3029,101,115,2,NULL),(3030,12,138,2,NULL),(3031,13,138,2,NULL),(3032,104,115,2,NULL),(3033,14,138,2,NULL),(3034,106,115,2,NULL),(3035,95,116,2,NULL),(3036,97,116,2,NULL),(3037,77,139,2,NULL),(3038,77,139,2,NULL),(3039,101,116,2,NULL),(3040,100,139,2,NULL),(3041,100,139,2,NULL),(3042,104,116,2,NULL),(3043,26,139,2,NULL),(3044,26,139,2,NULL),(3045,106,116,2,NULL),(3046,49,139,2,NULL),(3047,49,139,2,NULL),(3048,95,118,2,NULL),(3049,51,139,2,NULL),(3050,51,139,2,NULL),(3051,97,118,2,NULL),(3052,53,139,2,NULL),(3053,53,139,2,NULL),(3054,101,118,2,NULL),(3055,55,139,2,NULL),(3056,55,139,2,NULL),(3057,104,118,2,NULL),(3058,96,139,2,NULL),(3059,96,139,2,NULL),(3060,106,118,2,NULL),(3061,102,139,2,NULL),(3062,95,119,2,NULL),(3063,102,139,2,NULL),(3064,103,139,2,NULL),(3065,97,119,2,NULL),(3066,80,139,2,NULL),(3067,82,139,2,NULL),(3068,101,119,2,NULL),(3069,84,139,2,NULL),(3070,89,139,2,NULL),(3071,104,119,2,NULL),(3072,91,139,2,NULL),(3073,94,139,2,NULL),(3074,106,119,2,NULL),(3075,7,139,2,NULL),(3076,9,139,2,NULL),(3077,95,125,2,NULL),(3078,12,139,2,NULL),(3079,13,139,2,NULL),(3080,97,125,2,NULL),(3081,14,139,2,NULL),(3082,14,139,2,NULL),(3083,101,125,2,NULL),(3084,104,125,2,NULL),(3085,77,140,2,NULL),(3086,77,140,2,NULL),(3087,106,125,2,NULL),(3088,100,140,2,NULL),(3089,100,140,2,NULL),(3090,95,126,2,NULL),(3091,26,140,2,NULL),(3092,26,140,2,NULL),(3093,97,126,2,NULL),(3094,49,140,2,NULL),(3095,49,140,2,NULL),(3096,101,126,2,NULL),(3097,51,140,2,NULL),(3098,51,140,2,NULL),(3099,104,126,2,NULL),(3100,53,140,2,NULL),(3101,53,140,2,NULL),(3102,106,126,2,NULL),(3103,55,140,2,NULL),(3104,55,140,2,NULL),(3105,95,128,2,NULL),(3106,96,140,2,NULL),(3107,96,140,2,NULL),(3108,97,128,2,NULL),(3109,102,140,2,NULL),(3110,102,140,2,NULL),(3111,101,128,2,NULL),(3112,103,140,2,NULL),(3113,103,140,2,NULL),(3114,104,128,2,NULL),(3115,80,140,2,NULL),(3116,80,140,2,NULL),(3117,106,128,2,NULL),(3118,82,140,2,NULL),(3119,82,140,2,NULL),(3120,95,130,2,NULL),(3121,84,140,2,NULL),(3122,84,140,2,NULL),(3123,97,130,2,NULL),(3124,89,140,2,NULL),(3125,89,140,2,NULL),(3126,101,130,2,NULL),(3127,91,140,2,NULL),(3128,91,140,2,NULL),(3129,104,130,2,NULL),(3130,94,140,2,NULL),(3131,94,140,2,NULL),(3132,106,130,2,NULL),(3133,7,140,2,NULL),(3134,7,140,2,NULL),(3135,9,140,2,NULL),(3136,9,140,2,NULL),(3137,12,140,2,NULL),(3138,13,140,2,NULL),(3139,14,140,2,NULL),(3140,77,123,2,NULL),(3141,100,123,2,NULL),(3142,26,123,2,NULL),(3143,49,123,2,NULL),(3144,51,123,2,NULL),(3145,53,123,2,NULL),(3146,55,123,2,NULL),(3147,96,123,2,NULL),(3148,102,123,2,NULL),(3149,103,123,2,NULL),(3150,80,123,2,NULL),(3151,82,123,2,NULL),(3152,84,123,2,NULL),(3153,89,123,2,NULL),(3154,91,123,2,NULL),(3155,94,123,2,NULL),(3156,7,123,2,NULL),(3157,9,123,2,NULL),(3158,12,123,2,NULL),(3159,13,123,2,NULL),(3160,14,123,2,NULL),(3161,77,115,2,NULL),(3162,100,115,2,NULL),(3163,26,115,2,NULL),(3164,49,115,2,NULL),(3165,51,115,2,NULL),(3166,53,115,2,NULL),(3167,55,115,2,NULL),(3168,96,115,2,NULL),(3169,102,115,2,NULL),(3170,103,115,2,NULL),(3171,80,115,2,NULL),(3172,82,115,2,NULL),(3173,84,115,2,NULL),(3174,89,115,2,NULL),(3175,91,115,2,NULL),(3176,94,115,2,NULL),(3177,7,115,2,NULL),(3178,9,115,2,NULL),(3179,12,115,2,NULL),(3180,13,115,2,NULL),(3181,14,115,2,NULL),(3182,77,116,2,NULL),(3183,100,116,2,NULL),(3184,26,116,2,NULL),(3185,49,116,2,NULL),(3186,51,116,2,NULL),(3187,53,116,2,NULL),(3188,55,116,2,NULL),(3189,96,116,2,NULL),(3190,102,116,2,NULL),(3191,103,116,2,NULL),(3192,80,116,2,NULL),(3193,82,116,2,NULL),(3194,84,116,2,NULL),(3195,89,116,2,NULL),(3196,91,116,2,NULL),(3197,94,116,2,NULL),(3198,7,116,2,NULL),(3199,9,116,2,NULL),(3200,12,116,2,NULL),(3201,13,116,2,NULL),(3202,14,116,2,NULL),(3203,62,101,2,NULL),(3204,62,110,2,NULL),(3205,77,118,2,NULL),(3206,100,118,2,NULL),(3207,26,118,2,NULL),(3208,49,118,2,NULL),(3209,51,118,2,NULL),(3210,53,118,2,NULL),(3211,55,118,2,NULL),(3212,96,118,2,NULL),(3213,102,118,2,NULL),(3214,103,118,2,NULL),(3215,80,118,2,NULL),(3216,82,118,2,NULL),(3217,84,118,2,NULL),(3218,89,118,2,NULL),(3219,91,118,2,NULL),(3220,94,118,2,NULL),(3221,7,118,2,NULL),(3222,9,118,2,NULL),(3223,12,118,2,NULL),(3224,13,118,2,NULL),(3225,14,118,2,NULL),(3226,77,119,2,NULL),(3227,100,119,2,NULL),(3228,26,119,2,NULL),(3229,49,119,2,NULL),(3230,51,119,2,NULL),(3231,53,119,2,NULL),(3232,55,119,2,NULL),(3233,96,119,2,NULL),(3234,102,119,2,NULL),(3235,103,119,2,NULL),(3236,80,119,2,NULL),(3237,82,119,2,NULL),(3238,84,119,2,NULL),(3239,89,119,2,NULL),(3240,91,119,2,NULL),(3241,94,119,2,NULL),(3242,7,119,2,NULL),(3243,9,119,2,NULL),(3244,12,119,2,NULL),(3245,13,119,2,NULL),(3246,14,119,2,NULL),(3247,77,125,2,NULL),(3248,100,125,2,NULL),(3249,26,125,2,NULL),(3250,49,125,2,NULL),(3251,51,125,2,NULL),(3252,53,125,2,NULL),(3253,55,125,2,NULL),(3254,96,125,2,NULL),(3255,102,125,2,NULL),(3256,103,125,2,NULL),(3257,80,125,2,NULL),(3258,82,125,2,NULL),(3259,84,125,2,NULL),(3260,89,125,2,NULL),(3261,91,125,2,NULL),(3262,94,125,2,NULL),(3263,7,125,2,NULL),(3264,9,125,2,NULL),(3265,12,125,2,NULL),(3266,13,125,2,NULL),(3267,14,125,2,NULL),(3268,77,126,2,NULL),(3269,100,126,2,NULL),(3270,26,126,2,NULL),(3271,49,126,2,NULL),(3272,51,126,2,NULL),(3273,53,126,2,NULL),(3274,55,126,2,NULL),(3275,96,126,2,NULL),(3276,102,126,2,NULL),(3277,103,126,2,NULL),(3278,80,126,2,NULL),(3279,82,126,2,NULL),(3280,84,126,2,NULL),(3281,89,126,2,NULL),(3282,91,126,2,NULL),(3283,94,126,2,NULL),(3284,7,126,2,NULL),(3285,9,126,2,NULL),(3286,12,126,2,NULL),(3287,13,126,2,NULL),(3288,14,126,2,NULL),(3289,77,128,2,NULL),(3290,100,128,2,NULL),(3291,26,128,2,NULL),(3292,49,128,2,NULL),(3293,51,128,2,NULL),(3294,53,128,2,NULL),(3295,55,128,2,NULL),(3296,96,128,2,NULL),(3297,102,128,2,NULL),(3298,103,128,2,NULL),(3299,80,128,2,NULL),(3300,82,128,2,NULL),(3301,84,128,2,NULL),(3302,89,128,2,NULL),(3303,91,128,2,NULL),(3304,94,128,2,NULL),(3305,7,128,2,NULL),(3306,9,128,2,NULL),(3307,12,128,2,NULL),(3308,13,128,2,NULL),(3309,14,128,2,NULL),(3310,77,130,2,NULL),(3311,100,130,2,NULL),(3312,26,130,2,NULL),(3313,49,130,2,NULL),(3314,51,130,2,NULL),(3315,53,130,2,NULL),(3316,55,130,2,NULL),(3317,96,130,2,NULL),(3318,102,130,2,NULL),(3319,103,130,2,NULL),(3320,80,130,2,NULL),(3321,82,130,2,NULL),(3322,84,130,2,NULL),(3323,89,130,2,NULL),(3324,91,130,2,NULL),(3325,94,130,2,NULL),(3326,7,130,2,NULL),(3327,9,130,2,NULL),(3328,12,130,2,NULL),(3329,13,130,2,NULL),(3330,14,130,2,NULL),(3331,1,79,2,NULL),(3332,1,88,2,NULL),(3333,77,77,2,NULL),(3334,100,77,2,NULL),(3335,26,77,2,NULL),(3336,49,77,2,NULL),(3337,51,77,2,NULL),(3338,53,77,2,NULL),(3339,55,77,2,NULL),(3340,96,77,2,NULL),(3341,102,77,2,NULL),(3342,103,77,2,NULL),(3343,80,77,2,NULL),(3344,82,77,2,NULL),(3345,84,77,2,NULL),(3346,89,77,2,NULL),(3347,91,77,2,NULL),(3348,94,77,2,NULL),(3349,7,77,2,NULL),(3350,9,77,2,NULL),(3351,12,77,2,NULL),(3352,13,77,2,NULL),(3353,14,77,2,NULL),(3354,41,85,2,NULL),(3355,41,97,2,NULL),(3356,77,95,2,NULL),(3357,77,131,2,NULL),(3358,77,135,2,NULL),(3359,77,132,2,NULL),(3360,77,109,2,NULL),(3361,77,112,2,NULL),(3362,77,117,2,NULL),(3363,77,133,2,NULL),(3364,77,134,2,NULL),(3365,77,136,2,NULL),(3366,61,85,2,NULL),(3367,61,97,2,NULL),(3368,100,95,2,NULL),(3369,100,131,2,NULL),(3370,100,135,2,NULL),(3371,100,132,2,NULL),(3372,100,109,2,NULL),(3373,100,112,2,NULL),(3374,100,117,2,NULL),(3375,100,133,2,NULL),(3376,100,134,2,NULL),(3377,100,136,2,NULL),(3378,59,85,2,NULL),(3379,59,97,2,NULL),(3380,5,89,2,NULL),(3381,5,102,2,NULL),(3382,68,85,2,NULL),(3383,68,97,2,NULL),(3384,23,93,2,NULL),(3385,23,106,2,NULL),(3386,39,85,2,NULL),(3387,39,97,2,NULL),(3388,26,95,2,NULL),(3389,49,95,2,NULL),(3390,51,95,2,NULL),(3391,53,95,2,NULL),(3392,55,95,2,NULL),(3393,96,95,2,NULL),(3394,102,95,2,NULL),(3395,103,95,2,NULL),(3396,26,131,2,NULL),(3397,49,131,2,NULL),(3398,51,131,2,NULL),(3399,53,131,2,NULL),(3400,55,131,2,NULL),(3401,96,131,2,NULL),(3402,102,131,2,NULL),(3403,103,131,2,NULL),(3404,26,135,2,NULL),(3405,49,135,2,NULL),(3406,51,135,2,NULL),(3407,53,135,2,NULL),(3408,55,135,2,NULL),(3409,96,135,2,NULL),(3410,102,135,2,NULL),(3411,103,135,2,NULL),(3412,26,132,2,NULL),(3413,49,132,2,NULL),(3414,51,132,2,NULL),(3415,53,132,2,NULL),(3416,55,132,2,NULL),(3417,96,132,2,NULL),(3418,102,132,2,NULL),(3419,103,132,2,NULL),(3420,26,109,2,NULL),(3421,49,109,2,NULL),(3422,51,109,2,NULL),(3423,53,109,2,NULL),(3424,55,109,2,NULL),(3425,96,109,2,NULL),(3426,102,109,2,NULL),(3427,103,109,2,NULL),(3428,26,112,2,NULL),(3429,49,112,2,NULL),(3430,51,112,2,NULL),(3431,53,112,2,NULL),(3432,55,112,2,NULL),(3433,96,112,2,NULL),(3434,102,112,2,NULL),(3435,103,112,2,NULL),(3436,26,117,2,NULL),(3437,49,117,2,NULL),(3438,51,117,2,NULL),(3439,53,117,2,NULL),(3440,55,117,2,NULL),(3441,96,117,2,NULL),(3442,102,117,2,NULL),(3443,103,117,2,NULL),(3444,26,133,2,NULL),(3445,49,133,2,NULL),(3446,51,133,2,NULL),(3447,53,133,2,NULL),(3448,55,133,2,NULL),(3449,96,133,2,NULL),(3450,102,133,2,NULL),(3451,103,133,2,NULL),(3452,26,134,2,NULL),(3453,49,134,2,NULL),(3454,51,134,2,NULL),(3455,53,134,2,NULL),(3456,55,134,2,NULL),(3457,96,134,2,NULL),(3458,102,134,2,NULL),(3459,103,134,2,NULL),(3460,26,136,2,NULL),(3461,49,136,2,NULL),(3462,51,136,2,NULL),(3463,53,136,2,NULL),(3464,55,136,2,NULL),(3465,96,136,2,NULL),(3466,102,136,2,NULL),(3467,103,136,2,NULL),(3468,80,95,2,NULL),(3469,82,95,2,NULL),(3470,84,95,2,NULL),(3471,89,95,2,NULL),(3472,91,95,2,NULL),(3473,94,95,2,NULL),(3474,7,95,2,NULL),(3475,9,95,2,NULL),(3476,12,95,2,NULL),(3477,13,95,2,NULL),(3478,14,95,2,NULL),(3479,80,135,2,NULL),(3480,82,135,2,NULL),(3481,84,135,2,NULL),(3482,80,132,2,NULL),(3483,82,132,2,NULL),(3484,84,132,2,NULL),(3485,80,109,2,NULL),(3486,82,109,2,NULL),(3487,84,109,2,NULL),(3488,80,112,2,NULL),(3489,82,112,2,NULL),(3490,84,112,2,NULL),(3491,80,117,2,NULL),(3492,82,117,2,NULL),(3493,84,117,2,NULL),(3494,80,133,2,NULL),(3495,82,133,2,NULL),(3496,84,133,2,NULL),(3497,80,134,2,NULL),(3498,82,134,2,NULL),(3499,84,134,2,NULL),(3500,80,136,2,NULL),(3501,82,136,2,NULL),(3502,84,136,2,NULL),(3503,89,131,2,NULL),(3504,91,131,2,NULL),(3505,94,131,2,NULL),(3506,7,131,2,NULL),(3507,9,131,2,NULL),(3508,12,131,2,NULL),(3509,13,131,2,NULL),(3510,14,131,2,NULL),(3511,89,132,2,NULL),(3512,91,132,2,NULL),(3513,94,132,2,NULL),(3514,89,109,2,NULL),(3515,91,109,2,NULL),(3516,94,109,2,NULL),(3517,89,112,2,NULL),(3518,91,112,2,NULL),(3519,94,112,2,NULL),(3520,89,117,2,NULL),(3521,91,117,2,NULL),(3522,94,117,2,NULL),(3523,89,133,2,NULL),(3524,91,133,2,NULL),(3525,94,133,2,NULL),(3526,89,134,2,NULL),(3527,91,134,2,NULL),(3528,94,134,2,NULL),(3529,89,136,2,NULL),(3530,91,136,2,NULL),(3531,94,136,2,NULL),(3532,7,135,2,NULL),(3533,9,135,2,NULL),(3534,12,135,2,NULL),(3535,13,135,2,NULL),(3536,14,135,2,NULL),(3537,7,109,2,NULL),(3538,9,109,2,NULL),(3539,12,109,2,NULL),(3540,13,109,2,NULL),(3541,14,109,2,NULL),(3542,7,112,2,NULL),(3543,9,112,2,NULL),(3544,12,112,2,NULL),(3545,13,112,2,NULL),(3546,14,112,2,NULL),(3547,7,117,2,NULL),(3548,9,117,2,NULL),(3549,12,117,2,NULL),(3550,13,117,2,NULL),(3551,14,117,2,NULL),(3552,7,133,2,NULL),(3553,9,133,2,NULL),(3554,12,133,2,NULL),(3555,13,133,2,NULL),(3556,14,133,2,NULL),(3557,7,134,2,NULL),(3558,9,134,2,NULL),(3559,12,134,2,NULL),(3560,13,134,2,NULL),(3561,14,134,2,NULL),(3562,7,136,2,NULL),(3563,9,136,2,NULL),(3564,12,136,2,NULL),(3565,13,136,2,NULL),(3566,14,136,2,NULL),(3567,36,101,2,NULL),(3568,36,110,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:39
