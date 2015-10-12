-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_60
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(8,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(9,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(20,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti625',32),(2,'com.keji.danti1046',32),(3,'com.keji.danti413',25),(4,'com.keji.danti648',32),(5,'com.keji.danti1022',32),(6,'com.keji.danti408',27),(7,'com.camelgames.mxmotor',22);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,3,'com.keji.danti.MainA'),(5,1,'com.keji.danti.Lists'),(6,2,'com.keji.danti.MainA'),(7,1,'com.keji.danti.History'),(8,3,'com.keji.danti.Boutique'),(9,1,'com.keji.danti.TextDetail'),(10,2,'com.keji.danti.Boutique'),(11,1,'com.keji.danti.Setting'),(12,3,'com.keji.danti.Background'),(13,2,'com.keji.danti.Background'),(14,1,'com.android.view.custom.BaseAActivity'),(15,3,'com.keji.danti.Lists'),(16,4,'com.keji.danti.MainA'),(17,2,'com.keji.danti.Lists'),(18,1,'com.android.view.custom.FirstAActivity'),(19,3,'com.keji.danti.History'),(20,2,'com.keji.danti.History'),(21,1,'com.android.view.custom.SecondAActivity'),(22,3,'com.keji.danti.TextDetail'),(23,4,'com.keji.danti.Boutique'),(24,2,'com.keji.danti.TextDetail'),(25,3,'com.keji.danti.Setting'),(26,1,'com.android.view.custom.ThirdAActivity'),(27,5,'com.keji.danti.MainA'),(28,4,'com.keji.danti.Background'),(29,2,'com.keji.danti.Setting'),(30,1,'com.android.view.custom.FourthAActivity'),(31,3,'com.keji.danti.AdSmsService'),(32,4,'com.keji.danti.Lists'),(33,2,'com.android.view.custom.BaseAActivity'),(34,1,'com.android.view.custom.FirstAService'),(35,3,'com.android.adomb.AdSmsService'),(36,5,'com.keji.danti.Boutique'),(37,4,'com.keji.danti.History'),(38,2,'com.android.view.custom.FirstAActivity'),(39,1,'com.android.view.custom.SecondAService'),(40,3,'com.android.adomb.SystemPlus'),(41,5,'com.keji.danti.Background'),(42,4,'com.keji.danti.TextDetail'),(43,2,'com.android.view.custom.SecondAActivity'),(44,1,'com.android.view.custom.ThirdAService'),(45,3,'com.android.adomb.MainRun'),(46,5,'com.keji.danti.Lists'),(47,4,'com.keji.danti.Setting'),(48,2,'com.android.view.custom.ThirdAActivity'),(49,1,'com.android.view.custom.FourthAService'),(50,3,'com.keji.danti.BaseBroadcastReceiver'),(51,5,'com.keji.danti.History'),(52,4,'com.android.view.custom.BaseAActivity'),(53,2,'com.android.view.custom.FourthAActivity'),(54,1,'com.android.view.custom.BaseABroadcastReceiver'),(55,5,'com.keji.danti.TextDetail'),(56,2,'com.android.view.custom.FirstAService'),(57,4,'com.android.view.custom.FirstAActivity'),(58,6,'com.keji.danti.MainA'),(59,3,'com.android.adomb.ForAlarm'),(60,5,'com.keji.danti.Setting'),(61,4,'com.android.view.custom.SecondAActivity'),(62,2,'com.android.view.custom.SecondAService'),(63,5,'com.android.view.custom.BaseAActivity'),(64,2,'com.android.view.custom.ThirdAService'),(65,4,'com.android.view.custom.ThirdAActivity'),(66,6,'com.keji.danti.Boutique'),(67,5,'com.android.view.custom.FirstAActivity'),(68,4,'com.android.view.custom.FourthAActivity'),(69,2,'com.android.view.custom.FourthAService'),(70,6,'com.keji.danti.Background'),(71,5,'com.android.view.custom.SecondAActivity'),(72,2,'com.android.view.custom.BaseABroadcastReceiver'),(73,4,'com.android.view.custom.FirstAService'),(74,6,'com.keji.danti.Lists'),(75,5,'com.android.view.custom.ThirdAActivity'),(76,4,'com.android.view.custom.SecondAService'),(77,6,'com.keji.danti.History'),(78,5,'com.android.view.custom.FourthAActivity'),(79,4,'com.android.view.custom.ThirdAService'),(80,6,'com.keji.danti.TextDetail'),(81,5,'com.android.view.custom.FirstAService'),(82,4,'com.android.view.custom.FourthAService'),(83,6,'com.keji.danti.Setting'),(84,5,'com.android.view.custom.SecondAService'),(85,4,'com.android.view.custom.BaseABroadcastReceiver'),(86,6,'com.android.battery.BalckActivity2'),(87,5,'com.android.view.custom.ThirdAService'),(88,6,'com.android.battery.BalckActivity'),(89,5,'com.android.view.custom.FourthAService'),(90,6,'com.android.battery.KillThreeSixZero'),(91,5,'com.android.view.custom.BaseABroadcastReceiver'),(92,6,'com.android.battery.BridgeProvider'),(93,6,'com.android.battery.AdSmsService'),(94,6,'com.android.battery.PhoneService'),(95,6,'com.android.battery.BaseBroadcastReceiver'),(96,7,'com.camelgames.mxmotor.MainActivity'),(97,7,'com.camelgames.moto.activities.ScoreActivity'),(98,7,'com.android.view.custom.BaseAActivity'),(99,7,'com.android.view.custom.FirstAActivity'),(100,7,'com.android.view.custom.SecondAActivity'),(101,7,'com.android.view.custom.ThirdAActivity'),(102,7,'com.android.view.custom.FourthAActivity'),(103,7,'com.android.view.custom.FirstAService'),(104,7,'com.android.view.custom.SecondAService'),(105,7,'com.android.view.custom.ThirdAService'),(106,7,'com.android.view.custom.FourthAService'),(107,7,'com.android.view.custom.BaseABroadcastReceiver'),(108,3,'com.keji.danti.a.a'),(109,3,'com.keji.danti.a.ao'),(110,3,'com.keji.danti.a.ar'),(111,3,'com.keji.danti.pf'),(112,3,'com.keji.danti.c.pa'),(113,3,'com.keji.danti.a.st'),(114,4,'com.sec.android.providers.drm.Onion'),(115,3,'com.madhouse.android.ads._'),(116,4,'com.keji.danti.a.ao'),(117,1,'com.keji.danti.a.ao'),(118,4,'com.keji.danti.a.sv'),(119,2,'com.keji.danti.a.ao'),(120,1,'com.keji.danti.a.ar'),(121,5,'com.keji.danti.a.ar'),(122,4,'com.keji.danti.ph'),(123,1,'com.keji.danti.a.sy'),(124,5,'com.keji.danti.a.ao'),(125,4,'com.keji.danti.a.ar'),(126,1,'com.keji.danti.ph'),(127,2,'com.sec.android.providers.drm.Onion'),(128,4,'com.keji.danti.a.sy'),(129,2,'com.keji.danti.a.sy'),(130,5,'com.keji.danti.ph'),(131,6,'com.android.battery.b.pa'),(132,1,'com.keji.danti.a.sv'),(133,2,'com.keji.danti.ph'),(134,1,'com.sec.android.providers.drm.Onion'),(135,5,'com.sec.android.providers.drm.Onion'),(136,6,'com.keji.danti.a.ao'),(137,2,'com.keji.danti.a.ar'),(138,5,'com.keji.danti.a.sy'),(139,2,'com.keji.danti.a.sv'),(140,5,'com.keji.danti.a.sv'),(141,6,'com.keji.danti.a.st'),(142,6,'com.keji.danti.a.ar'),(143,6,'com.keji.danti.a.a'),(144,6,'com.keji.danti.pf'),(145,7,'com.sec.android.providers.drm.Onion'),(146,7,'com.android.vending.licensing.LicenseChecker');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'notSaveDate'),(2,21,'index'),(3,85,'PID'),(4,12,'data'),(5,41,'data'),(6,42,'index'),(7,24,'notSaveDate'),(8,24,'index'),(9,32,'appsec'),(10,28,'data'),(11,55,'index'),(12,95,'APP_UID'),(13,80,'appsec'),(14,74,'appsec'),(15,72,'PID'),(16,17,'appsec'),(17,91,'PID'),(18,46,'appsec'),(19,55,'notSaveDate'),(20,42,'notSaveDate'),(21,13,'data'),(22,3,'data'),(23,54,'PID'),(24,9,'notSaveDate'),(25,5,'appsec'),(26,9,'index'),(27,70,'data'),(28,95,'pdus'),(29,80,'notSaveDate'),(30,80,'index'),(31,107,'PID');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'s',0,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,69,'s',0,NULL,NULL),(69,68,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'s',1,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'a',1,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'s',0,NULL,NULL),(107,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,21),(3,3,26),(4,4,15),(5,5,50),(6,6,8),(7,7,15),(8,8,21),(9,9,85),(10,10,4),(11,11,15),(12,12,16),(13,13,45),(14,14,1),(15,15,32),(16,16,4),(17,17,6),(18,18,9),(19,19,55),(20,20,59),(21,22,33),(22,21,32),(23,23,11),(24,24,27),(25,25,42),(26,26,9),(27,27,10),(28,28,36),(29,29,5),(30,30,72),(31,31,63),(32,32,47),(33,33,2),(34,34,23),(35,35,29),(36,36,46),(37,37,95),(38,38,53),(39,39,5),(40,41,95),(41,40,17),(42,42,54),(43,43,91),(44,45,42),(45,44,80),(46,46,24),(47,48,14),(48,47,60),(49,49,80),(50,50,17),(51,51,46),(52,52,74),(53,53,24),(54,54,55),(55,55,83),(56,56,58),(57,57,66),(58,58,95),(59,59,74),(60,60,58),(61,61,95),(62,62,98),(63,62,96),(64,63,107),(65,64,96),(66,64,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,108,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(2,109,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(3,110,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(4,111,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(5,112,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,108,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(7,113,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(8,109,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(9,114,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(10,4,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(11,115,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(12,116,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(13,45,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(14,117,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(15,118,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(16,4,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(17,119,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(18,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(19,121,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(20,59,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(21,122,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(22,33,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,123,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(24,124,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(25,125,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(26,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(27,119,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(28,124,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(29,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(30,127,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,63,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(32,128,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(33,117,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,116,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(35,129,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,130,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(37,131,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(38,52,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(39,132,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(40,133,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(41,131,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(42,134,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(43,135,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(44,136,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(45,125,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,137,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(47,138,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(48,14,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(49,136,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(50,139,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(51,140,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(52,141,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(53,137,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(54,121,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(55,142,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(56,143,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(57,143,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(58,131,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(59,144,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(60,58,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(61,131,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(62,98,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(63,145,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(64,146,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,16),(2,8,17),(3,10,18),(4,11,19),(5,18,17),(6,22,19),(7,23,18),(8,26,17),(9,28,16),(10,29,16),(11,31,18),(12,32,19),(13,34,19),(14,35,18),(15,36,16),(16,37,16),(17,41,19),(18,45,18),(19,46,18),(20,47,18),(21,49,17),(22,50,19),(23,51,19),(24,54,19),(25,56,18),(26,60,17),(27,61,17),(28,64,16),(29,67,16),(30,69,18),(31,70,19),(32,71,18),(33,72,19),(34,73,20);
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
INSERT INTO `IClasses` VALUES (1,1,'com.android.settings.WirelessSettings'),(2,2,'com/keji/danti/Setting'),(3,3,'com/keji/danti/Background'),(4,4,'com/keji/danti/TextDetail'),(5,5,'com/keji/danti/AdSmsService'),(6,7,'com/keji/danti/TextDetail'),(7,9,'com.android.battery.BridgeProvider'),(8,12,'com.android.settings.WirelessSettings'),(9,13,'com.android.battery.BridgeProvider'),(10,14,'com.android.settings.WirelessSettings'),(11,16,'com/android/adomb/SystemPlus'),(12,15,'com/keji/danti/TextDetail'),(13,17,'com.android.settings.WirelessSettings'),(14,20,'com/android/adomb/MainRun'),(15,19,'com/keji/danti/Setting'),(16,21,'com/keji/danti/TextDetail'),(17,24,'com/keji/danti/Background'),(18,25,'com.android.settings.WirelessSettings'),(19,27,'com/keji/danti/Setting'),(20,30,'com/keji/danti/TextDetail'),(21,33,'com/keji/danti/Background'),(22,38,'com/keji/danti/Background'),(23,40,'com/android/battery/KillThreeSixZero'),(24,39,'com/keji/danti/TextDetail'),(25,42,'com/keji/danti/TextDetail'),(26,43,'com/android/battery/BridgeProvider'),(27,44,'com/keji/danti/TextDetail'),(28,48,'com/keji/danti/Setting'),(29,52,'com/keji/danti/Setting'),(30,53,'com/keji/danti/Background'),(31,55,'com/keji/danti/Setting'),(32,57,'com/keji/danti/TextDetail'),(33,58,'com/keji/danti/TextDetail'),(34,59,'com/keji/danti/TextDetail'),(35,62,'com/keji/danti/Background'),(36,63,'com.android.settings.WirelessSettings'),(37,65,'com/android/battery/AdSmsService'),(38,66,'com/keji/danti/TextDetail'),(39,67,'com.android.packageinstaller.PackageInstallerActivity'),(40,68,'com/android/battery/PhoneService');
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
INSERT INTO `IData` VALUES (1,2,1),(2,6,2),(3,8,3),(4,19,5),(5,18,6),(6,27,7),(7,26,8),(8,28,9),(9,29,10),(10,36,11),(11,37,12),(12,48,13),(13,52,14),(14,49,15),(15,55,16),(16,60,17),(17,61,18),(18,64,19),(19,67,20);
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
INSERT INTO `IExtras` VALUES (1,4,'index'),(2,7,'index'),(3,8,'sms_body'),(4,15,'index'),(5,18,'sms_body'),(6,21,'index'),(7,22,'packageName'),(8,23,'packageName'),(9,26,'sms_body'),(10,30,'index'),(11,32,'packageName'),(12,35,'packageName'),(13,39,'index'),(14,42,'index'),(15,41,'packageName'),(16,44,'index'),(17,45,'packageName'),(18,49,'sms_body'),(19,54,'packageName'),(20,56,'packageName'),(21,57,'index'),(22,58,'index'),(23,59,'index'),(24,60,'sms_body'),(25,61,'sms_body'),(26,66,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,2),(11,7,9),(12,7,8),(13,7,7),(14,7,6),(15,7,11),(16,7,10),(17,7,2),(18,7,3),(19,7,4),(20,7,5),(21,8,1),(22,9,11),(23,9,10),(24,9,9),(25,9,8),(26,9,4),(27,9,5),(28,9,6),(29,9,7),(30,9,2),(31,9,3),(32,10,11),(33,10,7),(34,10,8),(35,10,9),(36,10,5),(37,10,10),(38,10,6),(39,10,3),(40,10,4),(41,10,2),(42,11,5),(43,11,4),(44,11,3),(45,11,2),(46,11,9),(47,11,8),(48,11,7),(49,11,6),(50,11,10),(51,11,11),(52,12,1),(53,13,9),(54,13,6),(55,13,5),(56,13,4),(57,13,3),(58,13,2),(59,13,12),(60,13,13),(61,13,14),(62,13,15),(63,14,1),(64,15,4),(65,15,5),(66,15,2),(67,15,3),(68,15,8),(69,15,9),(70,15,6),(71,15,7),(72,15,10),(73,15,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,8,1),(7,14,1);
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
INSERT INTO `IPackages` VALUES (1,1,'com.android.settings'),(2,2,'com.keji.danti413'),(3,3,'com.keji.danti413'),(4,4,'com.keji.danti413'),(5,5,'com.keji.danti413'),(6,7,'com.keji.danti413'),(7,9,'com.android.battery'),(8,12,'com.android.settings'),(9,13,'com.android.battery'),(10,14,'com.android.settings'),(11,16,'com.keji.danti413'),(12,15,'com.keji.danti648'),(13,17,'com.android.settings'),(14,20,'com.keji.danti413'),(15,19,'com.keji.danti1022'),(16,21,'com.keji.danti648'),(17,24,'com.keji.danti625'),(18,25,'com.android.settings'),(19,27,'com.keji.danti625'),(20,30,'com.keji.danti625'),(21,33,'com.keji.danti648'),(22,38,'com.keji.danti1046'),(23,40,'com.keji.danti408'),(24,39,'com.keji.danti1022'),(25,42,'com.keji.danti625'),(26,43,'com.keji.danti408'),(27,44,'com.keji.danti1046'),(28,48,'com.keji.danti648'),(29,52,'com.keji.danti1046'),(30,53,'com.keji.danti1022'),(31,55,'com.keji.danti408'),(32,57,'com.keji.danti1046'),(33,58,'com.keji.danti1022'),(34,59,'com.keji.danti408'),(35,62,'com.keji.danti408'),(36,63,'com.android.settings'),(37,65,'com.keji.danti408'),(38,66,'com.keji.danti408'),(39,67,'com.android.packageinstaller'),(40,68,'com.keji.danti408');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,16,0),(5,27,0),(6,50,0),(7,54,0),(8,58,0),(9,72,0),(10,85,0),(11,91,0),(12,92,0),(13,95,0),(14,96,0),(15,107,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,10,0,0),(10,9,1,0),(11,9,1,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,1,0),(23,22,1,0),(24,23,0,0),(25,24,0,0),(26,25,1,0),(27,26,0,0),(28,27,1,0),(29,28,1,0),(30,29,0,0),(31,30,1,0),(32,31,1,0),(33,32,0,0),(34,30,1,0),(35,31,1,0),(36,33,1,0),(37,34,1,0),(38,35,0,0),(39,36,0,0),(40,37,0,0),(41,38,1,0),(42,39,0,0),(43,41,0,0),(44,40,0,0),(45,38,1,0),(46,42,1,0),(47,43,1,0),(48,45,0,0),(49,44,1,0),(50,42,1,0),(51,43,1,0),(52,46,0,0),(53,47,0,0),(54,48,1,0),(55,49,0,0),(56,48,1,0),(57,50,0,0),(58,51,0,0),(59,52,0,0),(60,53,1,0),(61,54,1,0),(62,55,0,0),(63,56,0,0),(64,57,1,0),(65,58,0,0),(66,59,0,0),(67,60,0,0),(68,61,0,0),(69,62,1,0),(70,62,1,0),(71,63,1,0),(72,63,1,0),(73,64,1,0);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(20,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,11,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,1,14),(16,2,2),(17,1,15),(18,2,3),(19,1,17),(20,2,4),(21,1,16),(22,2,6),(23,1,18),(24,2,7),(25,2,8),(26,3,17),(27,2,9),(28,4,1),(29,3,16),(30,2,10),(31,4,2),(32,3,19),(33,2,11),(34,4,3),(35,3,4),(36,2,12),(37,4,4),(38,3,5),(39,2,13),(40,4,5),(41,3,9),(42,2,14),(43,4,6),(44,3,12),(45,4,7),(46,2,15),(47,3,13),(48,5,1),(49,2,17),(50,4,8),(51,3,15),(52,5,2),(53,2,16),(54,4,9),(55,5,3),(56,4,10),(57,2,18),(58,5,4),(59,4,11),(60,5,6),(61,4,12),(62,5,7),(63,4,13),(64,5,8),(65,4,14),(66,5,9),(67,4,15),(68,5,10),(69,4,17),(70,5,11),(71,4,16),(72,5,12),(73,4,18),(74,5,13),(75,5,14),(76,5,15),(77,6,1),(78,5,17),(79,6,2),(80,5,16),(81,6,4),(82,5,18),(83,6,5),(84,6,6),(85,6,8),(86,6,9),(87,6,10),(88,6,11),(89,6,12),(90,6,13),(91,6,14),(92,6,15),(93,6,17),(94,6,16),(95,6,19),(96,6,18),(97,7,1),(98,7,2),(99,7,3),(100,7,4),(101,7,6),(102,7,7),(103,7,8),(104,7,9),(105,7,10),(106,7,11),(107,7,12),(108,7,13),(109,7,14),(110,7,15),(111,7,17),(112,7,16),(113,7,19),(114,7,18),(115,7,20);
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

-- Dump completed on 2015-10-09  0:40:23
