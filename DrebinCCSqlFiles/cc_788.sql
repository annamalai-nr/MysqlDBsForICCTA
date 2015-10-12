-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_788
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
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.HEART_CODE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.MEDIA_EJECT'),(6,'android.intent.action.MEDIA_UNMOUNTED'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(10,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(4,'android.intent.action.START_AGENT'),(12,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.systemsecurity6.gms',1),(2,'HamsterSuper.Client.Game',1),(3,'JawbreakerSuper.Game',1),(4,'HamsterSuper.Client.Game',2),(5,'JawbreakerSuper.Game',2),(6,'Korton.Client',127),(7,'com.ppxiu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.systemsecurity6.gms.Activation'),(2,1,'com.systemsecurity6.gms.MainService'),(3,1,'com.systemsecurity6.gms.SmsReceiver'),(4,2,'HamsterSuper.Client.Game.Hamster'),(5,2,'HamsterSuper.Client.Game.BootReceiver'),(6,2,'HamsterSuper.Client.Game.NoticeSms'),(7,2,'HamsterSuper.Client.Game.NoticeApk'),(8,2,'HamsterSuper.Client.Game.NoticeIE'),(9,2,'HamsterSuper.Client.Game.NoticeVideo'),(10,3,'JawbreakerSuper.Game.Jawbreaker'),(11,3,'JawbreakerSuper.Game.BootReceiver'),(12,4,'HamsterSuper.Client.Game.Hamster'),(13,3,'JawbreakerSuper.Game.NoticeSms'),(14,4,'HamsterSuper.Client.Game.BootReceiver'),(15,3,'JawbreakerSuper.Game.NoticeApk'),(16,3,'JawbreakerSuper.Game.NoticeIE'),(17,3,'JawbreakerSuper.Game.NoticeVideo'),(18,4,'HamsterSuper.Client.Game.NoticeVideo'),(19,5,'JawbreakerSuper.Game.Jawbreaker'),(20,5,'JawbreakerSuper.Game.BootReceiver'),(21,5,'JawbreakerSuper.Game.NoticeVideo'),(22,6,'Korton.Client.Logo'),(23,6,'Korton.Client.Rss'),(24,6,'Korton.Client.Service.PhoneBookResult'),(25,6,'Korton.Client.FileManager.FileManager'),(26,6,'Korton.Client.AppManager.MyTab'),(27,6,'Korton.Client.GravitySensingAlarm.GravitySensingAlarm'),(28,6,'Korton.Client.GravitySensingAlarm.GravitySensingAlarmSetting'),(29,6,'Korton.Client.GravitySensingAlarm.GravitySensingList'),(30,6,'Korton.Client.Copy.CopyGuide'),(31,6,'Korton.Client.Copy.CopyMain'),(32,6,'Korton.Client.Copy.CopyMainCopy'),(33,6,'Korton.Client.Copy.CopyMainRestore'),(34,6,'Korton.Client.Copy.CopyMainAccount'),(35,6,'Korton.Client.Copy.CopyHelp'),(36,6,'Korton.Client.Copy.CopyList'),(37,6,'Korton.Client.Copy.CopyRegister'),(38,6,'Korton.Client.Copy.CopyRegisterOK'),(39,6,'Korton.Client.Copy.CopyInfo'),(40,6,'Korton.Client.Call.CallBlack'),(41,6,'Korton.Client.Call.CallAddBlack'),(42,6,'Korton.Client.Call.CallTab'),(43,6,'Korton.Client.Call.CallMain'),(44,6,'Korton.Client.Call.CallLogAdd'),(45,6,'Korton.Client.StratApp.StarApp'),(46,6,'Korton.Client.RiskAnalysis.Risk'),(47,6,'Korton.Client.Check.RunningThread'),(48,6,'Korton.Client.Check.ThirdAndSystemApplication'),(49,6,'Korton.Client.MoneyLog.MoneyLog'),(50,6,'Korton.Client.MoneyLog.DeleteRiskMsg'),(51,6,'Korton.Client.Discharge.DischargeSetting'),(52,6,'Korton.Client.Discharge.DischargeDetail'),(53,6,'Korton.Client.Discharge.DischargeMain'),(54,6,'Korton.Client.Discharge.DischargeSummary'),(55,6,'Korton.Client.Discharge.DischargeHelp'),(56,6,'Korton.Client.Control.Control'),(57,6,'Korton.Client.Control.ControlDelCommand'),(58,6,'Korton.Client.Control.ControlProtectCommand'),(59,6,'Korton.Client.Control.GetPassWord'),(60,6,'Korton.Client.Control.BlackScreen'),(61,6,'Korton.Client.About.About'),(62,6,'Korton.Client.About.AboutHelp'),(63,6,'Korton.Client.About.SelectContacts'),(64,6,'Korton.Client.About.UpdateInfo'),(65,6,'Korton.Client.Check.Check'),(66,6,'Korton.Client.Check.CheckLoad'),(67,6,'Korton.Client.Check.BowserMark'),(68,6,'Korton.Client.HardwareInfo.PhoneInfoActivity'),(69,6,'Korton.Client.HardwareInfo.CheckScreen'),(70,6,'Korton.Client.Market.Market'),(71,6,'Korton.Client.Market.MarketInfo'),(72,6,'Korton.Client.GravitySensingAlarm.GravitySensingService'),(73,6,'Korton.Client.Copy.CopyService'),(74,6,'Korton.Client.Discharge.DischargeServer'),(75,6,'Korton.Client.Control.ControlBootService'),(76,6,'Korton.Client.GravitySensingAlarm.UnmountSDCardReceiver'),(77,6,'Korton.Client.Copy.CopyReceiver'),(78,6,'Korton.Client.Copy.CopyThread'),(79,6,'Korton.Client.Call.CallReceiver'),(80,6,'Korton.Client.StratApp.StarReceiver'),(81,6,'Korton.Client.RiskAnalysis.RiskReceiver'),(82,6,'Korton.Client.Discharge.DischargeReceiver'),(83,6,'Korton.Client.Control.NoticeThread'),(84,6,'Korton.Client.Control.ControlBootReceiver'),(85,2,'Daemon.Service.SMSObserver'),(86,6,'Korton.Client.MoneyLog.SmsReceiver'),(87,6,'Korton.Client.Market.Receiver.InstallReceiver'),(88,6,'Korton.Client.AdReceiver'),(89,2,'Daemon.Service.IEMark'),(90,6,'Korton.Client.ShareReceiver'),(91,6,'Korton.Client.VideoReceiver'),(92,2,'Daemon.DownLoad.FileService'),(93,3,'Daemon.Service.IEMark'),(94,7,'com.ppxiu.ppxiu'),(95,7,'com.ppxiu.BootReceiver'),(96,3,'Daemon.Service.Notice'),(97,7,'com.ppxiu.NoticeSms'),(98,7,'com.ppxiu.NoticeApk'),(99,5,'Daemon.Service.Mms.Mms'),(100,7,'com.ppxiu.NoticeIE'),(101,7,'com.ppxiu.NoticeVideo'),(102,5,'Daemon.Service.IEMark'),(103,4,'Daemon.Service.Mms.Mms'),(104,2,'Daemon.Service.Notice'),(105,5,'Daemon.Action.Service'),(106,4,'Daemon.Action.Service'),(107,5,'Daemon.Action.Action'),(108,4,'Daemon.Service.SMSObserver'),(109,5,'Daemon.Service.SMSObserver'),(110,5,'Daemon.Service.Mms.Mms21'),(111,3,'Daemon.Service.SMSObserver'),(112,3,'Daemon.DownLoad.FileService'),(113,7,'Daemon.Service.IEMark'),(114,4,'Daemon.Service.Mms.Mms21'),(115,7,'Daemon.Service.Notice'),(116,4,'Daemon.Service.IEMark'),(117,4,'Daemon.Action.Action'),(118,7,'Daemon.Service.SMSObserver'),(119,7,'Daemon.DownLoad.FileService');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,20,'host'),(3,14,'even_time'),(4,14,'even_version'),(5,20,'notice_title'),(6,14,'host'),(7,20,'simulation_tel'),(8,14,'chanel'),(9,20,'agent_action'),(10,20,'chanel'),(11,14,'agent_mode'),(12,14,'VERSION_CODE'),(13,20,'even_time'),(14,20,'even_version'),(15,20,'file_name'),(16,20,'VERSION_CODE'),(17,20,'priority'),(18,20,'downpath'),(19,20,'even_type'),(20,20,'agent_mode'),(21,14,'priority'),(22,14,'downpath'),(23,14,'even_num'),(24,14,'simulation_tel'),(25,14,'agent_action'),(26,14,'file_name'),(27,14,'even_type'),(28,14,'notice_title'),(29,20,'even_num'),(30,20,'notice_info'),(31,20,'strategy'),(32,14,'strategy'),(33,14,'notice_info'),(34,90,'data');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,86,'r',1,NULL,NULL),(86,87,'r',1,NULL,NULL),(87,88,'r',1,NULL,NULL),(88,90,'r',1,NULL,NULL),(89,91,'r',0,NULL,NULL),(90,94,'a',1,NULL,NULL),(91,95,'r',1,NULL,NULL),(92,97,'r',0,NULL,NULL),(93,98,'r',0,NULL,NULL),(94,100,'r',0,NULL,NULL),(95,101,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,5),(4,4,5),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,9,11),(10,10,11),(11,11,11),(12,12,11),(13,13,20),(14,14,16),(15,14,15),(16,14,13),(17,14,17),(18,15,20),(19,16,20),(20,17,14),(21,18,5),(22,19,14),(23,21,14),(24,20,9),(25,20,8),(26,20,7),(27,20,6),(28,22,20),(29,23,14),(30,24,20),(31,25,20),(32,26,14),(33,27,20),(34,28,14),(35,29,14),(36,30,20),(37,31,14),(38,32,20),(39,33,14),(40,34,14),(41,35,20),(42,36,20),(43,37,18),(44,38,20),(45,39,20),(46,40,20),(47,41,21),(48,42,11),(49,43,11),(50,44,11),(51,45,11),(52,46,14),(53,47,91),(54,48,14),(55,49,91),(56,50,95),(57,50,93),(58,50,94),(59,50,92),(60,51,14),(61,52,14),(62,53,20),(63,54,20),(64,55,20),(65,56,14),(66,57,14),(67,58,14),(68,59,91),(69,60,91),(70,61,91),(71,62,91),(72,63,91),(73,64,91);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.systemsecurity6.gms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(2,85,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(3,5,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(4,5,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(5,89,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(6,89,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(7,89,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(8,92,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(9,11,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'p',NULL),(10,93,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(11,11,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'p',NULL),(12,93,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL),(13,20,'<JawbreakerSuper.Game.BootReceiver: void init()>',20,'p',NULL),(14,96,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(15,99,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(16,102,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(17,103,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(18,5,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(19,103,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(20,104,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(21,103,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(22,20,'<JawbreakerSuper.Game.BootReceiver: void init()>',17,'p',NULL),(23,103,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(24,99,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(25,105,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(26,106,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(27,99,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(28,14,'<HamsterSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(29,103,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(30,107,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(31,108,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(32,109,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(33,103,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(34,14,'<HamsterSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(35,99,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(36,102,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(37,18,'<HamsterSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(38,99,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(39,110,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(40,99,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(41,21,'<JawbreakerSuper.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(42,111,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(43,93,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(44,11,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(45,112,'<Daemon.DownLoad.FileService: void push()>',125,'a',NULL),(46,14,'<HamsterSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(47,113,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL),(48,114,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(49,113,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(50,115,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(51,116,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(52,116,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(53,102,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(54,99,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(55,20,'<JawbreakerSuper.Game.BootReceiver: void init()>',25,'s',NULL),(56,103,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(57,117,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(58,116,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(59,118,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(60,113,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(61,95,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'p',NULL),(62,95,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'p',NULL),(63,95,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(64,119,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,12),(2,3,12),(3,4,12),(4,5,12),(5,6,12),(6,7,12),(7,8,12),(8,9,12),(9,10,12),(10,12,12),(11,13,12),(12,14,12),(13,15,12),(14,16,12),(15,17,12),(16,18,12),(17,19,12),(18,20,12),(19,21,12),(20,22,12),(21,23,12),(22,24,12),(23,25,12),(24,26,12),(25,27,12),(26,28,12),(27,29,12),(28,31,12),(29,32,1),(30,33,12),(31,34,12),(32,35,12),(33,36,12),(34,37,12),(35,38,12),(36,39,12),(37,40,12),(38,41,12),(39,42,12),(40,43,12),(41,44,12),(42,45,12),(43,46,12),(44,47,12),(45,48,12),(46,49,12),(47,50,12),(48,51,12),(49,52,12),(50,53,5),(51,54,12),(52,55,1),(53,56,12),(54,57,12),(55,58,12),(56,59,12),(57,61,12),(58,62,12),(59,64,12),(60,65,12),(61,66,12),(62,67,12),(63,68,12),(64,69,12),(65,70,12),(66,71,12),(67,72,12),(68,73,12),(69,74,12),(70,75,12),(71,76,12),(72,78,12),(73,79,12),(74,80,12),(75,81,12),(76,82,12),(77,83,12),(78,84,12),(79,85,12),(80,86,12),(81,87,12),(82,88,12),(83,89,12),(84,90,12),(85,91,12),(86,92,12),(87,93,12),(88,94,12),(89,95,12),(90,96,12),(91,97,12),(92,98,12),(93,99,12),(94,100,12),(95,101,12),(96,102,12),(97,103,12),(98,104,12),(99,105,12),(100,106,12),(101,109,12),(102,108,12),(103,110,12),(104,111,12),(105,112,12),(106,113,12),(107,114,12),(108,115,12),(109,116,12),(110,117,12),(111,118,12),(112,119,12),(113,120,12),(114,121,12),(115,122,12),(116,123,12),(117,124,12),(118,125,12),(119,126,12),(120,127,12),(121,128,12),(122,129,12),(123,130,12),(124,131,12),(125,132,12),(126,133,12),(127,134,12),(128,135,12),(129,136,12),(130,137,12),(131,138,12),(132,139,12),(133,140,12),(134,141,12),(135,142,12),(136,143,12),(137,144,12),(138,145,12),(139,146,12),(140,147,12),(141,148,12),(142,149,12),(143,150,12),(144,151,12),(145,152,12),(146,153,12),(147,154,12),(148,155,12),(149,156,12),(150,157,12),(151,158,12),(152,159,12),(153,160,12),(154,161,12),(155,162,12),(156,163,12),(157,164,12),(158,165,12),(159,166,12),(160,167,12),(161,168,12),(162,169,12),(163,170,12),(164,171,12),(165,172,12),(166,173,12),(167,174,12),(168,175,12),(169,176,12),(170,177,12),(171,178,12),(172,180,12),(173,181,12),(174,182,12),(175,183,12),(176,184,12),(177,185,12),(178,186,12),(179,188,12),(180,189,12),(181,190,12),(182,191,12),(183,192,12),(184,193,12),(185,194,12),(186,195,5),(187,196,1),(188,197,12),(189,198,12),(190,199,12),(191,200,12),(192,201,12),(193,202,12),(194,203,12),(195,204,12),(196,205,12),(197,206,12),(198,207,12),(199,208,12),(200,209,12),(201,210,12),(202,211,12),(203,212,12),(204,213,12),(205,214,12),(206,215,12),(207,217,12),(208,218,12),(209,219,12),(210,220,12),(211,221,12),(212,222,12),(213,223,12),(214,224,12),(215,225,12),(216,226,12),(217,227,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'Daemon/Service/SMSObserver'),(2,15,'com.android.packageinstaller.PackageInstallerActivity'),(3,34,'com.android.packageinstaller.PackageInstallerActivity'),(4,60,'Daemon/Service/SMSObserver'),(5,67,'com.android.packageinstaller.PackageInstallerActivity'),(6,78,'com.android.packageinstaller.PackageInstallerActivity'),(7,82,'com.android.packageinstaller.PackageInstallerActivity'),(8,89,'com.android.packageinstaller.PackageInstallerActivity'),(9,98,'com.android.packageinstaller.PackageInstallerActivity'),(10,107,'Daemon/Service/SMSObserver'),(11,117,'com.android.packageinstaller.PackageInstallerActivity'),(12,156,'com.android.packageinstaller.PackageInstallerActivity'),(13,159,'com.android.packageinstaller.PackageInstallerActivity'),(14,163,'com.android.packageinstaller.PackageInstallerActivity'),(15,166,'com.android.packageinstaller.PackageInstallerActivity'),(16,167,'com.android.packageinstaller.PackageInstallerActivity'),(17,168,'com.android.packageinstaller.PackageInstallerActivity'),(18,172,'com.android.packageinstaller.PackageInstallerActivity'),(19,175,'com.android.packageinstaller.PackageInstallerActivity'),(20,183,'com.android.packageinstaller.PackageInstallerActivity'),(21,187,'Daemon/Service/SMSObserver'),(22,213,'com.android.packageinstaller.PackageInstallerActivity'),(23,216,'Daemon/Service/SMSObserver');
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,4),(2,3,6),(3,4,7),(4,5,9),(5,6,11),(6,7,14),(7,8,16),(8,9,17),(9,10,19),(10,12,20),(11,13,21),(12,14,22),(13,15,23),(14,17,24),(15,16,25),(16,18,26),(17,19,27),(18,20,28),(19,21,29),(20,22,30),(21,23,31),(22,24,33),(23,25,35),(24,26,37),(25,27,39),(26,28,41),(27,29,44),(28,31,45),(29,34,46),(30,33,47),(31,35,48),(32,36,49),(33,37,50),(34,38,51),(35,39,52),(36,40,53),(37,41,54),(38,42,55),(39,43,56),(40,44,57),(41,45,58),(42,46,59),(43,47,60),(44,48,61),(45,49,63),(46,50,65),(47,51,66),(48,52,68),(49,54,69),(50,56,72),(51,57,73),(52,58,74),(53,59,75),(54,61,77),(55,62,78),(56,64,80),(57,65,81),(58,66,82),(59,67,83),(60,68,84),(61,69,86),(62,72,88),(63,71,89),(64,73,90),(65,76,91),(66,74,92),(67,75,93),(68,78,94),(69,79,95),(70,81,97),(71,80,96),(72,82,98),(73,83,99),(74,84,100),(75,85,101),(76,86,102),(77,89,103),(78,87,104),(79,90,105),(80,91,106),(81,92,107),(82,94,108),(83,93,109),(84,96,111),(85,97,110),(86,98,112),(87,99,114),(88,100,115),(89,101,116),(90,102,117),(91,103,118),(92,104,119),(93,105,120),(94,108,121),(95,110,122),(96,109,123),(97,111,124),(98,113,125),(99,114,126),(100,115,127),(101,116,128),(102,117,129),(103,119,130),(104,120,131),(105,118,132),(106,121,133),(107,122,134),(108,123,135),(109,124,136),(110,126,137),(111,128,138),(112,127,139),(113,129,140),(114,130,141),(115,131,142),(116,132,143),(117,133,144),(118,134,145),(119,135,146),(120,136,147),(121,138,148),(122,137,149),(123,139,150),(124,140,151),(125,142,152),(126,141,153),(127,143,154),(128,144,155),(129,145,156),(130,146,157),(131,147,158),(132,148,159),(133,149,160),(134,150,161),(135,151,162),(136,152,163),(137,153,164),(138,154,165),(139,155,166),(140,156,167),(141,157,168),(142,158,169),(143,159,170),(144,160,171),(145,161,172),(146,162,173),(147,163,174),(148,164,175),(149,165,176),(150,166,177),(151,167,178),(152,168,179),(153,169,180),(154,170,181),(155,171,182),(156,172,183),(157,174,185),(158,175,188),(159,176,190),(160,177,192),(161,178,193),(162,181,194),(163,182,196),(164,183,197),(165,184,198),(166,185,200),(167,186,201),(168,188,202),(169,189,203),(170,190,204),(171,191,205),(172,192,206),(173,193,208),(174,194,209),(175,197,211),(176,198,212),(177,199,213),(178,200,214),(179,201,215),(180,202,216),(181,203,217),(182,204,218),(183,205,219),(184,206,220),(185,207,221),(186,208,222),(187,209,223),(188,210,224),(189,211,225),(190,212,226),(191,213,227),(192,214,228),(193,215,230),(194,217,233),(195,218,234),(196,219,235),(197,220,236),(198,221,237),(199,222,238),(200,223,239),(201,224,240),(202,225,241),(203,226,242),(204,227,243);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,53,'VERSION_CODE'),(2,195,'VERSION_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,1),(6,6,3),(7,7,1),(8,8,5),(9,8,3),(10,8,4),(11,9,1),(12,10,5),(13,10,3),(14,10,4),(15,11,1),(16,12,6),(17,12,7),(18,13,3),(19,13,2),(20,14,9),(21,14,8),(22,15,3),(23,16,10),(24,17,3),(25,18,3),(26,19,2),(27,20,11),(28,20,10),(29,21,2),(30,21,4),(31,22,5),(32,23,1),(33,24,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,1),(5,6,2),(6,7,1),(7,8,2),(8,9,1),(9,10,2),(10,11,1),(11,13,2),(12,15,2),(13,17,2),(14,18,2),(15,21,2),(16,23,1),(17,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'file',NULL,NULL,NULL,NULL,NULL),(2,16,'package',NULL,NULL,NULL,NULL,NULL),(3,20,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'image','jpg'),(2,4,'text','plain'),(3,5,'image','gif'),(4,6,'video','3gp'),(5,7,'image','png'),(6,8,'audio','mid'),(7,9,'video','mp4'),(8,10,'audio','mp3'),(9,12,'text','plain'),(10,13,'audio','wav'),(11,16,'image','bmp'),(12,19,'audio','mp3'),(13,20,'video','mp4'),(14,22,'video','mp4'),(15,23,'image','jpeg'),(16,25,'image','bmp'),(17,27,'image','jpg'),(18,28,'video','mp4'),(19,29,'image','gif'),(20,31,'text','plain'),(21,32,'vnd.android-dir','mms-sms'),(22,33,'video','3gp'),(23,35,'','*'),(24,36,'','*'),(25,37,'text','plain'),(26,38,'image','*'),(27,39,'image','*'),(28,40,'audio','mp3'),(29,41,'image','png'),(30,42,'video','*'),(31,43,'video','*'),(32,44,'video','mp4'),(33,45,'audio','mid'),(34,46,'audio','*'),(35,47,'audio','*'),(36,48,'image','bmp'),(37,49,'image','bmp'),(38,50,'image','jpg'),(39,52,'image','gif'),(40,54,'image','jpg'),(41,55,'vnd.android-dir','mms-sms'),(42,56,'audio','mid'),(43,57,'video','3gp'),(44,59,'text','plain'),(45,61,'image','gif'),(46,62,'image','png'),(47,65,'image','png'),(48,66,'audio','mid'),(49,68,'video','3gp'),(50,69,'image','bmp'),(51,70,'vnd.android-dir','mms-sms'),(52,71,'audio','mp3'),(53,74,'image','jpg'),(54,75,'audio','wav'),(55,80,'audio','mid'),(56,81,'image','jpeg'),(57,85,'audio','wav'),(58,87,'image','gif'),(59,88,'vnd.android-dir','mms-sms'),(60,92,'image','png'),(61,93,'image','jpeg'),(62,96,'image','*'),(63,97,'video','3gp'),(64,100,'audio','mp3'),(65,104,'audio','wav'),(66,109,'image','jpeg'),(67,113,'audio','wav'),(68,114,'image','jpg'),(69,115,'image','*'),(70,118,'text','plain'),(71,123,'image','jpeg'),(72,124,'image','gif'),(73,127,'video','3gp'),(74,129,'audio','*'),(75,131,'image','png'),(76,134,'audio','mid'),(77,137,'audio','mp3'),(78,141,'audio','wav'),(79,144,'audio','*'),(80,145,'image','bmp'),(81,148,'video','mp4'),(82,151,'image','jpeg'),(83,152,'video','*'),(84,162,'video','*'),(85,165,'','*'),(86,174,'','*'),(87,177,'video','mp4'),(88,181,'text','plain'),(89,186,'audio','mp3'),(90,189,'video','mp4'),(91,191,'image','bmp'),(92,193,'image','jpg'),(93,194,'image','gif'),(94,196,'vnd.android-dir','mms-sms'),(95,197,'video','3gp'),(96,198,'text','plain'),(97,199,'image','png'),(98,200,'audio','mid'),(99,201,'image','bmp'),(100,203,'image','jpg'),(101,204,'audio','mid'),(102,206,'image','gif'),(103,207,'image','png'),(104,208,'video','3gp'),(105,209,'audio','mp3'),(106,210,'audio','wav'),(107,211,'image','jpeg'),(108,212,'audio','wav'),(109,214,'image','jpeg'),(110,217,'image','jpg'),(111,218,'text','plain'),(112,219,'image','gif'),(113,220,'video','3gp'),(114,221,'image','png'),(115,222,'audio','mid'),(116,223,'audio','mp3'),(117,224,'audio','wav'),(118,225,'image','bmp'),(119,226,'video','mp4'),(120,227,'image','jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'HamsterSuper.Client.Game'),(2,15,'com.android.packageinstaller'),(3,34,'com.android.packageinstaller'),(4,60,'HamsterSuper.Client.Game'),(5,67,'com.android.packageinstaller'),(6,78,'com.android.packageinstaller'),(7,82,'com.android.packageinstaller'),(8,89,'com.android.packageinstaller'),(9,98,'com.android.packageinstaller'),(10,107,'JawbreakerSuper.Game'),(11,117,'com.android.packageinstaller'),(12,156,'com.android.packageinstaller'),(13,159,'com.android.packageinstaller'),(14,163,'com.android.packageinstaller'),(15,166,'com.android.packageinstaller'),(16,167,'com.android.packageinstaller'),(17,168,'com.android.packageinstaller'),(18,172,'com.android.packageinstaller'),(19,175,'com.android.packageinstaller'),(20,183,'com.android.packageinstaller'),(21,187,'JawbreakerSuper.Game'),(22,213,'com.android.packageinstaller'),(23,216,'com.ppxiu');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,10,0),(6,11,0),(7,12,0),(8,14,0),(9,19,0),(10,20,0),(11,22,0),(12,76,0),(13,77,0),(14,79,0),(15,80,0),(16,81,0),(17,82,0),(18,84,0),(19,85,0),(20,86,0),(21,87,0),(22,88,0),(23,90,0),(24,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,6,1,0),(3,8,1,0),(4,8,1,0),(5,8,1,0),(6,8,1,0),(7,8,1,0),(8,8,1,0),(9,14,1,0),(10,8,1,0),(11,14,1,0),(12,14,1,0),(13,8,1,0),(14,16,1,0),(15,14,0,0),(16,8,1,0),(17,16,1,0),(18,16,1,0),(19,14,1,0),(20,8,1,0),(21,16,1,0),(22,14,1,0),(23,8,1,0),(24,16,1,0),(25,14,1,0),(26,16,1,0),(27,14,1,0),(28,20,1,0),(29,14,1,0),(30,20,1,0),(31,20,1,0),(32,14,1,0),(33,14,1,0),(34,20,0,0),(35,25,1,0),(36,26,1,0),(37,14,1,0),(38,25,1,0),(39,26,1,0),(40,20,1,0),(41,14,1,0),(42,25,1,0),(43,26,1,0),(44,20,1,0),(45,14,1,0),(46,25,1,0),(47,26,1,0),(48,20,1,0),(49,14,1,0),(50,20,1,0),(51,14,1,0),(52,20,1,0),(53,30,1,0),(54,14,1,0),(55,20,1,0),(56,14,1,0),(57,20,1,0),(58,14,1,0),(59,20,1,0),(60,34,0,0),(61,14,1,0),(62,20,1,0),(63,37,1,0),(64,37,1,0),(65,14,1,0),(66,20,1,0),(67,37,0,0),(68,14,1,0),(69,20,1,0),(70,37,1,0),(71,14,1,0),(72,20,1,0),(73,37,1,0),(74,20,1,0),(75,14,1,0),(76,37,1,0),(77,41,1,0),(78,37,0,0),(79,41,1,0),(80,20,1,0),(81,14,1,0),(82,41,0,0),(83,37,1,0),(84,20,1,0),(85,14,1,0),(86,37,1,0),(87,20,1,0),(88,41,1,0),(89,14,0,0),(90,41,1,0),(91,37,1,0),(92,20,1,0),(93,14,1,0),(94,41,1,0),(95,37,1,0),(96,37,1,0),(97,20,1,0),(98,41,0,0),(99,37,1,0),(100,20,1,0),(101,41,1,0),(102,37,1,0),(103,43,1,0),(104,20,1,0),(105,41,1,0),(106,37,1,0),(107,44,0,0),(108,37,1,0),(109,20,1,0),(110,41,1,0),(111,37,1,0),(112,41,1,0),(113,20,1,0),(114,45,1,0),(115,41,1,0),(116,37,1,0),(117,20,0,0),(118,45,1,0),(119,41,1,0),(120,37,1,0),(121,41,1,0),(122,37,1,0),(123,20,1,0),(124,45,1,0),(125,41,1,0),(126,37,1,0),(127,45,1,0),(128,41,1,0),(129,37,1,0),(130,41,1,0),(131,45,1,0),(132,37,1,0),(133,41,1,0),(134,45,1,0),(135,37,1,0),(136,41,1,0),(137,45,1,0),(138,37,1,0),(139,41,1,0),(140,37,1,0),(141,45,1,0),(142,41,1,0),(143,37,1,0),(144,41,1,0),(145,45,1,0),(146,37,1,0),(147,41,1,0),(148,45,1,0),(149,37,1,0),(150,41,1,0),(151,45,1,0),(152,37,1,0),(153,41,1,0),(154,37,1,0),(155,41,1,0),(156,37,0,0),(157,41,1,0),(158,41,1,0),(159,37,0,0),(160,41,1,0),(161,37,1,0),(162,41,1,0),(163,37,0,0),(164,41,1,0),(165,37,1,0),(166,41,0,0),(167,37,0,0),(168,41,0,0),(169,37,1,0),(170,41,1,0),(171,37,1,0),(172,41,0,0),(173,37,1,0),(174,41,1,0),(175,41,0,0),(176,41,1,0),(177,50,1,0),(178,41,1,0),(179,50,1,0),(180,41,1,0),(181,50,1,0),(182,52,1,0),(183,50,0,0),(184,52,1,0),(185,52,1,0),(186,50,1,0),(187,55,0,0),(188,52,1,0),(189,50,1,0),(190,52,1,0),(191,50,1,0),(192,52,1,0),(193,50,1,0),(194,50,1,0),(195,57,1,0),(196,50,1,0),(197,50,1,0),(198,50,1,0),(199,50,1,0),(200,50,1,0),(201,50,1,0),(202,50,1,0),(203,50,1,0),(204,50,1,0),(205,50,1,0),(206,50,1,0),(207,50,1,0),(208,50,1,0),(209,50,1,0),(210,50,1,0),(211,50,1,0),(212,50,1,0),(213,50,0,0),(214,50,1,0),(215,60,1,0),(216,63,0,0),(217,64,1,0),(218,64,1,0),(219,64,1,0),(220,64,1,0),(221,64,1,0),(222,64,1,0),(223,64,1,0),(224,64,1,0),(225,64,1,0),(226,64,1,0),(227,64,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(24,'android.permission.CAMERA'),(22,'android.permission.GET_PACKAGE_SIZE'),(2,'android.permission.INTERNET'),(19,'android.permission.KILL_BACKGROUND_PROCESSES'),(9,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(15,'android.permission.PROCESS_OUTGOING_CALLS'),(17,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.RECEIVE_SMS'),(14,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(18,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://mms/',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://mms/',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)/',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(33,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://mms/',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(63,NULL,NULL,'',NULL,NULL,NULL),(64,NULL,NULL,'content://sms/',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'',NULL,NULL,NULL),(67,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'',NULL,NULL,NULL),(70,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(71,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(72,NULL,NULL,'',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'',NULL,NULL,NULL),(76,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(77,NULL,NULL,'',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'',NULL,NULL,NULL),(85,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(86,NULL,NULL,'',NULL,NULL,NULL),(87,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(88,NULL,NULL,'',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(92,NULL,NULL,'',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL),(94,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(95,NULL,NULL,'(.*)',NULL,NULL,NULL),(96,NULL,NULL,'',NULL,NULL,NULL),(97,NULL,NULL,'(.*)',NULL,NULL,NULL),(98,NULL,NULL,'(.*)',NULL,NULL,NULL),(99,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(100,NULL,NULL,'(.*)',NULL,NULL,NULL),(101,NULL,NULL,'',NULL,NULL,NULL),(102,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(103,NULL,NULL,'',NULL,NULL,NULL),(104,NULL,NULL,'',NULL,NULL,NULL),(105,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(106,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(107,NULL,NULL,'',NULL,NULL,NULL),(108,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(109,NULL,NULL,'',NULL,NULL,NULL),(110,NULL,NULL,'',NULL,NULL,NULL),(111,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(112,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(113,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(114,NULL,NULL,'(.*)/',NULL,NULL,NULL),(115,NULL,NULL,'(.*)',NULL,NULL,NULL),(116,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(117,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(118,NULL,NULL,'(.*)',NULL,NULL,NULL),(119,NULL,NULL,'(.*)',NULL,NULL,NULL),(120,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(121,NULL,NULL,'',NULL,NULL,NULL),(122,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(123,NULL,NULL,'(.*)',NULL,NULL,NULL),(124,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(125,NULL,NULL,'',NULL,NULL,NULL),(126,NULL,NULL,'(.*)',NULL,NULL,NULL),(127,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(128,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(129,NULL,NULL,'',NULL,NULL,NULL),(130,NULL,NULL,'(.*)/',NULL,NULL,NULL),(131,NULL,NULL,'',NULL,NULL,NULL),(132,NULL,NULL,'(.*)',NULL,NULL,NULL),(133,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(134,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(135,NULL,NULL,'',NULL,NULL,NULL),(136,NULL,NULL,'(.*)',NULL,NULL,NULL),(137,NULL,NULL,'(.*)',NULL,NULL,NULL),(138,NULL,NULL,'',NULL,NULL,NULL),(139,NULL,NULL,'(.*)',NULL,NULL,NULL),(140,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(141,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(142,NULL,NULL,'(.*)',NULL,NULL,NULL),(143,NULL,NULL,'(.*)/',NULL,NULL,NULL),(144,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(145,NULL,NULL,'(.*)',NULL,NULL,NULL),(146,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(147,NULL,NULL,'',NULL,NULL,NULL),(148,NULL,NULL,'(.*)/',NULL,NULL,NULL),(149,NULL,NULL,'(.*)',NULL,NULL,NULL),(150,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(151,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(152,NULL,NULL,'(.*)',NULL,NULL,NULL),(153,NULL,NULL,'(.*)',NULL,NULL,NULL),(154,NULL,NULL,'',NULL,NULL,NULL),(155,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(156,NULL,NULL,'(.*)',NULL,NULL,NULL),(157,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(158,NULL,NULL,'(.*)/',NULL,NULL,NULL),(159,NULL,NULL,'(.*)',NULL,NULL,NULL),(160,NULL,NULL,'(.*)/',NULL,NULL,NULL),(161,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(162,NULL,NULL,'(.*)',NULL,NULL,NULL),(163,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(164,NULL,NULL,'(.*)/',NULL,NULL,NULL),(165,NULL,NULL,'(.*)',NULL,NULL,NULL),(166,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(167,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(168,NULL,NULL,'',NULL,NULL,NULL),(169,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(170,NULL,NULL,'(.*)/',NULL,NULL,NULL),(171,NULL,NULL,'(.*)/',NULL,NULL,NULL),(172,NULL,NULL,'(.*)',NULL,NULL,NULL),(173,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(174,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(175,NULL,NULL,'(.*)',NULL,NULL,NULL),(176,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(177,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(178,NULL,NULL,'',NULL,NULL,NULL),(179,NULL,NULL,'(.*)/',NULL,NULL,NULL),(180,NULL,NULL,'',NULL,NULL,NULL),(181,NULL,NULL,'(.*)',NULL,NULL,NULL),(182,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(183,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(184,NULL,NULL,'content://mms/',NULL,NULL,NULL),(185,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(186,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(187,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(188,NULL,NULL,'',NULL,NULL,NULL),(189,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(190,NULL,NULL,'',NULL,NULL,NULL),(191,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(192,NULL,NULL,'',NULL,NULL,NULL),(193,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(194,NULL,NULL,'(.*)',NULL,NULL,NULL),(195,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(196,NULL,NULL,'(.*)/',NULL,NULL,NULL),(197,NULL,NULL,'(.*)',NULL,NULL,NULL),(198,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(199,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(200,NULL,NULL,'',NULL,NULL,NULL),(201,NULL,NULL,'',NULL,NULL,NULL),(202,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(203,NULL,NULL,'(.*)',NULL,NULL,NULL),(204,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(205,NULL,NULL,'(.*)',NULL,NULL,NULL),(206,NULL,NULL,'(.*)',NULL,NULL,NULL),(207,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(208,NULL,NULL,'(.*)',NULL,NULL,NULL),(209,NULL,NULL,'(.*)',NULL,NULL,NULL),(210,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(211,NULL,NULL,'(.*)',NULL,NULL,NULL),(212,NULL,NULL,'',NULL,NULL,NULL),(213,NULL,NULL,'(.*)',NULL,NULL,NULL),(214,NULL,NULL,'(.*)',NULL,NULL,NULL),(215,NULL,NULL,'',NULL,NULL,NULL),(216,NULL,NULL,'',NULL,NULL,NULL),(217,NULL,NULL,'',NULL,NULL,NULL),(218,NULL,NULL,'',NULL,NULL,NULL),(219,NULL,NULL,'(.*)',NULL,NULL,NULL),(220,NULL,NULL,'',NULL,NULL,NULL),(221,NULL,NULL,'',NULL,NULL,NULL),(222,NULL,NULL,'',NULL,NULL,NULL),(223,NULL,NULL,'(.*)',NULL,NULL,NULL),(224,NULL,NULL,'(.*)',NULL,NULL,NULL),(225,NULL,NULL,'(.*)',NULL,NULL,NULL),(226,NULL,NULL,'',NULL,NULL,NULL),(227,NULL,NULL,'',NULL,NULL,NULL),(228,NULL,NULL,'',NULL,NULL,NULL),(229,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(230,NULL,NULL,'(.*)',NULL,NULL,NULL),(231,NULL,NULL,'content://sms/',NULL,NULL,NULL),(232,NULL,NULL,'content://mms/',NULL,NULL,NULL),(233,NULL,NULL,'(.*)',NULL,NULL,NULL),(234,NULL,NULL,'(.*)',NULL,NULL,NULL),(235,NULL,NULL,'(.*)',NULL,NULL,NULL),(236,NULL,NULL,'(.*)',NULL,NULL,NULL),(237,NULL,NULL,'(.*)',NULL,NULL,NULL),(238,NULL,NULL,'(.*)',NULL,NULL,NULL),(239,NULL,NULL,'(.*)',NULL,NULL,NULL),(240,NULL,NULL,'(.*)',NULL,NULL,NULL),(241,NULL,NULL,'(.*)',NULL,NULL,NULL),(242,NULL,NULL,'(.*)',NULL,NULL,NULL),(243,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,3,2),(3,5,3),(4,7,5),(5,9,8),(6,10,10),(7,11,12),(8,12,13),(9,13,15),(10,15,18),(11,17,32),(12,18,34),(13,19,36),(14,21,38),(15,22,40),(16,23,42),(17,24,43),(18,27,62),(19,28,64),(20,29,67),(21,31,70),(22,32,71),(23,36,76),(24,38,79),(25,39,85),(26,40,87),(27,42,113),(28,46,184),(29,47,186),(30,48,187),(31,49,189),(32,51,191),(33,53,195),(34,54,199),(35,56,207),(36,58,210),(37,59,229),(38,61,231),(39,62,232);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,3,1),(17,3,2),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,4,1),(23,3,8),(24,4,2),(25,3,9),(26,4,4),(27,3,10),(28,4,5),(29,3,11),(30,4,6),(31,3,12),(32,4,7),(33,3,13),(34,4,8),(35,4,9),(36,4,10),(37,4,11),(38,4,12),(39,4,13),(40,4,14),(41,5,1),(42,5,2),(43,5,4),(44,5,5),(45,5,6),(46,5,7),(47,5,8),(48,5,9),(49,5,10),(50,5,11),(51,5,12),(52,5,13),(53,5,14),(54,6,1),(55,6,2),(56,6,3),(57,6,4),(58,6,5),(59,6,6),(60,6,7),(61,6,8),(62,6,9),(63,6,10),(64,6,11),(65,6,12),(66,6,13),(67,6,14),(68,6,15),(69,6,17),(70,6,16),(71,6,19),(72,6,18),(73,6,21),(74,6,20),(75,6,23),(76,6,22),(77,7,1),(78,7,2),(79,7,4),(80,7,5),(81,7,6),(82,7,7),(83,7,24),(84,7,9),(85,7,10),(86,7,11),(87,7,12),(88,7,13);
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
