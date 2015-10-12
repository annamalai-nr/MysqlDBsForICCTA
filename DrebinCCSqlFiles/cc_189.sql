-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_189
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.SEND'),(4,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(13,'android.intent.action.WEB_SEARCH'),(5,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'android.settings.APPLICATION_SETTINGS'),(10,'com.aps.VisualShell.action.CONTROL_UPDATED'),(12,'com.aps.VisualShell.action.IMAGE_SELECTED'),(11,'com.aps.VisualShell.action.RESULT_RETURNED'),(9,'com.aps.hainguyen273.app2card.action.RunningMonitor'),(7,'flashrec.status_update.download'),(8,'flashrec.status_update.flash');
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
INSERT INTO `Applications` VALUES (1,'uk.co.extorian.EICARAntiVirusTest',1),(2,'com.z4mod.z4root',4),(3,'com.ysler.wps.car',120),(4,'org.zenthought.flashrec',4),(5,'com.aps.hainguyen273.app2card',285),(6,'com.ANTIVIRUS.TESTFILE',251),(7,'com.z4mod.z4root',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity'),(2,2,'com.z4mod.z4root.z4root'),(3,2,'com.z4mod.z4root.Phase1'),(4,2,'com.z4mod.z4root.Phase2'),(5,2,'com.z4mod.z4root.PhaseRemove'),(6,2,'com.z4mod.z4root.TermPreferences'),(7,2,'com.z4mod.z4root.AlarmReceiver'),(8,3,'com.ysler.wps.base.Main'),(9,4,'org.zenthought.flashrec.FlashRec'),(10,4,'org.zenthought.flashrec.FlashServ'),(11,4,'org.zenthought.flashrec.DownloadServ'),(12,1,'uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity$2'),(13,3,'com.ysler.wps.base.Main$9'),(14,2,'com.z4mod.z4root.z4root$2'),(15,3,'com.ysler.wps.base.Main$10'),(16,2,'com.z4mod.z4root.Phase1$4'),(17,5,'com.aps.hainguyen273.app2card.MainActivity'),(18,5,'com.aps.hainguyen273.app2card.InstallActivity'),(19,6,'com.ANTIVIRUS.TESTFILE.MainActivity'),(20,5,'com.aps.hainguyen273.app2card.Application_Tools'),(21,2,'com.z4mod.z4root.z4root$1'),(22,5,'com.aps.hainguyen273.app2card.ErrorTools'),(23,6,'com.mobfox.sdk.InAppWebView'),(24,5,'com.aps.hainguyen273.app2card.Wipe_Tools'),(25,5,'com.aps.hainguyen273.app2card.Data_Tools'),(26,5,'com.aps.hainguyen273.app2card.AppTools_BackupRestore'),(27,5,'com.aps.hainguyen273.app2card.AppTools_BlockUnblock'),(28,5,'com.aps.hainguyen273.app2card.FroyoTools'),(29,7,'com.z4mod.z4root.z4root'),(30,5,'com.aps.hainguyen273.app2card.SelectBackupActivity'),(31,5,'com.aps.hainguyen273.app2card.PartitionActivity'),(32,5,'com.aps.hainguyen273.app2card.StorageToolsActivity'),(33,7,'com.z4mod.z4root.Phase1'),(34,5,'com.aps.hainguyen273.app2card.Partition_mode'),(35,7,'com.z4mod.z4root.Phase2'),(36,5,'com.aps.hainguyen273.app2card.PartitionActivity2'),(37,7,'com.z4mod.z4root.PhaseRemove'),(38,7,'com.admob.android.ads.AdMobActivity'),(39,5,'com.aps.hainguyen273.app2card.About'),(40,7,'com.z4mod.z4root.AlarmReceiver'),(41,5,'com.aps.hainguyen273.app2card.ManageAppsActivity'),(42,5,'com.aps.hainguyen273.app2card.ScriptRunnerActivity'),(43,5,'com.aps.hainguyen273.app2card.DialogActivity'),(44,5,'com.aps.hainguyen273.app2card.InputBoxActivity'),(45,5,'com.aps.hainguyen273.app2card.MessageActivity'),(46,5,'com.aps.hainguyen273.app2card.FileChoserActivity'),(47,5,'com.aps.hainguyen273.app2card.ToastMessageActivity'),(48,5,'com.aps.hainguyen273.app2card.ListBoxActivity'),(49,5,'com.aps.hainguyen273.app2card.SelectIconFromSdActivity'),(50,5,'com.aps.hainguyen273.app2card.AppBrowserActivity'),(51,5,'com.aps.hainguyen273.app2card.ProgressBarActivity'),(52,7,'com.z4mod.z4root.z4root$3'),(53,7,'com.z4mod.z4root.Phase1$4'),(54,7,'com.z4mod.z4root.z4root$1'),(55,7,'com.z4mod.z4root.z4root$2'),(56,4,'org.zenthought.flashrec.FlashRec$4'),(57,4,'org.zenthought.flashrec.FlashRecAsyncService'),(58,4,'org.zenthought.flashrec.FlashRec$1'),(59,5,'com.aps.hainguyen273.app2card.BaseScriptCallerActivity'),(60,5,'com.aps.hainguyen273.app2card.BaseScriptCallerActivity$1'),(61,5,'com.aps.hainguyen273.app2card.ScriptRunnerActivity$1'),(62,5,'com.aps.hainguyen273.app2card.ControlListActivity$1'),(63,5,'com.aps.hainguyen273.app2card.ControlActivity$1'),(64,5,'com.aps.hainguyen273.app2card.ControlListActivity'),(65,5,'com.aps.hainguyen273.app2card.ControlActivity'),(66,5,'com.aps.hainguyen273.app2card.MainActivity$7'),(67,5,'com.aps.hainguyen273.app2card.PartitionActivity2$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'REDIRECT_URI'),(2,32,'sd'),(3,32,'sc'),(4,32,'msm'),(5,32,'int'),(6,32,'u'),(7,32,'o'),(8,32,'s'),(9,32,'au'),(10,32,'json'),(11,32,'rd'),(12,32,'t'),(13,32,'b'),(14,32,'a'),(15,32,'or'),(16,32,'mi'),(17,32,'skd'),(18,32,'ru'),(19,32,'p'),(20,32,'c'),(21,32,'su'),(22,32,'tr'),(23,32,'sku'),(24,32,'nosk'),(25,32,'si'),(26,32,'oi'),(27,32,'cs'),(28,32,'sin'),(29,32,'cbo'),(30,32,'ad'),(31,32,'ap'),(32,32,'$'),(33,10,'command'),(34,11,'command'),(35,9,'status_message'),(36,9,'progress_total'),(37,9,'status'),(38,10,'validate_before'),(39,11,'validate_before'),(40,10,'validate_after'),(41,11,'validate_after'),(42,9,'url'),(43,9,'job'),(44,10,'file'),(45,11,'file'),(46,9,'progress'),(47,44,'control'),(48,36,'showLog'),(49,13,'install'),(50,42,'control'),(51,38,'control'),(52,37,'control'),(53,45,'control'),(54,41,'control'),(55,39,'control'),(56,40,'control'),(57,30,'enabled'),(58,36,'oldLog'),(59,36,'command'),(60,36,'processName'),(61,36,'shFilePath'),(62,36,'noRun');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,17,'a',1,NULL,NULL),(13,18,'a',1,NULL,NULL),(14,19,'a',1,NULL,NULL),(15,20,'a',0,NULL,NULL),(16,22,'a',0,NULL,NULL),(17,23,'a',0,NULL,NULL),(18,24,'a',0,NULL,NULL),(19,25,'a',0,NULL,NULL),(20,26,'a',0,NULL,NULL),(21,27,'a',0,NULL,NULL),(22,28,'a',0,NULL,NULL),(23,29,'a',1,NULL,NULL),(24,30,'a',0,NULL,NULL),(25,31,'a',0,NULL,NULL),(26,32,'a',0,NULL,NULL),(27,33,'a',0,NULL,NULL),(28,34,'a',0,NULL,NULL),(29,35,'a',0,NULL,NULL),(30,36,'a',1,NULL,NULL),(31,37,'a',0,NULL,NULL),(32,38,'a',0,NULL,NULL),(33,39,'a',0,NULL,NULL),(34,40,'r',0,NULL,NULL),(35,41,'a',0,NULL,NULL),(36,42,'a',1,NULL,NULL),(37,43,'a',0,NULL,NULL),(38,44,'a',0,NULL,NULL),(39,45,'a',0,NULL,NULL),(40,46,'a',0,NULL,NULL),(41,47,'a',0,NULL,NULL),(42,48,'a',0,NULL,NULL),(43,49,'a',0,NULL,NULL),(44,50,'a',0,NULL,NULL),(45,51,'a',0,NULL,NULL),(46,58,'r',1,NULL,NULL),(47,60,'r',1,NULL,NULL),(48,61,'r',1,NULL,NULL),(49,62,'r',1,NULL,NULL),(50,63,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,8),(3,3,8),(4,4,8),(5,5,7),(6,6,8),(7,7,2),(8,8,8),(9,9,3),(10,10,3),(11,11,2),(12,12,34),(13,13,23),(14,14,23),(15,15,27),(16,16,23),(17,17,23),(18,18,27),(19,19,9),(20,20,9),(21,21,9),(22,22,11),(23,22,10),(24,23,44),(25,23,12),(26,23,13),(27,23,25),(28,23,40),(29,23,24),(30,23,36),(31,23,35),(32,23,30),(33,24,22),(34,25,16),(35,26,15),(36,27,21),(37,28,28),(38,29,12),(39,30,18),(40,31,16),(41,32,16),(42,33,15),(43,34,20),(44,35,20),(45,36,20),(46,37,12),(47,38,16),(48,39,18),(49,40,44),(50,41,15),(51,42,12),(52,43,12),(53,43,13),(54,43,44),(55,43,30),(56,43,36),(57,43,35),(58,43,24),(59,43,25),(60,43,40),(61,44,12),(62,45,26),(63,46,19),(64,47,21),(65,48,39),(66,48,40),(67,48,41),(68,48,42),(69,48,45),(70,48,37),(71,48,38),(72,49,43),(73,50,16),(74,51,19),(75,52,18),(76,53,15),(77,54,12),(78,55,15),(79,56,12),(80,57,12),(81,58,12),(82,59,15),(83,60,28),(84,61,20),(85,62,15),(86,63,18),(87,64,26),(88,65,22),(89,66,13),(90,67,15),(91,68,18),(92,69,12),(93,70,36),(94,70,35),(95,70,30),(96,70,13),(97,70,44),(98,70,25),(99,70,12),(100,70,40),(101,70,24),(102,71,26),(103,72,21),(104,73,16),(105,74,12),(106,75,12),(107,76,19),(108,77,35),(109,78,30),(110,79,26),(111,80,26),(112,81,12),(113,82,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,12,'<uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(2,8,'<com.ysler.wps.base.Main: void doShareBySMS(java.lang.String)>',24,'a',NULL),(3,13,'<com.ysler.wps.base.Main$9: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(4,8,'<com.ysler.wps.base.Main: void doShareByEmail(java.lang.String)>',10,'a',NULL),(5,7,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(6,8,'<com.ysler.wps.base.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(7,14,'<com.z4mod.z4root.z4root$2: void onClick(android.view.View)>',12,'a',NULL),(8,15,'<com.ysler.wps.base.Main$10: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,16,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,16,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(11,21,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',12,'a',NULL),(12,40,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(13,52,'<com.z4mod.z4root.z4root$3: void onClick(android.view.View)>',20,'a',NULL),(14,29,'<com.z4mod.z4root.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(15,53,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(16,54,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',17,'a',NULL),(17,55,'<com.z4mod.z4root.z4root$2: void onClick(android.view.View)>',17,'a',NULL),(18,53,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,56,'<org.zenthought.flashrec.FlashRec$4: void onClick(android.view.View)>',26,'s',NULL),(20,9,'<org.zenthought.flashrec.FlashRec: void dump_image(java.io.File)>',23,'s',NULL),(21,9,'<org.zenthought.flashrec.FlashRec: void flash_image(java.io.File)>',23,'s',NULL),(22,57,'<org.zenthought.flashrec.FlashRecAsyncService: void sendUpdateBroadcast()>',2,'r',NULL),(23,59,'<com.aps.hainguyen273.app2card.BaseScriptCallerActivity: void sendScriptRunningResult(android.app.Activity,java.lang.String,java.lang.String)>',8,'r',NULL),(24,28,'<com.aps.hainguyen273.app2card.FroyoTools: void onClick(android.view.View)>',17,'a',NULL),(25,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',41,'a',NULL),(26,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',22,'a',NULL),(27,27,'<com.aps.hainguyen273.app2card.AppTools_BlockUnblock: void onClick(android.view.View)>',27,'a',NULL),(28,34,'<com.aps.hainguyen273.app2card.Partition_mode: void onClick(android.view.View)>',13,'a',NULL),(29,17,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(30,24,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',9,'a',NULL),(31,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',49,'a',NULL),(32,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',25,'a',NULL),(33,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',9,'a',NULL),(34,26,'<com.aps.hainguyen273.app2card.AppTools_BackupRestore: void onClick(android.view.View)>',9,'a',NULL),(35,26,'<com.aps.hainguyen273.app2card.AppTools_BackupRestore: void onClick(android.view.View)>',25,'a',NULL),(36,26,'<com.aps.hainguyen273.app2card.AppTools_BackupRestore: void onClick(android.view.View)>',33,'a',NULL),(37,17,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(38,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',9,'a',NULL),(39,24,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',17,'a',NULL),(40,64,'<com.aps.hainguyen273.app2card.ControlListActivity: void returnResult(java.lang.String,boolean)>',7,'r',NULL),(41,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',38,'a',NULL),(42,17,'<com.aps.hainguyen273.app2card.MainActivity: void onCheckedChanged(android.widget.CompoundButton,boolean)>',9,'a',NULL),(43,42,'<com.aps.hainguyen273.app2card.ScriptRunnerActivity: void showControl(java.lang.String)>',36,'a',NULL),(44,17,'<com.aps.hainguyen273.app2card.MainActivity: void onCheckedChanged(android.widget.CompoundButton,boolean)>',16,'a',NULL),(45,32,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',22,'a',NULL),(46,25,'<com.aps.hainguyen273.app2card.Data_Tools: void onClick(android.view.View)>',25,'a',NULL),(47,27,'<com.aps.hainguyen273.app2card.AppTools_BlockUnblock: void onClick(android.view.View)>',9,'a',NULL),(48,65,'<com.aps.hainguyen273.app2card.ControlActivity: void returnResult(java.lang.String,boolean)>',7,'r',NULL),(49,49,'<com.aps.hainguyen273.app2card.SelectIconFromSdActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'r',NULL),(50,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',33,'a',NULL),(51,25,'<com.aps.hainguyen273.app2card.Data_Tools: void onClick(android.view.View)>',17,'a',NULL),(52,24,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',33,'a',NULL),(53,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',30,'a',NULL),(54,17,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',32,'a',NULL),(55,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',46,'a',NULL),(56,17,'<com.aps.hainguyen273.app2card.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(57,17,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',17,'a',NULL),(58,17,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',8,'a',NULL),(59,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',59,'a',NULL),(60,34,'<com.aps.hainguyen273.app2card.Partition_mode: void onClick(android.view.View)>',7,'a',NULL),(61,26,'<com.aps.hainguyen273.app2card.AppTools_BackupRestore: void onClick(android.view.View)>',17,'a',NULL),(62,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',54,'a',NULL),(63,24,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',41,'a',NULL),(64,32,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',35,'a',NULL),(65,28,'<com.aps.hainguyen273.app2card.FroyoTools: void onClick(android.view.View)>',9,'a',NULL),(66,18,'<com.aps.hainguyen273.app2card.InstallActivity: void install(boolean)>',16,'a',NULL),(67,20,'<com.aps.hainguyen273.app2card.Application_Tools: void onClick(android.view.View)>',17,'a',NULL),(68,24,'<com.aps.hainguyen273.app2card.Wipe_Tools: void onClick(android.view.View)>',25,'a',NULL),(69,17,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(70,42,'<com.aps.hainguyen273.app2card.ScriptRunnerActivity: void showControl(java.lang.String)>',48,'r',NULL),(71,32,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',14,'a',NULL),(72,27,'<com.aps.hainguyen273.app2card.AppTools_BlockUnblock: void onClick(android.view.View)>',35,'a',NULL),(73,22,'<com.aps.hainguyen273.app2card.ErrorTools: void onClick(android.view.View)>',17,'a',NULL),(74,17,'<com.aps.hainguyen273.app2card.MainActivity: boolean applyMenuChoice(android.view.MenuItem)>',12,'a',NULL),(75,66,'<com.aps.hainguyen273.app2card.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(76,25,'<com.aps.hainguyen273.app2card.Data_Tools: void onClick(android.view.View)>',9,'a',NULL),(77,41,'<com.aps.hainguyen273.app2card.ManageAppsActivity: void onClick(android.view.View)>',22,'a',NULL),(78,67,'<com.aps.hainguyen273.app2card.PartitionActivity2$1: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(79,32,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',27,'a',NULL),(80,32,'<com.aps.hainguyen273.app2card.StorageToolsActivity: void onClick(android.view.View)>',6,'a',NULL),(81,17,'<com.aps.hainguyen273.app2card.MainActivity: void onClick(android.view.View)>',28,'a',NULL),(82,27,'<com.aps.hainguyen273.app2card.AppTools_BlockUnblock: void onClick(android.view.View)>',17,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,3),(5,6,4),(6,8,2),(7,9,5),(8,10,6),(9,16,6),(10,19,5),(11,23,7),(12,24,7),(13,25,8),(14,26,8),(15,27,9),(16,28,9),(17,45,11),(18,60,11),(19,61,12),(20,70,13),(21,82,10),(22,89,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/z4mod/z4root/Phase2'),(2,7,'com/z4mod/z4root/PhaseRemove'),(3,11,'com/z4mod/z4root/Phase1'),(4,12,'com/z4mod/z4root/Phase2'),(5,13,'com/z4mod/z4root/PhaseRemove'),(6,14,'com/z4mod/z4root/Phase1'),(7,15,'com/z4mod/z4root/z4root'),(8,17,'com/z4mod/z4root/Phase1'),(9,18,'com/z4mod/z4root/Phase1'),(10,20,'org/zenthought/flashrec/DownloadServ'),(11,21,'org/zenthought/flashrec/FlashServ'),(12,22,'org/zenthought/flashrec/FlashServ'),(13,29,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(14,30,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(15,31,'com/aps/hainguyen273/app2card/AppTools_BackupRestore'),(16,32,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(17,33,'com/aps/hainguyen273/app2card/PartitionActivity2'),(18,34,'com/aps/hainguyen273/app2card/FroyoTools'),(19,35,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(20,36,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(21,37,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(22,38,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(23,39,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(24,40,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(25,41,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(26,42,'com/aps/hainguyen273/app2card/StorageToolsActivity'),(27,43,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(28,44,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(29,46,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(30,47,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(31,48,'com/aps/hainguyen273/app2card/ListBoxActivity'),(32,49,'com/aps/hainguyen273/app2card/MessageActivity'),(33,50,'com/aps/hainguyen273/app2card/FileChoserActivity'),(34,51,'com/aps/hainguyen273/app2card/AppBrowserActivity'),(35,52,'com/aps/hainguyen273/app2card/DialogActivity'),(36,53,'com/aps/hainguyen273/app2card/ProgressBarActivity'),(37,54,'com/aps/hainguyen273/app2card/ToastMessageActivity'),(38,55,'com/aps/hainguyen273/app2card/InputBoxActivity'),(39,56,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(40,57,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(41,58,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(42,59,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(43,62,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(44,63,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(45,64,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(46,65,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(47,66,'com/aps/hainguyen273/app2card/ErrorTools'),(48,67,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(49,68,'com/aps/hainguyen273/app2card/InstallActivity'),(50,69,'com/aps/hainguyen273/app2card/InstallActivity'),(51,71,'com/aps/hainguyen273/app2card/AppTools_BlockUnblock'),(52,72,'com/aps/hainguyen273/app2card/PartitionActivity2'),(53,73,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(54,74,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(55,75,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(56,76,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(57,77,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(58,78,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(59,79,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(60,80,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(61,81,'com/aps/hainguyen273/app2card/InstallActivity'),(62,83,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(63,84,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(64,85,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(65,86,'com/aps/hainguyen273/app2card/About'),(66,87,'com/aps/hainguyen273/app2card/PartitionActivity2'),(67,88,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(68,90,'com/aps/hainguyen273/app2card/ScriptRunnerActivity'),(69,91,'com/aps/hainguyen273/app2card/Wipe_Tools'),(70,92,'com/aps/hainguyen273/app2card/Partition_mode'),(71,93,'com/aps/hainguyen273/app2card/Application_Tools'),(72,94,'com/aps/hainguyen273/app2card/ScriptRunnerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,6,3),(4,8,4),(5,20,5),(6,23,6),(7,24,7),(8,25,8),(9,26,9),(10,89,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'sms_body'),(2,4,'android.intent.extra.TEXT'),(3,4,'android.intent.extra.SUBJECT'),(4,6,'android.intent.extra.SUBJECT'),(5,20,'file'),(6,20,'url'),(7,21,'command'),(8,21,'job'),(9,21,'validate_after'),(10,22,'validate_before'),(11,22,'command'),(12,22,'job'),(13,23,'status'),(14,23,'status_message'),(15,24,'(.*)'),(16,25,'status'),(17,25,'status_message'),(18,26,'(.*)'),(19,27,'what'),(20,27,'fullResult'),(21,28,'lastLine'),(22,28,'what'),(23,29,'showLog'),(24,29,'processName'),(25,29,'command'),(26,30,'showLog'),(27,30,'processName'),(28,30,'command'),(29,32,'showLog'),(30,32,'processName'),(31,32,'command'),(32,33,'enabled'),(33,35,'showLog'),(34,35,'processName'),(35,35,'command'),(36,36,'showLog'),(37,36,'processName'),(38,36,'command'),(39,37,'showLog'),(40,37,'processName'),(41,37,'command'),(42,38,'showLog'),(43,38,'processName'),(44,38,'command'),(45,39,'showLog'),(46,39,'processName'),(47,39,'command'),(48,40,'showLog'),(49,40,'processName'),(50,40,'command'),(51,41,'showLog'),(52,41,'processName'),(53,41,'command'),(54,43,'showLog'),(55,43,'processName'),(56,43,'command'),(57,44,'showLog'),(58,44,'processName'),(59,44,'command'),(60,45,'value'),(61,46,'showLog'),(62,46,'processName'),(63,46,'command'),(64,47,'showLog'),(65,47,'processName'),(66,47,'command'),(67,48,'control'),(68,49,'control'),(69,50,'control'),(70,51,'control'),(71,52,'control'),(72,53,'control'),(73,54,'control'),(74,55,'control'),(75,56,'showLog'),(76,56,'processName'),(77,56,'command'),(78,57,'showLog'),(79,57,'processName'),(80,57,'command'),(81,58,'showLog'),(82,58,'processName'),(83,58,'command'),(84,59,'showLog'),(85,59,'processName'),(86,59,'command'),(87,60,'value'),(88,61,'imagePath'),(89,62,'showLog'),(90,62,'processName'),(91,62,'command'),(92,63,'showLog'),(93,63,'processName'),(94,63,'command'),(95,64,'showLog'),(96,64,'processName'),(97,64,'command'),(98,65,'showLog'),(99,65,'processName'),(100,65,'command'),(101,67,'showLog'),(102,67,'processName'),(103,67,'command'),(104,69,'install'),(105,70,'query'),(106,72,'enabled'),(107,73,'showLog'),(108,73,'processName'),(109,73,'command'),(110,74,'showLog'),(111,74,'processName'),(112,74,'command'),(113,75,'showLog'),(114,75,'processName'),(115,75,'command'),(116,76,'showLog'),(117,76,'processName'),(118,76,'command'),(119,77,'showLog'),(120,77,'processName'),(121,77,'command'),(122,78,'showLog'),(123,78,'processName'),(124,78,'command'),(125,79,'showLog'),(126,79,'processName'),(127,79,'command'),(128,80,'showLog'),(129,80,'processName'),(130,80,'command'),(131,81,'install'),(132,82,'control'),(133,83,'showLog'),(134,83,'processName'),(135,83,'command'),(136,84,'showLog'),(137,84,'processName'),(138,84,'command'),(139,85,'showLog'),(140,85,'processName'),(141,85,'command'),(142,88,'showLog'),(143,88,'processName'),(144,88,'command'),(145,90,'showLog'),(146,90,'processName'),(147,90,'command'),(148,94,'showLog'),(149,94,'processName'),(150,94,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,8),(12,11,7),(13,12,10),(14,13,10),(15,14,10),(16,15,10),(17,16,9),(18,17,9),(19,18,9),(20,19,9),(21,20,11),(22,21,11),(23,22,11),(24,23,11),(25,24,10),(26,25,10),(27,26,10),(28,27,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'vnd.android-dir','mms-sms'),(2,4,'message','rfc882');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.z4mod.z4root'),(2,7,'com.z4mod.z4root'),(3,11,'com.z4mod.z4root'),(4,12,'com.z4mod.z4root'),(5,13,'com.z4mod.z4root'),(6,14,'com.z4mod.z4root'),(7,15,'com.z4mod.z4root'),(8,17,'com.z4mod.z4root'),(9,18,'com.z4mod.z4root'),(10,20,'org.zenthought.flashrec'),(11,21,'org.zenthought.flashrec'),(12,22,'org.zenthought.flashrec'),(13,29,'com.aps.hainguyen273.app2card'),(14,30,'com.aps.hainguyen273.app2card'),(15,31,'com.aps.hainguyen273.app2card'),(16,32,'com.aps.hainguyen273.app2card'),(17,33,'com.aps.hainguyen273.app2card'),(18,34,'com.aps.hainguyen273.app2card'),(19,35,'com.aps.hainguyen273.app2card'),(20,36,'com.aps.hainguyen273.app2card'),(21,37,'com.aps.hainguyen273.app2card'),(22,38,'com.aps.hainguyen273.app2card'),(23,39,'com.aps.hainguyen273.app2card'),(24,40,'com.aps.hainguyen273.app2card'),(25,41,'com.aps.hainguyen273.app2card'),(26,42,'com.aps.hainguyen273.app2card'),(27,43,'com.aps.hainguyen273.app2card'),(28,44,'com.aps.hainguyen273.app2card'),(29,46,'com.aps.hainguyen273.app2card'),(30,47,'com.aps.hainguyen273.app2card'),(31,48,'com.aps.hainguyen273.app2card'),(32,49,'com.aps.hainguyen273.app2card'),(33,50,'com.aps.hainguyen273.app2card'),(34,51,'com.aps.hainguyen273.app2card'),(35,52,'com.aps.hainguyen273.app2card'),(36,53,'com.aps.hainguyen273.app2card'),(37,54,'com.aps.hainguyen273.app2card'),(38,55,'com.aps.hainguyen273.app2card'),(39,56,'com.aps.hainguyen273.app2card'),(40,57,'com.aps.hainguyen273.app2card'),(41,58,'com.aps.hainguyen273.app2card'),(42,59,'com.aps.hainguyen273.app2card'),(43,62,'com.aps.hainguyen273.app2card'),(44,63,'com.aps.hainguyen273.app2card'),(45,64,'com.aps.hainguyen273.app2card'),(46,65,'com.aps.hainguyen273.app2card'),(47,66,'com.aps.hainguyen273.app2card'),(48,67,'com.aps.hainguyen273.app2card'),(49,68,'com.aps.hainguyen273.app2card'),(50,69,'com.aps.hainguyen273.app2card'),(51,71,'com.aps.hainguyen273.app2card'),(52,72,'com.aps.hainguyen273.app2card'),(53,73,'com.aps.hainguyen273.app2card'),(54,74,'com.aps.hainguyen273.app2card'),(55,75,'com.aps.hainguyen273.app2card'),(56,76,'com.aps.hainguyen273.app2card'),(57,77,'com.aps.hainguyen273.app2card'),(58,78,'com.aps.hainguyen273.app2card'),(59,79,'com.aps.hainguyen273.app2card'),(60,80,'com.aps.hainguyen273.app2card'),(61,81,'com.aps.hainguyen273.app2card'),(62,83,'com.aps.hainguyen273.app2card'),(63,84,'com.aps.hainguyen273.app2card'),(64,85,'com.aps.hainguyen273.app2card'),(65,86,'com.aps.hainguyen273.app2card'),(66,87,'com.aps.hainguyen273.app2card'),(67,88,'com.aps.hainguyen273.app2card'),(68,90,'com.aps.hainguyen273.app2card'),(69,91,'com.aps.hainguyen273.app2card'),(70,92,'com.aps.hainguyen273.app2card'),(71,93,'com.aps.hainguyen273.app2card'),(72,94,'com.aps.hainguyen273.app2card');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,8,0),(4,9,0),(5,12,0),(6,13,0),(7,14,0),(8,23,0),(9,30,0),(10,36,0),(11,46,0),(12,47,0),(13,48,0),(14,49,0),(15,50,0),(16,47,0),(17,48,0),(18,49,0),(19,50,0),(20,47,0),(21,48,0),(22,49,0),(23,50,0),(24,47,0),(25,48,0),(26,49,0),(27,50,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,13,0,0),(15,14,0,0),(16,15,1,0),(17,16,0,0),(18,17,0,0),(19,18,1,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,1,0),(24,22,1,0),(25,22,1,0),(26,22,1,0),(27,23,1,0),(28,23,1,0),(29,24,0,0),(30,25,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,0,0),(35,30,0,0),(36,31,0,0),(37,32,0,0),(38,33,0,0),(39,34,0,0),(40,35,0,0),(41,36,0,0),(42,37,0,0),(43,38,0,0),(44,39,0,0),(45,40,1,0),(46,41,0,0),(47,42,0,0),(48,43,0,0),(49,43,0,0),(50,43,0,0),(51,43,0,0),(52,43,0,0),(53,43,0,0),(54,43,0,0),(55,43,0,0),(56,44,0,0),(57,45,0,0),(58,46,0,0),(59,47,0,0),(60,48,1,0),(61,49,1,0),(62,50,0,0),(63,51,0,0),(64,52,0,0),(65,53,0,0),(66,54,0,0),(67,55,0,0),(68,56,0,0),(69,57,0,0),(70,58,1,0),(71,59,0,0),(72,60,0,0),(73,61,0,0),(74,62,0,0),(75,63,0,0),(76,64,0,0),(77,65,0,0),(78,66,0,0),(79,67,0,0),(80,68,0,0),(81,69,0,0),(82,70,1,0),(83,71,0,0),(84,72,0,0),(85,73,0,0),(86,74,0,0),(87,75,0,0),(88,76,0,0),(89,77,1,0),(90,78,0,0),(91,79,0,0),(92,80,0,0),(93,81,0,0),(94,82,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.BLUETOOTH'),(8,'android.permission.BLUETOOTH_ADMIN'),(4,'android.permission.INTERNET'),(2,'android.permission.READ_PHONE_STATE'),(9,'android.permission.REBOOT'),(3,'android.permission.SET_WALLPAPER'),(1,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://extorian.co.uk/donate.html?utm_source=eicar_anti_virus_test&utm_medium=android_app&utm_campaign=eicar_anti_virus_test',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'mailto:support@ysler.com',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:Ysler',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(7,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(8,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,3,2),(3,3,3),(4,3,4),(5,3,5),(6,3,6),(7,4,4),(8,4,7),(9,4,8),(10,5,5),(11,5,9),(12,6,4),(13,6,6),(14,6,10),(15,7,1),(16,7,4);
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

-- Dump completed on 2015-10-09  0:38:29
