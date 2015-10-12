-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_468
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.appwidget.action.APPWIDGET_CONFIGURE'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(10,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PICK'),(2,'android.intent.action.VIEW'),(7,'android.media.action.IMAGE_CAPTURE'),(9,'android.settings.LOCATION_SOURCE_SETTINGS'),(11,'wayne.jeff.dev.mothers.day.c');
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
INSERT INTO `Applications` VALUES (1,'pattysday.buzzer.iconosys',3),(2,'eng.trickersticks.presidents',2),(3,'eng.trickersticks.numbersone',2),(4,'sixteenbday.timer.iconosys',1),(5,'breakingdawn.countdown.iconosys.eng',6),(6,'mothersday.iconosys.esp',4),(7,'allstoresreg.iconosys.eng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'pattysday.buzzer.iconosys.ChristmasTimer'),(2,2,'eng.trickersticks.presidents.TrickerSticks'),(3,3,'eng.trickersticks.numbersone.TrickerSticks'),(4,2,'eng.trickersticks.presidents.GlowSticks'),(5,2,'eng.trickersticks.presidents.Registration'),(6,3,'eng.trickersticks.numbersone.GlowSticks'),(7,3,'eng.trickersticks.numbersone.Registration'),(8,4,'sixteenbday.timer.iconosys.ChristmasTimer'),(9,4,'sixteenbday.timer.iconosys.ContactsList'),(10,4,'sixteenbday.timer.iconosys.MessageService'),(11,5,'breakingdawn.countdown.iconosys.eng.ChristmasTimer'),(12,5,'breakingdawn.countdown.iconosys.eng.ContactsList'),(13,5,'breakingdawn.countdown.iconosys.eng.OtherApps'),(14,5,'breakingdawn.countdown.iconosys.eng.HogwartsWidgetConfgure'),(15,5,'breakingdawn.countdown.iconosys.eng.MessageService'),(16,5,'breakingdawn.countdown.iconosys.eng.HogwartsWidgetProvider'),(17,6,'mothersday.iconosys.esp.Mother'),(18,6,'mothersday.iconosys.esp.MyValentine'),(19,6,'mothersday.iconosys.esp.OtherApps'),(20,6,'mothersday.iconosys.esp.ItemDialog'),(21,6,'mothersday.iconosys.esp.MyKissHugs'),(22,6,'mothersday.iconosys.esp.ShowTerms'),(23,6,'mothersday.iconosys.esp.RegistrationScreen'),(24,6,'mothersday.iconosys.esp.SweetHeart'),(25,6,'mothersday.iconosys.esp.PhotoView'),(26,6,'mothersday.iconosys.esp.ShareImage'),(27,6,'mothersday.iconosys.esp.ShowPopUp'),(28,6,'mothersday.iconosys.esp.PopUp'),(29,6,'mothersday.iconosys.esp.Wish'),(30,6,'mothersday.iconosys.esp.Scheduler'),(31,6,'mothersday.iconosys.esp.ScheduleEdit'),(32,7,'allstoresreg.iconosys.eng.MyReceiptManager'),(33,6,'mothersday.iconosys.esp.SchedulePopUp'),(34,6,'mothersday.iconosys.esp.SchedulePreview'),(35,7,'allstoresreg.iconosys.eng.ShowPopUp'),(36,6,'mothersday.iconosys.esp.MyMMS'),(37,7,'allstoresreg.iconosys.eng.MileageAdd'),(38,6,'mothersday.iconosys.esp.AdView'),(39,7,'allstoresreg.iconosys.eng.OtherApps'),(40,6,'mothersday.iconosys.esp.ValentineSvc'),(41,7,'allstoresreg.iconosys.eng.ReviewSelection'),(42,6,'mothersday.iconosys.esp.TickSvc'),(43,7,'allstoresreg.iconosys.eng.TakePicture'),(44,6,'mothersday.iconosys.esp.LocationSender'),(45,7,'allstoresreg.iconosys.eng.Review'),(46,6,'mothersday.iconosys.esp.SchedulerService'),(47,7,'allstoresreg.iconosys.eng.DisplayCategory'),(48,6,'mothersday.iconosys.esp.AdvService'),(49,7,'allstoresreg.iconosys.eng.ShowCat'),(50,6,'mothersday.iconosys.esp.BootReceiver'),(51,7,'allstoresreg.iconosys.eng.Preview'),(52,7,'allstoresreg.iconosys.eng.SpreadSheet'),(53,7,'allstoresreg.iconosys.eng.MileageSheet'),(54,7,'allstoresreg.iconosys.eng.SaveSend'),(55,7,'allstoresreg.iconosys.eng.Mileage'),(56,7,'allstoresreg.iconosys.eng.ShowPopUpReport'),(57,7,'allstoresreg.iconosys.eng.AdView'),(58,7,'allstoresreg.iconosys.eng.RegistrationScreen'),(59,7,'allstoresreg.iconosys.eng.MileageSend'),(60,7,'allstoresreg.iconosys.eng.SelectRange'),(61,7,'allstoresreg.iconosys.eng.ReportSheet'),(62,7,'allstoresreg.iconosys.eng.ShowTerms'),(63,7,'allstoresreg.iconosys.eng.Settings'),(64,7,'allstoresreg.iconosys.eng.LocationSender'),(65,5,'breakingdawn.countdown.iconosys.eng.OtherApps$2'),(66,5,'breakingdawn.countdown.iconosys.eng.OtherApps$1'),(67,7,'allstoresreg.iconosys.eng.Settings$3'),(68,7,'allstoresreg.iconosys.eng.Mileage$8'),(69,7,'allstoresreg.iconosys.eng.MileageSend$1'),(70,7,'allstoresreg.iconosys.eng.MyReceiptManager$4'),(71,7,'allstoresreg.iconosys.eng.OtherApps$5'),(72,7,'allstoresreg.iconosys.eng.MyReceiptManager$2'),(73,7,'allstoresreg.iconosys.eng.MyReceiptManager$6'),(74,7,'allstoresreg.iconosys.eng.MyReceiptManager$3'),(75,7,'allstoresreg.iconosys.eng.Review$3'),(76,7,'allstoresreg.iconosys.eng.Mileage$4'),(77,7,'allstoresreg.iconosys.eng.RegistrationScreen$1'),(78,7,'allstoresreg.iconosys.eng.OtherApps$4'),(79,7,'allstoresreg.iconosys.eng.SelectRange$5'),(80,7,'allstoresreg.iconosys.eng.OtherApps$2'),(81,7,'allstoresreg.iconosys.eng.MyReceiptManager$1'),(82,7,'allstoresreg.iconosys.eng.OtherApps$3'),(83,7,'allstoresreg.iconosys.eng.SaveSend$4'),(84,7,'allstoresreg.iconosys.eng.OtherApps$1'),(85,7,'allstoresreg.iconosys.eng.Review$1'),(86,7,'allstoresreg.iconosys.eng.Mileage$5'),(87,7,'allstoresreg.iconosys.eng.OtherApps$6'),(88,6,'mothersday.iconosys.esp.OtherApps$1'),(89,6,'mothersday.iconosys.esp.PhotoView$1'),(90,6,'mothersday.iconosys.esp.MyValentine$2'),(91,6,'mothersday.iconosys.esp.Scheduler$2'),(92,6,'mothersday.iconosys.esp.OtherApps$5'),(93,6,'mothersday.iconosys.esp.OtherApps$3'),(94,6,'mothersday.iconosys.esp.OtherApps$6'),(95,6,'mothersday.iconosys.esp.SweetHeart$2'),(96,6,'mothersday.iconosys.esp.Mother$3'),(97,6,'mothersday.iconosys.esp.ScheduleEdit$4'),(98,6,'mothersday.iconosys.esp.RegistrationScreen$1'),(99,6,'mothersday.iconosys.esp.OtherApps$2'),(100,6,'mothersday.iconosys.esp.PopUp$1'),(101,6,'mothersday.iconosys.esp.Wish$4'),(102,6,'mothersday.iconosys.esp.Wish$2'),(103,6,'mothersday.iconosys.esp.Wish$1'),(104,6,'mothersday.iconosys.esp.OtherApps$4'),(105,6,'mothersday.iconosys.esp.Mother$5'),(106,6,'mothersday.iconosys.esp.ScheduleEdit$3'),(107,6,'mothersday.iconosys.esp.Mother$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'appWidgetId'),(2,32,'(.*)'),(3,41,'id'),(4,60,'id'),(5,60,'report_type'),(6,37,'_mileage'),(7,61,'id'),(8,32,'access_token'),(9,61,'Category'),(10,60,'Category'),(11,41,'report_type'),(12,52,'_cat'),(13,59,'_id'),(14,61,'range2'),(15,57,'_who'),(16,61,'range1'),(17,54,'_id'),(18,20,'items'),(19,26,'saved_uri'),(20,33,'_msg'),(21,33,'_id'),(22,29,'_icon'),(23,31,'_id'),(24,33,'_number'),(25,20,'_id'),(26,38,'_who'),(27,25,'pick_photo'),(28,33,'_icon'),(29,34,'thebg'),(30,29,'thesmsbg'),(31,28,'reason'),(32,25,'take_photo'),(33,34,'M3'),(34,20,'itemcount'),(35,20,'names'),(36,29,'thebg');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,9),(4,4,8),(5,5,9),(6,6,12),(7,7,13),(8,7,14),(9,8,11),(10,9,14),(11,9,13),(12,10,11),(13,11,12),(14,12,63),(15,13,61),(16,14,55),(17,15,59),(18,16,32),(19,17,55),(20,18,32),(21,19,32),(22,20,39),(23,21,32),(24,22,32),(25,23,32),(26,24,45),(27,25,32),(28,26,61),(29,27,32),(30,28,45),(31,29,52),(32,30,55),(33,31,45),(34,32,58),(35,33,55),(36,34,39),(37,35,63),(38,36,60),(39,37,53),(40,38,63),(41,39,63),(42,40,55),(43,41,43),(44,42,55),(45,43,45),(46,44,39),(47,45,32),(48,46,32),(49,47,55),(50,48,61),(51,49,55),(52,50,41),(53,51,32),(54,52,32),(55,53,32),(56,54,58),(57,55,39),(58,56,58),(59,57,54),(60,58,63),(61,59,39),(62,60,61),(63,61,45),(64,62,55),(65,63,39),(66,64,41),(67,65,32),(68,66,32),(69,67,45),(70,68,32),(71,69,61),(72,70,18),(73,70,19),(74,70,20),(75,71,20),(76,71,18),(77,71,25),(78,72,18),(79,73,30),(80,74,30),(81,75,25),(82,76,25),(83,77,17),(84,78,31),(85,79,31),(86,80,25),(87,81,30),(88,82,29),(89,83,50),(90,84,17),(91,85,31),(92,86,33),(93,87,17),(94,88,18),(95,88,20),(96,88,25),(97,89,21),(98,90,29),(99,91,18),(100,91,19),(101,91,20),(102,92,18),(103,92,19),(104,92,20),(105,93,20),(106,93,19),(107,93,18),(108,94,33),(109,95,29),(110,96,50),(111,97,23),(112,97,20),(113,97,18),(114,98,24),(115,98,18),(116,98,20),(117,99,20),(118,99,18),(119,99,17),(120,100,20),(121,100,31),(122,100,18),(123,101,20),(124,101,26),(125,101,18),(126,102,26),(127,103,25),(128,104,17),(129,105,18),(130,105,20),(131,105,23),(132,106,20),(133,106,17),(134,106,18),(135,107,17),(136,108,24),(137,109,25),(138,110,25),(139,111,20),(140,111,19),(141,111,18),(142,112,29),(143,113,30),(144,114,17),(145,115,24),(146,116,28),(147,117,18),(148,117,20),(149,117,29),(150,118,23),(151,118,18),(152,118,20),(153,119,17),(154,120,21),(155,121,18),(156,121,29),(157,121,20),(158,122,18),(159,122,20),(160,122,29),(161,123,29),(162,124,20),(163,124,19),(164,124,18),(165,125,20),(166,125,18),(167,125,17),(168,126,26),(169,127,18),(170,127,20),(171,127,31),(172,128,31),(173,129,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<eng.trickersticks.presidents.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,3,'<eng.trickersticks.numbersone.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(3,9,'<sixteenbday.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(4,8,'<sixteenbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(5,9,'<sixteenbday.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(6,12,'<breakingdawn.countdown.iconosys.eng.ContactsList: void onStart()>',4,'p',NULL),(7,65,'<breakingdawn.countdown.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',8,'a',NULL),(8,11,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(9,66,'<breakingdawn.countdown.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',8,'a',NULL),(10,11,'<breakingdawn.countdown.iconosys.eng.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(11,12,'<breakingdawn.countdown.iconosys.eng.ContactsList: void next()>',3,'p',NULL),(12,67,'<allstoresreg.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(13,61,'<allstoresreg.iconosys.eng.ReportSheet: void getPhoneNumbers(java.lang.String,android.net.Uri)>',24,'p',NULL),(14,68,'<allstoresreg.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(15,69,'<allstoresreg.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(16,70,'<allstoresreg.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(17,55,'<allstoresreg.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(18,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(19,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',59,'a',NULL),(20,71,'<allstoresreg.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(21,72,'<allstoresreg.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(22,73,'<allstoresreg.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(23,73,'<allstoresreg.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(24,45,'<allstoresreg.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(25,73,'<allstoresreg.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(26,61,'<allstoresreg.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(27,74,'<allstoresreg.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',8,'a',NULL),(28,75,'<allstoresreg.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(29,52,'<allstoresreg.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(30,76,'<allstoresreg.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(31,75,'<allstoresreg.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(32,77,'<allstoresreg.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(33,55,'<allstoresreg.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(34,78,'<allstoresreg.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(35,67,'<allstoresreg.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(36,79,'<allstoresreg.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(37,53,'<allstoresreg.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(38,67,'<allstoresreg.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(39,67,'<allstoresreg.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(40,55,'<allstoresreg.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(41,43,'<allstoresreg.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(42,68,'<allstoresreg.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(43,75,'<allstoresreg.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(44,80,'<allstoresreg.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(45,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(46,81,'<allstoresreg.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(47,68,'<allstoresreg.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(48,61,'<allstoresreg.iconosys.eng.ReportSheet: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(49,68,'<allstoresreg.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(50,41,'<allstoresreg.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(51,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(52,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',66,'a',NULL),(53,32,'<allstoresreg.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(54,58,'<allstoresreg.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(55,82,'<allstoresreg.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(56,58,'<allstoresreg.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(57,83,'<allstoresreg.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',103,'a',NULL),(58,63,'<allstoresreg.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(59,84,'<allstoresreg.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(60,61,'<allstoresreg.iconosys.eng.ReportSheet: void onActivityResult(int,int,android.content.Intent)>',14,'p',0),(61,85,'<allstoresreg.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(62,86,'<allstoresreg.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,87,'<allstoresreg.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(64,41,'<allstoresreg.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(65,32,'<allstoresreg.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(66,32,'<allstoresreg.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',39,'a',NULL),(67,75,'<allstoresreg.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(68,73,'<allstoresreg.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(69,61,'<allstoresreg.iconosys.eng.ReportSheet: void getPhoneNumbers(java.lang.String,android.net.Uri)>',11,'p',NULL),(70,88,'<mothersday.iconosys.esp.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(71,89,'<mothersday.iconosys.esp.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(72,90,'<mothersday.iconosys.esp.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(73,91,'<mothersday.iconosys.esp.Scheduler$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(74,30,'<mothersday.iconosys.esp.Scheduler: void onCreate(android.os.Bundle)>',10,'s',NULL),(75,25,'<mothersday.iconosys.esp.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(76,25,'<mothersday.iconosys.esp.PhotoView: void startCameraActivity()>',9,'a',NULL),(77,17,'<mothersday.iconosys.esp.Mother: void onCreate(android.os.Bundle)>',27,'s',NULL),(78,31,'<mothersday.iconosys.esp.ScheduleEdit: void onCreate(android.os.Bundle)>',13,'s',NULL),(79,31,'<mothersday.iconosys.esp.ScheduleEdit: void onCreate(android.os.Bundle)>',9,'s',NULL),(80,25,'<mothersday.iconosys.esp.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(81,30,'<mothersday.iconosys.esp.Scheduler: void onCreate(android.os.Bundle)>',6,'s',NULL),(82,29,'<mothersday.iconosys.esp.Wish: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(83,50,'<mothersday.iconosys.esp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(84,17,'<mothersday.iconosys.esp.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(85,31,'<mothersday.iconosys.esp.ScheduleEdit: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(86,33,'<mothersday.iconosys.esp.SchedulePopUp: void onCreate(android.os.Bundle)>',10,'s',NULL),(87,17,'<mothersday.iconosys.esp.Mother: void onResume()>',10,'a',NULL),(88,89,'<mothersday.iconosys.esp.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(89,21,'<mothersday.iconosys.esp.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(90,29,'<mothersday.iconosys.esp.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(91,92,'<mothersday.iconosys.esp.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(92,93,'<mothersday.iconosys.esp.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(93,94,'<mothersday.iconosys.esp.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(94,33,'<mothersday.iconosys.esp.SchedulePopUp: void onCreate(android.os.Bundle)>',14,'s',NULL),(95,29,'<mothersday.iconosys.esp.Wish: void onActivityResult(int,int,android.content.Intent)>',34,'a',NULL),(96,50,'<mothersday.iconosys.esp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(97,23,'<mothersday.iconosys.esp.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(98,95,'<mothersday.iconosys.esp.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(99,96,'<mothersday.iconosys.esp.Mother$3: void onClick(android.view.View)>',7,'a',NULL),(100,97,'<mothersday.iconosys.esp.ScheduleEdit$4: void onClick(android.view.View)>',6,'a',NULL),(101,26,'<mothersday.iconosys.esp.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(102,26,'<mothersday.iconosys.esp.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(103,25,'<mothersday.iconosys.esp.PhotoView: void startPickActivity()>',4,'a',NULL),(104,17,'<mothersday.iconosys.esp.Mother: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(105,98,'<mothersday.iconosys.esp.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(106,17,'<mothersday.iconosys.esp.Mother: void openView(java.lang.String)>',5,'a',NULL),(107,17,'<mothersday.iconosys.esp.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(108,24,'<mothersday.iconosys.esp.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(109,25,'<mothersday.iconosys.esp.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(110,25,'<mothersday.iconosys.esp.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(111,99,'<mothersday.iconosys.esp.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(112,29,'<mothersday.iconosys.esp.Wish: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(113,30,'<mothersday.iconosys.esp.Scheduler: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(114,17,'<mothersday.iconosys.esp.Mother: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(115,24,'<mothersday.iconosys.esp.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(116,100,'<mothersday.iconosys.esp.PopUp$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(117,101,'<mothersday.iconosys.esp.Wish$4: void onClick(android.view.View)>',6,'a',NULL),(118,23,'<mothersday.iconosys.esp.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(119,17,'<mothersday.iconosys.esp.Mother: void onCreate(android.os.Bundle)>',23,'s',NULL),(120,21,'<mothersday.iconosys.esp.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(121,102,'<mothersday.iconosys.esp.Wish$2: void onClick(android.view.View)>',6,'a',NULL),(122,103,'<mothersday.iconosys.esp.Wish$1: void onClick(android.view.View)>',15,'a',NULL),(123,29,'<mothersday.iconosys.esp.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(124,104,'<mothersday.iconosys.esp.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(125,105,'<mothersday.iconosys.esp.Mother$5: void onClick(android.view.View)>',6,'a',NULL),(126,26,'<mothersday.iconosys.esp.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(127,106,'<mothersday.iconosys.esp.ScheduleEdit$3: void onClick(android.view.View)>',17,'a',NULL),(128,31,'<mothersday.iconosys.esp.ScheduleEdit: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(129,17,'<mothersday.iconosys.esp.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,6,2),(3,10,6),(4,11,6),(5,12,6),(6,13,6),(7,14,6),(8,15,6),(9,16,6),(10,17,6),(11,21,2),(12,27,6),(13,28,6),(14,29,6),(15,30,6),(16,31,6),(17,32,6),(18,33,6),(19,34,6),(20,37,6),(21,38,6),(22,39,6),(23,40,6),(24,41,6),(25,42,6),(26,43,6),(27,44,6),(28,49,2),(29,52,6),(30,53,6),(31,54,6),(32,55,6),(33,56,6),(34,57,6),(35,58,6),(36,59,6),(37,63,7),(38,66,2),(39,69,8),(40,74,8),(41,76,2),(42,78,6),(43,79,6),(44,80,6),(45,81,6),(46,82,6),(47,83,6),(48,84,6),(49,85,6),(50,87,2),(51,89,9),(52,90,2),(53,96,2),(54,102,7),(55,114,2),(56,115,2),(57,116,2),(58,121,8),(59,123,8),(60,124,6),(61,125,6),(62,126,6),(63,127,6),(64,128,6),(65,129,6),(66,130,6),(67,131,6),(68,133,10),(69,139,2),(70,142,8),(71,149,2),(72,153,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/presidents/GlowSticks'),(2,2,'eng/trickersticks/numbersone/GlowSticks'),(3,3,'sixteenbday/timer/iconosys/ContactsList'),(4,5,'breakingdawn/countdown/iconosys/eng/OtherApps'),(5,7,'breakingdawn/countdown/iconosys/eng/ContactsList'),(6,8,'allstoresreg/iconosys/eng/SelectRange'),(7,9,'allstoresreg/iconosys/eng/ReviewSelection'),(8,18,'allstoresreg/iconosys/eng/Settings'),(9,19,'allstoresreg/iconosys/eng/MileageAdd'),(10,20,'allstoresreg/iconosys/eng/RegistrationScreen'),(11,22,'allstoresreg/iconosys/eng/Review'),(12,23,'allstoresreg/iconosys/eng/ReviewSelection'),(13,24,'allstoresreg/iconosys/eng/ReviewSelection'),(14,25,'allstoresreg/iconosys/eng/OtherApps'),(15,26,'allstoresreg/iconosys/eng/ReportSheet'),(16,35,'allstoresreg/iconosys/eng/ReportSheet'),(17,36,'allstoresreg/iconosys/eng/SelectRange'),(18,45,'allstoresreg/iconosys/eng/MileageSheet'),(19,46,'allstoresreg/iconosys/eng/ReviewSelection'),(20,47,'allstoresreg/iconosys/eng/ShowTerms'),(21,48,'allstoresreg/iconosys/eng/MileageSheet'),(22,50,'allstoresreg/iconosys/eng/ReviewSelection'),(23,51,'allstoresreg/iconosys/eng/ReportSheet'),(24,60,'allstoresreg/iconosys/eng/ReviewSelection'),(25,61,'allstoresreg/iconosys/eng/ReviewSelection'),(26,62,'allstoresreg/iconosys/eng/OtherApps'),(27,64,'allstoresreg/iconosys/eng/SelectRange'),(28,65,'allstoresreg/iconosys/eng/ReviewSelection'),(29,67,'allstoresreg/iconosys/eng/TakePicture'),(30,68,'allstoresreg/iconosys/eng/ReviewSelection'),(31,70,'allstoresreg/iconosys/eng/ReviewSelection'),(32,71,'allstoresreg/iconosys/eng/SelectRange'),(33,72,'allstoresreg/iconosys/eng/RegistrationScreen'),(34,73,'allstoresreg/iconosys/eng/AdView'),(35,75,'allstoresreg/iconosys/eng/LocationSender'),(36,77,'allstoresreg/iconosys/eng/LocationSender'),(37,86,'allstoresreg/iconosys/eng/OtherApps'),(38,88,'allstoresreg/iconosys/eng/SelectRange'),(39,91,'allstoresreg/iconosys/eng/OtherApps'),(40,92,'allstoresreg/iconosys/eng/OtherApps'),(41,93,'allstoresreg/iconosys/eng/AdView'),(42,94,'allstoresreg/iconosys/eng/ReviewSelection'),(43,95,'allstoresreg/iconosys/eng/ReviewSelection'),(44,97,'mothersday/iconosys/esp/ShowPopUp'),(45,98,'mothersday/iconosys/esp/ItemDialog'),(46,99,'mothersday/iconosys/esp/ScheduleEdit'),(47,100,'mothersday/iconosys/esp/SchedulerService'),(48,101,'mothersday/iconosys/esp/Mother'),(49,103,'mothersday/iconosys/esp/ValentineSvc'),(50,104,'mothersday/iconosys/esp/SchedulerService'),(51,105,'mothersday/iconosys/esp/SchedulerService'),(52,106,'mothersday/iconosys/esp/SchedulerService'),(53,107,'mothersday/iconosys/esp/TickSvc'),(54,108,'mothersday/iconosys/esp/Scheduler'),(55,109,'mothersday/iconosys/esp/SchedulerService'),(56,110,'mothersday/iconosys/esp/RegistrationScreen'),(57,111,'mothersday/iconosys/esp/ShareImage'),(58,112,'mothersday/iconosys/esp/TickSvc'),(59,113,'mothersday/iconosys/esp/OtherApps'),(60,117,'mothersday/iconosys/esp/SchedulerService'),(61,118,'mothersday/iconosys/esp/AdView'),(62,119,'mothersday/iconosys/esp/ValentineSvc'),(63,120,'mothersday/iconosys/esp/LocationSender'),(64,122,'mothersday/iconosys/esp/PhotoView'),(65,132,'mothersday/iconosys/esp/AdView'),(66,134,'mothersday/iconosys/esp/ShowTerms'),(67,135,'mothersday/iconosys/esp/PopUp'),(68,136,'mothersday/iconosys/esp/OtherApps'),(69,137,'mothersday/iconosys/esp/ShowPopUp'),(70,138,'mothersday/iconosys/esp/OtherApps'),(71,140,'mothersday/iconosys/esp/SchedulePopUp'),(72,141,'mothersday/iconosys/esp/Wish'),(73,143,'mothersday/iconosys/esp/LocationSender'),(74,144,'mothersday/iconosys/esp/ValentineSvc'),(75,145,'mothersday/iconosys/esp/TickSvc'),(76,146,'mothersday/iconosys/esp/MyMMS'),(77,147,'mothersday/iconosys/esp/SchedulePreview'),(78,148,'mothersday/iconosys/esp/MyMMS'),(79,150,'mothersday/iconosys/esp/MyKissHugs'),(80,151,'mothersday/iconosys/esp/OtherApps'),(81,152,'mothersday/iconosys/esp/SchedulePreview');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,4),(2,6,5),(3,21,8),(4,49,9),(5,66,10),(6,69,12),(7,74,13),(8,76,14),(9,87,15),(10,90,16),(11,96,18),(12,114,19),(13,115,20),(14,116,21),(15,121,22),(16,123,23),(17,139,24),(18,142,28),(19,149,29),(20,153,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'id'),(2,8,'report_type'),(3,9,'id'),(4,9,'report_type'),(5,10,'android.intent.extra.INTENT'),(6,11,'android.intent.extra.INTENT'),(7,12,'android.intent.extra.TITLE'),(8,12,'android.intent.extra.INTENT'),(9,13,'android.intent.extra.INTENT'),(10,14,'android.intent.extra.TITLE'),(11,14,'android.intent.extra.INTENT'),(12,15,'android.intent.extra.INTENT'),(13,16,'android.intent.extra.TITLE'),(14,16,'android.intent.extra.INTENT'),(15,17,'android.intent.extra.TITLE'),(16,17,'android.intent.extra.INTENT'),(17,19,'_mileage'),(18,23,'id'),(19,23,'report_type'),(20,24,'id'),(21,24,'report_type'),(22,26,'id'),(23,26,'report_type'),(24,27,'android.intent.extra.INTENT'),(25,28,'android.intent.extra.INTENT'),(26,29,'android.intent.extra.TITLE'),(27,29,'android.intent.extra.INTENT'),(28,30,'android.intent.extra.INTENT'),(29,31,'android.intent.extra.TITLE'),(30,31,'android.intent.extra.INTENT'),(31,32,'android.intent.extra.INTENT'),(32,33,'android.intent.extra.TITLE'),(33,33,'android.intent.extra.INTENT'),(34,34,'android.intent.extra.TITLE'),(35,34,'android.intent.extra.INTENT'),(36,35,'id'),(37,35,'report_type'),(38,36,'id'),(39,36,'report_type'),(40,37,'android.intent.extra.INTENT'),(41,38,'android.intent.extra.INTENT'),(42,39,'android.intent.extra.TITLE'),(43,39,'android.intent.extra.INTENT'),(44,40,'android.intent.extra.INTENT'),(45,41,'android.intent.extra.TITLE'),(46,41,'android.intent.extra.INTENT'),(47,42,'android.intent.extra.INTENT'),(48,43,'android.intent.extra.TITLE'),(49,43,'android.intent.extra.INTENT'),(50,44,'android.intent.extra.TITLE'),(51,44,'android.intent.extra.INTENT'),(52,46,'id'),(53,46,'report_type'),(54,50,'id'),(55,50,'report_type'),(56,51,'id'),(57,51,'Category'),(58,51,'range1'),(59,51,'range2'),(60,52,'android.intent.extra.INTENT'),(61,53,'android.intent.extra.INTENT'),(62,54,'android.intent.extra.TITLE'),(63,54,'android.intent.extra.INTENT'),(64,55,'android.intent.extra.INTENT'),(65,56,'android.intent.extra.TITLE'),(66,56,'android.intent.extra.INTENT'),(67,57,'android.intent.extra.INTENT'),(68,58,'android.intent.extra.TITLE'),(69,58,'android.intent.extra.INTENT'),(70,59,'android.intent.extra.TITLE'),(71,59,'android.intent.extra.INTENT'),(72,60,'id'),(73,60,'report_type'),(74,61,'id'),(75,61,'report_type'),(76,63,'output'),(77,64,'id'),(78,64,'report_type'),(79,65,'id'),(80,65,'report_type'),(81,68,'id'),(82,68,'report_type'),(83,70,'id'),(84,70,'report_type'),(85,71,'id'),(86,71,'Category'),(87,71,'report_type'),(88,78,'android.intent.extra.INTENT'),(89,79,'android.intent.extra.INTENT'),(90,80,'android.intent.extra.TITLE'),(91,80,'android.intent.extra.INTENT'),(92,81,'android.intent.extra.INTENT'),(93,82,'android.intent.extra.TITLE'),(94,82,'android.intent.extra.INTENT'),(95,83,'android.intent.extra.INTENT'),(96,84,'android.intent.extra.TITLE'),(97,84,'android.intent.extra.INTENT'),(98,85,'android.intent.extra.TITLE'),(99,85,'android.intent.extra.INTENT'),(100,88,'id'),(101,88,'report_type'),(102,94,'id'),(103,94,'report_type'),(104,95,'id'),(105,95,'report_type'),(106,98,'itemcount'),(107,98,'_id'),(108,98,'items'),(109,98,'names'),(110,99,'_id'),(111,102,'output'),(112,111,'saved_uri'),(113,118,'_who'),(114,122,'take_photo'),(115,124,'android.intent.extra.INTENT'),(116,125,'android.intent.extra.INTENT'),(117,126,'android.intent.extra.TITLE'),(118,126,'android.intent.extra.INTENT'),(119,127,'android.intent.extra.INTENT'),(120,128,'android.intent.extra.TITLE'),(121,128,'android.intent.extra.INTENT'),(122,129,'android.intent.extra.INTENT'),(123,130,'android.intent.extra.TITLE'),(124,130,'android.intent.extra.INTENT'),(125,131,'android.intent.extra.TITLE'),(126,131,'android.intent.extra.INTENT'),(127,135,'reason'),(128,141,'thebg'),(129,141,'thesmsbg'),(130,141,'_icon'),(131,147,'thebg'),(132,147,'M3'),(133,152,'thebg'),(134,152,'M3');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,3),(10,10,4),(11,11,1),(12,12,1),(13,13,5),(14,14,11),(15,15,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,8,2),(7,11,1),(8,12,1);
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
INSERT INTO `IMimeTypes` VALUES (1,133,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.presidents'),(2,2,'eng.trickersticks.numbersone'),(3,3,'sixteenbday.timer.iconosys'),(4,5,'breakingdawn.countdown.iconosys.eng'),(5,7,'breakingdawn.countdown.iconosys.eng'),(6,8,'allstoresreg.iconosys.eng'),(7,9,'allstoresreg.iconosys.eng'),(8,18,'allstoresreg.iconosys.eng'),(9,19,'allstoresreg.iconosys.eng'),(10,20,'allstoresreg.iconosys.eng'),(11,22,'allstoresreg.iconosys.eng'),(12,23,'allstoresreg.iconosys.eng'),(13,24,'allstoresreg.iconosys.eng'),(14,25,'allstoresreg.iconosys.eng'),(15,26,'allstoresreg.iconosys.eng'),(16,35,'allstoresreg.iconosys.eng'),(17,36,'allstoresreg.iconosys.eng'),(18,45,'allstoresreg.iconosys.eng'),(19,46,'allstoresreg.iconosys.eng'),(20,47,'allstoresreg.iconosys.eng'),(21,48,'allstoresreg.iconosys.eng'),(22,50,'allstoresreg.iconosys.eng'),(23,51,'allstoresreg.iconosys.eng'),(24,60,'allstoresreg.iconosys.eng'),(25,61,'allstoresreg.iconosys.eng'),(26,62,'allstoresreg.iconosys.eng'),(27,64,'allstoresreg.iconosys.eng'),(28,65,'allstoresreg.iconosys.eng'),(29,67,'allstoresreg.iconosys.eng'),(30,68,'allstoresreg.iconosys.eng'),(31,70,'allstoresreg.iconosys.eng'),(32,71,'allstoresreg.iconosys.eng'),(33,72,'allstoresreg.iconosys.eng'),(34,73,'allstoresreg.iconosys.eng'),(35,75,'allstoresreg.iconosys.eng'),(36,77,'allstoresreg.iconosys.eng'),(37,86,'allstoresreg.iconosys.eng'),(38,88,'allstoresreg.iconosys.eng'),(39,91,'allstoresreg.iconosys.eng'),(40,92,'allstoresreg.iconosys.eng'),(41,93,'allstoresreg.iconosys.eng'),(42,94,'allstoresreg.iconosys.eng'),(43,95,'allstoresreg.iconosys.eng'),(44,97,'mothersday.iconosys.esp'),(45,98,'mothersday.iconosys.esp'),(46,99,'mothersday.iconosys.esp'),(47,100,'mothersday.iconosys.esp'),(48,101,'mothersday.iconosys.esp'),(49,103,'mothersday.iconosys.esp'),(50,104,'mothersday.iconosys.esp'),(51,105,'mothersday.iconosys.esp'),(52,106,'mothersday.iconosys.esp'),(53,107,'mothersday.iconosys.esp'),(54,108,'mothersday.iconosys.esp'),(55,109,'mothersday.iconosys.esp'),(56,110,'mothersday.iconosys.esp'),(57,111,'mothersday.iconosys.esp'),(58,112,'mothersday.iconosys.esp'),(59,113,'mothersday.iconosys.esp'),(60,117,'mothersday.iconosys.esp'),(61,118,'mothersday.iconosys.esp'),(62,119,'mothersday.iconosys.esp'),(63,120,'mothersday.iconosys.esp'),(64,122,'mothersday.iconosys.esp'),(65,132,'mothersday.iconosys.esp'),(66,134,'mothersday.iconosys.esp'),(67,135,'mothersday.iconosys.esp'),(68,136,'mothersday.iconosys.esp'),(69,137,'mothersday.iconosys.esp'),(70,138,'mothersday.iconosys.esp'),(71,140,'mothersday.iconosys.esp'),(72,141,'mothersday.iconosys.esp'),(73,143,'mothersday.iconosys.esp'),(74,144,'mothersday.iconosys.esp'),(75,145,'mothersday.iconosys.esp'),(76,146,'mothersday.iconosys.esp'),(77,147,'mothersday.iconosys.esp'),(78,148,'mothersday.iconosys.esp'),(79,150,'mothersday.iconosys.esp'),(80,151,'mothersday.iconosys.esp'),(81,152,'mothersday.iconosys.esp');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,8,0),(5,9,0),(6,11,0),(7,12,0),(8,13,0),(9,14,0),(10,16,0),(11,17,0),(12,32,0),(13,50,0),(14,50,0),(15,65,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,7,1,0),(5,8,0,0),(6,9,1,0),(7,10,0,0),(8,12,0,0),(9,14,0,0),(10,15,1,0),(11,15,1,0),(12,15,1,0),(13,15,1,0),(14,15,1,0),(15,15,1,0),(16,15,1,0),(17,15,1,0),(18,16,0,0),(19,17,0,0),(20,19,0,0),(21,20,1,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,26,1,0),(28,26,1,0),(29,26,1,0),(30,26,1,0),(31,26,1,0),(32,26,1,0),(33,26,1,0),(34,26,1,0),(35,27,0,0),(36,28,0,0),(37,29,1,0),(38,29,1,0),(39,29,1,0),(40,29,1,0),(41,29,1,0),(42,29,1,0),(43,29,1,0),(44,29,1,0),(45,30,0,0),(46,31,0,0),(47,32,0,0),(48,33,0,0),(49,34,1,0),(50,35,0,0),(51,36,0,0),(52,37,1,0),(53,37,1,0),(54,37,1,0),(55,37,1,0),(56,37,1,0),(57,37,1,0),(58,37,1,0),(59,37,1,0),(60,38,0,0),(61,39,0,0),(62,40,0,0),(63,41,1,0),(64,42,0,0),(65,43,0,0),(66,44,1,0),(67,46,0,0),(68,47,0,0),(69,48,1,0),(70,49,0,0),(71,50,0,0),(72,51,0,0),(73,52,0,0),(74,53,1,0),(75,54,0,0),(76,55,1,0),(77,56,0,0),(78,57,1,0),(79,57,1,0),(80,57,1,0),(81,57,1,0),(82,57,1,0),(83,57,1,0),(84,57,1,0),(85,57,1,0),(86,58,0,0),(87,59,1,0),(88,61,0,0),(89,62,1,0),(90,63,1,0),(91,64,0,0),(92,65,0,0),(93,66,0,0),(94,67,0,0),(95,68,0,0),(96,70,1,0),(97,71,0,0),(98,72,0,0),(99,73,0,0),(100,74,0,0),(101,75,0,0),(102,76,1,0),(103,77,0,0),(104,78,0,0),(105,79,0,0),(106,81,0,0),(107,83,0,0),(108,84,0,0),(109,86,0,0),(110,87,0,0),(111,88,0,0),(112,89,0,0),(113,90,0,0),(114,91,1,0),(115,92,1,0),(116,93,1,0),(117,94,0,0),(118,95,0,0),(119,96,0,0),(120,97,0,0),(121,98,1,0),(122,99,0,0),(123,100,1,0),(124,101,1,0),(125,101,1,0),(126,101,1,0),(127,101,1,0),(128,101,1,0),(129,101,1,0),(130,101,1,0),(131,101,1,0),(132,102,0,0),(133,103,1,0),(134,105,0,0),(135,106,0,0),(136,107,0,0),(137,109,0,0),(138,110,0,0),(139,111,1,0),(140,113,0,0),(141,116,0,0),(142,117,1,0),(143,118,0,0),(144,119,0,0),(145,120,0,0),(146,121,0,0),(147,122,0,0),(148,123,0,0),(149,124,1,0),(150,125,0,0),(151,126,0,0),(152,127,0,0),(153,129,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,9,2,NULL),(2,2,6,2,NULL),(3,102,8,2,NULL),(4,102,3,2,NULL),(5,124,8,2,NULL),(6,124,3,2,NULL),(7,125,8,2,NULL),(8,125,3,2,NULL),(9,126,8,2,NULL),(10,126,3,2,NULL),(11,127,8,2,NULL),(12,127,3,2,NULL),(13,128,8,2,NULL),(14,128,3,2,NULL),(15,129,8,2,NULL),(16,129,3,2,NULL),(17,130,8,2,NULL),(18,130,3,2,NULL),(19,131,8,2,NULL),(20,131,3,2,NULL),(21,63,8,2,NULL),(22,63,3,2,NULL),(23,37,8,2,NULL),(24,37,3,2,NULL),(25,38,8,2,NULL),(26,38,3,2,NULL),(27,39,8,2,NULL),(28,39,3,2,NULL),(29,40,8,2,NULL),(30,40,3,2,NULL),(31,41,8,2,NULL),(32,41,3,2,NULL),(33,42,8,2,NULL),(34,42,3,2,NULL),(35,43,8,2,NULL),(36,43,3,2,NULL),(37,44,8,2,NULL),(38,44,3,2,NULL),(39,52,8,2,NULL),(40,52,3,2,NULL),(41,53,8,2,NULL),(42,53,3,2,NULL),(43,54,8,2,NULL),(44,54,3,2,NULL),(45,55,8,2,NULL),(46,55,3,2,NULL),(47,56,8,2,NULL),(48,56,3,2,NULL),(49,57,8,2,NULL),(50,57,3,2,NULL),(51,58,8,2,NULL),(52,58,3,2,NULL),(53,59,8,2,NULL),(54,59,3,2,NULL),(55,27,8,2,NULL),(56,27,3,2,NULL),(57,28,8,2,NULL),(58,28,3,2,NULL),(59,29,8,2,NULL),(60,29,3,2,NULL),(61,30,8,2,NULL),(62,30,3,2,NULL),(63,31,8,2,NULL),(64,31,3,2,NULL),(65,32,8,2,NULL),(66,32,3,2,NULL),(67,33,8,2,NULL),(68,33,3,2,NULL),(69,34,8,2,NULL),(70,34,3,2,NULL),(71,102,9,2,NULL),(72,124,9,2,NULL),(73,125,9,2,NULL),(74,126,9,2,NULL),(75,127,9,2,NULL),(76,128,9,2,NULL),(77,129,9,2,NULL),(78,130,9,2,NULL),(79,131,9,2,NULL),(80,63,9,2,NULL),(81,37,9,2,NULL),(82,38,9,2,NULL),(83,39,9,2,NULL),(84,40,9,2,NULL),(85,41,9,2,NULL),(86,42,9,2,NULL),(87,43,9,2,NULL),(88,44,9,2,NULL),(89,52,9,2,NULL),(90,53,9,2,NULL),(91,54,9,2,NULL),(92,55,9,2,NULL),(93,56,9,2,NULL),(94,57,9,2,NULL),(95,58,9,2,NULL),(96,59,9,2,NULL),(97,27,9,2,NULL),(98,28,9,2,NULL),(99,29,9,2,NULL),(100,30,9,2,NULL),(101,31,9,2,NULL),(102,32,9,2,NULL),(103,33,9,2,NULL),(104,34,9,2,NULL),(105,103,40,2,NULL),(106,108,30,2,NULL),(107,110,23,2,NULL),(108,135,28,2,NULL),(109,136,19,2,NULL),(110,144,40,2,NULL),(111,102,17,2,NULL),(112,20,58,2,NULL),(113,124,17,2,NULL),(114,72,58,2,NULL),(115,125,17,2,NULL),(116,73,57,2,NULL),(117,126,17,2,NULL),(118,92,39,2,NULL),(119,127,17,2,NULL),(120,93,57,2,NULL),(121,128,17,2,NULL),(122,102,32,2,NULL),(123,129,17,2,NULL),(124,124,32,2,NULL),(125,130,17,2,NULL),(126,125,32,2,NULL),(127,131,17,2,NULL),(128,126,32,2,NULL),(129,63,17,2,NULL),(130,127,32,2,NULL),(131,37,17,2,NULL),(132,128,32,2,NULL),(133,38,17,2,NULL),(134,129,32,2,NULL),(135,39,17,2,NULL),(136,130,32,2,NULL),(137,40,17,2,NULL),(138,131,32,2,NULL),(139,41,17,2,NULL),(140,63,32,2,NULL),(141,42,17,2,NULL),(142,37,32,2,NULL),(143,43,17,2,NULL),(144,38,32,2,NULL),(145,44,17,2,NULL),(146,39,32,2,NULL),(147,52,17,2,NULL),(148,40,32,2,NULL),(149,53,17,2,NULL),(150,41,32,2,NULL),(151,54,17,2,NULL),(152,42,32,2,NULL),(153,55,17,2,NULL),(154,43,32,2,NULL),(155,56,17,2,NULL),(156,44,32,2,NULL),(157,57,17,2,NULL),(158,52,32,2,NULL),(159,58,17,2,NULL),(160,53,32,2,NULL),(161,59,17,2,NULL),(162,54,32,2,NULL),(163,27,17,2,NULL),(164,55,32,2,NULL),(165,28,17,2,NULL),(166,56,32,2,NULL),(167,29,17,2,NULL),(168,57,32,2,NULL),(169,30,17,2,NULL),(170,58,32,2,NULL),(171,31,17,2,NULL),(172,59,32,2,NULL),(173,32,17,2,NULL),(174,27,32,2,NULL),(175,33,17,2,NULL),(176,28,32,2,NULL),(177,34,17,2,NULL),(178,29,32,2,NULL),(179,112,42,2,NULL),(180,30,32,2,NULL),(181,145,42,2,NULL),(182,31,32,2,NULL),(183,120,44,2,NULL),(184,32,32,2,NULL),(185,143,44,2,NULL),(186,33,32,2,NULL),(187,101,17,2,NULL),(188,34,32,2,NULL),(189,137,27,2,NULL),(190,71,60,2,NULL),(191,138,19,2,NULL),(192,91,39,2,NULL),(193,102,1,2,NULL),(194,63,1,2,NULL),(195,102,2,2,NULL),(196,63,2,2,NULL),(197,102,11,2,NULL),(198,63,11,2,NULL),(199,102,12,2,NULL),(200,63,12,2,NULL),(201,102,13,2,NULL),(202,63,13,2,NULL),(203,102,14,2,NULL),(204,63,14,2,NULL),(205,102,16,2,NULL),(206,63,16,2,NULL),(207,102,50,2,NULL),(208,63,50,2,NULL),(209,102,65,2,NULL),(210,63,65,2,NULL),(211,132,38,2,NULL),(212,25,39,2,NULL),(213,151,19,2,NULL),(214,37,1,2,NULL),(215,124,1,2,NULL),(216,38,1,2,NULL),(217,125,1,2,NULL),(218,39,1,2,NULL),(219,126,1,2,NULL),(220,40,1,2,NULL),(221,127,1,2,NULL),(222,41,1,2,NULL),(223,128,1,2,NULL),(224,42,1,2,NULL),(225,129,1,2,NULL),(226,43,1,2,NULL),(227,130,1,2,NULL),(228,44,1,2,NULL),(229,131,1,2,NULL),(230,37,2,2,NULL),(231,124,2,2,NULL),(232,38,2,2,NULL),(233,125,2,2,NULL),(234,39,2,2,NULL),(235,126,2,2,NULL),(236,40,2,2,NULL),(237,127,2,2,NULL),(238,41,2,2,NULL),(239,128,2,2,NULL),(240,42,2,2,NULL),(241,129,2,2,NULL),(242,43,2,2,NULL),(243,130,2,2,NULL),(244,44,2,2,NULL),(245,131,2,2,NULL),(246,37,11,2,NULL),(247,124,11,2,NULL),(248,38,11,2,NULL),(249,125,11,2,NULL),(250,39,11,2,NULL),(251,126,11,2,NULL),(252,40,11,2,NULL),(253,127,11,2,NULL),(254,41,11,2,NULL),(255,128,11,2,NULL),(256,42,11,2,NULL),(257,129,11,2,NULL),(258,43,11,2,NULL),(259,130,11,2,NULL),(260,44,11,2,NULL),(261,131,11,2,NULL),(262,37,12,2,NULL),(263,124,12,2,NULL),(264,38,12,2,NULL),(265,125,12,2,NULL),(266,39,12,2,NULL),(267,126,12,2,NULL),(268,40,12,2,NULL),(269,127,12,2,NULL),(270,41,12,2,NULL),(271,128,12,2,NULL),(272,42,12,2,NULL),(273,129,12,2,NULL),(274,43,12,2,NULL),(275,130,12,2,NULL),(276,44,12,2,NULL),(277,131,12,2,NULL),(278,37,13,2,NULL),(279,124,13,2,NULL),(280,38,13,2,NULL),(281,125,13,2,NULL),(282,39,13,2,NULL),(283,126,13,2,NULL),(284,40,13,2,NULL),(285,127,13,2,NULL),(286,41,13,2,NULL),(287,128,13,2,NULL),(288,42,13,2,NULL),(289,129,13,2,NULL),(290,43,13,2,NULL),(291,130,13,2,NULL),(292,44,13,2,NULL),(293,131,13,2,NULL),(294,37,14,2,NULL),(295,124,14,2,NULL),(296,38,14,2,NULL),(297,125,14,2,NULL),(298,39,14,2,NULL),(299,126,14,2,NULL),(300,40,14,2,NULL),(301,127,14,2,NULL),(302,41,14,2,NULL),(303,128,14,2,NULL),(304,42,14,2,NULL),(305,129,14,2,NULL),(306,43,14,2,NULL),(307,130,14,2,NULL),(308,44,14,2,NULL),(309,131,14,2,NULL),(310,37,16,2,NULL),(311,124,16,2,NULL),(312,38,16,2,NULL),(313,125,16,2,NULL),(314,39,16,2,NULL),(315,126,16,2,NULL),(316,40,16,2,NULL),(317,127,16,2,NULL),(318,41,16,2,NULL),(319,128,16,2,NULL),(320,42,16,2,NULL),(321,129,16,2,NULL),(322,43,16,2,NULL),(323,130,16,2,NULL),(324,44,16,2,NULL),(325,131,16,2,NULL),(326,37,50,2,NULL),(327,124,50,2,NULL),(328,38,50,2,NULL),(329,125,50,2,NULL),(330,39,50,2,NULL),(331,126,50,2,NULL),(332,40,50,2,NULL),(333,127,50,2,NULL),(334,41,50,2,NULL),(335,128,50,2,NULL),(336,42,50,2,NULL),(337,129,50,2,NULL),(338,43,50,2,NULL),(339,130,50,2,NULL),(340,44,50,2,NULL),(341,131,50,2,NULL),(342,37,65,2,NULL),(343,124,65,2,NULL),(344,38,65,2,NULL),(345,125,65,2,NULL),(346,39,65,2,NULL),(347,126,65,2,NULL),(348,40,65,2,NULL),(349,127,65,2,NULL),(350,41,65,2,NULL),(351,128,65,2,NULL),(352,42,65,2,NULL),(353,129,65,2,NULL),(354,43,65,2,NULL),(355,130,65,2,NULL),(356,44,65,2,NULL),(357,131,65,2,NULL),(358,52,1,2,NULL),(359,113,19,2,NULL),(360,53,1,2,NULL),(361,118,38,2,NULL),(362,54,1,2,NULL),(363,148,36,2,NULL),(364,55,1,2,NULL),(365,100,46,2,NULL),(366,56,1,2,NULL),(367,1,4,2,NULL),(368,106,46,2,NULL),(369,57,1,2,NULL),(370,52,2,2,NULL),(371,140,33,2,NULL),(372,58,1,2,NULL),(373,53,2,2,NULL),(374,104,46,2,NULL),(375,59,1,2,NULL),(376,105,46,2,NULL),(377,54,2,2,NULL),(378,55,2,2,NULL),(379,109,46,2,NULL),(380,56,2,2,NULL),(381,57,2,2,NULL),(382,117,46,2,NULL),(383,58,2,2,NULL),(384,59,2,2,NULL),(385,107,42,2,NULL),(386,27,2,2,NULL),(387,52,11,2,NULL),(388,119,40,2,NULL),(389,28,2,2,NULL),(390,53,11,2,NULL),(391,29,2,2,NULL),(392,52,50,2,NULL),(393,54,11,2,NULL),(394,53,50,2,NULL),(395,30,2,2,NULL),(396,55,11,2,NULL),(397,54,50,2,NULL),(398,31,2,2,NULL),(399,56,11,2,NULL),(400,55,50,2,NULL),(401,32,2,2,NULL),(402,57,11,2,NULL),(403,56,50,2,NULL),(404,33,2,2,NULL),(405,58,11,2,NULL),(406,57,50,2,NULL),(407,34,2,2,NULL),(408,59,11,2,NULL),(409,58,50,2,NULL),(410,52,12,2,NULL),(411,59,50,2,NULL),(412,53,12,2,NULL),(413,27,50,2,NULL),(414,54,12,2,NULL),(415,28,50,2,NULL),(416,55,12,2,NULL),(417,29,50,2,NULL),(418,56,12,2,NULL),(419,30,50,2,NULL),(420,57,12,2,NULL),(421,31,50,2,NULL),(422,58,12,2,NULL),(423,32,50,2,NULL),(424,59,12,2,NULL),(425,33,50,2,NULL),(426,52,13,2,NULL),(427,34,50,2,NULL),(428,53,13,2,NULL),(429,52,65,2,NULL),(430,54,13,2,NULL),(431,53,65,2,NULL),(432,55,13,2,NULL),(433,54,65,2,NULL),(434,56,13,2,NULL),(435,55,65,2,NULL),(436,57,13,2,NULL),(437,56,65,2,NULL),(438,58,13,2,NULL),(439,57,65,2,NULL),(440,59,13,2,NULL),(441,58,65,2,NULL),(442,52,14,2,NULL),(443,59,65,2,NULL),(444,53,14,2,NULL),(445,27,65,2,NULL),(446,54,14,2,NULL),(447,28,65,2,NULL),(448,55,14,2,NULL),(449,29,65,2,NULL),(450,56,14,2,NULL),(451,30,65,2,NULL),(452,57,14,2,NULL),(453,31,65,2,NULL),(454,58,14,2,NULL),(455,32,65,2,NULL),(456,59,14,2,NULL),(457,33,65,2,NULL),(458,52,16,2,NULL),(459,34,65,2,NULL),(460,53,16,2,NULL),(461,54,16,2,NULL),(462,55,16,2,NULL),(463,56,16,2,NULL),(464,57,16,2,NULL),(465,58,16,2,NULL),(466,59,16,2,NULL),(467,19,37,2,NULL),(468,48,53,2,NULL),(469,62,39,2,NULL),(470,75,64,2,NULL),(471,77,64,2,NULL),(472,27,1,2,NULL),(473,28,1,2,NULL),(474,29,1,2,NULL),(475,30,1,2,NULL),(476,31,1,2,NULL),(477,32,1,2,NULL),(478,33,1,2,NULL),(479,34,1,2,NULL),(480,27,11,2,NULL),(481,28,11,2,NULL),(482,29,11,2,NULL),(483,30,11,2,NULL),(484,31,11,2,NULL),(485,32,11,2,NULL),(486,33,11,2,NULL),(487,34,11,2,NULL),(488,27,12,2,NULL),(489,28,12,2,NULL),(490,29,12,2,NULL),(491,30,12,2,NULL),(492,31,12,2,NULL),(493,32,12,2,NULL),(494,33,12,2,NULL),(495,34,12,2,NULL),(496,27,13,2,NULL),(497,28,13,2,NULL),(498,29,13,2,NULL),(499,30,13,2,NULL),(500,31,13,2,NULL),(501,32,13,2,NULL),(502,33,13,2,NULL),(503,34,13,2,NULL),(504,27,14,2,NULL),(505,28,14,2,NULL),(506,29,14,2,NULL),(507,30,14,2,NULL),(508,31,14,2,NULL),(509,32,14,2,NULL),(510,33,14,2,NULL),(511,34,14,2,NULL),(512,27,16,2,NULL),(513,28,16,2,NULL),(514,29,16,2,NULL),(515,30,16,2,NULL),(516,31,16,2,NULL),(517,32,16,2,NULL),(518,33,16,2,NULL),(519,34,16,2,NULL),(520,86,39,2,NULL),(521,5,13,2,NULL),(522,7,12,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.CAMERA'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECORD_AUDIO'),(2,'android.permission.SEND_SMS'),(9,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,5,2),(3,6,3),(4,11,6),(5,13,7),(6,45,11),(7,69,17),(8,112,25),(9,114,26),(10,115,27),(11,128,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,5,1),(15,5,2),(16,5,3),(17,5,4),(18,6,1),(19,6,2),(20,6,3),(21,6,4),(22,6,5),(23,6,6),(24,6,7),(25,6,8),(26,6,9),(27,6,10),(28,7,1),(29,7,2),(30,7,3),(31,7,4),(32,7,6),(33,7,7),(34,7,8),(35,7,9),(36,7,11),(37,7,12),(38,7,13),(39,7,14);
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

-- Dump completed on 2015-10-12  3:30:35
