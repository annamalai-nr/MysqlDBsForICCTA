-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_760
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CHOOSER'),(14,'android.intent.action.DELETE'),(3,'android.intent.action.MAIN'),(1,'android.intent.action.NEW_OUTGOING_CALL'),(13,'android.intent.action.PHONE_STATE'),(15,'android.intent.action.PICK'),(8,'android.intent.action.SEND'),(9,'android.intent.action.SENDTO'),(6,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(7,'com.gone60.gone60.refresh'),(5,'com.google.android.c2dm.intent.RECEIVE'),(10,'com.google.android.c2dm.intent.REGISTER'),(4,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'org.android.system',1),(2,'com.ysler.wps.base',120),(3,'com.gone603',15),(4,'com.dreamstep.webWidget.wSpyBubble',1307913963),(5,'com.sbradio',1),(6,'com.radioadv',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.dreamstep.webWidget.wSpyBubble');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.android.system.SMSReceiver'),(2,2,'com.ysler.wps.base.Main'),(3,3,'com.gone60.gone60'),(4,3,'com.gone60.MyService'),(5,4,'com.dreamstep.webWidget.wSpyBubble.MainNavigationActivity'),(6,4,'com.dreamstep.webWidget.wSpyBubble.MessageViewer'),(7,4,'com.dreamstep.webWidget.wSpyBubble.Server.C2DMClientReceiver'),(8,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(9,2,'com.ysler.wps.base.Main$10'),(10,3,'com.gone60.gone60$DataUpdateReceiver'),(11,2,'com.ysler.wps.base.Main$9'),(12,4,'com.google.android.c2dm.C2DMessaging'),(13,4,'com.dreamstep.webWidget.wSpyBubble.Utils.BrowserDownloadListener'),(14,5,'com.sbradio.Terms'),(15,5,'com.sbradio.License'),(16,5,'com.sbradio.UpdateActivity'),(17,5,'com.sbradio.ResetService'),(18,5,'com.sbradio.SpyService'),(19,5,'com.sbradio.HeartBeatService'),(20,5,'com.sbradio.CallLogService'),(21,5,'com.sbradio.SMSLogService'),(22,5,'com.sbradio.SMSOutgoingService'),(23,5,'com.sbradio.URLTrackService'),(24,5,'com.sbradio.ContactUpload'),(25,6,'com.radioadv.Terms'),(26,5,'com.sbradio.GPSLocationService'),(27,5,'com.sbradio.PhotoUploadService'),(28,5,'com.sbradio.OfflineConnection'),(29,6,'com.radioadv.RecordingActivity'),(30,5,'com.sbradio.BasicSB'),(31,6,'com.radioadv.License'),(32,6,'com.radioadv.ObserverActivity'),(33,6,'com.radioadv.CameraActivity'),(34,6,'com.radioadv.AddEditContacts'),(35,5,'com.sbradio.SecretPinReceiver'),(36,6,'com.radioadv.SetPin'),(37,6,'com.radioadv.SettingsActivity'),(38,5,'com.sbradio.PhoneStateReceiver'),(39,6,'com.radioadv.SettingsAdvanceActivity'),(40,6,'com.radioadv.UpdateActivity'),(41,6,'com.radioadv.ResetService'),(42,6,'com.radioadv.SpyService'),(43,6,'com.radioadv.SMSLogService'),(44,6,'com.radioadv.SMSOutgoingService'),(45,6,'com.radioadv.SMSInboxService'),(46,6,'com.radioadv.URLTrackService'),(47,6,'com.radioadv.ContactUpload'),(48,6,'com.radioadv.GPSLocationService'),(49,6,'com.radioadv.CallLogService'),(50,6,'com.radioadv.PhotoUploadService'),(51,6,'com.radioadv.OfflineConnection'),(52,6,'com.radioadv.HeartBeatService'),(53,6,'com.radioadv.CalendarLogService'),(54,6,'com.radioadv.EnvironmentService'),(55,6,'com.radioadv.LivePicService'),(56,6,'com.radioadv.LiveVideoService'),(57,6,'com.radioadv.HeartBeatRecorderService'),(58,6,'com.radioadv.HeartBeatLiveService'),(59,6,'com.radioadv.InstalledAppsService'),(60,6,'com.radioadv.BasicSB'),(61,6,'com.radioadv.OutCallReceiver'),(62,6,'com.radioadv.SpyCallReceiver'),(63,5,'com.sbradio.SMSReceiver'),(64,5,'com.sbradio.Terms$1'),(65,6,'com.radioadv.CameraActivity$Preview'),(66,6,'com.radioadv.SettingsActivity$17'),(67,6,'com.radioadv.SettingsActivity$19'),(68,6,'com.radioadv.ObserverActivity$1'),(69,6,'com.radioadv.SMSReceiver'),(70,6,'com.radioadv.Terms$1'),(71,6,'com.radioadv.License$1$2'),(72,6,'com.radioadv.SettingsActivity$20$2'),(73,6,'com.radioadv.SettingsActivity$18');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'android.intent.extra.PHONE_NUMBER'),(2,1,'pdus'),(3,8,'error'),(4,8,'message'),(5,6,'url'),(6,8,'registration_id'),(7,8,'url'),(8,8,'unregistered'),(9,8,'title'),(10,6,'title'),(11,31,'android.intent.extra.PHONE_NUMBER'),(12,34,'state'),(13,58,'state'),(14,57,'android.intent.extra.PHONE_NUMBER'),(15,58,'incoming_number');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,16,NULL),(9,10,'r',1,NULL,NULL),(10,14,'a',1,NULL,NULL),(11,15,'a',0,NULL,NULL),(12,16,'a',0,NULL,NULL),(13,17,'s',0,NULL,NULL),(14,18,'s',0,NULL,NULL),(15,19,'s',0,NULL,NULL),(16,20,'s',0,NULL,NULL),(17,21,'s',0,NULL,NULL),(18,22,'s',0,NULL,NULL),(19,23,'s',0,NULL,NULL),(20,24,'s',0,NULL,NULL),(21,25,'a',1,NULL,NULL),(22,26,'s',0,NULL,NULL),(23,27,'s',0,NULL,NULL),(24,28,'s',0,NULL,NULL),(25,29,'a',0,NULL,NULL),(26,30,'r',1,NULL,NULL),(27,31,'a',0,NULL,NULL),(28,32,'a',0,NULL,NULL),(29,33,'a',0,NULL,NULL),(30,34,'a',0,NULL,NULL),(31,35,'r',1,NULL,NULL),(32,36,'a',0,NULL,NULL),(33,37,'a',0,NULL,NULL),(34,38,'r',1,NULL,NULL),(35,39,'a',0,NULL,NULL),(36,40,'a',0,NULL,NULL),(37,41,'s',0,NULL,NULL),(38,42,'s',0,NULL,NULL),(39,43,'s',0,NULL,NULL),(40,44,'s',0,NULL,NULL),(41,45,'s',0,NULL,NULL),(42,46,'s',0,NULL,NULL),(43,47,'s',0,NULL,NULL),(44,48,'s',0,NULL,NULL),(45,49,'s',0,NULL,NULL),(46,50,'s',0,NULL,NULL),(47,51,'s',0,NULL,NULL),(48,52,'s',0,NULL,NULL),(49,53,'s',0,NULL,NULL),(50,54,'s',0,NULL,NULL),(51,55,'s',0,NULL,NULL),(52,56,'s',0,NULL,NULL),(53,57,'s',0,NULL,NULL),(54,58,'s',0,NULL,NULL),(55,59,'s',0,NULL,NULL),(56,60,'r',1,NULL,NULL),(57,61,'r',1,NULL,NULL),(58,62,'r',1,NULL,NULL),(59,63,'r',1,NULL,NULL),(60,69,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,8),(8,7,5),(9,8,5),(10,9,5),(11,10,5),(12,11,14),(13,12,14),(14,13,14),(15,14,10),(16,14,12),(17,14,11),(18,15,20),(19,16,10),(20,16,11),(21,16,12),(22,17,14),(23,18,10),(24,18,11),(25,18,12),(26,19,19),(27,20,14),(28,21,20),(29,22,14),(30,23,13),(31,24,20),(32,25,14),(33,26,14),(34,27,14),(35,28,34),(36,29,14),(37,30,14),(38,31,23),(39,32,29),(40,33,38),(41,34,38),(42,35,36),(43,35,21),(44,35,35),(45,35,27),(46,35,28),(47,35,30),(48,35,33),(49,35,32),(50,36,37),(51,37,27),(52,37,21),(53,37,36),(54,37,33),(55,37,32),(56,37,35),(57,37,28),(58,37,30),(59,38,46),(60,39,38),(61,40,49),(62,41,58),(63,42,38),(64,43,38),(65,44,58),(66,45,38),(67,46,58),(68,47,49),(69,48,33),(70,49,52),(71,50,29),(72,51,58),(73,52,56),(74,53,38),(75,54,56),(76,55,38),(77,56,36),(78,56,21),(79,56,35),(80,56,33),(81,56,32),(82,56,30),(83,56,28),(84,56,27),(85,57,38),(86,58,38),(87,59,30),(88,60,43),(89,61,54),(90,62,42),(91,63,21),(92,63,36),(93,63,35),(94,63,27),(95,63,33),(96,63,32),(97,63,28),(98,63,30),(99,64,58),(100,65,28),(101,65,30),(102,65,27),(103,65,35),(104,65,21),(105,65,33),(106,65,32),(107,65,36),(108,66,38),(109,67,27),(110,67,28),(111,67,30),(112,67,32),(113,67,33),(114,67,35),(115,67,36),(116,67,21),(117,68,38),(118,69,38),(119,70,51),(120,71,38),(121,72,27),(122,72,28),(123,72,30),(124,72,32),(125,72,33),(126,72,35),(127,72,36),(128,72,21),(129,73,38),(130,74,38),(131,75,32),(132,75,33),(133,75,30),(134,75,28),(135,75,27),(136,75,36),(137,75,21),(138,75,35),(139,76,21),(140,76,36),(141,76,35),(142,76,30),(143,76,28),(144,76,27),(145,76,33),(146,76,32),(147,77,43),(148,78,27),(149,78,28),(150,78,21),(151,78,36),(152,78,35),(153,78,33),(154,78,32),(155,78,30),(156,79,38),(157,80,38),(158,81,38),(159,82,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(2,3,'<com.gone60.gone60: void onCreate(android.os.Bundle)>',41,'s',NULL),(3,9,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(4,11,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(5,2,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(6,2,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(7,12,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(8,13,'<com.dreamstep.webWidget.wSpyBubble.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(9,5,'<com.dreamstep.webWidget.wSpyBubble.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(10,13,'<com.dreamstep.webWidget.wSpyBubble.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(11,18,'<com.sbradio.SpyService: void onCreate()>',105,'s',NULL),(12,18,'<com.sbradio.SpyService: void onCreate()>',65,'s',NULL),(13,18,'<com.sbradio.SpyService: void onCreate()>',116,'s',NULL),(14,16,'<com.sbradio.UpdateActivity: void installApplication()>',21,'a',NULL),(15,24,'<com.sbradio.ContactUpload: void getContacts()>',52,'p',NULL),(16,64,'<com.sbradio.Terms$1: void onClick(android.view.View)>',7,'a',NULL),(17,18,'<com.sbradio.SpyService: void onCreate()>',174,'s',NULL),(18,16,'<com.sbradio.UpdateActivity: void unInstallApplication()>',9,'a',NULL),(19,23,'<com.sbradio.URLTrackService: void fetchURL()>',9,'p',NULL),(20,18,'<com.sbradio.SpyService: void onCreate()>',57,'s',NULL),(21,24,'<com.sbradio.ContactUpload: void getContacts()>',32,'p',NULL),(22,18,'<com.sbradio.SpyService: void onCreate()>',75,'s',NULL),(23,17,'<com.sbradio.ResetService: void onCreate()>',6,'s',NULL),(24,24,'<com.sbradio.ContactUpload: void getContacts()>',14,'p',NULL),(25,18,'<com.sbradio.SpyService: void onCreate()>',96,'s',NULL),(26,18,'<com.sbradio.SpyService: void onCreate()>',11,'s',NULL),(27,18,'<com.sbradio.SpyService: void onCreate()>',146,'s',NULL),(28,38,'<com.sbradio.PhoneStateReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'a',NULL),(29,18,'<com.sbradio.SpyService: void onCreate()>',161,'s',NULL),(30,18,'<com.sbradio.SpyService: void onCreate()>',182,'s',NULL),(31,27,'<com.sbradio.PhotoUploadService: void fetchPhoto()>',13,'p',NULL),(32,65,'<com.radioadv.CameraActivity$Preview: void surfaceCreated(android.view.SurfaceHolder)>',14,'a',NULL),(33,42,'<com.radioadv.SpyService: void onCreate()>',201,'s',NULL),(34,42,'<com.radioadv.SpyService: void onCreate()>',233,'s',NULL),(35,66,'<com.radioadv.SettingsActivity$17: void onClick(android.view.View)>',6,'a',NULL),(36,41,'<com.radioadv.ResetService: void onCreate()>',6,'s',NULL),(37,67,'<com.radioadv.SettingsActivity$19: void onClick(android.view.View)>',7,'a',NULL),(38,50,'<com.radioadv.PhotoUploadService: void fetchPhoto()>',13,'p',NULL),(39,42,'<com.radioadv.SpyService: void onCreate()>',274,'s',NULL),(40,53,'<com.radioadv.CalendarLogService: void getCalendarEvents()>',76,'p',NULL),(41,62,'<com.radioadv.SpyCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'a',NULL),(42,42,'<com.radioadv.SpyService: void onCreate()>',154,'s',NULL),(43,42,'<com.radioadv.SpyService: void onCreate()>',311,'s',NULL),(44,62,'<com.radioadv.SpyCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',44,'a',NULL),(45,42,'<com.radioadv.SpyService: void onCreate()>',194,'s',NULL),(46,62,'<com.radioadv.SpyCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',69,'a',NULL),(47,53,'<com.radioadv.CalendarLogService: void getCalendarEvents()>',17,'p',NULL),(48,37,'<com.radioadv.SettingsActivity: void onBackPressed()>',5,'a',NULL),(49,56,'<com.radioadv.LiveVideoService: void startLiveVideo(android.content.Context)>',17,'a',NULL),(50,65,'<com.radioadv.CameraActivity$Preview: void surfaceChanged(android.view.SurfaceHolder,int,int,int)>',17,'a',NULL),(51,62,'<com.radioadv.SpyCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',86,'a',NULL),(52,60,'<com.radioadv.BasicSB: void onReceive(android.content.Context,android.content.Intent)>',49,'a',NULL),(53,42,'<com.radioadv.SpyService: void onCreate()>',108,'s',NULL),(54,60,'<com.radioadv.BasicSB: void onReceive(android.content.Context,android.content.Intent)>',17,'a',NULL),(55,42,'<com.radioadv.SpyService: void onCreate()>',17,'s',NULL),(56,68,'<com.radioadv.ObserverActivity$1: void onClick(android.view.View)>',60,'a',NULL),(57,42,'<com.radioadv.SpyService: void onCreate()>',174,'s',NULL),(58,42,'<com.radioadv.SpyService: void onCreate()>',336,'s',NULL),(59,34,'<com.radioadv.AddEditContacts: void selectContact(android.net.Uri)>',3,'p',0),(60,47,'<com.radioadv.ContactUpload: void getContacts()>',51,'p',NULL),(61,58,'<com.radioadv.HeartBeatLiveService: void getValue()>',29,'a',NULL),(62,46,'<com.radioadv.URLTrackService: void fetchURL()>',7,'p',NULL),(63,70,'<com.radioadv.Terms$1: void onClick(android.view.View)>',17,'a',NULL),(64,62,'<com.radioadv.SpyCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',187,'a',NULL),(65,40,'<com.radioadv.UpdateActivity: void unInstallApplication()>',9,'a',NULL),(66,42,'<com.radioadv.SpyService: void onCreate()>',10,'s',NULL),(67,71,'<com.radioadv.License$1$2: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(68,42,'<com.radioadv.SpyService: void onCreate()>',296,'s',NULL),(69,42,'<com.radioadv.SpyService: void onCreate()>',163,'s',NULL),(70,55,'<com.radioadv.LivePicService: void startLivePic()>',10,'a',NULL),(71,42,'<com.radioadv.SpyService: void onCreate()>',122,'s',NULL),(72,40,'<com.radioadv.UpdateActivity: void installApplication()>',21,'a',NULL),(73,42,'<com.radioadv.SpyService: void onCreate()>',262,'s',NULL),(74,42,'<com.radioadv.SpyService: void onCreate()>',284,'s',NULL),(75,72,'<com.radioadv.SettingsActivity$20$2: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(76,34,'<com.radioadv.AddEditContacts: void launchPickContact()>',4,'a',NULL),(77,47,'<com.radioadv.ContactUpload: void getContacts()>',71,'p',NULL),(78,73,'<com.radioadv.SettingsActivity$18: void onClick(android.view.View)>',7,'a',NULL),(79,42,'<com.radioadv.SpyService: void onCreate()>',114,'s',NULL),(80,42,'<com.radioadv.SpyService: void onCreate()>',140,'s',NULL),(81,42,'<com.radioadv.SpyService: void onCreate()>',252,'s',NULL),(82,47,'<com.radioadv.ContactUpload: void getContacts()>',21,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,3,6),(3,4,6),(4,5,8),(5,6,9),(6,7,10),(7,8,6),(8,9,11),(9,10,11),(10,11,11),(11,12,11),(12,13,11),(13,14,11),(14,15,11),(15,16,11),(16,17,6),(17,21,6),(18,24,14),(19,34,3),(20,47,3),(21,49,3),(22,60,3),(23,61,14),(24,68,6),(25,71,3),(26,72,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,34,4),(2,47,4),(3,49,4),(4,60,4),(5,71,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/gone60/MyService'),(2,18,'com/sbradio/URLTrackService'),(3,19,'com/sbradio/CallLogService'),(4,20,'com/sbradio/ContactUpload'),(5,22,'com/sbradio/License'),(6,23,'com/sbradio/ContactUpload'),(7,25,'com/sbradio/OfflineConnection'),(8,26,'com/sbradio/SMSOutgoingService'),(9,27,'com/sbradio/SpyService'),(10,28,'com/sbradio/GPSLocationService'),(11,29,'com/sbradio/HeartBeatService'),(12,30,'com/sbradio/SMSLogService'),(13,31,'com/sbradio/UpdateActivity'),(14,32,'com/sbradio/PhotoUploadService'),(15,33,'com/sbradio/PhotoUploadService'),(16,35,'com/radioadv/InstalledAppsService'),(17,36,'com/radioadv/SMSLogService'),(18,37,'com/radioadv/SetPin'),(19,38,'com/radioadv/SpyService'),(20,39,'com/radioadv/AddEditContacts'),(21,40,'com/radioadv/ContactUpload'),(22,41,'com/radioadv/ObserverActivity'),(23,42,'com/radioadv/GPSLocationService'),(24,43,'com/radioadv/LivePicService'),(25,44,'com/radioadv/Terms'),(26,45,'com/radioadv/LiveVideoService'),(27,46,'com/radioadv/SettingsActivity'),(28,48,'com/radioadv/RecordingActivity'),(29,50,'com/radioadv/UpdateActivity'),(30,51,'com/radioadv/ObserverActivity'),(31,52,'com/radioadv/OfflineConnection'),(32,53,'com/radioadv/Terms'),(33,54,'com/radioadv/HeartBeatRecorderService'),(34,55,'com/radioadv/SettingsActivity'),(35,56,'com/radioadv/ContactUpload'),(36,57,'com/radioadv/EnvironmentService'),(37,58,'com/radioadv/CameraActivity'),(38,59,'com/radioadv/License'),(39,62,'com/radioadv/HeartBeatService'),(40,63,'com/radioadv/ObserverActivity'),(41,64,'com/radioadv/PhotoUploadService'),(42,65,'com/radioadv/URLTrackService'),(43,66,'com/radioadv/CameraActivity'),(44,67,'com/radioadv/CallLogService'),(45,69,'com/radioadv/PhotoUploadService'),(46,70,'com/radioadv/CalendarLogService'),(47,73,'com/radioadv/SettingsAdvanceActivity'),(48,74,'com/radioadv/SMSInboxService'),(49,75,'com/radioadv/SMSOutgoingService'),(50,76,'com/radioadv/CalendarLogService');
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
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,6,3),(4,8,4),(5,17,5),(6,21,6),(7,24,8),(8,61,18),(9,68,19),(10,72,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,5,'android.intent.extra.TEXT'),(3,5,'android.intent.extra.SUBJECT'),(4,6,'android.intent.extra.SUBJECT'),(5,7,'sender'),(6,7,'app'),(7,9,'android.intent.extra.INTENT'),(8,10,'android.intent.extra.INTENT'),(9,11,'android.intent.extra.TITLE'),(10,11,'android.intent.extra.INTENT'),(11,12,'android.intent.extra.INTENT'),(12,13,'android.intent.extra.TITLE'),(13,13,'android.intent.extra.INTENT'),(14,14,'android.intent.extra.INTENT'),(15,15,'android.intent.extra.TITLE'),(16,15,'android.intent.extra.INTENT'),(17,16,'android.intent.extra.TITLE'),(18,16,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,3),(6,4,3),(7,5,3),(8,6,4),(9,7,5),(10,8,7),(11,9,3),(12,10,6),(13,11,12),(14,12,1),(15,13,13),(16,14,12),(17,15,1),(18,16,13),(19,17,2),(20,18,2),(21,19,2),(22,20,2),(23,21,2),(24,22,2),(25,23,2),(26,24,2);
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
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,5,2),(5,6,3),(6,7,3),(7,9,1),(8,10,1),(9,11,4),(10,12,2),(11,13,4),(12,14,4),(13,15,2),(14,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android-dir','mms-sms'),(2,5,'message','rfc882'),(3,21,'application','vnd.android.package-archive'),(4,68,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.gone603'),(2,18,'com.sbradio'),(3,19,'com.sbradio'),(4,20,'com.sbradio'),(5,22,'com.sbradio'),(6,23,'com.sbradio'),(7,25,'com.sbradio'),(8,26,'com.sbradio'),(9,27,'com.sbradio'),(10,28,'com.sbradio'),(11,29,'com.sbradio'),(12,30,'com.sbradio'),(13,31,'com.sbradio'),(14,32,'com.sbradio'),(15,33,'com.sbradio'),(16,35,'com.radioadv'),(17,36,'com.radioadv'),(18,37,'com.radioadv'),(19,38,'com.radioadv'),(20,39,'com.radioadv'),(21,40,'com.radioadv'),(22,41,'com.radioadv'),(23,42,'com.radioadv'),(24,43,'com.radioadv'),(25,44,'com.radioadv'),(26,45,'com.radioadv'),(27,46,'com.radioadv'),(28,48,'com.radioadv'),(29,50,'com.radioadv'),(30,51,'com.radioadv'),(31,52,'com.radioadv'),(32,53,'com.radioadv'),(33,54,'com.radioadv'),(34,55,'com.radioadv'),(35,56,'com.radioadv'),(36,57,'com.radioadv'),(37,58,'com.radioadv'),(38,59,'com.radioadv'),(39,62,'com.radioadv'),(40,63,'com.radioadv'),(41,64,'com.radioadv'),(42,65,'com.radioadv'),(43,66,'com.radioadv'),(44,67,'com.radioadv'),(45,69,'com.radioadv'),(46,70,'com.radioadv'),(47,73,'com.radioadv'),(48,74,'com.radioadv'),(49,75,'com.radioadv'),(50,76,'com.radioadv');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,3,0),(5,5,0),(6,8,0),(7,8,0),(8,9,0),(9,10,0),(10,21,0),(11,26,0),(12,31,0),(13,34,0),(14,56,0),(15,57,0),(16,58,0),(17,34,0),(18,26,0),(19,31,0),(20,59,0),(21,60,0),(22,58,0),(23,57,0),(24,56,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,9,1,0),(11,9,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,10,1,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,14,1,0),(22,16,0,0),(23,17,0,0),(24,18,1,0),(25,20,0,0),(26,22,0,0),(27,23,0,0),(28,25,0,0),(29,26,0,0),(30,27,0,0),(31,28,0,0),(32,29,0,0),(33,30,0,0),(34,32,1,0),(35,33,0,0),(36,34,0,0),(37,35,0,0),(38,36,0,0),(39,37,0,0),(40,39,0,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,48,1,0),(48,49,0,0),(49,50,1,0),(50,51,0,0),(51,52,0,0),(52,53,0,0),(53,54,0,0),(54,55,0,0),(55,56,0,0),(56,57,0,0),(57,58,0,0),(58,61,0,0),(59,63,0,0),(60,64,1,0),(61,65,1,0),(62,66,0,0),(63,67,0,0),(64,68,0,0),(65,69,0,0),(66,70,0,0),(67,71,0,0),(68,72,1,0),(69,73,0,0),(70,74,0,0),(71,75,1,0),(72,76,1,0),(73,78,0,0),(74,79,0,0),(75,80,0,0),(76,81,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,1,2,NULL),(2,9,1,2,NULL),(3,10,1,2,NULL),(4,11,1,2,NULL),(5,12,1,2,NULL),(6,13,1,2,NULL),(7,14,1,2,NULL),(8,15,1,2,NULL),(9,16,1,2,NULL),(10,24,1,2,NULL),(11,47,1,2,NULL),(12,61,1,2,NULL),(13,60,1,2,NULL),(14,2,4,2,NULL),(15,6,3,2,NULL),(16,9,3,2,NULL),(17,10,3,2,NULL),(18,11,3,2,NULL),(19,12,3,2,NULL),(20,13,3,2,NULL),(21,14,3,2,NULL),(22,15,3,2,NULL),(23,16,3,2,NULL),(24,24,3,2,NULL),(25,47,3,2,NULL),(26,61,3,2,NULL),(27,60,3,2,NULL),(28,6,9,2,NULL),(29,9,9,2,NULL),(30,10,9,2,NULL),(31,11,9,2,NULL),(32,12,9,2,NULL),(33,13,9,2,NULL),(34,14,9,2,NULL),(35,15,9,2,NULL),(36,16,9,2,NULL),(37,24,9,2,NULL),(38,47,9,2,NULL),(39,61,9,2,NULL),(40,60,9,2,NULL),(41,6,5,2,NULL),(42,9,2,2,NULL),(43,10,2,2,NULL),(44,11,2,2,NULL),(45,12,2,2,NULL),(46,13,2,2,NULL),(47,14,2,2,NULL),(48,15,2,2,NULL),(49,16,2,2,NULL),(50,6,8,2,NULL),(51,6,10,2,NULL),(52,24,2,2,NULL),(53,6,26,2,NULL),(54,6,31,2,NULL),(55,6,34,2,NULL),(56,6,59,2,NULL),(57,6,21,2,NULL),(58,47,2,2,NULL),(59,61,2,2,NULL),(60,6,56,2,NULL),(61,6,57,2,NULL),(62,6,58,2,NULL),(63,60,2,2,NULL),(64,6,60,2,NULL),(65,9,10,2,NULL),(66,10,10,2,NULL),(67,11,10,2,NULL),(68,12,10,2,NULL),(69,13,10,2,NULL),(70,14,10,2,NULL),(71,15,10,2,NULL),(72,16,10,2,NULL),(73,24,10,2,NULL),(74,47,10,2,NULL),(75,61,10,2,NULL),(76,60,10,2,NULL),(77,24,5,2,NULL),(78,24,8,2,NULL),(79,24,26,2,NULL),(80,24,31,2,NULL),(81,24,34,2,NULL),(82,24,59,2,NULL),(83,24,21,2,NULL),(84,24,56,2,NULL),(85,24,57,2,NULL),(86,24,58,2,NULL),(87,24,60,2,NULL),(88,27,14,2,NULL),(89,18,19,2,NULL),(90,19,16,2,NULL),(91,20,20,2,NULL),(92,23,20,2,NULL),(93,25,24,2,NULL),(94,26,18,2,NULL),(95,28,22,2,NULL),(96,29,15,2,NULL),(97,30,17,2,NULL),(98,32,23,2,NULL),(99,33,23,2,NULL),(100,9,26,2,NULL),(101,10,26,2,NULL),(102,11,26,2,NULL),(103,12,26,2,NULL),(104,13,26,2,NULL),(105,14,26,2,NULL),(106,15,26,2,NULL),(107,16,26,2,NULL),(108,47,26,2,NULL),(109,61,26,2,NULL),(110,60,26,2,NULL),(111,9,31,2,NULL),(112,10,31,2,NULL),(113,11,31,2,NULL),(114,12,31,2,NULL),(115,13,31,2,NULL),(116,14,31,2,NULL),(117,15,31,2,NULL),(118,16,31,2,NULL),(119,47,31,2,NULL),(120,61,31,2,NULL),(121,60,31,2,NULL),(122,31,12,2,NULL),(123,9,34,2,NULL),(124,10,34,2,NULL),(125,11,34,2,NULL),(126,12,34,2,NULL),(127,13,34,2,NULL),(128,14,34,2,NULL),(129,15,34,2,NULL),(130,16,34,2,NULL),(131,47,34,2,NULL),(132,61,34,2,NULL),(133,60,34,2,NULL),(134,9,59,2,NULL),(135,10,59,2,NULL),(136,11,59,2,NULL),(137,12,59,2,NULL),(138,13,59,2,NULL),(139,14,59,2,NULL),(140,15,59,2,NULL),(141,16,59,2,NULL),(142,47,59,2,NULL),(143,61,59,2,NULL),(144,60,59,2,NULL),(145,9,8,2,NULL),(146,10,8,2,NULL),(147,11,8,2,NULL),(148,12,8,2,NULL),(149,13,8,2,NULL),(150,14,8,2,NULL),(151,15,8,2,NULL),(152,16,8,2,NULL),(153,9,21,2,NULL),(154,10,21,2,NULL),(155,11,21,2,NULL),(156,12,21,2,NULL),(157,12,21,2,NULL),(158,13,21,2,NULL),(159,14,21,2,NULL),(160,15,21,2,NULL),(161,16,21,2,NULL),(162,47,21,2,NULL),(163,47,5,2,NULL),(164,61,21,2,NULL),(165,61,5,2,NULL),(166,60,21,2,NULL),(167,9,56,2,NULL),(168,47,8,2,NULL),(169,10,56,2,NULL),(170,47,56,2,NULL),(171,11,56,2,NULL),(172,47,57,2,NULL),(173,12,56,2,NULL),(174,47,58,2,NULL),(175,13,56,2,NULL),(176,47,60,2,NULL),(177,14,56,2,NULL),(178,61,8,2,NULL),(179,15,56,2,NULL),(180,61,56,2,NULL),(181,16,56,2,NULL),(182,61,57,2,NULL),(183,9,57,2,NULL),(184,61,58,2,NULL),(185,10,57,2,NULL),(186,61,60,2,NULL),(187,11,57,2,NULL),(188,38,38,2,NULL),(189,12,57,2,NULL),(190,35,55,2,NULL),(191,13,57,2,NULL),(192,36,39,2,NULL),(193,14,57,2,NULL),(194,40,43,2,NULL),(195,15,57,2,NULL),(196,42,44,2,NULL),(197,16,57,2,NULL),(198,43,51,2,NULL),(199,9,58,2,NULL),(200,45,52,2,NULL),(201,10,58,2,NULL),(202,52,47,2,NULL),(203,11,58,2,NULL),(204,54,53,2,NULL),(205,12,58,2,NULL),(206,56,43,2,NULL),(207,13,58,2,NULL),(208,57,50,2,NULL),(209,14,58,2,NULL),(210,62,48,2,NULL),(211,15,58,2,NULL),(212,64,46,2,NULL),(213,16,58,2,NULL),(214,65,42,2,NULL),(215,60,5,2,NULL),(216,67,45,2,NULL),(217,9,60,2,NULL),(218,69,46,2,NULL),(219,10,60,2,NULL),(220,70,49,2,NULL),(221,11,60,2,NULL),(222,74,41,2,NULL),(223,12,60,2,NULL),(224,75,40,2,NULL),(225,13,60,2,NULL),(226,76,49,2,NULL),(227,14,60,2,NULL),(228,66,29,2,NULL),(229,15,60,2,NULL),(230,48,25,2,NULL),(231,16,60,2,NULL),(232,58,29,2,NULL),(233,60,8,2,NULL),(234,51,28,2,NULL),(235,53,21,2,NULL),(236,60,56,2,NULL),(237,60,57,2,NULL),(238,41,28,2,NULL),(239,44,21,2,NULL),(240,46,33,2,NULL),(241,50,36,2,NULL),(242,60,60,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(34,'android.permission.BLUETOOTH'),(21,'android.permission.CALL_PHONE'),(29,'android.permission.CAMERA'),(17,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(19,'android.permission.DELETE_PACKAGES'),(35,'android.permission.DEVICE_POWER'),(26,'android.permission.GET_TASKS'),(18,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(32,'android.permission.MODIFY_AUDIO_SETTINGS'),(33,'android.permission.MODIFY_PHONE_STATE'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(27,'android.permission.READ_CALENDAR'),(11,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(30,'android.permission.RECORD_AUDIO'),(28,'android.permission.RECORD_VIDEO'),(3,'android.permission.SEND_SMS'),(8,'android.permission.SET_WALLPAPER'),(31,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_CONTACTS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS'),(14,'android.webkit.permission.PLUGIN'),(12,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.dreamstep.webWidget.wSpyBubble.permission.C2D_MESSAGE'),(15,'com.google.android.c2dm.permission.RECEIVE'),(16,'com.google.android.c2dm.permission.SEND');
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
INSERT INTO `Permissions` VALUES (13,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(8,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.calendar/reminders',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,15,7),(2,19,9),(3,21,10),(4,24,11),(5,31,12),(6,38,13),(7,40,14),(8,47,15),(9,60,16),(10,62,17),(11,77,21),(12,82,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,4),(10,2,8),(11,2,9),(12,2,10),(13,3,2),(14,3,4),(15,3,11),(16,3,12),(17,4,4),(18,4,10),(19,4,13),(20,4,14),(21,4,15),(22,5,1),(23,5,2),(24,5,3),(25,5,4),(26,5,5),(27,5,6),(28,5,7),(29,5,9),(30,5,10),(31,5,11),(32,5,12),(33,5,17),(34,5,19),(35,5,18),(36,5,21),(37,5,20),(38,5,23),(39,6,1),(40,5,22),(41,6,2),(42,5,25),(43,6,3),(44,5,24),(45,6,4),(46,6,5),(47,6,6),(48,6,7),(49,6,9),(50,6,10),(51,6,11),(52,6,12),(53,6,19),(54,6,18),(55,6,21),(56,6,20),(57,6,22),(58,6,25),(59,6,24),(60,6,27),(61,6,26),(62,6,29),(63,6,28),(64,6,31),(65,6,30),(66,6,34),(67,6,35),(68,6,32),(69,6,33);
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

-- Dump completed on 2015-10-12  3:31:40
