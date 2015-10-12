-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_736
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'FOREGROUND'),(6,'RESPONCE_RECEIVED'),(13,'STATUS_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.VIEW'),(14,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.settings.LOCATION_SOURCE_SETTINGS'),(5,'android.settings.WIRELESS_SETTINGS'),(12,'com.android.vending.INSTALL_REFERRER'),(10,'com.lg.valle.smsdispatcher.ACTION_NEW_DM'),(8,'com.lg.valle.smsdispatcher.SEND_ANSWER_BACK'),(11,'com.lg.valle.smsdispatcher.TRYIT'),(17,'send_answer_back'),(16,'try_it');
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
INSERT INTO `Applications` VALUES (1,'skz.skz',3),(2,'slon.skz',4),(3,'slon.skz',14),(4,'slon.skz',11),(5,'skz.skz',12),(6,'skz.skz',14),(7,'com.lg.valle.smsdispatcher',8);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'skz.skz.SafeKidZone'),(2,1,'skz.skz.GpsPlusService'),(3,1,'skz.skz.broadCastReceiver'),(4,2,'slon.skz.SafeKidZone'),(5,2,'slon.skz.GpsPlusService'),(6,2,'slon.skz.broadCastReceiver'),(7,3,'slon.skz.SafeKidZone'),(8,4,'slon.skz.SafeKidZone'),(9,3,'org.acra.CrashReportDialog'),(10,4,'org.acra.CrashReportDialog'),(11,3,'slon.skz.Contact'),(12,4,'slon.skz.Contact'),(13,3,'slon.skz.Register'),(14,4,'slon.skz.Register'),(15,3,'slon.skz.FlixwagonActivity'),(16,4,'slon.skz.FlixwagonActivity'),(17,3,'slon.skz.GpsPlusService'),(18,4,'slon.skz.GpsPlusService'),(19,3,'flixwagon.client.protocol.SocketManagerService'),(20,4,'flixwagon.client.protocol.SocketManagerService'),(21,5,'skz.skz.SafeKidZone'),(22,3,'flixwagon.client.application.server.Phase1Encoder'),(23,4,'flixwagon.client.application.server.Phase1Encoder'),(24,3,'flixwagon.client.application.server.Phase2Encoder'),(25,4,'flixwagon.client.application.server.Phase2Encoder'),(26,3,'slon.skz.broadCastReceiver'),(27,5,'org.acra.CrashReportDialog'),(28,4,'slon.skz.broadCastReceiver'),(29,5,'skz.skz.Contact'),(30,5,'skz.skz.Register'),(31,3,'flixwagon.client.application.ResponseReceiver'),(32,4,'flixwagon.client.application.ResponseReceiver'),(33,6,'skz.skz.SafeKidZone'),(34,5,'skz.skz.FlixwagonActivity'),(35,5,'skz.skz.GpsPlusService'),(36,6,'org.acra.CrashReportDialog'),(37,5,'flixwagon.client.protocol.SocketManagerService'),(38,6,'skz.skz.Contact'),(39,5,'flixwagon.client.application.server.Phase1Encoder'),(40,6,'skz.skz.Register'),(41,5,'flixwagon.client.application.server.Phase2Encoder'),(42,6,'skz.skz.FlixwagonActivity'),(43,5,'skz.skz.broadCastReceiver'),(44,6,'skz.skz.GpsPlusService'),(45,6,'flixwagon.client.protocol.SocketManagerService'),(46,5,'flixwagon.client.application.ResponseReceiver'),(47,6,'flixwagon.client.application.server.Phase1Encoder'),(48,6,'flixwagon.client.application.server.Phase2Encoder'),(49,6,'skz.skz.broadCastReceiver'),(50,6,'flixwagon.client.application.ResponseReceiver'),(51,7,'com.lg.valle.smsdispatcher.Preferences'),(52,7,'com.lg.valle.smsdispatcher.MainActivity'),(53,7,'com.lg.valle.smsdispatcher.ActivitiesList'),(54,7,'com.lg.valle.smsdispatcher.TwitterAuth'),(55,7,'com.admob.android.ads.AdMobActivity'),(56,7,'com.lg.valle.smsdispatcher.UpdateService'),(57,7,'com.lg.valle.smsdispatcher.MessagesReceiver'),(58,7,'com.lg.valle.smsdispatcher.BootReceiver'),(59,7,'com.admob.android.ads.analytics.InstallReceiver'),(60,4,'flixwagon.client.application.o'),(61,4,'flixwagon.client.FlixwagonActivity'),(62,4,'flixwagon.client.d'),(63,4,'slon.skz.Task'),(64,3,'flixwagon.client.application.o'),(65,5,'skz.skz.Task'),(66,3,'flixwagon.client.FlixwagonActivity'),(67,5,'flixwagon.client.FlixwagonActivity'),(68,6,'flixwagon.client.FlixwagonActivity'),(69,7,'com.lg.valle.smsdispatcher.MainActivity$1'),(70,6,'flixwagon.client.application.o'),(71,5,'flixwagon.client.application.o'),(72,6,'skz.skz.Task'),(73,7,'com.lg.valle.smsdispatcher.Preferences$2'),(74,6,'skz.skz.GpsPlusService$1'),(75,5,'flixwagon.client.d'),(76,3,'slon.skz.Task'),(77,7,'com.lg.valle.smsdispatcher.TwitterAuth$3'),(78,6,'flixwagon.client.d'),(79,3,'flixwagon.client.d'),(80,3,'slon.skz.GpsPlusService$1'),(81,5,'skz.skz.GpsPlusService$1'),(82,7,'com.lg.valle.smsdispatcher.Preferences$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'android.intent.extra.PHONE_NUMBER'),(2,3,'android.intent.extra.PHONE_NUMBER'),(3,20,'sessionId'),(4,8,'sessionId'),(5,20,'swLng'),(6,8,'swLng'),(7,14,'RES_NOTIF_TEXT'),(8,8,'RES_NOTIF_TEXT'),(9,12,'RES_NOTIF_TEXT'),(10,18,'RES_NOTIF_TEXT'),(11,10,'RES_DIALOG_TEXT'),(12,20,'tags'),(13,8,'tags'),(14,20,'action token'),(15,8,'action token'),(16,10,'RES_DIALOG_ICON'),(17,10,'REPORT_FILE_NAME'),(18,20,'srcStr'),(19,8,'srcStr'),(20,10,'RES_DIALOG_COMMENT_PROMPT'),(21,20,'neLng'),(22,8,'neLng'),(23,14,'RES_TOAST_TEXT'),(24,8,'RES_TOAST_TEXT'),(25,12,'RES_TOAST_TEXT'),(26,18,'RES_TOAST_TEXT'),(27,20,'swLat'),(28,8,'swLat'),(29,14,'RES_NOTIF_TICKER_TEXT'),(30,8,'RES_NOTIF_TICKER_TEXT'),(31,12,'RES_NOTIF_TICKER_TEXT'),(32,18,'RES_NOTIF_TICKER_TEXT'),(33,20,'description'),(34,8,'description'),(35,10,'RES_DIALOG_TITLE'),(36,10,'RES_DIALOG_OK_TOAST'),(37,14,'RES_NOTIF_TITLE'),(38,8,'RES_NOTIF_TITLE'),(39,12,'RES_NOTIF_TITLE'),(40,18,'RES_NOTIF_TITLE'),(41,20,'neLat'),(42,8,'neLat'),(43,20,'title'),(44,8,'title'),(45,14,'RES_NOTIF_ICON'),(46,8,'RES_NOTIF_ICON'),(47,12,'RES_NOTIF_ICON'),(48,18,'RES_NOTIF_ICON'),(49,19,'title'),(50,7,'title'),(51,19,'tags'),(52,7,'tags'),(53,45,'title'),(54,19,'swLat'),(55,33,'title'),(56,7,'swLat'),(57,19,'swLng'),(58,7,'swLng'),(59,19,'neLng'),(60,7,'neLng'),(61,19,'description'),(62,7,'description'),(63,19,'sessionId'),(64,37,'neLng'),(65,7,'sessionId'),(66,21,'neLng'),(67,55,'b'),(68,59,'(.*)'),(69,45,'srcStr'),(70,33,'srcStr'),(71,19,'srcStr'),(72,7,'srcStr'),(73,55,'ad'),(74,37,'swLng'),(75,55,'au'),(76,21,'swLng'),(77,55,'ru'),(78,55,'o'),(79,55,'msm'),(80,36,'REPORT_FILE_NAME'),(81,19,'action token'),(82,7,'action token'),(83,57,'dummy_sms'),(84,55,'skd'),(85,55,'a'),(86,55,'s'),(87,55,'cbo'),(88,45,'neLng'),(89,9,'REPORT_FILE_NAME'),(90,33,'neLng'),(91,56,'sender'),(92,45,'action token'),(93,55,'or'),(94,33,'action token'),(95,55,'si'),(96,45,'neLat'),(97,33,'neLat'),(98,37,'description'),(99,21,'description'),(100,55,'u'),(101,55,'tr'),(102,55,'c'),(103,37,'sessionId'),(104,21,'sessionId'),(105,37,'action token'),(106,21,'action token'),(107,45,'swLng'),(108,33,'swLng'),(109,45,'description'),(110,33,'description'),(111,55,'sc'),(112,37,'srcStr'),(113,21,'srcStr'),(114,37,'tags'),(115,21,'tags'),(116,19,'neLat'),(117,7,'neLat'),(118,45,'sessionId'),(119,33,'sessionId'),(120,37,'swLat'),(121,57,'pdus'),(122,21,'swLat'),(123,55,'su'),(124,27,'REPORT_FILE_NAME'),(125,55,'json'),(126,45,'swLat'),(127,37,'title'),(128,33,'swLat'),(129,21,'title'),(130,37,'neLat'),(131,21,'neLat'),(132,45,'tags'),(133,33,'tags'),(134,57,'sender'),(135,56,'msg_body'),(136,55,'mi'),(137,55,'sin'),(138,55,'sd'),(139,59,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(140,55,'t'),(141,59,'referrer'),(142,55,'oi'),(143,55,'cs'),(144,55,'nosk'),(145,59,'ADMOB_PUBLISHER_ID'),(146,59,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(147,55,'p'),(148,55,'ap'),(149,55,'rd'),(150,57,'msg_body'),(151,55,'$'),(152,55,'sku'),(153,55,'int');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,62,'r',1,NULL,NULL),(61,75,'r',1,NULL,NULL),(62,78,'r',1,NULL,NULL),(63,79,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,6),(4,4,4),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,9,8),(10,9,20),(11,10,8),(12,11,8),(13,12,8),(14,12,20),(15,13,12),(16,14,28),(17,15,8),(18,16,14),(19,17,8),(20,18,8),(21,19,8),(22,20,20),(23,20,8),(24,21,8),(25,22,8),(26,23,8),(27,24,17),(28,25,35),(29,26,8),(30,27,7),(31,27,19),(32,28,7),(33,28,19),(34,29,21),(35,30,7),(36,30,19),(37,31,49),(38,32,7),(39,33,21),(40,34,33),(41,35,21),(42,36,38),(43,37,52),(44,38,33),(45,39,11),(46,40,21),(47,42,57),(48,41,33),(49,41,45),(50,43,37),(51,43,21),(52,44,33),(53,45,26),(54,46,29),(55,47,58),(56,48,33),(57,49,7),(58,50,43),(59,51,33),(60,52,51),(61,53,21),(62,54,44),(63,55,51),(64,56,7),(65,57,33),(66,58,7),(67,59,21),(68,60,7),(69,61,37),(70,61,21),(71,62,54),(72,63,13),(73,64,21),(74,65,40),(75,66,7),(76,67,51),(77,68,21),(78,69,33),(79,70,51),(80,71,21),(81,72,17),(82,73,33),(83,74,57),(84,75,33),(85,75,45),(86,76,21),(87,77,7),(88,78,33),(89,79,7),(90,80,30),(91,81,54),(92,82,44),(93,83,13),(94,84,21),(95,84,37),(96,85,7),(97,86,33),(98,87,35),(99,88,7),(100,89,40),(101,90,45),(102,90,33),(103,91,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',19,'s',NULL),(2,4,'<slon.skz.SafeKidZone: void _launchGPSOptions()>',8,'a',NULL),(3,6,'<slon.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'a',NULL),(4,4,'<slon.skz.SafeKidZone: void _launchINETOptions()>',8,'a',NULL),(5,1,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',19,'s',NULL),(6,1,'<skz.skz.SafeKidZone: void _launchGPSOptions()>',8,'a',NULL),(7,1,'<skz.skz.SafeKidZone: void _launchINETOptions()>',8,'a',NULL),(8,3,'<skz.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'a',NULL),(9,60,'<flixwagon.client.application.o: void q()>',18,'s',0),(10,8,'<slon.skz.SafeKidZone: boolean onContextItemSelected(android.view.MenuItem)>',50,'a',NULL),(11,61,'<flixwagon.client.FlixwagonActivity: void onRestart()>',7,'s',NULL),(12,60,'<flixwagon.client.application.o: void a(int)>',8,'r',NULL),(13,12,'<slon.skz.Contact: void onContactBtnClick(android.view.View)>',32,'a',NULL),(14,28,'<slon.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(15,8,'<slon.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(16,14,'<slon.skz.Register: void onRegisterBtnClick(android.view.View)>',39,'a',NULL),(17,8,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',199,'s',NULL),(18,61,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(19,61,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',77,'s',NULL),(20,60,'<flixwagon.client.application.o: void q()>',9,'s',0),(21,63,'<slon.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',20,'s',NULL),(22,8,'<slon.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(23,8,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',169,'a',NULL),(24,17,'<slon.skz.GpsPlusService: void handleCommand(android.content.Intent)>',20,'a',NULL),(25,35,'<skz.skz.GpsPlusService: void handleCommand(android.content.Intent)>',20,'a',NULL),(26,61,'<flixwagon.client.FlixwagonActivity: void onRestart()>',4,'s',NULL),(27,64,'<flixwagon.client.application.o: void q()>',9,'s',0),(28,64,'<flixwagon.client.application.o: void a(int)>',8,'r',NULL),(29,65,'<skz.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',20,'s',NULL),(30,64,'<flixwagon.client.application.o: void q()>',18,'s',0),(31,49,'<skz.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(32,66,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',77,'s',NULL),(33,67,'<flixwagon.client.FlixwagonActivity: void onRestart()>',7,'s',NULL),(34,68,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',77,'s',NULL),(35,21,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',161,'s',NULL),(36,38,'<skz.skz.Contact: void onContactBtnClick(android.view.View)>',32,'a',NULL),(37,69,'<com.lg.valle.smsdispatcher.MainActivity$1: void onClick(android.view.View)>',7,'a',NULL),(38,33,'<skz.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(39,11,'<slon.skz.Contact: void onContactBtnClick(android.view.View)>',32,'a',NULL),(40,21,'<skz.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(41,70,'<flixwagon.client.application.o: void q()>',9,'s',0),(42,57,'<com.lg.valle.smsdispatcher.MessagesReceiver: void doForward(java.lang.String)>',23,'a',NULL),(43,71,'<flixwagon.client.application.o: void a(int)>',8,'r',NULL),(44,68,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(45,26,'<slon.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(46,29,'<skz.skz.Contact: void onContactBtnClick(android.view.View)>',32,'a',NULL),(47,58,'<com.lg.valle.smsdispatcher.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(48,72,'<skz.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',20,'s',NULL),(49,7,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',185,'s',NULL),(50,43,'<skz.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(51,68,'<flixwagon.client.FlixwagonActivity: void onRestart()>',7,'s',NULL),(52,73,'<com.lg.valle.smsdispatcher.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',22,'a',NULL),(53,21,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',137,'a',NULL),(54,74,'<skz.skz.GpsPlusService$1: void onLocationChanged(android.location.Location)>',45,'a',NULL),(55,51,'<com.lg.valle.smsdispatcher.Preferences: void onCreate(android.os.Bundle)>',53,'s',NULL),(56,7,'<slon.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(57,68,'<flixwagon.client.FlixwagonActivity: void onRestart()>',4,'s',NULL),(58,7,'<slon.skz.SafeKidZone: void onCreate(android.os.Bundle)>',159,'a',NULL),(59,67,'<flixwagon.client.FlixwagonActivity: void onRestart()>',4,'s',NULL),(60,76,'<slon.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',20,'s',NULL),(61,71,'<flixwagon.client.application.o: void q()>',9,'s',0),(62,77,'<com.lg.valle.smsdispatcher.TwitterAuth$3: void onClick(android.view.View)>',7,'a',NULL),(63,13,'<slon.skz.Register: void onRegisterBtnClick(android.view.View)>',40,'a',NULL),(64,21,'<skz.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(65,40,'<skz.skz.Register: void onRegisterBtnClick(android.view.View)>',40,'a',NULL),(66,66,'<flixwagon.client.FlixwagonActivity: void onRestart()>',7,'s',NULL),(67,73,'<com.lg.valle.smsdispatcher.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',24,'s',NULL),(68,21,'<skz.skz.SafeKidZone: boolean onContextItemSelected(android.view.MenuItem)>',52,'a',NULL),(69,33,'<skz.skz.SafeKidZone: boolean onContextItemSelected(android.view.MenuItem)>',66,'a',NULL),(70,51,'<com.lg.valle.smsdispatcher.Preferences: void sendBroadcastSMS(java.lang.String)>',6,'r',NULL),(71,67,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(72,80,'<slon.skz.GpsPlusService$1: void onLocationChanged(android.location.Location)>',45,'a',NULL),(73,33,'<skz.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(74,57,'<com.lg.valle.smsdispatcher.MessagesReceiver: void answerDMBack(java.lang.String,java.lang.String)>',11,'s',NULL),(75,70,'<flixwagon.client.application.o: void a(int)>',8,'r',NULL),(76,67,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',77,'s',NULL),(77,66,'<flixwagon.client.FlixwagonActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(78,33,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',159,'a',NULL),(79,7,'<slon.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(80,30,'<skz.skz.Register: void onRegisterBtnClick(android.view.View)>',40,'a',NULL),(81,54,'<com.lg.valle.smsdispatcher.TwitterAuth: void askOAuth()>',20,'a',NULL),(82,44,'<skz.skz.GpsPlusService: void handleCommand(android.content.Intent)>',20,'a',NULL),(83,13,'<slon.skz.Register: void onCreateAccBtnClick(android.view.View)>',11,'a',NULL),(84,71,'<flixwagon.client.application.o: void q()>',18,'s',0),(85,7,'<slon.skz.SafeKidZone: boolean onContextItemSelected(android.view.MenuItem)>',66,'a',NULL),(86,33,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',185,'s',NULL),(87,81,'<skz.skz.GpsPlusService$1: void onLocationChanged(android.location.Location)>',85,'a',NULL),(88,66,'<flixwagon.client.FlixwagonActivity: void onRestart()>',4,'s',NULL),(89,40,'<skz.skz.Register: void onCreateAccBtnClick(android.view.View)>',11,'a',NULL),(90,70,'<flixwagon.client.application.o: void q()>',18,'s',0),(91,82,'<com.lg.valle.smsdispatcher.Preferences$1: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,3),(2,4,5),(3,6,3),(4,7,5),(5,11,13),(6,14,3),(7,17,15),(8,19,15),(9,22,15),(10,23,5),(11,28,13),(12,29,15),(13,36,15),(14,38,15),(15,40,5),(16,42,3),(17,43,1),(18,45,13),(19,49,15),(20,51,15),(21,55,15),(22,60,5),(23,64,15),(24,67,5),(25,73,16),(26,76,3),(27,77,17),(28,78,13),(29,82,3),(30,84,7),(31,86,7),(32,87,7),(33,90,7),(34,93,15),(35,94,7),(36,96,15),(37,97,7),(38,98,7),(39,99,7),(40,100,7),(41,101,7),(42,102,7),(43,103,7),(44,104,7),(45,105,7),(46,106,7),(47,107,7),(48,108,7),(49,109,7),(50,110,7),(51,111,7),(52,112,7),(53,113,7),(54,114,7),(55,115,7),(56,116,7),(57,117,7),(58,118,7),(59,119,7);
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
INSERT INTO `ICategories` VALUES (1,2,1),(2,4,1),(3,6,1),(4,7,1),(5,43,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'slon/skz/GpsPlusService'),(2,2,'com.android.settings.SecuritySettings'),(3,3,'slon/skz/SafeKidZone'),(4,4,'com.android.settings.WirelessSettings'),(5,5,'skz/skz/GpsPlusService'),(6,6,'com.android.settings.SecuritySettings'),(7,7,'com.android.settings.WirelessSettings'),(8,8,'skz/skz/SafeKidZone'),(9,9,'slon/skz/Contact'),(10,10,'flixwagon/client/application/server/Phase2Encoder'),(11,12,'slon/skz/SafeKidZone'),(12,13,'slon/skz/SafeKidZone'),(13,15,'slon/skz/SafeKidZone'),(14,18,'slon/skz/GpsPlusService'),(15,19,'slon/skz/GpsPlusService'),(16,20,'flixwagon/client/application/server/Phase2Encoder'),(17,21,'flixwagon/client/application/server/Phase1Encoder'),(18,22,'slon/skz/GpsPlusService'),(19,24,'slon/skz/Register'),(20,25,'slon/skz/SafeKidZone'),(21,26,'skz/skz/SafeKidZone'),(22,27,'flixwagon/client/application/server/Phase1Encoder'),(23,29,'skz/skz/GpsPlusService'),(24,30,'skz/skz/SafeKidZone'),(25,31,'flixwagon/client/application/server/Phase1Encoder'),(26,32,'flixwagon/client/application/server/Phase2Encoder'),(27,33,'flixwagon/client/application/server/Phase1Encoder'),(28,35,'skz/skz/GpsPlusService'),(29,37,'skz/skz/SafeKidZone'),(30,38,'skz/skz/GpsPlusService'),(31,39,'com/lg/valle/smsdispatcher/Preferences'),(32,41,'slon/skz/SafeKidZone'),(33,43,'(.*)'),(34,44,'flixwagon/client/application/server/Phase2Encoder'),(35,46,'slon/skz/SafeKidZone'),(36,48,'com/lg/valle/smsdispatcher/UpdateService'),(37,47,'skz/skz/SafeKidZone'),(38,49,'skz/skz/GpsPlusService'),(39,52,'slon/skz/GpsPlusService'),(40,53,'skz/skz/SafeKidZone'),(41,54,'flixwagon/client/application/server/Phase2Encoder'),(42,55,'slon/skz/GpsPlusService'),(43,56,'com/lg/valle/smsdispatcher/TwitterAuth'),(44,57,'skz/skz/Register'),(45,58,'skz/skz/SafeKidZone'),(46,59,'com/lg/valle/smsdispatcher/UpdateService'),(47,61,'flixwagon/client/application/server/Phase1Encoder'),(48,62,'slon/skz/Register'),(49,63,'flixwagon/client/application/server/Phase1Encoder'),(50,64,'slon/skz/GpsPlusService'),(51,65,'com/lg/valle/smsdispatcher/Preferences'),(52,66,'slon/skz/SafeKidZone'),(53,68,'skz/skz/SafeKidZone'),(54,69,'flixwagon/client/application/server/Phase2Encoder'),(55,70,'com/lg/valle/smsdispatcher/UpdateService'),(56,71,'skz/skz/Contact'),(57,72,'skz/skz/Contact'),(58,73,'com/lg/valle/smsdispatcher/MessagesReceiver'),(59,74,'flixwagon/client/application/server/Phase2Encoder'),(60,75,'slon/skz/SafeKidZone'),(61,79,'flixwagon/client/application/server/Phase1Encoder'),(62,77,'com/lg/valle/smsdispatcher/UpdateService'),(63,80,'flixwagon/client/application/server/Phase2Encoder'),(64,81,'skz/skz/Register'),(65,83,'skz/skz/SafeKidZone'),(66,85,'skz/skz/SafeKidZone'),(67,88,'slon/skz/Contact'),(68,91,'skz/skz/GpsPlusService'),(69,92,'skz/skz/SafeKidZone'),(70,95,'flixwagon/client/application/server/Phase1Encoder'),(71,96,'skz/skz/GpsPlusService'),(72,120,'com/lg/valle/smsdispatcher/ActivitiesList');
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
INSERT INTO `IData` VALUES (1,84,1),(2,86,2),(3,87,3),(4,90,4),(5,94,5),(6,97,6),(7,98,7),(8,99,8),(9,100,9),(10,101,10),(11,102,11),(12,103,12),(13,104,13),(14,105,14),(15,106,15),(16,107,16),(17,108,17),(18,109,18),(19,110,19),(20,111,20),(21,112,21),(22,113,22),(23,114,23),(24,115,24),(25,116,25),(26,117,26),(27,118,27),(28,119,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,43,'msg_body'),(2,73,'dummy_sms'),(3,77,'sender'),(4,77,'msg_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,4),(6,6,4),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,2),(12,12,6),(13,13,1),(14,14,6),(15,15,2),(16,16,6),(17,17,2),(18,18,6),(19,19,1),(20,19,7),(21,21,1),(22,21,7),(23,22,8),(24,23,10),(25,23,11),(26,23,9),(27,24,2),(28,25,12),(29,26,14),(30,27,14),(31,28,14),(32,29,14),(33,30,14),(34,31,14),(35,32,14),(36,33,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,7,1),(6,8,1),(7,9,1),(8,10,2),(9,11,2),(10,13,1),(11,15,2),(12,17,2),(13,19,1),(14,19,3),(15,19,4),(16,21,1),(17,21,3),(18,21,4);
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
INSERT INTO `IFData` VALUES (1,21,'myapp','TwitterAuth',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'slon.skz'),(2,2,'com.android.settings'),(3,3,'slon.skz'),(4,4,'com.android.settings'),(5,5,'skz.skz'),(6,6,'com.android.settings'),(7,7,'com.android.settings'),(8,8,'skz.skz'),(9,9,'slon.skz'),(10,10,'slon.skz'),(11,12,'slon.skz'),(12,13,'slon.skz'),(13,15,'slon.skz'),(14,18,'slon.skz'),(15,19,'slon.skz'),(16,20,'slon.skz'),(17,21,'slon.skz'),(18,22,'slon.skz'),(19,24,'slon.skz'),(20,25,'slon.skz'),(21,26,'skz.skz'),(22,27,'slon.skz'),(23,29,'skz.skz'),(24,30,'skz.skz'),(25,31,'slon.skz'),(26,32,'skz.skz'),(27,33,'skz.skz'),(28,35,'skz.skz'),(29,37,'skz.skz'),(30,38,'skz.skz'),(31,39,'com.lg.valle.smsdispatcher'),(32,41,'slon.skz'),(33,43,'(.*)'),(34,44,'skz.skz'),(35,46,'slon.skz'),(36,48,'com.lg.valle.smsdispatcher'),(37,47,'skz.skz'),(38,49,'skz.skz'),(39,52,'slon.skz'),(40,53,'skz.skz'),(41,54,'skz.skz'),(42,55,'slon.skz'),(43,56,'com.lg.valle.smsdispatcher'),(44,57,'skz.skz'),(45,58,'skz.skz'),(46,59,'com.lg.valle.smsdispatcher'),(47,61,'skz.skz'),(48,62,'slon.skz'),(49,63,'skz.skz'),(50,64,'slon.skz'),(51,65,'com.lg.valle.smsdispatcher'),(52,66,'slon.skz'),(53,68,'skz.skz'),(54,69,'slon.skz'),(55,70,'com.lg.valle.smsdispatcher'),(56,71,'skz.skz'),(57,72,'skz.skz'),(58,73,'com.lg.valle.smsdispatcher'),(59,74,'skz.skz'),(60,75,'slon.skz'),(61,79,'skz.skz'),(62,77,'com.lg.valle.smsdispatcher'),(63,80,'slon.skz'),(64,81,'skz.skz'),(65,83,'skz.skz'),(66,85,'skz.skz'),(67,88,'slon.skz'),(68,91,'skz.skz'),(69,92,'skz.skz'),(70,95,'slon.skz'),(71,96,'skz.skz'),(72,120,'com.lg.valle.smsdispatcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,6,0),(5,6,0),(6,3,0),(7,7,0),(8,8,0),(9,21,0),(10,26,0),(11,28,0),(12,32,0),(13,33,0),(14,31,0),(15,43,0),(16,46,0),(17,49,0),(18,50,0),(19,51,0),(20,52,0),(21,54,0),(22,56,0),(23,57,0),(24,58,0),(25,59,0),(26,28,0),(27,60,0),(28,43,0),(29,61,0),(30,49,0),(31,62,0),(32,26,0),(33,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,10,0,0),(10,11,0,0),(11,12,1,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,16,0,0),(16,17,1,0),(17,17,1,0),(18,17,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,21,0,0),(23,22,1,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,28,1,0),(29,29,0,0),(30,31,0,0),(31,32,0,0),(32,33,0,0),(33,34,0,0),(34,35,1,0),(35,35,0,0),(36,35,1,0),(37,36,0,0),(38,35,0,0),(39,37,0,0),(40,38,1,0),(41,39,0,0),(42,40,1,0),(43,42,0,0),(44,44,0,0),(45,43,1,0),(46,45,0,0),(47,46,0,0),(48,47,0,0),(49,48,0,0),(50,49,1,0),(51,49,1,0),(52,49,0,0),(53,50,0,0),(54,51,0,0),(55,49,0,0),(56,52,0,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,1,0),(61,57,0,0),(62,58,0,0),(63,59,0,0),(64,60,0,0),(65,62,0,0),(66,63,0,0),(67,64,1,0),(68,65,0,0),(69,66,0,0),(70,67,0,0),(71,68,0,0),(72,69,0,0),(73,70,0,0),(74,71,0,0),(75,72,0,0),(76,73,1,0),(77,74,0,0),(78,75,1,0),(79,76,0,0),(80,77,0,0),(81,78,0,0),(82,79,1,0),(83,80,0,0),(84,81,1,0),(85,82,0,0),(86,83,1,0),(87,81,1,0),(88,85,0,0),(89,86,1,0),(90,81,1,0),(91,86,0,0),(92,87,0,0),(93,86,1,0),(94,81,1,0),(95,88,0,0),(96,86,0,0),(97,81,1,0),(98,89,1,0),(99,81,1,0),(100,81,1,0),(101,81,1,0),(102,81,1,0),(103,81,1,0),(104,81,1,0),(105,81,1,0),(106,81,1,0),(107,81,1,0),(108,81,1,0),(109,81,1,0),(110,81,1,0),(111,81,1,0),(112,81,1,0),(113,81,1,0),(114,81,1,0),(115,81,1,0),(116,81,1,0),(117,81,1,0),(118,81,1,0),(119,81,1,0),(120,91,0,0);
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
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_ASSISTED_GPS'),(12,'android.permission.ACCESS_CELL_ID'),(7,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_COARSE_UPDATES'),(5,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_GPS'),(11,'android.permission.ACCESS_LOCATION'),(6,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_MOCK_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CAMERA'),(23,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.INTERNET'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(15,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(26,'android.permission.RECEIVE_SMS'),(20,'android.permission.RECORD_AUDIO'),(18,'android.permission.RECORD_VIDEO'),(25,'android.permission.SEND_SMS'),(24,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://twitter.com/oauth/authorize&',NULL,NULL,NULL),(2,NULL,NULL,'http://login.safetrec.com/register.php',NULL,NULL,NULL),(3,NULL,NULL,'http://twitter.com/oauth/authorize?(.*)=',NULL,NULL,NULL),(4,NULL,NULL,'http://twitter.com/oauth/authorize&&(.*)=',NULL,NULL,NULL),(5,NULL,NULL,'http://twitter.com/oauth/authorize&&=(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://twitter.com/oauth/authorize?&=',NULL,NULL,NULL),(7,NULL,NULL,'http://login.safekidzone.com/register.php',NULL,NULL,NULL),(8,NULL,NULL,'http://twitter.com/oauth/authorize&=',NULL,NULL,NULL),(9,NULL,NULL,'http://twitter.com/oauth/authorize&(.*)=',NULL,NULL,NULL),(10,NULL,NULL,'(.*)(.*)=',NULL,NULL,NULL),(11,NULL,NULL,'http://twitter.com/oauth/authorize?&(.*)=',NULL,NULL,NULL),(12,NULL,NULL,'http://twitter.com/oauth/authorize&(.*)=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)&=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://twitter.com/oauth/authorize?(.*)=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)&=',NULL,NULL,NULL),(16,NULL,NULL,'(.*)=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://twitter.com/oauth/authorize?=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)&(.*)=',NULL,NULL,NULL),(19,NULL,NULL,'http://twitter.com/oauth/authorize&=(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://twitter.com/oauth/authorize&&=',NULL,NULL,NULL),(21,NULL,NULL,'http://twitter.com/oauth/authorize&&(.*)=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://twitter.com/oauth/authorize?&(.*)=(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)=',NULL,NULL,NULL),(24,NULL,NULL,'(.*)(.*)=(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://twitter.com/oauth/authorize?',NULL,NULL,NULL),(26,NULL,NULL,'(.*)&(.*)=(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://twitter.com/oauth/authorize?=',NULL,NULL,NULL),(28,NULL,NULL,'http://twitter.com/oauth/authorize?&=(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,3,1),(22,4,1),(23,3,2),(24,4,2),(25,3,3),(26,4,3),(27,3,4),(28,4,4),(29,4,5),(30,3,5),(31,4,6),(32,3,6),(33,3,7),(34,4,7),(35,3,8),(36,4,8),(37,3,9),(38,4,9),(39,3,10),(40,4,10),(41,3,11),(42,4,11),(43,3,12),(44,4,12),(45,3,13),(46,4,13),(47,3,14),(48,4,14),(49,3,15),(50,4,15),(51,3,17),(52,4,17),(53,3,16),(54,4,16),(55,5,1),(56,3,19),(57,4,19),(58,5,2),(59,3,18),(60,5,3),(61,4,18),(62,5,4),(63,3,21),(64,4,21),(65,3,20),(66,5,5),(67,4,20),(68,3,23),(69,5,6),(70,4,23),(71,3,22),(72,5,7),(73,4,22),(74,3,24),(75,5,8),(76,4,24),(77,5,9),(78,5,10),(79,5,11),(80,6,1),(81,5,12),(82,6,2),(83,6,3),(84,5,13),(85,6,4),(86,5,14),(87,5,15),(88,6,5),(89,5,17),(90,6,6),(91,6,7),(92,5,16),(93,5,19),(94,6,8),(95,6,9),(96,5,18),(97,5,21),(98,6,10),(99,5,20),(100,6,11),(101,5,23),(102,6,12),(103,5,22),(104,6,13),(105,5,24),(106,6,14),(107,6,15),(108,6,17),(109,6,16),(110,6,19),(111,6,18),(112,6,21),(113,6,20),(114,6,23),(115,6,22),(116,6,24),(117,7,4),(118,7,5),(119,7,7),(120,7,25),(121,7,26);
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

-- Dump completed on 2015-10-09  0:41:01
