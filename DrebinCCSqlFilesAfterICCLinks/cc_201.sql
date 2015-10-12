-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_201
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*).SEND_SMS'),(12,'android.intent.action.BATTERY_CHANGED'),(15,'android.intent.action.BATTERY_LOW'),(11,'android.intent.action.BATTERY_OKAY'),(10,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(4,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(16,'android.settings.APPLICATION_DETAILS_SETTINGS'),(18,'android.settings.LOCATION_SOURCE_SETTINGS'),(5,'com.android.vending.INSTALL_REFERRER'),(8,'com.extend.battery.intent.http.SHOW'),(7,'com.itframework.installer.updater.CHECK'),(6,'com.itframework.installer.updater.UPDATE'),(2,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.extend.battery',71),(2,'com.extend.battery',83),(3,'com.extend.battery',91),(4,'com.extend.battery',89);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,2,'com.extend.battery.Splash'),(4,1,'com.extend.battery.TaskKillerActivity'),(5,1,'com.extend.battery.UninstallerActivity'),(6,2,'com.extend.battery.TabHandler'),(7,1,'com.extend.battery.SecurityAuditActivity'),(8,2,'com.extend.battery.TaskKillerActivity'),(9,1,'com.extend.battery.InstallerActivity'),(10,2,'com.extend.battery.UninstallerActivity'),(11,1,'com.extend.battery.FeaturesActivity'),(12,2,'com.extend.battery.SecurityAuditActivity'),(13,1,'com.extend.battery.BoosterActivity'),(14,2,'com.extend.battery.InstallerActivity'),(15,3,'com.extend.battery.Splash'),(16,1,'com.extend.battery.BatteryActivity'),(17,2,'com.extend.battery.FeaturesActivity'),(18,1,'com.extend.battery.RatingActivity'),(19,3,'com.extend.battery.TabHandler'),(20,2,'com.extend.battery.BoosterActivity'),(21,1,'com.extend.battery.BatteryService'),(22,3,'com.extend.battery.TaskKillerActivity'),(23,2,'com.extend.battery.BatteryActivity'),(24,3,'com.extend.battery.UninstallerActivity'),(25,1,'com.zanalytics.sms.SmsReceiverService'),(26,3,'com.extend.battery.SecurityAuditActivity'),(27,3,'com.extend.battery.InstallerActivity'),(28,2,'com.extend.battery.RatingActivity'),(29,1,'com.zanalytics.sms.SmsReceiver'),(30,3,'com.extend.battery.FeaturesActivity'),(31,3,'com.extend.battery.FeaturesActivity'),(32,3,'com.extend.battery.BoosterActivity'),(33,2,'com.extend.battery.BatteryService'),(34,3,'com.extend.battery.BatteryActivity'),(35,3,'com.extend.battery.BatteryActivity'),(36,3,'com.extend.battery.RatingActivity'),(37,2,'com.zanalytics.sms.SmsReceiverService'),(38,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(39,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(40,4,'com.extend.battery.Splash'),(41,4,'com.extend.battery.Splash'),(42,2,'com.zanalytics.sms.SmsReceiver'),(43,1,'com.tapjoy.TapjoyReferralTracker'),(44,3,'com.itframework.installer.util.NonMarketDialogActivity'),(45,4,'com.extend.battery.TabHandler'),(46,4,'com.extend.battery.TabHandler'),(47,3,'com.extend.battery.BatteryService'),(48,3,'com.itframework.installer.util.InstallWorker'),(49,2,'com.tapjoy.TapjoyReferralTracker'),(50,4,'com.extend.battery.TaskKillerActivity'),(51,3,'com.zanalytics.sms.SmsReceiverService'),(52,4,'com.extend.battery.UninstallerActivity'),(53,3,'com.itframework.installer.updater.UpdateReceiver'),(54,4,'com.extend.battery.SecurityAuditActivity'),(55,4,'com.extend.battery.InstallerActivity'),(56,4,'com.extend.battery.FeaturesActivity'),(57,4,'com.extend.battery.BoosterActivity'),(58,4,'com.extend.battery.BatteryActivity'),(59,3,'com.extend.battery.NotificationReceiver'),(60,4,'com.extend.battery.RatingActivity'),(61,4,'com.extend.battery.BatteryService'),(62,4,'com.zanalytics.sms.SmsReceiverService'),(63,3,'com.extend.battery.BootReceiver'),(64,4,'com.extend.battery.NotificationReceiver'),(65,4,'com.extend.battery.BootReceiver'),(66,4,'com.extend.battery.BootReceiver'),(67,3,'com.zanalytics.sms.SmsReceiver'),(68,4,'com.zanalytics.sms.SmsReceiver'),(69,4,'com.zanalytics.sms.SmsReceiver'),(70,4,'com.tapjoy.TapjoyReferralTracker'),(71,2,'com.extend.battery.t'),(72,2,'com.extend.battery.y'),(73,2,'com.zanalytics.sms.h'),(74,2,'com.extend.battery.k'),(75,2,'com.extend.battery.av'),(76,2,'com.extend.battery.a'),(77,1,'com.extend.battery.g'),(78,1,'com.extend.battery.i'),(79,1,'com.extend.battery.j'),(80,1,'com.zanalytics.sms.c'),(81,2,'com.zanalytics.sms.d'),(82,1,'com.zanalytics.sms.a'),(83,2,'com.zanalytics.sms.c'),(84,1,'com.extend.battery.ay'),(85,1,'com.zanalytics.sms.j'),(86,2,'com.extend.battery.v'),(87,1,'com.extend.battery.aw'),(88,1,'com.extend.battery.f'),(89,2,'com.extend.battery.bb'),(90,1,'com.extend.battery.s'),(91,3,'com.extend.battery.d'),(92,3,'com.extend.battery.c'),(93,3,'com.extend.battery.a'),(94,3,'com.zanalytics.sms.c'),(95,3,'com.extend.battery.ba'),(96,3,'com.zanalytics.sms.a'),(97,3,'com.extend.battery.features.s'),(98,3,'com.extend.battery.k'),(99,3,'com.zanalytics.sms.j'),(100,3,'com.itframework.installer.a.b'),(101,3,'com.extend.battery.bb');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,30,'pdus'),(2,24,'technology'),(3,42,'pdus'),(4,16,'technology'),(5,57,'URL'),(6,39,'filename'),(7,50,'downloadingTicker'),(8,50,'finishedTitle'),(9,50,'url'),(10,63,'clickevent'),(11,38,'filename'),(12,49,'forceDownload'),(13,49,'downloadingTicker'),(14,38,'downloadingTitle'),(15,38,'downloadStarting'),(16,38,'downloadingToast'),(17,70,'pdus'),(18,49,'downloadStarting'),(19,39,'callbackIntent'),(20,49,'finishedTitle'),(21,50,'finishedTicker'),(22,49,'finishedText'),(23,38,'downloadingWait'),(24,49,'finishedTicker'),(25,38,'callbackIntent'),(26,50,'downloadingProgress'),(27,49,'url'),(28,49,'callbackIntent'),(29,50,'forceDownload'),(30,39,'finishedTicker'),(31,50,'downloadStarting'),(32,39,'url'),(33,39,'downloadingProgress'),(34,50,'downloadingToast'),(35,39,'downloadingTitle'),(36,35,'technology'),(37,39,'forceDownload'),(38,50,'downloadingWait'),(39,49,'downloadingTitle'),(40,38,'downloadingProgress'),(41,38,'finishedTicker'),(42,56,'URL'),(43,38,'downloadingTicker'),(44,39,'downloadingToast'),(45,49,'downloadingWait'),(46,49,'downloadingToast'),(47,50,'finishedText'),(48,39,'downloadingWait'),(49,50,'filename'),(50,50,'callbackIntent'),(51,49,'filename'),(52,34,'technology'),(53,50,'downloadingTitle'),(54,38,'url'),(55,38,'finishedTitle'),(56,39,'finishedTitle'),(57,39,'finishedText'),(58,50,'showNotifications'),(59,38,'finishedText'),(60,39,'downloadStarting'),(61,39,'downloadingTicker'),(62,49,'showNotifications'),(63,38,'forceDownload'),(64,49,'downloadingProgress');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,15,'a',1,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,40,'a',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,47,'s',0,NULL,NULL),(46,47,'s',0,NULL,NULL),(47,45,'a',0,NULL,NULL),(48,46,'a',0,NULL,NULL),(49,48,'s',0,NULL,NULL),(50,48,'s',0,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,51,'s',0,NULL,NULL),(53,51,'s',0,NULL,NULL),(54,49,'r',1,NULL,NULL),(55,52,'a',0,NULL,NULL),(56,53,'r',1,NULL,NULL),(57,53,'r',1,NULL,NULL),(58,54,'a',0,NULL,NULL),(59,55,'a',0,NULL,NULL),(60,56,'a',0,NULL,NULL),(61,57,'a',0,NULL,NULL),(62,58,'a',0,NULL,NULL),(63,59,'r',1,NULL,NULL),(64,60,'a',0,NULL,NULL),(65,61,'s',0,NULL,NULL),(66,62,'s',0,NULL,NULL),(67,64,'r',1,NULL,NULL),(68,63,'r',1,NULL,NULL),(69,65,'r',1,NULL,NULL),(70,67,'r',1,NULL,NULL),(71,66,'r',1,NULL,NULL),(72,68,'r',1,NULL,NULL),(73,69,'r',1,NULL,NULL),(74,70,'r',1,NULL,NULL),(75,71,'r',1,NULL,NULL),(76,72,'r',1,NULL,NULL),(77,73,'r',1,NULL,NULL),(78,74,'r',1,NULL,NULL),(79,77,'r',1,NULL,NULL),(80,78,'r',1,NULL,NULL),(81,79,'r',1,NULL,NULL),(82,80,'r',1,NULL,NULL),(83,91,'r',1,NULL,NULL),(84,92,'r',1,NULL,NULL),(85,93,'r',1,NULL,NULL),(86,94,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,24),(2,1,15),(3,2,20),(4,2,24),(5,3,12),(6,3,10),(7,3,15),(8,3,24),(9,4,3),(10,5,10),(11,6,12),(12,7,24),(13,7,12),(14,8,3),(15,9,15),(16,10,42),(17,11,9),(18,11,16),(19,12,24),(20,12,10),(21,13,9),(22,13,7),(23,13,5),(24,13,16),(25,14,10),(26,14,15),(27,14,12),(28,14,24),(29,15,16),(30,15,4),(31,16,42),(32,17,30),(33,18,15),(34,18,24),(35,18,10),(36,18,20),(37,18,12),(38,19,1),(39,20,20),(40,20,24),(41,21,13),(42,21,16),(43,22,3),(44,23,7),(45,23,9),(46,23,5),(47,23,16),(48,24,24),(49,25,1),(50,26,6),(51,27,1),(52,28,9),(53,29,42),(54,30,24),(55,30,10),(56,31,16),(57,32,16),(58,32,7),(59,33,3),(60,34,30),(61,35,8),(62,35,24),(63,36,1),(64,37,30),(65,38,5),(66,38,16),(67,39,5),(68,40,16),(69,40,13),(70,41,7),(71,42,2),(72,43,9),(73,43,13),(74,43,7),(75,43,16),(76,43,5),(77,44,16),(78,44,5),(79,45,50),(80,46,19),(81,47,14),(82,48,32),(83,49,27),(84,49,26),(85,49,23),(86,49,35),(87,50,34),(88,51,35),(89,51,27),(90,52,23),(91,52,34),(92,53,63),(93,54,32),(94,54,34),(95,55,63),(96,56,35),(97,56,27),(98,56,26),(99,56,23),(100,57,32),(101,57,35),(102,58,34),(103,58,23),(104,58,27),(105,58,26),(106,58,32),(107,59,14),(108,60,38),(109,61,14),(110,62,32),(111,62,35),(112,63,27),(113,64,39),(114,65,14),(115,66,68),(116,67,35),(117,68,27),(118,68,34),(119,69,14),(120,70,39),(121,71,27),(122,72,23),(123,72,26),(124,72,27),(125,72,34),(126,73,14),(127,74,70),(128,75,70),(129,76,50),(130,77,14),(131,78,70),(132,79,26),(133,79,35),(134,80,38),(135,81,35),(136,81,23),(137,82,34),(138,82,32),(139,83,26),(140,84,26),(141,85,70),(142,86,32),(143,87,34),(144,87,22),(145,88,49),(146,89,50),(147,90,26),(148,90,27),(149,90,23),(150,90,34),(151,91,70),(152,92,35),(153,92,32),(154,92,26),(155,92,23),(156,92,27),(157,93,70),(158,94,68),(159,95,49),(160,96,26),(161,96,34),(162,97,14),(163,98,49),(164,99,35),(165,99,22),(166,100,23),(167,100,34),(168,101,23),(169,102,23),(170,103,23),(171,103,35),(172,104,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,14,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(2,20,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(3,75,'<com.extend.battery.av: void onClick(android.view.View)>',8,'a',NULL),(4,76,'<com.extend.battery.a: void run()>',134,'a',NULL),(5,10,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(6,12,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(7,12,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(8,3,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(9,14,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(10,81,'<com.zanalytics.sms.d: int a(android.content.Context)>',5,'p',NULL),(11,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(12,10,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(13,82,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(14,83,'<com.zanalytics.sms.c: void m()>',3,'s',NULL),(15,84,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(16,42,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',125,'s',NULL),(17,85,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(18,86,'<com.extend.battery.v: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(19,87,'<com.extend.battery.aw: void run()>',199,'a',NULL),(20,20,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(21,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(22,76,'<com.extend.battery.a: void run()>',199,'a',NULL),(23,88,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(24,23,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(25,87,'<com.extend.battery.aw: void run()>',135,'a',NULL),(26,6,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(27,87,'<com.extend.battery.aw: void run()>',71,'a',NULL),(28,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(29,81,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(30,10,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(31,16,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(32,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(33,76,'<com.extend.battery.a: void run()>',66,'a',NULL),(34,85,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(35,89,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(36,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(37,29,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(38,5,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(39,5,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(40,13,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(41,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(42,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(43,90,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(44,5,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(45,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(46,19,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(47,95,'<com.extend.battery.ba: void run()>',212,'a',NULL),(48,32,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(49,96,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(50,34,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(51,27,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(52,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(53,59,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(54,32,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(55,59,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(56,97,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(57,32,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(58,98,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(59,95,'<com.extend.battery.ba: void run()>',212,'a',NULL),(60,38,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(61,15,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(62,32,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(63,27,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(64,38,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(65,95,'<com.extend.battery.ba: void run()>',58,'a',NULL),(66,63,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(67,34,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(68,27,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(69,95,'<com.extend.battery.ba: void run()>',118,'a',NULL),(70,38,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(71,27,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(72,97,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(73,15,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(74,99,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(75,67,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(76,100,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(77,95,'<com.extend.battery.ba: void run()>',58,'a',NULL),(78,67,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(79,26,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(80,38,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(81,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(82,32,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(83,26,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(84,26,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(85,99,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(86,32,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(87,101,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(88,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(89,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(90,96,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(91,99,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(92,98,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(93,99,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(94,63,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(95,100,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(96,26,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(97,95,'<com.extend.battery.ba: void run()>',118,'a',NULL),(98,48,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(99,101,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(100,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(101,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(102,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(103,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(104,19,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,5,1),(3,8,16),(4,11,4),(5,14,17),(6,15,17),(7,18,18),(8,23,4),(9,28,4),(10,29,19),(11,37,1),(12,41,16),(13,43,18),(14,44,19),(15,47,4),(16,48,17),(17,53,4),(18,55,18),(19,61,4),(20,69,4),(21,70,4),(22,84,16),(23,85,16),(24,86,4),(25,88,4),(26,89,17),(27,90,18),(28,94,4),(29,96,19),(30,97,1),(31,98,1),(32,99,19);
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
INSERT INTO `ICategories` VALUES (1,5,1),(2,37,1),(3,97,1),(4,98,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/extend/battery/FeaturesActivity'),(2,2,'com/extend/battery/RatingActivity'),(3,4,'com/extend/battery/TabHandler'),(4,5,'NULL-CONSTANT'),(5,6,'com.android.settings.InstalledAppDetails'),(6,7,'com.android.settings.InstalledAppDetails'),(7,9,'com/extend/battery/FeaturesActivity'),(8,10,'com/extend/battery/TabHandler'),(9,12,'com/extend/battery/FeaturesActivity'),(10,13,'com/extend/battery/FeaturesActivity'),(11,14,'com/zanalytics/sms/SmsReceiverService'),(12,15,'com/zanalytics/sms/SmsReceiverService'),(13,16,'com/extend/battery/FeaturesActivity'),(14,17,'com/zanalytics/sms/SmsReceiverService'),(15,19,'com/extend/battery/TabHandler'),(16,20,'com/extend/battery/FeaturesActivity'),(17,21,'com/extend/battery/FeaturesActivity'),(18,22,'com/extend/battery/TabHandler'),(19,24,'com/extend/battery/FeaturesActivity'),(20,25,'com/extend/battery/TabHandler'),(21,26,'com/extend/battery/BatteryService'),(22,27,'com/extend/battery/TabHandler'),(23,30,'com/extend/battery/FeaturesActivity'),(24,31,'com/extend/battery/FeaturesActivity'),(25,32,'com/extend/battery/TabHandler'),(26,33,'com/extend/battery/FeaturesActivity'),(27,34,'com/extend/battery/TabHandler'),(28,35,'com/zanalytics/sms/SmsReceiverService'),(29,36,'com/extend/battery/FeaturesActivity'),(30,37,'NULL-CONSTANT'),(31,38,'com/extend/battery/RatingActivity'),(32,39,'com.android.settings.InstalledAppDetails'),(33,40,'com.android.settings.InstalledAppDetails'),(34,42,'com/extend/battery/BatteryService'),(35,45,'com/extend/battery/BatteryService'),(36,46,'com/extend/battery/TabHandler'),(37,48,'com/zanalytics/sms/SmsReceiverService'),(38,49,'com/extend/battery/FeaturesActivity'),(39,50,'com/extend/battery/FeaturesActivity'),(40,51,'com/extend/battery/FeaturesActivity'),(41,52,'com/extend/battery/RatingActivity'),(42,54,'com/extend/battery/FeaturesActivity'),(43,56,'com/extend/battery/TabHandler'),(44,58,'com/extend/battery/TabHandler'),(45,57,'com/itframework/installer/util/InstallWorker'),(46,59,'com/extend/battery/RatingActivity'),(47,62,'com/itframework/installer/util/NonMarketDialogActivity'),(48,60,'com/itframework/installer/util/InstallWorker'),(49,63,'com/extend/battery/TabHandler'),(50,64,'com/extend/battery/BatteryService'),(51,65,'com/extend/battery/FeaturesActivity'),(52,66,'com/extend/battery/FeaturesActivity'),(53,67,'com/extend/battery/TabHandler'),(54,68,'com/itframework/installer/util/InstallWorker'),(55,72,'com/extend/battery/TabHandler'),(56,71,'com/itframework/installer/util/InstallWorker'),(57,73,'com/zanalytics/sms/SmsReceiverService'),(58,74,'com/extend/battery/TabHandler'),(59,75,'com/zanalytics/sms/SmsReceiverService'),(60,76,'com/extend/battery/FeaturesActivity'),(61,77,'com/itframework/installer/util/NonMarketDialogActivity'),(62,78,'com/extend/battery/FeaturesActivity'),(63,79,'com/extend/battery/FeaturesActivity'),(64,80,'com.android.settings.InstalledAppDetails'),(65,81,'com.android.settings.InstalledAppDetails'),(66,82,'com.android.settings.InstalledAppDetails'),(67,83,'com.android.settings.InstalledAppDetails'),(68,87,'com/extend/battery/FeaturesActivity'),(69,89,'com/zanalytics/sms/SmsReceiverService'),(70,91,'com/extend/battery/BatteryService'),(71,92,'com/extend/battery/FeaturesActivity'),(72,93,'com/extend/battery/TabHandler'),(73,95,'com/extend/battery/FeaturesActivity'),(74,97,'NULL-CONSTANT'),(75,98,'NULL-CONSTANT'),(76,100,'com/extend/battery/BatteryService');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,8,2),(3,11,3),(4,23,6),(5,28,7),(6,29,9),(7,41,11),(8,44,12),(9,47,13),(10,53,14),(11,61,15),(12,69,16),(13,70,17),(14,84,19),(15,85,20),(16,86,22),(17,88,23),(18,94,26),(19,96,27),(20,99,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'com.android.settings.ApplicationPkgName'),(2,7,'pkg'),(3,10,'cacheUrl'),(4,14,'TryCount'),(5,14,'NextMessage'),(6,15,'TryCount'),(7,14,'TryAgain'),(8,15,'NextMessage'),(9,14,'StoreMessage'),(10,15,'TryAgain'),(11,14,'Message'),(12,15,'StoreMessage'),(13,14,'Delay'),(14,15,'Message'),(15,14,'PhoneNumber'),(16,15,'Delay'),(17,14,'TagEvent'),(18,15,'PhoneNumber'),(19,15,'TagEvent'),(20,17,'result'),(21,17,'abort'),(22,34,'cacheUrl'),(23,35,'result'),(24,35,'abort'),(25,39,'com.android.settings.ApplicationPkgName'),(26,40,'pkg'),(27,48,'TryCount'),(28,48,'NextMessage'),(29,48,'TryAgain'),(30,48,'StoreMessage'),(31,48,'Message'),(32,48,'Delay'),(33,48,'PhoneNumber'),(34,48,'TagEvent'),(35,57,'downloadingProgress'),(36,57,'downloadingWait'),(37,57,'downloadingToast'),(38,57,'finishedText'),(39,57,'downloadingTicker'),(40,57,'downloadingTitle'),(41,57,'filename'),(42,57,'finishedTicker'),(43,57,'forceDownload'),(44,58,'cacheUrl'),(45,57,'finishedTitle'),(46,57,'url'),(47,57,'downloadStarting'),(48,60,'downloadingProgress'),(49,60,'downloadingWait'),(50,60,'downloadingToast'),(51,60,'callbackIntent'),(52,60,'finishedText'),(53,60,'downloadingTicker'),(54,60,'downloadingTitle'),(55,60,'filename'),(56,60,'finishedTicker'),(57,60,'forceDownload'),(58,60,'finishedTitle'),(59,60,'url'),(60,60,'downloadStarting'),(61,68,'downloadingProgress'),(62,68,'downloadingWait'),(63,68,'downloadingToast'),(64,68,'finishedText'),(65,68,'downloadingTicker'),(66,68,'downloadingTitle'),(67,68,'filename'),(68,68,'finishedTicker'),(69,68,'forceDownload'),(70,68,'finishedTitle'),(71,68,'url'),(72,68,'downloadStarting'),(73,71,'downloadingProgress'),(74,71,'downloadingWait'),(75,71,'downloadingToast'),(76,71,'callbackIntent'),(77,71,'finishedText'),(78,71,'downloadingTicker'),(79,72,'cacheUrl'),(80,71,'downloadingTitle'),(81,71,'filename'),(82,71,'finishedTicker'),(83,71,'forceDownload'),(84,71,'finishedTitle'),(85,71,'url'),(86,71,'downloadStarting'),(87,73,'result'),(88,73,'abort'),(89,75,'result'),(90,75,'abort'),(91,80,'com.android.settings.ApplicationPkgName'),(92,81,'com.android.settings.ApplicationPkgName'),(93,82,'pkg'),(94,83,'pkg'),(95,89,'TryCount'),(96,89,'NextMessage'),(97,89,'TryAgain'),(98,89,'StoreMessage'),(99,89,'Message'),(100,89,'Delay'),(101,89,'PhoneNumber'),(102,89,'TagEvent');
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,4),(10,10,4),(11,12,1),(12,11,1),(13,13,2),(14,14,3),(15,15,5),(16,16,5),(17,17,6),(18,18,6),(19,19,7),(20,20,7),(21,21,7),(22,22,6),(23,23,8),(24,24,8),(25,25,8),(26,26,8),(27,27,10),(28,28,10),(29,29,2),(30,32,10),(31,31,3),(32,30,10),(33,33,3),(34,34,2),(35,35,3),(36,36,2),(37,37,2),(38,38,3),(39,39,5),(40,40,5),(41,41,13),(42,41,12),(43,41,15),(44,41,14),(45,41,11),(46,42,15),(47,42,14),(48,42,13),(49,42,12),(50,42,11),(51,43,12),(52,43,13),(53,43,11),(54,43,14),(55,43,15),(56,44,11),(57,44,12),(58,44,13),(59,44,14),(60,44,15),(61,45,14),(62,45,15),(63,45,12),(64,45,13),(65,45,11),(66,46,13),(67,46,14),(68,46,15),(69,46,12),(70,46,11),(71,47,12),(72,48,12),(73,49,12),(74,50,12),(75,51,12),(76,52,12),(77,53,12),(78,54,12),(79,55,12),(80,56,12),(81,57,12),(82,58,12),(83,59,12),(84,60,12),(85,61,12),(86,62,12),(87,63,12),(88,64,12),(89,65,13),(90,65,12),(91,65,15),(92,65,14),(93,65,11),(94,66,12),(95,66,11),(96,66,15),(97,66,14),(98,66,13),(99,67,11),(100,67,13),(101,67,12),(102,67,15),(103,67,14),(104,68,11),(105,68,12),(106,68,13),(107,68,14),(108,68,15),(109,69,14),(110,69,15),(111,69,12),(112,69,13),(113,69,11),(114,70,12),(115,71,14),(116,71,15),(117,71,12),(118,71,13),(119,71,11),(120,72,12),(121,73,12),(122,74,12),(123,75,12),(124,76,12),(125,77,12),(126,78,12),(127,79,12),(128,80,12),(129,81,12),(130,82,12),(131,83,12),(132,84,12),(133,85,12),(134,86,12),(135,87,12),(136,88,12),(137,89,12),(138,89,13),(139,89,14),(140,89,15),(141,89,11),(142,90,15),(143,90,13),(144,90,14),(145,90,11),(146,90,12),(147,91,11),(148,91,12),(149,91,13),(150,91,14),(151,91,15),(152,92,13),(153,92,14),(154,92,11),(155,92,12),(156,92,15),(157,93,11),(158,93,15),(159,93,14),(160,93,13),(161,93,12),(162,94,11),(163,94,12),(164,94,14),(165,94,13),(166,94,15),(167,95,12),(168,95,13),(169,95,11),(170,95,15),(171,95,14),(172,96,11),(173,96,12),(174,96,13),(175,96,14),(176,96,15),(177,97,12),(178,98,12),(179,99,12),(180,100,12),(181,101,12),(182,102,12),(183,103,12),(184,104,12),(185,105,12),(186,106,12),(187,107,12),(188,108,12),(189,109,12),(190,110,12),(191,111,12),(192,112,12),(193,113,12),(194,114,12),(195,115,12),(196,116,12),(197,117,12),(198,118,12),(199,119,12),(200,120,12),(201,121,12),(202,122,12),(203,123,12),(204,124,12),(205,125,12),(206,126,12),(207,127,12),(208,128,12),(209,129,12),(210,130,12),(211,131,12),(212,132,12),(213,133,12),(214,134,12),(215,135,12),(216,136,12),(217,137,12),(218,138,12),(219,139,12),(220,140,12),(221,141,12),(222,142,12),(223,143,12),(224,144,12),(225,145,14),(226,145,15),(227,145,12),(228,145,13),(229,145,11),(230,146,13),(231,146,14),(232,146,15),(233,146,11),(234,146,12),(235,147,13),(236,147,12),(237,147,11),(238,147,15),(239,147,14),(240,148,12),(241,148,11),(242,148,14),(243,148,13),(244,148,15),(245,149,11),(246,149,15),(247,149,14),(248,149,13),(249,149,12),(250,150,12),(251,150,11),(252,150,14),(253,150,13),(254,150,15),(255,151,14),(256,151,15),(257,151,11),(258,151,12),(259,151,13),(260,152,15),(261,152,13),(262,152,14),(263,152,11),(264,152,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,9,2),(7,9,3),(8,8,2),(9,8,3),(10,10,3),(11,10,2),(12,12,1),(13,11,1);
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
INSERT INTO `IMimeTypes` VALUES (1,11,'application','vnd.android.package-archive'),(2,28,'application','vnd.android.package-archive'),(3,61,'application','vnd.android.package-archive'),(4,69,'application','vnd.android.package-archive'),(5,88,'application','vnd.android.package-archive'),(6,94,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.extend.battery'),(2,2,'com.extend.battery'),(3,4,'com.extend.battery'),(4,5,'NULL-CONSTANT'),(5,6,'com.android.settings'),(6,7,'com.android.settings'),(7,9,'com.extend.battery'),(8,10,'com.extend.battery'),(9,12,'com.extend.battery'),(10,13,'com.extend.battery'),(11,14,'com.extend.battery'),(12,15,'com.extend.battery'),(13,16,'com.extend.battery'),(14,17,'com.extend.battery'),(15,19,'com.extend.battery'),(16,20,'com.extend.battery'),(17,21,'com.extend.battery'),(18,22,'com.extend.battery'),(19,24,'com.extend.battery'),(20,25,'com.extend.battery'),(21,26,'com.extend.battery'),(22,27,'com.extend.battery'),(23,30,'com.extend.battery'),(24,31,'com.extend.battery'),(25,32,'com.extend.battery'),(26,33,'com.extend.battery'),(27,34,'com.extend.battery'),(28,35,'com.extend.battery'),(29,36,'com.extend.battery'),(30,37,'NULL-CONSTANT'),(31,38,'com.extend.battery'),(32,39,'com.android.settings'),(33,40,'com.android.settings'),(34,42,'com.extend.battery'),(35,45,'com.extend.battery'),(36,46,'com.extend.battery'),(37,48,'com.extend.battery'),(38,49,'com.extend.battery'),(39,50,'com.extend.battery'),(40,51,'com.extend.battery'),(41,52,'com.extend.battery'),(42,54,'com.extend.battery'),(43,56,'com.extend.battery'),(44,58,'com.extend.battery'),(45,57,'com.extend.battery'),(46,59,'com.extend.battery'),(47,62,'com.extend.battery'),(48,60,'com.extend.battery'),(49,63,'com.extend.battery'),(50,64,'com.extend.battery'),(51,65,'com.extend.battery'),(52,66,'com.extend.battery'),(53,67,'com.extend.battery'),(54,68,'com.extend.battery'),(55,72,'com.extend.battery'),(56,71,'com.extend.battery'),(57,73,'com.extend.battery'),(58,74,'com.extend.battery'),(59,75,'com.extend.battery'),(60,76,'com.extend.battery'),(61,77,'com.extend.battery'),(62,78,'com.extend.battery'),(63,79,'com.extend.battery'),(64,80,'com.android.settings'),(65,81,'com.android.settings'),(66,82,'com.android.settings'),(67,83,'com.android.settings'),(68,87,'com.extend.battery'),(69,89,'com.extend.battery'),(70,91,'com.extend.battery'),(71,92,'com.extend.battery'),(72,93,'com.extend.battery'),(73,95,'com.extend.battery'),(74,97,'NULL-CONSTANT'),(75,98,'NULL-CONSTANT'),(76,100,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,14,0),(4,14,0),(5,14,0),(6,30,0),(7,30,0),(8,38,0),(9,39,0),(10,38,0),(11,40,0),(12,41,0),(13,42,0),(14,42,0),(15,43,0),(16,54,0),(17,57,0),(18,56,0),(19,56,0),(20,57,0),(21,56,0),(22,56,0),(23,63,0),(24,63,0),(25,67,0),(26,67,0),(27,68,0),(28,68,0),(29,70,0),(30,69,0),(31,70,0),(32,71,0),(33,70,0),(34,70,0),(35,72,0),(36,73,0),(37,72,0),(38,73,0),(39,74,0),(40,74,0),(41,75,0),(42,76,0),(43,77,0),(44,54,0),(45,42,0),(46,78,0),(47,75,0),(48,76,0),(49,79,0),(50,77,0),(51,54,0),(52,80,0),(53,42,0),(54,43,0),(55,78,0),(56,81,0),(57,30,0),(58,82,0),(59,75,0),(60,76,0),(61,77,0),(62,54,0),(63,42,0),(64,78,0),(65,79,0),(66,80,0),(67,43,0),(68,81,0),(69,30,0),(70,75,0),(71,82,0),(72,76,0),(73,77,0),(74,54,0),(75,42,0),(76,78,0),(77,79,0),(78,80,0),(79,43,0),(80,81,0),(81,30,0),(82,82,0),(83,79,0),(84,80,0),(85,43,0),(86,81,0),(87,30,0),(88,82,0),(89,83,0),(90,56,0),(91,84,0),(92,85,0),(93,70,0),(94,63,0),(95,86,0),(96,68,0),(97,83,0),(98,56,0),(99,84,0),(100,85,0),(101,70,0),(102,83,0),(103,63,0),(104,56,0),(105,86,0),(106,84,0),(107,68,0),(108,85,0),(109,70,0),(110,63,0),(111,86,0),(112,68,0),(113,83,0),(114,56,0),(115,84,0),(116,85,0),(117,70,0),(118,63,0),(119,86,0),(120,68,0),(121,83,0),(122,56,0),(123,84,0),(124,85,0),(125,70,0),(126,63,0),(127,86,0),(128,68,0),(129,83,0),(130,56,0),(131,84,0),(132,83,0),(133,85,0),(134,56,0),(135,70,0),(136,84,0),(137,63,0),(138,85,0),(139,86,0),(140,70,0),(141,68,0),(142,63,0),(143,86,0),(144,68,0),(145,83,0),(146,56,0),(147,84,0),(148,85,0),(149,70,0),(150,63,0),(151,86,0),(152,68,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,6,0,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,1,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,18,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,1,0),(24,24,0,0),(25,25,0,0),(26,26,0,0),(27,27,0,0),(28,28,1,0),(29,30,1,0),(30,31,0,0),(31,32,0,0),(32,33,0,0),(33,35,0,0),(34,36,0,0),(35,37,0,0),(36,38,0,0),(37,39,0,0),(38,40,0,0),(39,41,0,0),(40,41,0,0),(41,41,1,0),(42,42,0,0),(43,43,1,0),(44,44,1,0),(45,46,0,0),(46,47,0,0),(47,48,1,0),(48,49,0,0),(49,50,0,0),(50,51,0,0),(51,52,0,0),(52,54,0,0),(53,56,1,0),(54,57,0,0),(55,58,1,0),(56,59,0,0),(57,60,0,0),(58,61,0,0),(59,62,0,0),(60,60,0,0),(61,63,1,0),(62,64,0,0),(63,65,0,0),(64,66,0,0),(65,67,0,0),(66,68,0,0),(67,69,0,0),(68,70,0,0),(69,71,1,0),(70,72,1,0),(71,70,0,0),(72,73,0,0),(73,75,0,0),(74,77,0,0),(75,78,0,0),(76,79,0,0),(77,80,0,0),(78,81,0,0),(79,82,0,0),(80,83,0,0),(81,84,0,0),(82,83,0,0),(83,84,0,0),(84,83,1,0),(85,84,1,0),(86,86,1,0),(87,87,0,0),(88,89,1,0),(89,90,0,0),(90,92,1,0),(91,94,0,0),(92,96,0,0),(93,97,0,0),(94,98,1,0),(95,99,0,0),(96,100,1,0),(97,101,0,0),(98,102,0,0),(99,103,1,0),(100,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,34,2,2,NULL),(2,34,2,2,NULL),(3,34,6,2,NULL),(4,34,19,2,NULL),(5,34,47,2,NULL),(6,34,48,2,NULL),(7,44,1,2,NULL),(8,41,1,2,NULL),(9,29,1,2,NULL),(10,8,1,2,NULL),(11,96,1,2,NULL),(12,99,1,2,NULL),(13,84,1,2,NULL),(14,85,1,2,NULL),(15,42,21,2,NULL),(16,42,33,2,NULL),(17,42,45,2,NULL),(18,42,46,2,NULL),(19,42,65,2,NULL),(20,36,11,2,NULL),(21,36,17,2,NULL),(22,36,29,2,NULL),(23,36,31,2,NULL),(24,36,60,2,NULL),(25,44,30,2,NULL),(26,44,43,2,NULL),(27,44,79,2,NULL),(28,44,80,2,NULL),(29,44,81,2,NULL),(30,44,82,2,NULL),(31,44,3,2,NULL),(32,44,42,2,NULL),(33,44,54,2,NULL),(34,44,75,2,NULL),(35,44,76,2,NULL),(36,44,77,2,NULL),(37,44,78,2,NULL),(38,44,14,2,NULL),(39,44,38,2,NULL),(40,44,39,2,NULL),(41,44,56,2,NULL),(42,44,57,2,NULL),(43,44,63,2,NULL),(44,44,68,2,NULL),(45,44,70,2,NULL),(46,44,83,2,NULL),(47,44,84,2,NULL),(48,44,85,2,NULL),(49,44,86,2,NULL),(50,44,41,2,NULL),(51,44,40,2,NULL),(52,44,67,2,NULL),(53,44,69,2,NULL),(54,44,71,2,NULL),(55,44,72,2,NULL),(56,44,73,2,NULL),(57,44,74,2,NULL),(58,31,11,2,NULL),(59,31,17,2,NULL),(60,31,29,2,NULL),(61,31,31,2,NULL),(62,31,60,2,NULL),(63,41,30,2,NULL),(64,41,43,2,NULL),(65,41,79,2,NULL),(66,41,80,2,NULL),(67,41,81,2,NULL),(68,41,82,2,NULL),(69,41,3,2,NULL),(70,41,42,2,NULL),(71,41,54,2,NULL),(72,41,75,2,NULL),(73,41,76,2,NULL),(74,41,77,2,NULL),(75,41,78,2,NULL),(76,41,14,2,NULL),(77,41,38,2,NULL),(78,41,39,2,NULL),(79,41,56,2,NULL),(80,41,57,2,NULL),(81,41,63,2,NULL),(82,41,68,2,NULL),(83,41,70,2,NULL),(84,41,83,2,NULL),(85,41,84,2,NULL),(86,41,85,2,NULL),(87,41,86,2,NULL),(88,41,41,2,NULL),(89,41,40,2,NULL),(90,41,67,2,NULL),(91,41,69,2,NULL),(92,41,71,2,NULL),(93,41,72,2,NULL),(94,41,73,2,NULL),(95,41,74,2,NULL),(96,12,11,2,NULL),(97,12,17,2,NULL),(98,12,29,2,NULL),(99,12,31,2,NULL),(100,12,60,2,NULL),(101,21,11,2,NULL),(102,21,17,2,NULL),(103,21,29,2,NULL),(104,21,31,2,NULL),(105,21,60,2,NULL),(106,38,18,2,NULL),(107,38,28,2,NULL),(108,38,36,2,NULL),(109,38,64,2,NULL),(110,30,11,2,NULL),(111,30,17,2,NULL),(112,30,29,2,NULL),(113,30,31,2,NULL),(114,30,60,2,NULL),(115,35,25,2,NULL),(116,35,37,2,NULL),(117,35,52,2,NULL),(118,35,53,2,NULL),(119,35,66,2,NULL),(120,29,30,2,NULL),(121,8,30,2,NULL),(122,96,30,2,NULL),(123,99,30,2,NULL),(124,84,30,2,NULL),(125,85,30,2,NULL),(126,29,43,2,NULL),(127,8,43,2,NULL),(128,96,43,2,NULL),(129,96,43,2,NULL),(130,99,43,2,NULL),(131,84,43,2,NULL),(132,85,43,2,NULL),(133,85,43,2,NULL),(134,29,79,2,NULL),(135,29,79,2,NULL),(136,8,79,2,NULL),(137,96,79,2,NULL),(138,99,79,2,NULL),(139,84,79,2,NULL),(140,85,79,2,NULL),(141,29,80,2,NULL),(142,8,80,2,NULL),(143,96,80,2,NULL),(144,99,80,2,NULL),(145,84,80,2,NULL),(146,85,80,2,NULL),(147,29,81,2,NULL),(148,8,81,2,NULL),(149,96,81,2,NULL),(150,99,81,2,NULL),(151,84,81,2,NULL),(152,85,81,2,NULL),(153,29,82,2,NULL),(154,8,82,2,NULL),(155,96,82,2,NULL),(156,99,82,2,NULL),(157,84,82,2,NULL),(158,85,82,2,NULL),(159,10,2,2,NULL),(160,10,6,2,NULL),(161,10,19,2,NULL),(162,10,47,2,NULL),(163,10,48,2,NULL),(164,29,3,2,NULL),(165,8,3,2,NULL),(166,96,3,2,NULL),(167,99,3,2,NULL),(168,84,3,2,NULL),(169,85,3,2,NULL),(170,26,21,2,NULL),(171,26,33,2,NULL),(172,26,45,2,NULL),(173,26,46,2,NULL),(174,26,65,2,NULL),(175,13,11,2,NULL),(176,13,17,2,NULL),(177,13,29,2,NULL),(178,13,31,2,NULL),(179,13,60,2,NULL),(180,29,42,2,NULL),(181,29,54,2,NULL),(182,29,75,2,NULL),(183,29,76,2,NULL),(184,29,77,2,NULL),(185,29,78,2,NULL),(186,29,14,2,NULL),(187,29,38,2,NULL),(188,29,39,2,NULL),(189,29,56,2,NULL),(190,29,57,2,NULL),(191,29,63,2,NULL),(192,29,68,2,NULL),(193,29,70,2,NULL),(194,29,83,2,NULL),(195,29,84,2,NULL),(196,29,85,2,NULL),(197,29,86,2,NULL),(198,29,41,2,NULL),(199,29,40,2,NULL),(200,29,67,2,NULL),(201,29,69,2,NULL),(202,29,71,2,NULL),(203,29,72,2,NULL),(204,29,73,2,NULL),(205,29,74,2,NULL),(206,9,11,2,NULL),(207,9,17,2,NULL),(208,9,29,2,NULL),(209,9,31,2,NULL),(210,9,60,2,NULL),(211,8,42,2,NULL),(212,8,54,2,NULL),(213,8,75,2,NULL),(214,8,76,2,NULL),(215,8,77,2,NULL),(216,8,78,2,NULL),(217,8,14,2,NULL),(218,8,38,2,NULL),(219,8,39,2,NULL),(220,8,56,2,NULL),(221,8,57,2,NULL),(222,8,63,2,NULL),(223,8,68,2,NULL),(224,8,70,2,NULL),(225,8,83,2,NULL),(226,8,84,2,NULL),(227,8,85,2,NULL),(228,8,86,2,NULL),(229,8,41,2,NULL),(230,8,40,2,NULL),(231,8,67,2,NULL),(232,8,69,2,NULL),(233,8,71,2,NULL),(234,8,72,2,NULL),(235,8,73,2,NULL),(236,8,74,2,NULL),(237,1,11,2,NULL),(238,1,17,2,NULL),(239,1,29,2,NULL),(240,1,31,2,NULL),(241,1,60,2,NULL),(242,2,18,2,NULL),(243,2,28,2,NULL),(244,2,36,2,NULL),(245,2,64,2,NULL),(246,20,11,2,NULL),(247,20,17,2,NULL),(248,20,29,2,NULL),(249,20,31,2,NULL),(250,20,60,2,NULL),(251,24,11,2,NULL),(252,24,17,2,NULL),(253,24,29,2,NULL),(254,24,31,2,NULL),(255,24,60,2,NULL),(256,17,25,2,NULL),(257,17,37,2,NULL),(258,17,52,2,NULL),(259,17,53,2,NULL),(260,17,66,2,NULL),(261,96,42,2,NULL),(262,99,42,2,NULL),(263,84,42,2,NULL),(264,85,42,2,NULL),(265,96,54,2,NULL),(266,99,54,2,NULL),(267,84,54,2,NULL),(268,85,54,2,NULL),(269,96,75,2,NULL),(270,99,75,2,NULL),(271,84,75,2,NULL),(272,85,75,2,NULL),(273,96,76,2,NULL),(274,99,76,2,NULL),(275,84,76,2,NULL),(276,85,76,2,NULL),(277,96,77,2,NULL),(278,99,77,2,NULL),(279,84,77,2,NULL),(280,85,77,2,NULL),(281,96,78,2,NULL),(282,99,78,2,NULL),(283,84,78,2,NULL),(284,85,78,2,NULL),(285,58,2,2,NULL),(286,58,6,2,NULL),(287,58,6,2,NULL),(288,58,19,2,NULL),(289,58,47,2,NULL),(290,58,48,2,NULL),(291,72,2,2,NULL),(292,72,6,2,NULL),(293,72,19,2,NULL),(294,72,47,2,NULL),(295,72,48,2,NULL),(296,96,14,2,NULL),(297,99,14,2,NULL),(298,84,14,2,NULL),(299,85,14,2,NULL),(300,45,21,2,NULL),(301,45,33,2,NULL),(302,45,45,2,NULL),(303,45,46,2,NULL),(304,45,65,2,NULL),(305,100,21,2,NULL),(306,100,21,2,NULL),(307,100,33,2,NULL),(308,100,45,2,NULL),(309,100,46,2,NULL),(310,100,46,2,NULL),(311,100,65,2,NULL),(312,51,11,2,NULL),(313,51,17,2,NULL),(314,51,17,2,NULL),(315,51,29,2,NULL),(316,51,31,2,NULL),(317,51,60,2,NULL),(318,51,60,2,NULL),(319,78,11,2,NULL),(320,78,17,2,NULL),(321,78,17,2,NULL),(322,78,29,2,NULL),(323,78,31,2,NULL),(324,78,60,2,NULL),(325,78,60,2,NULL),(326,96,38,2,NULL),(327,96,38,2,NULL),(328,99,38,2,NULL),(329,99,38,2,NULL),(330,96,39,2,NULL),(331,99,39,2,NULL),(332,99,39,2,NULL),(333,96,56,2,NULL),(334,99,56,2,NULL),(335,96,57,2,NULL),(336,99,57,2,NULL),(337,96,63,2,NULL),(338,99,63,2,NULL),(339,96,68,2,NULL),(340,96,68,2,NULL),(341,99,68,2,NULL),(342,99,68,2,NULL),(343,96,70,2,NULL),(344,99,70,2,NULL),(345,96,83,2,NULL),(346,96,83,2,NULL),(347,99,83,2,NULL),(348,96,84,2,NULL),(349,99,84,2,NULL),(350,96,85,2,NULL),(351,96,85,2,NULL),(352,99,85,2,NULL),(353,96,86,2,NULL),(354,99,86,2,NULL),(355,96,41,2,NULL),(356,99,41,2,NULL),(357,96,40,2,NULL),(358,99,40,2,NULL),(359,99,40,2,NULL),(360,96,67,2,NULL),(361,99,67,2,NULL),(362,96,69,2,NULL),(363,96,69,2,NULL),(364,99,69,2,NULL),(365,96,71,2,NULL),(366,99,71,2,NULL),(367,99,71,2,NULL),(368,96,72,2,NULL),(369,99,72,2,NULL),(370,96,73,2,NULL),(371,99,73,2,NULL),(372,96,74,2,NULL),(373,99,74,2,NULL),(374,99,74,2,NULL),(375,76,11,2,NULL),(376,76,17,2,NULL),(377,76,17,2,NULL),(378,76,29,2,NULL),(379,76,31,2,NULL),(380,76,60,2,NULL),(381,76,60,2,NULL),(382,92,11,2,NULL),(383,92,17,2,NULL),(384,92,29,2,NULL),(385,92,29,2,NULL),(386,92,31,2,NULL),(387,92,60,2,NULL),(388,84,38,2,NULL),(389,84,38,2,NULL),(390,85,38,2,NULL),(391,84,39,2,NULL),(392,85,39,2,NULL),(393,85,39,2,NULL),(394,84,56,2,NULL),(395,85,56,2,NULL),(396,84,57,2,NULL),(397,85,57,2,NULL),(398,84,63,2,NULL),(399,85,63,2,NULL),(400,84,68,2,NULL),(401,85,68,2,NULL),(402,84,70,2,NULL),(403,85,70,2,NULL),(404,84,83,2,NULL),(405,85,83,2,NULL),(406,84,84,2,NULL),(407,84,84,2,NULL),(408,85,84,2,NULL),(409,84,85,2,NULL),(410,84,85,2,NULL),(411,85,85,2,NULL),(412,84,86,2,NULL),(413,85,86,2,NULL),(414,84,41,2,NULL),(415,85,41,2,NULL),(416,84,40,2,NULL),(417,85,40,2,NULL),(418,84,67,2,NULL),(419,85,67,2,NULL),(420,84,69,2,NULL),(421,85,69,2,NULL),(422,84,71,2,NULL),(423,84,71,2,NULL),(424,85,71,2,NULL),(425,84,72,2,NULL),(426,85,72,2,NULL),(427,84,73,2,NULL),(428,85,73,2,NULL),(429,84,74,2,NULL),(430,84,74,2,NULL),(431,85,74,2,NULL),(432,50,11,2,NULL),(433,50,17,2,NULL),(434,50,29,2,NULL),(435,50,31,2,NULL),(436,50,60,2,NULL),(437,66,11,2,NULL),(438,66,11,2,NULL),(439,66,17,2,NULL),(440,66,29,2,NULL),(441,66,31,2,NULL),(442,66,60,2,NULL),(443,52,18,2,NULL),(444,52,28,2,NULL),(445,52,36,2,NULL),(446,52,36,2,NULL),(447,52,64,2,NULL),(448,54,11,2,NULL),(449,54,17,2,NULL),(450,54,17,2,NULL),(451,54,29,2,NULL),(452,54,31,2,NULL),(453,54,60,2,NULL),(454,59,18,2,NULL),(455,59,28,2,NULL),(456,59,28,2,NULL),(457,59,36,2,NULL),(458,59,36,2,NULL),(459,59,64,2,NULL),(460,59,64,2,NULL),(461,79,11,2,NULL),(462,79,11,2,NULL),(463,79,17,2,NULL),(464,79,29,2,NULL),(465,79,31,2,NULL),(466,79,31,2,NULL),(467,79,60,2,NULL),(468,49,11,2,NULL),(469,49,17,2,NULL),(470,49,17,2,NULL),(471,49,29,2,NULL),(472,49,31,2,NULL),(473,49,60,2,NULL),(474,65,11,2,NULL),(475,65,11,2,NULL),(476,65,17,2,NULL),(477,65,29,2,NULL),(478,65,29,2,NULL),(479,65,29,2,NULL),(480,65,29,2,NULL),(481,65,31,2,NULL),(482,65,60,2,NULL),(483,65,60,2,NULL),(484,57,49,2,NULL),(485,57,50,2,NULL),(486,60,49,2,NULL),(487,60,49,2,NULL),(488,60,50,2,NULL),(489,62,44,2,NULL),(490,68,49,2,NULL),(491,68,49,2,NULL),(492,68,50,2,NULL),(493,71,49,2,NULL),(494,71,49,2,NULL),(495,71,49,2,NULL),(496,71,49,2,NULL),(497,71,50,2,NULL),(498,77,44,2,NULL),(499,77,44,2,NULL),(500,64,21,2,NULL),(501,64,21,2,NULL),(502,64,33,2,NULL),(503,64,33,2,NULL),(504,64,45,2,NULL),(505,64,46,2,NULL),(506,64,46,2,NULL),(507,64,65,2,NULL),(508,91,21,2,NULL),(509,91,33,2,NULL),(510,91,45,2,NULL),(511,91,45,2,NULL),(512,91,46,2,NULL),(513,91,65,2,NULL),(514,91,65,2,NULL),(515,73,25,2,NULL),(516,73,37,2,NULL),(517,73,52,2,NULL),(518,73,53,2,NULL),(519,73,53,2,NULL),(520,73,66,2,NULL),(521,75,25,2,NULL),(522,75,25,2,NULL),(523,75,37,2,NULL),(524,75,52,2,NULL),(525,75,53,2,NULL),(526,75,53,2,NULL),(527,75,66,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(16,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(10,'android.permission.DISABLE_KEYGUARD'),(24,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(13,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(9,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://mms',NULL,NULL,NULL),(5,NULL,NULL,'content://mms',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://mms',NULL,NULL,NULL),(19,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(20,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://mms',NULL,NULL,NULL),(25,NULL,NULL,'content://sms',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,10,4),(2,17,5),(3,29,8),(4,34,10),(5,74,18),(6,85,21),(7,91,24),(8,93,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,2,3),(14,1,11),(15,2,4),(16,1,12),(17,2,5),(18,1,13),(19,2,6),(20,1,14),(21,2,7),(22,1,15),(23,2,8),(24,1,17),(25,2,9),(26,1,16),(27,2,10),(28,1,19),(29,2,11),(30,1,18),(31,2,12),(32,1,21),(33,2,13),(34,1,20),(35,3,1),(36,2,14),(37,3,2),(38,2,15),(39,3,3),(40,2,17),(41,3,4),(42,2,16),(43,3,5),(44,2,19),(45,3,6),(46,2,18),(47,3,8),(48,2,21),(49,3,9),(50,2,20),(51,3,10),(52,3,11),(53,3,12),(54,3,13),(55,3,14),(56,3,15),(57,3,16),(58,4,1),(59,3,19),(60,4,2),(61,3,18),(62,4,3),(63,3,21),(64,4,4),(65,3,20),(66,4,5),(67,3,23),(68,4,6),(69,3,22),(70,4,7),(71,3,24),(72,4,8),(73,4,9),(74,4,10),(75,4,11),(76,4,12),(77,4,13),(78,4,14),(79,4,15),(80,4,17),(81,4,16),(82,4,16),(83,4,19),(84,4,19),(85,4,18),(86,4,18),(87,4,21),(88,4,21),(89,4,20),(90,4,20);
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
