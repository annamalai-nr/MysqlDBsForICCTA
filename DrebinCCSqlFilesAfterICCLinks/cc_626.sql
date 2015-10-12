-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_626
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
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(13,'(.*)(.*)'),(14,'(.*)(.*)(.*)'),(16,'(.*)(.*)(.*)(.*)'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.QUICKBOOT_POWERON'),(12,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(11,'iofdwidp.ucudbcy.hkkrmrkStart76'),(8,'mcrpkto.itqkop.hckbqnbStart76'),(9,'qrisjow.pkygokv.budgywnlStart76'),(5,'ru.alpha.AlphaServiceStart76'),(7,'uuuijccjx.hebslx.xpjsxwpvoStart76');
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
INSERT INTO `Applications` VALUES (1,'ru.installer.droid',1),(2,'astyu.nbhjt',1),(3,'kudgofcpa.cdddbuto',1),(4,'ngjvnpslnp.iplhmk',1),(5,'ynlxcd.cwductjwjc',1),(6,'pmjwjd.ijtyuoo',1),(7,'gvvwtjh.btvamydntnm',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ru.installer.droid.ui.MainActivity'),(2,1,'ru.installer.droid.ui.RulesActivity'),(3,1,'ru.installer.droid.ui.DownloadersActivity'),(4,1,'ru.installer.droid.ui.SendActivity'),(5,1,'ru.installer.droid.system.AndroidSystemService'),(6,1,'ru.installer.droid.system.BootReceiver'),(7,1,'ru.installer.droid.other.SendCheck'),(8,1,'ru.installer.droid.system.ControlManager'),(9,2,'astyu.nbhjt.Mergw'),(10,2,'bgf.a.FAWebA'),(11,2,'bgf.a.FAHActivity'),(12,2,'bgf.a.FAService'),(13,2,'bgf.a.FAReceiver'),(14,2,'astyu.nbhjt.FABReceiver'),(15,2,'astyu.nbhjt.ALRReceiver'),(16,1,'ru.installer.droid.ui.d'),(17,3,'kudgofcpa.cdddbuto.qltlybwxsoe'),(18,1,'ru.installer.droid.ui.f'),(19,3,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(20,3,'dlsplpdqld.qjvgddw.hcjicng'),(21,3,'kudgofcpa.cdddbuto.ecufglp'),(22,1,'ru.installer.droid.ui.e'),(23,4,'ngjvnpslnp.iplhmk.yqniqkxgpoo'),(24,4,'uuuijccjx.hebslx.xpjsxwpvo'),(25,5,'ynlxcd.cwductjwjc.admyusbyfes'),(26,7,'gvvwtjh.btvamydntnm.orkwplsket'),(27,5,'mcrpkto.itqkop.hckbqnb'),(28,4,'uuuijccjx.hebslx.wlamdyyqa'),(29,6,'pmjwjd.ijtyuoo.fornafde'),(30,7,'qrisjow.pkygokv.budgywnl'),(31,4,'ngjvnpslnp.iplhmk.tmnyuqie'),(32,6,'iofdwidp.ucudbcy.hkkrmrk'),(33,5,'ynlxcd.cwductjwjc.ecjphtowcv'),(34,7,'qrisjow.pkygokv.uxyhrlb'),(35,5,'mcrpkto.itqkop.vyfhyipjkrj'),(36,6,'iofdwidp.ucudbcy.cgdlbw'),(37,7,'gvvwtjh.btvamydntnm.avyemya'),(38,5,'ynlxcd.cwductjwjc.pbbceorg'),(39,6,'pmjwjd.ijtyuoo.wewsig'),(40,3,'kudgofcpa.cdddbuto.ktpessvth'),(41,3,'dlsplpdqld.qjvgddw.ydlabek'),(42,4,'ngjvnpslnp.iplhmk.nmycxbb'),(43,4,'uuuijccjx.hebslx.nrggfqqc'),(44,4,'ngjvnpslnp.iplhmk.gjile'),(45,7,'qrisjow.pkygokv.mflqodad'),(46,7,'gvvwtjh.btvamydntnm.yjklt'),(47,7,'gvvwtjh.btvamydntnm.tulxxmsv');
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
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,15,'(.*)'),(3,17,'(.*)(.*)(.*)'),(4,17,'(.*)'),(5,17,'(.*)(.*)'),(6,18,'(.*)(.*)(.*)'),(7,18,'(.*)'),(8,18,'(.*)(.*)'),(9,27,'(.*)(.*)(.*)'),(10,27,'(.*)'),(11,27,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,19,'s',1,NULL,NULL),(18,20,'r',0,NULL,NULL),(19,21,'r',1,NULL,NULL),(20,23,'a',1,NULL,NULL),(21,24,'s',1,NULL,NULL),(22,25,'a',1,NULL,NULL),(23,26,'a',1,NULL,NULL),(24,27,'s',1,NULL,NULL),(25,28,'r',1,NULL,NULL),(26,29,'a',1,NULL,NULL),(27,30,'s',1,NULL,NULL),(28,31,'r',1,NULL,NULL),(29,33,'r',1,NULL,NULL),(30,32,'s',1,NULL,NULL),(31,34,'r',1,NULL,NULL),(32,35,'r',1,NULL,NULL),(33,36,'r',1,NULL,NULL),(34,37,'r',1,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,40,'r',1,NULL,NULL),(38,42,'r',1,NULL,NULL),(39,43,'r',1,NULL,NULL),(40,44,'r',1,NULL,NULL),(41,45,'r',1,NULL,NULL),(42,46,'r',1,NULL,NULL),(43,47,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,4),(4,4,1),(5,5,1),(6,6,9),(7,7,17),(8,8,16),(9,9,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,16,'<ru.installer.droid.ui.d: void onClick(android.view.View)>',7,'a',NULL),(2,18,'<ru.installer.droid.ui.f: void onClick(android.view.View)>',7,'a',NULL),(3,4,'<ru.installer.droid.ui.SendActivity: void onCreate(android.os.Bundle)>',44,'a',NULL),(4,22,'<ru.installer.droid.ui.e: void onClick(android.view.View)>',7,'a',NULL),(5,1,'<ru.installer.droid.ui.MainActivity: void onCreate(android.os.Bundle)>',14,'a',NULL),(6,9,'<astyu.nbhjt.Mergw: void endButtonClick1(android.view.View)>',9,'a',NULL),(7,41,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL),(8,41,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL),(9,20,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,6,12),(2,7,13),(3,8,15),(4,9,15),(5,10,14),(6,11,14),(7,12,13),(8,13,14),(9,14,15),(10,15,13),(11,16,15),(12,17,15),(13,18,13),(14,19,13),(15,20,15),(16,21,14),(17,22,13),(18,23,15),(19,24,14),(20,25,14),(21,26,14),(22,27,13),(23,28,13),(24,29,15),(25,30,15),(26,31,14),(27,32,14),(28,33,13),(29,34,14),(30,35,15),(31,36,13),(32,37,15),(33,38,15),(34,39,13),(35,40,13),(36,41,15),(37,42,14),(38,43,13),(39,44,15),(40,45,14),(41,46,14),(42,47,14),(43,48,13),(44,49,13),(45,50,16),(46,51,14),(47,52,16),(48,53,14),(49,54,13),(50,55,14),(51,56,16),(52,57,13),(53,58,16),(54,59,13),(55,60,16),(56,61,16),(57,62,13),(58,63,16),(59,64,14),(60,65,13),(61,66,14),(62,67,14),(63,68,14),(64,69,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'ru/installer/droid/ui/SendActivity'),(2,2,'ru/installer/droid/ui/SendActivity'),(3,3,'ru/installer/droid/ui/DownloadersActivity'),(4,4,'ru/installer/droid/ui/RulesActivity'),(5,5,'ru/installer/droid/ui/DownloadersActivity');
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
INSERT INTO `IData` VALUES (1,6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'URL'),(2,5,'URL'),(3,7,'(.*)(.*)(.*)'),(4,7,'(.*)'),(5,8,'(.*)(.*)(.*)'),(6,8,'(.*)'),(7,8,'(.*)(.*)'),(8,9,'(.*)(.*)(.*)'),(9,10,'(.*)(.*)'),(10,11,'(.*)(.*)(.*)'),(11,12,'(.*)(.*)(.*)'),(12,12,'(.*)'),(13,12,'(.*)(.*)'),(14,13,'(.*)'),(15,14,'(.*)'),(16,15,'(.*)'),(17,15,'(.*)(.*)'),(18,16,'(.*)(.*)(.*)'),(19,16,'(.*)'),(20,17,'(.*)'),(21,17,'(.*)(.*)'),(22,18,'(.*)(.*)'),(23,19,'(.*)(.*)(.*)'),(24,20,'(.*)(.*)(.*)'),(25,20,'(.*)(.*)'),(26,21,'(.*)'),(27,21,'(.*)(.*)'),(28,22,'(.*)'),(29,23,'(.*)(.*)'),(30,24,'(.*)(.*)(.*)'),(31,24,'(.*)'),(32,24,'(.*)(.*)'),(33,25,'(.*)(.*)(.*)'),(34,25,'(.*)'),(35,26,'(.*)(.*)(.*)'),(36,26,'(.*)(.*)'),(37,27,'(.*)(.*)(.*)'),(38,27,'(.*)(.*)'),(39,28,'(.*)(.*)(.*)'),(40,28,'(.*)'),(41,29,'(.*)(.*)(.*)'),(42,29,'(.*)'),(43,29,'(.*)(.*)'),(44,30,'(.*)(.*)(.*)'),(45,31,'(.*)(.*)'),(46,32,'(.*)(.*)(.*)'),(47,33,'(.*)(.*)(.*)'),(48,33,'(.*)'),(49,33,'(.*)(.*)'),(50,34,'(.*)'),(51,35,'(.*)'),(52,36,'(.*)'),(53,36,'(.*)(.*)'),(54,37,'(.*)(.*)(.*)'),(55,37,'(.*)'),(56,38,'(.*)'),(57,38,'(.*)(.*)'),(58,39,'(.*)(.*)'),(59,40,'(.*)(.*)(.*)'),(60,41,'(.*)(.*)(.*)'),(61,41,'(.*)(.*)'),(62,42,'(.*)'),(63,42,'(.*)(.*)'),(64,43,'(.*)'),(65,44,'(.*)(.*)'),(66,45,'(.*)(.*)(.*)'),(67,45,'(.*)'),(68,45,'(.*)(.*)'),(69,46,'(.*)(.*)(.*)'),(70,46,'(.*)'),(71,47,'(.*)(.*)(.*)'),(72,47,'(.*)(.*)'),(73,48,'(.*)(.*)(.*)'),(74,48,'(.*)(.*)'),(75,49,'(.*)(.*)(.*)'),(76,49,'(.*)'),(77,50,'(.*)(.*)'),(78,51,'(.*)(.*)'),(79,52,'(.*)'),(80,52,'(.*)(.*)'),(81,53,'(.*)(.*)(.*)'),(82,54,'(.*)(.*)(.*)'),(83,54,'(.*)'),(84,54,'(.*)(.*)'),(85,55,'(.*)'),(86,56,'(.*)(.*)(.*)'),(87,56,'(.*)'),(88,56,'(.*)(.*)'),(89,57,'(.*)'),(90,57,'(.*)(.*)'),(91,58,'(.*)(.*)(.*)'),(92,58,'(.*)'),(93,59,'(.*)(.*)'),(94,60,'(.*)'),(95,61,'(.*)(.*)(.*)'),(96,62,'(.*)(.*)(.*)'),(97,63,'(.*)(.*)(.*)'),(98,63,'(.*)(.*)'),(99,64,'(.*)'),(100,64,'(.*)(.*)'),(101,65,'(.*)'),(102,66,'(.*)(.*)(.*)'),(103,66,'(.*)'),(104,66,'(.*)(.*)'),(105,67,'(.*)(.*)(.*)'),(106,67,'(.*)'),(107,68,'(.*)(.*)(.*)'),(108,68,'(.*)(.*)'),(109,69,'(.*)(.*)(.*)'),(110,69,'(.*)(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,4),(5,4,1),(6,5,5),(7,6,3),(8,7,6),(9,8,1),(10,9,5),(11,10,6),(12,11,1),(13,12,1),(14,13,7),(15,13,1),(16,14,1),(17,15,4),(18,16,1),(19,16,8),(20,17,1),(21,18,3),(22,19,1),(23,19,9),(24,20,10),(25,21,1),(26,21,11),(27,22,4),(28,23,4),(29,24,4),(30,25,3),(31,26,3),(32,27,3),(33,28,13),(34,29,14),(35,30,15),(36,31,14),(37,32,13),(38,33,15),(39,34,15),(40,35,13),(41,36,14),(42,37,15),(43,38,13),(44,39,14),(45,40,14),(46,41,15),(47,42,13),(48,43,13),(49,44,14),(50,45,15),(51,46,14),(52,47,13),(53,48,15),(54,49,13),(55,50,15),(56,51,14),(57,52,13),(58,53,15),(59,54,14),(60,55,13),(61,56,15),(62,57,14),(63,58,13),(64,59,15),(65,60,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,6,2),(4,8,1),(5,11,1),(6,12,1),(7,13,1),(8,14,1),(9,16,1),(10,17,1),(11,18,2),(12,19,1),(13,21,1),(14,25,2),(15,26,2),(16,27,2);
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
INSERT INTO `IFData` VALUES (1,7,'sms',NULL,NULL,NULL,NULL,NULL),(2,7,NULL,NULL,'12345',NULL,NULL,NULL),(3,10,'sms',NULL,NULL,NULL,NULL,NULL),(4,10,NULL,NULL,'12345',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ru.installer.droid'),(2,2,'ru.installer.droid'),(3,3,'ru.installer.droid'),(4,4,'ru.installer.droid'),(5,5,'ru.installer.droid');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,9,0),(5,12,0),(6,14,0),(7,15,0),(8,16,0),(9,17,0),(10,19,0),(11,20,0),(12,22,0),(13,21,0),(14,23,0),(15,25,0),(16,24,0),(17,26,0),(18,28,0),(19,27,0),(20,29,0),(21,30,0),(22,31,0),(23,32,0),(24,33,0),(25,34,0),(26,35,0),(27,36,0),(28,37,0),(29,37,0),(30,37,0),(31,38,0),(32,38,0),(33,38,0),(34,28,0),(35,28,0),(36,28,0),(37,39,0),(38,39,0),(39,39,0),(40,40,0),(41,40,0),(42,40,0),(43,25,0),(44,25,0),(45,25,0),(46,31,0),(47,31,0),(48,31,0),(49,41,0),(50,41,0),(51,41,0),(52,34,0),(53,34,0),(54,34,0),(55,42,0),(56,42,0),(57,42,0),(58,43,0),(59,43,0),(60,43,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,7,1,0),(9,7,1,0),(10,7,1,0),(11,7,1,0),(12,7,1,0),(13,7,1,0),(14,7,1,0),(15,7,1,0),(16,7,1,0),(17,7,1,0),(18,7,1,0),(19,7,1,0),(20,7,1,0),(21,7,1,0),(22,7,1,0),(23,7,1,0),(24,7,1,0),(25,7,1,0),(26,7,1,0),(27,7,1,0),(28,8,1,0),(29,8,1,0),(30,8,1,0),(31,8,1,0),(32,8,1,0),(33,8,1,0),(34,8,1,0),(35,8,1,0),(36,8,1,0),(37,8,1,0),(38,8,1,0),(39,8,1,0),(40,8,1,0),(41,8,1,0),(42,8,1,0),(43,8,1,0),(44,8,1,0),(45,8,1,0),(46,8,1,0),(47,8,1,0),(48,8,1,0),(49,9,1,0),(50,9,1,0),(51,9,1,0),(52,9,1,0),(53,9,1,0),(54,9,1,0),(55,9,1,0),(56,9,1,0),(57,9,1,0),(58,9,1,0),(59,9,1,0),(60,9,1,0),(61,9,1,0),(62,9,1,0),(63,9,1,0),(64,9,1,0),(65,9,1,0),(66,9,1,0),(67,9,1,0),(68,9,1,0),(69,9,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=714 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,1,2,NULL),(2,6,16,2,NULL),(3,6,6,2,NULL),(4,49,16,2,NULL),(5,6,7,2,NULL),(6,50,16,2,NULL),(7,6,12,2,NULL),(8,51,16,2,NULL),(9,6,14,2,NULL),(10,52,16,2,NULL),(11,6,17,2,NULL),(12,53,16,2,NULL),(13,49,9,2,NULL),(14,5,3,2,NULL),(15,54,16,2,NULL),(16,49,1,2,NULL),(17,50,9,2,NULL),(18,55,16,2,NULL),(19,51,9,2,NULL),(20,50,1,2,NULL),(21,56,16,2,NULL),(22,52,9,2,NULL),(23,57,16,2,NULL),(24,51,1,2,NULL),(25,53,9,2,NULL),(26,58,16,2,NULL),(27,52,1,2,NULL),(28,59,16,2,NULL),(29,54,9,2,NULL),(30,53,1,2,NULL),(31,60,16,2,NULL),(32,55,9,2,NULL),(33,54,1,2,NULL),(34,61,16,2,NULL),(35,56,9,2,NULL),(36,62,16,2,NULL),(37,55,1,2,NULL),(38,57,9,2,NULL),(39,63,16,2,NULL),(40,58,9,2,NULL),(41,56,1,2,NULL),(42,64,16,2,NULL),(43,59,9,2,NULL),(44,65,16,2,NULL),(45,57,1,2,NULL),(46,60,9,2,NULL),(47,66,16,2,NULL),(48,58,1,2,NULL),(49,61,9,2,NULL),(50,67,16,2,NULL),(51,59,1,2,NULL),(52,62,9,2,NULL),(53,68,16,2,NULL),(54,60,1,2,NULL),(55,63,9,2,NULL),(56,69,16,2,NULL),(57,61,1,2,NULL),(58,64,9,2,NULL),(59,49,17,2,NULL),(60,62,1,2,NULL),(61,65,9,2,NULL),(62,50,17,2,NULL),(63,63,1,2,NULL),(64,66,9,2,NULL),(65,51,17,2,NULL),(66,64,1,2,NULL),(67,67,9,2,NULL),(68,52,17,2,NULL),(69,65,1,2,NULL),(70,53,17,2,NULL),(71,68,9,2,NULL),(72,66,1,2,NULL),(73,54,17,2,NULL),(74,69,9,2,NULL),(75,67,1,2,NULL),(76,6,37,2,NULL),(77,55,17,2,NULL),(78,68,1,2,NULL),(79,6,20,2,NULL),(80,56,17,2,NULL),(81,69,1,2,NULL),(82,57,17,2,NULL),(83,6,21,2,NULL),(84,3,3,2,NULL),(85,6,25,2,NULL),(86,58,17,2,NULL),(87,49,6,2,NULL),(88,6,28,2,NULL),(89,59,17,2,NULL),(90,50,6,2,NULL),(91,60,17,2,NULL),(92,6,38,2,NULL),(93,51,6,2,NULL),(94,6,39,2,NULL),(95,61,17,2,NULL),(96,52,6,2,NULL),(97,6,40,2,NULL),(98,62,17,2,NULL),(99,53,6,2,NULL),(100,6,22,2,NULL),(101,63,17,2,NULL),(102,54,6,2,NULL),(103,6,24,2,NULL),(104,64,17,2,NULL),(105,55,6,2,NULL),(106,6,29,2,NULL),(107,65,17,2,NULL),(108,56,6,2,NULL),(109,6,32,2,NULL),(110,66,17,2,NULL),(111,57,6,2,NULL),(112,67,17,2,NULL),(113,6,35,2,NULL),(114,58,6,2,NULL),(115,68,17,2,NULL),(116,6,26,2,NULL),(117,59,6,2,NULL),(118,69,17,2,NULL),(119,6,30,2,NULL),(120,60,6,2,NULL),(121,6,33,2,NULL),(122,61,6,2,NULL),(123,62,6,2,NULL),(124,6,36,2,NULL),(125,63,6,2,NULL),(126,64,6,2,NULL),(127,6,23,2,NULL),(128,65,6,2,NULL),(129,66,6,2,NULL),(130,6,27,2,NULL),(131,67,6,2,NULL),(132,68,6,2,NULL),(133,6,31,2,NULL),(134,69,6,2,NULL),(135,49,7,2,NULL),(136,6,34,2,NULL),(137,50,7,2,NULL),(138,51,7,2,NULL),(139,6,41,2,NULL),(140,52,7,2,NULL),(141,53,7,2,NULL),(142,6,42,2,NULL),(143,54,7,2,NULL),(144,55,7,2,NULL),(145,6,43,2,NULL),(146,56,7,2,NULL),(147,57,7,2,NULL),(148,49,12,2,NULL),(149,58,7,2,NULL),(150,59,7,2,NULL),(151,50,12,2,NULL),(152,60,7,2,NULL),(153,60,7,2,NULL),(154,51,12,2,NULL),(155,61,7,2,NULL),(156,61,7,2,NULL),(157,52,12,2,NULL),(158,62,7,2,NULL),(159,62,7,2,NULL),(160,53,12,2,NULL),(161,63,7,2,NULL),(162,64,7,2,NULL),(163,54,12,2,NULL),(164,65,7,2,NULL),(165,65,7,2,NULL),(166,55,12,2,NULL),(167,66,7,2,NULL),(168,66,7,2,NULL),(169,56,12,2,NULL),(170,67,7,2,NULL),(171,68,7,2,NULL),(172,57,12,2,NULL),(173,69,7,2,NULL),(174,69,7,2,NULL),(175,58,12,2,NULL),(176,59,12,2,NULL),(177,60,12,2,NULL),(178,61,12,2,NULL),(179,62,12,2,NULL),(180,63,12,2,NULL),(181,64,12,2,NULL),(182,65,12,2,NULL),(183,66,12,2,NULL),(184,67,12,2,NULL),(185,68,12,2,NULL),(186,69,12,2,NULL),(187,49,14,2,NULL),(188,50,14,2,NULL),(189,51,14,2,NULL),(190,52,14,2,NULL),(191,53,14,2,NULL),(192,54,14,2,NULL),(193,55,14,2,NULL),(194,56,14,2,NULL),(195,57,14,2,NULL),(196,58,14,2,NULL),(197,59,14,2,NULL),(198,60,14,2,NULL),(199,61,14,2,NULL),(200,62,14,2,NULL),(201,63,14,2,NULL),(202,64,14,2,NULL),(203,65,14,2,NULL),(204,66,14,2,NULL),(205,67,14,2,NULL),(206,68,14,2,NULL),(207,69,14,2,NULL),(208,49,37,2,NULL),(209,50,37,2,NULL),(210,51,37,2,NULL),(211,52,37,2,NULL),(212,53,37,2,NULL),(213,54,37,2,NULL),(214,55,37,2,NULL),(215,56,37,2,NULL),(216,57,37,2,NULL),(217,58,37,2,NULL),(218,59,37,2,NULL),(219,60,37,2,NULL),(220,61,37,2,NULL),(221,62,37,2,NULL),(222,63,37,2,NULL),(223,64,37,2,NULL),(224,65,37,2,NULL),(225,66,37,2,NULL),(226,67,37,2,NULL),(227,68,37,2,NULL),(228,69,37,2,NULL),(229,49,20,2,NULL),(230,50,20,2,NULL),(231,51,20,2,NULL),(232,52,20,2,NULL),(233,53,20,2,NULL),(234,54,20,2,NULL),(235,55,20,2,NULL),(236,56,20,2,NULL),(237,57,20,2,NULL),(238,58,20,2,NULL),(239,59,20,2,NULL),(240,60,20,2,NULL),(241,61,20,2,NULL),(242,62,20,2,NULL),(243,63,20,2,NULL),(244,64,20,2,NULL),(245,65,20,2,NULL),(246,66,20,2,NULL),(247,67,20,2,NULL),(248,68,20,2,NULL),(249,69,20,2,NULL),(250,49,21,2,NULL),(251,50,21,2,NULL),(252,51,21,2,NULL),(253,52,21,2,NULL),(254,53,21,2,NULL),(255,54,21,2,NULL),(256,55,21,2,NULL),(257,56,21,2,NULL),(258,57,21,2,NULL),(259,58,21,2,NULL),(260,59,21,2,NULL),(261,60,21,2,NULL),(262,61,21,2,NULL),(263,62,21,2,NULL),(264,63,21,2,NULL),(265,64,21,2,NULL),(266,65,21,2,NULL),(267,66,21,2,NULL),(268,67,21,2,NULL),(269,68,21,2,NULL),(270,69,21,2,NULL),(271,49,25,2,NULL),(272,50,25,2,NULL),(273,51,25,2,NULL),(274,52,25,2,NULL),(275,53,25,2,NULL),(276,54,25,2,NULL),(277,55,25,2,NULL),(278,56,25,2,NULL),(279,57,25,2,NULL),(280,58,25,2,NULL),(281,59,25,2,NULL),(282,60,25,2,NULL),(283,61,25,2,NULL),(284,62,25,2,NULL),(285,63,25,2,NULL),(286,64,25,2,NULL),(287,65,25,2,NULL),(288,66,25,2,NULL),(289,67,25,2,NULL),(290,68,25,2,NULL),(291,69,25,2,NULL),(292,49,28,2,NULL),(293,50,28,2,NULL),(294,51,28,2,NULL),(295,52,28,2,NULL),(296,53,28,2,NULL),(297,54,28,2,NULL),(298,55,28,2,NULL),(299,56,28,2,NULL),(300,57,28,2,NULL),(301,58,28,2,NULL),(302,59,28,2,NULL),(303,60,28,2,NULL),(304,61,28,2,NULL),(305,62,28,2,NULL),(306,63,28,2,NULL),(307,64,28,2,NULL),(308,65,28,2,NULL),(309,66,28,2,NULL),(310,67,28,2,NULL),(311,68,28,2,NULL),(312,69,28,2,NULL),(313,49,38,2,NULL),(314,50,38,2,NULL),(315,51,38,2,NULL),(316,52,38,2,NULL),(317,53,38,2,NULL),(318,54,38,2,NULL),(319,55,38,2,NULL),(320,56,38,2,NULL),(321,57,38,2,NULL),(322,58,38,2,NULL),(323,59,38,2,NULL),(324,60,38,2,NULL),(325,61,38,2,NULL),(326,62,38,2,NULL),(327,63,38,2,NULL),(328,64,38,2,NULL),(329,65,38,2,NULL),(330,66,38,2,NULL),(331,67,38,2,NULL),(332,68,38,2,NULL),(333,69,38,2,NULL),(334,49,39,2,NULL),(335,50,39,2,NULL),(336,51,39,2,NULL),(337,52,39,2,NULL),(338,53,39,2,NULL),(339,54,39,2,NULL),(340,55,39,2,NULL),(341,49,26,2,NULL),(342,56,39,2,NULL),(343,57,39,2,NULL),(344,58,39,2,NULL),(345,50,26,2,NULL),(346,59,39,2,NULL),(347,60,39,2,NULL),(348,61,39,2,NULL),(349,51,26,2,NULL),(350,62,39,2,NULL),(351,63,39,2,NULL),(352,52,26,2,NULL),(353,64,39,2,NULL),(354,65,39,2,NULL),(355,66,39,2,NULL),(356,53,26,2,NULL),(357,67,39,2,NULL),(358,54,26,2,NULL),(359,68,39,2,NULL),(360,68,39,2,NULL),(361,55,26,2,NULL),(362,69,39,2,NULL),(363,49,40,2,NULL),(364,56,26,2,NULL),(365,50,40,2,NULL),(366,51,40,2,NULL),(367,52,40,2,NULL),(368,57,26,2,NULL),(369,53,40,2,NULL),(370,53,40,2,NULL),(371,58,26,2,NULL),(372,54,40,2,NULL),(373,55,40,2,NULL),(374,59,26,2,NULL),(375,56,40,2,NULL),(376,57,40,2,NULL),(377,58,40,2,NULL),(378,60,26,2,NULL),(379,59,40,2,NULL),(380,60,40,2,NULL),(381,61,26,2,NULL),(382,61,40,2,NULL),(383,62,40,2,NULL),(384,62,26,2,NULL),(385,63,40,2,NULL),(386,64,40,2,NULL),(387,63,26,2,NULL),(388,65,40,2,NULL),(389,66,40,2,NULL),(390,67,40,2,NULL),(391,49,23,2,NULL),(392,64,26,2,NULL),(393,68,40,2,NULL),(394,69,40,2,NULL),(395,65,26,2,NULL),(396,50,23,2,NULL),(397,49,22,2,NULL),(398,66,26,2,NULL),(399,50,22,2,NULL),(400,51,23,2,NULL),(401,67,26,2,NULL),(402,51,22,2,NULL),(403,52,23,2,NULL),(404,68,26,2,NULL),(405,52,22,2,NULL),(406,69,26,2,NULL),(407,53,23,2,NULL),(408,53,22,2,NULL),(409,49,30,2,NULL),(410,54,23,2,NULL),(411,54,22,2,NULL),(412,50,30,2,NULL),(413,55,22,2,NULL),(414,55,23,2,NULL),(415,51,30,2,NULL),(416,56,22,2,NULL),(417,56,23,2,NULL),(418,57,22,2,NULL),(419,52,30,2,NULL),(420,57,23,2,NULL),(421,58,22,2,NULL),(422,53,30,2,NULL),(423,58,23,2,NULL),(424,59,22,2,NULL),(425,54,30,2,NULL),(426,59,23,2,NULL),(427,60,22,2,NULL),(428,55,30,2,NULL),(429,60,23,2,NULL),(430,61,22,2,NULL),(431,56,30,2,NULL),(432,61,23,2,NULL),(433,62,22,2,NULL),(434,57,30,2,NULL),(435,62,23,2,NULL),(436,63,22,2,NULL),(437,58,30,2,NULL),(438,63,23,2,NULL),(439,64,22,2,NULL),(440,59,30,2,NULL),(441,64,23,2,NULL),(442,65,22,2,NULL),(443,60,30,2,NULL),(444,65,23,2,NULL),(445,66,22,2,NULL),(446,61,30,2,NULL),(447,66,23,2,NULL),(448,67,22,2,NULL),(449,62,30,2,NULL),(450,67,23,2,NULL),(451,68,22,2,NULL),(452,63,30,2,NULL),(453,68,23,2,NULL),(454,69,22,2,NULL),(455,64,30,2,NULL),(456,69,23,2,NULL),(457,49,24,2,NULL),(458,65,30,2,NULL),(459,49,27,2,NULL),(460,50,24,2,NULL),(461,66,30,2,NULL),(462,50,27,2,NULL),(463,51,24,2,NULL),(464,67,30,2,NULL),(465,51,27,2,NULL),(466,52,24,2,NULL),(467,68,30,2,NULL),(468,52,27,2,NULL),(469,53,24,2,NULL),(470,69,30,2,NULL),(471,53,27,2,NULL),(472,54,24,2,NULL),(473,49,33,2,NULL),(474,54,27,2,NULL),(475,55,24,2,NULL),(476,50,33,2,NULL),(477,55,27,2,NULL),(478,56,24,2,NULL),(479,51,33,2,NULL),(480,56,27,2,NULL),(481,57,24,2,NULL),(482,52,33,2,NULL),(483,57,27,2,NULL),(484,58,24,2,NULL),(485,53,33,2,NULL),(486,58,27,2,NULL),(487,59,24,2,NULL),(488,54,33,2,NULL),(489,59,27,2,NULL),(490,60,24,2,NULL),(491,55,33,2,NULL),(492,60,27,2,NULL),(493,61,24,2,NULL),(494,56,33,2,NULL),(495,61,27,2,NULL),(496,62,24,2,NULL),(497,57,33,2,NULL),(498,62,27,2,NULL),(499,63,24,2,NULL),(500,58,33,2,NULL),(501,63,27,2,NULL),(502,64,24,2,NULL),(503,59,33,2,NULL),(504,64,27,2,NULL),(505,65,24,2,NULL),(506,60,33,2,NULL),(507,65,27,2,NULL),(508,66,24,2,NULL),(509,61,33,2,NULL),(510,66,27,2,NULL),(511,67,24,2,NULL),(512,62,33,2,NULL),(513,67,27,2,NULL),(514,68,24,2,NULL),(515,63,33,2,NULL),(516,68,27,2,NULL),(517,69,24,2,NULL),(518,64,33,2,NULL),(519,69,27,2,NULL),(520,49,29,2,NULL),(521,65,33,2,NULL),(522,49,31,2,NULL),(523,50,29,2,NULL),(524,66,33,2,NULL),(525,50,31,2,NULL),(526,51,29,2,NULL),(527,67,33,2,NULL),(528,51,31,2,NULL),(529,52,29,2,NULL),(530,68,33,2,NULL),(531,52,31,2,NULL),(532,53,29,2,NULL),(533,69,33,2,NULL),(534,53,31,2,NULL),(535,54,29,2,NULL),(536,49,36,2,NULL),(537,54,31,2,NULL),(538,55,29,2,NULL),(539,50,36,2,NULL),(540,55,31,2,NULL),(541,56,29,2,NULL),(542,51,36,2,NULL),(543,56,31,2,NULL),(544,57,29,2,NULL),(545,52,36,2,NULL),(546,57,31,2,NULL),(547,58,29,2,NULL),(548,53,36,2,NULL),(549,58,31,2,NULL),(550,59,29,2,NULL),(551,54,36,2,NULL),(552,59,31,2,NULL),(553,60,29,2,NULL),(554,55,36,2,NULL),(555,60,31,2,NULL),(556,61,29,2,NULL),(557,56,36,2,NULL),(558,61,31,2,NULL),(559,62,29,2,NULL),(560,57,36,2,NULL),(561,62,31,2,NULL),(562,63,29,2,NULL),(563,58,36,2,NULL),(564,63,31,2,NULL),(565,64,29,2,NULL),(566,59,36,2,NULL),(567,64,31,2,NULL),(568,65,29,2,NULL),(569,60,36,2,NULL),(570,65,31,2,NULL),(571,66,29,2,NULL),(572,61,36,2,NULL),(573,66,31,2,NULL),(574,67,29,2,NULL),(575,62,36,2,NULL),(576,67,31,2,NULL),(577,68,29,2,NULL),(578,63,36,2,NULL),(579,68,31,2,NULL),(580,69,29,2,NULL),(581,64,36,2,NULL),(582,69,31,2,NULL),(583,49,32,2,NULL),(584,65,36,2,NULL),(585,49,34,2,NULL),(586,50,32,2,NULL),(587,66,36,2,NULL),(588,50,34,2,NULL),(589,51,32,2,NULL),(590,67,36,2,NULL),(591,51,34,2,NULL),(592,52,32,2,NULL),(593,68,36,2,NULL),(594,52,34,2,NULL),(595,53,32,2,NULL),(596,69,36,2,NULL),(597,53,34,2,NULL),(598,54,32,2,NULL),(599,54,34,2,NULL),(600,55,32,2,NULL),(601,55,34,2,NULL),(602,56,32,2,NULL),(603,56,34,2,NULL),(604,57,32,2,NULL),(605,57,34,2,NULL),(606,58,32,2,NULL),(607,58,34,2,NULL),(608,59,32,2,NULL),(609,59,34,2,NULL),(610,60,32,2,NULL),(611,60,34,2,NULL),(612,61,32,2,NULL),(613,61,34,2,NULL),(614,62,32,2,NULL),(615,62,34,2,NULL),(616,63,32,2,NULL),(617,63,34,2,NULL),(618,64,32,2,NULL),(619,64,34,2,NULL),(620,65,32,2,NULL),(621,65,34,2,NULL),(622,66,32,2,NULL),(623,66,34,2,NULL),(624,67,32,2,NULL),(625,67,34,2,NULL),(626,68,32,2,NULL),(627,68,34,2,NULL),(628,69,32,2,NULL),(629,69,34,2,NULL),(630,49,35,2,NULL),(631,49,41,2,NULL),(632,50,35,2,NULL),(633,50,41,2,NULL),(634,51,35,2,NULL),(635,51,41,2,NULL),(636,52,35,2,NULL),(637,52,41,2,NULL),(638,53,35,2,NULL),(639,53,41,2,NULL),(640,54,35,2,NULL),(641,54,41,2,NULL),(642,55,35,2,NULL),(643,55,41,2,NULL),(644,56,35,2,NULL),(645,56,41,2,NULL),(646,57,35,2,NULL),(647,57,41,2,NULL),(648,58,35,2,NULL),(649,58,41,2,NULL),(650,59,35,2,NULL),(651,59,41,2,NULL),(652,60,35,2,NULL),(653,60,41,2,NULL),(654,61,35,2,NULL),(655,61,41,2,NULL),(656,62,35,2,NULL),(657,62,41,2,NULL),(658,63,35,2,NULL),(659,63,41,2,NULL),(660,64,35,2,NULL),(661,64,41,2,NULL),(662,65,35,2,NULL),(663,65,41,2,NULL),(664,66,35,2,NULL),(665,66,41,2,NULL),(666,67,35,2,NULL),(667,67,41,2,NULL),(668,68,35,2,NULL),(669,68,41,2,NULL),(670,69,35,2,NULL),(671,69,41,2,NULL),(672,49,42,2,NULL),(673,50,42,2,NULL),(674,51,42,2,NULL),(675,52,42,2,NULL),(676,53,42,2,NULL),(677,54,42,2,NULL),(678,55,42,2,NULL),(679,56,42,2,NULL),(680,57,42,2,NULL),(681,58,42,2,NULL),(682,59,42,2,NULL),(683,60,42,2,NULL),(684,61,42,2,NULL),(685,62,42,2,NULL),(686,63,42,2,NULL),(687,64,42,2,NULL),(688,65,42,2,NULL),(689,66,42,2,NULL),(690,67,42,2,NULL),(691,68,42,2,NULL),(692,69,42,2,NULL),(693,49,43,2,NULL),(694,50,43,2,NULL),(695,51,43,2,NULL),(696,52,43,2,NULL),(697,53,43,2,NULL),(698,54,43,2,NULL),(699,55,43,2,NULL),(700,56,43,2,NULL),(701,57,43,2,NULL),(702,58,43,2,NULL),(703,59,43,2,NULL),(704,60,43,2,NULL),(705,61,43,2,NULL),(706,62,43,2,NULL),(707,63,43,2,NULL),(708,64,43,2,NULL),(709,65,43,2,NULL),(710,66,43,2,NULL),(711,67,43,2,NULL),(712,68,43,2,NULL),(713,69,43,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_COARSE_UPDATES'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_NETWORK_STATE'),(23,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(25,'android.permission.CHANGE_NETWORK_STATE'),(24,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(5,'android.permission.SEND_SMS'),(20,'android.permission.SYSTEM_ALERT_WINDOW'),(26,'android.permission.UPDATE_DEVICE_STATS'),(11,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SECURE_SETTINGS'),(22,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(19,'com.android.alarm.permission.SET_ALARM'),(12,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,18),(16,2,5),(17,2,6),(18,2,7),(19,2,9),(20,2,12),(21,2,13),(22,2,14),(23,2,15),(24,3,1),(25,3,5),(26,3,6),(27,3,7),(28,3,9),(29,3,12),(30,3,13),(31,3,14),(32,3,15),(33,3,17),(34,3,16),(35,3,19),(36,3,18),(37,3,20),(38,4,1),(39,4,4),(40,4,5),(41,4,6),(42,5,1),(43,4,7),(44,5,4),(45,4,9),(46,5,5),(47,4,12),(48,5,6),(49,4,13),(50,5,7),(51,4,14),(52,5,9),(53,4,15),(54,5,10),(55,4,17),(56,5,11),(57,6,1),(58,4,16),(59,7,1),(60,5,12),(61,6,4),(62,4,19),(63,7,5),(64,5,16),(65,6,5),(66,4,18),(67,7,6),(68,6,6),(69,5,19),(70,4,21),(71,7,7),(72,6,7),(73,5,18),(74,4,20),(75,7,9),(76,5,21),(77,6,9),(78,4,22),(79,7,12),(80,5,20),(81,6,10),(82,7,13),(83,5,23),(84,6,12),(85,7,14),(86,5,22),(87,6,13),(88,7,15),(89,6,14),(90,5,25),(91,7,17),(92,6,15),(93,5,24),(94,7,16),(95,6,17),(96,5,26),(97,7,19),(98,6,16),(99,7,18),(100,6,19),(101,7,21),(102,6,18),(103,7,20),(104,6,21),(105,7,22),(106,6,20),(107,6,22);
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
