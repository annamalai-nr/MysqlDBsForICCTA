-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_398
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(17,'NULL-CONSTANT'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.ACTION_BOOT_COMPLETED'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CALL'),(8,'android.intent.action.EDIT'),(2,'android.intent.action.MAIN'),(4,'android.intent.action.VIEW'),(15,'android.provider.Telephony.SMS_RECEIVED'),(11,'cmp.netsentry.ACTION_EDIT_PREFERENCES'),(14,'cmp.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(12,'cmp.netsentry.ACTION_RESET_COUNTERS'),(13,'cmp.netsentry.ACTION_UPDATE_COUNTERS'),(6,'cmp.netsentry.ui.ChartInterfaceStats'),(5,'cmp.netsentry.ui.InterfaceStatsList'),(9,'com.aac.cachemate.CLICK'),(18,'com.xmobileapp.taskmanager.ACTION_LOADFINISH'),(1,'com.xmobileapp.taskmanager.TaskManager');
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
INSERT INTO `Applications` VALUES (1,'wbs.logo',1),(2,'com.wbs',1),(3,'com.socialnmobile.flashlight',22),(4,'com.aac.cachemate',71),(5,'cmp.netsentry',4),(6,'wbs.LocalService',1),(7,'gx.llk.free',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'wbs.logo.WbsLogoAct'),(2,1,'com.xmobileapp.taskmanager.TaskManager'),(3,1,'com.geinimi.custom.Ad0000_000004'),(4,1,'com.geinimi.AdService'),(5,1,'com.geinimi.AdServiceReceiver'),(6,2,'com.wbs.MagicVoiceActivity'),(7,2,'com.geinimi.custom.Ad0000_00000006'),(8,2,'com.geinimi.custom.GoogleKeyboard'),(9,2,'com.geinimi.AdServiceReceiver'),(10,3,'com.socialnmobile.flashlight.Flashlight'),(11,3,'com.geinimi.custom.Ad3060_30600001'),(12,3,'com.geinimi.custom.GoogleKeyboard'),(13,3,'com.geinimi.AdServiceReceiver'),(14,4,'com.aac.cachemate.CacheMate'),(15,4,'com.aac.cachemate.Settings'),(16,4,'com.aac.cachemate.AutoClearService'),(17,5,'cmp.netsentry.ui.InterfaceStatsList'),(18,4,'com.aac.cachemate.AutoClearOnBoot'),(19,6,'wbs.LocalService.WbsLogoAct'),(20,4,'com.geinimi.custom.Ad3062_30620001'),(21,7,'gx.llk.free.main'),(22,6,'wbs.LocalService.LocalService'),(23,5,'cmp.netsentry.ui.ChartInterfaceStats'),(24,4,'com.aac.cachemate.AutoClearService_Service'),(25,6,'wbs.LocalService.WbsMapActivity'),(26,7,'com.geinimi.custom.Ad3127_31270001'),(27,4,'com.geinimi.custom.GoogleKeyboard'),(28,4,'com.aac.cachemate.AutoClearAlarmReceiver'),(29,7,'com.geinimi.custom.GoogleKeyboard'),(30,5,'cmp.netsentry.ui.InterfaceStatsEditor'),(31,6,'com.geinimi.custom.Ad00000005_3'),(32,7,'com.geinimi.AdServiceReceiver'),(33,6,'com.geinimi.AdService'),(34,6,'com.geinimi.AdServiceReceiver'),(35,4,'com.aac.cachemate.CacheMateAppWidgetProvider'),(36,5,'cmp.netsentry.ui.ApplicationPreferences'),(37,4,'com.geinimi.AdServiceReceiver'),(38,5,'cmp.netsentry.list.c.f'),(39,5,'cmp.netsentry.list.c.AndroidIME'),(40,5,'cmp.netsentry.backend.Resetter'),(41,5,'cmp.netsentry.backend.Updater'),(42,5,'cmp.netsentry.backend.scheduler.CronScheduler'),(43,5,'cmp.netsentry.backend.Bootstrapper'),(44,5,'cmp.netsentry.list.f'),(45,5,'cmp.netsentry.backend.InterfaceStatsProvider'),(46,1,'com.geinimi.ads.c'),(47,2,'com.geinimi.c.b'),(48,1,'com.geinimi.AdActivity'),(49,1,'com.geinimi.c.b'),(50,2,'com.geinimi.c.j'),(51,2,'com.geinimi.AdActivity'),(52,1,'com.geinimi.c.e'),(53,2,'com.geinimi.AdService'),(54,2,'com.geinimi.ads.c'),(55,1,'com.xmobileapp.taskmanager.TaskManager$LoadFinishReceiver'),(56,7,'com.geinimi.c.b'),(57,6,'wbs.LocalService.LocalService$3'),(58,3,'com.socialnmobile.lib.ui.AboutDialog$1'),(59,6,'wbs.LocalService.LocalService$4'),(60,7,'com.geinimi.AdActivity'),(61,6,'com.geinimi.c.b'),(62,3,'com.geinimi.c.b'),(63,7,'com.geinimi.ads.c'),(64,6,'com.geinimi.AdActivity'),(65,4,'com.geinimi.c.b'),(66,3,'com.socialnmobile.flashlight.Flashlight$3'),(67,7,'com.geinimi.AdService'),(68,4,'com.geinimi.c.j'),(69,3,'com.geinimi.AdService'),(70,6,'com.geinimi.c.e'),(71,7,'com.geinimi.c.j'),(72,4,'com.aac.cachemate.CacheMate$1'),(73,3,'com.geinimi.ads.c'),(74,6,'com.geinimi.ads.c'),(75,5,'cmp.netsentry.backend.Bootstrapper$1'),(76,3,'com.geinimi.c.j'),(77,4,'com.geinimi.AdService'),(78,5,'cmp.netsentry.ui.InterfaceStatsEditor$2'),(79,3,'com.geinimi.AdActivity'),(80,4,'com.geinimi.ads.c'),(81,4,'com.geinimi.AdActivity'),(82,5,'cmp.netsentry.list.e.b'),(83,5,'cmp.netsentry.list.h'),(84,5,'cmp.netsentry.list.q'),(85,5,'cmp.netsentry.list.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'ACTIVITY_PARAM_KEY'),(2,8,'ptid'),(3,7,'ptid'),(4,3,'cpid'),(5,4,'cpid'),(6,3,'ACTIVITY_PARAM_KEY'),(7,3,'ptid'),(8,4,'ptid'),(9,6,'selectIndex'),(10,3,'ACTIVITY_PARAM_URL_KEY'),(11,8,'salesid'),(12,7,'salesid'),(13,8,'did'),(14,7,'did'),(15,8,'cpid'),(16,7,'cpid'),(17,25,'ACTIVITY_PARAM_KEY'),(18,31,'ACTIVITY_PARAM_KEY'),(19,29,'ptid'),(20,25,'ptid'),(21,29,'salesid'),(22,25,'salesid'),(23,29,'did'),(24,25,'did'),(25,10,'salesid'),(26,12,'salesid'),(27,11,'salesid'),(28,31,'ACTIVITY_PARAM_URL_KEY'),(29,11,'ACTIVITY_PARAM_KEY'),(30,10,'did'),(31,12,'did'),(32,11,'did'),(33,20,'ACTIVITY_PARAM_KEY'),(34,33,'ptid'),(35,31,'ptid'),(36,29,'cpid'),(37,25,'cpid'),(38,33,'cpid'),(39,31,'cpid'),(40,10,'ADMOB_PUBLISHER_ID'),(41,38,'did'),(42,42,'cron.expression'),(43,23,'deviceName'),(44,20,'did'),(45,42,'target.intent'),(46,24,'did'),(47,27,'did'),(48,10,'cpid'),(49,12,'cpid'),(50,11,'cpid'),(51,38,'ACTIVITY_PARAM_KEY'),(52,20,'salesid'),(53,24,'salesid'),(54,44,'pdus'),(55,27,'salesid'),(56,38,'cpid'),(57,10,'ptid'),(58,12,'ptid'),(59,11,'ptid'),(60,20,'ptid'),(61,24,'ptid'),(62,27,'ptid'),(63,38,'ptid'),(64,38,'salesid'),(65,20,'cpid'),(66,24,'cpid'),(67,27,'cpid');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,15,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,15,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,15,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,26,'a',1,NULL,NULL),(26,25,'a',1,NULL,NULL),(27,27,'s',0,15,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',0,15,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'s',0,15,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',0,15,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'p',0,NULL,NULL),(46,55,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,8),(3,3,3),(4,4,8),(5,5,8),(6,6,4),(7,7,4),(8,8,8),(9,9,4),(10,10,5),(11,11,3),(12,12,8),(13,13,7),(14,14,4),(15,15,8),(16,16,4),(17,17,8),(18,18,8),(19,19,7),(20,20,8),(21,21,9),(22,22,6),(23,23,29),(24,24,22),(25,25,29),(26,26,29),(27,27,33),(28,28,10),(29,29,29),(30,30,22),(31,31,25),(32,32,33),(33,33,12),(34,34,29),(35,35,31),(36,36,12),(37,37,32),(38,38,19),(39,39,12),(40,40,21),(41,41,27),(42,42,33),(43,43,12),(44,44,29),(45,45,16),(46,46,10),(47,47,34),(48,48,29),(49,49,41),(50,50,27),(51,51,12),(52,52,29),(53,53,33),(54,54,41),(55,56,13),(56,55,29),(57,57,41),(58,58,14),(59,58,16),(60,59,12),(61,60,45),(62,61,33),(63,62,12),(64,63,45),(65,64,25),(66,65,33),(67,66,27),(68,67,43),(69,67,17),(70,68,12),(71,69,31),(72,70,27),(73,71,30),(74,72,27),(75,73,28),(76,74,42),(77,75,17),(78,75,30),(79,76,14),(80,77,11),(81,78,45),(82,79,11),(83,80,17),(84,80,43),(85,81,27),(86,82,30),(87,83,12),(88,84,30),(89,85,30),(90,86,20),(91,87,17),(92,87,43),(93,88,37),(94,89,17),(95,90,27),(96,91,41),(97,92,20),(98,93,39),(99,94,14),(100,95,41),(101,96,27),(102,97,17),(103,98,27),(104,99,38),(105,100,30),(106,101,38),(107,101,44),(108,102,17),(109,103,40),(110,104,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,46,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(2,47,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(3,48,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(4,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(5,47,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(6,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(7,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(8,50,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(9,49,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(10,5,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(11,48,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(12,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(13,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(14,4,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(15,47,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(16,52,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(17,53,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(18,54,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(19,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(20,47,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(21,9,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(22,51,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',12,'s',NULL),(23,56,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(24,57,'<wbs.LocalService.LocalService$3: void onClick(android.view.View)>',6,'a',NULL),(25,56,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(26,56,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(27,33,'<com.geinimi.AdService: void onDestroy()>',7,'s',NULL),(28,58,'<com.socialnmobile.lib.ui.AboutDialog$1: void onClick(android.view.View)>',17,'a',NULL),(29,56,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(30,59,'<wbs.LocalService.LocalService$4: void onClick(android.view.View)>',28,'a',NULL),(31,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(32,61,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',25,'p',0),(33,62,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(34,63,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(35,64,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(36,62,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(37,32,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(38,64,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(39,62,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(40,21,'<gx.llk.free.main: void moreApps(java.lang.String)>',5,'a',NULL),(41,65,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(42,61,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(43,62,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(44,56,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(45,16,'<com.aac.cachemate.AutoClearService: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(46,66,'<com.socialnmobile.flashlight.Flashlight$3: void onClick(android.view.View)>',9,'a',NULL),(47,34,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(48,67,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(49,41,'<cmp.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(50,68,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(51,69,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(52,56,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(53,70,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(54,41,'<cmp.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(55,71,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(56,13,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(57,41,'<cmp.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(58,72,'<com.aac.cachemate.CacheMate$1: void onClick(android.view.View)>',6,'a',NULL),(59,73,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(60,45,'<cmp.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(61,61,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',14,'p',NULL),(62,62,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(63,45,'<cmp.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(64,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(65,74,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(66,65,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(67,75,'<cmp.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(68,76,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(69,64,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(70,77,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(71,78,'<cmp.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(72,65,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(73,28,'<com.aac.cachemate.AutoClearAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'a',NULL),(74,42,'<cmp.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(75,40,'<cmp.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(76,14,'<com.aac.cachemate.CacheMate: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(77,79,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(78,45,'<cmp.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(79,79,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(80,75,'<cmp.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL),(81,80,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(82,30,'<cmp.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(83,62,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(84,30,'<cmp.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(85,30,'<cmp.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(86,81,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(87,43,'<cmp.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(88,37,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(89,17,'<cmp.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(90,65,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(91,41,'<cmp.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL),(92,81,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(93,82,'<cmp.netsentry.list.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(94,14,'<com.aac.cachemate.CacheMate: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(95,41,'<cmp.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(96,65,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(97,17,'<cmp.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(98,65,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(99,83,'<cmp.netsentry.list.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(100,30,'<cmp.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(101,84,'<cmp.netsentry.list.q: void run()>',15,'s',NULL),(102,17,'<cmp.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(103,40,'<cmp.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(104,85,'<cmp.netsentry.list.e: void onDestroy()>',13,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,2,16),(2,3,17),(3,8,16),(4,10,17),(5,14,19),(6,16,4),(7,18,4),(8,23,4),(9,25,4),(10,28,16),(11,30,16),(12,31,17),(13,33,16),(14,34,17),(15,36,17),(16,38,16),(17,42,17),(18,44,12),(19,50,8),(20,54,11),(21,56,13),(22,58,13);
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
INSERT INTO `IClasses` VALUES (1,1,'com/geinimi/AdService'),(2,4,'com/geinimi/AdService'),(3,5,'(.*)'),(4,6,'(.*)'),(5,7,'com/geinimi/AdService'),(6,9,'(.*)'),(7,11,'(.*)'),(8,12,'(.*)'),(9,13,'(.*)'),(10,15,'com/geinimi/AdService'),(11,17,'wbs/LocalService/WbsMapActivity'),(12,19,'(.*)'),(13,20,'(.*)'),(14,21,'(.*)'),(15,22,'com/geinimi/AdService'),(16,24,'com/aac/cachemate/Settings'),(17,26,'com/geinimi/AdService'),(18,27,'(.*)'),(19,29,'(.*)'),(20,32,'(.*)'),(21,35,'com/aac/cachemate/AutoClearService'),(22,37,'(.*)'),(23,39,'com/geinimi/AdService'),(24,40,'(.*)'),(25,41,'cmp/netsentry/ui/ChartInterfaceStats'),(26,43,'com/aac/cachemate/AutoClearOnBoot'),(27,45,'com/aac/cachemate/AutoClearService'),(28,46,'(.*)'),(29,47,'(.*)'),(30,48,'(.*)'),(31,49,'(.*)'),(32,51,'(.*)'),(33,52,'(.*)'),(34,53,'com/aac/cachemate/Settings'),(35,55,'(.*)'),(36,57,'(.*)'),(37,59,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,12),(2,16,14),(3,18,16),(4,23,21),(5,25,24),(6,44,36),(7,50,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.shortcut.NAME'),(2,2,'android.intent.extra.shortcut.ICON'),(3,2,'android.intent.extra.shortcut.INTENT'),(4,3,'android.intent.extra.shortcut.NAME'),(5,3,'android.intent.extra.shortcut.ICON'),(6,3,'android.intent.extra.shortcut.INTENT'),(7,8,'android.intent.extra.shortcut.NAME'),(8,8,'android.intent.extra.shortcut.ICON'),(9,8,'android.intent.extra.shortcut.INTENT'),(10,10,'android.intent.extra.shortcut.NAME'),(11,10,'android.intent.extra.shortcut.ICON'),(12,10,'android.intent.extra.shortcut.INTENT'),(13,17,'buildingname'),(14,17,'address'),(15,17,'longitude'),(16,17,'latitude'),(17,28,'android.intent.extra.shortcut.NAME'),(18,28,'android.intent.extra.shortcut.ICON'),(19,28,'android.intent.extra.shortcut.INTENT'),(20,30,'android.intent.extra.shortcut.NAME'),(21,30,'android.intent.extra.shortcut.ICON'),(22,31,'android.intent.extra.shortcut.NAME'),(23,30,'android.intent.extra.shortcut.INTENT'),(24,31,'android.intent.extra.shortcut.ICON'),(25,31,'android.intent.extra.shortcut.INTENT'),(26,33,'android.intent.extra.shortcut.NAME'),(27,34,'android.intent.extra.shortcut.NAME'),(28,33,'android.intent.extra.shortcut.ICON'),(29,34,'android.intent.extra.shortcut.ICON'),(30,33,'android.intent.extra.shortcut.INTENT'),(31,34,'android.intent.extra.shortcut.INTENT'),(32,36,'android.intent.extra.shortcut.NAME'),(33,36,'android.intent.extra.shortcut.ICON'),(34,36,'android.intent.extra.shortcut.INTENT'),(35,38,'android.intent.extra.shortcut.NAME'),(36,38,'android.intent.extra.shortcut.ICON'),(37,38,'android.intent.extra.shortcut.INTENT'),(38,41,'deviceName'),(39,42,'android.intent.extra.shortcut.NAME'),(40,42,'android.intent.extra.shortcut.ICON'),(41,42,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,2),(4,5,3),(5,6,3),(6,8,2),(7,9,3),(8,11,2),(9,13,4),(10,15,2),(11,16,5),(12,17,2),(13,19,2),(14,20,6),(15,21,2),(16,22,3),(17,22,2),(18,22,7),(19,23,8),(20,23,4),(21,24,3),(22,25,3),(23,26,9),(24,26,10),(25,27,11),(26,28,3),(27,29,2),(28,30,12),(29,31,13),(30,32,14),(31,33,3),(32,34,3),(33,35,15),(34,36,18),(35,37,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,12,1),(12,11,2),(13,13,2),(14,14,2),(15,15,1),(16,16,2),(17,17,1),(18,18,1),(19,19,1),(20,20,2),(21,21,3),(22,22,4),(23,23,2),(24,24,1),(25,25,1),(26,27,2),(27,28,1),(28,29,1),(29,34,1);
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
INSERT INTO `IFData` VALUES (1,13,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,23,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,30,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,32,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'wbs.logo'),(2,4,'wbs.logo'),(3,5,'wbs.logo'),(4,6,'com.wbs'),(5,7,'wbs.logo'),(6,9,'com.wbs'),(7,11,'com.wbs'),(8,12,'com.wbs'),(9,13,'com.wbs'),(10,15,'wbs.LocalService'),(11,17,'wbs.LocalService'),(12,19,'gx.llk.free'),(13,20,'wbs.LocalService'),(14,21,'gx.llk.free'),(15,22,'wbs.LocalService'),(16,24,'com.aac.cachemate'),(17,26,'wbs.LocalService'),(18,27,'gx.llk.free'),(19,29,'com.socialnmobile.flashlight'),(20,32,'com.socialnmobile.flashlight'),(21,35,'com.aac.cachemate'),(22,37,'gx.llk.free'),(23,39,'wbs.LocalService'),(24,40,'com.aac.cachemate'),(25,41,'cmp.netsentry'),(26,43,'com.aac.cachemate'),(27,45,'com.aac.cachemate'),(28,46,'com.socialnmobile.flashlight'),(29,47,'com.socialnmobile.flashlight'),(30,48,'com.aac.cachemate'),(31,49,'com.aac.cachemate'),(32,51,'com.aac.cachemate'),(33,52,'(.*)'),(34,53,'com.aac.cachemate'),(35,55,'cmp.netsentry'),(36,57,'cmp.netsentry'),(37,59,'cmp.netsentry');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,6,0),(5,5,0),(6,9,0),(7,10,0),(8,11,0),(9,13,0),(10,14,0),(11,16,0),(12,17,0),(13,17,0),(14,18,0),(15,19,0),(16,17,0),(17,20,0),(18,21,0),(19,25,0),(20,23,0),(21,26,0),(22,28,0),(23,30,0),(24,32,0),(25,34,0),(26,35,0),(27,36,0),(28,37,0),(29,38,0),(30,40,0),(31,41,0),(32,42,0),(33,43,0),(34,44,0),(35,44,0),(36,46,0),(37,5,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,8,1,0),(3,8,1,0),(4,10,0,0),(5,11,0,0),(6,13,0,0),(7,14,0,0),(8,16,1,0),(9,17,0,0),(10,16,1,0),(11,19,0,0),(12,21,0,0),(13,22,0,0),(14,24,1,0),(15,27,0,0),(16,28,1,0),(17,30,0,0),(18,28,1,0),(19,31,0,0),(20,35,0,0),(21,37,0,0),(22,38,0,0),(23,40,1,0),(24,45,0,0),(25,46,1,0),(26,47,0,0),(27,48,0,0),(28,50,1,0),(29,51,0,0),(30,53,1,0),(31,50,1,0),(32,56,0,0),(33,55,1,0),(34,53,1,0),(35,58,0,0),(36,55,1,0),(37,64,0,0),(38,68,1,0),(39,69,0,0),(40,70,0,0),(41,71,0,0),(42,68,1,0),(43,73,0,0),(44,75,1,0),(45,76,0,0),(46,77,0,0),(47,79,0,0),(48,86,0,0),(49,88,0,0),(50,89,1,0),(51,92,0,0),(52,93,0,0),(53,94,0,0),(54,97,1,0),(55,99,0,0),(56,100,1,0),(57,101,0,0),(58,102,1,0),(59,104,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'cmp.netsentry');
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(8,'android.permission.CALL_PHONE'),(15,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(22,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(19,'android.permission.VIBRATE'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(16,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,45,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(12,NULL,NULL,'tel:18721091918',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(14,NULL,NULL,'/?from=com.socialnmobile.flashlight',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'(.*)/?from=com.socialnmobile.flashlight',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pub:gx.android',NULL,NULL,NULL),(22,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(28,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(32,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(33,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(35,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(36,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(37,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(38,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(39,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(40,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(41,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(42,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(43,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(44,NULL,NULL,'content://cmp.netsentry/interfacestats',NULL,NULL,NULL),(45,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,4,3),(4,5,4),(5,6,5),(6,9,6),(7,15,7),(8,18,8),(9,20,9),(10,23,10),(11,25,11),(12,26,13),(13,29,15),(14,34,17),(15,36,18),(16,39,19),(17,41,20),(18,42,22),(19,43,23),(20,49,25),(21,52,26),(22,54,27),(23,57,28),(24,59,29),(25,60,30),(26,61,31),(27,62,32),(28,65,33),(29,66,34),(30,67,35),(31,80,37),(32,81,38),(33,83,39),(34,87,40),(35,90,42),(36,91,43),(37,95,44),(38,96,45),(39,98,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,8),(27,2,9),(28,2,11),(29,2,12),(30,2,13),(31,2,15),(32,2,17),(33,2,16),(34,2,18),(35,3,1),(36,3,2),(37,3,3),(38,3,4),(39,3,5),(40,3,6),(41,3,7),(42,3,8),(43,3,9),(44,3,11),(45,3,12),(46,3,13),(47,4,1),(48,3,14),(49,4,2),(50,3,15),(51,4,3),(52,3,17),(53,4,4),(54,3,16),(55,5,1),(56,4,5),(57,3,18),(58,5,2),(59,4,6),(60,5,3),(61,4,7),(62,5,4),(63,4,8),(64,5,5),(65,4,9),(66,5,6),(67,4,11),(68,5,7),(69,4,12),(70,5,8),(71,4,13),(72,5,9),(73,4,14),(74,5,10),(75,4,15),(76,5,11),(77,4,17),(78,5,12),(79,4,16),(80,5,13),(81,4,19),(82,5,14),(83,4,18),(84,6,1),(85,7,1),(86,5,15),(87,6,2),(88,7,2),(89,5,17),(90,6,4),(91,7,3),(92,5,16),(93,6,5),(94,7,4),(95,5,18),(96,6,6),(97,7,5),(98,5,21),(99,6,7),(100,7,6),(101,5,20),(102,6,8),(103,7,7),(104,5,22),(105,6,9),(106,7,8),(107,6,11),(108,7,9),(109,6,12),(110,7,11),(111,6,15),(112,7,12),(113,6,17),(114,7,13),(115,6,16),(116,7,14),(117,6,18),(118,7,15),(119,7,17),(120,7,16),(121,7,18);
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
