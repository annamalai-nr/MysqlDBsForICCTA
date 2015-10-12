-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_376
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(13,'android.app.action.ADD_DEVICE_ADMIN'),(2,'android.app.action.DEVICE_ADMIN_ENABLED'),(12,'android.app.action.SET_NEW_PASSWORD'),(11,'android.intent.action.CREATE_LIVE_FOLDER'),(6,'android.intent.action.EDIT'),(7,'android.intent.action.GET_CONTENT'),(9,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(15,'android.settings.SECURITY_SETTINGS'),(8,'com.android.notepad.action.EDIT_NOTE'),(10,'com.android.notepad.action.EDIT_TITLE');
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
INSERT INTO `Applications` VALUES (1,'com.FourCobblers.Free.PhoneLock',2),(2,'com.FourCobblers.Free.PhoneLock',4),(3,'com.FourCobblers.Free.PhoneLock',40),(4,'com.FourCobblers.Free.PhoneLock',30),(5,'com.FourCobblers.Free.PhoneLock',33),(6,'com.FourCobblers.Free.PhoneLock',7),(7,'com.FourCobblers.Free.PhoneLock',35);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.ALTERNATIVE'),(5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SELECTED_ALTERNATIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(2,1,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(3,1,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(4,1,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(5,1,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(6,1,'com.FourCobblers.Free.PhoneLock.Help'),(7,1,'com.google.ads.AdActivity'),(8,1,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(9,2,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(10,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(11,1,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(12,2,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(13,2,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(14,2,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(15,2,'com.FourCobblers.Free.PhoneLock.Help'),(16,2,'com.google.ads.AdActivity'),(17,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(18,2,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(19,3,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(20,4,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(21,6,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(22,5,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(23,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(24,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(25,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(26,3,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(27,4,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(28,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(29,6,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(30,3,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(31,4,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(32,5,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(33,3,'com.FourCobblers.Free.PhoneLock.Help'),(34,6,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(35,4,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(36,5,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(37,3,'com.google.ads.AdActivity'),(38,6,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(39,4,'com.FourCobblers.Free.PhoneLock.Help'),(40,5,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(41,3,'com.FourCobblers.Free.PhoneLock.NotesList'),(42,6,'com.FourCobblers.Free.PhoneLock.Help'),(43,4,'com.google.ads.AdActivity'),(44,5,'com.FourCobblers.Free.PhoneLock.Help'),(45,6,'com.google.ads.AdActivity'),(46,4,'com.FourCobblers.Free.PhoneLock.NotesList'),(47,5,'com.google.ads.AdActivity'),(48,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(49,5,'com.FourCobblers.Free.PhoneLock.NotesList'),(50,7,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(51,6,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(52,7,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(53,4,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(54,3,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(55,7,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(56,7,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(57,5,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(58,7,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(59,7,'com.FourCobblers.Free.PhoneLock.Help'),(60,7,'com.google.ads.AdActivity'),(61,7,'com.FourCobblers.Free.PhoneLock.NotesList'),(62,4,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(63,3,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(64,5,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(65,4,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(66,3,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(67,5,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(68,7,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(69,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(70,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(71,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(72,4,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(73,3,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(74,5,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(75,7,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(76,4,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(77,5,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(78,3,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(79,7,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(80,7,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(81,7,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(82,7,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(83,2,'com.FourCobblers.Free.PhoneLock.k'),(84,2,'com.FourCobblers.Free.PhoneLock.p'),(85,1,'com.FourCobblers.Free.PhoneLock.k'),(86,2,'c'),(87,1,'c'),(88,1,'com.FourCobblers.Free.PhoneLock.p'),(89,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(90,6,'u$b'),(91,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(92,7,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(93,3,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(94,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(95,3,'u$b'),(96,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(97,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(98,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(99,7,'u$b'),(100,7,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(101,5,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(102,5,'u$b'),(103,7,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(104,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(105,4,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(106,4,'u$b'),(107,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,16,'params'),(2,7,'action'),(3,16,'action'),(4,16,'com.google.ads.AdOpener'),(5,18,'pdus'),(6,11,'pdus'),(7,7,'com.google.ads.AdOpener'),(8,7,'params'),(9,45,'action'),(10,45,'com.google.ads.AdOpener'),(11,51,'pdus'),(12,45,'params'),(13,47,'params'),(14,43,'action'),(15,56,'origContent'),(16,60,'com.google.ads.AdOpener'),(17,73,'pdus'),(18,54,'origContent'),(19,47,'action'),(20,60,'action'),(21,38,'com.google.ads.AdOpener'),(22,60,'params'),(23,72,'pdus'),(24,68,'origContent'),(25,74,'pdus'),(26,53,'origContent'),(27,43,'params'),(28,81,'pdus'),(29,38,'params'),(30,43,'com.google.ads.AdOpener'),(31,38,'action'),(32,47,'com.google.ads.AdOpener');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,9,'a',1,NULL,NULL),(9,8,'r',1,10,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,10,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,41,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'r',1,10,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,57,'a',1,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'r',1,10,NULL),(70,70,'r',1,10,NULL),(71,71,'r',1,10,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'p',0,NULL,NULL),(77,77,'p',0,NULL,NULL),(78,78,'p',0,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'r',1,10,NULL),(81,81,'r',1,NULL,NULL),(82,82,'p',0,NULL,NULL),(83,86,'r',1,NULL,NULL),(84,87,'r',1,NULL,NULL),(85,90,'r',1,NULL,NULL),(86,95,'r',1,NULL,NULL),(87,99,'r',1,NULL,NULL),(88,102,'r',1,NULL,NULL),(89,106,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,10),(3,3,16),(4,4,2),(5,4,1),(6,5,2),(7,6,2),(8,7,10),(9,8,7),(10,9,10),(11,10,8),(12,10,10),(13,11,2),(14,12,10),(15,13,2),(16,14,10),(17,15,10),(18,16,2),(19,17,2),(20,18,2),(21,19,26),(22,20,26),(23,21,26),(24,22,26),(25,22,21),(26,23,26),(27,24,26),(28,25,45),(29,26,26),(30,27,26),(31,28,82),(32,29,52),(33,30,61),(34,31,61),(35,32,61),(36,33,60),(37,34,49),(38,35,19),(39,35,23),(40,36,28),(41,37,77),(42,38,63),(43,39,23),(44,40,28),(45,41,81),(46,42,74),(47,43,68),(48,44,53),(49,45,23),(50,46,52),(51,47,24),(52,48,28),(53,49,73),(54,50,53),(55,51,64),(56,52,46),(57,53,68),(58,54,77),(59,55,53),(60,56,42),(61,57,28),(62,59,52),(63,58,46),(64,60,49),(65,61,52),(66,63,54),(67,62,20),(68,62,24),(69,64,75),(70,65,78),(71,66,77),(72,67,76),(73,68,38),(74,69,82),(75,70,56),(76,71,50),(77,71,52),(78,72,43),(79,73,28),(80,74,52),(81,75,28),(82,75,22),(83,76,23),(84,77,28),(85,78,68),(86,79,24),(87,80,52),(88,81,23),(89,82,22),(90,82,28),(91,83,24),(92,84,68),(93,85,54),(94,86,82),(95,87,23),(96,88,76),(97,90,28),(98,89,52),(99,91,19),(100,91,23),(101,92,20),(102,92,24),(103,93,52),(104,93,50),(105,94,47),(106,95,42),(107,96,24),(108,97,23),(109,98,24),(110,99,24),(111,100,42),(112,101,54),(113,102,56),(114,103,78),(115,104,56),(116,105,54),(117,106,56),(118,107,76),(119,108,78),(120,109,49),(121,110,24),(122,111,23),(123,112,53),(124,113,62),(125,114,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,83,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(2,84,'<com.FourCobblers.Free.PhoneLock.p: void onClick(android.view.View)>',23,'a',NULL),(3,16,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(4,1,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void d(com.FourCobblers.Free.PhoneLock.PhoneLock)>',4,'a',NULL),(5,85,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(6,85,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(7,83,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(8,7,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(9,83,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(10,9,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void d(com.FourCobblers.Free.PhoneLock.PhoneLock)>',4,'a',NULL),(11,2,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(12,10,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(13,85,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(14,10,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(15,83,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(16,85,'<com.FourCobblers.Free.PhoneLock.k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(17,2,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(18,88,'<com.FourCobblers.Free.PhoneLock.p: void onClick(android.view.View)>',23,'a',NULL),(19,89,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(20,89,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(21,25,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(22,21,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(23,89,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(24,89,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(25,45,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(26,91,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(27,25,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(28,82,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(29,92,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(30,61,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(31,61,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(32,61,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(33,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(34,49,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(35,93,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(36,94,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(37,77,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(38,63,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(39,23,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(40,96,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(41,81,'<com.FourCobblers.Free.PhoneLock.SMSCommandHandle: java.lang.String getLocation(boolean)>',18,'r',NULL),(42,74,'<com.FourCobblers.Free.PhoneLock.SMSCommandHandle: java.lang.String getLocation(boolean)>',18,'r',NULL),(43,68,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(44,53,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(45,97,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(46,52,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(47,98,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(48,96,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(49,73,'<com.FourCobblers.Free.PhoneLock.SMSCommandHandle: java.lang.String getLocation(boolean)>',18,'r',NULL),(50,53,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(51,64,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(52,46,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(53,68,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(54,77,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(55,53,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(56,41,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(57,96,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(58,46,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(59,92,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(60,49,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(61,92,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(62,20,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(63,54,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(64,75,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(65,78,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(66,77,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(67,76,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(68,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(69,82,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(70,57,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(71,100,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(72,43,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(73,96,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(74,52,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(75,101,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(76,97,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(77,28,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(78,68,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(79,24,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(80,103,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(81,104,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(82,22,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(83,98,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(84,68,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(85,54,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(86,82,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(87,97,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(88,76,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(89,92,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(90,28,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(91,19,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(92,105,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(93,50,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(94,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(95,41,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(96,24,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(97,23,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(98,98,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(99,98,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(100,41,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(101,54,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(102,57,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(103,78,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(104,57,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(105,54,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(106,57,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(107,76,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(108,78,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(109,49,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(110,107,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(111,97,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(112,53,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(113,62,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(114,46,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,12),(2,2,13),(3,3,14),(4,5,5),(5,6,14),(6,7,15),(7,8,12),(8,10,14),(9,11,15),(10,12,5),(11,13,14),(12,15,5),(13,16,5),(14,26,13),(15,28,12),(16,29,5),(17,32,15),(18,33,14),(19,34,5),(20,35,14),(21,36,13),(22,41,9),(23,42,6),(24,43,14),(25,44,5),(26,46,13),(27,47,14),(28,55,5),(29,59,6),(30,60,15),(31,62,6),(32,63,6),(33,64,15),(34,66,14),(35,68,14),(36,69,12),(37,70,5),(38,72,5),(39,75,14),(40,77,14),(41,78,12),(42,84,13),(43,85,13),(44,88,15),(45,90,5),(46,91,12),(47,95,14),(48,96,9),(49,97,5),(50,98,5),(51,99,5),(52,100,12),(53,101,14),(54,103,9),(55,104,13),(56,105,15),(57,106,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,5),(2,5,5),(3,6,5),(4,10,5),(5,12,5),(6,13,5),(7,33,5),(8,34,5),(9,35,5),(10,43,5),(11,44,5),(12,47,5),(13,51,3),(14,53,3),(15,58,3),(16,66,5),(17,68,5),(18,70,5),(19,72,5),(20,75,5),(21,77,5),(22,95,5),(23,98,5),(24,101,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(2,9,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(3,14,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(4,17,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(5,19,'com/FourCobblers/Free/PhoneLock/Help'),(6,20,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(7,21,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(8,22,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(9,24,'com/FourCobblers/Free/PhoneLock/Help'),(10,25,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(11,27,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(12,30,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(13,31,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(14,38,'com/FourCobblers/Free/PhoneLock/Help'),(15,39,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(16,40,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(17,45,'com/FourCobblers/Free/PhoneLock/NotesList'),(18,49,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(19,50,'com/FourCobblers/Free/PhoneLock/Help'),(20,52,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(21,51,'com.android.settings.widget.SettingsAppWidgetProvider'),(22,53,'com.android.settings.widget.SettingsAppWidgetProvider'),(23,54,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(24,56,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(25,57,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(26,58,'com.android.settings.widget.SettingsAppWidgetProvider'),(27,61,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(28,65,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(29,67,'com/FourCobblers/Free/PhoneLock/NotesList'),(30,73,'com/FourCobblers/Free/PhoneLock/NotesList'),(31,74,'com/FourCobblers/Free/PhoneLock/Help'),(32,76,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(33,80,'com/FourCobblers/Free/PhoneLock/Help'),(34,82,'com/FourCobblers/Free/PhoneLock/Help'),(35,83,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(36,86,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(37,87,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(38,89,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(39,92,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(40,93,'com/FourCobblers/Free/PhoneLock/NotesList'),(41,94,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(42,102,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,5,2),(3,6,3),(4,10,4),(5,12,5),(6,13,6),(7,15,7),(8,16,8),(9,29,9),(10,33,10),(11,34,11),(12,35,12),(13,41,14),(14,42,15),(15,43,16),(16,44,17),(17,47,18),(18,51,19),(19,53,20),(20,55,21),(21,58,22),(22,59,23),(23,62,24),(24,63,25),(25,66,28),(26,68,29),(27,70,30),(28,72,31),(29,75,32),(30,77,33),(31,90,34),(32,95,35),(33,96,36),(34,97,37),(35,98,38),(36,99,39),(37,101,40),(38,103,42),(39,106,43);
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
INSERT INTO `IExtras` VALUES (1,2,'android.app.extra.DEVICE_ADMIN'),(2,2,'android.app.extra.ADD_EXPLANATION'),(3,26,'android.app.extra.DEVICE_ADMIN'),(4,26,'android.app.extra.ADD_EXPLANATION'),(5,36,'android.app.extra.DEVICE_ADMIN'),(6,36,'android.app.extra.ADD_EXPLANATION'),(7,46,'android.app.extra.DEVICE_ADMIN'),(8,46,'android.app.extra.ADD_EXPLANATION'),(9,84,'android.app.extra.DEVICE_ADMIN'),(10,85,'android.app.extra.DEVICE_ADMIN'),(11,84,'android.app.extra.ADD_EXPLANATION'),(12,85,'android.app.extra.ADD_EXPLANATION'),(13,104,'android.app.extra.DEVICE_ADMIN'),(14,104,'android.app.extra.ADD_EXPLANATION');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,6,3),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,13,6),(12,13,5),(13,13,4),(14,14,6),(15,14,5),(16,14,4),(17,15,2),(18,17,6),(19,17,4),(20,17,5),(21,18,7),(22,19,1),(23,20,7),(24,21,3),(25,22,7),(26,23,6),(27,23,8),(28,23,5),(29,24,8),(30,24,6),(31,24,5),(32,25,8),(33,25,5),(34,25,6),(35,26,9),(36,27,9),(37,28,9),(38,31,5),(39,31,4),(40,31,6),(41,30,10),(42,33,10),(43,32,10),(44,34,7),(45,35,11),(46,36,11),(47,37,11),(48,38,8),(49,38,5),(50,38,6),(51,39,2),(52,40,9),(53,42,2),(54,41,2),(55,43,3),(56,44,3),(57,45,3),(58,46,10),(59,47,11),(60,48,2),(61,49,3),(62,50,16),(63,50,17),(64,51,16),(65,51,17),(66,52,16),(67,52,17),(68,53,17),(69,53,16),(70,54,16),(71,54,17),(72,55,17),(73,55,16),(74,56,16),(75,56,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,7,1),(4,8,1),(5,9,1),(6,10,1),(7,13,2),(8,14,2),(9,17,2),(10,18,2),(11,19,1),(12,20,2),(13,22,2),(14,23,2),(15,24,2),(16,25,2),(17,26,2),(18,27,2),(19,28,2),(20,30,2),(21,30,3),(22,30,4),(23,31,2),(24,32,4),(25,32,3),(26,32,2),(27,33,3),(28,33,2),(29,33,4),(30,34,2),(31,35,2),(32,37,2),(33,36,2),(34,38,2),(35,40,2),(36,46,4),(37,46,3),(38,46,2),(39,47,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(2,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(3,17,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(4,18,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(5,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(6,22,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(7,23,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(8,24,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(9,25,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(10,26,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(11,27,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(12,28,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(13,30,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(14,31,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(15,33,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(16,32,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(17,34,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(18,38,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(19,40,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(20,46,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note');
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
INSERT INTO `IMimeTypes` VALUES (1,6,'(.*)','(.*)'),(2,13,'(.*)','(.*)'),(3,35,'(.*)','(.*)'),(4,47,'(.*)','(.*)'),(5,75,'(.*)','(.*)'),(6,77,'(.*)','(.*)'),(7,101,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.FourCobblers.Free.PhoneLock'),(2,9,'com.FourCobblers.Free.PhoneLock'),(3,14,'com.FourCobblers.Free.PhoneLock'),(4,17,'com.FourCobblers.Free.PhoneLock'),(5,19,'com.FourCobblers.Free.PhoneLock'),(6,20,'com.FourCobblers.Free.PhoneLock'),(7,21,'com.FourCobblers.Free.PhoneLock'),(8,22,'com.FourCobblers.Free.PhoneLock'),(9,24,'com.FourCobblers.Free.PhoneLock'),(10,25,'com.FourCobblers.Free.PhoneLock'),(11,27,'com.FourCobblers.Free.PhoneLock'),(12,30,'com.FourCobblers.Free.PhoneLock'),(13,31,'com.FourCobblers.Free.PhoneLock'),(14,38,'com.FourCobblers.Free.PhoneLock'),(15,39,'com.FourCobblers.Free.PhoneLock'),(16,40,'com.FourCobblers.Free.PhoneLock'),(17,45,'com.FourCobblers.Free.PhoneLock'),(18,49,'com.FourCobblers.Free.PhoneLock'),(19,50,'com.FourCobblers.Free.PhoneLock'),(20,52,'com.FourCobblers.Free.PhoneLock'),(21,51,'com.android.settings'),(22,53,'com.android.settings'),(23,54,'com.FourCobblers.Free.PhoneLock'),(24,56,'com.FourCobblers.Free.PhoneLock'),(25,57,'com.FourCobblers.Free.PhoneLock'),(26,58,'com.android.settings'),(27,61,'com.FourCobblers.Free.PhoneLock'),(28,65,'com.FourCobblers.Free.PhoneLock'),(29,67,'com.FourCobblers.Free.PhoneLock'),(30,73,'com.FourCobblers.Free.PhoneLock'),(31,74,'com.FourCobblers.Free.PhoneLock'),(32,76,'com.FourCobblers.Free.PhoneLock'),(33,80,'com.FourCobblers.Free.PhoneLock'),(34,82,'com.FourCobblers.Free.PhoneLock'),(35,83,'com.FourCobblers.Free.PhoneLock'),(36,86,'com.FourCobblers.Free.PhoneLock'),(37,87,'com.FourCobblers.Free.PhoneLock'),(38,89,'com.FourCobblers.Free.PhoneLock'),(39,92,'com.FourCobblers.Free.PhoneLock'),(40,93,'com.FourCobblers.Free.PhoneLock'),(41,94,'com.FourCobblers.Free.PhoneLock'),(42,102,'com.FourCobblers.Free.PhoneLock');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,11,0),(5,17,0),(6,18,0),(7,19,0),(8,20,0),(9,21,0),(10,22,0),(11,42,0),(12,46,0),(13,42,0),(14,46,0),(15,48,0),(16,49,0),(17,49,0),(18,46,0),(19,50,0),(20,42,0),(21,51,0),(22,49,0),(23,54,0),(24,53,0),(25,56,0),(26,53,0),(27,54,0),(28,56,0),(29,61,0),(30,62,0),(31,61,0),(32,63,0),(33,64,0),(34,61,0),(35,65,0),(36,66,0),(37,67,0),(38,68,0),(39,69,0),(40,68,0),(41,71,0),(42,70,0),(43,72,0),(44,74,0),(45,73,0),(46,75,0),(47,79,0),(48,80,0),(49,81,0),(50,83,0),(51,84,0),(52,85,0),(53,86,0),(54,87,0),(55,88,0),(56,89,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,3,1,0),(6,3,1,0),(7,5,1,0),(8,6,1,0),(9,7,0,0),(10,8,1,0),(11,9,1,0),(12,8,1,0),(13,8,1,0),(14,10,0,0),(15,11,1,0),(16,12,1,0),(17,13,0,0),(18,14,1,0),(19,14,0,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,17,1,0),(24,17,0,0),(25,17,0,0),(26,18,1,0),(27,19,0,0),(28,20,1,0),(29,21,1,0),(30,22,0,0),(31,23,0,0),(32,24,1,0),(33,25,1,0),(34,25,1,0),(35,25,1,0),(36,26,1,0),(37,27,1,0),(38,27,0,0),(39,27,0,0),(40,29,0,0),(41,31,1,0),(42,32,1,0),(43,33,1,0),(44,33,1,0),(45,35,0,0),(46,36,1,0),(47,33,1,0),(48,39,1,0),(49,40,0,0),(50,39,0,0),(51,41,0,0),(52,39,0,0),(53,42,0,0),(54,45,0,0),(55,46,1,0),(56,47,0,0),(57,48,0,0),(58,49,0,0),(59,56,1,0),(60,57,1,0),(61,59,0,0),(62,58,1,0),(63,60,1,0),(64,61,1,0),(65,62,0,0),(66,68,1,0),(67,71,0,0),(68,72,1,0),(69,73,1,0),(70,68,1,0),(71,74,1,0),(72,72,1,0),(73,75,0,0),(74,74,0,0),(75,68,1,0),(76,74,0,0),(77,72,1,0),(78,76,1,0),(79,77,1,0),(80,77,0,0),(81,79,1,0),(82,79,0,0),(83,77,0,0),(84,80,1,0),(85,81,1,0),(86,79,0,0),(87,82,0,0),(88,83,1,0),(89,87,0,0),(90,90,1,0),(91,89,1,0),(92,91,0,0),(93,92,0,0),(94,93,0,0),(95,94,1,0),(96,95,1,0),(97,96,1,0),(98,94,1,0),(99,97,1,0),(100,98,1,0),(101,94,1,0),(102,99,0,0),(103,109,1,0),(104,110,1,0),(105,111,1,0),(106,114,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,2,2,NULL),(2,4,10,2,NULL),(3,4,23,2,NULL),(4,4,24,2,NULL),(5,4,26,2,NULL),(6,4,28,2,NULL),(7,4,52,2,NULL),(8,23,1,2,NULL),(9,10,1,2,NULL),(10,12,1,2,NULL),(11,18,1,2,NULL),(12,3,1,2,NULL),(13,5,1,2,NULL),(14,48,1,2,NULL),(15,66,1,2,NULL),(16,70,1,2,NULL),(17,81,1,2,NULL),(18,68,1,2,NULL),(19,72,1,2,NULL),(20,79,1,2,NULL),(21,95,1,2,NULL),(22,98,1,2,NULL),(23,37,1,2,NULL),(24,33,1,2,NULL),(25,34,1,2,NULL),(26,71,1,2,NULL),(27,43,1,2,NULL),(28,44,1,2,NULL),(29,24,6,2,NULL),(30,24,15,2,NULL),(31,24,34,2,NULL),(32,24,39,2,NULL),(33,24,41,2,NULL),(34,24,44,2,NULL),(35,24,59,2,NULL),(36,25,1,2,NULL),(37,25,8,2,NULL),(38,25,19,2,NULL),(39,25,20,2,NULL),(40,25,21,2,NULL),(41,25,22,2,NULL),(42,25,50,2,NULL),(43,23,9,2,NULL),(44,23,11,2,NULL),(45,23,84,2,NULL),(46,23,8,2,NULL),(47,23,17,2,NULL),(48,23,18,2,NULL),(49,23,83,2,NULL),(50,23,19,2,NULL),(51,23,42,2,NULL),(52,23,66,2,NULL),(53,23,71,2,NULL),(54,23,73,2,NULL),(55,23,86,2,NULL),(56,23,20,2,NULL),(57,23,46,2,NULL),(58,23,65,2,NULL),(59,23,69,2,NULL),(60,23,72,2,NULL),(61,23,89,2,NULL),(62,23,22,2,NULL),(63,23,49,2,NULL),(64,23,67,2,NULL),(65,23,70,2,NULL),(66,23,74,2,NULL),(67,23,88,2,NULL),(68,23,21,2,NULL),(69,23,48,2,NULL),(70,23,51,2,NULL),(71,23,85,2,NULL),(72,23,50,2,NULL),(73,23,61,2,NULL),(74,23,79,2,NULL),(75,23,80,2,NULL),(76,23,81,2,NULL),(77,23,87,2,NULL),(78,10,9,2,NULL),(79,12,9,2,NULL),(80,10,11,2,NULL),(81,12,11,2,NULL),(82,10,84,2,NULL),(83,12,84,2,NULL),(84,10,8,2,NULL),(85,12,8,2,NULL),(86,10,17,2,NULL),(87,12,17,2,NULL),(88,10,18,2,NULL),(89,12,18,2,NULL),(90,10,83,2,NULL),(91,12,83,2,NULL),(92,10,19,2,NULL),(93,12,19,2,NULL),(94,10,42,2,NULL),(95,12,42,2,NULL),(96,10,66,2,NULL),(97,12,66,2,NULL),(98,10,71,2,NULL),(99,12,71,2,NULL),(100,10,73,2,NULL),(101,12,73,2,NULL),(102,10,86,2,NULL),(103,12,86,2,NULL),(104,10,20,2,NULL),(105,12,20,2,NULL),(106,10,46,2,NULL),(107,12,46,2,NULL),(108,10,65,2,NULL),(109,12,65,2,NULL),(110,10,69,2,NULL),(111,12,69,2,NULL),(112,10,72,2,NULL),(113,12,72,2,NULL),(114,10,89,2,NULL),(115,12,89,2,NULL),(116,10,22,2,NULL),(117,12,22,2,NULL),(118,10,49,2,NULL),(119,12,49,2,NULL),(120,10,67,2,NULL),(121,12,67,2,NULL),(122,10,70,2,NULL),(123,12,70,2,NULL),(124,10,74,2,NULL),(125,12,74,2,NULL),(126,10,88,2,NULL),(127,12,88,2,NULL),(128,10,21,2,NULL),(129,12,21,2,NULL),(130,10,48,2,NULL),(131,12,48,2,NULL),(132,10,51,2,NULL),(133,12,51,2,NULL),(134,10,85,2,NULL),(135,12,85,2,NULL),(136,10,50,2,NULL),(137,12,50,2,NULL),(138,10,61,2,NULL),(139,12,61,2,NULL),(140,10,79,2,NULL),(141,12,79,2,NULL),(142,10,80,2,NULL),(143,12,80,2,NULL),(144,10,81,2,NULL),(145,12,81,2,NULL),(146,10,87,2,NULL),(147,12,87,2,NULL),(148,18,9,2,NULL),(149,3,9,2,NULL),(150,5,9,2,NULL),(151,48,9,2,NULL),(152,66,9,2,NULL),(153,70,9,2,NULL),(154,81,9,2,NULL),(155,68,9,2,NULL),(156,72,9,2,NULL),(157,79,9,2,NULL),(158,95,9,2,NULL),(159,98,9,2,NULL),(160,37,9,2,NULL),(161,33,9,2,NULL),(162,34,9,2,NULL),(163,71,9,2,NULL),(164,43,9,2,NULL),(165,44,9,2,NULL),(166,18,11,2,NULL),(167,3,11,2,NULL),(168,5,11,2,NULL),(169,48,11,2,NULL),(170,66,11,2,NULL),(171,70,11,2,NULL),(172,81,11,2,NULL),(173,68,11,2,NULL),(174,72,11,2,NULL),(175,79,11,2,NULL),(176,95,11,2,NULL),(177,98,11,2,NULL),(178,37,11,2,NULL),(179,33,11,2,NULL),(180,34,11,2,NULL),(181,71,11,2,NULL),(182,43,11,2,NULL),(183,44,11,2,NULL),(184,18,84,2,NULL),(185,3,84,2,NULL),(186,5,84,2,NULL),(187,48,84,2,NULL),(188,66,84,2,NULL),(189,70,84,2,NULL),(190,81,84,2,NULL),(191,68,84,2,NULL),(192,72,84,2,NULL),(193,79,84,2,NULL),(194,95,84,2,NULL),(195,98,84,2,NULL),(196,37,84,2,NULL),(197,33,84,2,NULL),(198,34,84,2,NULL),(199,71,84,2,NULL),(200,43,84,2,NULL),(201,44,84,2,NULL),(202,14,2,2,NULL),(203,14,10,2,NULL),(204,14,23,2,NULL),(205,14,24,2,NULL),(206,14,26,2,NULL),(207,14,28,2,NULL),(208,14,52,2,NULL),(209,18,8,2,NULL),(210,3,8,2,NULL),(211,5,8,2,NULL),(212,48,8,2,NULL),(213,66,8,2,NULL),(214,70,8,2,NULL),(215,81,8,2,NULL),(216,68,8,2,NULL),(217,72,8,2,NULL),(218,79,8,2,NULL),(219,95,8,2,NULL),(220,98,8,2,NULL),(221,37,8,2,NULL),(222,33,8,2,NULL),(223,34,8,2,NULL),(224,71,8,2,NULL),(225,43,8,2,NULL),(226,44,8,2,NULL),(227,19,6,2,NULL),(228,19,15,2,NULL),(229,19,34,2,NULL),(230,19,39,2,NULL),(231,19,41,2,NULL),(232,19,44,2,NULL),(233,19,59,2,NULL),(234,20,1,2,NULL),(235,20,8,2,NULL),(236,20,19,2,NULL),(237,20,20,2,NULL),(238,20,21,2,NULL),(239,20,22,2,NULL),(240,20,50,2,NULL),(241,18,17,2,NULL),(242,18,18,2,NULL),(243,18,83,2,NULL),(244,18,19,2,NULL),(245,18,19,2,NULL),(246,18,42,2,NULL),(247,18,66,2,NULL),(248,18,71,2,NULL),(249,18,73,2,NULL),(250,18,73,2,NULL),(251,18,86,2,NULL),(252,18,20,2,NULL),(253,18,46,2,NULL),(254,18,46,2,NULL),(255,18,65,2,NULL),(256,18,69,2,NULL),(257,18,72,2,NULL),(258,18,89,2,NULL),(259,18,22,2,NULL),(260,18,49,2,NULL),(261,18,67,2,NULL),(262,18,70,2,NULL),(263,18,74,2,NULL),(264,18,88,2,NULL),(265,18,21,2,NULL),(266,18,48,2,NULL),(267,18,51,2,NULL),(268,18,85,2,NULL),(269,18,50,2,NULL),(270,18,61,2,NULL),(271,18,79,2,NULL),(272,18,80,2,NULL),(273,18,81,2,NULL),(274,18,87,2,NULL),(275,3,17,2,NULL),(276,5,17,2,NULL),(277,3,18,2,NULL),(278,5,18,2,NULL),(279,3,83,2,NULL),(280,5,83,2,NULL),(281,3,19,2,NULL),(282,5,19,2,NULL),(283,3,42,2,NULL),(284,5,42,2,NULL),(285,3,66,2,NULL),(286,5,66,2,NULL),(287,3,71,2,NULL),(288,5,71,2,NULL),(289,3,73,2,NULL),(290,5,73,2,NULL),(291,3,86,2,NULL),(292,5,86,2,NULL),(293,3,20,2,NULL),(294,5,20,2,NULL),(295,3,46,2,NULL),(296,5,46,2,NULL),(297,3,65,2,NULL),(298,5,65,2,NULL),(299,3,69,2,NULL),(300,5,69,2,NULL),(301,3,72,2,NULL),(302,5,72,2,NULL),(303,3,89,2,NULL),(304,5,89,2,NULL),(305,3,22,2,NULL),(306,5,22,2,NULL),(307,3,49,2,NULL),(308,5,49,2,NULL),(309,3,67,2,NULL),(310,5,67,2,NULL),(311,3,70,2,NULL),(312,5,70,2,NULL),(313,3,74,2,NULL),(314,5,74,2,NULL),(315,3,88,2,NULL),(316,5,88,2,NULL),(317,3,21,2,NULL),(318,5,21,2,NULL),(319,3,48,2,NULL),(320,5,48,2,NULL),(321,3,51,2,NULL),(322,5,51,2,NULL),(323,3,85,2,NULL),(324,5,85,2,NULL),(325,3,50,2,NULL),(326,5,50,2,NULL),(327,3,61,2,NULL),(328,5,61,2,NULL),(329,3,79,2,NULL),(330,5,79,2,NULL),(331,3,80,2,NULL),(332,5,80,2,NULL),(333,3,81,2,NULL),(334,5,81,2,NULL),(335,3,87,2,NULL),(336,5,87,2,NULL),(337,48,17,2,NULL),(338,66,17,2,NULL),(339,70,17,2,NULL),(340,81,17,2,NULL),(341,68,17,2,NULL),(342,72,17,2,NULL),(343,79,17,2,NULL),(344,95,17,2,NULL),(345,98,17,2,NULL),(346,37,17,2,NULL),(347,33,17,2,NULL),(348,34,17,2,NULL),(349,71,17,2,NULL),(350,43,17,2,NULL),(351,44,17,2,NULL),(352,48,18,2,NULL),(353,66,18,2,NULL),(354,70,18,2,NULL),(355,81,18,2,NULL),(356,68,18,2,NULL),(357,72,18,2,NULL),(358,79,18,2,NULL),(359,95,18,2,NULL),(360,98,18,2,NULL),(361,37,18,2,NULL),(362,33,18,2,NULL),(363,34,18,2,NULL),(364,71,18,2,NULL),(365,43,18,2,NULL),(366,44,18,2,NULL),(367,48,83,2,NULL),(368,66,83,2,NULL),(369,70,83,2,NULL),(370,81,83,2,NULL),(371,68,83,2,NULL),(372,72,83,2,NULL),(373,79,83,2,NULL),(374,95,83,2,NULL),(375,98,83,2,NULL),(376,37,83,2,NULL),(377,33,83,2,NULL),(378,34,83,2,NULL),(379,71,83,2,NULL),(380,43,83,2,NULL),(381,44,83,2,NULL),(382,92,2,2,NULL),(383,92,10,2,NULL),(384,92,23,2,NULL),(385,92,24,2,NULL),(386,92,26,2,NULL),(387,92,28,2,NULL),(388,92,52,2,NULL),(389,48,19,2,NULL),(390,66,19,2,NULL),(391,70,19,2,NULL),(392,81,19,2,NULL),(393,68,19,2,NULL),(394,72,19,2,NULL),(395,79,19,2,NULL),(396,95,19,2,NULL),(397,98,19,2,NULL),(398,37,19,2,NULL),(399,33,19,2,NULL),(400,34,19,2,NULL),(401,71,19,2,NULL),(402,43,19,2,NULL),(403,44,19,2,NULL),(404,50,6,2,NULL),(405,50,15,2,NULL),(406,50,34,2,NULL),(407,50,39,2,NULL),(408,50,41,2,NULL),(409,50,44,2,NULL),(410,50,59,2,NULL),(411,52,1,2,NULL),(412,52,8,2,NULL),(413,52,19,2,NULL),(414,52,20,2,NULL),(415,52,21,2,NULL),(416,52,22,2,NULL),(417,52,50,2,NULL),(418,48,42,2,NULL),(419,48,66,2,NULL),(420,48,71,2,NULL),(421,48,73,2,NULL),(422,48,86,2,NULL),(423,48,20,2,NULL),(424,48,46,2,NULL),(425,48,65,2,NULL),(426,48,69,2,NULL),(427,48,72,2,NULL),(428,48,89,2,NULL),(429,48,22,2,NULL),(430,48,49,2,NULL),(431,48,67,2,NULL),(432,48,70,2,NULL),(433,48,74,2,NULL),(434,48,88,2,NULL),(435,48,21,2,NULL),(436,48,48,2,NULL),(437,48,51,2,NULL),(438,48,85,2,NULL),(439,48,50,2,NULL),(440,48,61,2,NULL),(441,48,79,2,NULL),(442,48,80,2,NULL),(443,48,81,2,NULL),(444,48,87,2,NULL),(445,66,42,2,NULL),(446,70,42,2,NULL),(447,66,66,2,NULL),(448,70,66,2,NULL),(449,66,71,2,NULL),(450,70,71,2,NULL),(451,66,73,2,NULL),(452,70,73,2,NULL),(453,66,86,2,NULL),(454,70,86,2,NULL),(455,66,20,2,NULL),(456,70,20,2,NULL),(457,66,46,2,NULL),(458,70,46,2,NULL),(459,70,46,2,NULL),(460,66,65,2,NULL),(461,70,65,2,NULL),(462,66,69,2,NULL),(463,70,69,2,NULL),(464,66,72,2,NULL),(465,70,72,2,NULL),(466,66,89,2,NULL),(467,70,89,2,NULL),(468,66,22,2,NULL),(469,70,22,2,NULL),(470,66,49,2,NULL),(471,70,49,2,NULL),(472,66,67,2,NULL),(473,70,67,2,NULL),(474,70,67,2,NULL),(475,66,70,2,NULL),(476,70,70,2,NULL),(477,66,74,2,NULL),(478,70,74,2,NULL),(479,66,88,2,NULL),(480,70,88,2,NULL),(481,66,21,2,NULL),(482,70,21,2,NULL),(483,70,21,2,NULL),(484,66,48,2,NULL),(485,70,48,2,NULL),(486,66,51,2,NULL),(487,70,51,2,NULL),(488,66,85,2,NULL),(489,66,85,2,NULL),(490,70,85,2,NULL),(491,66,50,2,NULL),(492,70,50,2,NULL),(493,66,61,2,NULL),(494,70,61,2,NULL),(495,66,79,2,NULL),(496,70,79,2,NULL),(497,66,80,2,NULL),(498,66,80,2,NULL),(499,70,80,2,NULL),(500,66,81,2,NULL),(501,70,81,2,NULL),(502,66,87,2,NULL),(503,70,87,2,NULL),(504,81,42,2,NULL),(505,68,42,2,NULL),(506,72,42,2,NULL),(507,79,42,2,NULL),(508,95,42,2,NULL),(509,98,42,2,NULL),(510,37,42,2,NULL),(511,33,42,2,NULL),(512,34,42,2,NULL),(513,71,42,2,NULL),(514,43,42,2,NULL),(515,44,42,2,NULL),(516,81,66,2,NULL),(517,68,66,2,NULL),(518,72,66,2,NULL),(519,79,66,2,NULL),(520,95,66,2,NULL),(521,98,66,2,NULL),(522,37,66,2,NULL),(523,33,66,2,NULL),(524,34,66,2,NULL),(525,71,66,2,NULL),(526,43,66,2,NULL),(527,44,66,2,NULL),(528,81,71,2,NULL),(529,81,71,2,NULL),(530,68,71,2,NULL),(531,72,71,2,NULL),(532,72,71,2,NULL),(533,79,71,2,NULL),(534,95,71,2,NULL),(535,98,71,2,NULL),(536,37,71,2,NULL),(537,33,71,2,NULL),(538,34,71,2,NULL),(539,71,71,2,NULL),(540,43,71,2,NULL),(541,44,71,2,NULL),(542,81,73,2,NULL),(543,68,73,2,NULL),(544,68,73,2,NULL),(545,72,73,2,NULL),(546,79,73,2,NULL),(547,79,73,2,NULL),(548,95,73,2,NULL),(549,98,73,2,NULL),(550,37,73,2,NULL),(551,33,73,2,NULL),(552,34,73,2,NULL),(553,34,73,2,NULL),(554,71,73,2,NULL),(555,43,73,2,NULL),(556,44,73,2,NULL),(557,81,86,2,NULL),(558,68,86,2,NULL),(559,68,86,2,NULL),(560,72,86,2,NULL),(561,79,86,2,NULL),(562,79,86,2,NULL),(563,95,86,2,NULL),(564,98,86,2,NULL),(565,37,86,2,NULL),(566,33,86,2,NULL),(567,34,86,2,NULL),(568,71,86,2,NULL),(569,43,86,2,NULL),(570,44,86,2,NULL),(571,65,2,2,NULL),(572,65,10,2,NULL),(573,65,23,2,NULL),(574,65,23,2,NULL),(575,65,24,2,NULL),(576,65,26,2,NULL),(577,65,26,2,NULL),(578,65,28,2,NULL),(579,65,52,2,NULL),(580,81,20,2,NULL),(581,68,20,2,NULL),(582,72,20,2,NULL),(583,79,20,2,NULL),(584,95,20,2,NULL),(585,98,20,2,NULL),(586,37,20,2,NULL),(587,33,20,2,NULL),(588,34,20,2,NULL),(589,71,20,2,NULL),(590,43,20,2,NULL),(591,44,20,2,NULL),(592,44,20,2,NULL),(593,82,6,2,NULL),(594,82,15,2,NULL),(595,82,34,2,NULL),(596,82,39,2,NULL),(597,82,41,2,NULL),(598,82,44,2,NULL),(599,82,44,2,NULL),(600,82,44,2,NULL),(601,82,59,2,NULL),(602,86,1,2,NULL),(603,86,8,2,NULL),(604,86,19,2,NULL),(605,86,20,2,NULL),(606,86,20,2,NULL),(607,86,21,2,NULL),(608,86,22,2,NULL),(609,86,50,2,NULL),(610,81,46,2,NULL),(611,81,46,2,NULL),(612,81,46,2,NULL),(613,81,65,2,NULL),(614,81,69,2,NULL),(615,81,69,2,NULL),(616,81,69,2,NULL),(617,81,72,2,NULL),(618,81,89,2,NULL),(619,81,22,2,NULL),(620,81,49,2,NULL),(621,81,67,2,NULL),(622,81,67,2,NULL),(623,81,70,2,NULL),(624,81,74,2,NULL),(625,81,74,2,NULL),(626,81,88,2,NULL),(627,81,21,2,NULL),(628,81,21,2,NULL),(629,81,48,2,NULL),(630,81,51,2,NULL),(631,81,51,2,NULL),(632,81,85,2,NULL),(633,81,50,2,NULL),(634,81,50,2,NULL),(635,81,61,2,NULL),(636,81,79,2,NULL),(637,81,80,2,NULL),(638,81,81,2,NULL),(639,81,87,2,NULL),(640,81,87,2,NULL),(641,68,46,2,NULL),(642,72,46,2,NULL),(643,68,65,2,NULL),(644,72,65,2,NULL),(645,68,69,2,NULL),(646,72,69,2,NULL),(647,68,72,2,NULL),(648,72,72,2,NULL),(649,68,89,2,NULL),(650,72,89,2,NULL),(651,68,22,2,NULL),(652,72,22,2,NULL),(653,68,49,2,NULL),(654,72,49,2,NULL),(655,68,67,2,NULL),(656,68,67,2,NULL),(657,72,67,2,NULL),(658,68,70,2,NULL),(659,72,70,2,NULL),(660,68,74,2,NULL),(661,72,74,2,NULL),(662,72,74,2,NULL),(663,68,88,2,NULL),(664,72,88,2,NULL),(665,68,21,2,NULL),(666,72,21,2,NULL),(667,68,48,2,NULL),(668,72,48,2,NULL),(669,68,51,2,NULL),(670,72,51,2,NULL),(671,72,51,2,NULL),(672,68,85,2,NULL),(673,72,85,2,NULL),(674,68,50,2,NULL),(675,72,50,2,NULL),(676,68,61,2,NULL),(677,72,61,2,NULL),(678,68,79,2,NULL),(679,72,79,2,NULL),(680,68,80,2,NULL),(681,72,80,2,NULL),(682,68,81,2,NULL),(683,68,81,2,NULL),(684,72,81,2,NULL),(685,68,87,2,NULL),(686,68,87,2,NULL),(687,72,87,2,NULL),(688,79,46,2,NULL),(689,95,46,2,NULL),(690,98,46,2,NULL),(691,37,46,2,NULL),(692,33,46,2,NULL),(693,34,46,2,NULL),(694,71,46,2,NULL),(695,43,46,2,NULL),(696,44,46,2,NULL),(697,79,65,2,NULL),(698,95,65,2,NULL),(699,98,65,2,NULL),(700,37,65,2,NULL),(701,33,65,2,NULL),(702,34,65,2,NULL),(703,71,65,2,NULL),(704,43,65,2,NULL),(705,44,65,2,NULL),(706,79,69,2,NULL),(707,95,69,2,NULL),(708,95,69,2,NULL),(709,98,69,2,NULL),(710,37,69,2,NULL),(711,33,69,2,NULL),(712,34,69,2,NULL),(713,71,69,2,NULL),(714,43,69,2,NULL),(715,44,69,2,NULL),(716,79,72,2,NULL),(717,79,72,2,NULL),(718,95,72,2,NULL),(719,98,72,2,NULL),(720,37,72,2,NULL),(721,33,72,2,NULL),(722,34,72,2,NULL),(723,34,72,2,NULL),(724,71,72,2,NULL),(725,43,72,2,NULL),(726,44,72,2,NULL),(727,79,89,2,NULL),(728,95,89,2,NULL),(729,98,89,2,NULL),(730,37,89,2,NULL),(731,33,89,2,NULL),(732,33,89,2,NULL),(733,34,89,2,NULL),(734,71,89,2,NULL),(735,43,89,2,NULL),(736,44,89,2,NULL),(737,87,2,2,NULL),(738,87,2,2,NULL),(739,87,10,2,NULL),(740,87,23,2,NULL),(741,87,24,2,NULL),(742,87,26,2,NULL),(743,87,28,2,NULL),(744,87,28,2,NULL),(745,87,52,2,NULL),(746,79,22,2,NULL),(747,95,22,2,NULL),(748,98,22,2,NULL),(749,37,22,2,NULL),(750,37,22,2,NULL),(751,33,22,2,NULL),(752,34,22,2,NULL),(753,34,22,2,NULL),(754,71,22,2,NULL),(755,43,22,2,NULL),(756,43,22,2,NULL),(757,44,22,2,NULL),(758,80,6,2,NULL),(759,80,15,2,NULL),(760,80,34,2,NULL),(761,80,39,2,NULL),(762,80,41,2,NULL),(763,80,44,2,NULL),(764,80,59,2,NULL),(765,83,1,2,NULL),(766,83,8,2,NULL),(767,83,19,2,NULL),(768,83,20,2,NULL),(769,83,21,2,NULL),(770,83,22,2,NULL),(771,83,22,2,NULL),(772,83,50,2,NULL),(773,79,49,2,NULL),(774,79,49,2,NULL),(775,79,67,2,NULL),(776,79,70,2,NULL),(777,79,70,2,NULL),(778,79,74,2,NULL),(779,79,88,2,NULL),(780,79,88,2,NULL),(781,79,21,2,NULL),(782,79,48,2,NULL),(783,79,48,2,NULL),(784,79,51,2,NULL),(785,79,85,2,NULL),(786,79,85,2,NULL),(787,79,50,2,NULL),(788,79,61,2,NULL),(789,79,61,2,NULL),(790,79,79,2,NULL),(791,79,80,2,NULL),(792,79,80,2,NULL),(793,79,81,2,NULL),(794,79,87,2,NULL),(795,79,87,2,NULL),(796,95,49,2,NULL),(797,95,49,2,NULL),(798,95,49,2,NULL),(799,98,49,2,NULL),(800,95,67,2,NULL),(801,95,67,2,NULL),(802,98,67,2,NULL),(803,95,70,2,NULL),(804,95,70,2,NULL),(805,98,70,2,NULL),(806,95,74,2,NULL),(807,95,74,2,NULL),(808,98,74,2,NULL),(809,95,88,2,NULL),(810,95,88,2,NULL),(811,98,88,2,NULL),(812,95,21,2,NULL),(813,95,21,2,NULL),(814,98,21,2,NULL),(815,95,48,2,NULL),(816,95,48,2,NULL),(817,98,48,2,NULL),(818,95,51,2,NULL),(819,95,51,2,NULL),(820,98,51,2,NULL),(821,95,85,2,NULL),(822,98,85,2,NULL),(823,95,50,2,NULL),(824,98,50,2,NULL),(825,95,61,2,NULL),(826,98,61,2,NULL),(827,95,79,2,NULL),(828,98,79,2,NULL),(829,98,79,2,NULL),(830,95,80,2,NULL),(831,98,80,2,NULL),(832,98,80,2,NULL),(833,95,81,2,NULL),(834,98,81,2,NULL),(835,98,81,2,NULL),(836,95,87,2,NULL),(837,98,87,2,NULL),(838,98,87,2,NULL),(839,37,49,2,NULL),(840,33,49,2,NULL),(841,33,49,2,NULL),(842,34,49,2,NULL),(843,71,49,2,NULL),(844,71,49,2,NULL),(845,43,49,2,NULL),(846,44,49,2,NULL),(847,44,49,2,NULL),(848,37,67,2,NULL),(849,33,67,2,NULL),(850,33,67,2,NULL),(851,34,67,2,NULL),(852,71,67,2,NULL),(853,71,67,2,NULL),(854,43,67,2,NULL),(855,44,67,2,NULL),(856,44,67,2,NULL),(857,37,70,2,NULL),(858,33,70,2,NULL),(859,33,70,2,NULL),(860,34,70,2,NULL),(861,71,70,2,NULL),(862,43,70,2,NULL),(863,44,70,2,NULL),(864,37,74,2,NULL),(865,37,74,2,NULL),(866,33,74,2,NULL),(867,34,74,2,NULL),(868,71,74,2,NULL),(869,43,74,2,NULL),(870,44,74,2,NULL),(871,37,88,2,NULL),(872,33,88,2,NULL),(873,33,88,2,NULL),(874,34,88,2,NULL),(875,71,88,2,NULL),(876,71,88,2,NULL),(877,43,88,2,NULL),(878,44,88,2,NULL),(879,44,88,2,NULL),(880,30,2,2,NULL),(881,30,10,2,NULL),(882,30,10,2,NULL),(883,30,23,2,NULL),(884,30,24,2,NULL),(885,30,24,2,NULL),(886,30,26,2,NULL),(887,30,28,2,NULL),(888,30,28,2,NULL),(889,30,52,2,NULL),(890,37,21,2,NULL),(891,37,21,2,NULL),(892,33,21,2,NULL),(893,34,21,2,NULL),(894,34,21,2,NULL),(895,71,21,2,NULL),(896,43,21,2,NULL),(897,43,21,2,NULL),(898,44,21,2,NULL),(899,38,6,2,NULL),(900,38,6,2,NULL),(901,38,15,2,NULL),(902,38,34,2,NULL),(903,38,34,2,NULL),(904,38,39,2,NULL),(905,38,41,2,NULL),(906,38,41,2,NULL),(907,38,44,2,NULL),(908,38,59,2,NULL),(909,38,59,2,NULL),(910,39,1,2,NULL),(911,39,8,2,NULL),(912,39,8,2,NULL),(913,39,19,2,NULL),(914,39,20,2,NULL),(915,39,20,2,NULL),(916,39,21,2,NULL),(917,39,22,2,NULL),(918,39,22,2,NULL),(919,39,50,2,NULL),(920,37,48,2,NULL),(921,37,48,2,NULL),(922,37,51,2,NULL),(923,37,85,2,NULL),(924,37,50,2,NULL),(925,37,61,2,NULL),(926,37,79,2,NULL),(927,37,80,2,NULL),(928,37,80,2,NULL),(929,37,81,2,NULL),(930,37,87,2,NULL),(931,37,87,2,NULL),(932,33,48,2,NULL),(933,33,48,2,NULL),(934,33,48,2,NULL),(935,34,48,2,NULL),(936,33,51,2,NULL),(937,34,51,2,NULL),(938,34,51,2,NULL),(939,34,51,2,NULL),(940,33,85,2,NULL),(941,34,85,2,NULL),(942,34,85,2,NULL),(943,34,85,2,NULL),(944,33,50,2,NULL),(945,34,50,2,NULL),(946,34,50,2,NULL),(947,34,50,2,NULL),(948,33,61,2,NULL),(949,34,61,2,NULL),(950,34,61,2,NULL),(951,33,79,2,NULL),(952,34,79,2,NULL),(953,33,80,2,NULL),(954,34,80,2,NULL),(955,33,81,2,NULL),(956,33,81,2,NULL),(957,34,81,2,NULL),(958,33,87,2,NULL),(959,33,87,2,NULL),(960,34,87,2,NULL),(961,71,48,2,NULL),(962,71,48,2,NULL),(963,43,48,2,NULL),(964,44,48,2,NULL),(965,71,51,2,NULL),(966,43,51,2,NULL),(967,43,51,2,NULL),(968,44,51,2,NULL),(969,71,85,2,NULL),(970,71,85,2,NULL),(971,71,85,2,NULL),(972,43,85,2,NULL),(973,43,85,2,NULL),(974,44,85,2,NULL),(975,94,2,2,NULL),(976,94,2,2,NULL),(977,94,10,2,NULL),(978,94,23,2,NULL),(979,94,24,2,NULL),(980,94,24,2,NULL),(981,94,26,2,NULL),(982,94,28,2,NULL),(983,94,52,2,NULL),(984,94,52,2,NULL),(985,71,50,2,NULL),(986,71,50,2,NULL),(987,43,50,2,NULL),(988,43,50,2,NULL),(989,44,50,2,NULL),(990,74,6,2,NULL),(991,74,6,2,NULL),(992,74,15,2,NULL),(993,74,34,2,NULL),(994,74,39,2,NULL),(995,74,39,2,NULL),(996,74,41,2,NULL),(997,74,44,2,NULL),(998,74,59,2,NULL),(999,74,59,2,NULL),(1000,76,1,2,NULL),(1001,76,8,2,NULL),(1002,76,8,2,NULL),(1003,76,19,2,NULL),(1004,76,20,2,NULL),(1005,76,21,2,NULL),(1006,76,21,2,NULL),(1007,76,22,2,NULL),(1008,76,50,2,NULL),(1009,71,61,2,NULL),(1010,71,61,2,NULL),(1011,71,61,2,NULL),(1012,71,79,2,NULL),(1013,71,80,2,NULL),(1014,71,80,2,NULL),(1015,71,81,2,NULL),(1016,71,87,2,NULL),(1017,43,61,2,NULL),(1018,43,61,2,NULL),(1019,43,61,2,NULL),(1020,43,61,2,NULL),(1021,44,61,2,NULL),(1022,43,79,2,NULL),(1023,43,79,2,NULL),(1024,44,79,2,NULL),(1025,43,80,2,NULL),(1026,44,80,2,NULL),(1027,44,80,2,NULL),(1028,43,81,2,NULL),(1029,44,81,2,NULL),(1030,43,87,2,NULL),(1031,43,87,2,NULL),(1032,44,87,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.FourCobblers.Free.Util.NotePad'),(2,3,'com.FourCobblers.Free.Util.NotePad'),(3,2,'com.FourCobblers.Free.Util.NotePad'),(4,4,'com.FourCobblers.Free.Util.NotePad');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.BIND_DEVICE_ADMIN'),(12,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(13,'android.permission.UPDATE_DEVICE_STATS'),(14,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,76,0,NULL,NULL),(2,78,0,NULL,NULL),(3,77,0,NULL,NULL),(4,82,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(14,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(15,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'custom:3',NULL,NULL,NULL),(20,NULL,NULL,'custom:3',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(22,NULL,NULL,'custom:3',NULL,NULL,NULL),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(25,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(26,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(27,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(37,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(42,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(43,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,28,13),(2,66,26),(3,67,27),(4,108,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,4),(14,2,5),(15,2,6),(16,2,7),(17,2,8),(18,2,9),(19,3,1),(20,3,2),(21,4,1),(22,3,3),(23,4,2),(24,3,4),(25,4,3),(26,3,5),(27,4,4),(28,5,1),(29,3,6),(30,4,5),(31,5,2),(32,3,7),(33,6,1),(34,5,3),(35,4,6),(36,3,8),(37,6,2),(38,5,4),(39,4,7),(40,6,3),(41,3,9),(42,4,8),(43,5,5),(44,6,4),(45,3,11),(46,4,9),(47,5,6),(48,6,5),(49,3,12),(50,4,12),(51,5,7),(52,6,6),(53,3,13),(54,4,13),(55,5,8),(56,3,14),(57,6,7),(58,5,9),(59,4,14),(60,6,8),(61,5,12),(62,6,9),(63,5,13),(64,5,14),(65,7,1),(66,7,2),(67,7,3),(68,7,4),(69,7,5),(70,7,6),(71,7,7),(72,7,8),(73,7,9),(74,7,12),(75,7,13),(76,7,14);
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

-- Dump completed on 2015-10-12  3:30:15
