-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_463
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
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(15,'android.intent.action.CHOOSER'),(8,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(3,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.RUN'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTER'),(7,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.mobilegame.sokoban.activtys',5),(2,'com.GoldDream.TingTing08ii',1),(3,'com.GoldDream.TingTing07ii',1),(4,'bubei.mouses',1),(5,'com.wAppzmob',1339164528),(6,'com.wSHAMNATION',1337018183),(7,'jp.hudson.android.militarymadnes',1000);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'com.wAppzmob'),(4,'com.wSHAMNATION');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mobilegame.sokoban.activtys.MenuActivity'),(2,1,'com.mobilegame.sokoban.activtys.GameActivity'),(3,1,'com.mobilegame.sokoban.activtys.ScoresList'),(4,1,'com.mobilegame.sokoban.activtys.OverActivity'),(5,1,'com.mobilegame.sokoban.activtys.OptionsActivity'),(6,1,'com.sjhi.client.HandPics'),(7,1,'com.sjhi.client.zjService'),(8,1,'com.sjhi.client.zjReceiver'),(9,3,'com.GoldDream.TingTing07ii.TingTing21'),(10,2,'com.GoldDream.TingTing08ii.TingTing21'),(11,3,'com.GoldDream.TingTing07ii.readme'),(12,2,'com.GoldDream.TingTing08ii.readme'),(13,3,'com.google.ads.AdActivity'),(14,2,'com.google.ads.AdActivity'),(15,3,'com.GoldDream.zj.zjService'),(16,2,'com.GoldDream.zj.zjService'),(17,4,'bubei.mouses.Main'),(18,3,'com.GoldDream.zj.zjReceiver'),(19,2,'com.GoldDream.zj.zjReceiver'),(20,4,'com.sjhi.client.HandPics'),(21,4,'com.sjhi.client.zjService'),(22,4,'com.sjhi.client.zjReceiver'),(23,5,'com.wAppzmob.MainNavigationActivity'),(24,5,'com.wAppzmob.MessageViewer'),(25,5,'com.google.ads.AdActivity'),(26,5,'com.wAppzmob.Server.C2DMClientReceiver'),(27,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(28,6,'com.wSHAMNATION.MainNavigationActivity'),(29,6,'com.wSHAMNATION.MessageViewer'),(30,6,'com.google.ads.AdActivity'),(31,6,'com.wSHAMNATION.Server.C2DMClientReceiver'),(32,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(33,7,'jp.hudson.android.militarymadnes.MilitaryMadness'),(34,7,'com.sjgo.client.HandPics'),(35,7,'com.sjgo.client.oa_fengjing'),(36,7,'com.sjgo.client.oa_girl'),(37,7,'com.sjgo.client.oa_animal'),(38,7,'com.sjgo.client.oa_dongman'),(39,7,'com.sjgo.client.oa_feizhuliu'),(40,7,'com.sjgo.client.viewpic'),(41,7,'net.youmi.android.AdActivity'),(42,7,'com.sjgo.client.zjService'),(43,7,'com.sjgo.client.zjReceiver'),(44,1,'com.mobilegame.sokoban.activtys.MenuActivity$1'),(45,1,'com.mobilegame.sokoban.activtys.MenuActivity$2'),(46,1,'com.mobilegame.sokoban.activtys.MenuActivity$3'),(47,1,'com.mobilegame.sokoban.activtys.OverActivity$1'),(48,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(49,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(50,5,'com.wAppzmob.Views.AboutDialog$1'),(51,6,'com.wSHAMNATION.Views.AboutDialog$1'),(52,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(53,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(54,6,'com.wSHAMNATION.Utils.BrowserDownloadListener'),(55,5,'com.google.android.c2dm.C2DMessaging'),(56,5,'com.wAppzmob.Utils.BrowserDownloadListener'),(57,6,'com.google.android.c2dm.C2DMessaging'),(58,7,'net.youmi.android.be'),(59,7,'net.youmi.android.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'android.intent.extra.PHONE_NUMBER'),(2,8,'incoming_number'),(3,8,'pdus'),(4,19,'pdus'),(5,14,'action'),(6,13,'com.google.ads.AdOpener'),(7,14,'com.google.ads.AdOpener'),(8,19,'incoming_number'),(9,22,'android.intent.extra.PHONE_NUMBER'),(10,19,'android.intent.extra.PHONE_NUMBER'),(11,14,'params'),(12,13,'params'),(13,22,'pdus'),(14,18,'incoming_number'),(15,22,'incoming_number'),(16,18,'pdus'),(17,18,'android.intent.extra.PHONE_NUMBER'),(18,13,'action'),(19,25,'com.google.ads.AdOpener'),(20,30,'params'),(21,27,'unregistered'),(22,25,'com.google.circles.platform.result.extra.ACTION'),(23,27,'message'),(24,27,'url'),(25,25,'action'),(26,27,'registration_id'),(27,32,'message'),(28,30,'action'),(29,24,'url'),(30,25,'params'),(31,27,'error'),(32,29,'url'),(33,25,'com.google.circles.platform.result.extra.CONFIRMATION'),(34,30,'com.google.ads.AdOpener'),(35,30,'com.google.circles.platform.result.extra.ACTION'),(36,30,'com.google.circles.platform.result.extra.CONFIRMATION'),(37,32,'unregistered'),(38,29,'title'),(39,27,'title'),(40,24,'title'),(41,32,'title'),(42,32,'url'),(43,32,'error'),(44,32,'registration_id'),(45,33,'mSystemSwitch'),(46,33,'mLogoSwitch'),(47,33,'logo'),(48,43,'android.intent.extra.PHONE_NUMBER'),(49,33,'mLicenseSwitch'),(50,43,'incoming_number'),(51,43,'pdus'),(52,41,'EB80F3291A8E469c962CA133BDC549D7'),(53,41,'D780FBF4215247bcBB1AC0AD33C474FE'),(54,33,'license'),(55,33,'MilitaryMadness'),(56,41,'172C94EDC717477aBF600D7898A64A8E'),(57,33,'mLogoAlpha'),(58,33,'mLicenseAlpha'),(59,41,'D50EF1926ADD471892E72BCE6D7E032C'),(60,40,'objUrl'),(61,33,'main');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,19,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,19,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,48,'r',1,NULL,NULL),(45,49,'r',1,NULL,NULL),(46,52,'r',1,NULL,NULL),(47,53,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,7),(3,3,8),(4,4,1),(5,5,7),(6,6,1),(7,7,4),(8,8,7),(9,9,8),(10,10,16),(11,11,16),(12,12,14),(13,13,10),(14,14,9),(15,15,21),(16,16,15),(17,17,10),(18,18,22),(19,19,13),(20,20,12),(21,21,21),(22,22,12),(23,23,21),(24,24,10),(25,25,18),(26,26,22),(27,27,10),(28,28,11),(29,29,16),(30,30,15),(31,31,19),(32,32,9),(33,33,9),(34,34,9),(35,35,15),(36,36,11),(37,37,23),(38,38,25),(39,39,30),(40,40,23),(41,41,28),(42,42,25),(43,43,30),(44,44,23),(45,45,28),(46,46,27),(47,46,23),(48,47,28),(49,48,23),(50,49,28),(51,50,23),(52,51,28),(53,52,32),(54,52,28),(55,53,42),(56,54,42),(57,55,37),(58,56,36),(59,57,39),(60,58,43),(61,59,42),(62,60,41),(63,61,41),(64,62,38),(65,63,35),(66,64,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,44,'<com.mobilegame.sokoban.activtys.MenuActivity$1: void onClick(android.view.View)>',7,'a',NULL),(2,7,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(3,8,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(4,45,'<com.mobilegame.sokoban.activtys.MenuActivity$2: void onClick(android.view.View)>',7,'a',NULL),(5,7,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(6,46,'<com.mobilegame.sokoban.activtys.MenuActivity$3: void onClick(android.view.View)>',7,'a',NULL),(7,47,'<com.mobilegame.sokoban.activtys.OverActivity$1: void onClick(android.view.View)>',38,'a',NULL),(8,7,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(9,8,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(10,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(11,16,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(12,14,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(13,10,'<com.GoldDream.TingTing08ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(14,9,'<com.GoldDream.TingTing07ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(15,21,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(16,15,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(17,10,'<com.GoldDream.TingTing08ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(18,22,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(19,13,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(20,12,'<com.GoldDream.TingTing08ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(21,21,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(22,12,'<com.GoldDream.TingTing08ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(23,21,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(24,10,'<com.GoldDream.TingTing08ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(25,18,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(26,22,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(27,10,'<com.GoldDream.TingTing08ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(28,11,'<com.GoldDream.TingTing07ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(29,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(30,15,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(31,19,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(32,9,'<com.GoldDream.TingTing07ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(33,9,'<com.GoldDream.TingTing07ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(34,9,'<com.GoldDream.TingTing07ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(35,15,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(36,11,'<com.GoldDream.TingTing07ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(37,23,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(38,25,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(39,30,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(40,50,'<com.wAppzmob.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(41,51,'<com.wSHAMNATION.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(42,25,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(43,30,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(44,23,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(45,54,'<com.wSHAMNATION.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(46,55,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(47,54,'<com.wSHAMNATION.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(48,56,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(49,28,'<com.wSHAMNATION.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(50,56,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(51,28,'<com.wSHAMNATION.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(52,57,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(53,42,'<com.sjgo.client.zjService: void a()>',119,'a',NULL),(54,42,'<com.sjgo.client.zjService: void a()>',110,'a',NULL),(55,37,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(56,36,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(57,39,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(58,43,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(59,42,'<com.sjgo.client.zjService: void a()>',102,'a',NULL),(60,58,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(61,59,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(62,38,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(63,35,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(64,43,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,8),(2,5,9),(3,8,10),(4,9,11),(5,10,8),(6,11,9),(7,12,10),(8,13,12),(9,14,12),(10,15,10),(11,17,8),(12,18,9),(13,21,10),(14,22,10),(15,23,10),(16,24,12),(17,25,10),(18,26,12),(19,27,9),(20,29,11),(21,30,11),(22,31,10),(23,32,10),(24,33,10),(25,34,10),(26,35,11),(27,36,10),(28,37,10),(29,39,8),(30,40,10),(31,41,15),(32,42,15),(33,43,15),(34,44,15),(35,45,15),(36,46,15),(37,47,15),(38,48,15),(39,51,10),(40,52,10),(41,53,10),(42,54,10),(43,55,10),(44,56,10),(45,57,10),(46,58,12),(47,59,10),(48,60,12),(49,61,12),(50,62,10),(51,63,12),(52,64,10),(53,65,10),(54,66,10),(55,67,16),(56,68,10),(57,69,10),(58,70,10),(59,71,10),(60,72,15),(61,73,15),(62,74,15),(63,75,15),(64,76,15),(65,77,15),(66,78,15),(67,79,15),(68,80,16),(69,81,10),(70,82,8),(71,87,9),(72,88,10),(73,89,10),(74,90,10),(75,91,10),(76,92,10),(77,93,10),(78,94,10),(79,95,10),(80,96,10),(81,97,15),(82,98,15),(83,99,15),(84,100,15),(85,101,15),(86,102,15),(87,103,15),(88,104,15),(89,107,11);
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
INSERT INTO `ICategories` VALUES (1,49,1),(2,50,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/mobilegame/sokoban/activtys/GameActivity'),(2,3,'com/sjhi/client/HandPics'),(3,4,'com/mobilegame/sokoban/activtys/OptionsActivity'),(4,6,'com/mobilegame/sokoban/activtys/ScoresList'),(5,7,'com/mobilegame/sokoban/activtys/MenuActivity'),(6,8,'com.android.packageinstaller.PackageInstallerActivity'),(7,9,'com/sjhi/client/zjService'),(8,16,'com/GoldDream/zj/zjService'),(9,19,'com/GoldDream/TingTing08ii/readme'),(10,20,'com/sjhi/client/HandPics'),(11,23,'com.android.packageinstaller.PackageInstallerActivity'),(12,28,'com/GoldDream/zj/zjService'),(13,29,'com/GoldDream/zj/zjService'),(14,30,'com/sjhi/client/zjService'),(15,33,'com.android.packageinstaller.PackageInstallerActivity'),(16,34,'com.android.packageinstaller.PackageInstallerActivity'),(17,35,'com/GoldDream/zj/zjService'),(18,38,'com/GoldDream/TingTing07ii/readme'),(19,49,'com.google.android.apps.circles.platform.PlusOneActivity'),(20,50,'com.google.android.apps.circles.platform.PlusOneActivity'),(21,81,'com.android.packageinstaller.PackageInstallerActivity'),(22,83,'com/sjgo/client/viewpic'),(23,84,'com/sjgo/client/viewpic'),(24,85,'com/sjgo/client/viewpic'),(25,86,'com/sjgo/client/HandPics'),(26,105,'com/sjgo/client/viewpic'),(27,106,'com/sjgo/client/viewpic'),(28,107,'com/sjgo/client/zjService');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,5,2),(3,8,3),(4,10,4),(5,11,5),(6,12,6),(7,13,7),(8,14,8),(9,15,9),(10,17,10),(11,18,11),(12,21,12),(13,22,13),(14,23,14),(15,24,15),(16,25,16),(17,26,17),(18,27,18),(19,31,19),(20,32,20),(21,33,21),(22,34,22),(23,36,23),(24,37,24),(25,39,25),(26,40,26),(27,51,27),(28,52,28),(29,53,29),(30,54,30),(31,55,31),(32,56,32),(33,57,33),(34,58,34),(35,59,35),(36,60,36),(37,61,37),(38,62,38),(39,63,39),(40,64,40),(41,65,41),(42,66,42),(43,68,43),(44,69,44),(45,70,45),(46,71,46),(47,81,47),(48,82,48),(49,87,49),(50,88,50),(51,89,51),(52,90,52),(53,91,53),(54,92,54),(55,93,55),(56,94,56),(57,95,57),(58,96,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,41,'android.intent.extra.INTENT'),(2,42,'android.intent.extra.INTENT'),(3,43,'android.intent.extra.TITLE'),(4,43,'android.intent.extra.INTENT'),(5,44,'android.intent.extra.INTENT'),(6,45,'android.intent.extra.TITLE'),(7,45,'android.intent.extra.INTENT'),(8,46,'android.intent.extra.INTENT'),(9,47,'android.intent.extra.TITLE'),(10,47,'android.intent.extra.INTENT'),(11,48,'android.intent.extra.TITLE'),(12,48,'android.intent.extra.INTENT'),(13,49,'com.google.circles.platform.intent.extra.ACTION'),(14,49,'(.*)'),(15,49,'com.google.circles.platform.intent.extra.ENTITY'),(16,49,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(17,50,'com.google.circles.platform.intent.extra.ACTION'),(18,50,'(.*)'),(19,50,'com.google.circles.platform.intent.extra.ENTITY'),(20,50,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(21,67,'sender'),(22,67,'app'),(23,72,'android.intent.extra.INTENT'),(24,73,'android.intent.extra.INTENT'),(25,74,'android.intent.extra.TITLE'),(26,74,'android.intent.extra.INTENT'),(27,75,'android.intent.extra.INTENT'),(28,76,'android.intent.extra.TITLE'),(29,76,'android.intent.extra.INTENT'),(30,77,'android.intent.extra.INTENT'),(31,78,'android.intent.extra.TITLE'),(32,78,'android.intent.extra.INTENT'),(33,79,'android.intent.extra.TITLE'),(34,79,'android.intent.extra.INTENT'),(35,80,'sender'),(36,80,'app'),(37,83,'objUrl'),(38,84,'objUrl'),(39,85,'objUrl'),(40,86,'objUrl'),(41,97,'android.intent.extra.INTENT'),(42,98,'android.intent.extra.INTENT'),(43,99,'android.intent.extra.TITLE'),(44,99,'android.intent.extra.INTENT'),(45,100,'android.intent.extra.INTENT'),(46,101,'android.intent.extra.TITLE'),(47,101,'android.intent.extra.INTENT'),(48,102,'android.intent.extra.INTENT'),(49,103,'android.intent.extra.TITLE'),(50,103,'android.intent.extra.INTENT'),(51,104,'android.intent.extra.TITLE'),(52,104,'android.intent.extra.INTENT'),(53,105,'objUrl'),(54,106,'objUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,3,1),(7,4,1),(8,5,1),(9,6,4),(10,6,5),(11,6,3),(12,6,2),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,2),(18,8,5),(19,8,3),(20,8,4),(21,9,1),(22,10,6),(23,11,7),(24,12,1),(25,13,7),(26,14,6),(27,15,1),(28,16,2),(29,16,3),(30,16,4),(31,16,5),(32,17,14),(33,17,13),(34,18,13),(35,18,14),(36,19,14),(37,19,13),(38,20,14),(39,20,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,9,1),(6,9,2),(7,10,3),(8,11,3),(9,12,2),(10,12,1),(11,13,4),(12,14,4),(13,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'(.*)','(.*)'),(2,24,'(.*)','(.*)'),(3,58,'(.*)','(.*)'),(4,61,'(.*)','(.*)'),(5,62,'(.*)','(.*)'),(6,64,'(.*)','(.*)'),(7,88,'application','vnd.android.package-archive'),(8,89,'application','vnd.android.package-archive'),(9,90,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,92,'application','vnd.android.package-archive'),(12,93,'application','vnd.android.package-archive'),(13,94,'application','vnd.android.package-archive'),(14,95,'application','vnd.android.package-archive'),(15,96,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.mobilegame.sokoban.activtys'),(2,3,'com.mobilegame.sokoban.activtys'),(3,4,'com.mobilegame.sokoban.activtys'),(4,6,'com.mobilegame.sokoban.activtys'),(5,7,'com.mobilegame.sokoban.activtys'),(6,8,'com.android.packageinstaller'),(7,9,'com.mobilegame.sokoban.activtys'),(8,16,'com.GoldDream.TingTing07ii'),(9,19,'com.GoldDream.TingTing08ii'),(10,20,'bubei.mouses'),(11,23,'com.android.packageinstaller'),(12,28,'com.GoldDream.TingTing08ii'),(13,29,'com.GoldDream.TingTing07ii'),(14,30,'bubei.mouses'),(15,33,'com.android.packageinstaller'),(16,34,'com.android.packageinstaller'),(17,35,'com.GoldDream.TingTing08ii'),(18,38,'com.GoldDream.TingTing07ii'),(19,49,'com.google.android.apps.plus'),(20,50,'com.google.android.apps.plus'),(21,81,'com.android.packageinstaller'),(22,83,'jp.hudson.android.militarymadnes'),(23,84,'jp.hudson.android.militarymadnes'),(24,85,'jp.hudson.android.militarymadnes'),(25,86,'jp.hudson.android.militarymadnes'),(26,105,'jp.hudson.android.militarymadnes'),(27,106,'jp.hudson.android.militarymadnes'),(28,107,'jp.hudson.android.militarymadnes');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,10,0),(5,17,0),(6,18,0),(7,19,0),(8,22,0),(9,23,0),(10,27,0),(11,27,0),(12,28,0),(13,32,0),(14,32,0),(15,33,0),(16,43,0),(17,44,0),(18,45,0),(19,46,0),(20,47,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,12,1,0),(14,12,1,0),(15,13,1,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,17,0,0),(20,18,0,0),(21,19,1,0),(22,20,1,0),(23,21,0,0),(24,19,1,0),(25,22,1,0),(26,19,1,0),(27,23,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,28,1,0),(33,29,0,0),(34,30,0,0),(35,31,0,0),(36,32,1,0),(37,33,1,0),(38,34,0,0),(39,35,1,0),(40,36,1,0),(41,37,1,0),(42,37,1,0),(43,37,1,0),(44,37,1,0),(45,37,1,0),(46,37,1,0),(47,37,1,0),(48,37,1,0),(49,38,0,0),(50,39,0,0),(51,40,1,0),(52,41,1,0),(53,40,1,0),(54,41,1,0),(55,40,1,0),(56,41,1,0),(57,42,1,0),(58,42,1,0),(59,43,1,0),(60,42,1,0),(61,43,1,0),(62,42,1,0),(63,43,1,0),(64,43,1,0),(65,44,1,0),(66,45,1,0),(67,46,1,0),(68,47,1,0),(69,48,1,0),(70,49,1,0),(71,50,1,0),(72,51,1,0),(73,51,1,0),(74,51,1,0),(75,51,1,0),(76,51,1,0),(77,51,1,0),(78,51,1,0),(79,51,1,0),(80,52,1,0),(81,53,0,0),(82,54,1,0),(83,55,0,0),(84,56,0,0),(85,57,0,0),(86,58,0,0),(87,59,1,0),(88,60,1,0),(89,60,1,0),(90,60,1,0),(91,60,1,0),(92,60,1,0),(93,60,1,0),(94,60,1,0),(95,60,1,0),(96,60,1,0),(97,61,1,0),(98,61,1,0),(99,61,1,0),(100,61,1,0),(101,61,1,0),(102,61,1,0),(103,61,1,0),(104,61,1,0),(105,62,0,0),(106,63,0,0),(107,64,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,72,1,2,NULL),(2,73,1,2,NULL),(3,74,1,2,NULL),(4,75,1,2,NULL),(5,76,1,2,NULL),(6,77,1,2,NULL),(7,78,1,2,NULL),(8,79,1,2,NULL),(9,5,28,2,NULL),(10,72,8,2,NULL),(11,73,8,2,NULL),(12,74,8,2,NULL),(13,75,8,2,NULL),(14,76,8,2,NULL),(15,77,8,2,NULL),(16,78,8,2,NULL),(17,79,8,2,NULL),(18,72,10,2,NULL),(19,73,10,2,NULL),(20,74,10,2,NULL),(21,75,10,2,NULL),(22,76,10,2,NULL),(23,77,10,2,NULL),(24,78,10,2,NULL),(25,79,10,2,NULL),(26,12,28,2,NULL),(27,14,28,2,NULL),(28,11,28,2,NULL),(29,72,19,2,NULL),(30,73,19,2,NULL),(31,74,19,2,NULL),(32,75,19,2,NULL),(33,76,19,2,NULL),(34,77,19,2,NULL),(35,78,19,2,NULL),(36,79,19,2,NULL),(37,72,44,2,NULL),(38,73,44,2,NULL),(39,74,44,2,NULL),(40,75,44,2,NULL),(41,76,44,2,NULL),(42,77,44,2,NULL),(43,78,44,2,NULL),(44,79,44,2,NULL),(45,72,9,2,NULL),(46,73,9,2,NULL),(47,74,9,2,NULL),(48,75,9,2,NULL),(49,76,9,2,NULL),(50,77,9,2,NULL),(51,78,9,2,NULL),(52,79,9,2,NULL),(53,21,28,2,NULL),(54,26,28,2,NULL),(55,18,28,2,NULL),(56,72,18,2,NULL),(57,73,18,2,NULL),(58,74,18,2,NULL),(59,75,18,2,NULL),(60,76,18,2,NULL),(61,77,18,2,NULL),(62,78,18,2,NULL),(63,79,18,2,NULL),(64,72,45,2,NULL),(65,73,45,2,NULL),(66,74,45,2,NULL),(67,75,45,2,NULL),(68,76,45,2,NULL),(69,77,45,2,NULL),(70,78,45,2,NULL),(71,79,45,2,NULL),(72,72,17,2,NULL),(73,73,17,2,NULL),(74,74,17,2,NULL),(75,75,17,2,NULL),(76,76,17,2,NULL),(77,77,17,2,NULL),(78,78,17,2,NULL),(79,79,17,2,NULL),(80,27,28,2,NULL),(81,72,22,2,NULL),(82,73,22,2,NULL),(83,74,22,2,NULL),(84,75,22,2,NULL),(85,76,22,2,NULL),(86,77,22,2,NULL),(87,78,22,2,NULL),(88,79,22,2,NULL),(89,72,23,2,NULL),(90,73,23,2,NULL),(91,74,23,2,NULL),(92,75,23,2,NULL),(93,76,23,2,NULL),(94,77,23,2,NULL),(95,78,23,2,NULL),(96,79,23,2,NULL),(97,41,28,2,NULL),(98,42,28,2,NULL),(99,43,28,2,NULL),(100,44,28,2,NULL),(101,45,28,2,NULL),(102,46,28,2,NULL),(103,47,28,2,NULL),(104,48,28,2,NULL),(105,57,28,2,NULL),(106,60,28,2,NULL),(107,72,27,2,NULL),(108,73,27,2,NULL),(109,74,27,2,NULL),(110,75,27,2,NULL),(111,76,27,2,NULL),(112,77,27,2,NULL),(113,78,27,2,NULL),(114,79,27,2,NULL),(115,72,47,2,NULL),(116,73,47,2,NULL),(117,74,47,2,NULL),(118,75,47,2,NULL),(119,76,47,2,NULL),(120,77,47,2,NULL),(121,78,47,2,NULL),(122,79,47,2,NULL),(123,59,28,2,NULL),(124,63,28,2,NULL),(125,72,32,2,NULL),(126,73,32,2,NULL),(127,74,32,2,NULL),(128,75,32,2,NULL),(129,76,32,2,NULL),(130,77,32,2,NULL),(131,78,32,2,NULL),(132,79,32,2,NULL),(133,72,46,2,NULL),(134,73,46,2,NULL),(135,74,46,2,NULL),(136,75,46,2,NULL),(137,76,46,2,NULL),(138,77,46,2,NULL),(139,78,46,2,NULL),(140,79,46,2,NULL),(141,72,33,2,NULL),(142,73,33,2,NULL),(143,74,33,2,NULL),(144,75,33,2,NULL),(145,76,33,2,NULL),(146,77,33,2,NULL),(147,78,33,2,NULL),(148,79,33,2,NULL),(149,87,28,2,NULL),(150,72,43,2,NULL),(151,73,43,2,NULL),(152,74,43,2,NULL),(153,75,43,2,NULL),(154,76,43,2,NULL),(155,77,43,2,NULL),(156,78,43,2,NULL),(157,79,43,2,NULL),(158,59,1,2,NULL),(159,63,1,2,NULL),(160,59,8,2,NULL),(161,63,8,2,NULL),(162,59,10,2,NULL),(163,63,10,2,NULL),(164,59,19,2,NULL),(165,63,19,2,NULL),(166,59,44,2,NULL),(167,63,44,2,NULL),(168,59,9,2,NULL),(169,63,9,2,NULL),(170,59,18,2,NULL),(171,63,18,2,NULL),(172,59,45,2,NULL),(173,63,45,2,NULL),(174,59,17,2,NULL),(175,63,17,2,NULL),(176,59,22,2,NULL),(177,63,22,2,NULL),(178,59,23,2,NULL),(179,63,23,2,NULL),(180,59,27,2,NULL),(181,63,27,2,NULL),(182,59,47,2,NULL),(183,63,47,2,NULL),(184,59,32,2,NULL),(185,63,32,2,NULL),(186,59,46,2,NULL),(187,63,46,2,NULL),(188,59,33,2,NULL),(189,63,33,2,NULL),(190,59,43,2,NULL),(191,63,43,2,NULL),(192,5,32,2,NULL),(193,12,32,2,NULL),(194,14,32,2,NULL),(195,11,32,2,NULL),(196,21,32,2,NULL),(197,26,32,2,NULL),(198,18,32,2,NULL),(199,27,32,2,NULL),(200,41,32,2,NULL),(201,42,32,2,NULL),(202,43,32,2,NULL),(203,44,32,2,NULL),(204,45,32,2,NULL),(205,46,32,2,NULL),(206,47,32,2,NULL),(207,48,32,2,NULL),(208,57,32,2,NULL),(209,60,32,2,NULL),(210,87,32,2,NULL),(211,5,46,2,NULL),(212,12,46,2,NULL),(213,14,46,2,NULL),(214,11,46,2,NULL),(215,21,46,2,NULL),(216,26,46,2,NULL),(217,18,46,2,NULL),(218,27,46,2,NULL),(219,41,46,2,NULL),(220,42,46,2,NULL),(221,43,46,2,NULL),(222,44,46,2,NULL),(223,45,46,2,NULL),(224,46,46,2,NULL),(225,47,46,2,NULL),(226,48,46,2,NULL),(227,57,46,2,NULL),(228,60,46,2,NULL),(229,87,46,2,NULL),(230,41,1,2,NULL),(231,42,1,2,NULL),(232,43,1,2,NULL),(233,44,1,2,NULL),(234,45,1,2,NULL),(235,46,1,2,NULL),(236,47,1,2,NULL),(237,48,1,2,NULL),(238,5,23,2,NULL),(239,41,8,2,NULL),(240,42,8,2,NULL),(241,43,8,2,NULL),(242,44,8,2,NULL),(243,45,8,2,NULL),(244,46,8,2,NULL),(245,47,8,2,NULL),(246,48,8,2,NULL),(247,41,10,2,NULL),(248,42,10,2,NULL),(249,43,10,2,NULL),(250,44,10,2,NULL),(251,45,10,2,NULL),(252,46,10,2,NULL),(253,47,10,2,NULL),(254,48,10,2,NULL),(255,12,23,2,NULL),(256,14,23,2,NULL),(257,11,23,2,NULL),(258,41,19,2,NULL),(259,42,19,2,NULL),(260,43,19,2,NULL),(261,44,19,2,NULL),(262,45,19,2,NULL),(263,46,19,2,NULL),(264,47,19,2,NULL),(265,48,19,2,NULL),(266,41,44,2,NULL),(267,42,44,2,NULL),(268,43,44,2,NULL),(269,44,44,2,NULL),(270,45,44,2,NULL),(271,46,44,2,NULL),(272,47,44,2,NULL),(273,48,44,2,NULL),(274,41,9,2,NULL),(275,42,9,2,NULL),(276,43,9,2,NULL),(277,44,9,2,NULL),(278,45,9,2,NULL),(279,46,9,2,NULL),(280,47,9,2,NULL),(281,48,9,2,NULL),(282,21,23,2,NULL),(283,26,23,2,NULL),(284,18,23,2,NULL),(285,41,18,2,NULL),(286,42,18,2,NULL),(287,43,18,2,NULL),(288,44,18,2,NULL),(289,45,18,2,NULL),(290,46,18,2,NULL),(291,47,18,2,NULL),(292,48,18,2,NULL),(293,41,45,2,NULL),(294,42,45,2,NULL),(295,43,45,2,NULL),(296,44,45,2,NULL),(297,45,45,2,NULL),(298,46,45,2,NULL),(299,47,45,2,NULL),(300,48,45,2,NULL),(301,41,17,2,NULL),(302,42,17,2,NULL),(303,43,17,2,NULL),(304,44,17,2,NULL),(305,45,17,2,NULL),(306,46,17,2,NULL),(307,47,17,2,NULL),(308,48,17,2,NULL),(309,27,23,2,NULL),(310,41,22,2,NULL),(311,42,22,2,NULL),(312,43,22,2,NULL),(313,44,22,2,NULL),(314,45,22,2,NULL),(315,46,22,2,NULL),(316,47,22,2,NULL),(317,48,22,2,NULL),(318,57,23,2,NULL),(319,60,23,2,NULL),(320,41,27,2,NULL),(321,42,27,2,NULL),(322,43,27,2,NULL),(323,44,27,2,NULL),(324,45,27,2,NULL),(325,46,27,2,NULL),(326,47,27,2,NULL),(327,48,27,2,NULL),(328,41,47,2,NULL),(329,42,47,2,NULL),(330,43,47,2,NULL),(331,44,47,2,NULL),(332,45,47,2,NULL),(333,46,47,2,NULL),(334,47,47,2,NULL),(335,48,47,2,NULL),(336,41,33,2,NULL),(337,42,33,2,NULL),(338,43,33,2,NULL),(339,44,33,2,NULL),(340,45,33,2,NULL),(341,46,33,2,NULL),(342,47,33,2,NULL),(343,48,33,2,NULL),(344,87,23,2,NULL),(345,41,43,2,NULL),(346,42,43,2,NULL),(347,43,43,2,NULL),(348,44,43,2,NULL),(349,45,43,2,NULL),(350,46,43,2,NULL),(351,47,43,2,NULL),(352,48,43,2,NULL),(353,57,1,2,NULL),(354,60,1,2,NULL),(355,57,8,2,NULL),(356,60,8,2,NULL),(357,57,10,2,NULL),(358,60,10,2,NULL),(359,57,19,2,NULL),(360,60,19,2,NULL),(361,57,44,2,NULL),(362,60,44,2,NULL),(363,57,9,2,NULL),(364,60,9,2,NULL),(365,57,18,2,NULL),(366,60,18,2,NULL),(367,57,45,2,NULL),(368,60,45,2,NULL),(369,57,17,2,NULL),(370,60,17,2,NULL),(371,57,22,2,NULL),(372,60,22,2,NULL),(373,57,27,2,NULL),(374,60,27,2,NULL),(375,57,47,2,NULL),(376,60,47,2,NULL),(377,57,33,2,NULL),(378,60,33,2,NULL),(379,57,43,2,NULL),(380,60,43,2,NULL),(381,5,27,2,NULL),(382,12,27,2,NULL),(383,14,27,2,NULL),(384,11,27,2,NULL),(385,21,27,2,NULL),(386,26,27,2,NULL),(387,18,27,2,NULL),(388,27,27,2,NULL),(389,87,27,2,NULL),(390,5,47,2,NULL),(391,12,47,2,NULL),(392,14,47,2,NULL),(393,11,47,2,NULL),(394,21,47,2,NULL),(395,26,47,2,NULL),(396,18,47,2,NULL),(397,27,47,2,NULL),(398,87,47,2,NULL),(399,19,12,2,NULL),(400,28,15,2,NULL),(401,28,16,2,NULL),(402,5,10,2,NULL),(403,12,10,2,NULL),(404,14,10,2,NULL),(405,11,10,2,NULL),(406,21,10,2,NULL),(407,26,10,2,NULL),(408,18,10,2,NULL),(409,27,10,2,NULL),(410,87,10,2,NULL),(411,12,1,2,NULL),(412,14,1,2,NULL),(413,12,8,2,NULL),(414,14,8,2,NULL),(415,12,19,2,NULL),(416,14,19,2,NULL),(417,12,44,2,NULL),(418,14,44,2,NULL),(419,12,9,2,NULL),(420,14,9,2,NULL),(421,12,18,2,NULL),(422,14,18,2,NULL),(423,12,45,2,NULL),(424,14,45,2,NULL),(425,12,17,2,NULL),(426,14,17,2,NULL),(427,12,22,2,NULL),(428,14,22,2,NULL),(429,12,33,2,NULL),(430,14,33,2,NULL),(431,12,43,2,NULL),(432,14,43,2,NULL),(433,11,1,2,NULL),(434,11,8,2,NULL),(435,11,19,2,NULL),(436,11,44,2,NULL),(437,11,9,2,NULL),(438,11,18,2,NULL),(439,11,45,2,NULL),(440,11,17,2,NULL),(441,11,22,2,NULL),(442,11,33,2,NULL),(443,11,43,2,NULL),(444,35,15,2,NULL),(445,35,16,2,NULL),(446,5,19,2,NULL),(447,21,19,2,NULL),(448,26,19,2,NULL),(449,18,19,2,NULL),(450,27,19,2,NULL),(451,87,19,2,NULL),(452,5,44,2,NULL),(453,21,44,2,NULL),(454,26,44,2,NULL),(455,18,44,2,NULL),(456,27,44,2,NULL),(457,87,44,2,NULL),(458,16,15,2,NULL),(459,16,16,2,NULL),(460,38,11,2,NULL),(461,5,9,2,NULL),(462,21,9,2,NULL),(463,26,9,2,NULL),(464,18,9,2,NULL),(465,27,9,2,NULL),(466,87,9,2,NULL),(467,21,1,2,NULL),(468,26,1,2,NULL),(469,21,8,2,NULL),(470,26,8,2,NULL),(471,21,18,2,NULL),(472,26,18,2,NULL),(473,21,45,2,NULL),(474,26,45,2,NULL),(475,21,17,2,NULL),(476,26,17,2,NULL),(477,21,22,2,NULL),(478,26,22,2,NULL),(479,21,33,2,NULL),(480,26,33,2,NULL),(481,21,43,2,NULL),(482,26,43,2,NULL),(483,18,1,2,NULL),(484,18,8,2,NULL),(485,18,18,2,NULL),(486,18,45,2,NULL),(487,18,17,2,NULL),(488,18,22,2,NULL),(489,18,33,2,NULL),(490,18,43,2,NULL),(491,29,15,2,NULL),(492,29,16,2,NULL),(493,5,18,2,NULL),(494,27,18,2,NULL),(495,87,18,2,NULL),(496,5,45,2,NULL),(497,27,45,2,NULL),(498,87,45,2,NULL),(499,5,33,2,NULL),(500,27,33,2,NULL),(501,87,33,2,NULL),(502,106,40,2,NULL),(503,84,40,2,NULL),(504,83,40,2,NULL),(505,105,40,2,NULL),(506,85,40,2,NULL),(507,87,1,2,NULL),(508,87,8,2,NULL),(509,87,17,2,NULL),(510,87,22,2,NULL),(511,87,43,2,NULL),(512,86,34,2,NULL),(513,107,42,2,NULL),(514,5,43,2,NULL),(515,27,43,2,NULL),(516,5,1,2,NULL),(517,27,1,2,NULL),(518,5,8,2,NULL),(519,5,17,2,NULL),(520,5,22,2,NULL),(521,3,6,2,NULL),(522,3,20,2,NULL),(523,9,7,2,NULL),(524,9,21,2,NULL),(525,27,8,2,NULL),(526,27,17,2,NULL),(527,27,22,2,NULL),(528,20,6,2,NULL),(529,20,20,2,NULL),(530,30,7,2,NULL),(531,30,21,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CALL_PHONE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(11,'android.permission.INTERNET'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(14,'android.permission.SEND_SMS'),(21,'android.permission.VIBRATE'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.webkit.permission.PLUGIN'),(18,'com.google.android.c2dm.permission.RECEIVE'),(19,'com.google.android.c2dm.permission.SEND'),(16,'com.wAppzmob.permission.C2D_MESSAGE'),(20,'com.wSHAMNATION.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (16,'s'),(20,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,'package','(.*)',NULL,NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(10,'package','(.*)',NULL,NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9962&cid=1000',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9962&cid=1000',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(20,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(24,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(25,'package','(.*)',NULL,NULL,NULL,NULL),(26,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(27,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(28,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=com.wAppzmob',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=com.wSHAMNATION',NULL,NULL,NULL),(46,NULL,NULL,'',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,'package','(.*)',NULL,NULL,NULL,NULL),(49,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,3,1),(16,3,2),(17,2,2),(18,2,3),(19,3,3),(20,2,4),(21,3,4),(22,3,5),(23,2,5),(24,3,6),(25,2,6),(26,3,7),(27,2,7),(28,3,8),(29,2,8),(30,3,9),(31,2,9),(32,3,10),(33,2,10),(34,3,11),(35,2,11),(36,3,12),(37,2,12),(38,3,13),(39,2,13),(40,3,14),(41,2,14),(42,4,1),(43,3,15),(44,2,15),(45,4,2),(46,4,3),(47,4,4),(48,4,6),(49,4,7),(50,4,8),(51,4,9),(52,4,10),(53,4,11),(54,4,12),(55,4,13),(56,5,17),(57,5,16),(58,5,18),(59,5,11),(60,5,13),(61,6,17),(62,6,18),(63,6,20),(64,6,11),(65,6,13),(66,7,1),(67,7,2),(68,7,3),(69,7,4),(70,7,6),(71,7,7),(72,7,8),(73,7,9),(74,7,10),(75,7,11),(76,7,12),(77,7,13),(78,7,21);
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

-- Dump completed on 2015-10-12  3:30:34
