-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_390
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(6,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.wbs',1),(2,'com.ttmobilegame.android.shotgun',10),(3,'com.sgg.sp',9),(4,'com.gamevil.bs2010',100),(5,'com.handcn.GoldMiner.free',3),(6,'com.apostek.SlotMachine.paid',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wbs.MagicVoiceActivity'),(2,1,'com.geinimi.custom.Ad0000_00000006'),(3,1,'com.geinimi.custom.GoogleKeyboard'),(4,1,'com.geinimi.AdServiceReceiver'),(5,2,'com.ttmobilegame.android.shotgun.Logo'),(6,2,'com.ttmobilegame.android.shotgun.SchottGunn'),(7,2,'com.geinimi.custom.Ad3090_30900001'),(8,2,'com.geinimi.custom.GoogleKeyboard'),(9,2,'com.geinimi.AdServiceReceiver'),(10,3,'com.sgg.sp.ShoppersParadise'),(11,3,'com.geinimi.custom.Ad3112_31120001'),(12,3,'com.geinimi.custom.GoogleKeyboard'),(13,3,'com.geinimi.AdServiceReceiver'),(14,5,'com.handcn.GoldMiner.free.GoldMiner'),(15,4,'com.gamevil.bs2010.BS2010Launcher'),(16,5,'com.geinimi.custom.Ad3004_30040001'),(17,4,'com.gamevil.bs2010.launcher.c.bwlatduj'),(18,5,'com.geinimi.custom.GoogleKeyboard'),(19,4,'com.gamevil.bs2010.launcher.c.AndroidIME'),(20,5,'com.geinimi.AdServiceReceiver'),(21,4,'com.gamevil.bs2010.launcher.f'),(22,6,'com.apostek.SlotMachine.paid.PlayGame'),(23,6,'com.apostek.SlotMachine.paid.CustomDialogActivity'),(24,6,'com.apostek.SlotMachine.paid.CustomDialogActivityHighScore'),(25,6,'com.apostek.SlotMachine.paid.CustomUserNameDialogActivity'),(26,6,'com.apostek.SlotMachine.paid.Leaderboard'),(27,6,'com.apostek.SlotMachine.paid.LeaderboardView'),(28,6,'com.apostek.SlotMachine.paid.ActivityOtherApps'),(29,6,'com.apostek.SlotMachine.paid.game.c.bABaoBuj'),(30,6,'com.apostek.SlotMachine.paid.game.c.AndroidIME'),(31,6,'com.apostek.SlotMachine.paid.ConnectivityReceiver'),(32,6,'com.apostek.SlotMachine.paid.game.f'),(33,1,'com.geinimi.AdService'),(34,1,'com.geinimi.c.b'),(35,1,'com.geinimi.c.j'),(36,1,'com.geinimi.AdActivity'),(37,1,'com.geinimi.ads.c'),(38,2,'com.geinimi.AdActivity'),(39,2,'com.geinimi.c.b'),(40,2,'com.geinimi.AdService'),(41,3,'com.geinimi.c.b'),(42,3,'com.geinimi.c.j'),(43,2,'com.geinimi.c.j'),(44,3,'com.geinimi.AdService'),(45,4,'com.gamevil.bs2010.launcher.e'),(46,4,'com.gamevil.bs2010.launcher.h'),(47,5,'com.geinimi.c.b'),(48,5,'com.geinimi.ads.c'),(49,2,'com.geinimi.ads.c'),(50,4,'com.gamevil.bs2010.launcher.e.b'),(51,3,'com.geinimi.ads.c'),(52,3,'com.geinimi.AdActivity'),(53,4,'com.gamevil.bs2010.launcher.q'),(54,5,'com.geinimi.AdActivity'),(55,5,'com.geinimi.AdService'),(56,5,'com.geinimi.c.j'),(57,6,'com.apostek.SlotMachine.paid.PlayGame$21'),(58,6,'com.apostek.SlotMachine.paid.game.e.b'),(59,6,'com.apostek.SlotMachine.paid.game.h'),(60,6,'com.apostek.SlotMachine.paid.game.q'),(61,6,'com.apostek.SlotMachine.paid.PlayGame$17'),(62,6,'com.apostek.SlotMachine.paid.LeaderboardView$4'),(63,6,'com.apostek.SlotMachine.paid.game.e'),(64,6,'com.apostek.SlotMachine.paid.PlayGame$14');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'did'),(2,2,'did'),(3,3,'cpid'),(4,2,'cpid'),(5,3,'ptid'),(6,2,'ptid'),(7,1,'selectIndex'),(8,2,'ACTIVITY_PARAM_KEY'),(9,3,'salesid'),(10,2,'salesid'),(11,7,'ptid'),(12,5,'ptid'),(13,8,'ptid'),(14,11,'ACTIVITY_PARAM_KEY'),(15,11,'did'),(16,12,'did'),(17,11,'ptid'),(18,12,'ptid'),(19,7,'cpid'),(20,5,'cpid'),(21,8,'cpid'),(22,11,'(.*)'),(23,7,'did'),(24,12,'(.*)'),(25,5,'did'),(26,14,'cpid'),(27,8,'did'),(28,16,'cpid'),(29,18,'cpid'),(30,15,'did'),(31,7,'ACTIVITY_PARAM_KEY'),(32,17,'did'),(33,7,'salesid'),(34,17,'ACTIVITY_PARAM_KEY'),(35,5,'salesid'),(36,11,'salesid'),(37,21,'pdus'),(38,8,'salesid'),(39,12,'salesid'),(40,15,'cpid'),(41,17,'cpid'),(42,15,'salesid'),(43,17,'salesid'),(44,14,'did'),(45,16,'did'),(46,18,'did'),(47,15,'ptid'),(48,17,'ptid'),(49,11,'cpid'),(50,12,'cpid'),(51,16,'ACTIVITY_PARAM_KEY'),(52,14,'ptid'),(53,16,'ptid'),(54,18,'ptid'),(55,14,'salesid'),(56,16,'salesid'),(57,18,'salesid'),(58,26,'current_credits'),(59,27,'ptid'),(60,22,'ptid'),(61,29,'ptid'),(62,25,'ptid'),(63,25,'title'),(64,29,'ACTIVITY_PARAM_KEY'),(65,27,'did'),(66,22,'did'),(67,29,'did'),(68,25,'did'),(69,32,'pdus'),(70,23,'title'),(71,24,'message'),(72,27,'LOCAL'),(73,27,'username'),(74,27,'cpid'),(75,22,'cpid'),(76,29,'cpid'),(77,25,'cpid'),(78,25,'message'),(79,24,'title'),(80,27,'salesid'),(81,22,'salesid'),(82,29,'salesid'),(83,25,'salesid'),(84,22,'username'),(85,23,'message'),(86,27,'GLOBAL'),(87,26,'max_credits'),(88,28,'showDontShowOften'),(89,25,'username'),(90,26,'username');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,13,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,13,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,13,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'s',0,13,NULL),(19,19,'s',0,13,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'s',0,13,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,4),(6,6,3),(7,7,1),(8,8,3),(9,9,3),(10,10,2),(11,11,3),(12,12,2),(13,13,3),(14,14,7),(15,15,8),(16,16,8),(17,17,8),(18,18,8),(19,19,12),(20,20,8),(21,21,12),(22,22,8),(23,23,12),(24,24,7),(25,25,8),(26,26,12),(27,27,12),(28,28,12),(29,29,19),(30,30,12),(31,31,12),(32,32,17),(33,33,13),(34,34,12),(35,35,8),(36,36,18),(37,37,12),(38,38,18),(39,39,12),(40,40,12),(41,41,8),(42,43,12),(43,42,19),(44,44,12),(45,45,9),(46,46,18),(47,47,11),(48,48,13),(49,49,20),(50,50,21),(51,50,17),(52,51,12),(53,52,18),(54,53,11),(55,54,12),(56,55,16),(57,56,11),(58,57,11),(59,58,16),(60,59,12),(61,60,12),(62,61,18),(63,62,18),(64,63,18),(65,64,18),(66,65,18),(67,66,22),(68,67,30),(69,68,29),(70,69,29),(71,69,32),(72,70,22),(73,71,27),(74,72,22),(75,73,30),(76,74,22),(77,75,22);
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
INSERT INTO `ExitPoints` VALUES (1,33,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(2,34,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(3,35,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(4,34,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(5,4,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(6,34,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(7,36,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',12,'s',NULL),(8,34,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(9,37,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(10,36,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(11,34,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(12,36,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(13,34,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(14,38,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(15,39,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(16,40,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(17,39,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(18,39,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(19,41,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(20,39,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(21,41,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(22,39,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(23,42,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(24,38,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(25,43,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(26,42,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',13,'r',NULL),(27,41,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(28,44,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(29,45,'<com.gamevil.bs2010.launcher.e: void onDestroy()>',13,'s',NULL),(30,41,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(31,41,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(32,46,'<com.gamevil.bs2010.launcher.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(33,13,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(34,44,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(35,39,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(36,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(37,41,'<com.geinimi.c.b: boolean a(java.lang.String)>',8,'p',NULL),(38,48,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(39,41,'<com.geinimi.c.b: java.util.Vector a()>',58,'p',NULL),(40,41,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(41,49,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(42,50,'<com.gamevil.bs2010.launcher.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(43,41,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(44,51,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(45,9,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(46,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(47,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',32,'a',NULL),(48,13,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(49,20,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(50,53,'<com.gamevil.bs2010.launcher.q: void run()>',15,'s',NULL),(51,41,'<com.geinimi.c.b: java.util.Vector a()>',35,'p',NULL),(52,47,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(53,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(54,41,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',16,'p',NULL),(55,54,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(56,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(57,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',26,'s',NULL),(58,54,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(59,41,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',27,'p',0),(60,51,'<com.geinimi.ads.c: boolean b()>',27,'p',NULL),(61,55,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(62,56,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(63,47,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(64,47,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(65,47,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(66,57,'<com.apostek.SlotMachine.paid.PlayGame$21: void onClick(android.view.View)>',23,'a',NULL),(67,58,'<com.apostek.SlotMachine.paid.game.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(68,59,'<com.apostek.SlotMachine.paid.game.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(69,60,'<com.apostek.SlotMachine.paid.game.q: void run()>',15,'s',NULL),(70,61,'<com.apostek.SlotMachine.paid.PlayGame$17: void onClick(android.view.View)>',118,'a',NULL),(71,62,'<com.apostek.SlotMachine.paid.LeaderboardView$4: void onClick(android.view.View)>',10,'a',NULL),(72,61,'<com.apostek.SlotMachine.paid.PlayGame$17: void onClick(android.view.View)>',61,'a',NULL),(73,63,'<com.apostek.SlotMachine.paid.game.e: void onDestroy()>',13,'s',NULL),(74,64,'<com.apostek.SlotMachine.paid.PlayGame$14: void onClick(android.view.View)>',12,'a',NULL),(75,22,'<com.apostek.SlotMachine.paid.PlayGame: void navigateToLeaderboard()>',13,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,3,6),(3,10,5),(4,12,6),(5,13,5),(6,14,6),(7,15,5),(8,16,6),(9,34,5),(10,35,6);
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
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,4,'(.*)'),(3,5,'(.*)'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,11,'(.*)'),(9,17,'(.*)'),(10,18,'(.*)'),(11,19,'(.*)'),(12,20,'(.*)'),(13,21,'(.*)'),(14,22,'(.*)'),(15,23,'(.*)'),(16,24,'(.*)'),(17,25,'(.*)'),(18,26,'(.*)'),(19,27,'(.*)'),(20,28,'(.*)'),(21,29,'(.*)'),(22,30,'(.*)'),(23,31,'(.*)'),(24,32,'(.*)'),(25,33,'(.*)'),(26,36,'com/apostek/SlotMachine/paid/ActivityOtherApps'),(27,37,'(.*)'),(28,38,'(.*)'),(29,39,'(.*)'),(30,40,'com/apostek/SlotMachine/paid/Leaderboard'),(31,41,'com/apostek/SlotMachine/paid/CustomUserNameDialogActivity'),(32,42,'com/apostek/SlotMachine/paid/CustomUserNameDialogActivity'),(33,43,'(.*)'),(34,44,'com/apostek/SlotMachine/paid/CustomDialogActivity'),(35,45,'com/apostek/SlotMachine/paid/Leaderboard');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
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
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.shortcut.NAME'),(2,2,'android.intent.extra.shortcut.ICON'),(3,2,'android.intent.extra.shortcut.INTENT'),(4,3,'android.intent.extra.shortcut.NAME'),(5,3,'android.intent.extra.shortcut.ICON'),(6,3,'android.intent.extra.shortcut.INTENT'),(7,10,'android.intent.extra.shortcut.NAME'),(8,10,'android.intent.extra.shortcut.ICON'),(9,10,'android.intent.extra.shortcut.INTENT'),(10,12,'android.intent.extra.shortcut.NAME'),(11,12,'android.intent.extra.shortcut.ICON'),(12,12,'android.intent.extra.shortcut.INTENT'),(13,13,'android.intent.extra.shortcut.NAME'),(14,14,'(.*)'),(15,13,'android.intent.extra.shortcut.ICON'),(16,13,'android.intent.extra.shortcut.INTENT'),(17,15,'(.*)'),(18,16,'android.intent.extra.shortcut.NAME'),(19,16,'android.intent.extra.shortcut.ICON'),(20,16,'android.intent.extra.shortcut.INTENT'),(21,34,'android.intent.extra.shortcut.NAME'),(22,34,'android.intent.extra.shortcut.ICON'),(23,34,'android.intent.extra.shortcut.INTENT'),(24,35,'android.intent.extra.shortcut.NAME'),(25,35,'android.intent.extra.shortcut.ICON'),(26,35,'android.intent.extra.shortcut.INTENT'),(27,36,'showDontShowOften'),(28,40,'max_credits'),(29,40,'current_credits'),(30,40,'username'),(31,41,'message'),(32,41,'username'),(33,41,'title'),(34,42,'message'),(35,42,'username'),(36,42,'title'),(37,44,'message'),(38,44,'title'),(39,45,'max_credits'),(40,45,'current_credits'),(41,45,'username');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,4,1),(4,5,2),(5,8,1),(6,9,1),(7,10,2),(8,11,2),(9,14,1),(10,15,1),(11,16,2),(12,17,2),(13,18,3),(14,19,4),(15,20,1),(16,21,4),(17,22,2),(18,23,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,19,1),(19,20,1),(20,22,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.wbs'),(2,4,'com.wbs'),(3,5,'com.wbs'),(4,6,'com.wbs'),(5,7,'com.wbs'),(6,8,'com.ttmobilegame.android.shotgun'),(7,9,'com.ttmobilegame.android.shotgun'),(8,11,'com.ttmobilegame.android.shotgun'),(9,18,'com.gamevil.bs2010'),(10,17,'com.sgg.sp'),(11,19,'com.gamevil.bs2010'),(12,20,'com.sgg.sp'),(13,21,'com.sgg.sp'),(14,22,'(.*)'),(15,23,'com.ttmobilegame.android.shotgun'),(16,24,'com.sgg.sp'),(17,25,'com.sgg.sp'),(18,26,'com.handcn.GoldMiner.free'),(19,27,'com.gamevil.bs2010'),(20,28,'com.sgg.sp'),(21,29,'com.handcn.GoldMiner.free'),(22,30,'com.sgg.sp'),(23,31,'com.sgg.sp'),(24,32,'com.handcn.GoldMiner.free'),(25,33,'com.handcn.GoldMiner.free'),(26,36,'com.apostek.SlotMachine.paid'),(27,37,'(.*)'),(28,38,'com.apostek.SlotMachine.paid'),(29,39,'com.apostek.SlotMachine.paid'),(30,40,'com.apostek.SlotMachine.paid'),(31,41,'com.apostek.SlotMachine.paid'),(32,42,'com.apostek.SlotMachine.paid'),(33,43,'com.apostek.SlotMachine.paid'),(34,44,'com.apostek.SlotMachine.paid'),(35,45,'com.apostek.SlotMachine.paid');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,9,0),(6,10,0),(7,10,0),(8,11,0),(9,11,0),(10,13,0),(11,13,0),(12,14,0),(13,15,0),(14,16,0),(15,17,0),(16,20,0),(17,21,0),(18,21,0),(19,22,0),(20,29,0),(21,31,0),(22,32,0),(23,32,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,1,0),(3,3,1,0),(4,5,0,0),(5,7,0,0),(6,10,0,0),(7,12,0,0),(8,14,0,0),(9,16,0,0),(10,23,1,0),(11,24,0,0),(12,23,1,0),(13,25,1,0),(14,26,1,0),(15,26,1,0),(16,25,1,0),(17,28,0,0),(18,29,0,0),(19,32,0,0),(20,33,0,0),(21,34,0,0),(22,42,0,0),(23,45,0,0),(24,47,0,0),(25,48,0,0),(26,49,0,0),(27,50,0,0),(28,53,0,0),(29,55,0,0),(30,56,0,0),(31,57,0,0),(32,58,0,0),(33,61,0,0),(34,62,1,0),(35,62,1,0),(36,66,0,0),(37,67,0,0),(38,68,0,0),(39,69,0,0),(40,70,0,0),(41,71,0,0),(42,72,0,0),(43,73,0,0),(44,74,0,0),(45,75,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,45,26,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(23,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.CALL_PHONE'),(13,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(21,'android.permission.RECEIVE_SMS'),(22,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(16,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(25,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(29,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(30,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,4,2),(3,6,3),(4,8,4),(5,9,5),(6,11,6),(7,15,7),(8,17,8),(9,18,9),(10,19,10),(11,20,11),(12,21,12),(13,22,13),(14,30,14),(15,31,15),(16,37,16),(17,38,17),(18,39,18),(19,40,19),(20,41,20),(21,43,21),(22,44,22),(23,46,23),(24,51,24),(25,52,25),(26,54,26),(27,60,27),(28,63,28),(29,64,29),(30,65,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,2,1),(18,2,2),(19,2,3),(20,2,4),(21,2,5),(22,2,6),(23,2,7),(24,2,8),(25,2,9),(26,2,10),(27,2,11),(28,2,12),(29,2,13),(30,2,14),(31,2,15),(32,2,17),(33,2,16),(34,2,18),(35,3,1),(36,3,2),(37,3,3),(38,3,4),(39,3,5),(40,4,1),(41,3,6),(42,3,7),(43,4,2),(44,3,8),(45,4,3),(46,3,9),(47,3,10),(48,4,4),(49,3,11),(50,3,12),(51,4,5),(52,3,13),(53,5,1),(54,3,14),(55,5,2),(56,3,15),(57,4,6),(58,3,17),(59,4,7),(60,5,3),(61,3,16),(62,3,19),(63,4,8),(64,5,4),(65,5,5),(66,4,9),(67,4,10),(68,5,6),(69,5,7),(70,4,11),(71,5,8),(72,4,12),(73,5,9),(74,4,13),(75,4,14),(76,5,10),(77,5,11),(78,4,15),(79,5,12),(80,4,17),(81,4,16),(82,5,13),(83,4,18),(84,5,14),(85,4,21),(86,5,15),(87,5,17),(88,4,20),(89,5,16),(90,4,23),(91,4,22),(92,6,1),(93,6,2),(94,6,3),(95,6,4),(96,6,5),(97,6,6),(98,6,7),(99,6,8),(100,6,9),(101,6,10),(102,6,11),(103,6,12),(104,6,13),(105,6,14),(106,6,15),(107,6,17),(108,6,16),(109,6,21),(110,6,20),(111,6,23),(112,6,22);
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

-- Dump completed on 2015-10-12  3:30:18
