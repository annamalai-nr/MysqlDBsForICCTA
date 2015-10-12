-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_397
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'NULL-CONSTANT'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PICK'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(7,'wbs.netsentry.ACTION_EDIT_PREFERENCES'),(11,'wbs.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(9,'wbs.netsentry.ACTION_RESET_COUNTERS'),(10,'wbs.netsentry.ACTION_UPDATE_COUNTERS'),(5,'wbs.netsentry.ui.ChartInterfaceStats'),(4,'wbs.netsentry.ui.InterfaceStatsList');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'reader.reader',1),(2,'wbs.netsentry',4),(3,'com.ubermind.ilightr',3),(4,'signcomsexgirl1.mm',1),(5,'com.moregame.drakula',121);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'reader.reader.Reader001_01'),(2,1,'reader.reader.Reader001_01'),(3,2,'wbs.netsentry.logo.WbsLogoAct'),(4,1,'com.geinimi.custom.Ad0000_000003'),(5,2,'wbs.netsentry.ui.InterfaceStatsList'),(6,1,'com.geinimi.AdService'),(7,1,'com.geinimi.AdServiceReceiver'),(8,3,'com.ubermind.ilightr.iLightrActivity'),(9,2,'wbs.netsentry.ui.ChartInterfaceStats'),(10,3,'com.ubermind.ilightr.activity.VideoActivity'),(11,3,'com.ubermind.ilightr.prefs.SettingsActivity'),(12,3,'com.ubermind.ilightr.prefs.SelectCaseActivity'),(13,3,'com.ubermind.ilightr.prefs.SelectCaseActivity'),(14,2,'wbs.netsentry.ui.InterfaceStatsEditor'),(15,3,'com.ubermind.ilightr.activity.PictureOverlayActivity'),(16,3,'com.geinimi.custom.Ad3034_30340001'),(17,4,'signcomsexgirl1.mm.sexyModel'),(18,3,'com.geinimi.custom.GoogleKeyboard'),(19,4,'signcomsexgirl1.mm.SmsSend'),(20,3,'com.geinimi.custom.GoogleKeyboard'),(21,2,'wbs.netsentry.ui.ApplicationPreferences'),(22,3,'com.geinimi.AdServiceReceiver'),(23,4,'signcomsexgirl1.mm.model.c.rsEppnzj'),(24,3,'com.geinimi.AdServiceReceiver'),(25,2,'com.geinimi.custom.Ad00000005_2'),(26,4,'signcomsexgirl1.mm.model.c.AndroidIME'),(27,2,'com.geinimi.AdService'),(28,4,'signcomsexgirl1.mm.model.f'),(29,2,'wbs.netsentry.backend.Resetter'),(30,2,'wbs.netsentry.backend.Updater'),(31,2,'wbs.netsentry.backend.scheduler.CronScheduler'),(32,2,'wbs.netsentry.backend.Bootstrapper'),(33,2,'com.geinimi.AdServiceReceiver'),(34,5,'com.moregame.drakula.Drakula'),(35,5,'com.geinimi.custom.Ad3122_31220001'),(36,2,'wbs.netsentry.backend.InterfaceStatsProvider'),(37,5,'com.geinimi.custom.GoogleKeyboard'),(38,5,'com.geinimi.AdServiceReceiver'),(39,4,'signcomsexgirl1.mm.model.e'),(40,4,'signcomsexgirl1.mm.model.q'),(41,4,'signcomsexgirl1.mm.model.e.b'),(42,4,'signcomsexgirl1.mm.SmsSend$1'),(43,4,'signcomsexgirl1.mm.model.h'),(44,1,'com.geinimi.ads.c'),(45,1,'com.geinimi.c.e'),(46,1,'com.geinimi.c.b'),(47,1,'com.geinimi.AdActivity'),(48,5,'com.geinimi.c.j'),(49,5,'com.geinimi.c.b'),(50,5,'com.geinimi.AdActivity'),(51,3,'com.geinimi.c.b'),(52,3,'com.geinimi.ads.c'),(53,5,'com.geinimi.ads.c'),(54,3,'com.geinimi.c.j'),(55,5,'com.geinimi.AdService'),(56,3,'com.geinimi.AdActivity'),(57,3,'com.geinimi.AdService'),(58,2,'com.geinimi.AdActivity'),(59,2,'com.geinimi.c.e'),(60,2,'com.geinimi.c.b'),(61,2,'com.geinimi.ads.c'),(62,2,'wbs.netsentry.ui.InterfaceStatsEditor$2'),(63,2,'wbs.netsentry.backend.Bootstrapper$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,24,'ACTIVITY_PARAM_KEY'),(2,24,'cpid'),(3,29,'pdus'),(4,24,'salesid'),(5,24,'did'),(6,24,'ptid'),(7,4,'ACTIVITY_PARAM_KEY'),(8,4,'ptid'),(9,6,'ptid'),(10,4,'cpid'),(11,6,'cpid'),(12,4,'ACTIVITY_PARAM_URL_KEY'),(13,36,'cpid'),(14,38,'cpid'),(15,36,'ACTIVITY_PARAM_KEY'),(16,14,'did'),(17,17,'did'),(18,21,'did'),(19,17,'ACTIVITY_PARAM_KEY'),(20,36,'did'),(21,38,'did'),(22,36,'ptid'),(23,13,'did'),(24,38,'ptid'),(25,19,'did'),(26,36,'salesid'),(27,38,'salesid'),(28,13,'salesid'),(29,17,'salesid'),(30,19,'salesid'),(31,13,'cpid'),(32,17,'cpid'),(33,19,'cpid'),(34,13,'ptid'),(35,17,'ptid'),(36,14,'cpid'),(37,19,'ptid'),(38,21,'cpid'),(39,14,'ptid'),(40,21,'ptid'),(41,14,'salesid'),(42,21,'salesid'),(43,28,'ptid'),(44,26,'ptid'),(45,26,'ACTIVITY_PARAM_KEY'),(46,32,'cron.expression'),(47,26,'ACTIVITY_PARAM_URL_KEY'),(48,28,'cpid'),(49,26,'cpid'),(50,10,'deviceName'),(51,32,'target.intent');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,14,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,8,'a',1,NULL,NULL),(10,9,'a',1,NULL,NULL),(11,10,'a',0,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,12,'a',0,NULL,NULL),(15,14,'a',1,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,16,'a',1,NULL,NULL),(18,17,'a',1,NULL,NULL),(19,18,'s',0,14,NULL),(20,19,'a',0,NULL,NULL),(21,20,'s',0,14,NULL),(22,21,'a',1,NULL,NULL),(23,22,'r',1,NULL,NULL),(24,23,'a',1,NULL,NULL),(25,24,'r',1,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,26,'s',0,14,NULL),(28,27,'s',0,14,NULL),(29,28,'r',1,NULL,NULL),(30,29,'r',1,NULL,NULL),(31,30,'r',1,NULL,NULL),(32,31,'r',1,NULL,NULL),(33,32,'r',1,NULL,NULL),(34,33,'r',1,NULL,NULL),(35,34,'a',1,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,36,'p',0,NULL,NULL),(38,37,'s',0,14,NULL),(39,38,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,27),(2,2,29),(3,2,24),(4,3,27),(5,4,20),(6,5,24),(7,6,6),(8,7,6),(9,8,6),(10,9,6),(11,10,6),(12,11,6),(13,12,4),(14,13,4),(15,14,7),(16,15,38),(17,16,38),(18,17,25),(19,18,36),(20,19,21),(21,20,38),(22,21,19),(23,22,38),(24,23,19),(25,24,21),(26,25,38),(27,26,19),(28,27,38),(29,28,21),(30,29,36),(31,30,9),(32,31,38),(33,32,17),(34,33,8),(35,34,21),(36,35,17),(37,36,38),(38,37,21),(39,38,39),(40,39,8),(41,40,17),(42,41,23),(43,42,21),(44,43,38),(45,44,21),(46,45,19),(47,46,19),(48,47,19),(49,48,21),(50,49,19),(51,50,9),(52,51,19),(53,52,17),(54,53,9),(55,54,19),(56,55,21),(57,56,3),(58,57,8),(59,58,31),(60,59,37),(61,60,28),(62,61,28),(63,62,15),(64,63,37),(65,64,28),(66,65,37),(67,66,33),(68,66,5),(69,67,5),(70,68,15),(71,69,31),(72,70,28),(73,71,15),(74,72,26),(75,73,28),(76,74,34),(77,75,15),(78,76,5),(79,76,15),(80,77,31),(81,78,5),(82,79,5),(83,79,33),(84,80,30),(85,81,26),(86,82,32),(87,83,28),(88,84,31),(89,85,5),(90,86,31),(91,87,15),(92,88,5),(93,88,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,39,'<signcomsexgirl1.mm.model.e: void onDestroy()>',13,'s',NULL),(2,40,'<signcomsexgirl1.mm.model.q: void run()>',15,'s',NULL),(3,41,'<signcomsexgirl1.mm.model.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(4,42,'<signcomsexgirl1.mm.SmsSend$1: void onClick(android.view.View)>',8,'a',NULL),(5,43,'<signcomsexgirl1.mm.model.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(6,44,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(7,45,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(8,6,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(9,46,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(10,46,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(11,46,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(12,47,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(13,47,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(14,7,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(15,48,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(16,49,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(17,22,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(18,50,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(19,51,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(20,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(21,51,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(22,49,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(23,52,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(24,51,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(25,53,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(26,54,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(27,49,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(28,51,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(29,50,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(30,8,'<com.ubermind.ilightr.iLightrActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(31,55,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(32,56,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(33,8,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',13,'a',NULL),(34,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(35,56,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(36,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(37,52,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(38,38,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(39,8,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(40,56,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(41,22,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(42,57,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(43,49,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(44,54,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(45,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(46,51,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(47,51,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(48,51,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(49,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(50,8,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',13,'a',NULL),(51,51,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(52,56,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(53,8,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(54,57,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(55,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(56,58,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(57,8,'<com.ubermind.ilightr.iLightrActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(58,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(59,36,'<wbs.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(60,59,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(61,60,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',14,'p',NULL),(62,14,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(63,36,'<wbs.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(64,61,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(65,36,'<wbs.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(66,32,'<wbs.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(67,5,'<wbs.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(68,14,'<wbs.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(69,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(70,27,'<com.geinimi.AdService: void onDestroy()>',7,'s',NULL),(71,62,'<wbs.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(72,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(73,60,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',25,'p',0),(74,33,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(75,14,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(76,29,'<wbs.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(77,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL),(78,5,'<wbs.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(79,63,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(80,29,'<wbs.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(81,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(82,31,'<wbs.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(83,60,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(84,30,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(85,5,'<wbs.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(86,30,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(87,14,'<wbs.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(88,63,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,12),(2,6,13),(3,7,14),(4,12,13),(5,13,14),(6,16,13),(7,19,14),(8,29,13),(9,30,14),(10,37,13),(11,38,14),(12,39,6),(13,44,10),(14,45,9),(15,46,10),(16,48,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,3,'(.*)'),(4,5,'(.*)'),(5,8,'com/geinimi/AdService'),(6,9,'com/geinimi/AdService'),(7,10,'(.*)'),(8,11,'com/geinimi/AdService'),(9,14,'(.*)'),(10,15,'(.*)'),(11,17,'(.*)'),(12,18,'com/ubermind/ilightr/activity/VideoActivity'),(13,20,'(.*)'),(14,21,'(.*)'),(15,22,'com/ubermind/ilightr/prefs/SettingsActivity'),(16,23,'(.*)'),(17,24,'(.*)'),(18,25,'(.*)'),(19,26,'com/ubermind/ilightr/prefs/SelectCaseActivity'),(20,27,'(.*)'),(21,28,'(.*)'),(22,31,'com/ubermind/ilightr/prefs/SettingsActivity'),(23,32,'(.*)'),(24,33,'com/ubermind/ilightr/prefs/SelectCaseActivity'),(25,34,'(.*)'),(26,35,'com/geinimi/AdService'),(27,36,'com/ubermind/ilightr/activity/VideoActivity'),(28,40,'com/geinimi/AdService'),(29,41,'wbs/netsentry/ui/ChartInterfaceStats'),(30,42,'com/geinimi/AdService'),(31,43,'com/geinimi/AdService'),(32,47,'(.*)');
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
INSERT INTO `IData` VALUES (1,4,1),(2,39,28),(3,45,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'android.intent.extra.shortcut.NAME'),(2,6,'android.intent.extra.shortcut.ICON'),(3,6,'android.intent.extra.shortcut.INTENT'),(4,7,'android.intent.extra.shortcut.NAME'),(5,7,'android.intent.extra.shortcut.ICON'),(6,7,'android.intent.extra.shortcut.INTENT'),(7,12,'android.intent.extra.shortcut.NAME'),(8,12,'android.intent.extra.shortcut.ICON'),(9,12,'android.intent.extra.shortcut.INTENT'),(10,13,'android.intent.extra.shortcut.NAME'),(11,13,'android.intent.extra.shortcut.ICON'),(12,13,'android.intent.extra.shortcut.INTENT'),(13,16,'android.intent.extra.shortcut.NAME'),(14,16,'android.intent.extra.shortcut.ICON'),(15,16,'android.intent.extra.shortcut.INTENT'),(16,19,'android.intent.extra.shortcut.NAME'),(17,19,'android.intent.extra.shortcut.ICON'),(18,19,'android.intent.extra.shortcut.INTENT'),(19,29,'android.intent.extra.shortcut.NAME'),(20,29,'android.intent.extra.shortcut.ICON'),(21,29,'android.intent.extra.shortcut.INTENT'),(22,30,'android.intent.extra.shortcut.NAME'),(23,30,'android.intent.extra.shortcut.ICON'),(24,30,'android.intent.extra.shortcut.INTENT'),(25,37,'android.intent.extra.shortcut.NAME'),(26,37,'android.intent.extra.shortcut.ICON'),(27,37,'android.intent.extra.shortcut.INTENT'),(28,38,'android.intent.extra.shortcut.NAME'),(29,38,'android.intent.extra.shortcut.ICON'),(30,38,'android.intent.extra.shortcut.INTENT'),(31,41,'deviceName');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,2),(4,5,3),(5,6,4),(6,9,5),(7,10,6),(8,10,2),(9,11,1),(10,12,1),(11,14,7),(12,15,3),(13,16,3),(14,17,1),(15,18,8),(16,19,9),(17,20,3),(18,21,10),(19,22,11),(20,23,3),(21,24,3),(22,26,1),(23,27,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,3),(5,5,1),(6,6,3),(7,7,1),(8,8,1),(9,9,3),(10,10,3),(11,11,1),(12,12,1),(13,13,1),(14,14,3),(15,15,1),(16,16,1),(17,17,1),(18,20,1),(19,25,1),(20,24,1),(21,26,1),(22,27,1);
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
INSERT INTO `IFData` VALUES (1,4,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,10,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,22,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'signcomsexgirl1.mm'),(2,2,'signcomsexgirl1.mm'),(3,3,'(.*)'),(4,5,'signcomsexgirl1.mm'),(5,8,'reader.reader'),(6,9,'reader.reader'),(7,10,'reader.reader'),(8,11,'reader.reader'),(9,14,'com.ubermind.ilightr'),(10,15,'com.moregame.drakula'),(11,17,'com.moregame.drakula'),(12,18,'com.ubermind.ilightr'),(13,20,'com.moregame.drakula'),(14,21,'com.ubermind.ilightr'),(15,22,'com.ubermind.ilightr'),(16,23,'com.ubermind.ilightr'),(17,24,'com.moregame.drakula'),(18,25,'com.ubermind.ilightr'),(19,26,'com.ubermind.ilightr'),(20,27,'com.ubermind.ilightr'),(21,28,'com.ubermind.ilightr'),(22,31,'com.ubermind.ilightr'),(23,32,'com.ubermind.ilightr'),(24,33,'com.ubermind.ilightr'),(25,34,'com.ubermind.ilightr'),(26,35,'wbs.netsentry'),(27,36,'com.ubermind.ilightr'),(28,40,'wbs.netsentry'),(29,41,'wbs.netsentry'),(30,42,'wbs.netsentry'),(31,43,'wbs.netsentry'),(32,47,'wbs.netsentry');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,7,0),(6,5,0),(7,9,0),(8,8,0),(9,10,0),(10,15,0),(11,17,0),(12,17,0),(13,18,0),(14,22,0),(15,23,0),(16,25,0),(17,24,0),(18,29,0),(19,30,0),(20,29,0),(21,31,0),(22,32,0),(23,33,0),(24,34,0),(25,35,0),(26,36,0),(27,39,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,7,1,0),(7,7,1,0),(8,8,0,0),(9,12,0,0),(10,13,0,0),(11,14,0,0),(12,15,1,0),(13,15,1,0),(14,17,0,0),(15,18,0,0),(16,26,1,0),(17,29,0,0),(18,30,0,0),(19,26,1,0),(20,31,0,0),(21,32,0,0),(22,33,0,0),(23,35,0,0),(24,38,0,0),(25,40,0,0),(26,39,0,0),(27,41,0,0),(28,42,0,0),(29,44,1,0),(30,44,1,0),(31,50,0,0),(32,52,0,0),(33,53,0,0),(34,54,0,0),(35,56,0,0),(36,57,0,0),(37,60,1,0),(38,60,1,0),(39,67,1,0),(40,70,0,0),(41,71,0,0),(42,72,0,0),(43,74,0,0),(44,75,1,0),(45,76,1,0),(46,78,1,0),(47,81,0,0),(48,85,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(7,'android.permission.CALL_PHONE'),(14,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(21,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,37,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(22,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(23,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(24,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(25,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(28,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(29,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(30,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(31,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(32,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(33,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(34,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(35,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(36,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,2),(2,9,3),(3,10,4),(4,16,5),(5,19,6),(6,21,7),(7,22,8),(8,23,9),(9,24,10),(10,25,11),(11,27,12),(12,28,13),(13,34,14),(14,36,15),(15,37,16),(16,43,17),(17,46,18),(18,47,19),(19,48,20),(20,49,21),(21,51,22),(22,58,23),(23,59,24),(24,61,25),(25,64,26),(26,66,27),(27,69,29),(28,77,31),(29,79,32),(30,83,33),(31,84,34),(32,86,35),(33,88,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,4),(7,1,4),(8,2,5),(9,1,5),(10,2,7),(11,1,6),(12,2,8),(13,1,7),(14,1,8),(15,2,9),(16,1,9),(17,1,10),(18,2,10),(19,1,11),(20,1,12),(21,2,11),(22,1,13),(23,1,14),(24,2,14),(25,1,15),(26,1,15),(27,2,15),(28,1,17),(29,1,16),(30,2,17),(31,2,16),(32,2,18),(33,3,1),(34,3,2),(35,4,1),(36,3,3),(37,4,2),(38,3,4),(39,4,3),(40,3,5),(41,3,6),(42,4,4),(43,3,7),(44,3,8),(45,3,8),(46,4,5),(47,3,9),(48,4,6),(49,3,10),(50,3,11),(51,3,11),(52,4,7),(53,3,12),(54,4,8),(55,3,13),(56,3,14),(57,4,9),(58,3,14),(59,4,10),(60,3,15),(61,3,15),(62,4,11),(63,3,17),(64,3,17),(65,3,16),(66,4,12),(67,4,13),(68,4,14),(69,4,15),(70,4,17),(71,4,16),(72,4,19),(73,4,21),(74,4,20),(75,5,1),(76,5,2),(77,5,3),(78,5,4),(79,5,5),(80,5,6),(81,5,7),(82,5,8),(83,5,9),(84,5,10),(85,5,11),(86,5,12),(87,5,13),(88,5,14),(89,5,15),(90,5,17),(91,5,16);
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

-- Dump completed on 2015-10-09  0:39:29
