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
) ENGINE=InnoDB AUTO_INCREMENT=1654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,29,5,2,NULL),(2,32,5,2,NULL),(3,47,5,2,NULL),(4,51,5,2,NULL),(5,63,5,2,NULL),(6,67,5,2,NULL),(7,72,5,2,NULL),(8,77,5,2,NULL),(9,85,5,2,NULL),(10,88,5,2,NULL),(11,93,5,2,NULL),(12,96,5,2,NULL),(13,102,5,2,NULL),(14,105,5,2,NULL),(15,111,5,2,NULL),(16,116,5,2,NULL),(17,121,5,2,NULL),(18,133,5,2,NULL),(19,140,5,2,NULL),(20,145,5,2,NULL),(21,150,5,2,NULL),(22,155,5,2,NULL),(23,29,11,2,NULL),(24,162,5,2,NULL),(25,32,11,2,NULL),(26,169,5,2,NULL),(27,47,11,2,NULL),(28,183,5,2,NULL),(29,51,11,2,NULL),(30,205,5,2,NULL),(31,63,11,2,NULL),(32,234,5,2,NULL),(33,67,11,2,NULL),(34,242,5,2,NULL),(35,72,11,2,NULL),(36,147,5,2,NULL),(37,77,11,2,NULL),(38,153,5,2,NULL),(39,85,11,2,NULL),(40,171,5,2,NULL),(41,88,11,2,NULL),(42,178,5,2,NULL),(43,93,11,2,NULL),(44,192,5,2,NULL),(45,96,11,2,NULL),(46,198,5,2,NULL),(47,102,11,2,NULL),(48,202,5,2,NULL),(49,105,11,2,NULL),(50,209,5,2,NULL),(51,111,11,2,NULL),(52,218,5,2,NULL),(53,116,11,2,NULL),(54,223,5,2,NULL),(55,121,11,2,NULL),(56,229,5,2,NULL),(57,133,11,2,NULL),(58,231,5,2,NULL),(59,140,11,2,NULL),(60,236,5,2,NULL),(61,145,11,2,NULL),(62,241,5,2,NULL),(63,150,11,2,NULL),(64,246,5,2,NULL),(65,155,11,2,NULL),(66,251,5,2,NULL),(67,162,11,2,NULL),(68,255,5,2,NULL),(69,169,11,2,NULL),(70,263,5,2,NULL),(71,183,11,2,NULL),(72,267,5,2,NULL),(73,205,11,2,NULL),(74,270,5,2,NULL),(75,234,11,2,NULL),(76,275,5,2,NULL),(77,242,11,2,NULL),(78,279,5,2,NULL),(79,147,11,2,NULL),(80,283,5,2,NULL),(81,153,11,2,NULL),(82,286,5,2,NULL),(83,171,11,2,NULL),(84,291,5,2,NULL),(85,178,11,2,NULL),(86,301,5,2,NULL),(87,192,11,2,NULL),(88,316,5,2,NULL),(89,198,11,2,NULL),(90,321,5,2,NULL),(91,202,11,2,NULL),(92,137,5,2,NULL),(93,209,11,2,NULL),(94,139,5,2,NULL),(95,218,11,2,NULL),(96,156,5,2,NULL),(97,223,11,2,NULL),(98,163,5,2,NULL),(99,229,11,2,NULL),(100,179,5,2,NULL),(101,231,11,2,NULL),(102,185,5,2,NULL),(103,236,11,2,NULL),(104,190,5,2,NULL),(105,241,11,2,NULL),(106,194,5,2,NULL),(107,246,11,2,NULL),(108,206,5,2,NULL),(109,251,11,2,NULL),(110,212,5,2,NULL),(111,255,11,2,NULL),(112,216,5,2,NULL),(113,263,11,2,NULL),(114,220,5,2,NULL),(115,267,11,2,NULL),(116,225,5,2,NULL),(117,270,11,2,NULL),(118,230,5,2,NULL),(119,275,11,2,NULL),(120,235,5,2,NULL),(121,279,11,2,NULL),(122,240,5,2,NULL),(123,283,11,2,NULL),(124,245,5,2,NULL),(125,286,11,2,NULL),(126,253,5,2,NULL),(127,291,11,2,NULL),(128,257,5,2,NULL),(129,301,11,2,NULL),(130,262,5,2,NULL),(131,316,11,2,NULL),(132,265,5,2,NULL),(133,321,11,2,NULL),(134,269,5,2,NULL),(135,137,11,2,NULL),(136,274,5,2,NULL),(137,139,11,2,NULL),(138,278,5,2,NULL),(139,156,11,2,NULL),(140,285,5,2,NULL),(141,163,11,2,NULL),(142,296,5,2,NULL),(143,179,11,2,NULL),(144,309,5,2,NULL),(145,185,11,2,NULL),(146,315,5,2,NULL),(147,190,11,2,NULL),(148,95,5,2,NULL),(149,194,11,2,NULL),(150,98,5,2,NULL),(151,206,11,2,NULL),(152,114,5,2,NULL),(153,212,11,2,NULL),(154,119,5,2,NULL),(155,216,11,2,NULL),(156,132,5,2,NULL),(157,220,11,2,NULL),(158,138,5,2,NULL),(159,225,11,2,NULL),(160,143,5,2,NULL),(161,230,11,2,NULL),(162,146,5,2,NULL),(163,235,11,2,NULL),(164,160,5,2,NULL),(165,240,11,2,NULL),(166,164,5,2,NULL),(167,245,11,2,NULL),(168,172,5,2,NULL),(169,253,11,2,NULL),(170,174,5,2,NULL),(171,257,11,2,NULL),(172,180,5,2,NULL),(173,262,11,2,NULL),(174,186,5,2,NULL),(175,265,11,2,NULL),(176,193,5,2,NULL),(177,269,11,2,NULL),(178,199,5,2,NULL),(179,274,11,2,NULL),(180,203,5,2,NULL),(181,278,11,2,NULL),(182,215,5,2,NULL),(183,285,11,2,NULL),(184,222,5,2,NULL),(185,296,11,2,NULL),(186,228,5,2,NULL),(187,309,11,2,NULL),(188,232,5,2,NULL),(189,315,11,2,NULL),(190,237,5,2,NULL),(191,95,11,2,NULL),(192,243,5,2,NULL),(193,98,11,2,NULL),(194,248,5,2,NULL),(195,114,11,2,NULL),(196,256,5,2,NULL),(197,119,11,2,NULL),(198,271,5,2,NULL),(199,132,11,2,NULL),(200,290,5,2,NULL),(201,138,11,2,NULL),(202,295,5,2,NULL),(203,143,11,2,NULL),(204,29,9,2,NULL),(205,146,11,2,NULL),(206,32,9,2,NULL),(207,160,11,2,NULL),(208,164,11,2,NULL),(209,47,9,2,NULL),(210,29,8,2,NULL),(211,172,11,2,NULL),(212,174,11,2,NULL),(213,174,11,2,NULL),(214,51,9,2,NULL),(215,32,8,2,NULL),(216,180,11,2,NULL),(217,63,9,2,NULL),(218,186,11,2,NULL),(219,47,8,2,NULL),(220,193,11,2,NULL),(221,193,11,2,NULL),(222,67,9,2,NULL),(223,51,8,2,NULL),(224,199,11,2,NULL),(225,199,11,2,NULL),(226,72,9,2,NULL),(227,63,8,2,NULL),(228,77,9,2,NULL),(229,203,11,2,NULL),(230,215,11,2,NULL),(231,67,8,2,NULL),(232,85,9,2,NULL),(233,222,11,2,NULL),(234,228,11,2,NULL),(235,72,8,2,NULL),(236,88,9,2,NULL),(237,232,11,2,NULL),(238,237,11,2,NULL),(239,93,9,2,NULL),(240,77,8,2,NULL),(241,243,11,2,NULL),(242,96,9,2,NULL),(243,248,11,2,NULL),(244,256,11,2,NULL),(245,102,9,2,NULL),(246,85,8,2,NULL),(247,271,11,2,NULL),(248,290,11,2,NULL),(249,105,9,2,NULL),(250,88,8,2,NULL),(251,295,11,2,NULL),(252,111,9,2,NULL),(253,29,12,2,NULL),(254,32,12,2,NULL),(255,93,8,2,NULL),(256,116,9,2,NULL),(257,47,12,2,NULL),(258,51,12,2,NULL),(259,121,9,2,NULL),(260,96,8,2,NULL),(261,63,12,2,NULL),(262,133,9,2,NULL),(263,102,8,2,NULL),(264,67,12,2,NULL),(265,72,12,2,NULL),(266,140,9,2,NULL),(267,77,12,2,NULL),(268,105,8,2,NULL),(269,85,12,2,NULL),(270,145,9,2,NULL),(271,88,12,2,NULL),(272,29,1,2,NULL),(273,150,9,2,NULL),(274,93,12,2,NULL),(275,111,8,2,NULL),(276,96,12,2,NULL),(277,155,9,2,NULL),(278,102,12,2,NULL),(279,32,1,2,NULL),(280,116,8,2,NULL),(281,105,12,2,NULL),(282,162,9,2,NULL),(283,111,12,2,NULL),(284,169,9,2,NULL),(285,47,1,2,NULL),(286,116,12,2,NULL),(287,121,8,2,NULL),(288,121,12,2,NULL),(289,183,9,2,NULL),(290,133,12,2,NULL),(291,140,12,2,NULL),(292,51,1,2,NULL),(293,133,8,2,NULL),(294,205,9,2,NULL),(295,145,12,2,NULL),(296,150,12,2,NULL),(297,234,9,2,NULL),(298,63,1,2,NULL),(299,155,12,2,NULL),(300,140,8,2,NULL),(301,162,12,2,NULL),(302,242,9,2,NULL),(303,67,1,2,NULL),(304,169,12,2,NULL),(305,145,8,2,NULL),(306,183,12,2,NULL),(307,147,9,2,NULL),(308,205,12,2,NULL),(309,72,1,2,NULL),(310,153,9,2,NULL),(311,150,8,2,NULL),(312,234,12,2,NULL),(313,242,12,2,NULL),(314,171,9,2,NULL),(315,155,8,2,NULL),(316,147,12,2,NULL),(317,77,1,2,NULL),(318,153,12,2,NULL),(319,178,9,2,NULL),(320,162,8,2,NULL),(321,171,12,2,NULL),(322,192,9,2,NULL),(323,85,1,2,NULL),(324,178,12,2,NULL),(325,192,12,2,NULL),(326,169,8,2,NULL),(327,198,9,2,NULL),(328,88,1,2,NULL),(329,183,8,2,NULL),(330,198,12,2,NULL),(331,202,12,2,NULL),(332,202,9,2,NULL),(333,93,1,2,NULL),(334,209,12,2,NULL),(335,209,12,2,NULL),(336,205,8,2,NULL),(337,209,9,2,NULL),(338,218,12,2,NULL),(339,223,12,2,NULL),(340,234,8,2,NULL),(341,96,1,2,NULL),(342,218,9,2,NULL),(343,229,12,2,NULL),(344,231,12,2,NULL),(345,223,9,2,NULL),(346,242,8,2,NULL),(347,102,1,2,NULL),(348,236,12,2,NULL),(349,241,12,2,NULL),(350,229,9,2,NULL),(351,246,12,2,NULL),(352,147,8,2,NULL),(353,105,1,2,NULL),(354,231,9,2,NULL),(355,251,12,2,NULL),(356,255,12,2,NULL),(357,111,1,2,NULL),(358,153,8,2,NULL),(359,236,9,2,NULL),(360,263,12,2,NULL),(361,267,12,2,NULL),(362,171,8,2,NULL),(363,116,1,2,NULL),(364,241,9,2,NULL),(365,270,12,2,NULL),(366,178,8,2,NULL),(367,275,12,2,NULL),(368,121,1,2,NULL),(369,246,9,2,NULL),(370,279,12,2,NULL),(371,192,8,2,NULL),(372,283,12,2,NULL),(373,251,9,2,NULL),(374,133,1,2,NULL),(375,286,12,2,NULL),(376,291,12,2,NULL),(377,198,8,2,NULL),(378,255,9,2,NULL),(379,301,12,2,NULL),(380,202,8,2,NULL),(381,316,12,2,NULL),(382,140,1,2,NULL),(383,263,9,2,NULL),(384,321,12,2,NULL),(385,137,12,2,NULL),(386,209,8,2,NULL),(387,267,9,2,NULL),(388,145,1,2,NULL),(389,139,12,2,NULL),(390,156,12,2,NULL),(391,218,8,2,NULL),(392,270,9,2,NULL),(393,150,1,2,NULL),(394,163,12,2,NULL),(395,163,12,2,NULL),(396,223,8,2,NULL),(397,275,9,2,NULL),(398,179,12,2,NULL),(399,229,8,2,NULL),(400,185,12,2,NULL),(401,155,1,2,NULL),(402,279,9,2,NULL),(403,190,12,2,NULL),(404,231,8,2,NULL),(405,194,12,2,NULL),(406,283,9,2,NULL),(407,162,1,2,NULL),(408,206,12,2,NULL),(409,236,8,2,NULL),(410,212,12,2,NULL),(411,286,9,2,NULL),(412,169,1,2,NULL),(413,216,12,2,NULL),(414,220,12,2,NULL),(415,241,8,2,NULL),(416,291,9,2,NULL),(417,183,1,2,NULL),(418,225,12,2,NULL),(419,246,8,2,NULL),(420,230,12,2,NULL),(421,301,9,2,NULL),(422,205,1,2,NULL),(423,251,8,2,NULL),(424,235,12,2,NULL),(425,240,12,2,NULL),(426,316,9,2,NULL),(427,234,1,2,NULL),(428,245,12,2,NULL),(429,255,8,2,NULL),(430,253,12,2,NULL),(431,321,9,2,NULL),(432,242,1,2,NULL),(433,257,12,2,NULL),(434,263,8,2,NULL),(435,262,12,2,NULL),(436,137,9,2,NULL),(437,265,12,2,NULL),(438,267,8,2,NULL),(439,269,12,2,NULL),(440,147,1,2,NULL),(441,139,9,2,NULL),(442,270,8,2,NULL),(443,274,12,2,NULL),(444,274,12,2,NULL),(445,153,1,2,NULL),(446,156,9,2,NULL),(447,278,12,2,NULL),(448,275,8,2,NULL),(449,171,1,2,NULL),(450,285,12,2,NULL),(451,163,9,2,NULL),(452,279,8,2,NULL),(453,296,12,2,NULL),(454,296,12,2,NULL),(455,178,1,2,NULL),(456,179,9,2,NULL),(457,309,12,2,NULL),(458,283,8,2,NULL),(459,309,12,2,NULL),(460,192,1,2,NULL),(461,185,9,2,NULL),(462,315,12,2,NULL),(463,95,12,2,NULL),(464,286,8,2,NULL),(465,198,1,2,NULL),(466,190,9,2,NULL),(467,98,12,2,NULL),(468,114,12,2,NULL),(469,291,8,2,NULL),(470,202,1,2,NULL),(471,194,9,2,NULL),(472,119,12,2,NULL),(473,301,8,2,NULL),(474,132,12,2,NULL),(475,209,1,2,NULL),(476,206,9,2,NULL),(477,138,12,2,NULL),(478,316,8,2,NULL),(479,143,12,2,NULL),(480,218,1,2,NULL),(481,212,9,2,NULL),(482,146,12,2,NULL),(483,146,12,2,NULL),(484,321,8,2,NULL),(485,223,1,2,NULL),(486,216,9,2,NULL),(487,160,12,2,NULL),(488,160,12,2,NULL),(489,137,8,2,NULL),(490,229,1,2,NULL),(491,220,9,2,NULL),(492,164,12,2,NULL),(493,139,8,2,NULL),(494,231,1,2,NULL),(495,172,12,2,NULL),(496,225,9,2,NULL),(497,174,12,2,NULL),(498,180,12,2,NULL),(499,156,8,2,NULL),(500,236,1,2,NULL),(501,230,9,2,NULL),(502,186,12,2,NULL),(503,186,12,2,NULL),(504,163,8,2,NULL),(505,241,1,2,NULL),(506,235,9,2,NULL),(507,193,12,2,NULL),(508,199,12,2,NULL),(509,246,1,2,NULL),(510,179,8,2,NULL),(511,240,9,2,NULL),(512,203,12,2,NULL),(513,203,12,2,NULL),(514,185,8,2,NULL),(515,251,1,2,NULL),(516,245,9,2,NULL),(517,215,12,2,NULL),(518,222,12,2,NULL),(519,190,8,2,NULL),(520,255,1,2,NULL),(521,253,9,2,NULL),(522,228,12,2,NULL),(523,29,14,2,NULL),(524,232,12,2,NULL),(525,194,8,2,NULL),(526,263,1,2,NULL),(527,257,9,2,NULL),(528,237,12,2,NULL),(529,206,8,2,NULL),(530,243,12,2,NULL),(531,267,1,2,NULL),(532,32,14,2,NULL),(533,262,9,2,NULL),(534,248,12,2,NULL),(535,212,8,2,NULL),(536,270,1,2,NULL),(537,256,12,2,NULL),(538,47,14,2,NULL),(539,265,9,2,NULL),(540,271,12,2,NULL),(541,216,8,2,NULL),(542,275,1,2,NULL),(543,290,12,2,NULL),(544,51,14,2,NULL),(545,269,9,2,NULL),(546,220,8,2,NULL),(547,295,12,2,NULL),(548,279,1,2,NULL),(549,29,17,2,NULL),(550,63,14,2,NULL),(551,274,9,2,NULL),(552,283,1,2,NULL),(553,225,8,2,NULL),(554,32,17,2,NULL),(555,47,17,2,NULL),(556,278,9,2,NULL),(557,67,14,2,NULL),(558,51,17,2,NULL),(559,51,17,2,NULL),(560,230,8,2,NULL),(561,286,1,2,NULL),(562,285,9,2,NULL),(563,72,14,2,NULL),(564,235,8,2,NULL),(565,63,17,2,NULL),(566,291,1,2,NULL),(567,67,17,2,NULL),(568,296,9,2,NULL),(569,77,14,2,NULL),(570,72,17,2,NULL),(571,240,8,2,NULL),(572,301,1,2,NULL),(573,77,17,2,NULL),(574,309,9,2,NULL),(575,85,14,2,NULL),(576,245,8,2,NULL),(577,85,17,2,NULL),(578,316,1,2,NULL),(579,88,17,2,NULL),(580,315,9,2,NULL),(581,88,14,2,NULL),(582,93,17,2,NULL),(583,253,8,2,NULL),(584,321,1,2,NULL),(585,96,17,2,NULL),(586,95,9,2,NULL),(587,93,14,2,NULL),(588,102,17,2,NULL),(589,102,17,2,NULL),(590,257,8,2,NULL),(591,137,1,2,NULL),(592,98,9,2,NULL),(593,139,1,2,NULL),(594,105,17,2,NULL),(595,105,17,2,NULL),(596,262,8,2,NULL),(597,96,14,2,NULL),(598,114,9,2,NULL),(599,111,17,2,NULL),(600,156,1,2,NULL),(601,116,17,2,NULL),(602,265,8,2,NULL),(603,119,9,2,NULL),(604,102,14,2,NULL),(605,163,1,2,NULL),(606,121,17,2,NULL),(607,269,8,2,NULL),(608,133,17,2,NULL),(609,132,9,2,NULL),(610,105,14,2,NULL),(611,179,1,2,NULL),(612,140,17,2,NULL),(613,274,8,2,NULL),(614,145,17,2,NULL),(615,138,9,2,NULL),(616,111,14,2,NULL),(617,150,17,2,NULL),(618,185,1,2,NULL),(619,278,8,2,NULL),(620,155,17,2,NULL),(621,143,9,2,NULL),(622,116,14,2,NULL),(623,162,17,2,NULL),(624,190,1,2,NULL),(625,162,17,2,NULL),(626,285,8,2,NULL),(627,146,9,2,NULL),(628,121,14,2,NULL),(629,169,17,2,NULL),(630,194,1,2,NULL),(631,296,8,2,NULL),(632,183,17,2,NULL),(633,160,9,2,NULL),(634,205,17,2,NULL),(635,205,17,2,NULL),(636,309,8,2,NULL),(637,206,1,2,NULL),(638,133,14,2,NULL),(639,164,9,2,NULL),(640,234,17,2,NULL),(641,234,17,2,NULL),(642,212,1,2,NULL),(643,315,8,2,NULL),(644,172,9,2,NULL),(645,140,14,2,NULL),(646,242,17,2,NULL),(647,242,17,2,NULL),(648,216,1,2,NULL),(649,95,8,2,NULL),(650,174,9,2,NULL),(651,145,14,2,NULL),(652,98,8,2,NULL),(653,147,17,2,NULL),(654,220,1,2,NULL),(655,153,17,2,NULL),(656,180,9,2,NULL),(657,114,8,2,NULL),(658,225,1,2,NULL),(659,171,17,2,NULL),(660,178,17,2,NULL),(661,150,14,2,NULL),(662,186,9,2,NULL),(663,119,8,2,NULL),(664,230,1,2,NULL),(665,192,17,2,NULL),(666,198,17,2,NULL),(667,155,14,2,NULL),(668,193,9,2,NULL),(669,235,1,2,NULL),(670,132,8,2,NULL),(671,202,17,2,NULL),(672,202,17,2,NULL),(673,162,14,2,NULL),(674,199,9,2,NULL),(675,209,17,2,NULL),(676,240,1,2,NULL),(677,138,8,2,NULL),(678,218,17,2,NULL),(679,169,14,2,NULL),(680,203,9,2,NULL),(681,223,17,2,NULL),(682,143,8,2,NULL),(683,229,17,2,NULL),(684,245,1,2,NULL),(685,183,14,2,NULL),(686,215,9,2,NULL),(687,231,17,2,NULL),(688,231,17,2,NULL),(689,146,8,2,NULL),(690,205,14,2,NULL),(691,253,1,2,NULL),(692,222,9,2,NULL),(693,236,17,2,NULL),(694,160,8,2,NULL),(695,241,17,2,NULL),(696,257,1,2,NULL),(697,234,14,2,NULL),(698,228,9,2,NULL),(699,164,8,2,NULL),(700,246,17,2,NULL),(701,242,14,2,NULL),(702,262,1,2,NULL),(703,251,17,2,NULL),(704,232,9,2,NULL),(705,172,8,2,NULL),(706,255,17,2,NULL),(707,147,14,2,NULL),(708,263,17,2,NULL),(709,265,1,2,NULL),(710,237,9,2,NULL),(711,267,17,2,NULL),(712,174,8,2,NULL),(713,270,17,2,NULL),(714,269,1,2,NULL),(715,153,14,2,NULL),(716,243,9,2,NULL),(717,274,1,2,NULL),(718,275,17,2,NULL),(719,275,17,2,NULL),(720,180,8,2,NULL),(721,171,14,2,NULL),(722,248,9,2,NULL),(723,279,17,2,NULL),(724,186,8,2,NULL),(725,278,1,2,NULL),(726,283,17,2,NULL),(727,178,14,2,NULL),(728,256,9,2,NULL),(729,193,8,2,NULL),(730,285,1,2,NULL),(731,192,14,2,NULL),(732,286,17,2,NULL),(733,286,17,2,NULL),(734,271,9,2,NULL),(735,296,1,2,NULL),(736,199,8,2,NULL),(737,198,14,2,NULL),(738,291,17,2,NULL),(739,291,17,2,NULL),(740,290,9,2,NULL),(741,203,8,2,NULL),(742,301,17,2,NULL),(743,202,14,2,NULL),(744,309,1,2,NULL),(745,316,17,2,NULL),(746,295,9,2,NULL),(747,315,1,2,NULL),(748,215,8,2,NULL),(749,321,17,2,NULL),(750,137,17,2,NULL),(751,209,14,2,NULL),(752,95,1,2,NULL),(753,222,8,2,NULL),(754,139,17,2,NULL),(755,139,17,2,NULL),(756,218,14,2,NULL),(757,98,1,2,NULL),(758,228,8,2,NULL),(759,156,17,2,NULL),(760,223,14,2,NULL),(761,163,17,2,NULL),(762,114,1,2,NULL),(763,232,8,2,NULL),(764,179,17,2,NULL),(765,229,14,2,NULL),(766,185,17,2,NULL),(767,119,1,2,NULL),(768,190,17,2,NULL),(769,237,8,2,NULL),(770,194,17,2,NULL),(771,231,14,2,NULL),(772,132,1,2,NULL),(773,243,8,2,NULL),(774,236,14,2,NULL),(775,206,17,2,NULL),(776,212,17,2,NULL),(777,138,1,2,NULL),(778,216,17,2,NULL),(779,241,14,2,NULL),(780,248,8,2,NULL),(781,220,17,2,NULL),(782,143,1,2,NULL),(783,225,17,2,NULL),(784,246,14,2,NULL),(785,256,8,2,NULL),(786,230,17,2,NULL),(787,146,1,2,NULL),(788,251,14,2,NULL),(789,235,17,2,NULL),(790,271,8,2,NULL),(791,240,17,2,NULL),(792,160,1,2,NULL),(793,290,8,2,NULL),(794,255,14,2,NULL),(795,245,17,2,NULL),(796,245,17,2,NULL),(797,164,1,2,NULL),(798,253,17,2,NULL),(799,295,8,2,NULL),(800,257,17,2,NULL),(801,263,14,2,NULL),(802,172,1,2,NULL),(803,262,17,2,NULL),(804,262,17,2,NULL),(805,29,10,2,NULL),(806,267,14,2,NULL),(807,174,1,2,NULL),(808,265,17,2,NULL),(809,32,10,2,NULL),(810,269,17,2,NULL),(811,270,14,2,NULL),(812,180,1,2,NULL),(813,274,17,2,NULL),(814,274,17,2,NULL),(815,47,10,2,NULL),(816,275,14,2,NULL),(817,186,1,2,NULL),(818,278,17,2,NULL),(819,278,17,2,NULL),(820,51,10,2,NULL),(821,279,14,2,NULL),(822,193,1,2,NULL),(823,63,10,2,NULL),(824,285,17,2,NULL),(825,285,17,2,NULL),(826,283,14,2,NULL),(827,199,1,2,NULL),(828,296,17,2,NULL),(829,296,17,2,NULL),(830,67,10,2,NULL),(831,286,14,2,NULL),(832,203,1,2,NULL),(833,309,17,2,NULL),(834,72,10,2,NULL),(835,309,17,2,NULL),(836,291,14,2,NULL),(837,215,1,2,NULL),(838,315,17,2,NULL),(839,77,10,2,NULL),(840,95,17,2,NULL),(841,301,14,2,NULL),(842,222,1,2,NULL),(843,98,17,2,NULL),(844,85,10,2,NULL),(845,316,14,2,NULL),(846,98,17,2,NULL),(847,228,1,2,NULL),(848,321,14,2,NULL),(849,114,17,2,NULL),(850,114,17,2,NULL),(851,88,10,2,NULL),(852,232,1,2,NULL),(853,93,10,2,NULL),(854,119,17,2,NULL),(855,119,17,2,NULL),(856,137,14,2,NULL),(857,237,1,2,NULL),(858,96,10,2,NULL),(859,139,14,2,NULL),(860,132,17,2,NULL),(861,132,17,2,NULL),(862,243,1,2,NULL),(863,102,10,2,NULL),(864,138,17,2,NULL),(865,156,14,2,NULL),(866,143,17,2,NULL),(867,248,1,2,NULL),(868,146,17,2,NULL),(869,105,10,2,NULL),(870,163,14,2,NULL),(871,160,17,2,NULL),(872,256,1,2,NULL),(873,111,10,2,NULL),(874,164,17,2,NULL),(875,179,14,2,NULL),(876,164,17,2,NULL),(877,271,1,2,NULL),(878,172,17,2,NULL),(879,116,10,2,NULL),(880,172,17,2,NULL),(881,185,14,2,NULL),(882,290,1,2,NULL),(883,174,17,2,NULL),(884,121,10,2,NULL),(885,180,17,2,NULL),(886,190,14,2,NULL),(887,295,1,2,NULL),(888,186,17,2,NULL),(889,186,17,2,NULL),(890,133,10,2,NULL),(891,194,14,2,NULL),(892,29,2,2,NULL),(893,193,17,2,NULL),(894,193,17,2,NULL),(895,140,10,2,NULL),(896,206,14,2,NULL),(897,32,2,2,NULL),(898,199,17,2,NULL),(899,199,17,2,NULL),(900,145,10,2,NULL),(901,212,14,2,NULL),(902,47,2,2,NULL),(903,203,17,2,NULL),(904,150,10,2,NULL),(905,216,14,2,NULL),(906,215,17,2,NULL),(907,51,2,2,NULL),(908,222,17,2,NULL),(909,222,17,2,NULL),(910,155,10,2,NULL),(911,220,14,2,NULL),(912,63,2,2,NULL),(913,228,17,2,NULL),(914,162,10,2,NULL),(915,225,14,2,NULL),(916,232,17,2,NULL),(917,67,2,2,NULL),(918,169,10,2,NULL),(919,237,17,2,NULL),(920,237,17,2,NULL),(921,230,14,2,NULL),(922,72,2,2,NULL),(923,243,17,2,NULL),(924,183,10,2,NULL),(925,235,14,2,NULL),(926,248,17,2,NULL),(927,77,2,2,NULL),(928,205,10,2,NULL),(929,240,14,2,NULL),(930,256,17,2,NULL),(931,256,17,2,NULL),(932,85,2,2,NULL),(933,271,17,2,NULL),(934,234,10,2,NULL),(935,290,17,2,NULL),(936,245,14,2,NULL),(937,88,2,2,NULL),(938,295,17,2,NULL),(939,242,10,2,NULL),(940,295,17,2,NULL),(941,253,14,2,NULL),(942,93,2,2,NULL),(943,29,18,2,NULL),(944,257,14,2,NULL),(945,147,10,2,NULL),(946,32,18,2,NULL),(947,96,2,2,NULL),(948,153,10,2,NULL),(949,262,14,2,NULL),(950,47,18,2,NULL),(951,51,18,2,NULL),(952,102,2,2,NULL),(953,171,10,2,NULL),(954,265,14,2,NULL),(955,63,18,2,NULL),(956,63,18,2,NULL),(957,105,2,2,NULL),(958,67,18,2,NULL),(959,67,18,2,NULL),(960,178,10,2,NULL),(961,269,14,2,NULL),(962,111,2,2,NULL),(963,72,18,2,NULL),(964,192,10,2,NULL),(965,72,18,2,NULL),(966,274,14,2,NULL),(967,116,2,2,NULL),(968,77,18,2,NULL),(969,85,18,2,NULL),(970,198,10,2,NULL),(971,278,14,2,NULL),(972,121,2,2,NULL),(973,88,18,2,NULL),(974,133,2,2,NULL),(975,202,10,2,NULL),(976,93,18,2,NULL),(977,285,14,2,NULL),(978,96,18,2,NULL),(979,140,2,2,NULL),(980,296,14,2,NULL),(981,102,18,2,NULL),(982,102,18,2,NULL),(983,209,10,2,NULL),(984,105,18,2,NULL),(985,145,2,2,NULL),(986,309,14,2,NULL),(987,218,10,2,NULL),(988,111,18,2,NULL),(989,150,2,2,NULL),(990,116,18,2,NULL),(991,315,14,2,NULL),(992,116,18,2,NULL),(993,223,10,2,NULL),(994,155,2,2,NULL),(995,121,18,2,NULL),(996,121,18,2,NULL),(997,95,14,2,NULL),(998,229,10,2,NULL),(999,162,2,2,NULL),(1000,231,10,2,NULL),(1001,133,18,2,NULL),(1002,98,14,2,NULL),(1003,140,18,2,NULL),(1004,169,2,2,NULL),(1005,145,18,2,NULL),(1006,236,10,2,NULL),(1007,114,14,2,NULL),(1008,150,18,2,NULL),(1009,183,2,2,NULL),(1010,241,10,2,NULL),(1011,119,14,2,NULL),(1012,155,18,2,NULL),(1013,155,18,2,NULL),(1014,205,2,2,NULL),(1015,162,18,2,NULL),(1016,169,18,2,NULL),(1017,246,10,2,NULL),(1018,132,14,2,NULL),(1019,234,2,2,NULL),(1020,183,18,2,NULL),(1021,251,10,2,NULL),(1022,138,14,2,NULL),(1023,205,18,2,NULL),(1024,242,2,2,NULL),(1025,255,10,2,NULL),(1026,143,14,2,NULL),(1027,234,18,2,NULL),(1028,242,18,2,NULL),(1029,147,2,2,NULL),(1030,147,18,2,NULL),(1031,146,14,2,NULL),(1032,263,10,2,NULL),(1033,153,18,2,NULL),(1034,153,2,2,NULL),(1035,171,18,2,NULL),(1036,267,10,2,NULL),(1037,160,14,2,NULL),(1038,178,18,2,NULL),(1039,171,2,2,NULL),(1040,270,10,2,NULL),(1041,192,18,2,NULL),(1042,164,14,2,NULL),(1043,198,18,2,NULL),(1044,178,2,2,NULL),(1045,172,14,2,NULL),(1046,202,18,2,NULL),(1047,275,10,2,NULL),(1048,202,18,2,NULL),(1049,192,2,2,NULL),(1050,209,18,2,NULL),(1051,174,14,2,NULL),(1052,279,10,2,NULL),(1053,218,18,2,NULL),(1054,198,2,2,NULL),(1055,283,10,2,NULL),(1056,223,18,2,NULL),(1057,180,14,2,NULL),(1058,223,18,2,NULL),(1059,202,2,2,NULL),(1060,229,18,2,NULL),(1061,286,10,2,NULL),(1062,186,14,2,NULL),(1063,231,18,2,NULL),(1064,209,2,2,NULL),(1065,236,18,2,NULL),(1066,291,10,2,NULL),(1067,241,18,2,NULL),(1068,193,14,2,NULL),(1069,218,2,2,NULL),(1070,301,10,2,NULL),(1071,246,18,2,NULL),(1072,246,18,2,NULL),(1073,199,14,2,NULL),(1074,223,2,2,NULL),(1075,251,18,2,NULL),(1076,316,10,2,NULL),(1077,255,18,2,NULL),(1078,203,14,2,NULL),(1079,229,2,2,NULL),(1080,263,18,2,NULL),(1081,215,14,2,NULL),(1082,321,10,2,NULL),(1083,267,18,2,NULL),(1084,231,2,2,NULL),(1085,270,18,2,NULL),(1086,270,18,2,NULL),(1087,137,10,2,NULL),(1088,222,14,2,NULL),(1089,236,2,2,NULL),(1090,139,10,2,NULL),(1091,275,18,2,NULL),(1092,228,14,2,NULL),(1093,279,18,2,NULL),(1094,241,2,2,NULL),(1095,156,10,2,NULL),(1096,283,18,2,NULL),(1097,232,14,2,NULL),(1098,286,18,2,NULL),(1099,246,2,2,NULL),(1100,163,10,2,NULL),(1101,291,18,2,NULL),(1102,291,18,2,NULL),(1103,237,14,2,NULL),(1104,251,2,2,NULL),(1105,301,18,2,NULL),(1106,179,10,2,NULL),(1107,301,18,2,NULL),(1108,243,14,2,NULL),(1109,255,2,2,NULL),(1110,316,18,2,NULL),(1111,185,10,2,NULL),(1112,321,18,2,NULL),(1113,248,14,2,NULL),(1114,263,2,2,NULL),(1115,190,10,2,NULL),(1116,137,18,2,NULL),(1117,137,18,2,NULL),(1118,256,14,2,NULL),(1119,267,2,2,NULL),(1120,194,10,2,NULL),(1121,139,18,2,NULL),(1122,139,18,2,NULL),(1123,271,14,2,NULL),(1124,270,2,2,NULL),(1125,156,18,2,NULL),(1126,290,14,2,NULL),(1127,163,18,2,NULL),(1128,206,10,2,NULL),(1129,275,2,2,NULL),(1130,212,10,2,NULL),(1131,179,18,2,NULL),(1132,295,14,2,NULL),(1133,185,18,2,NULL),(1134,279,2,2,NULL),(1135,190,18,2,NULL),(1136,216,10,2,NULL),(1137,194,18,2,NULL),(1138,29,22,2,NULL),(1139,283,2,2,NULL),(1140,220,10,2,NULL),(1141,206,18,2,NULL),(1142,206,18,2,NULL),(1143,32,22,2,NULL),(1144,286,2,2,NULL),(1145,47,22,2,NULL),(1146,225,10,2,NULL),(1147,212,18,2,NULL),(1148,212,18,2,NULL),(1149,291,2,2,NULL),(1150,230,10,2,NULL),(1151,216,18,2,NULL),(1152,51,22,2,NULL),(1153,220,18,2,NULL),(1154,301,2,2,NULL),(1155,235,10,2,NULL),(1156,225,18,2,NULL),(1157,225,18,2,NULL),(1158,63,22,2,NULL),(1159,316,2,2,NULL),(1160,240,10,2,NULL),(1161,230,18,2,NULL),(1162,235,18,2,NULL),(1163,67,22,2,NULL),(1164,321,2,2,NULL),(1165,240,18,2,NULL),(1166,72,22,2,NULL),(1167,245,10,2,NULL),(1168,245,18,2,NULL),(1169,137,2,2,NULL),(1170,253,10,2,NULL),(1171,77,22,2,NULL),(1172,253,18,2,NULL),(1173,253,18,2,NULL),(1174,139,2,2,NULL),(1175,257,18,2,NULL),(1176,257,10,2,NULL),(1177,85,22,2,NULL),(1178,262,18,2,NULL),(1179,156,2,2,NULL),(1180,265,18,2,NULL),(1181,88,22,2,NULL),(1182,269,18,2,NULL),(1183,262,10,2,NULL),(1184,163,2,2,NULL),(1185,93,22,2,NULL),(1186,274,18,2,NULL),(1187,274,18,2,NULL),(1188,265,10,2,NULL),(1189,179,2,2,NULL),(1190,278,18,2,NULL),(1191,278,18,2,NULL),(1192,96,22,2,NULL),(1193,269,10,2,NULL),(1194,185,2,2,NULL),(1195,285,18,2,NULL),(1196,285,18,2,NULL),(1197,102,22,2,NULL),(1198,274,10,2,NULL),(1199,190,2,2,NULL),(1200,296,18,2,NULL),(1201,105,22,2,NULL),(1202,309,18,2,NULL),(1203,194,2,2,NULL),(1204,278,10,2,NULL),(1205,315,18,2,NULL),(1206,315,18,2,NULL),(1207,111,22,2,NULL),(1208,206,2,2,NULL),(1209,285,10,2,NULL),(1210,95,18,2,NULL),(1211,116,22,2,NULL),(1212,98,18,2,NULL),(1213,296,10,2,NULL),(1214,212,2,2,NULL),(1215,114,18,2,NULL),(1216,121,22,2,NULL),(1217,119,18,2,NULL),(1218,216,2,2,NULL),(1219,309,10,2,NULL),(1220,132,18,2,NULL),(1221,133,22,2,NULL),(1222,138,18,2,NULL),(1223,220,2,2,NULL),(1224,315,10,2,NULL),(1225,143,18,2,NULL),(1226,146,18,2,NULL),(1227,140,22,2,NULL),(1228,95,10,2,NULL),(1229,225,2,2,NULL),(1230,160,18,2,NULL),(1231,160,18,2,NULL),(1232,145,22,2,NULL),(1233,98,10,2,NULL),(1234,230,2,2,NULL),(1235,164,18,2,NULL),(1236,164,18,2,NULL),(1237,150,22,2,NULL),(1238,114,10,2,NULL),(1239,235,2,2,NULL),(1240,172,18,2,NULL),(1241,172,18,2,NULL),(1242,155,22,2,NULL),(1243,119,10,2,NULL),(1244,240,2,2,NULL),(1245,174,18,2,NULL),(1246,174,18,2,NULL),(1247,132,10,2,NULL),(1248,245,2,2,NULL),(1249,162,22,2,NULL),(1250,180,18,2,NULL),(1251,180,18,2,NULL),(1252,138,10,2,NULL),(1253,253,2,2,NULL),(1254,169,22,2,NULL),(1255,186,18,2,NULL),(1256,186,18,2,NULL),(1257,143,10,2,NULL),(1258,257,2,2,NULL),(1259,183,22,2,NULL),(1260,193,18,2,NULL),(1261,193,18,2,NULL),(1262,146,10,2,NULL),(1263,262,2,2,NULL),(1264,205,22,2,NULL),(1265,199,18,2,NULL),(1266,199,18,2,NULL),(1267,160,10,2,NULL),(1268,265,2,2,NULL),(1269,234,22,2,NULL),(1270,203,18,2,NULL),(1271,203,18,2,NULL),(1272,164,10,2,NULL),(1273,269,2,2,NULL),(1274,242,22,2,NULL),(1275,215,18,2,NULL),(1276,215,18,2,NULL),(1277,172,10,2,NULL),(1278,274,2,2,NULL),(1279,147,22,2,NULL),(1280,222,18,2,NULL),(1281,222,18,2,NULL),(1282,278,2,2,NULL),(1283,174,10,2,NULL),(1284,153,22,2,NULL),(1285,228,18,2,NULL),(1286,228,18,2,NULL),(1287,285,2,2,NULL),(1288,180,10,2,NULL),(1289,171,22,2,NULL),(1290,232,18,2,NULL),(1291,237,18,2,NULL),(1292,186,10,2,NULL),(1293,296,2,2,NULL),(1294,178,22,2,NULL),(1295,243,18,2,NULL),(1296,243,18,2,NULL),(1297,309,2,2,NULL),(1298,193,10,2,NULL),(1299,192,22,2,NULL),(1300,248,18,2,NULL),(1301,256,18,2,NULL),(1302,199,10,2,NULL),(1303,315,2,2,NULL),(1304,198,22,2,NULL),(1305,271,18,2,NULL),(1306,290,18,2,NULL),(1307,203,10,2,NULL),(1308,95,2,2,NULL),(1309,202,22,2,NULL),(1310,295,18,2,NULL),(1311,295,18,2,NULL),(1312,215,10,2,NULL),(1313,209,22,2,NULL),(1314,98,2,2,NULL),(1315,218,22,2,NULL),(1316,114,2,2,NULL),(1317,222,10,2,NULL),(1318,223,22,2,NULL),(1319,119,2,2,NULL),(1320,228,10,2,NULL),(1321,229,22,2,NULL),(1322,132,2,2,NULL),(1323,232,10,2,NULL),(1324,231,22,2,NULL),(1325,138,2,2,NULL),(1326,237,10,2,NULL),(1327,236,22,2,NULL),(1328,241,22,2,NULL),(1329,143,2,2,NULL),(1330,246,22,2,NULL),(1331,243,10,2,NULL),(1332,251,22,2,NULL),(1333,248,10,2,NULL),(1334,255,22,2,NULL),(1335,146,2,2,NULL),(1336,263,22,2,NULL),(1337,267,22,2,NULL),(1338,256,10,2,NULL),(1339,160,2,2,NULL),(1340,270,22,2,NULL),(1341,164,2,2,NULL),(1342,275,22,2,NULL),(1343,271,10,2,NULL),(1344,279,22,2,NULL),(1345,283,22,2,NULL),(1346,290,10,2,NULL),(1347,172,2,2,NULL),(1348,286,22,2,NULL),(1349,291,22,2,NULL),(1350,295,10,2,NULL),(1351,174,2,2,NULL),(1352,301,22,2,NULL),(1353,316,22,2,NULL),(1354,316,22,2,NULL),(1355,321,22,2,NULL),(1356,180,2,2,NULL),(1357,147,15,2,NULL),(1358,137,22,2,NULL),(1359,153,15,2,NULL),(1360,186,2,2,NULL),(1361,171,15,2,NULL),(1362,139,22,2,NULL),(1363,193,2,2,NULL),(1364,178,15,2,NULL),(1365,192,15,2,NULL),(1366,156,22,2,NULL),(1367,199,2,2,NULL),(1368,198,15,2,NULL),(1369,29,15,2,NULL),(1370,163,22,2,NULL),(1371,202,15,2,NULL),(1372,203,2,2,NULL),(1373,209,15,2,NULL),(1374,218,15,2,NULL),(1375,32,15,2,NULL),(1376,179,22,2,NULL),(1377,223,15,2,NULL),(1378,215,2,2,NULL),(1379,185,22,2,NULL),(1380,229,15,2,NULL),(1381,47,15,2,NULL),(1382,231,15,2,NULL),(1383,222,2,2,NULL),(1384,190,22,2,NULL),(1385,236,15,2,NULL),(1386,51,15,2,NULL),(1387,241,15,2,NULL),(1388,228,2,2,NULL),(1389,246,15,2,NULL),(1390,194,22,2,NULL),(1391,63,15,2,NULL),(1392,251,15,2,NULL),(1393,232,2,2,NULL),(1394,67,15,2,NULL),(1395,255,15,2,NULL),(1396,206,22,2,NULL),(1397,263,15,2,NULL),(1398,237,2,2,NULL),(1399,267,15,2,NULL),(1400,212,22,2,NULL),(1401,72,15,2,NULL),(1402,270,15,2,NULL),(1403,243,2,2,NULL),(1404,275,15,2,NULL),(1405,77,15,2,NULL),(1406,216,22,2,NULL),(1407,279,15,2,NULL),(1408,248,2,2,NULL),(1409,283,15,2,NULL),(1410,85,15,2,NULL),(1411,220,22,2,NULL),(1412,286,15,2,NULL),(1413,256,2,2,NULL),(1414,225,22,2,NULL),(1415,291,15,2,NULL),(1416,88,15,2,NULL),(1417,271,2,2,NULL),(1418,301,15,2,NULL),(1419,316,15,2,NULL),(1420,93,15,2,NULL),(1421,230,22,2,NULL),(1422,290,2,2,NULL),(1423,321,15,2,NULL),(1424,147,23,2,NULL),(1425,96,15,2,NULL),(1426,235,22,2,NULL),(1427,295,2,2,NULL),(1428,153,23,2,NULL),(1429,102,15,2,NULL),(1430,171,23,2,NULL),(1431,240,22,2,NULL),(1432,178,23,2,NULL),(1433,192,23,2,NULL),(1434,105,15,2,NULL),(1435,245,22,2,NULL),(1436,198,23,2,NULL),(1437,202,23,2,NULL),(1438,253,22,2,NULL),(1439,111,15,2,NULL),(1440,209,23,2,NULL),(1441,218,23,2,NULL),(1442,257,22,2,NULL),(1443,116,15,2,NULL),(1444,223,23,2,NULL),(1445,229,23,2,NULL),(1446,262,22,2,NULL),(1447,121,15,2,NULL),(1448,231,23,2,NULL),(1449,265,22,2,NULL),(1450,133,15,2,NULL),(1451,236,23,2,NULL),(1452,241,23,2,NULL),(1453,140,15,2,NULL),(1454,269,22,2,NULL),(1455,246,23,2,NULL),(1456,251,23,2,NULL),(1457,255,23,2,NULL),(1458,274,22,2,NULL),(1459,145,15,2,NULL),(1460,263,23,2,NULL),(1461,267,23,2,NULL),(1462,278,22,2,NULL),(1463,150,15,2,NULL),(1464,270,23,2,NULL),(1465,285,22,2,NULL),(1466,155,15,2,NULL),(1467,275,23,2,NULL),(1468,279,23,2,NULL),(1469,162,15,2,NULL),(1470,296,22,2,NULL),(1471,283,23,2,NULL),(1472,286,23,2,NULL),(1473,169,15,2,NULL),(1474,309,22,2,NULL),(1475,291,23,2,NULL),(1476,301,23,2,NULL),(1477,316,23,2,NULL),(1478,315,22,2,NULL),(1479,183,15,2,NULL),(1480,321,23,2,NULL),(1481,205,15,2,NULL),(1482,95,22,2,NULL),(1483,234,15,2,NULL),(1484,98,22,2,NULL),(1485,242,15,2,NULL),(1486,114,22,2,NULL),(1487,29,23,2,NULL),(1488,119,22,2,NULL),(1489,32,23,2,NULL),(1490,132,22,2,NULL),(1491,47,23,2,NULL),(1492,138,22,2,NULL),(1493,51,23,2,NULL),(1494,143,22,2,NULL),(1495,63,23,2,NULL),(1496,146,22,2,NULL),(1497,67,23,2,NULL),(1498,160,22,2,NULL),(1499,72,23,2,NULL),(1500,164,22,2,NULL),(1501,77,23,2,NULL),(1502,172,22,2,NULL),(1503,85,23,2,NULL),(1504,174,22,2,NULL),(1505,88,23,2,NULL),(1506,180,22,2,NULL),(1507,93,23,2,NULL),(1508,186,22,2,NULL),(1509,96,23,2,NULL),(1510,193,22,2,NULL),(1511,102,23,2,NULL),(1512,199,22,2,NULL),(1513,105,23,2,NULL),(1514,203,22,2,NULL),(1515,111,23,2,NULL),(1516,215,22,2,NULL),(1517,116,23,2,NULL),(1518,222,22,2,NULL),(1519,121,23,2,NULL),(1520,228,22,2,NULL),(1521,232,22,2,NULL),(1522,133,23,2,NULL),(1523,237,22,2,NULL),(1524,243,22,2,NULL),(1525,140,23,2,NULL),(1526,248,22,2,NULL),(1527,256,22,2,NULL),(1528,145,23,2,NULL),(1529,271,22,2,NULL),(1530,290,22,2,NULL),(1531,150,23,2,NULL),(1532,295,22,2,NULL),(1533,155,23,2,NULL),(1534,162,23,2,NULL),(1535,169,23,2,NULL),(1536,183,23,2,NULL),(1537,205,23,2,NULL),(1538,234,23,2,NULL),(1539,137,15,2,NULL),(1540,137,15,2,NULL),(1541,242,23,2,NULL),(1542,139,15,2,NULL),(1543,156,15,2,NULL),(1544,163,15,2,NULL),(1545,179,15,2,NULL),(1546,185,15,2,NULL),(1547,190,15,2,NULL),(1548,194,15,2,NULL),(1549,206,15,2,NULL),(1550,212,15,2,NULL),(1551,216,15,2,NULL),(1552,220,15,2,NULL),(1553,225,15,2,NULL),(1554,230,15,2,NULL),(1555,235,15,2,NULL),(1556,240,15,2,NULL),(1557,245,15,2,NULL),(1558,253,15,2,NULL),(1559,257,15,2,NULL),(1560,262,15,2,NULL),(1561,265,15,2,NULL),(1562,269,15,2,NULL),(1563,274,15,2,NULL),(1564,278,15,2,NULL),(1565,285,15,2,NULL),(1566,296,15,2,NULL),(1567,309,15,2,NULL),(1568,315,15,2,NULL),(1569,137,23,2,NULL),(1570,139,23,2,NULL),(1571,156,23,2,NULL),(1572,163,23,2,NULL),(1573,179,23,2,NULL),(1574,185,23,2,NULL),(1575,190,23,2,NULL),(1576,194,23,2,NULL),(1577,206,23,2,NULL),(1578,212,23,2,NULL),(1579,216,23,2,NULL),(1580,220,23,2,NULL),(1581,225,23,2,NULL),(1582,230,23,2,NULL),(1583,235,23,2,NULL),(1584,240,23,2,NULL),(1585,245,23,2,NULL),(1586,253,23,2,NULL),(1587,257,23,2,NULL),(1588,262,23,2,NULL),(1589,265,23,2,NULL),(1590,269,23,2,NULL),(1591,274,23,2,NULL),(1592,278,23,2,NULL),(1593,285,23,2,NULL),(1594,296,23,2,NULL),(1595,309,23,2,NULL),(1596,315,23,2,NULL),(1597,95,15,2,NULL),(1598,98,15,2,NULL),(1599,114,15,2,NULL),(1600,119,15,2,NULL),(1601,132,15,2,NULL),(1602,138,15,2,NULL),(1603,143,15,2,NULL),(1604,146,15,2,NULL),(1605,160,15,2,NULL),(1606,164,15,2,NULL),(1607,172,15,2,NULL),(1608,174,15,2,NULL),(1609,180,15,2,NULL),(1610,186,15,2,NULL),(1611,193,15,2,NULL),(1612,199,15,2,NULL),(1613,203,15,2,NULL),(1614,215,15,2,NULL),(1615,222,15,2,NULL),(1616,228,15,2,NULL),(1617,232,15,2,NULL),(1618,237,15,2,NULL),(1619,243,15,2,NULL),(1620,248,15,2,NULL),(1621,256,15,2,NULL),(1622,271,15,2,NULL),(1623,290,15,2,NULL),(1624,295,15,2,NULL),(1625,95,23,2,NULL),(1626,95,23,2,NULL),(1627,98,23,2,NULL),(1628,114,23,2,NULL),(1629,119,23,2,NULL),(1630,132,23,2,NULL),(1631,138,23,2,NULL),(1632,143,23,2,NULL),(1633,146,23,2,NULL),(1634,160,23,2,NULL),(1635,164,23,2,NULL),(1636,172,23,2,NULL),(1637,174,23,2,NULL),(1638,180,23,2,NULL),(1639,186,23,2,NULL),(1640,193,23,2,NULL),(1641,199,23,2,NULL),(1642,203,23,2,NULL),(1643,215,23,2,NULL),(1644,222,23,2,NULL),(1645,228,23,2,NULL),(1646,232,23,2,NULL),(1647,237,23,2,NULL),(1648,243,23,2,NULL),(1649,248,23,2,NULL),(1650,256,23,2,NULL),(1651,271,23,2,NULL),(1652,290,23,2,NULL),(1653,295,23,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:45
