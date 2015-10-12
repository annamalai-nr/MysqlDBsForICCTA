-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_542
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(17,'MB_DELIVERED_SMS_ACTION_'),(20,'MB_SENT_SMS_ACTION_'),(11,'TEST'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.DIAL'),(4,'android.intent.action.MAIN'),(12,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.NEW_OUTGOING_CALL_FROM_CALLMASTER'),(13,'android.intent.action.PHONE_STATE'),(15,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(19,'com.android.music.musicservicecommand'),(5,'nicky.service.Lyyws_Main_SERVICE'),(7,'nicky.service.Lyyws_SMS_LISTENER'),(6,'nicky.service.Sms_SERVICE'),(2,'work.service.upinfo'),(1,'work.service.xm_gps'),(9,'work.service.xm_main');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.nicky.lyyws.xmall',1),(2,'com.nicky.lyyws.asl',1),(3,'com.google.android',1),(4,'com.androidbox.sgmj4net8',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.LAUNCHER'),(1,'android.intent.category.defult');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.nicky.lyyws.xmall.MainService'),(2,1,'com.nicky.lyyws.xmall.GpsService'),(3,1,'com.nicky.lyyws.xmall.SocketService'),(4,1,'com.nicky.lyyws.xmall.XM_SmsListener'),(5,1,'com.nicky.lyyws.xmall.XM_CallListener'),(6,1,'com.nicky.lyyws.xmall.XM_CallRecordService'),(7,1,'com.nicky.lyyws.xmall.RecordService'),(8,1,'com.nicky.lyyws.xmall.BootReceiver'),(9,1,'com.nicky.lyyws.xmall.AlarmReceiver'),(10,1,'com.nicky.lyyws.xmall.MainActivity'),(11,1,'com.nicky.lyyws.xmall.XM_Setting'),(12,2,'com.nicky.lyyws.asl.Register'),(13,2,'com.nicky.lyyws.asl.SettingView'),(14,2,'com.nicky.lyyws.asl.MainService'),(15,2,'com.nicky.lyyws.asl.SmsService'),(16,2,'com.nicky.lyyws.asl.SListener'),(17,2,'com.nicky.lyyws.asl.EnvirRecordService'),(18,2,'com.nicky.lyyws.asl.GpsService'),(19,2,'com.nicky.lyyws.asl.CallListener'),(20,2,'com.nicky.lyyws.asl.BootReceiver'),(21,2,'com.nicky.lyyws.asl.SmsReceiver'),(22,3,'com.google.android.activity.FullScreenActivity'),(23,3,'com.google.android.service.MainService'),(24,3,'com.google.android.service.AlarmService'),(25,3,'com.google.android.service.SocketService'),(26,3,'com.google.android.service.GpsService'),(27,3,'com.google.android.service.CallRecordService'),(28,3,'com.google.android.service.CallLogService'),(29,3,'com.google.android.service.UploadService'),(30,3,'com.google.android.service.SmsService'),(31,3,'com.google.android.service.ContactService'),(32,3,'com.google.android.service.SmsControllerService'),(33,3,'com.google.android.service.CommandExecutorService'),(34,3,'com.google.android.service.RegisterService'),(35,1,'com.nicky.lyyws.xmall.XM_Setting$10'),(36,3,'com.google.android.service.CallsListenerService'),(37,3,'com.google.android.service.KeyguardLockService'),(38,3,'com.google.android.service.ScreenService'),(39,1,'com.nicky.lyyws.xmall.XM_Setting$11'),(40,3,'com.google.android.service.ManualLocalService'),(41,3,'com.google.android.service.SyncContactService'),(42,3,'com.google.android.receiver.BootReceiver'),(43,3,'com.google.android.receiver.AlarmReceiver'),(44,3,'com.google.android.receiver.CallRecordReceiver'),(45,1,'com.nicky.lyyws.xmall.MainActivity$2'),(46,1,'com.nicky.lyyws.xmall.MainActivity$4'),(47,3,'com.google.android.dao.ApnDao'),(48,3,'com.google.android.receiver.SmsReceiver'),(49,3,'com.google.android.receiver.ScreenReceiver'),(50,4,'com.androidbox.sgmj4net8.AppActivity'),(51,4,'com.google.ads.AdActivity'),(52,4,'net.youmi.android.AdActivity'),(53,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(54,4,'com.millennialmedia.android.VideoPlayer'),(55,4,'com.guohead.sdk.GuoheAdActivity'),(56,4,'com.network.app.SMS_Activity'),(57,4,'com.network.app.service.AppManagerService'),(58,4,'com.network.app.util.SMS_Receiver'),(59,4,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'(.*)'),(2,3,'UpInfo'),(3,21,'pdus'),(4,15,'SMS'),(5,35,'controller'),(6,42,'incoming_number'),(7,42,'(.*)'),(8,28,'recordType'),(9,27,'recordTimeLong'),(10,33,'cmd_received'),(11,27,'recordType'),(12,25,'Models'),(13,35,'isCleanLog'),(14,28,'recordFilePath'),(15,35,'end_call'),(16,34,'registerInfo'),(17,42,'android.intent.extra.PHONE_NUMBER'),(18,36,'KeyguardEnabled'),(19,25,'Senders'),(20,46,'com.google.ads.AdOpener'),(21,49,'videoAd'),(22,50,'link'),(23,48,'transitionTime'),(24,48,'overlayTitle'),(25,48,'cachedAdView'),(26,49,'videoCompleted'),(27,47,'A7D1721B9508405D8271AB82AC6D9B3C'),(28,49,'videoPosition'),(29,49,'cached'),(30,48,'overlayTransition'),(31,49,'shouldShowBottomBar'),(32,48,'shouldEnableBottomBar'),(33,49,'isCachedAd'),(34,49,'logSet'),(35,49,'adName'),(36,48,'shouldResizeOverlay'),(37,46,'params'),(38,46,'action'),(39,48,'canAccelerate'),(40,48,'shouldMakeOverlayTransparent'),(41,48,'shouldShowTitlebar'),(42,48,'shouldShowBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',1,NULL,NULL),(2,2,'s',1,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,37,'s',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,40,'s',0,NULL,NULL),(39,41,'s',0,NULL,NULL),(40,42,'r',1,NULL,NULL),(41,43,'r',0,NULL,NULL),(42,44,'r',1,NULL,NULL),(43,48,'r',1,NULL,NULL),(44,49,'r',1,NULL,NULL),(45,50,'a',1,NULL,NULL),(46,51,'a',0,NULL,NULL),(47,52,'a',0,NULL,NULL),(48,53,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,55,'a',0,NULL,NULL),(51,56,'a',0,NULL,NULL),(52,57,'s',0,NULL,NULL),(53,58,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,1),(6,6,8),(7,7,8),(8,8,1),(9,9,1),(10,10,9),(11,11,1),(12,12,2),(13,13,2),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,2),(19,19,5),(20,20,1),(21,21,10),(22,22,1),(23,23,2),(24,24,2),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,5),(30,30,1),(31,31,9),(32,32,1),(33,33,11),(34,34,1),(35,35,1),(36,36,2),(37,37,11),(38,38,1),(39,39,4),(40,40,1),(41,41,2),(42,42,1),(43,43,1),(44,44,10),(45,45,4),(46,46,1),(47,47,10),(48,48,1),(49,49,2),(50,50,5),(51,51,2),(52,52,2),(53,53,14),(54,54,1),(55,55,1),(56,56,21),(57,57,1),(58,58,16),(59,59,20),(60,60,8),(61,61,19),(62,62,4),(63,63,14),(64,64,1),(65,65,10),(66,66,9),(67,67,41),(68,68,23),(69,69,33),(70,70,33),(71,71,36),(72,72,41),(73,73,42),(74,74,30),(75,75,33),(76,76,41),(77,77,33),(78,78,23),(79,79,35),(80,80,23),(81,81,40),(82,82,42),(83,83,41),(84,84,41),(85,85,41),(86,86,40),(87,87,33),(88,88,35),(89,89,35),(90,90,23),(91,91,41),(92,92,23),(93,93,23),(94,94,33),(95,95,22),(96,96,33),(97,97,33),(98,98,29),(99,99,34),(100,100,23),(101,101,31),(102,102,42),(103,103,41),(104,104,27),(105,105,40),(106,106,28),(107,107,23),(108,108,49),(109,109,49),(110,110,49),(111,111,46),(112,112,49),(113,113,49),(114,114,49),(115,115,49),(116,116,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',121,'s',NULL),(2,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',71,'s',NULL),(3,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(4,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',137,'s',NULL),(5,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',127,'s',NULL),(6,8,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(7,8,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(8,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',109,'s',NULL),(9,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',85,'s',NULL),(10,9,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(11,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',109,'s',NULL),(12,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(13,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',101,'s',NULL),(14,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',116,'s',NULL),(15,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',96,'s',NULL),(16,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',122,'s',NULL),(17,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',115,'s',NULL),(18,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',66,'s',NULL),(19,5,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(20,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',106,'s',NULL),(21,10,'<com.nicky.lyyws.xmall.MainActivity: void onCreate(android.os.Bundle)>',35,'s',NULL),(22,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',130,'s',NULL),(23,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(24,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(25,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',93,'s',NULL),(26,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',128,'s',NULL),(27,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',116,'s',NULL),(28,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',102,'s',NULL),(29,5,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(30,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',88,'s',NULL),(31,9,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(32,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',103,'s',NULL),(33,35,'<com.nicky.lyyws.xmall.XM_Setting$10: void onClick(android.view.View)>',41,'a',NULL),(34,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',99,'s',NULL),(35,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',92,'s',NULL),(36,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(37,39,'<com.nicky.lyyws.xmall.XM_Setting$11: void onClick(android.view.View)>',7,'a',NULL),(38,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',100,'s',NULL),(39,4,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(40,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',74,'s',NULL),(41,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',96,'s',NULL),(42,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',82,'s',NULL),(43,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',134,'s',NULL),(44,10,'<com.nicky.lyyws.xmall.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(45,4,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(46,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',85,'s',NULL),(47,45,'<com.nicky.lyyws.xmall.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(48,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',104,'s',NULL),(49,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',66,'s',NULL),(50,5,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(51,2,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(52,2,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',96,'s',NULL),(53,14,'<com.nicky.lyyws.asl.MainService: void onStart(android.content.Intent,int)>',59,'s',NULL),(54,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',119,'s',NULL),(55,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',110,'s',NULL),(56,21,'<com.nicky.lyyws.asl.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(57,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',91,'s',NULL),(58,16,'<com.nicky.lyyws.asl.SListener: void onCreate()>',12,'p',NULL),(59,20,'<com.nicky.lyyws.asl.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(60,8,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(61,19,'<com.nicky.lyyws.asl.CallListener: void onCreate()>',12,'p',NULL),(62,4,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(63,14,'<com.nicky.lyyws.asl.MainService: void onStart(android.content.Intent,int)>',44,'a',NULL),(64,1,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',98,'s',NULL),(65,46,'<com.nicky.lyyws.xmall.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,9,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(67,43,'<com.google.android.receiver.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(68,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',36,'s',NULL),(69,33,'<com.google.android.service.CommandExecutorService: void changeMainControllNumber(java.util.List)>',23,'s',NULL),(70,33,'<com.google.android.service.CommandExecutorService: void getContact(java.util.List)>',4,'s',NULL),(71,37,'<com.google.android.service.KeyguardLockService: void startFullScreenActivity()>',5,'a',NULL),(72,43,'<com.google.android.receiver.AlarmReceiver: void runUploadService(android.content.Context)>',19,'s',NULL),(73,44,'<com.google.android.receiver.CallRecordReceiver: void cleanListenLog(android.content.Context)>',8,'s',NULL),(74,30,'<com.google.android.service.SmsService: void onCreate()>',11,'p',NULL),(75,33,'<com.google.android.service.CommandExecutorService: void changeUserPassword(java.util.List)>',28,'s',NULL),(76,47,'<com.google.android.dao.ApnDao: void enableApn()>',64,'p',NULL),(77,33,'<com.google.android.service.CommandExecutorService: void activeApp(java.util.List)>',28,'s',NULL),(78,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',62,'s',NULL),(79,36,'<com.google.android.service.CallsListenerService: void deleteCallLog()>',21,'p',NULL),(80,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',33,'s',NULL),(81,47,'<com.google.android.dao.ApnDao: java.util.List getActiveApns()>',9,'p',NULL),(82,44,'<com.google.android.receiver.CallRecordReceiver: void switchState(android.content.Context,java.lang.String)>',39,'s',NULL),(83,47,'<com.google.android.dao.ApnDao: void insertApns()>',24,'p',NULL),(84,43,'<com.google.android.receiver.AlarmReceiver: void runUploadService(android.content.Context)>',10,'s',NULL),(85,47,'<com.google.android.dao.ApnDao: void saveOrUpdate(android.content.ContentValues)>',10,'p',NULL),(86,42,'<com.google.android.receiver.BootReceiver: void startSmsService(android.content.Context)>',5,'s',NULL),(87,33,'<com.google.android.service.CommandExecutorService: void switchCallsListen(java.util.List)>',15,'s',NULL),(88,36,'<com.google.android.service.CallsListenerService: void deleteCallLog()>',9,'p',NULL),(89,36,'<com.google.android.service.CallsListenerService: void setKeyguard(boolean)>',10,'s',NULL),(90,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',48,'s',NULL),(91,47,'<com.google.android.dao.ApnDao: void saveOrUpdate(android.content.ContentValues)>',38,'p',NULL),(92,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',81,'s',NULL),(93,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',30,'s',NULL),(94,33,'<com.google.android.service.CommandExecutorService: void startPhoneListenerService(java.lang.String)>',8,'s',NULL),(95,22,'<com.google.android.activity.FullScreenActivity: void endCall()>',4,'s',NULL),(96,33,'<com.google.android.service.CommandExecutorService: void startRecListen(java.util.List)>',21,'s',NULL),(97,33,'<com.google.android.service.CommandExecutorService: void manualLocation()>',3,'s',NULL),(98,29,'<com.google.android.service.UploadService: void sendIntent(com.google.android.model.AbstractModel[],com.google.android.info.Sender[])>',10,'s',NULL),(99,34,'<com.google.android.service.RegisterService: void onStart(android.content.Intent,int)>',68,'s',NULL),(100,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',69,'s',NULL),(101,31,'<com.google.android.service.ContactService: void onCreate()>',11,'p',NULL),(102,44,'<com.google.android.receiver.CallRecordReceiver: void switchState(android.content.Context,java.lang.String)>',47,'s',NULL),(103,47,'<com.google.android.dao.ApnDao: void saveOrUpdate(android.content.ContentValues)>',26,'p',NULL),(104,27,'<com.google.android.service.CallRecordService: void startCallLogService()>',13,'s',NULL),(105,42,'<com.google.android.receiver.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(106,28,'<com.google.android.service.CallLogService: com.google.android.model.CallLogInfoModel getLastCallInfo()>',9,'p',NULL),(107,23,'<com.google.android.service.MainService: void onStart(android.content.Intent,int)>',39,'s',NULL),(108,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',180,'a',NULL),(109,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',159,'a',NULL),(110,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',228,'a',NULL),(111,51,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(112,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',217,'a',NULL),(113,59,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(114,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',236,'a',NULL),(115,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',208,'a',NULL),(116,54,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',188,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,6,9),(4,7,10),(5,12,2),(6,13,2),(7,18,2),(8,22,2),(9,23,2),(10,34,2),(11,38,2),(12,43,4),(13,45,2),(14,46,2),(15,47,2),(16,48,7),(17,51,6),(18,53,5),(19,54,9),(20,57,4),(21,82,2),(22,90,18),(23,91,18),(24,92,18),(25,93,10),(26,94,10),(27,96,19),(28,97,18),(29,98,21),(30,99,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,43,2),(2,57,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/nicky/lyyws/xmall/XM_CallListener'),(2,4,'com/nicky/lyyws/xmall/SocketService'),(3,5,'com/nicky/lyyws/xmall/XM_CallRecordService'),(4,6,'com/nicky/lyyws/xmall/MainService'),(5,7,'com/nicky/lyyws/xmall/MainService'),(6,8,'com/nicky/lyyws/xmall/XM_CallRecordService'),(7,9,'com/nicky/lyyws/xmall/SocketService'),(8,10,'com/nicky/lyyws/xmall/MainService'),(9,11,'com/nicky/lyyws/xmall/GpsService'),(10,14,'com/nicky/lyyws/xmall/GpsService'),(11,15,'com/nicky/lyyws/xmall/XM_CallListener'),(12,16,'com/nicky/lyyws/xmall/XM_SmsListener'),(13,17,'com/nicky/lyyws/xmall/XM_SmsListener'),(14,19,'com/nicky/lyyws/xmall/XM_SmsListener'),(15,20,'com/nicky/lyyws/xmall/MainService'),(16,21,'com/nicky/lyyws/xmall/SocketService'),(17,24,'com/nicky/lyyws/xmall/GpsService'),(18,25,'com/nicky/lyyws/xmall/XM_CallListener'),(19,26,'com/nicky/lyyws/xmall/XM_CallRecordService'),(20,27,'com/nicky/lyyws/xmall/XM_CallRecordService'),(21,28,'com/nicky/lyyws/xmall/XM_SmsListener'),(22,29,'com/nicky/lyyws/xmall/MainService'),(23,30,'com/nicky/lyyws/xmall/XM_CallListener'),(24,31,'com/nicky/lyyws/xmall/MainActivity'),(25,32,'com/nicky/lyyws/xmall/XM_SmsListener'),(26,33,'com/nicky/lyyws/xmall/SocketService'),(27,35,'com/nicky/lyyws/xmall/MainActivity'),(28,36,'com/nicky/lyyws/xmall/GpsService'),(29,37,'com/nicky/lyyws/xmall/SocketService'),(30,39,'com/nicky/lyyws/xmall/GpsService'),(31,40,'com/nicky/lyyws/xmall/XM_CallRecordService'),(32,41,'com/nicky/lyyws/xmall/XM_Setting'),(33,42,'com/nicky/lyyws/xmall/XM_CallListener'),(34,44,'com/nicky/lyyws/xmall/XM_SmsListener'),(35,48,'com/nicky/lyyws/asl/SListener'),(36,49,'com/nicky/lyyws/xmall/SocketService'),(37,50,'com/nicky/lyyws/xmall/XM_CallListener'),(38,52,'com/nicky/lyyws/xmall/XM_CallRecordService'),(39,53,'com/nicky/lyyws/asl/MainService'),(40,54,'com/nicky/lyyws/xmall/MainService'),(41,55,'com/nicky/lyyws/asl/SettingView'),(42,56,'com/nicky/lyyws/xmall/GpsService'),(43,58,'com/nicky/lyyws/xmall/MainService'),(44,59,'com/google/android/service/MainService'),(45,60,'com/google/android/service/SmsService'),(46,61,'com/google/android/service/RegisterService'),(47,62,'com/google/android/service/SyncContactService'),(48,63,'com/google/android/activity/FullScreenActivity'),(49,64,'com/google/android/service/UploadService'),(50,65,'com/google/android/service/CallsListenerService'),(51,66,'com/google/android/service/RegisterService'),(52,67,'com/google/android/service/RegisterService'),(53,68,'com/google/android/service/SmsService'),(54,69,'com/google/android/service/CallRecordRegisterService'),(55,70,'com/google/android/service/CallRecordService'),(56,71,'com/google/android/service/UploadService'),(57,72,'com/google/android/service/SmsControllerService'),(58,73,'com/google/android/service/CallsListenerService'),(59,74,'com/google/android/service/KeyguardLockService'),(60,75,'com/google/android/service/GpsService'),(61,76,'com/google/android/service/CallsListenerService'),(62,77,'com/google/android/service/GpsService'),(63,78,'com/google/android/service/CallsListenerService'),(64,79,'com/google/android/service/CallsListenerService'),(65,80,'com/google/android/service/CallRecordService'),(66,81,'com/google/android/service/ManualLocalService'),(67,83,'com/google/android/service/CallsListenerService'),(68,84,'com/google/android/service/ContactService'),(69,85,'com/google/android/service/CallLogService'),(70,86,'com/google/android/service/CallLogService'),(71,87,'com/google/android/service/AlarmService'),(72,88,'com/google/android/service/ContactService'),(73,89,'com/millennialmedia/android/MMAdViewOverlayActivity'),(74,95,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,89,20),(2,90,21),(3,91,22),(4,92,23),(5,93,24),(6,94,25),(7,95,26),(8,97,27),(9,98,28),(10,99,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'UpInfo'),(2,3,'UpInfo'),(3,12,'UpInfo'),(4,13,'UpInfo'),(5,18,'UpInfo'),(6,22,'UpInfo'),(7,23,'UpInfo'),(8,34,'UpInfo'),(9,38,'UpInfo'),(10,45,'UpInfo'),(11,46,'UpInfo'),(12,47,'UpInfo'),(13,51,'SMS'),(14,61,'registerInfo'),(15,65,'isCleanLog'),(16,66,'registerInfo'),(17,67,'registerInfo'),(18,73,'controller'),(19,74,'KeyguardEnabled'),(20,76,'controller'),(21,78,'controller'),(22,79,'end_call'),(23,80,'recordTimeLong'),(24,80,'recordType'),(25,82,'Senders'),(26,82,'Models'),(27,83,'controller'),(28,86,'recordTimeLong'),(29,86,'recordFilePath'),(30,86,'recordType'),(31,89,'cachedAdView'),(32,95,'cachedAdView'),(33,96,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,3),(4,6,1),(5,7,2),(6,8,3),(7,10,1),(8,11,2),(9,12,3),(10,13,4),(11,15,1),(12,16,2),(13,17,3),(14,18,5),(15,19,6),(16,20,7),(17,21,3),(18,22,8),(19,23,2),(20,24,3),(21,25,11),(22,26,12),(23,26,13),(24,26,14),(25,27,8),(26,28,16),(27,28,15),(28,29,4),(29,30,8),(30,31,17),(31,32,20);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,2),(3,5,1),(4,8,2),(5,9,1),(6,12,2),(7,13,3),(8,14,1),(9,17,2),(10,18,1),(11,21,2),(12,24,2),(13,26,4),(14,29,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,93,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.nicky.lyyws.xmall'),(2,4,'com.nicky.lyyws.xmall'),(3,5,'com.nicky.lyyws.xmall'),(4,6,'com.nicky.lyyws.xmall'),(5,7,'com.nicky.lyyws.xmall'),(6,8,'com.nicky.lyyws.xmall'),(7,9,'com.nicky.lyyws.xmall'),(8,10,'com.nicky.lyyws.xmall'),(9,11,'com.nicky.lyyws.xmall'),(10,14,'com.nicky.lyyws.xmall'),(11,15,'com.nicky.lyyws.xmall'),(12,16,'com.nicky.lyyws.xmall'),(13,17,'com.nicky.lyyws.xmall'),(14,19,'com.nicky.lyyws.xmall'),(15,20,'com.nicky.lyyws.xmall'),(16,21,'com.nicky.lyyws.xmall'),(17,24,'com.nicky.lyyws.xmall'),(18,25,'com.nicky.lyyws.xmall'),(19,26,'com.nicky.lyyws.xmall'),(20,27,'com.nicky.lyyws.xmall'),(21,28,'com.nicky.lyyws.xmall'),(22,29,'com.nicky.lyyws.xmall'),(23,30,'com.nicky.lyyws.xmall'),(24,31,'com.nicky.lyyws.xmall'),(25,32,'com.nicky.lyyws.xmall'),(26,33,'com.nicky.lyyws.xmall'),(27,35,'com.nicky.lyyws.xmall'),(28,36,'com.nicky.lyyws.xmall'),(29,37,'com.nicky.lyyws.xmall'),(30,39,'com.nicky.lyyws.xmall'),(31,40,'com.nicky.lyyws.xmall'),(32,41,'com.nicky.lyyws.xmall'),(33,42,'com.nicky.lyyws.xmall'),(34,44,'com.nicky.lyyws.xmall'),(35,48,'com.nicky.lyyws.asl'),(36,49,'com.nicky.lyyws.xmall'),(37,50,'com.nicky.lyyws.xmall'),(38,52,'com.nicky.lyyws.xmall'),(39,53,'com.nicky.lyyws.asl'),(40,54,'com.nicky.lyyws.xmall'),(41,55,'com.nicky.lyyws.asl'),(42,56,'com.nicky.lyyws.xmall'),(43,58,'com.nicky.lyyws.xmall'),(44,59,'com.google.android'),(45,60,'com.google.android'),(46,61,'com.google.android'),(47,62,'com.google.android'),(48,63,'com.google.android'),(49,64,'com.google.android'),(50,65,'com.google.android'),(51,66,'com.google.android'),(52,67,'com.google.android'),(53,68,'com.google.android'),(54,69,'com.google.android'),(55,70,'com.google.android'),(56,71,'com.google.android'),(57,72,'com.google.android'),(58,73,'com.google.android'),(59,74,'com.google.android'),(60,75,'com.google.android'),(61,76,'com.google.android'),(62,77,'com.google.android'),(63,78,'com.google.android'),(64,79,'com.google.android'),(65,80,'com.google.android'),(66,81,'com.google.android'),(67,83,'com.google.android'),(68,84,'com.google.android'),(69,85,'com.google.android'),(70,86,'com.google.android'),(71,87,'com.google.android'),(72,88,'com.google.android'),(73,89,'com.androidbox.sgmj4net8'),(74,95,'com.androidbox.sgmj4net8');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,8,0),(5,1,0),(6,2,0),(7,3,0),(8,8,0),(9,1,0),(10,2,0),(11,3,0),(12,8,0),(13,10,0),(14,1,0),(15,2,0),(16,3,0),(17,8,0),(18,14,0),(19,15,0),(20,16,0),(21,20,0),(22,21,0),(23,25,0),(24,40,0),(25,40,0),(26,42,0),(27,43,0),(28,44,0),(29,45,0),(30,53,0),(31,53,0),(32,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,1,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,20,0,0),(20,21,0,0),(21,22,0,0),(22,23,1,0),(23,24,1,0),(24,25,0,0),(25,26,0,0),(26,27,0,0),(27,28,0,0),(28,30,0,0),(29,31,0,0),(30,32,0,0),(31,33,0,0),(32,34,0,0),(33,35,0,0),(34,36,1,0),(35,37,0,0),(36,38,0,0),(37,40,0,0),(38,41,1,0),(39,42,0,0),(40,43,0,0),(41,44,0,0),(42,46,0,0),(43,47,1,0),(44,48,0,0),(45,49,1,0),(46,51,1,0),(47,52,1,0),(48,53,0,0),(49,54,0,0),(50,55,0,0),(51,56,1,0),(52,57,0,0),(53,59,0,0),(54,60,0,0),(55,63,0,0),(56,64,0,0),(57,65,1,0),(58,66,0,0),(59,67,0,0),(60,68,0,0),(61,69,0,0),(62,70,0,0),(63,71,0,0),(64,72,0,0),(65,73,0,0),(66,75,0,0),(67,77,0,0),(68,78,0,0),(69,80,0,0),(70,82,0,0),(71,84,0,0),(72,86,0,0),(73,87,0,0),(74,89,0,0),(75,90,0,0),(76,92,0,0),(77,93,0,0),(78,94,0,0),(79,95,0,0),(80,96,0,0),(81,97,0,0),(82,98,1,0),(83,99,0,0),(84,100,0,0),(85,102,0,0),(86,104,0,0),(87,105,0,0),(88,107,0,0),(89,108,0,0),(90,109,1,0),(91,110,1,0),(92,111,1,0),(93,111,1,0),(94,111,1,0),(95,112,0,0),(96,113,1,0),(97,114,1,0),(98,115,1,0),(99,116,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_COARSE_UPDATES'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(25,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(32,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.DELETE_PACKAGES'),(19,'android.permission.DEVICE_POWER'),(29,'android.permission.DISABLE_KEYGUARD'),(28,'android.permission.FORCE_STOP_PACKAGES'),(15,'android.permission.INTERNET'),(27,'android.permission.KILL_BACKGROUND_PROCESSES'),(30,'android.permission.MODIFY_PHONE_STATE'),(14,'android.permission.PERMISSION_NAME'),(2,'android.permission.PROCESS_OUTGOING_CALLS'),(7,'android.permission.READ_CONTACTS'),(31,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(20,'android.permission.RECEIVE_SMS'),(18,'android.permission.RECORD_AUDIO'),(24,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(34,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(33,'rockchip.permission.FULL_SCREEN');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(2,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/',NULL,NULL,NULL),(5,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/',NULL,NULL,NULL),(7,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(15,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(19,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,1),(2,29,2),(3,39,3),(4,45,4),(5,50,5),(6,58,6),(7,61,7),(8,62,8),(9,74,9),(10,76,10),(11,79,11),(12,81,12),(13,83,13),(14,85,14),(15,88,15),(16,91,16),(17,101,17),(18,103,18),(19,106,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,2,1),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,9),(27,2,10),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,2,19),(36,2,18),(37,2,21),(38,2,20),(39,2,22),(40,3,1),(41,3,2),(42,3,3),(43,3,4),(44,3,5),(45,3,6),(46,3,7),(47,3,8),(48,3,9),(49,3,10),(50,3,11),(51,3,12),(52,3,13),(53,3,14),(54,3,15),(55,3,17),(56,3,16),(57,3,19),(58,3,18),(59,3,21),(60,3,20),(61,3,23),(62,3,25),(63,3,24),(64,3,27),(65,3,26),(66,3,29),(67,3,28),(68,3,30),(69,4,34),(70,4,1),(71,4,32),(72,4,33),(73,4,3),(74,4,4),(75,4,5),(76,4,6),(77,4,10),(78,4,13),(79,4,15),(80,4,17),(81,4,16),(82,4,20),(83,4,25),(84,4,31);
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

-- Dump completed on 2015-10-09  0:40:08
