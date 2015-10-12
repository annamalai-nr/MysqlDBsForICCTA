-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_528
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CALL'),(11,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.NEW_OUTGOING_CALL'),(8,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PACKAGE_REPLACED'),(7,'android.intent.action.PHONE_STATE'),(6,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.SCREEN_ON'),(13,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(12,'com.retina22.ms6.UPDATER');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.tx.farm',4),(2,'com.retinax.android',2),(3,'com.rxs16a.android',2),(4,'com.rxs15.android',2),(5,'com.rspl16.nanny.android',1),(6,'com.retina22.ms6',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tx.farm.MainActivity'),(2,1,'com.tx.farm.TxActivity'),(3,2,'com.retinax.android.MainActivity'),(4,2,'com.retinax.android.LoginActivity'),(5,2,'com.retinax.android.ChangePinActivity'),(6,2,'com.retinax.android.About'),(7,2,'com.retinax.android.AntiTheftActivity'),(8,2,'com.retinax.android.LocationActivity'),(9,3,'com.rxs16a.android.MainActivity'),(10,2,'com.retinax.android.LoggingActivity'),(11,3,'com.rxs16a.android.LoginActivity'),(12,3,'com.rxs16a.android.ChangePinActivity'),(13,2,'com.retinax.android.SearchContactList'),(14,3,'com.rxs16a.android.About'),(15,3,'com.rxs16a.android.AntiTheftActivity'),(16,2,'com.retinax.android.FriendList'),(17,3,'com.rxs16a.android.LocationActivity'),(18,3,'com.rxs16a.android.LoggingActivity'),(19,2,'com.retinax.android.HelpActivity'),(20,3,'com.rxs16a.android.SearchContactList'),(21,3,'com.rxs16a.android.FriendList'),(22,2,'com.retinax.android.LockScreen'),(23,3,'com.rxs16a.android.HelpActivity'),(24,3,'com.rxs16a.android.LockScreen'),(25,2,'com.retinax.android.ServiceUsed'),(26,3,'com.rxs16a.android.ServiceUsed'),(27,3,'com.rxs16a.android.UploadPreviousData'),(28,2,'com.retinax.android.UploadPreviousData'),(29,3,'com.rxs16a.android.Receiver'),(30,4,'com.rxs15.android.MainActivity'),(31,2,'com.retinax.android.Receiver'),(32,4,'com.rxs15.android.LoginActivity'),(33,3,'com.rxs16a.android.GPSHandler'),(34,4,'com.rxs15.android.ChangePinActivity'),(35,2,'com.retinax.android.GPSHandler'),(36,4,'com.rxs15.android.About'),(37,4,'com.rxs15.android.AntiTheftActivity'),(38,4,'com.rxs15.android.LocationActivity'),(39,4,'com.rxs15.android.LoggingActivity'),(40,4,'com.rxs15.android.SearchContactList'),(41,4,'com.rxs15.android.FriendList'),(42,4,'com.rxs15.android.HelpActivity'),(43,4,'com.rxs15.android.LockScreen'),(44,4,'com.rxs15.android.ServiceUsed'),(45,4,'com.rxs15.android.UploadPreviousData'),(46,4,'com.rxs15.android.Receiver'),(47,4,'com.rxs15.android.GPSHandler'),(48,5,'com.rspl16.nanny.android.ui.LoginActivity'),(49,5,'com.rspl16.nanny.android.ui.MainActivity'),(50,5,'com.rspl16.nanny.android.ui.LogSettings'),(51,5,'com.rspl16.nanny.android.ui.ChangePin'),(52,5,'com.rspl16.nanny.android.ui.SimSettings'),(53,5,'com.rspl16.nanny.android.ui.SmsCommands'),(54,5,'com.rspl16.nanny.android.ui.GpsLogs'),(55,6,'com.retina22.ms6.ui.LoginStarter'),(56,5,'com.rspl16.nanny.android.ui.UrlLogs'),(57,5,'com.rspl16.nanny.android.ui.PhoneTalkBlock'),(58,6,'com.retina22.ms6.ui.Login'),(59,5,'com.rspl16.nanny.android.ui.BlockList'),(60,6,'com.retina22.ms6.ui.ChangePin'),(61,5,'com.rspl16.nanny.android.ui.SmsFilter'),(62,6,'com.retina22.ms6.ui.Logging'),(63,5,'com.rspl16.nanny.android.ui.WhiteList'),(64,6,'com.retina22.ms6.ui.Location'),(65,5,'com.rspl16.nanny.android.ui.ContactList'),(66,6,'com.retina22.ms6.ui.Recovery'),(67,5,'com.rspl16.nanny.android.ui.About'),(68,6,'com.retina22.ms6.ui.Email'),(69,5,'com.rspl16.nanny.android.ui.CallLogsView'),(70,6,'com.retina22.ms6.ui.SelectApps'),(71,5,'com.rspl16.nanny.android.ui.SmsLogsView'),(72,6,'com.retina22.ms6.ui.Home'),(73,5,'com.rspl16.nanny.android.restriction.LockScreen'),(74,6,'com.retina22.ms6.BackgroundService'),(75,5,'com.rspl16.nanny.android.BackgroundService'),(76,6,'com.retina22.ms6.Receiver'),(77,5,'com.rspl16.nanny.android.BootCompletionReceiver'),(78,6,'com.retina22.ms6.logging.OutgoingCallObserver'),(79,5,'com.rspl16.nanny.android.Logging.GPSObserver'),(80,5,'com.rspl16.nanny.android.restriction.PhoneUsageRestrictionStart'),(81,6,'com.retina22.ms6.logging.SmsReceiver'),(82,6,'com.retina22.ms6.uses.ScreenActiveReceiver'),(83,6,'com.retina22.ms6.logging.CallStateReceiver'),(84,6,'com.retina22.ms6.logging.AppInstalledObserver'),(85,6,'com.retina22.ms6.logging.GPSHandler'),(86,6,'com.retina22.ms6.helper.EmailSendReceiver'),(87,6,'com.retina22.ms6.helper.XmlFileUploader'),(88,6,'com.retina22.ms6.uses.AppChecker'),(89,3,'com.rxs16a.android.SavePreviousData'),(90,2,'com.retinax.android.SavePreviousData'),(91,3,'com.rxs16a.android.LoginActivity$5'),(92,3,'com.rxs16a.android.SmsReceiver'),(93,4,'com.rxs15.android.SavePreviousData'),(94,3,'com.rxs16a.android.ServiceUsed$2'),(95,4,'com.rxs15.android.SmsReceiver'),(96,2,'com.retinax.android.LoginActivity$5'),(97,4,'com.rxs15.android.ServiceUsed$2'),(98,2,'com.retinax.android.SmsReceiver'),(99,2,'com.retinax.android.ServiceUsed$2'),(100,4,'com.rxs15.android.LoginActivity$5'),(101,6,'com.retina22.ms6.helper.CommonFunctions'),(102,6,'com.retina22.ms6.helper.XmlFileUploader$PagePuller'),(103,6,'com.retina22.ms6.BackgroundService$1'),(104,6,'com.retina22.ms6.logging.CallRecordTracer'),(105,6,'com.retina22.ms6.ui.Home$2'),(106,6,'com.retina22.ms6.helper.XmlFileUploader$LivePanelPuller'),(107,6,'com.retina22.ms6.ui.Home$4'),(108,6,'com.retina22.ms6.ui.Email$2'),(109,6,'com.retina22.ms6.logging.ContactObserver'),(110,6,'com.retina22.ms6.logging.SmsDbTraverser'),(111,6,'com.retina22.ms6.logging.PhotoDbTracer'),(112,5,'com.rspl16.nanny.android.restriction.LockThread'),(113,6,'com.retina22.ms6.ui.Home$5'),(114,5,'com.rspl16.nanny.android.Logging.SMSReceiver'),(115,6,'com.retina22.ms6.ui.Home$1'),(116,5,'com.rspl16.nanny.android.Logging.OutgoingCallObserver'),(117,5,'com.rspl16.nanny.android.ui.LoginActivity$8'),(118,6,'com.retina22.ms6.ui.Home$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'bundle'),(2,2,'user'),(3,11,'DEFAULTTEXT'),(4,16,'CONTACT'),(5,21,'CONTACT'),(6,4,'DEFAULTTEXT'),(7,41,'CONTACT'),(8,32,'DEFAULTTEXT'),(9,81,'pdus'),(10,78,'android.intent.extra.PHONE_NUMBER'),(11,58,'isFirstTime'),(12,83,'state'),(13,59,'CONTACT'),(14,48,'IsFirstTime'),(15,65,'ISBLOCK'),(16,61,'CONTACT'),(17,85,'isSendCmdRes'),(18,80,'endTime'),(19,63,'CONTACT'),(20,52,'CONTACT');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,35,'r',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',0,NULL,NULL),(89,92,'r',1,NULL,NULL),(90,94,'r',1,NULL,NULL),(91,33,'r',1,NULL,NULL),(92,95,'r',1,NULL,NULL),(93,47,'r',1,NULL,NULL),(94,97,'r',1,NULL,NULL),(95,98,'r',1,NULL,NULL),(96,99,'r',1,NULL,NULL),(97,35,'r',1,NULL,NULL),(98,88,'r',1,NULL,NULL),(99,85,'r',1,NULL,NULL),(100,87,'r',1,NULL,NULL),(101,103,'r',1,NULL,NULL),(102,86,'r',1,NULL,NULL),(103,114,'r',1,NULL,NULL),(104,116,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,29),(2,2,11),(3,3,27),(4,3,26),(5,4,26),(6,5,9),(7,6,21),(8,7,9),(9,8,9),(10,10,9),(11,9,28),(12,9,25),(13,11,11),(14,12,25),(15,13,9),(16,14,9),(17,15,25),(18,16,29),(19,17,26),(20,18,31),(21,19,26),(22,19,27),(23,20,25),(24,21,26),(25,21,27),(26,22,26),(27,23,25),(28,24,26),(29,24,27),(30,25,27),(31,25,26),(32,26,28),(33,26,25),(34,27,26),(35,28,26),(36,28,27),(37,29,3),(38,30,44),(39,31,9),(40,32,27),(41,32,26),(42,33,25),(43,33,28),(44,34,44),(45,34,45),(46,35,9),(47,36,9),(48,37,25),(49,37,28),(50,38,30),(51,39,26),(52,39,27),(53,40,3),(54,41,30),(55,42,9),(56,43,46),(57,44,25),(58,45,26),(59,46,26),(60,47,3),(61,48,44),(62,48,45),(63,49,26),(64,50,26),(65,51,4),(66,52,26),(67,52,27),(68,53,4),(69,54,26),(70,55,9),(71,56,9),(72,57,30),(73,58,26),(74,59,26),(75,59,27),(76,60,30),(77,61,27),(78,61,26),(79,62,9),(80,63,26),(81,64,44),(82,65,25),(83,66,9),(84,67,26),(85,68,30),(86,69,16),(87,70,9),(88,71,26),(89,72,44),(90,73,25),(91,74,26),(92,74,27),(93,75,15),(94,76,3),(95,77,30),(96,78,27),(97,78,26),(98,79,21),(99,80,9),(100,81,25),(101,81,28),(102,82,37),(103,83,27),(104,83,26),(105,84,26),(106,85,44),(107,86,3),(108,87,15),(109,89,3),(110,88,44),(111,90,11),(112,91,44),(113,91,45),(114,92,7),(115,93,30),(116,94,11),(117,95,25),(118,95,28),(119,96,44),(120,97,3),(121,98,44),(122,99,25),(123,99,28),(124,100,30),(125,101,3),(126,102,32),(127,103,45),(128,103,44),(129,104,44),(130,104,45),(131,105,44),(132,105,45),(133,106,45),(134,106,44),(135,107,41),(136,108,32),(137,109,72),(138,110,74),(139,111,81),(140,112,81),(141,113,81),(142,114,87),(143,115,87),(144,116,87),(145,117,81),(146,118,74),(147,119,74),(148,120,72),(149,121,83),(150,122,88),(151,123,87),(152,124,81),(153,125,72),(154,126,74),(155,127,81),(156,128,81),(157,129,87),(158,130,72),(159,131,68),(160,132,68),(161,133,74),(162,134,81),(163,135,81),(164,136,64),(165,137,74),(166,138,87),(167,139,74),(168,140,75),(169,141,81),(170,142,49),(171,143,81),(172,144,81),(173,144,83),(174,145,49),(175,146,74),(176,147,57),(177,147,80),(178,147,75),(179,148,72),(180,149,49),(181,150,87),(182,151,61),(183,152,81),(184,153,87),(185,154,75),(186,155,49),(187,156,81),(188,157,74),(189,158,49),(190,159,81),(191,160,49),(192,161,87),(193,162,49),(194,163,87),(195,164,72),(196,165,49),(197,166,81),(198,167,49),(199,168,74),(200,169,55),(201,170,49),(202,171,49),(203,172,81),(204,173,81),(205,174,48),(206,175,76),(207,176,49),(208,177,78),(209,178,49),(210,179,63),(211,180,72),(212,181,75),(213,182,87),(214,183,59),(215,184,74),(216,185,49),(217,186,74),(218,187,52),(219,188,74),(220,189,75),(221,190,81),(222,191,75),(223,192,81),(224,193,77),(225,194,81),(226,195,49),(227,196,75);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,29,'<com.rxs16a.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(2,11,'<com.rxs16a.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(3,89,'<com.rxs16a.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',14,'p',NULL),(4,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(5,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(6,21,'<com.rxs16a.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(7,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(8,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(9,90,'<com.retinax.android.SavePreviousData: void getContactDetails()>',29,'p',NULL),(10,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(11,91,'<com.rxs16a.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(12,25,'<com.retinax.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(13,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(14,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(15,25,'<com.retinax.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(16,29,'<com.rxs16a.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(17,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(18,31,'<com.retinax.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(19,89,'<com.rxs16a.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(20,25,'<com.retinax.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(21,89,'<com.rxs16a.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(22,26,'<com.rxs16a.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(23,25,'<com.retinax.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(24,89,'<com.rxs16a.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(25,89,'<com.rxs16a.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',28,'p',NULL),(26,90,'<com.retinax.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(27,26,'<com.rxs16a.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(28,89,'<com.rxs16a.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(29,3,'<com.retinax.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(30,44,'<com.rxs15.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(31,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(32,89,'<com.rxs16a.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',28,'p',NULL),(33,90,'<com.retinax.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',31,'p',NULL),(34,93,'<com.rxs15.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',28,'p',NULL),(35,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(36,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(37,90,'<com.retinax.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(38,30,'<com.rxs15.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(39,89,'<com.rxs16a.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(40,3,'<com.retinax.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(41,30,'<com.rxs15.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(42,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(43,46,'<com.rxs15.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(44,25,'<com.retinax.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(45,26,'<com.rxs16a.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(46,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(47,3,'<com.retinax.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',40,'a',NULL),(48,93,'<com.rxs15.android.SavePreviousData: void getContactDetails()>',28,'p',NULL),(49,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(50,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(51,4,'<com.retinax.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(52,89,'<com.rxs16a.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(53,96,'<com.retinax.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(54,26,'<com.rxs16a.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(55,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(56,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(57,30,'<com.rxs15.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(58,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(59,89,'<com.rxs16a.android.SavePreviousData: void getContactDetails()>',28,'p',NULL),(60,30,'<com.rxs15.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(61,89,'<com.rxs16a.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(62,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(63,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(64,44,'<com.rxs15.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(65,25,'<com.retinax.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(66,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',40,'a',NULL),(67,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(68,30,'<com.rxs15.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(69,16,'<com.retinax.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(70,9,'<com.rxs16a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(71,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(72,44,'<com.rxs15.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(73,25,'<com.retinax.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(74,89,'<com.rxs16a.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',14,'p',NULL),(75,15,'<com.rxs16a.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(76,3,'<com.retinax.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(77,30,'<com.rxs15.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',40,'a',NULL),(78,89,'<com.rxs16a.android.SavePreviousData: void getContactDetails()>',28,'p',NULL),(79,21,'<com.rxs16a.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(80,9,'<com.rxs16a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(81,90,'<com.retinax.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(82,37,'<com.rxs15.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(83,89,'<com.rxs16a.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(84,26,'<com.rxs16a.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(85,44,'<com.rxs15.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(86,3,'<com.retinax.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(87,15,'<com.rxs16a.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(88,44,'<com.rxs15.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(89,3,'<com.retinax.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(90,11,'<com.rxs16a.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(91,93,'<com.rxs15.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(92,7,'<com.retinax.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(93,30,'<com.rxs15.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(94,91,'<com.rxs16a.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(95,90,'<com.retinax.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(96,44,'<com.rxs15.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(97,3,'<com.retinax.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(98,44,'<com.rxs15.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(99,90,'<com.retinax.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',16,'p',NULL),(100,30,'<com.rxs15.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(101,3,'<com.retinax.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(102,100,'<com.rxs15.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(103,93,'<com.rxs15.android.SavePreviousData: void readEmail(long,java.lang.String,java.util.Vector)>',14,'p',NULL),(104,93,'<com.rxs15.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(105,93,'<com.rxs15.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(106,93,'<com.rxs15.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(107,41,'<com.rxs15.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(108,32,'<com.rxs15.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(109,72,'<com.retina22.ms6.ui.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(110,74,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',18,'p',NULL),(111,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeImages(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(112,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalls(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(113,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeSMSs(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(114,101,'<com.retina22.ms6.helper.CommonFunctions: void sendAllSms(android.content.Context,java.lang.String)>',10,'p',NULL),(115,101,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getContactOrg(android.content.Context,java.lang.String)>',9,'p',NULL),(116,102,'<com.retina22.ms6.helper.XmlFileUploader$PagePuller: void run()>',28,'r',NULL),(117,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',6,'p',NULL),(118,74,'<com.retina22.ms6.BackgroundService: void onDestroy()>',4,'s',NULL),(119,74,'<com.retina22.ms6.BackgroundService: void onLowMemory()>',4,'s',NULL),(120,72,'<com.retina22.ms6.ui.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(121,104,'<com.retina22.ms6.logging.CallRecordTracer: void traverseDb()>',7,'p',NULL),(122,88,'<com.retina22.ms6.uses.AppChecker: void startHome()>',9,'a',NULL),(123,101,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getAllPhoneNumbers(android.content.Context,java.lang.String)>',8,'p',NULL),(124,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',15,'p',NULL),(125,105,'<com.retina22.ms6.ui.Home$2: void onClick(android.view.View)>',6,'a',NULL),(126,74,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',33,'p',NULL),(127,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeAudios(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(128,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalls(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(129,106,'<com.retina22.ms6.helper.XmlFileUploader$LivePanelPuller: void processCommandIfAny()>',170,'r',NULL),(130,107,'<com.retina22.ms6.ui.Home$4: void onClick(android.view.View)>',6,'a',NULL),(131,108,'<com.retina22.ms6.ui.Email$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(132,68,'<com.retina22.ms6.ui.Email: void saveSettings()>',45,'r',NULL),(133,109,'<com.retina22.ms6.logging.ContactObserver: java.lang.String getAllPresentContacts()>',4,'p',NULL),(134,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeImages(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(135,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeVideos(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(136,64,'<com.retina22.ms6.ui.Location: void onBackPressed()>',10,'r',NULL),(137,74,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',26,'p',NULL),(138,101,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getAllEmails(android.content.Context,java.lang.String)>',8,'p',NULL),(139,110,'<com.retina22.ms6.logging.SmsDbTraverser: void setLastIdOfSms(android.content.Context)>',4,'p',NULL),(140,75,'<com.rspl16.nanny.android.BackgroundService: void onDestroy()>',4,'s',NULL),(141,110,'<com.retina22.ms6.logging.SmsDbTraverser: void retriveSmsDetail()>',6,'p',NULL),(142,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(143,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeVideos(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(144,101,'<com.retina22.ms6.helper.CommonFunctions: java.lang.String getContactName(android.content.Context,java.lang.String)>',8,'p',NULL),(145,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(146,111,'<com.retina22.ms6.logging.PhotoDbTracer: void setLastIdOfPhoto(android.content.Context)>',8,'p',NULL),(147,112,'<com.rspl16.nanny.android.restriction.LockThread: void run()>',17,'a',NULL),(148,113,'<com.retina22.ms6.ui.Home$5: void onClick(android.view.View)>',6,'a',NULL),(149,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',59,'a',NULL),(150,101,'<com.retina22.ms6.helper.CommonFunctions: void sendAllCallHistory(android.content.Context,java.lang.String)>',4,'p',NULL),(151,61,'<com.rspl16.nanny.android.ui.SmsFilter: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(152,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeSMSs(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(153,102,'<com.retina22.ms6.helper.XmlFileUploader$PagePuller: void run()>',56,'r',NULL),(154,75,'<com.rspl16.nanny.android.BackgroundService: void registerReceivers()>',17,'p',NULL),(155,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',71,'a',NULL),(156,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeContacts(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(157,104,'<com.retina22.ms6.logging.CallRecordTracer: void setLastIdOfCall(android.content.Context)>',4,'p',NULL),(158,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(159,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeContacts(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(160,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(161,111,'<com.retina22.ms6.logging.PhotoDbTracer: void readImage()>',10,'p',NULL),(162,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',65,'a',NULL),(163,101,'<com.retina22.ms6.helper.CommonFunctions: void sendAllContacts(android.content.Context,java.lang.String)>',4,'p',NULL),(164,115,'<com.retina22.ms6.ui.Home$1: void onClick(android.view.View)>',6,'a',NULL),(165,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',47,'a',NULL),(166,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeURLs(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(167,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(168,109,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getAllPhoneNumbers(java.lang.String)>',9,'p',NULL),(169,55,'<com.retina22.ms6.ui.LoginStarter: void onCreate(android.os.Bundle)>',8,'a',NULL),(170,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',102,'a',NULL),(171,49,'<com.rspl16.nanny.android.ui.MainActivity: void uninstallApplication()>',9,'a',NULL),(172,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',20,'p',NULL),(173,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeAudios(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(174,117,'<com.rspl16.nanny.android.ui.LoginActivity$8: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(175,76,'<com.retina22.ms6.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(176,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',77,'a',NULL),(177,78,'<com.retina22.ms6.logging.OutgoingCallObserver: void onReceive(android.content.Context,android.content.Intent)>',75,'a',NULL),(178,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(179,63,'<com.rspl16.nanny.android.ui.WhiteList: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(180,118,'<com.retina22.ms6.ui.Home$3: void onClick(android.view.View)>',6,'a',NULL),(181,75,'<com.rspl16.nanny.android.BackgroundService: void registerReceivers()>',30,'p',NULL),(182,101,'<com.retina22.ms6.helper.CommonFunctions: void callThisNumber(android.content.Context,java.lang.String)>',11,'a',NULL),(183,59,'<com.rspl16.nanny.android.ui.BlockList: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(184,109,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getAllEmails(java.lang.String)>',9,'p',NULL),(185,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',84,'a',NULL),(186,74,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',7,'p',NULL),(187,52,'<com.rspl16.nanny.android.ui.SimSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(188,109,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getContactOrg(java.lang.String)>',10,'p',NULL),(189,75,'<com.rspl16.nanny.android.BackgroundService: void registerReceivers()>',34,'p',NULL),(190,101,'<com.retina22.ms6.helper.CommonFunctions: void gpsSmsCommand(android.content.Context,java.lang.String)>',18,'r',NULL),(191,75,'<com.rspl16.nanny.android.BackgroundService: void onLowMemory()>',4,'s',NULL),(192,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',11,'p',NULL),(193,77,'<com.rspl16.nanny.android.BootCompletionReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(194,101,'<com.retina22.ms6.helper.CommonFunctions: void wipeURLs(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(195,49,'<com.rspl16.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(196,75,'<com.rspl16.nanny.android.BackgroundService: void registerReceivers()>',26,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,17,11),(2,18,11),(3,20,11),(4,56,11),(5,62,12),(6,66,1),(7,70,13),(8,71,12),(9,72,12),(10,80,12),(11,90,11),(12,99,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,66,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/rxs16a/android/ServiceUsed'),(2,2,'com/rxs16a/android/MainActivity'),(3,4,'com/rxs16a/android/SearchContactList'),(4,3,'com/rxs16a/android/LoginActivity'),(5,6,'com/rxs16a/android/About'),(6,5,'com/rxs16a/android/LoginActivity'),(7,7,'com/rxs16a/android/AntiTheftActivity'),(8,8,'com/rxs16a/android/MainActivity'),(9,9,'com/rxs16a/android/HelpActivity'),(10,10,'com/rxs16a/android/LoggingActivity'),(11,11,'com/rxs16a/android/ServiceUsed'),(12,12,'com/retinax/android/ServiceUsed'),(13,13,'com/rxs16a/android/ServiceUsed'),(14,14,'com/rxs16a/android/ServiceUsed'),(15,15,'com/retinax/android/LoginActivity'),(16,16,'com/rxs16a/android/AntiTheftActivity'),(17,19,'com/rxs15/android/HelpActivity'),(18,21,'com/rxs15/android/LoggingActivity'),(19,22,'com/rxs16a/android/LocationActivity'),(20,23,'com/rxs15/android/ServiceUsed'),(21,24,'com/rxs16a/android/ServiceUsed'),(22,25,'com/retinax/android/ChangePinActivity'),(23,26,'com/retinax/android/MainActivity'),(24,27,'com/retinax/android/MainActivity'),(25,28,'com/rxs16a/android/ServiceUsed'),(26,29,'com/rxs16a/android/ChangePinActivity'),(27,30,'com/rxs16a/android/LocationActivity'),(28,31,'com/rxs15/android/LoginActivity'),(29,32,'com/rxs15/android/About'),(30,33,'com/rxs16a/android/HelpActivity'),(31,34,'com/retinax/android/ServiceUsed'),(32,35,'com/rxs16a/android/ChangePinActivity'),(33,36,'com/rxs15/android/LocationActivity'),(34,37,'com/retinax/android/SearchContactList'),(35,38,'com/rxs16a/android/About'),(36,39,'com/retinax/android/ServiceUsed'),(37,40,'com/rxs16a/android/FriendList'),(38,41,'com/retinax/android/LocationActivity'),(39,42,'com/rxs15/android/ChangePinActivity'),(40,43,'com/rxs16a/android/SearchContactList'),(41,44,'com/rxs16a/android/LoggingActivity'),(42,45,'com/rxs15/android/FriendList'),(43,46,'com/rxs15/android/ServiceUsed'),(44,47,'com/retinax/android/LoggingActivity'),(45,48,'com/rxs16a/android/FriendList'),(46,49,'com/retinax/android/About'),(47,50,'com/rxs16a/android/MainActivity'),(48,51,'com/retinax/android/FriendList'),(49,52,'com/rxs15/android/AntiTheftActivity'),(50,53,'com/rxs16a/android/MainActivity'),(51,54,'com/rxs15/android/ServiceUsed'),(52,55,'com/retinax/android/AntiTheftActivity'),(53,57,'com/retinax/android/HelpActivity'),(54,58,'com/rxs15/android/MainActivity'),(55,59,'com/rxs15/android/SearchContactList'),(56,60,'com/rxs15/android/MainActivity'),(57,61,'com/retina22/ms6/ui/ChangePin'),(58,63,'com/retina22/ms6/BackgroundService'),(59,64,'com/retina22/ms6/BackgroundService'),(60,65,'com/retina22/ms6/ui/Login'),(61,67,'com/retina22/ms6/ui/Recovery'),(62,68,'com/retina22/ms6/logging/GPSHandler'),(63,69,'com/retina22/ms6/ui/Email'),(64,73,'com/rspl16/nanny/android/BackgroundService'),(65,74,'com/rspl16/nanny/android/ui/LogSettings'),(66,75,'com/rspl16/nanny/android/ui/PhoneTalkBlock'),(67,76,'com/rspl16/nanny/android/restriction/LockScreen'),(68,77,'com/retina22/ms6/ui/SelectApps'),(69,78,'com/rspl16/nanny/android/ui/GpsLogs'),(70,79,'com/rspl16/nanny/android/ui/ContactList'),(71,81,'com/rspl16/nanny/android/ui/SmsCommands'),(72,82,'com/rspl16/nanny/android/ui/SmsFilter'),(73,83,'com/rspl16/nanny/android/ui/SmsLogsView'),(74,84,'com/rspl16/nanny/android/ui/UrlLogs'),(75,85,'com/retina22/ms6/ui/Logging'),(76,86,'com/rspl16/nanny/android/ui/WhiteList'),(77,87,'com/rspl16/nanny/android/ui/BlockList'),(78,89,'com/rspl16/nanny/android/ui/About'),(79,88,'com/retina22/ms6/ui/Login'),(80,91,'com/rspl16/nanny/android/ui/MainActivity'),(81,92,'com/retina22/ms6/BackgroundService'),(82,93,'com/rspl16/nanny/android/ui/CallLogsView'),(83,94,'com/retina22/ms6/ui/Login'),(84,95,'com/rspl16/nanny/android/ui/ChangePin'),(85,96,'com/retina22/ms6/ui/Home'),(86,97,'com/rspl16/nanny/android/ui/ContactList'),(87,98,'com/retina22/ms6/ui/Location'),(88,100,'com/rspl16/nanny/android/ui/ContactList'),(89,101,'com/rspl16/nanny/android/ui/LoginActivity'),(90,102,'com/rspl16/nanny/android/ui/ContactList'),(91,103,'com/retina22/ms6/logging/GPSHandler'),(92,104,'com/rspl16/nanny/android/BackgroundService'),(93,105,'com/rspl16/nanny/android/BackgroundService'),(94,106,'com/rspl16/nanny/android/ui/SimSettings');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,17,19),(2,18,20),(3,20,23),(4,56,48),(5,70,68),(6,90,91),(7,99,95);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'DEFAULTTEXT'),(2,5,'DEFAULTTEXT'),(3,15,'DEFAULTTEXT'),(4,31,'DEFAULTTEXT'),(5,62,'code'),(6,68,'isSendCmdRes'),(7,71,'code'),(8,72,'code'),(9,80,'code'),(10,88,'isFirstTime'),(11,94,'isFirstTime'),(12,100,'ISBLOCK'),(13,101,'IsFirstTime'),(14,103,'isSendCmdRes');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,1),(7,7,2),(8,8,2),(9,9,3),(10,10,4),(11,11,5),(12,12,6),(13,13,7),(14,14,10),(15,14,9),(16,14,8),(17,15,4),(18,16,3),(19,17,3),(20,18,3),(21,19,3),(22,20,3),(23,21,3),(24,22,3),(25,23,3),(26,24,3),(27,25,3),(28,26,3),(29,27,3),(30,28,3),(31,29,3),(32,30,3),(33,31,3),(34,32,4),(35,33,4),(36,34,4),(37,35,12),(38,36,12),(39,37,12),(40,38,12),(41,39,12),(42,40,12),(43,41,12),(44,42,12),(45,43,12),(46,44,12),(47,45,12),(48,46,6),(49,46,5),(50,47,4),(51,48,4),(52,49,3),(53,50,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rxs16a.android'),(2,2,'com.rxs16a.android'),(3,4,'com.rxs16a.android'),(4,3,'com.rxs16a.android'),(5,6,'com.rxs16a.android'),(6,5,'com.rxs16a.android'),(7,7,'com.rxs16a.android'),(8,8,'com.rxs16a.android'),(9,9,'com.rxs16a.android'),(10,10,'com.rxs16a.android'),(11,11,'com.rxs16a.android'),(12,12,'com.retinax.android'),(13,13,'com.rxs16a.android'),(14,14,'com.rxs16a.android'),(15,15,'com.retinax.android'),(16,16,'com.rxs16a.android'),(17,19,'com.rxs15.android'),(18,21,'com.rxs15.android'),(19,22,'com.rxs16a.android'),(20,23,'com.rxs15.android'),(21,24,'com.rxs16a.android'),(22,25,'com.retinax.android'),(23,26,'com.retinax.android'),(24,27,'com.retinax.android'),(25,28,'com.rxs16a.android'),(26,29,'com.rxs16a.android'),(27,30,'com.rxs16a.android'),(28,31,'com.rxs15.android'),(29,32,'com.rxs15.android'),(30,33,'com.rxs16a.android'),(31,34,'com.retinax.android'),(32,35,'com.rxs16a.android'),(33,36,'com.rxs15.android'),(34,37,'com.retinax.android'),(35,38,'com.rxs16a.android'),(36,39,'com.retinax.android'),(37,40,'com.rxs16a.android'),(38,41,'com.retinax.android'),(39,42,'com.rxs15.android'),(40,43,'com.rxs16a.android'),(41,44,'com.rxs16a.android'),(42,45,'com.rxs15.android'),(43,46,'com.rxs15.android'),(44,47,'com.retinax.android'),(45,48,'com.rxs16a.android'),(46,49,'com.retinax.android'),(47,50,'com.rxs16a.android'),(48,51,'com.retinax.android'),(49,52,'com.rxs15.android'),(50,53,'com.rxs16a.android'),(51,54,'com.rxs15.android'),(52,55,'com.retinax.android'),(53,57,'com.retinax.android'),(54,58,'com.rxs15.android'),(55,59,'com.rxs15.android'),(56,60,'com.rxs15.android'),(57,61,'com.retina22.ms6'),(58,63,'com.retina22.ms6'),(59,64,'com.retina22.ms6'),(60,65,'com.retina22.ms6'),(61,67,'com.retina22.ms6'),(62,68,'com.retina22.ms6'),(63,69,'com.retina22.ms6'),(64,73,'com.rspl16.nanny.android'),(65,74,'com.rspl16.nanny.android'),(66,75,'com.rspl16.nanny.android'),(67,76,'com.rspl16.nanny.android'),(68,77,'com.retina22.ms6'),(69,78,'com.rspl16.nanny.android'),(70,79,'com.rspl16.nanny.android'),(71,81,'com.rspl16.nanny.android'),(72,82,'com.rspl16.nanny.android'),(73,83,'com.rspl16.nanny.android'),(74,84,'com.rspl16.nanny.android'),(75,85,'com.retina22.ms6'),(76,86,'com.rspl16.nanny.android'),(77,87,'com.rspl16.nanny.android'),(78,89,'com.rspl16.nanny.android'),(79,88,'com.retina22.ms6'),(80,91,'com.rspl16.nanny.android'),(81,92,'com.retina22.ms6'),(82,93,'com.rspl16.nanny.android'),(83,94,'com.retina22.ms6'),(84,95,'com.rspl16.nanny.android'),(85,96,'com.retina22.ms6'),(86,97,'com.rspl16.nanny.android'),(87,98,'com.retina22.ms6'),(88,100,'com.rspl16.nanny.android'),(89,101,'com.rspl16.nanny.android'),(90,102,'com.rspl16.nanny.android'),(91,103,'com.retina22.ms6'),(92,104,'com.rspl16.nanny.android'),(93,105,'com.rspl16.nanny.android'),(94,106,'com.rspl16.nanny.android');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,29,0),(3,29,0),(4,31,0),(5,46,0),(6,55,0),(7,76,0),(8,77,0),(9,78,0),(10,81,0),(11,82,0),(12,82,0),(13,83,0),(14,84,0),(15,89,0),(16,29,0),(17,89,0),(18,90,0),(19,91,0),(20,92,0),(21,29,0),(22,89,0),(23,93,0),(24,90,0),(25,91,0),(26,94,0),(27,46,0),(28,95,0),(29,96,0),(30,31,0),(31,97,0),(32,89,0),(33,92,0),(34,95,0),(35,82,0),(36,98,0),(37,78,0),(38,83,0),(39,99,0),(40,100,0),(41,101,0),(42,102,0),(43,84,0),(44,76,0),(45,81,0),(46,82,0),(47,81,0),(48,103,0),(49,104,0),(50,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,5,0,0),(4,6,0,0),(5,7,0,0),(6,8,0,0),(7,10,0,0),(8,11,0,0),(9,13,0,0),(10,14,0,0),(11,16,0,0),(12,18,0,0),(13,22,0,0),(14,27,0,0),(15,29,0,0),(16,31,0,0),(17,36,1,0),(18,35,1,0),(19,38,0,0),(20,40,1,0),(21,41,0,0),(22,42,0,0),(23,43,0,0),(24,45,0,0),(25,47,0,0),(26,51,0,0),(27,53,0,0),(28,54,0,0),(29,55,0,0),(30,56,0,0),(31,57,0,0),(32,60,0,0),(33,62,0,0),(34,65,0,0),(35,66,0,0),(36,68,0,0),(37,69,0,0),(38,70,0,0),(39,73,0,0),(40,75,0,0),(41,76,0,0),(42,77,0,0),(43,79,0,0),(44,80,0,0),(45,82,0,0),(46,85,0,0),(47,86,0,0),(48,87,0,0),(49,89,0,0),(50,90,0,0),(51,92,0,0),(52,93,0,0),(53,94,0,0),(54,96,0,0),(55,97,0,0),(56,100,1,0),(57,101,0,0),(58,102,0,0),(59,107,0,0),(60,108,0,0),(61,109,0,0),(62,116,1,0),(63,118,0,0),(64,119,0,0),(65,120,0,0),(66,122,1,0),(67,125,0,0),(68,129,0,0),(69,130,0,0),(70,131,1,0),(71,132,1,0),(72,136,1,0),(73,140,0,0),(74,142,0,0),(75,145,0,0),(76,147,0,0),(77,148,0,0),(78,149,0,0),(79,151,0,0),(80,153,1,0),(81,155,0,0),(82,158,0,0),(83,160,0,0),(84,162,0,0),(85,164,0,0),(86,165,0,0),(87,167,0,0),(88,169,0,0),(89,170,0,0),(90,171,1,0),(91,174,0,0),(92,175,0,0),(93,176,0,0),(94,177,0,0),(95,178,0,0),(96,177,0,0),(97,179,0,0),(98,180,0,0),(99,182,1,0),(100,183,0,0),(101,185,0,0),(102,187,0,0),(103,190,0,0),(104,191,0,0),(105,193,0,0),(106,195,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(30,'android.permission.CALL_PHONE'),(32,'android.permission.CALL_PRIVILEGED'),(28,'android.permission.CHANGE_NETWORK_STATE'),(27,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.DELETE_CACHE_FILES'),(25,'android.permission.DISABLE_KEYGUARD'),(33,'android.permission.GET_TASKS'),(20,'android.permission.INJECT_EVENTS'),(3,'android.permission.INTERNET'),(23,'android.permission.MODIFY_AUDIO_SETTINGS'),(31,'android.permission.MODIFY_PHONE_STATE'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(14,'android.permission.READ_CALENDAR'),(12,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RECEIVE_SMS'),(4,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(34,'android.permission.WAKE_LOCK'),(24,'android.permission.WRITE_CALENDAR'),(13,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SECURE_SETTINGS'),(26,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/contact_methods',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/',NULL,NULL,NULL),(7,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(11,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/organizations',NULL,NULL,NULL),(13,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/organizations',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/organizations',NULL,NULL,NULL),(19,NULL,NULL,'package:com.rxs16.android',NULL,NULL,NULL),(20,NULL,NULL,'package:com.rxs16a.android',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'package:com.retinax.android',NULL,NULL,NULL),(24,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(25,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(27,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(28,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(32,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(33,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(34,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(35,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(36,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(37,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(38,NULL,NULL,'content://contacts/contact_methods',NULL,NULL,NULL),(39,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(40,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(41,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(42,NULL,NULL,'content://sms/',NULL,NULL,NULL),(43,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(44,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(45,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(46,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(48,NULL,NULL,'package:com.rxs15.android',NULL,NULL,NULL),(49,NULL,NULL,'content://contacts/contact_methods',NULL,NULL,NULL),(50,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(51,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(52,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(54,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(55,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(56,NULL,NULL,'content://sms',NULL,NULL,NULL),(57,NULL,NULL,'content://sms',NULL,NULL,NULL),(58,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(59,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(60,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(61,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(62,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(63,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(64,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(65,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(66,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(67,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(68,NULL,NULL,'https://secure.avangate.com/order/checkout.php?PRODS=4555854&QTY=1&CART=1&CARD=1&ORDERSTYLE=nLW4m5W5rn4',NULL,NULL,NULL),(69,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(70,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(71,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(72,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(73,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(74,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(75,NULL,NULL,'content://sms',NULL,NULL,NULL),(76,NULL,NULL,'content://sms',NULL,NULL,NULL),(77,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(78,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(79,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(80,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(81,NULL,NULL,'content://sms',NULL,NULL,NULL),(82,NULL,NULL,'content://sms/',NULL,NULL,NULL),(83,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(84,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(85,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(86,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(87,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(88,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(89,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(90,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(91,NULL,NULL,'package:com.rspl16.nanny.android',NULL,NULL,NULL),(92,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(93,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(94,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(95,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(96,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(97,NULL,NULL,'content://sms/',NULL,NULL,NULL),(98,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(99,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(100,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(101,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(102,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(103,NULL,NULL,'content://contacts/people',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,9,3),(4,12,4),(5,15,5),(6,17,6),(7,19,7),(8,20,8),(9,21,9),(10,23,10),(11,24,11),(12,25,12),(13,26,13),(14,28,14),(15,30,15),(16,32,16),(17,33,17),(18,34,18),(19,37,21),(20,39,22),(21,44,24),(22,46,25),(23,48,26),(24,49,27),(25,50,28),(26,52,29),(27,58,30),(28,59,31),(29,61,32),(30,63,33),(31,64,34),(32,67,35),(33,72,36),(34,71,37),(35,74,38),(36,78,39),(37,81,40),(38,83,41),(39,84,42),(40,88,43),(41,91,44),(42,95,45),(43,98,46),(44,99,47),(45,103,49),(46,104,50),(47,105,51),(48,106,52),(49,110,53),(50,111,54),(51,112,55),(52,113,56),(53,114,57),(54,115,58),(55,117,59),(56,117,60),(57,121,61),(58,123,62),(59,124,63),(60,124,64),(61,126,65),(62,127,66),(63,128,67),(64,133,69),(65,134,70),(66,135,71),(67,137,72),(68,137,73),(69,138,74),(70,139,75),(71,141,76),(72,143,77),(73,144,78),(74,146,79),(75,150,80),(76,152,81),(77,154,82),(78,156,83),(79,157,84),(80,159,85),(81,161,86),(82,163,87),(83,166,88),(84,168,89),(85,172,90),(86,172,92),(87,173,93),(88,181,94),(89,184,96),(90,186,97),(91,188,98),(92,189,99),(93,192,100),(94,192,101),(95,194,102),(96,196,103);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,3),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,2,17),(20,2,16),(21,2,19),(22,2,18),(23,2,21),(24,2,20),(25,2,23),(26,2,22),(27,2,25),(28,2,24),(29,2,27),(30,2,26),(31,4,1),(32,3,1),(33,2,29),(34,3,2),(35,4,2),(36,3,3),(37,2,28),(38,3,5),(39,4,3),(40,3,6),(41,3,7),(42,4,5),(43,3,8),(44,3,9),(45,4,6),(46,3,10),(47,3,11),(48,3,12),(49,4,7),(50,3,13),(51,4,8),(52,3,14),(53,3,15),(54,4,9),(55,3,17),(56,3,16),(57,4,10),(58,3,19),(59,3,18),(60,4,11),(61,3,21),(62,3,20),(63,4,12),(64,3,23),(65,3,22),(66,4,13),(67,3,25),(68,3,24),(69,4,14),(70,3,27),(71,3,26),(72,4,15),(73,3,29),(74,3,28),(75,4,17),(76,4,16),(77,4,19),(78,4,18),(79,4,21),(80,4,20),(81,4,23),(82,4,22),(83,4,25),(84,4,24),(85,4,27),(86,4,26),(87,4,29),(88,4,28),(89,5,1),(90,5,2),(91,5,3),(92,5,5),(93,5,6),(94,5,7),(95,5,8),(96,5,9),(97,5,10),(98,5,11),(99,5,12),(100,5,13),(101,5,14),(102,5,15),(103,5,17),(104,5,16),(105,5,19),(106,5,18),(107,6,1),(108,5,21),(109,6,2),(110,5,20),(111,6,3),(112,5,23),(113,6,5),(114,5,22),(115,6,6),(116,5,25),(117,6,7),(118,5,24),(119,6,8),(120,5,27),(121,6,9),(122,5,26),(123,6,10),(124,5,29),(125,6,11),(126,5,28),(127,6,12),(128,5,31),(129,6,13),(130,5,30),(131,6,14),(132,5,32),(133,6,15),(134,6,17),(135,6,16),(136,6,19),(137,6,18),(138,6,23),(139,6,26),(140,6,29),(141,6,28),(142,6,31),(143,6,30),(144,6,34),(145,6,33);
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

-- Dump completed on 2015-10-09  0:40:04
