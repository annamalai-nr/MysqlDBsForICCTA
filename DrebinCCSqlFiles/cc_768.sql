-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_768
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(6,'SMS_SENT'),(2,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.MAIN'),(4,'android.intent.action.NEW_OUTGOING_CALL'),(3,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'scurity.Phone',1),(2,'stealthLight.sys',NULL),(3,'phone.Security',7),(4,'security.Phone',6),(5,'lookOut.Secure',7),(6,'appinventor.ai_chaz1429.Spiceworks',2),(7,'appinventor.ai_chaz1429.AppInventorMarketHelper',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'scurity.Phone.StealthRegisterationActivity'),(2,1,'scurity.Phone.SecureSecondService'),(3,1,'scurity.Phone.EmailGPSService'),(4,1,'scurity.Phone.EmailGPSSMSService'),(5,1,'scurity.Phone.EmailSIMChangeNotifierService'),(6,1,'scurity.Phone.EmailGPSNotifierService'),(7,1,'scurity.Phone.EmailWipeSMSNotifierService'),(8,1,'scurity.Phone.EmailRecordingSMSNotifierService'),(9,1,'scurity.Phone.EmailBrowserDeleteService'),(10,1,'scurity.Phone.EmailRecordingBackupService'),(11,1,'scurity.Phone.EmailDataChangeService'),(12,1,'scurity.Phone.SecureObserverService'),(13,1,'scurity.Phone.EmailFailureCheckerService'),(14,2,'stealthLight.sys.StealthRegisterationActivity'),(15,1,'scurity.Phone.SecureIncomingCallRegService'),(16,3,'phone.Security.StealthRegisterationActivity'),(17,2,'stealthLight.sys.EmailSecondService'),(18,1,'scurity.Phone.SecureLocationService'),(19,3,'phone.Security.SecureSecondService'),(20,2,'stealthLight.sys.EmailGPSService'),(21,1,'scurity.Phone.EmailSMSCmdProcessor'),(22,3,'phone.Security.EmailGPSService'),(23,2,'stealthLight.sys.EmailGPSSMSService'),(24,1,'scurity.Phone.EmailCallRecordingService'),(25,3,'phone.Security.EmailGPSSMSService'),(26,2,'stealthLight.sys.EmailSIMChangeNotifierService'),(27,1,'scurity.Phone.StealthSMSReceiver'),(28,3,'phone.Security.EmailSIMChangeNotifierService'),(29,2,'stealthLight.sys.EmailGPSNotifierService'),(30,3,'phone.Security.EmailGPSNotifierService'),(31,2,'stealthLight.sys.EmailWipeSMSNotifierService'),(32,3,'phone.Security.EmailWipeSMSNotifierService'),(33,1,'scurity.Phone.EmailBootCompletedReceiver'),(34,2,'stealthLight.sys.EmailRecordingSMSNotifierService'),(35,3,'phone.Security.EmailRecordingSMSNotifierService'),(36,2,'stealthLight.sys.EmailBrowserDeleteService'),(37,3,'phone.Security.EmailBrowserDeleteService'),(38,2,'stealthLight.sys.EmailRecordingBackupService'),(39,1,'scurity.Phone.StealthNetworkStatusReceiver'),(40,3,'phone.Security.EmailDataChangeService'),(41,2,'stealthLight.sys.EmailDataChangeService'),(42,3,'phone.Security.EmailObserverService'),(43,2,'stealthLight.sys.EmailObserverService'),(44,3,'phone.Security.EmailFailureCheckerService'),(45,1,'scurity.Phone.StealthOutgoingCallReceiver'),(46,2,'stealthLight.sys.EmailFailureCheckerService'),(47,3,'phone.Security.SecureLocationService'),(48,2,'stealthLight.sys.EmailIncomingCallRegService'),(49,3,'phone.Security.EmailSMSCmdProcessor'),(50,2,'stealthLight.sys.StealthSMSReceiver'),(51,3,'phone.Security.SecureMonitoringService'),(52,4,'security.Phone.StealthRegisterationActivity'),(53,3,'phone.Security.EmailCallRecordingService'),(54,4,'security.Phone.SecureSecondService'),(55,2,'stealthLight.sys.EmailBootCompletedReceiver'),(56,3,'phone.Security.EmailIncomingCallRegService'),(57,4,'security.Phone.EmailGPSService'),(58,3,'phone.Security.EmailRecordingBackupService'),(59,4,'security.Phone.EmailGPSSMSService'),(60,2,'stealthLight.sys.StealthNetworkStatusReceiver'),(61,3,'phone.Security.StealthSMSReceiver'),(62,4,'security.Phone.EmailSIMChangeNotifierService'),(63,4,'security.Phone.EmailGPSNotifierService'),(64,2,'stealthLight.sys.StealthOutgoingCallReceiver'),(65,3,'phone.Security.EmailBootCompletedReceiver'),(66,4,'security.Phone.EmailWipeSMSNotifierService'),(67,4,'security.Phone.EmailRecordingSMSNotifierService'),(68,3,'phone.Security.StealthNetworkStatusReceiver'),(69,4,'security.Phone.EmailBrowserDeleteService'),(70,4,'security.Phone.EmailDataChangeService'),(71,3,'phone.Security.StealthOutgoingCallReceiver'),(72,4,'security.Phone.SecureObserverService'),(73,4,'security.Phone.EmailFailureCheckerService'),(74,4,'security.Phone.SecureLocationService'),(75,4,'security.Phone.EmailSMSCmdProcessor'),(76,4,'security.Phone.SecureServiceLauncher'),(77,4,'security.Phone.EmailCallRecordingService'),(78,4,'security.Phone.SecureIncomingCallRegService'),(79,4,'security.Phone.EmailRecordingBackupService'),(80,4,'security.Phone.StealthSMSReceiver'),(81,4,'security.Phone.EmailBootCompletedReceiver'),(82,4,'security.Phone.StealthNetworkStatusReceiver'),(83,4,'security.Phone.StealthOutgoingCallReceiver'),(84,5,'lookOut.Secure.StealthRegisterationActivity'),(85,5,'lookOut.Secure.SecureSecondService'),(86,5,'lookOut.Secure.EmailGPSService'),(87,5,'lookOut.Secure.EmailGPSSMSService'),(88,5,'lookOut.Secure.EmailSIMChangeNotifierService'),(89,5,'lookOut.Secure.EmailGPSNotifierService'),(90,5,'lookOut.Secure.EmailWipeSMSNotifierService'),(91,5,'lookOut.Secure.EmailRecordingSMSNotifierService'),(92,5,'lookOut.Secure.EmailBrowserDeleteService'),(93,5,'lookOut.Secure.EmailDataChangeService'),(94,5,'lookOut.Secure.SecureObserverService'),(95,5,'lookOut.Secure.EmailFailureCheckerService'),(96,5,'lookOut.Secure.SecureLocationService'),(97,5,'lookOut.Secure.EmailSMSCmdProcessor'),(98,5,'lookOut.Secure.SecureServiceLauncher'),(99,5,'lookOut.Secure.SecureContAppointServiceLauncher'),(100,5,'lookOut.Secure.SecureContAppointService'),(101,5,'lookOut.Secure.LocationReportingService'),(102,5,'lookOut.Secure.EmailCallRecordingService'),(103,5,'lookOut.Secure.SecureIncomingCallRegService'),(104,5,'lookOut.Secure.EmailRecordingBackupService'),(105,5,'lookOut.Secure.StealthSMSReceiver'),(106,5,'lookOut.Secure.EmailBootCompletedReceiver'),(107,5,'lookOut.Secure.StealthNetworkStatusReceiver'),(108,5,'lookOut.Secure.StealthOutgoingCallReceiver'),(109,2,'stealthLight.sys.EmailGPSNotifierService$1'),(110,2,'stealthLight.sys.EmailSIMChangeNotifierService$1'),(111,2,'stealthLight.sys.EmailWipeSMSNotifierService$1'),(112,2,'stealthLight.sys.EmailRecordingSMSNotifierService$1'),(113,1,'scurity.Phone.EmailGPSNotifierService$1'),(114,1,'scurity.Phone.EmailRecordingSMSNotifierService$1'),(115,1,'com.skyhookwireless._sdka'),(116,1,'scurity.Phone.EmailWipeSMSNotifierService$1'),(117,1,'scurity.Phone.EmailSIMChangeNotifierService$1'),(118,4,'security.Phone.EmailWipeSMSNotifierService$1'),(119,4,'com.skyhookwireless._sdka'),(120,4,'security.Phone.EmailSIMChangeNotifierService$1'),(121,3,'phone.Security.EmailSIMChangeNotifierService$1'),(122,3,'phone.Security.EmailGPSNotifierService$1'),(123,4,'security.Phone.EmailGPSNotifierService$1'),(124,3,'com.skyhookwireless._sdka'),(125,4,'security.Phone.EmailRecordingSMSNotifierService$1'),(126,3,'phone.Security.EmailRecordingSMSNotifierService$1'),(127,3,'phone.Security.EmailWipeSMSNotifierService$1'),(128,6,'appinventor.ai_chaz1429.Spiceworks.Screen1'),(129,6,'com.google.devtools.simple.runtime.components.android.ListPickerActivity'),(130,6,'com.google.devtools.simple.runtime.components.android.WebViewActivity'),(131,5,'com.skyhookwireless._sdkb'),(132,5,'com.skyhookwireless._sdka'),(133,5,'lookOut.Secure.EmailWipeSMSNotifierService$1'),(134,5,'lookOut.Secure.EmailRecordingSMSNotifierService$1'),(135,5,'lookOut.Secure.EmailGPSNotifierService$1'),(136,5,'lookOut.Secure.EmailSIMChangeNotifierService$1'),(137,7,'appinventor.ai_chaz1429.AppInventorMarketHelper.Screen1'),(138,7,'com.google.devtools.simple.runtime.components.android.ListPickerActivity'),(139,7,'com.google.devtools.simple.runtime.components.android.WebViewActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,60,'noConnectivity'),(2,64,'android.intent.extra.PHONE_NUMBER'),(3,50,'pdus'),(4,39,'noConnectivity'),(5,27,'pdus'),(6,45,'android.intent.extra.PHONE_NUMBER'),(7,80,'pdus'),(8,82,'noConnectivity'),(9,71,'android.intent.extra.PHONE_NUMBER'),(10,83,'android.intent.extra.PHONE_NUMBER'),(11,61,'pdus'),(12,68,'noConnectivity'),(13,108,'android.intent.extra.PHONE_NUMBER'),(14,107,'noConnectivity'),(15,91,'replyNumber'),(16,105,'pdus'),(17,101,'location'),(18,91,'msgBody'),(19,129,'com/google/devtools/simple/runtime/components/android/ListPickerActivity.list'),(20,128,'APP_INVENTOR_START'),(21,137,'APP_INVENTOR_START'),(22,138,'com/google/devtools/simple/runtime/components/android/ListPickerActivity.list');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,106,'r',1,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'r',1,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,118,'r',1,NULL,NULL),(119,119,'r',1,NULL,NULL),(120,120,'r',1,NULL,NULL),(121,121,'r',1,NULL,NULL),(122,122,'r',1,NULL,NULL),(123,123,'r',1,NULL,NULL),(124,124,'r',1,NULL,NULL),(125,125,'r',1,NULL,NULL),(126,126,'r',1,NULL,NULL),(127,127,'r',1,NULL,NULL),(128,128,'a',1,NULL,NULL),(129,129,'a',0,NULL,NULL),(130,130,'a',1,NULL,NULL),(131,131,'r',1,NULL,NULL),(132,132,'r',1,NULL,NULL),(133,133,'r',1,NULL,NULL),(134,134,'r',1,NULL,NULL),(135,135,'r',1,NULL,NULL),(136,136,'r',1,NULL,NULL),(137,137,'a',1,NULL,NULL),(138,138,'a',0,NULL,NULL),(139,139,'a',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,60),(2,2,43),(3,3,43),(4,4,43),(5,5,43),(6,6,43),(7,7,55),(8,8,43),(9,9,43),(10,10,39),(11,11,12),(12,12,12),(13,13,12),(14,14,12),(15,15,12),(16,16,12),(17,17,12),(18,18,12),(19,19,12),(20,20,12),(21,21,12),(22,22,76),(23,23,65),(24,24,72),(25,25,72),(26,26,72),(27,27,51),(28,28,42),(29,29,19),(30,30,42),(31,31,42),(32,32,72),(33,33,42),(34,34,72),(35,35,42),(36,36,72),(37,37,42),(38,38,72),(39,39,82),(40,40,42),(41,41,54),(42,42,68),(43,43,72),(44,44,72),(45,45,72),(46,46,81),(47,47,72),(48,48,94),(49,49,98),(50,50,94),(51,51,94),(52,52,107),(53,53,99),(54,54,94),(55,55,94),(56,56,94),(57,57,106),(58,58,94),(59,59,94),(60,60,85),(61,61,94);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,60,'<stealthLight.sys.StealthNetworkStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(2,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',7,'p',NULL),(3,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',31,'p',NULL),(4,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',25,'p',NULL),(5,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',43,'p',NULL),(6,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',37,'p',NULL),(7,55,'<stealthLight.sys.EmailBootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'a',NULL),(8,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',19,'p',NULL),(9,43,'<stealthLight.sys.EmailObserverService: void registerObservers()>',13,'p',NULL),(10,39,'<scurity.Phone.StealthNetworkStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(11,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',13,'p',NULL),(12,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',47,'p',0),(13,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',25,'p',NULL),(14,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',63,'p',0),(15,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',31,'p',NULL),(16,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',41,'p',0),(17,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',19,'p',NULL),(18,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',7,'p',NULL),(19,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',57,'p',0),(20,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',37,'p',NULL),(21,12,'<scurity.Phone.SecureObserverService: void registerObservers()>',53,'p',NULL),(22,76,'<security.Phone.SecureServiceLauncher: void onStart(android.content.Intent,int)>',10,'s',NULL),(23,65,'<phone.Security.EmailBootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',20,'a',NULL),(24,72,'<security.Phone.SecureObserverService: void registerObservers()>',25,'p',NULL),(25,72,'<security.Phone.SecureObserverService: void registerObservers()>',31,'p',NULL),(26,72,'<security.Phone.SecureObserverService: void registerObservers()>',37,'p',NULL),(27,51,'<phone.Security.SecureMonitoringService: void onStart(android.content.Intent,int)>',10,'s',NULL),(28,42,'<phone.Security.EmailObserverService: void registerObservers()>',7,'p',NULL),(29,19,'<phone.Security.SecureSecondService: void forceCloseService()>',11,'s',NULL),(30,42,'<phone.Security.EmailObserverService: void registerObservers()>',43,'p',NULL),(31,42,'<phone.Security.EmailObserverService: void registerObservers()>',19,'p',NULL),(32,72,'<security.Phone.SecureObserverService: void registerObservers()>',19,'p',NULL),(33,42,'<phone.Security.EmailObserverService: void registerObservers()>',25,'p',NULL),(34,72,'<security.Phone.SecureObserverService: void registerObservers()>',57,'p',0),(35,42,'<phone.Security.EmailObserverService: void registerObservers()>',13,'p',NULL),(36,72,'<security.Phone.SecureObserverService: void registerObservers()>',53,'p',NULL),(37,42,'<phone.Security.EmailObserverService: void registerObservers()>',37,'p',NULL),(38,72,'<security.Phone.SecureObserverService: void registerObservers()>',7,'p',NULL),(39,82,'<security.Phone.StealthNetworkStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(40,42,'<phone.Security.EmailObserverService: void registerObservers()>',31,'p',NULL),(41,54,'<security.Phone.SecureSecondService: void forceCloseService()>',10,'s',NULL),(42,68,'<phone.Security.StealthNetworkStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(43,72,'<security.Phone.SecureObserverService: void registerObservers()>',41,'p',0),(44,72,'<security.Phone.SecureObserverService: void registerObservers()>',47,'p',0),(45,72,'<security.Phone.SecureObserverService: void registerObservers()>',13,'p',NULL),(46,81,'<security.Phone.EmailBootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',20,'a',NULL),(47,72,'<security.Phone.SecureObserverService: void registerObservers()>',63,'p',0),(48,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',7,'p',NULL),(49,98,'<lookOut.Secure.SecureServiceLauncher: void onStart(android.content.Intent,int)>',11,'s',NULL),(50,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',51,'p',0),(51,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',19,'p',NULL),(52,107,'<lookOut.Secure.StealthNetworkStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(53,99,'<lookOut.Secure.SecureContAppointServiceLauncher: void onStart(android.content.Intent,int)>',11,'s',NULL),(54,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',13,'p',NULL),(55,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',29,'p',0),(56,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',35,'p',0),(57,106,'<lookOut.Secure.EmailBootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',23,'a',NULL),(58,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',45,'p',0),(59,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',41,'p',NULL),(60,85,'<lookOut.Secure.SecureSecondService: void forceCloseService()>',10,'s',NULL),(61,94,'<lookOut.Secure.SecureObserverService: void registerObservers()>',25,'p',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'stealthLight/sys/EmailSecondService'),(2,2,'stealthLight/sys/StealthRegisterationActivity'),(3,3,'scurity/Phone/SecureSecondService'),(4,4,'security/Phone/SecureSecondService'),(5,5,'phone/Security/StealthRegisterationActivity'),(6,6,'phone/Security/SecureSecondService'),(7,7,'phone/Security/SecureSecondService'),(8,8,'security/Phone/SecureSecondService'),(9,9,'security/Phone/SecureSecondService'),(10,10,'phone/Security/SecureSecondService'),(11,11,'security/Phone/StealthRegisterationActivity'),(12,12,'lookOut/Secure/SecureSecondService'),(13,13,'lookOut/Secure/SecureSecondService'),(14,14,'lookOut/Secure/SecureContAppointService'),(15,15,'lookOut/Secure/StealthRegisterationActivity'),(16,16,'lookOut/Secure/SecureSecondService');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,2),(7,7,3),(8,8,1),(9,9,4),(10,10,2),(11,11,3),(12,12,4),(13,13,1),(14,14,2),(15,15,3),(16,16,4),(17,17,5),(18,18,1),(19,19,2),(20,20,3),(21,21,4),(22,22,6),(23,23,6),(24,24,6),(25,25,6),(26,26,6),(27,27,6),(28,28,6),(29,29,6),(30,30,6),(31,31,6),(32,32,6),(33,33,6),(34,34,6),(35,35,6),(36,36,6),(37,37,6),(38,38,6),(39,39,6),(40,40,6),(41,41,6),(42,42,6),(43,43,6),(44,44,6),(45,45,6),(46,46,6),(47,47,6),(48,48,6),(49,49,6),(50,50,6),(51,51,6),(52,52,6),(53,53,6),(54,54,6),(55,55,6),(56,56,6),(57,57,6),(58,58,6),(59,59,6),(60,60,6),(61,61,6),(62,62,6),(63,63,6),(64,64,6),(65,65,6),(66,66,6),(67,67,6),(68,68,6),(69,69,6),(70,70,6),(71,71,6),(72,72,6),(73,73,6),(74,74,6),(75,75,6),(76,76,6),(77,77,6),(78,78,6),(79,79,6),(80,80,6),(81,81,6),(82,82,6),(83,83,6),(84,84,6),(85,85,6),(86,86,6),(87,87,6),(88,88,6),(89,89,6),(90,90,6),(91,91,6),(92,92,6),(93,93,6),(94,94,6),(95,95,6),(96,96,6),(97,97,6),(98,98,6),(99,99,6),(100,100,6),(101,101,6),(102,102,6),(103,103,6),(104,104,6),(105,105,6),(106,106,6),(107,107,6),(108,108,6),(109,109,6),(110,110,6),(111,111,6),(112,112,6),(113,113,6),(114,114,6),(115,115,6),(116,116,6),(117,117,6),(118,118,6),(119,119,6),(120,120,6),(121,121,6),(122,122,6),(123,123,6),(124,124,6),(125,125,6),(126,126,6),(127,127,6),(128,128,6),(129,129,6),(130,130,6),(131,131,6),(132,132,6),(133,133,6),(134,134,6),(135,135,6),(136,136,6),(137,137,6),(138,138,6),(139,139,6),(140,140,6),(141,141,6),(142,142,6),(143,143,6),(144,144,6),(145,145,6),(146,146,6),(147,147,6),(148,148,6),(149,149,6),(150,150,6),(151,151,6),(152,152,6),(153,153,6),(154,154,6),(155,155,6),(156,156,6),(157,157,6),(158,158,6),(159,159,6),(160,160,6),(161,161,6),(162,162,5),(163,163,5),(164,164,6),(165,165,6),(166,166,6),(167,167,6),(168,168,6),(169,169,6),(170,170,6),(171,171,6),(172,172,6),(173,173,6),(174,174,6),(175,175,6),(176,176,6),(177,177,6),(178,178,6),(179,179,6),(180,180,6),(181,181,6),(182,182,6),(183,183,6),(184,184,6),(185,185,6),(186,186,6),(187,187,6),(188,188,6),(189,189,6),(190,190,6),(191,191,6),(192,192,6),(193,193,6),(194,194,7),(195,195,6),(196,196,6),(197,197,6),(198,198,6),(199,199,5),(200,200,6),(201,201,6),(202,202,6),(203,203,5),(204,204,6),(205,205,6),(206,206,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,162,1),(2,199,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'stealthLight.sys'),(2,2,'stealthLight.sys'),(3,3,'scurity.Phone'),(4,4,'security.Phone'),(5,5,'phone.Security'),(6,6,'phone.Security'),(7,7,'phone.Security'),(8,8,'security.Phone'),(9,9,'security.Phone'),(10,10,'phone.Security'),(11,11,'security.Phone'),(12,12,'lookOut.Secure'),(13,13,'lookOut.Secure'),(14,14,'lookOut.Secure'),(15,15,'lookOut.Secure'),(16,16,'lookOut.Secure');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,27,0),(2,33,0),(3,39,0),(4,45,0),(5,50,0),(6,55,0),(7,60,0),(8,61,0),(9,64,0),(10,65,0),(11,68,0),(12,71,0),(13,80,0),(14,81,0),(15,82,0),(16,83,0),(17,84,0),(18,105,0),(19,106,0),(20,107,0),(21,108,0),(22,60,0),(23,109,0),(24,50,0),(25,64,0),(26,110,0),(27,55,0),(28,111,0),(29,112,0),(30,60,0),(31,109,0),(32,50,0),(33,64,0),(34,110,0),(35,55,0),(36,111,0),(37,112,0),(38,60,0),(39,109,0),(40,50,0),(41,64,0),(42,110,0),(43,55,0),(44,111,0),(45,112,0),(46,60,0),(47,109,0),(48,50,0),(49,64,0),(50,110,0),(51,55,0),(52,111,0),(53,112,0),(54,113,0),(55,114,0),(56,33,0),(57,115,0),(58,116,0),(59,27,0),(60,45,0),(61,39,0),(62,117,0),(63,113,0),(64,114,0),(65,33,0),(66,115,0),(67,116,0),(68,27,0),(69,45,0),(70,39,0),(71,117,0),(72,113,0),(73,114,0),(74,33,0),(75,115,0),(76,116,0),(77,27,0),(78,45,0),(79,39,0),(80,117,0),(81,113,0),(82,114,0),(83,33,0),(84,115,0),(85,116,0),(86,27,0),(87,45,0),(88,39,0),(89,117,0),(90,118,0),(91,119,0),(92,81,0),(93,120,0),(94,121,0),(95,82,0),(96,122,0),(97,123,0),(98,68,0),(99,80,0),(100,124,0),(101,125,0),(102,126,0),(103,83,0),(104,65,0),(105,71,0),(106,61,0),(107,127,0),(108,118,0),(109,119,0),(110,121,0),(111,81,0),(112,122,0),(113,120,0),(114,68,0),(115,82,0),(116,124,0),(117,123,0),(118,126,0),(119,80,0),(120,65,0),(121,125,0),(122,71,0),(123,83,0),(124,61,0),(125,118,0),(126,127,0),(127,119,0),(128,81,0),(129,120,0),(130,82,0),(131,123,0),(132,80,0),(133,125,0),(134,83,0),(135,118,0),(136,119,0),(137,121,0),(138,81,0),(139,122,0),(140,120,0),(141,68,0),(142,82,0),(143,124,0),(144,123,0),(145,126,0),(146,80,0),(147,65,0),(148,125,0),(149,71,0),(150,83,0),(151,61,0),(152,127,0),(153,121,0),(154,122,0),(155,68,0),(156,124,0),(157,126,0),(158,65,0),(159,71,0),(160,61,0),(161,127,0),(162,128,0),(163,130,0),(164,131,0),(165,105,0),(166,106,0),(167,132,0),(168,133,0),(169,107,0),(170,108,0),(171,134,0),(172,135,0),(173,136,0),(174,131,0),(175,105,0),(176,106,0),(177,132,0),(178,133,0),(179,107,0),(180,108,0),(181,134,0),(182,135,0),(183,136,0),(184,131,0),(185,105,0),(186,106,0),(187,132,0),(188,133,0),(189,107,0),(190,108,0),(191,134,0),(192,135,0),(193,136,0),(194,131,0),(195,131,0),(196,105,0),(197,106,0),(198,132,0),(199,137,0),(200,133,0),(201,107,0),(202,108,0),(203,139,0),(204,134,0),(205,135,0),(206,136,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,7,0,0),(3,10,0,0),(4,22,0,0),(5,23,0,0),(6,27,0,0),(7,29,0,0),(8,39,0,0),(9,41,0,0),(10,42,0,0),(11,46,0,0),(12,49,0,0),(13,52,0,0),(14,53,0,0),(15,57,0,0),(16,60,0,0);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_COARSE_UPDATES'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.INTERNET'),(21,'android.permission.MODIFY_PHONE_STATE'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(1,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_CALENDAR'),(7,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(17,'android.permission.RECORD_AUDIO'),(19,'android.permission.SEND_SMS'),(18,'android.permission.WAKE_LOCK'),(20,'android.permission.WRITE_CALENDAR'),(8,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(5,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(6,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(9,NULL,NULL,'content://sms',NULL,NULL,NULL),(10,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(11,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(20,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(21,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(33,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,8,6),(7,9,7),(8,11,8),(9,13,9),(10,15,10),(11,17,11),(12,18,12),(13,20,13),(14,21,14),(15,24,15),(16,25,16),(17,26,17),(18,28,18),(19,30,19),(20,31,20),(21,32,21),(22,33,22),(23,35,23),(24,36,24),(25,37,25),(26,38,26),(27,40,27),(28,45,28),(29,48,29),(30,51,30),(31,54,31),(32,59,32),(33,61,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,24),(25,2,1),(26,2,2),(27,3,1),(28,2,3),(29,3,2),(30,2,4),(31,3,3),(32,2,5),(33,3,4),(34,3,5),(35,2,6),(36,2,7),(37,3,6),(38,2,8),(39,3,7),(40,2,9),(41,3,8),(42,2,10),(43,3,9),(44,2,11),(45,3,10),(46,3,11),(47,2,12),(48,3,12),(49,2,13),(50,2,14),(51,3,13),(52,2,15),(53,3,14),(54,2,17),(55,3,15),(56,2,16),(57,3,17),(58,2,19),(59,3,16),(60,2,18),(61,3,19),(62,2,21),(63,3,18),(64,2,20),(65,3,21),(66,2,23),(67,3,20),(68,2,22),(69,3,23),(70,2,25),(71,3,22),(72,2,24),(73,3,25),(74,3,24),(75,4,1),(76,4,2),(77,4,3),(78,4,4),(79,4,5),(80,4,6),(81,4,7),(82,4,8),(83,4,9),(84,4,10),(85,4,11),(86,4,12),(87,4,13),(88,4,14),(89,4,15),(90,4,17),(91,4,16),(92,4,19),(93,4,18),(94,4,21),(95,4,20),(96,4,23),(97,4,22),(98,4,24),(99,5,1),(100,5,2),(101,5,3),(102,5,4),(103,5,5),(104,5,6),(105,5,7),(106,5,8),(107,5,9),(108,5,10),(109,5,11),(110,5,12),(111,5,13),(112,5,14),(113,5,15),(114,5,17),(115,5,16),(116,5,19),(117,5,18),(118,5,21),(119,5,20),(120,5,23),(121,5,22),(122,5,25),(123,5,24),(124,6,22),(125,7,22);
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

-- Dump completed on 2015-10-09  0:41:07
