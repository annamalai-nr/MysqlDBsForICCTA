-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_26
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(19,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.GET_CONTENT'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(9,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(18,'com.zlsend.overaction');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti942',32),(2,'com.keji.danti629',32),(3,'com.keji.danti400',25),(4,'com.keji.danti716',32),(5,'com.keji.danti397',27),(6,'com.keji.danti456',27),(7,'com.keji.sendere',18);
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
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,3,'com.keji.danti.MainA'),(3,1,'com.keji.danti.Boutique'),(4,2,'com.keji.danti.MainA'),(5,1,'com.keji.danti.Background'),(6,3,'com.keji.danti.Boutique'),(7,1,'com.keji.danti.Lists'),(8,3,'com.keji.danti.Background'),(9,1,'com.keji.danti.History'),(10,2,'com.keji.danti.Boutique'),(11,3,'com.keji.danti.Lists'),(12,1,'com.keji.danti.TextDetail'),(13,3,'com.keji.danti.History'),(14,2,'com.keji.danti.Background'),(15,1,'com.keji.danti.Setting'),(16,2,'com.keji.danti.Lists'),(17,3,'com.keji.danti.TextDetail'),(18,4,'com.keji.danti.MainA'),(19,1,'com.android.view.custom.BaseAActivity'),(20,3,'com.keji.danti.Setting'),(21,2,'com.keji.danti.History'),(22,1,'com.android.view.custom.FirstAActivity'),(23,2,'com.keji.danti.TextDetail'),(24,3,'com.keji.danti.AdSmsService'),(25,4,'com.keji.danti.Boutique'),(26,1,'com.android.view.custom.SecondAActivity'),(27,2,'com.keji.danti.Setting'),(28,3,'com.android.adomb.AdSmsService'),(29,4,'com.keji.danti.Background'),(30,1,'com.android.view.custom.ThirdAActivity'),(31,3,'com.android.adomb.SystemPlus'),(32,2,'com.android.view.custom.BaseAActivity'),(33,4,'com.keji.danti.Lists'),(34,1,'com.android.view.custom.FourthAActivity'),(35,5,'com.keji.danti.MainA'),(36,2,'com.android.view.custom.FirstAActivity'),(37,3,'com.android.adomb.MainRun'),(38,4,'com.keji.danti.History'),(39,1,'com.android.view.custom.FirstAService'),(40,3,'com.keji.danti.BaseBroadcastReceiver'),(41,2,'com.android.view.custom.SecondAActivity'),(42,4,'com.keji.danti.TextDetail'),(43,1,'com.android.view.custom.SecondAService'),(44,2,'com.android.view.custom.ThirdAActivity'),(45,5,'com.keji.danti.Boutique'),(46,4,'com.keji.danti.Setting'),(47,1,'com.android.view.custom.ThirdAService'),(48,6,'com.keji.danti.MainA'),(49,2,'com.android.view.custom.FourthAActivity'),(50,5,'com.keji.danti.Background'),(51,3,'com.android.adomb.ForAlarm'),(52,4,'com.android.view.custom.BaseAActivity'),(53,1,'com.android.view.custom.FourthAService'),(54,2,'com.android.view.custom.FirstAService'),(55,5,'com.keji.danti.Lists'),(56,4,'com.android.view.custom.FirstAActivity'),(57,1,'com.android.view.custom.BaseABroadcastReceiver'),(58,2,'com.android.view.custom.SecondAService'),(59,6,'com.keji.danti.Boutique'),(60,5,'com.keji.danti.History'),(61,4,'com.android.view.custom.SecondAActivity'),(62,2,'com.android.view.custom.ThirdAService'),(63,5,'com.keji.danti.TextDetail'),(64,6,'com.keji.danti.Background'),(65,4,'com.android.view.custom.ThirdAActivity'),(66,2,'com.android.view.custom.FourthAService'),(67,6,'com.keji.danti.Lists'),(68,5,'com.keji.danti.Setting'),(69,4,'com.android.view.custom.FourthAActivity'),(70,2,'com.android.view.custom.BaseABroadcastReceiver'),(71,5,'com.android.battery.BalckActivity2'),(72,6,'com.keji.danti.History'),(73,4,'com.android.view.custom.FirstAService'),(74,5,'com.android.battery.BalckActivity'),(75,6,'com.keji.danti.TextDetail'),(76,4,'com.android.view.custom.SecondAService'),(77,6,'com.keji.danti.Setting'),(78,5,'com.android.battery.KillThreeSixZero'),(79,4,'com.android.view.custom.ThirdAService'),(80,6,'com.android.battery.BalckActivity2'),(81,5,'com.android.battery.BridgeProvider'),(82,4,'com.android.view.custom.FourthAService'),(83,6,'com.android.battery.BalckActivity'),(84,4,'com.android.view.custom.BaseABroadcastReceiver'),(85,5,'com.android.battery.AdSmsService'),(86,6,'com.android.battery.KillThreeSixZero'),(87,5,'com.android.battery.PhoneService'),(88,6,'com.android.battery.BridgeProvider'),(89,5,'com.android.battery.BaseBroadcastReceiver'),(90,6,'com.android.battery.AdSmsService'),(91,6,'com.android.battery.PhoneService'),(92,6,'com.android.battery.BaseBroadcastReceiver'),(93,7,'com.keji.sendere.Start'),(94,7,'com.keji.sendere.FileView'),(95,7,'com.keji.sendere.FileBrowse'),(96,7,'com.keji.sendere.Recorder'),(97,7,'com.keji.sendere.ReceiveCode'),(98,7,'com.keji.sendere.FileReady'),(99,7,'com.keji.sendere.FileSender'),(100,7,'com.keji.sendere.FileReceive'),(101,7,'com.keji.sendere.service.SysM'),(102,7,'com.keji.sendere.service.Mrun'),(103,7,'sms.SMSreceiver'),(104,7,'com.keji.sendere.service.ForAlarm'),(105,7,'h'),(106,7,'com.keji.other.BaseAActivity'),(107,3,'com.keji.danti.a.a'),(108,3,'com.keji.danti.a.ar'),(109,3,'com.keji.danti.a.ao'),(110,7,'k'),(111,4,'com.keji.danti.ph'),(112,3,'com.keji.danti.c.pa'),(113,7,'v'),(114,2,'com.keji.danti.ph'),(115,1,'com.keji.danti.a.ar'),(116,3,'com.madhouse.android.ads._'),(117,2,'com.keji.danti.a.sv'),(118,5,'com.keji.danti.a.st'),(119,1,'com.keji.danti.ph'),(120,4,'com.keji.danti.a.sy'),(121,6,'com.keji.danti.a.a'),(122,2,'com.keji.danti.a.ar'),(123,4,'com.keji.danti.a.ar'),(124,7,'s'),(125,6,'com.keji.danti.a.ar'),(126,5,'com.android.battery.b.pa'),(127,2,'com.keji.danti.a.sy'),(128,7,'u'),(129,1,'com.keji.danti.a.sy'),(130,6,'com.android.battery.b.pa'),(131,4,'com.keji.danti.a.ao'),(132,1,'com.sec.android.providers.drm.Onion'),(133,5,'com.keji.danti.a.a'),(134,3,'com.keji.danti.pf'),(135,2,'com.keji.danti.a.ao'),(136,4,'com.sec.android.providers.drm.Onion'),(137,6,'com.keji.danti.pf'),(138,1,'com.keji.danti.a.sv'),(139,5,'com.keji.danti.pf'),(140,3,'com.keji.danti.a.st'),(141,6,'com.keji.danti.a.st'),(142,4,'com.keji.danti.a.sv'),(143,2,'com.sec.android.providers.drm.Onion'),(144,1,'com.keji.danti.a.ao'),(145,5,'com.keji.danti.a.ao'),(146,7,'w'),(147,7,'ad'),(148,6,'com.keji.danti.a.ao'),(149,5,'com.keji.danti.a.ar');
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
INSERT INTO `ComponentExtras` VALUES (1,98,'fileruri'),(2,8,'data'),(3,42,'notSaveDate'),(4,33,'appsec'),(5,23,'notSaveDate'),(6,16,'index'),(7,89,'APP_UID'),(8,50,'data'),(9,29,'data'),(10,84,'PID'),(11,92,'pdus'),(12,16,'notSaveDate'),(13,74,'notSaveDate'),(14,13,'data'),(15,17,'appsec'),(16,12,'notSaveDate'),(17,12,'index'),(18,57,'PID'),(19,5,'data'),(20,74,'appsec'),(21,67,'appsec'),(22,92,'APP_UID'),(23,42,'index'),(24,23,'index'),(25,70,'PID'),(26,64,'notSaveDate'),(27,89,'pdus'),(28,74,'index'),(29,63,'data'),(30,7,'appsec'),(31,64,'index'),(32,64,'appsec'),(33,55,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,11,'a',0,NULL,NULL),(11,10,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,16,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,40,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,74,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,81,'s',1,NULL,NULL),(81,80,'a',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,85,'s',0,NULL,NULL),(87,88,'s',1,NULL,NULL),(88,87,'s',0,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'a',1,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'s',0,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'r',1,NULL,NULL),(104,104,'r',0,NULL,NULL),(105,104,'r',1,NULL,NULL),(106,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,98),(2,2,104),(3,3,93),(4,4,98),(5,5,2),(6,6,93),(7,7,6),(8,8,21),(9,9,97),(10,10,16),(11,11,33),(12,12,41),(13,13,93),(14,14,52),(15,16,2),(16,15,17),(17,17,12),(18,18,95),(19,20,17),(20,19,10),(21,21,97),(22,22,55),(23,23,7),(24,24,46),(25,26,16),(26,25,60),(27,27,93),(28,28,23),(29,29,35),(30,30,19),(31,31,42),(32,32,93),(33,33,51),(34,34,78),(35,35,89),(36,36,27),(37,37,2),(38,38,96),(39,39,42),(40,40,15),(41,41,92),(42,43,37),(43,42,89),(44,44,23),(45,46,48),(46,45,94),(47,47,25),(48,48,57),(49,49,10),(50,50,35),(51,51,4),(52,52,84),(53,53,67),(54,54,7),(55,55,55),(56,57,31),(57,56,10),(58,58,18),(59,59,12),(60,60,45),(61,61,67),(62,62,33),(63,63,70),(64,64,3),(65,65,64),(66,66,92),(67,67,11),(68,68,1),(69,69,48),(70,71,64),(71,70,93),(72,72,92),(73,73,98),(74,74,89),(75,75,74),(76,76,98),(77,77,68),(78,78,92),(79,79,89),(80,80,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,98,'<com.keji.sendere.FileReady: void a(java.io.File)>',33,'s',NULL),(2,104,'<com.keji.sendere.service.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(3,101,'<com.keji.sendere.service.SysM: void a(android.content.Context)>',3,'s',NULL),(4,105,'<h: java.lang.String a(android.content.Context,android.net.Uri)>',6,'p',0),(5,2,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(6,106,'<com.keji.other.BaseAActivity: void a()>',6,'s',NULL),(7,107,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(8,108,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,97,'<com.keji.sendere.ReceiveCode: void a()>',20,'s',NULL),(10,109,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(11,111,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(12,112,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(13,113,'<v: void onClick(android.view.View)>',6,'a',NULL),(14,52,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(15,114,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(16,107,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(17,115,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(18,95,'<com.keji.sendere.FileBrowse: void b(java.io.File)>',7,'a',NULL),(19,116,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(20,117,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(21,97,'<com.keji.sendere.ReceiveCode: void c()>',6,'a',NULL),(22,118,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(23,119,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,120,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(25,121,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(26,109,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(27,93,'<com.keji.sendere.Start: void a()>',3,'a',NULL),(28,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(29,35,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(30,19,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(31,123,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(32,124,'<s: void onClick(android.view.View)>',6,'a',NULL),(33,51,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(34,125,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(36,127,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(37,2,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(38,128,'<u: void onClick(android.view.View)>',19,'a',NULL),(39,123,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(40,129,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(41,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(42,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(43,37,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(44,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,94,'<com.keji.sendere.FileView: void a(b)>',11,'a',NULL),(46,48,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(47,131,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(48,132,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(49,134,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(50,133,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(51,135,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(52,136,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(53,137,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,138,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,139,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,140,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(57,32,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(58,131,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(59,115,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(60,133,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(61,141,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(62,142,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(63,143,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(64,144,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(65,145,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(66,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(67,135,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(68,144,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(69,121,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(70,146,'<w: void onClick(android.view.View)>',6,'a',NULL),(71,145,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(72,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(73,147,'<ad: void onClick(android.view.View)>',13,'a',NULL),(74,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(75,148,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(76,98,'<com.keji.sendere.FileReady: void e()>',6,'a',NULL),(77,149,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(78,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(79,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(80,148,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,7,16),(2,12,17),(3,16,19),(4,19,17),(5,21,20),(6,28,16),(7,30,17),(8,31,16),(9,32,19),(10,34,20),(11,43,17),(12,48,16),(13,49,16),(14,50,16),(15,51,20),(16,55,16),(17,54,19),(18,57,20),(19,59,19),(20,61,16),(21,64,19),(22,67,16),(23,66,20),(24,69,16),(25,71,16),(26,73,20),(27,74,16),(28,75,19),(29,76,16),(30,79,16),(31,83,17),(32,85,21),(33,92,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/sendere/FileSender'),(2,2,'com/keji/sendere/service/Mrun'),(3,3,'com/keji/sendere/service/SysM'),(4,4,'com/android/adomb/SystemPlus'),(5,5,'(.*)'),(6,6,'Y29tLmFuZHJvaWQuYmF0dGVyeS5CcmlkZ2VQcm92aWRlcg=='),(7,8,'(.*)'),(8,9,'Y29tLmFuZHJvaWQuYmF0dGVyeS5CcmlkZ2VQcm92aWRlcg=='),(9,10,'com/keji/danti/Background'),(10,11,'com/keji/sendere/FileReceive'),(11,13,'com/keji/danti/TextDetail'),(12,14,'com/keji/danti/AdSmsService'),(13,15,'com/keji/sendere/Recorder'),(14,17,'com.android.settings.WirelessSettings'),(15,18,'com/keji/danti/TextDetail'),(16,20,'com/keji/sendere/FileReady'),(17,23,'com.android.settings.WirelessSettings'),(18,22,'com/keji/danti/TextDetail'),(19,24,'com/keji/danti/TextDetail'),(20,25,'com/keji/danti/TextDetail'),(21,26,'com/keji/danti/Background'),(22,29,'com/keji/sendere/FileBrowse'),(23,27,'com/keji/danti/Setting'),(24,31,'com.android.packageinstaller.PackageInstallerActivity'),(25,35,'com/keji/sendere/FileView'),(26,36,'com/android/adomb/MainRun'),(27,33,'com/keji/danti/Setting'),(28,37,'com/keji/danti/Background'),(29,42,'com/keji/danti/Background'),(30,38,'com/android/battery/KillThreeSixZero'),(31,41,'com.android.battery.BridgeProvider'),(32,40,'com/keji/danti/Background'),(33,39,'com/keji/sendere/FileReady'),(34,44,'com/android/battery/PhoneService'),(35,45,'com.android.battery.BridgeProvider'),(36,47,'com/android/battery/BridgeProvider'),(37,46,'com/keji/danti/Setting'),(38,49,'com.android.packageinstaller.PackageInstallerActivity'),(39,52,'com.android.settings.WirelessSettings'),(40,53,'com/keji/danti/TextDetail'),(41,56,'com.android.settings.WirelessSettings'),(42,58,'com/keji/danti/TextDetail'),(43,60,'com/keji/danti/TextDetail'),(44,62,'com/keji/danti/TextDetail'),(45,63,'com/keji/danti/TextDetail'),(46,65,'com.android.settings.WirelessSettings'),(47,68,'com/keji/danti/Setting'),(48,70,'com/keji/danti/TextDetail'),(49,72,'com/keji/danti/TextDetail'),(50,78,'com/android/battery/BridgeProvider'),(51,77,'com/keji/danti/Setting'),(52,80,'com.android.settings.WirelessSettings'),(53,81,'com.android.settings.WirelessSettings'),(54,82,'com/keji/sendere/ReceiveCode'),(55,84,'com/android/battery/AdSmsService'),(56,86,'com/android/battery/AdSmsService'),(57,87,'com/keji/danti/Setting'),(58,88,'com.android.settings.WirelessSettings'),(59,89,'com/keji/danti/Background'),(60,90,'com/android/battery/KillThreeSixZero'),(61,91,'com/android/battery/PhoneService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,12,2),(3,19,3),(4,27,5),(5,28,6),(6,31,7),(7,30,8),(8,33,9),(9,43,10),(10,46,11),(11,49,12),(12,50,13),(13,48,14),(14,55,15),(15,61,16),(16,68,17),(17,67,18),(18,69,19),(19,71,20),(20,74,21),(21,77,22),(22,76,23),(23,79,24),(24,83,25),(25,87,26),(26,92,27);
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
INSERT INTO `IExtras` VALUES (1,1,'fileruri'),(2,1,'adress'),(3,11,'fileruri'),(4,11,'adress'),(5,12,'sms_body'),(6,13,'index'),(7,18,'index'),(8,16,'packageName'),(9,20,'fileruri'),(10,19,'sms_body'),(11,21,'packageName'),(12,22,'index'),(13,24,'index'),(14,25,'index'),(15,30,'sms_body'),(16,32,'packageName'),(17,34,'packageName'),(18,39,'fileruri'),(19,43,'sms_body'),(20,53,'index'),(21,58,'index'),(22,60,'index'),(23,62,'index'),(24,63,'index'),(25,64,'packageName'),(26,66,'packageName'),(27,70,'index'),(28,72,'index'),(29,83,'sms_body'),(30,92,'sms_body');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,2),(11,7,1),(12,8,11),(13,8,8),(14,8,7),(15,8,10),(16,8,9),(17,8,2),(18,8,5),(19,8,6),(20,8,3),(21,8,4),(22,9,11),(23,9,10),(24,9,9),(25,9,8),(26,9,4),(27,9,5),(28,9,6),(29,9,7),(30,9,2),(31,9,3),(32,10,1),(33,11,5),(34,11,4),(35,11,3),(36,11,2),(37,11,9),(38,11,8),(39,11,7),(40,11,6),(41,11,10),(42,11,11),(43,12,1),(44,13,9),(45,13,6),(46,13,5),(47,13,4),(48,13,3),(49,13,2),(50,13,12),(51,13,13),(52,13,14),(53,13,15),(54,14,15),(55,14,9),(56,14,14),(57,14,12),(58,14,13),(59,14,6),(60,14,5),(61,14,2),(62,14,4),(63,14,3),(64,15,1),(65,16,9),(66,17,18),(67,18,18);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,48,'application','vnd.android.package-archive'),(2,55,'image','*'),(3,61,'video','*'),(4,67,'text','*'),(5,71,'*','*'),(6,76,'audio','*'),(7,85,'vnd.android.cursor.item','phone_v2');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.sendere'),(2,2,'com.keji.sendere'),(3,3,'com.keji.sendere'),(4,4,'com.keji.danti400'),(5,5,'(.*)'),(6,6,'(.*)'),(7,8,'Y29tLmFuZHJvaWQuYmF0dGVyeQ=='),(8,9,'Y29tLmFuZHJvaWQuYmF0dGVyeQ=='),(9,10,'com.keji.danti400'),(10,11,'com.keji.sendere'),(11,13,'com.keji.danti716'),(12,14,'com.keji.danti400'),(13,15,'com.keji.sendere'),(14,17,'com.android.settings'),(15,18,'com.keji.danti629'),(16,20,'com.keji.sendere'),(17,23,'com.android.settings'),(18,22,'com.keji.danti629'),(19,24,'com.keji.danti397'),(20,25,'com.keji.danti942'),(21,26,'com.keji.danti716'),(22,29,'com.keji.sendere'),(23,27,'com.keji.danti400'),(24,31,'com.android.packageinstaller'),(25,35,'com.keji.sendere'),(26,36,'com.keji.danti400'),(27,33,'com.keji.danti716'),(28,37,'com.keji.danti456'),(29,38,'com.keji.danti397'),(30,40,'com.keji.danti942'),(31,42,'com.keji.danti629'),(32,41,'com.android.battery'),(33,39,'com.keji.sendere'),(34,44,'com.keji.danti456'),(35,45,'com.android.battery'),(36,47,'com.keji.danti397'),(37,46,'com.keji.danti629'),(38,49,'com.android.packageinstaller'),(39,52,'com.android.settings'),(40,53,'com.keji.danti400'),(41,56,'com.android.settings'),(42,58,'com.keji.danti456'),(43,60,'com.keji.danti942'),(44,62,'com.keji.danti397'),(45,63,'com.keji.danti400'),(46,65,'com.android.settings'),(47,68,'com.keji.danti942'),(48,70,'com.keji.danti456'),(49,72,'com.keji.danti716'),(50,78,'com.keji.danti456'),(51,77,'com.keji.danti397'),(52,80,'com.android.settings'),(53,81,'com.android.settings'),(54,82,'com.keji.sendere'),(55,84,'com.keji.danti456'),(56,86,'com.keji.danti397'),(57,87,'com.keji.danti456'),(58,88,'com.android.settings'),(59,89,'com.keji.danti397'),(60,90,'com.keji.danti456'),(61,91,'com.keji.danti397');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,18,0),(5,35,0),(6,41,0),(7,48,0),(8,57,0),(9,70,0),(10,80,0),(11,84,0),(12,87,0),(13,89,0),(14,92,0),(15,93,0),(16,103,0),(17,105,0),(18,106,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,5,0,0),(5,6,0,0),(6,6,0,0),(7,7,1,0),(8,6,0,0),(9,6,0,0),(10,8,0,0),(11,9,0,0),(12,10,1,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,1,0),(17,16,0,0),(18,15,0,0),(19,17,1,0),(20,18,0,0),(21,14,1,0),(22,20,0,0),(23,21,0,0),(24,22,0,0),(25,23,0,0),(26,24,0,0),(27,26,0,0),(28,25,1,0),(29,27,0,0),(30,28,1,0),(31,29,0,0),(32,30,1,0),(33,31,0,0),(34,30,1,0),(35,32,0,0),(36,33,0,0),(37,34,0,0),(38,35,0,0),(39,38,0,0),(40,40,0,0),(41,37,0,0),(42,36,0,0),(43,39,1,0),(44,41,0,0),(45,43,0,0),(46,44,0,0),(47,42,0,0),(48,45,1,0),(49,46,0,0),(50,47,1,0),(51,48,1,0),(52,50,0,0),(53,49,0,0),(54,48,1,0),(55,45,1,0),(56,51,0,0),(57,52,1,0),(58,53,0,0),(59,52,1,0),(60,54,0,0),(61,45,1,0),(62,55,0,0),(63,56,0,0),(64,57,1,0),(65,58,0,0),(66,57,1,0),(67,45,1,0),(68,59,0,0),(69,60,1,0),(70,61,0,0),(71,45,1,0),(72,62,0,0),(73,63,1,0),(74,64,1,0),(75,63,1,0),(76,45,1,0),(77,65,0,0),(78,66,0,0),(79,67,1,0),(80,68,0,0),(81,69,0,0),(82,70,0,0),(83,71,1,0),(84,72,0,0),(85,73,1,0),(86,74,0,0),(87,75,0,0),(88,76,0,0),(89,77,0,0),(90,78,0,0),(91,79,0,0),(92,80,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(20,'android.permission.RECORD_AUDIO'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'one',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'one',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'smsto:',NULL,NULL,NULL),(26,NULL,NULL,'one',NULL,NULL,NULL),(27,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,2,3),(14,1,11),(15,2,4),(16,1,12),(17,2,5),(18,1,13),(19,2,6),(20,3,16),(21,1,14),(22,2,7),(23,3,19),(24,1,15),(25,3,18),(26,2,8),(27,1,17),(28,2,9),(29,3,4),(30,1,16),(31,3,8),(32,2,10),(33,4,1),(34,2,11),(35,4,2),(36,3,10),(37,3,12),(38,4,3),(39,2,12),(40,3,14),(41,4,4),(42,2,13),(43,3,15),(44,2,14),(45,4,5),(46,2,15),(47,4,6),(48,4,7),(49,2,17),(50,4,8),(51,2,16),(52,4,9),(53,2,18),(54,4,10),(55,4,11),(56,5,1),(57,4,12),(58,5,2),(59,4,13),(60,5,4),(61,4,14),(62,5,5),(63,4,15),(64,5,7),(65,4,17),(66,5,8),(67,4,16),(68,5,9),(69,6,1),(70,4,18),(71,6,2),(72,5,10),(73,6,4),(74,5,11),(75,5,12),(76,6,5),(77,6,7),(78,5,13),(79,5,14),(80,6,8),(81,6,9),(82,5,15),(83,6,10),(84,5,17),(85,6,11),(86,5,16),(87,5,19),(88,6,12),(89,6,13),(90,5,18),(91,6,14),(92,6,15),(93,6,17),(94,6,16),(95,6,19),(96,6,18),(97,7,16),(98,7,1),(99,7,19),(100,7,18),(101,7,4),(102,7,20),(103,7,5),(104,7,6),(105,7,8),(106,7,10),(107,7,12),(108,7,14);
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

-- Dump completed on 2015-10-09  0:38:50
