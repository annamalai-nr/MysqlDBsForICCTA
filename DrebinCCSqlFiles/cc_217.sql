-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_217
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
INSERT INTO `ActionStrings` VALUES (21,'(.*).SEND_SMS'),(15,'android.intent.action.BATTERY_CHANGED'),(18,'android.intent.action.BATTERY_LOW'),(14,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(27,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(28,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(13,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(22,'android.settings.APPLICATION_DETAILS_SETTINGS'),(20,'android.settings.LOCATION_SOURCE_SETTINGS'),(12,'com.android.mms.transaction.MESSAGE_SENT'),(10,'com.android.vending.INSTALL_REFERRER'),(5,'com.extend.battery.intent.http.SHOW'),(3,'com.itframework.installer.updater.CHECK'),(4,'com.itframework.installer.updater.UPDATE'),(11,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(23,'com.notifad.android.PushServiceStart(.*)'),(9,'com.notifad.android.PushServiceStart1'),(26,'com.notifad.android.PushServiceStartInvalid'),(24,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(25,'com.notifad.android.PushServiceStartinvalid Id'),(8,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extender.sc',56),(3,'com.extend.battery',89),(4,'com.androidupgrade.battery',22);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BatteryActivity'),(10,1,'com.extend.battery.RatingActivity'),(11,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(12,1,'com.itframework.installer.util.NonMarketDialogActivity'),(13,2,'com.androidupgrade.battery.Splash'),(14,1,'com.extend.battery.BatteryService'),(15,3,'com.extend.battery.Splash'),(16,1,'com.itframework.installer.util.InstallWorker'),(17,1,'com.zanalytics.sms.SmsReceiverService'),(18,1,'com.itframework.installer.updater.UpdateReceiver'),(19,2,'com.androidupgrade.battery.TabHandler'),(20,3,'com.extend.battery.TabHandler'),(21,2,'com.androidupgrade.battery.TaskKillerActivity'),(22,2,'com.androidupgrade.battery.UninstallerActivity'),(23,3,'com.extend.battery.TaskKillerActivity'),(24,1,'com.extend.battery.NotificationReceiver'),(25,2,'com.androidupgrade.battery.SecurityAuditActivity'),(26,3,'com.extend.battery.UninstallerActivity'),(27,3,'com.extend.battery.SecurityAuditActivity'),(28,2,'com.androidupgrade.battery.InstallerActivity'),(29,1,'com.extend.battery.BootReceiver'),(30,3,'com.extend.battery.InstallerActivity'),(31,2,'com.androidupgrade.battery.FeaturesActivity'),(32,1,'com.zanalytics.sms.SmsReceiver'),(33,2,'com.androidupgrade.battery.BoosterActivity'),(34,3,'com.extend.battery.FeaturesActivity'),(35,2,'com.androidupgrade.battery.BatteryActivity'),(36,3,'com.extend.battery.BoosterActivity'),(37,2,'com.androidupgrade.battery.RatingActivity'),(38,3,'com.extend.battery.BatteryActivity'),(39,2,'com.notifad.android.PushAds'),(40,3,'com.extend.battery.RatingActivity'),(41,3,'com.extend.battery.BatteryService'),(42,2,'com.androidupgrade.battery.BatteryService'),(43,3,'com.zanalytics.sms.SmsReceiverService'),(44,2,'com.notifad.android.PushService'),(45,3,'com.extend.battery.NotificationReceiver'),(46,2,'com.mobsqueeze.sms.SmsReceiverService'),(47,3,'com.extend.battery.BootReceiver'),(48,2,'com.notifad.android.UserDetailsReceiver'),(49,2,'com.notifad.android.MessageReceiver'),(50,3,'com.zanalytics.sms.SmsReceiver'),(51,2,'com.notifad.android.DeliveryReceiver'),(52,2,'com.androidupgrade.battery.BootReceiver'),(53,3,'com.tapjoy.TapjoyReferralTracker'),(54,2,'com.mobsqueeze.ReferralReceiver'),(55,2,'com.mobsqueeze.sms.SmsReceiver'),(56,2,'com.tapjoy.TapjoyReferralTracker'),(57,4,'com.androidupgrade.battery.Splash'),(58,4,'com.androidupgrade.battery.TabHandler'),(59,4,'com.androidupgrade.battery.TaskKillerActivity'),(60,4,'com.androidupgrade.battery.UninstallerActivity'),(61,4,'com.androidupgrade.battery.SecurityAuditActivity'),(62,4,'com.androidupgrade.battery.InstallerActivity'),(63,4,'com.androidupgrade.battery.FeaturesActivity'),(64,4,'com.androidupgrade.battery.BoosterActivity'),(65,4,'com.androidupgrade.battery.BatteryActivity'),(66,4,'com.androidupgrade.battery.RatingActivity'),(67,4,'com.notifad.android.PushAds'),(68,4,'com.mobsqueeze.SqueezeActivity'),(69,4,'com.mobsqueeze.SqueezeDialog'),(70,4,'com.mobsqueeze.OfferWall'),(71,4,'com.androidupgrade.battery.BatteryService'),(72,4,'com.notifad.android.PushService'),(73,4,'com.mobsqueeze.SubmitService'),(74,4,'com.mobsqueeze.SmsService'),(75,4,'com.mobsqueeze.sms.SmsReceiverService'),(76,4,'com.notifad.android.UserDetailsReceiver'),(77,4,'com.notifad.android.MessageReceiver'),(78,4,'com.notifad.android.DeliveryReceiver'),(79,4,'com.androidupgrade.battery.BootReceiver'),(80,4,'com.mobsqueeze.sms.SmsReceiver'),(81,4,'com.tapjoy.TapjoyReferralTracker'),(82,2,'com.androidupgrade.battery.g'),(83,2,'com.androidupgrade.battery.i'),(84,2,'com.androidupgrade.battery.j'),(85,2,'com.mobsqueeze.sms.c'),(86,2,'com.androidupgrade.battery.s'),(87,2,'com.mobsqueeze.sms.h'),(88,2,'com.mobsqueeze.sms.a'),(89,2,'com.androidupgrade.battery.f'),(90,2,'com.androidupgrade.battery.av'),(91,2,'com.androidupgrade.battery.ax'),(92,1,'com.zanalytics.sms.a'),(93,1,'com.extend.battery.features.s'),(94,1,'com.extend.battery.ba'),(95,1,'com.zanalytics.sms.j'),(96,1,'com.extend.battery.d'),(97,1,'com.extend.battery.c'),(98,1,'com.extend.battery.a'),(99,1,'com.zanalytics.sms.c'),(100,1,'com.extend.battery.bb'),(101,1,'com.extend.battery.k'),(102,1,'com.itframework.installer.a.b'),(103,4,'com.androidupgrade.battery.BatteryService$1'),(104,4,'com.androidupgrade.battery.BatteryActivity$1'),(105,4,'com.androidupgrade.battery.BoosterActivity$1'),(106,4,'com.androidupgrade.battery.Splash$1'),(107,4,'com.mobsqueeze.sms.SmsUtils'),(108,4,'com.androidupgrade.battery.BoosterActivity$2'),(109,4,'com.androidupgrade.battery.TaskKillerActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,57,'pdus'),(2,37,'technology'),(3,13,'downloadStarting'),(4,17,'forceDownload'),(5,17,'downloadingTitle'),(6,17,'downloadStarting'),(7,20,'URL'),(8,13,'downloadingWait'),(9,26,'clickevent'),(10,17,'downloadingWait'),(11,17,'downloadingToast'),(12,17,'finishedTicker'),(13,34,'pdus'),(14,11,'technology'),(15,13,'downloadingToast'),(16,13,'downloadingTicker'),(17,13,'downloadingTitle'),(18,17,'downloadingTicker'),(19,17,'finishedText'),(20,17,'url'),(21,17,'showNotifications'),(22,17,'callbackIntent'),(23,17,'filename'),(24,17,'downloadingProgress'),(25,13,'finishedText'),(26,17,'finishedTitle'),(27,69,'appId'),(28,13,'finishedTicker'),(29,13,'url'),(30,13,'finishedTitle'),(31,69,'url'),(32,74,'text'),(33,74,'apikey'),(34,13,'callbackIntent'),(35,13,'downloadingProgress'),(36,13,'forceDownload'),(37,13,'filename'),(38,76,'shortCode'),(39,80,'campId'),(40,74,'header'),(41,74,'number'),(42,69,'number'),(43,74,'imageurl'),(44,74,'creativeId'),(45,80,'text'),(46,69,'apikey'),(47,69,'header'),(48,74,'appId'),(49,80,'title'),(50,80,'header'),(51,76,'followUp'),(52,69,'creativeId'),(53,80,'creativeId'),(54,74,'url'),(55,71,'com/mobsqueeze/Squeeze.DARK_SPINNER'),(56,70,'com/mobsqueeze/Squeeze.DARK_SPINNER'),(57,74,'title'),(58,74,'sms'),(59,71,'com/mobsqueeze/Squeeze.URL'),(60,70,'com/mobsqueeze/Squeeze.URL'),(61,71,'com/mobsqueeze/Squeeze.AD'),(62,70,'com/mobsqueeze/Squeeze.AD'),(63,67,'technology'),(64,74,'link'),(65,69,'campId'),(66,69,'sms'),(67,76,'message'),(68,80,'number'),(69,74,'campId'),(70,74,'type'),(71,80,'url'),(72,82,'pdus'),(73,76,'response'),(74,74,'testMode'),(75,80,'imageurl'),(76,74,'adType'),(77,76,'email'),(78,80,'appId'),(79,71,'com/mobsqueeze/Squeeze.FLAG'),(80,70,'com/mobsqueeze/Squeeze.FLAG'),(81,69,'test'),(82,80,'sms'),(83,80,'apikey'),(84,69,'adType'),(85,76,'stopLog');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,1,'a',1,NULL,NULL),(3,1,'a',1,NULL,NULL),(4,2,'a',0,NULL,NULL),(5,3,'a',0,NULL,NULL),(6,4,'a',0,NULL,NULL),(7,5,'a',0,NULL,NULL),(8,6,'a',0,NULL,NULL),(9,7,'a',0,NULL,NULL),(10,8,'a',0,NULL,NULL),(11,9,'a',0,NULL,NULL),(12,10,'a',0,NULL,NULL),(13,11,'a',1,NULL,NULL),(14,12,'a',0,NULL,NULL),(15,13,'a',1,NULL,NULL),(16,14,'s',0,NULL,NULL),(17,16,'s',0,NULL,NULL),(18,15,'a',1,NULL,NULL),(19,17,'s',0,NULL,NULL),(20,18,'r',1,NULL,NULL),(21,19,'a',0,NULL,NULL),(22,20,'a',0,NULL,NULL),(23,21,'a',0,NULL,NULL),(24,22,'a',0,NULL,NULL),(25,23,'a',0,NULL,NULL),(26,24,'r',1,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,25,'a',0,NULL,NULL),(29,27,'a',0,NULL,NULL),(30,28,'a',0,NULL,NULL),(31,29,'r',1,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,30,'a',0,NULL,NULL),(34,32,'r',1,NULL,NULL),(35,33,'a',0,NULL,NULL),(36,34,'a',0,NULL,NULL),(37,35,'a',0,NULL,NULL),(38,36,'a',0,NULL,NULL),(39,37,'a',0,NULL,NULL),(40,38,'a',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,39,'a',0,NULL,NULL),(43,41,'s',0,NULL,NULL),(44,42,'s',0,NULL,NULL),(45,43,'s',0,NULL,NULL),(46,44,'s',1,NULL,NULL),(47,45,'r',1,NULL,NULL),(48,46,'s',0,NULL,NULL),(49,47,'r',1,NULL,NULL),(50,48,'r',0,NULL,NULL),(51,49,'r',0,NULL,NULL),(52,50,'r',1,NULL,NULL),(53,51,'r',0,NULL,NULL),(54,52,'r',1,NULL,NULL),(55,53,'r',1,NULL,NULL),(56,54,'r',1,NULL,NULL),(57,55,'r',1,NULL,NULL),(58,56,'r',1,NULL,NULL),(59,57,'a',1,NULL,NULL),(60,58,'a',0,NULL,NULL),(61,59,'a',0,NULL,NULL),(62,60,'a',0,NULL,NULL),(63,61,'a',0,NULL,NULL),(64,62,'a',0,NULL,NULL),(65,63,'a',0,NULL,NULL),(66,64,'a',0,NULL,NULL),(67,65,'a',0,NULL,NULL),(68,66,'a',0,NULL,NULL),(69,67,'a',0,NULL,NULL),(70,68,'a',0,NULL,NULL),(71,69,'a',0,NULL,NULL),(72,70,'a',0,NULL,NULL),(73,71,'s',0,NULL,NULL),(74,72,'s',1,NULL,NULL),(75,73,'s',0,NULL,NULL),(76,74,'s',0,NULL,NULL),(77,75,'s',0,NULL,NULL),(78,76,'r',0,NULL,NULL),(79,77,'r',0,NULL,NULL),(80,78,'r',0,NULL,NULL),(81,79,'r',1,NULL,NULL),(82,80,'r',1,NULL,NULL),(83,81,'r',1,NULL,NULL),(84,82,'r',1,NULL,NULL),(85,83,'r',1,NULL,NULL),(86,84,'r',1,NULL,NULL),(87,85,'r',1,NULL,NULL),(88,96,'r',1,NULL,NULL),(89,97,'r',1,NULL,NULL),(90,98,'r',1,NULL,NULL),(91,99,'r',1,NULL,NULL),(92,78,'r',1,NULL,NULL),(93,76,'r',1,NULL,NULL),(94,103,'r',1,NULL,NULL),(95,104,'r',1,NULL,NULL),(96,77,'r',1,NULL,NULL),(97,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,54),(2,2,21),(3,3,37),(4,4,30),(5,5,35),(6,5,37),(7,6,37),(8,6,24),(9,7,28),(10,7,37),(11,8,28),(12,8,30),(13,8,24),(14,8,35),(15,8,37),(16,9,24),(17,10,57),(18,11,37),(19,11,24),(20,11,28),(21,11,30),(22,12,57),(23,13,24),(24,13,37),(25,13,28),(26,13,30),(27,14,28),(28,15,15),(29,16,15),(30,17,15),(31,18,37),(32,18,35),(33,19,23),(34,19,37),(35,20,30),(36,20,37),(37,21,37),(38,21,24),(39,22,15),(40,23,57),(41,24,11),(42,24,7),(43,24,8),(44,24,6),(45,25,8),(46,25,11),(47,25,7),(48,25,6),(49,26,11),(50,26,6),(51,27,17),(52,28,8),(53,29,7),(54,29,11),(55,30,11),(56,31,11),(57,31,10),(58,32,1),(59,33,7),(60,33,6),(61,33,11),(62,33,8),(63,34,34),(64,35,17),(65,36,34),(66,37,1),(67,38,8),(68,39,7),(69,39,6),(70,39,8),(71,39,11),(72,40,13),(73,41,4),(74,42,6),(75,43,7),(76,44,6),(77,45,5),(78,45,11),(79,46,11),(80,46,10),(81,46,8),(82,46,7),(83,46,6),(84,47,34),(85,48,34),(86,49,26),(87,50,11),(88,50,7),(89,51,11),(90,51,8),(91,52,7),(92,53,69),(93,54,1),(94,55,31),(95,56,11),(96,56,10),(97,57,13),(98,58,62),(99,58,67),(100,59,6),(101,59,11),(102,60,17),(103,61,13),(104,62,69),(105,63,6),(106,63,11),(107,64,34),(108,65,10),(109,66,1),(110,67,63),(111,68,1),(112,69,4),(113,70,26),(114,71,1),(115,72,66),(116,72,67),(117,73,1),(118,74,11),(119,75,11),(120,75,10),(121,76,11),(122,76,8),(123,77,34),(124,78,17),(125,79,17),(126,80,17),(127,81,67),(128,82,5),(129,82,11),(130,83,13),(131,84,63),(132,84,67),(133,85,1),(134,86,59),(135,87,10),(136,88,10),(137,88,11),(138,89,31),(139,90,11),(140,90,6),(141,91,10),(142,91,11),(143,91,7),(144,91,6),(145,91,8),(146,92,82),(147,93,82),(148,94,78),(149,95,79),(150,96,59),(151,97,69),(152,98,62),(153,99,82),(154,100,82),(155,101,69),(156,102,67),(157,102,62),(158,103,59),(159,104,67),(160,105,67),(161,105,66),(162,106,66),(163,106,67),(164,107,59),(165,108,80),(166,109,64),(167,109,67),(168,110,67),(169,110,61),(170,111,76),(171,112,64),(172,113,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,52,'<com.androidupgrade.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,19,'<com.androidupgrade.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(3,35,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(4,28,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(5,33,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(6,22,'<com.androidupgrade.battery.UninstallerActivity: void a(com.androidupgrade.battery.a.a)>',10,'a',NULL),(7,25,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(8,86,'<com.androidupgrade.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(9,22,'<com.androidupgrade.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(10,87,'<com.mobsqueeze.sms.h: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(11,88,'<com.mobsqueeze.sms.a: void m()>',3,'s',NULL),(12,55,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'s',NULL),(13,89,'<com.androidupgrade.battery.f: void onClick(android.view.View)>',8,'a',NULL),(14,25,'<com.androidupgrade.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(15,13,'<com.androidupgrade.battery.Splash: void b()>',9,'a',NULL),(16,90,'<com.androidupgrade.battery.av: void run()>',187,'a',NULL),(17,90,'<com.androidupgrade.battery.av: void run()>',126,'a',NULL),(18,33,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(19,91,'<com.androidupgrade.battery.ax: void onClick(android.view.View)>',6,'a',NULL),(20,28,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(21,22,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(22,90,'<com.androidupgrade.battery.av: void run()>',62,'a',NULL),(23,87,'<com.mobsqueeze.sms.h: int a(android.content.Context)>',5,'p',NULL),(24,92,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(25,93,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(26,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(27,16,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(28,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(29,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(30,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(31,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(32,94,'<com.extend.battery.ba: void run()>',58,'a',NULL),(33,93,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(34,95,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(35,16,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(36,95,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(37,94,'<com.extend.battery.ba: void run()>',212,'a',NULL),(38,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(39,92,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(40,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(41,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(42,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(43,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(44,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(45,100,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(46,101,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(47,32,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(48,95,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(49,24,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(50,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(51,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(52,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(53,67,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(54,94,'<com.extend.battery.ba: void run()>',58,'a',NULL),(55,29,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(56,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(57,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(58,60,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(59,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(60,102,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(61,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(62,67,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(63,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(64,95,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(65,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(66,94,'<com.extend.battery.ba: void run()>',212,'a',NULL),(67,61,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(68,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(69,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(70,24,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(71,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(72,64,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',13,'a',NULL),(73,94,'<com.extend.battery.ba: void run()>',118,'a',NULL),(74,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(75,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(76,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(77,32,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(78,102,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(79,16,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(80,16,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(81,65,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(82,100,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(83,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(84,61,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(85,94,'<com.extend.battery.ba: void run()>',118,'a',NULL),(86,106,'<com.androidupgrade.battery.Splash$1: void run()>',163,'a',NULL),(87,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(88,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(89,29,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(90,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(91,101,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(92,107,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(93,107,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(94,76,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(95,77,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(96,106,'<com.androidupgrade.battery.Splash$1: void run()>',112,'a',NULL),(97,67,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(98,60,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(99,80,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(100,107,'<com.mobsqueeze.sms.SmsUtils: com.mobsqueeze.sms.SmsUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',15,'p',NULL),(101,67,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(102,60,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(103,57,'<com.androidupgrade.battery.Splash: void onActivityResult(int,int,android.content.Intent)>',10,'a',NULL),(104,65,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(105,108,'<com.androidupgrade.battery.BoosterActivity$2: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(106,64,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',9,'a',NULL),(107,106,'<com.androidupgrade.battery.Splash$1: void run()>',61,'a',NULL),(108,78,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(109,62,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(110,109,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(111,75,'<com.mobsqueeze.sms.SmsReceiverService: void sendSMS(android.content.Context,java.lang.String,java.lang.String,boolean)>',14,'p',NULL),(112,62,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(113,67,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,4,2),(2,6,19),(3,8,20),(4,9,1),(5,10,21),(6,12,2),(7,15,22),(8,24,21),(9,25,2),(10,26,19),(11,27,2),(12,32,2),(13,34,2),(14,35,21),(15,38,1),(16,42,22),(17,43,1),(18,45,20),(19,52,23),(20,53,22),(21,55,24),(22,61,23),(23,62,19),(24,63,24),(25,64,2),(26,70,22),(27,78,2),(28,79,2),(29,87,2),(30,91,20),(31,92,25),(32,93,23),(33,94,26),(34,95,26),(35,96,25),(36,97,23),(37,99,27),(38,100,1),(39,102,23),(40,103,24),(41,104,19),(42,107,20),(43,110,23),(44,111,23),(45,112,23),(46,113,23),(47,114,23),(48,117,2),(49,118,28);
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
INSERT INTO `ICategories` VALUES (1,9,1),(2,38,1),(3,43,1),(4,100,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/androidupgrade/battery/BatteryService'),(2,2,'com/androidupgrade/battery/BatteryService'),(3,3,'com/androidupgrade/battery/FeaturesActivity'),(4,5,'com/androidupgrade/battery/RatingActivity'),(5,7,'com/androidupgrade/battery/FeaturesActivity'),(6,9,'NULL-CONSTANT'),(7,10,'com/mobsqueeze/sms/SmsReceiverService'),(8,11,'com/mobsqueeze/sms/SmsReceiverService'),(9,13,'com.android.settings.InstalledAppDetails'),(10,14,'com.android.settings.InstalledAppDetails'),(11,16,'com/androidupgrade/battery/TabHandler'),(12,17,'com/androidupgrade/battery/TabHandler'),(13,18,'com/androidupgrade/battery/TabHandler'),(14,19,'com/androidupgrade/battery/FeaturesActivity'),(15,20,'com/androidupgrade/battery/FeaturesActivity'),(16,21,'com/androidupgrade/battery/FeaturesActivity'),(17,22,'com/androidupgrade/battery/FeaturesActivity'),(18,23,'com/androidupgrade/battery/TabHandler'),(19,24,'com/zanalytics/sms/SmsReceiverService'),(20,28,'com/extend/battery/FeaturesActivity'),(21,29,'com/extend/battery/FeaturesActivity'),(22,30,'com/extend/battery/RatingActivity'),(23,31,'com/extend/battery/TabHandler'),(24,33,'com/extend/battery/TabHandler'),(25,35,'com/zanalytics/sms/SmsReceiverService'),(26,37,'com/extend/battery/BatteryService'),(27,36,'com/itframework/installer/util/InstallWorker'),(28,38,'NULL-CONSTANT'),(29,40,'com.android.settings.InstalledAppDetails'),(30,41,'com.android.settings.InstalledAppDetails'),(31,39,'com/itframework/installer/util/InstallWorker'),(32,43,'NULL-CONSTANT'),(33,44,'com/extend/battery/FeaturesActivity'),(34,46,'com/zanalytics/sms/SmsReceiverService'),(35,47,'com/extend/battery/FeaturesActivity'),(36,48,'com/extend/battery/FeaturesActivity'),(37,49,'com.android.settings.InstalledAppDetails'),(38,50,'com.android.settings.InstalledAppDetails'),(39,51,'com/extend/battery/TabHandler'),(40,54,'com/extend/battery/BatteryService'),(41,56,'com/extend/battery/RatingActivity'),(42,57,'com/itframework/installer/util/NonMarketDialogActivity'),(43,58,'com/androidupgrade/battery/FeaturesActivity'),(44,59,'com/extend/battery/FeaturesActivity'),(45,60,'com/itframework/installer/util/NonMarketDialogActivity'),(46,65,'com/extend/battery/TabHandler'),(47,66,'com.android.settings.InstalledAppDetails'),(48,67,'com/extend/battery/TabHandler'),(49,68,'com.android.settings.InstalledAppDetails'),(50,69,'com/extend/battery/BatteryService'),(51,71,'com/extend/battery/TabHandler'),(52,72,'com/androidupgrade/battery/RatingActivity'),(53,73,'com/extend/battery/TabHandler'),(54,74,'com/extend/battery/FeaturesActivity'),(55,75,'com/extend/battery/FeaturesActivity'),(56,76,'com/extend/battery/FeaturesActivity'),(57,77,'com/zanalytics/sms/SmsReceiverService'),(58,80,'com/androidupgrade/battery/BatteryService'),(59,81,'com/extend/battery/FeaturesActivity'),(60,82,'com/itframework/installer/util/InstallWorker'),(61,84,'com/androidupgrade/battery/FeaturesActivity'),(62,83,'com/itframework/installer/util/InstallWorker'),(63,85,'com/extend/battery/TabHandler'),(64,86,'com/androidupgrade/battery/TabHandler'),(65,88,'com/extend/battery/FeaturesActivity'),(66,89,'com/extend/battery/BatteryService'),(67,90,'com/extend/battery/FeaturesActivity'),(68,98,'com/androidupgrade/battery/TabHandler'),(69,100,'NULL-CONSTANT'),(70,101,'com/mobsqueeze/sms/SmsReceiverService'),(71,105,'com/androidupgrade/battery/TabHandler'),(72,106,'com/androidupgrade/battery/FeaturesActivity'),(73,108,'com/androidupgrade/battery/FeaturesActivity'),(74,109,'com/androidupgrade/battery/TabHandler'),(75,115,'com/androidupgrade/battery/FeaturesActivity'),(76,116,'com/androidupgrade/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,6,2),(3,12,4),(4,15,5),(5,25,7),(6,26,8),(7,27,9),(8,32,10),(9,34,13),(10,42,14),(11,53,16),(12,62,17),(13,64,19),(14,70,20),(15,78,21),(16,79,22),(17,87,23),(18,99,26),(19,104,28),(20,117,30),(21,118,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'TryCount'),(2,10,'NextMessage'),(3,10,'TryAgain'),(4,10,'StoreMessage'),(5,10,'Message'),(6,10,'Delay'),(7,10,'PhoneNumber'),(8,10,'TagEvent'),(9,11,'result'),(10,11,'abort'),(11,13,'com.android.settings.ApplicationPkgName'),(12,14,'pkg'),(13,16,'cacheUrl'),(14,24,'TryCount'),(15,24,'NextMessage'),(16,24,'TryAgain'),(17,24,'StoreMessage'),(18,24,'Message'),(19,24,'Delay'),(20,24,'PhoneNumber'),(21,24,'TagEvent'),(22,35,'TryCount'),(23,35,'NextMessage'),(24,35,'TryAgain'),(25,35,'StoreMessage'),(26,35,'Message'),(27,35,'Delay'),(28,36,'downloadingProgress'),(29,35,'PhoneNumber'),(30,36,'downloadingWait'),(31,35,'TagEvent'),(32,36,'downloadingToast'),(33,36,'finishedText'),(34,36,'downloadingTicker'),(35,36,'downloadingTitle'),(36,36,'filename'),(37,36,'finishedTicker'),(38,36,'forceDownload'),(39,36,'finishedTitle'),(40,36,'url'),(41,36,'downloadStarting'),(42,39,'downloadingProgress'),(43,39,'downloadingWait'),(44,39,'downloadingToast'),(45,39,'callbackIntent'),(46,39,'finishedText'),(47,39,'downloadingTicker'),(48,40,'com.android.settings.ApplicationPkgName'),(49,39,'downloadingTitle'),(50,39,'filename'),(51,39,'finishedTicker'),(52,39,'forceDownload'),(53,41,'pkg'),(54,39,'finishedTitle'),(55,39,'url'),(56,39,'downloadStarting'),(57,46,'result'),(58,46,'abort'),(59,49,'com.android.settings.ApplicationPkgName'),(60,50,'pkg'),(61,52,'<INTENT>'),(62,52,'type'),(63,55,'<INTENT>'),(64,55,'type'),(65,61,'<INTENT>'),(66,61,'type'),(67,63,'<INTENT>'),(68,63,'type'),(69,66,'com.android.settings.ApplicationPkgName'),(70,67,'cacheUrl'),(71,68,'pkg'),(72,71,'cacheUrl'),(73,77,'result'),(74,77,'abort'),(75,82,'downloadingProgress'),(76,82,'downloadingWait'),(77,82,'downloadingToast'),(78,82,'finishedText'),(79,82,'downloadingTicker'),(80,82,'downloadingTitle'),(81,82,'filename'),(82,82,'finishedTicker'),(83,82,'forceDownload'),(84,82,'finishedTitle'),(85,82,'url'),(86,82,'downloadStarting'),(87,83,'downloadingProgress'),(88,83,'downloadingWait'),(89,83,'downloadingToast'),(90,83,'callbackIntent'),(91,83,'finishedText'),(92,83,'downloadingTicker'),(93,83,'downloadingTitle'),(94,83,'filename'),(95,83,'finishedTicker'),(96,83,'forceDownload'),(97,83,'finishedTitle'),(98,83,'url'),(99,83,'downloadStarting'),(100,92,'appId'),(101,92,'type'),(102,92,'apikey'),(103,93,'appId'),(104,93,'type'),(105,93,'apikey'),(106,94,'appId'),(107,94,'type'),(108,94,'apikey'),(109,95,'icon'),(110,95,'appId'),(111,95,'testMode'),(112,95,'type'),(113,95,'apikey'),(114,96,'icon'),(115,96,'appId'),(116,96,'testMode'),(117,96,'type'),(118,96,'apikey'),(119,97,'icon'),(120,97,'appId'),(121,97,'testMode'),(122,97,'type'),(123,97,'apikey'),(124,101,'result'),(125,102,'<INTENT>'),(126,102,'type'),(127,103,'<INTENT>'),(128,103,'type'),(129,110,'campId'),(130,110,'title'),(131,110,'text'),(132,110,'appId'),(133,110,'creativeId'),(134,110,'expiry_time'),(135,110,'link'),(136,110,'adType'),(137,110,'type'),(138,110,'imageurl'),(139,110,'header'),(140,110,'apikey'),(141,111,'campId'),(142,111,'title'),(143,111,'text'),(144,111,'appId'),(145,111,'creativeId'),(146,111,'expiry_time'),(147,111,'link'),(148,111,'adType'),(149,111,'type'),(150,111,'imageurl'),(151,111,'apikey'),(152,112,'title'),(153,112,'text'),(154,112,'appId'),(155,112,'expiry_time'),(156,112,'number'),(157,112,'adType'),(158,112,'type'),(159,112,'imageurl'),(160,112,'apikey'),(161,113,'title'),(162,113,'text'),(163,113,'appId'),(164,113,'expiry_time'),(165,113,'type'),(166,113,'imageurl'),(167,113,'apikey'),(168,114,'campId'),(169,114,'title'),(170,114,'text'),(171,114,'appId'),(172,114,'creativeId'),(173,114,'expiry_time'),(174,114,'number'),(175,114,'adType'),(176,114,'sms'),(177,114,'type'),(178,114,'imageurl'),(179,114,'apikey'),(180,118,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,3),(8,8,4),(9,9,4),(10,10,3),(11,11,5),(12,12,5),(13,13,6),(14,14,6),(15,15,7),(16,16,7),(17,17,8),(18,18,8),(19,19,9),(20,20,5),(21,21,6),(22,22,8),(23,23,7),(24,24,6),(25,25,10),(26,26,10),(27,27,11),(28,28,12),(29,29,13),(30,30,7),(31,31,10),(32,32,1),(33,33,9),(34,34,6),(35,35,7),(36,36,12),(37,37,13),(38,38,11),(39,39,10),(40,40,18),(41,40,17),(42,40,16),(43,40,15),(44,40,14),(45,41,17),(46,41,16),(47,41,18),(48,41,15),(49,41,14),(50,42,18),(51,42,17),(52,42,16),(53,42,15),(54,42,14),(55,43,16),(56,43,17),(57,43,14),(58,43,15),(59,43,18),(60,44,14),(61,44,15),(62,44,16),(63,44,17),(64,44,18),(65,45,18),(66,45,16),(67,45,17),(68,45,14),(69,45,15),(70,46,17),(71,46,18),(72,46,14),(73,46,15),(74,46,16),(75,47,15),(76,48,15),(77,49,15),(78,50,15),(79,51,15),(80,52,15),(81,53,15),(82,54,15),(83,55,15),(84,56,15),(85,57,15),(86,58,15),(87,59,15),(88,60,15),(89,61,15),(90,62,15),(91,63,15),(92,64,15),(93,65,15),(94,66,15),(95,67,15),(96,68,15),(97,69,15),(98,70,15),(99,71,15),(100,72,15),(101,73,15),(102,74,15),(103,75,15),(104,76,14),(105,76,17),(106,76,18),(107,76,15),(108,76,16),(109,77,14),(110,77,15),(111,77,16),(112,77,17),(113,77,18),(114,78,17),(115,78,18),(116,78,15),(117,78,16),(118,78,14),(119,79,18),(120,79,14),(121,79,15),(122,79,16),(123,79,17),(124,80,18),(125,80,17),(126,80,14),(127,80,16),(128,80,15),(129,81,17),(130,81,16),(131,81,18),(132,81,14),(133,81,15),(134,82,18),(135,82,17),(136,82,14),(137,82,15),(138,82,16),(139,83,18),(140,83,16),(141,83,17),(142,83,14),(143,83,15),(144,84,15),(145,85,15),(146,86,15),(147,87,15),(148,88,15),(149,89,15),(150,90,15),(151,91,15),(152,92,15),(153,93,15),(154,94,15),(155,95,15),(156,96,15),(157,97,15),(158,98,15),(159,99,15),(160,100,15),(161,101,15),(162,102,15),(163,103,15),(164,104,15),(165,105,15),(166,106,15),(167,107,15),(168,108,15),(169,109,15),(170,110,14),(171,110,16),(172,110,18),(173,110,17),(174,111,15),(175,112,16),(176,112,18),(177,112,17),(178,112,14),(179,113,15),(180,114,16),(181,114,14),(182,114,17),(183,114,18),(184,115,15),(185,116,18),(186,116,17),(187,116,16),(188,116,14),(189,117,15),(190,118,17),(191,118,18),(192,118,14),(193,118,16),(194,119,15),(195,120,14),(196,120,16),(197,120,17),(198,120,18),(199,121,15),(200,122,18),(201,122,17),(202,122,14),(203,122,16),(204,123,15),(205,124,14),(206,124,16),(207,124,18),(208,124,17),(209,125,15),(210,126,17),(211,126,18),(212,126,16),(213,126,14),(214,127,15),(215,128,15),(216,129,15),(217,130,15),(218,131,15),(219,132,15),(220,133,15),(221,134,15),(222,135,15),(223,136,15),(224,137,15),(225,138,15),(226,139,15),(227,140,15),(228,141,15),(229,142,15),(230,143,15),(231,144,15),(232,145,15),(233,146,15),(234,147,15),(235,148,15),(236,149,18),(237,149,17),(238,149,16),(239,149,15),(240,149,14),(241,150,15),(242,151,18),(243,151,14),(244,151,15),(245,151,16),(246,151,17),(247,152,15),(248,153,16),(249,153,17),(250,153,18),(251,153,14),(252,153,15),(253,154,17),(254,154,18),(255,154,15),(256,154,16),(257,154,14),(258,155,15),(259,155,14),(260,155,17),(261,155,16),(262,155,18),(263,156,18),(264,156,17),(265,156,16),(266,156,15),(267,156,14),(268,157,15),(269,157,14),(270,157,17),(271,157,16),(272,157,18),(273,158,16),(274,158,15),(275,158,14),(276,158,18),(277,158,17),(278,159,15),(279,160,15),(280,161,15),(281,162,15),(282,163,15),(283,164,15),(284,165,15),(285,166,15),(286,167,15);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,4,4),(6,4,5),(7,5,1),(8,6,1),(9,24,6),(10,32,1),(11,34,6);
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
INSERT INTO `IFData` VALUES (1,29,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,27,'application','vnd.android.package-archive'),(3,34,'application','vnd.android.package-archive'),(4,78,'application','vnd.android.package-archive'),(5,79,'application','vnd.android.package-archive'),(6,117,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.extender.sc'),(2,2,'com.extender.sc'),(3,3,'com.extender.sc'),(4,5,'com.extender.sc'),(5,7,'com.extender.sc'),(6,9,'NULL-CONSTANT'),(7,10,'com.extender.sc'),(8,11,'com.extender.sc'),(9,13,'com.android.settings'),(10,14,'com.android.settings'),(11,16,'com.extender.sc'),(12,17,'com.extender.sc'),(13,18,'com.extender.sc'),(14,19,'com.extender.sc'),(15,20,'com.extender.sc'),(16,21,'com.extender.sc'),(17,22,'com.extender.sc'),(18,23,'com.extender.sc'),(19,24,'com.extend.battery'),(20,28,'com.extend.battery'),(21,29,'com.extend.battery'),(22,30,'com.extend.battery'),(23,31,'com.extend.battery'),(24,33,'com.extend.battery'),(25,35,'com.extend.battery'),(26,37,'com.extend.battery'),(27,36,'com.extend.battery'),(28,38,'NULL-CONSTANT'),(29,40,'com.android.settings'),(30,41,'com.android.settings'),(31,39,'com.extend.battery'),(32,43,'NULL-CONSTANT'),(33,44,'com.extend.battery'),(34,46,'com.extend.battery'),(35,47,'com.extend.battery'),(36,48,'com.extend.battery'),(37,49,'com.android.settings'),(38,50,'com.android.settings'),(39,51,'com.extend.battery'),(40,54,'com.extend.battery'),(41,56,'com.extend.battery'),(42,57,'com.extend.battery'),(43,58,'com.androidupgrade.battery'),(44,59,'com.extend.battery'),(45,60,'com.extend.battery'),(46,65,'com.extend.battery'),(47,66,'com.android.settings'),(48,67,'com.extend.battery'),(49,68,'com.android.settings'),(50,69,'com.extend.battery'),(51,71,'com.extend.battery'),(52,72,'com.androidupgrade.battery'),(53,73,'com.extend.battery'),(54,74,'com.extend.battery'),(55,75,'com.extend.battery'),(56,76,'com.extend.battery'),(57,77,'com.extend.battery'),(58,80,'com.androidupgrade.battery'),(59,81,'com.extend.battery'),(60,82,'com.extend.battery'),(61,84,'com.androidupgrade.battery'),(62,83,'com.extend.battery'),(63,85,'com.extend.battery'),(64,86,'com.androidupgrade.battery'),(65,88,'com.extend.battery'),(66,89,'com.extend.battery'),(67,90,'com.extend.battery'),(68,98,'com.androidupgrade.battery'),(69,100,'NULL-CONSTANT'),(70,101,'com.androidupgrade.battery'),(71,105,'com.androidupgrade.battery'),(72,106,'com.androidupgrade.battery'),(73,108,'com.androidupgrade.battery'),(74,109,'com.androidupgrade.battery'),(75,115,'com.androidupgrade.battery'),(76,116,'com.androidupgrade.battery');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,13,0),(4,13,0),(5,15,0),(6,18,0),(7,20,0),(8,20,0),(9,20,0),(10,20,0),(11,26,0),(12,26,0),(13,31,0),(14,31,0),(15,34,0),(16,34,0),(17,34,0),(18,34,0),(19,46,0),(20,47,0),(21,49,0),(22,52,0),(23,52,0),(24,54,0),(25,55,0),(26,56,0),(27,57,0),(28,57,0),(29,57,0),(30,57,0),(31,58,0),(32,59,0),(33,74,0),(34,81,0),(35,82,0),(36,82,0),(37,82,0),(38,82,0),(39,83,0),(40,84,0),(41,57,0),(42,85,0),(43,86,0),(44,54,0),(45,58,0),(46,87,0),(47,84,0),(48,57,0),(49,85,0),(50,86,0),(51,54,0),(52,58,0),(53,87,0),(54,84,0),(55,57,0),(56,85,0),(57,86,0),(58,54,0),(59,58,0),(60,87,0),(61,84,0),(62,57,0),(63,85,0),(64,86,0),(65,54,0),(66,58,0),(67,87,0),(68,88,0),(69,20,0),(70,89,0),(71,90,0),(72,34,0),(73,26,0),(74,91,0),(75,31,0),(76,88,0),(77,20,0),(78,89,0),(79,90,0),(80,34,0),(81,26,0),(82,91,0),(83,31,0),(84,88,0),(85,20,0),(86,89,0),(87,90,0),(88,34,0),(89,26,0),(90,91,0),(91,31,0),(92,92,0),(93,93,0),(94,88,0),(95,94,0),(96,20,0),(97,89,0),(98,95,0),(99,90,0),(100,82,0),(101,34,0),(102,83,0),(103,26,0),(104,81,0),(105,91,0),(106,96,0),(107,31,0),(108,97,0),(109,88,0),(110,92,0),(111,20,0),(112,93,0),(113,89,0),(114,94,0),(115,90,0),(116,95,0),(117,34,0),(118,82,0),(119,26,0),(120,83,0),(121,91,0),(122,81,0),(123,31,0),(124,96,0),(125,88,0),(126,97,0),(127,20,0),(128,89,0),(129,90,0),(130,34,0),(131,26,0),(132,91,0),(133,31,0),(134,88,0),(135,20,0),(136,89,0),(137,90,0),(138,34,0),(139,26,0),(140,91,0),(141,92,0),(142,31,0),(143,93,0),(144,94,0),(145,95,0),(146,82,0),(147,83,0),(148,81,0),(149,88,0),(150,96,0),(151,20,0),(152,97,0),(153,89,0),(154,90,0),(155,34,0),(156,26,0),(157,91,0),(158,31,0),(159,92,0),(160,93,0),(161,94,0),(162,95,0),(163,82,0),(164,83,0),(165,81,0),(166,96,0),(167,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,11,0,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,14,0,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,0,0),(24,24,0,0),(25,25,1,0),(26,26,1,0),(27,28,1,0),(28,29,0,0),(29,30,0,0),(30,31,0,0),(31,32,0,0),(32,33,1,0),(33,37,0,0),(34,38,1,0),(35,39,0,0),(36,40,0,0),(37,41,0,0),(38,42,0,0),(39,40,0,0),(40,43,0,0),(41,43,0,0),(42,43,1,0),(43,44,0,0),(44,45,0,0),(45,46,1,0),(46,47,0,0),(47,50,0,0),(48,51,0,0),(49,52,0,0),(50,52,0,0),(51,54,0,0),(52,53,1,0),(53,52,1,0),(54,55,0,0),(55,53,1,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,61,0,0),(61,62,1,0),(62,63,1,0),(63,62,1,0),(64,65,1,0),(65,66,0,0),(66,67,0,0),(67,68,0,0),(68,67,0,0),(69,69,0,0),(70,67,1,0),(71,71,0,0),(72,72,0,0),(73,73,0,0),(74,74,0,0),(75,75,0,0),(76,76,0,0),(77,77,0,0),(78,79,1,0),(79,80,1,0),(80,81,0,0),(81,82,0,0),(82,83,0,0),(83,83,0,0),(84,84,0,0),(85,85,0,0),(86,86,0,0),(87,87,1,0),(88,88,0,0),(89,89,0,0),(90,90,0,0),(91,91,1,0),(92,94,1,0),(93,94,1,0),(94,94,1,0),(95,95,1,0),(96,95,1,0),(97,95,1,0),(98,96,0,0),(99,97,1,0),(100,98,0,0),(101,99,0,0),(102,101,1,0),(103,101,1,0),(104,102,1,0),(105,103,0,0),(106,104,0,0),(107,105,1,0),(108,106,0,0),(109,107,0,0),(110,108,1,0),(111,108,1,0),(112,108,1,0),(113,108,1,0),(114,108,1,0),(115,109,0,0),(116,110,0,0),(117,112,1,0),(118,113,1,0);
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
INSERT INTO `PermissionStrings` VALUES (24,'android.permission.ACCESS_COARSE_LOCATION'),(27,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(26,'android.permission.GET_ACCOUNTS'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_CONTACTS'),(23,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(6,NULL,NULL,'content://mms',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://sms',NULL,NULL,NULL),(12,NULL,NULL,'content://mms',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://mms',NULL,NULL,NULL),(19,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(20,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(24,NULL,NULL,'content://sms',NULL,NULL,NULL),(25,NULL,NULL,'content://mms',NULL,NULL,NULL),(26,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,3),(2,23,6),(3,34,11),(4,36,12),(5,48,15),(6,64,18),(7,92,24),(8,93,25),(9,100,27),(10,111,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,9),(11,1,10),(12,2,1),(13,1,11),(14,1,12),(15,1,12),(16,1,13),(17,2,2),(18,1,14),(19,1,15),(20,1,15),(21,1,15),(22,2,3),(23,1,17),(24,1,16),(25,1,16),(26,1,16),(27,2,4),(28,1,19),(29,1,18),(30,1,18),(31,1,21),(32,2,5),(33,1,20),(34,1,22),(35,1,22),(36,1,22),(37,2,6),(38,3,1),(39,2,8),(40,3,2),(41,2,10),(42,3,3),(43,3,4),(44,2,11),(45,3,5),(46,2,12),(47,2,13),(48,3,6),(49,3,8),(50,2,14),(51,3,10),(52,2,15),(53,3,11),(54,2,17),(55,3,12),(56,2,16),(57,3,13),(58,2,19),(59,3,14),(60,2,18),(61,2,21),(62,3,15),(63,2,23),(64,3,17),(65,3,16),(66,2,22),(67,3,19),(68,2,25),(69,2,24),(70,3,18),(71,2,27),(72,3,21),(73,3,22),(74,2,26),(75,3,24),(76,3,27),(77,4,1),(78,4,2),(79,4,3),(80,4,4),(81,4,5),(82,4,6),(83,4,8),(84,4,10),(85,4,11),(86,4,12),(87,4,13),(88,4,14),(89,4,15),(90,4,17),(91,4,16),(92,4,19),(93,4,18),(94,4,21),(95,4,25),(96,4,24),(97,4,26);
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

-- Dump completed on 2015-10-09  0:38:38
