-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_763
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(20,'<INTENT>'),(11,'android.appwidget.action.APPWIDGET_UPDATE'),(17,'android.intent.action.AIRPLANE_MODE'),(8,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(9,'android.intent.action.DATE_CHANGED'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.MEDIA_BUTTON'),(15,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(13,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.TIME_SET'),(16,'android.intent.action.VIEW'),(12,'android.intent.extra.DATA_REMOVED'),(2,'android.media.action.IMAGE_CAPTURE'),(19,'android.settings.LOCATION_SOURCE_SETTINGS'),(22,'com/android/vending/licensing/ILicensingService'),(6,'iits.service.AutoAnswerIntentService'),(5,'iits.service.ResetService'),(3,'iits.service.SpyooService');
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
INSERT INTO `Applications` VALUES (1,'com.sivartech.spyphone',18),(2,'com.sivartech.spyphone',30),(3,'iits.spyoo',1),(4,'com.sivartech.SpyPhoneLite',60),(5,'com.sivartech.spyphone',58),(6,'com.sivartech.SpyPhoneLite',61);
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
INSERT INTO `CategoryStrings` VALUES (4,'<INTENT>'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sivartech.spyphone.a_main'),(2,1,'com.sivartech.spyphone.a_audio'),(3,1,'com.sivartech.spyphone.a_video'),(4,1,'com.sivartech.spyphone.a_settings'),(5,1,'com.sivartech.spyphone.a_gallery'),(6,2,'com.sivartech.spyphone.a_camera'),(7,2,'com.sivartech.spyphone.a_audio'),(8,2,'com.sivartech.spyphone.a_video'),(9,2,'com.sivartech.spyphone.a_settings'),(10,2,'com.sivartech.spyphone.a_gallery'),(11,4,'com.sivartech.SpyPhoneLite.a_camera'),(12,3,'iits.spyoo.Program'),(13,3,'iits.spyoo.Program'),(14,5,'com.sivartech.spyphone.LicenseCheck'),(15,3,'iits.spyoo.Login'),(16,3,'iits.spyoo.Login'),(17,6,'com.sivartech.SpyPhoneLite.a_camera'),(18,4,'com.sivartech.SpyPhoneLite.a_audio'),(19,3,'iits.spyoo.Setting'),(20,3,'iits.spyoo.Setting'),(21,4,'com.sivartech.SpyPhoneLite.a_video'),(22,3,'iits.spyoo.AutoRun'),(23,3,'iits.spyoo.AutoRun'),(24,6,'com.sivartech.SpyPhoneLite.a_audio'),(25,4,'com.sivartech.SpyPhoneLite.a_videoFroyo'),(26,3,'iits.spyoo.About'),(27,3,'iits.spyoo.About'),(28,6,'com.sivartech.SpyPhoneLite.a_video'),(29,4,'com.sivartech.SpyPhoneBase.a_audio'),(30,3,'iits.spyoo.AutoAnswerScreen'),(31,3,'iits.spyoo.AutoAnswerScreen'),(32,6,'com.sivartech.SpyPhoneLite.a_videoFroyo'),(33,4,'com.sivartech.SpyPhoneBase.a_camera'),(34,3,'iits.service.SpyooService'),(35,3,'iits.service.SpyooService'),(36,5,'com.sivartech.spyphone.a_camera'),(37,6,'com.sivartech.SpyPhoneBase.a_audio'),(38,4,'com.sivartech.SpyPhoneBase.a_videoFroyo'),(39,5,'com.sivartech.spyphone.a_audio'),(40,4,'com.sivartech.SpyPhoneBase.a_video'),(41,6,'com.sivartech.SpyPhoneBase.a_camera'),(42,5,'com.sivartech.spyphone.a_video'),(43,3,'iits.service.ResetService'),(44,4,'com.sivartech.SpyPhoneBase.Preferences'),(45,6,'com.sivartech.SpyPhoneBase.a_videoFroyo'),(46,5,'com.sivartech.spyphone.a_videoFroyo'),(47,4,'com.google.ads.AdActivity'),(48,6,'com.sivartech.SpyPhoneBase.a_video'),(49,5,'com.sivartech.SpyPhoneBase.a_audio'),(50,6,'com.sivartech.SpyPhoneBase.Preferences'),(51,3,'iits.service.AutoAnswerIntentService'),(52,5,'com.sivartech.SpyPhoneBase.a_camera'),(53,6,'com.google.ads.AdActivity'),(54,5,'com.sivartech.SpyPhoneBase.Preferences'),(55,1,'com.sivartech.spyphone.a_gallery$2'),(56,5,'com.sivartech.SpyPhoneBase.a_video'),(57,3,'iits.receiver.AutoRunReceiver'),(58,5,'com.sivartech.SpyPhoneBase.a_videoFroyo'),(59,5,'com.sivartech.spyphone.SpyPhoneService'),(60,5,'com.sivartech.SpyPhoneBase.SpyPhoneService'),(61,3,'iits.receiver.DateTimeReceiver'),(62,5,'com.sivartech.spyphone.SpyPhoneWidget'),(63,3,'iits.receiver.LoginReceiver'),(64,5,'com.sivartech.SpyPhoneBase.SpyPhoneWidget'),(65,3,'iits.receiver.AutoAnswerReceiver'),(66,1,'com.sivartech.spyphone.a_main$ImageSaver'),(67,2,'com.sivartech.spyphone.a_gallery$2'),(68,6,'com.sivartech.SpyPhoneBase.a_video$3'),(69,4,'com.sivartech.SpyPhoneBase.Preferences$5'),(70,3,'iits.code.dao.SMS_History_DAO'),(71,6,'com.sivartech.SpyPhoneLib.UpgradeReminder$1'),(72,3,'iits.code.dao.Call_History_DAO'),(73,6,'com.sivartech.SpyPhoneLib.AppRater$1'),(74,4,'com.sivartech.SpyPhoneLib.Services.RecordHQVideo'),(75,4,'com.sivartech.SpyPhoneLib.Services.RecordAudio'),(76,6,'com.sivartech.SpyPhoneLib.Services.RecordHQVideo'),(77,6,'com.sivartech.SpyPhoneLib.Services.RecordAudio'),(78,6,'com.sivartech.SpyPhoneBase.Preferences$9'),(79,5,'com.android.vending.licensing.LicenseChecker'),(80,4,'com.sivartech.SpyPhoneBase.Preferences$9'),(81,5,'com.sivartech.SpyPhoneLib.Services.RecordHQVideo'),(82,4,'com.sivartech.SpyPhoneLib.UpgradeReminder$1'),(83,4,'com.sivartech.SpyPhoneLib.AppRater$1'),(84,5,'com.sivartech.SpyPhoneLib.Services.RecordAudio'),(85,5,'com.sivartech.SpyPhoneLib.Services.RecordPicture'),(86,6,'com.sivartech.SpyPhoneBase.Preferences$5'),(87,4,'com.sivartech.SpyPhoneBase.a_video$3'),(88,5,'com.sivartech.SpyPhoneLib.AppRater$1'),(89,5,'com.sivartech.SpyPhoneBase.a_video$5'),(90,5,'com.sivartech.SpyPhoneBase.Preferences$9'),(91,5,'com.sivartech.spyphone.LicenseCheck$1'),(92,5,'com.sivartech.SpyPhoneBase.Preferences$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,64,'state'),(2,62,'android.intent.extra.PHONE_NUMBER'),(3,53,'action'),(4,64,'incoming_number'),(5,53,'com.google.ads.AdOpener'),(6,53,'params'),(7,61,'appWidgetId'),(8,63,'appWidgetId'),(9,48,'action'),(10,48,'params'),(11,48,'com.google.ads.AdOpener'),(12,61,'msg'),(13,63,'msg');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,12,'a',1,NULL,NULL),(12,11,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'s',1,NULL,NULL),(35,34,'s',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,43,'s',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'r',1,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'s',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',0,NULL,NULL),(64,65,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,5),(4,4,2),(5,5,2),(6,6,1),(7,7,2),(8,8,3),(9,9,7),(10,10,2),(11,11,6),(12,12,7),(13,13,3),(14,14,6),(15,15,3),(16,16,7),(17,17,3),(18,18,6),(19,19,3),(20,20,6),(21,21,2),(22,22,7),(23,23,1),(24,24,8),(25,25,3),(26,26,8),(27,27,1),(28,28,2),(29,29,7),(30,30,1),(31,31,8),(32,32,9),(33,33,8),(34,34,6),(35,35,8),(36,36,10),(37,37,62),(38,38,62),(39,39,64),(40,40,30),(41,41,51),(42,42,19),(43,43,19),(44,44,22),(45,45,56),(46,46,34),(47,47,29),(48,47,47),(49,48,26),(50,49,47),(51,49,29),(52,50,45),(53,51,50),(54,52,19),(55,53,43),(56,54,47),(57,54,29),(58,55,34),(59,56,17),(60,56,40),(61,57,15),(62,58,34),(63,59,24),(64,59,37),(65,60,51),(66,61,50),(67,62,34),(68,63,37),(69,63,24),(70,64,19),(71,65,28),(72,65,18),(73,66,17),(74,66,40),(75,67,34),(76,68,38),(77,68,25),(78,69,64),(79,70,25),(80,70,38),(81,71,37),(82,71,24),(83,72,30),(84,73,28),(85,73,18),(86,74,32),(87,74,44),(88,75,33),(89,75,12),(90,76,15),(91,77,21),(92,77,41),(93,78,24),(94,78,37),(95,79,15),(96,80,43),(97,81,32),(98,81,44),(99,82,60),(100,83,18),(101,83,28),(102,84,36),(103,84,52),(104,85,24),(105,85,37),(106,86,48),(107,88,49),(108,87,17),(109,87,40),(110,89,50),(111,90,36),(112,90,52),(113,91,14),(114,92,43),(115,93,54),(116,94,44),(117,94,32),(118,95,57),(119,96,50),(120,97,38),(121,97,25),(122,98,59),(123,98,57),(124,98,58),(125,98,46),(126,99,44),(127,99,32),(128,100,43),(129,101,49),(130,102,44),(131,102,32),(132,103,41),(133,103,21),(134,104,55),(135,105,17),(136,105,40),(137,106,36),(138,106,52),(139,107,33),(140,107,12),(141,108,50),(142,109,14),(143,110,18),(144,110,28),(145,111,47),(146,111,29),(147,112,57),(148,113,43),(149,114,17),(150,114,40),(151,115,42),(152,115,55),(153,116,33),(154,116,12),(155,117,24),(156,117,37),(157,118,40),(158,118,17),(159,119,39),(160,119,59),(161,119,58),(162,119,49),(163,120,53),(164,121,43),(165,122,54),(166,123,43),(167,124,58),(168,124,57),(169,124,59),(170,124,46),(171,125,25),(172,125,38),(173,126,59),(174,127,50),(175,128,21),(176,128,41),(177,129,57),(178,130,12),(179,130,33),(180,131,42),(181,131,55),(182,132,52),(183,132,36),(184,133,12),(185,133,33),(186,134,55),(187,135,18),(188,135,28),(189,136,55),(190,137,33),(191,137,12),(192,138,28),(193,138,18),(194,139,36),(195,139,52),(196,140,47),(197,140,29),(198,141,25),(199,141,38),(200,142,50),(201,143,49),(202,144,29),(203,144,47),(204,145,41),(205,145,21),(206,146,54),(207,147,21),(208,147,41),(209,148,55),(210,149,41),(211,149,21),(212,150,49),(213,150,59),(214,150,58),(215,150,39),(216,151,54),(217,152,49),(218,153,54),(219,154,14),(220,155,59),(221,156,54),(222,157,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.sivartech.spyphone.a_main: void onClick(android.view.View)>',44,'a',NULL),(2,1,'<com.sivartech.spyphone.a_main: void onClick(android.view.View)>',29,'a',NULL),(3,55,'<com.sivartech.spyphone.a_gallery$2: boolean onLongClick(android.view.View)>',20,'a',NULL),(4,2,'<com.sivartech.spyphone.a_audio: void stopRecording()>',39,'p',NULL),(5,2,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',52,'a',NULL),(6,66,'<com.sivartech.spyphone.a_main$ImageSaver: java.lang.Void doInBackground(byte[][])>',37,'p',NULL),(7,2,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',40,'a',NULL),(8,3,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',40,'a',NULL),(9,7,'<com.sivartech.spyphone.a_audio: void stopRecording()>',39,'p',NULL),(10,2,'<com.sivartech.spyphone.a_audio: void stopRecording()>',41,'r',NULL),(11,6,'<com.sivartech.spyphone.a_camera: void SaveImage(byte[])>',35,'p',NULL),(12,7,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',20,'a',NULL),(13,3,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',28,'a',NULL),(14,6,'<com.sivartech.spyphone.a_camera: void onClick(android.view.View)>',20,'a',NULL),(15,3,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',52,'a',NULL),(16,7,'<com.sivartech.spyphone.a_audio: void stopRecording()>',41,'r',NULL),(17,3,'<com.sivartech.spyphone.a_video: void stopRecording()>',37,'r',NULL),(18,6,'<com.sivartech.spyphone.a_camera: void onClick(android.view.View)>',27,'a',NULL),(19,3,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',16,'a',NULL),(20,6,'<com.sivartech.spyphone.a_camera: void onClick(android.view.View)>',13,'a',NULL),(21,2,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',28,'a',NULL),(22,7,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',12,'a',NULL),(23,1,'<com.sivartech.spyphone.a_main: void onClick(android.view.View)>',55,'a',NULL),(24,8,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',24,'a',NULL),(25,3,'<com.sivartech.spyphone.a_video: void stopRecording()>',35,'p',NULL),(26,8,'<com.sivartech.spyphone.a_video: void registerVideo()>',28,'r',NULL),(27,1,'<com.sivartech.spyphone.a_main: void onClick(android.view.View)>',14,'a',NULL),(28,2,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',16,'a',NULL),(29,7,'<com.sivartech.spyphone.a_audio: void onClick(android.view.View)>',28,'a',NULL),(30,66,'<com.sivartech.spyphone.a_main$ImageSaver: java.lang.Void doInBackground(byte[][])>',41,'r',NULL),(31,8,'<com.sivartech.spyphone.a_video: void registerVideo()>',26,'p',NULL),(32,9,'<com.sivartech.spyphone.a_settings: void onClick(android.view.View)>',11,'a',NULL),(33,8,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',16,'a',NULL),(34,6,'<com.sivartech.spyphone.a_camera: void SaveImage(byte[])>',37,'r',NULL),(35,8,'<com.sivartech.spyphone.a_video: void onClick(android.view.View)>',32,'a',NULL),(36,67,'<com.sivartech.spyphone.a_gallery$2: boolean onLongClick(android.view.View)>',20,'a',NULL),(37,63,'<iits.receiver.LoginReceiver: void onReceive(android.content.Context,android.content.Intent)>',64,'a',NULL),(38,63,'<iits.receiver.LoginReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'a',NULL),(39,65,'<iits.receiver.AutoAnswerReceiver: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(40,30,'<iits.spyoo.AutoAnswerScreen: void setAirplaneMode(android.content.Context,boolean)>',10,'r',NULL),(41,51,'<iits.service.AutoAnswerIntentService: void answerPhoneHeadsethook(android.content.Context)>',7,'r',NULL),(42,19,'<iits.spyoo.Setting: void restartServer()>',6,'s',NULL),(43,19,'<iits.spyoo.Setting: boolean onOptionsItemSelected(android.view.MenuItem)>',31,'a',NULL),(44,22,'<iits.spyoo.AutoRun: void onCreate(android.os.Bundle)>',15,'s',NULL),(45,57,'<iits.receiver.AutoRunReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'a',NULL),(46,34,'<iits.service.SpyooService: void startSMS()>',13,'p',NULL),(47,68,'<com.sivartech.SpyPhoneBase.a_video$3: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,26,'<iits.spyoo.About: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(49,48,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',27,'p',NULL),(50,43,'<iits.service.ResetService: void onCreate()>',4,'s',NULL),(51,50,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',29,'a',NULL),(52,19,'<iits.spyoo.Setting: void showGpsOptions()>',3,'a',NULL),(53,69,'<com.sivartech.SpyPhoneBase.Preferences$5: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(54,48,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',29,'r',NULL),(55,70,'<iits.code.dao.SMS_History_DAO: iits.code.dto.SMS_DTO getLastSMS(android.content.ContentResolver)>',3,'p',NULL),(56,71,'<com.sivartech.SpyPhoneLib.UpgradeReminder$1: void onClick(android.view.View)>',11,'a',NULL),(57,15,'<iits.spyoo.Login: void clickAboutButton()>',4,'a',NULL),(58,34,'<iits.service.SpyooService: void startURL()>',13,'p',NULL),(59,37,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',11,'a',NULL),(60,51,'<iits.service.AutoAnswerIntentService: void answerPhoneHeadsethook(android.content.Context)>',13,'r',NULL),(61,50,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',15,'a',NULL),(62,72,'<iits.code.dao.Call_History_DAO: iits.code.dto.Call_DTO getLastCall(android.content.ContentResolver)>',3,'p',NULL),(63,37,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',58,'a',NULL),(64,19,'<iits.spyoo.Setting: void showLoginForm()>',5,'a',NULL),(65,29,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',37,'a',NULL),(66,73,'<com.sivartech.SpyPhoneLib.AppRater$1: void onClick(android.view.View)>',11,'a',NULL),(67,34,'<iits.service.SpyooService: void startCall()>',13,'p',NULL),(68,74,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',31,'p',NULL),(69,65,'<iits.receiver.AutoAnswerReceiver: void onReceive(android.content.Context,android.content.Intent)>',56,'a',NULL),(70,74,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',37,'r',NULL),(71,37,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',37,'a',NULL),(72,30,'<iits.spyoo.AutoAnswerScreen: void onPause()>',7,'a',NULL),(73,75,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',42,'p',NULL),(74,76,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',37,'r',NULL),(75,33,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',24,'a',NULL),(76,15,'<iits.spyoo.Login: void clickSettingButton()>',4,'a',NULL),(77,40,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',33,'a',NULL),(78,77,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',49,'r',NULL),(79,15,'<iits.spyoo.Login: void init()>',42,'s',NULL),(80,44,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',24,'a',NULL),(81,45,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',27,'a',NULL),(82,61,'<iits.receiver.DateTimeReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'a',NULL),(83,75,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',49,'r',NULL),(84,52,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',49,'a',NULL),(85,37,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',30,'a',NULL),(86,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(87,41,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',20,'a',NULL),(88,49,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',63,'a',NULL),(89,78,'<com.sivartech.SpyPhoneBase.Preferences$9: boolean onPreferenceClick(android.preference.Preference)>',13,'a',NULL),(90,52,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',38,'a',NULL),(91,79,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(92,80,'<com.sivartech.SpyPhoneBase.Preferences$9: boolean onPreferenceClick(android.preference.Preference)>',13,'a',NULL),(93,54,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',25,'a',NULL),(94,45,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',12,'a',NULL),(95,58,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',30,'a',NULL),(96,50,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',24,'a',NULL),(97,38,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',29,'a',NULL),(98,81,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',32,'p',NULL),(99,76,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',31,'p',NULL),(100,44,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',34,'a',NULL),(101,49,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',12,'a',NULL),(102,45,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',39,'a',NULL),(103,40,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',19,'a',NULL),(104,56,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',32,'a',NULL),(105,41,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',34,'a',NULL),(106,52,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',23,'a',NULL),(107,82,'<com.sivartech.SpyPhoneLib.UpgradeReminder$1: void onClick(android.view.View)>',11,'a',NULL),(108,50,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',8,'a',NULL),(109,14,'<com.sivartech.spyphone.LicenseCheck: void startMainActivity()>',3,'a',NULL),(110,29,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',44,'a',NULL),(111,48,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',29,'a',NULL),(112,58,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',43,'a',NULL),(113,44,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',8,'a',NULL),(114,41,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',44,'a',NULL),(115,56,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',30,'r',NULL),(116,83,'<com.sivartech.SpyPhoneLib.AppRater$1: void onClick(android.view.View)>',11,'a',NULL),(117,77,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',42,'p',NULL),(118,41,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',27,'a',NULL),(119,84,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',50,'r',NULL),(120,53,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(121,44,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',15,'a',NULL),(122,54,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',30,'a',NULL),(123,44,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',29,'a',NULL),(124,81,'<com.sivartech.SpyPhoneLib.Services.RecordHQVideo: void registerVideo()>',38,'r',NULL),(125,38,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',18,'a',NULL),(126,85,'<com.sivartech.SpyPhoneLib.Services.RecordPicture: void SaveImage(byte[])>',59,'p',NULL),(127,86,'<com.sivartech.SpyPhoneBase.Preferences$5: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(128,87,'<com.sivartech.SpyPhoneBase.a_video$3: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(129,58,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',13,'a',NULL),(130,33,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',44,'a',NULL),(131,56,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',28,'p',NULL),(132,52,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',30,'a',NULL),(133,33,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',31,'a',NULL),(134,56,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',46,'a',NULL),(135,29,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',20,'a',NULL),(136,56,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',12,'a',NULL),(137,33,'<com.sivartech.SpyPhoneBase.a_camera: void onClick(android.view.View)>',36,'a',NULL),(138,29,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',61,'a',NULL),(139,88,'<com.sivartech.SpyPhoneLib.AppRater$1: void onClick(android.view.View)>',11,'a',NULL),(140,48,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',11,'a',NULL),(141,38,'<com.sivartech.SpyPhoneBase.a_videoFroyo: void onClick(android.view.View)>',39,'a',NULL),(142,50,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',34,'a',NULL),(143,49,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',33,'a',NULL),(144,48,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',42,'a',NULL),(145,40,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',29,'r',NULL),(146,54,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',8,'a',NULL),(147,40,'<com.sivartech.SpyPhoneBase.a_video: void onClick(android.view.View)>',44,'a',NULL),(148,89,'<com.sivartech.SpyPhoneBase.a_video$5: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(149,40,'<com.sivartech.SpyPhoneBase.a_video: void registerVideo()>',27,'p',NULL),(150,84,'<com.sivartech.SpyPhoneLib.Services.RecordAudio: void stopRecording()>',43,'p',NULL),(151,54,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',35,'a',NULL),(152,49,'<com.sivartech.SpyPhoneBase.a_audio: void onClick(android.view.View)>',40,'a',NULL),(153,90,'<com.sivartech.SpyPhoneBase.Preferences$9: boolean onPreferenceClick(android.preference.Preference)>',13,'a',NULL),(154,91,'<com.sivartech.spyphone.LicenseCheck$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(155,85,'<com.sivartech.SpyPhoneLib.Services.RecordPicture: void SaveImage(byte[])>',66,'r',NULL),(156,92,'<com.sivartech.SpyPhoneBase.Preferences$5: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(157,54,'<com.sivartech.SpyPhoneBase.Preferences: void onBackPressed()>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,7),(2,4,7),(3,5,7),(4,6,7),(5,7,7),(6,8,7),(7,9,7),(8,10,7),(9,14,15),(10,19,15),(11,20,15),(12,28,15),(13,32,15),(14,33,16),(15,35,15),(16,37,7),(17,38,7),(18,39,7),(19,40,7),(20,41,7),(21,42,7),(22,43,7),(23,44,7),(24,48,17),(25,49,18),(26,58,19),(27,59,7),(28,60,15),(29,61,7),(30,62,7),(31,63,16),(32,65,7),(33,66,7),(34,68,7),(35,69,18),(36,70,7),(37,72,7),(38,76,16),(39,77,16),(40,79,15),(41,81,20),(42,82,15),(43,86,15),(44,91,15),(45,94,16),(46,97,21),(47,98,16),(48,99,21),(49,101,16),(50,102,16),(51,104,16),(52,103,22),(53,105,16),(54,108,16),(55,119,16),(56,127,15),(57,128,16),(58,129,16),(59,131,15),(60,132,16),(61,135,21),(62,137,15),(63,138,21),(64,140,7),(65,143,7),(66,144,7),(67,146,7),(68,149,7),(69,151,7),(70,153,7),(71,156,7),(72,158,16),(73,160,16),(74,165,15),(75,171,16),(76,172,16),(77,173,16),(78,174,16),(79,175,15),(80,176,7),(81,177,7),(82,178,7),(83,179,7),(84,180,7),(85,181,7),(86,182,7),(87,183,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,81,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/sivartech/spyphone/a_audio'),(2,2,'com/sivartech/spyphone/a_video'),(3,11,'com/sivartech/spyphone/a_settings'),(4,12,'com/sivartech/spyphone/a_audio'),(5,13,'com/sivartech/spyphone/a_audio'),(6,15,'com/sivartech/spyphone/a_video'),(7,16,'com/sivartech/spyphone/a_video'),(8,17,'com/sivartech/spyphone/a_audio'),(9,18,'com/sivartech/spyphone/a_settings'),(10,21,'com/sivartech/spyphone/a_settings'),(11,22,'com/sivartech/spyphone/a_main'),(12,23,'com/sivartech/spyphone/a_video'),(13,24,'com/sivartech/spyphone/a_video'),(14,25,'com/sivartech/spyphone/a_camera'),(15,26,'com/sivartech/spyphone/a_settings'),(16,27,'com/sivartech/spyphone/a_audio'),(17,29,'com/sivartech/spyphone/a_main'),(18,30,'com/sivartech/spyphone/a_main'),(19,31,'com/sivartech/spyphone/a_settings'),(20,34,'com/sivartech/spyphone/a_camera'),(21,36,'com/sivartech/spyphone/a_settings'),(22,45,'iits/spyoo/Program'),(23,46,'iits/spyoo/Program'),(24,47,'iits/service/AutoAnswerIntentService'),(25,50,'iits/service/SpyooService'),(26,51,'iits/spyoo/Setting'),(27,52,'iits/service/SpyooService'),(28,53,'iits/spyoo/AutoRun'),(29,54,'com/sivartech/SpyPhoneBase/Preferences'),(30,55,'iits/spyoo/Login'),(31,56,'iits/service/SpyooService'),(32,57,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(33,64,'iits/spyoo/About'),(34,67,'com/sivartech/SpyPhoneBase/a_camera'),(35,71,'com/sivartech/SpyPhoneBase/a_video'),(36,73,'com/sivartech/SpyPhoneBase/Preferences'),(37,74,'iits/spyoo/Login'),(38,75,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(39,78,'iits/spyoo/AutoAnswerScreen'),(40,80,'com/sivartech/SpyPhoneBase/a_video'),(41,83,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(42,84,'iits/spyoo/Setting'),(43,85,'com/sivartech/SpyPhoneBase/a_audio'),(44,87,'iits/service/SpyooService'),(45,88,'com/sivartech/SpyPhoneBase/a_video'),(46,89,'com/sivartech/SpyPhoneBase/a_audio'),(47,90,'iits/spyoo/AutoRun'),(48,93,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(49,92,'com/sivartech/SpyPhoneBase/Preferences'),(50,96,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(51,95,'com/sivartech/SpyPhoneBase/Preferences'),(52,100,'com/sivartech/SpyPhoneBase/a_audio'),(53,106,'com/sivartech/SpyPhoneBase/a_video'),(54,107,'com/sivartech/SpyPhoneBase/a_camera'),(55,109,'com/sivartech/SpyPhoneBase/a_audio'),(56,110,'com/sivartech/SpyPhoneBase/a_video'),(57,111,'com/sivartech/SpyPhoneBase/a_audio'),(58,112,'com/sivartech/SpyPhoneBase/a_audio'),(59,113,'com/sivartech/SpyPhoneBase/a_camera'),(60,114,'com/sivartech/SpyPhoneBase/Preferences'),(61,115,'com/sivartech/SpyPhoneBase/a_camera'),(62,116,'com/sivartech/SpyPhoneBase/a_audio'),(63,117,'com/sivartech/SpyPhoneBase/a_audio'),(64,118,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(65,120,'com/sivartech/SpyPhoneBase/a_camera'),(66,121,'com/sivartech/spyphone/a_camera'),(67,122,'com/sivartech/SpyPhoneBase/a_video'),(68,123,'com/sivartech/SpyPhoneBase/a_audio'),(69,124,'com/sivartech/SpyPhoneBase/Preferences'),(70,125,'com/sivartech/SpyPhoneBase/a_camera'),(71,126,'com/sivartech/SpyPhoneBase/Preferences'),(72,130,'com/sivartech/SpyPhoneBase/a_video'),(73,133,'com/sivartech/SpyPhoneBase/a_video'),(74,134,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(75,136,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(76,139,'com/sivartech/SpyPhoneBase/a_camera'),(77,141,'com/sivartech/SpyPhoneBase/Preferences'),(78,142,'com/sivartech/SpyPhoneBase/a_camera'),(79,145,'com/sivartech/SpyPhoneBase/Preferences'),(80,147,'com/sivartech/SpyPhoneBase/a_video'),(81,148,'com/sivartech/SpyPhoneBase/a_video'),(82,150,'com/sivartech/SpyPhoneBase/Preferences'),(83,152,'com/sivartech/SpyPhoneBase/a_camera'),(84,154,'com/sivartech/SpyPhoneBase/a_camera'),(85,155,'com/sivartech/SpyPhoneBase/a_audio'),(86,157,'com/sivartech/SpyPhoneBase/Preferences'),(87,159,'com/sivartech/SpyPhoneBase/a_camera'),(88,161,'com/sivartech/SpyPhoneBase/Preferences'),(89,162,'com/sivartech/SpyPhoneBase/a_audio'),(90,163,'com/sivartech/SpyPhoneBase/a_videoFroyo'),(91,164,'com/sivartech/SpyPhoneBase/Preferences'),(92,166,'com/sivartech/SpyPhoneBase/a_camera'),(93,167,'com/sivartech/SpyPhoneBase/Preferences'),(94,168,'com/sivartech/SpyPhoneBase/Preferences'),(95,169,'com/sivartech/SpyPhoneBase/a_audio'),(96,170,'com/sivartech/SpyPhoneBase/a_video'),(97,184,'com/sivartech/SpyPhoneBase/a_video');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,5),(2,19,6),(3,20,7),(4,28,9),(5,32,11),(6,33,12),(7,35,13),(8,60,16),(9,63,18),(10,76,22),(11,77,24),(12,79,25),(13,82,27),(14,86,28),(15,91,29),(16,94,30),(17,97,31),(18,98,32),(19,99,33),(20,101,34),(21,102,35),(22,104,36),(23,105,37),(24,108,38),(25,119,41),(26,127,42),(27,128,44),(28,129,45),(29,131,46),(30,132,47),(31,135,48),(32,137,49),(33,138,50),(34,158,53),(35,160,54),(36,165,55),(37,171,58),(38,172,59),(39,173,60),(40,174,61),(41,175,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.INTENT'),(2,4,'android.intent.extra.INTENT'),(3,5,'android.intent.extra.TITLE'),(4,5,'android.intent.extra.INTENT'),(5,6,'android.intent.extra.INTENT'),(6,7,'android.intent.extra.TITLE'),(7,7,'android.intent.extra.INTENT'),(8,8,'android.intent.extra.INTENT'),(9,9,'android.intent.extra.TITLE'),(10,9,'android.intent.extra.INTENT'),(11,10,'android.intent.extra.TITLE'),(12,10,'android.intent.extra.INTENT'),(13,37,'android.intent.extra.INTENT'),(14,38,'android.intent.extra.INTENT'),(15,39,'android.intent.extra.TITLE'),(16,39,'android.intent.extra.INTENT'),(17,40,'android.intent.extra.INTENT'),(18,41,'android.intent.extra.TITLE'),(19,41,'android.intent.extra.INTENT'),(20,42,'android.intent.extra.INTENT'),(21,43,'android.intent.extra.TITLE'),(22,43,'android.intent.extra.INTENT'),(23,44,'android.intent.extra.TITLE'),(24,44,'android.intent.extra.INTENT'),(25,48,'state'),(26,49,'android.intent.extra.KEY_EVENT'),(27,59,'android.intent.extra.INTENT'),(28,61,'android.intent.extra.INTENT'),(29,62,'android.intent.extra.TITLE'),(30,62,'android.intent.extra.INTENT'),(31,65,'android.intent.extra.INTENT'),(32,66,'android.intent.extra.TITLE'),(33,66,'android.intent.extra.INTENT'),(34,68,'android.intent.extra.INTENT'),(35,69,'android.intent.extra.KEY_EVENT'),(36,70,'android.intent.extra.TITLE'),(37,70,'android.intent.extra.INTENT'),(38,72,'android.intent.extra.TITLE'),(39,72,'android.intent.extra.INTENT'),(40,73,'LastActivity'),(41,81,'<INTENT>'),(42,92,'LastActivity'),(43,95,'LastActivity'),(44,114,'LastActivity'),(45,124,'LastActivity'),(46,126,'LastActivity'),(47,140,'android.intent.extra.INTENT'),(48,143,'android.intent.extra.INTENT'),(49,145,'LastActivity'),(50,144,'android.intent.extra.TITLE'),(51,144,'android.intent.extra.INTENT'),(52,146,'android.intent.extra.INTENT'),(53,149,'android.intent.extra.TITLE'),(54,149,'android.intent.extra.INTENT'),(55,150,'LastActivity'),(56,151,'android.intent.extra.INTENT'),(57,153,'android.intent.extra.TITLE'),(58,153,'android.intent.extra.INTENT'),(59,156,'android.intent.extra.TITLE'),(60,156,'android.intent.extra.INTENT'),(61,157,'LastActivity'),(62,161,'LastActivity'),(63,164,'LastActivity'),(64,167,'LastActivity'),(65,176,'android.intent.extra.INTENT'),(66,177,'android.intent.extra.INTENT'),(67,178,'android.intent.extra.TITLE'),(68,178,'android.intent.extra.INTENT'),(69,179,'android.intent.extra.INTENT'),(70,180,'android.intent.extra.TITLE'),(71,180,'android.intent.extra.INTENT'),(72,181,'android.intent.extra.INTENT'),(73,182,'android.intent.extra.TITLE'),(74,182,'android.intent.extra.INTENT'),(75,183,'android.intent.extra.TITLE'),(76,183,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,3,1),(6,6,1),(7,7,1),(8,8,2),(9,9,3),(10,10,5),(11,11,6),(12,12,8),(13,13,10),(14,13,9),(15,14,11),(16,15,12),(17,15,13),(18,16,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,6,1),(5,7,1),(6,8,2),(7,12,3),(8,15,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,NULL,NULL,NULL,NULL,'image','jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,97,'(.*)','(.*)'),(2,135,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.sivartech.spyphone'),(2,2,'com.sivartech.spyphone'),(3,11,'com.sivartech.spyphone'),(4,12,'com.sivartech.spyphone'),(5,13,'com.sivartech.spyphone'),(6,15,'com.sivartech.spyphone'),(7,16,'com.sivartech.spyphone'),(8,17,'com.sivartech.spyphone'),(9,18,'com.sivartech.spyphone'),(10,21,'com.sivartech.spyphone'),(11,22,'com.sivartech.spyphone'),(12,23,'com.sivartech.spyphone'),(13,24,'com.sivartech.spyphone'),(14,25,'com.sivartech.spyphone'),(15,26,'com.sivartech.spyphone'),(16,27,'com.sivartech.spyphone'),(17,29,'com.sivartech.spyphone'),(18,30,'com.sivartech.spyphone'),(19,31,'com.sivartech.spyphone'),(20,34,'com.sivartech.spyphone'),(21,36,'com.sivartech.spyphone'),(22,45,'iits.spyoo'),(23,46,'iits.spyoo'),(24,47,'iits.spyoo'),(25,50,'iits.spyoo'),(26,51,'iits.spyoo'),(27,52,'iits.spyoo'),(28,53,'iits.spyoo'),(29,54,'com.sivartech.SpyPhoneLite'),(30,55,'iits.spyoo'),(31,56,'iits.spyoo'),(32,57,'com.sivartech.SpyPhoneLite'),(33,64,'iits.spyoo'),(34,67,'com.sivartech.SpyPhoneLite'),(35,71,'com.sivartech.SpyPhoneLite'),(36,73,'com.sivartech.SpyPhoneLite'),(37,74,'iits.spyoo'),(38,75,'com.sivartech.SpyPhoneLite'),(39,78,'iits.spyoo'),(40,80,'com.sivartech.SpyPhoneLite'),(41,83,'com.sivartech.SpyPhoneLite'),(42,84,'iits.spyoo'),(43,85,'com.sivartech.SpyPhoneLite'),(44,87,'iits.spyoo'),(45,88,'com.sivartech.SpyPhoneLite'),(46,89,'com.sivartech.SpyPhoneLite'),(47,90,'iits.spyoo'),(48,93,'com.sivartech.SpyPhoneLite'),(49,92,'com.sivartech.spyphone'),(50,96,'com.sivartech.SpyPhoneLite'),(51,95,'com.sivartech.spyphone'),(52,100,'com.sivartech.spyphone'),(53,106,'com.sivartech.spyphone'),(54,107,'com.sivartech.SpyPhoneLite'),(55,109,'com.sivartech.spyphone'),(56,110,'com.sivartech.SpyPhoneLite'),(57,111,'com.sivartech.SpyPhoneLite'),(58,112,'com.sivartech.SpyPhoneLite'),(59,113,'com.sivartech.spyphone'),(60,114,'com.sivartech.SpyPhoneLite'),(61,115,'com.sivartech.SpyPhoneLite'),(62,116,'com.sivartech.spyphone'),(63,117,'com.sivartech.SpyPhoneLite'),(64,118,'com.sivartech.spyphone'),(65,120,'com.sivartech.SpyPhoneLite'),(66,121,'com.sivartech.spyphone'),(67,122,'com.sivartech.SpyPhoneLite'),(68,123,'com.sivartech.SpyPhoneLite'),(69,124,'com.sivartech.spyphone'),(70,125,'com.sivartech.SpyPhoneLite'),(71,126,'com.sivartech.SpyPhoneLite'),(72,130,'com.sivartech.SpyPhoneLite'),(73,133,'com.sivartech.SpyPhoneLite'),(74,134,'com.sivartech.spyphone'),(75,136,'com.sivartech.SpyPhoneLite'),(76,139,'com.sivartech.SpyPhoneLite'),(77,141,'com.sivartech.SpyPhoneLite'),(78,142,'com.sivartech.spyphone'),(79,145,'com.sivartech.SpyPhoneLite'),(80,147,'com.sivartech.spyphone'),(81,148,'com.sivartech.SpyPhoneLite'),(82,150,'com.sivartech.spyphone'),(83,152,'com.sivartech.SpyPhoneLite'),(84,154,'com.sivartech.spyphone'),(85,155,'com.sivartech.SpyPhoneLite'),(86,157,'com.sivartech.SpyPhoneLite'),(87,159,'com.sivartech.SpyPhoneLite'),(88,161,'com.sivartech.SpyPhoneLite'),(89,162,'com.sivartech.SpyPhoneLite'),(90,163,'com.sivartech.spyphone'),(91,164,'com.sivartech.SpyPhoneLite'),(92,166,'com.sivartech.spyphone'),(93,167,'com.sivartech.SpyPhoneLite'),(94,168,'com.sivartech.spyphone'),(95,169,'com.sivartech.spyphone'),(96,170,'com.sivartech.spyphone'),(97,184,'com.sivartech.spyphone');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,13,0),(4,11,0),(5,12,0),(6,14,0),(7,17,0),(8,14,0),(9,34,0),(10,45,0),(11,51,0),(12,56,0),(13,60,0),(14,61,0),(15,62,0),(16,64,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
INSERT INTO `IntentPermissions` VALUES (1,41,26),(2,60,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,5,0,0),(12,7,0,0),(13,8,0,0),(14,10,1,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,15,0,0),(19,16,1,0),(20,17,1,0),(21,18,0,0),(22,19,0,0),(23,20,0,0),(24,21,0,0),(25,22,0,0),(26,23,0,0),(27,24,0,0),(28,26,1,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,1,0),(33,32,1,0),(34,33,0,0),(35,34,1,0),(36,35,0,0),(37,36,1,0),(38,36,1,0),(39,36,1,0),(40,36,1,0),(41,36,1,0),(42,36,1,0),(43,36,1,0),(44,36,1,0),(45,37,0,0),(46,38,0,0),(47,39,0,0),(48,40,1,0),(49,41,1,0),(50,42,0,0),(51,43,0,0),(52,44,0,0),(53,45,0,0),(54,47,0,0),(55,48,0,0),(56,50,0,0),(57,51,0,0),(58,52,1,0),(59,53,1,0),(60,54,1,0),(61,53,1,0),(62,53,1,0),(63,56,1,0),(64,57,0,0),(65,53,1,0),(66,53,1,0),(67,59,0,0),(68,53,1,0),(69,60,1,0),(70,53,1,0),(71,61,0,0),(72,53,1,0),(73,63,0,0),(74,64,0,0),(75,65,0,0),(76,66,1,0),(77,66,1,0),(78,69,0,0),(79,70,1,0),(80,71,0,0),(81,72,1,0),(82,74,1,0),(83,75,0,0),(84,76,0,0),(85,77,0,0),(86,78,1,0),(87,79,0,0),(88,80,0,0),(89,81,0,0),(90,82,0,0),(91,83,1,0),(92,84,0,0),(93,85,0,0),(94,86,1,0),(95,88,0,0),(96,87,0,0),(97,86,1,0),(98,89,1,0),(99,86,1,0),(100,90,0,0),(101,89,1,0),(102,92,1,0),(103,91,1,0),(104,89,1,0),(105,92,1,0),(106,93,0,0),(107,94,0,0),(108,92,1,0),(109,95,0,0),(110,96,0,0),(111,97,0,0),(112,100,0,0),(113,101,0,0),(114,102,0,0),(115,103,0,0),(116,104,0,0),(117,105,0,0),(118,106,0,0),(119,107,1,0),(120,108,0,0),(121,109,0,0),(122,110,0,0),(123,111,0,0),(124,112,0,0),(125,113,0,0),(126,114,0,0),(127,115,1,0),(128,116,1,0),(129,116,1,0),(130,118,0,0),(131,119,1,0),(132,120,1,0),(133,121,0,0),(134,122,0,0),(135,120,1,0),(136,123,0,0),(137,124,1,0),(138,120,1,0),(139,125,0,0),(140,127,1,0),(141,128,0,0),(142,129,0,0),(143,127,1,0),(144,127,1,0),(145,130,0,0),(146,127,1,0),(147,132,0,0),(148,133,0,0),(149,127,1,0),(150,134,0,0),(151,127,1,0),(152,135,0,0),(153,127,1,0),(154,136,0,0),(155,137,0,0),(156,127,1,0),(157,138,0,0),(158,139,1,0),(159,140,0,0),(160,139,1,0),(161,141,0,0),(162,142,0,0),(163,143,0,0),(164,144,0,0),(165,145,1,0),(166,146,0,0),(167,147,0,0),(168,148,0,0),(169,151,0,0),(170,152,0,0),(171,153,1,0),(172,153,1,0),(173,153,1,0),(174,154,1,0),(175,155,1,0),(176,156,1,0),(177,156,1,0),(178,156,1,0),(179,156,1,0),(180,156,1,0),(181,156,1,0),(182,156,1,0),(183,156,1,0),(184,157,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.CALL_PHONE'),(26,'android.permission.CALL_PRIVILEGED'),(1,'android.permission.CAMERA'),(16,'android.permission.DISABLE_KEYGUARD'),(6,'android.permission.GET_TASKS'),(20,'android.permission.INTERNET'),(14,'android.permission.MODIFY_AUDIO_SETTINGS'),(19,'android.permission.MODIFY_PHONE_STATE'),(7,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(4,'android.permission.RECORD_AUDIO'),(3,'android.permission.VIBRATE'),(5,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(25,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(2,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(3,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(4,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(7,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(8,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(11,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(12,NULL,NULL,'http://www.sivartech.com/spyphone/tutorial/',NULL,NULL,NULL),(13,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(14,NULL,NULL,'content://sms/',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(16,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(17,NULL,NULL,'content://sms/',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.sivartech.spyphone',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(21,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.sivartech.spyphone',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=com.sivartech.SpyPhoneLite',NULL,NULL,NULL),(25,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(26,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(27,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(28,'NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT',NULL,'NULL-CONSTANT'),(29,'NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT',NULL,'NULL-CONSTANT'),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://sivartech.com/Android/SpyPhoneLite/Tutorial',NULL,NULL,NULL),(35,NULL,NULL,'',NULL,NULL,NULL),(36,NULL,NULL,'http://sivartech.com/android/spyphone/tutorial',NULL,NULL,NULL),(37,NULL,NULL,'http://sivartech.com/Android/SpyPhoneLite/Tutorial',NULL,NULL,NULL),(38,NULL,NULL,'http://sivartech.com/android/spyphone/tutorial',NULL,NULL,NULL),(39,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(40,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=com.sivartech.spyphone',NULL,NULL,NULL),(42,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(43,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=com.sivartech.spyphone',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=com.sivartech.SpyPhoneLite',NULL,NULL,NULL),(46,'NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT',NULL,'NULL-CONSTANT'),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(52,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(53,NULL,NULL,'market://details?id=com.sivartech.spyphone',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=com.sivartech.SpyPhoneLite',NULL,NULL,NULL),(55,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(56,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(57,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'http://sivartech.com/Android/SpyPhoneLite/Tutorial',NULL,NULL,NULL),(60,NULL,NULL,'http://sivartech.com/android/spyphone/tutorial',NULL,NULL,NULL),(61,NULL,NULL,'http://market.android.com/details?id=com.sivartech.spyphone',NULL,NULL,NULL),(62,'NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT','NULL-CONSTANT',NULL,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,1),(2,6,2),(3,9,3),(4,11,4),(5,25,8),(6,31,10),(7,46,14),(8,49,15),(9,55,17),(10,58,19),(11,62,20),(12,67,21),(13,68,23),(14,73,26),(15,98,39),(16,99,40),(17,117,43),(18,126,51),(19,131,52),(20,149,56),(21,150,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,3,2),(11,3,3),(12,3,5),(13,3,6),(14,3,7),(15,3,8),(16,3,9),(17,3,10),(18,3,11),(19,3,12),(20,3,13),(21,3,14),(22,3,15),(23,3,15),(24,4,1),(25,3,17),(26,3,17),(27,4,2),(28,3,16),(29,3,16),(30,4,3),(31,3,19),(32,3,19),(33,4,4),(34,3,18),(35,3,18),(36,5,1),(37,4,20),(38,3,21),(39,3,20),(40,6,1),(41,5,2),(42,3,23),(43,6,2),(44,4,24),(45,3,22),(46,5,3),(47,6,3),(48,5,4),(49,6,4),(50,5,20),(51,6,20),(52,5,25),(53,6,24);
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

-- Dump completed on 2015-10-09  0:41:06
