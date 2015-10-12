-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_41
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti673',32),(2,'com.keji.danti714',32),(3,'com.keji.danti413',27),(4,'com.keji.danti705',32),(5,'com.keji.danti652',32),(6,'com.keji.danti405',27),(7,'com.keji.danti424',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,1,'com.keji.danti.Boutique'),(4,3,'com.keji.danti.MainA'),(5,1,'com.keji.danti.Background'),(6,4,'com.keji.danti.MainA'),(7,1,'com.keji.danti.Lists'),(8,2,'com.keji.danti.Boutique'),(9,3,'com.keji.danti.Boutique'),(10,1,'com.keji.danti.History'),(11,2,'com.keji.danti.Background'),(12,3,'com.keji.danti.Background'),(13,1,'com.keji.danti.TextDetail'),(14,4,'com.keji.danti.Boutique'),(15,2,'com.keji.danti.Lists'),(16,3,'com.keji.danti.Lists'),(17,6,'com.keji.danti.MainA'),(18,5,'com.keji.danti.MainA'),(19,1,'com.keji.danti.Setting'),(20,2,'com.keji.danti.History'),(21,4,'com.keji.danti.Background'),(22,3,'com.keji.danti.History'),(23,1,'com.android.view.custom.BaseAActivity'),(24,4,'com.keji.danti.Lists'),(25,2,'com.keji.danti.TextDetail'),(26,3,'com.keji.danti.TextDetail'),(27,6,'com.keji.danti.Boutique'),(28,5,'com.keji.danti.Boutique'),(29,1,'com.android.view.custom.FirstAActivity'),(30,2,'com.keji.danti.Setting'),(31,4,'com.keji.danti.History'),(32,3,'com.keji.danti.Setting'),(33,6,'com.keji.danti.Background'),(34,5,'com.keji.danti.Background'),(35,1,'com.android.view.custom.SecondAActivity'),(36,4,'com.keji.danti.TextDetail'),(37,2,'com.android.view.custom.BaseAActivity'),(38,3,'com.android.battery.BalckActivity2'),(39,6,'com.keji.danti.Lists'),(40,1,'com.android.view.custom.ThirdAActivity'),(41,5,'com.keji.danti.Lists'),(42,2,'com.android.view.custom.FirstAActivity'),(43,4,'com.keji.danti.Setting'),(44,3,'com.android.battery.BalckActivity'),(45,5,'com.keji.danti.History'),(46,6,'com.keji.danti.History'),(47,1,'com.android.view.custom.FourthAActivity'),(48,4,'com.android.view.custom.BaseAActivity'),(49,2,'com.android.view.custom.SecondAActivity'),(50,3,'com.android.battery.KillThreeSixZero'),(51,5,'com.keji.danti.TextDetail'),(52,1,'com.android.view.custom.FirstAService'),(53,6,'com.keji.danti.TextDetail'),(54,2,'com.android.view.custom.ThirdAActivity'),(55,4,'com.android.view.custom.FirstAActivity'),(56,7,'com.keji.danti.MainA'),(57,3,'com.android.battery.BridgeProvider'),(58,6,'com.keji.danti.Setting'),(59,5,'com.keji.danti.Setting'),(60,1,'com.android.view.custom.SecondAService'),(61,2,'com.android.view.custom.FourthAActivity'),(62,4,'com.android.view.custom.SecondAActivity'),(63,5,'com.android.view.custom.BaseAActivity'),(64,1,'com.android.view.custom.ThirdAService'),(65,6,'com.android.battery.BalckActivity2'),(66,4,'com.android.view.custom.ThirdAActivity'),(67,2,'com.android.view.custom.FirstAService'),(68,3,'com.android.battery.AdSmsService'),(69,7,'com.keji.danti.Boutique'),(70,1,'com.android.view.custom.FourthAService'),(71,5,'com.android.view.custom.FirstAActivity'),(72,6,'com.android.battery.BalckActivity'),(73,2,'com.android.view.custom.SecondAService'),(74,4,'com.android.view.custom.FourthAActivity'),(75,3,'com.android.battery.PhoneService'),(76,7,'com.keji.danti.Background'),(77,1,'com.android.view.custom.BaseABroadcastReceiver'),(78,5,'com.android.view.custom.SecondAActivity'),(79,6,'com.android.battery.KillThreeSixZero'),(80,2,'com.android.view.custom.ThirdAService'),(81,4,'com.android.view.custom.FirstAService'),(82,3,'com.android.battery.BaseBroadcastReceiver'),(83,7,'com.keji.danti.Lists'),(84,5,'com.android.view.custom.ThirdAActivity'),(85,6,'com.android.battery.BridgeProvider'),(86,2,'com.android.view.custom.FourthAService'),(87,4,'com.android.view.custom.SecondAService'),(88,7,'com.keji.danti.History'),(89,5,'com.android.view.custom.FourthAActivity'),(90,4,'com.android.view.custom.ThirdAService'),(91,2,'com.android.view.custom.BaseABroadcastReceiver'),(92,7,'com.keji.danti.TextDetail'),(93,6,'com.android.battery.AdSmsService'),(94,5,'com.android.view.custom.FirstAService'),(95,4,'com.android.view.custom.FourthAService'),(96,7,'com.keji.danti.Setting'),(97,6,'com.android.battery.PhoneService'),(98,5,'com.android.view.custom.SecondAService'),(99,4,'com.android.view.custom.BaseABroadcastReceiver'),(100,7,'com.android.battery.BalckActivity2'),(101,6,'com.android.battery.BaseBroadcastReceiver'),(102,5,'com.android.view.custom.ThirdAService'),(103,7,'com.android.battery.BalckActivity'),(104,5,'com.android.view.custom.FourthAService'),(105,7,'com.android.battery.KillThreeSixZero'),(106,5,'com.android.view.custom.BaseABroadcastReceiver'),(107,7,'com.android.battery.BridgeProvider'),(108,7,'com.android.battery.AdSmsService'),(109,7,'com.android.battery.PhoneService'),(110,7,'com.android.battery.BaseBroadcastReceiver'),(111,2,'com.keji.danti.a.ao'),(112,2,'com.keji.danti.a.sv'),(113,2,'com.keji.danti.a.ar'),(114,2,'com.sec.android.providers.drm.Onion'),(115,2,'com.keji.danti.ph'),(116,3,'com.keji.danti.a.a'),(117,6,'com.keji.danti.a.a'),(118,2,'com.keji.danti.a.sy'),(119,6,'com.keji.danti.a.ao'),(120,3,'com.android.battery.b.pa'),(121,4,'com.keji.danti.a.ar'),(122,1,'com.keji.danti.a.ao'),(123,7,'com.keji.danti.a.a'),(124,6,'com.keji.danti.pf'),(125,4,'com.keji.danti.a.sy'),(126,1,'com.keji.danti.ph'),(127,7,'com.keji.danti.a.st'),(128,6,'com.android.battery.b.pa'),(129,5,'com.keji.danti.a.sv'),(130,4,'com.sec.android.providers.drm.Onion'),(131,1,'com.keji.danti.a.sv'),(132,7,'com.keji.danti.a.ao'),(133,5,'com.sec.android.providers.drm.Onion'),(134,3,'com.keji.danti.a.ao'),(135,4,'com.keji.danti.ph'),(136,5,'com.keji.danti.a.ao'),(137,7,'com.android.battery.b.pa'),(138,4,'com.keji.danti.a.ao'),(139,3,'com.keji.danti.a.st'),(140,5,'com.keji.danti.a.sy'),(141,6,'com.keji.danti.a.st'),(142,3,'com.keji.danti.pf'),(143,5,'com.keji.danti.a.ar'),(144,7,'com.keji.danti.a.ar'),(145,1,'com.keji.danti.a.ar'),(146,4,'com.keji.danti.a.sv'),(147,1,'com.sec.android.providers.drm.Onion'),(148,3,'com.keji.danti.a.ar'),(149,1,'com.keji.danti.a.sy'),(150,5,'com.keji.danti.ph'),(151,6,'com.keji.danti.a.ar'),(152,7,'com.keji.danti.pf');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,24,'index'),(2,24,'notSaveDate'),(3,11,'data'),(4,91,'PID'),(5,82,'pdus'),(6,26,'notSaveDate'),(7,15,'appsec'),(8,99,'PID'),(9,77,'PID'),(10,106,'PID'),(11,33,'data'),(12,40,'appsec'),(13,53,'notSaveDate'),(14,53,'index'),(15,5,'data'),(16,92,'index'),(17,36,'index'),(18,13,'notSaveDate'),(19,102,'APP_UID'),(20,26,'appsec'),(21,16,'appsec'),(22,82,'APP_UID'),(23,110,'APP_UID'),(24,92,'notSaveDate'),(25,13,'index'),(26,26,'index'),(27,12,'data'),(28,52,'index'),(29,7,'appsec'),(30,20,'data'),(31,36,'notSaveDate'),(32,25,'appsec'),(33,110,'pdus'),(34,35,'data'),(35,53,'appsec'),(36,52,'notSaveDate'),(37,41,'appsec'),(38,102,'pdus'),(39,76,'data'),(40,92,'appsec'),(41,83,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',1,NULL,NULL),(18,17,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,39,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,45,'a',0,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'s',1,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,58,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'s',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,85,'s',1,NULL,NULL),(85,84,'a',0,NULL,NULL),(86,87,'s',0,NULL,NULL),(87,86,'s',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,102,'s',0,NULL,NULL),(102,101,'r',1,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'r',1,NULL,NULL),(107,107,'s',1,NULL,NULL),(108,108,'s',0,NULL,NULL),(109,109,'s',0,NULL,NULL),(110,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,15),(3,3,2),(4,4,24),(5,5,91),(6,6,37),(7,7,15),(8,8,9),(9,9,27),(10,10,31),(11,11,24),(12,12,53),(13,13,82),(14,14,36),(15,15,82),(16,16,3),(17,17,41),(18,18,69),(19,19,4),(20,20,43),(21,22,7),(22,23,4),(23,21,83),(24,24,102),(25,25,40),(26,26,99),(27,27,92),(28,28,7),(29,29,102),(30,30,106),(31,31,26),(32,32,25),(33,33,102),(34,34,23),(35,35,17),(36,36,110),(37,37,6),(38,38,16),(39,39,18),(40,40,110),(41,41,58),(42,42,48),(43,43,1),(44,44,41),(45,45,16),(46,46,52),(47,47,96),(48,48,13),(49,49,36),(50,50,18),(51,51,56),(52,52,82),(53,53,64),(54,54,25),(55,55,77),(56,56,102),(57,57,82),(58,58,56),(59,59,52),(60,60,53),(61,61,13),(62,62,32),(63,63,14),(64,64,110),(65,65,26),(66,66,19),(67,67,40),(68,68,83),(69,69,60),(70,70,28),(71,71,92),(72,72,110);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,111,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(2,112,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(3,111,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(4,113,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(5,114,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(6,37,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(7,115,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(8,116,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(9,117,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(10,118,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,113,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(12,119,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(13,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(14,121,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(16,122,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(17,124,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,123,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(19,116,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(20,125,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(21,127,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(22,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(23,4,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(24,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(25,129,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(26,130,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,132,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(28,131,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(29,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(30,133,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,134,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(32,135,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(34,23,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(35,136,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(36,137,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(37,138,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(38,139,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(39,117,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(40,137,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(41,140,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(42,48,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(43,122,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(44,141,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(45,142,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(46,143,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(47,144,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(48,145,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(49,121,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(50,17,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(51,56,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(52,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(53,63,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(54,146,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,147,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(56,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(57,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(58,123,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(59,143,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(60,119,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(61,145,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(62,148,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(63,138,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(64,137,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(65,134,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(66,149,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(67,150,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(68,152,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(69,151,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(70,136,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(71,132,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(72,137,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,4,17),(3,5,18),(4,6,19),(5,7,19),(6,8,18),(7,10,16),(8,11,16),(9,18,16),(10,20,16),(11,25,16),(12,28,18),(13,29,19),(14,31,17),(15,33,18),(16,34,17),(17,36,19),(18,38,19),(19,43,18),(20,47,19),(21,50,18),(22,55,17),(23,56,16),(24,57,16),(25,59,19),(26,61,18),(27,63,18),(28,65,19),(29,67,17),(30,68,17),(31,69,17),(32,71,16),(33,78,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/keji/danti/TextDetail'),(2,3,'com.android.settings.WirelessSettings'),(3,9,'com/keji/danti/TextDetail'),(4,12,'com/keji/danti/Background'),(5,15,'com/android/battery/KillThreeSixZero'),(6,13,'com/keji/danti/Setting'),(7,14,'com/keji/danti/Setting'),(8,17,'com/android/battery/PhoneService'),(9,16,'com/keji/danti/Setting'),(10,19,'com/keji/danti/TextDetail'),(11,21,'com.android.settings.WirelessSettings'),(12,22,'com/keji/danti/Background'),(13,26,'com/android/battery/PhoneService'),(14,23,'com/keji/danti/TextDetail'),(15,24,'com/keji/danti/TextDetail'),(16,27,'com/keji/danti/TextDetail'),(17,25,'com.android.packageinstaller.PackageInstallerActivity'),(18,32,'com/android/battery/KillThreeSixZero'),(19,30,'com/keji/danti/TextDetail'),(20,35,'com/keji/danti/TextDetail'),(21,37,'com/android/battery/AdSmsService'),(22,39,'com.android.settings.WirelessSettings'),(23,40,'com/android/battery/KillThreeSixZero'),(24,41,'com.android.settings.WirelessSettings'),(25,44,'com.android.settings.WirelessSettings'),(26,42,'com/keji/danti/TextDetail'),(27,45,'com/android/battery/BridgeProvider'),(28,46,'com/keji/danti/Background'),(29,48,'com.android.settings.WirelessSettings'),(30,49,'com/keji/danti/TextDetail'),(31,51,'com/keji/danti/TextDetail'),(32,53,'com/keji/danti/Background'),(33,52,'com/keji/danti/Setting'),(34,54,'com/keji/danti/Setting'),(35,56,'com.android.packageinstaller.PackageInstallerActivity'),(36,58,'com/android/battery/BridgeProvider'),(37,57,'com.android.packageinstaller.PackageInstallerActivity'),(38,62,'com/android/battery/BridgeProvider'),(39,60,'com/keji/danti/TextDetail'),(40,64,'com/android/battery/AdSmsService'),(41,66,'com.android.settings.WirelessSettings'),(42,70,'com/keji/danti/Background'),(43,72,'com/android/battery/AdSmsService'),(44,73,'com/keji/danti/Setting'),(45,74,'com/keji/danti/Background'),(46,77,'com/keji/danti/Background'),(47,75,'com/keji/danti/TextDetail'),(48,76,'com/keji/danti/TextDetail'),(49,79,'com/keji/danti/Setting'),(50,80,'com/android/battery/PhoneService');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,10,3),(4,11,4),(5,13,5),(6,14,6),(7,16,7),(8,18,8),(9,20,9),(10,25,10),(11,31,11),(12,34,12),(13,52,13),(14,54,14),(15,56,15),(16,55,16),(17,57,17),(18,67,18),(19,68,19),(20,69,20),(21,71,21),(22,73,22),(23,79,23),(24,78,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'index'),(2,4,'sms_body'),(3,7,'packageName'),(4,8,'packageName'),(5,9,'index'),(6,19,'index'),(7,23,'index'),(8,24,'index'),(9,27,'index'),(10,30,'index'),(11,31,'sms_body'),(12,35,'index'),(13,34,'sms_body'),(14,38,'packageName'),(15,42,'index'),(16,43,'packageName'),(17,47,'packageName'),(18,49,'index'),(19,50,'packageName'),(20,51,'index'),(21,55,'sms_body'),(22,59,'packageName'),(23,60,'index'),(24,61,'packageName'),(25,67,'sms_body'),(26,68,'sms_body'),(27,69,'sms_body'),(28,75,'index'),(29,76,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,11),(10,9,10),(11,9,9),(12,9,8),(13,9,4),(14,9,5),(15,9,6),(16,9,7),(17,9,2),(18,9,3),(19,10,1),(20,11,5),(21,11,4),(22,11,9),(23,11,8),(24,11,6),(25,11,10),(26,11,12),(27,11,13),(28,11,14),(29,11,15),(30,12,4),(31,12,3),(32,12,6),(33,12,5),(34,12,8),(35,12,7),(36,12,10),(37,12,9),(38,12,11),(39,12,2),(40,13,11),(41,13,10),(42,13,9),(43,13,8),(44,13,7),(45,13,6),(46,13,5),(47,13,4),(48,13,3),(49,13,2),(50,14,10),(51,14,15),(52,14,9),(53,14,14),(54,14,12),(55,14,13),(56,14,6),(57,14,5),(58,14,8),(59,14,4),(60,15,4),(61,15,5),(62,15,2),(63,15,3),(64,15,8),(65,15,9),(66,15,6),(67,15,7),(68,15,10),(69,15,11),(70,16,1),(71,17,6),(72,17,4),(73,17,5),(74,17,14),(75,17,15),(76,17,12),(77,17,13),(78,17,10),(79,17,8),(80,17,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,5,1),(7,7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.keji.danti714'),(2,3,'com.android.settings'),(3,9,'com.keji.danti714'),(4,12,'com.keji.danti714'),(5,15,'com.keji.danti413'),(6,13,'com.keji.danti714'),(7,14,'com.keji.danti405'),(8,17,'com.keji.danti413'),(9,16,'com.keji.danti705'),(10,19,'com.keji.danti405'),(11,21,'com.android.settings'),(12,22,'com.keji.danti705'),(13,23,'com.keji.danti673'),(14,26,'com.keji.danti405'),(15,24,'com.keji.danti424'),(16,27,'com.keji.danti652'),(17,25,'com.android.packageinstaller'),(18,32,'com.keji.danti405'),(19,30,'com.keji.danti673'),(20,35,'com.keji.danti705'),(21,37,'com.keji.danti405'),(22,39,'com.android.settings'),(23,40,'com.keji.danti424'),(24,41,'com.android.settings'),(25,44,'com.android.settings'),(26,42,'com.keji.danti413'),(27,45,'com.keji.danti424'),(28,46,'com.keji.danti652'),(29,48,'com.android.settings'),(30,49,'com.keji.danti405'),(31,51,'com.keji.danti413'),(32,53,'com.keji.danti424'),(33,52,'com.keji.danti652'),(34,54,'com.keji.danti673'),(35,56,'com.android.packageinstaller'),(36,58,'com.keji.danti413'),(37,57,'com.android.packageinstaller'),(38,62,'com.keji.danti405'),(39,60,'com.keji.danti705'),(40,64,'com.keji.danti413'),(41,66,'com.android.settings'),(42,70,'com.keji.danti413'),(43,72,'com.keji.danti424'),(44,73,'com.keji.danti413'),(45,74,'com.keji.danti673'),(46,77,'com.keji.danti405'),(47,75,'com.keji.danti652'),(48,76,'com.keji.danti424'),(49,79,'com.keji.danti424'),(50,80,'com.keji.danti424');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,6,0),(5,17,0),(6,18,0),(7,56,0),(8,57,0),(9,77,0),(10,84,0),(11,82,0),(12,91,0),(13,99,0),(14,102,0),(15,106,0),(16,107,0),(17,110,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,8,1,0),(11,9,1,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,1,0),(19,17,0,0),(20,18,1,0),(21,19,0,0),(22,20,0,0),(23,22,0,0),(24,21,0,0),(25,23,0,0),(26,24,0,0),(27,25,0,0),(28,26,1,0),(29,26,1,0),(30,28,0,0),(31,27,1,0),(32,29,0,0),(33,30,1,0),(34,31,1,0),(35,32,0,0),(36,30,1,0),(37,33,0,0),(38,34,1,0),(39,35,0,0),(40,36,0,0),(41,37,0,0),(42,38,0,0),(43,34,1,0),(44,39,0,0),(45,40,0,0),(46,41,0,0),(47,42,1,0),(48,43,0,0),(49,44,0,0),(50,42,1,0),(51,45,0,0),(52,46,0,0),(53,47,0,0),(54,48,0,0),(55,49,1,0),(56,50,0,0),(57,51,0,0),(58,52,0,0),(59,53,1,0),(60,54,0,0),(61,53,1,0),(62,56,0,0),(63,55,1,0),(64,57,0,0),(65,55,1,0),(66,58,0,0),(67,59,1,0),(68,60,1,0),(69,61,1,0),(70,62,0,0),(71,63,1,0),(72,64,0,0),(73,65,0,0),(74,66,0,0),(75,67,0,0),(76,68,0,0),(77,69,0,0),(78,70,1,0),(79,71,0,0),(80,72,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,38,18,2,NULL),(2,43,18,2,NULL),(3,7,18,2,NULL),(4,8,18,2,NULL),(5,47,18,2,NULL),(6,50,18,2,NULL),(7,59,18,2,NULL),(8,61,18,2,NULL),(9,38,84,2,NULL),(10,43,84,2,NULL),(11,7,84,2,NULL),(12,8,84,2,NULL),(13,47,84,2,NULL),(14,50,84,2,NULL),(15,59,84,2,NULL),(16,61,84,2,NULL),(17,38,102,2,NULL),(18,43,102,2,NULL),(19,7,102,2,NULL),(20,8,102,2,NULL),(21,47,102,2,NULL),(22,50,102,2,NULL),(23,59,102,2,NULL),(24,61,102,2,NULL),(25,38,56,2,NULL),(26,43,56,2,NULL),(27,7,56,2,NULL),(28,8,56,2,NULL),(29,47,56,2,NULL),(30,50,56,2,NULL),(31,59,56,2,NULL),(32,61,56,2,NULL),(33,38,107,2,NULL),(34,43,107,2,NULL),(35,7,107,2,NULL),(36,8,107,2,NULL),(37,47,107,2,NULL),(38,50,107,2,NULL),(39,59,107,2,NULL),(40,61,107,2,NULL),(41,38,110,2,NULL),(42,43,110,2,NULL),(43,7,110,2,NULL),(44,8,110,2,NULL),(45,47,110,2,NULL),(46,50,110,2,NULL),(47,59,110,2,NULL),(48,61,110,2,NULL),(49,38,1,2,NULL),(50,38,6,2,NULL),(51,43,1,2,NULL),(52,43,6,2,NULL),(53,7,1,2,NULL),(54,7,6,2,NULL),(55,8,1,2,NULL),(56,8,6,2,NULL),(57,47,1,2,NULL),(58,47,6,2,NULL),(59,50,1,2,NULL),(60,50,6,2,NULL),(61,59,1,2,NULL),(62,59,6,2,NULL),(63,61,1,2,NULL),(64,61,6,2,NULL),(65,38,77,2,NULL),(66,47,77,2,NULL),(67,43,77,2,NULL),(68,50,77,2,NULL),(69,38,2,2,NULL),(70,47,2,2,NULL),(71,43,2,2,NULL),(72,50,2,2,NULL),(73,38,91,2,NULL),(74,47,91,2,NULL),(75,43,91,2,NULL),(76,50,91,2,NULL),(77,38,4,2,NULL),(78,47,4,2,NULL),(79,43,4,2,NULL),(80,50,4,2,NULL),(81,38,57,2,NULL),(82,47,57,2,NULL),(83,43,57,2,NULL),(84,50,57,2,NULL),(85,38,82,2,NULL),(86,47,82,2,NULL),(87,43,82,2,NULL),(88,50,82,2,NULL),(89,38,99,2,NULL),(90,47,99,2,NULL),(91,43,99,2,NULL),(92,50,99,2,NULL),(93,38,17,2,NULL),(94,47,17,2,NULL),(95,43,17,2,NULL),(96,50,17,2,NULL),(97,38,106,2,NULL),(98,47,106,2,NULL),(99,43,106,2,NULL),(100,50,106,2,NULL),(101,7,77,2,NULL),(102,7,99,2,NULL),(103,8,77,2,NULL),(104,8,99,2,NULL),(105,59,77,2,NULL),(106,59,99,2,NULL),(107,61,77,2,NULL),(108,61,99,2,NULL),(109,7,2,2,NULL),(110,8,2,2,NULL),(111,59,2,2,NULL),(112,61,2,2,NULL),(113,7,91,2,NULL),(114,8,91,2,NULL),(115,7,4,2,NULL),(116,8,4,2,NULL),(117,7,57,2,NULL),(118,8,57,2,NULL),(119,7,82,2,NULL),(120,8,82,2,NULL),(121,7,17,2,NULL),(122,8,17,2,NULL),(123,7,106,2,NULL),(124,8,106,2,NULL),(125,59,91,2,NULL),(126,61,91,2,NULL),(127,59,4,2,NULL),(128,61,4,2,NULL),(129,59,57,2,NULL),(130,61,57,2,NULL),(131,59,82,2,NULL),(132,61,82,2,NULL),(133,59,17,2,NULL),(134,61,17,2,NULL),(135,59,106,2,NULL),(136,61,106,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'one',NULL,NULL,NULL),(23,NULL,NULL,'one',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,1,8),(10,2,2),(11,1,9),(12,3,1),(13,2,3),(14,1,10),(15,3,2),(16,2,4),(17,1,11),(18,3,4),(19,2,5),(20,4,1),(21,1,12),(22,3,5),(23,4,2),(24,2,6),(25,1,13),(26,3,6),(27,2,7),(28,4,3),(29,1,14),(30,3,8),(31,2,8),(32,4,4),(33,1,15),(34,3,9),(35,4,5),(36,2,9),(37,1,17),(38,3,10),(39,2,10),(40,4,6),(41,1,16),(42,3,11),(43,5,1),(44,4,7),(45,2,11),(46,1,18),(47,5,2),(48,3,12),(49,6,1),(50,2,12),(51,4,8),(52,5,3),(53,6,2),(54,3,13),(55,4,9),(56,2,13),(57,6,4),(58,5,4),(59,3,14),(60,4,10),(61,2,14),(62,6,5),(63,5,5),(64,3,15),(65,4,11),(66,2,15),(67,6,6),(68,5,6),(69,3,17),(70,4,12),(71,2,17),(72,5,7),(73,6,8),(74,3,16),(75,2,16),(76,4,13),(77,6,9),(78,5,8),(79,3,19),(80,2,18),(81,4,14),(82,6,10),(83,5,9),(84,3,18),(85,4,15),(86,5,10),(87,6,11),(88,4,17),(89,6,12),(90,5,11),(91,4,16),(92,6,13),(93,5,12),(94,4,18),(95,6,14),(96,5,13),(97,5,14),(98,6,15),(99,5,15),(100,6,17),(101,7,1),(102,6,16),(103,5,17),(104,7,2),(105,6,19),(106,5,16),(107,7,4),(108,5,18),(109,6,18),(110,7,5),(111,7,6),(112,7,8),(113,7,9),(114,7,10),(115,7,11),(116,7,12),(117,7,13),(118,7,14),(119,7,15),(120,7,17),(121,7,16),(122,7,19),(123,7,18);
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

-- Dump completed on 2015-10-12  3:30:23
