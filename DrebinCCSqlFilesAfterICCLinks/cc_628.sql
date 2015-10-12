-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_628
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(12,'(.*)(.*)'),(13,'(.*)(.*)(.*)'),(14,'(.*)(.*)(.*)(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.provider.Telephony.SMS_RECEIVED'),(6,'dsrhki.yjgfqjejkjh.gbjutaxgpStart76'),(2,'ru.alpha.AlphaServiceStart76'),(10,'uuuijccjx.hebslx.xpjsxwpvoStart76'),(5,'vbwrrabtky.ledundlkdho.koganoqlsStart76');
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
INSERT INTO `Applications` VALUES (1,'com.agewap.om',1),(2,'astyu.nbhjt',1),(3,'kudgofcpa.cdddbuto',1),(4,'lsdblatmcak.weobfov',1),(5,'vbkoxh.cswnpr',1),(6,'ngjvnpslnp.iplhmk',1);
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
INSERT INTO `Classes` VALUES (1,1,'com.agewap.om.OperaMiniActivity'),(2,2,'astyu.nbhjt.Mergw'),(3,2,'bgf.a.FAWebA'),(4,2,'bgf.a.FAHActivity'),(5,2,'bgf.a.FAService'),(6,2,'bgf.a.FAReceiver'),(7,2,'astyu.nbhjt.FABReceiver'),(8,2,'astyu.nbhjt.ALRReceiver'),(9,3,'kudgofcpa.cdddbuto.qltlybwxsoe'),(10,3,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(11,3,'dlsplpdqld.qjvgddw.hcjicng'),(12,3,'kudgofcpa.cdddbuto.ecufglp'),(13,4,'lsdblatmcak.weobfov.rrjmjgvhwlc'),(14,4,'vbwrrabtky.ledundlkdho.koganoqls'),(15,5,'vbkoxh.cswnpr.vmbatqef'),(16,5,'dsrhki.yjgfqjejkjh.gbjutaxgp'),(17,5,'vbkoxh.cswnpr.fcynudr'),(18,5,'dsrhki.yjgfqjejkjh.wkuljwsx'),(19,6,'ngjvnpslnp.iplhmk.yqniqkxgpoo'),(20,5,'vbkoxh.cswnpr.yaqxbtyoan'),(21,6,'uuuijccjx.hebslx.xpjsxwpvo'),(22,6,'uuuijccjx.hebslx.wlamdyyqa'),(23,6,'ngjvnpslnp.iplhmk.tmnyuqie'),(24,3,'kudgofcpa.cdddbuto.ktpessvth'),(25,3,'dlsplpdqld.qjvgddw.ydlabek'),(26,4,'lsdblatmcak.weobfov.howbiewjolj'),(27,4,'lsdblatmcak.weobfov.kbalaw'),(28,4,'vbwrrabtky.ledundlkdho.ajabdrsmp'),(29,4,'lsdblatmcak.weobfov.nmqafas'),(30,4,'vbwrrabtky.ledundlkdho.hwppl'),(31,6,'ngjvnpslnp.iplhmk.nmycxbb'),(32,6,'uuuijccjx.hebslx.nrggfqqc'),(33,6,'ngjvnpslnp.iplhmk.gjile');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'(.*)(.*)(.*)'),(2,11,'(.*)'),(3,11,'(.*)(.*)'),(4,10,'(.*)(.*)(.*)'),(5,10,'(.*)'),(6,10,'(.*)(.*)'),(7,14,'(.*)(.*)(.*)'),(8,14,'(.*)'),(9,14,'(.*)(.*)');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,26,'r',1,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,28,'r',1,NULL,NULL),(28,29,'r',1,NULL,NULL),(29,31,'r',1,NULL,NULL),(30,32,'r',1,NULL,NULL),(31,33,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,9),(3,3,11),(4,4,13),(5,5,13),(6,6,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<astyu.nbhjt.Mergw: void endButtonClick1(android.view.View)>',6,'a',NULL),(2,25,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL),(3,11,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL),(4,13,'<lsdblatmcak.weobfov.rrjmjgvhwlc: void onCreate(android.os.Bundle)>',10,'r',NULL),(5,30,'<vbwrrabtky.ledundlkdho.hwppl: void <init>(android.content.Context,java.lang.String,java.lang.String)>',83,'r',NULL),(6,25,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,2,12),(3,3,11),(4,4,11),(5,5,13),(6,6,13),(7,7,12),(8,8,13),(9,9,11),(10,10,12),(11,11,11),(12,12,11),(13,13,12),(14,14,12),(15,15,11),(16,16,13),(17,17,12),(18,18,11),(19,19,13),(20,20,13),(21,21,13),(22,22,12),(23,23,12),(24,24,14),(25,25,13),(26,26,14),(27,27,13),(28,28,12),(29,29,12),(30,30,13),(31,31,11),(32,32,13),(33,33,14),(34,34,12),(35,35,14),(36,36,12),(37,37,14),(38,38,14),(39,39,12),(40,40,14),(41,41,13),(42,42,12),(43,43,13),(44,44,12),(45,45,13),(46,46,11),(47,47,13),(48,48,11),(49,49,12),(50,50,13),(51,51,13),(52,52,12),(53,53,12),(54,54,11),(55,55,13),(56,56,11),(57,57,11),(58,58,13),(59,59,12),(60,60,13),(61,61,11),(62,62,12),(63,63,11),(64,64,13),(65,65,11),(66,66,12),(67,67,12),(68,68,12),(69,69,11),(70,70,11),(71,71,11),(72,72,13),(73,73,12),(74,74,12),(75,75,12),(76,76,11),(77,77,11),(78,78,13),(79,79,13),(80,80,13),(81,81,12),(82,82,13),(83,83,11),(84,84,12),(85,85,13),(86,86,13),(87,87,13),(88,88,12);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
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
INSERT INTO `IData` VALUES (1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'(.*)(.*)(.*)'),(2,2,'(.*)'),(3,3,'(.*)(.*)(.*)'),(4,3,'(.*)'),(5,3,'(.*)(.*)'),(6,4,'(.*)(.*)(.*)'),(7,5,'(.*)(.*)'),(8,6,'(.*)(.*)(.*)'),(9,7,'(.*)(.*)(.*)'),(10,7,'(.*)'),(11,7,'(.*)(.*)'),(12,8,'(.*)'),(13,9,'(.*)'),(14,10,'(.*)'),(15,10,'(.*)(.*)'),(16,11,'(.*)(.*)(.*)'),(17,11,'(.*)'),(18,12,'(.*)'),(19,12,'(.*)(.*)'),(20,13,'(.*)(.*)'),(21,14,'(.*)(.*)(.*)'),(22,15,'(.*)(.*)(.*)'),(23,15,'(.*)(.*)'),(24,16,'(.*)'),(25,16,'(.*)(.*)'),(26,17,'(.*)'),(27,18,'(.*)(.*)'),(28,19,'(.*)(.*)(.*)'),(29,19,'(.*)'),(30,19,'(.*)(.*)'),(31,20,'(.*)(.*)(.*)'),(32,20,'(.*)'),(33,21,'(.*)(.*)(.*)'),(34,21,'(.*)(.*)'),(35,22,'(.*)(.*)(.*)'),(36,22,'(.*)(.*)'),(37,23,'(.*)(.*)(.*)'),(38,23,'(.*)'),(39,24,'(.*)(.*)'),(40,25,'(.*)(.*)'),(41,26,'(.*)'),(42,26,'(.*)(.*)'),(43,27,'(.*)(.*)(.*)'),(44,28,'(.*)(.*)(.*)'),(45,28,'(.*)'),(46,28,'(.*)(.*)'),(47,32,'(.*)'),(48,33,'(.*)(.*)(.*)'),(49,33,'(.*)'),(50,33,'(.*)(.*)'),(51,34,'(.*)'),(52,34,'(.*)(.*)'),(53,35,'(.*)(.*)(.*)'),(54,35,'(.*)'),(55,36,'(.*)(.*)'),(56,37,'(.*)'),(57,38,'(.*)(.*)(.*)'),(58,39,'(.*)(.*)(.*)'),(59,40,'(.*)(.*)(.*)'),(60,40,'(.*)(.*)'),(61,41,'(.*)'),(62,41,'(.*)(.*)'),(63,42,'(.*)'),(64,43,'(.*)(.*)(.*)'),(65,43,'(.*)'),(66,43,'(.*)(.*)'),(67,44,'(.*)(.*)(.*)'),(68,44,'(.*)'),(69,45,'(.*)(.*)(.*)'),(70,45,'(.*)'),(71,46,'(.*)(.*)(.*)'),(72,46,'(.*)'),(73,47,'(.*)(.*)(.*)'),(74,46,'(.*)(.*)'),(75,47,'(.*)(.*)'),(76,48,'(.*)(.*)(.*)'),(77,49,'(.*)(.*)(.*)'),(78,49,'(.*)(.*)'),(79,50,'(.*)(.*)'),(80,51,'(.*)(.*)(.*)'),(81,52,'(.*)(.*)(.*)'),(82,52,'(.*)'),(83,53,'(.*)(.*)(.*)'),(84,53,'(.*)'),(85,54,'(.*)(.*)(.*)'),(86,53,'(.*)(.*)'),(87,54,'(.*)'),(88,54,'(.*)(.*)'),(89,55,'(.*)'),(90,56,'(.*)(.*)(.*)'),(91,57,'(.*)'),(92,58,'(.*)(.*)'),(93,59,'(.*)'),(94,59,'(.*)(.*)'),(95,60,'(.*)(.*)(.*)'),(96,61,'(.*)(.*)(.*)'),(97,62,'(.*)(.*)(.*)'),(98,61,'(.*)'),(99,62,'(.*)'),(100,62,'(.*)(.*)'),(101,63,'(.*)'),(102,64,'(.*)'),(103,63,'(.*)(.*)'),(104,65,'(.*)'),(105,66,'(.*)(.*)'),(106,67,'(.*)'),(107,67,'(.*)(.*)'),(108,68,'(.*)(.*)(.*)'),(109,69,'(.*)(.*)(.*)'),(110,70,'(.*)(.*)(.*)'),(111,69,'(.*)'),(112,70,'(.*)(.*)'),(113,71,'(.*)'),(114,72,'(.*)'),(115,71,'(.*)(.*)'),(116,72,'(.*)(.*)'),(117,73,'(.*)(.*)'),(118,74,'(.*)'),(119,75,'(.*)(.*)(.*)'),(120,76,'(.*)(.*)'),(121,77,'(.*)(.*)(.*)'),(122,78,'(.*)(.*)(.*)'),(123,77,'(.*)(.*)'),(124,78,'(.*)'),(125,78,'(.*)(.*)'),(126,79,'(.*)'),(127,79,'(.*)(.*)'),(128,80,'(.*)(.*)(.*)'),(129,80,'(.*)'),(130,81,'(.*)'),(131,82,'(.*)(.*)(.*)'),(132,82,'(.*)(.*)'),(133,83,'(.*)(.*)'),(134,84,'(.*)(.*)(.*)'),(135,85,'(.*)(.*)(.*)'),(136,84,'(.*)(.*)'),(137,85,'(.*)'),(138,85,'(.*)(.*)'),(139,86,'(.*)(.*)(.*)'),(140,86,'(.*)'),(141,87,'(.*)(.*)(.*)'),(142,87,'(.*)(.*)'),(143,88,'(.*)(.*)(.*)'),(144,88,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,1),(7,7,2),(8,8,4),(9,9,1),(10,10,5),(11,11,1),(12,12,6),(13,12,1),(14,13,8),(15,14,9),(16,15,1),(17,16,1),(18,17,6),(19,17,1),(20,18,3),(21,19,8),(22,20,1),(23,20,10),(24,21,9),(25,22,3),(26,23,9),(27,24,3),(28,25,11),(29,26,12),(30,27,13),(31,28,11),(32,29,13),(33,30,12),(34,31,12),(35,32,11),(36,33,13),(37,34,11),(38,35,13),(39,36,12),(40,37,13),(41,38,12),(42,39,11),(43,40,13),(44,41,12),(45,42,11),(46,43,11),(47,44,12),(48,45,13),(49,46,12),(50,47,11),(51,48,13),(52,49,13),(53,50,12),(54,51,11),(55,52,13),(56,53,12),(57,54,11),(58,55,13),(59,56,12),(60,57,11),(61,58,12),(62,59,13),(63,60,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,6,1),(5,9,1),(6,11,1),(7,12,1),(8,15,1),(9,16,1),(10,17,1),(11,18,2),(12,20,1),(13,22,2),(14,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,'sms',NULL,NULL,NULL,NULL,NULL),(2,5,NULL,NULL,'12345',NULL,NULL,NULL),(3,8,'sms',NULL,NULL,NULL,NULL,NULL),(4,8,NULL,NULL,'12345',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,7,0),(5,8,0),(6,9,0),(7,10,0),(8,12,0),(9,13,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0),(14,18,0),(15,15,0),(16,19,0),(17,16,0),(18,20,0),(19,17,0),(20,21,0),(21,18,0),(22,20,0),(23,22,0),(24,23,0),(25,24,0),(26,24,0),(27,24,0),(28,25,0),(29,25,0),(30,25,0),(31,26,0),(32,26,0),(33,26,0),(34,27,0),(35,27,0),(36,27,0),(37,28,0),(38,28,0),(39,28,0),(40,27,0),(41,27,0),(42,27,0),(43,29,0),(44,29,0),(45,29,0),(46,23,0),(47,23,0),(48,23,0),(49,30,0),(50,30,0),(51,30,0),(52,31,0),(53,31,0),(54,31,0),(55,22,0),(56,28,0),(57,28,0),(58,22,0),(59,28,0),(60,22,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,2,1,0),(6,2,1,0),(7,2,1,0),(8,2,1,0),(9,2,1,0),(10,2,1,0),(11,2,1,0),(12,2,1,0),(13,2,1,0),(14,2,1,0),(15,2,1,0),(16,2,1,0),(17,2,1,0),(18,2,1,0),(19,2,1,0),(20,2,1,0),(21,2,1,0),(22,2,1,0),(23,3,1,0),(24,3,1,0),(25,3,1,0),(26,3,1,0),(27,3,1,0),(28,3,1,0),(29,4,1,0),(30,4,1,0),(31,4,1,0),(32,3,1,0),(33,3,1,0),(34,3,1,0),(35,3,1,0),(36,3,1,0),(37,3,1,0),(38,3,1,0),(39,3,1,0),(40,3,1,0),(41,3,1,0),(42,3,1,0),(43,3,1,0),(44,5,1,0),(45,3,1,0),(46,5,1,0),(47,3,1,0),(48,5,1,0),(49,3,1,0),(50,5,1,0),(51,5,1,0),(52,6,1,0),(53,5,1,0),(54,6,1,0),(55,5,1,0),(56,6,1,0),(57,5,1,0),(58,6,1,0),(59,5,1,0),(60,6,1,0),(61,5,1,0),(62,6,1,0),(63,5,1,0),(64,6,1,0),(65,6,1,0),(66,5,1,0),(67,6,1,0),(68,5,1,0),(69,6,1,0),(70,5,1,0),(71,6,1,0),(72,5,1,0),(73,6,1,0),(74,5,1,0),(75,6,1,0),(76,5,1,0),(77,6,1,0),(78,5,1,0),(79,6,1,0),(80,5,1,0),(81,6,1,0),(82,5,1,0),(83,6,1,0),(84,5,1,0),(85,6,1,0),(86,6,1,0),(87,6,1,0),(88,6,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,1,2,NULL),(2,23,1,2,NULL),(3,24,1,2,NULL),(4,25,1,2,NULL),(5,26,1,2,NULL),(6,27,1,2,NULL),(7,28,1,2,NULL),(8,32,1,2,NULL),(9,33,1,2,NULL),(10,34,1,2,NULL),(11,35,1,2,NULL),(12,36,1,2,NULL),(13,37,1,2,NULL),(14,38,1,2,NULL),(15,39,1,2,NULL),(16,40,1,2,NULL),(17,41,1,2,NULL),(18,42,1,2,NULL),(19,43,1,2,NULL),(20,45,1,2,NULL),(21,47,1,2,NULL),(22,49,1,2,NULL),(23,29,1,2,NULL),(24,30,1,2,NULL),(25,31,1,2,NULL),(26,29,2,2,NULL),(27,30,2,2,NULL),(28,31,2,2,NULL),(29,1,13,2,NULL),(30,29,5,2,NULL),(31,30,5,2,NULL),(32,31,5,2,NULL),(33,29,7,2,NULL),(34,30,7,2,NULL),(35,31,7,2,NULL),(36,29,9,2,NULL),(37,30,9,2,NULL),(38,31,9,2,NULL),(39,29,10,2,NULL),(40,30,10,2,NULL),(41,31,10,2,NULL),(42,23,13,2,NULL),(43,24,13,2,NULL),(44,25,13,2,NULL),(45,26,13,2,NULL),(46,27,13,2,NULL),(47,28,13,2,NULL),(48,32,13,2,NULL),(49,33,13,2,NULL),(50,34,13,2,NULL),(51,35,13,2,NULL),(52,1,5,2,NULL),(53,36,13,2,NULL),(54,1,7,2,NULL),(55,37,13,2,NULL),(56,1,9,2,NULL),(57,38,13,2,NULL),(58,1,10,2,NULL),(59,39,13,2,NULL),(60,23,2,2,NULL),(61,40,13,2,NULL),(62,24,2,2,NULL),(63,41,13,2,NULL),(64,25,2,2,NULL),(65,42,13,2,NULL),(66,26,2,2,NULL),(67,43,13,2,NULL),(68,27,2,2,NULL),(69,45,13,2,NULL),(70,28,2,2,NULL),(71,47,13,2,NULL),(72,32,2,2,NULL),(73,49,13,2,NULL),(74,33,2,2,NULL),(75,29,24,2,NULL),(76,34,2,2,NULL),(77,30,24,2,NULL),(78,35,2,2,NULL),(79,31,24,2,NULL),(80,36,2,2,NULL),(81,29,14,2,NULL),(82,37,2,2,NULL),(83,30,14,2,NULL),(84,38,2,2,NULL),(85,31,14,2,NULL),(86,39,2,2,NULL),(87,29,25,2,NULL),(88,40,2,2,NULL),(89,30,25,2,NULL),(90,41,2,2,NULL),(91,31,25,2,NULL),(92,42,2,2,NULL),(93,29,26,2,NULL),(94,43,2,2,NULL),(95,30,26,2,NULL),(96,45,2,2,NULL),(97,31,26,2,NULL),(98,47,2,2,NULL),(99,29,27,2,NULL),(100,49,2,2,NULL),(101,30,27,2,NULL),(102,1,24,2,NULL),(103,31,27,2,NULL),(104,1,14,2,NULL),(105,29,28,2,NULL),(106,1,25,2,NULL),(107,30,28,2,NULL),(108,1,26,2,NULL),(109,31,28,2,NULL),(110,1,27,2,NULL),(111,29,15,2,NULL),(112,1,28,2,NULL),(113,30,15,2,NULL),(114,1,15,2,NULL),(115,31,15,2,NULL),(116,1,16,2,NULL),(117,29,16,2,NULL),(118,1,17,2,NULL),(119,30,16,2,NULL),(120,1,18,2,NULL),(121,31,16,2,NULL),(122,1,20,2,NULL),(123,29,17,2,NULL),(124,1,19,2,NULL),(125,30,17,2,NULL),(126,1,21,2,NULL),(127,31,17,2,NULL),(128,1,22,2,NULL),(129,29,18,2,NULL),(130,1,23,2,NULL),(131,30,18,2,NULL),(132,1,29,2,NULL),(133,31,18,2,NULL),(134,1,30,2,NULL),(135,29,20,2,NULL),(136,1,31,2,NULL),(137,30,20,2,NULL),(138,23,5,2,NULL),(139,31,20,2,NULL),(140,23,15,2,NULL),(141,24,5,2,NULL),(142,29,19,2,NULL),(143,24,15,2,NULL),(144,25,5,2,NULL),(145,30,19,2,NULL),(146,26,5,2,NULL),(147,25,15,2,NULL),(148,31,19,2,NULL),(149,27,5,2,NULL),(150,29,21,2,NULL),(151,28,5,2,NULL),(152,26,15,2,NULL),(153,30,21,2,NULL),(154,32,5,2,NULL),(155,31,21,2,NULL),(156,27,15,2,NULL),(157,33,5,2,NULL),(158,29,22,2,NULL),(159,34,5,2,NULL),(160,28,15,2,NULL),(161,30,22,2,NULL),(162,35,5,2,NULL),(163,32,15,2,NULL),(164,31,22,2,NULL),(165,36,5,2,NULL),(166,29,23,2,NULL),(167,33,15,2,NULL),(168,37,5,2,NULL),(169,30,23,2,NULL),(170,23,9,2,NULL),(171,38,5,2,NULL),(172,34,15,2,NULL),(173,31,23,2,NULL),(174,24,9,2,NULL),(175,39,5,2,NULL),(176,29,29,2,NULL),(177,35,15,2,NULL),(178,40,5,2,NULL),(179,25,9,2,NULL),(180,30,29,2,NULL),(181,41,5,2,NULL),(182,36,15,2,NULL),(183,31,29,2,NULL),(184,42,5,2,NULL),(185,26,9,2,NULL),(186,29,30,2,NULL),(187,37,15,2,NULL),(188,43,5,2,NULL),(189,27,9,2,NULL),(190,30,30,2,NULL),(191,45,5,2,NULL),(192,38,15,2,NULL),(193,31,30,2,NULL),(194,28,9,2,NULL),(195,47,5,2,NULL),(196,39,15,2,NULL),(197,29,31,2,NULL),(198,49,5,2,NULL),(199,32,9,2,NULL),(200,30,31,2,NULL),(201,40,15,2,NULL),(202,23,7,2,NULL),(203,31,31,2,NULL),(204,33,9,2,NULL),(205,24,7,2,NULL),(206,41,15,2,NULL),(207,23,14,2,NULL),(208,25,7,2,NULL),(209,34,9,2,NULL),(210,24,14,2,NULL),(211,42,15,2,NULL),(212,26,7,2,NULL),(213,25,14,2,NULL),(214,35,9,2,NULL),(215,27,7,2,NULL),(216,43,15,2,NULL),(217,26,14,2,NULL),(218,28,7,2,NULL),(219,36,9,2,NULL),(220,27,14,2,NULL),(221,45,15,2,NULL),(222,32,7,2,NULL),(223,28,14,2,NULL),(224,47,15,2,NULL),(225,37,9,2,NULL),(226,33,7,2,NULL),(227,32,14,2,NULL),(228,34,7,2,NULL),(229,49,15,2,NULL),(230,38,9,2,NULL),(231,33,14,2,NULL),(232,35,7,2,NULL),(233,39,9,2,NULL),(234,23,16,2,NULL),(235,34,14,2,NULL),(236,36,7,2,NULL),(237,40,9,2,NULL),(238,35,14,2,NULL),(239,24,16,2,NULL),(240,37,7,2,NULL),(241,36,14,2,NULL),(242,25,16,2,NULL),(243,41,9,2,NULL),(244,38,7,2,NULL),(245,37,14,2,NULL),(246,39,7,2,NULL),(247,26,16,2,NULL),(248,42,9,2,NULL),(249,38,14,2,NULL),(250,40,7,2,NULL),(251,27,16,2,NULL),(252,43,9,2,NULL),(253,39,14,2,NULL),(254,41,7,2,NULL),(255,45,9,2,NULL),(256,28,16,2,NULL),(257,40,14,2,NULL),(258,42,7,2,NULL),(259,41,14,2,NULL),(260,32,16,2,NULL),(261,47,9,2,NULL),(262,43,7,2,NULL),(263,42,14,2,NULL),(264,49,9,2,NULL),(265,33,16,2,NULL),(266,45,7,2,NULL),(267,43,14,2,NULL),(268,34,16,2,NULL),(269,23,10,2,NULL),(270,47,7,2,NULL),(271,45,14,2,NULL),(272,49,7,2,NULL),(273,35,16,2,NULL),(274,24,10,2,NULL),(275,47,14,2,NULL),(276,25,10,2,NULL),(277,36,16,2,NULL),(278,49,14,2,NULL),(279,26,10,2,NULL),(280,23,25,2,NULL),(281,37,16,2,NULL),(282,27,10,2,NULL),(283,24,25,2,NULL),(284,38,16,2,NULL),(285,25,25,2,NULL),(286,28,10,2,NULL),(287,39,16,2,NULL),(288,26,25,2,NULL),(289,40,16,2,NULL),(290,32,10,2,NULL),(291,27,25,2,NULL),(292,41,16,2,NULL),(293,28,25,2,NULL),(294,33,10,2,NULL),(295,42,16,2,NULL),(296,32,25,2,NULL),(297,43,16,2,NULL),(298,34,10,2,NULL),(299,33,25,2,NULL),(300,45,16,2,NULL),(301,35,10,2,NULL),(302,34,25,2,NULL),(303,47,16,2,NULL),(304,35,25,2,NULL),(305,36,10,2,NULL),(306,49,16,2,NULL),(307,36,25,2,NULL),(308,37,10,2,NULL),(309,23,17,2,NULL),(310,38,10,2,NULL),(311,37,25,2,NULL),(312,24,17,2,NULL),(313,38,25,2,NULL),(314,39,10,2,NULL),(315,25,17,2,NULL),(316,39,25,2,NULL),(317,40,10,2,NULL),(318,26,17,2,NULL),(319,40,25,2,NULL),(320,41,10,2,NULL),(321,27,17,2,NULL),(322,41,25,2,NULL),(323,42,10,2,NULL),(324,28,17,2,NULL),(325,42,25,2,NULL),(326,43,10,2,NULL),(327,32,17,2,NULL),(328,45,10,2,NULL),(329,43,25,2,NULL),(330,33,17,2,NULL),(331,47,10,2,NULL),(332,45,25,2,NULL),(333,34,17,2,NULL),(334,49,10,2,NULL),(335,47,25,2,NULL),(336,35,17,2,NULL),(337,49,25,2,NULL),(338,23,24,2,NULL),(339,36,17,2,NULL),(340,24,24,2,NULL),(341,23,26,2,NULL),(342,37,17,2,NULL),(343,25,24,2,NULL),(344,38,17,2,NULL),(345,24,26,2,NULL),(346,26,24,2,NULL),(347,39,17,2,NULL),(348,25,26,2,NULL),(349,27,24,2,NULL),(350,40,17,2,NULL),(351,26,26,2,NULL),(352,28,24,2,NULL),(353,41,17,2,NULL),(354,27,26,2,NULL),(355,32,24,2,NULL),(356,42,17,2,NULL),(357,28,26,2,NULL),(358,33,24,2,NULL),(359,43,17,2,NULL),(360,32,26,2,NULL),(361,34,24,2,NULL),(362,33,26,2,NULL),(363,45,17,2,NULL),(364,35,24,2,NULL),(365,34,26,2,NULL),(366,47,17,2,NULL),(367,36,24,2,NULL),(368,35,26,2,NULL),(369,49,17,2,NULL),(370,37,24,2,NULL),(371,36,26,2,NULL),(372,23,18,2,NULL),(373,38,24,2,NULL),(374,37,26,2,NULL),(375,24,18,2,NULL),(376,39,24,2,NULL),(377,38,26,2,NULL),(378,25,18,2,NULL),(379,40,24,2,NULL),(380,39,26,2,NULL),(381,26,18,2,NULL),(382,41,24,2,NULL),(383,40,26,2,NULL),(384,27,18,2,NULL),(385,42,24,2,NULL),(386,41,26,2,NULL),(387,28,18,2,NULL),(388,43,24,2,NULL),(389,42,26,2,NULL),(390,32,18,2,NULL),(391,45,24,2,NULL),(392,43,26,2,NULL),(393,33,18,2,NULL),(394,47,24,2,NULL),(395,45,26,2,NULL),(396,34,18,2,NULL),(397,49,24,2,NULL),(398,47,26,2,NULL),(399,35,18,2,NULL),(400,49,26,2,NULL),(401,36,18,2,NULL),(402,23,27,2,NULL),(403,37,18,2,NULL),(404,24,27,2,NULL),(405,24,27,2,NULL),(406,38,18,2,NULL),(407,25,27,2,NULL),(408,26,27,2,NULL),(409,39,18,2,NULL),(410,27,27,2,NULL),(411,28,27,2,NULL),(412,40,18,2,NULL),(413,32,27,2,NULL),(414,33,27,2,NULL),(415,41,18,2,NULL),(416,34,27,2,NULL),(417,35,27,2,NULL),(418,42,18,2,NULL),(419,36,27,2,NULL),(420,37,27,2,NULL),(421,43,18,2,NULL),(422,38,27,2,NULL),(423,39,27,2,NULL),(424,45,18,2,NULL),(425,40,27,2,NULL),(426,41,27,2,NULL),(427,47,18,2,NULL),(428,42,27,2,NULL),(429,43,27,2,NULL),(430,49,18,2,NULL),(431,45,27,2,NULL),(432,47,27,2,NULL),(433,23,20,2,NULL),(434,49,27,2,NULL),(435,24,20,2,NULL),(436,23,28,2,NULL),(437,24,28,2,NULL),(438,25,20,2,NULL),(439,25,28,2,NULL),(440,26,28,2,NULL),(441,26,20,2,NULL),(442,27,28,2,NULL),(443,28,28,2,NULL),(444,27,20,2,NULL),(445,32,28,2,NULL),(446,33,28,2,NULL),(447,28,20,2,NULL),(448,34,28,2,NULL),(449,35,28,2,NULL),(450,32,20,2,NULL),(451,36,28,2,NULL),(452,37,28,2,NULL),(453,33,20,2,NULL),(454,38,28,2,NULL),(455,39,28,2,NULL),(456,34,20,2,NULL),(457,40,28,2,NULL),(458,41,28,2,NULL),(459,35,20,2,NULL),(460,42,28,2,NULL),(461,43,28,2,NULL),(462,36,20,2,NULL),(463,45,28,2,NULL),(464,47,28,2,NULL),(465,37,20,2,NULL),(466,49,28,2,NULL),(467,38,20,2,NULL),(468,39,20,2,NULL),(469,40,20,2,NULL),(470,41,20,2,NULL),(471,42,20,2,NULL),(472,43,20,2,NULL),(473,45,20,2,NULL),(474,47,20,2,NULL),(475,49,20,2,NULL),(476,23,19,2,NULL),(477,24,19,2,NULL),(478,25,19,2,NULL),(479,26,19,2,NULL),(480,27,19,2,NULL),(481,28,19,2,NULL),(482,32,19,2,NULL),(483,33,19,2,NULL),(484,34,19,2,NULL),(485,35,19,2,NULL),(486,36,19,2,NULL),(487,37,19,2,NULL),(488,38,19,2,NULL),(489,39,19,2,NULL),(490,40,19,2,NULL),(491,41,19,2,NULL),(492,42,19,2,NULL),(493,43,19,2,NULL),(494,45,19,2,NULL),(495,47,19,2,NULL),(496,49,19,2,NULL),(497,23,21,2,NULL),(498,24,21,2,NULL),(499,25,21,2,NULL),(500,26,21,2,NULL),(501,27,21,2,NULL),(502,28,21,2,NULL),(503,32,21,2,NULL),(504,33,21,2,NULL),(505,34,21,2,NULL),(506,35,21,2,NULL),(507,36,21,2,NULL),(508,37,21,2,NULL),(509,38,21,2,NULL),(510,39,21,2,NULL),(511,40,21,2,NULL),(512,41,21,2,NULL),(513,42,21,2,NULL),(514,43,21,2,NULL),(515,45,21,2,NULL),(516,47,21,2,NULL),(517,49,21,2,NULL),(518,23,22,2,NULL),(519,24,22,2,NULL),(520,25,22,2,NULL),(521,26,22,2,NULL),(522,27,22,2,NULL),(523,28,22,2,NULL),(524,32,22,2,NULL),(525,33,22,2,NULL),(526,34,22,2,NULL),(527,35,22,2,NULL),(528,36,22,2,NULL),(529,37,22,2,NULL),(530,38,22,2,NULL),(531,39,22,2,NULL),(532,40,22,2,NULL),(533,41,22,2,NULL),(534,42,22,2,NULL),(535,43,22,2,NULL),(536,45,22,2,NULL),(537,47,22,2,NULL),(538,49,22,2,NULL),(539,23,23,2,NULL),(540,24,23,2,NULL),(541,25,23,2,NULL),(542,26,23,2,NULL),(543,27,23,2,NULL),(544,28,23,2,NULL),(545,32,23,2,NULL),(546,33,23,2,NULL),(547,34,23,2,NULL),(548,35,23,2,NULL),(549,36,23,2,NULL),(550,37,23,2,NULL),(551,38,23,2,NULL),(552,39,23,2,NULL),(553,40,23,2,NULL),(554,41,23,2,NULL),(555,42,23,2,NULL),(556,43,23,2,NULL),(557,45,23,2,NULL),(558,47,23,2,NULL),(559,49,23,2,NULL),(560,23,29,2,NULL),(561,24,29,2,NULL),(562,25,29,2,NULL),(563,26,29,2,NULL),(564,27,29,2,NULL),(565,28,29,2,NULL),(566,32,29,2,NULL),(567,33,29,2,NULL),(568,34,29,2,NULL),(569,35,29,2,NULL),(570,36,29,2,NULL),(571,37,29,2,NULL),(572,38,29,2,NULL),(573,39,29,2,NULL),(574,40,29,2,NULL),(575,41,29,2,NULL),(576,42,29,2,NULL),(577,43,29,2,NULL),(578,45,29,2,NULL),(579,47,29,2,NULL),(580,49,29,2,NULL),(581,23,30,2,NULL),(582,24,30,2,NULL),(583,25,30,2,NULL),(584,26,30,2,NULL),(585,27,30,2,NULL),(586,28,30,2,NULL),(587,32,30,2,NULL),(588,33,30,2,NULL),(589,34,30,2,NULL),(590,35,30,2,NULL),(591,36,30,2,NULL),(592,37,30,2,NULL),(593,38,30,2,NULL),(594,39,30,2,NULL),(595,40,30,2,NULL),(596,41,30,2,NULL),(597,42,30,2,NULL),(598,43,30,2,NULL),(599,45,30,2,NULL),(600,47,30,2,NULL),(601,49,30,2,NULL),(602,23,31,2,NULL),(603,24,31,2,NULL),(604,25,31,2,NULL),(605,26,31,2,NULL),(606,27,31,2,NULL),(607,28,31,2,NULL),(608,32,31,2,NULL),(609,33,31,2,NULL),(610,34,31,2,NULL),(611,35,31,2,NULL),(612,36,31,2,NULL),(613,37,31,2,NULL),(614,38,31,2,NULL),(615,39,31,2,NULL),(616,40,31,2,NULL),(617,41,31,2,NULL),(618,42,31,2,NULL),(619,43,31,2,NULL),(620,45,31,2,NULL),(621,47,31,2,NULL),(622,49,31,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_COARSE_UPDATES'),(11,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(16,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(14,'android.permission.SYSTEM_ALERT_WINDOW'),(22,'android.permission.UPDATE_DEVICE_STATS'),(23,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SECURE_SETTINGS'),(19,'android.permission.WRITE_SETTINGS'),(13,'com.android.alarm.permission.SET_ALARM'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,2,12),(14,3,1),(15,3,2),(16,3,3),(17,3,4),(18,3,5),(19,3,6),(20,3,7),(21,3,8),(22,3,9),(23,3,10),(24,3,11),(25,3,12),(26,3,13),(27,3,14),(28,4,1),(29,4,2),(30,4,3),(31,4,4),(32,4,5),(33,4,6),(34,4,7),(35,4,8),(36,4,9),(37,4,10),(38,4,11),(39,4,12),(40,4,13),(41,4,14),(42,5,1),(43,5,2),(44,5,4),(45,5,5),(46,5,7),(47,5,9),(48,5,10),(49,5,12),(50,5,13),(51,5,14),(52,5,15),(53,5,17),(54,5,16),(55,5,19),(56,5,18),(57,5,21),(58,5,20),(59,5,23),(60,5,22),(61,6,1),(62,6,2),(63,6,3),(64,6,4),(65,6,5),(66,6,6),(67,6,7),(68,6,8),(69,6,9),(70,6,10),(71,6,11),(72,6,12),(73,6,13),(74,6,14),(75,6,17),(76,6,19),(77,6,18);
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

-- Dump completed on 2015-10-12  3:31:09
