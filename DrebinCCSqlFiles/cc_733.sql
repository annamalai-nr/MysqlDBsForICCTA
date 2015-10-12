-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_733
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
INSERT INTO `ActionStrings` VALUES (9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.VIEW'),(6,'android.intent.action.WEB_SEARCH'),(2,'android.provider.Telephony.SMS_RECEIVED'),(7,'com.aps.VisualShell.action.CONTROL_UPDATED'),(8,'com.aps.VisualShell.action.IMAGE_SELECTED'),(4,'com.aps.VisualShell.action.RESULT_RETURNED'),(5,'com.aps.hainguyen273.app2card.action.RunningMonitor');
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
INSERT INTO `Applications` VALUES (1,'com.dlp.SMSReplicatorSecret',1),(2,'com.aps.hainguyen273.app2card',81219378),(3,'com.rockastar.nfss',1),(4,'com.rockastar.gtavicety',1),(5,'com.vaultek.magicbutton',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dlp.SMSReplicatorSecret.SMSReplicatorSecret'),(2,1,'com.dlp.SMSReplicatorSecret.SMSReceiver'),(3,2,'com.aps.hainguyen273.app2card.MainActivity'),(4,2,'com.aps.hainguyen273.app2card.InstallActivity'),(5,2,'com.aps.hainguyen273.app2card.Application_Tools'),(6,2,'com.aps.hainguyen273.app2card.ErrorTools'),(7,2,'com.aps.hainguyen273.app2card.Wipe_Tools'),(8,2,'com.aps.hainguyen273.app2card.SelectBackupActivity'),(9,2,'com.aps.hainguyen273.app2card.PartitionActivity'),(10,2,'com.aps.hainguyen273.app2card.StorageToolsActivity'),(11,2,'com.aps.hainguyen273.app2card.PartitionActivity2'),(12,2,'com.aps.hainguyen273.app2card.About'),(13,2,'com.aps.hainguyen273.app2card.ManageAppsActivity'),(14,2,'com.aps.hainguyen273.app2card.ScriptRunnerActivity'),(15,2,'com.aps.hainguyen273.app2card.DialogActivity'),(16,2,'com.aps.hainguyen273.app2card.InputBoxActivity'),(17,2,'com.aps.hainguyen273.app2card.MessageActivity'),(18,2,'com.aps.hainguyen273.app2card.FileChoserActivity'),(19,2,'com.aps.hainguyen273.app2card.ToastMessageActivity'),(20,2,'com.aps.hainguyen273.app2card.ListBoxActivity'),(21,2,'com.aps.hainguyen273.app2card.SelectIconFromSdActivity'),(22,2,'com.aps.hainguyen273.app2card.AppBrowserActivity'),(23,2,'com.aps.hainguyen273.app2card.ProgressBarActivity'),(24,3,'com.rockastar.nfss.MainActivity'),(25,4,'com.rockastar.gtavicety.MainActivity'),(26,5,'com.vaultek.magicbutton.MainActivity'),(27,3,'com.rockastar.nfss.MainActivity$1'),(28,4,'com.rockastar.gtavicety.MainActivity$1'),(29,5,'com.vaultek.magicbutton.MainActivity$1'),(30,2,'com.aps.hainguyen273.app2card.MainActivity$6'),(31,2,'com.aps.hainguyen273.app2card.ControlListActivity'),(32,2,'com.aps.hainguyen273.app2card.BaseScriptCallerActivity$1'),(33,2,'com.aps.hainguyen273.app2card.ScriptRunnerActivity$1'),(34,2,'com.aps.hainguyen273.app2card.ControlListActivity$1'),(35,2,'com.aps.hainguyen273.app2card.ControlActivity$1'),(36,2,'com.aps.hainguyen273.app2card.PartitionActivity2$1'),(37,2,'com.aps.hainguyen273.app2card.ControlActivity'),(38,2,'com.aps.hainguyen273.app2card.BaseScriptCallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,14,'command'),(3,22,'control'),(4,4,'install'),(5,14,'shFilePath'),(6,16,'control'),(7,20,'control'),(8,15,'control'),(9,23,'control'),(10,19,'control'),(11,17,'control'),(12,18,'control'),(13,14,'processName'),(14,14,'oldLog'),(15,14,'noRun'),(16,14,'showLog');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,32,'r',1,NULL,NULL),(28,33,'r',1,NULL,NULL),(29,34,'r',1,NULL,NULL),(30,35,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,24),(6,6,25),(7,7,26),(8,8,3),(9,9,3),(10,10,5),(11,11,10),(12,12,3),(13,13,3),(14,14,6),(15,15,3),(16,16,10),(17,17,22),(18,18,3),(19,19,5),(20,20,4),(21,21,5),(22,22,3),(23,23,11),(24,23,13),(25,23,8),(26,23,22),(27,23,9),(28,23,3),(29,23,18),(30,23,4),(31,23,14),(32,24,6),(33,25,6),(34,26,3),(35,27,5),(36,28,7),(37,29,22),(38,29,4),(39,29,11),(40,29,8),(41,29,9),(42,29,14),(43,29,13),(44,29,3),(45,29,18),(46,30,21),(47,31,10),(48,32,5),(49,33,10),(50,34,7),(51,35,7),(52,36,11),(53,37,7),(54,38,3),(55,39,3),(56,40,18),(57,40,17),(58,40,16),(59,40,15),(60,40,20),(61,40,19),(62,40,23),(63,41,3),(64,42,5),(65,43,10),(66,44,5),(67,45,18),(68,45,14),(69,45,3),(70,45,13),(71,45,4),(72,45,22),(73,45,9),(74,45,8),(75,45,11),(76,46,3),(77,47,5),(78,48,7),(79,49,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',69,'p',NULL),(2,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',57,'a',NULL),(3,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',69,'p',NULL),(4,2,'<com.dlp.SMSReplicatorSecret.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',57,'a',NULL),(5,27,'<com.rockastar.nfss.MainActivity$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(6,28,'<com.rockastar.gtavicety.MainActivity$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(7,29,'<com.vaultek.magicbutton.MainActivity$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(8,3,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',39,'a',NULL),(9,30,'<com.aps.hainguyen273.app2card.MainActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(10,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',57,'a',NULL),(11,10,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',22,'a',NULL),(12,3,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',28,'a',NULL),(13,3,'<com.aps.hainguyen273.app2card.MainActivity: void onCheckedChanged(android.widget.CompoundButton,boolean)>',16,'a',NULL),(14,6,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',25,'a',NULL),(15,3,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',12,'a',NULL),(16,10,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',6,'a',NULL),(17,31,'<com.aps.hainguyen273.app2card.ControlListActivity: void returnResult(java.lang.String,boolean)>',7,'r',NULL),(18,3,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(19,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',9,'a',NULL),(20,4,'<com.aps.hainguyen273.app2card.InstallActivity: void install(boolean)>',16,'a',NULL),(21,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',17,'a',NULL),(22,3,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',8,'a',NULL),(23,14,'<com.aps.hainguyen273.app2card.ScriptRunnerActivity: void showControl(java.lang.String)>',36,'a',NULL),(24,6,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',9,'a',NULL),(25,6,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',17,'a',NULL),(26,3,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',17,'a',NULL),(27,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',49,'a',NULL),(28,7,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',41,'a',NULL),(29,14,'<com.aps.hainguyen273.app2card.ScriptRunnerActivity: void showControl(java.lang.String)>',48,'r',NULL),(30,21,'<com.aps.hainguyen273.app2card.SelectIconFromSdActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'r',NULL),(31,10,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',14,'a',NULL),(32,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',65,'a',NULL),(33,10,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',27,'a',NULL),(34,7,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',33,'a',NULL),(35,7,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',9,'a',NULL),(36,36,'<com.aps.hainguyen273.app2card.PartitionActivity2$1: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(37,7,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',25,'a',NULL),(38,3,'<com.aps.hainguyen273.app2card.MainActivity: void onCheckedChanged(android.widget.CompoundButton,boolean)>',9,'a',NULL),(39,3,'<com.aps.hainguyen273.app2card.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(40,37,'<com.aps.hainguyen273.app2card.ControlActivity: void returnResult(java.lang.String,boolean)>',7,'r',NULL),(41,3,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(42,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',41,'a',NULL),(43,10,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',35,'a',NULL),(44,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',33,'a',NULL),(45,38,'<com.aps.hainguyen273.app2card.BaseScriptCallerActivity: void sendScriptRunningResult(android.app.Activity,java.lang.String,java.lang.String)>',8,'r',NULL),(46,3,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',32,'a',NULL),(47,5,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',25,'a',NULL),(48,7,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',17,'a',NULL),(49,13,'<com.aps.hainguyen273.app2card.ManageAppsActivity: void onClick(android.view.View)>',22,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,3),(2,4,3),(3,5,3),(4,15,4),(5,20,6),(6,34,7),(7,35,8),(8,45,4),(9,50,5),(10,51,5),(11,55,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/dlp/SMSReplicatorSecret/SMSReplicatorSecret'),(2,2,'com/dlp/SMSReplicatorSecret/SMSReplicatorSecret'),(3,6,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(4,7,'com/aps/hainguyen273/app2card/PartitionActivity2'),(5,8,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(6,9,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(7,10,'com/aps/hainguyen273/app2card/Application_Tools'),(8,11,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(9,12,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(10,13,'com/aps/hainguyen273/app2card/About'),(11,14,'com/aps/hainguyen273/app2card/PartitionActivity2'),(12,16,'com/aps/hainguyen273/app2card/InstallActivity'),(13,17,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(14,18,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(15,19,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(16,21,'com/aps/hainguyen273/app2card/ListBoxActivity'),(17,22,'com/aps/hainguyen273/app2card/MessageActivity'),(18,23,'com/aps/hainguyen273/app2card/FileChoserActivity'),(19,24,'com/aps/hainguyen273/app2card/AppBrowserActivity'),(20,25,'com/aps/hainguyen273/app2card/DialogActivity'),(21,26,'com/aps/hainguyen273/app2card/ProgressBarActivity'),(22,27,'com/aps/hainguyen273/app2card/ToastMessageActivity'),(23,28,'com/aps/hainguyen273/app2card/InputBoxActivity'),(24,29,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(25,30,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(26,31,'com/aps/hainguyen273/app2card/InstallActivity'),(27,32,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(28,33,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(29,36,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(30,37,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(31,38,'com/aps/hainguyen273/app2card/Wipe_Tools'),(32,39,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(33,40,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(34,41,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(35,42,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(36,43,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(37,44,'com/aps/hainguyen273/app2card/InstallActivity'),(38,46,'com/aps/hainguyen273/app2card/StorageToolsActivity'),(39,47,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(40,48,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(41,49,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(42,52,'com/aps/hainguyen273/app2card/ErrorTools'),(43,53,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(44,54,'com/aps/hainguyen273/app2card/ScriptRunnerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,3),(2,4,4),(3,5,5),(4,55,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'showLog'),(2,6,'processName'),(3,6,'command'),(4,8,'showLog'),(5,8,'processName'),(6,8,'command'),(7,9,'showLog'),(8,9,'processName'),(9,9,'command'),(10,11,'showLog'),(11,11,'processName'),(12,11,'command'),(13,12,'showLog'),(14,12,'processName'),(15,12,'command'),(16,15,'value'),(17,16,'install'),(18,17,'showLog'),(19,17,'processName'),(20,17,'command'),(21,18,'showLog'),(22,18,'processName'),(23,18,'command'),(24,19,'showLog'),(25,19,'processName'),(26,19,'command'),(27,20,'query'),(28,21,'control'),(29,22,'control'),(30,23,'control'),(31,24,'control'),(32,25,'control'),(33,26,'control'),(34,27,'control'),(35,28,'control'),(36,29,'showLog'),(37,29,'processName'),(38,29,'command'),(39,30,'showLog'),(40,30,'processName'),(41,30,'command'),(42,31,'install'),(43,32,'showLog'),(44,32,'processName'),(45,32,'command'),(46,33,'showLog'),(47,33,'processName'),(48,33,'command'),(49,34,'control'),(50,35,'imagePath'),(51,36,'showLog'),(52,36,'processName'),(53,36,'command'),(54,37,'showLog'),(55,37,'processName'),(56,37,'command'),(57,39,'showLog'),(58,39,'processName'),(59,39,'command'),(60,40,'showLog'),(61,40,'processName'),(62,40,'command'),(63,41,'showLog'),(64,41,'processName'),(65,41,'command'),(66,42,'showLog'),(67,42,'processName'),(68,42,'command'),(69,43,'showLog'),(70,43,'processName'),(71,43,'command'),(72,45,'value'),(73,47,'showLog'),(74,47,'processName'),(75,47,'command'),(76,48,'showLog'),(77,48,'processName'),(78,48,'command'),(79,49,'showLog'),(80,49,'processName'),(81,49,'command'),(82,50,'what'),(83,50,'fullResult'),(84,51,'lastLine'),(85,51,'what'),(86,53,'showLog'),(87,53,'processName'),(88,53,'command'),(89,54,'showLog'),(90,54,'processName'),(91,54,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,5),(11,11,5),(12,12,5),(13,13,5),(14,14,4),(15,15,4),(16,16,4),(17,17,4),(18,18,7),(19,19,7),(20,20,7),(21,21,7),(22,22,7),(23,23,7),(24,24,7),(25,25,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,5,1),(2,7,1),(3,8,1),(4,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dlp.SMSReplicatorSecret'),(2,2,'com.dlp.SMSReplicatorSecret'),(3,6,'com.aps.hainguyen273.app2card'),(4,7,'com.aps.hainguyen273.app2card'),(5,8,'com.aps.hainguyen273.app2card'),(6,9,'com.aps.hainguyen273.app2card'),(7,10,'com.aps.hainguyen273.app2card'),(8,11,'com.aps.hainguyen273.app2card'),(9,12,'com.aps.hainguyen273.app2card'),(10,13,'com.aps.hainguyen273.app2card'),(11,14,'com.aps.hainguyen273.app2card'),(12,16,'com.aps.hainguyen273.app2card'),(13,17,'com.aps.hainguyen273.app2card'),(14,18,'com.aps.hainguyen273.app2card'),(15,19,'com.aps.hainguyen273.app2card'),(16,21,'com.aps.hainguyen273.app2card'),(17,22,'com.aps.hainguyen273.app2card'),(18,23,'com.aps.hainguyen273.app2card'),(19,24,'com.aps.hainguyen273.app2card'),(20,25,'com.aps.hainguyen273.app2card'),(21,26,'com.aps.hainguyen273.app2card'),(22,27,'com.aps.hainguyen273.app2card'),(23,28,'com.aps.hainguyen273.app2card'),(24,29,'com.aps.hainguyen273.app2card'),(25,30,'com.aps.hainguyen273.app2card'),(26,31,'com.aps.hainguyen273.app2card'),(27,32,'com.aps.hainguyen273.app2card'),(28,33,'com.aps.hainguyen273.app2card'),(29,36,'com.aps.hainguyen273.app2card'),(30,37,'com.aps.hainguyen273.app2card'),(31,38,'com.aps.hainguyen273.app2card'),(32,39,'com.aps.hainguyen273.app2card'),(33,40,'com.aps.hainguyen273.app2card'),(34,41,'com.aps.hainguyen273.app2card'),(35,42,'com.aps.hainguyen273.app2card'),(36,43,'com.aps.hainguyen273.app2card'),(37,44,'com.aps.hainguyen273.app2card'),(38,46,'com.aps.hainguyen273.app2card'),(39,47,'com.aps.hainguyen273.app2card'),(40,48,'com.aps.hainguyen273.app2card'),(41,49,'com.aps.hainguyen273.app2card'),(42,52,'com.aps.hainguyen273.app2card'),(43,53,'com.aps.hainguyen273.app2card'),(44,54,'com.aps.hainguyen273.app2card');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,2,0),(5,3,0),(6,14,0),(7,24,0),(8,25,0),(9,26,0),(10,27,0),(11,28,0),(12,29,0),(13,30,0),(14,27,0),(15,28,0),(16,29,0),(17,30,0),(18,27,0),(19,28,0),(20,29,0),(21,30,0),(22,27,0),(23,28,0),(24,29,0),(25,30,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,4,0,0),(3,5,1,0),(4,6,1,0),(5,7,1,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,11,0,0),(10,12,0,0),(11,13,0,0),(12,14,0,0),(13,15,0,0),(14,16,0,0),(15,17,1,0),(16,18,0,0),(17,19,0,0),(18,20,0,0),(19,21,0,0),(20,22,1,0),(21,23,0,0),(22,23,0,0),(23,23,0,0),(24,23,0,0),(25,23,0,0),(26,23,0,0),(27,23,0,0),(28,23,0,0),(29,24,0,0),(30,25,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,1,0),(35,30,1,0),(36,31,0,0),(37,32,0,0),(38,33,0,0),(39,34,0,0),(40,35,0,0),(41,36,0,0),(42,37,0,0),(43,38,0,0),(44,39,0,0),(45,40,1,0),(46,41,0,0),(47,42,0,0),(48,43,0,0),(49,44,0,0),(50,45,1,0),(51,45,1,0),(52,46,0,0),(53,47,0,0),(54,48,0,0),(55,49,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (3,'android.permission.READ_CONTACTS'),(5,'android.permission.REBOOT'),(2,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(3,NULL,NULL,'http://uploaderis.ru/',NULL,NULL,NULL),(4,NULL,NULL,'http://uploaderis.ru/',NULL,NULL,NULL),(5,NULL,NULL,'http://mobi-co.in/r.php?r=aHR0cDovL21vYmktY28uaW4vbG9hZC5waHA/ZD1ncCZmPTEyMjMmcz0yMzA2/',NULL,NULL,NULL),(6,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5);
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

-- Dump completed on 2015-10-09  0:41:01
