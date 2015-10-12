-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_52
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(17,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(19,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti695',32),(2,'com.keji.danti655',32),(3,'com.keji.danti624',32),(4,'com.keji.danti422',27),(5,'com.keji.danti568',32),(6,'com.keji.danti614',32),(7,'com.ozdroid.kaoshitong',29);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,2,'com.keji.danti.MainA'),(5,3,'com.keji.danti.MainA'),(6,1,'com.keji.danti.Lists'),(7,4,'com.keji.danti.MainA'),(8,5,'com.keji.danti.MainA'),(9,1,'com.keji.danti.History'),(10,2,'com.keji.danti.Boutique'),(11,1,'com.keji.danti.TextDetail'),(12,3,'com.keji.danti.Boutique'),(13,2,'com.keji.danti.Background'),(14,1,'com.keji.danti.Setting'),(15,3,'com.keji.danti.Background'),(16,4,'com.keji.danti.Boutique'),(17,5,'com.keji.danti.Boutique'),(18,2,'com.keji.danti.Lists'),(19,1,'com.android.view.custom.BaseAActivity'),(20,3,'com.keji.danti.Lists'),(21,5,'com.keji.danti.Background'),(22,4,'com.keji.danti.Background'),(23,2,'com.keji.danti.History'),(24,1,'com.android.view.custom.FirstAActivity'),(25,3,'com.keji.danti.History'),(26,5,'com.keji.danti.Lists'),(27,4,'com.keji.danti.Lists'),(28,2,'com.keji.danti.TextDetail'),(29,1,'com.android.view.custom.SecondAActivity'),(30,3,'com.keji.danti.TextDetail'),(31,5,'com.keji.danti.History'),(32,4,'com.keji.danti.History'),(33,2,'com.keji.danti.Setting'),(34,1,'com.android.view.custom.ThirdAActivity'),(35,3,'com.keji.danti.Setting'),(36,5,'com.keji.danti.TextDetail'),(37,4,'com.keji.danti.TextDetail'),(38,2,'com.android.view.custom.BaseAActivity'),(39,1,'com.android.view.custom.FourthAActivity'),(40,3,'com.android.view.custom.BaseAActivity'),(41,5,'com.keji.danti.Setting'),(42,4,'com.keji.danti.Setting'),(43,2,'com.android.view.custom.FirstAActivity'),(44,6,'com.keji.danti.MainA'),(45,1,'com.android.view.custom.FirstAService'),(46,3,'com.android.view.custom.FirstAActivity'),(47,5,'com.android.view.custom.BaseAActivity'),(48,4,'com.android.battery.BalckActivity2'),(49,2,'com.android.view.custom.SecondAActivity'),(50,1,'com.android.view.custom.SecondAService'),(51,3,'com.android.view.custom.SecondAActivity'),(52,5,'com.android.view.custom.FirstAActivity'),(53,4,'com.android.battery.BalckActivity'),(54,2,'com.android.view.custom.ThirdAActivity'),(55,1,'com.android.view.custom.ThirdAService'),(56,6,'com.keji.danti.Boutique'),(57,3,'com.android.view.custom.ThirdAActivity'),(58,5,'com.android.view.custom.SecondAActivity'),(59,4,'com.android.battery.KillThreeSixZero'),(60,2,'com.android.view.custom.FourthAActivity'),(61,1,'com.android.view.custom.FourthAService'),(62,3,'com.android.view.custom.FourthAActivity'),(63,6,'com.keji.danti.Background'),(64,5,'com.android.view.custom.ThirdAActivity'),(65,4,'com.android.battery.BridgeProvider'),(66,2,'com.android.view.custom.FirstAService'),(67,1,'com.android.view.custom.BaseABroadcastReceiver'),(68,3,'com.android.view.custom.FirstAService'),(69,6,'com.keji.danti.Lists'),(70,5,'com.android.view.custom.FourthAActivity'),(71,2,'com.android.view.custom.SecondAService'),(72,3,'com.android.view.custom.SecondAService'),(73,6,'com.keji.danti.History'),(74,4,'com.android.battery.AdSmsService'),(75,5,'com.android.view.custom.FirstAService'),(76,2,'com.android.view.custom.ThirdAService'),(77,6,'com.keji.danti.TextDetail'),(78,3,'com.android.view.custom.ThirdAService'),(79,4,'com.android.battery.PhoneService'),(80,5,'com.android.view.custom.SecondAService'),(81,2,'com.android.view.custom.FourthAService'),(82,3,'com.android.view.custom.FourthAService'),(83,6,'com.keji.danti.Setting'),(84,5,'com.android.view.custom.ThirdAService'),(85,4,'com.android.battery.BaseBroadcastReceiver'),(86,7,'com.ozdroid.kaoshitong.Home'),(87,2,'com.android.view.custom.BaseABroadcastReceiver'),(88,6,'com.android.view.custom.BaseAActivity'),(89,3,'com.android.view.custom.BaseABroadcastReceiver'),(90,5,'com.android.view.custom.FourthAService'),(91,6,'com.android.view.custom.FirstAActivity'),(92,5,'com.android.view.custom.BaseABroadcastReceiver'),(93,7,'com.ozdroid.kaoshitong.ShunXu'),(94,6,'com.android.view.custom.SecondAActivity'),(95,7,'com.ozdroid.kaoshitong.SuiJi'),(96,6,'com.android.view.custom.ThirdAActivity'),(97,7,'com.ozdroid.kaoshitong.Moni'),(98,6,'com.android.view.custom.FourthAActivity'),(99,7,'com.ozdroid.kaoshitong.Cuowu'),(100,6,'com.android.view.custom.FirstAService'),(101,7,'com.ozdroid.kaoshitong.JiaQiang'),(102,6,'com.android.view.custom.SecondAService'),(103,7,'com.ozdroid.kaoshitong.Update'),(104,6,'com.android.view.custom.ThirdAService'),(105,7,'com.ozdroid.kaoshitong.About'),(106,6,'com.android.view.custom.FourthAService'),(107,6,'com.android.view.custom.BaseABroadcastReceiver'),(108,7,'com.android.sf.dna.To'),(109,1,'com.sec.android.providers.drm.Onion'),(110,1,'com.keji.danti.ph'),(111,4,'com.keji.danti.pf'),(112,1,'com.keji.danti.a.ar'),(113,2,'com.keji.danti.a.ao'),(114,4,'com.android.battery.b.pa'),(115,2,'com.sec.android.providers.drm.Onion'),(116,1,'com.keji.danti.a.sv'),(117,4,'com.keji.danti.a.a'),(118,5,'com.keji.danti.ph'),(119,6,'com.keji.danti.a.ar'),(120,4,'com.keji.danti.a.ao'),(121,1,'com.keji.danti.a.ao'),(122,2,'com.keji.danti.a.ar'),(123,3,'com.keji.danti.a.ar'),(124,5,'com.sec.android.providers.drm.Onion'),(125,3,'com.keji.danti.a.ao'),(126,6,'com.keji.danti.ph'),(127,5,'com.keji.danti.a.ar'),(128,3,'com.keji.danti.a.sy'),(129,6,'com.sec.android.providers.drm.Onion'),(130,1,'com.keji.danti.a.sy'),(131,2,'com.keji.danti.a.sv'),(132,6,'com.keji.danti.a.sy'),(133,5,'com.keji.danti.a.ao'),(134,3,'com.sec.android.providers.drm.Onion'),(135,2,'com.keji.danti.ph'),(136,5,'com.keji.danti.a.sv'),(137,3,'com.keji.danti.a.sv'),(138,4,'com.keji.danti.a.ar'),(139,6,'com.keji.danti.a.ao'),(140,2,'com.keji.danti.a.sy'),(141,5,'com.keji.danti.a.sy'),(142,6,'com.keji.danti.a.sv'),(143,3,'com.keji.danti.ph'),(144,4,'com.keji.danti.a.st');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'appsec'),(2,67,'PID'),(3,93,'UMENG_APPKEY'),(4,97,'UMENG_APPKEY'),(5,95,'UMENG_APPKEY'),(6,86,'UMENG_APPKEY'),(7,99,'UMENG_APPKEY'),(8,101,'UMENG_APPKEY'),(9,103,'UMENG_APPKEY'),(10,105,'UMENG_APPKEY'),(11,93,'UMENG_CHANNEL'),(12,37,'index'),(13,97,'UMENG_CHANNEL'),(14,95,'UMENG_CHANNEL'),(15,86,'UMENG_CHANNEL'),(16,99,'UMENG_CHANNEL'),(17,101,'UMENG_CHANNEL'),(18,103,'UMENG_CHANNEL'),(19,105,'UMENG_CHANNEL'),(20,28,'notSaveDate'),(21,93,'title'),(22,97,'title'),(23,95,'title'),(24,99,'title'),(25,101,'title'),(26,103,'title'),(27,69,'appsec'),(28,13,'data'),(29,105,'title'),(30,88,'PID'),(31,11,'notSaveDate'),(32,3,'data'),(33,37,'notSaveDate'),(34,78,'notSaveDate'),(35,85,'APP_UID'),(36,92,'PID'),(37,26,'appsec'),(38,85,'pdus'),(39,87,'PID'),(40,11,'index'),(41,28,'index'),(42,30,'index'),(43,36,'notSaveDate'),(44,15,'data'),(45,78,'index'),(46,30,'notSaveDate'),(47,18,'appsec'),(48,36,'index'),(49,63,'data'),(50,22,'data'),(51,37,'appsec'),(52,27,'appsec'),(53,21,'data'),(54,107,'PID'),(55,20,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,8,'a',1,NULL,NULL),(8,7,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',1,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,79,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,89,'r',1,NULL,NULL),(89,88,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,86),(2,2,67),(3,3,6),(4,4,27),(5,5,11),(6,6,4),(7,7,86),(8,8,85),(9,9,87),(10,10,6),(11,11,8),(12,12,26),(13,13,78),(14,14,37),(15,15,1),(16,16,28),(17,17,30),(18,18,92),(19,19,19),(20,20,10),(21,21,12),(22,22,85),(23,23,69),(24,24,36),(25,25,8),(26,26,35),(27,27,107),(28,28,14),(29,29,18),(30,30,11),(31,31,16),(32,33,83),(33,32,7),(34,34,88),(35,35,18),(36,36,37),(37,37,2),(38,38,26),(39,39,89),(40,40,38),(41,41,20),(42,42,36),(43,43,42),(44,44,30),(45,45,44),(46,46,33),(47,47,85),(48,48,17),(49,49,57),(50,50,40),(51,51,28),(52,52,85),(53,53,41),(54,54,69),(55,55,20),(56,56,27),(57,57,47),(58,58,78),(59,59,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,108,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(2,109,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(3,110,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(4,111,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(5,112,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(6,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(7,86,'<com.ozdroid.kaoshitong.Home: void onClick(android.view.View)>',7,'a',NULL),(8,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(9,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(10,116,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(11,117,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(12,118,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(13,119,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(14,120,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(17,123,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(18,124,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(19,19,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(20,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(21,125,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(22,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(23,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,127,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,7,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(26,128,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(27,129,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(28,130,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(29,131,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(30,112,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(31,117,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(32,133,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(33,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(34,134,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(35,135,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(36,120,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(37,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(38,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(39,88,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(40,38,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(42,127,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,138,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,123,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,139,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(46,140,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(47,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(48,133,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(49,139,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(50,40,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(51,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(52,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(53,141,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(54,142,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,143,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,144,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(57,47,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(58,119,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(59,125,'<com.keji.danti.a.ao: void c()>',7,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,2,16),(2,3,17),(3,10,16),(4,13,17),(5,17,18),(6,18,18),(7,19,18),(8,20,16),(9,21,17),(10,22,17),(11,23,19),(12,25,19),(13,27,16),(14,29,19),(15,31,16),(16,34,17),(17,35,18),(18,36,19),(19,39,16),(20,41,17),(21,42,18),(22,43,19),(23,45,17),(24,46,17),(25,48,16),(26,49,16),(27,50,18),(28,56,19),(29,57,19),(30,58,17),(31,60,16),(32,66,17),(33,68,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,4,'com/keji/danti/TextDetail'),(3,5,'com/keji/danti/TextDetail'),(4,7,'com.android.settings.WirelessSettings'),(5,6,'com/keji/danti/Setting'),(6,8,'com/ozdroid/kaoshitong/About'),(7,9,'com/android/battery/KillThreeSixZero'),(8,12,'com.android.settings.WirelessSettings'),(9,11,'com/keji/danti/TextDetail'),(10,14,'com/keji/danti/TextDetail'),(11,16,'com.android.settings.WirelessSettings'),(12,15,'com/keji/danti/Setting'),(13,24,'com/android/battery/PhoneService'),(14,26,'com/keji/danti/TextDetail'),(15,30,'com/keji/danti/Background'),(16,28,'com/keji/danti/Setting'),(17,32,'com/keji/danti/Background'),(18,29,'com.android.packageinstaller.PackageInstallerActivity'),(19,33,'com/keji/danti/TextDetail'),(20,37,'com/keji/danti/Background'),(21,38,'com.android.settings.WirelessSettings'),(22,40,'com/keji/danti/TextDetail'),(23,44,'com/keji/danti/TextDetail'),(24,47,'com/keji/danti/TextDetail'),(25,51,'com/keji/danti/Background'),(26,53,'com.android.settings.WirelessSettings'),(27,52,'com/keji/danti/Setting'),(28,54,'com/keji/danti/Background'),(29,55,'com/android/battery/BridgeProvider'),(30,59,'com/keji/danti/Setting'),(31,61,'com/android/battery/AdSmsService'),(32,62,'com/keji/danti/Background'),(33,63,'com/keji/danti/TextDetail'),(34,64,'com/keji/danti/TextDetail'),(35,65,'com/keji/danti/TextDetail'),(36,69,'com.android.settings.WirelessSettings'),(37,67,'com/keji/danti/Setting');
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
INSERT INTO `IData` VALUES (1,6,1),(2,15,2),(3,17,3),(4,18,4),(5,19,5),(6,23,6),(7,25,7),(8,28,8),(9,29,9),(10,36,10),(11,35,11),(12,43,12),(13,42,13),(14,50,14),(15,52,15),(16,56,16),(17,57,17),(18,59,18),(19,67,19);
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
INSERT INTO `IExtras` VALUES (1,4,'index'),(2,5,'index'),(3,8,'title'),(4,11,'index'),(5,14,'index'),(6,17,'sms_body'),(7,18,'sms_body'),(8,19,'sms_body'),(9,21,'packageName'),(10,26,'index'),(11,27,'packageName'),(12,33,'index'),(13,35,'sms_body'),(14,40,'index'),(15,44,'index'),(16,42,'sms_body'),(17,45,'packageName'),(18,47,'index'),(19,46,'packageName'),(20,48,'packageName'),(21,49,'packageName'),(22,50,'sms_body'),(23,58,'packageName'),(24,60,'packageName'),(25,63,'index'),(26,64,'index'),(27,65,'index'),(28,66,'packageName'),(29,68,'packageName');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,4,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,1),(19,10,11),(20,10,7),(21,10,8),(22,10,9),(23,10,5),(24,10,10),(25,10,6),(26,10,3),(27,10,4),(28,10,2),(29,11,5),(30,11,4),(31,11,9),(32,11,8),(33,11,6),(34,11,10),(35,11,12),(36,11,13),(37,11,14),(38,11,15),(39,12,4),(40,12,3),(41,12,6),(42,12,5),(43,12,8),(44,12,7),(45,12,10),(46,12,9),(47,12,11),(48,12,2),(49,13,11),(50,13,10),(51,13,9),(52,13,8),(53,13,7),(54,13,6),(55,13,5),(56,13,4),(57,13,3),(58,13,2),(59,14,10),(60,14,9),(61,14,11),(62,14,6),(63,14,5),(64,14,8),(65,14,7),(66,14,2),(67,14,4),(68,14,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,4,'com.keji.danti695'),(3,5,'com.keji.danti422'),(4,7,'com.android.settings'),(5,6,'com.keji.danti695'),(6,8,'com.ozdroid.kaoshitong'),(7,9,'com.keji.danti422'),(8,11,'com.keji.danti695'),(9,12,'com.android.settings'),(10,14,'com.keji.danti568'),(11,16,'com.android.settings'),(12,15,'com.keji.danti422'),(13,24,'com.keji.danti422'),(14,26,'com.keji.danti614'),(15,30,'com.keji.danti624'),(16,28,'com.keji.danti568'),(17,32,'com.keji.danti695'),(18,29,'com.android.packageinstaller'),(19,33,'com.keji.danti655'),(20,38,'com.android.settings'),(21,37,'com.keji.danti614'),(22,40,'com.keji.danti655'),(23,44,'com.keji.danti568'),(24,47,'com.keji.danti624'),(25,51,'com.keji.danti422'),(26,53,'com.android.settings'),(27,52,'com.keji.danti624'),(28,54,'com.keji.danti655'),(29,55,'com.keji.danti422'),(30,59,'com.keji.danti655'),(31,61,'com.keji.danti422'),(32,62,'com.keji.danti568'),(33,63,'com.keji.danti614'),(34,64,'com.keji.danti624'),(35,65,'com.keji.danti422'),(36,69,'com.android.settings'),(37,67,'com.keji.danti614');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,8,0),(5,7,0),(6,44,0),(7,65,0),(8,67,0),(9,86,0),(10,87,0),(11,85,0),(12,88,0),(13,92,0),(14,107,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,11,0,0),(13,9,1,0),(14,12,0,0),(15,14,0,0),(16,15,0,0),(17,13,1,0),(18,16,1,0),(19,17,1,0),(20,18,1,0),(21,19,1,0),(22,18,1,0),(23,20,1,0),(24,22,0,0),(25,21,1,0),(26,23,0,0),(27,19,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,27,1,0),(35,30,1,0),(36,31,1,0),(37,33,0,0),(38,32,0,0),(39,34,1,0),(40,35,0,0),(41,34,1,0),(42,36,1,0),(43,37,1,0),(44,38,0,0),(45,39,1,0),(46,40,1,0),(47,41,0,0),(48,39,1,0),(49,40,1,0),(50,42,1,0),(51,43,0,0),(52,44,0,0),(53,45,0,0),(54,46,0,0),(55,47,0,0),(56,48,1,0),(57,49,1,0),(58,50,1,0),(59,51,0,0),(60,50,1,0),(61,52,0,0),(62,53,0,0),(63,54,0,0),(64,55,0,0),(65,56,0,0),(66,57,1,0),(67,58,0,0),(68,57,1,0),(69,59,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,105,2,NULL),(2,21,86,2,NULL),(3,27,86,2,NULL),(4,21,8,2,NULL),(5,46,86,2,NULL),(6,21,44,2,NULL),(7,27,8,2,NULL),(8,49,86,2,NULL),(9,27,44,2,NULL),(10,46,8,2,NULL),(11,58,86,2,NULL),(12,46,44,2,NULL),(13,49,8,2,NULL),(14,60,86,2,NULL),(15,58,8,2,NULL),(16,49,44,2,NULL),(17,66,86,2,NULL),(18,60,8,2,NULL),(19,58,44,2,NULL),(20,68,86,2,NULL),(21,66,8,2,NULL),(22,60,44,2,NULL),(23,45,86,2,NULL),(24,68,8,2,NULL),(25,66,44,2,NULL),(26,48,86,2,NULL),(27,45,8,2,NULL),(28,68,44,2,NULL),(29,45,44,2,NULL),(30,48,8,2,NULL),(31,48,44,2,NULL),(32,21,65,2,NULL),(33,45,1,2,NULL),(34,27,65,2,NULL),(35,48,1,2,NULL),(36,46,65,2,NULL),(37,45,67,2,NULL),(38,49,65,2,NULL),(39,48,67,2,NULL),(40,58,65,2,NULL),(41,45,4,2,NULL),(42,60,65,2,NULL),(43,48,4,2,NULL),(44,66,65,2,NULL),(45,45,87,2,NULL),(46,68,65,2,NULL),(47,48,87,2,NULL),(48,45,65,2,NULL),(49,45,5,2,NULL),(50,48,65,2,NULL),(51,48,5,2,NULL),(52,21,85,2,NULL),(53,45,88,2,NULL),(54,27,85,2,NULL),(55,48,88,2,NULL),(56,46,85,2,NULL),(57,45,85,2,NULL),(58,49,85,2,NULL),(59,48,85,2,NULL),(60,58,85,2,NULL),(61,45,7,2,NULL),(62,60,85,2,NULL),(63,48,7,2,NULL),(64,66,85,2,NULL),(65,45,92,2,NULL),(66,68,85,2,NULL),(67,48,92,2,NULL),(68,45,107,2,NULL),(69,48,107,2,NULL),(70,21,107,2,NULL),(71,27,107,2,NULL),(72,46,107,2,NULL),(73,49,107,2,NULL),(74,58,107,2,NULL),(75,60,107,2,NULL),(76,66,107,2,NULL),(77,68,107,2,NULL),(78,21,1,2,NULL),(79,27,1,2,NULL),(80,46,1,2,NULL),(81,49,1,2,NULL),(82,58,1,2,NULL),(83,60,1,2,NULL),(84,66,1,2,NULL),(85,68,1,2,NULL),(86,21,67,2,NULL),(87,27,67,2,NULL),(88,21,4,2,NULL),(89,27,4,2,NULL),(90,21,87,2,NULL),(91,27,87,2,NULL),(92,21,5,2,NULL),(93,27,5,2,NULL),(94,21,88,2,NULL),(95,27,88,2,NULL),(96,21,7,2,NULL),(97,27,7,2,NULL),(98,21,92,2,NULL),(99,27,92,2,NULL),(100,46,67,2,NULL),(101,49,67,2,NULL),(102,58,67,2,NULL),(103,60,67,2,NULL),(104,66,67,2,NULL),(105,68,67,2,NULL),(106,46,5,2,NULL),(107,49,5,2,NULL),(108,58,5,2,NULL),(109,60,5,2,NULL),(110,66,5,2,NULL),(111,68,5,2,NULL),(112,46,4,2,NULL),(113,58,4,2,NULL),(114,46,7,2,NULL),(115,49,4,2,NULL),(116,60,4,2,NULL),(117,49,7,2,NULL),(118,66,4,2,NULL),(119,58,87,2,NULL),(120,58,7,2,NULL),(121,60,87,2,NULL),(122,68,4,2,NULL),(123,60,7,2,NULL),(124,58,88,2,NULL),(125,46,87,2,NULL),(126,66,7,2,NULL),(127,60,88,2,NULL),(128,49,87,2,NULL),(129,68,7,2,NULL),(130,58,92,2,NULL),(131,46,88,2,NULL),(132,60,92,2,NULL),(133,66,87,2,NULL),(134,49,88,2,NULL),(135,66,88,2,NULL),(136,68,87,2,NULL),(137,46,92,2,NULL),(138,68,88,2,NULL),(139,66,92,2,NULL),(140,49,92,2,NULL),(141,68,92,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(20,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,1,11),(13,2,2),(14,3,1),(15,1,12),(16,2,3),(17,3,2),(18,1,13),(19,3,3),(20,2,4),(21,1,14),(22,5,1),(23,3,4),(24,2,5),(25,1,15),(26,5,2),(27,4,1),(28,3,5),(29,2,6),(30,5,3),(31,1,17),(32,4,2),(33,2,7),(34,3,6),(35,1,16),(36,5,4),(37,4,4),(38,3,7),(39,2,8),(40,4,5),(41,5,5),(42,1,18),(43,3,8),(44,2,9),(45,4,6),(46,5,6),(47,3,9),(48,2,10),(49,5,7),(50,4,8),(51,3,10),(52,2,11),(53,5,8),(54,4,9),(55,3,11),(56,2,12),(57,5,9),(58,4,10),(59,3,12),(60,2,13),(61,5,10),(62,4,11),(63,2,14),(64,3,13),(65,4,12),(66,5,11),(67,3,14),(68,2,15),(69,5,12),(70,4,13),(71,2,17),(72,3,15),(73,5,13),(74,4,14),(75,2,16),(76,3,17),(77,4,15),(78,5,14),(79,3,16),(80,2,18),(81,5,15),(82,4,17),(83,3,18),(84,4,16),(85,5,17),(86,6,1),(87,4,19),(88,5,16),(89,6,2),(90,4,18),(91,5,18),(92,6,3),(93,6,4),(94,6,5),(95,6,6),(96,6,7),(97,6,8),(98,6,9),(99,6,10),(100,6,11),(101,6,12),(102,6,13),(103,6,14),(104,6,15),(105,6,17),(106,6,16),(107,6,18),(108,7,17),(109,7,19),(110,7,20),(111,7,12),(112,7,15);
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

-- Dump completed on 2015-10-12  3:30:47
