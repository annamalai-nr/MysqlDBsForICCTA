-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_55
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti399',27),(2,'com.keji.danti683',32),(3,'com.keji.danti675',32),(4,'com.keji.danti719',32),(5,'com.keji.danti699',32),(6,'com.keji.danti619',32),(7,'com.keji.danti427',25);
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
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,3,'com.keji.danti.MainA'),(4,2,'com.keji.danti.Boutique'),(5,1,'com.keji.danti.Boutique'),(6,3,'com.keji.danti.Boutique'),(7,4,'com.keji.danti.MainA'),(8,2,'com.keji.danti.Background'),(9,3,'com.keji.danti.Background'),(10,1,'com.keji.danti.Background'),(11,2,'com.keji.danti.Lists'),(12,1,'com.keji.danti.Lists'),(13,3,'com.keji.danti.Lists'),(14,4,'com.keji.danti.Boutique'),(15,2,'com.keji.danti.History'),(16,5,'com.keji.danti.MainA'),(17,3,'com.keji.danti.History'),(18,1,'com.keji.danti.History'),(19,4,'com.keji.danti.Background'),(20,2,'com.keji.danti.TextDetail'),(21,1,'com.keji.danti.TextDetail'),(22,3,'com.keji.danti.TextDetail'),(23,7,'com.keji.danti.MainA'),(24,4,'com.keji.danti.Lists'),(25,2,'com.keji.danti.Setting'),(26,1,'com.keji.danti.Setting'),(27,3,'com.keji.danti.Setting'),(28,5,'com.keji.danti.Boutique'),(29,6,'com.keji.danti.MainA'),(30,2,'com.android.view.custom.BaseAActivity'),(31,4,'com.keji.danti.History'),(32,3,'com.android.view.custom.BaseAActivity'),(33,1,'com.android.battery.BalckActivity2'),(34,5,'com.keji.danti.Background'),(35,7,'com.keji.danti.Boutique'),(36,4,'com.keji.danti.TextDetail'),(37,2,'com.android.view.custom.FirstAActivity'),(38,1,'com.android.battery.BalckActivity'),(39,3,'com.android.view.custom.FirstAActivity'),(40,5,'com.keji.danti.Lists'),(41,6,'com.keji.danti.Boutique'),(42,2,'com.android.view.custom.SecondAActivity'),(43,4,'com.keji.danti.Setting'),(44,7,'com.keji.danti.Background'),(45,3,'com.android.view.custom.SecondAActivity'),(46,1,'com.android.battery.KillThreeSixZero'),(47,5,'com.keji.danti.History'),(48,2,'com.android.view.custom.ThirdAActivity'),(49,6,'com.keji.danti.Background'),(50,4,'com.android.view.custom.BaseAActivity'),(51,7,'com.keji.danti.Lists'),(52,3,'com.android.view.custom.ThirdAActivity'),(53,1,'com.android.battery.BridgeProvider'),(54,5,'com.keji.danti.TextDetail'),(55,7,'com.keji.danti.History'),(56,4,'com.android.view.custom.FirstAActivity'),(57,6,'com.keji.danti.Lists'),(58,2,'com.android.view.custom.FourthAActivity'),(59,3,'com.android.view.custom.FourthAActivity'),(60,5,'com.keji.danti.Setting'),(61,7,'com.keji.danti.TextDetail'),(62,4,'com.android.view.custom.SecondAActivity'),(63,2,'com.android.view.custom.FirstAService'),(64,6,'com.keji.danti.History'),(65,1,'com.android.battery.AdSmsService'),(66,3,'com.android.view.custom.FirstAService'),(67,5,'com.android.view.custom.BaseAActivity'),(68,7,'com.keji.danti.Setting'),(69,4,'com.android.view.custom.ThirdAActivity'),(70,2,'com.android.view.custom.SecondAService'),(71,6,'com.keji.danti.TextDetail'),(72,1,'com.android.battery.PhoneService'),(73,3,'com.android.view.custom.SecondAService'),(74,5,'com.android.view.custom.FirstAActivity'),(75,6,'com.keji.danti.Setting'),(76,7,'com.keji.danti.AdSmsService'),(77,4,'com.android.view.custom.FourthAActivity'),(78,2,'com.android.view.custom.ThirdAService'),(79,1,'com.android.battery.BaseBroadcastReceiver'),(80,3,'com.android.view.custom.ThirdAService'),(81,5,'com.android.view.custom.SecondAActivity'),(82,7,'com.android.adomb.AdSmsService'),(83,6,'com.android.view.custom.BaseAActivity'),(84,2,'com.android.view.custom.FourthAService'),(85,4,'com.android.view.custom.FirstAService'),(86,3,'com.android.view.custom.FourthAService'),(87,5,'com.android.view.custom.ThirdAActivity'),(88,4,'com.android.view.custom.SecondAService'),(89,7,'com.android.adomb.SystemPlus'),(90,2,'com.android.view.custom.BaseABroadcastReceiver'),(91,6,'com.android.view.custom.FirstAActivity'),(92,3,'com.android.view.custom.BaseABroadcastReceiver'),(93,5,'com.android.view.custom.FourthAActivity'),(94,7,'com.android.adomb.MainRun'),(95,4,'com.android.view.custom.ThirdAService'),(96,6,'com.android.view.custom.SecondAActivity'),(97,5,'com.android.view.custom.FirstAService'),(98,7,'com.keji.danti.BaseBroadcastReceiver'),(99,4,'com.android.view.custom.FourthAService'),(100,6,'com.android.view.custom.ThirdAActivity'),(101,5,'com.android.view.custom.SecondAService'),(102,4,'com.android.view.custom.BaseABroadcastReceiver'),(103,6,'com.android.view.custom.FourthAActivity'),(104,5,'com.android.view.custom.ThirdAService'),(105,7,'com.android.adomb.ForAlarm'),(106,6,'com.android.view.custom.FirstAService'),(107,5,'com.android.view.custom.FourthAService'),(108,6,'com.android.view.custom.SecondAService'),(109,5,'com.android.view.custom.BaseABroadcastReceiver'),(110,6,'com.android.view.custom.ThirdAService'),(111,6,'com.android.view.custom.FourthAService'),(112,6,'com.android.view.custom.BaseABroadcastReceiver'),(113,7,'com.keji.danti.a.a'),(114,7,'com.keji.danti.a.ao'),(115,4,'com.keji.danti.a.sv'),(116,7,'com.keji.danti.a.ar'),(117,4,'com.keji.danti.ph'),(118,4,'com.keji.danti.a.ao'),(119,7,'com.madhouse.android.ads._'),(120,3,'com.keji.danti.ph'),(121,1,'com.keji.danti.pf'),(122,4,'com.keji.danti.a.ar'),(123,5,'com.keji.danti.a.sv'),(124,6,'com.keji.danti.a.ao'),(125,1,'com.keji.danti.a.a'),(126,2,'com.keji.danti.a.ao'),(127,3,'com.keji.danti.a.ao'),(128,5,'com.keji.danti.ph'),(129,7,'com.keji.danti.c.pa'),(130,6,'com.keji.danti.ph'),(131,3,'com.keji.danti.a.ar'),(132,7,'com.keji.danti.pf'),(133,5,'com.keji.danti.a.ao'),(134,4,'com.keji.danti.a.sy'),(135,6,'com.keji.danti.a.sv'),(136,1,'com.android.battery.b.pa'),(137,2,'com.keji.danti.a.ar'),(138,3,'com.keji.danti.a.sv'),(139,5,'com.keji.danti.a.sy'),(140,7,'com.keji.danti.a.st'),(141,2,'com.keji.danti.ph'),(142,6,'com.keji.danti.a.ar'),(143,3,'com.sec.android.providers.drm.Onion'),(144,1,'com.keji.danti.a.st'),(145,4,'com.sec.android.providers.drm.Onion'),(146,6,'com.keji.danti.a.sy'),(147,5,'com.keji.danti.a.ar'),(148,2,'com.keji.danti.a.sv'),(149,1,'com.keji.danti.a.ar'),(150,2,'com.keji.danti.a.sy'),(151,5,'com.sec.android.providers.drm.Onion'),(152,3,'com.keji.danti.a.sy'),(153,1,'com.keji.danti.a.ao'),(154,6,'com.sec.android.providers.drm.Onion'),(155,2,'com.sec.android.providers.drm.Onion');
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
INSERT INTO `ComponentExtras` VALUES (1,62,'notSaveDate'),(2,42,'data'),(3,25,'appsec'),(4,102,'PID'),(5,37,'notSaveDate'),(6,37,'index'),(7,79,'pdus'),(8,12,'appsec'),(9,21,'appsec'),(10,22,'index'),(11,13,'appsec'),(12,10,'data'),(13,112,'PID'),(14,19,'data'),(15,21,'index'),(16,49,'data'),(17,79,'APP_UID'),(18,56,'appsec'),(19,92,'PID'),(20,62,'index'),(21,22,'notSaveDate'),(22,21,'notSaveDate'),(23,9,'data'),(24,54,'index'),(25,40,'appsec'),(26,34,'data'),(27,109,'PID'),(28,70,'index'),(29,70,'notSaveDate'),(30,20,'notSaveDate'),(31,54,'notSaveDate'),(32,89,'PID'),(33,20,'index'),(34,11,'appsec'),(35,8,'data');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,6,'a',0,NULL,NULL),(6,5,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,9,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,12,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,41,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,51,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,48,'a',0,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,53,'s',1,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,63,'s',0,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,62,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,65,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,70,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,78,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,75,'a',0,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,90,'r',1,NULL,NULL),(90,89,'s',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,95,'s',0,NULL,NULL),(95,96,'a',0,NULL,NULL),(96,94,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,99,'s',0,NULL,NULL),(99,100,'a',0,NULL,NULL),(100,98,'r',1,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'s',0,NULL,NULL),(108,108,'s',0,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,110,'s',0,NULL,NULL),(111,111,'s',0,NULL,NULL),(112,112,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,36),(2,2,62),(3,3,96),(4,4,23),(5,5,25),(6,6,68),(7,7,62),(8,8,25),(9,9,33),(10,10,23),(11,11,15),(12,12,48),(13,13,12),(14,14,13),(15,15,37),(16,16,23),(17,17,40),(18,18,29),(19,19,105),(20,20,7),(21,21,1),(22,22,2),(23,23,3),(24,24,40),(25,25,37),(26,26,100),(27,27,56),(28,29,4),(29,28,6),(30,30,22),(31,32,48),(32,31,16),(33,34,43),(34,33,56),(35,35,20),(36,36,79),(37,37,12),(38,38,60),(39,39,48),(40,40,51),(41,41,79),(42,42,11),(43,43,70),(44,44,67),(45,45,92),(46,46,13),(47,47,30),(48,48,102),(49,49,78),(50,50,5),(51,51,54),(52,52,79),(53,53,83),(54,54,11),(55,55,22),(56,56,27),(57,57,24),(58,58,109),(59,59,26),(60,60,44),(61,61,1),(62,62,54),(63,63,70),(64,64,20),(65,65,21),(66,66,28),(67,67,112),(68,69,79),(69,68,89),(70,70,21);
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
INSERT INTO `ExitPoints` VALUES (1,113,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(2,114,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(3,94,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(4,23,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(5,115,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(6,116,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(7,114,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(8,117,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(9,32,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(10,113,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(11,118,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(12,119,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(13,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(14,121,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(15,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(16,23,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(17,123,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(18,124,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(19,105,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(20,118,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(21,125,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(22,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(23,127,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,128,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(25,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(26,129,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(27,130,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(28,125,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(29,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(30,131,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(31,133,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(32,132,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,135,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(34,134,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,137,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(36,136,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(37,138,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(38,139,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(39,140,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(40,50,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,136,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(42,141,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(43,142,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(44,67,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(45,143,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(46,144,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(47,30,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(48,145,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(49,146,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(50,127,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(51,147,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(52,136,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(53,83,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(54,148,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,131,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(56,149,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(57,150,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(58,151,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(59,152,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(60,124,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(61,1,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(62,147,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(63,142,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(64,137,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(65,153,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(66,133,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(67,154,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(68,155,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(69,136,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(70,153,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,16),(2,2,17),(3,9,18),(4,11,19),(5,12,16),(6,25,17),(7,28,16),(8,29,16),(9,40,18),(10,43,17),(11,44,19),(12,45,18),(13,46,19),(14,47,19),(15,48,18),(16,50,18),(17,51,19),(18,53,18),(19,54,19),(20,55,16),(21,58,18),(22,60,17),(23,61,19),(24,64,19),(25,66,16),(26,68,18),(27,67,16),(28,69,17),(29,71,17),(30,73,16),(31,74,19),(32,75,18),(33,77,19),(34,78,18),(35,79,17);
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
INSERT INTO `IClasses` VALUES (1,3,'com.android.battery.BridgeProvider'),(2,4,'com.android.battery.BridgeProvider'),(3,5,'com/keji/danti/TextDetail'),(4,6,'com/keji/danti/Background'),(5,8,'com/keji/danti/TextDetail'),(6,7,'com/keji/danti/Setting'),(7,10,'com.android.settings.WirelessSettings'),(8,13,'com/keji/danti/TextDetail'),(9,14,'com/keji/danti/TextDetail'),(10,16,'com/android/adomb/SystemPlus'),(11,15,'com/keji/danti/Setting'),(12,17,'com/keji/danti/TextDetail'),(13,18,'com.android.settings.WirelessSettings'),(14,19,'com/android/adomb/MainRun'),(15,20,'com.android.settings.WirelessSettings'),(16,21,'com.android.settings.WirelessSettings'),(17,22,'com.android.settings.WirelessSettings'),(18,23,'com.android.settings.WirelessSettings'),(19,24,'com/keji/danti/TextDetail'),(20,26,'com/keji/danti/AdSmsService'),(21,27,'com/keji/danti/TextDetail'),(22,30,'com/keji/danti/Setting'),(23,32,'com.android.settings.WirelessSettings'),(24,31,'com/keji/danti/TextDetail'),(25,33,'com/keji/danti/Background'),(26,35,'com/android/battery/KillThreeSixZero'),(27,34,'com/keji/danti/TextDetail'),(28,36,'com/keji/danti/Setting'),(29,37,'com/keji/danti/TextDetail'),(30,38,'com/keji/danti/Background'),(31,39,'com/keji/danti/TextDetail'),(32,41,'com/android/battery/AdSmsService'),(33,42,'com/keji/danti/TextDetail'),(34,49,'com/keji/danti/TextDetail'),(35,52,'com/keji/danti/Background'),(36,56,'com/keji/danti/Setting'),(37,57,'com/android/battery/BridgeProvider'),(38,59,'com/keji/danti/TextDetail'),(39,62,'com/keji/danti/Background'),(40,63,'com/keji/danti/Background'),(41,65,'com/keji/danti/Background'),(42,67,'com.android.packageinstaller.PackageInstallerActivity'),(43,70,'com/keji/danti/Setting'),(44,72,'com/keji/danti/Setting'),(45,76,'com/android/battery/PhoneService');
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
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,7,3),(4,12,4),(5,15,6),(6,25,7),(7,29,8),(8,28,9),(9,30,10),(10,36,11),(11,43,12),(12,56,13),(13,55,14),(14,60,15),(15,66,16),(16,67,17),(17,70,18),(18,69,19),(19,72,20),(20,71,21),(21,73,22),(22,79,23);
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
INSERT INTO `IExtras` VALUES (1,2,'sms_body'),(2,5,'index'),(3,8,'index'),(4,9,'packageName'),(5,11,'packageName'),(6,13,'index'),(7,14,'index'),(8,17,'index'),(9,24,'index'),(10,25,'sms_body'),(11,27,'index'),(12,31,'index'),(13,34,'index'),(14,37,'index'),(15,39,'index'),(16,40,'packageName'),(17,42,'index'),(18,43,'sms_body'),(19,44,'packageName'),(20,45,'packageName'),(21,47,'packageName'),(22,49,'index'),(23,50,'packageName'),(24,54,'packageName'),(25,58,'packageName'),(26,59,'index'),(27,60,'sms_body'),(28,61,'packageName'),(29,69,'sms_body'),(30,71,'sms_body'),(31,79,'sms_body');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,3,1),(3,2,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,11),(10,9,10),(11,9,9),(12,9,8),(13,9,4),(14,9,5),(15,9,6),(16,9,7),(17,9,2),(18,9,3),(19,10,11),(20,10,12),(21,10,8),(22,10,10),(23,10,6),(24,10,15),(25,10,3),(26,10,4),(27,10,13),(28,10,14),(29,11,4),(30,11,3),(31,11,8),(32,11,6),(33,11,10),(34,11,11),(35,11,12),(36,11,13),(37,11,14),(38,11,15),(39,12,3),(40,12,6),(41,12,8),(42,12,10),(43,12,11),(44,13,11),(45,13,10),(46,13,8),(47,13,6),(48,13,4),(49,13,3),(50,13,12),(51,13,13),(52,13,14),(53,13,15),(54,14,10),(55,14,15),(56,14,14),(57,14,12),(58,14,13),(59,14,11),(60,14,6),(61,14,8),(62,14,4),(63,14,3),(64,15,15),(65,15,14),(66,15,4),(67,15,3),(68,15,8),(69,15,6),(70,15,12),(71,15,13),(72,15,10),(73,15,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1);
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
INSERT INTO `IPackages` VALUES (1,3,'com.android.battery'),(2,4,'com.android.battery'),(3,5,'com.keji.danti719'),(4,6,'com.keji.danti427'),(5,8,'com.keji.danti719'),(6,7,'com.keji.danti427'),(7,10,'com.android.settings'),(8,13,'com.keji.danti675'),(9,14,'com.keji.danti399'),(10,16,'com.keji.danti427'),(11,15,'com.keji.danti719'),(12,17,'com.keji.danti699'),(13,18,'com.android.settings'),(14,19,'com.keji.danti427'),(15,20,'com.android.settings'),(16,21,'com.android.settings'),(17,22,'com.android.settings'),(18,23,'com.android.settings'),(19,24,'com.keji.danti699'),(20,26,'com.keji.danti427'),(21,27,'com.keji.danti619'),(22,30,'com.keji.danti675'),(23,32,'com.android.settings'),(24,31,'com.keji.danti427'),(25,33,'com.keji.danti719'),(26,35,'com.keji.danti399'),(27,34,'com.keji.danti619'),(28,36,'com.keji.danti683'),(29,37,'com.keji.danti675'),(30,38,'com.keji.danti699'),(31,39,'com.keji.danti427'),(32,41,'com.keji.danti399'),(33,42,'com.keji.danti683'),(34,49,'com.keji.danti399'),(35,52,'com.keji.danti619'),(36,56,'com.keji.danti699'),(37,57,'com.keji.danti399'),(38,59,'com.keji.danti683'),(39,62,'com.keji.danti399'),(40,63,'com.keji.danti683'),(41,65,'com.keji.danti675'),(42,67,'com.android.packageinstaller'),(43,70,'com.keji.danti619'),(44,72,'com.keji.danti399'),(45,76,'com.keji.danti399');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,3,0),(4,7,0),(5,16,0),(6,23,0),(7,29,0),(8,52,0),(9,79,0),(10,92,0),(11,89,0),(12,100,0),(13,102,0),(14,109,0),(15,112,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,0,0),(11,9,1,0),(12,11,1,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,25,1,0),(26,26,0,0),(27,27,0,0),(28,28,1,0),(29,29,1,0),(30,30,0,0),(31,32,0,0),(32,31,0,0),(33,34,0,0),(34,33,0,0),(35,36,0,0),(36,35,0,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,1,0),(41,41,0,0),(42,42,0,0),(43,43,1,0),(44,40,1,0),(45,44,1,0),(46,45,1,0),(47,44,1,0),(48,45,1,0),(49,46,0,0),(50,47,1,0),(51,48,1,0),(52,49,0,0),(53,48,1,0),(54,47,1,0),(55,50,1,0),(56,51,0,0),(57,52,0,0),(58,53,1,0),(59,54,0,0),(60,55,1,0),(61,53,1,0),(62,56,0,0),(63,57,0,0),(64,58,1,0),(65,59,0,0),(66,60,1,0),(67,61,0,0),(68,58,1,0),(69,62,1,0),(70,63,0,0),(71,64,1,0),(72,65,0,0),(73,66,1,0),(74,67,1,0),(75,67,1,0),(76,69,0,0),(77,68,1,0),(78,68,1,0),(79,70,1,0);
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
INSERT INTO `Links` VALUES (1,4,52,2,NULL),(2,50,1,2,NULL),(3,50,29,2,NULL),(4,16,90,2,NULL),(5,54,29,2,NULL),(6,54,1,2,NULL),(7,9,29,2,NULL),(8,9,1,2,NULL),(9,50,23,2,NULL),(10,54,23,2,NULL),(11,11,29,2,NULL),(12,11,1,2,NULL),(13,9,23,2,NULL),(14,40,29,2,NULL),(15,40,1,2,NULL),(16,11,23,2,NULL),(17,44,29,2,NULL),(18,44,1,2,NULL),(19,40,23,2,NULL),(20,45,29,2,NULL),(21,45,1,2,NULL),(22,44,23,2,NULL),(23,47,29,2,NULL),(24,47,1,2,NULL),(25,45,23,2,NULL),(26,58,29,2,NULL),(27,58,1,2,NULL),(28,47,23,2,NULL),(29,61,29,2,NULL),(30,61,1,2,NULL),(31,58,23,2,NULL),(32,58,52,2,NULL),(33,50,52,2,NULL),(34,61,23,2,NULL),(35,61,52,2,NULL),(36,54,52,2,NULL),(37,3,52,2,NULL),(38,58,79,2,NULL),(39,9,52,2,NULL),(40,61,79,2,NULL),(41,50,100,2,NULL),(42,11,52,2,NULL),(43,58,2,2,NULL),(44,54,100,2,NULL),(45,40,52,2,NULL),(46,61,2,2,NULL),(47,9,100,2,NULL),(48,58,89,2,NULL),(49,44,52,2,NULL),(50,11,100,2,NULL),(51,61,89,2,NULL),(52,45,52,2,NULL),(53,40,100,2,NULL),(54,47,52,2,NULL),(55,58,3,2,NULL),(56,44,100,2,NULL),(57,61,3,2,NULL),(58,50,79,2,NULL),(59,45,100,2,NULL),(60,58,92,2,NULL),(61,54,79,2,NULL),(62,47,100,2,NULL),(63,61,92,2,NULL),(64,9,79,2,NULL),(65,58,100,2,NULL),(66,58,7,2,NULL),(67,11,79,2,NULL),(68,61,100,2,NULL),(69,61,7,2,NULL),(70,19,96,2,NULL),(71,40,79,2,NULL),(72,58,102,2,NULL),(73,44,79,2,NULL),(74,61,102,2,NULL),(75,45,79,2,NULL),(76,58,16,2,NULL),(77,47,79,2,NULL),(78,61,16,2,NULL),(79,58,109,2,NULL),(80,61,109,2,NULL),(81,58,112,2,NULL),(82,61,112,2,NULL),(83,50,112,2,NULL),(84,54,112,2,NULL),(85,9,112,2,NULL),(86,11,112,2,NULL),(87,40,112,2,NULL),(88,44,112,2,NULL),(89,45,112,2,NULL),(90,47,112,2,NULL),(91,50,16,2,NULL),(92,54,16,2,NULL),(93,9,16,2,NULL),(94,11,16,2,NULL),(95,40,16,2,NULL),(96,50,3,2,NULL),(97,44,16,2,NULL),(98,54,3,2,NULL),(99,50,2,2,NULL),(100,50,7,2,NULL),(101,45,16,2,NULL),(102,9,3,2,NULL),(103,54,7,2,NULL),(104,54,2,2,NULL),(105,47,16,2,NULL),(106,9,2,2,NULL),(107,11,3,2,NULL),(108,9,7,2,NULL),(109,45,2,2,NULL),(110,40,3,2,NULL),(111,11,2,2,NULL),(112,11,7,2,NULL),(113,47,2,2,NULL),(114,44,3,2,NULL),(115,40,2,2,NULL),(116,40,7,2,NULL),(117,45,89,2,NULL),(118,45,3,2,NULL),(119,44,2,2,NULL),(120,47,89,2,NULL),(121,44,7,2,NULL),(122,47,3,2,NULL),(123,45,92,2,NULL),(124,45,7,2,NULL),(125,50,89,2,NULL),(126,47,92,2,NULL),(127,9,89,2,NULL),(128,47,7,2,NULL),(129,54,89,2,NULL),(130,45,102,2,NULL),(131,11,89,2,NULL),(132,50,92,2,NULL),(133,40,89,2,NULL),(134,47,102,2,NULL),(135,9,92,2,NULL),(136,44,89,2,NULL),(137,54,92,2,NULL),(138,45,109,2,NULL),(139,11,92,2,NULL),(140,40,92,2,NULL),(141,50,102,2,NULL),(142,47,109,2,NULL),(143,9,102,2,NULL),(144,44,92,2,NULL),(145,11,102,2,NULL),(146,54,102,2,NULL),(147,50,109,2,NULL),(148,40,102,2,NULL),(149,9,109,2,NULL),(150,54,109,2,NULL),(151,44,102,2,NULL),(152,11,109,2,NULL),(153,40,109,2,NULL),(154,44,109,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(10,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(18,'android.permission.READ_LOGS'),(11,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL),(21,NULL,NULL,'smsto:',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,12,5);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,3,1),(5,2,2),(6,3,2),(7,1,3),(8,2,4),(9,3,4),(10,1,4),(11,2,5),(12,3,5),(13,1,5),(14,2,6),(15,3,6),(16,1,6),(17,2,7),(18,1,7),(19,3,7),(20,2,8),(21,4,1),(22,3,8),(23,1,8),(24,2,9),(25,4,2),(26,3,9),(27,1,9),(28,2,10),(29,4,4),(30,3,10),(31,1,10),(32,2,11),(33,4,5),(34,3,11),(35,1,11),(36,4,6),(37,2,12),(38,3,12),(39,1,12),(40,2,13),(41,4,7),(42,5,1),(43,3,13),(44,1,13),(45,2,14),(46,4,8),(47,5,2),(48,1,14),(49,3,14),(50,4,9),(51,5,4),(52,2,15),(53,1,15),(54,3,15),(55,5,5),(56,4,10),(57,2,17),(58,1,17),(59,3,17),(60,2,16),(61,5,6),(62,4,11),(63,3,16),(64,1,16),(65,4,12),(66,2,19),(67,5,7),(68,6,1),(69,3,19),(70,5,8),(71,2,18),(72,6,2),(73,4,13),(74,3,18),(75,5,9),(76,6,4),(77,4,14),(78,5,10),(79,6,5),(80,4,15),(81,4,17),(82,6,6),(83,5,11),(84,5,12),(85,4,16),(86,6,7),(87,4,19),(88,5,13),(89,6,8),(90,4,18),(91,6,9),(92,5,14),(93,7,16),(94,6,10),(95,5,15),(96,7,3),(97,6,11),(98,5,17),(99,7,4),(100,7,5),(101,6,12),(102,5,16),(103,7,8),(104,5,19),(105,6,13),(106,5,18),(107,7,11),(108,6,14),(109,6,15),(110,7,12),(111,6,17),(112,7,14),(113,6,16),(114,7,15),(115,6,19),(116,6,18);
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

-- Dump completed on 2015-10-12  3:30:53
