-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_208
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (29,'(.*).SEND_SMS'),(23,'NULL-CONSTANT'),(25,'android.intent.action.BATTERY_CHANGED'),(22,'android.intent.action.BATTERY_LOW'),(19,'android.intent.action.BATTERY_OKAY'),(9,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(28,'android.settings.APPLICATION_DETAILS_SETTINGS'),(27,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'com.android.vending.INSTALL_REFERRER'),(12,'com.extend.battery.CHECK'),(14,'com.extend.battery.DELIVERED_SMS'),(15,'com.extend.battery.SEND_SMS'),(13,'com.extend.battery.SENT_SMS'),(11,'com.extend.battery.UPDATE'),(6,'com.extend.battery.intent.http.SHOW'),(16,'com.extend.battery.notification.action.ALARM'),(18,'com.extend.battery.notification.action.CANCEL'),(17,'com.extend.battery.notification.action.CLICKED'),(24,'com.flurry.android.ACTION_CATALOG'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(8,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',58),(2,'com.extend.battery',91),(3,'com.extend.battery',89),(4,'com.extend.battery',103),(5,'com.androiddoctor.battery',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,2,'com.extend.battery.Splash'),(3,2,'com.extend.battery.TabHandler'),(4,1,'com.extend.battery.TabHandler'),(5,2,'com.extend.battery.TaskKillerActivity'),(6,2,'com.extend.battery.UninstallerActivity'),(7,2,'com.extend.battery.SecurityAuditActivity'),(8,1,'com.extend.battery.TaskKillerActivity'),(9,2,'com.extend.battery.InstallerActivity'),(10,2,'com.extend.battery.InstallerActivity'),(11,2,'com.extend.battery.FeaturesActivity'),(12,1,'com.extend.battery.UninstallerActivity'),(13,2,'com.extend.battery.BoosterActivity'),(14,2,'com.extend.battery.BoosterActivity'),(15,2,'com.extend.battery.BatteryActivity'),(16,1,'com.extend.battery.SecurityAuditActivity'),(17,2,'com.extend.battery.RatingActivity'),(18,2,'com.extend.battery.RatingActivity'),(19,2,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(20,1,'com.extend.battery.InstallerActivity'),(21,1,'com.extend.battery.FeaturesActivity'),(22,1,'com.extend.battery.BoosterActivity'),(23,2,'com.itframework.installer.util.NonMarketDialogActivity'),(24,2,'com.extend.battery.BatteryService'),(25,1,'com.extend.battery.BatteryActivity'),(26,2,'com.itframework.installer.util.InstallWorker'),(27,2,'com.zanalytics.sms.SmsReceiverService'),(28,1,'com.extend.battery.RatingActivity'),(29,2,'com.itframework.installer.updater.UpdateReceiver'),(30,1,'com.extend.battery.BatteryService'),(31,1,'com.zanalytics.sms.SmsReceiverService'),(32,1,'com.zanalytics.sms.SmsReceiver'),(33,2,'com.extend.battery.NotificationReceiver'),(34,2,'com.extend.battery.BootReceiver'),(35,2,'com.zanalytics.sms.SmsReceiver'),(36,1,'com.tapjoy.TapjoyReferralTracker'),(37,3,'com.extend.battery.Splash'),(38,3,'com.extend.battery.TabHandler'),(39,3,'com.extend.battery.TaskKillerActivity'),(40,3,'com.extend.battery.UninstallerActivity'),(41,3,'com.extend.battery.SecurityAuditActivity'),(42,3,'com.extend.battery.InstallerActivity'),(43,3,'com.extend.battery.FeaturesActivity'),(44,3,'com.extend.battery.BoosterActivity'),(45,3,'com.extend.battery.BatteryActivity'),(46,4,'com.extend.battery.Splash'),(47,3,'com.extend.battery.RatingActivity'),(48,3,'com.extend.battery.BatteryService'),(49,4,'com.extend.battery.TabHandler'),(50,3,'com.zanalytics.sms.SmsReceiverService'),(51,4,'com.extend.battery.TaskKillerActivity'),(52,3,'com.extend.battery.NotificationReceiver'),(53,4,'com.extend.battery.UninstallerActivity'),(54,4,'com.extend.battery.SecurityAuditActivity'),(55,3,'com.extend.battery.BootReceiver'),(56,4,'com.extend.battery.InstallerActivity'),(57,5,'com.androiddoctor.battery.Splash'),(58,4,'com.extend.battery.FeaturesActivity'),(59,3,'com.zanalytics.sms.SmsReceiver'),(60,4,'com.extend.battery.BoosterActivity'),(61,5,'com.androiddoctor.battery.TabHandler'),(62,4,'com.extend.battery.BatteryActivity'),(63,4,'com.extend.battery.RatingActivity'),(64,5,'com.androiddoctor.battery.TaskKillerActivity'),(65,3,'com.tapjoy.TapjoyReferralTracker'),(66,4,'com.extend.battery.UninstallingDialog'),(67,5,'com.androiddoctor.battery.UninstallerActivity'),(68,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(69,5,'com.androiddoctor.battery.SecurityAuditActivity'),(70,5,'com.androiddoctor.battery.InstallerActivity'),(71,5,'com.androiddoctor.battery.FeaturesActivity'),(72,4,'com.itframework.installer.util.NonMarketDialogActivity'),(73,5,'com.androiddoctor.battery.BoosterActivity'),(74,4,'com.extend.battery.BatteryService'),(75,5,'com.androiddoctor.battery.BatteryActivity'),(76,4,'com.itframework.installer.util.InstallWorker'),(77,5,'com.androiddoctor.battery.RatingActivity'),(78,4,'com.itframework.network.NetworkOperationService'),(79,5,'com.androiddoctor.battery.BatteryService'),(80,4,'com.zanalytics.sms.SmsReceiverService'),(81,5,'com.mobsqueeze.ReferralReceiver'),(82,4,'com.zanalytics.sms.SmsSendService'),(83,4,'com.itframework.base.util.UploadAnalyticsService'),(84,5,'com.tapjoy.TapjoyReferralTracker'),(85,4,'com.itframework.notification.NotificationService'),(86,4,'com.itframework.installer.updater.UpdateReceiver'),(87,4,'com.extend.battery.NotificationReceiver'),(88,4,'com.extend.battery.BootReceiver'),(89,4,'com.itframework.network.NetworkOperationReceiver'),(90,4,'com.zanalytics.sms.SmsReceiver'),(91,4,'com.zanalytics.sms.SmsSentReceiver'),(92,4,'com.zanalytics.sms.SmsDeliveredReceiver'),(93,4,'com.zanalytics.sms.SmsSendReceiver'),(94,4,'com.itframework.notification.NotificationReceiver'),(95,5,'com.androiddoctor.battery.BatteryService$1'),(96,5,'com.androiddoctor.battery.BatteryActivity$1'),(97,5,'com.androiddoctor.battery.BoosterActivity$1'),(98,5,'com.androiddoctor.battery.Splash$1'),(99,5,'com.flurry.android.u'),(100,1,'com.extend.battery.ay'),(101,5,'com.androiddoctor.battery.InstallerActivity$1'),(102,1,'com.extend.battery.aw'),(103,1,'com.zanalytics.sms.j'),(104,1,'com.extend.battery.g'),(105,1,'com.extend.battery.i'),(106,5,'com.androiddoctor.battery.UninstallerActivity$1'),(107,1,'com.extend.battery.j'),(108,5,'com.androiddoctor.battery.SecurityAuditActivity$1'),(109,1,'com.zanalytics.sms.c'),(110,1,'com.extend.battery.s'),(111,1,'com.zanalytics.sms.a'),(112,5,'com.androiddoctor.battery.BoosterActivity$6'),(113,1,'com.extend.battery.f'),(114,5,'com.androiddoctor.battery.TaskKillerActivity$1'),(115,2,'com.extend.battery.features.s'),(116,2,'com.extend.battery.d'),(117,2,'com.extend.battery.c'),(118,2,'com.extend.battery.a'),(119,2,'com.zanalytics.sms.c'),(120,2,'com.extend.battery.ba'),(121,2,'com.extend.battery.k'),(122,2,'com.zanalytics.sms.j'),(123,2,'com.extend.battery.bb'),(124,2,'com.zanalytics.sms.a'),(125,2,'com.itframework.installer.a.b'),(126,4,'com.zanalytics.sms.d'),(127,4,'com.extend.battery.a'),(128,4,'com.itframework.base.service.AlarmReceiver'),(129,4,'com.extend.battery.h'),(130,4,'com.extend.battery.i'),(131,4,'com.itframework.installer.b.a'),(132,4,'com.extend.battery.bd'),(133,4,'com.extend.battery.features.s'),(134,4,'com.itframework.base.service.WakefulIntentService'),(135,4,'com.itframework.installer.a.b'),(136,4,'com.extend.battery.be'),(137,4,'com.extend.battery.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,81,'referrer'),(2,75,'technology'),(3,32,'pdus'),(4,25,'technology'),(5,15,'technology'),(6,26,'filename'),(7,26,'showNotifications'),(8,26,'downloadingTicker'),(9,19,'finishedTitle'),(10,26,'downloadStarting'),(11,26,'downloadingTitle'),(12,26,'downloadingProgress'),(13,19,'filename'),(14,19,'downloadingTitle'),(15,19,'downloadingToast'),(16,19,'finishedText'),(17,26,'callbackIntent'),(18,26,'forceDownload'),(19,26,'finishedTitle'),(20,26,'finishedTicker'),(21,33,'clickevent'),(22,19,'downloadingWait'),(23,26,'finishedText'),(24,35,'pdus'),(25,29,'URL'),(26,19,'downloadingTicker'),(27,19,'forceDownload'),(28,19,'downloadingProgress'),(29,26,'downloadingToast'),(30,26,'downloadingWait'),(31,19,'callbackIntent'),(32,19,'downloadStarting'),(33,19,'finishedTicker'),(34,19,'url'),(35,26,'url'),(36,68,'downloadingTitle'),(37,76,'downloadStarting'),(38,86,'URL'),(39,76,'url'),(40,85,'CLICKED_EVENT'),(41,76,'finishedTicker'),(42,91,'MessageExtra'),(43,90,'pdus'),(44,68,'forceDownload'),(45,94,'NOTIFICATION_CATEGORY'),(46,76,'downloadingProgress'),(47,94,'CLICKED_EVENT'),(48,87,'clickevent'),(49,76,'finishedText'),(50,85,'ACTION'),(51,85,'DO_AUTO_CANCEL'),(52,85,'BROADCAST_INTENT'),(53,68,'finishedTicker'),(54,76,'downloadingWait'),(55,76,'callbackIntent'),(56,91,'TryAgain'),(57,91,'Message'),(58,91,'TagEvent'),(59,76,'downloadingTitle'),(60,68,'downloadingToast'),(61,94,'BROADCAST_INTENT'),(62,85,'NOTIFICATION_CATEGORY'),(63,62,'technology'),(64,76,'forceDownload'),(65,76,'filename'),(66,68,'finishedTitle'),(67,76,'downloadingTicker'),(68,68,'finishedText'),(69,94,'DO_AUTO_CANCEL'),(70,68,'downloadingProgress'),(71,76,'downloadingToast'),(72,76,'showNotifications'),(73,76,'finishedTitle'),(74,91,'NextMessage'),(75,91,'SendIntent'),(76,68,'url'),(77,68,'downloadingWait'),(78,91,'StoreMessage'),(79,68,'filename'),(80,68,'downloadingTicker'),(81,91,'PhoneNumber'),(82,68,'callbackIntent'),(83,68,'downloadStarting');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,5,'a',0,NULL,NULL),(5,4,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,104,'r',1,NULL,NULL),(99,105,'r',1,NULL,NULL),(100,107,'r',1,NULL,NULL),(101,109,'r',1,NULL,NULL),(102,116,'r',1,NULL,NULL),(103,117,'r',1,NULL,NULL),(104,118,'r',1,NULL,NULL),(105,119,'r',1,NULL,NULL),(106,127,'r',1,NULL,NULL),(107,128,'r',1,NULL,NULL),(108,129,'r',1,NULL,NULL),(109,130,'r',1,NULL,NULL),(110,89,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,75),(2,1,70),(3,2,57),(4,3,75),(5,3,67),(6,4,75),(7,5,70),(8,5,69),(9,5,75),(10,5,67),(11,6,73),(12,6,75),(13,6,70),(14,6,69),(15,6,67),(16,7,25),(17,7,8),(18,8,73),(19,8,69),(20,8,70),(21,8,67),(22,8,75),(23,9,1),(24,10,1),(25,11,32),(26,12,70),(27,13,67),(28,13,70),(29,13,69),(30,13,75),(31,13,73),(32,14,67),(33,14,69),(34,14,70),(35,14,73),(36,14,75),(37,15,22),(38,15,25),(39,16,67),(40,16,75),(41,17,20),(42,17,22),(43,17,16),(44,17,12),(45,17,25),(46,18,57),(47,19,57),(48,20,69),(49,21,16),(50,22,75),(51,22,73),(52,23,12),(53,23,25),(54,23,20),(55,23,16),(56,24,73),(57,24,75),(58,25,75),(59,25,73),(60,26,57),(61,27,32),(62,28,69),(63,28,75),(64,29,25),(65,29,12),(66,30,25),(67,30,12),(68,31,75),(69,32,16),(70,32,25),(71,33,67),(72,34,20),(73,34,25),(74,34,12),(75,34,16),(76,35,75),(77,35,63),(78,36,5),(79,37,12),(80,38,20),(81,39,32),(82,40,25),(83,41,1),(84,42,1),(85,43,20),(86,43,25),(87,44,22),(88,44,25),(89,45,15),(90,45,7),(91,45,6),(92,45,9),(93,46,2),(94,47,2),(95,48,13),(96,49,9),(97,49,15),(98,50,35),(99,51,15),(100,51,6),(101,52,26),(102,53,9),(103,54,2),(104,55,7),(105,55,15),(106,56,19),(107,57,7),(108,57,6),(109,57,15),(110,57,13),(111,57,9),(112,58,3),(113,59,7),(114,60,15),(115,60,13),(116,61,35),(117,62,15),(118,62,13),(119,63,19),(120,64,4),(121,64,15),(122,65,33),(123,66,15),(124,66,6),(125,67,15),(126,67,7),(127,67,6),(128,67,9),(129,68,15),(130,68,6),(131,68,7),(132,68,9),(133,69,26),(134,70,15),(135,71,34),(136,72,26),(137,73,35),(138,74,15),(139,74,7),(140,75,2),(141,76,35),(142,77,33),(143,78,15),(144,78,4),(145,79,19),(146,80,15),(147,80,7),(148,80,9),(149,80,6),(150,81,19),(151,82,26),(152,83,6),(153,84,9),(154,84,15),(155,85,26),(156,86,2),(157,87,35),(158,88,13),(159,89,13),(160,89,15),(161,90,2),(162,91,13),(163,91,15),(164,91,7),(165,91,6),(166,91,9),(167,92,2),(168,93,6),(169,93,15),(170,94,9),(171,95,6),(172,95,15),(173,96,3),(174,97,15),(175,97,13),(176,98,15),(177,99,26),(178,100,7),(179,101,2),(180,102,35),(181,103,34),(182,104,6),(183,105,90),(184,106,54),(185,106,62),(186,107,53),(187,108,85),(188,109,60),(189,109,62),(190,110,62),(191,111,74),(192,112,76),(193,113,85),(194,114,66),(195,115,46),(196,116,56),(197,116,54),(198,116,53),(199,116,62),(200,117,56),(201,117,62),(202,118,60),(203,119,62),(204,119,53),(205,120,93),(206,120,91),(207,120,90),(208,121,87),(209,122,88),(210,123,46),(211,124,53),(212,124,62),(213,125,68),(214,126,76),(215,127,94),(216,128,90),(217,129,62),(218,129,66),(219,130,62),(220,130,51),(221,131,49),(222,132,60),(223,132,62),(224,132,54),(225,132,53),(226,132,56),(227,133,76),(228,134,62),(229,134,60),(230,135,91),(231,136,54),(232,137,56),(233,138,46),(234,139,46),(235,140,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,70,'<com.androiddoctor.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(2,98,'<com.androiddoctor.battery.Splash$1: void run()>',178,'a',NULL),(3,67,'<com.androiddoctor.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(4,75,'<com.androiddoctor.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(5,99,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(6,73,'<com.androiddoctor.battery.BoosterActivity: void AppReferral()>',5,'a',NULL),(7,100,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(8,101,'<com.androiddoctor.battery.InstallerActivity$1: void run()>',13,'a',NULL),(9,102,'<com.extend.battery.aw: void run()>',63,'a',NULL),(10,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(11,103,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(12,70,'<com.androiddoctor.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(13,106,'<com.androiddoctor.battery.UninstallerActivity$1: void run()>',10,'a',NULL),(14,108,'<com.androiddoctor.battery.SecurityAuditActivity$1: void run()>',10,'a',NULL),(15,22,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(16,67,'<com.androiddoctor.battery.UninstallerActivity: void uninstallApp(com.androiddoctor.battery.model.InstalledApplication)>',10,'a',NULL),(17,110,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(18,57,'<com.androiddoctor.battery.Splash: void startApp()>',9,'a',NULL),(19,98,'<com.androiddoctor.battery.Splash$1: void run()>',59,'a',NULL),(20,69,'<com.androiddoctor.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(21,16,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(22,73,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(23,111,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(24,112,'<com.androiddoctor.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(25,73,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(26,98,'<com.androiddoctor.battery.Splash$1: void run()>',120,'a',NULL),(27,32,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',123,'s',NULL),(28,69,'<com.androiddoctor.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(29,12,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(30,12,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(31,75,'<com.androiddoctor.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(32,16,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(33,67,'<com.androiddoctor.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(34,113,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(35,114,'<com.androiddoctor.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(36,4,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(37,12,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(38,20,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(39,103,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(40,25,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(41,102,'<com.extend.battery.aw: void run()>',175,'a',NULL),(42,102,'<com.extend.battery.aw: void run()>',119,'a',NULL),(43,20,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(44,22,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(45,115,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(46,2,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(47,2,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(48,13,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(49,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(50,35,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(51,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(52,26,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(53,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(54,120,'<com.extend.battery.ba: void run()>',212,'a',NULL),(55,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(56,19,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(57,121,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(58,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(59,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(60,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(61,122,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(62,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(63,19,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(64,123,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(65,33,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(66,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(67,124,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(68,115,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(69,125,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(70,15,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(71,34,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(72,26,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(73,122,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(74,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(75,120,'<com.extend.battery.ba: void run()>',118,'a',NULL),(76,35,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(77,33,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(78,123,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(79,19,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(80,124,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(81,19,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(82,125,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(83,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(84,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(85,26,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(86,120,'<com.extend.battery.ba: void run()>',58,'a',NULL),(87,122,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(88,13,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(89,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(90,120,'<com.extend.battery.ba: void run()>',212,'a',NULL),(91,121,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(92,120,'<com.extend.battery.ba: void run()>',58,'a',NULL),(93,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(94,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(95,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(96,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(97,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(98,15,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(99,26,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(100,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(101,120,'<com.extend.battery.ba: void run()>',118,'a',NULL),(102,122,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(103,34,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(104,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(105,126,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(106,54,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(107,53,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(108,85,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',112,'r',0),(109,60,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(110,62,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(111,131,'<com.itframework.installer.b.a: void run()>',30,'a',NULL),(112,76,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',131,'a',0),(113,85,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',82,'a',0),(114,66,'<com.extend.battery.UninstallingDialog: void onBackPressed()>',10,'a',NULL),(115,132,'<com.extend.battery.bd: void run()>',118,'a',NULL),(116,133,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(117,56,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(118,60,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(119,53,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(120,134,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(121,87,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(122,88,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(123,46,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(124,53,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(125,68,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(126,135,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(127,94,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(128,126,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(129,66,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',21,'a',NULL),(130,136,'<com.extend.battery.be: void onClick(android.view.View)>',6,'a',NULL),(131,49,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(132,137,'<com.extend.battery.o: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(133,76,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',69,'a',NULL),(134,60,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(135,91,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(136,54,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(137,56,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(138,132,'<com.extend.battery.bd: void run()>',212,'a',NULL),(139,132,'<com.extend.battery.bd: void run()>',58,'a',NULL),(140,68,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,23),(2,6,23),(3,7,24),(4,8,24),(5,9,2),(6,11,2),(7,14,2),(8,15,2),(9,16,2),(10,18,26),(11,19,27),(12,25,28),(13,27,28),(14,29,29),(15,30,27),(16,35,26),(17,39,1),(18,40,2),(19,43,1),(20,44,2),(21,50,2),(22,53,2),(23,56,26),(24,57,2),(25,58,2),(26,62,27),(27,67,28),(28,73,29),(29,74,2),(30,82,29),(31,84,1),(32,88,2),(33,91,27),(34,94,2),(35,95,26),(36,99,2),(37,103,28),(38,105,1),(39,107,1),(40,111,1),(41,113,2),(42,115,2),(43,119,15),(44,123,26),(45,142,1),(46,145,27),(47,146,2),(48,150,28),(49,151,2);
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
INSERT INTO `ICategories` VALUES (1,5,2),(2,6,2),(3,7,2),(4,8,2),(5,39,1),(6,43,1),(7,84,1),(8,105,1),(9,107,1),(10,111,4),(11,142,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/androiddoctor/battery/FeaturesActivity'),(2,2,'com/androiddoctor/battery/TabHandler'),(3,3,'com/androiddoctor/battery/FeaturesActivity'),(4,4,'com/androiddoctor/battery/BatteryService'),(5,10,'com/extend/battery/FeaturesActivity'),(6,12,'com/extend/battery/TabHandler'),(7,13,'com/extend/battery/TabHandler'),(8,17,'com/extend/battery/RatingActivity'),(9,20,'com/androiddoctor/battery/TabHandler'),(10,21,'com/androiddoctor/battery/TabHandler'),(11,22,'com.android.settings.InstalledAppDetails'),(12,23,'com.android.settings.InstalledAppDetails'),(13,24,'com.android.settings.InstalledAppDetails'),(14,26,'com.android.settings.InstalledAppDetails'),(15,28,'com/androiddoctor/battery/FeaturesActivity'),(16,31,'com/androiddoctor/battery/RatingActivity'),(17,29,'com/zanalytics/sms/SmsReceiverService'),(18,32,'com/androiddoctor/battery/TabHandler'),(19,34,'com/androiddoctor/battery/FeaturesActivity'),(20,33,'com/zanalytics/sms/SmsReceiverService'),(21,36,'com/extend/battery/FeaturesActivity'),(22,37,'com/androiddoctor/battery/FeaturesActivity'),(23,38,'com/extend/battery/FeaturesActivity'),(24,39,'NULL-CONSTANT'),(25,41,'com/androiddoctor/battery/FeaturesActivity'),(26,42,'com/extend/battery/BatteryService'),(27,43,'NULL-CONSTANT'),(28,45,'com/extend/battery/FeaturesActivity'),(29,46,'com/extend/battery/TabHandler'),(30,47,'com/extend/battery/TabHandler'),(31,48,'com/extend/battery/FeaturesActivity'),(32,49,'com/extend/battery/FeaturesActivity'),(33,51,'com/extend/battery/TabHandler'),(34,52,'com/extend/battery/TabHandler'),(35,54,'com/extend/battery/FeaturesActivity'),(36,55,'com/zanalytics/sms/SmsReceiverService'),(37,59,'com/extend/battery/TabHandler'),(38,60,'com/extend/battery/FeaturesActivity'),(39,61,'com/itframework/installer/util/NonMarketDialogActivity'),(40,63,'com/extend/battery/BatteryService'),(41,64,'com.android.settings.InstalledAppDetails'),(42,65,'com.android.settings.InstalledAppDetails'),(43,66,'com/extend/battery/FeaturesActivity'),(44,68,'com/extend/battery/FeaturesActivity'),(45,70,'com/extend/battery/FeaturesActivity'),(46,71,'com/extend/battery/FeaturesActivity'),(47,69,'com/itframework/installer/util/InstallWorker'),(48,72,'com/itframework/installer/util/InstallWorker'),(49,73,'com/zanalytics/sms/SmsReceiverService'),(50,75,'com/extend/battery/FeaturesActivity'),(51,76,'com/extend/battery/BatteryService'),(52,77,'com/extend/battery/FeaturesActivity'),(53,78,'com/extend/battery/TabHandler'),(54,79,'com/zanalytics/sms/SmsReceiverService'),(55,80,'com/extend/battery/FeaturesActivity'),(56,81,'com/itframework/installer/util/NonMarketDialogActivity'),(57,82,'com/zanalytics/sms/SmsReceiverService'),(58,83,'com/itframework/installer/util/InstallWorker'),(59,84,'NULL-CONSTANT'),(60,86,'com/extend/battery/FeaturesActivity'),(61,87,'com/extend/battery/TabHandler'),(62,85,'com/itframework/installer/util/InstallWorker'),(63,89,'com/extend/battery/RatingActivity'),(64,90,'com/extend/battery/TabHandler'),(65,92,'com/extend/battery/TabHandler'),(66,93,'com/extend/battery/FeaturesActivity'),(67,96,'com/extend/battery/BatteryService'),(68,97,'com/extend/battery/RatingActivity'),(69,98,'com/extend/battery/FeaturesActivity'),(70,100,'com.android.settings.InstalledAppDetails'),(71,101,'com.android.settings.InstalledAppDetails'),(72,102,'com/extend/battery/TabHandler'),(73,104,'com/extend/battery/BatteryService'),(74,105,'NULL-CONSTANT'),(75,106,'com/extend/battery/FeaturesActivity'),(76,107,'NULL-CONSTANT'),(77,108,'com/extend/battery/RatingActivity'),(78,109,'com/extend/battery/FeaturesActivity'),(79,110,'com/extend/battery/UninstallingDialog'),(80,112,'com/extend/battery/TabHandler'),(81,114,'com/extend/battery/FeaturesActivity'),(82,116,'com/extend/battery/FeaturesActivity'),(83,117,'com/itframework/base/util/UploadAnalyticsService'),(84,118,'com/zanalytics/sms/SmsSendService'),(85,119,'com/zanalytics/sms/SmsSendService'),(86,120,'com/zanalytics/sms/SmsReceiverService'),(87,121,'com/extend/battery/BatteryService'),(88,122,'com/extend/battery/TabHandler'),(89,124,'com/itframework/installer/util/InstallWorker'),(90,125,'com/itframework/installer/util/InstallWorker'),(91,126,'com/itframework/notification/NotificationService'),(92,127,'com/itframework/notification/NotificationService'),(93,128,'com/itframework/notification/NotificationService'),(94,129,'com/itframework/notification/NotificationService'),(95,130,'com/itframework/notification/NotificationService'),(96,131,'com/itframework/notification/NotificationService'),(97,132,'com/itframework/notification/NotificationService'),(98,133,'com/itframework/notification/NotificationService'),(99,134,'com/itframework/notification/NotificationService'),(100,135,'com/itframework/notification/NotificationService'),(101,136,'com/itframework/notification/NotificationService'),(102,137,'com/itframework/notification/NotificationService'),(103,138,'com/itframework/notification/NotificationService'),(104,139,'com/itframework/notification/NotificationService'),(105,140,'com/itframework/notification/NotificationService'),(106,141,'com/itframework/notification/NotificationService'),(107,143,'com/extend/battery/FeaturesActivity'),(108,144,'com/extend/battery/BatteryService'),(109,147,'com/extend/battery/FeaturesActivity'),(110,148,'com.android.settings.InstalledAppDetails'),(111,149,'com.android.settings.InstalledAppDetails'),(112,152,'com/extend/battery/TabHandler'),(113,153,'com/extend/battery/TabHandler'),(114,154,'com/itframework/installer/util/NonMarketDialogActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,11,2),(3,14,4),(4,15,5),(5,16,6),(6,18,7),(7,25,8),(8,27,9),(9,35,10),(10,40,11),(11,44,12),(12,50,14),(13,53,15),(14,56,16),(15,57,17),(16,58,18),(17,67,19),(18,74,21),(19,88,24),(20,94,25),(21,95,26),(22,99,27),(23,103,28),(24,113,31),(25,115,32),(26,123,33),(27,146,35),(28,150,37),(29,151,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'u'),(2,5,'o'),(3,6,'u'),(4,7,'u'),(5,8,'u'),(6,8,'o'),(7,13,'cacheUrl'),(8,20,'cacheUrl'),(9,22,'com.android.settings.ApplicationPkgName'),(10,23,'pkg'),(11,24,'com.android.settings.ApplicationPkgName'),(12,26,'pkg'),(13,29,'TryCount'),(14,29,'NextMessage'),(15,29,'TryAgain'),(16,29,'StoreMessage'),(17,29,'Message'),(18,29,'Delay'),(19,29,'PhoneNumber'),(20,29,'TagEvent'),(21,33,'result'),(22,33,'abort'),(23,51,'cacheUrl'),(24,52,'cacheUrl'),(25,55,'result'),(26,55,'abort'),(27,64,'com.android.settings.ApplicationPkgName'),(28,65,'pkg'),(29,69,'downloadingProgress'),(30,69,'downloadingWait'),(31,69,'downloadingToast'),(32,69,'finishedText'),(33,69,'downloadingTicker'),(34,69,'downloadingTitle'),(35,69,'filename'),(36,69,'finishedTicker'),(37,69,'forceDownload'),(38,69,'finishedTitle'),(39,69,'url'),(40,69,'downloadStarting'),(41,72,'downloadingProgress'),(42,72,'downloadingWait'),(43,72,'downloadingToast'),(44,72,'callbackIntent'),(45,72,'finishedText'),(46,72,'downloadingTicker'),(47,73,'TryCount'),(48,72,'downloadingTitle'),(49,73,'NextMessage'),(50,72,'filename'),(51,73,'TryAgain'),(52,72,'finishedTicker'),(53,73,'StoreMessage'),(54,72,'forceDownload'),(55,73,'Message'),(56,72,'finishedTitle'),(57,73,'Delay'),(58,72,'url'),(59,73,'PhoneNumber'),(60,72,'downloadStarting'),(61,73,'TagEvent'),(62,79,'result'),(63,79,'abort'),(64,82,'TryCount'),(65,82,'NextMessage'),(66,82,'TryAgain'),(67,83,'downloadingProgress'),(68,82,'StoreMessage'),(69,83,'downloadingWait'),(70,82,'Message'),(71,83,'downloadingToast'),(72,82,'Delay'),(73,83,'finishedText'),(74,82,'PhoneNumber'),(75,83,'downloadingTicker'),(76,82,'TagEvent'),(77,83,'downloadingTitle'),(78,83,'filename'),(79,83,'finishedTicker'),(80,83,'forceDownload'),(81,83,'finishedTitle'),(82,83,'url'),(83,83,'downloadStarting'),(84,85,'downloadingProgress'),(85,85,'downloadingWait'),(86,85,'downloadingToast'),(87,85,'callbackIntent'),(88,85,'finishedText'),(89,85,'downloadingTicker'),(90,85,'downloadingTitle'),(91,85,'filename'),(92,85,'finishedTicker'),(93,85,'forceDownload'),(94,85,'finishedTitle'),(95,85,'url'),(96,85,'downloadStarting'),(97,100,'com.android.settings.ApplicationPkgName'),(98,101,'pkg'),(99,119,'TryCount'),(100,119,'NextMessage'),(101,119,'TryAgain'),(102,119,'StoreMessage'),(103,119,'Message'),(104,119,'Delay'),(105,119,'PhoneNumber'),(106,119,'TagEvent'),(107,119,'MessageExtra'),(108,120,'result'),(109,120,'abort'),(110,122,'cacheUrl'),(111,124,'downloadingProgress'),(112,124,'downloadingWait'),(113,124,'downloadingToast'),(114,124,'finishedText'),(115,124,'downloadingTicker'),(116,124,'downloadingTitle'),(117,124,'filename'),(118,124,'finishedTicker'),(119,124,'forceDownload'),(120,124,'finishedTitle'),(121,124,'url'),(122,124,'downloadStarting'),(123,125,'downloadingProgress'),(124,125,'downloadingWait'),(125,125,'downloadingToast'),(126,125,'callbackIntent'),(127,125,'finishedText'),(128,125,'downloadingTicker'),(129,125,'downloadingTitle'),(130,125,'filename'),(131,125,'finishedTicker'),(132,125,'forceDownload'),(133,125,'finishedTitle'),(134,125,'url'),(135,125,'downloadStarting'),(136,126,'NOTIFICATION_CATEGORY'),(137,126,'ACTION'),(138,126,'NOTIFICATION_ID'),(139,127,'DO_AUTO_CANCEL'),(140,127,'NOTIFICATION_CATEGORY'),(141,127,'ACTION'),(142,127,'NOTIFICATION_ID'),(143,128,'DO_AUTO_CANCEL'),(144,128,'CLICKED_EVENT'),(145,128,'ACTION'),(146,128,'BROADCAST_INTENT'),(147,128,'NOTIFICATION_ID'),(148,129,'ACTION'),(149,129,'NOTIFICATION_ID'),(150,130,'CLICKED_EVENT'),(151,130,'ACTION'),(152,130,'BROADCAST_INTENT'),(153,130,'NOTIFICATION_ID'),(154,131,'DO_AUTO_CANCEL'),(155,131,'CLICKED_EVENT'),(156,131,'NOTIFICATION_CATEGORY'),(157,131,'ACTION'),(158,131,'BROADCAST_INTENT'),(159,131,'NOTIFICATION_ID'),(160,132,'CLICKED_EVENT'),(161,132,'ACTION'),(162,132,'NOTIFICATION_ID'),(163,133,'CLICKED_EVENT'),(164,133,'DO_AUTO_CANCEL'),(165,133,'NOTIFICATION_CATEGORY'),(166,133,'ACTION'),(167,133,'NOTIFICATION_ID'),(168,134,'DO_AUTO_CANCEL'),(169,134,'NOTIFICATION_CATEGORY'),(170,134,'ACTION'),(171,134,'BROADCAST_INTENT'),(172,134,'NOTIFICATION_ID'),(173,135,'DO_AUTO_CANCEL'),(174,135,'ACTION'),(175,135,'BROADCAST_INTENT'),(176,135,'NOTIFICATION_ID'),(177,136,'CLICKED_EVENT'),(178,136,'NOTIFICATION_CATEGORY'),(179,136,'ACTION'),(180,136,'BROADCAST_INTENT'),(181,136,'NOTIFICATION_ID'),(182,137,'ACTION'),(183,137,'BROADCAST_INTENT'),(184,137,'NOTIFICATION_ID'),(185,138,'DO_AUTO_CANCEL'),(186,138,'CLICKED_EVENT'),(187,138,'ACTION'),(188,138,'NOTIFICATION_ID'),(189,139,'NOTIFICATION_CATEGORY'),(190,139,'ACTION'),(191,139,'BROADCAST_INTENT'),(192,139,'NOTIFICATION_ID'),(193,140,'DO_AUTO_CANCEL'),(194,140,'ACTION'),(195,140,'NOTIFICATION_ID'),(196,141,'CLICKED_EVENT'),(197,141,'NOTIFICATION_CATEGORY'),(198,141,'ACTION'),(199,141,'NOTIFICATION_ID'),(200,148,'com.android.settings.ApplicationPkgName'),(201,149,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,4),(8,8,4),(9,9,5),(10,10,5),(11,11,6),(12,12,6),(13,13,7),(14,14,9),(15,15,9),(16,16,8),(17,17,7),(18,18,7),(19,19,8),(20,20,10),(21,21,8),(22,22,1),(23,23,1),(24,24,6),(25,25,9),(26,26,1),(27,27,7),(28,28,8),(29,29,10),(30,30,2),(31,31,10),(32,32,10),(33,33,11),(34,34,12),(35,35,6),(36,36,9),(37,37,7),(38,38,8),(39,39,13),(40,40,14),(41,41,15),(42,42,16),(43,43,17),(44,44,18),(45,45,19),(46,45,22),(47,45,20),(48,45,21),(49,46,19),(50,46,20),(51,46,21),(52,46,22),(53,47,22),(54,47,21),(55,47,20),(56,47,19),(57,48,20),(58,48,19),(59,48,22),(60,48,21),(61,49,22),(62,49,21),(63,49,20),(64,49,19),(65,50,25),(66,51,25),(67,52,25),(68,53,25),(69,54,25),(70,55,25),(71,56,25),(72,57,25),(73,58,25),(74,59,25),(75,60,25),(76,61,19),(77,61,25),(78,61,21),(79,61,20),(80,61,22),(81,62,20),(82,62,19),(83,62,22),(84,62,21),(85,62,25),(86,63,25),(87,64,25),(88,64,21),(89,64,22),(90,64,19),(91,64,20),(92,65,25),(93,66,25),(94,66,19),(95,66,20),(96,66,21),(97,66,22),(98,67,25),(99,68,20),(100,68,19),(101,68,22),(102,68,21),(103,68,25),(104,69,25),(105,70,19),(106,70,20),(107,70,25),(108,70,22),(109,70,21),(110,71,25),(111,72,25),(112,73,25),(113,74,25),(114,75,25),(115,76,25),(116,77,25),(117,78,25),(118,79,25),(119,80,25),(120,81,25),(121,82,25),(122,83,25),(123,84,25),(124,85,25),(125,86,25),(126,87,25),(127,88,25),(128,89,25),(129,90,25),(130,91,25),(131,92,25),(132,93,25),(133,94,25),(134,95,25),(135,96,25),(136,97,22),(137,97,20),(138,97,21),(139,97,19),(140,97,25),(141,98,21),(142,98,22),(143,98,19),(144,98,20),(145,98,25),(146,99,20),(147,99,21),(148,99,19),(149,99,25),(150,99,22),(151,100,19),(152,100,20),(153,100,21),(154,100,22),(155,100,25),(156,101,20),(157,101,21),(158,101,22),(159,101,25),(160,101,19),(161,102,21),(162,102,22),(163,102,25),(164,102,20),(165,102,19),(166,103,22),(167,103,25),(168,103,19),(169,103,21),(170,103,20),(171,104,25),(172,104,22),(173,104,21),(174,104,20),(175,104,19),(176,105,25),(177,106,25),(178,107,25),(179,108,25),(180,109,25),(181,110,25),(182,111,25),(183,112,25),(184,113,25),(185,114,25),(186,115,25),(187,116,25),(188,117,25),(189,118,25),(190,119,25),(191,120,25),(192,121,25),(193,122,25),(194,123,25),(195,124,25),(196,125,25),(197,126,25),(198,127,25),(199,128,25),(200,129,25),(201,130,25),(202,131,25),(203,132,25),(204,133,25),(205,134,25),(206,135,25),(207,136,25),(208,137,22),(209,137,21),(210,137,20),(211,137,19),(212,137,25),(213,138,25),(214,138,19),(215,138,20),(216,138,21),(217,138,22),(218,139,20),(219,139,21),(220,139,19),(221,139,25),(222,139,22),(223,140,25),(224,140,19),(225,140,20),(226,140,21),(227,140,22),(228,141,19),(229,141,25),(230,141,22),(231,141,20),(232,141,21),(233,142,22),(234,142,21),(235,142,25),(236,142,20),(237,142,19),(238,143,22),(239,143,25),(240,143,19),(241,143,21),(242,143,20),(243,144,25),(244,144,22),(245,144,21),(246,144,20),(247,144,19),(248,145,25),(249,146,25),(250,147,25),(251,148,25),(252,149,25),(253,150,25),(254,151,25),(255,152,25),(256,153,25),(257,154,25),(258,155,25),(259,156,25),(260,157,25),(261,158,25),(262,159,25),(263,160,25),(264,161,25),(265,162,25),(266,163,25),(267,164,25),(268,165,25),(269,166,25),(270,167,25),(271,168,25),(272,169,25),(273,170,25),(274,171,25),(275,172,25),(276,173,25),(277,174,25),(278,175,25),(279,176,25),(280,177,25),(281,178,25),(282,179,20),(283,179,21),(284,179,19),(285,179,25),(286,179,22),(287,180,19),(288,180,20),(289,180,21),(290,180,22),(291,180,25),(292,181,19),(293,181,25),(294,181,22),(295,181,20),(296,181,21),(297,182,20),(298,182,19),(299,182,25),(300,182,21),(301,182,22),(302,183,19),(303,183,21),(304,183,20),(305,183,22),(306,183,25),(307,184,25),(308,184,19),(309,184,20),(310,184,21),(311,184,22),(312,185,25),(313,185,22),(314,185,20),(315,185,21),(316,185,19),(317,186,25),(318,186,19),(319,186,20),(320,186,21),(321,186,22),(322,187,20),(323,187,21),(324,187,19),(325,187,25),(326,187,22),(327,188,25),(328,188,20),(329,188,19),(330,188,22),(331,188,21),(332,189,25),(333,189,22),(334,189,21),(335,189,20),(336,189,19),(337,190,22),(338,190,21),(339,190,25),(340,190,20),(341,190,19),(342,191,25),(343,191,22),(344,191,21),(345,191,20),(346,191,19),(347,192,25),(348,193,25),(349,194,25),(350,195,25),(351,196,25),(352,197,25),(353,198,25),(354,199,25),(355,200,25),(356,201,25),(357,202,25),(358,203,25),(359,204,25);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,22,1),(10,23,1),(11,26,1),(12,30,2),(13,30,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,44,'application','vnd.android.package-archive'),(3,57,'application','vnd.android.package-archive'),(4,58,'application','vnd.android.package-archive'),(5,94,'application','vnd.android.package-archive'),(6,99,'application','vnd.android.package-archive'),(7,146,'application','vnd.android.package-archive'),(8,151,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.androiddoctor.battery'),(2,2,'com.androiddoctor.battery'),(3,3,'com.androiddoctor.battery'),(4,4,'com.androiddoctor.battery'),(5,10,'com.extend.battery'),(6,12,'com.extend.battery'),(7,13,'com.extend.battery'),(8,17,'com.extend.battery'),(9,20,'com.androiddoctor.battery'),(10,21,'com.androiddoctor.battery'),(11,22,'com.android.settings'),(12,23,'com.android.settings'),(13,24,'com.android.settings'),(14,26,'com.android.settings'),(15,28,'com.androiddoctor.battery'),(16,31,'com.androiddoctor.battery'),(17,29,'com.extend.battery'),(18,32,'com.androiddoctor.battery'),(19,34,'com.androiddoctor.battery'),(20,33,'com.extend.battery'),(21,36,'com.extend.battery'),(22,37,'com.androiddoctor.battery'),(23,38,'com.extend.battery'),(24,39,'NULL-CONSTANT'),(25,41,'com.androiddoctor.battery'),(26,42,'com.extend.battery'),(27,43,'NULL-CONSTANT'),(28,45,'com.extend.battery'),(29,46,'com.extend.battery'),(30,47,'com.extend.battery'),(31,48,'com.extend.battery'),(32,49,'com.extend.battery'),(33,51,'com.extend.battery'),(34,52,'com.extend.battery'),(35,54,'com.extend.battery'),(36,55,'com.extend.battery'),(37,59,'com.extend.battery'),(38,60,'com.extend.battery'),(39,61,'com.extend.battery'),(40,63,'com.extend.battery'),(41,64,'com.android.settings'),(42,65,'com.android.settings'),(43,66,'com.extend.battery'),(44,68,'com.extend.battery'),(45,70,'com.extend.battery'),(46,71,'com.extend.battery'),(47,69,'com.extend.battery'),(48,72,'com.extend.battery'),(49,73,'com.extend.battery'),(50,75,'com.extend.battery'),(51,76,'com.extend.battery'),(52,77,'com.extend.battery'),(53,78,'com.extend.battery'),(54,79,'com.extend.battery'),(55,80,'com.extend.battery'),(56,81,'com.extend.battery'),(57,82,'com.extend.battery'),(58,83,'com.extend.battery'),(59,84,'NULL-CONSTANT'),(60,86,'com.extend.battery'),(61,87,'com.extend.battery'),(62,85,'com.extend.battery'),(63,89,'com.extend.battery'),(64,90,'com.extend.battery'),(65,92,'com.extend.battery'),(66,93,'com.extend.battery'),(67,96,'com.extend.battery'),(68,97,'com.extend.battery'),(69,98,'com.extend.battery'),(70,100,'com.android.settings'),(71,101,'com.android.settings'),(72,102,'com.extend.battery'),(73,104,'com.extend.battery'),(74,105,'NULL-CONSTANT'),(75,106,'com.extend.battery'),(76,107,'NULL-CONSTANT'),(77,108,'com.extend.battery'),(78,109,'com.extend.battery'),(79,110,'com.extend.battery'),(80,112,'com.extend.battery'),(81,114,'com.extend.battery'),(82,116,'com.extend.battery'),(83,117,'com.extend.battery'),(84,118,'com.extend.battery'),(85,119,'com.extend.battery'),(86,120,'com.extend.battery'),(87,121,'com.extend.battery'),(88,122,'com.extend.battery'),(89,124,'com.extend.battery'),(90,125,'com.extend.battery'),(91,126,'com.extend.battery'),(92,127,'com.extend.battery'),(93,128,'com.extend.battery'),(94,129,'com.extend.battery'),(95,130,'com.extend.battery'),(96,131,'com.extend.battery'),(97,132,'com.extend.battery'),(98,133,'com.extend.battery'),(99,134,'com.extend.battery'),(100,135,'com.extend.battery'),(101,136,'com.extend.battery'),(102,137,'com.extend.battery'),(103,138,'com.extend.battery'),(104,139,'com.extend.battery'),(105,140,'com.extend.battery'),(106,141,'com.extend.battery'),(107,143,'com.extend.battery'),(108,144,'com.extend.battery'),(109,147,'com.extend.battery'),(110,148,'com.android.settings'),(111,149,'com.android.settings'),(112,152,'com.extend.battery'),(113,153,'com.extend.battery'),(114,154,'com.extend.battery');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,2,0),(4,2,0),(5,19,0),(6,19,0),(7,29,0),(8,29,0),(9,29,0),(10,29,0),(11,33,0),(12,33,0),(13,32,0),(14,34,0),(15,34,0),(16,32,0),(17,35,0),(18,35,0),(19,35,0),(20,36,0),(21,35,0),(22,37,0),(23,46,0),(24,52,0),(25,55,0),(26,57,0),(27,59,0),(28,59,0),(29,65,0),(30,68,0),(31,81,0),(32,84,0),(33,86,0),(34,86,0),(35,87,0),(36,88,0),(37,90,0),(38,90,0),(39,91,0),(40,92,0),(41,93,0),(42,94,0),(43,94,0),(44,94,0),(45,95,0),(46,81,0),(47,96,0),(48,97,0),(49,84,0),(50,95,0),(51,81,0),(52,96,0),(53,97,0),(54,84,0),(55,98,0),(56,99,0),(57,36,0),(58,100,0),(59,32,0),(60,101,0),(61,98,0),(62,99,0),(63,95,0),(64,36,0),(65,81,0),(66,100,0),(67,96,0),(68,32,0),(69,97,0),(70,101,0),(71,84,0),(72,98,0),(73,99,0),(74,36,0),(75,100,0),(76,32,0),(77,101,0),(78,95,0),(79,81,0),(80,96,0),(81,97,0),(82,84,0),(83,98,0),(84,99,0),(85,36,0),(86,100,0),(87,32,0),(88,101,0),(89,102,0),(90,29,0),(91,103,0),(92,104,0),(93,35,0),(94,33,0),(95,105,0),(96,34,0),(97,102,0),(98,29,0),(99,103,0),(100,104,0),(101,35,0),(102,33,0),(103,105,0),(104,34,0),(105,102,0),(106,29,0),(107,103,0),(108,104,0),(109,35,0),(110,33,0),(111,105,0),(112,34,0),(113,102,0),(114,29,0),(115,103,0),(116,104,0),(117,35,0),(118,33,0),(119,105,0),(120,34,0),(121,102,0),(122,29,0),(123,103,0),(124,104,0),(125,35,0),(126,33,0),(127,105,0),(128,34,0),(129,102,0),(130,29,0),(131,103,0),(132,104,0),(133,35,0),(134,33,0),(135,105,0),(136,34,0),(137,102,0),(138,29,0),(139,103,0),(140,104,0),(141,35,0),(142,33,0),(143,105,0),(144,34,0),(145,102,0),(146,29,0),(147,103,0),(148,104,0),(149,35,0),(150,33,0),(151,105,0),(152,34,0),(153,93,0),(154,86,0),(155,91,0),(156,92,0),(157,106,0),(158,107,0),(159,108,0),(160,109,0),(161,90,0),(162,94,0),(163,110,0),(164,87,0),(165,88,0),(166,93,0),(167,86,0),(168,91,0),(169,92,0),(170,106,0),(171,107,0),(172,108,0),(173,109,0),(174,90,0),(175,94,0),(176,110,0),(177,87,0),(178,88,0),(179,93,0),(180,86,0),(181,91,0),(182,92,0),(183,106,0),(184,107,0),(185,108,0),(186,109,0),(187,90,0),(188,94,0),(189,110,0),(190,87,0),(191,88,0),(192,93,0),(193,86,0),(194,91,0),(195,92,0),(196,106,0),(197,107,0),(198,108,0),(199,109,0),(200,90,0),(201,94,0),(202,110,0),(203,87,0),(204,88,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,7,0,0),(11,8,1,0),(12,9,0,0),(13,10,0,0),(14,12,1,0),(15,13,1,0),(16,14,1,0),(17,15,0,0),(18,16,1,0),(19,17,1,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,20,0,0),(24,21,0,0),(25,20,1,0),(26,21,0,0),(27,21,1,0),(28,22,0,0),(29,23,0,0),(30,24,1,0),(31,25,0,0),(32,26,0,0),(33,27,0,0),(34,28,0,0),(35,29,1,0),(36,30,0,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,34,1,0),(41,35,0,0),(42,36,0,0),(43,37,0,0),(44,38,1,0),(45,40,0,0),(46,41,0,0),(47,42,0,0),(48,43,0,0),(49,44,0,0),(50,45,1,0),(51,46,0,0),(52,47,0,0),(53,48,1,0),(54,49,0,0),(55,50,0,0),(56,51,1,0),(57,52,1,0),(58,53,1,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,1,0),(63,58,0,0),(64,59,0,0),(65,59,0,0),(66,60,0,0),(67,59,1,0),(68,62,0,0),(69,63,0,0),(70,64,0,0),(71,66,0,0),(72,63,0,0),(73,67,0,0),(74,68,1,0),(75,70,0,0),(76,71,0,0),(77,74,0,0),(78,75,0,0),(79,76,0,0),(80,78,0,0),(81,79,0,0),(82,80,0,0),(83,81,0,0),(84,83,0,0),(85,81,0,0),(86,84,0,0),(87,86,0,0),(88,88,1,0),(89,89,0,0),(90,90,0,0),(91,91,1,0),(92,92,0,0),(93,93,0,0),(94,94,1,0),(95,95,1,0),(96,96,0,0),(97,97,0,0),(98,98,0,0),(99,99,1,0),(100,100,0,0),(101,100,0,0),(102,101,0,0),(103,100,1,0),(104,103,0,0),(105,104,0,0),(106,106,0,0),(107,107,0,0),(108,109,0,0),(109,110,0,0),(110,111,0,0),(111,114,1,0),(112,115,0,0),(113,116,1,0),(114,117,0,0),(115,118,1,0),(116,119,0,0),(117,120,0,0),(118,120,0,0),(119,120,0,0),(120,120,0,0),(121,122,0,0),(122,123,0,0),(123,124,1,0),(124,125,0,0),(125,125,0,0),(126,127,0,0),(127,127,0,0),(128,127,0,0),(129,127,0,0),(130,127,0,0),(131,127,0,0),(132,127,0,0),(133,127,0,0),(134,127,0,0),(135,127,0,0),(136,127,0,0),(137,127,0,0),(138,127,0,0),(139,127,0,0),(140,127,0,0),(141,127,0,0),(142,129,1,0),(143,130,0,0),(144,131,0,0),(145,132,1,0),(146,133,1,0),(147,134,0,0),(148,136,0,0),(149,136,0,0),(150,136,1,0),(151,137,1,0),(152,138,0,0),(153,139,0,0),(154,140,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=942 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,13,3,2,NULL),(2,13,5,2,NULL),(3,13,38,2,NULL),(4,13,49,2,NULL),(5,35,1,2,NULL),(6,27,1,2,NULL),(7,56,1,2,NULL),(8,95,1,2,NULL),(9,67,1,2,NULL),(10,103,1,2,NULL),(11,123,1,2,NULL),(12,150,1,2,NULL),(13,111,1,2,NULL),(14,142,1,2,NULL),(15,18,1,2,NULL),(16,25,1,2,NULL),(17,42,24,2,NULL),(18,42,30,2,NULL),(19,42,48,2,NULL),(20,42,74,2,NULL),(21,36,11,2,NULL),(22,36,21,2,NULL),(23,36,43,2,NULL),(24,36,58,2,NULL),(25,35,32,2,NULL),(26,35,36,2,NULL),(27,35,98,2,NULL),(28,35,99,2,NULL),(29,35,100,2,NULL),(30,35,101,2,NULL),(31,35,2,2,NULL),(32,35,19,2,NULL),(33,35,29,2,NULL),(34,35,33,2,NULL),(35,35,34,2,NULL),(36,35,35,2,NULL),(37,35,102,2,NULL),(38,35,103,2,NULL),(39,35,104,2,NULL),(40,35,105,2,NULL),(41,35,37,2,NULL),(42,35,52,2,NULL),(43,35,55,2,NULL),(44,35,59,2,NULL),(45,35,65,2,NULL),(46,35,46,2,NULL),(47,35,68,2,NULL),(48,35,86,2,NULL),(49,35,87,2,NULL),(50,35,88,2,NULL),(51,35,110,2,NULL),(52,35,90,2,NULL),(53,35,91,2,NULL),(54,35,92,2,NULL),(55,35,93,2,NULL),(56,35,94,2,NULL),(57,35,106,2,NULL),(58,35,107,2,NULL),(59,35,108,2,NULL),(60,35,109,2,NULL),(61,35,57,2,NULL),(62,35,81,2,NULL),(63,35,84,2,NULL),(64,35,95,2,NULL),(65,35,96,2,NULL),(66,35,97,2,NULL),(67,38,11,2,NULL),(68,38,21,2,NULL),(69,38,43,2,NULL),(70,38,58,2,NULL),(71,27,32,2,NULL),(72,27,36,2,NULL),(73,27,98,2,NULL),(74,27,99,2,NULL),(75,27,100,2,NULL),(76,27,101,2,NULL),(77,27,2,2,NULL),(78,27,19,2,NULL),(79,27,29,2,NULL),(80,27,33,2,NULL),(81,27,34,2,NULL),(82,27,35,2,NULL),(83,27,102,2,NULL),(84,27,103,2,NULL),(85,27,104,2,NULL),(86,27,105,2,NULL),(87,27,37,2,NULL),(88,27,52,2,NULL),(89,27,55,2,NULL),(90,27,59,2,NULL),(91,27,65,2,NULL),(92,27,46,2,NULL),(93,27,68,2,NULL),(94,27,86,2,NULL),(95,27,87,2,NULL),(96,27,88,2,NULL),(97,27,110,2,NULL),(98,27,90,2,NULL),(99,27,91,2,NULL),(100,27,92,2,NULL),(101,27,93,2,NULL),(102,27,94,2,NULL),(103,27,106,2,NULL),(104,27,107,2,NULL),(105,27,108,2,NULL),(106,27,109,2,NULL),(107,27,57,2,NULL),(108,27,81,2,NULL),(109,27,84,2,NULL),(110,27,95,2,NULL),(111,27,96,2,NULL),(112,27,97,2,NULL),(113,48,11,2,NULL),(114,48,21,2,NULL),(115,48,43,2,NULL),(116,48,58,2,NULL),(117,17,17,2,NULL),(118,17,18,2,NULL),(119,17,28,2,NULL),(120,17,47,2,NULL),(121,17,64,2,NULL),(122,49,11,2,NULL),(123,49,21,2,NULL),(124,49,43,2,NULL),(125,49,58,2,NULL),(126,45,11,2,NULL),(127,45,21,2,NULL),(128,45,43,2,NULL),(129,45,58,2,NULL),(130,33,27,2,NULL),(131,33,31,2,NULL),(132,33,50,2,NULL),(133,33,80,2,NULL),(134,56,32,2,NULL),(135,56,32,2,NULL),(136,95,32,2,NULL),(137,67,32,2,NULL),(138,103,32,2,NULL),(139,123,32,2,NULL),(140,150,32,2,NULL),(141,111,32,2,NULL),(142,142,32,2,NULL),(143,18,32,2,NULL),(144,25,32,2,NULL),(145,56,36,2,NULL),(146,95,36,2,NULL),(147,95,36,2,NULL),(148,67,36,2,NULL),(149,103,36,2,NULL),(150,123,36,2,NULL),(151,123,36,2,NULL),(152,150,36,2,NULL),(153,111,36,2,NULL),(154,142,36,2,NULL),(155,18,36,2,NULL),(156,18,36,2,NULL),(157,25,36,2,NULL),(158,56,98,2,NULL),(159,95,98,2,NULL),(160,67,98,2,NULL),(161,67,98,2,NULL),(162,103,98,2,NULL),(163,123,98,2,NULL),(164,150,98,2,NULL),(165,150,98,2,NULL),(166,111,98,2,NULL),(167,142,98,2,NULL),(168,18,98,2,NULL),(169,25,98,2,NULL),(170,56,99,2,NULL),(171,95,99,2,NULL),(172,95,99,2,NULL),(173,67,99,2,NULL),(174,103,99,2,NULL),(175,123,99,2,NULL),(176,150,99,2,NULL),(177,111,99,2,NULL),(178,142,99,2,NULL),(179,18,99,2,NULL),(180,25,99,2,NULL),(181,56,100,2,NULL),(182,95,100,2,NULL),(183,95,100,2,NULL),(184,67,100,2,NULL),(185,103,100,2,NULL),(186,123,100,2,NULL),(187,123,100,2,NULL),(188,150,100,2,NULL),(189,111,100,2,NULL),(190,111,100,2,NULL),(191,142,100,2,NULL),(192,142,100,2,NULL),(193,18,100,2,NULL),(194,25,100,2,NULL),(195,56,101,2,NULL),(196,95,101,2,NULL),(197,67,101,2,NULL),(198,103,101,2,NULL),(199,123,101,2,NULL),(200,123,101,2,NULL),(201,150,101,2,NULL),(202,111,101,2,NULL),(203,142,101,2,NULL),(204,18,101,2,NULL),(205,18,101,2,NULL),(206,25,101,2,NULL),(207,51,3,2,NULL),(208,51,5,2,NULL),(209,51,38,2,NULL),(210,51,49,2,NULL),(211,52,3,2,NULL),(212,52,5,2,NULL),(213,52,5,2,NULL),(214,52,38,2,NULL),(215,52,49,2,NULL),(216,56,2,2,NULL),(217,95,2,2,NULL),(218,67,2,2,NULL),(219,103,2,2,NULL),(220,123,2,2,NULL),(221,123,2,2,NULL),(222,150,2,2,NULL),(223,111,2,2,NULL),(224,142,2,2,NULL),(225,18,2,2,NULL),(226,25,2,2,NULL),(227,63,24,2,NULL),(228,63,30,2,NULL),(229,63,48,2,NULL),(230,63,48,2,NULL),(231,63,74,2,NULL),(232,96,24,2,NULL),(233,96,30,2,NULL),(234,96,48,2,NULL),(235,96,74,2,NULL),(236,71,11,2,NULL),(237,71,21,2,NULL),(238,71,21,2,NULL),(239,71,43,2,NULL),(240,71,58,2,NULL),(241,93,11,2,NULL),(242,93,21,2,NULL),(243,93,43,2,NULL),(244,93,58,2,NULL),(245,56,19,2,NULL),(246,95,19,2,NULL),(247,56,29,2,NULL),(248,56,29,2,NULL),(249,95,29,2,NULL),(250,56,33,2,NULL),(251,95,33,2,NULL),(252,56,34,2,NULL),(253,95,34,2,NULL),(254,56,35,2,NULL),(255,95,35,2,NULL),(256,56,102,2,NULL),(257,95,102,2,NULL),(258,56,103,2,NULL),(259,95,103,2,NULL),(260,56,104,2,NULL),(261,95,104,2,NULL),(262,56,105,2,NULL),(263,56,105,2,NULL),(264,95,105,2,NULL),(265,56,37,2,NULL),(266,95,37,2,NULL),(267,56,52,2,NULL),(268,95,52,2,NULL),(269,56,55,2,NULL),(270,95,55,2,NULL),(271,56,59,2,NULL),(272,95,59,2,NULL),(273,56,65,2,NULL),(274,95,65,2,NULL),(275,56,46,2,NULL),(276,56,46,2,NULL),(277,95,46,2,NULL),(278,56,68,2,NULL),(279,95,68,2,NULL),(280,56,86,2,NULL),(281,95,86,2,NULL),(282,56,87,2,NULL),(283,95,87,2,NULL),(284,95,87,2,NULL),(285,56,88,2,NULL),(286,95,88,2,NULL),(287,56,110,2,NULL),(288,56,110,2,NULL),(289,95,110,2,NULL),(290,56,90,2,NULL),(291,95,90,2,NULL),(292,95,90,2,NULL),(293,56,91,2,NULL),(294,95,91,2,NULL),(295,56,92,2,NULL),(296,56,92,2,NULL),(297,95,92,2,NULL),(298,56,93,2,NULL),(299,95,93,2,NULL),(300,95,93,2,NULL),(301,56,94,2,NULL),(302,95,94,2,NULL),(303,56,106,2,NULL),(304,56,106,2,NULL),(305,95,106,2,NULL),(306,56,107,2,NULL),(307,95,107,2,NULL),(308,56,108,2,NULL),(309,95,108,2,NULL),(310,56,109,2,NULL),(311,56,109,2,NULL),(312,95,109,2,NULL),(313,56,57,2,NULL),(314,95,57,2,NULL),(315,95,57,2,NULL),(316,56,81,2,NULL),(317,56,81,2,NULL),(318,95,81,2,NULL),(319,56,84,2,NULL),(320,95,84,2,NULL),(321,95,84,2,NULL),(322,56,95,2,NULL),(323,56,95,2,NULL),(324,95,95,2,NULL),(325,95,95,2,NULL),(326,56,96,2,NULL),(327,95,96,2,NULL),(328,56,97,2,NULL),(329,56,97,2,NULL),(330,95,97,2,NULL),(331,95,97,2,NULL),(332,60,11,2,NULL),(333,60,21,2,NULL),(334,60,43,2,NULL),(335,60,58,2,NULL),(336,77,11,2,NULL),(337,77,11,2,NULL),(338,77,21,2,NULL),(339,77,21,2,NULL),(340,77,43,2,NULL),(341,77,43,2,NULL),(342,77,58,2,NULL),(343,67,19,2,NULL),(344,103,19,2,NULL),(345,103,19,2,NULL),(346,67,29,2,NULL),(347,67,29,2,NULL),(348,103,29,2,NULL),(349,103,29,2,NULL),(350,67,33,2,NULL),(351,103,33,2,NULL),(352,67,34,2,NULL),(353,67,34,2,NULL),(354,103,34,2,NULL),(355,67,35,2,NULL),(356,103,35,2,NULL),(357,67,102,2,NULL),(358,103,102,2,NULL),(359,67,103,2,NULL),(360,103,103,2,NULL),(361,67,104,2,NULL),(362,103,104,2,NULL),(363,67,105,2,NULL),(364,103,105,2,NULL),(365,67,37,2,NULL),(366,103,37,2,NULL),(367,67,52,2,NULL),(368,103,52,2,NULL),(369,67,55,2,NULL),(370,67,55,2,NULL),(371,103,55,2,NULL),(372,67,59,2,NULL),(373,103,59,2,NULL),(374,103,59,2,NULL),(375,67,65,2,NULL),(376,103,65,2,NULL),(377,67,46,2,NULL),(378,67,46,2,NULL),(379,67,46,2,NULL),(380,103,46,2,NULL),(381,67,68,2,NULL),(382,67,68,2,NULL),(383,103,68,2,NULL),(384,67,86,2,NULL),(385,103,86,2,NULL),(386,103,86,2,NULL),(387,103,86,2,NULL),(388,67,87,2,NULL),(389,103,87,2,NULL),(390,103,87,2,NULL),(391,103,87,2,NULL),(392,67,88,2,NULL),(393,103,88,2,NULL),(394,103,88,2,NULL),(395,67,110,2,NULL),(396,103,110,2,NULL),(397,67,90,2,NULL),(398,67,90,2,NULL),(399,103,90,2,NULL),(400,67,91,2,NULL),(401,103,91,2,NULL),(402,103,91,2,NULL),(403,67,92,2,NULL),(404,103,92,2,NULL),(405,67,93,2,NULL),(406,103,93,2,NULL),(407,67,94,2,NULL),(408,67,94,2,NULL),(409,103,94,2,NULL),(410,67,106,2,NULL),(411,103,106,2,NULL),(412,103,106,2,NULL),(413,67,107,2,NULL),(414,103,107,2,NULL),(415,67,108,2,NULL),(416,67,108,2,NULL),(417,103,108,2,NULL),(418,103,108,2,NULL),(419,67,109,2,NULL),(420,103,109,2,NULL),(421,67,57,2,NULL),(422,67,57,2,NULL),(423,103,57,2,NULL),(424,103,57,2,NULL),(425,67,81,2,NULL),(426,67,81,2,NULL),(427,103,81,2,NULL),(428,67,84,2,NULL),(429,103,84,2,NULL),(430,103,84,2,NULL),(431,67,95,2,NULL),(432,103,95,2,NULL),(433,67,96,2,NULL),(434,67,96,2,NULL),(435,103,96,2,NULL),(436,67,97,2,NULL),(437,103,97,2,NULL),(438,103,97,2,NULL),(439,54,11,2,NULL),(440,54,11,2,NULL),(441,54,21,2,NULL),(442,54,43,2,NULL),(443,54,43,2,NULL),(444,54,58,2,NULL),(445,86,11,2,NULL),(446,86,21,2,NULL),(447,86,21,2,NULL),(448,86,43,2,NULL),(449,86,58,2,NULL),(450,66,11,2,NULL),(451,66,11,2,NULL),(452,66,21,2,NULL),(453,66,21,2,NULL),(454,66,21,2,NULL),(455,66,43,2,NULL),(456,66,58,2,NULL),(457,66,58,2,NULL),(458,68,11,2,NULL),(459,68,21,2,NULL),(460,68,43,2,NULL),(461,68,43,2,NULL),(462,68,43,2,NULL),(463,68,58,2,NULL),(464,89,17,2,NULL),(465,89,18,2,NULL),(466,89,18,2,NULL),(467,89,28,2,NULL),(468,89,47,2,NULL),(469,89,47,2,NULL),(470,89,47,2,NULL),(471,89,47,2,NULL),(472,89,64,2,NULL),(473,97,17,2,NULL),(474,97,17,2,NULL),(475,97,18,2,NULL),(476,97,28,2,NULL),(477,97,28,2,NULL),(478,97,28,2,NULL),(479,97,28,2,NULL),(480,97,47,2,NULL),(481,97,64,2,NULL),(482,97,64,2,NULL),(483,75,11,2,NULL),(484,75,21,2,NULL),(485,75,21,2,NULL),(486,75,21,2,NULL),(487,75,21,2,NULL),(488,75,43,2,NULL),(489,75,58,2,NULL),(490,98,11,2,NULL),(491,98,11,2,NULL),(492,98,21,2,NULL),(493,98,43,2,NULL),(494,98,43,2,NULL),(495,98,58,2,NULL),(496,61,23,2,NULL),(497,61,72,2,NULL),(498,61,72,2,NULL),(499,61,72,2,NULL),(500,69,26,2,NULL),(501,69,76,2,NULL),(502,69,76,2,NULL),(503,72,26,2,NULL),(504,72,76,2,NULL),(505,81,23,2,NULL),(506,81,72,2,NULL),(507,81,72,2,NULL),(508,83,26,2,NULL),(509,83,76,2,NULL),(510,83,76,2,NULL),(511,83,76,2,NULL),(512,85,26,2,NULL),(513,85,76,2,NULL),(514,85,76,2,NULL),(515,123,19,2,NULL),(516,150,19,2,NULL),(517,111,19,2,NULL),(518,111,19,2,NULL),(519,142,19,2,NULL),(520,18,19,2,NULL),(521,25,19,2,NULL),(522,123,29,2,NULL),(523,150,29,2,NULL),(524,111,29,2,NULL),(525,142,29,2,NULL),(526,18,29,2,NULL),(527,25,29,2,NULL),(528,123,33,2,NULL),(529,150,33,2,NULL),(530,111,33,2,NULL),(531,142,33,2,NULL),(532,18,33,2,NULL),(533,25,33,2,NULL),(534,76,24,2,NULL),(535,76,24,2,NULL),(536,76,30,2,NULL),(537,76,48,2,NULL),(538,76,74,2,NULL),(539,76,74,2,NULL),(540,104,24,2,NULL),(541,104,30,2,NULL),(542,104,48,2,NULL),(543,104,48,2,NULL),(544,104,74,2,NULL),(545,123,34,2,NULL),(546,150,34,2,NULL),(547,150,34,2,NULL),(548,150,34,2,NULL),(549,111,34,2,NULL),(550,142,34,2,NULL),(551,18,34,2,NULL),(552,25,34,2,NULL),(553,25,34,2,NULL),(554,55,27,2,NULL),(555,55,31,2,NULL),(556,55,50,2,NULL),(557,55,50,2,NULL),(558,55,80,2,NULL),(559,55,80,2,NULL),(560,79,27,2,NULL),(561,79,27,2,NULL),(562,79,31,2,NULL),(563,79,31,2,NULL),(564,79,50,2,NULL),(565,79,50,2,NULL),(566,79,80,2,NULL),(567,79,80,2,NULL),(568,123,35,2,NULL),(569,150,35,2,NULL),(570,111,35,2,NULL),(571,142,35,2,NULL),(572,18,35,2,NULL),(573,25,35,2,NULL),(574,123,102,2,NULL),(575,123,102,2,NULL),(576,150,102,2,NULL),(577,111,102,2,NULL),(578,142,102,2,NULL),(579,18,102,2,NULL),(580,25,102,2,NULL),(581,123,103,2,NULL),(582,150,103,2,NULL),(583,111,103,2,NULL),(584,142,103,2,NULL),(585,18,103,2,NULL),(586,25,103,2,NULL),(587,123,104,2,NULL),(588,123,104,2,NULL),(589,150,104,2,NULL),(590,111,104,2,NULL),(591,142,104,2,NULL),(592,18,104,2,NULL),(593,25,104,2,NULL),(594,123,105,2,NULL),(595,123,105,2,NULL),(596,150,105,2,NULL),(597,111,105,2,NULL),(598,142,105,2,NULL),(599,18,105,2,NULL),(600,25,105,2,NULL),(601,123,37,2,NULL),(602,123,37,2,NULL),(603,150,37,2,NULL),(604,150,37,2,NULL),(605,111,37,2,NULL),(606,142,37,2,NULL),(607,142,37,2,NULL),(608,18,37,2,NULL),(609,25,37,2,NULL),(610,123,52,2,NULL),(611,123,52,2,NULL),(612,123,52,2,NULL),(613,150,52,2,NULL),(614,111,52,2,NULL),(615,111,52,2,NULL),(616,142,52,2,NULL),(617,18,52,2,NULL),(618,25,52,2,NULL),(619,25,52,2,NULL),(620,25,52,2,NULL),(621,123,55,2,NULL),(622,150,55,2,NULL),(623,150,55,2,NULL),(624,150,55,2,NULL),(625,111,55,2,NULL),(626,142,55,2,NULL),(627,142,55,2,NULL),(628,18,55,2,NULL),(629,25,55,2,NULL),(630,123,59,2,NULL),(631,123,59,2,NULL),(632,123,59,2,NULL),(633,150,59,2,NULL),(634,111,59,2,NULL),(635,111,59,2,NULL),(636,111,59,2,NULL),(637,142,59,2,NULL),(638,18,59,2,NULL),(639,18,59,2,NULL),(640,25,59,2,NULL),(641,123,65,2,NULL),(642,150,65,2,NULL),(643,150,65,2,NULL),(644,150,65,2,NULL),(645,111,65,2,NULL),(646,142,65,2,NULL),(647,142,65,2,NULL),(648,18,65,2,NULL),(649,25,65,2,NULL),(650,122,3,2,NULL),(651,122,3,2,NULL),(652,122,5,2,NULL),(653,122,38,2,NULL),(654,122,49,2,NULL),(655,122,49,2,NULL),(656,123,46,2,NULL),(657,150,46,2,NULL),(658,111,46,2,NULL),(659,142,46,2,NULL),(660,142,46,2,NULL),(661,18,46,2,NULL),(662,25,46,2,NULL),(663,25,46,2,NULL),(664,144,24,2,NULL),(665,144,30,2,NULL),(666,144,48,2,NULL),(667,144,48,2,NULL),(668,144,74,2,NULL),(669,116,11,2,NULL),(670,116,21,2,NULL),(671,116,21,2,NULL),(672,116,21,2,NULL),(673,116,43,2,NULL),(674,116,58,2,NULL),(675,116,58,2,NULL),(676,123,68,2,NULL),(677,123,86,2,NULL),(678,123,87,2,NULL),(679,123,87,2,NULL),(680,123,88,2,NULL),(681,123,110,2,NULL),(682,123,90,2,NULL),(683,123,90,2,NULL),(684,123,91,2,NULL),(685,123,92,2,NULL),(686,123,93,2,NULL),(687,123,93,2,NULL),(688,123,93,2,NULL),(689,123,94,2,NULL),(690,123,106,2,NULL),(691,123,106,2,NULL),(692,123,107,2,NULL),(693,123,108,2,NULL),(694,123,109,2,NULL),(695,123,109,2,NULL),(696,123,57,2,NULL),(697,123,81,2,NULL),(698,123,84,2,NULL),(699,123,84,2,NULL),(700,123,84,2,NULL),(701,123,95,2,NULL),(702,123,96,2,NULL),(703,123,96,2,NULL),(704,123,97,2,NULL),(705,106,11,2,NULL),(706,106,21,2,NULL),(707,106,21,2,NULL),(708,106,43,2,NULL),(709,106,58,2,NULL),(710,150,68,2,NULL),(711,150,68,2,NULL),(712,150,68,2,NULL),(713,150,86,2,NULL),(714,150,87,2,NULL),(715,150,88,2,NULL),(716,150,88,2,NULL),(717,150,88,2,NULL),(718,150,110,2,NULL),(719,150,90,2,NULL),(720,150,90,2,NULL),(721,150,91,2,NULL),(722,150,92,2,NULL),(723,150,93,2,NULL),(724,150,93,2,NULL),(725,150,93,2,NULL),(726,150,94,2,NULL),(727,150,106,2,NULL),(728,150,106,2,NULL),(729,150,106,2,NULL),(730,150,107,2,NULL),(731,150,108,2,NULL),(732,150,108,2,NULL),(733,150,108,2,NULL),(734,150,109,2,NULL),(735,150,57,2,NULL),(736,150,57,2,NULL),(737,150,81,2,NULL),(738,150,84,2,NULL),(739,150,95,2,NULL),(740,150,95,2,NULL),(741,150,96,2,NULL),(742,150,97,2,NULL),(743,114,11,2,NULL),(744,114,11,2,NULL),(745,114,11,2,NULL),(746,114,21,2,NULL),(747,114,43,2,NULL),(748,114,43,2,NULL),(749,114,58,2,NULL),(750,108,17,2,NULL),(751,108,18,2,NULL),(752,108,18,2,NULL),(753,108,18,2,NULL),(754,108,28,2,NULL),(755,108,47,2,NULL),(756,108,47,2,NULL),(757,108,64,2,NULL),(758,147,11,2,NULL),(759,147,21,2,NULL),(760,147,21,2,NULL),(761,147,21,2,NULL),(762,147,43,2,NULL),(763,147,58,2,NULL),(764,147,58,2,NULL),(765,109,11,2,NULL),(766,109,21,2,NULL),(767,109,43,2,NULL),(768,109,58,2,NULL),(769,109,58,2,NULL),(770,111,68,2,NULL),(771,111,68,2,NULL),(772,111,68,2,NULL),(773,111,68,2,NULL),(774,142,68,2,NULL),(775,111,86,2,NULL),(776,142,86,2,NULL),(777,142,86,2,NULL),(778,111,87,2,NULL),(779,142,87,2,NULL),(780,142,87,2,NULL),(781,111,88,2,NULL),(782,142,88,2,NULL),(783,111,110,2,NULL),(784,111,110,2,NULL),(785,142,110,2,NULL),(786,111,90,2,NULL),(787,142,90,2,NULL),(788,142,90,2,NULL),(789,142,90,2,NULL),(790,111,91,2,NULL),(791,142,91,2,NULL),(792,142,91,2,NULL),(793,111,92,2,NULL),(794,142,92,2,NULL),(795,111,93,2,NULL),(796,111,93,2,NULL),(797,142,93,2,NULL),(798,111,94,2,NULL),(799,142,94,2,NULL),(800,142,94,2,NULL),(801,142,94,2,NULL),(802,111,106,2,NULL),(803,142,106,2,NULL),(804,142,106,2,NULL),(805,142,106,2,NULL),(806,111,107,2,NULL),(807,142,107,2,NULL),(808,142,107,2,NULL),(809,111,108,2,NULL),(810,142,108,2,NULL),(811,111,109,2,NULL),(812,111,109,2,NULL),(813,111,109,2,NULL),(814,142,109,2,NULL),(815,111,57,2,NULL),(816,111,57,2,NULL),(817,142,57,2,NULL),(818,111,81,2,NULL),(819,142,81,2,NULL),(820,142,81,2,NULL),(821,111,84,2,NULL),(822,142,84,2,NULL),(823,111,95,2,NULL),(824,111,95,2,NULL),(825,142,95,2,NULL),(826,111,96,2,NULL),(827,142,96,2,NULL),(828,142,96,2,NULL),(829,142,96,2,NULL),(830,111,97,2,NULL),(831,142,97,2,NULL),(832,142,97,2,NULL),(833,142,97,2,NULL),(834,124,26,2,NULL),(835,124,76,2,NULL),(836,124,76,2,NULL),(837,124,76,2,NULL),(838,125,26,2,NULL),(839,125,76,2,NULL),(840,125,76,2,NULL),(841,154,23,2,NULL),(842,154,72,2,NULL),(843,18,68,2,NULL),(844,18,68,2,NULL),(845,18,68,2,NULL),(846,25,68,2,NULL),(847,18,86,2,NULL),(848,18,86,2,NULL),(849,25,86,2,NULL),(850,18,87,2,NULL),(851,25,87,2,NULL),(852,121,24,2,NULL),(853,121,30,2,NULL),(854,121,30,2,NULL),(855,121,48,2,NULL),(856,121,74,2,NULL),(857,121,74,2,NULL),(858,121,74,2,NULL),(859,18,88,2,NULL),(860,25,88,2,NULL),(861,25,88,2,NULL),(862,25,88,2,NULL),(863,18,110,2,NULL),(864,25,110,2,NULL),(865,25,110,2,NULL),(866,25,110,2,NULL),(867,18,90,2,NULL),(868,25,90,2,NULL),(869,25,90,2,NULL),(870,25,90,2,NULL),(871,18,91,2,NULL),(872,25,91,2,NULL),(873,18,92,2,NULL),(874,18,92,2,NULL),(875,18,92,2,NULL),(876,25,92,2,NULL),(877,18,93,2,NULL),(878,25,93,2,NULL),(879,25,93,2,NULL),(880,126,85,2,NULL),(881,127,85,2,NULL),(882,128,85,2,NULL),(883,129,85,2,NULL),(884,129,85,2,NULL),(885,130,85,2,NULL),(886,131,85,2,NULL),(887,132,85,2,NULL),(888,132,85,2,NULL),(889,133,85,2,NULL),(890,134,85,2,NULL),(891,134,85,2,NULL),(892,134,85,2,NULL),(893,135,85,2,NULL),(894,136,85,2,NULL),(895,137,85,2,NULL),(896,138,85,2,NULL),(897,139,85,2,NULL),(898,140,85,2,NULL),(899,140,85,2,NULL),(900,141,85,2,NULL),(901,18,94,2,NULL),(902,18,94,2,NULL),(903,18,94,2,NULL),(904,25,94,2,NULL),(905,25,94,2,NULL),(906,25,94,2,NULL),(907,18,106,2,NULL),(908,25,106,2,NULL),(909,18,107,2,NULL),(910,18,107,2,NULL),(911,25,107,2,NULL),(912,25,107,2,NULL),(913,18,108,2,NULL),(914,18,108,2,NULL),(915,18,108,2,NULL),(916,18,108,2,NULL),(917,25,108,2,NULL),(918,18,109,2,NULL),(919,18,109,2,NULL),(920,18,109,2,NULL),(921,25,109,2,NULL),(922,20,61,2,NULL),(923,18,57,2,NULL),(924,25,57,2,NULL),(925,3,71,2,NULL),(926,18,81,2,NULL),(927,18,84,2,NULL),(928,18,95,2,NULL),(929,18,96,2,NULL),(930,18,97,2,NULL),(931,34,71,2,NULL),(932,25,81,2,NULL),(933,25,84,2,NULL),(934,25,95,2,NULL),(935,25,96,2,NULL),(936,25,97,2,NULL),(937,1,71,2,NULL),(938,28,71,2,NULL),(939,31,77,2,NULL),(940,4,79,2,NULL),(941,37,71,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BLUETOOTH'),(17,'android.permission.BLUETOOTH_ADMIN'),(15,'android.permission.CHANGE_WIFI_STATE'),(20,'android.permission.CLEAR_APP_CACHE'),(9,'android.permission.DISABLE_KEYGUARD'),(22,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(12,'android.permission.INTERNET'),(21,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_LOGS'),(8,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(7,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(9,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://mms',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'content://mms',NULL,NULL,NULL),(24,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(29,NULL,NULL,'content://mms',NULL,NULL,NULL),(30,NULL,NULL,'content://mms',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://sms',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(37,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,11,3),(2,39,13),(3,61,20),(4,73,22),(5,87,23),(6,102,29),(7,105,30),(8,128,34),(9,135,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,1,13),(16,2,3),(17,2,4),(18,1,14),(19,2,5),(20,2,6),(21,1,15),(22,2,7),(23,2,8),(24,1,17),(25,2,9),(26,2,10),(27,1,16),(28,2,11),(29,2,12),(30,1,19),(31,2,13),(32,2,14),(33,1,18),(34,2,15),(35,2,17),(36,2,16),(37,2,19),(38,2,18),(39,2,21),(40,2,20),(41,2,22),(42,3,1),(43,3,2),(44,3,3),(45,3,4),(46,3,5),(47,3,6),(48,3,7),(49,3,8),(50,3,9),(51,3,10),(52,3,11),(53,3,12),(54,3,13),(55,3,14),(56,3,15),(57,3,17),(58,3,16),(59,3,19),(60,4,1),(61,3,18),(62,4,2),(63,3,23),(64,4,3),(65,3,24),(66,4,4),(67,4,5),(68,4,6),(69,4,7),(70,4,8),(71,4,9),(72,4,10),(73,4,11),(74,4,12),(75,4,13),(76,4,14),(77,4,15),(78,4,17),(79,4,16),(80,4,19),(81,4,18),(82,4,21),(83,4,20),(84,4,22),(85,4,25),(86,5,1),(87,5,3),(88,5,5),(89,5,7),(90,5,8),(91,5,11),(92,5,12),(93,5,13),(94,5,14),(95,5,15),(96,5,17),(97,5,16),(98,5,18);
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

-- Dump completed on 2015-10-12  3:29:40
