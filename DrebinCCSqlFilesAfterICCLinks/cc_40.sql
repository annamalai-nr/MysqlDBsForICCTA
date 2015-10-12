-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_40
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(9,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.keji.danti693',32),(2,'com.keji.danti717',32),(3,'com.keji.danti419',25),(4,'com.keji.danti407',27),(5,'com.keji.danti424',25),(6,'com.keji.danti724',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'com.keji.danti.MainA'),(2,1,'com.keji.danti.MainA'),(3,2,'com.keji.danti.MainA'),(4,3,'com.keji.danti.Boutique'),(5,1,'com.keji.danti.Boutique'),(6,2,'com.keji.danti.Boutique'),(7,3,'com.keji.danti.Background'),(8,1,'com.keji.danti.Background'),(9,5,'com.keji.danti.MainA'),(10,2,'com.keji.danti.Background'),(11,3,'com.keji.danti.Lists'),(12,1,'com.keji.danti.Lists'),(13,2,'com.keji.danti.Lists'),(14,3,'com.keji.danti.History'),(15,1,'com.keji.danti.History'),(16,2,'com.keji.danti.History'),(17,3,'com.keji.danti.TextDetail'),(18,5,'com.keji.danti.Boutique'),(19,1,'com.keji.danti.TextDetail'),(20,4,'com.keji.danti.MainA'),(21,2,'com.keji.danti.TextDetail'),(22,3,'com.keji.danti.Setting'),(23,5,'com.keji.danti.Background'),(24,1,'com.keji.danti.Setting'),(25,2,'com.keji.danti.Setting'),(26,3,'com.keji.danti.AdSmsService'),(27,5,'com.keji.danti.Lists'),(28,1,'com.android.view.custom.BaseAActivity'),(29,2,'com.android.view.custom.BaseAActivity'),(30,4,'com.keji.danti.Boutique'),(31,3,'com.android.adomb.AdSmsService'),(32,5,'com.keji.danti.History'),(33,1,'com.android.view.custom.FirstAActivity'),(34,2,'com.android.view.custom.FirstAActivity'),(35,3,'com.android.adomb.SystemPlus'),(36,4,'com.keji.danti.Background'),(37,5,'com.keji.danti.TextDetail'),(38,1,'com.android.view.custom.SecondAActivity'),(39,2,'com.android.view.custom.SecondAActivity'),(40,4,'com.keji.danti.Lists'),(41,3,'com.android.adomb.MainRun'),(42,5,'com.keji.danti.Setting'),(43,6,'com.keji.danti.MainA'),(44,1,'com.android.view.custom.ThirdAActivity'),(45,2,'com.android.view.custom.ThirdAActivity'),(46,4,'com.keji.danti.History'),(47,5,'com.keji.danti.AdSmsService'),(48,3,'com.keji.danti.BaseBroadcastReceiver'),(49,1,'com.android.view.custom.FourthAActivity'),(50,2,'com.android.view.custom.FourthAActivity'),(51,5,'com.android.adomb.AdSmsService'),(52,4,'com.keji.danti.TextDetail'),(53,6,'com.keji.danti.Boutique'),(54,1,'com.android.view.custom.FirstAService'),(55,2,'com.android.view.custom.FirstAService'),(56,4,'com.keji.danti.Setting'),(57,5,'com.android.adomb.SystemPlus'),(58,1,'com.android.view.custom.SecondAService'),(59,3,'com.android.adomb.ForAlarm'),(60,6,'com.keji.danti.Background'),(61,2,'com.android.view.custom.SecondAService'),(62,4,'com.android.battery.BalckActivity2'),(63,5,'com.android.adomb.MainRun'),(64,1,'com.android.view.custom.ThirdAService'),(65,6,'com.keji.danti.Lists'),(66,2,'com.android.view.custom.ThirdAService'),(67,4,'com.android.battery.BalckActivity'),(68,5,'com.keji.danti.BaseBroadcastReceiver'),(69,1,'com.android.view.custom.FourthAService'),(70,6,'com.keji.danti.History'),(71,2,'com.android.view.custom.FourthAService'),(72,4,'com.android.battery.KillThreeSixZero'),(73,1,'com.android.view.custom.BaseABroadcastReceiver'),(74,6,'com.keji.danti.TextDetail'),(75,2,'com.android.view.custom.BaseABroadcastReceiver'),(76,5,'com.android.adomb.ForAlarm'),(77,4,'com.android.battery.BridgeProvider'),(78,6,'com.keji.danti.Setting'),(79,6,'com.android.view.custom.BaseAActivity'),(80,4,'com.android.battery.AdSmsService'),(81,6,'com.android.view.custom.FirstAActivity'),(82,4,'com.android.battery.PhoneService'),(83,6,'com.android.view.custom.SecondAActivity'),(84,4,'com.android.battery.BaseBroadcastReceiver'),(85,6,'com.android.view.custom.ThirdAActivity'),(86,6,'com.android.view.custom.FourthAActivity'),(87,6,'com.android.view.custom.FirstAService'),(88,6,'com.android.view.custom.SecondAService'),(89,6,'com.android.view.custom.ThirdAService'),(90,6,'com.android.view.custom.FourthAService'),(91,6,'com.android.view.custom.BaseABroadcastReceiver'),(92,3,'com.keji.danti.c.pa'),(93,3,'com.keji.danti.a.a'),(94,3,'com.keji.danti.a.ao'),(95,3,'com.keji.danti.a.st'),(96,5,'com.keji.danti.a.a'),(97,5,'com.keji.danti.a.ao'),(98,3,'com.keji.danti.pf'),(99,3,'com.madhouse.android.ads._'),(100,2,'com.keji.danti.a.ar'),(101,3,'com.keji.danti.a.ar'),(102,5,'com.keji.danti.pf'),(103,5,'com.keji.danti.a.ar'),(104,1,'com.sec.android.providers.drm.Onion'),(105,4,'com.keji.danti.a.ao'),(106,2,'com.keji.danti.ph'),(107,1,'com.keji.danti.a.sy'),(108,4,'com.keji.danti.a.a'),(109,6,'com.keji.danti.a.sy'),(110,5,'com.madhouse.android.ads._'),(111,1,'com.keji.danti.a.sv'),(112,2,'com.keji.danti.a.sv'),(113,6,'com.keji.danti.a.ao'),(114,1,'com.keji.danti.ph'),(115,4,'com.keji.danti.pf'),(116,5,'com.keji.danti.c.pa'),(117,2,'com.keji.danti.a.sy'),(118,6,'com.keji.danti.a.ar'),(119,1,'com.keji.danti.a.ao'),(120,4,'com.android.battery.b.pa'),(121,5,'com.keji.danti.a.st'),(122,2,'com.keji.danti.a.ao'),(123,2,'com.sec.android.providers.drm.Onion'),(124,4,'com.keji.danti.a.st'),(125,1,'com.keji.danti.a.ar'),(126,6,'com.keji.danti.a.sv'),(127,6,'com.sec.android.providers.drm.Onion'),(128,4,'com.keji.danti.a.ar'),(129,6,'com.keji.danti.ph');
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
INSERT INTO `ComponentExtras` VALUES (1,18,'notSaveDate'),(2,18,'index'),(3,7,'data'),(4,13,'appsec'),(5,22,'data'),(6,84,'pdus'),(7,37,'index'),(8,37,'notSaveDate'),(9,74,'PID'),(10,12,'appsec'),(11,73,'notSaveDate'),(12,91,'PID'),(13,19,'index'),(14,51,'notSaveDate'),(15,65,'appsec'),(16,35,'data'),(17,51,'index'),(18,10,'data'),(19,21,'index'),(20,21,'notSaveDate'),(21,84,'APP_UID'),(22,75,'PID'),(23,60,'data'),(24,73,'index'),(25,8,'data'),(26,19,'notSaveDate'),(27,51,'appsec'),(28,40,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,35,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,48,'r',1,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,47,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'s',0,NULL,NULL),(53,54,'s',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,69,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,73,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,77,'s',1,NULL,NULL),(77,76,'r',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,46),(2,2,1),(3,3,59),(4,4,4),(5,5,18),(6,6,18),(7,7,11),(8,8,9),(9,9,1),(10,10,37),(11,11,11),(12,12,77),(13,13,9),(14,14,11),(15,15,21),(16,16,23),(17,17,27),(18,18,1),(19,19,29),(20,20,42),(21,21,51),(22,22,74),(23,23,41),(24,24,63),(25,25,13),(26,26,24),(27,27,20),(28,28,78),(29,29,27),(30,30,12),(31,31,20),(32,32,9),(33,33,13),(34,34,43),(35,35,54),(36,36,21),(37,37,17),(38,39,40),(39,38,12),(40,40,68),(41,41,25),(42,42,73),(43,43,2),(44,44,84),(45,45,27),(46,46,3),(47,47,28),(48,48,79),(49,49,84),(50,50,37),(51,51,75),(52,52,40),(53,53,65),(54,54,19),(55,55,6),(56,56,19),(57,58,84),(58,57,73),(59,59,84),(60,60,5),(61,61,91),(62,62,56),(63,63,51),(64,64,65),(65,65,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,92,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(2,93,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(3,59,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,93,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(5,94,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(6,94,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(7,95,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(8,96,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(9,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(10,97,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(11,98,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(12,76,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(13,9,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(14,99,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(15,100,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(16,101,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(17,102,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(19,29,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(20,103,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(21,105,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,104,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(23,41,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(24,63,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(25,106,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(26,107,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(27,108,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(28,109,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(29,110,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(30,111,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(31,20,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(32,9,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(33,112,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(34,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(35,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(36,100,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(37,96,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(38,114,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(39,115,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,116,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(41,117,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(42,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,119,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(44,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(45,121,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(46,122,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(47,28,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(48,79,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(49,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(50,97,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(51,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(52,124,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(53,126,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(54,125,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(55,122,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(56,125,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(57,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(58,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(59,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(60,119,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(61,127,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(62,128,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(63,105,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(64,129,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(65,108,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,16),(2,6,17),(3,10,17),(4,18,18),(5,21,19),(6,23,19),(7,24,18),(8,32,16),(9,35,16),(10,36,17),(11,37,16),(12,42,17),(13,47,18),(14,48,18),(15,50,19),(16,52,19),(17,53,19),(18,54,18),(19,58,16),(20,61,17),(21,63,16),(22,64,19),(23,66,18),(24,67,17),(25,69,16);
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
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/AdSmsService'),(2,2,'com.android.settings.WirelessSettings'),(3,3,'com/android/adomb/MainRun'),(4,5,'com/keji/danti/Setting'),(5,8,'com.android.settings.WirelessSettings'),(6,7,'com/keji/danti/TextDetail'),(7,9,'com/android/adomb/SystemPlus'),(8,12,'com/android/adomb/MainRun'),(9,11,'com/keji/danti/TextDetail'),(10,13,'com.android.battery.BridgeProvider'),(11,15,'com/keji/danti/Background'),(12,14,'com/keji/danti/Setting'),(13,16,'com/keji/danti/TextDetail'),(14,17,'com.android.battery.BridgeProvider'),(15,19,'com/keji/danti/Background'),(16,22,'com.android.battery.BridgeProvider'),(17,20,'com/keji/danti/Setting'),(18,25,'com.android.battery.BridgeProvider'),(19,27,'com/keji/danti/Background'),(20,26,'com/keji/danti/TextDetail'),(21,28,'com.android.settings.WirelessSettings'),(22,29,'com/keji/danti/Background'),(23,31,'com/android/adomb/SystemPlus'),(24,34,'com.android.settings.WirelessSettings'),(25,30,'com/keji/danti/TextDetail'),(26,33,'com/keji/danti/TextDetail'),(27,32,'com.android.packageinstaller.PackageInstallerActivity'),(28,39,'com/keji/danti/TextDetail'),(29,38,'com/keji/danti/TextDetail'),(30,40,'com/keji/danti/AdSmsService'),(31,41,'com/keji/danti/Background'),(32,43,'com.android.settings.WirelessSettings'),(33,44,'com/android/battery/PhoneService'),(34,46,'com.android.settings.WirelessSettings'),(35,45,'com/keji/danti/TextDetail'),(36,49,'com/android/battery/KillThreeSixZero'),(37,51,'com/keji/danti/Setting'),(38,55,'com/keji/danti/TextDetail'),(39,56,'com/keji/danti/TextDetail'),(40,57,'com/keji/danti/Setting'),(41,59,'com/android/battery/AdSmsService'),(42,60,'com/keji/danti/Setting'),(43,62,'com/android/battery/BridgeProvider'),(44,65,'com/keji/danti/Background'),(45,68,'com/keji/danti/TextDetail');
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
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,10,4),(5,14,6),(6,20,7),(7,32,9),(8,35,10),(9,37,11),(10,36,12),(11,42,13),(12,51,14),(13,57,15),(14,58,16),(15,60,17),(16,61,18),(17,63,19),(18,67,20),(19,69,21);
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
INSERT INTO `IExtras` VALUES (1,6,'sms_body'),(2,7,'index'),(3,10,'sms_body'),(4,11,'index'),(5,16,'index'),(6,18,'packageName'),(7,23,'packageName'),(8,26,'index'),(9,30,'index'),(10,33,'index'),(11,36,'sms_body'),(12,39,'index'),(13,38,'index'),(14,42,'sms_body'),(15,45,'index'),(16,47,'packageName'),(17,48,'packageName'),(18,50,'packageName'),(19,52,'packageName'),(20,55,'index'),(21,56,'index'),(22,61,'sms_body'),(23,68,'index'),(24,67,'sms_body');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,6),(8,7,2),(9,7,3),(10,7,4),(11,7,5),(12,8,2),(13,8,5),(14,8,6),(15,8,3),(16,8,4),(17,9,11),(18,9,10),(19,9,9),(20,9,8),(21,9,4),(22,9,5),(23,9,6),(24,9,7),(25,9,2),(26,9,3),(27,10,1),(28,11,5),(29,11,4),(30,11,3),(31,11,2),(32,11,9),(33,11,8),(34,11,7),(35,11,6),(36,11,10),(37,11,11),(38,12,4),(39,12,3),(40,12,6),(41,12,5),(42,12,9),(43,12,15),(44,12,13),(45,12,14),(46,12,2),(47,12,12),(48,13,11),(49,13,10),(50,13,9),(51,13,8),(52,13,7),(53,13,6),(54,13,5),(55,13,4),(56,13,3),(57,13,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti419'),(2,2,'com.android.settings'),(3,3,'com.keji.danti419'),(4,5,'com.keji.danti419'),(5,8,'com.android.settings'),(6,7,'com.keji.danti419'),(7,9,'com.keji.danti419'),(8,12,'com.keji.danti424'),(9,11,'com.keji.danti419'),(10,13,'com.android.battery'),(11,15,'com.keji.danti419'),(12,14,'com.keji.danti717'),(13,16,'com.keji.danti424'),(14,17,'com.android.battery'),(15,19,'com.keji.danti424'),(16,22,'com.android.battery'),(17,20,'com.keji.danti407'),(18,25,'com.android.battery'),(19,27,'com.keji.danti693'),(20,26,'com.keji.danti717'),(21,28,'com.android.settings'),(22,29,'com.keji.danti724'),(23,31,'com.keji.danti424'),(24,30,'com.keji.danti693'),(25,34,'com.android.settings'),(26,33,'com.keji.danti717'),(27,32,'com.android.packageinstaller'),(28,39,'com.keji.danti693'),(29,38,'com.keji.danti407'),(30,40,'com.keji.danti424'),(31,41,'com.keji.danti717'),(32,44,'com.keji.danti407'),(33,43,'com.android.settings'),(34,46,'com.android.settings'),(35,45,'com.keji.danti424'),(36,49,'com.keji.danti407'),(37,51,'com.keji.danti424'),(38,55,'com.keji.danti407'),(39,56,'com.keji.danti724'),(40,57,'com.keji.danti693'),(41,59,'com.keji.danti407'),(42,60,'com.keji.danti724'),(43,62,'com.keji.danti407'),(44,65,'com.keji.danti407'),(45,68,'com.keji.danti724');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,9,0),(5,20,0),(6,43,0),(7,46,0),(8,68,0),(9,75,0),(10,76,0),(11,74,0),(12,84,0),(13,91,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,19,1,0),(19,20,0,0),(20,21,0,0),(21,22,1,0),(22,23,0,0),(23,19,1,0),(24,22,1,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,27,0,0),(29,28,0,0),(30,30,0,0),(31,32,0,0),(32,31,0,0),(33,33,0,0),(34,34,0,0),(35,35,1,0),(36,36,1,0),(37,37,1,0),(38,39,0,0),(39,38,0,0),(40,40,0,0),(41,41,0,0),(42,42,1,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,47,1,0),(48,48,1,0),(49,49,0,0),(50,47,1,0),(51,50,0,0),(52,48,1,0),(53,51,1,0),(54,51,1,0),(55,52,0,0),(56,53,0,0),(57,54,0,0),(58,55,1,0),(59,58,0,0),(60,57,0,0),(61,56,1,0),(62,59,0,0),(63,60,1,0),(64,61,1,0),(65,62,0,0),(66,61,1,0),(67,63,1,0),(68,64,0,0),(69,65,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,47,20,2,NULL),(2,50,20,2,NULL),(3,13,76,2,NULL),(4,18,20,2,NULL),(5,31,36,2,NULL),(6,23,20,2,NULL),(7,31,57,2,NULL),(8,48,20,2,NULL),(9,47,9,2,NULL),(10,52,20,2,NULL),(11,50,9,2,NULL),(12,47,76,2,NULL),(13,18,9,2,NULL),(14,50,76,2,NULL),(15,23,9,2,NULL),(16,18,76,2,NULL),(17,48,9,2,NULL),(18,23,76,2,NULL),(19,52,9,2,NULL),(20,48,76,2,NULL),(21,25,76,2,NULL),(22,52,76,2,NULL),(23,47,68,2,NULL),(24,47,84,2,NULL),(25,50,68,2,NULL),(26,50,84,2,NULL),(27,18,68,2,NULL),(28,18,84,2,NULL),(29,23,68,2,NULL),(30,23,84,2,NULL),(31,48,68,2,NULL),(32,48,84,2,NULL),(33,52,68,2,NULL),(34,52,84,2,NULL),(35,12,41,2,NULL),(36,12,63,2,NULL),(37,47,43,2,NULL),(38,50,43,2,NULL),(39,18,43,2,NULL),(40,23,43,2,NULL),(41,48,43,2,NULL),(42,52,43,2,NULL),(43,48,2,2,NULL),(44,52,2,2,NULL),(45,48,74,2,NULL),(46,52,74,2,NULL),(47,48,3,2,NULL),(48,52,3,2,NULL),(49,48,75,2,NULL),(50,52,75,2,NULL),(51,48,1,2,NULL),(52,52,1,2,NULL),(53,48,46,2,NULL),(54,52,46,2,NULL),(55,48,91,2,NULL),(56,52,91,2,NULL),(57,47,91,2,NULL),(58,50,91,2,NULL),(59,18,91,2,NULL),(60,23,91,2,NULL),(61,47,3,2,NULL),(62,50,3,2,NULL),(63,18,3,2,NULL),(64,23,3,2,NULL),(65,18,2,2,NULL),(66,23,2,2,NULL),(67,18,74,2,NULL),(68,23,74,2,NULL),(69,18,75,2,NULL),(70,23,75,2,NULL),(71,18,1,2,NULL),(72,23,1,2,NULL),(73,18,46,2,NULL),(74,23,46,2,NULL),(75,47,75,2,NULL),(76,50,75,2,NULL),(77,9,36,2,NULL),(78,9,57,2,NULL),(79,17,76,2,NULL),(80,47,1,2,NULL),(81,50,1,2,NULL),(82,22,76,2,NULL),(83,47,46,2,NULL),(84,50,46,2,NULL),(85,3,41,2,NULL),(86,3,63,2,NULL),(87,47,2,2,NULL),(88,50,2,2,NULL),(89,47,74,2,NULL),(90,50,74,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'one',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,14,5),(2,29,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,3,17),(15,2,7),(16,1,8),(17,3,16),(18,2,8),(19,1,9),(20,3,19),(21,2,9),(22,3,4),(23,1,10),(24,2,10),(25,1,11),(26,3,5),(27,2,11),(28,3,9),(29,1,12),(30,2,12),(31,3,12),(32,1,13),(33,2,13),(34,1,14),(35,3,13),(36,2,14),(37,1,15),(38,3,15),(39,4,1),(40,2,15),(41,4,2),(42,1,17),(43,2,17),(44,4,4),(45,1,16),(46,5,17),(47,2,16),(48,5,16),(49,4,5),(50,1,18),(51,2,18),(52,5,19),(53,4,6),(54,5,4),(55,4,8),(56,4,9),(57,5,5),(58,4,10),(59,5,9),(60,4,11),(61,5,12),(62,6,1),(63,4,12),(64,5,13),(65,6,2),(66,5,15),(67,4,13),(68,6,3),(69,4,14),(70,6,4),(71,6,5),(72,4,15),(73,4,17),(74,6,6),(75,4,16),(76,6,7),(77,4,19),(78,6,8),(79,4,18),(80,6,9),(81,6,10),(82,6,11),(83,6,12),(84,6,13),(85,6,14),(86,6,15),(87,6,17),(88,6,16),(89,6,18);
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

-- Dump completed on 2015-10-12  3:30:21
