-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_482
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(2,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(8,'android.media.action.IMAGE_CAPTURE'),(9,'wayne.jeff.dev.fathers.day.cc');
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
INSERT INTO `Applications` VALUES (1,'animalseat.iconosys.eng',1),(2,'eng.trickersticks.dinosaurs',3),(3,'esp.santa.iconosys',2),(4,'keepflame.timer.iconosys.eng',2),(5,'euthanasiapoll.iconosys.eng',4),(6,'yippie.photo.iconosys.eng',2),(7,'fourthofjuly.iconosys.eng',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'animalseat.iconosys.eng.TrickerSticks'),(2,1,'animalseat.iconosys.eng.GlowSticks'),(3,1,'animalseat.iconosys.eng.ShowTerms'),(4,1,'animalseat.iconosys.eng.RegistrationScreen'),(5,1,'animalseat.iconosys.eng.AdView'),(6,3,'esp.santa.iconosys.MainScreen'),(7,1,'animalseat.iconosys.eng.OtherApps'),(8,1,'animalseat.iconosys.eng.LocationSender'),(9,3,'esp.santa.iconosys.Registration'),(10,3,'esp.santa.iconosys.WishListScreen'),(11,2,'eng.trickersticks.dinosaurs.TrickerSticks'),(12,3,'esp.santa.iconosys.LetterScreen'),(13,3,'esp.santa.iconosys.SentScreen'),(14,2,'eng.trickersticks.dinosaurs.GlowSticks'),(15,3,'esp.santa.iconosys.Login'),(16,2,'eng.trickersticks.dinosaurs.ShowTerms'),(17,3,'esp.santa.iconosys.ShowTerms'),(18,2,'eng.trickersticks.dinosaurs.RegistrationScreen'),(19,2,'eng.trickersticks.dinosaurs.AdView'),(20,4,'keepflame.timer.iconosys.eng.ChristmasTimer'),(21,2,'eng.trickersticks.dinosaurs.OtherAppsApps'),(22,2,'eng.trickersticks.dinosaurs.LocationSender'),(23,4,'keepflame.timer.iconosys.eng.ContactsList'),(24,4,'keepflame.timer.iconosys.eng.OtherApps'),(25,4,'keepflame.timer.iconosys.eng.RegistrationScreen'),(26,4,'keepflame.timer.iconosys.eng.ShowTerms'),(27,4,'keepflame.timer.iconosys.eng.AdView'),(28,4,'keepflame.timer.iconosys.eng.IconosysActivity'),(29,4,'keepflame.timer.iconosys.eng.MessageService'),(30,4,'keepflame.timer.iconosys.eng.LocationSender'),(31,5,'euthanasiapoll.iconosys.eng.PollApp'),(32,6,'yippie.photo.iconosys.eng.MeInJail'),(33,5,'euthanasiapoll.iconosys.eng.PollNew'),(34,5,'euthanasiapoll.iconosys.eng.ShowTerms'),(35,5,'euthanasiapoll.iconosys.eng.PollResult'),(36,6,'yippie.photo.iconosys.eng.PhotoView'),(37,5,'euthanasiapoll.iconosys.eng.AdView'),(38,5,'euthanasiapoll.iconosys.eng.OtherApps'),(39,5,'euthanasiapoll.iconosys.eng.IconosysActivity'),(40,5,'euthanasiapoll.iconosys.eng.RegistrationScreen'),(41,5,'euthanasiapoll.iconosys.eng.LocationSender'),(42,6,'yippie.photo.iconosys.eng.OtherApps'),(43,6,'yippie.photo.iconosys.eng.ShowTerms'),(44,6,'yippie.photo.iconosys.eng.RegistrationScreen'),(45,6,'yippie.photo.iconosys.eng.ShareImage'),(46,7,'fourthofjuly.iconosys.eng.Mother'),(47,6,'yippie.photo.iconosys.eng.ShowPopUp'),(48,6,'yippie.photo.iconosys.eng.AdView'),(49,6,'yippie.photo.iconosys.eng.LocationSender'),(50,7,'fourthofjuly.iconosys.eng.MyValentine'),(51,7,'fourthofjuly.iconosys.eng.OtherApps'),(52,7,'fourthofjuly.iconosys.eng.ItemDialog'),(53,7,'fourthofjuly.iconosys.eng.MyKissHugs'),(54,7,'fourthofjuly.iconosys.eng.ShowTerms'),(55,7,'fourthofjuly.iconosys.eng.RegistrationScreen'),(56,7,'fourthofjuly.iconosys.eng.SweetHeart'),(57,7,'fourthofjuly.iconosys.eng.PhotoView'),(58,7,'fourthofjuly.iconosys.eng.ShareImage'),(59,7,'fourthofjuly.iconosys.eng.ShowPopUp'),(60,7,'fourthofjuly.iconosys.eng.PopUp'),(61,7,'fourthofjuly.iconosys.eng.Wish'),(62,7,'fourthofjuly.iconosys.eng.Scheduler'),(63,7,'fourthofjuly.iconosys.eng.ScheduleEdit'),(64,7,'fourthofjuly.iconosys.eng.SchedulePopUp'),(65,7,'fourthofjuly.iconosys.eng.SchedulePreview'),(66,7,'fourthofjuly.iconosys.eng.MyMMS'),(67,7,'fourthofjuly.iconosys.eng.AdView'),(68,7,'fourthofjuly.iconosys.eng.ValentineSvc'),(69,7,'fourthofjuly.iconosys.eng.TickSvc'),(70,7,'fourthofjuly.iconosys.eng.LocationSender'),(71,7,'fourthofjuly.iconosys.eng.SchedulerService'),(72,7,'fourthofjuly.iconosys.eng.Adview'),(73,7,'fourthofjuly.iconosys.eng.BootReceiver'),(74,1,'animalseat.iconosys.eng.OtherApps$5'),(75,1,'animalseat.iconosys.eng.OtherApps$1'),(76,1,'animalseat.iconosys.eng.OtherApps$2'),(77,1,'animalseat.iconosys.eng.OtherApps$6'),(78,1,'animalseat.iconosys.eng.RegistrationScreen$1'),(79,3,'esp.santa.iconosys.MainScreen$1'),(80,1,'animalseat.iconosys.eng.OtherApps$4'),(81,1,'animalseat.iconosys.eng.OtherApps$3'),(82,3,'esp.santa.iconosys.MainScreen$3'),(83,3,'esp.santa.iconosys.Registration$3'),(84,3,'esp.santa.iconosys.MainScreen$4'),(85,2,'eng.trickersticks.dinosaurs.RegistrationScreen$1'),(86,4,'keepflame.timer.iconosys.eng.OtherApps$6'),(87,4,'keepflame.timer.iconosys.eng.OtherApps$4'),(88,4,'keepflame.timer.iconosys.eng.OtherApps$5'),(89,4,'keepflame.timer.iconosys.eng.OtherApps$3'),(90,4,'keepflame.timer.iconosys.eng.OtherApps$2'),(91,4,'keepflame.timer.iconosys.eng.RegistrationScreen$1'),(92,4,'keepflame.timer.iconosys.eng.OtherApps$1'),(93,5,'euthanasiapoll.iconosys.eng.OtherApps$5'),(94,5,'euthanasiapoll.iconosys.eng.PollApp$2'),(95,6,'yippie.photo.iconosys.eng.OtherApps$1'),(96,5,'euthanasiapoll.iconosys.eng.OtherApps$3'),(97,5,'euthanasiapoll.iconosys.eng.OtherApps$1'),(98,6,'yippie.photo.iconosys.eng.MeInJail$2'),(99,5,'euthanasiapoll.iconosys.eng.RegistrationScreen$1'),(100,6,'yippie.photo.iconosys.eng.PhotoView$1'),(101,6,'yippie.photo.iconosys.eng.OtherApps$5'),(102,5,'euthanasiapoll.iconosys.eng.OtherApps$2'),(103,6,'yippie.photo.iconosys.eng.MeInJail$1'),(104,5,'euthanasiapoll.iconosys.eng.PollNew$3'),(105,6,'yippie.photo.iconosys.eng.OtherApps$2'),(106,5,'euthanasiapoll.iconosys.eng.OtherApps$4'),(107,6,'yippie.photo.iconosys.eng.OtherApps$6'),(108,5,'euthanasiapoll.iconosys.eng.OtherApps$6'),(109,5,'euthanasiapoll.iconosys.eng.PollApp$1'),(110,6,'yippie.photo.iconosys.eng.OtherApps$3'),(111,6,'yippie.photo.iconosys.eng.OtherApps$4'),(112,6,'yippie.photo.iconosys.eng.RegistrationScreen$1'),(113,7,'fourthofjuly.iconosys.eng.SweetHeart$2'),(114,7,'fourthofjuly.iconosys.eng.RegistrationScreen$1'),(115,7,'fourthofjuly.iconosys.eng.OtherApps$6'),(116,7,'fourthofjuly.iconosys.eng.PhotoView$1'),(117,7,'fourthofjuly.iconosys.eng.ScheduleEdit$3'),(118,7,'fourthofjuly.iconosys.eng.Scheduler$2'),(119,7,'fourthofjuly.iconosys.eng.Mother$5'),(120,7,'fourthofjuly.iconosys.eng.OtherApps$4'),(121,7,'fourthofjuly.iconosys.eng.OtherApps$2'),(122,7,'fourthofjuly.iconosys.eng.MyValentine$2'),(123,7,'fourthofjuly.iconosys.eng.PopUp$1'),(124,7,'fourthofjuly.iconosys.eng.Wish$2'),(125,7,'fourthofjuly.iconosys.eng.Wish$1'),(126,7,'fourthofjuly.iconosys.eng.Wish$4'),(127,7,'fourthofjuly.iconosys.eng.Mother$2'),(128,7,'fourthofjuly.iconosys.eng.Mother$3'),(129,7,'fourthofjuly.iconosys.eng.ScheduleEdit$4'),(130,7,'fourthofjuly.iconosys.eng.OtherApps$1'),(131,7,'fourthofjuly.iconosys.eng.OtherApps$3'),(132,7,'fourthofjuly.iconosys.eng.OtherApps$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'_who'),(2,19,'_who'),(3,27,'_who'),(4,45,'saved_uri'),(5,36,'pick_photo'),(6,33,'_result'),(7,33,'_answer'),(8,35,'_question'),(9,33,'_question'),(10,37,'_who'),(11,33,'_index'),(12,35,'_answer'),(13,36,'take_photo'),(14,48,'_who'),(15,61,'thesmsbg'),(16,61,'_icon'),(17,52,'items'),(18,64,'_id'),(19,65,'thebg'),(20,60,'reason'),(21,67,'_who'),(22,64,'_number'),(23,65,'M3'),(24,64,'_icon'),(25,58,'saved_uri'),(26,61,'thebg'),(27,52,'names'),(28,64,'_msg'),(29,52,'_id'),(30,63,'_id'),(31,52,'itemcount'),(32,57,'pick_photo'),(33,57,'take_photo');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,127,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,7),(5,5,7),(6,6,4),(7,7,7),(8,8,7),(9,9,1),(10,10,4),(11,11,4),(12,12,2),(13,13,6),(14,14,2),(15,15,6),(16,16,7),(17,17,6),(18,18,15),(19,19,2),(20,20,11),(21,21,12),(22,22,18),(23,23,7),(24,25,11),(25,24,6),(26,26,9),(27,27,14),(28,28,18),(29,29,6),(30,30,14),(31,31,6),(32,32,14),(33,33,10),(34,34,14),(35,35,6),(36,36,18),(37,37,14),(38,38,24),(39,39,23),(40,40,28),(41,41,28),(42,42,24),(43,43,24),(44,44,28),(45,45,28),(46,46,28),(47,47,23),(48,48,28),(49,48,20),(50,49,28),(51,49,20),(52,50,28),(53,51,24),(54,52,24),(55,53,25),(56,54,25),(57,55,28),(58,55,20),(59,56,20),(60,56,28),(61,57,25),(62,58,24),(63,59,38),(64,60,33),(65,61,31),(66,61,39),(67,62,42),(68,63,39),(69,63,31),(70,64,32),(71,65,36),(72,66,38),(73,67,44),(74,68,40),(75,69,45),(76,70,38),(77,71,32),(78,72,40),(79,73,45),(80,74,31),(81,74,39),(82,75,36),(83,76,39),(84,76,31),(85,77,36),(86,78,39),(87,78,31),(88,79,42),(89,80,38),(90,81,32),(91,82,33),(92,83,32),(93,84,39),(94,85,32),(95,86,33),(96,87,42),(97,88,38),(98,89,36),(99,90,33),(100,91,42),(101,92,39),(102,93,36),(103,94,38),(104,95,45),(105,96,31),(106,96,39),(107,97,40),(108,98,39),(109,98,31),(110,99,39),(111,99,31),(112,100,36),(113,101,42),(114,102,36),(115,103,32),(116,104,32),(117,105,44),(118,106,42),(119,107,36),(120,108,32),(121,109,44),(122,110,58),(123,111,50),(124,111,52),(125,111,56),(126,112,55),(127,112,50),(128,112,52),(129,113,46),(130,114,58),(131,114,52),(132,114,50),(133,115,63),(134,116,46),(135,117,55),(136,117,52),(137,117,50),(138,118,51),(139,118,52),(140,118,50),(141,119,57),(142,119,50),(143,119,52),(144,120,57),(145,121,57),(146,122,52),(147,122,50),(148,122,63),(149,123,62),(150,124,56),(151,125,64),(152,126,58),(153,127,57),(154,128,73),(155,129,46),(156,129,52),(157,129,50),(158,130,50),(159,130,52),(160,130,51),(161,131,57),(162,132,53),(163,133,51),(164,133,50),(165,133,52),(166,134,50),(167,135,56),(168,136,62),(169,137,57),(170,137,50),(171,137,52),(172,138,63),(173,139,60),(174,140,53),(175,141,46),(176,142,61),(177,143,61),(178,144,62),(179,145,50),(180,145,52),(181,145,61),(182,146,46),(183,147,46),(184,148,52),(185,148,50),(186,148,61),(187,149,61),(188,150,63),(189,151,52),(190,151,50),(191,151,55),(192,152,57),(193,153,46),(194,154,46),(195,155,61),(196,155,52),(197,155,50),(198,156,63),(199,157,73),(200,158,64),(201,159,61),(202,160,46),(203,160,50),(204,160,52),(205,161,46),(206,162,52),(207,162,50),(208,162,63),(209,163,51),(210,163,50),(211,163,52),(212,164,52),(213,164,46),(214,164,50),(215,165,52),(216,165,50),(217,165,51),(218,166,50),(219,166,52),(220,166,51),(221,167,61),(222,168,57),(223,169,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<animalseat.iconosys.eng.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(2,1,'<animalseat.iconosys.eng.TrickerSticks: void onResume()>',18,'a',NULL),(3,2,'<animalseat.iconosys.eng.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(4,74,'<animalseat.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(5,75,'<animalseat.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(6,4,'<animalseat.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(7,76,'<animalseat.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(8,77,'<animalseat.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(9,1,'<animalseat.iconosys.eng.TrickerSticks: void onResume()>',14,'a',NULL),(10,78,'<animalseat.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(11,4,'<animalseat.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(12,2,'<animalseat.iconosys.eng.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(13,79,'<esp.santa.iconosys.MainScreen$1: void onClick(android.view.View)>',6,'a',NULL),(14,2,'<animalseat.iconosys.eng.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(15,6,'<esp.santa.iconosys.MainScreen: void onActivityResult(int,int,android.content.Intent)>',33,'a',NULL),(16,80,'<animalseat.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(17,6,'<esp.santa.iconosys.MainScreen: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(18,15,'<esp.santa.iconosys.Login: void onClick(android.view.View)>',15,'a',NULL),(19,2,'<animalseat.iconosys.eng.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(20,11,'<eng.trickersticks.dinosaurs.TrickerSticks: void onResume()>',18,'a',NULL),(21,12,'<esp.santa.iconosys.LetterScreen: void sendLetter(java.lang.String)>',34,'a',NULL),(22,18,'<eng.trickersticks.dinosaurs.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(23,81,'<animalseat.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(24,82,'<esp.santa.iconosys.MainScreen$3: void onClick(android.view.View)>',37,'a',NULL),(25,11,'<eng.trickersticks.dinosaurs.TrickerSticks: void onResume()>',14,'a',NULL),(26,83,'<esp.santa.iconosys.Registration$3: void onClick(android.view.View)>',6,'a',NULL),(27,14,'<eng.trickersticks.dinosaurs.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(28,18,'<eng.trickersticks.dinosaurs.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(29,84,'<esp.santa.iconosys.MainScreen$4: void onClick(android.view.View)>',37,'a',NULL),(30,14,'<eng.trickersticks.dinosaurs.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(31,84,'<esp.santa.iconosys.MainScreen$4: void onClick(android.view.View)>',52,'a',NULL),(32,14,'<eng.trickersticks.dinosaurs.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(33,10,'<esp.santa.iconosys.WishListScreen: void sendWish()>',43,'a',NULL),(34,14,'<eng.trickersticks.dinosaurs.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(35,82,'<esp.santa.iconosys.MainScreen$3: void onClick(android.view.View)>',58,'a',NULL),(36,85,'<eng.trickersticks.dinosaurs.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(37,14,'<eng.trickersticks.dinosaurs.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(38,86,'<keepflame.timer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(39,23,'<keepflame.timer.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(40,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',36,'a',NULL),(41,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(42,87,'<keepflame.timer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(43,88,'<keepflame.timer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(44,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(45,28,'<keepflame.timer.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(46,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(47,23,'<keepflame.timer.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(48,20,'<keepflame.timer.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(49,20,'<keepflame.timer.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(50,28,'<keepflame.timer.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(51,89,'<keepflame.timer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(52,90,'<keepflame.timer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(53,91,'<keepflame.timer.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(54,25,'<keepflame.timer.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(55,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(56,28,'<keepflame.timer.iconosys.eng.IconosysActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(57,25,'<keepflame.timer.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(58,92,'<keepflame.timer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(59,93,'<euthanasiapoll.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(60,33,'<euthanasiapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',52,'a',NULL),(61,94,'<euthanasiapoll.iconosys.eng.PollApp$2: void onClick(android.view.View)>',6,'a',NULL),(62,95,'<yippie.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(63,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: void onResume()>',17,'a',NULL),(64,32,'<yippie.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(65,36,'<yippie.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(66,96,'<euthanasiapoll.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(67,44,'<yippie.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(68,40,'<euthanasiapoll.iconosys.eng.RegistrationScreen: void SendPhoneData()>',100,'s',NULL),(69,45,'<yippie.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(70,97,'<euthanasiapoll.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(71,98,'<yippie.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(72,99,'<euthanasiapoll.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(73,45,'<yippie.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(74,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(75,36,'<yippie.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(76,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(77,100,'<yippie.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(78,31,'<euthanasiapoll.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(79,101,'<yippie.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(80,102,'<euthanasiapoll.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(81,32,'<yippie.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(82,33,'<euthanasiapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',93,'a',NULL),(83,103,'<yippie.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(84,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(85,32,'<yippie.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(86,104,'<euthanasiapoll.iconosys.eng.PollNew$3: void onClick(android.view.View)>',6,'a',NULL),(87,105,'<yippie.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(88,106,'<euthanasiapoll.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(89,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(90,33,'<euthanasiapoll.iconosys.eng.PollNew: void onCreate(android.os.Bundle)>',81,'a',NULL),(91,107,'<yippie.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(92,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(93,100,'<yippie.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(94,108,'<euthanasiapoll.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(95,45,'<yippie.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(96,31,'<euthanasiapoll.iconosys.eng.PollApp: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(97,40,'<euthanasiapoll.iconosys.eng.RegistrationScreen: void SendAutoData()>',106,'s',NULL),(98,39,'<euthanasiapoll.iconosys.eng.IconosysActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(99,109,'<euthanasiapoll.iconosys.eng.PollApp$1: void onClick(android.view.View)>',16,'a',NULL),(100,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(101,110,'<yippie.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(102,36,'<yippie.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(103,32,'<yippie.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(104,32,'<yippie.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(105,44,'<yippie.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(106,111,'<yippie.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(107,36,'<yippie.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(108,32,'<yippie.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(109,112,'<yippie.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(110,58,'<fourthofjuly.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(111,113,'<fourthofjuly.iconosys.eng.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(112,55,'<fourthofjuly.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(113,46,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(114,58,'<fourthofjuly.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(115,63,'<fourthofjuly.iconosys.eng.ScheduleEdit: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(116,46,'<fourthofjuly.iconosys.eng.Mother: void onResume()>',10,'a',NULL),(117,114,'<fourthofjuly.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(118,115,'<fourthofjuly.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(119,116,'<fourthofjuly.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(120,57,'<fourthofjuly.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(121,57,'<fourthofjuly.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(122,117,'<fourthofjuly.iconosys.eng.ScheduleEdit$3: void onClick(android.view.View)>',17,'a',NULL),(123,118,'<fourthofjuly.iconosys.eng.Scheduler$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(124,56,'<fourthofjuly.iconosys.eng.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(125,64,'<fourthofjuly.iconosys.eng.SchedulePopUp: void onCreate(android.os.Bundle)>',10,'s',NULL),(126,58,'<fourthofjuly.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(127,57,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(128,73,'<fourthofjuly.iconosys.eng.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(129,119,'<fourthofjuly.iconosys.eng.Mother$5: void onClick(android.view.View)>',6,'a',NULL),(130,120,'<fourthofjuly.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(131,57,'<fourthofjuly.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(132,53,'<fourthofjuly.iconosys.eng.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(133,121,'<fourthofjuly.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(134,122,'<fourthofjuly.iconosys.eng.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(135,56,'<fourthofjuly.iconosys.eng.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(136,62,'<fourthofjuly.iconosys.eng.Scheduler: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(137,116,'<fourthofjuly.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(138,63,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(139,123,'<fourthofjuly.iconosys.eng.PopUp$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(140,53,'<fourthofjuly.iconosys.eng.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(141,46,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(142,61,'<fourthofjuly.iconosys.eng.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(143,61,'<fourthofjuly.iconosys.eng.Wish: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(144,62,'<fourthofjuly.iconosys.eng.Scheduler: void onCreate(android.os.Bundle)>',6,'s',NULL),(145,124,'<fourthofjuly.iconosys.eng.Wish$2: void onClick(android.view.View)>',6,'a',NULL),(146,46,'<fourthofjuly.iconosys.eng.Mother: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(147,46,'<fourthofjuly.iconosys.eng.Mother: void onCreate(android.os.Bundle)>',27,'s',NULL),(148,125,'<fourthofjuly.iconosys.eng.Wish$1: void onClick(android.view.View)>',15,'a',NULL),(149,61,'<fourthofjuly.iconosys.eng.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(150,63,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onCreate(android.os.Bundle)>',13,'s',NULL),(151,55,'<fourthofjuly.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(152,57,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(153,46,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(154,46,'<fourthofjuly.iconosys.eng.Mother: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(155,126,'<fourthofjuly.iconosys.eng.Wish$4: void onClick(android.view.View)>',6,'a',NULL),(156,63,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onCreate(android.os.Bundle)>',9,'s',NULL),(157,73,'<fourthofjuly.iconosys.eng.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(158,64,'<fourthofjuly.iconosys.eng.SchedulePopUp: void onCreate(android.os.Bundle)>',14,'s',NULL),(159,61,'<fourthofjuly.iconosys.eng.Wish: void onActivityResult(int,int,android.content.Intent)>',34,'a',NULL),(160,128,'<fourthofjuly.iconosys.eng.Mother$3: void onClick(android.view.View)>',7,'a',NULL),(161,46,'<fourthofjuly.iconosys.eng.Mother: void onCreate(android.os.Bundle)>',23,'s',NULL),(162,129,'<fourthofjuly.iconosys.eng.ScheduleEdit$4: void onClick(android.view.View)>',6,'a',NULL),(163,130,'<fourthofjuly.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(164,46,'<fourthofjuly.iconosys.eng.Mother: void openView(java.lang.String)>',5,'a',NULL),(165,131,'<fourthofjuly.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(166,132,'<fourthofjuly.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(167,61,'<fourthofjuly.iconosys.eng.Wish: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(168,57,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(169,62,'<fourthofjuly.iconosys.eng.Scheduler: void onCreate(android.os.Bundle)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,4,4),(3,6,4),(4,7,4),(5,14,4),(6,18,5),(7,21,4),(8,29,5),(9,34,4),(10,36,4),(11,37,4),(12,42,5),(13,43,4),(14,44,4),(15,50,4),(16,51,4),(17,53,4),(18,54,4),(19,57,4),(20,61,4),(21,65,6),(22,69,4),(23,70,4),(24,73,5),(25,74,5),(26,75,4),(27,76,4),(28,77,4),(29,80,4),(30,83,4),(31,84,7),(32,85,7),(33,87,7),(34,89,7),(35,90,7),(36,91,7),(37,93,7),(38,94,7),(39,96,4),(40,97,8),(41,101,4),(42,105,5),(43,107,5),(44,108,7),(45,109,7),(46,110,7),(47,111,7),(48,112,7),(49,113,7),(50,114,7),(51,115,7),(52,118,4),(53,120,6),(54,121,8),(55,129,4),(56,131,4),(57,148,5),(58,155,5),(59,156,4),(60,158,4),(61,159,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'animalseat/iconosys/eng/OtherApps'),(2,2,'animalseat/iconosys/eng/GlowSticks'),(3,5,'animalseat/iconosys/eng/LocationSender'),(4,8,'animalseat/iconosys/eng/RegistrationScreen'),(5,9,'animalseat/iconosys/eng/ShowTerms'),(6,10,'animalseat/iconosys/eng/LocationSender'),(7,11,'esp/santa/iconosys/Login'),(8,12,'animalseat/iconosys/eng/AdView'),(9,13,'esp/santa/iconosys/Login'),(10,15,'esp/santa/iconosys/Login'),(11,16,'esp/santa/iconosys/Registration'),(12,17,'eng/trickersticks/dinosaurs/GlowSticks'),(13,19,'esp/santa/iconosys/SentScreen'),(14,20,'eng/trickersticks/dinosaurs/LocationSender'),(15,22,'eng/trickersticks/dinosaurs/RegistrationScreen'),(16,23,'esp/santa/iconosys/Login'),(17,24,'esp/santa/iconosys/ShowTerms'),(18,25,'eng/trickersticks/dinosaurs/LocationSender'),(19,26,'esp/santa/iconosys/Login'),(20,27,'eng/trickersticks/dinosaurs/OtherApps'),(21,28,'esp/santa/iconosys/LetterScreen'),(22,30,'esp/santa/iconosys/SentScreen'),(23,31,'eng/trickersticks/dinosaurs/AdView'),(24,32,'esp/santa/iconosys/WishListScreen'),(25,33,'eng/trickersticks/dinosaurs/ShowTerms'),(26,35,'keepflame/timer/iconosys/eng/AdView'),(27,38,'keepflame/timer/iconosys/eng/OtherApps'),(28,39,'keepflame/timer/iconosys/eng/RegistrationScreen'),(29,40,'keepflame/timer/iconosys/eng/OtherApps'),(30,41,'keepflame/timer/iconosys/eng/ContactsList'),(31,45,'keepflame/timer/iconosys/eng/ShowTerms'),(32,46,'keepflame/timer/iconosys/eng/LocationSender'),(33,47,'keepflame/timer/iconosys/eng/AdView'),(34,48,'keepflame/timer/iconosys/eng/RegistrationScreen'),(35,49,'keepflame/timer/iconosys/eng/LocationSender'),(36,52,'euthanasiapoll/iconosys/eng/PollResult'),(37,55,'euthanasiapoll/iconosys/eng/RegistrationScreen'),(38,56,'yippie/photo/iconosys/eng/AdView'),(39,58,'yippie/photo/iconosys/eng/LocationSender'),(40,59,'euthanasiapoll/iconosys/eng/LocationSender'),(41,60,'yippie/photo/iconosys/eng/OtherApps'),(42,62,'yippie/photo/iconosys/eng/PhotoView'),(43,63,'euthanasiapoll/iconosys/eng/ShowTerms'),(44,64,'yippie/photo/iconosys/eng/AdView'),(45,66,'euthanasiapoll/iconosys/eng/RegistrationScreen'),(46,67,'yippie/photo/iconosys/eng/ShareImage'),(47,68,'euthanasiapoll/iconosys/eng/PollResult'),(48,71,'euthanasiapoll/iconosys/eng/AdView'),(49,72,'yippie/photo/iconosys/eng/PhotoView'),(50,78,'yippie/photo/iconosys/eng/ShowPopUp'),(51,79,'euthanasiapoll/iconosys/eng/AdView'),(52,81,'euthanasiapoll/iconosys/eng/OtherApps'),(53,82,'yippie/photo/iconosys/eng/ShowPopUp'),(54,86,'euthanasiapoll/iconosys/eng/AdView'),(55,88,'euthanasiapoll/iconosys/eng/LocationSender'),(56,92,'euthanasiapoll/iconosys/eng/PollNew'),(57,95,'yippie/photo/iconosys/eng/OtherApps'),(58,98,'yippie/photo/iconosys/eng/OtherApps'),(59,99,'yippie/photo/iconosys/eng/RegistrationScreen'),(60,100,'yippie/photo/iconosys/eng/LocationSender'),(61,102,'yippie/photo/iconosys/eng/MeInJail'),(62,103,'yippie/photo/iconosys/eng/ShowTerms'),(63,104,'fourthofjuly/iconosys/eng/AdView'),(64,106,'fourthofjuly/iconosys/eng/LocationSender'),(65,116,'fourthofjuly/iconosys/eng/RegistrationScreen'),(66,117,'fourthofjuly/iconosys/eng/ShowTerms'),(67,119,'fourthofjuly/iconosys/eng/ShowPopUp'),(68,122,'fourthofjuly/iconosys/eng/SchedulePreview'),(69,123,'fourthofjuly/iconosys/eng/ScheduleEdit'),(70,124,'fourthofjuly/iconosys/eng/SchedulerService'),(71,125,'fourthofjuly/iconosys/eng/OtherApps'),(72,126,'fourthofjuly/iconosys/eng/Mother'),(73,127,'fourthofjuly/iconosys/eng/TickSvc'),(74,128,'fourthofjuly/iconosys/eng/MyKissHugs'),(75,130,'fourthofjuly/iconosys/eng/TickSvc'),(76,132,'fourthofjuly/iconosys/eng/ItemDialog'),(77,133,'fourthofjuly/iconosys/eng/SchedulePopUp'),(78,134,'fourthofjuly/iconosys/eng/ShareImage'),(79,135,'fourthofjuly/iconosys/eng/Wish'),(80,136,'fourthofjuly/iconosys/eng/TickSvc'),(81,137,'fourthofjuly/iconosys/eng/Scheduler'),(82,138,'fourthofjuly/iconosys/eng/OtherApps'),(83,139,'fourthofjuly/iconosys/eng/SchedulerService'),(84,140,'fourthofjuly/iconosys/eng/MyMMS'),(85,141,'fourthofjuly/iconosys/eng/ValentineSvc'),(86,142,'fourthofjuly/iconosys/eng/SchedulePreview'),(87,143,'fourthofjuly/iconosys/eng/MyMMS'),(88,144,'fourthofjuly/iconosys/eng/SchedulerService'),(89,145,'fourthofjuly/iconosys/eng/LocationSender'),(90,146,'fourthofjuly/iconosys/eng/ShowPopUp'),(91,147,'fourthofjuly/iconosys/eng/OtherApps'),(92,149,'fourthofjuly/iconosys/eng/SchedulerService'),(93,150,'fourthofjuly/iconosys/eng/ValentineSvc'),(94,151,'fourthofjuly/iconosys/eng/SchedulerService'),(95,152,'fourthofjuly/iconosys/eng/AdView'),(96,153,'fourthofjuly/iconosys/eng/PhotoView'),(97,154,'fourthofjuly/iconosys/eng/ValentineSvc'),(98,157,'fourthofjuly/iconosys/eng/PopUp'),(99,160,'fourthofjuly/iconosys/eng/OtherApps'),(100,161,'fourthofjuly/iconosys/eng/SchedulerService');
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
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,6,3),(4,7,4),(5,14,6),(6,18,7),(7,21,8),(8,29,9),(9,34,11),(10,36,14),(11,37,15),(12,42,17),(13,43,18),(14,44,19),(15,50,20),(16,51,21),(17,53,22),(18,54,23),(19,57,24),(20,61,25),(21,69,27),(22,70,28),(23,73,30),(24,74,31),(25,75,32),(26,76,33),(27,77,34),(28,80,35),(29,83,36),(30,96,37),(31,101,38),(32,105,39),(33,107,40),(34,118,42),(35,129,44),(36,131,45),(37,148,48),(38,155,49),(39,156,50),(40,158,51),(41,159,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,30,'Key'),(2,52,'_answer'),(3,52,'_question'),(4,62,'pick_photo'),(5,67,'saved_uri'),(6,72,'take_photo'),(7,84,'android.intent.extra.INTENT'),(8,85,'android.intent.extra.INTENT'),(9,87,'android.intent.extra.TITLE'),(10,87,'android.intent.extra.INTENT'),(11,89,'android.intent.extra.INTENT'),(12,90,'android.intent.extra.TITLE'),(13,90,'android.intent.extra.INTENT'),(14,91,'android.intent.extra.INTENT'),(15,92,'_question'),(16,92,'_answer'),(17,93,'android.intent.extra.TITLE'),(18,92,'_index'),(19,93,'android.intent.extra.INTENT'),(20,92,'_result'),(21,94,'android.intent.extra.TITLE'),(22,94,'android.intent.extra.INTENT'),(23,97,'output'),(24,108,'android.intent.extra.INTENT'),(25,109,'android.intent.extra.INTENT'),(26,110,'android.intent.extra.TITLE'),(27,110,'android.intent.extra.INTENT'),(28,111,'android.intent.extra.INTENT'),(29,112,'android.intent.extra.TITLE'),(30,112,'android.intent.extra.INTENT'),(31,113,'android.intent.extra.INTENT'),(32,114,'android.intent.extra.TITLE'),(33,114,'android.intent.extra.INTENT'),(34,115,'android.intent.extra.TITLE'),(35,115,'android.intent.extra.INTENT'),(36,121,'output'),(37,122,'thebg'),(38,122,'M3'),(39,123,'_id'),(40,132,'itemcount'),(41,132,'_id'),(42,132,'items'),(43,132,'names'),(44,134,'saved_uri'),(45,135,'thebg'),(46,135,'thesmsbg'),(47,135,'_icon'),(48,142,'thebg'),(49,142,'M3'),(50,152,'_who'),(51,153,'take_photo'),(52,157,'reason');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,3),(11,11,9),(12,12,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,8,2),(8,9,1);
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
INSERT INTO `IFData` VALUES (1,8,'sms',NULL,NULL,NULL,NULL,NULL),(2,8,'mms',NULL,NULL,NULL,NULL,NULL),(3,8,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,8,NULL,NULL,NULL,NULL,'image','*'),(5,8,NULL,NULL,NULL,NULL,'video','*'),(6,8,NULL,NULL,NULL,NULL,'audio','*');
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
INSERT INTO `IMimeTypes` VALUES (1,65,'image','*'),(2,120,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'animalseat.iconosys.eng'),(2,2,'animalseat.iconosys.eng'),(3,5,'animalseat.iconosys.eng'),(4,8,'animalseat.iconosys.eng'),(5,9,'animalseat.iconosys.eng'),(6,10,'animalseat.iconosys.eng'),(7,11,'esp.santa.iconosys'),(8,12,'animalseat.iconosys.eng'),(9,13,'esp.santa.iconosys'),(10,15,'esp.santa.iconosys'),(11,16,'esp.santa.iconosys'),(12,17,'eng.trickersticks.dinosaurs'),(13,19,'esp.santa.iconosys'),(14,20,'eng.trickersticks.dinosaurs'),(15,23,'esp.santa.iconosys'),(16,22,'eng.trickersticks.dinosaurs'),(17,24,'esp.santa.iconosys'),(18,25,'eng.trickersticks.dinosaurs'),(19,26,'esp.santa.iconosys'),(20,27,'eng.trickersticks.dinosaurs'),(21,28,'esp.santa.iconosys'),(22,30,'esp.santa.iconosys'),(23,31,'eng.trickersticks.dinosaurs'),(24,32,'esp.santa.iconosys'),(25,33,'eng.trickersticks.dinosaurs'),(26,35,'keepflame.timer.iconosys.eng'),(27,38,'keepflame.timer.iconosys.eng'),(28,39,'keepflame.timer.iconosys.eng'),(29,40,'keepflame.timer.iconosys.eng'),(30,41,'keepflame.timer.iconosys.eng'),(31,45,'keepflame.timer.iconosys.eng'),(32,46,'keepflame.timer.iconosys.eng'),(33,47,'keepflame.timer.iconosys.eng'),(34,48,'keepflame.timer.iconosys.eng'),(35,49,'keepflame.timer.iconosys.eng'),(36,52,'euthanasiapoll.iconosys.eng'),(37,55,'euthanasiapoll.iconosys.eng'),(38,56,'yippie.photo.iconosys.eng'),(39,58,'yippie.photo.iconosys.eng'),(40,59,'euthanasiapoll.iconosys.eng'),(41,60,'yippie.photo.iconosys.eng'),(42,62,'yippie.photo.iconosys.eng'),(43,63,'euthanasiapoll.iconosys.eng'),(44,64,'yippie.photo.iconosys.eng'),(45,66,'euthanasiapoll.iconosys.eng'),(46,67,'yippie.photo.iconosys.eng'),(47,68,'euthanasiapoll.iconosys.eng'),(48,71,'euthanasiapoll.iconosys.eng'),(49,72,'yippie.photo.iconosys.eng'),(50,78,'yippie.photo.iconosys.eng'),(51,79,'euthanasiapoll.iconosys.eng'),(52,81,'euthanasiapoll.iconosys.eng'),(53,82,'yippie.photo.iconosys.eng'),(54,86,'euthanasiapoll.iconosys.eng'),(55,88,'euthanasiapoll.iconosys.eng'),(56,92,'euthanasiapoll.iconosys.eng'),(57,95,'yippie.photo.iconosys.eng'),(58,98,'yippie.photo.iconosys.eng'),(59,99,'yippie.photo.iconosys.eng'),(60,100,'yippie.photo.iconosys.eng'),(61,102,'yippie.photo.iconosys.eng'),(62,103,'yippie.photo.iconosys.eng'),(63,104,'fourthofjuly.iconosys.eng'),(64,106,'fourthofjuly.iconosys.eng'),(65,116,'fourthofjuly.iconosys.eng'),(66,117,'fourthofjuly.iconosys.eng'),(67,119,'fourthofjuly.iconosys.eng'),(68,122,'fourthofjuly.iconosys.eng'),(69,123,'fourthofjuly.iconosys.eng'),(70,124,'fourthofjuly.iconosys.eng'),(71,125,'fourthofjuly.iconosys.eng'),(72,126,'fourthofjuly.iconosys.eng'),(73,127,'fourthofjuly.iconosys.eng'),(74,128,'fourthofjuly.iconosys.eng'),(75,130,'fourthofjuly.iconosys.eng'),(76,132,'fourthofjuly.iconosys.eng'),(77,133,'fourthofjuly.iconosys.eng'),(78,134,'fourthofjuly.iconosys.eng'),(79,135,'fourthofjuly.iconosys.eng'),(80,136,'fourthofjuly.iconosys.eng'),(81,137,'fourthofjuly.iconosys.eng'),(82,138,'fourthofjuly.iconosys.eng'),(83,139,'fourthofjuly.iconosys.eng'),(84,140,'fourthofjuly.iconosys.eng'),(85,141,'fourthofjuly.iconosys.eng'),(86,142,'fourthofjuly.iconosys.eng'),(87,143,'fourthofjuly.iconosys.eng'),(88,144,'fourthofjuly.iconosys.eng'),(89,145,'fourthofjuly.iconosys.eng'),(90,146,'fourthofjuly.iconosys.eng'),(91,147,'fourthofjuly.iconosys.eng'),(92,149,'fourthofjuly.iconosys.eng'),(93,150,'fourthofjuly.iconosys.eng'),(94,151,'fourthofjuly.iconosys.eng'),(95,152,'fourthofjuly.iconosys.eng'),(96,153,'fourthofjuly.iconosys.eng'),(97,154,'fourthofjuly.iconosys.eng'),(98,157,'fourthofjuly.iconosys.eng'),(99,160,'fourthofjuly.iconosys.eng'),(100,161,'fourthofjuly.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,11,0),(4,20,0),(5,23,0),(6,31,0),(7,32,0),(8,36,0),(9,46,0),(10,73,0),(11,74,0),(12,73,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,1,0),(4,5,1,0),(5,6,0,0),(6,7,1,0),(7,8,1,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,13,0,0),(12,14,0,0),(13,15,0,0),(14,16,1,0),(15,17,0,0),(16,18,0,0),(17,20,0,0),(18,19,1,0),(19,21,0,0),(20,22,0,0),(21,23,1,0),(22,25,0,0),(23,24,0,0),(24,26,0,0),(25,28,0,0),(26,29,0,0),(27,30,0,0),(28,31,0,0),(29,32,1,0),(30,33,0,0),(31,34,0,0),(32,35,0,0),(33,36,0,0),(34,38,1,0),(35,40,0,0),(36,42,1,0),(37,43,1,0),(38,45,0,0),(39,46,0,0),(40,48,0,0),(41,49,0,0),(42,50,1,0),(43,51,1,0),(44,52,1,0),(45,53,0,0),(46,54,0,0),(47,55,0,0),(48,56,0,0),(49,57,0,0),(50,58,1,0),(51,59,1,0),(52,60,0,0),(53,61,1,0),(54,62,1,0),(55,63,0,0),(56,64,0,0),(57,66,1,0),(58,67,0,0),(59,68,0,0),(60,69,0,0),(61,70,1,0),(62,71,0,0),(63,72,0,0),(64,73,0,0),(65,75,1,0),(66,76,0,0),(67,77,0,0),(68,78,0,0),(69,79,1,0),(70,80,1,0),(71,82,0,0),(72,83,0,0),(73,84,1,0),(74,85,1,0),(75,86,1,0),(76,87,1,0),(77,88,1,0),(78,89,0,0),(79,90,0,0),(80,91,1,0),(81,92,0,0),(82,93,0,0),(83,94,1,0),(84,95,1,0),(85,95,1,0),(86,96,0,0),(87,95,1,0),(88,97,0,0),(89,95,1,0),(90,95,1,0),(91,95,1,0),(92,99,0,0),(93,95,1,0),(94,95,1,0),(95,100,0,0),(96,101,1,0),(97,102,1,0),(98,103,0,0),(99,104,0,0),(100,105,0,0),(101,106,1,0),(102,107,0,0),(103,109,0,0),(104,110,0,0),(105,111,1,0),(106,112,0,0),(107,113,1,0),(108,114,1,0),(109,114,1,0),(110,114,1,0),(111,114,1,0),(112,114,1,0),(113,114,1,0),(114,114,1,0),(115,114,1,0),(116,116,0,0),(117,117,0,0),(118,118,1,0),(119,119,0,0),(120,120,1,0),(121,121,1,0),(122,122,0,0),(123,123,0,0),(124,125,0,0),(125,126,0,0),(126,127,0,0),(127,128,0,0),(128,129,0,0),(129,130,1,0),(130,132,0,0),(131,133,1,0),(132,134,0,0),(133,136,0,0),(134,137,0,0),(135,139,0,0),(136,140,0,0),(137,141,0,0),(138,142,0,0),(139,144,0,0),(140,145,0,0),(141,147,0,0),(142,148,0,0),(143,149,0,0),(144,150,0,0),(145,151,0,0),(146,152,0,0),(147,153,0,0),(148,155,1,0),(149,156,0,0),(150,157,0,0),(151,158,0,0),(152,159,0,0),(153,160,0,0),(154,161,0,0),(155,162,1,0),(156,163,1,0),(157,164,0,0),(158,165,1,0),(159,166,1,0),(160,168,0,0),(161,169,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.CAMERA'),(10,'android.permission.GET_ACCOUNTS'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECORD_AUDIO'),(3,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(22,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(32,NULL,NULL,'http://advertise.iconosys.com',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(50,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(51,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,12,5),(2,37,10),(3,39,12),(4,41,13),(5,47,16),(6,74,26),(7,81,29),(8,115,41),(9,124,43),(10,143,46),(11,146,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,3,1),(16,2,4),(17,3,4),(18,2,5),(19,2,6),(20,2,7),(21,2,8),(22,2,9),(23,2,10),(24,2,11),(25,4,1),(26,4,3),(27,4,4),(28,4,5),(29,4,6),(30,4,8),(31,4,9),(32,4,10),(33,4,11),(34,5,1),(35,5,3),(36,6,1),(37,5,4),(38,6,2),(39,5,5),(40,6,3),(41,5,6),(42,6,4),(43,5,8),(44,6,5),(45,5,9),(46,6,6),(47,5,10),(48,6,7),(49,5,11),(50,6,8),(51,6,9),(52,6,10),(53,6,11),(54,6,12),(55,7,1),(56,7,3),(57,7,4),(58,7,5),(59,7,9),(60,7,10),(61,7,11),(62,7,12),(63,7,13),(64,7,14);
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

-- Dump completed on 2015-10-09  0:39:52
