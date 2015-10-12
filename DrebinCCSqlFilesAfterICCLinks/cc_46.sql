-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_46
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(13,'android.intent.action.ACTION_POWER_CONNECTED'),(8,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.GET_CONTENT'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(12,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(4,'android.provider.Telephony.SIM_FULL'),(3,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(21,'com.zlsend.overaction');
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
INSERT INTO `Applications` VALUES (1,'com.android.battery',18),(2,'com.keji.danti841',32),(3,'com.keji.danti566',32),(4,'com.keji.danti637',32),(5,'com.keji.danti409',25),(6,'com.keji.danti668',32),(7,'com.keji.sendere',25);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.android.battery.BalckActivity2'),(2,1,'com.android.battery.BalckActivity'),(3,1,'com.android.battery.BridgeProvider'),(4,1,'com.android.battery.ZlPhoneService'),(5,1,'com.android.battery.BaseBroadcastReceiver'),(6,2,'com.keji.danti.MainA'),(7,2,'com.keji.danti.Boutique'),(8,2,'com.keji.danti.Background'),(9,2,'com.keji.danti.Lists'),(10,2,'com.keji.danti.History'),(11,2,'com.keji.danti.TextDetail'),(12,3,'com.keji.danti.MainA'),(13,2,'com.keji.danti.Setting'),(14,5,'com.keji.danti.MainA'),(15,2,'com.android.view.custom.BaseAActivity'),(16,3,'com.keji.danti.Boutique'),(17,2,'com.android.view.custom.FirstAActivity'),(18,4,'com.keji.danti.MainA'),(19,5,'com.keji.danti.Boutique'),(20,3,'com.keji.danti.Background'),(21,2,'com.android.view.custom.SecondAActivity'),(22,3,'com.keji.danti.Lists'),(23,5,'com.keji.danti.Background'),(24,2,'com.android.view.custom.ThirdAActivity'),(25,3,'com.keji.danti.History'),(26,5,'com.keji.danti.Lists'),(27,4,'com.keji.danti.Boutique'),(28,2,'com.android.view.custom.FourthAActivity'),(29,5,'com.keji.danti.History'),(30,3,'com.keji.danti.TextDetail'),(31,4,'com.keji.danti.Background'),(32,2,'com.android.view.custom.FirstAService'),(33,6,'com.keji.danti.MainA'),(34,3,'com.keji.danti.Setting'),(35,5,'com.keji.danti.TextDetail'),(36,2,'com.android.view.custom.SecondAService'),(37,4,'com.keji.danti.Lists'),(38,5,'com.keji.danti.Setting'),(39,3,'com.android.view.custom.BaseAActivity'),(40,2,'com.android.view.custom.ThirdAService'),(41,4,'com.keji.danti.History'),(42,6,'com.keji.danti.Boutique'),(43,3,'com.android.view.custom.FirstAActivity'),(44,5,'com.keji.danti.AdSmsService'),(45,2,'com.android.view.custom.FourthAService'),(46,4,'com.keji.danti.TextDetail'),(47,5,'com.android.adomb.AdSmsService'),(48,6,'com.keji.danti.Background'),(49,3,'com.android.view.custom.SecondAActivity'),(50,2,'com.android.view.custom.BaseABroadcastReceiver'),(51,4,'com.keji.danti.Setting'),(52,6,'com.keji.danti.Lists'),(53,3,'com.android.view.custom.ThirdAActivity'),(54,5,'com.android.adomb.SystemPlus'),(55,4,'com.android.view.custom.BaseAActivity'),(56,3,'com.android.view.custom.FourthAActivity'),(57,5,'com.android.adomb.MainRun'),(58,6,'com.keji.danti.History'),(59,4,'com.android.view.custom.FirstAActivity'),(60,3,'com.android.view.custom.FirstAService'),(61,6,'com.keji.danti.TextDetail'),(62,5,'com.keji.danti.BaseBroadcastReceiver'),(63,4,'com.android.view.custom.SecondAActivity'),(64,3,'com.android.view.custom.SecondAService'),(65,6,'com.keji.danti.Setting'),(66,4,'com.android.view.custom.ThirdAActivity'),(67,3,'com.android.view.custom.ThirdAService'),(68,6,'com.android.view.custom.BaseAActivity'),(69,5,'com.android.adomb.ForAlarm'),(70,4,'com.android.view.custom.FourthAActivity'),(71,3,'com.android.view.custom.FourthAService'),(72,6,'com.android.view.custom.FirstAActivity'),(73,4,'com.android.view.custom.FirstAService'),(74,3,'com.android.view.custom.BaseABroadcastReceiver'),(75,6,'com.android.view.custom.SecondAActivity'),(76,4,'com.android.view.custom.SecondAService'),(77,6,'com.android.view.custom.ThirdAActivity'),(78,4,'com.android.view.custom.ThirdAService'),(79,6,'com.android.view.custom.FourthAActivity'),(80,4,'com.android.view.custom.FourthAService'),(81,6,'com.android.view.custom.FirstAService'),(82,4,'com.android.view.custom.BaseABroadcastReceiver'),(83,6,'com.android.view.custom.SecondAService'),(84,6,'com.android.view.custom.ThirdAService'),(85,6,'com.android.view.custom.FourthAService'),(86,1,'c'),(87,6,'com.android.view.custom.BaseABroadcastReceiver'),(88,7,'com.keji.sendere.Start'),(89,7,'com.keji.sendere.FileView'),(90,7,'com.keji.sendere.FileBrowse'),(91,7,'com.keji.sendere.Recorder'),(92,7,'com.keji.sendere.ReceiveCode'),(93,7,'com.keji.sendere.FileReady'),(94,7,'com.android.battery.BalckActivity2'),(95,7,'com.android.battery.BalckActivity'),(96,7,'com.android.battery.KillThreeSixZero'),(97,7,'com.keji.sendere.FileSender'),(98,7,'com.keji.sendere.FileReceive'),(99,7,'com.keji.sendere.service.MainRun'),(100,7,'com.keji.sendere.service.SystemPlus'),(101,7,'com.android.battery.BridgeProvider'),(102,7,'com.android.battery.AdSmsService'),(103,7,'com.android.battery.PhoneService'),(104,7,'sms.SMSreceiver'),(105,7,'com.keji.sendere.service.ForAlarm'),(106,7,'com.android.battery.BaseBroadcastReceiver'),(107,5,'com.keji.danti.pf'),(108,5,'com.keji.danti.c.pa'),(109,5,'com.keji.danti.a.ar'),(110,5,'com.keji.danti.a.a'),(111,5,'com.keji.danti.a.ao'),(112,2,'com.keji.danti.a.ar'),(113,3,'com.keji.danti.a.sy'),(114,5,'com.keji.danti.a.st'),(115,2,'com.keji.danti.a.ao'),(116,3,'com.sec.android.providers.drm.Onion'),(117,4,'com.keji.danti.a.ar'),(118,2,'com.keji.danti.a.sy'),(119,3,'com.keji.danti.a.ao'),(120,7,'com.keji.sendere.pc'),(121,6,'com.keji.danti.a.sy'),(122,3,'com.keji.danti.ph'),(123,5,'com.madhouse.android.ads._'),(124,7,'com.keji.sendere.pj'),(125,2,'com.sec.android.providers.drm.Onion'),(126,4,'com.keji.danti.a.ao'),(127,3,'com.keji.danti.a.ar'),(128,6,'com.keji.danti.a.ar'),(129,2,'com.keji.danti.ph'),(130,4,'com.keji.danti.ph'),(131,6,'com.keji.danti.a.sv'),(132,3,'com.keji.danti.a.sv'),(133,7,'com.android.battery.b.pa'),(134,4,'com.keji.danti.a.sy'),(135,6,'com.keji.danti.a.ao'),(136,2,'com.keji.danti.a.sv'),(137,4,'com.sec.android.providers.drm.Onion'),(138,7,'com.keji.sendere.sz'),(139,6,'com.keji.danti.ph'),(140,4,'com.keji.danti.a.sv'),(141,6,'com.sec.android.providers.drm.Onion'),(142,7,'com.keji.b.pd'),(143,7,'com.android.battery.receiver.ReceiverBlackActiveStart2'),(144,7,'com.keji.sendere.aq'),(145,7,'com.android.battery.receiver.ReceiverBlackActiveStart'),(146,7,'com.android.battery.receiver.ReceiverDial'),(147,7,'com.keji.sendere.pi'),(148,7,'com.keji.sendere.pe');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'pdus'),(2,50,'PID'),(3,8,'data'),(4,9,'appsec'),(5,35,'index'),(6,11,'notSaveDate'),(7,35,'notSaveDate'),(8,11,'index'),(9,74,'PID'),(10,23,'appsec'),(11,46,'index'),(12,22,'data'),(13,61,'notSaveDate'),(14,47,'data'),(15,105,'APP_UID'),(16,32,'data'),(17,82,'PID'),(18,29,'index'),(19,46,'notSaveDate'),(20,20,'data'),(21,29,'notSaveDate'),(22,105,'pdus'),(23,86,'PID'),(24,61,'index'),(25,37,'appsec'),(26,92,'fileruri'),(27,53,'appsec');
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
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,32,'s',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,42,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,47,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,57,'s',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,64,'s',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,69,'r',0,NULL,NULL),(68,67,'s',0,NULL,NULL),(69,68,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,71,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,87,'r',1,NULL,NULL),(87,88,'a',1,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,90,'a',0,NULL,NULL),(90,91,'a',0,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,93,'a',0,NULL,NULL),(93,94,'a',0,NULL,NULL),(94,95,'a',0,NULL,NULL),(95,96,'a',0,NULL,NULL),(96,97,'s',0,NULL,NULL),(97,98,'s',0,NULL,NULL),(98,99,'s',0,NULL,NULL),(99,100,'s',0,NULL,NULL),(100,101,'s',1,NULL,NULL),(101,102,'s',0,NULL,NULL),(102,103,'s',0,NULL,NULL),(103,104,'r',1,NULL,NULL),(104,105,'r',0,NULL,NULL),(105,106,'r',1,NULL,NULL),(106,143,'r',1,NULL,NULL),(107,144,'r',1,NULL,NULL),(108,145,'r',1,NULL,NULL),(109,105,'r',1,NULL,NULL),(110,146,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,5),(3,3,5),(4,4,14),(5,5,25),(6,6,62),(7,7,14),(8,8,39),(9,9,14),(10,10,35),(11,11,11),(12,12,19),(13,13,34),(14,14,38),(15,15,25),(16,16,6),(17,17,58),(18,18,15),(19,19,74),(20,20,35),(21,21,46),(22,22,13),(23,23,16),(24,24,67),(25,25,87),(26,26,7),(27,27,46),(28,28,64),(29,29,23),(30,30,25),(31,31,87),(32,32,50),(33,33,28),(34,34,29),(35,35,61),(36,36,89),(37,37,9),(38,38,104),(39,39,37),(40,40,53),(41,41,23),(42,42,11),(43,43,105),(44,44,51),(45,45,44),(46,46,12),(47,48,87),(48,47,9),(49,49,82),(50,50,61),(51,51,29),(52,52,92),(53,53,55),(54,54,53),(55,55,92),(56,56,37),(57,57,69),(58,58,105),(59,59,18),(60,60,33),(61,61,91),(62,62,86),(63,63,92),(64,64,87),(65,65,87),(66,66,93),(67,67,105),(68,68,90),(69,69,88),(70,70,87),(71,71,87),(72,72,98),(73,73,105),(74,74,91),(75,75,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android.battery.BalckActivity2: void a()>',15,'a',NULL),(2,86,'<c: boolean a(android.content.Context,android.content.Intent)>',20,'s',NULL),(3,86,'<c: boolean a(android.content.Context,android.content.Intent)>',23,'s',NULL),(4,14,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(5,107,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(6,108,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(7,14,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(8,109,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,110,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(10,111,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(11,112,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(12,110,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(13,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(14,39,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(15,114,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(16,115,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(17,57,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(18,15,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(19,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(20,111,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(21,117,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(22,118,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(23,119,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(24,69,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,120,'<com.keji.sendere.pc: void onClick(android.view.View)>',6,'a',NULL),(26,115,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(27,117,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(28,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(29,122,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(30,123,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(31,124,'<com.keji.sendere.pj: void onClick(android.view.View)>',6,'a',NULL),(32,125,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(33,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,127,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(35,128,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(36,90,'<com.keji.sendere.FileBrowse: void b(java.io.File)>',7,'a',NULL),(37,129,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(38,105,'<com.keji.sendere.service.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(39,130,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,131,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(41,132,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(42,112,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',44,'s',NULL),(44,134,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(45,135,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(46,119,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(47,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(48,88,'<com.keji.sendere.Start: void onCreate(android.os.Bundle)>',14,'s',NULL),(49,137,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(50,128,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(51,127,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(52,138,'<com.keji.sendere.sz: void onClick(android.view.View)>',13,'a',NULL),(53,55,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(54,139,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(55,93,'<com.keji.sendere.FileReady: void a(java.io.File)>',33,'s',NULL),(56,140,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(57,68,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(58,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',47,'s',NULL),(59,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(60,135,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(61,92,'<com.keji.sendere.ReceiveCode: void a()>',20,'s',NULL),(62,141,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(63,142,'<com.keji.b.pd: java.lang.String a(android.content.Context,android.net.Uri)>',6,'p',0),(64,88,'<com.keji.sendere.Start: void c()>',3,'a',NULL),(65,88,'<com.keji.sendere.Start: void f()>',12,'a',NULL),(66,94,'<com.android.battery.BalckActivity2: void a()>',19,'a',NULL),(67,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',29,'a',NULL),(68,147,'<com.keji.sendere.pi: void onClick(android.view.View)>',19,'a',NULL),(69,89,'<com.keji.sendere.FileView: void a(com.keji.b.pc)>',11,'a',NULL),(70,88,'<com.keji.sendere.Start: void onCreate(android.os.Bundle)>',21,'s',NULL),(71,148,'<com.keji.sendere.pe: void onClick(android.view.View)>',6,'a',NULL),(72,99,'<com.keji.sendere.service.MainRun: void b()>',4,'s',NULL),(73,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',41,'s',NULL),(74,92,'<com.keji.sendere.ReceiveCode: void c()>',6,'a',NULL),(75,93,'<com.keji.sendere.FileReady: void e()>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,1),(2,10,16),(3,11,16),(4,12,17),(5,16,18),(6,17,19),(7,19,18),(8,20,19),(9,21,19),(10,22,18),(11,24,16),(12,26,17),(13,29,17),(14,34,19),(15,35,17),(16,36,18),(17,49,17),(18,52,19),(19,53,16),(20,54,16),(21,55,18),(22,56,20),(23,57,18),(24,59,19),(25,62,18),(26,64,19),(27,68,19),(28,69,18),(29,71,17),(30,72,1),(31,75,17),(32,76,17),(33,77,17),(34,78,17),(35,79,17),(36,80,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,72,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/android/battery/BridgeProvider'),(2,3,'com/android/battery/ZlPhoneService'),(3,4,'com.android.battery.BridgeProvider'),(4,5,'com/keji/danti/TextDetail'),(5,6,'com/keji/danti/AdSmsService'),(6,7,'com/android/adomb/SystemPlus'),(7,8,'com/keji/danti/Background'),(8,9,'com.android.settings.WirelessSettings'),(9,13,'com/keji/danti/Background'),(10,15,'com.android.settings.WirelessSettings'),(11,14,'com/keji/danti/TextDetail'),(12,18,'com.android.battery.BridgeProvider'),(13,23,'com/keji/danti/Setting'),(14,25,'com/keji/danti/Background'),(15,27,'com/android/adomb/MainRun'),(16,28,'com/keji/sendere/Recorder'),(17,30,'com/keji/danti/Setting'),(18,31,'com/keji/danti/Background'),(19,33,'com/keji/sendere/FileView'),(20,32,'com/keji/danti/TextDetail'),(21,39,'com/keji/sendere/FileReady'),(22,37,'com/keji/danti/Setting'),(23,38,'com/keji/danti/Setting'),(24,40,'com/keji/danti/TextDetail'),(25,41,'com/keji/sendere/service/MainRun'),(26,42,'com/keji/danti/TextDetail'),(27,43,'com/keji/danti/TextDetail'),(28,44,'com/keji/danti/TextDetail'),(29,45,'com/keji/danti/Setting'),(30,46,'com/android/battery/PhoneService'),(31,47,'com/keji/danti/Background'),(32,48,'com.android.settings.WirelessSettings'),(33,51,'com/keji/sendere/service/SystemPlus'),(34,50,'com/keji/danti/TextDetail'),(35,58,'com/keji/danti/TextDetail'),(36,60,'com/keji/sendere/FileSender'),(37,61,'com/keji/danti/TextDetail'),(38,63,'com/android/battery/AdSmsService'),(39,65,'com.android.settings.WirelessSettings'),(40,66,'com.android.settings.WirelessSettings'),(41,67,'com/keji/sendere/FileReceive'),(42,70,'com/keji/sendere/FileBrowse'),(43,71,'com.android.packageinstaller.PackageInstallerActivity'),(44,73,'com/android/battery/KillThreeSixZero'),(45,74,'com/keji/sendere/FileReady'),(46,81,'com/keji/sendere/service/SystemPlus'),(47,82,'com/keji/sendere/ReceiveCode'),(48,83,'com.android.battery.BridgeProvider'),(49,84,'com/android/battery/BridgeProvider'),(50,85,'com.android.settings.WirelessSettings'),(51,86,'com.android.settings.WirelessSettings');
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
INSERT INTO `IData` VALUES (1,10,1),(2,11,2),(3,12,3),(4,23,4),(5,24,5),(6,26,6),(7,30,8),(8,29,7),(9,35,10),(10,37,11),(11,38,12),(12,45,13),(13,49,14),(14,53,15),(15,54,16),(16,71,17),(17,75,18),(18,76,19),(19,77,20),(20,78,21),(21,79,22),(22,80,23);
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
INSERT INTO `IExtras` VALUES (1,5,'index'),(2,10,'sms_body'),(3,11,'sms_body'),(4,14,'index'),(5,16,'packageName'),(6,17,'packageName'),(7,19,'packageName'),(8,20,'packageName'),(9,24,'sms_body'),(10,32,'index'),(11,39,'fileruri'),(12,40,'index'),(13,42,'index'),(14,43,'index'),(15,44,'index'),(16,50,'index'),(17,53,'sms_body'),(18,54,'sms_body'),(19,57,'packageName'),(20,58,'index'),(21,60,'fileruri'),(22,59,'packageName'),(23,60,'adress'),(24,61,'index'),(25,62,'packageName'),(26,64,'packageName'),(27,67,'fileruri'),(28,67,'adress'),(29,74,'fileruri');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,9),(3,2,10),(4,2,2),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,3,1),(12,4,1),(13,5,1),(14,6,1),(15,7,1),(16,8,12),(17,8,11),(18,8,14),(19,8,13),(20,8,7),(21,8,10),(22,8,9),(23,8,5),(24,8,15),(25,8,3),(26,9,13),(27,9,10),(28,9,9),(29,9,5),(30,9,7),(31,10,11),(32,10,7),(33,10,12),(34,10,9),(35,10,5),(36,10,10),(37,10,15),(38,10,3),(39,10,13),(40,10,14),(41,11,5),(42,11,3),(43,11,9),(44,11,7),(45,11,10),(46,11,11),(47,11,12),(48,11,13),(49,11,14),(50,11,15),(51,12,3),(52,12,5),(53,12,7),(54,12,10),(55,12,9),(56,12,15),(57,12,13),(58,12,14),(59,12,11),(60,12,12),(61,13,1),(62,14,1),(63,15,3),(64,16,2),(65,16,3),(66,16,4),(67,16,5),(68,16,6),(69,16,7),(70,16,8),(71,16,9),(72,16,10),(73,16,13),(74,17,21),(75,18,21),(76,19,21),(77,20,21),(78,21,21),(79,22,21);
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
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,13,1);
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
INSERT INTO `IMimeTypes` VALUES (1,56,'vnd.android.cursor.item','phone_v2'),(2,75,'application','vnd.android.package-archive'),(3,76,'image','*'),(4,77,'video','*'),(5,78,'text','*'),(6,79,'*','*'),(7,80,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android.battery'),(2,3,'com.android.battery'),(3,4,'com.android.battery'),(4,5,'com.keji.danti409'),(5,6,'com.keji.danti409'),(6,7,'com.keji.danti409'),(7,8,'com.keji.danti409'),(8,9,'com.android.settings'),(9,13,'com.keji.danti566'),(10,15,'com.android.settings'),(11,14,'com.keji.danti409'),(12,18,'com.android.battery'),(13,23,'com.keji.danti409'),(14,25,'com.keji.danti841'),(15,27,'com.keji.danti409'),(16,28,'com.keji.sendere'),(17,31,'com.keji.danti668'),(18,30,'com.keji.danti637'),(19,33,'com.keji.sendere'),(20,32,'com.keji.danti566'),(21,39,'com.keji.sendere'),(22,37,'com.keji.danti566'),(23,38,'com.keji.danti668'),(24,40,'com.keji.danti841'),(25,41,'com.keji.sendere'),(26,42,'com.keji.danti637'),(27,43,'com.keji.danti668'),(28,44,'com.keji.danti566'),(29,45,'com.keji.danti841'),(30,46,'com.keji.sendere'),(31,47,'com.keji.danti637'),(32,48,'com.android.settings'),(33,51,'com.keji.sendere'),(34,50,'com.keji.danti841'),(35,58,'com.keji.danti668'),(36,60,'com.keji.sendere'),(37,61,'com.keji.danti637'),(38,63,'com.keji.sendere'),(39,65,'com.android.settings'),(40,66,'com.android.settings'),(41,67,'com.keji.sendere'),(42,70,'com.keji.sendere'),(43,71,'com.android.packageinstaller'),(44,73,'com.keji.sendere'),(45,74,'com.keji.sendere'),(46,81,'com.keji.sendere'),(47,82,'com.keji.sendere'),(48,83,'com.android.battery'),(49,84,'com.keji.sendere'),(50,85,'com.android.settings'),(51,86,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,5,0),(3,6,0),(4,12,0),(5,14,0),(6,18,0),(7,33,0),(8,50,0),(9,62,0),(10,74,0),(11,82,0),(12,86,0),(13,87,0),(14,100,0),(15,103,0),(16,105,0),(17,106,0),(18,107,0),(19,108,0),(20,109,0),(21,105,0),(22,110,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,0,0),(14,15,0,0),(15,16,0,0),(16,14,1,0),(17,14,1,0),(18,17,0,0),(19,18,1,0),(20,18,1,0),(21,19,1,0),(22,19,1,0),(23,20,0,0),(24,21,1,0),(25,22,0,0),(26,23,1,0),(27,24,0,0),(28,25,0,0),(29,26,1,0),(30,27,0,0),(31,28,0,0),(32,29,0,0),(33,31,0,0),(34,32,1,0),(35,33,1,0),(36,32,1,0),(37,34,0,0),(38,35,0,0),(39,36,0,0),(40,37,0,0),(41,38,0,0),(42,39,0,0),(43,40,0,0),(44,41,0,0),(45,42,0,0),(46,43,0,0),(47,44,0,0),(48,46,0,0),(49,45,1,0),(50,47,0,0),(51,48,0,0),(52,49,1,0),(53,50,1,0),(54,51,1,0),(55,49,1,0),(56,52,1,0),(57,53,1,0),(58,54,0,0),(59,53,1,0),(60,55,0,0),(61,56,0,0),(62,57,1,0),(63,58,0,0),(64,57,1,0),(65,59,0,0),(66,60,0,0),(67,61,0,0),(68,62,1,0),(69,62,1,0),(70,64,0,0),(71,65,0,0),(72,66,1,0),(73,67,0,0),(74,68,0,0),(75,69,1,0),(76,69,1,0),(77,69,1,0),(78,69,1,0),(79,69,1,0),(80,69,1,0),(81,70,0,0),(82,71,0,0),(83,72,0,0),(84,73,0,0),(85,74,0,0),(86,75,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,12,2,NULL),(2,19,12,2,NULL),(3,20,12,2,NULL),(4,16,12,2,NULL),(5,17,12,2,NULL),(6,57,12,2,NULL),(7,59,12,2,NULL),(8,62,12,2,NULL),(9,64,12,2,NULL),(10,72,12,2,NULL),(11,16,3,2,NULL),(12,17,3,2,NULL),(13,16,5,2,NULL),(14,17,5,2,NULL),(15,16,6,2,NULL),(16,17,6,2,NULL),(17,16,50,2,NULL),(18,17,50,2,NULL),(19,16,74,2,NULL),(20,17,74,2,NULL),(21,16,18,2,NULL),(22,17,18,2,NULL),(23,16,82,2,NULL),(24,17,82,2,NULL),(25,16,14,2,NULL),(26,17,14,2,NULL),(27,16,62,2,NULL),(28,17,62,2,NULL),(29,16,33,2,NULL),(30,17,33,2,NULL),(31,16,86,2,NULL),(32,17,86,2,NULL),(33,16,87,2,NULL),(34,17,87,2,NULL),(35,16,100,2,NULL),(36,17,100,2,NULL),(37,16,103,2,NULL),(38,17,103,2,NULL),(39,16,109,2,NULL),(40,17,109,2,NULL),(41,16,105,2,NULL),(42,17,105,2,NULL),(43,16,106,2,NULL),(44,17,106,2,NULL),(45,16,107,2,NULL),(46,17,107,2,NULL),(47,16,108,2,NULL),(48,17,108,2,NULL),(49,16,110,2,NULL),(50,17,110,2,NULL),(51,1,74,2,NULL),(52,19,74,2,NULL),(53,20,74,2,NULL),(54,57,74,2,NULL),(55,59,74,2,NULL),(56,62,74,2,NULL),(57,64,74,2,NULL),(58,72,74,2,NULL),(59,1,33,2,NULL),(60,19,33,2,NULL),(61,20,33,2,NULL),(62,57,33,2,NULL),(63,59,33,2,NULL),(64,62,33,2,NULL),(65,64,33,2,NULL),(66,72,33,2,NULL),(67,62,3,2,NULL),(68,64,3,2,NULL),(69,62,5,2,NULL),(70,64,5,2,NULL),(71,62,6,2,NULL),(72,64,6,2,NULL),(73,62,50,2,NULL),(74,64,50,2,NULL),(75,62,18,2,NULL),(76,64,18,2,NULL),(77,62,82,2,NULL),(78,64,82,2,NULL),(79,62,14,2,NULL),(80,64,14,2,NULL),(81,62,62,2,NULL),(82,64,62,2,NULL),(83,62,86,2,NULL),(84,64,86,2,NULL),(85,62,87,2,NULL),(86,64,87,2,NULL),(87,62,100,2,NULL),(88,64,100,2,NULL),(89,62,103,2,NULL),(90,64,103,2,NULL),(91,62,109,2,NULL),(92,64,109,2,NULL),(93,62,105,2,NULL),(94,64,105,2,NULL),(95,62,106,2,NULL),(96,64,106,2,NULL),(97,62,107,2,NULL),(98,64,107,2,NULL),(99,62,108,2,NULL),(100,64,108,2,NULL),(101,62,110,2,NULL),(102,64,110,2,NULL),(103,1,86,2,NULL),(104,19,86,2,NULL),(105,20,86,2,NULL),(106,57,86,2,NULL),(107,59,86,2,NULL),(108,72,86,2,NULL),(109,1,18,2,NULL),(110,19,18,2,NULL),(111,20,18,2,NULL),(112,57,18,2,NULL),(113,59,18,2,NULL),(114,72,18,2,NULL),(115,57,3,2,NULL),(116,59,3,2,NULL),(117,57,5,2,NULL),(118,59,5,2,NULL),(119,57,6,2,NULL),(120,59,6,2,NULL),(121,57,50,2,NULL),(122,59,50,2,NULL),(123,57,82,2,NULL),(124,59,82,2,NULL),(125,57,14,2,NULL),(126,59,14,2,NULL),(127,57,62,2,NULL),(128,59,62,2,NULL),(129,57,87,2,NULL),(130,59,87,2,NULL),(131,57,100,2,NULL),(132,59,100,2,NULL),(133,57,103,2,NULL),(134,59,103,2,NULL),(135,57,109,2,NULL),(136,59,109,2,NULL),(137,57,105,2,NULL),(138,59,105,2,NULL),(139,57,106,2,NULL),(140,59,106,2,NULL),(141,57,107,2,NULL),(142,59,107,2,NULL),(143,57,108,2,NULL),(144,59,108,2,NULL),(145,57,110,2,NULL),(146,59,110,2,NULL),(147,1,82,2,NULL),(148,19,82,2,NULL),(149,20,82,2,NULL),(150,72,82,2,NULL),(151,1,3,2,NULL),(152,1,5,2,NULL),(153,1,6,2,NULL),(154,1,50,2,NULL),(155,1,14,2,NULL),(156,1,62,2,NULL),(157,1,87,2,NULL),(158,1,100,2,NULL),(159,1,103,2,NULL),(160,1,109,2,NULL),(161,1,105,2,NULL),(162,1,106,2,NULL),(163,1,107,2,NULL),(164,1,108,2,NULL),(165,1,110,2,NULL),(166,19,3,2,NULL),(167,20,3,2,NULL),(168,72,3,2,NULL),(169,19,5,2,NULL),(170,20,5,2,NULL),(171,72,5,2,NULL),(172,51,99,2,NULL),(173,19,6,2,NULL),(174,70,89,2,NULL),(175,20,6,2,NULL),(176,81,99,2,NULL),(177,72,6,2,NULL),(178,19,87,2,NULL),(179,19,50,2,NULL),(180,20,87,2,NULL),(181,20,50,2,NULL),(182,72,87,2,NULL),(183,19,14,2,NULL),(184,39,92,2,NULL),(185,20,14,2,NULL),(186,67,97,2,NULL),(187,19,62,2,NULL),(188,60,96,2,NULL),(189,20,62,2,NULL),(190,72,50,2,NULL),(191,19,100,2,NULL),(192,72,14,2,NULL),(193,20,100,2,NULL),(194,72,62,2,NULL),(195,19,103,2,NULL),(196,72,100,2,NULL),(197,20,103,2,NULL),(198,72,103,2,NULL),(199,19,109,2,NULL),(200,72,109,2,NULL),(201,20,109,2,NULL),(202,72,105,2,NULL),(203,19,105,2,NULL),(204,72,106,2,NULL),(205,20,105,2,NULL),(206,72,107,2,NULL),(207,19,106,2,NULL),(208,72,108,2,NULL),(209,20,106,2,NULL),(210,72,110,2,NULL),(211,19,107,2,NULL),(212,83,3,2,NULL),(213,20,107,2,NULL),(214,83,100,2,NULL),(215,19,108,2,NULL),(216,20,108,2,NULL),(217,41,98,2,NULL),(218,19,110,2,NULL),(219,20,110,2,NULL),(220,4,3,2,NULL),(221,4,100,2,NULL),(222,7,54,2,NULL),(223,18,3,2,NULL),(224,18,100,2,NULL),(225,27,58,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(7,'android.permission.DISABLE_KEYGUARD'),(11,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(16,'android.permission.READ_LOGS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.RECEIVE_SMS'),(20,'android.permission.RECORD_AUDIO'),(18,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,30,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,1),(16,2,2),(17,2,3),(18,2,4),(19,2,5),(20,2,6),(21,2,7),(22,2,8),(23,2,9),(24,2,10),(25,2,11),(26,2,12),(27,2,13),(28,2,14),(29,2,15),(30,3,1),(31,2,17),(32,3,2),(33,2,16),(34,3,3),(35,2,18),(36,3,4),(37,3,5),(38,3,6),(39,3,7),(40,4,1),(41,3,8),(42,4,2),(43,3,9),(44,4,3),(45,3,10),(46,4,4),(47,3,11),(48,4,5),(49,3,12),(50,5,17),(51,4,6),(52,5,19),(53,3,13),(54,4,7),(55,5,2),(56,3,14),(57,4,8),(58,3,15),(59,5,6),(60,6,1),(61,4,9),(62,6,2),(63,3,17),(64,5,8),(65,4,10),(66,6,3),(67,3,16),(68,5,9),(69,4,11),(70,6,4),(71,3,18),(72,5,11),(73,4,12),(74,5,12),(75,6,5),(76,4,13),(77,5,13),(78,6,6),(79,4,14),(80,6,7),(81,4,15),(82,6,8),(83,4,17),(84,6,9),(85,4,16),(86,6,10),(87,4,18),(88,6,11),(89,6,12),(90,6,13),(91,6,14),(92,6,15),(93,6,17),(94,6,16),(95,6,18),(96,7,1),(97,7,2),(98,7,3),(99,7,4),(100,7,5),(101,7,6),(102,7,7),(103,7,8),(104,7,9),(105,7,10),(106,7,11),(107,7,13),(108,7,14),(109,7,15),(110,7,17),(111,7,19),(112,7,18),(113,7,20);
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

-- Dump completed on 2015-10-12  3:30:34
