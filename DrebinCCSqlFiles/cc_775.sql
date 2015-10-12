-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_775
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.EDIT'),(5,'android.intent.action.MAIN'),(1,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.SEARCH'),(8,'android.intent.action.SEND'),(3,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(13,'com.sdo.note.loginout'),(15,'com.sdo.note.opennote_item1'),(14,'com.sdo.note.opennote_item2'),(16,'com.sdo.note.opennote_item3'),(12,'com.sdo.note.sync'),(11,'reload_widger_broadcast');
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
INSERT INTO `Applications` VALUES (1,'system.service',1),(2,'com.Lord',11),(3,'com.hero_full',55),(4,'com.snda.inote',14),(5,'appinventor.ai_chaz1429.TwitterApp',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'system.service.SystemService'),(2,1,'system.service.RepeatingAlarmService'),(3,1,'system.service.AutorunBroadcastReceiver'),(4,1,'system.service.SmsReciver'),(5,1,'system.service.MainService'),(6,1,'system.service.AlarmReceiver'),(7,1,'system.service.AutorunReceiver'),(8,2,'com.Lord.GameMidlet'),(9,2,'com.mgie.lib.sd_sdk'),(10,3,'com.hero_full.GameMidlet'),(11,3,'com.orz.lib.sd_sdk'),(12,4,'com.snda.inote.activity.LoginActivity'),(13,4,'com.snda.inote.activity.TabMainActivity'),(14,4,'com.snda.inote.activity.WebLoginActivity'),(15,4,'com.snda.inote.activity.CategoryListActivity'),(16,4,'com.snda.inote.activity.AddFullActivity'),(17,4,'com.snda.inote.activity.EditFullActivity'),(18,4,'com.snda.inote.activity.NoteListActivity'),(19,2,'bg'),(20,4,'com.snda.inote.activity.NoteActivity'),(21,4,'com.snda.inote.activity.SearchListActivity'),(22,4,'com.snda.inote.activity.PreferencesActivity'),(23,3,'u'),(24,2,'com.Lord.GameDisplay'),(25,4,'com.snda.inote.fileselector.FileSelector'),(26,4,'com.snda.inote.activity.SignUpActivity'),(27,4,'com.snda.inote.activity.ActivateUserActivity'),(28,2,'com.mgie.lib.sd_sdk$2'),(29,4,'com.snda.inote.activity.TabGroup1Activity'),(30,4,'com.snda.inote.activity.TagsListActivity'),(31,4,'com.snda.inote.activity.TabGroup3Activity'),(32,4,'com.snda.inote.activity.TabGroup2Activity'),(33,4,'com.snda.inote.service.MaiKuSyncService'),(34,4,'com.snda.inote.provider.WidgetSmallComponent'),(35,3,'com.orz.lib.z'),(36,4,'com.snda.inote.provider.WidgetComponent'),(37,4,'com.snda.inote.provider.SearchSuggestionProvider'),(38,4,'com.snda.inote.activity.NoteListActivity$2'),(39,4,'com.snda.inote.activity.NoteListActivity$3'),(40,4,'com.snda.inote.activity.EditFullActivity$1'),(41,4,'com.snda.inote.activity.TagsListActivity$3'),(42,4,'com.snda.inote.activity.SearchListActivity$1'),(43,4,'com.snda.inote.activity.SignUpActivity$1'),(44,4,'com.snda.inote.activity.TagsListActivity$2'),(45,4,'com.snda.inote.activity.LoginActivity$1'),(46,4,'com.snda.inote.activity.NoteActivity$2'),(47,4,'com.snda.inote.activity.NoteActivity$1'),(48,4,'com.snda.inote.activity.AddFullActivity$1'),(49,4,'com.snda.inote.activity.CategoryListActivity$SyncServiceReceiver'),(50,4,'com.snda.sdw.woa.z$a'),(51,4,'android.appwidget.AppWidgetProvider'),(52,4,'com.snda.inote.activity.TabMainActivity$1'),(53,5,'appinventor.ai_chaz1429.TwitterApp.Screen1'),(54,5,'com.google.devtools.simple.runtime.components.android.ListPickerActivity'),(55,5,'com.google.devtools.simple.runtime.components.android.WebViewActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'pdus'),(2,5,'id'),(3,5,'key'),(4,5,'text'),(5,5,'number'),(6,20,'query'),(7,16,'android.intent.extra.SUBJECT'),(8,19,'pwd'),(9,16,'android.intent.extra.TEXT'),(10,16,'android.intent.extra.STREAM'),(11,15,'SDO_CHANNEL'),(12,23,'SDO_CHANNEL'),(13,27,'SDO_CHANNEL'),(14,19,'SDO_CHANNEL'),(15,20,'SDO_CHANNEL'),(16,26,'SDO_CHANNEL'),(17,17,'content'),(18,18,'tag'),(19,12,'type'),(20,16,'FileName'),(21,17,'FileName'),(22,19,'content'),(23,17,'pwd'),(24,32,'key'),(25,49,'APP_INVENTOR_START'),(26,50,'com/google/devtools/simple/runtime/components/android/ListPickerActivity.list');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',0,NULL,NULL),(2,2,'r',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,25,'a',0,NULL,NULL),(23,26,'a',0,NULL,NULL),(24,27,'a',0,NULL,NULL),(25,29,'a',0,NULL,NULL),(26,30,'a',0,NULL,NULL),(27,14,'a',0,NULL,NULL),(28,31,'a',0,NULL,NULL),(29,32,'a',0,NULL,NULL),(30,33,'s',0,NULL,NULL),(31,34,'r',1,NULL,NULL),(32,36,'r',1,NULL,NULL),(33,37,'p',0,NULL,NULL),(34,38,'r',1,NULL,NULL),(35,39,'r',1,NULL,NULL),(36,40,'r',1,NULL,NULL),(37,41,'r',1,NULL,NULL),(38,42,'r',1,NULL,NULL),(39,43,'r',1,NULL,NULL),(40,44,'r',1,NULL,NULL),(41,45,'r',1,NULL,NULL),(42,46,'r',1,NULL,NULL),(43,47,'r',1,NULL,NULL),(44,48,'r',1,NULL,NULL),(45,49,'r',1,NULL,NULL),(46,50,'r',1,NULL,NULL),(47,51,'r',1,NULL,NULL),(48,52,'r',1,NULL,NULL),(49,53,'a',1,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'a',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,6),(3,3,4),(4,4,9),(5,5,11),(6,6,9),(7,7,11),(8,8,8),(9,9,11),(10,10,11),(11,11,9),(12,12,11),(13,13,9),(14,14,11),(15,15,9),(16,16,11),(17,17,9),(18,18,11),(19,19,9),(20,20,8),(21,21,9),(22,22,13),(23,23,26),(24,23,18),(25,23,19),(26,23,20),(27,23,15),(28,23,32),(29,23,16),(30,23,17),(31,24,12),(32,25,13),(33,26,13),(34,27,16),(35,28,19),(36,28,16),(37,28,27),(38,28,17),(39,28,13),(40,29,27),(41,29,13),(42,29,12),(43,29,19),(44,29,17),(45,29,16),(46,30,26),(47,30,27),(48,30,13),(49,30,16),(50,30,15),(51,30,18),(52,30,17),(53,30,19),(54,31,18),(55,31,19),(56,31,16),(57,31,17),(58,31,13),(59,31,27),(60,32,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<system.service.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(2,5,'<system.service.MainService: void start(android.content.Context,android.content.Intent,java.lang.String)>',9,'s',NULL),(3,5,'<system.service.MainService: void start(android.content.Context,android.content.Intent,java.lang.String,java.lang.String,java.lang.String,long)>',16,'s',NULL),(4,19,'<bg: java.util.List h(android.content.Context)>',5,'p',NULL),(5,11,'<com.orz.lib.sd_sdk: void i()>',4,'a',NULL),(6,19,'<bg: void b(android.content.Context,bf)>',31,'p',NULL),(7,23,'<u: void a(android.content.Context,t)>',31,'p',NULL),(8,24,'<com.Lord.GameDisplay: void InputTouch(android.view.MotionEvent)>',100,'a',NULL),(9,23,'<u: boolean a(android.content.Context,java.lang.String)>',134,'p',0),(10,23,'<u: java.util.List e(android.content.Context)>',3,'p',NULL),(11,28,'<com.mgie.lib.sd_sdk$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(12,23,'<u: boolean a(android.content.Context,java.lang.String)>',131,'p',NULL),(13,19,'<bg: bf a(android.content.Context,bf)>',27,'p',NULL),(14,23,'<u: t d(android.content.Context)>',3,'p',NULL),(15,9,'<com.mgie.lib.sd_sdk: void change()>',4,'a',NULL),(16,23,'<u: java.util.List f(android.content.Context)>',5,'p',NULL),(17,19,'<bg: bf f(android.content.Context)>',3,'p',NULL),(18,35,'<com.orz.lib.z: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(19,19,'<bg: bf a(android.content.Context,bf)>',30,'p',0),(20,24,'<com.Lord.GameDisplay: void MainMenu()>',11,'a',NULL),(21,19,'<bg: java.util.List g(android.content.Context)>',3,'p',NULL),(22,22,'<com.snda.inote.activity.PreferencesActivity: void show(android.content.Context)>',4,'a',NULL),(23,20,'<com.snda.inote.activity.NoteActivity: void show(android.content.Context,long)>',7,'a',NULL),(24,13,'<com.snda.inote.activity.TabMainActivity: void show(android.content.Context)>',4,'a',NULL),(25,12,'<com.snda.inote.activity.LoginActivity: void show(android.content.Context)>',4,'a',NULL),(26,13,'<com.snda.inote.activity.TabMainActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(27,16,'<com.snda.inote.activity.AddFullActivity: void addFileByShareIntent(android.net.Uri)>',23,'p',0),(28,17,'<com.snda.inote.activity.EditFullActivity: void show(android.content.Context,long,java.util.Map)>',13,'a',NULL),(29,12,'<com.snda.inote.activity.LoginActivity: void show(android.content.Context,boolean)>',6,'a',NULL),(30,16,'<com.snda.inote.activity.AddFullActivity: void show(android.content.Context,long)>',7,'a',NULL),(31,17,'<com.snda.inote.activity.EditFullActivity: void show(android.content.Context,long)>',6,'a',NULL),(32,16,'<com.snda.inote.activity.AddFullActivity: void onCreate(android.os.Bundle)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,7),(2,10,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'system/service/SystemService'),(2,2,'system/service/MainService'),(3,3,'system/service/MainService'),(4,4,'system/service/MainService'),(5,5,'system/service/MainService'),(6,6,'com/hero_full/GameMidlet'),(7,7,'com/mgie/lib/sd_sdk'),(8,9,'com/Lord/GameMidlet'),(9,11,'com/mgie/lib/sd_sdk'),(10,12,'com/snda/inote/activity/PreferencesActivity'),(11,13,'com/snda/inote/activity/NoteActivity'),(12,14,'com/snda/inote/activity/TabMainActivity'),(13,15,'com/snda/inote/activity/LoginActivity'),(14,16,'com/snda/inote/activity/LoginActivity'),(15,17,'com/snda/inote/activity/EditFullActivity'),(16,18,'com/snda/inote/activity/LoginActivity'),(17,19,'com/snda/inote/activity/AddFullActivity'),(18,20,'com/snda/inote/activity/EditFullActivity'),(19,21,'com/snda/inote/activity/LoginActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,5),(2,10,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'(.*)'),(2,2,'key'),(3,3,'key'),(4,4,'id'),(5,4,'text'),(6,4,'number'),(7,4,'key'),(8,5,'id'),(9,5,'text'),(10,5,'(.*)'),(11,5,'number'),(12,5,'key'),(13,13,'id'),(14,17,'content'),(15,17,'id'),(16,17,'pwd'),(17,18,'type'),(18,19,'cate_id'),(19,20,'id');
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,3),(3,1,2),(4,2,4),(5,3,1),(6,3,2),(7,3,3),(8,4,4),(9,5,5),(10,6,5),(11,7,5),(12,8,7),(13,8,6),(14,9,8),(15,10,9),(16,11,10),(17,12,10),(18,12,15),(19,12,16),(20,12,13),(21,12,14),(22,12,11),(23,12,12),(24,13,12),(25,14,12),(26,15,12),(27,16,12),(28,17,12),(29,18,12),(30,19,12),(31,20,12),(32,21,12),(33,22,12),(34,23,12),(35,24,12),(36,25,12),(37,26,12),(38,27,12),(39,28,12),(40,29,12),(41,30,13),(42,31,13),(43,32,13),(44,33,13),(45,34,13),(46,35,13),(47,36,13),(48,37,13),(49,38,13),(50,39,13),(51,40,13),(52,41,13),(53,42,13),(54,43,13),(55,44,13),(56,45,13),(57,46,13),(58,47,13),(59,48,13),(60,49,13),(61,50,13),(62,51,13),(63,52,13),(64,53,13),(65,54,13),(66,55,13),(67,56,13),(68,57,13),(69,58,13),(70,59,13),(71,60,13),(72,61,13),(73,62,13),(74,63,13),(75,64,13),(76,65,13),(77,66,13),(78,67,13),(79,68,13),(80,69,13),(81,70,13),(82,71,13),(83,72,13),(84,73,13),(85,74,13),(86,75,13),(87,76,13),(88,77,13),(89,78,13),(90,79,13),(91,80,13),(92,81,13),(93,82,13),(94,83,13),(95,84,13),(96,85,13),(97,86,13),(98,87,13),(99,88,13),(100,89,13),(101,90,13),(102,91,13),(103,92,13),(104,93,13),(105,94,13),(106,95,13),(107,96,13),(108,97,13),(109,98,13),(110,99,13),(111,100,13),(112,101,13),(113,102,13),(114,103,13),(115,104,13),(116,105,13),(117,106,13),(118,107,13),(119,108,13),(120,109,13),(121,110,13),(122,111,13),(123,112,13),(124,113,13),(125,114,13),(126,115,12),(127,116,12),(128,117,12),(129,118,12),(130,119,12),(131,120,12),(132,121,12),(133,122,12),(134,123,12),(135,124,12),(136,125,12),(137,126,12),(138,127,12),(139,128,12),(140,129,12),(141,130,12),(142,131,12),(143,132,13),(144,133,13),(145,134,13),(146,135,13),(147,136,13),(148,137,13),(149,138,13),(150,139,13),(151,140,13),(152,141,13),(153,142,13),(154,143,13),(155,144,13),(156,145,13),(157,146,13),(158,147,13),(159,148,13),(160,149,12),(161,150,12),(162,151,12),(163,152,12),(164,153,12),(165,154,12),(166,155,12),(167,156,12),(168,157,12),(169,158,12),(170,159,12),(171,160,12),(172,161,12),(173,162,12),(174,163,12),(175,164,12),(176,165,12),(177,166,12),(178,167,12),(179,168,12),(180,169,12),(181,170,12),(182,171,12),(183,172,12),(184,173,12),(185,174,12),(186,175,12),(187,176,12),(188,177,12),(189,178,12),(190,179,12),(191,180,12),(192,181,12),(193,182,12),(194,183,12),(195,184,13),(196,185,13),(197,186,13),(198,187,13),(199,188,13),(200,189,13),(201,190,13),(202,191,13),(203,192,13),(204,193,13),(205,194,13),(206,195,13),(207,196,13),(208,197,13),(209,198,13),(210,199,13),(211,200,13),(212,201,13),(213,202,13),(214,203,13),(215,204,13),(216,205,13),(217,206,13),(218,207,13),(219,208,13),(220,209,13),(221,210,5),(222,211,13),(223,212,13),(224,213,13),(225,214,5),(226,215,13),(227,216,13),(228,217,13),(229,218,13),(230,219,13);
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
INSERT INTO `IFCategories` VALUES (1,5,1),(2,6,1),(3,7,1),(4,8,2),(5,9,2),(6,10,2),(7,210,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,9,NULL,NULL,NULL,NULL,'text','plain'),(2,9,NULL,NULL,NULL,NULL,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'system.service'),(2,2,'system.service'),(3,3,'system.service'),(4,4,'system.service'),(5,5,'system.service'),(6,6,'com.hero_full'),(7,7,'com.Lord'),(8,9,'com.Lord'),(9,11,'com.Lord'),(10,12,'com.snda.inote'),(11,13,'com.snda.inote'),(12,14,'com.snda.inote'),(13,15,'com.snda.inote'),(14,16,'com.snda.inote'),(15,17,'com.snda.inote'),(16,18,'com.snda.inote'),(17,19,'com.snda.inote'),(18,20,'com.snda.inote'),(19,21,'com.snda.inote');
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,4,0),(3,7,0),(4,4,0),(5,8,0),(6,10,0),(7,12,0),(8,14,0),(9,16,0),(10,20,0),(11,31,0),(12,32,0),(13,34,0),(14,35,0),(15,36,0),(16,37,0),(17,38,0),(18,32,0),(19,39,0),(20,31,0),(21,40,0),(22,41,0),(23,42,0),(24,43,0),(25,44,0),(26,45,0),(27,46,0),(28,47,0),(29,48,0),(30,34,0),(31,35,0),(32,36,0),(33,37,0),(34,38,0),(35,32,0),(36,39,0),(37,31,0),(38,40,0),(39,41,0),(40,42,0),(41,43,0),(42,44,0),(43,45,0),(44,46,0),(45,47,0),(46,48,0),(47,34,0),(48,35,0),(49,36,0),(50,37,0),(51,38,0),(52,32,0),(53,39,0),(54,31,0),(55,40,0),(56,41,0),(57,42,0),(58,43,0),(59,44,0),(60,45,0),(61,46,0),(62,47,0),(63,48,0),(64,34,0),(65,35,0),(66,36,0),(67,37,0),(68,38,0),(69,32,0),(70,39,0),(71,31,0),(72,40,0),(73,41,0),(74,42,0),(75,43,0),(76,44,0),(77,45,0),(78,46,0),(79,47,0),(80,48,0),(81,34,0),(82,35,0),(83,36,0),(84,37,0),(85,38,0),(86,32,0),(87,39,0),(88,31,0),(89,40,0),(90,41,0),(91,42,0),(92,43,0),(93,44,0),(94,45,0),(95,46,0),(96,47,0),(97,48,0),(98,34,0),(99,35,0),(100,36,0),(101,37,0),(102,38,0),(103,32,0),(104,39,0),(105,31,0),(106,40,0),(107,41,0),(108,42,0),(109,43,0),(110,44,0),(111,45,0),(112,46,0),(113,47,0),(114,48,0),(115,34,0),(116,35,0),(117,36,0),(118,37,0),(119,38,0),(120,32,0),(121,39,0),(122,31,0),(123,40,0),(124,41,0),(125,42,0),(126,43,0),(127,44,0),(128,45,0),(129,46,0),(130,47,0),(131,48,0),(132,34,0),(133,35,0),(134,36,0),(135,37,0),(136,38,0),(137,32,0),(138,39,0),(139,31,0),(140,40,0),(141,41,0),(142,42,0),(143,43,0),(144,44,0),(145,45,0),(146,46,0),(147,47,0),(148,48,0),(149,45,0),(150,34,0),(151,35,0),(152,36,0),(153,37,0),(154,38,0),(155,32,0),(156,39,0),(157,31,0),(158,40,0),(159,41,0),(160,42,0),(161,43,0),(162,44,0),(163,45,0),(164,46,0),(165,47,0),(166,48,0),(167,34,0),(168,35,0),(169,36,0),(170,37,0),(171,38,0),(172,32,0),(173,39,0),(174,31,0),(175,40,0),(176,41,0),(177,42,0),(178,43,0),(179,44,0),(180,45,0),(181,46,0),(182,47,0),(183,48,0),(184,34,0),(185,35,0),(186,36,0),(187,37,0),(188,38,0),(189,32,0),(190,39,0),(191,31,0),(192,40,0),(193,41,0),(194,42,0),(195,43,0),(196,44,0),(197,45,0),(198,46,0),(199,47,0),(200,48,0),(201,34,0),(202,35,0),(203,36,0),(204,37,0),(205,38,0),(206,32,0),(207,39,0),(208,31,0),(209,40,0),(210,49,0),(211,41,0),(212,42,0),(213,43,0),(214,51,0),(215,44,0),(216,45,0),(217,46,0),(218,47,0),(219,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,3,0,0),(6,5,0,0),(7,8,0,0),(8,11,1,0),(9,15,0,0),(10,18,1,0),(11,20,0,0),(12,22,0,0),(13,23,0,0),(14,24,0,0),(15,25,0,0),(16,26,0,0),(17,28,0,0),(18,29,0,0),(19,30,0,0),(20,31,0,0),(21,32,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.snda.inote.SuggestionProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_MOCK_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CHANGE_NETWORK_STATE'),(9,'android.permission.DELETE_PACKAGES'),(8,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(11,'android.permission.PERMISSION_NAME'),(7,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(16,'android.permission.WAKE_LOCK'),(12,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE');
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
INSERT INTO `Providers` VALUES (1,33,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'http://t.sina.com/orzgame',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'http://t.sina.com/orzgame',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,1),(2,6,2),(3,7,3),(4,10,4),(5,12,6),(6,13,7),(7,14,8),(8,16,9),(9,17,10),(10,21,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,16),(12,2,1),(13,2,3),(14,2,4),(15,2,5),(16,2,10),(17,2,11),(18,2,12),(19,2,13),(20,2,14),(21,2,15),(22,3,1),(23,3,3),(24,3,4),(25,3,5),(26,3,10),(27,3,11),(28,3,12),(29,3,13),(30,3,14),(31,3,15),(32,4,1),(33,4,3),(34,4,4),(35,4,5),(36,4,10),(37,4,11),(38,4,12),(39,4,13),(40,4,14),(41,4,15),(42,5,17),(43,5,19),(44,5,18),(45,5,4),(46,5,14);
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

-- Dump completed on 2015-10-09  0:41:08
