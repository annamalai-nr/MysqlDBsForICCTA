-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_0
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BATTERY_CHANGED'),(8,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.MAIN'),(10,'android.intent.action.VIEW'),(4,'com.accutracking.action.ALARM'),(3,'com.accutracking.action.GPS.UPDATE'),(6,'com.accutracking.action.GPS.UPDATE.REQUEST'),(11,'com.accutracking.action.SETTING.UPDATE'),(7,'com.accutracking.action.SETTINGS.UPDATE'),(1,'com.accutracking.action.STATUS.UPDATE');
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
INSERT INTO `Applications` VALUES (1,'com.accutracking',20),(2,'com.accutracking',19),(3,'com.accutracking',23),(4,'com.accutracking',16),(5,'com.accutracking',14),(6,'com.accutracking',18),(7,'com.accutracking',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'com.accutracking.AccuTracking'),(2,2,'com.accutracking.AccuTracking'),(3,1,'com.accutracking.AccuTracking'),(4,6,'com.accutracking.AccuTracking'),(5,5,'com.accutracking.AccuTracking'),(6,7,'com.accutracking.AccuTracking'),(7,2,'com.accutracking.SettingsActivity'),(8,1,'com.accutracking.SettingsActivity'),(9,3,'com.accutracking.SettingsActivity'),(10,6,'com.accutracking.SettingsActivity'),(11,5,'com.accutracking.SettingsActivity'),(12,2,'com.accutracking.TrackingService'),(13,1,'com.accutracking.TrackingService'),(14,3,'com.accutracking.TrackingService'),(15,6,'com.accutracking.TrackingService'),(16,7,'com.accutracking.SettingsActivity'),(17,5,'com.accutracking.TrackingService'),(18,7,'com.accutracking.TrackingService'),(19,5,'com.accutracking.AutoStartReceiver'),(20,2,'com.accutracking.AutoStartReceiver'),(21,6,'com.accutracking.AutoStartReceiver'),(22,1,'com.accutracking.AutoStartReceiver'),(23,7,'com.accutracking.AutoStartReceiver'),(24,3,'com.accutracking.AutoStartReceiver'),(25,2,'com.accutracking.AccuTracking$5'),(26,2,'com.accutracking.TrackingService$IntentBroadcastReceiver'),(27,3,'com.accutracking.TrackingService$IntentBroadcastReceiver'),(28,3,'com.accutracking.AccuTracking$IntentBroadcastReceiver'),(29,7,'com.accutracking.TrackingService$SettingsBroadcastReceiver'),(30,2,'com.accutracking.AccuTracking$IntentBroadcastReceiver'),(31,7,'com.accutracking.AccuTracking$StatusBroadcastReceiver'),(32,1,'com.accutracking.AccuTracking$IntentBroadcastReceiver'),(33,1,'com.accutracking.AccuTracking$5'),(34,1,'com.accutracking.TrackingService$IntentBroadcastReceiver'),(35,3,'com.accutracking.AccuTracking$5'),(36,7,'com.accutracking.TrackingService$BatteryStateBroadcastReceiver'),(37,7,'com.accutracking.TrackingService$GPSUpdateRequestBroadcastReceiver'),(38,7,'com.accutracking.AccuTracking$5'),(39,7,'com.accutracking.AccuTracking$TrackingBroadcastReceiver');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,17,'s',1,NULL,NULL),(17,16,'a',0,NULL,NULL),(18,18,'s',1,3,NULL),(19,20,'r',1,1,NULL),(20,19,'r',1,1,NULL),(21,22,'r',1,1,NULL),(22,21,'r',1,1,NULL),(23,23,'r',1,1,NULL),(24,24,'r',1,1,NULL),(25,26,'r',1,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,28,'r',1,NULL,NULL),(28,29,'r',1,NULL,NULL),(29,30,'r',1,NULL,NULL),(30,31,'r',1,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,34,'r',1,NULL,NULL),(33,36,'r',1,NULL,NULL),(34,37,'r',1,NULL,NULL),(35,39,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,3),(4,4,8),(5,5,2),(6,6,14),(7,7,2),(8,8,23),(9,9,1),(10,11,18),(11,10,19),(12,12,1),(13,13,12),(14,14,9),(15,15,17),(16,16,7),(17,17,21),(18,18,3),(19,19,3),(20,20,3),(21,22,6),(22,21,1),(23,23,24),(24,24,13),(25,25,6),(26,26,1),(27,27,6),(28,28,18),(29,29,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,25,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(2,2,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(3,3,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(4,8,'<com.accutracking.SettingsActivity: boolean saveSettings()>',114,'r',NULL),(5,2,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(6,14,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',7,'r',NULL),(7,2,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',23,'s',NULL),(8,23,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(9,1,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(10,20,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(11,18,'<com.accutracking.TrackingService: void broadcastGPSUpdate()>',17,'r',NULL),(12,1,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(13,12,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',7,'r',NULL),(14,9,'<com.accutracking.SettingsActivity: boolean saveSettings()>',123,'r',NULL),(15,16,'<com.accutracking.SettingsActivity: boolean saveSettings()>',116,'r',NULL),(16,7,'<com.accutracking.SettingsActivity: boolean saveSettings()>',114,'r',NULL),(17,22,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(18,3,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(19,33,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(20,3,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',23,'s',NULL),(21,35,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(22,6,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',22,'s',NULL),(23,24,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(24,13,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',7,'r',NULL),(25,6,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(26,1,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',23,'s',NULL),(27,38,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(28,18,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',5,'r',NULL),(29,6,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,4,11),(3,5,6),(4,6,11),(5,7,1),(6,8,11),(7,12,11),(8,14,3),(9,15,6),(10,16,11),(11,17,1),(12,18,11),(13,19,11),(14,20,11),(15,21,11),(16,22,11),(17,23,11),(18,24,11),(19,25,11),(20,26,11),(21,27,11),(22,28,11),(23,29,11),(24,30,11),(25,31,11),(26,32,11),(27,33,11),(28,34,11),(29,35,11),(30,36,11),(31,37,11),(32,38,11),(33,39,11),(34,40,11),(35,41,11),(36,42,11),(37,43,11),(38,44,11),(39,45,11),(40,46,11),(41,47,11),(42,48,11),(43,49,11),(44,50,11),(45,51,11),(46,52,11),(47,53,11),(48,54,11),(49,55,11),(50,56,11),(51,57,11),(52,58,11),(53,59,11),(54,60,11),(55,61,11),(56,62,11),(57,63,11),(58,64,11),(59,65,11),(60,66,11),(61,67,11),(62,68,11),(63,69,11),(64,70,11),(65,71,11),(66,72,11),(67,73,11),(68,74,11),(69,75,11),(70,76,11),(71,77,11),(72,78,11),(73,79,11),(74,80,11),(75,81,11),(76,82,11),(77,83,11),(78,84,11),(79,85,11),(80,86,11),(81,87,11),(82,88,11),(83,89,11),(84,90,11),(85,91,11),(86,92,11),(87,93,11),(88,94,11),(89,95,11),(90,97,11),(91,96,11),(92,98,11),(93,99,11),(94,100,11),(95,101,11),(96,102,11),(97,103,11),(98,104,11),(99,105,11),(100,106,11),(101,107,11),(102,108,11),(103,109,11),(104,110,11),(105,111,11),(106,112,11),(107,113,11),(108,114,11),(109,115,11),(110,116,11),(111,117,11),(112,118,11),(113,119,11),(114,120,11),(115,121,11),(116,122,11),(117,123,11),(118,124,11),(119,125,11),(120,127,11),(121,128,11),(122,129,11),(123,130,11),(124,131,11),(125,132,11),(126,133,11),(127,134,11),(128,135,6),(129,136,11),(130,137,11),(131,138,10),(132,139,11),(133,140,11),(134,141,11),(135,142,11),(136,144,11),(137,146,10),(138,148,1),(139,149,6),(140,151,10),(141,152,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/accutracking/SettingsActivity'),(2,3,'com/accutracking/SettingsActivity'),(3,9,'com/accutracking/TrackingService'),(4,10,'com/accutracking/TrackingService'),(5,11,'com/accutracking/SettingsActivity'),(6,13,'com/accutracking/TrackingService'),(7,126,'com/accutracking/TrackingService'),(8,143,'com/accutracking/TrackingService'),(9,145,'com/accutracking/TrackingService'),(10,147,'com/accutracking/TrackingService'),(11,150,'com/accutracking/TrackingService'),(12,153,'com/accutracking/SettingsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,138,2),(3,146,3),(4,151,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'2'),(2,4,'1'),(3,4,'6'),(4,6,'3'),(5,6,'7'),(6,7,'202'),(7,6,'5'),(8,7,'201'),(9,8,'2'),(10,8,'1'),(11,8,'6'),(12,8,'5'),(13,8,'4'),(14,12,'3'),(15,14,'3'),(16,12,'7'),(17,14,'2'),(18,12,'4'),(19,14,'1'),(20,14,'7'),(21,14,'6'),(22,16,'3'),(23,17,'202'),(24,14,'5'),(25,16,'1'),(26,14,'4'),(27,17,'201'),(28,16,'7'),(29,16,'6'),(30,18,'2'),(31,16,'4'),(32,18,'1'),(33,18,'6'),(34,19,'2'),(35,20,'3'),(36,19,'1'),(37,20,'2'),(38,21,'3'),(39,19,'6'),(40,20,'7'),(41,21,'7'),(42,20,'5'),(43,22,'2'),(44,21,'5'),(45,20,'4'),(46,23,'3'),(47,22,'1'),(48,23,'7'),(49,22,'6'),(50,24,'2'),(51,23,'5'),(52,25,'3'),(53,24,'1'),(54,25,'1'),(55,26,'3'),(56,24,'6'),(57,25,'7'),(58,27,'2'),(59,24,'5'),(60,26,'7'),(61,25,'6'),(62,24,'4'),(63,27,'1'),(64,26,'5'),(65,25,'5'),(66,27,'6'),(67,27,'5'),(68,28,'3'),(69,29,'2'),(70,27,'4'),(71,30,'3'),(72,28,'7'),(73,29,'1'),(74,30,'2'),(75,28,'4'),(76,29,'6'),(77,30,'7'),(78,31,'3'),(79,29,'5'),(80,30,'5'),(81,31,'7'),(82,29,'4'),(83,32,'3'),(84,31,'4'),(85,32,'1'),(86,33,'3'),(87,34,'3'),(88,32,'7'),(89,33,'1'),(90,35,'3'),(91,32,'6'),(92,34,'7'),(93,33,'7'),(94,35,'1'),(95,32,'4'),(96,34,'4'),(97,33,'6'),(98,35,'7'),(99,35,'6'),(100,36,'3'),(101,37,'3'),(102,35,'4'),(103,38,'1'),(104,36,'1'),(105,37,'2'),(106,38,'6'),(107,37,'7'),(108,36,'7'),(109,38,'4'),(110,39,'3'),(111,36,'6'),(112,37,'5'),(113,39,'2'),(114,36,'4'),(115,37,'4'),(116,39,'7'),(117,40,'2'),(118,39,'5'),(119,40,'5'),(120,41,'3'),(121,42,'3'),(122,39,'4'),(123,40,'4'),(124,41,'2'),(125,42,'1'),(126,41,'7'),(127,42,'7'),(128,43,'3'),(129,41,'5'),(130,42,'6'),(131,44,'3'),(132,41,'4'),(133,42,'5'),(134,43,'1'),(135,44,'2'),(136,43,'7'),(137,44,'7'),(138,43,'6'),(139,45,'3'),(140,46,'3'),(141,43,'5'),(142,45,'1'),(143,46,'1'),(144,47,'1'),(145,45,'7'),(146,46,'7'),(147,47,'6'),(148,48,'3'),(149,45,'6'),(150,46,'6'),(151,47,'5'),(152,45,'5'),(153,48,'2'),(154,48,'7'),(155,49,'3'),(156,48,'5'),(157,50,'2'),(158,51,'3'),(159,49,'2'),(160,50,'1'),(161,51,'2'),(162,49,'7'),(163,50,'6'),(164,52,'3'),(165,51,'7'),(166,49,'5'),(167,50,'5'),(168,51,'5'),(169,52,'1'),(170,52,'7'),(171,53,'1'),(172,52,'6'),(173,54,'2'),(174,55,'3'),(175,53,'6'),(176,54,'1'),(177,53,'4'),(178,55,'1'),(179,54,'6'),(180,56,'1'),(181,55,'7'),(182,54,'4'),(183,56,'6'),(184,55,'6'),(185,57,'2'),(186,56,'4'),(187,57,'5'),(188,58,'3'),(189,59,'1'),(190,57,'4'),(191,58,'7'),(192,60,'2'),(193,59,'6'),(194,58,'5'),(195,59,'4'),(196,60,'5'),(197,58,'4'),(198,61,'3'),(199,60,'4'),(200,61,'2'),(201,62,'2'),(202,61,'7'),(203,63,'1'),(204,64,'3'),(205,62,'5'),(206,63,'6'),(207,64,'2'),(208,62,'4'),(209,63,'5'),(210,64,'7'),(211,65,'1'),(212,63,'4'),(213,66,'3'),(214,65,'6'),(215,66,'2'),(216,67,'1'),(217,65,'5'),(218,66,'7'),(219,67,'6'),(220,68,'3'),(221,67,'5'),(222,68,'2'),(223,68,'7'),(224,69,'2'),(225,70,'1'),(226,68,'4'),(227,71,'2'),(228,69,'1'),(229,70,'6'),(230,69,'6'),(231,71,'1'),(232,70,'5'),(233,69,'5'),(234,71,'6'),(235,71,'5'),(236,73,'5'),(237,74,'2'),(238,74,'1'),(239,75,'2'),(240,76,'2'),(241,75,'1'),(242,74,'6'),(243,77,'2'),(244,74,'5'),(245,76,'1'),(246,75,'6'),(247,76,'6'),(248,75,'4'),(249,76,'4'),(250,78,'3'),(251,79,'2'),(252,78,'2'),(253,80,'3'),(254,79,'1'),(255,78,'1'),(256,81,'3'),(257,80,'7'),(258,79,'6'),(259,78,'7'),(260,81,'7'),(261,79,'4'),(262,80,'5'),(263,78,'6'),(264,81,'5'),(265,80,'4'),(266,78,'5'),(267,81,'4'),(268,78,'4'),(269,82,'3'),(270,83,'1'),(271,82,'7'),(272,83,'6'),(273,84,'1'),(274,82,'5'),(275,85,'3'),(276,83,'5'),(277,84,'6'),(278,82,'4'),(279,85,'7'),(280,83,'4'),(281,84,'5'),(282,84,'4'),(283,86,'1'),(284,87,'5'),(285,88,'3'),(286,86,'6'),(287,87,'4'),(288,89,'3'),(289,88,'2'),(290,86,'5'),(291,88,'7'),(292,86,'4'),(293,89,'2'),(294,88,'4'),(295,89,'7'),(296,90,'3'),(297,89,'4'),(298,90,'2'),(299,91,'3'),(300,90,'1'),(301,91,'2'),(302,90,'7'),(303,91,'7'),(304,90,'6'),(305,94,'5'),(306,91,'4'),(307,90,'5'),(308,95,'5'),(309,96,'2'),(310,98,'3'),(311,99,'2'),(312,98,'2'),(313,100,'5'),(314,98,'1'),(315,101,'3'),(316,98,'7'),(317,102,'3'),(318,101,'2'),(319,98,'6'),(320,103,'2'),(321,101,'1'),(322,102,'2'),(323,98,'4'),(324,101,'7'),(325,102,'1'),(326,101,'6'),(327,102,'7'),(328,104,'3'),(329,101,'5'),(330,102,'6'),(331,105,'1'),(332,104,'2'),(333,101,'4'),(334,102,'5'),(335,105,'6'),(336,104,'1'),(337,102,'4'),(338,104,'7'),(339,106,'3'),(340,104,'6'),(341,107,'2'),(342,108,'3'),(343,106,'7'),(344,104,'5'),(345,107,'5'),(346,104,'4'),(347,108,'7'),(348,109,'5'),(349,110,'4'),(350,111,'3'),(351,112,'5'),(352,109,'4'),(353,112,'4'),(354,111,'7'),(355,113,'3'),(356,114,'3'),(357,113,'2'),(358,115,'5'),(359,116,'3'),(360,114,'2'),(361,113,'1'),(362,115,'4'),(363,114,'1'),(364,116,'2'),(365,113,'7'),(366,114,'7'),(367,116,'1'),(368,113,'6'),(369,114,'6'),(370,116,'7'),(371,117,'3'),(372,114,'5'),(373,116,'6'),(374,116,'5'),(375,117,'2'),(376,118,'3'),(377,117,'1'),(378,118,'1'),(379,119,'3'),(380,117,'7'),(381,118,'7'),(382,120,'3'),(383,119,'2'),(384,117,'6'),(385,118,'6'),(386,119,'1'),(387,120,'2'),(388,117,'5'),(389,118,'5'),(390,119,'7'),(391,120,'1'),(392,118,'4'),(393,119,'6'),(394,120,'7'),(395,121,'3'),(396,120,'6'),(397,119,'4'),(398,120,'4'),(399,121,'2'),(400,122,'2'),(401,121,'1'),(402,122,'4'),(403,123,'2'),(404,121,'7'),(405,124,'1'),(406,123,'5'),(407,121,'6'),(408,121,'4'),(409,124,'6'),(410,125,'1'),(411,128,'1'),(412,127,'2'),(413,125,'6'),(414,128,'6'),(415,127,'5'),(416,129,'4'),(417,130,'2'),(418,131,'4'),(419,130,'5'),(420,132,'3'),(421,133,'3'),(422,132,'2'),(423,134,'4'),(424,132,'1'),(425,133,'2'),(426,132,'7'),(427,133,'1'),(428,132,'6'),(429,133,'7'),(430,136,'3'),(431,133,'6'),(432,136,'2'),(433,137,'3'),(434,136,'1'),(435,139,'3'),(436,137,'1'),(437,136,'7'),(438,139,'1'),(439,137,'7'),(440,136,'6'),(441,137,'6'),(442,139,'7'),(443,137,'5'),(444,139,'6'),(445,140,'3'),(446,137,'4'),(447,139,'5'),(448,140,'1'),(449,139,'4'),(450,140,'7'),(451,141,'2'),(452,140,'6'),(453,142,'2'),(454,141,'4'),(455,140,'5'),(456,142,'4'),(457,140,'4'),(458,144,'2'),(459,144,'4'),(460,148,'202'),(461,148,'201'),(462,152,'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,3),(7,7,1),(8,8,1),(9,9,2),(10,10,1),(11,11,1),(12,12,3),(13,13,2),(14,14,3),(15,15,3),(16,17,1),(17,16,3),(18,18,3),(19,19,4),(20,20,4),(21,21,4),(22,22,5),(23,23,6),(24,25,6),(25,24,6),(26,26,6),(27,27,4),(28,28,6),(29,29,7),(30,30,7),(31,32,7),(32,31,7),(33,33,7),(34,34,7),(35,35,5),(36,36,5),(37,38,5),(38,37,5),(39,39,5),(40,40,6),(41,41,8),(42,42,8),(43,43,8),(44,44,8),(45,45,5),(46,46,6),(47,47,1),(48,48,11),(49,49,1),(50,50,1),(51,51,5),(52,52,6),(53,53,3),(54,54,4),(55,55,11),(56,56,3),(57,57,5),(58,58,11),(59,59,6),(60,60,3),(61,61,4),(62,62,1),(63,63,5),(64,64,6),(65,65,4),(66,66,11),(67,67,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,9,1),(6,13,1),(7,41,2),(8,42,2),(9,43,2),(10,44,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.accutracking'),(2,3,'com.accutracking'),(3,9,'com.accutracking'),(4,10,'com.accutracking'),(5,11,'com.accutracking'),(6,13,'com.accutracking'),(7,126,'com.accutracking'),(8,143,'com.accutracking'),(9,145,'com.accutracking'),(10,147,'com.accutracking'),(11,150,'com.accutracking'),(12,153,'com.accutracking');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,1,0),(7,2,0),(8,3,0),(9,6,0),(10,4,0),(11,5,0),(12,2,0),(13,1,0),(14,3,0),(15,4,0),(16,5,0),(17,6,0),(18,6,0),(19,13,0),(20,12,0),(21,15,0),(22,14,0),(23,13,0),(24,16,0),(25,12,0),(26,15,0),(27,14,0),(28,18,0),(29,12,0),(30,16,0),(31,13,0),(32,15,0),(33,14,0),(34,18,0),(35,16,0),(36,12,0),(37,15,0),(38,13,0),(39,18,0),(40,14,0),(41,19,0),(42,24,0),(43,23,0),(44,21,0),(45,25,0),(46,26,0),(47,27,0),(48,28,0),(49,29,0),(50,30,0),(51,26,0),(52,25,0),(53,27,0),(54,25,0),(55,25,0),(56,31,0),(57,32,0),(58,32,0),(59,32,0),(60,29,0),(61,32,0),(62,31,0),(63,33,0),(64,34,0),(65,26,0),(66,26,0),(67,35,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,4,1,0),(7,6,1,0),(8,4,1,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,4,1,0),(13,10,0,0),(14,11,1,0),(15,12,1,0),(16,4,1,0),(17,13,1,0),(18,14,1,0),(19,15,1,0),(20,4,1,0),(21,14,1,0),(22,16,1,0),(23,15,1,0),(24,14,1,0),(25,4,1,0),(26,16,1,0),(27,15,1,0),(28,14,1,0),(29,16,1,0),(30,4,1,0),(31,15,1,0),(32,14,1,0),(33,4,1,0),(34,16,1,0),(35,15,1,0),(36,16,1,0),(37,14,1,0),(38,4,1,0),(39,15,1,0),(40,4,1,0),(41,16,1,0),(42,14,1,0),(43,15,1,0),(44,4,1,0),(45,16,1,0),(46,14,1,0),(47,4,1,0),(48,15,1,0),(49,14,1,0),(50,4,1,0),(51,16,1,0),(52,15,1,0),(53,14,1,0),(54,4,1,0),(55,16,1,0),(56,15,1,0),(57,14,1,0),(58,4,1,0),(59,16,1,0),(60,15,1,0),(61,14,1,0),(62,16,1,0),(63,4,1,0),(64,15,1,0),(65,14,1,0),(66,16,1,0),(67,15,1,0),(68,4,1,0),(69,14,1,0),(70,16,1,0),(71,15,1,0),(72,4,1,0),(73,4,1,0),(74,16,1,0),(75,14,1,0),(76,15,1,0),(77,4,1,0),(78,4,1,0),(79,16,1,0),(80,14,1,0),(81,15,1,0),(82,16,1,0),(83,14,1,0),(84,15,1,0),(85,4,1,0),(86,16,1,0),(87,4,1,0),(88,14,1,0),(89,15,1,0),(90,4,1,0),(91,16,1,0),(92,14,1,0),(93,15,1,0),(94,14,1,0),(95,15,1,0),(96,14,1,0),(97,16,1,0),(98,4,1,0),(99,15,1,0),(100,16,1,0),(101,14,1,0),(102,15,1,0),(103,16,1,0),(104,16,1,0),(105,4,1,0),(106,14,1,0),(107,4,1,0),(108,15,1,0),(109,14,1,0),(110,4,1,0),(111,16,1,0),(112,15,1,0),(113,4,1,0),(114,14,1,0),(115,16,1,0),(116,15,1,0),(117,16,1,0),(118,4,1,0),(119,14,1,0),(120,15,1,0),(121,16,1,0),(122,4,1,0),(123,14,1,0),(124,15,1,0),(125,14,1,0),(126,17,0,0),(127,15,1,0),(128,16,1,0),(129,14,1,0),(130,16,1,0),(131,15,1,0),(132,14,1,0),(133,15,1,0),(134,16,1,0),(135,18,1,0),(136,16,1,0),(137,14,1,0),(138,19,1,0),(139,15,1,0),(140,16,1,0),(141,14,1,0),(142,15,1,0),(143,20,0,0),(144,16,1,0),(145,22,0,0),(146,21,1,0),(147,23,0,0),(148,24,1,0),(149,25,1,0),(150,26,0,0),(151,27,1,0),(152,28,1,0),(153,29,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4288 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,7,2,NULL),(2,3,7,2,NULL),(3,3,8,2,NULL),(4,3,9,2,NULL),(5,3,10,2,NULL),(6,3,11,2,NULL),(7,3,17,2,NULL),(8,143,12,2,NULL),(9,143,13,2,NULL),(10,143,14,2,NULL),(11,143,15,2,NULL),(12,143,16,2,NULL),(13,143,18,2,NULL),(14,4,3,2,NULL),(15,6,3,2,NULL),(16,8,3,2,NULL),(17,12,3,2,NULL),(18,16,3,2,NULL),(19,20,3,2,NULL),(20,25,3,2,NULL),(21,30,3,2,NULL),(22,33,3,2,NULL),(23,38,3,2,NULL),(24,40,3,2,NULL),(25,44,3,2,NULL),(26,47,3,2,NULL),(27,50,3,2,NULL),(28,54,3,2,NULL),(29,58,3,2,NULL),(30,63,3,2,NULL),(31,68,3,2,NULL),(32,72,3,2,NULL),(33,73,3,2,NULL),(34,77,3,2,NULL),(35,78,3,2,NULL),(36,85,3,2,NULL),(37,87,3,2,NULL),(38,90,3,2,NULL),(39,98,3,2,NULL),(40,105,3,2,NULL),(41,107,3,2,NULL),(42,110,3,2,NULL),(43,113,3,2,NULL),(44,118,3,2,NULL),(45,122,3,2,NULL),(46,135,13,2,NULL),(47,148,3,2,NULL),(48,135,21,2,NULL),(49,135,21,2,NULL),(50,135,31,2,NULL),(51,135,32,2,NULL),(52,22,3,2,NULL),(53,26,3,2,NULL),(54,29,3,2,NULL),(55,34,3,2,NULL),(56,36,3,2,NULL),(57,41,3,2,NULL),(58,45,3,2,NULL),(59,51,3,2,NULL),(60,55,3,2,NULL),(61,59,3,2,NULL),(62,62,3,2,NULL),(63,66,3,2,NULL),(64,70,3,2,NULL),(65,74,3,2,NULL),(66,79,3,2,NULL),(67,82,3,2,NULL),(68,86,3,2,NULL),(69,91,3,2,NULL),(70,97,3,2,NULL),(71,100,3,2,NULL),(72,103,3,2,NULL),(73,104,3,2,NULL),(74,111,3,2,NULL),(75,115,3,2,NULL),(76,117,3,2,NULL),(77,121,3,2,NULL),(78,128,3,2,NULL),(79,130,3,2,NULL),(80,134,3,2,NULL),(81,136,3,2,NULL),(82,140,3,2,NULL),(83,144,3,2,NULL),(84,135,12,2,NULL),(85,17,3,2,NULL),(86,135,19,2,NULL),(87,135,25,2,NULL),(88,135,29,2,NULL),(89,18,3,2,NULL),(90,21,3,2,NULL),(91,24,3,2,NULL),(92,28,3,2,NULL),(93,32,3,2,NULL),(94,37,3,2,NULL),(95,42,3,2,NULL),(96,46,3,2,NULL),(97,49,3,2,NULL),(98,53,3,2,NULL),(99,57,3,2,NULL),(100,61,3,2,NULL),(101,65,3,2,NULL),(102,69,3,2,NULL),(103,75,3,2,NULL),(104,80,3,2,NULL),(105,83,3,2,NULL),(106,88,3,2,NULL),(107,92,3,2,NULL),(108,94,3,2,NULL),(109,96,3,2,NULL),(110,101,3,2,NULL),(111,106,3,2,NULL),(112,109,3,2,NULL),(113,114,3,2,NULL),(114,119,3,2,NULL),(115,123,3,2,NULL),(116,125,3,2,NULL),(117,129,3,2,NULL),(118,132,3,2,NULL),(119,137,3,2,NULL),(120,141,3,2,NULL),(121,135,14,2,NULL),(122,7,3,2,NULL),(123,135,24,2,NULL),(124,135,26,2,NULL),(125,135,27,2,NULL),(126,135,16,2,NULL),(127,135,15,2,NULL),(128,19,3,2,NULL),(129,23,3,2,NULL),(130,27,3,2,NULL),(131,31,3,2,NULL),(132,35,3,2,NULL),(133,39,3,2,NULL),(134,43,3,2,NULL),(135,48,3,2,NULL),(136,52,3,2,NULL),(137,56,3,2,NULL),(138,60,3,2,NULL),(139,64,3,2,NULL),(140,67,3,2,NULL),(141,71,3,2,NULL),(142,76,3,2,NULL),(143,81,3,2,NULL),(144,84,3,2,NULL),(145,89,3,2,NULL),(146,93,3,2,NULL),(147,95,3,2,NULL),(148,99,3,2,NULL),(149,102,3,2,NULL),(150,108,3,2,NULL),(151,112,3,2,NULL),(152,116,3,2,NULL),(153,120,3,2,NULL),(154,124,3,2,NULL),(155,127,3,2,NULL),(156,131,3,2,NULL),(157,133,3,2,NULL),(158,139,3,2,NULL),(159,142,3,2,NULL),(160,135,18,2,NULL),(161,14,3,2,NULL),(162,152,3,2,NULL),(163,135,23,2,NULL),(164,135,28,2,NULL),(165,135,30,2,NULL),(166,135,33,2,NULL),(167,135,34,2,NULL),(168,135,35,2,NULL),(169,4,13,2,NULL),(170,6,13,2,NULL),(171,8,13,2,NULL),(172,12,13,2,NULL),(173,16,13,2,NULL),(174,20,13,2,NULL),(175,25,13,2,NULL),(176,30,13,2,NULL),(177,33,13,2,NULL),(178,38,13,2,NULL),(179,40,13,2,NULL),(180,44,13,2,NULL),(181,47,13,2,NULL),(182,50,13,2,NULL),(183,54,13,2,NULL),(184,58,13,2,NULL),(185,63,13,2,NULL),(186,68,13,2,NULL),(187,72,13,2,NULL),(188,73,13,2,NULL),(189,77,13,2,NULL),(190,78,13,2,NULL),(191,85,13,2,NULL),(192,87,13,2,NULL),(193,90,13,2,NULL),(194,98,13,2,NULL),(195,105,13,2,NULL),(196,107,13,2,NULL),(197,110,13,2,NULL),(198,113,13,2,NULL),(199,118,13,2,NULL),(200,122,13,2,NULL),(201,4,21,2,NULL),(202,6,21,2,NULL),(203,8,21,2,NULL),(204,12,21,2,NULL),(205,16,21,2,NULL),(206,20,21,2,NULL),(207,25,21,2,NULL),(208,30,21,2,NULL),(209,33,21,2,NULL),(210,38,21,2,NULL),(211,40,21,2,NULL),(212,44,21,2,NULL),(213,47,21,2,NULL),(214,50,21,2,NULL),(215,54,21,2,NULL),(216,58,21,2,NULL),(217,63,21,2,NULL),(218,68,21,2,NULL),(219,72,21,2,NULL),(220,73,21,2,NULL),(221,77,21,2,NULL),(222,78,21,2,NULL),(223,85,21,2,NULL),(224,87,21,2,NULL),(225,90,21,2,NULL),(226,98,21,2,NULL),(227,105,21,2,NULL),(228,107,21,2,NULL),(229,110,21,2,NULL),(230,113,21,2,NULL),(231,118,21,2,NULL),(232,122,21,2,NULL),(233,4,31,2,NULL),(234,6,31,2,NULL),(235,8,31,2,NULL),(236,12,31,2,NULL),(237,16,31,2,NULL),(238,20,31,2,NULL),(239,25,31,2,NULL),(240,30,31,2,NULL),(241,33,31,2,NULL),(242,38,31,2,NULL),(243,40,31,2,NULL),(244,44,31,2,NULL),(245,47,31,2,NULL),(246,50,31,2,NULL),(247,54,31,2,NULL),(248,58,31,2,NULL),(249,63,31,2,NULL),(250,68,31,2,NULL),(251,72,31,2,NULL),(252,73,31,2,NULL),(253,77,31,2,NULL),(254,78,31,2,NULL),(255,85,31,2,NULL),(256,87,31,2,NULL),(257,90,31,2,NULL),(258,98,31,2,NULL),(259,105,31,2,NULL),(260,107,31,2,NULL),(261,110,31,2,NULL),(262,113,31,2,NULL),(263,118,31,2,NULL),(264,122,31,2,NULL),(265,4,32,2,NULL),(266,6,32,2,NULL),(267,8,32,2,NULL),(268,12,32,2,NULL),(269,16,32,2,NULL),(270,20,32,2,NULL),(271,25,32,2,NULL),(272,30,32,2,NULL),(273,33,32,2,NULL),(274,38,32,2,NULL),(275,40,32,2,NULL),(276,44,32,2,NULL),(277,47,32,2,NULL),(278,50,32,2,NULL),(279,54,32,2,NULL),(280,58,32,2,NULL),(281,63,32,2,NULL),(282,68,32,2,NULL),(283,68,32,2,NULL),(284,72,32,2,NULL),(285,72,32,2,NULL),(286,73,32,2,NULL),(287,77,32,2,NULL),(288,78,32,2,NULL),(289,78,32,2,NULL),(290,85,32,2,NULL),(291,87,32,2,NULL),(292,90,32,2,NULL),(293,90,32,2,NULL),(294,98,32,2,NULL),(295,105,32,2,NULL),(296,107,32,2,NULL),(297,107,32,2,NULL),(298,110,32,2,NULL),(299,113,32,2,NULL),(300,118,32,2,NULL),(301,122,32,2,NULL),(302,4,2,2,NULL),(303,6,2,2,NULL),(304,8,2,2,NULL),(305,12,2,2,NULL),(306,16,2,2,NULL),(307,20,2,2,NULL),(308,25,2,2,NULL),(309,25,2,2,NULL),(310,30,2,2,NULL),(311,30,2,2,NULL),(312,33,2,2,NULL),(313,38,2,2,NULL),(314,40,2,2,NULL),(315,40,2,2,NULL),(316,44,2,2,NULL),(317,44,2,2,NULL),(318,47,2,2,NULL),(319,50,2,2,NULL),(320,54,2,2,NULL),(321,58,2,2,NULL),(322,63,2,2,NULL),(323,68,2,2,NULL),(324,72,2,2,NULL),(325,73,2,2,NULL),(326,77,2,2,NULL),(327,78,2,2,NULL),(328,85,2,2,NULL),(329,85,2,2,NULL),(330,87,2,2,NULL),(331,90,2,2,NULL),(332,98,2,2,NULL),(333,98,2,2,NULL),(334,105,2,2,NULL),(335,105,2,2,NULL),(336,107,2,2,NULL),(337,107,2,2,NULL),(338,110,2,2,NULL),(339,113,2,2,NULL),(340,118,2,2,NULL),(341,118,2,2,NULL),(342,122,2,2,NULL),(343,122,2,2,NULL),(344,4,12,2,NULL),(345,6,12,2,NULL),(346,8,12,2,NULL),(347,12,12,2,NULL),(348,16,12,2,NULL),(349,16,12,2,NULL),(350,20,12,2,NULL),(351,25,12,2,NULL),(352,30,12,2,NULL),(353,33,12,2,NULL),(354,38,12,2,NULL),(355,40,12,2,NULL),(356,44,12,2,NULL),(357,47,12,2,NULL),(358,50,12,2,NULL),(359,50,12,2,NULL),(360,54,12,2,NULL),(361,54,12,2,NULL),(362,58,12,2,NULL),(363,58,12,2,NULL),(364,63,12,2,NULL),(365,63,12,2,NULL),(366,68,12,2,NULL),(367,68,12,2,NULL),(368,72,12,2,NULL),(369,72,12,2,NULL),(370,73,12,2,NULL),(371,73,12,2,NULL),(372,77,12,2,NULL),(373,77,12,2,NULL),(374,78,12,2,NULL),(375,85,12,2,NULL),(376,87,12,2,NULL),(377,90,12,2,NULL),(378,98,12,2,NULL),(379,105,12,2,NULL),(380,107,12,2,NULL),(381,110,12,2,NULL),(382,113,12,2,NULL),(383,118,12,2,NULL),(384,122,12,2,NULL),(385,4,19,2,NULL),(386,6,19,2,NULL),(387,8,19,2,NULL),(388,12,19,2,NULL),(389,16,19,2,NULL),(390,20,19,2,NULL),(391,20,19,2,NULL),(392,25,19,2,NULL),(393,25,19,2,NULL),(394,30,19,2,NULL),(395,30,19,2,NULL),(396,33,19,2,NULL),(397,38,19,2,NULL),(398,40,19,2,NULL),(399,44,19,2,NULL),(400,47,19,2,NULL),(401,50,19,2,NULL),(402,54,19,2,NULL),(403,58,19,2,NULL),(404,63,19,2,NULL),(405,68,19,2,NULL),(406,72,19,2,NULL),(407,73,19,2,NULL),(408,77,19,2,NULL),(409,78,19,2,NULL),(410,85,19,2,NULL),(411,87,19,2,NULL),(412,90,19,2,NULL),(413,98,19,2,NULL),(414,105,19,2,NULL),(415,107,19,2,NULL),(416,110,19,2,NULL),(417,113,19,2,NULL),(418,118,19,2,NULL),(419,122,19,2,NULL),(420,4,25,2,NULL),(421,6,25,2,NULL),(422,8,25,2,NULL),(423,12,25,2,NULL),(424,16,25,2,NULL),(425,20,25,2,NULL),(426,25,25,2,NULL),(427,30,25,2,NULL),(428,33,25,2,NULL),(429,38,25,2,NULL),(430,40,25,2,NULL),(431,44,25,2,NULL),(432,47,25,2,NULL),(433,50,25,2,NULL),(434,54,25,2,NULL),(435,58,25,2,NULL),(436,63,25,2,NULL),(437,68,25,2,NULL),(438,72,25,2,NULL),(439,73,25,2,NULL),(440,77,25,2,NULL),(441,78,25,2,NULL),(442,85,25,2,NULL),(443,87,25,2,NULL),(444,90,25,2,NULL),(445,98,25,2,NULL),(446,105,25,2,NULL),(447,107,25,2,NULL),(448,110,25,2,NULL),(449,113,25,2,NULL),(450,118,25,2,NULL),(451,122,25,2,NULL),(452,4,29,2,NULL),(453,6,29,2,NULL),(454,8,29,2,NULL),(455,12,29,2,NULL),(456,16,29,2,NULL),(457,20,29,2,NULL),(458,25,29,2,NULL),(459,30,29,2,NULL),(460,33,29,2,NULL),(461,38,29,2,NULL),(462,40,29,2,NULL),(463,44,29,2,NULL),(464,47,29,2,NULL),(465,50,29,2,NULL),(466,54,29,2,NULL),(467,58,29,2,NULL),(468,63,29,2,NULL),(469,68,29,2,NULL),(470,72,29,2,NULL),(471,73,29,2,NULL),(472,77,29,2,NULL),(473,78,29,2,NULL),(474,85,29,2,NULL),(475,87,29,2,NULL),(476,90,29,2,NULL),(477,98,29,2,NULL),(478,105,29,2,NULL),(479,107,29,2,NULL),(480,110,29,2,NULL),(481,113,29,2,NULL),(482,118,29,2,NULL),(483,122,29,2,NULL),(484,4,1,2,NULL),(485,6,1,2,NULL),(486,8,1,2,NULL),(487,12,1,2,NULL),(488,16,1,2,NULL),(489,20,1,2,NULL),(490,25,1,2,NULL),(491,30,1,2,NULL),(492,33,1,2,NULL),(493,38,1,2,NULL),(494,40,1,2,NULL),(495,44,1,2,NULL),(496,47,1,2,NULL),(497,50,1,2,NULL),(498,54,1,2,NULL),(499,58,1,2,NULL),(500,63,1,2,NULL),(501,68,1,2,NULL),(502,72,1,2,NULL),(503,73,1,2,NULL),(504,77,1,2,NULL),(505,78,1,2,NULL),(506,85,1,2,NULL),(507,87,1,2,NULL),(508,90,1,2,NULL),(509,98,1,2,NULL),(510,105,1,2,NULL),(511,107,1,2,NULL),(512,110,1,2,NULL),(513,113,1,2,NULL),(514,118,1,2,NULL),(515,122,1,2,NULL),(516,4,14,2,NULL),(517,6,14,2,NULL),(518,8,14,2,NULL),(519,12,14,2,NULL),(520,16,14,2,NULL),(521,20,14,2,NULL),(522,25,14,2,NULL),(523,30,14,2,NULL),(524,33,14,2,NULL),(525,38,14,2,NULL),(526,40,14,2,NULL),(527,44,14,2,NULL),(528,47,14,2,NULL),(529,50,14,2,NULL),(530,54,14,2,NULL),(531,58,14,2,NULL),(532,63,14,2,NULL),(533,68,14,2,NULL),(534,72,14,2,NULL),(535,73,14,2,NULL),(536,77,14,2,NULL),(537,78,14,2,NULL),(538,85,14,2,NULL),(539,87,14,2,NULL),(540,90,14,2,NULL),(541,98,14,2,NULL),(542,105,14,2,NULL),(543,107,14,2,NULL),(544,110,14,2,NULL),(545,113,14,2,NULL),(546,118,14,2,NULL),(547,122,14,2,NULL),(548,4,24,2,NULL),(549,6,24,2,NULL),(550,8,24,2,NULL),(551,12,24,2,NULL),(552,16,24,2,NULL),(553,20,24,2,NULL),(554,25,24,2,NULL),(555,30,24,2,NULL),(556,30,24,2,NULL),(557,33,24,2,NULL),(558,38,24,2,NULL),(559,40,24,2,NULL),(560,40,24,2,NULL),(561,44,24,2,NULL),(562,47,24,2,NULL),(563,50,24,2,NULL),(564,54,24,2,NULL),(565,58,24,2,NULL),(566,58,24,2,NULL),(567,63,24,2,NULL),(568,68,24,2,NULL),(569,72,24,2,NULL),(570,73,24,2,NULL),(571,77,24,2,NULL),(572,78,24,2,NULL),(573,85,24,2,NULL),(574,87,24,2,NULL),(575,90,24,2,NULL),(576,98,24,2,NULL),(577,105,24,2,NULL),(578,107,24,2,NULL),(579,110,24,2,NULL),(580,113,24,2,NULL),(581,118,24,2,NULL),(582,122,24,2,NULL),(583,4,26,2,NULL),(584,6,26,2,NULL),(585,8,26,2,NULL),(586,12,26,2,NULL),(587,16,26,2,NULL),(588,20,26,2,NULL),(589,25,26,2,NULL),(590,30,26,2,NULL),(591,33,26,2,NULL),(592,38,26,2,NULL),(593,40,26,2,NULL),(594,44,26,2,NULL),(595,47,26,2,NULL),(596,50,26,2,NULL),(597,54,26,2,NULL),(598,58,26,2,NULL),(599,63,26,2,NULL),(600,68,26,2,NULL),(601,72,26,2,NULL),(602,73,26,2,NULL),(603,77,26,2,NULL),(604,78,26,2,NULL),(605,85,26,2,NULL),(606,87,26,2,NULL),(607,90,26,2,NULL),(608,98,26,2,NULL),(609,105,26,2,NULL),(610,107,26,2,NULL),(611,110,26,2,NULL),(612,113,26,2,NULL),(613,118,26,2,NULL),(614,122,26,2,NULL),(615,4,27,2,NULL),(616,6,27,2,NULL),(617,8,27,2,NULL),(618,12,27,2,NULL),(619,16,27,2,NULL),(620,20,27,2,NULL),(621,25,27,2,NULL),(622,30,27,2,NULL),(623,33,27,2,NULL),(624,38,27,2,NULL),(625,40,27,2,NULL),(626,44,27,2,NULL),(627,47,27,2,NULL),(628,50,27,2,NULL),(629,54,27,2,NULL),(630,58,27,2,NULL),(631,63,27,2,NULL),(632,68,27,2,NULL),(633,72,27,2,NULL),(634,73,27,2,NULL),(635,77,27,2,NULL),(636,78,27,2,NULL),(637,85,27,2,NULL),(638,87,27,2,NULL),(639,90,27,2,NULL),(640,98,27,2,NULL),(641,105,27,2,NULL),(642,107,27,2,NULL),(643,110,27,2,NULL),(644,113,27,2,NULL),(645,118,27,2,NULL),(646,122,27,2,NULL),(647,4,5,2,NULL),(648,6,5,2,NULL),(649,8,5,2,NULL),(650,12,5,2,NULL),(651,16,5,2,NULL),(652,20,5,2,NULL),(653,25,5,2,NULL),(654,30,5,2,NULL),(655,33,5,2,NULL),(656,38,5,2,NULL),(657,40,5,2,NULL),(658,44,5,2,NULL),(659,47,5,2,NULL),(660,50,5,2,NULL),(661,54,5,2,NULL),(662,58,5,2,NULL),(663,63,5,2,NULL),(664,68,5,2,NULL),(665,72,5,2,NULL),(666,73,5,2,NULL),(667,77,5,2,NULL),(668,78,5,2,NULL),(669,85,5,2,NULL),(670,87,5,2,NULL),(671,90,5,2,NULL),(672,98,5,2,NULL),(673,105,5,2,NULL),(674,107,5,2,NULL),(675,110,5,2,NULL),(676,113,5,2,NULL),(677,118,5,2,NULL),(678,122,5,2,NULL),(679,4,16,2,NULL),(680,6,16,2,NULL),(681,8,16,2,NULL),(682,12,16,2,NULL),(683,16,16,2,NULL),(684,20,16,2,NULL),(685,25,16,2,NULL),(686,30,16,2,NULL),(687,33,16,2,NULL),(688,38,16,2,NULL),(689,40,16,2,NULL),(690,44,16,2,NULL),(691,47,16,2,NULL),(692,50,16,2,NULL),(693,54,16,2,NULL),(694,58,16,2,NULL),(695,63,16,2,NULL),(696,68,16,2,NULL),(697,72,16,2,NULL),(698,73,16,2,NULL),(699,77,16,2,NULL),(700,78,16,2,NULL),(701,85,16,2,NULL),(702,87,16,2,NULL),(703,90,16,2,NULL),(704,98,16,2,NULL),(705,105,16,2,NULL),(706,107,16,2,NULL),(707,110,16,2,NULL),(708,113,16,2,NULL),(709,118,16,2,NULL),(710,122,16,2,NULL),(711,4,4,2,NULL),(712,6,4,2,NULL),(713,8,4,2,NULL),(714,12,4,2,NULL),(715,16,4,2,NULL),(716,20,4,2,NULL),(717,25,4,2,NULL),(718,30,4,2,NULL),(719,33,4,2,NULL),(720,38,4,2,NULL),(721,40,4,2,NULL),(722,44,4,2,NULL),(723,47,4,2,NULL),(724,50,4,2,NULL),(725,54,4,2,NULL),(726,58,4,2,NULL),(727,63,4,2,NULL),(728,68,4,2,NULL),(729,72,4,2,NULL),(730,73,4,2,NULL),(731,77,4,2,NULL),(732,78,4,2,NULL),(733,85,4,2,NULL),(734,87,4,2,NULL),(735,90,4,2,NULL),(736,98,4,2,NULL),(737,105,4,2,NULL),(738,107,4,2,NULL),(739,107,4,2,NULL),(740,110,4,2,NULL),(741,113,4,2,NULL),(742,118,4,2,NULL),(743,122,4,2,NULL),(744,4,15,2,NULL),(745,6,15,2,NULL),(746,8,15,2,NULL),(747,12,15,2,NULL),(748,16,15,2,NULL),(749,20,15,2,NULL),(750,25,15,2,NULL),(751,30,15,2,NULL),(752,33,15,2,NULL),(753,33,15,2,NULL),(754,38,15,2,NULL),(755,38,15,2,NULL),(756,40,15,2,NULL),(757,44,15,2,NULL),(758,47,15,2,NULL),(759,47,15,2,NULL),(760,50,15,2,NULL),(761,54,15,2,NULL),(762,58,15,2,NULL),(763,63,15,2,NULL),(764,68,15,2,NULL),(765,72,15,2,NULL),(766,73,15,2,NULL),(767,77,15,2,NULL),(768,78,15,2,NULL),(769,85,15,2,NULL),(770,87,15,2,NULL),(771,90,15,2,NULL),(772,98,15,2,NULL),(773,105,15,2,NULL),(774,107,15,2,NULL),(775,110,15,2,NULL),(776,113,15,2,NULL),(777,118,15,2,NULL),(778,122,15,2,NULL),(779,4,6,2,NULL),(780,6,6,2,NULL),(781,8,6,2,NULL),(782,12,6,2,NULL),(783,16,6,2,NULL),(784,20,6,2,NULL),(785,25,6,2,NULL),(786,30,6,2,NULL),(787,33,6,2,NULL),(788,38,6,2,NULL),(789,40,6,2,NULL),(790,44,6,2,NULL),(791,47,6,2,NULL),(792,50,6,2,NULL),(793,54,6,2,NULL),(794,58,6,2,NULL),(795,63,6,2,NULL),(796,68,6,2,NULL),(797,72,6,2,NULL),(798,73,6,2,NULL),(799,77,6,2,NULL),(800,78,6,2,NULL),(801,85,6,2,NULL),(802,87,6,2,NULL),(803,90,6,2,NULL),(804,98,6,2,NULL),(805,105,6,2,NULL),(806,107,6,2,NULL),(807,110,6,2,NULL),(808,113,6,2,NULL),(809,118,6,2,NULL),(810,122,6,2,NULL),(811,4,18,2,NULL),(812,6,18,2,NULL),(813,8,18,2,NULL),(814,12,18,2,NULL),(815,16,18,2,NULL),(816,20,18,2,NULL),(817,25,18,2,NULL),(818,30,18,2,NULL),(819,33,18,2,NULL),(820,38,18,2,NULL),(821,40,18,2,NULL),(822,44,18,2,NULL),(823,47,18,2,NULL),(824,50,18,2,NULL),(825,54,18,2,NULL),(826,58,18,2,NULL),(827,63,18,2,NULL),(828,68,18,2,NULL),(829,72,18,2,NULL),(830,73,18,2,NULL),(831,77,18,2,NULL),(832,78,18,2,NULL),(833,85,18,2,NULL),(834,87,18,2,NULL),(835,90,18,2,NULL),(836,98,18,2,NULL),(837,105,18,2,NULL),(838,107,18,2,NULL),(839,110,18,2,NULL),(840,113,18,2,NULL),(841,118,18,2,NULL),(842,122,18,2,NULL),(843,4,23,2,NULL),(844,6,23,2,NULL),(845,8,23,2,NULL),(846,12,23,2,NULL),(847,16,23,2,NULL),(848,20,23,2,NULL),(849,25,23,2,NULL),(850,30,23,2,NULL),(851,33,23,2,NULL),(852,38,23,2,NULL),(853,40,23,2,NULL),(854,44,23,2,NULL),(855,47,23,2,NULL),(856,50,23,2,NULL),(857,54,23,2,NULL),(858,58,23,2,NULL),(859,63,23,2,NULL),(860,68,23,2,NULL),(861,72,23,2,NULL),(862,73,23,2,NULL),(863,77,23,2,NULL),(864,78,23,2,NULL),(865,85,23,2,NULL),(866,87,23,2,NULL),(867,90,23,2,NULL),(868,98,23,2,NULL),(869,105,23,2,NULL),(870,107,23,2,NULL),(871,110,23,2,NULL),(872,113,23,2,NULL),(873,118,23,2,NULL),(874,122,23,2,NULL),(875,4,28,2,NULL),(876,6,28,2,NULL),(877,8,28,2,NULL),(878,12,28,2,NULL),(879,16,28,2,NULL),(880,20,28,2,NULL),(881,25,28,2,NULL),(882,30,28,2,NULL),(883,33,28,2,NULL),(884,38,28,2,NULL),(885,40,28,2,NULL),(886,44,28,2,NULL),(887,47,28,2,NULL),(888,50,28,2,NULL),(889,54,28,2,NULL),(890,58,28,2,NULL),(891,63,28,2,NULL),(892,68,28,2,NULL),(893,72,28,2,NULL),(894,73,28,2,NULL),(895,77,28,2,NULL),(896,78,28,2,NULL),(897,85,28,2,NULL),(898,87,28,2,NULL),(899,90,28,2,NULL),(900,98,28,2,NULL),(901,105,28,2,NULL),(902,107,28,2,NULL),(903,110,28,2,NULL),(904,113,28,2,NULL),(905,118,28,2,NULL),(906,122,28,2,NULL),(907,4,30,2,NULL),(908,6,30,2,NULL),(909,8,30,2,NULL),(910,12,30,2,NULL),(911,16,30,2,NULL),(912,20,30,2,NULL),(913,25,30,2,NULL),(914,30,30,2,NULL),(915,33,30,2,NULL),(916,38,30,2,NULL),(917,40,30,2,NULL),(918,44,30,2,NULL),(919,47,30,2,NULL),(920,50,30,2,NULL),(921,54,30,2,NULL),(922,58,30,2,NULL),(923,63,30,2,NULL),(924,68,30,2,NULL),(925,72,30,2,NULL),(926,73,30,2,NULL),(927,77,30,2,NULL),(928,78,30,2,NULL),(929,85,30,2,NULL),(930,87,30,2,NULL),(931,90,30,2,NULL),(932,98,30,2,NULL),(933,105,30,2,NULL),(934,107,30,2,NULL),(935,110,30,2,NULL),(936,113,30,2,NULL),(937,118,30,2,NULL),(938,122,30,2,NULL),(939,4,33,2,NULL),(940,6,33,2,NULL),(941,8,33,2,NULL),(942,12,33,2,NULL),(943,16,33,2,NULL),(944,20,33,2,NULL),(945,25,33,2,NULL),(946,30,33,2,NULL),(947,33,33,2,NULL),(948,38,33,2,NULL),(949,40,33,2,NULL),(950,44,33,2,NULL),(951,47,33,2,NULL),(952,50,33,2,NULL),(953,54,33,2,NULL),(954,58,33,2,NULL),(955,63,33,2,NULL),(956,68,33,2,NULL),(957,72,33,2,NULL),(958,73,33,2,NULL),(959,77,33,2,NULL),(960,78,33,2,NULL),(961,85,33,2,NULL),(962,87,33,2,NULL),(963,90,33,2,NULL),(964,98,33,2,NULL),(965,105,33,2,NULL),(966,107,33,2,NULL),(967,110,33,2,NULL),(968,113,33,2,NULL),(969,118,33,2,NULL),(970,122,33,2,NULL),(971,4,34,2,NULL),(972,6,34,2,NULL),(973,8,34,2,NULL),(974,12,34,2,NULL),(975,16,34,2,NULL),(976,20,34,2,NULL),(977,25,34,2,NULL),(978,30,34,2,NULL),(979,33,34,2,NULL),(980,38,34,2,NULL),(981,40,34,2,NULL),(982,44,34,2,NULL),(983,47,34,2,NULL),(984,50,34,2,NULL),(985,54,34,2,NULL),(986,58,34,2,NULL),(987,63,34,2,NULL),(988,68,34,2,NULL),(989,72,34,2,NULL),(990,73,34,2,NULL),(991,77,34,2,NULL),(992,78,34,2,NULL),(993,85,34,2,NULL),(994,87,34,2,NULL),(995,90,34,2,NULL),(996,90,34,2,NULL),(997,98,34,2,NULL),(998,98,34,2,NULL),(999,105,34,2,NULL),(1000,105,34,2,NULL),(1001,107,34,2,NULL),(1002,107,34,2,NULL),(1003,110,34,2,NULL),(1004,110,34,2,NULL),(1005,113,34,2,NULL),(1006,113,34,2,NULL),(1007,118,34,2,NULL),(1008,118,34,2,NULL),(1009,122,34,2,NULL),(1010,4,35,2,NULL),(1011,6,35,2,NULL),(1012,6,35,2,NULL),(1013,8,35,2,NULL),(1014,8,35,2,NULL),(1015,12,35,2,NULL),(1016,12,35,2,NULL),(1017,16,35,2,NULL),(1018,16,35,2,NULL),(1019,20,35,2,NULL),(1020,20,35,2,NULL),(1021,25,35,2,NULL),(1022,25,35,2,NULL),(1023,30,35,2,NULL),(1024,33,35,2,NULL),(1025,38,35,2,NULL),(1026,40,35,2,NULL),(1027,44,35,2,NULL),(1028,44,35,2,NULL),(1029,47,35,2,NULL),(1030,50,35,2,NULL),(1031,54,35,2,NULL),(1032,58,35,2,NULL),(1033,63,35,2,NULL),(1034,63,35,2,NULL),(1035,68,35,2,NULL),(1036,68,35,2,NULL),(1037,72,35,2,NULL),(1038,73,35,2,NULL),(1039,77,35,2,NULL),(1040,78,35,2,NULL),(1041,85,35,2,NULL),(1042,87,35,2,NULL),(1043,90,35,2,NULL),(1044,98,35,2,NULL),(1045,105,35,2,NULL),(1046,105,35,2,NULL),(1047,107,35,2,NULL),(1048,107,35,2,NULL),(1049,110,35,2,NULL),(1050,113,35,2,NULL),(1051,118,35,2,NULL),(1052,122,35,2,NULL),(1053,148,21,2,NULL),(1054,148,21,2,NULL),(1055,148,31,2,NULL),(1056,148,31,2,NULL),(1057,148,32,2,NULL),(1058,148,32,2,NULL),(1059,148,2,2,NULL),(1060,148,2,2,NULL),(1061,5,13,2,NULL),(1062,5,13,2,NULL),(1063,22,13,2,NULL),(1064,22,13,2,NULL),(1065,26,13,2,NULL),(1066,26,13,2,NULL),(1067,29,13,2,NULL),(1068,29,13,2,NULL),(1069,34,13,2,NULL),(1070,34,13,2,NULL),(1071,36,13,2,NULL),(1072,36,13,2,NULL),(1073,41,13,2,NULL),(1074,41,13,2,NULL),(1075,45,13,2,NULL),(1076,45,13,2,NULL),(1077,51,13,2,NULL),(1078,51,13,2,NULL),(1079,55,13,2,NULL),(1080,55,13,2,NULL),(1081,59,13,2,NULL),(1082,59,13,2,NULL),(1083,62,13,2,NULL),(1084,62,13,2,NULL),(1085,66,13,2,NULL),(1086,66,13,2,NULL),(1087,70,13,2,NULL),(1088,70,13,2,NULL),(1089,74,13,2,NULL),(1090,74,13,2,NULL),(1091,79,13,2,NULL),(1092,79,13,2,NULL),(1093,82,13,2,NULL),(1094,82,13,2,NULL),(1095,86,13,2,NULL),(1096,86,13,2,NULL),(1097,91,13,2,NULL),(1098,91,13,2,NULL),(1099,97,13,2,NULL),(1100,97,13,2,NULL),(1101,100,13,2,NULL),(1102,100,13,2,NULL),(1103,103,13,2,NULL),(1104,103,13,2,NULL),(1105,104,13,2,NULL),(1106,104,13,2,NULL),(1107,111,13,2,NULL),(1108,111,13,2,NULL),(1109,115,13,2,NULL),(1110,115,13,2,NULL),(1111,117,13,2,NULL),(1112,117,13,2,NULL),(1113,121,13,2,NULL),(1114,121,13,2,NULL),(1115,128,13,2,NULL),(1116,128,13,2,NULL),(1117,130,13,2,NULL),(1118,130,13,2,NULL),(1119,134,13,2,NULL),(1120,134,13,2,NULL),(1121,136,13,2,NULL),(1122,136,13,2,NULL),(1123,140,13,2,NULL),(1124,140,13,2,NULL),(1125,144,13,2,NULL),(1126,144,13,2,NULL),(1127,148,19,2,NULL),(1128,148,19,2,NULL),(1129,148,25,2,NULL),(1130,148,25,2,NULL),(1131,148,29,2,NULL),(1132,148,29,2,NULL),(1133,148,1,2,NULL),(1134,148,1,2,NULL),(1135,15,13,2,NULL),(1136,15,13,2,NULL),(1137,18,13,2,NULL),(1138,18,13,2,NULL),(1139,21,13,2,NULL),(1140,24,13,2,NULL),(1141,28,13,2,NULL),(1142,28,13,2,NULL),(1143,32,13,2,NULL),(1144,32,13,2,NULL),(1145,37,13,2,NULL),(1146,37,13,2,NULL),(1147,42,13,2,NULL),(1148,42,13,2,NULL),(1149,46,13,2,NULL),(1150,46,13,2,NULL),(1151,49,13,2,NULL),(1152,53,13,2,NULL),(1153,57,13,2,NULL),(1154,57,13,2,NULL),(1155,61,13,2,NULL),(1156,61,13,2,NULL),(1157,65,13,2,NULL),(1158,65,13,2,NULL),(1159,69,13,2,NULL),(1160,69,13,2,NULL),(1161,75,13,2,NULL),(1162,75,13,2,NULL),(1163,80,13,2,NULL),(1164,80,13,2,NULL),(1165,83,13,2,NULL),(1166,83,13,2,NULL),(1167,88,13,2,NULL),(1168,88,13,2,NULL),(1169,92,13,2,NULL),(1170,92,13,2,NULL),(1171,94,13,2,NULL),(1172,94,13,2,NULL),(1173,96,13,2,NULL),(1174,96,13,2,NULL),(1175,101,13,2,NULL),(1176,101,13,2,NULL),(1177,106,13,2,NULL),(1178,106,13,2,NULL),(1179,109,13,2,NULL),(1180,109,13,2,NULL),(1181,114,13,2,NULL),(1182,114,13,2,NULL),(1183,119,13,2,NULL),(1184,119,13,2,NULL),(1185,123,13,2,NULL),(1186,123,13,2,NULL),(1187,125,13,2,NULL),(1188,125,13,2,NULL),(1189,129,13,2,NULL),(1190,129,13,2,NULL),(1191,132,13,2,NULL),(1192,132,13,2,NULL),(1193,137,13,2,NULL),(1194,137,13,2,NULL),(1195,141,13,2,NULL),(1196,141,13,2,NULL),(1197,148,24,2,NULL),(1198,148,24,2,NULL),(1199,148,26,2,NULL),(1200,148,26,2,NULL),(1201,148,27,2,NULL),(1202,148,27,2,NULL),(1203,148,5,2,NULL),(1204,148,5,2,NULL),(1205,148,4,2,NULL),(1206,148,4,2,NULL),(1207,148,6,2,NULL),(1208,148,6,2,NULL),(1209,149,13,2,NULL),(1210,149,13,2,NULL),(1211,19,13,2,NULL),(1212,19,13,2,NULL),(1213,23,13,2,NULL),(1214,23,13,2,NULL),(1215,27,13,2,NULL),(1216,27,13,2,NULL),(1217,31,13,2,NULL),(1218,35,13,2,NULL),(1219,39,13,2,NULL),(1220,43,13,2,NULL),(1221,48,13,2,NULL),(1222,52,13,2,NULL),(1223,52,13,2,NULL),(1224,56,13,2,NULL),(1225,60,13,2,NULL),(1226,64,13,2,NULL),(1227,67,13,2,NULL),(1228,67,13,2,NULL),(1229,71,13,2,NULL),(1230,76,13,2,NULL),(1231,81,13,2,NULL),(1232,84,13,2,NULL),(1233,89,13,2,NULL),(1234,93,13,2,NULL),(1235,95,13,2,NULL),(1236,99,13,2,NULL),(1237,102,13,2,NULL),(1238,108,13,2,NULL),(1239,112,13,2,NULL),(1240,116,13,2,NULL),(1241,120,13,2,NULL),(1242,124,13,2,NULL),(1243,127,13,2,NULL),(1244,131,13,2,NULL),(1245,133,13,2,NULL),(1246,139,13,2,NULL),(1247,142,13,2,NULL),(1248,148,23,2,NULL),(1249,148,28,2,NULL),(1250,148,30,2,NULL),(1251,148,33,2,NULL),(1252,148,34,2,NULL),(1253,148,35,2,NULL),(1254,126,12,2,NULL),(1255,126,13,2,NULL),(1256,126,14,2,NULL),(1257,126,15,2,NULL),(1258,126,16,2,NULL),(1259,126,18,2,NULL),(1260,5,21,2,NULL),(1261,22,21,2,NULL),(1262,26,21,2,NULL),(1263,29,21,2,NULL),(1264,34,21,2,NULL),(1265,36,21,2,NULL),(1266,41,21,2,NULL),(1267,45,21,2,NULL),(1268,51,21,2,NULL),(1269,55,21,2,NULL),(1270,59,21,2,NULL),(1271,62,21,2,NULL),(1272,66,21,2,NULL),(1273,70,21,2,NULL),(1274,74,21,2,NULL),(1275,79,21,2,NULL),(1276,82,21,2,NULL),(1277,86,21,2,NULL),(1278,91,21,2,NULL),(1279,97,21,2,NULL),(1280,100,21,2,NULL),(1281,103,21,2,NULL),(1282,104,21,2,NULL),(1283,111,21,2,NULL),(1284,115,21,2,NULL),(1285,117,21,2,NULL),(1286,121,21,2,NULL),(1287,128,21,2,NULL),(1288,130,21,2,NULL),(1289,134,21,2,NULL),(1290,136,21,2,NULL),(1291,140,21,2,NULL),(1292,144,21,2,NULL),(1293,17,21,2,NULL),(1294,15,21,2,NULL),(1295,18,21,2,NULL),(1296,21,21,2,NULL),(1297,24,21,2,NULL),(1298,28,21,2,NULL),(1299,32,21,2,NULL),(1300,37,21,2,NULL),(1301,42,21,2,NULL),(1302,46,21,2,NULL),(1303,49,21,2,NULL),(1304,53,21,2,NULL),(1305,57,21,2,NULL),(1306,61,21,2,NULL),(1307,65,21,2,NULL),(1308,69,21,2,NULL),(1309,75,21,2,NULL),(1310,80,21,2,NULL),(1311,83,21,2,NULL),(1312,88,21,2,NULL),(1313,92,21,2,NULL),(1314,94,21,2,NULL),(1315,96,21,2,NULL),(1316,101,21,2,NULL),(1317,106,21,2,NULL),(1318,109,21,2,NULL),(1319,114,21,2,NULL),(1320,119,21,2,NULL),(1321,123,21,2,NULL),(1322,125,21,2,NULL),(1323,129,21,2,NULL),(1324,132,21,2,NULL),(1325,137,21,2,NULL),(1326,141,21,2,NULL),(1327,7,21,2,NULL),(1328,149,21,2,NULL),(1329,19,21,2,NULL),(1330,23,21,2,NULL),(1331,27,21,2,NULL),(1332,31,21,2,NULL),(1333,35,21,2,NULL),(1334,39,21,2,NULL),(1335,43,21,2,NULL),(1336,48,21,2,NULL),(1337,52,21,2,NULL),(1338,56,21,2,NULL),(1339,60,21,2,NULL),(1340,64,21,2,NULL),(1341,67,21,2,NULL),(1342,71,21,2,NULL),(1343,76,21,2,NULL),(1344,81,21,2,NULL),(1345,84,21,2,NULL),(1346,89,21,2,NULL),(1347,93,21,2,NULL),(1348,95,21,2,NULL),(1349,99,21,2,NULL),(1350,102,21,2,NULL),(1351,108,21,2,NULL),(1352,112,21,2,NULL),(1353,116,21,2,NULL),(1354,120,21,2,NULL),(1355,124,21,2,NULL),(1356,127,21,2,NULL),(1357,131,21,2,NULL),(1358,133,21,2,NULL),(1359,139,21,2,NULL),(1360,142,21,2,NULL),(1361,14,21,2,NULL),(1362,152,21,2,NULL),(1363,5,31,2,NULL),(1364,22,31,2,NULL),(1365,26,31,2,NULL),(1366,29,31,2,NULL),(1367,34,31,2,NULL),(1368,36,31,2,NULL),(1369,41,31,2,NULL),(1370,45,31,2,NULL),(1371,51,31,2,NULL),(1372,55,31,2,NULL),(1373,59,31,2,NULL),(1374,62,31,2,NULL),(1375,66,31,2,NULL),(1376,70,31,2,NULL),(1377,74,31,2,NULL),(1378,79,31,2,NULL),(1379,82,31,2,NULL),(1380,86,31,2,NULL),(1381,91,31,2,NULL),(1382,97,31,2,NULL),(1383,100,31,2,NULL),(1384,103,31,2,NULL),(1385,104,31,2,NULL),(1386,111,31,2,NULL),(1387,115,31,2,NULL),(1388,117,31,2,NULL),(1389,121,31,2,NULL),(1390,128,31,2,NULL),(1391,130,31,2,NULL),(1392,134,31,2,NULL),(1393,136,31,2,NULL),(1394,140,31,2,NULL),(1395,144,31,2,NULL),(1396,17,31,2,NULL),(1397,15,31,2,NULL),(1398,18,31,2,NULL),(1399,21,31,2,NULL),(1400,24,31,2,NULL),(1401,28,31,2,NULL),(1402,32,31,2,NULL),(1403,37,31,2,NULL),(1404,42,31,2,NULL),(1405,46,31,2,NULL),(1406,49,31,2,NULL),(1407,53,31,2,NULL),(1408,57,31,2,NULL),(1409,61,31,2,NULL),(1410,65,31,2,NULL),(1411,69,31,2,NULL),(1412,75,31,2,NULL),(1413,80,31,2,NULL),(1414,83,31,2,NULL),(1415,88,31,2,NULL),(1416,92,31,2,NULL),(1417,94,31,2,NULL),(1418,96,31,2,NULL),(1419,101,31,2,NULL),(1420,106,31,2,NULL),(1421,109,31,2,NULL),(1422,114,31,2,NULL),(1423,119,31,2,NULL),(1424,123,31,2,NULL),(1425,125,31,2,NULL),(1426,129,31,2,NULL),(1427,132,31,2,NULL),(1428,137,31,2,NULL),(1429,141,31,2,NULL),(1430,7,31,2,NULL),(1431,149,31,2,NULL),(1432,19,31,2,NULL),(1433,23,31,2,NULL),(1434,27,31,2,NULL),(1435,31,31,2,NULL),(1436,35,31,2,NULL),(1437,39,31,2,NULL),(1438,43,31,2,NULL),(1439,48,31,2,NULL),(1440,52,31,2,NULL),(1441,56,31,2,NULL),(1442,60,31,2,NULL),(1443,64,31,2,NULL),(1444,67,31,2,NULL),(1445,71,31,2,NULL),(1446,76,31,2,NULL),(1447,81,31,2,NULL),(1448,84,31,2,NULL),(1449,89,31,2,NULL),(1450,93,31,2,NULL),(1451,95,31,2,NULL),(1452,99,31,2,NULL),(1453,102,31,2,NULL),(1454,108,31,2,NULL),(1455,112,31,2,NULL),(1456,116,31,2,NULL),(1457,120,31,2,NULL),(1458,124,31,2,NULL),(1459,127,31,2,NULL),(1460,131,31,2,NULL),(1461,133,31,2,NULL),(1462,139,31,2,NULL),(1463,142,31,2,NULL),(1464,14,31,2,NULL),(1465,152,31,2,NULL),(1466,5,32,2,NULL),(1467,22,32,2,NULL),(1468,26,32,2,NULL),(1469,29,32,2,NULL),(1470,34,32,2,NULL),(1471,36,32,2,NULL),(1472,41,32,2,NULL),(1473,45,32,2,NULL),(1474,51,32,2,NULL),(1475,55,32,2,NULL),(1476,59,32,2,NULL),(1477,62,32,2,NULL),(1478,66,32,2,NULL),(1479,70,32,2,NULL),(1480,74,32,2,NULL),(1481,79,32,2,NULL),(1482,82,32,2,NULL),(1483,86,32,2,NULL),(1484,91,32,2,NULL),(1485,97,32,2,NULL),(1486,100,32,2,NULL),(1487,103,32,2,NULL),(1488,104,32,2,NULL),(1489,111,32,2,NULL),(1490,115,32,2,NULL),(1491,117,32,2,NULL),(1492,121,32,2,NULL),(1493,128,32,2,NULL),(1494,130,32,2,NULL),(1495,134,32,2,NULL),(1496,136,32,2,NULL),(1497,140,32,2,NULL),(1498,144,32,2,NULL),(1499,17,32,2,NULL),(1500,15,32,2,NULL),(1501,18,32,2,NULL),(1502,21,32,2,NULL),(1503,24,32,2,NULL),(1504,28,32,2,NULL),(1505,32,32,2,NULL),(1506,32,32,2,NULL),(1507,37,32,2,NULL),(1508,42,32,2,NULL),(1509,46,32,2,NULL),(1510,49,32,2,NULL),(1511,53,32,2,NULL),(1512,57,32,2,NULL),(1513,61,32,2,NULL),(1514,65,32,2,NULL),(1515,65,32,2,NULL),(1516,69,32,2,NULL),(1517,75,32,2,NULL),(1518,80,32,2,NULL),(1519,80,32,2,NULL),(1520,83,32,2,NULL),(1521,88,32,2,NULL),(1522,92,32,2,NULL),(1523,94,32,2,NULL),(1524,96,32,2,NULL),(1525,101,32,2,NULL),(1526,106,32,2,NULL),(1527,109,32,2,NULL),(1528,114,32,2,NULL),(1529,119,32,2,NULL),(1530,123,32,2,NULL),(1531,125,32,2,NULL),(1532,129,32,2,NULL),(1533,132,32,2,NULL),(1534,137,32,2,NULL),(1535,141,32,2,NULL),(1536,7,32,2,NULL),(1537,149,32,2,NULL),(1538,19,32,2,NULL),(1539,23,32,2,NULL),(1540,27,32,2,NULL),(1541,31,32,2,NULL),(1542,35,32,2,NULL),(1543,39,32,2,NULL),(1544,43,32,2,NULL),(1545,48,32,2,NULL),(1546,52,32,2,NULL),(1547,56,32,2,NULL),(1548,60,32,2,NULL),(1549,64,32,2,NULL),(1550,67,32,2,NULL),(1551,71,32,2,NULL),(1552,76,32,2,NULL),(1553,81,32,2,NULL),(1554,84,32,2,NULL),(1555,89,32,2,NULL),(1556,93,32,2,NULL),(1557,95,32,2,NULL),(1558,99,32,2,NULL),(1559,102,32,2,NULL),(1560,108,32,2,NULL),(1561,112,32,2,NULL),(1562,116,32,2,NULL),(1563,120,32,2,NULL),(1564,124,32,2,NULL),(1565,127,32,2,NULL),(1566,131,32,2,NULL),(1567,133,32,2,NULL),(1568,139,32,2,NULL),(1569,142,32,2,NULL),(1570,14,32,2,NULL),(1571,152,32,2,NULL),(1572,2,7,2,NULL),(1573,2,8,2,NULL),(1574,2,9,2,NULL),(1575,2,10,2,NULL),(1576,2,11,2,NULL),(1577,2,17,2,NULL),(1578,9,12,2,NULL),(1579,9,13,2,NULL),(1580,9,14,2,NULL),(1581,9,15,2,NULL),(1582,9,16,2,NULL),(1583,9,18,2,NULL),(1584,22,2,2,NULL),(1585,22,2,2,NULL),(1586,26,2,2,NULL),(1587,29,2,2,NULL),(1588,34,2,2,NULL),(1589,36,2,2,NULL),(1590,41,2,2,NULL),(1591,45,2,2,NULL),(1592,51,2,2,NULL),(1593,55,2,2,NULL),(1594,59,2,2,NULL),(1595,62,2,2,NULL),(1596,66,2,2,NULL),(1597,70,2,2,NULL),(1598,74,2,2,NULL),(1599,79,2,2,NULL),(1600,82,2,2,NULL),(1601,86,2,2,NULL),(1602,91,2,2,NULL),(1603,97,2,2,NULL),(1604,100,2,2,NULL),(1605,103,2,2,NULL),(1606,104,2,2,NULL),(1607,111,2,2,NULL),(1608,115,2,2,NULL),(1609,117,2,2,NULL),(1610,121,2,2,NULL),(1611,128,2,2,NULL),(1612,130,2,2,NULL),(1613,134,2,2,NULL),(1614,136,2,2,NULL),(1615,140,2,2,NULL),(1616,144,2,2,NULL),(1617,5,12,2,NULL),(1618,17,2,2,NULL),(1619,5,19,2,NULL),(1620,5,25,2,NULL),(1621,5,29,2,NULL),(1622,18,2,2,NULL),(1623,21,2,2,NULL),(1624,24,2,2,NULL),(1625,28,2,2,NULL),(1626,32,2,2,NULL),(1627,37,2,2,NULL),(1628,42,2,2,NULL),(1629,46,2,2,NULL),(1630,49,2,2,NULL),(1631,53,2,2,NULL),(1632,57,2,2,NULL),(1633,61,2,2,NULL),(1634,65,2,2,NULL),(1635,69,2,2,NULL),(1636,75,2,2,NULL),(1637,80,2,2,NULL),(1638,83,2,2,NULL),(1639,88,2,2,NULL),(1640,92,2,2,NULL),(1641,94,2,2,NULL),(1642,96,2,2,NULL),(1643,101,2,2,NULL),(1644,106,2,2,NULL),(1645,109,2,2,NULL),(1646,114,2,2,NULL),(1647,119,2,2,NULL),(1648,123,2,2,NULL),(1649,125,2,2,NULL),(1650,129,2,2,NULL),(1651,132,2,2,NULL),(1652,137,2,2,NULL),(1653,141,2,2,NULL),(1654,5,14,2,NULL),(1655,7,2,2,NULL),(1656,5,24,2,NULL),(1657,5,26,2,NULL),(1658,5,27,2,NULL),(1659,5,16,2,NULL),(1660,5,15,2,NULL),(1661,19,2,2,NULL),(1662,23,2,2,NULL),(1663,27,2,2,NULL),(1664,31,2,2,NULL),(1665,35,2,2,NULL),(1666,39,2,2,NULL),(1667,43,2,2,NULL),(1668,48,2,2,NULL),(1669,52,2,2,NULL),(1670,56,2,2,NULL),(1671,60,2,2,NULL),(1672,64,2,2,NULL),(1673,67,2,2,NULL),(1674,71,2,2,NULL),(1675,76,2,2,NULL),(1676,81,2,2,NULL),(1677,84,2,2,NULL),(1678,89,2,2,NULL),(1679,93,2,2,NULL),(1680,95,2,2,NULL),(1681,99,2,2,NULL),(1682,102,2,2,NULL),(1683,108,2,2,NULL),(1684,112,2,2,NULL),(1685,116,2,2,NULL),(1686,120,2,2,NULL),(1687,124,2,2,NULL),(1688,127,2,2,NULL),(1689,131,2,2,NULL),(1690,133,2,2,NULL),(1691,139,2,2,NULL),(1692,142,2,2,NULL),(1693,5,18,2,NULL),(1694,14,2,2,NULL),(1695,152,2,2,NULL),(1696,5,23,2,NULL),(1697,5,28,2,NULL),(1698,5,30,2,NULL),(1699,5,33,2,NULL),(1700,5,34,2,NULL),(1701,5,35,2,NULL),(1702,22,12,2,NULL),(1703,22,12,2,NULL),(1704,26,12,2,NULL),(1705,26,12,2,NULL),(1706,29,12,2,NULL),(1707,29,12,2,NULL),(1708,34,12,2,NULL),(1709,34,12,2,NULL),(1710,36,12,2,NULL),(1711,36,12,2,NULL),(1712,41,12,2,NULL),(1713,41,12,2,NULL),(1714,45,12,2,NULL),(1715,45,12,2,NULL),(1716,51,12,2,NULL),(1717,51,12,2,NULL),(1718,55,12,2,NULL),(1719,55,12,2,NULL),(1720,59,12,2,NULL),(1721,59,12,2,NULL),(1722,62,12,2,NULL),(1723,62,12,2,NULL),(1724,66,12,2,NULL),(1725,66,12,2,NULL),(1726,70,12,2,NULL),(1727,70,12,2,NULL),(1728,74,12,2,NULL),(1729,74,12,2,NULL),(1730,79,12,2,NULL),(1731,79,12,2,NULL),(1732,82,12,2,NULL),(1733,86,12,2,NULL),(1734,91,12,2,NULL),(1735,97,12,2,NULL),(1736,100,12,2,NULL),(1737,100,12,2,NULL),(1738,103,12,2,NULL),(1739,104,12,2,NULL),(1740,111,12,2,NULL),(1741,115,12,2,NULL),(1742,117,12,2,NULL),(1743,121,12,2,NULL),(1744,128,12,2,NULL),(1745,130,12,2,NULL),(1746,134,12,2,NULL),(1747,136,12,2,NULL),(1748,140,12,2,NULL),(1749,144,12,2,NULL),(1750,22,19,2,NULL),(1751,26,19,2,NULL),(1752,29,19,2,NULL),(1753,34,19,2,NULL),(1754,36,19,2,NULL),(1755,41,19,2,NULL),(1756,45,19,2,NULL),(1757,51,19,2,NULL),(1758,55,19,2,NULL),(1759,59,19,2,NULL),(1760,62,19,2,NULL),(1761,66,19,2,NULL),(1762,70,19,2,NULL),(1763,74,19,2,NULL),(1764,79,19,2,NULL),(1765,82,19,2,NULL),(1766,86,19,2,NULL),(1767,91,19,2,NULL),(1768,97,19,2,NULL),(1769,100,19,2,NULL),(1770,103,19,2,NULL),(1771,104,19,2,NULL),(1772,111,19,2,NULL),(1773,115,19,2,NULL),(1774,117,19,2,NULL),(1775,121,19,2,NULL),(1776,128,19,2,NULL),(1777,130,19,2,NULL),(1778,134,19,2,NULL),(1779,136,19,2,NULL),(1780,140,19,2,NULL),(1781,144,19,2,NULL),(1782,22,25,2,NULL),(1783,26,25,2,NULL),(1784,29,25,2,NULL),(1785,34,25,2,NULL),(1786,36,25,2,NULL),(1787,41,25,2,NULL),(1788,45,25,2,NULL),(1789,51,25,2,NULL),(1790,55,25,2,NULL),(1791,59,25,2,NULL),(1792,62,25,2,NULL),(1793,66,25,2,NULL),(1794,70,25,2,NULL),(1795,74,25,2,NULL),(1796,79,25,2,NULL),(1797,82,25,2,NULL),(1798,86,25,2,NULL),(1799,91,25,2,NULL),(1800,97,25,2,NULL),(1801,100,25,2,NULL),(1802,103,25,2,NULL),(1803,104,25,2,NULL),(1804,111,25,2,NULL),(1805,115,25,2,NULL),(1806,117,25,2,NULL),(1807,121,25,2,NULL),(1808,128,25,2,NULL),(1809,130,25,2,NULL),(1810,134,25,2,NULL),(1811,136,25,2,NULL),(1812,140,25,2,NULL),(1813,144,25,2,NULL),(1814,22,29,2,NULL),(1815,26,29,2,NULL),(1816,29,29,2,NULL),(1817,34,29,2,NULL),(1818,36,29,2,NULL),(1819,41,29,2,NULL),(1820,45,29,2,NULL),(1821,51,29,2,NULL),(1822,55,29,2,NULL),(1823,59,29,2,NULL),(1824,62,29,2,NULL),(1825,66,29,2,NULL),(1826,70,29,2,NULL),(1827,74,29,2,NULL),(1828,79,29,2,NULL),(1829,82,29,2,NULL),(1830,86,29,2,NULL),(1831,91,29,2,NULL),(1832,97,29,2,NULL),(1833,100,29,2,NULL),(1834,103,29,2,NULL),(1835,104,29,2,NULL),(1836,111,29,2,NULL),(1837,115,29,2,NULL),(1838,117,29,2,NULL),(1839,121,29,2,NULL),(1840,128,29,2,NULL),(1841,130,29,2,NULL),(1842,134,29,2,NULL),(1843,136,29,2,NULL),(1844,140,29,2,NULL),(1845,144,29,2,NULL),(1846,22,1,2,NULL),(1847,26,1,2,NULL),(1848,29,1,2,NULL),(1849,34,1,2,NULL),(1850,36,1,2,NULL),(1851,41,1,2,NULL),(1852,45,1,2,NULL),(1853,51,1,2,NULL),(1854,55,1,2,NULL),(1855,59,1,2,NULL),(1856,62,1,2,NULL),(1857,66,1,2,NULL),(1858,70,1,2,NULL),(1859,74,1,2,NULL),(1860,79,1,2,NULL),(1861,82,1,2,NULL),(1862,86,1,2,NULL),(1863,91,1,2,NULL),(1864,97,1,2,NULL),(1865,100,1,2,NULL),(1866,103,1,2,NULL),(1867,104,1,2,NULL),(1868,111,1,2,NULL),(1869,115,1,2,NULL),(1870,117,1,2,NULL),(1871,121,1,2,NULL),(1872,128,1,2,NULL),(1873,130,1,2,NULL),(1874,134,1,2,NULL),(1875,136,1,2,NULL),(1876,140,1,2,NULL),(1877,144,1,2,NULL),(1878,22,14,2,NULL),(1879,26,14,2,NULL),(1880,29,14,2,NULL),(1881,34,14,2,NULL),(1882,36,14,2,NULL),(1883,41,14,2,NULL),(1884,45,14,2,NULL),(1885,51,14,2,NULL),(1886,55,14,2,NULL),(1887,59,14,2,NULL),(1888,62,14,2,NULL),(1889,66,14,2,NULL),(1890,70,14,2,NULL),(1891,74,14,2,NULL),(1892,79,14,2,NULL),(1893,82,14,2,NULL),(1894,86,14,2,NULL),(1895,91,14,2,NULL),(1896,97,14,2,NULL),(1897,100,14,2,NULL),(1898,103,14,2,NULL),(1899,104,14,2,NULL),(1900,111,14,2,NULL),(1901,115,14,2,NULL),(1902,117,14,2,NULL),(1903,121,14,2,NULL),(1904,128,14,2,NULL),(1905,130,14,2,NULL),(1906,134,14,2,NULL),(1907,136,14,2,NULL),(1908,140,14,2,NULL),(1909,144,14,2,NULL),(1910,22,24,2,NULL),(1911,26,24,2,NULL),(1912,29,24,2,NULL),(1913,34,24,2,NULL),(1914,36,24,2,NULL),(1915,41,24,2,NULL),(1916,45,24,2,NULL),(1917,51,24,2,NULL),(1918,55,24,2,NULL),(1919,59,24,2,NULL),(1920,62,24,2,NULL),(1921,66,24,2,NULL),(1922,70,24,2,NULL),(1923,74,24,2,NULL),(1924,79,24,2,NULL),(1925,82,24,2,NULL),(1926,86,24,2,NULL),(1927,91,24,2,NULL),(1928,97,24,2,NULL),(1929,100,24,2,NULL),(1930,103,24,2,NULL),(1931,104,24,2,NULL),(1932,111,24,2,NULL),(1933,115,24,2,NULL),(1934,117,24,2,NULL),(1935,121,24,2,NULL),(1936,128,24,2,NULL),(1937,130,24,2,NULL),(1938,134,24,2,NULL),(1939,136,24,2,NULL),(1940,140,24,2,NULL),(1941,144,24,2,NULL),(1942,22,26,2,NULL),(1943,26,26,2,NULL),(1944,29,26,2,NULL),(1945,34,26,2,NULL),(1946,36,26,2,NULL),(1947,41,26,2,NULL),(1948,45,26,2,NULL),(1949,51,26,2,NULL),(1950,55,26,2,NULL),(1951,59,26,2,NULL),(1952,62,26,2,NULL),(1953,66,26,2,NULL),(1954,70,26,2,NULL),(1955,74,26,2,NULL),(1956,79,26,2,NULL),(1957,82,26,2,NULL),(1958,86,26,2,NULL),(1959,91,26,2,NULL),(1960,97,26,2,NULL),(1961,100,26,2,NULL),(1962,103,26,2,NULL),(1963,104,26,2,NULL),(1964,111,26,2,NULL),(1965,115,26,2,NULL),(1966,117,26,2,NULL),(1967,121,26,2,NULL),(1968,128,26,2,NULL),(1969,130,26,2,NULL),(1970,134,26,2,NULL),(1971,136,26,2,NULL),(1972,140,26,2,NULL),(1973,144,26,2,NULL),(1974,22,27,2,NULL),(1975,26,27,2,NULL),(1976,29,27,2,NULL),(1977,34,27,2,NULL),(1978,34,27,2,NULL),(1979,36,27,2,NULL),(1980,41,27,2,NULL),(1981,45,27,2,NULL),(1982,51,27,2,NULL),(1983,55,27,2,NULL),(1984,59,27,2,NULL),(1985,59,27,2,NULL),(1986,62,27,2,NULL),(1987,62,27,2,NULL),(1988,66,27,2,NULL),(1989,66,27,2,NULL),(1990,70,27,2,NULL),(1991,70,27,2,NULL),(1992,74,27,2,NULL),(1993,74,27,2,NULL),(1994,79,27,2,NULL),(1995,79,27,2,NULL),(1996,82,27,2,NULL),(1997,82,27,2,NULL),(1998,86,27,2,NULL),(1999,86,27,2,NULL),(2000,91,27,2,NULL),(2001,91,27,2,NULL),(2002,97,27,2,NULL),(2003,97,27,2,NULL),(2004,100,27,2,NULL),(2005,100,27,2,NULL),(2006,103,27,2,NULL),(2007,103,27,2,NULL),(2008,104,27,2,NULL),(2009,104,27,2,NULL),(2010,111,27,2,NULL),(2011,111,27,2,NULL),(2012,115,27,2,NULL),(2013,115,27,2,NULL),(2014,117,27,2,NULL),(2015,117,27,2,NULL),(2016,121,27,2,NULL),(2017,121,27,2,NULL),(2018,128,27,2,NULL),(2019,128,27,2,NULL),(2020,130,27,2,NULL),(2021,130,27,2,NULL),(2022,134,27,2,NULL),(2023,134,27,2,NULL),(2024,136,27,2,NULL),(2025,136,27,2,NULL),(2026,140,27,2,NULL),(2027,140,27,2,NULL),(2028,144,27,2,NULL),(2029,144,27,2,NULL),(2030,22,5,2,NULL),(2031,22,5,2,NULL),(2032,26,5,2,NULL),(2033,26,5,2,NULL),(2034,29,5,2,NULL),(2035,29,5,2,NULL),(2036,34,5,2,NULL),(2037,34,5,2,NULL),(2038,36,5,2,NULL),(2039,36,5,2,NULL),(2040,41,5,2,NULL),(2041,41,5,2,NULL),(2042,45,5,2,NULL),(2043,45,5,2,NULL),(2044,51,5,2,NULL),(2045,51,5,2,NULL),(2046,55,5,2,NULL),(2047,55,5,2,NULL),(2048,59,5,2,NULL),(2049,59,5,2,NULL),(2050,62,5,2,NULL),(2051,62,5,2,NULL),(2052,66,5,2,NULL),(2053,66,5,2,NULL),(2054,70,5,2,NULL),(2055,70,5,2,NULL),(2056,74,5,2,NULL),(2057,74,5,2,NULL),(2058,79,5,2,NULL),(2059,79,5,2,NULL),(2060,82,5,2,NULL),(2061,82,5,2,NULL),(2062,86,5,2,NULL),(2063,86,5,2,NULL),(2064,91,5,2,NULL),(2065,91,5,2,NULL),(2066,97,5,2,NULL),(2067,97,5,2,NULL),(2068,100,5,2,NULL),(2069,100,5,2,NULL),(2070,103,5,2,NULL),(2071,103,5,2,NULL),(2072,104,5,2,NULL),(2073,104,5,2,NULL),(2074,111,5,2,NULL),(2075,111,5,2,NULL),(2076,115,5,2,NULL),(2077,115,5,2,NULL),(2078,117,5,2,NULL),(2079,117,5,2,NULL),(2080,121,5,2,NULL),(2081,121,5,2,NULL),(2082,128,5,2,NULL),(2083,128,5,2,NULL),(2084,130,5,2,NULL),(2085,130,5,2,NULL),(2086,134,5,2,NULL),(2087,134,5,2,NULL),(2088,136,5,2,NULL),(2089,136,5,2,NULL),(2090,140,5,2,NULL),(2091,140,5,2,NULL),(2092,144,5,2,NULL),(2093,144,5,2,NULL),(2094,22,16,2,NULL),(2095,22,16,2,NULL),(2096,26,16,2,NULL),(2097,26,16,2,NULL),(2098,29,16,2,NULL),(2099,29,16,2,NULL),(2100,34,16,2,NULL),(2101,34,16,2,NULL),(2102,36,16,2,NULL),(2103,36,16,2,NULL),(2104,41,16,2,NULL),(2105,41,16,2,NULL),(2106,45,16,2,NULL),(2107,45,16,2,NULL),(2108,51,16,2,NULL),(2109,51,16,2,NULL),(2110,55,16,2,NULL),(2111,55,16,2,NULL),(2112,59,16,2,NULL),(2113,59,16,2,NULL),(2114,62,16,2,NULL),(2115,62,16,2,NULL),(2116,66,16,2,NULL),(2117,66,16,2,NULL),(2118,70,16,2,NULL),(2119,70,16,2,NULL),(2120,74,16,2,NULL),(2121,74,16,2,NULL),(2122,79,16,2,NULL),(2123,79,16,2,NULL),(2124,82,16,2,NULL),(2125,82,16,2,NULL),(2126,86,16,2,NULL),(2127,86,16,2,NULL),(2128,91,16,2,NULL),(2129,91,16,2,NULL),(2130,97,16,2,NULL),(2131,97,16,2,NULL),(2132,100,16,2,NULL),(2133,100,16,2,NULL),(2134,103,16,2,NULL),(2135,103,16,2,NULL),(2136,104,16,2,NULL),(2137,104,16,2,NULL),(2138,111,16,2,NULL),(2139,111,16,2,NULL),(2140,115,16,2,NULL),(2141,115,16,2,NULL),(2142,117,16,2,NULL),(2143,117,16,2,NULL),(2144,121,16,2,NULL),(2145,121,16,2,NULL),(2146,128,16,2,NULL),(2147,128,16,2,NULL),(2148,130,16,2,NULL),(2149,130,16,2,NULL),(2150,134,16,2,NULL),(2151,134,16,2,NULL),(2152,136,16,2,NULL),(2153,136,16,2,NULL),(2154,140,16,2,NULL),(2155,140,16,2,NULL),(2156,144,16,2,NULL),(2157,144,16,2,NULL),(2158,22,4,2,NULL),(2159,22,4,2,NULL),(2160,26,4,2,NULL),(2161,26,4,2,NULL),(2162,29,4,2,NULL),(2163,29,4,2,NULL),(2164,34,4,2,NULL),(2165,34,4,2,NULL),(2166,36,4,2,NULL),(2167,36,4,2,NULL),(2168,41,4,2,NULL),(2169,41,4,2,NULL),(2170,45,4,2,NULL),(2171,45,4,2,NULL),(2172,51,4,2,NULL),(2173,51,4,2,NULL),(2174,55,4,2,NULL),(2175,55,4,2,NULL),(2176,59,4,2,NULL),(2177,59,4,2,NULL),(2178,62,4,2,NULL),(2179,62,4,2,NULL),(2180,66,4,2,NULL),(2181,66,4,2,NULL),(2182,70,4,2,NULL),(2183,70,4,2,NULL),(2184,74,4,2,NULL),(2185,74,4,2,NULL),(2186,79,4,2,NULL),(2187,79,4,2,NULL),(2188,82,4,2,NULL),(2189,82,4,2,NULL),(2190,86,4,2,NULL),(2191,86,4,2,NULL),(2192,91,4,2,NULL),(2193,91,4,2,NULL),(2194,97,4,2,NULL),(2195,97,4,2,NULL),(2196,100,4,2,NULL),(2197,100,4,2,NULL),(2198,103,4,2,NULL),(2199,103,4,2,NULL),(2200,104,4,2,NULL),(2201,104,4,2,NULL),(2202,111,4,2,NULL),(2203,111,4,2,NULL),(2204,115,4,2,NULL),(2205,115,4,2,NULL),(2206,117,4,2,NULL),(2207,117,4,2,NULL),(2208,121,4,2,NULL),(2209,121,4,2,NULL),(2210,128,4,2,NULL),(2211,128,4,2,NULL),(2212,130,4,2,NULL),(2213,130,4,2,NULL),(2214,134,4,2,NULL),(2215,134,4,2,NULL),(2216,136,4,2,NULL),(2217,136,4,2,NULL),(2218,140,4,2,NULL),(2219,140,4,2,NULL),(2220,144,4,2,NULL),(2221,144,4,2,NULL),(2222,22,15,2,NULL),(2223,22,15,2,NULL),(2224,26,15,2,NULL),(2225,26,15,2,NULL),(2226,29,15,2,NULL),(2227,29,15,2,NULL),(2228,34,15,2,NULL),(2229,34,15,2,NULL),(2230,36,15,2,NULL),(2231,36,15,2,NULL),(2232,41,15,2,NULL),(2233,41,15,2,NULL),(2234,45,15,2,NULL),(2235,45,15,2,NULL),(2236,51,15,2,NULL),(2237,51,15,2,NULL),(2238,55,15,2,NULL),(2239,55,15,2,NULL),(2240,59,15,2,NULL),(2241,59,15,2,NULL),(2242,62,15,2,NULL),(2243,62,15,2,NULL),(2244,66,15,2,NULL),(2245,66,15,2,NULL),(2246,70,15,2,NULL),(2247,70,15,2,NULL),(2248,74,15,2,NULL),(2249,74,15,2,NULL),(2250,79,15,2,NULL),(2251,79,15,2,NULL),(2252,82,15,2,NULL),(2253,82,15,2,NULL),(2254,86,15,2,NULL),(2255,86,15,2,NULL),(2256,91,15,2,NULL),(2257,91,15,2,NULL),(2258,97,15,2,NULL),(2259,97,15,2,NULL),(2260,100,15,2,NULL),(2261,100,15,2,NULL),(2262,103,15,2,NULL),(2263,103,15,2,NULL),(2264,104,15,2,NULL),(2265,104,15,2,NULL),(2266,111,15,2,NULL),(2267,111,15,2,NULL),(2268,115,15,2,NULL),(2269,117,15,2,NULL),(2270,121,15,2,NULL),(2271,128,15,2,NULL),(2272,130,15,2,NULL),(2273,134,15,2,NULL),(2274,136,15,2,NULL),(2275,136,15,2,NULL),(2276,140,15,2,NULL),(2277,144,15,2,NULL),(2278,144,15,2,NULL),(2279,22,6,2,NULL),(2280,26,6,2,NULL),(2281,29,6,2,NULL),(2282,34,6,2,NULL),(2283,36,6,2,NULL),(2284,41,6,2,NULL),(2285,45,6,2,NULL),(2286,51,6,2,NULL),(2287,55,6,2,NULL),(2288,59,6,2,NULL),(2289,62,6,2,NULL),(2290,66,6,2,NULL),(2291,70,6,2,NULL),(2292,74,6,2,NULL),(2293,79,6,2,NULL),(2294,82,6,2,NULL),(2295,86,6,2,NULL),(2296,91,6,2,NULL),(2297,97,6,2,NULL),(2298,100,6,2,NULL),(2299,103,6,2,NULL),(2300,104,6,2,NULL),(2301,111,6,2,NULL),(2302,115,6,2,NULL),(2303,117,6,2,NULL),(2304,121,6,2,NULL),(2305,128,6,2,NULL),(2306,130,6,2,NULL),(2307,134,6,2,NULL),(2308,136,6,2,NULL),(2309,140,6,2,NULL),(2310,144,6,2,NULL),(2311,22,18,2,NULL),(2312,26,18,2,NULL),(2313,29,18,2,NULL),(2314,34,18,2,NULL),(2315,36,18,2,NULL),(2316,41,18,2,NULL),(2317,45,18,2,NULL),(2318,51,18,2,NULL),(2319,55,18,2,NULL),(2320,59,18,2,NULL),(2321,62,18,2,NULL),(2322,66,18,2,NULL),(2323,70,18,2,NULL),(2324,74,18,2,NULL),(2325,79,18,2,NULL),(2326,82,18,2,NULL),(2327,86,18,2,NULL),(2328,91,18,2,NULL),(2329,97,18,2,NULL),(2330,100,18,2,NULL),(2331,103,18,2,NULL),(2332,104,18,2,NULL),(2333,111,18,2,NULL),(2334,115,18,2,NULL),(2335,117,18,2,NULL),(2336,121,18,2,NULL),(2337,128,18,2,NULL),(2338,130,18,2,NULL),(2339,134,18,2,NULL),(2340,136,18,2,NULL),(2341,140,18,2,NULL),(2342,144,18,2,NULL),(2343,22,23,2,NULL),(2344,26,23,2,NULL),(2345,29,23,2,NULL),(2346,34,23,2,NULL),(2347,36,23,2,NULL),(2348,41,23,2,NULL),(2349,45,23,2,NULL),(2350,51,23,2,NULL),(2351,55,23,2,NULL),(2352,59,23,2,NULL),(2353,62,23,2,NULL),(2354,66,23,2,NULL),(2355,70,23,2,NULL),(2356,74,23,2,NULL),(2357,79,23,2,NULL),(2358,82,23,2,NULL),(2359,86,23,2,NULL),(2360,91,23,2,NULL),(2361,97,23,2,NULL),(2362,100,23,2,NULL),(2363,103,23,2,NULL),(2364,104,23,2,NULL),(2365,111,23,2,NULL),(2366,115,23,2,NULL),(2367,117,23,2,NULL),(2368,121,23,2,NULL),(2369,128,23,2,NULL),(2370,130,23,2,NULL),(2371,134,23,2,NULL),(2372,136,23,2,NULL),(2373,140,23,2,NULL),(2374,144,23,2,NULL),(2375,22,28,2,NULL),(2376,26,28,2,NULL),(2377,29,28,2,NULL),(2378,34,28,2,NULL),(2379,36,28,2,NULL),(2380,41,28,2,NULL),(2381,45,28,2,NULL),(2382,51,28,2,NULL),(2383,55,28,2,NULL),(2384,59,28,2,NULL),(2385,62,28,2,NULL),(2386,66,28,2,NULL),(2387,70,28,2,NULL),(2388,74,28,2,NULL),(2389,79,28,2,NULL),(2390,82,28,2,NULL),(2391,86,28,2,NULL),(2392,91,28,2,NULL),(2393,97,28,2,NULL),(2394,100,28,2,NULL),(2395,103,28,2,NULL),(2396,104,28,2,NULL),(2397,111,28,2,NULL),(2398,115,28,2,NULL),(2399,117,28,2,NULL),(2400,121,28,2,NULL),(2401,128,28,2,NULL),(2402,130,28,2,NULL),(2403,134,28,2,NULL),(2404,136,28,2,NULL),(2405,140,28,2,NULL),(2406,144,28,2,NULL),(2407,22,30,2,NULL),(2408,26,30,2,NULL),(2409,29,30,2,NULL),(2410,34,30,2,NULL),(2411,36,30,2,NULL),(2412,41,30,2,NULL),(2413,45,30,2,NULL),(2414,51,30,2,NULL),(2415,55,30,2,NULL),(2416,59,30,2,NULL),(2417,62,30,2,NULL),(2418,66,30,2,NULL),(2419,70,30,2,NULL),(2420,74,30,2,NULL),(2421,79,30,2,NULL),(2422,82,30,2,NULL),(2423,86,30,2,NULL),(2424,91,30,2,NULL),(2425,97,30,2,NULL),(2426,100,30,2,NULL),(2427,103,30,2,NULL),(2428,104,30,2,NULL),(2429,111,30,2,NULL),(2430,115,30,2,NULL),(2431,117,30,2,NULL),(2432,121,30,2,NULL),(2433,128,30,2,NULL),(2434,130,30,2,NULL),(2435,134,30,2,NULL),(2436,136,30,2,NULL),(2437,140,30,2,NULL),(2438,144,30,2,NULL),(2439,22,33,2,NULL),(2440,26,33,2,NULL),(2441,29,33,2,NULL),(2442,34,33,2,NULL),(2443,36,33,2,NULL),(2444,41,33,2,NULL),(2445,45,33,2,NULL),(2446,51,33,2,NULL),(2447,55,33,2,NULL),(2448,59,33,2,NULL),(2449,62,33,2,NULL),(2450,66,33,2,NULL),(2451,70,33,2,NULL),(2452,74,33,2,NULL),(2453,79,33,2,NULL),(2454,82,33,2,NULL),(2455,86,33,2,NULL),(2456,91,33,2,NULL),(2457,97,33,2,NULL),(2458,100,33,2,NULL),(2459,103,33,2,NULL),(2460,104,33,2,NULL),(2461,111,33,2,NULL),(2462,115,33,2,NULL),(2463,117,33,2,NULL),(2464,121,33,2,NULL),(2465,128,33,2,NULL),(2466,130,33,2,NULL),(2467,134,33,2,NULL),(2468,136,33,2,NULL),(2469,140,33,2,NULL),(2470,144,33,2,NULL),(2471,22,34,2,NULL),(2472,26,34,2,NULL),(2473,29,34,2,NULL),(2474,34,34,2,NULL),(2475,36,34,2,NULL),(2476,41,34,2,NULL),(2477,45,34,2,NULL),(2478,51,34,2,NULL),(2479,55,34,2,NULL),(2480,59,34,2,NULL),(2481,62,34,2,NULL),(2482,66,34,2,NULL),(2483,70,34,2,NULL),(2484,74,34,2,NULL),(2485,79,34,2,NULL),(2486,82,34,2,NULL),(2487,86,34,2,NULL),(2488,91,34,2,NULL),(2489,97,34,2,NULL),(2490,100,34,2,NULL),(2491,103,34,2,NULL),(2492,104,34,2,NULL),(2493,111,34,2,NULL),(2494,115,34,2,NULL),(2495,117,34,2,NULL),(2496,121,34,2,NULL),(2497,128,34,2,NULL),(2498,130,34,2,NULL),(2499,134,34,2,NULL),(2500,136,34,2,NULL),(2501,140,34,2,NULL),(2502,144,34,2,NULL),(2503,22,35,2,NULL),(2504,26,35,2,NULL),(2505,26,35,2,NULL),(2506,29,35,2,NULL),(2507,29,35,2,NULL),(2508,34,35,2,NULL),(2509,36,35,2,NULL),(2510,41,35,2,NULL),(2511,45,35,2,NULL),(2512,45,35,2,NULL),(2513,51,35,2,NULL),(2514,51,35,2,NULL),(2515,55,35,2,NULL),(2516,59,35,2,NULL),(2517,62,35,2,NULL),(2518,66,35,2,NULL),(2519,70,35,2,NULL),(2520,74,35,2,NULL),(2521,79,35,2,NULL),(2522,82,35,2,NULL),(2523,82,35,2,NULL),(2524,86,35,2,NULL),(2525,91,35,2,NULL),(2526,97,35,2,NULL),(2527,100,35,2,NULL),(2528,100,35,2,NULL),(2529,103,35,2,NULL),(2530,104,35,2,NULL),(2531,104,35,2,NULL),(2532,111,35,2,NULL),(2533,111,35,2,NULL),(2534,115,35,2,NULL),(2535,117,35,2,NULL),(2536,121,35,2,NULL),(2537,128,35,2,NULL),(2538,128,35,2,NULL),(2539,130,35,2,NULL),(2540,134,35,2,NULL),(2541,136,35,2,NULL),(2542,140,35,2,NULL),(2543,144,35,2,NULL),(2544,17,19,2,NULL),(2545,17,19,2,NULL),(2546,17,25,2,NULL),(2547,17,29,2,NULL),(2548,17,1,2,NULL),(2549,15,12,2,NULL),(2550,18,12,2,NULL),(2551,21,12,2,NULL),(2552,24,12,2,NULL),(2553,28,12,2,NULL),(2554,28,12,2,NULL),(2555,32,12,2,NULL),(2556,32,12,2,NULL),(2557,37,12,2,NULL),(2558,37,12,2,NULL),(2559,42,12,2,NULL),(2560,42,12,2,NULL),(2561,46,12,2,NULL),(2562,49,12,2,NULL),(2563,53,12,2,NULL),(2564,57,12,2,NULL),(2565,57,12,2,NULL),(2566,61,12,2,NULL),(2567,61,12,2,NULL),(2568,65,12,2,NULL),(2569,69,12,2,NULL),(2570,75,12,2,NULL),(2571,80,12,2,NULL),(2572,83,12,2,NULL),(2573,83,12,2,NULL),(2574,88,12,2,NULL),(2575,92,12,2,NULL),(2576,92,12,2,NULL),(2577,94,12,2,NULL),(2578,94,12,2,NULL),(2579,96,12,2,NULL),(2580,101,12,2,NULL),(2581,106,12,2,NULL),(2582,109,12,2,NULL),(2583,114,12,2,NULL),(2584,119,12,2,NULL),(2585,123,12,2,NULL),(2586,125,12,2,NULL),(2587,129,12,2,NULL),(2588,129,12,2,NULL),(2589,132,12,2,NULL),(2590,132,12,2,NULL),(2591,137,12,2,NULL),(2592,141,12,2,NULL),(2593,17,24,2,NULL),(2594,17,26,2,NULL),(2595,17,27,2,NULL),(2596,17,5,2,NULL),(2597,17,4,2,NULL),(2598,17,6,2,NULL),(2599,149,12,2,NULL),(2600,149,12,2,NULL),(2601,19,12,2,NULL),(2602,19,12,2,NULL),(2603,23,12,2,NULL),(2604,23,12,2,NULL),(2605,27,12,2,NULL),(2606,27,12,2,NULL),(2607,31,12,2,NULL),(2608,31,12,2,NULL),(2609,35,12,2,NULL),(2610,35,12,2,NULL),(2611,39,12,2,NULL),(2612,39,12,2,NULL),(2613,43,12,2,NULL),(2614,43,12,2,NULL),(2615,48,12,2,NULL),(2616,48,12,2,NULL),(2617,52,12,2,NULL),(2618,52,12,2,NULL),(2619,56,12,2,NULL),(2620,56,12,2,NULL),(2621,60,12,2,NULL),(2622,60,12,2,NULL),(2623,64,12,2,NULL),(2624,67,12,2,NULL),(2625,71,12,2,NULL),(2626,76,12,2,NULL),(2627,81,12,2,NULL),(2628,81,12,2,NULL),(2629,84,12,2,NULL),(2630,89,12,2,NULL),(2631,93,12,2,NULL),(2632,95,12,2,NULL),(2633,95,12,2,NULL),(2634,99,12,2,NULL),(2635,102,12,2,NULL),(2636,102,12,2,NULL),(2637,108,12,2,NULL),(2638,112,12,2,NULL),(2639,116,12,2,NULL),(2640,120,12,2,NULL),(2641,120,12,2,NULL),(2642,124,12,2,NULL),(2643,127,12,2,NULL),(2644,127,12,2,NULL),(2645,131,12,2,NULL),(2646,133,12,2,NULL),(2647,133,12,2,NULL),(2648,139,12,2,NULL),(2649,142,12,2,NULL),(2650,17,23,2,NULL),(2651,17,28,2,NULL),(2652,17,28,2,NULL),(2653,17,30,2,NULL),(2654,17,33,2,NULL),(2655,17,34,2,NULL),(2656,17,35,2,NULL),(2657,13,12,2,NULL),(2658,13,13,2,NULL),(2659,13,14,2,NULL),(2660,13,15,2,NULL),(2661,13,16,2,NULL),(2662,13,18,2,NULL),(2663,15,19,2,NULL),(2664,15,19,2,NULL),(2665,18,19,2,NULL),(2666,21,19,2,NULL),(2667,24,19,2,NULL),(2668,24,19,2,NULL),(2669,28,19,2,NULL),(2670,32,19,2,NULL),(2671,37,19,2,NULL),(2672,42,19,2,NULL),(2673,42,19,2,NULL),(2674,46,19,2,NULL),(2675,49,19,2,NULL),(2676,53,19,2,NULL),(2677,57,19,2,NULL),(2678,61,19,2,NULL),(2679,61,19,2,NULL),(2680,65,19,2,NULL),(2681,69,19,2,NULL),(2682,69,19,2,NULL),(2683,75,19,2,NULL),(2684,80,19,2,NULL),(2685,83,19,2,NULL),(2686,88,19,2,NULL),(2687,92,19,2,NULL),(2688,94,19,2,NULL),(2689,96,19,2,NULL),(2690,101,19,2,NULL),(2691,106,19,2,NULL),(2692,109,19,2,NULL),(2693,114,19,2,NULL),(2694,119,19,2,NULL),(2695,123,19,2,NULL),(2696,125,19,2,NULL),(2697,129,19,2,NULL),(2698,132,19,2,NULL),(2699,137,19,2,NULL),(2700,141,19,2,NULL),(2701,7,19,2,NULL),(2702,149,19,2,NULL),(2703,19,19,2,NULL),(2704,23,19,2,NULL),(2705,23,19,2,NULL),(2706,27,19,2,NULL),(2707,27,19,2,NULL),(2708,31,19,2,NULL),(2709,35,19,2,NULL),(2710,39,19,2,NULL),(2711,43,19,2,NULL),(2712,48,19,2,NULL),(2713,48,19,2,NULL),(2714,52,19,2,NULL),(2715,56,19,2,NULL),(2716,60,19,2,NULL),(2717,64,19,2,NULL),(2718,67,19,2,NULL),(2719,71,19,2,NULL),(2720,76,19,2,NULL),(2721,81,19,2,NULL),(2722,84,19,2,NULL),(2723,89,19,2,NULL),(2724,93,19,2,NULL),(2725,95,19,2,NULL),(2726,99,19,2,NULL),(2727,102,19,2,NULL),(2728,108,19,2,NULL),(2729,112,19,2,NULL),(2730,116,19,2,NULL),(2731,120,19,2,NULL),(2732,124,19,2,NULL),(2733,127,19,2,NULL),(2734,131,19,2,NULL),(2735,133,19,2,NULL),(2736,139,19,2,NULL),(2737,142,19,2,NULL),(2738,14,19,2,NULL),(2739,152,19,2,NULL),(2740,15,25,2,NULL),(2741,15,25,2,NULL),(2742,18,25,2,NULL),(2743,21,25,2,NULL),(2744,24,25,2,NULL),(2745,28,25,2,NULL),(2746,32,25,2,NULL),(2747,37,25,2,NULL),(2748,42,25,2,NULL),(2749,46,25,2,NULL),(2750,49,25,2,NULL),(2751,53,25,2,NULL),(2752,57,25,2,NULL),(2753,61,25,2,NULL),(2754,65,25,2,NULL),(2755,69,25,2,NULL),(2756,75,25,2,NULL),(2757,80,25,2,NULL),(2758,83,25,2,NULL),(2759,88,25,2,NULL),(2760,92,25,2,NULL),(2761,94,25,2,NULL),(2762,96,25,2,NULL),(2763,101,25,2,NULL),(2764,106,25,2,NULL),(2765,109,25,2,NULL),(2766,114,25,2,NULL),(2767,119,25,2,NULL),(2768,123,25,2,NULL),(2769,125,25,2,NULL),(2770,129,25,2,NULL),(2771,132,25,2,NULL),(2772,137,25,2,NULL),(2773,141,25,2,NULL),(2774,7,25,2,NULL),(2775,149,25,2,NULL),(2776,19,25,2,NULL),(2777,23,25,2,NULL),(2778,27,25,2,NULL),(2779,31,25,2,NULL),(2780,35,25,2,NULL),(2781,39,25,2,NULL),(2782,43,25,2,NULL),(2783,48,25,2,NULL),(2784,52,25,2,NULL),(2785,56,25,2,NULL),(2786,60,25,2,NULL),(2787,64,25,2,NULL),(2788,67,25,2,NULL),(2789,71,25,2,NULL),(2790,76,25,2,NULL),(2791,81,25,2,NULL),(2792,84,25,2,NULL),(2793,89,25,2,NULL),(2794,93,25,2,NULL),(2795,95,25,2,NULL),(2796,99,25,2,NULL),(2797,102,25,2,NULL),(2798,108,25,2,NULL),(2799,112,25,2,NULL),(2800,116,25,2,NULL),(2801,120,25,2,NULL),(2802,124,25,2,NULL),(2803,127,25,2,NULL),(2804,131,25,2,NULL),(2805,133,25,2,NULL),(2806,139,25,2,NULL),(2807,142,25,2,NULL),(2808,14,25,2,NULL),(2809,152,25,2,NULL),(2810,15,29,2,NULL),(2811,15,29,2,NULL),(2812,18,29,2,NULL),(2813,21,29,2,NULL),(2814,24,29,2,NULL),(2815,28,29,2,NULL),(2816,32,29,2,NULL),(2817,37,29,2,NULL),(2818,42,29,2,NULL),(2819,46,29,2,NULL),(2820,49,29,2,NULL),(2821,53,29,2,NULL),(2822,57,29,2,NULL),(2823,61,29,2,NULL),(2824,65,29,2,NULL),(2825,69,29,2,NULL),(2826,75,29,2,NULL),(2827,80,29,2,NULL),(2828,83,29,2,NULL),(2829,88,29,2,NULL),(2830,92,29,2,NULL),(2831,94,29,2,NULL),(2832,96,29,2,NULL),(2833,101,29,2,NULL),(2834,106,29,2,NULL),(2835,109,29,2,NULL),(2836,114,29,2,NULL),(2837,119,29,2,NULL),(2838,123,29,2,NULL),(2839,125,29,2,NULL),(2840,129,29,2,NULL),(2841,132,29,2,NULL),(2842,137,29,2,NULL),(2843,141,29,2,NULL),(2844,7,29,2,NULL),(2845,149,29,2,NULL),(2846,19,29,2,NULL),(2847,23,29,2,NULL),(2848,27,29,2,NULL),(2849,31,29,2,NULL),(2850,35,29,2,NULL),(2851,39,29,2,NULL),(2852,43,29,2,NULL),(2853,48,29,2,NULL),(2854,52,29,2,NULL),(2855,56,29,2,NULL),(2856,60,29,2,NULL),(2857,64,29,2,NULL),(2858,67,29,2,NULL),(2859,71,29,2,NULL),(2860,76,29,2,NULL),(2861,81,29,2,NULL),(2862,84,29,2,NULL),(2863,89,29,2,NULL),(2864,93,29,2,NULL),(2865,95,29,2,NULL),(2866,99,29,2,NULL),(2867,102,29,2,NULL),(2868,108,29,2,NULL),(2869,112,29,2,NULL),(2870,116,29,2,NULL),(2871,120,29,2,NULL),(2872,124,29,2,NULL),(2873,127,29,2,NULL),(2874,131,29,2,NULL),(2875,133,29,2,NULL),(2876,139,29,2,NULL),(2877,142,29,2,NULL),(2878,14,29,2,NULL),(2879,152,29,2,NULL),(2880,11,7,2,NULL),(2881,11,8,2,NULL),(2882,11,9,2,NULL),(2883,11,10,2,NULL),(2884,11,11,2,NULL),(2885,11,17,2,NULL),(2886,150,12,2,NULL),(2887,150,13,2,NULL),(2888,150,14,2,NULL),(2889,150,15,2,NULL),(2890,150,16,2,NULL),(2891,150,18,2,NULL),(2892,150,18,2,NULL),(2893,18,1,2,NULL),(2894,21,1,2,NULL),(2895,24,1,2,NULL),(2896,28,1,2,NULL),(2897,28,1,2,NULL),(2898,32,1,2,NULL),(2899,37,1,2,NULL),(2900,42,1,2,NULL),(2901,46,1,2,NULL),(2902,49,1,2,NULL),(2903,53,1,2,NULL),(2904,57,1,2,NULL),(2905,61,1,2,NULL),(2906,65,1,2,NULL),(2907,69,1,2,NULL),(2908,75,1,2,NULL),(2909,80,1,2,NULL),(2910,83,1,2,NULL),(2911,88,1,2,NULL),(2912,92,1,2,NULL),(2913,94,1,2,NULL),(2914,96,1,2,NULL),(2915,101,1,2,NULL),(2916,106,1,2,NULL),(2917,109,1,2,NULL),(2918,114,1,2,NULL),(2919,119,1,2,NULL),(2920,123,1,2,NULL),(2921,125,1,2,NULL),(2922,129,1,2,NULL),(2923,132,1,2,NULL),(2924,137,1,2,NULL),(2925,141,1,2,NULL),(2926,15,14,2,NULL),(2927,7,1,2,NULL),(2928,15,24,2,NULL),(2929,15,26,2,NULL),(2930,15,27,2,NULL),(2931,15,16,2,NULL),(2932,15,15,2,NULL),(2933,19,1,2,NULL),(2934,23,1,2,NULL),(2935,27,1,2,NULL),(2936,31,1,2,NULL),(2937,35,1,2,NULL),(2938,39,1,2,NULL),(2939,43,1,2,NULL),(2940,48,1,2,NULL),(2941,52,1,2,NULL),(2942,56,1,2,NULL),(2943,60,1,2,NULL),(2944,64,1,2,NULL),(2945,67,1,2,NULL),(2946,71,1,2,NULL),(2947,76,1,2,NULL),(2948,81,1,2,NULL),(2949,84,1,2,NULL),(2950,89,1,2,NULL),(2951,93,1,2,NULL),(2952,95,1,2,NULL),(2953,99,1,2,NULL),(2954,102,1,2,NULL),(2955,108,1,2,NULL),(2956,112,1,2,NULL),(2957,116,1,2,NULL),(2958,120,1,2,NULL),(2959,124,1,2,NULL),(2960,127,1,2,NULL),(2961,131,1,2,NULL),(2962,133,1,2,NULL),(2963,139,1,2,NULL),(2964,142,1,2,NULL),(2965,15,18,2,NULL),(2966,14,1,2,NULL),(2967,152,1,2,NULL),(2968,15,23,2,NULL),(2969,15,28,2,NULL),(2970,15,30,2,NULL),(2971,15,33,2,NULL),(2972,15,34,2,NULL),(2973,15,35,2,NULL),(2974,18,14,2,NULL),(2975,18,14,2,NULL),(2976,21,14,2,NULL),(2977,21,14,2,NULL),(2978,24,14,2,NULL),(2979,28,14,2,NULL),(2980,32,14,2,NULL),(2981,37,14,2,NULL),(2982,42,14,2,NULL),(2983,46,14,2,NULL),(2984,49,14,2,NULL),(2985,53,14,2,NULL),(2986,57,14,2,NULL),(2987,61,14,2,NULL),(2988,65,14,2,NULL),(2989,69,14,2,NULL),(2990,75,14,2,NULL),(2991,80,14,2,NULL),(2992,83,14,2,NULL),(2993,88,14,2,NULL),(2994,92,14,2,NULL),(2995,94,14,2,NULL),(2996,96,14,2,NULL),(2997,101,14,2,NULL),(2998,106,14,2,NULL),(2999,109,14,2,NULL),(3000,114,14,2,NULL),(3001,119,14,2,NULL),(3002,123,14,2,NULL),(3003,125,14,2,NULL),(3004,129,14,2,NULL),(3005,132,14,2,NULL),(3006,137,14,2,NULL),(3007,141,14,2,NULL),(3008,18,24,2,NULL),(3009,21,24,2,NULL),(3010,24,24,2,NULL),(3011,28,24,2,NULL),(3012,32,24,2,NULL),(3013,37,24,2,NULL),(3014,42,24,2,NULL),(3015,46,24,2,NULL),(3016,49,24,2,NULL),(3017,53,24,2,NULL),(3018,57,24,2,NULL),(3019,61,24,2,NULL),(3020,65,24,2,NULL),(3021,69,24,2,NULL),(3022,75,24,2,NULL),(3023,80,24,2,NULL),(3024,83,24,2,NULL),(3025,88,24,2,NULL),(3026,92,24,2,NULL),(3027,94,24,2,NULL),(3028,96,24,2,NULL),(3029,101,24,2,NULL),(3030,106,24,2,NULL),(3031,109,24,2,NULL),(3032,114,24,2,NULL),(3033,119,24,2,NULL),(3034,123,24,2,NULL),(3035,125,24,2,NULL),(3036,129,24,2,NULL),(3037,132,24,2,NULL),(3038,137,24,2,NULL),(3039,141,24,2,NULL),(3040,18,26,2,NULL),(3041,21,26,2,NULL),(3042,24,26,2,NULL),(3043,28,26,2,NULL),(3044,32,26,2,NULL),(3045,37,26,2,NULL),(3046,42,26,2,NULL),(3047,46,26,2,NULL),(3048,49,26,2,NULL),(3049,53,26,2,NULL),(3050,57,26,2,NULL),(3051,61,26,2,NULL),(3052,65,26,2,NULL),(3053,69,26,2,NULL),(3054,75,26,2,NULL),(3055,80,26,2,NULL),(3056,83,26,2,NULL),(3057,88,26,2,NULL),(3058,88,26,2,NULL),(3059,92,26,2,NULL),(3060,92,26,2,NULL),(3061,94,26,2,NULL),(3062,94,26,2,NULL),(3063,96,26,2,NULL),(3064,96,26,2,NULL),(3065,101,26,2,NULL),(3066,106,26,2,NULL),(3067,109,26,2,NULL),(3068,109,26,2,NULL),(3069,114,26,2,NULL),(3070,119,26,2,NULL),(3071,123,26,2,NULL),(3072,125,26,2,NULL),(3073,129,26,2,NULL),(3074,132,26,2,NULL),(3075,137,26,2,NULL),(3076,141,26,2,NULL),(3077,18,27,2,NULL),(3078,21,27,2,NULL),(3079,24,27,2,NULL),(3080,28,27,2,NULL),(3081,32,27,2,NULL),(3082,37,27,2,NULL),(3083,42,27,2,NULL),(3084,46,27,2,NULL),(3085,49,27,2,NULL),(3086,53,27,2,NULL),(3087,57,27,2,NULL),(3088,61,27,2,NULL),(3089,65,27,2,NULL),(3090,69,27,2,NULL),(3091,75,27,2,NULL),(3092,80,27,2,NULL),(3093,83,27,2,NULL),(3094,88,27,2,NULL),(3095,92,27,2,NULL),(3096,94,27,2,NULL),(3097,96,27,2,NULL),(3098,101,27,2,NULL),(3099,106,27,2,NULL),(3100,109,27,2,NULL),(3101,114,27,2,NULL),(3102,119,27,2,NULL),(3103,123,27,2,NULL),(3104,125,27,2,NULL),(3105,129,27,2,NULL),(3106,132,27,2,NULL),(3107,137,27,2,NULL),(3108,141,27,2,NULL),(3109,18,5,2,NULL),(3110,21,5,2,NULL),(3111,24,5,2,NULL),(3112,28,5,2,NULL),(3113,32,5,2,NULL),(3114,37,5,2,NULL),(3115,42,5,2,NULL),(3116,46,5,2,NULL),(3117,49,5,2,NULL),(3118,53,5,2,NULL),(3119,57,5,2,NULL),(3120,61,5,2,NULL),(3121,65,5,2,NULL),(3122,69,5,2,NULL),(3123,75,5,2,NULL),(3124,80,5,2,NULL),(3125,83,5,2,NULL),(3126,88,5,2,NULL),(3127,92,5,2,NULL),(3128,94,5,2,NULL),(3129,96,5,2,NULL),(3130,101,5,2,NULL),(3131,106,5,2,NULL),(3132,109,5,2,NULL),(3133,114,5,2,NULL),(3134,119,5,2,NULL),(3135,123,5,2,NULL),(3136,125,5,2,NULL),(3137,129,5,2,NULL),(3138,132,5,2,NULL),(3139,137,5,2,NULL),(3140,141,5,2,NULL),(3141,18,16,2,NULL),(3142,21,16,2,NULL),(3143,24,16,2,NULL),(3144,28,16,2,NULL),(3145,32,16,2,NULL),(3146,37,16,2,NULL),(3147,42,16,2,NULL),(3148,46,16,2,NULL),(3149,49,16,2,NULL),(3150,53,16,2,NULL),(3151,57,16,2,NULL),(3152,61,16,2,NULL),(3153,65,16,2,NULL),(3154,69,16,2,NULL),(3155,75,16,2,NULL),(3156,80,16,2,NULL),(3157,83,16,2,NULL),(3158,88,16,2,NULL),(3159,92,16,2,NULL),(3160,94,16,2,NULL),(3161,96,16,2,NULL),(3162,101,16,2,NULL),(3163,106,16,2,NULL),(3164,109,16,2,NULL),(3165,114,16,2,NULL),(3166,119,16,2,NULL),(3167,123,16,2,NULL),(3168,125,16,2,NULL),(3169,129,16,2,NULL),(3170,132,16,2,NULL),(3171,137,16,2,NULL),(3172,141,16,2,NULL),(3173,18,4,2,NULL),(3174,21,4,2,NULL),(3175,24,4,2,NULL),(3176,28,4,2,NULL),(3177,32,4,2,NULL),(3178,37,4,2,NULL),(3179,42,4,2,NULL),(3180,46,4,2,NULL),(3181,49,4,2,NULL),(3182,49,4,2,NULL),(3183,53,4,2,NULL),(3184,53,4,2,NULL),(3185,57,4,2,NULL),(3186,57,4,2,NULL),(3187,61,4,2,NULL),(3188,61,4,2,NULL),(3189,65,4,2,NULL),(3190,65,4,2,NULL),(3191,69,4,2,NULL),(3192,69,4,2,NULL),(3193,75,4,2,NULL),(3194,75,4,2,NULL),(3195,80,4,2,NULL),(3196,80,4,2,NULL),(3197,83,4,2,NULL),(3198,83,4,2,NULL),(3199,88,4,2,NULL),(3200,88,4,2,NULL),(3201,92,4,2,NULL),(3202,92,4,2,NULL),(3203,94,4,2,NULL),(3204,94,4,2,NULL),(3205,96,4,2,NULL),(3206,96,4,2,NULL),(3207,101,4,2,NULL),(3208,101,4,2,NULL),(3209,106,4,2,NULL),(3210,106,4,2,NULL),(3211,109,4,2,NULL),(3212,109,4,2,NULL),(3213,114,4,2,NULL),(3214,119,4,2,NULL),(3215,123,4,2,NULL),(3216,125,4,2,NULL),(3217,129,4,2,NULL),(3218,132,4,2,NULL),(3219,137,4,2,NULL),(3220,141,4,2,NULL),(3221,18,15,2,NULL),(3222,18,15,2,NULL),(3223,21,15,2,NULL),(3224,24,15,2,NULL),(3225,28,15,2,NULL),(3226,32,15,2,NULL),(3227,37,15,2,NULL),(3228,42,15,2,NULL),(3229,46,15,2,NULL),(3230,49,15,2,NULL),(3231,53,15,2,NULL),(3232,57,15,2,NULL),(3233,61,15,2,NULL),(3234,61,15,2,NULL),(3235,65,15,2,NULL),(3236,65,15,2,NULL),(3237,69,15,2,NULL),(3238,69,15,2,NULL),(3239,75,15,2,NULL),(3240,75,15,2,NULL),(3241,80,15,2,NULL),(3242,80,15,2,NULL),(3243,83,15,2,NULL),(3244,83,15,2,NULL),(3245,88,15,2,NULL),(3246,88,15,2,NULL),(3247,92,15,2,NULL),(3248,92,15,2,NULL),(3249,94,15,2,NULL),(3250,94,15,2,NULL),(3251,96,15,2,NULL),(3252,96,15,2,NULL),(3253,101,15,2,NULL),(3254,101,15,2,NULL),(3255,106,15,2,NULL),(3256,106,15,2,NULL),(3257,109,15,2,NULL),(3258,109,15,2,NULL),(3259,114,15,2,NULL),(3260,114,15,2,NULL),(3261,119,15,2,NULL),(3262,119,15,2,NULL),(3263,123,15,2,NULL),(3264,123,15,2,NULL),(3265,125,15,2,NULL),(3266,125,15,2,NULL),(3267,129,15,2,NULL),(3268,132,15,2,NULL),(3269,137,15,2,NULL),(3270,137,15,2,NULL),(3271,141,15,2,NULL),(3272,141,15,2,NULL),(3273,18,6,2,NULL),(3274,18,6,2,NULL),(3275,21,6,2,NULL),(3276,21,6,2,NULL),(3277,24,6,2,NULL),(3278,24,6,2,NULL),(3279,28,6,2,NULL),(3280,28,6,2,NULL),(3281,32,6,2,NULL),(3282,32,6,2,NULL),(3283,37,6,2,NULL),(3284,42,6,2,NULL),(3285,46,6,2,NULL),(3286,49,6,2,NULL),(3287,49,6,2,NULL),(3288,53,6,2,NULL),(3289,57,6,2,NULL),(3290,61,6,2,NULL),(3291,65,6,2,NULL),(3292,69,6,2,NULL),(3293,75,6,2,NULL),(3294,80,6,2,NULL),(3295,83,6,2,NULL),(3296,88,6,2,NULL),(3297,92,6,2,NULL),(3298,94,6,2,NULL),(3299,96,6,2,NULL),(3300,101,6,2,NULL),(3301,106,6,2,NULL),(3302,109,6,2,NULL),(3303,114,6,2,NULL),(3304,119,6,2,NULL),(3305,123,6,2,NULL),(3306,125,6,2,NULL),(3307,129,6,2,NULL),(3308,132,6,2,NULL),(3309,137,6,2,NULL),(3310,141,6,2,NULL),(3311,18,18,2,NULL),(3312,21,18,2,NULL),(3313,24,18,2,NULL),(3314,28,18,2,NULL),(3315,32,18,2,NULL),(3316,37,18,2,NULL),(3317,42,18,2,NULL),(3318,46,18,2,NULL),(3319,49,18,2,NULL),(3320,53,18,2,NULL),(3321,57,18,2,NULL),(3322,61,18,2,NULL),(3323,65,18,2,NULL),(3324,69,18,2,NULL),(3325,75,18,2,NULL),(3326,80,18,2,NULL),(3327,83,18,2,NULL),(3328,88,18,2,NULL),(3329,92,18,2,NULL),(3330,94,18,2,NULL),(3331,96,18,2,NULL),(3332,101,18,2,NULL),(3333,106,18,2,NULL),(3334,109,18,2,NULL),(3335,114,18,2,NULL),(3336,119,18,2,NULL),(3337,123,18,2,NULL),(3338,125,18,2,NULL),(3339,129,18,2,NULL),(3340,132,18,2,NULL),(3341,137,18,2,NULL),(3342,141,18,2,NULL),(3343,18,23,2,NULL),(3344,21,23,2,NULL),(3345,24,23,2,NULL),(3346,28,23,2,NULL),(3347,32,23,2,NULL),(3348,37,23,2,NULL),(3349,42,23,2,NULL),(3350,46,23,2,NULL),(3351,49,23,2,NULL),(3352,53,23,2,NULL),(3353,57,23,2,NULL),(3354,61,23,2,NULL),(3355,65,23,2,NULL),(3356,69,23,2,NULL),(3357,75,23,2,NULL),(3358,80,23,2,NULL),(3359,83,23,2,NULL),(3360,88,23,2,NULL),(3361,92,23,2,NULL),(3362,94,23,2,NULL),(3363,96,23,2,NULL),(3364,101,23,2,NULL),(3365,106,23,2,NULL),(3366,109,23,2,NULL),(3367,114,23,2,NULL),(3368,119,23,2,NULL),(3369,123,23,2,NULL),(3370,125,23,2,NULL),(3371,129,23,2,NULL),(3372,132,23,2,NULL),(3373,137,23,2,NULL),(3374,141,23,2,NULL),(3375,18,28,2,NULL),(3376,21,28,2,NULL),(3377,24,28,2,NULL),(3378,28,28,2,NULL),(3379,32,28,2,NULL),(3380,37,28,2,NULL),(3381,42,28,2,NULL),(3382,46,28,2,NULL),(3383,49,28,2,NULL),(3384,53,28,2,NULL),(3385,57,28,2,NULL),(3386,61,28,2,NULL),(3387,65,28,2,NULL),(3388,69,28,2,NULL),(3389,75,28,2,NULL),(3390,80,28,2,NULL),(3391,83,28,2,NULL),(3392,88,28,2,NULL),(3393,92,28,2,NULL),(3394,94,28,2,NULL),(3395,96,28,2,NULL),(3396,101,28,2,NULL),(3397,106,28,2,NULL),(3398,109,28,2,NULL),(3399,114,28,2,NULL),(3400,119,28,2,NULL),(3401,123,28,2,NULL),(3402,125,28,2,NULL),(3403,129,28,2,NULL),(3404,132,28,2,NULL),(3405,137,28,2,NULL),(3406,141,28,2,NULL),(3407,18,30,2,NULL),(3408,21,30,2,NULL),(3409,24,30,2,NULL),(3410,28,30,2,NULL),(3411,32,30,2,NULL),(3412,37,30,2,NULL),(3413,42,30,2,NULL),(3414,46,30,2,NULL),(3415,49,30,2,NULL),(3416,53,30,2,NULL),(3417,57,30,2,NULL),(3418,61,30,2,NULL),(3419,65,30,2,NULL),(3420,69,30,2,NULL),(3421,75,30,2,NULL),(3422,80,30,2,NULL),(3423,83,30,2,NULL),(3424,88,30,2,NULL),(3425,92,30,2,NULL),(3426,94,30,2,NULL),(3427,96,30,2,NULL),(3428,101,30,2,NULL),(3429,106,30,2,NULL),(3430,109,30,2,NULL),(3431,114,30,2,NULL),(3432,119,30,2,NULL),(3433,123,30,2,NULL),(3434,125,30,2,NULL),(3435,129,30,2,NULL),(3436,132,30,2,NULL),(3437,137,30,2,NULL),(3438,141,30,2,NULL),(3439,18,33,2,NULL),(3440,21,33,2,NULL),(3441,24,33,2,NULL),(3442,28,33,2,NULL),(3443,32,33,2,NULL),(3444,37,33,2,NULL),(3445,42,33,2,NULL),(3446,46,33,2,NULL),(3447,49,33,2,NULL),(3448,53,33,2,NULL),(3449,57,33,2,NULL),(3450,61,33,2,NULL),(3451,65,33,2,NULL),(3452,69,33,2,NULL),(3453,75,33,2,NULL),(3454,80,33,2,NULL),(3455,83,33,2,NULL),(3456,88,33,2,NULL),(3457,92,33,2,NULL),(3458,94,33,2,NULL),(3459,96,33,2,NULL),(3460,101,33,2,NULL),(3461,106,33,2,NULL),(3462,109,33,2,NULL),(3463,114,33,2,NULL),(3464,119,33,2,NULL),(3465,123,33,2,NULL),(3466,125,33,2,NULL),(3467,129,33,2,NULL),(3468,132,33,2,NULL),(3469,137,33,2,NULL),(3470,141,33,2,NULL),(3471,18,34,2,NULL),(3472,21,34,2,NULL),(3473,24,34,2,NULL),(3474,28,34,2,NULL),(3475,32,34,2,NULL),(3476,37,34,2,NULL),(3477,42,34,2,NULL),(3478,46,34,2,NULL),(3479,49,34,2,NULL),(3480,53,34,2,NULL),(3481,57,34,2,NULL),(3482,61,34,2,NULL),(3483,65,34,2,NULL),(3484,69,34,2,NULL),(3485,75,34,2,NULL),(3486,80,34,2,NULL),(3487,83,34,2,NULL),(3488,88,34,2,NULL),(3489,92,34,2,NULL),(3490,94,34,2,NULL),(3491,96,34,2,NULL),(3492,101,34,2,NULL),(3493,106,34,2,NULL),(3494,109,34,2,NULL),(3495,114,34,2,NULL),(3496,119,34,2,NULL),(3497,123,34,2,NULL),(3498,125,34,2,NULL),(3499,129,34,2,NULL),(3500,132,34,2,NULL),(3501,137,34,2,NULL),(3502,141,34,2,NULL),(3503,18,35,2,NULL),(3504,21,35,2,NULL),(3505,24,35,2,NULL),(3506,28,35,2,NULL),(3507,32,35,2,NULL),(3508,37,35,2,NULL),(3509,42,35,2,NULL),(3510,46,35,2,NULL),(3511,49,35,2,NULL),(3512,53,35,2,NULL),(3513,57,35,2,NULL),(3514,61,35,2,NULL),(3515,61,35,2,NULL),(3516,65,35,2,NULL),(3517,69,35,2,NULL),(3518,75,35,2,NULL),(3519,75,35,2,NULL),(3520,80,35,2,NULL),(3521,80,35,2,NULL),(3522,83,35,2,NULL),(3523,83,35,2,NULL),(3524,88,35,2,NULL),(3525,92,35,2,NULL),(3526,94,35,2,NULL),(3527,94,35,2,NULL),(3528,96,35,2,NULL),(3529,96,35,2,NULL),(3530,101,35,2,NULL),(3531,106,35,2,NULL),(3532,109,35,2,NULL),(3533,114,35,2,NULL),(3534,119,35,2,NULL),(3535,123,35,2,NULL),(3536,125,35,2,NULL),(3537,129,35,2,NULL),(3538,132,35,2,NULL),(3539,137,35,2,NULL),(3540,141,35,2,NULL),(3541,7,24,2,NULL),(3542,7,26,2,NULL),(3543,7,24,2,NULL),(3544,7,27,2,NULL),(3545,7,5,2,NULL),(3546,7,4,2,NULL),(3547,7,6,2,NULL),(3548,149,14,2,NULL),(3549,19,14,2,NULL),(3550,23,14,2,NULL),(3551,27,14,2,NULL),(3552,31,14,2,NULL),(3553,35,14,2,NULL),(3554,39,14,2,NULL),(3555,43,14,2,NULL),(3556,48,14,2,NULL),(3557,52,14,2,NULL),(3558,56,14,2,NULL),(3559,60,14,2,NULL),(3560,64,14,2,NULL),(3561,67,14,2,NULL),(3562,71,14,2,NULL),(3563,76,14,2,NULL),(3564,81,14,2,NULL),(3565,84,14,2,NULL),(3566,89,14,2,NULL),(3567,93,14,2,NULL),(3568,95,14,2,NULL),(3569,99,14,2,NULL),(3570,102,14,2,NULL),(3571,108,14,2,NULL),(3572,112,14,2,NULL),(3573,116,14,2,NULL),(3574,120,14,2,NULL),(3575,124,14,2,NULL),(3576,127,14,2,NULL),(3577,131,14,2,NULL),(3578,133,14,2,NULL),(3579,139,14,2,NULL),(3580,142,14,2,NULL),(3581,7,23,2,NULL),(3582,7,28,2,NULL),(3583,7,30,2,NULL),(3584,7,33,2,NULL),(3585,7,34,2,NULL),(3586,7,35,2,NULL),(3587,147,12,2,NULL),(3588,147,13,2,NULL),(3589,147,14,2,NULL),(3590,147,15,2,NULL),(3591,147,16,2,NULL),(3592,147,18,2,NULL),(3593,149,24,2,NULL),(3594,149,24,2,NULL),(3595,19,24,2,NULL),(3596,19,24,2,NULL),(3597,23,24,2,NULL),(3598,23,24,2,NULL),(3599,27,24,2,NULL),(3600,27,24,2,NULL),(3601,31,24,2,NULL),(3602,31,24,2,NULL),(3603,35,24,2,NULL),(3604,35,24,2,NULL),(3605,39,24,2,NULL),(3606,39,24,2,NULL),(3607,43,24,2,NULL),(3608,43,24,2,NULL),(3609,48,24,2,NULL),(3610,48,24,2,NULL),(3611,52,24,2,NULL),(3612,52,24,2,NULL),(3613,56,24,2,NULL),(3614,56,24,2,NULL),(3615,60,24,2,NULL),(3616,60,24,2,NULL),(3617,64,24,2,NULL),(3618,64,24,2,NULL),(3619,67,24,2,NULL),(3620,67,24,2,NULL),(3621,71,24,2,NULL),(3622,71,24,2,NULL),(3623,76,24,2,NULL),(3624,76,24,2,NULL),(3625,81,24,2,NULL),(3626,81,24,2,NULL),(3627,84,24,2,NULL),(3628,84,24,2,NULL),(3629,89,24,2,NULL),(3630,89,24,2,NULL),(3631,93,24,2,NULL),(3632,93,24,2,NULL),(3633,95,24,2,NULL),(3634,95,24,2,NULL),(3635,99,24,2,NULL),(3636,99,24,2,NULL),(3637,102,24,2,NULL),(3638,102,24,2,NULL),(3639,108,24,2,NULL),(3640,108,24,2,NULL),(3641,112,24,2,NULL),(3642,112,24,2,NULL),(3643,116,24,2,NULL),(3644,116,24,2,NULL),(3645,120,24,2,NULL),(3646,120,24,2,NULL),(3647,124,24,2,NULL),(3648,124,24,2,NULL),(3649,127,24,2,NULL),(3650,127,24,2,NULL),(3651,131,24,2,NULL),(3652,131,24,2,NULL),(3653,133,24,2,NULL),(3654,133,24,2,NULL),(3655,139,24,2,NULL),(3656,139,24,2,NULL),(3657,142,24,2,NULL),(3658,142,24,2,NULL),(3659,14,24,2,NULL),(3660,14,24,2,NULL),(3661,152,24,2,NULL),(3662,152,24,2,NULL),(3663,149,26,2,NULL),(3664,149,26,2,NULL),(3665,19,26,2,NULL),(3666,19,26,2,NULL),(3667,23,26,2,NULL),(3668,23,26,2,NULL),(3669,27,26,2,NULL),(3670,27,26,2,NULL),(3671,31,26,2,NULL),(3672,31,26,2,NULL),(3673,35,26,2,NULL),(3674,35,26,2,NULL),(3675,39,26,2,NULL),(3676,39,26,2,NULL),(3677,43,26,2,NULL),(3678,43,26,2,NULL),(3679,48,26,2,NULL),(3680,48,26,2,NULL),(3681,52,26,2,NULL),(3682,52,26,2,NULL),(3683,56,26,2,NULL),(3684,56,26,2,NULL),(3685,60,26,2,NULL),(3686,60,26,2,NULL),(3687,64,26,2,NULL),(3688,64,26,2,NULL),(3689,67,26,2,NULL),(3690,67,26,2,NULL),(3691,71,26,2,NULL),(3692,71,26,2,NULL),(3693,76,26,2,NULL),(3694,76,26,2,NULL),(3695,81,26,2,NULL),(3696,81,26,2,NULL),(3697,84,26,2,NULL),(3698,84,26,2,NULL),(3699,89,26,2,NULL),(3700,89,26,2,NULL),(3701,93,26,2,NULL),(3702,93,26,2,NULL),(3703,95,26,2,NULL),(3704,95,26,2,NULL),(3705,99,26,2,NULL),(3706,99,26,2,NULL),(3707,102,26,2,NULL),(3708,102,26,2,NULL),(3709,108,26,2,NULL),(3710,108,26,2,NULL),(3711,112,26,2,NULL),(3712,112,26,2,NULL),(3713,116,26,2,NULL),(3714,116,26,2,NULL),(3715,120,26,2,NULL),(3716,120,26,2,NULL),(3717,124,26,2,NULL),(3718,124,26,2,NULL),(3719,127,26,2,NULL),(3720,131,26,2,NULL),(3721,133,26,2,NULL),(3722,139,26,2,NULL),(3723,142,26,2,NULL),(3724,142,26,2,NULL),(3725,14,26,2,NULL),(3726,14,26,2,NULL),(3727,152,26,2,NULL),(3728,152,26,2,NULL),(3729,149,27,2,NULL),(3730,149,27,2,NULL),(3731,19,27,2,NULL),(3732,19,27,2,NULL),(3733,23,27,2,NULL),(3734,23,27,2,NULL),(3735,27,27,2,NULL),(3736,27,27,2,NULL),(3737,31,27,2,NULL),(3738,31,27,2,NULL),(3739,35,27,2,NULL),(3740,35,27,2,NULL),(3741,39,27,2,NULL),(3742,39,27,2,NULL),(3743,43,27,2,NULL),(3744,43,27,2,NULL),(3745,48,27,2,NULL),(3746,48,27,2,NULL),(3747,52,27,2,NULL),(3748,52,27,2,NULL),(3749,56,27,2,NULL),(3750,56,27,2,NULL),(3751,60,27,2,NULL),(3752,60,27,2,NULL),(3753,64,27,2,NULL),(3754,64,27,2,NULL),(3755,67,27,2,NULL),(3756,67,27,2,NULL),(3757,71,27,2,NULL),(3758,71,27,2,NULL),(3759,76,27,2,NULL),(3760,76,27,2,NULL),(3761,81,27,2,NULL),(3762,81,27,2,NULL),(3763,84,27,2,NULL),(3764,84,27,2,NULL),(3765,89,27,2,NULL),(3766,89,27,2,NULL),(3767,93,27,2,NULL),(3768,95,27,2,NULL),(3769,99,27,2,NULL),(3770,102,27,2,NULL),(3771,108,27,2,NULL),(3772,112,27,2,NULL),(3773,116,27,2,NULL),(3774,116,27,2,NULL),(3775,120,27,2,NULL),(3776,120,27,2,NULL),(3777,124,27,2,NULL),(3778,124,27,2,NULL),(3779,127,27,2,NULL),(3780,127,27,2,NULL),(3781,131,27,2,NULL),(3782,131,27,2,NULL),(3783,133,27,2,NULL),(3784,133,27,2,NULL),(3785,139,27,2,NULL),(3786,139,27,2,NULL),(3787,142,27,2,NULL),(3788,142,27,2,NULL),(3789,14,27,2,NULL),(3790,14,27,2,NULL),(3791,152,27,2,NULL),(3792,152,27,2,NULL),(3793,19,5,2,NULL),(3794,19,5,2,NULL),(3795,23,5,2,NULL),(3796,27,5,2,NULL),(3797,31,5,2,NULL),(3798,31,5,2,NULL),(3799,35,5,2,NULL),(3800,35,5,2,NULL),(3801,39,5,2,NULL),(3802,39,5,2,NULL),(3803,43,5,2,NULL),(3804,43,5,2,NULL),(3805,48,5,2,NULL),(3806,48,5,2,NULL),(3807,52,5,2,NULL),(3808,52,5,2,NULL),(3809,56,5,2,NULL),(3810,56,5,2,NULL),(3811,60,5,2,NULL),(3812,60,5,2,NULL),(3813,64,5,2,NULL),(3814,64,5,2,NULL),(3815,67,5,2,NULL),(3816,67,5,2,NULL),(3817,71,5,2,NULL),(3818,71,5,2,NULL),(3819,76,5,2,NULL),(3820,76,5,2,NULL),(3821,81,5,2,NULL),(3822,81,5,2,NULL),(3823,84,5,2,NULL),(3824,84,5,2,NULL),(3825,89,5,2,NULL),(3826,89,5,2,NULL),(3827,93,5,2,NULL),(3828,93,5,2,NULL),(3829,95,5,2,NULL),(3830,95,5,2,NULL),(3831,99,5,2,NULL),(3832,99,5,2,NULL),(3833,102,5,2,NULL),(3834,102,5,2,NULL),(3835,108,5,2,NULL),(3836,108,5,2,NULL),(3837,112,5,2,NULL),(3838,112,5,2,NULL),(3839,116,5,2,NULL),(3840,116,5,2,NULL),(3841,120,5,2,NULL),(3842,120,5,2,NULL),(3843,124,5,2,NULL),(3844,124,5,2,NULL),(3845,127,5,2,NULL),(3846,131,5,2,NULL),(3847,133,5,2,NULL),(3848,133,5,2,NULL),(3849,139,5,2,NULL),(3850,139,5,2,NULL),(3851,142,5,2,NULL),(3852,142,5,2,NULL),(3853,14,5,2,NULL),(3854,14,5,2,NULL),(3855,152,5,2,NULL),(3856,152,5,2,NULL),(3857,149,16,2,NULL),(3858,149,16,2,NULL),(3859,19,16,2,NULL),(3860,19,16,2,NULL),(3861,23,16,2,NULL),(3862,27,16,2,NULL),(3863,31,16,2,NULL),(3864,35,16,2,NULL),(3865,39,16,2,NULL),(3866,39,16,2,NULL),(3867,43,16,2,NULL),(3868,43,16,2,NULL),(3869,48,16,2,NULL),(3870,48,16,2,NULL),(3871,52,16,2,NULL),(3872,52,16,2,NULL),(3873,56,16,2,NULL),(3874,56,16,2,NULL),(3875,60,16,2,NULL),(3876,60,16,2,NULL),(3877,64,16,2,NULL),(3878,64,16,2,NULL),(3879,67,16,2,NULL),(3880,71,16,2,NULL),(3881,76,16,2,NULL),(3882,76,16,2,NULL),(3883,81,16,2,NULL),(3884,81,16,2,NULL),(3885,84,16,2,NULL),(3886,84,16,2,NULL),(3887,89,16,2,NULL),(3888,93,16,2,NULL),(3889,95,16,2,NULL),(3890,95,16,2,NULL),(3891,99,16,2,NULL),(3892,99,16,2,NULL),(3893,102,16,2,NULL),(3894,102,16,2,NULL),(3895,108,16,2,NULL),(3896,112,16,2,NULL),(3897,116,16,2,NULL),(3898,116,16,2,NULL),(3899,120,16,2,NULL),(3900,120,16,2,NULL),(3901,124,16,2,NULL),(3902,124,16,2,NULL),(3903,127,16,2,NULL),(3904,127,16,2,NULL),(3905,131,16,2,NULL),(3906,133,16,2,NULL),(3907,139,16,2,NULL),(3908,139,16,2,NULL),(3909,142,16,2,NULL),(3910,142,16,2,NULL),(3911,19,4,2,NULL),(3912,19,4,2,NULL),(3913,23,4,2,NULL),(3914,23,4,2,NULL),(3915,27,4,2,NULL),(3916,31,4,2,NULL),(3917,35,4,2,NULL),(3918,39,4,2,NULL),(3919,43,4,2,NULL),(3920,48,4,2,NULL),(3921,52,4,2,NULL),(3922,56,4,2,NULL),(3923,60,4,2,NULL),(3924,64,4,2,NULL),(3925,67,4,2,NULL),(3926,71,4,2,NULL),(3927,76,4,2,NULL),(3928,81,4,2,NULL),(3929,84,4,2,NULL),(3930,89,4,2,NULL),(3931,93,4,2,NULL),(3932,95,4,2,NULL),(3933,99,4,2,NULL),(3934,102,4,2,NULL),(3935,108,4,2,NULL),(3936,112,4,2,NULL),(3937,116,4,2,NULL),(3938,120,4,2,NULL),(3939,124,4,2,NULL),(3940,127,4,2,NULL),(3941,131,4,2,NULL),(3942,133,4,2,NULL),(3943,139,4,2,NULL),(3944,142,4,2,NULL),(3945,14,4,2,NULL),(3946,152,4,2,NULL),(3947,149,15,2,NULL),(3948,149,15,2,NULL),(3949,19,15,2,NULL),(3950,23,15,2,NULL),(3951,27,15,2,NULL),(3952,31,15,2,NULL),(3953,35,15,2,NULL),(3954,39,15,2,NULL),(3955,43,15,2,NULL),(3956,48,15,2,NULL),(3957,52,15,2,NULL),(3958,56,15,2,NULL),(3959,60,15,2,NULL),(3960,64,15,2,NULL),(3961,67,15,2,NULL),(3962,71,15,2,NULL),(3963,76,15,2,NULL),(3964,81,15,2,NULL),(3965,84,15,2,NULL),(3966,89,15,2,NULL),(3967,93,15,2,NULL),(3968,95,15,2,NULL),(3969,99,15,2,NULL),(3970,99,15,2,NULL),(3971,102,15,2,NULL),(3972,108,15,2,NULL),(3973,112,15,2,NULL),(3974,116,15,2,NULL),(3975,116,15,2,NULL),(3976,120,15,2,NULL),(3977,124,15,2,NULL),(3978,124,15,2,NULL),(3979,127,15,2,NULL),(3980,131,15,2,NULL),(3981,133,15,2,NULL),(3982,139,15,2,NULL),(3983,142,15,2,NULL),(3984,145,12,2,NULL),(3985,145,13,2,NULL),(3986,145,14,2,NULL),(3987,145,15,2,NULL),(3988,145,16,2,NULL),(3989,145,18,2,NULL),(3990,153,7,2,NULL),(3991,153,8,2,NULL),(3992,153,9,2,NULL),(3993,153,10,2,NULL),(3994,153,11,2,NULL),(3995,153,17,2,NULL),(3996,19,6,2,NULL),(3997,19,6,2,NULL),(3998,23,6,2,NULL),(3999,23,6,2,NULL),(4000,27,6,2,NULL),(4001,31,6,2,NULL),(4002,35,6,2,NULL),(4003,39,6,2,NULL),(4004,43,6,2,NULL),(4005,48,6,2,NULL),(4006,52,6,2,NULL),(4007,56,6,2,NULL),(4008,60,6,2,NULL),(4009,64,6,2,NULL),(4010,67,6,2,NULL),(4011,71,6,2,NULL),(4012,76,6,2,NULL),(4013,81,6,2,NULL),(4014,84,6,2,NULL),(4015,89,6,2,NULL),(4016,93,6,2,NULL),(4017,95,6,2,NULL),(4018,99,6,2,NULL),(4019,102,6,2,NULL),(4020,108,6,2,NULL),(4021,112,6,2,NULL),(4022,116,6,2,NULL),(4023,120,6,2,NULL),(4024,124,6,2,NULL),(4025,127,6,2,NULL),(4026,131,6,2,NULL),(4027,133,6,2,NULL),(4028,139,6,2,NULL),(4029,142,6,2,NULL),(4030,149,18,2,NULL),(4031,14,6,2,NULL),(4032,152,6,2,NULL),(4033,149,23,2,NULL),(4034,149,28,2,NULL),(4035,149,30,2,NULL),(4036,149,33,2,NULL),(4037,149,34,2,NULL),(4038,149,35,2,NULL),(4039,19,18,2,NULL),(4040,19,18,2,NULL),(4041,23,18,2,NULL),(4042,23,18,2,NULL),(4043,27,18,2,NULL),(4044,31,18,2,NULL),(4045,35,18,2,NULL),(4046,39,18,2,NULL),(4047,43,18,2,NULL),(4048,48,18,2,NULL),(4049,52,18,2,NULL),(4050,56,18,2,NULL),(4051,60,18,2,NULL),(4052,64,18,2,NULL),(4053,67,18,2,NULL),(4054,71,18,2,NULL),(4055,76,18,2,NULL),(4056,81,18,2,NULL),(4057,84,18,2,NULL),(4058,89,18,2,NULL),(4059,93,18,2,NULL),(4060,95,18,2,NULL),(4061,99,18,2,NULL),(4062,102,18,2,NULL),(4063,108,18,2,NULL),(4064,112,18,2,NULL),(4065,116,18,2,NULL),(4066,120,18,2,NULL),(4067,124,18,2,NULL),(4068,127,18,2,NULL),(4069,131,18,2,NULL),(4070,133,18,2,NULL),(4071,139,18,2,NULL),(4072,142,18,2,NULL),(4073,19,23,2,NULL),(4074,23,23,2,NULL),(4075,27,23,2,NULL),(4076,31,23,2,NULL),(4077,35,23,2,NULL),(4078,39,23,2,NULL),(4079,43,23,2,NULL),(4080,48,23,2,NULL),(4081,52,23,2,NULL),(4082,56,23,2,NULL),(4083,60,23,2,NULL),(4084,64,23,2,NULL),(4085,67,23,2,NULL),(4086,71,23,2,NULL),(4087,76,23,2,NULL),(4088,81,23,2,NULL),(4089,84,23,2,NULL),(4090,89,23,2,NULL),(4091,93,23,2,NULL),(4092,95,23,2,NULL),(4093,99,23,2,NULL),(4094,102,23,2,NULL),(4095,108,23,2,NULL),(4096,112,23,2,NULL),(4097,116,23,2,NULL),(4098,120,23,2,NULL),(4099,124,23,2,NULL),(4100,127,23,2,NULL),(4101,131,23,2,NULL),(4102,133,23,2,NULL),(4103,139,23,2,NULL),(4104,142,23,2,NULL),(4105,19,28,2,NULL),(4106,23,28,2,NULL),(4107,27,28,2,NULL),(4108,31,28,2,NULL),(4109,35,28,2,NULL),(4110,39,28,2,NULL),(4111,43,28,2,NULL),(4112,48,28,2,NULL),(4113,52,28,2,NULL),(4114,56,28,2,NULL),(4115,60,28,2,NULL),(4116,64,28,2,NULL),(4117,67,28,2,NULL),(4118,71,28,2,NULL),(4119,76,28,2,NULL),(4120,81,28,2,NULL),(4121,84,28,2,NULL),(4122,89,28,2,NULL),(4123,93,28,2,NULL),(4124,95,28,2,NULL),(4125,99,28,2,NULL),(4126,102,28,2,NULL),(4127,108,28,2,NULL),(4128,112,28,2,NULL),(4129,116,28,2,NULL),(4130,120,28,2,NULL),(4131,124,28,2,NULL),(4132,127,28,2,NULL),(4133,131,28,2,NULL),(4134,133,28,2,NULL),(4135,139,28,2,NULL),(4136,142,28,2,NULL),(4137,19,30,2,NULL),(4138,23,30,2,NULL),(4139,27,30,2,NULL),(4140,31,30,2,NULL),(4141,35,30,2,NULL),(4142,39,30,2,NULL),(4143,43,30,2,NULL),(4144,48,30,2,NULL),(4145,52,30,2,NULL),(4146,56,30,2,NULL),(4147,60,30,2,NULL),(4148,64,30,2,NULL),(4149,67,30,2,NULL),(4150,71,30,2,NULL),(4151,76,30,2,NULL),(4152,81,30,2,NULL),(4153,84,30,2,NULL),(4154,89,30,2,NULL),(4155,93,30,2,NULL),(4156,95,30,2,NULL),(4157,99,30,2,NULL),(4158,102,30,2,NULL),(4159,108,30,2,NULL),(4160,112,30,2,NULL),(4161,116,30,2,NULL),(4162,120,30,2,NULL),(4163,124,30,2,NULL),(4164,127,30,2,NULL),(4165,131,30,2,NULL),(4166,133,30,2,NULL),(4167,139,30,2,NULL),(4168,142,30,2,NULL),(4169,19,33,2,NULL),(4170,23,33,2,NULL),(4171,27,33,2,NULL),(4172,31,33,2,NULL),(4173,35,33,2,NULL),(4174,39,33,2,NULL),(4175,43,33,2,NULL),(4176,48,33,2,NULL),(4177,52,33,2,NULL),(4178,56,33,2,NULL),(4179,60,33,2,NULL),(4180,64,33,2,NULL),(4181,67,33,2,NULL),(4182,71,33,2,NULL),(4183,76,33,2,NULL),(4184,81,33,2,NULL),(4185,84,33,2,NULL),(4186,89,33,2,NULL),(4187,93,33,2,NULL),(4188,95,33,2,NULL),(4189,99,33,2,NULL),(4190,102,33,2,NULL),(4191,108,33,2,NULL),(4192,112,33,2,NULL),(4193,116,33,2,NULL),(4194,120,33,2,NULL),(4195,124,33,2,NULL),(4196,127,33,2,NULL),(4197,131,33,2,NULL),(4198,133,33,2,NULL),(4199,139,33,2,NULL),(4200,142,33,2,NULL),(4201,19,34,2,NULL),(4202,23,34,2,NULL),(4203,27,34,2,NULL),(4204,31,34,2,NULL),(4205,35,34,2,NULL),(4206,39,34,2,NULL),(4207,43,34,2,NULL),(4208,48,34,2,NULL),(4209,52,34,2,NULL),(4210,56,34,2,NULL),(4211,60,34,2,NULL),(4212,64,34,2,NULL),(4213,64,34,2,NULL),(4214,67,34,2,NULL),(4215,71,34,2,NULL),(4216,76,34,2,NULL),(4217,81,34,2,NULL),(4218,84,34,2,NULL),(4219,89,34,2,NULL),(4220,93,34,2,NULL),(4221,95,34,2,NULL),(4222,99,34,2,NULL),(4223,99,34,2,NULL),(4224,102,34,2,NULL),(4225,102,34,2,NULL),(4226,108,34,2,NULL),(4227,112,34,2,NULL),(4228,116,34,2,NULL),(4229,120,34,2,NULL),(4230,124,34,2,NULL),(4231,127,34,2,NULL),(4232,131,34,2,NULL),(4233,133,34,2,NULL),(4234,139,34,2,NULL),(4235,142,34,2,NULL),(4236,19,35,2,NULL),(4237,23,35,2,NULL),(4238,27,35,2,NULL),(4239,31,35,2,NULL),(4240,35,35,2,NULL),(4241,39,35,2,NULL),(4242,43,35,2,NULL),(4243,48,35,2,NULL),(4244,52,35,2,NULL),(4245,56,35,2,NULL),(4246,60,35,2,NULL),(4247,64,35,2,NULL),(4248,67,35,2,NULL),(4249,71,35,2,NULL),(4250,76,35,2,NULL),(4251,81,35,2,NULL),(4252,84,35,2,NULL),(4253,89,35,2,NULL),(4254,93,35,2,NULL),(4255,95,35,2,NULL),(4256,99,35,2,NULL),(4257,102,35,2,NULL),(4258,108,35,2,NULL),(4259,112,35,2,NULL),(4260,116,35,2,NULL),(4261,120,35,2,NULL),(4262,124,35,2,NULL),(4263,127,35,2,NULL),(4264,131,35,2,NULL),(4265,133,35,2,NULL),(4266,139,35,2,NULL),(4267,142,35,2,NULL),(4268,14,23,2,NULL),(4269,14,23,2,NULL),(4270,152,23,2,NULL),(4271,152,23,2,NULL),(4272,14,28,2,NULL),(4273,152,28,2,NULL),(4274,14,30,2,NULL),(4275,152,30,2,NULL),(4276,14,33,2,NULL),(4277,152,33,2,NULL),(4278,14,34,2,NULL),(4279,152,34,2,NULL),(4280,14,35,2,NULL),(4281,152,35,2,NULL),(4282,10,12,2,NULL),(4283,10,13,2,NULL),(4284,10,14,2,NULL),(4285,10,15,2,NULL),(4286,10,16,2,NULL),(4287,10,18,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(3,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(2,'android.permission.INTERNET'),(4,'android.permission.PERSISTENT_ACTIVITY'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.WAKE_LOCK');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL),(2,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL),(3,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL),(4,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,3,1),(3,1,1),(4,2,2),(5,5,1),(6,3,2),(7,1,2),(8,3,3),(9,2,3),(10,5,2),(11,1,3),(12,6,1),(13,3,4),(14,2,4),(15,5,3),(16,1,4),(17,6,2),(18,3,5),(19,5,4),(20,2,5),(21,1,5),(22,6,3),(23,5,5),(24,7,1),(25,6,4),(26,7,2),(27,5,6),(28,6,5),(29,5,7),(30,7,3),(31,7,6),(32,7,7);
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

-- Dump completed on 2015-10-09  0:37:55
