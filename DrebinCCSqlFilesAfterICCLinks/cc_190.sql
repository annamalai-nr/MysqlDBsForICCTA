-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_190
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
INSERT INTO `ActionStrings` VALUES (2,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(9,'android.intent.action.EDIT'),(8,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.MEDIA_UNMOUNTED'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.VIEW'),(13,'android.provider.MediaStore.RECORD_SOUND'),(6,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(4,'android.settings.APPLICATION_SETTINGS'),(5,'com.rechild.advancedtaskkiller.intent.action.IgnoreList'),(3,'com.rechild.intent.action.ADVANCED_TASK_KILLER_FREE'),(12,'lstar.mdl.intent.action.DOWNLOAD_MOVE');
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
INSERT INTO `Applications` VALUES (1,'one.click.recovery',2),(2,'com.corner23.android.universalandroot',12),(3,'com.magic.spiral',2),(4,'com.droiddream.advancedtaskkiller1',64),(5,'com.beauty.leg',1),(6,'com.droiddream.sex',1),(7,'com.super.mp3ringtone',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'one.click.recovery.OneClickRecovery'),(2,1,'one.click.recovery.Phase1'),(3,1,'one.click.recovery.Phase2'),(4,1,'one.click.recovery.AlarmReceiver'),(5,2,'com.corner23.android.universalandroot.UniversalAndroot'),(6,3,'com.mikeperrow.spiral.SpiralActivity'),(7,3,'com.android.root.main'),(8,2,'com.corner23.android.universalandroot.service.SoftRootService'),(9,2,'com.corner23.android.universalandroot.receiver.WidgetProvider'),(10,3,'com.android.root.Setting'),(11,3,'com.android.root.AlarmReceiver'),(12,1,'one.click.recovery.Phase1$4'),(13,4,'com.rechild.advancedtaskkiller.AdvancedTaskKiller'),(14,4,'com.android.root.main'),(15,1,'one.click.recovery.OneClickRecovery$1'),(16,4,'com.rechild.advancedtaskkiller.NewSettings'),(17,4,'com.rechild.advancedtaskkiller.IgnoreListActivity'),(18,4,'com.android.root.Setting'),(19,4,'com.android.root.AlarmReceiver'),(20,4,'com.rechild.advancedtaskkiller.BackService'),(21,4,'com.rechild.advancedtaskkiller.AutoStartReceiver'),(22,4,'com.rechild.advancedtaskkiller.OneClickAppWidgetProvider'),(23,4,'com.rechild.advancedtaskkiller.AlarmReceiver'),(24,5,'cn.beauty.leg.Bearutyleg'),(25,5,'com.android.root.main'),(26,5,'com.android.root.Setting'),(27,5,'com.android.root.AlarmReceiver'),(28,6,'com.xianzhisoft.sex.SexActivity'),(29,6,'com.xianzhisoft.sex.contentactivity'),(30,6,'com.android.root.main'),(31,6,'com.android.root.Setting'),(32,6,'com.android.root.AlarmReceiver'),(33,7,'net.lucky.star.mrtm.HomeActivity'),(34,7,'net.lucky.star.mrtm.SearchActivity'),(35,7,'net.lucky.star.mrtm.LibraryActivity'),(36,7,'net.lucky.star.mrtm.editor.RingtoneSelectActivity'),(37,7,'net.lucky.star.mrtm.editor.RingtoneEditActivity'),(38,7,'net.lucky.star.mrtm.editor.ChooseContactActivity'),(39,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(40,7,'com.millennialmedia.android.VideoPlayer'),(41,7,'com.android.root.main'),(42,7,'net.lucky.star.mrtm.srv.DownloadService'),(43,7,'com.android.root.Setting'),(44,7,'com.android.root.AlarmReceiver'),(45,7,'net.lucky.star.mrtm.srv.DownloadReceiver'),(46,7,'net.lucky.star.mrtm.db.DownloadedProvider'),(47,7,'net.lucky.star.mrtm.db.DownloadListProvider'),(48,6,'com.xianzhisoft.sex.SexActivity$1'),(49,4,'com.rechild.advancedtaskkiller.ScreenOffReceiver'),(50,4,'com.rechild.advancedtaskkiller.CommonLibrary'),(51,4,'com.rechild.advancedtaskkiller.AdvancedTaskKiller$2'),(52,7,'net.lucky.star.mrtm.srv.DownloadThread'),(53,7,'net.lucky.star.mrtm.srv.DownloadNotification'),(54,7,'net.lucky.star.mrtm.srv.DownloadService$UpdateThread'),(55,7,'net.lucky.star.mrtm.srv.DownloadService$MyMediaScannerConnection'),(56,7,'net.lucky.star.mrtm.HomeActivity$4'),(57,7,'net.lucky.star.mrtm.HomeActivity$3'),(58,7,'net.lucky.star.mrtm.HomeActivity$1'),(59,7,'net.lucky.star.mrtm.LibraryActivity$3'),(60,7,'net.lucky.star.mrtm.LibraryActivity$1'),(61,7,'net.lucky.star.mrtm.HomeActivity$2');
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
INSERT INTO `ComponentExtras` VALUES (1,9,'appWidgetId'),(2,8,'root'),(3,8,'result'),(4,26,'UMENG_APPKEY'),(5,27,'UMENG_APPKEY'),(6,27,'key'),(7,26,'UMENG_CHANNEL'),(8,27,'UMENG_CHANNEL'),(9,37,'shouldShowNavbar'),(10,37,'overlayTitle'),(11,37,'shouldResizeOverlay'),(12,35,'was_get_content_intent'),(13,37,'overlayTransition'),(14,37,'shouldShowTitlebar'),(15,37,'canAccelerate'),(16,37,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,13,'a',1,NULL,NULL),(13,14,'a',1,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',1,NULL,NULL),(16,18,'s',0,NULL,NULL),(17,19,'s',0,NULL,NULL),(18,20,'s',1,NULL,NULL),(19,21,'r',1,NULL,NULL),(20,22,'r',1,NULL,NULL),(21,23,'r',0,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',1,NULL,NULL),(24,26,'s',0,NULL,NULL),(25,27,'s',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',1,NULL,NULL),(29,31,'s',0,NULL,NULL),(30,32,'s',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',1,NULL,NULL),(35,37,'a',1,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'a',0,NULL,NULL),(39,41,'a',1,NULL,NULL),(40,42,'s',0,NULL,NULL),(41,43,'s',0,NULL,NULL),(42,44,'s',0,NULL,NULL),(43,45,'r',0,NULL,NULL),(44,46,'p',0,NULL,NULL),(45,47,'p',0,NULL,NULL),(46,49,'r',1,NULL,NULL),(47,45,'r',1,NULL,NULL),(48,60,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,4),(3,3,1),(4,4,2),(5,5,8),(6,6,7),(7,7,7),(8,8,23),(9,9,23),(10,10,28),(11,11,26),(12,12,26),(13,13,12),(14,14,26),(15,15,13),(16,16,26),(17,17,26),(18,18,14),(19,18,19),(20,18,12),(21,19,26),(22,20,12),(23,21,13),(24,22,26),(25,23,19),(26,24,28),(27,25,12),(28,26,26),(29,27,26),(30,28,12),(31,29,26),(32,30,26),(33,31,26),(34,32,40),(35,33,40),(36,34,33),(37,35,40),(38,36,33),(39,37,40),(40,38,43),(41,39,44),(42,40,40),(43,41,43),(44,42,43),(45,43,34),(46,44,40),(47,45,45),(48,46,40),(49,47,35),(50,48,44),(51,49,33),(52,50,45),(53,51,45),(54,52,35),(55,53,33),(56,54,40),(57,55,40),(58,56,45),(59,57,40),(60,58,36),(61,59,34),(62,60,31),(63,60,35),(64,61,45),(65,62,34),(66,62,35),(67,63,43),(68,64,39),(69,65,45),(70,66,40),(71,67,39),(72,68,31),(73,68,35),(74,69,31),(75,69,35),(76,70,33),(77,71,43),(78,72,33),(79,73,40),(80,74,33),(81,75,40),(82,76,43),(83,77,40),(84,78,40),(85,79,35),(86,79,31),(87,80,40),(88,81,33),(89,82,43),(90,83,44),(91,84,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,12,'<one.click.recovery.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(2,4,'<one.click.recovery.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(3,15,'<one.click.recovery.OneClickRecovery$1: void onClick(android.view.View)>',90,'a',NULL),(4,12,'<one.click.recovery.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,8,'<com.corner23.android.universalandroot.service.SoftRootService: void handleCommand(android.content.Intent)>',49,'a',NULL),(6,7,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(7,7,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(8,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(9,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(10,30,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(11,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(12,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',84,'a',NULL),(13,13,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void switchTo(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(14,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(15,14,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(16,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',114,'a',NULL),(17,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',74,'a',NULL),(18,50,'<com.rechild.advancedtaskkiller.CommonLibrary: void ScheduleAutoKill(android.content.Context,boolean,long)>',16,'s',NULL),(19,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',124,'a',NULL),(20,13,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void showRunningServices()>',4,'a',NULL),(21,14,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(22,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',104,'a',NULL),(23,21,'<com.rechild.advancedtaskkiller.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(24,30,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(25,13,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller: void detail(com.rechild.advancedtaskkiller.TaskListAdapters$ListViewItem)>',10,'a',NULL),(26,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(27,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(28,51,'<com.rechild.advancedtaskkiller.AdvancedTaskKiller$2: void onClick(android.content.DialogInterface,int)>',19,'a',0),(29,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',54,'a',NULL),(30,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',94,'a',NULL),(31,48,'<com.xianzhisoft.sex.SexActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',64,'a',NULL),(32,42,'<net.lucky.star.mrtm.srv.DownloadService: void removeSpuriousFiles()>',14,'p',NULL),(33,52,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',670,'p',NULL),(34,35,'<net.lucky.star.mrtm.LibraryActivity: void deleteSong(int)>',39,'p',NULL),(35,42,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',71,'p',NULL),(36,35,'<net.lucky.star.mrtm.LibraryActivity: android.app.Dialog onCreateDialog(int)>',22,'p',NULL),(37,53,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateActiveNotification()>',10,'p',NULL),(38,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',107,'p',NULL),(39,46,'<net.lucky.star.mrtm.db.DownloadedProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',46,'p',0),(40,52,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',863,'p',NULL),(41,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',101,'p',NULL),(42,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'p',0),(43,36,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void onDelete()>',44,'p',NULL),(44,52,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',751,'p',NULL),(45,47,'<net.lucky.star.mrtm.db.DownloadListProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',54,'p',0),(46,52,'<net.lucky.star.mrtm.srv.DownloadThread: void notifyThroughIntent()>',19,'r',NULL),(47,37,'<net.lucky.star.mrtm.editor.RingtoneEditActivity: void onCreate(android.os.Bundle)>',21,'a',NULL),(48,46,'<net.lucky.star.mrtm.db.DownloadedProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',37,'p',0),(49,35,'<net.lucky.star.mrtm.LibraryActivity: void deleteSong(int)>',11,'p',NULL),(50,47,'<net.lucky.star.mrtm.db.DownloadListProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',46,'p',0),(51,47,'<net.lucky.star.mrtm.db.DownloadListProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',59,'s',NULL),(52,37,'<net.lucky.star.mrtm.editor.RingtoneEditActivity: void onDestroy()>',22,'p',NULL),(53,35,'<net.lucky.star.mrtm.LibraryActivity: android.database.Cursor getMyDownloadsCursor(android.content.AsyncQueryHandler)>',17,'p',NULL),(54,42,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',99,'p',NULL),(55,54,'<net.lucky.star.mrtm.srv.DownloadService$UpdateThread: void run()>',60,'p',NULL),(56,47,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',43,'p',0),(57,55,'<net.lucky.star.mrtm.srv.DownloadService$MyMediaScannerConnection: boolean scanFile(android.database.Cursor,int)>',22,'p',NULL),(58,38,'<net.lucky.star.mrtm.editor.ChooseContactActivity: void assignRingtoneToContact()>',15,'p',NULL),(59,36,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void startRingdroidEditor()>',11,'a',NULL),(60,56,'<net.lucky.star.mrtm.HomeActivity$4: void onClick(android.view.View)>',7,'a',NULL),(61,47,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',26,'s',NULL),(62,36,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void onRecord()>',7,'a',NULL),(63,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',88,'p',NULL),(64,41,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(65,47,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',33,'s',NULL),(66,53,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateCompletedNotification()>',77,'p',0),(67,41,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(68,57,'<net.lucky.star.mrtm.HomeActivity$3: void onClick(android.view.View)>',6,'a',NULL),(69,58,'<net.lucky.star.mrtm.HomeActivity$1: void onClick(android.view.View)>',6,'a',NULL),(70,59,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',39,'a',NULL),(71,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(72,59,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',84,'a',NULL),(73,42,'<net.lucky.star.mrtm.srv.DownloadService: void onCreate()>',11,'p',NULL),(74,59,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',20,'p',NULL),(75,52,'<net.lucky.star.mrtm.srv.DownloadThread: void notifyThroughDatabase(int,boolean,int,int,boolean,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(76,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',136,'p',NULL),(77,52,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',685,'p',NULL),(78,42,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',121,'p',NULL),(79,61,'<net.lucky.star.mrtm.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(80,42,'<net.lucky.star.mrtm.srv.DownloadService: boolean updateDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',92,'p',NULL),(81,59,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',64,'p',NULL),(82,45,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',47,'p',0),(83,46,'<net.lucky.star.mrtm.db.DownloadedProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',49,'p',0),(84,53,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateCompletedNotification()>',12,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,4,6),(3,13,1),(4,25,11),(5,27,11),(6,32,12),(7,33,13),(8,35,9),(9,36,8),(10,38,9),(11,42,11),(12,44,14),(13,45,14),(14,46,14),(15,47,14),(16,48,14),(17,49,14),(18,50,14),(19,51,14),(20,53,14),(21,54,14),(22,55,14),(23,56,14),(24,57,14),(25,58,14),(26,59,14),(27,60,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'one/click/recovery/Phase2'),(2,3,'one/click/recovery/Phase1'),(3,5,'com/corner23/android/universalandroot/UniversalAndroot'),(4,6,'(.*)'),(5,7,'com/android/root/Setting'),(6,8,'(.*)'),(7,9,'com/android/root/Setting'),(8,10,'com/android/root/Setting'),(9,11,'com/xianzhisoft/sex/contentactivity'),(10,12,'com/xianzhisoft/sex/contentactivity'),(11,13,'(.*)'),(12,14,'com/xianzhisoft/sex/contentactivity'),(13,15,'(.*)'),(14,16,'com/xianzhisoft/sex/contentactivity'),(15,17,'com/xianzhisoft/sex/contentactivity'),(16,18,'com/rechild/advancedtaskkiller/BackService'),(17,20,'com.android.settings.RunningServices'),(18,19,'com/xianzhisoft/sex/contentactivity'),(19,21,'com/android/root/Setting'),(20,22,'com/xianzhisoft/sex/contentactivity'),(21,23,'com/rechild/advancedtaskkiller/AdvancedTaskKiller'),(22,24,'(.*)'),(23,26,'com/xianzhisoft/sex/contentactivity'),(24,25,'(.*)'),(25,27,'com.android.settings.InstalledAppDetails'),(26,28,'com/xianzhisoft/sex/contentactivity'),(27,29,'com/xianzhisoft/sex/contentactivity'),(28,30,'com/xianzhisoft/sex/contentactivity'),(29,31,'com/xianzhisoft/sex/contentactivity'),(30,32,'net/lucky/star/mrtm/srv/DownloadReceiver'),(31,34,'net/lucky/star/mrtm/srv/DownloadService'),(32,35,'net/lucky/star/mrtm/editor/RingtoneEditActivity'),(33,36,'net/lucky/star/mrtm/editor/RingtoneSelectActivity'),(34,37,'net/lucky/star/mrtm/srv/DownloadService'),(35,38,'net/lucky/star/mrtm/editor/RingtoneEditActivity'),(36,39,'com/android/root/Setting'),(37,40,'net/lucky/star/mrtm/srv/DownloadService'),(38,41,'(.*)'),(39,43,'net/lucky/star/mrtm/SearchActivity'),(40,52,'net/lucky/star/mrtm/srv/DownloadService'),(41,61,'net/lucky/star/mrtm/LibraryActivity');
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
INSERT INTO `IData` VALUES (1,32,12),(2,35,20),(3,38,21),(4,42,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'from_service'),(2,11,'key'),(3,12,'key'),(4,14,'key'),(5,16,'key'),(6,17,'key'),(7,19,'key'),(8,22,'key'),(9,26,'key'),(10,25,'com.android.settings.ApplicationPkgName'),(11,27,'pkg'),(12,28,'key'),(13,29,'key'),(14,30,'key'),(15,31,'key'),(16,35,'was_get_content_intent'),(17,38,'was_get_content_intent'),(18,44,'android.intent.extra.INTENT'),(19,45,'android.intent.extra.INTENT'),(20,46,'android.intent.extra.TITLE'),(21,46,'android.intent.extra.INTENT'),(22,47,'android.intent.extra.INTENT'),(23,48,'android.intent.extra.TITLE'),(24,48,'android.intent.extra.INTENT'),(25,49,'android.intent.extra.INTENT'),(26,50,'android.intent.extra.TITLE'),(27,50,'android.intent.extra.INTENT'),(28,51,'android.intent.extra.TITLE'),(29,51,'android.intent.extra.INTENT'),(30,53,'android.intent.extra.INTENT'),(31,54,'android.intent.extra.INTENT'),(32,55,'android.intent.extra.TITLE'),(33,55,'android.intent.extra.INTENT'),(34,56,'android.intent.extra.INTENT'),(35,57,'android.intent.extra.TITLE'),(36,57,'android.intent.extra.INTENT'),(37,58,'android.intent.extra.INTENT'),(38,59,'android.intent.extra.TITLE'),(39,59,'android.intent.extra.INTENT'),(40,60,'android.intent.extra.TITLE'),(41,60,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,1),(7,7,5),(8,8,7),(9,9,2),(10,10,1),(11,11,1),(12,12,8),(13,13,9),(14,14,1),(15,15,10),(16,16,15),(17,17,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,2),(5,6,1),(6,7,2),(7,10,1),(8,11,1),(9,12,3),(10,12,2),(11,14,1);
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
INSERT INTO `IFData` VALUES (1,12,NULL,NULL,NULL,NULL,'audio','*'),(2,13,NULL,NULL,NULL,NULL,'audio','*'),(3,16,'file',NULL,NULL,NULL,NULL,NULL),(4,17,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'one.click.recovery'),(2,3,'one.click.recovery'),(3,5,'com.corner23.android.universalandroot'),(4,6,'com.magic.spiral'),(5,7,'com.magic.spiral'),(6,8,'com.beauty.leg'),(7,9,'com.beauty.leg'),(8,10,'com.droiddream.sex'),(9,11,'com.droiddream.sex'),(10,12,'com.droiddream.sex'),(11,13,'(.*)'),(12,14,'com.droiddream.sex'),(13,15,'com.droiddream.advancedtaskkiller1'),(14,16,'com.droiddream.sex'),(15,17,'com.droiddream.sex'),(16,18,'com.droiddream.advancedtaskkiller1'),(17,20,'com.android.settings'),(18,19,'com.droiddream.sex'),(19,21,'com.droiddream.advancedtaskkiller1'),(20,22,'com.droiddream.sex'),(21,23,'com.droiddream.advancedtaskkiller1'),(22,24,'com.droiddream.sex'),(23,26,'com.droiddream.sex'),(24,25,'(.*)'),(25,27,'com.android.settings'),(26,28,'com.droiddream.sex'),(27,29,'com.droiddream.sex'),(28,30,'com.droiddream.sex'),(29,31,'com.droiddream.sex'),(30,32,'com.super.mp3ringtone'),(31,34,'com.super.mp3ringtone'),(32,35,'com.super.mp3ringtone'),(33,36,'com.super.mp3ringtone'),(34,37,'com.super.mp3ringtone'),(35,38,'com.super.mp3ringtone'),(36,39,'com.super.mp3ringtone'),(37,40,'com.super.mp3ringtone'),(38,41,'com.super.mp3ringtone'),(39,43,'com.super.mp3ringtone'),(40,52,'com.super.mp3ringtone'),(41,61,'com.super.mp3ringtone');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,7,0),(4,9,0),(5,12,0),(6,13,0),(7,15,0),(8,19,0),(9,20,0),(10,23,0),(11,28,0),(12,34,0),(13,35,0),(14,39,0),(15,46,0),(16,47,0),(17,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,25,0,0),(26,26,0,0),(27,25,0,0),(28,27,0,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,46,0,0),(33,47,1,0),(34,51,0,0),(35,59,0,0),(36,60,0,0),(37,61,0,0),(38,62,0,0),(39,64,0,0),(40,65,0,0),(41,67,0,0),(42,68,1,0),(43,69,0,0),(44,70,1,0),(45,70,1,0),(46,70,1,0),(47,70,1,0),(48,70,1,0),(49,70,1,0),(50,70,1,0),(51,70,1,0),(52,71,0,0),(53,72,1,0),(54,72,1,0),(55,72,1,0),(56,72,1,0),(57,72,1,0),(58,72,1,0),(59,72,1,0),(60,72,1,0),(61,79,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,35,35,2,NULL),(2,38,35,2,NULL),(3,33,1,2,NULL),(4,33,5,2,NULL),(5,33,9,2,NULL),(6,33,7,2,NULL),(7,33,12,2,NULL),(8,33,13,2,NULL),(9,33,15,2,NULL),(10,33,19,2,NULL),(11,33,20,2,NULL),(12,33,46,2,NULL),(13,33,23,2,NULL),(14,33,28,2,NULL),(15,33,39,2,NULL),(16,39,10,2,NULL),(17,39,16,2,NULL),(18,39,24,2,NULL),(19,39,29,2,NULL),(20,39,41,2,NULL),(21,52,40,2,NULL),(22,34,40,2,NULL),(23,37,40,2,NULL),(24,40,40,2,NULL),(25,7,10,2,NULL),(26,7,16,2,NULL),(27,7,24,2,NULL),(28,7,29,2,NULL),(29,7,41,2,NULL),(30,5,5,2,NULL),(31,2,3,2,NULL),(32,9,10,2,NULL),(33,9,16,2,NULL),(34,9,24,2,NULL),(35,9,29,2,NULL),(36,9,41,2,NULL),(37,21,10,2,NULL),(38,21,16,2,NULL),(39,21,24,2,NULL),(40,21,29,2,NULL),(41,21,41,2,NULL),(42,23,12,2,NULL),(43,10,10,2,NULL),(44,10,16,2,NULL),(45,10,24,2,NULL),(46,10,29,2,NULL),(47,10,41,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'net.lucky.star.mrtm.mdd'),(2,2,'net.lucky.star.mrtm.mdq');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(14,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RESTART_PACKAGES'),(10,'android.permission.SET_WALLPAPER'),(1,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,33,44,NULL),(2,40,45,NULL),(3,43,44,NULL),(4,43,45,NULL),(5,47,44,NULL),(6,47,45,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,44,0,NULL,NULL),(2,45,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(2,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(5,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(7,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(8,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(10,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(15,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(16,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(17,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'record',NULL,NULL,NULL),(22,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(23,NULL,NULL,'market://search?q=pname:com.super.mp3ringtone',NULL,NULL,NULL),(24,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(25,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(27,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(28,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(30,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(31,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,32,1),(2,33,2),(3,34,3),(4,35,4),(5,36,5),(6,37,6),(7,38,7),(8,40,8),(9,41,9),(10,43,10),(11,44,11),(12,49,13),(13,53,14),(14,54,15),(15,55,16),(16,57,17),(17,58,18),(18,58,19),(19,63,22),(20,73,24),(21,74,25),(22,75,26),(23,76,27),(24,77,28),(25,78,29),(26,80,30),(27,81,31),(28,84,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,3,3),(6,2,4),(7,3,4),(8,3,5),(9,3,6),(10,4,3),(11,4,4),(12,4,5),(13,4,6),(14,4,7),(15,4,8),(16,4,9),(17,5,2),(18,5,3),(19,5,4),(20,5,5),(21,5,6),(22,5,10),(23,6,2),(24,6,3),(25,6,4),(26,6,5),(27,6,6),(28,6,11),(29,6,12),(30,7,16),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,7,6),(37,7,11),(38,7,12),(39,7,13),(40,7,14),(41,7,15);
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

-- Dump completed on 2015-10-12  3:29:36
