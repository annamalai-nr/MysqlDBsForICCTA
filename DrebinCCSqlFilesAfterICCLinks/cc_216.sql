-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_216
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'(.*).SEND_SMS'),(14,'android.intent.action.BATTERY_CHANGED'),(19,'android.intent.action.BATTERY_LOW'),(16,'android.intent.action.BATTERY_OKAY'),(8,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(9,'android.provider.Telephony.SMS_RECEIVED'),(20,'android.settings.APPLICATION_DETAILS_SETTINGS'),(15,'android.settings.LOCATION_SOURCE_SETTINGS'),(12,'com.android.vending.INSTALL_REFERRER'),(7,'com.extend.battery.intent.http.SHOW'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(10,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',83),(3,'com.extend.battery',89);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.Splash'),(3,1,'com.extend.battery.TabHandler'),(4,1,'com.extend.battery.TabHandler'),(5,1,'com.extend.battery.TaskKillerActivity'),(6,1,'com.extend.battery.UninstallerActivity'),(7,1,'com.extend.battery.UninstallerActivity'),(8,1,'com.extend.battery.SecurityAuditActivity'),(9,1,'com.extend.battery.InstallerActivity'),(10,1,'com.extend.battery.InstallerActivity'),(11,1,'com.extend.battery.FeaturesActivity'),(12,1,'com.extend.battery.BoosterActivity'),(13,1,'com.extend.battery.BoosterActivity'),(14,1,'com.extend.battery.BatteryActivity'),(15,1,'com.extend.battery.RatingActivity'),(16,1,'com.extend.battery.RatingActivity'),(17,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(18,2,'com.extend.battery.Splash'),(19,1,'com.itframework.installer.util.NonMarketDialogActivity'),(20,1,'com.extend.battery.BatteryService'),(21,1,'com.extend.battery.BatteryService'),(22,2,'com.extend.battery.TabHandler'),(23,1,'com.itframework.installer.util.InstallWorker'),(24,1,'com.zanalytics.sms.SmsReceiverService'),(25,1,'com.itframework.installer.updater.UpdateReceiver'),(26,2,'com.extend.battery.TaskKillerActivity'),(27,2,'com.extend.battery.UninstallerActivity'),(28,2,'com.extend.battery.SecurityAuditActivity'),(29,1,'com.extend.battery.NotificationReceiver'),(30,2,'com.extend.battery.InstallerActivity'),(31,2,'com.extend.battery.FeaturesActivity'),(32,1,'com.extend.battery.BootReceiver'),(33,1,'com.extend.battery.BootReceiver'),(34,2,'com.extend.battery.BoosterActivity'),(35,3,'com.extend.battery.Splash'),(36,2,'com.extend.battery.BatteryActivity'),(37,1,'com.zanalytics.sms.SmsReceiver'),(38,2,'com.extend.battery.RatingActivity'),(39,3,'com.extend.battery.TabHandler'),(40,2,'com.extend.battery.BatteryService'),(41,2,'com.zanalytics.sms.SmsReceiverService'),(42,3,'com.extend.battery.TaskKillerActivity'),(43,2,'com.zanalytics.sms.SmsReceiver'),(44,3,'com.extend.battery.UninstallerActivity'),(45,3,'com.extend.battery.SecurityAuditActivity'),(46,3,'com.extend.battery.InstallerActivity'),(47,2,'com.tapjoy.TapjoyReferralTracker'),(48,3,'com.extend.battery.FeaturesActivity'),(49,3,'com.extend.battery.BoosterActivity'),(50,3,'com.extend.battery.BatteryActivity'),(51,3,'com.extend.battery.RatingActivity'),(52,3,'com.extend.battery.BatteryService'),(53,3,'com.zanalytics.sms.SmsReceiverService'),(54,3,'com.extend.battery.NotificationReceiver'),(55,3,'com.extend.battery.BootReceiver'),(56,3,'com.zanalytics.sms.SmsReceiver'),(57,3,'com.tapjoy.TapjoyReferralTracker'),(58,2,'com.extend.battery.aw'),(59,2,'com.extend.battery.g'),(60,2,'com.extend.battery.i'),(61,2,'com.extend.battery.j'),(62,2,'com.zanalytics.sms.c'),(63,2,'com.zanalytics.sms.j'),(64,2,'com.extend.battery.ay'),(65,2,'com.extend.battery.s'),(66,2,'com.extend.battery.f'),(67,2,'com.zanalytics.sms.a'),(68,1,'com.extend.battery.d'),(69,1,'com.extend.battery.c'),(70,1,'com.extend.battery.a'),(71,1,'com.zanalytics.sms.c'),(72,1,'com.itframework.installer.a.b'),(73,1,'com.zanalytics.sms.a'),(74,1,'com.zanalytics.sms.j'),(75,1,'com.extend.battery.ba'),(76,1,'com.extend.battery.bb'),(77,1,'com.extend.battery.k'),(78,1,'com.extend.battery.features.s');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,45,'pdus'),(2,37,'technology'),(3,22,'finishedTitle'),(4,22,'downloadStarting'),(5,14,'technology'),(6,22,'downloadingWait'),(7,22,'downloadingToast'),(8,22,'showNotifications'),(9,22,'callbackIntent'),(10,17,'forceDownload'),(11,17,'downloadingWait'),(12,22,'downloadingProgress'),(13,25,'URL'),(14,38,'pdus'),(15,22,'filename'),(16,17,'filename'),(17,22,'forceDownload'),(18,22,'downloadingTitle'),(19,30,'clickevent'),(20,17,'finishedText'),(21,17,'downloadingProgress'),(22,17,'url'),(23,17,'downloadingTitle'),(24,17,'callbackIntent'),(25,22,'finishedText'),(26,17,'finishedTicker'),(27,17,'downloadingTicker'),(28,17,'finishedTitle'),(29,17,'downloadStarting'),(30,22,'finishedTicker'),(31,17,'downloadingToast'),(32,22,'url'),(33,22,'downloadingTicker');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,23,'s',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,25,'r',1,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,29,'r',1,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,32,'r',1,NULL,NULL),(34,33,'r',1,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,37,'r',1,NULL,NULL),(39,37,'r',1,NULL,NULL),(40,38,'a',0,NULL,NULL),(41,39,'a',0,NULL,NULL),(42,40,'s',0,NULL,NULL),(43,41,'s',0,NULL,NULL),(44,42,'a',0,NULL,NULL),(45,43,'r',1,NULL,NULL),(46,44,'a',0,NULL,NULL),(47,45,'a',0,NULL,NULL),(48,46,'a',0,NULL,NULL),(49,47,'r',1,NULL,NULL),(50,48,'a',0,NULL,NULL),(51,49,'a',0,NULL,NULL),(52,50,'a',0,NULL,NULL),(53,51,'a',0,NULL,NULL),(54,52,'s',0,NULL,NULL),(55,53,'s',0,NULL,NULL),(56,54,'r',1,NULL,NULL),(57,55,'r',1,NULL,NULL),(58,56,'r',1,NULL,NULL),(59,57,'r',1,NULL,NULL),(60,59,'r',1,NULL,NULL),(61,60,'r',1,NULL,NULL),(62,61,'r',1,NULL,NULL),(63,62,'r',1,NULL,NULL),(64,68,'r',1,NULL,NULL),(65,69,'r',1,NULL,NULL),(66,70,'r',1,NULL,NULL),(67,71,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,28),(2,1,37),(3,2,18),(4,3,45),(5,4,28),(6,4,37),(7,5,35),(8,5,37),(9,6,18),(10,7,45),(11,8,23),(12,9,27),(13,9,37),(14,10,37),(15,11,18),(16,12,37),(17,12,31),(18,13,37),(19,13,29),(20,14,31),(21,14,29),(22,14,35),(23,14,37),(24,14,28),(25,15,35),(26,15,37),(27,16,45),(28,17,28),(29,18,29),(30,19,31),(31,20,28),(32,20,29),(33,20,31),(34,20,37),(35,21,31),(36,21,28),(37,21,29),(38,21,37),(39,22,18),(40,23,12),(41,23,14),(42,24,4),(43,25,30),(44,26,14),(45,27,22),(46,28,8),(47,28,9),(48,28,6),(49,28,14),(50,29,22),(51,30,38),(52,31,38),(53,32,1),(54,33,6),(55,33,14),(56,34,6),(57,35,8),(58,36,6),(59,36,14),(60,37,6),(61,37,14),(62,38,22),(63,39,1),(64,40,1),(65,41,12),(66,42,38),(67,43,8),(68,43,14),(69,44,14),(70,44,5),(71,45,14),(72,45,12),(73,45,6),(74,45,9),(75,45,8),(76,46,22),(77,47,5),(78,47,14),(79,48,1),(80,49,12),(81,50,17),(82,51,14),(83,51,9),(84,52,22),(85,53,1),(86,54,12),(87,54,14),(88,55,3),(89,56,9),(90,57,6),(91,57,14),(92,57,12),(93,57,8),(94,57,9),(95,58,12),(96,58,14),(97,59,1),(98,60,9),(99,61,30),(100,62,14),(101,62,8),(102,62,6),(103,62,9),(104,63,8),(105,64,17),(106,65,14),(107,66,14),(108,66,6),(109,67,6),(110,68,33),(111,69,17),(112,70,14),(113,70,12),(114,71,1),(115,72,17),(116,73,22),(117,74,1),(118,75,34),(119,76,38),(120,77,9),(121,77,14),(122,78,38),(123,79,9),(124,79,8),(125,79,6),(126,79,14),(127,80,14),(128,80,8),(129,81,38),(130,82,6),(131,82,8),(132,82,9),(133,82,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,27,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(2,58,'<com.extend.battery.aw: void run()>',205,'a',NULL),(3,43,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(4,27,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(5,34,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(6,58,'<com.extend.battery.aw: void run()>',139,'a',NULL),(7,63,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(8,22,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(9,64,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(10,36,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(11,58,'<com.extend.battery.aw: void run()>',73,'a',NULL),(12,30,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(13,28,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(14,65,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(15,34,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(16,63,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(17,27,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(18,28,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(19,30,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(20,66,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(21,67,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(22,18,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(23,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(24,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(25,29,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(26,14,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(27,72,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(28,73,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(29,23,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(30,37,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(31,74,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(32,75,'<com.extend.battery.ba: void run()>',58,'a',NULL),(33,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(34,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(35,8,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(36,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(37,6,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(38,72,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(39,75,'<com.extend.battery.ba: void run()>',212,'a',NULL),(40,75,'<com.extend.battery.ba: void run()>',118,'a',NULL),(41,12,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(42,74,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(43,8,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(44,76,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(45,77,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(46,23,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(47,76,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(48,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(49,12,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(50,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(51,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(52,23,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(53,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(54,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(55,3,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(56,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(57,77,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(58,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(59,75,'<com.extend.battery.ba: void run()>',118,'a',NULL),(60,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(61,29,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(62,78,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(63,8,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(64,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(65,14,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(66,6,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(67,6,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(68,32,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(69,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(70,12,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(71,75,'<com.extend.battery.ba: void run()>',58,'a',NULL),(72,17,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(73,23,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(74,75,'<com.extend.battery.ba: void run()>',212,'a',NULL),(75,32,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(76,37,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(77,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(78,74,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(79,73,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(80,8,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(81,74,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(82,78,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,13,15),(3,15,1),(4,18,20),(5,19,2),(6,20,2),(7,21,21),(8,26,21),(9,27,2),(10,31,1),(11,34,20),(12,35,13),(13,36,13),(14,39,2),(15,42,15),(16,43,2),(17,46,2),(18,52,2),(19,53,15),(20,56,2),(21,57,2),(22,61,20),(23,65,1),(24,76,21),(25,78,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,31,1),(3,65,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/extend/battery/TabHandler'),(2,3,'com/zanalytics/sms/SmsReceiverService'),(3,4,'com/extend/battery/FeaturesActivity'),(4,5,'com/extend/battery/RatingActivity'),(5,6,'com/extend/battery/TabHandler'),(6,7,'com/extend/battery/BatteryService'),(7,8,'com/extend/battery/FeaturesActivity'),(8,9,'com/extend/battery/FeaturesActivity'),(9,10,'com/extend/battery/TabHandler'),(10,11,'com/extend/battery/FeaturesActivity'),(11,12,'com/extend/battery/FeaturesActivity'),(12,14,'com/extend/battery/FeaturesActivity'),(13,15,'NULL-CONSTANT'),(14,16,'com.android.settings.InstalledAppDetails'),(15,17,'com.android.settings.InstalledAppDetails'),(16,21,'com/zanalytics/sms/SmsReceiverService'),(17,22,'com/extend/battery/TabHandler'),(18,23,'com/extend/battery/FeaturesActivity'),(19,24,'com/extend/battery/BatteryService'),(20,25,'com/extend/battery/FeaturesActivity'),(21,26,'com/zanalytics/sms/SmsReceiverService'),(22,28,'com/zanalytics/sms/SmsReceiverService'),(23,29,'com/extend/battery/TabHandler'),(24,30,'com/extend/battery/FeaturesActivity'),(25,31,'NULL-CONSTANT'),(26,32,'com.android.settings.InstalledAppDetails'),(27,33,'com.android.settings.InstalledAppDetails'),(28,37,'com/extend/battery/TabHandler'),(29,38,'com/extend/battery/TabHandler'),(30,40,'com/extend/battery/FeaturesActivity'),(31,41,'com/extend/battery/FeaturesActivity'),(32,44,'com/extend/battery/FeaturesActivity'),(33,45,'com/extend/battery/TabHandler'),(34,47,'com/itframework/installer/util/NonMarketDialogActivity'),(35,48,'com/extend/battery/FeaturesActivity'),(36,49,'com/extend/battery/TabHandler'),(37,50,'com/extend/battery/RatingActivity'),(38,51,'com/extend/battery/BatteryService'),(39,54,'com/extend/battery/FeaturesActivity'),(40,55,'com/extend/battery/TabHandler'),(41,58,'com.android.settings.InstalledAppDetails'),(42,59,'com.android.settings.InstalledAppDetails'),(43,62,'com/extend/battery/FeaturesActivity'),(44,60,'com/itframework/installer/util/InstallWorker'),(45,63,'com/itframework/installer/util/InstallWorker'),(46,64,'com/extend/battery/FeaturesActivity'),(47,65,'NULL-CONSTANT'),(48,66,'com/extend/battery/BatteryService'),(49,67,'com/itframework/installer/util/NonMarketDialogActivity'),(50,68,'com/extend/battery/RatingActivity'),(51,69,'com/extend/battery/TabHandler'),(52,70,'com/itframework/installer/util/InstallWorker'),(53,71,'com/itframework/installer/util/InstallWorker'),(54,72,'com/extend/battery/TabHandler'),(55,73,'com/extend/battery/BatteryService'),(56,74,'com/zanalytics/sms/SmsReceiverService'),(57,75,'com/extend/battery/FeaturesActivity'),(58,76,'com/zanalytics/sms/SmsReceiverService'),(59,77,'com/extend/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,18,4),(3,19,5),(4,20,6),(5,27,7),(6,34,9),(7,35,10),(8,36,11),(9,39,13),(10,43,14),(11,46,15),(12,52,16),(13,56,17),(14,57,18),(15,61,19),(16,78,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'result'),(2,3,'abort'),(3,16,'com.android.settings.ApplicationPkgName'),(4,17,'pkg'),(5,21,'TryCount'),(6,21,'NextMessage'),(7,21,'TryAgain'),(8,21,'StoreMessage'),(9,21,'Message'),(10,21,'Delay'),(11,21,'PhoneNumber'),(12,21,'TagEvent'),(13,22,'cacheUrl'),(14,26,'TryCount'),(15,26,'NextMessage'),(16,26,'TryAgain'),(17,26,'StoreMessage'),(18,26,'Message'),(19,26,'Delay'),(20,26,'PhoneNumber'),(21,26,'TagEvent'),(22,28,'result'),(23,28,'abort'),(24,32,'com.android.settings.ApplicationPkgName'),(25,33,'pkg'),(26,45,'cacheUrl'),(27,49,'cacheUrl'),(28,58,'com.android.settings.ApplicationPkgName'),(29,59,'pkg'),(30,60,'downloadingProgress'),(31,60,'downloadingWait'),(32,60,'downloadingToast'),(33,60,'finishedText'),(34,60,'downloadingTicker'),(35,60,'downloadingTitle'),(36,60,'filename'),(37,60,'finishedTicker'),(38,60,'forceDownload'),(39,60,'finishedTitle'),(40,60,'url'),(41,60,'downloadStarting'),(42,63,'downloadingProgress'),(43,63,'downloadingWait'),(44,63,'downloadingToast'),(45,63,'callbackIntent'),(46,63,'finishedText'),(47,63,'downloadingTicker'),(48,63,'downloadingTitle'),(49,63,'filename'),(50,63,'finishedTicker'),(51,63,'forceDownload'),(52,63,'finishedTitle'),(53,63,'url'),(54,63,'downloadStarting'),(55,70,'downloadingProgress'),(56,70,'downloadingWait'),(57,70,'downloadingToast'),(58,70,'finishedText'),(59,70,'downloadingTicker'),(60,70,'downloadingTitle'),(61,70,'filename'),(62,70,'finishedTicker'),(63,70,'forceDownload'),(64,70,'finishedTitle'),(65,70,'url'),(66,70,'downloadStarting'),(67,71,'downloadingProgress'),(68,71,'downloadingWait'),(69,71,'downloadingToast'),(70,71,'callbackIntent'),(71,71,'finishedText'),(72,71,'downloadingTicker'),(73,71,'downloadingTitle'),(74,71,'filename'),(75,71,'finishedTicker'),(76,71,'forceDownload'),(77,71,'finishedTitle'),(78,71,'url'),(79,71,'downloadStarting'),(80,74,'result'),(81,74,'abort'),(82,76,'TryCount'),(83,76,'NextMessage'),(84,76,'TryAgain'),(85,76,'StoreMessage'),(86,76,'Message'),(87,76,'Delay'),(88,76,'PhoneNumber'),(89,76,'TagEvent');
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,1),(9,9,1),(10,10,2),(11,12,4),(12,11,4),(13,13,4),(14,14,4),(15,15,5),(16,16,5),(17,17,5),(18,18,7),(19,19,7),(20,20,7),(21,21,8),(22,22,8),(23,23,8),(24,24,1),(25,25,9),(26,26,9),(27,27,9),(28,28,10),(29,29,10),(30,30,10),(31,31,9),(32,32,12),(33,33,7),(34,34,8),(35,35,9),(36,36,10),(37,37,12),(38,38,14),(39,39,14),(40,40,14),(41,41,14),(42,42,14),(43,43,14),(44,44,14),(45,45,14),(46,46,14),(47,47,14),(48,48,14),(49,49,14),(50,50,14),(51,51,14),(52,52,14),(53,53,14),(54,54,14),(55,55,14),(56,56,19),(57,56,16),(58,56,17),(59,56,18),(60,56,14),(61,57,18),(62,57,19),(63,57,16),(64,57,17),(65,57,14),(66,58,17),(67,58,18),(68,58,19),(69,58,14),(70,58,16),(71,59,18),(72,59,19),(73,59,16),(74,59,17),(75,59,14),(76,60,18),(77,60,17),(78,60,16),(79,60,14),(80,60,19),(81,61,17),(82,61,16),(83,61,19),(84,61,18),(85,61,14),(86,62,14),(87,63,14),(88,64,14),(89,65,14),(90,66,14),(91,67,14),(92,68,14),(93,69,14),(94,70,17),(95,70,18),(96,70,19),(97,70,14),(98,70,16),(99,71,18),(100,71,19),(101,71,16),(102,71,17),(103,71,14),(104,72,14),(105,72,16),(106,72,18),(107,72,17),(108,72,19),(109,73,14),(110,73,19),(111,73,18),(112,73,17),(113,73,16),(114,74,14),(115,74,16),(116,74,18),(117,74,17),(118,74,19),(119,75,17),(120,75,16),(121,75,14),(122,75,19),(123,75,18),(124,76,19),(125,76,14),(126,76,17),(127,76,18),(128,76,16),(129,77,14),(130,77,16),(131,77,17),(132,77,18),(133,77,19),(134,78,14),(135,79,14),(136,80,14),(137,81,14),(138,82,14),(139,83,14),(140,84,14),(141,85,14),(142,86,19),(143,86,18),(144,86,17),(145,86,16),(146,86,14),(147,87,14),(148,87,17),(149,87,16),(150,87,19),(151,87,18),(152,88,18),(153,88,17),(154,88,16),(155,88,19),(156,88,14),(157,89,14),(158,89,16),(159,89,17),(160,89,18),(161,89,19),(162,90,16),(163,90,14),(164,90,19),(165,90,17),(166,90,18),(167,91,14),(168,91,16),(169,91,17),(170,91,18),(171,91,19),(172,92,14),(173,92,17),(174,92,18),(175,92,16),(176,92,19),(177,93,19),(178,93,18),(179,93,17),(180,93,16),(181,93,14),(182,94,14),(183,95,14),(184,96,14),(185,97,14),(186,98,14),(187,99,14),(188,100,14),(189,101,14),(190,102,14),(191,103,14),(192,104,14),(193,105,14),(194,106,14),(195,107,14),(196,108,14),(197,109,14),(198,110,14),(199,111,14),(200,112,14),(201,113,14),(202,114,14),(203,115,14),(204,116,14),(205,117,14),(206,118,14),(207,119,14),(208,120,14),(209,121,14),(210,122,14),(211,123,14),(212,124,14),(213,125,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,7,2),(10,7,3),(11,8,1),(12,9,1),(13,10,3),(14,10,2),(15,24,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,19,'application','vnd.android.package-archive'),(2,27,'application','vnd.android.package-archive'),(3,43,'application','vnd.android.package-archive'),(4,52,'application','vnd.android.package-archive'),(5,56,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.extend.battery'),(2,3,'com.extend.battery'),(3,4,'com.extend.battery'),(4,5,'com.extend.battery'),(5,6,'com.extend.battery'),(6,7,'com.extend.battery'),(7,8,'com.extend.battery'),(8,9,'com.extend.battery'),(9,10,'com.extend.battery'),(10,11,'com.extend.battery'),(11,12,'com.extend.battery'),(12,14,'com.extend.battery'),(13,15,'NULL-CONSTANT'),(14,16,'com.android.settings'),(15,17,'com.android.settings'),(16,21,'com.extend.battery'),(17,22,'com.extend.battery'),(18,23,'com.extend.battery'),(19,24,'com.extend.battery'),(20,25,'com.extend.battery'),(21,26,'com.extend.battery'),(22,28,'com.extend.battery'),(23,29,'com.extend.battery'),(24,30,'com.extend.battery'),(25,31,'NULL-CONSTANT'),(26,32,'com.android.settings'),(27,33,'com.android.settings'),(28,37,'com.extend.battery'),(29,38,'com.extend.battery'),(30,40,'com.extend.battery'),(31,41,'com.extend.battery'),(32,44,'com.extend.battery'),(33,45,'com.extend.battery'),(34,47,'com.extend.battery'),(35,48,'com.extend.battery'),(36,49,'com.extend.battery'),(37,50,'com.extend.battery'),(38,51,'com.extend.battery'),(39,54,'com.extend.battery'),(40,55,'com.extend.battery'),(41,58,'com.android.settings'),(42,59,'com.android.settings'),(43,62,'com.extend.battery'),(44,60,'com.extend.battery'),(45,63,'com.extend.battery'),(46,64,'com.extend.battery'),(47,65,'NULL-CONSTANT'),(48,66,'com.extend.battery'),(49,67,'com.extend.battery'),(50,68,'com.extend.battery'),(51,69,'com.extend.battery'),(52,70,'com.extend.battery'),(53,71,'com.extend.battery'),(54,72,'com.extend.battery'),(55,73,'com.extend.battery'),(56,74,'com.extend.battery'),(57,75,'com.extend.battery'),(58,76,'com.extend.battery'),(59,77,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,1,0),(5,17,0),(6,17,0),(7,17,0),(8,18,0),(9,1,0),(10,17,0),(11,25,0),(12,26,0),(13,25,0),(14,25,0),(15,25,0),(16,25,0),(17,25,0),(18,30,0),(19,30,0),(20,30,0),(21,33,0),(22,33,0),(23,34,0),(24,36,0),(25,38,0),(26,39,0),(27,38,0),(28,38,0),(29,38,0),(30,45,0),(31,45,0),(32,49,0),(33,56,0),(34,57,0),(35,58,0),(36,58,0),(37,59,0),(38,60,0),(39,61,0),(40,49,0),(41,62,0),(42,45,0),(43,63,0),(44,60,0),(45,61,0),(46,49,0),(47,62,0),(48,45,0),(49,63,0),(50,60,0),(51,61,0),(52,49,0),(53,62,0),(54,45,0),(55,63,0),(56,60,0),(57,61,0),(58,49,0),(59,62,0),(60,45,0),(61,63,0),(62,64,0),(63,25,0),(64,65,0),(65,66,0),(66,38,0),(67,30,0),(68,67,0),(69,33,0),(70,64,0),(71,25,0),(72,65,0),(73,66,0),(74,38,0),(75,30,0),(76,67,0),(77,33,0),(78,64,0),(79,25,0),(80,65,0),(81,66,0),(82,38,0),(83,30,0),(84,67,0),(85,33,0),(86,64,0),(87,25,0),(88,65,0),(89,66,0),(90,38,0),(91,30,0),(92,67,0),(93,33,0),(94,64,0),(95,25,0),(96,65,0),(97,66,0),(98,38,0),(99,30,0),(100,67,0),(101,33,0),(102,64,0),(103,25,0),(104,65,0),(105,66,0),(106,38,0),(107,30,0),(108,67,0),(109,33,0),(110,64,0),(111,25,0),(112,65,0),(113,66,0),(114,38,0),(115,30,0),(116,64,0),(117,67,0),(118,25,0),(119,33,0),(120,65,0),(121,66,0),(122,38,0),(123,30,0),(124,67,0),(125,33,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,0,0),(13,14,1,0),(14,15,0,0),(15,17,0,0),(16,18,0,0),(17,18,0,0),(18,18,1,0),(19,19,1,0),(20,20,1,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,26,0,0),(26,28,0,0),(27,29,1,0),(28,30,0,0),(29,32,0,0),(30,33,0,0),(31,34,0,0),(32,35,0,0),(33,35,0,0),(34,35,1,0),(35,36,1,0),(36,37,1,0),(37,39,0,0),(38,40,0,0),(39,41,1,0),(40,43,0,0),(41,44,0,0),(42,45,1,0),(43,46,1,0),(44,47,0,0),(45,48,0,0),(46,49,1,0),(47,50,0,0),(48,51,0,0),(49,53,0,0),(50,54,0,0),(51,55,0,0),(52,56,1,0),(53,57,1,0),(54,58,0,0),(55,59,0,0),(56,60,1,0),(57,62,1,0),(58,63,0,0),(59,63,0,0),(60,64,0,0),(61,63,1,0),(62,65,0,0),(63,64,0,0),(64,66,0,0),(65,67,0,0),(66,68,0,0),(67,69,0,0),(68,70,0,0),(69,71,0,0),(70,72,0,0),(71,72,0,0),(72,74,0,0),(73,75,0,0),(74,76,0,0),(75,77,0,0),(76,79,0,0),(77,80,0,0),(78,82,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,45,3,2,NULL),(2,45,4,2,NULL),(3,45,23,2,NULL),(4,45,41,2,NULL),(5,49,3,2,NULL),(6,49,4,2,NULL),(7,49,23,2,NULL),(8,49,41,2,NULL),(9,35,1,2,NULL),(10,36,1,2,NULL),(11,34,1,2,NULL),(12,61,1,2,NULL),(13,1,1,2,NULL),(14,18,1,2,NULL),(15,35,2,2,NULL),(16,36,2,2,NULL),(17,34,2,2,NULL),(18,61,2,2,NULL),(19,1,2,2,NULL),(20,18,2,2,NULL),(21,24,20,2,NULL),(22,24,21,2,NULL),(23,24,42,2,NULL),(24,24,54,2,NULL),(25,51,20,2,NULL),(26,51,21,2,NULL),(27,51,42,2,NULL),(28,51,54,2,NULL),(29,30,11,2,NULL),(30,30,32,2,NULL),(31,30,50,2,NULL),(32,64,11,2,NULL),(33,64,32,2,NULL),(34,64,50,2,NULL),(35,35,17,2,NULL),(36,36,17,2,NULL),(37,35,25,2,NULL),(38,36,25,2,NULL),(39,35,26,2,NULL),(40,36,26,2,NULL),(41,35,30,2,NULL),(42,36,30,2,NULL),(43,36,30,2,NULL),(44,35,33,2,NULL),(45,36,33,2,NULL),(46,35,34,2,NULL),(47,36,34,2,NULL),(48,35,38,2,NULL),(49,36,38,2,NULL),(50,35,39,2,NULL),(51,36,39,2,NULL),(52,36,39,2,NULL),(53,35,64,2,NULL),(54,36,64,2,NULL),(55,35,65,2,NULL),(56,36,65,2,NULL),(57,35,66,2,NULL),(58,36,66,2,NULL),(59,35,67,2,NULL),(60,36,67,2,NULL),(61,35,18,2,NULL),(62,36,18,2,NULL),(63,35,45,2,NULL),(64,36,45,2,NULL),(65,35,49,2,NULL),(66,36,49,2,NULL),(67,35,60,2,NULL),(68,36,60,2,NULL),(69,35,61,2,NULL),(70,36,61,2,NULL),(71,35,62,2,NULL),(72,36,62,2,NULL),(73,35,63,2,NULL),(74,36,63,2,NULL),(75,35,36,2,NULL),(76,36,36,2,NULL),(77,35,56,2,NULL),(78,36,56,2,NULL),(79,35,57,2,NULL),(80,36,57,2,NULL),(81,35,58,2,NULL),(82,36,58,2,NULL),(83,35,59,2,NULL),(84,36,59,2,NULL),(85,40,11,2,NULL),(86,40,32,2,NULL),(87,40,50,2,NULL),(88,77,11,2,NULL),(89,77,32,2,NULL),(90,77,50,2,NULL),(91,34,17,2,NULL),(92,61,17,2,NULL),(93,34,25,2,NULL),(94,61,25,2,NULL),(95,34,26,2,NULL),(96,61,26,2,NULL),(97,34,30,2,NULL),(98,61,30,2,NULL),(99,34,33,2,NULL),(100,61,33,2,NULL),(101,34,34,2,NULL),(102,61,34,2,NULL),(103,34,38,2,NULL),(104,61,38,2,NULL),(105,34,39,2,NULL),(106,61,39,2,NULL),(107,34,64,2,NULL),(108,61,64,2,NULL),(109,34,65,2,NULL),(110,61,65,2,NULL),(111,34,66,2,NULL),(112,61,66,2,NULL),(113,34,67,2,NULL),(114,61,67,2,NULL),(115,34,18,2,NULL),(116,61,18,2,NULL),(117,34,45,2,NULL),(118,61,45,2,NULL),(119,34,49,2,NULL),(120,61,49,2,NULL),(121,34,60,2,NULL),(122,61,60,2,NULL),(123,34,61,2,NULL),(124,61,61,2,NULL),(125,34,62,2,NULL),(126,61,62,2,NULL),(127,34,63,2,NULL),(128,61,63,2,NULL),(129,34,36,2,NULL),(130,61,36,2,NULL),(131,34,56,2,NULL),(132,61,56,2,NULL),(133,34,57,2,NULL),(134,61,57,2,NULL),(135,34,58,2,NULL),(136,61,58,2,NULL),(137,34,59,2,NULL),(138,61,59,2,NULL),(139,48,11,2,NULL),(140,48,32,2,NULL),(141,48,50,2,NULL),(142,75,11,2,NULL),(143,75,32,2,NULL),(144,75,50,2,NULL),(145,23,11,2,NULL),(146,23,32,2,NULL),(147,23,50,2,NULL),(148,50,15,2,NULL),(149,50,16,2,NULL),(150,50,40,2,NULL),(151,50,53,2,NULL),(152,54,11,2,NULL),(153,54,32,2,NULL),(154,54,50,2,NULL),(155,68,15,2,NULL),(156,68,16,2,NULL),(157,68,16,2,NULL),(158,68,40,2,NULL),(159,68,53,2,NULL),(160,25,11,2,NULL),(161,25,32,2,NULL),(162,25,50,2,NULL),(163,62,11,2,NULL),(164,62,32,2,NULL),(165,62,50,2,NULL),(166,62,50,2,NULL),(167,47,19,2,NULL),(168,60,22,2,NULL),(169,63,22,2,NULL),(170,67,19,2,NULL),(171,70,22,2,NULL),(172,70,22,2,NULL),(173,71,22,2,NULL),(174,1,17,2,NULL),(175,1,17,2,NULL),(176,18,17,2,NULL),(177,1,25,2,NULL),(178,18,25,2,NULL),(179,1,26,2,NULL),(180,18,26,2,NULL),(181,1,30,2,NULL),(182,18,30,2,NULL),(183,66,20,2,NULL),(184,66,21,2,NULL),(185,66,42,2,NULL),(186,66,54,2,NULL),(187,73,20,2,NULL),(188,73,21,2,NULL),(189,73,42,2,NULL),(190,73,54,2,NULL),(191,1,33,2,NULL),(192,18,33,2,NULL),(193,1,34,2,NULL),(194,18,34,2,NULL),(195,28,24,2,NULL),(196,28,43,2,NULL),(197,28,55,2,NULL),(198,74,24,2,NULL),(199,74,43,2,NULL),(200,74,55,2,NULL),(201,1,38,2,NULL),(202,18,38,2,NULL),(203,1,39,2,NULL),(204,18,39,2,NULL),(205,1,64,2,NULL),(206,18,64,2,NULL),(207,1,65,2,NULL),(208,18,65,2,NULL),(209,1,66,2,NULL),(210,18,66,2,NULL),(211,1,67,2,NULL),(212,18,67,2,NULL),(213,22,3,2,NULL),(214,22,4,2,NULL),(215,22,23,2,NULL),(216,22,41,2,NULL),(217,1,18,2,NULL),(218,1,18,2,NULL),(219,18,18,2,NULL),(220,7,20,2,NULL),(221,7,21,2,NULL),(222,7,21,2,NULL),(223,7,42,2,NULL),(224,7,54,2,NULL),(225,4,11,2,NULL),(226,4,32,2,NULL),(227,4,50,2,NULL),(228,1,45,2,NULL),(229,1,45,2,NULL),(230,1,49,2,NULL),(231,1,49,2,NULL),(232,1,60,2,NULL),(233,1,61,2,NULL),(234,1,62,2,NULL),(235,1,63,2,NULL),(236,1,36,2,NULL),(237,1,56,2,NULL),(238,1,57,2,NULL),(239,1,58,2,NULL),(240,1,59,2,NULL),(241,12,11,2,NULL),(242,12,32,2,NULL),(243,12,50,2,NULL),(244,18,45,2,NULL),(245,18,49,2,NULL),(246,18,49,2,NULL),(247,18,60,2,NULL),(248,18,61,2,NULL),(249,18,62,2,NULL),(250,18,62,2,NULL),(251,18,63,2,NULL),(252,18,36,2,NULL),(253,18,56,2,NULL),(254,18,56,2,NULL),(255,18,57,2,NULL),(256,18,58,2,NULL),(257,18,59,2,NULL),(258,18,59,2,NULL),(259,11,11,2,NULL),(260,11,32,2,NULL),(261,11,32,2,NULL),(262,11,50,2,NULL),(263,5,15,2,NULL),(264,5,16,2,NULL),(265,5,16,2,NULL),(266,5,40,2,NULL),(267,5,53,2,NULL),(268,14,11,2,NULL),(269,14,11,2,NULL),(270,14,32,2,NULL),(271,14,50,2,NULL),(272,14,50,2,NULL),(273,9,11,2,NULL),(274,9,32,2,NULL),(275,9,50,2,NULL),(276,9,50,2,NULL),(277,3,24,2,NULL),(278,3,43,2,NULL),(279,3,55,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://mms',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://mms',NULL,NULL,NULL),(9,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'content://mms',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,2),(2,16,3),(3,31,8),(4,42,12),(5,78,20),(6,81,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,1,7),(9,1,8),(10,2,2),(11,1,9),(12,1,10),(13,1,10),(14,2,3),(15,1,11),(16,1,12),(17,1,13),(18,2,4),(19,1,14),(20,1,15),(21,1,17),(22,1,16),(23,2,5),(24,1,19),(25,1,18),(26,1,21),(27,2,6),(28,1,20),(29,1,20),(30,2,8),(31,1,22),(32,2,10),(33,2,11),(34,2,12),(35,2,13),(36,2,14),(37,2,15),(38,2,17),(39,2,16),(40,2,19),(41,2,18),(42,2,21),(43,2,23),(44,3,1),(45,2,22),(46,3,2),(47,2,24),(48,3,3),(49,3,4),(50,3,5),(51,3,6),(52,3,8),(53,3,10),(54,3,11),(55,3,12),(56,3,13),(57,3,14),(58,3,15),(59,3,17),(60,3,16),(61,3,19),(62,3,18),(63,3,21),(64,3,23),(65,3,22),(66,3,24);
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

-- Dump completed on 2015-10-12  3:29:42
