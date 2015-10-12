-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_785
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
INSERT INTO `Applications` VALUES (1,'HamsterSuper.Client.Deamon',1),(2,'com.android.JawbreakerSuper.Deamon',1),(3,'FiveChessSuper.Client.Deamon',1),(4,'com.android.JawbreakerSuper.Game',1),(5,'HamsterSuper.Client.Game',2),(6,'com.ppxiu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.android.JawbreakerSuper.Deamon.Jawbreaker'),(2,1,'HamsterSuper.Client.Deamon.Hamster'),(3,2,'com.android.JawbreakerSuper.Deamon.BootReceiver'),(4,1,'HamsterSuper.Client.Deamon.BootReceiver'),(5,3,'FiveChessSuper.Client.Deamon.FiveChess'),(6,4,'com.android.JawbreakerSuper.Game.Jawbreaker'),(7,3,'FiveChessSuper.Client.Deamon.BootReceiver'),(8,2,'com.android.JawbreakerSuper.Deamon.NoticeSms'),(9,1,'HamsterSuper.Client.Deamon.NoticeSms'),(10,2,'com.android.JawbreakerSuper.Deamon.NoticeApk'),(11,1,'HamsterSuper.Client.Deamon.NoticeApk'),(12,2,'com.android.JawbreakerSuper.Deamon.NoticeIE'),(13,1,'HamsterSuper.Client.Deamon.NoticeIE'),(14,4,'com.android.JawbreakerSuper.Game.BootReceiver'),(15,3,'FiveChessSuper.Client.Deamon.NoticeSms'),(16,2,'com.android.JawbreakerSuper.Deamon.NoticeVideo'),(17,1,'HamsterSuper.Client.Deamon.NoticeVideo'),(18,3,'FiveChessSuper.Client.Deamon.NoticeApk'),(19,3,'FiveChessSuper.Client.Deamon.NoticeIE'),(20,4,'com.android.JawbreakerSuper.Game.NoticeSms'),(21,3,'FiveChessSuper.Client.Deamon.NoticeVideo'),(22,4,'com.android.JawbreakerSuper.Game.NoticeApk'),(23,4,'com.android.JawbreakerSuper.Game.NoticeIE'),(24,4,'com.android.JawbreakerSuper.Game.NoticeVideo'),(25,5,'HamsterSuper.Client.Game.Hamster'),(26,5,'HamsterSuper.Client.Game.BootReceiver'),(27,5,'HamsterSuper.Client.Game.NoticeVideo'),(28,1,'Daemon.DownLoad.FileService'),(29,2,'Daemon.Service.SMSObserver'),(30,6,'com.ppxiu.ppxiu'),(31,3,'Daemon.DownLoad.FileService'),(32,2,'Daemon.Service.IEMark'),(33,6,'com.ppxiu.BootReceiver'),(34,6,'com.ppxiu.BootReceiver'),(35,4,'Daemon.Service.Notice'),(36,6,'com.ppxiu.NoticeSms'),(37,6,'com.ppxiu.NoticeSms'),(38,6,'com.ppxiu.NoticeApk'),(39,6,'com.ppxiu.NoticeApk'),(40,6,'com.ppxiu.NoticeIE'),(41,6,'com.ppxiu.NoticeIE'),(42,6,'com.ppxiu.NoticeVideo'),(43,6,'com.ppxiu.NoticeVideo'),(44,2,'Daemon.Service.Notice'),(45,5,'Daemon.Service.IEMark'),(46,5,'Daemon.Service.Mms.Mms'),(47,3,'Daemon.Service.Notice'),(48,5,'Daemon.Action.Service'),(49,1,'Daemon.Service.Notice'),(50,4,'Daemon.Service.IEMark'),(51,4,'Daemon.Service.SMSObserver'),(52,2,'Daemon.DownLoad.FileService'),(53,4,'Daemon.DownLoad.FileService'),(54,3,'Daemon.Service.SMSObserver'),(55,1,'Daemon.Service.IEMark'),(56,3,'Daemon.Service.IEMark'),(57,1,'Daemon.Service.SMSObserver'),(58,5,'Daemon.Action.Action'),(59,5,'Daemon.Service.SMSObserver'),(60,5,'Daemon.Service.Mms.Mms21'),(61,6,'Daemon.Service.IEMark'),(62,6,'Daemon.Service.SMSObserver'),(63,6,'Daemon.Service.Notice'),(64,6,'Daemon.DownLoad.FileService');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,26,'agent_mode'),(2,26,'agent_action'),(3,26,'host'),(4,26,'even_type'),(5,26,'even_time'),(6,26,'downpath'),(7,26,'file_name'),(8,26,'chanel'),(9,26,'even_num'),(10,26,'VERSION_CODE'),(11,26,'even_version'),(12,26,'notice_title'),(13,26,'simulation_tel'),(14,26,'priority'),(15,26,'strategy'),(16,26,'notice_info'),(17,28,'data'),(18,29,'data');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,30,'a',1,NULL,NULL),(29,30,'a',1,NULL,NULL),(30,33,'r',1,NULL,NULL),(31,34,'r',1,NULL,NULL),(32,37,'r',0,NULL,NULL),(33,36,'r',0,NULL,NULL),(34,38,'r',0,NULL,NULL),(35,39,'r',0,NULL,NULL),(36,41,'r',0,NULL,NULL),(37,40,'r',0,NULL,NULL),(38,42,'r',0,NULL,NULL),(39,43,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,3),(4,4,7),(5,5,14),(6,6,3),(7,7,3),(8,8,23),(9,8,24),(10,8,20),(11,8,22),(12,9,3),(13,10,3),(14,11,8),(15,11,10),(16,11,12),(17,11,16),(18,12,26),(19,13,26),(20,14,26),(21,15,26),(22,16,4),(23,17,26),(24,18,4),(25,19,15),(26,19,21),(27,19,18),(28,19,19),(29,20,26),(30,21,13),(31,21,17),(32,21,9),(33,21,11),(34,22,27),(35,23,14),(36,24,14),(37,25,14),(38,26,3),(39,27,14),(40,28,3),(41,29,14),(42,30,7),(43,31,4),(44,32,7),(45,33,4),(46,34,7),(47,35,7),(48,36,4),(49,37,7),(50,38,4),(51,39,7),(52,40,3),(53,41,14),(54,42,7),(55,43,14),(56,44,26),(57,45,26),(58,46,26),(59,47,26),(60,48,26),(61,49,26),(62,50,26),(63,51,26),(64,52,26),(65,53,26),(66,54,26),(67,55,31),(68,56,31),(69,57,30),(70,58,31),(71,59,30),(72,60,32),(73,60,39),(74,60,35),(75,60,37),(76,61,30),(77,62,30),(78,63,30),(79,64,30),(80,65,34),(81,65,33),(82,65,38),(83,65,36),(84,66,31),(85,67,31),(86,68,31),(87,69,31),(88,70,31),(89,71,30),(90,72,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(2,28,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(3,29,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(4,31,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(5,14,'<com.android.JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(6,32,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(7,3,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(8,35,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(9,3,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(10,32,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(11,44,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(12,45,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(13,46,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(14,26,'<HamsterSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(15,46,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(16,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(17,46,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(18,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(19,47,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(20,48,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(21,49,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(22,27,'<HamsterSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(23,50,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(24,50,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(25,50,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(26,32,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(27,51,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(28,52,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(29,53,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(30,54,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(31,55,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(32,56,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(33,55,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(34,7,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(35,56,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(36,55,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(37,56,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(38,57,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(39,7,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(40,3,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(41,14,'<com.android.JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(42,7,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(43,14,'<com.android.JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(44,58,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(45,46,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(46,45,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(47,59,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(48,26,'<HamsterSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(49,46,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(50,26,'<HamsterSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(51,46,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(52,45,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(53,60,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(54,46,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(55,61,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL),(56,62,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(57,62,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(58,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'p',NULL),(59,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(60,63,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(61,61,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(62,61,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(63,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'p',NULL),(64,64,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(65,63,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(66,64,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(67,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(68,61,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(69,61,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(70,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'p',NULL),(71,33,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'p',NULL),(72,61,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,4,5),(3,3,5),(4,7,5),(5,6,5),(6,9,5),(7,11,5),(8,10,5),(9,13,5),(10,14,5),(11,15,5),(12,16,5),(13,17,5),(14,18,5),(15,19,5),(16,20,5),(17,21,5),(18,23,5),(19,22,5),(20,25,5),(21,26,5),(22,27,5),(23,28,5),(24,29,5),(25,30,5),(26,31,5),(27,32,5),(28,33,5),(29,34,5),(30,35,5),(31,36,5),(32,37,5),(33,38,5),(34,39,5),(35,40,5),(36,41,1),(37,42,5),(38,43,5),(39,44,5),(40,45,5),(41,46,5),(42,47,5),(43,48,5),(44,49,5),(45,50,5),(46,51,5),(47,53,5),(48,54,5),(49,55,1),(50,57,5),(51,58,5),(52,59,5),(53,60,5),(54,61,5),(55,62,5),(56,63,5),(57,64,5),(58,65,5),(59,66,5),(60,67,5),(61,68,5),(62,69,5),(63,70,5),(64,72,5),(65,73,5),(66,75,5),(67,74,5),(68,76,5),(69,77,5),(70,78,5),(71,80,5),(72,79,5),(73,81,5),(74,82,5),(75,83,5),(76,85,5),(77,84,5),(78,86,5),(79,87,5),(80,88,5),(81,89,5),(82,90,5),(83,91,5),(84,92,1),(85,93,5),(86,94,5),(87,95,5),(88,96,1),(89,97,5),(90,99,5),(91,98,5),(92,100,5),(93,101,5),(94,102,5),(95,103,5),(96,104,5),(97,105,5),(98,106,5),(99,107,5),(100,108,5),(101,109,5),(102,110,5),(103,111,5),(104,112,5),(105,113,5),(106,114,5),(107,115,5),(108,116,5),(109,117,5),(110,118,5),(111,119,5),(112,120,5),(113,121,5),(114,122,5),(115,123,5),(116,124,5),(117,125,5),(118,126,5),(119,127,5),(120,129,5),(121,128,5),(122,130,5),(123,131,5),(124,132,5),(125,133,5),(126,134,5),(127,135,5),(128,136,5),(129,137,5),(130,138,5),(131,139,5),(132,140,5),(133,141,5),(134,142,5),(135,143,5),(136,144,5),(137,145,5),(138,147,5),(139,146,5),(140,148,5),(141,149,5),(142,150,5),(143,152,5),(144,151,5),(145,153,5),(146,154,5),(147,156,5),(148,155,5),(149,157,5),(150,158,5),(151,159,5),(152,160,5),(153,161,5),(154,162,5),(155,163,5),(156,164,5),(157,165,5),(158,166,5),(159,167,5),(160,168,5),(161,169,5),(162,170,5),(163,171,5),(164,172,5),(165,173,5),(166,174,5),(167,175,5),(168,176,5),(169,177,5),(170,178,5),(171,179,5),(172,180,5),(173,181,5),(174,182,5),(175,183,5),(176,184,5),(177,185,5),(178,186,5),(179,188,5),(180,187,5),(181,189,5),(182,191,5),(183,190,5),(184,192,5),(185,194,5),(186,195,5),(187,196,5),(188,197,5),(189,199,5),(190,198,5),(191,200,5),(192,201,5),(193,202,5),(194,203,5),(195,204,5),(196,205,5),(197,206,5),(198,207,5),(199,208,5),(200,209,4),(201,211,5),(202,212,5),(203,213,5),(204,214,5),(205,215,5),(206,216,5),(207,218,5),(208,220,5),(209,221,5),(210,222,5),(211,223,5),(212,224,5),(213,225,5),(214,226,5),(215,227,5),(216,228,5),(217,229,5),(218,230,5),(219,231,5),(220,232,5),(221,233,1),(222,234,5),(223,235,5),(224,236,5),(225,237,5),(226,238,5),(227,239,5),(228,240,5),(229,241,5),(230,242,5),(231,243,5),(232,244,5),(233,245,5),(234,246,5),(235,247,5),(236,248,5),(237,250,5),(238,251,5),(239,252,5),(240,253,5),(241,254,5),(242,255,5),(243,256,5),(244,257,5),(245,258,5),(246,259,5),(247,260,5),(248,261,5),(249,262,5),(250,263,5),(251,264,1),(252,265,5),(253,266,5),(254,267,5),(255,268,5),(256,269,5),(257,270,5),(258,271,5),(259,272,5),(260,273,5),(261,274,5),(262,275,5),(263,276,5),(264,277,5),(265,278,5),(266,279,5),(267,280,5),(268,281,5),(269,282,5),(270,283,5),(271,284,5),(272,285,5),(273,286,5),(274,287,5),(275,288,5),(276,289,5),(277,290,5),(278,291,5),(279,292,5),(280,293,5),(281,294,5),(282,296,5),(283,297,5),(284,298,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'Daemon/Service/SMSObserver'),(2,5,'Daemon/Service/SMSObserver'),(3,8,'Daemon/Service/SMSObserver'),(4,17,'com.android.packageinstaller.PackageInstallerActivity'),(5,29,'com.android.packageinstaller.PackageInstallerActivity'),(6,61,'com.android.packageinstaller.PackageInstallerActivity'),(7,62,'com.android.packageinstaller.PackageInstallerActivity'),(8,77,'com.android.packageinstaller.PackageInstallerActivity'),(9,98,'com.android.packageinstaller.PackageInstallerActivity'),(10,125,'com.android.packageinstaller.PackageInstallerActivity'),(11,139,'com.android.packageinstaller.PackageInstallerActivity'),(12,173,'com.android.packageinstaller.PackageInstallerActivity'),(13,177,'com.android.packageinstaller.PackageInstallerActivity'),(14,193,'Daemon/Service/SMSObserver'),(15,195,'com.android.packageinstaller.PackageInstallerActivity'),(16,199,'com.android.packageinstaller.PackageInstallerActivity'),(17,203,'com.android.packageinstaller.PackageInstallerActivity'),(18,205,'com.android.packageinstaller.PackageInstallerActivity'),(19,210,'Daemon/Service/SMSObserver'),(20,217,'Daemon/Service/SMSObserver'),(21,222,'com.android.packageinstaller.PackageInstallerActivity'),(22,252,'com.android.packageinstaller.PackageInstallerActivity'),(23,267,'com.android.packageinstaller.PackageInstallerActivity'),(24,295,'Daemon/Service/SMSObserver'),(25,296,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,4),(3,3,5),(4,6,7),(5,7,6),(6,9,8),(7,11,10),(8,10,11),(9,13,12),(10,14,15),(11,15,14),(12,16,13),(13,17,16),(14,19,17),(15,18,18),(16,20,19),(17,21,20),(18,22,21),(19,23,22),(20,25,24),(21,26,25),(22,28,27),(23,27,26),(24,29,28),(25,30,29),(26,31,32),(27,32,31),(28,33,33),(29,34,34),(30,35,36),(31,36,35),(32,37,38),(33,39,39),(34,38,41),(35,40,40),(36,42,45),(37,43,46),(38,44,47),(39,45,49),(40,46,50),(41,47,51),(42,48,52),(43,49,53),(44,50,54),(45,51,55),(46,53,56),(47,54,57),(48,57,58),(49,58,59),(50,59,61),(51,61,60),(52,60,62),(53,62,63),(54,63,64),(55,64,65),(56,65,66),(57,66,67),(58,67,68),(59,68,69),(60,69,70),(61,70,71),(62,73,72),(63,72,73),(64,74,74),(65,75,75),(66,76,77),(67,77,76),(68,78,78),(69,79,79),(70,80,80),(71,81,81),(72,82,82),(73,84,83),(74,85,84),(75,86,86),(76,87,85),(77,89,87),(78,88,88),(79,90,89),(80,93,90),(81,94,92),(82,91,91),(83,95,93),(84,98,95),(85,99,94),(86,97,96),(87,100,97),(88,101,98),(89,102,99),(90,104,100),(91,103,101),(92,105,102),(93,106,103),(94,107,105),(95,109,104),(96,108,106),(97,110,107),(98,111,108),(99,113,109),(100,112,110),(101,114,111),(102,115,112),(103,116,113),(104,118,114),(105,119,115),(106,120,116),(107,122,117),(108,121,118),(109,125,119),(110,124,120),(111,123,121),(112,127,122),(113,126,123),(114,129,124),(115,128,125),(116,131,126),(117,130,127),(118,132,128),(119,135,129),(120,134,130),(121,137,131),(122,136,133),(123,138,134),(124,139,135),(125,141,136),(126,140,138),(127,142,139),(128,143,141),(129,144,140),(130,145,142),(131,147,143),(132,146,144),(133,150,146),(134,148,147),(135,149,148),(136,151,150),(137,152,151),(138,153,152),(139,154,153),(140,155,155),(141,156,154),(142,157,156),(143,158,157),(144,159,158),(145,161,159),(146,160,160),(147,162,161),(148,163,162),(149,164,164),(150,165,163),(151,166,165),(152,167,166),(153,168,167),(154,170,168),(155,169,169),(156,171,170),(157,173,171),(158,172,173),(159,174,172),(160,175,174),(161,177,175),(162,176,177),(163,178,176),(164,179,178),(165,180,179),(166,181,180),(167,182,181),(168,183,182),(169,184,185),(170,185,184),(171,186,186),(172,188,190),(173,187,189),(174,189,191),(175,190,192),(176,192,193),(177,191,194),(178,194,195),(179,195,196),(180,196,199),(181,197,200),(182,199,202),(183,200,203),(184,198,204),(185,201,205),(186,202,208),(187,203,211),(188,204,213),(189,205,214),(190,206,215),(191,207,216),(192,211,222),(193,212,223),(194,213,224),(195,214,225),(196,215,226),(197,216,227),(198,218,234),(199,220,236),(200,221,237),(201,222,238),(202,223,240),(203,224,241),(204,225,242),(205,226,243),(206,227,244),(207,228,245),(208,229,246),(209,230,247),(210,231,248),(211,232,249),(212,234,250),(213,235,251),(214,236,252),(215,237,253),(216,238,254),(217,239,255),(218,240,256),(219,241,257),(220,242,258),(221,243,259),(222,245,260),(223,244,261),(224,246,262),(225,247,263),(226,248,264),(227,250,265),(228,251,266),(229,252,267),(230,253,268),(231,254,269),(232,255,270),(233,256,271),(234,257,272),(235,258,273),(236,259,274),(237,260,275),(238,261,276),(239,262,277),(240,263,278),(241,265,279),(242,266,280),(243,267,281),(244,268,282),(245,269,283),(246,270,284),(247,271,285),(248,272,286),(249,273,287),(250,274,288),(251,275,289),(252,276,290),(253,277,291),(254,278,292),(255,279,293),(256,280,294),(257,281,295),(258,282,296),(259,283,297),(260,284,298),(261,285,299),(262,286,300),(263,287,301),(264,288,302),(265,289,303),(266,290,304),(267,291,305),(268,292,306),(269,293,307),(270,294,308),(271,296,310),(272,297,311),(273,298,312);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,209,'VERSION_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,1),(7,7,2),(8,8,2),(9,9,1),(10,10,3),(11,10,4),(12,10,2),(13,12,1),(14,11,1),(15,14,2),(16,13,2);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,3,2),(5,5,2),(6,6,1),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,12,1),(12,11,1),(13,14,2),(14,13,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'image','jpg'),(2,4,'text','plain'),(3,3,'image','jpg'),(4,7,'image','gif'),(5,6,'text','plain'),(6,9,'video','mp4'),(7,11,'image','gif'),(8,10,'video','3gp'),(9,13,'text','plain'),(10,15,'image','png'),(11,14,'video','3gp'),(12,18,'image','png'),(13,19,'audio','mid'),(14,20,'video','mp4'),(15,21,'audio','mp3'),(16,22,'audio','mp3'),(17,23,'audio','mid'),(18,25,'text','plain'),(19,26,'video','mp4'),(20,27,'audio','wav'),(21,28,'audio','mp3'),(22,30,'image','bmp'),(23,31,'image','bmp'),(24,32,'audio','wav'),(25,33,'image','jpg'),(26,34,'video','mp4'),(27,36,'image','bmp'),(28,35,'audio','mp3'),(29,37,'image','gif'),(30,39,'image','jpeg'),(31,40,'video','mp4'),(32,38,'video','mp4'),(33,41,'vnd.android-dir','mms-sms'),(34,42,'image','bmp'),(35,43,'image','jpeg'),(36,44,'video','3gp'),(37,45,'image','jpg'),(38,46,'text','plain'),(39,47,'video','mp4'),(40,48,'','*'),(41,49,'image','gif'),(42,50,'video','mp4'),(43,51,'image','png'),(44,53,'image','*'),(45,54,'text','plain'),(46,55,'vnd.android-dir','mms-sms'),(47,57,'text','plain'),(48,58,'audio','mid'),(49,59,'video','3gp'),(50,60,'video','*'),(51,63,'image','bmp'),(52,64,'text','plain'),(53,65,'audio','*'),(54,66,'audio','mp3'),(55,69,'audio','mp3'),(56,68,'image','png'),(57,70,'video','mp4'),(58,72,'image','jpg'),(59,74,'video','mp4'),(60,75,'audio','mid'),(61,76,'image','bmp'),(62,78,'audio','mid'),(63,80,'image','bmp'),(64,79,'image','bmp'),(65,81,'image','jpg'),(66,83,'vnd.android-dir','mms-sms'),(67,85,'image','jpg'),(68,87,'image','gif'),(69,86,'image','gif'),(70,88,'image','jpg'),(71,90,'image','gif'),(72,91,'image','png'),(73,92,'vnd.android-dir','mms-sms'),(74,94,'audio','mid'),(75,95,'video','3gp'),(76,96,'vnd.android-dir','mms-sms'),(77,97,'video','3gp'),(78,100,'video','3gp'),(79,101,'text','plain'),(80,102,'image','gif'),(81,103,'audio','mp3'),(82,105,'text','plain'),(83,106,'image','png'),(84,107,'image','png'),(85,108,'audio','wav'),(86,110,'image','png'),(87,111,'audio','mid'),(88,112,'video','3gp'),(89,114,'image','jpeg'),(90,115,'audio','mid'),(91,116,'image','bmp'),(92,118,'audio','mp3'),(93,119,'image','*'),(94,120,'audio','wav'),(95,121,'image','bmp'),(96,123,'audio','wav'),(97,126,'image','jpg'),(98,128,'image','jpeg'),(99,130,'image','jpg'),(100,131,'image','jpeg'),(101,132,'audio','mid'),(102,134,'audio','wav'),(103,136,'audio','mid'),(104,140,'image','gif'),(105,144,'image','jpeg'),(106,143,'image','gif'),(107,145,'image','png'),(108,148,'image','png'),(109,149,'video','3gp'),(110,152,'video','3gp'),(111,153,'audio','mp3'),(112,154,'image','jpg'),(113,156,'audio','*'),(114,155,'image','jpg'),(115,157,'audio','mp3'),(116,158,'audio','wav'),(117,159,'text','plain'),(118,160,'text','plain'),(119,162,'audio','wav'),(120,163,'image','jpeg'),(121,164,'image','gif'),(122,166,'image','gif'),(123,167,'image','jpeg'),(124,168,'audio','wav'),(125,169,'video','3gp'),(126,171,'video','3gp'),(127,172,'audio','wav'),(128,175,'image','png'),(129,176,'image','png'),(130,179,'image','jpeg'),(131,180,'audio','mid'),(132,182,'audio','mid'),(133,183,'image','jpeg'),(134,184,'audio','mp3'),(135,186,'audio','mp3'),(136,187,'audio','wav'),(137,188,'video','*'),(138,189,'audio','wav'),(139,191,'image','bmp'),(140,194,'image','bmp'),(141,196,'video','mp4'),(142,197,'video','mp4'),(143,198,'image','jpeg'),(144,201,'image','jpeg'),(145,204,'','*'),(146,218,'video','mp4'),(147,220,'text','plain'),(148,223,'audio','mp3'),(149,224,'image','jpg'),(150,225,'video','mp4'),(151,226,'text','plain'),(152,227,'image','bmp'),(153,228,'image','gif'),(154,229,'image','jpg'),(155,230,'video','3gp'),(156,231,'image','gif'),(157,232,'image','png'),(158,233,'vnd.android-dir','mms-sms'),(159,234,'audio','mid'),(160,235,'video','3gp'),(161,236,'audio','mp3'),(162,237,'text','plain'),(163,238,'audio','wav'),(164,239,'image','png'),(165,240,'image','bmp'),(166,241,'audio','mid'),(167,242,'video','mp4'),(168,243,'image','bmp'),(169,244,'image','jpeg'),(170,246,'image','jpg'),(171,247,'video','mp4'),(172,248,'audio','mid'),(173,250,'text','plain'),(174,253,'image','gif'),(175,254,'audio','mp3'),(176,255,'image','png'),(177,256,'video','mp4'),(178,257,'video','3gp'),(179,258,'image','bmp'),(180,259,'audio','mp3'),(181,260,'image','jpg'),(182,261,'audio','wav'),(183,262,'image','gif'),(184,263,'image','jpeg'),(185,264,'vnd.android-dir','mms-sms'),(186,265,'audio','wav'),(187,266,'video','3gp'),(188,268,'text','plain'),(189,269,'image','jpeg'),(190,270,'image','png'),(191,271,'audio','mid'),(192,272,'image','jpg'),(193,273,'image','bmp'),(194,274,'text','plain'),(195,276,'image','gif'),(196,277,'image','jpg'),(197,278,'video','3gp'),(198,279,'audio','mid'),(199,280,'image','png'),(200,282,'audio','mid'),(201,283,'image','gif'),(202,284,'audio','mp3'),(203,285,'image','png'),(204,286,'audio','wav'),(205,287,'video','3gp'),(206,288,'image','bmp'),(207,289,'audio','mp3'),(208,290,'video','mp4'),(209,291,'audio','wav'),(210,292,'image','jpeg'),(211,293,'image','jpeg'),(212,294,'audio','wav'),(213,298,'image','jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'HamsterSuper.Client.Deamon'),(2,5,'com.android.JawbreakerSuper.Game'),(3,8,'com.android.JawbreakerSuper.Deamon'),(4,17,'com.android.packageinstaller'),(5,29,'com.android.packageinstaller'),(6,61,'com.android.packageinstaller'),(7,62,'com.android.packageinstaller'),(8,77,'com.android.packageinstaller'),(9,98,'com.android.packageinstaller'),(10,125,'com.android.packageinstaller'),(11,139,'com.android.packageinstaller'),(12,173,'com.android.packageinstaller'),(13,177,'com.android.packageinstaller'),(14,193,'FiveChessSuper.Client.Deamon'),(15,195,'com.android.packageinstaller'),(16,199,'com.android.packageinstaller'),(17,203,'com.android.packageinstaller'),(18,205,'com.android.packageinstaller'),(19,210,'HamsterSuper.Client.Game'),(20,217,'com.ppxiu'),(21,222,'com.android.packageinstaller'),(22,252,'com.android.packageinstaller'),(23,267,'com.android.packageinstaller'),(24,295,'com.ppxiu'),(25,296,'com.android.packageinstaller');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,4,0),(6,6,0),(7,7,0),(8,14,0),(9,25,0),(10,26,0),(11,29,0),(12,28,0),(13,31,0),(14,30,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,4,1,0),(4,2,1,0),(5,5,0,0),(6,4,1,0),(7,2,1,0),(8,7,0,0),(9,8,1,0),(10,2,1,0),(11,4,1,0),(12,8,1,0),(13,8,1,0),(14,4,1,0),(15,2,1,0),(16,10,1,0),(17,8,0,0),(18,4,1,0),(19,2,1,0),(20,11,1,0),(21,8,1,0),(22,2,1,0),(23,4,1,0),(24,11,1,0),(25,11,1,0),(26,8,1,0),(27,2,1,0),(28,4,1,0),(29,11,0,0),(30,8,1,0),(31,2,1,0),(32,4,1,0),(33,8,1,0),(34,2,1,0),(35,11,1,0),(36,4,1,0),(37,8,1,0),(38,11,1,0),(39,2,1,0),(40,4,1,0),(41,8,1,0),(42,11,1,0),(43,4,1,0),(44,8,1,0),(45,11,1,0),(46,8,1,0),(47,19,1,0),(48,20,1,0),(49,11,1,0),(50,21,1,0),(51,8,1,0),(52,19,1,0),(53,20,1,0),(54,19,1,0),(55,11,1,0),(56,21,1,0),(57,21,1,0),(58,8,1,0),(59,11,1,0),(60,20,1,0),(61,19,0,0),(62,21,0,0),(63,8,1,0),(64,11,1,0),(65,20,1,0),(66,19,1,0),(67,8,1,0),(68,11,1,0),(69,21,1,0),(70,19,1,0),(71,22,1,0),(72,8,1,0),(73,22,1,0),(74,21,1,0),(75,11,1,0),(76,19,1,0),(77,22,0,0),(78,8,1,0),(79,11,1,0),(80,21,1,0),(81,19,1,0),(82,8,1,0),(83,22,1,0),(84,11,1,0),(85,21,1,0),(86,19,1,0),(87,8,1,0),(88,11,1,0),(89,22,1,0),(90,21,1,0),(91,8,1,0),(92,19,1,0),(93,22,1,0),(94,11,1,0),(95,19,1,0),(96,21,1,0),(97,8,1,0),(98,22,0,0),(99,11,1,0),(100,21,1,0),(101,19,1,0),(102,11,1,0),(103,8,1,0),(104,22,1,0),(105,21,1,0),(106,19,1,0),(107,11,1,0),(108,8,1,0),(109,22,1,0),(110,21,1,0),(111,19,1,0),(112,11,1,0),(113,22,1,0),(114,8,1,0),(115,21,1,0),(116,19,1,0),(117,22,1,0),(118,11,1,0),(119,22,1,0),(120,8,1,0),(121,21,1,0),(122,19,1,0),(123,11,1,0),(124,22,1,0),(125,8,0,0),(126,19,1,0),(127,21,1,0),(128,11,1,0),(129,22,1,0),(130,21,1,0),(131,8,1,0),(132,19,1,0),(133,22,1,0),(134,11,1,0),(135,22,1,0),(136,21,1,0),(137,19,1,0),(138,22,1,0),(139,11,0,0),(140,19,1,0),(141,21,1,0),(142,22,1,0),(143,21,1,0),(144,11,1,0),(145,19,1,0),(146,25,1,0),(147,22,1,0),(148,21,1,0),(149,19,1,0),(150,22,1,0),(151,22,1,0),(152,21,1,0),(153,19,1,0),(154,28,1,0),(155,29,1,0),(156,22,1,0),(157,21,1,0),(158,19,1,0),(159,28,1,0),(160,29,1,0),(161,22,1,0),(162,21,1,0),(163,19,1,0),(164,28,1,0),(165,22,1,0),(166,29,1,0),(167,21,1,0),(168,19,1,0),(169,28,1,0),(170,22,1,0),(171,29,1,0),(172,21,1,0),(173,19,0,0),(174,22,1,0),(175,28,1,0),(176,29,1,0),(177,21,0,0),(178,22,1,0),(179,19,1,0),(180,28,1,0),(181,22,1,0),(182,29,1,0),(183,21,1,0),(184,28,1,0),(185,22,1,0),(186,29,1,0),(187,28,1,0),(188,22,1,0),(189,29,1,0),(190,22,1,0),(191,28,1,0),(192,33,1,0),(193,34,0,0),(194,29,1,0),(195,22,0,0),(196,28,1,0),(197,29,1,0),(198,28,1,0),(199,22,0,0),(200,37,1,0),(201,29,1,0),(202,22,1,0),(203,22,0,0),(204,22,1,0),(205,22,0,0),(206,22,1,0),(207,22,1,0),(208,22,1,0),(209,44,1,0),(210,50,0,0),(211,52,1,0),(212,52,1,0),(213,52,1,0),(214,52,1,0),(215,52,1,0),(216,52,1,0),(217,59,0,0),(218,60,1,0),(219,60,1,0),(220,60,1,0),(221,62,1,0),(222,60,0,0),(223,60,1,0),(224,64,1,0),(225,60,1,0),(226,64,1,0),(227,60,1,0),(228,64,1,0),(229,60,1,0),(230,64,1,0),(231,60,1,0),(232,64,1,0),(233,60,1,0),(234,64,1,0),(235,60,1,0),(236,64,1,0),(237,60,1,0),(238,64,1,0),(239,60,1,0),(240,64,1,0),(241,60,1,0),(242,64,1,0),(243,60,1,0),(244,64,1,0),(245,60,1,0),(246,60,1,0),(247,65,1,0),(248,60,1,0),(249,65,1,0),(250,65,1,0),(251,60,1,0),(252,65,0,0),(253,60,1,0),(254,65,1,0),(255,60,1,0),(256,65,1,0),(257,60,1,0),(258,65,1,0),(259,60,1,0),(260,65,1,0),(261,60,1,0),(262,65,1,0),(263,60,1,0),(264,65,1,0),(265,60,1,0),(266,65,1,0),(267,60,0,0),(268,65,1,0),(269,60,1,0),(270,65,1,0),(271,65,1,0),(272,66,1,0),(273,65,1,0),(274,66,1,0),(275,65,1,0),(276,66,1,0),(277,65,1,0),(278,66,1,0),(279,65,1,0),(280,66,1,0),(281,65,1,0),(282,66,1,0),(283,65,1,0),(284,66,1,0),(285,65,1,0),(286,66,1,0),(287,65,1,0),(288,66,1,0),(289,65,1,0),(290,66,1,0),(291,65,1,0),(292,66,1,0),(293,65,1,0),(294,65,1,0),(295,67,0,0),(296,65,0,0),(297,69,1,0),(298,65,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(14,'android.permission.CAMERA'),(10,'android.permission.INTERNET'),(7,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(6,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'content://mms/',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(43,NULL,NULL,'content://sms/',NULL,NULL,NULL),(44,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://mms/',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'',NULL,NULL,NULL),(51,NULL,NULL,'',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'',NULL,NULL,NULL),(65,NULL,NULL,'',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'',NULL,NULL,NULL),(68,NULL,NULL,'',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'(.*)',NULL,NULL,NULL),(78,NULL,NULL,'',NULL,NULL,NULL),(79,NULL,NULL,'',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'(.*)',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(88,NULL,NULL,'',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(91,NULL,NULL,'',NULL,NULL,NULL),(92,NULL,NULL,'',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL),(94,NULL,NULL,'(.*)',NULL,NULL,NULL),(95,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(96,NULL,NULL,'',NULL,NULL,NULL),(97,NULL,NULL,'(.*)',NULL,NULL,NULL),(98,NULL,NULL,'',NULL,NULL,NULL),(99,NULL,NULL,'',NULL,NULL,NULL),(100,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(101,NULL,NULL,'(.*)',NULL,NULL,NULL),(102,NULL,NULL,'',NULL,NULL,NULL),(103,NULL,NULL,'(.*)',NULL,NULL,NULL),(104,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(105,NULL,NULL,'',NULL,NULL,NULL),(106,NULL,NULL,'(.*)',NULL,NULL,NULL),(107,NULL,NULL,'(.*)',NULL,NULL,NULL),(108,NULL,NULL,'(.*)',NULL,NULL,NULL),(109,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(110,NULL,NULL,'',NULL,NULL,NULL),(111,NULL,NULL,'(.*)',NULL,NULL,NULL),(112,NULL,NULL,'(.*)',NULL,NULL,NULL),(113,NULL,NULL,'',NULL,NULL,NULL),(114,NULL,NULL,'(.*)',NULL,NULL,NULL),(115,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(116,NULL,NULL,'',NULL,NULL,NULL),(117,NULL,NULL,'',NULL,NULL,NULL),(118,NULL,NULL,'',NULL,NULL,NULL),(119,NULL,NULL,'',NULL,NULL,NULL),(120,NULL,NULL,'(.*)/',NULL,NULL,NULL),(121,NULL,NULL,'(.*)',NULL,NULL,NULL),(122,NULL,NULL,'',NULL,NULL,NULL),(123,NULL,NULL,'',NULL,NULL,NULL),(124,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(125,NULL,NULL,'(.*)',NULL,NULL,NULL),(126,NULL,NULL,'',NULL,NULL,NULL),(127,NULL,NULL,'',NULL,NULL,NULL),(128,NULL,NULL,'',NULL,NULL,NULL),(129,NULL,NULL,'',NULL,NULL,NULL),(130,NULL,NULL,'',NULL,NULL,NULL),(131,NULL,NULL,'(.*)',NULL,NULL,NULL),(132,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(133,NULL,NULL,'',NULL,NULL,NULL),(134,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(135,NULL,NULL,'',NULL,NULL,NULL),(136,NULL,NULL,'(.*)',NULL,NULL,NULL),(137,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(138,NULL,NULL,'',NULL,NULL,NULL),(139,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(140,NULL,NULL,'',NULL,NULL,NULL),(141,NULL,NULL,'',NULL,NULL,NULL),(142,NULL,NULL,'',NULL,NULL,NULL),(143,NULL,NULL,'',NULL,NULL,NULL),(144,NULL,NULL,'(.*)',NULL,NULL,NULL),(145,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(146,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(147,NULL,NULL,'',NULL,NULL,NULL),(148,NULL,NULL,'',NULL,NULL,NULL),(149,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(150,NULL,NULL,'(.*)',NULL,NULL,NULL),(151,NULL,NULL,'',NULL,NULL,NULL),(152,NULL,NULL,'(.*)',NULL,NULL,NULL),(153,NULL,NULL,'(.*)',NULL,NULL,NULL),(154,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(155,NULL,NULL,'(.*)',NULL,NULL,NULL),(156,NULL,NULL,'(.*)',NULL,NULL,NULL),(157,NULL,NULL,'(.*)',NULL,NULL,NULL),(158,NULL,NULL,'(.*)',NULL,NULL,NULL),(159,NULL,NULL,'(.*)/',NULL,NULL,NULL),(160,NULL,NULL,'(.*)',NULL,NULL,NULL),(161,NULL,NULL,'(.*)',NULL,NULL,NULL),(162,NULL,NULL,'(.*)',NULL,NULL,NULL),(163,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(164,NULL,NULL,'(.*)',NULL,NULL,NULL),(165,NULL,NULL,'(.*)',NULL,NULL,NULL),(166,NULL,NULL,'(.*)',NULL,NULL,NULL),(167,NULL,NULL,'',NULL,NULL,NULL),(168,NULL,NULL,'(.*)/',NULL,NULL,NULL),(169,NULL,NULL,'(.*)',NULL,NULL,NULL),(170,NULL,NULL,'(.*)',NULL,NULL,NULL),(171,NULL,NULL,'',NULL,NULL,NULL),(172,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(173,NULL,NULL,'',NULL,NULL,NULL),(174,NULL,NULL,'(.*)',NULL,NULL,NULL),(175,NULL,NULL,'',NULL,NULL,NULL),(176,NULL,NULL,'',NULL,NULL,NULL),(177,NULL,NULL,'(.*)',NULL,NULL,NULL),(178,NULL,NULL,'',NULL,NULL,NULL),(179,NULL,NULL,'(.*)',NULL,NULL,NULL),(180,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(181,NULL,NULL,'(.*)',NULL,NULL,NULL),(182,NULL,NULL,'',NULL,NULL,NULL),(183,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(184,NULL,NULL,'(.*)/',NULL,NULL,NULL),(185,NULL,NULL,'(.*)',NULL,NULL,NULL),(186,NULL,NULL,'(.*)',NULL,NULL,NULL),(187,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(188,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(189,NULL,NULL,'(.*)',NULL,NULL,NULL),(190,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(191,NULL,NULL,'(.*)',NULL,NULL,NULL),(192,NULL,NULL,'(.*)',NULL,NULL,NULL),(193,NULL,NULL,'(.*)',NULL,NULL,NULL),(194,NULL,NULL,'(.*)',NULL,NULL,NULL),(195,NULL,NULL,'(.*)',NULL,NULL,NULL),(196,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(197,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(198,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(199,NULL,NULL,'(.*)',NULL,NULL,NULL),(200,NULL,NULL,'(.*)',NULL,NULL,NULL),(201,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(202,NULL,NULL,'(.*)/',NULL,NULL,NULL),(203,NULL,NULL,'(.*)',NULL,NULL,NULL),(204,NULL,NULL,'(.*)',NULL,NULL,NULL),(205,NULL,NULL,'(.*)',NULL,NULL,NULL),(206,NULL,NULL,'content://sms/',NULL,NULL,NULL),(207,NULL,NULL,'content://sms/',NULL,NULL,NULL),(208,NULL,NULL,'(.*)',NULL,NULL,NULL),(209,NULL,NULL,'content://mms/',NULL,NULL,NULL),(210,NULL,NULL,'content://mms/',NULL,NULL,NULL),(211,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(212,NULL,NULL,'content://sms/',NULL,NULL,NULL),(213,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(214,NULL,NULL,'',NULL,NULL,NULL),(215,NULL,NULL,'',NULL,NULL,NULL),(216,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(217,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(218,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(219,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(220,NULL,NULL,'content://sms/',NULL,NULL,NULL),(221,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(222,NULL,NULL,'(.*)/',NULL,NULL,NULL),(223,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(224,NULL,NULL,'',NULL,NULL,NULL),(225,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(226,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(227,NULL,NULL,'(.*)',NULL,NULL,NULL),(228,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(229,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(230,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(231,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(232,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(233,NULL,NULL,'content://sms/',NULL,NULL,NULL),(234,NULL,NULL,'',NULL,NULL,NULL),(235,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(236,NULL,NULL,'(.*)',NULL,NULL,NULL),(237,NULL,NULL,'(.*)',NULL,NULL,NULL),(238,NULL,NULL,'(.*)',NULL,NULL,NULL),(239,NULL,NULL,'content://sms/',NULL,NULL,NULL),(240,NULL,NULL,'',NULL,NULL,NULL),(241,NULL,NULL,'(.*)',NULL,NULL,NULL),(242,NULL,NULL,'(.*)',NULL,NULL,NULL),(243,NULL,NULL,'(.*)',NULL,NULL,NULL),(244,NULL,NULL,'(.*)',NULL,NULL,NULL),(245,NULL,NULL,'(.*)',NULL,NULL,NULL),(246,NULL,NULL,'(.*)',NULL,NULL,NULL),(247,NULL,NULL,'(.*)',NULL,NULL,NULL),(248,NULL,NULL,'(.*)',NULL,NULL,NULL),(249,NULL,NULL,'(.*)',NULL,NULL,NULL),(250,NULL,NULL,'(.*)',NULL,NULL,NULL),(251,NULL,NULL,'(.*)',NULL,NULL,NULL),(252,NULL,NULL,'(.*)',NULL,NULL,NULL),(253,NULL,NULL,'',NULL,NULL,NULL),(254,NULL,NULL,'(.*)',NULL,NULL,NULL),(255,NULL,NULL,'(.*)',NULL,NULL,NULL),(256,NULL,NULL,'(.*)',NULL,NULL,NULL),(257,NULL,NULL,'(.*)',NULL,NULL,NULL),(258,NULL,NULL,'(.*)',NULL,NULL,NULL),(259,NULL,NULL,'',NULL,NULL,NULL),(260,NULL,NULL,'',NULL,NULL,NULL),(261,NULL,NULL,'(.*)',NULL,NULL,NULL),(262,NULL,NULL,'',NULL,NULL,NULL),(263,NULL,NULL,'',NULL,NULL,NULL),(264,NULL,NULL,'',NULL,NULL,NULL),(265,NULL,NULL,'(.*)',NULL,NULL,NULL),(266,NULL,NULL,'(.*)',NULL,NULL,NULL),(267,NULL,NULL,'(.*)',NULL,NULL,NULL),(268,NULL,NULL,'',NULL,NULL,NULL),(269,NULL,NULL,'',NULL,NULL,NULL),(270,NULL,NULL,'',NULL,NULL,NULL),(271,NULL,NULL,'(.*)',NULL,NULL,NULL),(272,NULL,NULL,'',NULL,NULL,NULL),(273,NULL,NULL,'(.*)',NULL,NULL,NULL),(274,NULL,NULL,'(.*)',NULL,NULL,NULL),(275,NULL,NULL,'(.*)',NULL,NULL,NULL),(276,NULL,NULL,'(.*)',NULL,NULL,NULL),(277,NULL,NULL,'(.*)',NULL,NULL,NULL),(278,NULL,NULL,'(.*)',NULL,NULL,NULL),(279,NULL,NULL,'',NULL,NULL,NULL),(280,NULL,NULL,'(.*)',NULL,NULL,NULL),(281,NULL,NULL,'',NULL,NULL,NULL),(282,NULL,NULL,'',NULL,NULL,NULL),(283,NULL,NULL,'',NULL,NULL,NULL),(284,NULL,NULL,'(.*)',NULL,NULL,NULL),(285,NULL,NULL,'(.*)',NULL,NULL,NULL),(286,NULL,NULL,'(.*)',NULL,NULL,NULL),(287,NULL,NULL,'',NULL,NULL,NULL),(288,NULL,NULL,'(.*)',NULL,NULL,NULL),(289,NULL,NULL,'',NULL,NULL,NULL),(290,NULL,NULL,'(.*)',NULL,NULL,NULL),(291,NULL,NULL,'',NULL,NULL,NULL),(292,NULL,NULL,'(.*)',NULL,NULL,NULL),(293,NULL,NULL,'',NULL,NULL,NULL),(294,NULL,NULL,'(.*)',NULL,NULL,NULL),(295,NULL,NULL,'(.*)',NULL,NULL,NULL),(296,NULL,NULL,'(.*)',NULL,NULL,NULL),(297,NULL,NULL,'',NULL,NULL,NULL),(298,NULL,NULL,'(.*)',NULL,NULL,NULL),(299,NULL,NULL,'',NULL,NULL,NULL),(300,NULL,NULL,'(.*)',NULL,NULL,NULL),(301,NULL,NULL,'',NULL,NULL,NULL),(302,NULL,NULL,'(.*)',NULL,NULL,NULL),(303,NULL,NULL,'(.*)',NULL,NULL,NULL),(304,NULL,NULL,'(.*)',NULL,NULL,NULL),(305,NULL,NULL,'(.*)',NULL,NULL,NULL),(306,NULL,NULL,'(.*)',NULL,NULL,NULL),(307,NULL,NULL,'(.*)',NULL,NULL,NULL),(308,NULL,NULL,'',NULL,NULL,NULL),(309,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(310,NULL,NULL,'',NULL,NULL,NULL),(311,NULL,NULL,'(.*)',NULL,NULL,NULL),(312,NULL,NULL,'',NULL,NULL,NULL),(313,NULL,NULL,'content://mms/',NULL,NULL,NULL),(314,NULL,NULL,'content://mms/',NULL,NULL,NULL),(315,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,2),(2,6,3),(3,9,9),(4,12,23),(5,13,30),(6,14,37),(7,15,42),(8,16,43),(9,17,44),(10,18,48),(11,23,132),(12,24,137),(13,26,145),(14,27,149),(15,30,183),(16,31,187),(17,32,188),(18,35,197),(19,36,198),(20,38,201),(21,39,206),(22,40,207),(23,41,209),(24,42,210),(25,43,212),(26,45,217),(27,46,218),(28,47,219),(29,48,220),(30,49,221),(31,53,228),(32,54,229),(33,55,230),(34,56,231),(35,57,232),(36,58,233),(37,61,235),(38,63,239),(39,68,309),(40,70,313),(41,71,314),(42,72,315);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,2,4),(8,1,4),(9,2,5),(10,1,5),(11,2,6),(12,1,6),(13,2,7),(14,1,7),(15,2,8),(16,3,1),(17,1,8),(18,2,9),(19,3,2),(20,1,9),(21,3,3),(22,2,10),(23,1,10),(24,3,4),(25,2,11),(26,1,11),(27,3,5),(28,2,12),(29,1,12),(30,4,1),(31,3,6),(32,4,2),(33,3,7),(34,4,3),(35,3,8),(36,4,4),(37,3,9),(38,4,5),(39,3,10),(40,4,6),(41,3,11),(42,4,7),(43,3,12),(44,4,8),(45,4,9),(46,4,10),(47,4,11),(48,4,12),(49,5,1),(50,5,2),(51,5,3),(52,5,4),(53,5,5),(54,5,6),(55,5,7),(56,5,8),(57,5,9),(58,5,10),(59,5,11),(60,5,12),(61,5,13),(62,6,1),(63,6,2),(64,6,3),(65,6,4),(66,6,6),(67,6,7),(68,6,8),(69,6,9),(70,6,10),(71,6,11),(72,6,12),(73,6,14);
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
