-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_396
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(9,'NULL-CONSTANT'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.ACTION_BOOT_COMPLETED'),(3,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CALL'),(7,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.VIEW'),(6,'android.provider.Telephony.SMS_RECEIVED'),(4,'com.aac.cachemate.CLICK'),(11,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.aac.cachemate',71),(2,'com.xlabtech.HardcoreDirtBike',3),(3,'hr.fs.amazing',1),(4,'wbs.LocalService',1),(5,'com.moonage.iTraining',1),(6,'com.pocketchunk.blade',1),(7,'com.masshabit.squibble.free',362);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.aac.cachemate.CacheMate'),(2,1,'com.aac.cachemate.Settings'),(3,1,'com.aac.cachemate.AutoClearService'),(4,1,'com.aac.cachemate.AutoClearOnBoot'),(5,1,'com.geinimi.custom.Ad3062_30620001'),(6,1,'com.aac.cachemate.AutoClearService_Service'),(7,1,'com.geinimi.custom.GoogleKeyboard'),(8,1,'com.aac.cachemate.AutoClearAlarmReceiver'),(9,3,'hr.fs.amazing.AMazingActivity'),(10,2,'com.xlabtech.HardcoreDirtBike.HardcoreDirtBike'),(11,1,'com.aac.cachemate.CacheMateAppWidgetProvider'),(12,3,'com.geinimi.custom.Ad1022_102201'),(13,2,'com.xlabtech.HardcoreDirtBike.bike.c.rCfDkkvj'),(14,3,'com.geinimi.AdService'),(15,1,'com.geinimi.AdServiceReceiver'),(16,3,'com.geinimi.AdServiceReceiver'),(17,2,'com.xlabtech.HardcoreDirtBike.bike.c.AndroidIME'),(18,2,'com.xlabtech.HardcoreDirtBike.bike.f'),(19,4,'wbs.LocalService.WbsLogoAct'),(20,5,'com.moonage.iTraining.SplashActivity'),(21,4,'wbs.LocalService.LocalService'),(22,4,'wbs.LocalService.WbsMapActivity'),(23,5,'com.moonage.iTraining.iTrainingMain1'),(24,5,'com.moonage.iTraining.iTrainingMain2'),(25,5,'com.moonage.iTraining.iTrainingMain3'),(26,4,'com.geinimi.custom.Ad00000005_1'),(27,6,'com.pocketchunk.blade.first'),(28,5,'com.moonage.iTraining.iTrainingTitle'),(29,4,'com.geinimi.AdService'),(30,5,'com.moonage.iTraining.RecordActivity'),(31,4,'com.geinimi.AdServiceReceiver'),(32,6,'com.geinimi.custom.Ad1002_100201'),(33,5,'com.moonage.iTraining.ResultActivity'),(34,5,'com.moonage.iTraining.HelpActivity'),(35,6,'com.geinimi.AdService'),(36,5,'com.moonage.iTraining.ReviseActivity'),(37,6,'com.geinimi.AdServiceReceiver'),(38,5,'com.geinimi.custom.Ad3111_31110001'),(39,5,'com.geinimi.custom.GoogleKeyboard'),(40,5,'com.geinimi.AdServiceReceiver'),(41,7,'com.masshabit.squibble.free.MainActivity'),(42,7,'com.masshabit.squibble.free.activity.c.rlbdafsj'),(43,7,'com.masshabit.squibble.free.activity.c.AndroidIME'),(44,7,'com.masshabit.squibble.free.activity.f'),(45,2,'com.xlabtech.HardcoreDirtBike.bike.h'),(46,2,'com.xlabtech.HardcoreDirtBike.bike.e'),(47,2,'com.xlabtech.HardcoreDirtBike.bike.q'),(48,2,'com.xlabtech.HardcoreDirtBike.bike.e.b'),(49,3,'hr.fs.amazing.AboutActivity'),(50,3,'com.geinimi.c.b'),(51,3,'com.geinimi.AdActivity'),(52,6,'com.geinimi.c.b'),(53,1,'com.geinimi.AdActivity'),(54,6,'com.geinimi.ads.c'),(55,3,'com.geinimi.c.e'),(56,1,'com.geinimi.c.b'),(57,4,'com.geinimi.AdActivity'),(58,1,'com.aac.cachemate.CacheMate$1'),(59,4,'com.geinimi.c.e'),(60,6,'com.geinimi.AdActivity'),(61,1,'com.geinimi.c.j'),(62,6,'com.geinimi.c.e'),(63,3,'com.geinimi.ads.c'),(64,1,'com.geinimi.ads.c'),(65,4,'com.geinimi.ads.c'),(66,7,'com.android.vending.licensing.LicenseChecker'),(67,4,'com.geinimi.c.b'),(68,1,'com.geinimi.AdService'),(69,5,'com.moonage.iTraining.ResultActivity$1'),(70,7,'com.masshabit.squibble.free.activity.e.b'),(71,4,'wbs.LocalService.LocalService$3'),(72,7,'com.masshabit.squibble.free.activity.e'),(73,5,'com.geinimi.c.j'),(74,4,'wbs.LocalService.LocalService$4'),(75,7,'com.masshabit.squibble.free.activity.h'),(76,7,'com.masshabit.squibble.free.activity.q'),(77,5,'com.geinimi.c.b'),(78,5,'com.geinimi.ads.c'),(79,5,'com.geinimi.AdActivity'),(80,5,'com.moonage.iTraining.iTrainingTitle$5'),(81,5,'com.geinimi.AdService'),(82,5,'com.moonage.iTraining.iTrainingTitle$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'cpid'),(2,13,'salesid'),(3,13,'did'),(4,13,'ptid'),(5,13,'ACTIVITY_PARAM_KEY'),(6,18,'pdus'),(7,11,'ACTIVITY_PARAM_KEY'),(8,26,'ptid'),(9,32,'ACTIVITY_PARAM_KEY'),(10,29,'ptid'),(11,32,'ACTIVITY_PARAM_URL_KEY'),(12,5,'ACTIVITY_PARAM_KEY'),(13,11,'ACTIVITY_PARAM_URL_KEY'),(14,15,'cpid'),(15,35,'ptid'),(16,11,'cpid'),(17,32,'ptid'),(18,15,'ptid'),(19,11,'ptid'),(20,35,'cpid'),(21,32,'cpid'),(22,24,'cpid'),(23,25,'cpid'),(24,26,'ACTIVITY_PARAM_URL_KEY'),(25,23,'cpid'),(26,38,'cpid'),(27,39,'cpid'),(28,42,'did'),(29,42,'ACTIVITY_PARAM_KEY'),(30,24,'ptid'),(31,25,'ptid'),(32,23,'ptid'),(33,38,'ptid'),(34,39,'ptid'),(35,5,'did'),(36,6,'did'),(37,7,'did'),(38,42,'ptid'),(39,42,'cpid'),(40,26,'ACTIVITY_PARAM_KEY'),(41,26,'cpid'),(42,5,'salesid'),(43,29,'cpid'),(44,44,'pdus'),(45,6,'salesid'),(46,24,'salesid'),(47,42,'salesid'),(48,7,'salesid'),(49,25,'salesid'),(50,23,'salesid'),(51,38,'salesid'),(52,39,'salesid'),(53,5,'cpid'),(54,6,'cpid'),(55,7,'cpid'),(56,5,'ptid'),(57,6,'ptid'),(58,7,'ptid'),(59,38,'ACTIVITY_PARAM_KEY'),(60,24,'did'),(61,25,'did'),(62,23,'did'),(63,38,'did'),(64,39,'did');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,14,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,12,'a',1,NULL,NULL),(12,11,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,15,'r',1,NULL,NULL),(15,14,'s',0,14,NULL),(16,16,'r',1,NULL,NULL),(17,17,'s',0,14,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,14,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,14,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',0,14,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'s',0,14,NULL),(44,44,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,13),(2,2,17),(3,3,13),(4,3,18),(5,4,17),(6,5,9),(7,6,15),(8,7,15),(9,8,11),(10,9,11),(11,10,35),(12,11,15),(13,12,5),(14,13,35),(15,14,15),(16,15,1),(17,16,37),(18,17,7),(19,18,7),(20,19,35),(21,20,26),(22,21,35),(23,22,3),(24,22,1),(25,23,29),(26,24,16),(27,25,32),(28,26,7),(29,27,15),(30,29,7),(31,28,35),(32,30,15),(33,31,26),(34,32,9),(35,33,31),(36,34,7),(37,35,32),(38,36,29),(39,37,5),(40,38,35),(41,39,19),(42,40,7),(43,41,41),(44,42,29),(45,43,7),(46,44,33),(47,45,29),(48,46,43),(49,47,1),(50,48,21),(51,49,43),(52,50,39),(53,51,14),(54,52,21),(55,53,42),(56,54,3),(57,55,8),(58,56,44),(59,56,42),(60,57,39),(61,58,29),(62,59,7),(63,60,29),(64,62,7),(65,61,39),(66,63,39),(67,64,40),(68,65,38),(69,66,28),(70,67,39),(71,68,39),(72,69,38),(73,70,39),(74,71,39),(75,72,28),(76,73,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,45,'<com.xlabtech.HardcoreDirtBike.bike.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(2,46,'<com.xlabtech.HardcoreDirtBike.bike.e: void onDestroy()>',13,'s',NULL),(3,47,'<com.xlabtech.HardcoreDirtBike.bike.q: void run()>',15,'s',NULL),(4,48,'<com.xlabtech.HardcoreDirtBike.bike.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(5,49,'<hr.fs.amazing.AboutActivity: void mail(android.view.View)>',12,'a',NULL),(6,14,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(7,50,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(8,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(9,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(10,52,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(11,50,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(12,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(13,54,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(14,55,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(15,1,'<com.aac.cachemate.CacheMate: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(16,37,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(17,56,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(18,56,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(19,52,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(20,57,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(21,52,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(22,58,'<com.aac.cachemate.CacheMate$1: void onClick(android.view.View)>',6,'a',NULL),(23,59,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(24,16,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(25,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(26,56,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(27,50,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(28,62,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(29,61,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(30,63,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(31,57,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(32,49,'<hr.fs.amazing.AboutActivity: void donate(android.view.View)>',6,'a',NULL),(33,31,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(34,64,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(35,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(36,65,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(37,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(38,35,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(39,57,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(40,56,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(41,66,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(42,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(43,68,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(44,69,'<com.moonage.iTraining.ResultActivity$1: void onClick(android.view.View)>',10,'a',NULL),(45,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(46,70,'<com.masshabit.squibble.free.activity.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(47,1,'<com.aac.cachemate.CacheMate: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(48,71,'<wbs.LocalService.LocalService$3: void onClick(android.view.View)>',11,'a',NULL),(49,72,'<com.masshabit.squibble.free.activity.e: void onDestroy()>',13,'s',NULL),(50,73,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(51,15,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(52,74,'<wbs.LocalService.LocalService$4: void onClick(android.view.View)>',28,'a',NULL),(53,75,'<com.masshabit.squibble.free.activity.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(54,3,'<com.aac.cachemate.AutoClearService: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(55,8,'<com.aac.cachemate.AutoClearAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'a',NULL),(56,76,'<com.masshabit.squibble.free.activity.q: void run()>',15,'s',NULL),(57,77,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(58,29,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(59,56,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(60,67,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(61,78,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(62,56,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(63,77,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(64,40,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(65,79,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(66,80,'<com.moonage.iTraining.iTrainingTitle$5: void onClick(android.view.View)>',19,'a',NULL),(67,77,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(68,81,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(69,79,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(70,77,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(71,77,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(72,82,'<com.moonage.iTraining.iTrainingTitle$4: void onClick(android.view.View)>',19,'a',NULL),(73,77,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,5,7),(2,6,7),(3,7,7),(4,8,7),(5,9,7),(6,10,7),(7,11,7),(8,12,7),(9,18,8),(10,20,9),(11,23,8),(12,26,9),(13,27,8),(14,28,8),(15,31,9),(16,30,9),(17,32,10),(18,38,11),(19,43,12),(20,45,12),(21,46,8),(22,48,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,3,'(.*)'),(4,4,'(.*)'),(5,13,'com/geinimi/AdService'),(6,14,'com/geinimi/AdService'),(7,15,'(.*)'),(8,16,'(.*)'),(9,17,'com/aac/cachemate/Settings'),(10,19,'com/geinimi/AdService'),(11,21,'com/geinimi/AdService'),(12,22,'com/aac/cachemate/AutoClearService'),(13,24,'com/geinimi/AdService'),(14,25,'com/geinimi/AdService'),(15,29,'(.*)'),(16,33,'com/geinimi/AdService'),(17,34,'(.*)'),(18,35,'(.*)'),(19,36,'com/geinimi/AdService'),(20,37,'com/geinimi/AdService'),(21,39,'(.*)'),(22,40,'com/moonage/iTraining/ReviseActivity'),(23,41,'(.*)'),(24,42,'com/aac/cachemate/AutoClearService'),(25,44,'(.*)'),(26,47,'(.*)'),(27,50,'(.*)'),(28,51,'com/aac/cachemate/Settings'),(29,49,'wbs/LocalService/WbsMapActivity'),(30,52,'com/aac/cachemate/AutoClearOnBoot'),(31,53,'(.*)'),(32,54,'com/geinimi/AdService'),(33,55,'(.*)'),(34,56,'(.*)'),(35,57,'com/moonage/iTraining/HelpActivity'),(36,58,'(.*)'),(37,59,'(.*)'),(38,60,'com/moonage/iTraining/RecordActivity');
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
INSERT INTO `IData` VALUES (1,32,9),(2,43,14),(3,45,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'android.intent.extra.INTENT'),(2,6,'android.intent.extra.INTENT'),(3,7,'android.intent.extra.TITLE'),(4,7,'android.intent.extra.INTENT'),(5,8,'android.intent.extra.INTENT'),(6,9,'android.intent.extra.TITLE'),(7,9,'android.intent.extra.INTENT'),(8,10,'android.intent.extra.INTENT'),(9,11,'android.intent.extra.TITLE'),(10,11,'android.intent.extra.INTENT'),(11,12,'android.intent.extra.TITLE'),(12,12,'android.intent.extra.INTENT'),(13,18,'android.intent.extra.shortcut.NAME'),(14,18,'android.intent.extra.shortcut.ICON'),(15,18,'android.intent.extra.shortcut.INTENT'),(16,20,'android.intent.extra.shortcut.NAME'),(17,20,'android.intent.extra.shortcut.ICON'),(18,20,'android.intent.extra.shortcut.INTENT'),(19,23,'android.intent.extra.shortcut.NAME'),(20,23,'android.intent.extra.shortcut.ICON'),(21,23,'android.intent.extra.shortcut.INTENT'),(22,26,'android.intent.extra.shortcut.NAME'),(23,26,'android.intent.extra.shortcut.ICON'),(24,26,'android.intent.extra.shortcut.INTENT'),(25,28,'android.intent.extra.shortcut.NAME'),(26,27,'android.intent.extra.shortcut.NAME'),(27,27,'android.intent.extra.shortcut.ICON'),(28,28,'android.intent.extra.shortcut.ICON'),(29,27,'android.intent.extra.shortcut.INTENT'),(30,28,'android.intent.extra.shortcut.INTENT'),(31,31,'android.intent.extra.shortcut.NAME'),(32,30,'android.intent.extra.shortcut.NAME'),(33,30,'android.intent.extra.shortcut.ICON'),(34,31,'android.intent.extra.shortcut.ICON'),(35,30,'android.intent.extra.shortcut.INTENT'),(36,31,'android.intent.extra.shortcut.INTENT'),(37,46,'android.intent.extra.shortcut.NAME'),(38,46,'android.intent.extra.shortcut.ICON'),(39,46,'android.intent.extra.shortcut.INTENT'),(40,49,'buildingname'),(41,48,'android.intent.extra.shortcut.NAME'),(42,49,'address'),(43,48,'android.intent.extra.shortcut.ICON'),(44,49,'longitude'),(45,48,'android.intent.extra.shortcut.INTENT'),(46,49,'latitude');
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
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,5,1),(4,5,3),(5,5,2),(6,8,1),(7,9,4),(8,9,5),(9,10,1),(10,11,3),(11,12,3),(12,13,6),(13,14,3),(14,15,1),(15,17,1),(16,19,3),(17,20,1),(18,21,3),(19,22,1),(20,23,3),(21,25,1),(22,26,6),(23,27,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,3),(6,6,1),(7,7,1),(8,8,1),(9,10,1),(10,11,1),(11,12,1),(12,14,1),(13,15,1),(14,16,1),(15,17,4),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,1),(23,25,1),(24,27,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.xlabtech.HardcoreDirtBike'),(2,2,'com.xlabtech.HardcoreDirtBike'),(3,3,'com.xlabtech.HardcoreDirtBike'),(4,4,'(.*)'),(5,13,'hr.fs.amazing'),(6,14,'hr.fs.amazing'),(7,15,'hr.fs.amazing'),(8,16,'com.aac.cachemate'),(9,17,'com.aac.cachemate'),(10,19,'com.pocketchunk.blade'),(11,21,'wbs.LocalService'),(12,22,'com.aac.cachemate'),(13,24,'hr.fs.amazing'),(14,25,'com.pocketchunk.blade'),(15,29,'wbs.LocalService'),(16,33,'wbs.LocalService'),(17,34,'com.pocketchunk.blade'),(18,35,'com.aac.cachemate'),(19,36,'com.pocketchunk.blade'),(20,37,'wbs.LocalService'),(21,39,'com.aac.cachemate'),(22,40,'com.moonage.iTraining'),(23,41,'(.*)'),(24,42,'com.aac.cachemate'),(25,44,'com.masshabit.squibble.free'),(26,47,'com.aac.cachemate'),(27,50,'com.masshabit.squibble.free'),(28,51,'com.aac.cachemate'),(29,49,'wbs.LocalService'),(30,52,'com.aac.cachemate'),(31,53,'com.masshabit.squibble.free'),(32,54,'wbs.LocalService'),(33,55,'com.moonage.iTraining'),(34,56,'com.moonage.iTraining'),(35,57,'com.moonage.iTraining'),(36,58,'com.moonage.iTraining'),(37,59,'com.moonage.iTraining'),(38,60,'com.moonage.iTraining');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,12,0),(10,13,0),(11,14,0),(12,16,0),(13,18,0),(14,18,0),(15,19,0),(16,20,0),(17,22,0),(18,27,0),(19,31,0),(20,32,0),(21,37,0),(22,38,0),(23,40,0),(24,41,0),(25,42,0),(26,44,0),(27,44,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,6,0,0),(14,8,0,0),(15,9,0,0),(16,12,0,0),(17,15,0,0),(18,14,1,0),(19,16,0,0),(20,14,1,0),(21,20,0,0),(22,22,0,0),(23,23,1,0),(24,24,0,0),(25,25,0,0),(26,23,1,0),(27,29,1,0),(28,28,1,0),(29,31,0,0),(30,29,1,0),(31,28,1,0),(32,32,1,0),(33,33,0,0),(34,35,0,0),(35,37,0,0),(36,38,0,0),(37,39,0,0),(38,41,1,0),(39,43,0,0),(40,44,0,0),(41,46,0,0),(42,47,0,0),(43,48,1,0),(44,49,0,0),(45,48,1,0),(46,50,1,0),(47,51,0,0),(48,50,1,0),(49,52,0,0),(50,53,0,0),(51,54,0,0),(52,55,0,0),(53,56,0,0),(54,58,0,0),(55,64,0,0),(56,65,0,0),(57,66,0,0),(58,68,0,0),(59,69,0,0),(60,72,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,54,15,2,NULL),(2,54,29,2,NULL),(3,54,35,2,NULL),(4,33,15,2,NULL),(5,33,29,2,NULL),(6,33,35,2,NULL),(7,36,15,2,NULL),(8,36,29,2,NULL),(9,36,35,2,NULL),(10,19,15,2,NULL),(11,19,29,2,NULL),(12,19,35,2,NULL),(13,13,15,2,NULL),(14,13,29,2,NULL),(15,13,35,2,NULL),(16,24,15,2,NULL),(17,24,29,2,NULL),(18,24,35,2,NULL),(19,17,2,2,NULL),(20,42,3,2,NULL),(21,51,2,2,NULL),(22,52,4,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(22,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.CALL_PHONE'),(14,'android.permission.INTERNET'),(11,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(20,'android.permission.RECEIVE_SMS'),(21,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(17,'android.permission.VIBRATE'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=2PSJM7SZFNJNQ',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'tel:',NULL,NULL,NULL),(15,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(17,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,1),(2,10,2),(3,11,3),(4,13,4),(5,18,5),(6,21,6),(7,26,7),(8,30,8),(9,34,10),(10,36,11),(11,40,12),(12,42,13),(13,57,16),(14,59,17),(15,60,18),(16,62,19),(17,61,20),(18,63,21),(19,67,22),(20,70,23),(21,73,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,3,1),(21,2,2),(22,3,2),(23,2,3),(24,3,3),(25,2,4),(26,3,4),(27,2,5),(28,3,5),(29,2,6),(30,3,6),(31,2,7),(32,3,7),(33,2,8),(34,3,8),(35,2,9),(36,3,9),(37,2,10),(38,3,10),(39,2,11),(40,3,11),(41,2,12),(42,3,12),(43,2,13),(44,3,13),(45,2,14),(46,3,14),(47,2,15),(48,3,15),(49,2,16),(50,3,17),(51,2,19),(52,3,16),(53,2,18),(54,3,18),(55,2,21),(56,2,20),(57,2,22),(58,4,1),(59,4,2),(60,5,1),(61,4,4),(62,5,2),(63,4,5),(64,5,3),(65,4,6),(66,5,4),(67,4,7),(68,5,5),(69,4,8),(70,5,6),(71,4,9),(72,5,7),(73,4,10),(74,5,8),(75,4,11),(76,5,9),(77,4,14),(78,5,10),(79,6,1),(80,4,15),(81,6,2),(82,5,11),(83,4,16),(84,6,3),(85,5,12),(86,4,18),(87,6,4),(88,5,13),(89,6,5),(90,5,14),(91,6,6),(92,5,15),(93,6,7),(94,5,16),(95,6,8),(96,5,18),(97,6,9),(98,6,10),(99,6,11),(100,6,12),(101,6,13),(102,6,14),(103,6,15),(104,6,16),(105,6,18),(106,7,1),(107,7,2),(108,7,3),(109,7,4),(110,7,5),(111,7,6),(112,7,7),(113,7,8),(114,7,9),(115,7,10),(116,7,11),(117,7,12),(118,7,13),(119,7,14),(120,7,15),(121,7,16),(122,7,19),(123,7,18),(124,7,21),(125,7,20);
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

-- Dump completed on 2015-10-12  3:30:19
