-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_198
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
INSERT INTO `ActionStrings` VALUES (3,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'android.settings.APPLICATION_SETTINGS'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.igamepower.appmaster.GameBootReceiver'),(11,'com.igamepower.appmaster.Myhall'),(13,'com.igamepower.appmaster.Web');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'one.click.recovery',2),(2,'com.acid',1),(3,'com.corner23.android.universalandroot',11),(4,'com.igamepower.appmaster',1003),(5,'com.droiddream.lovePositions',1),(6,'com.droiddream.bowlingtime',8);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
INSERT INTO `Classes` VALUES (1,1,'one.click.recovery.OneClickRecovery'),(2,1,'one.click.recovery.Phase1'),(3,1,'one.click.recovery.Phase2'),(4,1,'one.click.recovery.AlarmReceiver'),(5,3,'com.corner23.android.universalandroot.UniversalAndroot'),(6,2,'com.acid.q'),(7,2,'com.acid.s'),(8,2,'com.acid.r'),(9,2,'com.acid.u'),(10,2,'com.acid.t'),(11,3,'com.corner23.android.universalandroot.service.SoftRootService'),(12,3,'com.corner23.android.universalandroot.receiver.WidgetProvider'),(13,1,'one.click.recovery.Phase1$4'),(14,1,'one.click.recovery.OneClickRecovery$1'),(15,4,'com.igamepower.appmaster.Web'),(16,4,'com.igamepower.appmaster.Myhall'),(17,4,'com.igamepower.appmaster.HomeActivity'),(18,5,'com.apk.com.lovePositions.MainActivity'),(19,4,'com.igamepower.appmaster.SortActivity1'),(20,5,'com.apk.com.lovePositions.AllActivity'),(21,4,'com.igamepower.appmaster.SortActivity2'),(22,5,'com.apk.com.lovePositions.ViewActivity'),(23,5,'com.apk.com.lovePositions.ContentActivity'),(24,4,'com.igamepower.appmaster.SearchActivity'),(25,5,'com.android.root.main'),(26,4,'com.igamepower.appmaster.ManagerActivity'),(27,5,'com.android.root.Setting'),(28,5,'com.android.root.AlarmReceiver'),(29,4,'com.igamepower.appmaster.GameInfo'),(30,6,'cn.bluesky.fingerbowling.FingerBowling'),(31,4,'com.igamepower.appmaster.TableClass'),(32,6,'com.android.root.main'),(33,4,'com.igamepower.appmaster.GameAlertDialog'),(34,4,'com.igamepower.appmaster.TestView'),(35,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(36,6,'com.android.root.Setting'),(37,4,'com.igamepower.appmaster.DevelopmentSettings'),(38,6,'com.android.root.AlarmReceiver'),(39,6,'com.phonegap.LocalProvider'),(40,4,'com.igamepower.appmaster.GameService'),(41,4,'com.igamepower.appmaster.GameBootReceiver'),(42,5,'com.apk.com.lovePositions.MainActivity$1'),(43,5,'com.apk.com.lovePositions.MainActivity$3'),(44,5,'com.apk.com.lovePositions.ViewActivity$3'),(45,5,'com.apk.com.lovePositions.AllActivity$ItemClickListener'),(46,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(47,4,'com.igamepower.appmaster.bs'),(48,4,'com.igamepower.appmaster.z'),(49,4,'com.igamepower.appmaster.bj'),(50,4,'com.igamepower.appmaster.bi'),(51,4,'com.igamepower.appmaster.cj'),(52,4,'com.igamepower.appmaster.bn'),(53,4,'com.igamepower.appmaster.ah'),(54,4,'com.igamepower.appmaster.ao'),(55,4,'com.igamepower.appmaster.bh');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'root'),(2,11,'result'),(3,12,'appWidgetId'),(4,10,'pdus'),(5,20,'UMENG_APPKEY'),(6,18,'UMENG_APPKEY'),(7,21,'UMENG_APPKEY'),(8,16,'UMENG_APPKEY'),(9,20,'index'),(10,21,'index'),(11,20,'UMENG_CHANNEL'),(12,18,'UMENG_CHANNEL'),(13,21,'UMENG_CHANNEL'),(14,16,'UMENG_CHANNEL'),(15,33,'com.droiddream.bowlingtime.currency'),(16,33,'com.droiddream.bowlingtime.type'),(17,33,'com.droiddream.bowlingtime.data'),(18,22,'version_code'),(19,27,'title'),(20,27,'filepath'),(21,24,'completed'),(22,24,'soft_id'),(23,24,'package_name'),(24,22,'package_name'),(25,24,'url'),(26,24,'filepath'),(27,24,'icon'),(28,24,'app_name'),(29,31,'url'),(30,19,'nextclassid'),(31,27,'status'),(32,24,'total'),(33,31,'content'),(34,24,'status'),(35,14,'nextclassid'),(36,31,'btn_txt'),(37,27,'from_table'),(38,19,'version_code'),(39,22,'status'),(40,19,'status'),(41,19,'package_name'),(42,31,'title');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,15,'a',1,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'a',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',1,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',1,NULL,NULL),(23,25,'a',1,NULL,NULL),(24,26,'a',1,NULL,NULL),(25,27,'s',0,NULL,NULL),(26,28,'s',0,NULL,NULL),(27,29,'a',1,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',1,NULL,NULL),(30,32,'a',1,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',1,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'s',0,NULL,NULL),(35,37,'a',1,NULL,NULL),(36,38,'s',0,NULL,NULL),(37,39,'p',0,NULL,NULL),(38,40,'s',1,NULL,NULL),(39,41,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,2),(3,3,1),(4,4,2),(5,5,11),(6,6,9),(7,7,16),(8,8,16),(9,9,20),(10,10,18),(11,11,23),(12,12,23),(13,13,33),(14,14,30),(15,15,30),(16,16,13),(17,17,31),(18,18,15),(19,19,15),(20,20,24),(21,21,27),(22,22,15),(23,23,14),(24,24,19),(25,25,24),(26,26,19),(27,27,38),(28,28,22),(29,29,39),(30,30,29),(31,31,32),(32,32,31),(33,33,15),(34,34,27),(35,35,15),(36,36,13),(37,37,39),(38,38,39),(39,39,14),(40,40,14),(41,41,24),(42,42,19),(43,43,14),(44,44,14),(45,45,27),(46,46,14),(47,47,15),(48,48,27),(49,49,13),(50,50,31),(51,51,19),(52,52,19),(53,53,29),(54,54,27),(55,55,14),(56,56,31),(57,57,22),(58,58,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<one.click.recovery.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(2,13,'<one.click.recovery.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,14,'<one.click.recovery.OneClickRecovery$1: void onClick(android.view.View)>',90,'a',NULL),(4,13,'<one.click.recovery.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(5,11,'<com.corner23.android.universalandroot.service.SoftRootService: void handleCommand(android.content.Intent)>',49,'a',NULL),(6,9,'<com.acid.u: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(7,42,'<com.apk.com.lovePositions.MainActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',18,'a',NULL),(8,43,'<com.apk.com.lovePositions.MainActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',20,'a',NULL),(9,44,'<com.apk.com.lovePositions.ViewActivity$3: void onClick(android.view.View)>',15,'a',NULL),(10,45,'<com.apk.com.lovePositions.AllActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(11,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(12,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(13,46,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(14,32,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(15,32,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(16,15,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',41,'s',NULL),(17,33,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',27,'a',NULL),(18,17,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(19,47,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(20,26,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(21,29,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',92,'a',NULL),(22,47,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(23,48,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(24,21,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(25,49,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(26,50,'<com.igamepower.appmaster.bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(27,51,'<com.igamepower.appmaster.cj: void run()>',55,'a',NULL),(28,24,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(29,41,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(30,31,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(31,34,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(32,33,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',45,'a',NULL),(33,47,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(34,29,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(35,17,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',59,'a',NULL),(36,52,'<com.igamepower.appmaster.bn: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(37,41,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(38,41,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(39,16,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(40,53,'<com.igamepower.appmaster.ah: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(41,49,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(42,21,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(43,48,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(44,48,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(45,54,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',240,'a',NULL),(46,16,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(47,17,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(48,54,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',221,'a',NULL),(49,15,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',37,'s',NULL),(50,33,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',54,'a',NULL),(51,55,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(52,55,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(53,31,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(54,29,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(55,48,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(56,33,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',36,'a',NULL),(57,24,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(58,55,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,4),(2,4,5),(3,13,8),(4,14,8),(5,20,8),(6,26,1),(7,27,1),(8,31,10),(9,32,1),(10,33,1),(11,35,6),(12,38,8),(13,39,8),(14,40,10),(15,42,11),(16,43,8),(17,44,12),(18,48,1),(19,49,1),(20,50,1),(21,51,1),(22,54,8),(23,55,8),(24,56,13),(25,63,8),(26,65,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,26,1),(2,27,2),(3,32,1),(4,33,2),(5,48,1),(6,49,2),(7,50,1),(8,51,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'one/click/recovery/Phase2'),(2,3,'one/click/recovery/Phase1'),(3,5,'com/corner23/android/universalandroot/UniversalAndroot'),(4,6,'com/acid/s'),(5,7,'com/apk/com/lovePositions/AllActivity'),(6,8,'com/apk/com/lovePositions/ViewActivity'),(7,9,'com/apk/com/lovePositions/ContentActivity'),(8,10,'com/apk/com/lovePositions/ViewActivity'),(9,11,'com/android/root/Setting'),(10,12,'(.*)'),(11,15,'com/android/root/Setting'),(12,16,'(.*)'),(13,17,'com/igamepower/appmaster/GameService'),(14,18,'com/igamepower/appmaster/GameInfo'),(15,19,'com/igamepower/appmaster/Myhall'),(16,21,'com/igamepower/appmaster/GameService'),(17,22,'com/igamepower/appmaster/Myhall'),(18,23,'com/igamepower/appmaster/Myhall'),(19,24,'com/igamepower/appmaster/Myhall'),(20,25,'com/igamepower/appmaster/GameInfo'),(21,28,'com/igamepower/appmaster/Myhall'),(22,29,'com/igamepower/appmaster/GameAlertDialog'),(23,30,'com/igamepower/appmaster/GameInfo'),(24,31,'com/igamepower/appmaster/GameService'),(25,34,'com/igamepower/appmaster/GameService'),(26,36,'com/igamepower/appmaster/GameInfo'),(27,37,'com/igamepower/appmaster/GameService'),(28,40,'com/igamepower/appmaster/GameService'),(29,41,'com/igamepower/appmaster/GameService'),(30,42,'com/igamepower/appmaster/GameService'),(31,45,'com/igamepower/appmaster/GameService'),(32,46,'com/igamepower/appmaster/Myhall'),(33,47,'com/igamepower/appmaster/Myhall'),(34,52,'com/igamepower/appmaster/GameService'),(35,53,'com/igamepower/appmaster/GameInfo'),(36,56,'com/igamepower/appmaster/GameService'),(37,57,'com/igamepower/appmaster/GameAlertDialog'),(38,58,'com/igamepower/appmaster/GameInfo'),(39,59,'com/igamepower/appmaster/Myhall'),(40,60,'com/igamepower/appmaster/GameInfo'),(41,61,'com/igamepower/appmaster/Myhall'),(42,62,'com/igamepower/appmaster/Myhall'),(43,64,'com/igamepower/appmaster/GameService');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,14,2),(3,20,3),(4,38,4),(5,39,5),(6,43,6),(7,44,7),(8,54,8),(9,55,9),(10,63,10),(11,65,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'from_service'),(2,8,'index'),(3,9,'index'),(4,10,'index'),(5,18,'id'),(6,18,'from_table'),(7,18,'detail_flag'),(8,19,'nextclassid'),(9,19,'clicked'),(10,23,'title'),(11,23,'nextclassid'),(12,23,'clicked'),(13,24,'clicked'),(14,25,'title'),(15,28,'title'),(16,28,'nextclassid'),(17,28,'clicked'),(18,29,'title'),(19,29,'btn_txt'),(20,29,'need_adb_flag'),(21,29,'cont'),(22,29,'close_flag'),(23,36,'title'),(24,46,'clicked'),(25,47,'clicked'),(26,57,'title'),(27,57,'btn_txt'),(28,57,'need_adb_flag'),(29,57,'cont'),(30,57,'close_flag'),(31,58,'title'),(32,59,'title'),(33,59,'nextclassid'),(34,59,'clicked'),(35,62,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,6),(17,17,1),(18,18,7),(19,19,9),(20,20,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,1),(6,10,1),(7,14,1),(8,17,1),(9,19,3),(10,20,3);
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
INSERT INTO `IFData` VALUES (1,19,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,39,'application','vnd.android.package-archive'),(2,43,'application','vnd.android.package-archive'),(3,54,'application','vnd.android.package-archive'),(4,55,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'one.click.recovery'),(2,3,'one.click.recovery'),(3,5,'com.corner23.android.universalandroot'),(4,6,'com.acid'),(5,7,'com.droiddream.lovePositions'),(6,8,'com.droiddream.lovePositions'),(7,9,'com.droiddream.lovePositions'),(8,10,'com.droiddream.lovePositions'),(9,11,'com.droiddream.lovePositions'),(10,12,'com.droiddream.lovePositions'),(11,15,'com.droiddream.bowlingtime'),(12,16,'com.droiddream.bowlingtime'),(13,17,'com.igamepower.appmaster'),(14,18,'com.igamepower.appmaster'),(15,19,'com.igamepower.appmaster'),(16,21,'com.igamepower.appmaster'),(17,22,'com.igamepower.appmaster'),(18,23,'com.igamepower.appmaster'),(19,24,'com.igamepower.appmaster'),(20,25,'com.igamepower.appmaster'),(21,26,'NULL-CONSTANT'),(22,27,'NULL-CONSTANT'),(23,28,'com.igamepower.appmaster'),(24,29,'com.igamepower.appmaster'),(25,30,'com.igamepower.appmaster'),(26,31,'com.igamepower.appmaster'),(27,32,'(.*)'),(28,33,'(.*)'),(29,34,'com.igamepower.appmaster'),(30,36,'com.igamepower.appmaster'),(31,37,'com.igamepower.appmaster'),(32,40,'com.igamepower.appmaster'),(33,41,'com.igamepower.appmaster'),(34,42,'com.igamepower.appmaster'),(35,45,'com.igamepower.appmaster'),(36,46,'com.igamepower.appmaster'),(37,47,'com.igamepower.appmaster'),(38,48,'(.*)'),(39,49,''),(40,50,''),(41,51,'(.*)'),(42,52,'com.igamepower.appmaster'),(43,53,'com.igamepower.appmaster'),(44,56,'com.igamepower.appmaster'),(45,57,'com.igamepower.appmaster'),(46,58,'com.igamepower.appmaster'),(47,59,'com.igamepower.appmaster'),(48,60,'com.igamepower.appmaster'),(49,61,'com.igamepower.appmaster'),(50,62,'com.igamepower.appmaster'),(51,64,'com.igamepower.appmaster');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,5,0),(5,10,0),(6,12,0),(7,13,0),(8,19,0),(9,22,0),(10,23,0),(11,24,0),(12,27,0),(13,29,0),(14,30,0),(15,32,0),(16,35,0),(17,38,0),(18,39,0),(19,39,0),(20,39,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,13,1,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,1,0),(21,20,0,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,24,0,0),(26,25,1,0),(27,25,1,0),(28,26,0,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,1,0),(33,30,1,0),(34,31,0,0),(35,32,1,0),(36,33,0,0),(37,34,0,0),(38,35,1,0),(39,36,1,0),(40,37,0,0),(41,38,0,0),(42,39,0,0),(43,40,1,0),(44,41,1,0),(45,42,0,0),(46,43,0,0),(47,44,0,0),(48,45,1,0),(49,45,1,0),(50,45,1,0),(51,45,1,0),(52,46,0,0),(53,47,0,0),(54,48,1,0),(55,48,1,0),(56,49,0,0),(57,50,0,0),(58,51,0,0),(59,52,0,0),(60,53,0,0),(61,54,0,0),(62,55,0,0),(63,56,1,0),(64,57,0,0),(65,58,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,17,38,2,NULL),(2,56,38,2,NULL),(3,38,13,2,NULL),(4,32,13,2,NULL),(5,33,13,2,NULL),(6,35,13,2,NULL),(7,63,13,2,NULL),(8,42,38,2,NULL),(9,52,38,2,NULL),(10,19,14,2,NULL),(11,53,27,2,NULL),(12,38,1,2,NULL),(13,38,6,2,NULL),(14,38,10,2,NULL),(15,38,5,2,NULL),(16,38,12,2,NULL),(17,38,19,2,NULL),(18,38,22,2,NULL),(19,38,24,2,NULL),(20,38,27,2,NULL),(21,38,29,2,NULL),(22,38,32,2,NULL),(23,38,35,2,NULL),(24,38,38,2,NULL),(25,38,39,2,NULL),(26,38,23,2,NULL),(27,38,30,2,NULL),(28,25,27,2,NULL),(29,45,38,2,NULL),(30,32,19,2,NULL),(31,33,19,2,NULL),(32,35,19,2,NULL),(33,63,19,2,NULL),(34,30,27,2,NULL),(35,64,38,2,NULL),(36,32,22,2,NULL),(37,33,22,2,NULL),(38,35,22,2,NULL),(39,63,22,2,NULL),(40,21,38,2,NULL),(41,32,24,2,NULL),(42,33,24,2,NULL),(43,35,24,2,NULL),(44,63,24,2,NULL),(45,22,14,2,NULL),(46,37,38,2,NULL),(47,61,14,2,NULL),(48,32,27,2,NULL),(49,33,27,2,NULL),(50,35,27,2,NULL),(51,63,27,2,NULL),(52,60,27,2,NULL),(53,32,1,2,NULL),(54,33,1,2,NULL),(55,32,6,2,NULL),(56,33,6,2,NULL),(57,32,10,2,NULL),(58,33,10,2,NULL),(59,32,5,2,NULL),(60,33,5,2,NULL),(61,32,12,2,NULL),(62,33,12,2,NULL),(63,35,29,2,NULL),(64,63,29,2,NULL),(65,32,32,2,NULL),(66,33,32,2,NULL),(67,32,35,2,NULL),(68,33,35,2,NULL),(69,32,38,2,NULL),(70,33,38,2,NULL),(71,32,39,2,NULL),(72,33,39,2,NULL),(73,32,23,2,NULL),(74,33,23,2,NULL),(75,32,30,2,NULL),(76,33,30,2,NULL),(77,18,27,2,NULL),(78,57,31,2,NULL),(79,35,1,2,NULL),(80,63,1,2,NULL),(81,35,6,2,NULL),(82,63,6,2,NULL),(83,35,10,2,NULL),(84,63,10,2,NULL),(85,35,5,2,NULL),(86,63,5,2,NULL),(87,35,12,2,NULL),(88,63,12,2,NULL),(89,35,32,2,NULL),(90,63,32,2,NULL),(91,35,35,2,NULL),(92,63,35,2,NULL),(93,35,38,2,NULL),(94,63,38,2,NULL),(95,35,39,2,NULL),(96,63,39,2,NULL),(97,35,23,2,NULL),(98,63,23,2,NULL),(99,35,30,2,NULL),(100,63,30,2,NULL),(101,34,38,2,NULL),(102,31,38,2,NULL),(103,40,38,2,NULL),(104,41,38,2,NULL),(105,6,7,2,NULL),(106,1,3,2,NULL),(107,11,25,2,NULL),(108,11,34,2,NULL),(109,5,5,2,NULL),(110,15,25,2,NULL),(111,15,34,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droiddream.bowlingtime.localprovider');
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_CACHE_FILESYSTEM'),(8,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_MOCK_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.DELETE_CACHE_FILES'),(6,'android.permission.INTERNET'),(22,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(16,'android.permission.READ_LOGS'),(25,'android.permission.READ_OWNER_DATA'),(2,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(20,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(1,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_OWNER_DATA'),(19,'android.permission.WRITE_SECURE_SETTINGS'),(24,'android.permission.WRITE_SETTINGS'),(14,'com.android.launcher.permission.INSTALL_SHORTCUT'),(21,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,37,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,2,3),(6,3,12),(7,2,4),(8,3,13),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,3,5),(17,4,2),(18,4,5),(19,4,6),(20,4,10),(21,4,14),(22,4,15),(23,4,17),(24,4,16),(25,4,19),(26,4,18),(27,4,21),(28,4,20),(29,4,23),(30,4,22),(31,4,25),(32,4,24),(33,5,16),(34,5,2),(35,5,6),(36,5,8),(37,5,12),(38,5,13),(39,6,2),(40,6,6),(41,6,12),(42,6,13);
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

-- Dump completed on 2015-10-12  3:29:38
