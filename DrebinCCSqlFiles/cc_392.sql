-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_392
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'NULL-CONSTANT'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.EDIT'),(2,'android.intent.action.MAIN'),(5,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(15,'com.xmobileapp.taskmanager.ACTION_LOADFINISH'),(1,'com.xmobileapp.taskmanager.TaskManager'),(9,'wbs.netsentry.ACTION_EDIT_PREFERENCES'),(12,'wbs.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(10,'wbs.netsentry.ACTION_RESET_COUNTERS'),(11,'wbs.netsentry.ACTION_UPDATE_COUNTERS'),(7,'wbs.netsentry.ui.ChartInterfaceStats'),(6,'wbs.netsentry.ui.InterfaceStatsList');
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
INSERT INTO `Applications` VALUES (1,'wbs.logo',1),(2,'com.wbs',1),(3,'com.xlabtech.MonsterTruckRally',3),(4,'com.ttmobilegame.android.computerlab',1),(5,'com.dseffects.JewelsMania',3),(6,'wbs.netsentry',4),(7,'com.sgg.sp',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.PREFERENCE');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'wbs.logo.WbsLogoAct'),(2,1,'com.xmobileapp.taskmanager.TaskManager'),(3,1,'com.geinimi.custom.Ad0000_000004'),(4,1,'com.geinimi.AdService'),(5,1,'com.geinimi.AdServiceReceiver'),(6,2,'com.wbs.MagicVoiceActivity'),(7,2,'com.geinimi.custom.Ad0000_00000006'),(8,2,'com.geinimi.custom.GoogleKeyboard'),(9,2,'com.geinimi.AdServiceReceiver'),(10,4,'com.ttmobilegame.android.computerlab.Logo'),(11,3,'com.xlabtech.MonsterTruckRally.MonsterTruckRally'),(12,5,'com.dseffects.JewelsMania.JewelsMania'),(13,4,'com.ttmobilegame.android.computerlab.computerlab'),(14,3,'com.xlabtech.MonsterTruckRally.rally.c.bDhjknvj'),(15,4,'com.geinimi.custom.Ad3089_30890001'),(16,5,'com.geinimi.custom.Ad3006_30060001'),(17,3,'com.xlabtech.MonsterTruckRally.rally.c.AndroidIME'),(18,4,'com.geinimi.custom.GoogleKeyboard'),(19,5,'com.geinimi.custom.GoogleKeyboard'),(20,3,'com.xlabtech.MonsterTruckRally.rally.f'),(21,4,'com.geinimi.AdServiceReceiver'),(22,6,'wbs.netsentry.logo.WbsLogoAct'),(23,5,'com.geinimi.AdServiceReceiver'),(24,6,'wbs.netsentry.ui.InterfaceStatsList'),(25,7,'com.sgg.sp.ShoppersParadise'),(26,7,'com.geinimi.custom.Ad3112_31120001'),(27,7,'com.geinimi.custom.GoogleKeyboard'),(28,6,'wbs.netsentry.ui.ChartInterfaceStats'),(29,7,'com.geinimi.AdServiceReceiver'),(30,6,'wbs.netsentry.ui.InterfaceStatsEditor'),(31,6,'wbs.netsentry.ui.ApplicationPreferences'),(32,6,'com.geinimi.custom.Ad00000005_2'),(33,6,'com.geinimi.AdService'),(34,6,'wbs.netsentry.backend.Resetter'),(35,6,'wbs.netsentry.backend.Updater'),(36,6,'wbs.netsentry.backend.scheduler.CronScheduler'),(37,6,'wbs.netsentry.backend.Bootstrapper'),(38,6,'com.geinimi.AdServiceReceiver'),(39,6,'wbs.netsentry.backend.InterfaceStatsProvider'),(40,1,'com.geinimi.c.b'),(41,1,'com.geinimi.c.e'),(42,1,'com.geinimi.AdActivity'),(43,1,'com.geinimi.ads.c'),(44,1,'com.xmobileapp.taskmanager.TaskManager$LoadFinishReceiver'),(45,2,'com.geinimi.ads.c'),(46,3,'com.xlabtech.MonsterTruckRally.rally.q'),(47,2,'com.geinimi.c.b'),(48,3,'com.xlabtech.MonsterTruckRally.rally.h'),(49,2,'com.geinimi.AdService'),(50,3,'com.xlabtech.MonsterTruckRally.rally.e.b'),(51,3,'com.xlabtech.MonsterTruckRally.rally.e'),(52,2,'com.geinimi.c.j'),(53,5,'com.geinimi.AdActivity'),(54,5,'com.geinimi.c.b'),(55,5,'com.geinimi.AdService'),(56,5,'com.geinimi.ads.c'),(57,4,'com.geinimi.c.b'),(58,2,'com.geinimi.AdActivity'),(59,7,'com.geinimi.AdActivity'),(60,4,'com.geinimi.c.j'),(61,7,'com.geinimi.c.j'),(62,5,'com.geinimi.c.j'),(63,4,'com.geinimi.AdActivity'),(64,7,'com.geinimi.c.b'),(65,4,'com.geinimi.ads.c'),(66,5,'com.dseffects.JewelsMania.JewelsMania$1'),(67,7,'com.geinimi.AdService'),(68,7,'com.geinimi.ads.c'),(69,4,'com.geinimi.AdService'),(70,6,'wbs.netsentry.ui.InterfaceStatsEditor$2'),(71,6,'com.geinimi.c.b'),(72,6,'com.geinimi.AdActivity'),(73,6,'wbs.netsentry.backend.Bootstrapper$1'),(74,6,'com.geinimi.c.e'),(75,6,'com.geinimi.ads.c');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'ACTIVITY_PARAM_URL_KEY'),(2,3,'cpid'),(3,4,'cpid'),(4,3,'ptid'),(5,4,'ptid'),(6,3,'ACTIVITY_PARAM_KEY'),(7,14,'ACTIVITY_PARAM_KEY'),(8,14,'cpid'),(9,14,'ptid'),(10,14,'salesid'),(11,6,'selectIndex'),(12,7,'ACTIVITY_PARAM_KEY'),(13,16,'ACTIVITY_PARAM_KEY'),(14,16,'salesid'),(15,19,'salesid'),(16,16,'cpid'),(17,19,'cpid'),(18,20,'pdus'),(19,14,'did'),(20,8,'salesid'),(21,7,'salesid'),(22,8,'ptid'),(23,7,'ptid'),(24,13,'gridWidth'),(25,26,'cpid'),(26,8,'did'),(27,16,'did'),(28,27,'cpid'),(29,7,'did'),(30,19,'did'),(31,26,'ACTIVITY_PARAM_KEY'),(32,13,'cell (.*),(.*)'),(33,8,'cpid'),(34,7,'cpid'),(35,16,'ptid'),(36,19,'ptid'),(37,13,'rootY'),(38,13,'focusX'),(39,13,'clickCount'),(40,26,'ptid'),(41,13,'accumTime'),(42,27,'ptid'),(43,15,'ACTIVITY_PARAM_KEY'),(44,26,'salesid'),(45,13,'rootX'),(46,27,'salesid'),(47,18,'ptid'),(48,15,'ptid'),(49,10,'ptid'),(50,13,'gameSkill'),(51,18,'cpid'),(52,15,'cpid'),(53,10,'cpid'),(54,26,'did'),(55,13,'focusY'),(56,27,'did'),(57,13,'gridHeight'),(58,13,'tickCount'),(59,18,'did'),(60,15,'did'),(61,10,'did'),(62,13,'tickInterval'),(63,13,'gameState'),(64,18,'salesid'),(65,15,'salesid'),(66,10,'salesid'),(67,13,'isRunning'),(68,33,'ptid'),(69,32,'ptid'),(70,28,'deviceName'),(71,32,'ACTIVITY_PARAM_URL_KEY'),(72,32,'ACTIVITY_PARAM_KEY'),(73,36,'cron.expression'),(74,33,'cpid'),(75,32,'cpid'),(76,36,'target.intent');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,15,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,15,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,15,NULL),(18,18,'s',0,15,NULL),(19,19,'s',0,15,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,15,NULL),(28,28,'a',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,15,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'p',0,NULL,NULL),(40,44,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,3),(4,4,5),(5,5,3),(6,6,4),(7,7,4),(8,8,4),(9,9,4),(10,10,8),(11,11,20),(12,11,14),(13,12,8),(14,13,14),(15,14,8),(16,15,17),(17,16,8),(18,17,17),(19,18,8),(20,19,16),(21,20,19),(22,21,23),(23,22,8),(24,23,9),(25,24,19),(26,25,8),(27,26,19),(28,27,18),(29,28,19),(30,29,7),(31,30,18),(32,31,26),(33,32,19),(34,33,7),(35,34,18),(36,35,27),(37,36,16),(38,37,8),(39,38,19),(40,39,8),(41,40,15),(42,41,27),(43,42,29),(44,43,18),(45,44,27),(46,45,12),(47,46,18),(48,47,27),(49,49,19),(50,48,27),(51,50,18),(52,51,19),(53,52,19),(54,53,27),(55,54,18),(56,55,27),(57,56,15),(58,57,26),(59,58,18),(60,59,27),(61,60,27),(62,61,21),(63,62,18),(64,63,35),(65,64,24),(66,65,30),(67,66,34),(68,67,33),(69,68,32),(70,69,37),(71,69,24),(72,70,32),(73,71,37),(74,71,24),(75,72,39),(76,73,22),(77,74,38),(78,75,30),(79,76,30),(80,77,35),(81,78,30),(82,79,24),(83,79,37),(84,80,33),(85,81,33),(86,82,39),(87,83,36),(88,84,39),(89,85,33),(90,86,35),(91,87,33),(92,88,35),(93,89,30),(94,89,24),(95,90,33),(96,91,24),(97,92,30),(98,93,24),(99,94,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,40,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(2,41,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(3,42,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(4,5,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(5,42,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(6,40,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(7,40,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(8,43,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(9,4,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(10,45,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(11,46,'<com.xlabtech.MonsterTruckRally.rally.q: void run()>',15,'s',NULL),(12,47,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(13,48,'<com.xlabtech.MonsterTruckRally.rally.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(14,49,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(15,50,'<com.xlabtech.MonsterTruckRally.rally.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(16,47,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(17,51,'<com.xlabtech.MonsterTruckRally.rally.e: void onDestroy()>',13,'s',NULL),(18,52,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(19,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(20,54,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(21,23,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(22,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(23,9,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(24,55,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(25,47,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(26,56,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(27,57,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(28,54,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(29,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(30,57,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(31,59,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(32,54,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(33,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(34,60,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(35,61,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(36,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(37,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(38,62,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(39,47,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(40,63,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(41,64,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(42,29,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(43,65,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(44,64,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(45,66,'<com.dseffects.JewelsMania.JewelsMania$1: void onClick(android.view.View)>',6,'a',NULL),(46,57,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(47,64,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(48,64,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(49,54,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(50,57,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(51,54,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(52,54,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(53,67,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(54,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(55,68,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(56,63,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(57,59,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(58,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(59,64,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(60,64,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(61,21,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(62,69,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(63,35,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(64,24,'<wbs.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(65,70,'<wbs.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(66,34,'<wbs.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(67,71,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(68,72,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(69,73,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(70,72,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(71,73,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL),(72,39,'<wbs.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(73,72,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(74,38,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(75,30,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(76,30,'<wbs.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(77,35,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(78,30,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(79,37,'<wbs.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(80,74,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(81,71,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(82,39,'<wbs.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(83,36,'<wbs.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(84,39,'<wbs.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(85,71,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(86,35,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(87,75,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(88,35,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(89,34,'<wbs.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(90,33,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(91,24,'<wbs.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(92,30,'<wbs.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(93,24,'<wbs.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(94,35,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,2,14),(3,12,13),(4,14,14),(5,21,13),(6,22,13),(7,24,14),(8,25,14),(9,26,13),(10,28,14),(11,30,5),(12,36,8),(13,42,11),(14,43,13),(15,44,14),(16,45,10),(17,47,9),(18,48,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/geinimi/AdService'),(2,4,'com/geinimi/AdService'),(3,5,'(.*)'),(4,6,'com/geinimi/AdService'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,10,'(.*)'),(9,11,'(.*)'),(10,13,'(.*)'),(11,15,'(.*)'),(12,16,'(.*)'),(13,17,'(.*)'),(14,18,'(.*)'),(15,19,'(.*)'),(16,20,'(.*)'),(17,23,'(.*)'),(18,27,'(.*)'),(19,29,'(.*)'),(20,31,'(.*)'),(21,32,'(.*)'),(22,33,'(.*)'),(23,34,'(.*)'),(24,35,'(.*)'),(25,37,'wbs/netsentry/ui/ChartInterfaceStats'),(26,38,'com/geinimi/AdService'),(27,39,'(.*)'),(28,40,'com/geinimi/AdService'),(29,41,'com/geinimi/AdService'),(30,46,'com/geinimi/AdService');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,30,19),(2,36,30),(3,45,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'android.intent.extra.shortcut.NAME'),(5,2,'android.intent.extra.shortcut.ICON'),(6,2,'android.intent.extra.shortcut.INTENT'),(7,12,'android.intent.extra.shortcut.NAME'),(8,12,'android.intent.extra.shortcut.ICON'),(9,12,'android.intent.extra.shortcut.INTENT'),(10,14,'android.intent.extra.shortcut.NAME'),(11,14,'android.intent.extra.shortcut.ICON'),(12,14,'android.intent.extra.shortcut.INTENT'),(13,21,'android.intent.extra.shortcut.NAME'),(14,22,'android.intent.extra.shortcut.NAME'),(15,21,'android.intent.extra.shortcut.ICON'),(16,22,'android.intent.extra.shortcut.ICON'),(17,21,'android.intent.extra.shortcut.INTENT'),(18,22,'android.intent.extra.shortcut.INTENT'),(19,24,'android.intent.extra.shortcut.NAME'),(20,25,'android.intent.extra.shortcut.NAME'),(21,24,'android.intent.extra.shortcut.ICON'),(22,25,'android.intent.extra.shortcut.ICON'),(23,24,'android.intent.extra.shortcut.INTENT'),(24,25,'android.intent.extra.shortcut.INTENT'),(25,26,'android.intent.extra.shortcut.NAME'),(26,26,'android.intent.extra.shortcut.ICON'),(27,26,'android.intent.extra.shortcut.INTENT'),(28,28,'android.intent.extra.shortcut.NAME'),(29,28,'android.intent.extra.shortcut.ICON'),(30,28,'android.intent.extra.shortcut.INTENT'),(31,37,'deviceName'),(32,43,'android.intent.extra.shortcut.NAME'),(33,43,'android.intent.extra.shortcut.ICON'),(34,43,'android.intent.extra.shortcut.INTENT'),(35,44,'android.intent.extra.shortcut.NAME'),(36,44,'android.intent.extra.shortcut.ICON'),(37,44,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,3),(4,6,2),(5,7,3),(6,11,2),(7,12,2),(8,13,2),(9,14,3),(10,15,4),(11,16,2),(12,17,3),(13,18,3),(14,19,5),(15,21,2),(16,22,6),(17,23,7),(18,24,3),(19,25,8),(20,25,5),(21,26,9),(22,27,10),(23,28,11),(24,29,12),(25,30,3),(26,31,3),(27,32,15),(28,33,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,8,3),(10,9,1),(11,10,1),(12,11,1),(13,12,1),(14,13,1),(15,14,1),(16,16,1),(17,17,1),(18,18,1),(19,20,1),(20,19,2),(21,21,1),(22,22,2),(23,23,2),(24,24,1),(25,25,2),(26,26,2),(27,31,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,25,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,27,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,29,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'wbs.logo'),(2,4,'wbs.logo'),(3,5,'wbs.logo'),(4,6,'wbs.logo'),(5,7,'com.xlabtech.MonsterTruckRally'),(6,8,'com.xlabtech.MonsterTruckRally'),(7,9,'com.wbs'),(8,10,'(.*)'),(9,11,'com.xlabtech.MonsterTruckRally'),(10,13,'com.dseffects.JewelsMania'),(11,15,'com.dseffects.JewelsMania'),(12,16,'com.wbs'),(13,17,'com.dseffects.JewelsMania'),(14,18,'com.wbs'),(15,19,'com.sgg.sp'),(16,20,'com.wbs'),(17,23,'com.dseffects.JewelsMania'),(18,27,'com.ttmobilegame.android.computerlab'),(19,29,'com.sgg.sp'),(20,31,'com.sgg.sp'),(21,32,'com.ttmobilegame.android.computerlab'),(22,33,'com.sgg.sp'),(23,34,'com.ttmobilegame.android.computerlab'),(24,35,'com.ttmobilegame.android.computerlab'),(25,37,'wbs.netsentry'),(26,38,'wbs.netsentry'),(27,39,'wbs.netsentry'),(28,40,'wbs.netsentry'),(29,41,'wbs.netsentry'),(30,46,'wbs.netsentry');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,7,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,14,0),(12,15,0),(13,16,0),(14,21,0),(15,20,0),(16,22,0),(17,23,0),(18,20,0),(19,24,0),(20,25,0),(21,26,0),(22,24,0),(23,28,0),(24,29,0),(25,30,0),(26,31,0),(27,34,0),(28,35,0),(29,36,0),(30,37,0),(31,38,0),(32,40,0),(33,5,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,9,0,0),(7,11,0,0),(8,13,0,0),(9,14,0,0),(10,15,0,0),(11,17,0,0),(12,18,1,0),(13,19,0,0),(14,18,1,0),(15,21,0,0),(16,23,0,0),(17,24,0,0),(18,29,0,0),(19,31,0,0),(20,33,0,0),(21,34,1,0),(22,35,1,0),(23,36,0,0),(24,34,1,0),(25,35,1,0),(26,38,1,0),(27,40,0,0),(28,38,1,0),(29,42,0,0),(30,45,1,0),(31,53,0,0),(32,56,0,0),(33,57,0,0),(34,61,0,0),(35,62,0,0),(36,64,1,0),(37,65,0,0),(38,68,0,0),(39,70,0,0),(40,73,0,0),(41,74,0,0),(42,75,1,0),(43,80,1,0),(44,80,1,0),(45,89,1,0),(46,90,0,0),(47,91,1,0),(48,93,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'wbs.netsentry');
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.CALL_PHONE'),(15,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(22,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(23,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(16,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,39,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(19,NULL,NULL,'http://www.dseffects.com/android.php',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(25,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(28,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(29,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(30,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(31,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(32,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(33,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(34,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(35,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(36,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(37,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(38,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(39,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(40,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(41,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(42,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,1),(2,7,2),(3,8,3),(4,10,4),(5,12,5),(6,16,6),(7,20,7),(8,25,8),(9,26,9),(10,27,10),(11,28,11),(12,30,12),(13,32,13),(14,37,14),(15,39,15),(16,43,16),(17,44,17),(18,46,18),(19,47,20),(20,49,21),(21,48,22),(22,50,23),(23,52,24),(24,54,25),(25,55,26),(26,59,27),(27,60,28),(28,63,29),(29,69,31),(30,71,32),(31,72,33),(32,77,34),(33,79,35),(34,81,36),(35,85,37),(36,86,38),(37,87,39),(38,88,40),(39,94,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,8),(27,2,9),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,2,18),(36,3,1),(37,3,2),(38,3,3),(39,4,1),(40,3,4),(41,4,2),(42,4,3),(43,3,5),(44,4,4),(45,3,6),(46,4,5),(47,3,7),(48,5,1),(49,3,8),(50,5,2),(51,4,6),(52,4,7),(53,3,9),(54,5,3),(55,4,8),(56,3,10),(57,5,4),(58,4,9),(59,5,5),(60,3,11),(61,4,11),(62,3,12),(63,5,6),(64,4,12),(65,3,13),(66,5,7),(67,4,13),(68,3,14),(69,5,8),(70,4,14),(71,3,15),(72,5,9),(73,4,15),(74,3,17),(75,5,11),(76,4,17),(77,3,16),(78,5,12),(79,4,16),(80,3,19),(81,5,13),(82,4,18),(83,3,18),(84,5,14),(85,3,21),(86,5,15),(87,6,1),(88,5,17),(89,6,2),(90,3,20),(91,5,16),(92,6,4),(93,7,1),(94,5,18),(95,6,5),(96,7,2),(97,6,7),(98,7,3),(99,7,4),(100,6,8),(101,7,5),(102,6,9),(103,6,11),(104,7,6),(105,6,12),(106,7,7),(107,6,15),(108,7,8),(109,6,17),(110,7,9),(111,7,11),(112,6,16),(113,7,12),(114,6,18),(115,6,22),(116,7,13),(117,7,14),(118,7,15),(119,7,17),(120,7,16),(121,7,18),(122,7,23);
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

-- Dump completed on 2015-10-09  0:39:28
