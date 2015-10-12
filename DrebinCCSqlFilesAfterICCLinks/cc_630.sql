-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_630
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(12,'(.*)(.*)'),(11,'(.*)(.*)(.*)'),(13,'(.*)(.*)(.*)(.*)'),(4,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PHONE_STATE'),(5,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(2,'ru.alpha.AlphaServiceStart76'),(7,'uuuijccjx.hebslx.xpjsxwpvoStart76');
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
INSERT INTO `Applications` VALUES (1,'com.agewap.soft',1),(2,'Jk7H.PwcD',1),(3,'vnpysgo.wbwkavy',1),(4,'ad.notify1',1),(5,'fhvm.vnnej',1),(6,'kudgofcpa.cdddbuto',1),(7,'ngjvnpslnp.iplhmk',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.agewap.soft.ProgressBarActivity'),(2,2,'Jk7H.PwcD.SLYfoMdG'),(3,4,'ad.notify.OperaUpdaterActivity'),(4,3,'vnpysgo.wbwkavy.bnxmjp'),(5,4,'ad.notify.NotificationActivity'),(6,4,'ad.notify.NotificationService'),(7,3,'yrmgdlf.mstqwaid.taayuylbic'),(8,4,'ad.notify.RepeatingAlarmService'),(9,4,'ad.notify.AutorunBroadcastReceiver'),(10,3,'yrmgdlf.mstqwaid.bkpoejswrt'),(11,3,'vnpysgo.wbwkavy.pkxowpfvwr'),(12,5,'fhvm.vnnej.JKldv'),(13,5,'bnjk.jjk3e.CWebA'),(14,5,'bnjk.jjk3e.CHActivity'),(15,5,'bnjk.jjk3e.CService'),(16,5,'bnjk.jjk3e.CReceiver'),(17,5,'fhvm.vnnej.CBReceiver'),(18,5,'fhvm.vnnej.DFGReceiver'),(19,6,'kudgofcpa.cdddbuto.qltlybwxsoe'),(20,6,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(21,6,'dlsplpdqld.qjvgddw.hcjicng'),(22,6,'kudgofcpa.cdddbuto.ecufglp'),(23,7,'ngjvnpslnp.iplhmk.yqniqkxgpoo'),(24,7,'uuuijccjx.hebslx.xpjsxwpvo'),(25,7,'uuuijccjx.hebslx.wlamdyyqa'),(26,7,'ngjvnpslnp.iplhmk.tmnyuqie'),(27,3,'vnpysgo.wbwkavy.ylsbfu'),(28,5,'bnjk.jjk3e.contributed'),(29,6,'dlsplpdqld.qjvgddw.ydlabek'),(30,7,'ngjvnpslnp.iplhmk.nmycxbb'),(31,7,'uuuijccjx.hebslx.nrggfqqc'),(32,7,'ngjvnpslnp.iplhmk.gjile'),(33,6,'kudgofcpa.cdddbuto.ktpessvth');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'(.*)'),(2,16,'(.*)'),(3,13,'(.*)'),(4,14,'(.*)'),(5,18,'(.*)'),(6,20,'(.*)(.*)(.*)'),(7,20,'(.*)'),(8,20,'(.*)(.*)'),(9,21,'(.*)(.*)(.*)'),(10,21,'(.*)'),(11,21,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,31,'r',1,NULL,NULL),(30,32,'r',1,NULL,NULL),(31,33,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,3),(3,3,15),(4,4,15),(5,5,12),(6,6,15),(7,7,16),(8,8,12),(9,9,21),(10,10,19),(11,11,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<ad.notify.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(2,3,'<ad.notify.OperaUpdaterActivity: void onClick(android.view.View)>',63,'a',NULL),(3,28,'<bnjk.jjk3e.contributed: void by(android.content.Context,java.lang.String)>',13,'a',NULL),(4,28,'<bnjk.jjk3e.contributed: void contributed(android.content.Context,java.lang.String,int,java.lang.String)>',83,'r',NULL),(5,28,'<bnjk.jjk3e.contributed: void <init>(android.content.Context,java.lang.String,java.lang.String)>',95,'r',NULL),(6,28,'<bnjk.jjk3e.contributed: void contributed(android.content.Context,java.lang.String)>',9,'a',NULL),(7,16,'<bnjk.jjk3e.CReceiver: void onReceive(android.content.Context,android.content.Intent)>',75,'s',NULL),(8,12,'<fhvm.vnnej.JKldv: void endButtonClick1(android.view.View)>',6,'a',NULL),(9,21,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL),(10,29,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL),(11,29,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,9),(2,4,10),(3,5,10),(4,6,9),(5,7,12),(6,8,9),(7,9,12),(8,10,13),(9,11,11),(10,12,13),(11,13,11),(12,14,12),(13,15,11),(14,16,13),(15,17,12),(16,18,13),(17,19,12),(18,20,13),(19,21,13),(20,22,12),(21,23,13),(22,24,11),(23,25,12),(24,26,11),(25,27,11),(26,28,11),(27,29,12),(28,30,12),(29,31,10),(30,32,10),(31,33,11),(32,34,11),(33,35,12),(34,36,11),(35,37,10),(36,38,12),(37,39,10),(38,40,10),(39,41,12),(40,42,12),(41,43,10),(42,44,11),(43,45,12),(44,46,10),(45,47,11),(46,48,11),(47,49,11),(48,50,12),(49,51,12),(50,52,10),(51,53,10),(52,54,11),(53,55,11),(54,56,12),(55,57,11),(56,58,10),(57,59,12),(58,60,10),(59,61,10),(60,62,12),(61,63,12),(62,64,10),(63,65,11),(64,66,12),(65,67,10),(66,68,11),(67,69,11),(68,70,11),(69,71,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'ad/notify/NotificationActivity'),(2,3,'bnjk/jjk3e/CHActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,6,2),(3,8,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'(.*)'),(2,4,'android.intent.extra.shortcut.NAME'),(3,4,'android.intent.extra.shortcut.ICON_RESOURCE'),(4,4,'android.intent.extra.shortcut.INTENT'),(5,5,'android.intent.extra.shortcut.NAME'),(6,5,'(.*)'),(7,5,'android.intent.extra.shortcut.ICON_RESOURCE'),(8,5,'android.intent.extra.shortcut.INTENT'),(9,7,'(.*)'),(10,9,'(.*)(.*)(.*)'),(11,9,'(.*)'),(12,10,'(.*)(.*)'),(13,11,'(.*)(.*)'),(14,12,'(.*)'),(15,12,'(.*)(.*)'),(16,13,'(.*)(.*)(.*)'),(17,14,'(.*)(.*)(.*)'),(18,14,'(.*)'),(19,14,'(.*)(.*)'),(20,15,'(.*)'),(21,16,'(.*)(.*)(.*)'),(22,16,'(.*)'),(23,16,'(.*)(.*)'),(24,17,'(.*)'),(25,17,'(.*)(.*)'),(26,18,'(.*)(.*)(.*)'),(27,18,'(.*)'),(28,19,'(.*)(.*)'),(29,20,'(.*)'),(30,21,'(.*)(.*)(.*)'),(31,22,'(.*)(.*)(.*)'),(32,23,'(.*)(.*)(.*)'),(33,23,'(.*)(.*)'),(34,24,'(.*)'),(35,24,'(.*)(.*)'),(36,25,'(.*)'),(37,26,'(.*)(.*)(.*)'),(38,26,'(.*)'),(39,26,'(.*)(.*)'),(40,27,'(.*)(.*)(.*)'),(41,27,'(.*)'),(42,28,'(.*)(.*)(.*)'),(43,28,'(.*)(.*)'),(44,29,'(.*)(.*)(.*)'),(45,29,'(.*)(.*)'),(46,30,'(.*)(.*)(.*)'),(47,30,'(.*)'),(48,31,'(.*)(.*)(.*)'),(49,31,'(.*)'),(50,31,'(.*)(.*)'),(51,32,'(.*)(.*)(.*)'),(52,33,'(.*)(.*)'),(53,34,'(.*)(.*)(.*)'),(54,35,'(.*)(.*)(.*)'),(55,35,'(.*)'),(56,35,'(.*)(.*)'),(57,36,'(.*)'),(58,37,'(.*)'),(59,38,'(.*)'),(60,38,'(.*)(.*)'),(61,39,'(.*)(.*)(.*)'),(62,39,'(.*)'),(63,40,'(.*)'),(64,40,'(.*)(.*)'),(65,41,'(.*)(.*)'),(66,42,'(.*)(.*)(.*)'),(67,43,'(.*)(.*)(.*)'),(68,43,'(.*)(.*)'),(69,44,'(.*)'),(70,44,'(.*)(.*)'),(71,45,'(.*)'),(72,46,'(.*)(.*)'),(73,47,'(.*)(.*)(.*)'),(74,47,'(.*)'),(75,47,'(.*)(.*)'),(76,48,'(.*)(.*)(.*)'),(77,48,'(.*)'),(78,49,'(.*)(.*)(.*)'),(79,49,'(.*)(.*)'),(80,50,'(.*)(.*)(.*)'),(81,50,'(.*)(.*)'),(82,51,'(.*)(.*)(.*)'),(83,51,'(.*)'),(84,52,'(.*)(.*)(.*)'),(85,52,'(.*)'),(86,52,'(.*)(.*)'),(87,53,'(.*)(.*)(.*)'),(88,54,'(.*)(.*)'),(89,55,'(.*)(.*)(.*)'),(90,56,'(.*)(.*)(.*)'),(91,56,'(.*)'),(92,56,'(.*)(.*)'),(93,57,'(.*)'),(94,58,'(.*)'),(95,59,'(.*)'),(96,59,'(.*)(.*)'),(97,60,'(.*)(.*)(.*)'),(98,60,'(.*)'),(99,61,'(.*)'),(100,61,'(.*)(.*)'),(101,62,'(.*)(.*)'),(102,63,'(.*)(.*)(.*)'),(103,64,'(.*)(.*)(.*)'),(104,64,'(.*)(.*)'),(105,65,'(.*)'),(106,65,'(.*)(.*)'),(107,66,'(.*)'),(108,67,'(.*)(.*)'),(109,68,'(.*)(.*)(.*)'),(110,68,'(.*)'),(111,68,'(.*)(.*)'),(112,69,'(.*)(.*)(.*)'),(113,69,'(.*)'),(114,70,'(.*)(.*)(.*)'),(115,70,'(.*)(.*)'),(116,71,'(.*)(.*)(.*)'),(117,71,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,2),(6,7,3),(7,7,4),(8,7,5),(9,8,6),(10,9,1),(11,10,2),(12,11,4),(13,12,6),(14,13,1),(15,14,2),(16,15,6),(17,16,1),(18,17,7),(19,17,1),(20,18,8),(21,19,4),(22,20,10),(23,21,11),(24,22,12),(25,23,12),(26,24,11),(27,25,10),(28,26,11),(29,27,12),(30,28,10),(31,29,10),(32,30,11),(33,31,12),(34,32,10),(35,33,11),(36,34,12),(37,35,11),(38,36,10),(39,37,12),(40,38,10),(41,39,11),(42,40,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,4,1),(6,9,1),(7,11,2),(8,13,1),(9,16,1),(10,17,1),(11,19,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,'sms',NULL,NULL,NULL,NULL,NULL),(2,8,NULL,NULL,'12345',NULL,NULL,NULL),(3,12,'sms',NULL,NULL,NULL,NULL,NULL),(4,12,NULL,NULL,'83749',NULL,NULL,NULL),(5,15,'sms',NULL,NULL,NULL,NULL,NULL),(6,15,NULL,NULL,'12345',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ad.notify1'),(2,3,'fhvm.vnnej');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,7,0),(7,9,0),(8,11,0),(9,12,0),(10,15,0),(11,17,0),(12,18,0),(13,19,0),(14,20,0),(15,22,0),(16,23,0),(17,24,0),(18,25,0),(19,26,0),(20,27,0),(21,27,0),(22,27,0),(23,28,0),(24,28,0),(25,28,0),(26,26,0),(27,26,0),(28,26,0),(29,29,0),(30,29,0),(31,29,0),(32,30,0),(33,30,0),(34,30,0),(35,25,0),(36,25,0),(37,25,0),(38,31,0),(39,31,0),(40,31,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,9,1,0),(11,9,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,9,1,0),(18,9,1,0),(19,9,1,0),(20,9,1,0),(21,9,1,0),(22,9,1,0),(23,9,1,0),(24,9,1,0),(25,9,1,0),(26,9,1,0),(27,9,1,0),(28,9,1,0),(29,9,1,0),(30,10,1,0),(31,10,1,0),(32,10,1,0),(33,10,1,0),(34,10,1,0),(35,10,1,0),(36,10,1,0),(37,10,1,0),(38,10,1,0),(39,10,1,0),(40,10,1,0),(41,10,1,0),(42,10,1,0),(43,10,1,0),(44,10,1,0),(45,10,1,0),(46,10,1,0),(47,10,1,0),(48,10,1,0),(49,10,1,0),(50,10,1,0),(51,11,1,0),(52,11,1,0),(53,11,1,0),(54,11,1,0),(55,11,1,0),(56,11,1,0),(57,11,1,0),(58,11,1,0),(59,11,1,0),(60,11,1,0),(61,11,1,0),(62,11,1,0),(63,11,1,0),(64,11,1,0),(65,11,1,0),(66,11,1,0),(67,11,1,0),(68,11,1,0),(69,11,1,0),(70,11,1,0),(71,11,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,4,2,NULL),(2,8,4,2,NULL),(3,7,4,2,NULL),(4,9,4,2,NULL),(5,10,4,2,NULL),(6,11,4,2,NULL),(7,12,4,2,NULL),(8,13,4,2,NULL),(9,14,4,2,NULL),(10,15,4,2,NULL),(11,16,4,2,NULL),(12,17,4,2,NULL),(13,18,4,2,NULL),(14,19,4,2,NULL),(15,20,4,2,NULL),(16,21,4,2,NULL),(17,22,4,2,NULL),(18,23,4,2,NULL),(19,24,4,2,NULL),(20,25,4,2,NULL),(21,2,1,2,NULL),(22,26,4,2,NULL),(23,2,2,2,NULL),(24,27,4,2,NULL),(25,2,7,2,NULL),(26,28,4,2,NULL),(27,2,27,2,NULL),(28,29,4,2,NULL),(29,2,5,2,NULL),(30,8,7,2,NULL),(31,2,9,2,NULL),(32,7,7,2,NULL),(33,2,12,2,NULL),(34,9,7,2,NULL),(35,8,3,2,NULL),(36,10,7,2,NULL),(37,2,15,2,NULL),(38,11,7,2,NULL),(39,7,3,2,NULL),(40,12,7,2,NULL),(41,2,17,2,NULL),(42,13,7,2,NULL),(43,2,19,2,NULL),(44,14,7,2,NULL),(45,2,20,2,NULL),(46,15,7,2,NULL),(47,9,3,2,NULL),(48,16,7,2,NULL),(49,10,3,2,NULL),(50,17,7,2,NULL),(51,11,3,2,NULL),(52,18,7,2,NULL),(53,12,3,2,NULL),(54,19,7,2,NULL),(55,13,3,2,NULL),(56,20,7,2,NULL),(57,14,3,2,NULL),(58,21,7,2,NULL),(59,15,3,2,NULL),(60,22,7,2,NULL),(61,16,3,2,NULL),(62,23,7,2,NULL),(63,17,3,2,NULL),(64,24,7,2,NULL),(65,18,3,2,NULL),(66,25,7,2,NULL),(67,19,3,2,NULL),(68,26,7,2,NULL),(69,20,3,2,NULL),(70,27,7,2,NULL),(71,21,3,2,NULL),(72,28,7,2,NULL),(73,22,3,2,NULL),(74,29,7,2,NULL),(75,23,3,2,NULL),(76,8,27,2,NULL),(77,24,3,2,NULL),(78,7,27,2,NULL),(79,25,3,2,NULL),(80,9,27,2,NULL),(81,26,3,2,NULL),(82,10,27,2,NULL),(83,27,3,2,NULL),(84,11,27,2,NULL),(85,28,3,2,NULL),(86,12,27,2,NULL),(87,29,3,2,NULL),(88,13,27,2,NULL),(89,2,31,2,NULL),(90,14,27,2,NULL),(91,2,23,2,NULL),(92,15,27,2,NULL),(93,2,24,2,NULL),(94,16,27,2,NULL),(95,2,25,2,NULL),(96,17,27,2,NULL),(97,2,26,2,NULL),(98,18,27,2,NULL),(99,2,28,2,NULL),(100,19,27,2,NULL),(101,2,29,2,NULL),(102,20,27,2,NULL),(103,2,30,2,NULL),(104,21,27,2,NULL),(105,8,5,2,NULL),(106,22,27,2,NULL),(107,7,5,2,NULL),(108,23,27,2,NULL),(109,9,5,2,NULL),(110,24,27,2,NULL),(111,10,5,2,NULL),(112,25,27,2,NULL),(113,11,5,2,NULL),(114,26,27,2,NULL),(115,12,5,2,NULL),(116,27,27,2,NULL),(117,13,5,2,NULL),(118,28,27,2,NULL),(119,14,5,2,NULL),(120,29,27,2,NULL),(121,15,5,2,NULL),(122,16,5,2,NULL),(123,17,5,2,NULL),(124,18,5,2,NULL),(125,19,5,2,NULL),(126,20,5,2,NULL),(127,21,5,2,NULL),(128,22,5,2,NULL),(129,23,5,2,NULL),(130,24,5,2,NULL),(131,25,5,2,NULL),(132,26,5,2,NULL),(133,27,5,2,NULL),(134,28,5,2,NULL),(135,29,5,2,NULL),(136,1,5,2,NULL),(137,8,9,2,NULL),(138,7,9,2,NULL),(139,9,9,2,NULL),(140,10,9,2,NULL),(141,11,9,2,NULL),(142,12,9,2,NULL),(143,13,9,2,NULL),(144,14,9,2,NULL),(145,15,9,2,NULL),(146,16,9,2,NULL),(147,17,9,2,NULL),(148,18,9,2,NULL),(149,19,9,2,NULL),(150,20,9,2,NULL),(151,21,9,2,NULL),(152,22,9,2,NULL),(153,23,9,2,NULL),(154,24,9,2,NULL),(155,25,9,2,NULL),(156,26,9,2,NULL),(157,27,9,2,NULL),(158,28,9,2,NULL),(159,29,9,2,NULL),(160,8,19,2,NULL),(161,7,19,2,NULL),(162,9,19,2,NULL),(163,10,19,2,NULL),(164,11,19,2,NULL),(165,12,19,2,NULL),(166,13,19,2,NULL),(167,14,19,2,NULL),(168,15,19,2,NULL),(169,16,19,2,NULL),(170,17,19,2,NULL),(171,18,19,2,NULL),(172,19,19,2,NULL),(173,20,19,2,NULL),(174,21,19,2,NULL),(175,22,19,2,NULL),(176,23,19,2,NULL),(177,24,19,2,NULL),(178,25,19,2,NULL),(179,26,19,2,NULL),(180,27,19,2,NULL),(181,28,19,2,NULL),(182,29,19,2,NULL),(183,8,20,2,NULL),(184,7,20,2,NULL),(185,9,20,2,NULL),(186,10,20,2,NULL),(187,11,20,2,NULL),(188,12,20,2,NULL),(189,13,20,2,NULL),(190,14,20,2,NULL),(191,15,20,2,NULL),(192,16,20,2,NULL),(193,17,20,2,NULL),(194,18,20,2,NULL),(195,19,20,2,NULL),(196,20,20,2,NULL),(197,21,20,2,NULL),(198,22,20,2,NULL),(199,23,20,2,NULL),(200,24,20,2,NULL),(201,25,20,2,NULL),(202,26,20,2,NULL),(203,27,20,2,NULL),(204,28,20,2,NULL),(205,29,20,2,NULL),(206,9,1,2,NULL),(207,10,1,2,NULL),(208,11,1,2,NULL),(209,12,1,2,NULL),(210,13,1,2,NULL),(211,14,1,2,NULL),(212,15,1,2,NULL),(213,16,1,2,NULL),(214,17,1,2,NULL),(215,18,1,2,NULL),(216,19,1,2,NULL),(217,20,1,2,NULL),(218,21,1,2,NULL),(219,22,1,2,NULL),(220,23,1,2,NULL),(221,24,1,2,NULL),(222,25,1,2,NULL),(223,26,1,2,NULL),(224,27,1,2,NULL),(225,28,1,2,NULL),(226,29,1,2,NULL),(227,9,2,2,NULL),(228,10,2,2,NULL),(229,11,2,2,NULL),(230,12,2,2,NULL),(231,13,2,2,NULL),(232,14,2,2,NULL),(233,15,2,2,NULL),(234,16,2,2,NULL),(235,17,2,2,NULL),(236,18,2,2,NULL),(237,19,2,2,NULL),(238,20,2,2,NULL),(239,21,2,2,NULL),(240,22,2,2,NULL),(241,23,2,2,NULL),(242,24,2,2,NULL),(243,25,2,2,NULL),(244,26,2,2,NULL),(245,27,2,2,NULL),(246,28,2,2,NULL),(247,29,2,2,NULL),(248,9,12,2,NULL),(249,10,12,2,NULL),(250,11,12,2,NULL),(251,12,12,2,NULL),(252,13,12,2,NULL),(253,14,12,2,NULL),(254,15,12,2,NULL),(255,16,12,2,NULL),(256,17,12,2,NULL),(257,18,12,2,NULL),(258,19,12,2,NULL),(259,20,12,2,NULL),(260,21,12,2,NULL),(261,22,12,2,NULL),(262,23,12,2,NULL),(263,24,12,2,NULL),(264,8,2,2,NULL),(265,25,12,2,NULL),(266,7,2,2,NULL),(267,26,12,2,NULL),(268,27,12,2,NULL),(269,28,12,2,NULL),(270,29,12,2,NULL),(271,9,15,2,NULL),(272,10,15,2,NULL),(273,11,15,2,NULL),(274,12,15,2,NULL),(275,13,15,2,NULL),(276,14,15,2,NULL),(277,15,15,2,NULL),(278,16,15,2,NULL),(279,17,15,2,NULL),(280,18,15,2,NULL),(281,19,15,2,NULL),(282,20,15,2,NULL),(283,21,15,2,NULL),(284,22,15,2,NULL),(285,23,15,2,NULL),(286,24,15,2,NULL),(287,25,15,2,NULL),(288,26,15,2,NULL),(289,27,15,2,NULL),(290,28,15,2,NULL),(291,29,15,2,NULL),(292,9,17,2,NULL),(293,10,17,2,NULL),(294,11,17,2,NULL),(295,12,17,2,NULL),(296,13,17,2,NULL),(297,14,17,2,NULL),(298,15,17,2,NULL),(299,16,17,2,NULL),(300,17,17,2,NULL),(301,18,17,2,NULL),(302,19,17,2,NULL),(303,20,17,2,NULL),(304,21,17,2,NULL),(305,22,17,2,NULL),(306,23,17,2,NULL),(307,24,17,2,NULL),(308,25,17,2,NULL),(309,26,17,2,NULL),(310,27,17,2,NULL),(311,28,17,2,NULL),(312,29,17,2,NULL),(313,9,31,2,NULL),(314,10,31,2,NULL),(315,11,31,2,NULL),(316,12,31,2,NULL),(317,13,31,2,NULL),(318,14,31,2,NULL),(319,15,31,2,NULL),(320,16,31,2,NULL),(321,17,31,2,NULL),(322,18,31,2,NULL),(323,19,31,2,NULL),(324,20,31,2,NULL),(325,21,31,2,NULL),(326,22,31,2,NULL),(327,23,31,2,NULL),(328,24,31,2,NULL),(329,25,31,2,NULL),(330,26,31,2,NULL),(331,27,31,2,NULL),(332,28,31,2,NULL),(333,29,31,2,NULL),(334,9,23,2,NULL),(335,10,23,2,NULL),(336,11,23,2,NULL),(337,12,23,2,NULL),(338,13,23,2,NULL),(339,14,23,2,NULL),(340,15,23,2,NULL),(341,16,23,2,NULL),(342,17,23,2,NULL),(343,18,23,2,NULL),(344,19,23,2,NULL),(345,20,23,2,NULL),(346,21,23,2,NULL),(347,22,23,2,NULL),(348,23,23,2,NULL),(349,24,23,2,NULL),(350,25,23,2,NULL),(351,26,23,2,NULL),(352,27,23,2,NULL),(353,28,23,2,NULL),(354,29,23,2,NULL),(355,9,24,2,NULL),(356,10,24,2,NULL),(357,11,24,2,NULL),(358,12,24,2,NULL),(359,13,24,2,NULL),(360,14,24,2,NULL),(361,15,24,2,NULL),(362,16,24,2,NULL),(363,17,24,2,NULL),(364,18,24,2,NULL),(365,19,24,2,NULL),(366,20,24,2,NULL),(367,21,24,2,NULL),(368,22,24,2,NULL),(369,23,24,2,NULL),(370,24,24,2,NULL),(371,8,1,2,NULL),(372,25,24,2,NULL),(373,26,24,2,NULL),(374,7,1,2,NULL),(375,27,24,2,NULL),(376,28,24,2,NULL),(377,29,24,2,NULL),(378,9,25,2,NULL),(379,10,25,2,NULL),(380,11,25,2,NULL),(381,12,25,2,NULL),(382,13,25,2,NULL),(383,14,25,2,NULL),(384,15,25,2,NULL),(385,16,25,2,NULL),(386,17,25,2,NULL),(387,18,25,2,NULL),(388,19,25,2,NULL),(389,20,25,2,NULL),(390,8,15,2,NULL),(391,21,25,2,NULL),(392,7,12,2,NULL),(393,22,25,2,NULL),(394,8,17,2,NULL),(395,23,25,2,NULL),(396,8,31,2,NULL),(397,24,25,2,NULL),(398,8,23,2,NULL),(399,25,25,2,NULL),(400,8,24,2,NULL),(401,26,25,2,NULL),(402,8,25,2,NULL),(403,27,25,2,NULL),(404,8,26,2,NULL),(405,28,25,2,NULL),(406,8,28,2,NULL),(407,29,25,2,NULL),(408,8,29,2,NULL),(409,9,26,2,NULL),(410,8,30,2,NULL),(411,10,26,2,NULL),(412,11,26,2,NULL),(413,7,15,2,NULL),(414,12,26,2,NULL),(415,7,17,2,NULL),(416,13,26,2,NULL),(417,7,31,2,NULL),(418,14,26,2,NULL),(419,7,23,2,NULL),(420,15,26,2,NULL),(421,7,24,2,NULL),(422,16,26,2,NULL),(423,7,25,2,NULL),(424,17,26,2,NULL),(425,7,26,2,NULL),(426,18,26,2,NULL),(427,7,28,2,NULL),(428,19,26,2,NULL),(429,7,29,2,NULL),(430,20,26,2,NULL),(431,7,30,2,NULL),(432,21,26,2,NULL),(433,22,26,2,NULL),(434,23,26,2,NULL),(435,24,26,2,NULL),(436,25,26,2,NULL),(437,26,26,2,NULL),(438,27,26,2,NULL),(439,28,26,2,NULL),(440,29,26,2,NULL),(441,9,28,2,NULL),(442,10,28,2,NULL),(443,11,28,2,NULL),(444,12,28,2,NULL),(445,13,28,2,NULL),(446,14,28,2,NULL),(447,15,28,2,NULL),(448,16,28,2,NULL),(449,17,28,2,NULL),(450,18,28,2,NULL),(451,19,28,2,NULL),(452,20,28,2,NULL),(453,21,28,2,NULL),(454,22,28,2,NULL),(455,23,28,2,NULL),(456,23,28,2,NULL),(457,24,28,2,NULL),(458,25,28,2,NULL),(459,25,28,2,NULL),(460,26,28,2,NULL),(461,27,28,2,NULL),(462,28,28,2,NULL),(463,29,28,2,NULL),(464,9,29,2,NULL),(465,10,29,2,NULL),(466,11,29,2,NULL),(467,12,29,2,NULL),(468,13,29,2,NULL),(469,14,29,2,NULL),(470,15,29,2,NULL),(471,16,29,2,NULL),(472,17,29,2,NULL),(473,18,29,2,NULL),(474,19,29,2,NULL),(475,20,29,2,NULL),(476,21,29,2,NULL),(477,22,29,2,NULL),(478,23,29,2,NULL),(479,24,29,2,NULL),(480,25,29,2,NULL),(481,26,29,2,NULL),(482,26,29,2,NULL),(483,27,29,2,NULL),(484,28,29,2,NULL),(485,29,29,2,NULL),(486,9,30,2,NULL),(487,10,30,2,NULL),(488,11,30,2,NULL),(489,12,30,2,NULL),(490,13,30,2,NULL),(491,14,30,2,NULL),(492,15,30,2,NULL),(493,16,30,2,NULL),(494,17,30,2,NULL),(495,18,30,2,NULL),(496,19,30,2,NULL),(497,20,30,2,NULL),(498,21,30,2,NULL),(499,22,30,2,NULL),(500,23,30,2,NULL),(501,24,30,2,NULL),(502,25,30,2,NULL),(503,26,30,2,NULL),(504,27,30,2,NULL),(505,28,30,2,NULL),(506,29,30,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_COARSE_UPDATES'),(14,'android.permission.ACCESS_FINE_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.DELETE_PACKAGES'),(5,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(2,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SECURE_SETTINGS'),(18,'android.permission.WRITE_SETTINGS'),(7,'com.android.alarm.permission.SET_ALARM'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,3,1),(7,3,2),(8,3,3),(9,4,1),(10,3,4),(11,4,2),(12,3,5),(13,4,3),(14,3,6),(15,4,4),(16,3,7),(17,4,5),(18,3,8),(19,4,8),(20,3,9),(21,4,15),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,5,1),(28,5,2),(29,5,3),(30,5,4),(31,5,5),(32,5,6),(33,5,8),(34,5,9),(35,5,11),(36,5,12),(37,5,14),(38,6,1),(39,6,2),(40,6,3),(41,6,4),(42,6,5),(43,6,6),(44,6,7),(45,6,8),(46,6,9),(47,6,10),(48,6,11),(49,6,12),(50,6,13),(51,6,14),(52,7,1),(53,7,2),(54,7,3),(55,7,4),(56,7,5),(57,7,6),(58,7,7),(59,7,8),(60,7,9),(61,7,10),(62,7,11),(63,7,12),(64,7,13),(65,7,14),(66,7,17),(67,7,16),(68,7,18);
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

-- Dump completed on 2015-10-12  3:31:10
