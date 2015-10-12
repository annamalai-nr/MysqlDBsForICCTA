-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_44
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(15,'NULL-CONSTANT'),(5,'android.intent.action.ACTION_POWER_CONNECTED'),(7,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(4,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(6,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti710',32),(2,'com.keji.danti722',32),(3,'com.keji.danti569',32),(4,'com.keji.danti938',32),(5,'com.keji.danti918',32),(6,'com.keji.danti654',32),(7,'com.keji.danti677',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,1,'com.keji.danti.MainA'),(4,4,'com.keji.danti.MainA'),(5,3,'com.keji.danti.Boutique'),(6,1,'com.keji.danti.Boutique'),(7,3,'com.keji.danti.Background'),(8,1,'com.keji.danti.Background'),(9,4,'com.keji.danti.Boutique'),(10,3,'com.keji.danti.Lists'),(11,1,'com.keji.danti.Lists'),(12,4,'com.keji.danti.Background'),(13,3,'com.keji.danti.History'),(14,1,'com.keji.danti.History'),(15,3,'com.keji.danti.TextDetail'),(16,4,'com.keji.danti.Lists'),(17,1,'com.keji.danti.TextDetail'),(18,4,'com.keji.danti.History'),(19,3,'com.keji.danti.Setting'),(20,1,'com.keji.danti.Setting'),(21,5,'com.keji.danti.MainA'),(22,3,'com.android.view.custom.BaseAActivity'),(23,4,'com.keji.danti.TextDetail'),(24,1,'com.android.view.custom.BaseAActivity'),(25,6,'com.keji.danti.MainA'),(26,4,'com.keji.danti.Setting'),(27,3,'com.android.view.custom.FirstAActivity'),(28,1,'com.android.view.custom.FirstAActivity'),(29,5,'com.keji.danti.Boutique'),(30,4,'com.android.view.custom.BaseAActivity'),(31,3,'com.android.view.custom.SecondAActivity'),(32,1,'com.android.view.custom.SecondAActivity'),(33,7,'com.keji.danti.MainA'),(34,6,'com.keji.danti.Boutique'),(35,5,'com.keji.danti.Background'),(36,3,'com.android.view.custom.ThirdAActivity'),(37,4,'com.android.view.custom.FirstAActivity'),(38,1,'com.android.view.custom.ThirdAActivity'),(39,6,'com.keji.danti.Background'),(40,5,'com.keji.danti.Lists'),(41,3,'com.android.view.custom.FourthAActivity'),(42,4,'com.android.view.custom.SecondAActivity'),(43,1,'com.android.view.custom.FourthAActivity'),(44,5,'com.keji.danti.History'),(45,6,'com.keji.danti.Lists'),(46,7,'com.keji.danti.Boutique'),(47,4,'com.android.view.custom.ThirdAActivity'),(48,3,'com.android.view.custom.FirstAService'),(49,1,'com.android.view.custom.FirstAService'),(50,5,'com.keji.danti.TextDetail'),(51,6,'com.keji.danti.History'),(52,7,'com.keji.danti.Background'),(53,3,'com.android.view.custom.SecondAService'),(54,4,'com.android.view.custom.FourthAActivity'),(55,1,'com.android.view.custom.SecondAService'),(56,5,'com.keji.danti.Setting'),(57,6,'com.keji.danti.TextDetail'),(58,3,'com.android.view.custom.ThirdAService'),(59,7,'com.keji.danti.Lists'),(60,4,'com.android.view.custom.FirstAService'),(61,1,'com.android.view.custom.ThirdAService'),(62,5,'com.android.view.custom.BaseAActivity'),(63,6,'com.keji.danti.Setting'),(64,7,'com.keji.danti.History'),(65,3,'com.android.view.custom.FourthAService'),(66,4,'com.android.view.custom.SecondAService'),(67,1,'com.android.view.custom.FourthAService'),(68,6,'com.android.view.custom.BaseAActivity'),(69,5,'com.android.view.custom.FirstAActivity'),(70,7,'com.keji.danti.TextDetail'),(71,3,'com.android.view.custom.BaseABroadcastReceiver'),(72,4,'com.android.view.custom.ThirdAService'),(73,1,'com.android.view.custom.BaseABroadcastReceiver'),(74,5,'com.android.view.custom.SecondAActivity'),(75,6,'com.android.view.custom.FirstAActivity'),(76,4,'com.android.view.custom.FourthAService'),(77,7,'com.keji.danti.Setting'),(78,6,'com.android.view.custom.SecondAActivity'),(79,5,'com.android.view.custom.ThirdAActivity'),(80,7,'com.android.view.custom.BaseAActivity'),(81,4,'com.android.view.custom.BaseABroadcastReceiver'),(82,6,'com.android.view.custom.ThirdAActivity'),(83,5,'com.android.view.custom.FourthAActivity'),(84,7,'com.android.view.custom.FirstAActivity'),(85,5,'com.android.view.custom.FirstAService'),(86,6,'com.android.view.custom.FourthAActivity'),(87,7,'com.android.view.custom.SecondAActivity'),(88,5,'com.android.view.custom.SecondAService'),(89,6,'com.android.view.custom.FirstAService'),(90,7,'com.android.view.custom.ThirdAActivity'),(91,5,'com.android.view.custom.ThirdAService'),(92,6,'com.android.view.custom.SecondAService'),(93,7,'com.android.view.custom.FourthAActivity'),(94,6,'com.android.view.custom.ThirdAService'),(95,5,'com.android.view.custom.FourthAService'),(96,7,'com.android.view.custom.FirstAService'),(97,6,'com.android.view.custom.FourthAService'),(98,5,'com.android.view.custom.BaseABroadcastReceiver'),(99,7,'com.android.view.custom.SecondAService'),(100,6,'com.android.view.custom.BaseABroadcastReceiver'),(101,7,'com.android.view.custom.ThirdAService'),(102,7,'com.android.view.custom.FourthAService'),(103,7,'com.android.view.custom.BaseABroadcastReceiver'),(104,1,'com.keji.danti.a.ar'),(105,1,'com.keji.danti.a.ao'),(106,1,'com.keji.danti.a.sy'),(107,4,'com.keji.danti.a.ao'),(108,3,'com.keji.danti.a.ao'),(109,1,'com.keji.danti.a.sv'),(110,4,'com.sec.android.providers.drm.Onion'),(111,5,'com.keji.danti.a.ar'),(112,3,'com.keji.danti.a.ar'),(113,1,'com.sec.android.providers.drm.Onion'),(114,7,'com.keji.danti.a.ao'),(115,4,'com.keji.danti.a.sy'),(116,5,'com.keji.danti.a.ao'),(117,3,'com.keji.danti.a.sv'),(118,7,'com.keji.danti.a.ar'),(119,6,'com.keji.danti.ph'),(120,4,'com.keji.danti.a.ar'),(121,6,'com.keji.danti.a.sy'),(122,3,'com.sec.android.providers.drm.Onion'),(123,6,'com.sec.android.providers.drm.Onion'),(124,7,'com.sec.android.providers.drm.Onion'),(125,6,'com.keji.danti.a.ao'),(126,1,'com.keji.danti.ph'),(127,5,'com.keji.danti.a.sv'),(128,3,'com.keji.danti.a.sy'),(129,4,'com.keji.danti.a.sv'),(130,6,'com.keji.danti.a.ar'),(131,7,'com.keji.danti.a.sy'),(132,5,'com.keji.danti.a.sy'),(133,4,'com.keji.danti.ph'),(134,3,'com.keji.danti.ph'),(135,5,'com.sec.android.providers.drm.Onion'),(136,7,'com.keji.danti.a.sv'),(137,6,'com.keji.danti.a.sv'),(138,5,'com.keji.danti.ph'),(139,7,'com.keji.danti.ph');
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
INSERT INTO `ComponentExtras` VALUES (1,8,'data'),(2,80,'PID'),(3,10,'appsec'),(4,51,'notSaveDate'),(5,72,'index'),(6,13,'data'),(7,100,'PID'),(8,16,'index'),(9,40,'data'),(10,97,'PID'),(11,7,'data'),(12,57,'notSaveDate'),(13,72,'notSaveDate'),(14,45,'appsec'),(15,39,'appsec'),(16,71,'PID'),(17,23,'index'),(18,73,'PID'),(19,17,'notSaveDate'),(20,11,'appsec'),(21,103,'PID'),(22,23,'notSaveDate'),(23,15,'appsec'),(24,53,'data'),(25,16,'notSaveDate'),(26,17,'index'),(27,59,'appsec'),(28,35,'data'),(29,51,'index'),(30,57,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,12,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'s',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,65,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,68,'a',0,NULL,NULL),(70,72,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,70,'a',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,78,'a',0,NULL,NULL),(80,81,'r',1,NULL,NULL),(81,80,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,98,'r',1,NULL,NULL),(98,97,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'r',1,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,17),(2,2,6),(3,3,20),(4,4,9),(5,5,5),(6,6,11),(7,7,80),(8,8,51),(9,9,16),(10,10,73),(11,11,46),(12,12,26),(13,13,24),(14,14,29),(15,15,10),(16,16,72),(17,17,45),(18,18,23),(19,19,3),(20,20,21),(21,21,1),(22,22,81),(23,23,63),(24,24,23),(25,25,62),(26,26,71),(27,27,17),(28,28,100),(29,29,103),(30,30,4),(31,31,16),(32,32,51),(33,33,25),(34,34,11),(35,35,31),(36,36,72),(37,37,34),(38,38,39),(39,39,18),(40,40,15),(41,41,57),(42,42,22),(43,43,77),(44,44,56),(45,45,33),(46,46,15),(47,47,69),(48,48,10),(49,49,97),(50,50,59),(51,51,45),(52,52,39),(53,53,59),(54,54,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,104,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(2,105,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(3,106,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(4,107,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(5,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(6,109,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(7,110,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(8,111,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(9,112,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(10,113,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(11,114,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(12,115,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(13,24,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(14,116,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(15,117,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(16,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(17,119,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(19,105,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(20,116,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(21,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(22,80,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(24,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,62,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,122,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,104,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(28,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(29,124,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(30,107,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(31,112,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(32,111,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(33,125,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(34,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,30,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(36,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(37,125,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(38,127,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(39,128,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(40,129,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(41,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(42,22,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(43,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(45,114,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(46,133,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(47,68,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(48,134,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(49,135,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(50,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(51,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(52,138,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(53,139,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,13),(2,4,13),(3,5,13),(4,7,14),(5,8,15),(6,10,16),(7,11,14),(8,12,13),(9,13,15),(10,15,15),(11,16,13),(12,18,14),(13,19,16),(14,21,16),(15,25,15),(16,28,14),(17,29,15),(18,30,14),(19,31,16),(20,32,14),(21,33,14),(22,34,15),(23,35,15),(24,37,14),(25,38,16),(26,40,15),(27,43,15),(28,45,13),(29,46,14),(30,51,15),(31,50,16),(32,53,14),(33,57,15),(34,59,14),(35,60,14),(36,62,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/Setting'),(2,3,'com/keji/danti/Background'),(3,6,'com/keji/danti/TextDetail'),(4,9,'com/keji/danti/Setting'),(5,14,'com/keji/danti/Background'),(6,17,'com/keji/danti/TextDetail'),(7,20,'com/keji/danti/TextDetail'),(8,22,'com.android.settings.WirelessSettings'),(9,23,'com.android.settings.WirelessSettings'),(10,24,'com.android.settings.WirelessSettings'),(11,26,'com/keji/danti/Background'),(12,27,'com/keji/danti/Setting'),(13,36,'com.android.settings.WirelessSettings'),(14,41,'com.android.settings.WirelessSettings'),(15,39,'com/keji/danti/Setting'),(16,42,'com/keji/danti/TextDetail'),(17,44,'com/keji/danti/Setting'),(18,48,'com/keji/danti/Background'),(19,47,'com/keji/danti/TextDetail'),(20,52,'com/keji/danti/Background'),(21,49,'com/keji/danti/TextDetail'),(22,54,'com/keji/danti/Background'),(23,55,'com.android.settings.WirelessSettings'),(24,56,'com/keji/danti/TextDetail'),(25,58,'com/keji/danti/TextDetail'),(26,61,'com/keji/danti/TextDetail'),(27,63,'com/keji/danti/TextDetail'),(28,64,'com/keji/danti/TextDetail'),(29,65,'com/keji/danti/TextDetail'),(30,66,'com/keji/danti/Setting');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,3),(4,5,4),(5,9,5),(6,10,6),(7,12,7),(8,16,8),(9,19,9),(10,21,10),(11,27,11),(12,31,12),(13,39,13),(14,38,14),(15,44,15),(16,45,16),(17,50,17),(18,66,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'index'),(2,10,'sms_body'),(3,15,'packageName'),(4,17,'index'),(5,18,'packageName'),(6,20,'index'),(7,19,'sms_body'),(8,21,'sms_body'),(9,25,'packageName'),(10,28,'packageName'),(11,29,'packageName'),(12,31,'sms_body'),(13,33,'packageName'),(14,38,'sms_body'),(15,42,'index'),(16,43,'packageName'),(17,46,'packageName'),(18,47,'index'),(19,49,'index'),(20,51,'packageName'),(21,50,'sms_body'),(22,53,'packageName'),(23,56,'index'),(24,57,'packageName'),(25,58,'index'),(26,60,'packageName'),(27,61,'index'),(28,63,'index'),(29,64,'index'),(30,65,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,12),(12,7,11),(13,7,10),(14,7,3),(15,7,4),(16,7,5),(17,8,12),(18,8,11),(19,8,8),(20,8,7),(21,8,10),(22,8,9),(23,8,5),(24,8,6),(25,8,3),(26,8,4),(27,9,12),(28,9,11),(29,9,10),(30,9,9),(31,9,8),(32,9,4),(33,9,5),(34,9,6),(35,9,7),(36,9,3),(37,10,11),(38,10,7),(39,10,12),(40,10,8),(41,10,9),(42,10,5),(43,10,10),(44,10,6),(45,10,3),(46,10,4),(47,11,5),(48,11,4),(49,11,3),(50,11,9),(51,11,8),(52,11,7),(53,11,6),(54,11,10),(55,11,11),(56,11,12),(57,12,4),(58,12,3),(59,12,6),(60,12,5),(61,12,8),(62,12,7),(63,12,10),(64,12,9),(65,12,11),(66,12,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti710'),(2,3,'com.keji.danti710'),(3,6,'com.keji.danti710'),(4,9,'com.keji.danti569'),(5,14,'com.keji.danti938'),(6,17,'com.keji.danti569'),(7,20,'com.keji.danti654'),(8,22,'com.android.settings'),(9,23,'com.android.settings'),(10,24,'com.android.settings'),(11,26,'com.keji.danti654'),(12,27,'com.keji.danti938'),(13,36,'com.android.settings'),(14,41,'com.android.settings'),(15,39,'com.keji.danti918'),(16,42,'com.keji.danti710'),(17,44,'com.keji.danti677'),(18,48,'com.keji.danti569'),(19,47,'com.keji.danti918'),(20,52,'com.keji.danti677'),(21,49,'com.keji.danti938'),(22,54,'com.keji.danti918'),(23,55,'com.android.settings'),(24,56,'com.keji.danti938'),(25,58,'com.keji.danti569'),(26,61,'com.keji.danti677'),(27,63,'com.keji.danti654'),(28,64,'com.keji.danti918'),(29,65,'com.keji.danti677'),(30,66,'com.keji.danti654');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,21,0),(5,25,0),(6,33,0),(7,73,0),(8,71,0),(9,80,0),(10,97,0),(11,100,0),(12,103,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,9,0,0),(10,8,1,0),(11,10,1,0),(12,11,1,0),(13,10,1,0),(14,12,0,0),(15,13,1,0),(16,14,1,0),(17,15,0,0),(18,13,1,0),(19,16,1,0),(20,17,0,0),(21,18,1,0),(22,19,0,0),(23,20,0,0),(24,21,0,0),(25,22,1,0),(26,23,0,0),(27,24,0,0),(28,22,1,0),(29,25,1,0),(30,26,1,0),(31,27,1,0),(32,28,1,0),(33,25,1,0),(34,26,1,0),(35,28,1,0),(36,30,0,0),(37,29,1,0),(38,31,1,0),(39,32,0,0),(40,29,1,0),(41,33,0,0),(42,34,0,0),(43,35,1,0),(44,36,0,0),(45,37,1,0),(46,35,1,0),(47,38,0,0),(48,39,0,0),(49,40,0,0),(50,41,1,0),(51,42,1,0),(52,43,0,0),(53,42,1,0),(54,44,0,0),(55,45,0,0),(56,46,0,0),(57,47,1,0),(58,48,0,0),(59,49,1,0),(60,47,1,0),(61,50,0,0),(62,49,1,0),(63,51,0,0),(64,52,0,0),(65,53,0,0),(66,54,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,1,2,NULL),(2,18,1,2,NULL),(3,51,1,2,NULL),(4,53,1,2,NULL),(5,43,1,2,NULL),(6,46,1,2,NULL),(7,29,1,2,NULL),(8,33,1,2,NULL),(9,57,1,2,NULL),(10,60,1,2,NULL),(11,25,1,2,NULL),(12,28,1,2,NULL),(13,51,3,2,NULL),(14,53,3,2,NULL),(15,51,73,2,NULL),(16,53,73,2,NULL),(17,51,71,2,NULL),(18,53,71,2,NULL),(19,51,4,2,NULL),(20,53,4,2,NULL),(21,51,80,2,NULL),(22,53,80,2,NULL),(23,51,21,2,NULL),(24,53,21,2,NULL),(25,51,97,2,NULL),(26,53,97,2,NULL),(27,51,25,2,NULL),(28,53,25,2,NULL),(29,51,100,2,NULL),(30,53,100,2,NULL),(31,51,33,2,NULL),(32,53,33,2,NULL),(33,51,103,2,NULL),(34,53,103,2,NULL),(35,15,71,2,NULL),(36,18,71,2,NULL),(37,43,71,2,NULL),(38,46,71,2,NULL),(39,29,71,2,NULL),(40,33,71,2,NULL),(41,57,71,2,NULL),(42,60,71,2,NULL),(43,25,71,2,NULL),(44,28,71,2,NULL),(45,15,33,2,NULL),(46,18,33,2,NULL),(47,43,33,2,NULL),(48,46,33,2,NULL),(49,29,33,2,NULL),(50,33,33,2,NULL),(51,57,33,2,NULL),(52,60,33,2,NULL),(53,25,33,2,NULL),(54,28,33,2,NULL),(55,25,3,2,NULL),(56,28,3,2,NULL),(57,25,73,2,NULL),(58,28,73,2,NULL),(59,25,4,2,NULL),(60,28,4,2,NULL),(61,25,80,2,NULL),(62,28,80,2,NULL),(63,25,21,2,NULL),(64,28,21,2,NULL),(65,25,97,2,NULL),(66,28,97,2,NULL),(67,25,25,2,NULL),(68,28,25,2,NULL),(69,25,100,2,NULL),(70,28,100,2,NULL),(71,25,103,2,NULL),(72,28,103,2,NULL),(73,15,103,2,NULL),(74,18,103,2,NULL),(75,43,103,2,NULL),(76,46,103,2,NULL),(77,29,103,2,NULL),(78,33,103,2,NULL),(79,57,103,2,NULL),(80,60,103,2,NULL),(81,15,4,2,NULL),(82,18,4,2,NULL),(83,43,4,2,NULL),(84,46,4,2,NULL),(85,29,4,2,NULL),(86,33,4,2,NULL),(87,57,4,2,NULL),(88,60,4,2,NULL),(89,43,3,2,NULL),(90,46,3,2,NULL),(91,43,73,2,NULL),(92,46,73,2,NULL),(93,43,80,2,NULL),(94,46,80,2,NULL),(95,43,21,2,NULL),(96,46,21,2,NULL),(97,43,97,2,NULL),(98,46,97,2,NULL),(99,43,25,2,NULL),(100,46,25,2,NULL),(101,43,100,2,NULL),(102,46,100,2,NULL),(103,15,80,2,NULL),(104,18,80,2,NULL),(105,29,80,2,NULL),(106,33,80,2,NULL),(107,57,80,2,NULL),(108,60,80,2,NULL),(109,15,21,2,NULL),(110,18,21,2,NULL),(111,29,21,2,NULL),(112,33,21,2,NULL),(113,57,21,2,NULL),(114,60,21,2,NULL),(115,29,3,2,NULL),(116,33,3,2,NULL),(117,29,73,2,NULL),(118,33,73,2,NULL),(119,29,97,2,NULL),(120,33,97,2,NULL),(121,29,25,2,NULL),(122,33,25,2,NULL),(123,29,100,2,NULL),(124,33,100,2,NULL),(125,15,97,2,NULL),(126,18,97,2,NULL),(127,57,97,2,NULL),(128,60,97,2,NULL),(129,15,3,2,NULL),(130,15,25,2,NULL),(131,18,3,2,NULL),(132,18,25,2,NULL),(133,57,3,2,NULL),(134,57,25,2,NULL),(135,60,3,2,NULL),(136,60,25,2,NULL),(137,15,73,2,NULL),(138,57,73,2,NULL),(139,18,73,2,NULL),(140,60,73,2,NULL),(141,15,100,2,NULL),(142,57,100,2,NULL),(143,18,100,2,NULL),(144,60,100,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,3,1),(3,1,1),(4,2,2),(5,3,2),(6,1,2),(7,3,3),(8,2,3),(9,1,3),(10,3,4),(11,2,4),(12,1,4),(13,2,5),(14,3,5),(15,1,5),(16,3,6),(17,2,6),(18,1,6),(19,3,7),(20,2,7),(21,4,1),(22,1,7),(23,2,8),(24,3,8),(25,4,2),(26,1,8),(27,3,9),(28,2,9),(29,4,3),(30,1,9),(31,2,10),(32,4,4),(33,3,10),(34,1,10),(35,2,11),(36,3,11),(37,4,6),(38,1,11),(39,3,12),(40,2,12),(41,4,7),(42,1,12),(43,4,8),(44,3,13),(45,2,13),(46,1,13),(47,4,9),(48,2,14),(49,3,14),(50,1,14),(51,2,15),(52,4,10),(53,3,15),(54,1,15),(55,4,11),(56,3,17),(57,2,17),(58,1,17),(59,2,16),(60,3,16),(61,4,12),(62,1,16),(63,4,13),(64,2,18),(65,3,18),(66,1,18),(67,5,1),(68,4,14),(69,5,2),(70,6,1),(71,4,15),(72,5,3),(73,6,2),(74,4,17),(75,5,4),(76,6,3),(77,4,16),(78,5,6),(79,6,4),(80,4,18),(81,6,5),(82,5,7),(83,7,1),(84,5,8),(85,6,6),(86,7,2),(87,5,9),(88,6,7),(89,7,3),(90,5,10),(91,6,8),(92,7,4),(93,6,9),(94,5,11),(95,7,5),(96,5,12),(97,6,10),(98,7,6),(99,5,13),(100,6,11),(101,7,7),(102,6,12),(103,5,14),(104,7,8),(105,5,15),(106,6,13),(107,7,9),(108,5,17),(109,6,14),(110,7,10),(111,6,15),(112,5,16),(113,7,11),(114,5,18),(115,6,17),(116,7,12),(117,6,16),(118,7,13),(119,6,18),(120,7,14),(121,7,15),(122,7,17),(123,7,16),(124,7,18);
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

-- Dump completed on 2015-10-12  3:30:30
