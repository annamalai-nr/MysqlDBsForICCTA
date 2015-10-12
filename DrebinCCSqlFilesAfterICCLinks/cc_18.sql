-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_18
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.android.battery',24),(2,'com.keji.danti311',25),(3,'com.keji.danti712',32),(4,'com.keji.danti639',32),(5,'com.keji.danti407',25),(6,'com.keji.danti713',32),(7,'com.keji.danti403',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.battery.BalckActivity2'),(2,1,'com.android.battery.BalckActivity'),(3,1,'com.android.battery.KillThreeSixZero'),(4,1,'com.android.battery.BridgeProvider'),(5,2,'com.keji.danti.MainA'),(6,1,'com.android.battery.AdSmsService'),(7,2,'com.keji.danti.Boutique'),(8,1,'com.android.battery.PhoneService'),(9,2,'com.keji.danti.Background'),(10,1,'com.android.battery.BaseBroadcastReceiver'),(11,2,'com.keji.danti.Lists'),(12,2,'com.keji.danti.History'),(13,2,'com.keji.danti.TextDetail'),(14,2,'com.keji.danti.Setting'),(15,2,'com.keji.danti.AdSmsService'),(16,2,'com.keji.utils.AdSmsService'),(17,2,'com.keji.utils.SystemPlus'),(18,3,'com.keji.danti.MainA'),(19,2,'com.keji.utils.MainRun'),(20,2,'com.keji.danti.BaseBroadcastReceiver'),(21,3,'com.keji.danti.Boutique'),(22,2,'com.keji.utils.ForAlarm'),(23,3,'com.keji.danti.Background'),(24,5,'com.keji.danti.MainA'),(25,3,'com.keji.danti.Lists'),(26,3,'com.keji.danti.History'),(27,5,'com.keji.danti.Boutique'),(28,3,'com.keji.danti.TextDetail'),(29,4,'com.keji.danti.MainA'),(30,5,'com.keji.danti.Background'),(31,3,'com.keji.danti.Setting'),(32,6,'com.keji.danti.MainA'),(33,5,'com.keji.danti.Lists'),(34,3,'com.android.view.custom.BaseAActivity'),(35,4,'com.keji.danti.Boutique'),(36,5,'com.keji.danti.History'),(37,3,'com.android.view.custom.FirstAActivity'),(38,7,'com.keji.danti.MainA'),(39,4,'com.keji.danti.Background'),(40,5,'com.keji.danti.TextDetail'),(41,6,'com.keji.danti.Boutique'),(42,3,'com.android.view.custom.SecondAActivity'),(43,4,'com.keji.danti.Lists'),(44,5,'com.keji.danti.Setting'),(45,6,'com.keji.danti.Background'),(46,3,'com.android.view.custom.ThirdAActivity'),(47,7,'com.keji.danti.Boutique'),(48,4,'com.keji.danti.History'),(49,5,'com.keji.danti.AdSmsService'),(50,6,'com.keji.danti.Lists'),(51,3,'com.android.view.custom.FourthAActivity'),(52,4,'com.keji.danti.TextDetail'),(53,5,'com.android.adomb.AdSmsService'),(54,7,'com.keji.danti.Background'),(55,6,'com.keji.danti.History'),(56,3,'com.android.view.custom.FirstAService'),(57,7,'com.keji.danti.Lists'),(58,4,'com.keji.danti.Setting'),(59,5,'com.android.adomb.SystemPlus'),(60,6,'com.keji.danti.TextDetail'),(61,3,'com.android.view.custom.SecondAService'),(62,4,'com.android.view.custom.BaseAActivity'),(63,7,'com.keji.danti.History'),(64,5,'com.android.adomb.MainRun'),(65,6,'com.keji.danti.Setting'),(66,3,'com.android.view.custom.ThirdAService'),(67,7,'com.keji.danti.TextDetail'),(68,5,'com.keji.danti.BaseBroadcastReceiver'),(69,4,'com.android.view.custom.FirstAActivity'),(70,6,'com.android.view.custom.BaseAActivity'),(71,3,'com.android.view.custom.FourthAService'),(72,4,'com.android.view.custom.SecondAActivity'),(73,7,'com.keji.danti.Setting'),(74,6,'com.android.view.custom.FirstAActivity'),(75,3,'com.android.view.custom.BaseABroadcastReceiver'),(76,5,'com.android.adomb.ForAlarm'),(77,7,'com.android.battery.BalckActivity2'),(78,4,'com.android.view.custom.ThirdAActivity'),(79,6,'com.android.view.custom.SecondAActivity'),(80,7,'com.android.battery.BalckActivity'),(81,4,'com.android.view.custom.FourthAActivity'),(82,6,'com.android.view.custom.ThirdAActivity'),(83,7,'com.android.battery.KillThreeSixZero'),(84,4,'com.android.view.custom.FirstAService'),(85,6,'com.android.view.custom.FourthAActivity'),(86,4,'com.android.view.custom.SecondAService'),(87,7,'com.android.battery.BridgeProvider'),(88,6,'com.android.view.custom.FirstAService'),(89,4,'com.android.view.custom.ThirdAService'),(90,6,'com.android.view.custom.SecondAService'),(91,7,'com.android.battery.AdSmsService'),(92,4,'com.android.view.custom.FourthAService'),(93,6,'com.android.view.custom.ThirdAService'),(94,4,'com.android.view.custom.BaseABroadcastReceiver'),(95,7,'com.android.battery.PhoneService'),(96,6,'com.android.view.custom.FourthAService'),(97,7,'com.android.battery.BaseBroadcastReceiver'),(98,6,'com.android.view.custom.BaseABroadcastReceiver'),(99,1,'c'),(100,2,'com.keji.danti.a.su'),(101,2,'com.keji.danti.a.b'),(102,2,'com.keji.danti.a.ap'),(103,2,'com.keji.danti.c.pa'),(104,2,'com.keji.danti.a.j'),(105,2,'com.keji.danti.a.sx'),(106,5,'com.keji.danti.a.st'),(107,5,'com.keji.danti.a.ao'),(108,5,'com.keji.danti.a.a'),(109,5,'com.madhouse.android.ads._'),(110,5,'com.keji.danti.c.pa'),(111,4,'com.keji.danti.a.sv'),(112,3,'com.keji.danti.ph'),(113,4,'com.keji.danti.a.sy'),(114,5,'com.keji.danti.pf'),(115,6,'com.keji.danti.a.ao'),(116,3,'com.keji.danti.a.ar'),(117,4,'com.keji.danti.a.ar'),(118,5,'com.keji.danti.a.ar'),(119,6,'com.sec.android.providers.drm.Onion'),(120,3,'com.keji.danti.a.ao'),(121,4,'com.keji.danti.a.ao'),(122,7,'com.keji.danti.a.ao'),(123,6,'com.keji.danti.a.sv'),(124,7,'com.keji.danti.pf'),(125,3,'com.keji.danti.a.sy'),(126,6,'com.keji.danti.a.sy'),(127,3,'com.sec.android.providers.drm.Onion'),(128,7,'com.keji.danti.a.ar'),(129,4,'com.sec.android.providers.drm.Onion'),(130,7,'com.android.battery.b.pa'),(131,6,'com.keji.danti.a.ar'),(132,4,'com.keji.danti.ph'),(133,7,'com.keji.danti.a.a'),(134,3,'com.keji.danti.a.sv'),(135,6,'com.keji.danti.ph'),(136,7,'com.keji.danti.a.st');
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
INSERT INTO `ComponentExtras` VALUES (1,10,'pdus'),(2,13,'index'),(3,13,'notSaveDate'),(4,9,'data'),(5,40,'notSaveDate'),(6,30,'data'),(7,40,'index'),(8,44,'appsec'),(9,75,'PID'),(10,25,'appsec'),(11,28,'index'),(12,28,'notSaveDate'),(13,39,'data'),(14,50,'appsec'),(15,52,'data'),(16,98,'PID'),(17,45,'data'),(18,53,'notSaveDate'),(19,67,'notSaveDate'),(20,60,'notSaveDate'),(21,53,'index'),(22,94,'PID'),(23,97,'APP_UID'),(24,23,'data'),(25,60,'index'),(26,67,'index'),(27,97,'pdus'),(28,67,'appsec'),(29,57,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,53,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'s',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,68,'r',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,76,'r',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,87,'s',1,NULL,NULL),(87,86,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,92,'s',0,NULL,NULL),(92,91,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,10),(3,3,10),(4,4,10),(5,5,10),(6,6,2),(7,7,11),(8,8,11),(9,9,13),(10,10,22),(11,11,20),(12,12,7),(13,13,13),(14,14,5),(15,15,14),(16,16,33),(17,17,24),(18,18,40),(19,19,24),(20,20,27),(21,21,63),(22,22,33),(23,23,24),(24,24,78),(25,25,69),(26,26,40),(27,27,44),(28,28,25),(29,29,58),(30,30,33),(31,31,41),(32,32,28),(33,33,53),(34,34,43),(35,35,98),(36,36,18),(37,37,35),(38,38,70),(39,39,34),(40,40,67),(41,41,29),(42,42,50),(43,44,53),(44,43,57),(45,45,31),(46,46,65),(47,47,75),(48,48,73),(49,49,94),(50,50,32),(51,51,21),(52,52,97),(53,53,62),(54,54,28),(55,55,60),(56,56,97),(57,57,44),(58,58,48),(59,59,25),(60,60,60),(61,61,38),(62,62,50),(63,63,97),(64,64,67),(65,65,57),(66,66,97),(67,67,38);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android.battery.BalckActivity2: void a()>',19,'a',NULL),(2,99,'<c: boolean a(android.content.Context,android.content.Intent)>',26,'a',NULL),(3,99,'<c: boolean a(android.content.Context,android.content.Intent)>',44,'s',NULL),(4,99,'<c: boolean a(android.content.Context,android.content.Intent)>',41,'s',NULL),(5,99,'<c: boolean a(android.content.Context,android.content.Intent)>',38,'s',NULL),(6,2,'<com.android.battery.BalckActivity: void a()>',19,'a',NULL),(7,100,'<com.keji.danti.a.su: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(8,101,'<com.keji.danti.a.b: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(9,102,'<com.keji.danti.a.ap: boolean a(android.view.MenuItem)>',19,'a',NULL),(10,22,'<com.keji.utils.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,103,'<com.keji.danti.c.pa: boolean a(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,104,'<com.keji.danti.a.j: void a(java.lang.String)>',6,'a',NULL),(13,102,'<com.keji.danti.a.ap: void b(java.lang.String)>',19,'a',NULL),(14,104,'<com.keji.danti.a.j: void c()>',7,'a',NULL),(15,105,'<com.keji.danti.a.sx: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(16,106,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(17,24,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(18,107,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(19,108,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(20,108,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(21,64,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(22,109,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(23,24,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(24,76,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,110,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(26,107,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(27,111,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(28,112,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(29,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(30,114,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(31,115,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(32,116,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(33,117,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(34,118,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,119,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(36,120,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(37,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(38,70,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(39,34,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(40,122,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(41,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(42,123,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(43,124,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(44,117,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,125,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(46,126,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(47,127,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(48,128,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(49,129,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(50,115,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(51,120,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(52,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(53,62,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(54,116,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(55,131,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(56,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(57,132,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(58,133,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(59,134,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(60,131,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(61,38,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(62,135,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(63,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(64,122,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(65,136,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(66,130,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(67,133,'<com.keji.danti.a.a: void c()>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,6,1),(3,12,16),(4,13,17),(5,20,16),(6,25,17),(7,30,16),(8,31,17),(9,32,17),(10,34,18),(11,36,19),(12,37,16),(13,38,19),(14,39,19),(15,40,18),(16,41,17),(17,43,18),(18,49,18),(19,51,18),(20,52,19),(21,53,19),(22,55,16),(23,57,19),(24,58,18),(25,63,16),(26,65,17),(27,66,16);
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
INSERT INTO `ICategories` VALUES (1,1,2),(2,6,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/android/battery/KillThreeSixZero'),(2,3,'com/android/battery/AdSmsService'),(3,4,'com/android/battery/BridgeProvider'),(4,5,'com/android/battery/PhoneService'),(5,7,'com/keji/danti/TextDetail'),(6,8,'com/keji/danti/TextDetail'),(7,9,'com/keji/danti/Setting'),(8,10,'com/keji/utils/MainRun'),(9,11,'com/keji/danti/AdSmsService'),(10,14,'com.android.settings.WirelessSettings'),(11,15,'com/keji/danti/Background'),(12,16,'com/keji/danti/TextDetail'),(13,17,'com.android.battery.BridgeProvider'),(14,18,'com/keji/danti/Setting'),(15,19,'com.android.settings.WirelessSettings'),(16,21,'com.android.battery.BridgeProvider'),(17,22,'com/android/adomb/SystemPlus'),(18,23,'com/android/adomb/MainRun'),(19,24,'com/keji/danti/AdSmsService'),(20,26,'com/keji/danti/TextDetail'),(21,27,'com/keji/danti/TextDetail'),(22,28,'com/keji/danti/Background'),(23,29,'com/keji/danti/TextDetail'),(24,33,'com/keji/danti/Background'),(25,35,'com.android.settings.WirelessSettings'),(26,42,'com.android.settings.WirelessSettings'),(27,44,'com/keji/danti/TextDetail'),(28,47,'com/keji/danti/Background'),(29,46,'com/keji/danti/TextDetail'),(30,45,'com/keji/danti/Setting'),(31,48,'com/keji/danti/Background'),(32,50,'com/keji/danti/Background'),(33,54,'com.android.settings.WirelessSettings'),(34,56,'com/android/battery/KillThreeSixZero'),(35,61,'com/android/battery/BridgeProvider'),(36,59,'com/keji/danti/Setting'),(37,60,'com/keji/danti/Setting'),(38,62,'com/keji/danti/TextDetail'),(39,64,'com/keji/danti/TextDetail'),(40,67,'com/keji/danti/TextDetail'),(41,66,'com.android.packageinstaller.PackageInstallerActivity'),(42,68,'com/android/battery/AdSmsService'),(43,69,'com/keji/danti/Setting'),(44,70,'com/keji/danti/TextDetail'),(45,71,'com/android/battery/PhoneService'),(46,72,'com.android.settings.WirelessSettings');
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
INSERT INTO `IData` VALUES (1,9,1),(2,12,2),(3,13,3),(4,18,4),(5,20,5),(6,25,7),(7,30,8),(8,31,9),(9,32,10),(10,37,11),(11,41,12),(12,45,13),(13,55,14),(14,59,15),(15,60,16),(16,63,17),(17,65,18),(18,66,19),(19,69,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'index'),(2,8,'index'),(3,13,'sms_body'),(4,16,'index'),(5,25,'sms_body'),(6,26,'index'),(7,27,'index'),(8,29,'index'),(9,31,'sms_body'),(10,32,'sms_body'),(11,38,'packageName'),(12,39,'packageName'),(13,40,'packageName'),(14,41,'sms_body'),(15,43,'packageName'),(16,44,'index'),(17,46,'index'),(18,57,'packageName'),(19,58,'packageName'),(20,62,'index'),(21,64,'index'),(22,65,'sms_body'),(23,67,'index'),(24,70,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,10),(4,3,11),(5,3,4),(6,3,5),(7,3,2),(8,3,3),(9,3,8),(10,3,9),(11,3,6),(12,3,7),(13,4,1),(14,5,3),(15,5,10),(16,5,11),(17,5,8),(18,5,6),(19,6,1),(20,7,1),(21,8,1),(22,9,1),(23,10,11),(24,10,8),(25,10,10),(26,10,6),(27,10,3),(28,11,4),(29,11,3),(30,11,8),(31,11,6),(32,11,10),(33,11,11),(34,11,12),(35,11,13),(36,11,14),(37,11,15),(38,12,1),(39,13,11),(40,13,10),(41,13,8),(42,13,6),(43,13,4),(44,13,3),(45,13,12),(46,13,13),(47,13,14),(48,13,15),(49,14,10),(50,14,9),(51,14,11),(52,14,6),(53,14,5),(54,14,8),(55,14,7),(56,14,2),(57,14,4),(58,14,3),(59,15,15),(60,15,14),(61,15,4),(62,15,3),(63,15,8),(64,15,6),(65,15,12),(66,15,13),(67,15,10),(68,15,11);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,6,1),(4,7,1),(5,8,1),(6,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android.battery'),(2,3,'com.android.battery'),(3,4,'com.android.battery'),(4,5,'com.android.battery'),(5,7,'com.keji.danti311'),(6,8,'com.keji.danti311'),(7,9,'com.keji.danti311'),(8,10,'com.keji.danti311'),(9,11,'com.keji.danti311'),(10,14,'com.android.settings'),(11,15,'com.keji.danti311'),(12,16,'com.keji.danti407'),(13,17,'com.android.battery'),(14,18,'com.keji.danti407'),(15,19,'com.android.settings'),(16,21,'com.android.battery'),(17,22,'com.keji.danti407'),(18,23,'com.keji.danti407'),(19,24,'com.keji.danti407'),(20,26,'com.keji.danti639'),(21,27,'com.keji.danti712'),(22,28,'com.keji.danti639'),(23,29,'com.keji.danti407'),(24,33,'com.keji.danti407'),(25,35,'com.android.settings'),(26,42,'com.android.settings'),(27,44,'com.keji.danti713'),(28,47,'com.keji.danti712'),(29,46,'com.keji.danti403'),(30,45,'com.keji.danti639'),(31,48,'com.keji.danti713'),(32,50,'com.keji.danti403'),(33,54,'com.android.settings'),(34,56,'com.keji.danti403'),(35,61,'com.keji.danti403'),(36,60,'com.keji.danti713'),(37,59,'com.keji.danti712'),(38,62,'com.keji.danti639'),(39,64,'com.keji.danti712'),(40,67,'com.keji.danti713'),(41,66,'com.android.packageinstaller'),(42,68,'com.keji.danti403'),(43,69,'com.keji.danti403'),(44,70,'com.keji.danti403'),(45,71,'com.keji.danti403'),(46,72,'com.android.settings');
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
INSERT INTO `IntentFilters` VALUES (1,4,0),(2,5,0),(3,10,0),(4,18,0),(5,20,0),(6,24,0),(7,29,0),(8,32,0),(9,38,0),(10,69,0),(11,75,0),(12,86,0),(13,94,0),(14,97,0),(15,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,1,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,1,0),(21,21,0,0),(22,23,0,0),(23,24,0,0),(24,25,0,0),(25,26,1,0),(26,27,0,0),(27,28,0,0),(28,29,0,0),(29,30,0,0),(30,31,1,0),(31,32,1,0),(32,33,1,0),(33,34,0,0),(34,35,1,0),(35,36,0,0),(36,35,1,0),(37,37,1,0),(38,38,1,0),(39,39,1,0),(40,38,1,0),(41,40,1,0),(42,41,0,0),(43,39,1,0),(44,42,0,0),(45,44,0,0),(46,43,0,0),(47,45,0,0),(48,46,0,0),(49,47,1,0),(50,48,0,0),(51,49,1,0),(52,47,1,0),(53,49,1,0),(54,50,0,0),(55,51,1,0),(56,52,0,0),(57,53,1,0),(58,53,1,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,0,0),(63,58,1,0),(64,59,0,0),(65,60,1,0),(66,61,0,0),(67,62,0,0),(68,63,0,0),(69,64,0,0),(70,65,0,0),(71,66,0,0),(72,67,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,5,2,NULL),(2,6,5,2,NULL),(3,39,5,2,NULL),(4,43,5,2,NULL),(5,57,5,2,NULL),(6,58,5,2,NULL),(7,38,5,2,NULL),(8,40,5,2,NULL),(9,1,20,2,NULL),(10,6,20,2,NULL),(11,39,20,2,NULL),(12,43,20,2,NULL),(13,57,20,2,NULL),(14,58,20,2,NULL),(15,38,20,2,NULL),(16,40,20,2,NULL),(17,10,19,2,NULL),(18,1,18,2,NULL),(19,6,18,2,NULL),(20,39,18,2,NULL),(21,43,18,2,NULL),(22,57,18,2,NULL),(23,58,18,2,NULL),(24,38,18,2,NULL),(25,40,18,2,NULL),(26,39,4,2,NULL),(27,43,4,2,NULL),(28,39,10,2,NULL),(29,43,10,2,NULL),(30,39,75,2,NULL),(31,43,75,2,NULL),(32,39,29,2,NULL),(33,43,29,2,NULL),(34,39,94,2,NULL),(35,43,94,2,NULL),(36,39,24,2,NULL),(37,43,24,2,NULL),(38,39,69,2,NULL),(39,43,69,2,NULL),(40,39,32,2,NULL),(41,43,32,2,NULL),(42,39,98,2,NULL),(43,43,98,2,NULL),(44,39,38,2,NULL),(45,43,38,2,NULL),(46,39,86,2,NULL),(47,43,86,2,NULL),(48,39,97,2,NULL),(49,43,97,2,NULL),(50,1,75,2,NULL),(51,6,75,2,NULL),(52,57,75,2,NULL),(53,58,75,2,NULL),(54,38,75,2,NULL),(55,40,75,2,NULL),(56,1,4,2,NULL),(57,1,10,2,NULL),(58,1,29,2,NULL),(59,1,94,2,NULL),(60,1,24,2,NULL),(61,1,69,2,NULL),(62,1,32,2,NULL),(63,1,98,2,NULL),(64,1,38,2,NULL),(65,1,86,2,NULL),(66,1,97,2,NULL),(67,6,4,2,NULL),(68,6,10,2,NULL),(69,6,29,2,NULL),(70,6,94,2,NULL),(71,6,24,2,NULL),(72,6,69,2,NULL),(73,6,32,2,NULL),(74,6,98,2,NULL),(75,6,38,2,NULL),(76,6,86,2,NULL),(77,6,97,2,NULL),(78,57,4,2,NULL),(79,58,4,2,NULL),(80,38,4,2,NULL),(81,40,4,2,NULL),(82,57,10,2,NULL),(83,58,10,2,NULL),(84,38,10,2,NULL),(85,40,10,2,NULL),(86,17,4,2,NULL),(87,57,38,2,NULL),(88,17,86,2,NULL),(89,58,38,2,NULL),(90,22,59,2,NULL),(91,38,38,2,NULL),(92,57,24,2,NULL),(93,40,38,2,NULL),(94,58,24,2,NULL),(95,57,86,2,NULL),(96,38,24,2,NULL),(97,58,86,2,NULL),(98,40,24,2,NULL),(99,38,86,2,NULL),(100,21,4,2,NULL),(101,40,86,2,NULL),(102,21,86,2,NULL),(103,57,97,2,NULL),(104,57,69,2,NULL),(105,58,97,2,NULL),(106,58,69,2,NULL),(107,38,97,2,NULL),(108,38,69,2,NULL),(109,40,97,2,NULL),(110,40,69,2,NULL),(111,23,63,2,NULL),(112,57,32,2,NULL),(113,57,29,2,NULL),(114,58,32,2,NULL),(115,58,29,2,NULL),(116,38,32,2,NULL),(117,38,29,2,NULL),(118,40,32,2,NULL),(119,40,29,2,NULL),(120,38,94,2,NULL),(121,57,94,2,NULL),(122,40,94,2,NULL),(123,58,94,2,NULL),(124,38,98,2,NULL),(125,57,98,2,NULL),(126,40,98,2,NULL),(127,58,98,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.CALL_PHONE'),(9,'android.permission.DISABLE_KEYGUARD'),(13,'android.permission.INTERNET'),(5,'android.permission.READ_CONTACTS'),(19,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_CONTACTS'),(17,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,22,6);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,17),(17,1,16),(18,2,18),(19,2,3),(20,2,7),(21,2,11),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,2),(27,3,3),(28,3,4),(29,3,5),(30,3,6),(31,3,7),(32,3,8),(33,3,9),(34,3,10),(35,3,11),(36,3,12),(37,3,13),(38,3,14),(39,4,1),(40,3,15),(41,4,2),(42,3,16),(43,4,3),(44,5,17),(45,3,19),(46,4,4),(47,6,1),(48,5,18),(49,3,18),(50,4,5),(51,6,2),(52,5,3),(53,6,3),(54,4,6),(55,5,7),(56,4,7),(57,6,4),(58,7,1),(59,6,5),(60,4,8),(61,5,10),(62,7,2),(63,4,9),(64,6,6),(65,5,11),(66,7,3),(67,5,13),(68,6,7),(69,4,10),(70,6,8),(71,4,11),(72,5,14),(73,7,4),(74,6,9),(75,4,12),(76,7,6),(77,5,15),(78,6,10),(79,4,13),(80,7,7),(81,6,11),(82,7,8),(83,4,14),(84,6,12),(85,7,9),(86,4,15),(87,6,13),(88,7,10),(89,4,16),(90,6,14),(91,4,19),(92,7,11),(93,6,15),(94,4,18),(95,7,12),(96,6,16),(97,7,13),(98,6,19),(99,7,14),(100,6,18),(101,7,15),(102,7,17),(103,7,16),(104,7,18);
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

-- Dump completed on 2015-10-12  3:29:34
