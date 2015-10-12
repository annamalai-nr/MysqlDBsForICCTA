-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_391
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
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'NULL-CONSTANT'),(5,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CHOOSER'),(6,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PICK'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(7,'wbs.netsentry.ACTION_EDIT_PREFERENCES'),(11,'wbs.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(9,'wbs.netsentry.ACTION_RESET_COUNTERS'),(10,'wbs.netsentry.ACTION_UPDATE_COUNTERS'),(4,'wbs.netsentry.ui.ChartInterfaceStats'),(3,'wbs.netsentry.ui.InterfaceStatsList');
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
INSERT INTO `Applications` VALUES (1,'wbs.netsentry',4),(2,'com.ustwo.mouthoff',5),(3,'signcomsexgirl1.mm',1),(4,'com.ubermind.ilightr',3),(5,'com.gagabunch.helix',2),(6,'com.ximad.gravity',1),(7,'com.computertimeco.android.alienspresident',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'wbs.netsentry.logo.WbsLogoAct'),(2,1,'wbs.netsentry.ui.InterfaceStatsList'),(3,2,'com.ustwo.mouthoff.Splash'),(4,2,'com.ustwo.mouthoff.MouthOff'),(5,2,'com.geinimi.custom.Ad3101_31010001'),(6,1,'wbs.netsentry.ui.ChartInterfaceStats'),(7,4,'com.ubermind.ilightr.iLightrActivity'),(8,2,'com.geinimi.custom.GoogleKeyboard'),(9,2,'com.geinimi.AdServiceReceiver'),(10,4,'com.ubermind.ilightr.activity.VideoActivity'),(11,3,'signcomsexgirl1.mm.sexyModel'),(12,1,'wbs.netsentry.ui.InterfaceStatsEditor'),(13,4,'com.ubermind.ilightr.prefs.SettingsActivity'),(14,5,'com.gagabunch.helix.HeliX'),(15,3,'signcomsexgirl1.mm.SmsSend'),(16,4,'com.ubermind.ilightr.prefs.SelectCaseActivity'),(17,3,'signcomsexgirl1.mm.model.c.rsEppnzj'),(18,4,'com.ubermind.ilightr.activity.PictureOverlayActivity'),(19,5,'com.geinimi.custom.Ad3128_31280001'),(20,4,'com.geinimi.custom.Ad3034_30340001'),(21,1,'wbs.netsentry.ui.ApplicationPreferences'),(22,3,'signcomsexgirl1.mm.model.c.AndroidIME'),(23,5,'com.geinimi.custom.GoogleKeyboard'),(24,4,'com.geinimi.custom.GoogleKeyboard'),(25,3,'signcomsexgirl1.mm.model.f'),(26,5,'com.geinimi.AdServiceReceiver'),(27,1,'com.geinimi.custom.Ad0000_00000005'),(28,4,'com.geinimi.AdServiceReceiver'),(29,1,'com.geinimi.custom.GoogleKeyboard'),(30,1,'wbs.netsentry.backend.Resetter'),(31,1,'wbs.netsentry.backend.Updater'),(32,1,'wbs.netsentry.backend.scheduler.CronScheduler'),(33,6,'com.ximad.gravity.activities.MainMenuScreen'),(34,6,'com.ximad.gravity.activities.About'),(35,1,'wbs.netsentry.backend.Bootstrapper'),(36,6,'com.ximad.gravity.activities.SelectLevels'),(37,6,'com.ximad.gravity.Gravity'),(38,1,'com.geinimi.AdServiceReceiver'),(39,6,'com.ximad.gravity.activities.PauseMenu'),(40,7,'com.computertimeco.android.alienspresident.AliensPresident'),(41,6,'com.ximad.gravity.activities.Options'),(42,6,'com.ximad.gravity.activities.EndLevel'),(43,7,'com.computertimeco.android.alienspresident.HighScores'),(44,1,'wbs.netsentry.backend.InterfaceStatsProvider'),(45,6,'com.ximad.gravity.activities.SelectScenarios'),(46,7,'com.computertimeco.android.alienspresident.Instructions'),(47,6,'com.ximad.gravity.activities.ShowStatistics'),(48,7,'com.computertimeco.android.alienspresident.president.c.bytqqpuj'),(49,6,'com.ximad.gravity.activities.BetaMessage'),(50,6,'com.ximad.gravity.screen.automata.gleanybody.rprdBCsj'),(51,7,'com.computertimeco.android.alienspresident.president.c.AndroidIME'),(52,7,'com.computertimeco.android.alienspresident.president.f'),(53,6,'com.ximad.gravity.screen.automata.gleanybody.AndroidIME'),(54,6,'com.ximad.gravity.screen.ServiceReceiver'),(55,3,'signcomsexgirl1.mm.model.e'),(56,3,'signcomsexgirl1.mm.model.q'),(57,3,'signcomsexgirl1.mm.model.h'),(58,3,'signcomsexgirl1.mm.model.e.b'),(59,3,'signcomsexgirl1.mm.SmsSend$1'),(60,2,'com.geinimi.c.b'),(61,7,'com.computertimeco.android.alienspresident.AliensPresident$MainScreen'),(62,2,'com.geinimi.AdActivity'),(63,7,'com.computertimeco.android.alienspresident.president.e.b'),(64,2,'com.geinimi.c.j'),(65,7,'com.computertimeco.android.alienspresident.president.q'),(66,4,'com.geinimi.c.b'),(67,5,'com.geinimi.c.b'),(68,7,'com.computertimeco.android.alienspresident.president.h'),(69,2,'com.geinimi.AdService'),(70,4,'com.geinimi.AdActivity'),(71,5,'com.geinimi.AdActivity'),(72,7,'com.computertimeco.android.alienspresident.president.e'),(73,4,'com.geinimi.ads.c'),(74,5,'com.geinimi.AdService'),(75,2,'com.geinimi.ads.c'),(76,2,'com.ustwo.mouthoff.view.AppInfoView'),(77,4,'com.geinimi.AdService'),(78,1,'wbs.netsentry.backend.Bootstrapper$1'),(79,1,'com.geinimi.c.b'),(80,5,'com.geinimi.c.j'),(81,4,'com.geinimi.c.j'),(82,5,'com.geinimi.ads.c'),(83,1,'com.geinimi.AdActivity'),(84,1,'com.geinimi.ads.c'),(85,1,'wbs.netsentry.ui.InterfaceStatsEditor$2'),(86,1,'com.geinimi.c.j'),(87,1,'com.geinimi.AdService'),(88,6,'com.ximad.gravity.screen.MyService'),(89,6,'com.ximad.gravity.activities.MainMenuScreen$StartActivityAfterAnimation'),(90,6,'com.ximad.gravity.screen.MyActivity'),(91,6,'com.ximad.gravity.activities.SelectScenarios$StartActivityAfterAnimation'),(92,6,'com.ximad.gravity.activities.ShowStatistics$1'),(93,6,'com.ximad.gravity.activities.About$StartActivityAfterAnimation'),(94,6,'com.ximad.gravity.activities.SelectLevels$StartActivityAfterAnimation'),(95,6,'com.ximad.gravity.screen.d'),(96,6,'com.ximad.gravity.screen.d.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'ACTIVITY_PARAM_KEY'),(2,18,'cpid'),(3,18,'did'),(4,18,'ptid'),(5,24,'pdus'),(6,18,'salesid'),(7,5,'did'),(8,4,'did'),(9,8,'did'),(10,5,'ptid'),(11,4,'ptid'),(12,8,'ptid'),(13,5,'cpid'),(14,4,'cpid'),(15,8,'cpid'),(16,48,'ptid'),(17,15,'cpid'),(18,20,'cpid'),(19,25,'cpid'),(20,15,'salesid'),(21,48,'salesid'),(22,20,'salesid'),(23,25,'salesid'),(24,19,'cpid'),(25,23,'cpid'),(26,19,'did'),(27,23,'did'),(28,48,'ACTIVITY_PARAM_KEY'),(29,48,'did'),(30,48,'cpid'),(31,52,'pdus'),(32,5,'salesid'),(33,4,'salesid'),(34,20,'ACTIVITY_PARAM_KEY'),(35,15,'ptid'),(36,8,'salesid'),(37,20,'ptid'),(38,5,'ACTIVITY_PARAM_KEY'),(39,25,'ptid'),(40,19,'ACTIVITY_PARAM_KEY'),(41,27,'ACTIVITY_PARAM_KEY'),(42,1,'cpid'),(43,29,'cpid'),(44,27,'cpid'),(45,19,'ptid'),(46,23,'ptid'),(47,19,'salesid'),(48,23,'salesid'),(49,15,'did'),(50,20,'did'),(51,25,'did'),(52,32,'target.intent'),(53,1,'ptid'),(54,29,'ptid'),(55,27,'ptid'),(56,1,'salesid'),(57,29,'salesid'),(58,27,'salesid'),(59,1,'did'),(60,29,'did'),(61,27,'did'),(62,32,'cron.expression'),(63,6,'deviceName'),(64,50,'salesid'),(65,50,'ACTIVITY_PARAM_KEY'),(66,50,'cpid'),(67,50,'did'),(68,50,'ptid'),(69,54,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,14,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,14,NULL),(23,23,'s',0,14,NULL),(24,25,'r',1,NULL,NULL),(25,24,'s',0,14,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',0,14,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'p',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'s',0,14,NULL),(52,52,'r',1,NULL,NULL),(53,53,'s',0,14,NULL),(54,54,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,22),(2,2,18),(3,2,24),(4,3,18),(5,4,22),(6,5,16),(7,6,8),(8,7,8),(9,8,8),(10,9,40),(11,10,5),(12,11,8),(13,12,7),(14,13,51),(15,14,8),(16,15,52),(17,15,48),(18,16,25),(19,17,23),(20,18,7),(21,19,48),(22,20,7),(23,21,40),(24,22,23),(25,23,8),(26,24,8),(27,25,23),(28,26,20),(29,27,5),(30,28,19),(31,29,51),(32,30,25),(33,31,9),(34,32,14),(35,33,44),(36,34,25),(37,35,23),(38,36,8),(39,38,20),(40,37,23),(41,39,8),(42,41,19),(43,40,25),(44,42,4),(45,43,25),(46,44,26),(47,45,35),(48,45,2),(49,46,23),(50,47,25),(51,48,32),(52,49,29),(53,50,25),(54,51,23),(55,52,28),(56,53,29),(57,54,25),(58,55,25),(59,56,31),(60,57,31),(61,58,23),(62,59,1),(63,60,14),(64,61,27),(65,62,23),(66,63,2),(67,63,35),(68,64,43),(69,65,43),(70,66,12),(71,66,2),(72,67,31),(73,68,12),(74,69,29),(75,70,12),(76,71,31),(77,72,2),(78,73,12),(79,74,43),(80,75,29),(81,76,38),(82,77,2),(83,78,30),(84,79,29),(85,80,12),(86,81,29),(87,82,12),(88,83,27),(89,84,2),(90,84,35),(91,85,2),(92,86,29),(93,87,29),(94,88,29),(95,89,31),(96,90,53),(97,91,33),(98,91,47),(99,91,34),(100,91,41),(101,92,33),(102,92,34),(103,92,47),(104,93,50),(105,94,47),(106,94,45),(107,94,33),(108,94,34),(109,95,47),(110,95,33),(111,95,34),(112,96,34),(113,96,49),(114,96,33),(115,96,47),(116,97,33),(117,97,34),(118,97,47),(119,98,36),(120,98,34),(121,98,33),(122,98,47),(123,99,34),(124,99,36),(125,99,47),(126,99,33),(127,100,54),(128,100,50),(129,101,41),(130,101,47),(131,101,33),(132,101,34),(133,102,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<signcomsexgirl1.mm.model.e: void onDestroy()>',13,'s',NULL),(2,56,'<signcomsexgirl1.mm.model.q: void run()>',15,'s',NULL),(3,57,'<signcomsexgirl1.mm.model.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(4,58,'<signcomsexgirl1.mm.model.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(5,59,'<signcomsexgirl1.mm.SmsSend$1: void onClick(android.view.View)>',8,'a',NULL),(6,60,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(7,60,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(8,60,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(9,61,'<com.computertimeco.android.alienspresident.AliensPresident$MainScreen: void DisplayInstructions()>',5,'a',NULL),(10,62,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(11,60,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(12,7,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',13,'a',NULL),(13,63,'<com.computertimeco.android.alienspresident.president.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(14,64,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(15,65,'<com.computertimeco.android.alienspresident.president.q: void run()>',15,'s',NULL),(16,66,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(17,67,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(18,7,'<com.ubermind.ilightr.iLightrActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(19,68,'<com.computertimeco.android.alienspresident.president.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(20,7,'<com.ubermind.ilightr.iLightrActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(21,61,'<com.computertimeco.android.alienspresident.AliensPresident$MainScreen: void DisplayTopScores()>',5,'a',NULL),(22,67,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(23,60,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(24,69,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(25,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(26,70,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(27,62,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(28,71,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(29,72,'<com.computertimeco.android.alienspresident.president.e: void onDestroy()>',13,'s',NULL),(30,73,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(31,9,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(32,14,'<com.gagabunch.helix.HeliX: boolean onTouchEvent(android.view.MotionEvent)>',94,'a',NULL),(33,43,'<com.computertimeco.android.alienspresident.HighScores: boolean BrowseUrl(java.lang.String)>',6,'a',NULL),(34,66,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(35,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(36,60,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(37,74,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(38,70,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(39,75,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(40,66,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(41,71,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(42,76,'<com.ustwo.mouthoff.view.AppInfoView: void sendEmail(java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>',13,'a',NULL),(43,77,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(44,26,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(45,78,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(46,67,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(47,66,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(48,32,'<wbs.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(49,79,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(50,66,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(51,80,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(52,28,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(53,79,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(54,66,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(55,81,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(56,31,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(57,31,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(58,82,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(59,83,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',12,'s',NULL),(60,14,'<com.gagabunch.helix.HeliX: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(61,83,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(62,67,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(63,35,'<wbs.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(64,44,'<wbs.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(65,44,'<wbs.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(66,30,'<wbs.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(67,31,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(68,12,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(69,84,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(70,12,'<wbs.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(71,31,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(72,2,'<wbs.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(73,12,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(74,44,'<wbs.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(75,79,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(76,38,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(77,2,'<wbs.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(78,30,'<wbs.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(79,79,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(80,85,'<wbs.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(81,79,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(82,12,'<wbs.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(83,83,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(84,78,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL),(85,2,'<wbs.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(86,86,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(87,87,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(88,79,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(89,31,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL),(90,88,'<com.ximad.gravity.screen.MyService: void onDestroy()>',13,'s',NULL),(91,41,'<com.ximad.gravity.activities.Options: void onClick(android.view.View)>',17,'a',NULL),(92,89,'<com.ximad.gravity.activities.MainMenuScreen$StartActivityAfterAnimation: void onAnimationEnd(android.view.animation.Animation)>',9,'a',NULL),(93,90,'<com.ximad.gravity.screen.MyActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(94,91,'<com.ximad.gravity.activities.SelectScenarios$StartActivityAfterAnimation: void onAnimationEnd(android.view.animation.Animation)>',11,'a',NULL),(95,92,'<com.ximad.gravity.activities.ShowStatistics$1: void onClick(android.view.View)>',62,'a',NULL),(96,49,'<com.ximad.gravity.activities.BetaMessage: void onClick(android.view.View)>',10,'a',NULL),(97,93,'<com.ximad.gravity.activities.About$StartActivityAfterAnimation: void onAnimationEnd(android.view.animation.Animation)>',18,'a',NULL),(98,94,'<com.ximad.gravity.activities.SelectLevels$StartActivityAfterAnimation: void onAnimationEnd(android.view.animation.Animation)>',11,'a',NULL),(99,36,'<com.ximad.gravity.activities.SelectLevels: void onClick(android.view.View)>',334,'a',NULL),(100,95,'<com.ximad.gravity.screen.d: void run()>',15,'s',NULL),(101,41,'<com.ximad.gravity.activities.Options: void onClick(android.view.View)>',11,'a',NULL),(102,96,'<com.ximad.gravity.screen.d.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,5,12),(2,10,13),(3,12,14),(4,23,2),(5,24,2),(6,25,2),(7,26,2),(8,29,2),(9,31,2),(10,32,15),(11,35,2),(12,36,15),(13,37,15),(14,38,2),(15,39,15),(16,40,2),(17,41,15),(18,43,13),(19,44,15),(20,45,14),(21,46,15),(22,47,13),(23,48,15),(24,49,14),(25,51,2),(26,53,9),(27,54,10),(28,55,7),(29,57,6),(30,60,10),(31,61,13),(32,62,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,3,'(.*)'),(4,4,'(.*)'),(5,6,'com/computertimeco/android/alienspresident/Instructions'),(6,7,'(.*)'),(7,8,'com/ubermind/ilightr/prefs/SettingsActivity'),(8,9,'(.*)'),(9,11,'(.*)'),(10,13,'com/ubermind/ilightr/prefs/SelectCaseActivity'),(11,14,'(.*)'),(12,15,'com/ubermind/ilightr/activity/VideoActivity'),(13,16,'com/computertimeco/android/alienspresident/HighScores'),(14,17,'(.*)'),(15,18,'(.*)'),(16,19,'(.*)'),(17,20,'(.*)'),(18,21,'(.*)'),(19,22,'(.*)'),(20,27,'(.*)'),(21,28,'(.*)'),(22,30,'(.*)'),(23,33,'(.*)'),(24,34,'(.*)'),(25,42,'(.*)'),(26,50,'(.*)'),(27,52,'(.*)'),(28,56,'(.*)'),(29,58,'wbs/netsentry/ui/ChartInterfaceStats'),(30,59,'(.*)'),(31,63,'(.*)'),(32,64,'(.*)'),(33,65,'com/ximad/gravity/activities/MainMenuScreen'),(34,66,'com/ximad/gravity/activities/About'),(35,68,'com/ximad/gravity/activities/SelectScenarios'),(36,69,'com/ximad/gravity/activities/Options'),(37,70,'(.*)'),(38,72,'com/ximad/gravity/activities/SelectLevels'),(39,73,'com/ximad/gravity/activities/MainMenuScreen'),(40,74,'com/ximad/gravity/activities/SelectLevels'),(41,75,'com/ximad/gravity/activities/MainMenuScreen'),(42,76,'com/ximad/gravity/activities/ShowStatistics'),(43,78,'com/ximad/gravity/activities/MainMenuScreen'),(44,79,'com/ximad/gravity/activities/PauseMenu'),(45,81,'com/ximad/gravity/activities/SelectScenarios'),(46,82,'(.*)'),(47,83,'com/ximad/gravity/activities/MainMenuScreen'),(48,84,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,23,12),(3,24,13),(4,25,14),(5,26,16),(6,29,19),(7,31,20),(8,35,22),(9,38,25),(10,40,27),(11,51,33),(12,53,37),(13,57,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'android.intent.extra.shortcut.NAME'),(2,10,'android.intent.extra.shortcut.ICON'),(3,10,'android.intent.extra.shortcut.INTENT'),(4,12,'android.intent.extra.shortcut.NAME'),(5,12,'android.intent.extra.shortcut.ICON'),(6,12,'android.intent.extra.shortcut.INTENT'),(7,32,'android.intent.extra.INTENT'),(8,36,'android.intent.extra.INTENT'),(9,37,'android.intent.extra.TITLE'),(10,37,'android.intent.extra.INTENT'),(11,39,'android.intent.extra.INTENT'),(12,41,'android.intent.extra.TITLE'),(13,43,'android.intent.extra.shortcut.NAME'),(14,41,'android.intent.extra.INTENT'),(15,43,'android.intent.extra.shortcut.ICON'),(16,43,'android.intent.extra.shortcut.INTENT'),(17,44,'android.intent.extra.INTENT'),(18,45,'android.intent.extra.shortcut.NAME'),(19,45,'android.intent.extra.shortcut.ICON'),(20,46,'android.intent.extra.TITLE'),(21,45,'android.intent.extra.shortcut.INTENT'),(22,46,'android.intent.extra.INTENT'),(23,47,'android.intent.extra.shortcut.NAME'),(24,48,'android.intent.extra.TITLE'),(25,47,'android.intent.extra.shortcut.ICON'),(26,48,'android.intent.extra.INTENT'),(27,47,'android.intent.extra.shortcut.INTENT'),(28,49,'android.intent.extra.shortcut.NAME'),(29,49,'android.intent.extra.shortcut.ICON'),(30,49,'android.intent.extra.shortcut.INTENT'),(31,58,'deviceName'),(32,61,'android.intent.extra.shortcut.NAME'),(33,61,'android.intent.extra.shortcut.ICON'),(34,61,'android.intent.extra.shortcut.INTENT'),(35,62,'android.intent.extra.shortcut.NAME'),(36,62,'android.intent.extra.shortcut.ICON'),(37,62,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,4,3),(4,5,1),(5,6,4),(6,9,5),(7,10,6),(8,10,2),(9,12,1),(10,13,1),(11,14,1),(12,15,7),(13,16,5),(14,17,8),(15,18,5),(16,19,5),(17,20,9),(18,21,10),(19,23,11),(20,24,5),(21,25,5),(22,27,1),(23,28,1),(24,29,8),(25,30,5),(26,31,5),(27,32,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,7,1),(7,6,2),(8,8,1),(9,9,1),(10,11,1),(11,10,2),(12,12,1),(13,13,1),(14,14,1),(15,15,2),(16,16,1),(17,18,1),(18,19,1),(19,22,1),(20,25,1),(21,26,1),(22,27,1),(23,28,1),(24,30,1),(25,31,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,2,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,10,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,23,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'signcomsexgirl1.mm'),(2,2,'signcomsexgirl1.mm'),(3,3,'signcomsexgirl1.mm'),(4,4,'(.*)'),(5,6,'com.computertimeco.android.alienspresident'),(6,7,'com.ustwo.mouthoff'),(7,8,'com.ubermind.ilightr'),(8,9,'(.*)'),(9,11,'com.computertimeco.android.alienspresident'),(10,13,'com.ubermind.ilightr'),(11,14,'com.computertimeco.android.alienspresident'),(12,15,'com.ubermind.ilightr'),(13,16,'com.computertimeco.android.alienspresident'),(14,17,'com.ustwo.mouthoff'),(15,18,'com.ubermind.ilightr'),(16,19,'com.ustwo.mouthoff'),(17,20,'com.gagabunch.helix'),(18,21,'com.computertimeco.android.alienspresident'),(19,22,'com.ustwo.mouthoff'),(20,27,'com.ubermind.ilightr'),(21,28,'com.gagabunch.helix'),(22,30,'com.gagabunch.helix'),(23,33,'com.gagabunch.helix'),(24,34,'com.ubermind.ilightr'),(25,42,'com.ubermind.ilightr'),(26,50,'wbs.netsentry'),(27,52,'wbs.netsentry'),(28,56,'wbs.netsentry'),(29,58,'wbs.netsentry'),(30,59,'wbs.netsentry'),(31,63,'wbs.netsentry'),(32,64,'com.ximad.gravity'),(33,65,'com.ximad.gravity'),(34,66,'com.ximad.gravity'),(35,68,'com.ximad.gravity'),(36,69,'com.ximad.gravity'),(37,70,'com.ximad.gravity'),(38,72,'com.ximad.gravity'),(39,73,'com.ximad.gravity'),(40,74,'com.ximad.gravity'),(41,75,'com.ximad.gravity'),(42,76,'com.ximad.gravity'),(43,78,'com.ximad.gravity'),(44,79,'com.ximad.gravity'),(45,81,'com.ximad.gravity'),(46,82,'com.ximad.gravity'),(47,83,'com.ximad.gravity'),(48,84,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,2,0),(5,5,0),(6,6,0),(7,7,0),(8,11,0),(9,9,0),(10,12,0),(11,14,0),(12,18,0),(13,19,0),(14,20,0),(15,21,0),(16,26,0),(17,24,0),(18,28,0),(19,24,0),(20,30,0),(21,31,0),(22,33,0),(23,32,0),(24,35,0),(25,38,0),(26,40,0),(27,48,0),(28,50,0),(29,52,0),(30,52,0),(31,54,0),(32,54,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,9,0,0),(7,10,0,0),(8,12,0,0),(9,13,0,0),(10,14,1,0),(11,15,0,0),(12,14,1,0),(13,18,0,0),(14,19,0,0),(15,20,0,0),(16,21,0,0),(17,24,0,0),(18,26,0,0),(19,27,0,0),(20,28,0,0),(21,29,0,0),(22,31,0,0),(23,32,1,0),(24,33,1,0),(25,33,1,0),(26,33,1,0),(27,38,0,0),(28,37,0,0),(29,33,1,0),(30,41,0,0),(31,33,1,0),(32,42,1,0),(33,44,0,0),(34,43,0,0),(35,33,1,0),(36,42,1,0),(37,42,1,0),(38,33,1,0),(39,42,1,0),(40,33,1,0),(41,42,1,0),(42,52,0,0),(43,51,1,0),(44,42,1,0),(45,51,1,0),(46,42,1,0),(47,55,1,0),(48,42,1,0),(49,55,1,0),(50,59,0,0),(51,60,1,0),(52,61,0,0),(53,66,1,0),(54,68,1,0),(55,72,1,0),(56,76,0,0),(57,77,1,0),(58,80,0,0),(59,83,0,0),(60,85,1,0),(61,86,1,0),(62,86,1,0),(63,87,0,0),(64,90,0,0),(65,91,0,0),(66,92,0,0),(67,92,1,0),(68,92,0,0),(69,92,0,0),(70,93,0,0),(71,94,1,0),(72,94,0,0),(73,94,0,0),(74,95,0,0),(75,95,0,0),(76,96,0,0),(77,97,1,0),(78,97,0,0),(79,98,0,0),(80,98,1,0),(81,99,0,0),(82,100,0,0),(83,101,0,0),(84,102,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'wbs.netsentry');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(7,'android.permission.CALL_PHONE'),(14,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(22,'android.permission.RECEIVE_SMS'),(20,'android.permission.RECORD_AUDIO'),(23,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(24,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,43,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(12,NULL,NULL,'http://www.gagabunch.com/',NULL,NULL,NULL),(13,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores_random.php',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores.php',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(19,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores_random.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=',NULL,NULL,NULL),(20,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=(.*)(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(22,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores_random.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(25,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores_random.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=(.*)(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(27,NULL,NULL,'http://smudgeware.com/highscores/android/avp/scores.php?action=add&name=(.*)&kills=(.*)&level=(.*)&sec=',NULL,NULL,NULL),(28,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(29,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(30,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(31,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(33,NULL,NULL,'http://www.gagabunch.com/',NULL,NULL,NULL),(34,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(35,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(36,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(37,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(38,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(39,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(40,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(41,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(42,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(44,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(45,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(46,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,2),(2,7,3),(3,8,4),(4,11,5),(5,16,6),(6,17,7),(7,22,8),(8,25,9),(9,30,10),(10,34,11),(11,36,15),(12,39,17),(13,40,18),(14,45,21),(15,46,23),(16,47,24),(17,49,26),(18,53,28),(19,54,29),(20,56,30),(21,57,31),(22,58,32),(23,62,34),(24,63,35),(25,64,36),(26,67,38),(27,69,39),(28,71,40),(29,79,42),(30,81,43),(31,84,44),(32,88,45),(33,89,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,1,10),(12,2,2),(13,1,11),(14,2,3),(15,1,12),(16,2,4),(17,1,13),(18,2,5),(19,1,14),(20,2,6),(21,1,15),(22,2,7),(23,1,17),(24,2,8),(25,1,16),(26,2,9),(27,2,10),(28,2,11),(29,2,12),(30,4,1),(31,2,14),(32,4,2),(33,3,1),(34,2,15),(35,4,3),(36,3,2),(37,2,17),(38,4,4),(39,3,3),(40,2,16),(41,4,5),(42,3,4),(43,2,19),(44,4,6),(45,3,5),(46,2,18),(47,4,7),(48,3,6),(49,2,20),(50,5,1),(51,4,8),(52,3,7),(53,5,2),(54,4,9),(55,3,8),(56,5,3),(57,4,10),(58,3,9),(59,5,4),(60,4,11),(61,3,10),(62,5,5),(63,4,12),(64,3,11),(65,5,6),(66,3,12),(67,4,14),(68,5,7),(69,3,14),(70,4,15),(71,5,8),(72,3,15),(73,4,17),(74,5,9),(75,3,17),(76,4,16),(77,5,10),(78,3,16),(79,4,18),(80,5,11),(81,3,18),(82,5,12),(83,3,21),(84,5,14),(85,3,23),(86,5,15),(87,3,22),(88,5,17),(89,5,16),(90,5,18),(91,6,1),(92,6,2),(93,6,3),(94,6,4),(95,6,5),(96,6,6),(97,6,7),(98,6,8),(99,6,9),(100,6,10),(101,6,11),(102,7,1),(103,6,12),(104,7,2),(105,6,14),(106,7,3),(107,6,15),(108,7,4),(109,6,17),(110,7,5),(111,6,16),(112,7,6),(113,6,19),(114,7,7),(115,6,18),(116,7,8),(117,6,21),(118,7,9),(119,6,23),(120,7,10),(121,6,22),(122,7,11),(123,7,12),(124,7,14),(125,7,15),(126,7,17),(127,7,16),(128,7,18),(129,7,21),(130,7,23),(131,7,22),(132,7,24);
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

-- Dump completed on 2015-10-09  0:39:27
