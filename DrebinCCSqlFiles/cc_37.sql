-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_37
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (23,'(.*)'),(24,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(20,'android.intent.action.BATTERY_LOW'),(17,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(21,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(18,'android.provider.Telephony.SIM_FULL'),(9,'android.provider.Telephony.SMS_RECEIVED'),(19,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti397',25),(2,'com.keji.danti620',32),(3,'com.keji.danti715',32),(4,'com.keji.danti552',32),(5,'com.keji.danti703',32),(6,'com.keji.danti600',32),(7,'com.keji.danti432',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,1,'com.keji.danti.Lists'),(5,2,'com.keji.danti.MainA'),(6,3,'com.keji.danti.MainA'),(7,1,'com.keji.danti.History'),(8,4,'com.keji.danti.MainA'),(9,1,'com.keji.danti.TextDetail'),(10,3,'com.keji.danti.Boutique'),(11,2,'com.keji.danti.Boutique'),(12,1,'com.keji.danti.Setting'),(13,4,'com.keji.danti.Boutique'),(14,3,'com.keji.danti.Background'),(15,2,'com.keji.danti.Background'),(16,1,'com.keji.danti.AdSmsService'),(17,4,'com.keji.danti.Background'),(18,3,'com.keji.danti.Lists'),(19,2,'com.keji.danti.Lists'),(20,1,'com.android.adomb.AdSmsService'),(21,4,'com.keji.danti.Lists'),(22,3,'com.keji.danti.History'),(23,2,'com.keji.danti.History'),(24,1,'com.android.adomb.SystemPlus'),(25,4,'com.keji.danti.History'),(26,3,'com.keji.danti.TextDetail'),(27,2,'com.keji.danti.TextDetail'),(28,1,'com.android.adomb.MainRun'),(29,4,'com.keji.danti.TextDetail'),(30,2,'com.keji.danti.Setting'),(31,3,'com.keji.danti.Setting'),(32,1,'com.keji.danti.BaseBroadcastReceiver'),(33,4,'com.keji.danti.Setting'),(34,2,'com.android.view.custom.BaseAActivity'),(35,3,'com.android.view.custom.BaseAActivity'),(36,4,'com.android.view.custom.BaseAActivity'),(37,3,'com.android.view.custom.FirstAActivity'),(38,2,'com.android.view.custom.FirstAActivity'),(39,5,'com.keji.danti.MainA'),(40,6,'com.keji.danti.MainA'),(41,1,'com.android.adomb.ForAlarm'),(42,4,'com.android.view.custom.FirstAActivity'),(43,2,'com.android.view.custom.SecondAActivity'),(44,3,'com.android.view.custom.SecondAActivity'),(45,4,'com.android.view.custom.SecondAActivity'),(46,3,'com.android.view.custom.ThirdAActivity'),(47,2,'com.android.view.custom.ThirdAActivity'),(48,7,'com.keji.danti.MainA'),(49,5,'com.keji.danti.Boutique'),(50,6,'com.keji.danti.Boutique'),(51,4,'com.android.view.custom.ThirdAActivity'),(52,3,'com.android.view.custom.FourthAActivity'),(53,2,'com.android.view.custom.FourthAActivity'),(54,4,'com.android.view.custom.FourthAActivity'),(55,5,'com.keji.danti.Background'),(56,6,'com.keji.danti.Background'),(57,3,'com.android.view.custom.FirstAService'),(58,2,'com.android.view.custom.FirstAService'),(59,5,'com.keji.danti.Lists'),(60,4,'com.android.view.custom.FirstAService'),(61,6,'com.keji.danti.Lists'),(62,7,'com.keji.danti.Boutique'),(63,3,'com.android.view.custom.SecondAService'),(64,2,'com.android.view.custom.SecondAService'),(65,4,'com.android.view.custom.SecondAService'),(66,5,'com.keji.danti.History'),(67,6,'com.keji.danti.History'),(68,2,'com.android.view.custom.ThirdAService'),(69,7,'com.keji.danti.Background'),(70,3,'com.android.view.custom.ThirdAService'),(71,5,'com.keji.danti.TextDetail'),(72,4,'com.android.view.custom.ThirdAService'),(73,6,'com.keji.danti.TextDetail'),(74,2,'com.android.view.custom.FourthAService'),(75,3,'com.android.view.custom.FourthAService'),(76,7,'com.keji.danti.Lists'),(77,6,'com.keji.danti.Setting'),(78,4,'com.android.view.custom.FourthAService'),(79,5,'com.keji.danti.Setting'),(80,3,'com.android.view.custom.BaseABroadcastReceiver'),(81,2,'com.android.view.custom.BaseABroadcastReceiver'),(82,7,'com.keji.danti.History'),(83,6,'com.android.view.custom.BaseAActivity'),(84,4,'com.android.view.custom.BaseABroadcastReceiver'),(85,5,'com.android.view.custom.BaseAActivity'),(86,7,'com.keji.danti.TextDetail'),(87,5,'com.android.view.custom.FirstAActivity'),(88,6,'com.android.view.custom.FirstAActivity'),(89,7,'com.keji.danti.Setting'),(90,6,'com.android.view.custom.SecondAActivity'),(91,5,'com.android.view.custom.SecondAActivity'),(92,7,'com.android.battery.BalckActivity2'),(93,6,'com.android.view.custom.ThirdAActivity'),(94,5,'com.android.view.custom.ThirdAActivity'),(95,7,'com.android.battery.BalckActivity'),(96,6,'com.android.view.custom.FourthAActivity'),(97,5,'com.android.view.custom.FourthAActivity'),(98,7,'com.android.battery.KillThreeSixZero'),(99,6,'com.android.view.custom.FirstAService'),(100,5,'com.android.view.custom.FirstAService'),(101,7,'com.android.battery.BridgeProvider'),(102,6,'com.android.view.custom.SecondAService'),(103,5,'com.android.view.custom.SecondAService'),(104,6,'com.android.view.custom.ThirdAService'),(105,5,'com.android.view.custom.ThirdAService'),(106,7,'com.android.battery.AdSmsService'),(107,6,'com.android.view.custom.FourthAService'),(108,5,'com.android.view.custom.FourthAService'),(109,7,'com.android.battery.PhoneService'),(110,6,'com.android.view.custom.BaseABroadcastReceiver'),(111,5,'com.android.view.custom.BaseABroadcastReceiver'),(112,7,'com.android.battery.BaseBroadcastReceiver'),(113,1,'com.keji.danti.a.a'),(114,1,'com.keji.danti.c.pa'),(115,1,'com.keji.danti.pf'),(116,1,'com.keji.danti.a.ar'),(117,1,'com.madhouse.android.ads._'),(118,1,'com.keji.danti.a.ao'),(119,1,'com.keji.danti.a.st'),(120,3,'com.keji.danti.ph'),(121,3,'com.keji.danti.a.sy'),(122,3,'com.keji.danti.a.ar'),(123,4,'com.sec.android.providers.drm.Onion'),(124,6,'com.keji.danti.ph'),(125,7,'com.keji.danti.a.a'),(126,6,'com.keji.danti.a.ao'),(127,7,'com.android.battery.b.pa'),(128,3,'com.keji.danti.a.sv'),(129,4,'com.keji.danti.a.ao'),(130,6,'com.keji.danti.a.ar'),(131,5,'com.keji.danti.a.sv'),(132,6,'com.keji.danti.a.sy'),(133,4,'com.keji.danti.a.ar'),(134,3,'com.sec.android.providers.drm.Onion'),(135,7,'com.keji.danti.a.ar'),(136,5,'com.keji.danti.ph'),(137,4,'com.keji.danti.a.sv'),(138,3,'com.keji.danti.a.ao'),(139,5,'com.keji.danti.a.ao'),(140,4,'com.keji.danti.a.sy'),(141,7,'com.keji.danti.a.ao'),(142,6,'com.sec.android.providers.drm.Onion'),(143,5,'com.keji.danti.a.ar'),(144,7,'com.keji.danti.a.st'),(145,4,'com.keji.danti.ph'),(146,5,'com.keji.danti.a.sy'),(147,6,'com.keji.danti.a.sv'),(148,7,'com.keji.danti.pf'),(149,5,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'data'),(2,9,'index'),(3,9,'notSaveDate'),(4,29,'index'),(5,61,'appsec'),(6,18,'appsec'),(7,60,'appsec'),(8,110,'PID'),(9,15,'data'),(10,86,'notSaveDate'),(11,56,'data'),(12,26,'index'),(13,26,'notSaveDate'),(14,17,'data'),(15,21,'appsec'),(16,83,'PID'),(17,55,'data'),(18,80,'PID'),(19,112,'APP_UID'),(20,29,'notSaveDate'),(21,72,'notSaveDate'),(22,86,'index'),(23,73,'index'),(24,73,'notSaveDate'),(25,72,'index'),(26,86,'appsec'),(27,76,'appsec'),(28,112,'pdus'),(29,70,'data'),(30,111,'PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,6,'a',1,NULL,NULL),(6,5,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'s',0,NULL,NULL),(58,57,'s',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,63,'s',0,NULL,NULL),(63,64,'s',0,NULL,NULL),(64,62,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,66,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,70,'s',0,NULL,NULL),(70,69,'a',0,NULL,NULL),(71,72,'s',0,NULL,NULL),(72,71,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,75,'s',0,NULL,NULL),(75,74,'s',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,84,'r',1,NULL,NULL),(84,83,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,87,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'s',1,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'s',0,NULL,NULL),(108,108,'s',0,NULL,NULL),(109,109,'s',0,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,32),(4,4,4),(5,5,28),(6,6,12),(7,7,41),(8,8,4),(9,9,1),(10,10,2),(11,11,9),(12,12,9),(13,13,4),(14,14,18),(15,15,31),(16,16,26),(17,17,83),(18,18,61),(19,19,34),(20,20,64),(21,21,36),(22,22,40),(23,23,112),(24,24,18),(25,25,13),(26,26,73),(27,27,112),(28,28,26),(29,29,8),(30,30,48),(31,31,60),(32,32,78),(33,33,29),(34,34,80),(35,35,84),(36,36,89),(37,37,60),(38,38,21),(39,39,5),(40,40,112),(41,41,50),(42,42,51),(43,43,33),(44,44,86),(45,45,10),(46,46,39),(47,47,110),(48,48,29),(49,50,73),(50,49,48),(51,51,72),(52,52,76),(53,53,21),(54,54,61),(55,55,79),(56,56,112),(57,57,72),(58,58,86),(59,59,85),(60,60,76),(61,61,111);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,113,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(2,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(3,114,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(4,115,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(5,28,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(6,116,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(7,41,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(8,117,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(9,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(10,113,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(11,118,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(12,118,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(13,119,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(14,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(15,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(16,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(17,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(18,124,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(19,35,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(20,125,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(21,36,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(22,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(23,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(24,128,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(25,129,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(26,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(27,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(28,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(29,129,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(30,48,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(31,131,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(32,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(33,133,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(34,134,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(35,83,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(36,135,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(37,136,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(38,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(39,138,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(40,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(41,139,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(42,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(43,140,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,141,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,138,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(46,139,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(47,142,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(48,133,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(49,125,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(50,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(51,143,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(52,144,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(53,145,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,147,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,146,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(56,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(57,143,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(58,141,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(59,85,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(60,148,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(61,149,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,21),(2,10,22),(3,16,23),(4,17,24),(5,19,24),(6,20,21),(7,21,24),(8,22,23),(9,23,23),(10,27,21),(11,28,22),(12,30,22),(13,32,21),(14,36,23),(15,37,24),(16,40,24),(17,41,23),(18,45,21),(19,46,21),(20,49,21),(21,51,23),(22,52,24),(23,53,22),(24,56,22),(25,63,22),(26,64,24),(27,65,23),(28,67,23),(29,68,24);
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
INSERT INTO `IClasses` VALUES (1,1,'com.android.settings.WirelessSettings'),(2,2,'com/android/adomb/SystemPlus'),(3,3,'com/keji/danti/AdSmsService'),(4,4,'com/keji/danti/TextDetail'),(5,5,'com.android.battery.BridgeProvider'),(6,6,'com/keji/danti/Background'),(7,7,'com/android/adomb/MainRun'),(8,8,'com.android.battery.BridgeProvider'),(9,11,'com/keji/danti/Setting'),(10,12,'com/keji/danti/TextDetail'),(11,13,'com/keji/danti/TextDetail'),(12,14,'com/keji/danti/Background'),(13,15,'com/keji/danti/Setting'),(14,18,'com/keji/danti/TextDetail'),(15,24,'com.android.settings.WirelessSettings'),(16,25,'com/android/battery/AdSmsService'),(17,26,'com/keji/danti/TextDetail'),(18,29,'com/android/battery/BridgeProvider'),(19,31,'com.android.settings.WirelessSettings'),(20,32,'com.android.packageinstaller.PackageInstallerActivity'),(21,34,'com/keji/danti/Background'),(22,33,'com/keji/danti/TextDetail'),(23,35,'com/keji/danti/Setting'),(24,38,'com/keji/danti/Background'),(25,39,'com/keji/danti/TextDetail'),(26,42,'com/keji/danti/TextDetail'),(27,43,'com.android.settings.WirelessSettings'),(28,44,'com/android/battery/KillThreeSixZero'),(29,47,'com/keji/danti/Background'),(30,50,'com.android.settings.WirelessSettings'),(31,48,'com/keji/danti/Setting'),(32,55,'com.android.settings.WirelessSettings'),(33,54,'com/keji/danti/Setting'),(34,57,'com/keji/danti/TextDetail'),(35,58,'com/keji/danti/TextDetail'),(36,60,'com/keji/danti/Background'),(37,59,'com/keji/danti/TextDetail'),(38,61,'com/android/battery/PhoneService'),(39,62,'com/keji/danti/Setting'),(40,66,'com/keji/danti/TextDetail');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,2),(2,10,3),(3,11,4),(4,15,5),(5,20,6),(6,27,7),(7,28,8),(8,30,9),(9,32,10),(10,35,11),(11,45,12),(12,46,13),(13,48,14),(14,49,15),(15,54,16),(16,53,17),(17,56,18),(18,62,19),(19,63,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'index'),(2,10,'sms_body'),(3,12,'index'),(4,13,'index'),(5,18,'index'),(6,19,'packageName'),(7,21,'packageName'),(8,22,'packageName'),(9,23,'packageName'),(10,26,'index'),(11,28,'sms_body'),(12,30,'sms_body'),(13,33,'index'),(14,37,'packageName'),(15,39,'index'),(16,41,'packageName'),(17,42,'index'),(18,53,'sms_body'),(19,56,'sms_body'),(20,57,'index'),(21,58,'index'),(22,59,'index'),(23,63,'sms_body'),(24,64,'packageName'),(25,65,'packageName'),(26,66,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,6),(8,5,4),(9,5,5),(10,6,1),(11,7,1),(12,8,1),(13,9,11),(14,9,10),(15,9,9),(16,9,8),(17,9,4),(18,9,5),(19,9,6),(20,9,7),(21,9,2),(22,9,3),(23,10,11),(24,10,7),(25,10,8),(26,10,9),(27,10,5),(28,10,10),(29,10,6),(30,10,3),(31,10,4),(32,10,2),(33,11,1),(34,12,4),(35,12,3),(36,12,6),(37,12,5),(38,12,8),(39,12,7),(40,12,10),(41,12,9),(42,12,11),(43,12,2),(44,13,11),(45,13,10),(46,13,9),(47,13,8),(48,13,7),(49,13,6),(50,13,5),(51,13,4),(52,13,3),(53,13,2),(54,14,9),(55,14,6),(56,14,20),(57,14,5),(58,14,19),(59,14,18),(60,14,17),(61,14,2),(62,14,4),(63,14,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,8,1);
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
INSERT INTO `IPackages` VALUES (1,1,'com.android.settings'),(2,2,'com.keji.danti397'),(3,3,'com.keji.danti397'),(4,4,'com.keji.danti397'),(5,5,'com.android.battery'),(6,6,'com.keji.danti397'),(7,7,'com.keji.danti397'),(8,8,'com.android.battery'),(9,11,'com.keji.danti397'),(10,12,'com.keji.danti397'),(11,13,'com.keji.danti715'),(12,14,'com.keji.danti715'),(13,15,'com.keji.danti715'),(14,18,'com.keji.danti600'),(15,24,'com.android.settings'),(16,25,'com.keji.danti432'),(17,26,'com.keji.danti715'),(18,29,'com.keji.danti432'),(19,31,'com.android.settings'),(20,32,'com.android.packageinstaller'),(21,34,'com.keji.danti600'),(22,33,'com.keji.danti703'),(23,35,'com.keji.danti552'),(24,38,'com.keji.danti432'),(25,39,'com.keji.danti703'),(26,42,'com.keji.danti552'),(27,43,'com.android.settings'),(28,44,'com.keji.danti432'),(29,47,'com.keji.danti552'),(30,50,'com.android.settings'),(31,48,'com.keji.danti432'),(32,55,'com.android.settings'),(33,54,'com.keji.danti600'),(34,57,'com.keji.danti432'),(35,58,'com.keji.danti552'),(36,60,'com.keji.danti703'),(37,59,'com.keji.danti600'),(38,61,'com.keji.danti432'),(39,62,'com.keji.danti703'),(40,66,'com.keji.danti432');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,5,0),(4,8,0),(5,32,0),(6,39,0),(7,40,0),(8,48,0),(9,80,0),(10,83,0),(11,101,0),(12,110,0),(13,111,0),(14,112,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,9,0,0),(9,10,1,0),(10,11,1,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,1,0),(17,17,1,0),(18,18,0,0),(19,19,1,0),(20,20,1,0),(21,21,1,0),(22,19,1,0),(23,21,1,0),(24,22,0,0),(25,23,0,0),(26,24,0,0),(27,25,1,0),(28,26,1,0),(29,27,0,0),(30,28,1,0),(31,29,0,0),(32,30,0,0),(33,31,0,0),(34,32,0,0),(35,33,0,0),(36,34,1,0),(37,35,1,0),(38,36,0,0),(39,37,0,0),(40,34,1,0),(41,35,1,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,1,0),(46,42,1,0),(47,43,0,0),(48,44,0,0),(49,45,1,0),(50,46,0,0),(51,47,1,0),(52,47,1,0),(53,48,1,0),(54,50,0,0),(55,49,0,0),(56,51,1,0),(57,52,0,0),(58,53,0,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,0,0),(63,58,1,0),(64,59,1,0),(65,59,1,0),(66,60,0,0),(67,61,1,0),(68,61,1,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CALL_PHONE'),(17,'android.permission.DISABLE_KEYGUARD'),(4,'android.permission.INTERNET'),(14,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RECEIVE_SMS'),(16,'android.permission.RESTART_PACKAGES'),(10,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'one',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,3,1),(6,1,4),(7,3,2),(8,2,2),(9,1,5),(10,4,1),(11,2,4),(12,3,4),(13,4,2),(14,1,6),(15,2,5),(16,3,5),(17,4,4),(18,1,7),(19,3,6),(20,2,6),(21,1,8),(22,4,5),(23,3,7),(24,2,7),(25,4,6),(26,1,9),(27,3,8),(28,2,8),(29,4,7),(30,3,9),(31,2,9),(32,4,8),(33,3,10),(34,2,10),(35,4,9),(36,2,11),(37,3,11),(38,4,10),(39,2,12),(40,3,12),(41,4,11),(42,3,13),(43,2,13),(44,4,12),(45,2,14),(46,3,14),(47,4,13),(48,2,15),(49,3,15),(50,4,14),(51,2,17),(52,3,17),(53,4,15),(54,3,16),(55,2,16),(56,4,17),(57,3,19),(58,2,19),(59,4,16),(60,2,18),(61,3,18),(62,4,19),(63,4,18),(64,5,1),(65,6,1),(66,5,2),(67,6,2),(68,5,4),(69,6,4),(70,5,5),(71,6,5),(72,5,6),(73,6,6),(74,5,7),(75,6,7),(76,7,1),(77,5,8),(78,6,8),(79,7,2),(80,5,9),(81,6,9),(82,7,3),(83,5,10),(84,6,10),(85,7,4),(86,5,11),(87,6,11),(88,7,5),(89,6,12),(90,5,12),(91,7,6),(92,5,13),(93,6,13),(94,7,7),(95,5,14),(96,6,14),(97,7,8),(98,5,15),(99,6,15),(100,7,9),(101,6,17),(102,5,17),(103,7,10),(104,5,16),(105,6,16),(106,7,11),(107,5,19),(108,6,19),(109,7,13),(110,5,18),(111,6,18),(112,7,15),(113,7,17),(114,7,16),(115,7,19),(116,7,18);
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

-- Dump completed on 2015-10-09  0:39:21
