-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_29
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(9,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti709',32),(2,'com.keji.danti570',32),(3,'com.keji.danti599',32),(4,'com.keji.danti411',25),(5,'com.keji.danti660',32),(6,'com.keji.danti720',32),(7,'com.keji.danti398',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,4,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,1,'com.keji.danti.MainA'),(4,4,'com.keji.danti.Boutique'),(5,3,'com.keji.danti.MainA'),(6,4,'com.keji.danti.Background'),(7,6,'com.keji.danti.MainA'),(8,5,'com.keji.danti.MainA'),(9,2,'com.keji.danti.Boutique'),(10,1,'com.keji.danti.Boutique'),(11,4,'com.keji.danti.Lists'),(12,2,'com.keji.danti.Background'),(13,3,'com.keji.danti.Boutique'),(14,1,'com.keji.danti.Background'),(15,4,'com.keji.danti.History'),(16,6,'com.keji.danti.Boutique'),(17,5,'com.keji.danti.Boutique'),(18,2,'com.keji.danti.Lists'),(19,3,'com.keji.danti.Background'),(20,4,'com.keji.danti.TextDetail'),(21,1,'com.keji.danti.Lists'),(22,2,'com.keji.danti.History'),(23,6,'com.keji.danti.Background'),(24,5,'com.keji.danti.Background'),(25,1,'com.keji.danti.History'),(26,3,'com.keji.danti.Lists'),(27,4,'com.keji.danti.Setting'),(28,2,'com.keji.danti.TextDetail'),(29,5,'com.keji.danti.Lists'),(30,6,'com.keji.danti.Lists'),(31,1,'com.keji.danti.TextDetail'),(32,3,'com.keji.danti.History'),(33,4,'com.keji.danti.AdSmsService'),(34,2,'com.keji.danti.Setting'),(35,6,'com.keji.danti.History'),(36,5,'com.keji.danti.History'),(37,1,'com.keji.danti.Setting'),(38,3,'com.keji.danti.TextDetail'),(39,4,'com.android.adomb.AdSmsService'),(40,5,'com.keji.danti.TextDetail'),(41,2,'com.android.view.custom.BaseAActivity'),(42,6,'com.keji.danti.TextDetail'),(43,4,'com.android.adomb.SystemPlus'),(44,1,'com.android.view.custom.BaseAActivity'),(45,3,'com.keji.danti.Setting'),(46,6,'com.keji.danti.Setting'),(47,5,'com.keji.danti.Setting'),(48,2,'com.android.view.custom.FirstAActivity'),(49,3,'com.android.view.custom.BaseAActivity'),(50,4,'com.android.adomb.MainRun'),(51,1,'com.android.view.custom.FirstAActivity'),(52,6,'com.android.view.custom.BaseAActivity'),(53,2,'com.android.view.custom.SecondAActivity'),(54,5,'com.android.view.custom.BaseAActivity'),(55,4,'com.keji.danti.BaseBroadcastReceiver'),(56,3,'com.android.view.custom.FirstAActivity'),(57,1,'com.android.view.custom.SecondAActivity'),(58,2,'com.android.view.custom.ThirdAActivity'),(59,5,'com.android.view.custom.FirstAActivity'),(60,6,'com.android.view.custom.FirstAActivity'),(61,1,'com.android.view.custom.ThirdAActivity'),(62,3,'com.android.view.custom.SecondAActivity'),(63,5,'com.android.view.custom.SecondAActivity'),(64,6,'com.android.view.custom.SecondAActivity'),(65,2,'com.android.view.custom.FourthAActivity'),(66,1,'com.android.view.custom.FourthAActivity'),(67,3,'com.android.view.custom.ThirdAActivity'),(68,4,'com.android.adomb.ForAlarm'),(69,6,'com.android.view.custom.ThirdAActivity'),(70,5,'com.android.view.custom.ThirdAActivity'),(71,2,'com.android.view.custom.FirstAService'),(72,3,'com.android.view.custom.FourthAActivity'),(73,1,'com.android.view.custom.FirstAService'),(74,2,'com.android.view.custom.SecondAService'),(75,6,'com.android.view.custom.FourthAActivity'),(76,5,'com.android.view.custom.FourthAActivity'),(77,3,'com.android.view.custom.FirstAService'),(78,1,'com.android.view.custom.SecondAService'),(79,2,'com.android.view.custom.ThirdAService'),(80,5,'com.android.view.custom.FirstAService'),(81,6,'com.android.view.custom.FirstAService'),(82,1,'com.android.view.custom.ThirdAService'),(83,3,'com.android.view.custom.SecondAService'),(84,7,'com.keji.danti.MainA'),(85,6,'com.android.view.custom.SecondAService'),(86,2,'com.android.view.custom.FourthAService'),(87,5,'com.android.view.custom.SecondAService'),(88,3,'com.android.view.custom.ThirdAService'),(89,1,'com.android.view.custom.FourthAService'),(90,5,'com.android.view.custom.ThirdAService'),(91,6,'com.android.view.custom.ThirdAService'),(92,2,'com.android.view.custom.BaseABroadcastReceiver'),(93,1,'com.android.view.custom.BaseABroadcastReceiver'),(94,3,'com.android.view.custom.FourthAService'),(95,7,'com.keji.danti.Boutique'),(96,6,'com.android.view.custom.FourthAService'),(97,5,'com.android.view.custom.FourthAService'),(98,3,'com.android.view.custom.BaseABroadcastReceiver'),(99,7,'com.keji.danti.Background'),(100,5,'com.android.view.custom.BaseABroadcastReceiver'),(101,6,'com.android.view.custom.BaseABroadcastReceiver'),(102,7,'com.keji.danti.Lists'),(103,7,'com.keji.danti.History'),(104,7,'com.keji.danti.TextDetail'),(105,7,'com.keji.danti.Setting'),(106,7,'com.android.battery.BalckActivity2'),(107,7,'com.android.battery.BalckActivity'),(108,7,'com.android.battery.KillThreeSixZero'),(109,7,'com.android.battery.BridgeProvider'),(110,7,'com.android.battery.AdSmsService'),(111,7,'com.android.battery.PhoneService'),(112,7,'com.android.battery.BaseBroadcastReceiver'),(113,4,'com.keji.danti.a.ao'),(114,4,'com.keji.danti.a.a'),(115,4,'com.madhouse.android.ads._'),(116,4,'com.keji.danti.c.pa'),(117,3,'com.keji.danti.a.sy'),(118,3,'com.keji.danti.ph'),(119,5,'com.keji.danti.a.sv'),(120,6,'com.keji.danti.a.ar'),(121,4,'com.keji.danti.a.st'),(122,3,'com.keji.danti.a.ar'),(123,1,'com.keji.danti.a.sy'),(124,5,'com.keji.danti.ph'),(125,4,'com.keji.danti.pf'),(126,3,'com.keji.danti.a.ao'),(127,1,'com.keji.danti.ph'),(128,6,'com.sec.android.providers.drm.Onion'),(129,7,'com.keji.danti.a.a'),(130,5,'com.keji.danti.a.ao'),(131,6,'com.keji.danti.a.ao'),(132,1,'com.keji.danti.a.ar'),(133,7,'com.keji.danti.a.st'),(134,5,'com.sec.android.providers.drm.Onion'),(135,2,'com.keji.danti.a.ar'),(136,4,'com.keji.danti.a.ar'),(137,7,'com.keji.danti.a.ao'),(138,1,'com.keji.danti.a.ao'),(139,5,'com.keji.danti.a.sy'),(140,2,'com.keji.danti.a.ao'),(141,7,'com.android.battery.b.pa'),(142,5,'com.keji.danti.a.ar'),(143,2,'com.keji.danti.a.sy'),(144,1,'com.keji.danti.a.sv'),(145,3,'com.sec.android.providers.drm.Onion'),(146,2,'com.sec.android.providers.drm.Onion'),(147,6,'com.keji.danti.a.sy'),(148,3,'com.keji.danti.a.sv'),(149,1,'com.sec.android.providers.drm.Onion'),(150,6,'com.keji.danti.a.sv'),(151,6,'com.keji.danti.ph'),(152,2,'com.keji.danti.ph'),(153,7,'com.keji.danti.pf'),(154,2,'com.keji.danti.a.sv'),(155,7,'com.keji.danti.a.ar');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'data'),(2,21,'notSaveDate'),(3,29,'appsec'),(4,40,'index'),(5,38,'index'),(6,19,'data'),(7,93,'PID'),(8,100,'PID'),(9,23,'data'),(10,21,'index'),(11,41,'notSaveDate'),(12,28,'appsec'),(13,31,'index'),(14,91,'PID'),(15,40,'notSaveDate'),(16,25,'appsec'),(17,101,'PID'),(18,98,'PID'),(19,38,'notSaveDate'),(20,30,'index'),(21,24,'data'),(22,104,'notSaveDate'),(23,112,'APP_UID'),(24,104,'index'),(25,15,'data'),(26,31,'notSaveDate'),(27,12,'data'),(28,20,'appsec'),(29,17,'appsec'),(30,112,'pdus'),(31,41,'index'),(32,30,'notSaveDate'),(33,99,'data'),(34,104,'appsec'),(35,102,'appsec');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,11,'a',0,NULL,NULL),(11,10,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,28,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,48,'a',0,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,63,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,66,'a',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,73,'s',0,NULL,NULL),(73,72,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,77,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,81,'s',0,NULL,NULL),(81,80,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,87,'s',0,NULL,NULL),(86,85,'s',0,NULL,NULL),(87,86,'s',0,NULL,NULL),(88,89,'s',0,NULL,NULL),(89,88,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,92,'r',1,NULL,NULL),(92,91,'s',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'r',1,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,101,'r',1,NULL,NULL),(101,100,'r',1,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'s',1,NULL,NULL),(110,110,'s',0,NULL,NULL),(111,111,'s',0,NULL,NULL),(112,112,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,50),(2,2,21),(3,3,1),(4,4,10),(5,5,55),(6,6,1),(7,7,4),(8,8,45),(9,9,54),(10,10,21),(11,11,25),(12,12,68),(13,13,29),(14,14,41),(15,15,10),(16,16,38),(17,17,37),(18,18,29),(19,19,10),(20,20,14),(21,21,20),(22,22,100),(23,23,95),(24,24,18),(25,25,1),(26,26,49),(27,27,31),(28,28,7),(29,29,102),(30,30,101),(31,31,30),(32,32,27),(33,33,16),(34,34,38),(35,36,3),(36,35,104),(37,37,48),(38,38,41),(39,39,9),(40,40,44),(41,41,5),(42,42,112),(43,43,40),(44,44,52),(45,45,35),(46,46,112),(47,48,98),(48,47,20),(49,49,91),(50,50,8),(51,51,47),(52,54,84),(53,53,93),(54,52,25),(55,55,40),(56,56,2),(57,57,28),(58,58,84),(59,59,42),(60,60,31),(61,61,28),(62,62,112),(63,63,11),(64,64,17),(65,65,102),(66,66,30),(67,67,104),(68,68,17),(69,69,105),(70,70,112);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,50,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(2,113,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(3,114,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(4,115,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(5,116,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(7,114,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(8,117,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,54,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(10,113,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(11,118,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(12,68,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(13,119,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(14,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,121,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(16,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(17,123,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(18,124,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(19,125,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(20,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(21,127,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(22,128,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(23,129,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(24,130,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(25,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(26,49,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(27,132,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(28,131,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,133,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(30,134,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,135,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(32,136,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(33,131,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(35,137,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(36,138,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(37,139,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(38,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(39,140,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(40,44,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(42,141,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(43,142,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(44,52,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(45,143,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(46,141,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(47,144,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(48,145,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(49,146,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(50,130,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(51,147,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,148,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(53,149,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(54,84,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(55,142,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(56,140,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(57,150,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(58,129,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(59,41,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(60,132,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(61,151,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(62,141,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(63,138,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(64,152,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(65,153,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(66,135,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(67,137,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(68,154,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(69,155,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(70,141,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,16),(2,6,17),(3,9,18),(4,11,19),(5,21,17),(6,22,19),(7,23,17),(8,24,17),(9,25,18),(10,27,18),(11,31,19),(12,32,19),(13,33,16),(14,35,18),(15,36,17),(16,37,16),(17,39,16),(18,41,16),(19,42,17),(20,43,18),(21,46,19),(22,48,18),(23,50,19),(24,53,19),(25,54,18),(26,56,19),(27,58,18),(28,60,17),(29,61,19),(30,62,16),(31,64,18),(32,67,18),(33,68,16),(34,70,19),(35,72,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.android.battery.BridgeProvider'),(2,3,'com.android.settings.WirelessSettings'),(3,4,'com/keji/danti/AdSmsService'),(4,5,'com/android/adomb/SystemPlus'),(5,7,'com/keji/danti/Background'),(6,8,'com/keji/danti/Setting'),(7,10,'com/keji/danti/TextDetail'),(8,12,'com/android/adomb/MainRun'),(9,13,'com/keji/danti/TextDetail'),(10,14,'com/keji/danti/Setting'),(11,15,'com/keji/danti/TextDetail'),(12,16,'com/keji/danti/Setting'),(13,17,'com/keji/danti/Background'),(14,18,'com/keji/danti/TextDetail'),(15,19,'com/keji/danti/TextDetail'),(16,20,'com/keji/danti/TextDetail'),(17,26,'com.android.battery.BridgeProvider'),(18,29,'com.android.settings.WirelessSettings'),(19,28,'com/keji/danti/Setting'),(20,30,'com/keji/danti/TextDetail'),(21,34,'com/keji/danti/Background'),(22,38,'com.android.settings.WirelessSettings'),(23,40,'com/keji/danti/Background'),(24,44,'com.android.settings.WirelessSettings'),(25,45,'com/android/battery/KillThreeSixZero'),(26,49,'com/keji/danti/Background'),(27,47,'com/keji/danti/Setting'),(28,51,'com/android/battery/BridgeProvider'),(29,52,'com/keji/danti/TextDetail'),(30,55,'com.android.settings.WirelessSettings'),(31,57,'com/keji/danti/Background'),(32,59,'com/keji/danti/TextDetail'),(33,63,'com.android.settings.WirelessSettings'),(34,60,'com.android.packageinstaller.PackageInstallerActivity'),(35,65,'com/keji/danti/TextDetail'),(36,66,'com.android.settings.WirelessSettings'),(37,69,'com/keji/danti/TextDetail'),(38,71,'com/android/battery/AdSmsService'),(39,73,'com/keji/danti/TextDetail'),(40,74,'com/keji/danti/TextDetail'),(41,75,'com/keji/danti/Setting'),(42,76,'com/keji/danti/Setting'),(43,78,'com/keji/danti/Background'),(44,77,'com/keji/danti/TextDetail'),(45,79,'com/android/battery/PhoneService');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,6,3),(3,8,4),(4,14,5),(5,16,6),(6,21,7),(7,23,8),(8,24,9),(9,28,10),(10,33,11),(11,36,12),(12,37,13),(13,39,14),(14,42,15),(15,41,16),(16,47,17),(17,60,18),(18,62,19),(19,68,20),(20,72,21),(21,75,22),(22,76,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'sms_body'),(2,9,'packageName'),(3,10,'index'),(4,11,'packageName'),(5,13,'index'),(6,15,'index'),(7,18,'index'),(8,19,'index'),(9,20,'index'),(10,27,'packageName'),(11,30,'index'),(12,31,'packageName'),(13,33,'sms_body'),(14,37,'sms_body'),(15,39,'sms_body'),(16,41,'sms_body'),(17,43,'packageName'),(18,46,'packageName'),(19,48,'packageName'),(20,50,'packageName'),(21,52,'index'),(22,59,'index'),(23,62,'sms_body'),(24,65,'index'),(25,67,'packageName'),(26,68,'sms_body'),(27,69,'index'),(28,70,'packageName'),(29,73,'index'),(30,74,'index'),(31,77,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,6),(8,7,2),(9,7,3),(10,7,4),(11,7,5),(12,8,1),(13,9,11),(14,9,10),(15,9,9),(16,9,8),(17,9,4),(18,9,5),(19,9,6),(20,9,7),(21,9,2),(22,9,3),(23,10,11),(24,10,7),(25,10,8),(26,10,9),(27,10,5),(28,10,10),(29,10,6),(30,10,3),(31,10,4),(32,10,2),(33,11,5),(34,11,4),(35,11,3),(36,11,2),(37,11,9),(38,11,8),(39,11,7),(40,11,6),(41,11,10),(42,11,11),(43,13,11),(44,13,10),(45,13,9),(46,13,8),(47,13,7),(48,13,6),(49,13,5),(50,13,4),(51,13,3),(52,13,2),(53,12,4),(54,12,3),(55,12,6),(56,12,5),(57,12,8),(58,12,7),(59,12,10),(60,12,9),(61,12,11),(62,12,2),(63,14,1),(64,15,15),(65,15,14),(66,15,4),(67,15,5),(68,15,2),(69,15,3),(70,15,9),(71,15,6),(72,15,12),(73,15,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.battery'),(2,3,'com.android.settings'),(3,4,'com.keji.danti411'),(4,5,'com.keji.danti411'),(5,7,'com.keji.danti599'),(6,8,'com.keji.danti411'),(7,10,'com.keji.danti599'),(8,12,'com.keji.danti411'),(9,13,'com.keji.danti660'),(10,14,'com.keji.danti720'),(11,15,'com.keji.danti411'),(12,16,'com.keji.danti599'),(13,17,'com.keji.danti709'),(14,18,'com.keji.danti660'),(15,19,'com.keji.danti411'),(16,20,'com.keji.danti709'),(17,26,'com.android.battery'),(18,29,'com.android.settings'),(19,28,'com.keji.danti709'),(20,30,'com.keji.danti398'),(21,34,'com.keji.danti411'),(22,38,'com.android.settings'),(23,40,'com.keji.danti660'),(24,44,'com.android.settings'),(25,45,'com.keji.danti398'),(26,49,'com.keji.danti570'),(27,47,'com.keji.danti660'),(28,51,'com.keji.danti398'),(29,52,'com.keji.danti709'),(30,55,'com.android.settings'),(31,57,'com.keji.danti720'),(32,59,'com.keji.danti599'),(33,63,'com.android.settings'),(34,60,'com.android.packageinstaller'),(35,65,'com.keji.danti720'),(36,66,'com.android.settings'),(37,69,'com.keji.danti720'),(38,71,'com.keji.danti398'),(39,73,'com.keji.danti570'),(40,74,'com.keji.danti398'),(41,75,'com.keji.danti570'),(42,76,'com.keji.danti398'),(43,78,'com.keji.danti398'),(44,77,'com.keji.danti570'),(45,79,'com.keji.danti398');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,7,0),(6,8,0),(7,55,0),(8,84,0),(9,93,0),(10,91,0),(11,98,0),(12,100,0),(13,101,0),(14,109,0),(15,112,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,5,0,0),(5,6,0,0),(6,7,1,0),(7,8,0,0),(8,10,0,0),(9,9,1,0),(10,11,0,0),(11,9,1,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,21,0,0),(21,20,1,0),(22,22,1,0),(23,23,1,0),(24,24,1,0),(25,22,1,0),(26,25,0,0),(27,26,1,0),(28,27,0,0),(29,28,0,0),(30,29,0,0),(31,26,1,0),(32,30,1,0),(33,31,1,0),(34,32,0,0),(35,30,1,0),(36,33,1,0),(37,34,1,0),(38,36,0,0),(39,35,1,0),(40,37,0,0),(41,38,1,0),(42,39,1,0),(43,40,1,0),(44,41,0,0),(45,42,0,0),(46,40,1,0),(47,43,0,0),(48,44,1,0),(49,45,0,0),(50,44,1,0),(51,46,0,0),(52,47,0,0),(53,48,1,0),(54,48,1,0),(55,50,0,0),(56,49,1,0),(57,51,0,0),(58,49,1,0),(59,52,0,0),(60,54,0,0),(61,53,1,0),(62,55,1,0),(63,56,0,0),(64,53,1,0),(65,57,0,0),(66,58,0,0),(67,59,1,0),(68,60,1,0),(69,61,0,0),(70,59,1,0),(71,62,0,0),(72,63,1,0),(73,64,0,0),(74,65,0,0),(75,66,0,0),(76,67,0,0),(77,68,0,0),(78,69,0,0),(79,70,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,43,84,2,NULL),(2,46,84,2,NULL),(3,67,84,2,NULL),(4,70,84,2,NULL),(5,27,84,2,NULL),(6,31,84,2,NULL),(7,9,84,2,NULL),(8,11,84,2,NULL),(9,48,84,2,NULL),(10,50,84,2,NULL),(11,43,109,2,NULL),(12,46,109,2,NULL),(13,67,109,2,NULL),(14,70,109,2,NULL),(15,27,109,2,NULL),(16,31,109,2,NULL),(17,9,109,2,NULL),(18,11,109,2,NULL),(19,48,109,2,NULL),(20,50,109,2,NULL),(21,43,112,2,NULL),(22,46,112,2,NULL),(23,67,112,2,NULL),(24,70,112,2,NULL),(25,27,112,2,NULL),(26,31,112,2,NULL),(27,9,112,2,NULL),(28,11,112,2,NULL),(29,48,112,2,NULL),(30,50,112,2,NULL),(31,43,7,2,NULL),(32,43,3,2,NULL),(33,46,7,2,NULL),(34,46,3,2,NULL),(35,67,7,2,NULL),(36,67,3,2,NULL),(37,70,7,2,NULL),(38,70,3,2,NULL),(39,27,7,2,NULL),(40,27,3,2,NULL),(41,31,7,2,NULL),(42,31,3,2,NULL),(43,9,7,2,NULL),(44,9,3,2,NULL),(45,11,7,2,NULL),(46,11,3,2,NULL),(47,48,7,2,NULL),(48,48,3,2,NULL),(49,50,7,2,NULL),(50,50,3,2,NULL),(51,48,93,2,NULL),(52,43,93,2,NULL),(53,50,93,2,NULL),(54,46,93,2,NULL),(55,48,2,2,NULL),(56,43,2,2,NULL),(57,50,2,2,NULL),(58,46,2,2,NULL),(59,48,91,2,NULL),(60,43,91,2,NULL),(61,50,91,2,NULL),(62,46,91,2,NULL),(63,48,5,2,NULL),(64,43,5,2,NULL),(65,50,5,2,NULL),(66,46,5,2,NULL),(67,48,98,2,NULL),(68,43,98,2,NULL),(69,50,98,2,NULL),(70,46,98,2,NULL),(71,48,1,2,NULL),(72,43,1,2,NULL),(73,50,1,2,NULL),(74,46,1,2,NULL),(75,48,55,2,NULL),(76,43,55,2,NULL),(77,50,55,2,NULL),(78,46,55,2,NULL),(79,48,8,2,NULL),(80,43,8,2,NULL),(81,50,8,2,NULL),(82,46,8,2,NULL),(83,48,101,2,NULL),(84,43,101,2,NULL),(85,50,101,2,NULL),(86,46,101,2,NULL),(87,48,100,2,NULL),(88,43,100,2,NULL),(89,50,100,2,NULL),(90,46,100,2,NULL),(91,67,100,2,NULL),(92,67,93,2,NULL),(93,70,100,2,NULL),(94,70,93,2,NULL),(95,27,100,2,NULL),(96,27,93,2,NULL),(97,31,100,2,NULL),(98,31,93,2,NULL),(99,9,100,2,NULL),(100,9,93,2,NULL),(101,11,100,2,NULL),(102,11,93,2,NULL),(103,5,43,2,NULL),(104,67,5,2,NULL),(105,26,109,2,NULL),(106,70,5,2,NULL),(107,67,1,2,NULL),(108,27,5,2,NULL),(109,70,1,2,NULL),(110,31,5,2,NULL),(111,27,1,2,NULL),(112,9,5,2,NULL),(113,31,1,2,NULL),(114,11,5,2,NULL),(115,9,1,2,NULL),(116,27,2,2,NULL),(117,11,1,2,NULL),(118,31,2,2,NULL),(119,1,109,2,NULL),(120,27,91,2,NULL),(121,67,55,2,NULL),(122,31,91,2,NULL),(123,70,55,2,NULL),(124,27,98,2,NULL),(125,27,55,2,NULL),(126,31,98,2,NULL),(127,31,55,2,NULL),(128,27,8,2,NULL),(129,9,55,2,NULL),(130,31,8,2,NULL),(131,11,55,2,NULL),(132,27,101,2,NULL),(133,12,50,2,NULL),(134,31,101,2,NULL),(135,67,98,2,NULL),(136,70,98,2,NULL),(137,9,98,2,NULL),(138,11,98,2,NULL),(139,67,8,2,NULL),(140,67,2,2,NULL),(141,70,8,2,NULL),(142,70,2,2,NULL),(143,9,8,2,NULL),(144,9,2,2,NULL),(145,11,8,2,NULL),(146,11,2,2,NULL),(147,9,91,2,NULL),(148,67,91,2,NULL),(149,11,91,2,NULL),(150,70,91,2,NULL),(151,9,101,2,NULL),(152,67,101,2,NULL),(153,11,101,2,NULL),(154,70,101,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'one',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'one',NULL,NULL,NULL),(23,NULL,NULL,'one',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,2);
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
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,3,1),(8,2,4),(9,1,4),(10,3,2),(11,4,17),(12,2,5),(13,5,1),(14,6,1),(15,3,3),(16,1,5),(17,4,16),(18,5,2),(19,6,2),(20,2,6),(21,3,4),(22,4,19),(23,1,6),(24,6,3),(25,5,3),(26,2,7),(27,1,7),(28,3,5),(29,4,4),(30,5,4),(31,2,8),(32,6,4),(33,1,8),(34,4,5),(35,3,6),(36,2,9),(37,5,5),(38,6,5),(39,1,9),(40,3,7),(41,4,9),(42,2,10),(43,5,6),(44,6,6),(45,3,8),(46,1,10),(47,4,12),(48,2,11),(49,5,7),(50,6,7),(51,3,9),(52,4,13),(53,1,11),(54,2,12),(55,5,8),(56,6,8),(57,4,15),(58,3,10),(59,1,12),(60,5,9),(61,6,9),(62,2,13),(63,3,11),(64,1,13),(65,6,10),(66,5,10),(67,2,14),(68,3,12),(69,1,14),(70,6,11),(71,5,11),(72,2,15),(73,1,15),(74,3,13),(75,5,12),(76,6,12),(77,2,17),(78,1,17),(79,3,14),(80,2,16),(81,5,13),(82,6,13),(83,1,16),(84,3,15),(85,2,18),(86,5,14),(87,6,14),(88,1,18),(89,3,17),(90,5,15),(91,6,15),(92,3,16),(93,6,17),(94,5,17),(95,3,18),(96,5,16),(97,6,16),(98,5,18),(99,6,18),(100,7,1),(101,7,2),(102,7,4),(103,7,5),(104,7,6),(105,7,8),(106,7,9),(107,7,10),(108,7,11),(109,7,12),(110,7,13),(111,7,14),(112,7,15),(113,7,17),(114,7,16),(115,7,19),(116,7,18);
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

-- Dump completed on 2015-10-12  3:29:57
