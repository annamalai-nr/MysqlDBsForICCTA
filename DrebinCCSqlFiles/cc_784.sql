-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_784
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'android.intent.action.BATTERY_CHANGED'),(10,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.PACKAGE_CHANGED'),(4,'android.intent.action.PACKAGE_INSTALL'),(5,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(7,'android.intent.action.PACKAGE_RESTARTED'),(12,'android.intent.action.VIEW'),(8,'android.yccharge.service.YCPay'),(9,'com.noshufou.android.su.REQUEST');
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
INSERT INTO `Applications` VALUES (1,'org.SIMInformation',1),(2,'cn.yicha.game.game104004803',2),(3,'app.BatteryMonitor',1),(4,'hider.AppInstall.mash',1),(5,'HamsterSuper.Client.Game',1),(6,'FiveChessSuper.Client.Deamon',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.SIMInformation.SIMInformation'),(2,1,'org.SIMInformation.IS'),(3,1,'org.SIMInformation.PR'),(4,3,'app.BatteryMonitor.BatteryMonitor'),(5,3,'app.BatteryMonitor.InstallService'),(6,4,'hider.AppInstall.mash.AppInstall'),(7,3,'app.BatteryMonitor.PackageReceiver'),(8,2,'cn.yicha.game.game104004803.MainActivity'),(9,4,'hider.AppInstall.mash.InstallService'),(10,2,'cn.yicha.game.game104004803.WebPage'),(11,4,'hider.AppInstall.mash.PackageReceiver'),(12,2,'android.yccharge.service.BootService'),(13,4,'hider.AppInstall.mash.SuRequestReceiver'),(14,5,'HamsterSuper.Client.Game.Hamster'),(15,5,'HamsterSuper.Client.Game.BootReceiver'),(16,5,'HamsterSuper.Client.Game.NoticeSms'),(17,5,'HamsterSuper.Client.Game.NoticeApk'),(18,5,'HamsterSuper.Client.Game.NoticeIE'),(19,5,'HamsterSuper.Client.Game.NoticeVideo'),(20,6,'FiveChessSuper.Client.Deamon.FiveChess'),(21,6,'FiveChessSuper.Client.Deamon.BootReceiver'),(22,6,'FiveChessSuper.Client.Deamon.NoticeSms'),(23,6,'FiveChessSuper.Client.Deamon.NoticeApk'),(24,6,'FiveChessSuper.Client.Deamon.NoticeIE'),(25,6,'FiveChessSuper.Client.Deamon.NoticeVideo'),(26,3,'app.Util.BatteryWrapper$1'),(27,3,'app.BatteryMonitor.BatteryMonitor$1'),(28,2,'cn.yicha.game.game104004803.MainActivity$3'),(29,3,'app.BatteryMonitor.ApnControl'),(30,2,'cn.yicha.game.game104004803.ApkUtil'),(31,4,'hider.AppInstall.mash.ApnControl'),(32,2,'cn.yicha.game.game104004803.MainActivity$4'),(33,2,'cn.yicha.game.game104004803.MainActivity$5'),(34,6,'Daemon.Service.Notice'),(35,5,'Daemon.DownLoad.FileService'),(36,5,'Daemon.Service.SMSObserver'),(37,5,'Daemon.Service.IEMark'),(38,5,'Daemon.Service.Notice'),(39,6,'Daemon.Service.IEMark'),(40,6,'Daemon.DownLoad.FileService'),(41,6,'Daemon.Service.SMSObserver');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'socket'),(2,13,'desired_cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,8),(4,4,4),(5,5,4),(6,6,8),(7,7,7),(8,8,7),(9,9,8),(10,10,6),(11,11,4),(12,12,4),(13,13,8),(14,14,11),(15,15,8),(16,16,6),(17,17,11),(18,18,11),(19,19,24),(20,19,25),(21,19,22),(22,19,23),(23,20,15),(24,21,15),(25,22,15),(26,23,15),(27,24,15),(28,25,15),(29,26,15),(30,27,19),(31,27,18),(32,27,17),(33,27,16),(34,28,21),(35,29,21),(36,30,21),(37,31,21),(38,32,21),(39,33,21),(40,34,21),(41,35,21),(42,36,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<org.SIMInformation.SIMInformation: void a()>',35,'s',NULL),(2,3,'<org.SIMInformation.PR: void a(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(3,28,'<cn.yicha.game.game104004803.MainActivity$3: void onClick(android.view.View)>',10,'a',NULL),(4,4,'<app.BatteryMonitor.BatteryMonitor: void installhider()>',15,'s',NULL),(5,29,'<app.BatteryMonitor.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(6,8,'<cn.yicha.game.game104004803.MainActivity: void StartGame()>',14,'a',NULL),(7,7,'<app.BatteryMonitor.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(8,7,'<app.BatteryMonitor.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(9,30,'<cn.yicha.game.game104004803.ApkUtil: void install(java.lang.String)>',12,'a',NULL),(10,31,'<hider.AppInstall.mash.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(11,29,'<app.BatteryMonitor.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(12,4,'<app.BatteryMonitor.BatteryMonitor: void installhider()>',15,'s',NULL),(13,32,'<cn.yicha.game.game104004803.MainActivity$4: void onClick(android.view.View)>',13,'a',NULL),(14,11,'<hider.AppInstall.mash.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',49,'s',NULL),(15,33,'<cn.yicha.game.game104004803.MainActivity$5: void onClick(android.view.View)>',13,'a',NULL),(16,6,'<hider.AppInstall.mash.AppInstall: void onCreate(android.os.Bundle)>',18,'s',NULL),(17,11,'<hider.AppInstall.mash.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',10,'a',NULL),(18,11,'<hider.AppInstall.mash.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(19,34,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(20,35,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(21,15,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(22,15,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(23,36,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(24,37,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(25,37,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(26,15,'<HamsterSuper.Client.Game.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(27,38,'<Daemon.Service.Notice: void startIntent(android.content.Context,int)>',5,'a',NULL),(28,39,'<Daemon.Service.IEMark: void AddMark()>',16,'p',NULL),(29,39,'<Daemon.Service.IEMark: void AddMark()>',31,'p',NULL),(30,21,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(31,21,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(32,21,'<FiveChessSuper.Client.Deamon.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'p',NULL),(33,39,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL),(34,40,'<Daemon.DownLoad.FileService: void push()>',126,'a',NULL),(35,41,'<Daemon.Service.SMSObserver: void getSms(java.lang.String,java.lang.String)>',22,'p',NULL),(36,37,'<Daemon.Service.IEMark: void openIE(android.content.Context,java.lang.String)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,4,12),(3,5,1),(4,6,1),(5,7,1),(6,8,12),(7,10,12),(8,12,12),(9,14,1),(10,16,12),(11,18,12),(12,19,12),(13,20,12),(14,21,12),(15,22,12),(16,23,12),(17,24,12),(18,25,12),(19,26,12),(20,27,12),(21,28,12),(22,29,12),(23,30,12),(24,31,12),(25,32,1),(26,33,12),(27,34,12),(28,35,12),(29,36,12),(30,37,12),(31,38,12),(32,39,12),(33,40,12),(34,41,12),(35,43,12),(36,44,12),(37,45,12),(38,46,12),(39,47,12),(40,48,12),(41,49,12),(42,50,12),(43,52,12),(44,53,12),(45,54,12),(46,55,12),(47,56,12),(48,57,12),(49,58,12),(50,59,12),(51,60,12),(52,61,12),(53,62,12),(54,63,12),(55,64,12),(56,65,1),(57,66,12),(58,68,12),(59,69,12),(60,70,12),(61,71,12),(62,72,12),(63,73,12),(64,74,12),(65,75,12),(66,76,12),(67,77,12),(68,78,12),(69,79,12),(70,80,12),(71,81,12),(72,82,12),(73,83,12),(74,84,12),(75,85,12),(76,86,12),(77,87,12),(78,88,12),(79,89,12),(80,90,12),(81,91,12),(82,92,12),(83,93,12),(84,94,12),(85,95,12),(86,96,12),(87,97,12);
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
INSERT INTO `ICategories` VALUES (1,2,1),(2,6,1),(3,7,1),(4,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'org/SIMInformation/IS'),(2,2,'audio.service.MS'),(3,3,'app/BatteryMonitor/InstallService'),(4,5,'(.*)(.*)'),(5,6,'j.SMSHider.MainService'),(6,7,'j.SMSHider.MainService'),(7,9,'app/BatteryMonitor/InstallService'),(8,11,'hider/AppInstall/mash/InstallService'),(9,13,'hider/AppInstall/mash/InstallService'),(10,14,'NULL-CONSTANT'),(11,15,'hider/AppInstall/mash/InstallService'),(12,20,'com.android.packageinstaller.PackageInstallerActivity'),(13,42,'Daemon/Service/SMSObserver'),(14,54,'com.android.packageinstaller.PackageInstallerActivity'),(15,61,'com.android.packageinstaller.PackageInstallerActivity'),(16,67,'Daemon/Service/SMSObserver'),(17,95,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,3),(3,6,4),(4,7,5),(5,8,6),(6,10,9),(7,12,10),(8,14,11),(9,16,12),(10,18,13),(11,19,14),(12,20,15),(13,21,16),(14,22,17),(15,23,18),(16,24,19),(17,25,20),(18,26,21),(19,27,22),(20,28,23),(21,29,24),(22,30,25),(23,31,26),(24,33,27),(25,34,28),(26,35,29),(27,36,30),(28,37,31),(29,38,32),(30,39,33),(31,40,34),(32,41,36),(33,43,37),(34,44,39),(35,45,41),(36,46,43),(37,47,45),(38,48,46),(39,49,47),(40,50,48),(41,52,49),(42,53,50),(43,54,51),(44,55,52),(45,56,53),(46,57,54),(47,58,55),(48,59,56),(49,60,57),(50,61,58),(51,62,59),(52,63,60),(53,64,61),(54,66,64),(55,68,66),(56,69,68),(57,71,69),(58,70,70),(59,72,71),(60,73,72),(61,74,73),(62,75,74),(63,76,75),(64,77,76),(65,78,77),(66,79,78),(67,80,79),(68,81,80),(69,82,81),(70,83,82),(71,84,83),(72,85,84),(73,86,85),(74,87,86),(75,88,87),(76,89,88),(77,90,89),(78,91,90),(79,92,91),(80,93,92),(81,94,93),(82,95,94),(83,96,96),(84,97,97);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'InstallFromLocal'),(2,11,'InstallFromLocal'),(3,13,'InstallFromLocal'),(4,15,'InstallFromLocal');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,3,1),(9,4,1),(10,6,6),(11,6,4),(12,6,5),(13,6,3),(14,6,2),(15,6,7),(16,5,1),(17,7,7),(18,7,6),(19,7,2),(20,7,3),(21,7,4),(22,7,5),(23,8,1),(24,9,4),(25,9,5),(26,9,6),(27,9,7),(28,9,2),(29,9,3),(30,10,8),(31,11,9),(32,12,1),(33,13,10),(34,14,1),(35,15,10),(36,16,11),(37,17,11),(38,18,11),(39,19,11),(40,20,11),(41,21,11),(42,22,11),(43,23,11),(44,24,11),(45,25,11),(46,26,11),(47,27,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,8,1),(6,10,2),(7,12,1),(8,13,3),(9,14,1),(10,15,3);
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
INSERT INTO `IFData` VALUES (1,2,'package',NULL,NULL,NULL,NULL,NULL),(2,6,'package',NULL,NULL,NULL,NULL,NULL),(3,7,'package',NULL,NULL,NULL,NULL,NULL),(4,9,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'application','vnd.android.package-archive'),(2,16,'video','mp4'),(3,18,'text','plain'),(4,19,'image','jpg'),(5,21,'text','plain'),(6,22,'audio','mp3'),(7,23,'image','gif'),(8,24,'video','mp4'),(9,25,'video','3gp'),(10,26,'image','bmp'),(11,27,'image','png'),(12,28,'image','jpg'),(13,29,'audio','mid'),(14,30,'image','gif'),(15,31,'audio','mp3'),(16,32,'vnd.android-dir','mms-sms'),(17,33,'audio','wav'),(18,34,'video','3gp'),(19,35,'image','bmp'),(20,36,'text','plain'),(21,37,'video','mp4'),(22,38,'image','png'),(23,39,'image','jpeg'),(24,40,'audio','mid'),(25,41,'image','bmp'),(26,44,'image','jpg'),(27,45,'audio','mid'),(28,47,'image','gif'),(29,48,'image','png'),(30,49,'video','mp4'),(31,50,'video','3gp'),(32,52,'text','plain'),(33,53,'audio','mp3'),(34,55,'audio','wav'),(35,56,'audio','mp3'),(36,57,'image','jpeg'),(37,58,'video','mp4'),(38,59,'audio','wav'),(39,60,'image','bmp'),(40,62,'image','jpg'),(41,63,'image','jpeg'),(42,64,'image','gif'),(43,65,'vnd.android-dir','mms-sms'),(44,66,'video','3gp'),(45,68,'text','plain'),(46,69,'image','png'),(47,70,'audio','mid'),(48,72,'image','bmp'),(49,73,'image','jpg'),(50,75,'text','plain'),(51,76,'image','jpg'),(52,77,'image','gif'),(53,78,'audio','mid'),(54,79,'video','3gp'),(55,81,'image','png'),(56,82,'image','gif'),(57,83,'audio','mid'),(58,84,'image','png'),(59,85,'audio','mp3'),(60,86,'video','3gp'),(61,87,'audio','wav'),(62,88,'audio','mp3'),(63,89,'image','bmp'),(64,90,'audio','wav'),(65,91,'video','mp4'),(66,92,'image','jpeg'),(67,93,'image','jpeg'),(68,94,'audio','wav'),(69,96,'image','jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'org.SIMInformation'),(2,2,'audio.service'),(3,3,'app.BatteryMonitor'),(4,5,'(.*)'),(5,6,'j.SMSHider'),(6,7,'j.SMSHider'),(7,9,'app.BatteryMonitor'),(8,11,'hider.AppInstall.mash'),(9,13,'hider.AppInstall.mash'),(10,14,'(.*)'),(11,15,'hider.AppInstall.mash'),(12,20,'com.android.packageinstaller'),(13,42,'HamsterSuper.Client.Game'),(14,54,'com.android.packageinstaller'),(15,61,'com.android.packageinstaller'),(16,67,'FiveChessSuper.Client.Deamon'),(17,95,'com.android.packageinstaller');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,4,0),(5,6,0),(6,7,0),(7,7,0),(8,8,0),(9,11,0),(10,12,0),(11,13,0),(12,14,0),(13,15,0),(14,20,0),(15,21,0),(16,26,0),(17,7,0),(18,26,0),(19,7,0),(20,27,0),(21,27,0),(22,26,0),(23,26,0),(24,7,0),(25,7,0),(26,27,0),(27,27,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,3,1,0),(5,6,0,0),(6,7,0,0),(7,8,0,0),(8,9,1,0),(9,12,0,0),(10,13,1,0),(11,14,0,0),(12,15,1,0),(13,16,0,0),(14,17,0,0),(15,18,0,0),(16,19,1,0),(17,19,1,0),(18,19,1,0),(19,20,1,0),(20,19,0,0),(21,20,1,0),(22,19,1,0),(23,20,1,0),(24,19,1,0),(25,20,1,0),(26,19,1,0),(27,20,1,0),(28,19,1,0),(29,20,1,0),(30,19,1,0),(31,20,1,0),(32,19,1,0),(33,20,1,0),(34,19,1,0),(35,20,1,0),(36,19,1,0),(37,20,1,0),(38,19,1,0),(39,20,1,0),(40,19,1,0),(41,19,1,0),(42,22,0,0),(43,19,1,0),(44,19,1,0),(45,19,1,0),(46,19,1,0),(47,19,1,0),(48,19,1,0),(49,27,1,0),(50,19,1,0),(51,27,1,0),(52,27,1,0),(53,19,1,0),(54,27,0,0),(55,19,1,0),(56,27,1,0),(57,19,1,0),(58,27,1,0),(59,19,1,0),(60,27,1,0),(61,19,0,0),(62,27,1,0),(63,19,1,0),(64,27,1,0),(65,27,1,0),(66,27,1,0),(67,30,0,0),(68,27,1,0),(69,27,1,0),(70,27,1,0),(71,33,1,0),(72,27,1,0),(73,34,1,0),(74,27,1,0),(75,34,1,0),(76,27,1,0),(77,34,1,0),(78,27,1,0),(79,34,1,0),(80,27,1,0),(81,34,1,0),(82,27,1,0),(83,34,1,0),(84,27,1,0),(85,34,1,0),(86,27,1,0),(87,34,1,0),(88,27,1,0),(89,34,1,0),(90,27,1,0),(91,34,1,0),(92,27,1,0),(93,34,1,0),(94,27,1,0),(95,27,0,0),(96,27,1,0),(97,36,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CALL_PHONE'),(17,'android.permission.CHANGE_NETWORK_STATE'),(16,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.DELETE_PACKAGES'),(2,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(20,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RECEIVE_SMS'),(8,'android.permission.SEND_SMS'),(21,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_APN_SETTINGS'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://sms/',NULL,NULL,NULL),(36,NULL,NULL,'',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://mms/',NULL,NULL,NULL),(45,NULL,NULL,'',NULL,NULL,NULL),(46,NULL,NULL,'',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(63,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'content://sms/',NULL,NULL,NULL),(66,NULL,NULL,'',NULL,NULL,NULL),(67,NULL,NULL,'content://mms/',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'(.*)',NULL,NULL,NULL),(88,NULL,NULL,'(.*)',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'(.*)',NULL,NULL,NULL),(93,NULL,NULL,'',NULL,NULL,NULL),(94,NULL,NULL,'',NULL,NULL,NULL),(95,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(96,NULL,NULL,'',NULL,NULL,NULL),(97,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,2),(2,10,7),(3,11,8),(4,21,35),(5,23,38),(6,24,40),(7,25,42),(8,26,44),(9,28,62),(10,29,63),(11,31,65),(12,32,67),(13,35,95);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,17),(9,2,16),(10,2,1),(11,2,18),(12,2,4),(13,2,7),(14,3,2),(15,3,3),(16,2,8),(17,3,4),(18,4,1),(19,3,5),(20,2,9),(21,4,2),(22,3,6),(23,3,7),(24,2,10),(25,4,3),(26,2,11),(27,4,4),(28,4,6),(29,2,12),(30,4,7),(31,2,13),(32,2,14),(33,2,15),(34,5,1),(35,5,19),(36,5,21),(37,5,4),(38,5,20),(39,5,7),(40,5,8),(41,5,10),(42,5,11),(43,5,12),(44,5,14),(45,5,15),(46,6,1),(47,6,4),(48,6,7),(49,6,8),(50,6,10),(51,6,11),(52,6,12),(53,6,14),(54,6,15),(55,6,19),(56,6,21),(57,6,20);
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

-- Dump completed on 2015-10-09  0:41:10
