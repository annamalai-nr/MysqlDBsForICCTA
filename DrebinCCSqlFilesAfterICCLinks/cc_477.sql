-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_477
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
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(10,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PICK'),(4,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(8,'android.media.action.IMAGE_CAPTURE'),(7,'android.settings.LOCATION_SOURCE_SETTINGS'),(5,'wayne.jeff.dev.buzzer.shamrock.br');
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
INSERT INTO `Applications` VALUES (1,'wedding.buzzer.iconosys',1),(2,'chinesephilippines.buzzer.iconosys',1),(3,'madness.buzzer.iconosys',1),(4,'eng.trickersticks.fish',3),(5,'superbowl.buzzer.iconosys',6),(6,'shamrock.iconosys.br',2),(7,'familyphoto.iconosys.eng',7);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'wedding.buzzer.iconosys.ChristmasTimer'),(2,2,'chinesephilippines.buzzer.iconosys.ChristmasTimer'),(3,3,'madness.buzzer.iconosys.ChristmasTimer'),(4,4,'eng.trickersticks.fish.TrickerSticks'),(5,4,'eng.trickersticks.fish.GlowSticks'),(6,4,'eng.trickersticks.fish.Registration'),(7,5,'superbowl.buzzer.iconosys.ChristmasTimer'),(8,5,'superbowl.buzzer.iconosys.ContactsList'),(9,5,'superbowl.buzzer.iconosys.OtherApps'),(10,5,'superbowl.buzzer.iconosys.MessageService'),(11,6,'shamrock.iconosys.br.ShamRock'),(12,6,'shamrock.iconosys.br.MyMessage'),(13,6,'shamrock.iconosys.br.ContactsList'),(14,6,'shamrock.iconosys.br.ShamRockMain'),(15,6,'shamrock.iconosys.br.RegistrationScreen'),(16,6,'shamrock.iconosys.br.OtherApps'),(17,6,'shamrock.iconosys.br.SendWebMsg'),(18,6,'shamrock.iconosys.br.DisplayMap'),(19,6,'shamrock.iconosys.br.ShowTerms'),(20,6,'shamrock.iconosys.br.BuzzerSvc'),(21,6,'shamrock.iconosys.br.MsgSvc'),(22,6,'shamrock.iconosys.br.BootReceiver'),(23,7,'familyphoto.iconosys.eng.MeInJail'),(24,7,'familyphoto.iconosys.eng.PhotoView'),(25,7,'familyphoto.iconosys.eng.OtherApps'),(26,7,'familyphoto.iconosys.eng.ShowTerms'),(27,7,'familyphoto.iconosys.eng.RegistrationScreen'),(28,7,'familyphoto.iconosys.eng.ShareImage'),(29,7,'familyphoto.iconosys.eng.ShowPopUp'),(30,7,'familyphoto.iconosys.eng.AdView'),(31,7,'familyphoto.iconosys.eng.DisplayMap'),(32,7,'familyphoto.iconosys.eng.LocalContact'),(33,7,'familyphoto.iconosys.eng.LocationSender'),(34,5,'superbowl.buzzer.iconosys.OtherApps$1'),(35,5,'superbowl.buzzer.iconosys.OtherApps$2'),(36,6,'shamrock.iconosys.br.ShamRockMain$4'),(37,6,'shamrock.iconosys.br.MyMessage$2'),(38,6,'shamrock.iconosys.br.ShamRockMain$2'),(39,6,'shamrock.iconosys.br.OtherApps$1'),(40,6,'shamrock.iconosys.br.OtherApps$3'),(41,6,'shamrock.iconosys.br.OtherApps$4'),(42,6,'shamrock.iconosys.br.OtherApps$6'),(43,6,'shamrock.iconosys.br.SendWebMsg$2'),(44,6,'shamrock.iconosys.br.RegistrationScreen$1'),(45,6,'shamrock.iconosys.br.ShamRockMain$6'),(46,6,'shamrock.iconosys.br.OtherApps$5'),(47,6,'shamrock.iconosys.br.OtherApps$2'),(48,6,'shamrock.iconosys.br.ShamRockMain$3'),(49,6,'shamrock.iconosys.br.ShamRockMain$5'),(50,7,'familyphoto.iconosys.eng.RegistrationScreen$1'),(51,7,'familyphoto.iconosys.eng.OtherApps$1'),(52,7,'familyphoto.iconosys.eng.OtherApps$5'),(53,7,'familyphoto.iconosys.eng.PhotoView$1'),(54,7,'familyphoto.iconosys.eng.MeInJail$4'),(55,7,'familyphoto.iconosys.eng.OtherApps$2'),(56,7,'familyphoto.iconosys.eng.MeInJail$3'),(57,7,'familyphoto.iconosys.eng.MeInJail$1'),(58,7,'familyphoto.iconosys.eng.OtherApps$3'),(59,7,'familyphoto.iconosys.eng.OtherApps$6'),(60,7,'familyphoto.iconosys.eng.LocalContact$2'),(61,7,'familyphoto.iconosys.eng.MeInJail$2'),(62,7,'familyphoto.iconosys.eng.OtherApps$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,32,'location_string1'),(2,32,'location_string2'),(3,28,'saved_uri'),(4,30,'_who'),(5,24,'pick_photo'),(6,24,'take_photo');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,38,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,8),(3,3,7),(4,4,7),(5,5,8),(6,6,9),(7,7,9),(8,8,14),(9,9,12),(10,10,11),(11,11,17),(12,12,16),(13,13,16),(14,14,12),(15,15,17),(16,16,12),(17,17,16),(18,18,16),(19,19,17),(20,20,13),(21,21,13),(22,22,15),(23,23,22),(24,24,14),(25,25,11),(26,26,14),(27,27,14),(28,28,16),(29,29,16),(30,30,14),(31,31,14),(32,32,22),(33,33,14),(34,34,24),(35,35,24),(36,36,27),(37,37,24),(38,38,23),(39,39,25),(40,40,32),(41,41,28),(42,42,27),(43,43,32),(44,44,23),(45,45,24),(46,46,25),(47,47,23),(48,48,23),(49,49,24),(50,50,24),(51,51,23),(52,52,25),(53,53,28),(54,54,23),(55,55,23),(56,56,25),(57,57,25),(58,58,28),(59,59,23),(60,60,27),(61,61,23),(62,62,32),(63,63,23),(64,64,24),(65,65,24),(66,66,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<eng.trickersticks.fish.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,8,'<superbowl.buzzer.iconosys.ContactsList: void next()>',3,'p',NULL),(3,7,'<superbowl.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(4,7,'<superbowl.buzzer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(5,8,'<superbowl.buzzer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(6,34,'<superbowl.buzzer.iconosys.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(7,35,'<superbowl.buzzer.iconosys.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(8,36,'<shamrock.iconosys.br.ShamRockMain$4: void onClick(android.view.View)>',6,'a',NULL),(9,37,'<shamrock.iconosys.br.MyMessage$2: void onClick(android.view.View)>',6,'a',NULL),(10,11,'<shamrock.iconosys.br.ShamRock: void onResume()>',18,'a',NULL),(11,17,'<shamrock.iconosys.br.SendWebMsg: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(12,39,'<shamrock.iconosys.br.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(13,40,'<shamrock.iconosys.br.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(14,12,'<shamrock.iconosys.br.MyMessage: void onCreate(android.os.Bundle)>',12,'s',NULL),(15,17,'<shamrock.iconosys.br.SendWebMsg: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(16,12,'<shamrock.iconosys.br.MyMessage: void onCreate(android.os.Bundle)>',16,'s',NULL),(17,41,'<shamrock.iconosys.br.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(18,42,'<shamrock.iconosys.br.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(19,43,'<shamrock.iconosys.br.SendWebMsg$2: void onClick(android.view.View)>',6,'a',NULL),(20,13,'<shamrock.iconosys.br.ContactsList: void onCreate(android.os.Bundle)>',25,'s',NULL),(21,13,'<shamrock.iconosys.br.ContactsList: void onCreate(android.os.Bundle)>',21,'s',NULL),(22,44,'<shamrock.iconosys.br.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(23,22,'<shamrock.iconosys.br.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(24,14,'<shamrock.iconosys.br.ShamRockMain: void onCreate(android.os.Bundle)>',32,'s',NULL),(25,11,'<shamrock.iconosys.br.ShamRock: void onResume()>',14,'a',NULL),(26,45,'<shamrock.iconosys.br.ShamRockMain$6: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,14,'<shamrock.iconosys.br.ShamRockMain: void onCreate(android.os.Bundle)>',28,'s',NULL),(28,46,'<shamrock.iconosys.br.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(29,47,'<shamrock.iconosys.br.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(30,14,'<shamrock.iconosys.br.ShamRockMain: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(31,48,'<shamrock.iconosys.br.ShamRockMain$3: void onClick(android.view.View)>',6,'a',NULL),(32,22,'<shamrock.iconosys.br.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(33,49,'<shamrock.iconosys.br.ShamRockMain$5: void onClick(android.view.View)>',14,'a',NULL),(34,24,'<familyphoto.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(35,24,'<familyphoto.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(36,50,'<familyphoto.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(37,24,'<familyphoto.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(38,23,'<familyphoto.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(39,51,'<familyphoto.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(40,32,'<familyphoto.iconosys.eng.LocalContact: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(41,28,'<familyphoto.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(42,27,'<familyphoto.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(43,32,'<familyphoto.iconosys.eng.LocalContact: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(44,23,'<familyphoto.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(45,24,'<familyphoto.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(46,52,'<familyphoto.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(47,23,'<familyphoto.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(48,23,'<familyphoto.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(49,53,'<familyphoto.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(50,24,'<familyphoto.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(51,54,'<familyphoto.iconosys.eng.MeInJail$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,55,'<familyphoto.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(53,28,'<familyphoto.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(54,56,'<familyphoto.iconosys.eng.MeInJail$3: void onClick(android.view.View)>',14,'a',NULL),(55,57,'<familyphoto.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(56,58,'<familyphoto.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(57,59,'<familyphoto.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(58,28,'<familyphoto.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(59,23,'<familyphoto.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(60,27,'<familyphoto.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(61,23,'<familyphoto.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(62,60,'<familyphoto.iconosys.eng.LocalContact$2: void onClick(android.view.View)>',6,'a',NULL),(63,61,'<familyphoto.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(64,53,'<familyphoto.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(65,24,'<familyphoto.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(66,62,'<familyphoto.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,5,2),(3,9,2),(4,10,2),(5,13,2),(6,14,2),(7,15,6),(8,22,7),(9,24,2),(10,25,2),(11,30,8),(12,34,2),(13,39,2),(14,40,6),(15,43,7),(16,44,2),(17,45,9),(18,46,9),(19,47,9),(20,48,9),(21,49,9),(22,50,9),(23,51,9),(24,52,9),(25,55,2),(26,56,2),(27,60,6),(28,63,10),(29,64,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/fish/GlowSticks'),(2,2,'superbowl/buzzer/iconosys/OtherApps'),(3,3,'superbowl/buzzer/iconosys/ContactsList'),(4,6,'shamrock/iconosys/br/SendWebMsg'),(5,7,'shamrock/iconosys/br/ContactsList'),(6,8,'shamrock/iconosys/br/ShamRockMain'),(7,11,'shamrock/iconosys/br/MsgSvc'),(8,12,'shamrock/iconosys/br/MsgSvc'),(9,16,'shamrock/iconosys/br/MsgSvc'),(10,17,'shamrock/iconosys/br/MsgSvc'),(11,18,'shamrock/iconosys/br/ShowTerms'),(12,19,'shamrock/iconosys/br/BuzzerSvc'),(13,20,'shamrock/iconosys/br/BuzzerSvc'),(14,21,'shamrock/iconosys/br/RegistrationScreen'),(15,23,'shamrock/iconosys/br/BuzzerSvc'),(16,26,'shamrock/iconosys/br/OtherApps'),(17,27,'shamrock/iconosys/br/MyMessage'),(18,28,'shamrock/iconosys/br/MsgSvc'),(19,29,'shamrock/iconosys/br/DisplayMap'),(20,31,'familyphoto/iconosys/eng/ShowTerms'),(21,32,'familyphoto/iconosys/eng/MeInJail'),(22,33,'familyphoto/iconosys/eng/RegistrationScreen'),(23,35,'familyphoto/iconosys/eng/OtherApps'),(24,36,'familyphoto/iconosys/eng/LocationSender'),(25,37,'familyphoto/iconosys/eng/AdView'),(26,38,'familyphoto/iconosys/eng/ShowPopUp'),(27,41,'familyphoto/iconosys/eng/ShareImage'),(28,42,'familyphoto/iconosys/eng/OtherApps'),(29,53,'familyphoto/iconosys/eng/DisplayMap'),(30,54,'familyphoto/iconosys/eng/PhotoView'),(31,57,'familyphoto/iconosys/eng/AdView'),(32,58,'familyphoto/iconosys/eng/OtherApps'),(33,59,'familyphoto/iconosys/eng/LocationSender'),(34,61,'familyphoto/iconosys/eng/PhotoView'),(35,62,'familyphoto/iconosys/eng/ShowPopUp');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,3),(2,5,4),(3,9,5),(4,10,6),(5,13,8),(6,14,9),(7,15,10),(8,24,11),(9,25,12),(10,34,13),(11,39,15),(12,40,16),(13,44,18),(14,55,19),(15,56,20),(16,60,21),(17,64,22);
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
INSERT INTO `IExtras` VALUES (1,30,'output'),(2,41,'saved_uri'),(3,45,'android.intent.extra.INTENT'),(4,46,'android.intent.extra.INTENT'),(5,47,'android.intent.extra.TITLE'),(6,47,'android.intent.extra.INTENT'),(7,48,'android.intent.extra.INTENT'),(8,49,'android.intent.extra.TITLE'),(9,49,'android.intent.extra.INTENT'),(10,50,'android.intent.extra.INTENT'),(11,51,'android.intent.extra.TITLE'),(12,51,'android.intent.extra.INTENT'),(13,52,'android.intent.extra.TITLE'),(14,52,'android.intent.extra.INTENT'),(15,54,'take_photo'),(16,61,'pick_photo');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,1),(9,9,3),(10,10,1),(11,11,4),(12,12,5),(13,13,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,2),(7,8,1),(8,10,1),(9,11,2);
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
INSERT INTO `IFData` VALUES (1,11,'sms',NULL,NULL,NULL,NULL,NULL),(2,11,'mms',NULL,NULL,NULL,NULL,NULL),(3,11,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,11,NULL,NULL,NULL,NULL,'image','*'),(5,11,NULL,NULL,NULL,NULL,'video','*'),(6,11,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,63,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.fish'),(2,2,'superbowl.buzzer.iconosys'),(3,3,'superbowl.buzzer.iconosys'),(4,6,'shamrock.iconosys.br'),(5,7,'shamrock.iconosys.br'),(6,8,'shamrock.iconosys.br'),(7,11,'shamrock.iconosys.br'),(8,12,'shamrock.iconosys.br'),(9,16,'shamrock.iconosys.br'),(10,17,'shamrock.iconosys.br'),(11,18,'shamrock.iconosys.br'),(12,19,'shamrock.iconosys.br'),(13,20,'shamrock.iconosys.br'),(14,21,'shamrock.iconosys.br'),(15,23,'shamrock.iconosys.br'),(16,26,'shamrock.iconosys.br'),(17,27,'shamrock.iconosys.br'),(18,28,'shamrock.iconosys.br'),(19,29,'shamrock.iconosys.br'),(20,31,'familyphoto.iconosys.eng'),(21,32,'familyphoto.iconosys.eng'),(22,33,'familyphoto.iconosys.eng'),(23,35,'familyphoto.iconosys.eng'),(24,36,'familyphoto.iconosys.eng'),(25,37,'familyphoto.iconosys.eng'),(26,38,'familyphoto.iconosys.eng'),(27,41,'familyphoto.iconosys.eng'),(28,42,'familyphoto.iconosys.eng'),(29,53,'familyphoto.iconosys.eng'),(30,54,'familyphoto.iconosys.eng'),(31,57,'familyphoto.iconosys.eng'),(32,58,'familyphoto.iconosys.eng'),(33,59,'familyphoto.iconosys.eng'),(34,61,'familyphoto.iconosys.eng'),(35,62,'familyphoto.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,7,0),(6,8,0),(7,9,0),(8,11,0),(9,22,0),(10,23,0),(11,24,0),(12,34,0),(13,22,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,0,0),(4,6,1,0),(5,7,1,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,12,1,0),(10,13,1,0),(11,14,0,0),(12,16,0,0),(13,17,1,0),(14,18,1,0),(15,19,1,0),(16,20,0,0),(17,21,0,0),(18,22,0,0),(19,23,0,0),(20,24,0,0),(21,25,0,0),(22,26,1,0),(23,27,0,0),(24,28,1,0),(25,29,1,0),(26,30,0,0),(27,31,0,0),(28,32,0,0),(29,33,0,0),(30,35,1,0),(31,36,0,0),(32,37,0,0),(33,38,0,0),(34,39,1,0),(35,41,0,0),(36,42,0,0),(37,44,0,0),(38,45,0,0),(39,46,1,0),(40,47,1,0),(41,49,0,0),(42,50,0,0),(43,51,1,0),(44,52,1,0),(45,53,1,0),(46,53,1,0),(47,53,1,0),(48,53,1,0),(49,53,1,0),(50,53,1,0),(51,53,1,0),(52,53,1,0),(53,54,0,0),(54,55,0,0),(55,56,1,0),(56,57,1,0),(57,58,0,0),(58,59,0,0),(59,60,0,0),(60,62,1,0),(61,63,0,0),(62,64,0,0),(63,65,1,0),(64,66,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,2,2,NULL),(2,45,2,2,NULL),(3,46,2,2,NULL),(4,47,2,2,NULL),(5,48,2,2,NULL),(6,49,2,2,NULL),(7,50,2,2,NULL),(8,51,2,2,NULL),(9,52,2,2,NULL),(10,8,14,2,NULL),(11,21,15,2,NULL),(12,30,11,2,NULL),(13,1,5,2,NULL),(14,45,11,2,NULL),(15,30,4,2,NULL),(16,46,11,2,NULL),(17,45,4,2,NULL),(18,47,11,2,NULL),(19,46,4,2,NULL),(20,48,11,2,NULL),(21,47,4,2,NULL),(22,49,11,2,NULL),(23,48,4,2,NULL),(24,50,11,2,NULL),(25,49,4,2,NULL),(26,51,11,2,NULL),(27,50,4,2,NULL),(28,52,11,2,NULL),(29,51,4,2,NULL),(30,11,21,2,NULL),(31,52,4,2,NULL),(32,12,21,2,NULL),(33,16,21,2,NULL),(34,17,21,2,NULL),(35,20,20,2,NULL),(36,23,20,2,NULL),(37,26,16,2,NULL),(38,19,20,2,NULL),(39,28,21,2,NULL),(40,30,22,2,NULL),(41,45,22,2,NULL),(42,46,22,2,NULL),(43,47,22,2,NULL),(44,48,22,2,NULL),(45,49,22,2,NULL),(46,50,22,2,NULL),(47,51,22,2,NULL),(48,52,22,2,NULL),(49,30,34,2,NULL),(50,45,34,2,NULL),(51,46,34,2,NULL),(52,47,34,2,NULL),(53,48,34,2,NULL),(54,49,34,2,NULL),(55,50,34,2,NULL),(56,51,34,2,NULL),(57,52,34,2,NULL),(58,30,1,2,NULL),(59,45,1,2,NULL),(60,46,1,2,NULL),(61,47,1,2,NULL),(62,48,1,2,NULL),(63,49,1,2,NULL),(64,50,1,2,NULL),(65,51,1,2,NULL),(66,52,1,2,NULL),(67,33,27,2,NULL),(68,37,30,2,NULL),(69,58,25,2,NULL),(70,30,23,2,NULL),(71,45,23,2,NULL),(72,46,23,2,NULL),(73,47,23,2,NULL),(74,48,23,2,NULL),(75,49,23,2,NULL),(76,50,23,2,NULL),(77,51,23,2,NULL),(78,52,23,2,NULL),(79,32,23,2,NULL),(80,38,29,2,NULL),(81,42,25,2,NULL),(82,30,3,2,NULL),(83,30,7,2,NULL),(84,30,8,2,NULL),(85,30,9,2,NULL),(86,36,33,2,NULL),(87,59,33,2,NULL),(88,35,25,2,NULL),(89,57,30,2,NULL),(90,45,3,2,NULL),(91,46,3,2,NULL),(92,47,3,2,NULL),(93,48,3,2,NULL),(94,49,3,2,NULL),(95,50,3,2,NULL),(96,51,3,2,NULL),(97,52,3,2,NULL),(98,45,7,2,NULL),(99,46,7,2,NULL),(100,47,7,2,NULL),(101,48,7,2,NULL),(102,49,7,2,NULL),(103,50,7,2,NULL),(104,51,7,2,NULL),(105,52,7,2,NULL),(106,45,8,2,NULL),(107,46,8,2,NULL),(108,47,8,2,NULL),(109,48,8,2,NULL),(110,49,8,2,NULL),(111,50,8,2,NULL),(112,51,8,2,NULL),(113,52,8,2,NULL),(114,45,9,2,NULL),(115,46,9,2,NULL),(116,47,9,2,NULL),(117,48,9,2,NULL),(118,49,9,2,NULL),(119,50,9,2,NULL),(120,51,9,2,NULL),(121,52,9,2,NULL),(122,2,9,2,NULL),(123,3,8,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.CAMERA'),(11,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.SEND_SMS'),(8,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,5,2),(3,15,7),(4,43,14),(5,48,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3),(13,5,1),(14,5,2),(15,5,3),(16,5,4),(17,6,1),(18,6,2),(19,6,3),(20,6,4),(21,6,5),(22,6,6),(23,6,7),(24,6,8),(25,7,1),(26,7,2),(27,7,3),(28,7,4),(29,7,6),(30,7,7),(31,7,8),(32,7,9),(33,7,10),(34,7,11),(35,7,12),(36,7,13);
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

-- Dump completed on 2015-10-12  3:30:37
