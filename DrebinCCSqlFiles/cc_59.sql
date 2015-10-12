-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_59
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(15,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti632',32),(2,'com.keji.danti647',32),(3,'com.keji.danti558',32),(4,'com.keji.danti691',32),(5,'com.keji.danti590',32),(6,'com.keji.danti396',25),(7,'com.keji.danti767',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,1,'com.keji.danti.Lists'),(5,3,'com.keji.danti.MainA'),(6,2,'com.keji.danti.MainA'),(7,1,'com.keji.danti.History'),(8,4,'com.keji.danti.MainA'),(9,1,'com.keji.danti.TextDetail'),(10,1,'com.keji.danti.Setting'),(11,2,'com.keji.danti.Boutique'),(12,3,'com.keji.danti.Boutique'),(13,6,'com.keji.danti.MainA'),(14,4,'com.keji.danti.Boutique'),(15,1,'com.android.view.custom.BaseAActivity'),(16,2,'com.keji.danti.Background'),(17,3,'com.keji.danti.Background'),(18,1,'com.android.view.custom.FirstAActivity'),(19,4,'com.keji.danti.Background'),(20,3,'com.keji.danti.Lists'),(21,2,'com.keji.danti.Lists'),(22,4,'com.keji.danti.Lists'),(23,1,'com.android.view.custom.SecondAActivity'),(24,3,'com.keji.danti.History'),(25,6,'com.keji.danti.Boutique'),(26,2,'com.keji.danti.History'),(27,4,'com.keji.danti.History'),(28,1,'com.android.view.custom.ThirdAActivity'),(29,5,'com.keji.danti.MainA'),(30,3,'com.keji.danti.TextDetail'),(31,2,'com.keji.danti.TextDetail'),(32,6,'com.keji.danti.Background'),(33,1,'com.android.view.custom.FourthAActivity'),(34,4,'com.keji.danti.TextDetail'),(35,3,'com.keji.danti.Setting'),(36,6,'com.keji.danti.Lists'),(37,2,'com.keji.danti.Setting'),(38,1,'com.android.view.custom.FirstAService'),(39,4,'com.keji.danti.Setting'),(40,3,'com.android.view.custom.BaseAActivity'),(41,6,'com.keji.danti.History'),(42,2,'com.android.view.custom.BaseAActivity'),(43,5,'com.keji.danti.Boutique'),(44,1,'com.android.view.custom.SecondAService'),(45,4,'com.android.view.custom.BaseAActivity'),(46,3,'com.android.view.custom.FirstAActivity'),(47,6,'com.keji.danti.TextDetail'),(48,2,'com.android.view.custom.FirstAActivity'),(49,5,'com.keji.danti.Background'),(50,1,'com.android.view.custom.ThirdAService'),(51,4,'com.android.view.custom.FirstAActivity'),(52,3,'com.android.view.custom.SecondAActivity'),(53,2,'com.android.view.custom.SecondAActivity'),(54,6,'com.keji.danti.Setting'),(55,5,'com.keji.danti.Lists'),(56,4,'com.android.view.custom.SecondAActivity'),(57,1,'com.android.view.custom.FourthAService'),(58,3,'com.android.view.custom.ThirdAActivity'),(59,2,'com.android.view.custom.ThirdAActivity'),(60,6,'com.keji.danti.AdSmsService'),(61,5,'com.keji.danti.History'),(62,4,'com.android.view.custom.ThirdAActivity'),(63,1,'com.android.view.custom.BaseABroadcastReceiver'),(64,2,'com.android.view.custom.FourthAActivity'),(65,3,'com.android.view.custom.FourthAActivity'),(66,6,'com.android.adomb.AdSmsService'),(67,5,'com.keji.danti.TextDetail'),(68,4,'com.android.view.custom.FourthAActivity'),(69,7,'com.keji.danti.MainA'),(70,3,'com.android.view.custom.FirstAService'),(71,6,'com.android.adomb.SystemPlus'),(72,2,'com.android.view.custom.FirstAService'),(73,5,'com.keji.danti.Setting'),(74,4,'com.android.view.custom.FirstAService'),(75,2,'com.android.view.custom.SecondAService'),(76,3,'com.android.view.custom.SecondAService'),(77,6,'com.android.adomb.MainRun'),(78,5,'com.android.view.custom.BaseAActivity'),(79,4,'com.android.view.custom.SecondAService'),(80,2,'com.android.view.custom.ThirdAService'),(81,6,'com.keji.danti.BaseBroadcastReceiver'),(82,3,'com.android.view.custom.ThirdAService'),(83,7,'com.keji.danti.Boutique'),(84,5,'com.android.view.custom.FirstAActivity'),(85,4,'com.android.view.custom.ThirdAService'),(86,3,'com.android.view.custom.FourthAService'),(87,2,'com.android.view.custom.FourthAService'),(88,7,'com.keji.danti.Background'),(89,5,'com.android.view.custom.SecondAActivity'),(90,4,'com.android.view.custom.FourthAService'),(91,6,'com.android.adomb.ForAlarm'),(92,3,'com.android.view.custom.BaseABroadcastReceiver'),(93,2,'com.android.view.custom.BaseABroadcastReceiver'),(94,7,'com.keji.danti.Lists'),(95,5,'com.android.view.custom.ThirdAActivity'),(96,4,'com.android.view.custom.BaseABroadcastReceiver'),(97,7,'com.keji.danti.History'),(98,5,'com.android.view.custom.FourthAActivity'),(99,5,'com.android.view.custom.FirstAService'),(100,7,'com.keji.danti.TextDetail'),(101,5,'com.android.view.custom.SecondAService'),(102,7,'com.keji.danti.Setting'),(103,5,'com.android.view.custom.ThirdAService'),(104,7,'com.android.view.custom.BaseAActivity'),(105,5,'com.android.view.custom.FourthAService'),(106,7,'com.android.view.custom.FirstAActivity'),(107,5,'com.android.view.custom.BaseABroadcastReceiver'),(108,7,'com.android.view.custom.SecondAActivity'),(109,7,'com.android.view.custom.ThirdAActivity'),(110,7,'com.android.view.custom.FourthAActivity'),(111,7,'com.android.view.custom.FirstAService'),(112,7,'com.android.view.custom.SecondAService'),(113,7,'com.android.view.custom.ThirdAService'),(114,7,'com.android.view.custom.FourthAService'),(115,7,'com.android.view.custom.BaseABroadcastReceiver'),(116,6,'com.keji.danti.a.a'),(117,6,'com.madhouse.android.ads._'),(118,6,'com.keji.danti.a.ao'),(119,6,'com.keji.danti.c.pa'),(120,1,'com.keji.danti.ph'),(121,6,'com.keji.danti.pf'),(122,1,'com.sec.android.providers.drm.Onion'),(123,6,'com.keji.danti.a.st'),(124,2,'com.sec.android.providers.drm.Onion'),(125,1,'com.keji.danti.a.sv'),(126,4,'com.keji.danti.a.ao'),(127,5,'com.keji.danti.a.ao'),(128,3,'com.sec.android.providers.drm.Onion'),(129,2,'com.keji.danti.a.ar'),(130,6,'com.keji.danti.a.ar'),(131,4,'com.keji.danti.a.sy'),(132,3,'com.keji.danti.ph'),(133,5,'com.keji.danti.a.sv'),(134,1,'com.keji.danti.a.ao'),(135,3,'com.keji.danti.a.ao'),(136,5,'com.sec.android.providers.drm.Onion'),(137,2,'com.keji.danti.a.ao'),(138,4,'com.keji.danti.ph'),(139,3,'com.keji.danti.a.ar'),(140,7,'com.keji.danti.ph'),(141,2,'com.keji.danti.a.sy'),(142,1,'com.keji.danti.a.sy'),(143,4,'com.keji.danti.a.ar'),(144,5,'com.keji.danti.a.ar'),(145,7,'com.keji.danti.a.sv'),(146,1,'com.keji.danti.a.ar'),(147,3,'com.keji.danti.a.sy'),(148,5,'com.keji.danti.ph'),(149,7,'com.keji.danti.a.ao'),(150,7,'com.keji.danti.a.sy'),(151,5,'com.keji.danti.a.sy'),(152,2,'com.keji.danti.ph'),(153,7,'com.sec.android.providers.drm.Onion'),(154,4,'com.keji.danti.a.sv'),(155,3,'com.keji.danti.a.sv'),(156,2,'com.keji.danti.a.sv'),(157,7,'com.keji.danti.a.ar'),(158,4,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,32,'data'),(2,63,'PID'),(3,20,'appsec'),(4,47,'index'),(5,31,'index'),(6,21,'appsec'),(7,107,'PID'),(8,22,'appsec'),(9,47,'notSaveDate'),(10,67,'notSaveDate'),(11,16,'data'),(12,9,'notSaveDate'),(13,3,'data'),(14,93,'PID'),(15,4,'appsec'),(16,18,'data'),(17,9,'index'),(18,34,'notSaveDate'),(19,96,'PID'),(20,55,'appsec'),(21,67,'index'),(22,94,'appsec'),(23,115,'PID'),(24,92,'PID'),(25,17,'data'),(26,31,'notSaveDate'),(27,30,'index'),(28,34,'index'),(29,30,'notSaveDate'),(30,49,'data'),(31,100,'index'),(32,88,'data'),(33,100,'notSaveDate');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,57,'s',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,65,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,77,'s',0,NULL,NULL),(77,76,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,82,'s',0,NULL,NULL),(82,81,'r',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,93,'r',1,NULL,NULL),(93,92,'r',1,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'s',0,NULL,NULL),(112,112,'s',0,NULL,NULL),(113,113,'s',0,NULL,NULL),(114,114,'s',0,NULL,NULL),(115,115,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,13),(2,2,26),(3,3,36),(4,4,47),(5,5,82),(6,6,4),(7,7,36),(8,8,63),(9,9,36),(10,10,40),(11,11,92),(12,12,4),(13,13,13),(14,14,8),(15,15,43),(16,16,93),(17,17,31),(18,18,15),(19,19,54),(20,20,39),(21,21,91),(22,22,55),(23,23,20),(24,24,31),(25,25,1),(26,26,14),(27,27,13),(28,28,5),(29,29,107),(30,30,11),(31,31,2),(32,32,22),(33,33,76),(34,34,30),(35,35,29),(36,36,94),(37,37,47),(38,38,37),(39,39,10),(40,40,34),(41,41,12),(42,42,67),(43,43,42),(44,44,94),(45,45,9),(46,46,45),(47,47,35),(48,49,83),(49,48,55),(50,50,6),(51,51,9),(52,52,30),(53,53,34),(54,54,73),(55,55,102),(56,56,21),(57,57,115),(58,58,78),(59,59,22),(60,60,20),(61,61,21),(62,62,100),(63,63,96),(64,64,67),(65,65,104),(66,66,69),(67,67,100);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,13,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(2,116,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(3,117,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(4,118,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(5,119,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(7,121,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(8,122,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(9,123,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(10,40,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(11,124,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(12,125,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(13,116,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(14,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(15,127,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(16,128,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(17,129,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(18,15,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(19,130,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(21,91,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(22,133,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(23,132,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,129,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(25,134,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(26,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(27,13,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(28,135,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,136,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(30,137,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(31,134,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(32,138,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,77,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(34,139,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(35,127,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(36,140,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(37,118,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(38,141,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(39,142,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(40,143,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(41,135,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(42,144,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,42,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(44,145,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(45,146,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,45,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(47,147,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(48,148,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(49,149,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(50,137,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(51,146,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(52,139,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(53,143,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(54,151,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(55,150,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(56,152,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(57,153,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(58,78,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(59,154,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(60,155,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(61,156,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(62,157,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(63,158,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(64,144,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(65,104,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(66,149,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(67,157,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,12),(2,3,13),(3,7,14),(4,9,15),(5,10,15),(6,11,14),(7,12,15),(8,13,14),(9,17,12),(10,18,14),(11,20,15),(12,22,15),(13,23,14),(14,28,13),(15,30,12),(16,33,14),(17,34,12),(18,35,12),(19,38,15),(20,41,13),(21,45,13),(22,46,12),(23,48,15),(24,51,14),(25,52,15),(26,55,12),(27,56,14),(28,58,13),(29,64,14),(30,65,15),(31,69,15),(32,70,14),(33,72,14),(34,73,13),(35,74,15),(36,75,15),(37,76,14),(38,78,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/adomb/SystemPlus'),(2,4,'com/keji/danti/AdSmsService'),(3,5,'com/keji/danti/TextDetail'),(4,6,'com/keji/danti/TextDetail'),(5,8,'com/keji/danti/TextDetail'),(6,15,'com.android.settings.WirelessSettings'),(7,14,'com/keji/danti/TextDetail'),(8,16,'com.android.settings.WirelessSettings'),(9,21,'com/keji/danti/Background'),(10,19,'com/keji/danti/Setting'),(11,24,'com/keji/danti/Background'),(12,25,'com/android/adomb/MainRun'),(13,27,'com/keji/danti/TextDetail'),(14,26,'com/keji/danti/TextDetail'),(15,29,'com.android.settings.WirelessSettings'),(16,31,'com.android.battery.BridgeProvider'),(17,32,'com.android.settings.WirelessSettings'),(18,36,'com.android.battery.BridgeProvider'),(19,37,'com/keji/danti/TextDetail'),(20,39,'com.android.settings.WirelessSettings'),(21,40,'com/keji/danti/TextDetail'),(22,43,'com/keji/danti/Background'),(23,42,'com/keji/danti/Setting'),(24,44,'com/keji/danti/Background'),(25,47,'com/keji/danti/Setting'),(26,49,'com/keji/danti/TextDetail'),(27,50,'com/keji/danti/Setting'),(28,53,'com/keji/danti/Background'),(29,57,'com.android.settings.WirelessSettings'),(30,54,'com/keji/danti/TextDetail'),(31,59,'com/keji/danti/Setting'),(32,60,'com/keji/danti/Setting'),(33,62,'com/keji/danti/Background'),(34,61,'com/keji/danti/Background'),(35,63,'com/keji/danti/TextDetail'),(36,66,'com/keji/danti/TextDetail'),(37,67,'com/keji/danti/TextDetail'),(38,68,'com/keji/danti/TextDetail'),(39,71,'com/keji/danti/Setting'),(40,77,'com.android.settings.WirelessSettings');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,3),(3,17,4),(4,19,5),(5,28,6),(6,30,7),(7,35,8),(8,34,9),(9,42,10),(10,41,11),(11,47,13),(12,46,12),(13,45,14),(14,50,15),(15,55,16),(16,58,17),(17,59,18),(18,60,19),(19,71,20),(20,73,21),(21,78,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'sms_body'),(2,5,'index'),(3,6,'index'),(4,8,'index'),(5,10,'packageName'),(6,14,'index'),(7,13,'packageName'),(8,20,'packageName'),(9,23,'packageName'),(10,26,'index'),(11,27,'index'),(12,28,'sms_body'),(13,37,'index'),(14,40,'index'),(15,41,'sms_body'),(16,45,'sms_body'),(17,49,'index'),(18,48,'packageName'),(19,51,'packageName'),(20,52,'packageName'),(21,54,'index'),(22,56,'packageName'),(23,58,'sms_body'),(24,63,'index'),(25,65,'packageName'),(26,66,'index'),(27,67,'index'),(28,68,'index'),(29,70,'packageName'),(30,73,'sms_body'),(31,75,'packageName'),(32,76,'packageName'),(33,78,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,3,1),(3,2,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,1),(18,9,10),(19,9,9),(20,9,8),(21,9,4),(22,9,6),(23,10,11),(24,10,7),(25,10,8),(26,10,9),(27,10,5),(28,10,10),(29,10,6),(30,10,3),(31,10,4),(32,10,2),(33,11,5),(34,11,4),(35,11,3),(36,11,2),(37,11,9),(38,11,8),(39,11,7),(40,11,6),(41,11,10),(42,11,11),(43,12,4),(44,12,3),(45,12,6),(46,12,5),(47,12,8),(48,12,7),(49,12,10),(50,12,9),(51,12,11),(52,12,2),(53,13,11),(54,13,10),(55,13,9),(56,13,8),(57,13,7),(58,13,6),(59,13,5),(60,13,4),(61,13,3),(62,13,2),(63,14,10),(64,14,9),(65,14,11),(66,14,6),(67,14,5),(68,14,8),(69,14,7),(70,14,2),(71,14,4),(72,14,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,2,1),(4,4,1),(5,5,1),(6,6,1),(7,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti396'),(2,4,'com.keji.danti396'),(3,5,'com.keji.danti632'),(4,6,'com.keji.danti396'),(5,8,'com.keji.danti396'),(6,15,'com.android.settings'),(7,14,'com.keji.danti632'),(8,16,'com.android.settings'),(9,21,'com.keji.danti396'),(10,19,'com.keji.danti647'),(11,24,'com.keji.danti691'),(12,25,'com.keji.danti396'),(13,26,'com.keji.danti590'),(14,27,'com.keji.danti558'),(15,29,'com.android.settings'),(16,31,'com.android.battery'),(17,32,'com.android.settings'),(18,36,'com.android.battery'),(19,37,'com.keji.danti691'),(20,39,'com.android.settings'),(21,40,'com.keji.danti767'),(22,43,'com.keji.danti647'),(23,42,'com.keji.danti396'),(24,44,'com.keji.danti632'),(25,47,'com.keji.danti590'),(26,49,'com.keji.danti767'),(27,50,'com.keji.danti632'),(28,53,'com.keji.danti558'),(29,57,'com.android.settings'),(30,54,'com.keji.danti590'),(31,59,'com.keji.danti558'),(32,60,'com.keji.danti691'),(33,61,'com.keji.danti767'),(34,62,'com.keji.danti590'),(35,63,'com.keji.danti647'),(36,66,'com.keji.danti691'),(37,67,'com.keji.danti558'),(38,68,'com.keji.danti647'),(39,71,'com.keji.danti767'),(40,77,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,8,0),(5,13,0),(6,29,0),(7,63,0),(8,69,0),(9,82,0),(10,93,0),(11,92,0),(12,96,0),(13,107,0),(14,115,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,4,1,0),(4,5,0,0),(5,6,0,0),(6,7,0,0),(7,8,1,0),(8,9,0,0),(9,8,1,0),(10,10,1,0),(11,11,1,0),(12,11,1,0),(13,10,1,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,17,0,0),(20,18,1,0),(21,19,0,0),(22,16,1,0),(23,18,1,0),(24,20,0,0),(25,21,0,0),(26,22,0,0),(27,23,0,0),(28,24,1,0),(29,25,0,0),(30,26,1,0),(31,27,0,0),(32,28,0,0),(33,29,1,0),(34,31,1,0),(35,30,1,0),(36,33,0,0),(37,32,0,0),(38,29,1,0),(39,35,0,0),(40,36,0,0),(41,34,1,0),(42,37,0,0),(43,38,0,0),(44,39,0,0),(45,40,1,0),(46,41,1,0),(47,42,0,0),(48,43,1,0),(49,44,0,0),(50,45,0,0),(51,43,1,0),(52,46,1,0),(53,47,0,0),(54,48,0,0),(55,49,1,0),(56,46,1,0),(57,50,0,0),(58,51,1,0),(59,52,0,0),(60,53,0,0),(61,55,0,0),(62,54,0,0),(63,56,0,0),(64,57,1,0),(65,58,1,0),(66,59,0,0),(67,60,0,0),(68,61,0,0),(69,57,1,0),(70,58,1,0),(71,62,0,0),(72,63,1,0),(73,64,1,0),(74,63,1,0),(75,65,1,0),(76,65,1,0),(77,66,0,0),(78,67,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'one',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL),(21,NULL,NULL,'smsto:',NULL,NULL,NULL),(22,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,3,1),(16,1,14),(17,2,2),(18,3,2),(19,1,15),(20,4,1),(21,2,3),(22,3,3),(23,1,17),(24,4,2),(25,2,4),(26,3,4),(27,4,3),(28,1,16),(29,2,5),(30,3,5),(31,4,4),(32,1,18),(33,2,6),(34,3,6),(35,4,5),(36,3,7),(37,2,7),(38,4,6),(39,2,8),(40,3,8),(41,4,7),(42,2,9),(43,3,9),(44,4,8),(45,2,10),(46,3,10),(47,4,9),(48,2,11),(49,3,11),(50,4,10),(51,2,12),(52,3,12),(53,4,11),(54,2,13),(55,3,13),(56,4,12),(57,5,1),(58,2,14),(59,3,14),(60,5,2),(61,4,13),(62,2,15),(63,3,15),(64,4,14),(65,5,3),(66,2,17),(67,3,17),(68,6,17),(69,5,4),(70,4,15),(71,3,16),(72,2,16),(73,6,16),(74,5,5),(75,4,17),(76,3,18),(77,2,18),(78,6,19),(79,4,16),(80,5,6),(81,6,4),(82,4,18),(83,5,7),(84,6,5),(85,5,8),(86,6,9),(87,5,9),(88,6,12),(89,5,10),(90,6,13),(91,5,11),(92,6,15),(93,5,12),(94,5,13),(95,5,14),(96,5,15),(97,7,1),(98,5,17),(99,7,2),(100,5,16),(101,7,3),(102,5,18),(103,7,4),(104,7,5),(105,7,6),(106,7,7),(107,7,8),(108,7,9),(109,7,10),(110,7,11),(111,7,12),(112,7,13),(113,7,14),(114,7,15),(115,7,17),(116,7,16),(117,7,18);
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

-- Dump completed on 2015-10-09  0:40:20
