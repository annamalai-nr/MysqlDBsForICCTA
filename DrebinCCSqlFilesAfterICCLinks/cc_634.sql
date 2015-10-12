-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_634
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
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(11,'(.*)(.*)'),(13,'(.*)(.*)(.*)'),(14,'(.*)(.*)(.*)(.*)'),(8,'SMSSENT'),(9,'SMSSENT(.*)'),(4,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PHONE_STATE'),(5,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(6,'ru.alpha.AlphaServiceStart76');
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
INSERT INTO `Applications` VALUES (1,'com.agewap.om',1),(2,'com.reg',1),(3,'html.android.install',1),(4,'Jk7H.PwcD',1),(5,'ad.notify1',1),(6,'kudgofcpa.cdddbuto',1),(7,'com.androidapp.pdaspy',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.agewap.om.OperaMiniActivity'),(2,2,'com.reg.MainRegActivity'),(3,2,'com.reg.SmsReceiver'),(4,3,'html.android.install.Download'),(5,3,'html.android.install.HtmlSMSActivity'),(6,4,'Jk7H.PwcD.SLYfoMdG'),(7,5,'ad.notify.OperaUpdaterActivity'),(8,5,'ad.notify.NotificationActivity'),(9,5,'ad.notify.NotificationService'),(10,5,'ad.notify.RepeatingAlarmService'),(11,5,'ad.notify.AutorunBroadcastReceiver'),(12,6,'kudgofcpa.cdddbuto.qltlybwxsoe'),(13,6,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(14,6,'dlsplpdqld.qjvgddw.hcjicng'),(15,6,'kudgofcpa.cdddbuto.ecufglp'),(16,2,'com.reg.MainRegActivity$5'),(17,7,'com.androidapp.pdaspy.MainActivity'),(18,7,'com.androidapp.pdaspy.ChooseAccountActivity'),(19,7,'com.androidapp.pdaspy.UseExistingAccountActivity'),(20,7,'com.androidapp.pdaspy.OpenNewAccountActivity'),(21,7,'com.androidapp.pdaspy.ConfigClient'),(22,7,'com.androidapp.pdaspy.LogService'),(23,7,'com.androidapp.pdaspy.LogServiceManager'),(24,6,'dlsplpdqld.qjvgddw.ydlabek'),(25,6,'kudgofcpa.cdddbuto.ktpessvth');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'pdus'),(2,14,'(.*)(.*)(.*)'),(3,14,'(.*)'),(4,14,'(.*)(.*)'),(5,13,'(.*)(.*)(.*)'),(6,13,'(.*)'),(7,13,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,25,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,7),(3,3,12),(4,4,14),(5,5,13),(6,6,21),(7,7,18),(8,8,19),(9,9,20),(10,10,17),(11,11,18),(12,12,17),(13,13,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,10,'<ad.notify.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(2,7,'<ad.notify.OperaUpdaterActivity: void onClick(android.view.View)>',63,'a',NULL),(3,24,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL),(4,14,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL),(5,24,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL),(6,21,'<com.androidapp.pdaspy.ConfigClient: void saveChanges()>',54,'s',NULL),(7,18,'<com.androidapp.pdaspy.ChooseAccountActivity: void onClick(android.view.View)>',12,'a',NULL),(8,19,'<com.androidapp.pdaspy.UseExistingAccountActivity: boolean login(java.lang.String,java.lang.String)>',49,'a',NULL),(9,20,'<com.androidapp.pdaspy.OpenNewAccountActivity: boolean createNewAccount(java.lang.String,java.lang.String,java.lang.String)>',67,'a',NULL),(10,17,'<com.androidapp.pdaspy.MainActivity: void onClick(android.view.View)>',27,'a',NULL),(11,18,'<com.androidapp.pdaspy.ChooseAccountActivity: void onClick(android.view.View)>',6,'a',NULL),(12,17,'<com.androidapp.pdaspy.MainActivity: void onClick(android.view.View)>',31,'a',NULL),(13,23,'<com.androidapp.pdaspy.LogServiceManager: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,10),(2,3,11),(3,4,12),(4,5,12),(5,6,13),(6,7,13),(7,8,11),(8,9,13),(9,10,12),(10,11,11),(11,12,12),(12,13,12),(13,14,11),(14,15,11),(15,16,12),(16,17,13),(17,18,11),(18,19,12),(19,20,13),(20,21,13),(21,22,13),(22,23,11),(23,24,11),(24,25,14),(25,26,13),(26,27,14),(27,28,13),(28,29,11),(29,30,13),(30,31,14),(31,32,11),(32,33,14),(33,34,11),(34,35,14),(35,36,14),(36,37,11),(37,38,14),(38,39,13),(39,40,11),(40,41,13),(41,42,13),(42,43,13),(43,44,11),(44,45,11),(45,46,12),(46,47,12),(47,48,13),(48,49,13),(49,50,11),(50,51,13),(51,52,12),(52,53,11),(53,54,12),(54,55,12),(55,56,11),(56,57,11),(57,58,12),(58,59,13),(59,60,11),(60,61,12),(61,62,13),(62,63,13),(63,64,13),(64,65,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'ad/notify/NotificationActivity'),(2,66,'com/androidapp/pdaspy/LogService'),(3,67,'com/androidapp/pdaspy/UseExistingAccountActivity'),(4,68,'com/androidapp/pdaspy/ConfigClient'),(5,69,'com/androidapp/pdaspy/ConfigClient'),(6,70,'com/androidapp/pdaspy/ConfigClient'),(7,71,'com/androidapp/pdaspy/OpenNewAccountActivity'),(8,72,'com/androidapp/pdaspy/ChooseAccountActivity'),(9,73,'com/androidapp/pdaspy/LogService');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'(.*)(.*)(.*)'),(2,3,'(.*)'),(3,4,'(.*)(.*)(.*)'),(4,4,'(.*)'),(5,4,'(.*)(.*)'),(6,5,'(.*)(.*)(.*)'),(7,6,'(.*)(.*)'),(8,7,'(.*)(.*)(.*)'),(9,8,'(.*)(.*)(.*)'),(10,8,'(.*)'),(11,8,'(.*)(.*)'),(12,9,'(.*)'),(13,10,'(.*)'),(14,11,'(.*)'),(15,11,'(.*)(.*)'),(16,12,'(.*)(.*)(.*)'),(17,12,'(.*)'),(18,13,'(.*)'),(19,13,'(.*)(.*)'),(20,14,'(.*)(.*)'),(21,15,'(.*)(.*)(.*)'),(22,16,'(.*)(.*)(.*)'),(23,16,'(.*)(.*)'),(24,17,'(.*)'),(25,17,'(.*)(.*)'),(26,18,'(.*)'),(27,19,'(.*)(.*)'),(28,20,'(.*)(.*)(.*)'),(29,20,'(.*)'),(30,20,'(.*)(.*)'),(31,21,'(.*)(.*)(.*)'),(32,21,'(.*)'),(33,22,'(.*)(.*)(.*)'),(34,22,'(.*)(.*)'),(35,23,'(.*)(.*)(.*)'),(36,23,'(.*)(.*)'),(37,24,'(.*)(.*)(.*)'),(38,24,'(.*)'),(39,25,'(.*)(.*)'),(40,26,'(.*)(.*)'),(41,27,'(.*)'),(42,27,'(.*)(.*)'),(43,28,'(.*)(.*)(.*)'),(44,29,'(.*)(.*)(.*)'),(45,29,'(.*)'),(46,29,'(.*)(.*)'),(47,30,'(.*)'),(48,31,'(.*)(.*)(.*)'),(49,31,'(.*)'),(50,31,'(.*)(.*)'),(51,32,'(.*)'),(52,32,'(.*)(.*)'),(53,33,'(.*)(.*)(.*)'),(54,33,'(.*)'),(55,34,'(.*)(.*)'),(56,35,'(.*)'),(57,36,'(.*)(.*)(.*)'),(58,37,'(.*)(.*)(.*)'),(59,38,'(.*)(.*)(.*)'),(60,38,'(.*)(.*)'),(61,39,'(.*)'),(62,39,'(.*)(.*)'),(63,40,'(.*)'),(64,41,'(.*)(.*)(.*)'),(65,41,'(.*)'),(66,41,'(.*)(.*)'),(67,42,'(.*)(.*)(.*)'),(68,42,'(.*)'),(69,43,'(.*)(.*)(.*)'),(70,43,'(.*)(.*)'),(71,44,'(.*)(.*)(.*)'),(72,44,'(.*)(.*)'),(73,45,'(.*)(.*)(.*)'),(74,45,'(.*)'),(75,46,'(.*)(.*)(.*)'),(76,46,'(.*)'),(77,46,'(.*)(.*)'),(78,47,'(.*)(.*)(.*)'),(79,48,'(.*)(.*)'),(80,49,'(.*)(.*)(.*)'),(81,50,'(.*)(.*)(.*)'),(82,50,'(.*)'),(83,50,'(.*)(.*)'),(84,51,'(.*)'),(85,52,'(.*)'),(86,53,'(.*)'),(87,53,'(.*)(.*)'),(88,54,'(.*)(.*)(.*)'),(89,54,'(.*)'),(90,55,'(.*)'),(91,55,'(.*)(.*)'),(92,56,'(.*)(.*)'),(93,57,'(.*)(.*)(.*)'),(94,58,'(.*)(.*)(.*)'),(95,58,'(.*)(.*)'),(96,59,'(.*)'),(97,59,'(.*)(.*)'),(98,60,'(.*)'),(99,61,'(.*)(.*)'),(100,62,'(.*)(.*)(.*)'),(101,62,'(.*)'),(102,62,'(.*)(.*)'),(103,63,'(.*)(.*)(.*)'),(104,63,'(.*)'),(105,64,'(.*)(.*)(.*)'),(106,64,'(.*)(.*)'),(107,65,'(.*)(.*)(.*)'),(108,65,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,8,5),(8,8,3),(9,8,4),(10,9,1),(11,10,6),(12,11,7),(13,12,8),(14,13,9),(15,14,1),(16,15,4),(17,16,11),(18,17,12),(19,18,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,9,1),(8,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,'sms',NULL,NULL,NULL,NULL,NULL),(2,11,NULL,NULL,'12345',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ad.notify1'),(2,66,'com.androidapp.pdaspy'),(3,67,'com.androidapp.pdaspy'),(4,68,'com.androidapp.pdaspy'),(5,69,'com.androidapp.pdaspy'),(6,70,'com.androidapp.pdaspy'),(7,71,'com.androidapp.pdaspy'),(8,72,'com.androidapp.pdaspy'),(9,73,'com.androidapp.pdaspy');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,8,0),(8,11,0),(9,12,0),(10,13,0),(11,15,0),(12,16,0),(13,16,0),(14,17,0),(15,23,0),(16,24,0),(17,24,0),(18,24,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,3,1,0),(12,3,1,0),(13,3,1,0),(14,3,1,0),(15,3,1,0),(16,3,1,0),(17,3,1,0),(18,3,1,0),(19,3,1,0),(20,3,1,0),(21,3,1,0),(22,3,1,0),(23,3,1,0),(24,4,1,0),(25,4,1,0),(26,4,1,0),(27,4,1,0),(28,4,1,0),(29,4,1,0),(30,4,1,0),(31,4,1,0),(32,4,1,0),(33,4,1,0),(34,4,1,0),(35,4,1,0),(36,4,1,0),(37,4,1,0),(38,4,1,0),(39,4,1,0),(40,4,1,0),(41,4,1,0),(42,4,1,0),(43,4,1,0),(44,4,1,0),(45,5,1,0),(46,5,1,0),(47,5,1,0),(48,5,1,0),(49,5,1,0),(50,5,1,0),(51,5,1,0),(52,5,1,0),(53,5,1,0),(54,5,1,0),(55,5,1,0),(56,5,1,0),(57,5,1,0),(58,5,1,0),(59,5,1,0),(60,5,1,0),(61,5,1,0),(62,5,1,0),(63,5,1,0),(64,5,1,0),(65,5,1,0),(66,6,0,0),(67,7,0,0),(68,8,0,0),(69,9,0,0),(70,10,0,0),(71,11,0,0),(72,12,0,0),(73,13,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,1,2,NULL),(2,2,2,2,NULL),(3,2,3,2,NULL),(4,2,16,2,NULL),(5,2,4,2,NULL),(6,2,6,2,NULL),(7,2,8,2,NULL),(8,2,11,2,NULL),(9,2,12,2,NULL),(10,2,13,2,NULL),(11,24,7,2,NULL),(12,25,7,2,NULL),(13,26,7,2,NULL),(14,27,7,2,NULL),(15,28,7,2,NULL),(16,29,7,2,NULL),(17,30,7,2,NULL),(18,31,7,2,NULL),(19,32,7,2,NULL),(20,24,12,2,NULL),(21,33,7,2,NULL),(22,25,12,2,NULL),(23,34,7,2,NULL),(24,26,12,2,NULL),(25,35,7,2,NULL),(26,27,12,2,NULL),(27,36,7,2,NULL),(28,28,12,2,NULL),(29,37,7,2,NULL),(30,29,12,2,NULL),(31,38,7,2,NULL),(32,30,12,2,NULL),(33,39,7,2,NULL),(34,31,12,2,NULL),(35,40,7,2,NULL),(36,32,12,2,NULL),(37,41,7,2,NULL),(38,33,12,2,NULL),(39,42,7,2,NULL),(40,34,12,2,NULL),(41,43,7,2,NULL),(42,35,12,2,NULL),(43,44,7,2,NULL),(44,36,12,2,NULL),(45,2,24,2,NULL),(46,37,12,2,NULL),(47,2,17,2,NULL),(48,38,12,2,NULL),(49,2,23,2,NULL),(50,39,12,2,NULL),(51,24,8,2,NULL),(52,40,12,2,NULL),(53,25,8,2,NULL),(54,41,12,2,NULL),(55,26,8,2,NULL),(56,42,12,2,NULL),(57,27,8,2,NULL),(58,43,12,2,NULL),(59,28,8,2,NULL),(60,44,12,2,NULL),(61,29,8,2,NULL),(62,24,13,2,NULL),(63,30,8,2,NULL),(64,25,13,2,NULL),(65,31,8,2,NULL),(66,26,13,2,NULL),(67,32,8,2,NULL),(68,27,13,2,NULL),(69,33,8,2,NULL),(70,28,13,2,NULL),(71,34,8,2,NULL),(72,29,13,2,NULL),(73,35,8,2,NULL),(74,30,13,2,NULL),(75,36,8,2,NULL),(76,31,13,2,NULL),(77,37,8,2,NULL),(78,32,13,2,NULL),(79,38,8,2,NULL),(80,33,13,2,NULL),(81,39,8,2,NULL),(82,34,13,2,NULL),(83,40,8,2,NULL),(84,35,13,2,NULL),(85,41,8,2,NULL),(86,36,13,2,NULL),(87,42,8,2,NULL),(88,37,13,2,NULL),(89,43,8,2,NULL),(90,38,13,2,NULL),(91,44,8,2,NULL),(92,39,13,2,NULL),(93,1,8,2,NULL),(94,40,13,2,NULL),(95,24,11,2,NULL),(96,41,13,2,NULL),(97,25,11,2,NULL),(98,42,13,2,NULL),(99,26,11,2,NULL),(100,43,13,2,NULL),(101,27,11,2,NULL),(102,44,13,2,NULL),(103,28,11,2,NULL),(104,24,1,2,NULL),(105,29,11,2,NULL),(106,25,1,2,NULL),(107,30,11,2,NULL),(108,26,1,2,NULL),(109,31,11,2,NULL),(110,27,1,2,NULL),(111,32,11,2,NULL),(112,28,1,2,NULL),(113,33,11,2,NULL),(114,29,1,2,NULL),(115,34,11,2,NULL),(116,30,1,2,NULL),(117,35,11,2,NULL),(118,31,1,2,NULL),(119,36,11,2,NULL),(120,32,1,2,NULL),(121,37,11,2,NULL),(122,33,1,2,NULL),(123,38,11,2,NULL),(124,34,1,2,NULL),(125,39,11,2,NULL),(126,35,1,2,NULL),(127,40,11,2,NULL),(128,36,1,2,NULL),(129,41,11,2,NULL),(130,37,1,2,NULL),(131,42,11,2,NULL),(132,38,1,2,NULL),(133,43,11,2,NULL),(134,39,1,2,NULL),(135,44,11,2,NULL),(136,40,1,2,NULL),(137,41,1,2,NULL),(138,42,1,2,NULL),(139,43,1,2,NULL),(140,44,1,2,NULL),(141,24,2,2,NULL),(142,25,2,2,NULL),(143,26,2,2,NULL),(144,27,2,2,NULL),(145,28,2,2,NULL),(146,29,2,2,NULL),(147,30,2,2,NULL),(148,31,2,2,NULL),(149,32,2,2,NULL),(150,33,2,2,NULL),(151,34,2,2,NULL),(152,35,2,2,NULL),(153,36,2,2,NULL),(154,37,2,2,NULL),(155,38,2,2,NULL),(156,39,2,2,NULL),(157,40,2,2,NULL),(158,41,2,2,NULL),(159,42,2,2,NULL),(160,43,2,2,NULL),(161,44,2,2,NULL),(162,24,3,2,NULL),(163,25,3,2,NULL),(164,26,3,2,NULL),(165,27,3,2,NULL),(166,28,3,2,NULL),(167,29,3,2,NULL),(168,30,3,2,NULL),(169,31,3,2,NULL),(170,32,3,2,NULL),(171,33,3,2,NULL),(172,34,3,2,NULL),(173,35,3,2,NULL),(174,36,3,2,NULL),(175,37,3,2,NULL),(176,38,3,2,NULL),(177,39,3,2,NULL),(178,40,3,2,NULL),(179,41,3,2,NULL),(180,42,3,2,NULL),(181,43,3,2,NULL),(182,44,3,2,NULL),(183,24,16,2,NULL),(184,25,16,2,NULL),(185,26,16,2,NULL),(186,27,16,2,NULL),(187,28,16,2,NULL),(188,29,16,2,NULL),(189,30,16,2,NULL),(190,31,16,2,NULL),(191,32,16,2,NULL),(192,33,16,2,NULL),(193,34,16,2,NULL),(194,35,16,2,NULL),(195,36,16,2,NULL),(196,37,16,2,NULL),(197,37,16,2,NULL),(198,38,16,2,NULL),(199,39,16,2,NULL),(200,40,16,2,NULL),(201,41,16,2,NULL),(202,42,16,2,NULL),(203,43,16,2,NULL),(204,44,16,2,NULL),(205,24,4,2,NULL),(206,25,4,2,NULL),(207,26,4,2,NULL),(208,27,4,2,NULL),(209,28,4,2,NULL),(210,29,4,2,NULL),(211,30,4,2,NULL),(212,31,4,2,NULL),(213,32,4,2,NULL),(214,33,4,2,NULL),(215,34,4,2,NULL),(216,35,4,2,NULL),(217,36,4,2,NULL),(218,37,4,2,NULL),(219,38,4,2,NULL),(220,39,4,2,NULL),(221,40,4,2,NULL),(222,41,4,2,NULL),(223,42,4,2,NULL),(224,43,4,2,NULL),(225,44,4,2,NULL),(226,24,6,2,NULL),(227,25,6,2,NULL),(228,26,6,2,NULL),(229,27,6,2,NULL),(230,28,6,2,NULL),(231,29,6,2,NULL),(232,30,6,2,NULL),(233,31,6,2,NULL),(234,32,6,2,NULL),(235,33,6,2,NULL),(236,34,6,2,NULL),(237,35,6,2,NULL),(238,36,6,2,NULL),(239,37,6,2,NULL),(240,38,6,2,NULL),(241,39,6,2,NULL),(242,40,6,2,NULL),(243,41,6,2,NULL),(244,42,6,2,NULL),(245,43,6,2,NULL),(246,44,6,2,NULL),(247,24,24,2,NULL),(248,25,24,2,NULL),(249,26,24,2,NULL),(250,27,24,2,NULL),(251,28,24,2,NULL),(252,29,24,2,NULL),(253,30,24,2,NULL),(254,31,24,2,NULL),(255,32,24,2,NULL),(256,33,24,2,NULL),(257,34,24,2,NULL),(258,35,24,2,NULL),(259,36,24,2,NULL),(260,37,24,2,NULL),(261,38,24,2,NULL),(262,39,24,2,NULL),(263,40,24,2,NULL),(264,41,24,2,NULL),(265,42,24,2,NULL),(266,43,24,2,NULL),(267,44,24,2,NULL),(268,24,17,2,NULL),(269,25,17,2,NULL),(270,26,17,2,NULL),(271,27,17,2,NULL),(272,28,17,2,NULL),(273,29,17,2,NULL),(274,30,17,2,NULL),(275,31,17,2,NULL),(276,32,17,2,NULL),(277,33,17,2,NULL),(278,34,17,2,NULL),(279,35,17,2,NULL),(280,36,17,2,NULL),(281,37,17,2,NULL),(282,38,17,2,NULL),(283,39,17,2,NULL),(284,40,17,2,NULL),(285,41,17,2,NULL),(286,42,17,2,NULL),(287,43,17,2,NULL),(288,44,17,2,NULL),(289,24,23,2,NULL),(290,25,23,2,NULL),(291,26,23,2,NULL),(292,27,23,2,NULL),(293,28,23,2,NULL),(294,29,23,2,NULL),(295,30,23,2,NULL),(296,31,23,2,NULL),(297,32,23,2,NULL),(298,33,23,2,NULL),(299,34,23,2,NULL),(300,35,23,2,NULL),(301,36,23,2,NULL),(302,37,23,2,NULL),(303,38,23,2,NULL),(304,39,23,2,NULL),(305,40,23,2,NULL),(306,41,23,2,NULL),(307,42,23,2,NULL),(308,43,23,2,NULL),(309,44,23,2,NULL),(310,70,21,2,NULL),(311,72,18,2,NULL),(312,67,19,2,NULL),(313,71,20,2,NULL),(314,68,21,2,NULL),(315,69,21,2,NULL),(316,66,22,2,NULL),(317,73,22,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (30,'android.permission.ACCESS_COARSE_LOCATION'),(31,'android.permission.ACCESS_COARSE_UPDATES'),(21,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BLUETOOTH'),(8,'android.permission.CALL_PHONE'),(17,'android.permission.CAMERA'),(20,'android.permission.CHANGE_WIFI_STATE'),(27,'android.permission.DELETE_PACKAGES'),(14,'android.permission.DISABLE_KEYGUARD'),(10,'android.permission.GET_ACCOUNTS'),(2,'android.permission.GLOBAL_SEARCH'),(26,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(12,'android.permission.MODIFY_AUDIO_SETTINGS'),(6,'android.permission.PROCESS_OUTGOING_CALLS'),(9,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(24,'android.permission.RECORD_AUDIO'),(1,'android.permission.SEND_SMS'),(32,'android.permission.SYSTEM_ALERT_WINDOW'),(22,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_CONTACTS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SETTINGS'),(29,'com.android.alarm.permission.SET_ALARM'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,3,1),(8,3,3),(9,3,4),(10,3,5),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,3,10),(16,3,11),(17,3,12),(18,3,13),(19,3,14),(20,3,15),(21,3,17),(22,3,16),(23,3,19),(24,3,18),(25,3,21),(26,3,20),(27,3,23),(28,3,22),(29,3,24),(30,4,1),(31,4,3),(32,4,25),(33,4,13),(34,5,1),(35,5,3),(36,5,7),(37,5,25),(38,5,27),(39,5,26),(40,5,13),(41,6,1),(42,6,16),(43,6,32),(44,6,3),(45,6,21),(46,6,5),(47,6,7),(48,6,25),(49,6,26),(50,6,29),(51,6,28),(52,6,13),(53,6,31),(54,6,30),(55,7,16),(56,7,3),(57,7,21),(58,7,23),(59,7,9),(60,7,13),(61,7,30),(62,7,15);
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

-- Dump completed on 2015-10-12  3:31:11
