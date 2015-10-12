-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_1
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
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.BATTERY_CHANGED'),(8,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.accutracking.action.ALARM'),(3,'com.accutracking.action.GPS.UPDATE'),(4,'com.accutracking.action.GPS.UPDATE.REQUEST'),(12,'com.accutracking.action.SETTING.UPDATE'),(5,'com.accutracking.action.SETTINGS.UPDATE'),(2,'com.accutracking.action.STATUS.UPDATE'),(13,'com.test.sms.delivery'),(14,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'freetalkn.all.free',1),(2,'com.mmmm.bl',1),(3,'com.accutracking',8),(4,'com.accutracking',21),(5,'es.quoteitslim',1),(6,'com.mobile.app.writer.zhongguoyang',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'freetalkn.all.free.FreeMelody'),(2,2,'com.mmmm.bl.FreeMelody'),(3,3,'com.accutracking.AccuTracking'),(4,4,'com.accutracking.AccuTracking'),(5,3,'com.accutracking.SettingsActivity'),(6,3,'com.accutracking.TrackingService'),(7,4,'com.accutracking.SettingsActivity'),(8,4,'com.accutracking.TrackingService'),(9,3,'com.accutracking.AutoStartReceiver'),(10,4,'com.accutracking.AutoStartReceiver'),(11,5,'es.quoteitslim.Main'),(12,6,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity'),(13,6,'com.mobile.app.writer.zhongguoyang.VideoPlayerActivity'),(14,6,'com.mobile.app.writer.zhongguoyang.AboutActivity'),(15,6,'com.android.main.TANCActivity'),(16,6,'com.android.main.MainService'),(17,6,'com.android.main.ActionReceiver'),(18,6,'com.android.main.SmsReceiver'),(19,4,'com.accutracking.AccuTracking$IntentBroadcastReceiver'),(20,4,'com.accutracking.TrackingService$IntentBroadcastReceiver'),(21,4,'com.accutracking.AccuTracking$5'),(22,6,'com.android.main.MainService$SMSReceiver'),(23,6,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$1'),(24,6,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$2'),(25,3,'com.accutracking.TrackingService$GPSUpdateRequestBroadcastReceiver'),(26,3,'com.accutracking.TrackingService$BatteryStateBroadcastReceiver'),(27,3,'com.accutracking.TrackingService$SettingsBroadcastReceiver'),(28,3,'com.accutracking.AccuTracking$StatusBroadcastReceiver'),(29,3,'com.accutracking.AccuTracking$5'),(30,3,'com.accutracking.AccuTracking$TrackingBroadcastReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'header'),(2,18,'pdus'),(3,15,'message'),(4,13,'VIDEOTITLE'),(5,15,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',1,4,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,3,NULL),(10,10,'r',1,3,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,22,'r',1,NULL,NULL),(22,25,'r',1,NULL,NULL),(23,26,'r',1,NULL,NULL),(24,27,'r',1,NULL,NULL),(25,28,'r',1,NULL,NULL),(26,30,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,4),(3,3,4),(4,4,3),(5,5,3),(6,6,7),(7,7,5),(8,8,15),(9,9,15),(10,10,17),(11,11,12),(12,12,13),(13,12,12),(14,13,4),(15,14,9),(16,15,4),(17,16,10),(18,17,6),(19,18,6),(20,19,3),(21,20,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',7,'r',NULL),(2,4,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',23,'s',NULL),(3,21,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(4,3,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',22,'s',NULL),(5,3,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(6,7,'<com.accutracking.SettingsActivity: boolean saveSettings()>',114,'r',NULL),(7,5,'<com.accutracking.SettingsActivity: boolean saveSettings()>',116,'r',NULL),(8,15,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(9,15,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(10,17,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,23,'<com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(12,24,'<com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$2: void onClick(android.view.View)>',7,'a',NULL),(13,4,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(14,9,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(15,4,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(16,10,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(17,6,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',5,'r',NULL),(18,6,'<com.accutracking.TrackingService: void broadcastGPSUpdate()>',17,'r',NULL),(19,3,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(20,29,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,3,11),(3,6,12),(4,7,12),(5,8,12),(6,9,12),(7,10,12),(8,11,12),(9,12,12),(10,13,12),(11,14,12),(12,15,12),(13,16,12),(14,17,12),(15,18,12),(16,19,12),(17,20,12),(18,21,12),(19,22,12),(20,23,12),(21,24,12),(22,25,12),(23,26,12),(24,27,11),(25,28,12),(26,29,12),(27,30,11),(28,31,12),(29,32,12),(30,33,12),(31,34,12),(32,35,12),(33,36,1),(34,37,12),(35,38,12),(36,39,1),(37,40,12),(38,41,1),(39,42,12),(40,43,1),(41,44,12),(42,45,12),(43,47,12),(44,48,12),(45,49,12),(46,50,12),(47,52,12),(48,53,12),(49,54,12),(50,55,12),(51,56,12),(52,57,12),(53,59,12),(54,60,12),(55,61,12),(56,62,12),(57,63,12),(58,64,12),(59,65,12),(60,66,12),(61,67,12),(62,68,12),(63,69,12),(64,70,12),(65,71,12),(66,72,12),(67,73,12),(68,74,12),(69,75,12),(70,76,12),(71,77,12),(72,78,12),(73,81,4),(74,83,2),(75,84,3),(76,85,4),(77,86,11);
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
INSERT INTO `ICategories` VALUES (1,36,3),(2,39,1),(3,41,1),(4,43,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/accutracking/TrackingService'),(2,4,'com/accutracking/TrackingService'),(3,5,'com/accutracking/SettingsActivity'),(4,46,'com/android/main/MainService'),(5,51,'com/mobile/app/writer/zhongguoyang/VideoPlayerActivity'),(6,58,'com/mobile/app/writer/zhongguoyang/AboutActivity'),(7,79,'com/accutracking/SettingsActivity'),(8,80,'com/accutracking/TrackingService'),(9,82,'com/accutracking/TrackingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,27,2),(3,30,3),(4,51,4),(5,86,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'202'),(2,1,'201'),(3,6,'2'),(4,6,'1'),(5,6,'6'),(6,7,'2'),(7,7,'1'),(8,8,'3'),(9,7,'6'),(10,8,'7'),(11,8,'5'),(12,9,'3'),(13,9,'7'),(14,10,'2'),(15,9,'5'),(16,10,'1'),(17,10,'6'),(18,10,'5'),(19,11,'2'),(20,10,'4'),(21,11,'1'),(22,11,'6'),(23,11,'5'),(24,12,'3'),(25,11,'4'),(26,12,'7'),(27,12,'4'),(28,13,'3'),(29,13,'7'),(30,14,'3'),(31,13,'4'),(32,14,'1'),(33,14,'7'),(34,14,'6'),(35,15,'3'),(36,14,'4'),(37,15,'1'),(38,15,'7'),(39,15,'6'),(40,16,'3'),(41,15,'4'),(42,16,'2'),(43,16,'7'),(44,16,'5'),(45,17,'3'),(46,16,'4'),(47,17,'2'),(48,17,'7'),(49,17,'5'),(50,18,'3'),(51,17,'4'),(52,18,'1'),(53,18,'7'),(54,18,'6'),(55,19,'3'),(56,18,'5'),(57,19,'1'),(58,19,'7'),(59,19,'6'),(60,20,'3'),(61,19,'5'),(62,20,'2'),(63,20,'7'),(64,20,'5'),(65,21,'3'),(66,21,'2'),(67,21,'7'),(68,22,'3'),(69,21,'5'),(70,22,'1'),(71,22,'7'),(72,22,'6'),(73,23,'3'),(74,23,'1'),(75,23,'7'),(76,24,'1'),(77,23,'6'),(78,24,'6'),(79,24,'4'),(80,25,'1'),(81,25,'6'),(82,26,'2'),(83,25,'4'),(84,26,'5'),(85,26,'4'),(86,28,'2'),(87,28,'5'),(88,29,'3'),(89,28,'4'),(90,29,'2'),(91,29,'7'),(92,31,'3'),(93,31,'2'),(94,32,'1'),(95,31,'7'),(96,32,'6'),(97,32,'5'),(98,33,'1'),(99,33,'6'),(100,34,'2'),(101,33,'5'),(102,34,'1'),(103,34,'6'),(104,34,'5'),(105,35,'2'),(106,35,'1'),(107,35,'6'),(108,37,'2'),(109,35,'5'),(110,37,'1'),(111,37,'6'),(112,37,'4'),(113,38,'2'),(114,38,'1'),(115,38,'6'),(116,40,'3'),(117,38,'4'),(118,40,'7'),(119,40,'5'),(120,40,'4'),(121,42,'3'),(122,42,'7'),(123,42,'5'),(124,44,'1'),(125,42,'4'),(126,44,'6'),(127,44,'5'),(128,44,'4'),(129,45,'1'),(130,45,'6'),(131,45,'5'),(132,47,'3'),(133,45,'4'),(134,47,'2'),(135,47,'7'),(136,47,'4'),(137,48,'3'),(138,48,'2'),(139,48,'7'),(140,48,'4'),(141,50,'5'),(142,51,'VIDEOTITLE'),(143,53,'2'),(144,54,'5'),(145,55,'3'),(146,55,'2'),(147,56,'2'),(148,55,'1'),(149,55,'7'),(150,55,'6'),(151,57,'3'),(152,55,'5'),(153,57,'2'),(154,55,'4'),(155,57,'1'),(156,57,'7'),(157,59,'3'),(158,57,'6'),(159,59,'7'),(160,57,'5'),(161,57,'4'),(162,60,'5'),(163,60,'4'),(164,61,'3'),(165,61,'7'),(166,62,'3'),(167,62,'2'),(168,63,'5'),(169,62,'1'),(170,63,'4'),(171,62,'7'),(172,62,'6'),(173,62,'5'),(174,64,'3'),(175,64,'2'),(176,64,'1'),(177,65,'3'),(178,64,'7'),(179,65,'2'),(180,64,'6'),(181,65,'1'),(182,64,'5'),(183,65,'7'),(184,65,'6'),(185,65,'4'),(186,66,'3'),(187,66,'2'),(188,66,'1'),(189,67,'1'),(190,66,'7'),(191,67,'6'),(192,66,'6'),(193,66,'4'),(194,68,'2'),(195,68,'5'),(196,69,'1'),(197,69,'6'),(198,70,'4'),(199,71,'2'),(200,71,'5'),(201,72,'3'),(202,72,'2'),(203,72,'1'),(204,73,'4'),(205,72,'7'),(206,72,'6'),(207,74,'3'),(208,74,'2'),(209,75,'3'),(210,74,'1'),(211,75,'1'),(212,74,'7'),(213,75,'7'),(214,74,'6'),(215,75,'6'),(216,75,'5'),(217,75,'4'),(218,76,'3'),(219,76,'1'),(220,76,'7'),(221,77,'2'),(222,76,'6'),(223,77,'4'),(224,76,'5'),(225,76,'4'),(226,78,'2'),(227,78,'4'),(228,83,'1'),(229,84,'3'),(230,84,'2'),(231,84,'1'),(232,84,'7'),(233,84,'6'),(234,84,'5'),(235,84,'4');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,3),(7,7,2),(8,8,3),(9,9,4),(10,10,5),(11,11,6),(12,12,4),(13,13,7),(14,14,5),(15,15,7),(16,16,8),(17,17,8),(18,18,1),(19,19,1),(20,20,9),(21,21,10),(22,22,2),(23,23,6),(24,24,12),(25,25,13),(26,26,14),(27,27,10),(28,28,4),(29,29,3),(30,30,4),(31,31,7),(32,32,7),(33,33,12),(34,34,2),(35,35,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,16,2),(6,17,2),(7,18,1),(8,19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.accutracking'),(2,4,'com.accutracking'),(3,5,'com.accutracking'),(4,36,''),(5,39,''),(6,41,'NULL-CONSTANT'),(7,43,'NULL-CONSTANT'),(8,46,'com.mobile.app.writer.zhongguoyang'),(9,51,'com.mobile.app.writer.zhongguoyang'),(10,58,'com.mobile.app.writer.zhongguoyang'),(11,79,'com.accutracking'),(12,80,'com.accutracking'),(13,82,'com.accutracking');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,3,0),(5,4,0),(6,3,0),(7,4,0),(8,4,0),(9,6,0),(10,6,0),(11,8,0),(12,8,0),(13,6,0),(14,8,0),(15,8,0),(16,9,0),(17,10,0),(18,11,0),(19,12,0),(20,17,0),(21,18,0),(22,19,0),(23,20,0),(24,20,0),(25,21,0),(26,21,0),(27,21,0),(28,20,0),(29,19,0),(30,22,0),(31,20,0),(32,23,0),(33,24,0),(34,25,0),(35,26,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,6,1,0),(9,7,1,0),(10,6,1,0),(11,7,1,0),(12,6,1,0),(13,7,1,0),(14,6,1,0),(15,7,1,0),(16,6,1,0),(17,7,1,0),(18,6,1,0),(19,7,1,0),(20,6,1,0),(21,7,1,0),(22,6,1,0),(23,7,1,0),(24,6,1,0),(25,7,1,0),(26,6,1,0),(27,8,1,0),(28,7,1,0),(29,6,1,0),(30,8,1,0),(31,7,1,0),(32,6,1,0),(33,7,1,0),(34,6,1,0),(35,7,1,0),(36,9,1,0),(37,6,1,0),(38,7,1,0),(39,9,1,0),(40,6,1,0),(41,9,1,0),(42,7,1,0),(43,9,1,0),(44,6,1,0),(45,7,1,0),(46,10,0,0),(47,6,1,0),(48,7,1,0),(49,6,1,0),(50,6,1,0),(51,11,0,0),(52,7,1,0),(53,6,1,0),(54,7,1,0),(55,6,1,0),(56,7,1,0),(57,7,1,0),(58,12,0,0),(59,6,1,0),(60,6,1,0),(61,7,1,0),(62,6,1,0),(63,7,1,0),(64,7,1,0),(65,6,1,0),(66,7,1,0),(67,6,1,0),(68,6,1,0),(69,7,1,0),(70,6,1,0),(71,7,1,0),(72,6,1,0),(73,7,1,0),(74,7,1,0),(75,6,1,0),(76,7,1,0),(77,6,1,0),(78,7,1,0),(79,13,0,0),(80,14,0,0),(81,15,1,0),(82,16,0,0),(83,17,1,0),(84,18,1,0),(85,19,1,0),(86,20,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,6,2,NULL),(2,4,8,2,NULL),(3,5,5,2,NULL),(4,5,7,2,NULL),(5,85,1,2,NULL),(6,85,2,2,NULL),(7,7,3,2,NULL),(8,9,3,2,NULL),(9,11,3,2,NULL),(10,13,3,2,NULL),(11,15,3,2,NULL),(12,17,3,2,NULL),(13,19,3,2,NULL),(14,21,3,2,NULL),(15,23,3,2,NULL),(16,25,3,2,NULL),(17,28,3,2,NULL),(18,31,3,2,NULL),(19,33,3,2,NULL),(20,35,3,2,NULL),(21,38,3,2,NULL),(22,42,3,2,NULL),(23,45,3,2,NULL),(24,48,3,2,NULL),(25,52,3,2,NULL),(26,54,3,2,NULL),(27,56,3,2,NULL),(28,57,3,2,NULL),(29,61,3,2,NULL),(30,63,3,2,NULL),(31,64,3,2,NULL),(32,66,3,2,NULL),(33,69,3,2,NULL),(34,71,3,2,NULL),(35,73,3,2,NULL),(36,74,3,2,NULL),(37,76,3,2,NULL),(38,78,3,2,NULL),(39,85,6,2,NULL),(40,83,3,2,NULL),(41,84,3,2,NULL),(42,85,9,2,NULL),(43,85,22,2,NULL),(44,85,23,2,NULL),(45,85,24,2,NULL),(46,85,25,2,NULL),(47,85,26,2,NULL),(48,6,3,2,NULL),(49,8,3,2,NULL),(50,10,3,2,NULL),(51,12,3,2,NULL),(52,14,3,2,NULL),(53,16,3,2,NULL),(54,18,3,2,NULL),(55,20,3,2,NULL),(56,22,3,2,NULL),(57,24,3,2,NULL),(58,26,3,2,NULL),(59,29,3,2,NULL),(60,32,3,2,NULL),(61,34,3,2,NULL),(62,37,3,2,NULL),(63,40,3,2,NULL),(64,44,3,2,NULL),(65,47,3,2,NULL),(66,49,3,2,NULL),(67,50,3,2,NULL),(68,53,3,2,NULL),(69,55,3,2,NULL),(70,59,3,2,NULL),(71,60,3,2,NULL),(72,62,3,2,NULL),(73,65,3,2,NULL),(74,67,3,2,NULL),(75,68,3,2,NULL),(76,70,3,2,NULL),(77,72,3,2,NULL),(78,75,3,2,NULL),(79,77,3,2,NULL),(80,85,8,2,NULL),(81,1,3,2,NULL),(82,85,10,2,NULL),(83,85,19,2,NULL),(84,85,20,2,NULL),(85,85,11,2,NULL),(86,85,12,2,NULL),(87,27,3,2,NULL),(88,30,3,2,NULL),(89,36,3,2,NULL),(90,39,3,2,NULL),(91,41,3,2,NULL),(92,43,3,2,NULL),(93,85,17,2,NULL),(94,85,18,2,NULL),(95,85,21,2,NULL),(96,7,1,2,NULL),(97,9,1,2,NULL),(98,11,1,2,NULL),(99,13,1,2,NULL),(100,15,1,2,NULL),(101,17,1,2,NULL),(102,19,1,2,NULL),(103,21,1,2,NULL),(104,23,1,2,NULL),(105,25,1,2,NULL),(106,28,1,2,NULL),(107,31,1,2,NULL),(108,33,1,2,NULL),(109,35,1,2,NULL),(110,38,1,2,NULL),(111,42,1,2,NULL),(112,45,1,2,NULL),(113,48,1,2,NULL),(114,52,1,2,NULL),(115,54,1,2,NULL),(116,56,1,2,NULL),(117,57,1,2,NULL),(118,61,1,2,NULL),(119,63,1,2,NULL),(120,64,1,2,NULL),(121,66,1,2,NULL),(122,69,1,2,NULL),(123,71,1,2,NULL),(124,73,1,2,NULL),(125,74,1,2,NULL),(126,76,1,2,NULL),(127,78,1,2,NULL),(128,7,2,2,NULL),(129,9,2,2,NULL),(130,11,2,2,NULL),(131,13,2,2,NULL),(132,15,2,2,NULL),(133,17,2,2,NULL),(134,19,2,2,NULL),(135,21,2,2,NULL),(136,23,2,2,NULL),(137,25,2,2,NULL),(138,28,2,2,NULL),(139,31,2,2,NULL),(140,33,2,2,NULL),(141,35,2,2,NULL),(142,38,2,2,NULL),(143,42,2,2,NULL),(144,45,2,2,NULL),(145,48,2,2,NULL),(146,52,2,2,NULL),(147,54,2,2,NULL),(148,56,2,2,NULL),(149,57,2,2,NULL),(150,61,2,2,NULL),(151,63,2,2,NULL),(152,64,2,2,NULL),(153,66,2,2,NULL),(154,69,2,2,NULL),(155,71,2,2,NULL),(156,73,2,2,NULL),(157,74,2,2,NULL),(158,76,2,2,NULL),(159,78,2,2,NULL),(160,7,6,2,NULL),(161,9,6,2,NULL),(162,11,6,2,NULL),(163,13,6,2,NULL),(164,15,6,2,NULL),(165,17,6,2,NULL),(166,19,6,2,NULL),(167,21,6,2,NULL),(168,23,6,2,NULL),(169,25,6,2,NULL),(170,28,6,2,NULL),(171,31,6,2,NULL),(172,33,6,2,NULL),(173,35,6,2,NULL),(174,38,6,2,NULL),(175,42,6,2,NULL),(176,45,6,2,NULL),(177,48,6,2,NULL),(178,52,6,2,NULL),(179,54,6,2,NULL),(180,56,6,2,NULL),(181,57,6,2,NULL),(182,61,6,2,NULL),(183,63,6,2,NULL),(184,64,6,2,NULL),(185,66,6,2,NULL),(186,69,6,2,NULL),(187,71,6,2,NULL),(188,73,6,2,NULL),(189,74,6,2,NULL),(190,76,6,2,NULL),(191,78,6,2,NULL),(192,7,9,2,NULL),(193,9,9,2,NULL),(194,11,9,2,NULL),(195,13,9,2,NULL),(196,15,9,2,NULL),(197,17,9,2,NULL),(198,19,9,2,NULL),(199,21,9,2,NULL),(200,23,9,2,NULL),(201,25,9,2,NULL),(202,28,9,2,NULL),(203,31,9,2,NULL),(204,33,9,2,NULL),(205,35,9,2,NULL),(206,38,9,2,NULL),(207,42,9,2,NULL),(208,45,9,2,NULL),(209,48,9,2,NULL),(210,52,9,2,NULL),(211,54,9,2,NULL),(212,56,9,2,NULL),(213,57,9,2,NULL),(214,61,9,2,NULL),(215,63,9,2,NULL),(216,64,9,2,NULL),(217,66,9,2,NULL),(218,69,9,2,NULL),(219,71,9,2,NULL),(220,73,9,2,NULL),(221,74,9,2,NULL),(222,76,9,2,NULL),(223,78,9,2,NULL),(224,7,22,2,NULL),(225,9,22,2,NULL),(226,11,22,2,NULL),(227,13,22,2,NULL),(228,15,22,2,NULL),(229,17,22,2,NULL),(230,19,22,2,NULL),(231,21,22,2,NULL),(232,23,22,2,NULL),(233,25,22,2,NULL),(234,28,22,2,NULL),(235,31,22,2,NULL),(236,33,22,2,NULL),(237,35,22,2,NULL),(238,38,22,2,NULL),(239,42,22,2,NULL),(240,45,22,2,NULL),(241,48,22,2,NULL),(242,52,22,2,NULL),(243,54,22,2,NULL),(244,56,22,2,NULL),(245,57,22,2,NULL),(246,61,22,2,NULL),(247,63,22,2,NULL),(248,64,22,2,NULL),(249,66,22,2,NULL),(250,69,22,2,NULL),(251,71,22,2,NULL),(252,73,22,2,NULL),(253,74,22,2,NULL),(254,76,22,2,NULL),(255,78,22,2,NULL),(256,7,23,2,NULL),(257,9,23,2,NULL),(258,11,23,2,NULL),(259,13,23,2,NULL),(260,15,23,2,NULL),(261,17,23,2,NULL),(262,19,23,2,NULL),(263,21,23,2,NULL),(264,23,23,2,NULL),(265,25,23,2,NULL),(266,28,23,2,NULL),(267,31,23,2,NULL),(268,33,23,2,NULL),(269,35,23,2,NULL),(270,38,23,2,NULL),(271,42,23,2,NULL),(272,45,23,2,NULL),(273,48,23,2,NULL),(274,52,23,2,NULL),(275,54,23,2,NULL),(276,56,23,2,NULL),(277,57,23,2,NULL),(278,61,23,2,NULL),(279,63,23,2,NULL),(280,64,23,2,NULL),(281,66,23,2,NULL),(282,69,23,2,NULL),(283,71,23,2,NULL),(284,73,23,2,NULL),(285,74,23,2,NULL),(286,76,23,2,NULL),(287,78,23,2,NULL),(288,7,24,2,NULL),(289,9,24,2,NULL),(290,11,24,2,NULL),(291,13,24,2,NULL),(292,15,24,2,NULL),(293,17,24,2,NULL),(294,19,24,2,NULL),(295,21,24,2,NULL),(296,23,24,2,NULL),(297,25,24,2,NULL),(298,28,24,2,NULL),(299,31,24,2,NULL),(300,33,24,2,NULL),(301,35,24,2,NULL),(302,38,24,2,NULL),(303,42,24,2,NULL),(304,45,24,2,NULL),(305,48,24,2,NULL),(306,52,24,2,NULL),(307,54,24,2,NULL),(308,56,24,2,NULL),(309,57,24,2,NULL),(310,61,24,2,NULL),(311,63,24,2,NULL),(312,64,24,2,NULL),(313,66,24,2,NULL),(314,69,24,2,NULL),(315,71,24,2,NULL),(316,73,24,2,NULL),(317,74,24,2,NULL),(318,76,24,2,NULL),(319,78,24,2,NULL),(320,7,25,2,NULL),(321,9,25,2,NULL),(322,11,25,2,NULL),(323,13,25,2,NULL),(324,15,25,2,NULL),(325,17,25,2,NULL),(326,19,25,2,NULL),(327,21,25,2,NULL),(328,23,25,2,NULL),(329,25,25,2,NULL),(330,28,25,2,NULL),(331,31,25,2,NULL),(332,33,25,2,NULL),(333,35,25,2,NULL),(334,38,25,2,NULL),(335,42,25,2,NULL),(336,45,25,2,NULL),(337,48,25,2,NULL),(338,52,25,2,NULL),(339,54,25,2,NULL),(340,56,25,2,NULL),(341,57,25,2,NULL),(342,61,25,2,NULL),(343,63,25,2,NULL),(344,64,25,2,NULL),(345,66,25,2,NULL),(346,69,25,2,NULL),(347,71,25,2,NULL),(348,73,25,2,NULL),(349,74,25,2,NULL),(350,76,25,2,NULL),(351,78,25,2,NULL),(352,7,26,2,NULL),(353,9,26,2,NULL),(354,11,26,2,NULL),(355,13,26,2,NULL),(356,15,26,2,NULL),(357,17,26,2,NULL),(358,19,26,2,NULL),(359,21,26,2,NULL),(360,23,26,2,NULL),(361,25,26,2,NULL),(362,28,26,2,NULL),(363,31,26,2,NULL),(364,33,26,2,NULL),(365,35,26,2,NULL),(366,38,26,2,NULL),(367,42,26,2,NULL),(368,45,26,2,NULL),(369,48,26,2,NULL),(370,52,26,2,NULL),(371,54,26,2,NULL),(372,56,26,2,NULL),(373,57,26,2,NULL),(374,61,26,2,NULL),(375,63,26,2,NULL),(376,64,26,2,NULL),(377,66,26,2,NULL),(378,69,26,2,NULL),(379,71,26,2,NULL),(380,73,26,2,NULL),(381,74,26,2,NULL),(382,76,26,2,NULL),(383,78,26,2,NULL),(384,7,4,2,NULL),(385,9,4,2,NULL),(386,11,4,2,NULL),(387,13,4,2,NULL),(388,15,4,2,NULL),(389,17,4,2,NULL),(390,19,4,2,NULL),(391,21,4,2,NULL),(392,23,4,2,NULL),(393,25,4,2,NULL),(394,28,4,2,NULL),(395,31,4,2,NULL),(396,33,4,2,NULL),(397,35,4,2,NULL),(398,38,4,2,NULL),(399,42,4,2,NULL),(400,45,4,2,NULL),(401,48,4,2,NULL),(402,52,4,2,NULL),(403,54,4,2,NULL),(404,56,4,2,NULL),(405,57,4,2,NULL),(406,61,4,2,NULL),(407,63,4,2,NULL),(408,64,4,2,NULL),(409,66,4,2,NULL),(410,69,4,2,NULL),(411,71,4,2,NULL),(412,73,4,2,NULL),(413,74,4,2,NULL),(414,76,4,2,NULL),(415,78,4,2,NULL),(416,7,8,2,NULL),(417,9,8,2,NULL),(418,11,8,2,NULL),(419,13,8,2,NULL),(420,15,8,2,NULL),(421,17,8,2,NULL),(422,19,8,2,NULL),(423,19,8,2,NULL),(424,21,8,2,NULL),(425,23,8,2,NULL),(426,25,8,2,NULL),(427,28,8,2,NULL),(428,31,8,2,NULL),(429,33,8,2,NULL),(430,35,8,2,NULL),(431,38,8,2,NULL),(432,42,8,2,NULL),(433,42,8,2,NULL),(434,45,8,2,NULL),(435,48,8,2,NULL),(436,52,8,2,NULL),(437,54,8,2,NULL),(438,56,8,2,NULL),(439,57,8,2,NULL),(440,61,8,2,NULL),(441,63,8,2,NULL),(442,64,8,2,NULL),(443,66,8,2,NULL),(444,69,8,2,NULL),(445,71,8,2,NULL),(446,73,8,2,NULL),(447,74,8,2,NULL),(448,76,8,2,NULL),(449,78,8,2,NULL),(450,7,10,2,NULL),(451,9,10,2,NULL),(452,11,10,2,NULL),(453,13,10,2,NULL),(454,15,10,2,NULL),(455,17,10,2,NULL),(456,19,10,2,NULL),(457,21,10,2,NULL),(458,23,10,2,NULL),(459,25,10,2,NULL),(460,28,10,2,NULL),(461,31,10,2,NULL),(462,33,10,2,NULL),(463,35,10,2,NULL),(464,38,10,2,NULL),(465,42,10,2,NULL),(466,45,10,2,NULL),(467,48,10,2,NULL),(468,52,10,2,NULL),(469,54,10,2,NULL),(470,56,10,2,NULL),(471,57,10,2,NULL),(472,61,10,2,NULL),(473,63,10,2,NULL),(474,64,10,2,NULL),(475,66,10,2,NULL),(476,69,10,2,NULL),(477,71,10,2,NULL),(478,73,10,2,NULL),(479,74,10,2,NULL),(480,76,10,2,NULL),(481,78,10,2,NULL),(482,7,19,2,NULL),(483,9,19,2,NULL),(484,11,19,2,NULL),(485,13,19,2,NULL),(486,15,19,2,NULL),(487,17,19,2,NULL),(488,19,19,2,NULL),(489,21,19,2,NULL),(490,23,19,2,NULL),(491,25,19,2,NULL),(492,28,19,2,NULL),(493,31,19,2,NULL),(494,33,19,2,NULL),(495,35,19,2,NULL),(496,38,19,2,NULL),(497,42,19,2,NULL),(498,45,19,2,NULL),(499,48,19,2,NULL),(500,52,19,2,NULL),(501,54,19,2,NULL),(502,56,19,2,NULL),(503,57,19,2,NULL),(504,61,19,2,NULL),(505,63,19,2,NULL),(506,64,19,2,NULL),(507,66,19,2,NULL),(508,69,19,2,NULL),(509,71,19,2,NULL),(510,73,19,2,NULL),(511,74,19,2,NULL),(512,76,19,2,NULL),(513,78,19,2,NULL),(514,7,20,2,NULL),(515,9,20,2,NULL),(516,11,20,2,NULL),(517,13,20,2,NULL),(518,15,20,2,NULL),(519,17,20,2,NULL),(520,19,20,2,NULL),(521,21,20,2,NULL),(522,23,20,2,NULL),(523,25,20,2,NULL),(524,28,20,2,NULL),(525,31,20,2,NULL),(526,33,20,2,NULL),(527,35,20,2,NULL),(528,38,20,2,NULL),(529,42,20,2,NULL),(530,45,20,2,NULL),(531,48,20,2,NULL),(532,52,20,2,NULL),(533,54,20,2,NULL),(534,56,20,2,NULL),(535,57,20,2,NULL),(536,61,20,2,NULL),(537,63,20,2,NULL),(538,64,20,2,NULL),(539,66,20,2,NULL),(540,69,20,2,NULL),(541,71,20,2,NULL),(542,73,20,2,NULL),(543,74,20,2,NULL),(544,76,20,2,NULL),(545,78,20,2,NULL),(546,7,11,2,NULL),(547,9,11,2,NULL),(548,11,11,2,NULL),(549,13,11,2,NULL),(550,15,11,2,NULL),(551,17,11,2,NULL),(552,19,11,2,NULL),(553,21,11,2,NULL),(554,23,11,2,NULL),(555,25,11,2,NULL),(556,28,11,2,NULL),(557,31,11,2,NULL),(558,33,11,2,NULL),(559,35,11,2,NULL),(560,38,11,2,NULL),(561,42,11,2,NULL),(562,45,11,2,NULL),(563,48,11,2,NULL),(564,52,11,2,NULL),(565,54,11,2,NULL),(566,56,11,2,NULL),(567,57,11,2,NULL),(568,61,11,2,NULL),(569,63,11,2,NULL),(570,64,11,2,NULL),(571,66,11,2,NULL),(572,69,11,2,NULL),(573,71,11,2,NULL),(574,73,11,2,NULL),(575,74,11,2,NULL),(576,76,11,2,NULL),(577,78,11,2,NULL),(578,7,12,2,NULL),(579,9,12,2,NULL),(580,11,12,2,NULL),(581,13,12,2,NULL),(582,15,12,2,NULL),(583,17,12,2,NULL),(584,19,12,2,NULL),(585,21,12,2,NULL),(586,23,12,2,NULL),(587,25,12,2,NULL),(588,28,12,2,NULL),(589,31,12,2,NULL),(590,33,12,2,NULL),(591,35,12,2,NULL),(592,38,12,2,NULL),(593,42,12,2,NULL),(594,45,12,2,NULL),(595,48,12,2,NULL),(596,52,12,2,NULL),(597,54,12,2,NULL),(598,56,12,2,NULL),(599,57,12,2,NULL),(600,61,12,2,NULL),(601,63,12,2,NULL),(602,64,12,2,NULL),(603,66,12,2,NULL),(604,69,12,2,NULL),(605,71,12,2,NULL),(606,71,12,2,NULL),(607,73,12,2,NULL),(608,74,12,2,NULL),(609,76,12,2,NULL),(610,76,12,2,NULL),(611,78,12,2,NULL),(612,78,12,2,NULL),(613,7,17,2,NULL),(614,9,17,2,NULL),(615,11,17,2,NULL),(616,11,17,2,NULL),(617,13,17,2,NULL),(618,15,17,2,NULL),(619,17,17,2,NULL),(620,19,17,2,NULL),(621,21,17,2,NULL),(622,21,17,2,NULL),(623,23,17,2,NULL),(624,25,17,2,NULL),(625,28,17,2,NULL),(626,28,17,2,NULL),(627,31,17,2,NULL),(628,31,17,2,NULL),(629,33,17,2,NULL),(630,33,17,2,NULL),(631,35,17,2,NULL),(632,35,17,2,NULL),(633,38,17,2,NULL),(634,38,17,2,NULL),(635,42,17,2,NULL),(636,45,17,2,NULL),(637,48,17,2,NULL),(638,48,17,2,NULL),(639,52,17,2,NULL),(640,52,17,2,NULL),(641,54,17,2,NULL),(642,54,17,2,NULL),(643,56,17,2,NULL),(644,57,17,2,NULL),(645,61,17,2,NULL),(646,63,17,2,NULL),(647,64,17,2,NULL),(648,64,17,2,NULL),(649,66,17,2,NULL),(650,69,17,2,NULL),(651,71,17,2,NULL),(652,71,17,2,NULL),(653,73,17,2,NULL),(654,73,17,2,NULL),(655,74,17,2,NULL),(656,74,17,2,NULL),(657,76,17,2,NULL),(658,78,17,2,NULL),(659,7,18,2,NULL),(660,9,18,2,NULL),(661,11,18,2,NULL),(662,11,18,2,NULL),(663,13,18,2,NULL),(664,15,18,2,NULL),(665,17,18,2,NULL),(666,17,18,2,NULL),(667,19,18,2,NULL),(668,21,18,2,NULL),(669,23,18,2,NULL),(670,25,18,2,NULL),(671,28,18,2,NULL),(672,28,18,2,NULL),(673,31,18,2,NULL),(674,33,18,2,NULL),(675,35,18,2,NULL),(676,35,18,2,NULL),(677,38,18,2,NULL),(678,38,18,2,NULL),(679,42,18,2,NULL),(680,45,18,2,NULL),(681,48,18,2,NULL),(682,52,18,2,NULL),(683,54,18,2,NULL),(684,56,18,2,NULL),(685,57,18,2,NULL),(686,61,18,2,NULL),(687,63,18,2,NULL),(688,64,18,2,NULL),(689,66,18,2,NULL),(690,69,18,2,NULL),(691,71,18,2,NULL),(692,73,18,2,NULL),(693,74,18,2,NULL),(694,76,18,2,NULL),(695,78,18,2,NULL),(696,78,18,2,NULL),(697,7,21,2,NULL),(698,9,21,2,NULL),(699,11,21,2,NULL),(700,11,21,2,NULL),(701,13,21,2,NULL),(702,15,21,2,NULL),(703,17,21,2,NULL),(704,17,21,2,NULL),(705,19,21,2,NULL),(706,21,21,2,NULL),(707,23,21,2,NULL),(708,23,21,2,NULL),(709,25,21,2,NULL),(710,25,21,2,NULL),(711,28,21,2,NULL),(712,31,21,2,NULL),(713,33,21,2,NULL),(714,35,21,2,NULL),(715,38,21,2,NULL),(716,42,21,2,NULL),(717,45,21,2,NULL),(718,48,21,2,NULL),(719,52,21,2,NULL),(720,54,21,2,NULL),(721,56,21,2,NULL),(722,57,21,2,NULL),(723,61,21,2,NULL),(724,63,21,2,NULL),(725,64,21,2,NULL),(726,66,21,2,NULL),(727,69,21,2,NULL),(728,71,21,2,NULL),(729,73,21,2,NULL),(730,73,21,2,NULL),(731,74,21,2,NULL),(732,76,21,2,NULL),(733,78,21,2,NULL),(734,78,21,2,NULL),(735,83,1,2,NULL),(736,83,1,2,NULL),(737,84,1,2,NULL),(738,83,2,2,NULL),(739,84,2,2,NULL),(740,83,9,2,NULL),(741,84,9,2,NULL),(742,83,22,2,NULL),(743,84,22,2,NULL),(744,83,23,2,NULL),(745,84,23,2,NULL),(746,84,23,2,NULL),(747,83,24,2,NULL),(748,83,24,2,NULL),(749,84,24,2,NULL),(750,84,24,2,NULL),(751,83,25,2,NULL),(752,83,25,2,NULL),(753,84,25,2,NULL),(754,84,25,2,NULL),(755,83,26,2,NULL),(756,83,26,2,NULL),(757,84,26,2,NULL),(758,83,4,2,NULL),(759,84,4,2,NULL),(760,84,4,2,NULL),(761,81,6,2,NULL),(762,81,6,2,NULL),(763,6,6,2,NULL),(764,6,6,2,NULL),(765,8,6,2,NULL),(766,8,6,2,NULL),(767,10,6,2,NULL),(768,10,6,2,NULL),(769,12,6,2,NULL),(770,14,6,2,NULL),(771,16,6,2,NULL),(772,18,6,2,NULL),(773,20,6,2,NULL),(774,22,6,2,NULL),(775,24,6,2,NULL),(776,26,6,2,NULL),(777,29,6,2,NULL),(778,32,6,2,NULL),(779,34,6,2,NULL),(780,37,6,2,NULL),(781,40,6,2,NULL),(782,44,6,2,NULL),(783,47,6,2,NULL),(784,49,6,2,NULL),(785,50,6,2,NULL),(786,53,6,2,NULL),(787,55,6,2,NULL),(788,59,6,2,NULL),(789,60,6,2,NULL),(790,62,6,2,NULL),(791,65,6,2,NULL),(792,67,6,2,NULL),(793,68,6,2,NULL),(794,70,6,2,NULL),(795,72,6,2,NULL),(796,75,6,2,NULL),(797,77,6,2,NULL),(798,83,10,2,NULL),(799,84,10,2,NULL),(800,83,19,2,NULL),(801,84,19,2,NULL),(802,83,20,2,NULL),(803,84,20,2,NULL),(804,83,11,2,NULL),(805,84,11,2,NULL),(806,83,12,2,NULL),(807,84,12,2,NULL),(808,27,6,2,NULL),(809,30,6,2,NULL),(810,36,6,2,NULL),(811,39,6,2,NULL),(812,41,6,2,NULL),(813,43,6,2,NULL),(814,83,17,2,NULL),(815,84,17,2,NULL),(816,83,18,2,NULL),(817,84,18,2,NULL),(818,83,21,2,NULL),(819,84,21,2,NULL),(820,80,6,2,NULL),(821,80,8,2,NULL),(822,81,9,2,NULL),(823,6,9,2,NULL),(824,8,9,2,NULL),(825,10,9,2,NULL),(826,12,9,2,NULL),(827,14,9,2,NULL),(828,16,9,2,NULL),(829,18,9,2,NULL),(830,20,9,2,NULL),(831,22,9,2,NULL),(832,24,9,2,NULL),(833,26,9,2,NULL),(834,29,9,2,NULL),(835,32,9,2,NULL),(836,34,9,2,NULL),(837,37,9,2,NULL),(838,40,9,2,NULL),(839,44,9,2,NULL),(840,47,9,2,NULL),(841,49,9,2,NULL),(842,50,9,2,NULL),(843,53,9,2,NULL),(844,55,9,2,NULL),(845,59,9,2,NULL),(846,60,9,2,NULL),(847,62,9,2,NULL),(848,65,9,2,NULL),(849,67,9,2,NULL),(850,68,9,2,NULL),(851,70,9,2,NULL),(852,72,9,2,NULL),(853,75,9,2,NULL),(854,77,9,2,NULL),(855,1,9,2,NULL),(856,27,9,2,NULL),(857,30,9,2,NULL),(858,36,9,2,NULL),(859,39,9,2,NULL),(860,41,9,2,NULL),(861,43,9,2,NULL),(862,81,22,2,NULL),(863,6,22,2,NULL),(864,8,22,2,NULL),(865,10,22,2,NULL),(866,12,22,2,NULL),(867,14,22,2,NULL),(868,16,22,2,NULL),(869,18,22,2,NULL),(870,20,22,2,NULL),(871,22,22,2,NULL),(872,24,22,2,NULL),(873,26,22,2,NULL),(874,29,22,2,NULL),(875,32,22,2,NULL),(876,34,22,2,NULL),(877,37,22,2,NULL),(878,40,22,2,NULL),(879,44,22,2,NULL),(880,47,22,2,NULL),(881,49,22,2,NULL),(882,50,22,2,NULL),(883,53,22,2,NULL),(884,55,22,2,NULL),(885,59,22,2,NULL),(886,60,22,2,NULL),(887,62,22,2,NULL),(888,65,22,2,NULL),(889,67,22,2,NULL),(890,68,22,2,NULL),(891,70,22,2,NULL),(892,72,22,2,NULL),(893,75,22,2,NULL),(894,77,22,2,NULL),(895,1,22,2,NULL),(896,27,22,2,NULL),(897,30,22,2,NULL),(898,36,22,2,NULL),(899,39,22,2,NULL),(900,41,22,2,NULL),(901,43,22,2,NULL),(902,81,23,2,NULL),(903,6,23,2,NULL),(904,6,23,2,NULL),(905,8,23,2,NULL),(906,8,23,2,NULL),(907,10,23,2,NULL),(908,12,23,2,NULL),(909,14,23,2,NULL),(910,16,23,2,NULL),(911,18,23,2,NULL),(912,20,23,2,NULL),(913,20,23,2,NULL),(914,22,23,2,NULL),(915,24,23,2,NULL),(916,26,23,2,NULL),(917,29,23,2,NULL),(918,32,23,2,NULL),(919,32,23,2,NULL),(920,34,23,2,NULL),(921,37,23,2,NULL),(922,40,23,2,NULL),(923,44,23,2,NULL),(924,47,23,2,NULL),(925,49,23,2,NULL),(926,50,23,2,NULL),(927,53,23,2,NULL),(928,55,23,2,NULL),(929,59,23,2,NULL),(930,60,23,2,NULL),(931,62,23,2,NULL),(932,65,23,2,NULL),(933,67,23,2,NULL),(934,68,23,2,NULL),(935,70,23,2,NULL),(936,72,23,2,NULL),(937,75,23,2,NULL),(938,77,23,2,NULL),(939,1,23,2,NULL),(940,27,23,2,NULL),(941,30,23,2,NULL),(942,36,23,2,NULL),(943,39,23,2,NULL),(944,41,23,2,NULL),(945,43,23,2,NULL),(946,81,24,2,NULL),(947,6,24,2,NULL),(948,8,24,2,NULL),(949,10,24,2,NULL),(950,12,24,2,NULL),(951,14,24,2,NULL),(952,16,24,2,NULL),(953,18,24,2,NULL),(954,20,24,2,NULL),(955,22,24,2,NULL),(956,24,24,2,NULL),(957,26,24,2,NULL),(958,29,24,2,NULL),(959,32,24,2,NULL),(960,34,24,2,NULL),(961,37,24,2,NULL),(962,40,24,2,NULL),(963,44,24,2,NULL),(964,47,24,2,NULL),(965,49,24,2,NULL),(966,50,24,2,NULL),(967,53,24,2,NULL),(968,55,24,2,NULL),(969,59,24,2,NULL),(970,60,24,2,NULL),(971,62,24,2,NULL),(972,65,24,2,NULL),(973,67,24,2,NULL),(974,68,24,2,NULL),(975,70,24,2,NULL),(976,72,24,2,NULL),(977,75,24,2,NULL),(978,77,24,2,NULL),(979,1,24,2,NULL),(980,27,24,2,NULL),(981,30,24,2,NULL),(982,36,24,2,NULL),(983,39,24,2,NULL),(984,41,24,2,NULL),(985,43,24,2,NULL),(986,81,25,2,NULL),(987,6,25,2,NULL),(988,8,25,2,NULL),(989,10,25,2,NULL),(990,12,25,2,NULL),(991,14,25,2,NULL),(992,16,25,2,NULL),(993,18,25,2,NULL),(994,20,25,2,NULL),(995,22,25,2,NULL),(996,24,25,2,NULL),(997,26,25,2,NULL),(998,29,25,2,NULL),(999,32,25,2,NULL),(1000,34,25,2,NULL),(1001,37,25,2,NULL),(1002,40,25,2,NULL),(1003,44,25,2,NULL),(1004,47,25,2,NULL),(1005,49,25,2,NULL),(1006,50,25,2,NULL),(1007,53,25,2,NULL),(1008,55,25,2,NULL),(1009,59,25,2,NULL),(1010,60,25,2,NULL),(1011,62,25,2,NULL),(1012,65,25,2,NULL),(1013,67,25,2,NULL),(1014,68,25,2,NULL),(1015,70,25,2,NULL),(1016,72,25,2,NULL),(1017,75,25,2,NULL),(1018,77,25,2,NULL),(1019,1,25,2,NULL),(1020,27,25,2,NULL),(1021,30,25,2,NULL),(1022,36,25,2,NULL),(1023,39,25,2,NULL),(1024,41,25,2,NULL),(1025,43,25,2,NULL),(1026,81,26,2,NULL),(1027,6,26,2,NULL),(1028,8,26,2,NULL),(1029,10,26,2,NULL),(1030,12,26,2,NULL),(1031,14,26,2,NULL),(1032,16,26,2,NULL),(1033,18,26,2,NULL),(1034,20,26,2,NULL),(1035,22,26,2,NULL),(1036,24,26,2,NULL),(1037,26,26,2,NULL),(1038,29,26,2,NULL),(1039,32,26,2,NULL),(1040,34,26,2,NULL),(1041,37,26,2,NULL),(1042,40,26,2,NULL),(1043,44,26,2,NULL),(1044,47,26,2,NULL),(1045,49,26,2,NULL),(1046,50,26,2,NULL),(1047,53,26,2,NULL),(1048,55,26,2,NULL),(1049,59,26,2,NULL),(1050,60,26,2,NULL),(1051,62,26,2,NULL),(1052,65,26,2,NULL),(1053,67,26,2,NULL),(1054,68,26,2,NULL),(1055,70,26,2,NULL),(1056,72,26,2,NULL),(1057,75,26,2,NULL),(1058,77,26,2,NULL),(1059,1,26,2,NULL),(1060,27,26,2,NULL),(1061,30,26,2,NULL),(1062,36,26,2,NULL),(1063,39,26,2,NULL),(1064,41,26,2,NULL),(1065,43,26,2,NULL),(1066,2,6,2,NULL),(1067,2,8,2,NULL),(1068,79,5,2,NULL),(1069,79,7,2,NULL),(1070,81,1,2,NULL),(1071,81,2,2,NULL),(1072,6,4,2,NULL),(1073,8,4,2,NULL),(1074,10,4,2,NULL),(1075,12,4,2,NULL),(1076,14,4,2,NULL),(1077,16,4,2,NULL),(1078,18,4,2,NULL),(1079,20,4,2,NULL),(1080,22,4,2,NULL),(1081,24,4,2,NULL),(1082,26,4,2,NULL),(1083,29,4,2,NULL),(1084,32,4,2,NULL),(1085,34,4,2,NULL),(1086,37,4,2,NULL),(1087,40,4,2,NULL),(1088,44,4,2,NULL),(1089,47,4,2,NULL),(1090,49,4,2,NULL),(1091,50,4,2,NULL),(1092,53,4,2,NULL),(1093,55,4,2,NULL),(1094,59,4,2,NULL),(1095,60,4,2,NULL),(1096,62,4,2,NULL),(1097,65,4,2,NULL),(1098,67,4,2,NULL),(1099,68,4,2,NULL),(1100,70,4,2,NULL),(1101,72,4,2,NULL),(1102,75,4,2,NULL),(1103,77,4,2,NULL),(1104,81,8,2,NULL),(1105,1,4,2,NULL),(1106,81,10,2,NULL),(1107,81,19,2,NULL),(1108,81,20,2,NULL),(1109,81,11,2,NULL),(1110,81,12,2,NULL),(1111,27,4,2,NULL),(1112,30,4,2,NULL),(1113,36,4,2,NULL),(1114,39,4,2,NULL),(1115,41,4,2,NULL),(1116,43,4,2,NULL),(1117,81,17,2,NULL),(1118,81,18,2,NULL),(1119,81,21,2,NULL),(1120,6,1,2,NULL),(1121,8,1,2,NULL),(1122,10,1,2,NULL),(1123,12,1,2,NULL),(1124,14,1,2,NULL),(1125,16,1,2,NULL),(1126,18,1,2,NULL),(1127,20,1,2,NULL),(1128,22,1,2,NULL),(1129,24,1,2,NULL),(1130,26,1,2,NULL),(1131,29,1,2,NULL),(1132,32,1,2,NULL),(1133,34,1,2,NULL),(1134,37,1,2,NULL),(1135,40,1,2,NULL),(1136,44,1,2,NULL),(1137,47,1,2,NULL),(1138,49,1,2,NULL),(1139,50,1,2,NULL),(1140,53,1,2,NULL),(1141,55,1,2,NULL),(1142,59,1,2,NULL),(1143,60,1,2,NULL),(1144,62,1,2,NULL),(1145,65,1,2,NULL),(1146,67,1,2,NULL),(1147,68,1,2,NULL),(1148,70,1,2,NULL),(1149,72,1,2,NULL),(1150,75,1,2,NULL),(1151,77,1,2,NULL),(1152,6,2,2,NULL),(1153,8,2,2,NULL),(1154,10,2,2,NULL),(1155,12,2,2,NULL),(1156,14,2,2,NULL),(1157,16,2,2,NULL),(1158,18,2,2,NULL),(1159,20,2,2,NULL),(1160,22,2,2,NULL),(1161,24,2,2,NULL),(1162,26,2,2,NULL),(1163,29,2,2,NULL),(1164,32,2,2,NULL),(1165,34,2,2,NULL),(1166,37,2,2,NULL),(1167,40,2,2,NULL),(1168,44,2,2,NULL),(1169,47,2,2,NULL),(1170,49,2,2,NULL),(1171,50,2,2,NULL),(1172,53,2,2,NULL),(1173,55,2,2,NULL),(1174,59,2,2,NULL),(1175,60,2,2,NULL),(1176,62,2,2,NULL),(1177,65,2,2,NULL),(1178,67,2,2,NULL),(1179,68,2,2,NULL),(1180,70,2,2,NULL),(1181,72,2,2,NULL),(1182,72,2,2,NULL),(1183,75,2,2,NULL),(1184,75,2,2,NULL),(1185,77,2,2,NULL),(1186,77,2,2,NULL),(1187,6,8,2,NULL),(1188,6,8,2,NULL),(1189,8,8,2,NULL),(1190,8,8,2,NULL),(1191,10,8,2,NULL),(1192,10,8,2,NULL),(1193,12,8,2,NULL),(1194,12,8,2,NULL),(1195,14,8,2,NULL),(1196,14,8,2,NULL),(1197,16,8,2,NULL),(1198,16,8,2,NULL),(1199,18,8,2,NULL),(1200,20,8,2,NULL),(1201,22,8,2,NULL),(1202,24,8,2,NULL),(1203,26,8,2,NULL),(1204,29,8,2,NULL),(1205,32,8,2,NULL),(1206,34,8,2,NULL),(1207,37,8,2,NULL),(1208,40,8,2,NULL),(1209,44,8,2,NULL),(1210,47,8,2,NULL),(1211,49,8,2,NULL),(1212,50,8,2,NULL),(1213,53,8,2,NULL),(1214,55,8,2,NULL),(1215,59,8,2,NULL),(1216,59,8,2,NULL),(1217,60,8,2,NULL),(1218,60,8,2,NULL),(1219,62,8,2,NULL),(1220,65,8,2,NULL),(1221,67,8,2,NULL),(1222,68,8,2,NULL),(1223,70,8,2,NULL),(1224,72,8,2,NULL),(1225,75,8,2,NULL),(1226,77,8,2,NULL),(1227,6,10,2,NULL),(1228,6,10,2,NULL),(1229,8,10,2,NULL),(1230,8,10,2,NULL),(1231,10,10,2,NULL),(1232,10,10,2,NULL),(1233,12,10,2,NULL),(1234,12,10,2,NULL),(1235,14,10,2,NULL),(1236,16,10,2,NULL),(1237,18,10,2,NULL),(1238,20,10,2,NULL),(1239,22,10,2,NULL),(1240,22,10,2,NULL),(1241,24,10,2,NULL),(1242,24,10,2,NULL),(1243,26,10,2,NULL),(1244,26,10,2,NULL),(1245,29,10,2,NULL),(1246,29,10,2,NULL),(1247,32,10,2,NULL),(1248,32,10,2,NULL),(1249,34,10,2,NULL),(1250,34,10,2,NULL),(1251,37,10,2,NULL),(1252,37,10,2,NULL),(1253,40,10,2,NULL),(1254,44,10,2,NULL),(1255,47,10,2,NULL),(1256,49,10,2,NULL),(1257,50,10,2,NULL),(1258,53,10,2,NULL),(1259,55,10,2,NULL),(1260,59,10,2,NULL),(1261,60,10,2,NULL),(1262,62,10,2,NULL),(1263,65,10,2,NULL),(1264,67,10,2,NULL),(1265,68,10,2,NULL),(1266,70,10,2,NULL),(1267,72,10,2,NULL),(1268,75,10,2,NULL),(1269,77,10,2,NULL),(1270,6,19,2,NULL),(1271,8,19,2,NULL),(1272,10,19,2,NULL),(1273,12,19,2,NULL),(1274,14,19,2,NULL),(1275,16,19,2,NULL),(1276,18,19,2,NULL),(1277,20,19,2,NULL),(1278,22,19,2,NULL),(1279,24,19,2,NULL),(1280,26,19,2,NULL),(1281,29,19,2,NULL),(1282,32,19,2,NULL),(1283,34,19,2,NULL),(1284,37,19,2,NULL),(1285,40,19,2,NULL),(1286,44,19,2,NULL),(1287,47,19,2,NULL),(1288,49,19,2,NULL),(1289,50,19,2,NULL),(1290,53,19,2,NULL),(1291,55,19,2,NULL),(1292,59,19,2,NULL),(1293,60,19,2,NULL),(1294,62,19,2,NULL),(1295,65,19,2,NULL),(1296,67,19,2,NULL),(1297,68,19,2,NULL),(1298,70,19,2,NULL),(1299,72,19,2,NULL),(1300,75,19,2,NULL),(1301,77,19,2,NULL),(1302,6,20,2,NULL),(1303,8,20,2,NULL),(1304,10,20,2,NULL),(1305,12,20,2,NULL),(1306,14,20,2,NULL),(1307,16,20,2,NULL),(1308,18,20,2,NULL),(1309,20,20,2,NULL),(1310,22,20,2,NULL),(1311,24,20,2,NULL),(1312,26,20,2,NULL),(1313,29,20,2,NULL),(1314,32,20,2,NULL),(1315,34,20,2,NULL),(1316,37,20,2,NULL),(1317,40,20,2,NULL),(1318,44,20,2,NULL),(1319,47,20,2,NULL),(1320,49,20,2,NULL),(1321,50,20,2,NULL),(1322,53,20,2,NULL),(1323,55,20,2,NULL),(1324,59,20,2,NULL),(1325,60,20,2,NULL),(1326,62,20,2,NULL),(1327,65,20,2,NULL),(1328,67,20,2,NULL),(1329,68,20,2,NULL),(1330,70,20,2,NULL),(1331,72,20,2,NULL),(1332,75,20,2,NULL),(1333,77,20,2,NULL),(1334,6,11,2,NULL),(1335,8,11,2,NULL),(1336,10,11,2,NULL),(1337,12,11,2,NULL),(1338,14,11,2,NULL),(1339,16,11,2,NULL),(1340,18,11,2,NULL),(1341,20,11,2,NULL),(1342,22,11,2,NULL),(1343,24,11,2,NULL),(1344,26,11,2,NULL),(1345,29,11,2,NULL),(1346,32,11,2,NULL),(1347,34,11,2,NULL),(1348,37,11,2,NULL),(1349,40,11,2,NULL),(1350,44,11,2,NULL),(1351,47,11,2,NULL),(1352,49,11,2,NULL),(1353,50,11,2,NULL),(1354,53,11,2,NULL),(1355,55,11,2,NULL),(1356,59,11,2,NULL),(1357,60,11,2,NULL),(1358,62,11,2,NULL),(1359,65,11,2,NULL),(1360,67,11,2,NULL),(1361,68,11,2,NULL),(1362,70,11,2,NULL),(1363,72,11,2,NULL),(1364,75,11,2,NULL),(1365,77,11,2,NULL),(1366,6,12,2,NULL),(1367,8,12,2,NULL),(1368,10,12,2,NULL),(1369,12,12,2,NULL),(1370,14,12,2,NULL),(1371,16,12,2,NULL),(1372,18,12,2,NULL),(1373,20,12,2,NULL),(1374,22,12,2,NULL),(1375,24,12,2,NULL),(1376,26,12,2,NULL),(1377,29,12,2,NULL),(1378,32,12,2,NULL),(1379,34,12,2,NULL),(1380,37,12,2,NULL),(1381,40,12,2,NULL),(1382,44,12,2,NULL),(1383,47,12,2,NULL),(1384,49,12,2,NULL),(1385,50,12,2,NULL),(1386,53,12,2,NULL),(1387,55,12,2,NULL),(1388,59,12,2,NULL),(1389,60,12,2,NULL),(1390,62,12,2,NULL),(1391,65,12,2,NULL),(1392,67,12,2,NULL),(1393,68,12,2,NULL),(1394,70,12,2,NULL),(1395,72,12,2,NULL),(1396,75,12,2,NULL),(1397,77,12,2,NULL),(1398,77,12,2,NULL),(1399,6,17,2,NULL),(1400,6,17,2,NULL),(1401,8,17,2,NULL),(1402,10,17,2,NULL),(1403,12,17,2,NULL),(1404,14,17,2,NULL),(1405,14,17,2,NULL),(1406,16,17,2,NULL),(1407,18,17,2,NULL),(1408,20,17,2,NULL),(1409,22,17,2,NULL),(1410,24,17,2,NULL),(1411,26,17,2,NULL),(1412,26,17,2,NULL),(1413,29,17,2,NULL),(1414,32,17,2,NULL),(1415,34,17,2,NULL),(1416,37,17,2,NULL),(1417,40,17,2,NULL),(1418,44,17,2,NULL),(1419,47,17,2,NULL),(1420,49,17,2,NULL),(1421,50,17,2,NULL),(1422,53,17,2,NULL),(1423,55,17,2,NULL),(1424,59,17,2,NULL),(1425,60,17,2,NULL),(1426,62,17,2,NULL),(1427,65,17,2,NULL),(1428,67,17,2,NULL),(1429,68,17,2,NULL),(1430,70,17,2,NULL),(1431,72,17,2,NULL),(1432,75,17,2,NULL),(1433,77,17,2,NULL),(1434,6,18,2,NULL),(1435,8,18,2,NULL),(1436,10,18,2,NULL),(1437,12,18,2,NULL),(1438,14,18,2,NULL),(1439,16,18,2,NULL),(1440,18,18,2,NULL),(1441,20,18,2,NULL),(1442,22,18,2,NULL),(1443,24,18,2,NULL),(1444,26,18,2,NULL),(1445,29,18,2,NULL),(1446,32,18,2,NULL),(1447,34,18,2,NULL),(1448,37,18,2,NULL),(1449,40,18,2,NULL),(1450,44,18,2,NULL),(1451,47,18,2,NULL),(1452,49,18,2,NULL),(1453,50,18,2,NULL),(1454,53,18,2,NULL),(1455,55,18,2,NULL),(1456,59,18,2,NULL),(1457,60,18,2,NULL),(1458,62,18,2,NULL),(1459,65,18,2,NULL),(1460,67,18,2,NULL),(1461,68,18,2,NULL),(1462,70,18,2,NULL),(1463,72,18,2,NULL),(1464,75,18,2,NULL),(1465,77,18,2,NULL),(1466,6,21,2,NULL),(1467,8,21,2,NULL),(1468,10,21,2,NULL),(1469,12,21,2,NULL),(1470,14,21,2,NULL),(1471,16,21,2,NULL),(1472,18,21,2,NULL),(1473,20,21,2,NULL),(1474,22,21,2,NULL),(1475,24,21,2,NULL),(1476,26,21,2,NULL),(1477,29,21,2,NULL),(1478,32,21,2,NULL),(1479,34,21,2,NULL),(1480,37,21,2,NULL),(1481,40,21,2,NULL),(1482,44,21,2,NULL),(1483,47,21,2,NULL),(1484,49,21,2,NULL),(1485,50,21,2,NULL),(1486,53,21,2,NULL),(1487,55,21,2,NULL),(1488,59,21,2,NULL),(1489,60,21,2,NULL),(1490,62,21,2,NULL),(1491,65,21,2,NULL),(1492,67,21,2,NULL),(1493,68,21,2,NULL),(1494,70,21,2,NULL),(1495,72,21,2,NULL),(1496,75,21,2,NULL),(1497,77,21,2,NULL),(1498,1,1,2,NULL),(1499,1,2,2,NULL),(1500,1,10,2,NULL),(1501,1,19,2,NULL),(1502,1,20,2,NULL),(1503,1,11,2,NULL),(1504,1,12,2,NULL),(1505,27,8,2,NULL),(1506,30,8,2,NULL),(1507,36,8,2,NULL),(1508,39,8,2,NULL),(1509,41,8,2,NULL),(1510,43,8,2,NULL),(1511,1,17,2,NULL),(1512,1,18,2,NULL),(1513,1,21,2,NULL),(1514,82,6,2,NULL),(1515,82,8,2,NULL),(1516,27,10,2,NULL),(1517,27,10,2,NULL),(1518,30,10,2,NULL),(1519,36,10,2,NULL),(1520,39,10,2,NULL),(1521,41,10,2,NULL),(1522,43,10,2,NULL),(1523,27,19,2,NULL),(1524,27,19,2,NULL),(1525,30,19,2,NULL),(1526,36,19,2,NULL),(1527,39,19,2,NULL),(1528,41,19,2,NULL),(1529,43,19,2,NULL),(1530,27,20,2,NULL),(1531,27,20,2,NULL),(1532,30,20,2,NULL),(1533,36,20,2,NULL),(1534,39,20,2,NULL),(1535,41,20,2,NULL),(1536,43,20,2,NULL),(1537,27,1,2,NULL),(1538,27,2,2,NULL),(1539,30,1,2,NULL),(1540,30,2,2,NULL),(1541,36,1,2,NULL),(1542,36,2,2,NULL),(1543,39,1,2,NULL),(1544,39,2,2,NULL),(1545,41,1,2,NULL),(1546,41,2,2,NULL),(1547,43,1,2,NULL),(1548,43,2,2,NULL),(1549,27,11,2,NULL),(1550,27,12,2,NULL),(1551,30,11,2,NULL),(1552,30,12,2,NULL),(1553,36,11,2,NULL),(1554,39,11,2,NULL),(1555,36,12,2,NULL),(1556,41,11,2,NULL),(1557,39,12,2,NULL),(1558,41,12,2,NULL),(1559,43,11,2,NULL),(1560,43,12,2,NULL),(1561,27,17,2,NULL),(1562,30,17,2,NULL),(1563,36,17,2,NULL),(1564,39,17,2,NULL),(1565,41,17,2,NULL),(1566,43,17,2,NULL),(1567,27,18,2,NULL),(1568,30,18,2,NULL),(1569,36,18,2,NULL),(1570,39,18,2,NULL),(1571,41,18,2,NULL),(1572,43,18,2,NULL),(1573,27,21,2,NULL),(1574,30,21,2,NULL),(1575,36,21,2,NULL),(1576,39,21,2,NULL),(1577,41,21,2,NULL),(1578,43,21,2,NULL),(1579,46,16,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(4,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.INSTALL_PACKAGES'),(1,'android.permission.INTERNET'),(7,'android.permission.PERSISTENT_ACTIVITY'),(2,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_SMS'),(12,'android.permission.SEND_SMS'),(8,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,1),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,4,1),(11,4,3),(12,4,4),(13,4,7),(14,4,8),(15,5,1),(16,5,9),(17,6,16),(18,6,1),(19,6,10),(20,6,11),(21,6,12),(22,6,13),(23,6,14),(24,6,15);
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

-- Dump completed on 2015-10-12  3:29:16
