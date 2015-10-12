-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_401
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
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(11,'<INTENT>'),(6,'NULL-CONSTANT'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(2,'android.intent.action.MAIN'),(7,'android.intent.action.SEND'),(8,'android.intent.action.SENDTO'),(10,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(1,'android.view.InputMethod');
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
INSERT INTO `Applications` VALUES (1,'com.acker.albaniankeyboard',2),(2,'com.bucketbrigade.softkeyboard',1),(3,'com.septillionsoft.MagicTrick',4),(4,'com.wuzla.game.ScooterHero_Paid',4),(5,'com.magicwach.rdefense',1798),(6,'com.littlekillerz.legendsarcana',26),(7,'net.skyscanner.android.main',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'<INTENT>'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.acker.albaniankeyboard.SoftKeyboard'),(2,2,'com.bucketbrigade.softkeyboard.SoftKeyboard'),(3,3,'com.septillionsoft.MagicTrick.MagicTrick'),(4,3,'com.geinimi.custom.Ad3042_30420001'),(5,3,'com.geinimi.custom.GoogleKeyboard'),(6,3,'com.geinimi.AdServiceReceiver'),(7,4,'com.wuzla.game.ScooterHero_Paid.ScooterHero_Paid'),(8,4,'com.wuzla.game.ScooterHero_Paid.paid.c.bfikaDwj'),(9,5,'com.magicwach.rdefense.TitleActivity'),(10,5,'com.magicwach.rdefense.GameActivity'),(11,4,'com.wuzla.game.ScooterHero_Paid.paid.c.AndroidIME'),(12,5,'com.magicwach.rdefense.RewardActivity'),(13,4,'com.wuzla.game.ScooterHero_Paid.paid.f'),(14,5,'com.magicwach.rdefense.AchievementActivity'),(15,5,'com.magicwach.rdefense.CreditsActivity'),(16,5,'com.magicwach.rdefense.LevelSelectActivity'),(17,5,'com.magicwach.rdefense.MixerSelectActivity'),(18,5,'com.magicwach.rdefense.DebugActivity'),(19,5,'com.magicwach.rdefense.OptionsActivity'),(20,5,'com.geinimi.custom.Ad3020_30200001'),(21,5,'com.geinimi.custom.GoogleKeyboard'),(22,5,'com.geinimi.AdServiceReceiver'),(23,6,'com.littlekillerz.legendsarcana.SplashScreen'),(24,6,'com.littlekillerz.legendsarcana.MainMenu'),(25,6,'com.littlekillerz.legendsarcana.Installer'),(26,6,'com.littlekillerz.legendsarcana.OptionsMenu'),(27,6,'com.littlekillerz.legendsarcana.CutScene'),(28,6,'com.littlekillerz.legendsarcana.Game'),(29,6,'com.littlekillerz.legendsarcana.EquipSkillsMenu'),(30,6,'com.littlekillerz.legendsarcana.SkillsMenu'),(31,6,'com.littlekillerz.legendsarcana.ClassMenu'),(32,6,'com.littlekillerz.legendsarcana.StatsMenu'),(33,6,'com.littlekillerz.legendsarcana.EquipmentMenu'),(34,6,'com.littlekillerz.legendsarcana.BuyEquipmentMenu'),(35,6,'com.littlekillerz.legendsarcana.EquipmentSelectMenu'),(36,6,'com.littlekillerz.legendsarcana.EquipmentExaminMenu'),(37,6,'com.littlekillerz.legendsarcana.StoreMenu'),(38,6,'com.littlekillerz.legendsarcana.LevelStats'),(39,6,'com.littlekillerz.legendsarcana.LevelSkills'),(40,6,'com.littlekillerz.legendsarcana.LevelMenu'),(41,6,'com.littlekillerz.legendsarcana.AddSkills'),(42,6,'com.littlekillerz.legendsarcana.SkillExamineMenu'),(43,6,'com.littlekillerz.legendsarcana.WorldMap'),(44,6,'com.littlekillerz.legendsarcana.CharacterConversation'),(45,6,'com.littlekillerz.legendsarcana.Popup'),(46,6,'com.littlekillerz.legendsarcana.EquipmentDetail'),(47,6,'com.littlekillerz.legendsarcana.screen.automata.gleanybody.baurgFvj'),(48,6,'com.littlekillerz.legendsarcana.screen.automata.gleanybody.AndroidIME'),(49,6,'com.littlekillerz.legendsarcana.screen.ServiceReceiver'),(50,3,'com.geinimi.c.b'),(51,3,'com.geinimi.AdService'),(52,3,'com.geinimi.AdActivity'),(53,7,'net.skyscanner.android.activity.SearchActivity'),(54,7,'net.skyscanner.android.activity.DestinationSearchActivity'),(55,7,'net.skyscanner.android.activity.DatePickerActivity'),(56,7,'net.skyscanner.android.activity.PassengerPickerActivity'),(57,7,'net.skyscanner.android.activity.SearchResultsActivity'),(58,7,'net.skyscanner.android.activity.FilterResultsActivity'),(59,3,'com.geinimi.c.j'),(60,7,'net.skyscanner.android.activity.filter.StopsFilterActivity'),(61,7,'net.skyscanner.android.activity.filter.AirportFilterActivity'),(62,7,'net.skyscanner.android.activity.filter.AirlineFilterActivity'),(63,7,'net.skyscanner.android.activity.filter.TimeOfDayFilterActivity'),(64,7,'net.skyscanner.android.activity.filter.DurationFilterActivity'),(65,7,'net.skyscanner.android.activity.journey.JourneyResultActivity'),(66,7,'net.skyscanner.android.activity.MultipleBookingsActivity'),(67,7,'net.skyscanner.android.activity.InformationActivity'),(68,7,'net.skyscanner.android.activity.SettingsActivity'),(69,4,'com.wuzla.game.ScooterHero_Paid.paid.q'),(70,3,'com.geinimi.ads.c'),(71,4,'com.wuzla.game.ScooterHero_Paid.paid.e.b'),(72,4,'com.wuzla.game.ScooterHero_Paid.paid.h'),(73,4,'com.wuzla.game.ScooterHero_Paid.paid.e'),(74,5,'com.geinimi.AdActivity'),(75,5,'com.geinimi.c.b'),(76,5,'com.geinimi.ads.c'),(77,5,'com.geinimi.c.j'),(78,5,'com.geinimi.AdService'),(79,6,'com.littlekillerz.legendsarcana.screen.d.b'),(80,6,'com.littlekillerz.legendsarcana.screen.d'),(81,6,'com.littlekillerz.legendsarcana.Game$1'),(82,6,'com.littlekillerz.legendsarcana.screen.MyService'),(83,6,'com.littlekillerz.legendsarcana.screen.MyActivity'),(84,7,'net.skyscanner.android.activity.FilterResultsActivity$2'),(85,7,'net.skyscanner.android.activity.journey.JourneyResultActivity$6'),(86,7,'com.kotikan.android.util.RateAppHelper');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'ACTIVITY_PARAM_KEY'),(2,5,'cpid'),(3,4,'cpid'),(4,5,'salesid'),(5,4,'salesid'),(6,8,'did'),(7,5,'did'),(8,4,'did'),(9,8,'ptid'),(10,8,'salesid'),(11,8,'ACTIVITY_PARAM_KEY'),(12,5,'ptid'),(13,4,'ptid'),(14,8,'cpid'),(15,13,'pdus'),(16,20,'ACTIVITY_PARAM_KEY'),(17,20,'ptid'),(18,21,'ptid'),(19,10,'ptid'),(20,20,'did'),(21,21,'did'),(22,10,'did'),(23,20,'cpid'),(24,21,'cpid'),(25,10,'cpid'),(26,20,'salesid'),(27,21,'salesid'),(28,10,'salesid'),(29,49,'pdus'),(30,47,'ACTIVITY_PARAM_KEY'),(31,47,'salesid'),(32,25,'salesid'),(33,47,'did'),(34,25,'did'),(35,47,'ptid'),(36,25,'ptid'),(37,47,'cpid'),(38,25,'cpid'),(39,57,'CHECKED_ITEM_IDS'),(40,59,'CHECKED_ITEM_IDS'),(41,56,'CHECKED_ITEM_IDS'),(42,58,'CHECKED_ITEM_IDS'),(43,57,'FILTER_EXTRA'),(44,59,'FILTER_EXTRA'),(45,56,'FILTER_EXTRA'),(46,58,'FILTER_EXTRA'),(47,57,'SEARCH_EXTRA'),(48,59,'SEARCH_EXTRA'),(49,56,'SEARCH_EXTRA'),(50,58,'SEARCH_EXTRA'),(51,61,'isPremiumRate'),(52,61,'phoneNumber'),(53,55,'CARRIER_IMAGE_BASE_URL'),(54,57,'FILTER_STATS_EXTRA'),(55,59,'FILTER_STATS_EXTRA'),(56,56,'FILTER_STATS_EXTRA'),(57,58,'FILTER_STATS_EXTRA'),(58,50,'CHOSEN_PASSENGER_EXTRA'),(59,54,'SEARCH_EXTRA'),(60,53,'PASSENGER_PICKER_PASSENGER_ARRAY_EXTRA'),(61,55,'FILTER_EXTRA'),(62,62,'currentOption'),(63,61,'USE_RETURN_EXTRA'),(64,61,'SEARCH_RESULT_METADATA_EXTRA'),(65,54,'ITINERARY_EXTRA'),(66,61,'PASSENGERS_EXTRA'),(67,54,'FILTER_EXTRA'),(68,55,'SEARCH_EXTRA'),(69,55,'FILTER_STATS_EXTRA'),(70,58,'CARRIER_IMAGE_BASE_URL'),(71,61,'currentOption'),(72,61,'ITINERARY_EXTRA'),(73,60,'INITIAL_DURATION_EXTRA'),(74,57,'SHOW_RETURN_EXTRA'),(75,59,'SHOW_RETURN_EXTRA'),(76,56,'SHOW_RETURN_EXTRA'),(77,58,'SHOW_RETURN_EXTRA'),(78,50,'SEARCH_STATE');
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
INSERT INTO `Components` VALUES (1,1,'s',1,1,NULL),(2,2,'s',1,1,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,16,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,16,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',0,16,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'s',0,16,NULL),(49,49,'r',1,NULL,NULL),(50,53,'a',1,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'a',0,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,4),(5,5,5),(6,6,5),(7,7,4),(8,8,13),(9,8,8),(10,9,5),(11,10,5),(12,11,11),(13,12,6),(14,13,8),(15,14,5),(16,15,5),(17,16,11),(18,17,12),(19,18,20),(20,19,10),(21,20,19),(22,21,16),(23,22,14),(24,23,22),(25,24,21),(26,25,21),(27,26,21),(28,27,12),(29,28,18),(30,29,9),(31,30,14),(32,31,9),(33,32,9),(34,33,21),(35,34,15),(36,35,9),(37,36,17),(38,37,16),(39,38,9),(40,39,20),(41,40,9),(42,41,18),(43,42,16),(44,43,21),(45,44,21),(46,45,17),(47,46,21),(48,47,10),(49,48,19),(50,49,17),(51,50,21),(52,51,15),(53,52,21),(54,53,35),(55,54,48),(56,55,30),(57,56,31),(58,57,38),(59,58,46),(60,59,39),(61,60,34),(62,61,28),(63,62,47),(64,62,49),(65,63,42),(66,64,28),(67,65,28),(68,66,28),(69,67,36),(70,68,41),(71,69,48),(72,70,47),(73,71,33),(74,72,28),(75,73,28),(76,74,63),(77,75,54),(78,76,59),(79,77,50),(80,78,55),(81,79,50),(82,80,58),(83,81,61),(84,82,50),(85,83,55),(86,84,55),(87,85,61),(88,86,60),(89,87,63),(90,88,53),(91,89,55),(92,90,50),(93,91,55),(94,92,55),(95,93,50),(96,94,54),(97,95,52),(98,96,61),(99,97,54),(100,98,56),(101,99,50),(102,99,63),(103,100,61),(104,101,51),(105,102,55),(106,103,57),(107,104,64),(108,105,54),(109,106,50),(110,107,50),(111,108,61),(112,109,50),(113,110,50),(114,111,63),(115,112,62),(116,113,54),(117,114,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,50,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(2,50,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(3,51,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(4,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(5,50,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(6,59,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(7,52,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(8,69,'<com.wuzla.game.ScooterHero_Paid.paid.q: void run()>',15,'s',NULL),(9,50,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(10,70,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(11,71,'<com.wuzla.game.ScooterHero_Paid.paid.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(12,6,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(13,72,'<com.wuzla.game.ScooterHero_Paid.paid.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(14,50,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(15,50,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(16,73,'<com.wuzla.game.ScooterHero_Paid.paid.e: void onDestroy()>',13,'s',NULL),(17,12,'<com.magicwach.rdefense.RewardActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(18,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(19,10,'<com.magicwach.rdefense.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(20,19,'<com.magicwach.rdefense.OptionsActivity: void onClick(android.view.View)>',20,'a',NULL),(21,16,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',7,'a',NULL),(22,14,'<com.magicwach.rdefense.AchievementActivity: void onClick(android.view.View)>',5,'a',NULL),(23,22,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(24,75,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(25,75,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(26,75,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(27,12,'<com.magicwach.rdefense.RewardActivity: void onClick(android.view.View)>',6,'a',NULL),(28,18,'<com.magicwach.rdefense.DebugActivity: void onClick(android.view.View)>',23,'a',NULL),(29,9,'<com.magicwach.rdefense.TitleActivity: void newGame()>',4,'a',NULL),(30,14,'<com.magicwach.rdefense.AchievementActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(31,9,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',32,'a',NULL),(32,9,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',22,'a',NULL),(33,76,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(34,15,'<com.magicwach.rdefense.CreditsActivity: void onClick(android.view.View)>',6,'a',NULL),(35,9,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',17,'a',NULL),(36,17,'<com.magicwach.rdefense.MixerSelectActivity: void onClick(android.view.View)>',8,'a',NULL),(37,16,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',33,'a',NULL),(38,9,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',27,'a',NULL),(39,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(40,9,'<com.magicwach.rdefense.TitleActivity: void resumeGame()>',3,'a',NULL),(41,18,'<com.magicwach.rdefense.DebugActivity: void onClick(android.view.View)>',12,'a',NULL),(42,16,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',38,'a',NULL),(43,77,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(44,75,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(45,17,'<com.magicwach.rdefense.MixerSelectActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(46,75,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(47,10,'<com.magicwach.rdefense.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(48,19,'<com.magicwach.rdefense.OptionsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(49,17,'<com.magicwach.rdefense.MixerSelectActivity: void onClick(android.view.View)>',14,'a',NULL),(50,78,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(51,15,'<com.magicwach.rdefense.CreditsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(52,75,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(53,35,'<com.littlekillerz.legendsarcana.EquipmentSelectMenu: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(54,79,'<com.littlekillerz.legendsarcana.screen.d.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(55,30,'<com.littlekillerz.legendsarcana.SkillsMenu: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(56,31,'<com.littlekillerz.legendsarcana.ClassMenu: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(57,38,'<com.littlekillerz.legendsarcana.LevelStats: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(58,46,'<com.littlekillerz.legendsarcana.EquipmentDetail: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(59,39,'<com.littlekillerz.legendsarcana.LevelSkills: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(60,34,'<com.littlekillerz.legendsarcana.BuyEquipmentMenu: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(61,28,'<com.littlekillerz.legendsarcana.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',30,'a',NULL),(62,80,'<com.littlekillerz.legendsarcana.screen.d: void run()>',15,'s',NULL),(63,42,'<com.littlekillerz.legendsarcana.SkillExamineMenu: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(64,81,'<com.littlekillerz.legendsarcana.Game$1: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(65,28,'<com.littlekillerz.legendsarcana.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(66,28,'<com.littlekillerz.legendsarcana.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(67,36,'<com.littlekillerz.legendsarcana.EquipmentExaminMenu: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(68,41,'<com.littlekillerz.legendsarcana.AddSkills: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(69,82,'<com.littlekillerz.legendsarcana.screen.MyService: void onDestroy()>',13,'s',NULL),(70,83,'<com.littlekillerz.legendsarcana.screen.MyActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(71,33,'<com.littlekillerz.legendsarcana.EquipmentMenu: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(72,28,'<com.littlekillerz.legendsarcana.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(73,28,'<com.littlekillerz.legendsarcana.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(74,67,'<net.skyscanner.android.activity.InformationActivity: void emailButtonClicked(android.view.View)>',12,'a',NULL),(75,57,'<net.skyscanner.android.activity.SearchResultsActivity: void sharePressed()>',36,'a',NULL),(76,63,'<net.skyscanner.android.activity.filter.TimeOfDayFilterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(77,53,'<net.skyscanner.android.activity.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(78,84,'<net.skyscanner.android.activity.FilterResultsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(79,53,'<net.skyscanner.android.activity.SearchActivity: void passengersClicked(android.view.View)>',18,'a',NULL),(80,62,'<net.skyscanner.android.activity.filter.AirlineFilterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(81,85,'<net.skyscanner.android.activity.journey.JourneyResultActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(82,53,'<net.skyscanner.android.activity.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(83,84,'<net.skyscanner.android.activity.FilterResultsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(84,58,'<net.skyscanner.android.activity.FilterResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(85,65,'<net.skyscanner.android.activity.journey.JourneyResultActivity: void webBookingPressed(android.view.View)>',13,'a',NULL),(86,64,'<net.skyscanner.android.activity.filter.DurationFilterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(87,67,'<net.skyscanner.android.activity.InformationActivity: void facebookButtonClicked(android.view.View)>',9,'a',NULL),(88,56,'<net.skyscanner.android.activity.PassengerPickerActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(89,58,'<net.skyscanner.android.activity.FilterResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(90,53,'<net.skyscanner.android.activity.SearchActivity: void searchButtonClicked(android.view.View)>',40,'a',NULL),(91,84,'<net.skyscanner.android.activity.FilterResultsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(92,84,'<net.skyscanner.android.activity.FilterResultsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(93,53,'<net.skyscanner.android.activity.SearchActivity: void returnDateClicked(android.view.View)>',13,'a',NULL),(94,57,'<net.skyscanner.android.activity.SearchResultsActivity: void onCreate(android.os.Bundle)>',40,'a',NULL),(95,55,'<net.skyscanner.android.activity.DatePickerActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(96,65,'<net.skyscanner.android.activity.journey.JourneyResultActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(97,57,'<net.skyscanner.android.activity.SearchResultsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(98,60,'<net.skyscanner.android.activity.filter.StopsFilterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(99,86,'<com.kotikan.android.util.RateAppHelper: void openMarketPageForApp(android.content.Context,java.lang.String)>',10,'a',NULL),(100,65,'<net.skyscanner.android.activity.journey.JourneyResultActivity: void multipleBookingPressed(android.view.View)>',7,'a',NULL),(101,54,'<net.skyscanner.android.activity.DestinationSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(102,84,'<net.skyscanner.android.activity.FilterResultsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',85,'a',NULL),(103,61,'<net.skyscanner.android.activity.filter.AirportFilterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(104,68,'<net.skyscanner.android.activity.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(105,57,'<net.skyscanner.android.activity.SearchResultsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',32,'a',NULL),(106,53,'<net.skyscanner.android.activity.SearchActivity: void reload()>',6,'a',NULL),(107,53,'<net.skyscanner.android.activity.SearchActivity: void departDateClicked(android.view.View)>',9,'a',NULL),(108,65,'<net.skyscanner.android.activity.journey.JourneyResultActivity: void sharePressed(android.view.View)>',51,'a',NULL),(109,53,'<net.skyscanner.android.activity.SearchActivity: void fromAirportClicked(android.view.View)>',5,'a',NULL),(110,53,'<net.skyscanner.android.activity.SearchActivity: void toAirportClicked(android.view.View)>',5,'a',NULL),(111,67,'<net.skyscanner.android.activity.InformationActivity: void twitterButtonClicked(android.view.View)>',9,'a',NULL),(112,66,'<net.skyscanner.android.activity.MultipleBookingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(113,57,'<net.skyscanner.android.activity.SearchResultsActivity: void filterButtonPressed(android.view.View)>',63,'a',NULL),(114,68,'<net.skyscanner.android.activity.SettingsActivity: void reload()>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,6),(3,33,5),(4,34,6),(5,62,7),(6,63,8),(7,69,9),(8,70,9),(9,71,9),(10,75,10),(11,76,10),(12,77,10),(13,79,10),(14,80,10),(15,81,10),(16,82,10),(17,83,10),(18,84,10),(19,85,10),(20,97,10),(21,98,10),(22,106,11),(23,108,8),(24,111,10),(25,112,10),(26,113,10),(27,114,10),(28,115,10),(29,116,10),(30,117,10),(31,118,10),(32,122,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,106,2),(2,122,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,5,'(.*)'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,10,'(.*)'),(9,11,'com/magicwach/rdefense/TitleActivity'),(10,12,'(.*)'),(11,13,'com/magicwach/rdefense/TitleActivity'),(12,14,'com/magicwach/rdefense/GameActivity'),(13,15,'com/magicwach/rdefense/TitleActivity'),(14,16,'com/magicwach/rdefense/TitleActivity'),(15,17,'(.*)'),(16,18,'com/magicwach/rdefense/TitleActivity'),(17,19,'com/magicwach/rdefense/GameActivity'),(18,20,'com/magicwach/rdefense/LevelSelectActivity'),(19,21,'com/magicwach/rdefense/TitleActivity'),(20,22,'com/magicwach/rdefense/DebugActivity'),(21,23,'com/magicwach/rdefense/AchievementActivity'),(22,24,'com/magicwach/rdefense/TitleActivity'),(23,25,'com/magicwach/rdefense/RewardActivity'),(24,26,'com/magicwach/rdefense/LevelSelectActivity'),(25,27,'com/magicwach/rdefense/MixerSelectActivity'),(26,28,'com/magicwach/rdefense/CreditsActivity'),(27,29,'(.*)'),(28,30,'com/magicwach/rdefense/GameActivity'),(29,31,'com/magicwach/rdefense/TitleActivity'),(30,32,'com/magicwach/rdefense/GameActivity'),(31,35,'com/magicwach/rdefense/LevelSelectActivity'),(32,36,'com/magicwach/rdefense/OptionsActivity'),(33,37,'com/magicwach/rdefense/GameActivity'),(34,38,'com/magicwach/rdefense/GameActivity'),(35,39,'(.*)'),(36,40,'com/magicwach/rdefense/TitleActivity'),(37,41,'(.*)'),(38,42,'(.*)'),(39,43,'com/littlekillerz/legendsarcana/ClassMenu'),(40,44,'com/littlekillerz/legendsarcana/EquipSkillsMenu'),(41,45,'com/littlekillerz/legendsarcana/LevelMenu'),(42,46,'com/littlekillerz/legendsarcana/EquipmentExaminMenu'),(43,47,'com/littlekillerz/legendsarcana/LevelMenu'),(44,48,'com/littlekillerz/legendsarcana/StoreMenu'),(45,49,'com/littlekillerz/legendsarcana/StatsMenu'),(46,50,'(.*)'),(47,51,'com/littlekillerz/legendsarcana/AddSkills'),(48,52,'com/littlekillerz/legendsarcana/MainMenu'),(49,53,'com/littlekillerz/legendsarcana/WorldMap'),(50,54,'com/littlekillerz/legendsarcana/EquipmentMenu'),(51,55,'(.*)'),(52,56,'com/littlekillerz/legendsarcana/LevelMenu'),(53,57,'(.*)'),(54,58,'(.*)'),(55,59,'(.*)'),(56,60,'com/littlekillerz/legendsarcana/OptionsMenu'),(57,61,'com/littlekillerz/legendsarcana/EquipSkillsMenu'),(58,64,'net/skyscanner/android/activity/InformationActivity'),(59,65,'net/skyscanner/android/activity/SettingsActivity'),(60,66,'net/skyscanner/android/activity/filter/TimeOfDayFilterActivity'),(61,67,'net/skyscanner/android/activity/PassengerPickerActivity'),(62,68,'net/skyscanner/android/activity/InformationActivity'),(63,72,'net/skyscanner/android/activity/InformationActivity'),(64,73,'net/skyscanner/android/activity/filter/AirlineFilterActivity'),(65,74,'net/skyscanner/android/activity/InformationActivity'),(66,78,'net/skyscanner/android/activity/InformationActivity'),(67,86,'net/skyscanner/android/activity/InformationActivity'),(68,87,'net/skyscanner/android/activity/SearchActivity'),(69,88,'net/skyscanner/android/activity/SearchResultsActivity'),(70,89,'net/skyscanner/android/activity/filter/StopsFilterActivity'),(71,90,'net/skyscanner/android/activity/filter/DurationFilterActivity'),(72,91,'net/skyscanner/android/activity/DatePickerActivity'),(73,92,'net/skyscanner/android/activity/SearchActivity'),(74,93,'net/skyscanner/android/activity/InformationActivity'),(75,94,'net/skyscanner/android/activity/SearchActivity'),(76,95,'net/skyscanner/android/activity/SearchActivity'),(77,96,'net/skyscanner/android/activity/InformationActivity'),(78,99,'net/skyscanner/android/activity/MultipleBookingsActivity'),(79,100,'net/skyscanner/android/activity/InformationActivity'),(80,101,'net/skyscanner/android/activity/filter/AirportFilterActivity'),(81,102,'net/skyscanner/android/activity/InformationActivity'),(82,103,'net/skyscanner/android/activity/InformationActivity'),(83,104,'net/skyscanner/android/activity/journey/JourneyResultActivity'),(84,105,'net/skyscanner/android/activity/journey/JourneyResultActivity'),(85,107,'net/skyscanner/android/activity/DatePickerActivity'),(86,109,'net/skyscanner/android/activity/DestinationSearchActivity'),(87,110,'net/skyscanner/android/activity/DestinationSearchActivity'),(88,119,'net/skyscanner/android/activity/SearchActivity'),(89,120,'net/skyscanner/android/activity/FilterResultsActivity'),(90,121,'net/skyscanner/android/activity/FilterResultsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,63,13),(2,69,14),(3,70,15),(4,71,16),(5,75,17),(6,76,18),(7,77,19),(8,79,20),(9,80,21),(10,81,22),(11,82,23),(12,83,24),(13,84,25),(14,85,26),(15,97,27),(16,98,28),(17,108,29),(18,111,30),(19,112,31),(20,113,32),(21,114,33),(22,115,34),(23,116,35),(24,117,36),(25,118,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.shortcut.NAME'),(2,3,'android.intent.extra.shortcut.ICON'),(3,3,'android.intent.extra.shortcut.INTENT'),(4,4,'android.intent.extra.shortcut.NAME'),(5,4,'android.intent.extra.shortcut.ICON'),(6,4,'android.intent.extra.shortcut.INTENT'),(7,33,'android.intent.extra.shortcut.NAME'),(8,33,'android.intent.extra.shortcut.ICON'),(9,33,'android.intent.extra.shortcut.INTENT'),(10,34,'android.intent.extra.shortcut.NAME'),(11,34,'android.intent.extra.shortcut.ICON'),(12,34,'android.intent.extra.shortcut.INTENT'),(13,62,'android.intent.extra.SUBJECT'),(14,62,'android.intent.extra.EMAIL'),(15,63,'android.intent.extra.TEXT'),(16,63,'android.intent.extra.SUBJECT'),(17,66,'SHOW_RETURN_EXTRA'),(18,66,'RETURN_TOD_EXTRA'),(19,66,'DEPART_TOD_EXTRA'),(20,67,'PASSENGER_PICKER_PASSENGER_ARRAY_EXTRA'),(21,73,'SEARCH_EXTRA'),(22,73,'FILTER_STATS_EXTRA'),(23,73,'FILTER_EXTRA'),(24,73,'CARRIER_IMAGE_BASE_URL'),(25,88,'SEARCH_EXTRA'),(26,89,'FILTER_EXTRA'),(27,90,'MAX_DURATION_EXTRA'),(28,90,'INITIAL_DURATION_EXTRA'),(29,90,'MIN_DURATION_EXTRA'),(30,91,'DATE_PICKER_REFERENCE_DATE_EXTRA'),(31,91,'DATE_PICKER_TYPE_EXTRA'),(32,91,'DATE_PICKER_INITIAL_DATE_EXTRA'),(33,99,'currentOption'),(34,101,'SEARCH_EXTRA'),(35,101,'FILTER_STATS_EXTRA'),(36,101,'FILTER_EXTRA'),(37,104,'PASSENGERS_EXTRA'),(38,104,'SEARCH_RESULT_METADATA_EXTRA'),(39,104,'ITINERARY_EXTRA'),(40,104,'SEARCH_EXTRA'),(41,104,'USE_RETURN_EXTRA'),(42,105,'SEARCH_EXTRA'),(43,106,'<INTENT>'),(44,107,'DATE_PICKER_TYPE_EXTRA'),(45,107,'DATE_PICKER_INITIAL_DATE_EXTRA'),(46,108,'android.intent.extra.TEXT'),(47,108,'android.intent.extra.SUBJECT'),(48,109,'DESTINATION_SEARCH_TYPE_EXTRA'),(49,110,'DESTINATION_SEARCH_TYPE_EXTRA'),(50,120,'SEARCH_EXTRA'),(51,120,'SEARCH_MIN_DURATION_EXTRA'),(52,121,'SEARCH_EXTRA'),(53,121,'FILTER_STATS_EXTRA'),(54,121,'FILTER_EXTRA'),(55,121,'SEARCH_MIN_DURATION_EXTRA'),(56,121,'CARRIER_IMAGE_BASE_URL'),(57,122,'<INTENT>');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,3),(5,7,2),(6,9,4),(7,10,3),(8,11,2),(9,12,3),(10,14,2),(11,15,4),(12,16,3),(13,17,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,8,1),(6,7,1),(7,10,1),(8,11,1),(9,12,1),(10,13,1),(11,14,1),(12,16,1),(13,17,1);
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
INSERT INTO `IMimeTypes` VALUES (1,62,'plain','text');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.septillionsoft.MagicTrick'),(2,2,'com.septillionsoft.MagicTrick'),(3,5,'com.septillionsoft.MagicTrick'),(4,6,'com.wuzla.game.ScooterHero_Paid'),(5,7,'(.*)'),(6,8,'com.septillionsoft.MagicTrick'),(7,9,'com.wuzla.game.ScooterHero_Paid'),(8,10,'com.wuzla.game.ScooterHero_Paid'),(9,11,'com.magicwach.rdefense'),(10,12,'com.magicwach.rdefense'),(11,13,'com.magicwach.rdefense'),(12,14,'com.magicwach.rdefense'),(13,15,'com.magicwach.rdefense'),(14,16,'com.magicwach.rdefense'),(15,17,'com.magicwach.rdefense'),(16,18,'com.magicwach.rdefense'),(17,19,'com.magicwach.rdefense'),(18,20,'com.magicwach.rdefense'),(19,21,'com.magicwach.rdefense'),(20,22,'com.magicwach.rdefense'),(21,23,'com.magicwach.rdefense'),(22,24,'com.magicwach.rdefense'),(23,25,'com.magicwach.rdefense'),(24,26,'com.magicwach.rdefense'),(25,27,'com.magicwach.rdefense'),(26,28,'com.magicwach.rdefense'),(27,29,'com.magicwach.rdefense'),(28,30,'com.magicwach.rdefense'),(29,31,'com.magicwach.rdefense'),(30,32,'com.magicwach.rdefense'),(31,35,'com.magicwach.rdefense'),(32,36,'com.magicwach.rdefense'),(33,37,'com.magicwach.rdefense'),(34,38,'com.magicwach.rdefense'),(35,39,'com.magicwach.rdefense'),(36,40,'com.magicwach.rdefense'),(37,41,'com.littlekillerz.legendsarcana'),(38,42,'(.*)'),(39,43,'com.littlekillerz.legendsarcana'),(40,44,'com.littlekillerz.legendsarcana'),(41,45,'com.littlekillerz.legendsarcana'),(42,46,'com.littlekillerz.legendsarcana'),(43,47,'com.littlekillerz.legendsarcana'),(44,48,'com.littlekillerz.legendsarcana'),(45,49,'com.littlekillerz.legendsarcana'),(46,50,'com.littlekillerz.legendsarcana'),(47,51,'com.littlekillerz.legendsarcana'),(48,52,'com.littlekillerz.legendsarcana'),(49,53,'com.littlekillerz.legendsarcana'),(50,54,'com.littlekillerz.legendsarcana'),(51,55,'com.littlekillerz.legendsarcana'),(52,56,'com.littlekillerz.legendsarcana'),(53,57,'com.littlekillerz.legendsarcana'),(54,58,'com.littlekillerz.legendsarcana'),(55,59,'com.littlekillerz.legendsarcana'),(56,60,'com.littlekillerz.legendsarcana'),(57,61,'com.littlekillerz.legendsarcana'),(58,64,'net.skyscanner.android.main'),(59,65,'net.skyscanner.android.main'),(60,66,'net.skyscanner.android.main'),(61,67,'net.skyscanner.android.main'),(62,68,'net.skyscanner.android.main'),(63,72,'net.skyscanner.android.main'),(64,73,'net.skyscanner.android.main'),(65,74,'net.skyscanner.android.main'),(66,78,'net.skyscanner.android.main'),(67,86,'net.skyscanner.android.main'),(68,87,'net.skyscanner.android.main'),(69,88,'net.skyscanner.android.main'),(70,89,'net.skyscanner.android.main'),(71,90,'net.skyscanner.android.main'),(72,91,'net.skyscanner.android.main'),(73,92,'net.skyscanner.android.main'),(74,93,'net.skyscanner.android.main'),(75,94,'net.skyscanner.android.main'),(76,95,'net.skyscanner.android.main'),(77,96,'net.skyscanner.android.main'),(78,99,'net.skyscanner.android.main'),(79,100,'net.skyscanner.android.main'),(80,101,'net.skyscanner.android.main'),(81,102,'net.skyscanner.android.main'),(82,103,'net.skyscanner.android.main'),(83,104,'net.skyscanner.android.main'),(84,105,'net.skyscanner.android.main'),(85,107,'net.skyscanner.android.main'),(86,109,'net.skyscanner.android.main'),(87,110,'net.skyscanner.android.main'),(88,119,'net.skyscanner.android.main'),(89,120,'net.skyscanner.android.main'),(90,121,'net.skyscanner.android.main');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,8,0),(8,9,0),(9,13,0),(10,13,0),(11,20,0),(12,22,0),(13,23,0),(14,47,0),(15,49,0),(16,49,0),(17,50,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,4,0,0),(3,6,1,0),(4,6,1,0),(5,7,0,0),(6,8,0,0),(7,11,0,0),(8,12,0,0),(9,13,0,0),(10,16,0,0),(11,17,0,0),(12,18,0,0),(13,19,0,0),(14,20,0,0),(15,21,0,0),(16,22,0,0),(17,23,0,0),(18,27,0,0),(19,28,0,0),(20,29,0,0),(21,30,0,0),(22,31,0,0),(23,32,0,0),(24,34,0,0),(25,35,0,0),(26,36,0,0),(27,37,0,0),(28,38,0,0),(29,39,0,0),(30,40,0,0),(31,41,0,0),(32,42,0,0),(33,43,1,0),(34,43,1,0),(35,45,0,0),(36,47,0,0),(37,48,0,0),(38,49,0,0),(39,50,0,0),(40,51,0,0),(41,53,0,0),(42,54,0,0),(43,55,0,0),(44,56,0,0),(45,57,0,0),(46,58,0,0),(47,59,0,0),(48,60,0,0),(49,61,0,0),(50,62,0,0),(51,63,0,0),(52,64,0,0),(53,65,0,0),(54,66,0,0),(55,67,0,0),(56,68,0,0),(57,69,0,0),(58,70,0,0),(59,71,0,0),(60,72,0,0),(61,73,0,0),(62,74,1,0),(63,75,1,0),(64,76,0,0),(65,77,0,0),(66,78,0,0),(67,79,0,0),(68,80,0,0),(69,81,1,0),(70,81,1,0),(71,81,1,0),(72,82,0,0),(73,83,0,0),(74,84,0,0),(75,85,1,0),(76,85,1,0),(77,85,1,0),(78,86,0,0),(79,87,1,0),(80,87,1,0),(81,87,1,0),(82,87,1,0),(83,87,1,0),(84,87,1,0),(85,87,1,0),(86,88,0,0),(87,89,0,0),(88,90,0,0),(89,91,0,0),(90,92,0,0),(91,93,0,0),(92,94,0,0),(93,95,0,0),(94,96,0,0),(95,97,0,0),(96,98,0,0),(97,99,1,0),(98,99,1,0),(99,100,0,0),(100,101,0,0),(101,102,0,0),(102,103,0,0),(103,104,0,0),(104,105,0,0),(105,105,0,0),(106,106,1,0),(107,107,0,0),(108,108,1,0),(109,109,0,0),(110,110,0,0),(111,111,1,0),(112,111,1,0),(113,111,1,0),(114,111,1,0),(115,111,1,0),(116,111,1,0),(117,111,1,0),(118,111,1,0),(119,112,0,0),(120,113,0,0),(121,113,0,0),(122,114,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,106,3,2,NULL),(2,106,23,2,NULL),(3,63,3,2,NULL),(4,63,23,2,NULL),(5,75,3,2,NULL),(6,75,23,2,NULL),(7,76,3,2,NULL),(8,76,23,2,NULL),(9,77,3,2,NULL),(10,77,23,2,NULL),(11,108,3,2,NULL),(12,108,23,2,NULL),(13,122,3,2,NULL),(14,122,23,2,NULL),(15,106,4,2,NULL),(16,49,32,2,NULL),(17,63,4,2,NULL),(18,53,43,2,NULL),(19,75,4,2,NULL),(20,54,33,2,NULL),(21,76,4,2,NULL),(22,60,26,2,NULL),(23,77,4,2,NULL),(24,61,29,2,NULL),(25,108,4,2,NULL),(26,43,31,2,NULL),(27,122,4,2,NULL),(28,44,29,2,NULL),(29,106,6,2,NULL),(30,48,37,2,NULL),(31,63,6,2,NULL),(32,45,40,2,NULL),(33,75,6,2,NULL),(34,47,40,2,NULL),(35,76,6,2,NULL),(36,56,40,2,NULL),(37,77,6,2,NULL),(38,51,41,2,NULL),(39,108,6,2,NULL),(40,46,36,2,NULL),(41,122,6,2,NULL),(42,106,47,2,NULL),(43,63,47,2,NULL),(44,75,47,2,NULL),(45,76,47,2,NULL),(46,77,47,2,NULL),(47,108,47,2,NULL),(48,122,47,2,NULL),(49,106,49,2,NULL),(50,63,49,2,NULL),(51,75,49,2,NULL),(52,76,49,2,NULL),(53,77,49,2,NULL),(54,108,49,2,NULL),(55,122,49,2,NULL),(56,106,7,2,NULL),(57,63,7,2,NULL),(58,75,7,2,NULL),(59,76,7,2,NULL),(60,77,7,2,NULL),(61,108,7,2,NULL),(62,122,7,2,NULL),(63,106,8,2,NULL),(64,63,8,2,NULL),(65,75,8,2,NULL),(66,76,8,2,NULL),(67,77,8,2,NULL),(68,108,8,2,NULL),(69,122,8,2,NULL),(70,106,13,2,NULL),(71,63,13,2,NULL),(72,75,13,2,NULL),(73,76,13,2,NULL),(74,77,13,2,NULL),(75,108,13,2,NULL),(76,122,13,2,NULL),(77,20,16,2,NULL),(78,22,18,2,NULL),(79,23,14,2,NULL),(80,25,12,2,NULL),(81,28,15,2,NULL),(82,30,10,2,NULL),(83,106,9,2,NULL),(84,63,9,2,NULL),(85,75,9,2,NULL),(86,76,9,2,NULL),(87,77,9,2,NULL),(88,108,9,2,NULL),(89,122,9,2,NULL),(90,13,9,2,NULL),(91,36,19,2,NULL),(92,11,9,2,NULL),(93,18,9,2,NULL),(94,16,9,2,NULL),(95,21,9,2,NULL),(96,24,9,2,NULL),(97,40,9,2,NULL),(98,15,9,2,NULL),(99,27,17,2,NULL),(100,32,10,2,NULL),(101,26,16,2,NULL),(102,35,16,2,NULL),(103,38,10,2,NULL),(104,19,10,2,NULL),(105,31,9,2,NULL),(106,14,10,2,NULL),(107,37,10,2,NULL),(108,106,20,2,NULL),(109,63,20,2,NULL),(110,75,20,2,NULL),(111,76,20,2,NULL),(112,77,20,2,NULL),(113,108,20,2,NULL),(114,122,20,2,NULL),(115,106,22,2,NULL),(116,63,22,2,NULL),(117,75,22,2,NULL),(118,76,22,2,NULL),(119,77,22,2,NULL),(120,108,22,2,NULL),(121,122,22,2,NULL),(122,106,2,2,NULL),(123,63,2,2,NULL),(124,75,2,2,NULL),(125,76,2,2,NULL),(126,106,1,2,NULL),(127,77,2,2,NULL),(128,63,1,2,NULL),(129,108,2,2,NULL),(130,75,1,2,NULL),(131,122,2,2,NULL),(132,76,1,2,NULL),(133,77,1,2,NULL),(134,108,1,2,NULL),(135,122,1,2,NULL),(136,65,64,2,NULL),(137,67,53,2,NULL),(138,72,63,2,NULL),(139,88,54,2,NULL),(140,91,52,2,NULL),(141,107,52,2,NULL),(142,109,51,2,NULL),(143,110,51,2,NULL),(144,63,50,2,NULL),(145,75,50,2,NULL),(146,76,50,2,NULL),(147,77,50,2,NULL),(148,108,50,2,NULL),(149,122,50,2,NULL),(150,100,63,2,NULL),(151,93,63,2,NULL),(152,86,63,2,NULL),(153,92,50,2,NULL),(154,95,50,2,NULL),(155,104,61,2,NULL),(156,105,61,2,NULL),(157,120,55,2,NULL),(158,121,55,2,NULL),(159,74,63,2,NULL),(160,87,50,2,NULL),(161,96,63,2,NULL),(162,102,63,2,NULL),(163,68,63,2,NULL),(164,64,63,2,NULL),(165,78,63,2,NULL),(166,94,50,2,NULL),(167,99,62,2,NULL),(168,119,50,2,NULL),(169,103,63,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_GPS'),(5,'android.permission.ACCESS_LOCATION'),(1,'android.permission.BIND_INPUT_METHOD'),(9,'android.permission.CALL_PHONE'),(25,'android.permission.CHANGE_CONFIGURATION'),(16,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(10,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(2,'android.permission.READ_USER_DICTIONARY'),(21,'android.permission.RECEIVE_SMS'),(22,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(4,'android.permission.SET_WALLPAPER'),(24,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_CONTACTS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(3,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(13,NULL,NULL,'mailto:',NULL,NULL,NULL),(14,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(15,NULL,NULL,'tel:',NULL,NULL,NULL),(16,NULL,NULL,'tel:Dummy variable',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'http://m.facebook.com/skyscanner',NULL,NULL,NULL),(21,NULL,NULL,'http://m.facebook.com/pages/Skyscanner-Deutschland/228756384520',NULL,NULL,NULL),(22,NULL,NULL,'http://m.facebook.com/SkyscannerES',NULL,NULL,NULL),(23,NULL,NULL,'http://m.facebook.com/Skyscanner.France',NULL,NULL,NULL),(24,NULL,NULL,'http://m.facebook.com/Skyscanner.se',NULL,NULL,NULL),(25,NULL,NULL,'http://m.facebook.com/SkyscannerItalia',NULL,NULL,NULL),(26,NULL,NULL,'http://m.facebook.com/SkyscannerRussia',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=net.skyscanner.android.main',NULL,NULL,NULL),(29,NULL,NULL,'mailto:',NULL,NULL,NULL),(30,NULL,NULL,'http://mobile.twitter.com/SkyscannerIT',NULL,NULL,NULL),(31,NULL,NULL,'http://mobile.twitter.com/Skyscanner_Ru',NULL,NULL,NULL),(32,NULL,NULL,'http://mobile.twitter.com/skyscanner_es',NULL,NULL,NULL),(33,NULL,NULL,'http://mobile.twitter.com/BilligFluegeDE',NULL,NULL,NULL),(34,NULL,NULL,'http://mobile.twitter.com/Skyscanner',NULL,NULL,NULL),(35,NULL,NULL,'http://mobile.twitter.com/Skyscanner_PL',NULL,NULL,NULL),(36,NULL,NULL,'http://mobile.twitter.com/Billigaste_Flyg',NULL,NULL,NULL),(37,NULL,NULL,'http://mobile.twitter.com/Skyscanner_FR',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,5,3),(4,10,4),(5,14,5),(6,15,6),(7,24,7),(8,25,8),(9,26,9),(10,33,10),(11,44,11),(12,46,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,2),(2,3,3),(3,3,4),(4,3,5),(5,3,6),(6,3,7),(7,3,8),(8,3,9),(9,3,10),(10,3,11),(11,3,12),(12,3,13),(13,3,14),(14,3,15),(15,3,17),(16,3,16),(17,3,19),(18,3,18),(19,4,3),(20,4,4),(21,4,5),(22,4,6),(23,4,7),(24,4,8),(25,4,9),(26,5,3),(27,4,10),(28,5,4),(29,4,11),(30,5,5),(31,4,12),(32,5,6),(33,4,13),(34,5,7),(35,4,14),(36,5,8),(37,4,15),(38,5,9),(39,4,17),(40,5,10),(41,4,16),(42,5,11),(43,4,19),(44,5,12),(45,4,18),(46,5,13),(47,4,21),(48,5,14),(49,4,20),(50,5,15),(51,4,22),(52,5,17),(53,5,16),(54,5,19),(55,5,18),(56,5,23),(57,6,3),(58,6,4),(59,6,5),(60,6,6),(61,6,7),(62,6,8),(63,6,9),(64,6,10),(65,6,11),(66,6,12),(67,6,13),(68,6,14),(69,6,15),(70,6,17),(71,6,16),(72,6,19),(73,6,18),(74,6,21),(75,6,20),(76,6,22),(77,6,24),(78,7,16),(79,7,7),(80,7,25),(81,7,8),(82,7,9);
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

-- Dump completed on 2015-10-12  3:30:21
