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
) ENGINE=InnoDB AUTO_INCREMENT=1224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,63,10,2,NULL),(2,64,10,2,NULL),(3,73,10,2,NULL),(4,76,10,2,NULL),(5,83,10,2,NULL),(6,86,10,2,NULL),(7,91,10,2,NULL),(8,95,10,2,NULL),(9,99,10,2,NULL),(10,102,10,2,NULL),(11,106,10,2,NULL),(12,108,10,2,NULL),(13,111,10,2,NULL),(14,116,10,2,NULL),(15,120,10,2,NULL),(16,122,10,2,NULL),(17,126,10,2,NULL),(18,132,10,2,NULL),(19,135,10,2,NULL),(20,138,10,2,NULL),(21,140,10,2,NULL),(22,143,10,2,NULL),(23,146,10,2,NULL),(24,149,10,2,NULL),(25,154,10,2,NULL),(26,161,10,2,NULL),(27,169,10,2,NULL),(28,173,10,2,NULL),(29,77,10,2,NULL),(30,79,10,2,NULL),(31,90,10,2,NULL),(32,94,10,2,NULL),(33,101,10,2,NULL),(34,105,10,2,NULL),(35,110,10,2,NULL),(36,112,10,2,NULL),(37,119,10,2,NULL),(38,121,10,2,NULL),(39,125,10,2,NULL),(40,128,10,2,NULL),(41,130,10,2,NULL),(42,133,10,2,NULL),(43,136,10,2,NULL),(44,139,10,2,NULL),(45,142,10,2,NULL),(46,147,10,2,NULL),(47,150,10,2,NULL),(48,153,10,2,NULL),(49,155,10,2,NULL),(50,157,10,2,NULL),(51,158,10,2,NULL),(52,160,10,2,NULL),(53,164,10,2,NULL),(54,170,10,2,NULL),(55,176,10,2,NULL),(56,180,10,2,NULL),(57,63,11,2,NULL),(58,64,11,2,NULL),(59,73,11,2,NULL),(60,76,11,2,NULL),(61,83,11,2,NULL),(62,86,11,2,NULL),(63,91,11,2,NULL),(64,95,11,2,NULL),(65,99,11,2,NULL),(66,102,11,2,NULL),(67,106,11,2,NULL),(68,108,11,2,NULL),(69,111,11,2,NULL),(70,116,11,2,NULL),(71,120,11,2,NULL),(72,122,11,2,NULL),(73,126,11,2,NULL),(74,132,11,2,NULL),(75,135,11,2,NULL),(76,138,11,2,NULL),(77,140,11,2,NULL),(78,143,11,2,NULL),(79,146,11,2,NULL),(80,149,11,2,NULL),(81,154,11,2,NULL),(82,161,11,2,NULL),(83,169,11,2,NULL),(84,173,11,2,NULL),(85,77,11,2,NULL),(86,79,11,2,NULL),(87,90,11,2,NULL),(88,94,11,2,NULL),(89,101,11,2,NULL),(90,105,11,2,NULL),(91,110,11,2,NULL),(92,112,11,2,NULL),(93,119,11,2,NULL),(94,121,11,2,NULL),(95,125,11,2,NULL),(96,128,11,2,NULL),(97,63,90,2,NULL),(98,130,11,2,NULL),(99,64,90,2,NULL),(100,133,11,2,NULL),(101,73,90,2,NULL),(102,136,11,2,NULL),(103,76,90,2,NULL),(104,139,11,2,NULL),(105,83,90,2,NULL),(106,142,11,2,NULL),(107,86,90,2,NULL),(108,147,11,2,NULL),(109,91,90,2,NULL),(110,150,11,2,NULL),(111,95,90,2,NULL),(112,63,4,2,NULL),(113,153,11,2,NULL),(114,99,90,2,NULL),(115,64,4,2,NULL),(116,155,11,2,NULL),(117,102,90,2,NULL),(118,73,4,2,NULL),(119,157,11,2,NULL),(120,106,90,2,NULL),(121,76,4,2,NULL),(122,158,11,2,NULL),(123,108,90,2,NULL),(124,83,4,2,NULL),(125,160,11,2,NULL),(126,111,90,2,NULL),(127,86,4,2,NULL),(128,164,11,2,NULL),(129,116,90,2,NULL),(130,91,4,2,NULL),(131,170,11,2,NULL),(132,120,90,2,NULL),(133,95,4,2,NULL),(134,176,11,2,NULL),(135,122,90,2,NULL),(136,99,4,2,NULL),(137,180,11,2,NULL),(138,126,90,2,NULL),(139,102,4,2,NULL),(140,63,19,2,NULL),(141,132,90,2,NULL),(142,106,4,2,NULL),(143,64,19,2,NULL),(144,135,90,2,NULL),(145,108,4,2,NULL),(146,73,19,2,NULL),(147,138,90,2,NULL),(148,111,4,2,NULL),(149,76,19,2,NULL),(150,140,90,2,NULL),(151,116,4,2,NULL),(152,83,19,2,NULL),(153,143,90,2,NULL),(154,120,4,2,NULL),(155,86,19,2,NULL),(156,146,90,2,NULL),(157,122,4,2,NULL),(158,91,19,2,NULL),(159,149,90,2,NULL),(160,126,4,2,NULL),(161,95,19,2,NULL),(162,154,90,2,NULL),(163,132,4,2,NULL),(164,99,19,2,NULL),(165,161,90,2,NULL),(166,135,4,2,NULL),(167,102,19,2,NULL),(168,169,90,2,NULL),(169,138,4,2,NULL),(170,106,19,2,NULL),(171,173,90,2,NULL),(172,140,4,2,NULL),(173,108,19,2,NULL),(174,77,90,2,NULL),(175,143,4,2,NULL),(176,111,19,2,NULL),(177,79,90,2,NULL),(178,146,4,2,NULL),(179,116,19,2,NULL),(180,90,90,2,NULL),(181,149,4,2,NULL),(182,120,19,2,NULL),(183,94,90,2,NULL),(184,154,4,2,NULL),(185,122,19,2,NULL),(186,101,90,2,NULL),(187,161,4,2,NULL),(188,126,19,2,NULL),(189,105,90,2,NULL),(190,169,4,2,NULL),(191,132,19,2,NULL),(192,173,4,2,NULL),(193,110,90,2,NULL),(194,135,19,2,NULL),(195,112,90,2,NULL),(196,77,4,2,NULL),(197,138,19,2,NULL),(198,119,90,2,NULL),(199,79,4,2,NULL),(200,140,19,2,NULL),(201,121,90,2,NULL),(202,90,4,2,NULL),(203,143,19,2,NULL),(204,94,4,2,NULL),(205,125,90,2,NULL),(206,146,19,2,NULL),(207,128,90,2,NULL),(208,101,4,2,NULL),(209,149,19,2,NULL),(210,130,90,2,NULL),(211,105,4,2,NULL),(212,133,90,2,NULL),(213,154,19,2,NULL),(214,110,4,2,NULL),(215,161,19,2,NULL),(216,136,90,2,NULL),(217,112,4,2,NULL),(218,139,90,2,NULL),(219,119,4,2,NULL),(220,169,19,2,NULL),(221,142,90,2,NULL),(222,173,19,2,NULL),(223,121,4,2,NULL),(224,147,90,2,NULL),(225,77,19,2,NULL),(226,125,4,2,NULL),(227,79,19,2,NULL),(228,150,90,2,NULL),(229,128,4,2,NULL),(230,90,19,2,NULL),(231,153,90,2,NULL),(232,130,4,2,NULL),(233,94,19,2,NULL),(234,155,90,2,NULL),(235,133,4,2,NULL),(236,101,19,2,NULL),(237,157,90,2,NULL),(238,136,4,2,NULL),(239,105,19,2,NULL),(240,139,4,2,NULL),(241,158,90,2,NULL),(242,110,19,2,NULL),(243,160,90,2,NULL),(244,142,4,2,NULL),(245,112,19,2,NULL),(246,147,4,2,NULL),(247,164,90,2,NULL),(248,119,19,2,NULL),(249,170,90,2,NULL),(250,150,4,2,NULL),(251,176,90,2,NULL),(252,153,4,2,NULL),(253,121,19,2,NULL),(254,180,90,2,NULL),(255,155,4,2,NULL),(256,125,19,2,NULL),(257,63,91,2,NULL),(258,157,4,2,NULL),(259,128,19,2,NULL),(260,64,91,2,NULL),(261,158,4,2,NULL),(262,130,19,2,NULL),(263,73,91,2,NULL),(264,160,4,2,NULL),(265,133,19,2,NULL),(266,76,91,2,NULL),(267,164,4,2,NULL),(268,136,19,2,NULL),(269,83,91,2,NULL),(270,170,4,2,NULL),(271,139,19,2,NULL),(272,86,91,2,NULL),(273,176,4,2,NULL),(274,142,19,2,NULL),(275,91,91,2,NULL),(276,180,4,2,NULL),(277,147,19,2,NULL),(278,95,91,2,NULL),(279,63,5,2,NULL),(280,150,19,2,NULL),(281,99,91,2,NULL),(282,64,5,2,NULL),(283,153,19,2,NULL),(284,73,5,2,NULL),(285,102,91,2,NULL),(286,155,19,2,NULL),(287,106,91,2,NULL),(288,76,5,2,NULL),(289,157,19,2,NULL),(290,108,91,2,NULL),(291,83,5,2,NULL),(292,158,19,2,NULL),(293,111,91,2,NULL),(294,86,5,2,NULL),(295,160,19,2,NULL),(296,91,5,2,NULL),(297,116,91,2,NULL),(298,164,19,2,NULL),(299,95,5,2,NULL),(300,120,91,2,NULL),(301,170,19,2,NULL),(302,99,5,2,NULL),(303,122,91,2,NULL),(304,176,19,2,NULL),(305,102,5,2,NULL),(306,126,91,2,NULL),(307,180,19,2,NULL),(308,132,91,2,NULL),(309,106,5,2,NULL),(310,63,20,2,NULL),(311,135,91,2,NULL),(312,108,5,2,NULL),(313,64,20,2,NULL),(314,111,5,2,NULL),(315,138,91,2,NULL),(316,73,20,2,NULL),(317,116,5,2,NULL),(318,140,91,2,NULL),(319,76,20,2,NULL),(320,143,91,2,NULL),(321,120,5,2,NULL),(322,83,20,2,NULL),(323,146,91,2,NULL),(324,122,5,2,NULL),(325,86,20,2,NULL),(326,126,5,2,NULL),(327,149,91,2,NULL),(328,91,20,2,NULL),(329,154,91,2,NULL),(330,132,5,2,NULL),(331,95,20,2,NULL),(332,161,91,2,NULL),(333,135,5,2,NULL),(334,99,20,2,NULL),(335,169,91,2,NULL),(336,138,5,2,NULL),(337,102,20,2,NULL),(338,140,5,2,NULL),(339,173,91,2,NULL),(340,106,20,2,NULL),(341,77,91,2,NULL),(342,143,5,2,NULL),(343,108,20,2,NULL),(344,79,91,2,NULL),(345,146,5,2,NULL),(346,111,20,2,NULL),(347,90,91,2,NULL),(348,149,5,2,NULL),(349,116,20,2,NULL),(350,94,91,2,NULL),(351,154,5,2,NULL),(352,120,20,2,NULL),(353,161,5,2,NULL),(354,101,91,2,NULL),(355,122,20,2,NULL),(356,169,5,2,NULL),(357,105,91,2,NULL),(358,126,20,2,NULL),(359,110,91,2,NULL),(360,173,5,2,NULL),(361,132,20,2,NULL),(362,112,91,2,NULL),(363,77,5,2,NULL),(364,135,20,2,NULL),(365,119,91,2,NULL),(366,79,5,2,NULL),(367,138,20,2,NULL),(368,121,91,2,NULL),(369,90,5,2,NULL),(370,140,20,2,NULL),(371,94,5,2,NULL),(372,125,91,2,NULL),(373,143,20,2,NULL),(374,128,91,2,NULL),(375,101,5,2,NULL),(376,146,20,2,NULL),(377,105,5,2,NULL),(378,130,91,2,NULL),(379,149,20,2,NULL),(380,110,5,2,NULL),(381,133,91,2,NULL),(382,154,20,2,NULL),(383,136,91,2,NULL),(384,112,5,2,NULL),(385,161,20,2,NULL),(386,119,5,2,NULL),(387,139,91,2,NULL),(388,169,20,2,NULL),(389,121,5,2,NULL),(390,142,91,2,NULL),(391,173,20,2,NULL),(392,125,5,2,NULL),(393,147,91,2,NULL),(394,77,20,2,NULL),(395,128,5,2,NULL),(396,150,91,2,NULL),(397,79,20,2,NULL),(398,153,91,2,NULL),(399,130,5,2,NULL),(400,90,20,2,NULL),(401,155,91,2,NULL),(402,133,5,2,NULL),(403,94,20,2,NULL),(404,136,5,2,NULL),(405,157,91,2,NULL),(406,101,20,2,NULL),(407,139,5,2,NULL),(408,158,91,2,NULL),(409,105,20,2,NULL),(410,160,91,2,NULL),(411,142,5,2,NULL),(412,110,20,2,NULL),(413,147,5,2,NULL),(414,164,91,2,NULL),(415,112,20,2,NULL),(416,170,91,2,NULL),(417,150,5,2,NULL),(418,119,20,2,NULL),(419,176,91,2,NULL),(420,153,5,2,NULL),(421,121,20,2,NULL),(422,180,91,2,NULL),(423,155,5,2,NULL),(424,125,20,2,NULL),(425,157,5,2,NULL),(426,128,20,2,NULL),(427,158,5,2,NULL),(428,130,20,2,NULL),(429,160,5,2,NULL),(430,133,20,2,NULL),(431,164,5,2,NULL),(432,136,20,2,NULL),(433,170,5,2,NULL),(434,139,20,2,NULL),(435,176,5,2,NULL),(436,142,20,2,NULL),(437,180,5,2,NULL),(438,147,20,2,NULL),(439,63,12,2,NULL),(440,150,20,2,NULL),(441,64,12,2,NULL),(442,153,20,2,NULL),(443,73,12,2,NULL),(444,155,20,2,NULL),(445,76,12,2,NULL),(446,157,20,2,NULL),(447,83,12,2,NULL),(448,158,20,2,NULL),(449,86,12,2,NULL),(450,160,20,2,NULL),(451,91,12,2,NULL),(452,164,20,2,NULL),(453,95,12,2,NULL),(454,170,20,2,NULL),(455,99,12,2,NULL),(456,176,20,2,NULL),(457,102,12,2,NULL),(458,180,20,2,NULL),(459,106,12,2,NULL),(460,77,1,2,NULL),(461,108,12,2,NULL),(462,79,1,2,NULL),(463,111,12,2,NULL),(464,90,1,2,NULL),(465,116,12,2,NULL),(466,94,1,2,NULL),(467,120,12,2,NULL),(468,101,1,2,NULL),(469,122,12,2,NULL),(470,105,1,2,NULL),(471,126,12,2,NULL),(472,110,1,2,NULL),(473,132,12,2,NULL),(474,112,1,2,NULL),(475,135,12,2,NULL),(476,119,1,2,NULL),(477,138,12,2,NULL),(478,121,1,2,NULL),(479,140,12,2,NULL),(480,125,1,2,NULL),(481,143,12,2,NULL),(482,128,1,2,NULL),(483,146,12,2,NULL),(484,130,1,2,NULL),(485,149,12,2,NULL),(486,133,1,2,NULL),(487,154,12,2,NULL),(488,136,1,2,NULL),(489,161,12,2,NULL),(490,139,1,2,NULL),(491,169,12,2,NULL),(492,142,1,2,NULL),(493,173,12,2,NULL),(494,147,1,2,NULL),(495,77,12,2,NULL),(496,150,1,2,NULL),(497,79,12,2,NULL),(498,153,1,2,NULL),(499,90,12,2,NULL),(500,155,1,2,NULL),(501,94,12,2,NULL),(502,157,1,2,NULL),(503,101,12,2,NULL),(504,158,1,2,NULL),(505,105,12,2,NULL),(506,160,1,2,NULL),(507,110,12,2,NULL),(508,164,1,2,NULL),(509,112,12,2,NULL),(510,170,1,2,NULL),(511,119,12,2,NULL),(512,176,1,2,NULL),(513,121,12,2,NULL),(514,180,1,2,NULL),(515,125,12,2,NULL),(516,77,3,2,NULL),(517,128,12,2,NULL),(518,79,3,2,NULL),(519,130,12,2,NULL),(520,90,3,2,NULL),(521,133,12,2,NULL),(522,94,3,2,NULL),(523,136,12,2,NULL),(524,101,3,2,NULL),(525,139,12,2,NULL),(526,105,3,2,NULL),(527,142,12,2,NULL),(528,110,3,2,NULL),(529,147,12,2,NULL),(530,112,3,2,NULL),(531,150,12,2,NULL),(532,119,3,2,NULL),(533,153,12,2,NULL),(534,121,3,2,NULL),(535,155,12,2,NULL),(536,125,3,2,NULL),(537,157,12,2,NULL),(538,128,3,2,NULL),(539,158,12,2,NULL),(540,130,3,2,NULL),(541,160,12,2,NULL),(542,133,3,2,NULL),(543,164,12,2,NULL),(544,136,3,2,NULL),(545,170,12,2,NULL),(546,139,3,2,NULL),(547,176,12,2,NULL),(548,142,3,2,NULL),(549,180,12,2,NULL),(550,147,3,2,NULL),(551,63,14,2,NULL),(552,150,3,2,NULL),(553,64,14,2,NULL),(554,153,3,2,NULL),(555,73,14,2,NULL),(556,155,3,2,NULL),(557,76,14,2,NULL),(558,157,3,2,NULL),(559,83,14,2,NULL),(560,158,3,2,NULL),(561,86,14,2,NULL),(562,160,3,2,NULL),(563,91,14,2,NULL),(564,164,3,2,NULL),(565,95,14,2,NULL),(566,170,3,2,NULL),(567,99,14,2,NULL),(568,102,14,2,NULL),(569,176,3,2,NULL),(570,106,14,2,NULL),(571,180,3,2,NULL),(572,108,14,2,NULL),(573,77,14,2,NULL),(574,111,14,2,NULL),(575,79,14,2,NULL),(576,116,14,2,NULL),(577,90,14,2,NULL),(578,120,14,2,NULL),(579,94,14,2,NULL),(580,122,14,2,NULL),(581,101,14,2,NULL),(582,126,14,2,NULL),(583,105,14,2,NULL),(584,132,14,2,NULL),(585,110,14,2,NULL),(586,135,14,2,NULL),(587,112,14,2,NULL),(588,138,14,2,NULL),(589,119,14,2,NULL),(590,140,14,2,NULL),(591,121,14,2,NULL),(592,143,14,2,NULL),(593,125,14,2,NULL),(594,146,14,2,NULL),(595,128,14,2,NULL),(596,149,14,2,NULL),(597,130,14,2,NULL),(598,154,14,2,NULL),(599,133,14,2,NULL),(600,161,14,2,NULL),(601,136,14,2,NULL),(602,169,14,2,NULL),(603,139,14,2,NULL),(604,173,14,2,NULL),(605,142,14,2,NULL),(606,147,14,2,NULL),(607,150,14,2,NULL),(608,153,14,2,NULL),(609,155,14,2,NULL),(610,157,14,2,NULL),(611,158,14,2,NULL),(612,160,14,2,NULL),(613,164,14,2,NULL),(614,170,14,2,NULL),(615,176,14,2,NULL),(616,180,14,2,NULL),(617,63,1,2,NULL),(618,77,22,2,NULL),(619,64,1,2,NULL),(620,79,22,2,NULL),(621,73,1,2,NULL),(622,90,22,2,NULL),(623,76,1,2,NULL),(624,94,22,2,NULL),(625,83,1,2,NULL),(626,101,22,2,NULL),(627,86,1,2,NULL),(628,105,22,2,NULL),(629,91,1,2,NULL),(630,110,22,2,NULL),(631,95,1,2,NULL),(632,112,22,2,NULL),(633,99,1,2,NULL),(634,119,22,2,NULL),(635,102,1,2,NULL),(636,121,22,2,NULL),(637,106,1,2,NULL),(638,125,22,2,NULL),(639,108,1,2,NULL),(640,128,22,2,NULL),(641,111,1,2,NULL),(642,130,22,2,NULL),(643,116,1,2,NULL),(644,133,22,2,NULL),(645,120,1,2,NULL),(646,136,22,2,NULL),(647,122,1,2,NULL),(648,139,22,2,NULL),(649,126,1,2,NULL),(650,142,22,2,NULL),(651,132,1,2,NULL),(652,147,22,2,NULL),(653,135,1,2,NULL),(654,150,22,2,NULL),(655,138,1,2,NULL),(656,153,22,2,NULL),(657,140,1,2,NULL),(658,155,22,2,NULL),(659,143,1,2,NULL),(660,157,22,2,NULL),(661,146,1,2,NULL),(662,158,22,2,NULL),(663,149,1,2,NULL),(664,160,22,2,NULL),(665,154,1,2,NULL),(666,164,22,2,NULL),(667,161,1,2,NULL),(668,170,22,2,NULL),(669,169,1,2,NULL),(670,176,22,2,NULL),(671,173,1,2,NULL),(672,180,22,2,NULL),(673,63,3,2,NULL),(674,77,77,2,NULL),(675,64,3,2,NULL),(676,63,22,2,NULL),(677,79,77,2,NULL),(678,73,3,2,NULL),(679,64,22,2,NULL),(680,90,77,2,NULL),(681,76,3,2,NULL),(682,94,77,2,NULL),(683,73,22,2,NULL),(684,83,3,2,NULL),(685,101,77,2,NULL),(686,86,3,2,NULL),(687,76,22,2,NULL),(688,105,77,2,NULL),(689,91,3,2,NULL),(690,110,77,2,NULL),(691,83,22,2,NULL),(692,95,3,2,NULL),(693,112,77,2,NULL),(694,99,3,2,NULL),(695,86,22,2,NULL),(696,119,77,2,NULL),(697,102,3,2,NULL),(698,121,77,2,NULL),(699,106,3,2,NULL),(700,91,22,2,NULL),(701,125,77,2,NULL),(702,108,3,2,NULL),(703,95,22,2,NULL),(704,128,77,2,NULL),(705,111,3,2,NULL),(706,130,77,2,NULL),(707,99,22,2,NULL),(708,116,3,2,NULL),(709,133,77,2,NULL),(710,120,3,2,NULL),(711,102,22,2,NULL),(712,136,77,2,NULL),(713,122,3,2,NULL),(714,139,77,2,NULL),(715,126,3,2,NULL),(716,106,22,2,NULL),(717,142,77,2,NULL),(718,132,3,2,NULL),(719,108,22,2,NULL),(720,147,77,2,NULL),(721,135,3,2,NULL),(722,111,22,2,NULL),(723,150,77,2,NULL),(724,138,3,2,NULL),(725,116,22,2,NULL),(726,153,77,2,NULL),(727,140,3,2,NULL),(728,120,22,2,NULL),(729,155,77,2,NULL),(730,143,3,2,NULL),(731,122,22,2,NULL),(732,157,77,2,NULL),(733,146,3,2,NULL),(734,158,77,2,NULL),(735,126,22,2,NULL),(736,149,3,2,NULL),(737,160,77,2,NULL),(738,154,3,2,NULL),(739,132,22,2,NULL),(740,164,77,2,NULL),(741,161,3,2,NULL),(742,170,77,2,NULL),(743,169,3,2,NULL),(744,135,22,2,NULL),(745,176,77,2,NULL),(746,173,3,2,NULL),(747,138,22,2,NULL),(748,180,77,2,NULL),(749,140,22,2,NULL),(750,77,79,2,NULL),(751,143,22,2,NULL),(752,79,79,2,NULL),(753,146,22,2,NULL),(754,90,79,2,NULL),(755,149,22,2,NULL),(756,94,79,2,NULL),(757,154,22,2,NULL),(758,101,79,2,NULL),(759,161,22,2,NULL),(760,105,79,2,NULL),(761,169,22,2,NULL),(762,173,22,2,NULL),(763,110,79,2,NULL),(764,63,77,2,NULL),(765,112,79,2,NULL),(766,64,77,2,NULL),(767,119,79,2,NULL),(768,73,77,2,NULL),(769,76,77,2,NULL),(770,121,79,2,NULL),(771,83,77,2,NULL),(772,86,77,2,NULL),(773,125,79,2,NULL),(774,91,77,2,NULL),(775,128,79,2,NULL),(776,95,77,2,NULL),(777,99,77,2,NULL),(778,130,79,2,NULL),(779,102,77,2,NULL),(780,106,77,2,NULL),(781,133,79,2,NULL),(782,108,77,2,NULL),(783,111,77,2,NULL),(784,136,79,2,NULL),(785,116,77,2,NULL),(786,120,77,2,NULL),(787,139,79,2,NULL),(788,122,77,2,NULL),(789,126,77,2,NULL),(790,142,79,2,NULL),(791,132,77,2,NULL),(792,135,77,2,NULL),(793,147,79,2,NULL),(794,138,77,2,NULL),(795,140,77,2,NULL),(796,150,79,2,NULL),(797,143,77,2,NULL),(798,146,77,2,NULL),(799,153,79,2,NULL),(800,149,77,2,NULL),(801,154,77,2,NULL),(802,155,79,2,NULL),(803,161,77,2,NULL),(804,169,77,2,NULL),(805,157,79,2,NULL),(806,173,77,2,NULL),(807,63,79,2,NULL),(808,158,79,2,NULL),(809,64,79,2,NULL),(810,73,79,2,NULL),(811,160,79,2,NULL),(812,76,79,2,NULL),(813,83,79,2,NULL),(814,164,79,2,NULL),(815,86,79,2,NULL),(816,91,79,2,NULL),(817,170,79,2,NULL),(818,95,79,2,NULL),(819,99,79,2,NULL),(820,176,79,2,NULL),(821,102,79,2,NULL),(822,106,79,2,NULL),(823,180,79,2,NULL),(824,108,79,2,NULL),(825,111,79,2,NULL),(826,77,80,2,NULL),(827,116,79,2,NULL),(828,120,79,2,NULL),(829,79,80,2,NULL),(830,122,79,2,NULL),(831,126,79,2,NULL),(832,90,80,2,NULL),(833,132,79,2,NULL),(834,135,79,2,NULL),(835,94,80,2,NULL),(836,138,79,2,NULL),(837,140,79,2,NULL),(838,101,80,2,NULL),(839,143,79,2,NULL),(840,146,79,2,NULL),(841,105,80,2,NULL),(842,149,79,2,NULL),(843,154,79,2,NULL),(844,110,80,2,NULL),(845,161,79,2,NULL),(846,169,79,2,NULL),(847,112,80,2,NULL),(848,173,79,2,NULL),(849,173,79,2,NULL),(850,119,80,2,NULL),(851,63,80,2,NULL),(852,64,80,2,NULL),(853,121,80,2,NULL),(854,73,80,2,NULL),(855,73,80,2,NULL),(856,125,80,2,NULL),(857,76,80,2,NULL),(858,83,80,2,NULL),(859,128,80,2,NULL),(860,86,80,2,NULL),(861,86,80,2,NULL),(862,130,80,2,NULL),(863,91,80,2,NULL),(864,91,80,2,NULL),(865,133,80,2,NULL),(866,95,80,2,NULL),(867,99,80,2,NULL),(868,136,80,2,NULL),(869,102,80,2,NULL),(870,102,80,2,NULL),(871,139,80,2,NULL),(872,106,80,2,NULL),(873,106,80,2,NULL),(874,142,80,2,NULL),(875,108,80,2,NULL),(876,108,80,2,NULL),(877,147,80,2,NULL),(878,111,80,2,NULL),(879,116,80,2,NULL),(880,150,80,2,NULL),(881,120,80,2,NULL),(882,120,80,2,NULL),(883,153,80,2,NULL),(884,122,80,2,NULL),(885,126,80,2,NULL),(886,155,80,2,NULL),(887,132,80,2,NULL),(888,135,80,2,NULL),(889,157,80,2,NULL),(890,138,80,2,NULL),(891,140,80,2,NULL),(892,158,80,2,NULL),(893,143,80,2,NULL),(894,146,80,2,NULL),(895,160,80,2,NULL),(896,149,80,2,NULL),(897,149,80,2,NULL),(898,164,80,2,NULL),(899,154,80,2,NULL),(900,154,80,2,NULL),(901,170,80,2,NULL),(902,161,80,2,NULL),(903,161,80,2,NULL),(904,169,80,2,NULL),(905,173,80,2,NULL),(906,63,82,2,NULL),(907,176,80,2,NULL),(908,64,82,2,NULL),(909,180,80,2,NULL),(910,77,82,2,NULL),(911,73,82,2,NULL),(912,76,82,2,NULL),(913,79,82,2,NULL),(914,83,82,2,NULL),(915,90,82,2,NULL),(916,86,82,2,NULL),(917,91,82,2,NULL),(918,94,82,2,NULL),(919,95,82,2,NULL),(920,99,82,2,NULL),(921,101,82,2,NULL),(922,102,82,2,NULL),(923,106,82,2,NULL),(924,105,82,2,NULL),(925,108,82,2,NULL),(926,111,82,2,NULL),(927,110,82,2,NULL),(928,116,82,2,NULL),(929,120,82,2,NULL),(930,112,82,2,NULL),(931,122,82,2,NULL),(932,126,82,2,NULL),(933,119,82,2,NULL),(934,132,82,2,NULL),(935,135,82,2,NULL),(936,121,82,2,NULL),(937,138,82,2,NULL),(938,140,82,2,NULL),(939,143,82,2,NULL),(940,125,82,2,NULL),(941,146,82,2,NULL),(942,149,82,2,NULL),(943,128,82,2,NULL),(944,154,82,2,NULL),(945,161,82,2,NULL),(946,130,82,2,NULL),(947,169,82,2,NULL),(948,173,82,2,NULL),(949,133,82,2,NULL),(950,63,84,2,NULL),(951,136,82,2,NULL),(952,139,82,2,NULL),(953,64,84,2,NULL),(954,142,82,2,NULL),(955,73,84,2,NULL),(956,147,82,2,NULL),(957,150,82,2,NULL),(958,76,84,2,NULL),(959,153,82,2,NULL),(960,155,82,2,NULL),(961,83,84,2,NULL),(962,157,82,2,NULL),(963,158,82,2,NULL),(964,160,82,2,NULL),(965,86,84,2,NULL),(966,164,82,2,NULL),(967,91,84,2,NULL),(968,170,82,2,NULL),(969,176,82,2,NULL),(970,95,84,2,NULL),(971,180,82,2,NULL),(972,77,84,2,NULL),(973,99,84,2,NULL),(974,102,84,2,NULL),(975,79,84,2,NULL),(976,106,84,2,NULL),(977,108,84,2,NULL),(978,90,84,2,NULL),(979,111,84,2,NULL),(980,111,84,2,NULL),(981,94,84,2,NULL),(982,116,84,2,NULL),(983,116,84,2,NULL),(984,101,84,2,NULL),(985,120,84,2,NULL),(986,120,84,2,NULL),(987,105,84,2,NULL),(988,122,84,2,NULL),(989,122,84,2,NULL),(990,110,84,2,NULL),(991,126,84,2,NULL),(992,126,84,2,NULL),(993,112,84,2,NULL),(994,132,84,2,NULL),(995,132,84,2,NULL),(996,119,84,2,NULL),(997,135,84,2,NULL),(998,135,84,2,NULL),(999,121,84,2,NULL),(1000,138,84,2,NULL),(1001,138,84,2,NULL),(1002,125,84,2,NULL),(1003,140,84,2,NULL),(1004,140,84,2,NULL),(1005,128,84,2,NULL),(1006,143,84,2,NULL),(1007,146,84,2,NULL),(1008,130,84,2,NULL),(1009,149,84,2,NULL),(1010,154,84,2,NULL),(1011,133,84,2,NULL),(1012,161,84,2,NULL),(1013,161,84,2,NULL),(1014,136,84,2,NULL),(1015,169,84,2,NULL),(1016,169,84,2,NULL),(1017,139,84,2,NULL),(1018,173,84,2,NULL),(1019,173,84,2,NULL),(1020,142,84,2,NULL),(1021,63,85,2,NULL),(1022,147,84,2,NULL),(1023,150,84,2,NULL),(1024,64,85,2,NULL),(1025,153,84,2,NULL),(1026,155,84,2,NULL),(1027,157,84,2,NULL),(1028,73,85,2,NULL),(1029,158,84,2,NULL),(1030,76,85,2,NULL),(1031,160,84,2,NULL),(1032,164,84,2,NULL),(1033,83,85,2,NULL),(1034,170,84,2,NULL),(1035,176,84,2,NULL),(1036,86,85,2,NULL),(1037,180,84,2,NULL),(1038,77,85,2,NULL),(1039,91,85,2,NULL),(1040,95,85,2,NULL),(1041,79,85,2,NULL),(1042,99,85,2,NULL),(1043,102,85,2,NULL),(1044,90,85,2,NULL),(1045,106,85,2,NULL),(1046,106,85,2,NULL),(1047,94,85,2,NULL),(1048,108,85,2,NULL),(1049,108,85,2,NULL),(1050,101,85,2,NULL),(1051,111,85,2,NULL),(1052,111,85,2,NULL),(1053,105,85,2,NULL),(1054,116,85,2,NULL),(1055,116,85,2,NULL),(1056,110,85,2,NULL),(1057,120,85,2,NULL),(1058,120,85,2,NULL),(1059,112,85,2,NULL),(1060,122,85,2,NULL),(1061,122,85,2,NULL),(1062,119,85,2,NULL),(1063,126,85,2,NULL),(1064,132,85,2,NULL),(1065,121,85,2,NULL),(1066,135,85,2,NULL),(1067,138,85,2,NULL),(1068,125,85,2,NULL),(1069,140,85,2,NULL),(1070,143,85,2,NULL),(1071,128,85,2,NULL),(1072,146,85,2,NULL),(1073,149,85,2,NULL),(1074,130,85,2,NULL),(1075,154,85,2,NULL),(1076,161,85,2,NULL),(1077,133,85,2,NULL),(1078,169,85,2,NULL),(1079,173,85,2,NULL),(1080,136,85,2,NULL),(1081,63,87,2,NULL),(1082,139,85,2,NULL),(1083,142,85,2,NULL),(1084,147,85,2,NULL),(1085,64,87,2,NULL),(1086,150,85,2,NULL),(1087,73,87,2,NULL),(1088,153,85,2,NULL),(1089,155,85,2,NULL),(1090,76,87,2,NULL),(1091,157,85,2,NULL),(1092,158,85,2,NULL),(1093,83,87,2,NULL),(1094,160,85,2,NULL),(1095,164,85,2,NULL),(1096,86,87,2,NULL),(1097,170,85,2,NULL),(1098,176,85,2,NULL),(1099,91,87,2,NULL),(1100,180,85,2,NULL),(1101,77,87,2,NULL),(1102,95,87,2,NULL),(1103,99,87,2,NULL),(1104,79,87,2,NULL),(1105,102,87,2,NULL),(1106,102,87,2,NULL),(1107,90,87,2,NULL),(1108,106,87,2,NULL),(1109,106,87,2,NULL),(1110,94,87,2,NULL),(1111,108,87,2,NULL),(1112,111,87,2,NULL),(1113,101,87,2,NULL),(1114,116,87,2,NULL),(1115,116,87,2,NULL),(1116,105,87,2,NULL),(1117,120,87,2,NULL),(1118,120,87,2,NULL),(1119,110,87,2,NULL),(1120,122,87,2,NULL),(1121,122,87,2,NULL),(1122,112,87,2,NULL),(1123,126,87,2,NULL),(1124,126,87,2,NULL),(1125,119,87,2,NULL),(1126,132,87,2,NULL),(1127,132,87,2,NULL),(1128,121,87,2,NULL),(1129,135,87,2,NULL),(1130,135,87,2,NULL),(1131,125,87,2,NULL),(1132,138,87,2,NULL),(1133,138,87,2,NULL),(1134,128,87,2,NULL),(1135,140,87,2,NULL),(1136,140,87,2,NULL),(1137,130,87,2,NULL),(1138,143,87,2,NULL),(1139,143,87,2,NULL),(1140,133,87,2,NULL),(1141,146,87,2,NULL),(1142,146,87,2,NULL),(1143,136,87,2,NULL),(1144,149,87,2,NULL),(1145,149,87,2,NULL),(1146,139,87,2,NULL),(1147,154,87,2,NULL),(1148,154,87,2,NULL),(1149,142,87,2,NULL),(1150,161,87,2,NULL),(1151,161,87,2,NULL),(1152,147,87,2,NULL),(1153,169,87,2,NULL),(1154,150,87,2,NULL),(1155,173,87,2,NULL),(1156,63,88,2,NULL),(1157,153,87,2,NULL),(1158,155,87,2,NULL),(1159,64,88,2,NULL),(1160,157,87,2,NULL),(1161,157,87,2,NULL),(1162,73,88,2,NULL),(1163,158,87,2,NULL),(1164,160,87,2,NULL),(1165,76,88,2,NULL),(1166,164,87,2,NULL),(1167,164,87,2,NULL),(1168,83,88,2,NULL),(1169,170,87,2,NULL),(1170,176,87,2,NULL),(1171,86,88,2,NULL),(1172,180,87,2,NULL),(1173,180,87,2,NULL),(1174,91,88,2,NULL),(1175,77,88,2,NULL),(1176,95,88,2,NULL),(1177,99,88,2,NULL),(1178,79,88,2,NULL),(1179,102,88,2,NULL),(1180,106,88,2,NULL),(1181,90,88,2,NULL),(1182,108,88,2,NULL),(1183,111,88,2,NULL),(1184,94,88,2,NULL),(1185,116,88,2,NULL),(1186,120,88,2,NULL),(1187,122,88,2,NULL),(1188,101,88,2,NULL),(1189,126,88,2,NULL),(1190,105,88,2,NULL),(1191,132,88,2,NULL),(1192,135,88,2,NULL),(1193,110,88,2,NULL),(1194,138,88,2,NULL),(1195,140,88,2,NULL),(1196,112,88,2,NULL),(1197,143,88,2,NULL),(1198,146,88,2,NULL),(1199,119,88,2,NULL),(1200,149,88,2,NULL),(1201,154,88,2,NULL),(1202,121,88,2,NULL),(1203,161,88,2,NULL),(1204,169,88,2,NULL),(1205,125,88,2,NULL),(1206,173,88,2,NULL),(1207,128,88,2,NULL),(1208,130,88,2,NULL),(1209,133,88,2,NULL),(1210,136,88,2,NULL),(1211,139,88,2,NULL),(1212,142,88,2,NULL),(1213,147,88,2,NULL),(1214,150,88,2,NULL),(1215,153,88,2,NULL),(1216,155,88,2,NULL),(1217,157,88,2,NULL),(1218,158,88,2,NULL),(1219,160,88,2,NULL),(1220,164,88,2,NULL),(1221,170,88,2,NULL),(1222,176,88,2,NULL),(1223,180,88,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:45
