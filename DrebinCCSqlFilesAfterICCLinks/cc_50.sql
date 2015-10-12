-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_50
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(12,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(18,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.INPUT_METHOD_CHANGED'),(11,'android.intent.action.MAIN'),(16,'android.intent.action.SEARCH'),(17,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(10,'android.intent.action.UMS_CONNECTED'),(2,'android.intent.action.UMS_DISCONNECTED'),(8,'android.intent.action.USER_PRESENT'),(15,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.net.conn.MEDIA_NOFS'),(6,'android.net.wifi.PICK_WIFI_WORK'),(4,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.android.server.touchScreen',45),(2,'com.keji.danti665',32),(3,'com.keji.danti1052',32),(4,'com.keji.danti679',32),(5,'com.keji.danti418',25),(6,'com.keji.danti700',32),(7,'com.cdjm.reader.zheyang58',14);
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
INSERT INTO `Classes` VALUES (1,1,'com.android.server.touchScreen.BaseAActivity'),(2,1,'com.android.server.touchScreen.FirstAActivity'),(3,1,'com.android.server.touchScreen.SecondAActivity'),(4,1,'com.android.server.touchScreen.ThirdAActivity'),(5,1,'com.android.server.touchScreen.FourthAActivity'),(6,1,'com.android.server.touchScreen.FirstAService'),(7,1,'com.android.server.touchScreen.SecondAService'),(8,1,'com.android.server.touchScreen.ThirdAService'),(9,1,'com.android.server.touchScreen.FourthAService'),(10,1,'com.android.server.touchScreen.BaseABroadcastReceiver'),(11,5,'com.keji.danti.MainA'),(12,3,'com.keji.danti.MainA'),(13,4,'com.keji.danti.MainA'),(14,2,'com.keji.danti.MainA'),(15,5,'com.keji.danti.Boutique'),(16,3,'com.keji.danti.Boutique'),(17,4,'com.keji.danti.Boutique'),(18,5,'com.keji.danti.Background'),(19,2,'com.keji.danti.Boutique'),(20,3,'com.keji.danti.Background'),(21,5,'com.keji.danti.Lists'),(22,4,'com.keji.danti.Background'),(23,2,'com.keji.danti.Background'),(24,6,'com.keji.danti.MainA'),(25,3,'com.keji.danti.Lists'),(26,5,'com.keji.danti.History'),(27,4,'com.keji.danti.Lists'),(28,2,'com.keji.danti.Lists'),(29,3,'com.keji.danti.History'),(30,5,'com.keji.danti.TextDetail'),(31,4,'com.keji.danti.History'),(32,2,'com.keji.danti.History'),(33,3,'com.keji.danti.TextDetail'),(34,6,'com.keji.danti.Boutique'),(35,5,'com.keji.danti.Setting'),(36,4,'com.keji.danti.TextDetail'),(37,2,'com.keji.danti.TextDetail'),(38,3,'com.keji.danti.Setting'),(39,6,'com.keji.danti.Background'),(40,5,'com.keji.danti.AdSmsService'),(41,4,'com.keji.danti.Setting'),(42,2,'com.keji.danti.Setting'),(43,3,'com.android.view.custom.BaseAActivity'),(44,6,'com.keji.danti.Lists'),(45,5,'com.android.adomb.AdSmsService'),(46,4,'com.android.view.custom.BaseAActivity'),(47,2,'com.android.view.custom.BaseAActivity'),(48,3,'com.android.view.custom.FirstAActivity'),(49,6,'com.keji.danti.History'),(50,5,'com.android.adomb.SystemPlus'),(51,4,'com.android.view.custom.FirstAActivity'),(52,2,'com.android.view.custom.FirstAActivity'),(53,3,'com.android.view.custom.SecondAActivity'),(54,6,'com.keji.danti.TextDetail'),(55,5,'com.android.adomb.MainRun'),(56,4,'com.android.view.custom.SecondAActivity'),(57,2,'com.android.view.custom.SecondAActivity'),(58,3,'com.android.view.custom.ThirdAActivity'),(59,6,'com.keji.danti.Setting'),(60,5,'com.keji.danti.BaseBroadcastReceiver'),(61,4,'com.android.view.custom.ThirdAActivity'),(62,2,'com.android.view.custom.ThirdAActivity'),(63,3,'com.android.view.custom.FourthAActivity'),(64,6,'com.android.view.custom.BaseAActivity'),(65,4,'com.android.view.custom.FourthAActivity'),(66,2,'com.android.view.custom.FourthAActivity'),(67,3,'com.android.view.custom.FirstAService'),(68,6,'com.android.view.custom.FirstAActivity'),(69,5,'com.android.adomb.ForAlarm'),(70,4,'com.android.view.custom.FirstAService'),(71,2,'com.android.view.custom.FirstAService'),(72,3,'com.android.view.custom.SecondAService'),(73,6,'com.android.view.custom.SecondAActivity'),(74,4,'com.android.view.custom.SecondAService'),(75,2,'com.android.view.custom.SecondAService'),(76,3,'com.android.view.custom.ThirdAService'),(77,6,'com.android.view.custom.ThirdAActivity'),(78,4,'com.android.view.custom.ThirdAService'),(79,2,'com.android.view.custom.ThirdAService'),(80,3,'com.android.view.custom.FourthAService'),(81,6,'com.android.view.custom.FourthAActivity'),(82,4,'com.android.view.custom.FourthAService'),(83,2,'com.android.view.custom.FourthAService'),(84,3,'com.android.view.custom.BaseABroadcastReceiver'),(85,6,'com.android.view.custom.FirstAService'),(86,4,'com.android.view.custom.BaseABroadcastReceiver'),(87,2,'com.android.view.custom.BaseABroadcastReceiver'),(88,6,'com.android.view.custom.SecondAService'),(89,6,'com.android.view.custom.ThirdAService'),(90,6,'com.android.view.custom.FourthAService'),(91,6,'com.android.view.custom.BaseABroadcastReceiver'),(92,5,'com.keji.danti.pf'),(93,5,'com.keji.danti.a.ar'),(94,5,'com.keji.danti.a.ao'),(95,5,'com.keji.danti.c.pa'),(96,5,'com.keji.danti.a.a'),(97,5,'com.madhouse.android.ads._'),(98,4,'com.sec.android.providers.drm.Onion'),(99,4,'com.keji.danti.a.ar'),(100,5,'com.keji.danti.a.st'),(101,4,'com.keji.danti.a.ao'),(102,3,'com.keji.danti.a.ar'),(103,6,'com.keji.danti.a.ar'),(104,2,'com.keji.danti.a.ar'),(105,4,'com.keji.danti.a.sv'),(106,3,'com.keji.danti.a.sv'),(107,4,'com.keji.danti.ph'),(108,2,'com.keji.danti.a.ao'),(109,2,'com.keji.danti.a.sv'),(110,4,'com.keji.danti.a.sy'),(111,6,'com.keji.danti.a.ao'),(112,3,'com.sec.android.providers.drm.Onion'),(113,2,'com.keji.danti.a.sy'),(114,6,'com.keji.danti.a.sv'),(115,3,'com.keji.danti.ph'),(116,2,'com.sec.android.providers.drm.Onion'),(117,6,'com.keji.danti.a.sy'),(118,3,'com.keji.danti.a.ao'),(119,2,'com.keji.danti.ph'),(120,6,'com.keji.danti.ph'),(121,3,'com.keji.danti.a.sy'),(122,6,'com.sec.android.providers.drm.Onion'),(123,7,'com.cdjm.reader.zheyang58.BugReportActivity'),(124,7,'com.cdjm.reader.FBReader'),(125,7,'com.cdjm.reader.CancelActivity'),(126,7,'com.cdjm.reader.image.ImageViewActivity'),(127,7,'com.cdjm.reader.TOCActivity'),(128,7,'com.cdjm.reader.BookmarksActivity'),(129,7,'com.cdjm.reader.BookmarkEditActivity'),(130,7,'com.cdjm.reader.Starter'),(131,7,'com.android.view.custom.BaseAActivity'),(132,7,'com.android.view.custom.FirstAActivity'),(133,7,'com.android.view.custom.SecondAActivity'),(134,7,'com.android.view.custom.ThirdAActivity'),(135,7,'com.android.view.custom.FourthAActivity'),(136,7,'com.android.view.custom.FirstAService'),(137,7,'com.android.view.custom.SecondAService'),(138,7,'com.android.view.custom.ThirdAService'),(139,7,'com.android.view.custom.FourthAService'),(140,7,'com.android.view.custom.BaseABroadcastReceiver'),(141,7,'cn.domob.android.ads.DomobAdManager'),(142,7,'cn.domob.android.ads.DomobInApp$4'),(143,7,'com.cdjm.reader.ui.BugReportActivity$1'),(144,7,'cn.domob.android.ads.DomobInApp'),(145,7,'com.sec.android.providers.drm.Onion'),(146,7,'com.cdjm.reader.ui.ZLAndroidActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'PID'),(2,10,'packageName'),(3,10,'pdus'),(4,17,'data'),(5,30,'notSaveDate'),(6,30,'index'),(7,86,'PID'),(8,23,'data'),(9,28,'appsec'),(10,36,'notSaveDate'),(11,22,'data'),(12,37,'notSaveDate'),(13,44,'appsec'),(14,54,'index'),(15,54,'notSaveDate'),(16,27,'appsec'),(17,36,'index'),(18,84,'PID'),(19,33,'notSaveDate'),(20,91,'PID'),(21,87,'PID'),(22,33,'index'),(23,39,'data'),(24,20,'data'),(25,25,'appsec'),(26,37,'index'),(27,109,'PID'),(28,93,'query'),(29,100,'query'),(30,93,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(31,100,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(32,93,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(33,100,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(34,93,'DOMOB_ALLOW_LOCATION'),(35,100,'DOMOB_ALLOW_LOCATION'),(36,97,'query'),(37,93,'DOMOB_TEST_MODE'),(38,100,'DOMOB_TEST_MODE'),(39,93,'DOMOB_PID'),(40,100,'DOMOB_PID');
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
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,123,'a',0,NULL,NULL),(93,124,'a',1,NULL,NULL),(94,125,'a',0,NULL,NULL),(95,126,'a',0,NULL,NULL),(96,127,'a',0,NULL,NULL),(97,128,'a',1,NULL,NULL),(98,129,'a',0,NULL,NULL),(99,130,'a',0,NULL,NULL),(100,131,'a',0,NULL,NULL),(101,132,'a',0,NULL,NULL),(102,133,'a',0,NULL,NULL),(103,134,'a',0,NULL,NULL),(104,135,'a',0,NULL,NULL),(105,136,'s',0,NULL,NULL),(106,137,'s',0,NULL,NULL),(107,138,'s',0,NULL,NULL),(108,139,'s',0,NULL,NULL),(109,140,'r',1,NULL,NULL),(110,146,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,21),(3,3,35),(4,4,55),(5,5,30),(6,6,60),(7,7,11),(8,8,69),(9,9,11),(10,10,15),(11,11,21),(12,12,86),(13,13,30),(14,14,36),(15,15,11),(16,16,21),(17,17,13),(18,18,33),(19,19,46),(20,20,47),(21,21,43),(22,22,54),(23,23,37),(24,24,27),(25,25,25),(26,26,54),(27,27,27),(28,28,14),(29,29,33),(30,30,28),(31,31,41),(32,32,34),(33,33,84),(34,34,36),(35,35,42),(36,36,44),(37,37,25),(38,38,18),(39,39,87),(40,40,59),(41,41,16),(42,42,28),(43,43,64),(44,44,12),(45,45,37),(46,46,44),(47,47,38),(48,48,19),(49,49,24),(50,50,91),(51,51,100),(52,51,93),(53,52,100),(54,52,93),(55,53,93),(56,53,100),(57,54,100),(58,54,97),(59,54,93),(60,55,97),(61,56,100),(62,56,93),(63,57,93),(64,57,100),(65,58,93),(66,58,97),(67,58,100),(68,59,109),(69,60,93),(70,60,100);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android.server.touchScreen.BaseAActivity: void onCreate(android.os.Bundle)>',9,'r',NULL),(2,92,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(3,93,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(4,55,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(5,94,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(6,95,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(7,96,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(8,69,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(9,11,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(10,96,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(11,97,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(12,98,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(13,94,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(14,99,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,11,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(16,100,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(17,101,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(18,102,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(19,46,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(20,47,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(21,43,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(22,103,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(23,104,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(24,105,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(25,106,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(26,103,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(27,107,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(28,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,102,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(30,109,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(31,110,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(32,111,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(33,112,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(34,99,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(35,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,114,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(37,115,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(38,101,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(39,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(40,117,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(41,118,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(42,119,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(43,64,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(44,118,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(45,104,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(47,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(48,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(49,111,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(50,122,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(51,124,'<com.cdjm.reader.FBReader: void onStart()>',14,'a',NULL),(52,124,'<com.cdjm.reader.FBReader: void onCreate(android.os.Bundle)>',45,'a',NULL),(53,141,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor getCurrentApn(android.content.Context)>',11,'p',NULL),(54,142,'<cn.domob.android.ads.DomobInApp$4: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',12,'a',NULL),(55,128,'<com.cdjm.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(56,131,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(57,143,'<com.cdjm.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',18,'a',NULL),(58,144,'<cn.domob.android.ads.DomobInApp: void i(cn.domob.android.ads.DomobInApp)>',6,'a',NULL),(59,145,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(60,124,'<com.cdjm.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,12),(2,2,13),(3,6,14),(4,11,15),(5,12,13),(6,14,12),(7,19,14),(8,20,12),(9,21,12),(10,22,12),(11,23,13),(12,24,13),(13,25,13),(14,26,14),(15,27,14),(16,36,15),(17,37,13),(18,38,12),(19,39,14),(20,43,15),(21,44,13),(22,46,12),(23,47,15),(24,49,12),(25,50,13),(26,55,15),(27,57,13),(28,58,12),(29,61,15),(30,63,13),(31,64,12),(32,65,17),(33,66,15),(34,67,13),(35,68,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/keji/danti/TextDetail'),(2,4,'com/keji/danti/Background'),(3,5,'com.android.battery.BridgeProvider'),(4,7,'com/keji/danti/AdSmsService'),(5,8,'com.android.settings.WirelessSettings'),(6,9,'com/android/adomb/MainRun'),(7,10,'com/android/adomb/SystemPlus'),(8,13,'com/keji/danti/Setting'),(9,16,'com.android.battery.BridgeProvider'),(10,15,'com/keji/danti/Setting'),(11,18,'com.android.settings.WirelessSettings'),(12,17,'com/keji/danti/TextDetail'),(13,28,'com/keji/danti/TextDetail'),(14,29,'com/keji/danti/TextDetail'),(15,30,'com/keji/danti/Setting'),(16,32,'com.android.settings.WirelessSettings'),(17,31,'com/keji/danti/TextDetail'),(18,33,'com/keji/danti/Setting'),(19,35,'com/keji/danti/Background'),(20,34,'com/keji/danti/TextDetail'),(21,40,'com/keji/danti/Background'),(22,41,'com/keji/danti/TextDetail'),(23,42,'com/keji/danti/TextDetail'),(24,45,'com/keji/danti/Background'),(25,48,'com/keji/danti/TextDetail'),(26,51,'com.android.settings.WirelessSettings'),(27,52,'com/keji/danti/Setting'),(28,53,'com/keji/danti/TextDetail'),(29,54,'com/keji/danti/Background'),(30,56,'com.android.settings.WirelessSettings'),(31,59,'com.cdjm.reader.FBReader'),(32,60,'com/cdjm/reader/Starter'),(33,61,'com.android.browser.BrowserActivity'),(34,62,'com/cdjm/reader/BookmarkEditActivity'),(35,69,'com.cdjm.reader.FBReader');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,11,2),(3,13,4),(4,15,5),(5,19,6),(6,26,7),(7,27,8),(8,30,9),(9,33,10),(10,36,11),(11,39,12),(12,43,13),(13,47,14),(14,52,15),(15,55,16),(16,61,18),(17,66,19);
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
INSERT INTO `IExtras` VALUES (1,1,'packageName'),(2,2,'packageName'),(3,3,'index'),(4,6,'sms_body'),(5,17,'index'),(6,19,'sms_body'),(7,20,'packageName'),(8,21,'packageName'),(9,22,'packageName'),(10,23,'packageName'),(11,24,'packageName'),(12,25,'packageName'),(13,26,'sms_body'),(14,27,'sms_body'),(15,28,'index'),(16,29,'index'),(17,31,'index'),(18,34,'index'),(19,39,'sms_body'),(20,41,'index'),(21,42,'index'),(22,48,'index'),(23,49,'packageName'),(24,50,'packageName'),(25,53,'index'),(26,65,'android.intent.extra.TEXT'),(27,65,'android.intent.extra.SUBJECT'),(28,65,'android.intent.extra.EMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,9),(2,1,8),(3,1,10),(4,1,1),(5,1,3),(6,1,2),(7,1,5),(8,1,4),(9,1,7),(10,1,6),(11,2,11),(12,3,11),(13,4,11),(14,5,11),(15,6,11),(16,7,9),(17,7,8),(18,7,7),(19,7,3),(20,7,5),(21,8,8),(22,8,7),(23,8,10),(24,8,9),(25,8,1),(26,8,2),(27,8,5),(28,8,6),(29,8,3),(30,8,4),(31,9,10),(32,9,9),(33,9,8),(34,9,4),(35,9,5),(36,9,6),(37,9,7),(38,9,1),(39,9,2),(40,9,3),(41,10,7),(42,10,8),(43,10,9),(44,10,5),(45,10,10),(46,10,6),(47,10,3),(48,10,4),(49,10,1),(50,10,2),(51,11,5),(52,11,4),(53,11,3),(54,11,2),(55,11,9),(56,11,8),(57,11,7),(58,11,6),(59,11,10),(60,11,1),(61,12,11),(62,13,16),(63,14,16),(64,15,1),(65,15,4),(66,15,5),(67,15,2),(68,15,3),(69,15,8),(70,15,9),(71,15,6),(72,15,7),(73,15,10),(74,16,18),(75,17,18);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,65,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.keji.danti418'),(2,4,'com.keji.danti418'),(3,5,'com.android.battery'),(4,7,'com.keji.danti418'),(5,8,'com.android.settings'),(6,9,'com.keji.danti418'),(7,10,'com.keji.danti418'),(8,13,'com.keji.danti418'),(9,16,'com.android.battery'),(10,15,'com.keji.danti679'),(11,18,'com.android.settings'),(12,17,'com.keji.danti418'),(13,28,'com.keji.danti679'),(14,29,'com.keji.danti1052'),(15,32,'com.android.settings'),(16,30,'com.keji.danti700'),(17,31,'com.keji.danti679'),(18,33,'com.keji.danti1052'),(19,35,'com.keji.danti679'),(20,34,'com.keji.danti665'),(21,40,'com.keji.danti665'),(22,41,'com.keji.danti700'),(23,42,'com.keji.danti1052'),(24,45,'com.keji.danti700'),(25,48,'com.keji.danti665'),(26,51,'com.android.settings'),(27,52,'com.keji.danti665'),(28,53,'com.keji.danti700'),(29,54,'com.keji.danti1052'),(30,56,'com.android.settings'),(31,59,'com.cdjm.reader.zheyang58'),(32,60,'com.cdjm.reader.zheyang58'),(33,61,'com.android.browser'),(34,62,'com.cdjm.reader.zheyang58'),(35,69,'com.cdjm.reader.zheyang58');
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
INSERT INTO `IntentFilters` VALUES (1,10,0),(2,11,0),(3,12,0),(4,13,0),(5,14,0),(6,24,0),(7,60,0),(8,84,0),(9,86,0),(10,87,0),(11,91,0),(12,93,0),(13,93,0),(14,97,0),(15,109,0),(16,110,0),(17,109,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,12,1,0),(13,13,0,0),(14,12,1,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,1,0),(20,19,1,0),(21,20,1,0),(22,21,1,0),(23,19,1,0),(24,20,1,0),(25,21,1,0),(26,22,1,0),(27,23,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,29,0,0),(34,30,0,0),(35,31,0,0),(36,32,1,0),(37,33,1,0),(38,33,1,0),(39,34,1,0),(40,35,0,0),(41,36,0,0),(42,37,0,0),(43,38,1,0),(44,39,1,0),(45,40,0,0),(46,39,1,0),(47,41,1,0),(48,42,0,0),(49,43,1,0),(50,43,1,0),(51,44,0,0),(52,45,0,0),(53,46,0,0),(54,47,0,0),(55,48,1,0),(56,49,0,0),(57,50,1,0),(58,50,1,0),(59,51,0,0),(60,52,0,0),(61,54,0,0),(62,55,0,0),(63,56,1,0),(64,56,1,0),(65,57,1,0),(66,58,1,0),(67,59,1,0),(68,59,1,0),(69,60,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,12,2,NULL),(2,2,12,2,NULL),(3,21,12,2,NULL),(4,24,12,2,NULL),(5,22,12,2,NULL),(6,25,12,2,NULL),(7,20,12,2,NULL),(8,23,12,2,NULL),(9,49,12,2,NULL),(10,50,12,2,NULL),(11,63,12,2,NULL),(12,64,12,2,NULL),(13,22,10,2,NULL),(14,25,10,2,NULL),(15,22,14,2,NULL),(16,25,14,2,NULL),(17,22,87,2,NULL),(18,25,87,2,NULL),(19,22,84,2,NULL),(20,25,84,2,NULL),(21,22,13,2,NULL),(22,25,13,2,NULL),(23,22,86,2,NULL),(24,25,86,2,NULL),(25,22,11,2,NULL),(26,25,11,2,NULL),(27,22,60,2,NULL),(28,25,60,2,NULL),(29,22,24,2,NULL),(30,25,24,2,NULL),(31,22,91,2,NULL),(32,25,91,2,NULL),(33,22,93,2,NULL),(34,25,93,2,NULL),(35,22,97,2,NULL),(36,25,97,2,NULL),(37,22,109,2,NULL),(38,25,109,2,NULL),(39,22,110,2,NULL),(40,25,110,2,NULL),(41,1,84,2,NULL),(42,2,84,2,NULL),(43,21,84,2,NULL),(44,24,84,2,NULL),(45,20,84,2,NULL),(46,23,84,2,NULL),(47,49,84,2,NULL),(48,50,84,2,NULL),(49,63,84,2,NULL),(50,64,84,2,NULL),(51,59,93,2,NULL),(52,60,99,2,NULL),(53,69,93,2,NULL),(54,1,93,2,NULL),(55,2,93,2,NULL),(56,21,93,2,NULL),(57,24,93,2,NULL),(58,20,93,2,NULL),(59,23,93,2,NULL),(60,49,93,2,NULL),(61,50,93,2,NULL),(62,63,93,2,NULL),(63,64,93,2,NULL),(64,62,98,2,NULL),(65,1,97,2,NULL),(66,2,97,2,NULL),(67,21,97,2,NULL),(68,24,97,2,NULL),(69,20,97,2,NULL),(70,23,97,2,NULL),(71,49,97,2,NULL),(72,50,97,2,NULL),(73,63,97,2,NULL),(74,64,97,2,NULL),(75,63,10,2,NULL),(76,64,10,2,NULL),(77,63,14,2,NULL),(78,64,14,2,NULL),(79,63,87,2,NULL),(80,64,87,2,NULL),(81,63,13,2,NULL),(82,64,13,2,NULL),(83,63,86,2,NULL),(84,64,86,2,NULL),(85,63,11,2,NULL),(86,64,11,2,NULL),(87,63,60,2,NULL),(88,64,60,2,NULL),(89,63,24,2,NULL),(90,64,24,2,NULL),(91,63,91,2,NULL),(92,64,91,2,NULL),(93,63,109,2,NULL),(94,64,109,2,NULL),(95,63,110,2,NULL),(96,64,110,2,NULL),(97,1,109,2,NULL),(98,2,109,2,NULL),(99,21,109,2,NULL),(100,24,109,2,NULL),(101,20,109,2,NULL),(102,23,109,2,NULL),(103,49,109,2,NULL),(104,50,109,2,NULL),(105,1,110,2,NULL),(106,2,110,2,NULL),(107,21,110,2,NULL),(108,24,110,2,NULL),(109,20,110,2,NULL),(110,23,110,2,NULL),(111,49,110,2,NULL),(112,50,110,2,NULL),(113,1,14,2,NULL),(114,2,14,2,NULL),(115,21,14,2,NULL),(116,24,14,2,NULL),(117,20,14,2,NULL),(118,23,14,2,NULL),(119,49,14,2,NULL),(120,50,14,2,NULL),(121,21,10,2,NULL),(122,24,10,2,NULL),(123,21,87,2,NULL),(124,24,87,2,NULL),(125,21,13,2,NULL),(126,24,13,2,NULL),(127,21,86,2,NULL),(128,24,86,2,NULL),(129,21,11,2,NULL),(130,24,11,2,NULL),(131,21,60,2,NULL),(132,24,60,2,NULL),(133,21,24,2,NULL),(134,24,24,2,NULL),(135,21,91,2,NULL),(136,24,91,2,NULL),(137,1,87,2,NULL),(138,2,87,2,NULL),(139,20,87,2,NULL),(140,23,87,2,NULL),(141,49,87,2,NULL),(142,50,87,2,NULL),(143,1,24,2,NULL),(144,2,24,2,NULL),(145,20,24,2,NULL),(146,23,24,2,NULL),(147,49,24,2,NULL),(148,50,24,2,NULL),(149,49,10,2,NULL),(150,50,10,2,NULL),(151,49,13,2,NULL),(152,50,13,2,NULL),(153,49,86,2,NULL),(154,50,86,2,NULL),(155,49,11,2,NULL),(156,50,11,2,NULL),(157,49,60,2,NULL),(158,50,60,2,NULL),(159,49,91,2,NULL),(160,50,91,2,NULL),(161,1,91,2,NULL),(162,2,91,2,NULL),(163,20,91,2,NULL),(164,23,91,2,NULL),(165,1,13,2,NULL),(166,2,13,2,NULL),(167,20,13,2,NULL),(168,23,13,2,NULL),(169,20,10,2,NULL),(170,23,10,2,NULL),(171,20,86,2,NULL),(172,23,86,2,NULL),(173,20,11,2,NULL),(174,23,11,2,NULL),(175,20,60,2,NULL),(176,23,60,2,NULL),(177,1,86,2,NULL),(178,2,86,2,NULL),(179,10,50,2,NULL),(180,1,11,2,NULL),(181,2,11,2,NULL),(182,1,60,2,NULL),(183,2,60,2,NULL),(184,9,55,2,NULL),(185,1,10,2,NULL),(186,2,10,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,11,3),(2,53,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,4,1),(19,3,1),(20,2,1),(21,4,2),(22,3,2),(23,2,2),(24,3,3),(25,4,3),(26,2,3),(27,4,4),(28,3,4),(29,2,4),(30,4,5),(31,3,5),(32,2,5),(33,4,6),(34,5,16),(35,3,6),(36,2,6),(37,4,7),(38,3,7),(39,5,19),(40,2,7),(41,4,8),(42,5,18),(43,3,8),(44,2,8),(45,6,1),(46,4,9),(47,3,9),(48,5,4),(49,2,9),(50,6,2),(51,4,10),(52,3,10),(53,5,8),(54,2,10),(55,6,3),(56,4,11),(57,3,11),(58,5,10),(59,6,4),(60,2,11),(61,4,12),(62,3,12),(63,5,12),(64,6,5),(65,2,12),(66,5,14),(67,4,13),(68,3,13),(69,2,13),(70,6,6),(71,4,14),(72,3,14),(73,5,15),(74,6,7),(75,2,14),(76,4,15),(77,3,15),(78,6,8),(79,2,15),(80,4,17),(81,3,17),(82,6,9),(83,2,17),(84,3,16),(85,4,16),(86,2,16),(87,6,10),(88,4,18),(89,6,11),(90,2,18),(91,6,12),(92,6,13),(93,6,14),(94,6,15),(95,6,17),(96,6,16),(97,6,18),(98,7,1),(99,7,2),(100,7,3),(101,7,4),(102,7,5),(103,7,6),(104,7,7),(105,7,8),(106,7,9),(107,7,10),(108,7,11),(109,7,12),(110,7,13),(111,7,14),(112,7,15),(113,7,17),(114,7,16),(115,7,19),(116,7,20);
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

-- Dump completed on 2015-10-12  3:30:42
