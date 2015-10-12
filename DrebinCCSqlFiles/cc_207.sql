-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_207
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (30,'(.*).SEND_SMS'),(22,'android.intent.action.BATTERY_CHANGED'),(27,'android.intent.action.BATTERY_LOW'),(24,'android.intent.action.BATTERY_OKAY'),(11,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(25,'android.intent.action.SCREEN_OFF'),(26,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.VIEW'),(6,'android.provider.Telephony.SMS_RECEIVED'),(29,'android.settings.APPLICATION_DETAILS_SETTINGS'),(28,'android.settings.LOCATION_SOURCE_SETTINGS'),(2,'com.android.vending.INSTALL_REFERRER'),(7,'com.android.vending.billing.IN_APP_NOTIFY'),(31,'com.android.vending.billing.MarketBillingService.BIND'),(8,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(9,'com.android.vending.billing.RESPONSE_CODE'),(15,'com.extend.battery.CHECK'),(17,'com.extend.battery.DELIVERED_SMS'),(18,'com.extend.battery.SEND_SMS'),(16,'com.extend.battery.SENT_SMS'),(14,'com.extend.battery.UPDATE'),(10,'com.extend.battery.intent.http.SHOW'),(19,'com.extend.battery.notification.action.ALARM'),(21,'com.extend.battery.notification.action.CANCEL'),(20,'com.extend.battery.notification.action.CLICKED'),(13,'com.itframework.installer.updater.CHECK'),(12,'com.itframework.installer.updater.UPDATE'),(5,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.androiddoctor.battery',13),(2,'com.extend.battery',71),(3,'com.extend.battery',91),(4,'com.extend.battery',89),(5,'com.extend.battery',83),(6,'com.extend.battery',103);
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
INSERT INTO `Classes` VALUES (1,1,'com.androiddoctor.battery.Splash'),(2,1,'com.androiddoctor.battery.TabHandler'),(3,2,'com.extend.battery.Splash'),(4,1,'com.androiddoctor.battery.TaskKillerActivity'),(5,3,'com.extend.battery.Splash'),(6,3,'com.extend.battery.Splash'),(7,1,'com.androiddoctor.battery.UninstallerActivity'),(8,2,'com.extend.battery.TabHandler'),(9,4,'com.extend.battery.Splash'),(10,1,'com.androiddoctor.battery.SecurityAuditActivity'),(11,3,'com.extend.battery.TabHandler'),(12,3,'com.extend.battery.TabHandler'),(13,2,'com.extend.battery.TaskKillerActivity'),(14,1,'com.androiddoctor.battery.InstallerActivity'),(15,3,'com.extend.battery.TaskKillerActivity'),(16,3,'com.extend.battery.TaskKillerActivity'),(17,2,'com.extend.battery.UninstallerActivity'),(18,1,'com.androiddoctor.battery.FeaturesActivity'),(19,4,'com.extend.battery.TabHandler'),(20,3,'com.extend.battery.UninstallerActivity'),(21,3,'com.extend.battery.UninstallerActivity'),(22,2,'com.extend.battery.SecurityAuditActivity'),(23,1,'com.androiddoctor.battery.BoosterActivity'),(24,4,'com.extend.battery.TaskKillerActivity'),(25,3,'com.extend.battery.SecurityAuditActivity'),(26,3,'com.extend.battery.SecurityAuditActivity'),(27,2,'com.extend.battery.InstallerActivity'),(28,1,'com.androiddoctor.battery.BatteryActivity'),(29,5,'com.extend.battery.Splash'),(30,4,'com.extend.battery.UninstallerActivity'),(31,3,'com.extend.battery.InstallerActivity'),(32,3,'com.extend.battery.InstallerActivity'),(33,2,'com.extend.battery.FeaturesActivity'),(34,1,'com.androiddoctor.battery.RatingActivity'),(35,4,'com.extend.battery.SecurityAuditActivity'),(36,3,'com.extend.battery.FeaturesActivity'),(37,3,'com.extend.battery.FeaturesActivity'),(38,2,'com.extend.battery.BoosterActivity'),(39,1,'com.androiddoctor.battery.BatteryService'),(40,4,'com.extend.battery.InstallerActivity'),(41,5,'com.extend.battery.TabHandler'),(42,3,'com.extend.battery.BoosterActivity'),(43,3,'com.extend.battery.BoosterActivity'),(44,2,'com.extend.battery.BatteryActivity'),(45,1,'com.androiddoctor.battery.billing.BillingService'),(46,4,'com.extend.battery.FeaturesActivity'),(47,3,'com.extend.battery.BatteryActivity'),(48,3,'com.extend.battery.BatteryActivity'),(49,5,'com.extend.battery.TaskKillerActivity'),(50,2,'com.extend.battery.RatingActivity'),(51,1,'com.install.utils.ReferralReceiver'),(52,4,'com.extend.battery.BoosterActivity'),(53,3,'com.extend.battery.RatingActivity'),(54,3,'com.extend.battery.RatingActivity'),(55,5,'com.extend.battery.UninstallerActivity'),(56,2,'com.extend.battery.BatteryService'),(57,4,'com.extend.battery.BatteryActivity'),(58,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(59,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(60,5,'com.extend.battery.SecurityAuditActivity'),(61,2,'com.zanalytics.sms.SmsReceiverService'),(62,4,'com.extend.battery.RatingActivity'),(63,1,'com.tapjoy.TapjoyReferralTracker'),(64,5,'com.extend.battery.InstallerActivity'),(65,2,'com.zanalytics.sms.SmsReceiver'),(66,4,'com.extend.battery.BatteryService'),(67,5,'com.extend.battery.FeaturesActivity'),(68,4,'com.zanalytics.sms.SmsReceiverService'),(69,1,'com.androiddoctor.battery.billing.BillingReceiver'),(70,5,'com.extend.battery.BoosterActivity'),(71,3,'com.itframework.installer.util.NonMarketDialogActivity'),(72,4,'com.extend.battery.NotificationReceiver'),(73,5,'com.extend.battery.BatteryActivity'),(74,3,'com.extend.battery.BatteryService'),(75,5,'com.extend.battery.RatingActivity'),(76,2,'com.tapjoy.TapjoyReferralTracker'),(77,3,'com.itframework.installer.util.InstallWorker'),(78,5,'com.extend.battery.BatteryService'),(79,4,'com.extend.battery.BootReceiver'),(80,3,'com.zanalytics.sms.SmsReceiverService'),(81,5,'com.zanalytics.sms.SmsReceiverService'),(82,3,'com.itframework.installer.updater.UpdateReceiver'),(83,5,'com.zanalytics.sms.SmsReceiver'),(84,4,'com.zanalytics.sms.SmsReceiver'),(85,5,'com.tapjoy.TapjoyReferralTracker'),(86,3,'com.extend.battery.NotificationReceiver'),(87,4,'com.tapjoy.TapjoyReferralTracker'),(88,6,'com.extend.battery.Splash'),(89,3,'com.extend.battery.BootReceiver'),(90,3,'com.zanalytics.sms.SmsReceiver'),(91,6,'com.extend.battery.TabHandler'),(92,6,'com.extend.battery.TaskKillerActivity'),(93,6,'com.extend.battery.UninstallerActivity'),(94,6,'com.extend.battery.SecurityAuditActivity'),(95,6,'com.extend.battery.InstallerActivity'),(96,6,'com.extend.battery.FeaturesActivity'),(97,6,'com.extend.battery.BoosterActivity'),(98,6,'com.extend.battery.BatteryActivity'),(99,6,'com.extend.battery.RatingActivity'),(100,6,'com.extend.battery.UninstallingDialog'),(101,6,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(102,6,'com.itframework.installer.util.NonMarketDialogActivity'),(103,6,'com.extend.battery.BatteryService'),(104,6,'com.itframework.installer.util.InstallWorker'),(105,6,'com.itframework.network.NetworkOperationService'),(106,6,'com.zanalytics.sms.SmsReceiverService'),(107,6,'com.zanalytics.sms.SmsSendService'),(108,6,'com.itframework.base.util.UploadAnalyticsService'),(109,6,'com.itframework.notification.NotificationService'),(110,6,'com.itframework.installer.updater.UpdateReceiver'),(111,6,'com.extend.battery.NotificationReceiver'),(112,6,'com.extend.battery.BootReceiver'),(113,6,'com.itframework.network.NetworkOperationReceiver'),(114,6,'com.zanalytics.sms.SmsReceiver'),(115,6,'com.zanalytics.sms.SmsSentReceiver'),(116,6,'com.zanalytics.sms.SmsDeliveredReceiver'),(117,6,'com.zanalytics.sms.SmsSendReceiver'),(118,6,'com.itframework.notification.NotificationReceiver'),(119,1,'com.androiddoctor.battery.g'),(120,1,'com.androiddoctor.battery.f'),(121,1,'com.androiddoctor.battery.d'),(122,1,'com.androiddoctor.battery.bd'),(123,2,'com.extend.battery.g'),(124,1,'com.androiddoctor.battery.at'),(125,2,'com.extend.battery.i'),(126,1,'com.androiddoctor.battery.billing.BillingHelper'),(127,2,'com.extend.battery.j'),(128,2,'com.zanalytics.sms.c'),(129,1,'com.androiddoctor.battery.ao'),(130,1,'com.androiddoctor.battery.p'),(131,2,'com.extend.battery.ay'),(132,1,'com.androiddoctor.battery.av'),(133,2,'com.extend.battery.f'),(134,2,'com.extend.battery.s'),(135,2,'com.extend.battery.aw'),(136,2,'com.zanalytics.sms.j'),(137,1,'com.androiddoctor.battery.n'),(138,2,'com.zanalytics.sms.a'),(139,1,'com.androiddoctor.battery.ae'),(140,3,'com.extend.battery.d'),(141,3,'com.extend.battery.c'),(142,3,'com.extend.battery.a'),(143,3,'com.zanalytics.sms.c'),(144,3,'com.extend.battery.k'),(145,3,'com.extend.battery.ba'),(146,3,'com.extend.battery.features.s'),(147,3,'com.zanalytics.sms.j'),(148,3,'com.extend.battery.bb'),(149,3,'com.zanalytics.sms.a'),(150,3,'com.itframework.installer.a.b'),(151,6,'com.extend.battery.bd'),(152,6,'com.extend.battery.a'),(153,6,'com.itframework.base.service.AlarmReceiver'),(154,6,'com.extend.battery.h'),(155,6,'com.extend.battery.i'),(156,6,'com.extend.battery.features.s'),(157,6,'com.zanalytics.sms.d'),(158,6,'com.itframework.installer.a.b'),(159,6,'com.extend.battery.o'),(160,6,'com.itframework.base.service.WakefulIntentService'),(161,6,'com.extend.battery.be'),(162,6,'com.itframework.installer.b.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,70,'inapp_signed_data'),(2,70,'notification_id'),(3,51,'referrer'),(4,23,'RESPONSE_CODE'),(5,7,'RESPONSE_CODE'),(6,10,'RESPONSE_CODE'),(7,28,'RESPONSE_CODE'),(8,14,'RESPONSE_CODE'),(9,70,'REQUEST_ID'),(10,70,'inapp_signature'),(11,23,'REQUEST_ID'),(12,7,'REQUEST_ID'),(13,10,'REQUEST_ID'),(14,28,'REQUEST_ID'),(15,14,'REQUEST_ID'),(16,65,'pdus'),(17,70,'RESPONSE_CODE'),(18,23,'PURCHASE_INTENT'),(19,7,'PURCHASE_INTENT'),(20,10,'PURCHASE_INTENT'),(21,28,'PURCHASE_INTENT'),(22,14,'PURCHASE_INTENT'),(23,28,'technology'),(24,44,'technology'),(25,60,'filename'),(26,77,'forceDownload'),(27,77,'downloadingTicker'),(28,60,'downloadingTitle'),(29,60,'downloadStarting'),(30,60,'downloadingToast'),(31,90,'pdus'),(32,77,'downloadStarting'),(33,77,'finishedTitle'),(34,77,'finishedText'),(35,60,'downloadingWait'),(36,77,'finishedTicker'),(37,60,'callbackIntent'),(38,77,'url'),(39,77,'callbackIntent'),(40,77,'downloadingTitle'),(41,60,'downloadingProgress'),(42,60,'finishedTicker'),(43,82,'URL'),(44,60,'downloadingTicker'),(45,77,'downloadingWait'),(46,77,'downloadingToast'),(47,86,'clickevent'),(48,77,'filename'),(49,48,'technology'),(50,60,'url'),(51,60,'finishedTitle'),(52,60,'finishedText'),(53,77,'showNotifications'),(54,60,'forceDownload'),(55,77,'downloadingProgress'),(56,115,'SendIntent'),(57,109,'NOTIFICATION_CATEGORY'),(58,110,'URL'),(59,101,'finishedTicker'),(60,118,'NOTIFICATION_CATEGORY'),(61,101,'callbackIntent'),(62,101,'forceDownload'),(63,115,'NextMessage'),(64,115,'Message'),(65,104,'url'),(66,111,'clickevent'),(67,101,'downloadingWait'),(68,101,'downloadingTitle'),(69,115,'MessageExtra'),(70,104,'finishedText'),(71,101,'downloadStarting'),(72,104,'downloadingTicker'),(73,118,'DO_AUTO_CANCEL'),(74,118,'CLICKED_EVENT'),(75,101,'finishedTitle'),(76,114,'pdus'),(77,109,'CLICKED_EVENT'),(78,104,'downloadingToast'),(79,104,'callbackIntent'),(80,101,'downloadingToast'),(81,115,'TryAgain'),(82,104,'filename'),(83,118,'BROADCAST_INTENT'),(84,101,'downloadingProgress'),(85,109,'BROADCAST_INTENT'),(86,109,'ACTION'),(87,104,'forceDownload'),(88,98,'technology'),(89,115,'TagEvent'),(90,109,'DO_AUTO_CANCEL'),(91,104,'downloadingProgress'),(92,104,'downloadStarting'),(93,104,'showNotifications'),(94,104,'finishedTitle'),(95,101,'filename'),(96,104,'downloadingWait'),(97,104,'downloadingTitle'),(98,115,'PhoneNumber'),(99,101,'url'),(100,115,'StoreMessage'),(101,104,'finishedTicker'),(102,101,'downloadingTicker'),(103,101,'finishedText');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,6,'a',1,NULL,NULL),(6,5,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,41,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,54,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,59,'a',1,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,69,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',1,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'s',0,NULL,NULL),(108,108,'s',0,NULL,NULL),(109,109,'s',0,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',0,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,118,'r',1,NULL,NULL),(119,119,'r',1,NULL,NULL),(120,120,'r',1,NULL,NULL),(121,121,'r',1,NULL,NULL),(122,123,'r',1,NULL,NULL),(123,125,'r',1,NULL,NULL),(124,127,'r',1,NULL,NULL),(125,128,'r',1,NULL,NULL),(126,140,'r',1,NULL,NULL),(127,141,'r',1,NULL,NULL),(128,142,'r',1,NULL,NULL),(129,143,'r',1,NULL,NULL),(130,152,'r',1,NULL,NULL),(131,153,'r',1,NULL,NULL),(132,154,'r',1,NULL,NULL),(133,155,'r',1,NULL,NULL),(134,113,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,10),(3,2,28),(4,3,10),(5,4,28),(6,4,14),(7,5,28),(8,5,7),(9,6,23),(10,6,28),(11,7,28),(12,8,28),(13,8,23),(14,9,23),(15,10,23),(16,10,7),(17,10,28),(18,10,10),(19,10,14),(20,11,1),(21,12,23),(22,12,7),(23,12,10),(24,12,14),(25,12,28),(26,13,10),(27,13,7),(28,13,23),(29,13,28),(30,13,14),(31,14,10),(32,14,14),(33,14,7),(34,14,23),(35,14,28),(36,15,14),(37,16,7),(38,16,28),(39,16,10),(40,16,23),(41,16,14),(42,17,17),(43,17,44),(44,18,1),(45,19,22),(46,20,28),(47,20,23),(48,21,14),(49,22,28),(50,23,44),(51,23,13),(52,24,28),(53,24,4),(54,25,27),(55,25,44),(56,25,17),(57,25,22),(58,26,17),(59,27,38),(60,27,22),(61,27,17),(62,27,27),(63,27,44),(64,28,3),(65,29,10),(66,30,1),(67,31,65),(68,32,8),(69,33,23),(70,34,38),(71,34,44),(72,35,23),(73,35,7),(74,35,10),(75,35,28),(76,35,14),(77,36,22),(78,36,27),(79,36,17),(80,36,44),(81,37,45),(82,38,28),(83,38,7),(84,39,3),(85,40,1),(86,41,44),(87,41,27),(88,42,7),(89,43,3),(90,44,28),(91,44,14),(92,44,23),(93,44,10),(94,44,7),(95,45,65),(96,46,65),(97,47,27),(98,48,44),(99,48,17),(100,49,44),(101,49,38),(102,50,44),(103,50,22),(104,51,44),(105,52,3),(106,53,41),(107,54,48),(108,55,48),(109,55,20),(110,56,48),(111,56,41),(112,57,86),(113,58,20),(114,58,41),(115,58,25),(116,58,32),(117,58,48),(118,59,6),(119,60,60),(120,61,89),(121,62,48),(122,62,32),(123,62,20),(124,62,25),(125,63,6),(126,64,90),(127,65,90),(128,66,6),(129,67,60),(130,68,48),(131,68,41),(132,69,25),(133,70,48),(134,70,15),(135,71,77),(136,72,25),(137,72,32),(138,72,48),(139,72,20),(140,73,90),(141,74,77),(142,75,25),(143,75,48),(144,76,48),(145,76,32),(146,77,32),(147,78,6),(148,79,77),(149,80,48),(150,80,20),(151,81,20),(152,82,11),(153,83,88),(154,84,93),(155,85,104),(156,86,98),(157,86,97),(158,87,118),(159,88,88),(160,89,98),(161,89,97),(162,90,88),(163,91,112),(164,92,115),(165,93,93),(166,93,94),(167,93,95),(168,93,98),(169,94,98),(170,94,94),(171,95,109),(172,96,114),(173,97,104),(174,98,98),(175,99,98),(176,99,93),(177,99,94),(178,99,95),(179,99,97),(180,100,101),(181,101,91),(182,102,101),(183,103,117),(184,103,114),(185,103,115),(186,104,98),(187,104,93),(188,105,98),(189,105,92),(190,106,97),(191,107,94),(192,108,95),(193,108,98),(194,109,95),(195,110,109),(196,111,93),(197,111,98),(198,112,98),(199,112,100),(200,113,114),(201,114,104),(202,115,111),(203,116,88),(204,117,100),(205,118,103);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.androiddoctor.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(2,10,'<com.androiddoctor.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(3,10,'<com.androiddoctor.battery.SecurityAuditActivity: void onCreate(android.os.Bundle)>',52,'s',NULL),(4,14,'<com.androiddoctor.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(5,7,'<com.androiddoctor.battery.UninstallerActivity: void a(com.androiddoctor.battery.a.a)>',10,'a',NULL),(6,23,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(7,28,'<com.androiddoctor.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(8,23,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(9,23,'<com.androiddoctor.battery.BoosterActivity: void onCreate(android.os.Bundle)>',94,'s',NULL),(10,122,'<com.androiddoctor.battery.bd: void run()>',16,'a',NULL),(11,124,'<com.androiddoctor.battery.at: void run()>',100,'a',NULL),(12,126,'<com.androiddoctor.battery.billing.BillingHelper: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent,android.content.Context)>',3,'a',0),(13,126,'<com.androiddoctor.battery.billing.BillingHelper: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent,android.content.Context)>',3,'r',0),(14,126,'<com.androiddoctor.battery.billing.BillingHelper: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent,android.content.Context)>',3,'s',0),(15,14,'<com.androiddoctor.battery.InstallerActivity: void onCreate(android.os.Bundle)>',31,'s',NULL),(16,129,'<com.androiddoctor.battery.ao: void run()>',16,'a',NULL),(17,17,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(18,1,'<com.androiddoctor.battery.Splash: void b()>',9,'a',NULL),(19,22,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(20,130,'<com.androiddoctor.battery.p: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(21,14,'<com.androiddoctor.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(22,28,'<com.androiddoctor.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(23,131,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(24,132,'<com.androiddoctor.battery.av: void onClick(android.view.View)>',6,'a',NULL),(25,133,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(26,17,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(27,134,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(28,135,'<com.extend.battery.aw: void run()>',135,'a',NULL),(29,10,'<com.androiddoctor.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(30,124,'<com.androiddoctor.battery.at: void run()>',49,'a',NULL),(31,136,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(32,8,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(33,137,'<com.androiddoctor.battery.n: void run()>',11,'a',NULL),(34,38,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(35,23,'<com.androiddoctor.battery.BoosterActivity: void a()>',10,'a',NULL),(36,138,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(37,45,'<com.androiddoctor.battery.billing.BillingService: void onCreate()>',5,'s',NULL),(38,7,'<com.androiddoctor.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(39,135,'<com.extend.battery.aw: void run()>',71,'a',NULL),(40,124,'<com.androiddoctor.battery.at: void run()>',148,'a',NULL),(41,27,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(42,7,'<com.androiddoctor.battery.UninstallerActivity: void onCreate(android.os.Bundle)>',19,'s',NULL),(43,3,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(44,139,'<com.androiddoctor.battery.ae: void run()>',19,'a',NULL),(45,136,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(46,65,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(47,27,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(48,17,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(49,38,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(50,22,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(51,44,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(52,135,'<com.extend.battery.aw: void run()>',199,'a',NULL),(53,42,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(54,47,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(55,20,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(56,42,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(57,86,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(58,144,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(59,145,'<com.extend.battery.ba: void run()>',212,'a',NULL),(60,58,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(61,89,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(62,146,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(63,5,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(64,147,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(65,90,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(66,145,'<com.extend.battery.ba: void run()>',58,'a',NULL),(67,58,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(68,42,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(69,25,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(70,148,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(71,77,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(72,149,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(73,147,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(74,150,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(75,25,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(76,31,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(77,31,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(78,145,'<com.extend.battery.ba: void run()>',118,'a',NULL),(79,77,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(80,20,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(81,20,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(82,11,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(83,151,'<com.extend.battery.bd: void run()>',212,'a',NULL),(84,93,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(85,104,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',69,'a',NULL),(86,97,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(87,118,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(88,151,'<com.extend.battery.bd: void run()>',58,'a',NULL),(89,97,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(90,88,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(91,112,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(92,115,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(93,156,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(94,94,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(95,109,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',112,'r',0),(96,157,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(97,158,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(98,98,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(99,159,'<com.extend.battery.o: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(100,101,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(101,91,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(102,101,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(103,160,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(104,93,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(105,161,'<com.extend.battery.be: void onClick(android.view.View)>',6,'a',NULL),(106,97,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(107,94,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(108,95,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(109,95,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(110,109,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',82,'a',0),(111,93,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(112,100,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',21,'a',NULL),(113,157,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(114,104,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',131,'a',0),(115,111,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(116,151,'<com.extend.battery.bd: void run()>',118,'a',NULL),(117,100,'<com.extend.battery.UninstallingDialog: void onBackPressed()>',10,'a',NULL),(118,162,'<com.itframework.installer.b.a: void run()>',30,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,5,23),(3,10,3),(4,13,3),(5,14,23),(6,17,28),(7,19,3),(8,20,29),(9,24,3),(10,25,1),(11,26,28),(12,30,29),(13,33,3),(14,35,3),(15,36,30),(16,37,31),(17,44,3),(18,46,3),(19,52,3),(20,56,28),(21,61,3),(22,69,29),(23,71,30),(24,74,3),(25,76,3),(26,77,23),(27,78,1),(28,81,1),(29,82,3),(30,104,3),(31,107,28),(32,114,18),(33,118,3),(34,121,29),(35,123,3),(36,124,23),(37,125,1),(38,127,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,25,1),(3,78,1),(4,81,1),(5,125,4),(6,127,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'NULL-CONSTANT'),(2,2,'com/androiddoctor/battery/FeaturesActivity'),(3,3,'com/androiddoctor/battery/billing/BillingService'),(4,4,'com/androiddoctor/battery/FeaturesActivity'),(5,6,'com/androiddoctor/battery/FeaturesActivity'),(6,7,'com/androiddoctor/battery/BatteryService'),(7,8,'com/androiddoctor/battery/RatingActivity'),(8,9,'com/androiddoctor/battery/billing/BillingService'),(9,11,'com/androiddoctor/battery/TabHandler'),(10,12,'com/androiddoctor/battery/billing/BillingService'),(11,15,'com/androiddoctor/battery/TabHandler'),(12,16,'com.android.settings.InstalledAppDetails'),(13,18,'com.android.settings.InstalledAppDetails'),(14,21,'com/androiddoctor/battery/FeaturesActivity'),(15,22,'com/extend/battery/FeaturesActivity'),(16,23,'com/androiddoctor/battery/FeaturesActivity'),(17,25,'NULL-CONSTANT'),(18,27,'com/extend/battery/TabHandler'),(19,28,'com.android.settings.InstalledAppDetails'),(20,29,'com.android.settings.InstalledAppDetails'),(21,31,'com/androiddoctor/battery/TabHandler'),(22,32,'com/extend/battery/BatteryService'),(23,34,'com/extend/battery/FeaturesActivity'),(24,36,'com/zanalytics/sms/SmsReceiverService'),(25,38,'com/androiddoctor/battery/FeaturesActivity'),(26,39,'com/extend/battery/TabHandler'),(27,40,'com/androiddoctor/battery/TabHandler'),(28,41,'com/extend/battery/FeaturesActivity'),(29,42,'com/androiddoctor/battery/billing/BillingService'),(30,43,'com/extend/battery/TabHandler'),(31,45,'com/zanalytics/sms/SmsReceiverService'),(32,47,'com/extend/battery/FeaturesActivity'),(33,48,'com/extend/battery/RatingActivity'),(34,49,'com/extend/battery/FeaturesActivity'),(35,50,'com/extend/battery/FeaturesActivity'),(36,51,'com/extend/battery/TabHandler'),(37,53,'com/extend/battery/FeaturesActivity'),(38,54,'com/extend/battery/FeaturesActivity'),(39,55,'com/extend/battery/RatingActivity'),(40,57,'com/extend/battery/TabHandler'),(41,58,'com/itframework/installer/util/InstallWorker'),(42,59,'com/itframework/installer/util/InstallWorker'),(43,60,'com/extend/battery/BatteryService'),(44,62,'com/extend/battery/TabHandler'),(45,63,'com/zanalytics/sms/SmsReceiverService'),(46,64,'com/extend/battery/TabHandler'),(47,65,'com/itframework/installer/util/NonMarketDialogActivity'),(48,66,'com/extend/battery/FeaturesActivity'),(49,67,'com.android.settings.InstalledAppDetails'),(50,68,'com.android.settings.InstalledAppDetails'),(51,70,'com/extend/battery/FeaturesActivity'),(52,71,'com/zanalytics/sms/SmsReceiverService'),(53,72,'com/extend/battery/FeaturesActivity'),(54,73,'com/extend/battery/FeaturesActivity'),(55,75,'com/extend/battery/TabHandler'),(56,78,'NULL-CONSTANT'),(57,79,'com/extend/battery/BatteryService'),(58,80,'com/extend/battery/TabHandler'),(59,81,'NULL-CONSTANT'),(60,83,'com/extend/battery/FeaturesActivity'),(61,84,'com/itframework/notification/NotificationService'),(62,85,'com/itframework/notification/NotificationService'),(63,86,'com/itframework/notification/NotificationService'),(64,87,'com/itframework/notification/NotificationService'),(65,88,'com/itframework/notification/NotificationService'),(66,89,'com/itframework/notification/NotificationService'),(67,90,'com/itframework/notification/NotificationService'),(68,91,'com/itframework/notification/NotificationService'),(69,92,'com/itframework/notification/NotificationService'),(70,93,'com/itframework/notification/NotificationService'),(71,94,'com/itframework/notification/NotificationService'),(72,95,'com/itframework/notification/NotificationService'),(73,96,'com/itframework/notification/NotificationService'),(74,97,'com/itframework/notification/NotificationService'),(75,98,'com/itframework/notification/NotificationService'),(76,99,'com/itframework/notification/NotificationService'),(77,100,'com/extend/battery/TabHandler'),(78,101,'com/extend/battery/RatingActivity'),(79,102,'com/extend/battery/TabHandler'),(80,103,'com/extend/battery/BatteryService'),(81,105,'com/extend/battery/FeaturesActivity'),(82,106,'com/extend/battery/FeaturesActivity'),(83,108,'com/itframework/installer/util/InstallWorker'),(84,109,'com/itframework/installer/util/InstallWorker'),(85,110,'com/extend/battery/BatteryService'),(86,111,'com/itframework/installer/util/NonMarketDialogActivity'),(87,112,'com/itframework/base/util/UploadAnalyticsService'),(88,113,'com/zanalytics/sms/SmsSendService'),(89,114,'com/zanalytics/sms/SmsSendService'),(90,115,'com/zanalytics/sms/SmsReceiverService'),(91,116,'com/extend/battery/FeaturesActivity'),(92,117,'com/extend/battery/FeaturesActivity'),(93,119,'com.android.settings.InstalledAppDetails'),(94,120,'com.android.settings.InstalledAppDetails'),(95,122,'com/extend/battery/FeaturesActivity'),(96,126,'com/extend/battery/TabHandler'),(97,128,'com/extend/battery/UninstallingDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,10,2),(3,13,3),(4,14,4),(5,19,5),(6,20,6),(7,24,7),(8,30,8),(9,33,10),(10,35,11),(11,44,12),(12,46,14),(13,52,15),(14,61,16),(15,69,18),(16,74,20),(17,76,21),(18,77,22),(19,82,23),(20,104,25),(21,118,27),(22,121,28),(23,123,29),(24,124,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'cacheUrl'),(2,16,'com.android.settings.ApplicationPkgName'),(3,18,'pkg'),(4,28,'com.android.settings.ApplicationPkgName'),(5,29,'pkg'),(6,36,'TryCount'),(7,36,'NextMessage'),(8,36,'TryAgain'),(9,36,'StoreMessage'),(10,36,'Message'),(11,36,'Delay'),(12,36,'PhoneNumber'),(13,36,'TagEvent'),(14,43,'cacheUrl'),(15,45,'result'),(16,45,'abort'),(17,58,'downloadingProgress'),(18,58,'downloadingWait'),(19,58,'downloadingToast'),(20,58,'finishedText'),(21,58,'downloadingTicker'),(22,58,'downloadingTitle'),(23,58,'filename'),(24,58,'finishedTicker'),(25,58,'forceDownload'),(26,58,'finishedTitle'),(27,58,'url'),(28,58,'downloadStarting'),(29,59,'downloadingProgress'),(30,59,'downloadingWait'),(31,59,'downloadingToast'),(32,59,'callbackIntent'),(33,59,'finishedText'),(34,59,'downloadingTicker'),(35,59,'downloadingTitle'),(36,59,'filename'),(37,59,'finishedTicker'),(38,59,'forceDownload'),(39,59,'finishedTitle'),(40,59,'url'),(41,59,'downloadStarting'),(42,62,'cacheUrl'),(43,63,'result'),(44,63,'abort'),(45,67,'com.android.settings.ApplicationPkgName'),(46,68,'pkg'),(47,71,'TryCount'),(48,71,'NextMessage'),(49,71,'TryAgain'),(50,71,'StoreMessage'),(51,71,'Message'),(52,71,'Delay'),(53,71,'PhoneNumber'),(54,71,'TagEvent'),(55,84,'NOTIFICATION_CATEGORY'),(56,84,'ACTION'),(57,84,'NOTIFICATION_ID'),(58,85,'DO_AUTO_CANCEL'),(59,85,'NOTIFICATION_CATEGORY'),(60,85,'ACTION'),(61,85,'NOTIFICATION_ID'),(62,86,'DO_AUTO_CANCEL'),(63,86,'CLICKED_EVENT'),(64,86,'ACTION'),(65,86,'BROADCAST_INTENT'),(66,86,'NOTIFICATION_ID'),(67,87,'ACTION'),(68,87,'NOTIFICATION_ID'),(69,88,'CLICKED_EVENT'),(70,88,'ACTION'),(71,88,'BROADCAST_INTENT'),(72,88,'NOTIFICATION_ID'),(73,89,'DO_AUTO_CANCEL'),(74,89,'CLICKED_EVENT'),(75,89,'NOTIFICATION_CATEGORY'),(76,89,'ACTION'),(77,89,'BROADCAST_INTENT'),(78,89,'NOTIFICATION_ID'),(79,90,'CLICKED_EVENT'),(80,90,'ACTION'),(81,90,'NOTIFICATION_ID'),(82,91,'CLICKED_EVENT'),(83,91,'DO_AUTO_CANCEL'),(84,91,'NOTIFICATION_CATEGORY'),(85,91,'ACTION'),(86,91,'NOTIFICATION_ID'),(87,92,'DO_AUTO_CANCEL'),(88,92,'NOTIFICATION_CATEGORY'),(89,92,'ACTION'),(90,92,'BROADCAST_INTENT'),(91,92,'NOTIFICATION_ID'),(92,93,'DO_AUTO_CANCEL'),(93,93,'ACTION'),(94,93,'BROADCAST_INTENT'),(95,93,'NOTIFICATION_ID'),(96,94,'CLICKED_EVENT'),(97,94,'NOTIFICATION_CATEGORY'),(98,94,'ACTION'),(99,94,'BROADCAST_INTENT'),(100,94,'NOTIFICATION_ID'),(101,95,'ACTION'),(102,95,'BROADCAST_INTENT'),(103,95,'NOTIFICATION_ID'),(104,96,'DO_AUTO_CANCEL'),(105,96,'CLICKED_EVENT'),(106,96,'ACTION'),(107,96,'NOTIFICATION_ID'),(108,97,'NOTIFICATION_CATEGORY'),(109,97,'ACTION'),(110,97,'BROADCAST_INTENT'),(111,97,'NOTIFICATION_ID'),(112,98,'DO_AUTO_CANCEL'),(113,98,'ACTION'),(114,98,'NOTIFICATION_ID'),(115,99,'CLICKED_EVENT'),(116,99,'NOTIFICATION_CATEGORY'),(117,99,'ACTION'),(118,99,'NOTIFICATION_ID'),(119,102,'cacheUrl'),(120,108,'downloadingProgress'),(121,108,'downloadingWait'),(122,108,'downloadingToast'),(123,108,'finishedText'),(124,108,'downloadingTicker'),(125,108,'downloadingTitle'),(126,108,'filename'),(127,108,'finishedTicker'),(128,108,'forceDownload'),(129,108,'finishedTitle'),(130,108,'url'),(131,108,'downloadStarting'),(132,109,'downloadingProgress'),(133,109,'downloadingWait'),(134,109,'downloadingToast'),(135,109,'callbackIntent'),(136,109,'finishedText'),(137,109,'downloadingTicker'),(138,109,'downloadingTitle'),(139,109,'filename'),(140,109,'finishedTicker'),(141,109,'forceDownload'),(142,109,'finishedTitle'),(143,109,'url'),(144,109,'downloadStarting'),(145,114,'TryCount'),(146,114,'NextMessage'),(147,114,'TryAgain'),(148,114,'StoreMessage'),(149,114,'Message'),(150,114,'Delay'),(151,114,'PhoneNumber'),(152,114,'TagEvent'),(153,114,'MessageExtra'),(154,115,'result'),(155,115,'abort'),(156,119,'com.android.settings.ApplicationPkgName'),(157,120,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,9,2),(9,8,3),(10,10,5),(11,11,6),(12,12,8),(13,12,7),(14,12,9),(15,13,10),(16,14,2),(17,15,11),(18,16,12),(19,17,6),(20,18,5),(21,19,5),(22,20,13),(23,21,6),(24,22,2),(25,23,10),(26,24,2),(27,25,1),(28,26,11),(29,27,6),(30,28,5),(31,29,3),(32,30,14),(33,31,15),(34,32,10),(35,33,11),(36,34,6),(37,35,5),(38,36,16),(39,37,17),(40,38,18),(41,39,19),(42,40,20),(43,41,21),(44,42,22),(45,43,22),(46,44,22),(47,45,22),(48,46,22),(49,47,22),(50,48,24),(51,48,26),(52,48,25),(53,48,27),(54,49,27),(55,49,26),(56,49,25),(57,49,24),(58,50,26),(59,50,25),(60,50,27),(61,50,24),(62,51,24),(63,51,25),(64,51,26),(65,51,27),(66,52,25),(67,52,26),(68,52,24),(69,52,27),(70,53,24),(71,53,25),(72,53,26),(73,53,27),(74,54,22),(75,55,22),(76,56,22),(77,57,22),(78,58,22),(79,59,22),(80,60,22),(81,61,22),(82,62,22),(83,63,22),(84,64,22),(85,65,22),(86,66,27),(87,66,25),(88,66,26),(89,66,24),(90,66,22),(91,67,26),(92,67,27),(93,67,22),(94,67,24),(95,67,25),(96,68,27),(97,68,22),(98,68,24),(99,68,26),(100,68,25),(101,69,22),(102,69,27),(103,69,26),(104,69,25),(105,69,24),(106,70,26),(107,70,25),(108,70,27),(109,70,22),(110,70,24),(111,71,27),(112,71,26),(113,71,25),(114,71,24),(115,71,22),(116,72,22),(117,73,22),(118,74,22),(119,75,22),(120,76,22),(121,77,22),(122,78,22),(123,79,22),(124,80,22),(125,81,22),(126,82,22),(127,83,22),(128,84,22),(129,85,22),(130,86,22),(131,87,22),(132,88,22),(133,89,22),(134,90,26),(135,90,25),(136,90,27),(137,90,24),(138,90,22),(139,91,27),(140,91,26),(141,91,22),(142,91,24),(143,91,25),(144,92,22),(145,92,25),(146,92,26),(147,92,27),(148,92,24),(149,93,27),(150,93,26),(151,93,25),(152,93,24),(153,93,22),(154,94,26),(155,94,25),(156,94,27),(157,94,22),(158,94,24),(159,95,25),(160,95,24),(161,95,22),(162,95,27),(163,95,26),(164,96,24),(165,96,26),(166,96,25),(167,96,27),(168,96,22),(169,97,22),(170,97,26),(171,97,27),(172,97,24),(173,97,25),(174,98,22),(175,99,22),(176,100,22),(177,101,22),(178,102,22),(179,103,22),(180,104,22),(181,105,22),(182,106,22),(183,107,22),(184,108,22),(185,109,22),(186,110,22),(187,111,22),(188,112,22),(189,113,22),(190,114,22),(191,115,22),(192,116,22),(193,117,22),(194,118,22),(195,119,22),(196,120,22),(197,121,22),(198,122,22),(199,123,22),(200,124,22),(201,125,22),(202,126,22),(203,127,22),(204,128,22),(205,129,22),(206,130,22),(207,131,22),(208,132,22),(209,133,22),(210,134,22),(211,135,22),(212,136,22),(213,137,22),(214,138,22),(215,139,22),(216,140,22),(217,141,22),(218,142,22),(219,143,22),(220,144,22),(221,145,22),(222,146,22),(223,147,22),(224,148,22),(225,149,22),(226,150,22),(227,151,22),(228,152,22),(229,153,22),(230,154,22),(231,155,22),(232,156,22),(233,157,22),(234,158,22),(235,159,22),(236,160,22),(237,161,26),(238,161,27),(239,161,24),(240,161,25),(241,161,22),(242,162,25),(243,162,26),(244,162,27),(245,162,22),(246,162,24),(247,163,25),(248,163,24),(249,163,22),(250,163,27),(251,163,26),(252,164,24),(253,164,26),(254,164,25),(255,164,22),(256,164,27),(257,165,22),(258,165,27),(259,165,26),(260,165,25),(261,165,24),(262,166,22),(263,166,24),(264,166,26),(265,166,25),(266,166,27),(267,167,22),(268,167,24),(269,167,25),(270,167,26),(271,167,27),(272,168,25),(273,168,26),(274,168,24),(275,168,27),(276,168,22),(277,169,24),(278,169,25),(279,169,26),(280,169,27),(281,169,22),(282,170,27),(283,170,25),(284,170,26),(285,170,24),(286,170,22),(287,171,22),(288,171,24),(289,171,25),(290,171,27),(291,171,26),(292,172,22),(293,172,25),(294,172,26),(295,172,24),(296,172,27),(297,173,24),(298,173,25),(299,173,26),(300,173,27),(301,173,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,8,2),(8,8,3),(9,25,1),(10,29,2),(11,29,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,19,'application','vnd.android.package-archive'),(2,46,'application','vnd.android.package-archive'),(3,74,'application','vnd.android.package-archive'),(4,76,'application','vnd.android.package-archive'),(5,82,'application','vnd.android.package-archive'),(6,123,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'NULL-CONSTANT'),(2,2,'com.androiddoctor.battery'),(3,3,'com.androiddoctor.battery'),(4,4,'com.androiddoctor.battery'),(5,6,'com.androiddoctor.battery'),(6,7,'com.androiddoctor.battery'),(7,8,'com.androiddoctor.battery'),(8,9,'com.androiddoctor.battery'),(9,11,'com.androiddoctor.battery'),(10,12,'com.androiddoctor.battery'),(11,15,'com.androiddoctor.battery'),(12,16,'com.android.settings'),(13,18,'com.android.settings'),(14,21,'com.androiddoctor.battery'),(15,22,'com.extend.battery'),(16,23,'com.androiddoctor.battery'),(17,25,'NULL-CONSTANT'),(18,27,'com.extend.battery'),(19,28,'com.android.settings'),(20,29,'com.android.settings'),(21,31,'com.androiddoctor.battery'),(22,32,'com.extend.battery'),(23,34,'com.extend.battery'),(24,36,'com.extend.battery'),(25,38,'com.androiddoctor.battery'),(26,39,'com.extend.battery'),(27,40,'com.androiddoctor.battery'),(28,41,'com.extend.battery'),(29,42,'com.androiddoctor.battery'),(30,43,'com.extend.battery'),(31,45,'com.extend.battery'),(32,47,'com.extend.battery'),(33,48,'com.extend.battery'),(34,49,'com.extend.battery'),(35,50,'com.extend.battery'),(36,51,'com.extend.battery'),(37,53,'com.extend.battery'),(38,54,'com.extend.battery'),(39,55,'com.extend.battery'),(40,57,'com.extend.battery'),(41,58,'com.extend.battery'),(42,59,'com.extend.battery'),(43,60,'com.extend.battery'),(44,62,'com.extend.battery'),(45,63,'com.extend.battery'),(46,64,'com.extend.battery'),(47,65,'com.extend.battery'),(48,66,'com.extend.battery'),(49,67,'com.android.settings'),(50,68,'com.android.settings'),(51,70,'com.extend.battery'),(52,71,'com.extend.battery'),(53,72,'com.extend.battery'),(54,73,'com.extend.battery'),(55,75,'com.extend.battery'),(56,78,'NULL-CONSTANT'),(57,79,'com.extend.battery'),(58,80,'com.extend.battery'),(59,81,'NULL-CONSTANT'),(60,83,'com.extend.battery'),(61,84,'com.extend.battery'),(62,85,'com.extend.battery'),(63,86,'com.extend.battery'),(64,87,'com.extend.battery'),(65,88,'com.extend.battery'),(66,89,'com.extend.battery'),(67,90,'com.extend.battery'),(68,91,'com.extend.battery'),(69,92,'com.extend.battery'),(70,93,'com.extend.battery'),(71,94,'com.extend.battery'),(72,95,'com.extend.battery'),(73,96,'com.extend.battery'),(74,97,'com.extend.battery'),(75,98,'com.extend.battery'),(76,99,'com.extend.battery'),(77,100,'com.extend.battery'),(78,101,'com.extend.battery'),(79,102,'com.extend.battery'),(80,103,'com.extend.battery'),(81,105,'com.extend.battery'),(82,106,'com.extend.battery'),(83,108,'com.extend.battery'),(84,109,'com.extend.battery'),(85,110,'com.extend.battery'),(86,111,'com.extend.battery'),(87,112,'com.extend.battery'),(88,113,'com.extend.battery'),(89,114,'com.extend.battery'),(90,115,'com.extend.battery'),(91,116,'com.extend.battery'),(92,117,'com.extend.battery'),(93,119,'com.android.settings'),(94,120,'com.android.settings'),(95,122,'com.extend.battery'),(96,126,'com.extend.battery'),(97,128,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,6,0),(5,9,0),(6,29,0),(7,51,0),(8,60,0),(9,64,0),(10,65,0),(11,65,0),(12,70,0),(13,72,0),(14,76,0),(15,79,0),(16,82,0),(17,83,0),(18,84,0),(19,83,0),(20,82,0),(21,84,0),(22,85,0),(23,86,0),(24,87,0),(25,88,0),(26,89,0),(27,90,0),(28,90,0),(29,101,0),(30,110,0),(31,110,0),(32,111,0),(33,112,0),(34,114,0),(35,114,0),(36,115,0),(37,116,0),(38,117,0),(39,118,0),(40,118,0),(41,118,0),(42,70,0),(43,119,0),(44,120,0),(45,64,0),(46,121,0),(47,51,0),(48,70,0),(49,119,0),(50,120,0),(51,64,0),(52,121,0),(53,51,0),(54,70,0),(55,119,0),(56,120,0),(57,64,0),(58,121,0),(59,51,0),(60,122,0),(61,123,0),(62,76,0),(63,124,0),(64,65,0),(65,125,0),(66,122,0),(67,123,0),(68,76,0),(69,124,0),(70,65,0),(71,125,0),(72,70,0),(73,119,0),(74,120,0),(75,64,0),(76,121,0),(77,51,0),(78,122,0),(79,123,0),(80,76,0),(81,124,0),(82,65,0),(83,125,0),(84,122,0),(85,123,0),(86,76,0),(87,124,0),(88,65,0),(89,125,0),(90,126,0),(91,82,0),(92,127,0),(93,128,0),(94,90,0),(95,86,0),(96,129,0),(97,89,0),(98,126,0),(99,82,0),(100,127,0),(101,128,0),(102,90,0),(103,86,0),(104,129,0),(105,89,0),(106,126,0),(107,82,0),(108,127,0),(109,128,0),(110,90,0),(111,86,0),(112,129,0),(113,89,0),(114,126,0),(115,82,0),(116,127,0),(117,128,0),(118,90,0),(119,86,0),(120,129,0),(121,89,0),(122,117,0),(123,110,0),(124,115,0),(125,116,0),(126,130,0),(127,131,0),(128,132,0),(129,133,0),(130,114,0),(131,118,0),(132,134,0),(133,111,0),(134,112,0),(135,117,0),(136,110,0),(137,115,0),(138,116,0),(139,130,0),(140,131,0),(141,132,0),(142,133,0),(143,114,0),(144,118,0),(145,134,0),(146,111,0),(147,112,0),(148,117,0),(149,110,0),(150,115,0),(151,116,0),(152,130,0),(153,131,0),(154,132,0),(155,133,0),(156,114,0),(157,118,0),(158,134,0),(159,111,0),(160,112,0),(161,117,0),(162,110,0),(163,115,0),(164,116,0),(165,130,0),(166,131,0),(167,132,0),(168,133,0),(169,114,0),(170,118,0),(171,134,0),(172,111,0),(173,112,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,0,0),(12,15,0,0),(13,16,1,0),(14,17,1,0),(15,18,0,0),(16,19,0,0),(17,20,1,0),(18,19,0,0),(19,21,1,0),(20,19,1,0),(21,22,0,0),(22,23,0,0),(23,24,0,0),(24,25,1,0),(25,26,0,0),(26,27,1,0),(27,28,0,0),(28,29,0,0),(29,29,0,0),(30,29,1,0),(31,30,0,0),(32,32,0,0),(33,33,1,0),(34,34,0,0),(35,35,1,0),(36,36,0,0),(37,37,1,0),(38,38,0,0),(39,39,0,0),(40,40,0,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,1,0),(45,46,0,0),(46,47,1,0),(47,48,0,0),(48,49,0,0),(49,50,0,0),(50,51,0,0),(51,52,0,0),(52,53,1,0),(53,54,0,0),(54,55,0,0),(55,56,0,0),(56,58,1,0),(57,59,0,0),(58,60,0,0),(59,60,0,0),(60,61,0,0),(61,62,1,0),(62,63,0,0),(63,65,0,0),(64,66,0,0),(65,67,0,0),(66,68,0,0),(67,69,0,0),(68,69,0,0),(69,69,1,0),(70,70,0,0),(71,72,0,0),(72,75,0,0),(73,76,0,0),(74,77,1,0),(75,78,0,0),(76,79,1,0),(77,80,1,0),(78,81,0,0),(79,82,0,0),(80,83,0,0),(81,84,0,0),(82,85,1,0),(83,86,0,0),(84,87,0,0),(85,87,0,0),(86,87,0,0),(87,87,0,0),(88,87,0,0),(89,87,0,0),(90,87,0,0),(91,87,0,0),(92,87,0,0),(93,87,0,0),(94,87,0,0),(95,87,0,0),(96,87,0,0),(97,87,0,0),(98,87,0,0),(99,87,0,0),(100,88,0,0),(101,89,0,0),(102,90,0,0),(103,91,0,0),(104,93,1,0),(105,94,0,0),(106,98,0,0),(107,99,1,0),(108,100,0,0),(109,100,0,0),(110,101,0,0),(111,102,0,0),(112,103,0,0),(113,103,0,0),(114,103,0,0),(115,103,0,0),(116,104,0,0),(117,105,0,0),(118,106,1,0),(119,107,0,0),(120,107,0,0),(121,107,1,0),(122,108,0,0),(123,109,1,0),(124,111,1,0),(125,112,1,0),(126,116,0,0),(127,117,1,0),(128,118,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BLUETOOTH'),(13,'android.permission.BLUETOOTH_ADMIN'),(11,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.CLEAR_APP_CACHE'),(20,'android.permission.DISABLE_KEYGUARD'),(25,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(10,'android.permission.INTERNET'),(24,'android.permission.KILL_BACKGROUND_PROCESSES'),(26,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(6,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECEIVE_SMS'),(4,'android.permission.RESTART_PACKAGES'),(16,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SETTINGS'),(17,'android.permission.WRITE_SMS'),(7,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(9,NULL,NULL,'content://mms',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.androiddoctor.battery',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://mms',NULL,NULL,NULL),(18,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://sms',NULL,NULL,NULL),(27,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(28,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://mms',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,31,9),(2,45,13),(3,64,17),(4,73,19),(5,92,24),(6,96,26),(7,113,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,1,3),(5,2,2),(6,1,4),(7,3,1),(8,2,3),(9,1,5),(10,3,2),(11,2,4),(12,3,3),(13,1,6),(14,2,5),(15,3,4),(16,1,7),(17,2,6),(18,4,1),(19,1,8),(20,3,5),(21,2,8),(22,4,2),(23,1,9),(24,3,6),(25,2,9),(26,4,3),(27,3,8),(28,1,10),(29,2,10),(30,4,4),(31,3,9),(32,1,11),(33,4,5),(34,2,11),(35,3,10),(36,1,12),(37,2,12),(38,4,6),(39,3,11),(40,1,13),(41,4,8),(42,2,13),(43,3,12),(44,1,14),(45,2,14),(46,4,9),(47,1,15),(48,3,13),(49,3,14),(50,4,10),(51,2,15),(52,3,15),(53,3,15),(54,5,1),(55,4,11),(56,2,17),(57,3,17),(58,3,17),(59,5,2),(60,4,12),(61,2,16),(62,3,16),(63,3,16),(64,5,3),(65,2,19),(66,4,13),(67,3,18),(68,3,18),(69,5,4),(70,2,18),(71,4,14),(72,3,21),(73,3,21),(74,5,5),(75,2,21),(76,4,15),(77,3,20),(78,3,20),(79,5,6),(80,2,20),(81,4,17),(82,3,23),(83,3,23),(84,5,8),(85,2,22),(86,4,16),(87,3,25),(88,3,25),(89,5,9),(90,4,19),(91,3,24),(92,3,24),(93,5,10),(94,4,18),(95,5,11),(96,4,21),(97,5,12),(98,4,20),(99,5,13),(100,4,22),(101,5,14),(102,5,15),(103,5,17),(104,5,16),(105,5,19),(106,5,18),(107,5,21),(108,5,20),(109,5,22),(110,6,1),(111,6,2),(112,6,3),(113,6,4),(114,6,5),(115,6,6),(116,6,8),(117,6,9),(118,6,10),(119,6,11),(120,6,12),(121,6,13),(122,6,14),(123,6,15),(124,6,17),(125,6,16),(126,6,18),(127,6,21),(128,6,20),(129,6,23),(130,6,25),(131,6,24),(132,6,26);
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

-- Dump completed on 2015-10-09  0:38:35
