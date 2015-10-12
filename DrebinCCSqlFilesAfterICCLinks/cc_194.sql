-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_194
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CONFIGURATION_CHANGED'),(19,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(25,'android.intent.action.MEDIA_MOUNTED'),(24,'android.intent.action.MEDIA_REMOVED'),(23,'android.intent.action.MEDIA_UNMOUNTED'),(16,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.SCREEN_OFF'),(22,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.VIEW'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.igamepower.appmaster.GameBootReceiver'),(17,'com.igamepower.appmaster.Myhall'),(18,'com.igamepower.appmaster.Web'),(3,'com.rechild.advancedtaskkiller.intent.action.IgnoreList'),(2,'com.rechild.intent.action.ADVANCED_TASK_KILLER_FREE'),(9,'itfunz.app.left_down'),(10,'itfunz.app.left_up'),(13,'itfunz.app.right_down'),(11,'itfunz.app.right_up'),(12,'itfunz.screen.refresh');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'eu.chainfire.gingerbreak',3),(2,'com.droiddream.advancedtaskkiller1',65),(3,'com.igamepower.appmaster',1003),(4,'com.fall.down',1),(5,'com.itfunz.itfunzsupertools',1015);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eu.chainfire.gingerbreak.MainActivity'),(2,2,'com.rechild.advancedtaskkiller.AdvancedTaskKiller'),(3,2,'com.android.root.main'),(4,2,'com.rechild.advancedtaskkiller.NewSettings'),(5,2,'com.rechild.advancedtaskkiller.IgnoreListActivity'),(6,2,'com.android.root.Setting'),(7,2,'com.android.root.AlarmReceiver'),(8,2,'com.rechild.advancedtaskkiller.BackService'),(9,2,'com.rechild.advancedtaskkiller.AutoStartReceiver'),(10,2,'com.rechild.advancedtaskkiller.OneClickAppWidgetProvider'),(11,2,'com.rechild.advancedtaskkiller.AlarmReceiver'),(12,4,'com.teamsoft.falldown.Falldown'),(13,4,'com.teamsoft.falldown.HelpDialog'),(14,3,'com.igamepower.appmaster.Myhall'),(15,3,'com.igamepower.appmaster.Myhall'),(16,3,'com.igamepower.appmaster.Web'),(17,4,'com.teamsoft.falldown.OptionsDialog'),(18,3,'com.igamepower.appmaster.HomeActivity'),(19,3,'com.igamepower.appmaster.SortActivity1'),(20,3,'com.igamepower.appmaster.SortActivity1'),(21,3,'com.igamepower.appmaster.SortActivity2'),(22,4,'com.teamsoft.falldown.FullInfoDialog'),(23,3,'com.igamepower.appmaster.SearchActivity'),(24,3,'com.igamepower.appmaster.SearchActivity'),(25,4,'com.android.root.main'),(26,3,'com.igamepower.appmaster.ManagerActivity'),(27,3,'com.igamepower.appmaster.GameInfo'),(28,3,'com.igamepower.appmaster.GameInfo'),(29,4,'com.android.root.Setting'),(30,3,'com.igamepower.appmaster.TableClass'),(31,4,'com.android.root.AlarmReceiver'),(32,3,'com.igamepower.appmaster.GameAlertDialog'),(33,3,'com.igamepower.appmaster.GameAlertDialog'),(34,3,'com.igamepower.appmaster.TestView'),(35,3,'com.igamepower.appmaster.DevelopmentSettings'),(36,3,'com.igamepower.appmaster.DevelopmentSettings'),(37,3,'com.igamepower.appmaster.GameService'),(38,5,'com.itfunz.itfunzsupertools.MainActivity'),(39,3,'com.igamepower.appmaster.GameBootReceiver'),(40,5,'com.itfunz.itfunzsupertools.Tools'),(41,5,'com.itfunz.itfunzsupertools.AutoPowerDown'),(42,5,'com.itfunz.itfunzsupertools.AutoPowerDownExec'),(43,5,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(44,5,'com.itfunz.itfunzsupertools.ThemeManager'),(45,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog'),(46,5,'com.itfunz.itfunzsupertools.ItfunzTextReader'),(47,5,'com.itfunz.itfunzsupertools.DiskSpace'),(48,5,'com.itfunz.itfunzsupertools.ItfunzPowerManager'),(49,5,'com.itfunz.itfunzsupertools.OneKeyLockScreen'),(50,5,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(51,5,'com.itfunz.itfunzsupertools.ItfunzFileDialogConfig'),(52,5,'com.itfunz.itfunzsupertools.OtherFunction'),(53,5,'com.itfunz.itfunzsupertools.ScreenCheckLayout'),(54,5,'com.itfunz.itfunzsupertools.SimplifyProgram'),(55,5,'com.itfunz.itfunzsupertools.DataMvApp'),(56,5,'com.itfunz.itfunzsupertools.CpuControl'),(57,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings'),(58,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(59,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService'),(60,5,'com.itfunz.itfunzsupertools.CallledService'),(61,5,'com.itfunz.itfunzsupertools.HoldScreenLightService'),(62,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetService'),(63,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceMid'),(64,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceBig'),(65,5,'com.itfunz.itfunzsupertools.CallReceiver'),(66,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast'),(67,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget'),(68,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid'),(69,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig'),(70,4,'com.teamsoft.falldown.FullInfoDialog$6'),(71,2,'com.rechild.advancedtaskkiller.CommonLibrary'),(72,4,'com.teamsoft.falldown.FullInfoDialog$7'),(73,2,'com.rechild.advancedtaskkiller.ScreenOffReceiver'),(74,2,'com.rechild.advancedtaskkiller.AdvancedTaskKiller$2'),(75,3,'com.igamepower.appmaster.z'),(76,3,'bc'),(77,3,'com.igamepower.appmaster.bi'),(78,3,'ag'),(79,3,'com.igamepower.appmaster.bs'),(80,3,'com.igamepower.appmaster.bh'),(81,3,'com.igamepower.appmaster.cj'),(82,3,'bv'),(83,3,'bw'),(84,3,'com.igamepower.appmaster.ao'),(85,3,'com.igamepower.appmaster.bj'),(86,3,'at'),(87,3,'com.igamepower.appmaster.bn'),(88,3,'p'),(89,3,'ad'),(90,3,'com.igamepower.appmaster.ah'),(91,3,'bd'),(92,3,'cr'),(93,5,'com.itfunz.itfunzsupertools.OtherFunction$1'),(94,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6'),(95,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2'),(96,5,'com.itfunz.itfunzsupertools.Tools$20'),(97,5,'com.itfunz.itfunzsupertools.Tools$29'),(98,5,'com.itfunz.itfunzsupertools.Tools$26'),(99,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$28'),(100,5,'com.itfunz.itfunzsupertools.Tools$27'),(101,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$27'),(102,5,'com.itfunz.itfunzsupertools.HoldScreenLightService$1'),(103,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7'),(104,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$13'),(105,5,'com.itfunz.itfunzsupertools.Tools$14'),(106,5,'com.itfunz.itfunzsupertools.Tools$33'),(107,5,'com.itfunz.itfunzsupertools.Tools$32'),(108,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService$3'),(109,5,'com.itfunz.itfunzsupertools.Tools$30$1'),(110,5,'com.itfunz.itfunzsupertools.OtherFunction$3'),(111,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$8'),(112,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$14'),(113,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$12'),(114,5,'com.itfunz.itfunzsupertools.Tools$32$1'),(115,5,'com.itfunz.itfunzsupertools.Tools$21'),(116,5,'com.itfunz.itfunzsupertools.Tools$28'),(117,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$7'),(118,5,'com.itfunz.itfunzsupertools.Tools$41'),(119,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService$5'),(120,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService$4'),(121,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$25'),(122,5,'com.itfunz.itfunzsupertools.Tools$22'),(123,5,'com.itfunz.itfunzsupertools.Tools$17'),(124,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$4'),(125,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$26'),(126,5,'com.itfunz.itfunzsupertools.Tools$23');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,27,'icon'),(2,27,'package_name'),(3,33,'title'),(4,28,'filepath'),(5,27,'filepath'),(6,24,'package_name'),(7,27,'soft_id'),(8,27,'total'),(9,22,'nextclassid'),(10,33,'content'),(11,27,'completed'),(12,22,'package_name'),(13,34,'title'),(14,27,'status'),(15,29,'title'),(16,27,'app_name'),(17,33,'btn_txt'),(18,29,'status'),(19,14,'nextclassid'),(20,34,'url'),(21,29,'from_table'),(22,24,'status'),(23,27,'url'),(24,25,'version_code'),(25,22,'status'),(26,29,'filepath'),(27,28,'from_table'),(28,25,'package_name'),(29,28,'title'),(30,33,'url'),(31,34,'content'),(32,28,'status'),(33,15,'nextclassid'),(34,22,'version_code'),(35,34,'btn_txt'),(36,25,'status'),(37,24,'version_code'),(38,66,'state');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,16,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,21,'a',1,NULL,NULL),(23,22,'a',1,NULL,NULL),(24,23,'a',1,NULL,NULL),(25,24,'a',1,NULL,NULL),(26,25,'a',1,NULL,NULL),(27,26,'a',1,NULL,NULL),(28,27,'a',1,NULL,NULL),(29,28,'a',1,NULL,NULL),(30,29,'s',0,NULL,NULL),(31,30,'a',1,NULL,NULL),(32,31,'s',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,34,'a',1,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,36,'a',1,NULL,NULL),(38,37,'s',1,NULL,NULL),(39,38,'a',1,NULL,NULL),(40,39,'r',1,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,42,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,44,'a',0,NULL,NULL),(46,45,'a',1,NULL,NULL),(47,46,'a',1,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,48,'a',1,NULL,NULL),(50,49,'a',1,NULL,NULL),(51,50,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,54,'a',0,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,57,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,59,'s',0,NULL,NULL),(61,60,'s',0,NULL,NULL),(62,61,'s',0,NULL,NULL),(63,62,'s',0,NULL,NULL),(64,63,'s',0,NULL,NULL),(65,64,'s',0,NULL,NULL),(66,65,'r',1,NULL,NULL),(67,66,'r',1,NULL,NULL),(68,67,'r',1,NULL,NULL),(69,68,'r',1,NULL,NULL),(70,69,'r',1,NULL,NULL),(71,73,'r',1,NULL,NULL),(72,102,'r',1,NULL,NULL),(73,108,'r',1,NULL,NULL),(74,119,'r',1,NULL,NULL),(75,120,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,26),(2,2,26),(3,3,2),(4,4,23),(5,5,2),(6,5,9),(7,5,4),(8,6,23),(9,7,3),(10,8,3),(11,9,2),(12,10,2),(13,11,2),(14,12,9),(15,13,19),(16,14,33),(17,15,40),(18,16,31),(19,17,14),(20,18,28),(21,19,19),(22,20,35),(23,21,35),(24,22,15),(25,23,22),(26,24,16),(27,25,24),(28,26,22),(29,27,33),(30,28,22),(31,29,40),(32,30,28),(33,31,19),(34,32,14),(35,33,19),(36,34,40),(37,35,19),(38,36,19),(39,38,34),(40,37,24),(41,39,33),(42,40,15),(43,41,22),(44,42,19),(45,43,40),(46,44,14),(47,45,38),(48,46,22),(49,47,22),(50,48,22),(51,49,28),(52,50,28),(53,51,15),(54,52,34),(55,53,40),(56,54,33),(57,55,19),(58,56,34),(59,58,33),(60,57,27),(61,59,18),(62,60,14),(63,61,27),(64,62,27),(65,63,28),(66,64,19),(67,65,29),(68,66,14),(69,67,16),(70,68,22),(71,69,24),(72,70,15),(73,71,16),(74,72,16),(75,73,16),(76,74,15),(77,75,22),(78,76,33),(79,77,29),(80,78,22),(81,80,19),(82,79,31),(83,81,27),(84,82,28),(85,83,38),(86,84,28),(87,85,31),(88,86,14),(89,87,28),(90,88,38),(91,89,27),(92,90,24),(93,91,28),(94,92,18),(95,93,31),(96,94,31),(97,95,22),(98,96,25),(99,97,40),(100,98,34),(101,99,14),(102,100,35),(103,101,19),(104,102,19),(105,103,14),(106,104,29),(107,105,14),(108,106,28),(109,107,15),(110,108,22),(111,109,33),(112,111,14),(113,110,29),(114,112,27),(115,113,14),(116,114,40),(117,115,19),(118,116,14),(119,117,19),(120,118,19),(121,120,22),(122,119,33),(123,121,14),(124,122,27),(125,123,31),(126,124,22),(127,125,14),(128,127,16),(129,126,15),(130,128,40),(131,129,27),(132,130,22),(133,131,25),(134,132,19),(135,133,19),(136,134,40),(137,135,22),(138,136,19),(139,137,22),(140,138,29),(141,139,27),(142,140,18),(143,141,22),(144,142,53),(145,143,69),(146,144,58),(147,145,46),(148,146,58),(149,147,69),(150,148,68),(151,149,41),(152,150,70),(153,151,68),(154,152,41),(155,153,41),(156,154,60),(157,155,60),(158,156,68),(159,157,46),(160,158,41),(161,159,46),(162,160,58),(163,161,46),(164,162,70),(165,163,46),(166,164,68),(167,165,41),(168,166,41),(169,167,69),(170,168,41),(171,169,68),(172,170,69),(173,171,69),(174,172,45),(175,173,69),(176,174,41),(177,175,69),(178,176,53),(179,177,42),(180,178,70),(181,179,58),(182,180,70),(183,181,70),(184,182,46),(185,183,46),(186,184,46),(187,185,68),(188,186,69),(189,187,41),(190,188,68),(191,189,41),(192,190,70),(193,191,69),(194,192,69),(195,193,68),(196,194,70),(197,195,70),(198,196,41),(199,197,70),(200,198,68),(201,199,70),(202,200,69),(203,201,68),(204,202,46),(205,203,68),(206,204,70),(207,205,70),(208,206,68),(209,207,69),(210,208,67),(211,209,46),(212,210,58),(213,211,41),(214,212,70),(215,213,70),(216,214,68),(217,215,68),(218,216,46),(219,217,69),(220,218,69),(221,219,41),(222,220,69),(223,221,46),(224,222,61),(225,223,68),(226,224,46),(227,225,70),(228,226,41),(229,227,41),(230,228,46),(231,229,46),(232,230,69),(233,231,69),(234,232,70),(235,233,68),(236,234,41),(237,235,68),(238,236,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(2,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(3,2,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void switchTo(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(4,70,'<com.teamsoft.falldown.FullInfoDialog$6: void onClick(android.view.View)>',6,'a',NULL),(5,71,'<com.rechild.advancedtaskkiller.CommonLibrary: void ScheduleAutoKill(android.content.Context,boolean,long)>',16,'s',NULL),(6,72,'<com.teamsoft.falldown.FullInfoDialog$7: void onClick(android.view.View)>',6,'a',NULL),(7,3,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(8,3,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(9,2,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void showRunningServices()>',4,'a',NULL),(10,2,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void detail(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(11,74,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller$2: void onClick(android.content.DialogInterface,int)>',19,'a',0),(12,9,'<com.rechild.advancedtaskkiller.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(13,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(14,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',36,'a',NULL),(15,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(16,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(17,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(18,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',92,'a',NULL),(19,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(20,34,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(21,34,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(22,76,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(23,77,'<com.igamepower.appmaster.bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(24,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',41,'s',NULL),(25,23,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(26,21,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(27,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(28,21,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(29,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(30,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',92,'a',NULL),(31,78,'<ag: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(32,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(33,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(34,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(35,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(36,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(37,23,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(38,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',27,'a',NULL),(39,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',45,'a',NULL),(40,76,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(41,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(42,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(43,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(44,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(45,81,'<com.igamepower.appmaster.cj: void run()>',55,'a',NULL),(46,82,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(47,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(48,83,'<bw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(49,84,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',221,'a',NULL),(50,27,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(51,76,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(52,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',54,'a',NULL),(53,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(54,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(55,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(56,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',45,'a',NULL),(57,85,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(58,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',27,'a',NULL),(59,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',13,'s',NULL),(60,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(61,26,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(62,86,'<at: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(63,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(64,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',59,'a',NULL),(65,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(66,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(67,87,'<com.igamepower.appmaster.bn: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(68,21,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(69,23,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(70,76,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(71,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',41,'s',NULL),(72,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',37,'s',NULL),(73,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',37,'s',NULL),(74,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',53,'s',NULL),(75,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(76,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',54,'a',NULL),(77,88,'<p: void onClick(android.view.View)>',205,'a',NULL),(78,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(79,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(80,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(81,26,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(82,84,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',240,'a',NULL),(83,89,'<ad: void run()>',55,'a',NULL),(84,84,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',221,'a',NULL),(85,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(86,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(87,27,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(88,81,'<com.igamepower.appmaster.cj: void run()>',55,'a',NULL),(89,86,'<at: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(90,23,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(91,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(92,16,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',17,'s',NULL),(93,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(94,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(95,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(96,23,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(97,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',53,'s',NULL),(98,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',36,'a',NULL),(99,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(100,34,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',28,'s',NULL),(101,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(102,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(103,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(104,27,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',85,'a',NULL),(105,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(106,84,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',240,'a',NULL),(107,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',58,'s',NULL),(108,21,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(109,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(110,88,'<p: void onClick(android.view.View)>',224,'a',NULL),(111,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(112,26,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(113,75,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(114,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(115,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(116,90,'<com.igamepower.appmaster.ah: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(117,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(118,79,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(119,32,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(120,80,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(121,90,'<com.igamepower.appmaster.ah: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(122,85,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(123,30,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(124,21,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(125,14,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(126,91,'<bd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(127,87,'<com.igamepower.appmaster.bn: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(128,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(129,85,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(130,82,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(131,23,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(132,78,'<ag: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(133,18,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',59,'a',NULL),(134,39,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(135,21,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(136,78,'<ag: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(137,77,'<com.igamepower.appmaster.bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(138,27,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(139,85,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(140,92,'<cr: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(141,82,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(142,93,'<com.itfunz.itfunzsupertools.OtherFunction$1: void onClick(android.view.View)>',6,'a',NULL),(143,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',515,'a',NULL),(144,94,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(145,45,'<com.itfunz.itfunzsupertools.ItfunzFileDialog: boolean onOptionsItemSelected(android.view.MenuItem)>',48,'a',NULL),(146,95,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(147,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',686,'a',NULL),(148,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',123,'a',NULL),(149,96,'<com.itfunz.itfunzsupertools.Tools$20: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',16,'s',NULL),(150,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',519,'a',NULL),(151,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',312,'a',NULL),(152,97,'<com.itfunz.itfunzsupertools.Tools$29: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(153,98,'<com.itfunz.itfunzsupertools.Tools$26: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(154,59,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',101,'s',NULL),(155,59,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',119,'s',NULL),(156,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',591,'a',NULL),(157,99,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$28: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(158,100,'<com.itfunz.itfunzsupertools.Tools$27: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(159,101,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$27: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(160,103,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(161,104,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(162,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',577,'a',NULL),(163,104,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',45,'a',NULL),(164,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',364,'a',NULL),(165,105,'<com.itfunz.itfunzsupertools.Tools$14: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(166,106,'<com.itfunz.itfunzsupertools.Tools$33: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(167,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',373,'a',NULL),(168,107,'<com.itfunz.itfunzsupertools.Tools$32: boolean onPreferenceClick(android.preference.Preference)>',21,'a',NULL),(169,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',390,'a',NULL),(170,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',292,'a',NULL),(171,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(172,44,'<com.itfunz.itfunzsupertools.ThemeManager: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(173,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',260,'a',NULL),(174,109,'<com.itfunz.itfunzsupertools.Tools$30$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(175,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(176,110,'<com.itfunz.itfunzsupertools.OtherFunction$3: void onClick(android.view.View)>',12,'p',NULL),(177,41,'<com.itfunz.itfunzsupertools.AutoPowerDown: void RestartService()>',4,'s',0),(178,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',402,'a',NULL),(179,111,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$8: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',85,'r',NULL),(180,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',693,'a',NULL),(181,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',262,'a',NULL),(182,112,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$14: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(183,113,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(184,104,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(185,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',641,'a',NULL),(186,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',319,'a',NULL),(187,114,'<com.itfunz.itfunzsupertools.Tools$32$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(188,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',491,'a',NULL),(189,115,'<com.itfunz.itfunzsupertools.Tools$21: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(190,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',217,'a',NULL),(191,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',629,'a',NULL),(192,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',400,'a',NULL),(193,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',79,'a',NULL),(194,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',348,'a',NULL),(195,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',321,'a',NULL),(196,116,'<com.itfunz.itfunzsupertools.Tools$28: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(197,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(198,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',541,'a',NULL),(199,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',461,'a',NULL),(200,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',215,'a',NULL),(201,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',211,'a',NULL),(202,104,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(203,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',255,'a',NULL),(204,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',635,'a',NULL),(205,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',82,'a',NULL),(206,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',441,'a',NULL),(207,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',80,'a',NULL),(208,66,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(209,117,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',199,'a',NULL),(210,111,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$8: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',340,'r',NULL),(211,118,'<com.itfunz.itfunzsupertools.Tools$41: void onClick(android.content.DialogInterface,int)>',26,'s',NULL),(212,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',127,'a',NULL),(213,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(214,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',338,'a',NULL),(215,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',286,'a',NULL),(216,113,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(217,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',170,'a',NULL),(218,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',572,'a',NULL),(219,40,'<com.itfunz.itfunzsupertools.Tools: void onCreate(android.os.Bundle)>',6,'s',NULL),(220,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',125,'a',NULL),(221,104,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(222,60,'<com.itfunz.itfunzsupertools.CallledService: void onCreate()>',10,'p',NULL),(223,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',167,'a',NULL),(224,121,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$25: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',156,'a',NULL),(225,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',375,'a',NULL),(226,122,'<com.itfunz.itfunzsupertools.Tools$22: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(227,123,'<com.itfunz.itfunzsupertools.Tools$17: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(228,124,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$4: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(229,125,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$26: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(230,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',346,'a',NULL),(231,68,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',458,'a',NULL),(232,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',172,'a',NULL),(233,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(234,126,'<com.itfunz.itfunzsupertools.Tools$23: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(235,67,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(236,69,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',294,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,6,1),(4,10,7),(5,11,7),(6,14,7),(7,15,1),(8,16,15),(9,17,1),(10,20,7),(11,30,15),(12,34,17),(13,35,15),(14,40,6),(15,45,17),(16,50,7),(17,52,7),(18,56,7),(19,57,7),(20,58,6),(21,59,7),(22,61,1),(23,62,1),(24,63,18),(25,66,19),(26,68,7),(27,71,7),(28,76,18),(29,77,18),(30,78,17),(31,79,7),(32,81,7),(33,83,7),(34,85,1),(35,87,1),(36,88,1),(37,90,7),(38,91,1),(39,92,7),(40,93,1),(41,94,1),(42,95,1),(43,97,1),(44,100,1),(45,102,1),(46,109,15),(47,111,7),(48,118,1),(49,120,1),(50,122,6),(51,123,1),(52,125,1),(53,126,1),(54,127,1),(55,130,1),(56,131,15),(57,132,1),(58,133,7),(59,135,7),(60,138,7),(61,139,7),(62,141,19),(63,144,7),(64,145,7),(65,147,7),(66,148,1),(67,150,1),(68,152,7),(69,153,15),(70,155,7),(71,158,19),(72,159,7),(73,162,1),(74,163,1),(75,166,1),(76,167,1),(77,169,1),(78,170,1),(79,175,1),(80,176,1),(81,177,1),(82,178,7),(83,179,1),(84,180,7),(85,181,1),(86,184,1),(87,186,1),(88,187,1),(89,190,1),(90,193,1),(91,194,12),(92,195,1),(93,196,1),(94,197,7),(95,199,7),(96,200,1),(97,201,1),(98,203,1),(99,204,1),(100,205,1),(101,206,1),(102,207,1),(103,208,1),(104,209,1),(105,210,1),(106,213,1),(107,214,1),(108,215,1),(109,216,1),(110,217,7),(111,218,1),(112,219,1),(113,220,1),(114,221,1),(115,222,1),(116,224,7),(117,225,12),(118,227,1),(119,229,1),(120,230,1),(121,231,7),(122,232,1),(123,233,1),(124,235,1),(125,236,7),(126,237,1),(127,238,7),(128,239,1),(129,243,1),(130,244,1),(131,245,1),(132,249,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,17,4),(3,61,1),(4,62,4),(5,85,1),(6,87,4),(7,88,1),(8,91,4),(9,93,1),(10,94,4),(11,95,1),(12,97,4),(13,100,1),(14,102,4),(15,118,1),(16,120,4),(17,123,1),(18,125,1),(19,126,4),(20,127,4),(21,130,1),(22,132,4),(23,148,1),(24,150,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/root/Setting'),(2,2,'(.*)'),(3,3,'(.*)'),(4,4,'com.teamsoft.falldown.HelpDialog'),(5,5,'com/rechild/advancedtaskkiller/BackService'),(6,6,'com.teamsoft.falldown.OptionsDialog'),(7,7,'(.*)'),(8,8,'com/android/root/Setting'),(9,9,'com.android.settings.RunningServices'),(10,10,'(.*)'),(11,11,'com.android.settings.InstalledAppDetails'),(12,12,'com/rechild/advancedtaskkiller/AdvancedTaskKiller'),(13,13,'com/igamepower/appmaster/GameInfo'),(14,16,'com/igamepower/appmaster/GameService'),(15,18,'com/igamepower/appmaster/Myhall'),(16,19,'com/igamepower/appmaster/Myhall'),(17,21,'com/igamepower/appmaster/GameService'),(18,22,'com/igamepower/appmaster/GameService'),(19,23,'com/igamepower/appmaster/Myhall'),(20,25,'com/igamepower/appmaster/GameService'),(21,26,'com/igamepower/appmaster/GameService'),(22,24,'com/igamepower/appmaster/Myhall'),(23,27,'com/igamepower/appmaster/GameInfo'),(24,29,'com/igamepower/appmaster/GameService'),(25,28,'com/igamepower/appmaster/GameInfo'),(26,31,'com/igamepower/appmaster/Myhall'),(27,30,'com/igamepower/appmaster/GameService'),(28,32,'com/igamepower/appmaster/Myhall'),(29,33,'com/igamepower/appmaster/GameInfo'),(30,34,'com/igamepower/appmaster/GameService'),(31,35,'com/igamepower/appmaster/GameService'),(32,36,'com/igamepower/appmaster/Myhall'),(33,37,'com/igamepower/appmaster/Myhall'),(34,39,'com/igamepower/appmaster/GameInfo'),(35,38,'com/igamepower/appmaster/GameInfo'),(36,41,'com/igamepower/appmaster/Myhall'),(37,43,'com/igamepower/appmaster/GameInfo'),(38,42,'com/igamepower/appmaster/GameInfo'),(39,44,'com/igamepower/appmaster/GameService'),(40,45,'com/igamepower/appmaster/GameService'),(41,47,'com/igamepower/appmaster/GameInfo'),(42,46,'com/igamepower/appmaster/GameAlertDialog'),(43,48,'com/igamepower/appmaster/GameInfo'),(44,51,'com/igamepower/appmaster/Myhall'),(45,49,'com/igamepower/appmaster/Myhall'),(46,53,'com/igamepower/appmaster/Myhall'),(47,54,'com/igamepower/appmaster/GameAlertDialog'),(48,55,'com/igamepower/appmaster/GameService'),(49,60,'com/igamepower/appmaster/GameInfo'),(50,63,'com/igamepower/appmaster/GameService'),(51,65,'com/igamepower/appmaster/GameService'),(52,64,'com/igamepower/appmaster/Myhall'),(53,67,'com/igamepower/appmaster/GameService'),(54,69,'com/igamepower/appmaster/GameService'),(55,70,'com/igamepower/appmaster/GameService'),(56,72,'com/igamepower/appmaster/GameInfo'),(57,73,'com/igamepower/appmaster/GameInfo'),(58,75,'com/igamepower/appmaster/GameService'),(59,74,'com/igamepower/appmaster/Myhall'),(60,76,'com/igamepower/appmaster/GameService'),(61,77,'com/igamepower/appmaster/GameService'),(62,78,'com/igamepower/appmaster/GameService'),(63,82,'com/igamepower/appmaster/Myhall'),(64,80,'com/igamepower/appmaster/GameAlertDialog'),(65,84,'com/igamepower/appmaster/Myhall'),(66,86,'com/igamepower/appmaster/GameService'),(67,89,'com/igamepower/appmaster/GameAlertDialog'),(68,96,'com/igamepower/appmaster/Myhall'),(69,98,'com/igamepower/appmaster/Myhall'),(70,101,'com/igamepower/appmaster/GameService'),(71,99,'com/igamepower/appmaster/GameAlertDialog'),(72,103,'com/igamepower/appmaster/GameService'),(73,104,'com/igamepower/appmaster/GameService'),(74,105,'com/igamepower/appmaster/GameInfo'),(75,106,'com/igamepower/appmaster/GameInfo'),(76,107,'com/igamepower/appmaster/Myhall'),(77,108,'com/igamepower/appmaster/GameInfo'),(78,109,'com/igamepower/appmaster/GameService'),(79,112,'com/igamepower/appmaster/GameService'),(80,110,'com/igamepower/appmaster/Myhall'),(81,113,'com/igamepower/appmaster/GameInfo'),(82,114,'com/igamepower/appmaster/GameInfo'),(83,115,'com/igamepower/appmaster/Myhall'),(84,116,'com/igamepower/appmaster/Myhall'),(85,117,'com/igamepower/appmaster/Myhall'),(86,119,'com/igamepower/appmaster/GameService'),(87,121,'com/igamepower/appmaster/GameInfo'),(88,124,'com/igamepower/appmaster/Myhall'),(89,128,'com/igamepower/appmaster/GameService'),(90,129,'com/igamepower/appmaster/Myhall'),(91,131,'com/igamepower/appmaster/GameService'),(92,134,'com/igamepower/appmaster/Myhall'),(93,136,'com/igamepower/appmaster/Myhall'),(94,137,'com/igamepower/appmaster/GameAlertDialog'),(95,140,'com/igamepower/appmaster/GameInfo'),(96,142,'com/igamepower/appmaster/GameService'),(97,143,'com/igamepower/appmaster/GameService'),(98,146,'com/igamepower/appmaster/GameService'),(99,149,'com/igamepower/appmaster/GameService'),(100,151,'com/igamepower/appmaster/GameInfo'),(101,154,'com/igamepower/appmaster/GameService'),(102,153,'com/igamepower/appmaster/GameService'),(103,156,'com/igamepower/appmaster/Myhall'),(104,157,'com/igamepower/appmaster/Myhall'),(105,160,'com/igamepower/appmaster/Myhall'),(106,161,'com/itfunz/itfunzsupertools/ScreenCheckLayout'),(107,162,'(.*)'),(108,163,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(109,164,'com/itfunz/itfunzsupertools/ItfunzFileDialogConfig'),(110,165,'com/itfunz/itfunzsupertools/Tools'),(111,166,'(.*)'),(112,167,'(.*)'),(113,168,'com/itfunz/itfunzsupertools/CallledService'),(114,169,'(.*)'),(115,170,'(.*)'),(116,171,'com/itfunz/itfunzsupertools/SimplifyProgram'),(117,172,'com/itfunz/itfunzsupertools/OneKeyLockScreen'),(118,173,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(119,174,'com/itfunz/itfunzsupertools/CallledService'),(120,175,'(.*)'),(121,176,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(122,177,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(123,179,'(.*)'),(124,181,'(.*)'),(125,182,'com/itfunz/itfunzsupertools/ItfunzPowerManager'),(126,183,'com/itfunz/itfunzsupertools/ItfunzSuperToolsSettings'),(127,184,'(.*)'),(128,185,'com/itfunz/itfunzsupertools/CpuControl'),(129,186,'(.*)'),(130,187,'(.*)'),(131,188,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceMid'),(132,189,'com/itfunz/itfunzsupertools/ItfunzFileDialog'),(133,190,'(.*)'),(134,191,'com/itfunz/itfunzsupertools/DataMvApp'),(135,192,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceMid'),(136,193,'(.*)'),(137,195,'(.*)'),(138,196,'(.*)'),(139,198,'com/itfunz/itfunzsupertools/DiskSpace'),(140,200,'(.*)'),(141,201,'(.*)'),(142,202,'com/itfunz/itfunzsupertools/CpuControl'),(143,203,'(.*)'),(144,204,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(145,205,'(.*)'),(146,206,'(.*)'),(147,207,'(.*)'),(148,208,'(.*)'),(149,209,'(.*)'),(150,210,'(.*)'),(151,211,'com/itfunz/itfunzsupertools/OtherFunction'),(152,212,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceBig'),(153,213,'(.*)'),(154,214,'(.*)'),(155,215,'(.*)'),(156,216,'(.*)'),(157,218,'(.*)'),(158,219,'(.*)'),(159,220,'(.*)'),(160,221,'(.*)'),(161,222,'(.*)'),(162,223,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService'),(163,226,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(164,227,'(.*)'),(165,228,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceBig'),(166,229,'(.*)'),(167,230,'(.*)'),(168,232,'(.*)'),(169,233,'(.*)'),(170,234,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService'),(171,235,'(.*)'),(172,237,'(.*)'),(173,239,'(.*)'),(174,240,'com/itfunz/itfunzsupertools/ThemeManager'),(175,241,'com/itfunz/itfunzsupertools/AutoPowerDown'),(176,242,'com/itfunz/itfunzsupertools/Tools'),(177,243,'(.*)'),(178,244,'(.*)'),(179,245,'(.*)'),(180,246,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetService'),(181,247,'com/itfunz/itfunzsupertools/ItfunzFileDialog'),(182,248,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetService'),(183,249,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,1),(2,20,2),(3,50,3),(4,52,4),(5,56,5),(6,57,6),(7,59,7),(8,66,8),(9,68,9),(10,71,10),(11,79,11),(12,81,12),(13,83,13),(14,90,14),(15,92,15),(16,111,16),(17,133,17),(18,135,18),(19,138,19),(20,139,20),(21,141,21),(22,144,22),(23,145,23),(24,147,24),(25,152,25),(26,155,26),(27,158,27),(28,159,28),(29,178,31),(30,180,32),(31,197,34),(32,199,35),(33,217,36),(34,224,37),(35,231,38),(36,236,39),(37,238,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'com.android.settings.ApplicationPkgName'),(2,11,'pkg'),(3,18,'clicked'),(4,23,'clicked'),(5,24,'title'),(6,24,'nextclassid'),(7,24,'clicked'),(8,27,'title'),(9,28,'id'),(10,28,'from_table'),(11,28,'detail_flag'),(12,32,'title'),(13,32,'nextclassid'),(14,32,'clicked'),(15,33,'title'),(16,36,'nextclassid'),(17,37,'title'),(18,36,'clicked'),(19,37,'nextclassid'),(20,37,'clicked'),(21,38,'id'),(22,38,'from_table'),(23,38,'detail_flag'),(24,41,'clicked'),(25,42,'title'),(26,46,'title'),(27,46,'btn_txt'),(28,46,'need_adb_flag'),(29,47,'title'),(30,46,'cont'),(31,46,'close_flag'),(32,48,'title'),(33,49,'title'),(34,49,'nextclassid'),(35,49,'clicked'),(36,53,'clicked'),(37,54,'title'),(38,54,'btn_txt'),(39,54,'need_adb_flag'),(40,54,'cont'),(41,54,'close_flag'),(42,60,'id'),(43,60,'from_table'),(44,60,'detail_flag'),(45,64,'clicked'),(46,72,'title'),(47,74,'clicked'),(48,80,'title'),(49,80,'btn_txt'),(50,80,'need_adb_flag'),(51,82,'title'),(52,80,'cont'),(53,82,'nextclassid'),(54,80,'close_flag'),(55,82,'clicked'),(56,84,'nextclassid'),(57,84,'clicked'),(58,89,'title'),(59,89,'btn_txt'),(60,89,'need_adb_flag'),(61,89,'cont'),(62,89,'close_flag'),(63,96,'clicked'),(64,99,'title'),(65,99,'btn_txt'),(66,99,'need_adb_flag'),(67,99,'cont'),(68,99,'close_flag'),(69,107,'title'),(70,107,'nextclassid'),(71,107,'clicked'),(72,110,'clicked'),(73,114,'title'),(74,115,'clicked'),(75,117,'clicked'),(76,121,'title'),(77,124,'clicked'),(78,129,'clicked'),(79,134,'nextclassid'),(80,134,'clicked'),(81,136,'title'),(82,136,'nextclassid'),(83,136,'clicked'),(84,137,'title'),(85,137,'btn_txt'),(86,137,'need_adb_flag'),(87,137,'cont'),(88,137,'close_flag'),(89,151,'title'),(90,156,'title'),(91,156,'nextclassid'),(92,156,'clicked'),(93,160,'title'),(94,160,'nextclassid'),(95,160,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,5),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,20,1),(20,19,1),(21,22,1),(22,21,1),(23,23,1),(24,24,1),(25,25,1),(26,27,1),(27,26,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,6),(33,33,6),(34,34,6),(35,35,1),(36,36,1),(37,37,1),(38,40,4),(39,39,4),(40,38,1),(41,41,4),(42,42,1),(43,43,7),(44,44,1),(45,45,1),(46,46,8),(47,47,4),(48,48,9),(49,48,10),(50,48,13),(51,48,11),(52,48,12),(53,48,5),(54,49,9),(55,49,10),(56,49,11),(57,49,12),(58,49,13),(59,49,5),(60,50,13),(61,50,11),(62,50,12),(63,50,9),(64,50,10),(65,50,5),(66,51,14),(67,52,16),(68,53,16),(69,54,20),(70,55,20),(71,56,16),(72,57,20),(73,58,14),(74,59,21),(75,60,22),(76,61,25),(77,61,24),(78,61,23),(79,62,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,7,2),(6,8,1),(7,8,2),(8,9,1),(9,10,1),(10,11,2),(11,15,2),(12,22,1),(13,35,1),(14,36,1),(15,37,1),(16,38,2),(17,38,1),(18,42,1),(19,43,2),(20,44,1),(21,45,1),(22,47,3),(23,52,5),(24,53,5),(25,54,5),(26,55,5),(27,56,5),(28,57,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,43,NULL,NULL,NULL,NULL,'text','*'),(2,52,'package',NULL,NULL,NULL,NULL,NULL),(3,53,'package',NULL,NULL,NULL,NULL,NULL),(4,54,'package',NULL,NULL,NULL,NULL,NULL),(5,55,'package',NULL,NULL,NULL,NULL,NULL),(6,56,'package',NULL,NULL,NULL,NULL,NULL),(7,57,'package',NULL,NULL,NULL,NULL,NULL),(8,61,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,50,'application','vnd.android.package-archive'),(2,52,'application','vnd.android.package-archive'),(3,71,'application','vnd.android.package-archive'),(4,81,'application','vnd.android.package-archive'),(5,83,'application','vnd.android.package-archive'),(6,90,'application','vnd.android.package-archive'),(7,92,'application','vnd.android.package-archive'),(8,135,'application','vnd.android.package-archive'),(9,139,'application','vnd.android.package-archive'),(10,144,'application','vnd.android.package-archive'),(11,145,'application','vnd.android.package-archive'),(12,159,'application','vnd.android.package-archive'),(13,178,'image','*'),(14,180,'application','*'),(15,197,'text','plain'),(16,199,'text','*'),(17,217,'audio','*'),(18,224,'(.*)','(.*)'),(19,231,'application','vnd.android.package-archive'),(20,236,'video','*'),(21,238,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.fall.down'),(2,2,'com.fall.down'),(3,3,'(.*)'),(4,4,'com.fall.down'),(5,5,'com.droiddream.advancedtaskkiller1'),(6,6,'com.fall.down'),(7,7,'com.droiddream.advancedtaskkiller1'),(8,8,'com.droiddream.advancedtaskkiller1'),(9,9,'com.android.settings'),(10,10,'(.*)'),(11,11,'com.android.settings'),(12,12,'com.droiddream.advancedtaskkiller1'),(13,13,'com.igamepower.appmaster'),(14,15,'(.*)'),(15,16,'com.igamepower.appmaster'),(16,17,'(.*)'),(17,18,'com.igamepower.appmaster'),(18,19,'com.igamepower.appmaster'),(19,21,'com.igamepower.appmaster'),(20,22,'com.igamepower.appmaster'),(21,23,'com.igamepower.appmaster'),(22,25,'com.igamepower.appmaster'),(23,26,'com.igamepower.appmaster'),(24,24,'com.igamepower.appmaster'),(25,27,'com.igamepower.appmaster'),(26,29,'com.igamepower.appmaster'),(27,28,'com.igamepower.appmaster'),(28,31,'com.igamepower.appmaster'),(29,30,'com.igamepower.appmaster'),(30,32,'com.igamepower.appmaster'),(31,33,'com.igamepower.appmaster'),(32,34,'com.igamepower.appmaster'),(33,35,'com.igamepower.appmaster'),(34,36,'com.igamepower.appmaster'),(35,37,'com.igamepower.appmaster'),(36,39,'com.igamepower.appmaster'),(37,38,'com.igamepower.appmaster'),(38,41,'com.igamepower.appmaster'),(39,43,'com.igamepower.appmaster'),(40,42,'com.igamepower.appmaster'),(41,44,'com.igamepower.appmaster'),(42,45,'com.igamepower.appmaster'),(43,47,'com.igamepower.appmaster'),(44,46,'com.igamepower.appmaster'),(45,48,'com.igamepower.appmaster'),(46,51,'com.igamepower.appmaster'),(47,49,'com.igamepower.appmaster'),(48,53,'com.igamepower.appmaster'),(49,54,'com.igamepower.appmaster'),(50,55,'com.igamepower.appmaster'),(51,61,'NULL-CONSTANT'),(52,60,'com.igamepower.appmaster'),(53,62,'NULL-CONSTANT'),(54,63,'com.igamepower.appmaster'),(55,65,'com.igamepower.appmaster'),(56,64,'com.igamepower.appmaster'),(57,67,'com.igamepower.appmaster'),(58,69,'com.igamepower.appmaster'),(59,70,'com.igamepower.appmaster'),(60,72,'com.igamepower.appmaster'),(61,73,'com.igamepower.appmaster'),(62,75,'com.igamepower.appmaster'),(63,74,'com.igamepower.appmaster'),(64,76,'com.igamepower.appmaster'),(65,77,'com.igamepower.appmaster'),(66,78,'com.igamepower.appmaster'),(67,82,'com.igamepower.appmaster'),(68,80,'com.igamepower.appmaster'),(69,85,'(.*)'),(70,84,'com.igamepower.appmaster'),(71,86,'com.igamepower.appmaster'),(72,87,'(.*)'),(73,88,'(.*)'),(74,91,''),(75,89,'com.igamepower.appmaster'),(76,93,''),(77,94,'(.*)'),(78,95,'(.*)'),(79,96,'com.igamepower.appmaster'),(80,97,'(.*)'),(81,98,'com.igamepower.appmaster'),(82,101,'com.igamepower.appmaster'),(83,100,'NULL-CONSTANT'),(84,99,'com.igamepower.appmaster'),(85,102,'NULL-CONSTANT'),(86,103,'com.igamepower.appmaster'),(87,104,'com.igamepower.appmaster'),(88,105,'com.igamepower.appmaster'),(89,106,'com.igamepower.appmaster'),(90,108,'com.igamepower.appmaster'),(91,107,'com.igamepower.appmaster'),(92,109,'com.igamepower.appmaster'),(93,112,'com.igamepower.appmaster'),(94,110,'com.igamepower.appmaster'),(95,113,'com.igamepower.appmaster'),(96,114,'com.igamepower.appmaster'),(97,115,'com.igamepower.appmaster'),(98,116,'com.igamepower.appmaster'),(99,117,'com.igamepower.appmaster'),(100,118,'(.*)'),(101,119,'com.igamepower.appmaster'),(102,120,''),(103,121,'com.igamepower.appmaster'),(104,123,''),(105,125,'(.*)'),(106,124,'com.igamepower.appmaster'),(107,126,'(.*)'),(108,127,''),(109,128,'com.igamepower.appmaster'),(110,129,'com.igamepower.appmaster'),(111,130,''),(112,131,'com.igamepower.appmaster'),(113,132,'(.*)'),(114,134,'com.igamepower.appmaster'),(115,136,'com.igamepower.appmaster'),(116,137,'com.igamepower.appmaster'),(117,140,'com.igamepower.appmaster'),(118,142,'com.igamepower.appmaster'),(119,143,'com.igamepower.appmaster'),(120,146,'com.igamepower.appmaster'),(121,148,'NULL-CONSTANT'),(122,149,'com.igamepower.appmaster'),(123,150,'NULL-CONSTANT'),(124,151,'com.igamepower.appmaster'),(125,154,'com.igamepower.appmaster'),(126,153,'com.igamepower.appmaster'),(127,156,'com.igamepower.appmaster'),(128,157,'com.igamepower.appmaster'),(129,160,'com.igamepower.appmaster'),(130,161,'com.itfunz.itfunzsupertools'),(131,162,'(.*)'),(132,163,'com.itfunz.itfunzsupertools'),(133,164,'com.itfunz.itfunzsupertools'),(134,165,'com.itfunz.itfunzsupertools'),(135,166,'(.*)'),(136,167,'(.*)'),(137,168,'com.itfunz.itfunzsupertools'),(138,169,'(.*)'),(139,170,'(.*)'),(140,171,'com.itfunz.itfunzsupertools'),(141,172,'com.itfunz.itfunzsupertools'),(142,173,'com.itfunz.itfunzsupertools'),(143,174,'com.itfunz.itfunzsupertools'),(144,175,'(.*)'),(145,176,'com.itfunz.itfunzsupertools'),(146,177,'com.itfunz.itfunzsupertools'),(147,179,'(.*)'),(148,181,'(.*)'),(149,182,'com.itfunz.itfunzsupertools'),(150,183,'com.itfunz.itfunzsupertools'),(151,184,'(.*)'),(152,185,'com.itfunz.itfunzsupertools'),(153,186,'(.*)'),(154,187,'(.*)'),(155,188,'com.itfunz.itfunzsupertools'),(156,189,'com.itfunz.itfunzsupertools'),(157,190,'(.*)'),(158,191,'com.itfunz.itfunzsupertools'),(159,192,'com.itfunz.itfunzsupertools'),(160,193,'(.*)'),(161,195,'(.*)'),(162,196,'(.*)'),(163,198,'com.itfunz.itfunzsupertools'),(164,200,'(.*)'),(165,201,'(.*)'),(166,202,'com.itfunz.itfunzsupertools'),(167,203,'(.*)'),(168,204,'com.itfunz.itfunzsupertools'),(169,205,'(.*)'),(170,206,'(.*)'),(171,207,'(.*)'),(172,208,'(.*)'),(173,209,'(.*)'),(174,210,'(.*)'),(175,211,'com.itfunz.itfunzsupertools'),(176,212,'com.itfunz.itfunzsupertools'),(177,213,'(.*)'),(178,214,'(.*)'),(179,215,'(.*)'),(180,216,'(.*)'),(181,218,'(.*)'),(182,219,'(.*)'),(183,220,'(.*)'),(184,221,'(.*)'),(185,222,'(.*)'),(186,223,'com.itfunz.itfunzsupertools'),(187,226,'com.itfunz.itfunzsupertools'),(188,227,'(.*)'),(189,228,'com.itfunz.itfunzsupertools'),(190,229,'(.*)'),(191,230,'(.*)'),(192,232,'(.*)'),(193,233,'(.*)'),(194,234,'com.itfunz.itfunzsupertools'),(195,235,'(.*)'),(196,237,'(.*)'),(197,239,'(.*)'),(198,240,'com.itfunz.itfunzsupertools'),(199,241,'com.itfunz.itfunzsupertools'),(200,242,'com.itfunz.itfunzsupertools'),(201,243,'(.*)'),(202,244,'(.*)'),(203,245,'(.*)'),(204,246,'com.itfunz.itfunzsupertools'),(205,247,'com.itfunz.itfunzsupertools'),(206,248,'com.itfunz.itfunzsupertools'),(207,249,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,9,0),(6,10,0),(7,13,0),(8,15,0),(9,16,0),(10,16,0),(11,17,0),(12,22,0),(13,22,0),(14,22,0),(15,23,0),(16,24,0),(17,24,0),(18,25,0),(19,27,0),(20,27,0),(21,27,0),(22,26,0),(23,28,0),(24,28,0),(25,29,0),(26,31,0),(27,31,0),(28,31,0),(29,35,0),(30,35,0),(31,35,0),(32,36,0),(33,36,0),(34,37,0),(35,38,0),(36,38,0),(37,38,0),(38,39,0),(39,40,0),(40,40,0),(41,40,0),(42,46,0),(43,47,0),(44,49,0),(45,50,0),(46,66,0),(47,67,0),(48,68,0),(49,69,0),(50,70,0),(51,71,0),(52,40,0),(53,40,0),(54,40,0),(55,40,0),(56,40,0),(57,40,0),(58,72,0),(59,73,0),(60,74,0),(61,75,0),(62,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,10,0,0),(12,12,0,0),(13,13,0,0),(14,14,1,0),(15,16,1,0),(16,15,0,0),(17,16,1,0),(18,17,0,0),(19,18,0,0),(20,19,1,0),(21,20,0,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,27,0,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,33,0,0),(34,32,0,0),(35,34,0,0),(36,35,0,0),(37,36,0,0),(38,38,0,0),(39,37,0,0),(40,39,1,0),(41,40,0,0),(42,41,0,0),(43,42,0,0),(44,43,0,0),(45,44,0,0),(46,45,0,0),(47,46,0,0),(48,47,0,0),(49,48,0,0),(50,49,1,0),(51,50,0,0),(52,49,1,0),(53,51,0,0),(54,52,0,0),(55,53,0,0),(56,54,1,0),(57,55,1,0),(58,56,1,0),(59,54,1,0),(60,58,0,0),(61,57,1,0),(62,57,1,0),(63,59,0,0),(64,60,0,0),(65,61,0,0),(66,62,1,0),(67,63,0,0),(68,64,1,0),(69,65,0,0),(70,66,0,0),(71,67,1,0),(72,68,0,0),(73,69,0,0),(74,70,0,0),(75,71,0,0),(76,72,0,0),(77,73,0,0),(78,74,0,0),(79,75,1,0),(80,76,0,0),(81,77,1,0),(82,78,0,0),(83,77,1,0),(84,80,0,0),(85,79,1,0),(86,81,0,0),(87,79,1,0),(88,82,1,0),(89,83,0,0),(90,84,1,0),(91,82,1,0),(92,84,1,0),(93,82,1,0),(94,82,1,0),(95,85,1,0),(96,86,0,0),(97,85,1,0),(98,87,0,0),(99,88,0,0),(100,89,1,0),(101,90,0,0),(102,89,1,0),(103,91,0,0),(104,92,0,0),(105,93,0,0),(106,94,0,0),(107,95,0,0),(108,96,0,0),(109,97,0,0),(110,99,0,0),(111,98,1,0),(112,100,0,0),(113,101,0,0),(114,102,0,0),(115,103,0,0),(116,104,0,0),(117,105,0,0),(118,106,1,0),(119,107,0,0),(120,106,1,0),(121,108,0,0),(122,109,1,0),(123,106,1,0),(124,111,0,0),(125,110,1,0),(126,106,1,0),(127,110,1,0),(128,112,0,0),(129,113,0,0),(130,110,1,0),(131,114,0,0),(132,110,1,0),(133,115,1,0),(134,117,0,0),(135,116,1,0),(136,118,0,0),(137,119,0,0),(138,120,1,0),(139,121,1,0),(140,123,0,0),(141,122,1,0),(142,124,0,0),(143,125,0,0),(144,127,1,0),(145,126,1,0),(146,128,0,0),(147,130,1,0),(148,129,1,0),(149,131,0,0),(150,129,1,0),(151,132,0,0),(152,133,1,0),(153,134,0,0),(154,135,0,0),(155,136,1,0),(156,137,0,0),(157,138,0,0),(158,139,1,0),(159,140,1,0),(160,141,0,0),(161,142,0,0),(162,143,0,0),(163,144,0,0),(164,145,0,0),(165,146,0,0),(166,147,0,0),(167,148,0,0),(168,149,0,0),(169,150,0,0),(170,151,0,0),(171,152,0,0),(172,153,0,0),(173,154,0,0),(174,155,0,0),(175,156,0,0),(176,158,0,0),(177,160,0,0),(178,161,1,0),(179,162,0,0),(180,163,1,0),(181,164,0,0),(182,165,0,0),(183,166,0,0),(184,167,0,0),(185,168,0,0),(186,169,0,0),(187,170,0,0),(188,171,0,0),(189,172,0,0),(190,173,0,0),(191,174,0,0),(192,175,0,0),(193,178,0,0),(194,179,1,0),(195,180,0,0),(196,181,0,0),(197,182,1,0),(198,183,0,0),(199,184,1,0),(200,185,0,0),(201,186,0,0),(202,187,0,0),(203,188,0,0),(204,189,0,0),(205,190,0,0),(206,191,0,0),(207,192,0,0),(208,193,0,0),(209,194,0,0),(210,195,0,0),(211,196,0,0),(212,197,0,0),(213,198,0,0),(214,199,0,0),(215,200,0,0),(216,201,0,0),(217,202,1,0),(218,203,0,0),(219,204,0,0),(220,205,0,0),(221,206,0,0),(222,207,0,0),(223,208,0,0),(224,209,1,0),(225,210,1,0),(226,211,0,0),(227,212,0,0),(228,213,0,0),(229,214,0,0),(230,215,0,0),(231,216,1,0),(232,217,0,0),(233,218,0,0),(234,219,0,0),(235,220,0,0),(236,221,1,0),(237,223,0,0),(238,224,1,0),(239,225,0,0),(240,226,0,0),(241,227,0,0),(242,228,0,0),(243,230,0,0),(244,231,0,0),(245,232,0,0),(246,233,0,0),(247,234,0,0),(248,235,0,0),(249,236,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,1,2,NULL),(2,20,2,2,NULL),(3,68,1,2,NULL),(4,68,2,2,NULL),(5,152,1,2,NULL),(6,152,2,2,NULL),(7,15,1,2,NULL),(8,15,2,2,NULL),(9,17,1,2,NULL),(10,17,2,2,NULL),(11,85,1,2,NULL),(12,85,2,2,NULL),(13,87,1,2,NULL),(14,87,2,2,NULL),(15,95,1,2,NULL),(16,95,2,2,NULL),(17,97,1,2,NULL),(18,97,2,2,NULL),(19,14,1,2,NULL),(20,14,2,2,NULL),(21,40,1,2,NULL),(22,40,2,2,NULL),(23,56,1,2,NULL),(24,56,2,2,NULL),(25,59,1,2,NULL),(26,59,2,2,NULL),(27,58,1,2,NULL),(28,58,2,2,NULL),(29,111,1,2,NULL),(30,111,2,2,NULL),(31,122,1,2,NULL),(32,122,2,2,NULL),(33,8,6,2,NULL),(34,8,30,2,NULL),(35,20,3,2,NULL),(36,68,3,2,NULL),(37,152,3,2,NULL),(38,15,3,2,NULL),(39,17,3,2,NULL),(40,85,3,2,NULL),(41,87,3,2,NULL),(42,95,3,2,NULL),(43,97,3,2,NULL),(44,14,3,2,NULL),(45,40,3,2,NULL),(46,56,3,2,NULL),(47,59,3,2,NULL),(48,58,3,2,NULL),(49,111,3,2,NULL),(50,122,3,2,NULL),(51,20,5,2,NULL),(52,68,5,2,NULL),(53,152,5,2,NULL),(54,15,5,2,NULL),(55,17,5,2,NULL),(56,85,5,2,NULL),(57,87,5,2,NULL),(58,95,5,2,NULL),(59,97,5,2,NULL),(60,14,5,2,NULL),(61,40,5,2,NULL),(62,56,5,2,NULL),(63,59,5,2,NULL),(64,58,5,2,NULL),(65,111,5,2,NULL),(66,122,5,2,NULL),(67,12,2,2,NULL),(68,20,9,2,NULL),(69,68,9,2,NULL),(70,152,9,2,NULL),(71,15,9,2,NULL),(72,17,9,2,NULL),(73,85,9,2,NULL),(74,87,9,2,NULL),(75,95,9,2,NULL),(76,97,9,2,NULL),(77,14,9,2,NULL),(78,40,9,2,NULL),(79,56,9,2,NULL),(80,59,9,2,NULL),(81,58,9,2,NULL),(82,111,9,2,NULL),(83,122,9,2,NULL),(84,20,10,2,NULL),(85,68,10,2,NULL),(86,152,10,2,NULL),(87,15,10,2,NULL),(88,17,10,2,NULL),(89,85,10,2,NULL),(90,87,10,2,NULL),(91,95,10,2,NULL),(92,97,10,2,NULL),(93,14,10,2,NULL),(94,40,10,2,NULL),(95,56,10,2,NULL),(96,59,10,2,NULL),(97,58,10,2,NULL),(98,111,10,2,NULL),(99,122,10,2,NULL),(100,20,71,2,NULL),(101,68,71,2,NULL),(102,152,71,2,NULL),(103,15,71,2,NULL),(104,17,71,2,NULL),(105,85,71,2,NULL),(106,87,71,2,NULL),(107,95,71,2,NULL),(108,97,71,2,NULL),(109,14,71,2,NULL),(110,40,71,2,NULL),(111,56,71,2,NULL),(112,59,71,2,NULL),(113,58,71,2,NULL),(114,111,71,2,NULL),(115,122,71,2,NULL),(116,34,38,2,NULL),(117,45,38,2,NULL),(118,70,38,2,NULL),(119,78,38,2,NULL),(120,119,38,2,NULL),(121,143,38,2,NULL),(122,20,15,2,NULL),(123,68,15,2,NULL),(124,152,15,2,NULL),(125,15,15,2,NULL),(126,17,15,2,NULL),(127,85,15,2,NULL),(128,20,39,2,NULL),(129,87,15,2,NULL),(130,68,39,2,NULL),(131,95,15,2,NULL),(132,152,39,2,NULL),(133,97,15,2,NULL),(134,15,39,2,NULL),(135,14,15,2,NULL),(136,17,39,2,NULL),(137,40,15,2,NULL),(138,85,39,2,NULL),(139,56,15,2,NULL),(140,87,39,2,NULL),(141,59,15,2,NULL),(142,95,39,2,NULL),(143,58,15,2,NULL),(144,97,39,2,NULL),(145,111,15,2,NULL),(146,14,39,2,NULL),(147,122,15,2,NULL),(148,40,39,2,NULL),(149,25,38,2,NULL),(150,56,39,2,NULL),(151,63,38,2,NULL),(152,59,39,2,NULL),(153,75,38,2,NULL),(154,58,39,2,NULL),(155,76,38,2,NULL),(156,111,39,2,NULL),(157,77,38,2,NULL),(158,122,39,2,NULL),(159,104,38,2,NULL),(160,234,60,2,NULL),(161,20,16,2,NULL),(162,189,46,2,NULL),(163,68,16,2,NULL),(164,164,52,2,NULL),(165,152,16,2,NULL),(166,20,46,2,NULL),(167,15,16,2,NULL),(168,68,46,2,NULL),(169,17,16,2,NULL),(170,152,46,2,NULL),(171,85,16,2,NULL),(172,15,46,2,NULL),(173,87,16,2,NULL),(174,17,46,2,NULL),(175,95,16,2,NULL),(176,85,46,2,NULL),(177,97,16,2,NULL),(178,87,46,2,NULL),(179,14,16,2,NULL),(180,95,46,2,NULL),(181,40,16,2,NULL),(182,97,46,2,NULL),(183,56,16,2,NULL),(184,14,46,2,NULL),(185,59,16,2,NULL),(186,40,46,2,NULL),(187,58,16,2,NULL),(188,56,46,2,NULL),(189,111,16,2,NULL),(190,59,46,2,NULL),(191,122,16,2,NULL),(192,58,46,2,NULL),(193,13,28,2,NULL),(194,111,46,2,NULL),(195,13,29,2,NULL),(196,122,46,2,NULL),(197,36,14,2,NULL),(198,20,49,2,NULL),(199,36,15,2,NULL),(200,68,49,2,NULL),(201,43,28,2,NULL),(202,152,49,2,NULL),(203,43,29,2,NULL),(204,15,49,2,NULL),(205,84,14,2,NULL),(206,17,49,2,NULL),(207,84,15,2,NULL),(208,85,49,2,NULL),(209,113,28,2,NULL),(210,87,49,2,NULL),(211,113,29,2,NULL),(212,95,49,2,NULL),(213,134,14,2,NULL),(214,97,49,2,NULL),(215,134,15,2,NULL),(216,14,49,2,NULL),(217,20,22,2,NULL),(218,40,49,2,NULL),(219,68,22,2,NULL),(220,56,49,2,NULL),(221,152,22,2,NULL),(222,59,49,2,NULL),(223,20,24,2,NULL),(224,58,49,2,NULL),(225,68,24,2,NULL),(226,111,49,2,NULL),(227,152,24,2,NULL),(228,122,49,2,NULL),(229,20,25,2,NULL),(230,20,50,2,NULL),(231,68,25,2,NULL),(232,68,50,2,NULL),(233,152,25,2,NULL),(234,152,50,2,NULL),(235,20,27,2,NULL),(236,15,50,2,NULL),(237,68,27,2,NULL),(238,17,50,2,NULL),(239,152,27,2,NULL),(240,85,50,2,NULL),(241,20,28,2,NULL),(242,87,50,2,NULL),(243,68,28,2,NULL),(244,95,50,2,NULL),(245,152,28,2,NULL),(246,97,50,2,NULL),(247,20,29,2,NULL),(248,14,50,2,NULL),(249,68,29,2,NULL),(250,40,50,2,NULL),(251,152,29,2,NULL),(252,56,50,2,NULL),(253,20,31,2,NULL),(254,59,50,2,NULL),(255,68,31,2,NULL),(256,58,50,2,NULL),(257,152,31,2,NULL),(258,111,50,2,NULL),(259,20,35,2,NULL),(260,122,50,2,NULL),(261,68,35,2,NULL),(262,173,62,2,NULL),(263,152,35,2,NULL),(264,174,61,2,NULL),(265,20,36,2,NULL),(266,20,66,2,NULL),(267,68,36,2,NULL),(268,68,66,2,NULL),(269,152,36,2,NULL),(270,152,66,2,NULL),(271,20,37,2,NULL),(272,15,66,2,NULL),(273,68,37,2,NULL),(274,17,66,2,NULL),(275,152,37,2,NULL),(276,85,66,2,NULL),(277,20,38,2,NULL),(278,87,66,2,NULL),(279,68,38,2,NULL),(280,95,66,2,NULL),(281,152,38,2,NULL),(282,97,66,2,NULL),(283,20,40,2,NULL),(284,14,66,2,NULL),(285,68,40,2,NULL),(286,40,66,2,NULL),(287,152,40,2,NULL),(288,56,66,2,NULL),(289,20,13,2,NULL),(290,59,66,2,NULL),(291,68,13,2,NULL),(292,58,66,2,NULL),(293,152,13,2,NULL),(294,111,66,2,NULL),(295,20,17,2,NULL),(296,122,66,2,NULL),(297,68,17,2,NULL),(298,223,60,2,NULL),(299,152,17,2,NULL),(300,20,67,2,NULL),(301,20,23,2,NULL),(302,68,67,2,NULL),(303,68,23,2,NULL),(304,152,67,2,NULL),(305,152,23,2,NULL),(306,15,67,2,NULL),(307,20,26,2,NULL),(308,17,67,2,NULL),(309,68,26,2,NULL),(310,85,67,2,NULL),(311,152,26,2,NULL),(312,87,67,2,NULL),(313,20,68,2,NULL),(314,95,67,2,NULL),(315,68,68,2,NULL),(316,97,67,2,NULL),(317,152,68,2,NULL),(318,14,67,2,NULL),(319,20,69,2,NULL),(320,40,67,2,NULL),(321,68,69,2,NULL),(322,56,67,2,NULL),(323,152,69,2,NULL),(324,59,67,2,NULL),(325,20,70,2,NULL),(326,58,67,2,NULL),(327,68,70,2,NULL),(328,111,67,2,NULL),(329,152,70,2,NULL),(330,122,67,2,NULL),(331,20,72,2,NULL),(332,246,63,2,NULL),(333,68,72,2,NULL),(334,248,63,2,NULL),(335,152,72,2,NULL),(336,15,68,2,NULL),(337,20,73,2,NULL),(338,17,68,2,NULL),(339,68,73,2,NULL),(340,85,68,2,NULL),(341,152,73,2,NULL),(342,87,68,2,NULL),(343,20,74,2,NULL),(344,95,68,2,NULL),(345,68,74,2,NULL),(346,97,68,2,NULL),(347,152,74,2,NULL),(348,14,68,2,NULL),(349,27,28,2,NULL),(350,40,68,2,NULL),(351,27,29,2,NULL),(352,56,68,2,NULL),(353,29,38,2,NULL),(354,59,68,2,NULL),(355,72,28,2,NULL),(356,58,68,2,NULL),(357,72,29,2,NULL),(358,111,68,2,NULL),(359,121,28,2,NULL),(360,122,68,2,NULL),(361,121,29,2,NULL),(362,188,64,2,NULL),(363,142,38,2,NULL),(364,192,64,2,NULL),(365,154,38,2,NULL),(366,15,69,2,NULL),(367,15,22,2,NULL),(368,17,69,2,NULL),(369,17,22,2,NULL),(370,85,69,2,NULL),(371,85,22,2,NULL),(372,87,69,2,NULL),(373,87,22,2,NULL),(374,95,69,2,NULL),(375,95,22,2,NULL),(376,97,69,2,NULL),(377,97,22,2,NULL),(378,14,69,2,NULL),(379,14,22,2,NULL),(380,40,69,2,NULL),(381,40,22,2,NULL),(382,56,69,2,NULL),(383,56,22,2,NULL),(384,59,69,2,NULL),(385,59,22,2,NULL),(386,58,69,2,NULL),(387,58,22,2,NULL),(388,111,69,2,NULL),(389,111,22,2,NULL),(390,122,69,2,NULL),(391,122,22,2,NULL),(392,212,65,2,NULL),(393,26,38,2,NULL),(394,228,65,2,NULL),(395,39,28,2,NULL),(396,15,70,2,NULL),(397,39,29,2,NULL),(398,17,70,2,NULL),(399,73,28,2,NULL),(400,85,70,2,NULL),(401,73,29,2,NULL),(402,87,70,2,NULL),(403,101,38,2,NULL),(404,95,70,2,NULL),(405,108,28,2,NULL),(406,97,70,2,NULL),(407,108,29,2,NULL),(408,14,70,2,NULL),(409,149,38,2,NULL),(410,40,70,2,NULL),(411,15,24,2,NULL),(412,56,70,2,NULL),(413,17,24,2,NULL),(414,59,70,2,NULL),(415,85,24,2,NULL),(416,58,70,2,NULL),(417,87,24,2,NULL),(418,111,70,2,NULL),(419,95,24,2,NULL),(420,122,70,2,NULL),(421,97,24,2,NULL),(422,15,72,2,NULL),(423,14,24,2,NULL),(424,17,72,2,NULL),(425,40,24,2,NULL),(426,85,72,2,NULL),(427,56,24,2,NULL),(428,87,72,2,NULL),(429,59,24,2,NULL),(430,95,72,2,NULL),(431,58,24,2,NULL),(432,97,72,2,NULL),(433,111,24,2,NULL),(434,14,72,2,NULL),(435,122,24,2,NULL),(436,40,72,2,NULL),(437,15,25,2,NULL),(438,56,72,2,NULL),(439,17,25,2,NULL),(440,59,72,2,NULL),(441,85,25,2,NULL),(442,58,72,2,NULL),(443,87,25,2,NULL),(444,111,72,2,NULL),(445,95,25,2,NULL),(446,122,72,2,NULL),(447,97,25,2,NULL),(448,15,73,2,NULL),(449,14,25,2,NULL),(450,17,73,2,NULL),(451,40,25,2,NULL),(452,85,73,2,NULL),(453,56,25,2,NULL),(454,87,73,2,NULL),(455,59,25,2,NULL),(456,95,73,2,NULL),(457,58,25,2,NULL),(458,97,73,2,NULL),(459,111,25,2,NULL),(460,14,73,2,NULL),(461,122,25,2,NULL),(462,40,73,2,NULL),(463,65,38,2,NULL),(464,56,73,2,NULL),(465,86,38,2,NULL),(466,59,73,2,NULL),(467,128,38,2,NULL),(468,58,73,2,NULL),(469,15,27,2,NULL),(470,111,73,2,NULL),(471,17,27,2,NULL),(472,122,73,2,NULL),(473,85,27,2,NULL),(474,15,74,2,NULL),(475,87,27,2,NULL),(476,17,74,2,NULL),(477,95,27,2,NULL),(478,85,74,2,NULL),(479,97,27,2,NULL),(480,87,74,2,NULL),(481,14,27,2,NULL),(482,95,74,2,NULL),(483,40,27,2,NULL),(484,97,74,2,NULL),(485,56,27,2,NULL),(486,14,74,2,NULL),(487,59,27,2,NULL),(488,40,74,2,NULL),(489,58,27,2,NULL),(490,56,74,2,NULL),(491,111,27,2,NULL),(492,59,74,2,NULL),(493,122,27,2,NULL),(494,58,74,2,NULL),(495,19,14,2,NULL),(496,111,74,2,NULL),(497,19,15,2,NULL),(498,122,74,2,NULL),(499,31,14,2,NULL),(500,31,15,2,NULL),(501,51,14,2,NULL),(502,51,15,2,NULL),(503,67,38,2,NULL),(504,69,38,2,NULL),(505,98,14,2,NULL),(506,98,15,2,NULL),(507,103,38,2,NULL),(508,116,14,2,NULL),(509,116,15,2,NULL),(510,157,14,2,NULL),(511,157,15,2,NULL),(512,15,28,2,NULL),(513,17,28,2,NULL),(514,85,28,2,NULL),(515,87,28,2,NULL),(516,95,28,2,NULL),(517,97,28,2,NULL),(518,14,28,2,NULL),(519,40,28,2,NULL),(520,56,28,2,NULL),(521,59,28,2,NULL),(522,58,28,2,NULL),(523,111,28,2,NULL),(524,122,28,2,NULL),(525,15,29,2,NULL),(526,17,29,2,NULL),(527,85,29,2,NULL),(528,87,29,2,NULL),(529,95,29,2,NULL),(530,97,29,2,NULL),(531,14,29,2,NULL),(532,40,29,2,NULL),(533,56,29,2,NULL),(534,59,29,2,NULL),(535,58,29,2,NULL),(536,111,29,2,NULL),(537,122,29,2,NULL),(538,105,28,2,NULL),(539,105,29,2,NULL),(540,106,28,2,NULL),(541,106,29,2,NULL),(542,140,28,2,NULL),(543,140,29,2,NULL),(544,14,31,2,NULL),(545,14,31,2,NULL),(546,40,31,2,NULL),(547,40,31,2,NULL),(548,56,31,2,NULL),(549,59,31,2,NULL),(550,58,31,2,NULL),(551,111,31,2,NULL),(552,122,31,2,NULL),(553,122,31,2,NULL),(554,15,35,2,NULL),(555,17,35,2,NULL),(556,85,35,2,NULL),(557,87,35,2,NULL),(558,95,35,2,NULL),(559,97,35,2,NULL),(560,15,36,2,NULL),(561,17,36,2,NULL),(562,85,36,2,NULL),(563,87,36,2,NULL),(564,95,36,2,NULL),(565,97,36,2,NULL),(566,15,37,2,NULL),(567,17,37,2,NULL),(568,85,37,2,NULL),(569,87,37,2,NULL),(570,95,37,2,NULL),(571,97,37,2,NULL),(572,15,38,2,NULL),(573,17,38,2,NULL),(574,85,38,2,NULL),(575,87,38,2,NULL),(576,95,38,2,NULL),(577,97,38,2,NULL),(578,15,40,2,NULL),(579,17,40,2,NULL),(580,85,40,2,NULL),(581,87,40,2,NULL),(582,95,40,2,NULL),(583,97,40,2,NULL),(584,15,13,2,NULL),(585,17,13,2,NULL),(586,85,13,2,NULL),(587,87,13,2,NULL),(588,95,13,2,NULL),(589,97,13,2,NULL),(590,15,17,2,NULL),(591,17,17,2,NULL),(592,85,17,2,NULL),(593,87,17,2,NULL),(594,95,17,2,NULL),(595,97,17,2,NULL),(596,15,23,2,NULL),(597,17,23,2,NULL),(598,85,23,2,NULL),(599,87,23,2,NULL),(600,95,23,2,NULL),(601,97,23,2,NULL),(602,15,26,2,NULL),(603,17,26,2,NULL),(604,85,26,2,NULL),(605,87,26,2,NULL),(606,95,26,2,NULL),(607,97,26,2,NULL),(608,28,28,2,NULL),(609,28,29,2,NULL),(610,38,28,2,NULL),(611,38,29,2,NULL),(612,54,33,2,NULL),(613,54,34,2,NULL),(614,60,28,2,NULL),(615,60,29,2,NULL),(616,80,33,2,NULL),(617,80,34,2,NULL),(618,137,33,2,NULL),(619,137,34,2,NULL),(620,14,35,2,NULL),(621,40,35,2,NULL),(622,56,35,2,NULL),(623,59,35,2,NULL),(624,58,35,2,NULL),(625,111,35,2,NULL),(626,122,35,2,NULL),(627,14,36,2,NULL),(628,40,36,2,NULL),(629,56,36,2,NULL),(630,59,36,2,NULL),(631,58,36,2,NULL),(632,111,36,2,NULL),(633,122,36,2,NULL),(634,14,37,2,NULL),(635,40,37,2,NULL),(636,56,37,2,NULL),(637,59,37,2,NULL),(638,58,37,2,NULL),(639,111,37,2,NULL),(640,122,37,2,NULL),(641,14,38,2,NULL),(642,40,38,2,NULL),(643,56,38,2,NULL),(644,59,38,2,NULL),(645,58,38,2,NULL),(646,111,38,2,NULL),(647,122,38,2,NULL),(648,14,40,2,NULL),(649,40,40,2,NULL),(650,56,40,2,NULL),(651,59,40,2,NULL),(652,58,40,2,NULL),(653,111,40,2,NULL),(654,122,40,2,NULL),(655,14,13,2,NULL),(656,40,13,2,NULL),(657,56,13,2,NULL),(658,59,13,2,NULL),(659,58,13,2,NULL),(660,111,13,2,NULL),(661,122,13,2,NULL),(662,14,17,2,NULL),(663,40,17,2,NULL),(664,56,17,2,NULL),(665,59,17,2,NULL),(666,58,17,2,NULL),(667,111,17,2,NULL),(668,122,17,2,NULL),(669,14,23,2,NULL),(670,40,23,2,NULL),(671,56,23,2,NULL),(672,59,23,2,NULL),(673,58,23,2,NULL),(674,111,23,2,NULL),(675,122,23,2,NULL),(676,14,26,2,NULL),(677,40,26,2,NULL),(678,56,26,2,NULL),(679,59,26,2,NULL),(680,58,26,2,NULL),(681,111,26,2,NULL),(682,122,26,2,NULL),(683,21,38,2,NULL),(684,22,38,2,NULL),(685,112,38,2,NULL),(686,16,38,2,NULL),(687,30,38,2,NULL),(688,35,38,2,NULL),(689,44,38,2,NULL),(690,55,38,2,NULL),(691,109,38,2,NULL),(692,131,38,2,NULL),(693,146,38,2,NULL),(694,153,38,2,NULL),(695,1,6,2,NULL),(696,1,30,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_CACHE_FILESYSTEM'),(19,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.DELETE_CACHE_FILES'),(26,'android.permission.DEVICE_POWER'),(25,'android.permission.DISABLE_KEYGUARD'),(24,'android.permission.FACTORY_TEST'),(21,'android.permission.HARDWARE_TEST'),(4,'android.permission.INTERNET'),(8,'android.permission.KILL_BACKGROUND_PROCESSES'),(16,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(22,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_LOGS'),(18,'android.permission.READ_OWNER_DATA'),(2,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RESTART_PACKAGES'),(20,'android.permission.VIBRATE'),(27,'android.permission.WAKE_LOCK'),(23,'android.permission.WRITE_CONTACTS'),(11,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_OWNER_DATA'),(14,'android.permission.WRITE_SECURE_SETTINGS'),(17,'android.permission.WRITE_SETTINGS'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(30,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,157,29),(2,159,30),(3,176,33),(4,222,40),(5,229,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,3,1),(10,3,2),(11,4,2),(12,3,3),(13,4,4),(14,3,4),(15,4,20),(16,3,7),(17,3,9),(18,4,5),(19,3,10),(20,3,11),(21,4,6),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,3,17),(27,3,17),(28,3,16),(29,3,16),(30,3,19),(31,3,19),(32,3,18),(33,5,2),(34,5,3),(35,5,4),(36,5,5),(37,5,6),(38,5,11),(39,5,17),(40,5,19),(41,5,21),(42,5,20),(43,5,23),(44,5,22),(45,5,25),(46,5,24),(47,5,27),(48,5,26);
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

-- Dump completed on 2015-10-12  3:29:37
