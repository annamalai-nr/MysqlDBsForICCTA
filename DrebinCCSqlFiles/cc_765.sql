-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_765
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'<INTENT>'),(18,'android.intent.action.AIRPLANE_MODE'),(7,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(11,'android.intent.action.DATE_CHANGED'),(4,'android.intent.action.Login'),(3,'android.intent.action.MAIN'),(19,'android.intent.action.MEDIA_BUTTON'),(1,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PHONE_STATE'),(6,'android.intent.action.Register'),(5,'android.intent.action.Registered'),(12,'android.intent.action.TIME_SET'),(15,'android.intent.action.VIEW'),(13,'android.intent.extra.DATA_REMOVED'),(2,'android.provider.Telephony.SMS_RECEIVED'),(20,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'iits.service.AutoAnswerIntentService'),(9,'iits.service.ResetService'),(8,'iits.service.SpyooService');
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
INSERT INTO `Applications` VALUES (1,'org.android.system',1),(2,'com.company3l.PhoneLocatorViewer',8),(3,'com.synteo.prospy',1),(4,'com.company3L.SpyMe',62),(5,'com.synteo.spytrack',25),(6,'iits.spyoo',1),(7,'synteo.spysat',61);
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
INSERT INTO `CategoryStrings` VALUES (4,'<INTENT>'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.android.system.SMSReceiver'),(2,2,'com.company3l.PhoneLocatorViewer.NooYawk'),(3,2,'com.company3l.PhoneLocatorViewer.Mapa'),(4,3,'com.synteo.prospy.ProSpy'),(5,3,'com.synteo.prospy.ChatAct'),(6,3,'com.synteo.prospy.SpyService'),(7,4,'com.company3L.SpyMe.Features'),(8,4,'com.company3L.SpyMe.Registered'),(9,4,'com.company3L.SpyMe.Main'),(10,4,'com.company3L.SpyMe.Register'),(11,4,'com.company3L.SpyMe.KidsLocator1'),(12,4,'com.company3L.SpyMe.LocationReceiver'),(13,5,'com.synteo.spytrack.Application'),(14,5,'com.admob.android.ads.AdMobActivity'),(15,5,'com.synteo.spytrack.SpyService'),(16,6,'iits.spyoo.Program'),(17,6,'iits.spyoo.Login'),(18,6,'iits.spyoo.Setting'),(19,7,'synteo.spysat.Application'),(20,6,'iits.spyoo.AutoRun'),(21,6,'iits.spyoo.About'),(22,6,'iits.spyoo.AutoAnswerScreen'),(23,7,'com.admob.android.ads.AdMobActivity'),(24,6,'iits.service.SpyooService'),(25,7,'synteo.spysat.SpyService'),(26,6,'iits.service.ResetService'),(27,6,'iits.service.AutoAnswerIntentService'),(28,6,'iits.receiver.AutoRunReceiver'),(29,6,'iits.receiver.DateTimeReceiver'),(30,6,'iits.receiver.LoginReceiver'),(31,6,'iits.receiver.AutoAnswerReceiver'),(32,3,'com.synteo.prospy.ProSpy$10'),(33,5,'com.admob.android.ads.q'),(34,7,'com.admob.android.ads.q'),(35,6,'iits.code.dao.SMS_History_DAO'),(36,6,'iits.code.dao.Call_History_DAO');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'pdus'),(2,1,'android.intent.extra.PHONE_NUMBER'),(3,14,'ru'),(4,14,'su'),(5,14,'mi'),(6,14,'int'),(7,14,'json'),(8,13,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(9,14,'nosk'),(10,14,'si'),(11,14,'u'),(12,14,'c'),(13,14,'o'),(14,14,'t'),(15,13,'ADMOB_PUBLISHER_ID'),(16,13,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(17,14,'ad'),(18,14,'sd'),(19,14,'s'),(20,14,'b'),(21,14,'sku'),(22,14,'ap'),(23,14,'au'),(24,14,'rd'),(25,14,'sc'),(26,14,'$'),(27,14,'skd'),(28,14,'cbo'),(29,14,'oi'),(30,14,'msm'),(31,14,'tr'),(32,14,'sin'),(33,14,'or'),(34,14,'a'),(35,14,'cs'),(36,14,'p'),(37,23,'sku'),(38,23,'or'),(39,23,'o'),(40,23,'int'),(41,23,'ru'),(42,19,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(43,23,'cbo'),(44,23,'t'),(45,23,'ap'),(46,23,'au'),(47,23,'sd'),(48,23,'sin'),(49,23,'json'),(50,23,'u'),(51,23,'rd'),(52,23,'skd'),(53,30,'android.intent.extra.PHONE_NUMBER'),(54,23,'si'),(55,23,'sc'),(56,23,'a'),(57,23,'nosk'),(58,23,'ad'),(59,23,'c'),(60,23,'mi'),(61,23,'$'),(62,23,'p'),(63,31,'state'),(64,23,'su'),(65,23,'msm'),(66,23,'tr'),(67,23,'s'),(68,23,'cs'),(69,23,'oi'),(70,23,'b'),(71,19,'ADMOB_PUBLISHER_ID'),(72,19,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(73,31,'incoming_number');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,1,4),(3,2,4),(4,3,4),(5,3,5),(6,4,4),(7,4,5),(8,5,4),(9,5,5),(10,6,4),(11,6,5),(12,7,10),(13,8,7),(14,9,7),(15,10,9),(16,11,8),(17,12,10),(18,13,12),(19,14,9),(20,15,8),(21,16,7),(22,17,10),(23,18,8),(24,19,13),(25,20,13),(26,21,13),(27,22,13),(28,23,13),(29,24,13),(30,25,19),(31,26,19),(32,27,19),(33,28,19),(34,29,19),(35,30,22),(36,31,29),(37,32,17),(38,33,19),(39,34,26),(40,35,17),(41,36,30),(42,37,31),(43,38,24),(44,39,22),(45,40,20),(46,41,18),(47,42,27),(48,43,18),(49,44,18),(50,45,24),(51,46,30),(52,47,18),(53,48,21),(54,49,27),(55,50,24),(56,51,24),(57,52,17),(58,53,24),(59,54,31),(60,55,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.synteo.prospy.ProSpy: void startGPS()>',7,'s',NULL),(2,4,'<com.synteo.prospy.ProSpy: void openDevicesPage()>',4,'a',NULL),(3,4,'<com.synteo.prospy.ProSpy: void openHomePage()>',6,'a',NULL),(4,32,'<com.synteo.prospy.ProSpy$10: void onClick(android.view.View)>',7,'a',NULL),(5,4,'<com.synteo.prospy.ProSpy: void openHelpPage()>',6,'a',NULL),(6,4,'<com.synteo.prospy.ProSpy: void openVideoPage()>',4,'a',NULL),(7,10,'<com.company3L.SpyMe.Register: void startService()>',4,'s',NULL),(8,7,'<com.company3L.SpyMe.Features: void openRegisterActivity()>',3,'a',NULL),(9,7,'<com.company3L.SpyMe.Features: void openActionView(java.lang.String)>',5,'a',NULL),(10,9,'<com.company3L.SpyMe.Main: void openActionView(java.lang.String)>',5,'a',NULL),(11,8,'<com.company3L.SpyMe.Registered: void SendEmail(java.lang.String,java.lang.String)>',30,'a',NULL),(12,10,'<com.company3L.SpyMe.Register: void openActionView(java.lang.String)>',5,'a',NULL),(13,12,'<com.company3L.SpyMe.LocationReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(14,9,'<com.company3L.SpyMe.Main: void openMainActivity()>',3,'a',NULL),(15,8,'<com.company3L.SpyMe.Registered: void openActionView(java.lang.String)>',5,'a',NULL),(16,7,'<com.company3L.SpyMe.Features: void openHelpPage()>',14,'a',NULL),(17,10,'<com.company3L.SpyMe.Register: void openRegisteredActivity()>',3,'a',NULL),(18,8,'<com.company3L.SpyMe.Registered: void openPreviewPage()>',30,'a',NULL),(19,13,'<com.synteo.spytrack.Application: void openHomePage()>',6,'a',NULL),(20,13,'<com.synteo.spytrack.Application: void openHelpPage()>',6,'a',NULL),(21,13,'<com.synteo.spytrack.Application: void openDevicesPage()>',4,'a',NULL),(22,13,'<com.synteo.spytrack.Application: void openVideoPage()>',4,'a',NULL),(23,13,'<com.synteo.spytrack.Application: void onCreate(android.os.Bundle)>',32,'s',NULL),(24,33,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(25,19,'<synteo.spysat.Application: void openHelpPage()>',6,'a',NULL),(26,19,'<synteo.spysat.Application: void openHomePage()>',6,'a',NULL),(27,19,'<synteo.spysat.Application: void openVideoPage()>',4,'a',NULL),(28,34,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(29,19,'<synteo.spysat.Application: void openDevicesPage()>',4,'a',NULL),(30,22,'<iits.spyoo.AutoAnswerScreen: void onPause()>',7,'a',NULL),(31,29,'<iits.receiver.DateTimeReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'a',NULL),(32,17,'<iits.spyoo.Login: void clickAboutButton()>',4,'a',NULL),(33,19,'<synteo.spysat.Application: void onCreate(android.os.Bundle)>',32,'s',NULL),(34,26,'<iits.service.ResetService: void onCreate()>',4,'s',NULL),(35,17,'<iits.spyoo.Login: void clickSettingButton()>',4,'a',NULL),(36,30,'<iits.receiver.LoginReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'a',NULL),(37,31,'<iits.receiver.AutoAnswerReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'a',NULL),(38,35,'<iits.code.dao.SMS_History_DAO: iits.code.dto.SMS_DTO getLastSMS(android.content.ContentResolver)>',3,'p',NULL),(39,22,'<iits.spyoo.AutoAnswerScreen: void setAirplaneMode(android.content.Context,boolean)>',10,'r',NULL),(40,20,'<iits.spyoo.AutoRun: void onCreate(android.os.Bundle)>',15,'s',NULL),(41,18,'<iits.spyoo.Setting: void restartServer()>',6,'s',NULL),(42,27,'<iits.service.AutoAnswerIntentService: void answerPhoneHeadsethook(android.content.Context)>',13,'r',NULL),(43,18,'<iits.spyoo.Setting: boolean onOptionsItemSelected(android.view.MenuItem)>',31,'a',NULL),(44,18,'<iits.spyoo.Setting: void showGpsOptions()>',3,'a',NULL),(45,24,'<iits.service.SpyooService: void startSMS()>',13,'p',NULL),(46,30,'<iits.receiver.LoginReceiver: void onReceive(android.content.Context,android.content.Intent)>',64,'a',NULL),(47,18,'<iits.spyoo.Setting: void showLoginForm()>',5,'a',NULL),(48,21,'<iits.spyoo.About: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(49,27,'<iits.service.AutoAnswerIntentService: void answerPhoneHeadsethook(android.content.Context)>',7,'r',NULL),(50,24,'<iits.service.SpyooService: void startCall()>',13,'p',NULL),(51,24,'<iits.service.SpyooService: void startURL()>',13,'p',NULL),(52,17,'<iits.spyoo.Login: void init()>',42,'s',NULL),(53,36,'<iits.code.dao.Call_History_DAO: iits.code.dto.Call_DTO getLastCall(android.content.ContentResolver)>',3,'p',NULL),(54,31,'<iits.receiver.AutoAnswerReceiver: void onReceive(android.content.Context,android.content.Intent)>',57,'s',NULL),(55,28,'<iits.receiver.AutoRunReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,15),(2,3,15),(3,5,15),(4,6,15),(5,9,15),(6,10,15),(7,11,16),(8,12,16),(9,13,16),(10,14,16),(11,15,16),(12,16,16),(13,17,16),(14,18,16),(15,19,15),(16,22,15),(17,23,15),(18,24,15),(19,25,15),(20,26,15),(21,27,15),(22,29,15),(23,30,15),(24,31,15),(25,32,15),(26,33,15),(27,34,15),(28,35,15),(29,36,15),(30,37,15),(31,38,15),(32,39,15),(33,40,15),(34,41,15),(35,42,15),(36,43,15),(37,44,15),(38,45,15),(39,46,15),(40,47,15),(41,48,15),(42,50,15),(43,51,15),(44,52,15),(45,53,15),(46,54,17),(47,62,18),(48,65,19),(49,67,20),(50,71,19);
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
INSERT INTO `ICategories` VALUES (1,54,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/synteo/prospy/SpyService'),(2,4,'com/synteo/prospy/ChatAct'),(3,7,'com.company3L.SpyMe.KidsLocator1'),(4,8,'com/company3L/SpyMe/Register'),(5,20,'com/company3L/SpyMe/KidsLocator1'),(6,21,'com/company3L/SpyMe/Features'),(7,28,'com/company3L/SpyMe/Registered'),(8,49,'com/synteo/spytrack/SpyService'),(9,55,'iits/spyoo/AutoRun'),(10,56,'iits/spyoo/About'),(11,57,'synteo/spysat/SpyService'),(12,58,'iits/service/SpyooService'),(13,59,'iits/spyoo/Setting'),(14,60,'iits/spyoo/Program'),(15,61,'iits/spyoo/AutoAnswerScreen'),(16,63,'iits/service/SpyooService'),(17,64,'iits/service/SpyooService'),(18,66,'iits/spyoo/Setting'),(19,68,'iits/spyoo/Program'),(20,69,'iits/spyoo/Login'),(21,70,'iits/spyoo/Login'),(22,72,'iits/service/SpyooService'),(23,73,'iits/service/AutoAnswerIntentService'),(24,74,'iits/spyoo/AutoRun');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,5,3),(4,6,4),(5,9,5),(6,10,6),(7,19,7),(8,22,8),(9,23,9),(10,24,10),(11,25,11),(12,26,12),(13,27,13),(14,29,14),(15,30,15),(16,31,16),(17,32,17),(18,33,18),(19,34,19),(20,35,20),(21,36,21),(22,37,22),(23,38,23),(24,39,24),(25,40,25),(26,41,26),(27,42,27),(28,43,28),(29,44,29),(30,45,30),(31,46,31),(32,47,32),(33,48,33),(34,50,34),(35,51,35),(36,52,36),(37,53,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'android.intent.extra.INTENT'),(2,12,'android.intent.extra.INTENT'),(3,13,'android.intent.extra.TITLE'),(4,13,'android.intent.extra.INTENT'),(5,14,'android.intent.extra.INTENT'),(6,15,'android.intent.extra.TITLE'),(7,15,'android.intent.extra.INTENT'),(8,16,'android.intent.extra.INTENT'),(9,17,'android.intent.extra.TITLE'),(10,17,'android.intent.extra.INTENT'),(11,18,'android.intent.extra.TITLE'),(12,18,'android.intent.extra.INTENT'),(13,54,'<INTENT>'),(14,62,'state'),(15,65,'android.intent.extra.KEY_EVENT'),(16,71,'android.intent.extra.KEY_EVENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,3),(5,4,4),(6,5,5),(7,6,3),(8,7,6),(9,8,7),(10,9,3),(11,10,3),(12,11,3),(13,12,8),(14,13,9),(15,14,10),(16,15,7),(17,16,11),(18,16,12),(19,17,1),(20,17,13),(21,18,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,6,1),(4,9,1),(5,11,1),(6,15,2),(7,17,3);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.synteo.prospy'),(2,4,'com.synteo.prospy'),(3,7,'com.company3L.SpyMe'),(4,8,'com.company3L.SpyMe'),(5,20,'com.company3L.SpyMe'),(6,21,'com.company3L.SpyMe'),(7,28,'com.company3L.SpyMe'),(8,49,'com.synteo.spytrack'),(9,55,'iits.spyoo'),(10,56,'iits.spyoo'),(11,57,'synteo.spysat'),(12,58,'iits.spyoo'),(13,59,'iits.spyoo'),(14,60,'iits.spyoo'),(15,61,'iits.spyoo'),(16,63,'iits.spyoo'),(17,64,'iits.spyoo'),(18,66,'iits.spyoo'),(19,68,'iits.spyoo'),(20,69,'iits.spyoo'),(21,70,'iits.spyoo'),(22,72,'iits.spyoo'),(23,73,'iits.spyoo'),(24,74,'iits.spyoo');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,7,0),(5,8,0),(6,9,0),(7,10,0),(8,12,0),(9,13,0),(10,16,0),(11,19,0),(12,24,0),(13,26,0),(14,27,0),(15,28,0),(16,29,0),(17,30,0),(18,31,0);
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
INSERT INTO `IntentPermissions` VALUES (1,42,23),(2,49,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,11,1,0),(13,11,1,0),(14,11,1,0),(15,11,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,15,1,0),(23,15,1,0),(24,16,1,0),(25,16,1,0),(26,16,1,0),(27,16,1,0),(28,17,0,0),(29,18,1,0),(30,18,1,0),(31,18,1,0),(32,18,1,0),(33,18,1,0),(34,18,1,0),(35,18,1,0),(36,18,1,0),(37,18,1,0),(38,18,1,0),(39,18,1,0),(40,18,1,0),(41,18,1,0),(42,18,1,0),(43,18,1,0),(44,18,1,0),(45,19,1,0),(46,20,1,0),(47,21,1,0),(48,22,1,0),(49,23,0,0),(50,25,1,0),(51,26,1,0),(52,27,1,0),(53,29,1,0),(54,30,1,0),(55,31,0,0),(56,32,0,0),(57,33,0,0),(58,34,0,0),(59,35,0,0),(60,36,0,0),(61,37,0,0),(62,39,1,0),(63,40,0,0),(64,41,0,0),(65,42,1,0),(66,43,0,0),(67,44,1,0),(68,46,0,0),(69,47,0,0),(70,48,0,0),(71,49,1,0),(72,52,0,0),(73,54,0,0),(74,55,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.CALL_PHONE'),(23,'android.permission.CALL_PRIVILEGED'),(17,'android.permission.DISABLE_KEYGUARD'),(12,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(16,'android.permission.MODIFY_AUDIO_SETTINGS'),(18,'android.permission.MODIFY_PHONE_STATE'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(20,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_CONTACTS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://spysat.eu/free-gps-tracking-devices_f_21_n_1_m_y',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.youtube.com/watch?v=oL9NQMiJe2Y',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.company3L.SpyPhoneTracker',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=pname:com.company3L.SpyPhoneTracker',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pname:com.company3L.SpyPhoneTracker',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.company3l.PhoneLocatorViewer',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:com.company3L.SpyPhoneTracker',NULL,NULL,NULL),(10,NULL,NULL,'http://(.*):(.*)/hello/faq.jsp',NULL,NULL,NULL),(11,NULL,NULL,'http://:(.*)/hello/faq.jsp',NULL,NULL,NULL),(12,NULL,NULL,'http://(.*):/hello/faq.jsp',NULL,NULL,NULL),(13,NULL,NULL,'http://:/hello/faq.jsp',NULL,NULL,NULL),(14,NULL,NULL,'http://:/hello/page.jsp?username=&password=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://:(.*)/hello/page.jsp?username=&password=',NULL,NULL,NULL),(16,NULL,NULL,'http://:(.*)/hello/page.jsp?username=(.*)&password=',NULL,NULL,NULL),(17,NULL,NULL,'http://:(.*)/hello/page.jsp?username=(.*)&password=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://(.*):/hello/page.jsp?username=&password=',NULL,NULL,NULL),(19,NULL,NULL,'http://(.*):(.*)/hello/page.jsp?username=(.*)&password=',NULL,NULL,NULL),(20,NULL,NULL,'http://(.*):/hello/page.jsp?username=&password=(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://(.*):(.*)/hello/page.jsp?username=&password=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://(.*):(.*)/hello/page.jsp?username=(.*)&password=(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://(.*):/hello/page.jsp?username=(.*)&password=(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://:/hello/page.jsp?username=&password=',NULL,NULL,NULL),(25,NULL,NULL,'http://(.*):(.*)/hello/page.jsp?username=&password=',NULL,NULL,NULL),(26,NULL,NULL,'http://:/hello/page.jsp?username=(.*)&password=',NULL,NULL,NULL),(27,NULL,NULL,'http://(.*):/hello/page.jsp?username=(.*)&password=',NULL,NULL,NULL),(28,NULL,NULL,'http://:(.*)/hello/page.jsp?username=&password=(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://:/hello/page.jsp?username=(.*)&password=(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://spysat.eu/free-gps-tracking-devices_f_21_n_1_m_y',NULL,NULL,NULL),(33,NULL,NULL,'http://www.youtube.com/watch?v=oL9NQMiJe2Y',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'http://www.youtube.com/watch?v=oL9NQMiJe2Y',NULL,NULL,NULL),(37,NULL,NULL,'http://spysat.eu/free-gps-tracking-devices_f_21_n_1',NULL,NULL,NULL),(38,NULL,NULL,'content://sms/',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/',NULL,NULL,NULL),(40,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(41,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(42,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,38,38),(2,45,39),(3,50,40),(4,51,41),(5,53,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,4),(9,2,8),(10,3,4),(11,3,9),(12,4,2),(13,4,4),(14,4,8),(15,4,9),(16,4,10),(17,4,11),(18,5,4),(19,5,9),(20,6,1),(21,6,2),(22,6,4),(23,6,5),(24,6,6),(25,6,7),(26,6,8),(27,6,9),(28,6,10),(29,6,11),(30,6,12),(31,6,13),(32,6,14),(33,6,15),(34,6,17),(35,6,16),(36,6,19),(37,6,18),(38,6,21),(39,6,20),(40,6,22),(41,7,4),(42,7,9);
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

-- Dump completed on 2015-10-09  0:41:07
