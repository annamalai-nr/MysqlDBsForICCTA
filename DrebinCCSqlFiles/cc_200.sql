-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_200
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*).SEND_SMS'),(23,'NULL-CONSTANT'),(14,'android.intent.action.BATTERY_CHANGED'),(21,'android.intent.action.BATTERY_LOW'),(18,'android.intent.action.BATTERY_OKAY'),(10,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(4,'android.intent.action.VIEW'),(5,'android.provider.Telephony.SMS_RECEIVED'),(12,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(15,'android.settings.APPLICATION_DETAILS_SETTINGS'),(16,'android.settings.LOCATION_SOURCE_SETTINGS'),(13,'com.android.mms.transaction.MESSAGE_SENT'),(6,'com.android.vending.INSTALL_REFERRER'),(8,'com.extend.battery.intent.http.SHOW'),(24,'com.flurry.android.ACTION_CATALOG'),(7,'com.itframework.installer.updater.CHECK'),(9,'com.itframework.installer.updater.UPDATE'),(11,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(3,'com.zanalytics.sms.MESSAGE_RECEIVED'),(2,'net.ponury.faceniff');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'net.ponury.faceniff',2),(2,'com.extend.battery',81),(3,'com.extend.battery',80),(4,'com.extend.battery',91),(5,'com.extend.battery',62),(6,'com.extend.battery',89),(7,'com.saver.sc',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'net.ponury.faceniff.faceniff'),(2,1,'net.ponury.faceniff.FNPreferences'),(3,1,'net.ponury.faceniff.FNService'),(4,2,'com.extend.battery.Splash'),(5,3,'com.extend.battery.Splash'),(6,5,'com.extend.battery.Splash'),(7,2,'com.extend.battery.TabHandler'),(8,4,'com.extend.battery.Splash'),(9,3,'com.extend.battery.TabHandler'),(10,2,'com.extend.battery.TaskKillerActivity'),(11,5,'com.extend.battery.TabHandler'),(12,3,'com.extend.battery.TaskKillerActivity'),(13,2,'com.extend.battery.UninstallerActivity'),(14,5,'com.extend.battery.TaskKillerActivity'),(15,4,'com.extend.battery.TabHandler'),(16,3,'com.extend.battery.UninstallerActivity'),(17,2,'com.extend.battery.SecurityAuditActivity'),(18,5,'com.extend.battery.UninstallerActivity'),(19,4,'com.extend.battery.TaskKillerActivity'),(20,3,'com.extend.battery.SecurityAuditActivity'),(21,2,'com.extend.battery.InstallerActivity'),(22,5,'com.extend.battery.SecurityAuditActivity'),(23,4,'com.extend.battery.UninstallerActivity'),(24,3,'com.extend.battery.InstallerActivity'),(25,2,'com.extend.battery.FeaturesActivity'),(26,5,'com.extend.battery.InstallerActivity'),(27,4,'com.extend.battery.SecurityAuditActivity'),(28,6,'com.extend.battery.Splash'),(29,3,'com.extend.battery.FeaturesActivity'),(30,2,'com.extend.battery.BoosterActivity'),(31,5,'com.extend.battery.FeaturesActivity'),(32,4,'com.extend.battery.InstallerActivity'),(33,3,'com.extend.battery.BoosterActivity'),(34,2,'com.extend.battery.BatteryActivity'),(35,5,'com.extend.battery.BoosterActivity'),(36,4,'com.extend.battery.FeaturesActivity'),(37,3,'com.extend.battery.BatteryActivity'),(38,6,'com.extend.battery.TabHandler'),(39,2,'com.extend.battery.RatingActivity'),(40,5,'com.extend.battery.BatteryActivity'),(41,4,'com.extend.battery.BoosterActivity'),(42,3,'com.extend.battery.RatingActivity'),(43,6,'com.extend.battery.TaskKillerActivity'),(44,2,'com.extend.battery.BatteryService'),(45,5,'com.extend.battery.RatingActivity'),(46,4,'com.extend.battery.BatteryActivity'),(47,3,'com.extend.battery.BatteryService'),(48,2,'com.zanalytics.sms.SmsReceiverService'),(49,6,'com.extend.battery.UninstallerActivity'),(50,5,'com.extend.battery.BatteryService'),(51,4,'com.extend.battery.RatingActivity'),(52,3,'com.zanalytics.sms.SmsReceiverService'),(53,2,'com.zanalytics.sms.SmsReceiver'),(54,6,'com.extend.battery.SecurityAuditActivity'),(55,5,'com.zanalytics.sms.SmsReceiverService'),(56,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(57,3,'com.zanalytics.sms.SmsReceiver'),(58,6,'com.extend.battery.InstallerActivity'),(59,5,'com.zanalytics.sms.SmsReceiver'),(60,6,'com.extend.battery.FeaturesActivity'),(61,6,'com.extend.battery.BoosterActivity'),(62,2,'com.tapjoy.TapjoyReferralTracker'),(63,3,'com.tapjoy.TapjoyReferralTracker'),(64,4,'com.itframework.installer.util.NonMarketDialogActivity'),(65,6,'com.extend.battery.BatteryActivity'),(66,5,'com.tapjoy.TapjoyReferralTracker'),(67,6,'com.extend.battery.RatingActivity'),(68,4,'com.extend.battery.BatteryService'),(69,4,'com.itframework.installer.util.InstallWorker'),(70,6,'com.extend.battery.BatteryService'),(71,4,'com.zanalytics.sms.SmsReceiverService'),(72,6,'com.zanalytics.sms.SmsReceiverService'),(73,4,'com.itframework.installer.updater.UpdateReceiver'),(74,6,'com.extend.battery.NotificationReceiver'),(75,6,'com.extend.battery.BootReceiver'),(76,4,'com.extend.battery.NotificationReceiver'),(77,6,'com.zanalytics.sms.SmsReceiver'),(78,4,'com.extend.battery.BootReceiver'),(79,1,'net.ponury.faceniff.faceniff$9'),(80,4,'com.zanalytics.sms.SmsReceiver'),(81,6,'com.tapjoy.TapjoyReferralTracker'),(82,1,'net.ponury.faceniff.BuyMe$3'),(83,7,'com.androidupgrade.battery.Splash'),(84,7,'com.androidupgrade.battery.TabHandler'),(85,7,'com.androidupgrade.battery.TaskKillerActivity'),(86,7,'com.androidupgrade.battery.UninstallerActivity'),(87,7,'com.androidupgrade.battery.SecurityAuditActivity'),(88,7,'com.androidupgrade.battery.InstallerActivity'),(89,7,'com.androidupgrade.battery.FeaturesActivity'),(90,7,'com.androidupgrade.battery.BoosterActivity'),(91,7,'com.androidupgrade.battery.BatteryActivity'),(92,7,'com.androidupgrade.battery.RatingActivity'),(93,7,'com.androidupgrade.battery.BatteryService'),(94,7,'com.mobsqueeze.sms.SmsReceiverService'),(95,7,'com.mobsqueeze.ReferralReceiver'),(96,7,'com.mobsqueeze.sms.SmsReceiver'),(97,7,'com.tapjoy.TapjoyReferralTracker'),(98,3,'com.extend.battery.g'),(99,3,'com.extend.battery.f'),(100,3,'com.extend.battery.d'),(101,3,'com.zanalytics.sms.c'),(102,3,'com.extend.battery.at'),(103,3,'com.extend.battery.p'),(104,5,'com.extend.battery.g'),(105,5,'com.extend.battery.i'),(106,5,'com.extend.battery.j'),(107,5,'com.zanalytics.sms.c'),(108,3,'com.zanalytics.sms.a'),(109,5,'com.zanalytics.sms.j'),(110,2,'com.extend.battery.aw'),(111,5,'com.zanalytics.sms.a'),(112,2,'com.extend.battery.f'),(113,3,'com.zanalytics.sms.j'),(114,3,'com.extend.battery.av'),(115,5,'com.extend.battery.aw'),(116,2,'com.zanalytics.sms.j'),(117,2,'com.extend.battery.g'),(118,2,'com.extend.battery.i'),(119,2,'com.extend.battery.j'),(120,2,'com.zanalytics.sms.c'),(121,7,'com.mobsqueeze.sms.SmsUtils'),(122,5,'com.extend.battery.f'),(123,7,'com.androidupgrade.battery.Splash$1'),(124,2,'com.extend.battery.ay'),(125,7,'com.mobsqueeze.sms.SmsReceiverService$1'),(126,2,'com.extend.battery.s'),(127,7,'com.androidupgrade.battery.BatteryService$1'),(128,7,'com.androidupgrade.battery.BatteryActivity$1'),(129,7,'com.androidupgrade.battery.BoosterActivity$1'),(130,7,'com.flurry.android.u'),(131,5,'com.extend.battery.ay'),(132,5,'com.extend.battery.s'),(133,2,'com.zanalytics.sms.a'),(134,7,'com.androidupgrade.battery.BoosterActivity$6'),(135,7,'com.androidupgrade.battery.TaskKillerActivity$1'),(136,7,'com.mobsqueeze.sms.SendIntent'),(137,7,'com.androidupgrade.battery.AdUtils$5'),(138,4,'com.extend.battery.d'),(139,4,'com.extend.battery.c'),(140,4,'com.extend.battery.a'),(141,4,'com.zanalytics.sms.c'),(142,4,'com.extend.battery.ba'),(143,4,'com.extend.battery.features.s'),(144,4,'com.itframework.installer.a.b'),(145,4,'com.extend.battery.bb'),(146,4,'com.extend.battery.k'),(147,4,'com.zanalytics.sms.j'),(148,4,'com.zanalytics.sms.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,37,'technology'),(2,40,'technology'),(3,59,'pdus'),(4,57,'pdus'),(5,89,'technology'),(6,34,'technology'),(7,94,'pdus'),(8,53,'pdus'),(9,93,'referrer'),(10,69,'downloadingWait'),(11,69,'downloadingProgress'),(12,69,'url'),(13,69,'showNotifications'),(14,69,'downloadingTitle'),(15,69,'downloadingTicker'),(16,56,'finishedText'),(17,56,'downloadingTitle'),(18,56,'downloadingTicker'),(19,69,'downloadStarting'),(20,56,'downloadingWait'),(21,69,'forceDownload'),(22,73,'URL'),(23,56,'filename'),(24,69,'finishedText'),(25,69,'finishedTitle'),(26,56,'finishedTitle'),(27,69,'finishedTicker'),(28,56,'callbackIntent'),(29,69,'filename'),(30,56,'downloadingToast'),(31,76,'clickevent'),(32,46,'technology'),(33,56,'url'),(34,69,'callbackIntent'),(35,79,'pdus'),(36,69,'downloadingToast'),(37,56,'downloadingProgress'),(38,56,'finishedTicker'),(39,56,'forceDownload'),(40,56,'downloadStarting');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,48,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,80,'r',1,NULL,NULL),(80,81,'r',1,NULL,NULL),(81,83,'a',1,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'s',0,NULL,NULL),(92,94,'s',0,NULL,NULL),(93,95,'r',1,NULL,NULL),(94,96,'r',1,NULL,NULL),(95,97,'r',1,NULL,NULL),(96,98,'r',1,NULL,NULL),(97,99,'r',1,NULL,NULL),(98,100,'r',1,NULL,NULL),(99,101,'r',1,NULL,NULL),(100,104,'r',1,NULL,NULL),(101,105,'r',1,NULL,NULL),(102,106,'r',1,NULL,NULL),(103,107,'r',1,NULL,NULL),(104,117,'r',1,NULL,NULL),(105,118,'r',1,NULL,NULL),(106,119,'r',1,NULL,NULL),(107,120,'r',1,NULL,NULL),(108,125,'r',1,NULL,NULL),(109,127,'r',1,NULL,NULL),(110,128,'r',1,NULL,NULL),(111,129,'r',1,NULL,NULL),(112,138,'r',1,NULL,NULL),(113,139,'r',1,NULL,NULL),(114,140,'r',1,NULL,NULL),(115,141,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,33),(8,7,37),(9,8,40),(10,8,35),(11,9,24),(12,10,22),(13,11,5),(14,12,37),(15,13,24),(16,13,37),(17,13,20),(18,13,16),(19,13,33),(20,14,16),(21,15,53),(22,16,5),(23,17,7),(24,18,5),(25,19,21),(26,20,22),(27,20,40),(28,21,16),(29,21,33),(30,21,37),(31,21,20),(32,21,24),(33,22,17),(34,22,34),(35,23,59),(36,24,4),(37,25,26),(38,25,40),(39,25,18),(40,25,22),(41,26,13),(42,27,20),(43,28,4),(44,29,21),(45,29,13),(46,29,34),(47,29,17),(48,30,5),(49,31,34),(50,31,30),(51,32,6),(52,33,57),(53,34,34),(54,34,13),(55,35,37),(56,35,12),(57,36,6),(58,37,53),(59,38,37),(60,38,20),(61,39,11),(62,40,18),(63,40,40),(64,41,21),(65,41,34),(66,42,40),(67,42,26),(68,43,94),(69,44,40),(70,45,57),(71,46,81),(72,47,40),(73,47,22),(74,47,26),(75,47,18),(76,48,81),(77,49,10),(78,49,34),(79,50,30),(80,50,13),(81,50,21),(82,50,34),(83,50,17),(84,51,37),(85,51,33),(86,52,53),(87,53,18),(88,54,57),(89,55,34),(90,55,13),(91,56,9),(92,57,6),(93,58,34),(94,59,16),(95,59,37),(96,60,59),(97,61,17),(98,62,89),(99,62,88),(100,62,85),(101,62,86),(102,62,84),(103,63,16),(104,63,37),(105,64,14),(106,64,40),(107,65,24),(108,65,37),(109,66,6),(110,67,26),(111,67,18),(112,67,35),(113,67,22),(114,67,40),(115,68,59),(116,69,89),(117,70,35),(118,70,40),(119,71,21),(120,71,34),(121,71,17),(122,71,13),(123,72,94),(124,73,26),(125,74,84),(126,74,88),(127,74,85),(128,74,86),(129,74,89),(130,75,40),(131,75,18),(132,76,4),(133,77,89),(134,77,83),(135,78,4),(136,79,86),(137,79,89),(138,80,94),(139,81,34),(140,81,30),(141,82,89),(142,82,85),(143,82,86),(144,82,84),(145,83,81),(146,84,88),(147,84,89),(148,85,85),(149,86,81),(150,87,89),(151,87,85),(152,88,89),(153,88,84),(154,89,89),(155,90,84),(156,90,89),(157,90,85),(158,90,86),(159,91,89),(160,91,88),(161,92,86),(162,93,94),(163,94,84),(164,95,27),(165,95,46),(166,96,84),(167,96,89),(168,97,41),(169,98,8),(170,99,23),(171,99,46),(172,100,79),(173,101,27),(174,102,32),(175,102,46),(176,103,8),(177,104,27),(178,104,23),(179,104,32),(180,104,46),(181,105,69),(182,106,78),(183,107,46),(184,108,8),(185,109,46),(186,109,19),(187,110,8),(188,111,32),(189,111,46),(190,111,27),(191,111,41),(192,111,23),(193,112,46),(194,112,41),(195,113,15),(196,114,41),(197,114,46),(198,115,69),(199,116,56),(200,117,79),(201,118,56),(202,119,32),(203,120,79),(204,121,76),(205,122,23),(206,122,46),(207,123,69),(208,124,23),(209,125,23),(210,125,32),(211,125,46),(212,125,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<net.ponury.faceniff.faceniff: void bindService()>',6,'s',NULL),(2,79,'<net.ponury.faceniff.faceniff$9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',41,'a',NULL),(3,82,'<net.ponury.faceniff.BuyMe$3: void onClick(android.view.View)>',13,'a',NULL),(4,1,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(5,1,'<net.ponury.faceniff.faceniff: void bindService()>',4,'s',NULL),(6,1,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(7,33,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(8,35,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(9,24,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(10,22,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(11,102,'<com.extend.battery.at: void run()>',199,'a',NULL),(12,37,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(13,103,'<com.extend.battery.p: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(14,16,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(15,53,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(16,102,'<com.extend.battery.at: void run()>',71,'a',NULL),(17,7,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(18,5,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(19,21,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(20,22,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(21,108,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(22,17,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(23,109,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(24,110,'<com.extend.battery.aw: void run()>',205,'a',NULL),(25,111,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(26,13,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(27,20,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(28,110,'<com.extend.battery.aw: void run()>',139,'a',NULL),(29,112,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(30,102,'<com.extend.battery.at: void run()>',135,'a',NULL),(31,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(32,6,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(33,113,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(34,13,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(35,114,'<com.extend.battery.av: void onClick(android.view.View)>',6,'a',NULL),(36,115,'<com.extend.battery.aw: void run()>',119,'a',NULL),(37,116,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(38,20,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(39,11,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(40,18,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(41,21,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(42,26,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(43,121,'<com.mobsqueeze.sms.SmsUtils: com.mobsqueeze.sms.SmsUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',15,'p',NULL),(44,40,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(45,57,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(46,83,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(47,122,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(48,123,'<com.androidupgrade.battery.Splash$1: void run()>',62,'a',NULL),(49,124,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(50,126,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(51,33,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(52,116,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(53,18,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(54,113,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(55,13,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(56,9,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(57,115,'<com.extend.battery.aw: void run()>',175,'a',NULL),(58,34,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(59,16,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(60,109,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(61,17,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(62,130,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(63,16,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(64,131,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(65,24,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(66,115,'<com.extend.battery.aw: void run()>',63,'a',NULL),(67,132,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(68,59,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(69,91,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(70,35,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(71,133,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(72,96,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',55,'s',NULL),(73,26,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(74,134,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(75,18,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(76,110,'<com.extend.battery.aw: void run()>',73,'a',NULL),(77,135,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(78,4,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(79,88,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(80,121,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(81,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(82,136,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(83,123,'<com.androidupgrade.battery.Splash$1: void run()>',126,'a',NULL),(84,90,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',9,'a',NULL),(85,87,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(86,123,'<com.androidupgrade.battery.Splash$1: void run()>',191,'a',NULL),(87,87,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(88,86,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(89,91,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(90,137,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(91,90,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',13,'a',NULL),(92,88,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(93,121,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(94,86,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(95,27,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(96,86,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(97,41,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(98,8,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(99,23,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(100,80,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(101,27,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(102,32,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(103,142,'<com.extend.battery.ba: void run()>',58,'a',NULL),(104,143,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(105,144,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(106,78,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(107,46,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(108,142,'<com.extend.battery.ba: void run()>',212,'a',NULL),(109,145,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(110,142,'<com.extend.battery.ba: void run()>',118,'a',NULL),(111,146,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(112,41,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(113,15,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(114,41,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(115,69,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(116,56,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(117,147,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(118,56,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(119,32,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(120,147,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(121,76,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(122,23,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(123,69,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(124,23,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(125,148,'<com.zanalytics.sms.a: void q()>',3,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,4),(2,3,4),(3,4,4),(4,7,4),(5,10,4),(6,15,15),(7,16,16),(8,17,1),(9,22,4),(10,24,17),(11,27,17),(12,28,1),(13,32,15),(14,33,4),(15,48,4),(16,51,16),(17,53,1),(18,54,22),(19,58,22),(20,60,23),(21,64,23),(22,66,15),(23,68,24),(24,69,16),(25,70,24),(26,74,17),(27,76,4),(28,77,16),(29,78,22),(30,84,17),(31,89,15),(32,92,22),(33,94,4),(34,96,4),(35,97,1),(36,100,4),(37,106,15),(38,109,4),(39,115,16),(40,122,4),(41,123,22),(42,124,4),(43,125,1),(44,126,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,17,1),(2,28,1),(3,53,1),(4,60,2),(5,64,2),(6,68,2),(7,70,2),(8,97,1),(9,125,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'net/ponury/faceniff/FNService'),(2,5,'net/ponury/faceniff/FNPreferences'),(3,6,'net/ponury/faceniff/FNService'),(4,8,'com/extend/battery/FeaturesActivity'),(5,9,'com/extend/battery/RatingActivity'),(6,11,'com.android.settings.InstalledAppDetails'),(7,12,'com/extend/battery/TabHandler'),(8,13,'com.android.settings.InstalledAppDetails'),(9,14,'com/extend/battery/FeaturesActivity'),(10,17,'NULL-CONSTANT'),(11,18,'com/zanalytics/sms/SmsReceiverService'),(12,19,'com/extend/battery/TabHandler'),(13,20,'com/extend/battery/BatteryService'),(14,21,'com/extend/battery/TabHandler'),(15,23,'com/extend/battery/FeaturesActivity'),(16,25,'com/extend/battery/FeaturesActivity'),(17,26,'com/extend/battery/TabHandler'),(18,24,'com/zanalytics/sms/SmsReceiverService'),(19,28,'NULL-CONSTANT'),(20,29,'com.android.settings.InstalledAppDetails'),(21,27,'com/zanalytics/sms/SmsReceiverService'),(22,31,'com/extend/battery/TabHandler'),(23,30,'com.android.settings.InstalledAppDetails'),(24,34,'com/extend/battery/TabHandler'),(25,35,'com/extend/battery/FeaturesActivity'),(26,36,'com/extend/battery/TabHandler'),(27,37,'com/extend/battery/FeaturesActivity'),(28,38,'com/extend/battery/FeaturesActivity'),(29,39,'com/extend/battery/TabHandler'),(30,40,'com/extend/battery/FeaturesActivity'),(31,41,'com/extend/battery/BatteryService'),(32,42,'com/extend/battery/FeaturesActivity'),(33,43,'com/extend/battery/FeaturesActivity'),(34,44,'com/extend/battery/FeaturesActivity'),(35,45,'com/extend/battery/FeaturesActivity'),(36,46,'com/zanalytics/sms/SmsReceiverService'),(37,47,'com/androidupgrade/battery/TabHandler'),(38,49,'com/androidupgrade/battery/TabHandler'),(39,50,'com/extend/battery/FeaturesActivity'),(40,52,'com/extend/battery/RatingActivity'),(41,53,'NULL-CONSTANT'),(42,55,'com/extend/battery/BatteryService'),(43,56,'com/extend/battery/TabHandler'),(44,57,'com/extend/battery/FeaturesActivity'),(45,59,'com.android.settings.InstalledAppDetails'),(46,61,'com/extend/battery/FeaturesActivity'),(47,63,'com/extend/battery/FeaturesActivity'),(48,62,'com.android.settings.InstalledAppDetails'),(49,65,'com/extend/battery/FeaturesActivity'),(50,67,'com/extend/battery/TabHandler'),(51,71,'com/zanalytics/sms/SmsReceiverService'),(52,72,'com/androidupgrade/battery/FeaturesActivity'),(53,73,'com/extend/battery/FeaturesActivity'),(54,75,'com/mobsqueeze/sms/SmsReceiverService'),(55,74,'com/zanalytics/sms/SmsReceiverService'),(56,79,'com/extend/battery/TabHandler'),(57,80,'com/androidupgrade/battery/FeaturesActivity'),(58,82,'com/androidupgrade/battery/FeaturesActivity'),(59,81,'com/extend/battery/TabHandler'),(60,83,'com/extend/battery/RatingActivity'),(61,84,'com/mobsqueeze/sms/SmsReceiverService'),(62,85,'com/androidupgrade/battery/TabHandler'),(63,86,'com/androidupgrade/battery/FeaturesActivity'),(64,87,'com.android.settings.InstalledAppDetails'),(65,88,'com.android.settings.InstalledAppDetails'),(66,90,'com/androidupgrade/battery/TabHandler'),(67,91,'com/androidupgrade/battery/FeaturesActivity'),(68,93,'com/androidupgrade/battery/BatteryService'),(69,95,'com/androidupgrade/battery/RatingActivity'),(70,97,'NULL-CONSTANT'),(71,98,'com/extend/battery/FeaturesActivity'),(72,99,'com/androidupgrade/battery/FeaturesActivity'),(73,101,'com/extend/battery/TabHandler'),(74,102,'com/extend/battery/FeaturesActivity'),(75,103,'com/zanalytics/sms/SmsReceiverService'),(76,104,'com.android.settings.InstalledAppDetails'),(77,105,'com.android.settings.InstalledAppDetails'),(78,107,'com/extend/battery/FeaturesActivity'),(79,108,'com/extend/battery/TabHandler'),(80,110,'com/extend/battery/BatteryService'),(81,111,'com/extend/battery/FeaturesActivity'),(82,112,'com/extend/battery/TabHandler'),(83,113,'com/extend/battery/FeaturesActivity'),(84,114,'com/extend/battery/TabHandler'),(85,116,'com/extend/battery/RatingActivity'),(86,117,'com/extend/battery/BatteryService'),(87,118,'com/extend/battery/FeaturesActivity'),(88,119,'com/itframework/installer/util/InstallWorker'),(89,120,'com/itframework/installer/util/InstallWorker'),(90,121,'com/itframework/installer/util/NonMarketDialogActivity'),(91,125,'NULL-CONSTANT'),(92,126,'com/zanalytics/sms/SmsReceiverService');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,7,4),(5,10,5),(6,15,6),(7,22,7),(8,32,9),(9,33,10),(10,48,14),(11,54,17),(12,58,18),(13,66,20),(14,76,21),(15,78,22),(16,89,24),(17,92,25),(18,94,26),(19,96,27),(20,100,29),(21,106,30),(22,109,31),(23,122,33),(24,123,35),(25,124,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'com.android.settings.ApplicationPkgName'),(2,13,'pkg'),(3,18,'result'),(4,18,'abort'),(5,21,'cacheUrl'),(6,24,'TryCount'),(7,24,'NextMessage'),(8,24,'TryAgain'),(9,24,'StoreMessage'),(10,24,'Message'),(11,24,'Delay'),(12,24,'PhoneNumber'),(13,24,'TagEvent'),(14,27,'TryCount'),(15,27,'NextMessage'),(16,27,'TryAgain'),(17,27,'StoreMessage'),(18,27,'Message'),(19,27,'Delay'),(20,29,'com.android.settings.ApplicationPkgName'),(21,27,'PhoneNumber'),(22,27,'TagEvent'),(23,30,'pkg'),(24,36,'cacheUrl'),(25,46,'result'),(26,46,'abort'),(27,47,'cacheUrl'),(28,59,'com.android.settings.ApplicationPkgName'),(29,60,'u'),(30,62,'pkg'),(31,60,'o'),(32,64,'u'),(33,68,'u'),(34,70,'u'),(35,70,'o'),(36,71,'result'),(37,71,'abort'),(38,74,'TryCount'),(39,75,'result'),(40,74,'NextMessage'),(41,75,'abort'),(42,74,'TryAgain'),(43,74,'StoreMessage'),(44,74,'Message'),(45,74,'Delay'),(46,74,'PhoneNumber'),(47,74,'TagEvent'),(48,81,'cacheUrl'),(49,84,'TryCount'),(50,84,'NextMessage'),(51,84,'TryAgain'),(52,84,'StoreMessage'),(53,84,'Message'),(54,84,'Delay'),(55,84,'PhoneNumber'),(56,84,'TagEvent'),(57,87,'com.android.settings.ApplicationPkgName'),(58,88,'pkg'),(59,101,'cacheUrl'),(60,103,'result'),(61,103,'abort'),(62,104,'com.android.settings.ApplicationPkgName'),(63,105,'pkg'),(64,119,'downloadingProgress'),(65,119,'downloadingWait'),(66,119,'downloadingToast'),(67,119,'finishedText'),(68,119,'downloadingTicker'),(69,119,'downloadingTitle'),(70,119,'filename'),(71,119,'finishedTicker'),(72,119,'forceDownload'),(73,119,'finishedTitle'),(74,119,'url'),(75,119,'downloadStarting'),(76,120,'downloadingProgress'),(77,120,'downloadingWait'),(78,120,'downloadingToast'),(79,120,'callbackIntent'),(80,120,'finishedText'),(81,120,'downloadingTicker'),(82,120,'downloadingTitle'),(83,120,'filename'),(84,120,'finishedTicker'),(85,120,'forceDownload'),(86,120,'finishedTitle'),(87,120,'url'),(88,120,'downloadStarting'),(89,126,'TryCount'),(90,126,'NextMessage'),(91,126,'TryAgain'),(92,126,'StoreMessage'),(93,126,'Message'),(94,126,'Delay'),(95,126,'PhoneNumber'),(96,126,'TagEvent');
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
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,9,3),(10,10,4),(11,11,5),(12,12,5),(13,13,5),(14,14,3),(15,15,6),(16,16,6),(17,17,6),(18,18,7),(19,19,8),(20,20,9),(21,21,10),(22,22,8),(23,23,5),(24,24,10),(25,25,3),(26,26,5),(27,27,6),(28,28,3),(29,29,1),(30,30,6),(31,31,5),(32,32,11),(33,33,12),(34,34,13),(35,35,6),(36,36,14),(37,37,14),(38,38,14),(39,39,14),(40,40,14),(41,41,14),(42,42,14),(43,43,14),(44,44,14),(45,45,14),(46,46,14),(47,47,14),(48,48,14),(49,49,14),(50,50,14),(51,51,14),(52,52,14),(53,53,14),(54,54,14),(55,55,14),(56,56,19),(57,56,20),(58,56,21),(59,56,18),(60,56,14),(61,57,20),(62,57,21),(63,57,18),(64,57,19),(65,57,14),(66,58,14),(67,59,20),(68,59,21),(69,59,18),(70,59,19),(71,59,14),(72,60,14),(73,61,19),(74,61,18),(75,61,14),(76,61,21),(77,61,20),(78,62,14),(79,62,20),(80,62,19),(81,62,18),(82,62,21),(83,63,14),(84,64,14),(85,64,21),(86,64,19),(87,64,20),(88,64,18),(89,65,14),(90,65,20),(91,65,21),(92,65,18),(93,65,19),(94,66,14),(95,67,14),(96,67,18),(97,67,19),(98,67,20),(99,67,21),(100,68,14),(101,68,18),(102,68,20),(103,68,19),(104,68,21),(105,69,14),(106,69,18),(107,69,19),(108,69,21),(109,69,20),(110,71,20),(111,71,21),(112,71,18),(113,71,19),(114,71,14),(115,70,14),(116,72,14),(117,73,14),(118,74,14),(119,74,21),(120,74,18),(121,74,20),(122,74,19),(123,75,14),(124,76,14),(125,77,14),(126,78,14),(127,79,14),(128,80,14),(129,81,14),(130,82,14),(131,83,14),(132,84,14),(133,85,14),(134,86,14),(135,87,14),(136,87,19),(137,87,18),(138,87,21),(139,87,20),(140,88,14),(141,89,14),(142,89,20),(143,89,21),(144,89,18),(145,89,19),(146,90,14),(147,91,14),(148,91,18),(149,91,19),(150,91,20),(151,91,21),(152,92,14),(153,93,14),(154,94,21),(155,94,18),(156,94,20),(157,94,19),(158,94,14),(159,96,14),(160,96,18),(161,96,20),(162,96,19),(163,96,21),(164,95,14),(165,97,14),(166,98,21),(167,98,18),(168,98,19),(169,98,20),(170,98,14),(171,99,14),(172,100,14),(173,101,14),(174,102,14),(175,103,14),(176,104,14),(177,105,14),(178,106,14),(179,107,14),(180,108,14),(181,109,14),(182,110,14),(183,111,14),(184,112,14),(185,113,14),(186,114,14),(187,115,14),(188,116,14),(189,117,14),(190,118,14),(191,119,14),(192,120,14),(193,121,14),(194,122,21),(195,122,18),(196,122,20),(197,122,19),(198,123,21),(199,123,20),(200,123,19),(201,123,18),(202,124,20),(203,124,19),(204,124,21),(205,124,18),(206,125,21),(207,125,20),(208,125,19),(209,125,18),(210,126,19),(211,126,20),(212,126,18),(213,126,21),(214,127,18),(215,127,19),(216,127,20),(217,127,21),(218,128,18),(219,128,21),(220,128,19),(221,128,20),(222,129,14),(223,130,14),(224,131,14),(225,132,14),(226,133,14),(227,134,14),(228,135,14),(229,136,14),(230,137,14),(231,138,14),(232,139,14),(233,140,14),(234,141,14),(235,142,14),(236,143,14),(237,144,14),(238,145,14),(239,146,14),(240,147,14),(241,148,14),(242,149,14),(243,150,14),(244,151,14),(245,152,14),(246,153,14),(247,154,14),(248,155,14),(249,156,14),(250,157,14),(251,158,14),(252,159,14),(253,160,14),(254,160,19),(255,160,20),(256,160,21),(257,160,18),(258,161,14),(259,161,18),(260,161,19),(261,161,20),(262,161,21),(263,162,14),(264,162,18),(265,162,19),(266,162,20),(267,162,21),(268,163,21),(269,163,20),(270,163,19),(271,163,18),(272,163,14),(273,164,20),(274,164,19),(275,164,21),(276,164,18),(277,164,14),(278,165,21),(279,165,20),(280,165,14),(281,165,18),(282,165,19),(283,166,21),(284,166,14),(285,166,18),(286,166,19),(287,166,20),(288,167,14),(289,167,19),(290,167,18),(291,167,21),(292,167,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,10,3),(8,10,2),(9,29,1);
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
INSERT INTO `IFData` VALUES (1,33,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,76,'application','vnd.android.package-archive'),(4,96,'application','vnd.android.package-archive'),(5,122,'application','vnd.android.package-archive'),(6,124,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'net.ponury.faceniff'),(2,5,'net.ponury.faceniff'),(3,6,'net.ponury.faceniff'),(4,8,'com.extend.battery'),(5,9,'com.extend.battery'),(6,11,'com.android.settings'),(7,12,'com.extend.battery'),(8,13,'com.android.settings'),(9,14,'com.extend.battery'),(10,17,'NULL-CONSTANT'),(11,18,'com.extend.battery'),(12,19,'com.extend.battery'),(13,20,'com.extend.battery'),(14,21,'com.extend.battery'),(15,23,'com.extend.battery'),(16,25,'com.extend.battery'),(17,26,'com.extend.battery'),(18,24,'com.extend.battery'),(19,28,'NULL-CONSTANT'),(20,29,'com.android.settings'),(21,27,'com.extend.battery'),(22,31,'com.extend.battery'),(23,30,'com.android.settings'),(24,34,'com.extend.battery'),(25,35,'com.extend.battery'),(26,36,'com.extend.battery'),(27,37,'com.extend.battery'),(28,38,'com.extend.battery'),(29,39,'com.extend.battery'),(30,40,'com.extend.battery'),(31,41,'com.extend.battery'),(32,42,'com.extend.battery'),(33,43,'com.extend.battery'),(34,44,'com.extend.battery'),(35,45,'com.extend.battery'),(36,46,'com.extend.battery'),(37,47,'com.saver.sc'),(38,49,'com.saver.sc'),(39,50,'com.extend.battery'),(40,52,'com.extend.battery'),(41,53,'NULL-CONSTANT'),(42,55,'com.extend.battery'),(43,56,'com.extend.battery'),(44,57,'com.extend.battery'),(45,59,'com.android.settings'),(46,61,'com.extend.battery'),(47,63,'com.extend.battery'),(48,62,'com.android.settings'),(49,65,'com.extend.battery'),(50,67,'com.extend.battery'),(51,71,'com.extend.battery'),(52,72,'com.saver.sc'),(53,73,'com.extend.battery'),(54,75,'com.saver.sc'),(55,74,'com.extend.battery'),(56,79,'com.extend.battery'),(57,80,'com.saver.sc'),(58,82,'com.saver.sc'),(59,81,'com.extend.battery'),(60,83,'com.extend.battery'),(61,84,'com.saver.sc'),(62,85,'com.saver.sc'),(63,86,'com.saver.sc'),(64,87,'com.android.settings'),(65,88,'com.android.settings'),(66,90,'com.saver.sc'),(67,91,'com.saver.sc'),(68,93,'com.saver.sc'),(69,95,'com.saver.sc'),(70,97,'NULL-CONSTANT'),(71,98,'com.extend.battery'),(72,99,'com.saver.sc'),(73,101,'com.extend.battery'),(74,102,'com.extend.battery'),(75,103,'com.extend.battery'),(76,104,'com.android.settings'),(77,105,'com.android.settings'),(78,107,'com.extend.battery'),(79,108,'com.extend.battery'),(80,110,'com.extend.battery'),(81,111,'com.extend.battery'),(82,112,'com.extend.battery'),(83,113,'com.extend.battery'),(84,114,'com.extend.battery'),(85,116,'com.extend.battery'),(86,117,'com.extend.battery'),(87,118,'com.extend.battery'),(88,119,'com.extend.battery'),(89,120,'com.extend.battery'),(90,121,'com.extend.battery'),(91,125,'NULL-CONSTANT'),(92,126,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,8,0),(7,28,0),(8,53,0),(9,57,0),(10,56,0),(11,53,0),(12,59,0),(13,57,0),(14,59,0),(15,63,0),(16,62,0),(17,66,0),(18,73,0),(19,74,0),(20,73,0),(21,75,0),(22,76,0),(23,77,0),(24,78,0),(25,77,0),(26,79,0),(27,80,0),(28,79,0),(29,81,0),(30,93,0),(31,94,0),(32,94,0),(33,94,0),(34,94,0),(35,95,0),(36,96,0),(37,97,0),(38,98,0),(39,63,0),(40,57,0),(41,99,0),(42,100,0),(43,101,0),(44,66,0),(45,102,0),(46,59,0),(47,103,0),(48,100,0),(49,101,0),(50,66,0),(51,102,0),(52,59,0),(53,103,0),(54,100,0),(55,101,0),(56,104,0),(57,96,0),(58,66,0),(59,97,0),(60,102,0),(61,105,0),(62,98,0),(63,59,0),(64,62,0),(65,63,0),(66,103,0),(67,57,0),(68,106,0),(69,99,0),(70,96,0),(71,53,0),(72,97,0),(73,98,0),(74,107,0),(75,63,0),(76,57,0),(77,99,0),(78,104,0),(79,105,0),(80,62,0),(81,106,0),(82,53,0),(83,96,0),(84,107,0),(85,97,0),(86,98,0),(87,100,0),(88,63,0),(89,101,0),(90,57,0),(91,66,0),(92,108,0),(93,99,0),(94,102,0),(95,109,0),(96,59,0),(97,93,0),(98,103,0),(99,110,0),(100,94,0),(101,95,0),(102,111,0),(103,104,0),(104,105,0),(105,62,0),(106,106,0),(107,53,0),(108,107,0),(109,104,0),(110,105,0),(111,62,0),(112,106,0),(113,53,0),(114,107,0),(115,108,0),(116,109,0),(117,93,0),(118,110,0),(119,94,0),(120,95,0),(121,111,0),(122,108,0),(123,109,0),(124,93,0),(125,110,0),(126,94,0),(127,95,0),(128,111,0),(129,108,0),(130,109,0),(131,93,0),(132,110,0),(133,94,0),(134,95,0),(135,111,0),(136,112,0),(137,73,0),(138,113,0),(139,114,0),(140,79,0),(141,76,0),(142,115,0),(143,78,0),(144,112,0),(145,73,0),(146,113,0),(147,114,0),(148,79,0),(149,76,0),(150,115,0),(151,78,0),(152,112,0),(153,73,0),(154,113,0),(155,114,0),(156,79,0),(157,76,0),(158,115,0),(159,78,0),(160,112,0),(161,73,0),(162,113,0),(163,114,0),(164,79,0),(165,76,0),(166,115,0),(167,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,11,0,0),(13,10,0,0),(14,12,0,0),(15,10,1,0),(16,13,1,0),(17,14,0,0),(18,15,0,0),(19,16,0,0),(20,17,0,0),(21,18,0,0),(22,19,1,0),(23,20,0,0),(24,21,0,0),(25,22,0,0),(26,24,0,0),(27,25,0,0),(28,26,0,0),(29,27,0,0),(30,27,0,0),(31,28,0,0),(32,27,1,0),(33,29,1,0),(34,30,0,0),(35,31,0,0),(36,32,0,0),(37,34,0,0),(38,35,0,0),(39,36,0,0),(40,38,0,0),(41,39,0,0),(42,40,0,0),(43,41,0,0),(44,42,0,0),(45,44,0,0),(46,45,0,0),(47,46,0,0),(48,47,1,0),(49,48,0,0),(50,49,0,0),(51,50,1,0),(52,51,0,0),(53,53,0,0),(54,55,1,0),(55,56,0,0),(56,57,0,0),(57,58,0,0),(58,59,1,0),(59,61,0,0),(60,62,1,0),(61,63,0,0),(62,61,0,0),(63,64,0,0),(64,62,1,0),(65,65,0,0),(66,61,1,0),(67,66,0,0),(68,62,1,0),(69,67,1,0),(70,62,1,0),(71,68,0,0),(72,69,0,0),(73,70,0,0),(74,71,0,0),(75,72,0,0),(76,73,1,0),(77,74,1,0),(78,75,1,0),(79,76,0,0),(80,77,0,0),(81,78,0,0),(82,79,0,0),(83,81,0,0),(84,82,0,0),(85,83,0,0),(86,84,0,0),(87,85,0,0),(88,85,0,0),(89,85,1,0),(90,86,0,0),(91,87,0,0),(92,88,1,0),(93,89,0,0),(94,90,1,0),(95,91,0,0),(96,92,1,0),(97,94,0,0),(98,95,0,0),(99,96,0,0),(100,97,1,0),(101,98,0,0),(102,99,0,0),(103,100,0,0),(104,101,0,0),(105,101,0,0),(106,101,1,0),(107,102,0,0),(108,103,0,0),(109,104,1,0),(110,106,0,0),(111,107,0,0),(112,108,0,0),(113,109,0,0),(114,110,0,0),(115,111,1,0),(116,112,0,0),(117,113,0,0),(118,114,0,0),(119,116,0,0),(120,116,0,0),(121,118,0,0),(122,119,1,0),(123,122,1,0),(124,123,1,0),(125,124,0,0),(126,125,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BLUETOOTH'),(21,'android.permission.BLUETOOTH_ADMIN'),(6,'android.permission.BROADCAST_STICKY'),(19,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.CLEAR_APP_CACHE'),(14,'android.permission.DISABLE_KEYGUARD'),(28,'android.permission.GET_ACCOUNTS'),(25,'android.permission.GET_PACKAGE_SIZE'),(8,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(24,'android.permission.KILL_BACKGROUND_PROCESSES'),(27,'android.permission.READ_CONTACTS'),(26,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RECEIVE_SMS'),(13,'android.permission.RESTART_PACKAGES'),(9,'android.permission.SEND_SMS'),(4,'android.permission.VIBRATE'),(7,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SETTINGS'),(10,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://NULL-CONSTANT:8080/NULL-CONSTANT@NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://faceniff.ponury.net/buy.php?ID=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'http://faceniff.ponury.net/buy.php?ID=',NULL,NULL,NULL),(4,NULL,NULL,'http://faceniff.ponury.net/',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://sms',NULL,NULL,NULL),(12,NULL,NULL,'content://mms',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://mms',NULL,NULL,NULL),(20,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://sms',NULL,NULL,NULL),(24,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://mms',NULL,NULL,NULL),(29,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(30,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://mms',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://sms',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,23,8),(2,33,11),(3,37,12),(4,43,13),(5,52,15),(6,54,16),(7,60,19),(8,80,23),(9,93,28),(10,117,32),(11,120,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,3,1),(11,2,3),(12,3,2),(13,2,4),(14,3,3),(15,2,5),(16,3,4),(17,4,1),(18,2,7),(19,5,1),(20,3,5),(21,4,2),(22,2,8),(23,5,2),(24,4,3),(25,3,7),(26,5,3),(27,2,9),(28,3,8),(29,4,4),(30,2,10),(31,5,4),(32,3,9),(33,4,5),(34,2,11),(35,5,5),(36,3,10),(37,4,7),(38,2,12),(39,5,7),(40,3,11),(41,4,8),(42,5,8),(43,2,13),(44,3,12),(45,4,9),(46,2,14),(47,5,9),(48,3,13),(49,4,10),(50,5,10),(51,2,15),(52,4,11),(53,2,17),(54,5,11),(55,3,14),(56,4,13),(57,5,13),(58,2,16),(59,3,15),(60,4,14),(61,5,14),(62,3,17),(63,2,19),(64,6,1),(65,4,15),(66,3,16),(67,5,15),(68,2,18),(69,4,17),(70,6,2),(71,3,19),(72,5,17),(73,4,16),(74,2,21),(75,6,3),(76,3,18),(77,5,16),(78,2,20),(79,4,19),(80,6,4),(81,3,21),(82,5,19),(83,2,22),(84,6,5),(85,4,18),(86,5,18),(87,3,20),(88,4,21),(89,6,7),(90,5,21),(91,3,22),(92,6,8),(93,4,23),(94,5,22),(95,4,22),(96,6,9),(97,6,10),(98,4,25),(99,4,24),(100,6,11),(101,6,12),(102,6,13),(103,6,14),(104,6,15),(105,6,17),(106,6,16),(107,6,19),(108,6,18),(109,6,21),(110,6,20),(111,6,22),(112,7,1),(113,7,2),(114,7,3),(115,7,4),(116,7,5),(117,7,7),(118,7,8),(119,7,9),(120,7,10),(121,7,11),(122,7,12),(123,7,13),(124,7,14),(125,7,15),(126,7,17),(127,7,16),(128,7,19),(129,7,18),(130,7,21),(131,7,22),(132,7,27),(133,7,26),(134,7,28);
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

-- Dump completed on 2015-10-09  0:38:33
