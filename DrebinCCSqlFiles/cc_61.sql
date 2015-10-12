-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_61
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(15,'NULL-CONSTANT'),(5,'android.intent.action.ACTION_POWER_CONNECTED'),(7,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(4,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(14,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(6,'android.provider.Telephony.SMS_RECEIVED'),(2,'com.android.camera.action.CROP');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti80',13),(2,'com.keji.danti889',32),(3,'com.keji.danti659',32),(4,'com.keji.danti813',32),(5,'com.keji.danti578',32),(6,'com.keji.danti431',25),(7,'com.zhangling.danti275',19);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti80.Background'),(2,1,'com.keji.danti80.Background$1$1'),(3,1,'com.keji.danti80.BaseAActivity'),(4,2,'com.keji.danti.MainA'),(5,3,'com.keji.danti.MainA'),(6,2,'com.keji.danti.Boutique'),(7,2,'com.keji.danti.Background'),(8,3,'com.keji.danti.Boutique'),(9,2,'com.keji.danti.Lists'),(10,3,'com.keji.danti.Background'),(11,2,'com.keji.danti.History'),(12,3,'com.keji.danti.Lists'),(13,2,'com.keji.danti.TextDetail'),(14,6,'com.keji.danti.MainA'),(15,3,'com.keji.danti.History'),(16,2,'com.keji.danti.Setting'),(17,3,'com.keji.danti.TextDetail'),(18,4,'com.keji.danti.MainA'),(19,2,'com.android.view.custom.BaseAActivity'),(20,6,'com.keji.danti.Boutique'),(21,3,'com.keji.danti.Setting'),(22,2,'com.android.view.custom.FirstAActivity'),(23,5,'com.keji.danti.MainA'),(24,6,'com.keji.danti.Background'),(25,3,'com.android.view.custom.BaseAActivity'),(26,2,'com.android.view.custom.SecondAActivity'),(27,4,'com.keji.danti.Boutique'),(28,6,'com.keji.danti.Lists'),(29,3,'com.android.view.custom.FirstAActivity'),(30,2,'com.android.view.custom.ThirdAActivity'),(31,4,'com.keji.danti.Background'),(32,5,'com.keji.danti.Boutique'),(33,3,'com.android.view.custom.SecondAActivity'),(34,6,'com.keji.danti.History'),(35,2,'com.android.view.custom.FourthAActivity'),(36,4,'com.keji.danti.Lists'),(37,5,'com.keji.danti.Background'),(38,3,'com.android.view.custom.ThirdAActivity'),(39,6,'com.keji.danti.TextDetail'),(40,2,'com.android.view.custom.FirstAService'),(41,4,'com.keji.danti.History'),(42,5,'com.keji.danti.Lists'),(43,3,'com.android.view.custom.FourthAActivity'),(44,6,'com.keji.danti.Setting'),(45,2,'com.android.view.custom.SecondAService'),(46,4,'com.keji.danti.TextDetail'),(47,5,'com.keji.danti.History'),(48,3,'com.android.view.custom.FirstAService'),(49,6,'com.keji.danti.AdSmsService'),(50,2,'com.android.view.custom.ThirdAService'),(51,4,'com.keji.danti.Setting'),(52,5,'com.keji.danti.TextDetail'),(53,3,'com.android.view.custom.SecondAService'),(54,6,'com.android.adomb.AdSmsService'),(55,2,'com.android.view.custom.FourthAService'),(56,4,'com.android.view.custom.BaseAActivity'),(57,5,'com.keji.danti.Setting'),(58,6,'com.android.adomb.SystemPlus'),(59,3,'com.android.view.custom.ThirdAService'),(60,2,'com.android.view.custom.BaseABroadcastReceiver'),(61,4,'com.android.view.custom.FirstAActivity'),(62,5,'com.android.view.custom.BaseAActivity'),(63,6,'com.android.adomb.MainRun'),(64,3,'com.android.view.custom.FourthAService'),(65,4,'com.android.view.custom.SecondAActivity'),(66,5,'com.android.view.custom.FirstAActivity'),(67,6,'com.keji.danti.BaseBroadcastReceiver'),(68,3,'com.android.view.custom.BaseABroadcastReceiver'),(69,4,'com.android.view.custom.ThirdAActivity'),(70,5,'com.android.view.custom.SecondAActivity'),(71,4,'com.android.view.custom.FourthAActivity'),(72,5,'com.android.view.custom.ThirdAActivity'),(73,6,'com.android.adomb.ForAlarm'),(74,4,'com.android.view.custom.FirstAService'),(75,5,'com.android.view.custom.FourthAActivity'),(76,4,'com.android.view.custom.SecondAService'),(77,5,'com.android.view.custom.FirstAService'),(78,4,'com.android.view.custom.ThirdAService'),(79,5,'com.android.view.custom.SecondAService'),(80,4,'com.android.view.custom.FourthAService'),(81,5,'com.android.view.custom.ThirdAService'),(82,4,'com.android.view.custom.BaseABroadcastReceiver'),(83,5,'com.android.view.custom.FourthAService'),(84,5,'com.android.view.custom.BaseABroadcastReceiver'),(85,7,'com.zhangling.danti275.MainA'),(86,7,'com.zhangling.danti275.Boutique'),(87,7,'com.zhangling.danti275.Background'),(88,7,'com.zhangling.danti275.Lists'),(89,7,'com.zhangling.danti275.History'),(90,7,'com.zhangling.danti275.TextDetail'),(91,7,'com.zhangling.danti275.Setting'),(92,7,'com.zhangling.danti275.AdSmsService'),(93,7,'com.zhangling.danti275.BaseBroadcastReceiver'),(94,7,'b'),(95,6,'com.keji.danti.a.ar'),(96,7,'bp'),(97,6,'com.madhouse.android.ads._'),(98,7,'i'),(99,2,'com.keji.danti.a.ao'),(100,6,'com.keji.danti.pf'),(101,7,'u'),(102,2,'com.keji.danti.a.sy'),(103,6,'com.keji.danti.a.a'),(104,7,'s'),(105,6,'com.keji.danti.a.st'),(106,7,'bq'),(107,2,'com.keji.danti.a.ar'),(108,3,'com.keji.danti.a.ao'),(109,2,'com.sec.android.providers.drm.Onion'),(110,6,'com.keji.danti.a.ao'),(111,2,'com.keji.danti.ph'),(112,3,'com.keji.danti.a.sv'),(113,6,'com.keji.danti.c.pa'),(114,5,'com.keji.danti.a.sy'),(115,2,'com.keji.danti.a.sv'),(116,5,'com.keji.danti.a.ao'),(117,3,'com.keji.danti.a.ar'),(118,4,'com.keji.danti.a.sv'),(119,5,'com.keji.danti.a.ar'),(120,4,'com.keji.danti.a.ar'),(121,3,'com.keji.danti.a.sy'),(122,5,'com.keji.danti.ph'),(123,3,'com.sec.android.providers.drm.Onion'),(124,4,'com.keji.danti.ph'),(125,4,'com.keji.danti.a.ao'),(126,3,'com.keji.danti.ph'),(127,4,'com.sec.android.providers.drm.Onion'),(128,5,'com.keji.danti.a.sv'),(129,4,'com.keji.danti.a.sy'),(130,5,'com.sec.android.providers.drm.Onion');
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
INSERT INTO `ComponentExtras` VALUES (1,1,'data'),(2,85,'data'),(3,88,'notSaveDate'),(4,5,'data'),(5,22,'data'),(6,37,'index'),(7,88,'index'),(8,37,'notSaveDate'),(9,11,'index'),(10,58,'PID'),(11,7,'appsec'),(12,11,'notSaveDate'),(13,15,'notSaveDate'),(14,10,'appsec'),(15,44,'index'),(16,50,'index'),(17,15,'index'),(18,35,'data'),(19,8,'data'),(20,65,'PID'),(21,44,'notSaveDate'),(22,82,'PID'),(23,34,'appsec'),(24,40,'appsec'),(25,50,'notSaveDate'),(26,80,'PID'),(27,29,'data');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,4,'a',1,NULL,NULL),(3,5,'a',1,NULL,NULL),(4,6,'a',0,NULL,NULL),(5,7,'a',0,NULL,NULL),(6,8,'a',0,NULL,NULL),(7,9,'a',0,NULL,NULL),(8,10,'a',0,NULL,NULL),(9,11,'a',0,NULL,NULL),(10,12,'a',0,NULL,NULL),(11,13,'a',0,NULL,NULL),(12,14,'a',1,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'a',1,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',1,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,29,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'s',0,NULL,NULL),(39,41,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'s',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,48,'s',0,NULL,NULL),(47,49,'s',0,NULL,NULL),(48,50,'s',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,54,'s',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,55,'s',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'s',0,NULL,NULL),(57,59,'s',0,NULL,NULL),(58,60,'r',1,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,64,'s',0,NULL,NULL),(62,63,'s',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,68,'r',1,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'r',0,NULL,NULL),(72,74,'s',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'s',0,NULL,NULL),(75,77,'s',0,NULL,NULL),(76,78,'s',0,NULL,NULL),(77,79,'s',0,NULL,NULL),(78,80,'s',0,NULL,NULL),(79,81,'s',0,NULL,NULL),(80,82,'r',1,NULL,NULL),(81,83,'s',0,NULL,NULL),(82,84,'r',1,NULL,NULL),(83,85,'a',1,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'s',0,NULL,NULL),(91,93,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,86),(4,4,42),(5,5,88),(6,6,27),(7,7,12),(8,8,84),(9,9,2),(10,10,27),(11,11,86),(12,12,14),(13,13,4),(14,14,83),(15,15,18),(16,16,17),(17,17,91),(18,18,27),(19,19,89),(20,20,12),(21,21,11),(22,23,88),(23,22,6),(24,24,71),(25,25,23),(26,26,12),(27,27,58),(28,28,37),(29,29,3),(30,30,7),(31,31,10),(32,32,66),(33,33,55),(34,34,7),(35,35,62),(36,36,21),(37,37,15),(38,38,34),(39,39,11),(40,40,37),(41,41,50),(42,42,44),(43,43,19),(44,44,54),(45,45,40),(46,46,65),(47,47,30),(48,48,15),(49,49,34),(50,50,60),(51,51,16),(52,52,10),(53,53,50),(54,54,80),(55,55,25),(56,56,40),(57,57,49),(58,58,82),(59,59,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.keji.danti80.Background$1$1: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(2,3,'<com.keji.danti80.BaseAActivity: void startBridge()>',7,'s',NULL),(3,94,'<b: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(4,95,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(5,96,'<bp: void b(java.lang.String)>',20,'a',NULL),(6,97,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(7,14,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(8,98,'<i: void a(java.lang.String)>',6,'a',NULL),(9,99,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(10,100,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(11,101,'<u: void onClick(android.view.View)>',11,'a',NULL),(12,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(13,99,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(14,98,'<i: void c()>',7,'a',NULL),(15,103,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(16,19,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(17,104,'<s: boolean a(android.content.Context,android.content.Intent)>',9,'s',NULL),(18,105,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(19,106,'<bq: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,14,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(21,107,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(23,96,'<bp: boolean a(android.view.MenuItem)>',19,'a',NULL),(24,73,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,25,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,103,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(27,109,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(28,110,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(30,111,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(31,112,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(32,113,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(33,114,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(34,115,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(35,63,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(36,116,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(37,117,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(38,118,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(39,107,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(40,110,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(41,119,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(42,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,56,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(45,122,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(46,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(47,116,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(48,117,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(49,124,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(50,62,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(51,125,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(52,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(53,119,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(54,127,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(55,125,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(56,128,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(57,129,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(58,130,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(59,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,2),(2,5,13),(3,7,14),(4,12,14),(5,14,14),(6,15,15),(7,18,16),(8,23,14),(9,25,15),(10,27,16),(11,28,16),(12,29,15),(13,41,13),(14,42,13),(15,46,15),(16,48,16),(17,49,16),(18,50,15),(19,51,14),(20,52,13),(21,54,15),(22,56,16),(23,58,13),(24,59,16),(25,60,15),(26,61,14),(27,64,16),(28,65,15),(29,66,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com.sec.android.bridge.BridgeProvider'),(2,3,'com/zhangling/danti275/TextDetail'),(3,4,'com/keji/danti/Background'),(4,6,'com/android/adomb/SystemPlus'),(5,8,'com.android.settings.WirelessSettings'),(6,11,'com/keji/danti/Background'),(7,9,'com/keji/danti/TextDetail'),(8,10,'com/zhangling/danti275/TextDetail'),(9,13,'com.android.settings.WirelessSettings'),(10,16,'com/zhangling/danti275/AdSmsService'),(11,17,'com/keji/danti/TextDetail'),(12,19,'com/zhangling/danti275/Background'),(13,20,'com.android.battery.BridgeProvider'),(14,21,'com/keji/danti/Setting'),(15,24,'com/android/adomb/MainRun'),(16,22,'com/zhangling/danti275/Setting'),(17,26,'com.android.settings.WirelessSettings'),(18,31,'com.android.settings.WirelessSettings'),(19,30,'com/keji/danti/Setting'),(20,32,'com/keji/danti/TextDetail'),(21,34,'com/keji/danti/AdSmsService'),(22,33,'com/keji/danti/TextDetail'),(23,35,'com/keji/danti/Background'),(24,36,'com/keji/danti/TextDetail'),(25,37,'com.android.battery.BridgeProvider'),(26,38,'com.android.settings.WirelessSettings'),(27,40,'com/keji/danti/TextDetail'),(28,39,'com/keji/danti/Setting'),(29,45,'com/keji/danti/Background'),(30,43,'com/keji/danti/Setting'),(31,44,'com/keji/danti/Setting'),(32,47,'com/keji/danti/TextDetail'),(33,53,'com/keji/danti/TextDetail'),(34,55,'com.android.settings.WirelessSettings'),(35,57,'com/keji/danti/TextDetail'),(36,62,'com/keji/danti/TextDetail'),(37,63,'com/keji/danti/Background');
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
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,7,4),(4,12,5),(5,14,6),(6,21,7),(7,22,8),(8,23,9),(9,30,10),(10,39,11),(11,41,12),(12,42,13),(13,43,14),(14,44,15),(15,51,16),(16,52,17),(17,58,18),(18,61,19),(19,66,20);
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
INSERT INTO `IExtras` VALUES (1,1,'aspectX'),(2,1,'aspectY'),(3,1,'return-data'),(4,1,'crop'),(5,3,'index'),(6,5,'sms_body'),(7,9,'index'),(8,10,'index'),(9,15,'packageName'),(10,17,'index'),(11,18,'packageName'),(12,25,'packageName'),(13,27,'packageName'),(14,32,'index'),(15,33,'index'),(16,36,'index'),(17,40,'index'),(18,41,'sms_body'),(19,42,'sms_body'),(20,46,'packageName'),(21,47,'index'),(22,49,'packageName'),(23,52,'sms_body'),(24,53,'index'),(25,54,'packageName'),(26,57,'index'),(27,56,'packageName'),(28,58,'sms_body'),(29,62,'index'),(30,66,'sms_body');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,12),(12,7,11),(13,7,10),(14,7,3),(15,7,4),(16,7,5),(17,8,11),(18,8,7),(19,8,10),(20,8,9),(21,8,5),(22,9,12),(23,9,11),(24,9,10),(25,9,9),(26,9,8),(27,9,4),(28,9,5),(29,9,6),(30,9,7),(31,9,3),(32,10,11),(33,10,7),(34,10,12),(35,10,8),(36,10,9),(37,10,5),(38,10,10),(39,10,6),(40,10,3),(41,10,4),(42,11,5),(43,11,4),(44,11,3),(45,11,9),(46,11,8),(47,11,7),(48,11,6),(49,11,10),(50,11,11),(51,11,12),(52,12,1),(53,13,11),(54,13,10),(55,13,9),(56,13,7),(57,13,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,12,1);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.sec.android.bridge'),(2,3,'com.zhangling.danti275'),(3,4,'com.keji.danti431'),(4,6,'com.keji.danti431'),(5,8,'com.android.settings'),(6,11,'com.keji.danti889'),(7,9,'com.keji.danti431'),(8,10,'com.zhangling.danti275'),(9,13,'com.android.settings'),(10,16,'com.zhangling.danti275'),(11,17,'com.keji.danti431'),(12,19,'com.zhangling.danti275'),(13,20,'com.android.battery'),(14,21,'com.keji.danti889'),(15,24,'com.keji.danti431'),(16,22,'com.zhangling.danti275'),(17,26,'com.android.settings'),(18,31,'com.android.settings'),(19,30,'com.keji.danti431'),(20,32,'com.keji.danti889'),(21,34,'com.keji.danti431'),(22,33,'com.keji.danti659'),(23,35,'com.keji.danti578'),(24,36,'com.keji.danti889'),(25,37,'com.android.battery'),(26,38,'com.android.settings'),(27,40,'com.keji.danti813'),(28,39,'com.keji.danti659'),(29,45,'com.keji.danti659'),(30,43,'com.keji.danti578'),(31,44,'com.keji.danti813'),(32,47,'com.keji.danti578'),(33,53,'com.keji.danti813'),(34,55,'com.android.settings'),(35,57,'com.keji.danti659'),(36,62,'com.keji.danti578'),(37,63,'com.keji.danti813');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,12,0),(5,16,0),(6,21,0),(7,58,0),(8,66,0),(9,65,0),(10,80,0),(11,82,0),(12,83,0),(13,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,7,0,0),(7,8,1,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,1,0),(15,16,1,0),(16,17,0,0),(17,18,0,0),(18,16,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,23,0,0),(23,22,1,0),(24,24,0,0),(25,25,1,0),(26,26,0,0),(27,25,1,0),(28,27,1,0),(29,27,1,0),(30,28,0,0),(31,29,0,0),(32,30,0,0),(33,31,0,0),(34,32,0,0),(35,33,0,0),(36,34,0,0),(37,35,0,0),(38,36,0,0),(39,37,0,0),(40,38,0,0),(41,39,1,0),(42,40,1,0),(43,41,0,0),(44,42,0,0),(45,43,0,0),(46,44,1,0),(47,45,0,0),(48,46,1,0),(49,44,1,0),(50,46,1,0),(51,47,1,0),(52,48,1,0),(53,49,0,0),(54,50,1,0),(55,51,0,0),(56,50,1,0),(57,52,0,0),(58,53,1,0),(59,54,1,0),(60,54,1,0),(61,55,1,0),(62,56,0,0),(63,57,0,0),(64,58,1,0),(65,58,1,0),(66,59,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_NETWORK_STATE'),(21,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CALL_PHONE'),(14,'android.permission.DISABLE_KEYGUARD'),(17,'android.permission.INTERNET'),(1,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(9,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(13,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(12,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,6,3);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,4),(8,2,7),(9,3,5),(10,2,8),(11,3,6),(12,2,9),(13,3,7),(14,2,10),(15,3,8),(16,2,11),(17,3,9),(18,2,12),(19,3,10),(20,2,13),(21,3,11),(22,2,14),(23,3,12),(24,2,15),(25,3,13),(26,2,17),(27,3,14),(28,2,16),(29,3,15),(30,2,19),(31,3,17),(32,2,18),(33,3,16),(34,4,4),(35,2,20),(36,3,19),(37,4,5),(38,3,18),(39,4,6),(40,5,4),(41,3,21),(42,4,7),(43,5,5),(44,3,20),(45,4,8),(46,5,6),(47,4,9),(48,5,7),(49,4,10),(50,6,17),(51,5,8),(52,4,11),(53,6,19),(54,5,9),(55,4,12),(56,6,18),(57,5,10),(58,4,13),(59,6,3),(60,5,11),(61,4,14),(62,6,21),(63,5,12),(64,4,15),(65,6,7),(66,5,13),(67,6,11),(68,4,17),(69,5,14),(70,4,16),(71,6,13),(72,5,15),(73,4,19),(74,6,15),(75,5,17),(76,4,18),(77,5,16),(78,4,21),(79,5,19),(80,4,20),(81,5,18),(82,5,21),(83,5,20),(84,7,17),(85,7,19),(86,7,3),(87,7,21),(88,7,7),(89,7,15);
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

-- Dump completed on 2015-10-09  0:40:25
