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
) ENGINE=InnoDB AUTO_INCREMENT=1539 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,46,64,2,NULL),(2,86,64,2,NULL),(3,87,64,2,NULL),(4,46,1,2,NULL),(5,100,64,2,NULL),(6,86,1,2,NULL),(7,103,64,2,NULL),(8,87,1,2,NULL),(9,114,64,2,NULL),(10,100,1,2,NULL),(11,118,64,2,NULL),(12,103,1,2,NULL),(13,120,64,2,NULL),(14,114,1,2,NULL),(15,124,64,2,NULL),(16,118,1,2,NULL),(17,130,64,2,NULL),(18,120,1,2,NULL),(19,132,64,2,NULL),(20,124,1,2,NULL),(21,134,64,2,NULL),(22,130,1,2,NULL),(23,137,64,2,NULL),(24,132,1,2,NULL),(25,140,64,2,NULL),(26,134,1,2,NULL),(27,142,64,2,NULL),(28,137,1,2,NULL),(29,146,64,2,NULL),(30,140,1,2,NULL),(31,148,64,2,NULL),(32,142,1,2,NULL),(33,150,64,2,NULL),(34,146,1,2,NULL),(35,154,64,2,NULL),(36,148,1,2,NULL),(37,155,64,2,NULL),(38,150,1,2,NULL),(39,156,64,2,NULL),(40,154,1,2,NULL),(41,157,64,2,NULL),(42,155,1,2,NULL),(43,158,64,2,NULL),(44,156,1,2,NULL),(45,160,64,2,NULL),(46,157,1,2,NULL),(47,162,64,2,NULL),(48,158,1,2,NULL),(49,166,64,2,NULL),(50,160,1,2,NULL),(51,169,64,2,NULL),(52,162,1,2,NULL),(53,173,64,2,NULL),(54,166,1,2,NULL),(55,176,64,2,NULL),(56,169,1,2,NULL),(57,24,64,2,NULL),(58,173,1,2,NULL),(59,26,64,2,NULL),(60,176,1,2,NULL),(61,33,64,2,NULL),(62,36,64,2,NULL),(63,24,1,2,NULL),(64,43,64,2,NULL),(65,26,1,2,NULL),(66,47,64,2,NULL),(67,33,1,2,NULL),(68,50,64,2,NULL),(69,36,1,2,NULL),(70,52,64,2,NULL),(71,43,1,2,NULL),(72,57,64,2,NULL),(73,47,1,2,NULL),(74,60,64,2,NULL),(75,50,1,2,NULL),(76,64,64,2,NULL),(77,52,1,2,NULL),(78,66,64,2,NULL),(79,57,1,2,NULL),(80,70,64,2,NULL),(81,60,1,2,NULL),(82,74,64,2,NULL),(83,64,1,2,NULL),(84,78,64,2,NULL),(85,66,1,2,NULL),(86,82,64,2,NULL),(87,70,1,2,NULL),(88,83,64,2,NULL),(89,74,1,2,NULL),(90,93,64,2,NULL),(91,78,1,2,NULL),(92,95,64,2,NULL),(93,82,1,2,NULL),(94,99,64,2,NULL),(95,83,1,2,NULL),(96,104,64,2,NULL),(97,93,1,2,NULL),(98,109,64,2,NULL),(99,95,1,2,NULL),(100,112,64,2,NULL),(101,99,1,2,NULL),(102,115,64,2,NULL),(103,104,1,2,NULL),(104,123,64,2,NULL),(105,109,1,2,NULL),(106,135,64,2,NULL),(107,112,1,2,NULL),(108,149,64,2,NULL),(109,115,1,2,NULL),(110,153,64,2,NULL),(111,123,1,2,NULL),(112,46,120,2,NULL),(113,135,1,2,NULL),(114,86,120,2,NULL),(115,149,1,2,NULL),(116,87,120,2,NULL),(117,153,1,2,NULL),(118,100,120,2,NULL),(119,46,5,2,NULL),(120,103,120,2,NULL),(121,86,5,2,NULL),(122,114,120,2,NULL),(123,87,5,2,NULL),(124,118,120,2,NULL),(125,100,5,2,NULL),(126,120,120,2,NULL),(127,103,5,2,NULL),(128,124,120,2,NULL),(129,114,5,2,NULL),(130,130,120,2,NULL),(131,118,5,2,NULL),(132,132,120,2,NULL),(133,120,5,2,NULL),(134,134,120,2,NULL),(135,124,5,2,NULL),(136,137,120,2,NULL),(137,130,5,2,NULL),(138,140,120,2,NULL),(139,46,21,2,NULL),(140,132,5,2,NULL),(141,142,120,2,NULL),(142,86,21,2,NULL),(143,134,5,2,NULL),(144,146,120,2,NULL),(145,87,21,2,NULL),(146,137,5,2,NULL),(147,148,120,2,NULL),(148,100,21,2,NULL),(149,140,5,2,NULL),(150,150,120,2,NULL),(151,103,21,2,NULL),(152,142,5,2,NULL),(153,154,120,2,NULL),(154,114,21,2,NULL),(155,146,5,2,NULL),(156,155,120,2,NULL),(157,118,21,2,NULL),(158,148,5,2,NULL),(159,156,120,2,NULL),(160,120,21,2,NULL),(161,150,5,2,NULL),(162,157,120,2,NULL),(163,124,21,2,NULL),(164,154,5,2,NULL),(165,158,120,2,NULL),(166,130,21,2,NULL),(167,155,5,2,NULL),(168,160,120,2,NULL),(169,132,21,2,NULL),(170,156,5,2,NULL),(171,162,120,2,NULL),(172,134,21,2,NULL),(173,157,5,2,NULL),(174,166,120,2,NULL),(175,137,21,2,NULL),(176,158,5,2,NULL),(177,169,120,2,NULL),(178,140,21,2,NULL),(179,160,5,2,NULL),(180,173,120,2,NULL),(181,142,21,2,NULL),(182,162,5,2,NULL),(183,176,120,2,NULL),(184,146,21,2,NULL),(185,166,5,2,NULL),(186,24,120,2,NULL),(187,148,21,2,NULL),(188,169,5,2,NULL),(189,26,120,2,NULL),(190,150,21,2,NULL),(191,173,5,2,NULL),(192,33,120,2,NULL),(193,154,21,2,NULL),(194,176,5,2,NULL),(195,36,120,2,NULL),(196,155,21,2,NULL),(197,24,5,2,NULL),(198,43,120,2,NULL),(199,156,21,2,NULL),(200,26,5,2,NULL),(201,157,21,2,NULL),(202,47,120,2,NULL),(203,33,5,2,NULL),(204,50,120,2,NULL),(205,158,21,2,NULL),(206,36,5,2,NULL),(207,52,120,2,NULL),(208,43,5,2,NULL),(209,160,21,2,NULL),(210,57,120,2,NULL),(211,47,5,2,NULL),(212,162,21,2,NULL),(213,60,120,2,NULL),(214,50,5,2,NULL),(215,166,21,2,NULL),(216,64,120,2,NULL),(217,52,5,2,NULL),(218,169,21,2,NULL),(219,66,120,2,NULL),(220,57,5,2,NULL),(221,173,21,2,NULL),(222,70,120,2,NULL),(223,60,5,2,NULL),(224,176,21,2,NULL),(225,74,120,2,NULL),(226,64,5,2,NULL),(227,24,21,2,NULL),(228,78,120,2,NULL),(229,66,5,2,NULL),(230,26,21,2,NULL),(231,82,120,2,NULL),(232,70,5,2,NULL),(233,33,21,2,NULL),(234,83,120,2,NULL),(235,74,5,2,NULL),(236,36,21,2,NULL),(237,93,120,2,NULL),(238,78,5,2,NULL),(239,43,21,2,NULL),(240,95,120,2,NULL),(241,82,5,2,NULL),(242,47,21,2,NULL),(243,99,120,2,NULL),(244,83,5,2,NULL),(245,50,21,2,NULL),(246,104,120,2,NULL),(247,93,5,2,NULL),(248,52,21,2,NULL),(249,109,120,2,NULL),(250,95,5,2,NULL),(251,57,21,2,NULL),(252,112,120,2,NULL),(253,99,5,2,NULL),(254,60,21,2,NULL),(255,115,120,2,NULL),(256,104,5,2,NULL),(257,64,21,2,NULL),(258,123,120,2,NULL),(259,109,5,2,NULL),(260,66,21,2,NULL),(261,135,120,2,NULL),(262,112,5,2,NULL),(263,70,21,2,NULL),(264,149,120,2,NULL),(265,115,5,2,NULL),(266,74,21,2,NULL),(267,153,120,2,NULL),(268,123,5,2,NULL),(269,78,21,2,NULL),(270,46,122,2,NULL),(271,135,5,2,NULL),(272,82,21,2,NULL),(273,86,122,2,NULL),(274,149,5,2,NULL),(275,83,21,2,NULL),(276,87,122,2,NULL),(277,153,5,2,NULL),(278,93,21,2,NULL),(279,100,122,2,NULL),(280,95,21,2,NULL),(281,103,122,2,NULL),(282,99,21,2,NULL),(283,114,122,2,NULL),(284,104,21,2,NULL),(285,118,122,2,NULL),(286,109,21,2,NULL),(287,120,122,2,NULL),(288,112,21,2,NULL),(289,124,122,2,NULL),(290,115,21,2,NULL),(291,130,122,2,NULL),(292,123,21,2,NULL),(293,132,122,2,NULL),(294,135,21,2,NULL),(295,134,122,2,NULL),(296,149,21,2,NULL),(297,137,122,2,NULL),(298,153,21,2,NULL),(299,140,122,2,NULL),(300,46,57,2,NULL),(301,142,122,2,NULL),(302,86,57,2,NULL),(303,146,122,2,NULL),(304,87,57,2,NULL),(305,148,122,2,NULL),(306,100,57,2,NULL),(307,150,122,2,NULL),(308,103,57,2,NULL),(309,154,122,2,NULL),(310,114,57,2,NULL),(311,155,122,2,NULL),(312,118,57,2,NULL),(313,156,122,2,NULL),(314,120,57,2,NULL),(315,157,122,2,NULL),(316,124,57,2,NULL),(317,158,122,2,NULL),(318,130,57,2,NULL),(319,160,122,2,NULL),(320,132,57,2,NULL),(321,162,122,2,NULL),(322,134,57,2,NULL),(323,166,122,2,NULL),(324,137,57,2,NULL),(325,169,122,2,NULL),(326,140,57,2,NULL),(327,173,122,2,NULL),(328,142,57,2,NULL),(329,176,122,2,NULL),(330,146,57,2,NULL),(331,24,122,2,NULL),(332,148,57,2,NULL),(333,26,122,2,NULL),(334,150,57,2,NULL),(335,33,122,2,NULL),(336,154,57,2,NULL),(337,36,122,2,NULL),(338,155,57,2,NULL),(339,43,122,2,NULL),(340,156,57,2,NULL),(341,47,122,2,NULL),(342,157,57,2,NULL),(343,50,122,2,NULL),(344,158,57,2,NULL),(345,52,122,2,NULL),(346,160,57,2,NULL),(347,57,122,2,NULL),(348,162,57,2,NULL),(349,60,122,2,NULL),(350,166,57,2,NULL),(351,64,122,2,NULL),(352,169,57,2,NULL),(353,66,122,2,NULL),(354,173,57,2,NULL),(355,70,122,2,NULL),(356,176,57,2,NULL),(357,74,122,2,NULL),(358,24,57,2,NULL),(359,78,122,2,NULL),(360,26,57,2,NULL),(361,82,122,2,NULL),(362,33,57,2,NULL),(363,83,122,2,NULL),(364,36,57,2,NULL),(365,93,122,2,NULL),(366,43,57,2,NULL),(367,95,122,2,NULL),(368,47,57,2,NULL),(369,99,122,2,NULL),(370,50,57,2,NULL),(371,104,122,2,NULL),(372,52,57,2,NULL),(373,109,122,2,NULL),(374,57,57,2,NULL),(375,112,122,2,NULL),(376,60,57,2,NULL),(377,115,122,2,NULL),(378,64,57,2,NULL),(379,123,122,2,NULL),(380,66,57,2,NULL),(381,135,122,2,NULL),(382,70,57,2,NULL),(383,149,122,2,NULL),(384,74,57,2,NULL),(385,153,122,2,NULL),(386,78,57,2,NULL),(387,46,123,2,NULL),(388,82,57,2,NULL),(389,86,123,2,NULL),(390,83,57,2,NULL),(391,87,123,2,NULL),(392,93,57,2,NULL),(393,100,123,2,NULL),(394,95,57,2,NULL),(395,103,123,2,NULL),(396,99,57,2,NULL),(397,114,123,2,NULL),(398,104,57,2,NULL),(399,118,123,2,NULL),(400,109,57,2,NULL),(401,120,123,2,NULL),(402,112,57,2,NULL),(403,124,123,2,NULL),(404,115,57,2,NULL),(405,130,123,2,NULL),(406,123,57,2,NULL),(407,132,123,2,NULL),(408,135,57,2,NULL),(409,134,123,2,NULL),(410,149,57,2,NULL),(411,137,123,2,NULL),(412,153,57,2,NULL),(413,140,123,2,NULL),(414,46,58,2,NULL),(415,142,123,2,NULL),(416,86,58,2,NULL),(417,146,123,2,NULL),(418,87,58,2,NULL),(419,148,123,2,NULL),(420,100,58,2,NULL),(421,150,123,2,NULL),(422,103,58,2,NULL),(423,154,123,2,NULL),(424,114,58,2,NULL),(425,155,123,2,NULL),(426,118,58,2,NULL),(427,156,123,2,NULL),(428,120,58,2,NULL),(429,157,123,2,NULL),(430,124,58,2,NULL),(431,158,123,2,NULL),(432,130,58,2,NULL),(433,160,123,2,NULL),(434,132,58,2,NULL),(435,162,123,2,NULL),(436,134,58,2,NULL),(437,166,123,2,NULL),(438,137,58,2,NULL),(439,169,123,2,NULL),(440,140,58,2,NULL),(441,173,123,2,NULL),(442,142,58,2,NULL),(443,176,123,2,NULL),(444,146,58,2,NULL),(445,24,123,2,NULL),(446,148,58,2,NULL),(447,26,123,2,NULL),(448,150,58,2,NULL),(449,33,123,2,NULL),(450,154,58,2,NULL),(451,36,123,2,NULL),(452,155,58,2,NULL),(453,43,123,2,NULL),(454,156,58,2,NULL),(455,47,123,2,NULL),(456,157,58,2,NULL),(457,50,123,2,NULL),(458,158,58,2,NULL),(459,52,123,2,NULL),(460,160,58,2,NULL),(461,57,123,2,NULL),(462,162,58,2,NULL),(463,60,123,2,NULL),(464,166,58,2,NULL),(465,64,123,2,NULL),(466,169,58,2,NULL),(467,66,123,2,NULL),(468,173,58,2,NULL),(469,70,123,2,NULL),(470,176,58,2,NULL),(471,74,123,2,NULL),(472,24,58,2,NULL),(473,78,123,2,NULL),(474,26,58,2,NULL),(475,82,123,2,NULL),(476,33,58,2,NULL),(477,83,123,2,NULL),(478,36,58,2,NULL),(479,93,123,2,NULL),(480,43,58,2,NULL),(481,95,123,2,NULL),(482,47,58,2,NULL),(483,99,123,2,NULL),(484,50,58,2,NULL),(485,104,123,2,NULL),(486,52,58,2,NULL),(487,109,123,2,NULL),(488,57,58,2,NULL),(489,112,123,2,NULL),(490,60,58,2,NULL),(491,115,123,2,NULL),(492,64,58,2,NULL),(493,123,123,2,NULL),(494,66,58,2,NULL),(495,135,123,2,NULL),(496,70,58,2,NULL),(497,149,123,2,NULL),(498,74,58,2,NULL),(499,153,123,2,NULL),(500,78,58,2,NULL),(501,46,125,2,NULL),(502,82,58,2,NULL),(503,86,125,2,NULL),(504,83,58,2,NULL),(505,87,125,2,NULL),(506,93,58,2,NULL),(507,100,125,2,NULL),(508,95,58,2,NULL),(509,103,125,2,NULL),(510,99,58,2,NULL),(511,114,125,2,NULL),(512,104,58,2,NULL),(513,118,125,2,NULL),(514,109,58,2,NULL),(515,120,125,2,NULL),(516,112,58,2,NULL),(517,124,125,2,NULL),(518,115,58,2,NULL),(519,130,125,2,NULL),(520,123,58,2,NULL),(521,132,125,2,NULL),(522,135,58,2,NULL),(523,134,125,2,NULL),(524,149,58,2,NULL),(525,137,125,2,NULL),(526,153,58,2,NULL),(527,140,125,2,NULL),(528,46,59,2,NULL),(529,142,125,2,NULL),(530,86,59,2,NULL),(531,146,125,2,NULL),(532,87,59,2,NULL),(533,148,125,2,NULL),(534,100,59,2,NULL),(535,150,125,2,NULL),(536,103,59,2,NULL),(537,154,125,2,NULL),(538,114,59,2,NULL),(539,155,125,2,NULL),(540,118,59,2,NULL),(541,156,125,2,NULL),(542,120,59,2,NULL),(543,157,125,2,NULL),(544,124,59,2,NULL),(545,158,125,2,NULL),(546,130,59,2,NULL),(547,160,125,2,NULL),(548,132,59,2,NULL),(549,162,125,2,NULL),(550,134,59,2,NULL),(551,166,125,2,NULL),(552,137,59,2,NULL),(553,169,125,2,NULL),(554,140,59,2,NULL),(555,173,125,2,NULL),(556,142,59,2,NULL),(557,176,125,2,NULL),(558,146,59,2,NULL),(559,24,125,2,NULL),(560,148,59,2,NULL),(561,26,125,2,NULL),(562,150,59,2,NULL),(563,33,125,2,NULL),(564,154,59,2,NULL),(565,36,125,2,NULL),(566,155,59,2,NULL),(567,43,125,2,NULL),(568,156,59,2,NULL),(569,47,125,2,NULL),(570,157,59,2,NULL),(571,50,125,2,NULL),(572,158,59,2,NULL),(573,52,125,2,NULL),(574,160,59,2,NULL),(575,57,125,2,NULL),(576,162,59,2,NULL),(577,60,125,2,NULL),(578,166,59,2,NULL),(579,64,125,2,NULL),(580,169,59,2,NULL),(581,66,125,2,NULL),(582,173,59,2,NULL),(583,70,125,2,NULL),(584,176,59,2,NULL),(585,74,125,2,NULL),(586,24,59,2,NULL),(587,78,125,2,NULL),(588,26,59,2,NULL),(589,82,125,2,NULL),(590,33,59,2,NULL),(591,83,125,2,NULL),(592,36,59,2,NULL),(593,93,125,2,NULL),(594,43,59,2,NULL),(595,95,125,2,NULL),(596,47,59,2,NULL),(597,99,125,2,NULL),(598,50,59,2,NULL),(599,104,125,2,NULL),(600,52,59,2,NULL),(601,109,125,2,NULL),(602,57,59,2,NULL),(603,112,125,2,NULL),(604,60,59,2,NULL),(605,115,125,2,NULL),(606,64,59,2,NULL),(607,123,125,2,NULL),(608,66,59,2,NULL),(609,135,125,2,NULL),(610,70,59,2,NULL),(611,149,125,2,NULL),(612,74,59,2,NULL),(613,153,125,2,NULL),(614,78,59,2,NULL),(615,46,127,2,NULL),(616,82,59,2,NULL),(617,86,127,2,NULL),(618,83,59,2,NULL),(619,87,127,2,NULL),(620,93,59,2,NULL),(621,100,127,2,NULL),(622,95,59,2,NULL),(623,103,127,2,NULL),(624,99,59,2,NULL),(625,114,127,2,NULL),(626,104,59,2,NULL),(627,118,127,2,NULL),(628,109,59,2,NULL),(629,120,127,2,NULL),(630,112,59,2,NULL),(631,124,127,2,NULL),(632,115,59,2,NULL),(633,130,127,2,NULL),(634,123,59,2,NULL),(635,132,127,2,NULL),(636,135,59,2,NULL),(637,134,127,2,NULL),(638,149,59,2,NULL),(639,137,127,2,NULL),(640,153,59,2,NULL),(641,140,127,2,NULL),(642,46,60,2,NULL),(643,142,127,2,NULL),(644,86,60,2,NULL),(645,146,127,2,NULL),(646,87,60,2,NULL),(647,148,127,2,NULL),(648,100,60,2,NULL),(649,150,127,2,NULL),(650,103,60,2,NULL),(651,154,127,2,NULL),(652,114,60,2,NULL),(653,155,127,2,NULL),(654,118,60,2,NULL),(655,156,127,2,NULL),(656,120,60,2,NULL),(657,157,127,2,NULL),(658,124,60,2,NULL),(659,158,127,2,NULL),(660,130,60,2,NULL),(661,160,127,2,NULL),(662,132,60,2,NULL),(663,162,127,2,NULL),(664,134,60,2,NULL),(665,166,127,2,NULL),(666,137,60,2,NULL),(667,169,127,2,NULL),(668,140,60,2,NULL),(669,173,127,2,NULL),(670,142,60,2,NULL),(671,176,127,2,NULL),(672,146,60,2,NULL),(673,24,127,2,NULL),(674,148,60,2,NULL),(675,46,3,2,NULL),(676,26,127,2,NULL),(677,150,60,2,NULL),(678,86,3,2,NULL),(679,33,127,2,NULL),(680,154,60,2,NULL),(681,87,3,2,NULL),(682,36,127,2,NULL),(683,155,60,2,NULL),(684,100,3,2,NULL),(685,43,127,2,NULL),(686,156,60,2,NULL),(687,47,127,2,NULL),(688,103,3,2,NULL),(689,157,60,2,NULL),(690,50,127,2,NULL),(691,114,3,2,NULL),(692,158,60,2,NULL),(693,52,127,2,NULL),(694,118,3,2,NULL),(695,160,60,2,NULL),(696,57,127,2,NULL),(697,120,3,2,NULL),(698,162,60,2,NULL),(699,60,127,2,NULL),(700,124,3,2,NULL),(701,166,60,2,NULL),(702,64,127,2,NULL),(703,130,3,2,NULL),(704,169,60,2,NULL),(705,66,127,2,NULL),(706,132,3,2,NULL),(707,173,60,2,NULL),(708,70,127,2,NULL),(709,134,3,2,NULL),(710,176,60,2,NULL),(711,74,127,2,NULL),(712,137,3,2,NULL),(713,24,60,2,NULL),(714,78,127,2,NULL),(715,140,3,2,NULL),(716,26,60,2,NULL),(717,82,127,2,NULL),(718,142,3,2,NULL),(719,33,60,2,NULL),(720,83,127,2,NULL),(721,146,3,2,NULL),(722,36,60,2,NULL),(723,93,127,2,NULL),(724,148,3,2,NULL),(725,43,60,2,NULL),(726,95,127,2,NULL),(727,150,3,2,NULL),(728,47,60,2,NULL),(729,99,127,2,NULL),(730,154,3,2,NULL),(731,50,60,2,NULL),(732,155,3,2,NULL),(733,104,127,2,NULL),(734,52,60,2,NULL),(735,109,127,2,NULL),(736,156,3,2,NULL),(737,57,60,2,NULL),(738,46,14,2,NULL),(739,112,127,2,NULL),(740,157,3,2,NULL),(741,60,60,2,NULL),(742,86,14,2,NULL),(743,115,127,2,NULL),(744,158,3,2,NULL),(745,64,60,2,NULL),(746,87,14,2,NULL),(747,123,127,2,NULL),(748,66,60,2,NULL),(749,100,14,2,NULL),(750,160,3,2,NULL),(751,135,127,2,NULL),(752,70,60,2,NULL),(753,162,3,2,NULL),(754,103,14,2,NULL),(755,149,127,2,NULL),(756,74,60,2,NULL),(757,166,3,2,NULL),(758,114,14,2,NULL),(759,153,127,2,NULL),(760,78,60,2,NULL),(761,169,3,2,NULL),(762,118,14,2,NULL),(763,46,128,2,NULL),(764,82,60,2,NULL),(765,173,3,2,NULL),(766,120,14,2,NULL),(767,86,128,2,NULL),(768,83,60,2,NULL),(769,176,3,2,NULL),(770,124,14,2,NULL),(771,87,128,2,NULL),(772,93,60,2,NULL),(773,24,3,2,NULL),(774,130,14,2,NULL),(775,100,128,2,NULL),(776,95,60,2,NULL),(777,26,3,2,NULL),(778,132,14,2,NULL),(779,103,128,2,NULL),(780,99,60,2,NULL),(781,33,3,2,NULL),(782,134,14,2,NULL),(783,114,128,2,NULL),(784,104,60,2,NULL),(785,36,3,2,NULL),(786,137,14,2,NULL),(787,118,128,2,NULL),(788,109,60,2,NULL),(789,43,3,2,NULL),(790,140,14,2,NULL),(791,120,128,2,NULL),(792,112,60,2,NULL),(793,47,3,2,NULL),(794,142,14,2,NULL),(795,124,128,2,NULL),(796,115,60,2,NULL),(797,50,3,2,NULL),(798,146,14,2,NULL),(799,130,128,2,NULL),(800,123,60,2,NULL),(801,52,3,2,NULL),(802,148,14,2,NULL),(803,132,128,2,NULL),(804,135,60,2,NULL),(805,57,3,2,NULL),(806,150,14,2,NULL),(807,134,128,2,NULL),(808,149,60,2,NULL),(809,60,3,2,NULL),(810,154,14,2,NULL),(811,137,128,2,NULL),(812,153,60,2,NULL),(813,64,3,2,NULL),(814,155,14,2,NULL),(815,140,128,2,NULL),(816,46,62,2,NULL),(817,66,3,2,NULL),(818,156,14,2,NULL),(819,142,128,2,NULL),(820,86,62,2,NULL),(821,70,3,2,NULL),(822,157,14,2,NULL),(823,146,128,2,NULL),(824,87,62,2,NULL),(825,74,3,2,NULL),(826,158,14,2,NULL),(827,148,128,2,NULL),(828,100,62,2,NULL),(829,78,3,2,NULL),(830,160,14,2,NULL),(831,150,128,2,NULL),(832,103,62,2,NULL),(833,82,3,2,NULL),(834,162,14,2,NULL),(835,154,128,2,NULL),(836,114,62,2,NULL),(837,83,3,2,NULL),(838,166,14,2,NULL),(839,155,128,2,NULL),(840,118,62,2,NULL),(841,93,3,2,NULL),(842,169,14,2,NULL),(843,156,128,2,NULL),(844,120,62,2,NULL),(845,95,3,2,NULL),(846,173,14,2,NULL),(847,157,128,2,NULL),(848,124,62,2,NULL),(849,99,3,2,NULL),(850,176,14,2,NULL),(851,158,128,2,NULL),(852,130,62,2,NULL),(853,104,3,2,NULL),(854,24,14,2,NULL),(855,160,128,2,NULL),(856,132,62,2,NULL),(857,109,3,2,NULL),(858,26,14,2,NULL),(859,162,128,2,NULL),(860,134,62,2,NULL),(861,112,3,2,NULL),(862,33,14,2,NULL),(863,166,128,2,NULL),(864,137,62,2,NULL),(865,115,3,2,NULL),(866,36,14,2,NULL),(867,169,128,2,NULL),(868,140,62,2,NULL),(869,123,3,2,NULL),(870,43,14,2,NULL),(871,173,128,2,NULL),(872,142,62,2,NULL),(873,135,3,2,NULL),(874,47,14,2,NULL),(875,176,128,2,NULL),(876,146,62,2,NULL),(877,149,3,2,NULL),(878,50,14,2,NULL),(879,24,128,2,NULL),(880,148,62,2,NULL),(881,153,3,2,NULL),(882,52,14,2,NULL),(883,26,128,2,NULL),(884,150,62,2,NULL),(885,46,4,2,NULL),(886,57,14,2,NULL),(887,33,128,2,NULL),(888,154,62,2,NULL),(889,86,4,2,NULL),(890,60,14,2,NULL),(891,36,128,2,NULL),(892,155,62,2,NULL),(893,87,4,2,NULL),(894,64,14,2,NULL),(895,43,128,2,NULL),(896,156,62,2,NULL),(897,100,4,2,NULL),(898,66,14,2,NULL),(899,47,128,2,NULL),(900,157,62,2,NULL),(901,103,4,2,NULL),(902,70,14,2,NULL),(903,50,128,2,NULL),(904,158,62,2,NULL),(905,114,4,2,NULL),(906,74,14,2,NULL),(907,52,128,2,NULL),(908,160,62,2,NULL),(909,118,4,2,NULL),(910,78,14,2,NULL),(911,57,128,2,NULL),(912,162,62,2,NULL),(913,120,4,2,NULL),(914,82,14,2,NULL),(915,60,128,2,NULL),(916,166,62,2,NULL),(917,124,4,2,NULL),(918,83,14,2,NULL),(919,64,128,2,NULL),(920,169,62,2,NULL),(921,130,4,2,NULL),(922,93,14,2,NULL),(923,66,128,2,NULL),(924,173,62,2,NULL),(925,132,4,2,NULL),(926,95,14,2,NULL),(927,70,128,2,NULL),(928,176,62,2,NULL),(929,134,4,2,NULL),(930,99,14,2,NULL),(931,74,128,2,NULL),(932,24,62,2,NULL),(933,137,4,2,NULL),(934,104,14,2,NULL),(935,78,128,2,NULL),(936,26,62,2,NULL),(937,140,4,2,NULL),(938,109,14,2,NULL),(939,82,128,2,NULL),(940,33,62,2,NULL),(941,142,4,2,NULL),(942,112,14,2,NULL),(943,83,128,2,NULL),(944,36,62,2,NULL),(945,146,4,2,NULL),(946,115,14,2,NULL),(947,93,128,2,NULL),(948,43,62,2,NULL),(949,123,14,2,NULL),(950,148,4,2,NULL),(951,95,128,2,NULL),(952,47,62,2,NULL),(953,150,4,2,NULL),(954,135,14,2,NULL),(955,99,128,2,NULL),(956,50,62,2,NULL),(957,154,4,2,NULL),(958,149,14,2,NULL),(959,104,128,2,NULL),(960,52,62,2,NULL),(961,155,4,2,NULL),(962,153,14,2,NULL),(963,109,128,2,NULL),(964,57,62,2,NULL),(965,156,4,2,NULL),(966,46,18,2,NULL),(967,112,128,2,NULL),(968,60,62,2,NULL),(969,86,16,2,NULL),(970,157,4,2,NULL),(971,115,128,2,NULL),(972,158,4,2,NULL),(973,64,62,2,NULL),(974,87,16,2,NULL),(975,123,128,2,NULL),(976,66,62,2,NULL),(977,100,16,2,NULL),(978,160,4,2,NULL),(979,135,128,2,NULL),(980,70,62,2,NULL),(981,103,16,2,NULL),(982,162,4,2,NULL),(983,149,128,2,NULL),(984,74,62,2,NULL),(985,114,16,2,NULL),(986,166,4,2,NULL),(987,153,128,2,NULL),(988,78,62,2,NULL),(989,118,16,2,NULL),(990,169,4,2,NULL),(991,46,130,2,NULL),(992,82,62,2,NULL),(993,173,4,2,NULL),(994,120,16,2,NULL),(995,86,130,2,NULL),(996,83,62,2,NULL),(997,124,16,2,NULL),(998,176,4,2,NULL),(999,87,130,2,NULL),(1000,93,62,2,NULL),(1001,24,4,2,NULL),(1002,130,16,2,NULL),(1003,100,130,2,NULL),(1004,95,62,2,NULL),(1005,132,16,2,NULL),(1006,26,4,2,NULL),(1007,103,130,2,NULL),(1008,99,62,2,NULL),(1009,134,16,2,NULL),(1010,33,4,2,NULL),(1011,114,130,2,NULL),(1012,104,62,2,NULL),(1013,137,16,2,NULL),(1014,36,4,2,NULL),(1015,118,130,2,NULL),(1016,109,62,2,NULL),(1017,140,16,2,NULL),(1018,43,4,2,NULL),(1019,120,130,2,NULL),(1020,112,62,2,NULL),(1021,142,16,2,NULL),(1022,47,4,2,NULL),(1023,124,130,2,NULL),(1024,115,62,2,NULL),(1025,146,16,2,NULL),(1026,50,4,2,NULL),(1027,130,130,2,NULL),(1028,123,62,2,NULL),(1029,148,16,2,NULL),(1030,52,4,2,NULL),(1031,132,130,2,NULL),(1032,135,62,2,NULL),(1033,150,16,2,NULL),(1034,57,4,2,NULL),(1035,134,130,2,NULL),(1036,149,62,2,NULL),(1037,154,16,2,NULL),(1038,60,4,2,NULL),(1039,137,130,2,NULL),(1040,153,62,2,NULL),(1041,155,16,2,NULL),(1042,64,4,2,NULL),(1043,140,130,2,NULL),(1044,46,63,2,NULL),(1045,156,16,2,NULL),(1046,66,4,2,NULL),(1047,142,130,2,NULL),(1048,86,63,2,NULL),(1049,157,16,2,NULL),(1050,70,4,2,NULL),(1051,146,130,2,NULL),(1052,87,63,2,NULL),(1053,158,16,2,NULL),(1054,74,4,2,NULL),(1055,148,130,2,NULL),(1056,100,63,2,NULL),(1057,160,16,2,NULL),(1058,78,4,2,NULL),(1059,150,130,2,NULL),(1060,103,63,2,NULL),(1061,162,16,2,NULL),(1062,82,4,2,NULL),(1063,154,130,2,NULL),(1064,114,63,2,NULL),(1065,166,16,2,NULL),(1066,83,4,2,NULL),(1067,155,130,2,NULL),(1068,118,63,2,NULL),(1069,169,16,2,NULL),(1070,93,4,2,NULL),(1071,156,130,2,NULL),(1072,120,63,2,NULL),(1073,173,16,2,NULL),(1074,95,4,2,NULL),(1075,157,130,2,NULL),(1076,124,63,2,NULL),(1077,99,4,2,NULL),(1078,176,16,2,NULL),(1079,158,130,2,NULL),(1080,130,63,2,NULL),(1081,46,15,2,NULL),(1082,104,4,2,NULL),(1083,160,130,2,NULL),(1084,132,63,2,NULL),(1085,109,4,2,NULL),(1086,46,17,2,NULL),(1087,162,130,2,NULL),(1088,24,16,2,NULL),(1089,134,63,2,NULL),(1090,112,4,2,NULL),(1091,166,130,2,NULL),(1092,137,63,2,NULL),(1093,26,16,2,NULL),(1094,115,4,2,NULL),(1095,169,130,2,NULL),(1096,140,63,2,NULL),(1097,33,16,2,NULL),(1098,123,4,2,NULL),(1099,173,130,2,NULL),(1100,142,63,2,NULL),(1101,36,16,2,NULL),(1102,135,4,2,NULL),(1103,176,130,2,NULL),(1104,146,63,2,NULL),(1105,43,16,2,NULL),(1106,149,4,2,NULL),(1107,24,130,2,NULL),(1108,148,63,2,NULL),(1109,47,16,2,NULL),(1110,153,4,2,NULL),(1111,26,130,2,NULL),(1112,150,63,2,NULL),(1113,50,16,2,NULL),(1114,33,130,2,NULL),(1115,154,63,2,NULL),(1116,52,16,2,NULL),(1117,36,130,2,NULL),(1118,155,63,2,NULL),(1119,57,16,2,NULL),(1120,43,130,2,NULL),(1121,156,63,2,NULL),(1122,60,16,2,NULL),(1123,47,130,2,NULL),(1124,64,16,2,NULL),(1125,157,63,2,NULL),(1126,50,130,2,NULL),(1127,158,63,2,NULL),(1128,66,16,2,NULL),(1129,52,130,2,NULL),(1130,160,63,2,NULL),(1131,70,16,2,NULL),(1132,57,130,2,NULL),(1133,162,63,2,NULL),(1134,74,16,2,NULL),(1135,60,130,2,NULL),(1136,166,63,2,NULL),(1137,78,16,2,NULL),(1138,64,130,2,NULL),(1139,169,63,2,NULL),(1140,82,16,2,NULL),(1141,66,130,2,NULL),(1142,173,63,2,NULL),(1143,83,16,2,NULL),(1144,70,130,2,NULL),(1145,176,63,2,NULL),(1146,93,16,2,NULL),(1147,74,130,2,NULL),(1148,24,63,2,NULL),(1149,95,16,2,NULL),(1150,78,130,2,NULL),(1151,26,63,2,NULL),(1152,99,16,2,NULL),(1153,82,130,2,NULL),(1154,33,63,2,NULL),(1155,104,16,2,NULL),(1156,83,130,2,NULL),(1157,36,63,2,NULL),(1158,109,16,2,NULL),(1159,93,130,2,NULL),(1160,43,63,2,NULL),(1161,112,16,2,NULL),(1162,95,130,2,NULL),(1163,47,63,2,NULL),(1164,115,16,2,NULL),(1165,99,130,2,NULL),(1166,50,63,2,NULL),(1167,123,16,2,NULL),(1168,104,130,2,NULL),(1169,52,63,2,NULL),(1170,135,16,2,NULL),(1171,109,130,2,NULL),(1172,57,63,2,NULL),(1173,149,16,2,NULL),(1174,112,130,2,NULL),(1175,60,63,2,NULL),(1176,153,16,2,NULL),(1177,115,130,2,NULL),(1178,64,63,2,NULL),(1179,123,130,2,NULL),(1180,46,65,2,NULL),(1181,66,63,2,NULL),(1182,135,130,2,NULL),(1183,46,67,2,NULL),(1184,70,63,2,NULL),(1185,149,130,2,NULL),(1186,46,131,2,NULL),(1187,74,63,2,NULL),(1188,153,130,2,NULL),(1189,86,18,2,NULL),(1190,78,63,2,NULL),(1191,87,18,2,NULL),(1192,86,131,2,NULL),(1193,82,63,2,NULL),(1194,87,131,2,NULL),(1195,100,18,2,NULL),(1196,83,63,2,NULL),(1197,100,131,2,NULL),(1198,103,18,2,NULL),(1199,93,63,2,NULL),(1200,103,131,2,NULL),(1201,114,18,2,NULL),(1202,95,63,2,NULL),(1203,114,131,2,NULL),(1204,118,18,2,NULL),(1205,99,63,2,NULL),(1206,118,131,2,NULL),(1207,120,18,2,NULL),(1208,104,63,2,NULL),(1209,120,131,2,NULL),(1210,124,18,2,NULL),(1211,109,63,2,NULL),(1212,124,131,2,NULL),(1213,130,18,2,NULL),(1214,112,63,2,NULL),(1215,130,131,2,NULL),(1216,132,18,2,NULL),(1217,115,63,2,NULL),(1218,134,18,2,NULL),(1219,132,131,2,NULL),(1220,123,63,2,NULL),(1221,134,131,2,NULL),(1222,137,18,2,NULL),(1223,135,63,2,NULL),(1224,137,131,2,NULL),(1225,140,18,2,NULL),(1226,149,63,2,NULL),(1227,140,131,2,NULL),(1228,142,18,2,NULL),(1229,153,63,2,NULL),(1230,142,131,2,NULL),(1231,146,18,2,NULL),(1232,86,65,2,NULL),(1233,146,131,2,NULL),(1234,148,18,2,NULL),(1235,87,65,2,NULL),(1236,148,131,2,NULL),(1237,150,18,2,NULL),(1238,100,65,2,NULL),(1239,150,131,2,NULL),(1240,154,18,2,NULL),(1241,103,65,2,NULL),(1242,154,131,2,NULL),(1243,155,18,2,NULL),(1244,114,65,2,NULL),(1245,155,131,2,NULL),(1246,156,18,2,NULL),(1247,118,65,2,NULL),(1248,156,131,2,NULL),(1249,157,18,2,NULL),(1250,120,65,2,NULL),(1251,157,131,2,NULL),(1252,158,18,2,NULL),(1253,124,65,2,NULL),(1254,158,131,2,NULL),(1255,160,18,2,NULL),(1256,130,65,2,NULL),(1257,160,131,2,NULL),(1258,162,18,2,NULL),(1259,132,65,2,NULL),(1260,162,131,2,NULL),(1261,166,18,2,NULL),(1262,134,65,2,NULL),(1263,166,131,2,NULL),(1264,169,18,2,NULL),(1265,137,65,2,NULL),(1266,169,131,2,NULL),(1267,173,18,2,NULL),(1268,140,65,2,NULL),(1269,173,131,2,NULL),(1270,176,18,2,NULL),(1271,142,65,2,NULL),(1272,176,131,2,NULL),(1273,24,18,2,NULL),(1274,146,65,2,NULL),(1275,24,131,2,NULL),(1276,26,18,2,NULL),(1277,33,18,2,NULL),(1278,26,131,2,NULL),(1279,148,65,2,NULL),(1280,36,18,2,NULL),(1281,33,131,2,NULL),(1282,150,65,2,NULL),(1283,43,18,2,NULL),(1284,154,65,2,NULL),(1285,36,131,2,NULL),(1286,47,18,2,NULL),(1287,43,131,2,NULL),(1288,155,65,2,NULL),(1289,50,18,2,NULL),(1290,47,131,2,NULL),(1291,156,65,2,NULL),(1292,52,18,2,NULL),(1293,50,131,2,NULL),(1294,157,65,2,NULL),(1295,57,18,2,NULL),(1296,52,131,2,NULL),(1297,158,65,2,NULL),(1298,60,18,2,NULL),(1299,57,131,2,NULL),(1300,160,65,2,NULL),(1301,64,18,2,NULL),(1302,60,131,2,NULL),(1303,162,65,2,NULL),(1304,66,18,2,NULL),(1305,64,131,2,NULL),(1306,166,65,2,NULL),(1307,70,18,2,NULL),(1308,169,65,2,NULL),(1309,66,131,2,NULL),(1310,74,18,2,NULL),(1311,173,65,2,NULL),(1312,70,131,2,NULL),(1313,78,18,2,NULL),(1314,74,131,2,NULL),(1315,176,65,2,NULL),(1316,82,18,2,NULL),(1317,24,65,2,NULL),(1318,78,131,2,NULL),(1319,83,18,2,NULL),(1320,26,65,2,NULL),(1321,82,131,2,NULL),(1322,93,18,2,NULL),(1323,83,131,2,NULL),(1324,33,65,2,NULL),(1325,95,18,2,NULL),(1326,93,131,2,NULL),(1327,36,65,2,NULL),(1328,99,18,2,NULL),(1329,95,131,2,NULL),(1330,43,65,2,NULL),(1331,104,18,2,NULL),(1332,47,65,2,NULL),(1333,99,131,2,NULL),(1334,109,18,2,NULL),(1335,104,131,2,NULL),(1336,50,65,2,NULL),(1337,112,18,2,NULL),(1338,109,131,2,NULL),(1339,52,65,2,NULL),(1340,115,18,2,NULL),(1341,112,131,2,NULL),(1342,57,65,2,NULL),(1343,123,18,2,NULL),(1344,115,131,2,NULL),(1345,60,65,2,NULL),(1346,135,18,2,NULL),(1347,123,131,2,NULL),(1348,64,65,2,NULL),(1349,149,18,2,NULL),(1350,66,65,2,NULL),(1351,135,131,2,NULL),(1352,153,18,2,NULL),(1353,149,131,2,NULL),(1354,70,65,2,NULL),(1355,74,65,2,NULL),(1356,153,131,2,NULL),(1357,78,65,2,NULL),(1358,82,65,2,NULL),(1359,86,15,2,NULL),(1360,83,65,2,NULL),(1361,87,15,2,NULL),(1362,93,65,2,NULL),(1363,100,15,2,NULL),(1364,95,65,2,NULL),(1365,103,15,2,NULL),(1366,99,65,2,NULL),(1367,114,15,2,NULL),(1368,104,65,2,NULL),(1369,118,15,2,NULL),(1370,109,65,2,NULL),(1371,120,15,2,NULL),(1372,112,65,2,NULL),(1373,124,15,2,NULL),(1374,115,65,2,NULL),(1375,130,15,2,NULL),(1376,123,65,2,NULL),(1377,132,15,2,NULL),(1378,135,65,2,NULL),(1379,134,15,2,NULL),(1380,149,65,2,NULL),(1381,137,15,2,NULL),(1382,153,65,2,NULL),(1383,140,15,2,NULL),(1384,86,67,2,NULL),(1385,142,15,2,NULL),(1386,87,67,2,NULL),(1387,146,15,2,NULL),(1388,100,67,2,NULL),(1389,148,15,2,NULL),(1390,103,67,2,NULL),(1391,150,15,2,NULL),(1392,114,67,2,NULL),(1393,154,15,2,NULL),(1394,118,67,2,NULL),(1395,155,15,2,NULL),(1396,120,67,2,NULL),(1397,156,15,2,NULL),(1398,124,67,2,NULL),(1399,157,15,2,NULL),(1400,130,67,2,NULL),(1401,158,15,2,NULL),(1402,132,67,2,NULL),(1403,160,15,2,NULL),(1404,134,67,2,NULL),(1405,162,15,2,NULL),(1406,137,67,2,NULL),(1407,166,15,2,NULL),(1408,140,67,2,NULL),(1409,169,15,2,NULL),(1410,142,67,2,NULL),(1411,173,15,2,NULL),(1412,146,67,2,NULL),(1413,176,15,2,NULL),(1414,148,67,2,NULL),(1415,86,17,2,NULL),(1416,150,67,2,NULL),(1417,87,17,2,NULL),(1418,154,67,2,NULL),(1419,100,17,2,NULL),(1420,155,67,2,NULL),(1421,103,17,2,NULL),(1422,156,67,2,NULL),(1423,114,17,2,NULL),(1424,157,67,2,NULL),(1425,118,17,2,NULL),(1426,158,67,2,NULL),(1427,120,17,2,NULL),(1428,160,67,2,NULL),(1429,124,17,2,NULL),(1430,162,67,2,NULL),(1431,130,17,2,NULL),(1432,166,67,2,NULL),(1433,132,17,2,NULL),(1434,169,67,2,NULL),(1435,134,17,2,NULL),(1436,173,67,2,NULL),(1437,137,17,2,NULL),(1438,176,67,2,NULL),(1439,140,17,2,NULL),(1440,24,67,2,NULL),(1441,142,17,2,NULL),(1442,26,67,2,NULL),(1443,146,17,2,NULL),(1444,33,67,2,NULL),(1445,148,17,2,NULL),(1446,36,67,2,NULL),(1447,150,17,2,NULL),(1448,43,67,2,NULL),(1449,154,17,2,NULL),(1450,47,67,2,NULL),(1451,155,17,2,NULL),(1452,50,67,2,NULL),(1453,156,17,2,NULL),(1454,52,67,2,NULL),(1455,157,17,2,NULL),(1456,57,67,2,NULL),(1457,158,17,2,NULL),(1458,60,67,2,NULL),(1459,160,17,2,NULL),(1460,64,67,2,NULL),(1461,162,17,2,NULL),(1462,66,67,2,NULL),(1463,166,17,2,NULL),(1464,70,67,2,NULL),(1465,169,17,2,NULL),(1466,74,67,2,NULL),(1467,173,17,2,NULL),(1468,24,15,2,NULL),(1469,78,67,2,NULL),(1470,176,17,2,NULL),(1471,26,15,2,NULL),(1472,82,67,2,NULL),(1473,33,15,2,NULL),(1474,83,67,2,NULL),(1475,36,15,2,NULL),(1476,93,67,2,NULL),(1477,43,15,2,NULL),(1478,95,67,2,NULL),(1479,47,15,2,NULL),(1480,99,67,2,NULL),(1481,50,15,2,NULL),(1482,104,67,2,NULL),(1483,52,15,2,NULL),(1484,109,67,2,NULL),(1485,57,15,2,NULL),(1486,112,67,2,NULL),(1487,60,15,2,NULL),(1488,115,67,2,NULL),(1489,64,15,2,NULL),(1490,123,67,2,NULL),(1491,66,15,2,NULL),(1492,135,67,2,NULL),(1493,70,15,2,NULL),(1494,149,67,2,NULL),(1495,74,15,2,NULL),(1496,153,67,2,NULL),(1497,78,15,2,NULL),(1498,82,15,2,NULL),(1499,83,15,2,NULL),(1500,93,15,2,NULL),(1501,95,15,2,NULL),(1502,99,15,2,NULL),(1503,104,15,2,NULL),(1504,109,15,2,NULL),(1505,112,15,2,NULL),(1506,115,15,2,NULL),(1507,123,15,2,NULL),(1508,135,15,2,NULL),(1509,149,15,2,NULL),(1510,153,15,2,NULL),(1511,24,17,2,NULL),(1512,26,17,2,NULL),(1513,33,17,2,NULL),(1514,36,17,2,NULL),(1515,43,17,2,NULL),(1516,47,17,2,NULL),(1517,50,17,2,NULL),(1518,52,17,2,NULL),(1519,57,17,2,NULL),(1520,60,17,2,NULL),(1521,64,17,2,NULL),(1522,66,17,2,NULL),(1523,70,17,2,NULL),(1524,74,17,2,NULL),(1525,78,17,2,NULL),(1526,82,17,2,NULL),(1527,83,17,2,NULL),(1528,93,17,2,NULL),(1529,95,17,2,NULL),(1530,99,17,2,NULL),(1531,104,17,2,NULL),(1532,109,17,2,NULL),(1533,112,17,2,NULL),(1534,115,17,2,NULL),(1535,123,17,2,NULL),(1536,135,17,2,NULL),(1537,149,17,2,NULL),(1538,153,17,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:46
