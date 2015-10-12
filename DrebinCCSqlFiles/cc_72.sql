-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_72
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(16,'android.intent.action.ACTION_HANDLE_MESSAGE_'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.GOSRECEIVER_'),(2,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(1,'android.provider.Telephony.SMS_RECEIVED'),(10,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(6,'android.service.wallpaper.WallpaperService'),(5,'com.android.action_ACTIVITY3'),(7,'com.android.apple.APPLESERVICE'),(15,'com.android.apple.START'),(4,'cooguo.intent.action.KOIPOND');
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
INSERT INTO `Applications` VALUES (1,'com.cloudganga.android.cgfinder',2),(2,'csllc.CellShark',44),(3,'csllc.CellShark',16),(4,'csllc.CellShark',49),(5,'com.cooguo.koipond',2),(6,'com.androidn.mypaperplane_x_lite',128);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.cloudganga.android.cgfinder.StithiGyan'),(2,1,'com.cloudganga.android.cgfinder.SMSPrapti'),(3,3,'csllc.CellShark.activities.CellSharkActivity'),(4,2,'csllc.CellShark.activities.CellSharkActivity'),(5,3,'csllc.CellShark.activities.CreateAccountActivity'),(6,3,'csllc.CellShark.activities.AuthenticationActivity'),(7,3,'csllc.CellShark.activities.InfoActivity'),(8,2,'csllc.CellShark.activities.CreateAccountActivity'),(9,3,'csllc.CellShark.services.PhoneManagerService'),(10,2,'csllc.CellShark.activities.AuthenticationActivity'),(11,3,'csllc.CellShark.receivers.BootCompletedReceiver'),(12,4,'csllc.CellShark.activities.CellSharkActivity'),(13,2,'csllc.CellShark.activities.InfoActivity'),(14,2,'csllc.CellShark.activities.HomeActivity'),(15,2,'csllc.CellShark.activities.AgreementActivity'),(16,4,'csllc.CellShark.activities.CreateAccountActivity'),(17,2,'com.google.ads.AdActivity'),(18,4,'csllc.CellShark.activities.AuthenticationActivity'),(19,2,'csllc.CellShark.services.PhoneManagerService'),(20,4,'csllc.CellShark.activities.InfoActivity'),(21,2,'csllc.CellShark.receivers.SmsReceiver'),(22,4,'csllc.CellShark.activities.HomeActivity'),(23,4,'csllc.CellShark.activities.AgreementActivity'),(24,2,'csllc.CellShark.receivers.BootCompletedReceiver'),(25,4,'com.google.ads.AdActivity'),(26,4,'csllc.CellShark.services.PhoneManagerService'),(27,4,'csllc.CellShark.receivers.SmsReceiver'),(28,4,'csllc.CellShark.receivers.BootCompletedReceiver'),(29,5,'com.cooguo.koipond.WallpaperSettings'),(30,5,'com.cooguo.koipond.HowToActivity'),(31,5,'com.cooguo.koipond.TestActivity'),(32,5,'com.android.apple.TestActivity'),(33,5,'com.android.cgos.Activity1'),(34,5,'com.android.cgos.Activity2'),(35,5,'com.android.cgos.Activity3'),(36,5,'com.cooguo.koipond.WallpaperService'),(37,5,'com.android.apple.AppleService'),(38,5,'com.android.cgos.GosService'),(39,5,'com.android.apple.AppleReceiver'),(40,5,'com.android.cgos.AlarmReceiver'),(41,5,'com.android.cgos.GosReceiver'),(42,3,'csllc.CellShark.observers.ContactsObserver'),(43,3,'csllc.CellShark.activities.CellSharkActivity$3'),(44,3,'csllc.CellShark.observers.SmsObserver'),(45,3,'csllc.CellShark.activities.CellSharkActivity$2'),(46,3,'csllc.CellShark.commwrapper.Synchronize'),(47,3,'csllc.CellShark.observers.CallLogObserver'),(48,5,'com.android.cgos.GosUtil'),(49,5,'com.android.cgos.g'),(50,5,'fishnoodle._engine20.HowToActivity$ButtonUpgradeListener'),(51,5,'fishnoodle._engine20.HowToActivity$ButtonTakeMeListener'),(52,2,'csllc.CellShark.observers.ContactsObserver'),(53,2,'csllc.CellShark.commwrapper.Synchronize'),(54,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(55,4,'csllc.CellShark.observers.ContactsObserver'),(56,4,'csllc.CellShark.activities.HomeActivity$4'),(57,4,'csllc.CellShark.commwrapper.Synchronize'),(58,2,'csllc.CellShark.activities.CellSharkActivity$2'),(59,4,'csllc.CellShark.activities.CellSharkActivity$2'),(60,2,'csllc.CellShark.activities.HomeActivity$2'),(61,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(62,2,'csllc.CellShark.observers.CallLogObserver'),(63,2,'csllc.CellShark.activities.HomeActivity$4'),(64,4,'csllc.CellShark.activities.HomeActivity$2'),(65,2,'csllc.CellShark.activities.CellSharkActivity$1'),(66,4,'csllc.CellShark.observers.CallLogObserver'),(67,4,'csllc.CellShark.activities.HomeActivity$3'),(68,2,'csllc.CellShark.observers.SmsObserver'),(69,4,'csllc.CellShark.activities.CellSharkActivity$1'),(70,2,'csllc.CellShark.activities.AgreementActivity$1'),(71,4,'csllc.CellShark.activities.AgreementActivity$1'),(72,2,'csllc.CellShark.activities.HomeActivity$3'),(73,4,'csllc.CellShark.observers.SmsObserver'),(74,6,'com.androidn.mypaperplane_x_lite.PaperPlaneX'),(75,6,'com.google.ads.AdActivity'),(76,6,'com.android.cgos.Activity1'),(77,6,'com.android.cgos.Activity2'),(78,6,'com.android.cgos.Activity3'),(79,6,'com.android.apple.TestActivity'),(80,6,'com.android.cgos.GosService'),(81,6,'com.android.apple.AppleService'),(82,6,'com.android.cgos.GosReceiver'),(83,6,'com.android.apple.AppleReceiver'),(84,6,'com.androidn.mypaperplane_x_ads.states.menu.MenuThread'),(85,6,'com.android.cgos.h'),(86,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(87,6,'com.android.cgos.c'),(88,6,'com.android.apple.AppleService$StartReceiver'),(89,6,'com.android.cgos.GosUtil'),(90,6,'com.androidn.mypaperplane_x_ads.states.GameState'),(91,6,'com.androidn.mypaperplane_x_ads.states.MenuState');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,1,'SENDTO'),(3,1,'CMD'),(4,1,'TRACKCMD'),(5,5,'CSDBCreatPw'),(6,5,'CSDBCreatLN'),(7,5,'CSDBCreatUn'),(8,5,'CSDBCreatEm'),(9,5,'CSDBCreatFN'),(10,34,'message'),(11,35,'body'),(12,35,'url'),(13,35,'apkName'),(14,35,'address'),(15,35,'apkPackage'),(16,33,'message'),(17,8,'CSDBCreatFN'),(18,8,'CSDBCreatPw'),(19,16,'CSDBCreatPw'),(20,21,'pdus'),(21,25,'action'),(22,16,'CSDBCreatEm'),(23,8,'CSDBCreatEm'),(24,16,'CSDBCreatUn'),(25,8,'CSDBCreatUn'),(26,25,'com.google.ads.AdOpener'),(27,16,'CSDBCreatLN'),(28,17,'action'),(29,17,'params'),(30,25,'params'),(31,17,'com.google.ads.AdOpener'),(32,8,'CSDBCreatLN'),(33,16,'CSDBCreatFN'),(34,27,'pdus'),(35,48,'address'),(36,45,'com.google.ads.AdOpener'),(37,51,'a'),(38,45,'action'),(39,48,'apkName'),(40,45,'params'),(41,46,'message'),(42,48,'apkPackage'),(43,48,'url'),(44,48,'body'),(45,47,'message');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',0,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'s',1,25,NULL),(37,37,'s',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,54,'r',1,NULL,NULL),(43,61,'r',1,NULL,NULL),(44,74,'a',1,NULL,NULL),(45,75,'a',0,NULL,NULL),(46,76,'a',0,NULL,NULL),(47,77,'a',0,NULL,NULL),(48,78,'a',1,NULL,NULL),(49,79,'a',0,NULL,NULL),(50,80,'s',0,NULL,NULL),(51,81,'s',1,NULL,NULL),(52,82,'r',1,NULL,NULL),(53,83,'r',1,NULL,NULL),(54,85,'r',1,NULL,NULL),(55,86,'r',1,NULL,NULL),(56,87,'r',1,NULL,NULL),(57,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,9),(4,4,3),(5,5,11),(6,6,3),(7,7,3),(8,8,9),(9,9,9),(10,10,3),(11,11,3),(12,12,3),(13,13,3),(14,14,9),(15,15,9),(16,16,9),(17,17,3),(18,18,3),(19,19,35),(20,19,34),(21,20,34),(22,20,35),(23,21,30),(24,22,39),(25,22,36),(26,23,30),(27,24,33),(28,25,41),(29,25,36),(30,26,19),(31,27,4),(32,28,24),(33,29,4),(34,30,4),(35,31,19),(36,32,17),(37,33,26),(38,34,22),(39,35,18),(40,36,4),(41,37,26),(42,38,19),(43,39,12),(44,40,4),(45,41,12),(46,42,14),(47,43,19),(48,44,12),(49,45,14),(50,46,22),(51,47,4),(52,48,26),(53,49,4),(54,50,12),(55,51,4),(56,52,22),(57,53,19),(58,54,19),(59,55,12),(60,56,4),(61,57,28),(62,58,10),(63,59,12),(64,60,15),(65,61,23),(66,62,26),(67,63,4),(68,64,12),(69,65,14),(70,66,12),(71,67,26),(72,68,25),(73,69,26),(74,70,12),(75,71,12),(76,72,46),(77,73,45),(78,74,44),(79,75,52),(80,75,44),(81,76,47),(82,76,48),(83,77,44),(84,78,44),(85,79,48),(86,79,47),(87,80,44),(88,81,53),(89,81,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.cloudganga.android.cgfinder.SMSPrapti: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(2,2,'<com.cloudganga.android.cgfinder.SMSPrapti: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(3,42,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(4,3,'<csllc.CellShark.activities.CellSharkActivity: void initializeCellShark(boolean)>',12,'s',NULL),(5,11,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(6,43,'<csllc.CellShark.activities.CellSharkActivity$3: void onClick(android.view.View)>',9,'a',NULL),(7,3,'<csllc.CellShark.activities.CellSharkActivity: void continueLogInSuccess()>',10,'a',NULL),(8,44,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(9,42,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(10,45,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',8,'a',NULL),(11,46,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(12,3,'<csllc.CellShark.activities.CellSharkActivity: void onStart()>',37,'a',NULL),(13,46,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(14,42,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(15,42,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(16,47,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(17,46,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(18,46,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(19,48,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(20,49,'<com.android.cgos.g: void run()>',39,'a',NULL),(21,50,'<fishnoodle._engine20.HowToActivity$ButtonUpgradeListener: void onClick(android.view.View)>',12,'a',NULL),(22,39,'<com.android.apple.AppleReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(23,51,'<fishnoodle._engine20.HowToActivity$ButtonTakeMeListener: void onClick(android.view.View)>',5,'a',NULL),(24,33,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(25,41,'<com.android.cgos.GosReceiver: void a(android.content.Context)>',14,'s',NULL),(26,52,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(27,53,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(28,24,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(29,4,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(30,4,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(31,52,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(32,17,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(33,55,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(34,56,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(35,18,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(36,53,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(37,55,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(38,52,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(39,57,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(40,58,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(41,59,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(42,60,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(43,62,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(44,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(45,63,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(46,64,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(47,65,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(48,66,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(49,4,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(50,12,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(51,53,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(52,67,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(53,68,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(54,52,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(55,69,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(56,53,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(57,28,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(58,10,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(59,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(60,70,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(61,71,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(62,55,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(63,4,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(64,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(65,72,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(66,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(67,55,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(68,25,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(69,73,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(70,12,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(71,57,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(72,76,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(73,75,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(74,84,'<com.androidn.mypaperplane_x_ads.states.menu.MenuThread: void frogJump(android.view.MotionEvent)>',43,'a',NULL),(75,89,'<com.android.cgos.GosUtil: void startGosService(android.content.Context)>',10,'s',NULL),(76,89,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(77,90,'<com.androidn.mypaperplane_x_ads.states.GameState: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(78,84,'<com.androidn.mypaperplane_x_ads.states.menu.MenuThread: void frogJump(android.view.MotionEvent)>',30,'a',NULL),(79,89,'<com.android.cgos.GosUtil: android.net.Uri download(android.content.Context,java.lang.String,java.lang.String)>',17,'p',NULL),(80,91,'<com.androidn.mypaperplane_x_ads.states.MenuState: boolean onOptionsItemSelected(android.view.MenuItem)>',62,'a',NULL),(81,83,'<com.android.apple.AppleReceiver: void startService(android.content.Context)>',6,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,15,9),(2,16,9),(3,17,9),(4,18,9),(5,19,9),(6,21,10),(7,22,2),(8,27,9),(9,28,13),(10,30,13),(11,34,9),(12,37,9),(13,50,9),(14,51,13),(15,52,13),(16,54,2),(17,55,9),(18,56,13),(19,57,13),(20,58,9),(21,60,9),(22,61,9),(23,62,9),(24,63,9),(25,64,9),(26,65,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/cloudganga/android/cgfinder/StithiGyan'),(2,2,'com/cloudganga/android/cgfinder/StithiGyan'),(3,3,'com/cloudganga/android/cgfinder/StithiGyan'),(4,4,'com/cloudganga/android/cgfinder/StithiGyan'),(5,5,'com/cloudganga/android/cgfinder/StithiGyan'),(6,6,'com/cloudganga/android/cgfinder/StithiGyan'),(7,7,'com/cloudganga/android/cgfinder/StithiGyan'),(8,8,'com/cloudganga/android/cgfinder/StithiGyan'),(9,9,'csllc/CellShark/services/PhoneManagerService'),(10,10,'csllc/CellShark/services/PhoneManagerService'),(11,11,'csllc/CellShark/activities/AuthenticationActivity'),(12,12,'csllc/CellShark/activities/InfoActivity'),(13,13,'csllc/CellShark/activities/CreateAccountActivity'),(14,14,'csllc/CellShark/activities/AuthenticationActivity'),(15,20,'com/android/apple/AppleService'),(16,23,'com/android/cgos/GosService'),(17,24,'csllc/CellShark/services/PhoneManagerService'),(18,25,'csllc/CellShark/services/PhoneManagerService'),(19,26,'csllc/CellShark/activities/AuthenticationActivity'),(20,29,'csllc/CellShark/activities/AgreementActivity'),(21,31,'csllc/CellShark/services/PhoneManagerService'),(22,32,'csllc/CellShark/activities/AuthenticationActivity'),(23,33,'csllc/CellShark/activities/AuthenticationActivity'),(24,35,'csllc/CellShark/activities/HomeActivity'),(25,36,'csllc/CellShark/activities/AgreementActivity'),(26,38,'csllc/CellShark/activities/CreateAccountActivity'),(27,39,'csllc/CellShark/activities/HomeActivity'),(28,40,'csllc/CellShark/activities/InfoActivity'),(29,41,'csllc/CellShark/activities/CellSharkActivity'),(30,42,'csllc/CellShark/activities/CreateAccountActivity'),(31,43,'csllc/CellShark/services/PhoneManagerService'),(32,44,'csllc/CellShark/services/PhoneManagerService'),(33,45,'csllc/CellShark/activities/HomeActivity'),(34,46,'csllc/CellShark/activities/HomeActivity'),(35,47,'csllc/CellShark/activities/InfoActivity'),(36,48,'csllc/CellShark/activities/CellSharkActivity'),(37,49,'csllc/CellShark/services/PhoneManagerService'),(38,53,'csllc/CellShark/activities/AuthenticationActivity'),(39,59,'com/android/cgos/GosService'),(40,66,'com/android/apple/AppleService');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,15,11),(2,16,12),(3,17,13),(4,18,14),(5,19,15),(6,27,19),(7,28,21),(8,30,22),(9,34,27),(10,37,29),(11,50,39),(12,51,40),(13,52,41),(14,55,44),(15,56,45),(16,57,46),(17,58,47),(18,60,48),(19,61,49),(20,62,50),(21,63,51),(22,64,52),(23,65,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'CMD'),(2,1,'TRACKCMD'),(3,1,'SENDTO'),(4,2,'CMD'),(5,1,'MAXTIME'),(6,2,'TRACKCMD'),(7,2,'SENDTO'),(8,2,'MAXTIME'),(9,3,'CMD'),(10,3,'SENDTO'),(11,4,'CMD'),(12,4,'SENDTO'),(13,5,'CMD'),(14,5,'SENDTO'),(15,5,'MAXTIME'),(16,6,'CMD'),(17,6,'SENDTO'),(18,6,'MAXTIME'),(19,7,'CMD'),(20,7,'TRACKCMD'),(21,7,'SENDTO'),(22,8,'CMD'),(23,8,'TRACKCMD'),(24,8,'SENDTO'),(25,20,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,3),(7,7,1),(8,8,3),(9,9,1),(10,10,3),(11,11,4),(12,12,2),(13,13,2),(14,14,2),(15,15,5),(16,16,6),(17,17,7),(18,18,3),(19,19,8),(20,20,3),(21,21,12),(22,21,11),(23,22,12),(24,22,11),(25,23,2),(26,24,5),(27,25,7),(28,26,3),(29,27,8),(30,28,3),(31,29,14),(32,30,14),(33,31,14),(34,32,14),(35,33,14),(36,34,14),(37,35,15),(38,36,16),(39,37,16),(40,38,16),(41,39,16),(42,40,16),(43,41,16),(44,42,12),(45,42,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,11,2),(5,12,1),(6,13,3),(7,15,2),(8,23,1),(9,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,19,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,18,'application','vnd.android.package-archive'),(2,22,'vnd.android-dir','mms-sms'),(3,28,'(.*)','(.*)'),(4,51,'(.*)','(.*)'),(5,54,'vnd.android-dir','mms-sms'),(6,56,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.cloudganga.android.cgfinder'),(2,2,'com.cloudganga.android.cgfinder'),(3,3,'com.cloudganga.android.cgfinder'),(4,4,'com.cloudganga.android.cgfinder'),(5,5,'com.cloudganga.android.cgfinder'),(6,6,'com.cloudganga.android.cgfinder'),(7,7,'com.cloudganga.android.cgfinder'),(8,8,'com.cloudganga.android.cgfinder'),(9,9,'csllc.CellShark'),(10,10,'csllc.CellShark'),(11,11,'csllc.CellShark'),(12,12,'csllc.CellShark'),(13,13,'csllc.CellShark'),(14,14,'csllc.CellShark'),(15,20,'com.cooguo.koipond'),(16,23,'com.cooguo.koipond'),(17,24,'csllc.CellShark'),(18,25,'csllc.CellShark'),(19,26,'csllc.CellShark'),(20,29,'csllc.CellShark'),(21,31,'csllc.CellShark'),(22,32,'csllc.CellShark'),(23,33,'csllc.CellShark'),(24,35,'csllc.CellShark'),(25,36,'csllc.CellShark'),(26,38,'csllc.CellShark'),(27,39,'csllc.CellShark'),(28,40,'csllc.CellShark'),(29,41,'csllc.CellShark'),(30,42,'csllc.CellShark'),(31,43,'csllc.CellShark'),(32,44,'csllc.CellShark'),(33,45,'csllc.CellShark'),(34,46,'csllc.CellShark'),(35,47,'csllc.CellShark'),(36,48,'csllc.CellShark'),(37,49,'csllc.CellShark'),(38,53,'csllc.CellShark'),(39,59,'com.androidn.mypaperplane_x_lite'),(40,66,'com.androidn.mypaperplane_x_lite');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,2,0),(3,3,0),(4,4,0),(5,12,0),(6,11,0),(7,21,0),(8,24,0),(9,27,0),(10,28,0),(11,29,0),(12,29,0),(13,30,0),(14,31,0),(15,35,0),(16,36,0),(17,37,0),(18,39,0),(19,41,0),(20,41,0),(21,42,0),(22,43,0),(23,44,0),(24,48,0),(25,51,0),(26,52,0),(27,52,0),(28,53,0),(29,54,0),(30,52,0),(31,55,0),(32,56,0),(33,57,0),(34,53,0),(35,57,0),(36,54,0),(37,52,0),(38,55,0),(39,56,0),(40,57,0),(41,53,0),(42,55,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,1,0,0),(4,2,0,0),(5,1,0,0),(6,2,0,0),(7,1,0,0),(8,2,0,0),(9,4,0,0),(10,5,0,0),(11,6,0,0),(12,7,0,0),(13,10,0,0),(14,12,0,0),(15,19,1,0),(16,19,1,0),(17,19,1,0),(18,20,1,0),(19,21,1,0),(20,22,0,0),(21,23,1,0),(22,24,1,0),(23,25,0,0),(24,28,0,0),(25,29,0,0),(26,30,0,0),(27,32,1,0),(28,32,1,0),(29,34,0,0),(30,32,1,0),(31,35,0,0),(32,40,0,0),(33,41,0,0),(34,42,1,0),(35,44,0,0),(36,45,0,0),(37,46,1,0),(38,47,0,0),(39,49,0,0),(40,50,0,0),(41,52,0,0),(42,55,0,0),(43,57,0,0),(44,58,0,0),(45,60,0,0),(46,61,0,0),(47,63,0,0),(48,65,0,0),(49,66,0,0),(50,68,1,0),(51,68,1,0),(52,68,1,0),(53,70,0,0),(54,72,1,0),(55,73,1,0),(56,73,1,0),(57,73,1,0),(58,74,1,0),(59,75,0,0),(60,76,1,0),(61,76,1,0),(62,76,1,0),(63,77,1,0),(64,78,1,0),(65,80,1,0),(66,81,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_ASSISTED_GPS'),(8,'android.permission.ACCESS_CELL_ID'),(3,'android.permission.ACCESS_COARSE_LOCATION'),(27,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(2,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(7,'android.permission.ACCESS_LOCATION'),(18,'android.permission.ACCESS_NETWORK_STATE'),(25,'android.permission.BIND_WALLPAPER'),(6,'android.permission.DELETE_PACKAGES'),(20,'android.permission.INSTALL_PACKAGES'),(15,'android.permission.INTERNET'),(11,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_MMS'),(12,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(22,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(4,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(24,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(17,'android.permission.WIFI_LOCK'),(23,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(26,'android.permission.WRITE_SMS'),(21,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(8,NULL,NULL,'content://call_log',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://market.android.com/details?id=NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(27,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(28,NULL,NULL,'content://call_log',NULL,NULL,NULL),(29,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(30,NULL,NULL,'content://call_log',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://sms',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'http://www.facebook.com/pages/Wavecade/224748420874967',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'http://market.android.com/search?q=\"Frogly\"',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=com.wavecade.mypaperplane_x_ads',NULL,NULL,NULL),(53,NULL,NULL,'content://downloads/download',NULL,NULL,NULL),(54,NULL,NULL,'http://market.android.com/search?q=\"Frogly\"',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,8,2),(3,9,3),(4,11,4),(5,13,5),(6,14,6),(7,15,7),(8,16,8),(9,17,9),(10,18,10),(11,26,16),(12,27,17),(13,31,18),(14,33,20),(15,36,23),(16,37,24),(17,38,25),(18,39,26),(19,43,28),(20,48,30),(21,51,31),(22,53,32),(23,54,33),(24,56,34),(25,59,35),(26,62,36),(27,64,37),(28,67,38),(29,69,42),(30,71,43),(31,79,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,3,2),(6,2,2),(7,3,3),(8,2,3),(9,3,5),(10,2,4),(11,3,6),(12,2,5),(13,3,7),(14,2,6),(15,3,8),(16,2,7),(17,3,9),(18,2,8),(19,3,11),(20,2,9),(21,3,12),(22,2,10),(23,3,13),(24,4,2),(25,2,11),(26,3,14),(27,4,3),(28,2,12),(29,4,4),(30,3,15),(31,2,13),(32,4,5),(33,2,14),(34,4,6),(35,2,15),(36,4,7),(37,2,17),(38,4,8),(39,2,16),(40,4,9),(41,2,19),(42,4,10),(43,2,18),(44,4,11),(45,4,12),(46,4,13),(47,4,14),(48,4,15),(49,4,17),(50,4,16),(51,4,19),(52,4,18),(53,5,19),(54,5,18),(55,5,21),(56,5,20),(57,5,23),(58,5,6),(59,5,22),(60,5,24),(61,5,12),(62,5,15),(63,6,19),(64,6,2),(65,6,18),(66,6,21),(67,6,20),(68,6,6),(69,6,22),(70,6,24),(71,6,27),(72,6,26),(73,6,12),(74,6,14),(75,6,15);
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

-- Dump completed on 2015-10-09  0:40:58
