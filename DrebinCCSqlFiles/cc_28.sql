-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_28
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
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(9,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti403',25),(2,'com.keji.danti641',32),(3,'com.keji.danti408',25),(4,'com.keji.danti731',32),(5,'com.keji.danti555',32),(6,'com.keji.danti672',32),(7,'wind.novel_heidao',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,3,'com.keji.danti.MainA'),(3,1,'com.keji.danti.Boutique'),(4,3,'com.keji.danti.Boutique'),(5,1,'com.keji.danti.Background'),(6,3,'com.keji.danti.Background'),(7,1,'com.keji.danti.Lists'),(8,4,'com.keji.danti.MainA'),(9,3,'com.keji.danti.Lists'),(10,2,'com.keji.danti.MainA'),(11,1,'com.keji.danti.History'),(12,3,'com.keji.danti.History'),(13,1,'com.keji.danti.TextDetail'),(14,3,'com.keji.danti.TextDetail'),(15,4,'com.keji.danti.Boutique'),(16,2,'com.keji.danti.Boutique'),(17,1,'com.keji.danti.Setting'),(18,7,'wind.novel_heidao.eReader'),(19,3,'com.keji.danti.Setting'),(20,5,'com.keji.danti.MainA'),(21,6,'com.keji.danti.MainA'),(22,4,'com.keji.danti.Background'),(23,2,'com.keji.danti.Background'),(24,1,'com.keji.danti.AdSmsService'),(25,3,'com.keji.danti.AdSmsService'),(26,4,'com.keji.danti.Lists'),(27,2,'com.keji.danti.Lists'),(28,1,'com.android.adomb.AdSmsService'),(29,3,'com.android.adomb.AdSmsService'),(30,7,'wind.novel_heidao.FileList'),(31,4,'com.keji.danti.History'),(32,5,'com.keji.danti.Boutique'),(33,6,'com.keji.danti.Boutique'),(34,2,'com.keji.danti.History'),(35,1,'com.android.adomb.SystemPlus'),(36,3,'com.android.adomb.SystemPlus'),(37,4,'com.keji.danti.TextDetail'),(38,7,'wind.novel_heidao.ViewFileAct'),(39,2,'com.keji.danti.TextDetail'),(40,6,'com.keji.danti.Background'),(41,5,'com.keji.danti.Background'),(42,1,'com.android.adomb.MainRun'),(43,3,'com.android.adomb.MainRun'),(44,7,'wind.novel_heidao.Settings'),(45,4,'com.keji.danti.Setting'),(46,6,'com.keji.danti.Lists'),(47,2,'com.keji.danti.Setting'),(48,5,'com.keji.danti.Lists'),(49,1,'com.keji.danti.BaseBroadcastReceiver'),(50,3,'com.keji.danti.BaseBroadcastReceiver'),(51,4,'com.android.view.custom.BaseAActivity'),(52,7,'wind.novel_heidao.chapter'),(53,5,'com.keji.danti.History'),(54,6,'com.keji.danti.History'),(55,2,'com.android.view.custom.BaseAActivity'),(56,4,'com.android.view.custom.FirstAActivity'),(57,7,'com.android.view.custom.BaseAActivity'),(58,5,'com.keji.danti.TextDetail'),(59,2,'com.android.view.custom.FirstAActivity'),(60,6,'com.keji.danti.TextDetail'),(61,3,'com.android.adomb.ForAlarm'),(62,1,'com.android.adomb.ForAlarm'),(63,4,'com.android.view.custom.SecondAActivity'),(64,7,'com.android.view.custom.FirstAActivity'),(65,2,'com.android.view.custom.SecondAActivity'),(66,5,'com.keji.danti.Setting'),(67,6,'com.keji.danti.Setting'),(68,4,'com.android.view.custom.ThirdAActivity'),(69,7,'com.android.view.custom.SecondAActivity'),(70,5,'com.android.view.custom.BaseAActivity'),(71,2,'com.android.view.custom.ThirdAActivity'),(72,6,'com.android.view.custom.BaseAActivity'),(73,4,'com.android.view.custom.FourthAActivity'),(74,7,'com.android.view.custom.ThirdAActivity'),(75,5,'com.android.view.custom.FirstAActivity'),(76,6,'com.android.view.custom.FirstAActivity'),(77,2,'com.android.view.custom.FourthAActivity'),(78,4,'com.android.view.custom.FirstAService'),(79,7,'com.android.view.custom.FourthAActivity'),(80,5,'com.android.view.custom.SecondAActivity'),(81,6,'com.android.view.custom.SecondAActivity'),(82,2,'com.android.view.custom.FirstAService'),(83,4,'com.android.view.custom.SecondAService'),(84,7,'com.android.view.custom.FirstAService'),(85,5,'com.android.view.custom.ThirdAActivity'),(86,2,'com.android.view.custom.SecondAService'),(87,6,'com.android.view.custom.ThirdAActivity'),(88,4,'com.android.view.custom.ThirdAService'),(89,7,'com.android.view.custom.SecondAService'),(90,6,'com.android.view.custom.FourthAActivity'),(91,2,'com.android.view.custom.ThirdAService'),(92,5,'com.android.view.custom.FourthAActivity'),(93,4,'com.android.view.custom.FourthAService'),(94,7,'com.android.view.custom.ThirdAService'),(95,6,'com.android.view.custom.FirstAService'),(96,2,'com.android.view.custom.FourthAService'),(97,5,'com.android.view.custom.FirstAService'),(98,7,'com.android.view.custom.FourthAService'),(99,4,'com.android.view.custom.BaseABroadcastReceiver'),(100,2,'com.android.view.custom.BaseABroadcastReceiver'),(101,6,'com.android.view.custom.SecondAService'),(102,5,'com.android.view.custom.SecondAService'),(103,7,'com.android.view.custom.BaseABroadcastReceiver'),(104,6,'com.android.view.custom.ThirdAService'),(105,5,'com.android.view.custom.ThirdAService'),(106,5,'com.android.view.custom.FourthAService'),(107,6,'com.android.view.custom.FourthAService'),(108,6,'com.android.view.custom.BaseABroadcastReceiver'),(109,5,'com.android.view.custom.BaseABroadcastReceiver'),(110,1,'com.keji.danti.a.st'),(111,1,'com.keji.danti.pf'),(112,3,'com.keji.danti.a.a'),(113,7,'com.sec.android.providers.drm.Onion'),(114,1,'com.keji.danti.a.ao'),(115,3,'com.keji.danti.pf'),(116,1,'com.keji.danti.a.a'),(117,3,'com.keji.danti.a.ao'),(118,3,'com.madhouse.android.ads._'),(119,1,'com.keji.danti.c.pa'),(120,2,'com.sec.android.providers.drm.Onion'),(121,4,'com.keji.danti.a.ao'),(122,5,'com.keji.danti.ph'),(123,6,'com.sec.android.providers.drm.Onion'),(124,2,'com.keji.danti.a.sy'),(125,1,'com.keji.danti.a.ar'),(126,5,'com.keji.danti.a.sy'),(127,6,'com.keji.danti.ph'),(128,2,'com.keji.danti.a.ar'),(129,4,'com.keji.danti.a.ar'),(130,5,'com.keji.danti.a.ar'),(131,3,'com.keji.danti.a.st'),(132,1,'com.madhouse.android.ads._'),(133,6,'com.keji.danti.a.ao'),(134,2,'com.keji.danti.a.ao'),(135,3,'com.keji.danti.c.pa'),(136,5,'com.keji.danti.a.sv'),(137,4,'com.keji.danti.a.sv'),(138,3,'com.keji.danti.a.ar'),(139,6,'com.keji.danti.a.ar'),(140,2,'com.keji.danti.a.sv'),(141,4,'com.sec.android.providers.drm.Onion'),(142,2,'com.keji.danti.ph'),(143,5,'com.keji.danti.a.ao'),(144,4,'com.keji.danti.ph'),(145,6,'com.keji.danti.a.sy'),(146,4,'com.keji.danti.a.sy'),(147,6,'com.keji.danti.a.sv'),(148,5,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'data'),(2,13,'index'),(3,103,'PID'),(4,38,'book'),(5,38,'File Path'),(6,14,'notSaveDate'),(7,101,'PID'),(8,37,'notSaveDate'),(9,41,'data'),(10,109,'PID'),(11,13,'notSaveDate'),(12,27,'appsec'),(13,6,'data'),(14,48,'appsec'),(15,40,'notSaveDate'),(16,22,'data'),(17,108,'PID'),(18,46,'appsec'),(19,60,'index'),(20,26,'appsec'),(21,14,'index'),(22,40,'index'),(23,23,'data'),(24,59,'index'),(25,59,'notSaveDate'),(26,39,'data'),(27,98,'PID'),(28,60,'notSaveDate'),(29,37,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,53,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,65,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,71,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,76,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,82,'s',0,NULL,NULL),(82,81,'a',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,91,'s',0,NULL,NULL),(91,90,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,96,'s',0,NULL,NULL),(96,95,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,99,'r',1,NULL,NULL),(99,98,'s',0,NULL,NULL),(100,101,'s',0,NULL,NULL),(101,100,'r',1,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,107,'s',0,NULL,NULL),(107,106,'s',0,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,62),(3,3,51),(4,4,7),(5,5,4),(6,6,103),(7,7,13),(8,8,9),(9,9,57),(10,9,18),(11,10,1),(12,11,14),(13,12,57),(14,12,18),(15,13,3),(16,14,9),(17,15,38),(18,16,13),(19,17,61),(20,18,1),(21,19,2),(22,20,49),(23,21,43),(24,22,101),(25,23,15),(26,24,48),(27,25,2),(28,26,1),(29,27,108),(30,28,52),(31,29,47),(32,30,14),(33,31,17),(34,32,65),(35,33,46),(36,34,42),(37,35,40),(38,37,59),(39,36,37),(40,38,9),(41,39,7),(42,40,21),(43,42,8),(44,41,10),(45,44,50),(46,43,48),(47,45,53),(48,46,71),(49,47,26),(50,48,70),(51,49,2),(52,50,37),(53,51,19),(54,52,60),(55,53,59),(56,54,27),(57,55,98),(58,56,34),(59,57,27),(60,58,20),(61,59,26),(62,60,66),(63,61,40),(64,62,32),(65,64,46),(66,63,45),(67,65,16),(68,66,109),(69,67,60);
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
INSERT INTO `ExitPoints` VALUES (1,110,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(2,62,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(3,52,'<wind.novel_heidao.chapter: void onClick(android.view.View)>',11,'a',NULL),(4,111,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(5,112,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(6,113,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(7,114,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(8,115,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(9,57,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(10,116,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(11,117,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(12,18,'<wind.novel_heidao.eReader: void onClick(android.view.View)>',7,'a',NULL),(13,116,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(14,118,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(15,38,'<wind.novel_heidao.ViewFileAct: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(16,114,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(17,61,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(18,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(19,2,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(20,119,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(21,43,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(22,120,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(23,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(24,122,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(25,112,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(26,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(27,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(28,51,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(29,124,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(30,117,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(31,125,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(32,126,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(33,127,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(34,42,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(35,128,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(36,129,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(37,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(38,131,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(39,132,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(40,133,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(41,134,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(42,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(43,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(44,135,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(45,55,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(46,72,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(47,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(48,70,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(49,2,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(50,129,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(51,138,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,139,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(53,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(54,140,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,141,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(56,133,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(57,142,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(58,143,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(59,144,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(60,145,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(61,128,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(62,143,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(63,146,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(64,147,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(65,134,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(66,148,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(67,139,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,12),(2,6,13),(3,9,14),(4,10,13),(5,11,14),(6,13,15),(7,15,12),(8,17,15),(9,23,13),(10,24,12),(11,26,14),(12,29,13),(13,30,14),(14,32,14),(15,34,13),(16,41,15),(17,48,14),(18,49,14),(19,52,14),(20,54,13),(21,53,13),(22,55,13),(23,56,15),(24,58,15),(25,61,13),(26,62,12),(27,63,14),(28,68,15),(29,69,12),(30,72,12),(31,73,13),(32,74,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/TextDetail'),(2,2,'com/android/adomb/MainRun'),(3,3,'wind/novel_heidao/ViewFileAct'),(4,4,'com/keji/danti/TextDetail'),(5,7,'com/keji/danti/Setting'),(6,8,'com/keji/danti/TextDetail'),(7,12,'com.android.settings.WirelessSettings'),(8,14,'wind/novel_heidao/chapter'),(9,16,'wind/novel_heidao/Settings'),(10,18,'com/android/adomb/MainRun'),(11,19,'com.android.battery.BridgeProvider'),(12,20,'com.android.battery.BridgeProvider'),(13,21,'com/keji/danti/AdSmsService'),(14,22,'com.android.battery.BridgeProvider'),(15,27,'com.android.settings.WirelessSettings'),(16,25,'com/keji/danti/TextDetail'),(17,28,'com/android/adomb/SystemPlus'),(18,31,'com/keji/danti/Background'),(19,35,'com/keji/danti/Background'),(20,36,'com/keji/danti/Background'),(21,33,'com/keji/danti/Setting'),(22,37,'com/keji/danti/TextDetail'),(23,38,'com.android.battery.BridgeProvider'),(24,39,'com/keji/danti/Setting'),(25,40,'com/keji/danti/Setting'),(26,42,'com/keji/danti/TextDetail'),(27,43,'com.android.settings.WirelessSettings'),(28,44,'com.android.settings.WirelessSettings'),(29,45,'com.android.settings.WirelessSettings'),(30,46,'com/keji/danti/AdSmsService'),(31,47,'com/keji/danti/TextDetail'),(32,51,'com/android/adomb/SystemPlus'),(33,50,'com/keji/danti/TextDetail'),(34,57,'com/keji/danti/Background'),(35,60,'com/keji/danti/TextDetail'),(36,59,'com/keji/danti/Setting'),(37,64,'com/keji/danti/TextDetail'),(38,65,'com.android.settings.WirelessSettings'),(39,66,'com/keji/danti/TextDetail'),(40,67,'com/keji/danti/Background'),(41,70,'com/keji/danti/Background'),(42,71,'com/keji/danti/TextDetail'),(43,75,'com/keji/danti/Setting');
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
INSERT INTO `IData` VALUES (1,5,1),(2,7,2),(3,13,3),(4,15,4),(5,17,6),(6,24,7),(7,33,8),(8,39,9),(9,40,10),(10,41,11),(11,56,13),(12,59,14),(13,58,15),(14,62,16),(15,69,17),(16,68,18),(17,72,19),(18,75,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'index'),(2,3,'File Path'),(3,3,'book'),(4,4,'index'),(5,8,'index'),(6,13,'sms_body'),(7,17,'sms_body'),(8,25,'index'),(9,30,'packageName'),(10,34,'packageName'),(11,37,'index'),(12,41,'sms_body'),(13,42,'index'),(14,47,'index'),(15,48,'packageName'),(16,49,'packageName'),(17,50,'index'),(18,52,'packageName'),(19,53,'packageName'),(20,54,'packageName'),(21,55,'packageName'),(22,56,'sms_body'),(23,58,'sms_body'),(24,60,'index'),(25,64,'index'),(26,66,'index'),(27,68,'sms_body'),(28,71,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,8,5),(10,8,6),(11,8,3),(12,8,4),(13,9,4),(14,9,5),(15,9,6),(16,9,2),(17,9,3),(18,10,11),(19,10,7),(20,10,8),(21,10,9),(22,10,5),(23,10,10),(24,10,6),(25,10,3),(26,10,4),(27,10,2),(28,11,5),(29,11,4),(30,11,3),(31,11,2),(32,11,9),(33,11,8),(34,11,7),(35,11,6),(36,11,10),(37,11,11),(38,12,4),(39,12,3),(40,12,6),(41,12,5),(42,12,8),(43,12,7),(44,12,10),(45,12,9),(46,12,11),(47,12,2),(48,13,11),(49,13,10),(50,13,9),(51,13,8),(52,13,7),(53,13,6),(54,13,5),(55,13,4),(56,13,3),(57,13,2),(58,14,10),(59,14,9),(60,14,11),(61,14,6),(62,14,5),(63,14,8),(64,14,7),(65,14,2),(66,14,4),(67,14,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti403'),(2,2,'com.keji.danti403'),(3,3,'wind.novel_heidao'),(4,4,'com.keji.danti403'),(5,7,'com.keji.danti403'),(6,8,'com.keji.danti408'),(7,12,'com.android.settings'),(8,14,'wind.novel_heidao'),(9,16,'wind.novel_heidao'),(10,18,'com.keji.danti408'),(11,19,'com.android.battery'),(12,20,'com.android.battery'),(13,21,'com.keji.danti403'),(14,22,'com.android.battery'),(15,27,'com.android.settings'),(16,25,'com.keji.danti555'),(17,28,'com.keji.danti403'),(18,31,'com.keji.danti641'),(19,35,'com.keji.danti403'),(20,36,'com.keji.danti555'),(21,33,'com.keji.danti408'),(22,37,'com.keji.danti672'),(23,38,'com.android.battery'),(24,39,'com.keji.danti641'),(25,42,'com.keji.danti408'),(26,40,'com.keji.danti731'),(27,43,'com.android.settings'),(28,44,'com.android.settings'),(29,45,'com.android.settings'),(30,46,'com.keji.danti408'),(31,47,'com.keji.danti555'),(32,51,'com.keji.danti408'),(33,50,'com.keji.danti731'),(34,57,'com.keji.danti408'),(35,59,'com.keji.danti555'),(36,60,'com.keji.danti641'),(37,64,'com.keji.danti641'),(38,65,'com.android.settings'),(39,66,'com.keji.danti731'),(40,67,'com.keji.danti672'),(41,70,'com.keji.danti731'),(42,71,'com.keji.danti672'),(43,75,'com.keji.danti672');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,8,0),(4,10,0),(5,18,0),(6,20,0),(7,21,0),(8,50,0),(9,49,0),(10,101,0),(11,98,0),(12,103,0),(13,108,0),(14,109,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,6,1,0),(10,9,1,0),(11,9,1,0),(12,10,0,0),(13,11,1,0),(14,12,0,0),(15,13,1,0),(16,15,0,0),(17,16,1,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,1,0),(24,23,1,0),(25,24,0,0),(26,22,1,0),(27,25,0,0),(28,26,0,0),(29,27,1,0),(30,28,1,0),(31,29,0,0),(32,27,1,0),(33,30,0,0),(34,28,1,0),(35,31,0,0),(36,32,0,0),(37,33,0,0),(38,34,0,0),(39,35,0,0),(40,36,0,0),(41,37,1,0),(42,38,0,0),(43,40,0,0),(44,42,0,0),(45,41,0,0),(46,44,0,0),(47,43,0,0),(48,46,1,0),(49,45,1,0),(50,47,0,0),(51,49,0,0),(52,48,1,0),(53,46,1,0),(54,45,1,0),(55,48,1,0),(56,50,1,0),(57,51,0,0),(58,52,1,0),(59,53,0,0),(60,54,0,0),(61,55,1,0),(62,56,1,0),(63,55,1,0),(64,57,0,0),(65,58,0,0),(66,59,0,0),(67,60,0,0),(68,61,1,0),(69,62,1,0),(70,63,0,0),(71,64,0,0),(72,65,1,0),(73,66,1,0),(74,66,1,0),(75,67,0,0);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,14,5),(2,39,12);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,3,1),(3,1,2),(4,4,1),(5,3,2),(6,2,1),(7,1,3),(8,4,2),(9,3,3),(10,2,2),(11,1,4),(12,4,4),(13,2,4),(14,3,4),(15,1,5),(16,4,5),(17,2,5),(18,3,5),(19,4,6),(20,1,6),(21,2,6),(22,3,6),(23,1,7),(24,4,7),(25,3,7),(26,2,7),(27,1,8),(28,4,8),(29,2,8),(30,3,8),(31,5,1),(32,6,1),(33,4,9),(34,1,9),(35,7,1),(36,5,2),(37,2,9),(38,3,9),(39,6,2),(40,4,10),(41,7,2),(42,5,4),(43,2,10),(44,6,4),(45,4,11),(46,7,4),(47,5,5),(48,2,11),(49,6,5),(50,4,12),(51,7,5),(52,5,6),(53,2,12),(54,6,6),(55,7,6),(56,4,13),(57,5,7),(58,2,13),(59,6,7),(60,7,8),(61,4,14),(62,5,8),(63,6,8),(64,2,14),(65,4,15),(66,7,9),(67,5,9),(68,2,15),(69,6,9),(70,4,17),(71,7,10),(72,5,10),(73,2,17),(74,6,10),(75,7,11),(76,4,16),(77,5,11),(78,2,16),(79,6,11),(80,7,12),(81,4,19),(82,5,12),(83,2,19),(84,6,12),(85,7,13),(86,4,18),(87,5,13),(88,2,18),(89,6,13),(90,7,14),(91,5,14),(92,6,14),(93,7,15),(94,5,15),(95,6,15),(96,7,17),(97,5,17),(98,6,17),(99,7,16),(100,5,16),(101,6,16),(102,7,19),(103,5,19),(104,6,19),(105,7,18),(106,5,18),(107,6,18);
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

-- Dump completed on 2015-10-09  0:38:56
