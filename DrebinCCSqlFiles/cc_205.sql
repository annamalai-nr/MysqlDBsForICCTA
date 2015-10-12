-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_205
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
INSERT INTO `ActionStrings` VALUES (23,'(.*).SEND_SMS'),(26,'NULL-CONSTANT'),(15,'android.intent.action.BATTERY_CHANGED'),(21,'android.intent.action.BATTERY_LOW'),(18,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.DELETE'),(31,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(28,'android.intent.action.SENDTO'),(3,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(22,'android.settings.APPLICATION_DETAILS_SETTINGS'),(16,'android.settings.LOCATION_SOURCE_SETTINGS'),(13,'com.android.mms.transaction.MESSAGE_SENT'),(10,'com.android.vending.INSTALL_REFERRER'),(2,'com.extend.battery.intent.http.SHOW'),(27,'com.flurry.android.ACTION_CATALOG'),(9,'com.itframework.installer.updater.CHECK'),(8,'com.itframework.installer.updater.UPDATE'),(12,'com.mobsqueeze.sms.MESSAGE_RECEIVED'),(24,'com.notifad.android.PushServiceStart(.*)'),(11,'com.notifad.android.PushServiceStart1'),(29,'com.notifad.android.PushServiceStartInvalid'),(25,'com.notifad.android.PushServiceStartNULL-CONSTANT'),(30,'com.notifad.android.PushServiceStartinvalid Id'),(6,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',902),(2,'com.extend.battery',84),(3,'com.extend.battery',89),(4,'com.extend.battery',91),(5,'com.extender.sc',51);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,2,'com.extend.battery.Splash'),(4,1,'com.extend.battery.TaskKillerActivity'),(5,1,'com.extend.battery.UninstallerActivity'),(6,2,'com.extend.battery.TabHandler'),(7,1,'com.extend.battery.SecurityAuditActivity'),(8,3,'com.extend.battery.Splash'),(9,2,'com.extend.battery.TaskKillerActivity'),(10,1,'com.extend.battery.InstallerActivity'),(11,2,'com.extend.battery.UninstallerActivity'),(12,1,'com.extend.battery.FeaturesActivity'),(13,3,'com.extend.battery.TabHandler'),(14,2,'com.extend.battery.SecurityAuditActivity'),(15,1,'com.extend.battery.BoosterActivity'),(16,4,'com.extend.battery.Splash'),(17,3,'com.extend.battery.TaskKillerActivity'),(18,2,'com.extend.battery.InstallerActivity'),(19,1,'com.extend.battery.BatteryActivity'),(20,3,'com.extend.battery.UninstallerActivity'),(21,2,'com.extend.battery.FeaturesActivity'),(22,4,'com.extend.battery.TabHandler'),(23,1,'com.extend.battery.RatingActivity'),(24,4,'com.extend.battery.TaskKillerActivity'),(25,3,'com.extend.battery.SecurityAuditActivity'),(26,4,'com.extend.battery.UninstallerActivity'),(27,2,'com.extend.battery.BoosterActivity'),(28,4,'com.extend.battery.SecurityAuditActivity'),(29,1,'com.extend.battery.BatteryService'),(30,4,'com.extend.battery.InstallerActivity'),(31,4,'com.extend.battery.InstallerActivity'),(32,3,'com.extend.battery.InstallerActivity'),(33,2,'com.extend.battery.BatteryActivity'),(34,4,'com.extend.battery.FeaturesActivity'),(35,1,'com.extend.battery.NotificationReceiver'),(36,4,'com.extend.battery.BoosterActivity'),(37,4,'com.extend.battery.BoosterActivity'),(38,3,'com.extend.battery.FeaturesActivity'),(39,2,'com.extend.battery.RatingActivity'),(40,4,'com.extend.battery.BatteryActivity'),(41,4,'com.extend.battery.RatingActivity'),(42,4,'com.extend.battery.RatingActivity'),(43,3,'com.extend.battery.BoosterActivity'),(44,2,'com.extend.battery.BatteryService'),(45,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(46,1,'com.extend.battery.BootReceiver'),(47,3,'com.extend.battery.BatteryActivity'),(48,2,'com.zanalytics.sms.SmsReceiverService'),(49,3,'com.extend.battery.RatingActivity'),(50,2,'com.zanalytics.sms.SmsReceiver'),(51,4,'com.itframework.installer.util.NonMarketDialogActivity'),(52,3,'com.extend.battery.BatteryService'),(53,4,'com.extend.battery.BatteryService'),(54,4,'com.itframework.installer.util.InstallWorker'),(55,3,'com.zanalytics.sms.SmsReceiverService'),(56,4,'com.zanalytics.sms.SmsReceiverService'),(57,4,'com.itframework.installer.updater.UpdateReceiver'),(58,3,'com.extend.battery.NotificationReceiver'),(59,2,'com.tapjoy.TapjoyReferralTracker'),(60,3,'com.extend.battery.BootReceiver'),(61,4,'com.extend.battery.NotificationReceiver'),(62,3,'com.zanalytics.sms.SmsReceiver'),(63,4,'com.extend.battery.BootReceiver'),(64,4,'com.zanalytics.sms.SmsReceiver'),(65,3,'com.tapjoy.TapjoyReferralTracker'),(66,5,'com.androidupgrade.battery.Splash'),(67,5,'com.androidupgrade.battery.TabHandler'),(68,5,'com.androidupgrade.battery.TaskKillerActivity'),(69,5,'com.androidupgrade.battery.UninstallerActivity'),(70,5,'com.androidupgrade.battery.SecurityAuditActivity'),(71,5,'com.androidupgrade.battery.InstallerActivity'),(72,5,'com.androidupgrade.battery.FeaturesActivity'),(73,5,'com.androidupgrade.battery.BoosterActivity'),(74,5,'com.androidupgrade.battery.BatteryActivity'),(75,5,'com.androidupgrade.battery.RatingActivity'),(76,5,'com.notifad.android.PushAds'),(77,5,'com.androidupgrade.battery.BatteryService'),(78,5,'com.notifad.android.PushService'),(79,5,'com.mobsqueeze.sms.SmsReceiverService'),(80,5,'com.notifad.android.UserDetailsReceiver'),(81,5,'com.notifad.android.MessageReceiver'),(82,5,'com.notifad.android.DeliveryReceiver'),(83,5,'com.androidupgrade.battery.BootReceiver'),(84,5,'com.mobsqueeze.ReferralReceiver'),(85,5,'com.mobsqueeze.sms.SmsReceiver'),(86,5,'com.tapjoy.TapjoyReferralTracker'),(87,1,'com.extend.battery.features.AlarmReceiver'),(88,1,'com.itframework.installer.updater.UpdateReceiver'),(89,1,'com.extend.battery.d'),(90,1,'com.extend.battery.c'),(91,1,'com.extend.battery.a'),(92,1,'com.extend.battery.k'),(93,1,'com.extend.battery.bb'),(94,2,'com.zanalytics.sms.j'),(95,2,'com.extend.battery.f'),(96,1,'com.extend.battery.bc'),(97,2,'com.extend.battery.g'),(98,2,'com.extend.battery.i'),(99,2,'com.extend.battery.j'),(100,2,'com.zanalytics.sms.c'),(101,2,'com.extend.battery.aw'),(102,2,'com.zanalytics.sms.a'),(103,2,'com.extend.battery.ay'),(104,2,'com.extend.battery.s'),(105,4,'com.extend.battery.ba'),(106,5,'com.flurry.android.u'),(107,4,'com.extend.battery.bb'),(108,4,'com.extend.battery.d'),(109,5,'com.androidupgrade.battery.Splash$1'),(110,4,'com.extend.battery.c'),(111,4,'com.extend.battery.a'),(112,4,'com.zanalytics.sms.c'),(113,5,'com.mobsqueeze.sms.SmsUtils'),(114,4,'com.extend.battery.features.s'),(115,4,'com.zanalytics.sms.j'),(116,5,'com.androidupgrade.battery.AdUtils$5'),(117,5,'com.mobsqueeze.sms.SendIntent'),(118,5,'com.mobsqueeze.sms.SmsReceiverService$1'),(119,4,'com.zanalytics.sms.a'),(120,5,'com.androidupgrade.battery.BatteryService$1'),(121,4,'com.itframework.installer.a.b'),(122,5,'com.androidupgrade.battery.BatteryActivity$1'),(123,5,'com.androidupgrade.battery.BoosterActivity$1'),(124,4,'com.extend.battery.k'),(125,5,'com.androidupgrade.battery.TaskKillerActivity$1'),(126,5,'com.androidupgrade.battery.BoosterActivity$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,35,'clickevent'),(2,19,'technology'),(3,50,'pdus'),(4,34,'technology'),(5,76,'apikey'),(6,54,'downloadStarting'),(7,54,'finishedTicker'),(8,54,'downloadingWait'),(9,54,'downloadingTicker'),(10,54,'finishedTitle'),(11,54,'finishedText'),(12,39,'technology'),(13,44,'downloadingTicker'),(14,54,'downloadingToast'),(15,44,'finishedTitle'),(16,44,'downloadingTitle'),(17,76,'creativeId'),(18,78,'appId'),(19,78,'number'),(20,76,'sms'),(21,76,'test'),(22,76,'header'),(23,82,'campId'),(24,57,'URL'),(25,78,'url'),(26,78,'apikey'),(27,78,'creativeId'),(28,78,'testMode'),(29,78,'campId'),(30,78,'imageurl'),(31,76,'url'),(32,82,'imageurl'),(33,44,'downloadingProgress'),(34,82,'text'),(35,54,'url'),(36,54,'forceDownload'),(37,82,'header'),(38,78,'text'),(39,64,'pdus'),(40,78,'sms'),(41,85,'pdus'),(42,76,'campId'),(43,54,'filename'),(44,44,'downloadStarting'),(45,44,'url'),(46,44,'finishedText'),(47,44,'forceDownload'),(48,54,'downloadingProgress'),(49,54,'showNotifications'),(50,44,'finishedTicker'),(51,76,'appId'),(52,44,'downloadingToast'),(53,54,'downloadingTitle'),(54,78,'link'),(55,82,'number'),(56,74,'technology'),(57,61,'clickevent'),(58,44,'callbackIntent'),(59,82,'url'),(60,44,'filename'),(61,44,'downloadingWait'),(62,54,'callbackIntent'),(63,78,'header'),(64,82,'creativeId'),(65,76,'adType'),(66,82,'title'),(67,82,'appId'),(68,84,'referrer'),(69,76,'number'),(70,78,'type'),(71,82,'sms'),(72,78,'title'),(73,82,'apikey'),(74,78,'adType');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',1,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,44,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,62,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',1,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,97,'r',1,NULL,NULL),(93,98,'r',1,NULL,NULL),(94,99,'r',1,NULL,NULL),(95,100,'r',1,NULL,NULL),(96,108,'r',1,NULL,NULL),(97,110,'r',1,NULL,NULL),(98,111,'r',1,NULL,NULL),(99,112,'r',1,NULL,NULL),(100,80,'r',1,NULL,NULL),(101,82,'r',1,NULL,NULL),(102,118,'r',1,NULL,NULL),(103,120,'r',1,NULL,NULL),(104,122,'r',1,NULL,NULL),(105,81,'r',1,NULL,NULL),(106,123,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,35),(2,2,19),(3,2,5),(4,3,2),(5,4,46),(6,5,19),(7,5,16),(8,6,5),(9,6,7),(10,6,10),(11,6,16),(12,6,19),(13,7,1),(14,8,16),(15,9,5),(16,9,19),(17,10,1),(18,11,10),(19,12,10),(20,12,19),(21,13,1),(22,14,19),(23,15,7),(24,16,5),(25,17,16),(26,17,19),(27,18,34),(28,18,18),(29,19,1),(30,20,50),(31,21,14),(32,21,34),(33,21,18),(34,21,11),(35,22,19),(36,22,4),(37,23,7),(38,23,19),(39,24,14),(40,25,6),(41,26,3),(42,27,50),(43,28,3),(44,29,11),(45,30,34),(46,30,11),(47,30,14),(48,30,18),(49,31,34),(50,31,9),(51,32,50),(52,33,3),(53,34,34),(54,34,28),(55,35,34),(56,35,28),(57,36,11),(58,36,34),(59,37,34),(60,38,11),(61,38,34),(62,39,14),(63,39,34),(64,39,18),(65,39,11),(66,39,28),(67,40,3),(68,41,34),(69,41,14),(70,42,18),(71,43,74),(72,43,69),(73,44,76),(74,45,15),(75,46,71),(76,46,69),(77,46,70),(78,46,73),(79,46,74),(80,47,39),(81,47,30),(82,48,39),(83,48,25),(84,49,25),(85,50,44),(86,51,25),(87,52,23),(88,52,39),(89,53,15),(90,54,66),(91,55,76),(92,56,15),(93,57,39),(94,57,30),(95,58,85),(96,59,21),(97,60,69),(98,60,74),(99,61,39),(100,61,36),(101,62,30),(102,62,39),(103,62,27),(104,62,25),(105,63,74),(106,64,36),(107,65,74),(108,65,71),(109,66,27),(110,66,39),(111,67,82),(112,68,30),(113,70,15),(114,69,36),(115,69,39),(116,71,64),(117,72,64),(118,73,39),(119,74,64),(120,75,15),(121,76,62),(122,77,27),(123,78,27),(124,78,25),(125,78,39),(126,78,30),(127,79,64),(128,80,44),(129,81,74),(130,81,73),(131,82,36),(132,83,62),(133,84,39),(134,84,36),(135,85,66),(136,86,54),(137,87,44),(138,88,74),(139,88,71),(140,88,70),(141,88,69),(142,89,54),(143,90,27),(144,91,81),(145,92,15),(146,93,30),(147,94,61),(148,95,61),(149,96,70),(150,96,69),(151,96,71),(152,96,74),(153,97,23),(154,97,39),(155,98,21),(156,99,54),(157,100,15),(158,101,39),(159,101,27),(160,102,74),(161,102,73),(162,103,39),(163,104,54),(164,105,39),(165,105,25),(166,105,27),(167,105,30),(168,106,39),(169,106,25),(170,107,54),(171,108,39),(172,108,36),(173,109,54),(174,110,30),(175,110,39),(176,110,25),(177,110,27),(178,111,85),(179,112,44),(180,113,27),(181,113,25),(182,113,30),(183,113,39),(184,113,36),(185,114,25),(186,114,39),(187,115,25),(188,115,39),(189,116,64),(190,117,64),(191,118,71),(192,119,15),(193,120,25),(194,120,39),(195,120,30),(196,120,27),(197,120,36),(198,121,76),(199,122,66),(200,123,70),(201,124,74),(202,124,68),(203,125,85),(204,126,76),(205,127,66),(206,128,73),(207,128,74),(208,128,71),(209,128,69),(210,128,70),(211,129,69),(212,130,76),(213,131,74),(214,131,70),(215,132,80),(216,133,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,35,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(2,5,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(3,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(4,46,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(5,15,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(6,92,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(7,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(8,15,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(9,5,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(10,93,'<com.extend.battery.bb: void run()>',118,'a',NULL),(11,10,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(12,10,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(13,93,'<com.extend.battery.bb: void run()>',196,'a',NULL),(14,19,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(15,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(16,5,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(17,15,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(18,18,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(19,93,'<com.extend.battery.bb: void run()>',58,'a',NULL),(20,94,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(21,95,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(22,96,'<com.extend.battery.bc: void onClick(android.view.View)>',6,'a',NULL),(23,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(24,14,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(25,6,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(26,101,'<com.extend.battery.aw: void run()>',205,'a',NULL),(27,94,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(28,101,'<com.extend.battery.aw: void run()>',139,'a',NULL),(29,11,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(30,102,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(31,103,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(32,50,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(33,101,'<com.extend.battery.aw: void run()>',73,'a',NULL),(34,27,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(35,27,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(36,11,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(37,33,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(38,11,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(39,104,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(40,3,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(41,14,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(42,18,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(43,69,'<com.androidupgrade.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(44,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(45,105,'<com.extend.battery.ba: void run()>',118,'a',NULL),(46,106,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(47,30,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(48,26,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(49,26,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(50,45,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(51,26,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(52,107,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(53,105,'<com.extend.battery.ba: void run()>',212,'a',NULL),(54,109,'<com.androidupgrade.battery.Splash$1: void run()>',69,'a',NULL),(55,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',165,'a',NULL),(56,105,'<com.extend.battery.ba: void run()>',212,'a',NULL),(57,30,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(58,113,'<com.mobsqueeze.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(59,22,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(60,69,'<com.androidupgrade.battery.UninstallerActivity: void uninstallApp(com.androidupgrade.battery.model.InstalledApplication)>',10,'a',NULL),(61,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(62,114,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(63,74,'<com.androidupgrade.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(64,36,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(65,71,'<com.androidupgrade.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(66,28,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(67,82,'<com.notifad.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(68,30,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(69,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(70,105,'<com.extend.battery.ba: void run()>',118,'a',NULL),(71,64,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(72,115,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(73,40,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(74,64,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(75,16,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(76,63,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(77,28,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(78,114,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(79,115,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(80,45,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(81,73,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(82,36,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(83,63,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(84,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(85,109,'<com.androidupgrade.battery.Splash$1: void run()>',193,'a',NULL),(86,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(87,45,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(88,116,'<com.androidupgrade.battery.AdUtils$5: void onClick(android.view.View)>',8,'a',NULL),(89,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(90,28,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(91,81,'<com.notifad.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(92,16,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(93,30,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(94,61,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(95,61,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(96,117,'<com.mobsqueeze.sms.SendIntent: void send()>',3,'s',NULL),(97,107,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(98,22,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(99,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(100,105,'<com.extend.battery.ba: void run()>',58,'a',NULL),(101,28,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(102,73,'<com.androidupgrade.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(103,40,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(104,54,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(105,119,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(106,26,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(107,121,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(108,36,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(109,121,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(110,119,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(111,85,'<com.mobsqueeze.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',72,'s',NULL),(112,45,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(113,124,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(114,26,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(115,26,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(116,115,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(117,115,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(118,71,'<com.androidupgrade.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(119,105,'<com.extend.battery.ba: void run()>',58,'a',NULL),(120,124,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(121,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(122,66,'<com.androidupgrade.battery.Splash: void startApp()>',9,'a',NULL),(123,70,'<com.androidupgrade.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(124,125,'<com.androidupgrade.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(125,113,'<com.mobsqueeze.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(126,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',230,'s',NULL),(127,109,'<com.androidupgrade.battery.Splash$1: void run()>',131,'a',NULL),(128,126,'<com.androidupgrade.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(129,69,'<com.androidupgrade.battery.UninstallerActivity: void launch(java.lang.String)>',24,'a',NULL),(130,76,'<com.notifad.android.PushAds: void onCreate(android.os.Bundle)>',153,'s',NULL),(131,70,'<com.androidupgrade.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(132,80,'<com.notifad.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(133,74,'<com.androidupgrade.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,16),(2,7,3),(3,8,17),(4,10,3),(5,16,22),(6,17,1),(7,21,3),(8,26,22),(9,30,1),(10,31,23),(11,39,17),(12,40,16),(13,43,3),(14,45,24),(15,46,25),(16,48,26),(17,50,26),(18,52,27),(19,53,1),(20,55,27),(21,56,1),(22,60,28),(23,64,17),(24,66,3),(25,68,3),(26,71,24),(27,72,3),(28,75,24),(29,77,24),(30,80,24),(31,83,24),(32,85,3),(33,87,22),(34,90,3),(35,94,3),(36,96,3),(37,98,29),(38,100,22),(39,102,30),(40,104,24),(41,105,3),(42,106,23),(43,109,3),(44,114,23),(45,115,17),(46,117,23),(47,120,16),(48,121,17),(49,124,3),(50,126,16),(51,127,31),(52,131,22),(53,133,24),(54,134,25),(55,136,16),(56,137,1),(57,138,24),(58,139,25),(59,141,30),(60,142,24),(61,143,29);
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
INSERT INTO `ICategories` VALUES (1,17,1),(2,30,1),(3,48,2),(4,50,2),(5,52,2),(6,53,1),(7,55,2),(8,56,1),(9,137,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/FeaturesActivity'),(2,2,'com/extend/battery/BatteryService'),(3,3,'com/extend/battery/BatteryService'),(4,4,'com/extend/battery/RatingActivity'),(5,6,'com/extend/battery/TabHandler'),(6,9,'com/extend/battery/TabHandler'),(7,11,'com/extend/battery/FeaturesActivity'),(8,12,'com/extend/battery/TabHandler'),(9,13,'com/extend/battery/FeaturesActivity'),(10,14,'com.android.settings.InstalledAppDetails'),(11,15,'com.android.settings.InstalledAppDetails'),(12,17,'NULL-CONSTANT'),(13,18,'com/extend/battery/FeaturesActivity'),(14,19,'com/extend/battery/FeaturesActivity'),(15,20,'com/extend/battery/TabHandler'),(16,22,'com/extend/battery/FeaturesActivity'),(17,23,'com/extend/battery/FeaturesActivity'),(18,24,'com.android.settings.InstalledAppDetails'),(19,25,'com.android.settings.InstalledAppDetails'),(20,27,'com/extend/battery/BatteryService'),(21,28,'com/extend/battery/TabHandler'),(22,29,'com/extend/battery/TabHandler'),(23,30,'NULL-CONSTANT'),(24,31,'com/zanalytics/sms/SmsReceiverService'),(25,32,'com/extend/battery/FeaturesActivity'),(26,33,'com/zanalytics/sms/SmsReceiverService'),(27,34,'com/extend/battery/TabHandler'),(28,35,'com/extend/battery/RatingActivity'),(29,36,'com/extend/battery/FeaturesActivity'),(30,37,'com/extend/battery/FeaturesActivity'),(31,38,'com/extend/battery/FeaturesActivity'),(32,41,'com/extend/battery/TabHandler'),(33,42,'com/extend/battery/FeaturesActivity'),(34,44,'com/androidupgrade/battery/FeaturesActivity'),(35,47,'com/extend/battery/TabHandler'),(36,49,'com/extend/battery/FeaturesActivity'),(37,51,'com/extend/battery/FeaturesActivity'),(38,54,'com/itframework/installer/util/NonMarketDialogActivity'),(39,53,'NULL-CONSTANT'),(40,56,'NULL-CONSTANT'),(41,57,'com/extend/battery/FeaturesActivity'),(42,58,'com/extend/battery/TabHandler'),(43,59,'com/androidupgrade/battery/TabHandler'),(44,61,'com/extend/battery/TabHandler'),(45,62,'com/extend/battery/FeaturesActivity'),(46,63,'com/extend/battery/BatteryService'),(47,65,'com/extend/battery/RatingActivity'),(48,67,'com/androidupgrade/battery/FeaturesActivity'),(49,69,'com/androidupgrade/battery/FeaturesActivity'),(50,70,'com/extend/battery/FeaturesActivity'),(51,74,'com/extend/battery/RatingActivity'),(52,73,'com/extend/battery/TabHandler'),(53,76,'com/zanalytics/sms/SmsReceiverService'),(54,78,'com/extend/battery/FeaturesActivity'),(55,79,'com/zanalytics/sms/SmsReceiverService'),(56,81,'com/extend/battery/TabHandler'),(57,82,'com/extend/battery/BatteryService'),(58,84,'com.android.settings.InstalledAppDetails'),(59,86,'com.android.settings.InstalledAppDetails'),(60,88,'com/itframework/installer/util/NonMarketDialogActivity'),(61,89,'com/androidupgrade/battery/RatingActivity'),(62,91,'com/extend/battery/BatteryService'),(63,92,'com/extend/battery/FeaturesActivity'),(64,93,'com/androidupgrade/battery/TabHandler'),(65,97,'com.android.settings.InstalledAppDetails'),(66,99,'com.android.settings.InstalledAppDetails'),(67,95,'com/itframework/installer/util/InstallWorker'),(68,103,'com/extend/battery/TabHandler'),(69,101,'com/itframework/installer/util/InstallWorker'),(70,107,'com/extend/battery/FeaturesActivity'),(71,108,'com/extend/battery/BatteryService'),(72,110,'com/extend/battery/TabHandler'),(73,106,'com/mobsqueeze/sms/SmsReceiverService'),(74,111,'com/extend/battery/FeaturesActivity'),(75,112,'com/androidupgrade/battery/FeaturesActivity'),(76,113,'com/extend/battery/FeaturesActivity'),(77,114,'com/zanalytics/sms/SmsReceiverService'),(78,116,'com/extend/battery/FeaturesActivity'),(79,117,'com/zanalytics/sms/SmsReceiverService'),(80,118,'com/mobsqueeze/sms/SmsReceiverService'),(81,119,'com/itframework/installer/util/InstallWorker'),(82,122,'com/extend/battery/FeaturesActivity'),(83,125,'com/extend/battery/TabHandler'),(84,123,'com/itframework/installer/util/InstallWorker'),(85,128,'com/androidupgrade/battery/TabHandler'),(86,129,'com.android.settings.InstalledAppDetails'),(87,130,'com.android.settings.InstalledAppDetails'),(88,132,'com/androidupgrade/battery/FeaturesActivity'),(89,135,'com/androidupgrade/battery/TabHandler'),(90,137,'NULL-CONSTANT'),(91,140,'com/androidupgrade/battery/FeaturesActivity'),(92,144,'com/androidupgrade/battery/BatteryService');
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
INSERT INTO `IData` VALUES (1,7,1),(2,8,2),(3,10,3),(4,16,4),(5,21,6),(6,26,7),(7,39,9),(8,43,10),(9,60,11),(10,64,13),(11,66,14),(12,68,15),(13,72,16),(14,85,18),(15,87,20),(16,90,21),(17,94,22),(18,96,23),(19,100,24),(20,105,25),(21,109,26),(22,115,27),(23,121,28),(24,124,31),(25,127,32),(26,131,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'cacheUrl'),(2,14,'com.android.settings.ApplicationPkgName'),(3,15,'pkg'),(4,24,'com.android.settings.ApplicationPkgName'),(5,25,'pkg'),(6,31,'TryCount'),(7,31,'NextMessage'),(8,31,'TryAgain'),(9,31,'StoreMessage'),(10,31,'Message'),(11,31,'Delay'),(12,31,'PhoneNumber'),(13,31,'TagEvent'),(14,33,'result'),(15,33,'abort'),(16,41,'cacheUrl'),(17,45,'<INTENT>'),(18,45,'type'),(19,46,'<INTENT>'),(20,46,'type'),(21,48,'u'),(22,48,'o'),(23,50,'u'),(24,52,'u'),(25,55,'u'),(26,55,'o'),(27,60,'sms_body'),(28,71,'campId'),(29,71,'title'),(30,71,'text'),(31,71,'appId'),(32,71,'creativeId'),(33,71,'expiry_time'),(34,71,'link'),(35,71,'adType'),(36,71,'type'),(37,71,'imageurl'),(38,71,'header'),(39,71,'apikey'),(40,75,'campId'),(41,75,'title'),(42,75,'text'),(43,75,'appId'),(44,76,'result'),(45,75,'creativeId'),(46,76,'abort'),(47,75,'expiry_time'),(48,75,'link'),(49,75,'adType'),(50,75,'type'),(51,75,'imageurl'),(52,75,'apikey'),(53,77,'title'),(54,77,'text'),(55,77,'appId'),(56,77,'expiry_time'),(57,77,'number'),(58,77,'adType'),(59,77,'type'),(60,79,'result'),(61,77,'imageurl'),(62,79,'abort'),(63,77,'apikey'),(64,80,'title'),(65,80,'text'),(66,80,'appId'),(67,81,'cacheUrl'),(68,80,'expiry_time'),(69,80,'type'),(70,80,'imageurl'),(71,80,'apikey'),(72,83,'campId'),(73,83,'title'),(74,84,'com.android.settings.ApplicationPkgName'),(75,83,'text'),(76,83,'appId'),(77,83,'creativeId'),(78,83,'expiry_time'),(79,83,'number'),(80,86,'pkg'),(81,83,'adType'),(82,83,'sms'),(83,83,'type'),(84,83,'imageurl'),(85,83,'apikey'),(86,95,'downloadingProgress'),(87,95,'downloadingWait'),(88,95,'downloadingToast'),(89,95,'finishedText'),(90,95,'downloadingTicker'),(91,95,'downloadingTitle'),(92,95,'filename'),(93,97,'com.android.settings.ApplicationPkgName'),(94,95,'finishedTicker'),(95,95,'forceDownload'),(96,95,'finishedTitle'),(97,98,'icon'),(98,95,'url'),(99,99,'pkg'),(100,98,'appId'),(101,95,'downloadStarting'),(102,98,'testMode'),(103,98,'type'),(104,98,'apikey'),(105,101,'downloadingProgress'),(106,101,'downloadingWait'),(107,101,'downloadingToast'),(108,102,'icon'),(109,101,'callbackIntent'),(110,102,'appId'),(111,101,'finishedText'),(112,102,'testMode'),(113,101,'downloadingTicker'),(114,103,'cacheUrl'),(115,102,'type'),(116,101,'downloadingTitle'),(117,102,'apikey'),(118,101,'filename'),(119,101,'finishedTicker'),(120,101,'forceDownload'),(121,104,'icon'),(122,101,'finishedTitle'),(123,101,'url'),(124,104,'appId'),(125,101,'downloadStarting'),(126,104,'testMode'),(127,104,'type'),(128,104,'apikey'),(129,106,'TryCount'),(130,106,'NextMessage'),(131,106,'TryAgain'),(132,106,'StoreMessage'),(133,106,'Message'),(134,106,'Delay'),(135,106,'PhoneNumber'),(136,106,'TagEvent'),(137,114,'TryCount'),(138,114,'NextMessage'),(139,114,'TryAgain'),(140,114,'StoreMessage'),(141,114,'Message'),(142,114,'Delay'),(143,114,'PhoneNumber'),(144,114,'TagEvent'),(145,117,'TryCount'),(146,117,'NextMessage'),(147,117,'TryAgain'),(148,117,'StoreMessage'),(149,117,'Message'),(150,117,'Delay'),(151,117,'PhoneNumber'),(152,117,'TagEvent'),(153,118,'result'),(154,118,'abort'),(155,119,'downloadingProgress'),(156,119,'downloadingWait'),(157,119,'downloadingToast'),(158,119,'finishedText'),(159,119,'downloadingTicker'),(160,119,'downloadingTitle'),(161,119,'filename'),(162,119,'finishedTicker'),(163,119,'forceDownload'),(164,119,'finishedTitle'),(165,119,'url'),(166,119,'downloadStarting'),(167,123,'downloadingProgress'),(168,123,'downloadingWait'),(169,123,'downloadingToast'),(170,123,'callbackIntent'),(171,123,'finishedText'),(172,123,'downloadingTicker'),(173,123,'downloadingTitle'),(174,123,'filename'),(175,123,'finishedTicker'),(176,123,'forceDownload'),(177,123,'finishedTitle'),(178,123,'url'),(179,123,'downloadStarting'),(180,128,'cacheUrl'),(181,129,'com.android.settings.ApplicationPkgName'),(182,130,'pkg'),(183,133,'<INTENT>'),(184,133,'type'),(185,134,'<INTENT>'),(186,134,'type'),(187,138,'<INTENT>'),(188,138,'type'),(189,139,'<INTENT>'),(190,139,'type'),(191,141,'appId'),(192,141,'type'),(193,141,'apikey'),(194,142,'appId'),(195,142,'type'),(196,142,'apikey'),(197,143,'appId'),(198,143,'type'),(199,143,'apikey');
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
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,3),(9,9,3),(10,10,5),(11,11,6),(12,12,7),(13,13,8),(14,14,8),(15,15,2),(16,16,9),(17,17,9),(18,18,10),(19,19,5),(20,20,2),(21,21,2),(22,22,5),(23,23,5),(24,24,7),(25,25,6),(26,26,7),(27,27,7),(28,28,6),(29,29,6),(30,30,10),(31,31,1),(32,32,11),(33,33,5),(34,34,10),(35,35,12),(36,36,13),(37,37,14),(38,38,7),(39,39,10),(40,40,15),(41,41,15),(42,42,15),(43,43,15),(44,44,15),(45,45,15),(46,46,15),(47,47,15),(48,48,15),(49,49,15),(50,50,15),(51,51,15),(52,52,15),(53,53,15),(54,54,21),(55,54,15),(56,54,18),(57,54,20),(58,54,19),(59,55,15),(60,55,21),(61,55,20),(62,55,19),(63,55,18),(64,56,19),(65,56,20),(66,56,21),(67,56,15),(68,56,18),(69,57,20),(70,57,21),(71,57,18),(72,57,19),(73,57,15),(74,58,18),(75,58,19),(76,58,20),(77,58,21),(78,58,15),(79,59,20),(80,59,21),(81,59,18),(82,59,19),(83,59,15),(84,60,18),(85,60,15),(86,60,21),(87,60,20),(88,60,19),(89,61,15),(90,62,15),(91,63,15),(92,64,15),(93,65,15),(94,66,15),(95,67,15),(96,68,15),(97,69,15),(98,70,15),(99,71,15),(100,72,15),(101,73,15),(102,74,15),(103,75,15),(104,76,15),(105,77,15),(106,78,15),(107,79,15),(108,80,18),(109,80,15),(110,80,21),(111,80,20),(112,80,19),(113,81,19),(114,81,18),(115,81,21),(116,81,20),(117,81,15),(118,82,21),(119,82,20),(120,82,19),(121,82,18),(122,82,15),(123,83,19),(124,83,18),(125,83,21),(126,83,20),(127,83,15),(128,84,15),(129,84,18),(130,84,19),(131,84,20),(132,84,21),(133,85,19),(134,85,18),(135,85,15),(136,85,20),(137,85,21),(138,86,15),(139,87,15),(140,88,15),(141,89,15),(142,90,15),(143,91,15),(144,92,18),(145,92,15),(146,92,21),(147,92,19),(148,92,20),(149,93,21),(150,93,20),(151,93,19),(152,93,18),(153,93,15),(154,94,21),(155,94,18),(156,94,20),(157,94,19),(158,94,15),(159,95,15),(160,96,15),(161,97,20),(162,97,21),(163,97,18),(164,97,19),(165,97,15),(166,98,15),(167,99,20),(168,99,21),(169,99,18),(170,99,19),(171,99,15),(172,100,15),(173,101,20),(174,101,21),(175,101,15),(176,101,19),(177,101,18),(178,102,15),(179,103,15),(180,104,21),(181,104,20),(182,104,19),(183,104,18),(184,104,15),(185,105,15),(186,106,19),(187,106,20),(188,106,18),(189,106,21),(190,106,15),(191,107,15),(192,108,15),(193,109,15),(194,110,15),(195,111,15),(196,112,15),(197,113,15),(198,114,15),(199,115,15),(200,116,15),(201,117,15),(202,118,15),(203,119,15),(204,120,15),(205,121,15),(206,122,15),(207,123,15),(208,124,15),(209,125,15),(210,126,15),(211,127,15),(212,128,15),(213,129,15),(214,130,15),(215,131,15),(216,132,18),(217,132,15),(218,132,21),(219,132,20),(220,132,19),(221,133,15),(222,133,18),(223,133,19),(224,133,21),(225,133,20),(226,134,15),(227,134,18),(228,134,20),(229,134,19),(230,134,21),(231,135,15),(232,135,21),(233,135,20),(234,135,19),(235,135,18),(236,136,20),(237,136,19),(238,136,21),(239,136,15),(240,136,18),(241,137,21),(242,137,20),(243,137,19),(244,137,18),(245,137,15),(246,138,15),(247,138,18),(248,138,19),(249,138,20),(250,138,21),(251,139,15),(252,139,20),(253,139,21),(254,139,18),(255,139,19),(256,140,15),(257,141,15),(258,142,15),(259,143,15),(260,144,15),(261,145,15),(262,146,15),(263,147,15),(264,148,15),(265,149,15),(266,150,15),(267,151,15),(268,152,15),(269,153,15),(270,154,15),(271,155,15),(272,157,15),(273,156,15),(274,158,15),(275,159,15),(276,160,15),(277,161,15),(278,162,15),(279,163,15),(280,164,15),(281,165,15),(282,166,15),(283,167,15),(284,168,15),(285,169,15),(286,170,15),(287,171,15),(288,172,15),(289,173,15),(290,174,15),(291,175,15),(292,176,15),(293,177,15),(294,178,15),(295,179,15),(296,180,15),(297,181,15),(298,182,15),(299,183,15),(300,184,15),(301,185,15),(302,186,15),(303,187,15),(304,188,15),(305,189,21),(306,189,20),(307,189,19),(308,189,18),(309,190,21),(310,190,18),(311,190,20),(312,190,19),(313,191,21),(314,191,20),(315,191,19),(316,191,18),(317,192,21),(318,192,19),(319,192,20),(320,192,18),(321,193,20),(322,193,21),(323,193,18),(324,193,19),(325,194,19),(326,194,20),(327,194,18),(328,194,21),(329,195,18),(330,195,19),(331,195,20),(332,195,21),(333,196,18),(334,196,21),(335,196,20),(336,196,19),(337,197,18),(338,197,19),(339,197,21),(340,197,20),(341,198,19),(342,198,20),(343,198,18),(344,198,21),(345,199,18),(346,199,19),(347,199,20),(348,199,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,8,2),(8,8,3),(9,9,2),(10,9,3),(11,31,1),(12,33,4);
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
INSERT INTO `IFData` VALUES (1,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,43,'application','vnd.android.package-archive'),(3,72,'application','vnd.android.package-archive'),(4,94,'application','vnd.android.package-archive'),(5,105,'application','vnd.android.package-archive'),(6,109,'application','vnd.android.package-archive'),(7,124,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'com.extend.battery'),(3,3,'com.extend.battery'),(4,4,'com.extend.battery'),(5,6,'com.extend.battery'),(6,9,'com.extend.battery'),(7,11,'com.extend.battery'),(8,12,'com.extend.battery'),(9,13,'com.extend.battery'),(10,14,'com.android.settings'),(11,15,'com.android.settings'),(12,17,'NULL-CONSTANT'),(13,18,'com.extend.battery'),(14,19,'com.extend.battery'),(15,20,'com.extend.battery'),(16,22,'com.extend.battery'),(17,23,'com.extend.battery'),(18,24,'com.android.settings'),(19,25,'com.android.settings'),(20,27,'com.extend.battery'),(21,28,'com.extend.battery'),(22,29,'com.extend.battery'),(23,30,'NULL-CONSTANT'),(24,31,'com.extend.battery'),(25,32,'com.extend.battery'),(26,33,'com.extend.battery'),(27,34,'com.extend.battery'),(28,35,'com.extend.battery'),(29,36,'com.extend.battery'),(30,37,'com.extend.battery'),(31,38,'com.extend.battery'),(32,41,'com.extend.battery'),(33,42,'com.extend.battery'),(34,44,'com.extender.sc'),(35,47,'com.extend.battery'),(36,49,'com.extend.battery'),(37,51,'com.extend.battery'),(38,54,'com.extend.battery'),(39,53,'NULL-CONSTANT'),(40,56,'NULL-CONSTANT'),(41,57,'com.extend.battery'),(42,58,'com.extend.battery'),(43,59,'com.extender.sc'),(44,61,'com.extend.battery'),(45,62,'com.extend.battery'),(46,63,'com.extend.battery'),(47,65,'com.extend.battery'),(48,67,'com.extender.sc'),(49,69,'com.extender.sc'),(50,70,'com.extend.battery'),(51,74,'com.extend.battery'),(52,73,'com.extend.battery'),(53,76,'com.extend.battery'),(54,78,'com.extend.battery'),(55,79,'com.extend.battery'),(56,81,'com.extend.battery'),(57,82,'com.extend.battery'),(58,84,'com.android.settings'),(59,86,'com.android.settings'),(60,88,'com.extend.battery'),(61,89,'com.extender.sc'),(62,91,'com.extend.battery'),(63,92,'com.extend.battery'),(64,93,'com.extender.sc'),(65,97,'com.android.settings'),(66,99,'com.android.settings'),(67,95,'com.extend.battery'),(68,103,'com.extend.battery'),(69,101,'com.extend.battery'),(70,107,'com.extend.battery'),(71,108,'com.extend.battery'),(72,110,'com.extend.battery'),(73,106,'com.extender.sc'),(74,111,'com.extend.battery'),(75,112,'com.extender.sc'),(76,113,'com.extend.battery'),(77,114,'com.extend.battery'),(78,116,'com.extend.battery'),(79,117,'com.extend.battery'),(80,118,'com.extender.sc'),(81,119,'com.extend.battery'),(82,122,'com.extend.battery'),(83,125,'com.extend.battery'),(84,123,'com.extend.battery'),(85,128,'com.extender.sc'),(86,129,'com.android.settings'),(87,130,'com.android.settings'),(88,132,'com.extender.sc'),(89,135,'com.extender.sc'),(90,137,'NULL-CONSTANT'),(91,140,'com.extender.sc'),(92,144,'com.extender.sc');
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,8,0),(4,15,0),(5,15,0),(6,15,0),(7,35,0),(8,44,0),(9,44,0),(10,46,0),(11,50,0),(12,50,0),(13,57,0),(14,57,0),(15,58,0),(16,57,0),(17,57,0),(18,59,0),(19,60,0),(20,61,0),(21,61,0),(22,62,0),(23,62,0),(24,63,0),(25,63,0),(26,64,0),(27,64,0),(28,64,0),(29,64,0),(30,65,0),(31,66,0),(32,78,0),(33,83,0),(34,84,0),(35,85,0),(36,85,0),(37,85,0),(38,85,0),(39,86,0),(40,87,0),(41,88,0),(42,89,0),(43,90,0),(44,91,0),(45,35,0),(46,46,0),(47,87,0),(48,88,0),(49,89,0),(50,90,0),(51,91,0),(52,35,0),(53,46,0),(54,87,0),(55,88,0),(56,89,0),(57,90,0),(58,91,0),(59,35,0),(60,46,0),(61,87,0),(62,88,0),(63,89,0),(64,90,0),(65,91,0),(66,35,0),(67,46,0),(68,92,0),(69,93,0),(70,59,0),(71,94,0),(72,50,0),(73,95,0),(74,92,0),(75,93,0),(76,59,0),(77,94,0),(78,50,0),(79,95,0),(80,92,0),(81,93,0),(82,59,0),(83,94,0),(84,50,0),(85,95,0),(86,92,0),(87,93,0),(88,59,0),(89,94,0),(90,50,0),(91,95,0),(92,96,0),(93,57,0),(94,97,0),(95,96,0),(96,57,0),(97,98,0),(98,97,0),(99,64,0),(100,98,0),(101,61,0),(102,64,0),(103,61,0),(104,99,0),(105,99,0),(106,62,0),(107,62,0),(108,96,0),(109,57,0),(110,97,0),(111,98,0),(112,64,0),(113,96,0),(114,61,0),(115,57,0),(116,99,0),(117,97,0),(118,62,0),(119,98,0),(120,64,0),(121,61,0),(122,99,0),(123,62,0),(124,96,0),(125,57,0),(126,97,0),(127,98,0),(128,64,0),(129,61,0),(130,99,0),(131,62,0),(132,96,0),(133,57,0),(134,97,0),(135,98,0),(136,64,0),(137,61,0),(138,99,0),(139,62,0),(140,96,0),(141,57,0),(142,97,0),(143,98,0),(144,100,0),(145,64,0),(146,61,0),(147,101,0),(148,99,0),(149,62,0),(150,102,0),(151,103,0),(152,84,0),(153,104,0),(154,85,0),(155,83,0),(156,86,0),(157,96,0),(158,57,0),(159,105,0),(160,97,0),(161,98,0),(162,106,0),(163,64,0),(164,61,0),(165,99,0),(166,62,0),(167,100,0),(168,101,0),(169,102,0),(170,103,0),(171,84,0),(172,104,0),(173,85,0),(174,83,0),(175,86,0),(176,105,0),(177,106,0),(178,100,0),(179,101,0),(180,102,0),(181,103,0),(182,84,0),(183,104,0),(184,85,0),(185,83,0),(186,86,0),(187,105,0),(188,106,0),(189,100,0),(190,101,0),(191,102,0),(192,103,0),(193,84,0),(194,104,0),(195,85,0),(196,83,0),(197,86,0),(198,105,0),(199,106,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,0,0),(4,5,0,0),(5,6,1,0),(6,7,0,0),(7,8,1,0),(8,9,1,0),(9,10,0,0),(10,11,1,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,0,0),(15,15,0,0),(16,15,1,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,21,1,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,24,0,0),(26,24,1,0),(27,25,0,0),(28,26,0,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,34,0,0),(36,35,0,0),(37,36,0,0),(38,37,0,0),(39,38,1,0),(40,39,1,0),(41,40,0,0),(42,41,0,0),(43,42,1,0),(44,43,0,0),(45,44,1,0),(46,44,1,0),(47,45,0,0),(48,46,1,0),(49,47,0,0),(50,46,1,0),(51,48,0,0),(52,46,1,0),(53,49,0,0),(54,50,0,0),(55,46,1,0),(56,51,0,0),(57,52,0,0),(58,53,0,0),(59,54,0,0),(60,55,1,0),(61,56,0,0),(62,57,0,0),(63,59,0,0),(64,60,1,0),(65,61,0,0),(66,62,1,0),(67,63,0,0),(68,64,1,0),(69,65,0,0),(70,66,0,0),(71,67,1,0),(72,68,1,0),(73,70,0,0),(74,69,0,0),(75,67,1,0),(76,71,0,0),(77,67,1,0),(78,73,0,0),(79,74,0,0),(80,67,1,0),(81,75,0,0),(82,76,0,0),(83,67,1,0),(84,77,0,0),(85,78,1,0),(86,77,0,0),(87,77,1,0),(88,80,0,0),(89,81,0,0),(90,82,1,0),(91,83,0,0),(92,84,0,0),(93,85,0,0),(94,86,1,0),(95,87,0,0),(96,88,1,0),(97,90,0,0),(98,91,1,0),(99,90,0,0),(100,90,1,0),(101,87,0,0),(102,91,1,0),(103,92,0,0),(104,91,1,0),(105,93,1,0),(106,96,0,0),(107,97,0,0),(108,98,0,0),(109,99,1,0),(110,100,0,0),(111,101,0,0),(112,102,0,0),(113,103,0,0),(114,105,0,0),(115,106,1,0),(116,108,0,0),(117,110,0,0),(118,111,0,0),(119,112,0,0),(120,113,1,0),(121,114,1,0),(122,115,0,0),(123,112,0,0),(124,118,1,0),(125,119,0,0),(126,120,1,0),(127,121,1,0),(128,122,0,0),(129,123,0,0),(130,123,0,0),(131,123,1,0),(132,124,0,0),(133,126,1,0),(134,126,1,0),(135,127,0,0),(136,128,1,0),(137,129,0,0),(138,130,1,0),(139,130,1,0),(140,131,0,0),(141,132,1,0),(142,132,1,0),(143,132,1,0),(144,133,0,0);
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
INSERT INTO `PermissionStrings` VALUES (22,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.BLUETOOTH'),(15,'android.permission.BLUETOOTH_ADMIN'),(13,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.CLEAR_APP_CACHE'),(8,'android.permission.DISABLE_KEYGUARD'),(27,'android.permission.GET_ACCOUNTS'),(16,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(12,'android.permission.INTERNET'),(6,'android.permission.KILL_BACKGROUND_PROCESSES'),(26,'android.permission.READ_CONTACTS'),(25,'android.permission.READ_LOGS'),(7,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_SMS'),(5,'android.permission.RESTART_PACKAGES'),(19,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SETTINGS'),(20,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(5,NULL,NULL,'content://mms',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://mms',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(21,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://mms',NULL,NULL,NULL),(30,NULL,NULL,'content://sms',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(34,NULL,NULL,'content://mms',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,20,5),(2,27,8),(3,58,12),(4,72,17),(5,79,19),(6,116,29),(7,117,30),(8,125,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,1,6),(8,2,2),(9,1,7),(10,2,3),(11,1,8),(12,2,5),(13,1,9),(14,2,7),(15,1,10),(16,2,8),(17,1,11),(18,3,1),(19,2,9),(20,3,2),(21,1,12),(22,2,10),(23,3,3),(24,1,13),(25,2,11),(26,1,14),(27,3,5),(28,2,12),(29,1,15),(30,3,7),(31,2,13),(32,1,17),(33,3,8),(34,2,14),(35,1,16),(36,3,9),(37,2,15),(38,1,18),(39,3,10),(40,2,17),(41,3,11),(42,2,19),(43,3,12),(44,2,18),(45,4,1),(46,3,13),(47,4,2),(48,2,21),(49,3,14),(50,4,3),(51,2,20),(52,3,15),(53,4,4),(54,2,23),(55,3,17),(56,4,5),(57,2,22),(58,3,19),(59,4,6),(60,2,24),(61,3,18),(62,4,7),(63,3,21),(64,4,8),(65,3,20),(66,4,9),(67,3,23),(68,4,10),(69,3,22),(70,4,11),(71,3,24),(72,4,12),(73,4,13),(74,4,14),(75,4,15),(76,4,17),(77,4,16),(78,4,19),(79,4,18),(80,4,21),(81,4,20),(82,4,23),(83,5,1),(84,5,2),(85,5,3),(86,5,5),(87,5,7),(88,5,8),(89,5,9),(90,5,10),(91,5,11),(92,5,12),(93,5,13),(94,5,14),(95,5,15),(96,5,17),(97,5,19),(98,5,18),(99,5,21),(100,5,20),(101,5,23),(102,5,22),(103,5,25),(104,5,27),(105,5,26);
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
