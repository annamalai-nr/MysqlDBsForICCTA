-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_53
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(18,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti733',32),(2,'com.keji.danti690',32),(3,'com.keji.danti658',32),(4,'com.keji.danti630',32),(5,'com.keji.danti421',27),(6,'com.keji.danti698',32),(7,'com.keji.danti420',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,3,'com.keji.danti.MainA'),(3,2,'com.keji.danti.MainA'),(4,1,'com.keji.danti.Boutique'),(5,4,'com.keji.danti.MainA'),(6,2,'com.keji.danti.Boutique'),(7,1,'com.keji.danti.Background'),(8,2,'com.keji.danti.Background'),(9,1,'com.keji.danti.Lists'),(10,2,'com.keji.danti.Lists'),(11,4,'com.keji.danti.Boutique'),(12,5,'com.keji.danti.MainA'),(13,1,'com.keji.danti.History'),(14,2,'com.keji.danti.History'),(15,6,'com.keji.danti.MainA'),(16,4,'com.keji.danti.Background'),(17,1,'com.keji.danti.TextDetail'),(18,2,'com.keji.danti.TextDetail'),(19,4,'com.keji.danti.Lists'),(20,1,'com.keji.danti.Setting'),(21,5,'com.keji.danti.Boutique'),(22,2,'com.keji.danti.Setting'),(23,4,'com.keji.danti.History'),(24,6,'com.keji.danti.Boutique'),(25,1,'com.android.view.custom.BaseAActivity'),(26,2,'com.android.view.custom.BaseAActivity'),(27,5,'com.keji.danti.Background'),(28,4,'com.keji.danti.TextDetail'),(29,6,'com.keji.danti.Background'),(30,1,'com.android.view.custom.FirstAActivity'),(31,2,'com.android.view.custom.FirstAActivity'),(32,5,'com.keji.danti.Lists'),(33,4,'com.keji.danti.Setting'),(34,6,'com.keji.danti.Lists'),(35,1,'com.android.view.custom.SecondAActivity'),(36,2,'com.android.view.custom.SecondAActivity'),(37,5,'com.keji.danti.History'),(38,4,'com.android.view.custom.BaseAActivity'),(39,6,'com.keji.danti.History'),(40,1,'com.android.view.custom.ThirdAActivity'),(41,2,'com.android.view.custom.ThirdAActivity'),(42,5,'com.keji.danti.TextDetail'),(43,7,'com.keji.danti.MainA'),(44,4,'com.android.view.custom.FirstAActivity'),(45,6,'com.keji.danti.TextDetail'),(46,1,'com.android.view.custom.FourthAActivity'),(47,2,'com.android.view.custom.FourthAActivity'),(48,5,'com.keji.danti.Setting'),(49,4,'com.android.view.custom.SecondAActivity'),(50,6,'com.keji.danti.Setting'),(51,1,'com.android.view.custom.FirstAService'),(52,5,'com.android.battery.BalckActivity2'),(53,2,'com.android.view.custom.FirstAService'),(54,4,'com.android.view.custom.ThirdAActivity'),(55,7,'com.keji.danti.Boutique'),(56,6,'com.android.view.custom.BaseAActivity'),(57,1,'com.android.view.custom.SecondAService'),(58,2,'com.android.view.custom.SecondAService'),(59,5,'com.android.battery.BalckActivity'),(60,4,'com.android.view.custom.FourthAActivity'),(61,7,'com.keji.danti.Background'),(62,6,'com.android.view.custom.FirstAActivity'),(63,1,'com.android.view.custom.ThirdAService'),(64,5,'com.android.battery.KillThreeSixZero'),(65,2,'com.android.view.custom.ThirdAService'),(66,4,'com.android.view.custom.FirstAService'),(67,7,'com.keji.danti.Lists'),(68,6,'com.android.view.custom.SecondAActivity'),(69,1,'com.android.view.custom.FourthAService'),(70,5,'com.android.battery.BridgeProvider'),(71,2,'com.android.view.custom.FourthAService'),(72,4,'com.android.view.custom.SecondAService'),(73,6,'com.android.view.custom.ThirdAActivity'),(74,7,'com.keji.danti.History'),(75,1,'com.android.view.custom.BaseABroadcastReceiver'),(76,2,'com.android.view.custom.BaseABroadcastReceiver'),(77,4,'com.android.view.custom.ThirdAService'),(78,7,'com.keji.danti.TextDetail'),(79,6,'com.android.view.custom.FourthAActivity'),(80,5,'com.android.battery.AdSmsService'),(81,4,'com.android.view.custom.FourthAService'),(82,6,'com.android.view.custom.FirstAService'),(83,7,'com.keji.danti.Setting'),(84,5,'com.android.battery.PhoneService'),(85,4,'com.android.view.custom.BaseABroadcastReceiver'),(86,6,'com.android.view.custom.SecondAService'),(87,7,'com.android.battery.BalckActivity2'),(88,5,'com.android.battery.BaseBroadcastReceiver'),(89,7,'com.android.battery.BalckActivity'),(90,6,'com.android.view.custom.ThirdAService'),(91,7,'com.android.battery.KillThreeSixZero'),(92,6,'com.android.view.custom.FourthAService'),(93,7,'com.android.battery.BridgeProvider'),(94,6,'com.android.view.custom.BaseABroadcastReceiver'),(95,7,'com.android.battery.AdSmsService'),(96,7,'com.android.battery.PhoneService'),(97,7,'com.android.battery.BaseBroadcastReceiver'),(98,1,'com.keji.danti.ph'),(99,4,'com.keji.danti.a.ar'),(100,6,'com.keji.danti.ph'),(101,1,'com.keji.danti.a.sy'),(102,2,'com.sec.android.providers.drm.Onion'),(103,6,'com.keji.danti.a.ao'),(104,4,'com.keji.danti.ph'),(105,1,'com.keji.danti.a.ar'),(106,7,'com.keji.danti.a.a'),(107,2,'com.keji.danti.a.sy'),(108,4,'com.keji.danti.a.sv'),(109,1,'com.keji.danti.a.ao'),(110,6,'com.keji.danti.a.sy'),(111,5,'com.keji.danti.a.a'),(112,7,'com.android.battery.b.pa'),(113,2,'com.keji.danti.ph'),(114,5,'com.android.battery.b.pa'),(115,6,'com.sec.android.providers.drm.Onion'),(116,7,'com.keji.danti.a.ar'),(117,1,'com.sec.android.providers.drm.Onion'),(118,6,'com.keji.danti.a.ar'),(119,4,'com.keji.danti.a.sy'),(120,2,'com.keji.danti.a.ao'),(121,4,'com.keji.danti.a.ao'),(122,5,'com.keji.danti.pf'),(123,2,'com.keji.danti.a.ar'),(124,5,'com.keji.danti.a.st'),(125,7,'com.keji.danti.a.ao'),(126,4,'com.sec.android.providers.drm.Onion'),(127,1,'com.keji.danti.a.sv'),(128,2,'com.keji.danti.a.sv'),(129,6,'com.keji.danti.a.sv'),(130,5,'com.keji.danti.a.ao'),(131,7,'com.keji.danti.a.st'),(132,7,'com.keji.danti.pf'),(133,5,'com.keji.danti.a.ar');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,28,'notSaveDate'),(2,34,'appsec'),(3,94,'PID'),(4,75,'PID'),(5,9,'appsec'),(6,16,'data'),(7,19,'appsec'),(8,42,'notSaveDate'),(9,88,'APP_UID'),(10,42,'index'),(11,27,'data'),(12,45,'index'),(13,79,'notSaveDate'),(14,76,'PID'),(15,18,'index'),(16,29,'data'),(17,28,'index'),(18,17,'index'),(19,8,'data'),(20,85,'PID'),(21,88,'pdus'),(22,17,'notSaveDate'),(23,10,'appsec'),(24,45,'notSaveDate'),(25,7,'data'),(26,18,'notSaveDate'),(27,97,'APP_UID'),(28,79,'index'),(29,79,'appsec'),(30,68,'appsec'),(31,97,'pdus'),(32,62,'data'),(33,42,'appsec'),(34,32,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,3,'a',1,NULL,NULL),(3,2,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,65,'s',0,NULL,NULL),(65,64,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,67,'a',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,71,'s',0,NULL,NULL),(71,70,'s',1,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,78,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,90,'s',0,NULL,NULL),(90,89,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',1,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,28),(3,3,34),(4,4,20),(5,5,76),(6,6,19),(7,7,24),(8,8,17),(9,9,43),(10,10,22),(11,11,19),(12,12,4),(13,13,50),(14,14,21),(15,15,97),(16,16,10),(17,17,28),(18,18,1),(19,19,88),(20,20,94),(21,21,97),(22,22,26),(23,23,88),(24,24,83),(25,25,75),(26,26,45),(27,27,33),(28,28,56),(29,29,6),(30,30,25),(31,31,5),(32,32,32),(33,33,15),(34,34,97),(35,35,38),(36,36,18),(37,37,17),(38,38,55),(39,39,32),(40,40,79),(41,41,88),(42,42,85),(43,43,10),(44,44,9),(45,46,79),(46,45,34),(47,47,12),(48,48,11),(49,49,45),(50,50,2),(51,51,42),(52,52,68),(53,53,18),(54,55,88),(55,54,97),(56,56,12),(57,57,43),(58,58,42),(59,59,68),(60,60,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,98,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(2,99,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(3,100,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(4,101,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(5,102,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(6,104,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(7,103,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(8,105,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(9,106,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(10,107,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,108,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(12,109,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(13,110,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(14,111,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(15,112,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(16,113,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(17,99,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(18,109,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(19,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(20,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(21,112,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(22,26,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(24,116,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(25,117,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(26,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(27,119,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(28,106,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(29,120,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(30,25,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(31,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(32,122,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,103,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(34,112,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(35,38,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(36,123,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(37,105,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(38,56,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(39,124,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(40,125,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(41,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(42,126,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(43,128,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(44,127,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(45,129,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(46,125,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(47,111,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(48,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(49,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(50,120,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(51,130,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(52,131,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(53,123,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(54,112,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(55,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(56,12,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(57,43,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(58,130,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(59,132,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(60,133,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,5,16),(2,8,17),(3,9,18),(4,13,17),(5,15,17),(6,18,19),(7,22,16),(8,23,18),(9,24,18),(10,26,16),(11,28,16),(12,29,19),(13,31,18),(14,32,17),(15,33,17),(16,34,18),(17,38,16),(18,40,18),(19,41,19),(20,42,19),(21,43,18),(22,45,16),(23,47,16),(24,49,16),(25,53,19),(26,54,18),(27,56,17),(28,59,19),(29,64,17),(30,65,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/TextDetail'),(2,2,'com/keji/danti/Setting'),(3,3,'com/keji/danti/TextDetail'),(4,4,'com/keji/danti/Background'),(5,6,'com/keji/danti/TextDetail'),(6,7,'com/keji/danti/Setting'),(7,10,'com.android.settings.WirelessSettings'),(8,11,'com/keji/danti/Background'),(9,12,'com/keji/danti/TextDetail'),(10,14,'com/keji/danti/Background'),(11,16,'com/android/battery/AdSmsService'),(12,17,'com/keji/danti/TextDetail'),(13,19,'com.android.settings.WirelessSettings'),(14,20,'com/android/battery/BridgeProvider'),(15,21,'com/android/battery/KillThreeSixZero'),(16,25,'com/android/battery/BridgeProvider'),(17,27,'com/keji/danti/Background'),(18,30,'com/keji/danti/Background'),(19,35,'com.android.settings.WirelessSettings'),(20,37,'com.android.settings.WirelessSettings'),(21,36,'com/keji/danti/TextDetail'),(22,39,'com/android/battery/KillThreeSixZero'),(23,44,'com/keji/danti/TextDetail'),(24,46,'com/keji/danti/Setting'),(25,48,'com/android/battery/AdSmsService'),(26,51,'com/keji/danti/TextDetail'),(27,50,'com/keji/danti/TextDetail'),(28,52,'com/keji/danti/TextDetail'),(29,55,'com.android.settings.WirelessSettings'),(30,58,'com.android.settings.WirelessSettings'),(31,57,'com/keji/danti/Setting'),(32,60,'com/keji/danti/TextDetail'),(33,61,'com/keji/danti/Setting'),(34,62,'com/android/battery/PhoneService'),(35,63,'com/android/battery/PhoneService'),(36,64,'com.android.packageinstaller.PackageInstallerActivity'),(37,65,'com.android.packageinstaller.PackageInstallerActivity'),(38,66,'com/keji/danti/Setting'),(39,67,'com/keji/danti/TextDetail'),(40,68,'com/keji/danti/Background');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,7,2),(3,8,3),(4,13,4),(5,15,5),(6,18,6),(7,29,7),(8,32,8),(9,33,9),(10,42,10),(11,41,11),(12,46,12),(13,53,13),(14,56,14),(15,57,15),(16,59,16),(17,61,17),(18,64,18),(19,65,19),(20,66,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'index'),(2,3,'index'),(3,6,'index'),(4,12,'index'),(5,17,'index'),(6,18,'sms_body'),(7,24,'packageName'),(8,26,'packageName'),(9,29,'sms_body'),(10,34,'packageName'),(11,36,'index'),(12,38,'packageName'),(13,40,'packageName'),(14,42,'sms_body'),(15,41,'sms_body'),(16,43,'packageName'),(17,44,'index'),(18,45,'packageName'),(19,47,'packageName'),(20,50,'index'),(21,51,'index'),(22,52,'index'),(23,53,'sms_body'),(24,59,'sms_body'),(25,60,'index'),(26,67,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,11),(19,9,10),(20,9,9),(21,9,8),(22,9,4),(23,9,5),(24,9,6),(25,9,7),(26,9,2),(27,9,3),(28,10,11),(29,10,7),(30,10,8),(31,10,9),(32,10,5),(33,10,10),(34,10,6),(35,10,3),(36,10,4),(37,10,2),(38,11,5),(39,11,4),(40,11,9),(41,11,8),(42,11,6),(43,11,10),(44,11,12),(45,11,13),(46,11,14),(47,11,15),(48,12,1),(49,13,11),(50,13,10),(51,13,9),(52,13,8),(53,13,7),(54,13,6),(55,13,5),(56,13,4),(57,13,3),(58,13,2),(59,14,10),(60,14,15),(61,14,9),(62,14,14),(63,14,12),(64,14,13),(65,14,6),(66,14,5),(67,14,8),(68,14,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti733'),(2,2,'com.keji.danti630'),(3,3,'com.keji.danti698'),(4,4,'com.keji.danti733'),(5,6,'com.keji.danti630'),(6,7,'com.keji.danti733'),(7,10,'com.android.settings'),(8,11,'com.keji.danti690'),(9,12,'com.keji.danti630'),(10,14,'com.keji.danti698'),(11,16,'com.keji.danti420'),(12,17,'com.keji.danti690'),(13,19,'com.android.settings'),(14,20,'com.keji.danti420'),(15,21,'com.keji.danti421'),(16,25,'com.keji.danti421'),(17,27,'com.keji.danti420'),(18,30,'com.keji.danti630'),(19,35,'com.android.settings'),(20,37,'com.android.settings'),(21,36,'com.keji.danti421'),(22,39,'com.keji.danti420'),(23,44,'com.keji.danti421'),(24,46,'com.keji.danti420'),(25,48,'com.keji.danti421'),(26,50,'com.keji.danti690'),(27,51,'com.keji.danti733'),(28,52,'com.keji.danti698'),(29,55,'com.android.settings'),(30,58,'com.android.settings'),(31,57,'com.keji.danti698'),(32,60,'com.keji.danti420'),(33,61,'com.keji.danti690'),(34,62,'com.keji.danti421'),(35,63,'com.keji.danti420'),(36,64,'com.android.packageinstaller'),(37,65,'com.android.packageinstaller'),(38,66,'com.keji.danti421'),(39,67,'com.keji.danti420'),(40,68,'com.keji.danti421');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,12,0),(5,15,0),(6,43,0),(7,71,0),(8,76,0),(9,75,0),(10,85,0),(11,88,0),(12,93,0),(13,94,0),(14,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,8,0,0),(8,7,1,0),(9,5,1,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,1,0),(14,13,0,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,1,0),(19,18,0,0),(20,21,0,0),(21,19,0,0),(22,20,1,0),(23,20,1,0),(24,22,1,0),(25,23,0,0),(26,22,1,0),(27,24,0,0),(28,25,1,0),(29,26,1,0),(30,27,0,0),(31,25,1,0),(32,28,1,0),(33,29,1,0),(34,30,1,0),(35,31,0,0),(36,32,0,0),(37,33,0,0),(38,30,1,0),(39,34,0,0),(40,35,1,0),(41,36,1,0),(42,37,1,0),(43,38,1,0),(44,39,0,0),(45,35,1,0),(46,40,0,0),(47,38,1,0),(48,41,0,0),(49,42,1,0),(50,43,0,0),(51,44,0,0),(52,45,0,0),(53,46,1,0),(54,42,1,0),(55,47,0,0),(56,48,1,0),(57,49,0,0),(58,50,0,0),(59,51,1,0),(60,52,0,0),(61,53,0,0),(62,55,0,0),(63,54,0,0),(64,56,0,0),(65,57,0,0),(66,58,0,0),(67,59,0,0),(68,60,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,34,2,2,NULL),(2,38,2,2,NULL),(3,24,2,2,NULL),(4,26,2,2,NULL),(5,40,2,2,NULL),(6,45,2,2,NULL),(7,43,2,2,NULL),(8,47,2,2,NULL),(9,24,1,2,NULL),(10,26,1,2,NULL),(11,24,75,2,NULL),(12,26,75,2,NULL),(13,24,76,2,NULL),(14,26,76,2,NULL),(15,24,5,2,NULL),(16,26,5,2,NULL),(17,24,85,2,NULL),(18,26,85,2,NULL),(19,24,12,2,NULL),(20,26,12,2,NULL),(21,24,71,2,NULL),(22,26,71,2,NULL),(23,24,88,2,NULL),(24,26,88,2,NULL),(25,24,15,2,NULL),(26,26,15,2,NULL),(27,24,94,2,NULL),(28,26,94,2,NULL),(29,24,43,2,NULL),(30,26,43,2,NULL),(31,24,93,2,NULL),(32,26,93,2,NULL),(33,24,97,2,NULL),(34,26,97,2,NULL),(35,34,76,2,NULL),(36,38,76,2,NULL),(37,40,76,2,NULL),(38,45,76,2,NULL),(39,43,76,2,NULL),(40,47,76,2,NULL),(41,34,15,2,NULL),(42,38,15,2,NULL),(43,34,43,2,NULL),(44,40,15,2,NULL),(45,38,43,2,NULL),(46,45,15,2,NULL),(47,40,43,2,NULL),(48,34,12,2,NULL),(49,43,15,2,NULL),(50,45,43,2,NULL),(51,47,15,2,NULL),(52,38,12,2,NULL),(53,43,43,2,NULL),(54,43,1,2,NULL),(55,40,12,2,NULL),(56,47,43,2,NULL),(57,47,1,2,NULL),(58,45,12,2,NULL),(59,34,93,2,NULL),(60,43,75,2,NULL),(61,43,12,2,NULL),(62,38,93,2,NULL),(63,47,75,2,NULL),(64,47,12,2,NULL),(65,40,93,2,NULL),(66,43,5,2,NULL),(67,34,71,2,NULL),(68,45,93,2,NULL),(69,47,5,2,NULL),(70,38,71,2,NULL),(71,43,93,2,NULL),(72,43,85,2,NULL),(73,40,71,2,NULL),(74,47,93,2,NULL),(75,47,85,2,NULL),(76,45,71,2,NULL),(77,34,97,2,NULL),(78,43,71,2,NULL),(79,47,71,2,NULL),(80,38,97,2,NULL),(81,43,88,2,NULL),(82,34,88,2,NULL),(83,47,88,2,NULL),(84,38,88,2,NULL),(85,40,97,2,NULL),(86,43,94,2,NULL),(87,45,97,2,NULL),(88,47,94,2,NULL),(89,40,88,2,NULL),(90,43,97,2,NULL),(91,45,88,2,NULL),(92,47,97,2,NULL),(93,34,94,2,NULL),(94,38,94,2,NULL),(95,40,94,2,NULL),(96,45,94,2,NULL),(97,34,1,2,NULL),(98,38,1,2,NULL),(99,40,1,2,NULL),(100,45,1,2,NULL),(101,34,75,2,NULL),(102,38,75,2,NULL),(103,34,5,2,NULL),(104,38,5,2,NULL),(105,34,85,2,NULL),(106,38,85,2,NULL),(107,40,75,2,NULL),(108,45,75,2,NULL),(109,40,5,2,NULL),(110,45,5,2,NULL),(111,40,85,2,NULL),(112,45,85,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'one',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,3,1),(3,2,1),(4,1,2),(5,3,2),(6,2,2),(7,1,3),(8,2,3),(9,3,3),(10,1,4),(11,2,4),(12,3,4),(13,1,5),(14,3,5),(15,2,5),(16,1,6),(17,3,6),(18,2,6),(19,1,7),(20,4,1),(21,2,7),(22,3,7),(23,1,8),(24,4,2),(25,3,8),(26,2,8),(27,1,9),(28,4,3),(29,2,9),(30,3,9),(31,4,4),(32,1,10),(33,3,10),(34,2,10),(35,1,11),(36,4,5),(37,2,11),(38,3,11),(39,1,12),(40,4,6),(41,3,12),(42,2,12),(43,1,13),(44,4,7),(45,5,1),(46,3,13),(47,2,13),(48,6,1),(49,1,14),(50,4,8),(51,2,14),(52,5,2),(53,6,2),(54,3,14),(55,4,9),(56,1,15),(57,2,15),(58,6,3),(59,3,15),(60,5,4),(61,4,10),(62,1,17),(63,3,17),(64,6,4),(65,2,17),(66,5,5),(67,4,11),(68,1,16),(69,2,16),(70,3,16),(71,6,5),(72,5,6),(73,1,18),(74,4,12),(75,2,18),(76,3,18),(77,6,6),(78,5,8),(79,4,13),(80,6,7),(81,5,9),(82,4,14),(83,6,8),(84,5,10),(85,4,15),(86,6,9),(87,5,11),(88,4,17),(89,6,10),(90,5,12),(91,4,16),(92,6,11),(93,5,13),(94,4,18),(95,6,12),(96,5,14),(97,5,15),(98,6,13),(99,6,14),(100,5,17),(101,7,1),(102,6,15),(103,5,16),(104,7,2),(105,6,17),(106,5,19),(107,7,4),(108,7,5),(109,6,16),(110,5,18),(111,7,6),(112,6,18),(113,7,8),(114,7,9),(115,7,10),(116,7,11),(117,7,12),(118,7,13),(119,7,14),(120,7,15),(121,7,17),(122,7,16),(123,7,19),(124,7,18);
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

-- Dump completed on 2015-10-12  3:30:49
