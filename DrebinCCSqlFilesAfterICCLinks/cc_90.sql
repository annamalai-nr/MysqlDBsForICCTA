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
) ENGINE=InnoDB AUTO_INCREMENT=802 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,14,2,NULL),(2,6,10,2,NULL),(3,12,1,2,NULL),(4,13,1,2,NULL),(5,12,5,2,NULL),(6,13,5,2,NULL),(7,12,6,2,NULL),(8,13,6,2,NULL),(9,16,8,2,NULL),(10,18,8,2,NULL),(11,12,16,2,NULL),(12,13,16,2,NULL),(13,12,34,2,NULL),(14,13,34,2,NULL),(15,12,7,2,NULL),(16,13,7,2,NULL),(17,19,8,2,NULL),(18,42,8,2,NULL),(19,45,8,2,NULL),(20,12,17,2,NULL),(21,13,17,2,NULL),(22,12,20,2,NULL),(23,13,20,2,NULL),(24,12,19,2,NULL),(25,13,19,2,NULL),(26,22,8,2,NULL),(27,24,8,2,NULL),(28,28,8,2,NULL),(29,30,8,2,NULL),(30,32,8,2,NULL),(31,34,8,2,NULL),(32,36,8,2,NULL),(33,38,8,2,NULL),(34,8,8,2,NULL),(35,10,8,2,NULL),(36,12,27,2,NULL),(37,13,27,2,NULL),(38,12,21,2,NULL),(39,13,21,2,NULL),(40,64,8,2,NULL),(41,66,8,2,NULL),(42,69,8,2,NULL),(43,70,8,2,NULL),(44,58,8,2,NULL),(45,59,8,2,NULL),(46,74,8,2,NULL),(47,75,8,2,NULL),(48,76,8,2,NULL),(49,77,8,2,NULL),(50,78,8,2,NULL),(51,79,8,2,NULL),(52,80,8,2,NULL),(53,81,8,2,NULL),(54,12,38,2,NULL),(55,13,38,2,NULL),(56,12,40,2,NULL),(57,13,40,2,NULL),(58,12,43,2,NULL),(59,13,43,2,NULL),(60,12,18,2,NULL),(61,13,18,2,NULL),(62,49,8,2,NULL),(63,21,8,2,NULL),(64,25,8,2,NULL),(65,12,31,2,NULL),(66,13,31,2,NULL),(67,12,35,2,NULL),(68,13,35,2,NULL),(69,12,39,2,NULL),(70,13,39,2,NULL),(71,39,8,2,NULL),(72,51,8,2,NULL),(73,54,8,2,NULL),(74,12,46,2,NULL),(75,13,46,2,NULL),(76,12,47,2,NULL),(77,13,47,2,NULL),(78,16,1,2,NULL),(79,18,1,2,NULL),(80,16,5,2,NULL),(81,18,5,2,NULL),(82,16,6,2,NULL),(83,18,6,2,NULL),(84,16,16,2,NULL),(85,18,16,2,NULL),(86,16,34,2,NULL),(87,18,34,2,NULL),(88,16,7,2,NULL),(89,18,7,2,NULL),(90,16,17,2,NULL),(91,18,17,2,NULL),(92,16,20,2,NULL),(93,18,20,2,NULL),(94,16,19,2,NULL),(95,18,19,2,NULL),(96,16,27,2,NULL),(97,18,27,2,NULL),(98,16,21,2,NULL),(99,18,21,2,NULL),(100,16,38,2,NULL),(101,18,38,2,NULL),(102,16,40,2,NULL),(103,18,40,2,NULL),(104,16,43,2,NULL),(105,18,43,2,NULL),(106,16,18,2,NULL),(107,18,18,2,NULL),(108,16,31,2,NULL),(109,18,31,2,NULL),(110,16,35,2,NULL),(111,18,35,2,NULL),(112,16,39,2,NULL),(113,18,39,2,NULL),(114,16,46,2,NULL),(115,18,46,2,NULL),(116,16,47,2,NULL),(117,18,47,2,NULL),(118,19,16,2,NULL),(119,42,16,2,NULL),(120,45,16,2,NULL),(121,22,16,2,NULL),(122,24,16,2,NULL),(123,28,16,2,NULL),(124,30,16,2,NULL),(125,32,16,2,NULL),(126,34,16,2,NULL),(127,36,16,2,NULL),(128,38,16,2,NULL),(129,8,16,2,NULL),(130,10,16,2,NULL),(131,64,16,2,NULL),(132,66,16,2,NULL),(133,69,16,2,NULL),(134,70,16,2,NULL),(135,58,16,2,NULL),(136,59,16,2,NULL),(137,74,16,2,NULL),(138,75,16,2,NULL),(139,76,16,2,NULL),(140,77,16,2,NULL),(141,78,16,2,NULL),(142,79,16,2,NULL),(143,80,16,2,NULL),(144,81,16,2,NULL),(145,49,16,2,NULL),(146,21,16,2,NULL),(147,25,16,2,NULL),(148,39,16,2,NULL),(149,51,16,2,NULL),(150,54,16,2,NULL),(151,9,14,2,NULL),(152,19,34,2,NULL),(153,42,34,2,NULL),(154,45,34,2,NULL),(155,22,34,2,NULL),(156,24,34,2,NULL),(157,28,34,2,NULL),(158,30,34,2,NULL),(159,32,34,2,NULL),(160,34,34,2,NULL),(161,36,34,2,NULL),(162,38,34,2,NULL),(163,8,34,2,NULL),(164,10,34,2,NULL),(165,64,34,2,NULL),(166,66,34,2,NULL),(167,69,34,2,NULL),(168,70,34,2,NULL),(169,58,34,2,NULL),(170,59,34,2,NULL),(171,74,34,2,NULL),(172,75,34,2,NULL),(173,76,34,2,NULL),(174,77,34,2,NULL),(175,78,34,2,NULL),(176,79,34,2,NULL),(177,80,34,2,NULL),(178,81,34,2,NULL),(179,49,34,2,NULL),(180,21,34,2,NULL),(181,25,34,2,NULL),(182,39,34,2,NULL),(183,51,34,2,NULL),(184,54,34,2,NULL),(185,23,15,2,NULL),(186,61,37,2,NULL),(187,27,13,2,NULL),(188,19,21,2,NULL),(189,27,44,2,NULL),(190,42,21,2,NULL),(191,33,9,2,NULL),(192,45,21,2,NULL),(193,33,41,2,NULL),(194,22,21,2,NULL),(195,19,1,2,NULL),(196,24,21,2,NULL),(197,19,5,2,NULL),(198,28,21,2,NULL),(199,19,6,2,NULL),(200,30,21,2,NULL),(201,32,21,2,NULL),(202,42,7,2,NULL),(203,34,21,2,NULL),(204,45,7,2,NULL),(205,36,21,2,NULL),(206,19,17,2,NULL),(207,38,21,2,NULL),(208,19,20,2,NULL),(209,8,21,2,NULL),(210,19,19,2,NULL),(211,10,21,2,NULL),(212,22,7,2,NULL),(213,64,21,2,NULL),(214,24,7,2,NULL),(215,66,21,2,NULL),(216,28,7,2,NULL),(217,69,21,2,NULL),(218,30,7,2,NULL),(219,70,21,2,NULL),(220,32,7,2,NULL),(221,58,21,2,NULL),(222,34,7,2,NULL),(223,59,21,2,NULL),(224,36,7,2,NULL),(225,74,21,2,NULL),(226,38,7,2,NULL),(227,75,21,2,NULL),(228,8,7,2,NULL),(229,76,21,2,NULL),(230,10,7,2,NULL),(231,77,21,2,NULL),(232,19,27,2,NULL),(233,78,21,2,NULL),(234,64,7,2,NULL),(235,79,21,2,NULL),(236,66,7,2,NULL),(237,80,21,2,NULL),(238,69,7,2,NULL),(239,81,21,2,NULL),(240,70,7,2,NULL),(241,49,21,2,NULL),(242,58,7,2,NULL),(243,21,21,2,NULL),(244,59,7,2,NULL),(245,25,21,2,NULL),(246,74,7,2,NULL),(247,39,21,2,NULL),(248,75,7,2,NULL),(249,51,21,2,NULL),(250,76,7,2,NULL),(251,54,21,2,NULL),(252,77,7,2,NULL),(253,57,29,2,NULL),(254,78,7,2,NULL),(255,65,36,2,NULL),(256,79,7,2,NULL),(257,64,1,2,NULL),(258,80,7,2,NULL),(259,66,1,2,NULL),(260,81,7,2,NULL),(261,69,1,2,NULL),(262,19,38,2,NULL),(263,70,1,2,NULL),(264,19,40,2,NULL),(265,64,5,2,NULL),(266,19,43,2,NULL),(267,66,5,2,NULL),(268,19,18,2,NULL),(269,69,5,2,NULL),(270,49,7,2,NULL),(271,70,5,2,NULL),(272,21,7,2,NULL),(273,64,6,2,NULL),(274,25,7,2,NULL),(275,66,6,2,NULL),(276,19,31,2,NULL),(277,69,6,2,NULL),(278,19,35,2,NULL),(279,70,6,2,NULL),(280,51,7,2,NULL),(281,64,17,2,NULL),(282,54,7,2,NULL),(283,66,17,2,NULL),(284,19,46,2,NULL),(285,69,17,2,NULL),(286,19,47,2,NULL),(287,70,17,2,NULL),(288,42,1,2,NULL),(289,64,20,2,NULL),(290,45,1,2,NULL),(291,66,20,2,NULL),(292,42,5,2,NULL),(293,69,20,2,NULL),(294,45,5,2,NULL),(295,70,20,2,NULL),(296,42,6,2,NULL),(297,64,19,2,NULL),(298,45,6,2,NULL),(299,66,19,2,NULL),(300,42,17,2,NULL),(301,69,19,2,NULL),(302,45,17,2,NULL),(303,70,19,2,NULL),(304,42,20,2,NULL),(305,64,27,2,NULL),(306,45,20,2,NULL),(307,66,27,2,NULL),(308,42,19,2,NULL),(309,69,27,2,NULL),(310,45,19,2,NULL),(311,70,27,2,NULL),(312,42,27,2,NULL),(313,64,38,2,NULL),(314,45,27,2,NULL),(315,66,38,2,NULL),(316,42,38,2,NULL),(317,69,38,2,NULL),(318,45,38,2,NULL),(319,70,38,2,NULL),(320,42,40,2,NULL),(321,64,40,2,NULL),(322,45,40,2,NULL),(323,66,40,2,NULL),(324,42,43,2,NULL),(325,69,40,2,NULL),(326,45,43,2,NULL),(327,70,40,2,NULL),(328,42,18,2,NULL),(329,64,43,2,NULL),(330,45,18,2,NULL),(331,66,43,2,NULL),(332,42,31,2,NULL),(333,69,43,2,NULL),(334,45,31,2,NULL),(335,70,43,2,NULL),(336,42,35,2,NULL),(337,64,18,2,NULL),(338,45,35,2,NULL),(339,66,18,2,NULL),(340,42,39,2,NULL),(341,69,18,2,NULL),(342,45,39,2,NULL),(343,70,18,2,NULL),(344,42,46,2,NULL),(345,64,31,2,NULL),(346,45,46,2,NULL),(347,66,31,2,NULL),(348,42,47,2,NULL),(349,69,31,2,NULL),(350,45,47,2,NULL),(351,70,31,2,NULL),(352,40,13,2,NULL),(353,64,35,2,NULL),(354,40,44,2,NULL),(355,66,35,2,NULL),(356,22,17,2,NULL),(357,69,35,2,NULL),(358,24,17,2,NULL),(359,70,35,2,NULL),(360,28,17,2,NULL),(361,64,39,2,NULL),(362,30,17,2,NULL),(363,66,39,2,NULL),(364,32,17,2,NULL),(365,69,39,2,NULL),(366,34,17,2,NULL),(367,70,39,2,NULL),(368,36,17,2,NULL),(369,64,46,2,NULL),(370,38,17,2,NULL),(371,66,46,2,NULL),(372,8,17,2,NULL),(373,69,46,2,NULL),(374,10,17,2,NULL),(375,70,46,2,NULL),(376,58,17,2,NULL),(377,64,47,2,NULL),(378,59,17,2,NULL),(379,66,47,2,NULL),(380,74,17,2,NULL),(381,69,47,2,NULL),(382,75,17,2,NULL),(383,70,47,2,NULL),(384,76,17,2,NULL),(385,58,1,2,NULL),(386,77,17,2,NULL),(387,59,1,2,NULL),(388,78,17,2,NULL),(389,58,5,2,NULL),(390,79,17,2,NULL),(391,59,5,2,NULL),(392,80,17,2,NULL),(393,58,6,2,NULL),(394,81,17,2,NULL),(395,59,6,2,NULL),(396,49,17,2,NULL),(397,58,20,2,NULL),(398,21,17,2,NULL),(399,59,20,2,NULL),(400,25,17,2,NULL),(401,58,19,2,NULL),(402,39,17,2,NULL),(403,59,19,2,NULL),(404,51,17,2,NULL),(405,58,27,2,NULL),(406,54,17,2,NULL),(407,59,27,2,NULL),(408,15,15,2,NULL),(409,58,38,2,NULL),(410,22,20,2,NULL),(411,59,38,2,NULL),(412,24,20,2,NULL),(413,58,40,2,NULL),(414,28,20,2,NULL),(415,59,40,2,NULL),(416,30,20,2,NULL),(417,58,43,2,NULL),(418,32,20,2,NULL),(419,59,43,2,NULL),(420,34,20,2,NULL),(421,58,18,2,NULL),(422,36,20,2,NULL),(423,59,18,2,NULL),(424,38,20,2,NULL),(425,58,31,2,NULL),(426,8,20,2,NULL),(427,59,31,2,NULL),(428,10,20,2,NULL),(429,58,35,2,NULL),(430,74,20,2,NULL),(431,59,35,2,NULL),(432,75,20,2,NULL),(433,58,39,2,NULL),(434,76,20,2,NULL),(435,59,39,2,NULL),(436,77,20,2,NULL),(437,58,46,2,NULL),(438,78,20,2,NULL),(439,59,46,2,NULL),(440,79,20,2,NULL),(441,58,47,2,NULL),(442,80,20,2,NULL),(443,59,47,2,NULL),(444,81,20,2,NULL),(445,74,1,2,NULL),(446,49,20,2,NULL),(447,75,1,2,NULL),(448,21,20,2,NULL),(449,76,1,2,NULL),(450,25,20,2,NULL),(451,77,1,2,NULL),(452,39,20,2,NULL),(453,78,1,2,NULL),(454,51,20,2,NULL),(455,79,1,2,NULL),(456,54,20,2,NULL),(457,80,1,2,NULL),(458,26,13,2,NULL),(459,81,1,2,NULL),(460,26,44,2,NULL),(461,74,5,2,NULL),(462,31,45,2,NULL),(463,75,5,2,NULL),(464,47,9,2,NULL),(465,76,5,2,NULL),(466,47,41,2,NULL),(467,77,5,2,NULL),(468,39,1,2,NULL),(469,78,5,2,NULL),(470,39,5,2,NULL),(471,79,5,2,NULL),(472,39,6,2,NULL),(473,80,5,2,NULL),(474,39,19,2,NULL),(475,81,5,2,NULL),(476,22,39,2,NULL),(477,74,6,2,NULL),(478,24,39,2,NULL),(479,75,6,2,NULL),(480,28,39,2,NULL),(481,76,6,2,NULL),(482,30,39,2,NULL),(483,77,6,2,NULL),(484,32,39,2,NULL),(485,78,6,2,NULL),(486,34,39,2,NULL),(487,79,6,2,NULL),(488,36,39,2,NULL),(489,80,6,2,NULL),(490,38,39,2,NULL),(491,81,6,2,NULL),(492,8,39,2,NULL),(493,74,19,2,NULL),(494,10,39,2,NULL),(495,75,19,2,NULL),(496,39,27,2,NULL),(497,76,19,2,NULL),(498,74,39,2,NULL),(499,77,19,2,NULL),(500,75,39,2,NULL),(501,78,19,2,NULL),(502,76,39,2,NULL),(503,79,19,2,NULL),(504,77,39,2,NULL),(505,80,19,2,NULL),(506,78,39,2,NULL),(507,81,19,2,NULL),(508,79,39,2,NULL),(509,74,27,2,NULL),(510,80,39,2,NULL),(511,75,27,2,NULL),(512,81,39,2,NULL),(513,76,27,2,NULL),(514,39,38,2,NULL),(515,77,27,2,NULL),(516,39,40,2,NULL),(517,78,27,2,NULL),(518,39,43,2,NULL),(519,79,27,2,NULL),(520,39,18,2,NULL),(521,80,27,2,NULL),(522,49,39,2,NULL),(523,81,27,2,NULL),(524,21,39,2,NULL),(525,74,38,2,NULL),(526,25,39,2,NULL),(527,75,38,2,NULL),(528,39,31,2,NULL),(529,76,38,2,NULL),(530,39,35,2,NULL),(531,77,38,2,NULL),(532,51,39,2,NULL),(533,78,38,2,NULL),(534,54,39,2,NULL),(535,79,38,2,NULL),(536,39,46,2,NULL),(537,80,38,2,NULL),(538,39,47,2,NULL),(539,81,38,2,NULL),(540,51,1,2,NULL),(541,74,40,2,NULL),(542,54,1,2,NULL),(543,75,40,2,NULL),(544,51,5,2,NULL),(545,76,40,2,NULL),(546,54,5,2,NULL),(547,77,40,2,NULL),(548,51,6,2,NULL),(549,78,40,2,NULL),(550,54,6,2,NULL),(551,79,40,2,NULL),(552,51,19,2,NULL),(553,80,40,2,NULL),(554,54,19,2,NULL),(555,81,40,2,NULL),(556,51,27,2,NULL),(557,74,43,2,NULL),(558,54,27,2,NULL),(559,75,43,2,NULL),(560,51,38,2,NULL),(561,76,43,2,NULL),(562,54,38,2,NULL),(563,77,43,2,NULL),(564,51,40,2,NULL),(565,78,43,2,NULL),(566,54,40,2,NULL),(567,79,43,2,NULL),(568,51,43,2,NULL),(569,80,43,2,NULL),(570,54,43,2,NULL),(571,81,43,2,NULL),(572,51,18,2,NULL),(573,74,18,2,NULL),(574,54,18,2,NULL),(575,75,18,2,NULL),(576,51,31,2,NULL),(577,76,18,2,NULL),(578,54,31,2,NULL),(579,77,18,2,NULL),(580,51,35,2,NULL),(581,78,18,2,NULL),(582,54,35,2,NULL),(583,79,18,2,NULL),(584,51,46,2,NULL),(585,80,18,2,NULL),(586,54,46,2,NULL),(587,81,18,2,NULL),(588,51,47,2,NULL),(589,74,31,2,NULL),(590,54,47,2,NULL),(591,75,31,2,NULL),(592,35,13,2,NULL),(593,76,31,2,NULL),(594,35,44,2,NULL),(595,77,31,2,NULL),(596,22,46,2,NULL),(597,78,31,2,NULL),(598,24,46,2,NULL),(599,79,31,2,NULL),(600,28,46,2,NULL),(601,80,31,2,NULL),(602,30,46,2,NULL),(603,81,31,2,NULL),(604,32,46,2,NULL),(605,74,35,2,NULL),(606,34,46,2,NULL),(607,75,35,2,NULL),(608,36,46,2,NULL),(609,76,35,2,NULL),(610,38,46,2,NULL),(611,77,35,2,NULL),(612,8,46,2,NULL),(613,78,35,2,NULL),(614,10,46,2,NULL),(615,79,35,2,NULL),(616,74,46,2,NULL),(617,80,35,2,NULL),(618,75,46,2,NULL),(619,81,35,2,NULL),(620,76,46,2,NULL),(621,77,46,2,NULL),(622,78,46,2,NULL),(623,79,46,2,NULL),(624,80,46,2,NULL),(625,81,46,2,NULL),(626,49,46,2,NULL),(627,74,47,2,NULL),(628,21,46,2,NULL),(629,75,47,2,NULL),(630,25,46,2,NULL),(631,76,47,2,NULL),(632,50,45,2,NULL),(633,77,47,2,NULL),(634,22,47,2,NULL),(635,78,47,2,NULL),(636,24,47,2,NULL),(637,79,47,2,NULL),(638,28,47,2,NULL),(639,80,47,2,NULL),(640,30,47,2,NULL),(641,81,47,2,NULL),(642,32,47,2,NULL),(643,55,36,2,NULL),(644,34,47,2,NULL),(645,62,36,2,NULL),(646,36,47,2,NULL),(647,63,36,2,NULL),(648,38,47,2,NULL),(649,67,36,2,NULL),(650,8,47,2,NULL),(651,10,47,2,NULL),(652,22,38,2,NULL),(653,49,47,2,NULL),(654,24,38,2,NULL),(655,21,47,2,NULL),(656,28,38,2,NULL),(657,25,47,2,NULL),(658,30,38,2,NULL),(659,32,38,2,NULL),(660,34,38,2,NULL),(661,36,38,2,NULL),(662,38,38,2,NULL),(663,8,38,2,NULL),(664,10,38,2,NULL),(665,49,38,2,NULL),(666,21,38,2,NULL),(667,25,38,2,NULL),(668,22,40,2,NULL),(669,24,40,2,NULL),(670,28,40,2,NULL),(671,30,40,2,NULL),(672,32,40,2,NULL),(673,34,40,2,NULL),(674,36,40,2,NULL),(675,38,40,2,NULL),(676,8,40,2,NULL),(677,10,40,2,NULL),(678,49,40,2,NULL),(679,21,40,2,NULL),(680,25,40,2,NULL),(681,53,37,2,NULL),(682,22,43,2,NULL),(683,24,43,2,NULL),(684,28,43,2,NULL),(685,30,43,2,NULL),(686,32,43,2,NULL),(687,34,43,2,NULL),(688,36,43,2,NULL),(689,38,43,2,NULL),(690,8,43,2,NULL),(691,10,43,2,NULL),(692,49,43,2,NULL),(693,21,43,2,NULL),(694,25,43,2,NULL),(695,41,23,2,NULL),(696,43,28,2,NULL),(697,52,30,2,NULL),(698,49,1,2,NULL),(699,49,5,2,NULL),(700,49,6,2,NULL),(701,49,19,2,NULL),(702,22,18,2,NULL),(703,24,18,2,NULL),(704,28,18,2,NULL),(705,30,18,2,NULL),(706,32,18,2,NULL),(707,34,18,2,NULL),(708,36,18,2,NULL),(709,38,18,2,NULL),(710,8,18,2,NULL),(711,10,18,2,NULL),(712,49,27,2,NULL),(713,21,18,2,NULL),(714,25,18,2,NULL),(715,49,31,2,NULL),(716,49,35,2,NULL),(717,21,1,2,NULL),(718,25,1,2,NULL),(719,21,5,2,NULL),(720,25,5,2,NULL),(721,21,6,2,NULL),(722,25,6,2,NULL),(723,21,19,2,NULL),(724,25,19,2,NULL),(725,21,27,2,NULL),(726,25,27,2,NULL),(727,21,31,2,NULL),(728,25,31,2,NULL),(729,21,35,2,NULL),(730,25,35,2,NULL),(731,46,28,2,NULL),(732,22,31,2,NULL),(733,24,31,2,NULL),(734,28,31,2,NULL),(735,30,31,2,NULL),(736,32,31,2,NULL),(737,34,31,2,NULL),(738,36,31,2,NULL),(739,38,31,2,NULL),(740,8,31,2,NULL),(741,10,31,2,NULL),(742,37,30,2,NULL),(743,22,35,2,NULL),(744,24,35,2,NULL),(745,28,35,2,NULL),(746,30,35,2,NULL),(747,32,35,2,NULL),(748,34,35,2,NULL),(749,36,35,2,NULL),(750,38,35,2,NULL),(751,8,35,2,NULL),(752,10,35,2,NULL),(753,1,3,2,NULL),(754,14,24,2,NULL),(755,4,4,2,NULL),(756,22,1,2,NULL),(757,24,1,2,NULL),(758,28,1,2,NULL),(759,30,1,2,NULL),(760,32,1,2,NULL),(761,34,1,2,NULL),(762,36,1,2,NULL),(763,38,1,2,NULL),(764,38,1,2,NULL),(765,22,5,2,NULL),(766,8,1,2,NULL),(767,24,5,2,NULL),(768,10,1,2,NULL),(769,28,5,2,NULL),(770,3,3,2,NULL),(771,30,5,2,NULL),(772,32,5,2,NULL),(773,34,5,2,NULL),(774,36,5,2,NULL),(775,38,5,2,NULL),(776,22,6,2,NULL),(777,8,5,2,NULL),(778,24,6,2,NULL),(779,10,5,2,NULL),(780,28,6,2,NULL),(781,2,4,2,NULL),(782,30,6,2,NULL),(783,32,6,2,NULL),(784,34,6,2,NULL),(785,36,6,2,NULL),(786,38,6,2,NULL),(787,8,6,2,NULL),(788,10,6,2,NULL),(789,8,19,2,NULL),(790,10,19,2,NULL),(791,22,27,2,NULL),(792,24,27,2,NULL),(793,28,27,2,NULL),(794,30,27,2,NULL),(795,32,27,2,NULL),(796,34,27,2,NULL),(797,36,27,2,NULL),(798,38,27,2,NULL),(799,8,27,2,NULL),(800,10,27,2,NULL),(801,17,24,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:49
