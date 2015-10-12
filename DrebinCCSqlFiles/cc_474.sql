-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_474
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
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.CHOOSER'),(12,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(6,'android.intent.action.VIEW'),(11,'android.media.action.IMAGE_CAPTURE'),(9,'android.settings.LOCATION_SOURCE_SETTINGS'),(5,'com.google.android.c2dm.intent.RECEIVE'),(8,'com.google.android.c2dm.intent.REGISTER'),(3,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'eighteenbday.timer.iconosys',1),(2,'firstcollege.timer.iconosys',1),(3,'mymoms.photo.iconosys.eng',5),(4,'com.wTdtandroid',1329310614),(5,'com.wDokuStream',1330504689),(6,'clubbuzzer.iconosys.eng',2),(7,'com.iconosys.dealbuzzer.esp',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'com.wDokuStream');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eighteenbday.timer.iconosys.ChristmasTimer'),(2,1,'eighteenbday.timer.iconosys.ContactsList'),(3,1,'eighteenbday.timer.iconosys.MessageService'),(4,2,'firstcollege.timer.iconosys.ChristmasTimer'),(5,2,'firstcollege.timer.iconosys.ContactsList'),(6,2,'firstcollege.timer.iconosys.OtherApps'),(7,2,'firstcollege.timer.iconosys.MessageService'),(8,3,'mymoms.photo.iconosys.eng.MeInJail'),(9,3,'mymoms.photo.iconosys.eng.PhotoView'),(10,4,'com.wTdtandroid.MainNavigationActivity'),(11,5,'com.wDokuStream.MainNavigationActivity'),(12,4,'com.wTdtandroid.MessageViewer'),(13,5,'com.wDokuStream.MessageViewer'),(14,3,'mymoms.photo.iconosys.eng.OtherApps'),(15,4,'com.wTdtandroid.Server.C2DMClientReceiver'),(16,5,'com.wDokuStream.Server.C2DMClientReceiver'),(17,3,'mymoms.photo.iconosys.eng.ShowTerms'),(18,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(19,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(20,3,'mymoms.photo.iconosys.eng.RegistrationScreen'),(21,3,'mymoms.photo.iconosys.eng.ShareImage'),(22,3,'mymoms.photo.iconosys.eng.ShowPopUp'),(23,3,'mymoms.photo.iconosys.eng.AdView'),(24,3,'mymoms.photo.iconosys.eng.LocationSender'),(25,6,'clubbuzzer.iconosys.eng.FlyDay'),(26,6,'clubbuzzer.iconosys.eng.OtherApps'),(27,7,'com.iconosys.dealbuzzer.esp.FlyDay'),(28,6,'clubbuzzer.iconosys.eng.CatchFly'),(29,6,'clubbuzzer.iconosys.eng.SettingsFly'),(30,6,'clubbuzzer.iconosys.eng.PostOffer'),(31,7,'com.iconosys.dealbuzzer.esp.OtherApps'),(32,6,'clubbuzzer.iconosys.eng.AddMembers'),(33,7,'com.iconosys.dealbuzzer.esp.CatchFly'),(34,6,'clubbuzzer.iconosys.eng.AdView'),(35,7,'com.iconosys.dealbuzzer.esp.SettingsFly'),(36,6,'clubbuzzer.iconosys.eng.NewPostOffer'),(37,7,'com.iconosys.dealbuzzer.esp.PostOffer'),(38,6,'clubbuzzer.iconosys.eng.TeamCatchFly'),(39,7,'com.iconosys.dealbuzzer.esp.AddMembers'),(40,6,'clubbuzzer.iconosys.eng.AllCatchFly'),(41,7,'com.iconosys.dealbuzzer.esp.AdView'),(42,6,'clubbuzzer.iconosys.eng.DisplayMap'),(43,7,'com.iconosys.dealbuzzer.esp.NewPostOffer'),(44,6,'clubbuzzer.iconosys.eng.LocationSender'),(45,7,'com.iconosys.dealbuzzer.esp.TeamCatchFly'),(46,7,'com.iconosys.dealbuzzer.esp.AllCatchFly'),(47,7,'com.iconosys.dealbuzzer.esp.DisplayMap'),(48,2,'firstcollege.timer.iconosys.OtherApps$2'),(49,7,'com.iconosys.dealbuzzer.esp.LocationSender'),(50,2,'firstcollege.timer.iconosys.OtherApps$4'),(51,2,'firstcollege.timer.iconosys.OtherApps$5'),(52,2,'firstcollege.timer.iconosys.OtherApps$6'),(53,2,'firstcollege.timer.iconosys.OtherApps$3'),(54,2,'firstcollege.timer.iconosys.OtherApps$1'),(55,5,'com.wDokuStream.Utils.BrowserDownloadListener'),(56,5,'com.google.android.c2dm.C2DMessaging'),(57,3,'mymoms.photo.iconosys.eng.PhotoView$1'),(58,3,'mymoms.photo.iconosys.eng.OtherApps$4'),(59,6,'clubbuzzer.iconosys.eng.OtherApps$6'),(60,6,'clubbuzzer.iconosys.eng.OtherApps$3'),(61,3,'mymoms.photo.iconosys.eng.OtherApps$3'),(62,3,'mymoms.photo.iconosys.eng.OtherApps$5'),(63,6,'clubbuzzer.iconosys.eng.PostOffer$1'),(64,7,'com.iconosys.dealbuzzer.esp.OtherApps$3'),(65,3,'mymoms.photo.iconosys.eng.RegistrationScreen$1'),(66,3,'mymoms.photo.iconosys.eng.MeInJail$1'),(67,6,'clubbuzzer.iconosys.eng.OtherApps$4'),(68,7,'com.iconosys.dealbuzzer.esp.FlyDay$1'),(69,6,'clubbuzzer.iconosys.eng.OtherApps$5'),(70,7,'com.iconosys.dealbuzzer.esp.PostOffer$1'),(71,6,'clubbuzzer.iconosys.eng.OtherApps$2'),(72,7,'com.iconosys.dealbuzzer.esp.OtherApps$5'),(73,3,'mymoms.photo.iconosys.eng.OtherApps$2'),(74,6,'clubbuzzer.iconosys.eng.FlyDay$1'),(75,7,'com.iconosys.dealbuzzer.esp.OtherApps$1'),(76,6,'clubbuzzer.iconosys.eng.OtherApps$1'),(77,7,'com.iconosys.dealbuzzer.esp.OtherApps$4'),(78,3,'mymoms.photo.iconosys.eng.OtherApps$1'),(79,7,'com.iconosys.dealbuzzer.esp.OtherApps$6'),(80,3,'mymoms.photo.iconosys.eng.OtherApps$6'),(81,3,'mymoms.photo.iconosys.eng.MeInJail$2'),(82,7,'com.iconosys.dealbuzzer.esp.OtherApps$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,19,'url'),(2,19,'unregistered'),(3,19,'registration_id'),(4,13,'title'),(5,19,'error'),(6,13,'url'),(7,19,'title'),(8,19,'message'),(9,22,'show_key'),(10,23,'_who'),(11,36,'(.*)'),(12,21,'saved_uri'),(13,30,'(.*)'),(14,25,'(.*)'),(15,32,'(.*)'),(16,36,'pic'),(17,41,'_who'),(18,43,'access_token'),(19,39,'access_token'),(20,27,'access_token'),(21,37,'access_token'),(22,43,'(.*)'),(23,39,'(.*)'),(24,27,'(.*)'),(25,36,'tags'),(26,37,'(.*)'),(27,36,'place'),(28,43,'tags'),(29,43,'shop'),(30,43,'place'),(31,36,'product'),(32,43,'product'),(33,36,'shop'),(34,43,'pic'),(35,36,'access_token'),(36,30,'access_token'),(37,25,'access_token'),(38,32,'access_token'),(39,34,'_who'),(40,9,'take_photo'),(41,9,'pick_photo'),(42,36,'location'),(43,43,'location');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,18,NULL),(19,19,'r',1,18,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,49,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,6),(4,4,1),(5,5,5),(6,6,6),(7,7,6),(8,8,6),(9,9,6),(10,10,4),(11,11,4),(12,12,5),(13,13,6),(14,14,11),(15,15,11),(16,16,19),(17,16,11),(18,17,11),(19,18,11),(20,19,9),(21,20,9),(22,21,9),(23,22,8),(24,23,20),(25,24,8),(26,25,20),(27,26,21),(28,27,14),(29,28,9),(30,29,26),(31,30,21),(32,31,26),(33,32,14),(34,33,14),(35,34,25),(36,35,25),(37,36,9),(38,37,30),(39,38,31),(40,39,20),(41,40,29),(42,41,8),(43,42,26),(44,43,27),(45,44,9),(46,45,27),(47,46,27),(48,47,26),(49,48,8),(50,49,21),(51,50,37),(52,51,26),(53,52,9),(54,53,31),(55,54,25),(56,55,14),(57,56,27),(58,57,30),(59,58,9),(60,59,30),(61,60,9),(62,61,35),(63,62,25),(64,64,9),(65,63,31),(66,65,8),(67,66,26),(68,67,27),(69,68,8),(70,69,30),(71,70,25),(72,71,31),(73,72,14),(74,73,25),(75,74,31),(76,75,9),(77,76,25),(78,77,27),(79,78,30),(80,79,14),(81,80,37),(82,81,25),(83,82,9),(84,83,37),(85,84,9),(86,85,27),(87,86,25),(88,87,27),(89,88,8),(90,89,37),(91,90,25),(92,91,37),(93,92,31),(94,93,27),(95,94,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<eighteenbday.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(2,2,'<eighteenbday.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(3,48,'<firstcollege.timer.iconosys.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(4,1,'<eighteenbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(5,5,'<firstcollege.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(6,50,'<firstcollege.timer.iconosys.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(7,51,'<firstcollege.timer.iconosys.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(8,52,'<firstcollege.timer.iconosys.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(9,53,'<firstcollege.timer.iconosys.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(10,4,'<firstcollege.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(11,4,'<firstcollege.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(12,5,'<firstcollege.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(13,54,'<firstcollege.timer.iconosys.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(14,55,'<com.wDokuStream.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(15,11,'<com.wDokuStream.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(16,56,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(17,11,'<com.wDokuStream.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(18,55,'<com.wDokuStream.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(19,57,'<mymoms.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',10,'a',NULL),(20,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(21,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(22,8,'<mymoms.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(23,20,'<mymoms.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(24,8,'<mymoms.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(25,20,'<mymoms.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(26,21,'<mymoms.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(27,58,'<mymoms.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(28,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',93,'a',NULL),(29,59,'<clubbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(30,21,'<mymoms.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(31,60,'<clubbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(32,61,'<mymoms.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(33,62,'<mymoms.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(34,25,'<clubbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(35,25,'<clubbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(36,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',83,'a',NULL),(37,63,'<clubbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,64,'<com.iconosys.dealbuzzer.esp.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(39,65,'<mymoms.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(40,29,'<clubbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(41,66,'<mymoms.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(42,67,'<clubbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(43,68,'<com.iconosys.dealbuzzer.esp.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(44,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(45,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(46,27,'<com.iconosys.dealbuzzer.esp.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(47,69,'<clubbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(48,8,'<mymoms.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(49,21,'<mymoms.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(50,70,'<com.iconosys.dealbuzzer.esp.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,71,'<clubbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(52,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(53,72,'<com.iconosys.dealbuzzer.esp.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(54,25,'<clubbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(55,73,'<mymoms.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(56,27,'<com.iconosys.dealbuzzer.esp.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(57,30,'<clubbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(58,9,'<mymoms.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(59,30,'<clubbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(60,57,'<mymoms.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',24,'a',NULL),(61,35,'<com.iconosys.dealbuzzer.esp.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(62,74,'<clubbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,75,'<com.iconosys.dealbuzzer.esp.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(64,9,'<mymoms.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(65,8,'<mymoms.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(66,76,'<clubbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(67,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(68,8,'<mymoms.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(69,30,'<clubbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(70,25,'<clubbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(71,77,'<com.iconosys.dealbuzzer.esp.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(72,78,'<mymoms.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(73,25,'<clubbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(74,79,'<com.iconosys.dealbuzzer.esp.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(75,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(76,25,'<clubbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(77,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(78,30,'<clubbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(79,80,'<mymoms.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(80,37,'<com.iconosys.dealbuzzer.esp.PostOffer: void startPickActivity()>',4,'a',NULL),(81,25,'<clubbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(82,9,'<mymoms.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(83,37,'<com.iconosys.dealbuzzer.esp.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(84,9,'<mymoms.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(85,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(86,25,'<clubbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(87,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(88,81,'<mymoms.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(89,37,'<com.iconosys.dealbuzzer.esp.PostOffer: void startCameraActivity()>',9,'a',NULL),(90,25,'<clubbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(91,37,'<com.iconosys.dealbuzzer.esp.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(92,82,'<com.iconosys.dealbuzzer.esp.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(93,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(94,27,'<com.iconosys.dealbuzzer.esp.FlyDay: void onClick(android.view.View)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,6),(3,4,6),(4,5,6),(5,6,6),(6,9,6),(7,10,6),(8,11,7),(9,12,7),(10,13,7),(11,14,7),(12,15,7),(13,16,7),(14,17,7),(15,18,7),(16,19,8),(17,20,6),(18,21,6),(19,28,7),(20,29,7),(21,30,7),(22,31,7),(23,32,7),(24,33,7),(25,34,7),(26,35,7),(27,36,6),(28,38,6),(29,40,6),(30,41,6),(31,42,6),(32,45,9),(33,46,6),(34,50,6),(35,51,9),(36,54,6),(37,56,9),(38,57,6),(39,59,6),(40,61,6),(41,62,10),(42,64,11),(43,65,11),(44,68,9),(45,69,6),(46,70,10),(47,71,6),(48,74,6),(49,75,6),(50,77,6),(51,81,10),(52,82,6),(53,83,10),(54,85,12),(55,87,10),(56,90,11),(57,93,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eighteenbday/timer/iconosys/ContactsList'),(2,7,'firstcollege/timer/iconosys/ContactsList'),(3,8,'firstcollege/timer/iconosys/OtherApps'),(4,22,'mymoms/photo/iconosys/eng/ShowPopUp'),(5,23,'mymoms/photo/iconosys/eng/OtherApps'),(6,24,'mymoms/photo/iconosys/eng/ShowPopUp'),(7,25,'mymoms/photo/iconosys/eng/OtherApps'),(8,26,'mymoms/photo/iconosys/eng/LocationSender'),(9,27,'mymoms/photo/iconosys/eng/LocationSender'),(10,37,'mymoms/photo/iconosys/eng/ShowPopUp'),(11,39,'mymoms/photo/iconosys/eng/AdView'),(12,43,'clubbuzzer/iconosys/eng/DisplayMap'),(13,44,'mymoms/photo/iconosys/eng/ShowPopUp'),(14,47,'mymoms/photo/iconosys/eng/ShowTerms'),(15,48,'clubbuzzer/iconosys/eng/OtherApps'),(16,49,'mymoms/photo/iconosys/eng/PhotoView'),(17,52,'mymoms/photo/iconosys/eng/ShowPopUp'),(18,53,'com/iconosys/dealbuzzer/esp/OtherApps'),(19,55,'mymoms/photo/iconosys/eng/OtherApps'),(20,58,'mymoms/photo/iconosys/eng/MeInJail'),(21,60,'clubbuzzer/iconosys/eng/PostOffer'),(22,63,'clubbuzzer/iconosys/eng/OtherApps'),(23,67,'com/iconosys/dealbuzzer/esp/OtherApps'),(24,66,'mymoms/photo/iconosys/eng/ShareImage'),(25,72,'com/iconosys/dealbuzzer/esp/DisplayMap'),(26,73,'mymoms/photo/iconosys/eng/AdView'),(27,76,'clubbuzzer/iconosys/eng/SettingsFly'),(28,79,'clubbuzzer/iconosys/eng/AdView'),(29,78,'mymoms/photo/iconosys/eng/ShowPopUp'),(30,80,'com/iconosys/dealbuzzer/esp/PostOffer'),(31,84,'clubbuzzer/iconosys/eng/OtherApps'),(32,86,'mymoms/photo/iconosys/eng/ShowPopUp'),(33,88,'com/iconosys/dealbuzzer/esp/AdView'),(34,91,'clubbuzzer/iconosys/eng/CatchFly'),(35,89,'mymoms/photo/iconosys/eng/PhotoView'),(36,92,'com/iconosys/dealbuzzer/esp/OtherApps'),(37,94,'com/iconosys/dealbuzzer/esp/SettingsFly'),(38,95,'com/iconosys/dealbuzzer/esp/CatchFly');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,3),(2,3,5),(3,4,6),(4,5,7),(5,6,8),(6,9,10),(7,10,11),(8,20,12),(9,21,13),(10,36,15),(11,38,16),(12,40,17),(13,41,18),(14,42,19),(15,46,20),(16,50,21),(17,54,22),(18,57,23),(19,59,24),(20,61,25),(21,62,26),(22,69,27),(23,70,28),(24,71,29),(25,74,31),(26,75,32),(27,77,33),(28,81,34),(29,82,35),(30,83,36),(31,87,38),(32,93,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'android.intent.extra.INTENT'),(2,12,'android.intent.extra.INTENT'),(3,13,'android.intent.extra.TITLE'),(4,13,'android.intent.extra.INTENT'),(5,14,'android.intent.extra.INTENT'),(6,15,'android.intent.extra.TITLE'),(7,15,'android.intent.extra.INTENT'),(8,16,'android.intent.extra.INTENT'),(9,17,'android.intent.extra.TITLE'),(10,17,'android.intent.extra.INTENT'),(11,18,'android.intent.extra.TITLE'),(12,18,'android.intent.extra.INTENT'),(13,19,'sender'),(14,19,'app'),(15,22,'show_key'),(16,24,'show_key'),(17,28,'android.intent.extra.INTENT'),(18,29,'android.intent.extra.INTENT'),(19,30,'android.intent.extra.TITLE'),(20,30,'android.intent.extra.INTENT'),(21,31,'android.intent.extra.INTENT'),(22,32,'android.intent.extra.TITLE'),(23,32,'android.intent.extra.INTENT'),(24,33,'android.intent.extra.INTENT'),(25,34,'android.intent.extra.TITLE'),(26,34,'android.intent.extra.INTENT'),(27,35,'android.intent.extra.TITLE'),(28,35,'android.intent.extra.INTENT'),(29,37,'show_key'),(30,44,'show_key'),(31,49,'take_photo'),(32,52,'show_key'),(33,64,'output'),(34,65,'output'),(35,66,'saved_uri'),(36,78,'show_key'),(37,86,'show_key'),(38,89,'pick_photo'),(39,90,'output');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,3),(10,10,5),(11,11,1),(12,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,2),(5,7,1),(6,7,2),(7,8,1),(8,8,2),(9,9,3),(10,10,3),(11,11,1),(12,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'sms',NULL,NULL,NULL,NULL,NULL),(2,6,'mms',NULL,NULL,NULL,NULL,NULL),(3,6,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,6,NULL,NULL,NULL,NULL,'image','*'),(5,6,NULL,NULL,NULL,NULL,'video','*'),(6,6,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,85,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eighteenbday.timer.iconosys'),(2,7,'firstcollege.timer.iconosys'),(3,8,'firstcollege.timer.iconosys'),(4,22,'mymoms.photo.iconosys.eng'),(5,23,'mymoms.photo.iconosys.eng'),(6,24,'mymoms.photo.iconosys.eng'),(7,25,'mymoms.photo.iconosys.eng'),(8,26,'mymoms.photo.iconosys.eng'),(9,27,'mymoms.photo.iconosys.eng'),(10,37,'mymoms.photo.iconosys.eng'),(11,39,'mymoms.photo.iconosys.eng'),(12,43,'clubbuzzer.iconosys.eng'),(13,44,'mymoms.photo.iconosys.eng'),(14,47,'mymoms.photo.iconosys.eng'),(15,48,'clubbuzzer.iconosys.eng'),(16,49,'mymoms.photo.iconosys.eng'),(17,52,'mymoms.photo.iconosys.eng'),(18,53,'com.iconosys.dealbuzzer.esp'),(19,55,'mymoms.photo.iconosys.eng'),(20,58,'mymoms.photo.iconosys.eng'),(21,60,'clubbuzzer.iconosys.eng'),(22,63,'clubbuzzer.iconosys.eng'),(23,67,'com.iconosys.dealbuzzer.esp'),(24,66,'mymoms.photo.iconosys.eng'),(25,72,'com.iconosys.dealbuzzer.esp'),(26,73,'mymoms.photo.iconosys.eng'),(27,76,'clubbuzzer.iconosys.eng'),(28,79,'clubbuzzer.iconosys.eng'),(29,78,'mymoms.photo.iconosys.eng'),(30,80,'com.iconosys.dealbuzzer.esp'),(31,84,'clubbuzzer.iconosys.eng'),(32,86,'mymoms.photo.iconosys.eng'),(33,88,'com.iconosys.dealbuzzer.esp'),(34,91,'clubbuzzer.iconosys.eng'),(35,89,'mymoms.photo.iconosys.eng'),(36,92,'com.iconosys.dealbuzzer.esp'),(37,94,'com.iconosys.dealbuzzer.esp'),(38,95,'com.iconosys.dealbuzzer.esp');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,19,0),(10,19,0),(11,25,0),(12,27,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,3,1,0),(3,6,1,0),(4,7,1,0),(5,8,1,0),(6,9,1,0),(7,10,0,0),(8,11,0,0),(9,13,1,0),(10,14,1,0),(11,15,1,0),(12,15,1,0),(13,15,1,0),(14,15,1,0),(15,15,1,0),(16,15,1,0),(17,15,1,0),(18,15,1,0),(19,16,1,0),(20,17,1,0),(21,18,1,0),(22,19,0,0),(23,20,0,0),(24,21,0,0),(25,22,0,0),(26,23,0,0),(27,25,0,0),(28,26,1,0),(29,26,1,0),(30,26,1,0),(31,26,1,0),(32,26,1,0),(33,26,1,0),(34,26,1,0),(35,26,1,0),(36,27,1,0),(37,28,0,0),(38,29,1,0),(39,30,0,0),(40,31,1,0),(41,32,1,0),(42,33,1,0),(43,35,0,0),(44,36,0,0),(45,37,1,0),(46,38,1,0),(47,39,0,0),(48,40,0,0),(49,41,0,0),(50,42,1,0),(51,43,1,0),(52,44,0,0),(53,46,0,0),(54,47,1,0),(55,49,0,0),(56,50,1,0),(57,51,1,0),(58,52,0,0),(59,53,1,0),(60,54,0,0),(61,55,1,0),(62,56,1,0),(63,57,0,0),(64,58,1,0),(65,59,1,0),(66,60,0,0),(67,61,0,0),(68,62,1,0),(69,63,1,0),(70,65,1,0),(71,66,1,0),(72,67,0,0),(73,68,0,0),(74,71,1,0),(75,72,1,0),(76,73,0,0),(77,74,1,0),(78,75,0,0),(79,76,0,0),(80,77,0,0),(81,78,1,0),(82,79,1,0),(83,80,1,0),(84,81,0,0),(85,82,1,0),(86,84,0,0),(87,86,1,0),(88,87,0,0),(89,88,0,0),(90,89,1,0),(91,90,0,0),(92,91,0,0),(93,92,1,0),(94,93,0,0),(95,94,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.CAMERA'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS'),(13,'android.webkit.permission.PLUGIN'),(16,'com.google.android.c2dm.permission.RECEIVE'),(18,'com.google.android.c2dm.permission.SEND'),(17,'com.wDokuStream.permission.C2D_MESSAGE'),(14,'com.wTdtandroid.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (14,'s'),(17,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.wDokuStream',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(32,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(34,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(36,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,5,4),(4,12,9),(5,24,14),(6,70,30),(7,85,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,3),(8,2,4),(9,3,1),(10,3,2),(11,3,3),(12,3,4),(13,3,5),(14,3,6),(15,3,7),(16,3,8),(17,3,9),(18,3,10),(19,3,11),(20,3,12),(21,4,16),(22,5,17),(23,4,3),(24,5,16),(25,4,13),(26,5,3),(27,4,14),(28,5,13),(29,4,15),(30,5,15),(31,6,1),(32,6,2),(33,6,3),(34,6,4),(35,6,5),(36,6,6),(37,6,7),(38,7,1),(39,6,8),(40,7,2),(41,6,9),(42,7,3),(43,6,10),(44,7,4),(45,6,11),(46,7,5),(47,6,12),(48,7,6),(49,7,7),(50,7,8),(51,7,9),(52,7,10),(53,7,11),(54,7,12);
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

-- Dump completed on 2015-10-09  0:39:50
