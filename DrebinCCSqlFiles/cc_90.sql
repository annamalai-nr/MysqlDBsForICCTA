-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_90
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.BATTERY_CHANGED'),(13,'android.intent.action.BATTERY_LOW'),(16,'android.intent.action.BATTERY_OKAY'),(2,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CHOOSER'),(11,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.PACKAGE_CHANGED'),(4,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(3,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.POWER_USAGE_SUMMARY'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.VIEW'),(19,'android.settings.APPLICATION_DETAILS_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.passion.callvibrate',1),(2,'com.killer.perform',1),(3,'com.screen.battery',1),(4,'com.file.phoneset',5),(5,'com.set.phone',5),(6,'com.charge.batterymonitor',1),(7,'com.screen.battery',5);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.passion.callvibrate.main'),(2,1,'com.admob.android.ads.AdMobActivity'),(3,1,'com.passion.callvibrate.TelService'),(4,1,'com.passion.lightdd.CoreService'),(5,1,'com.passion.callvibrate.BootReceiver'),(6,1,'com.passion.lightdd.Receiver'),(7,3,'com.screen.battery.main'),(8,2,'com.killer.perform.main'),(9,3,'com.screen.battery.Settings'),(10,2,'com.killer.perform.Settings'),(11,3,'com.google.ads.AdActivity'),(12,2,'com.google.ads.AdActivity'),(13,3,'com.screen.battery.MonitorService'),(14,2,'com.killer.perform.strategy.service.CelebrateService'),(15,3,'com.screen.battery.protact.DreamerService'),(16,2,'com.killer.perform.Receiver'),(17,3,'com.screen.battery.BatteryReceiver'),(18,4,'com.file.phoneset.main'),(19,6,'com.charge.batterymonitor.main'),(20,3,'com.screen.battery.protact.BeerReceiver'),(21,5,'com.set.phone.main'),(22,4,'com.google.ads.AdActivity'),(23,6,'com.charge.batterymonitor.Settings'),(24,4,'com.file.phoneset.strategy.service.CelebrateService'),(25,6,'com.google.ads.AdActivity'),(26,5,'com.mobile.taskkiller.main'),(27,4,'com.file.phoneset.strategy.core.RebirthReceiver'),(28,6,'com.charge.batterymonitor.MonitorService'),(29,5,'com.mobile.taskkiller.Settings'),(30,6,'com.charge.batterymonitor.sysapp.BackgroundService'),(31,5,'com.google.ads.AdActivity'),(32,6,'com.charge.batterymonitor.BatteryReceiver'),(33,5,'com.mobile.filemanager.main'),(34,2,'com.killer.perform.strategy.core.RebirthReceiver'),(35,6,'com.charge.batterymonitor.sysapp.BootReceiver'),(36,5,'com.mobile.taskkiller.KillService'),(37,5,'com.set.phone.strategy.service.CelebrateService'),(38,5,'com.mobile.taskkiller.Receiver'),(39,7,'com.screen.battery.main'),(40,5,'com.mobile.taskkiller.ExampleAppWidgetProvider'),(41,7,'com.screen.battery.Settings'),(42,7,'com.google.ads.AdActivity'),(43,5,'com.set.phone.strategy.core.RebirthReceiver'),(44,7,'com.screen.battery.MonitorService'),(45,7,'com.screen.battery.strategy.service.CelebrateService'),(46,7,'com.screen.battery.BatteryReceiver'),(47,7,'com.screen.battery.strategy.core.RebirthReceiver'),(48,2,'com.killer.perform.strategy.service.Tools'),(49,3,'com.screen.battery.protact.Tools'),(50,4,'com.file.phoneset.Utils'),(51,7,'com.screen.battery.strategy.service.Tools'),(52,4,'com.file.phoneset.strategy.service.Tools'),(53,6,'com.charge.batterymonitor.sysapp.Tools'),(54,5,'com.set.phone.strategy.service.Tools'),(55,5,'com.mobile.filemanager.Utils');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'json'),(2,2,'t'),(3,2,'or'),(4,2,'int'),(5,2,'b'),(6,2,'cbo'),(7,2,'a'),(8,2,'c'),(9,2,'msm'),(10,2,'s'),(11,2,'ap'),(12,2,'sd'),(13,2,'si'),(14,2,'cs'),(15,2,'skd'),(16,2,'u'),(17,2,'nosk'),(18,2,'ad'),(19,2,'su'),(20,4,'PackageName2'),(21,2,'p'),(22,2,'rd'),(23,2,'$'),(24,2,'sc'),(25,4,'url2'),(26,2,'mi'),(27,2,'o'),(28,4,'Description2'),(29,2,'sku'),(30,2,'ru'),(31,4,'Title2'),(32,2,'sin'),(33,2,'au'),(34,2,'oi'),(35,4,'filename2'),(36,2,'tr'),(37,12,'action'),(38,14,'PackageName4'),(39,12,'params'),(40,14,'filename4'),(41,14,'url4'),(42,22,'params'),(43,12,'com.google.ads.AdOpener'),(44,24,'Title4'),(45,14,'Description4'),(46,14,'Title4'),(47,15,'url1'),(48,11,'action'),(49,11,'com.google.ads.AdOpener'),(50,24,'url4'),(51,11,'params'),(52,24,'filename4'),(53,25,'com.google.ads.AdOpener'),(54,30,'filename3'),(55,22,'com.google.ads.AdOpener'),(56,30,'url5'),(57,24,'PackageName4'),(58,15,'filename8'),(59,45,'Description4'),(60,15,'Pa2ckageName3'),(61,15,'De8scription4'),(62,15,'T7itle5'),(63,30,'T6itle3'),(64,30,'De2scription9'),(65,45,'Title4'),(66,45,'url4'),(67,45,'filename4'),(68,24,'Description4'),(69,42,'action'),(70,22,'action'),(71,42,'params'),(72,45,'PackageName4'),(73,42,'com.google.ads.AdOpener'),(74,32,'com.google.ads.AdOpener'),(75,36,'screen'),(76,37,'url4'),(77,37,'filename4'),(78,30,'Pa2ckageName6'),(79,25,'params'),(80,25,'action'),(81,37,'Description4'),(82,32,'action'),(83,32,'params'),(84,37,'Title4'),(85,37,'PackageName4');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,19,'a',1,NULL,NULL),(19,18,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,5),(4,4,1),(5,5,8),(6,6,8),(7,7,19),(8,8,14),(9,9,22),(10,10,34),(11,11,8),(12,12,19),(13,13,20),(14,14,12),(15,15,27),(16,16,7),(17,17,25),(18,18,19),(19,19,7),(20,20,39),(21,21,7),(22,22,39),(23,23,7),(24,24,46),(25,25,15),(26,26,35),(27,27,39),(28,28,17),(29,29,18),(30,30,11),(31,31,18),(32,32,19),(33,33,45),(34,34,31),(35,35,39),(36,36,24),(37,37,30),(38,38,37),(39,39,18),(40,40,47),(41,41,42),(42,42,18),(43,43,43),(44,44,38),(45,45,26),(46,46,32),(47,47,21),(48,48,38),(49,49,38),(50,50,26),(51,51,26),(52,52,26),(53,53,38),(54,54,26),(55,54,33),(56,55,26),(57,56,33),(58,56,26),(59,57,26),(60,58,33);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.passion.callvibrate.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(2,6,'<com.passion.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(3,5,'<com.passion.callvibrate.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,1,'<com.passion.callvibrate.main: void onCreate(android.os.Bundle)>',9,'s',NULL),(5,8,'<com.killer.perform.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(6,8,'<com.killer.perform.main: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(7,18,'<com.file.phoneset.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(8,48,'<com.killer.perform.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(9,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(10,34,'<com.killer.perform.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(11,8,'<com.killer.perform.main: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(12,18,'<com.file.phoneset.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(13,20,'<com.screen.battery.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(14,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(15,27,'<com.file.phoneset.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(16,7,'<com.screen.battery.main: void onClick(android.view.View)>',6,'a',NULL),(17,25,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(18,18,'<com.file.phoneset.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(19,7,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(20,39,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',11,'s',NULL),(21,7,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',17,'s',NULL),(22,39,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(23,7,'<com.screen.battery.main: void onClick(android.view.View)>',12,'a',NULL),(24,46,'<com.screen.battery.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(25,49,'<com.screen.battery.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(26,35,'<com.charge.batterymonitor.sysapp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(27,39,'<com.screen.battery.main: void onClick(android.view.View)>',6,'a',NULL),(28,17,'<com.screen.battery.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(29,19,'<com.charge.batterymonitor.main: void onClick(android.view.View)>',12,'a',NULL),(30,11,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(31,19,'<com.charge.batterymonitor.main: void onCreate(android.os.Bundle)>',17,'s',NULL),(32,50,'<com.file.phoneset.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(33,51,'<com.screen.battery.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(34,32,'<com.charge.batterymonitor.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(35,39,'<com.screen.battery.main: void onClick(android.view.View)>',12,'a',NULL),(36,52,'<com.file.phoneset.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(37,53,'<com.charge.batterymonitor.sysapp.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(38,54,'<com.set.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(39,19,'<com.charge.batterymonitor.main: void onClick(android.view.View)>',6,'a',NULL),(40,47,'<com.screen.battery.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(41,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(42,19,'<com.charge.batterymonitor.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(43,43,'<com.set.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(44,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(45,26,'<com.mobile.taskkiller.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(46,31,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(47,21,'<com.set.phone.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(48,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(49,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(50,26,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(51,26,'<com.mobile.taskkiller.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(52,26,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(53,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(54,33,'<com.mobile.filemanager.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(55,26,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(56,55,'<com.mobile.filemanager.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(57,26,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(58,33,'<com.mobile.filemanager.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,9),(2,8,10),(3,10,9),(4,11,10),(5,12,11),(6,13,11),(7,16,10),(8,18,9),(9,19,14),(10,20,10),(11,21,10),(12,22,15),(13,24,15),(14,25,9),(15,28,15),(16,29,10),(17,30,15),(18,32,15),(19,34,15),(20,36,15),(21,38,15),(22,39,14),(23,42,10),(24,44,9),(25,45,9),(26,48,10),(27,49,14),(28,51,10),(29,54,9),(30,56,10),(31,58,10),(32,59,9),(33,60,10),(34,64,11),(35,66,19),(36,68,9),(37,69,1),(38,70,1),(39,71,9),(40,74,15),(41,75,15),(42,76,15),(43,77,15),(44,78,15),(45,79,15),(46,80,15),(47,81,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,8,3),(2,10,3),(3,11,3),(4,16,3),(5,18,3),(6,20,3),(7,21,3),(8,25,3),(9,29,3),(10,42,3),(11,45,3),(12,48,3),(13,51,3),(14,54,3),(15,56,3),(16,58,3),(17,59,3),(18,60,3),(19,69,1),(20,70,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/passion/callvibrate/TelService'),(2,2,'com/passion/lightdd/CoreService'),(3,3,'com/passion/callvibrate/TelService'),(4,4,'com/passion/lightdd/CoreService'),(5,5,'com/killer/perform/strategy/service/CelebrateService'),(6,6,'com/killer/perform/Settings'),(7,9,'com/killer/perform/strategy/service/CelebrateService'),(8,14,'com/file/phoneset/strategy/service/CelebrateService'),(9,15,'com/screen/battery/protact/DreamerService'),(10,17,'com/file/phoneset/strategy/service/CelebrateService'),(11,23,'com/screen/battery/protact/DreamerService'),(12,26,'com/screen/battery/MonitorService'),(13,27,'com/screen/battery/MonitorService'),(14,31,'com/screen/battery/strategy/service/CelebrateService'),(15,33,'com/screen/battery/Settings'),(16,35,'com/screen/battery/MonitorService'),(17,37,'com/charge/batterymonitor/sysapp/BackgroundService'),(18,40,'com/screen/battery/MonitorService'),(19,41,'com/charge/batterymonitor/Settings'),(20,43,'com/charge/batterymonitor/MonitorService'),(21,46,'com/charge/batterymonitor/MonitorService'),(22,47,'com/screen/battery/Settings'),(23,50,'com/screen/battery/strategy/service/CelebrateService'),(24,52,'com/charge/batterymonitor/sysapp/BackgroundService'),(25,53,'com/set/phone/strategy/service/CelebrateService'),(26,55,'com/mobile/taskkiller/KillService'),(27,57,'com/mobile/taskkiller/Settings'),(28,61,'com/set/phone/strategy/service/CelebrateService'),(29,62,'com/mobile/taskkiller/KillService'),(30,63,'com/mobile/taskkiller/KillService'),(31,65,'com/mobile/taskkiller/KillService'),(32,67,'com/mobile/taskkiller/KillService'),(33,72,'com.android.settings.InstalledAppDetails'),(34,73,'com.android.settings.InstalledAppDetails');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,8,3),(3,10,4),(4,12,5),(5,11,6),(6,13,7),(7,16,8),(8,18,9),(9,21,10),(10,20,11),(11,25,12),(12,29,13),(13,42,15),(14,44,17),(15,45,18),(16,48,21),(17,51,23),(18,54,24),(19,56,25),(20,58,26),(21,59,27),(22,60,28),(23,64,29),(24,66,30),(25,68,31),(26,71,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,22,'android.intent.extra.INTENT'),(2,24,'android.intent.extra.INTENT'),(3,28,'android.intent.extra.TITLE'),(4,28,'android.intent.extra.INTENT'),(5,30,'android.intent.extra.INTENT'),(6,32,'android.intent.extra.TITLE'),(7,32,'android.intent.extra.INTENT'),(8,34,'android.intent.extra.INTENT'),(9,36,'android.intent.extra.TITLE'),(10,36,'android.intent.extra.INTENT'),(11,38,'android.intent.extra.TITLE'),(12,38,'android.intent.extra.INTENT'),(13,55,'screen'),(14,63,'screen'),(15,67,'screen'),(16,72,'com.android.settings.ApplicationPkgName'),(17,73,'pkg'),(18,74,'android.intent.extra.INTENT'),(19,75,'android.intent.extra.INTENT'),(20,76,'android.intent.extra.TITLE'),(21,76,'android.intent.extra.INTENT'),(22,77,'android.intent.extra.INTENT'),(23,78,'android.intent.extra.TITLE'),(24,78,'android.intent.extra.INTENT'),(25,79,'android.intent.extra.INTENT'),(26,80,'android.intent.extra.TITLE'),(27,80,'android.intent.extra.INTENT'),(28,81,'android.intent.extra.TITLE'),(29,81,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,2),(7,7,4),(8,9,1),(9,8,1),(10,10,3),(11,10,2),(12,11,5),(13,12,1),(14,13,6),(15,14,2),(16,15,2),(17,15,3),(18,16,7),(19,17,2),(20,18,2),(21,18,3),(22,19,3),(23,19,2),(24,20,2),(25,21,1),(26,22,8),(27,23,3),(28,23,2),(29,24,2),(30,25,3),(31,25,2),(32,26,12),(33,27,13),(34,28,16),(35,29,12),(36,30,16),(37,31,16),(38,32,13),(39,33,12),(40,34,13),(41,35,17),(42,36,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,1),(6,8,1),(7,9,1),(8,10,2),(9,12,1),(10,15,2),(11,18,2),(12,19,2),(13,21,1),(14,23,2),(15,25,2);
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
INSERT INTO `IFData` VALUES (1,7,'package',NULL,NULL,NULL,NULL,NULL),(2,11,'package',NULL,NULL,NULL,NULL,NULL),(3,13,'package',NULL,NULL,NULL,NULL,NULL),(4,16,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,11,'(.*)','(.*)'),(3,20,'(.*)','(.*)'),(4,29,'(.*)','(.*)'),(5,44,'application','vnd.android.package-archive'),(6,48,'(.*)','(.*)'),(7,56,'(.*)','(.*)'),(8,60,'(.*)','(.*)'),(9,68,'(.*)','(.*)'),(10,71,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.passion.callvibrate'),(2,2,'com.passion.callvibrate'),(3,3,'com.passion.callvibrate'),(4,4,'com.passion.callvibrate'),(5,5,'com.killer.perform'),(6,6,'com.killer.perform'),(7,9,'com.killer.perform'),(8,14,'com.file.phoneset'),(9,15,'com.screen.battery'),(10,17,'com.file.phoneset'),(11,23,'com.screen.battery'),(12,26,'com.screen.battery'),(13,27,'com.screen.battery'),(14,31,'com.screen.battery'),(15,33,'com.screen.battery'),(16,35,'com.screen.battery'),(17,37,'com.charge.batterymonitor'),(18,40,'com.screen.battery'),(19,41,'com.charge.batterymonitor'),(20,43,'com.charge.batterymonitor'),(21,46,'com.charge.batterymonitor'),(22,47,'com.screen.battery'),(23,50,'com.screen.battery'),(24,52,'com.charge.batterymonitor'),(25,53,'com.set.phone'),(26,55,'com.set.phone'),(27,57,'com.set.phone'),(28,61,'com.set.phone'),(29,62,'com.set.phone'),(30,63,'com.set.phone'),(31,65,'com.set.phone'),(32,67,'com.set.phone'),(33,69,'(.*)'),(34,70,'(.*)'),(35,72,'com.android.settings'),(36,73,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,8,0),(6,17,0),(7,16,0),(8,19,0),(9,18,0),(10,20,0),(11,16,0),(12,21,0),(13,16,0),(14,16,0),(15,27,0),(16,16,0),(17,31,0),(18,34,0),(19,35,0),(20,38,0),(21,39,0),(22,40,0),(23,43,0),(24,46,0),(25,47,0),(26,17,0),(27,17,0),(28,46,0),(29,31,0),(30,31,0),(31,17,0),(32,46,0),(33,46,0),(34,31,0),(35,38,0),(36,38,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,9,1,0),(9,10,0,0),(10,9,1,0),(11,9,1,0),(12,11,1,0),(13,11,1,0),(14,12,0,0),(15,13,0,0),(16,14,1,0),(17,15,0,0),(18,14,1,0),(19,16,1,0),(20,14,1,0),(21,17,1,0),(22,18,1,0),(23,19,0,0),(24,18,1,0),(25,17,1,0),(26,20,0,0),(27,21,0,0),(28,18,1,0),(29,17,1,0),(30,18,1,0),(31,22,0,0),(32,18,1,0),(33,23,0,0),(34,18,1,0),(35,24,0,0),(36,18,1,0),(37,26,0,0),(38,18,1,0),(39,27,1,0),(40,28,0,0),(41,29,0,0),(42,30,1,0),(43,31,0,0),(44,32,1,0),(45,30,1,0),(46,34,0,0),(47,35,0,0),(48,30,1,0),(49,39,1,0),(50,40,0,0),(51,41,1,0),(52,42,0,0),(53,43,0,0),(54,41,1,0),(55,44,0,0),(56,41,1,0),(57,45,0,0),(58,46,1,0),(59,46,1,0),(60,46,1,0),(61,47,0,0),(62,48,0,0),(63,49,0,0),(64,50,1,0),(65,51,0,0),(66,52,1,0),(67,53,0,0),(68,54,1,0),(69,55,1,0),(70,55,1,0),(71,56,1,0),(72,57,0,0),(73,57,0,0),(74,58,1,0),(75,58,1,0),(76,58,1,0),(77,58,1,0),(78,58,1,0),(79,58,1,0),(80,58,1,0),(81,58,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.GET_ACCOUNTS'),(10,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(12,'android.permission.KILL_BACKGROUND_PROCESSES'),(6,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RESTART_PACKAGES'),(4,'android.permission.VIBRATE'),(9,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,2),(2,25,14),(3,33,16),(4,36,19),(5,37,20),(6,38,22);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,2,2),(8,3,2),(9,2,3),(10,3,3),(11,2,5),(12,3,4),(13,2,6),(14,3,8),(15,2,7),(16,2,8),(17,4,1),(18,4,2),(19,5,1),(20,5,2),(21,4,3),(22,5,3),(23,4,5),(24,6,1),(25,6,2),(26,5,5),(27,4,6),(28,5,6),(29,6,3),(30,4,7),(31,6,4),(32,4,8),(33,5,7),(34,6,8),(35,5,8),(36,4,9),(37,5,9),(38,5,10),(39,5,11),(40,5,12),(41,7,1),(42,7,2),(43,7,3),(44,7,4),(45,7,5),(46,7,6),(47,7,7),(48,7,8);
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

-- Dump completed on 2015-10-09  0:41:14
