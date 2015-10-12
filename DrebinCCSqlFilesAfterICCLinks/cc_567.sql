-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_567
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'(.*)(.*)'),(16,'(.*)(.*)(.*)'),(15,'(.*)(.*)(.*)(.*)'),(12,'SMS_DELIVERED'),(10,'SMS_SENT'),(4,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.provider.Telephony.SMS_RECEIVED'),(6,'dsrhki.yjgfqjejkjh.gbjutaxgpStart76'),(8,'mcrpkto.itqkop.hckbqnbStart76'),(3,'ru.alpha.AlphaServiceStart76'),(9,'uuuijccjx.hebslx.xpjsxwpvoStart76');
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
INSERT INTO `Applications` VALUES (1,'com.agewap.soft',1),(2,'com.alter.sms',1),(3,'nuu643.JJK73f',1),(4,'kudgofcpa.cdddbuto',1),(5,'vbkoxh.cswnpr',1),(6,'ynlxcd.cwductjwjc',1),(7,'ngjvnpslnp.iplhmk',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.agewap.soft.ProgressBarActivity'),(2,2,'com.alter.sms.AlterSMSActivity'),(3,2,'com.alter.sms.RulesActivity'),(4,2,'com.alter.sms.LastActivity'),(5,2,'com.alter.sms.SmsReceiver'),(6,3,'nuu643.JJK73f.Njjkreh'),(7,3,'erh8.nmm6.BWebA'),(8,3,'erh8.nmm6.BHActivity'),(9,3,'erh8.nmm6.BService'),(10,3,'erh8.nmm6.BReceiver'),(11,3,'nuu643.JJK73f.BBReceiver'),(12,4,'kudgofcpa.cdddbuto.qltlybwxsoe'),(13,4,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(14,4,'dlsplpdqld.qjvgddw.hcjicng'),(15,4,'kudgofcpa.cdddbuto.ecufglp'),(16,5,'vbkoxh.cswnpr.vmbatqef'),(17,5,'dsrhki.yjgfqjejkjh.gbjutaxgp'),(18,6,'ynlxcd.cwductjwjc.admyusbyfes'),(19,7,'ngjvnpslnp.iplhmk.yqniqkxgpoo'),(20,5,'vbkoxh.cswnpr.fcynudr'),(21,6,'mcrpkto.itqkop.hckbqnb'),(22,7,'uuuijccjx.hebslx.xpjsxwpvo'),(23,5,'dsrhki.yjgfqjejkjh.wkuljwsx'),(24,5,'vbkoxh.cswnpr.yaqxbtyoan'),(25,6,'ynlxcd.cwductjwjc.ecjphtowcv'),(26,7,'uuuijccjx.hebslx.wlamdyyqa'),(27,6,'mcrpkto.itqkop.vyfhyipjkrj'),(28,7,'ngjvnpslnp.iplhmk.tmnyuqie'),(29,6,'ynlxcd.cwductjwjc.pbbceorg'),(30,2,'com.alter.sms.AlterSMSActivity$1'),(31,2,'com.alter.sms.AlterSMSActivity$5'),(32,2,'com.alter.sms.RulesActivity$5'),(33,2,'com.alter.sms.AlterSMSActivity$6'),(34,2,'com.alter.sms.RulesActivity$6'),(35,3,'erh8.nmm6.more'),(36,4,'dlsplpdqld.qjvgddw.ydlabek'),(37,7,'ngjvnpslnp.iplhmk.nmycxbb'),(38,7,'uuuijccjx.hebslx.nrggfqqc'),(39,7,'ngjvnpslnp.iplhmk.gjile'),(40,4,'kudgofcpa.cdddbuto.ktpessvth');
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
INSERT INTO `ComponentExtras` VALUES (1,5,'pdus'),(2,9,'(.*)'),(3,8,'(.*)'),(4,10,'(.*)'),(5,7,'(.*)'),(6,13,'(.*)(.*)(.*)'),(7,13,'(.*)'),(8,13,'(.*)(.*)'),(9,14,'(.*)(.*)(.*)'),(10,14,'(.*)'),(11,14,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,31,'r',1,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,33,'r',1,NULL,NULL),(33,34,'r',1,NULL,NULL),(34,37,'r',1,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,40,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,4),(3,3,2),(4,4,6),(5,5,6),(6,6,9),(7,7,10),(8,8,9),(9,9,9),(10,10,14),(11,11,13),(12,12,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,30,'<com.alter.sms.AlterSMSActivity$1: void onClick(android.view.View)>',8,'a',NULL),(2,4,'<com.alter.sms.LastActivity: void onCreate(android.os.Bundle)>',13,'a',NULL),(3,2,'<com.alter.sms.AlterSMSActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(4,6,'<nuu643.JJK73f.Njjkreh: void endButtonClick1(android.view.View)>',6,'a',NULL),(5,35,'<erh8.nmm6.more: void <init>(android.content.Context,java.lang.String,java.lang.String)>',71,'r',NULL),(6,35,'<erh8.nmm6.more: void more(android.content.Context,java.lang.String)>',6,'a',NULL),(7,10,'<erh8.nmm6.BReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'s',NULL),(8,35,'<erh8.nmm6.more: void more(android.content.Context,java.lang.String,int,java.lang.String)>',65,'r',NULL),(9,35,'<erh8.nmm6.more: void tales(android.content.Context,java.lang.String)>',7,'a',NULL),(10,14,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL),(11,36,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL),(12,36,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,2,11),(2,4,11),(3,5,13),(4,6,11),(5,7,14),(6,8,13),(7,10,14),(8,11,15),(9,12,16),(10,13,15),(11,14,16),(12,15,14),(13,16,16),(14,17,15),(15,18,14),(16,19,15),(17,20,14),(18,21,15),(19,22,15),(20,23,14),(21,24,15),(22,25,16),(23,26,14),(24,27,16),(25,28,16),(26,29,16),(27,30,14),(28,31,14),(29,32,13),(30,33,13),(31,34,16),(32,35,16),(33,36,14),(34,37,16),(35,38,13),(36,39,14),(37,40,13),(38,41,13),(39,42,14),(40,43,14),(41,44,13),(42,45,16),(43,46,14),(44,47,13),(45,48,16),(46,49,16),(47,50,16),(48,51,14),(49,52,14),(50,53,13),(51,54,13),(52,55,16),(53,56,16),(54,57,14),(55,58,16),(56,59,13),(57,60,14),(58,61,13),(59,62,13),(60,63,14),(61,64,14),(62,65,13),(63,66,16),(64,67,14),(65,68,13),(66,69,16),(67,70,16),(68,71,16),(69,72,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/alter/sms/RulesActivity'),(2,3,'com/alter/sms/LastActivity'),(3,9,'erh8/nmm6/BHActivity');
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
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,6,3);
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
INSERT INTO `IExtras` VALUES (1,5,'android.intent.extra.shortcut.NAME'),(2,5,'(.*)'),(3,5,'android.intent.extra.shortcut.ICON_RESOURCE'),(4,5,'android.intent.extra.shortcut.INTENT'),(5,7,'(.*)'),(6,8,'android.intent.extra.shortcut.NAME'),(7,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(8,8,'android.intent.extra.shortcut.INTENT'),(9,9,'(.*)'),(10,10,'(.*)(.*)(.*)'),(11,10,'(.*)'),(12,11,'(.*)(.*)'),(13,12,'(.*)(.*)'),(14,13,'(.*)'),(15,13,'(.*)(.*)'),(16,14,'(.*)(.*)(.*)'),(17,15,'(.*)(.*)(.*)'),(18,15,'(.*)'),(19,15,'(.*)(.*)'),(20,16,'(.*)'),(21,17,'(.*)(.*)(.*)'),(22,17,'(.*)'),(23,17,'(.*)(.*)'),(24,18,'(.*)'),(25,18,'(.*)(.*)'),(26,19,'(.*)(.*)(.*)'),(27,19,'(.*)'),(28,20,'(.*)(.*)'),(29,21,'(.*)'),(30,22,'(.*)(.*)(.*)'),(31,23,'(.*)(.*)(.*)'),(32,24,'(.*)(.*)(.*)'),(33,24,'(.*)(.*)'),(34,25,'(.*)'),(35,25,'(.*)(.*)'),(36,26,'(.*)'),(37,27,'(.*)(.*)(.*)'),(38,27,'(.*)'),(39,27,'(.*)(.*)'),(40,28,'(.*)(.*)(.*)'),(41,28,'(.*)'),(42,29,'(.*)(.*)(.*)'),(43,29,'(.*)(.*)'),(44,30,'(.*)(.*)(.*)'),(45,30,'(.*)(.*)'),(46,31,'(.*)(.*)(.*)'),(47,31,'(.*)'),(48,32,'(.*)(.*)(.*)'),(49,32,'(.*)'),(50,32,'(.*)(.*)'),(51,33,'(.*)(.*)(.*)'),(52,34,'(.*)(.*)'),(53,35,'(.*)(.*)(.*)'),(54,36,'(.*)(.*)(.*)'),(55,36,'(.*)'),(56,36,'(.*)(.*)'),(57,37,'(.*)'),(58,38,'(.*)'),(59,39,'(.*)'),(60,39,'(.*)(.*)'),(61,40,'(.*)(.*)(.*)'),(62,40,'(.*)'),(63,41,'(.*)'),(64,41,'(.*)(.*)'),(65,42,'(.*)(.*)'),(66,43,'(.*)(.*)(.*)'),(67,44,'(.*)(.*)(.*)'),(68,44,'(.*)(.*)'),(69,45,'(.*)'),(70,45,'(.*)(.*)'),(71,46,'(.*)'),(72,47,'(.*)(.*)'),(73,48,'(.*)(.*)(.*)'),(74,48,'(.*)'),(75,48,'(.*)(.*)'),(76,49,'(.*)(.*)(.*)'),(77,49,'(.*)'),(78,50,'(.*)(.*)(.*)'),(79,50,'(.*)(.*)'),(80,51,'(.*)(.*)(.*)'),(81,51,'(.*)(.*)'),(82,52,'(.*)(.*)(.*)'),(83,52,'(.*)'),(84,53,'(.*)(.*)(.*)'),(85,53,'(.*)'),(86,53,'(.*)(.*)'),(87,54,'(.*)(.*)(.*)'),(88,55,'(.*)(.*)'),(89,56,'(.*)(.*)(.*)'),(90,57,'(.*)(.*)(.*)'),(91,57,'(.*)'),(92,57,'(.*)(.*)'),(93,58,'(.*)'),(94,59,'(.*)'),(95,60,'(.*)'),(96,60,'(.*)(.*)'),(97,61,'(.*)(.*)(.*)'),(98,61,'(.*)'),(99,62,'(.*)'),(100,62,'(.*)(.*)'),(101,63,'(.*)(.*)'),(102,64,'(.*)(.*)(.*)'),(103,65,'(.*)(.*)(.*)'),(104,65,'(.*)(.*)'),(105,66,'(.*)'),(106,66,'(.*)(.*)'),(107,67,'(.*)'),(108,68,'(.*)(.*)'),(109,69,'(.*)(.*)(.*)'),(110,69,'(.*)'),(111,69,'(.*)(.*)'),(112,70,'(.*)(.*)(.*)'),(113,70,'(.*)'),(114,71,'(.*)(.*)(.*)'),(115,71,'(.*)(.*)'),(116,72,'(.*)(.*)(.*)'),(117,72,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,6,4),(7,7,1),(8,8,3),(9,9,5),(10,10,1),(11,11,6),(12,11,1),(13,12,1),(14,13,1),(15,14,7),(16,15,1),(17,15,8),(18,16,2),(19,17,1),(20,17,9),(21,18,4),(22,19,7),(23,20,2),(24,21,2),(25,22,4),(26,23,4),(27,24,10),(28,25,10),(29,26,12),(30,27,12),(31,28,14),(32,29,13),(33,30,16),(34,31,13),(35,32,16),(36,33,14),(37,34,13),(38,35,16),(39,36,14),(40,37,16),(41,38,13),(42,39,14),(43,40,13),(44,41,16),(45,42,14),(46,43,13),(47,44,16),(48,45,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,2),(5,7,1),(6,10,1),(7,11,1),(8,12,1),(9,13,1),(10,15,1),(11,17,1),(12,18,2),(13,22,2),(14,23,2);
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
INSERT INTO `IFData` VALUES (1,9,'sms',NULL,NULL,NULL,NULL,NULL),(2,9,NULL,NULL,'12345',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.alter.sms'),(2,3,'com.alter.sms'),(3,9,'nuu643.JJK73f');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,9,0),(6,11,0),(7,12,0),(8,13,0),(9,15,0),(10,16,0),(11,17,0),(12,18,0),(13,19,0),(14,20,0),(15,21,0),(16,23,0),(17,22,0),(18,24,0),(19,25,0),(20,26,0),(21,27,0),(22,28,0),(23,29,0),(24,30,0),(25,31,0),(26,32,0),(27,33,0),(28,34,0),(29,34,0),(30,34,0),(31,28,0),(32,28,0),(33,28,0),(34,35,0),(35,35,0),(36,35,0),(37,36,0),(38,36,0),(39,36,0),(40,26,0),(41,26,0),(42,26,0),(43,37,0),(44,37,0),(45,37,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,0,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,10,1,0),(14,10,1,0),(15,10,1,0),(16,10,1,0),(17,10,1,0),(18,10,1,0),(19,10,1,0),(20,10,1,0),(21,10,1,0),(22,10,1,0),(23,10,1,0),(24,10,1,0),(25,10,1,0),(26,10,1,0),(27,10,1,0),(28,10,1,0),(29,10,1,0),(30,10,1,0),(31,11,1,0),(32,11,1,0),(33,11,1,0),(34,11,1,0),(35,11,1,0),(36,11,1,0),(37,11,1,0),(38,11,1,0),(39,11,1,0),(40,11,1,0),(41,11,1,0),(42,11,1,0),(43,11,1,0),(44,11,1,0),(45,11,1,0),(46,11,1,0),(47,11,1,0),(48,11,1,0),(49,11,1,0),(50,11,1,0),(51,11,1,0),(52,12,1,0),(53,12,1,0),(54,12,1,0),(55,12,1,0),(56,12,1,0),(57,12,1,0),(58,12,1,0),(59,12,1,0),(60,12,1,0),(61,12,1,0),(62,12,1,0),(63,12,1,0),(64,12,1,0),(65,12,1,0),(66,12,1,0),(67,12,1,0),(68,12,1,0),(69,12,1,0),(70,12,1,0),(71,12,1,0),(72,12,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=691 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,18,2,NULL),(2,7,18,2,NULL),(3,10,18,2,NULL),(4,11,18,2,NULL),(5,12,18,2,NULL),(6,13,18,2,NULL),(7,14,18,2,NULL),(8,15,18,2,NULL),(9,16,18,2,NULL),(10,17,18,2,NULL),(11,18,18,2,NULL),(12,19,18,2,NULL),(13,20,18,2,NULL),(14,21,18,2,NULL),(15,22,18,2,NULL),(16,23,18,2,NULL),(17,24,18,2,NULL),(18,25,18,2,NULL),(19,26,18,2,NULL),(20,27,18,2,NULL),(21,4,1,2,NULL),(22,28,18,2,NULL),(23,7,1,2,NULL),(24,29,18,2,NULL),(25,10,1,2,NULL),(26,30,18,2,NULL),(27,11,1,2,NULL),(28,4,21,2,NULL),(29,12,1,2,NULL),(30,7,21,2,NULL),(31,13,1,2,NULL),(32,10,21,2,NULL),(33,14,1,2,NULL),(34,11,21,2,NULL),(35,15,1,2,NULL),(36,12,21,2,NULL),(37,16,1,2,NULL),(38,13,21,2,NULL),(39,17,1,2,NULL),(40,14,21,2,NULL),(41,18,1,2,NULL),(42,15,21,2,NULL),(43,19,1,2,NULL),(44,16,21,2,NULL),(45,20,1,2,NULL),(46,17,21,2,NULL),(47,21,1,2,NULL),(48,18,21,2,NULL),(49,22,1,2,NULL),(50,19,21,2,NULL),(51,23,1,2,NULL),(52,20,21,2,NULL),(53,24,1,2,NULL),(54,21,21,2,NULL),(55,25,1,2,NULL),(56,22,21,2,NULL),(57,26,1,2,NULL),(58,23,21,2,NULL),(59,27,1,2,NULL),(60,24,21,2,NULL),(61,28,1,2,NULL),(62,25,21,2,NULL),(63,29,1,2,NULL),(64,26,21,2,NULL),(65,30,1,2,NULL),(66,27,21,2,NULL),(67,28,21,2,NULL),(68,29,21,2,NULL),(69,30,21,2,NULL),(70,4,25,2,NULL),(71,7,25,2,NULL),(72,10,25,2,NULL),(73,11,25,2,NULL),(74,12,25,2,NULL),(75,13,25,2,NULL),(76,14,25,2,NULL),(77,15,25,2,NULL),(78,16,25,2,NULL),(79,17,25,2,NULL),(80,18,25,2,NULL),(81,19,25,2,NULL),(82,20,25,2,NULL),(83,21,25,2,NULL),(84,22,25,2,NULL),(85,23,25,2,NULL),(86,24,25,2,NULL),(87,25,25,2,NULL),(88,26,25,2,NULL),(89,27,25,2,NULL),(90,28,25,2,NULL),(91,29,25,2,NULL),(92,30,25,2,NULL),(93,4,27,2,NULL),(94,7,27,2,NULL),(95,10,27,2,NULL),(96,11,27,2,NULL),(97,12,27,2,NULL),(98,13,27,2,NULL),(99,14,27,2,NULL),(100,15,27,2,NULL),(101,16,27,2,NULL),(102,17,27,2,NULL),(103,18,27,2,NULL),(104,19,27,2,NULL),(105,20,27,2,NULL),(106,21,27,2,NULL),(107,22,27,2,NULL),(108,23,27,2,NULL),(109,24,27,2,NULL),(110,25,27,2,NULL),(111,26,27,2,NULL),(112,27,27,2,NULL),(113,4,2,2,NULL),(114,28,27,2,NULL),(115,29,27,2,NULL),(116,4,5,2,NULL),(117,30,27,2,NULL),(118,4,29,2,NULL),(119,4,30,2,NULL),(120,7,29,2,NULL),(121,4,31,2,NULL),(122,10,29,2,NULL),(123,11,29,2,NULL),(124,4,32,2,NULL),(125,12,29,2,NULL),(126,13,29,2,NULL),(127,4,33,2,NULL),(128,14,29,2,NULL),(129,15,29,2,NULL),(130,4,9,2,NULL),(131,16,29,2,NULL),(132,17,29,2,NULL),(133,7,6,2,NULL),(134,18,29,2,NULL),(135,4,11,2,NULL),(136,19,29,2,NULL),(137,4,12,2,NULL),(138,20,29,2,NULL),(139,4,13,2,NULL),(140,21,29,2,NULL),(141,22,29,2,NULL),(142,10,6,2,NULL),(143,23,29,2,NULL),(144,11,6,2,NULL),(145,24,29,2,NULL),(146,12,6,2,NULL),(147,25,29,2,NULL),(148,13,6,2,NULL),(149,26,29,2,NULL),(150,14,6,2,NULL),(151,27,29,2,NULL),(152,15,6,2,NULL),(153,28,29,2,NULL),(154,16,6,2,NULL),(155,29,29,2,NULL),(156,17,6,2,NULL),(157,30,29,2,NULL),(158,18,6,2,NULL),(159,19,6,2,NULL),(160,20,6,2,NULL),(161,21,6,2,NULL),(162,22,6,2,NULL),(163,23,6,2,NULL),(164,24,6,2,NULL),(165,25,6,2,NULL),(166,26,6,2,NULL),(167,27,6,2,NULL),(168,28,6,2,NULL),(169,29,6,2,NULL),(170,30,6,2,NULL),(171,4,37,2,NULL),(172,4,16,2,NULL),(173,4,17,2,NULL),(174,4,20,2,NULL),(175,4,23,2,NULL),(176,4,24,2,NULL),(177,4,19,2,NULL),(178,4,22,2,NULL),(179,4,26,2,NULL),(180,4,28,2,NULL),(181,4,34,2,NULL),(182,4,35,2,NULL),(183,4,36,2,NULL),(184,7,9,2,NULL),(185,10,9,2,NULL),(186,11,9,2,NULL),(187,12,9,2,NULL),(188,13,9,2,NULL),(189,14,9,2,NULL),(190,15,9,2,NULL),(191,16,9,2,NULL),(192,17,9,2,NULL),(193,18,9,2,NULL),(194,19,9,2,NULL),(195,20,9,2,NULL),(196,21,9,2,NULL),(197,22,9,2,NULL),(198,23,9,2,NULL),(199,24,9,2,NULL),(200,25,9,2,NULL),(201,26,9,2,NULL),(202,27,9,2,NULL),(203,28,9,2,NULL),(204,29,9,2,NULL),(205,30,9,2,NULL),(206,7,2,2,NULL),(207,7,5,2,NULL),(208,7,30,2,NULL),(209,7,31,2,NULL),(210,7,32,2,NULL),(211,7,33,2,NULL),(212,7,11,2,NULL),(213,7,12,2,NULL),(214,7,13,2,NULL),(215,7,37,2,NULL),(216,7,16,2,NULL),(217,7,17,2,NULL),(218,7,20,2,NULL),(219,7,23,2,NULL),(220,7,24,2,NULL),(221,7,19,2,NULL),(222,7,22,2,NULL),(223,7,26,2,NULL),(224,7,28,2,NULL),(225,7,34,2,NULL),(226,7,35,2,NULL),(227,7,36,2,NULL),(228,10,11,2,NULL),(229,11,11,2,NULL),(230,12,11,2,NULL),(231,13,11,2,NULL),(232,10,12,2,NULL),(233,14,11,2,NULL),(234,11,12,2,NULL),(235,15,11,2,NULL),(236,12,12,2,NULL),(237,16,11,2,NULL),(238,13,12,2,NULL),(239,17,11,2,NULL),(240,14,12,2,NULL),(241,18,11,2,NULL),(242,15,12,2,NULL),(243,19,11,2,NULL),(244,16,12,2,NULL),(245,20,11,2,NULL),(246,17,12,2,NULL),(247,21,11,2,NULL),(248,18,12,2,NULL),(249,22,11,2,NULL),(250,10,19,2,NULL),(251,19,12,2,NULL),(252,23,11,2,NULL),(253,11,19,2,NULL),(254,20,12,2,NULL),(255,24,11,2,NULL),(256,21,12,2,NULL),(257,12,19,2,NULL),(258,25,11,2,NULL),(259,22,12,2,NULL),(260,13,19,2,NULL),(261,26,11,2,NULL),(262,23,12,2,NULL),(263,14,19,2,NULL),(264,27,11,2,NULL),(265,24,12,2,NULL),(266,15,19,2,NULL),(267,28,11,2,NULL),(268,25,12,2,NULL),(269,16,19,2,NULL),(270,29,11,2,NULL),(271,26,12,2,NULL),(272,17,19,2,NULL),(273,30,11,2,NULL),(274,27,12,2,NULL),(275,18,19,2,NULL),(276,19,19,2,NULL),(277,28,12,2,NULL),(278,20,19,2,NULL),(279,29,12,2,NULL),(280,21,19,2,NULL),(281,30,12,2,NULL),(282,22,19,2,NULL),(283,10,13,2,NULL),(284,23,19,2,NULL),(285,11,13,2,NULL),(286,24,19,2,NULL),(287,12,13,2,NULL),(288,25,19,2,NULL),(289,13,13,2,NULL),(290,26,19,2,NULL),(291,14,13,2,NULL),(292,27,19,2,NULL),(293,15,13,2,NULL),(294,28,19,2,NULL),(295,16,13,2,NULL),(296,29,19,2,NULL),(297,17,13,2,NULL),(298,30,19,2,NULL),(299,18,13,2,NULL),(300,10,22,2,NULL),(301,19,13,2,NULL),(302,11,22,2,NULL),(303,20,13,2,NULL),(304,12,22,2,NULL),(305,21,13,2,NULL),(306,13,22,2,NULL),(307,22,13,2,NULL),(308,14,22,2,NULL),(309,23,13,2,NULL),(310,15,22,2,NULL),(311,24,13,2,NULL),(312,16,22,2,NULL),(313,25,13,2,NULL),(314,17,22,2,NULL),(315,26,13,2,NULL),(316,18,22,2,NULL),(317,27,13,2,NULL),(318,19,22,2,NULL),(319,28,13,2,NULL),(320,20,22,2,NULL),(321,29,13,2,NULL),(322,21,22,2,NULL),(323,30,13,2,NULL),(324,22,22,2,NULL),(325,10,2,2,NULL),(326,23,22,2,NULL),(327,11,2,2,NULL),(328,24,22,2,NULL),(329,12,2,2,NULL),(330,25,22,2,NULL),(331,13,2,2,NULL),(332,26,22,2,NULL),(333,14,2,2,NULL),(334,27,22,2,NULL),(335,15,2,2,NULL),(336,28,22,2,NULL),(337,16,2,2,NULL),(338,29,22,2,NULL),(339,17,2,2,NULL),(340,30,22,2,NULL),(341,18,2,2,NULL),(342,10,26,2,NULL),(343,19,2,2,NULL),(344,11,26,2,NULL),(345,20,2,2,NULL),(346,12,26,2,NULL),(347,21,2,2,NULL),(348,13,26,2,NULL),(349,22,2,2,NULL),(350,14,26,2,NULL),(351,23,2,2,NULL),(352,15,26,2,NULL),(353,24,2,2,NULL),(354,16,26,2,NULL),(355,25,2,2,NULL),(356,17,26,2,NULL),(357,26,2,2,NULL),(358,18,26,2,NULL),(359,27,2,2,NULL),(360,19,26,2,NULL),(361,28,2,2,NULL),(362,20,26,2,NULL),(363,29,2,2,NULL),(364,21,26,2,NULL),(365,30,2,2,NULL),(366,22,26,2,NULL),(367,10,5,2,NULL),(368,23,26,2,NULL),(369,11,5,2,NULL),(370,24,26,2,NULL),(371,12,5,2,NULL),(372,25,26,2,NULL),(373,13,5,2,NULL),(374,26,26,2,NULL),(375,14,5,2,NULL),(376,27,26,2,NULL),(377,15,5,2,NULL),(378,28,26,2,NULL),(379,16,5,2,NULL),(380,29,26,2,NULL),(381,17,5,2,NULL),(382,30,26,2,NULL),(383,18,5,2,NULL),(384,10,28,2,NULL),(385,19,5,2,NULL),(386,11,28,2,NULL),(387,20,5,2,NULL),(388,12,28,2,NULL),(389,21,5,2,NULL),(390,13,28,2,NULL),(391,22,5,2,NULL),(392,14,28,2,NULL),(393,23,5,2,NULL),(394,15,28,2,NULL),(395,24,5,2,NULL),(396,16,28,2,NULL),(397,25,5,2,NULL),(398,17,28,2,NULL),(399,26,5,2,NULL),(400,18,28,2,NULL),(401,27,5,2,NULL),(402,19,28,2,NULL),(403,28,5,2,NULL),(404,20,28,2,NULL),(405,29,5,2,NULL),(406,21,28,2,NULL),(407,30,5,2,NULL),(408,22,28,2,NULL),(409,10,30,2,NULL),(410,23,28,2,NULL),(411,11,30,2,NULL),(412,24,28,2,NULL),(413,12,30,2,NULL),(414,25,28,2,NULL),(415,13,30,2,NULL),(416,26,28,2,NULL),(417,14,30,2,NULL),(418,27,28,2,NULL),(419,15,30,2,NULL),(420,28,28,2,NULL),(421,16,30,2,NULL),(422,29,28,2,NULL),(423,17,30,2,NULL),(424,30,28,2,NULL),(425,18,30,2,NULL),(426,10,34,2,NULL),(427,19,30,2,NULL),(428,11,34,2,NULL),(429,20,30,2,NULL),(430,12,34,2,NULL),(431,21,30,2,NULL),(432,13,34,2,NULL),(433,22,30,2,NULL),(434,14,34,2,NULL),(435,23,30,2,NULL),(436,15,34,2,NULL),(437,24,30,2,NULL),(438,16,34,2,NULL),(439,25,30,2,NULL),(440,17,34,2,NULL),(441,26,30,2,NULL),(442,18,34,2,NULL),(443,27,30,2,NULL),(444,19,34,2,NULL),(445,28,30,2,NULL),(446,20,34,2,NULL),(447,29,30,2,NULL),(448,21,34,2,NULL),(449,30,30,2,NULL),(450,22,34,2,NULL),(451,10,31,2,NULL),(452,23,34,2,NULL),(453,11,31,2,NULL),(454,24,34,2,NULL),(455,12,31,2,NULL),(456,25,34,2,NULL),(457,13,31,2,NULL),(458,26,34,2,NULL),(459,14,31,2,NULL),(460,27,34,2,NULL),(461,15,31,2,NULL),(462,28,34,2,NULL),(463,16,31,2,NULL),(464,29,34,2,NULL),(465,17,31,2,NULL),(466,30,34,2,NULL),(467,18,31,2,NULL),(468,10,35,2,NULL),(469,19,31,2,NULL),(470,11,35,2,NULL),(471,20,31,2,NULL),(472,12,35,2,NULL),(473,21,31,2,NULL),(474,13,35,2,NULL),(475,22,31,2,NULL),(476,14,35,2,NULL),(477,23,31,2,NULL),(478,15,35,2,NULL),(479,24,31,2,NULL),(480,16,35,2,NULL),(481,25,31,2,NULL),(482,17,35,2,NULL),(483,26,31,2,NULL),(484,18,35,2,NULL),(485,27,31,2,NULL),(486,19,35,2,NULL),(487,28,31,2,NULL),(488,20,35,2,NULL),(489,29,31,2,NULL),(490,21,35,2,NULL),(491,30,31,2,NULL),(492,22,35,2,NULL),(493,10,32,2,NULL),(494,23,35,2,NULL),(495,11,32,2,NULL),(496,24,35,2,NULL),(497,12,32,2,NULL),(498,25,35,2,NULL),(499,13,32,2,NULL),(500,26,35,2,NULL),(501,14,32,2,NULL),(502,27,35,2,NULL),(503,15,32,2,NULL),(504,28,35,2,NULL),(505,16,32,2,NULL),(506,29,35,2,NULL),(507,17,32,2,NULL),(508,30,35,2,NULL),(509,18,32,2,NULL),(510,10,36,2,NULL),(511,19,32,2,NULL),(512,11,36,2,NULL),(513,20,32,2,NULL),(514,12,36,2,NULL),(515,21,32,2,NULL),(516,13,36,2,NULL),(517,22,32,2,NULL),(518,14,36,2,NULL),(519,23,32,2,NULL),(520,15,36,2,NULL),(521,24,32,2,NULL),(522,16,36,2,NULL),(523,25,32,2,NULL),(524,17,36,2,NULL),(525,26,32,2,NULL),(526,18,36,2,NULL),(527,27,32,2,NULL),(528,19,36,2,NULL),(529,28,32,2,NULL),(530,20,36,2,NULL),(531,29,32,2,NULL),(532,21,36,2,NULL),(533,30,32,2,NULL),(534,22,36,2,NULL),(535,10,33,2,NULL),(536,23,36,2,NULL),(537,11,33,2,NULL),(538,24,36,2,NULL),(539,12,33,2,NULL),(540,25,36,2,NULL),(541,13,33,2,NULL),(542,26,36,2,NULL),(543,14,33,2,NULL),(544,27,36,2,NULL),(545,15,33,2,NULL),(546,28,36,2,NULL),(547,16,33,2,NULL),(548,29,36,2,NULL),(549,17,33,2,NULL),(550,30,36,2,NULL),(551,18,33,2,NULL),(552,19,33,2,NULL),(553,20,33,2,NULL),(554,21,33,2,NULL),(555,22,33,2,NULL),(556,23,33,2,NULL),(557,24,33,2,NULL),(558,25,33,2,NULL),(559,26,33,2,NULL),(560,27,33,2,NULL),(561,28,33,2,NULL),(562,29,33,2,NULL),(563,30,33,2,NULL),(564,10,37,2,NULL),(565,11,37,2,NULL),(566,12,37,2,NULL),(567,13,37,2,NULL),(568,14,37,2,NULL),(569,15,37,2,NULL),(570,16,37,2,NULL),(571,3,4,2,NULL),(572,17,37,2,NULL),(573,18,37,2,NULL),(574,19,37,2,NULL),(575,20,37,2,NULL),(576,21,37,2,NULL),(577,22,37,2,NULL),(578,23,37,2,NULL),(579,24,37,2,NULL),(580,25,37,2,NULL),(581,26,37,2,NULL),(582,27,37,2,NULL),(583,28,37,2,NULL),(584,29,37,2,NULL),(585,30,37,2,NULL),(586,10,16,2,NULL),(587,11,16,2,NULL),(588,12,16,2,NULL),(589,13,16,2,NULL),(590,14,16,2,NULL),(591,15,16,2,NULL),(592,16,16,2,NULL),(593,17,16,2,NULL),(594,18,16,2,NULL),(595,19,16,2,NULL),(596,20,16,2,NULL),(597,21,16,2,NULL),(598,22,16,2,NULL),(599,23,16,2,NULL),(600,24,16,2,NULL),(601,25,16,2,NULL),(602,26,16,2,NULL),(603,27,16,2,NULL),(604,28,16,2,NULL),(605,29,16,2,NULL),(606,30,16,2,NULL),(607,10,17,2,NULL),(608,11,17,2,NULL),(609,12,17,2,NULL),(610,13,17,2,NULL),(611,14,17,2,NULL),(612,15,17,2,NULL),(613,16,17,2,NULL),(614,17,17,2,NULL),(615,18,17,2,NULL),(616,19,17,2,NULL),(617,20,17,2,NULL),(618,21,17,2,NULL),(619,22,17,2,NULL),(620,23,17,2,NULL),(621,24,17,2,NULL),(622,25,17,2,NULL),(623,26,17,2,NULL),(624,27,17,2,NULL),(625,28,17,2,NULL),(626,29,17,2,NULL),(627,30,17,2,NULL),(628,10,20,2,NULL),(629,11,20,2,NULL),(630,12,20,2,NULL),(631,13,20,2,NULL),(632,14,20,2,NULL),(633,15,20,2,NULL),(634,16,20,2,NULL),(635,17,20,2,NULL),(636,18,20,2,NULL),(637,19,20,2,NULL),(638,20,20,2,NULL),(639,21,20,2,NULL),(640,22,20,2,NULL),(641,23,20,2,NULL),(642,24,20,2,NULL),(643,25,20,2,NULL),(644,26,20,2,NULL),(645,27,20,2,NULL),(646,28,20,2,NULL),(647,29,20,2,NULL),(648,30,20,2,NULL),(649,10,23,2,NULL),(650,11,23,2,NULL),(651,12,23,2,NULL),(652,13,23,2,NULL),(653,14,23,2,NULL),(654,15,23,2,NULL),(655,16,23,2,NULL),(656,17,23,2,NULL),(657,18,23,2,NULL),(658,19,23,2,NULL),(659,20,23,2,NULL),(660,21,23,2,NULL),(661,22,23,2,NULL),(662,23,23,2,NULL),(663,24,23,2,NULL),(664,25,23,2,NULL),(665,26,23,2,NULL),(666,27,23,2,NULL),(667,28,23,2,NULL),(668,29,23,2,NULL),(669,30,23,2,NULL),(670,10,24,2,NULL),(671,11,24,2,NULL),(672,12,24,2,NULL),(673,13,24,2,NULL),(674,14,24,2,NULL),(675,15,24,2,NULL),(676,16,24,2,NULL),(677,17,24,2,NULL),(678,18,24,2,NULL),(679,19,24,2,NULL),(680,20,24,2,NULL),(681,21,24,2,NULL),(682,22,24,2,NULL),(683,23,24,2,NULL),(684,24,24,2,NULL),(685,25,24,2,NULL),(686,26,24,2,NULL),(687,27,24,2,NULL),(688,28,24,2,NULL),(689,29,24,2,NULL),(690,30,24,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_COARSE_UPDATES'),(13,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(23,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(4,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(17,'android.permission.SYSTEM_ALERT_WINDOW'),(24,'android.permission.UPDATE_DEVICE_STATS'),(25,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SECURE_SETTINGS'),(21,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS'),(16,'com.android.alarm.permission.SET_ALARM'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,3,1),(11,3,2),(12,3,5),(13,3,6),(14,3,9),(15,3,10),(16,3,11),(17,3,12),(18,3,13),(19,3,14),(20,3,15),(21,4,1),(22,4,2),(23,4,5),(24,4,6),(25,4,8),(26,4,9),(27,4,10),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,4,15),(33,4,17),(34,4,16),(35,5,1),(36,5,2),(37,5,4),(38,5,5),(39,5,6),(40,5,8),(41,5,9),(42,5,12),(43,5,15),(44,5,17),(45,6,1),(46,5,16),(47,6,2),(48,5,19),(49,6,4),(50,5,18),(51,7,1),(52,6,5),(53,5,21),(54,7,2),(55,6,6),(56,5,20),(57,7,4),(58,6,8),(59,5,23),(60,7,5),(61,6,9),(62,5,22),(63,7,6),(64,6,12),(65,5,25),(66,7,8),(67,6,15),(68,5,24),(69,7,9),(70,6,17),(71,7,10),(72,6,16),(73,7,11),(74,6,19),(75,7,12),(76,6,18),(77,7,13),(78,6,21),(79,7,14),(80,6,20),(81,7,15),(82,6,23),(83,7,17),(84,6,22),(85,7,16),(86,6,25),(87,7,21),(88,6,24),(89,7,20);
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

-- Dump completed on 2015-10-12  3:30:56
