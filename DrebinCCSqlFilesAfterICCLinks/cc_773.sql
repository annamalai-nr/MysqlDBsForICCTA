-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_773
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
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(8,'ACTIVATION_INTENT'),(7,'SMS_SENT'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.NEW_OUTGOING_CALL'),(2,'android.intent.action.REBOOT'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(12,'android.net.wifi.SCAN_RESULTS');
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
INSERT INTO `Applications` VALUES (1,'net.mwkekdsf',1),(2,'ru.intech.trackerplus.light',14),(3,'ru.intech.trackerplus.s',14),(4,'ru.intech.trackerplus.light',19),(5,'ru.intech.trackerplus.s',19),(6,'ru.intech.uonmap.light',11),(7,'com.AmazingBullshit.HolyFuckingBibleFree',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.ALTERNATIVE'),(3,'android.intent.category.BROWSABLE'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'net.mwkekdsf.Main'),(2,1,'net.mwkekdsf.AgreementActivity'),(3,1,'net.mwkekdsf.SomeAct'),(4,2,'ru.intech.lib.ui.RegActivity'),(5,2,'ru.intech.lib.TrackerService'),(6,2,'ru.intech.lib.MainReceiver'),(7,3,'ru.intech.lib.ui.RegActivity'),(8,3,'ru.intech.lib.TrackerService'),(9,2,'ru.intech.lib.OnAlarmReceiver'),(10,3,'ru.intech.lib.MainReceiver'),(11,2,'ru.intech.lib.TrackerWidget'),(12,3,'ru.intech.lib.OnAlarmReceiver'),(13,3,'ru.intech.lib.TrackerWidget'),(14,6,'ru.intech.lib.ui.RegActivity'),(15,4,'ru.intech.lib.ui.RegActivity'),(16,5,'ru.intech.lib.ui.RegActivity'),(17,7,'com.AmazingBullshit.HolyFuckingBibleFree.Main'),(18,6,'ru.intech.lib.TrackerService'),(19,4,'ru.intech.lib.TrackerService'),(20,5,'ru.intech.lib.TrackerService'),(21,6,'ru.intech.lib.MainReceiver'),(22,4,'ru.intech.lib.MainReceiver'),(23,7,'com.google.ads.AdActivity'),(24,1,'net.mwkekdsf.Activator$1'),(25,5,'ru.intech.lib.MainReceiver'),(26,6,'ru.intech.lib.OnAlarmReceiver'),(27,4,'ru.intech.lib.OnAlarmReceiver'),(28,5,'ru.intech.lib.OnAlarmReceiver'),(29,6,'ru.intech.lib.TrackerWidget'),(30,1,'net.mwkekdsf.Main$1'),(31,4,'ru.intech.lib.TrackerWidget'),(32,5,'ru.intech.lib.TrackerWidget'),(33,2,'null_type'),(34,2,'ru.intech.lib.c.c'),(35,2,'android.appwidget.AppWidgetProvider'),(36,3,'ru.intech.lib.b.a'),(37,2,'ru.intech.lib.b.a'),(38,6,'null_type'),(39,4,'ru.intech.lib.c.a'),(40,3,'ru.intech.lib.c.c'),(41,5,'ru.intech.lib.a.c'),(42,3,'android.appwidget.AppWidgetProvider'),(43,7,'com.SoundboardEngine.SoundSaver'),(44,4,'null_type'),(45,3,'null_type'),(46,5,'android.appwidget.AppWidgetProvider'),(47,6,'ru.intech.lib.a.c'),(48,6,'android.appwidget.AppWidgetProvider'),(49,5,'null_type'),(50,4,'ru.intech.lib.a.c'),(51,6,'ru.intech.lib.c.a'),(52,5,'ru.intech.lib.c.a'),(53,4,'android.appwidget.AppWidgetProvider'),(54,7,'u$b');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,10,'android.intent.extra.PHONE_NUMBER'),(3,6,'android.intent.extra.PHONE_NUMBER'),(4,21,'android.intent.extra.PHONE_NUMBER'),(5,23,'params'),(6,23,'com.google.ads.AdOpener'),(7,22,'android.intent.extra.PHONE_NUMBER'),(8,25,'android.intent.extra.PHONE_NUMBER'),(9,23,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,9,'r',1,NULL,NULL),(35,34,'r',1,NULL,NULL),(36,35,'r',1,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,12,'r',1,NULL,NULL),(39,40,'r',1,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,42,'r',1,NULL,NULL),(42,44,'r',1,NULL,NULL),(43,28,'r',1,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,26,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,27,'r',1,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,54,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,1),(4,4,11),(5,5,9),(6,6,11),(7,7,12),(8,8,6),(9,9,13),(10,10,6),(11,10,4),(12,11,7),(13,11,10),(14,12,6),(15,13,9),(16,14,12),(17,15,9),(18,16,21),(19,17,10),(20,18,27),(21,19,26),(22,20,22),(23,21,15),(24,21,22),(25,22,26),(26,23,17),(27,24,17),(28,25,31),(29,26,12),(30,27,31),(31,28,25),(32,28,16),(33,29,27),(34,30,13),(35,31,32),(36,32,10),(37,34,17),(38,33,21),(39,33,14),(40,35,22),(41,36,27),(42,37,25),(43,38,23),(44,39,21),(45,40,32),(46,41,29),(47,42,28),(48,43,26),(49,44,29),(50,45,28),(51,46,17),(52,47,28),(53,48,17),(54,49,17),(55,50,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<net.mwkekdsf.SomeAct: void onClick(android.view.View)>',8,'a',NULL),(2,1,'<net.mwkekdsf.Main: void showLink()>',6,'a',NULL),(3,1,'<net.mwkekdsf.Main: void onClick(android.view.View)>',7,'a',NULL),(4,11,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(5,9,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'r',NULL),(6,11,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',10,'r',NULL),(7,36,'<ru.intech.lib.b.a: void a(java.util.List)>',64,'a',NULL),(8,6,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(9,13,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',10,'r',NULL),(10,6,'<ru.intech.lib.MainReceiver: void a(android.content.Context)>',3,'s',NULL),(11,10,'<ru.intech.lib.MainReceiver: void a(android.content.Context)>',3,'s',NULL),(12,6,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'a',0),(13,37,'<ru.intech.lib.b.a: void a(java.util.List)>',64,'a',NULL),(14,12,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'r',NULL),(15,9,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'r',NULL),(16,21,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'a',0),(17,10,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(18,39,'<ru.intech.lib.c.a: void a(java.util.List)>',72,'a',NULL),(19,26,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'r',NULL),(20,22,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'a',0),(21,22,'<ru.intech.lib.MainReceiver: void a(android.content.Context)>',3,'s',NULL),(22,26,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'r',NULL),(23,43,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(24,17,'<com.AmazingBullshit.HolyFuckingBibleFree.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(25,31,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(26,12,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'r',NULL),(27,31,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',10,'r',NULL),(28,25,'<ru.intech.lib.MainReceiver: void a(android.content.Context)>',3,'s',NULL),(29,27,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'r',NULL),(30,13,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(31,32,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(32,10,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'a',0),(33,21,'<ru.intech.lib.MainReceiver: void a(android.content.Context)>',3,'s',NULL),(34,43,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',71,'p',NULL),(35,22,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(36,27,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'r',NULL),(37,25,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(38,23,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(39,21,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(40,32,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',10,'r',NULL),(41,29,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',10,'r',NULL),(42,28,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',54,'r',NULL),(43,51,'<ru.intech.lib.c.a: void a(java.util.List)>',72,'a',NULL),(44,29,'<ru.intech.lib.TrackerWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(45,52,'<ru.intech.lib.c.a: void a(java.util.List)>',72,'a',NULL),(46,43,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(47,28,'<ru.intech.lib.OnAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'r',NULL),(48,43,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',16,'p',NULL),(49,43,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',131,'p',NULL),(50,25,'<ru.intech.lib.MainReceiver: void onReceive(android.content.Context,android.content.Intent)>',37,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,18,6),(3,21,6),(4,24,6),(5,27,6),(6,32,13),(7,34,6),(8,37,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,12,2),(3,13,2),(4,15,2),(5,17,2),(6,20,2),(7,25,2),(8,30,2),(9,32,3),(10,35,2),(11,34,3),(12,37,3),(13,40,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'net/mwkekdsf/SomeAct'),(2,3,'net/mwkekdsf/AgreementActivity'),(3,4,'ru/intech/lib/TrackerService'),(4,5,'com.android.settings.widget.SettingsAppWidgetProvider'),(5,6,'ru/intech/lib/OnAlarmReceiver'),(6,7,'ru/intech/lib/ui/RegActivity'),(7,8,'ru/intech/lib/OnAlarmReceiver'),(8,9,'ru/intech/lib/TrackerService'),(9,10,'ru/intech/lib/TrackerService'),(10,11,'ru/intech/lib/ui/RegActivity'),(11,12,'com.android.settings.widget.SettingsAppWidgetProvider'),(12,13,'com.android.settings.widget.SettingsAppWidgetProvider'),(13,14,'ru/intech/lib/ui/RegActivity'),(14,15,'com.android.settings.widget.SettingsAppWidgetProvider'),(15,16,'ru/intech/lib/TrackerService'),(16,17,'com.android.settings.widget.SettingsAppWidgetProvider'),(17,19,'ru/intech/lib/TrackerService'),(18,22,'ru/intech/lib/OnAlarmReceiver'),(19,20,'com.android.settings.widget.SettingsAppWidgetProvider'),(20,23,'ru/intech/lib/TrackerService'),(21,26,'ru/intech/lib/TrackerService'),(22,28,'ru/intech/lib/TrackerService'),(23,25,'com.android.settings.widget.SettingsAppWidgetProvider'),(24,29,'ru/intech/lib/TrackerService'),(25,31,'ru/intech/lib/OnAlarmReceiver'),(26,30,'com.android.settings.widget.SettingsAppWidgetProvider'),(27,33,'ru/intech/lib/OnAlarmReceiver'),(28,36,'ru/intech/lib/ui/RegActivity'),(29,35,'com.android.settings.widget.SettingsAppWidgetProvider'),(30,38,'ru/intech/lib/TrackerService'),(31,39,'ru/intech/lib/ui/RegActivity'),(32,40,'com.android.settings.widget.SettingsAppWidgetProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,12,3),(4,13,4),(5,15,5),(6,17,7),(7,18,8),(8,20,9),(9,21,10),(10,24,11),(11,25,12),(12,27,13),(13,30,15),(14,32,16),(15,35,17),(16,34,18),(17,37,19),(18,40,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'URL');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,3),(8,5,2),(9,5,4),(10,6,5),(11,7,5),(12,9,1),(13,8,1),(14,10,1),(15,11,1),(16,12,4),(17,12,3),(18,12,2),(19,13,4),(20,13,3),(21,13,2),(22,14,2),(23,14,4),(24,14,3),(25,15,7),(26,16,5),(27,17,5),(28,18,8),(29,19,5),(30,20,9),(31,21,9),(32,21,11),(33,21,10),(34,22,11),(35,22,10),(36,22,9),(37,23,10),(38,23,11),(39,23,9),(40,24,11),(41,24,9),(42,24,10),(43,25,9),(44,25,10),(45,25,11),(46,26,9),(47,27,9),(48,27,11),(49,27,10),(50,28,9),(51,28,10),(52,28,11),(53,29,10),(54,29,11),(55,29,9),(56,30,9),(57,30,10),(58,30,11),(59,30,12),(60,31,11),(61,31,10),(62,31,9),(63,32,12),(64,32,11),(65,32,10),(66,32,9),(67,33,11),(68,33,10),(69,33,9),(70,34,9),(71,35,9),(72,35,10),(73,35,11),(74,35,12),(75,36,9),(76,37,9),(77,37,10),(78,37,11),(79,37,12),(80,38,11),(81,38,12),(82,38,9),(83,38,10),(84,39,9),(85,39,11),(86,39,10),(87,39,12),(88,40,10),(89,40,9),(90,40,12),(91,40,11),(92,41,12),(93,41,9),(94,41,11),(95,41,10),(96,42,12),(97,42,11),(98,42,10),(99,42,9),(100,43,12),(101,43,9),(102,43,10),(103,43,11),(104,44,9),(105,45,12),(106,45,9),(107,45,11),(108,45,10),(109,46,12),(110,46,11),(111,46,10),(112,46,9),(113,47,11),(114,47,10),(115,47,12),(116,47,9),(117,48,9),(118,48,10),(119,48,11),(120,48,12),(121,49,9),(122,49,10),(123,49,11),(124,49,12),(125,50,14),(126,50,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,11,1);
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
INSERT INTO `IMimeTypes` VALUES (1,37,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'net.mwkekdsf'),(2,3,'net.mwkekdsf'),(3,4,'ru.intech.trackerplus.light'),(4,5,'com.android.settings'),(5,6,'ru.intech.trackerplus.light'),(6,7,'ru.intech.trackerplus.s'),(7,8,'ru.intech.trackerplus.s'),(8,9,'ru.intech.trackerplus.light'),(9,10,'ru.intech.trackerplus.s'),(10,11,'ru.intech.trackerplus.light'),(11,12,'com.android.settings'),(12,13,'com.android.settings'),(13,14,'ru.intech.trackerplus.light'),(14,15,'com.android.settings'),(15,16,'ru.intech.trackerplus.light'),(16,17,'com.android.settings'),(17,19,'ru.intech.trackerplus.light'),(18,22,'ru.intech.trackerplus.light'),(19,20,'com.android.settings'),(20,23,'ru.intech.trackerplus.s'),(21,26,'ru.intech.trackerplus.s'),(22,28,'ru.intech.trackerplus.s'),(23,25,'com.android.settings'),(24,29,'ru.intech.uonmap.light'),(25,31,'ru.intech.trackerplus.s'),(26,30,'com.android.settings'),(27,33,'ru.intech.uonmap.light'),(28,36,'ru.intech.uonmap.light'),(29,35,'com.android.settings'),(30,38,'ru.intech.uonmap.light'),(31,39,'ru.intech.trackerplus.s'),(32,40,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,7,0),(4,6,0),(5,10,0),(6,11,0),(7,13,0),(8,15,0),(9,14,0),(10,16,0),(11,17,0),(12,21,0),(13,22,0),(14,25,0),(15,24,0),(16,29,0),(17,31,0),(18,30,0),(19,32,0),(20,33,0),(21,6,0),(22,34,0),(23,35,0),(24,36,0),(25,11,0),(26,37,0),(27,10,0),(28,38,0),(29,39,0),(30,40,0),(31,41,0),(32,25,0),(33,13,0),(34,42,0),(35,43,0),(36,44,0),(37,45,0),(38,46,0),(39,32,0),(40,21,0),(41,47,0),(42,48,0),(43,29,0),(44,49,0),(45,50,0),(46,22,0),(47,51,0),(48,52,0),(49,31,0),(50,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,13,0,0),(12,14,0,0),(13,15,0,0),(14,18,0,0),(15,19,0,0),(16,21,0,0),(17,22,0,0),(18,24,1,0),(19,25,0,0),(20,26,0,0),(21,24,1,0),(22,27,0,0),(23,28,0,0),(24,24,1,0),(25,29,0,0),(26,30,0,0),(27,24,1,0),(28,31,0,0),(29,33,0,0),(30,36,0,0),(31,40,0,0),(32,38,1,0),(33,41,0,0),(34,38,1,0),(35,42,0,0),(36,43,0,0),(37,38,1,0),(38,44,0,0),(39,45,0,0),(40,47,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,14,2,NULL),(2,32,14,2,NULL),(3,34,14,2,NULL),(4,29,5,2,NULL),(5,29,8,2,NULL),(6,29,18,2,NULL),(7,29,19,2,NULL),(8,29,20,2,NULL),(9,1,21,2,NULL),(10,32,21,2,NULL),(11,34,21,2,NULL),(12,1,47,2,NULL),(13,32,47,2,NULL),(14,34,47,2,NULL),(15,33,9,2,NULL),(16,33,34,2,NULL),(17,33,12,2,NULL),(18,33,38,2,NULL),(19,33,26,2,NULL),(20,33,47,2,NULL),(21,33,27,2,NULL),(22,33,51,2,NULL),(23,33,28,2,NULL),(24,33,43,2,NULL),(25,38,5,2,NULL),(26,38,8,2,NULL),(27,38,18,2,NULL),(28,38,19,2,NULL),(29,38,20,2,NULL),(30,1,29,2,NULL),(31,32,29,2,NULL),(32,34,29,2,NULL),(33,1,37,2,NULL),(34,32,37,2,NULL),(35,34,37,2,NULL),(36,1,46,2,NULL),(37,32,46,2,NULL),(38,34,46,2,NULL),(39,1,48,2,NULL),(40,32,48,2,NULL),(41,34,48,2,NULL),(42,1,4,2,NULL),(43,32,4,2,NULL),(44,34,4,2,NULL),(45,9,5,2,NULL),(46,9,8,2,NULL),(47,9,18,2,NULL),(48,9,19,2,NULL),(49,9,20,2,NULL),(50,1,6,2,NULL),(51,32,6,2,NULL),(52,34,6,2,NULL),(53,1,34,2,NULL),(54,32,34,2,NULL),(55,34,34,2,NULL),(56,4,5,2,NULL),(57,4,8,2,NULL),(58,4,18,2,NULL),(59,4,19,2,NULL),(60,4,20,2,NULL),(61,6,9,2,NULL),(62,6,34,2,NULL),(63,6,12,2,NULL),(64,6,38,2,NULL),(65,6,26,2,NULL),(66,6,47,2,NULL),(67,6,27,2,NULL),(68,6,51,2,NULL),(69,6,28,2,NULL),(70,6,43,2,NULL),(71,1,11,2,NULL),(72,32,11,2,NULL),(73,34,11,2,NULL),(74,1,33,2,NULL),(75,32,33,2,NULL),(76,34,33,2,NULL),(77,1,35,2,NULL),(78,32,35,2,NULL),(79,34,35,2,NULL),(80,1,36,2,NULL),(81,32,36,2,NULL),(82,34,36,2,NULL),(83,1,15,2,NULL),(84,32,15,2,NULL),(85,34,15,2,NULL),(86,16,5,2,NULL),(87,16,8,2,NULL),(88,16,18,2,NULL),(89,16,19,2,NULL),(90,16,20,2,NULL),(91,1,22,2,NULL),(92,32,22,2,NULL),(93,34,22,2,NULL),(94,1,51,2,NULL),(95,32,51,2,NULL),(96,34,51,2,NULL),(97,19,5,2,NULL),(98,19,8,2,NULL),(99,19,18,2,NULL),(100,19,19,2,NULL),(101,19,20,2,NULL),(102,22,9,2,NULL),(103,22,34,2,NULL),(104,22,12,2,NULL),(105,22,38,2,NULL),(106,22,26,2,NULL),(107,22,47,2,NULL),(108,22,27,2,NULL),(109,22,51,2,NULL),(110,22,28,2,NULL),(111,22,43,2,NULL),(112,1,31,2,NULL),(113,32,31,2,NULL),(114,34,31,2,NULL),(115,1,42,2,NULL),(116,32,42,2,NULL),(117,34,42,2,NULL),(118,1,50,2,NULL),(119,32,50,2,NULL),(120,34,50,2,NULL),(121,1,52,2,NULL),(122,32,52,2,NULL),(123,34,52,2,NULL),(124,1,7,2,NULL),(125,32,7,2,NULL),(126,34,7,2,NULL),(127,10,5,2,NULL),(128,10,8,2,NULL),(129,10,18,2,NULL),(130,10,19,2,NULL),(131,10,20,2,NULL),(132,1,10,2,NULL),(133,32,10,2,NULL),(134,34,10,2,NULL),(135,1,38,2,NULL),(136,32,38,2,NULL),(137,34,38,2,NULL),(138,8,9,2,NULL),(139,8,34,2,NULL),(140,8,12,2,NULL),(141,8,38,2,NULL),(142,8,26,2,NULL),(143,8,47,2,NULL),(144,8,27,2,NULL),(145,8,51,2,NULL),(146,8,28,2,NULL),(147,8,43,2,NULL),(148,26,5,2,NULL),(149,26,8,2,NULL),(150,26,18,2,NULL),(151,26,19,2,NULL),(152,26,20,2,NULL),(153,1,13,2,NULL),(154,32,13,2,NULL),(155,34,13,2,NULL),(156,1,39,2,NULL),(157,32,39,2,NULL),(158,34,39,2,NULL),(159,1,41,2,NULL),(160,32,41,2,NULL),(161,34,41,2,NULL),(162,1,44,2,NULL),(163,32,44,2,NULL),(164,34,44,2,NULL),(165,1,16,2,NULL),(166,32,16,2,NULL),(167,34,16,2,NULL),(168,23,5,2,NULL),(169,23,8,2,NULL),(170,23,18,2,NULL),(171,23,19,2,NULL),(172,23,20,2,NULL),(173,1,25,2,NULL),(174,32,25,2,NULL),(175,34,25,2,NULL),(176,1,43,2,NULL),(177,32,43,2,NULL),(178,34,43,2,NULL),(179,28,5,2,NULL),(180,28,8,2,NULL),(181,28,18,2,NULL),(182,28,19,2,NULL),(183,28,20,2,NULL),(184,31,9,2,NULL),(185,31,34,2,NULL),(186,31,12,2,NULL),(187,31,38,2,NULL),(188,31,26,2,NULL),(189,31,47,2,NULL),(190,31,27,2,NULL),(191,31,51,2,NULL),(192,31,28,2,NULL),(193,31,43,2,NULL),(194,1,32,2,NULL),(195,32,32,2,NULL),(196,34,32,2,NULL),(197,1,40,2,NULL),(198,32,40,2,NULL),(199,34,40,2,NULL),(200,1,45,2,NULL),(201,32,45,2,NULL),(202,34,45,2,NULL),(203,1,49,2,NULL),(204,32,49,2,NULL),(205,34,49,2,NULL),(206,2,3,2,NULL),(207,3,2,2,NULL),(208,1,17,2,NULL),(209,1,1,2,NULL),(210,32,17,2,NULL),(211,32,1,2,NULL),(212,34,17,2,NULL),(213,34,1,2,NULL),(214,32,24,2,NULL),(215,1,24,2,NULL),(216,34,24,2,NULL),(217,1,30,2,NULL),(218,32,30,2,NULL),(219,1,53,2,NULL),(220,34,30,2,NULL),(221,32,53,2,NULL),(222,34,53,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_MOCK_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CHANGE_CONFIGURATION'),(17,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.CONTROL_LOCATION_UPDATES'),(4,'android.permission.INTERNET'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(1,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'3',NULL,NULL,NULL),(3,NULL,NULL,'3',NULL,NULL,NULL),(4,NULL,NULL,'3',NULL,NULL,NULL),(5,NULL,NULL,'3',NULL,NULL,NULL),(6,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(7,NULL,NULL,'3',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(9,NULL,NULL,'3',NULL,NULL,NULL),(10,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(11,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(12,NULL,NULL,'3',NULL,NULL,NULL),(13,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(14,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(15,NULL,NULL,'3',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'3',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'3',NULL,NULL,NULL),(22,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,23,6),(2,34,14),(3,46,20),(4,48,22),(5,49,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,3,1),(13,2,9),(14,3,3),(15,2,10),(16,3,4),(17,2,11),(18,3,5),(19,2,12),(20,3,6),(21,2,13),(22,3,7),(23,2,14),(24,3,8),(25,2,15),(26,3,9),(27,3,10),(28,3,11),(29,3,12),(30,3,13),(31,3,14),(32,3,15),(33,4,1),(34,5,1),(35,6,1),(36,5,3),(37,4,3),(38,6,3),(39,6,4),(40,5,4),(41,4,4),(42,6,5),(43,4,5),(44,5,5),(45,4,6),(46,6,6),(47,5,6),(48,6,7),(49,4,7),(50,5,7),(51,4,8),(52,6,8),(53,5,8),(54,6,9),(55,5,9),(56,4,9),(57,4,10),(58,6,10),(59,5,10),(60,6,11),(61,5,11),(62,4,11),(63,5,12),(64,4,12),(65,6,12),(66,6,13),(67,5,13),(68,4,13),(69,6,14),(70,4,14),(71,5,14),(72,6,15),(73,4,15),(74,7,3),(75,6,17),(76,4,17),(77,5,15),(78,7,4),(79,6,16),(80,5,17),(81,4,16),(82,7,8),(83,5,16),(84,7,13);
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

-- Dump completed on 2015-10-12  3:31:42
