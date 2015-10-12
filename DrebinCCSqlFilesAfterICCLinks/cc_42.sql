-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_42
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(13,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(15,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti622',32),(2,'com.keji.danti606',32),(3,'com.keji.danti799',32),(4,'com.keji.danti609',32),(5,'com.keji.danti684',32),(6,'com.keji.unclear',1),(7,'com.game',28);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,1,'com.keji.danti.Boutique'),(4,2,'com.keji.danti.Boutique'),(5,3,'com.keji.danti.MainA'),(6,1,'com.keji.danti.Background'),(7,2,'com.keji.danti.Background'),(8,1,'com.keji.danti.Lists'),(9,2,'com.keji.danti.Lists'),(10,3,'com.keji.danti.Boutique'),(11,1,'com.keji.danti.History'),(12,2,'com.keji.danti.History'),(13,3,'com.keji.danti.Background'),(14,1,'com.keji.danti.TextDetail'),(15,2,'com.keji.danti.TextDetail'),(16,3,'com.keji.danti.Lists'),(17,1,'com.keji.danti.Setting'),(18,2,'com.keji.danti.Setting'),(19,3,'com.keji.danti.History'),(20,1,'com.android.view.custom.BaseAActivity'),(21,2,'com.android.view.custom.BaseAActivity'),(22,3,'com.keji.danti.TextDetail'),(23,1,'com.android.view.custom.FirstAActivity'),(24,2,'com.android.view.custom.FirstAActivity'),(25,3,'com.keji.danti.Setting'),(26,1,'com.android.view.custom.SecondAActivity'),(27,2,'com.android.view.custom.SecondAActivity'),(28,3,'com.android.view.custom.BaseAActivity'),(29,4,'com.keji.danti.MainA'),(30,1,'com.android.view.custom.ThirdAActivity'),(31,2,'com.android.view.custom.ThirdAActivity'),(32,5,'com.keji.danti.MainA'),(33,3,'com.android.view.custom.FirstAActivity'),(34,1,'com.android.view.custom.FourthAActivity'),(35,2,'com.android.view.custom.FourthAActivity'),(36,3,'com.android.view.custom.SecondAActivity'),(37,1,'com.android.view.custom.FirstAService'),(38,4,'com.keji.danti.Boutique'),(39,2,'com.android.view.custom.FirstAService'),(40,5,'com.keji.danti.Boutique'),(41,3,'com.android.view.custom.ThirdAActivity'),(42,1,'com.android.view.custom.SecondAService'),(43,4,'com.keji.danti.Background'),(44,2,'com.android.view.custom.SecondAService'),(45,3,'com.android.view.custom.FourthAActivity'),(46,5,'com.keji.danti.Background'),(47,1,'com.android.view.custom.ThirdAService'),(48,2,'com.android.view.custom.ThirdAService'),(49,4,'com.keji.danti.Lists'),(50,3,'com.android.view.custom.FirstAService'),(51,5,'com.keji.danti.Lists'),(52,1,'com.android.view.custom.FourthAService'),(53,2,'com.android.view.custom.FourthAService'),(54,4,'com.keji.danti.History'),(55,5,'com.keji.danti.History'),(56,3,'com.android.view.custom.SecondAService'),(57,1,'com.android.view.custom.BaseABroadcastReceiver'),(58,4,'com.keji.danti.TextDetail'),(59,2,'com.android.view.custom.BaseABroadcastReceiver'),(60,3,'com.android.view.custom.ThirdAService'),(61,5,'com.keji.danti.TextDetail'),(62,4,'com.keji.danti.Setting'),(63,3,'com.android.view.custom.FourthAService'),(64,5,'com.keji.danti.Setting'),(65,4,'com.android.view.custom.BaseAActivity'),(66,6,'com.keji.unclear.Start'),(67,5,'com.android.view.custom.BaseAActivity'),(68,3,'com.android.view.custom.BaseABroadcastReceiver'),(69,4,'com.android.view.custom.FirstAActivity'),(70,7,'com.game.MCAndroid'),(71,5,'com.android.view.custom.FirstAActivity'),(72,4,'com.android.view.custom.SecondAActivity'),(73,5,'com.android.view.custom.SecondAActivity'),(74,6,'com.keji.unclear.SafeActivity'),(75,4,'com.android.view.custom.ThirdAActivity'),(76,5,'com.android.view.custom.ThirdAActivity'),(77,6,'com.keji.unclear.MapAct'),(78,4,'com.android.view.custom.FourthAActivity'),(79,5,'com.android.view.custom.FourthAActivity'),(80,6,'com.keji.unclear.GPSService'),(81,4,'com.android.view.custom.FirstAService'),(82,5,'com.android.view.custom.FirstAService'),(83,6,'com.keji.unclear.service.SysM'),(84,4,'com.android.view.custom.SecondAService'),(85,5,'com.android.view.custom.SecondAService'),(86,6,'com.keji.unclear.service.Mrun'),(87,4,'com.android.view.custom.ThirdAService'),(88,5,'com.android.view.custom.ThirdAService'),(89,6,'com.keji.unclear.service.ForAlarm'),(90,4,'com.android.view.custom.FourthAService'),(91,5,'com.android.view.custom.FourthAService'),(92,4,'com.android.view.custom.BaseABroadcastReceiver'),(93,5,'com.android.view.custom.BaseABroadcastReceiver'),(94,7,'com.android.sf.dna.To'),(95,6,'b'),(96,6,'com.autonavi.mapapi.f'),(97,3,'com.keji.danti.a.ar'),(98,2,'com.keji.danti.a.ao'),(99,2,'com.keji.danti.ph'),(100,3,'com.keji.danti.a.sy'),(101,1,'com.keji.danti.a.ar'),(102,2,'com.sec.android.providers.drm.Onion'),(103,3,'com.sec.android.providers.drm.Onion'),(104,1,'com.keji.danti.ph'),(105,3,'com.keji.danti.a.sv'),(106,2,'com.keji.danti.a.ar'),(107,5,'com.keji.danti.a.sv'),(108,1,'com.keji.danti.a.ao'),(109,3,'com.keji.danti.ph'),(110,5,'com.keji.danti.ph'),(111,3,'com.keji.danti.a.ao'),(112,5,'com.keji.danti.a.ao'),(113,1,'com.keji.danti.a.sy'),(114,4,'com.sec.android.providers.drm.Onion'),(115,1,'com.sec.android.providers.drm.Onion'),(116,5,'com.sec.android.providers.drm.Onion'),(117,4,'com.keji.danti.a.ao'),(118,2,'com.keji.danti.a.sy'),(119,4,'com.keji.danti.ph'),(120,2,'com.keji.danti.a.sv'),(121,5,'com.keji.danti.a.sy'),(122,5,'com.keji.danti.a.ar'),(123,1,'com.keji.danti.a.sv'),(124,4,'com.keji.danti.a.sy'),(125,4,'com.keji.danti.a.sv'),(126,4,'com.keji.danti.a.ar');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,70,'0'),(2,77,'lat'),(3,77,'lon'),(4,58,'PID'),(5,15,'notSaveDate'),(6,51,'appsec'),(7,61,'index'),(8,7,'data'),(9,9,'appsec'),(10,16,'appsec'),(11,14,'index'),(12,15,'index'),(13,22,'index'),(14,61,'notSaveDate'),(15,6,'data'),(16,8,'appsec'),(17,68,'PID'),(18,93,'PID'),(19,22,'notSaveDate'),(20,59,'notSaveDate'),(21,13,'data'),(22,46,'data'),(23,57,'PID'),(24,14,'notSaveDate'),(25,44,'data'),(26,49,'appsec'),(27,92,'PID'),(28,59,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,56,'s',0,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'r',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,70),(2,2,66),(3,3,89),(4,4,77),(5,5,66),(6,6,77),(7,7,77),(8,8,77),(9,9,80),(10,9,77),(11,10,22),(12,11,2),(13,12,9),(14,13,25),(15,14,67),(16,15,14),(17,16,58),(18,17,68),(19,18,8),(20,19,16),(21,20,15),(22,21,51),(23,22,3),(24,23,16),(25,24,51),(26,25,21),(27,26,5),(28,27,40),(29,28,17),(30,29,92),(31,30,15),(32,31,22),(33,32,57),(34,33,93),(35,34,29),(36,35,18),(37,36,1),(38,37,28),(39,38,32),(40,39,49),(41,40,9),(42,41,20),(43,42,64),(44,43,10),(45,44,38),(46,45,4),(47,46,61),(48,47,8),(49,48,62),(50,49,61),(51,50,14),(52,51,65),(53,52,49),(54,53,59),(55,54,59);
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
INSERT INTO `ExitPoints` VALUES (1,94,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(2,83,'<com.keji.unclear.service.SysM: void aSpark(android.content.Context)>',3,'s',NULL),(3,89,'<com.keji.unclear.service.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(4,95,'<b: void onClick(android.view.View)>',6,'a',NULL),(5,66,'<com.keji.unclear.Start: void a()>',16,'s',NULL),(6,96,'<com.autonavi.mapapi.f: void aSpark(java.lang.Object,int)>',37,'a',0),(7,96,'<com.autonavi.mapapi.f: void aSpark(java.lang.Object,int)>',37,'r',0),(8,96,'<com.autonavi.mapapi.f: void aSpark(java.lang.Object,int)>',37,'s',0),(9,80,'<com.keji.unclear.GPSService: void a(double,double)>',8,'a',NULL),(10,97,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(11,98,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(12,99,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(13,100,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(14,67,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(15,101,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(16,102,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(17,103,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(18,104,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(19,105,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(20,106,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(21,107,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(22,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(23,109,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,110,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(25,21,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,111,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(27,112,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(28,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(29,114,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(30,106,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(31,97,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(32,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(33,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(34,117,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(35,118,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(37,28,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,112,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(39,119,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,120,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(41,20,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(42,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(43,111,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(44,117,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(45,98,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(46,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(47,123,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(48,124,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(49,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(50,101,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(51,65,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(52,125,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(53,126,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(54,126,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,12),(2,11,12),(3,12,13),(4,13,14),(5,14,14),(6,15,13),(7,16,14),(8,17,13),(9,20,12),(10,23,15),(11,25,13),(12,26,14),(13,28,15),(14,30,14),(15,33,13),(16,34,14),(17,35,14),(18,36,13),(19,37,13),(20,41,13),(21,44,14),(22,46,13),(23,49,15),(24,48,15),(25,50,14),(26,51,15),(27,55,12),(28,57,13),(29,58,14),(30,60,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'com/keji/unclear/service/SysM'),(3,3,'com/keji/unclear/service/Mrun'),(4,4,'com/keji/unclear/SafeActivity'),(5,5,'com/keji/unclear/GPSService'),(6,6,'com/keji/unclear/MapAct'),(7,7,'com.android.settings.WirelessSettings'),(8,9,'com/keji/danti/TextDetail'),(9,10,'com/keji/danti/Background'),(10,18,'com/keji/danti/TextDetail'),(11,19,'com/keji/danti/TextDetail'),(12,21,'com/keji/danti/TextDetail'),(13,22,'com/keji/danti/TextDetail'),(14,24,'com/keji/danti/TextDetail'),(15,27,'com.android.settings.WirelessSettings'),(16,29,'com/keji/danti/Background'),(17,31,'com/keji/danti/Setting'),(18,32,'com/keji/danti/Setting'),(19,38,'com.android.settings.WirelessSettings'),(20,39,'com/keji/danti/Background'),(21,40,'com.android.settings.WirelessSettings'),(22,42,'com.android.settings.WirelessSettings'),(23,43,'com/keji/danti/TextDetail'),(24,45,'com/keji/danti/TextDetail'),(25,47,'com/keji/danti/Background'),(26,52,'com/keji/danti/Setting'),(27,53,'com/keji/danti/TextDetail'),(28,54,'com/keji/danti/Background'),(29,56,'com/keji/danti/Setting'),(30,59,'com/keji/danti/TextDetail'),(31,61,'com/keji/danti/Setting');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,11,2),(3,20,3),(4,23,4),(5,28,5),(6,31,6),(7,32,7),(8,49,8),(9,48,9),(10,51,10),(11,52,11),(12,56,12),(13,55,13),(14,60,14),(15,61,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'lon'),(2,6,'lat'),(3,8,'sms_body'),(4,9,'index'),(5,11,'sms_body'),(6,12,'packageName'),(7,16,'packageName'),(8,18,'index'),(9,19,'index'),(10,21,'index'),(11,20,'sms_body'),(12,22,'index'),(13,24,'index'),(14,25,'packageName'),(15,26,'packageName'),(16,41,'packageName'),(17,43,'index'),(18,44,'packageName'),(19,45,'index'),(20,46,'packageName'),(21,50,'packageName'),(22,53,'index'),(23,55,'sms_body'),(24,57,'packageName'),(25,58,'packageName'),(26,59,'index'),(27,60,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,8),(11,6,2),(12,6,7),(13,6,10),(14,6,9),(15,6,11),(16,7,9),(17,7,8),(18,7,7),(19,7,6),(20,7,11),(21,7,10),(22,7,2),(23,7,3),(24,7,4),(25,7,5),(26,8,1),(27,9,11),(28,9,10),(29,9,9),(30,9,8),(31,9,4),(32,9,5),(33,9,6),(34,9,7),(35,9,2),(36,9,3),(37,10,1),(38,11,5),(39,11,4),(40,11,3),(41,11,2),(42,11,9),(43,11,8),(44,11,7),(45,11,6),(46,11,10),(47,11,11),(48,12,4),(49,12,3),(50,12,6),(51,12,5),(52,12,8),(53,12,7),(54,12,10),(55,12,9),(56,12,11),(57,12,2);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,8,1),(7,10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,'com.keji.unclear'),(3,3,'com.keji.unclear'),(4,4,'com.keji.unclear'),(5,5,'com.keji.unclear'),(6,6,'com.keji.unclear'),(7,7,'com.android.settings'),(8,9,'com.keji.danti606'),(9,10,'com.keji.danti799'),(10,18,'com.keji.danti622'),(11,19,'com.keji.danti799'),(12,21,'com.keji.danti684'),(13,22,'com.keji.danti799'),(14,24,'com.keji.danti684'),(15,27,'com.android.settings'),(16,29,'com.keji.danti622'),(17,31,'com.keji.danti606'),(18,32,'com.keji.danti799'),(19,38,'com.android.settings'),(20,39,'com.keji.danti606'),(21,40,'com.android.settings'),(22,42,'com.android.settings'),(23,43,'com.keji.danti609'),(24,45,'com.keji.danti606'),(25,47,'com.keji.danti684'),(26,52,'com.keji.danti684'),(27,53,'com.keji.danti622'),(28,54,'com.keji.danti609'),(29,56,'com.keji.danti622'),(30,59,'com.keji.danti609'),(31,61,'com.keji.danti609');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,29,0),(5,32,0),(6,58,0),(7,57,0),(8,66,0),(9,68,0),(10,70,0),(11,92,0),(12,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,9,0,0),(7,11,0,0),(8,10,1,0),(9,12,0,0),(10,13,0,0),(11,15,1,0),(12,14,1,0),(13,17,1,0),(14,16,1,0),(15,17,1,0),(16,14,1,0),(17,16,1,0),(18,18,0,0),(19,19,0,0),(20,20,1,0),(21,21,0,0),(22,23,0,0),(23,22,1,0),(24,24,0,0),(25,25,1,0),(26,25,1,0),(27,26,0,0),(28,27,1,0),(29,28,0,0),(30,29,1,0),(31,30,0,0),(32,31,0,0),(33,29,1,0),(34,32,1,0),(35,33,1,0),(36,32,1,0),(37,33,1,0),(38,34,0,0),(39,35,0,0),(40,36,0,0),(41,37,1,0),(42,38,0,0),(43,39,0,0),(44,37,1,0),(45,40,0,0),(46,41,1,0),(47,42,0,0),(48,44,1,0),(49,43,1,0),(50,41,1,0),(51,45,1,0),(52,46,0,0),(53,47,0,0),(54,48,0,0),(55,49,1,0),(56,50,0,0),(57,51,1,0),(58,51,1,0),(59,52,0,0),(60,53,1,0),(61,54,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,46,5,2,NULL),(2,50,5,2,NULL),(3,25,5,2,NULL),(4,26,5,2,NULL),(5,41,5,2,NULL),(6,44,5,2,NULL),(7,57,5,2,NULL),(8,58,5,2,NULL),(9,12,5,2,NULL),(10,16,5,2,NULL),(11,41,1,2,NULL),(12,44,1,2,NULL),(13,41,57,2,NULL),(14,44,57,2,NULL),(15,41,2,2,NULL),(16,44,2,2,NULL),(17,41,58,2,NULL),(18,44,58,2,NULL),(19,41,68,2,NULL),(20,44,68,2,NULL),(21,41,29,2,NULL),(22,44,29,2,NULL),(23,41,92,2,NULL),(24,44,92,2,NULL),(25,41,32,2,NULL),(26,44,32,2,NULL),(27,41,93,2,NULL),(28,44,93,2,NULL),(29,41,66,2,NULL),(30,44,66,2,NULL),(31,41,70,2,NULL),(32,44,70,2,NULL),(33,46,68,2,NULL),(34,50,68,2,NULL),(35,25,68,2,NULL),(36,26,68,2,NULL),(37,57,68,2,NULL),(38,58,68,2,NULL),(39,12,68,2,NULL),(40,16,68,2,NULL),(41,46,2,2,NULL),(42,50,2,2,NULL),(43,25,2,2,NULL),(44,26,2,2,NULL),(45,57,2,2,NULL),(46,58,2,2,NULL),(47,12,2,2,NULL),(48,16,2,2,NULL),(49,25,1,2,NULL),(50,26,1,2,NULL),(51,25,57,2,NULL),(52,26,57,2,NULL),(53,25,58,2,NULL),(54,26,58,2,NULL),(55,25,29,2,NULL),(56,26,29,2,NULL),(57,25,92,2,NULL),(58,26,92,2,NULL),(59,25,32,2,NULL),(60,26,32,2,NULL),(61,25,93,2,NULL),(62,26,93,2,NULL),(63,25,66,2,NULL),(64,26,66,2,NULL),(65,25,70,2,NULL),(66,26,70,2,NULL),(67,46,58,2,NULL),(68,50,58,2,NULL),(69,57,58,2,NULL),(70,58,58,2,NULL),(71,12,58,2,NULL),(72,16,58,2,NULL),(73,46,70,2,NULL),(74,50,70,2,NULL),(75,57,70,2,NULL),(76,58,70,2,NULL),(77,12,70,2,NULL),(78,16,70,2,NULL),(79,5,80,2,NULL),(80,46,66,2,NULL),(81,50,66,2,NULL),(82,57,66,2,NULL),(83,58,66,2,NULL),(84,12,66,2,NULL),(85,16,66,2,NULL),(86,6,77,2,NULL),(87,2,83,2,NULL),(88,3,86,2,NULL),(89,46,1,2,NULL),(90,50,1,2,NULL),(91,57,1,2,NULL),(92,58,1,2,NULL),(93,12,1,2,NULL),(94,16,1,2,NULL),(95,46,57,2,NULL),(96,50,57,2,NULL),(97,46,29,2,NULL),(98,50,29,2,NULL),(99,46,92,2,NULL),(100,50,92,2,NULL),(101,46,32,2,NULL),(102,50,32,2,NULL),(103,46,93,2,NULL),(104,50,93,2,NULL),(105,57,57,2,NULL),(106,58,57,2,NULL),(107,12,57,2,NULL),(108,16,57,2,NULL),(109,57,29,2,NULL),(110,58,29,2,NULL),(111,12,29,2,NULL),(112,16,29,2,NULL),(113,57,92,2,NULL),(114,58,92,2,NULL),(115,57,32,2,NULL),(116,58,32,2,NULL),(117,57,93,2,NULL),(118,58,93,2,NULL),(119,12,92,2,NULL),(120,16,92,2,NULL),(121,12,32,2,NULL),(122,16,32,2,NULL),(123,12,93,2,NULL),(124,16,93,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(20,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,2),(7,1,5),(8,2,3),(9,1,6),(10,2,4),(11,1,7),(12,2,5),(13,1,8),(14,2,6),(15,3,1),(16,1,9),(17,2,7),(18,3,2),(19,1,10),(20,2,8),(21,3,3),(22,1,11),(23,3,4),(24,2,9),(25,1,12),(26,3,5),(27,2,10),(28,1,13),(29,2,11),(30,3,6),(31,1,14),(32,2,12),(33,3,7),(34,1,15),(35,3,8),(36,2,13),(37,1,17),(38,3,9),(39,2,14),(40,1,16),(41,2,15),(42,3,10),(43,1,18),(44,2,17),(45,3,11),(46,3,12),(47,2,16),(48,2,18),(49,3,13),(50,3,14),(51,3,15),(52,3,17),(53,3,16),(54,3,18),(55,4,1),(56,4,2),(57,5,1),(58,4,3),(59,5,2),(60,4,4),(61,5,3),(62,4,5),(63,5,4),(64,5,5),(65,4,6),(66,4,7),(67,5,6),(68,4,8),(69,5,7),(70,4,9),(71,5,8),(72,5,9),(73,4,10),(74,5,10),(75,4,11),(76,5,11),(77,4,12),(78,5,12),(79,4,13),(80,5,13),(81,4,14),(82,5,14),(83,4,15),(84,5,15),(85,4,17),(86,5,17),(87,4,16),(88,5,16),(89,4,18),(90,5,18),(91,6,17),(92,6,19),(93,6,21),(94,6,20),(95,6,23),(96,6,22),(97,6,15);
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

-- Dump completed on 2015-10-12  3:30:25
