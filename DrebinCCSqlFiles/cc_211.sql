-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_211
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*).SEND_SMS'),(21,'android.intent.action.BATTERY_CHANGED'),(24,'android.intent.action.BATTERY_LOW'),(20,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(28,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(9,'android.provider.Telephony.SMS_RECEIVED'),(25,'android.settings.APPLICATION_DETAILS_SETTINGS'),(27,'android.settings.LOCATION_SOURCE_SETTINGS'),(11,'com.android.vending.INSTALL_REFERRER'),(12,'com.extend.battery.CHECK'),(15,'com.extend.battery.DELIVERED_SMS'),(16,'com.extend.battery.SEND_SMS'),(14,'com.extend.battery.SENT_SMS'),(13,'com.extend.battery.UPDATE'),(6,'com.extend.battery.intent.http.SHOW'),(19,'com.extend.battery.notification.action.ALARM'),(17,'com.extend.battery.notification.action.CANCEL'),(18,'com.extend.battery.notification.action.CLICKED'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(10,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',89),(3,'com.extend.battery',103);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.Splash'),(3,1,'com.extend.battery.TabHandler'),(4,1,'com.extend.battery.TabHandler'),(5,1,'com.extend.battery.TaskKillerActivity'),(6,1,'com.extend.battery.UninstallerActivity'),(7,1,'com.extend.battery.UninstallerActivity'),(8,1,'com.extend.battery.SecurityAuditActivity'),(9,1,'com.extend.battery.InstallerActivity'),(10,1,'com.extend.battery.InstallerActivity'),(11,1,'com.extend.battery.FeaturesActivity'),(12,1,'com.extend.battery.BoosterActivity'),(13,1,'com.extend.battery.BoosterActivity'),(14,1,'com.extend.battery.BatteryActivity'),(15,1,'com.extend.battery.RatingActivity'),(16,1,'com.extend.battery.RatingActivity'),(17,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(18,1,'com.itframework.installer.util.NonMarketDialogActivity'),(19,1,'com.extend.battery.BatteryService'),(20,1,'com.itframework.installer.util.InstallWorker'),(21,1,'com.zanalytics.sms.SmsReceiverService'),(22,1,'com.itframework.installer.updater.UpdateReceiver'),(23,1,'com.extend.battery.NotificationReceiver'),(24,1,'com.extend.battery.NotificationReceiver'),(25,1,'com.extend.battery.BootReceiver'),(26,1,'com.zanalytics.sms.SmsReceiver'),(27,1,'com.zanalytics.sms.SmsReceiver'),(28,2,'com.extend.battery.Splash'),(29,2,'com.extend.battery.TabHandler'),(30,2,'com.extend.battery.TaskKillerActivity'),(31,2,'com.extend.battery.UninstallerActivity'),(32,2,'com.extend.battery.SecurityAuditActivity'),(33,2,'com.extend.battery.InstallerActivity'),(34,2,'com.extend.battery.FeaturesActivity'),(35,2,'com.extend.battery.BoosterActivity'),(36,2,'com.extend.battery.BatteryActivity'),(37,2,'com.extend.battery.RatingActivity'),(38,2,'com.extend.battery.BatteryService'),(39,2,'com.zanalytics.sms.SmsReceiverService'),(40,2,'com.extend.battery.NotificationReceiver'),(41,2,'com.extend.battery.BootReceiver'),(42,2,'com.zanalytics.sms.SmsReceiver'),(43,2,'com.tapjoy.TapjoyReferralTracker'),(44,3,'com.extend.battery.Splash'),(45,3,'com.extend.battery.TabHandler'),(46,3,'com.extend.battery.TaskKillerActivity'),(47,3,'com.extend.battery.UninstallerActivity'),(48,3,'com.extend.battery.SecurityAuditActivity'),(49,3,'com.extend.battery.InstallerActivity'),(50,3,'com.extend.battery.FeaturesActivity'),(51,3,'com.extend.battery.BoosterActivity'),(52,3,'com.extend.battery.BatteryActivity'),(53,3,'com.extend.battery.RatingActivity'),(54,3,'com.extend.battery.UninstallingDialog'),(55,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(56,3,'com.itframework.installer.util.NonMarketDialogActivity'),(57,3,'com.extend.battery.BatteryService'),(58,3,'com.itframework.installer.util.InstallWorker'),(59,3,'com.zanalytics.sms.SmsReceiverService'),(60,3,'com.zanalytics.sms.SmsSendService'),(61,3,'com.itframework.base.util.UploadAnalyticsService'),(62,3,'com.itframework.notification.NotificationService'),(63,3,'com.itframework.installer.updater.UpdateReceiver'),(64,3,'com.extend.battery.NotificationReceiver'),(65,3,'com.extend.battery.BootReceiver'),(66,3,'com.zanalytics.sms.SmsReceiver'),(67,3,'com.zanalytics.sms.SmsSentReceiver'),(68,3,'com.zanalytics.sms.SmsDeliveredReceiver'),(69,3,'com.zanalytics.sms.SmsSendReceiver'),(70,3,'com.itframework.notification.NotificationReceiver'),(71,1,'com.extend.battery.ba'),(72,1,'com.extend.battery.d'),(73,1,'com.extend.battery.c'),(74,1,'com.extend.battery.a'),(75,1,'com.zanalytics.sms.c'),(76,1,'com.extend.battery.features.s'),(77,1,'com.zanalytics.sms.j'),(78,1,'com.extend.battery.bb'),(79,1,'com.zanalytics.sms.a'),(80,1,'com.itframework.installer.a.b'),(81,1,'com.extend.battery.k'),(82,3,'com.zanalytics.sms.d'),(83,3,'com.extend.battery.k'),(84,3,'com.itframework.base.service.WakefulIntentService'),(85,3,'com.extend.battery.d'),(86,3,'com.extend.battery.c'),(87,3,'com.extend.battery.a'),(88,3,'com.itframework.base.service.AlarmReceiver'),(89,3,'com.extend.battery.ba'),(90,3,'com.extend.battery.features.s'),(91,3,'com.itframework.installer.b.a'),(92,3,'com.extend.battery.bb'),(93,3,'com.itframework.installer.a.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,20,'downloadStarting'),(2,20,'finishedTicker'),(3,20,'downloadingWait'),(4,20,'downloadingTicker'),(5,20,'finishedTitle'),(6,20,'finishedText'),(7,14,'technology'),(8,17,'downloadingTicker'),(9,20,'filename'),(10,20,'downloadingToast'),(11,17,'downloadStarting'),(12,17,'downloadingProgress'),(13,23,'clickevent'),(14,20,'downloadingTitle'),(15,17,'downloadingTitle'),(16,17,'finishedText'),(17,20,'downloadingProgress'),(18,20,'showNotifications'),(19,17,'downloadingToast'),(20,17,'url'),(21,17,'finishedTicker'),(22,17,'downloadingWait'),(23,27,'pdus'),(24,17,'filename'),(25,20,'callbackIntent'),(26,17,'forceDownload'),(27,20,'forceDownload'),(28,17,'finishedTitle'),(29,17,'callbackIntent'),(30,28,'pdus'),(31,20,'url'),(32,24,'clickevent'),(33,22,'URL'),(34,71,'DO_AUTO_CANCEL'),(35,56,'finishedText'),(36,68,'TagEvent'),(37,67,'pdus'),(38,68,'MessageExtra'),(39,68,'StoreMessage'),(40,63,'BROADCAST_INTENT'),(41,59,'callbackIntent'),(42,56,'url'),(43,59,'finishedTicker'),(44,64,'URL'),(45,56,'downloadingTitle'),(46,56,'downloadStarting'),(47,68,'Message'),(48,56,'filename'),(49,56,'downloadingWait'),(50,71,'NOTIFICATION_CATEGORY'),(51,68,'SendIntent'),(52,53,'technology'),(53,68,'NextMessage'),(54,59,'downloadingTicker'),(55,71,'BROADCAST_INTENT'),(56,59,'downloadingTitle'),(57,59,'filename'),(58,56,'callbackIntent'),(59,71,'CLICKED_EVENT'),(60,63,'CLICKED_EVENT'),(61,56,'finishedTitle'),(62,56,'downloadingTicker'),(63,59,'downloadStarting'),(64,59,'downloadingToast'),(65,68,'PhoneNumber'),(66,59,'finishedText'),(67,59,'downloadingProgress'),(68,59,'forceDownload'),(69,68,'TryAgain'),(70,59,'url'),(71,63,'ACTION'),(72,56,'downloadingProgress'),(73,59,'downloadingWait'),(74,56,'finishedTicker'),(75,63,'DO_AUTO_CANCEL'),(76,56,'downloadingToast'),(77,63,'NOTIFICATION_CATEGORY'),(78,65,'clickevent'),(79,59,'finishedTitle'),(80,59,'showNotifications'),(81,56,'forceDownload');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,25,'r',1,NULL,NULL),(27,26,'r',1,NULL,NULL),(28,27,'r',1,NULL,NULL),(29,28,'a',1,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,38,'s',0,NULL,NULL),(40,39,'s',0,NULL,NULL),(41,40,'r',1,NULL,NULL),(42,41,'r',1,NULL,NULL),(43,42,'r',1,NULL,NULL),(44,43,'r',1,NULL,NULL),(45,44,'a',1,NULL,NULL),(46,45,'a',0,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,48,'a',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,54,'a',0,NULL,NULL),(56,55,'a',1,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,57,'s',0,NULL,NULL),(59,58,'s',0,NULL,NULL),(60,59,'s',0,NULL,NULL),(61,60,'s',0,NULL,NULL),(62,61,'s',0,NULL,NULL),(63,62,'s',0,NULL,NULL),(64,63,'r',1,NULL,NULL),(65,64,'r',1,NULL,NULL),(66,65,'r',1,NULL,NULL),(67,66,'r',1,NULL,NULL),(68,67,'r',1,NULL,NULL),(69,68,'r',1,NULL,NULL),(70,69,'r',1,NULL,NULL),(71,70,'r',1,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,85,'r',1,NULL,NULL),(77,86,'r',1,NULL,NULL),(78,87,'r',1,NULL,NULL),(79,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,17),(3,3,1),(4,4,3),(5,5,14),(6,5,8),(7,5,9),(8,5,6),(9,6,12),(10,6,14),(11,7,9),(12,7,14),(13,8,17),(14,9,27),(15,10,1),(16,11,26),(17,12,23),(18,13,12),(19,13,14),(20,14,8),(21,15,9),(22,16,27),(23,17,6),(24,17,14),(25,18,17),(26,19,14),(27,19,12),(28,20,12),(29,21,1),(30,22,14),(31,22,12),(32,23,27),(33,24,17),(34,25,8),(35,26,12),(36,27,8),(37,27,9),(38,27,6),(39,27,14),(40,28,1),(41,29,8),(42,30,24),(43,31,5),(44,31,14),(45,32,1),(46,33,20),(47,34,27),(48,35,1),(49,36,1),(50,37,8),(51,37,14),(52,38,5),(53,38,14),(54,39,14),(55,39,9),(56,40,14),(57,41,4),(58,42,14),(59,42,12),(60,43,20),(61,44,20),(62,45,3),(63,46,14),(64,46,9),(65,46,8),(66,46,6),(67,47,20),(68,48,28),(69,49,25),(70,50,14),(71,50,12),(72,50,9),(73,50,7),(74,50,8),(75,51,14),(76,52,8),(77,52,14),(78,53,20),(79,54,23),(80,55,20),(81,56,7),(82,57,17),(83,58,6),(84,58,8),(85,58,9),(86,58,12),(87,58,14),(88,59,6),(89,59,14),(90,60,28),(91,61,6),(92,62,14),(93,63,14),(94,63,6),(95,64,14),(96,64,9),(97,64,8),(98,64,7),(99,66,28),(100,65,27),(101,67,27),(102,68,1),(103,69,1),(104,70,1),(105,71,14),(106,71,9),(107,72,9),(108,73,17),(109,74,9),(110,75,14),(111,75,6),(112,75,8),(113,75,9),(114,76,20),(115,77,7),(116,77,14),(117,78,8),(118,78,7),(119,78,9),(120,78,14),(121,79,6),(122,79,14),(123,80,14),(124,80,8),(125,81,12),(126,82,12),(127,82,14),(128,83,20),(129,84,1),(130,85,14),(131,85,7),(132,86,6),(133,87,25),(134,88,6),(135,88,9),(136,88,8),(137,88,14),(138,88,12),(139,89,20),(140,90,14),(141,90,5),(142,91,48),(143,91,53),(144,92,48),(145,93,67),(146,94,53),(147,94,48),(148,94,52),(149,94,50),(150,94,49),(151,95,68),(152,95,67),(153,95,49),(154,95,48),(155,95,50),(156,95,53),(157,95,70),(158,96,59),(159,97,68),(160,98,52),(161,98,53),(162,99,45),(163,100,45),(164,101,53),(165,101,50),(166,101,49),(167,101,48),(168,102,53),(169,103,56),(170,104,67),(171,105,56),(172,106,58),(173,107,50),(174,108,50),(175,108,53),(176,109,48),(177,109,53),(178,110,46),(179,111,53),(180,111,47),(181,112,59),(182,113,59),(183,114,63),(184,115,49),(185,115,53),(186,116,45),(187,117,45),(188,118,53),(189,118,55),(190,119,65),(191,120,66),(192,121,49),(193,122,71),(194,123,53),(195,123,52),(196,124,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,71,'<com.extend.battery.ba: void run()>',118,'a',NULL),(2,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(3,71,'<com.extend.battery.ba: void run()>',212,'a',NULL),(4,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(5,76,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(6,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(7,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(8,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(9,26,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(10,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(11,25,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(12,23,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(13,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(14,8,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(15,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(16,77,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(17,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(18,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(19,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(20,12,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(21,71,'<com.extend.battery.ba: void run()>',118,'a',NULL),(22,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(23,26,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(24,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(25,8,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(26,12,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(27,76,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(28,71,'<com.extend.battery.ba: void run()>',118,'a',NULL),(29,8,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(30,23,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(31,78,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(32,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(33,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(34,77,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(35,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(36,71,'<com.extend.battery.ba: void run()>',58,'a',NULL),(37,8,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(38,78,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(39,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(40,14,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(41,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(42,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(43,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(44,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(45,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(46,79,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(47,80,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(48,77,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(49,25,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(50,81,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(51,14,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(52,8,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(53,80,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(54,23,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(55,80,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(56,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(57,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(58,81,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(59,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(60,77,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(61,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(62,14,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(63,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(64,76,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(65,77,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(66,26,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(67,77,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(68,71,'<com.extend.battery.ba: void run()>',212,'a',NULL),(69,71,'<com.extend.battery.ba: void run()>',58,'a',NULL),(70,71,'<com.extend.battery.ba: void run()>',212,'a',NULL),(71,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(72,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(73,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(74,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(75,79,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(76,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(77,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(78,79,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(79,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(80,8,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(81,12,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(82,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(83,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(84,71,'<com.extend.battery.ba: void run()>',58,'a',NULL),(85,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(86,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(87,25,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(88,81,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(89,20,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(90,78,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(91,47,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(92,47,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(93,82,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(94,83,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(95,84,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(96,58,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',127,'a',0),(97,67,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(98,51,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(99,89,'<com.extend.battery.ba: void run()>',160,'a',NULL),(100,44,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(101,90,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(102,52,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(103,55,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(104,82,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(105,55,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(106,91,'<com.itframework.installer.b.a: void run()>',31,'a',NULL),(107,49,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(108,49,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(109,47,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(110,45,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(111,92,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(112,93,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(113,58,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',75,'a',NULL),(114,62,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',88,'r',NULL),(115,48,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(116,89,'<com.extend.battery.ba: void run()>',255,'a',NULL),(117,89,'<com.extend.battery.ba: void run()>',65,'a',NULL),(118,54,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',20,'a',NULL),(119,64,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(120,65,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(121,48,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(122,70,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(123,51,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(124,51,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,2),(2,14,2),(3,16,25),(4,20,2),(5,28,25),(6,30,2),(7,31,2),(8,35,25),(9,38,2),(10,48,26),(11,50,27),(12,53,1),(13,55,27),(14,58,1),(15,60,28),(16,61,2),(17,67,2),(18,69,2),(19,70,26),(20,71,2),(21,73,26),(22,74,28),(23,76,2),(24,79,28),(25,80,1),(26,82,27),(27,83,2),(28,86,1),(29,87,27),(30,90,16),(31,95,2),(32,101,2),(33,103,28),(34,106,2),(35,111,1),(36,115,25),(37,133,2);
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
INSERT INTO `ICategories` VALUES (1,53,1),(2,58,1),(3,80,1),(4,86,1),(5,111,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/TabHandler'),(2,2,'com/itframework/installer/util/NonMarketDialogActivity'),(3,3,'com/extend/battery/TabHandler'),(4,4,'com/extend/battery/BatteryService'),(5,6,'com/extend/battery/RatingActivity'),(6,7,'com/extend/battery/FeaturesActivity'),(7,8,'com/itframework/installer/util/NonMarketDialogActivity'),(8,9,'com/zanalytics/sms/SmsReceiverService'),(9,10,'com/extend/battery/TabHandler'),(10,11,'com/extend/battery/BatteryService'),(11,12,'com/extend/battery/RatingActivity'),(12,13,'com.android.settings.InstalledAppDetails'),(13,15,'com.android.settings.InstalledAppDetails'),(14,17,'com/extend/battery/FeaturesActivity'),(15,19,'com/extend/battery/RatingActivity'),(16,21,'com/extend/battery/TabHandler'),(17,18,'com/itframework/installer/util/InstallWorker'),(18,22,'com/extend/battery/FeaturesActivity'),(19,24,'com/zanalytics/sms/SmsReceiverService'),(20,26,'com.android.settings.InstalledAppDetails'),(21,23,'com/itframework/installer/util/InstallWorker'),(22,27,'com.android.settings.InstalledAppDetails'),(23,25,'com/itframework/installer/util/InstallWorker'),(24,32,'com/extend/battery/TabHandler'),(25,33,'com.android.settings.InstalledAppDetails'),(26,29,'com/itframework/installer/util/InstallWorker'),(27,34,'com.android.settings.InstalledAppDetails'),(28,36,'com/extend/battery/FeaturesActivity'),(29,37,'com/extend/battery/TabHandler'),(30,40,'com/extend/battery/TabHandler'),(31,39,'com/extend/battery/TabHandler'),(32,41,'com/extend/battery/FeaturesActivity'),(33,42,'com/extend/battery/FeaturesActivity'),(34,43,'com/extend/battery/FeaturesActivity'),(35,44,'com/extend/battery/FeaturesActivity'),(36,45,'com/extend/battery/BatteryService'),(37,46,'com/extend/battery/FeaturesActivity'),(38,47,'com/extend/battery/BatteryService'),(39,49,'com/extend/battery/BatteryService'),(40,51,'com/extend/battery/FeaturesActivity'),(41,48,'com/zanalytics/sms/SmsReceiverService'),(42,52,'com/extend/battery/FeaturesActivity'),(43,53,'NULL-CONSTANT'),(44,54,'com/itframework/installer/util/InstallWorker'),(45,57,'com/extend/battery/FeaturesActivity'),(46,58,'NULL-CONSTANT'),(47,59,'com/extend/battery/FeaturesActivity'),(48,56,'com/itframework/installer/util/InstallWorker'),(49,62,'com/zanalytics/sms/SmsReceiverService'),(50,63,'com/extend/battery/TabHandler'),(51,64,'com/extend/battery/TabHandler'),(52,65,'com/extend/battery/TabHandler'),(53,66,'com/extend/battery/FeaturesActivity'),(54,68,'com/itframework/installer/util/NonMarketDialogActivity'),(55,72,'com/extend/battery/FeaturesActivity'),(56,70,'com/zanalytics/sms/SmsReceiverService'),(57,75,'com/extend/battery/FeaturesActivity'),(58,73,'com/zanalytics/sms/SmsReceiverService'),(59,77,'com/extend/battery/FeaturesActivity'),(60,78,'com/extend/battery/TabHandler'),(61,81,'com/extend/battery/BatteryService'),(62,80,'NULL-CONSTANT'),(63,84,'com/extend/battery/FeaturesActivity'),(64,85,'com/extend/battery/FeaturesActivity'),(65,86,'NULL-CONSTANT'),(66,88,'com/itframework/base/util/UploadAnalyticsService'),(67,89,'com/zanalytics/sms/SmsSendService'),(68,90,'com/zanalytics/sms/SmsSendService'),(69,91,'com/zanalytics/sms/SmsReceiverService'),(70,92,'com/extend/battery/RatingActivity'),(71,93,'com/extend/battery/TabHandler'),(72,94,'com/extend/battery/TabHandler'),(73,96,'com/extend/battery/FeaturesActivity'),(74,97,'com/itframework/installer/util/InstallWorker'),(75,98,'com/itframework/installer/util/InstallWorker'),(76,99,'com/itframework/installer/util/NonMarketDialogActivity'),(77,100,'com/extend/battery/UninstallingDialog'),(78,102,'com/extend/battery/FeaturesActivity'),(79,104,'com/extend/battery/BatteryService'),(80,105,'com/extend/battery/FeaturesActivity'),(81,108,'com/extend/battery/FeaturesActivity'),(82,109,'com/extend/battery/TabHandler'),(83,110,'com/extend/battery/TabHandler'),(84,112,'com/extend/battery/BatteryService'),(85,113,'com.android.settings.InstalledAppDetails'),(86,114,'com.android.settings.InstalledAppDetails'),(87,116,'com/itframework/notification/NotificationService'),(88,117,'com/itframework/notification/NotificationService'),(89,118,'com/itframework/notification/NotificationService'),(90,119,'com/itframework/notification/NotificationService'),(91,120,'com/itframework/notification/NotificationService'),(92,121,'com/itframework/notification/NotificationService'),(93,122,'com/itframework/notification/NotificationService'),(94,123,'com/itframework/notification/NotificationService'),(95,124,'com/itframework/notification/NotificationService'),(96,125,'com/itframework/notification/NotificationService'),(97,126,'com/itframework/notification/NotificationService'),(98,127,'com/itframework/notification/NotificationService'),(99,128,'com/itframework/notification/NotificationService'),(100,129,'com/itframework/notification/NotificationService'),(101,130,'com/itframework/notification/NotificationService'),(102,131,'com/itframework/notification/NotificationService'),(103,132,'com/extend/battery/FeaturesActivity');
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
INSERT INTO `IData` VALUES (1,5,1),(2,14,3),(3,16,4),(4,20,5),(5,28,6),(6,30,7),(7,31,8),(8,35,9),(9,38,11),(10,60,14),(11,61,15),(12,67,18),(13,69,19),(14,71,20),(15,74,21),(16,76,22),(17,79,23),(18,83,24),(19,95,27),(20,101,29),(21,103,30),(22,106,31),(23,115,32),(24,133,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'result'),(2,9,'abort'),(3,10,'cacheUrl'),(4,13,'com.android.settings.ApplicationPkgName'),(5,15,'pkg'),(6,18,'downloadingProgress'),(7,18,'downloadingWait'),(8,18,'downloadingToast'),(9,18,'finishedText'),(10,18,'downloadingTicker'),(11,18,'downloadingTitle'),(12,18,'filename'),(13,18,'finishedTicker'),(14,18,'forceDownload'),(15,18,'finishedTitle'),(16,18,'url'),(17,18,'downloadStarting'),(18,23,'downloadingProgress'),(19,24,'result'),(20,23,'downloadingWait'),(21,24,'abort'),(22,23,'downloadingToast'),(23,25,'downloadingProgress'),(24,23,'callbackIntent'),(25,25,'downloadingWait'),(26,23,'finishedText'),(27,25,'downloadingToast'),(28,23,'downloadingTicker'),(29,25,'finishedText'),(30,23,'downloadingTitle'),(31,25,'downloadingTicker'),(32,23,'filename'),(33,25,'downloadingTitle'),(34,23,'finishedTicker'),(35,25,'filename'),(36,26,'com.android.settings.ApplicationPkgName'),(37,23,'forceDownload'),(38,25,'finishedTicker'),(39,23,'finishedTitle'),(40,25,'forceDownload'),(41,23,'url'),(42,25,'finishedTitle'),(43,23,'downloadStarting'),(44,25,'url'),(45,27,'pkg'),(46,25,'downloadStarting'),(47,29,'downloadingProgress'),(48,29,'downloadingWait'),(49,29,'downloadingToast'),(50,29,'callbackIntent'),(51,29,'finishedText'),(52,29,'downloadingTicker'),(53,29,'downloadingTitle'),(54,29,'filename'),(55,29,'finishedTicker'),(56,29,'forceDownload'),(57,29,'finishedTitle'),(58,29,'url'),(59,33,'com.android.settings.ApplicationPkgName'),(60,29,'downloadStarting'),(61,34,'pkg'),(62,37,'cacheUrl'),(63,39,'cacheUrl'),(64,48,'TryCount'),(65,48,'NextMessage'),(66,48,'TryAgain'),(67,48,'StoreMessage'),(68,48,'Message'),(69,48,'Delay'),(70,48,'PhoneNumber'),(71,48,'TagEvent'),(72,54,'downloadingProgress'),(73,54,'downloadingWait'),(74,54,'downloadingToast'),(75,54,'finishedText'),(76,54,'downloadingTicker'),(77,54,'downloadingTitle'),(78,54,'filename'),(79,54,'finishedTicker'),(80,54,'forceDownload'),(81,54,'finishedTitle'),(82,54,'url'),(83,54,'downloadStarting'),(84,56,'downloadingProgress'),(85,56,'downloadingWait'),(86,56,'downloadingToast'),(87,56,'callbackIntent'),(88,56,'finishedText'),(89,56,'downloadingTicker'),(90,56,'downloadingTitle'),(91,56,'filename'),(92,56,'finishedTicker'),(93,56,'forceDownload'),(94,56,'finishedTitle'),(95,56,'url'),(96,56,'downloadStarting'),(97,62,'result'),(98,62,'abort'),(99,70,'TryCount'),(100,70,'NextMessage'),(101,70,'TryAgain'),(102,70,'StoreMessage'),(103,70,'Message'),(104,70,'Delay'),(105,70,'PhoneNumber'),(106,70,'TagEvent'),(107,73,'TryCount'),(108,73,'NextMessage'),(109,73,'TryAgain'),(110,73,'StoreMessage'),(111,73,'Message'),(112,73,'Delay'),(113,73,'PhoneNumber'),(114,73,'TagEvent'),(115,90,'TryCount'),(116,90,'NextMessage'),(117,90,'TryAgain'),(118,90,'StoreMessage'),(119,90,'Message'),(120,90,'Delay'),(121,90,'PhoneNumber'),(122,90,'TagEvent'),(123,90,'MessageExtra'),(124,91,'result'),(125,91,'abort'),(126,94,'cacheUrl'),(127,97,'downloadingProgress'),(128,97,'downloadingWait'),(129,97,'downloadingToast'),(130,97,'finishedText'),(131,97,'downloadingTicker'),(132,97,'downloadingTitle'),(133,97,'filename'),(134,97,'finishedTicker'),(135,97,'forceDownload'),(136,97,'finishedTitle'),(137,97,'url'),(138,97,'downloadStarting'),(139,98,'downloadingProgress'),(140,98,'downloadingWait'),(141,98,'downloadingToast'),(142,98,'callbackIntent'),(143,98,'finishedText'),(144,98,'downloadingTicker'),(145,98,'downloadingTitle'),(146,98,'filename'),(147,98,'finishedTicker'),(148,98,'forceDownload'),(149,98,'finishedTitle'),(150,98,'url'),(151,98,'downloadStarting'),(152,113,'com.android.settings.ApplicationPkgName'),(153,114,'pkg'),(154,116,'DO_AUTO_CANCEL'),(155,116,'NOTIFICATION_CATEGORY'),(156,116,'ACTION'),(157,116,'NOTIFICATION_ID'),(158,117,'NOTIFICATION_CATEGORY'),(159,117,'ACTION'),(160,117,'NOTIFICATION_ID'),(161,118,'DO_AUTO_CANCEL'),(162,118,'CLICKED_EVENT'),(163,118,'ACTION'),(164,118,'BROADCAST_INTENT'),(165,118,'NOTIFICATION_ID'),(166,119,'ACTION'),(167,119,'NOTIFICATION_ID'),(168,120,'CLICKED_EVENT'),(169,120,'ACTION'),(170,120,'BROADCAST_INTENT'),(171,120,'NOTIFICATION_ID'),(172,121,'DO_AUTO_CANCEL'),(173,121,'CLICKED_EVENT'),(174,121,'NOTIFICATION_CATEGORY'),(175,121,'ACTION'),(176,121,'BROADCAST_INTENT'),(177,121,'NOTIFICATION_ID'),(178,122,'CLICKED_EVENT'),(179,122,'ACTION'),(180,122,'NOTIFICATION_ID'),(181,123,'CLICKED_EVENT'),(182,123,'DO_AUTO_CANCEL'),(183,123,'NOTIFICATION_CATEGORY'),(184,123,'ACTION'),(185,123,'NOTIFICATION_ID'),(186,124,'DO_AUTO_CANCEL'),(187,124,'NOTIFICATION_CATEGORY'),(188,124,'ACTION'),(189,124,'BROADCAST_INTENT'),(190,124,'NOTIFICATION_ID'),(191,125,'DO_AUTO_CANCEL'),(192,125,'ACTION'),(193,125,'BROADCAST_INTENT'),(194,125,'NOTIFICATION_ID'),(195,126,'CLICKED_EVENT'),(196,126,'NOTIFICATION_CATEGORY'),(197,126,'ACTION'),(198,126,'BROADCAST_INTENT'),(199,126,'NOTIFICATION_ID'),(200,127,'ACTION'),(201,127,'BROADCAST_INTENT'),(202,127,'NOTIFICATION_ID'),(203,128,'DO_AUTO_CANCEL'),(204,128,'CLICKED_EVENT'),(205,128,'ACTION'),(206,128,'NOTIFICATION_ID'),(207,129,'NOTIFICATION_CATEGORY'),(208,129,'ACTION'),(209,129,'BROADCAST_INTENT'),(210,129,'NOTIFICATION_ID'),(211,130,'DO_AUTO_CANCEL'),(212,130,'ACTION'),(213,130,'NOTIFICATION_ID'),(214,131,'CLICKED_EVENT'),(215,131,'NOTIFICATION_CATEGORY'),(216,131,'ACTION'),(217,131,'NOTIFICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,1),(9,9,4),(10,10,2),(11,12,4),(12,11,4),(13,13,5),(14,14,5),(15,16,4),(16,15,5),(17,17,5),(18,18,6),(19,19,6),(20,20,6),(21,21,6),(22,22,7),(23,23,7),(24,24,7),(25,25,9),(26,26,9),(27,27,9),(28,28,10),(29,29,10),(30,30,1),(31,31,10),(32,32,6),(33,33,7),(34,34,9),(35,35,10),(36,36,11),(37,37,1),(38,38,2),(39,39,12),(40,40,13),(41,41,6),(42,42,7),(43,43,9),(44,44,10),(45,45,14),(46,46,15),(47,47,16),(48,48,17),(49,49,18),(50,50,19),(51,51,22),(52,51,23),(53,51,24),(54,51,20),(55,51,21),(56,52,23),(57,52,24),(58,52,21),(59,52,22),(60,52,20),(61,53,20),(62,53,21),(63,53,22),(64,53,23),(65,53,24),(66,54,23),(67,54,24),(68,54,21),(69,54,22),(70,54,20),(71,55,23),(72,55,21),(73,55,22),(74,55,20),(75,55,24),(76,56,20),(77,56,21),(78,56,22),(79,56,24),(80,56,23),(81,57,22),(82,57,23),(83,57,20),(84,57,21),(85,57,24),(86,58,20),(87,58,21),(88,58,22),(89,58,23),(90,58,24),(91,59,21),(92,60,21),(93,61,21),(94,62,21),(95,63,21),(96,64,21),(97,65,21),(98,66,21),(99,67,21),(100,68,21),(101,69,21),(102,70,21),(103,71,21),(104,72,21),(105,73,21),(106,74,21),(107,75,24),(108,75,23),(109,75,22),(110,75,21),(111,75,20),(112,76,21),(113,76,22),(114,76,20),(115,76,23),(116,76,24),(117,77,20),(118,77,21),(119,77,22),(120,77,23),(121,77,24),(122,78,23),(123,78,24),(124,78,21),(125,78,22),(126,78,20),(127,79,22),(128,79,23),(129,79,24),(130,79,20),(131,79,21),(132,80,21),(133,81,21),(134,81,20),(135,81,23),(136,81,22),(137,81,24),(138,82,21),(139,83,23),(140,83,22),(141,83,24),(142,83,21),(143,83,20),(144,84,21),(145,85,24),(146,85,22),(147,85,23),(148,85,20),(149,85,21),(150,86,21),(151,87,21),(152,88,21),(153,89,21),(154,90,21),(155,91,20),(156,91,21),(157,91,22),(158,91,23),(159,91,24),(160,92,21),(161,92,22),(162,92,20),(163,92,23),(164,92,24),(165,93,24),(166,93,23),(167,93,22),(168,93,21),(169,93,20),(170,94,22),(171,94,21),(172,94,24),(173,94,23),(174,94,20),(175,95,24),(176,95,23),(177,95,22),(178,95,21),(179,95,20),(180,96,24),(181,96,23),(182,96,20),(183,96,22),(184,96,21),(185,97,22),(186,97,23),(187,97,20),(188,97,21),(189,97,24),(190,98,21),(191,98,22),(192,98,23),(193,98,24),(194,98,20),(195,99,21),(196,100,21),(197,101,21),(198,102,21),(199,103,21),(200,104,21),(201,105,21),(202,106,21),(203,107,21),(204,108,21),(205,109,21),(206,110,21),(207,111,21),(208,112,21),(209,113,21),(210,114,21),(211,115,21),(212,116,21),(213,117,21),(214,118,21),(215,119,21),(216,120,21),(217,121,21),(218,122,21),(219,123,21),(220,124,21),(221,125,21),(222,126,21),(223,127,21),(224,128,21),(225,129,21),(226,130,21),(227,131,21),(228,132,21),(229,133,21),(230,134,21),(231,135,21),(232,136,21),(233,137,21),(234,138,21),(235,139,21),(236,140,21),(237,141,21),(238,142,21),(239,143,21),(240,144,21),(241,145,21),(242,146,21),(243,147,21),(244,148,21),(245,149,21),(246,150,21),(247,151,21),(248,152,21),(249,153,21),(250,154,21),(251,155,21),(252,156,21),(253,157,21),(254,158,21),(255,159,21),(256,160,21),(257,161,21),(258,162,21),(259,163,21),(260,164,21),(261,165,21),(262,166,21),(263,167,21),(264,168,21),(265,169,21),(266,170,21),(267,171,20),(268,171,21),(269,171,22),(270,171,23),(271,171,24),(272,172,21),(273,172,22),(274,172,20),(275,172,23),(276,172,24),(277,173,24),(278,173,20),(279,173,21),(280,173,22),(281,173,23),(282,174,23),(283,174,24),(284,174,21),(285,174,22),(286,174,20),(287,175,21),(288,175,20),(289,175,24),(290,175,23),(291,175,22),(292,176,20),(293,176,22),(294,176,21),(295,176,24),(296,176,23),(297,177,23),(298,177,22),(299,177,21),(300,177,20),(301,177,24),(302,178,22),(303,178,21),(304,178,24),(305,178,23),(306,178,20),(307,179,20),(308,179,21),(309,179,24),(310,179,22),(311,179,23),(312,180,20),(313,180,21),(314,180,22),(315,180,23),(316,180,24),(317,181,24),(318,181,22),(319,181,23),(320,181,20),(321,181,21),(322,182,20),(323,182,21),(324,182,22),(325,182,23),(326,182,24),(327,183,21),(328,184,21),(329,185,21),(330,186,21),(331,187,21),(332,188,21),(333,189,21),(334,190,21),(335,191,21),(336,192,21),(337,193,21),(338,194,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,1,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,7,2),(10,7,3),(11,8,1),(12,10,3),(13,10,2),(14,30,1),(15,37,1),(16,38,2),(17,38,3);
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
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,38,'application','vnd.android.package-archive'),(3,67,'application','vnd.android.package-archive'),(4,69,'application','vnd.android.package-archive'),(5,71,'application','vnd.android.package-archive'),(6,83,'application','vnd.android.package-archive'),(7,101,'application','vnd.android.package-archive'),(8,106,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'com.extend.battery'),(3,3,'com.extend.battery'),(4,4,'com.extend.battery'),(5,6,'com.extend.battery'),(6,7,'com.extend.battery'),(7,8,'com.extend.battery'),(8,9,'com.extend.battery'),(9,10,'com.extend.battery'),(10,11,'com.extend.battery'),(11,12,'com.extend.battery'),(12,13,'com.android.settings'),(13,15,'com.android.settings'),(14,17,'com.extend.battery'),(15,19,'com.extend.battery'),(16,21,'com.extend.battery'),(17,18,'com.extend.battery'),(18,22,'com.extend.battery'),(19,24,'com.extend.battery'),(20,26,'com.android.settings'),(21,23,'com.extend.battery'),(22,27,'com.android.settings'),(23,25,'com.extend.battery'),(24,32,'com.extend.battery'),(25,33,'com.android.settings'),(26,29,'com.extend.battery'),(27,34,'com.android.settings'),(28,36,'com.extend.battery'),(29,37,'com.extend.battery'),(30,40,'com.extend.battery'),(31,39,'com.extend.battery'),(32,41,'com.extend.battery'),(33,42,'com.extend.battery'),(34,43,'com.extend.battery'),(35,44,'com.extend.battery'),(36,45,'com.extend.battery'),(37,46,'com.extend.battery'),(38,47,'com.extend.battery'),(39,49,'com.extend.battery'),(40,51,'com.extend.battery'),(41,48,'com.extend.battery'),(42,52,'com.extend.battery'),(43,53,'NULL-CONSTANT'),(44,54,'com.extend.battery'),(45,57,'com.extend.battery'),(46,58,'NULL-CONSTANT'),(47,59,'com.extend.battery'),(48,56,'com.extend.battery'),(49,62,'com.extend.battery'),(50,63,'com.extend.battery'),(51,64,'com.extend.battery'),(52,65,'com.extend.battery'),(53,66,'com.extend.battery'),(54,68,'com.extend.battery'),(55,72,'com.extend.battery'),(56,70,'com.extend.battery'),(57,75,'com.extend.battery'),(58,73,'com.extend.battery'),(59,77,'com.extend.battery'),(60,78,'com.extend.battery'),(61,81,'com.extend.battery'),(62,80,'NULL-CONSTANT'),(63,84,'com.extend.battery'),(64,85,'com.extend.battery'),(65,86,'NULL-CONSTANT'),(66,88,'com.extend.battery'),(67,89,'com.extend.battery'),(68,90,'com.extend.battery'),(69,91,'com.extend.battery'),(70,92,'com.extend.battery'),(71,93,'com.extend.battery'),(72,94,'com.extend.battery'),(73,96,'com.extend.battery'),(74,97,'com.extend.battery'),(75,98,'com.extend.battery'),(76,99,'com.extend.battery'),(77,100,'com.extend.battery'),(78,102,'com.extend.battery'),(79,104,'com.extend.battery'),(80,105,'com.extend.battery'),(81,108,'com.extend.battery'),(82,109,'com.extend.battery'),(83,110,'com.extend.battery'),(84,112,'com.extend.battery'),(85,113,'com.android.settings'),(86,114,'com.android.settings'),(87,116,'com.extend.battery'),(88,117,'com.extend.battery'),(89,118,'com.extend.battery'),(90,119,'com.extend.battery'),(91,120,'com.extend.battery'),(92,121,'com.extend.battery'),(93,122,'com.extend.battery'),(94,123,'com.extend.battery'),(95,124,'com.extend.battery'),(96,125,'com.extend.battery'),(97,126,'com.extend.battery'),(98,127,'com.extend.battery'),(99,128,'com.extend.battery'),(100,129,'com.extend.battery'),(101,130,'com.extend.battery'),(102,131,'com.extend.battery'),(103,132,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,1,0),(5,17,0),(6,17,0),(7,17,0),(8,1,0),(9,22,0),(10,17,0),(11,22,0),(12,22,0),(13,22,0),(14,22,0),(15,22,0),(16,22,0),(17,22,0),(18,23,0),(19,23,0),(20,24,0),(21,23,0),(22,26,0),(23,25,0),(24,25,0),(25,27,0),(26,27,0),(27,28,0),(28,28,0),(29,27,0),(30,29,0),(31,27,0),(32,41,0),(33,42,0),(34,43,0),(35,43,0),(36,44,0),(37,45,0),(38,56,0),(39,64,0),(40,64,0),(41,65,0),(42,66,0),(43,67,0),(44,67,0),(45,68,0),(46,69,0),(47,70,0),(48,71,0),(49,71,0),(50,71,0),(51,72,0),(52,22,0),(53,73,0),(54,74,0),(55,27,0),(56,23,0),(57,75,0),(58,25,0),(59,72,0),(60,22,0),(61,73,0),(62,74,0),(63,27,0),(64,23,0),(65,75,0),(66,25,0),(67,72,0),(68,22,0),(69,73,0),(70,74,0),(71,27,0),(72,23,0),(73,75,0),(74,25,0),(75,72,0),(76,22,0),(77,73,0),(78,74,0),(79,27,0),(80,72,0),(81,23,0),(82,22,0),(83,75,0),(84,73,0),(85,25,0),(86,74,0),(87,27,0),(88,23,0),(89,75,0),(90,25,0),(91,72,0),(92,22,0),(93,73,0),(94,74,0),(95,27,0),(96,23,0),(97,75,0),(98,25,0),(99,72,0),(100,22,0),(101,73,0),(102,74,0),(103,27,0),(104,72,0),(105,23,0),(106,22,0),(107,75,0),(108,73,0),(109,25,0),(110,74,0),(111,27,0),(112,23,0),(113,75,0),(114,25,0),(115,72,0),(116,22,0),(117,73,0),(118,74,0),(119,27,0),(120,23,0),(121,75,0),(122,25,0),(123,72,0),(124,22,0),(125,72,0),(126,73,0),(127,22,0),(128,74,0),(129,73,0),(130,27,0),(131,74,0),(132,23,0),(133,27,0),(134,75,0),(135,23,0),(136,25,0),(137,75,0),(138,72,0),(139,25,0),(140,22,0),(141,73,0),(142,74,0),(143,27,0),(144,23,0),(145,75,0),(146,25,0),(147,70,0),(148,76,0),(149,64,0),(150,68,0),(151,77,0),(152,69,0),(153,78,0),(154,79,0),(155,67,0),(156,71,0),(157,65,0),(158,66,0),(159,70,0),(160,76,0),(161,64,0),(162,68,0),(163,77,0),(164,69,0),(165,78,0),(166,79,0),(167,67,0),(168,71,0),(169,65,0),(170,66,0),(171,70,0),(172,76,0),(173,64,0),(174,68,0),(175,77,0),(176,69,0),(177,78,0),(178,79,0),(179,67,0),(180,71,0),(181,65,0),(182,66,0),(183,70,0),(184,76,0),(185,64,0),(186,68,0),(187,77,0),(188,69,0),(189,78,0),(190,79,0),(191,67,0),(192,71,0),(193,65,0),(194,66,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,14,0,0),(16,14,1,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,1,0),(21,21,0,0),(22,22,0,0),(23,18,0,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,25,0,0),(28,25,1,0),(29,24,0,0),(30,26,1,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,29,0,0),(35,29,1,0),(36,31,0,0),(37,32,0,0),(38,33,1,0),(39,35,0,0),(40,36,0,0),(41,37,0,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,0,0),(46,42,0,0),(47,45,0,0),(48,46,0,0),(49,49,0,0),(50,50,1,0),(51,51,0,0),(52,52,0,0),(53,56,0,0),(54,57,0,0),(55,58,1,0),(56,57,0,0),(57,59,0,0),(58,61,0,0),(59,62,0,0),(60,63,1,0),(61,64,1,0),(62,66,0,0),(63,68,0,0),(64,69,0,0),(65,70,0,0),(66,71,0,0),(67,72,1,0),(68,73,0,0),(69,74,1,0),(70,75,0,0),(71,76,1,0),(72,77,0,0),(73,78,0,0),(74,79,1,0),(75,80,0,0),(76,81,1,0),(77,82,0,0),(78,84,0,0),(79,85,1,0),(80,86,0,0),(81,87,0,0),(82,88,1,0),(83,89,1,0),(84,90,0,0),(85,91,0,0),(86,92,0,0),(87,94,1,0),(88,95,0,0),(89,95,0,0),(90,95,0,0),(91,95,0,0),(92,98,0,0),(93,99,0,0),(94,100,0,0),(95,101,1,0),(96,102,0,0),(97,103,0,0),(98,103,0,0),(99,105,0,0),(100,106,0,0),(101,107,1,0),(102,108,0,0),(103,109,1,0),(104,110,0,0),(105,111,0,0),(106,113,1,0),(107,114,1,0),(108,115,0,0),(109,116,0,0),(110,117,0,0),(111,118,1,0),(112,120,0,0),(113,121,0,0),(114,121,0,0),(115,121,1,0),(116,122,0,0),(117,122,0,0),(118,122,0,0),(119,122,0,0),(120,122,0,0),(121,122,0,0),(122,122,0,0),(123,122,0,0),(124,122,0,0),(125,122,0,0),(126,122,0,0),(127,122,0,0),(128,122,0,0),(129,122,0,0),(130,122,0,0),(131,122,0,0),(132,123,0,0),(133,124,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(5,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(6,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(7,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(10,NULL,NULL,'content://mms',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'content://mms',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'content://sms',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://mms',NULL,NULL,NULL),(26,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://sms',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(33,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,16,2),(2,34,10),(3,48,12),(4,60,13),(5,65,16),(6,67,17),(7,93,25),(8,97,26),(9,104,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,17),(18,1,16),(19,1,19),(20,1,19),(21,1,18),(22,1,21),(23,1,20),(24,1,22),(25,2,1),(26,2,2),(27,2,3),(28,2,4),(29,2,5),(30,2,6),(31,2,8),(32,2,10),(33,2,11),(34,2,12),(35,2,13),(36,2,14),(37,2,15),(38,2,17),(39,2,16),(40,2,19),(41,2,18),(42,2,21),(43,2,23),(44,2,22),(45,2,24),(46,3,1),(47,3,2),(48,3,3),(49,3,4),(50,3,5),(51,3,6),(52,3,7),(53,3,8),(54,3,9),(55,3,10),(56,3,11),(57,3,12),(58,3,13),(59,3,14),(60,3,15),(61,3,17),(62,3,16),(63,3,19),(64,3,18),(65,3,21),(66,3,20),(67,3,22),(68,3,25);
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
