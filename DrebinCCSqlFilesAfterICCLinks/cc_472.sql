-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_472
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(6,'android.media.action.IMAGE_CAPTURE'),(8,'android.settings.LOCATION_SOURCE_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'christmas.timer.iconosys',2),(2,'halloween.buzzer.iconosys',4),(3,'breakingdawn.countdown.iconosys.eng',1),(4,'eng.trickersticks.rockmugshots',2),(5,'iconosys.sweetheart.eng',2),(6,'mypatriotphoto.photo.iconosys.eng',2),(7,'forsalebuzzer.iconosys.eng',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'christmas.timer.iconosys.ChristmasTimer'),(2,2,'halloween.buzzer.iconosys.ChristmasTimer'),(3,3,'breakingdawn.countdown.iconosys.eng.ChristmasTimer'),(4,3,'breakingdawn.countdown.iconosys.eng.ContactsList'),(5,3,'breakingdawn.countdown.iconosys.eng.OtherApps'),(6,3,'breakingdawn.countdown.iconosys.eng.MessageService'),(7,4,'eng.trickersticks.rockmugshots.TrickerSticks'),(8,4,'eng.trickersticks.rockmugshots.GlowSticks'),(9,4,'eng.trickersticks.rockmugshots.ShowTerms'),(10,4,'eng.trickersticks.rockmugshots.RegistrationScreen'),(11,4,'eng.trickersticks.rockmugshots.AdView'),(12,4,'eng.trickersticks.rockmugshots.OtherApps'),(13,4,'eng.trickersticks.rockmugshots.LocationSender'),(14,5,'iconosys.sweetheart.eng.SweetHeart'),(15,5,'iconosys.sweetheart.eng.SendSweetHeart'),(16,5,'iconosys.sweetheart.eng.OtherApps'),(17,5,'iconosys.sweetheart.eng.ShowTerms'),(18,5,'iconosys.sweetheart.eng.RegistrationScreen'),(19,6,'mypatriotphoto.photo.iconosys.eng.MeInJail'),(20,6,'mypatriotphoto.photo.iconosys.eng.PhotoView'),(21,6,'mypatriotphoto.photo.iconosys.eng.OtherApps'),(22,6,'mypatriotphoto.photo.iconosys.eng.ShowTerms'),(23,6,'mypatriotphoto.photo.iconosys.eng.RegistrationScreen'),(24,6,'mypatriotphoto.photo.iconosys.eng.ShareImage'),(25,6,'mypatriotphoto.photo.iconosys.eng.ShowPopUp'),(26,6,'mypatriotphoto.photo.iconosys.eng.AdView'),(27,6,'mypatriotphoto.photo.iconosys.eng.LocationSender'),(28,3,'breakingdawn.countdown.iconosys.eng.OtherApps$1'),(29,3,'breakingdawn.countdown.iconosys.eng.OtherApps$2'),(30,7,'forsalebuzzer.iconosys.eng.FlyDay'),(31,7,'forsalebuzzer.iconosys.eng.OtherApps'),(32,7,'forsalebuzzer.iconosys.eng.CatchFly'),(33,7,'forsalebuzzer.iconosys.eng.SettingsFly'),(34,7,'forsalebuzzer.iconosys.eng.PostOffer'),(35,7,'forsalebuzzer.iconosys.eng.AddMembers'),(36,7,'forsalebuzzer.iconosys.eng.AdView'),(37,7,'forsalebuzzer.iconosys.eng.NewPostOffer'),(38,7,'forsalebuzzer.iconosys.eng.TeamCatchFly'),(39,7,'forsalebuzzer.iconosys.eng.AllCatchFly'),(40,7,'forsalebuzzer.iconosys.eng.DisplayMap'),(41,7,'forsalebuzzer.iconosys.eng.LocationSender'),(42,5,'iconosys.sweetheart.eng.OtherApps$4'),(43,4,'eng.trickersticks.rockmugshots.OtherApps$6'),(44,5,'iconosys.sweetheart.eng.OtherApps$3'),(45,4,'eng.trickersticks.rockmugshots.OtherApps$5'),(46,5,'iconosys.sweetheart.eng.OtherApps$2'),(47,4,'eng.trickersticks.rockmugshots.OtherApps$1'),(48,5,'iconosys.sweetheart.eng.SweetHeart$1'),(49,5,'iconosys.sweetheart.eng.OtherApps$1'),(50,4,'eng.trickersticks.rockmugshots.RegistrationScreen$1'),(51,5,'iconosys.sweetheart.eng.OtherApps$6'),(52,5,'iconosys.sweetheart.eng.RegistrationScreen$1'),(53,4,'eng.trickersticks.rockmugshots.OtherApps$3'),(54,5,'iconosys.sweetheart.eng.SendSweetHeart$2'),(55,5,'iconosys.sweetheart.eng.OtherApps$5'),(56,4,'eng.trickersticks.rockmugshots.OtherApps$4'),(57,4,'eng.trickersticks.rockmugshots.OtherApps$2'),(58,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$5'),(59,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$1'),(60,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$6'),(61,6,'mypatriotphoto.photo.iconosys.eng.PhotoView$1'),(62,6,'mypatriotphoto.photo.iconosys.eng.RegistrationScreen$1'),(63,7,'forsalebuzzer.iconosys.eng.OtherApps$1'),(64,6,'mypatriotphoto.photo.iconosys.eng.MeInJail$1'),(65,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$3'),(66,7,'forsalebuzzer.iconosys.eng.OtherApps$4'),(67,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$2'),(68,7,'forsalebuzzer.iconosys.eng.PostOffer$1'),(69,6,'mypatriotphoto.photo.iconosys.eng.MeInJail$2'),(70,6,'mypatriotphoto.photo.iconosys.eng.OtherApps$4'),(71,7,'forsalebuzzer.iconosys.eng.OtherApps$6'),(72,7,'forsalebuzzer.iconosys.eng.OtherApps$3'),(73,7,'forsalebuzzer.iconosys.eng.OtherApps$2'),(74,7,'forsalebuzzer.iconosys.eng.FlyDay$1'),(75,7,'forsalebuzzer.iconosys.eng.OtherApps$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'_who'),(2,20,'pick_photo'),(3,33,'(.*)'),(4,35,'(.*)'),(5,28,'(.*)'),(6,32,'(.*)'),(7,35,'place'),(8,26,'_who'),(9,35,'pic'),(10,20,'take_photo'),(11,33,'access_token'),(12,35,'access_token'),(13,28,'access_token'),(14,32,'access_token'),(15,34,'_who'),(16,35,'shop'),(17,35,'location'),(18,24,'saved_uri'),(19,35,'tags'),(20,35,'product');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,30,'a',1,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'a',0,NULL,NULL),(39,41,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,5),(4,4,4),(5,5,4),(6,6,3),(7,7,16),(8,8,10),(9,9,15),(10,10,12),(11,11,16),(12,12,12),(13,13,16),(14,14,7),(15,15,15),(16,16,12),(17,17,14),(18,18,8),(19,19,16),(20,20,10),(21,21,16),(22,22,10),(23,23,14),(24,24,8),(25,25,18),(26,26,12),(27,27,15),(28,28,8),(29,29,24),(30,30,16),(31,31,12),(32,32,14),(33,33,7),(34,34,12),(35,35,8),(36,36,8),(37,37,19),(38,38,21),(39,39,21),(40,40,24),(41,41,21),(42,42,19),(43,43,19),(44,44,19),(45,45,24),(46,46,20),(47,47,19),(48,48,20),(49,49,20),(50,50,23),(51,51,29),(52,52,20),(53,53,20),(54,54,28),(55,55,19),(56,56,32),(57,57,21),(58,58,28),(59,59,20),(60,60,28),(61,61,23),(62,62,29),(63,63,21),(64,64,23),(65,65,32),(66,66,32),(67,67,19),(68,68,28),(69,69,21),(70,70,29),(71,71,20),(72,72,19),(73,73,29),(74,74,20),(75,75,32),(76,76,29),(77,77,28),(78,78,28),(79,79,28),(80,80,29),(81,81,28),(82,82,28),(83,83,31),(84,84,32),(85,85,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(2,28,'<breakingdawn.countdown.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(3,29,'<breakingdawn.countdown.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(4,4,'<breakingdawn.countdown.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(5,4,'<breakingdawn.countdown.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(6,3,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(7,42,'<iconosys.sweetheart.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(8,10,'<eng.trickersticks.rockmugshots.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(9,15,'<iconosys.sweetheart.eng.SendSweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(10,43,'<eng.trickersticks.rockmugshots.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(11,44,'<iconosys.sweetheart.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(12,45,'<eng.trickersticks.rockmugshots.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(13,46,'<iconosys.sweetheart.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(14,7,'<eng.trickersticks.rockmugshots.TrickerSticks: void onResume()>',18,'a',NULL),(15,15,'<iconosys.sweetheart.eng.SendSweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(16,47,'<eng.trickersticks.rockmugshots.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(17,48,'<iconosys.sweetheart.eng.SweetHeart$1: void onClick(android.view.View)>',7,'a',NULL),(18,8,'<eng.trickersticks.rockmugshots.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(19,49,'<iconosys.sweetheart.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(20,50,'<eng.trickersticks.rockmugshots.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(21,51,'<iconosys.sweetheart.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(22,10,'<eng.trickersticks.rockmugshots.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(23,14,'<iconosys.sweetheart.eng.SweetHeart: void onResume()>',15,'a',NULL),(24,8,'<eng.trickersticks.rockmugshots.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(25,52,'<iconosys.sweetheart.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(26,53,'<eng.trickersticks.rockmugshots.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(27,54,'<iconosys.sweetheart.eng.SendSweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(28,8,'<eng.trickersticks.rockmugshots.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(29,24,'<mypatriotphoto.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(30,55,'<iconosys.sweetheart.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(31,56,'<eng.trickersticks.rockmugshots.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(32,14,'<iconosys.sweetheart.eng.SweetHeart: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(33,7,'<eng.trickersticks.rockmugshots.TrickerSticks: void onResume()>',14,'a',NULL),(34,57,'<eng.trickersticks.rockmugshots.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(35,8,'<eng.trickersticks.rockmugshots.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(36,8,'<eng.trickersticks.rockmugshots.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(37,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(38,58,'<mypatriotphoto.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(39,59,'<mypatriotphoto.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(40,24,'<mypatriotphoto.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(41,60,'<mypatriotphoto.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(42,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(43,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(44,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(45,24,'<mypatriotphoto.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(46,61,'<mypatriotphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(47,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(48,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(49,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(50,62,'<mypatriotphoto.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(51,63,'<forsalebuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(52,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(53,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(54,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(55,64,'<mypatriotphoto.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(56,34,'<forsalebuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(57,65,'<mypatriotphoto.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(58,30,'<forsalebuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(59,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(60,30,'<forsalebuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(61,23,'<mypatriotphoto.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(62,66,'<forsalebuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(63,67,'<mypatriotphoto.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(64,23,'<mypatriotphoto.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(65,68,'<forsalebuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(66,34,'<forsalebuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(67,69,'<mypatriotphoto.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(68,30,'<forsalebuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(69,70,'<mypatriotphoto.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(70,71,'<forsalebuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(71,20,'<mypatriotphoto.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(72,19,'<mypatriotphoto.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(73,72,'<forsalebuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(74,61,'<mypatriotphoto.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(75,34,'<forsalebuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(76,73,'<forsalebuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(77,74,'<forsalebuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(78,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(79,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(80,75,'<forsalebuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(81,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(82,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(83,33,'<forsalebuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(84,34,'<forsalebuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(85,30,'<forsalebuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,5,2),(4,7,2),(5,8,2),(6,9,2),(7,10,2),(8,12,2),(9,15,2),(10,17,2),(11,21,2),(12,22,4),(13,23,4),(14,24,5),(15,25,2),(16,26,2),(17,27,5),(18,28,5),(19,31,5),(20,32,5),(21,33,2),(22,34,5),(23,36,5),(24,37,5),(25,38,2),(26,39,2),(27,41,2),(28,46,4),(29,47,6),(30,48,7),(31,50,2),(32,56,2),(33,57,4),(34,61,2),(35,62,2),(36,64,8),(37,65,6),(38,67,2),(39,68,2),(40,70,2),(41,72,2),(42,73,8),(43,76,2),(44,80,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'breakingdawn/countdown/iconosys/eng/OtherApps'),(2,4,'breakingdawn/countdown/iconosys/eng/ContactsList'),(3,6,'eng/trickersticks/rockmugshots/LocationSender'),(4,11,'eng/trickersticks/rockmugshots/GlowSticks'),(5,13,'iconosys/sweetheart/eng/SendSweetHeart'),(6,14,'eng/trickersticks/rockmugshots/OtherApps'),(7,16,'eng/trickersticks/rockmugshots/ShowTerms'),(8,18,'eng/trickersticks/rockmugshots/LocationSender'),(9,19,'iconosys/sweetheart/eng/RegistrationScreen'),(10,20,'iconosys/sweetheart/eng/ShowTerms'),(11,29,'iconosys/sweetheart/eng/OtherApps'),(12,30,'eng/trickersticks/rockmugshots/RegistrationScreen'),(13,35,'eng/trickersticks/rockmugshots/AdView'),(14,40,'mypatriotphoto/photo/iconosys/eng/AdView'),(15,42,'mypatriotphoto/photo/iconosys/eng/RegistrationScreen'),(16,43,'mypatriotphoto/photo/iconosys/eng/OtherApps'),(17,44,'mypatriotphoto/photo/iconosys/eng/OtherApps'),(18,45,'mypatriotphoto/photo/iconosys/eng/ShareImage'),(19,49,'mypatriotphoto/photo/iconosys/eng/ShowTerms'),(20,51,'mypatriotphoto/photo/iconosys/eng/ShowPopUp'),(21,52,'mypatriotphoto/photo/iconosys/eng/MeInJail'),(22,53,'forsalebuzzer/iconosys/eng/DisplayMap'),(23,54,'mypatriotphoto/photo/iconosys/eng/PhotoView'),(24,55,'forsalebuzzer/iconosys/eng/OtherApps'),(25,58,'mypatriotphoto/photo/iconosys/eng/OtherApps'),(26,59,'forsalebuzzer/iconosys/eng/OtherApps'),(27,60,'mypatriotphoto/photo/iconosys/eng/LocationSender'),(28,63,'mypatriotphoto/photo/iconosys/eng/LocationSender'),(29,66,'mypatriotphoto/photo/iconosys/eng/PhotoView'),(30,69,'mypatriotphoto/photo/iconosys/eng/AdView'),(31,71,'mypatriotphoto/photo/iconosys/eng/ShowPopUp'),(32,74,'forsalebuzzer/iconosys/eng/CatchFly'),(33,75,'forsalebuzzer/iconosys/eng/PostOffer'),(34,77,'forsalebuzzer/iconosys/eng/AdView'),(35,78,'forsalebuzzer/iconosys/eng/SettingsFly'),(36,79,'forsalebuzzer/iconosys/eng/OtherApps');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,5,5),(4,7,6),(5,8,7),(6,9,8),(7,10,9),(8,12,11),(9,15,12),(10,17,13),(11,21,15),(12,22,16),(13,23,17),(14,25,18),(15,26,19),(16,33,20),(17,38,22),(18,39,23),(19,41,24),(20,46,25),(21,50,26),(22,56,27),(23,57,28),(24,61,29),(25,62,30),(26,67,32),(27,68,33),(28,70,34),(29,72,35),(30,76,36),(31,80,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,24,'android.intent.extra.INTENT'),(2,27,'android.intent.extra.INTENT'),(3,28,'android.intent.extra.TITLE'),(4,28,'android.intent.extra.INTENT'),(5,31,'android.intent.extra.INTENT'),(6,32,'android.intent.extra.TITLE'),(7,32,'android.intent.extra.INTENT'),(8,34,'android.intent.extra.INTENT'),(9,36,'android.intent.extra.TITLE'),(10,36,'android.intent.extra.INTENT'),(11,37,'android.intent.extra.TITLE'),(12,37,'android.intent.extra.INTENT'),(13,45,'saved_uri'),(14,47,'output'),(15,54,'take_photo'),(16,66,'pick_photo'),(17,65,'output');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,1),(9,9,3),(10,10,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,2),(5,6,1),(6,7,1),(7,8,1),(8,9,2),(9,10,1);
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
INSERT INTO `IFData` VALUES (1,9,'sms',NULL,NULL,NULL,NULL,NULL),(2,9,'mms',NULL,NULL,NULL,NULL,NULL),(3,9,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,9,NULL,NULL,NULL,NULL,'image','*'),(5,9,NULL,NULL,NULL,NULL,'video','*'),(6,9,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,48,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'breakingdawn.countdown.iconosys.eng'),(2,4,'breakingdawn.countdown.iconosys.eng'),(3,6,'eng.trickersticks.rockmugshots'),(4,11,'eng.trickersticks.rockmugshots'),(5,13,'iconosys.sweetheart.eng'),(6,14,'eng.trickersticks.rockmugshots'),(7,16,'eng.trickersticks.rockmugshots'),(8,18,'eng.trickersticks.rockmugshots'),(9,19,'iconosys.sweetheart.eng'),(10,20,'iconosys.sweetheart.eng'),(11,29,'iconosys.sweetheart.eng'),(12,30,'eng.trickersticks.rockmugshots'),(13,35,'eng.trickersticks.rockmugshots'),(14,40,'mypatriotphoto.photo.iconosys.eng'),(15,42,'mypatriotphoto.photo.iconosys.eng'),(16,43,'mypatriotphoto.photo.iconosys.eng'),(17,44,'mypatriotphoto.photo.iconosys.eng'),(18,45,'mypatriotphoto.photo.iconosys.eng'),(19,49,'mypatriotphoto.photo.iconosys.eng'),(20,51,'mypatriotphoto.photo.iconosys.eng'),(21,52,'mypatriotphoto.photo.iconosys.eng'),(22,53,'forsalebuzzer.iconosys.eng'),(23,54,'mypatriotphoto.photo.iconosys.eng'),(24,55,'forsalebuzzer.iconosys.eng'),(25,58,'mypatriotphoto.photo.iconosys.eng'),(26,59,'forsalebuzzer.iconosys.eng'),(27,60,'mypatriotphoto.photo.iconosys.eng'),(28,63,'mypatriotphoto.photo.iconosys.eng'),(29,66,'mypatriotphoto.photo.iconosys.eng'),(30,69,'mypatriotphoto.photo.iconosys.eng'),(31,71,'mypatriotphoto.photo.iconosys.eng'),(32,74,'forsalebuzzer.iconosys.eng'),(33,75,'forsalebuzzer.iconosys.eng'),(34,77,'forsalebuzzer.iconosys.eng'),(35,78,'forsalebuzzer.iconosys.eng'),(36,79,'forsalebuzzer.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,7,0),(7,14,0),(8,19,0),(9,20,0),(10,28,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,6,0,0),(5,7,1,0),(6,8,0,0),(7,10,1,0),(8,11,1,0),(9,12,1,0),(10,13,1,0),(11,14,0,0),(12,16,1,0),(13,17,0,0),(14,18,0,0),(15,19,1,0),(16,20,0,0),(17,21,1,0),(18,22,0,0),(19,23,0,0),(20,25,0,0),(21,26,1,0),(22,27,1,0),(23,28,1,0),(24,29,1,0),(25,30,1,0),(26,31,1,0),(27,29,1,0),(28,29,1,0),(29,32,0,0),(30,33,0,0),(31,29,1,0),(32,29,1,0),(33,34,1,0),(34,29,1,0),(35,35,0,0),(36,29,1,0),(37,29,1,0),(38,38,1,0),(39,39,1,0),(40,40,0,0),(41,41,1,0),(42,43,0,0),(43,44,0,0),(44,45,0,0),(45,46,0,0),(46,47,1,0),(47,48,1,0),(48,49,1,0),(49,50,0,0),(50,51,1,0),(51,52,0,0),(52,53,0,0),(53,54,0,0),(54,55,0,0),(55,56,0,0),(56,57,1,0),(57,58,1,0),(58,59,0,0),(59,60,0,0),(60,61,0,0),(61,62,1,0),(62,63,1,0),(63,64,0,0),(64,65,1,0),(65,66,1,0),(66,67,0,0),(67,69,1,0),(68,70,1,0),(69,72,0,0),(70,73,1,0),(71,74,0,0),(72,76,1,0),(73,77,1,0),(74,78,0,0),(75,79,0,0),(76,80,1,0),(77,81,0,0),(78,82,0,0),(79,83,0,0),(80,84,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,47,2,2,NULL),(2,24,2,2,NULL),(3,27,2,2,NULL),(4,28,2,2,NULL),(5,31,2,2,NULL),(6,32,2,2,NULL),(7,34,2,2,NULL),(8,36,2,2,NULL),(9,37,2,2,NULL),(10,65,2,2,NULL),(11,11,8,2,NULL),(12,30,10,2,NULL),(13,47,7,2,NULL),(14,24,7,2,NULL),(15,27,7,2,NULL),(16,28,7,2,NULL),(17,31,7,2,NULL),(18,32,7,2,NULL),(19,34,7,2,NULL),(20,36,7,2,NULL),(21,37,7,2,NULL),(22,65,7,2,NULL),(23,14,12,2,NULL),(24,35,11,2,NULL),(25,6,13,2,NULL),(26,18,13,2,NULL),(27,53,38,2,NULL),(28,59,29,2,NULL),(29,74,30,2,NULL),(30,75,32,2,NULL),(31,77,34,2,NULL),(32,78,31,2,NULL),(33,47,28,2,NULL),(34,24,28,2,NULL),(35,27,28,2,NULL),(36,28,28,2,NULL),(37,31,28,2,NULL),(38,32,28,2,NULL),(39,34,28,2,NULL),(40,36,28,2,NULL),(41,37,28,2,NULL),(42,65,28,2,NULL),(43,79,29,2,NULL),(44,55,29,2,NULL),(45,65,1,2,NULL),(46,65,3,2,NULL),(47,65,4,2,NULL),(48,65,5,2,NULL),(49,65,14,2,NULL),(50,65,19,2,NULL),(51,19,18,2,NULL),(52,29,16,2,NULL),(53,47,14,2,NULL),(54,24,14,2,NULL),(55,27,14,2,NULL),(56,28,14,2,NULL),(57,42,23,2,NULL),(58,31,14,2,NULL),(59,43,21,2,NULL),(60,32,14,2,NULL),(61,69,26,2,NULL),(62,34,14,2,NULL),(63,47,19,2,NULL),(64,36,14,2,NULL),(65,24,19,2,NULL),(66,37,14,2,NULL),(67,27,19,2,NULL),(68,28,19,2,NULL),(69,31,19,2,NULL),(70,32,19,2,NULL),(71,34,19,2,NULL),(72,36,19,2,NULL),(73,37,19,2,NULL),(74,51,25,2,NULL),(75,52,19,2,NULL),(76,58,21,2,NULL),(77,47,1,2,NULL),(78,47,3,2,NULL),(79,47,4,2,NULL),(80,47,5,2,NULL),(81,60,27,2,NULL),(82,63,27,2,NULL),(83,40,26,2,NULL),(84,44,21,2,NULL),(85,24,1,2,NULL),(86,27,1,2,NULL),(87,28,1,2,NULL),(88,31,1,2,NULL),(89,32,1,2,NULL),(90,34,1,2,NULL),(91,36,1,2,NULL),(92,37,1,2,NULL),(93,24,3,2,NULL),(94,27,3,2,NULL),(95,28,3,2,NULL),(96,31,3,2,NULL),(97,32,3,2,NULL),(98,34,3,2,NULL),(99,36,3,2,NULL),(100,37,3,2,NULL),(101,24,4,2,NULL),(102,27,4,2,NULL),(103,28,4,2,NULL),(104,31,4,2,NULL),(105,32,4,2,NULL),(106,34,4,2,NULL),(107,36,4,2,NULL),(108,37,4,2,NULL),(109,24,5,2,NULL),(110,27,5,2,NULL),(111,28,5,2,NULL),(112,31,5,2,NULL),(113,32,5,2,NULL),(114,34,5,2,NULL),(115,36,5,2,NULL),(116,37,5,2,NULL),(117,1,5,2,NULL),(118,4,4,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(22,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(23,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(24,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(27,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(30,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(32,NULL,NULL,'iconosys.com/product.php',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(37,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,3),(2,5,4),(3,15,10),(4,24,14),(5,37,21),(6,68,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,3),(14,4,4),(15,4,5),(16,4,6),(17,4,7),(18,4,8),(19,4,9),(20,4,10),(21,4,11),(22,5,1),(23,5,2),(24,5,3),(25,5,4),(26,6,1),(27,6,2),(28,6,3),(29,6,4),(30,6,5),(31,6,6),(32,6,7),(33,6,8),(34,6,9),(35,6,10),(36,6,11),(37,6,12),(38,7,1),(39,7,2),(40,7,3),(41,7,4),(42,7,5),(43,7,6),(44,7,7),(45,7,8),(46,7,9),(47,7,10),(48,7,11),(49,7,12);
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

-- Dump completed on 2015-10-12  3:30:36
