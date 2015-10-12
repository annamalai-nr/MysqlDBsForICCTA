-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_470
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
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(9,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PICK'),(2,'android.intent.action.VIEW'),(6,'android.media.action.IMAGE_CAPTURE'),(5,'android.settings.LOCATION_SOURCE_SETTINGS'),(8,'wayne.jeff.dev.fathers.day.cc');
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
INSERT INTO `Applications` VALUES (1,'eng.trickersticks.auld',1),(2,'eng.trickersticks.jet',1),(3,'doggiesbday.timer.iconosys',2),(4,'auctionbuzzer.iconosys.eng',1),(5,'xoom.dealbuzzer.iconosys.esp',2),(6,'myexpense.iconosys.eng',2),(7,'fourthofjuly.iconosys.eng',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eng.trickersticks.auld.TrickerSticks'),(2,1,'eng.trickersticks.auld.GlowSticks'),(3,2,'eng.trickersticks.jet.TrickerSticks'),(4,1,'eng.trickersticks.auld.Registration'),(5,2,'eng.trickersticks.jet.GlowSticks'),(6,2,'eng.trickersticks.jet.Registration'),(7,3,'doggiesbday.timer.iconosys.ChristmasTimer'),(8,3,'doggiesbday.timer.iconosys.ContactsList'),(9,3,'doggiesbday.timer.iconosys.OtherApps'),(10,3,'doggiesbday.timer.iconosys.MessageService'),(11,4,'auctionbuzzer.iconosys.eng.FlyDay'),(12,4,'auctionbuzzer.iconosys.eng.OtherApps'),(13,4,'auctionbuzzer.iconosys.eng.CatchFly'),(14,4,'auctionbuzzer.iconosys.eng.SettingsFly'),(15,4,'auctionbuzzer.iconosys.eng.PostOffer'),(16,4,'auctionbuzzer.iconosys.eng.AddMembers'),(17,4,'auctionbuzzer.iconosys.eng.AdView'),(18,4,'auctionbuzzer.iconosys.eng.NewPostOffer'),(19,4,'auctionbuzzer.iconosys.eng.TeamCatchFly'),(20,4,'auctionbuzzer.iconosys.eng.AllCatchFly'),(21,4,'auctionbuzzer.iconosys.eng.DisplayMap'),(22,5,'xoom.dealbuzzer.iconosys.esp.FlyDay'),(23,4,'auctionbuzzer.iconosys.eng.LocationSender'),(24,6,'myexpense.iconosys.eng.MyReceiptManager'),(25,5,'xoom.dealbuzzer.iconosys.esp.OtherApps'),(26,7,'fourthofjuly.iconosys.eng.Mother'),(27,5,'xoom.dealbuzzer.iconosys.esp.CatchFly'),(28,5,'xoom.dealbuzzer.iconosys.esp.SettingsFly'),(29,6,'myexpense.iconosys.eng.ShowPopUp'),(30,7,'fourthofjuly.iconosys.eng.MyValentine'),(31,5,'xoom.dealbuzzer.iconosys.esp.PostOffer'),(32,6,'myexpense.iconosys.eng.MileageAdd'),(33,7,'fourthofjuly.iconosys.eng.OtherApps'),(34,5,'xoom.dealbuzzer.iconosys.esp.AddMembers'),(35,6,'myexpense.iconosys.eng.OtherApps'),(36,7,'fourthofjuly.iconosys.eng.ItemDialog'),(37,5,'xoom.dealbuzzer.iconosys.esp.AdView'),(38,6,'myexpense.iconosys.eng.ReviewSelection'),(39,7,'fourthofjuly.iconosys.eng.MyKissHugs'),(40,5,'xoom.dealbuzzer.iconosys.esp.NewPostOffer'),(41,6,'myexpense.iconosys.eng.TakePicture'),(42,7,'fourthofjuly.iconosys.eng.ShowTerms'),(43,5,'xoom.dealbuzzer.iconosys.esp.TeamCatchFly'),(44,6,'myexpense.iconosys.eng.Review'),(45,7,'fourthofjuly.iconosys.eng.RegistrationScreen'),(46,5,'xoom.dealbuzzer.iconosys.esp.AllCatchFly'),(47,6,'myexpense.iconosys.eng.DisplayCategory'),(48,7,'fourthofjuly.iconosys.eng.SweetHeart'),(49,5,'xoom.dealbuzzer.iconosys.esp.DisplayMap'),(50,6,'myexpense.iconosys.eng.ShowCat'),(51,7,'fourthofjuly.iconosys.eng.PhotoView'),(52,5,'xoom.dealbuzzer.iconosys.esp.LocationSender'),(53,6,'myexpense.iconosys.eng.Preview'),(54,7,'fourthofjuly.iconosys.eng.ShareImage'),(55,6,'myexpense.iconosys.eng.SpreadSheet'),(56,7,'fourthofjuly.iconosys.eng.ShowPopUp'),(57,6,'myexpense.iconosys.eng.MileageSheet'),(58,7,'fourthofjuly.iconosys.eng.PopUp'),(59,6,'myexpense.iconosys.eng.SaveSend'),(60,7,'fourthofjuly.iconosys.eng.Wish'),(61,6,'myexpense.iconosys.eng.Mileage'),(62,7,'fourthofjuly.iconosys.eng.Scheduler'),(63,6,'myexpense.iconosys.eng.ShowPopUpReport'),(64,7,'fourthofjuly.iconosys.eng.ScheduleEdit'),(65,6,'myexpense.iconosys.eng.AdView'),(66,7,'fourthofjuly.iconosys.eng.SchedulePopUp'),(67,6,'myexpense.iconosys.eng.RegistrationScreen'),(68,7,'fourthofjuly.iconosys.eng.SchedulePreview'),(69,6,'myexpense.iconosys.eng.MileageSend'),(70,7,'fourthofjuly.iconosys.eng.MyMMS'),(71,6,'myexpense.iconosys.eng.SelectRange'),(72,7,'fourthofjuly.iconosys.eng.AdView'),(73,6,'myexpense.iconosys.eng.ReportSheet'),(74,7,'fourthofjuly.iconosys.eng.ValentineSvc'),(75,6,'myexpense.iconosys.eng.ShowTerms'),(76,7,'fourthofjuly.iconosys.eng.TickSvc'),(77,6,'myexpense.iconosys.eng.Setting'),(78,7,'fourthofjuly.iconosys.eng.LocationSender'),(79,6,'myexpense.iconosys.eng.Locatimyexpense.iconosys.eng.LocationSender'),(80,7,'fourthofjuly.iconosys.eng.SchedulerService'),(81,7,'fourthofjuly.iconosys.eng.Adview'),(82,7,'fourthofjuly.iconosys.eng.BootReceiver'),(83,4,'auctionbuzzer.iconosys.eng.OtherApps$2'),(84,4,'auctionbuzzer.iconosys.eng.OtherApps$6'),(85,4,'auctionbuzzer.iconosys.eng.OtherApps$4'),(86,4,'auctionbuzzer.iconosys.eng.FlyDay$1'),(87,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$6'),(88,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$3'),(89,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$2'),(90,4,'auctionbuzzer.iconosys.eng.OtherApps$3'),(91,4,'auctionbuzzer.iconosys.eng.PostOffer$1'),(92,5,'xoom.dealbuzzer.iconosys.esp.FlyDay$1'),(93,4,'auctionbuzzer.iconosys.eng.OtherApps$1'),(94,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$1'),(95,4,'auctionbuzzer.iconosys.eng.OtherApps$5'),(96,5,'xoom.dealbuzzer.iconosys.esp.PostOffer$1'),(97,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$4'),(98,5,'xoom.dealbuzzer.iconosys.esp.OtherApps$5'),(99,6,'myexpense.iconosys.eng.MyReceiptManager$6'),(100,6,'myexpense.iconosys.eng.OtherApps$3'),(101,6,'myexpense.iconosys.eng.Review$3'),(102,6,'myexpense.iconosys.eng.Mileage$4'),(103,6,'myexpense.iconosys.eng.MyReceiptManager$2'),(104,6,'myexpense.iconosys.eng.OtherApps$2'),(105,6,'myexpense.iconosys.eng.Mileage$8'),(106,6,'myexpense.iconosys.eng.MileageSend$1'),(107,6,'myexpense.iconosys.eng.OtherApps$1'),(108,6,'myexpense.iconosys.eng.MyReceiptManager$3'),(109,6,'myexpense.iconosys.eng.SelectRange$5'),(110,6,'myexpense.iconosys.eng.OtherApps$4'),(111,6,'myexpense.iconosys.eng.Review$1'),(112,6,'myexpense.iconosys.eng.MyReceiptManager$1'),(113,6,'myexpense.iconosys.eng.Mileage$5'),(114,6,'myexpense.iconosys.eng.MyReceiptManager$4'),(115,6,'myexpense.iconosys.eng.OtherApps$5'),(116,6,'myexpense.iconosys.eng.RegistrationScreen$1'),(117,6,'myexpense.iconosys.eng.SaveSend$4'),(118,6,'myexpense.iconosys.eng.OtherApps$6'),(119,7,'fourthofjuly.iconosys.eng.Mother$3'),(120,7,'fourthofjuly.iconosys.eng.OtherApps$2'),(121,7,'fourthofjuly.iconosys.eng.MyValentine$2'),(122,7,'fourthofjuly.iconosys.eng.Wish$4'),(123,7,'fourthofjuly.iconosys.eng.Wish$2'),(124,7,'fourthofjuly.iconosys.eng.PhotoView$1'),(125,7,'fourthofjuly.iconosys.eng.OtherApps$1'),(126,7,'fourthofjuly.iconosys.eng.Scheduler$2'),(127,7,'fourthofjuly.iconosys.eng.ScheduleEdit$3'),(128,7,'fourthofjuly.iconosys.eng.OtherApps$6'),(129,7,'fourthofjuly.iconosys.eng.PopUp$1'),(130,7,'fourthofjuly.iconosys.eng.OtherApps$5'),(131,7,'fourthofjuly.iconosys.eng.OtherApps$3'),(132,7,'fourthofjuly.iconosys.eng.Mother$5'),(133,7,'fourthofjuly.iconosys.eng.Wish$1'),(134,7,'fourthofjuly.iconosys.eng.OtherApps$4'),(135,7,'fourthofjuly.iconosys.eng.RegistrationScreen$1'),(136,7,'fourthofjuly.iconosys.eng.ScheduleEdit$4'),(137,7,'fourthofjuly.iconosys.eng.Mother$2'),(138,7,'fourthofjuly.iconosys.eng.SweetHeart$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'(.*)'),(2,11,'(.*)'),(3,15,'(.*)'),(4,16,'(.*)'),(5,17,'_who'),(6,18,'product'),(7,18,'shop'),(8,18,'pic'),(9,18,'access_token'),(10,11,'access_token'),(11,15,'access_token'),(12,16,'access_token'),(13,40,'location'),(14,40,'shop'),(15,18,'place'),(16,22,'(.*)'),(17,40,'(.*)'),(18,34,'(.*)'),(19,31,'(.*)'),(20,18,'tags'),(21,22,'access_token'),(22,40,'access_token'),(23,34,'access_token'),(24,18,'location'),(25,31,'access_token'),(26,40,'pic'),(27,40,'tags'),(28,37,'_who'),(29,40,'place'),(30,40,'product'),(31,73,'range2'),(32,71,'id'),(33,73,'range1'),(34,24,'(.*)'),(35,55,'_cat'),(36,59,'_id'),(37,71,'report_type'),(38,71,'Category'),(39,73,'id'),(40,24,'access_token'),(41,73,'Category'),(42,38,'id'),(43,32,'_mileage'),(44,69,'_id'),(45,38,'report_type'),(46,65,'_who'),(47,60,'thesmsbg'),(48,36,'_id'),(49,51,'take_photo'),(50,54,'saved_uri'),(51,64,'_id'),(52,68,'thebg'),(53,36,'items'),(54,51,'pick_photo'),(55,36,'itemcount'),(56,58,'reason'),(57,68,'M3'),(58,66,'_id'),(59,36,'names'),(60,66,'_number'),(61,60,'thebg'),(62,66,'_icon'),(63,66,'_msg'),(64,72,'_who'),(65,60,'_icon');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,137,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,8),(4,4,7),(5,5,8),(6,6,7),(7,7,12),(8,8,12),(9,9,11),(10,10,11),(11,11,11),(12,12,15),(13,13,12),(14,14,11),(15,15,11),(16,16,22),(17,17,14),(18,18,31),(19,19,11),(20,20,11),(21,21,31),(22,22,25),(23,23,15),(24,24,15),(25,25,25),(26,26,25),(27,27,12),(28,28,22),(29,29,15),(30,30,11),(31,31,22),(32,32,22),(33,33,12),(34,34,31),(35,35,11),(36,36,11),(37,37,25),(38,38,15),(39,39,22),(40,40,12),(41,41,22),(42,42,31),(43,43,22),(44,44,31),(45,45,25),(46,46,22),(47,47,22),(48,48,22),(49,49,28),(50,50,25),(51,51,24),(52,52,35),(53,53,67),(54,54,61),(55,55,24),(56,56,44),(57,57,24),(58,58,44),(59,59,61),(60,60,57),(61,61,55),(62,62,38),(63,63,24),(64,64,35),(65,65,67),(66,66,24),(67,67,61),(68,68,69),(69,69,24),(70,70,24),(71,71,35),(72,72,61),(73,73,24),(74,74,24),(75,75,71),(76,76,44),(77,77,44),(78,78,24),(79,79,61),(80,80,24),(81,81,38),(82,82,41),(83,83,35),(84,84,73),(85,85,61),(86,86,61),(87,87,24),(88,88,44),(89,89,24),(90,90,61),(91,91,61),(92,92,24),(93,93,44),(94,94,35),(95,95,67),(96,96,59),(97,97,35),(98,98,26),(99,99,26),(100,100,36),(101,100,26),(102,100,30),(103,101,64),(104,102,64),(105,103,60),(106,104,60),(107,105,54),(108,106,26),(109,107,62),(110,108,36),(111,108,54),(112,108,30),(113,109,26),(114,110,82),(115,111,36),(116,111,33),(117,111,30),(118,112,30),(119,113,30),(120,113,60),(121,113,36),(122,114,60),(123,115,30),(124,115,60),(125,115,36),(126,116,30),(127,116,45),(128,116,36),(129,117,51),(130,118,51),(131,118,36),(132,118,30),(133,119,48),(134,120,30),(135,120,33),(136,120,36),(137,121,62),(138,122,26),(139,123,36),(140,123,30),(141,123,64),(142,124,36),(143,124,30),(144,124,33),(145,125,60),(146,126,39),(147,127,58),(148,128,33),(149,128,36),(150,128,30),(151,129,36),(152,129,30),(153,129,33),(154,130,62),(155,131,30),(156,131,26),(157,131,36),(158,132,30),(159,132,45),(160,132,36),(161,133,60),(162,133,30),(163,133,36),(164,134,48),(165,135,26),(166,136,36),(167,136,33),(168,136,30),(169,137,36),(170,137,45),(171,137,30),(172,138,51),(173,139,60),(174,140,26),(175,141,30),(176,141,51),(177,141,36),(178,142,64),(179,143,26),(180,143,30),(181,143,36),(182,144,30),(183,144,36),(184,144,64),(185,145,66),(186,146,51),(187,147,51),(188,148,39),(189,149,51),(190,150,36),(191,150,30),(192,150,48),(193,151,64),(194,152,51),(195,153,66),(196,154,62),(197,155,54),(198,156,26),(199,157,82);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<eng.trickersticks.auld.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,3,'<eng.trickersticks.jet.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(3,8,'<doggiesbday.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(4,7,'<doggiesbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(5,8,'<doggiesbday.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(6,7,'<doggiesbday.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(7,83,'<auctionbuzzer.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(8,84,'<auctionbuzzer.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(9,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(10,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(11,11,'<auctionbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(12,15,'<auctionbuzzer.iconosys.eng.PostOffer: void startPickActivity()>',4,'a',NULL),(13,85,'<auctionbuzzer.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(14,86,'<auctionbuzzer.iconosys.eng.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(16,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onClick(android.view.View)>',20,'a',NULL),(17,14,'<auctionbuzzer.iconosys.eng.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(18,31,'<xoom.dealbuzzer.iconosys.esp.PostOffer: void startCameraActivity()>',9,'a',NULL),(19,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(20,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(21,31,'<xoom.dealbuzzer.iconosys.esp.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(22,87,'<xoom.dealbuzzer.iconosys.esp.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(23,15,'<auctionbuzzer.iconosys.eng.PostOffer: void onPick(android.content.Intent)>',6,'p',0),(24,15,'<auctionbuzzer.iconosys.eng.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(25,88,'<xoom.dealbuzzer.iconosys.esp.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(26,89,'<xoom.dealbuzzer.iconosys.esp.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(27,90,'<auctionbuzzer.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(28,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onClick(android.view.View)>',10,'a',NULL),(29,91,'<auctionbuzzer.iconosys.eng.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,11,'<auctionbuzzer.iconosys.eng.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(31,92,'<xoom.dealbuzzer.iconosys.esp.FlyDay$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(33,93,'<auctionbuzzer.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(34,31,'<xoom.dealbuzzer.iconosys.esp.PostOffer: void startPickActivity()>',4,'a',NULL),(35,11,'<auctionbuzzer.iconosys.eng.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(36,11,'<auctionbuzzer.iconosys.eng.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(37,94,'<xoom.dealbuzzer.iconosys.esp.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(38,15,'<auctionbuzzer.iconosys.eng.PostOffer: void startCameraActivity()>',9,'a',NULL),(39,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(40,95,'<auctionbuzzer.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(41,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(42,96,'<xoom.dealbuzzer.iconosys.esp.PostOffer$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(43,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(44,31,'<xoom.dealbuzzer.iconosys.esp.PostOffer: boolean onOptionsItemSelected(android.view.MenuItem)>',110,'a',NULL),(45,97,'<xoom.dealbuzzer.iconosys.esp.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(46,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onClick(android.view.View)>',43,'a',NULL),(47,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onCreate(android.os.Bundle)>',11,'a',NULL),(48,22,'<xoom.dealbuzzer.iconosys.esp.FlyDay: void onClick(android.view.View)>',30,'a',NULL),(49,28,'<xoom.dealbuzzer.iconosys.esp.SettingsFly: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(50,98,'<xoom.dealbuzzer.iconosys.esp.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(51,99,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(52,100,'<myexpense.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(53,67,'<myexpense.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(54,61,'<myexpense.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(55,24,'<myexpense.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(56,101,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(57,24,'<myexpense.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(58,101,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(59,102,'<myexpense.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(60,57,'<myexpense.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(61,55,'<myexpense.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(62,38,'<myexpense.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(63,103,'<myexpense.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL),(64,104,'<myexpense.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(65,67,'<myexpense.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(66,24,'<myexpense.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(67,105,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(68,106,'<myexpense.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(69,24,'<myexpense.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(70,24,'<myexpense.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(71,107,'<myexpense.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(72,105,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(73,108,'<myexpense.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',7,'a',NULL),(74,99,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(75,109,'<myexpense.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(76,44,'<myexpense.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(77,101,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(78,99,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(79,61,'<myexpense.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(80,99,'<myexpense.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(81,38,'<myexpense.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(82,41,'<myexpense.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(83,110,'<myexpense.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(84,73,'<myexpense.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(85,61,'<myexpense.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(86,105,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(87,24,'<myexpense.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(88,111,'<myexpense.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(89,112,'<myexpense.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(90,105,'<myexpense.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(91,113,'<myexpense.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(92,114,'<myexpense.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(93,101,'<myexpense.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(94,115,'<myexpense.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(95,116,'<myexpense.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(96,117,'<myexpense.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(97,118,'<myexpense.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(98,26,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(99,26,'<fourthofjuly.iconosys.eng.Mother: void onCreate(android.os.Bundle)>',27,'s',NULL),(100,119,'<fourthofjuly.iconosys.eng.Mother$3: void onClick(android.view.View)>',7,'a',NULL),(101,64,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(102,64,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onCreate(android.os.Bundle)>',9,'s',NULL),(103,60,'<fourthofjuly.iconosys.eng.Wish: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(104,60,'<fourthofjuly.iconosys.eng.Wish: void onActivityResult(int,int,android.content.Intent)>',34,'a',NULL),(105,54,'<fourthofjuly.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(106,26,'<fourthofjuly.iconosys.eng.Mother: void onResume()>',10,'a',NULL),(107,62,'<fourthofjuly.iconosys.eng.Scheduler: void onCreate(android.os.Bundle)>',10,'s',NULL),(108,54,'<fourthofjuly.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(109,26,'<fourthofjuly.iconosys.eng.Mother: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(110,82,'<fourthofjuly.iconosys.eng.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(111,120,'<fourthofjuly.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(112,121,'<fourthofjuly.iconosys.eng.MyValentine$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(113,122,'<fourthofjuly.iconosys.eng.Wish$4: void onClick(android.view.View)>',6,'a',NULL),(114,60,'<fourthofjuly.iconosys.eng.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(115,123,'<fourthofjuly.iconosys.eng.Wish$2: void onClick(android.view.View)>',6,'a',NULL),(116,45,'<fourthofjuly.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(117,51,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(118,124,'<fourthofjuly.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(119,48,'<fourthofjuly.iconosys.eng.SweetHeart: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(120,125,'<fourthofjuly.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(121,126,'<fourthofjuly.iconosys.eng.Scheduler$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(122,26,'<fourthofjuly.iconosys.eng.Mother: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(123,127,'<fourthofjuly.iconosys.eng.ScheduleEdit$3: void onClick(android.view.View)>',17,'a',NULL),(124,128,'<fourthofjuly.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(125,60,'<fourthofjuly.iconosys.eng.Wish: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(126,39,'<fourthofjuly.iconosys.eng.MyKissHugs: void onCreate(android.os.Bundle)>',40,'s',NULL),(127,129,'<fourthofjuly.iconosys.eng.PopUp$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(128,130,'<fourthofjuly.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(129,131,'<fourthofjuly.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(130,62,'<fourthofjuly.iconosys.eng.Scheduler: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(131,132,'<fourthofjuly.iconosys.eng.Mother$5: void onClick(android.view.View)>',6,'a',NULL),(132,45,'<fourthofjuly.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(133,133,'<fourthofjuly.iconosys.eng.Wish$1: void onClick(android.view.View)>',15,'a',NULL),(134,48,'<fourthofjuly.iconosys.eng.SweetHeart: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(135,26,'<fourthofjuly.iconosys.eng.Mother: void onCreate(android.os.Bundle)>',23,'s',NULL),(136,134,'<fourthofjuly.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(137,135,'<fourthofjuly.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(138,51,'<fourthofjuly.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(139,60,'<fourthofjuly.iconosys.eng.Wish: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(140,26,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(141,124,'<fourthofjuly.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(142,64,'<fourthofjuly.iconosys.eng.ScheduleEdit: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(143,26,'<fourthofjuly.iconosys.eng.Mother: void openView(java.lang.String)>',5,'a',NULL),(144,136,'<fourthofjuly.iconosys.eng.ScheduleEdit$4: void onClick(android.view.View)>',6,'a',NULL),(145,66,'<fourthofjuly.iconosys.eng.SchedulePopUp: void onCreate(android.os.Bundle)>',14,'s',NULL),(146,51,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(147,51,'<fourthofjuly.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(148,39,'<fourthofjuly.iconosys.eng.MyKissHugs: void onCreate(android.os.Bundle)>',36,'s',NULL),(149,51,'<fourthofjuly.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(150,138,'<fourthofjuly.iconosys.eng.SweetHeart$2: void onClick(android.view.View)>',6,'a',NULL),(151,64,'<fourthofjuly.iconosys.eng.ScheduleEdit: void onCreate(android.os.Bundle)>',13,'s',NULL),(152,51,'<fourthofjuly.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(153,66,'<fourthofjuly.iconosys.eng.SchedulePopUp: void onCreate(android.os.Bundle)>',10,'s',NULL),(154,62,'<fourthofjuly.iconosys.eng.Scheduler: void onCreate(android.os.Bundle)>',6,'s',NULL),(155,54,'<fourthofjuly.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(156,26,'<fourthofjuly.iconosys.eng.Mother: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(157,82,'<fourthofjuly.iconosys.eng.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,2),(2,6,2),(3,10,4),(4,11,2),(5,12,5),(6,16,6),(7,18,2),(8,20,2),(9,21,2),(10,22,2),(11,24,5),(12,25,4),(13,26,5),(14,27,4),(15,28,2),(16,29,4),(17,31,2),(18,32,6),(19,33,2),(20,34,5),(21,37,2),(22,42,2),(23,44,2),(24,48,4),(25,51,7),(26,52,7),(27,53,7),(28,54,7),(29,55,7),(30,56,7),(31,57,7),(32,58,7),(33,59,7),(34,60,7),(35,61,7),(36,62,7),(37,63,7),(38,64,7),(39,65,7),(40,66,7),(41,69,2),(42,73,7),(43,74,7),(44,75,7),(45,76,7),(46,77,7),(47,78,7),(48,79,7),(49,80,7),(50,82,2),(51,93,6),(52,94,2),(53,95,7),(54,96,7),(55,97,7),(56,98,7),(57,99,7),(58,100,7),(59,101,7),(60,102,7),(61,109,5),(62,112,2),(63,114,7),(64,115,7),(65,116,7),(66,117,7),(67,118,7),(68,119,7),(69,120,7),(70,121,7),(71,122,2),(72,131,7),(73,132,7),(74,133,7),(75,134,7),(76,135,7),(77,136,7),(78,137,7),(79,138,7),(80,140,2),(81,142,4),(82,148,2),(83,151,2),(84,154,2),(85,155,2),(86,161,2),(87,167,4),(88,170,6),(89,173,4),(90,175,9),(91,179,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/auld/GlowSticks'),(2,2,'eng/trickersticks/jet/GlowSticks'),(3,3,'doggiesbday/timer/iconosys/OtherApps'),(4,4,'doggiesbday/timer/iconosys/ContactsList'),(5,7,'auctionbuzzer/iconosys/eng/PostOffer'),(6,8,'auctionbuzzer/iconosys/eng/SettingsFly'),(7,9,'auctionbuzzer/iconosys/eng/OtherApps'),(8,13,'auctionbuzzer/iconosys/eng/DisplayMap'),(9,14,'xoom/dealbuzzer/iconosys/esp/SettingsFly'),(10,15,'auctionbuzzer/iconosys/eng/OtherApps'),(11,17,'auctionbuzzer/iconosys/eng/CatchFly'),(12,19,'auctionbuzzer/iconosys/eng/OtherApps'),(13,23,'xoom/dealbuzzer/iconosys/esp/CatchFly'),(14,30,'auctionbuzzer/iconosys/eng/AdView'),(15,35,'xoom/dealbuzzer/iconosys/esp/OtherApps'),(16,36,'xoom/dealbuzzer/iconosys/esp/OtherApps'),(17,38,'xoom/dealbuzzer/iconosys/esp/DisplayMap'),(18,39,'xoom/dealbuzzer/iconosys/esp/AdView'),(19,40,'xoom/dealbuzzer/iconosys/esp/PostOffer'),(20,41,'xoom/dealbuzzer/iconosys/esp/OtherApps'),(21,43,'myexpense/iconosys/eng/ReviewSelection'),(22,45,'myexpense/iconosys/eng/LocationSender'),(23,46,'myexpense/iconosys/eng/MileageAdd'),(24,47,'myexpense/iconosys/eng/ReviewSelection'),(25,49,'myexpense/iconosys/eng/ReviewSelection'),(26,50,'myexpense/iconosys/eng/MileageSheet'),(27,67,'myexpense/iconosys/eng/OtherApps'),(28,68,'myexpense/iconosys/eng/Review'),(29,70,'myexpense/iconosys/eng/LocationSender'),(30,71,'myexpense/iconosys/eng/AdView'),(31,72,'myexpense/iconosys/eng/ReviewSelection'),(32,81,'myexpense/iconosys/eng/RegistrationScreen'),(33,83,'myexpense/iconosys/eng/ReviewSelection'),(34,84,'myexpense/iconosys/eng/Mileage'),(35,85,'myexpense/iconosys/eng/SelectRange'),(36,86,'myexpense/iconosys/eng/ReportSheet'),(37,87,'myexpense/iconosys/eng/OtherApps'),(38,88,'myexpense/iconosys/eng/SelectRange'),(39,89,'myexpense/iconosys/eng/ReviewSelection'),(40,90,'myexpense/iconosys/eng/OtherApps'),(41,91,'myexpense/iconosys/eng/ReviewSelection'),(42,92,'myexpense/iconosys/eng/SelectRange'),(43,103,'myexpense/iconosys/eng/MileageSheet'),(44,104,'myexpense/iconosys/eng/SelectRange'),(45,105,'myexpense/iconosys/eng/OtherApps'),(46,106,'myexpense/iconosys/eng/SelectRange'),(47,107,'myexpense/iconosys/eng/TakePicture'),(48,108,'myexpense/iconosys/eng/ReviewSelection'),(49,110,'myexpense/iconosys/eng/Settings'),(50,111,'myexpense/iconosys/eng/ReviewSelection'),(51,113,'myexpense/iconosys/eng/ShowTerms'),(52,123,'fourthofjuly/iconosys/eng/OtherApps'),(53,124,'fourthofjuly/iconosys/eng/ValentineSvc'),(54,125,'fourthofjuly/iconosys/eng/PhotoView'),(55,126,'fourthofjuly/iconosys/eng/SchedulerService'),(56,127,'fourthofjuly/iconosys/eng/AdView'),(57,128,'fourthofjuly/iconosys/eng/AdView'),(58,129,'fourthofjuly/iconosys/eng/RegistrationScreen'),(59,130,'fourthofjuly/iconosys/eng/SchedulerService'),(60,139,'fourthofjuly/iconosys/eng/TickSvc'),(61,141,'fourthofjuly/iconosys/eng/ItemDialog'),(62,143,'fourthofjuly/iconosys/eng/MyMMS'),(63,144,'fourthofjuly/iconosys/eng/MyMMS'),(64,145,'fourthofjuly/iconosys/eng/LocationSender'),(65,146,'fourthofjuly/iconosys/eng/Mother'),(66,147,'fourthofjuly/iconosys/eng/ShareImage'),(67,149,'fourthofjuly/iconosys/eng/ScheduleEdit'),(68,150,'fourthofjuly/iconosys/eng/SchedulePreview'),(69,152,'fourthofjuly/iconosys/eng/TickSvc'),(70,153,'fourthofjuly/iconosys/eng/Wish'),(71,156,'fourthofjuly/iconosys/eng/SchedulePopUp'),(72,157,'fourthofjuly/iconosys/eng/MyKissHugs'),(73,158,'fourthofjuly/iconosys/eng/LocationSender'),(74,159,'fourthofjuly/iconosys/eng/SchedulePreview'),(75,160,'fourthofjuly/iconosys/eng/ValentineSvc'),(76,162,'fourthofjuly/iconosys/eng/ShowTerms'),(77,163,'fourthofjuly/iconosys/eng/OtherApps'),(78,164,'fourthofjuly/iconosys/eng/Scheduler'),(79,165,'fourthofjuly/iconosys/eng/ShowPopUp'),(80,166,'fourthofjuly/iconosys/eng/PopUp'),(81,168,'fourthofjuly/iconosys/eng/SchedulerService'),(82,169,'fourthofjuly/iconosys/eng/ShowPopUp'),(83,171,'fourthofjuly/iconosys/eng/TickSvc'),(84,172,'fourthofjuly/iconosys/eng/OtherApps'),(85,174,'fourthofjuly/iconosys/eng/SchedulerService'),(86,176,'fourthofjuly/iconosys/eng/SchedulerService'),(87,177,'fourthofjuly/iconosys/eng/SchedulerService'),(88,178,'fourthofjuly/iconosys/eng/OtherApps'),(89,180,'fourthofjuly/iconosys/eng/ValentineSvc');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,3),(2,6,4),(3,10,5),(4,11,6),(5,18,7),(6,20,8),(7,21,9),(8,22,10),(9,25,11),(10,27,12),(11,28,13),(12,29,15),(13,31,16),(14,33,18),(15,37,19),(16,42,20),(17,44,21),(18,48,22),(19,69,23),(20,82,25),(21,94,26),(22,112,27),(23,122,28),(24,140,29),(25,142,30),(26,148,31),(27,151,33),(28,154,35),(29,155,36),(30,161,38),(31,167,40),(32,173,41),(33,179,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,16,'output'),(2,32,'output'),(3,43,'id'),(4,43,'report_type'),(5,46,'_mileage'),(6,47,'id'),(7,47,'report_type'),(8,49,'id'),(9,49,'report_type'),(10,51,'android.intent.extra.INTENT'),(11,52,'android.intent.extra.INTENT'),(12,53,'android.intent.extra.TITLE'),(13,53,'android.intent.extra.INTENT'),(14,54,'android.intent.extra.INTENT'),(15,55,'android.intent.extra.TITLE'),(16,55,'android.intent.extra.INTENT'),(17,56,'android.intent.extra.INTENT'),(18,57,'android.intent.extra.TITLE'),(19,57,'android.intent.extra.INTENT'),(20,58,'android.intent.extra.TITLE'),(21,58,'android.intent.extra.INTENT'),(22,59,'android.intent.extra.INTENT'),(23,60,'android.intent.extra.INTENT'),(24,61,'android.intent.extra.TITLE'),(25,61,'android.intent.extra.INTENT'),(26,62,'android.intent.extra.INTENT'),(27,63,'android.intent.extra.TITLE'),(28,63,'android.intent.extra.INTENT'),(29,64,'android.intent.extra.INTENT'),(30,65,'android.intent.extra.TITLE'),(31,65,'android.intent.extra.INTENT'),(32,66,'android.intent.extra.TITLE'),(33,66,'android.intent.extra.INTENT'),(34,72,'id'),(35,72,'report_type'),(36,73,'android.intent.extra.INTENT'),(37,74,'android.intent.extra.INTENT'),(38,75,'android.intent.extra.TITLE'),(39,75,'android.intent.extra.INTENT'),(40,76,'android.intent.extra.INTENT'),(41,77,'android.intent.extra.TITLE'),(42,77,'android.intent.extra.INTENT'),(43,78,'android.intent.extra.INTENT'),(44,79,'android.intent.extra.TITLE'),(45,79,'android.intent.extra.INTENT'),(46,80,'android.intent.extra.TITLE'),(47,80,'android.intent.extra.INTENT'),(48,83,'id'),(49,83,'report_type'),(50,85,'id'),(51,85,'report_type'),(52,86,'id'),(53,86,'Category'),(54,86,'range1'),(55,86,'range2'),(56,88,'id'),(57,88,'report_type'),(58,89,'id'),(59,89,'report_type'),(60,91,'id'),(61,91,'report_type'),(62,92,'id'),(63,92,'Category'),(64,92,'report_type'),(65,93,'output'),(66,95,'android.intent.extra.INTENT'),(67,96,'android.intent.extra.INTENT'),(68,97,'android.intent.extra.TITLE'),(69,97,'android.intent.extra.INTENT'),(70,98,'android.intent.extra.INTENT'),(71,99,'android.intent.extra.TITLE'),(72,99,'android.intent.extra.INTENT'),(73,100,'android.intent.extra.INTENT'),(74,101,'android.intent.extra.TITLE'),(75,101,'android.intent.extra.INTENT'),(76,102,'android.intent.extra.TITLE'),(77,102,'android.intent.extra.INTENT'),(78,104,'id'),(79,104,'report_type'),(80,106,'id'),(81,106,'report_type'),(82,108,'id'),(83,108,'report_type'),(84,111,'id'),(85,111,'report_type'),(86,114,'android.intent.extra.INTENT'),(87,115,'android.intent.extra.INTENT'),(88,116,'android.intent.extra.TITLE'),(89,116,'android.intent.extra.INTENT'),(90,117,'android.intent.extra.INTENT'),(91,118,'android.intent.extra.TITLE'),(92,118,'android.intent.extra.INTENT'),(93,119,'android.intent.extra.INTENT'),(94,120,'android.intent.extra.TITLE'),(95,120,'android.intent.extra.INTENT'),(96,121,'android.intent.extra.TITLE'),(97,121,'android.intent.extra.INTENT'),(98,125,'take_photo'),(99,127,'_who'),(100,131,'android.intent.extra.INTENT'),(101,132,'android.intent.extra.INTENT'),(102,133,'android.intent.extra.TITLE'),(103,133,'android.intent.extra.INTENT'),(104,134,'android.intent.extra.INTENT'),(105,135,'android.intent.extra.TITLE'),(106,135,'android.intent.extra.INTENT'),(107,136,'android.intent.extra.INTENT'),(108,137,'android.intent.extra.TITLE'),(109,137,'android.intent.extra.INTENT'),(110,138,'android.intent.extra.TITLE'),(111,138,'android.intent.extra.INTENT'),(112,141,'itemcount'),(113,141,'_id'),(114,141,'items'),(115,141,'names'),(116,147,'saved_uri'),(117,149,'_id'),(118,150,'thebg'),(119,150,'M3'),(120,153,'thebg'),(121,153,'thesmsbg'),(122,153,'_icon'),(123,159,'thebg'),(124,159,'M3'),(125,166,'reason'),(126,170,'output');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,8),(12,12,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,2),(5,6,1),(6,7,1),(7,8,1),(8,9,1);
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
INSERT INTO `IMimeTypes` VALUES (1,175,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.auld'),(2,2,'eng.trickersticks.jet'),(3,3,'doggiesbday.timer.iconosys'),(4,4,'doggiesbday.timer.iconosys'),(5,7,'auctionbuzzer.iconosys.eng'),(6,8,'auctionbuzzer.iconosys.eng'),(7,9,'auctionbuzzer.iconosys.eng'),(8,13,'auctionbuzzer.iconosys.eng'),(9,14,'xoom.dealbuzzer.iconosys.esp'),(10,15,'auctionbuzzer.iconosys.eng'),(11,17,'auctionbuzzer.iconosys.eng'),(12,19,'auctionbuzzer.iconosys.eng'),(13,23,'xoom.dealbuzzer.iconosys.esp'),(14,30,'auctionbuzzer.iconosys.eng'),(15,35,'xoom.dealbuzzer.iconosys.esp'),(16,36,'xoom.dealbuzzer.iconosys.esp'),(17,38,'xoom.dealbuzzer.iconosys.esp'),(18,39,'xoom.dealbuzzer.iconosys.esp'),(19,40,'xoom.dealbuzzer.iconosys.esp'),(20,41,'xoom.dealbuzzer.iconosys.esp'),(21,43,'myexpense.iconosys.eng'),(22,45,'myexpense.iconosys.eng'),(23,46,'myexpense.iconosys.eng'),(24,47,'myexpense.iconosys.eng'),(25,49,'myexpense.iconosys.eng'),(26,50,'myexpense.iconosys.eng'),(27,67,'myexpense.iconosys.eng'),(28,68,'myexpense.iconosys.eng'),(29,70,'myexpense.iconosys.eng'),(30,71,'myexpense.iconosys.eng'),(31,72,'myexpense.iconosys.eng'),(32,81,'myexpense.iconosys.eng'),(33,83,'myexpense.iconosys.eng'),(34,84,'myexpense.iconosys.eng'),(35,85,'myexpense.iconosys.eng'),(36,86,'myexpense.iconosys.eng'),(37,87,'myexpense.iconosys.eng'),(38,88,'myexpense.iconosys.eng'),(39,89,'myexpense.iconosys.eng'),(40,90,'myexpense.iconosys.eng'),(41,91,'myexpense.iconosys.eng'),(42,92,'myexpense.iconosys.eng'),(43,103,'myexpense.iconosys.eng'),(44,104,'myexpense.iconosys.eng'),(45,105,'myexpense.iconosys.eng'),(46,106,'myexpense.iconosys.eng'),(47,107,'myexpense.iconosys.eng'),(48,108,'myexpense.iconosys.eng'),(49,110,'myexpense.iconosys.eng'),(50,111,'myexpense.iconosys.eng'),(51,113,'myexpense.iconosys.eng'),(52,123,'fourthofjuly.iconosys.eng'),(53,124,'fourthofjuly.iconosys.eng'),(54,125,'fourthofjuly.iconosys.eng'),(55,126,'fourthofjuly.iconosys.eng'),(56,127,'fourthofjuly.iconosys.eng'),(57,128,'fourthofjuly.iconosys.eng'),(58,129,'fourthofjuly.iconosys.eng'),(59,130,'fourthofjuly.iconosys.eng'),(60,139,'fourthofjuly.iconosys.eng'),(61,141,'fourthofjuly.iconosys.eng'),(62,143,'fourthofjuly.iconosys.eng'),(63,144,'fourthofjuly.iconosys.eng'),(64,145,'fourthofjuly.iconosys.eng'),(65,146,'fourthofjuly.iconosys.eng'),(66,147,'fourthofjuly.iconosys.eng'),(67,149,'fourthofjuly.iconosys.eng'),(68,150,'fourthofjuly.iconosys.eng'),(69,152,'fourthofjuly.iconosys.eng'),(70,153,'fourthofjuly.iconosys.eng'),(71,156,'fourthofjuly.iconosys.eng'),(72,157,'fourthofjuly.iconosys.eng'),(73,158,'fourthofjuly.iconosys.eng'),(74,159,'fourthofjuly.iconosys.eng'),(75,160,'fourthofjuly.iconosys.eng'),(76,162,'fourthofjuly.iconosys.eng'),(77,163,'fourthofjuly.iconosys.eng'),(78,164,'fourthofjuly.iconosys.eng'),(79,165,'fourthofjuly.iconosys.eng'),(80,166,'fourthofjuly.iconosys.eng'),(81,168,'fourthofjuly.iconosys.eng'),(82,169,'fourthofjuly.iconosys.eng'),(83,171,'fourthofjuly.iconosys.eng'),(84,172,'fourthofjuly.iconosys.eng'),(85,174,'fourthofjuly.iconosys.eng'),(86,176,'fourthofjuly.iconosys.eng'),(87,177,'fourthofjuly.iconosys.eng'),(88,178,'fourthofjuly.iconosys.eng'),(89,180,'fourthofjuly.iconosys.eng');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,7,0),(4,8,0),(5,9,0),(6,11,0),(7,22,0),(8,24,0),(9,26,0),(10,82,0),(11,83,0),(12,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,6,0,0),(5,7,1,0),(6,8,1,0),(7,9,0,0),(8,10,0,0),(9,11,0,0),(10,12,1,0),(11,13,1,0),(12,14,1,0),(13,15,0,0),(14,16,0,0),(15,17,0,0),(16,18,1,0),(17,20,0,0),(18,22,1,0),(19,24,0,0),(20,25,1,0),(21,26,1,0),(22,27,1,0),(23,28,0,0),(24,29,1,0),(25,30,1,0),(26,31,1,0),(27,32,1,0),(28,33,1,0),(29,34,1,0),(30,36,0,0),(31,37,1,0),(32,38,1,0),(33,40,1,0),(34,42,1,0),(35,43,0,0),(36,44,0,0),(37,45,1,0),(38,46,0,0),(39,47,0,0),(40,48,0,0),(41,49,0,0),(42,50,1,0),(43,51,0,0),(44,52,1,0),(45,53,0,0),(46,54,0,0),(47,56,0,0),(48,57,1,0),(49,58,0,0),(50,59,0,0),(51,60,1,0),(52,60,1,0),(53,60,1,0),(54,60,1,0),(55,60,1,0),(56,60,1,0),(57,60,1,0),(58,60,1,0),(59,61,1,0),(60,61,1,0),(61,61,1,0),(62,61,1,0),(63,61,1,0),(64,61,1,0),(65,61,1,0),(66,61,1,0),(67,62,0,0),(68,63,0,0),(69,64,1,0),(70,65,0,0),(71,66,0,0),(72,67,0,0),(73,68,1,0),(74,68,1,0),(75,68,1,0),(76,68,1,0),(77,68,1,0),(78,68,1,0),(79,68,1,0),(80,68,1,0),(81,69,0,0),(82,71,1,0),(83,72,0,0),(84,73,0,0),(85,74,0,0),(86,75,0,0),(87,76,0,0),(88,77,0,0),(89,78,0,0),(90,79,0,0),(91,80,0,0),(92,81,0,0),(93,82,1,0),(94,83,1,0),(95,84,1,0),(96,84,1,0),(97,84,1,0),(98,84,1,0),(99,84,1,0),(100,84,1,0),(101,84,1,0),(102,84,1,0),(103,85,0,0),(104,86,0,0),(105,87,0,0),(106,88,0,0),(107,89,0,0),(108,90,0,0),(109,91,1,0),(110,92,0,0),(111,93,0,0),(112,94,1,0),(113,95,0,0),(114,96,1,0),(115,96,1,0),(116,96,1,0),(117,96,1,0),(118,96,1,0),(119,96,1,0),(120,96,1,0),(121,96,1,0),(122,97,1,0),(123,98,0,0),(124,99,0,0),(125,100,0,0),(126,102,0,0),(127,104,0,0),(128,105,0,0),(129,106,0,0),(130,107,0,0),(131,108,1,0),(132,108,1,0),(133,108,1,0),(134,108,1,0),(135,108,1,0),(136,108,1,0),(137,108,1,0),(138,108,1,0),(139,110,0,0),(140,111,1,0),(141,112,0,0),(142,113,1,0),(143,114,0,0),(144,115,0,0),(145,116,0,0),(146,117,0,0),(147,118,0,0),(148,120,1,0),(149,121,0,0),(150,123,0,0),(151,124,1,0),(152,126,0,0),(153,127,0,0),(154,128,1,0),(155,129,1,0),(156,130,0,0),(157,131,0,0),(158,132,0,0),(159,133,0,0),(160,135,0,0),(161,136,1,0),(162,137,0,0),(163,139,0,0),(164,140,0,0),(165,141,0,0),(166,143,0,0),(167,144,1,0),(168,145,0,0),(169,146,0,0),(170,147,1,0),(171,148,0,0),(172,149,0,0),(173,150,1,0),(174,151,0,0),(175,152,1,0),(176,153,0,0),(177,154,0,0),(178,155,0,0),(179,156,1,0),(180,157,0,0);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.CAMERA'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECORD_AUDIO'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(5,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(21,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(35,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,5,2),(3,35,14),(4,39,17),(5,70,24),(6,122,32),(7,125,34),(8,134,37),(9,142,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,3),(14,4,4),(15,4,5),(16,4,6),(17,4,7),(18,4,8),(19,4,9),(20,4,10),(21,4,11),(22,4,12),(23,5,1),(24,5,2),(25,5,3),(26,5,4),(27,5,5),(28,6,1),(29,5,6),(30,6,2),(31,5,7),(32,6,3),(33,5,8),(34,6,4),(35,7,1),(36,5,9),(37,6,5),(38,7,2),(39,5,10),(40,7,3),(41,6,6),(42,5,11),(43,7,4),(44,6,7),(45,5,12),(46,6,8),(47,7,5),(48,6,9),(49,7,8),(50,6,10),(51,7,10),(52,7,12),(53,6,11),(54,7,13),(55,6,12),(56,7,14);
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

-- Dump completed on 2015-10-09  0:39:49
