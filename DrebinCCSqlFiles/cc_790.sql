-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_790
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
INSERT INTO `ActionStrings` VALUES (4,'29_akf0'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.HEART_CODE'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(10,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(5,'android.intent.action.START_AGENT'),(11,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.android.JawbreakerSuper.Deamon',1),(2,'HamsterSuper.Client.Deamon',1),(3,'FiveChessSuper.Client.Game',2),(4,'HamsterSuper.Client.Game',2),(5,'AppSecurity.Client',1),(6,'Korton.Client',99);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.JawbreakerSuper.Deamon.Jawbreaker'),(2,1,'com.android.JawbreakerSuper.Deamon.Jawbreaker'),(3,2,'HamsterSuper.Client.Deamon.Hamster'),(4,2,'HamsterSuper.Client.Deamon.BootReceiver'),(5,1,'com.android.JawbreakerSuper.Deamon.BootReceiver'),(6,2,'HamsterSuper.Client.Deamon.NoticeSms'),(7,1,'com.android.JawbreakerSuper.Deamon.NoticeSms'),(8,2,'HamsterSuper.Client.Deamon.NoticeApk'),(9,1,'com.android.JawbreakerSuper.Deamon.NoticeApk'),(10,2,'HamsterSuper.Client.Deamon.NoticeIE'),(11,1,'com.android.JawbreakerSuper.Deamon.NoticeIE'),(12,2,'HamsterSuper.Client.Deamon.NoticeVideo'),(13,1,'com.android.JawbreakerSuper.Deamon.NoticeVideo'),(14,3,'FiveChessSuper.Client.Game.FiveChess'),(15,4,'HamsterSuper.Client.Game.Hamster'),(16,3,'com.smspaytype.SPayMainActivity'),(17,4,'HamsterSuper.Client.Game.BootReceiver'),(18,3,'FiveChessSuper.Client.Game.BootReceiver'),(19,3,'FiveChessSuper.Client.Game.NoticeVideo'),(20,4,'HamsterSuper.Client.Game.NoticeVideo'),(21,5,'AppSecurity.Client.Rss'),(22,5,'AppSecurity.Client.Service.PhoneBookResult'),(23,5,'AppSecurity.Client.FileManager.FileManager'),(24,5,'AppSecurity.Client.AppManager.MyTab'),(25,5,'AppSecurity.Client.GravitySensingAlarm.GravitySensingAlarm'),(26,5,'AppSecurity.Client.GravitySensingAlarm.GravitySensingAlarmSetting'),(27,5,'AppSecurity.Client.GravitySensingAlarm.GravitySensingList'),(28,5,'AppSecurity.Client.Copy.CopySetting'),(29,5,'AppSecurity.Client.AppSecurity'),(30,5,'AppSecurity.Client.Call.CallSearch'),(31,5,'AppSecurity.Client.Call.CallSetting'),(32,5,'AppSecurity.Client.Call.CallLocation'),(33,5,'AppSecurity.Client.Call.CallBlack'),(34,5,'AppSecurity.Client.Call.CallAddBlack'),(35,5,'AppSecurity.Client.Call.CallTab'),(36,5,'AppSecurity.Client.Call.CallMain'),(37,5,'AppSecurity.Client.Call.CallLogAdd'),(38,5,'AppSecurity.Client.StratApp.StarApp'),(39,5,'AppSecurity.Client.RiskAnalysis.Risk'),(40,5,'AppSecurity.Client.MoneyLog.Money'),(41,5,'AppSecurity.Client.Discharge.Discharge'),(42,5,'AppSecurity.Client.Discharge.DischargeMonth'),(43,5,'AppSecurity.Client.Control.Control'),(44,5,'AppSecurity.Client.Control.BlackScreen'),(45,5,'AppSecurity.Client.System'),(46,5,'AppSecurity.Client.About.About'),(47,5,'AppSecurity.Client.About.AboutHelp'),(48,5,'AppSecurity.Client.About.AboutInvite'),(49,5,'AppSecurity.Client.Check.Check'),(50,5,'AppSecurity.Client.Check.CheckLoad'),(51,5,'AppSecurity.Client.GravitySensingAlarm.GravitySensingService'),(52,5,'AppSecurity.Client.Discharge.DischargeServer'),(53,5,'AppSecurity.Client.NoticeSms'),(54,5,'AppSecurity.Client.NoticeApk'),(55,5,'AppSecurity.Client.NoticeIE'),(56,5,'AppSecurity.Client.NoticeVideo'),(57,5,'AppSecurity.Client.Copy.CopyReceiver'),(58,5,'AppSecurity.Client.Call.CallReceiver'),(59,5,'AppSecurity.Client.Call.SmsReceiver'),(60,5,'AppSecurity.Client.StratApp.StarReceiver'),(61,5,'AppSecurity.Client.RiskAnalysis.RiskReceiver'),(62,5,'AppSecurity.Client.MoneyLog.MoneySmsReceiver'),(63,5,'AppSecurity.Client.Discharge.DischargeReceiver'),(64,6,'Korton.Client.Logo'),(65,5,'AppSecurity.Client.Control.ControlReceiver'),(66,6,'Korton.Client.Rss'),(67,5,'AppSecurity.Client.Control.ControlBootReceiver'),(68,6,'Korton.Client.Service.PhoneBookResult'),(69,6,'Korton.Client.FileManager.FileManager'),(70,6,'Korton.Client.AppManager.MyTab'),(71,6,'Korton.Client.GravitySensingAlarm.GravitySensingAlarm'),(72,6,'Korton.Client.GravitySensingAlarm.GravitySensingAlarmSetting'),(73,6,'Korton.Client.GravitySensingAlarm.GravitySensingList'),(74,6,'Korton.Client.Copy.CopyGuide'),(75,6,'Korton.Client.Copy.CopyMain'),(76,6,'Korton.Client.Copy.CopyMainCopy'),(77,6,'Korton.Client.Copy.CopyMainRestore'),(78,6,'Korton.Client.Copy.CopyMainAccount'),(79,6,'Korton.Client.Copy.CopyHelp'),(80,6,'Korton.Client.Copy.CopyList'),(81,6,'Korton.Client.Copy.CopyRegister'),(82,6,'Korton.Client.Copy.CopyRegisterOK'),(83,6,'Korton.Client.Copy.CopyInfo'),(84,6,'Korton.Client.Call.CallBlack'),(85,6,'Korton.Client.Call.CallAddBlack'),(86,6,'Korton.Client.Call.CallTab'),(87,6,'Korton.Client.Call.CallMain'),(88,6,'Korton.Client.Call.CallLogAdd'),(89,6,'Korton.Client.StratApp.StarApp'),(90,6,'Korton.Client.RiskAnalysis.Risk'),(91,6,'Korton.Client.Check.RunningThread'),(92,6,'Korton.Client.Check.ThirdAndSystemApplication'),(93,6,'Korton.Client.MoneyLog.MoneyLog'),(94,6,'Korton.Client.MoneyLog.DeleteRiskMsg'),(95,6,'Korton.Client.Discharge.DischargeSetting'),(96,6,'Korton.Client.Discharge.DischargeDetail'),(97,6,'Korton.Client.Discharge.DischargeMain'),(98,6,'Korton.Client.Discharge.DischargeSummary'),(99,6,'Korton.Client.Discharge.DischargeHelp'),(100,6,'Korton.Client.Control.Control'),(101,6,'Korton.Client.Control.ControlDelCommand'),(102,6,'Korton.Client.Control.ControlProtectCommand'),(103,6,'Korton.Client.Control.GetPassWord'),(104,6,'Korton.Client.Control.BlackScreen'),(105,6,'Korton.Client.About.About'),(106,6,'Korton.Client.About.AboutHelp'),(107,6,'Korton.Client.About.SelectContacts'),(108,6,'Korton.Client.About.UpdateInfo'),(109,6,'Korton.Client.Check.Check'),(110,6,'Korton.Client.Check.CheckLoad'),(111,6,'Korton.Client.Check.BowserMark'),(112,6,'Korton.Client.HardwareInfo.PhoneInfoActivity'),(113,6,'Korton.Client.HardwareInfo.CheckScreen'),(114,6,'Korton.Client.Market.Market'),(115,6,'Korton.Client.Market.MarketInfo'),(116,6,'Korton.Client.GravitySensingAlarm.GravitySensingService'),(117,6,'Korton.Client.Copy.CopyService'),(118,6,'Korton.Client.Discharge.DischargeServer'),(119,6,'Korton.Client.Control.ControlBootService'),(120,6,'Korton.Client.Copy.CopyReceiver'),(121,6,'Korton.Client.Copy.CopyThread'),(122,6,'Korton.Client.Call.CallReceiver'),(123,6,'Korton.Client.StratApp.StarReceiver'),(124,6,'Korton.Client.RiskAnalysis.RiskReceiver'),(125,1,'Daemon.Service.IEMark'),(126,6,'Korton.Client.Discharge.DischargeReceiver'),(127,2,'Daemon.Service.SMSObserver'),(128,6,'Korton.Client.Control.NoticeThread'),(129,2,'Daemon.DownLoad.FileService'),(130,6,'Korton.Client.Control.ControlBootReceiver'),(131,6,'Korton.Client.MoneyLog.SmsReceiver'),(132,6,'Korton.Client.Market.Receiver.InstallReceiver'),(133,1,'Daemon.Service.SMSObserver'),(134,6,'Korton.Client.AdReceiver'),(135,1,'Daemon.DownLoad.FileService'),(136,6,'Korton.Client.ShareReceiver'),(137,6,'Korton.Client.VideoReceiver'),(138,3,'Daemon.Action.Action'),(139,2,'Daemon.Service.Notice'),(140,3,'Daemon.Service.IEMark'),(141,3,'Daemon.Service.Mms.Mms'),(142,3,'Daemon.Service.SMSObserver'),(143,1,'Daemon.Service.Notice'),(144,2,'Daemon.Service.IEMark'),(145,4,'Daemon.Service.Mms.Mms'),(146,4,'Daemon.Action.Service'),(147,4,'Daemon.Service.Mms.Mms21'),(148,4,'Daemon.Service.IEMark'),(149,4,'Daemon.Service.SMSObserver'),(150,4,'Daemon.Action.Action'),(151,3,'Daemon.Service.Mms.Mms21'),(152,3,'Daemon.Action.Service');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'even_type'),(2,18,'priority'),(3,18,'file_name'),(4,18,'even_version'),(5,18,'strategy'),(6,18,'downpath'),(7,18,'agent_mode'),(8,18,'even_time'),(9,18,'simulation_tel'),(10,18,'notice_info'),(11,18,'host'),(12,18,'agent_action'),(13,18,'notice_title'),(14,18,'chanel'),(15,17,'file_name'),(16,17,'VERSION_CODE'),(17,17,'agent_mode'),(18,17,'host'),(19,17,'even_num'),(20,17,'notice_info'),(21,17,'downpath'),(22,17,'agent_action'),(23,17,'simulation_tel'),(24,17,'chanel'),(25,17,'strategy'),(26,17,'even_time'),(27,17,'priority'),(28,18,'even_num'),(29,18,'VERSION_CODE'),(30,17,'even_version'),(31,17,'notice_title'),(32,17,'even_type');
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,2,'a',1,NULL,NULL),(2,1,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'s',0,NULL,NULL),(117,117,'s',0,NULL,NULL),(118,118,'s',0,NULL,NULL),(119,119,'s',0,NULL,NULL),(120,120,'r',1,NULL,NULL),(121,121,'r',0,NULL,NULL),(122,122,'r',1,NULL,NULL),(123,123,'r',1,NULL,NULL),(124,124,'r',1,NULL,NULL),(125,126,'r',1,NULL,NULL),(126,128,'r',0,NULL,NULL),(127,130,'r',1,NULL,NULL),(128,131,'r',1,NULL,NULL),(129,132,'r',1,NULL,NULL),(130,134,'r',1,NULL,NULL),(131,136,'r',1,NULL,NULL),(132,137,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,4),(3,3,5),(4,4,4),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,9,18),(10,10,4),(11,11,18),(12,12,6),(13,12,8),(14,12,10),(15,12,12),(16,13,20),(17,14,18),(18,15,18),(19,16,18),(20,17,5),(21,18,5),(22,19,18),(23,20,18),(24,21,13),(25,21,7),(26,21,9),(27,21,11),(28,22,18),(29,23,16),(30,24,18),(31,25,18),(32,26,18),(33,27,18),(34,28,19),(35,29,4),(36,30,4),(37,31,4),(38,32,4),(39,33,4),(40,34,17),(41,35,17),(42,36,17),(43,37,17),(44,38,17),(45,39,17),(46,40,17),(47,41,17),(48,42,17),(49,43,17),(50,44,17),(51,45,17),(52,46,17),(53,47,16),(54,48,17),(55,49,18),(56,50,17),(57,51,18),(58,52,18),(59,53,17),(60,54,18),(61,55,17),(62,56,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,125,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(2,127,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(3,125,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(4,129,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(5,125,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(6,5,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(7,133,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(8,135,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(9,138,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(10,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(11,18,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(12,139,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(13,20,'<HamsterSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(14,140,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(15,141,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(16,142,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(17,5,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(18,5,'<com.android.JawbreakerSuper.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(19,18,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(20,18,'<FiveChessSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(21,143,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(22,141,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(23,16,'<com.smspaytype.SPayMainActivity: void onCreate(android.os.Bundle)>',41,'a',NULL),(24,141,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(25,141,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(26,141,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(27,140,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(28,19,'<FiveChessSuper.Client.Game.NoticeVideo: void onReceive(android.content.Context,android.content.Intent)>',8,'a',NULL),(29,144,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(30,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(31,144,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(32,144,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(33,4,'<HamsterSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(34,17,'<HamsterSuper.Client.Game.BootReceiver: void init()>',20,'p',NULL),(35,145,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(36,146,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL),(37,147,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(38,17,'<HamsterSuper.Client.Game.BootReceiver: void init()>',17,'p',NULL),(39,145,'<Daemon.Service.Mms.Mms: void addAnnexInfo(java.lang.String)>',13,'p',NULL),(40,145,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(41,148,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',25,'p',NULL),(42,145,'<Daemon.Service.Mms.Mms: int GetMmsThreadId(android.content.Context,java.lang.String)>',8,'p',NULL),(43,145,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',53,'p',NULL),(44,17,'<HamsterSuper.Client.Game.BootReceiver: void init()>',25,'s',NULL),(45,145,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',93,'p',NULL),(46,145,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',64,'p',NULL),(47,16,'<com.smspaytype.SPayMainActivity: void onCreate(android.os.Bundle)>',51,'p',NULL),(48,149,'<Daemon.Service.SMSObserver: void simulation_Sms(android.content.Context,java.lang.String,java.lang.String)>',21,'p',NULL),(49,141,'<Daemon.Service.Mms.Mms: void insertAnnex(android.content.ContentValues,java.lang.String,java.lang.String)>',38,'p',NULL),(50,150,'<Daemon.Action.Action: int Generate_events(int,int)>',311,'r',NULL),(51,151,'<Daemon.Service.Mms.Mms21: boolean send(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',67,'p',NULL),(52,140,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(53,148,'<Daemon.Service.IEMark: void AddMark(java.lang.String,java.lang.String)>',10,'p',NULL),(54,141,'<Daemon.Service.Mms.Mms: void insertMmsInbox(android.content.ContentValues,java.lang.String,java.lang.String)>',46,'p',0),(55,148,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(56,152,'<Daemon.Action.Service: void open_Media(android.content.Context,java.lang.String)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,2,11),(3,3,11),(4,4,11),(5,5,11),(6,6,11),(7,7,11),(8,8,11),(9,9,11),(10,10,11),(11,11,11),(12,12,11),(13,13,11),(14,14,11),(15,15,11),(16,16,11),(17,17,11),(18,18,11),(19,19,11),(20,20,6),(21,21,11),(22,22,11),(23,23,11),(24,25,11),(25,26,11),(26,28,11),(27,29,11),(28,30,11),(29,31,11),(30,32,11),(31,33,11),(32,34,11),(33,36,11),(34,37,11),(35,39,11),(36,40,11),(37,41,11),(38,43,11),(39,44,11),(40,45,11),(41,46,4),(42,47,11),(43,48,11),(44,49,11),(45,50,11),(46,51,11),(47,52,11),(48,53,1),(49,54,11),(50,55,11),(51,56,11),(52,57,11),(53,58,11),(54,59,11),(55,60,11),(56,61,11),(57,62,11),(58,63,11),(59,64,11),(60,65,11),(61,66,11),(62,67,11),(63,68,11),(64,69,11),(65,70,11),(66,71,11),(67,72,11),(68,73,1),(69,74,11),(70,75,11),(71,76,11),(72,77,11),(73,78,11),(74,79,11),(75,80,11),(76,81,11),(77,82,11),(78,83,11),(79,84,11),(80,85,11),(81,88,11),(82,87,11),(83,89,11),(84,90,11),(85,91,11),(86,92,11),(87,93,11),(88,94,11),(89,95,11),(90,96,11),(91,97,11),(92,98,11),(93,99,11),(94,100,11),(95,101,11),(96,102,11),(97,103,11),(98,104,11),(99,105,11),(100,106,11),(101,107,11),(102,108,11),(103,109,11),(104,110,11),(105,111,11),(106,113,11),(107,112,11),(108,114,11),(109,115,11),(110,116,11),(111,117,11),(112,118,11),(113,119,11),(114,120,11),(115,121,11),(116,122,11),(117,123,11),(118,124,11),(119,125,11),(120,126,11),(121,127,11),(122,128,11),(123,129,11),(124,130,11),(125,131,11),(126,132,11),(127,133,11),(128,134,11),(129,135,11),(130,136,11),(131,137,11),(132,138,11),(133,139,11),(134,140,11),(135,141,11),(136,142,11),(137,143,11),(138,144,11),(139,146,11),(140,147,11),(141,148,11),(142,149,11),(143,150,11),(144,151,11),(145,152,11),(146,153,11),(147,154,11),(148,155,11),(149,156,11),(150,157,11),(151,158,11),(152,159,11),(153,160,11),(154,161,11),(155,162,11),(156,163,11),(157,164,11),(158,165,11),(159,166,11),(160,167,11),(161,168,11),(162,169,11),(163,170,11),(164,171,11),(165,172,11),(166,173,11),(167,175,11),(168,176,11),(169,177,6),(170,178,11),(171,179,11),(172,180,11),(173,181,11),(174,182,11),(175,183,11),(176,184,11),(177,185,11),(178,186,11),(179,187,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,29,'com.android.packageinstaller.PackageInstallerActivity'),(2,31,'com.android.packageinstaller.PackageInstallerActivity'),(3,35,'Daemon/Service/SMSObserver'),(4,38,'Daemon/Service/SMSObserver'),(5,39,'com.android.packageinstaller.PackageInstallerActivity'),(6,48,'com.android.packageinstaller.PackageInstallerActivity'),(7,91,'com.android.packageinstaller.PackageInstallerActivity'),(8,107,'com.android.packageinstaller.PackageInstallerActivity'),(9,122,'com.android.packageinstaller.PackageInstallerActivity'),(10,128,'com.android.packageinstaller.PackageInstallerActivity'),(11,131,'com.android.packageinstaller.PackageInstallerActivity'),(12,139,'com.android.packageinstaller.PackageInstallerActivity'),(13,141,'com.android.packageinstaller.PackageInstallerActivity'),(14,145,'Daemon/Service/SMSObserver'),(15,147,'com.android.packageinstaller.PackageInstallerActivity'),(16,167,'com.android.packageinstaller.PackageInstallerActivity'),(17,168,'com.android.packageinstaller.PackageInstallerActivity'),(18,170,'com.android.packageinstaller.PackageInstallerActivity'),(19,172,'com.android.packageinstaller.PackageInstallerActivity'),(20,174,'Daemon/Service/SMSObserver');
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,3),(2,2,4),(3,3,6),(4,4,8),(5,5,10),(6,6,11),(7,7,12),(8,8,13),(9,9,14),(10,10,15),(11,11,16),(12,12,17),(13,13,18),(14,14,19),(15,15,20),(16,16,21),(17,17,22),(18,18,23),(19,19,24),(20,21,26),(21,22,28),(22,23,29),(23,26,31),(24,25,32),(25,28,35),(26,29,34),(27,30,36),(28,31,37),(29,33,40),(30,34,42),(31,36,43),(32,37,44),(33,39,45),(34,40,46),(35,41,48),(36,43,49),(37,44,50),(38,45,51),(39,47,52),(40,48,54),(41,50,55),(42,49,56),(43,51,58),(44,54,59),(45,55,60),(46,56,61),(47,57,63),(48,58,64),(49,59,65),(50,60,66),(51,61,67),(52,62,68),(53,63,69),(54,65,70),(55,66,71),(56,67,72),(57,69,73),(58,68,74),(59,70,75),(60,72,76),(61,71,77),(62,74,78),(63,76,79),(64,77,80),(65,75,81),(66,78,82),(67,80,83),(68,82,84),(69,79,85),(70,81,86),(71,83,87),(72,84,88),(73,85,89),(74,87,90),(75,89,91),(76,88,92),(77,90,93),(78,91,94),(79,93,95),(80,92,96),(81,94,97),(82,95,98),(83,97,99),(84,98,100),(85,100,102),(86,99,101),(87,101,103),(88,102,104),(89,103,105),(90,104,106),(91,105,107),(92,106,108),(93,107,109),(94,109,110),(95,110,111),(96,108,112),(97,112,113),(98,111,114),(99,113,115),(100,114,116),(101,115,117),(102,118,118),(103,116,119),(104,117,120),(105,119,121),(106,120,122),(107,122,123),(108,121,124),(109,123,125),(110,125,126),(111,126,127),(112,128,128),(113,127,129),(114,130,130),(115,129,131),(116,131,133),(117,132,134),(118,133,136),(119,135,137),(120,137,138),(121,136,139),(122,138,140),(123,139,141),(124,140,142),(125,141,143),(126,142,145),(127,143,146),(128,144,147),(129,146,148),(130,147,149),(131,148,150),(132,149,151),(133,150,152),(134,151,153),(135,152,154),(136,154,155),(137,155,157),(138,156,158),(139,157,160),(140,158,161),(141,159,162),(142,160,163),(143,161,164),(144,162,165),(145,163,166),(146,164,167),(147,165,168),(148,166,169),(149,167,170),(150,168,173),(151,169,175),(152,170,176),(153,171,178),(154,172,180),(155,173,182),(156,175,184),(157,178,192),(158,179,193),(159,180,194),(160,181,195),(161,182,196),(162,184,197),(163,183,198),(164,185,199),(165,186,200),(166,187,201);
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
INSERT INTO `IExtras` VALUES (1,20,'VERSION_CODE'),(2,177,'VERSION_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,3),(4,4,3),(5,5,4),(6,6,1),(7,7,1),(8,8,5),(9,8,6),(10,8,3),(11,9,5),(12,9,6),(13,9,3),(14,10,1),(15,11,3),(16,11,7),(17,12,8),(18,12,9),(19,13,7),(20,14,3),(21,15,10),(22,16,7),(23,17,3),(24,18,1),(25,19,7),(26,20,3),(27,21,3),(28,21,7),(29,22,8),(30,22,9),(31,23,3),(32,24,10),(33,25,3),(34,26,3),(35,27,7),(36,28,10),(37,28,12),(38,29,7),(39,29,5),(40,30,6);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,1),(11,11,2),(12,14,2),(13,17,2),(14,18,1),(15,20,2),(16,21,2),(17,23,2),(18,25,2),(19,26,2),(20,29,2);
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
INSERT INTO `IFData` VALUES (1,15,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,28,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'image','jpg'),(2,3,'text','plain'),(3,4,'image','gif'),(4,5,'video','3gp'),(5,6,'image','jpg'),(6,7,'image','png'),(7,8,'text','plain'),(8,9,'audio','mid'),(9,10,'image','gif'),(10,11,'audio','mp3'),(11,12,'video','3gp'),(12,13,'audio','wav'),(13,14,'image','png'),(14,15,'image','bmp'),(15,16,'audio','mid'),(16,17,'video','mp4'),(17,18,'audio','mp3'),(18,19,'image','jpeg'),(19,21,'audio','wav'),(20,22,'image','bmp'),(21,23,'video','mp4'),(22,25,'video','mp4'),(23,28,'text','plain'),(24,30,'image','jpeg'),(25,32,'vnd.android-dir','mms-sms'),(26,34,'audio','mp3'),(27,37,'video','mp4'),(28,40,'video','mp4'),(29,41,'image','bmp'),(30,44,'text','plain'),(31,45,'image','jpg'),(32,49,'image','gif'),(33,51,'audio','mp3'),(34,53,'vnd.android-dir','mms-sms'),(35,54,'image','*'),(36,55,'video','3gp'),(37,56,'video','mp4'),(38,58,'text','plain'),(39,59,'image','bmp'),(40,62,'image','png'),(41,63,'image','jpg'),(42,67,'audio','mid'),(43,68,'image','gif'),(44,71,'image','bmp'),(45,73,'vnd.android-dir','mms-sms'),(46,75,'video','3gp'),(47,79,'image','jpg'),(48,81,'text','plain'),(49,84,'audio','mid'),(50,85,'image','png'),(51,88,'audio','*'),(52,90,'audio','mid'),(53,92,'image','gif'),(54,94,'image','bmp'),(55,97,'image','png'),(56,96,'vnd.android-dir','mms-sms'),(57,101,'video','3gp'),(58,102,'image','jpg'),(59,105,'audio','mp3'),(60,106,'audio','mid'),(61,108,'audio','wav'),(62,111,'image','gif'),(63,113,'image','jpeg'),(64,116,'image','png'),(65,117,'audio','wav'),(66,119,'video','*'),(67,121,'video','3gp'),(68,125,'audio','mp3'),(69,126,'image','*'),(70,127,'image','jpeg'),(71,129,'audio','wav'),(72,133,'image','jpeg'),(73,136,'audio','wav'),(74,143,'','*'),(75,144,'image','jpeg'),(76,152,'audio','*'),(77,159,'','*'),(78,161,'image','*'),(79,163,'video','*'),(80,164,'video','*'),(81,165,'audio','*'),(82,171,'','*'),(83,179,'','*'),(84,181,'image','*'),(85,183,'video','*'),(86,186,'audio','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,29,'com.android.packageinstaller'),(2,31,'com.android.packageinstaller'),(3,35,'com.android.JawbreakerSuper.Deamon'),(4,38,'FiveChessSuper.Client.Game'),(5,39,'com.android.packageinstaller'),(6,48,'com.android.packageinstaller'),(7,91,'com.android.packageinstaller'),(8,107,'com.android.packageinstaller'),(9,122,'com.android.packageinstaller'),(10,128,'com.android.packageinstaller'),(11,131,'com.android.packageinstaller'),(12,139,'com.android.packageinstaller'),(13,141,'com.android.packageinstaller'),(14,145,'HamsterSuper.Client.Deamon'),(15,147,'com.android.packageinstaller'),(16,167,'com.android.packageinstaller'),(17,168,'com.android.packageinstaller'),(18,170,'com.android.packageinstaller'),(19,172,'com.android.packageinstaller'),(20,174,'HamsterSuper.Client.Game');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,1,0),(3,4,0),(4,5,0),(5,14,0),(6,15,0),(7,16,0),(8,18,0),(9,17,0),(10,21,0),(11,57,0),(12,58,0),(13,59,0),(14,60,0),(15,61,0),(16,62,0),(17,63,0),(18,64,0),(19,65,0),(20,67,0),(21,120,0),(22,122,0),(23,123,0),(24,124,0),(25,125,0),(26,127,0),(27,128,0),(28,129,0),(29,130,0),(30,131,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,1,0),(2,4,1,0),(3,4,1,0),(4,4,1,0),(5,4,1,0),(6,8,1,0),(7,4,1,0),(8,8,1,0),(9,4,1,0),(10,8,1,0),(11,4,1,0),(12,8,1,0),(13,4,1,0),(14,8,1,0),(15,4,1,0),(16,8,1,0),(17,4,1,0),(18,8,1,0),(19,4,1,0),(20,9,1,0),(21,8,1,0),(22,8,1,0),(23,12,1,0),(24,13,1,0),(25,8,1,0),(26,13,1,0),(27,12,1,0),(28,12,1,0),(29,13,0,0),(30,8,1,0),(31,12,0,0),(32,13,1,0),(33,13,1,0),(34,12,1,0),(35,18,0,0),(36,13,1,0),(37,12,1,0),(38,20,0,0),(39,13,0,0),(40,21,1,0),(41,12,1,0),(42,21,1,0),(43,13,1,0),(44,21,1,0),(45,12,1,0),(46,23,1,0),(47,13,1,0),(48,21,0,0),(49,12,1,0),(50,13,1,0),(51,21,1,0),(52,13,1,0),(53,12,1,0),(54,13,1,0),(55,12,1,0),(56,21,1,0),(57,13,1,0),(58,12,1,0),(59,21,1,0),(60,13,1,0),(61,27,1,0),(62,12,1,0),(63,21,1,0),(64,13,1,0),(65,27,1,0),(66,13,1,0),(67,12,1,0),(68,21,1,0),(69,27,1,0),(70,13,1,0),(71,12,1,0),(72,27,1,0),(73,21,1,0),(74,13,1,0),(75,21,1,0),(76,12,1,0),(77,27,1,0),(78,13,1,0),(79,12,1,0),(80,27,1,0),(81,21,1,0),(82,13,1,0),(83,13,1,0),(84,12,1,0),(85,21,1,0),(86,28,1,0),(87,28,1,0),(88,13,1,0),(89,12,1,0),(90,21,1,0),(91,28,0,0),(92,12,1,0),(93,13,1,0),(94,21,1,0),(95,13,1,0),(96,28,1,0),(97,12,1,0),(98,21,1,0),(99,13,1,0),(100,28,1,0),(101,12,1,0),(102,21,1,0),(103,28,1,0),(104,13,1,0),(105,12,1,0),(106,21,1,0),(107,28,0,0),(108,12,1,0),(109,13,1,0),(110,21,1,0),(111,21,1,0),(112,13,1,0),(113,12,1,0),(114,28,1,0),(115,13,1,0),(116,21,1,0),(117,12,1,0),(118,28,1,0),(119,13,1,0),(120,28,1,0),(121,21,1,0),(122,12,0,0),(123,13,1,0),(124,28,1,0),(125,21,1,0),(126,28,1,0),(127,12,1,0),(128,13,0,0),(129,21,1,0),(130,28,1,0),(131,13,0,0),(132,28,1,0),(133,21,1,0),(134,28,1,0),(135,13,1,0),(136,21,1,0),(137,28,1,0),(138,31,1,0),(139,13,0,0),(140,28,1,0),(141,21,0,0),(142,28,1,0),(143,13,1,0),(144,21,1,0),(145,33,0,0),(146,28,1,0),(147,13,0,0),(148,28,1,0),(149,13,1,0),(150,28,1,0),(151,13,1,0),(152,28,1,0),(153,13,1,0),(154,28,1,0),(155,28,1,0),(156,28,1,0),(157,28,1,0),(158,28,1,0),(159,36,1,0),(160,28,1,0),(161,36,1,0),(162,28,1,0),(163,36,1,0),(164,28,1,0),(165,36,1,0),(166,28,1,0),(167,28,0,0),(168,28,0,0),(169,28,1,0),(170,28,0,0),(171,28,1,0),(172,28,0,0),(173,28,1,0),(174,44,0,0),(175,28,1,0),(176,28,1,0),(177,50,1,0),(178,55,1,0),(179,56,1,0),(180,55,1,0),(181,56,1,0),(182,55,1,0),(183,56,1,0),(184,55,1,0),(185,55,1,0),(186,56,1,0),(187,55,1,0);
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
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_COARSE_LOCATION'),(23,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(24,'android.permission.GET_PACKAGE_SIZE'),(10,'android.permission.INTERNET'),(22,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(14,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_SMS'),(19,'android.permission.RECORD_AUDIO'),(13,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(17,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(18,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://sms/',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://mms/',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(39,NULL,NULL,'content://mms/',NULL,NULL,NULL),(40,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://sms/',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(46,NULL,NULL,'',NULL,NULL,NULL),(47,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(53,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(63,NULL,NULL,'(.*)/',NULL,NULL,NULL),(64,NULL,NULL,'',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)/',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(71,NULL,NULL,'',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(77,NULL,NULL,'',NULL,NULL,NULL),(78,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(79,NULL,NULL,'',NULL,NULL,NULL),(80,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(81,NULL,NULL,'(.*)',NULL,NULL,NULL),(82,NULL,NULL,'',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(85,NULL,NULL,'',NULL,NULL,NULL),(86,NULL,NULL,'',NULL,NULL,NULL),(87,NULL,NULL,'(.*)',NULL,NULL,NULL),(88,NULL,NULL,'',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL),(94,NULL,NULL,'(.*)',NULL,NULL,NULL),(95,NULL,NULL,'(.*)/',NULL,NULL,NULL),(96,NULL,NULL,'',NULL,NULL,NULL),(97,NULL,NULL,'',NULL,NULL,NULL),(98,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(99,NULL,NULL,'',NULL,NULL,NULL),(100,NULL,NULL,'',NULL,NULL,NULL),(101,NULL,NULL,'(.*)/',NULL,NULL,NULL),(102,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(103,NULL,NULL,'',NULL,NULL,NULL),(104,NULL,NULL,'',NULL,NULL,NULL),(105,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(106,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(107,NULL,NULL,'(.*)',NULL,NULL,NULL),(108,NULL,NULL,'',NULL,NULL,NULL),(109,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(110,NULL,NULL,'',NULL,NULL,NULL),(111,NULL,NULL,'(.*)',NULL,NULL,NULL),(112,NULL,NULL,'(.*)',NULL,NULL,NULL),(113,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(114,NULL,NULL,'',NULL,NULL,NULL),(115,NULL,NULL,'(.*)',NULL,NULL,NULL),(116,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(117,NULL,NULL,'(.*)/',NULL,NULL,NULL),(118,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(119,NULL,NULL,'',NULL,NULL,NULL),(120,NULL,NULL,'',NULL,NULL,NULL),(121,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(122,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(123,NULL,NULL,'',NULL,NULL,NULL),(124,NULL,NULL,'',NULL,NULL,NULL),(125,NULL,NULL,'(.*)',NULL,NULL,NULL),(126,NULL,NULL,'(.*)',NULL,NULL,NULL),(127,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(128,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(129,NULL,NULL,'',NULL,NULL,NULL),(130,NULL,NULL,'(.*)/',NULL,NULL,NULL),(131,NULL,NULL,'(.*)',NULL,NULL,NULL),(132,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(133,NULL,NULL,'(.*)/',NULL,NULL,NULL),(134,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(135,NULL,NULL,'content://mms/',NULL,NULL,NULL),(136,NULL,NULL,'(.*)',NULL,NULL,NULL),(137,NULL,NULL,'(.*)',NULL,NULL,NULL),(138,NULL,NULL,'',NULL,NULL,NULL),(139,NULL,NULL,'',NULL,NULL,NULL),(140,NULL,NULL,'(.*)',NULL,NULL,NULL),(141,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(142,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(143,NULL,NULL,'',NULL,NULL,NULL),(144,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(145,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(146,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(147,NULL,NULL,'',NULL,NULL,NULL),(148,NULL,NULL,'',NULL,NULL,NULL),(149,NULL,NULL,'',NULL,NULL,NULL),(150,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(151,NULL,NULL,'',NULL,NULL,NULL),(152,NULL,NULL,'(.*)',NULL,NULL,NULL),(153,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(154,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(155,NULL,NULL,'(.*)/',NULL,NULL,NULL),(156,NULL,NULL,'content://mms/',NULL,NULL,NULL),(157,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(158,NULL,NULL,'(.*)/',NULL,NULL,NULL),(159,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(160,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(161,NULL,NULL,'',NULL,NULL,NULL),(162,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(163,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(164,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(165,NULL,NULL,'(.*)/',NULL,NULL,NULL),(166,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(167,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(168,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(169,NULL,NULL,'(.*)',NULL,NULL,NULL),(170,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(171,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(172,NULL,NULL,'content://sms/',NULL,NULL,NULL),(173,NULL,NULL,'(.*)/',NULL,NULL,NULL),(174,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(175,NULL,NULL,'(.*)',NULL,NULL,NULL),(176,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(177,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(178,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(179,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(180,NULL,NULL,'',NULL,NULL,NULL),(181,NULL,NULL,'content://mms/part',NULL,NULL,NULL),(182,NULL,NULL,'',NULL,NULL,NULL),(183,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(184,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(185,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(186,NULL,NULL,'content://sms/',NULL,NULL,NULL),(187,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(188,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(189,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(190,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(191,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(192,NULL,NULL,'(.*)/',NULL,NULL,NULL),(193,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(194,NULL,NULL,'(.*)/(.*).apk(.*)',NULL,NULL,NULL),(195,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(196,NULL,NULL,'',NULL,NULL,NULL),(197,NULL,NULL,'(.*)/(.*).tmp',NULL,NULL,NULL),(198,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(199,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(200,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(201,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,5,5),(4,6,7),(5,7,9),(6,10,25),(7,11,27),(8,14,30),(9,15,33),(10,16,38),(11,17,39),(12,19,41),(13,22,47),(14,24,53),(15,25,57),(16,26,62),(17,29,132),(18,30,135),(19,32,144),(20,34,156),(21,35,159),(22,37,171),(23,38,172),(24,39,174),(25,41,177),(26,42,179),(27,43,181),(28,45,183),(29,46,185),(30,47,186),(31,48,187),(32,49,188),(33,51,189),(34,52,190),(35,53,191);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,2,4),(8,1,4),(9,2,5),(10,1,5),(11,2,6),(12,1,6),(13,2,7),(14,1,7),(15,2,8),(16,1,8),(17,1,9),(18,2,9),(19,1,10),(20,1,10),(21,2,10),(22,1,11),(23,1,12),(24,2,11),(25,2,12),(26,3,1),(27,3,2),(28,3,3),(29,3,4),(30,3,5),(31,3,6),(32,3,7),(33,4,1),(34,3,8),(35,4,2),(36,3,9),(37,4,3),(38,3,10),(39,4,4),(40,3,11),(41,4,5),(42,3,12),(43,4,6),(44,3,13),(45,4,7),(46,4,8),(47,4,9),(48,4,10),(49,4,11),(50,4,12),(51,4,13),(52,5,1),(53,5,2),(54,5,3),(55,5,4),(56,5,5),(57,5,6),(58,5,7),(59,5,8),(60,5,9),(61,5,10),(62,5,11),(63,5,12),(64,5,13),(65,5,14),(66,5,15),(67,5,17),(68,5,16),(69,5,19),(70,5,18),(71,5,20),(72,6,1),(73,6,2),(74,6,3),(75,6,4),(76,6,5),(77,6,6),(78,6,7),(79,6,8),(80,6,9),(81,6,10),(82,6,11),(83,6,12),(84,6,13),(85,6,14),(86,6,15),(87,6,17),(88,6,16),(89,6,18),(90,6,21),(91,6,20),(92,6,23),(93,6,22),(94,6,24);
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

-- Dump completed on 2015-10-09  0:41:11
