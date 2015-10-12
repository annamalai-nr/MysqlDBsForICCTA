-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_212
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*).SEND_SMS'),(21,'android.intent.action.BATTERY_CHANGED'),(24,'android.intent.action.BATTERY_LOW'),(20,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(32,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SCREEN_ON'),(33,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(27,'android.settings.APPLICATION_DETAILS_SETTINGS'),(26,'android.settings.LOCATION_SOURCE_SETTINGS'),(9,'com.android.vending.INSTALL_REFERRER'),(11,'com.extend.battery.CHECK'),(14,'com.extend.battery.DELIVERED_SMS'),(15,'com.extend.battery.SEND_SMS'),(13,'com.extend.battery.SENT_SMS'),(12,'com.extend.battery.UPDATE'),(5,'com.extend.battery.intent.http.SHOW'),(18,'com.extend.battery.notification.action.ALARM'),(16,'com.extend.battery.notification.action.CANCEL'),(17,'com.extend.battery.notification.action.CLICKED'),(3,'com.itframework.installer.updater.CHECK'),(4,'com.itframework.installer.updater.UPDATE'),(28,'com.notifad.android.PushServiceStart(.*)'),(10,'com.notifad.android.PushServiceStart1'),(30,'com.notifad.android.PushServiceStartInvalid'),(31,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(29,'com.notifad.android.PushServiceStartinvalid Id'),(8,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',89),(3,'com.extend.battery',84),(4,'com.extend.battery',101),(5,'com.androiddoctor.battery',7),(6,'com.extend.battery',103);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,2,'com.extend.battery.Splash'),(10,3,'com.extend.battery.Splash'),(11,1,'com.extend.battery.BatteryActivity'),(12,4,'com.extend.battery.Splash'),(13,1,'com.extend.battery.RatingActivity'),(14,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(15,2,'com.extend.battery.TabHandler'),(16,3,'com.extend.battery.TabHandler'),(17,4,'com.extend.battery.TabHandler'),(18,2,'com.extend.battery.TaskKillerActivity'),(19,1,'com.itframework.installer.util.NonMarketDialogActivity'),(20,3,'com.extend.battery.TaskKillerActivity'),(21,4,'com.extend.battery.TaskKillerActivity'),(22,1,'com.extend.battery.BatteryService'),(23,2,'com.extend.battery.UninstallerActivity'),(24,3,'com.extend.battery.UninstallerActivity'),(25,1,'com.itframework.installer.util.InstallWorker'),(26,4,'com.extend.battery.UninstallerActivity'),(27,1,'com.zanalytics.sms.SmsReceiverService'),(28,2,'com.extend.battery.SecurityAuditActivity'),(29,3,'com.extend.battery.SecurityAuditActivity'),(30,1,'com.itframework.installer.updater.UpdateReceiver'),(31,4,'com.extend.battery.SecurityAuditActivity'),(32,2,'com.extend.battery.InstallerActivity'),(33,3,'com.extend.battery.InstallerActivity'),(34,4,'com.extend.battery.InstallerActivity'),(35,2,'com.extend.battery.FeaturesActivity'),(36,3,'com.extend.battery.FeaturesActivity'),(37,4,'com.extend.battery.FeaturesActivity'),(38,2,'com.extend.battery.BoosterActivity'),(39,1,'com.extend.battery.NotificationReceiver'),(40,3,'com.extend.battery.BoosterActivity'),(41,4,'com.extend.battery.BoosterActivity'),(42,2,'com.extend.battery.BatteryActivity'),(43,3,'com.extend.battery.BatteryActivity'),(44,4,'com.extend.battery.BatteryActivity'),(45,2,'com.extend.battery.RatingActivity'),(46,1,'com.extend.battery.BootReceiver'),(47,3,'com.extend.battery.RatingActivity'),(48,4,'com.extend.battery.RatingActivity'),(49,2,'com.extend.battery.BatteryService'),(50,3,'com.extend.battery.BatteryService'),(51,1,'com.zanalytics.sms.SmsReceiver'),(52,4,'com.extend.battery.BatteryService'),(53,2,'com.zanalytics.sms.SmsReceiverService'),(54,3,'com.zanalytics.sms.SmsReceiverService'),(55,4,'com.zanalytics.sms.SmsReceiverService'),(56,2,'com.extend.battery.NotificationReceiver'),(57,3,'com.zanalytics.sms.SmsReceiver'),(58,4,'com.zanalytics.sms.SmsReceiver'),(59,2,'com.extend.battery.BootReceiver'),(60,5,'com.androiddoctor.battery.Splash'),(61,3,'com.tapjoy.TapjoyReferralTracker'),(62,4,'com.tapjoy.TapjoyReferralTracker'),(63,2,'com.zanalytics.sms.SmsReceiver'),(64,5,'com.androiddoctor.battery.TabHandler'),(65,5,'com.androiddoctor.battery.UpgradeActivity'),(66,5,'com.androiddoctor.battery.TaskKillerActivity'),(67,2,'com.tapjoy.TapjoyReferralTracker'),(68,5,'com.androiddoctor.battery.UninstallerActivity'),(69,5,'com.androiddoctor.battery.SecurityAuditActivity'),(70,5,'com.androiddoctor.battery.InstallerActivity'),(71,5,'com.androiddoctor.battery.FeaturesActivity'),(72,6,'com.extend.battery.Splash'),(73,5,'com.androiddoctor.battery.BoosterActivity'),(74,5,'com.androiddoctor.battery.BatteryActivity'),(75,6,'com.extend.battery.TabHandler'),(76,5,'com.notifad.android.PushAds'),(77,6,'com.extend.battery.TaskKillerActivity'),(78,5,'com.mobsqueeze.SqueezeActivity'),(79,6,'com.extend.battery.UninstallerActivity'),(80,5,'com.mobsqueeze.SqueezeDialog'),(81,6,'com.extend.battery.SecurityAuditActivity'),(82,5,'com.mobsqueeze.OfferWall'),(83,6,'com.extend.battery.InstallerActivity'),(84,5,'com.androiddoctor.battery.BatteryService'),(85,6,'com.extend.battery.FeaturesActivity'),(86,5,'com.notifad.android.PushService'),(87,6,'com.extend.battery.BoosterActivity'),(88,6,'com.extend.battery.BatteryActivity'),(89,5,'com.mobsqueeze.SubmitService'),(90,6,'com.extend.battery.RatingActivity'),(91,5,'com.notifad.android.UserDetailsReceiver'),(92,6,'com.extend.battery.MyAccountActivity'),(93,5,'com.notifad.android.MessageReceiver'),(94,6,'com.extend.battery.UninstallingDialog'),(95,5,'com.notifad.android.DeliveryReceiver'),(96,6,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(97,5,'com.androiddoctor.battery.BootReceiver'),(98,6,'com.itframework.installer.util.NonMarketDialogActivity'),(99,6,'com.extend.battery.BatteryService'),(100,5,'com.mobsqueeze.BaseStarReceiver'),(101,6,'com.itframework.installer.util.InstallWorker'),(102,6,'com.itframework.network.NetworkOperationService'),(103,6,'com.zanalytics.sms.SmsReceiverService'),(104,6,'com.zanalytics.sms.SmsSendService'),(105,6,'com.itframework.base.util.UploadAnalyticsService'),(106,6,'com.itframework.notification.NotificationService'),(107,6,'com.itframework.installer.updater.UpdateReceiver'),(108,6,'com.extend.battery.NotificationReceiver'),(109,6,'com.extend.battery.BootReceiver'),(110,6,'com.itframework.network.NetworkOperationReceiver'),(111,6,'com.zanalytics.sms.SmsReceiver'),(112,6,'com.zanalytics.sms.SmsSentReceiver'),(113,6,'com.zanalytics.sms.SmsDeliveredReceiver'),(114,6,'com.zanalytics.sms.SmsSendReceiver'),(115,6,'com.itframework.notification.NotificationReceiver'),(116,3,'com.extend.battery.ay'),(117,3,'com.extend.battery.g'),(118,3,'com.extend.battery.i'),(119,3,'com.extend.battery.j'),(120,3,'com.zanalytics.sms.c'),(121,3,'com.zanalytics.sms.j'),(122,3,'com.extend.battery.aw'),(123,3,'com.zanalytics.sms.a'),(124,3,'com.extend.battery.f'),(125,3,'com.extend.battery.s'),(126,5,'com.androiddoctor.battery.Splash$1'),(127,5,'com.androiddoctor.battery.BatteryService$1'),(128,5,'com.androiddoctor.battery.BatteryActivity$1'),(129,5,'com.androiddoctor.battery.BoosterActivity$1'),(130,1,'com.extend.battery.ba'),(131,1,'com.extend.battery.bb'),(132,1,'com.extend.battery.features.s'),(133,1,'com.extend.battery.d'),(134,1,'com.extend.battery.c'),(135,1,'com.extend.battery.a'),(136,1,'com.zanalytics.sms.c'),(137,1,'com.zanalytics.sms.j'),(138,5,'com.androiddoctor.battery.TaskKillerActivity$1'),(139,1,'com.extend.battery.k'),(140,1,'com.zanalytics.sms.a'),(141,1,'com.itframework.installer.a.b'),(142,5,'com.androiddoctor.battery.BoosterActivity$2'),(143,6,'com.extend.battery.Splash$1'),(144,6,'com.zanalytics.sms.SmsUtils'),(145,6,'com.extend.battery.BoosterActivity$6'),(146,6,'com.extend.battery.features.SmsMonetizationUtils$3'),(147,6,'com.extend.battery.BatteryActivity$1'),(148,6,'com.extend.battery.BoosterActivity$1'),(149,6,'com.itframework.base.service.AlarmReceiver'),(150,6,'com.extend.battery.BatteryService$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,43,'technology'),(2,57,'pdus'),(3,86,'number'),(4,95,'apikey'),(5,86,'text'),(6,86,'creativeId'),(7,95,'imageurl'),(8,76,'appId'),(9,86,'campId'),(10,100,'referrer'),(11,86,'sms'),(12,80,'com/mobsqueeze/Squeeze.FLAG'),(13,78,'com/mobsqueeze/Squeeze.FLAG'),(14,86,'header'),(15,76,'campId'),(16,76,'sms'),(17,95,'campId'),(18,86,'url'),(19,95,'url'),(20,95,'title'),(21,76,'apikey'),(22,76,'creativeId'),(23,86,'adType'),(24,14,'forceDownload'),(25,14,'downloadingWait'),(26,24,'downloadStarting'),(27,14,'downloadStarting'),(28,24,'url'),(29,86,'apikey'),(30,76,'number'),(31,29,'URL'),(32,24,'forceDownload'),(33,95,'creativeId'),(34,95,'header'),(35,24,'finishedText'),(36,86,'imageurl'),(37,95,'number'),(38,86,'testMode'),(39,86,'appId'),(40,86,'type'),(41,86,'title'),(42,24,'downloadingProgress'),(43,14,'filename'),(44,51,'pdus'),(45,24,'filename'),(46,24,'downloadingTitle'),(47,14,'finishedTitle'),(48,24,'downloadingWait'),(49,14,'downloadingTicker'),(50,24,'downloadingToast'),(51,24,'downloadingTicker'),(52,14,'downloadingProgress'),(53,95,'sms'),(54,24,'finishedTitle'),(55,95,'appId'),(56,80,'com/mobsqueeze/Squeeze.AD'),(57,78,'com/mobsqueeze/Squeeze.AD'),(58,74,'technology'),(59,76,'url'),(60,86,'link'),(61,24,'finishedTicker'),(62,14,'url'),(63,14,'finishedText'),(64,14,'downloadingTitle'),(65,95,'text'),(66,14,'callbackIntent'),(67,14,'finishedTicker'),(68,39,'clickevent'),(69,14,'downloadingToast'),(70,9,'technology'),(71,24,'showNotifications'),(72,24,'callbackIntent'),(73,80,'com/mobsqueeze/Squeeze.URL'),(74,78,'com/mobsqueeze/Squeeze.URL'),(75,76,'adType'),(76,76,'header'),(77,76,'test'),(78,115,'BROADCAST_INTENT'),(79,115,'DO_AUTO_CANCEL'),(80,108,'clickevent'),(81,101,'url'),(82,101,'showNotifications'),(83,96,'downloadingTitle'),(84,112,'TagEvent'),(85,101,'filename'),(86,115,'NOTIFICATION_CATEGORY'),(87,111,'pdus'),(88,101,'finishedTicker'),(89,112,'PhoneNumber'),(90,101,'downloadingToast'),(91,112,'TryAgain'),(92,101,'downloadingWait'),(93,115,'CLICKED_EVENT'),(94,101,'finishedText'),(95,106,'BROADCAST_INTENT'),(96,112,'SendIntent'),(97,79,'technology'),(98,92,'technology'),(99,83,'technology'),(100,87,'technology'),(101,88,'technology'),(102,81,'technology'),(103,101,'callbackIntent'),(104,96,'finishedTitle'),(105,107,'URL'),(106,96,'forceDownload');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,11,'a',0,NULL,NULL),(10,9,'a',1,NULL,NULL),(11,10,'a',1,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,12,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'s',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,25,'s',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,27,'s',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'r',1,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,45,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',1,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'r',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,96,'a',1,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'r',0,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,117,'r',1,NULL,NULL),(117,118,'r',1,NULL,NULL),(118,119,'r',1,NULL,NULL),(119,120,'r',1,NULL,NULL),(120,127,'r',1,NULL,NULL),(121,91,'r',1,NULL,NULL),(122,95,'r',1,NULL,NULL),(123,128,'r',1,NULL,NULL),(124,129,'r',1,NULL,NULL),(125,93,'r',1,NULL,NULL),(126,133,'r',1,NULL,NULL),(127,134,'r',1,NULL,NULL),(128,135,'r',1,NULL,NULL),(129,136,'r',1,NULL,NULL),(130,147,'r',1,NULL,NULL),(131,148,'r',1,NULL,NULL),(132,149,'r',1,NULL,NULL),(133,110,'r',1,NULL,NULL),(134,150,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,43),(2,1,20),(3,2,43),(4,2,30),(5,3,11),(6,4,43),(7,4,25),(8,5,57),(9,6,33),(10,7,43),(11,7,40),(12,8,43),(13,8,33),(14,9,43),(15,9,40),(16,10,11),(17,11,25),(18,11,30),(19,11,33),(20,11,43),(21,12,57),(22,13,43),(23,14,30),(24,14,33),(25,14,43),(26,14,25),(27,15,25),(28,16,43),(29,16,25),(30,17,33),(31,17,30),(32,17,25),(33,17,40),(34,17,43),(35,18,11),(36,19,30),(37,20,16),(38,21,11),(39,22,57),(40,23,60),(41,24,74),(42,24,65),(43,25,70),(44,26,95),(45,27,91),(46,28,76),(47,29,14),(48,30,5),(49,31,8),(50,32,1),(51,33,6),(52,33,9),(53,34,1),(54,35,69),(55,36,14),(56,37,24),(57,38,9),(58,38,8),(59,39,74),(60,39,73),(61,40,4),(62,40,9),(63,41,76),(64,42,1),(65,43,51),(66,44,2),(67,45,24),(68,46,3),(69,46,9),(70,47,5),(71,47,4),(72,47,6),(73,47,9),(74,48,9),(75,49,74),(76,49,65),(77,50,4),(78,51,70),(79,51,74),(80,52,45),(81,53,14),(82,54,6),(83,54,9),(84,55,9),(85,56,8),(86,56,9),(87,57,68),(88,58,1),(89,59,4),(90,59,9),(91,60,51),(92,61,74),(93,62,39),(94,63,74),(95,63,66),(96,64,9),(97,64,3),(98,65,60),(99,66,9),(100,66,4),(101,66,8),(102,66,6),(103,66,5),(104,67,5),(105,67,4),(106,67,6),(107,67,9),(108,68,93),(109,69,8),(110,69,9),(111,70,51),(112,71,51),(113,72,45),(114,73,24),(115,74,9),(116,74,5),(117,75,6),(118,76,60),(119,77,1),(120,78,74),(121,78,69),(122,79,2),(123,80,51),(124,81,76),(125,82,4),(126,82,5),(127,82,6),(128,82,9),(129,83,9),(130,83,4),(131,84,39),(132,85,76),(133,86,1),(134,87,4),(135,87,5),(136,87,6),(137,87,9),(138,87,8),(139,88,8),(140,89,1),(141,90,74),(142,91,60),(143,92,1),(144,93,8),(145,93,9),(146,94,4),(147,95,24),(148,96,68),(149,96,74),(150,97,24),(151,98,14),(152,99,68),(153,99,74),(154,100,24),(155,101,6),(156,102,5),(157,102,9),(158,103,76),(159,104,9),(160,104,4),(161,105,51),(162,106,5),(163,107,73),(164,107,74),(165,108,9),(166,108,4),(167,108,6),(168,108,5),(169,109,72),(170,110,115),(171,111,81),(172,112,87),(173,113,87),(174,114,111),(175,115,79),(176,115,87),(177,115,81),(178,115,88),(179,115,83),(180,115,92),(181,116,111),(182,117,87),(183,117,88),(184,117,92),(185,117,83),(186,117,81),(187,117,79),(188,118,88),(189,118,87),(190,118,92),(191,118,79),(192,118,81),(193,118,83),(194,119,81),(195,119,92),(196,119,79),(197,119,87),(198,119,88),(199,119,83),(200,120,83),(201,121,75),(202,122,81),(203,122,83),(204,122,88),(205,122,87),(206,122,92),(207,122,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,116,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(2,29,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(3,10,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(4,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(5,121,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(6,33,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(7,40,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(8,33,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(9,40,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(10,122,'<com.extend.battery.aw: void run()>',205,'a',NULL),(11,123,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(12,57,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(13,43,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(14,124,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(15,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(16,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(17,125,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(18,122,'<com.extend.battery.aw: void run()>',139,'a',NULL),(19,29,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(20,16,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(21,122,'<com.extend.battery.aw: void run()>',73,'a',NULL),(22,121,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(23,126,'<com.androiddoctor.battery.Splash$1: void run()>',58,'a',NULL),(24,65,'<com.androiddoctor.battery.UpgradeActivity: void onClick(android.view.View)>',11,'a',NULL),(25,70,'<com.androiddoctor.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(26,95,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(27,91,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(28,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',88,'s',NULL),(29,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(30,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(31,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(32,130,'<com.extend.battery.ba: void run()>',212,'a',NULL),(33,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(34,130,'<com.extend.battery.ba: void run()>',58,'a',NULL),(35,69,'<com.androiddoctor.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(36,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(37,25,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(38,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(39,73,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',9,'a',NULL),(40,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(41,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',98,'a',NULL),(42,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(43,51,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(44,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(45,25,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(46,131,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(47,132,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(48,11,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(49,65,'<com.androiddoctor.battery.UpgradeActivity: void onClick(android.view.View)>',17,'a',NULL),(50,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(51,70,'<com.androiddoctor.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(52,46,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(53,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(54,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(55,11,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(56,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(57,68,'<com.androiddoctor.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(58,130,'<com.extend.battery.ba: void run()>',212,'a',NULL),(59,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(60,137,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(61,74,'<com.androiddoctor.battery.BatteryActivity: void onCreate(android.os.Bundle)>',28,'s',NULL),(62,39,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(63,138,'<com.androiddoctor.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(64,131,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(65,60,'<com.androiddoctor.battery.Splash: void onActivityResult(int,int,android.content.Intent)>',10,'a',NULL),(66,139,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(67,140,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(68,93,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(69,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(70,137,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(71,137,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(72,46,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(73,141,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(74,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(75,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(76,126,'<com.androiddoctor.battery.Splash$1: void run()>',88,'a',NULL),(77,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(78,69,'<com.androiddoctor.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(79,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(80,51,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(81,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',185,'a',NULL),(82,132,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(83,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(84,39,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(85,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',257,'s',NULL),(86,130,'<com.extend.battery.ba: void run()>',118,'a',NULL),(87,139,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(88,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(89,130,'<com.extend.battery.ba: void run()>',118,'a',NULL),(90,74,'<com.androiddoctor.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(91,126,'<com.androiddoctor.battery.Splash$1: void run()>',100,'a',NULL),(92,130,'<com.extend.battery.ba: void run()>',58,'a',NULL),(93,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(94,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(95,25,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(96,68,'<com.androiddoctor.battery.UninstallerActivity: void uninstallApp(com.androiddoctor.battery.model.InstalledApplication)>',15,'a',NULL),(97,25,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(98,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(99,68,'<com.androiddoctor.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(100,141,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(101,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(102,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(103,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',173,'s',NULL),(104,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(105,137,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(106,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(107,142,'<com.androiddoctor.battery.BoosterActivity$2: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(108,140,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(109,143,'<com.extend.battery.Splash$1: void run()>',212,'a',NULL),(110,115,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(111,81,'<com.extend.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(112,87,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(113,87,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(114,144,'<com.zanalytics.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(115,145,'<com.extend.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(116,144,'<com.zanalytics.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(117,81,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(118,87,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(119,146,'<com.extend.battery.features.SmsMonetizationUtils$3: void onClick(android.view.View)>',9,'a',NULL),(120,83,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(121,75,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(122,88,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,19),(2,5,2),(3,10,25),(4,13,2),(5,14,1),(6,16,26),(7,20,27),(8,25,2),(9,26,28),(10,27,28),(11,28,28),(12,29,28),(13,30,28),(14,31,29),(15,32,28),(16,33,30),(17,34,28),(18,36,31),(19,39,27),(20,41,2),(21,48,2),(22,49,27),(23,53,19),(24,54,32),(25,59,2),(26,62,1),(27,69,1),(28,76,26),(29,77,25),(30,78,30),(31,80,29),(32,81,28),(33,84,2),(34,90,33),(35,91,2),(36,92,19),(37,93,28),(38,95,31),(39,96,26),(40,97,2),(41,103,1),(42,104,2),(43,105,19),(44,108,2),(45,110,28),(46,112,31),(47,114,26),(48,116,27),(49,117,25),(50,137,27),(51,138,2),(52,140,26),(53,143,2),(54,144,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,1),(2,62,1),(3,69,1),(4,103,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/FeaturesActivity'),(2,2,'com/extend/battery/FeaturesActivity'),(3,3,'com/extend/battery/TabHandler'),(4,6,'com/extend/battery/RatingActivity'),(5,7,'com/extend/battery/FeaturesActivity'),(6,8,'com/extend/battery/FeaturesActivity'),(7,9,'com/extend/battery/TabHandler'),(8,10,'com/zanalytics/sms/SmsReceiverService'),(9,11,'com/zanalytics/sms/SmsReceiverService'),(10,12,'com/extend/battery/FeaturesActivity'),(11,14,'NULL-CONSTANT'),(12,15,'com/extend/battery/FeaturesActivity'),(13,17,'com/extend/battery/TabHandler'),(14,18,'com.android.settings.InstalledAppDetails'),(15,19,'com.android.settings.InstalledAppDetails'),(16,21,'com/extend/battery/BatteryService'),(17,22,'com/extend/battery/TabHandler'),(18,23,'com/androiddoctor/battery/TabHandler'),(19,24,'com/androiddoctor/battery/TabHandler'),(20,37,'com.android.settings.InstalledAppDetails'),(21,38,'com.android.settings.InstalledAppDetails'),(22,35,'com/itframework/installer/util/InstallWorker'),(23,40,'com/itframework/installer/util/InstallWorker'),(24,42,'com/extend/battery/TabHandler'),(25,43,'com/extend/battery/FeaturesActivity'),(26,44,'com/extend/battery/TabHandler'),(27,45,'com.android.settings.InstalledAppDetails'),(28,47,'com.android.settings.InstalledAppDetails'),(29,50,'com/extend/battery/RatingActivity'),(30,46,'com/itframework/installer/util/InstallWorker'),(31,51,'com/androiddoctor/battery/FeaturesActivity'),(32,55,'com/extend/battery/TabHandler'),(33,52,'com/itframework/installer/util/InstallWorker'),(34,56,'com/zanalytics/sms/SmsReceiverService'),(35,57,'com/extend/battery/BatteryService'),(36,58,'com/extend/battery/FeaturesActivity'),(37,60,'com/extend/battery/FeaturesActivity'),(38,61,'com/androiddoctor/battery/TabHandler'),(39,62,'NULL-CONSTANT'),(40,63,'com/androiddoctor/battery/FeaturesActivity'),(41,64,'com/extend/battery/BatteryService'),(42,65,'com/itframework/installer/util/NonMarketDialogActivity'),(43,66,'com/extend/battery/FeaturesActivity'),(44,67,'com/extend/battery/FeaturesActivity'),(45,68,'com/extend/battery/FeaturesActivity'),(46,70,'com/extend/battery/TabHandler'),(47,69,'NULL-CONSTANT'),(48,71,'com/extend/battery/FeaturesActivity'),(49,72,'com/androiddoctor/battery/BatteryService'),(50,73,'com/extend/battery/FeaturesActivity'),(51,74,'com/androiddoctor/battery/FeaturesActivity'),(52,75,'com/androiddoctor/battery/TabHandler'),(53,79,'com/extend/battery/FeaturesActivity'),(54,77,'com/zanalytics/sms/SmsReceiverService'),(55,82,'com/extend/battery/BatteryService'),(56,83,'com/extend/battery/FeaturesActivity'),(57,85,'com/androiddoctor/battery/TabHandler'),(58,86,'com/extend/battery/TabHandler'),(59,87,'com/androiddoctor/battery/FeaturesActivity'),(60,88,'com/extend/battery/BatteryService'),(61,89,'com/zanalytics/sms/SmsReceiverService'),(62,94,'com/extend/battery/TabHandler'),(63,98,'com/extend/battery/TabHandler'),(64,99,'com/androiddoctor/battery/FeaturesActivity'),(65,100,'com/androiddoctor/battery/TabHandler'),(66,101,'com/extend/battery/TabHandler'),(67,102,'com/extend/battery/RatingActivity'),(68,103,'NULL-CONSTANT'),(69,106,'com/itframework/installer/util/NonMarketDialogActivity'),(70,107,'com/androiddoctor/battery/FeaturesActivity'),(71,109,'com/extend/battery/FeaturesActivity'),(72,111,'com/extend/battery/FeaturesActivity'),(73,113,'com.android.settings.InstalledAppDetails'),(74,115,'com.android.settings.InstalledAppDetails'),(75,117,'com/zanalytics/sms/SmsReceiverService'),(76,118,'com/extend/battery/TabHandler'),(77,119,'com/itframework/notification/NotificationService'),(78,120,'com/itframework/notification/NotificationService'),(79,121,'com/itframework/notification/NotificationService'),(80,122,'com/itframework/notification/NotificationService'),(81,123,'com/itframework/notification/NotificationService'),(82,124,'com/itframework/notification/NotificationService'),(83,125,'com/itframework/notification/NotificationService'),(84,126,'com/itframework/notification/NotificationService'),(85,127,'com/itframework/notification/NotificationService'),(86,128,'com/itframework/notification/NotificationService'),(87,129,'com/itframework/notification/NotificationService'),(88,130,'com/itframework/notification/NotificationService'),(89,131,'com/itframework/notification/NotificationService'),(90,132,'com/itframework/notification/NotificationService'),(91,133,'com/itframework/notification/NotificationService'),(92,134,'com/itframework/notification/NotificationService'),(93,135,'com.android.settings.InstalledAppDetails'),(94,136,'com.android.settings.InstalledAppDetails'),(95,139,'com/extend/battery/MyAccountActivity'),(96,141,'com/extend/battery/FeaturesActivity'),(97,142,'com/extend/battery/FeaturesActivity'),(98,145,'com/extend/battery/BatteryService');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,3),(3,13,4),(4,20,5),(5,25,7),(6,39,8),(7,41,9),(8,48,10),(9,49,11),(10,53,12),(11,54,13),(12,59,14),(13,84,18),(14,91,19),(15,90,20),(16,92,21),(17,97,22),(18,104,23),(19,105,24),(20,108,25),(21,116,27),(22,137,28),(23,138,29),(24,143,32),(25,144,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'cacheUrl'),(2,10,'TryCount'),(3,10,'NextMessage'),(4,10,'TryAgain'),(5,10,'StoreMessage'),(6,10,'Message'),(7,10,'Delay'),(8,10,'PhoneNumber'),(9,10,'TagEvent'),(10,11,'result'),(11,11,'abort'),(12,18,'com.android.settings.ApplicationPkgName'),(13,19,'pkg'),(14,26,'campId'),(15,26,'title'),(16,26,'text'),(17,26,'appId'),(18,26,'creativeId'),(19,26,'expiry_time'),(20,26,'link'),(21,26,'adType'),(22,26,'type'),(23,26,'imageurl'),(24,26,'header'),(25,26,'apikey'),(26,27,'campId'),(27,27,'title'),(28,27,'text'),(29,27,'appId'),(30,27,'creativeId'),(31,27,'expiry_time'),(32,27,'link'),(33,27,'adType'),(34,27,'type'),(35,27,'imageurl'),(36,27,'apikey'),(37,28,'title'),(38,28,'text'),(39,28,'appId'),(40,28,'expiry_time'),(41,28,'number'),(42,28,'adType'),(43,28,'type'),(44,28,'imageurl'),(45,28,'apikey'),(46,29,'title'),(47,29,'text'),(48,29,'appId'),(49,29,'expiry_time'),(50,29,'type'),(51,29,'imageurl'),(52,29,'apikey'),(53,30,'campId'),(54,30,'title'),(55,30,'text'),(56,30,'appId'),(57,30,'creativeId'),(58,30,'expiry_time'),(59,30,'number'),(60,30,'adType'),(61,30,'sms'),(62,30,'type'),(63,30,'imageurl'),(64,30,'apikey'),(65,31,'appId'),(66,31,'type'),(67,31,'apikey'),(68,32,'appId'),(69,32,'type'),(70,32,'apikey'),(71,33,'appId'),(72,33,'type'),(73,33,'apikey'),(74,34,'<INTENT>'),(75,34,'type'),(76,35,'downloadingProgress'),(77,35,'downloadingWait'),(78,35,'downloadingToast'),(79,35,'finishedText'),(80,36,'<INTENT>'),(81,35,'downloadingTicker'),(82,36,'type'),(83,37,'com.android.settings.ApplicationPkgName'),(84,35,'downloadingTitle'),(85,35,'filename'),(86,35,'finishedTicker'),(87,35,'forceDownload'),(88,38,'pkg'),(89,35,'finishedTitle'),(90,35,'url'),(91,35,'downloadStarting'),(92,40,'downloadingProgress'),(93,40,'downloadingWait'),(94,40,'downloadingToast'),(95,40,'callbackIntent'),(96,40,'finishedText'),(97,40,'downloadingTicker'),(98,40,'downloadingTitle'),(99,40,'filename'),(100,40,'finishedTicker'),(101,40,'forceDownload'),(102,40,'finishedTitle'),(103,40,'url'),(104,40,'downloadStarting'),(105,45,'com.android.settings.ApplicationPkgName'),(106,46,'downloadingProgress'),(107,46,'downloadingWait'),(108,46,'downloadingToast'),(109,46,'finishedText'),(110,47,'pkg'),(111,46,'downloadingTicker'),(112,46,'downloadingTitle'),(113,46,'filename'),(114,46,'finishedTicker'),(115,46,'forceDownload'),(116,46,'finishedTitle'),(117,46,'url'),(118,46,'downloadStarting'),(119,52,'downloadingProgress'),(120,52,'downloadingWait'),(121,52,'downloadingToast'),(122,52,'callbackIntent'),(123,52,'finishedText'),(124,52,'downloadingTicker'),(125,52,'downloadingTitle'),(126,55,'cacheUrl'),(127,52,'filename'),(128,52,'finishedTicker'),(129,52,'forceDownload'),(130,52,'finishedTitle'),(131,52,'url'),(132,52,'downloadStarting'),(133,56,'result'),(134,56,'abort'),(135,77,'TryCount'),(136,78,'icon'),(137,77,'NextMessage'),(138,78,'appId'),(139,77,'TryAgain'),(140,78,'testMode'),(141,77,'StoreMessage'),(142,78,'type'),(143,77,'Message'),(144,78,'apikey'),(145,77,'Delay'),(146,77,'PhoneNumber'),(147,77,'TagEvent'),(148,80,'icon'),(149,80,'appId'),(150,80,'testMode'),(151,80,'type'),(152,80,'apikey'),(153,81,'icon'),(154,81,'appId'),(155,81,'testMode'),(156,81,'type'),(157,81,'apikey'),(158,86,'cacheUrl'),(159,89,'result'),(160,89,'abort'),(161,90,'sms_body'),(162,93,'<INTENT>'),(163,93,'type'),(164,95,'<INTENT>'),(165,95,'type'),(166,110,'<INTENT>'),(167,110,'type'),(168,112,'<INTENT>'),(169,112,'type'),(170,113,'com.android.settings.ApplicationPkgName'),(171,115,'pkg'),(172,117,'TryCount'),(173,117,'NextMessage'),(174,117,'TryAgain'),(175,117,'StoreMessage'),(176,117,'Message'),(177,117,'Delay'),(178,117,'PhoneNumber'),(179,117,'TagEvent'),(180,119,'NOTIFICATION_CATEGORY'),(181,119,'ACTION'),(182,119,'NOTIFICATION_ID'),(183,120,'DO_AUTO_CANCEL'),(184,120,'NOTIFICATION_CATEGORY'),(185,120,'ACTION'),(186,120,'NOTIFICATION_ID'),(187,121,'DO_AUTO_CANCEL'),(188,121,'CLICKED_EVENT'),(189,121,'ACTION'),(190,121,'BROADCAST_INTENT'),(191,121,'NOTIFICATION_ID'),(192,122,'ACTION'),(193,122,'NOTIFICATION_ID'),(194,123,'CLICKED_EVENT'),(195,123,'ACTION'),(196,123,'BROADCAST_INTENT'),(197,123,'NOTIFICATION_ID'),(198,124,'DO_AUTO_CANCEL'),(199,124,'CLICKED_EVENT'),(200,124,'NOTIFICATION_CATEGORY'),(201,124,'ACTION'),(202,124,'BROADCAST_INTENT'),(203,124,'NOTIFICATION_ID'),(204,125,'CLICKED_EVENT'),(205,125,'ACTION'),(206,125,'NOTIFICATION_ID'),(207,126,'CLICKED_EVENT'),(208,126,'DO_AUTO_CANCEL'),(209,126,'NOTIFICATION_CATEGORY'),(210,126,'ACTION'),(211,126,'NOTIFICATION_ID'),(212,127,'DO_AUTO_CANCEL'),(213,127,'NOTIFICATION_CATEGORY'),(214,127,'ACTION'),(215,127,'BROADCAST_INTENT'),(216,127,'NOTIFICATION_ID'),(217,128,'DO_AUTO_CANCEL'),(218,128,'ACTION'),(219,128,'BROADCAST_INTENT'),(220,128,'NOTIFICATION_ID'),(221,129,'CLICKED_EVENT'),(222,129,'NOTIFICATION_CATEGORY'),(223,129,'ACTION'),(224,129,'BROADCAST_INTENT'),(225,129,'NOTIFICATION_ID'),(226,130,'ACTION'),(227,130,'BROADCAST_INTENT'),(228,130,'NOTIFICATION_ID'),(229,131,'DO_AUTO_CANCEL'),(230,131,'CLICKED_EVENT'),(231,131,'ACTION'),(232,131,'NOTIFICATION_ID'),(233,132,'NOTIFICATION_CATEGORY'),(234,132,'ACTION'),(235,132,'BROADCAST_INTENT'),(236,132,'NOTIFICATION_ID'),(237,133,'DO_AUTO_CANCEL'),(238,133,'ACTION'),(239,133,'NOTIFICATION_ID'),(240,134,'CLICKED_EVENT'),(241,134,'NOTIFICATION_CATEGORY'),(242,134,'ACTION'),(243,134,'NOTIFICATION_ID'),(244,135,'com.android.settings.ApplicationPkgName'),(245,136,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,3),(9,9,3),(10,10,4),(11,11,4),(12,12,5),(13,13,5),(14,14,6),(15,15,6),(16,16,7),(17,17,7),(18,18,8),(19,19,8),(20,20,5),(21,21,7),(22,22,8),(23,23,8),(24,24,7),(25,25,6),(26,26,1),(27,28,9),(28,27,9),(29,29,7),(30,30,8),(31,31,9),(32,32,1),(33,33,10),(34,34,2),(35,35,6),(36,36,9),(37,37,11),(38,38,12),(39,39,5),(40,40,6),(41,41,7),(42,42,8),(43,43,13),(44,44,14),(45,45,15),(46,46,16),(47,47,17),(48,48,18),(49,49,24),(50,49,23),(51,49,22),(52,49,21),(53,49,20),(54,50,22),(55,50,21),(56,50,24),(57,50,23),(58,50,20),(59,51,22),(60,51,23),(61,51,24),(62,51,20),(63,51,21),(64,52,23),(65,52,24),(66,52,21),(67,52,22),(68,52,20),(69,53,20),(70,53,21),(71,53,22),(72,53,23),(73,53,24),(74,54,23),(75,54,24),(76,54,21),(77,54,22),(78,54,20),(79,55,21),(80,56,21),(81,57,21),(82,58,21),(83,59,21),(84,60,21),(85,61,21),(86,62,21),(87,63,21),(88,64,21),(89,65,21),(90,66,21),(91,67,21),(92,68,21),(93,69,21),(94,70,21),(95,71,21),(96,72,21),(97,73,24),(98,73,23),(99,73,22),(100,73,20),(101,74,22),(102,74,24),(103,74,23),(104,74,20),(105,75,24),(106,75,23),(107,75,22),(108,75,20),(109,76,22),(110,76,20),(111,76,23),(112,76,24),(113,77,20),(114,77,22),(115,77,23),(116,77,24),(117,78,23),(118,78,24),(119,78,22),(120,78,20),(121,79,22),(122,79,23),(123,79,24),(124,79,20),(125,80,22),(126,80,20),(127,80,24),(128,80,23),(129,81,21),(130,82,21),(131,83,21),(132,84,21),(133,85,21),(134,86,21),(135,87,21),(136,88,21),(137,89,21),(138,90,21),(139,91,21),(140,92,21),(141,93,21),(142,94,21),(143,95,21),(144,96,21),(145,97,21),(146,98,21),(147,99,21),(148,100,21),(149,101,21),(150,102,21),(151,103,21),(152,104,21),(153,105,21),(154,106,21),(155,107,21),(156,108,21),(157,109,21),(158,110,21),(159,111,21),(160,112,21),(161,113,21),(162,114,21),(163,115,21),(164,116,21),(165,117,21),(166,118,21),(167,119,21),(168,120,21),(169,121,21),(170,122,21),(171,123,21),(172,124,21),(173,125,21),(174,126,21),(175,127,21),(176,128,21),(177,129,21),(178,130,21),(179,131,21),(180,132,21),(181,133,21),(182,134,21),(183,135,21),(184,136,21),(185,137,21),(186,138,21),(187,139,21),(188,140,21),(189,141,21),(190,142,21),(191,143,21),(192,144,21),(193,145,24),(194,145,21),(195,145,20),(196,145,23),(197,145,22),(198,146,20),(199,146,23),(200,146,24),(201,146,21),(202,146,22),(203,147,20),(204,147,21),(205,147,22),(206,147,23),(207,147,24),(208,148,23),(209,148,24),(210,148,21),(211,148,22),(212,148,20),(213,149,24),(214,149,20),(215,149,21),(216,149,22),(217,149,23),(218,150,20),(219,150,22),(220,150,21),(221,150,24),(222,150,23),(223,151,20),(224,151,21),(225,151,24),(226,151,23),(227,151,22),(228,152,21),(229,152,22),(230,152,20),(231,152,24),(232,152,23),(233,153,20),(234,153,21),(235,153,22),(236,153,23),(237,153,24),(238,154,20),(239,154,23),(240,154,24),(241,154,21),(242,154,22),(243,155,23),(244,155,22),(245,155,24),(246,155,21),(247,155,20),(248,156,24),(249,156,23),(250,156,22),(251,156,21),(252,156,20),(253,157,21),(254,157,20),(255,157,23),(256,157,22),(257,157,24),(258,158,21),(259,159,24),(260,159,22),(261,159,23),(262,159,20),(263,159,21),(264,160,21),(265,161,24),(266,161,22),(267,161,23),(268,161,20),(269,161,21),(270,162,21),(271,163,24),(272,163,23),(273,163,22),(274,163,21),(275,163,20),(276,164,21),(277,165,21),(278,166,21),(279,167,21),(280,168,21),(281,169,24),(282,169,21),(283,169,20),(284,169,23),(285,169,22),(286,170,24),(287,170,23),(288,170,22),(289,170,21),(290,170,20),(291,171,20),(292,171,21),(293,171,22),(294,171,23),(295,171,24),(296,172,21),(297,172,22),(298,172,20),(299,172,23),(300,172,24),(301,173,24),(302,173,20),(303,173,21),(304,173,22),(305,173,23),(306,174,23),(307,174,24),(308,174,21),(309,174,22),(310,174,20),(311,175,21),(312,175,20),(313,175,24),(314,175,23),(315,175,22),(316,176,20),(317,176,22),(318,176,21),(319,176,24),(320,176,23),(321,177,23),(322,177,22),(323,177,21),(324,177,20),(325,177,24),(326,178,22),(327,178,21),(328,178,24),(329,178,23),(330,178,20),(331,179,20),(332,179,21),(333,179,24),(334,179,22),(335,179,23),(336,180,20),(337,180,21),(338,180,22),(339,180,23),(340,180,24),(341,181,24),(342,181,22),(343,181,23),(344,181,20),(345,181,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,3),(7,6,2),(8,7,2),(9,7,3),(10,26,1),(11,32,1),(12,34,2),(13,34,3),(14,35,4);
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
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,25,'application','vnd.android.package-archive'),(3,48,'application','vnd.android.package-archive'),(4,84,'application','vnd.android.package-archive'),(5,104,'application','vnd.android.package-archive'),(6,108,'application','vnd.android.package-archive'),(7,144,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'com.extend.battery'),(3,3,'com.extend.battery'),(4,6,'com.extend.battery'),(5,7,'com.extend.battery'),(6,8,'com.extend.battery'),(7,9,'com.extend.battery'),(8,10,'com.extend.battery'),(9,11,'com.extend.battery'),(10,12,'com.extend.battery'),(11,14,'NULL-CONSTANT'),(12,15,'com.extend.battery'),(13,17,'com.extend.battery'),(14,18,'com.android.settings'),(15,19,'com.android.settings'),(16,21,'com.extend.battery'),(17,22,'com.extend.battery'),(18,23,'com.androiddoctor.battery'),(19,24,'com.androiddoctor.battery'),(20,37,'com.android.settings'),(21,38,'com.android.settings'),(22,35,'com.extend.battery'),(23,40,'com.extend.battery'),(24,42,'com.extend.battery'),(25,43,'com.extend.battery'),(26,44,'com.extend.battery'),(27,45,'com.android.settings'),(28,47,'com.android.settings'),(29,50,'com.extend.battery'),(30,46,'com.extend.battery'),(31,51,'com.androiddoctor.battery'),(32,55,'com.extend.battery'),(33,52,'com.extend.battery'),(34,56,'com.extend.battery'),(35,57,'com.extend.battery'),(36,58,'com.extend.battery'),(37,60,'com.extend.battery'),(38,61,'com.androiddoctor.battery'),(39,62,'NULL-CONSTANT'),(40,63,'com.androiddoctor.battery'),(41,64,'com.extend.battery'),(42,65,'com.extend.battery'),(43,66,'com.extend.battery'),(44,67,'com.extend.battery'),(45,68,'com.extend.battery'),(46,70,'com.extend.battery'),(47,71,'com.extend.battery'),(48,69,'NULL-CONSTANT'),(49,72,'com.androiddoctor.battery'),(50,73,'com.extend.battery'),(51,74,'com.androiddoctor.battery'),(52,75,'com.androiddoctor.battery'),(53,79,'com.extend.battery'),(54,77,'com.extend.battery'),(55,82,'com.extend.battery'),(56,83,'com.extend.battery'),(57,85,'com.androiddoctor.battery'),(58,86,'com.extend.battery'),(59,87,'com.androiddoctor.battery'),(60,88,'com.extend.battery'),(61,89,'com.extend.battery'),(62,94,'com.extend.battery'),(63,98,'com.extend.battery'),(64,99,'com.androiddoctor.battery'),(65,100,'com.androiddoctor.battery'),(66,101,'com.extend.battery'),(67,102,'com.extend.battery'),(68,103,'NULL-CONSTANT'),(69,106,'com.extend.battery'),(70,107,'com.androiddoctor.battery'),(71,109,'com.extend.battery'),(72,111,'com.extend.battery'),(73,113,'com.android.settings'),(74,115,'com.android.settings'),(75,117,'com.extend.battery'),(76,118,'com.extend.battery'),(77,119,'com.extend.battery'),(78,120,'com.extend.battery'),(79,121,'com.extend.battery'),(80,122,'com.extend.battery'),(81,123,'com.extend.battery'),(82,124,'com.extend.battery'),(83,125,'com.extend.battery'),(84,126,'com.extend.battery'),(85,127,'com.extend.battery'),(86,128,'com.extend.battery'),(87,129,'com.extend.battery'),(88,130,'com.extend.battery'),(89,131,'com.extend.battery'),(90,132,'com.extend.battery'),(91,133,'com.extend.battery'),(92,134,'com.extend.battery'),(93,135,'com.android.settings'),(94,136,'com.android.settings'),(95,139,'com.extend.battery'),(96,141,'com.extend.battery'),(97,142,'com.extend.battery'),(98,145,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,10,0),(4,11,0),(5,13,0),(6,14,0),(7,14,0),(8,29,0),(9,29,0),(10,29,0),(11,29,0),(12,39,0),(13,39,0),(14,45,0),(15,45,0),(16,51,0),(17,51,0),(18,51,0),(19,51,0),(20,56,0),(21,57,0),(22,58,0),(23,57,0),(24,58,0),(25,59,0),(26,60,0),(27,61,0),(28,62,0),(29,63,0),(30,63,0),(31,67,0),(32,72,0),(33,86,0),(34,96,0),(35,97,0),(36,100,0),(37,107,0),(38,107,0),(39,108,0),(40,109,0),(41,111,0),(42,111,0),(43,112,0),(44,113,0),(45,114,0),(46,115,0),(47,115,0),(48,115,0),(49,116,0),(50,117,0),(51,61,0),(52,118,0),(53,57,0),(54,119,0),(55,116,0),(56,117,0),(57,61,0),(58,118,0),(59,57,0),(60,119,0),(61,116,0),(62,117,0),(63,61,0),(64,118,0),(65,57,0),(66,119,0),(67,116,0),(68,117,0),(69,61,0),(70,118,0),(71,57,0),(72,119,0),(73,120,0),(74,121,0),(75,122,0),(76,100,0),(77,123,0),(78,124,0),(79,97,0),(80,125,0),(81,120,0),(82,121,0),(83,122,0),(84,100,0),(85,123,0),(86,124,0),(87,97,0),(88,125,0),(89,126,0),(90,29,0),(91,127,0),(92,128,0),(93,120,0),(94,51,0),(95,121,0),(96,39,0),(97,122,0),(98,100,0),(99,129,0),(100,123,0),(101,45,0),(102,124,0),(103,97,0),(104,125,0),(105,126,0),(106,29,0),(107,127,0),(108,128,0),(109,51,0),(110,39,0),(111,129,0),(112,126,0),(113,45,0),(114,29,0),(115,127,0),(116,128,0),(117,51,0),(118,39,0),(119,129,0),(120,45,0),(121,126,0),(122,29,0),(123,127,0),(124,120,0),(125,128,0),(126,121,0),(127,51,0),(128,122,0),(129,39,0),(130,100,0),(131,129,0),(132,123,0),(133,45,0),(134,124,0),(135,126,0),(136,97,0),(137,29,0),(138,125,0),(139,127,0),(140,128,0),(141,51,0),(142,39,0),(143,129,0),(144,45,0),(145,126,0),(146,29,0),(147,127,0),(148,128,0),(149,51,0),(150,39,0),(151,129,0),(152,45,0),(153,126,0),(154,29,0),(155,127,0),(156,128,0),(157,51,0),(158,126,0),(159,39,0),(160,29,0),(161,129,0),(162,127,0),(163,45,0),(164,128,0),(165,51,0),(166,39,0),(167,129,0),(168,45,0),(169,130,0),(170,114,0),(171,107,0),(172,131,0),(173,112,0),(174,113,0),(175,132,0),(176,111,0),(177,115,0),(178,133,0),(179,108,0),(180,134,0),(181,109,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,6,1,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,0,0),(13,14,1,0),(14,15,0,0),(15,16,0,0),(16,17,1,0),(17,18,0,0),(18,19,0,0),(19,19,0,0),(20,19,1,0),(21,20,0,0),(22,21,0,0),(23,23,0,0),(24,24,0,0),(25,25,1,0),(26,26,1,0),(27,26,1,0),(28,26,1,0),(29,26,1,0),(30,26,1,0),(31,27,1,0),(32,27,1,0),(33,27,1,0),(34,28,1,0),(35,29,0,0),(36,28,1,0),(37,30,0,0),(38,30,0,0),(39,30,1,0),(40,29,0,0),(41,31,1,0),(42,32,0,0),(43,33,0,0),(44,34,0,0),(45,35,0,0),(46,36,0,0),(47,35,0,0),(48,37,1,0),(49,35,1,0),(50,38,0,0),(51,39,0,0),(52,36,0,0),(53,40,1,0),(54,41,1,0),(55,42,0,0),(56,43,0,0),(57,44,0,0),(58,46,0,0),(59,47,1,0),(60,48,0,0),(61,49,0,0),(62,50,0,0),(63,51,0,0),(64,52,0,0),(65,53,0,0),(66,54,0,0),(67,55,0,0),(68,56,0,0),(69,57,0,0),(70,58,0,0),(71,59,0,0),(72,61,0,0),(73,64,0,0),(74,63,0,0),(75,65,0,0),(76,66,1,0),(77,67,0,0),(78,68,1,0),(79,69,0,0),(80,68,1,0),(81,68,1,0),(82,72,0,0),(83,74,0,0),(84,75,1,0),(85,76,0,0),(86,77,0,0),(87,78,0,0),(88,79,0,0),(89,80,0,0),(90,81,1,0),(91,82,1,0),(92,83,1,0),(93,85,1,0),(94,86,0,0),(95,85,1,0),(96,87,1,0),(97,88,1,0),(98,89,0,0),(99,90,0,0),(100,91,0,0),(101,92,0,0),(102,93,0,0),(103,94,0,0),(104,95,1,0),(105,96,1,0),(106,98,0,0),(107,99,0,0),(108,101,1,0),(109,102,0,0),(110,103,1,0),(111,104,0,0),(112,103,1,0),(113,106,0,0),(114,107,1,0),(115,106,0,0),(116,106,1,0),(117,108,0,0),(118,109,0,0),(119,110,0,0),(120,110,0,0),(121,110,0,0),(122,110,0,0),(123,110,0,0),(124,110,0,0),(125,110,0,0),(126,110,0,0),(127,110,0,0),(128,110,0,0),(129,110,0,0),(130,110,0,0),(131,110,0,0),(132,110,0,0),(133,110,0,0),(134,110,0,0),(135,111,0,0),(136,111,0,0),(137,111,1,0),(138,112,1,0),(139,113,0,0),(140,115,1,0),(141,117,0,0),(142,118,0,0),(143,119,1,0),(144,120,1,0),(145,121,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,75,64,2,NULL),(2,53,60,2,NULL),(3,92,60,2,NULL),(4,39,60,2,NULL),(5,116,60,2,NULL),(6,4,60,2,NULL),(7,20,60,2,NULL),(8,105,60,2,NULL),(9,49,60,2,NULL),(10,34,60,2,NULL),(11,36,60,2,NULL),(12,54,60,2,NULL),(13,90,60,2,NULL),(14,93,60,2,NULL),(15,95,60,2,NULL),(16,110,60,2,NULL),(17,112,60,2,NULL),(18,31,60,2,NULL),(19,32,60,2,NULL),(20,33,60,2,NULL),(21,78,60,2,NULL),(22,80,60,2,NULL),(23,81,60,2,NULL),(24,26,60,2,NULL),(25,27,60,2,NULL),(26,28,60,2,NULL),(27,29,60,2,NULL),(28,30,60,2,NULL),(29,137,60,2,NULL),(30,24,64,2,NULL),(31,61,64,2,NULL),(32,107,71,2,NULL),(33,105,1,2,NULL),(34,105,14,2,NULL),(35,105,29,2,NULL),(36,105,39,2,NULL),(37,105,45,2,NULL),(38,105,51,2,NULL),(39,105,126,2,NULL),(40,105,127,2,NULL),(41,105,128,2,NULL),(42,105,129,2,NULL),(43,105,10,2,NULL),(44,105,56,2,NULL),(45,105,59,2,NULL),(46,105,63,2,NULL),(47,105,67,2,NULL),(48,105,11,2,NULL),(49,105,57,2,NULL),(50,105,61,2,NULL),(51,105,116,2,NULL),(52,105,117,2,NULL),(53,105,118,2,NULL),(54,105,119,2,NULL),(55,105,13,2,NULL),(56,105,58,2,NULL),(57,105,62,2,NULL),(58,105,86,2,NULL),(59,105,121,2,NULL),(60,105,125,2,NULL),(61,105,122,2,NULL),(62,105,97,2,NULL),(63,105,100,2,NULL),(64,105,120,2,NULL),(65,105,123,2,NULL),(66,105,124,2,NULL),(67,105,72,2,NULL),(68,105,96,2,NULL),(69,105,107,2,NULL),(70,105,108,2,NULL),(71,105,109,2,NULL),(72,105,133,2,NULL),(73,105,111,2,NULL),(74,105,112,2,NULL),(75,105,113,2,NULL),(76,105,114,2,NULL),(77,105,115,2,NULL),(78,105,130,2,NULL),(79,105,131,2,NULL),(80,105,132,2,NULL),(81,105,134,2,NULL),(82,87,71,2,NULL),(83,49,1,2,NULL),(84,49,14,2,NULL),(85,49,29,2,NULL),(86,49,39,2,NULL),(87,49,45,2,NULL),(88,49,51,2,NULL),(89,49,126,2,NULL),(90,49,127,2,NULL),(91,49,128,2,NULL),(92,49,129,2,NULL),(93,49,10,2,NULL),(94,49,56,2,NULL),(95,49,59,2,NULL),(96,49,63,2,NULL),(97,49,67,2,NULL),(98,49,11,2,NULL),(99,49,57,2,NULL),(100,49,61,2,NULL),(101,49,116,2,NULL),(102,49,117,2,NULL),(103,49,118,2,NULL),(104,49,119,2,NULL),(105,49,13,2,NULL),(106,49,58,2,NULL),(107,49,62,2,NULL),(108,49,86,2,NULL),(109,49,121,2,NULL),(110,49,125,2,NULL),(111,49,122,2,NULL),(112,49,97,2,NULL),(113,49,100,2,NULL),(114,49,120,2,NULL),(115,49,123,2,NULL),(116,49,124,2,NULL),(117,49,72,2,NULL),(118,49,96,2,NULL),(119,49,107,2,NULL),(120,49,108,2,NULL),(121,49,109,2,NULL),(122,49,133,2,NULL),(123,49,111,2,NULL),(124,49,112,2,NULL),(125,49,113,2,NULL),(126,49,114,2,NULL),(127,49,115,2,NULL),(128,49,130,2,NULL),(129,49,131,2,NULL),(130,49,132,2,NULL),(131,49,134,2,NULL),(132,63,71,2,NULL),(133,51,71,2,NULL),(134,72,84,2,NULL),(135,99,71,2,NULL),(136,34,1,2,NULL),(137,36,1,2,NULL),(138,54,1,2,NULL),(139,90,1,2,NULL),(140,93,1,2,NULL),(141,95,1,2,NULL),(142,110,1,2,NULL),(143,112,1,2,NULL),(144,34,14,2,NULL),(145,36,14,2,NULL),(146,54,14,2,NULL),(147,90,14,2,NULL),(148,93,14,2,NULL),(149,95,14,2,NULL),(150,110,14,2,NULL),(151,112,14,2,NULL),(152,34,29,2,NULL),(153,36,29,2,NULL),(154,54,29,2,NULL),(155,90,29,2,NULL),(156,93,29,2,NULL),(157,95,29,2,NULL),(158,110,29,2,NULL),(159,112,29,2,NULL),(160,34,39,2,NULL),(161,36,39,2,NULL),(162,54,39,2,NULL),(163,90,39,2,NULL),(164,93,39,2,NULL),(165,95,39,2,NULL),(166,110,39,2,NULL),(167,112,39,2,NULL),(168,34,45,2,NULL),(169,36,45,2,NULL),(170,54,45,2,NULL),(171,90,45,2,NULL),(172,93,45,2,NULL),(173,95,45,2,NULL),(174,110,45,2,NULL),(175,112,45,2,NULL),(176,34,51,2,NULL),(177,36,51,2,NULL),(178,54,51,2,NULL),(179,90,51,2,NULL),(180,93,51,2,NULL),(181,95,51,2,NULL),(182,110,51,2,NULL),(183,112,51,2,NULL),(184,34,126,2,NULL),(185,36,126,2,NULL),(186,54,126,2,NULL),(187,90,126,2,NULL),(188,93,126,2,NULL),(189,95,126,2,NULL),(190,110,126,2,NULL),(191,112,126,2,NULL),(192,34,127,2,NULL),(193,36,127,2,NULL),(194,54,127,2,NULL),(195,90,127,2,NULL),(196,93,127,2,NULL),(197,95,127,2,NULL),(198,110,127,2,NULL),(199,112,127,2,NULL),(200,34,128,2,NULL),(201,36,128,2,NULL),(202,54,128,2,NULL),(203,90,128,2,NULL),(204,93,128,2,NULL),(205,95,128,2,NULL),(206,110,128,2,NULL),(207,112,128,2,NULL),(208,34,129,2,NULL),(209,36,129,2,NULL),(210,54,129,2,NULL),(211,90,129,2,NULL),(212,93,129,2,NULL),(213,95,129,2,NULL),(214,110,129,2,NULL),(215,112,129,2,NULL),(216,34,10,2,NULL),(217,36,10,2,NULL),(218,54,10,2,NULL),(219,90,10,2,NULL),(220,93,10,2,NULL),(221,95,10,2,NULL),(222,110,10,2,NULL),(223,112,10,2,NULL),(224,34,56,2,NULL),(225,36,56,2,NULL),(226,54,56,2,NULL),(227,90,56,2,NULL),(228,93,56,2,NULL),(229,95,56,2,NULL),(230,110,56,2,NULL),(231,112,56,2,NULL),(232,34,59,2,NULL),(233,55,2,2,NULL),(234,36,59,2,NULL),(235,54,59,2,NULL),(236,55,15,2,NULL),(237,90,59,2,NULL),(238,55,16,2,NULL),(239,93,59,2,NULL),(240,55,17,2,NULL),(241,95,59,2,NULL),(242,55,75,2,NULL),(243,110,59,2,NULL),(244,86,2,2,NULL),(245,112,59,2,NULL),(246,86,15,2,NULL),(247,34,63,2,NULL),(248,86,16,2,NULL),(249,36,63,2,NULL),(250,86,17,2,NULL),(251,54,63,2,NULL),(252,86,75,2,NULL),(253,90,63,2,NULL),(254,53,1,2,NULL),(255,93,63,2,NULL),(256,92,1,2,NULL),(257,95,63,2,NULL),(258,39,1,2,NULL),(259,116,1,2,NULL),(260,110,63,2,NULL),(261,4,1,2,NULL),(262,20,1,2,NULL),(263,112,63,2,NULL),(264,31,1,2,NULL),(265,32,1,2,NULL),(266,34,67,2,NULL),(267,33,1,2,NULL),(268,78,1,2,NULL),(269,80,1,2,NULL),(270,36,67,2,NULL),(271,54,67,2,NULL),(272,81,1,2,NULL),(273,26,1,2,NULL),(274,27,1,2,NULL),(275,90,67,2,NULL),(276,28,1,2,NULL),(277,29,1,2,NULL),(278,93,67,2,NULL),(279,30,1,2,NULL),(280,95,67,2,NULL),(281,137,1,2,NULL),(282,57,21,2,NULL),(283,57,49,2,NULL),(284,110,67,2,NULL),(285,57,50,2,NULL),(286,57,52,2,NULL),(287,112,67,2,NULL),(288,57,99,2,NULL),(289,88,21,2,NULL),(290,34,11,2,NULL),(291,88,49,2,NULL),(292,88,50,2,NULL),(293,36,11,2,NULL),(294,88,52,2,NULL),(295,88,99,2,NULL),(296,54,11,2,NULL),(297,71,7,2,NULL),(298,71,35,2,NULL),(299,90,11,2,NULL),(300,71,36,2,NULL),(301,71,37,2,NULL),(302,93,11,2,NULL),(303,71,85,2,NULL),(304,111,7,2,NULL),(305,95,11,2,NULL),(306,111,7,2,NULL),(307,111,35,2,NULL),(308,111,36,2,NULL),(309,110,11,2,NULL),(310,111,37,2,NULL),(311,111,85,2,NULL),(312,53,14,2,NULL),(313,112,11,2,NULL),(314,92,14,2,NULL),(315,92,14,2,NULL),(316,53,29,2,NULL),(317,34,57,2,NULL),(318,92,29,2,NULL),(319,92,29,2,NULL),(320,53,39,2,NULL),(321,36,57,2,NULL),(322,92,39,2,NULL),(323,54,57,2,NULL),(324,53,45,2,NULL),(325,92,45,2,NULL),(326,53,51,2,NULL),(327,90,57,2,NULL),(328,92,51,2,NULL),(329,53,126,2,NULL),(330,92,126,2,NULL),(331,93,57,2,NULL),(332,95,57,2,NULL),(333,53,127,2,NULL),(334,92,127,2,NULL),(335,110,57,2,NULL),(336,53,128,2,NULL),(337,92,128,2,NULL),(338,112,57,2,NULL),(339,53,129,2,NULL),(340,92,129,2,NULL),(341,53,10,2,NULL),(342,34,61,2,NULL),(343,92,10,2,NULL),(344,53,56,2,NULL),(345,36,61,2,NULL),(346,92,56,2,NULL),(347,53,59,2,NULL),(348,54,61,2,NULL),(349,92,59,2,NULL),(350,53,63,2,NULL),(351,92,63,2,NULL),(352,90,61,2,NULL),(353,53,67,2,NULL),(354,92,67,2,NULL),(355,93,61,2,NULL),(356,53,11,2,NULL),(357,92,11,2,NULL),(358,53,57,2,NULL),(359,95,61,2,NULL),(360,92,57,2,NULL),(361,53,61,2,NULL),(362,92,61,2,NULL),(363,110,61,2,NULL),(364,53,116,2,NULL),(365,92,116,2,NULL),(366,53,117,2,NULL),(367,112,61,2,NULL),(368,92,117,2,NULL),(369,53,118,2,NULL),(370,92,118,2,NULL),(371,34,116,2,NULL),(372,53,119,2,NULL),(373,92,119,2,NULL),(374,53,13,2,NULL),(375,36,116,2,NULL),(376,92,13,2,NULL),(377,92,13,2,NULL),(378,53,58,2,NULL),(379,54,116,2,NULL),(380,92,58,2,NULL),(381,53,62,2,NULL),(382,92,62,2,NULL),(383,90,116,2,NULL),(384,53,86,2,NULL),(385,53,86,2,NULL),(386,92,86,2,NULL),(387,93,116,2,NULL),(388,53,121,2,NULL),(389,53,121,2,NULL),(390,92,121,2,NULL),(391,95,116,2,NULL),(392,53,125,2,NULL),(393,53,125,2,NULL),(394,92,125,2,NULL),(395,110,116,2,NULL),(396,53,122,2,NULL),(397,92,122,2,NULL),(398,53,97,2,NULL),(399,112,116,2,NULL),(400,92,97,2,NULL),(401,92,97,2,NULL),(402,53,100,2,NULL),(403,34,117,2,NULL),(404,92,100,2,NULL),(405,92,100,2,NULL),(406,53,120,2,NULL),(407,36,117,2,NULL),(408,92,120,2,NULL),(409,92,120,2,NULL),(410,53,123,2,NULL),(411,54,117,2,NULL),(412,92,123,2,NULL),(413,53,124,2,NULL),(414,92,124,2,NULL),(415,90,117,2,NULL),(416,53,72,2,NULL),(417,92,72,2,NULL),(418,53,96,2,NULL),(419,93,117,2,NULL),(420,92,96,2,NULL),(421,53,107,2,NULL),(422,92,107,2,NULL),(423,95,117,2,NULL),(424,53,108,2,NULL),(425,92,108,2,NULL),(426,53,109,2,NULL),(427,110,117,2,NULL),(428,92,109,2,NULL),(429,92,109,2,NULL),(430,53,133,2,NULL),(431,112,117,2,NULL),(432,92,133,2,NULL),(433,53,111,2,NULL),(434,92,111,2,NULL),(435,34,118,2,NULL),(436,53,112,2,NULL),(437,53,112,2,NULL),(438,92,112,2,NULL),(439,36,118,2,NULL),(440,53,113,2,NULL),(441,53,113,2,NULL),(442,92,113,2,NULL),(443,54,118,2,NULL),(444,53,114,2,NULL),(445,53,114,2,NULL),(446,92,114,2,NULL),(447,90,118,2,NULL),(448,53,115,2,NULL),(449,92,115,2,NULL),(450,53,130,2,NULL),(451,93,118,2,NULL),(452,92,130,2,NULL),(453,92,130,2,NULL),(454,53,131,2,NULL),(455,92,131,2,NULL),(456,95,118,2,NULL),(457,53,132,2,NULL),(458,92,132,2,NULL),(459,110,118,2,NULL),(460,53,134,2,NULL),(461,53,134,2,NULL),(462,92,134,2,NULL),(463,112,118,2,NULL),(464,83,7,2,NULL),(465,83,7,2,NULL),(466,83,35,2,NULL),(467,83,35,2,NULL),(468,83,35,2,NULL),(469,34,119,2,NULL),(470,83,36,2,NULL),(471,36,119,2,NULL),(472,83,37,2,NULL),(473,83,37,2,NULL),(474,83,85,2,NULL),(475,83,85,2,NULL),(476,83,85,2,NULL),(477,54,119,2,NULL),(478,109,7,2,NULL),(479,109,35,2,NULL),(480,90,119,2,NULL),(481,109,35,2,NULL),(482,109,36,2,NULL),(483,93,119,2,NULL),(484,109,37,2,NULL),(485,109,37,2,NULL),(486,109,85,2,NULL),(487,95,119,2,NULL),(488,39,14,2,NULL),(489,39,14,2,NULL),(490,39,14,2,NULL),(491,110,119,2,NULL),(492,116,14,2,NULL),(493,116,14,2,NULL),(494,116,14,2,NULL),(495,112,119,2,NULL),(496,39,29,2,NULL),(497,39,29,2,NULL),(498,116,29,2,NULL),(499,34,13,2,NULL),(500,39,39,2,NULL),(501,116,39,2,NULL),(502,39,45,2,NULL),(503,36,13,2,NULL),(504,116,45,2,NULL),(505,54,13,2,NULL),(506,39,51,2,NULL),(507,116,51,2,NULL),(508,39,126,2,NULL),(509,90,13,2,NULL),(510,116,126,2,NULL),(511,39,127,2,NULL),(512,116,127,2,NULL),(513,93,13,2,NULL),(514,39,128,2,NULL),(515,116,128,2,NULL),(516,39,129,2,NULL),(517,95,13,2,NULL),(518,116,129,2,NULL),(519,39,10,2,NULL),(520,116,10,2,NULL),(521,110,13,2,NULL),(522,39,56,2,NULL),(523,116,56,2,NULL),(524,39,59,2,NULL),(525,112,13,2,NULL),(526,116,59,2,NULL),(527,39,63,2,NULL),(528,39,63,2,NULL),(529,34,58,2,NULL),(530,116,63,2,NULL),(531,39,67,2,NULL),(532,39,67,2,NULL),(533,36,58,2,NULL),(534,116,67,2,NULL),(535,39,11,2,NULL),(536,39,11,2,NULL),(537,54,58,2,NULL),(538,116,11,2,NULL),(539,39,57,2,NULL),(540,39,57,2,NULL),(541,90,58,2,NULL),(542,116,57,2,NULL),(543,39,61,2,NULL),(544,39,61,2,NULL),(545,93,58,2,NULL),(546,116,61,2,NULL),(547,39,116,2,NULL),(548,39,116,2,NULL),(549,95,58,2,NULL),(550,116,116,2,NULL),(551,39,117,2,NULL),(552,39,117,2,NULL),(553,110,58,2,NULL),(554,116,117,2,NULL),(555,39,118,2,NULL),(556,39,118,2,NULL),(557,112,58,2,NULL),(558,116,118,2,NULL),(559,39,119,2,NULL),(560,39,119,2,NULL),(561,34,62,2,NULL),(562,116,119,2,NULL),(563,39,13,2,NULL),(564,39,13,2,NULL),(565,36,62,2,NULL),(566,116,13,2,NULL),(567,39,58,2,NULL),(568,39,58,2,NULL),(569,54,62,2,NULL),(570,116,58,2,NULL),(571,39,62,2,NULL),(572,39,62,2,NULL),(573,90,62,2,NULL),(574,116,62,2,NULL),(575,39,86,2,NULL),(576,39,86,2,NULL),(577,93,62,2,NULL),(578,116,86,2,NULL),(579,39,121,2,NULL),(580,39,121,2,NULL),(581,95,62,2,NULL),(582,116,121,2,NULL),(583,39,125,2,NULL),(584,39,125,2,NULL),(585,110,62,2,NULL),(586,116,125,2,NULL),(587,39,122,2,NULL),(588,39,122,2,NULL),(589,112,62,2,NULL),(590,116,122,2,NULL),(591,39,97,2,NULL),(592,39,97,2,NULL),(593,116,97,2,NULL),(594,34,86,2,NULL),(595,39,100,2,NULL),(596,39,100,2,NULL),(597,36,86,2,NULL),(598,116,100,2,NULL),(599,39,120,2,NULL),(600,39,120,2,NULL),(601,54,86,2,NULL),(602,116,120,2,NULL),(603,39,123,2,NULL),(604,39,123,2,NULL),(605,90,86,2,NULL),(606,116,123,2,NULL),(607,39,124,2,NULL),(608,39,124,2,NULL),(609,93,86,2,NULL),(610,116,124,2,NULL),(611,39,72,2,NULL),(612,39,72,2,NULL),(613,95,86,2,NULL),(614,116,72,2,NULL),(615,39,96,2,NULL),(616,39,96,2,NULL),(617,110,86,2,NULL),(618,116,96,2,NULL),(619,39,107,2,NULL),(620,39,107,2,NULL),(621,112,86,2,NULL),(622,116,107,2,NULL),(623,39,108,2,NULL),(624,39,108,2,NULL),(625,34,121,2,NULL),(626,116,108,2,NULL),(627,39,109,2,NULL),(628,39,109,2,NULL),(629,36,121,2,NULL),(630,116,109,2,NULL),(631,39,133,2,NULL),(632,39,133,2,NULL),(633,54,121,2,NULL),(634,116,133,2,NULL),(635,39,111,2,NULL),(636,39,111,2,NULL),(637,90,121,2,NULL),(638,116,111,2,NULL),(639,39,112,2,NULL),(640,39,112,2,NULL),(641,93,121,2,NULL),(642,116,112,2,NULL),(643,39,113,2,NULL),(644,39,113,2,NULL),(645,95,121,2,NULL),(646,116,113,2,NULL),(647,39,114,2,NULL),(648,39,114,2,NULL),(649,110,121,2,NULL),(650,116,114,2,NULL),(651,39,115,2,NULL),(652,39,115,2,NULL),(653,112,121,2,NULL),(654,116,115,2,NULL),(655,39,130,2,NULL),(656,39,130,2,NULL),(657,34,125,2,NULL),(658,116,130,2,NULL),(659,39,131,2,NULL),(660,39,131,2,NULL),(661,36,125,2,NULL),(662,116,131,2,NULL),(663,39,132,2,NULL),(664,39,132,2,NULL),(665,116,132,2,NULL),(666,54,125,2,NULL),(667,39,134,2,NULL),(668,39,134,2,NULL),(669,90,125,2,NULL),(670,116,134,2,NULL),(671,43,7,2,NULL),(672,43,7,2,NULL),(673,93,125,2,NULL),(674,43,35,2,NULL),(675,43,36,2,NULL),(676,43,36,2,NULL),(677,95,125,2,NULL),(678,43,37,2,NULL),(679,43,85,2,NULL),(680,43,85,2,NULL),(681,110,125,2,NULL),(682,66,7,2,NULL),(683,66,35,2,NULL),(684,66,35,2,NULL),(685,112,125,2,NULL),(686,66,36,2,NULL),(687,66,37,2,NULL),(688,66,37,2,NULL),(689,34,122,2,NULL),(690,66,85,2,NULL),(691,36,122,2,NULL),(692,50,12,2,NULL),(693,50,46,2,NULL),(694,50,47,2,NULL),(695,54,122,2,NULL),(696,50,48,2,NULL),(697,50,90,2,NULL),(698,50,90,2,NULL),(699,90,122,2,NULL),(700,68,7,2,NULL),(701,68,7,2,NULL),(702,68,35,2,NULL),(703,93,122,2,NULL),(704,68,36,2,NULL),(705,68,36,2,NULL),(706,68,36,2,NULL),(707,95,122,2,NULL),(708,68,37,2,NULL),(709,68,37,2,NULL),(710,68,85,2,NULL),(711,110,122,2,NULL),(712,79,7,2,NULL),(713,79,7,2,NULL),(714,79,7,2,NULL),(715,112,122,2,NULL),(716,79,35,2,NULL),(717,79,35,2,NULL),(718,79,36,2,NULL),(719,34,97,2,NULL),(720,79,37,2,NULL),(721,79,37,2,NULL),(722,79,37,2,NULL),(723,36,97,2,NULL),(724,79,85,2,NULL),(725,79,85,2,NULL),(726,102,12,2,NULL),(727,54,97,2,NULL),(728,102,46,2,NULL),(729,102,47,2,NULL),(730,102,47,2,NULL),(731,90,97,2,NULL),(732,102,48,2,NULL),(733,102,48,2,NULL),(734,102,48,2,NULL),(735,93,97,2,NULL),(736,102,90,2,NULL),(737,102,90,2,NULL),(738,60,7,2,NULL),(739,95,97,2,NULL),(740,60,35,2,NULL),(741,60,36,2,NULL),(742,110,97,2,NULL),(743,60,37,2,NULL),(744,60,85,2,NULL),(745,112,97,2,NULL),(746,67,7,2,NULL),(747,67,35,2,NULL),(748,67,36,2,NULL),(749,34,100,2,NULL),(750,67,37,2,NULL),(751,67,37,2,NULL),(752,67,85,2,NULL),(753,36,100,2,NULL),(754,35,24,2,NULL),(755,35,24,2,NULL),(756,35,101,2,NULL),(757,54,100,2,NULL),(758,40,24,2,NULL),(759,40,24,2,NULL),(760,40,101,2,NULL),(761,46,24,2,NULL),(762,46,24,2,NULL),(763,90,100,2,NULL),(764,46,101,2,NULL),(765,52,24,2,NULL),(766,93,100,2,NULL),(767,52,24,2,NULL),(768,52,101,2,NULL),(769,95,100,2,NULL),(770,65,19,2,NULL),(771,65,19,2,NULL),(772,65,98,2,NULL),(773,110,100,2,NULL),(774,106,19,2,NULL),(775,106,19,2,NULL),(776,106,98,2,NULL),(777,112,100,2,NULL),(778,4,14,2,NULL),(779,4,14,2,NULL),(780,20,14,2,NULL),(781,34,120,2,NULL),(782,31,14,2,NULL),(783,31,14,2,NULL),(784,32,14,2,NULL),(785,36,120,2,NULL),(786,33,14,2,NULL),(787,33,14,2,NULL),(788,54,120,2,NULL),(789,78,14,2,NULL),(790,80,14,2,NULL),(791,80,14,2,NULL),(792,90,120,2,NULL),(793,81,14,2,NULL),(794,26,14,2,NULL),(795,26,14,2,NULL),(796,27,14,2,NULL),(797,28,14,2,NULL),(798,28,14,2,NULL),(799,29,14,2,NULL),(800,93,120,2,NULL),(801,30,14,2,NULL),(802,30,14,2,NULL),(803,137,14,2,NULL),(804,95,120,2,NULL),(805,4,29,2,NULL),(806,110,120,2,NULL),(807,20,29,2,NULL),(808,112,120,2,NULL),(809,31,29,2,NULL),(810,32,29,2,NULL),(811,34,123,2,NULL),(812,33,29,2,NULL),(813,78,29,2,NULL),(814,36,123,2,NULL),(815,80,29,2,NULL),(816,54,123,2,NULL),(817,81,29,2,NULL),(818,81,29,2,NULL),(819,90,123,2,NULL),(820,26,29,2,NULL),(821,27,29,2,NULL),(822,93,123,2,NULL),(823,28,29,2,NULL),(824,29,29,2,NULL),(825,95,123,2,NULL),(826,30,29,2,NULL),(827,137,29,2,NULL),(828,110,123,2,NULL),(829,4,39,2,NULL),(830,20,39,2,NULL),(831,112,123,2,NULL),(832,34,124,2,NULL),(833,31,39,2,NULL),(834,32,39,2,NULL),(835,33,39,2,NULL),(836,36,124,2,NULL),(837,78,39,2,NULL),(838,54,124,2,NULL),(839,80,39,2,NULL),(840,81,39,2,NULL),(841,90,124,2,NULL),(842,26,39,2,NULL),(843,27,39,2,NULL),(844,28,39,2,NULL),(845,93,124,2,NULL),(846,29,39,2,NULL),(847,30,39,2,NULL),(848,95,124,2,NULL),(849,137,39,2,NULL),(850,64,21,2,NULL),(851,110,124,2,NULL),(852,64,49,2,NULL),(853,64,50,2,NULL),(854,112,124,2,NULL),(855,64,52,2,NULL),(856,64,52,2,NULL),(857,64,99,2,NULL),(858,34,72,2,NULL),(859,82,21,2,NULL),(860,82,21,2,NULL),(861,82,49,2,NULL),(862,36,72,2,NULL),(863,82,50,2,NULL),(864,82,50,2,NULL),(865,82,52,2,NULL),(866,54,72,2,NULL),(867,82,99,2,NULL),(868,82,99,2,NULL),(869,4,45,2,NULL),(870,90,72,2,NULL),(871,20,45,2,NULL),(872,20,45,2,NULL),(873,93,72,2,NULL),(874,31,45,2,NULL),(875,32,45,2,NULL),(876,32,45,2,NULL),(877,95,72,2,NULL),(878,33,45,2,NULL),(879,33,45,2,NULL),(880,110,72,2,NULL),(881,78,45,2,NULL),(882,80,45,2,NULL),(883,112,72,2,NULL),(884,81,45,2,NULL),(885,26,45,2,NULL),(886,27,45,2,NULL),(887,34,96,2,NULL),(888,28,45,2,NULL),(889,29,45,2,NULL),(890,30,45,2,NULL),(891,36,96,2,NULL),(892,137,45,2,NULL),(893,54,96,2,NULL),(894,56,26,2,NULL),(895,56,53,2,NULL),(896,56,53,2,NULL),(897,90,96,2,NULL),(898,56,54,2,NULL),(899,56,55,2,NULL),(900,56,55,2,NULL),(901,93,96,2,NULL),(902,56,103,2,NULL),(903,89,26,2,NULL),(904,89,26,2,NULL),(905,95,96,2,NULL),(906,89,53,2,NULL),(907,89,53,2,NULL),(908,89,53,2,NULL),(909,110,96,2,NULL),(910,89,54,2,NULL),(911,89,54,2,NULL),(912,89,55,2,NULL),(913,112,96,2,NULL),(914,89,103,2,NULL),(915,89,103,2,NULL),(916,89,103,2,NULL),(917,34,107,2,NULL),(918,4,51,2,NULL),(919,4,51,2,NULL),(920,20,51,2,NULL),(921,36,107,2,NULL),(922,54,107,2,NULL),(923,31,51,2,NULL),(924,90,107,2,NULL),(925,32,51,2,NULL),(926,32,51,2,NULL),(927,33,51,2,NULL),(928,93,107,2,NULL),(929,78,51,2,NULL),(930,80,51,2,NULL),(931,95,107,2,NULL),(932,81,51,2,NULL),(933,110,107,2,NULL),(934,26,51,2,NULL),(935,27,51,2,NULL),(936,112,107,2,NULL),(937,28,51,2,NULL),(938,29,51,2,NULL),(939,30,51,2,NULL),(940,34,108,2,NULL),(941,137,51,2,NULL),(942,36,108,2,NULL),(943,4,126,2,NULL),(944,20,126,2,NULL),(945,54,108,2,NULL),(946,31,126,2,NULL),(947,90,108,2,NULL),(948,32,126,2,NULL),(949,33,126,2,NULL),(950,78,126,2,NULL),(951,93,108,2,NULL),(952,80,126,2,NULL),(953,81,126,2,NULL),(954,26,126,2,NULL),(955,95,108,2,NULL),(956,27,126,2,NULL),(957,28,126,2,NULL),(958,29,126,2,NULL),(959,110,108,2,NULL),(960,30,126,2,NULL),(961,30,126,2,NULL),(962,112,108,2,NULL),(963,137,126,2,NULL),(964,34,109,2,NULL),(965,4,127,2,NULL),(966,4,127,2,NULL),(967,36,109,2,NULL),(968,20,127,2,NULL),(969,54,109,2,NULL),(970,31,127,2,NULL),(971,31,127,2,NULL),(972,90,109,2,NULL),(973,32,127,2,NULL),(974,33,127,2,NULL),(975,33,127,2,NULL),(976,93,109,2,NULL),(977,78,127,2,NULL),(978,80,127,2,NULL),(979,80,127,2,NULL),(980,95,109,2,NULL),(981,81,127,2,NULL),(982,26,127,2,NULL),(983,110,109,2,NULL),(984,27,127,2,NULL),(985,28,127,2,NULL),(986,29,127,2,NULL),(987,112,109,2,NULL),(988,30,127,2,NULL),(989,34,133,2,NULL),(990,137,127,2,NULL),(991,4,128,2,NULL),(992,20,128,2,NULL),(993,36,133,2,NULL),(994,54,133,2,NULL),(995,31,128,2,NULL),(996,32,128,2,NULL),(997,90,133,2,NULL),(998,33,128,2,NULL),(999,93,133,2,NULL),(1000,78,128,2,NULL),(1001,80,128,2,NULL),(1002,81,128,2,NULL),(1003,95,133,2,NULL),(1004,26,128,2,NULL),(1005,26,128,2,NULL),(1006,26,128,2,NULL),(1007,110,133,2,NULL),(1008,27,128,2,NULL),(1009,27,128,2,NULL),(1010,112,133,2,NULL),(1011,28,128,2,NULL),(1012,29,128,2,NULL),(1013,29,128,2,NULL),(1014,34,111,2,NULL),(1015,30,128,2,NULL),(1016,137,128,2,NULL),(1017,36,111,2,NULL),(1018,4,129,2,NULL),(1019,4,129,2,NULL),(1020,20,129,2,NULL),(1021,54,111,2,NULL),(1022,90,111,2,NULL),(1023,31,129,2,NULL),(1024,31,129,2,NULL),(1025,31,129,2,NULL),(1026,93,111,2,NULL),(1027,32,129,2,NULL),(1028,95,111,2,NULL),(1029,33,129,2,NULL),(1030,33,129,2,NULL),(1031,78,129,2,NULL),(1032,110,111,2,NULL),(1033,80,129,2,NULL),(1034,112,111,2,NULL),(1035,81,129,2,NULL),(1036,26,129,2,NULL),(1037,27,129,2,NULL),(1038,34,112,2,NULL),(1039,28,129,2,NULL),(1040,29,129,2,NULL),(1041,36,112,2,NULL),(1042,30,129,2,NULL),(1043,137,129,2,NULL),(1044,54,112,2,NULL),(1045,4,10,2,NULL),(1046,4,10,2,NULL),(1047,20,10,2,NULL),(1048,90,112,2,NULL),(1049,31,10,2,NULL),(1050,31,10,2,NULL),(1051,32,10,2,NULL),(1052,93,112,2,NULL),(1053,33,10,2,NULL),(1054,33,10,2,NULL),(1055,78,10,2,NULL),(1056,95,112,2,NULL),(1057,80,10,2,NULL),(1058,80,10,2,NULL),(1059,81,10,2,NULL),(1060,110,112,2,NULL),(1061,26,10,2,NULL),(1062,26,10,2,NULL),(1063,27,10,2,NULL),(1064,112,112,2,NULL),(1065,28,10,2,NULL),(1066,28,10,2,NULL),(1067,29,10,2,NULL),(1068,34,113,2,NULL),(1069,30,10,2,NULL),(1070,30,10,2,NULL),(1071,137,10,2,NULL),(1072,36,113,2,NULL),(1073,4,56,2,NULL),(1074,4,56,2,NULL),(1075,20,56,2,NULL),(1076,54,113,2,NULL),(1077,31,56,2,NULL),(1078,31,56,2,NULL),(1079,31,56,2,NULL),(1080,90,113,2,NULL),(1081,32,56,2,NULL),(1082,32,56,2,NULL),(1083,33,56,2,NULL),(1084,93,113,2,NULL),(1085,78,56,2,NULL),(1086,78,56,2,NULL),(1087,80,56,2,NULL),(1088,95,113,2,NULL),(1089,81,56,2,NULL),(1090,81,56,2,NULL),(1091,26,56,2,NULL),(1092,110,113,2,NULL),(1093,27,56,2,NULL),(1094,28,56,2,NULL),(1095,28,56,2,NULL),(1096,112,113,2,NULL),(1097,29,56,2,NULL),(1098,29,56,2,NULL),(1099,30,56,2,NULL),(1100,34,114,2,NULL),(1101,137,56,2,NULL),(1102,137,56,2,NULL),(1103,137,56,2,NULL),(1104,36,114,2,NULL),(1105,4,59,2,NULL),(1106,4,59,2,NULL),(1107,4,59,2,NULL),(1108,54,114,2,NULL),(1109,20,59,2,NULL),(1110,20,59,2,NULL),(1111,20,59,2,NULL),(1112,90,114,2,NULL),(1113,31,59,2,NULL),(1114,31,59,2,NULL),(1115,31,59,2,NULL),(1116,93,114,2,NULL),(1117,32,59,2,NULL),(1118,32,59,2,NULL),(1119,33,59,2,NULL),(1120,95,114,2,NULL),(1121,78,59,2,NULL),(1122,78,59,2,NULL),(1123,78,59,2,NULL),(1124,110,114,2,NULL),(1125,80,59,2,NULL),(1126,80,59,2,NULL),(1127,81,59,2,NULL),(1128,112,114,2,NULL),(1129,26,59,2,NULL),(1130,26,59,2,NULL),(1131,26,59,2,NULL),(1132,34,115,2,NULL),(1133,27,59,2,NULL),(1134,27,59,2,NULL),(1135,28,59,2,NULL),(1136,36,115,2,NULL),(1137,29,59,2,NULL),(1138,29,59,2,NULL),(1139,29,59,2,NULL),(1140,54,115,2,NULL),(1141,30,59,2,NULL),(1142,30,59,2,NULL),(1143,30,59,2,NULL),(1144,90,115,2,NULL),(1145,137,59,2,NULL),(1146,137,59,2,NULL),(1147,137,59,2,NULL),(1148,93,115,2,NULL),(1149,4,63,2,NULL),(1150,4,63,2,NULL),(1151,4,63,2,NULL),(1152,95,115,2,NULL),(1153,20,63,2,NULL),(1154,20,63,2,NULL),(1155,20,63,2,NULL),(1156,110,115,2,NULL),(1157,31,63,2,NULL),(1158,31,63,2,NULL),(1159,31,63,2,NULL),(1160,112,115,2,NULL),(1161,32,63,2,NULL),(1162,32,63,2,NULL),(1163,32,63,2,NULL),(1164,34,130,2,NULL),(1165,33,63,2,NULL),(1166,33,63,2,NULL),(1167,33,63,2,NULL),(1168,36,130,2,NULL),(1169,78,63,2,NULL),(1170,78,63,2,NULL),(1171,78,63,2,NULL),(1172,54,130,2,NULL),(1173,80,63,2,NULL),(1174,80,63,2,NULL),(1175,80,63,2,NULL),(1176,90,130,2,NULL),(1177,81,63,2,NULL),(1178,81,63,2,NULL),(1179,81,63,2,NULL),(1180,93,130,2,NULL),(1181,26,63,2,NULL),(1182,26,63,2,NULL),(1183,26,63,2,NULL),(1184,95,130,2,NULL),(1185,27,63,2,NULL),(1186,27,63,2,NULL),(1187,28,63,2,NULL),(1188,110,130,2,NULL),(1189,29,63,2,NULL),(1190,29,63,2,NULL),(1191,29,63,2,NULL),(1192,112,130,2,NULL),(1193,30,63,2,NULL),(1194,30,63,2,NULL),(1195,137,63,2,NULL),(1196,34,131,2,NULL),(1197,4,67,2,NULL),(1198,20,67,2,NULL),(1199,20,67,2,NULL),(1200,36,131,2,NULL),(1201,31,67,2,NULL),(1202,54,131,2,NULL),(1203,32,67,2,NULL),(1204,32,67,2,NULL),(1205,33,67,2,NULL),(1206,90,131,2,NULL),(1207,78,67,2,NULL),(1208,78,67,2,NULL),(1209,78,67,2,NULL),(1210,93,131,2,NULL),(1211,80,67,2,NULL),(1212,81,67,2,NULL),(1213,81,67,2,NULL),(1214,95,131,2,NULL),(1215,26,67,2,NULL),(1216,26,67,2,NULL),(1217,26,67,2,NULL),(1218,110,131,2,NULL),(1219,27,67,2,NULL),(1220,27,67,2,NULL),(1221,28,67,2,NULL),(1222,112,131,2,NULL),(1223,29,67,2,NULL),(1224,29,67,2,NULL),(1225,29,67,2,NULL),(1226,34,132,2,NULL),(1227,30,67,2,NULL),(1228,30,67,2,NULL),(1229,30,67,2,NULL),(1230,36,132,2,NULL),(1231,137,67,2,NULL),(1232,137,67,2,NULL),(1233,137,67,2,NULL),(1234,54,132,2,NULL),(1235,3,2,2,NULL),(1236,3,15,2,NULL),(1237,3,15,2,NULL),(1238,90,132,2,NULL),(1239,3,16,2,NULL),(1240,3,17,2,NULL),(1241,3,17,2,NULL),(1242,93,132,2,NULL),(1243,3,75,2,NULL),(1244,3,75,2,NULL),(1245,4,11,2,NULL),(1246,95,132,2,NULL),(1247,20,11,2,NULL),(1248,31,11,2,NULL),(1249,31,11,2,NULL),(1250,110,132,2,NULL),(1251,32,11,2,NULL),(1252,32,11,2,NULL),(1253,33,11,2,NULL),(1254,112,132,2,NULL),(1255,78,11,2,NULL),(1256,78,11,2,NULL),(1257,80,11,2,NULL),(1258,34,134,2,NULL),(1259,81,11,2,NULL),(1260,81,11,2,NULL),(1261,81,11,2,NULL),(1262,36,134,2,NULL),(1263,26,11,2,NULL),(1264,26,11,2,NULL),(1265,26,11,2,NULL),(1266,54,134,2,NULL),(1267,27,11,2,NULL),(1268,27,11,2,NULL),(1269,27,11,2,NULL),(1270,90,134,2,NULL),(1271,28,11,2,NULL),(1272,28,11,2,NULL),(1273,29,11,2,NULL),(1274,93,134,2,NULL),(1275,30,11,2,NULL),(1276,30,11,2,NULL),(1277,137,11,2,NULL),(1278,95,134,2,NULL),(1279,21,21,2,NULL),(1280,21,49,2,NULL),(1281,21,49,2,NULL),(1282,110,134,2,NULL),(1283,21,50,2,NULL),(1284,21,50,2,NULL),(1285,21,52,2,NULL),(1286,112,134,2,NULL),(1287,21,99,2,NULL),(1288,21,99,2,NULL),(1289,15,7,2,NULL),(1290,4,86,2,NULL),(1291,15,35,2,NULL),(1292,15,35,2,NULL),(1293,15,36,2,NULL),(1294,20,86,2,NULL),(1295,15,37,2,NULL),(1296,15,37,2,NULL),(1297,15,37,2,NULL),(1298,31,86,2,NULL),(1299,15,85,2,NULL),(1300,15,85,2,NULL),(1301,32,86,2,NULL),(1302,4,57,2,NULL),(1303,33,86,2,NULL),(1304,4,61,2,NULL),(1305,4,116,2,NULL),(1306,4,116,2,NULL),(1307,78,86,2,NULL),(1308,4,117,2,NULL),(1309,4,117,2,NULL),(1310,4,117,2,NULL),(1311,80,86,2,NULL),(1312,4,118,2,NULL),(1313,4,118,2,NULL),(1314,4,118,2,NULL),(1315,81,86,2,NULL),(1316,4,119,2,NULL),(1317,4,119,2,NULL),(1318,4,13,2,NULL),(1319,26,86,2,NULL),(1320,4,58,2,NULL),(1321,4,58,2,NULL),(1322,4,62,2,NULL),(1323,27,86,2,NULL),(1324,4,121,2,NULL),(1325,4,121,2,NULL),(1326,4,121,2,NULL),(1327,28,86,2,NULL),(1328,4,125,2,NULL),(1329,4,125,2,NULL),(1330,4,125,2,NULL),(1331,29,86,2,NULL),(1332,4,122,2,NULL),(1333,4,122,2,NULL),(1334,4,122,2,NULL),(1335,30,86,2,NULL),(1336,4,97,2,NULL),(1337,4,97,2,NULL),(1338,4,97,2,NULL),(1339,137,86,2,NULL),(1340,4,100,2,NULL),(1341,4,100,2,NULL),(1342,4,120,2,NULL),(1343,4,123,2,NULL),(1344,4,124,2,NULL),(1345,4,124,2,NULL),(1346,31,57,2,NULL),(1347,4,72,2,NULL),(1348,32,57,2,NULL),(1349,4,96,2,NULL),(1350,4,96,2,NULL),(1351,4,107,2,NULL),(1352,33,57,2,NULL),(1353,4,108,2,NULL),(1354,4,108,2,NULL),(1355,4,108,2,NULL),(1356,31,61,2,NULL),(1357,4,109,2,NULL),(1358,4,109,2,NULL),(1359,4,109,2,NULL),(1360,32,61,2,NULL),(1361,4,133,2,NULL),(1362,4,133,2,NULL),(1363,4,133,2,NULL),(1364,33,61,2,NULL),(1365,4,111,2,NULL),(1366,4,111,2,NULL),(1367,4,111,2,NULL),(1368,31,116,2,NULL),(1369,4,112,2,NULL),(1370,32,116,2,NULL),(1371,4,113,2,NULL),(1372,4,113,2,NULL),(1373,4,114,2,NULL),(1374,33,116,2,NULL),(1375,4,115,2,NULL),(1376,4,115,2,NULL),(1377,4,130,2,NULL),(1378,31,117,2,NULL),(1379,4,131,2,NULL),(1380,4,131,2,NULL),(1381,4,132,2,NULL),(1382,32,117,2,NULL),(1383,4,134,2,NULL),(1384,4,134,2,NULL),(1385,2,7,2,NULL),(1386,33,117,2,NULL),(1387,2,35,2,NULL),(1388,2,35,2,NULL),(1389,2,36,2,NULL),(1390,2,37,2,NULL),(1391,2,37,2,NULL),(1392,31,118,2,NULL),(1393,2,85,2,NULL),(1394,32,118,2,NULL),(1395,20,57,2,NULL),(1396,20,57,2,NULL),(1397,33,118,2,NULL),(1398,20,61,2,NULL),(1399,20,116,2,NULL),(1400,20,116,2,NULL),(1401,31,119,2,NULL),(1402,20,117,2,NULL),(1403,20,118,2,NULL),(1404,20,118,2,NULL),(1405,32,119,2,NULL),(1406,20,119,2,NULL),(1407,20,13,2,NULL),(1408,20,13,2,NULL),(1409,33,119,2,NULL),(1410,20,58,2,NULL),(1411,20,62,2,NULL),(1412,20,62,2,NULL),(1413,31,13,2,NULL),(1414,20,121,2,NULL),(1415,20,125,2,NULL),(1416,20,125,2,NULL),(1417,32,13,2,NULL),(1418,20,122,2,NULL),(1419,20,97,2,NULL),(1420,20,97,2,NULL),(1421,33,13,2,NULL),(1422,20,100,2,NULL),(1423,20,120,2,NULL),(1424,20,120,2,NULL),(1425,31,58,2,NULL),(1426,20,123,2,NULL),(1427,20,124,2,NULL),(1428,20,124,2,NULL),(1429,32,58,2,NULL),(1430,20,72,2,NULL),(1431,20,96,2,NULL),(1432,20,96,2,NULL),(1433,33,58,2,NULL),(1434,20,107,2,NULL),(1435,20,108,2,NULL),(1436,20,108,2,NULL),(1437,31,62,2,NULL),(1438,20,109,2,NULL),(1439,20,133,2,NULL),(1440,20,133,2,NULL),(1441,32,62,2,NULL),(1442,20,111,2,NULL),(1443,20,112,2,NULL),(1444,20,112,2,NULL),(1445,33,62,2,NULL),(1446,20,113,2,NULL),(1447,20,114,2,NULL),(1448,20,114,2,NULL),(1449,20,115,2,NULL),(1450,31,125,2,NULL),(1451,20,130,2,NULL),(1452,20,130,2,NULL),(1453,32,125,2,NULL),(1454,20,131,2,NULL),(1455,20,132,2,NULL),(1456,20,132,2,NULL),(1457,33,125,2,NULL),(1458,20,134,2,NULL),(1459,7,7,2,NULL),(1460,7,7,2,NULL),(1461,31,122,2,NULL),(1462,7,35,2,NULL),(1463,7,36,2,NULL),(1464,7,36,2,NULL),(1465,7,37,2,NULL),(1466,32,122,2,NULL),(1467,7,85,2,NULL),(1468,7,85,2,NULL),(1469,33,122,2,NULL),(1470,6,12,2,NULL),(1471,6,46,2,NULL),(1472,6,46,2,NULL),(1473,31,97,2,NULL),(1474,6,47,2,NULL),(1475,6,48,2,NULL),(1476,6,48,2,NULL),(1477,6,90,2,NULL),(1478,32,97,2,NULL),(1479,8,7,2,NULL),(1480,8,7,2,NULL),(1481,8,35,2,NULL),(1482,33,97,2,NULL),(1483,8,36,2,NULL),(1484,8,36,2,NULL),(1485,8,37,2,NULL),(1486,31,100,2,NULL),(1487,8,85,2,NULL),(1488,8,85,2,NULL),(1489,32,100,2,NULL),(1490,12,7,2,NULL),(1491,12,35,2,NULL),(1492,12,35,2,NULL),(1493,12,36,2,NULL),(1494,33,100,2,NULL),(1495,12,37,2,NULL),(1496,12,37,2,NULL),(1497,12,85,2,NULL),(1498,31,120,2,NULL),(1499,11,26,2,NULL),(1500,11,26,2,NULL),(1501,11,53,2,NULL),(1502,32,120,2,NULL),(1503,11,54,2,NULL),(1504,11,54,2,NULL),(1505,33,120,2,NULL),(1506,11,55,2,NULL),(1507,11,103,2,NULL),(1508,11,103,2,NULL),(1509,31,123,2,NULL),(1510,32,123,2,NULL),(1511,78,57,2,NULL),(1512,80,57,2,NULL),(1513,80,57,2,NULL),(1514,33,123,2,NULL),(1515,81,57,2,NULL),(1516,81,57,2,NULL),(1517,81,57,2,NULL),(1518,31,124,2,NULL),(1519,26,57,2,NULL),(1520,26,57,2,NULL),(1521,26,57,2,NULL),(1522,32,124,2,NULL),(1523,27,57,2,NULL),(1524,27,57,2,NULL),(1525,27,57,2,NULL),(1526,33,124,2,NULL),(1527,28,57,2,NULL),(1528,28,57,2,NULL),(1529,28,57,2,NULL),(1530,31,72,2,NULL),(1531,29,57,2,NULL),(1532,29,57,2,NULL),(1533,30,57,2,NULL),(1534,32,72,2,NULL),(1535,137,57,2,NULL),(1536,137,57,2,NULL),(1537,137,57,2,NULL),(1538,33,72,2,NULL),(1539,31,96,2,NULL),(1540,78,61,2,NULL),(1541,32,96,2,NULL),(1542,80,61,2,NULL),(1543,81,61,2,NULL),(1544,81,61,2,NULL),(1545,33,96,2,NULL),(1546,26,61,2,NULL),(1547,26,61,2,NULL),(1548,26,61,2,NULL),(1549,31,107,2,NULL),(1550,27,61,2,NULL),(1551,27,61,2,NULL),(1552,27,61,2,NULL),(1553,32,107,2,NULL),(1554,28,61,2,NULL),(1555,28,61,2,NULL),(1556,28,61,2,NULL),(1557,33,107,2,NULL),(1558,29,61,2,NULL),(1559,29,61,2,NULL),(1560,30,61,2,NULL),(1561,31,108,2,NULL),(1562,137,61,2,NULL),(1563,137,61,2,NULL),(1564,137,61,2,NULL),(1565,32,108,2,NULL),(1566,33,108,2,NULL),(1567,78,116,2,NULL),(1568,78,116,2,NULL),(1569,78,116,2,NULL),(1570,31,109,2,NULL),(1571,80,116,2,NULL),(1572,80,116,2,NULL),(1573,80,116,2,NULL),(1574,32,109,2,NULL),(1575,81,116,2,NULL),(1576,81,116,2,NULL),(1577,81,116,2,NULL),(1578,33,109,2,NULL),(1579,26,116,2,NULL),(1580,26,116,2,NULL),(1581,27,116,2,NULL),(1582,31,133,2,NULL),(1583,28,116,2,NULL),(1584,29,116,2,NULL),(1585,32,133,2,NULL),(1586,30,116,2,NULL),(1587,137,116,2,NULL),(1588,137,116,2,NULL),(1589,33,133,2,NULL),(1590,78,117,2,NULL),(1591,80,117,2,NULL),(1592,80,117,2,NULL),(1593,31,111,2,NULL),(1594,81,117,2,NULL),(1595,81,117,2,NULL),(1596,26,117,2,NULL),(1597,32,111,2,NULL),(1598,27,117,2,NULL),(1599,28,117,2,NULL),(1600,28,117,2,NULL),(1601,33,111,2,NULL),(1602,29,117,2,NULL),(1603,29,117,2,NULL),(1604,30,117,2,NULL),(1605,31,112,2,NULL),(1606,137,117,2,NULL),(1607,137,117,2,NULL),(1608,137,117,2,NULL),(1609,32,112,2,NULL),(1610,33,112,2,NULL),(1611,78,118,2,NULL),(1612,78,118,2,NULL),(1613,78,118,2,NULL),(1614,31,113,2,NULL),(1615,80,118,2,NULL),(1616,80,118,2,NULL),(1617,80,118,2,NULL),(1618,32,113,2,NULL),(1619,81,118,2,NULL),(1620,81,118,2,NULL),(1621,81,118,2,NULL),(1622,33,113,2,NULL),(1623,26,118,2,NULL),(1624,26,118,2,NULL),(1625,26,118,2,NULL),(1626,31,114,2,NULL),(1627,27,118,2,NULL),(1628,27,118,2,NULL),(1629,27,118,2,NULL),(1630,32,114,2,NULL),(1631,28,118,2,NULL),(1632,28,118,2,NULL),(1633,28,118,2,NULL),(1634,33,114,2,NULL),(1635,29,118,2,NULL),(1636,29,118,2,NULL),(1637,29,118,2,NULL),(1638,31,115,2,NULL),(1639,30,118,2,NULL),(1640,30,118,2,NULL),(1641,30,118,2,NULL),(1642,32,115,2,NULL),(1643,137,118,2,NULL),(1644,137,118,2,NULL),(1645,137,118,2,NULL),(1646,33,115,2,NULL),(1647,78,119,2,NULL),(1648,31,130,2,NULL),(1649,80,119,2,NULL),(1650,81,119,2,NULL),(1651,81,119,2,NULL),(1652,32,130,2,NULL),(1653,26,119,2,NULL),(1654,26,119,2,NULL),(1655,27,119,2,NULL),(1656,33,130,2,NULL),(1657,28,119,2,NULL),(1658,28,119,2,NULL),(1659,31,131,2,NULL),(1660,29,119,2,NULL),(1661,30,119,2,NULL),(1662,30,119,2,NULL),(1663,32,131,2,NULL),(1664,137,119,2,NULL),(1665,33,131,2,NULL),(1666,78,13,2,NULL),(1667,78,13,2,NULL),(1668,80,13,2,NULL),(1669,31,132,2,NULL),(1670,81,13,2,NULL),(1671,81,13,2,NULL),(1672,81,13,2,NULL),(1673,32,132,2,NULL),(1674,26,13,2,NULL),(1675,26,13,2,NULL),(1676,26,13,2,NULL),(1677,33,132,2,NULL),(1678,27,13,2,NULL),(1679,27,13,2,NULL),(1680,28,13,2,NULL),(1681,31,134,2,NULL),(1682,29,13,2,NULL),(1683,30,13,2,NULL),(1684,30,13,2,NULL),(1685,32,134,2,NULL),(1686,137,13,2,NULL),(1687,137,13,2,NULL),(1688,137,13,2,NULL),(1689,33,134,2,NULL),(1690,78,58,2,NULL),(1691,78,58,2,NULL),(1692,78,58,2,NULL),(1693,80,58,2,NULL),(1694,81,58,2,NULL),(1695,81,58,2,NULL),(1696,26,58,2,NULL),(1697,27,58,2,NULL),(1698,27,58,2,NULL),(1699,28,58,2,NULL),(1700,29,58,2,NULL),(1701,29,58,2,NULL),(1702,30,58,2,NULL),(1703,78,121,2,NULL),(1704,137,58,2,NULL),(1705,137,58,2,NULL),(1706,80,121,2,NULL),(1707,78,62,2,NULL),(1708,80,62,2,NULL),(1709,80,62,2,NULL),(1710,81,121,2,NULL),(1711,81,62,2,NULL),(1712,26,62,2,NULL),(1713,26,62,2,NULL),(1714,26,121,2,NULL),(1715,27,62,2,NULL),(1716,27,62,2,NULL),(1717,28,62,2,NULL),(1718,27,121,2,NULL),(1719,29,62,2,NULL),(1720,30,62,2,NULL),(1721,30,62,2,NULL),(1722,28,121,2,NULL),(1723,137,62,2,NULL),(1724,137,62,2,NULL),(1725,137,62,2,NULL),(1726,29,121,2,NULL),(1727,30,121,2,NULL),(1728,78,72,2,NULL),(1729,78,72,2,NULL),(1730,78,72,2,NULL),(1731,80,72,2,NULL),(1732,80,72,2,NULL),(1733,81,72,2,NULL),(1734,137,121,2,NULL),(1735,26,72,2,NULL),(1736,27,72,2,NULL),(1737,27,72,2,NULL),(1738,28,72,2,NULL),(1739,29,72,2,NULL),(1740,29,72,2,NULL),(1741,30,72,2,NULL),(1742,137,72,2,NULL),(1743,137,72,2,NULL),(1744,145,21,2,NULL),(1745,145,49,2,NULL),(1746,145,49,2,NULL),(1747,145,50,2,NULL),(1748,145,52,2,NULL),(1749,145,52,2,NULL),(1750,145,99,2,NULL),(1751,141,7,2,NULL),(1752,141,7,2,NULL),(1753,78,122,2,NULL),(1754,141,35,2,NULL),(1755,141,36,2,NULL),(1756,141,36,2,NULL),(1757,141,37,2,NULL),(1758,80,122,2,NULL),(1759,141,85,2,NULL),(1760,141,85,2,NULL),(1761,81,122,2,NULL),(1762,137,125,2,NULL),(1763,137,125,2,NULL),(1764,137,125,2,NULL),(1765,78,97,2,NULL),(1766,137,122,2,NULL),(1767,80,97,2,NULL),(1768,137,97,2,NULL),(1769,137,97,2,NULL),(1770,137,100,2,NULL),(1771,137,100,2,NULL),(1772,137,100,2,NULL),(1773,81,97,2,NULL),(1774,137,120,2,NULL),(1775,78,100,2,NULL),(1776,137,123,2,NULL),(1777,137,123,2,NULL),(1778,137,124,2,NULL),(1779,137,124,2,NULL),(1780,137,124,2,NULL),(1781,80,100,2,NULL),(1782,137,96,2,NULL),(1783,81,100,2,NULL),(1784,137,107,2,NULL),(1785,137,107,2,NULL),(1786,137,108,2,NULL),(1787,137,109,2,NULL),(1788,78,120,2,NULL),(1789,137,109,2,NULL),(1790,137,109,2,NULL),(1791,137,133,2,NULL),(1792,137,111,2,NULL),(1793,137,111,2,NULL),(1794,80,120,2,NULL),(1795,137,112,2,NULL),(1796,81,120,2,NULL),(1797,137,113,2,NULL),(1798,137,113,2,NULL),(1799,137,114,2,NULL),(1800,78,123,2,NULL),(1801,137,115,2,NULL),(1802,137,115,2,NULL),(1803,137,130,2,NULL),(1804,80,123,2,NULL),(1805,137,131,2,NULL),(1806,137,131,2,NULL),(1807,137,132,2,NULL),(1808,137,134,2,NULL),(1809,137,134,2,NULL),(1810,81,123,2,NULL),(1811,139,92,2,NULL),(1812,78,124,2,NULL),(1813,142,7,2,NULL),(1814,142,7,2,NULL),(1815,142,35,2,NULL),(1816,142,36,2,NULL),(1817,142,36,2,NULL),(1818,80,124,2,NULL),(1819,142,37,2,NULL),(1820,142,85,2,NULL),(1821,81,124,2,NULL),(1822,78,96,2,NULL),(1823,80,96,2,NULL),(1824,81,96,2,NULL),(1825,26,96,2,NULL),(1826,27,96,2,NULL),(1827,78,107,2,NULL),(1828,28,96,2,NULL),(1829,28,96,2,NULL),(1830,29,96,2,NULL),(1831,80,107,2,NULL),(1832,30,96,2,NULL),(1833,30,96,2,NULL),(1834,30,96,2,NULL),(1835,81,107,2,NULL),(1836,78,108,2,NULL),(1837,26,107,2,NULL),(1838,26,107,2,NULL),(1839,26,107,2,NULL),(1840,80,108,2,NULL),(1841,27,107,2,NULL),(1842,81,108,2,NULL),(1843,28,107,2,NULL),(1844,28,107,2,NULL),(1845,29,107,2,NULL),(1846,78,109,2,NULL),(1847,30,107,2,NULL),(1848,30,107,2,NULL),(1849,80,109,2,NULL),(1850,26,108,2,NULL),(1851,26,108,2,NULL),(1852,27,108,2,NULL),(1853,81,109,2,NULL),(1854,28,108,2,NULL),(1855,78,133,2,NULL),(1856,29,108,2,NULL),(1857,29,108,2,NULL),(1858,30,108,2,NULL),(1859,80,133,2,NULL),(1860,26,109,2,NULL),(1861,26,109,2,NULL),(1862,26,109,2,NULL),(1863,81,133,2,NULL),(1864,27,109,2,NULL),(1865,78,111,2,NULL),(1866,28,109,2,NULL),(1867,28,109,2,NULL),(1868,29,109,2,NULL),(1869,80,111,2,NULL),(1870,30,109,2,NULL),(1871,30,109,2,NULL),(1872,81,111,2,NULL),(1873,26,133,2,NULL),(1874,78,112,2,NULL),(1875,27,133,2,NULL),(1876,27,133,2,NULL),(1877,28,133,2,NULL),(1878,80,112,2,NULL),(1879,29,133,2,NULL),(1880,29,133,2,NULL),(1881,30,133,2,NULL),(1882,81,112,2,NULL),(1883,78,113,2,NULL),(1884,26,111,2,NULL),(1885,26,111,2,NULL),(1886,27,111,2,NULL),(1887,80,113,2,NULL),(1888,28,111,2,NULL),(1889,28,111,2,NULL),(1890,28,111,2,NULL),(1891,81,113,2,NULL),(1892,29,111,2,NULL),(1893,29,111,2,NULL),(1894,29,111,2,NULL),(1895,78,114,2,NULL),(1896,30,111,2,NULL),(1897,30,111,2,NULL),(1898,30,111,2,NULL),(1899,80,114,2,NULL),(1900,81,114,2,NULL),(1901,26,112,2,NULL),(1902,26,112,2,NULL),(1903,26,112,2,NULL),(1904,78,115,2,NULL),(1905,27,112,2,NULL),(1906,80,115,2,NULL),(1907,28,112,2,NULL),(1908,28,112,2,NULL),(1909,29,112,2,NULL),(1910,81,115,2,NULL),(1911,30,112,2,NULL),(1912,30,112,2,NULL),(1913,26,113,2,NULL),(1914,78,130,2,NULL),(1915,27,113,2,NULL),(1916,28,113,2,NULL),(1917,28,113,2,NULL),(1918,80,130,2,NULL),(1919,29,113,2,NULL),(1920,81,130,2,NULL),(1921,30,113,2,NULL),(1922,30,113,2,NULL),(1923,78,131,2,NULL),(1924,26,114,2,NULL),(1925,80,131,2,NULL),(1926,27,114,2,NULL),(1927,27,114,2,NULL),(1928,28,114,2,NULL),(1929,81,131,2,NULL),(1930,29,114,2,NULL),(1931,30,114,2,NULL),(1932,30,114,2,NULL),(1933,78,132,2,NULL),(1934,119,106,2,NULL),(1935,119,106,2,NULL),(1936,119,106,2,NULL),(1937,80,132,2,NULL),(1938,120,106,2,NULL),(1939,120,106,2,NULL),(1940,120,106,2,NULL),(1941,81,132,2,NULL),(1942,121,106,2,NULL),(1943,122,106,2,NULL),(1944,122,106,2,NULL),(1945,78,134,2,NULL),(1946,123,106,2,NULL),(1947,124,106,2,NULL),(1948,124,106,2,NULL),(1949,80,134,2,NULL),(1950,125,106,2,NULL),(1951,125,106,2,NULL),(1952,126,106,2,NULL),(1953,81,134,2,NULL),(1954,127,106,2,NULL),(1955,127,106,2,NULL),(1956,127,106,2,NULL),(1957,128,106,2,NULL),(1958,128,106,2,NULL),(1959,129,106,2,NULL),(1960,130,106,2,NULL),(1961,131,106,2,NULL),(1962,131,106,2,NULL),(1963,132,106,2,NULL),(1964,133,106,2,NULL),(1965,133,106,2,NULL),(1966,134,106,2,NULL),(1967,26,115,2,NULL),(1968,26,115,2,NULL),(1969,26,125,2,NULL),(1970,27,115,2,NULL),(1971,27,125,2,NULL),(1972,28,115,2,NULL),(1973,28,115,2,NULL),(1974,29,115,2,NULL),(1975,28,125,2,NULL),(1976,30,115,2,NULL),(1977,30,115,2,NULL),(1978,29,125,2,NULL),(1979,26,130,2,NULL),(1980,30,125,2,NULL),(1981,27,130,2,NULL),(1982,28,130,2,NULL),(1983,28,130,2,NULL),(1984,29,130,2,NULL),(1985,30,130,2,NULL),(1986,30,130,2,NULL),(1987,26,131,2,NULL),(1988,26,131,2,NULL),(1989,26,131,2,NULL),(1990,27,131,2,NULL),(1991,27,131,2,NULL),(1992,28,131,2,NULL),(1993,29,131,2,NULL),(1994,29,131,2,NULL),(1995,30,131,2,NULL),(1996,26,132,2,NULL),(1997,26,132,2,NULL),(1998,26,132,2,NULL),(1999,27,132,2,NULL),(2000,28,132,2,NULL),(2001,28,132,2,NULL),(2002,29,132,2,NULL),(2003,30,132,2,NULL),(2004,30,132,2,NULL),(2005,26,134,2,NULL),(2006,26,134,2,NULL),(2007,26,134,2,NULL),(2008,27,134,2,NULL),(2009,28,134,2,NULL),(2010,28,134,2,NULL),(2011,26,97,2,NULL),(2012,29,134,2,NULL),(2013,30,134,2,NULL),(2014,30,134,2,NULL),(2015,27,97,2,NULL),(2016,28,97,2,NULL),(2017,29,97,2,NULL),(2018,30,97,2,NULL),(2019,26,100,2,NULL),(2020,27,100,2,NULL),(2021,28,100,2,NULL),(2022,29,100,2,NULL),(2023,30,100,2,NULL),(2024,26,120,2,NULL),(2025,27,120,2,NULL),(2026,28,120,2,NULL),(2027,29,120,2,NULL),(2028,30,120,2,NULL),(2029,26,123,2,NULL),(2030,27,123,2,NULL),(2031,28,123,2,NULL),(2032,29,123,2,NULL),(2033,30,123,2,NULL),(2034,26,124,2,NULL),(2035,27,124,2,NULL),(2036,28,124,2,NULL),(2037,29,124,2,NULL),(2038,30,124,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(26,'android.permission.GET_ACCOUNTS'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_CONTACTS'),(27,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(6,NULL,NULL,'content://mms',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(9,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://mms',NULL,NULL,NULL),(16,NULL,NULL,'content://sms',NULL,NULL,NULL),(17,NULL,NULL,'content://sms',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://mms',NULL,NULL,NULL),(27,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(28,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(29,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(30,NULL,NULL,'content://mms',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,5,2),(2,22,6),(3,60,15),(4,70,16),(5,71,17),(6,105,26),(7,114,30),(8,116,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,1,5),(7,3,1),(8,2,2),(9,1,6),(10,1,7),(11,3,2),(12,4,1),(13,2,3),(14,1,8),(15,3,3),(16,4,2),(17,1,9),(18,2,4),(19,1,10),(20,4,3),(21,3,4),(22,1,11),(23,2,5),(24,1,12),(25,3,5),(26,4,4),(27,1,13),(28,2,6),(29,1,14),(30,4,5),(31,1,15),(32,3,6),(33,2,8),(34,1,17),(35,3,8),(36,1,16),(37,4,6),(38,2,10),(39,1,19),(40,4,8),(41,3,10),(42,1,18),(43,2,11),(44,1,21),(45,4,10),(46,3,11),(47,1,20),(48,2,12),(49,1,22),(50,3,12),(51,4,11),(52,2,13),(53,4,12),(54,3,13),(55,2,14),(56,3,14),(57,4,13),(58,2,15),(59,4,14),(60,3,15),(61,2,17),(62,3,17),(63,4,15),(64,2,16),(65,3,16),(66,4,17),(67,2,19),(68,3,19),(69,4,16),(70,2,18),(71,3,18),(72,4,19),(73,2,21),(74,3,21),(75,4,18),(76,2,23),(77,3,23),(78,4,21),(79,2,22),(80,4,23),(81,3,22),(82,2,24),(83,3,24),(84,4,22),(85,4,24),(86,5,1),(87,5,3),(88,5,5),(89,5,8),(90,5,10),(91,5,13),(92,5,14),(93,5,15),(94,5,17),(95,5,16),(96,5,19),(97,6,1),(98,5,18),(99,6,2),(100,5,21),(101,6,3),(102,5,23),(103,6,4),(104,5,25),(105,6,5),(106,5,26),(107,6,6),(108,6,7),(109,6,8),(110,6,9),(111,6,10),(112,6,11),(113,6,12),(114,6,13),(115,6,14),(116,6,15),(117,6,17),(118,6,16),(119,6,19),(120,6,18),(121,6,21),(122,6,20),(123,6,22),(124,6,27);
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
