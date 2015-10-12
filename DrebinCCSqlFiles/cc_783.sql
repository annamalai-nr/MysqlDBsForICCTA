-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_783
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
INSERT INTO `ActionStrings` VALUES (13,'android.appwidget.action.APPWIDGET_UPDATE'),(14,'android.intent.action.BATTERY_CHANGED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.PACKAGE_CHANGED'),(4,'android.intent.action.PACKAGE_INSTALL'),(5,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(7,'android.intent.action.PACKAGE_RESTARTED'),(9,'android.intent.action.VIEW'),(15,'android.media.AUDIO_BECOMING_SILENT'),(16,'android.settings.SECURITY_SETTINGS'),(8,'com.noshufou.android.su.REQUEST'),(11,'net.sunyidingophone.environmental.LastAction'),(10,'net.sunyidingophone.environmental.NextAction'),(12,'net.sunyidingophone.environmental.UpdateTime');
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
INSERT INTO `Applications` VALUES (1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08',1),(2,'hider.AppInstall.screencapture',1),(3,'com.AudioConsole',1),(4,'app.BatteryMonitor2_0',1),(5,'org.expressme.love.ui',1),(6,'net.sunyidingophone.environmental',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.AppInstall'),(2,1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.InstallService'),(3,1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver'),(4,1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.SuRequestReceiver'),(5,3,'com.AudioConsole.AudioConsole'),(6,2,'hider.AppInstall.screencapture.AppInstall'),(7,3,'com.AudioConsole.AudioConsole'),(8,3,'com.AudioConsole.InstallService'),(9,3,'com.AudioConsole.InstallService'),(10,2,'hider.AppInstall.screencapture.InstallService'),(11,4,'app.BatteryMonitor2_0.BatteryMonitor'),(12,3,'com.AudioConsole.PackageReceiver'),(13,2,'hider.AppInstall.screencapture.PackageReceiver'),(14,4,'app.BatteryMonitor2_0.InstallService'),(15,2,'hider.AppInstall.screencapture.SuRequestReceiver'),(16,5,'org.expressme.love.ui.MainMenu'),(17,4,'app.BatteryMonitor2_0.PackageReceiver'),(18,5,'org.expressme.love.ui.LoveActivity'),(19,5,'org.expressme.love.ui.InstallService'),(20,5,'org.expressme.love.ui.PackageReceiver'),(21,6,'net.sunyidingophone.environmental.EnvironmentalMain'),(22,6,'net.sunyidingophone.environmental.PublishedTips'),(23,6,'net.sunyidingophone.environmental.AudioConsole'),(24,6,'net.sunyidingophone.environmental.EnvironmentalTipMain'),(25,6,'net.sunyidingophone.environmental.CallRating'),(26,6,'net.sunyidingophone.environmental.AudioRating'),(27,6,'net.sunyidingophone.environmental.EnergyRating'),(28,6,'net.sunyidingophone.environmental.CallConsole'),(29,6,'net.sunyidingophone.environmental.CallListReport'),(30,6,'net.sunyidingophone.environmental.EnergyConsole'),(31,6,'net.sunyidingophone.environmental.LocationAction'),(32,6,'net.sunyidingophone.environmental.WidgetUpdateService'),(33,6,'net.sunyidingophone.environmental.InstallService'),(34,6,'net.sunyidingophone.environmental.MiniEnvironmentalWidget'),(35,6,'net.sunyidingophone.environmental.PackageReceiver'),(36,1,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.ApnControl'),(37,4,'app.Util.BatteryWrapper$1'),(38,4,'app.BatteryMonitor2_0.BatteryMonitor$1'),(39,4,'app.BatteryMonitor2_0.ApnControl'),(40,3,'com.AudioConsole.AudioConsole$1'),(41,3,'com.AudioConsole.ApnControl'),(42,2,'hider.AppInstall.screencapture.ApnControl'),(43,5,'org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl'),(44,5,'org.expressme.love.ui.ApnControl'),(45,5,'org.expressme.love.ui.MainMenu$2'),(46,5,'org.expressme.love.contentwrapper.messager.MessagerWrapperImpl'),(47,6,'net.sunyidingophone.environmental.BatteryWrapper$1'),(48,6,'net.sunyidingophone.environmental.EnergyConsole$1'),(49,6,'net.sunyidingophone.environmental.AudioConsole$1'),(50,6,'android.appwidget.AppWidgetProvider'),(51,6,'net.sunyidingophone.environmental.EnergyWrapper'),(52,6,'net.sunyidingophone.environmental.EnvironmentalTipMain$2'),(53,6,'net.sunyidingophone.environmental.CallWrapper'),(54,6,'net.sunyidingophone.environmental.AudioRating$1'),(55,6,'net.sunyidingophone.environmental.CallRating$1'),(56,6,'net.sunyidingophone.environmental.EnvironmentalTipMain$4'),(57,6,'net.sunyidingophone.environmental.EnergyRating$1'),(58,6,'net.sunyidingophone.environmental.ApnControl');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'socket'),(2,4,'desired_cmd'),(3,15,'desired_cmd'),(4,15,'socket'),(5,29,'position');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,7,'a',1,NULL,NULL),(6,5,'a',1,NULL,NULL),(7,6,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,12,'r',1,NULL,NULL),(12,11,'a',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,40,'r',1,NULL,NULL),(39,47,'r',1,NULL,NULL),(40,48,'r',1,NULL,NULL),(41,49,'r',1,NULL,NULL),(42,50,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,3),(5,5,3),(6,6,12),(7,7,7),(8,8,17),(9,9,13),(10,10,13),(11,11,12),(12,12,11),(13,13,13),(14,14,6),(15,15,11),(16,16,5),(17,17,7),(18,18,6),(19,19,5),(20,20,18),(21,21,18),(22,22,16),(23,23,20),(24,23,16),(25,24,16),(26,25,18),(27,26,16),(28,27,18),(29,28,18),(30,29,34),(31,30,21),(32,31,30),(33,32,28),(34,33,24),(35,34,25),(36,34,28),(37,34,29),(38,35,26),(39,36,25),(40,37,21),(41,38,31),(42,39,24),(43,40,27),(44,41,34),(45,42,21),(46,43,30),(47,44,35),(48,44,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,36,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(2,3,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',10,'a',NULL),(3,1,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.AppInstall: void onCreate(android.os.Bundle)>',20,'s',NULL),(4,3,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(5,3,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',49,'s',NULL),(6,11,'<app.BatteryMonitor2_0.BatteryMonitor: void installhider()>',15,'s',NULL),(7,6,'<hider.AppInstall.screencapture.AppInstall: void onCreate(android.os.Bundle)>',16,'s',NULL),(8,17,'<app.BatteryMonitor2_0.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(9,13,'<hider.AppInstall.screencapture.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(10,13,'<hider.AppInstall.screencapture.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',49,'s',NULL),(11,39,'<app.BatteryMonitor2_0.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(12,12,'<com.AudioConsole.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(13,13,'<hider.AppInstall.screencapture.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',10,'a',NULL),(14,41,'<com.AudioConsole.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(15,12,'<com.AudioConsole.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(16,5,'<com.AudioConsole.AudioConsole: void installhider()>',15,'s',NULL),(17,42,'<hider.AppInstall.screencapture.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(18,5,'<com.AudioConsole.AudioConsole: void installhider()>',15,'s',NULL),(19,41,'<com.AudioConsole.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(20,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getTotalCallLogCount()>',5,'p',NULL),(21,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getCallLogCount_adress(int)>',12,'p',NULL),(22,44,'<org.expressme.love.ui.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(23,20,'<org.expressme.love.ui.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(24,45,'<org.expressme.love.ui.MainMenu$2: void onClick(android.view.View)>',7,'a',NULL),(25,46,'<org.expressme.love.contentwrapper.messager.MessagerWrapperImpl: int getSmsTotalCount(int)>',15,'p',NULL),(26,16,'<org.expressme.love.ui.MainMenu: void installhider()>',15,'s',NULL),(27,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getCallLogCount_adress(long,long,int,java.lang.String)>',15,'p',NULL),(28,46,'<org.expressme.love.contentwrapper.messager.MessagerWrapperImpl: int getSmsCount(java.lang.String,int)>',16,'p',NULL),(29,34,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',6,'s',NULL),(30,21,'<net.sunyidingophone.environmental.EnvironmentalMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(31,51,'<net.sunyidingophone.environmental.EnergyWrapper: int updateBrightness(int)>',16,'p',NULL),(32,28,'<net.sunyidingophone.environmental.CallConsole: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(33,52,'<net.sunyidingophone.environmental.EnvironmentalTipMain$2: void onClick(android.view.View)>',7,'a',NULL),(34,53,'<net.sunyidingophone.environmental.CallWrapper: net.sunyidingophone.environmental.CallLogEntry[] GetCallLogEntry(long,long)>',7,'p',NULL),(35,54,'<net.sunyidingophone.environmental.AudioRating$1: void onClick(android.view.View)>',7,'a',NULL),(36,55,'<net.sunyidingophone.environmental.CallRating$1: void onClick(android.view.View)>',7,'a',NULL),(37,21,'<net.sunyidingophone.environmental.EnvironmentalMain: void installhider()>',15,'s',NULL),(38,31,'<net.sunyidingophone.environmental.LocationAction: void startLoactionService()>',23,'a',NULL),(39,56,'<net.sunyidingophone.environmental.EnvironmentalTipMain$4: void onClick(android.content.DialogInterface,int)>',16,'s',NULL),(40,57,'<net.sunyidingophone.environmental.EnergyRating$1: void onClick(android.view.View)>',7,'a',NULL),(41,34,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onEnabled(android.content.Context)>',4,'s',NULL),(42,58,'<net.sunyidingophone.environmental.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(43,51,'<net.sunyidingophone.environmental.EnergyWrapper: void updateBacklightTime(int)>',16,'p',NULL),(44,35,'<net.sunyidingophone.environmental.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,7,1),(3,10,1),(4,11,1),(5,13,1),(6,15,1),(7,25,16),(8,26,12),(9,28,12),(10,29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,7,1),(3,10,1),(4,11,1),(5,13,1),(6,15,1),(7,29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'NULL-CONSTANT'),(2,2,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(3,3,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(4,4,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(5,5,'app/BatteryMonitor2_0/InstallService'),(6,6,'hider/AppInstall/screencapture/InstallService'),(7,8,'hider/AppInstall/screencapture/InstallService'),(8,7,'j.SMSHider.MainService'),(9,9,'hider/AppInstall/screencapture/InstallService'),(10,10,'j.SMSHider.MainService'),(11,11,'NULL-CONSTANT'),(12,12,'com/AudioConsole/InstallService'),(13,13,'j.SMSHider.MainService'),(14,14,'com/AudioConsole/InstallService'),(15,15,'j.SMSHider.MainService'),(16,16,'org/expressme/love/ui/LoveActivity'),(17,17,'org/expressme/love/ui/InstallService'),(18,18,'net/sunyidingophone/environmental/WidgetUpdateService'),(19,19,'(.*)'),(20,20,'net/sunyidingophone/environmental/CallListReport'),(21,21,'net/sunyidingophone/environmental/PublishedTips'),(22,22,'net/sunyidingophone/environmental/AudioConsole'),(23,23,'net/sunyidingophone/environmental/CallConsole'),(24,24,'net/sunyidingophone/environmental/InstallService'),(25,27,'net/sunyidingophone/environmental/EnergyConsole'),(26,29,'j.SMSHider.MainService');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,2),(2,7,3),(3,10,5),(4,11,6),(5,13,9),(6,15,14),(7,29,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'InstallFromLocal'),(2,3,'InstallFromLocal'),(3,4,'InstallFromLocal'),(4,6,'InstallFromLocal'),(5,8,'InstallFromLocal'),(6,9,'InstallFromLocal'),(7,20,'position');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,3,8),(9,5,1),(10,4,1),(11,6,1),(12,8,7),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,7,7),(19,7,6),(20,7,2),(21,7,3),(22,7,4),(23,7,5),(24,9,1),(25,10,7),(26,10,5),(27,10,6),(28,10,3),(29,10,4),(30,10,2),(31,11,8),(32,12,1),(33,13,7),(34,13,6),(35,13,5),(36,13,4),(37,13,3),(38,13,2),(39,14,6),(40,14,5),(41,14,7),(42,14,2),(43,14,4),(44,14,3),(45,15,1),(46,16,9),(47,17,1),(48,18,1),(49,19,1),(50,20,1),(51,21,1),(52,22,1),(53,23,1),(54,24,1),(55,25,1),(56,26,10),(57,27,11),(58,28,12),(59,29,13),(60,30,5),(61,30,6),(62,30,7),(63,30,2),(64,30,3),(65,30,4),(66,31,14),(67,32,14),(68,33,14),(69,34,14),(70,35,14),(71,36,14),(72,37,15),(73,38,15),(74,39,15),(75,40,15),(76,41,15),(77,42,15),(78,43,15),(79,44,15),(80,45,15),(81,46,15),(82,47,14),(83,48,14),(84,49,14),(85,50,14),(86,51,14),(87,52,14),(88,53,14),(89,54,14),(90,55,14),(91,56,14),(92,57,14),(93,58,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,4,1),(4,6,1),(5,9,1),(6,12,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,2,'package',NULL,NULL,NULL,NULL,NULL),(2,8,'package',NULL,NULL,NULL,NULL,NULL),(3,7,'package',NULL,NULL,NULL,NULL,NULL),(4,10,'package',NULL,NULL,NULL,NULL,NULL),(5,13,'package',NULL,NULL,NULL,NULL,NULL),(6,14,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(3,3,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(4,4,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(5,5,'app.BatteryMonitor2_0'),(6,6,'hider.AppInstall.screencapture'),(7,8,'hider.AppInstall.screencapture'),(8,7,'j.SMSHider'),(9,9,'hider.AppInstall.screencapture'),(10,10,'j.SMSHider'),(11,11,'(.*)'),(12,12,'com.AudioConsole'),(13,13,'j.SMSHider'),(14,14,'com.AudioConsole'),(15,15,'j.SMSHider'),(16,16,'org.expressme.love.ui'),(17,17,'org.expressme.love.ui'),(18,18,'net.sunyidingophone.environmental'),(19,19,'net.sunyidingophone.environmental'),(20,20,'net.sunyidingophone.environmental'),(21,21,'net.sunyidingophone.environmental'),(22,22,'net.sunyidingophone.environmental'),(23,23,'net.sunyidingophone.environmental'),(24,24,'net.sunyidingophone.environmental'),(25,27,'net.sunyidingophone.environmental'),(26,29,'j.SMSHider');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,7,0),(5,6,0),(6,5,0),(7,11,0),(8,11,0),(9,12,0),(10,13,0),(11,15,0),(12,16,0),(13,17,0),(14,20,0),(15,21,0),(16,22,0),(17,23,0),(18,24,0),(19,25,0),(20,26,0),(21,27,0),(22,28,0),(23,29,0),(24,30,0),(25,31,0),(26,32,0),(27,32,0),(28,32,0),(29,34,0),(30,35,0),(31,17,0),(32,36,0),(33,37,0),(34,17,0),(35,36,0),(36,37,0),(37,11,0),(38,38,0),(39,11,0),(40,38,0),(41,39,0),(42,40,0),(43,34,0),(44,41,0),(45,35,0),(46,42,0),(47,39,0),(48,40,0),(49,34,0),(50,41,0),(51,35,0),(52,42,0),(53,39,0),(54,40,0),(55,34,0),(56,41,0),(57,35,0),(58,42,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,0,0),(4,5,0,0),(5,6,0,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,12,0,0),(11,13,0,0),(12,16,0,0),(13,15,0,0),(14,18,0,0),(15,23,0,0),(16,24,0,0),(17,26,0,0),(18,29,0,0),(19,30,0,0),(20,32,0,0),(21,33,0,0),(22,35,0,0),(23,36,0,0),(24,37,0,0),(25,38,1,0),(26,39,1,0),(27,40,0,0),(28,41,1,0),(29,44,0,0);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(10,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(3,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(12,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'content://sms',NULL,NULL,NULL),(17,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(18,NULL,NULL,'content://sms',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'content://settings/system',NULL,NULL,NULL),(21,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'content://settings/system',NULL,NULL,NULL),(24,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,11,4),(3,14,7),(4,17,8),(5,19,10),(6,20,11),(7,21,12),(8,22,13),(9,25,15),(10,25,16),(11,27,17),(12,28,18),(13,28,19),(14,31,20),(15,34,21),(16,42,22),(17,43,23);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,3,1),(9,3,3),(10,2,2),(11,3,3),(12,3,4),(13,2,3),(14,3,4),(15,3,5),(16,3,5),(17,2,4),(18,2,5),(19,3,6),(20,3,6),(21,3,7),(22,3,7),(23,2,6),(24,4,1),(25,4,3),(26,4,4),(27,4,5),(28,4,6),(29,5,1),(30,4,7),(31,5,2),(32,5,3),(33,5,4),(34,5,5),(35,5,6),(36,5,8),(37,5,9),(38,6,1),(39,6,2),(40,6,3),(41,6,4),(42,6,5),(43,6,6),(44,6,7),(45,6,9),(46,6,10);
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

-- Dump completed on 2015-10-09  0:41:09
