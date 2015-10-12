-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_789
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.HEART_CODE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.NEW_OUTGOING_CALL'),(9,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PHONE_STATE'),(3,'android.intent.action.START_AGENT'),(5,'android.intent.action.VIEW'),(6,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'FiveChessSuper.Client.Game',1),(2,'JawbreakerSuper.Game',1),(3,'JawbreakerSuper.Game',2),(4,'Korton.Client',112),(5,'Korton.Client',4),(6,'com.ppxiu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'FiveChessSuper.Client.Game.FiveChess'),(2,1,'FiveChessSuper.Client.Game.BootReceiver'),(3,1,'FiveChessSuper.Client.Game.NoticeSms'),(4,1,'FiveChessSuper.Client.Game.NoticeApk'),(5,1,'FiveChessSuper.Client.Game.NoticeIE'),(6,1,'FiveChessSuper.Client.Game.NoticeVideo'),(7,2,'JawbreakerSuper.Game.Jawbreaker'),(8,2,'JawbreakerSuper.Game.BootReceiver'),(9,3,'JawbreakerSuper.Game.Jawbreaker'),(10,2,'JawbreakerSuper.Game.NoticeSms'),(11,3,'JawbreakerSuper.Game.BootReceiver'),(12,2,'JawbreakerSuper.Game.NoticeApk'),(13,2,'JawbreakerSuper.Game.NoticeIE'),(14,2,'JawbreakerSuper.Game.NoticeVideo'),(15,3,'JawbreakerSuper.Game.NoticeVideo'),(16,4,'Korton.Client.Logo'),(17,4,'Korton.Client.Rss'),(18,4,'Korton.Client.Service.PhoneBookResult'),(19,4,'Korton.Client.FileManager.FileManager'),(20,4,'Korton.Client.AppManager.MyTab'),(21,4,'Korton.Client.GravitySensingAlarm.GravitySensingAlarm'),(22,4,'Korton.Client.GravitySensingAlarm.GravitySensingAlarmSetting'),(23,4,'Korton.Client.GravitySensingAlarm.GravitySensingList'),(24,4,'Korton.Client.Copy.CopyGuide'),(25,4,'Korton.Client.Copy.CopyMain'),(26,4,'Korton.Client.Copy.CopyMainCopy'),(27,4,'Korton.Client.Copy.CopyMainRestore'),(28,4,'Korton.Client.Copy.CopyMainAccount'),(29,4,'Korton.Client.Copy.CopyHelp'),(30,4,'Korton.Client.Copy.CopyList'),(31,4,'Korton.Client.Copy.CopyRegister'),(32,4,'Korton.Client.Copy.CopyRegisterOK'),(33,4,'Korton.Client.Copy.CopyInfo'),(34,4,'Korton.Client.Call.CallBlack'),(35,4,'Korton.Client.Call.CallAddBlack'),(36,4,'Korton.Client.Call.CallTab'),(37,4,'Korton.Client.Call.CallMain'),(38,4,'Korton.Client.Call.CallLogAdd'),(39,4,'Korton.Client.StratApp.StarApp'),(40,4,'Korton.Client.RiskAnalysis.Risk'),(41,4,'Korton.Client.Check.RunningThread'),(42,4,'Korton.Client.Check.ThirdAndSystemApplication'),(43,4,'Korton.Client.MoneyLog.MoneyLog'),(44,4,'Korton.Client.MoneyLog.DeleteRiskMsg'),(45,4,'Korton.Client.Discharge.DischargeSetting'),(46,4,'Korton.Client.Discharge.DischargeDetail'),(47,4,'Korton.Client.Discharge.DischargeMain'),(48,4,'Korton.Client.Discharge.DischargeSummary'),(49,1,'Daemon.Service.IEMark'),(50,4,'Korton.Client.Discharge.DischargeHelp'),(51,4,'Korton.Client.Control.Control'),(52,1,'Daemon.Service.SMSObserver'),(53,5,'Korton.Client.Rss'),(54,4,'Korton.Client.Control.ControlDelCommand'),(55,4,'Korton.Client.Control.ControlProtectCommand'),(56,4,'Korton.Client.Control.GetPassWord'),(57,1,'Daemon.DownLoad.FileService'),(58,5,'Korton.Client.Service.PhoneBookResult'),(59,4,'Korton.Client.Control.BlackScreen'),(60,5,'Korton.Client.FileManager.FileManager'),(61,4,'Korton.Client.About.About'),(62,5,'Korton.Client.AppManager.MyTab'),(63,4,'Korton.Client.About.AboutHelp'),(64,5,'Korton.Client.GravitySensingAlarm.GravitySensingAlarm'),(65,4,'Korton.Client.About.SelectContacts'),(66,5,'Korton.Client.GravitySensingAlarm.GravitySensingAlarmSetting'),(67,4,'Korton.Client.About.UpdateInfo'),(68,5,'Korton.Client.GravitySensingAlarm.GravitySensingList'),(69,4,'Korton.Client.Check.Check'),(70,5,'Korton.Client.Copy.CopySetting'),(71,4,'Korton.Client.Check.CheckLoad'),(72,5,'Korton.Client.Copy.CopyList'),(73,4,'Korton.Client.Check.BowserMark'),(74,5,'Korton.Client.Copy.CopyRegister'),(75,4,'Korton.Client.HardwareInfo.PhoneInfoActivity'),(76,5,'Korton.Client.Copy.CopyRegisterOK'),(77,4,'Korton.Client.HardwareInfo.CheckScreen'),(78,5,'Korton.Client.Copy.CopyInfo'),(79,4,'Korton.Client.Market.Market'),(80,5,'Korton.Client.Call.CallBlack'),(81,1,'Daemon.Service.Notice'),(82,4,'Korton.Client.Market.MarketInfo'),(83,5,'Korton.Client.Call.CallAddBlack'),(84,4,'Korton.Client.GravitySensingAlarm.GravitySensingService'),(85,5,'Korton.Client.Call.CallTab'),(86,4,'Korton.Client.Copy.CopyService'),(87,5,'Korton.Client.Call.CallMain'),(88,4,'Korton.Client.Discharge.DischargeServer'),(89,5,'Korton.Client.Call.CallLogAdd'),(90,4,'Korton.Client.Control.ControlBootService'),(91,5,'Korton.Client.StratApp.StarApp'),(92,2,'Daemon.Service.Notice'),(93,4,'Korton.Client.Copy.CopyReceiver'),(94,5,'Korton.Client.RiskAnalysis.Risk'),(95,5,'Korton.Client.Check.RunningThread'),(96,5,'Korton.Client.Check.ThirdAndSystemApplication'),(97,4,'Korton.Client.Copy.CopyThread'),(98,5,'Korton.Client.MoneyLog.MoneyLog'),(99,6,'com.ppxiu.ppxiu'),(100,4,'Korton.Client.Call.CallReceiver'),(101,5,'Korton.Client.MoneyLog.DeleteRiskMsg'),(102,5,'Korton.Client.Discharge.Discharge'),(103,6,'com.ppxiu.BootReceiver'),(104,3,'Daemon.Action.Service'),(105,5,'Korton.Client.Discharge.DischargeMonth'),(106,4,'Korton.Client.StratApp.StarReceiver'),(107,5,'Korton.Client.Discharge.DischargeSetting'),(108,6,'com.ppxiu.NoticeSms'),(109,5,'Korton.Client.Control.Control'),(110,4,'Korton.Client.RiskAnalysis.RiskReceiver'),(111,6,'com.ppxiu.NoticeApk'),(112,5,'Korton.Client.Control.ControlDelCommand'),(113,6,'com.ppxiu.NoticeIE'),(114,5,'Korton.Client.Control.ControlProtectCommand'),(115,5,'Korton.Client.Control.GetPassWord'),(116,6,'com.ppxiu.NoticeVideo'),(117,4,'Korton.Client.Discharge.DischargeReceiver'),(118,5,'Korton.Client.Control.BlackScreen'),(119,5,'Korton.Client.System'),(120,5,'Korton.Client.About.About'),(121,4,'Korton.Client.Control.NoticeThread'),(122,5,'Korton.Client.About.AboutHelp'),(123,4,'Korton.Client.Control.ControlBootReceiver'),(124,5,'Korton.Client.About.SelectContacts'),(125,3,'Daemon.Service.IEMark'),(126,5,'Korton.Client.Check.Check'),(127,4,'Korton.Client.MoneyLog.SmsReceiver'),(128,5,'Korton.Client.Check.CheckLoad'),(129,5,'Korton.Client.Check.BowserMark'),(130,4,'Korton.Client.Market.Receiver.InstallReceiver'),(131,5,'Korton.Client.HardwareInfo.PhoneInfoActivity'),(132,5,'Korton.Client.HardwareInfo.CheckScreen'),(133,5,'Korton.Client.GravitySensingAlarm.GravitySensingService'),(134,4,'Korton.Client.AdReceiver'),(135,5,'Korton.Client.Copy.CopyService'),(136,5,'Korton.Client.Discharge.DischargeServer'),(137,5,'Korton.Client.Copy.CopyReceiver'),(138,4,'Korton.Client.ShareReceiver'),(139,5,'Korton.Client.Call.CallReceiver'),(140,4,'Korton.Client.VideoReceiver'),(141,5,'Korton.Client.Call.SmsReceiver'),(142,5,'Korton.Client.StratApp.StarReceiver'),(143,5,'Korton.Client.RiskAnalysis.RiskReceiver'),(144,5,'Korton.Client.Discharge.DischargeReceiver'),(145,5,'Korton.Client.Control.ControlReceiver'),(146,5,'Korton.Client.Control.ControlBootReceiver'),(147,5,'Korton.Client.MoneyLog.SmsReceiver'),(148,5,'Korton.Client.BootReceiver'),(149,5,'Korton.Client.NoticeVideo'),(150,2,'Daemon.Service.IEMark'),(151,2,'Daemon.Service.SMSObserver'),(152,2,'Daemon.DownLoad.FileService'),(153,3,'Daemon.Service.Mms.Mms'),(154,3,'Daemon.Service.SMSObserver'),(155,3,'Daemon.Service.Mms.Mms21'),(156,3,'Daemon.Action.Action'),(157,6,'Daemon.Service.SMSObserver'),(158,6,'Daemon.Service.IEMark'),(159,6,'Daemon.Service.Notice'),(160,6,'Daemon.DownLoad.FileService');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'notice_title'),(2,11,'even_type'),(3,11,'chanel'),(4,11,'agent_action'),(5,11,'priority'),(6,11,'even_version'),(7,11,'VERSION_CODE'),(8,11,'even_num'),(9,11,'file_name'),(10,11,'agent_mode'),(11,11,'host'),(12,11,'notice_info'),(13,11,'simulation_tel'),(14,11,'strategy'),(15,11,'even_time'),(16,11,'downpath'),(17,94,'data');
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'r',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,5,'r',0,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,53,'a',1,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,82,'a',0,NULL,NULL),(79,83,'a',0,NULL,NULL),(80,84,'s',0,NULL,NULL),(81,85,'a',0,NULL,NULL),(82,86,'s',0,NULL,NULL),(83,87,'a',0,NULL,NULL),(84,88,'s',0,NULL,NULL),(85,89,'a',0,NULL,NULL),(86,90,'s',0,NULL,NULL),(87,91,'a',0,NULL,NULL),(88,93,'r',1,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',0,NULL,NULL),(91,96,'a',0,NULL,NULL),(92,97,'r',0,NULL,NULL),(93,98,'a',0,NULL,NULL),(94,99,'a',1,NULL,NULL),(95,101,'a',0,NULL,NULL),(96,100,'r',1,NULL,NULL),(97,102,'a',0,NULL,NULL),(98,103,'r',1,NULL,NULL),(99,105,'a',0,NULL,NULL),(100,106,'r',1,NULL,NULL),(101,107,'a',0,NULL,NULL),(102,109,'a',0,NULL,NULL),(103,108,'r',0,NULL,NULL),(104,110,'r',1,NULL,NULL),(105,112,'a',0,NULL,NULL),(106,111,'r',0,NULL,NULL),(107,114,'a',0,NULL,NULL),(108,113,'r',0,NULL,NULL),(109,116,'r',0,NULL,NULL),(110,115,'a',0,NULL,NULL),(111,117,'r',1,NULL,NULL),(112,118,'a',0,NULL,NULL),(113,119,'a',0,NULL,NULL),(114,120,'a',0,NULL,NULL),(115,121,'r',0,NULL,NULL),(116,122,'a',0,NULL,NULL),(117,123,'r',1,NULL,NULL),(118,124,'a',0,NULL,NULL),(119,126,'a',0,NULL,NULL),(120,127,'r',1,NULL,NULL),(121,128,'a',0,NULL,NULL),(122,129,'a',0,NULL,NULL),(123,130,'r',1,NULL,NULL),(124,131,'a',0,NULL,NULL),(125,132,'a',0,NULL,NULL),(126,133,'s',0,NULL,NULL),(127,135,'s',0,NULL,NULL),(128,134,'r',1,NULL,NULL),(129,136,'s',0,NULL,NULL),(130,137,'r',1,NULL,NULL),(131,138,'r',1,NULL,NULL),(132,139,'r',1,NULL,NULL),(133,140,'r',0,NULL,NULL),(134,141,'r',1,NULL,NULL),(135,142,'r',1,NULL,NULL),(136,143,'r',1,NULL,NULL),(137,144,'r',1,NULL,NULL),(138,145,'r',1,NULL,NULL),(139,146,'r',1,NULL,NULL),(140,147,'r',1,NULL,NULL),(141,148,'r',1,NULL,NULL),(142,149,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,5),(9,8,6),(10,8,3),(11,8,4),(12,9,14),(13,9,13),(14,9,12),(15,9,10),(16,10,11),(17,11,2),(18,12,2),(19,13,11),(20,14,6),(21,14,5),(22,14,4),(23,14,3),(24,15,15),(25,16,2),(26,17,8),(27,18,8),(28,19,8),(29,20,8),(30,21,8),(31,22,8),(32,23,8),(33,24,8),(34,25,2),(35,26,2),(36,27,2),(37,28,2),(38,29,2),(39,30,2),(40,31,11),(41,32,11),(42,33,11),(43,34,11),(44,35,11),(45,36,11),(46,37,11),(47,38,11),(48,39,11),(49,40,11),(50,41,11),(51,42,11),(52,43,11),(53,44,11),(54,45,11),(55,46,98),(56,47,98),(57,48,108),(58,48,109),(59,48,103),(60,48,106),(61,49,98),(62,50,98),(63,51,98),(64,52,98),(65,53,98),(66,54,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(2,52,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(3,57,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(4,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(5,49,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(6,52,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(7,49,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(8,81,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(9,92,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(10,104,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(11,49,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(12,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(13,125,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(14,81,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(15,15,'<JawbreakerSuper.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(16,57,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(17,150,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(18,8,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(19,151,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(20,150,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(21,8,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(22,8,'<JawbreakerSuper.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(23,150,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(24,152,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(25,49,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(26,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(27,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(28,49,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(29,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(30,2,'<FiveChessSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(31,153,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(32,11,'<JawbreakerSuper.Game.BootReceiver: void init()>',20,'p',NULL),(33,11,'<JawbreakerSuper.Game.BootReceiver: void init()>',17,'p',NULL),(34,153,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(35,153,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(36,154,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(37,153,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(38,11,'<JawbreakerSuper.Game.BootReceiver: void init()>',25,'s',NULL),(39,155,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(40,153,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(41,125,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(42,156,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(43,125,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(44,153,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(45,153,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(46,157,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(47,158,'<Daemon.Service.IEMark: void AddMark()>',27,'p',NULL),(48,159,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(49,158,'<Daemon.Service.IEMark: void AddMark()>',10,'p',NULL),(50,158,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(51,103,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'p',NULL),(52,160,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(53,103,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(54,103,'<com.ppxiu.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,3,5),(3,4,5),(4,5,5),(5,6,5),(6,7,5),(7,8,5),(8,9,5),(9,11,5),(10,12,5),(11,13,5),(12,14,5),(13,15,5),(14,17,5),(15,18,5),(16,19,5),(17,20,5),(18,21,5),(19,22,5),(20,23,5),(21,24,5),(22,25,5),(23,26,5),(24,27,5),(25,28,5),(26,29,5),(27,30,5),(28,31,5),(29,32,5),(30,33,5),(31,34,5),(32,35,5),(33,36,1),(34,37,5),(35,38,5),(36,39,5),(37,42,5),(38,43,5),(39,45,1),(40,44,5),(41,46,5),(42,47,5),(43,48,5),(44,49,5),(45,50,5),(46,51,5),(47,52,5),(48,53,5),(49,54,5),(50,55,5),(51,56,5),(52,57,5),(53,58,5),(54,59,5),(55,60,5),(56,61,5),(57,62,5),(58,63,5),(59,64,5),(60,65,5),(61,66,5),(62,67,5),(63,68,5),(64,69,5),(65,70,5),(66,71,5),(67,72,5),(68,73,5),(69,74,1),(70,75,5),(71,76,5),(72,77,5),(73,78,5),(74,79,5),(75,80,5),(76,81,5),(77,82,5),(78,83,5),(79,84,5),(80,85,5),(81,86,5),(82,87,5),(83,88,5),(84,89,5),(85,90,5),(86,91,5),(87,92,5),(88,93,5),(89,94,5),(90,95,5),(91,96,5),(92,97,5),(93,98,5),(94,99,5),(95,100,5),(96,101,5),(97,102,5),(98,103,5),(99,104,5),(100,105,5),(101,106,5),(102,107,5),(103,108,5),(104,109,5),(105,110,5),(106,111,5),(107,112,5),(108,113,5),(109,114,5),(110,115,5),(111,116,5),(112,117,5),(113,118,5),(114,119,5),(115,120,5),(116,121,5),(117,122,5),(118,123,5),(119,124,5),(120,125,5),(121,126,5),(122,127,5),(123,128,5),(124,129,5),(125,130,5),(126,131,5),(127,132,5),(128,133,5),(129,134,5),(130,135,5),(131,136,5),(132,138,5),(133,139,5),(134,140,5),(135,142,5),(136,141,5),(137,143,5),(138,144,5),(139,145,5),(140,146,5),(141,147,5),(142,148,5),(143,149,5),(144,150,5),(145,151,5),(146,152,5),(147,154,5),(148,155,5),(149,156,5),(150,157,5),(151,158,5),(152,159,5),(153,160,5),(154,161,5),(155,162,5),(156,163,5),(157,164,5),(158,165,5),(159,166,5),(160,167,5),(161,169,5),(162,170,5),(163,171,5),(164,172,5),(165,173,5),(166,174,5),(167,175,4),(168,176,5),(169,178,5),(170,179,5),(171,180,5),(172,181,5),(173,182,5),(174,183,5),(175,184,5),(176,185,1),(177,186,5),(178,187,5),(179,188,5),(180,189,5),(181,190,5),(182,191,5),(183,192,5),(184,193,5),(185,194,5),(186,195,5),(187,196,5),(188,197,5),(189,198,5),(190,199,5),(191,200,5),(192,201,5),(193,202,5),(194,203,5),(195,204,5),(196,205,5),(197,206,5),(198,207,5),(199,208,5),(200,209,5),(201,210,5),(202,211,5),(203,212,5),(204,213,5),(205,214,5),(206,215,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'Daemon/Service/SMSObserver'),(2,14,'com.android.packageinstaller.PackageInstallerActivity'),(3,20,'com.android.packageinstaller.PackageInstallerActivity'),(4,47,'com.android.packageinstaller.PackageInstallerActivity'),(5,48,'com.android.packageinstaller.PackageInstallerActivity'),(6,62,'com.android.packageinstaller.PackageInstallerActivity'),(7,108,'com.android.packageinstaller.PackageInstallerActivity'),(8,114,'com.android.packageinstaller.PackageInstallerActivity'),(9,137,'Daemon/Service/SMSObserver'),(10,139,'com.android.packageinstaller.PackageInstallerActivity'),(11,143,'com.android.packageinstaller.PackageInstallerActivity'),(12,146,'com.android.packageinstaller.PackageInstallerActivity'),(13,153,'Daemon/Service/SMSObserver'),(14,152,'com.android.packageinstaller.PackageInstallerActivity'),(15,158,'com.android.packageinstaller.PackageInstallerActivity'),(16,168,'Daemon/Service/SMSObserver'),(17,179,'com.android.packageinstaller.PackageInstallerActivity'),(18,202,'com.android.packageinstaller.PackageInstallerActivity'),(19,216,'Daemon/Service/SMSObserver');
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,3),(2,3,4),(3,4,5),(4,5,7),(5,6,9),(6,7,10),(7,8,11),(8,9,12),(9,11,13),(10,12,14),(11,13,15),(12,14,16),(13,15,17),(14,17,18),(15,18,19),(16,19,20),(17,20,21),(18,21,22),(19,22,23),(20,23,24),(21,24,25),(22,25,26),(23,26,27),(24,27,28),(25,28,29),(26,29,30),(27,30,31),(28,31,32),(29,32,33),(30,33,34),(31,34,36),(32,35,37),(33,37,39),(34,38,40),(35,39,41),(36,42,42),(37,43,43),(38,44,44),(39,47,45),(40,46,46),(41,48,47),(42,49,48),(43,50,49),(44,52,50),(45,53,51),(46,54,52),(47,55,53),(48,56,54),(49,57,55),(50,58,56),(51,59,57),(52,60,58),(53,62,59),(54,61,60),(55,63,61),(56,64,62),(57,65,64),(58,66,63),(59,67,65),(60,68,66),(61,70,67),(62,69,68),(63,71,69),(64,72,70),(65,73,71),(66,75,72),(67,76,73),(68,77,74),(69,79,75),(70,80,76),(71,81,77),(72,82,78),(73,83,79),(74,84,80),(75,85,81),(76,86,82),(77,87,83),(78,88,84),(79,89,85),(80,90,86),(81,92,87),(82,93,88),(83,94,89),(84,95,91),(85,96,90),(86,97,92),(87,99,93),(88,100,94),(89,98,95),(90,101,96),(91,103,97),(92,102,98),(93,104,99),(94,106,100),(95,105,101),(96,108,102),(97,107,103),(98,109,104),(99,110,105),(100,111,106),(101,112,107),(102,113,108),(103,114,109),(104,115,110),(105,116,111),(106,117,112),(107,118,113),(108,119,115),(109,120,114),(110,121,116),(111,123,117),(112,122,119),(113,125,120),(114,124,122),(115,126,123),(116,127,124),(117,128,126),(118,129,127),(119,130,128),(120,131,130),(121,132,131),(122,133,132),(123,134,134),(124,135,135),(125,136,136),(126,138,138),(127,139,137),(128,140,139),(129,141,140),(130,143,141),(131,142,142),(132,144,143),(133,145,144),(134,146,145),(135,147,147),(136,148,149),(137,150,150),(138,149,151),(139,151,152),(140,152,153),(141,154,154),(142,155,156),(143,156,157),(144,158,159),(145,157,160),(146,159,162),(147,160,163),(148,162,164),(149,161,165),(150,164,166),(151,165,168),(152,166,170),(153,167,172),(154,169,179),(155,170,180),(156,171,181),(157,172,182),(158,173,183),(159,174,184),(160,176,189),(161,178,190),(162,179,191),(163,180,192),(164,181,193),(165,182,194),(166,183,195),(167,184,196),(168,186,197),(169,187,198),(170,188,199),(171,189,200),(172,190,201),(173,191,202),(174,192,203),(175,193,204),(176,194,205),(177,195,206),(178,196,207),(179,197,208),(180,198,209),(181,199,210),(182,200,211),(183,201,212),(184,202,213),(185,203,214),(186,204,216),(187,205,218),(188,206,219),(189,207,220),(190,208,221),(191,209,222),(192,210,223),(193,211,224),(194,212,225),(195,213,226),(196,214,227),(197,215,228);
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
INSERT INTO `IExtras` VALUES (1,175,'VERSION_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,8,3),(10,8,4),(11,9,1),(12,10,1),(13,11,2),(14,11,6),(15,12,1),(16,13,8),(17,13,7),(18,14,2),(19,15,2),(20,16,9),(21,17,2),(22,18,2),(23,19,6),(24,20,10),(25,20,9),(26,21,3),(27,21,6),(28,22,2),(29,22,6),(30,23,4),(31,24,7),(32,24,8),(33,25,6),(34,26,2),(35,27,9),(36,28,2),(37,29,6),(38,30,2),(39,31,6),(40,32,4),(41,32,3),(42,32,2);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,9,1),(10,10,1),(11,11,2),(12,12,1),(13,14,2),(14,15,2),(15,17,2),(16,18,2),(17,21,2),(18,22,2),(19,26,2),(20,28,2),(21,30,2),(22,32,2);
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
INSERT INTO `IFData` VALUES (1,16,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL),(3,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'image','jpg'),(2,3,'text','plain'),(3,5,'image','gif'),(4,6,'video','3gp'),(5,7,'image','png'),(6,8,'video','mp4'),(7,9,'audio','mid'),(8,11,'text','plain'),(9,12,'audio','mp3'),(10,13,'video','mp4'),(11,15,'audio','wav'),(12,17,'text','plain'),(13,18,'image','bmp'),(14,19,'audio','mp3'),(15,21,'','*'),(16,22,'video','mp4'),(17,23,'video','mp4'),(18,24,'audio','mp3'),(19,25,'image','*'),(20,26,'image','jpeg'),(21,27,'image','bmp'),(22,28,'video','mp4'),(23,29,'video','*'),(24,30,'image','jpg'),(25,32,'image','bmp'),(26,33,'audio','*'),(27,34,'image','gif'),(28,35,'image','jpg'),(29,36,'vnd.android-dir','mms-sms'),(30,37,'video','mp4'),(31,38,'image','gif'),(32,39,'video','3gp'),(33,43,'text','plain'),(34,45,'vnd.android-dir','mms-sms'),(35,44,'text','plain'),(36,46,'video','3gp'),(37,49,'image','png'),(38,50,'text','plain'),(39,51,'vnd.android-dir','mms-sms'),(40,52,'audio','mid'),(41,53,'audio','mp3'),(42,55,'image','png'),(43,56,'image','bmp'),(44,57,'video','mp4'),(45,59,'audio','mid'),(46,61,'image','bmp'),(47,63,'image','bmp'),(48,64,'image','jpg'),(49,65,'image','jpg'),(50,68,'audio','mid'),(51,69,'image','gif'),(52,71,'image','jpg'),(53,74,'vnd.android-dir','mms-sms'),(54,75,'audio','mid'),(55,76,'image','gif'),(56,77,'video','3gp'),(57,79,'image','*'),(58,81,'image','png'),(59,82,'text','plain'),(60,84,'image','gif'),(61,85,'video','3gp'),(62,86,'image','png'),(63,88,'image','png'),(64,89,'audio','mp3'),(65,90,'audio','mid'),(66,93,'video','3gp'),(67,94,'audio','wav'),(68,95,'image','bmp'),(69,97,'audio','mp3'),(70,98,'image','jpeg'),(71,101,'audio','wav'),(72,102,'image','jpg'),(73,104,'audio','wav'),(74,105,'image','jpeg'),(75,107,'audio','mid'),(76,110,'audio','wav'),(77,112,'image','jpeg'),(78,113,'audio','*'),(79,115,'image','gif'),(80,117,'image','jpg'),(81,118,'image','png'),(82,119,'image','jpeg'),(83,121,'text','plain'),(84,122,'video','3gp'),(85,124,'image','gif'),(86,126,'audio','mp3'),(87,128,'video','3gp'),(88,129,'audio','wav'),(89,131,'image','png'),(90,132,'image','jpeg'),(91,134,'audio','mid'),(92,135,'audio','wav'),(93,136,'video','*'),(94,138,'audio','mp3'),(95,142,'audio','wav'),(96,144,'image','jpeg'),(97,145,'image','bmp'),(98,147,'image','jpg'),(99,148,'video','mp4'),(100,149,'text','plain'),(101,151,'image','jpeg'),(102,154,'image','gif'),(103,155,'video','3gp'),(104,156,'','*'),(105,157,'image','png'),(106,159,'audio','mid'),(107,161,'audio','mp3'),(108,164,'audio','wav'),(109,165,'image','bmp'),(110,166,'video','mp4'),(111,167,'image','jpeg'),(112,176,'video','mp4'),(113,178,'text','plain'),(114,180,'audio','mp3'),(115,181,'video','mp4'),(116,182,'image','bmp'),(117,183,'image','jpg'),(118,184,'image','gif'),(119,185,'vnd.android-dir','mms-sms'),(120,186,'video','3gp'),(121,187,'text','plain'),(122,188,'image','png'),(123,189,'audio','mid'),(124,190,'image','bmp'),(125,192,'image','jpg'),(126,193,'audio','mid'),(127,195,'image','gif'),(128,196,'image','png'),(129,197,'video','3gp'),(130,198,'audio','mp3'),(131,199,'audio','wav'),(132,200,'image','jpeg'),(133,201,'audio','wav'),(134,203,'image','jpeg'),(135,205,'image','jpg'),(136,206,'text','plain'),(137,207,'image','gif'),(138,208,'video','3gp'),(139,209,'image','png'),(140,210,'audio','mid'),(141,211,'audio','mp3'),(142,212,'audio','wav'),(143,213,'image','bmp'),(144,214,'video','mp4'),(145,215,'image','jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'FiveChessSuper.Client.Game'),(2,14,'com.android.packageinstaller'),(3,20,'com.android.packageinstaller'),(4,47,'com.android.packageinstaller'),(5,48,'com.android.packageinstaller'),(6,62,'com.android.packageinstaller'),(7,108,'com.android.packageinstaller'),(8,114,'com.android.packageinstaller'),(9,137,'JawbreakerSuper.Game'),(10,139,'com.android.packageinstaller'),(11,143,'com.android.packageinstaller'),(12,146,'com.android.packageinstaller'),(13,153,'FiveChessSuper.Client.Game'),(14,152,'com.android.packageinstaller'),(15,158,'com.android.packageinstaller'),(16,168,'JawbreakerSuper.Game'),(17,179,'com.android.packageinstaller'),(18,202,'com.android.packageinstaller'),(19,216,'com.ppxiu');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,2,0),(5,7,0),(6,8,0),(7,9,0),(8,11,0),(9,16,0),(10,51,0),(11,88,0),(12,94,0),(13,96,0),(14,98,0),(15,100,0),(16,104,0),(17,111,0),(18,117,0),(19,120,0),(20,123,0),(21,128,0),(22,130,0),(23,131,0),(24,132,0),(25,134,0),(26,135,0),(27,136,0),(28,137,0),(29,138,0),(30,139,0),(31,140,0),(32,141,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,1,0),(2,4,0,0),(3,3,1,0),(4,5,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,8,1,0),(9,3,1,0),(10,8,1,0),(11,8,1,0),(12,3,1,0),(13,9,1,0),(14,8,0,0),(15,3,1,0),(16,9,1,0),(17,9,1,0),(18,3,1,0),(19,8,1,0),(20,9,0,0),(21,10,1,0),(22,3,1,0),(23,8,1,0),(24,9,1,0),(25,10,1,0),(26,3,1,0),(27,8,1,0),(28,9,1,0),(29,10,1,0),(30,8,1,0),(31,11,1,0),(32,9,1,0),(33,10,1,0),(34,8,1,0),(35,9,1,0),(36,8,1,0),(37,14,1,0),(38,9,1,0),(39,8,1,0),(40,15,1,0),(41,14,1,0),(42,15,1,0),(43,14,1,0),(44,8,1,0),(45,9,1,0),(46,9,1,0),(47,15,0,0),(48,14,0,0),(49,8,1,0),(50,9,1,0),(51,15,1,0),(52,8,1,0),(53,14,1,0),(54,15,1,0),(55,9,1,0),(56,8,1,0),(57,14,1,0),(58,15,1,0),(59,9,1,0),(60,8,1,0),(61,14,1,0),(62,15,0,0),(63,9,1,0),(64,8,1,0),(65,14,1,0),(66,15,1,0),(67,9,1,0),(68,8,1,0),(69,14,1,0),(70,15,1,0),(71,9,1,0),(72,8,1,0),(73,15,1,0),(74,14,1,0),(75,9,1,0),(76,8,1,0),(77,14,1,0),(78,15,1,0),(79,15,1,0),(80,9,1,0),(81,8,1,0),(82,14,1,0),(83,15,1,0),(84,9,1,0),(85,8,1,0),(86,14,1,0),(87,15,1,0),(88,9,1,0),(89,8,1,0),(90,14,1,0),(91,15,1,0),(92,15,1,0),(93,9,1,0),(94,8,1,0),(95,14,1,0),(96,15,1,0),(97,9,1,0),(98,8,1,0),(99,14,1,0),(100,15,1,0),(101,9,1,0),(102,14,1,0),(103,15,1,0),(104,8,1,0),(105,9,1,0),(106,15,1,0),(107,14,1,0),(108,8,0,0),(109,15,1,0),(110,9,1,0),(111,14,1,0),(112,8,1,0),(113,15,1,0),(114,9,0,0),(115,14,1,0),(116,15,1,0),(117,16,1,0),(118,14,1,0),(119,9,1,0),(120,15,1,0),(121,16,1,0),(122,14,1,0),(123,15,1,0),(124,16,1,0),(125,15,1,0),(126,14,1,0),(127,15,1,0),(128,16,1,0),(129,14,1,0),(130,15,1,0),(131,16,1,0),(132,14,1,0),(133,15,1,0),(134,16,1,0),(135,14,1,0),(136,15,1,0),(137,22,0,0),(138,16,1,0),(139,14,0,0),(140,15,1,0),(141,23,1,0),(142,16,1,0),(143,15,0,0),(144,14,1,0),(145,16,1,0),(146,15,0,0),(147,24,1,0),(148,16,1,0),(149,24,1,0),(150,15,1,0),(151,16,1,0),(152,15,0,0),(153,27,0,0),(154,24,1,0),(155,24,1,0),(156,15,1,0),(157,24,1,0),(158,15,0,0),(159,24,1,0),(160,15,1,0),(161,24,1,0),(162,15,1,0),(163,15,1,0),(164,24,1,0),(165,24,1,0),(166,24,1,0),(167,24,1,0),(168,38,0,0),(169,41,1,0),(170,41,1,0),(171,41,1,0),(172,41,1,0),(173,41,1,0),(174,41,1,0),(175,42,1,0),(176,48,1,0),(177,48,1,0),(178,48,1,0),(179,48,0,0),(180,48,1,0),(181,48,1,0),(182,48,1,0),(183,48,1,0),(184,48,1,0),(185,48,1,0),(186,48,1,0),(187,48,1,0),(188,48,1,0),(189,48,1,0),(190,48,1,0),(191,48,1,0),(192,48,1,0),(193,48,1,0),(194,48,1,0),(195,48,1,0),(196,48,1,0),(197,48,1,0),(198,48,1,0),(199,48,1,0),(200,48,1,0),(201,48,1,0),(202,48,0,0),(203,48,1,0),(204,50,1,0),(205,52,1,0),(206,52,1,0),(207,52,1,0),(208,52,1,0),(209,52,1,0),(210,52,1,0),(211,52,1,0),(212,52,1,0),(213,52,1,0),(214,52,1,0),(215,52,1,0),(216,53,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(25,'android.permission.CAMERA'),(22,'android.permission.GET_PACKAGE_SIZE'),(10,'android.permission.INTERNET'),(19,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(14,'android.permission.PROCESS_OUTGOING_CALLS'),(17,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_SMS'),(13,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(24,'android.permission.WAKE_LOCK'),(18,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://mms/',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'',NULL,NULL,NULL),(52,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'',NULL,NULL,NULL),(62,NULL,NULL,'',NULL,NULL,NULL),(63,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'',NULL,NULL,NULL),(66,NULL,NULL,'',NULL,NULL,NULL),(67,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(72,NULL,NULL,'',NULL,NULL,NULL),(73,NULL,NULL,'',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'',NULL,NULL,NULL),(78,NULL,NULL,'',NULL,NULL,NULL),(79,NULL,NULL,'(.*)/',NULL,NULL,NULL),(80,NULL,NULL,'',NULL,NULL,NULL),(81,NULL,NULL,'',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(84,NULL,NULL,'',NULL,NULL,NULL),(85,NULL,NULL,'(.*)',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'',NULL,NULL,NULL),(88,NULL,NULL,'',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(91,NULL,NULL,'',NULL,NULL,NULL),(92,NULL,NULL,'(.*)',NULL,NULL,NULL),(93,NULL,NULL,'',NULL,NULL,NULL),(94,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(95,NULL,NULL,'(.*)',NULL,NULL,NULL),(96,NULL,NULL,'(.*)',NULL,NULL,NULL),(97,NULL,NULL,'',NULL,NULL,NULL),(98,NULL,NULL,'',NULL,NULL,NULL),(99,NULL,NULL,'',NULL,NULL,NULL),(100,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(101,NULL,NULL,'(.*)',NULL,NULL,NULL),(102,NULL,NULL,'',NULL,NULL,NULL),(103,NULL,NULL,'',NULL,NULL,NULL),(104,NULL,NULL,'(.*)',NULL,NULL,NULL),(105,NULL,NULL,'',NULL,NULL,NULL),(106,NULL,NULL,'(.*)',NULL,NULL,NULL),(107,NULL,NULL,'',NULL,NULL,NULL),(108,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(109,NULL,NULL,'',NULL,NULL,NULL),(110,NULL,NULL,'',NULL,NULL,NULL),(111,NULL,NULL,'(.*)/',NULL,NULL,NULL),(112,NULL,NULL,'(.*)',NULL,NULL,NULL),(113,NULL,NULL,'',NULL,NULL,NULL),(114,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(115,NULL,NULL,'',NULL,NULL,NULL),(116,NULL,NULL,'(.*)',NULL,NULL,NULL),(117,NULL,NULL,'(.*)/',NULL,NULL,NULL),(118,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(119,NULL,NULL,'',NULL,NULL,NULL),(120,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(121,NULL,NULL,'content://sms/',NULL,NULL,NULL),(122,NULL,NULL,'(.*)',NULL,NULL,NULL),(123,NULL,NULL,'(.*)',NULL,NULL,NULL),(124,NULL,NULL,'',NULL,NULL,NULL),(125,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(126,NULL,NULL,'(.*)',NULL,NULL,NULL),(127,NULL,NULL,'(.*)',NULL,NULL,NULL),(128,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(129,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(130,NULL,NULL,'(.*)',NULL,NULL,NULL),(131,NULL,NULL,'(.*)',NULL,NULL,NULL),(132,NULL,NULL,'(.*)/',NULL,NULL,NULL),(133,NULL,NULL,'content://mms/',NULL,NULL,NULL),(134,NULL,NULL,'(.*)',NULL,NULL,NULL),(135,NULL,NULL,'',NULL,NULL,NULL),(136,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(137,NULL,NULL,'',NULL,NULL,NULL),(138,NULL,NULL,'(.*)',NULL,NULL,NULL),(139,NULL,NULL,'(.*)',NULL,NULL,NULL),(140,NULL,NULL,'(.*)',NULL,NULL,NULL),(141,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(142,NULL,NULL,'(.*)',NULL,NULL,NULL),(143,NULL,NULL,'',NULL,NULL,NULL),(144,NULL,NULL,'(.*)',NULL,NULL,NULL),(145,NULL,NULL,'(.*)/',NULL,NULL,NULL),(146,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(147,NULL,NULL,'(.*)',NULL,NULL,NULL),(148,NULL,NULL,'content://sms/',NULL,NULL,NULL),(149,NULL,NULL,'(.*)',NULL,NULL,NULL),(150,NULL,NULL,'(.*)',NULL,NULL,NULL),(151,NULL,NULL,'(.*)',NULL,NULL,NULL),(152,NULL,NULL,'(.*)',NULL,NULL,NULL),(153,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(154,NULL,NULL,'(.*)',NULL,NULL,NULL),(155,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(156,NULL,NULL,'(.*)',NULL,NULL,NULL),(157,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(158,NULL,NULL,'content://sms/',NULL,NULL,NULL),(159,NULL,NULL,'',NULL,NULL,NULL),(160,NULL,NULL,'(.*)',NULL,NULL,NULL),(161,NULL,NULL,'content://mms/',NULL,NULL,NULL),(162,NULL,NULL,'(.*)',NULL,NULL,NULL),(163,NULL,NULL,'',NULL,NULL,NULL),(164,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(165,NULL,NULL,'(.*)',NULL,NULL,NULL),(166,NULL,NULL,'(.*)',NULL,NULL,NULL),(167,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(168,NULL,NULL,'(.*)',NULL,NULL,NULL),(169,NULL,NULL,'content://mms/',NULL,NULL,NULL),(170,NULL,NULL,'(.*)',NULL,NULL,NULL),(171,NULL,NULL,'content://sms/',NULL,NULL,NULL),(172,NULL,NULL,'(.*)',NULL,NULL,NULL),(173,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(174,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(175,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(176,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(177,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(178,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(179,NULL,NULL,'(.*)/',NULL,NULL,NULL),(180,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(181,NULL,NULL,'',NULL,NULL,NULL),(182,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(183,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(184,NULL,NULL,'(.*)',NULL,NULL,NULL),(185,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(186,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(187,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(188,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(189,NULL,NULL,'',NULL,NULL,NULL),(190,NULL,NULL,'(.*)',NULL,NULL,NULL),(191,NULL,NULL,'(.*)',NULL,NULL,NULL),(192,NULL,NULL,'',NULL,NULL,NULL),(193,NULL,NULL,'(.*)',NULL,NULL,NULL),(194,NULL,NULL,'(.*)',NULL,NULL,NULL),(195,NULL,NULL,'(.*)',NULL,NULL,NULL),(196,NULL,NULL,'(.*)',NULL,NULL,NULL),(197,NULL,NULL,'(.*)',NULL,NULL,NULL),(198,NULL,NULL,'',NULL,NULL,NULL),(199,NULL,NULL,'(.*)',NULL,NULL,NULL),(200,NULL,NULL,'(.*)',NULL,NULL,NULL),(201,NULL,NULL,'',NULL,NULL,NULL),(202,NULL,NULL,'',NULL,NULL,NULL),(203,NULL,NULL,'',NULL,NULL,NULL),(204,NULL,NULL,'',NULL,NULL,NULL),(205,NULL,NULL,'(.*)',NULL,NULL,NULL),(206,NULL,NULL,'',NULL,NULL,NULL),(207,NULL,NULL,'',NULL,NULL,NULL),(208,NULL,NULL,'',NULL,NULL,NULL),(209,NULL,NULL,'(.*)',NULL,NULL,NULL),(210,NULL,NULL,'(.*)',NULL,NULL,NULL),(211,NULL,NULL,'(.*)',NULL,NULL,NULL),(212,NULL,NULL,'',NULL,NULL,NULL),(213,NULL,NULL,'',NULL,NULL,NULL),(214,NULL,NULL,'',NULL,NULL,NULL),(215,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(216,NULL,NULL,'(.*)',NULL,NULL,NULL),(217,NULL,NULL,'content://mms/',NULL,NULL,NULL),(218,NULL,NULL,'(.*)',NULL,NULL,NULL),(219,NULL,NULL,'(.*)',NULL,NULL,NULL),(220,NULL,NULL,'(.*)',NULL,NULL,NULL),(221,NULL,NULL,'(.*)',NULL,NULL,NULL),(222,NULL,NULL,'(.*)',NULL,NULL,NULL),(223,NULL,NULL,'(.*)',NULL,NULL,NULL),(224,NULL,NULL,'(.*)',NULL,NULL,NULL),(225,NULL,NULL,'(.*)',NULL,NULL,NULL),(226,NULL,NULL,'(.*)',NULL,NULL,NULL),(227,NULL,NULL,'(.*)',NULL,NULL,NULL),(228,NULL,NULL,'(.*)',NULL,NULL,NULL),(229,NULL,NULL,'content://sms/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,6,6),(4,7,8),(5,12,35),(6,13,38),(7,17,118),(8,18,121),(9,19,125),(10,20,129),(11,21,133),(12,25,146),(13,26,148),(14,28,155),(15,29,158),(16,30,161),(17,31,167),(18,32,169),(19,33,171),(20,34,173),(21,35,174),(22,36,175),(23,37,176),(24,39,177),(25,40,178),(26,43,185),(27,45,186),(28,46,187),(29,47,188),(30,49,215),(31,51,217),(32,54,229);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,2,3),(16,2,4),(17,2,5),(18,3,1),(19,2,6),(20,3,2),(21,2,7),(22,3,3),(23,2,8),(24,3,4),(25,2,9),(26,3,5),(27,2,10),(28,3,6),(29,2,11),(30,3,7),(31,2,12),(32,3,8),(33,3,9),(34,3,10),(35,3,11),(36,3,12),(37,3,13),(38,4,1),(39,4,2),(40,4,3),(41,4,4),(42,4,5),(43,4,6),(44,4,7),(45,4,8),(46,4,9),(47,4,10),(48,4,11),(49,4,12),(50,4,13),(51,4,14),(52,4,15),(53,4,17),(54,4,16),(55,4,19),(56,4,18),(57,4,21),(58,4,20),(59,4,23),(60,4,22),(61,5,1),(62,5,2),(63,5,3),(64,5,4),(65,5,5),(66,5,6),(67,5,7),(68,5,8),(69,5,9),(70,5,10),(71,5,11),(72,5,12),(73,5,13),(74,5,14),(75,5,15),(76,5,17),(77,5,16),(78,5,19),(79,5,18),(80,5,21),(81,5,20),(82,5,23),(83,5,24),(84,6,1),(85,6,2),(86,6,3),(87,6,4),(88,6,6),(89,6,7),(90,6,25),(91,6,8),(92,6,9),(93,6,10),(94,6,11),(95,6,12);
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
