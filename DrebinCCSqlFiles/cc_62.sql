-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_62
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(17,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(18,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(19,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti723',32),(2,'com.keji.danti621',32),(3,'com.keji.danti888',32),(4,'com.keji.danti396',27),(5,'com.sohu.blog.lzn1007.WatermelonProber',2),(6,'com.whereisphone',1),(7,'com.tian.wmaryp',10);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,1,'com.keji.danti.Lists'),(5,1,'com.keji.danti.History'),(6,1,'com.keji.danti.TextDetail'),(7,1,'com.keji.danti.Setting'),(8,1,'com.android.view.custom.BaseAActivity'),(9,1,'com.android.view.custom.FirstAActivity'),(10,1,'com.android.view.custom.SecondAActivity'),(11,1,'com.android.view.custom.ThirdAActivity'),(12,1,'com.android.view.custom.FourthAActivity'),(13,1,'com.android.view.custom.FirstAService'),(14,3,'com.keji.danti.MainA'),(15,2,'com.keji.danti.MainA'),(16,1,'com.android.view.custom.SecondAService'),(17,1,'com.android.view.custom.ThirdAService'),(18,3,'com.keji.danti.Boutique'),(19,1,'com.android.view.custom.FourthAService'),(20,2,'com.keji.danti.Boutique'),(21,4,'com.keji.danti.MainA'),(22,3,'com.keji.danti.Background'),(23,1,'com.android.view.custom.BaseABroadcastReceiver'),(24,2,'com.keji.danti.Background'),(25,3,'com.keji.danti.Lists'),(26,5,'com.sohu.blog.lzn1007.WatermelonProber.WatermelonProber'),(27,2,'com.keji.danti.Lists'),(28,4,'com.keji.danti.Boutique'),(29,3,'com.keji.danti.History'),(30,2,'com.keji.danti.History'),(31,4,'com.keji.danti.Background'),(32,3,'com.keji.danti.TextDetail'),(33,2,'com.keji.danti.TextDetail'),(34,5,'com.sohu.blog.lzn1007.WatermelonProber.Config'),(35,4,'com.keji.danti.Lists'),(36,3,'com.keji.danti.Setting'),(37,2,'com.keji.danti.Setting'),(38,5,'com.sohu.blog.lzn1007.WatermelonProber.Prober'),(39,4,'com.keji.danti.History'),(40,3,'com.android.view.custom.BaseAActivity'),(41,2,'com.android.view.custom.BaseAActivity'),(42,6,'com.whereisphone.VoiceDemo2Activity'),(43,5,'com.sohu.blog.lzn1007.WatermelonProber.History'),(44,3,'com.android.view.custom.FirstAActivity'),(45,4,'com.keji.danti.TextDetail'),(46,2,'com.android.view.custom.FirstAActivity'),(47,5,'com.sohu.blog.lzn1007.WatermelonProber.SelectMelon'),(48,4,'com.keji.danti.Setting'),(49,3,'com.android.view.custom.SecondAActivity'),(50,2,'com.android.view.custom.SecondAActivity'),(51,5,'com.sohu.blog.lzn1007.WatermelonProber.ShowResult'),(52,6,'net.youmi.android.AdActivity'),(53,3,'com.android.view.custom.ThirdAActivity'),(54,4,'com.android.battery.BalckActivity2'),(55,2,'com.android.view.custom.ThirdAActivity'),(56,5,'com.android.view.custom.BaseAActivity'),(57,3,'com.android.view.custom.FourthAActivity'),(58,6,'com.android.view.custom.BaseAActivity'),(59,4,'com.android.battery.BalckActivity'),(60,2,'com.android.view.custom.FourthAActivity'),(61,5,'com.android.view.custom.FirstAActivity'),(62,3,'com.android.view.custom.FirstAService'),(63,4,'com.android.battery.KillThreeSixZero'),(64,6,'com.android.view.custom.FirstAActivity'),(65,2,'com.android.view.custom.FirstAService'),(66,5,'com.android.view.custom.SecondAActivity'),(67,3,'com.android.view.custom.SecondAService'),(68,4,'com.android.battery.BridgeProvider'),(69,6,'com.android.view.custom.SecondAActivity'),(70,2,'com.android.view.custom.SecondAService'),(71,5,'com.android.view.custom.ThirdAActivity'),(72,6,'com.android.view.custom.ThirdAActivity'),(73,3,'com.android.view.custom.ThirdAService'),(74,2,'com.android.view.custom.ThirdAService'),(75,5,'com.android.view.custom.FirstAService'),(76,4,'com.android.battery.AdSmsService'),(77,3,'com.android.view.custom.FourthAService'),(78,6,'com.android.view.custom.FirstAService'),(79,2,'com.android.view.custom.FourthAService'),(80,5,'com.android.view.custom.SecondAService'),(81,4,'com.android.battery.PhoneService'),(82,3,'com.android.view.custom.BaseABroadcastReceiver'),(83,6,'com.android.view.custom.SecondAService'),(84,2,'com.android.view.custom.BaseABroadcastReceiver'),(85,5,'com.android.view.custom.ThirdAService'),(86,4,'com.android.battery.BaseBroadcastReceiver'),(87,6,'com.android.view.custom.ThirdAService'),(88,5,'com.android.view.custom.BaseABroadcastReceiver'),(89,6,'com.android.view.custom.BaseABroadcastReceiver'),(90,5,'com.android.sf.adomb.Xmlns'),(91,1,'com.keji.danti.a.ar'),(92,5,'com.sohu.blog.lzn1007.WatermelonProber.History$1'),(93,6,'com.android.sf.adomb.Content'),(94,1,'com.keji.danti.ph'),(95,1,'com.keji.danti.a.sv'),(96,1,'com.keji.danti.a.sy'),(97,1,'com.sec.android.providers.drm.Onion'),(98,1,'com.keji.danti.a.ao'),(99,2,'com.keji.danti.a.sv'),(100,2,'com.keji.danti.a.ar'),(101,4,'com.keji.danti.a.ao'),(102,3,'com.keji.danti.a.sy'),(103,3,'com.keji.danti.a.ao'),(104,4,'com.keji.danti.a.ar'),(105,3,'com.keji.danti.a.ar'),(106,4,'com.android.battery.b.pa'),(107,2,'com.sec.android.providers.drm.Onion'),(108,2,'com.keji.danti.a.sy'),(109,4,'com.keji.danti.a.a'),(110,2,'com.keji.danti.a.ao'),(111,3,'com.keji.danti.ph'),(112,3,'com.sec.android.providers.drm.Onion'),(113,2,'com.keji.danti.ph'),(114,4,'com.keji.danti.pf'),(115,3,'com.keji.danti.a.sv'),(116,4,'com.keji.danti.a.st'),(117,7,'com.tian.wmaryp.MainA'),(118,7,'com.szmttx.PalamMario.supermary'),(119,7,'com.waps.OffersWebView'),(120,7,'com.android.view.custom.BaseAActivity'),(121,7,'com.android.view.custom.FirstAActivity'),(122,7,'com.android.view.custom.SecondAActivity'),(123,7,'com.android.view.custom.ThirdAActivity'),(124,7,'com.android.view.custom.FourthAActivity'),(125,7,'com.android.view.custom.FirstAService'),(126,7,'com.android.view.custom.SecondAService'),(127,7,'com.android.view.custom.ThirdAService'),(128,7,'com.android.view.custom.FourthAService'),(129,7,'com.android.view.custom.BaseABroadcastReceiver'),(130,7,'com.waps.m'),(131,7,'com.waps.k'),(132,7,'com.tian.wmaryp.MainA$3'),(133,7,'com.waps.AppConnect'),(134,7,'com.waps.o'),(135,7,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,88,'PID'),(2,6,'notSaveDate'),(3,6,'index'),(4,42,'results_recognition'),(5,54,'A7D1721B9508405D8271AB82AC6D9B3C'),(6,89,'PID'),(7,3,'data'),(8,23,'PID'),(9,33,'notSaveDate'),(10,4,'appsec'),(11,27,'appsec'),(12,81,'PID'),(13,84,'PID'),(14,22,'data'),(15,24,'data'),(16,32,'index'),(17,33,'index'),(18,45,'index'),(19,86,'APP_UID'),(20,31,'data'),(21,45,'notSaveDate'),(22,32,'notSaveDate'),(23,86,'pdus'),(24,25,'appsec'),(25,45,'appsec'),(26,35,'appsec'),(27,91,'DEVICE_ID'),(28,93,'DEVICE_ID'),(29,90,'DEVICE_ID'),(30,91,'WAPS_PID'),(31,93,'WAPS_PID'),(32,90,'WAPS_PID'),(33,93,'UMENG_CHANNEL'),(34,90,'UMENG_CHANNEL'),(35,92,'isFinshClose'),(36,91,'CLIENT_PACKAGE'),(37,93,'CLIENT_PACKAGE'),(38,90,'CLIENT_PACKAGE'),(39,92,'URL'),(40,93,'WAPS_ID'),(41,90,'WAPS_ID'),(42,92,'CLIENT_PACKAGE'),(43,91,'APP_ID'),(44,93,'APP_ID'),(45,90,'APP_ID'),(46,102,'PID'),(47,92,'USER_ID'),(48,92,'Offers_URL'),(49,92,'URL_PARAMS'),(50,91,'WAPS_ID'),(51,93,'UMENG_APPKEY'),(52,90,'UMENG_APPKEY');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,48,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,52,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,62,'s',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,73,'s',0,NULL,NULL),(73,72,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,77,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,82,'r',1,NULL,NULL),(82,81,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,117,'a',1,NULL,NULL),(91,118,'a',0,NULL,NULL),(92,119,'a',0,NULL,NULL),(93,120,'a',0,NULL,NULL),(94,121,'a',0,NULL,NULL),(95,122,'a',0,NULL,NULL),(96,123,'a',0,NULL,NULL),(97,124,'a',0,NULL,NULL),(98,125,'s',0,NULL,NULL),(99,126,'s',0,NULL,NULL),(100,127,'s',0,NULL,NULL),(101,128,'s',0,NULL,NULL),(102,129,'r',1,NULL,NULL),(103,130,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,88),(2,2,47),(3,3,47),(4,4,26),(5,4,56),(6,5,6),(7,6,43),(8,7,89),(9,8,47),(10,9,59),(11,10,4),(12,11,56),(13,11,26),(14,12,4),(15,13,7),(16,14,23),(17,15,1),(18,16,27),(19,17,2),(20,18,33),(21,19,36),(22,20,45),(23,21,6),(24,22,41),(25,23,14),(26,24,8),(27,25,49),(28,26,32),(29,27,86),(30,28,84),(31,29,45),(32,30,32),(33,31,37),(34,32,40),(35,33,21),(36,34,20),(37,35,21),(38,36,33),(39,37,25),(40,38,86),(41,39,81),(42,40,27),(43,41,35),(44,42,15),(45,43,25),(46,44,35),(47,45,18),(48,46,86),(49,47,28),(50,48,86),(51,49,92),(52,50,93),(53,50,90),(54,51,90),(55,51,93),(56,52,90),(57,52,93),(58,53,90),(59,54,93),(60,54,91),(61,54,90),(62,55,90),(63,55,93),(64,56,102),(65,57,93),(66,57,90),(67,58,93),(68,58,90),(69,58,91),(70,59,93),(71,59,90),(72,60,91),(73,60,93),(74,60,90);
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
INSERT INTO `ExitPoints` VALUES (1,90,'<com.android.sf.adomb.Xmlns: void c()>',65,'r',NULL),(2,47,'<com.sohu.blog.lzn1007.WatermelonProber.SelectMelon: boolean onTouchEvent(android.view.MotionEvent)>',26,'a',NULL),(3,47,'<com.sohu.blog.lzn1007.WatermelonProber.SelectMelon: boolean onTouchEvent(android.view.MotionEvent)>',37,'a',NULL),(4,26,'<com.sohu.blog.lzn1007.WatermelonProber.WatermelonProber: void onCreate(android.os.Bundle)>',39,'a',NULL),(5,91,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(6,92,'<com.sohu.blog.lzn1007.WatermelonProber.History$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',106,'a',NULL),(7,93,'<com.android.sf.adomb.Content: void c()>',65,'r',NULL),(8,47,'<com.sohu.blog.lzn1007.WatermelonProber.SelectMelon: boolean onTouchEvent(android.view.MotionEvent)>',14,'a',NULL),(9,58,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(10,94,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(11,56,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(12,95,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(13,96,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(14,97,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(15,98,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,99,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(17,98,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(18,100,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(19,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,101,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(21,91,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,41,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,103,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,8,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(25,104,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(26,105,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(27,106,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(28,107,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(29,101,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(30,105,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(31,108,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(32,40,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(33,109,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(34,110,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(35,21,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(36,100,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(37,111,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(38,106,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(39,112,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(40,113,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(41,114,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(42,110,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(43,115,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(44,116,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(45,103,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(46,106,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(47,109,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(48,106,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(49,131,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(50,132,'<com.tian.wmaryp.MainA$3: void onClick(android.view.View)>',34,'a',NULL),(51,132,'<com.tian.wmaryp.MainA$3: void onClick(android.view.View)>',17,'a',NULL),(52,117,'<com.tian.wmaryp.MainA: void onCreate(android.os.Bundle)>',59,'a',NULL),(53,133,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(54,134,'<com.waps.o: void onClick(android.view.View)>',57,'a',NULL),(55,120,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(56,135,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(57,133,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(58,134,'<com.waps.o: void onClick(android.view.View)>',41,'a',NULL),(59,117,'<com.tian.wmaryp.MainA: void onCreate(android.os.Bundle)>',23,'a',NULL),(60,134,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,2,17),(3,6,18),(4,8,16),(5,9,17),(6,11,16),(7,13,16),(8,14,17),(9,15,17),(10,18,16),(11,19,17),(12,22,19),(13,27,17),(14,29,17),(15,31,16),(16,32,16),(17,35,16),(18,36,17),(19,37,18),(20,38,18),(21,40,17),(22,42,19),(23,43,16),(24,44,19),(25,45,18),(26,49,16),(27,50,17),(28,55,19),(29,57,19),(30,59,19),(31,64,19),(32,65,19),(33,66,16),(34,67,17),(35,68,16),(36,69,17),(37,72,1),(38,73,1),(39,74,1),(40,75,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,72,1),(2,73,2),(3,74,1),(4,75,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/sohu/blog/lzn1007/WatermelonProber/History'),(2,4,'com/sohu/blog/lzn1007/WatermelonProber/Config'),(3,5,'com/sohu/blog/lzn1007/WatermelonProber/SelectMelon'),(4,7,'com/sohu/blog/lzn1007/WatermelonProber/ShowResult'),(5,10,'com/sohu/blog/lzn1007/WatermelonProber/Prober'),(6,12,'com/keji/danti/TextDetail'),(7,16,'com/keji/danti/TextDetail'),(8,17,'com/keji/danti/Background'),(9,20,'com.android.settings.WirelessSettings'),(10,21,'com/keji/danti/TextDetail'),(11,23,'com/keji/danti/Setting'),(12,24,'com/keji/danti/Background'),(13,25,'com/keji/danti/Setting'),(14,26,'com/keji/danti/Setting'),(15,28,'com.android.settings.WirelessSettings'),(16,30,'com/keji/danti/Background'),(17,34,'com/android/battery/KillThreeSixZero'),(18,33,'com/keji/danti/Setting'),(19,39,'com/keji/danti/Background'),(20,41,'com.android.settings.WirelessSettings'),(21,44,'com.android.packageinstaller.PackageInstallerActivity'),(22,46,'com/keji/danti/TextDetail'),(23,47,'com/android/battery/BridgeProvider'),(24,48,'com/keji/danti/TextDetail'),(25,51,'com/keji/danti/TextDetail'),(26,52,'com.android.settings.WirelessSettings'),(27,53,'com/keji/danti/TextDetail'),(28,54,'com/keji/danti/TextDetail'),(29,56,'com/android/battery/AdSmsService'),(30,58,'com/android/battery/PhoneService'),(31,60,'com/szmttx/PalamMario/supermary'),(32,61,'com/szmttx/PalamMario/supermary'),(33,62,'com/szmttx/PalamMario/supermary'),(34,63,'com/waps/OffersWebView'),(35,70,'com/waps/OffersWebView'),(36,76,'com/szmttx/PalamMario/supermary'),(37,77,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,22,2),(3,23,3),(4,25,4),(5,26,5),(6,33,6),(7,37,7),(8,38,8),(9,42,9),(10,44,10),(11,45,11),(12,55,12),(13,57,13),(14,59,14),(15,64,15),(16,65,16);
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
INSERT INTO `IExtras` VALUES (1,6,'sms_body'),(2,12,'index'),(3,16,'index'),(4,21,'index'),(5,27,'packageName'),(6,29,'packageName'),(7,31,'packageName'),(8,32,'packageName'),(9,37,'sms_body'),(10,38,'sms_body'),(11,40,'packageName'),(12,43,'packageName'),(13,45,'sms_body'),(14,46,'index'),(15,48,'index'),(16,51,'index'),(17,53,'index'),(18,54,'index'),(19,63,'USER_ID'),(20,63,'CLIENT_PACKAGE'),(21,63,'Offers_URL'),(22,63,'URL_PARAMS'),(23,70,'USER_ID'),(24,70,'CLIENT_PACKAGE'),(25,70,'Offers_URL'),(26,70,'URL_PARAMS'),(27,77,'CLIENT_PACKAGE'),(28,77,'URL'),(29,77,'isFinshClose');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,10),(8,5,11),(9,5,8),(10,5,9),(11,5,6),(12,5,7),(13,5,4),(14,5,5),(15,6,1),(16,7,1),(17,8,1),(18,9,11),(19,9,10),(20,9,9),(21,9,8),(22,9,4),(23,9,5),(24,9,6),(25,9,7),(26,9,2),(27,9,3),(28,10,11),(29,10,7),(30,10,8),(31,10,9),(32,10,5),(33,10,10),(34,10,6),(35,10,3),(36,10,4),(37,10,2),(38,11,5),(39,11,4),(40,11,9),(41,11,8),(42,11,6),(43,11,10),(44,11,12),(45,11,13),(46,11,14),(47,11,15),(48,12,4),(49,12,3),(50,12,6),(51,12,5),(52,12,8),(53,12,7),(54,12,10),(55,12,9),(56,12,11),(57,13,11),(58,13,10),(59,13,9),(60,13,8),(61,13,7),(62,13,6),(63,13,5),(64,13,4),(65,13,3),(66,14,1),(67,15,4),(68,15,5),(69,15,2),(70,15,3),(71,15,8),(72,15,9),(73,15,6),(74,15,7),(75,15,10),(76,15,11),(77,16,20);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,16,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,59,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.sohu.blog.lzn1007.WatermelonProber'),(2,4,'com.sohu.blog.lzn1007.WatermelonProber'),(3,5,'com.sohu.blog.lzn1007.WatermelonProber'),(4,7,'com.sohu.blog.lzn1007.WatermelonProber'),(5,10,'com.sohu.blog.lzn1007.WatermelonProber'),(6,12,'com.keji.danti723'),(7,16,'com.keji.danti723'),(8,17,'com.keji.danti723'),(9,20,'com.android.settings'),(10,21,'com.keji.danti621'),(11,23,'com.keji.danti621'),(12,24,'com.keji.danti888'),(13,25,'com.keji.danti396'),(14,26,'com.keji.danti723'),(15,28,'com.android.settings'),(16,30,'com.keji.danti396'),(17,34,'com.keji.danti396'),(18,33,'com.keji.danti888'),(19,39,'com.keji.danti621'),(20,41,'com.android.settings'),(21,44,'com.android.packageinstaller'),(22,46,'com.keji.danti888'),(23,47,'com.keji.danti396'),(24,48,'com.keji.danti621'),(25,51,'com.keji.danti396'),(26,52,'com.android.settings'),(27,53,'com.keji.danti888'),(28,54,'com.keji.danti396'),(29,56,'com.keji.danti396'),(30,58,'com.keji.danti396'),(31,60,'com.tian.wmaryp'),(32,61,'com.tian.wmaryp'),(33,62,'com.tian.wmaryp'),(34,63,'com.tian.wmaryp'),(35,70,'com.tian.wmaryp'),(36,72,'(.*)'),(37,73,'(.*)'),(38,74,'NULL-CONSTANT'),(39,75,'NULL-CONSTANT'),(40,76,'com.tian.wmaryp'),(41,77,'com.tian.wmaryp');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,14,0),(3,15,0),(4,21,0),(5,23,0),(6,26,0),(7,42,0),(8,68,0),(9,81,0),(10,84,0),(11,86,0),(12,88,0),(13,89,0),(14,90,0),(15,102,0),(16,103,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,7,1,0),(9,7,1,0),(10,8,0,0),(11,9,1,0),(12,10,0,0),(13,11,1,0),(14,9,1,0),(15,11,1,0),(16,12,0,0),(17,13,0,0),(18,14,1,0),(19,14,1,0),(20,15,0,0),(21,16,0,0),(22,17,1,0),(23,18,0,0),(24,19,0,0),(25,20,0,0),(26,21,0,0),(27,22,1,0),(28,23,0,0),(29,24,1,0),(30,25,0,0),(31,22,1,0),(32,24,1,0),(33,26,0,0),(34,27,0,0),(35,28,1,0),(36,28,1,0),(37,29,1,0),(38,30,1,0),(39,31,0,0),(40,32,1,0),(41,33,0,0),(42,34,1,0),(43,32,1,0),(44,35,0,0),(45,36,1,0),(46,37,0,0),(47,38,0,0),(48,40,0,0),(49,39,1,0),(50,39,1,0),(51,41,0,0),(52,42,0,0),(53,43,0,0),(54,44,0,0),(55,45,1,0),(56,46,0,0),(57,47,1,0),(58,48,0,0),(59,49,1,0),(60,50,0,0),(61,51,0,0),(62,52,0,0),(63,53,0,0),(64,54,1,0),(65,54,1,0),(66,55,1,0),(67,55,1,0),(68,56,1,0),(69,56,1,0),(70,57,0,0),(71,58,1,0),(72,58,1,0),(73,58,1,0),(74,58,1,0),(75,58,1,0),(76,59,0,0),(77,60,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(22,'android.permission.GET_TASKS'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(20,'android.permission.RECORD_AUDIO'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,3,1),(21,2,2),(22,3,2),(23,2,3),(24,3,3),(25,2,4),(26,3,4),(27,2,5),(28,3,6),(29,2,6),(30,3,7),(31,2,7),(32,3,8),(33,4,1),(34,2,8),(35,3,9),(36,4,2),(37,5,1),(38,2,9),(39,3,10),(40,4,4),(41,5,2),(42,2,10),(43,3,11),(44,4,5),(45,5,3),(46,2,11),(47,3,12),(48,4,6),(49,5,4),(50,2,12),(51,3,13),(52,4,8),(53,5,6),(54,2,13),(55,4,9),(56,3,14),(57,5,7),(58,2,14),(59,3,15),(60,4,10),(61,5,8),(62,2,15),(63,4,11),(64,3,17),(65,5,9),(66,2,17),(67,3,16),(68,4,12),(69,6,1),(70,5,10),(71,2,16),(72,3,18),(73,6,2),(74,4,13),(75,5,11),(76,2,18),(77,6,3),(78,5,12),(79,4,14),(80,6,4),(81,4,15),(82,5,13),(83,6,6),(84,4,17),(85,5,14),(86,4,16),(87,5,15),(88,6,7),(89,6,8),(90,4,19),(91,5,17),(92,6,9),(93,4,18),(94,5,16),(95,6,10),(96,5,19),(97,6,11),(98,5,18),(99,6,12),(100,5,20),(101,6,13),(102,6,14),(103,6,15),(104,6,17),(105,6,16),(106,6,19),(107,6,18),(108,6,21),(109,6,20),(110,7,1),(111,7,2),(112,7,3),(113,7,4),(114,7,6),(115,7,7),(116,7,8),(117,7,9),(118,7,10),(119,7,11),(120,7,12),(121,7,13),(122,7,14),(123,7,15),(124,7,17),(125,7,16),(126,7,19),(127,7,18),(128,7,22);
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

-- Dump completed on 2015-10-09  0:40:28
