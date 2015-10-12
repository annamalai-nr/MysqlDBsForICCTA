-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_23
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(11,'android.intent.action.BATTERY_LOW'),(7,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(9,'android.provider.Telephony.SIM_FULL'),(8,'android.provider.Telephony.SMS_RECEIVED'),(10,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti595',32),(2,'com.keji.danti402',25),(3,'com.keji.danti1033',32),(4,'com.keji.danti415',27),(5,'com.keji.danti696',32),(6,'com.keji.unclear',1),(7,'com.keji.danti729',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.keji.danti.MainA'),(2,6,'com.keji.unclear.Start'),(3,2,'com.keji.danti.Boutique'),(4,6,'com.keji.unclear.SafeActivity'),(5,1,'com.keji.danti.MainA'),(6,4,'com.keji.danti.MainA'),(7,3,'com.keji.danti.MainA'),(8,2,'com.keji.danti.Background'),(9,6,'com.keji.unclear.MapAct'),(10,2,'com.keji.danti.Lists'),(11,6,'com.keji.unclear.GPSService'),(12,5,'com.keji.danti.MainA'),(13,1,'com.keji.danti.Boutique'),(14,2,'com.keji.danti.History'),(15,3,'com.keji.danti.Boutique'),(16,4,'com.keji.danti.Boutique'),(17,6,'com.keji.unclear.service.SysM'),(18,1,'com.keji.danti.Background'),(19,2,'com.keji.danti.TextDetail'),(20,4,'com.keji.danti.Background'),(21,6,'com.keji.unclear.service.Mrun'),(22,3,'com.keji.danti.Background'),(23,5,'com.keji.danti.Boutique'),(24,1,'com.keji.danti.Lists'),(25,2,'com.keji.danti.Setting'),(26,4,'com.keji.danti.Lists'),(27,6,'com.keji.unclear.service.ForAlarm'),(28,3,'com.keji.danti.Lists'),(29,5,'com.keji.danti.Background'),(30,1,'com.keji.danti.History'),(31,2,'com.keji.danti.AdSmsService'),(32,4,'com.keji.danti.History'),(33,3,'com.keji.danti.History'),(34,7,'com.keji.danti.MainA'),(35,5,'com.keji.danti.Lists'),(36,1,'com.keji.danti.TextDetail'),(37,2,'com.android.adomb.AdSmsService'),(38,4,'com.keji.danti.TextDetail'),(39,3,'com.keji.danti.TextDetail'),(40,5,'com.keji.danti.History'),(41,1,'com.keji.danti.Setting'),(42,2,'com.android.adomb.SystemPlus'),(43,4,'com.keji.danti.Setting'),(44,3,'com.keji.danti.Setting'),(45,5,'com.keji.danti.TextDetail'),(46,1,'com.android.view.custom.BaseAActivity'),(47,7,'com.keji.danti.Boutique'),(48,2,'com.android.adomb.MainRun'),(49,3,'com.android.view.custom.BaseAActivity'),(50,4,'com.android.battery.BalckActivity2'),(51,5,'com.keji.danti.Setting'),(52,1,'com.android.view.custom.FirstAActivity'),(53,7,'com.keji.danti.Background'),(54,2,'com.keji.danti.BaseBroadcastReceiver'),(55,4,'com.android.battery.BalckActivity'),(56,3,'com.android.view.custom.FirstAActivity'),(57,5,'com.android.view.custom.BaseAActivity'),(58,1,'com.android.view.custom.SecondAActivity'),(59,7,'com.keji.danti.Lists'),(60,3,'com.android.view.custom.SecondAActivity'),(61,4,'com.android.battery.KillThreeSixZero'),(62,1,'com.android.view.custom.ThirdAActivity'),(63,5,'com.android.view.custom.FirstAActivity'),(64,7,'com.keji.danti.History'),(65,3,'com.android.view.custom.ThirdAActivity'),(66,4,'com.android.battery.BridgeProvider'),(67,2,'com.android.adomb.ForAlarm'),(68,5,'com.android.view.custom.SecondAActivity'),(69,1,'com.android.view.custom.FourthAActivity'),(70,7,'com.keji.danti.TextDetail'),(71,3,'com.android.view.custom.FourthAActivity'),(72,5,'com.android.view.custom.ThirdAActivity'),(73,1,'com.android.view.custom.FirstAService'),(74,7,'com.keji.danti.Setting'),(75,4,'com.android.battery.AdSmsService'),(76,3,'com.android.view.custom.FirstAService'),(77,1,'com.android.view.custom.SecondAService'),(78,5,'com.android.view.custom.FourthAActivity'),(79,7,'com.android.view.custom.BaseAActivity'),(80,4,'com.android.battery.PhoneService'),(81,3,'com.android.view.custom.SecondAService'),(82,1,'com.android.view.custom.ThirdAService'),(83,5,'com.android.view.custom.FirstAService'),(84,7,'com.android.view.custom.FirstAActivity'),(85,4,'com.android.battery.BaseBroadcastReceiver'),(86,3,'com.android.view.custom.ThirdAService'),(87,1,'com.android.view.custom.FourthAService'),(88,5,'com.android.view.custom.SecondAService'),(89,7,'com.android.view.custom.SecondAActivity'),(90,3,'com.android.view.custom.FourthAService'),(91,1,'com.android.view.custom.BaseABroadcastReceiver'),(92,5,'com.android.view.custom.ThirdAService'),(93,7,'com.android.view.custom.ThirdAActivity'),(94,3,'com.android.view.custom.BaseABroadcastReceiver'),(95,5,'com.android.view.custom.FourthAService'),(96,7,'com.android.view.custom.FourthAActivity'),(97,5,'com.android.view.custom.BaseABroadcastReceiver'),(98,7,'com.android.view.custom.FirstAService'),(99,7,'com.android.view.custom.SecondAService'),(100,7,'com.android.view.custom.ThirdAService'),(101,7,'com.android.view.custom.FourthAService'),(102,7,'com.android.view.custom.BaseABroadcastReceiver'),(103,6,'b'),(104,6,'com.autonavi.mapapi.f'),(105,2,'com.keji.danti.c.pa'),(106,2,'com.keji.danti.a.ar'),(107,2,'com.keji.danti.a.a'),(108,2,'com.keji.danti.a.st'),(109,2,'com.keji.danti.a.ao'),(110,2,'com.keji.danti.pf'),(111,2,'com.madhouse.android.ads._'),(112,1,'com.sec.android.providers.drm.Onion'),(113,5,'com.keji.danti.a.ao'),(114,1,'com.keji.danti.a.ar'),(115,4,'com.keji.danti.a.a'),(116,5,'com.keji.danti.ph'),(117,1,'com.keji.danti.a.sy'),(118,5,'com.keji.danti.a.sy'),(119,3,'com.keji.danti.ph'),(120,4,'com.android.battery.b.pa'),(121,1,'com.keji.danti.a.ao'),(122,5,'com.keji.danti.a.ar'),(123,4,'com.keji.danti.a.ar'),(124,3,'com.keji.danti.a.ao'),(125,4,'com.keji.danti.a.ao'),(126,7,'com.keji.danti.a.ao'),(127,3,'com.sec.android.providers.drm.Onion'),(128,1,'com.keji.danti.a.sv'),(129,7,'com.keji.danti.ph'),(130,5,'com.sec.android.providers.drm.Onion'),(131,4,'com.keji.danti.pf'),(132,3,'com.keji.danti.a.sv'),(133,7,'com.keji.danti.a.ar'),(134,1,'com.keji.danti.ph'),(135,4,'com.keji.danti.a.st'),(136,7,'com.keji.danti.a.sv'),(137,5,'com.keji.danti.a.sv'),(138,3,'com.keji.danti.a.ar'),(139,7,'com.sec.android.providers.drm.Onion'),(140,3,'com.keji.danti.a.sy'),(141,7,'com.keji.danti.a.sy');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'lon'),(2,9,'lat'),(3,19,'notSaveDate'),(4,19,'index'),(5,8,'data'),(6,36,'index'),(7,18,'data'),(8,85,'APP_UID'),(9,38,'notSaveDate'),(10,22,'data'),(11,35,'appsec'),(12,45,'index'),(13,92,'PID'),(14,59,'appsec'),(15,39,'notSaveDate'),(16,23,'appsec'),(17,70,'index'),(18,36,'notSaveDate'),(19,70,'notSaveDate'),(20,30,'data'),(21,97,'PID'),(22,38,'appsec'),(23,39,'index'),(24,27,'appsec'),(25,26,'appsec'),(26,94,'PID'),(27,53,'data'),(28,45,'notSaveDate'),(29,102,'PID'),(30,21,'data'),(31,85,'pdus'),(32,38,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,6,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,17,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,15,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'s',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,27,'r',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,57,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,60,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,66,'s',1,NULL,NULL),(66,65,'a',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,68,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,73,'s',0,NULL,NULL),(73,72,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,92,'s',0,NULL,NULL),(92,91,'r',1,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,11),(3,2,2),(4,3,28),(5,4,9),(6,5,9),(7,6,9),(8,7,9),(9,8,2),(10,9,54),(11,10,67),(12,11,25),(13,12,1),(14,13,3),(15,14,10),(16,15,19),(17,16,19),(18,17,10),(19,18,1),(20,19,10),(21,20,1),(22,21,48),(23,22,92),(24,23,12),(25,24,36),(26,25,16),(27,26,35),(28,27,41),(29,28,51),(30,29,26),(31,30,85),(32,31,5),(33,32,45),(34,33,44),(35,35,46),(36,34,17),(37,36,45),(38,37,38),(39,38,6),(40,39,47),(41,40,13),(42,41,94),(43,42,38),(44,43,24),(45,44,23),(46,45,59),(47,46,97),(48,47,27),(49,48,26),(50,49,70),(51,50,23),(52,51,58),(53,52,36),(54,53,27),(55,54,50),(56,55,59),(57,56,85),(58,57,35),(59,58,34),(60,59,39),(61,60,85),(62,61,70),(63,62,7),(64,63,39),(65,64,7),(66,65,102),(67,66,43),(68,67,79),(69,68,85),(70,69,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.keji.unclear.GPSService: void a(double,double)>',8,'a',NULL),(2,2,'<com.keji.unclear.Start: void a()>',16,'s',NULL),(3,27,'<com.keji.unclear.service.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(4,103,'<b: void onClick(android.view.View)>',6,'a',NULL),(5,104,'<com.autonavi.mapapi.f: void a(java.lang.Object,int)>',36,'a',0),(6,104,'<com.autonavi.mapapi.f: void a(java.lang.Object,int)>',36,'r',0),(7,104,'<com.autonavi.mapapi.f: void a(java.lang.Object,int)>',36,'s',0),(8,17,'<com.keji.unclear.service.SysM: void a(android.content.Context)>',3,'s',NULL),(9,105,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(10,67,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,106,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(12,107,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(13,107,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(14,108,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(15,109,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(16,109,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(17,110,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(19,111,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(20,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(21,48,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(22,112,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(23,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,115,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(26,116,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(27,117,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(28,118,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(29,119,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(30,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(31,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(32,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(33,123,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(34,124,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(35,46,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(36,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(37,125,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(38,124,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(39,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(40,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(41,127,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(42,125,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(44,128,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(45,129,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(46,130,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(47,131,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(48,132,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(49,133,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(50,134,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(51,57,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(52,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(53,135,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(54,49,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(55,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(56,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(57,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(58,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(59,138,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(60,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(61,133,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(62,115,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(63,138,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(64,6,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(65,139,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(66,140,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(67,79,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(68,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(69,141,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,10,16),(2,13,17),(3,18,18),(4,19,19),(5,22,16),(6,31,19),(7,32,16),(8,33,18),(9,34,17),(10,35,17),(11,38,16),(12,37,16),(13,41,16),(14,39,18),(15,44,19),(16,45,18),(17,48,19),(18,51,19),(19,52,17),(20,54,19),(21,55,18),(22,57,18),(23,63,17),(24,65,17),(25,66,16),(26,67,18),(27,68,19),(28,70,19),(29,72,18);
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
INSERT INTO `IClasses` VALUES (1,1,'com/keji/unclear/MapAct'),(2,2,'com/keji/unclear/GPSService'),(3,3,'com/keji/unclear/service/Mrun'),(4,4,'com/keji/unclear/SafeActivity'),(5,5,'com/keji/unclear/service/SysM'),(6,6,'com/keji/danti/AdSmsService'),(7,7,'com/android/adomb/MainRun'),(8,8,'com/keji/danti/Background'),(9,9,'com.android.settings.WirelessSettings'),(10,11,'com/keji/danti/TextDetail'),(11,12,'com/keji/danti/Setting'),(12,14,'com/keji/danti/TextDetail'),(13,15,'com/android/adomb/SystemPlus'),(14,16,'com.android.battery.BridgeProvider'),(15,17,'com.android.battery.BridgeProvider'),(16,20,'com.android.settings.WirelessSettings'),(17,21,'com/keji/danti/Setting'),(18,23,'com/keji/danti/TextDetail'),(19,24,'com/keji/danti/Background'),(20,25,'com/keji/danti/Background'),(21,27,'com/android/battery/PhoneService'),(22,26,'com/keji/danti/TextDetail'),(23,28,'com.android.settings.WirelessSettings'),(24,30,'com/keji/danti/Background'),(25,29,'com/keji/danti/Setting'),(26,36,'com.android.settings.WirelessSettings'),(27,42,'com/keji/danti/TextDetail'),(28,40,'com/keji/danti/Setting'),(29,43,'com/keji/danti/TextDetail'),(30,46,'com/keji/danti/TextDetail'),(31,47,'com/keji/danti/TextDetail'),(32,50,'com/keji/danti/TextDetail'),(33,49,'com/keji/danti/Setting'),(34,53,'com/keji/danti/TextDetail'),(35,56,'com/keji/danti/TextDetail'),(36,58,'com/android/battery/KillThreeSixZero'),(37,59,'com.android.settings.WirelessSettings'),(38,60,'com/keji/danti/TextDetail'),(39,62,'com/android/battery/BridgeProvider'),(40,61,'com/keji/danti/Setting'),(41,64,'com.android.settings.WirelessSettings'),(42,66,'com.android.packageinstaller.PackageInstallerActivity'),(43,69,'com/keji/danti/Background'),(44,71,'com/android/battery/AdSmsService'),(45,73,'com/keji/danti/Background');
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
INSERT INTO `IData` VALUES (1,10,1),(2,12,2),(3,13,3),(4,21,5),(5,22,6),(6,29,7),(7,32,8),(8,34,9),(9,35,10),(10,38,11),(11,37,12),(12,40,13),(13,41,14),(14,49,15),(15,52,16),(16,61,17),(17,63,18),(18,65,19),(19,66,20);
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
INSERT INTO `IExtras` VALUES (1,1,'lon'),(2,1,'lat'),(3,11,'index'),(4,13,'sms_body'),(5,14,'index'),(6,23,'index'),(7,26,'index'),(8,31,'packageName'),(9,33,'packageName'),(10,34,'sms_body'),(11,35,'sms_body'),(12,42,'index'),(13,43,'index'),(14,46,'index'),(15,47,'index'),(16,50,'index'),(17,51,'packageName'),(18,53,'index'),(19,52,'sms_body'),(20,54,'packageName'),(21,55,'packageName'),(22,56,'index'),(23,57,'packageName'),(24,60,'index'),(25,63,'sms_body'),(26,65,'sms_body'),(27,70,'packageName'),(28,72,'packageName');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,4,1),(6,6,1),(7,7,1),(8,8,2),(9,8,5),(10,8,6),(11,8,3),(12,8,4),(13,9,1),(14,10,11),(15,10,7),(16,10,8),(17,10,9),(18,10,5),(19,10,10),(20,10,6),(21,10,3),(22,10,4),(23,10,2),(24,11,5),(25,11,4),(26,11,3),(27,11,2),(28,11,8),(29,11,6),(30,11,12),(31,11,13),(32,11,14),(33,11,15),(34,12,4),(35,12,3),(36,12,6),(37,12,5),(38,12,8),(39,12,15),(40,12,13),(41,12,14),(42,12,2),(43,12,12),(44,13,8),(45,13,6),(46,13,5),(47,13,4),(48,13,3),(49,13,2),(50,13,12),(51,13,13),(52,13,14),(53,13,15),(54,14,15),(55,14,14),(56,14,12),(57,14,13),(58,14,6),(59,14,5),(60,14,8),(61,14,2),(62,14,4),(63,14,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,4,1),(6,6,1),(7,7,1);
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
INSERT INTO `IPackages` VALUES (1,1,'com.keji.unclear'),(2,2,'com.keji.unclear'),(3,3,'com.keji.unclear'),(4,4,'com.keji.unclear'),(5,5,'com.keji.unclear'),(6,6,'com.keji.danti402'),(7,7,'com.keji.danti402'),(8,8,'com.keji.danti402'),(9,9,'com.android.settings'),(10,11,'com.keji.danti402'),(11,12,'com.keji.danti402'),(12,14,'com.keji.danti402'),(13,15,'com.keji.danti402'),(14,16,'com.android.battery'),(15,17,'com.android.battery'),(16,20,'com.android.settings'),(17,21,'com.keji.danti595'),(18,23,'com.keji.danti696'),(19,24,'com.keji.danti595'),(20,25,'com.keji.danti696'),(21,27,'com.keji.danti415'),(22,26,'com.keji.danti1033'),(23,28,'com.android.settings'),(24,30,'com.keji.danti415'),(25,29,'com.keji.danti696'),(26,36,'com.android.settings'),(27,40,'com.keji.danti415'),(28,42,'com.keji.danti595'),(29,43,'com.keji.danti729'),(30,46,'com.keji.danti415'),(31,47,'com.keji.danti1033'),(32,50,'com.keji.danti595'),(33,49,'com.keji.danti729'),(34,53,'com.keji.danti415'),(35,56,'com.keji.danti729'),(36,58,'com.keji.danti415'),(37,59,'com.android.settings'),(38,60,'com.keji.danti696'),(39,62,'com.keji.danti415'),(40,61,'com.keji.danti1033'),(41,64,'com.android.settings'),(42,66,'com.android.packageinstaller'),(43,69,'com.keji.danti1033'),(44,71,'com.keji.danti415'),(45,73,'com.keji.danti729');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,7,0),(6,12,0),(7,34,0),(8,54,0),(9,65,0),(10,85,0),(11,92,0),(12,94,0),(13,97,0),(14,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,8,0,0),(6,9,0,0),(7,10,0,0),(8,11,0,0),(9,12,0,0),(10,13,1,0),(11,14,0,0),(12,15,0,0),(13,16,1,0),(14,17,0,0),(15,18,0,0),(16,20,0,0),(17,21,0,0),(18,22,1,0),(19,22,1,0),(20,23,0,0),(21,24,0,0),(22,25,1,0),(23,26,0,0),(24,27,0,0),(25,28,0,0),(26,29,0,0),(27,30,0,0),(28,31,0,0),(29,32,0,0),(30,33,0,0),(31,35,1,0),(32,34,1,0),(33,35,1,0),(34,36,1,0),(35,37,1,0),(36,38,0,0),(37,39,1,0),(38,40,1,0),(39,41,1,0),(40,42,0,0),(41,43,1,0),(42,44,0,0),(43,45,0,0),(44,41,1,0),(45,46,1,0),(46,47,0,0),(47,48,0,0),(48,46,1,0),(49,49,0,0),(50,50,0,0),(51,51,1,0),(52,52,1,0),(53,53,0,0),(54,54,1,0),(55,51,1,0),(56,55,0,0),(57,54,1,0),(58,56,0,0),(59,58,0,0),(60,57,0,0),(61,59,0,0),(62,60,0,0),(63,61,1,0),(64,62,0,0),(65,63,1,0),(66,64,0,0),(67,65,1,0),(68,65,1,0),(69,66,0,0),(70,67,1,0),(71,68,0,0),(72,67,1,0),(73,69,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(20,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'one',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,19,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,3,1),(5,4,1),(6,2,17),(7,1,4),(8,3,2),(9,4,2),(10,2,16),(11,1,5),(12,3,3),(13,4,4),(14,5,1),(15,2,19),(16,4,5),(17,3,4),(18,5,2),(19,1,6),(20,6,17),(21,2,4),(22,1,7),(23,3,6),(24,5,3),(25,4,6),(26,6,19),(27,2,5),(28,1,8),(29,5,4),(30,6,21),(31,3,7),(32,4,8),(33,2,9),(34,6,20),(35,5,5),(36,3,8),(37,4,9),(38,1,9),(39,2,12),(40,1,10),(41,6,23),(42,4,10),(43,3,9),(44,5,6),(45,2,13),(46,5,7),(47,1,11),(48,4,11),(49,6,22),(50,3,10),(51,2,15),(52,4,12),(53,3,11),(54,5,8),(55,6,15),(56,1,12),(57,5,9),(58,4,13),(59,1,13),(60,3,12),(61,7,1),(62,3,13),(63,5,10),(64,1,14),(65,4,14),(66,7,2),(67,1,15),(68,5,11),(69,3,14),(70,4,15),(71,7,3),(72,3,15),(73,5,12),(74,1,17),(75,4,17),(76,7,4),(77,3,17),(78,1,16),(79,4,16),(80,5,13),(81,7,5),(82,3,16),(83,1,18),(84,5,14),(85,4,19),(86,7,6),(87,4,18),(88,5,15),(89,3,18),(90,7,7),(91,5,17),(92,7,8),(93,5,16),(94,7,9),(95,5,18),(96,7,10),(97,7,11),(98,7,12),(99,7,13),(100,7,14),(101,7,15),(102,7,17),(103,7,16),(104,7,18);
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

-- Dump completed on 2015-10-09  0:38:42
