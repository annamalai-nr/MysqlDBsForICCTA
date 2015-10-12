-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_48
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(20,'NULL-CONSTANT'),(5,'android.intent.action.ACTION_POWER_CONNECTED'),(16,'android.intent.action.BATTERY_LOW'),(13,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(4,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(2,'android.intent.action.default'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(14,'android.provider.Telephony.SIM_FULL'),(6,'android.provider.Telephony.SMS_RECEIVED'),(15,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.droidhen.falldown',19),(2,'com.keji.danti572',32),(3,'com.keji.danti574',32),(4,'com.keji.danti657',32),(5,'com.keji.fixedposition',25),(6,'com.keji.danti447',27),(7,'com.keji.danti414',27);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
INSERT INTO `Classes` VALUES (1,1,'com.droidhen.falldown.CoverActivity'),(2,1,'com.droidhen.falldown.GameActivity'),(3,1,'com.droidhen.falldown.OptionActivity'),(4,1,'com.droidhen.falldown.score.OnlineScoreActivity'),(5,1,'com.droidhen.activity.MoreActivity'),(6,1,'com.droidhen.falldown.SystemPlus'),(7,1,'com.droidhen.falldown.MainRun'),(8,1,'com.droidhen.falldown.ForAlarm'),(9,2,'com.keji.danti.MainA'),(10,3,'com.keji.danti.MainA'),(11,2,'com.keji.danti.Boutique'),(12,2,'com.keji.danti.Background'),(13,4,'com.keji.danti.MainA'),(14,2,'com.keji.danti.Lists'),(15,3,'com.keji.danti.Boutique'),(16,2,'com.keji.danti.History'),(17,3,'com.keji.danti.Background'),(18,4,'com.keji.danti.Boutique'),(19,2,'com.keji.danti.TextDetail'),(20,3,'com.keji.danti.Lists'),(21,4,'com.keji.danti.Background'),(22,2,'com.keji.danti.Setting'),(23,3,'com.keji.danti.History'),(24,4,'com.keji.danti.Lists'),(25,2,'com.android.view.custom.BaseAActivity'),(26,3,'com.keji.danti.TextDetail'),(27,4,'com.keji.danti.History'),(28,2,'com.android.view.custom.FirstAActivity'),(29,3,'com.keji.danti.Setting'),(30,4,'com.keji.danti.TextDetail'),(31,2,'com.android.view.custom.SecondAActivity'),(32,3,'com.android.view.custom.BaseAActivity'),(33,4,'com.keji.danti.Setting'),(34,2,'com.android.view.custom.ThirdAActivity'),(35,5,'com.keji.fixedposition.Start'),(36,3,'com.android.view.custom.FirstAActivity'),(37,4,'com.android.view.custom.BaseAActivity'),(38,2,'com.android.view.custom.FourthAActivity'),(39,3,'com.android.view.custom.SecondAActivity'),(40,4,'com.android.view.custom.FirstAActivity'),(41,6,'com.keji.danti.MainA'),(42,2,'com.android.view.custom.FirstAService'),(43,3,'com.android.view.custom.ThirdAActivity'),(44,5,'com.keji.fixedposition.Setting'),(45,7,'com.keji.danti.MainA'),(46,4,'com.android.view.custom.SecondAActivity'),(47,2,'com.android.view.custom.SecondAService'),(48,3,'com.android.view.custom.FourthAActivity'),(49,4,'com.android.view.custom.ThirdAActivity'),(50,2,'com.android.view.custom.ThirdAService'),(51,6,'com.keji.danti.Boutique'),(52,3,'com.android.view.custom.FirstAService'),(53,4,'com.android.view.custom.FourthAActivity'),(54,5,'com.keji.fixedposition.Connections'),(55,2,'com.android.view.custom.FourthAService'),(56,7,'com.keji.danti.Boutique'),(57,6,'com.keji.danti.Background'),(58,3,'com.android.view.custom.SecondAService'),(59,4,'com.android.view.custom.FirstAService'),(60,7,'com.keji.danti.Background'),(61,2,'com.android.view.custom.BaseABroadcastReceiver'),(62,6,'com.keji.danti.Lists'),(63,3,'com.android.view.custom.ThirdAService'),(64,4,'com.android.view.custom.SecondAService'),(65,5,'com.keji.fixedposition.Confirmation'),(66,7,'com.keji.danti.Lists'),(67,6,'com.keji.danti.History'),(68,3,'com.android.view.custom.FourthAService'),(69,4,'com.android.view.custom.ThirdAService'),(70,7,'com.keji.danti.History'),(71,3,'com.android.view.custom.BaseABroadcastReceiver'),(72,6,'com.keji.danti.TextDetail'),(73,4,'com.android.view.custom.FourthAService'),(74,5,'com.keji.fixedposition.DisplayMap'),(75,7,'com.keji.danti.TextDetail'),(76,6,'com.keji.danti.Setting'),(77,4,'com.android.view.custom.BaseABroadcastReceiver'),(78,7,'com.keji.danti.Setting'),(79,6,'com.android.battery.BalckActivity2'),(80,7,'com.android.battery.BalckActivity2'),(81,6,'com.android.battery.BalckActivity'),(82,5,'com.keji.fixedposition.HandleMessage'),(83,7,'com.android.battery.BalckActivity'),(84,6,'com.android.battery.KillThreeSixZero'),(85,7,'com.android.battery.KillThreeSixZero'),(86,6,'com.android.battery.BridgeProvider'),(87,5,'com.keji.fixedposition.MonitorSMSService'),(88,7,'com.android.battery.BridgeProvider'),(89,6,'com.android.battery.AdSmsService'),(90,7,'com.android.battery.AdSmsService'),(91,5,'com.keji.fixedposition.SystemPlus'),(92,6,'com.android.battery.PhoneService'),(93,7,'com.android.battery.PhoneService'),(94,5,'com.keji.fixedposition.MainRun'),(95,6,'com.android.battery.BaseBroadcastReceiver'),(96,7,'com.android.battery.BaseBroadcastReceiver'),(97,5,'com.keji.fixedposition.BootBroadcastReceiver'),(98,5,'com.keji.fixedposition.ForAlarm'),(99,1,'com.droidhen.falldown.GameActivity$2'),(100,1,'com.droidhen.falldown.BaseAActivity'),(101,1,'com.droidhen.activity.MoreHelper'),(102,2,'com.keji.danti.a.ao'),(103,4,'com.keji.danti.a.ao'),(104,3,'com.keji.danti.a.ao'),(105,2,'com.keji.danti.a.sv'),(106,5,'com.keji.fixedposition.BaseAActivity'),(107,4,'com.keji.danti.a.sv'),(108,3,'com.keji.danti.ph'),(109,5,'com.autonavi.mapapi.c'),(110,2,'com.keji.danti.ph'),(111,6,'com.keji.danti.a.a'),(112,3,'com.keji.danti.a.sy'),(113,7,'com.keji.danti.a.a'),(114,4,'com.keji.danti.a.ar'),(115,2,'com.sec.android.providers.drm.Onion'),(116,6,'com.android.battery.b.pa'),(117,3,'com.sec.android.providers.drm.Onion'),(118,5,'w'),(119,6,'com.keji.danti.a.st'),(120,3,'com.keji.danti.a.ar'),(121,5,'l'),(122,7,'com.keji.danti.pf'),(123,6,'com.keji.danti.a.ar'),(124,2,'com.keji.danti.a.ar'),(125,4,'com.sec.android.providers.drm.Onion'),(126,7,'com.android.battery.b.pa'),(127,6,'com.keji.danti.a.ao'),(128,4,'com.keji.danti.a.sy'),(129,7,'com.keji.danti.a.ao'),(130,3,'com.keji.danti.a.sv'),(131,4,'com.keji.danti.ph'),(132,2,'com.keji.danti.a.sy'),(133,6,'com.keji.danti.pf'),(134,7,'com.keji.danti.a.ar'),(135,7,'com.keji.danti.a.st');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'ad'),(2,30,'notSaveDate'),(3,71,'PID'),(4,19,'index'),(5,75,'latitude'),(6,72,'appsec'),(7,30,'index'),(8,63,'appsec'),(9,26,'notSaveDate'),(10,19,'notSaveDate'),(11,74,'appsec'),(12,65,'appsec'),(13,14,'appsec'),(14,35,'tel'),(15,96,'pdus'),(16,21,'data'),(17,96,'APP_UID'),(18,57,'data'),(19,12,'data'),(20,66,'sender_tel'),(21,17,'data'),(22,75,'longitude'),(23,66,'location'),(24,20,'appsec'),(25,95,'APP_UID'),(26,26,'index'),(27,61,'PID'),(28,72,'notSaveDate'),(29,95,'pdus'),(30,75,'msg_address'),(31,74,'index'),(32,72,'index'),(33,24,'appsec'),(34,77,'PID'),(35,60,'data'),(36,74,'notSaveDate');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,54,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,63,'s',0,NULL,NULL),(63,62,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,65,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,74,'a',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,82,'s',1,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',1,NULL,NULL),(87,88,'s',1,NULL,NULL),(88,87,'s',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,94,'s',0,NULL,NULL),(94,93,'s',0,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'r',0,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,8),(4,4,1),(5,5,1),(6,6,2),(7,6,1),(8,7,1),(9,8,9),(10,9,18),(11,10,10),(12,11,14),(13,12,35),(14,13,41),(15,14,24),(16,15,20),(17,16,14),(18,17,75),(19,17,83),(20,18,13),(21,19,75),(22,19,83),(23,20,41),(24,21,75),(25,21,83),(26,22,29),(27,23,45),(28,24,35),(29,25,30),(30,26,61),(31,27,95),(32,28,71),(33,29,54),(34,30,35),(35,31,63),(36,32,25),(37,33,37),(38,34,26),(39,35,35),(40,36,65),(41,37,76),(42,38,30),(43,39,32),(44,40,45),(45,41,19),(46,42,35),(47,43,95),(48,44,88),(49,45,77),(50,46,11),(51,47,96),(52,48,26),(53,50,98),(54,49,72),(55,51,33),(56,52,19),(57,53,74),(58,54,35),(59,55,20),(60,56,95),(61,57,24),(62,58,97),(63,59,22),(64,60,96),(65,61,15),(66,62,63),(67,63,78),(68,64,95),(69,65,74),(70,66,72),(71,67,96),(72,68,52),(73,69,96),(74,70,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,99,'<com.droidhen.falldown.GameActivity$2: void onClick(android.view.View)>',6,'a',NULL),(2,100,'<com.droidhen.falldown.BaseAActivity: void c()>',6,'s',NULL),(3,8,'<com.droidhen.falldown.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,1,'<com.droidhen.falldown.CoverActivity: void gotoOptions()>',3,'a',NULL),(5,1,'<com.droidhen.falldown.CoverActivity: void quickStart()>',3,'a',NULL),(6,101,'<com.droidhen.activity.MoreHelper: void showMoreGames(android.content.Context,com.droidhen.Ad)>',5,'a',NULL),(7,100,'<com.droidhen.falldown.BaseAActivity: void b()>',17,'s',NULL),(8,102,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(9,103,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(10,104,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(11,105,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(12,106,'<com.keji.fixedposition.BaseAActivity: void d()>',51,'s',NULL),(13,41,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(14,107,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(15,108,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(16,110,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(17,109,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'a',0),(18,103,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(19,109,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'r',0),(20,111,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(21,109,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'s',0),(22,112,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(23,113,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(24,106,'<com.keji.fixedposition.BaseAActivity: void a()>',6,'s',NULL),(25,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(26,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,116,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(28,117,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(29,113,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(30,118,'<w: void onClick(android.view.View)>',7,'a',NULL),(31,119,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(32,25,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(33,37,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(34,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(35,121,'<l: void onClick(android.view.View)>',7,'a',NULL),(36,122,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(37,123,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(38,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(39,32,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(40,45,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(41,124,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(42,106,'<com.keji.fixedposition.BaseAActivity: void d()>',39,'s',NULL),(43,116,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(44,87,'<com.keji.fixedposition.MonitorSMSService: void onCreate()>',8,'p',NULL),(45,125,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(46,102,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(47,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(48,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(49,127,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(50,98,'<com.keji.fixedposition.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(51,128,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,124,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(53,129,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(54,106,'<com.keji.fixedposition.BaseAActivity: void d()>',26,'s',NULL),(55,130,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(56,116,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(57,131,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(58,97,'<com.keji.fixedposition.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(59,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(60,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(61,104,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(62,133,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(63,134,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(64,116,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(65,129,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(66,127,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(67,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(68,111,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(69,126,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(70,135,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,17),(2,13,17),(3,22,18),(4,23,19),(5,25,19),(6,26,17),(7,27,20),(8,28,20),(9,31,20),(10,32,20),(11,33,18),(12,35,19),(13,37,19),(14,40,20),(15,41,17),(16,44,19),(17,46,19),(18,47,17),(19,49,20),(20,54,18),(21,63,17),(22,67,18),(23,68,18),(24,70,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/droidhen/falldown/score/OnlineScoreActivity'),(2,2,'com.android.battery.BridgeProvider'),(3,3,'com/droidhen/falldown/MainRun'),(4,4,'com/droidhen/falldown/OptionActivity'),(5,5,'com/droidhen/falldown/GameActivity'),(6,6,'com/droidhen/activity/MoreActivity'),(7,7,'com/droidhen/falldown/SystemPlus'),(8,8,'com.android.settings.WirelessSettings'),(9,10,'com.android.settings.WirelessSettings'),(10,11,'com/keji/danti/TextDetail'),(11,12,'com/keji/fixedposition/SystemPlus'),(12,14,'com/keji/danti/TextDetail'),(13,13,'com.android.packageinstaller.PackageInstallerActivity'),(14,15,'com/keji/danti/TextDetail'),(15,16,'com/keji/danti/TextDetail'),(16,17,'com.android.settings.WirelessSettings'),(17,18,'com.android.settings.WirelessSettings'),(18,19,'com/keji/danti/Background'),(19,20,'com.android.settings.WirelessSettings'),(20,21,'com.android.battery.BridgeProvider'),(21,24,'com/android/battery/AdSmsService'),(22,29,'com/keji/fixedposition/Connections'),(23,30,'com/keji/danti/TextDetail'),(24,34,'com/keji/fixedposition/Setting'),(25,36,'com/keji/danti/TextDetail'),(26,38,'com/keji/danti/Background'),(27,43,'com/keji/fixedposition/SystemPlus'),(28,39,'com/keji/danti/Setting'),(29,42,'com/keji/danti/Setting'),(30,41,'com.android.packageinstaller.PackageInstallerActivity'),(31,45,'com/android/battery/BridgeProvider'),(32,48,'com/android/battery/PhoneService'),(33,51,'com/keji/fixedposition/MainRun'),(34,50,'com/keji/danti/Setting'),(35,52,'com/keji/danti/Setting'),(36,53,'com/keji/danti/Background'),(37,56,'com/keji/fixedposition/SystemPlus'),(38,55,'com/keji/danti/Setting'),(39,57,'com/keji/danti/TextDetail'),(40,58,'com/android/battery/KillThreeSixZero'),(41,59,'com/keji/danti/TextDetail'),(42,60,'com/keji/fixedposition/MonitorSMSService'),(43,61,'com/keji/danti/Background'),(44,62,'com/android/battery/AdSmsService'),(45,64,'com/keji/danti/TextDetail'),(46,65,'com/keji/danti/Background'),(47,66,'com/android/battery/PhoneService'),(48,69,'com/android/battery/BridgeProvider'),(49,71,'com/android/battery/KillThreeSixZero'),(50,72,'com/keji/danti/TextDetail');
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
INSERT INTO `IData` VALUES (1,9,1),(2,13,2),(3,22,3),(4,26,4),(5,33,5),(6,39,6),(7,42,7),(8,41,8),(9,47,10),(10,50,11),(11,52,12),(12,55,13),(13,54,14),(14,63,15),(15,67,16),(16,68,17),(17,70,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'ad'),(2,11,'index'),(3,14,'index'),(4,15,'index'),(5,16,'index'),(6,22,'sms_body'),(7,30,'index'),(8,31,'packageName'),(9,32,'packageName'),(10,33,'sms_body'),(11,36,'index'),(12,35,'packageName'),(13,37,'packageName'),(14,40,'packageName'),(15,44,'packageName'),(16,54,'sms_body'),(17,57,'index'),(18,59,'index'),(19,64,'index'),(20,67,'sms_body'),(21,68,'sms_body'),(22,72,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,11),(11,10,7),(12,10,12),(13,10,8),(14,10,9),(15,10,5),(16,10,10),(17,10,6),(18,10,3),(19,10,4),(20,11,2),(21,12,4),(22,12,3),(23,12,6),(24,12,5),(25,12,8),(26,12,7),(27,12,10),(28,12,9),(29,12,11),(30,12,12),(31,13,1),(32,14,10),(33,14,9),(34,14,12),(35,14,11),(36,14,6),(37,14,5),(38,14,8),(39,14,7),(40,14,4),(41,14,3),(42,15,2),(43,16,1),(44,17,1),(45,18,2),(46,19,15),(47,19,14),(48,19,16),(49,19,11),(50,19,10),(51,19,13),(52,19,7),(53,19,6),(54,19,9),(55,19,5),(56,20,7),(57,20,6),(58,21,13),(59,21,15),(60,21,14),(61,21,16),(62,21,5),(63,21,7),(64,21,6),(65,21,9),(66,21,11),(67,21,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,13,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.droidhen.falldown'),(2,2,'com.android.battery'),(3,3,'com.droidhen.falldown'),(4,4,'com.droidhen.falldown'),(5,5,'com.droidhen.falldown'),(6,6,'com.droidhen.falldown'),(7,7,'com.droidhen.falldown'),(8,8,'com.android.settings'),(9,10,'com.android.settings'),(10,11,'com.keji.danti572'),(11,12,'com.keji.fixedposition'),(12,14,'com.keji.danti657'),(13,13,'com.android.packageinstaller'),(14,15,'com.keji.danti574'),(15,16,'com.keji.danti572'),(16,17,'com.android.settings'),(17,18,'com.android.settings'),(18,19,'com.keji.danti574'),(19,20,'com.android.settings'),(20,21,'com.android.battery'),(21,24,'com.keji.danti447'),(22,29,'com.keji.fixedposition'),(23,30,'com.keji.danti447'),(24,34,'com.keji.fixedposition'),(25,36,'com.keji.danti414'),(26,38,'com.keji.danti447'),(27,43,'com.keji.fixedposition'),(28,39,'com.keji.danti657'),(29,42,'com.keji.danti572'),(30,41,'com.android.packageinstaller'),(31,45,'com.keji.danti447'),(32,48,'com.keji.danti414'),(33,51,'com.keji.fixedposition'),(34,50,'com.keji.danti574'),(35,52,'com.keji.danti447'),(36,53,'com.keji.danti657'),(37,56,'com.keji.fixedposition'),(38,55,'com.keji.danti414'),(39,57,'com.keji.danti574'),(40,58,'com.keji.danti447'),(41,59,'com.keji.danti657'),(42,60,'com.keji.fixedposition'),(43,61,'com.keji.danti572'),(44,62,'com.keji.danti414'),(45,64,'com.keji.danti447'),(46,65,'com.keji.danti414'),(47,66,'com.keji.danti447'),(48,69,'com.keji.danti414'),(49,71,'com.keji.danti414'),(50,72,'com.keji.danti414');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,13,0),(5,35,0),(6,41,0),(7,45,0),(8,44,0),(9,56,0),(10,61,0),(11,66,0),(12,71,0),(13,75,0),(14,77,0),(15,83,0),(16,86,0),(17,87,0),(18,88,0),(19,95,0),(20,97,0),(21,96,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,18,0,0),(18,20,0,0),(19,22,0,0),(20,23,0,0),(21,24,0,0),(22,25,1,0),(23,26,1,0),(24,27,0,0),(25,28,1,0),(26,29,1,0),(27,26,1,0),(28,28,1,0),(29,30,0,0),(30,31,0,0),(31,32,1,0),(32,33,1,0),(33,34,1,0),(34,35,0,0),(35,32,1,0),(36,36,0,0),(37,33,1,0),(38,37,0,0),(39,38,0,0),(40,39,1,0),(41,40,0,0),(42,41,0,0),(43,42,0,0),(44,39,1,0),(45,43,0,0),(46,45,1,0),(47,46,1,0),(48,47,0,0),(49,45,1,0),(50,48,0,0),(51,50,0,0),(52,49,0,0),(53,51,0,0),(54,52,1,0),(55,53,0,0),(56,54,0,0),(57,55,0,0),(58,56,0,0),(59,57,0,0),(60,58,0,0),(61,59,0,0),(62,60,0,0),(63,61,1,0),(64,62,0,0),(65,63,0,0),(66,64,0,0),(67,65,1,0),(68,66,1,0),(69,67,0,0),(70,68,1,0),(71,69,0,0),(72,70,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_MOCK_LOCATION'),(3,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CALL_PHONE'),(22,'android.permission.CONTROL_LOCATION_UPDATES'),(14,'android.permission.DISABLE_KEYGUARD'),(2,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(13,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_APN_SETTINGS'),(12,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,44,9);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,2,5),(9,3,1),(10,2,6),(11,3,2),(12,2,7),(13,3,3),(14,2,8),(15,3,4),(16,4,1),(17,2,9),(18,3,5),(19,4,2),(20,2,10),(21,4,3),(22,3,6),(23,2,11),(24,3,7),(25,4,4),(26,2,12),(27,3,8),(28,4,5),(29,2,13),(30,3,9),(31,4,6),(32,2,14),(33,3,10),(34,4,7),(35,2,15),(36,3,11),(37,4,8),(38,2,17),(39,4,9),(40,3,12),(41,2,16),(42,4,10),(43,3,13),(44,2,18),(45,4,11),(46,3,14),(47,3,15),(48,4,12),(49,3,17),(50,4,13),(51,3,16),(52,4,14),(53,3,18),(54,4,15),(55,4,17),(56,4,16),(57,4,18),(58,6,1),(59,5,16),(60,6,2),(61,5,1),(62,7,1),(63,6,3),(64,7,2),(65,5,19),(66,6,4),(67,7,3),(68,5,2),(69,6,5),(70,7,4),(71,5,3),(72,6,7),(73,7,5),(74,5,21),(75,6,8),(76,5,4),(77,7,7),(78,6,9),(79,7,8),(80,5,20),(81,6,11),(82,7,9),(83,5,23),(84,6,12),(85,5,22),(86,7,11),(87,6,13),(88,7,12),(89,5,7),(90,6,14),(91,7,13),(92,5,9),(93,6,15),(94,7,14),(95,5,15),(96,6,17),(97,7,15),(98,6,16),(99,7,17),(100,6,19),(101,7,16),(102,6,18),(103,7,19),(104,7,18);
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

-- Dump completed on 2015-10-09  0:39:52
