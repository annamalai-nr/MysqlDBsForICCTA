-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_54
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
INSERT INTO `Applications` VALUES (1,'jojo.widget.mood',1),(2,'com.keji.danti694',32),(3,'com.keji.danti410',25),(4,'com.keji.danti412',25),(5,'com.keji.danti405',25),(6,'com.keji.danti416',27),(7,'com.keji.danti430',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'jojo.widget.mood.MoodActivity'),(2,1,'jojo.widget.mood.MoodHistoryActivity'),(3,1,'com.android.view.custom.BaseAActivity'),(4,1,'com.android.view.custom.FirstAActivity'),(5,1,'com.android.view.custom.SecondAActivity'),(6,3,'com.keji.danti.MainA'),(7,1,'com.android.view.custom.ThirdAActivity'),(8,1,'com.android.view.custom.FourthAActivity'),(9,4,'com.keji.danti.MainA'),(10,5,'com.keji.danti.MainA'),(11,2,'com.keji.danti.MainA'),(12,1,'com.android.view.custom.FirstAService'),(13,3,'com.keji.danti.Boutique'),(14,1,'com.android.view.custom.SecondAService'),(15,3,'com.keji.danti.Background'),(16,4,'com.keji.danti.Boutique'),(17,5,'com.keji.danti.Boutique'),(18,1,'com.android.view.custom.ThirdAService'),(19,2,'com.keji.danti.Boutique'),(20,3,'com.keji.danti.Lists'),(21,4,'com.keji.danti.Background'),(22,5,'com.keji.danti.Background'),(23,1,'com.android.view.custom.FourthAService'),(24,2,'com.keji.danti.Background'),(25,3,'com.keji.danti.History'),(26,4,'com.keji.danti.Lists'),(27,5,'com.keji.danti.Lists'),(28,1,'com.android.view.custom.BaseABroadcastReceiver'),(29,2,'com.keji.danti.Lists'),(30,3,'com.keji.danti.TextDetail'),(31,4,'com.keji.danti.History'),(32,5,'com.keji.danti.History'),(33,3,'com.keji.danti.Setting'),(34,2,'com.keji.danti.History'),(35,4,'com.keji.danti.TextDetail'),(36,5,'com.keji.danti.TextDetail'),(37,2,'com.keji.danti.TextDetail'),(38,3,'com.keji.danti.AdSmsService'),(39,4,'com.keji.danti.Setting'),(40,5,'com.keji.danti.Setting'),(41,7,'com.keji.danti.MainA'),(42,6,'com.keji.danti.MainA'),(43,3,'com.android.adomb.AdSmsService'),(44,2,'com.keji.danti.Setting'),(45,4,'com.keji.danti.AdSmsService'),(46,5,'com.keji.danti.AdSmsService'),(47,3,'com.android.adomb.SystemPlus'),(48,2,'com.android.view.custom.BaseAActivity'),(49,4,'com.android.adomb.AdSmsService'),(50,5,'com.android.adomb.AdSmsService'),(51,3,'com.android.adomb.MainRun'),(52,2,'com.android.view.custom.FirstAActivity'),(53,7,'com.keji.danti.Boutique'),(54,4,'com.android.adomb.SystemPlus'),(55,6,'com.keji.danti.Boutique'),(56,5,'com.android.adomb.SystemPlus'),(57,2,'com.android.view.custom.SecondAActivity'),(58,3,'com.keji.danti.BaseBroadcastReceiver'),(59,6,'com.keji.danti.Background'),(60,4,'com.android.adomb.MainRun'),(61,7,'com.keji.danti.Background'),(62,5,'com.android.adomb.MainRun'),(63,2,'com.android.view.custom.ThirdAActivity'),(64,6,'com.keji.danti.Lists'),(65,7,'com.keji.danti.Lists'),(66,4,'com.keji.danti.BaseBroadcastReceiver'),(67,5,'com.keji.danti.BaseBroadcastReceiver'),(68,3,'com.android.adomb.ForAlarm'),(69,2,'com.android.view.custom.FourthAActivity'),(70,6,'com.keji.danti.History'),(71,7,'com.keji.danti.History'),(72,2,'com.android.view.custom.FirstAService'),(73,4,'com.android.adomb.ForAlarm'),(74,7,'com.keji.danti.TextDetail'),(75,6,'com.keji.danti.TextDetail'),(76,5,'com.android.adomb.ForAlarm'),(77,2,'com.android.view.custom.SecondAService'),(78,7,'com.keji.danti.Setting'),(79,6,'com.keji.danti.Setting'),(80,2,'com.android.view.custom.ThirdAService'),(81,7,'com.android.battery.BalckActivity2'),(82,6,'com.android.battery.BalckActivity2'),(83,2,'com.android.view.custom.FourthAService'),(84,6,'com.android.battery.BalckActivity'),(85,7,'com.android.battery.BalckActivity'),(86,2,'com.android.view.custom.BaseABroadcastReceiver'),(87,7,'com.android.battery.KillThreeSixZero'),(88,6,'com.android.battery.KillThreeSixZero'),(89,6,'com.android.battery.BridgeProvider'),(90,7,'com.android.battery.BridgeProvider'),(91,7,'com.android.battery.AdSmsService'),(92,6,'com.android.battery.AdSmsService'),(93,7,'com.android.battery.PhoneService'),(94,6,'com.android.battery.PhoneService'),(95,7,'com.android.battery.BaseBroadcastReceiver'),(96,6,'com.android.battery.BaseBroadcastReceiver'),(97,1,'com.sec.android.providers.drm.Onion'),(98,5,'com.keji.danti.a.ao'),(99,4,'com.keji.danti.a.ao'),(100,5,'com.keji.danti.a.a'),(101,3,'com.keji.danti.a.ar'),(102,4,'com.keji.danti.pf'),(103,3,'com.madhouse.android.ads._'),(104,3,'com.keji.danti.a.st'),(105,5,'com.keji.danti.pf'),(106,4,'com.keji.danti.c.pa'),(107,4,'com.madhouse.android.ads._'),(108,3,'com.keji.danti.c.pa'),(109,5,'com.madhouse.android.ads._'),(110,4,'com.keji.danti.a.ar'),(111,3,'com.keji.danti.pf'),(112,3,'com.keji.danti.a.ao'),(113,2,'com.keji.danti.a.ao'),(114,4,'com.keji.danti.a.st'),(115,7,'com.keji.danti.a.a'),(116,3,'com.keji.danti.a.a'),(117,2,'com.keji.danti.ph'),(118,5,'com.keji.danti.a.st'),(119,2,'com.sec.android.providers.drm.Onion'),(120,4,'com.keji.danti.a.a'),(121,6,'com.keji.danti.a.a'),(122,7,'com.keji.danti.a.ao'),(123,2,'com.keji.danti.a.ar'),(124,6,'com.keji.danti.a.ao'),(125,5,'com.keji.danti.a.ar'),(126,5,'com.keji.danti.c.pa'),(127,6,'com.keji.danti.a.ar'),(128,6,'com.keji.danti.a.st'),(129,7,'com.keji.danti.a.ar'),(130,2,'com.keji.danti.a.sy'),(131,2,'com.keji.danti.a.sv'),(132,7,'com.android.battery.b.pa'),(133,6,'com.android.battery.b.pa'),(134,6,'com.keji.danti.pf'),(135,7,'com.keji.danti.a.st'),(136,7,'com.keji.danti.pf');
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
INSERT INTO `ComponentExtras` VALUES (1,28,'PID'),(2,35,'notSaveDate'),(3,29,'notSaveDate'),(4,22,'data'),(5,15,'data'),(6,37,'notSaveDate'),(7,36,'notSaveDate'),(8,35,'index'),(9,36,'index'),(10,21,'data'),(11,95,'APP_UID'),(12,29,'index'),(13,74,'notSaveDate'),(14,96,'APP_UID'),(15,86,'PID'),(16,95,'pdus'),(17,96,'pdus'),(18,24,'data'),(19,30,'appsec'),(20,37,'index'),(21,75,'notSaveDate'),(22,74,'index'),(23,74,'appsec'),(24,65,'appsec'),(25,61,'data'),(26,59,'data'),(27,75,'appsec'),(28,66,'appsec'),(29,75,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'s',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,54,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,66,'r',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,64,'a',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,70,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,78,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,84,'a',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,90,'s',1,NULL,NULL),(90,89,'s',1,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,3),(3,2,28),(4,3,1),(5,3,3),(6,4,36),(7,5,35),(8,6,9),(9,7,17),(10,8,34),(11,9,26),(12,10,10),(13,11,20),(14,12,20),(15,13,27),(16,14,64),(17,16,58),(18,15,26),(19,17,27),(20,18,62),(21,19,39),(22,20,20),(23,21,10),(24,22,35),(25,23,6),(26,24,36),(27,25,73),(28,27,19),(29,26,29),(30,28,10),(31,29,26),(32,30,41),(33,32,30),(34,31,6),(35,33,9),(36,34,27),(37,35,68),(38,36,41),(39,37,86),(40,38,16),(41,39,76),(42,40,42),(43,41,29),(44,42,74),(45,43,37),(46,44,75),(47,45,40),(48,46,60),(49,47,6),(50,48,74),(51,49,9),(52,50,48),(53,51,13),(54,52,67),(55,53,78),(56,54,52),(57,56,66),(58,55,79),(59,57,11),(60,58,44),(61,59,54),(62,60,75),(63,61,30),(64,62,95),(65,63,96),(66,64,95),(67,65,37),(68,66,42),(69,67,95),(70,68,66),(71,69,65),(72,70,96),(73,71,95),(74,72,96),(75,73,65),(76,74,96),(77,75,53);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<jojo.widget.mood.MoodActivity: void onHistory(android.content.Context)>',4,'a',NULL),(2,97,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(3,3,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(4,98,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(5,99,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(6,9,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(7,100,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(8,101,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,102,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,10,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(11,103,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(12,104,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(13,105,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(14,106,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(15,107,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(16,108,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(17,109,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(18,62,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(19,110,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,111,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(21,10,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(22,99,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(23,6,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(24,98,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,73,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(26,112,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(27,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(28,100,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(29,114,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(30,115,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(31,116,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(32,117,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,9,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(34,118,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(35,68,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(36,41,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(37,119,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(38,120,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(39,76,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(40,121,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(41,112,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(42,122,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,123,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(44,124,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(45,125,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(46,60,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(47,6,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(48,122,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(49,120,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(50,48,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(51,116,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(52,126,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(53,127,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(54,51,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(55,129,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(56,128,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(57,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(58,130,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(59,115,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(60,124,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(61,131,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(62,132,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(63,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(64,132,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(65,123,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(66,42,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(67,132,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(68,134,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(69,135,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(70,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(71,132,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(72,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(73,136,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(74,133,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(75,121,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,16),(2,3,17),(3,4,16),(4,5,17),(5,6,18),(6,10,19),(7,21,18),(8,25,18),(9,26,19),(10,35,19),(11,36,16),(12,37,17),(13,40,19),(14,43,18),(15,44,18),(16,48,18),(17,50,17),(18,51,19),(19,54,16),(20,60,19),(21,67,19),(22,76,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'jojo/widget/mood/MoodHistoryActivity'),(2,7,'com/keji/danti/Setting'),(3,8,'com/android/adomb/SystemPlus'),(4,9,'com/keji/danti/Background'),(5,12,'com.android.battery.BridgeProvider'),(6,11,'com/keji/danti/TextDetail'),(7,13,'com/keji/danti/TextDetail'),(8,15,'com/keji/danti/AdSmsService'),(9,14,'com/keji/danti/TextDetail'),(10,16,'com/keji/danti/AdSmsService'),(11,17,'com.android.battery.BridgeProvider'),(12,18,'com/keji/danti/Background'),(13,19,'com/keji/danti/TextDetail'),(14,20,'com/android/adomb/SystemPlus'),(15,22,'com/android/adomb/SystemPlus'),(16,23,'com/keji/danti/Setting'),(17,24,'com/android/adomb/MainRun'),(18,27,'com.android.settings.WirelessSettings'),(19,28,'com/keji/danti/TextDetail'),(20,29,'com.android.settings.WirelessSettings'),(21,31,'com.android.settings.WirelessSettings'),(22,30,'com/keji/danti/TextDetail'),(23,32,'com.android.battery.BridgeProvider'),(24,34,'com/android/adomb/MainRun'),(25,33,'com/keji/danti/TextDetail'),(26,35,'com.android.packageinstaller.PackageInstallerActivity'),(27,38,'com/android/adomb/MainRun'),(28,39,'com.android.settings.WirelessSettings'),(29,41,'com/keji/danti/Setting'),(30,42,'com/keji/danti/Setting'),(31,45,'com.android.battery.BridgeProvider'),(32,46,'com/keji/danti/Background'),(33,47,'com.android.battery.BridgeProvider'),(34,49,'com.android.settings.WirelessSettings'),(35,52,'com/keji/danti/Background'),(36,53,'com/keji/danti/AdSmsService'),(37,55,'com.android.battery.BridgeProvider'),(38,57,'com/keji/danti/Background'),(39,58,'com.android.settings.WirelessSettings'),(40,56,'com/keji/danti/TextDetail'),(41,59,'com/keji/danti/Background'),(42,61,'com/keji/danti/Setting'),(43,63,'com/android/battery/BridgeProvider'),(44,62,'com/keji/danti/TextDetail'),(45,64,'com/android/battery/PhoneService'),(46,65,'com/android/battery/KillThreeSixZero'),(47,66,'com/keji/danti/Setting'),(48,68,'com/android/battery/AdSmsService'),(49,67,'com.android.packageinstaller.PackageInstallerActivity'),(50,69,'com/keji/danti/TextDetail'),(51,70,'com/keji/danti/TextDetail'),(52,71,'com/android/battery/KillThreeSixZero'),(53,72,'com/android/battery/PhoneService'),(54,73,'com/android/battery/AdSmsService'),(55,74,'com/keji/danti/TextDetail'),(56,75,'com/android/battery/BridgeProvider');
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
INSERT INTO `IData` VALUES (1,7,1),(2,6,2),(3,10,3),(4,21,7),(5,23,8),(6,26,9),(7,25,10),(8,35,11),(9,41,12),(10,40,13),(11,42,14),(12,43,15),(13,44,16),(14,48,17),(15,51,18),(16,60,19),(17,61,20),(18,66,21),(19,67,22),(20,76,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'sms_body'),(2,11,'index'),(3,13,'index'),(4,14,'index'),(5,19,'index'),(6,21,'sms_body'),(7,25,'sms_body'),(8,28,'index'),(9,30,'index'),(10,33,'index'),(11,43,'sms_body'),(12,44,'sms_body'),(13,48,'sms_body'),(14,50,'packageName'),(15,54,'packageName'),(16,56,'index'),(17,62,'index'),(18,69,'index'),(19,70,'index'),(20,74,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,1),(18,9,1),(19,10,8),(20,10,9),(21,10,10),(22,10,6),(23,10,4),(24,11,4),(25,11,9),(26,11,8),(27,11,6),(28,11,10),(29,12,4),(30,12,6),(31,12,8),(32,12,10),(33,12,9),(34,13,11),(35,13,10),(36,13,9),(37,13,8),(38,13,7),(39,13,6),(40,13,5),(41,13,4),(42,13,3),(43,13,2),(44,14,1),(45,15,1),(46,16,4),(47,16,5),(48,16,15),(49,16,6),(50,16,8),(51,16,9),(52,16,10),(53,16,12),(54,16,13),(55,16,14),(56,17,6),(57,17,4),(58,17,5),(59,17,14),(60,17,15),(61,17,12),(62,17,13),(63,17,10),(64,17,8),(65,17,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,8,1),(7,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'jojo.widget.mood'),(2,7,'com.keji.danti412'),(3,8,'com.keji.danti412'),(4,9,'com.keji.danti410'),(5,12,'com.android.battery'),(6,11,'com.keji.danti412'),(7,13,'com.keji.danti410'),(8,15,'com.keji.danti412'),(9,14,'com.keji.danti405'),(10,16,'com.keji.danti410'),(11,17,'com.android.battery'),(12,18,'com.keji.danti412'),(13,19,'com.keji.danti410'),(14,20,'com.keji.danti405'),(15,22,'com.keji.danti410'),(16,23,'com.keji.danti405'),(17,24,'com.keji.danti412'),(18,27,'com.android.settings'),(19,28,'com.keji.danti412'),(20,29,'com.android.settings'),(21,31,'com.android.settings'),(22,30,'com.keji.danti694'),(23,32,'com.android.battery'),(24,34,'com.keji.danti410'),(25,33,'com.keji.danti405'),(26,35,'com.android.packageinstaller'),(27,38,'com.keji.danti405'),(28,39,'com.android.settings'),(29,41,'com.keji.danti410'),(30,42,'com.keji.danti430'),(31,46,'com.keji.danti405'),(32,45,'com.android.battery'),(33,47,'com.android.battery'),(34,49,'com.android.settings'),(35,52,'com.keji.danti416'),(36,53,'com.keji.danti405'),(37,55,'com.android.battery'),(38,58,'com.android.settings'),(39,57,'com.keji.danti430'),(40,56,'com.keji.danti416'),(41,59,'com.keji.danti694'),(42,61,'com.keji.danti416'),(43,63,'com.keji.danti430'),(44,62,'com.keji.danti694'),(45,64,'com.keji.danti416'),(46,65,'com.keji.danti430'),(47,66,'com.keji.danti694'),(48,67,'com.android.packageinstaller'),(49,68,'com.keji.danti430'),(50,69,'com.keji.danti416'),(51,70,'com.keji.danti430'),(52,71,'com.keji.danti416'),(53,72,'com.keji.danti430'),(54,73,'com.keji.danti416'),(55,74,'com.keji.danti430'),(56,75,'com.keji.danti416');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,6,0),(4,9,0),(5,10,0),(6,11,0),(7,28,0),(8,41,0),(9,42,0),(10,58,0),(11,64,0),(12,67,0),(13,86,0),(14,89,0),(15,90,0),(16,96,0),(17,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,1,0),(5,3,1,0),(6,4,1,0),(7,5,0,0),(8,6,0,0),(9,8,0,0),(10,7,1,0),(11,9,0,0),(12,10,0,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,16,0,0),(17,18,0,0),(18,19,0,0),(19,20,0,0),(20,21,0,0),(21,22,1,0),(22,23,0,0),(23,24,0,0),(24,25,0,0),(25,26,1,0),(26,27,1,0),(27,28,0,0),(28,29,0,0),(29,30,0,0),(30,32,0,0),(31,31,0,0),(32,33,0,0),(33,34,0,0),(34,35,0,0),(35,36,0,0),(36,37,1,0),(37,37,1,0),(38,39,0,0),(39,40,0,0),(40,38,1,0),(41,41,0,0),(42,42,0,0),(43,43,1,0),(44,44,1,0),(45,46,0,0),(46,45,0,0),(47,47,0,0),(48,48,1,0),(49,49,0,0),(50,50,1,0),(51,51,1,0),(52,53,0,0),(53,52,0,0),(54,50,1,0),(55,54,0,0),(56,56,0,0),(57,55,0,0),(58,57,0,0),(59,58,0,0),(60,59,1,0),(61,60,0,0),(62,61,0,0),(63,62,0,0),(64,63,0,0),(65,64,0,0),(66,65,0,0),(67,66,0,0),(68,67,0,0),(69,68,0,0),(70,69,0,0),(71,70,0,0),(72,71,0,0),(73,72,0,0),(74,73,0,0),(75,74,0,0),(76,75,1,0);
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
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CALL_PHONE'),(13,'android.permission.DISABLE_KEYGUARD'),(17,'android.permission.INTERNET'),(8,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(11,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.SYSTEM_ALERT_WINDOW'),(18,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(10,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL),(21,NULL,NULL,'one',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,11,4),(2,15,5),(3,17,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,20),(21,2,1),(22,2,2),(23,2,4),(24,2,5),(25,2,6),(26,2,7),(27,3,17),(28,2,8),(29,3,19),(30,3,18),(31,2,9),(32,4,17),(33,3,3),(34,2,10),(35,5,17),(36,4,19),(37,3,5),(38,2,11),(39,5,19),(40,4,18),(41,2,12),(42,5,18),(43,3,6),(44,4,3),(45,2,13),(46,3,10),(47,5,3),(48,4,5),(49,3,12),(50,5,5),(51,2,14),(52,4,6),(53,3,14),(54,5,6),(55,2,15),(56,4,10),(57,5,10),(58,2,17),(59,4,12),(60,5,12),(61,2,19),(62,4,14),(63,7,1),(64,6,1),(65,5,14),(66,2,18),(67,7,2),(68,6,2),(69,2,20),(70,7,3),(71,6,3),(72,7,5),(73,6,5),(74,7,6),(75,6,6),(76,6,7),(77,7,7),(78,6,9),(79,7,9),(80,7,10),(81,6,10),(82,6,11),(83,7,11),(84,6,12),(85,7,12),(86,6,13),(87,7,13),(88,7,14),(89,6,14),(90,7,15),(91,6,15),(92,6,17),(93,7,17),(94,7,19),(95,6,19),(96,7,18),(97,6,18),(98,7,20),(99,6,20);
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

-- Dump completed on 2015-10-09  0:40:07
