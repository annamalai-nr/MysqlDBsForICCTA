-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_394
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(14,'NULL-CONSTANT'),(15,'android.appwidget.action.APPWIDGET_CONFIGURE'),(16,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CALL'),(23,'android.intent.action.CHOOSER'),(7,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(21,'android.intent.action.PICK'),(20,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(18,'android.speech.action.RECOGNIZE_SPEECH'),(17,'com.android.broadcasttest.TIME_ALERT'),(12,'com.xmobileapp.taskmanager.ACTION_LOADFINISH'),(3,'com.xmobileapp.taskmanager.TaskManager'),(8,'wbs.netsentry.ACTION_EDIT_PREFERENCES'),(11,'wbs.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(9,'wbs.netsentry.ACTION_RESET_COUNTERS'),(10,'wbs.netsentry.ACTION_UPDATE_COUNTERS'),(6,'wbs.netsentry.ui.ChartInterfaceStats'),(5,'wbs.netsentry.ui.InterfaceStatsList');
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
INSERT INTO `Applications` VALUES (1,'com.wbs',1),(2,'wbs.logo',1),(3,'com.ttmobilegame.android.constellation',3),(4,'wbs.netsentry',4),(5,'com.magmamobile.game.TapAndFurious',4),(6,'com.palmdream.sudoku',3),(7,'com.cjm.gogoNote',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wbs.MagicVoiceActivity'),(2,1,'com.geinimi.custom.Ad0000_00000006'),(3,1,'com.geinimi.custom.GoogleKeyboard'),(4,1,'com.geinimi.AdServiceReceiver'),(5,2,'wbs.logo.WbsLogoAct'),(6,2,'com.xmobileapp.taskmanager.TaskManager'),(7,3,'com.ttmobilegame.android.constellation.Logo'),(8,2,'com.geinimi.custom.Ad0000_000004'),(9,3,'com.ttmobilegame.android.constellation.tiaozhuan'),(10,3,'com.ttmobilegame.android.constellation.test'),(11,2,'com.geinimi.AdService'),(12,3,'com.ttmobilegame.android.constellation.affection'),(13,2,'com.geinimi.AdServiceReceiver'),(14,3,'com.ttmobilegame.android.constellation.source'),(15,3,'com.myanimal.automata.gleanybody.rjwgACFiaaaaa'),(16,4,'wbs.netsentry.logo.WbsLogoAct'),(17,3,'com.myanimal.automata.gleanybody.AndroidIME'),(18,4,'wbs.netsentry.ui.InterfaceStatsList'),(19,3,'com.myanimal.ServiceReceiver'),(20,4,'wbs.netsentry.ui.ChartInterfaceStats'),(21,4,'wbs.netsentry.ui.InterfaceStatsEditor'),(22,4,'wbs.netsentry.ui.ApplicationPreferences'),(23,4,'com.geinimi.custom.Ad00000005_2'),(24,4,'com.geinimi.AdService'),(25,4,'wbs.netsentry.backend.Resetter'),(26,4,'wbs.netsentry.backend.Updater'),(27,4,'wbs.netsentry.backend.scheduler.CronScheduler'),(28,4,'wbs.netsentry.backend.Bootstrapper'),(29,4,'com.geinimi.AdServiceReceiver'),(30,4,'wbs.netsentry.backend.InterfaceStatsProvider'),(31,5,'com.magmamobile.game.TapAndFurious.Main'),(32,5,'com.magmamobile.game.TapAndFurious.activities.MainActivity'),(33,5,'com.magmamobile.game.TapAndFurious.activities.GameModeActivity'),(34,5,'com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity'),(35,5,'com.magmamobile.game.TapAndFurious.activities.GameFinishedActivity'),(36,5,'com.magmamobile.game.TapAndFurious.activities.HighScoresActivity'),(37,5,'com.magmamobile.game.TapAndFurious.activities.PreferencesActivity'),(38,5,'com.magmamobile.game.TapAndFurious.activities.ScoreloopActivity'),(39,5,'com.magmamobile.game.TapAndFurious.activities.GameActivity'),(40,5,'com.geinimi.custom.Ad3029_30290001'),(41,5,'com.geinimi.custom.GoogleKeyboard'),(42,5,'com.geinimi.AdServiceReceiver'),(43,2,'com.xmobileapp.taskmanager.TaskManager$LoadFinishReceiver'),(44,2,'com.geinimi.ads.c'),(45,2,'com.geinimi.c.e'),(46,2,'com.geinimi.AdActivity'),(47,2,'com.geinimi.c.b'),(48,3,'com.myanimal.a.c'),(49,3,'com.ttmobilegame.android.constellation.tiaozhuan$5'),(50,3,'com.myanimal.d.j'),(51,3,'com.myanimal.MyActivity'),(52,3,'com.ttmobilegame.android.constellation.tiaozhuan$4'),(53,3,'com.myanimal.d.c'),(54,3,'com.ttmobilegame.android.constellation.tiaozhuan$3'),(55,3,'com.myanimal.MyService'),(56,3,'com.myanimal.a.i'),(57,4,'com.geinimi.c.b'),(58,4,'com.geinimi.AdActivity'),(59,4,'wbs.netsentry.backend.Bootstrapper$1'),(60,4,'com.geinimi.c.e'),(61,4,'wbs.netsentry.ui.InterfaceStatsEditor$2'),(62,5,'com.magmamobile.game.TapAndFurious.activities.GameModeActivity$3'),(63,4,'com.geinimi.ads.c'),(64,5,'com.magmamobile.game.TapAndFurious.activities.PreferencesActivity$2'),(65,5,'com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity$1'),(66,5,'com.geinimi.c.j'),(67,5,'com.geinimi.c.b'),(68,5,'com.geinimi.AdActivity'),(69,5,'com.geinimi.ads.c'),(70,5,'com.magmamobile.game.TapAndFurious.activities.MainActivity$2'),(71,5,'com.magmamobile.game.TapAndFurious.activities.PreferencesActivity$1'),(72,5,'com.magmamobile.game.TapAndFurious.activities.GameModeActivity$1'),(73,5,'com.geinimi.AdService'),(74,5,'com.magmamobile.game.TapAndFurious.activities.MainActivity$3'),(75,5,'com.magmamobile.game.TapAndFurious.activities.GameModeActivity$5'),(76,5,'magmamobile.app.SplashActivity$2'),(77,5,'com.magmamobile.game.TapAndFurious.activities.MainActivity$1'),(78,6,'com.palmdream.sudoku.HomePage'),(79,6,'com.palmdream.sudoku.MapSudoku'),(80,6,'com.palmdream.sudoku.Stats'),(81,6,'com.palmdream.sudoku.Help'),(82,6,'com.google.ads.AdActivity'),(83,6,'com.waps.OffersWebView'),(84,7,'com.cjm.gogoNote.NoteWidgetConfigure'),(85,7,'com.cjm.gogoNote.VoiceAlarmAlert'),(86,7,'com.cjm.gogoNote.ViewNote'),(87,7,'com.mt.airad.MultiAD'),(88,7,'com.google.ads.AdActivity'),(89,7,'com.geinimi.custom.Ad3064_30640001'),(90,7,'com.geinimi.custom.GoogleKeyboard'),(91,7,'com.cjm.gogoNote.NoteWidgetProvider'),(92,7,'com.cjm.gogoNote.NoteAlarmReceiver'),(93,7,'com.geinimi.AdServiceReceiver'),(94,6,'com.waps.z'),(95,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(96,6,'com.waps.s'),(97,6,'com.waps.o'),(98,7,'com.geinimi.c.b'),(99,6,'com.waps.AppConnect'),(100,7,'com.geinimi.AdActivity'),(101,6,'com.waps.ac'),(102,6,'com.waps.q'),(103,6,'com.palmdream.sudoku.HomePage$2'),(104,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(105,7,'com.geinimi.AdService'),(106,6,'com.waps.aa'),(107,7,'com.mt.airad.j'),(108,6,'com.madhouse.android.ads._'),(109,7,'com.geinimi.c.j'),(110,7,'com.geinimi.ads.c');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'ACTIVITY_PARAM_KEY'),(2,8,'ACTIVITY_PARAM_URL_KEY'),(3,8,'cpid'),(4,11,'cpid'),(5,8,'ptid'),(6,11,'ptid'),(7,7,'cpid'),(8,17,'cpid'),(9,15,'cpid'),(10,15,'ACTIVITY_PARAM_KEY'),(11,7,'ptid'),(12,17,'ptid'),(13,15,'ptid'),(14,7,'did'),(15,17,'did'),(16,15,'did'),(17,7,'salesid'),(18,17,'salesid'),(19,15,'salesid'),(20,20,'deviceName'),(21,23,'ACTIVITY_PARAM_URL_KEY'),(22,23,'ACTIVITY_PARAM_KEY'),(23,24,'ptid'),(24,23,'ptid'),(25,27,'target.intent'),(26,24,'cpid'),(27,23,'cpid'),(28,27,'cron.expression'),(29,40,'salesid'),(30,41,'salesid'),(31,36,'difficulty'),(32,35,'killed'),(33,40,'did'),(34,41,'did'),(35,34,'mode'),(36,40,'ACTIVITY_PARAM_KEY'),(37,35,'level'),(38,40,'ptid'),(39,41,'ptid'),(40,35,'score'),(41,40,'cpid'),(42,41,'cpid'),(43,35,'mode'),(44,35,'difficulty'),(45,36,'mode'),(46,49,'URL'),(47,49,'CLIENT_PACKAGE'),(48,44,'WAPS_ID'),(49,49,'WAPS_ID'),(50,45,'WAPS_ID'),(51,48,'action'),(52,44,'CLIENT_PACKAGE'),(53,45,'CLIENT_PACKAGE'),(54,53,'adID'),(55,49,'UrlPath'),(56,55,'salesid'),(57,56,'salesid'),(58,54,'salesid'),(59,50,'appWidgetId'),(60,55,'ACTIVITY_PARAM_KEY'),(61,55,'ptid'),(62,56,'ptid'),(63,54,'ptid'),(64,44,'DEVICE_ID'),(65,49,'DEVICE_ID'),(66,45,'DEVICE_ID'),(67,48,'params'),(68,49,'Notify_Id'),(69,53,'adURL'),(70,49,'USER_ID'),(71,55,'did'),(72,56,'did'),(73,54,'did'),(74,49,'Offers_URL'),(75,49,'isFinshClose'),(76,44,'WAPS_PID'),(77,49,'WAPS_PID'),(78,45,'WAPS_PID'),(79,49,'URL_PARAMS'),(80,55,'cpid'),(81,56,'cpid'),(82,54,'cpid'),(83,54,'params'),(84,54,'com.google.ads.AdOpener'),(85,44,'APP_ID'),(86,52,'data1'),(87,49,'APP_ID'),(88,45,'APP_ID'),(89,44,'GH_APPKEY'),(90,49,'offers_webview_tag'),(91,45,'level'),(92,49,'ACTIVITY_FLAG'),(93,48,'com.google.ads.AdOpener'),(94,49,'SHWO_FLAG'),(95,49,'Notify_Url_Params'),(96,54,'action'),(97,51,'appWidgetId');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,14,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,14,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,14,NULL),(18,18,'a',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,14,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'p',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'s',0,14,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,78,'a',1,NULL,NULL),(45,79,'a',0,NULL,NULL),(46,80,'a',0,NULL,NULL),(47,81,'a',0,NULL,NULL),(48,82,'a',0,NULL,NULL),(49,83,'a',0,NULL,NULL),(50,84,'a',1,NULL,NULL),(51,85,'a',0,NULL,NULL),(52,86,'a',0,NULL,NULL),(53,87,'a',0,NULL,NULL),(54,88,'a',0,NULL,NULL),(55,89,'a',1,NULL,NULL),(56,90,'s',0,14,NULL),(57,91,'r',1,NULL,NULL),(58,92,'r',1,NULL,NULL),(59,93,'r',1,NULL,NULL),(60,102,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,11),(3,3,13),(4,4,8),(5,5,11),(6,6,11),(7,7,11),(8,8,11),(9,9,8),(10,10,17),(11,11,9),(12,12,17),(13,13,15),(14,14,9),(15,15,17),(16,16,19),(17,17,15),(18,18,17),(19,19,9),(20,20,17),(21,21,17),(22,22,17),(23,23,17),(24,24,17),(25,25,17),(26,26,30),(27,27,18),(28,27,28),(29,28,27),(30,29,26),(31,30,24),(32,31,24),(33,32,30),(34,33,16),(35,34,18),(36,34,28),(37,35,29),(38,36,26),(39,37,24),(40,38,23),(41,39,26),(42,40,24),(43,41,18),(44,42,24),(45,43,25),(46,44,28),(47,44,18),(48,45,21),(49,46,26),(50,47,23),(51,48,18),(52,49,26),(53,50,30),(54,51,21),(55,52,18),(56,53,33),(57,54,24),(58,55,37),(59,56,21),(60,57,21),(61,58,18),(62,58,21),(63,59,34),(64,60,21),(65,61,41),(66,62,34),(67,63,41),(68,64,41),(69,65,34),(70,66,41),(71,67,40),(72,68,41),(73,69,32),(74,70,37),(75,71,42),(76,72,40),(77,73,34),(78,74,41),(79,75,33),(80,76,41),(81,77,32),(82,78,33),(83,79,41),(84,80,31),(85,81,32),(86,82,41),(87,83,49),(88,84,44),(89,84,45),(90,85,45),(91,85,44),(92,86,45),(93,86,44),(94,87,49),(95,88,49),(96,89,48),(97,90,56),(98,91,50),(99,92,59),(100,93,45),(101,94,56),(102,95,55),(103,96,49),(104,97,50),(105,98,44),(106,98,45),(107,99,52),(108,100,56),(109,101,45),(110,101,44),(111,102,54),(112,103,45),(113,103,44),(114,104,44),(115,104,45),(116,105,44),(117,105,45),(118,106,55),(119,107,44),(120,107,45),(121,108,56),(122,109,56),(123,110,49),(124,111,58),(125,112,52),(126,113,56),(127,114,52),(128,115,45),(129,115,44),(130,116,52),(131,117,44),(132,117,45),(133,118,52),(134,119,49),(135,120,53),(136,121,45),(137,121,44),(138,122,56),(139,123,56),(140,124,56),(141,125,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,44,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(2,45,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(3,13,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,46,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(5,47,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(6,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(7,11,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(8,47,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(9,46,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(10,48,'<com.myanimal.a.c: boolean c()>',24,'p',NULL),(11,49,'<com.ttmobilegame.android.constellation.tiaozhuan$5: void onClick(android.view.View)>',7,'a',NULL),(12,50,'<com.myanimal.d.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(13,51,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(14,52,'<com.ttmobilegame.android.constellation.tiaozhuan$4: void onClick(android.view.View)>',7,'a',NULL),(15,53,'<com.myanimal.d.c: java.util.Vector a()>',5,'p',NULL),(16,19,'<com.myanimal.ServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(17,51,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(18,53,'<com.myanimal.d.c: java.util.Vector a()>',50,'p',NULL),(19,54,'<com.ttmobilegame.android.constellation.tiaozhuan$3: void onClick(android.view.View)>',7,'a',NULL),(20,55,'<com.myanimal.MyService: void onDestroy()>',11,'s',NULL),(21,53,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(22,53,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(23,53,'<com.myanimal.d.c: java.util.Vector a()>',27,'p',NULL),(24,56,'<com.myanimal.a.i: void a(java.lang.String)>',18,'a',NULL),(25,53,'<com.myanimal.d.c: boolean a(java.lang.String)>',7,'p',NULL),(26,30,'<wbs.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(27,28,'<wbs.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(28,27,'<wbs.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(29,26,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(30,57,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(31,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',25,'p',0),(32,30,'<wbs.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(33,58,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(34,59,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(35,29,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(36,26,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(37,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',14,'p',NULL),(38,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(39,26,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL),(40,60,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(41,18,'<wbs.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(42,24,'<com.geinimi.AdService: void onDestroy()>',7,'s',NULL),(43,25,'<wbs.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(44,59,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL),(45,21,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(46,26,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(47,58,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(48,18,'<wbs.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(49,26,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(50,30,'<wbs.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(51,61,'<wbs.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(52,18,'<wbs.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(53,62,'<com.magmamobile.game.TapAndFurious.activities.GameModeActivity$3: void onClick(android.view.View)>',7,'a',NULL),(54,63,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(55,64,'<com.magmamobile.game.TapAndFurious.activities.PreferencesActivity$2: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(56,21,'<wbs.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(57,21,'<wbs.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(58,25,'<wbs.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(59,65,'<com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(60,21,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(61,66,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(62,65,'<com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',73,'a',NULL),(63,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(64,67,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(65,34,'<com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity: void onClick(android.view.View)>',15,'a',NULL),(66,67,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(67,68,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(68,69,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(69,70,'<com.magmamobile.game.TapAndFurious.activities.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(70,71,'<com.magmamobile.game.TapAndFurious.activities.PreferencesActivity$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(71,42,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(72,68,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(73,65,'<com.magmamobile.game.TapAndFurious.activities.GameDifficultyActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(74,67,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(75,72,'<com.magmamobile.game.TapAndFurious.activities.GameModeActivity$1: void onClick(android.view.View)>',9,'a',NULL),(76,73,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(77,74,'<com.magmamobile.game.TapAndFurious.activities.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(78,75,'<com.magmamobile.game.TapAndFurious.activities.GameModeActivity$5: void onClick(android.view.View)>',7,'a',NULL),(79,67,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(80,76,'<magmamobile.app.SplashActivity$2: void run()>',32,'a',NULL),(81,77,'<com.magmamobile.game.TapAndFurious.activities.MainActivity$1: void onClick(android.view.View)>',6,'a',NULL),(82,67,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(83,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,95,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(85,96,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(86,96,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(87,97,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(88,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',297,'a',NULL),(89,82,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(90,98,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(91,84,'<com.cjm.gogoNote.NoteWidgetConfigure: boolean onKeyDown(int,android.view.KeyEvent)>',25,'a',NULL),(92,93,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(93,99,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(94,98,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(95,100,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(96,101,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(97,84,'<com.cjm.gogoNote.NoteWidgetConfigure: void a(com.cjm.gogoNote.NoteWidgetConfigure,com.cjm.gogoNote.q)>',34,'a',NULL),(98,99,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(99,86,'<com.cjm.gogoNote.ViewNote: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(100,98,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(101,103,'<com.palmdream.sudoku.HomePage$2: void onClick(android.view.View)>',36,'a',NULL),(102,88,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(103,104,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(104,103,'<com.palmdream.sudoku.HomePage$2: void onClick(android.view.View)>',63,'a',NULL),(105,103,'<com.palmdream.sudoku.HomePage$2: void onClick(android.view.View)>',42,'a',NULL),(106,100,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(107,96,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(108,98,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(109,105,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(110,106,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(111,92,'<com.cjm.gogoNote.NoteAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(112,86,'<com.cjm.gogoNote.ViewNote: void onActivityResult(int,int,android.content.Intent)>',22,'a',NULL),(113,98,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(114,86,'<com.cjm.gogoNote.ViewNote: boolean onOptionsItemSelected(android.view.MenuItem)>',30,'a',NULL),(115,103,'<com.palmdream.sudoku.HomePage$2: void onClick(android.view.View)>',56,'a',NULL),(116,86,'<com.cjm.gogoNote.ViewNote: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(117,103,'<com.palmdream.sudoku.HomePage$2: void onClick(android.view.View)>',49,'a',NULL),(118,86,'<com.cjm.gogoNote.ViewNote: void onActivityResult(int,int,android.content.Intent)>',36,'a',NULL),(119,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',330,'a',NULL),(120,107,'<com.mt.airad.j: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(121,108,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(122,109,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(123,110,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(124,98,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(125,86,'<com.cjm.gogoNote.ViewNote: void emailPoster()>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,2,14),(3,8,13),(4,9,14),(5,16,4),(6,20,13),(7,21,14),(8,22,8),(9,25,10),(10,27,7),(11,29,4),(12,30,9),(13,32,10),(14,33,13),(15,34,14),(16,45,4),(17,49,4),(18,52,1),(19,53,1),(20,55,4),(21,57,1),(22,58,1),(23,59,4),(24,60,13),(25,61,13),(26,62,18),(27,67,7),(28,71,4),(29,72,13),(30,74,13),(31,78,4),(32,83,20),(33,84,21),(34,86,21),(35,88,22),(36,90,4),(37,91,13),(38,92,14),(39,93,23),(40,94,23),(41,95,23),(42,96,23),(43,97,23),(44,98,23),(45,99,23),(46,100,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,52,1),(2,53,3),(3,57,1),(4,58,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/geinimi/AdService'),(2,4,'com/geinimi/AdService'),(3,5,'com/geinimi/AdService'),(4,6,'(.*)'),(5,7,'com/ttmobilegame/android/constellation/test'),(6,10,'(.*)'),(7,11,'com/ttmobilegame/android/constellation/affection'),(8,12,'(.*)'),(9,13,'(.*)'),(10,14,'com/ttmobilegame/android/constellation/source'),(11,15,'(.*)'),(12,17,'com/geinimi/AdService'),(13,18,'com/geinimi/AdService'),(14,19,'com/geinimi/AdService'),(15,23,'com/geinimi/AdService'),(16,24,'(.*)'),(17,26,'wbs/netsentry/ui/ChartInterfaceStats'),(18,28,'com/magmamobile/game/TapAndFurious/activities/GameDifficultyActivity'),(19,31,'com/magmamobile/game/TapAndFurious/activities/HighScoresActivity'),(20,35,'com/magmamobile/game/TapAndFurious/activities/HighScoresActivity'),(21,36,'com/magmamobile/game/TapAndFurious/activities/GameActivity'),(22,37,'(.*)'),(23,38,'com/magmamobile/game/TapAndFurious/activities/PreferencesActivity'),(24,39,'com/magmamobile/game/TapAndFurious/activities/ScoreloopActivity'),(25,40,'(.*)'),(26,41,'(.*)'),(27,42,'com/magmamobile/game/TapAndFurious/activities/HighScoresActivity'),(28,43,'com/magmamobile/game/TapAndFurious/activities/GameDifficultyActivity'),(29,44,'(.*)'),(30,46,'com/magmamobile/game/TapAndFurious/activities/GameDifficultyActivity'),(31,47,'(.*)'),(32,48,'com/magmamobile/game/TapAndFurious/activities/GameModeActivity'),(33,54,'com/waps/OffersWebView'),(34,63,'(.*)'),(35,64,'com/waps/OffersWebView'),(36,65,'(.*)'),(37,66,'NULL-CONSTANT'),(38,68,'com/waps/OffersWebView'),(39,69,'com/cjm/gogoNote/NoteWidgetConfigure'),(40,70,'com/palmdream/sudoku/Stats'),(41,75,'com/palmdream/sudoku/MapSudoku'),(42,76,'com/palmdream/sudoku/Help'),(43,77,'(.*)'),(44,79,'(.*)'),(45,81,'com/cjm/gogoNote/VoiceAlarmAlert'),(46,80,'com/waps/OffersWebView'),(47,82,'com/waps/OffersWebView'),(48,85,'com/palmdream/sudoku/MapSudoku'),(49,87,'com/palmdream/sudoku/MapSudoku'),(50,89,'(.*)');
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
INSERT INTO `IData` VALUES (1,16,9),(2,27,22),(3,29,24),(4,30,25),(5,45,30),(6,49,33),(7,55,34),(8,59,35),(9,60,37),(10,61,38),(11,71,41),(12,72,42),(13,74,43),(14,78,44),(15,83,46),(16,88,48),(17,90,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'android.intent.extra.shortcut.NAME'),(5,2,'android.intent.extra.shortcut.ICON'),(6,2,'android.intent.extra.shortcut.INTENT'),(7,8,'android.intent.extra.shortcut.NAME'),(8,8,'android.intent.extra.shortcut.ICON'),(9,8,'android.intent.extra.shortcut.INTENT'),(10,9,'android.intent.extra.shortcut.NAME'),(11,9,'android.intent.extra.shortcut.ICON'),(12,9,'android.intent.extra.shortcut.INTENT'),(13,20,'android.intent.extra.shortcut.NAME'),(14,20,'android.intent.extra.shortcut.ICON'),(15,20,'android.intent.extra.shortcut.INTENT'),(16,21,'android.intent.extra.shortcut.NAME'),(17,21,'android.intent.extra.shortcut.ICON'),(18,21,'android.intent.extra.shortcut.INTENT'),(19,26,'deviceName'),(20,28,'mode'),(21,31,'difficulty'),(22,31,'mode'),(23,33,'android.intent.extra.shortcut.NAME'),(24,33,'android.intent.extra.shortcut.ICON'),(25,33,'android.intent.extra.shortcut.INTENT'),(26,34,'android.intent.extra.shortcut.NAME'),(27,34,'android.intent.extra.shortcut.ICON'),(28,34,'android.intent.extra.shortcut.INTENT'),(29,35,'difficulty'),(30,35,'mode'),(31,42,'difficulty'),(32,42,'mode'),(33,43,'mode'),(34,46,'mode'),(35,54,'CLIENT_PACKAGE'),(36,54,'URL'),(37,54,'isFinshClose'),(38,54,'offers_webview_tag'),(39,62,'android.speech.extra.LANGUAGE_MODEL'),(40,64,'USER_ID'),(41,64,'CLIENT_PACKAGE'),(42,64,'Offers_URL'),(43,64,'offers_webview_tag'),(44,64,'URL_PARAMS'),(45,67,'title'),(46,67,'description'),(47,67,'beginTime'),(48,68,'USER_ID'),(49,67,'endTime'),(50,68,'CLIENT_PACKAGE'),(51,67,'hasAlarm'),(52,68,'Offers_URL'),(53,68,'offers_webview_tag'),(54,68,'URL_PARAMS'),(55,69,'appWidgetId'),(56,75,'level'),(57,80,'UrlPath'),(58,80,'ACTIVITY_FLAG'),(59,80,'isFinshClose'),(60,81,'appWidgetId'),(61,80,'offers_webview_tag'),(62,82,'Notify_Url_Params'),(63,82,'UrlPath'),(64,82,'ACTIVITY_FLAG'),(65,82,'isFinshClose'),(66,82,'offers_webview_tag'),(67,83,'sms_body'),(68,85,'level'),(69,87,'level'),(70,91,'android.intent.extra.shortcut.NAME'),(71,91,'android.intent.extra.shortcut.ICON'),(72,91,'android.intent.extra.shortcut.INTENT'),(73,92,'android.intent.extra.shortcut.NAME'),(74,92,'android.intent.extra.shortcut.ICON'),(75,92,'android.intent.extra.shortcut.INTENT'),(76,93,'android.intent.extra.INTENT'),(77,94,'android.intent.extra.INTENT'),(78,95,'android.intent.extra.TITLE'),(79,95,'android.intent.extra.INTENT'),(80,96,'android.intent.extra.INTENT'),(81,97,'android.intent.extra.TITLE'),(82,97,'android.intent.extra.INTENT'),(83,98,'android.intent.extra.INTENT'),(84,99,'android.intent.extra.TITLE'),(85,99,'android.intent.extra.INTENT'),(86,100,'android.intent.extra.TITLE'),(87,100,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,3),(4,7,1),(5,8,2),(6,9,1),(7,10,1),(8,11,4),(9,12,2),(10,13,5),(11,14,6),(12,15,4),(13,15,7),(14,16,8),(15,17,9),(16,18,10),(17,19,11),(18,20,2),(19,21,2),(20,23,1),(21,24,2),(22,25,12),(23,26,12),(24,27,1),(25,28,15),(26,29,1),(27,30,16),(28,31,17),(29,32,2),(30,33,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,2),(12,12,1),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,21,1),(18,22,1),(19,23,1),(20,24,1),(21,27,1),(22,29,1),(23,32,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,15,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,17,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*'),(5,33,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,49,'application','vnd.android.package-archive'),(3,55,'application','vnd.android.package-archive'),(4,60,'(.*)','(.*)'),(5,67,'vnd.android.cursor.item','event'),(6,72,'(.*)','(.*)'),(7,84,'vnd.android.cursor.dir','phone'),(8,86,'vnd.android.cursor.dir','phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'wbs.logo'),(2,4,'wbs.logo'),(3,5,'wbs.logo'),(4,6,'wbs.logo'),(5,7,'com.ttmobilegame.android.constellation'),(6,10,'com.ttmobilegame.android.constellation'),(7,11,'com.ttmobilegame.android.constellation'),(8,12,'com.ttmobilegame.android.constellation'),(9,13,'com.ttmobilegame.android.constellation'),(10,14,'com.ttmobilegame.android.constellation'),(11,15,'com.ttmobilegame.android.constellation'),(12,17,'wbs.netsentry'),(13,18,'wbs.netsentry'),(14,19,'wbs.netsentry'),(15,23,'wbs.netsentry'),(16,24,'wbs.netsentry'),(17,26,'wbs.netsentry'),(18,28,'com.magmamobile.game.TapAndFurious'),(19,31,'com.magmamobile.game.TapAndFurious'),(20,35,'com.magmamobile.game.TapAndFurious'),(21,36,'com.magmamobile.game.TapAndFurious'),(22,37,'com.magmamobile.game.TapAndFurious'),(23,38,'com.magmamobile.game.TapAndFurious'),(24,39,'com.magmamobile.game.TapAndFurious'),(25,40,'com.magmamobile.game.TapAndFurious'),(26,41,'com.magmamobile.game.TapAndFurious'),(27,42,'com.magmamobile.game.TapAndFurious'),(28,43,'com.magmamobile.game.TapAndFurious'),(29,44,'com.magmamobile.game.TapAndFurious'),(30,46,'com.magmamobile.game.TapAndFurious'),(31,47,'com.magmamobile.game.TapAndFurious'),(32,48,'com.magmamobile.game.TapAndFurious'),(33,52,'NULL-CONSTANT'),(34,53,'NULL-CONSTANT'),(35,54,'com.palmdream.sudoku'),(36,57,'(.*)'),(37,58,'(.*)'),(38,63,'com.cjm.gogoNote'),(39,64,'com.palmdream.sudoku'),(40,65,'com.cjm.gogoNote'),(41,66,'NULL-CONSTANT'),(42,68,'com.palmdream.sudoku'),(43,69,'com.cjm.gogoNote'),(44,70,'com.palmdream.sudoku'),(45,75,'com.palmdream.sudoku'),(46,76,'com.palmdream.sudoku'),(47,77,'com.cjm.gogoNote'),(48,79,'com.cjm.gogoNote'),(49,81,'com.cjm.gogoNote'),(50,80,'com.palmdream.sudoku'),(51,82,'com.palmdream.sudoku'),(52,85,'com.palmdream.sudoku'),(53,87,'com.palmdream.sudoku'),(54,89,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,13,0),(9,15,0),(10,16,0),(11,18,0),(12,19,0),(13,18,0),(14,20,0),(15,21,0),(16,22,0),(17,25,0),(18,26,0),(19,27,0),(20,28,0),(21,29,0),(22,31,0),(23,40,0),(24,42,0),(25,43,0),(26,13,0),(27,44,0),(28,50,0),(29,55,0),(30,57,0),(31,58,0),(32,59,0),(33,60,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,7,0,0),(6,9,0,0),(7,11,0,0),(8,12,1,0),(9,12,1,0),(10,13,0,0),(11,14,0,0),(12,16,0,0),(13,17,0,0),(14,19,0,0),(15,20,0,0),(16,24,1,0),(17,33,0,0),(18,35,0,0),(19,38,0,0),(20,40,1,0),(21,40,1,0),(22,41,1,0),(23,42,0,0),(24,47,0,0),(25,48,1,0),(26,51,0,0),(27,52,1,0),(28,53,0,0),(29,55,1,0),(30,58,1,0),(31,59,0,0),(32,60,1,0),(33,61,1,0),(34,61,1,0),(35,62,0,0),(36,65,0,0),(37,67,0,0),(38,69,0,0),(39,70,0,0),(40,71,0,0),(41,72,0,0),(42,73,0,0),(43,75,0,0),(44,76,0,0),(45,77,1,0),(46,78,0,0),(47,80,0,0),(48,81,0,0),(49,83,1,0),(50,84,1,0),(51,85,1,0),(52,85,1,0),(53,85,1,0),(54,86,0,0),(55,87,1,0),(56,88,1,0),(57,88,1,0),(58,88,1,0),(59,89,1,0),(60,89,1,0),(61,89,1,0),(62,91,1,0),(63,92,0,0),(64,93,0,0),(65,95,0,0),(66,96,0,0),(67,97,1,0),(68,98,0,0),(69,99,0,0),(70,101,0,0),(71,102,1,0),(72,102,1,0),(73,103,1,0),(74,102,1,0),(75,104,0,0),(76,105,0,0),(77,106,0,0),(78,107,1,0),(79,109,0,0),(80,110,0,0),(81,111,0,0),(82,110,0,0),(83,112,1,0),(84,114,1,0),(85,115,0,0),(86,116,1,0),(87,117,0,0),(88,118,1,0),(89,119,0,0),(90,120,1,0),(91,122,1,0),(92,122,1,0),(93,125,1,0),(94,125,1,0),(95,125,1,0),(96,125,1,0),(97,125,1,0),(98,125,1,0),(99,125,1,0),(100,125,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(23,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(22,'android.permission.GET_TASKS'),(14,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(11,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(25,'android.permission.RECORD_AUDIO'),(18,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(20,'android.permission.VIBRATE'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,30,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(12,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(15,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(17,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(18,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(19,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(20,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(21,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(22,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'market://search?q=pub:\"Magma Mobile\"',NULL,NULL,NULL),(25,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(27,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(28,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(29,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(30,NULL,NULL,'market://search?q=pub:\"Magma Mobile\"',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(32,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(46,NULL,NULL,'sms:(.*)',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(48,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(49,NULL,NULL,'',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,5,2),(3,8,3),(4,10,4),(5,15,5),(6,18,6),(7,22,7),(8,23,8),(9,25,10),(10,27,11),(11,29,12),(12,30,13),(13,34,14),(14,36,15),(15,37,16),(16,39,17),(17,44,18),(18,46,19),(19,49,20),(20,50,21),(21,54,23),(22,64,26),(23,66,27),(24,68,28),(25,74,29),(26,79,31),(27,82,32),(28,90,36),(29,94,39),(30,100,40),(31,108,45),(32,113,47),(33,121,50),(34,123,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,10),(28,3,1),(29,2,11),(30,3,2),(31,2,12),(32,3,3),(33,2,13),(34,3,4),(35,2,14),(36,3,5),(37,2,15),(38,3,6),(39,2,17),(40,3,7),(41,2,16),(42,3,8),(43,2,18),(44,3,9),(45,3,10),(46,3,11),(47,3,12),(48,3,13),(49,3,14),(50,3,15),(51,3,17),(52,4,1),(53,3,16),(54,4,2),(55,4,4),(56,4,5),(57,4,7),(58,4,8),(59,4,9),(60,4,10),(61,4,11),(62,4,14),(63,4,15),(64,4,17),(65,4,16),(66,4,19),(67,5,1),(68,5,2),(69,5,3),(70,5,4),(71,5,5),(72,5,6),(73,5,7),(74,5,8),(75,5,9),(76,5,10),(77,5,11),(78,5,12),(79,5,13),(80,5,14),(81,5,15),(82,5,17),(83,5,16),(84,5,21),(85,5,20),(86,6,16),(87,6,21),(88,6,5),(89,6,23),(90,6,6),(91,6,22),(92,6,11),(93,6,14),(94,7,1),(95,7,2),(96,7,3),(97,7,4),(98,7,5),(99,7,6),(100,7,7),(101,7,8),(102,7,9),(103,7,10),(104,7,11),(105,7,12),(106,7,13),(107,7,14),(108,7,15),(109,7,17),(110,7,16),(111,7,21),(112,7,20),(113,7,23),(114,7,25),(115,7,24);
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

-- Dump completed on 2015-10-09  0:39:28
