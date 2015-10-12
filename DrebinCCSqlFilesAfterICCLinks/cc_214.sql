-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_214
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (27,'(.*).SEND_SMS'),(23,'android.intent.action.BATTERY_CHANGED'),(26,'android.intent.action.BATTERY_LOW'),(22,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(24,'android.intent.action.SCREEN_OFF'),(25,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(20,'android.settings.APPLICATION_DETAILS_SETTINGS'),(19,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'com.android.vending.INSTALL_REFERRER'),(12,'com.extend.battery.CHECK'),(14,'com.extend.battery.DELIVERED_SMS'),(15,'com.extend.battery.SEND_SMS'),(13,'com.extend.battery.SENT_SMS'),(11,'com.extend.battery.UPDATE'),(6,'com.extend.battery.intent.http.SHOW'),(17,'com.extend.battery.notification.action.ALARM'),(16,'com.extend.battery.notification.action.CANCEL'),(18,'com.extend.battery.notification.action.CLICKED'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(9,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',83),(3,'com.extend.battery',89),(4,'com.extend.battery',103);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.InstallerActivity'),(8,1,'com.extend.battery.FeaturesActivity'),(9,1,'com.extend.battery.BoosterActivity'),(10,1,'com.extend.battery.BoosterActivity'),(11,1,'com.extend.battery.BatteryActivity'),(12,1,'com.extend.battery.RatingActivity'),(13,1,'com.extend.battery.RatingActivity'),(14,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(15,2,'com.extend.battery.Splash'),(16,1,'com.itframework.installer.util.NonMarketDialogActivity'),(17,2,'com.extend.battery.TabHandler'),(18,1,'com.extend.battery.BatteryService'),(19,1,'com.itframework.installer.util.InstallWorker'),(20,2,'com.extend.battery.TaskKillerActivity'),(21,1,'com.zanalytics.sms.SmsReceiverService'),(22,1,'com.itframework.installer.updater.UpdateReceiver'),(23,2,'com.extend.battery.UninstallerActivity'),(24,3,'com.extend.battery.Splash'),(25,2,'com.extend.battery.SecurityAuditActivity'),(26,1,'com.extend.battery.NotificationReceiver'),(27,1,'com.extend.battery.NotificationReceiver'),(28,2,'com.extend.battery.InstallerActivity'),(29,3,'com.extend.battery.TabHandler'),(30,2,'com.extend.battery.FeaturesActivity'),(31,1,'com.extend.battery.BootReceiver'),(32,3,'com.extend.battery.TaskKillerActivity'),(33,2,'com.extend.battery.BoosterActivity'),(34,3,'com.extend.battery.UninstallerActivity'),(35,2,'com.extend.battery.BatteryActivity'),(36,1,'com.zanalytics.sms.SmsReceiver'),(37,1,'com.zanalytics.sms.SmsReceiver'),(38,3,'com.extend.battery.SecurityAuditActivity'),(39,2,'com.extend.battery.RatingActivity'),(40,3,'com.extend.battery.InstallerActivity'),(41,2,'com.extend.battery.BatteryService'),(42,3,'com.extend.battery.FeaturesActivity'),(43,2,'com.zanalytics.sms.SmsReceiverService'),(44,3,'com.extend.battery.BoosterActivity'),(45,2,'com.zanalytics.sms.SmsReceiver'),(46,3,'com.extend.battery.BatteryActivity'),(47,3,'com.extend.battery.RatingActivity'),(48,3,'com.extend.battery.BatteryService'),(49,2,'com.tapjoy.TapjoyReferralTracker'),(50,3,'com.zanalytics.sms.SmsReceiverService'),(51,3,'com.extend.battery.NotificationReceiver'),(52,3,'com.extend.battery.BootReceiver'),(53,3,'com.zanalytics.sms.SmsReceiver'),(54,3,'com.tapjoy.TapjoyReferralTracker'),(55,4,'com.extend.battery.Splash'),(56,4,'com.extend.battery.TabHandler'),(57,4,'com.extend.battery.TaskKillerActivity'),(58,4,'com.extend.battery.UninstallerActivity'),(59,4,'com.extend.battery.SecurityAuditActivity'),(60,4,'com.extend.battery.InstallerActivity'),(61,4,'com.extend.battery.FeaturesActivity'),(62,4,'com.extend.battery.BoosterActivity'),(63,4,'com.extend.battery.BatteryActivity'),(64,4,'com.extend.battery.RatingActivity'),(65,4,'com.extend.battery.UninstallingDialog'),(66,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(67,4,'com.itframework.installer.util.NonMarketDialogActivity'),(68,4,'com.extend.battery.BatteryService'),(69,4,'com.itframework.installer.util.InstallWorker'),(70,4,'com.itframework.network.NetworkOperationService'),(71,4,'com.zanalytics.sms.SmsReceiverService'),(72,4,'com.zanalytics.sms.SmsSendService'),(73,4,'com.itframework.base.util.UploadAnalyticsService'),(74,4,'com.itframework.notification.NotificationService'),(75,4,'com.itframework.installer.updater.UpdateReceiver'),(76,4,'com.extend.battery.NotificationReceiver'),(77,4,'com.extend.battery.BootReceiver'),(78,4,'com.itframework.network.NetworkOperationReceiver'),(79,4,'com.zanalytics.sms.SmsReceiver'),(80,4,'com.zanalytics.sms.SmsSentReceiver'),(81,4,'com.zanalytics.sms.SmsDeliveredReceiver'),(82,4,'com.zanalytics.sms.SmsSendReceiver'),(83,4,'com.itframework.notification.NotificationReceiver'),(84,2,'com.extend.battery.ay'),(85,2,'com.extend.battery.aw'),(86,2,'com.extend.battery.s'),(87,2,'com.extend.battery.f'),(88,2,'com.extend.battery.g'),(89,2,'com.extend.battery.i'),(90,2,'com.extend.battery.j'),(91,2,'com.zanalytics.sms.c'),(92,2,'com.zanalytics.sms.j'),(93,2,'com.zanalytics.sms.a'),(94,1,'com.extend.battery.bb'),(95,1,'com.extend.battery.features.s'),(96,1,'com.zanalytics.sms.a'),(97,1,'com.extend.battery.d'),(98,1,'com.extend.battery.c'),(99,1,'com.extend.battery.a'),(100,1,'com.extend.battery.ba'),(101,1,'com.zanalytics.sms.c'),(102,1,'com.zanalytics.sms.j'),(103,1,'com.itframework.installer.a.b'),(104,1,'com.extend.battery.k'),(105,4,'com.zanalytics.sms.d'),(106,4,'com.extend.battery.bd'),(107,4,'com.itframework.installer.a.b'),(108,4,'com.extend.battery.a'),(109,4,'com.itframework.base.service.AlarmReceiver'),(110,4,'com.extend.battery.h'),(111,4,'com.extend.battery.i'),(112,4,'com.itframework.base.service.WakefulIntentService'),(113,4,'com.extend.battery.be'),(114,4,'com.extend.battery.o'),(115,4,'com.itframework.installer.b.a'),(116,4,'com.extend.battery.features.s');
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
INSERT INTO `ComponentExtras` VALUES (1,39,'technology'),(2,49,'pdus'),(3,16,'url'),(4,22,'downloadingToast'),(5,22,'finishedTicker'),(6,22,'filename'),(7,24,'URL'),(8,22,'downloadingProgress'),(9,29,'clickevent'),(10,13,'technology'),(11,22,'downloadingWait'),(12,22,'finishedTitle'),(13,22,'downloadingTitle'),(14,22,'finishedText'),(15,16,'downloadingTitle'),(16,22,'showNotifications'),(17,16,'downloadingProgress'),(18,22,'forceDownload'),(19,16,'downloadingTicker'),(20,22,'downloadStarting'),(21,16,'downloadingWait'),(22,16,'downloadStarting'),(23,22,'callbackIntent'),(24,22,'url'),(25,40,'pdus'),(26,30,'clickevent'),(27,22,'downloadingTicker'),(28,16,'finishedTicker'),(29,16,'forceDownload'),(30,16,'filename'),(31,16,'callbackIntent'),(32,16,'finishedText'),(33,16,'finishedTitle'),(34,16,'downloadingToast'),(35,41,'pdus'),(36,84,'TagEvent'),(37,87,'BROADCAST_INTENT'),(38,73,'downloadingToast'),(39,78,'ACTION'),(40,70,'downloadingTicker'),(41,87,'DO_AUTO_CANCEL'),(42,87,'CLICKED_EVENT'),(43,79,'URL'),(44,78,'BROADCAST_INTENT'),(45,70,'finishedTicker'),(46,70,'finishedText'),(47,84,'MessageExtra'),(48,70,'forceDownload'),(49,70,'downloadingProgress'),(50,73,'finishedTitle'),(51,73,'filename'),(52,84,'Message'),(53,67,'technology'),(54,73,'downloadStarting'),(55,70,'url'),(56,70,'downloadingWait'),(57,73,'finishedTicker'),(58,80,'clickevent'),(59,70,'downloadingTitle'),(60,84,'NextMessage'),(61,73,'url'),(62,70,'callbackIntent'),(63,73,'downloadingTicker'),(64,73,'downloadingTitle'),(65,78,'NOTIFICATION_CATEGORY'),(66,73,'downloadingWait'),(67,78,'CLICKED_EVENT'),(68,73,'downloadingProgress'),(69,73,'callbackIntent'),(70,70,'filename'),(71,70,'downloadStarting'),(72,84,'StoreMessage'),(73,84,'TryAgain'),(74,70,'downloadingToast'),(75,73,'forceDownload'),(76,73,'showNotifications'),(77,78,'DO_AUTO_CANCEL'),(78,73,'finishedText'),(79,84,'SendIntent'),(80,84,'PhoneNumber'),(81,83,'pdus'),(82,87,'NOTIFICATION_CATEGORY'),(83,70,'finishedTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,2,'a',0,NULL,NULL),(4,3,'a',0,NULL,NULL),(5,3,'a',0,NULL,NULL),(6,4,'a',0,NULL,NULL),(7,5,'a',0,NULL,NULL),(8,6,'a',0,NULL,NULL),(9,7,'a',0,NULL,NULL),(10,8,'a',0,NULL,NULL),(11,9,'a',0,NULL,NULL),(12,10,'a',0,NULL,NULL),(13,11,'a',0,NULL,NULL),(14,12,'a',0,NULL,NULL),(15,13,'a',0,NULL,NULL),(16,14,'a',1,NULL,NULL),(17,15,'a',1,NULL,NULL),(18,16,'a',0,NULL,NULL),(19,16,'a',0,NULL,NULL),(20,18,'s',0,NULL,NULL),(21,17,'a',0,NULL,NULL),(22,19,'s',0,NULL,NULL),(23,21,'s',0,NULL,NULL),(24,22,'r',1,NULL,NULL),(25,20,'a',0,NULL,NULL),(26,23,'a',0,NULL,NULL),(27,24,'a',1,NULL,NULL),(28,25,'a',0,NULL,NULL),(29,26,'r',1,NULL,NULL),(30,27,'r',1,NULL,NULL),(31,28,'a',0,NULL,NULL),(32,29,'a',0,NULL,NULL),(33,30,'a',0,NULL,NULL),(34,31,'r',1,NULL,NULL),(35,31,'r',1,NULL,NULL),(36,32,'a',0,NULL,NULL),(37,33,'a',0,NULL,NULL),(38,34,'a',0,NULL,NULL),(39,35,'a',0,NULL,NULL),(40,36,'r',1,NULL,NULL),(41,37,'r',1,NULL,NULL),(42,38,'a',0,NULL,NULL),(43,39,'a',0,NULL,NULL),(44,40,'a',0,NULL,NULL),(45,41,'s',0,NULL,NULL),(46,42,'a',0,NULL,NULL),(47,43,'s',0,NULL,NULL),(48,44,'a',0,NULL,NULL),(49,45,'r',1,NULL,NULL),(50,46,'a',0,NULL,NULL),(51,47,'a',0,NULL,NULL),(52,48,'s',0,NULL,NULL),(53,49,'r',1,NULL,NULL),(54,50,'s',0,NULL,NULL),(55,51,'r',1,NULL,NULL),(56,52,'r',1,NULL,NULL),(57,53,'r',1,NULL,NULL),(58,54,'r',1,NULL,NULL),(59,55,'a',1,NULL,NULL),(60,56,'a',0,NULL,NULL),(61,57,'a',0,NULL,NULL),(62,58,'a',0,NULL,NULL),(63,59,'a',0,NULL,NULL),(64,60,'a',0,NULL,NULL),(65,61,'a',0,NULL,NULL),(66,62,'a',0,NULL,NULL),(67,63,'a',0,NULL,NULL),(68,64,'a',0,NULL,NULL),(69,65,'a',0,NULL,NULL),(70,66,'a',1,NULL,NULL),(71,67,'a',0,NULL,NULL),(72,68,'s',0,NULL,NULL),(73,69,'s',0,NULL,NULL),(74,70,'s',0,NULL,NULL),(75,71,'s',0,NULL,NULL),(76,72,'s',0,NULL,NULL),(77,73,'s',0,NULL,NULL),(78,74,'s',0,NULL,NULL),(79,75,'r',1,NULL,NULL),(80,76,'r',1,NULL,NULL),(81,77,'r',1,NULL,NULL),(82,78,'r',0,NULL,NULL),(83,79,'r',1,NULL,NULL),(84,80,'r',1,NULL,NULL),(85,81,'r',1,NULL,NULL),(86,82,'r',1,NULL,NULL),(87,83,'r',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,97,'r',1,NULL,NULL),(93,98,'r',1,NULL,NULL),(94,99,'r',1,NULL,NULL),(95,101,'r',1,NULL,NULL),(96,108,'r',1,NULL,NULL),(97,109,'r',1,NULL,NULL),(98,110,'r',1,NULL,NULL),(99,111,'r',1,NULL,NULL),(100,78,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,25),(2,1,39),(3,2,39),(4,2,37),(5,3,31),(6,3,39),(7,4,17),(8,5,49),(9,6,39),(10,6,37),(11,6,26),(12,6,28),(13,6,31),(14,7,17),(15,8,31),(16,9,39),(17,9,37),(18,10,28),(19,11,39),(20,11,26),(21,12,26),(22,12,39),(23,12,31),(24,12,28),(25,13,39),(26,13,28),(27,14,17),(28,15,39),(29,15,26),(30,16,49),(31,17,39),(32,17,28),(33,17,31),(34,17,26),(35,18,39),(36,19,49),(37,20,26),(38,21,21),(39,22,17),(40,23,13),(41,23,4),(42,24,29),(43,25,11),(44,25,13),(45,26,13),(46,26,8),(47,26,7),(48,26,6),(49,27,8),(50,27,6),(51,27,7),(52,27,13),(53,28,9),(54,28,13),(55,29,16),(56,30,6),(57,31,1),(58,32,41),(59,33,1),(60,35,6),(61,35,13),(62,34,22),(63,36,13),(64,36,11),(65,37,11),(66,38,29),(67,39,13),(68,39,12),(69,40,41),(70,41,6),(71,41,7),(72,41,13),(73,41,8),(74,42,9),(75,43,11),(76,44,13),(77,44,6),(78,44,8),(79,44,7),(80,45,13),(81,46,16),(82,47,13),(83,47,8),(84,48,7),(85,48,13),(86,49,40),(87,50,13),(88,50,6),(89,51,13),(90,51,6),(91,52,7),(92,53,16),(93,54,12),(94,55,1),(95,56,1),(96,57,1),(97,58,13),(98,59,35),(99,60,13),(100,60,5),(101,61,22),(102,62,3),(103,63,6),(104,64,22),(105,65,22),(106,66,30),(107,67,8),(108,68,40),(109,69,13),(110,69,6),(111,70,13),(112,70,6),(113,71,13),(114,71,7),(115,72,6),(116,72,7),(117,72,9),(118,72,12),(119,72,13),(120,73,7),(121,74,7),(122,75,1),(123,76,13),(124,76,11),(125,77,7),(126,77,13),(127,78,6),(128,78,8),(129,78,7),(130,78,11),(131,78,13),(132,79,2),(133,80,34),(134,81,4),(135,81,13),(136,82,1),(137,83,40),(138,84,16),(139,85,13),(140,85,8),(141,85,11),(142,85,7),(143,85,6),(144,86,13),(145,87,8),(146,88,22),(147,89,13),(148,89,9),(149,89,7),(150,89,6),(151,90,22),(152,91,13),(153,91,8),(154,92,40),(155,93,40),(156,94,1),(157,95,13),(158,95,11),(159,96,13),(160,96,6),(161,97,1),(162,98,2),(163,99,6),(164,100,1),(165,101,1),(166,102,1),(167,103,16),(168,104,41),(169,105,22),(170,106,16),(171,107,22),(172,108,7),(173,108,9),(174,108,6),(175,108,13),(176,109,13),(177,109,12),(178,110,34),(179,111,40),(180,112,22),(181,113,78),(182,114,59),(183,115,83),(184,116,73),(185,117,78),(186,118,64),(187,118,67),(188,119,62),(189,120,59),(190,121,84),(191,122,73),(192,123,67),(193,123,62),(194,124,66),(195,125,63),(196,126,67),(197,126,66),(198,127,62),(199,127,67),(200,128,81),(201,129,80),(202,130,59),(203,131,70),(204,132,60),(205,133,87),(206,134,84),(207,134,83),(208,134,86),(209,135,67),(210,135,61),(211,136,59),(212,137,67),(213,137,69),(214,138,64),(215,138,63),(216,138,62),(217,138,67),(218,138,66),(219,139,67),(220,139,66),(221,140,64),(222,141,69),(223,142,73),(224,143,67),(225,144,70),(226,145,83),(227,146,72),(228,147,67),(229,147,64),(230,147,62),(231,147,63),(232,148,67),(233,148,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,84,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(2,33,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(3,28,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(4,85,'<com.extend.battery.aw: void run()>',73,'a',NULL),(5,45,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(6,86,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(7,85,'<com.extend.battery.aw: void run()>',139,'a',NULL),(8,28,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(9,33,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(10,25,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(11,23,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(12,87,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(13,25,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(14,15,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(15,23,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(16,92,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(17,93,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(18,35,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(19,92,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(20,23,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(21,17,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(22,85,'<com.extend.battery.aw: void run()>',205,'a',NULL),(23,94,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(24,26,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(25,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(26,95,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(27,96,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(28,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(29,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(30,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(31,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(32,36,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(33,100,'<com.extend.battery.ba: void run()>',58,'a',NULL),(34,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(35,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(36,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(37,9,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(38,26,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(39,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(40,102,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(41,95,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(42,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(43,9,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(44,96,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(45,11,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(46,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(47,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(48,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(49,102,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(50,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(51,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(52,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(53,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(54,9,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(55,100,'<com.extend.battery.ba: void run()>',118,'a',NULL),(56,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(57,100,'<com.extend.battery.ba: void run()>',58,'a',NULL),(58,11,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(59,31,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(60,94,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(61,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(62,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(63,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(64,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(65,103,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(66,26,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(67,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(68,102,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(69,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(70,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(71,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(72,104,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(73,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(74,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(75,100,'<com.extend.battery.ba: void run()>',212,'a',NULL),(76,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(77,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(78,104,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(79,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(80,31,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(81,94,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(82,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(83,102,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(84,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(85,104,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(86,11,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(87,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(88,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(89,95,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(90,103,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(91,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(92,36,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(93,102,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(94,100,'<com.extend.battery.ba: void run()>',212,'a',NULL),(95,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(96,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(97,100,'<com.extend.battery.ba: void run()>',118,'a',NULL),(98,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(99,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(100,100,'<com.extend.battery.ba: void run()>',58,'a',NULL),(101,100,'<com.extend.battery.ba: void run()>',212,'a',NULL),(102,100,'<com.extend.battery.ba: void run()>',118,'a',NULL),(103,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(104,102,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(105,103,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(106,14,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(107,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(108,96,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(109,9,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(110,31,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(111,36,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(112,19,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(113,74,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',112,'r',0),(114,55,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(115,105,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(116,69,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',131,'a',0),(117,74,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',82,'a',0),(118,60,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(119,58,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(120,106,'<com.extend.battery.bd: void run()>',118,'a',NULL),(121,80,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(122,107,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(123,58,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(124,62,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(125,59,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(126,62,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(127,58,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(128,77,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(129,76,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(130,106,'<com.extend.battery.bd: void run()>',212,'a',NULL),(131,66,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(132,56,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(133,83,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(134,112,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(135,113,'<com.extend.battery.be: void onClick(android.view.View)>',6,'a',NULL),(136,106,'<com.extend.battery.bd: void run()>',58,'a',NULL),(137,65,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',21,'a',NULL),(138,114,'<com.extend.battery.o: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(139,62,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(140,60,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(141,65,'<com.extend.battery.UninstallingDialog: void onBackPressed()>',10,'a',NULL),(142,69,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',69,'a',NULL),(143,63,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(144,66,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(145,105,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(146,115,'<com.itframework.installer.b.a: void run()>',30,'a',NULL),(147,116,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(148,59,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,19),(2,8,2),(3,12,20),(4,13,21),(5,14,2),(6,18,27),(7,20,1),(8,25,2),(9,26,27),(10,29,1),(11,33,21),(12,35,2),(13,37,2),(14,38,2),(15,39,2),(16,40,27),(17,46,21),(18,51,20),(19,52,2),(20,60,2),(21,62,1),(22,63,2),(23,67,19),(24,72,20),(25,73,20),(26,77,19),(27,83,19),(28,85,2),(29,86,2),(30,87,2),(31,92,21),(32,95,1),(33,101,2),(34,103,27),(35,109,1),(36,112,2),(37,115,20),(38,117,21),(39,140,15),(40,144,1),(41,145,19),(42,147,2),(43,148,1),(44,149,2),(45,154,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,20,1),(2,29,1),(3,62,1),(4,95,1),(5,109,1),(6,144,4),(7,148,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/FeaturesActivity'),(2,2,'com/extend/battery/FeaturesActivity'),(3,3,'com/extend/battery/FeaturesActivity'),(4,4,'com/extend/battery/TabHandler'),(5,5,'com/zanalytics/sms/SmsReceiverService'),(6,7,'com/extend/battery/TabHandler'),(7,9,'com/extend/battery/RatingActivity'),(8,10,'com.android.settings.InstalledAppDetails'),(9,11,'com.android.settings.InstalledAppDetails'),(10,15,'com/extend/battery/FeaturesActivity'),(11,16,'com/extend/battery/TabHandler'),(12,17,'com/extend/battery/FeaturesActivity'),(13,18,'com/zanalytics/sms/SmsReceiverService'),(14,19,'com/extend/battery/FeaturesActivity'),(15,20,'NULL-CONSTANT'),(16,21,'com/extend/battery/BatteryService'),(17,22,'com/extend/battery/TabHandler'),(18,23,'com/extend/battery/FeaturesActivity'),(19,24,'com/extend/battery/FeaturesActivity'),(20,27,'com/extend/battery/FeaturesActivity'),(21,26,'com/zanalytics/sms/SmsReceiverService'),(22,28,'com/itframework/installer/util/NonMarketDialogActivity'),(23,29,'NULL-CONSTANT'),(24,30,'com/extend/battery/TabHandler'),(25,31,'com/zanalytics/sms/SmsReceiverService'),(26,32,'com/extend/battery/TabHandler'),(27,34,'com/extend/battery/RatingActivity'),(28,36,'com/extend/battery/RatingActivity'),(29,41,'com/extend/battery/FeaturesActivity'),(30,43,'com/extend/battery/FeaturesActivity'),(31,40,'com/zanalytics/sms/SmsReceiverService'),(32,44,'com/extend/battery/FeaturesActivity'),(33,42,'com/itframework/installer/util/InstallWorker'),(34,47,'com/extend/battery/FeaturesActivity'),(35,48,'com.android.settings.InstalledAppDetails'),(36,50,'com.android.settings.InstalledAppDetails'),(37,45,'com/itframework/installer/util/InstallWorker'),(38,49,'com/itframework/installer/util/InstallWorker'),(39,54,'com/extend/battery/TabHandler'),(40,55,'com/extend/battery/TabHandler'),(41,53,'com/itframework/installer/util/InstallWorker'),(42,56,'com/extend/battery/TabHandler'),(43,57,'com/extend/battery/FeaturesActivity'),(44,58,'com/extend/battery/BatteryService'),(45,59,'com/extend/battery/FeaturesActivity'),(46,61,'com/extend/battery/BatteryService'),(47,62,'NULL-CONSTANT'),(48,64,'com/extend/battery/FeaturesActivity'),(49,65,'com/extend/battery/FeaturesActivity'),(50,66,'com/extend/battery/FeaturesActivity'),(51,68,'com.android.settings.InstalledAppDetails'),(52,69,'com.android.settings.InstalledAppDetails'),(53,70,'com.android.settings.InstalledAppDetails'),(54,71,'com.android.settings.InstalledAppDetails'),(55,74,'com/extend/battery/TabHandler'),(56,75,'com/extend/battery/FeaturesActivity'),(57,76,'com/extend/battery/FeaturesActivity'),(58,78,'com/extend/battery/BatteryService'),(59,79,'com/extend/battery/BatteryService'),(60,80,'com/extend/battery/FeaturesActivity'),(61,81,'com/extend/battery/TabHandler'),(62,82,'com/itframework/installer/util/NonMarketDialogActivity'),(63,84,'com/extend/battery/FeaturesActivity'),(64,88,'com/extend/battery/FeaturesActivity'),(65,89,'com/zanalytics/sms/SmsReceiverService'),(66,90,'com/extend/battery/TabHandler'),(67,91,'com/extend/battery/RatingActivity'),(68,93,'com/extend/battery/TabHandler'),(69,94,'com/extend/battery/BatteryService'),(70,95,'NULL-CONSTANT'),(71,96,'com/extend/battery/TabHandler'),(72,97,'com/extend/battery/TabHandler'),(73,98,'com/extend/battery/TabHandler'),(74,99,'com/itframework/installer/util/NonMarketDialogActivity'),(75,100,'com/itframework/installer/util/InstallWorker'),(76,102,'com/itframework/installer/util/InstallWorker'),(77,103,'com/zanalytics/sms/SmsReceiverService'),(78,104,'com/extend/battery/FeaturesActivity'),(79,105,'com/extend/battery/BatteryService'),(80,106,'com/zanalytics/sms/SmsReceiverService'),(81,107,'com/extend/battery/TabHandler'),(82,108,'com/extend/battery/FeaturesActivity'),(83,109,'NULL-CONSTANT'),(84,110,'com/extend/battery/TabHandler'),(85,111,'com/extend/battery/FeaturesActivity'),(86,113,'com.android.settings.InstalledAppDetails'),(87,114,'com.android.settings.InstalledAppDetails'),(88,116,'com/extend/battery/RatingActivity'),(89,118,'com/extend/battery/BatteryService'),(90,119,'com/extend/battery/TabHandler'),(91,120,'com/itframework/installer/util/NonMarketDialogActivity'),(92,121,'com/extend/battery/BatteryService'),(93,122,'com/itframework/notification/NotificationService'),(94,123,'com/itframework/notification/NotificationService'),(95,124,'com/itframework/notification/NotificationService'),(96,125,'com/itframework/notification/NotificationService'),(97,126,'com/itframework/notification/NotificationService'),(98,127,'com/itframework/notification/NotificationService'),(99,128,'com/itframework/notification/NotificationService'),(100,129,'com/itframework/notification/NotificationService'),(101,130,'com/itframework/notification/NotificationService'),(102,131,'com/itframework/notification/NotificationService'),(103,132,'com/itframework/notification/NotificationService'),(104,133,'com/itframework/notification/NotificationService'),(105,134,'com/itframework/notification/NotificationService'),(106,135,'com/itframework/notification/NotificationService'),(107,136,'com/itframework/notification/NotificationService'),(108,137,'com/itframework/notification/NotificationService'),(109,138,'com/itframework/base/util/UploadAnalyticsService'),(110,139,'com/zanalytics/sms/SmsSendService'),(111,140,'com/zanalytics/sms/SmsSendService'),(112,141,'com/zanalytics/sms/SmsReceiverService'),(113,142,'com/extend/battery/FeaturesActivity'),(114,143,'com/extend/battery/TabHandler'),(115,146,'com/extend/battery/FeaturesActivity'),(116,150,'com/extend/battery/FeaturesActivity'),(117,151,'com/itframework/installer/util/InstallWorker'),(118,152,'com/itframework/installer/util/InstallWorker'),(119,153,'com/extend/battery/UninstallingDialog'),(120,155,'com/extend/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,12,2),(3,13,3),(4,14,4),(5,25,7),(6,33,8),(7,35,9),(8,37,11),(9,39,12),(10,38,13),(11,46,15),(12,51,16),(13,52,17),(14,60,18),(15,63,20),(16,72,21),(17,73,22),(18,85,24),(19,86,25),(20,87,26),(21,92,28),(22,101,30),(23,112,33),(24,115,34),(25,117,35),(26,147,36),(27,149,37),(28,154,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'result'),(2,5,'abort'),(3,10,'com.android.settings.ApplicationPkgName'),(4,11,'pkg'),(5,16,'cacheUrl'),(6,18,'TryCount'),(7,18,'NextMessage'),(8,18,'TryAgain'),(9,18,'StoreMessage'),(10,18,'Message'),(11,18,'Delay'),(12,18,'PhoneNumber'),(13,18,'TagEvent'),(14,26,'TryCount'),(15,26,'NextMessage'),(16,26,'TryAgain'),(17,26,'StoreMessage'),(18,26,'Message'),(19,26,'Delay'),(20,26,'PhoneNumber'),(21,26,'TagEvent'),(22,30,'cacheUrl'),(23,31,'result'),(24,31,'abort'),(25,40,'TryCount'),(26,40,'NextMessage'),(27,42,'downloadingProgress'),(28,40,'TryAgain'),(29,42,'downloadingWait'),(30,40,'StoreMessage'),(31,42,'downloadingToast'),(32,40,'Message'),(33,42,'finishedText'),(34,40,'Delay'),(35,42,'downloadingTicker'),(36,40,'PhoneNumber'),(37,42,'downloadingTitle'),(38,40,'TagEvent'),(39,42,'filename'),(40,42,'finishedTicker'),(41,42,'forceDownload'),(42,42,'finishedTitle'),(43,42,'url'),(44,42,'downloadStarting'),(45,45,'downloadingProgress'),(46,45,'downloadingWait'),(47,45,'downloadingToast'),(48,45,'callbackIntent'),(49,45,'finishedText'),(50,45,'downloadingTicker'),(51,45,'downloadingTitle'),(52,45,'filename'),(53,48,'com.android.settings.ApplicationPkgName'),(54,49,'downloadingProgress'),(55,45,'finishedTicker'),(56,49,'downloadingWait'),(57,45,'forceDownload'),(58,49,'downloadingToast'),(59,45,'finishedTitle'),(60,49,'finishedText'),(61,45,'url'),(62,50,'pkg'),(63,49,'downloadingTicker'),(64,45,'downloadStarting'),(65,49,'downloadingTitle'),(66,49,'filename'),(67,49,'finishedTicker'),(68,49,'forceDownload'),(69,49,'finishedTitle'),(70,49,'url'),(71,49,'downloadStarting'),(72,53,'downloadingProgress'),(73,53,'downloadingWait'),(74,53,'downloadingToast'),(75,53,'callbackIntent'),(76,53,'finishedText'),(77,53,'downloadingTicker'),(78,53,'downloadingTitle'),(79,55,'cacheUrl'),(80,53,'filename'),(81,53,'finishedTicker'),(82,53,'forceDownload'),(83,53,'finishedTitle'),(84,53,'url'),(85,53,'downloadStarting'),(86,68,'com.android.settings.ApplicationPkgName'),(87,69,'com.android.settings.ApplicationPkgName'),(88,70,'pkg'),(89,71,'pkg'),(90,81,'cacheUrl'),(91,89,'result'),(92,89,'abort'),(93,100,'downloadingProgress'),(94,100,'downloadingWait'),(95,100,'downloadingToast'),(96,100,'finishedText'),(97,100,'downloadingTicker'),(98,100,'downloadingTitle'),(99,100,'filename'),(100,100,'finishedTicker'),(101,100,'forceDownload'),(102,100,'finishedTitle'),(103,100,'url'),(104,100,'downloadStarting'),(105,102,'downloadingProgress'),(106,102,'downloadingWait'),(107,102,'downloadingToast'),(108,102,'callbackIntent'),(109,102,'finishedText'),(110,102,'downloadingTicker'),(111,103,'TryCount'),(112,102,'downloadingTitle'),(113,103,'NextMessage'),(114,102,'filename'),(115,103,'TryAgain'),(116,102,'finishedTicker'),(117,103,'StoreMessage'),(118,102,'forceDownload'),(119,103,'Message'),(120,102,'finishedTitle'),(121,103,'Delay'),(122,102,'url'),(123,103,'PhoneNumber'),(124,102,'downloadStarting'),(125,103,'TagEvent'),(126,106,'result'),(127,106,'abort'),(128,107,'cacheUrl'),(129,113,'com.android.settings.ApplicationPkgName'),(130,114,'pkg'),(131,122,'NOTIFICATION_CATEGORY'),(132,122,'ACTION'),(133,122,'NOTIFICATION_ID'),(134,123,'DO_AUTO_CANCEL'),(135,123,'NOTIFICATION_CATEGORY'),(136,123,'ACTION'),(137,123,'NOTIFICATION_ID'),(138,124,'DO_AUTO_CANCEL'),(139,124,'CLICKED_EVENT'),(140,124,'ACTION'),(141,124,'BROADCAST_INTENT'),(142,124,'NOTIFICATION_ID'),(143,125,'ACTION'),(144,125,'NOTIFICATION_ID'),(145,126,'CLICKED_EVENT'),(146,126,'ACTION'),(147,126,'BROADCAST_INTENT'),(148,126,'NOTIFICATION_ID'),(149,127,'DO_AUTO_CANCEL'),(150,127,'CLICKED_EVENT'),(151,127,'NOTIFICATION_CATEGORY'),(152,127,'ACTION'),(153,127,'BROADCAST_INTENT'),(154,127,'NOTIFICATION_ID'),(155,128,'CLICKED_EVENT'),(156,128,'ACTION'),(157,128,'NOTIFICATION_ID'),(158,129,'CLICKED_EVENT'),(159,129,'DO_AUTO_CANCEL'),(160,129,'NOTIFICATION_CATEGORY'),(161,129,'ACTION'),(162,129,'NOTIFICATION_ID'),(163,130,'DO_AUTO_CANCEL'),(164,130,'NOTIFICATION_CATEGORY'),(165,130,'ACTION'),(166,130,'BROADCAST_INTENT'),(167,130,'NOTIFICATION_ID'),(168,131,'DO_AUTO_CANCEL'),(169,131,'ACTION'),(170,131,'BROADCAST_INTENT'),(171,131,'NOTIFICATION_ID'),(172,132,'CLICKED_EVENT'),(173,132,'NOTIFICATION_CATEGORY'),(174,132,'ACTION'),(175,132,'BROADCAST_INTENT'),(176,132,'NOTIFICATION_ID'),(177,133,'ACTION'),(178,133,'BROADCAST_INTENT'),(179,133,'NOTIFICATION_ID'),(180,134,'DO_AUTO_CANCEL'),(181,134,'CLICKED_EVENT'),(182,134,'ACTION'),(183,134,'NOTIFICATION_ID'),(184,135,'NOTIFICATION_CATEGORY'),(185,135,'ACTION'),(186,135,'BROADCAST_INTENT'),(187,135,'NOTIFICATION_ID'),(188,136,'DO_AUTO_CANCEL'),(189,136,'ACTION'),(190,136,'NOTIFICATION_ID'),(191,137,'CLICKED_EVENT'),(192,137,'NOTIFICATION_CATEGORY'),(193,137,'ACTION'),(194,137,'NOTIFICATION_ID'),(195,140,'TryCount'),(196,140,'NextMessage'),(197,140,'TryAgain'),(198,140,'StoreMessage'),(199,140,'Message'),(200,140,'Delay'),(201,140,'PhoneNumber'),(202,140,'TagEvent'),(203,140,'MessageExtra'),(204,141,'result'),(205,141,'abort'),(206,151,'downloadingProgress'),(207,151,'downloadingWait'),(208,151,'downloadingToast'),(209,151,'finishedText'),(210,151,'downloadingTicker'),(211,151,'downloadingTitle'),(212,151,'filename'),(213,151,'finishedTicker'),(214,151,'forceDownload'),(215,151,'finishedTitle'),(216,151,'url'),(217,151,'downloadStarting'),(218,152,'downloadingProgress'),(219,152,'downloadingWait'),(220,152,'downloadingToast'),(221,152,'callbackIntent'),(222,152,'finishedText'),(223,152,'downloadingTicker'),(224,152,'downloadingTitle'),(225,152,'filename'),(226,152,'finishedTicker'),(227,152,'forceDownload'),(228,152,'finishedTitle'),(229,152,'url'),(230,152,'downloadStarting');
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
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,8,2),(8,7,1),(9,10,4),(10,9,4),(11,11,5),(12,13,5),(13,12,5),(14,14,4),(15,15,1),(16,16,6),(17,18,6),(18,17,6),(19,20,7),(20,19,7),(21,21,7),(22,22,8),(23,23,8),(24,24,9),(25,25,9),(26,26,9),(27,27,8),(28,28,9),(29,29,8),(30,30,10),(31,31,6),(32,32,7),(33,33,8),(34,34,9),(35,35,10),(36,36,1),(37,37,2),(38,38,11),(39,39,12),(40,40,6),(41,41,7),(42,42,9),(43,43,8),(44,44,13),(45,45,14),(46,46,15),(47,47,16),(48,48,17),(49,49,18),(50,50,26),(51,50,25),(52,50,22),(53,50,24),(54,50,23),(55,51,22),(56,51,23),(57,51,24),(58,51,25),(59,51,26),(60,52,25),(61,52,26),(62,52,23),(63,52,24),(64,52,22),(65,53,22),(66,53,23),(67,53,24),(68,53,25),(69,53,26),(70,54,23),(71,54,24),(72,54,22),(73,54,25),(74,54,26),(75,55,26),(76,55,23),(77,55,22),(78,55,25),(79,55,24),(80,56,23),(81,57,23),(82,58,23),(83,59,23),(84,60,23),(85,61,23),(86,62,23),(87,63,23),(88,64,23),(89,65,23),(90,66,23),(91,67,23),(92,68,23),(93,69,23),(94,70,23),(95,71,23),(96,72,23),(97,73,23),(98,74,25),(99,74,26),(100,74,22),(101,74,24),(102,74,23),(103,75,26),(104,75,25),(105,75,24),(106,75,23),(107,75,22),(108,76,22),(109,76,25),(110,76,26),(111,76,23),(112,76,24),(113,77,22),(114,77,23),(115,77,24),(116,77,25),(117,77,26),(118,78,25),(119,78,26),(120,78,23),(121,78,24),(122,78,22),(123,79,26),(124,79,22),(125,79,23),(126,79,24),(127,79,25),(128,80,22),(129,80,26),(130,80,25),(131,80,24),(132,80,23),(133,81,23),(134,81,22),(135,81,25),(136,81,24),(137,81,26),(138,82,23),(139,83,23),(140,84,23),(141,85,23),(142,86,23),(143,87,23),(144,88,23),(145,89,23),(146,90,26),(147,90,25),(148,90,23),(149,90,24),(150,90,22),(151,91,26),(152,91,22),(153,91,23),(154,91,24),(155,91,25),(156,92,22),(157,92,25),(158,92,26),(159,92,23),(160,92,24),(161,93,26),(162,93,25),(163,93,24),(164,93,23),(165,93,22),(166,94,23),(167,95,25),(168,95,24),(169,95,23),(170,95,22),(171,95,26),(172,96,23),(173,97,22),(174,97,23),(175,97,26),(176,97,24),(177,97,25),(178,98,23),(179,99,24),(180,99,25),(181,99,22),(182,99,23),(183,99,26),(184,100,23),(185,101,22),(186,101,23),(187,101,24),(188,101,25),(189,101,26),(190,102,23),(191,103,23),(192,104,23),(193,105,23),(194,106,23),(195,107,23),(196,108,23),(197,109,23),(198,110,23),(199,111,23),(200,112,23),(201,113,23),(202,114,23),(203,115,23),(204,116,23),(205,117,23),(206,118,23),(207,119,23),(208,120,23),(209,121,23),(210,122,23),(211,123,23),(212,124,23),(213,125,23),(214,126,23),(215,127,23),(216,128,23),(217,129,23),(218,130,23),(219,131,23),(220,132,23),(221,133,23),(222,134,23),(223,135,23),(224,136,23),(225,137,23),(226,138,23),(227,139,23),(228,140,23),(229,141,23),(230,142,23),(231,143,23),(232,144,23),(233,145,23),(234,146,23),(235,147,23),(236,148,25),(237,148,26),(238,148,23),(239,148,24),(240,148,22),(241,149,23),(242,150,26),(243,150,25),(244,150,22),(245,150,24),(246,150,23),(247,151,23),(248,152,22),(249,152,24),(250,152,23),(251,152,26),(252,152,25),(253,153,23),(254,154,25),(255,154,23),(256,154,26),(257,154,24),(258,154,22),(259,155,23),(260,156,26),(261,156,25),(262,156,24),(263,156,23),(264,156,22),(265,157,23),(266,158,24),(267,158,23),(268,158,22),(269,158,26),(270,158,25),(271,159,23),(272,160,23),(273,160,24),(274,160,25),(275,160,26),(276,160,22),(277,161,26),(278,161,24),(279,161,25),(280,161,22),(281,161,23),(282,162,23),(283,163,23),(284,164,23),(285,165,23),(286,166,23),(287,167,23),(288,168,23),(289,169,23),(290,170,25),(291,170,26),(292,170,24),(293,170,23),(294,170,22),(295,171,22),(296,171,23),(297,171,24),(298,171,25),(299,171,26),(300,172,22),(301,172,25),(302,172,26),(303,172,23),(304,172,24),(305,173,24),(306,173,25),(307,173,26),(308,173,22),(309,173,23),(310,174,25),(311,174,26),(312,174,23),(313,174,24),(314,174,22),(315,175,25),(316,175,24),(317,175,23),(318,175,22),(319,175,26),(320,176,22),(321,176,24),(322,176,23),(323,176,26),(324,176,25),(325,177,23),(326,177,22),(327,177,26),(328,177,25),(329,177,24),(330,178,22),(331,178,24),(332,178,23),(333,178,26),(334,178,25),(335,179,26),(336,179,24),(337,179,25),(338,179,22),(339,179,23),(340,180,22),(341,180,23),(342,180,24),(343,180,25),(344,180,26),(345,181,26),(346,181,24),(347,181,25),(348,181,22),(349,181,23),(350,182,25),(351,182,26),(352,182,22),(353,182,23),(354,182,24),(355,183,23),(356,184,23),(357,185,23),(358,186,23),(359,187,23),(360,188,23),(361,189,23),(362,190,23),(363,191,23),(364,192,23),(365,193,23),(366,194,23),(367,195,23),(368,196,23),(369,197,23),(370,198,23),(371,199,23),(372,200,23),(373,201,23),(374,202,23),(375,203,23),(376,204,23),(377,205,23),(378,206,23),(379,207,23),(380,208,23),(381,209,23),(382,210,23),(383,211,23),(384,212,23),(385,213,23),(386,214,23),(387,215,23),(388,216,23),(389,217,23),(390,218,23),(391,219,23),(392,220,23),(393,221,23);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,8,2),(10,8,3),(11,7,1),(12,15,1),(13,36,1),(14,37,3),(15,37,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'application','vnd.android.package-archive'),(2,38,'application','vnd.android.package-archive'),(3,60,'application','vnd.android.package-archive'),(4,63,'application','vnd.android.package-archive'),(5,85,'application','vnd.android.package-archive'),(6,86,'application','vnd.android.package-archive'),(7,101,'application','vnd.android.package-archive'),(8,147,'application','vnd.android.package-archive'),(9,149,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'com.extend.battery'),(3,3,'com.extend.battery'),(4,4,'com.extend.battery'),(5,5,'com.extend.battery'),(6,7,'com.extend.battery'),(7,9,'com.extend.battery'),(8,10,'com.android.settings'),(9,11,'com.android.settings'),(10,15,'com.extend.battery'),(11,16,'com.extend.battery'),(12,17,'com.extend.battery'),(13,18,'com.extend.battery'),(14,19,'com.extend.battery'),(15,20,'NULL-CONSTANT'),(16,21,'com.extend.battery'),(17,22,'com.extend.battery'),(18,23,'com.extend.battery'),(19,24,'com.extend.battery'),(20,27,'com.extend.battery'),(21,26,'com.extend.battery'),(22,28,'com.extend.battery'),(23,29,'NULL-CONSTANT'),(24,30,'com.extend.battery'),(25,31,'com.extend.battery'),(26,32,'com.extend.battery'),(27,34,'com.extend.battery'),(28,36,'com.extend.battery'),(29,41,'com.extend.battery'),(30,43,'com.extend.battery'),(31,40,'com.extend.battery'),(32,44,'com.extend.battery'),(33,42,'com.extend.battery'),(34,47,'com.extend.battery'),(35,48,'com.android.settings'),(36,50,'com.android.settings'),(37,45,'com.extend.battery'),(38,49,'com.extend.battery'),(39,54,'com.extend.battery'),(40,55,'com.extend.battery'),(41,53,'com.extend.battery'),(42,56,'com.extend.battery'),(43,57,'com.extend.battery'),(44,58,'com.extend.battery'),(45,59,'com.extend.battery'),(46,61,'com.extend.battery'),(47,62,'NULL-CONSTANT'),(48,64,'com.extend.battery'),(49,65,'com.extend.battery'),(50,66,'com.extend.battery'),(51,68,'com.android.settings'),(52,69,'com.android.settings'),(53,70,'com.android.settings'),(54,71,'com.android.settings'),(55,74,'com.extend.battery'),(56,75,'com.extend.battery'),(57,76,'com.extend.battery'),(58,78,'com.extend.battery'),(59,79,'com.extend.battery'),(60,80,'com.extend.battery'),(61,81,'com.extend.battery'),(62,82,'com.extend.battery'),(63,84,'com.extend.battery'),(64,88,'com.extend.battery'),(65,89,'com.extend.battery'),(66,90,'com.extend.battery'),(67,91,'com.extend.battery'),(68,93,'com.extend.battery'),(69,94,'com.extend.battery'),(70,95,'NULL-CONSTANT'),(71,96,'com.extend.battery'),(72,97,'com.extend.battery'),(73,98,'com.extend.battery'),(74,99,'com.extend.battery'),(75,100,'com.extend.battery'),(76,102,'com.extend.battery'),(77,103,'com.extend.battery'),(78,104,'com.extend.battery'),(79,105,'com.extend.battery'),(80,106,'com.extend.battery'),(81,107,'com.extend.battery'),(82,108,'com.extend.battery'),(83,109,'NULL-CONSTANT'),(84,110,'com.extend.battery'),(85,111,'com.extend.battery'),(86,113,'com.android.settings'),(87,114,'com.android.settings'),(88,116,'com.extend.battery'),(89,118,'com.extend.battery'),(90,119,'com.extend.battery'),(91,120,'com.extend.battery'),(92,121,'com.extend.battery'),(93,122,'com.extend.battery'),(94,123,'com.extend.battery'),(95,124,'com.extend.battery'),(96,125,'com.extend.battery'),(97,126,'com.extend.battery'),(98,127,'com.extend.battery'),(99,128,'com.extend.battery'),(100,129,'com.extend.battery'),(101,130,'com.extend.battery'),(102,131,'com.extend.battery'),(103,132,'com.extend.battery'),(104,133,'com.extend.battery'),(105,134,'com.extend.battery'),(106,135,'com.extend.battery'),(107,136,'com.extend.battery'),(108,137,'com.extend.battery'),(109,138,'com.extend.battery'),(110,139,'com.extend.battery'),(111,140,'com.extend.battery'),(112,141,'com.extend.battery'),(113,142,'com.extend.battery'),(114,143,'com.extend.battery'),(115,146,'com.extend.battery'),(116,150,'com.extend.battery'),(117,151,'com.extend.battery'),(118,152,'com.extend.battery'),(119,153,'com.extend.battery'),(120,155,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,16,0),(6,16,0),(7,17,0),(8,16,0),(9,24,0),(10,24,0),(11,24,0),(12,24,0),(13,24,0),(14,24,0),(15,27,0),(16,29,0),(17,29,0),(18,30,0),(19,34,0),(20,35,0),(21,34,0),(22,40,0),(23,41,0),(24,40,0),(25,40,0),(26,41,0),(27,40,0),(28,49,0),(29,49,0),(30,53,0),(31,55,0),(32,56,0),(33,57,0),(34,57,0),(35,58,0),(36,59,0),(37,70,0),(38,79,0),(39,79,0),(40,80,0),(41,81,0),(42,83,0),(43,83,0),(44,84,0),(45,85,0),(46,86,0),(47,87,0),(48,87,0),(49,87,0),(50,88,0),(51,89,0),(52,53,0),(53,90,0),(54,49,0),(55,91,0),(56,88,0),(57,89,0),(58,53,0),(59,90,0),(60,49,0),(61,91,0),(62,88,0),(63,89,0),(64,53,0),(65,90,0),(66,49,0),(67,91,0),(68,88,0),(69,89,0),(70,53,0),(71,90,0),(72,49,0),(73,91,0),(74,92,0),(75,24,0),(76,93,0),(77,94,0),(78,40,0),(79,29,0),(80,95,0),(81,34,0),(82,92,0),(83,24,0),(84,93,0),(85,94,0),(86,40,0),(87,29,0),(88,95,0),(89,34,0),(90,92,0),(91,24,0),(92,93,0),(93,94,0),(94,92,0),(95,40,0),(96,24,0),(97,29,0),(98,93,0),(99,95,0),(100,94,0),(101,34,0),(102,40,0),(103,29,0),(104,95,0),(105,34,0),(106,92,0),(107,24,0),(108,93,0),(109,94,0),(110,40,0),(111,29,0),(112,95,0),(113,34,0),(114,92,0),(115,24,0),(116,92,0),(117,24,0),(118,93,0),(119,93,0),(120,94,0),(121,40,0),(122,94,0),(123,29,0),(124,40,0),(125,95,0),(126,29,0),(127,34,0),(128,95,0),(129,34,0),(130,92,0),(131,24,0),(132,93,0),(133,94,0),(134,40,0),(135,29,0),(136,95,0),(137,34,0),(138,92,0),(139,24,0),(140,93,0),(141,94,0),(142,40,0),(143,29,0),(144,95,0),(145,34,0),(146,92,0),(147,24,0),(148,92,0),(149,93,0),(150,24,0),(151,94,0),(152,93,0),(153,40,0),(154,94,0),(155,29,0),(156,40,0),(157,95,0),(158,29,0),(159,34,0),(160,95,0),(161,34,0),(162,92,0),(163,24,0),(164,93,0),(165,94,0),(166,40,0),(167,29,0),(168,95,0),(169,34,0),(170,86,0),(171,79,0),(172,84,0),(173,85,0),(174,96,0),(175,97,0),(176,98,0),(177,99,0),(178,83,0),(179,87,0),(180,100,0),(181,80,0),(182,81,0),(183,86,0),(184,79,0),(185,84,0),(186,85,0),(187,96,0),(188,97,0),(189,98,0),(190,99,0),(191,83,0),(192,87,0),(193,100,0),(194,80,0),(195,81,0),(196,86,0),(197,79,0),(198,84,0),(199,85,0),(200,96,0),(201,97,0),(202,98,0),(203,99,0),(204,83,0),(205,87,0),(206,100,0),(207,80,0),(208,81,0),(209,86,0),(210,79,0),(211,84,0),(212,85,0),(213,96,0),(214,97,0),(215,98,0),(216,99,0),(217,83,0),(218,87,0),(219,100,0),(220,80,0),(221,81,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,0,0),(11,10,0,0),(12,10,1,0),(13,11,1,0),(14,12,1,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,17,0,0),(19,18,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,25,0,0),(25,26,1,0),(26,27,0,0),(27,28,0,0),(28,29,0,0),(29,30,0,0),(30,31,0,0),(31,32,0,0),(32,33,0,0),(33,35,1,0),(34,36,0,0),(35,37,1,0),(36,39,0,0),(37,41,1,0),(38,42,1,0),(39,43,1,0),(40,44,0,0),(41,45,0,0),(42,46,0,0),(43,47,0,0),(44,48,0,0),(45,46,0,0),(46,50,1,0),(47,51,0,0),(48,52,0,0),(49,53,0,0),(50,52,0,0),(51,52,1,0),(52,54,1,0),(53,53,0,0),(54,55,0,0),(55,56,0,0),(56,57,0,0),(57,58,0,0),(58,59,0,0),(59,60,0,0),(60,61,1,0),(61,62,0,0),(62,63,0,0),(63,67,1,0),(64,69,0,0),(65,70,0,0),(66,71,0,0),(67,72,1,0),(68,73,0,0),(69,74,0,0),(70,73,0,0),(71,74,0,0),(72,73,1,0),(73,74,1,0),(74,75,0,0),(75,76,0,0),(76,77,0,0),(77,78,1,0),(78,79,0,0),(79,80,0,0),(80,81,0,0),(81,82,0,0),(82,84,0,0),(83,85,1,0),(84,86,0,0),(85,87,1,0),(86,88,1,0),(87,89,1,0),(88,91,0,0),(89,92,0,0),(90,94,0,0),(91,95,0,0),(92,96,1,0),(93,97,0,0),(94,98,0,0),(95,99,0,0),(96,100,0,0),(97,101,0,0),(98,102,0,0),(99,103,0,0),(100,106,0,0),(101,107,1,0),(102,106,0,0),(103,108,0,0),(104,109,0,0),(105,110,0,0),(106,111,0,0),(107,114,0,0),(108,118,0,0),(109,119,0,0),(110,120,0,0),(111,123,0,0),(112,124,1,0),(113,125,0,0),(114,125,0,0),(115,125,1,0),(116,126,0,0),(117,127,1,0),(118,128,0,0),(119,130,0,0),(120,131,0,0),(121,132,0,0),(122,133,0,0),(123,133,0,0),(124,133,0,0),(125,133,0,0),(126,133,0,0),(127,133,0,0),(128,133,0,0),(129,133,0,0),(130,133,0,0),(131,133,0,0),(132,133,0,0),(133,133,0,0),(134,133,0,0),(135,133,0,0),(136,133,0,0),(137,133,0,0),(138,134,0,0),(139,134,0,0),(140,134,0,0),(141,134,0,0),(142,135,0,0),(143,136,0,0),(144,137,1,0),(145,138,1,0),(146,139,0,0),(147,140,1,0),(148,141,1,0),(149,142,1,0),(150,143,0,0),(151,144,0,0),(152,144,0,0),(153,146,0,0),(154,147,1,0),(155,148,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=876 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,2,2,NULL),(2,30,3,2,NULL),(3,30,21,2,NULL),(4,30,32,2,NULL),(5,30,60,2,NULL),(6,55,2,2,NULL),(7,55,3,2,NULL),(8,55,21,2,NULL),(9,55,32,2,NULL),(10,55,60,2,NULL),(11,81,2,2,NULL),(12,81,3,2,NULL),(13,81,21,2,NULL),(14,81,32,2,NULL),(15,81,60,2,NULL),(16,33,1,2,NULL),(17,46,1,2,NULL),(18,92,1,2,NULL),(19,51,1,2,NULL),(20,72,1,2,NULL),(21,73,1,2,NULL),(22,13,1,2,NULL),(23,12,1,2,NULL),(24,117,1,2,NULL),(25,115,1,2,NULL),(26,144,1,2,NULL),(27,148,1,2,NULL),(28,61,20,2,NULL),(29,61,45,2,NULL),(30,61,52,2,NULL),(31,61,72,2,NULL),(32,78,20,2,NULL),(33,78,45,2,NULL),(34,78,52,2,NULL),(35,78,72,2,NULL),(36,94,20,2,NULL),(37,94,45,2,NULL),(38,94,52,2,NULL),(39,94,72,2,NULL),(40,47,10,2,NULL),(41,47,33,2,NULL),(42,47,46,2,NULL),(43,47,65,2,NULL),(44,64,10,2,NULL),(45,64,33,2,NULL),(46,64,46,2,NULL),(47,64,65,2,NULL),(48,65,10,2,NULL),(49,65,33,2,NULL),(50,65,46,2,NULL),(51,65,65,2,NULL),(52,33,16,2,NULL),(53,46,16,2,NULL),(54,92,16,2,NULL),(55,33,24,2,NULL),(56,46,24,2,NULL),(57,92,24,2,NULL),(58,33,29,2,NULL),(59,46,29,2,NULL),(60,92,29,2,NULL),(61,33,30,2,NULL),(62,46,30,2,NULL),(63,92,30,2,NULL),(64,33,34,2,NULL),(65,46,34,2,NULL),(66,92,34,2,NULL),(67,33,35,2,NULL),(68,46,35,2,NULL),(69,92,35,2,NULL),(70,33,40,2,NULL),(71,46,40,2,NULL),(72,92,40,2,NULL),(73,33,41,2,NULL),(74,46,41,2,NULL),(75,92,41,2,NULL),(76,33,92,2,NULL),(77,46,92,2,NULL),(78,92,92,2,NULL),(79,33,93,2,NULL),(80,46,93,2,NULL),(81,92,93,2,NULL),(82,33,94,2,NULL),(83,46,94,2,NULL),(84,92,94,2,NULL),(85,33,95,2,NULL),(86,46,95,2,NULL),(87,92,95,2,NULL),(88,33,17,2,NULL),(89,46,17,2,NULL),(90,92,17,2,NULL),(91,33,49,2,NULL),(92,46,49,2,NULL),(93,92,49,2,NULL),(94,33,53,2,NULL),(95,46,53,2,NULL),(96,92,53,2,NULL),(97,33,88,2,NULL),(98,46,88,2,NULL),(99,92,88,2,NULL),(100,33,89,2,NULL),(101,46,89,2,NULL),(102,92,89,2,NULL),(103,33,90,2,NULL),(104,46,90,2,NULL),(105,92,90,2,NULL),(106,33,91,2,NULL),(107,46,91,2,NULL),(108,92,91,2,NULL),(109,33,27,2,NULL),(110,46,27,2,NULL),(111,92,27,2,NULL),(112,33,55,2,NULL),(113,46,55,2,NULL),(114,92,55,2,NULL),(115,33,56,2,NULL),(116,46,56,2,NULL),(117,92,56,2,NULL),(118,33,57,2,NULL),(119,46,57,2,NULL),(120,92,57,2,NULL),(121,33,58,2,NULL),(122,46,58,2,NULL),(123,92,58,2,NULL),(124,33,59,2,NULL),(125,46,59,2,NULL),(126,92,59,2,NULL),(127,33,70,2,NULL),(128,46,70,2,NULL),(129,92,70,2,NULL),(130,33,79,2,NULL),(131,46,79,2,NULL),(132,92,79,2,NULL),(133,33,80,2,NULL),(134,46,80,2,NULL),(135,92,80,2,NULL),(136,33,81,2,NULL),(137,46,81,2,NULL),(138,92,81,2,NULL),(139,33,100,2,NULL),(140,46,100,2,NULL),(141,92,100,2,NULL),(142,33,83,2,NULL),(143,46,83,2,NULL),(144,92,83,2,NULL),(145,33,84,2,NULL),(146,46,84,2,NULL),(147,92,84,2,NULL),(148,33,85,2,NULL),(149,46,85,2,NULL),(150,92,85,2,NULL),(151,33,86,2,NULL),(152,46,86,2,NULL),(153,92,86,2,NULL),(154,33,87,2,NULL),(155,46,87,2,NULL),(156,92,87,2,NULL),(157,33,96,2,NULL),(158,46,96,2,NULL),(159,92,96,2,NULL),(160,33,97,2,NULL),(161,46,97,2,NULL),(162,92,97,2,NULL),(163,33,98,2,NULL),(164,46,98,2,NULL),(165,92,98,2,NULL),(166,33,99,2,NULL),(167,46,99,2,NULL),(168,92,99,2,NULL),(169,44,10,2,NULL),(170,44,33,2,NULL),(171,44,46,2,NULL),(172,44,65,2,NULL),(173,66,10,2,NULL),(174,66,33,2,NULL),(175,66,46,2,NULL),(176,66,65,2,NULL),(177,76,10,2,NULL),(178,76,33,2,NULL),(179,76,46,2,NULL),(180,76,65,2,NULL),(181,51,16,2,NULL),(182,72,16,2,NULL),(183,73,16,2,NULL),(184,51,24,2,NULL),(185,72,24,2,NULL),(186,73,24,2,NULL),(187,51,29,2,NULL),(188,72,29,2,NULL),(189,73,29,2,NULL),(190,51,30,2,NULL),(191,72,30,2,NULL),(192,73,30,2,NULL),(193,51,34,2,NULL),(194,72,34,2,NULL),(195,73,34,2,NULL),(196,51,35,2,NULL),(197,72,35,2,NULL),(198,73,35,2,NULL),(199,51,40,2,NULL),(200,72,40,2,NULL),(201,73,40,2,NULL),(202,51,41,2,NULL),(203,72,41,2,NULL),(204,73,41,2,NULL),(205,51,92,2,NULL),(206,72,92,2,NULL),(207,73,92,2,NULL),(208,51,93,2,NULL),(209,72,93,2,NULL),(210,73,93,2,NULL),(211,51,94,2,NULL),(212,72,94,2,NULL),(213,73,94,2,NULL),(214,51,95,2,NULL),(215,72,95,2,NULL),(216,73,95,2,NULL),(217,51,17,2,NULL),(218,51,17,2,NULL),(219,72,17,2,NULL),(220,73,17,2,NULL),(221,51,49,2,NULL),(222,72,49,2,NULL),(223,73,49,2,NULL),(224,51,53,2,NULL),(225,72,53,2,NULL),(226,73,53,2,NULL),(227,51,88,2,NULL),(228,51,88,2,NULL),(229,72,88,2,NULL),(230,73,88,2,NULL),(231,51,89,2,NULL),(232,72,89,2,NULL),(233,73,89,2,NULL),(234,51,90,2,NULL),(235,51,90,2,NULL),(236,72,90,2,NULL),(237,73,90,2,NULL),(238,51,91,2,NULL),(239,72,91,2,NULL),(240,73,91,2,NULL),(241,51,27,2,NULL),(242,72,27,2,NULL),(243,73,27,2,NULL),(244,51,55,2,NULL),(245,72,55,2,NULL),(246,73,55,2,NULL),(247,51,56,2,NULL),(248,72,56,2,NULL),(249,73,56,2,NULL),(250,51,57,2,NULL),(251,72,57,2,NULL),(252,73,57,2,NULL),(253,51,58,2,NULL),(254,72,58,2,NULL),(255,73,58,2,NULL),(256,51,59,2,NULL),(257,72,59,2,NULL),(258,73,59,2,NULL),(259,51,70,2,NULL),(260,72,70,2,NULL),(261,73,70,2,NULL),(262,51,79,2,NULL),(263,72,79,2,NULL),(264,73,79,2,NULL),(265,51,80,2,NULL),(266,72,80,2,NULL),(267,73,80,2,NULL),(268,51,81,2,NULL),(269,72,81,2,NULL),(270,73,81,2,NULL),(271,51,100,2,NULL),(272,72,100,2,NULL),(273,73,100,2,NULL),(274,51,83,2,NULL),(275,72,83,2,NULL),(276,73,83,2,NULL),(277,51,84,2,NULL),(278,72,84,2,NULL),(279,73,84,2,NULL),(280,51,85,2,NULL),(281,72,85,2,NULL),(282,73,85,2,NULL),(283,51,86,2,NULL),(284,72,86,2,NULL),(285,73,86,2,NULL),(286,51,87,2,NULL),(287,72,87,2,NULL),(288,73,87,2,NULL),(289,51,96,2,NULL),(290,51,96,2,NULL),(291,72,96,2,NULL),(292,73,96,2,NULL),(293,73,96,2,NULL),(294,51,97,2,NULL),(295,72,97,2,NULL),(296,73,97,2,NULL),(297,51,98,2,NULL),(298,72,98,2,NULL),(299,73,98,2,NULL),(300,51,99,2,NULL),(301,72,99,2,NULL),(302,73,99,2,NULL),(303,27,10,2,NULL),(304,27,33,2,NULL),(305,27,46,2,NULL),(306,27,65,2,NULL),(307,43,10,2,NULL),(308,43,33,2,NULL),(309,43,46,2,NULL),(310,43,65,2,NULL),(311,88,10,2,NULL),(312,88,33,2,NULL),(313,88,46,2,NULL),(314,88,65,2,NULL),(315,24,10,2,NULL),(316,24,33,2,NULL),(317,24,46,2,NULL),(318,24,65,2,NULL),(319,34,14,2,NULL),(320,34,15,2,NULL),(321,34,43,2,NULL),(322,34,51,2,NULL),(323,34,68,2,NULL),(324,34,68,2,NULL),(325,36,14,2,NULL),(326,36,15,2,NULL),(327,36,43,2,NULL),(328,36,51,2,NULL),(329,36,68,2,NULL),(330,36,68,2,NULL),(331,75,10,2,NULL),(332,75,33,2,NULL),(333,75,46,2,NULL),(334,75,65,2,NULL),(335,91,14,2,NULL),(336,91,14,2,NULL),(337,91,15,2,NULL),(338,91,43,2,NULL),(339,91,43,2,NULL),(340,91,51,2,NULL),(341,91,68,2,NULL),(342,104,10,2,NULL),(343,104,33,2,NULL),(344,104,46,2,NULL),(345,104,46,2,NULL),(346,104,65,2,NULL),(347,41,10,2,NULL),(348,41,33,2,NULL),(349,41,46,2,NULL),(350,41,65,2,NULL),(351,57,10,2,NULL),(352,57,33,2,NULL),(353,57,46,2,NULL),(354,57,65,2,NULL),(355,84,10,2,NULL),(356,84,33,2,NULL),(357,84,46,2,NULL),(358,84,46,2,NULL),(359,84,65,2,NULL),(360,84,65,2,NULL),(361,84,65,2,NULL),(362,28,18,2,NULL),(363,28,18,2,NULL),(364,28,19,2,NULL),(365,28,71,2,NULL),(366,42,22,2,NULL),(367,42,73,2,NULL),(368,42,73,2,NULL),(369,42,73,2,NULL),(370,45,22,2,NULL),(371,45,73,2,NULL),(372,45,73,2,NULL),(373,49,22,2,NULL),(374,49,73,2,NULL),(375,49,73,2,NULL),(376,53,22,2,NULL),(377,53,73,2,NULL),(378,53,73,2,NULL),(379,82,18,2,NULL),(380,82,19,2,NULL),(381,82,19,2,NULL),(382,82,71,2,NULL),(383,99,18,2,NULL),(384,99,19,2,NULL),(385,99,71,2,NULL),(386,100,22,2,NULL),(387,100,22,2,NULL),(388,100,73,2,NULL),(389,102,22,2,NULL),(390,102,73,2,NULL),(391,13,16,2,NULL),(392,12,16,2,NULL),(393,12,16,2,NULL),(394,117,16,2,NULL),(395,115,16,2,NULL),(396,144,16,2,NULL),(397,144,16,2,NULL),(398,148,16,2,NULL),(399,13,24,2,NULL),(400,12,24,2,NULL),(401,117,24,2,NULL),(402,115,24,2,NULL),(403,144,24,2,NULL),(404,148,24,2,NULL),(405,13,29,2,NULL),(406,12,29,2,NULL),(407,117,29,2,NULL),(408,115,29,2,NULL),(409,144,29,2,NULL),(410,148,29,2,NULL),(411,13,30,2,NULL),(412,12,30,2,NULL),(413,117,30,2,NULL),(414,115,30,2,NULL),(415,115,30,2,NULL),(416,144,30,2,NULL),(417,148,30,2,NULL),(418,148,30,2,NULL),(419,58,20,2,NULL),(420,58,45,2,NULL),(421,58,45,2,NULL),(422,58,52,2,NULL),(423,58,72,2,NULL),(424,58,72,2,NULL),(425,79,20,2,NULL),(426,79,45,2,NULL),(427,79,45,2,NULL),(428,79,52,2,NULL),(429,79,72,2,NULL),(430,79,72,2,NULL),(431,105,20,2,NULL),(432,105,45,2,NULL),(433,105,45,2,NULL),(434,105,52,2,NULL),(435,105,72,2,NULL),(436,105,72,2,NULL),(437,13,34,2,NULL),(438,12,34,2,NULL),(439,117,34,2,NULL),(440,115,34,2,NULL),(441,144,34,2,NULL),(442,148,34,2,NULL),(443,13,35,2,NULL),(444,12,35,2,NULL),(445,117,35,2,NULL),(446,115,35,2,NULL),(447,144,35,2,NULL),(448,148,35,2,NULL),(449,148,35,2,NULL),(450,31,23,2,NULL),(451,31,47,2,NULL),(452,31,47,2,NULL),(453,31,54,2,NULL),(454,31,75,2,NULL),(455,31,75,2,NULL),(456,89,23,2,NULL),(457,89,47,2,NULL),(458,89,47,2,NULL),(459,89,54,2,NULL),(460,89,75,2,NULL),(461,106,23,2,NULL),(462,106,47,2,NULL),(463,106,54,2,NULL),(464,106,54,2,NULL),(465,106,75,2,NULL),(466,13,40,2,NULL),(467,12,40,2,NULL),(468,117,40,2,NULL),(469,115,40,2,NULL),(470,144,40,2,NULL),(471,148,40,2,NULL),(472,13,41,2,NULL),(473,12,41,2,NULL),(474,117,41,2,NULL),(475,115,41,2,NULL),(476,144,41,2,NULL),(477,144,41,2,NULL),(478,148,41,2,NULL),(479,13,92,2,NULL),(480,12,92,2,NULL),(481,117,92,2,NULL),(482,115,92,2,NULL),(483,144,92,2,NULL),(484,148,92,2,NULL),(485,13,93,2,NULL),(486,12,93,2,NULL),(487,117,93,2,NULL),(488,115,93,2,NULL),(489,144,93,2,NULL),(490,148,93,2,NULL),(491,13,94,2,NULL),(492,12,94,2,NULL),(493,117,94,2,NULL),(494,115,94,2,NULL),(495,144,94,2,NULL),(496,148,94,2,NULL),(497,13,95,2,NULL),(498,12,95,2,NULL),(499,117,95,2,NULL),(500,115,95,2,NULL),(501,144,95,2,NULL),(502,148,95,2,NULL),(503,16,2,2,NULL),(504,16,3,2,NULL),(505,16,21,2,NULL),(506,16,32,2,NULL),(507,16,32,2,NULL),(508,16,60,2,NULL),(509,13,17,2,NULL),(510,13,17,2,NULL),(511,12,17,2,NULL),(512,117,17,2,NULL),(513,117,17,2,NULL),(514,115,17,2,NULL),(515,144,17,2,NULL),(516,144,17,2,NULL),(517,148,17,2,NULL),(518,21,20,2,NULL),(519,21,20,2,NULL),(520,21,45,2,NULL),(521,21,52,2,NULL),(522,21,72,2,NULL),(523,17,10,2,NULL),(524,17,33,2,NULL),(525,17,33,2,NULL),(526,17,46,2,NULL),(527,17,65,2,NULL),(528,17,65,2,NULL),(529,13,49,2,NULL),(530,13,53,2,NULL),(531,13,53,2,NULL),(532,13,88,2,NULL),(533,13,89,2,NULL),(534,13,90,2,NULL),(535,13,91,2,NULL),(536,13,27,2,NULL),(537,13,55,2,NULL),(538,13,55,2,NULL),(539,13,56,2,NULL),(540,13,57,2,NULL),(541,13,57,2,NULL),(542,13,58,2,NULL),(543,13,59,2,NULL),(544,13,59,2,NULL),(545,13,70,2,NULL),(546,13,79,2,NULL),(547,13,80,2,NULL),(548,13,81,2,NULL),(549,13,100,2,NULL),(550,13,83,2,NULL),(551,13,84,2,NULL),(552,13,85,2,NULL),(553,13,86,2,NULL),(554,13,87,2,NULL),(555,13,96,2,NULL),(556,13,96,2,NULL),(557,13,97,2,NULL),(558,13,98,2,NULL),(559,13,98,2,NULL),(560,13,99,2,NULL),(561,15,10,2,NULL),(562,15,33,2,NULL),(563,15,46,2,NULL),(564,15,65,2,NULL),(565,12,49,2,NULL),(566,12,49,2,NULL),(567,12,53,2,NULL),(568,12,88,2,NULL),(569,12,89,2,NULL),(570,12,90,2,NULL),(571,12,91,2,NULL),(572,12,27,2,NULL),(573,12,55,2,NULL),(574,12,55,2,NULL),(575,12,56,2,NULL),(576,12,57,2,NULL),(577,12,58,2,NULL),(578,12,58,2,NULL),(579,12,59,2,NULL),(580,12,70,2,NULL),(581,12,79,2,NULL),(582,12,79,2,NULL),(583,12,80,2,NULL),(584,12,81,2,NULL),(585,12,100,2,NULL),(586,12,100,2,NULL),(587,12,83,2,NULL),(588,12,84,2,NULL),(589,12,85,2,NULL),(590,12,85,2,NULL),(591,12,86,2,NULL),(592,12,87,2,NULL),(593,12,96,2,NULL),(594,12,96,2,NULL),(595,12,97,2,NULL),(596,12,98,2,NULL),(597,12,98,2,NULL),(598,12,99,2,NULL),(599,3,10,2,NULL),(600,3,33,2,NULL),(601,3,33,2,NULL),(602,3,46,2,NULL),(603,3,65,2,NULL),(604,2,10,2,NULL),(605,2,10,2,NULL),(606,2,33,2,NULL),(607,2,46,2,NULL),(608,2,46,2,NULL),(609,2,65,2,NULL),(610,9,14,2,NULL),(611,9,15,2,NULL),(612,9,15,2,NULL),(613,9,43,2,NULL),(614,9,51,2,NULL),(615,9,68,2,NULL),(616,9,68,2,NULL),(617,19,10,2,NULL),(618,19,33,2,NULL),(619,19,46,2,NULL),(620,19,65,2,NULL),(621,5,23,2,NULL),(622,5,47,2,NULL),(623,5,54,2,NULL),(624,5,75,2,NULL),(625,117,49,2,NULL),(626,115,49,2,NULL),(627,144,49,2,NULL),(628,144,49,2,NULL),(629,148,49,2,NULL),(630,117,53,2,NULL),(631,115,53,2,NULL),(632,115,53,2,NULL),(633,144,53,2,NULL),(634,144,53,2,NULL),(635,148,53,2,NULL),(636,148,53,2,NULL),(637,117,88,2,NULL),(638,115,88,2,NULL),(639,144,88,2,NULL),(640,148,88,2,NULL),(641,117,89,2,NULL),(642,115,89,2,NULL),(643,115,89,2,NULL),(644,144,89,2,NULL),(645,148,89,2,NULL),(646,117,90,2,NULL),(647,117,90,2,NULL),(648,115,90,2,NULL),(649,144,90,2,NULL),(650,148,90,2,NULL),(651,117,91,2,NULL),(652,115,91,2,NULL),(653,115,91,2,NULL),(654,144,91,2,NULL),(655,148,91,2,NULL),(656,148,91,2,NULL),(657,117,27,2,NULL),(658,115,27,2,NULL),(659,144,27,2,NULL),(660,144,27,2,NULL),(661,144,27,2,NULL),(662,148,27,2,NULL),(663,117,55,2,NULL),(664,117,55,2,NULL),(665,115,55,2,NULL),(666,144,55,2,NULL),(667,148,55,2,NULL),(668,148,55,2,NULL),(669,117,56,2,NULL),(670,115,56,2,NULL),(671,144,56,2,NULL),(672,144,56,2,NULL),(673,144,56,2,NULL),(674,148,56,2,NULL),(675,117,57,2,NULL),(676,117,57,2,NULL),(677,115,57,2,NULL),(678,144,57,2,NULL),(679,148,57,2,NULL),(680,148,57,2,NULL),(681,117,58,2,NULL),(682,115,58,2,NULL),(683,144,58,2,NULL),(684,144,58,2,NULL),(685,148,58,2,NULL),(686,107,2,2,NULL),(687,107,2,2,NULL),(688,107,3,2,NULL),(689,107,21,2,NULL),(690,107,32,2,NULL),(691,107,32,2,NULL),(692,107,60,2,NULL),(693,117,59,2,NULL),(694,115,59,2,NULL),(695,115,59,2,NULL),(696,115,59,2,NULL),(697,144,59,2,NULL),(698,148,59,2,NULL),(699,148,59,2,NULL),(700,121,20,2,NULL),(701,121,45,2,NULL),(702,121,52,2,NULL),(703,121,52,2,NULL),(704,121,72,2,NULL),(705,111,10,2,NULL),(706,111,33,2,NULL),(707,111,33,2,NULL),(708,111,46,2,NULL),(709,111,65,2,NULL),(710,117,70,2,NULL),(711,117,70,2,NULL),(712,117,70,2,NULL),(713,117,79,2,NULL),(714,117,80,2,NULL),(715,117,81,2,NULL),(716,117,81,2,NULL),(717,117,100,2,NULL),(718,117,83,2,NULL),(719,117,84,2,NULL),(720,117,84,2,NULL),(721,117,84,2,NULL),(722,117,85,2,NULL),(723,117,86,2,NULL),(724,117,86,2,NULL),(725,117,87,2,NULL),(726,117,96,2,NULL),(727,117,97,2,NULL),(728,117,97,2,NULL),(729,117,97,2,NULL),(730,117,98,2,NULL),(731,117,99,2,NULL),(732,117,99,2,NULL),(733,155,10,2,NULL),(734,155,33,2,NULL),(735,155,46,2,NULL),(736,155,46,2,NULL),(737,155,46,2,NULL),(738,155,65,2,NULL),(739,155,65,2,NULL),(740,155,65,2,NULL),(741,155,65,2,NULL),(742,115,70,2,NULL),(743,115,79,2,NULL),(744,115,80,2,NULL),(745,115,80,2,NULL),(746,115,80,2,NULL),(747,115,81,2,NULL),(748,115,100,2,NULL),(749,115,100,2,NULL),(750,115,83,2,NULL),(751,115,84,2,NULL),(752,115,85,2,NULL),(753,115,85,2,NULL),(754,115,85,2,NULL),(755,115,85,2,NULL),(756,115,86,2,NULL),(757,115,87,2,NULL),(758,115,96,2,NULL),(759,115,96,2,NULL),(760,115,97,2,NULL),(761,115,98,2,NULL),(762,115,98,2,NULL),(763,115,98,2,NULL),(764,115,99,2,NULL),(765,108,10,2,NULL),(766,108,10,2,NULL),(767,108,33,2,NULL),(768,108,46,2,NULL),(769,108,65,2,NULL),(770,108,65,2,NULL),(771,116,14,2,NULL),(772,116,15,2,NULL),(773,116,43,2,NULL),(774,116,51,2,NULL),(775,116,51,2,NULL),(776,116,68,2,NULL),(777,146,10,2,NULL),(778,146,10,2,NULL),(779,146,33,2,NULL),(780,146,46,2,NULL),(781,146,65,2,NULL),(782,146,65,2,NULL),(783,150,10,2,NULL),(784,150,33,2,NULL),(785,150,46,2,NULL),(786,150,65,2,NULL),(787,150,65,2,NULL),(788,144,70,2,NULL),(789,148,70,2,NULL),(790,148,70,2,NULL),(791,148,70,2,NULL),(792,144,79,2,NULL),(793,148,79,2,NULL),(794,148,79,2,NULL),(795,144,80,2,NULL),(796,148,80,2,NULL),(797,144,81,2,NULL),(798,144,81,2,NULL),(799,144,81,2,NULL),(800,148,81,2,NULL),(801,144,100,2,NULL),(802,144,100,2,NULL),(803,144,100,2,NULL),(804,148,100,2,NULL),(805,144,83,2,NULL),(806,144,83,2,NULL),(807,144,83,2,NULL),(808,148,83,2,NULL),(809,144,84,2,NULL),(810,144,84,2,NULL),(811,148,84,2,NULL),(812,144,85,2,NULL),(813,148,85,2,NULL),(814,148,85,2,NULL),(815,148,85,2,NULL),(816,144,86,2,NULL),(817,148,86,2,NULL),(818,148,86,2,NULL),(819,148,86,2,NULL),(820,144,87,2,NULL),(821,148,87,2,NULL),(822,148,87,2,NULL),(823,144,96,2,NULL),(824,148,96,2,NULL),(825,144,97,2,NULL),(826,144,97,2,NULL),(827,148,97,2,NULL),(828,144,98,2,NULL),(829,148,98,2,NULL),(830,148,98,2,NULL),(831,144,99,2,NULL),(832,148,99,2,NULL),(833,120,18,2,NULL),(834,120,18,2,NULL),(835,120,19,2,NULL),(836,120,71,2,NULL),(837,151,22,2,NULL),(838,151,22,2,NULL),(839,151,73,2,NULL),(840,152,22,2,NULL),(841,152,73,2,NULL),(842,152,73,2,NULL),(843,152,73,2,NULL),(844,118,20,2,NULL),(845,118,45,2,NULL),(846,118,45,2,NULL),(847,118,52,2,NULL),(848,118,72,2,NULL),(849,122,78,2,NULL),(850,122,78,2,NULL),(851,122,78,2,NULL),(852,123,78,2,NULL),(853,124,78,2,NULL),(854,125,78,2,NULL),(855,125,78,2,NULL),(856,126,78,2,NULL),(857,127,78,2,NULL),(858,128,78,2,NULL),(859,128,78,2,NULL),(860,129,78,2,NULL),(861,129,78,2,NULL),(862,130,78,2,NULL),(863,130,78,2,NULL),(864,131,78,2,NULL),(865,131,78,2,NULL),(866,132,78,2,NULL),(867,132,78,2,NULL),(868,133,78,2,NULL),(869,133,78,2,NULL),(870,134,78,2,NULL),(871,134,78,2,NULL),(872,135,78,2,NULL),(873,136,78,2,NULL),(874,137,78,2,NULL),(875,137,78,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://mms',NULL,NULL,NULL),(6,NULL,NULL,'content://sms',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://mms',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(17,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(22,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(23,NULL,NULL,'content://mms',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://mms',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(33,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(34,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://mms',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,16,5),(2,19,6),(3,40,10),(4,49,14),(5,68,19),(6,83,23),(7,93,27),(8,104,29),(9,115,31),(10,121,32),(11,145,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,1,11),(14,2,3),(15,1,12),(16,1,13),(17,2,4),(18,1,14),(19,1,15),(20,2,5),(21,1,17),(22,1,16),(23,1,19),(24,2,6),(25,1,18),(26,2,8),(27,1,21),(28,1,20),(29,2,10),(30,1,22),(31,2,11),(32,2,12),(33,3,1),(34,2,13),(35,3,2),(36,2,14),(37,3,3),(38,2,15),(39,3,4),(40,2,17),(41,3,5),(42,2,16),(43,3,6),(44,2,19),(45,3,8),(46,2,18),(47,3,10),(48,2,21),(49,3,11),(50,2,23),(51,3,12),(52,2,22),(53,3,13),(54,2,24),(55,3,14),(56,3,15),(57,3,17),(58,3,16),(59,3,19),(60,3,18),(61,3,21),(62,3,23),(63,3,22),(64,3,24),(65,4,1),(66,4,2),(67,4,3),(68,4,4),(69,4,5),(70,4,6),(71,4,7),(72,4,8),(73,4,9),(74,4,10),(75,4,11),(76,4,12),(77,4,13),(78,4,14),(79,4,15),(80,4,17),(81,4,16),(82,4,19),(83,4,18),(84,4,21),(85,4,20),(86,4,22),(87,4,25);
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
