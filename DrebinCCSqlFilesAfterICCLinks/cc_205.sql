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
) ENGINE=InnoDB AUTO_INCREMENT=1696 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,2,2,NULL),(2,6,6,2,NULL),(3,6,13,2,NULL),(4,6,21,2,NULL),(5,8,1,2,NULL),(6,16,1,2,NULL),(7,39,1,2,NULL),(8,26,1,2,NULL),(9,115,1,2,NULL),(10,121,1,2,NULL),(11,87,1,2,NULL),(12,100,1,2,NULL),(13,64,1,2,NULL),(14,131,1,2,NULL),(15,45,1,2,NULL),(16,46,1,2,NULL),(17,60,1,2,NULL),(18,127,1,2,NULL),(19,133,1,2,NULL),(20,134,1,2,NULL),(21,138,1,2,NULL),(22,139,1,2,NULL),(23,141,1,2,NULL),(24,142,1,2,NULL),(25,143,1,2,NULL),(26,98,1,2,NULL),(27,102,1,2,NULL),(28,104,1,2,NULL),(29,71,1,2,NULL),(30,75,1,2,NULL),(31,77,1,2,NULL),(32,80,1,2,NULL),(33,83,1,2,NULL),(34,2,29,2,NULL),(35,2,45,2,NULL),(36,2,52,2,NULL),(37,2,53,2,NULL),(38,1,12,2,NULL),(39,1,22,2,NULL),(40,1,33,2,NULL),(41,1,38,2,NULL),(42,8,35,2,NULL),(43,8,46,2,NULL),(44,8,87,2,NULL),(45,8,88,2,NULL),(46,8,89,2,NULL),(47,8,90,2,NULL),(48,8,91,2,NULL),(49,8,3,2,NULL),(50,8,50,2,NULL),(51,8,59,2,NULL),(52,8,92,2,NULL),(53,8,93,2,NULL),(54,8,94,2,NULL),(55,8,95,2,NULL),(56,8,8,2,NULL),(57,8,58,2,NULL),(58,8,60,2,NULL),(59,8,63,2,NULL),(60,8,65,2,NULL),(61,8,15,2,NULL),(62,8,44,2,NULL),(63,8,57,2,NULL),(64,8,61,2,NULL),(65,8,62,2,NULL),(66,8,64,2,NULL),(67,8,96,2,NULL),(68,8,97,2,NULL),(69,8,98,2,NULL),(70,8,99,2,NULL),(71,8,66,2,NULL),(72,8,78,2,NULL),(73,8,100,2,NULL),(74,8,105,2,NULL),(75,8,101,2,NULL),(76,8,83,2,NULL),(77,8,84,2,NULL),(78,8,85,2,NULL),(79,8,86,2,NULL),(80,8,102,2,NULL),(81,8,103,2,NULL),(82,8,104,2,NULL),(83,8,106,2,NULL),(84,23,12,2,NULL),(85,23,22,2,NULL),(86,23,33,2,NULL),(87,23,38,2,NULL),(88,16,35,2,NULL),(89,16,46,2,NULL),(90,16,87,2,NULL),(91,16,88,2,NULL),(92,16,89,2,NULL),(93,16,90,2,NULL),(94,16,91,2,NULL),(95,16,3,2,NULL),(96,16,50,2,NULL),(97,16,59,2,NULL),(98,16,92,2,NULL),(99,16,93,2,NULL),(100,16,94,2,NULL),(101,16,95,2,NULL),(102,16,8,2,NULL),(103,16,58,2,NULL),(104,16,60,2,NULL),(105,16,63,2,NULL),(106,16,65,2,NULL),(107,16,15,2,NULL),(108,16,44,2,NULL),(109,16,57,2,NULL),(110,16,61,2,NULL),(111,16,62,2,NULL),(112,16,64,2,NULL),(113,16,96,2,NULL),(114,16,97,2,NULL),(115,16,98,2,NULL),(116,16,99,2,NULL),(117,16,66,2,NULL),(118,16,78,2,NULL),(119,16,100,2,NULL),(120,16,105,2,NULL),(121,16,101,2,NULL),(122,16,83,2,NULL),(123,16,84,2,NULL),(124,16,85,2,NULL),(125,16,86,2,NULL),(126,16,102,2,NULL),(127,16,103,2,NULL),(128,16,104,2,NULL),(129,16,106,2,NULL),(130,11,12,2,NULL),(131,11,22,2,NULL),(132,11,33,2,NULL),(133,11,38,2,NULL),(134,4,24,2,NULL),(135,4,40,2,NULL),(136,4,41,2,NULL),(137,4,42,2,NULL),(138,4,49,2,NULL),(139,18,12,2,NULL),(140,18,22,2,NULL),(141,18,33,2,NULL),(142,18,38,2,NULL),(143,18,38,2,NULL),(144,13,12,2,NULL),(145,13,22,2,NULL),(146,13,33,2,NULL),(147,13,38,2,NULL),(148,39,35,2,NULL),(149,26,35,2,NULL),(150,115,35,2,NULL),(151,121,35,2,NULL),(152,87,35,2,NULL),(153,100,35,2,NULL),(154,64,35,2,NULL),(155,131,35,2,NULL),(156,45,35,2,NULL),(157,46,35,2,NULL),(158,60,35,2,NULL),(159,127,35,2,NULL),(160,133,35,2,NULL),(161,134,35,2,NULL),(162,138,35,2,NULL),(163,139,35,2,NULL),(164,141,35,2,NULL),(165,142,35,2,NULL),(166,143,35,2,NULL),(167,98,35,2,NULL),(168,102,35,2,NULL),(169,102,35,2,NULL),(170,104,35,2,NULL),(171,71,35,2,NULL),(172,75,35,2,NULL),(173,77,35,2,NULL),(174,80,35,2,NULL),(175,83,35,2,NULL),(176,3,29,2,NULL),(177,3,45,2,NULL),(178,3,52,2,NULL),(179,3,53,2,NULL),(180,39,46,2,NULL),(181,26,46,2,NULL),(182,115,46,2,NULL),(183,121,46,2,NULL),(184,87,46,2,NULL),(185,100,46,2,NULL),(186,64,46,2,NULL),(187,131,46,2,NULL),(188,45,46,2,NULL),(189,46,46,2,NULL),(190,60,46,2,NULL),(191,127,46,2,NULL),(192,133,46,2,NULL),(193,134,46,2,NULL),(194,138,46,2,NULL),(195,139,46,2,NULL),(196,141,46,2,NULL),(197,142,46,2,NULL),(198,143,46,2,NULL),(199,98,46,2,NULL),(200,102,46,2,NULL),(201,104,46,2,NULL),(202,71,46,2,NULL),(203,75,46,2,NULL),(204,77,46,2,NULL),(205,80,46,2,NULL),(206,83,46,2,NULL),(207,39,87,2,NULL),(208,26,87,2,NULL),(209,115,87,2,NULL),(210,121,87,2,NULL),(211,87,87,2,NULL),(212,100,87,2,NULL),(213,64,87,2,NULL),(214,131,87,2,NULL),(215,45,87,2,NULL),(216,46,87,2,NULL),(217,60,87,2,NULL),(218,127,87,2,NULL),(219,133,87,2,NULL),(220,134,87,2,NULL),(221,138,87,2,NULL),(222,139,87,2,NULL),(223,141,87,2,NULL),(224,142,87,2,NULL),(225,143,87,2,NULL),(226,98,87,2,NULL),(227,102,87,2,NULL),(228,104,87,2,NULL),(229,71,87,2,NULL),(230,75,87,2,NULL),(231,77,87,2,NULL),(232,80,87,2,NULL),(233,83,87,2,NULL),(234,39,88,2,NULL),(235,26,88,2,NULL),(236,115,88,2,NULL),(237,121,88,2,NULL),(238,87,88,2,NULL),(239,100,88,2,NULL),(240,64,88,2,NULL),(241,131,88,2,NULL),(242,45,88,2,NULL),(243,46,88,2,NULL),(244,60,88,2,NULL),(245,127,88,2,NULL),(246,133,88,2,NULL),(247,134,88,2,NULL),(248,138,88,2,NULL),(249,139,88,2,NULL),(250,141,88,2,NULL),(251,142,88,2,NULL),(252,143,88,2,NULL),(253,98,88,2,NULL),(254,102,88,2,NULL),(255,104,88,2,NULL),(256,71,88,2,NULL),(257,75,88,2,NULL),(258,77,88,2,NULL),(259,80,88,2,NULL),(260,83,88,2,NULL),(261,39,89,2,NULL),(262,39,89,2,NULL),(263,26,89,2,NULL),(264,26,89,2,NULL),(265,115,89,2,NULL),(266,121,89,2,NULL),(267,87,89,2,NULL),(268,87,89,2,NULL),(269,100,89,2,NULL),(270,100,89,2,NULL),(271,64,89,2,NULL),(272,64,89,2,NULL),(273,131,89,2,NULL),(274,45,89,2,NULL),(275,46,89,2,NULL),(276,60,89,2,NULL),(277,127,89,2,NULL),(278,133,89,2,NULL),(279,134,89,2,NULL),(280,138,89,2,NULL),(281,138,89,2,NULL),(282,139,89,2,NULL),(283,141,89,2,NULL),(284,142,89,2,NULL),(285,142,89,2,NULL),(286,143,89,2,NULL),(287,98,89,2,NULL),(288,102,89,2,NULL),(289,104,89,2,NULL),(290,71,89,2,NULL),(291,75,89,2,NULL),(292,77,89,2,NULL),(293,80,89,2,NULL),(294,83,89,2,NULL),(295,39,90,2,NULL),(296,26,90,2,NULL),(297,115,90,2,NULL),(298,121,90,2,NULL),(299,87,90,2,NULL),(300,87,90,2,NULL),(301,87,90,2,NULL),(302,100,90,2,NULL),(303,100,90,2,NULL),(304,64,90,2,NULL),(305,131,90,2,NULL),(306,131,90,2,NULL),(307,45,90,2,NULL),(308,46,90,2,NULL),(309,46,90,2,NULL),(310,60,90,2,NULL),(311,60,90,2,NULL),(312,127,90,2,NULL),(313,133,90,2,NULL),(314,133,90,2,NULL),(315,134,90,2,NULL),(316,138,90,2,NULL),(317,139,90,2,NULL),(318,141,90,2,NULL),(319,142,90,2,NULL),(320,142,90,2,NULL),(321,143,90,2,NULL),(322,98,90,2,NULL),(323,102,90,2,NULL),(324,104,90,2,NULL),(325,71,90,2,NULL),(326,75,90,2,NULL),(327,77,90,2,NULL),(328,80,90,2,NULL),(329,83,90,2,NULL),(330,39,91,2,NULL),(331,26,91,2,NULL),(332,115,91,2,NULL),(333,121,91,2,NULL),(334,87,91,2,NULL),(335,100,91,2,NULL),(336,64,91,2,NULL),(337,131,91,2,NULL),(338,45,91,2,NULL),(339,46,91,2,NULL),(340,60,91,2,NULL),(341,127,91,2,NULL),(342,133,91,2,NULL),(343,134,91,2,NULL),(344,138,91,2,NULL),(345,139,91,2,NULL),(346,141,91,2,NULL),(347,142,91,2,NULL),(348,143,91,2,NULL),(349,98,91,2,NULL),(350,102,91,2,NULL),(351,104,91,2,NULL),(352,71,91,2,NULL),(353,75,91,2,NULL),(354,77,91,2,NULL),(355,80,91,2,NULL),(356,83,91,2,NULL),(357,41,2,2,NULL),(358,41,6,2,NULL),(359,41,13,2,NULL),(360,41,21,2,NULL),(361,39,3,2,NULL),(362,26,3,2,NULL),(363,115,3,2,NULL),(364,121,3,2,NULL),(365,87,3,2,NULL),(366,100,3,2,NULL),(367,64,3,2,NULL),(368,131,3,2,NULL),(369,45,3,2,NULL),(370,46,3,2,NULL),(371,60,3,2,NULL),(372,127,3,2,NULL),(373,133,3,2,NULL),(374,134,3,2,NULL),(375,138,3,2,NULL),(376,139,3,2,NULL),(377,141,3,2,NULL),(378,142,3,2,NULL),(379,143,3,2,NULL),(380,98,3,2,NULL),(381,102,3,2,NULL),(382,104,3,2,NULL),(383,71,3,2,NULL),(384,75,3,2,NULL),(385,77,3,2,NULL),(386,80,3,2,NULL),(387,83,3,2,NULL),(388,27,29,2,NULL),(389,27,45,2,NULL),(390,27,52,2,NULL),(391,27,53,2,NULL),(392,37,12,2,NULL),(393,37,22,2,NULL),(394,37,33,2,NULL),(395,37,38,2,NULL),(396,39,50,2,NULL),(397,39,50,2,NULL),(398,39,59,2,NULL),(399,39,92,2,NULL),(400,39,93,2,NULL),(401,39,94,2,NULL),(402,39,95,2,NULL),(403,39,95,2,NULL),(404,39,8,2,NULL),(405,39,58,2,NULL),(406,39,60,2,NULL),(407,39,63,2,NULL),(408,39,65,2,NULL),(409,39,15,2,NULL),(410,39,44,2,NULL),(411,39,57,2,NULL),(412,39,61,2,NULL),(413,39,62,2,NULL),(414,39,64,2,NULL),(415,39,96,2,NULL),(416,39,97,2,NULL),(417,39,98,2,NULL),(418,39,99,2,NULL),(419,39,66,2,NULL),(420,39,78,2,NULL),(421,39,100,2,NULL),(422,39,105,2,NULL),(423,39,101,2,NULL),(424,39,83,2,NULL),(425,39,84,2,NULL),(426,39,85,2,NULL),(427,39,86,2,NULL),(428,39,102,2,NULL),(429,39,103,2,NULL),(430,39,104,2,NULL),(431,39,106,2,NULL),(432,42,12,2,NULL),(433,42,22,2,NULL),(434,42,33,2,NULL),(435,42,38,2,NULL),(436,42,38,2,NULL),(437,26,50,2,NULL),(438,26,59,2,NULL),(439,26,92,2,NULL),(440,26,93,2,NULL),(441,26,93,2,NULL),(442,26,94,2,NULL),(443,26,94,2,NULL),(444,26,94,2,NULL),(445,26,95,2,NULL),(446,26,95,2,NULL),(447,26,8,2,NULL),(448,26,58,2,NULL),(449,26,58,2,NULL),(450,26,58,2,NULL),(451,26,60,2,NULL),(452,26,60,2,NULL),(453,26,63,2,NULL),(454,26,65,2,NULL),(455,26,15,2,NULL),(456,26,15,2,NULL),(457,26,44,2,NULL),(458,26,44,2,NULL),(459,26,57,2,NULL),(460,26,61,2,NULL),(461,26,62,2,NULL),(462,26,62,2,NULL),(463,26,64,2,NULL),(464,26,96,2,NULL),(465,26,97,2,NULL),(466,26,98,2,NULL),(467,26,99,2,NULL),(468,26,99,2,NULL),(469,26,66,2,NULL),(470,26,78,2,NULL),(471,26,78,2,NULL),(472,26,100,2,NULL),(473,26,105,2,NULL),(474,26,105,2,NULL),(475,26,101,2,NULL),(476,26,83,2,NULL),(477,26,83,2,NULL),(478,26,84,2,NULL),(479,26,85,2,NULL),(480,26,85,2,NULL),(481,26,86,2,NULL),(482,26,102,2,NULL),(483,26,102,2,NULL),(484,26,103,2,NULL),(485,26,104,2,NULL),(486,26,104,2,NULL),(487,26,106,2,NULL),(488,19,12,2,NULL),(489,19,12,2,NULL),(490,19,22,2,NULL),(491,19,33,2,NULL),(492,19,33,2,NULL),(493,19,38,2,NULL),(494,35,24,2,NULL),(495,35,24,2,NULL),(496,35,40,2,NULL),(497,35,41,2,NULL),(498,35,42,2,NULL),(499,35,49,2,NULL),(500,36,12,2,NULL),(501,36,22,2,NULL),(502,36,33,2,NULL),(503,36,38,2,NULL),(504,38,12,2,NULL),(505,38,12,2,NULL),(506,38,22,2,NULL),(507,38,33,2,NULL),(508,38,38,2,NULL),(509,33,48,2,NULL),(510,33,55,2,NULL),(511,33,55,2,NULL),(512,33,56,2,NULL),(513,115,50,2,NULL),(514,121,50,2,NULL),(515,87,50,2,NULL),(516,100,50,2,NULL),(517,100,50,2,NULL),(518,64,50,2,NULL),(519,131,50,2,NULL),(520,131,50,2,NULL),(521,45,50,2,NULL),(522,46,50,2,NULL),(523,46,50,2,NULL),(524,60,50,2,NULL),(525,127,50,2,NULL),(526,127,50,2,NULL),(527,133,50,2,NULL),(528,134,50,2,NULL),(529,138,50,2,NULL),(530,139,50,2,NULL),(531,141,50,2,NULL),(532,141,50,2,NULL),(533,142,50,2,NULL),(534,143,50,2,NULL),(535,143,50,2,NULL),(536,98,50,2,NULL),(537,102,50,2,NULL),(538,104,50,2,NULL),(539,71,50,2,NULL),(540,75,50,2,NULL),(541,77,50,2,NULL),(542,80,50,2,NULL),(543,83,50,2,NULL),(544,115,59,2,NULL),(545,115,59,2,NULL),(546,121,59,2,NULL),(547,87,59,2,NULL),(548,100,59,2,NULL),(549,64,59,2,NULL),(550,131,59,2,NULL),(551,45,59,2,NULL),(552,46,59,2,NULL),(553,60,59,2,NULL),(554,127,59,2,NULL),(555,133,59,2,NULL),(556,134,59,2,NULL),(557,138,59,2,NULL),(558,139,59,2,NULL),(559,141,59,2,NULL),(560,142,59,2,NULL),(561,143,59,2,NULL),(562,98,59,2,NULL),(563,102,59,2,NULL),(564,104,59,2,NULL),(565,71,59,2,NULL),(566,75,59,2,NULL),(567,75,59,2,NULL),(568,77,59,2,NULL),(569,80,59,2,NULL),(570,83,59,2,NULL),(571,83,59,2,NULL),(572,115,92,2,NULL),(573,121,92,2,NULL),(574,87,92,2,NULL),(575,100,92,2,NULL),(576,64,92,2,NULL),(577,64,92,2,NULL),(578,131,92,2,NULL),(579,45,92,2,NULL),(580,45,92,2,NULL),(581,46,92,2,NULL),(582,60,92,2,NULL),(583,60,92,2,NULL),(584,127,92,2,NULL),(585,133,92,2,NULL),(586,133,92,2,NULL),(587,134,92,2,NULL),(588,138,92,2,NULL),(589,138,92,2,NULL),(590,139,92,2,NULL),(591,141,92,2,NULL),(592,141,92,2,NULL),(593,142,92,2,NULL),(594,143,92,2,NULL),(595,143,92,2,NULL),(596,98,92,2,NULL),(597,102,92,2,NULL),(598,102,92,2,NULL),(599,104,92,2,NULL),(600,71,92,2,NULL),(601,71,92,2,NULL),(602,75,92,2,NULL),(603,77,92,2,NULL),(604,77,92,2,NULL),(605,80,92,2,NULL),(606,83,92,2,NULL),(607,83,92,2,NULL),(608,115,93,2,NULL),(609,121,93,2,NULL),(610,121,93,2,NULL),(611,87,93,2,NULL),(612,100,93,2,NULL),(613,100,93,2,NULL),(614,64,93,2,NULL),(615,131,93,2,NULL),(616,131,93,2,NULL),(617,45,93,2,NULL),(618,46,93,2,NULL),(619,46,93,2,NULL),(620,60,93,2,NULL),(621,127,93,2,NULL),(622,127,93,2,NULL),(623,133,93,2,NULL),(624,134,93,2,NULL),(625,134,93,2,NULL),(626,138,93,2,NULL),(627,139,93,2,NULL),(628,141,93,2,NULL),(629,142,93,2,NULL),(630,143,93,2,NULL),(631,143,93,2,NULL),(632,98,93,2,NULL),(633,102,93,2,NULL),(634,104,93,2,NULL),(635,71,93,2,NULL),(636,75,93,2,NULL),(637,77,93,2,NULL),(638,80,93,2,NULL),(639,83,93,2,NULL),(640,115,94,2,NULL),(641,121,94,2,NULL),(642,121,94,2,NULL),(643,87,94,2,NULL),(644,100,94,2,NULL),(645,64,94,2,NULL),(646,131,94,2,NULL),(647,45,94,2,NULL),(648,46,94,2,NULL),(649,46,94,2,NULL),(650,60,94,2,NULL),(651,127,94,2,NULL),(652,127,94,2,NULL),(653,133,94,2,NULL),(654,134,94,2,NULL),(655,134,94,2,NULL),(656,138,94,2,NULL),(657,139,94,2,NULL),(658,139,94,2,NULL),(659,141,94,2,NULL),(660,142,94,2,NULL),(661,142,94,2,NULL),(662,143,94,2,NULL),(663,98,94,2,NULL),(664,102,94,2,NULL),(665,104,94,2,NULL),(666,71,94,2,NULL),(667,75,94,2,NULL),(668,75,94,2,NULL),(669,77,94,2,NULL),(670,80,94,2,NULL),(671,83,94,2,NULL),(672,115,95,2,NULL),(673,121,95,2,NULL),(674,87,95,2,NULL),(675,100,95,2,NULL),(676,64,95,2,NULL),(677,64,95,2,NULL),(678,131,95,2,NULL),(679,45,95,2,NULL),(680,45,95,2,NULL),(681,46,95,2,NULL),(682,60,95,2,NULL),(683,60,95,2,NULL),(684,127,95,2,NULL),(685,133,95,2,NULL),(686,133,95,2,NULL),(687,134,95,2,NULL),(688,138,95,2,NULL),(689,138,95,2,NULL),(690,139,95,2,NULL),(691,141,95,2,NULL),(692,141,95,2,NULL),(693,142,95,2,NULL),(694,143,95,2,NULL),(695,143,95,2,NULL),(696,98,95,2,NULL),(697,102,95,2,NULL),(698,102,95,2,NULL),(699,104,95,2,NULL),(700,104,95,2,NULL),(701,71,95,2,NULL),(702,75,95,2,NULL),(703,77,95,2,NULL),(704,80,95,2,NULL),(705,83,95,2,NULL),(706,115,8,2,NULL),(707,115,8,2,NULL),(708,121,8,2,NULL),(709,87,8,2,NULL),(710,87,8,2,NULL),(711,100,8,2,NULL),(712,64,8,2,NULL),(713,64,8,2,NULL),(714,131,8,2,NULL),(715,45,8,2,NULL),(716,45,8,2,NULL),(717,46,8,2,NULL),(718,60,8,2,NULL),(719,60,8,2,NULL),(720,127,8,2,NULL),(721,133,8,2,NULL),(722,133,8,2,NULL),(723,134,8,2,NULL),(724,138,8,2,NULL),(725,138,8,2,NULL),(726,139,8,2,NULL),(727,141,8,2,NULL),(728,141,8,2,NULL),(729,142,8,2,NULL),(730,143,8,2,NULL),(731,143,8,2,NULL),(732,98,8,2,NULL),(733,102,8,2,NULL),(734,102,8,2,NULL),(735,104,8,2,NULL),(736,71,8,2,NULL),(737,71,8,2,NULL),(738,75,8,2,NULL),(739,77,8,2,NULL),(740,77,8,2,NULL),(741,80,8,2,NULL),(742,83,8,2,NULL),(743,83,8,2,NULL),(744,115,58,2,NULL),(745,121,58,2,NULL),(746,121,58,2,NULL),(747,87,58,2,NULL),(748,100,58,2,NULL),(749,100,58,2,NULL),(750,64,58,2,NULL),(751,131,58,2,NULL),(752,131,58,2,NULL),(753,45,58,2,NULL),(754,46,58,2,NULL),(755,60,58,2,NULL),(756,127,58,2,NULL),(757,133,58,2,NULL),(758,133,58,2,NULL),(759,134,58,2,NULL),(760,138,58,2,NULL),(761,138,58,2,NULL),(762,139,58,2,NULL),(763,141,58,2,NULL),(764,141,58,2,NULL),(765,142,58,2,NULL),(766,143,58,2,NULL),(767,143,58,2,NULL),(768,98,58,2,NULL),(769,102,58,2,NULL),(770,102,58,2,NULL),(771,104,58,2,NULL),(772,71,58,2,NULL),(773,71,58,2,NULL),(774,75,58,2,NULL),(775,77,58,2,NULL),(776,77,58,2,NULL),(777,80,58,2,NULL),(778,83,58,2,NULL),(779,83,58,2,NULL),(780,115,60,2,NULL),(781,121,60,2,NULL),(782,121,60,2,NULL),(783,87,60,2,NULL),(784,100,60,2,NULL),(785,100,60,2,NULL),(786,64,60,2,NULL),(787,131,60,2,NULL),(788,131,60,2,NULL),(789,45,60,2,NULL),(790,46,60,2,NULL),(791,46,60,2,NULL),(792,60,60,2,NULL),(793,127,60,2,NULL),(794,127,60,2,NULL),(795,133,60,2,NULL),(796,134,60,2,NULL),(797,138,60,2,NULL),(798,139,60,2,NULL),(799,141,60,2,NULL),(800,141,60,2,NULL),(801,142,60,2,NULL),(802,143,60,2,NULL),(803,143,60,2,NULL),(804,98,60,2,NULL),(805,102,60,2,NULL),(806,102,60,2,NULL),(807,104,60,2,NULL),(808,71,60,2,NULL),(809,71,60,2,NULL),(810,75,60,2,NULL),(811,77,60,2,NULL),(812,77,60,2,NULL),(813,80,60,2,NULL),(814,83,60,2,NULL),(815,83,60,2,NULL),(816,115,63,2,NULL),(817,121,63,2,NULL),(818,121,63,2,NULL),(819,121,63,2,NULL),(820,87,63,2,NULL),(821,100,63,2,NULL),(822,100,63,2,NULL),(823,64,63,2,NULL),(824,131,63,2,NULL),(825,131,63,2,NULL),(826,45,63,2,NULL),(827,45,63,2,NULL),(828,45,63,2,NULL),(829,46,63,2,NULL),(830,60,63,2,NULL),(831,60,63,2,NULL),(832,60,63,2,NULL),(833,127,63,2,NULL),(834,133,63,2,NULL),(835,133,63,2,NULL),(836,134,63,2,NULL),(837,138,63,2,NULL),(838,138,63,2,NULL),(839,139,63,2,NULL),(840,141,63,2,NULL),(841,141,63,2,NULL),(842,142,63,2,NULL),(843,143,63,2,NULL),(844,143,63,2,NULL),(845,98,63,2,NULL),(846,102,63,2,NULL),(847,102,63,2,NULL),(848,104,63,2,NULL),(849,71,63,2,NULL),(850,71,63,2,NULL),(851,75,63,2,NULL),(852,77,63,2,NULL),(853,77,63,2,NULL),(854,80,63,2,NULL),(855,83,63,2,NULL),(856,83,63,2,NULL),(857,115,65,2,NULL),(858,121,65,2,NULL),(859,121,65,2,NULL),(860,87,65,2,NULL),(861,100,65,2,NULL),(862,64,65,2,NULL),(863,131,65,2,NULL),(864,45,65,2,NULL),(865,45,65,2,NULL),(866,46,65,2,NULL),(867,60,65,2,NULL),(868,60,65,2,NULL),(869,127,65,2,NULL),(870,133,65,2,NULL),(871,133,65,2,NULL),(872,134,65,2,NULL),(873,138,65,2,NULL),(874,138,65,2,NULL),(875,139,65,2,NULL),(876,141,65,2,NULL),(877,141,65,2,NULL),(878,142,65,2,NULL),(879,143,65,2,NULL),(880,143,65,2,NULL),(881,98,65,2,NULL),(882,102,65,2,NULL),(883,102,65,2,NULL),(884,104,65,2,NULL),(885,71,65,2,NULL),(886,71,65,2,NULL),(887,75,65,2,NULL),(888,77,65,2,NULL),(889,80,65,2,NULL),(890,83,65,2,NULL),(891,81,2,2,NULL),(892,81,2,2,NULL),(893,81,6,2,NULL),(894,81,13,2,NULL),(895,81,13,2,NULL),(896,81,21,2,NULL),(897,103,2,2,NULL),(898,103,2,2,NULL),(899,103,6,2,NULL),(900,103,13,2,NULL),(901,103,13,2,NULL),(902,103,21,2,NULL),(903,115,15,2,NULL),(904,115,15,2,NULL),(905,121,15,2,NULL),(906,87,15,2,NULL),(907,87,15,2,NULL),(908,100,15,2,NULL),(909,64,15,2,NULL),(910,64,15,2,NULL),(911,131,15,2,NULL),(912,45,15,2,NULL),(913,45,15,2,NULL),(914,46,15,2,NULL),(915,60,15,2,NULL),(916,60,15,2,NULL),(917,127,15,2,NULL),(918,133,15,2,NULL),(919,133,15,2,NULL),(920,134,15,2,NULL),(921,138,15,2,NULL),(922,138,15,2,NULL),(923,139,15,2,NULL),(924,141,15,2,NULL),(925,141,15,2,NULL),(926,142,15,2,NULL),(927,143,15,2,NULL),(928,143,15,2,NULL),(929,98,15,2,NULL),(930,102,15,2,NULL),(931,102,15,2,NULL),(932,104,15,2,NULL),(933,71,15,2,NULL),(934,71,15,2,NULL),(935,75,15,2,NULL),(936,77,15,2,NULL),(937,77,15,2,NULL),(938,80,15,2,NULL),(939,83,15,2,NULL),(940,83,15,2,NULL),(941,63,29,2,NULL),(942,63,45,2,NULL),(943,63,45,2,NULL),(944,63,52,2,NULL),(945,63,53,2,NULL),(946,63,53,2,NULL),(947,108,29,2,NULL),(948,108,45,2,NULL),(949,108,45,2,NULL),(950,108,52,2,NULL),(951,108,53,2,NULL),(952,108,53,2,NULL),(953,51,12,2,NULL),(954,51,22,2,NULL),(955,51,22,2,NULL),(956,51,33,2,NULL),(957,51,38,2,NULL),(958,51,38,2,NULL),(959,122,12,2,NULL),(960,122,22,2,NULL),(961,122,22,2,NULL),(962,122,33,2,NULL),(963,122,38,2,NULL),(964,122,38,2,NULL),(965,115,44,2,NULL),(966,115,44,2,NULL),(967,115,44,2,NULL),(968,121,44,2,NULL),(969,115,57,2,NULL),(970,115,57,2,NULL),(971,121,57,2,NULL),(972,115,61,2,NULL),(973,121,61,2,NULL),(974,115,62,2,NULL),(975,121,62,2,NULL),(976,115,64,2,NULL),(977,121,64,2,NULL),(978,115,96,2,NULL),(979,121,96,2,NULL),(980,115,97,2,NULL),(981,121,97,2,NULL),(982,115,98,2,NULL),(983,121,98,2,NULL),(984,115,99,2,NULL),(985,121,99,2,NULL),(986,115,66,2,NULL),(987,121,66,2,NULL),(988,115,78,2,NULL),(989,121,78,2,NULL),(990,115,100,2,NULL),(991,121,100,2,NULL),(992,121,100,2,NULL),(993,115,105,2,NULL),(994,121,105,2,NULL),(995,121,105,2,NULL),(996,115,101,2,NULL),(997,121,101,2,NULL),(998,121,101,2,NULL),(999,115,83,2,NULL),(1000,121,83,2,NULL),(1001,121,83,2,NULL),(1002,115,84,2,NULL),(1003,121,84,2,NULL),(1004,121,84,2,NULL),(1005,115,85,2,NULL),(1006,121,85,2,NULL),(1007,121,85,2,NULL),(1008,115,86,2,NULL),(1009,121,86,2,NULL),(1010,121,86,2,NULL),(1011,115,102,2,NULL),(1012,121,102,2,NULL),(1013,121,102,2,NULL),(1014,115,103,2,NULL),(1015,121,103,2,NULL),(1016,121,103,2,NULL),(1017,115,104,2,NULL),(1018,121,104,2,NULL),(1019,121,104,2,NULL),(1020,115,106,2,NULL),(1021,121,106,2,NULL),(1022,121,106,2,NULL),(1023,70,12,2,NULL),(1024,70,22,2,NULL),(1025,70,22,2,NULL),(1026,70,33,2,NULL),(1027,70,38,2,NULL),(1028,70,38,2,NULL),(1029,111,12,2,NULL),(1030,111,22,2,NULL),(1031,111,22,2,NULL),(1032,111,33,2,NULL),(1033,111,38,2,NULL),(1034,111,38,2,NULL),(1035,87,44,2,NULL),(1036,87,44,2,NULL),(1037,87,44,2,NULL),(1038,100,44,2,NULL),(1039,87,57,2,NULL),(1040,87,57,2,NULL),(1041,100,57,2,NULL),(1042,87,61,2,NULL),(1043,87,61,2,NULL),(1044,100,61,2,NULL),(1045,87,62,2,NULL),(1046,87,62,2,NULL),(1047,100,62,2,NULL),(1048,87,64,2,NULL),(1049,87,64,2,NULL),(1050,100,64,2,NULL),(1051,87,96,2,NULL),(1052,87,96,2,NULL),(1053,100,96,2,NULL),(1054,87,97,2,NULL),(1055,87,97,2,NULL),(1056,100,97,2,NULL),(1057,87,98,2,NULL),(1058,87,98,2,NULL),(1059,100,98,2,NULL),(1060,87,99,2,NULL),(1061,87,99,2,NULL),(1062,100,99,2,NULL),(1063,87,66,2,NULL),(1064,87,66,2,NULL),(1065,100,66,2,NULL),(1066,87,78,2,NULL),(1067,100,78,2,NULL),(1068,87,100,2,NULL),(1069,100,100,2,NULL),(1070,100,100,2,NULL),(1071,87,105,2,NULL),(1072,100,105,2,NULL),(1073,100,105,2,NULL),(1074,87,101,2,NULL),(1075,100,101,2,NULL),(1076,100,101,2,NULL),(1077,87,83,2,NULL),(1078,100,83,2,NULL),(1079,100,83,2,NULL),(1080,87,84,2,NULL),(1081,100,84,2,NULL),(1082,100,84,2,NULL),(1083,87,85,2,NULL),(1084,100,85,2,NULL),(1085,100,85,2,NULL),(1086,87,86,2,NULL),(1087,100,86,2,NULL),(1088,100,86,2,NULL),(1089,87,102,2,NULL),(1090,100,102,2,NULL),(1091,100,102,2,NULL),(1092,87,103,2,NULL),(1093,100,103,2,NULL),(1094,100,103,2,NULL),(1095,87,104,2,NULL),(1096,100,104,2,NULL),(1097,100,104,2,NULL),(1098,87,106,2,NULL),(1099,100,106,2,NULL),(1100,100,106,2,NULL),(1101,49,12,2,NULL),(1102,49,22,2,NULL),(1103,49,22,2,NULL),(1104,49,33,2,NULL),(1105,49,38,2,NULL),(1106,49,38,2,NULL),(1107,62,12,2,NULL),(1108,62,22,2,NULL),(1109,62,22,2,NULL),(1110,62,33,2,NULL),(1111,62,38,2,NULL),(1112,62,38,2,NULL),(1113,65,24,2,NULL),(1114,65,40,2,NULL),(1115,65,40,2,NULL),(1116,65,41,2,NULL),(1117,65,42,2,NULL),(1118,65,42,2,NULL),(1119,65,49,2,NULL),(1120,74,24,2,NULL),(1121,74,24,2,NULL),(1122,74,40,2,NULL),(1123,74,41,2,NULL),(1124,74,41,2,NULL),(1125,74,42,2,NULL),(1126,74,49,2,NULL),(1127,74,49,2,NULL),(1128,92,12,2,NULL),(1129,92,22,2,NULL),(1130,92,22,2,NULL),(1131,92,33,2,NULL),(1132,92,38,2,NULL),(1133,92,38,2,NULL),(1134,116,12,2,NULL),(1135,116,22,2,NULL),(1136,116,22,2,NULL),(1137,116,33,2,NULL),(1138,116,38,2,NULL),(1139,116,38,2,NULL),(1140,78,12,2,NULL),(1141,78,22,2,NULL),(1142,78,33,2,NULL),(1143,78,38,2,NULL),(1144,113,12,2,NULL),(1145,113,22,2,NULL),(1146,113,33,2,NULL),(1147,113,38,2,NULL),(1148,54,51,2,NULL),(1149,54,51,2,NULL),(1150,88,51,2,NULL),(1151,95,54,2,NULL),(1152,95,54,2,NULL),(1153,101,54,2,NULL),(1154,119,54,2,NULL),(1155,123,54,2,NULL),(1156,64,44,2,NULL),(1157,131,44,2,NULL),(1158,131,44,2,NULL),(1159,45,44,2,NULL),(1160,46,44,2,NULL),(1161,46,44,2,NULL),(1162,60,44,2,NULL),(1163,127,44,2,NULL),(1164,127,44,2,NULL),(1165,133,44,2,NULL),(1166,134,44,2,NULL),(1167,134,44,2,NULL),(1168,138,44,2,NULL),(1169,139,44,2,NULL),(1170,139,44,2,NULL),(1171,141,44,2,NULL),(1172,142,44,2,NULL),(1173,142,44,2,NULL),(1174,143,44,2,NULL),(1175,98,44,2,NULL),(1176,98,44,2,NULL),(1177,102,44,2,NULL),(1178,104,44,2,NULL),(1179,104,44,2,NULL),(1180,71,44,2,NULL),(1181,71,44,2,NULL),(1182,71,44,2,NULL),(1183,75,44,2,NULL),(1184,77,44,2,NULL),(1185,77,44,2,NULL),(1186,80,44,2,NULL),(1187,83,44,2,NULL),(1188,83,44,2,NULL),(1189,64,57,2,NULL),(1190,131,57,2,NULL),(1191,45,57,2,NULL),(1192,45,57,2,NULL),(1193,45,57,2,NULL),(1194,46,57,2,NULL),(1195,60,57,2,NULL),(1196,60,57,2,NULL),(1197,127,57,2,NULL),(1198,133,57,2,NULL),(1199,133,57,2,NULL),(1200,134,57,2,NULL),(1201,138,57,2,NULL),(1202,138,57,2,NULL),(1203,139,57,2,NULL),(1204,141,57,2,NULL),(1205,141,57,2,NULL),(1206,142,57,2,NULL),(1207,143,57,2,NULL),(1208,143,57,2,NULL),(1209,98,57,2,NULL),(1210,102,57,2,NULL),(1211,102,57,2,NULL),(1212,104,57,2,NULL),(1213,71,57,2,NULL),(1214,71,57,2,NULL),(1215,75,57,2,NULL),(1216,77,57,2,NULL),(1217,80,57,2,NULL),(1218,83,57,2,NULL),(1219,64,61,2,NULL),(1220,131,61,2,NULL),(1221,45,61,2,NULL),(1222,46,61,2,NULL),(1223,60,61,2,NULL),(1224,60,61,2,NULL),(1225,127,61,2,NULL),(1226,133,61,2,NULL),(1227,133,61,2,NULL),(1228,134,61,2,NULL),(1229,138,61,2,NULL),(1230,138,61,2,NULL),(1231,139,61,2,NULL),(1232,141,61,2,NULL),(1233,141,61,2,NULL),(1234,142,61,2,NULL),(1235,143,61,2,NULL),(1236,143,61,2,NULL),(1237,98,61,2,NULL),(1238,102,61,2,NULL),(1239,102,61,2,NULL),(1240,104,61,2,NULL),(1241,71,61,2,NULL),(1242,75,61,2,NULL),(1243,77,61,2,NULL),(1244,80,61,2,NULL),(1245,83,61,2,NULL),(1246,82,29,2,NULL),(1247,82,45,2,NULL),(1248,82,52,2,NULL),(1249,82,52,2,NULL),(1250,82,52,2,NULL),(1251,82,53,2,NULL),(1252,91,29,2,NULL),(1253,91,29,2,NULL),(1254,91,45,2,NULL),(1255,91,52,2,NULL),(1256,91,52,2,NULL),(1257,91,53,2,NULL),(1258,64,62,2,NULL),(1259,131,62,2,NULL),(1260,45,62,2,NULL),(1261,46,62,2,NULL),(1262,60,62,2,NULL),(1263,60,62,2,NULL),(1264,127,62,2,NULL),(1265,133,62,2,NULL),(1266,133,62,2,NULL),(1267,134,62,2,NULL),(1268,138,62,2,NULL),(1269,139,62,2,NULL),(1270,141,62,2,NULL),(1271,142,62,2,NULL),(1272,143,62,2,NULL),(1273,98,62,2,NULL),(1274,102,62,2,NULL),(1275,102,62,2,NULL),(1276,104,62,2,NULL),(1277,71,62,2,NULL),(1278,71,62,2,NULL),(1279,75,62,2,NULL),(1280,77,62,2,NULL),(1281,80,62,2,NULL),(1282,80,62,2,NULL),(1283,83,62,2,NULL),(1284,76,48,2,NULL),(1285,76,48,2,NULL),(1286,76,55,2,NULL),(1287,76,56,2,NULL),(1288,79,48,2,NULL),(1289,79,55,2,NULL),(1290,79,56,2,NULL),(1291,64,64,2,NULL),(1292,64,64,2,NULL),(1293,131,64,2,NULL),(1294,45,64,2,NULL),(1295,46,64,2,NULL),(1296,60,64,2,NULL),(1297,127,64,2,NULL),(1298,133,64,2,NULL),(1299,134,64,2,NULL),(1300,138,64,2,NULL),(1301,139,64,2,NULL),(1302,141,64,2,NULL),(1303,141,64,2,NULL),(1304,142,64,2,NULL),(1305,143,64,2,NULL),(1306,98,64,2,NULL),(1307,102,64,2,NULL),(1308,104,64,2,NULL),(1309,71,64,2,NULL),(1310,75,64,2,NULL),(1311,77,64,2,NULL),(1312,77,64,2,NULL),(1313,80,64,2,NULL),(1314,83,64,2,NULL),(1315,64,96,2,NULL),(1316,64,96,2,NULL),(1317,131,96,2,NULL),(1318,131,96,2,NULL),(1319,45,96,2,NULL),(1320,46,96,2,NULL),(1321,60,96,2,NULL),(1322,127,96,2,NULL),(1323,127,96,2,NULL),(1324,133,96,2,NULL),(1325,134,96,2,NULL),(1326,138,96,2,NULL),(1327,139,96,2,NULL),(1328,141,96,2,NULL),(1329,142,96,2,NULL),(1330,143,96,2,NULL),(1331,98,96,2,NULL),(1332,102,96,2,NULL),(1333,102,96,2,NULL),(1334,102,96,2,NULL),(1335,104,96,2,NULL),(1336,71,96,2,NULL),(1337,75,96,2,NULL),(1338,77,96,2,NULL),(1339,77,96,2,NULL),(1340,80,96,2,NULL),(1341,83,96,2,NULL),(1342,64,97,2,NULL),(1343,64,97,2,NULL),(1344,131,97,2,NULL),(1345,45,97,2,NULL),(1346,46,97,2,NULL),(1347,60,97,2,NULL),(1348,127,97,2,NULL),(1349,133,97,2,NULL),(1350,134,97,2,NULL),(1351,138,97,2,NULL),(1352,139,97,2,NULL),(1353,141,97,2,NULL),(1354,141,97,2,NULL),(1355,142,97,2,NULL),(1356,142,97,2,NULL),(1357,143,97,2,NULL),(1358,143,97,2,NULL),(1359,98,97,2,NULL),(1360,102,97,2,NULL),(1361,104,97,2,NULL),(1362,104,97,2,NULL),(1363,71,97,2,NULL),(1364,75,97,2,NULL),(1365,77,97,2,NULL),(1366,77,97,2,NULL),(1367,80,97,2,NULL),(1368,83,97,2,NULL),(1369,64,98,2,NULL),(1370,64,98,2,NULL),(1371,131,98,2,NULL),(1372,45,98,2,NULL),(1373,46,98,2,NULL),(1374,60,98,2,NULL),(1375,127,98,2,NULL),(1376,127,98,2,NULL),(1377,127,98,2,NULL),(1378,133,98,2,NULL),(1379,134,98,2,NULL),(1380,134,98,2,NULL),(1381,138,98,2,NULL),(1382,139,98,2,NULL),(1383,141,98,2,NULL),(1384,142,98,2,NULL),(1385,143,98,2,NULL),(1386,98,98,2,NULL),(1387,98,98,2,NULL),(1388,102,98,2,NULL),(1389,102,98,2,NULL),(1390,104,98,2,NULL),(1391,71,98,2,NULL),(1392,75,98,2,NULL),(1393,75,98,2,NULL),(1394,77,98,2,NULL),(1395,80,98,2,NULL),(1396,80,98,2,NULL),(1397,83,98,2,NULL),(1398,83,98,2,NULL),(1399,64,99,2,NULL),(1400,64,99,2,NULL),(1401,131,99,2,NULL),(1402,45,99,2,NULL),(1403,46,99,2,NULL),(1404,60,99,2,NULL),(1405,60,99,2,NULL),(1406,127,99,2,NULL),(1407,133,99,2,NULL),(1408,134,99,2,NULL),(1409,138,99,2,NULL),(1410,139,99,2,NULL),(1411,141,99,2,NULL),(1412,141,99,2,NULL),(1413,142,99,2,NULL),(1414,143,99,2,NULL),(1415,98,99,2,NULL),(1416,102,99,2,NULL),(1417,104,99,2,NULL),(1418,104,99,2,NULL),(1419,71,99,2,NULL),(1420,75,99,2,NULL),(1421,77,99,2,NULL),(1422,80,99,2,NULL),(1423,80,99,2,NULL),(1424,83,99,2,NULL),(1425,128,67,2,NULL),(1426,64,66,2,NULL),(1427,131,66,2,NULL),(1428,45,66,2,NULL),(1429,46,66,2,NULL),(1430,60,66,2,NULL),(1431,127,66,2,NULL),(1432,133,66,2,NULL),(1433,134,66,2,NULL),(1434,138,66,2,NULL),(1435,139,66,2,NULL),(1436,141,66,2,NULL),(1437,142,66,2,NULL),(1438,143,66,2,NULL),(1439,98,66,2,NULL),(1440,102,66,2,NULL),(1441,104,66,2,NULL),(1442,71,66,2,NULL),(1443,75,66,2,NULL),(1444,77,66,2,NULL),(1445,80,66,2,NULL),(1446,83,66,2,NULL),(1447,44,72,2,NULL),(1448,64,78,2,NULL),(1449,64,100,2,NULL),(1450,64,105,2,NULL),(1451,64,101,2,NULL),(1452,64,83,2,NULL),(1453,64,84,2,NULL),(1454,64,85,2,NULL),(1455,64,86,2,NULL),(1456,64,102,2,NULL),(1457,64,103,2,NULL),(1458,64,104,2,NULL),(1459,64,106,2,NULL),(1460,140,72,2,NULL),(1461,131,78,2,NULL),(1462,131,100,2,NULL),(1463,131,105,2,NULL),(1464,131,101,2,NULL),(1465,131,83,2,NULL),(1466,131,84,2,NULL),(1467,131,85,2,NULL),(1468,131,86,2,NULL),(1469,131,102,2,NULL),(1470,131,103,2,NULL),(1471,131,104,2,NULL),(1472,131,106,2,NULL),(1473,69,72,2,NULL),(1474,89,75,2,NULL),(1475,112,72,2,NULL),(1476,67,72,2,NULL),(1477,144,77,2,NULL),(1478,45,78,2,NULL),(1479,46,78,2,NULL),(1480,60,78,2,NULL),(1481,127,78,2,NULL),(1482,133,78,2,NULL),(1483,134,78,2,NULL),(1484,138,78,2,NULL),(1485,139,78,2,NULL),(1486,45,100,2,NULL),(1487,46,100,2,NULL),(1488,60,100,2,NULL),(1489,127,100,2,NULL),(1490,133,100,2,NULL),(1491,134,100,2,NULL),(1492,138,100,2,NULL),(1493,139,100,2,NULL),(1494,45,105,2,NULL),(1495,46,105,2,NULL),(1496,60,105,2,NULL),(1497,127,105,2,NULL),(1498,133,105,2,NULL),(1499,134,105,2,NULL),(1500,138,105,2,NULL),(1501,139,105,2,NULL),(1502,45,101,2,NULL),(1503,46,101,2,NULL),(1504,60,101,2,NULL),(1505,127,101,2,NULL),(1506,133,101,2,NULL),(1507,134,101,2,NULL),(1508,138,101,2,NULL),(1509,139,101,2,NULL),(1510,45,83,2,NULL),(1511,46,83,2,NULL),(1512,60,83,2,NULL),(1513,127,83,2,NULL),(1514,133,83,2,NULL),(1515,134,83,2,NULL),(1516,138,83,2,NULL),(1517,139,83,2,NULL),(1518,45,84,2,NULL),(1519,46,84,2,NULL),(1520,60,84,2,NULL),(1521,127,84,2,NULL),(1522,133,84,2,NULL),(1523,134,84,2,NULL),(1524,138,84,2,NULL),(1525,139,84,2,NULL),(1526,45,85,2,NULL),(1527,46,85,2,NULL),(1528,60,85,2,NULL),(1529,127,85,2,NULL),(1530,133,85,2,NULL),(1531,134,85,2,NULL),(1532,138,85,2,NULL),(1533,139,85,2,NULL),(1534,45,86,2,NULL),(1535,46,86,2,NULL),(1536,60,86,2,NULL),(1537,127,86,2,NULL),(1538,133,86,2,NULL),(1539,134,86,2,NULL),(1540,138,86,2,NULL),(1541,139,86,2,NULL),(1542,45,102,2,NULL),(1543,46,102,2,NULL),(1544,60,102,2,NULL),(1545,127,102,2,NULL),(1546,133,102,2,NULL),(1547,134,102,2,NULL),(1548,138,102,2,NULL),(1549,139,102,2,NULL),(1550,45,103,2,NULL),(1551,46,103,2,NULL),(1552,60,103,2,NULL),(1553,127,103,2,NULL),(1554,133,103,2,NULL),(1555,134,103,2,NULL),(1556,138,103,2,NULL),(1557,139,103,2,NULL),(1558,45,104,2,NULL),(1559,46,104,2,NULL),(1560,60,104,2,NULL),(1561,127,104,2,NULL),(1562,133,104,2,NULL),(1563,134,104,2,NULL),(1564,138,104,2,NULL),(1565,139,104,2,NULL),(1566,45,106,2,NULL),(1567,46,106,2,NULL),(1568,60,106,2,NULL),(1569,127,106,2,NULL),(1570,133,106,2,NULL),(1571,134,106,2,NULL),(1572,138,106,2,NULL),(1573,139,106,2,NULL),(1574,141,78,2,NULL),(1575,142,78,2,NULL),(1576,143,78,2,NULL),(1577,98,78,2,NULL),(1578,102,78,2,NULL),(1579,104,78,2,NULL),(1580,71,78,2,NULL),(1581,75,78,2,NULL),(1582,77,78,2,NULL),(1583,80,78,2,NULL),(1584,83,78,2,NULL),(1585,141,105,2,NULL),(1586,142,105,2,NULL),(1587,143,105,2,NULL),(1588,141,101,2,NULL),(1589,142,101,2,NULL),(1590,143,101,2,NULL),(1591,141,83,2,NULL),(1592,142,83,2,NULL),(1593,143,83,2,NULL),(1594,141,84,2,NULL),(1595,142,84,2,NULL),(1596,143,84,2,NULL),(1597,141,85,2,NULL),(1598,142,85,2,NULL),(1599,143,85,2,NULL),(1600,141,86,2,NULL),(1601,142,86,2,NULL),(1602,143,86,2,NULL),(1603,141,102,2,NULL),(1604,142,102,2,NULL),(1605,143,102,2,NULL),(1606,141,103,2,NULL),(1607,142,103,2,NULL),(1608,143,103,2,NULL),(1609,141,104,2,NULL),(1610,142,104,2,NULL),(1611,143,104,2,NULL),(1612,141,106,2,NULL),(1613,142,106,2,NULL),(1614,143,106,2,NULL),(1615,98,100,2,NULL),(1616,102,100,2,NULL),(1617,104,100,2,NULL),(1618,71,100,2,NULL),(1619,75,100,2,NULL),(1620,77,100,2,NULL),(1621,80,100,2,NULL),(1622,83,100,2,NULL),(1623,98,101,2,NULL),(1624,102,101,2,NULL),(1625,104,101,2,NULL),(1626,98,83,2,NULL),(1627,102,83,2,NULL),(1628,104,83,2,NULL),(1629,98,84,2,NULL),(1630,102,84,2,NULL),(1631,104,84,2,NULL),(1632,98,85,2,NULL),(1633,102,85,2,NULL),(1634,104,85,2,NULL),(1635,98,86,2,NULL),(1636,102,86,2,NULL),(1637,104,86,2,NULL),(1638,98,102,2,NULL),(1639,102,102,2,NULL),(1640,104,102,2,NULL),(1641,98,103,2,NULL),(1642,102,103,2,NULL),(1643,104,103,2,NULL),(1644,98,104,2,NULL),(1645,102,104,2,NULL),(1646,104,104,2,NULL),(1647,98,106,2,NULL),(1648,102,106,2,NULL),(1649,104,106,2,NULL),(1650,71,105,2,NULL),(1651,75,105,2,NULL),(1652,77,105,2,NULL),(1653,80,105,2,NULL),(1654,83,105,2,NULL),(1655,71,83,2,NULL),(1656,75,83,2,NULL),(1657,77,83,2,NULL),(1658,80,83,2,NULL),(1659,83,83,2,NULL),(1660,71,84,2,NULL),(1661,75,84,2,NULL),(1662,77,84,2,NULL),(1663,80,84,2,NULL),(1664,83,84,2,NULL),(1665,71,85,2,NULL),(1666,75,85,2,NULL),(1667,77,85,2,NULL),(1668,80,85,2,NULL),(1669,83,85,2,NULL),(1670,71,86,2,NULL),(1671,75,86,2,NULL),(1672,77,86,2,NULL),(1673,80,86,2,NULL),(1674,83,86,2,NULL),(1675,71,102,2,NULL),(1676,75,102,2,NULL),(1677,77,102,2,NULL),(1678,80,102,2,NULL),(1679,83,102,2,NULL),(1680,71,103,2,NULL),(1681,75,103,2,NULL),(1682,77,103,2,NULL),(1683,80,103,2,NULL),(1684,83,103,2,NULL),(1685,71,104,2,NULL),(1686,75,104,2,NULL),(1687,77,104,2,NULL),(1688,80,104,2,NULL),(1689,83,104,2,NULL),(1690,71,106,2,NULL),(1691,75,106,2,NULL),(1692,77,106,2,NULL),(1693,80,106,2,NULL),(1694,83,106,2,NULL),(1695,118,79,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:39
