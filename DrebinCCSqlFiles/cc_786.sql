-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_786
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.HEART_CODE'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.START_AGENT'),(5,'android.intent.action.VIEW');
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
INSERT INTO `Applications` VALUES (1,'HamsterSuper.Client.Deamon',1),(2,'com.android.JawbreakerSuper.Deamon',1),(3,'JawbreakerSuper.Game',2),(4,'HamsterSuper.Client.Game',1),(5,'FiveChessSuper.Client.Game',1),(6,'FiveChessSuper.Client.Game',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'HamsterSuper.Client.Deamon.Hamster'),(2,1,'HamsterSuper.Client.Deamon.BootReceiver'),(3,1,'HamsterSuper.Client.Deamon.NoticeSms'),(4,1,'HamsterSuper.Client.Deamon.NoticeApk'),(5,2,'com.android.JawbreakerSuper.Deamon.Jawbreaker'),(6,1,'HamsterSuper.Client.Deamon.NoticeIE'),(7,1,'HamsterSuper.Client.Deamon.NoticeVideo'),(8,3,'JawbreakerSuper.Game.Jawbreaker'),(9,2,'com.android.JawbreakerSuper.Deamon.BootReceiver'),(10,3,'JawbreakerSuper.Game.BootReceiver'),(11,4,'HamsterSuper.Client.Game.Hamster'),(12,2,'com.android.JawbreakerSuper.Deamon.NoticeSms'),(13,5,'FiveChessSuper.Client.Game.FiveChess'),(14,6,'FiveChessSuper.Client.Game.FiveChess'),(15,2,'com.android.JawbreakerSuper.Deamon.NoticeApk'),(16,4,'HamsterSuper.Client.Game.BootReceiver'),(17,4,'HamsterSuper.Client.Game.BootReceiver'),(18,2,'com.android.JawbreakerSuper.Deamon.NoticeIE'),(19,3,'JawbreakerSuper.Game.NoticeVideo'),(20,2,'com.android.JawbreakerSuper.Deamon.NoticeVideo'),(21,5,'FiveChessSuper.Client.Game.BootReceiver'),(22,6,'FiveChessSuper.Client.Game.BootReceiver'),(23,4,'HamsterSuper.Client.Game.NoticeVideo'),(24,4,'HamsterSuper.Client.Game.NoticeSms'),(25,4,'HamsterSuper.Client.Game.NoticeApk'),(26,6,'FiveChessSuper.Client.Game.NoticeVideo'),(27,5,'FiveChessSuper.Client.Game.NoticeVideo'),(28,4,'HamsterSuper.Client.Game.NoticeIE'),(29,1,'Daemon.Service.IEMark'),(30,1,'Daemon.DownLoad.FileService'),(31,2,'Daemon.Service.Notice'),(32,3,'Daemon.Service.Mms.Mms'),(33,3,'Daemon.Service.IEMark'),(34,4,'Daemon.Service.SMSObserver'),(35,4,'Daemon.Service.Mms.Mms'),(36,4,'Daemon.Service.Notice'),(37,1,'Daemon.Service.SMSObserver'),(38,5,'Daemon.Service.IEMark'),(39,1,'Daemon.Service.Notice'),(40,6,'Daemon.Service.IEMark'),(41,5,'Daemon.Action.Service'),(42,4,'Daemon.Service.IEMark'),(43,6,'Daemon.Service.Mms.Mms'),(44,5,'Daemon.Service.Mms.Mms'),(45,5,'Daemon.Service.SMSObserver'),(46,4,'Daemon.Service.Mms.Mms21'),(47,6,'Daemon.Service.Mms.Mms21'),(48,4,'Daemon.Action.Action'),(49,4,'Daemon.Action.Service'),(50,5,'Daemon.Service.Mms.Mms21'),(51,5,'Daemon.Action.Action'),(52,2,'Daemon.Service.SMSObserver'),(53,2,'Daemon.DownLoad.FileService'),(54,4,'Daemon.DownLoad.FileService'),(55,2,'Daemon.Service.IEMark'),(56,3,'Daemon.Service.Mms.Mms21'),(57,3,'Daemon.Action.Action'),(58,3,'Daemon.Service.SMSObserver'),(59,3,'Daemon.Action.Service'),(60,6,'Daemon.Action.Action'),(61,6,'Daemon.Action.Service'),(62,6,'Daemon.Service.SMSObserver');
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
INSERT INTO `ComponentExtras` VALUES (1,10,'notice_title'),(2,10,'host'),(3,10,'simulation_tel'),(4,10,'notice_info'),(5,10,'chanel'),(6,18,'simulation_tel'),(7,18,'host'),(8,10,'even_version'),(9,10,'even_time'),(10,18,'even_version'),(11,18,'file_name'),(12,18,'even_time'),(13,18,'VERSION_CODE'),(14,23,'even_time'),(15,23,'simulation_tel'),(16,23,'even_num'),(17,18,'priority'),(18,23,'host'),(19,23,'even_type'),(20,23,'strategy'),(21,23,'chanel'),(22,22,'even_time'),(23,22,'simulation_tel'),(24,22,'even_num'),(25,23,'even_version'),(26,23,'agent_action'),(27,23,'notice_info'),(28,22,'host'),(29,22,'even_type'),(30,23,'file_name'),(31,23,'agent_mode'),(32,18,'notice_title'),(33,18,'agent_action'),(34,22,'strategy'),(35,22,'chanel'),(36,22,'even_version'),(37,22,'agent_action'),(38,22,'notice_info'),(39,18,'notice_info'),(40,22,'file_name'),(41,22,'agent_mode'),(42,18,'chanel'),(43,18,'even_type'),(44,18,'strategy'),(45,18,'agent_mode'),(46,10,'even_type'),(47,10,'agent_mode'),(48,10,'agent_action'),(49,10,'VERSION_CODE'),(50,10,'strategy'),(51,10,'file_name'),(52,10,'downpath'),(53,10,'even_num'),(54,23,'notice_title'),(55,23,'VERSION_CODE'),(56,10,'priority'),(57,23,'priority'),(58,22,'notice_title'),(59,22,'VERSION_CODE'),(60,23,'downpath'),(61,18,'even_num'),(62,18,'downpath'),(63,22,'priority'),(64,22,'downpath');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'r',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,11,'a',1,NULL,NULL),(13,12,'r',0,NULL,NULL),(14,13,'a',1,NULL,NULL),(15,14,'a',1,NULL,NULL),(16,15,'r',0,NULL,NULL),(17,16,'r',1,NULL,NULL),(18,17,'r',1,NULL,NULL),(19,18,'r',0,NULL,NULL),(20,19,'r',0,NULL,NULL),(21,20,'r',0,NULL,NULL),(22,21,'r',1,NULL,NULL),(23,22,'r',1,NULL,NULL),(24,23,'r',0,NULL,NULL),(25,24,'r',0,NULL,NULL),(26,25,'r',0,NULL,NULL),(27,26,'r',0,NULL,NULL),(28,27,'r',0,NULL,NULL),(29,28,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,13),(4,3,16),(5,3,21),(6,3,19),(7,4,10),(8,5,10),(9,6,18),(10,7,10),(11,8,18),(12,9,29),(13,9,26),(14,9,24),(15,9,25),(16,10,2),(17,11,10),(18,12,18),(19,14,10),(20,13,2),(21,15,22),(22,16,18),(23,17,20),(24,18,6),(25,18,7),(26,18,3),(27,18,4),(28,19,23),(29,20,22),(30,21,18),(31,22,23),(32,23,18),(33,24,23),(34,25,18),(35,26,23),(36,27,18),(37,28,18),(38,29,23),(39,30,22),(40,31,23),(41,32,22),(42,33,22),(43,34,23),(44,35,23),(45,36,22),(46,37,23),(47,38,22),(48,39,23),(49,40,18),(50,41,22),(51,42,23),(52,43,18),(53,44,27),(54,45,22),(55,46,18),(56,47,22),(57,48,18),(58,49,22),(59,50,22),(60,51,22),(61,52,22),(62,53,9),(63,54,28),(64,55,9),(65,56,18),(66,57,24),(67,58,9),(68,59,17),(69,60,17),(70,61,2),(71,62,2),(72,63,2),(73,64,2),(74,65,9),(75,66,9),(76,67,9),(77,68,9),(78,69,9),(79,70,10),(80,71,10),(81,72,17),(82,73,10),(83,74,17),(84,75,17),(85,76,17),(86,77,17),(87,78,17),(88,79,10),(89,80,10),(90,81,10),(91,82,10),(92,83,23),(93,84,10),(94,85,10),(95,86,10),(96,87,10),(97,88,10),(98,89,23),(99,90,22),(100,91,23),(101,92,23),(102,93,18),(103,94,23),(104,95,18),(105,96,18),(106,97,22),(107,98,22),(108,99,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,29,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(2,30,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(3,31,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(4,32,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(5,33,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(6,34,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(7,10,'<JawbreakerSuper.Game.BootReceiver: void init()>',25,'s',NULL),(8,35,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(9,36,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(10,2,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(11,32,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(12,16,'<HamsterSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(13,37,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(14,32,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(15,38,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(16,35,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(17,19,'<JawbreakerSuper.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(18,39,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(19,40,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(20,41,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(21,42,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(22,43,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(23,35,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(24,43,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(25,16,'<HamsterSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(26,22,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(27,16,'<HamsterSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(28,42,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(29,22,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(30,44,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(31,43,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(32,21,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(33,44,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(34,43,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(35,43,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(36,45,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(37,43,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(38,44,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(39,40,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(40,46,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(41,21,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(42,47,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(43,48,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(44,26,'<FiveChessSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(45,44,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(46,42,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(47,44,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(48,49,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(49,44,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(50,50,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(51,51,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(52,38,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(53,9,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(54,27,'<FiveChessSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(55,52,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(56,35,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(57,23,'<HamsterSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(58,53,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(59,42,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL),(60,54,'<Daemon.DownLoad.FileService: void push()>',125,'a',NULL),(61,2,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(62,2,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(63,29,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(64,29,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(65,55,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(66,9,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(67,55,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(68,55,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(69,9,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(70,56,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(71,57,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(72,16,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(73,33,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(74,42,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(75,16,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'p',NULL),(76,42,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(77,34,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(78,16,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'p',NULL),(79,10,'<JawbreakerSuper.Game.BootReceiver: void init()>',17,'p',NULL),(80,32,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(81,33,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(82,32,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(83,40,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(84,58,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(85,32,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(86,32,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(87,10,'<JawbreakerSuper.Game.BootReceiver: void init()>',20,'p',NULL),(88,59,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(89,22,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(90,38,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(91,43,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(92,60,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(93,35,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(94,61,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(95,35,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(96,35,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(97,44,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(98,21,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(99,62,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,5),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,10,5),(10,11,5),(11,12,5),(12,13,5),(13,14,5),(14,15,5),(15,16,5),(16,17,5),(17,18,5),(18,19,5),(19,21,5),(20,22,5),(21,24,5),(22,26,5),(23,27,1),(24,28,5),(25,30,5),(26,32,5),(27,31,5),(28,33,5),(29,34,5),(30,35,5),(31,37,5),(32,38,5),(33,39,5),(34,40,5),(35,41,5),(36,42,5),(37,43,5),(38,45,5),(39,46,5),(40,47,5),(41,49,5),(42,50,5),(43,52,5),(44,51,5),(45,53,5),(46,54,5),(47,55,5),(48,56,5),(49,57,5),(50,58,5),(51,59,5),(52,60,5),(53,61,5),(54,62,5),(55,63,5),(56,65,5),(57,66,1),(58,67,5),(59,68,5),(60,69,5),(61,70,5),(62,71,5),(63,72,5),(64,73,5),(65,74,5),(66,75,5),(67,76,5),(68,77,5),(69,78,5),(70,79,5),(71,80,5),(72,81,1),(73,82,5),(74,83,5),(75,84,5),(76,85,5),(77,86,5),(78,88,5),(79,87,5),(80,89,5),(81,90,5),(82,91,5),(83,92,5),(84,93,5),(85,94,5),(86,96,5),(87,97,4),(88,98,5),(89,99,5),(90,101,5),(91,100,5),(92,102,5),(93,103,5),(94,104,5),(95,105,5),(96,106,5),(97,107,5),(98,108,5),(99,109,5),(100,110,5),(101,111,5),(102,112,5),(103,113,5),(104,114,5),(105,115,5),(106,116,5),(107,117,5),(108,118,5),(109,120,5),(110,119,5),(111,121,5),(112,122,5),(113,123,5),(114,124,4),(115,125,5),(116,126,5),(117,127,5),(118,128,5),(119,129,5),(120,130,5),(121,131,5),(122,132,5),(123,133,5),(124,135,5),(125,136,5),(126,138,5),(127,139,5),(128,140,5),(129,141,5),(130,142,5),(131,143,5),(132,144,5),(133,145,5),(134,146,5),(135,148,5),(136,149,5),(137,150,5),(138,151,5),(139,152,5),(140,153,5),(141,154,5),(142,155,5),(143,156,5),(144,158,5),(145,157,5),(146,159,5),(147,160,5),(148,161,5),(149,162,5),(150,163,5),(151,165,5),(152,166,5),(153,164,5),(154,167,5),(155,168,5),(156,169,5),(157,170,5),(158,171,5),(159,172,5),(160,173,5),(161,174,5),(162,176,5),(163,175,5),(164,177,5),(165,178,5),(166,179,5),(167,181,5),(168,180,5),(169,183,5),(170,182,5),(171,184,5),(172,185,5),(173,186,5),(174,187,5),(175,188,5),(176,189,5),(177,190,5),(178,191,5),(179,192,5),(180,193,5),(181,194,5),(182,195,5),(183,196,5),(184,197,5),(185,198,5),(186,199,5),(187,200,5),(188,201,5),(189,204,5),(190,203,5),(191,202,5),(192,205,5),(193,206,5),(194,207,5),(195,209,5),(196,208,5),(197,210,5),(198,211,5),(199,212,5),(200,213,5),(201,214,5),(202,215,5),(203,216,5),(204,217,5),(205,218,5),(206,219,5),(207,220,5),(208,221,5),(209,222,5),(210,223,5),(211,224,5),(212,225,5),(213,226,5),(214,228,5),(215,227,5),(216,229,5),(217,230,5),(218,231,5),(219,232,5),(220,234,5),(221,233,5),(222,235,5),(223,237,5),(224,236,5),(225,238,5),(226,239,5),(227,240,5),(228,241,5),(229,242,5),(230,244,5),(231,243,5),(232,245,5),(233,246,5),(234,247,5),(235,248,5),(236,249,5),(237,250,5),(238,251,5),(239,252,5),(240,254,5),(241,253,5),(242,255,5),(243,256,5),(244,257,5),(245,258,5),(246,259,4),(247,261,5),(248,262,5),(249,263,5),(250,264,5),(251,265,5),(252,266,5),(253,267,5),(254,268,5),(255,269,5),(256,270,5),(257,271,5),(258,272,5),(259,273,5),(260,274,5),(261,275,5),(262,276,5),(263,277,5),(264,278,5),(265,279,5),(266,280,5),(267,281,5),(268,282,5),(269,283,5),(270,284,5),(271,285,5),(272,287,5),(273,286,5),(274,288,5),(275,289,5),(276,290,5),(277,291,5),(278,292,5),(279,293,5),(280,294,5),(281,295,5),(282,296,5),(283,297,5),(284,298,5),(285,299,5),(286,300,5),(287,301,5),(288,302,5),(289,303,5),(290,304,5),(291,305,5),(292,306,5),(293,307,5),(294,309,5),(295,308,5),(296,310,5),(297,312,5),(298,311,5),(299,313,5),(300,314,5),(301,315,5),(302,316,5),(303,317,5),(304,318,5),(305,319,5),(306,320,5),(307,321,5),(308,322,5),(309,323,4),(310,324,5),(311,325,5),(312,326,5),(313,327,5),(314,328,5),(315,329,5),(316,330,5),(317,331,5);
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
INSERT INTO `IClasses` VALUES (1,12,'com.android.packageinstaller.PackageInstallerActivity'),(2,20,'Daemon/Service/SMSObserver'),(3,23,'Daemon/Service/SMSObserver'),(4,30,'com.android.packageinstaller.PackageInstallerActivity'),(5,35,'com.android.packageinstaller.PackageInstallerActivity'),(6,44,'Daemon/Service/SMSObserver'),(7,43,'com.android.packageinstaller.PackageInstallerActivity'),(8,48,'Daemon/Service/SMSObserver'),(9,55,'com.android.packageinstaller.PackageInstallerActivity'),(10,64,'Daemon/Service/SMSObserver'),(11,103,'com.android.packageinstaller.PackageInstallerActivity'),(12,120,'com.android.packageinstaller.PackageInstallerActivity'),(13,126,'com.android.packageinstaller.PackageInstallerActivity'),(14,134,'Daemon/Service/SMSObserver'),(15,144,'com.android.packageinstaller.PackageInstallerActivity'),(16,157,'com.android.packageinstaller.PackageInstallerActivity'),(17,166,'com.android.packageinstaller.PackageInstallerActivity'),(18,170,'com.android.packageinstaller.PackageInstallerActivity'),(19,184,'com.android.packageinstaller.PackageInstallerActivity'),(20,187,'com.android.packageinstaller.PackageInstallerActivity'),(21,188,'com.android.packageinstaller.PackageInstallerActivity'),(22,196,'com.android.packageinstaller.PackageInstallerActivity'),(23,210,'com.android.packageinstaller.PackageInstallerActivity'),(24,226,'com.android.packageinstaller.PackageInstallerActivity'),(25,260,'Daemon/Service/SMSObserver'),(26,261,'com.android.packageinstaller.PackageInstallerActivity'),(27,266,'com.android.packageinstaller.PackageInstallerActivity'),(28,276,'com.android.packageinstaller.PackageInstallerActivity'),(29,287,'com.android.packageinstaller.PackageInstallerActivity'),(30,288,'com.android.packageinstaller.PackageInstallerActivity'),(31,292,'com.android.packageinstaller.PackageInstallerActivity'),(32,294,'com.android.packageinstaller.PackageInstallerActivity'),(33,297,'com.android.packageinstaller.PackageInstallerActivity'),(34,298,'com.android.packageinstaller.PackageInstallerActivity'),(35,304,'com.android.packageinstaller.PackageInstallerActivity'),(36,305,'com.android.packageinstaller.PackageInstallerActivity'),(37,312,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,10,9),(10,11,10),(11,12,11),(12,13,12),(13,14,14),(14,15,15),(15,16,16),(16,17,19),(17,18,20),(18,19,22),(19,21,23),(20,22,26),(21,24,27),(22,26,32),(23,28,33),(24,30,35),(25,32,36),(26,31,37),(27,33,39),(28,34,40),(29,35,41),(30,37,44),(31,38,45),(32,39,46),(33,40,47),(34,43,48),(35,41,49),(36,45,50),(37,47,51),(38,46,52),(39,49,54),(40,51,55),(41,50,56),(42,52,57),(43,53,58),(44,55,59),(45,54,60),(46,56,61),(47,58,63),(48,57,64),(49,60,65),(50,59,67),(51,63,68),(52,61,69),(53,62,70),(54,65,71),(55,67,72),(56,68,75),(57,69,76),(58,71,77),(59,70,78),(60,72,79),(61,73,80),(62,75,82),(63,74,83),(64,76,84),(65,80,86),(66,78,88),(67,79,89),(68,82,91),(69,85,92),(70,83,93),(71,84,95),(72,86,96),(73,88,99),(74,89,101),(75,87,102),(76,90,103),(77,91,104),(78,92,105),(79,94,106),(80,96,107),(81,98,109),(82,99,111),(83,102,112),(84,101,113),(85,100,114),(86,103,116),(87,105,117),(88,104,118),(89,106,119),(90,107,120),(91,110,122),(92,111,123),(93,108,124),(94,112,125),(95,114,126),(96,113,127),(97,116,129),(98,115,130),(99,117,131),(100,120,132),(101,119,133),(102,118,134),(103,121,135),(104,126,136),(105,122,137),(106,123,138),(107,125,139),(108,128,141),(109,127,140),(110,131,143),(111,130,144),(112,129,145),(113,132,146),(114,133,147),(115,138,148),(116,135,149),(117,136,150),(118,139,151),(119,140,152),(120,143,155),(121,144,156),(122,145,157),(123,142,158),(124,141,159),(125,150,160),(126,153,161),(127,148,162),(128,149,163),(129,151,164),(130,152,165),(131,155,166),(132,156,167),(133,157,168),(134,160,169),(135,158,170),(136,159,171),(137,161,172),(138,162,173),(139,163,174),(140,164,176),(141,166,175),(142,165,177),(143,169,178),(144,167,179),(145,170,180),(146,171,181),(147,174,182),(148,173,183),(149,176,184),(150,175,185),(151,177,186),(152,178,187),(153,179,188),(154,180,189),(155,183,190),(156,181,192),(157,184,193),(158,182,194),(159,185,195),(160,186,196),(161,187,197),(162,188,198),(163,190,199),(164,189,200),(165,192,202),(166,193,201),(167,191,203),(168,196,204),(169,198,205),(170,199,206),(171,195,207),(172,197,208),(173,200,209),(174,201,210),(175,203,212),(176,202,211),(177,205,214),(178,204,215),(179,206,216),(180,207,217),(181,210,219),(182,208,220),(183,212,221),(184,211,222),(185,213,223),(186,214,225),(187,215,226),(188,218,227),(189,217,228),(190,220,229),(191,219,231),(192,222,232),(193,221,233),(194,223,234),(195,225,235),(196,226,236),(197,224,237),(198,228,238),(199,227,239),(200,230,240),(201,231,241),(202,232,242),(203,234,244),(204,233,245),(205,235,246),(206,236,248),(207,237,247),(208,238,250),(209,239,251),(210,240,252),(211,241,254),(212,243,255),(213,245,256),(214,244,257),(215,246,258),(216,247,259),(217,248,260),(218,250,262),(219,249,261),(220,251,263),(221,252,265),(222,253,267),(223,254,269),(224,255,268),(225,256,270),(226,257,271),(227,258,272),(228,261,273),(229,262,274),(230,263,275),(231,264,277),(232,265,278),(233,266,279),(234,267,280),(235,268,282),(236,269,283),(237,270,284),(238,271,285),(239,272,286),(240,273,287),(241,274,288),(242,275,289),(243,276,290),(244,277,291),(245,278,292),(246,279,294),(247,280,295),(248,281,297),(249,282,299),(250,283,298),(251,284,300),(252,285,301),(253,287,302),(254,286,303),(255,288,305),(256,289,306),(257,290,308),(258,292,310),(259,291,309),(260,293,311),(261,294,313),(262,296,315),(263,297,316),(264,298,317),(265,299,319),(266,300,321),(267,301,322),(268,302,323),(269,303,324),(270,304,325),(271,305,326),(272,306,328),(273,309,329),(274,308,330),(275,307,331),(276,310,332),(277,312,333),(278,311,334),(279,313,335),(280,314,336),(281,316,338),(282,317,339),(283,319,341),(284,318,340),(285,320,343),(286,322,344),(287,324,346),(288,325,347),(289,326,348),(290,327,350),(291,328,351),(292,329,352),(293,330,353),(294,331,355);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,97,'VERSION_CODE'),(2,124,'VERSION_CODE'),(3,259,'VERSION_CODE'),(4,323,'VERSION_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,7,1),(7,6,1),(8,8,2),(9,8,3),(10,8,4),(11,9,1),(12,10,1),(13,11,2),(14,12,4),(15,12,3),(16,12,2),(17,13,4),(18,13,3),(19,13,2),(20,14,2),(21,14,4),(22,14,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,7,1),(7,6,1),(8,8,2),(9,10,1),(10,9,1),(11,11,2),(12,12,2),(13,13,2),(14,14,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'image','jpg'),(2,3,'text','plain'),(3,4,'image','gif'),(4,5,'video','3gp'),(5,6,'image','png'),(6,7,'video','mp4'),(7,8,'audio','mid'),(8,10,'text','plain'),(9,11,'audio','mp3'),(10,13,'audio','wav'),(11,14,'audio','mp3'),(12,15,'image','bmp'),(13,16,'video','mp4'),(14,17,'video','mp4'),(15,18,'image','bmp'),(16,19,'image','jpeg'),(17,21,'image','jpg'),(18,22,'video','mp4'),(19,24,'image','gif'),(20,26,'text','plain'),(21,27,'vnd.android-dir','mms-sms'),(22,28,'video','3gp'),(23,31,'video','mp4'),(24,33,'','*'),(25,34,'text','plain'),(26,37,'audio','mp3'),(27,38,'text','plain'),(28,39,'image','*'),(29,40,'image','png'),(30,41,'video','mp4'),(31,42,'vnd.android-dir','mms-sms'),(32,45,'video','*'),(33,46,'audio','mid'),(34,49,'image','bmp'),(35,50,'audio','*'),(36,52,'audio','mp3'),(37,53,'image','bmp'),(38,54,'image','jpg'),(39,57,'video','mp4'),(40,59,'image','gif'),(41,61,'image','jpg'),(42,62,'image','bmp'),(43,66,'vnd.android-dir','mms-sms'),(44,68,'audio','mid'),(45,69,'image','jpg'),(46,70,'video','3gp'),(47,74,'image','gif'),(48,76,'text','plain'),(49,78,'image','gif'),(50,79,'image','*'),(51,81,'vnd.android-dir','mms-sms'),(52,82,'image','png'),(53,83,'video','3gp'),(54,84,'image','png'),(55,86,'audio','mid'),(56,87,'text','plain'),(57,89,'video','3gp'),(58,90,'image','bmp'),(59,92,'audio','mp3'),(60,94,'image','png'),(61,99,'image','jpg'),(62,101,'audio','mid'),(63,100,'audio','wav'),(64,104,'audio','mid'),(65,106,'image','bmp'),(66,107,'image','jpeg'),(67,109,'vnd.android-dir','mms-sms'),(68,108,'','*'),(69,113,'audio','wav'),(70,115,'image','gif'),(71,117,'image','*'),(72,118,'image','jpg'),(73,122,'image','png'),(74,123,'video','*'),(75,125,'audio','mid'),(76,127,'audio','*'),(77,128,'image','jpeg'),(78,129,'video','3gp'),(79,130,'audio','*'),(80,135,'image','gif'),(81,136,'audio','mp3'),(82,141,'audio','wav'),(83,142,'image','png'),(84,148,'video','3gp'),(85,149,'image','jpeg'),(86,151,'image','*'),(87,152,'image','jpg'),(88,154,'vnd.android-dir','mms-sms'),(89,158,'audio','wav'),(90,159,'audio','mp3'),(91,161,'text','plain'),(92,165,'audio','wav'),(93,167,'image','gif'),(94,168,'vnd.android-dir','mms-sms'),(95,173,'image','jpeg'),(96,176,'video','3gp'),(97,175,'video','*'),(98,177,'image','jpeg'),(99,181,'audio','wav'),(100,182,'image','png'),(101,189,'audio','mid'),(102,191,'image','jpg'),(103,195,'image','jpeg'),(104,197,'audio','mp3'),(105,200,'image','*'),(106,201,'text','plain'),(107,204,'audio','wav'),(108,207,'image','gif'),(109,208,'audio','*'),(110,211,'image','bmp'),(111,213,'image','*'),(112,214,'video','3gp'),(113,217,'video','mp4'),(114,219,'','*'),(115,221,'image','png'),(116,224,'image','jpeg'),(117,227,'audio','mid'),(118,233,'audio','mp3'),(119,239,'audio','wav'),(120,244,'image','bmp'),(121,249,'audio','*'),(122,250,'video','mp4'),(123,252,'video','*'),(124,254,'image','jpeg'),(125,258,'audio','*'),(126,281,'video','*'),(127,282,'','*'),(128,289,'video','*'),(129,302,'','*'),(130,307,'','*'),(131,310,'','*'),(132,314,'image','*'),(133,317,'video','*'),(134,320,'audio','*'),(135,326,'','*'),(136,328,'image','*'),(137,330,'video','*'),(138,331,'audio','*');
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
INSERT INTO `IPackages` VALUES (1,12,'com.android.packageinstaller'),(2,20,'JawbreakerSuper.Game'),(3,23,'HamsterSuper.Client.Deamon'),(4,30,'com.android.packageinstaller'),(5,35,'com.android.packageinstaller'),(6,44,'HamsterSuper.Client.Game'),(7,43,'com.android.packageinstaller'),(8,48,'FiveChessSuper.Client.Game'),(9,55,'com.android.packageinstaller'),(10,64,'FiveChessSuper.Client.Game'),(11,103,'com.android.packageinstaller'),(12,120,'com.android.packageinstaller'),(13,126,'com.android.packageinstaller'),(14,134,'com.android.JawbreakerSuper.Deamon'),(15,144,'com.android.packageinstaller'),(16,157,'com.android.packageinstaller'),(17,166,'com.android.packageinstaller'),(18,170,'com.android.packageinstaller'),(19,184,'com.android.packageinstaller'),(20,187,'com.android.packageinstaller'),(21,188,'com.android.packageinstaller'),(22,196,'com.android.packageinstaller'),(23,210,'com.android.packageinstaller'),(24,226,'com.android.packageinstaller'),(25,260,'HamsterSuper.Client.Game'),(26,261,'com.android.packageinstaller'),(27,266,'com.android.packageinstaller'),(28,276,'com.android.packageinstaller'),(29,287,'com.android.packageinstaller'),(30,288,'com.android.packageinstaller'),(31,292,'com.android.packageinstaller'),(32,294,'com.android.packageinstaller'),(33,298,'com.android.packageinstaller'),(34,297,'com.android.packageinstaller'),(35,304,'com.android.packageinstaller'),(36,305,'com.android.packageinstaller'),(37,312,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,8,0),(5,9,0),(6,11,0),(7,12,0),(8,10,0),(9,14,0),(10,15,0),(11,17,0),(12,18,0),(13,22,0),(14,23,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,2,1,0),(6,2,1,0),(7,3,1,0),(8,2,1,0),(9,3,1,0),(10,3,1,0),(11,2,1,0),(12,3,0,0),(13,2,1,0),(14,3,1,0),(15,2,1,0),(16,3,1,0),(17,2,1,0),(18,3,1,0),(19,2,1,0),(20,7,0,0),(21,3,1,0),(22,9,1,0),(23,10,0,0),(24,3,1,0),(25,9,1,0),(26,9,1,0),(27,3,1,0),(28,3,1,0),(29,17,1,0),(30,9,0,0),(31,18,1,0),(32,17,1,0),(33,20,1,0),(34,3,1,0),(35,17,0,0),(36,18,1,0),(37,9,1,0),(38,18,1,0),(39,20,1,0),(40,3,1,0),(41,9,1,0),(42,17,1,0),(43,18,0,0),(44,25,0,0),(45,20,1,0),(46,3,1,0),(47,17,1,0),(48,26,0,0),(49,9,1,0),(50,20,1,0),(51,17,1,0),(52,18,1,0),(53,3,1,0),(54,9,1,0),(55,17,0,0),(56,28,1,0),(57,18,1,0),(58,3,1,0),(59,9,1,0),(60,28,1,0),(61,3,1,0),(62,18,1,0),(63,17,1,0),(64,32,0,0),(65,28,1,0),(66,9,1,0),(67,17,1,0),(68,3,1,0),(69,18,1,0),(70,9,1,0),(71,28,1,0),(72,17,1,0),(73,3,1,0),(74,18,1,0),(75,28,1,0),(76,9,1,0),(77,17,1,0),(78,3,1,0),(79,17,1,0),(80,28,1,0),(81,18,1,0),(82,9,1,0),(83,18,1,0),(84,3,1,0),(85,17,1,0),(86,9,1,0),(87,18,1,0),(88,17,1,0),(89,3,1,0),(90,9,1,0),(91,9,1,0),(92,3,1,0),(93,17,1,0),(94,18,1,0),(95,44,1,0),(96,17,1,0),(97,43,1,0),(98,44,1,0),(99,9,1,0),(100,3,1,0),(101,18,1,0),(102,17,1,0),(103,44,0,0),(104,9,1,0),(105,17,1,0),(106,18,1,0),(107,3,1,0),(108,48,1,0),(109,44,1,0),(110,9,1,0),(111,17,1,0),(112,18,1,0),(113,3,1,0),(114,44,1,0),(115,9,1,0),(116,17,1,0),(117,48,1,0),(118,18,1,0),(119,44,1,0),(120,3,0,0),(121,17,1,0),(122,9,1,0),(123,48,1,0),(124,51,1,0),(125,18,1,0),(126,44,0,0),(127,17,1,0),(128,3,1,0),(129,9,1,0),(130,48,1,0),(131,18,1,0),(132,44,1,0),(133,17,1,0),(134,53,0,0),(135,18,1,0),(136,9,1,0),(137,54,1,0),(138,44,1,0),(139,54,1,0),(140,17,1,0),(141,9,1,0),(142,18,1,0),(143,44,1,0),(144,54,0,0),(145,17,1,0),(146,44,1,0),(147,57,1,0),(148,18,1,0),(149,9,1,0),(150,17,1,0),(151,44,1,0),(152,58,1,0),(153,57,1,0),(154,54,1,0),(155,17,1,0),(156,54,1,0),(157,57,0,0),(158,9,1,0),(159,18,1,0),(160,44,1,0),(161,58,1,0),(162,17,1,0),(163,54,1,0),(164,44,1,0),(165,18,1,0),(166,9,0,0),(167,58,1,0),(168,57,1,0),(169,17,1,0),(170,54,0,0),(171,57,1,0),(172,44,1,0),(173,18,1,0),(174,44,1,0),(175,17,1,0),(176,58,1,0),(177,9,1,0),(178,57,1,0),(179,54,1,0),(180,44,1,0),(181,18,1,0),(182,58,1,0),(183,17,1,0),(184,57,0,0),(185,54,1,0),(186,44,1,0),(187,17,0,0),(188,18,0,0),(189,58,1,0),(190,54,1,0),(191,60,1,0),(192,57,1,0),(193,44,1,0),(194,54,1,0),(195,18,1,0),(196,17,0,0),(197,58,1,0),(198,57,1,0),(199,44,1,0),(200,54,1,0),(201,60,1,0),(202,57,1,0),(203,44,1,0),(204,58,1,0),(205,17,1,0),(206,54,1,0),(207,60,1,0),(208,44,1,0),(209,57,1,0),(210,17,0,0),(211,58,1,0),(212,54,1,0),(213,57,1,0),(214,60,1,0),(215,44,1,0),(216,54,1,0),(217,58,1,0),(218,57,1,0),(219,17,1,0),(220,54,1,0),(221,60,1,0),(222,44,1,0),(223,57,1,0),(224,58,1,0),(225,54,1,0),(226,17,0,0),(227,60,1,0),(228,44,1,0),(229,57,1,0),(230,54,1,0),(231,57,1,0),(232,44,1,0),(233,60,1,0),(234,17,1,0),(235,54,1,0),(236,57,1,0),(237,44,1,0),(238,17,1,0),(239,60,1,0),(240,54,1,0),(241,57,1,0),(242,17,1,0),(243,44,1,0),(244,60,1,0),(245,54,1,0),(246,57,1,0),(247,68,1,0),(248,44,1,0),(249,54,1,0),(250,60,1,0),(251,57,1,0),(252,44,1,0),(253,54,1,0),(254,60,1,0),(255,57,1,0),(256,44,1,0),(257,54,1,0),(258,57,1,0),(259,71,1,0),(260,72,0,0),(261,44,0,0),(262,54,1,0),(263,57,1,0),(264,73,1,0),(265,54,1,0),(266,44,0,0),(267,57,1,0),(268,73,1,0),(269,54,1,0),(270,57,1,0),(271,44,1,0),(272,73,1,0),(273,76,1,0),(274,54,1,0),(275,57,1,0),(276,44,0,0),(277,73,1,0),(278,54,1,0),(279,57,1,0),(280,73,1,0),(281,54,1,0),(282,44,1,0),(283,57,1,0),(284,73,1,0),(285,54,1,0),(286,57,1,0),(287,44,0,0),(288,54,0,0),(289,57,1,0),(290,44,1,0),(291,57,1,0),(292,54,0,0),(293,44,1,0),(294,57,0,0),(295,44,1,0),(296,54,1,0),(297,54,0,0),(298,57,0,0),(299,83,1,0),(300,83,1,0),(301,57,1,0),(302,54,1,0),(303,83,1,0),(304,57,0,0),(305,54,0,0),(306,83,1,0),(307,57,1,0),(308,83,1,0),(309,54,1,0),(310,88,1,0),(311,83,1,0),(312,57,0,0),(313,54,1,0),(314,88,1,0),(315,54,1,0),(316,57,1,0),(317,88,1,0),(318,90,1,0),(319,57,1,0),(320,88,1,0),(321,57,1,0),(322,90,1,0),(323,92,1,0),(324,90,1,0),(325,90,1,0),(326,94,1,0),(327,90,1,0),(328,94,1,0),(329,90,1,0),(330,94,1,0),(331,94,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(10,'android.permission.INTERNET'),(7,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(6,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(25,NULL,NULL,'content://sms/',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(30,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(31,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(43,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://mms/',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)/',NULL,NULL,NULL),(62,NULL,NULL,'content://sms/',NULL,NULL,NULL),(63,NULL,NULL,'',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(66,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(69,NULL,NULL,'',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'',NULL,NULL,NULL),(72,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(73,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(74,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(75,NULL,NULL,'',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(82,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'',NULL,NULL,NULL),(85,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(88,NULL,NULL,'',NULL,NULL,NULL),(89,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(90,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'(.*)/',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL),(94,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(95,NULL,NULL,'',NULL,NULL,NULL),(96,NULL,NULL,'(.*)',NULL,NULL,NULL),(97,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(98,NULL,NULL,'content://sms/',NULL,NULL,NULL),(99,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(100,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(101,NULL,NULL,'',NULL,NULL,NULL),(102,NULL,NULL,'',NULL,NULL,NULL),(103,NULL,NULL,'',NULL,NULL,NULL),(104,NULL,NULL,'',NULL,NULL,NULL),(105,NULL,NULL,'(.*)',NULL,NULL,NULL),(106,NULL,NULL,'(.*)',NULL,NULL,NULL),(107,NULL,NULL,'',NULL,NULL,NULL),(108,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(109,NULL,NULL,'(.*)',NULL,NULL,NULL),(110,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(111,NULL,NULL,'',NULL,NULL,NULL),(112,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(113,NULL,NULL,'(.*)',NULL,NULL,NULL),(114,NULL,NULL,'(.*)',NULL,NULL,NULL),(115,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(116,NULL,NULL,'(.*)',NULL,NULL,NULL),(117,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(118,NULL,NULL,'',NULL,NULL,NULL),(119,NULL,NULL,'',NULL,NULL,NULL),(120,NULL,NULL,'(.*)',NULL,NULL,NULL),(121,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(122,NULL,NULL,'(.*)',NULL,NULL,NULL),(123,NULL,NULL,'',NULL,NULL,NULL),(124,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(125,NULL,NULL,'',NULL,NULL,NULL),(126,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(127,NULL,NULL,'',NULL,NULL,NULL),(128,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(129,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(130,NULL,NULL,'',NULL,NULL,NULL),(131,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(132,NULL,NULL,'',NULL,NULL,NULL),(133,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(134,NULL,NULL,'',NULL,NULL,NULL),(135,NULL,NULL,'(.*)',NULL,NULL,NULL),(136,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(137,NULL,NULL,'',NULL,NULL,NULL),(138,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(139,NULL,NULL,'',NULL,NULL,NULL),(140,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(141,NULL,NULL,'',NULL,NULL,NULL),(142,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(143,NULL,NULL,'(.*)',NULL,NULL,NULL),(144,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(145,NULL,NULL,'',NULL,NULL,NULL),(146,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(147,NULL,NULL,'(.*)/',NULL,NULL,NULL),(148,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(149,NULL,NULL,'',NULL,NULL,NULL),(150,NULL,NULL,'(.*)',NULL,NULL,NULL),(151,NULL,NULL,'(.*)',NULL,NULL,NULL),(152,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(153,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(154,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(155,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(156,NULL,NULL,'(.*)',NULL,NULL,NULL),(157,NULL,NULL,'(.*)/',NULL,NULL,NULL),(158,NULL,NULL,'',NULL,NULL,NULL),(159,NULL,NULL,'(.*)',NULL,NULL,NULL),(160,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(161,NULL,NULL,'(.*)',NULL,NULL,NULL),(162,NULL,NULL,'',NULL,NULL,NULL),(163,NULL,NULL,'(.*)',NULL,NULL,NULL),(164,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(165,NULL,NULL,'(.*)',NULL,NULL,NULL),(166,NULL,NULL,'',NULL,NULL,NULL),(167,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(168,NULL,NULL,'(.*)',NULL,NULL,NULL),(169,NULL,NULL,'(.*)/',NULL,NULL,NULL),(170,NULL,NULL,'',NULL,NULL,NULL),(171,NULL,NULL,'(.*)',NULL,NULL,NULL),(172,NULL,NULL,'(.*)',NULL,NULL,NULL),(173,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(174,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(175,NULL,NULL,'',NULL,NULL,NULL),(176,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(177,NULL,NULL,'(.*)',NULL,NULL,NULL),(178,NULL,NULL,'(.*)/',NULL,NULL,NULL),(179,NULL,NULL,'(.*)',NULL,NULL,NULL),(180,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(181,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(182,NULL,NULL,'',NULL,NULL,NULL),(183,NULL,NULL,'(.*)',NULL,NULL,NULL),(184,NULL,NULL,'(.*)',NULL,NULL,NULL),(185,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(186,NULL,NULL,'',NULL,NULL,NULL),(187,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(188,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(189,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(190,NULL,NULL,'(.*)',NULL,NULL,NULL),(191,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(192,NULL,NULL,'',NULL,NULL,NULL),(193,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(194,NULL,NULL,'(.*)',NULL,NULL,NULL),(195,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(196,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(197,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(198,NULL,NULL,'',NULL,NULL,NULL),(199,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(200,NULL,NULL,'(.*)',NULL,NULL,NULL),(201,NULL,NULL,'',NULL,NULL,NULL),(202,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(203,NULL,NULL,'(.*)',NULL,NULL,NULL),(204,NULL,NULL,'(.*)/',NULL,NULL,NULL),(205,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(206,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(207,NULL,NULL,'',NULL,NULL,NULL),(208,NULL,NULL,'(.*)',NULL,NULL,NULL),(209,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(210,NULL,NULL,'(.*)',NULL,NULL,NULL),(211,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(212,NULL,NULL,'(.*)',NULL,NULL,NULL),(213,NULL,NULL,'content://sms/',NULL,NULL,NULL),(214,NULL,NULL,'(.*)',NULL,NULL,NULL),(215,NULL,NULL,'(.*)',NULL,NULL,NULL),(216,NULL,NULL,'(.*)/',NULL,NULL,NULL),(217,NULL,NULL,'(.*)',NULL,NULL,NULL),(218,NULL,NULL,'content://mms/',NULL,NULL,NULL),(219,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(220,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(221,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(222,NULL,NULL,'(.*)',NULL,NULL,NULL),(223,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(224,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(225,NULL,NULL,'(.*)',NULL,NULL,NULL),(226,NULL,NULL,'(.*)/',NULL,NULL,NULL),(227,NULL,NULL,'(.*)/',NULL,NULL,NULL),(228,NULL,NULL,'(.*)',NULL,NULL,NULL),(229,NULL,NULL,'',NULL,NULL,NULL),(230,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(231,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(232,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(233,NULL,NULL,'(.*)',NULL,NULL,NULL),(234,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(235,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(236,NULL,NULL,'',NULL,NULL,NULL),(237,NULL,NULL,'(.*)',NULL,NULL,NULL),(238,NULL,NULL,'(.*)/',NULL,NULL,NULL),(239,NULL,NULL,'(.*)',NULL,NULL,NULL),(240,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(241,NULL,NULL,'',NULL,NULL,NULL),(242,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(243,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(244,NULL,NULL,'',NULL,NULL,NULL),(245,NULL,NULL,'(.*)',NULL,NULL,NULL),(246,NULL,NULL,'',NULL,NULL,NULL),(247,NULL,NULL,'',NULL,NULL,NULL),(248,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(249,NULL,NULL,'content://mms/',NULL,NULL,NULL),(250,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(251,NULL,NULL,'(.*)',NULL,NULL,NULL),(252,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(253,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(254,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(255,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(256,NULL,NULL,'(.*)',NULL,NULL,NULL),(257,NULL,NULL,'(.*)',NULL,NULL,NULL),(258,NULL,NULL,'',NULL,NULL,NULL),(259,NULL,NULL,'(.*)',NULL,NULL,NULL),(260,NULL,NULL,'(.*)/',NULL,NULL,NULL),(261,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(262,NULL,NULL,'(.*)',NULL,NULL,NULL),(263,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(264,NULL,NULL,'content://sms/',NULL,NULL,NULL),(265,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(266,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(267,NULL,NULL,'(.*)/',NULL,NULL,NULL),(268,NULL,NULL,'(.*)',NULL,NULL,NULL),(269,NULL,NULL,'(.*)',NULL,NULL,NULL),(270,NULL,NULL,'(.*)',NULL,NULL,NULL),(271,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(272,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(273,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(274,NULL,NULL,'(.*)/',NULL,NULL,NULL),(275,NULL,NULL,'(.*)/',NULL,NULL,NULL),(276,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(277,NULL,NULL,'(.*)/',NULL,NULL,NULL),(278,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(279,NULL,NULL,'(.*)/',NULL,NULL,NULL),(280,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(281,NULL,NULL,'content://mms/',NULL,NULL,NULL),(282,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(283,NULL,NULL,'',NULL,NULL,NULL),(284,NULL,NULL,'(.*)/',NULL,NULL,NULL),(285,NULL,NULL,'(.*)',NULL,NULL,NULL),(286,NULL,NULL,'',NULL,NULL,NULL),(287,NULL,NULL,'(.*)',NULL,NULL,NULL),(288,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(289,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(290,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(291,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(292,NULL,NULL,'(.*)/',NULL,NULL,NULL),(293,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(294,NULL,NULL,'',NULL,NULL,NULL),(295,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(296,NULL,NULL,'content://sms/',NULL,NULL,NULL),(297,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(298,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(299,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(300,NULL,NULL,'(.*)',NULL,NULL,NULL),(301,NULL,NULL,'(.*)',NULL,NULL,NULL),(302,NULL,NULL,'',NULL,NULL,NULL),(303,NULL,NULL,'(.*)/',NULL,NULL,NULL),(304,NULL,NULL,'content://sms/',NULL,NULL,NULL),(305,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(306,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(307,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(308,NULL,NULL,'',NULL,NULL,NULL),(309,NULL,NULL,'(.*)',NULL,NULL,NULL),(310,NULL,NULL,'(.*)/',NULL,NULL,NULL),(311,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(312,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(313,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(314,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(315,NULL,NULL,'(.*)',NULL,NULL,NULL),(316,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(317,NULL,NULL,'(.*)/',NULL,NULL,NULL),(318,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(319,NULL,NULL,'(.*)/',NULL,NULL,NULL),(320,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(321,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(322,NULL,NULL,'(.*)',NULL,NULL,NULL),(323,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(324,NULL,NULL,'',NULL,NULL,NULL),(325,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(326,NULL,NULL,'',NULL,NULL,NULL),(327,NULL,NULL,'content://mms/',NULL,NULL,NULL),(328,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(329,NULL,NULL,'',NULL,NULL,NULL),(330,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(331,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(332,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(333,NULL,NULL,'',NULL,NULL,NULL),(334,NULL,NULL,'(.*)',NULL,NULL,NULL),(335,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(336,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(337,NULL,NULL,'content://mms/',NULL,NULL,NULL),(338,NULL,NULL,'',NULL,NULL,NULL),(339,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(340,NULL,NULL,'(.*)/',NULL,NULL,NULL),(341,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(342,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(343,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(344,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(345,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(346,NULL,NULL,'',NULL,NULL,NULL),(347,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(348,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(349,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(350,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(351,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(352,NULL,NULL,'(.*)',NULL,NULL,NULL),(353,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(354,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(355,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(356,NULL,NULL,'content://mms/',NULL,NULL,NULL),(357,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,13),(2,5,17),(3,6,18),(4,8,21),(5,11,24),(6,12,25),(7,14,28),(8,13,29),(9,16,30),(10,15,31),(11,19,34),(12,21,38),(13,23,42),(14,24,43),(15,27,53),(16,29,62),(17,31,66),(18,33,73),(19,34,74),(20,35,81),(21,36,85),(22,37,87),(23,38,90),(24,39,94),(25,40,97),(26,41,98),(27,42,100),(28,45,108),(29,46,110),(30,47,115),(31,49,121),(32,50,128),(33,52,142),(34,56,154),(35,55,153),(36,59,191),(37,61,213),(38,62,218),(39,63,224),(40,64,230),(41,65,243),(42,66,249),(43,67,253),(44,69,264),(45,70,266),(46,74,276),(47,75,281),(48,77,293),(49,78,296),(50,79,304),(51,80,307),(52,81,312),(53,82,314),(54,84,318),(55,85,320),(56,87,327),(57,89,337),(58,91,342),(59,93,345),(60,96,349),(61,97,354),(62,98,356),(63,99,357);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,2,3),(16,3,1),(17,2,4),(18,3,2),(19,2,5),(20,3,3),(21,3,4),(22,2,6),(23,3,5),(24,2,7),(25,2,8),(26,3,6),(27,2,9),(28,3,7),(29,2,10),(30,3,8),(31,4,1),(32,2,11),(33,4,2),(34,3,9),(35,5,1),(36,6,1),(37,2,12),(38,3,10),(39,5,2),(40,4,3),(41,6,2),(42,5,3),(43,3,11),(44,6,3),(45,4,4),(46,4,5),(47,5,4),(48,6,4),(49,3,12),(50,6,5),(51,3,13),(52,5,5),(53,4,6),(54,4,7),(55,5,6),(56,6,6),(57,6,7),(58,5,7),(59,4,8),(60,6,8),(61,5,8),(62,4,9),(63,5,9),(64,6,9),(65,4,10),(66,6,10),(67,5,10),(68,4,11),(69,4,12),(70,5,11),(71,6,11),(72,4,13),(73,6,12),(74,5,12),(75,5,13),(76,6,13);
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

-- Dump completed on 2015-10-09  0:41:10
