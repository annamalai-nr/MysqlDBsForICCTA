-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_84
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(9,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CALL'),(11,'android.intent.action.CHOOSER'),(15,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_CHANGED'),(5,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PACKAGE_REPLACED'),(3,'android.intent.action.PHONE_STATE'),(12,'android.intent.action.POWER_USAGE_SUMMARY'),(16,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SEND'),(10,'android.intent.action.VIEW'),(14,'android.settings.APPLICATION_DETAILS_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.wheadon.super.photoenhance',65),(2,'com.getinfo.phone',5),(3,'com.backup.prime',1),(4,'com.killer.management',1),(5,'com.set.phone',4),(6,'com.protection.privacy',1),(7,'com.backup.copysms',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.ALTERNATIVE'),(4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wheadon.photoenhance.PhotoEnhance'),(2,1,'com.wheadon.photoenhance.Preferences'),(3,1,'com.wheadon.photoenhance.Crop'),(4,1,'com.wheadon.photoenhance.Adjust'),(5,1,'com.passionteam.lightdd.CoreService'),(6,1,'com.passionteam.lightdd.Receiver'),(7,2,'com.getinfo.phone.main'),(8,4,'com.killer.management.main'),(9,2,'com.google.ads.AdActivity'),(10,3,'com.backup.prime.main'),(11,2,'com.getinfo.phone.strategy.service.CelebrateService'),(12,4,'com.killer.appinstaller.InstallActivity'),(13,6,'com.protection.privacy.SafeGuardActivity'),(14,2,'com.getinfo.phone.strategy.core.RebirthReceiver'),(15,5,'com.set.phone.main'),(16,4,'com.killer.appuninstaller.UninstallActivity'),(17,3,'com.backup.contacts.main'),(18,4,'com.killer.appuninstaller.Settings'),(19,6,'com.google.ads.AdActivity'),(20,3,'com.backup.sms.main'),(21,4,'com.google.ads.AdActivity'),(22,5,'com.mobile.taskkiller.main'),(23,6,'com.protection.privacy.TrustListActivity'),(24,3,'com.backup.sms.Conver'),(25,4,'com.killer.management.strategy.service.CelebrateService'),(26,5,'com.mobile.taskkiller.Settings'),(27,6,'com.protection.privacy.strategy.service.CelebrateService'),(28,3,'com.backup.sms.MessagesActivity'),(29,4,'com.killer.appuninstaller.Receiver'),(30,5,'com.google.ads.AdActivity'),(31,6,'com.protection.privacy.Receiver'),(32,3,'com.google.ads.AdActivity'),(33,5,'com.mobile.filemanager.main'),(34,3,'com.backup.prime.grasp.service.AssuranceService'),(35,5,'com.mobile.taskkiller.KillService'),(36,3,'com.backup.prime.grasp.core.BootReceiver'),(37,5,'com.set.phone.strategy.service.CelebrateService'),(38,5,'com.mobile.taskkiller.Receiver'),(39,5,'com.mobile.taskkiller.ExampleAppWidgetProvider'),(40,5,'com.set.phone.strategy.core.RebirthReceiver'),(41,6,'com.protection.privacy.strategy.core.RebirthReceiver'),(42,4,'com.killer.management.strategy.core.RebirthReceiver'),(43,7,'com.backup.copysms.main'),(44,7,'com.backup.contacts.main'),(45,7,'com.backup.sms.main'),(46,7,'com.backup.sms.Conver'),(47,7,'com.backup.sms.MessagesActivity'),(48,7,'com.google.ads.AdActivity'),(49,7,'com.backup.copysms.protact.DreamerService'),(50,7,'com.backup.copysms.protact.BeerReceiver'),(51,1,'com.wheadon.photoenhance.PhotoEnhance$9'),(52,1,'com.wheadon.photoenhance.PhotoEnhance$6'),(53,1,'com.wheadon.photoenhance.PhotoEnhance$4'),(54,1,'com.wheadon.photoenhance.PhotoEnhance$12'),(55,2,'com.getinfo.phone.strategy.service.Tools'),(56,4,'com.killer.InstallUtils'),(57,5,'com.mobile.filemanager.Utils'),(58,4,'com.killer.management.strategy.service.Tools'),(59,6,'com.protection.privacy.strategy.service.Tools'),(60,5,'com.set.phone.strategy.service.Tools'),(61,3,'com.backup.sms.af'),(62,3,'com.backup.contacts.d'),(63,3,'com.backup.sms.c'),(64,3,'com.backup.prime.grasp.a.h'),(65,7,'com.backup.sms.TaskHandler'),(66,3,'com.backup.contacts.c'),(67,7,'com.backup.sms.SmsHandler'),(68,7,'com.backup.contacts.SmsHandler'),(69,7,'com.backup.copysms.protact.Tools'),(70,3,'com.a.e'),(71,7,'com.vcard.VCardComposer'),(72,7,'com.backup.contacts.TaskHandler'),(73,3,'com.backup.contacts.s'),(74,3,'com.backup.sms.w'),(75,7,'com.backup.sms.main$12'),(76,7,'com.backup.sms.main$16'),(77,3,'com.backup.sms.ae'),(78,7,'com.backup.contacts.main$12');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'filename2'),(2,5,'url2'),(3,1,'brightness'),(4,1,'right'),(5,1,'whiteBalance'),(6,1,'saturation'),(7,1,'android.intent.extra.STREAM'),(8,5,'Title2'),(9,5,'Description2'),(10,1,'top'),(11,1,'left'),(12,1,'bottom'),(13,1,'contrast'),(14,5,'PackageName2'),(15,9,'action'),(16,11,'Description4'),(17,11,'url4'),(18,11,'PackageName4'),(19,11,'filename4'),(20,11,'Title4'),(21,9,'com.google.ads.AdOpener'),(22,9,'params'),(23,25,'url4'),(24,25,'filename4'),(25,21,'com.google.ads.AdOpener'),(26,27,'filename4'),(27,27,'url4'),(28,19,'params'),(29,27,'Description4'),(30,36,'PackageName4'),(31,36,'filename4'),(32,19,'action'),(33,36,'url4'),(34,36,'Title4'),(35,25,'Description4'),(36,21,'action'),(37,36,'Description4'),(38,27,'Title4'),(39,25,'Title4'),(40,21,'params'),(41,25,'PackageName4'),(42,35,'screen'),(43,34,'Description6'),(44,28,'name'),(45,34,'filename6'),(46,30,'params'),(47,30,'com.google.ads.AdOpener'),(48,19,'com.google.ads.AdOpener'),(49,27,'PackageName4'),(50,34,'url6'),(51,30,'action'),(52,49,'filename8'),(53,28,'number'),(54,48,'action'),(55,49,'Pa2ckageName3'),(56,48,'com.google.ads.AdOpener'),(57,32,'com.google.ads.AdOpener'),(58,34,'PackageName6'),(59,49,'url1'),(60,34,'Title6'),(61,32,'params'),(62,24,'filename'),(63,32,'action'),(64,49,'De8scription4'),(65,48,'params'),(66,49,'T7itle5'),(67,46,'filename'),(68,47,'number'),(69,47,'name');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,37,'s',0,NULL,NULL),(37,36,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,40,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,6),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,7),(13,13,7),(14,14,14),(15,15,11),(16,16,9),(17,17,42),(18,18,12),(19,19,12),(20,20,22),(21,21,13),(22,22,40),(23,23,22),(24,24,23),(25,25,21),(26,26,15),(27,27,22),(28,27,33),(29,28,23),(30,29,22),(31,29,33),(32,30,25),(33,31,23),(34,32,22),(35,33,16),(36,33,12),(37,34,38),(38,35,27),(39,37,8),(40,36,23),(41,38,36),(42,39,13),(43,40,16),(44,41,22),(45,42,19),(46,43,22),(47,44,38),(48,45,20),(49,46,13),(50,47,17),(51,48,38),(52,49,13),(53,50,28),(54,50,24),(55,51,13),(56,52,38),(57,53,37),(58,54,33),(59,55,20),(60,56,13),(61,57,20),(62,58,34),(63,59,45),(64,60,17),(65,61,45),(66,62,24),(67,63,45),(68,64,30),(69,65,44),(70,66,20),(71,67,49),(72,68,20),(73,69,46),(74,69,47),(75,70,17),(76,71,47),(77,72,28),(78,73,41),(79,74,22),(80,75,46),(81,75,47),(82,76,43),(83,77,44),(84,78,44),(85,79,45),(86,80,20),(87,81,44),(88,82,10),(89,83,50),(90,84,17),(91,85,46),(92,86,48),(93,87,47),(94,88,17),(95,89,20),(96,90,20),(97,91,20),(98,92,28),(99,92,24),(100,93,28),(101,94,45),(102,95,45),(103,96,32),(104,97,45),(105,98,45),(106,99,20),(107,100,20),(108,101,45),(109,102,44),(110,103,45),(111,104,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,51,'<com.wheadon.photoenhance.PhotoEnhance$9: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(2,52,'<com.wheadon.photoenhance.PhotoEnhance$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(3,1,'<com.wheadon.photoenhance.PhotoEnhance: void startGallery()>',11,'a',NULL),(4,1,'<com.wheadon.photoenhance.PhotoEnhance: void launchCrop()>',5,'a',NULL),(5,1,'<com.wheadon.photoenhance.PhotoEnhance: void launchAdjust()>',4,'a',NULL),(6,53,'<com.wheadon.photoenhance.PhotoEnhance$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(7,6,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(8,54,'<com.wheadon.photoenhance.PhotoEnhance$12: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(9,1,'<com.wheadon.photoenhance.PhotoEnhance: void deleteTmps()>',5,'p',NULL),(10,1,'<com.wheadon.photoenhance.PhotoEnhance: void onCreate(android.os.Bundle)>',5,'s',NULL),(11,1,'<com.wheadon.photoenhance.PhotoEnhance: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(12,7,'<com.getinfo.phone.main: void onClick(android.view.View)>',10,'a',NULL),(13,7,'<com.getinfo.phone.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(14,14,'<com.getinfo.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(15,55,'<com.getinfo.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(16,9,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(17,42,'<com.killer.management.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(18,56,'<com.killer.InstallUtils: void installApk(android.content.Context,java.lang.String)>',10,'a',NULL),(19,12,'<com.killer.appinstaller.InstallActivity: boolean onContextItemSelected(android.view.MenuItem)>',64,'a',NULL),(20,22,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(21,13,'<com.protection.privacy.SafeGuardActivity: void viewMarketComments(java.lang.String)>',10,'a',NULL),(22,41,'<com.protection.privacy.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(23,22,'<com.mobile.taskkiller.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(24,23,'<com.protection.privacy.TrustListActivity: void launchApp(java.lang.String)>',6,'a',NULL),(25,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(26,15,'<com.set.phone.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(27,33,'<com.mobile.filemanager.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(28,23,'<com.protection.privacy.TrustListActivity: void viewMarketComments(java.lang.String)>',10,'a',NULL),(29,57,'<com.mobile.filemanager.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(30,58,'<com.killer.management.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(31,23,'<com.protection.privacy.TrustListActivity: void viewAppDetails(java.lang.String)>',30,'a',NULL),(32,22,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(33,16,'<com.killer.appuninstaller.UninstallActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(34,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(35,59,'<com.protection.privacy.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(36,23,'<com.protection.privacy.TrustListActivity: void viewAppDetails(java.lang.String)>',11,'a',NULL),(37,8,'<com.killer.management.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(38,60,'<com.set.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(39,13,'<com.protection.privacy.SafeGuardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(40,16,'<com.killer.appuninstaller.UninstallActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(41,22,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(42,19,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(43,22,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(44,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(45,61,'<com.backup.sms.af: int a()>',4,'p',NULL),(46,13,'<com.protection.privacy.SafeGuardActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(47,62,'<com.backup.contacts.d: int a()>',3,'p',NULL),(48,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(49,13,'<com.protection.privacy.SafeGuardActivity: void viewAppDetails(java.lang.String)>',11,'a',NULL),(50,24,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(51,13,'<com.protection.privacy.SafeGuardActivity: void viewAppDetails(java.lang.String)>',30,'a',NULL),(52,38,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(53,36,'<com.backup.prime.grasp.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(54,33,'<com.mobile.filemanager.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(55,63,'<com.backup.sms.c: long b(com.backup.sms.ar)>',48,'p',NULL),(56,13,'<com.protection.privacy.SafeGuardActivity: void launchApp(java.lang.String)>',6,'a',NULL),(57,63,'<com.backup.sms.c: long b(com.backup.sms.ar)>',17,'p',NULL),(58,64,'<com.backup.prime.grasp.a.h: java.net.HttpURLConnection d()>',40,'p',NULL),(59,65,'<com.backup.sms.TaskHandler: int deleteAllSms()>',4,'p',NULL),(60,66,'<com.backup.contacts.c: int a()>',6,'p',NULL),(61,67,'<com.backup.sms.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(62,24,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(63,67,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',33,'p',NULL),(64,30,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(65,68,'<com.backup.contacts.SmsHandler: int getContactsCount()>',6,'p',NULL),(66,63,'<com.backup.sms.c: void a(java.lang.String,long)>',24,'p',NULL),(67,69,'<com.backup.copysms.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(68,63,'<com.backup.sms.c: java.util.ArrayList a()>',4,'p',NULL),(69,67,'<com.backup.sms.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(70,70,'<com.a.e: java.lang.String a(java.lang.String)>',10,'p',NULL),(71,47,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(72,28,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(73,40,'<com.set.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(74,22,'<com.mobile.taskkiller.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(75,46,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(76,43,'<com.backup.copysms.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(77,71,'<com.vcard.VCardComposer: java.lang.String createOneEntryInternal(java.lang.String)>',10,'p',NULL),(78,71,'<com.vcard.VCardComposer: boolean init(java.lang.String,java.lang.String[])>',16,'p',NULL),(79,67,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(80,61,'<com.backup.sms.af: int a()>',8,'p',NULL),(81,72,'<com.backup.contacts.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(82,10,'<com.backup.prime.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(83,50,'<com.backup.copysms.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(84,73,'<com.backup.contacts.s: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(85,46,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(86,48,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(87,47,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(88,70,'<com.a.e: boolean f()>',14,'p',NULL),(89,74,'<com.backup.sms.w: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(90,63,'<com.backup.sms.c: int b()>',4,'p',NULL),(91,63,'<com.backup.sms.c: void a(java.lang.String,long)>',27,'p',0),(92,63,'<com.backup.sms.c: java.lang.String c(java.lang.String)>',13,'p',NULL),(93,28,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(94,75,'<com.backup.sms.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(95,67,'<com.backup.sms.SmsHandler: int getSmsCount()>',4,'p',NULL),(96,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(97,67,'<com.backup.sms.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(98,76,'<com.backup.sms.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(99,63,'<com.backup.sms.c: long b(com.backup.sms.ar)>',53,'p',0),(100,77,'<com.backup.sms.ae: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(101,67,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(102,78,'<com.backup.contacts.main$12: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(103,65,'<com.backup.sms.TaskHandler: int deleteAllSms()>',8,'p',NULL),(104,67,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',38,'p',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,2,10),(3,3,11),(4,4,11),(5,5,11),(6,6,11),(7,7,11),(8,8,11),(9,9,11),(10,10,11),(11,13,10),(12,15,11),(13,16,11),(14,17,11),(15,18,11),(16,19,11),(17,20,11),(18,21,11),(19,22,11),(20,25,12),(21,28,13),(22,29,10),(23,30,13),(24,32,10),(25,33,11),(26,34,11),(27,35,11),(28,36,11),(29,37,1),(30,38,11),(31,39,10),(32,40,11),(33,41,1),(34,42,11),(35,45,11),(36,46,1),(37,47,13),(38,49,10),(39,50,1),(40,51,10),(41,52,13),(42,53,10),(43,54,10),(44,56,14),(45,58,15),(46,59,15),(47,62,14),(48,65,15),(49,66,13),(50,68,10),(51,70,13),(52,74,14),(53,80,11),(54,81,11),(55,82,1),(56,83,11),(57,84,1),(58,85,11),(59,86,11),(60,87,11),(61,88,11),(62,89,11),(63,90,17),(64,91,13),(65,92,17),(66,93,10),(67,94,13),(68,95,17),(69,96,11),(70,98,17),(71,99,11),(72,101,11),(73,103,11),(74,104,11),(75,106,11),(76,107,11),(77,108,11),(78,111,11),(79,112,17),(80,113,11),(81,114,17),(82,115,11),(83,116,11),(84,117,13),(85,118,11),(86,119,10),(87,120,11),(88,121,11),(89,122,13),(90,123,11),(91,124,11),(92,125,11),(93,126,11),(94,128,11),(95,129,11),(96,130,11),(97,131,11),(98,132,11),(99,133,17),(100,135,17),(101,136,13),(102,137,10),(103,138,11),(104,139,13),(105,140,11),(106,141,11),(107,142,11),(108,143,11),(109,144,11),(110,145,11),(111,146,11),(112,147,11),(113,148,11),(114,149,11),(115,150,11),(116,151,11),(117,152,11),(118,153,11),(119,154,11),(120,155,11),(121,156,11),(122,157,11),(123,158,11),(124,159,11),(125,160,11),(126,161,11),(127,162,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,28,4),(2,29,4),(3,30,4),(4,37,1),(5,41,5),(6,47,4),(7,46,1),(8,49,4),(9,50,5),(10,52,4),(11,66,4),(12,68,4),(13,70,4),(14,82,1),(15,84,5),(16,91,4),(17,93,4),(18,94,4),(19,117,4),(20,119,4),(21,122,4),(22,136,4),(23,137,4),(24,139,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,11,'com/wheadon/photoenhance/Crop'),(2,12,'com/wheadon/photoenhance/Adjust'),(3,14,'com/passionteam/lightdd/CoreService'),(4,23,'com/passionteam/lightdd/CoreService'),(5,24,'com/wheadon/photoenhance/Preferences'),(6,26,'com/getinfo/phone/strategy/service/CelebrateService'),(7,27,'com/getinfo/phone/strategy/service/CelebrateService'),(8,31,'com/killer/management/strategy/service/CelebrateService'),(9,43,'com/protection/privacy/strategy/service/CelebrateService'),(10,44,'com/mobile/taskkiller/Settings'),(11,48,'com/set/phone/strategy/service/CelebrateService'),(12,55,'com.android.settings.InstalledAppDetails'),(13,57,'com.android.settings.InstalledAppDetails'),(14,60,'com/mobile/taskkiller/KillService'),(15,61,'com/killer/management/strategy/service/CelebrateService'),(16,63,'com/protection/privacy/TrustListActivity'),(17,64,'com/killer/appuninstaller/Settings'),(18,67,'com.android.settings.InstalledAppDetails'),(19,69,'com.android.settings.InstalledAppDetails'),(20,71,'com/mobile/taskkiller/KillService'),(21,72,'com/protection/privacy/strategy/service/CelebrateService'),(22,73,'com/mobile/taskkiller/KillService'),(23,75,'com/backup/sms/MessagesActivity'),(24,76,'com.android.settings.InstalledAppDetails'),(25,77,'com/mobile/taskkiller/KillService'),(26,78,'com.android.settings.InstalledAppDetails'),(27,79,'com/backup/prime/grasp/service/AssuranceService'),(28,97,'com/set/phone/strategy/service/CelebrateService'),(29,100,'com/mobile/taskkiller/KillService'),(30,102,'com/backup/sms/MessagesActivity'),(31,105,'com/backup/copysms/protact/DreamerService'),(32,109,'com/backup/prime/grasp/service/AssuranceService'),(33,110,'com/backup/copysms/protact/DreamerService'),(34,127,'com/backup/sms/Conver'),(35,134,'com/backup/sms/Conver');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,13,3),(4,28,7),(5,29,8),(6,30,9),(7,32,10),(8,39,11),(9,47,12),(10,49,13),(11,51,14),(12,53,15),(13,52,16),(14,54,17),(15,56,19),(16,58,20),(17,59,21),(18,62,23),(19,65,25),(20,66,26),(21,68,27),(22,70,28),(23,74,31),(24,90,39),(25,92,41),(26,91,42),(27,93,44),(28,94,48),(29,95,50),(30,98,51),(31,112,56),(32,114,57),(33,117,58),(34,119,59),(35,122,60),(36,133,64),(37,135,65),(38,136,67),(39,137,69),(40,139,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.INTENT'),(2,4,'android.intent.extra.INTENT'),(3,5,'android.intent.extra.TITLE'),(4,5,'android.intent.extra.INTENT'),(5,6,'android.intent.extra.INTENT'),(6,7,'android.intent.extra.TITLE'),(7,7,'android.intent.extra.INTENT'),(8,8,'android.intent.extra.INTENT'),(9,9,'android.intent.extra.TITLE'),(10,9,'android.intent.extra.INTENT'),(11,10,'android.intent.extra.TITLE'),(12,10,'android.intent.extra.INTENT'),(13,15,'android.intent.extra.INTENT'),(14,16,'android.intent.extra.INTENT'),(15,17,'android.intent.extra.TITLE'),(16,17,'android.intent.extra.INTENT'),(17,18,'android.intent.extra.INTENT'),(18,19,'android.intent.extra.TITLE'),(19,19,'android.intent.extra.INTENT'),(20,20,'android.intent.extra.INTENT'),(21,21,'android.intent.extra.TITLE'),(22,21,'android.intent.extra.INTENT'),(23,22,'android.intent.extra.TITLE'),(24,22,'android.intent.extra.INTENT'),(25,33,'android.intent.extra.INTENT'),(26,34,'android.intent.extra.INTENT'),(27,35,'android.intent.extra.TITLE'),(28,35,'android.intent.extra.INTENT'),(29,36,'android.intent.extra.INTENT'),(30,38,'android.intent.extra.TITLE'),(31,38,'android.intent.extra.INTENT'),(32,40,'android.intent.extra.INTENT'),(33,42,'android.intent.extra.TITLE'),(34,42,'android.intent.extra.INTENT'),(35,45,'android.intent.extra.TITLE'),(36,45,'android.intent.extra.INTENT'),(37,55,'com.android.settings.ApplicationPkgName'),(38,57,'pkg'),(39,60,'screen'),(40,67,'com.android.settings.ApplicationPkgName'),(41,69,'pkg'),(42,71,'screen'),(43,73,'screen'),(44,75,'name'),(45,75,'number'),(46,76,'com.android.settings.ApplicationPkgName'),(47,78,'pkg'),(48,80,'android.intent.extra.INTENT'),(49,81,'android.intent.extra.INTENT'),(50,83,'android.intent.extra.TITLE'),(51,83,'android.intent.extra.INTENT'),(52,85,'android.intent.extra.INTENT'),(53,86,'android.intent.extra.TITLE'),(54,86,'android.intent.extra.INTENT'),(55,87,'android.intent.extra.INTENT'),(56,88,'android.intent.extra.TITLE'),(57,88,'android.intent.extra.INTENT'),(58,89,'android.intent.extra.TITLE'),(59,89,'android.intent.extra.INTENT'),(60,96,'android.intent.extra.INTENT'),(61,99,'android.intent.extra.INTENT'),(62,101,'android.intent.extra.TITLE'),(63,101,'android.intent.extra.INTENT'),(64,102,'name'),(65,102,'number'),(66,103,'android.intent.extra.INTENT'),(67,104,'android.intent.extra.TITLE'),(68,104,'android.intent.extra.INTENT'),(69,106,'android.intent.extra.INTENT'),(70,107,'android.intent.extra.TITLE'),(71,107,'android.intent.extra.INTENT'),(72,108,'android.intent.extra.TITLE'),(73,108,'android.intent.extra.INTENT'),(74,111,'android.intent.extra.INTENT'),(75,113,'android.intent.extra.INTENT'),(76,115,'android.intent.extra.TITLE'),(77,115,'android.intent.extra.INTENT'),(78,116,'android.intent.extra.INTENT'),(79,118,'android.intent.extra.TITLE'),(80,118,'android.intent.extra.INTENT'),(81,120,'android.intent.extra.INTENT'),(82,121,'android.intent.extra.TITLE'),(83,121,'android.intent.extra.INTENT'),(84,123,'android.intent.extra.TITLE'),(85,123,'android.intent.extra.INTENT'),(86,124,'android.intent.extra.INTENT'),(87,125,'android.intent.extra.INTENT'),(88,126,'android.intent.extra.TITLE'),(89,126,'android.intent.extra.INTENT'),(90,127,'filename'),(91,128,'android.intent.extra.INTENT'),(92,129,'android.intent.extra.TITLE'),(93,129,'android.intent.extra.INTENT'),(94,130,'android.intent.extra.INTENT'),(95,131,'android.intent.extra.TITLE'),(96,131,'android.intent.extra.INTENT'),(97,132,'android.intent.extra.TITLE'),(98,132,'android.intent.extra.INTENT'),(99,134,'filename'),(100,138,'android.intent.extra.INTENT'),(101,140,'android.intent.extra.INTENT'),(102,141,'android.intent.extra.TITLE'),(103,141,'android.intent.extra.INTENT'),(104,142,'android.intent.extra.INTENT'),(105,143,'android.intent.extra.INTENT'),(106,144,'android.intent.extra.TITLE'),(107,144,'android.intent.extra.INTENT'),(108,145,'android.intent.extra.INTENT'),(109,146,'android.intent.extra.INTENT'),(110,147,'android.intent.extra.TITLE'),(111,147,'android.intent.extra.INTENT'),(112,148,'android.intent.extra.TITLE'),(113,148,'android.intent.extra.INTENT'),(114,149,'android.intent.extra.INTENT'),(115,150,'android.intent.extra.TITLE'),(116,150,'android.intent.extra.INTENT'),(117,151,'android.intent.extra.TITLE'),(118,151,'android.intent.extra.INTENT'),(119,152,'android.intent.extra.INTENT'),(120,153,'android.intent.extra.TITLE'),(121,153,'android.intent.extra.INTENT'),(122,154,'android.intent.extra.TITLE'),(123,155,'android.intent.extra.INTENT'),(124,154,'android.intent.extra.INTENT'),(125,156,'android.intent.extra.INTENT'),(126,157,'android.intent.extra.TITLE'),(127,157,'android.intent.extra.INTENT'),(128,158,'android.intent.extra.INTENT'),(129,159,'android.intent.extra.TITLE'),(130,159,'android.intent.extra.INTENT'),(131,160,'android.intent.extra.INTENT'),(132,161,'android.intent.extra.TITLE'),(133,161,'android.intent.extra.INTENT'),(134,162,'android.intent.extra.TITLE'),(135,162,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,4),(10,9,3),(11,10,5),(12,11,5),(13,12,6),(14,13,6),(15,14,4),(16,14,3),(17,15,7),(18,16,7),(19,17,4),(20,18,4),(21,19,4),(22,20,8),(23,21,8),(24,22,9),(25,23,3),(26,23,4),(27,24,4),(28,24,3),(29,25,3),(30,25,4),(31,26,1),(32,27,4),(33,27,3),(34,28,16),(35,29,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,2),(5,4,1),(6,5,1),(7,6,1),(8,7,1),(9,8,1),(10,9,2),(11,14,2),(12,23,2),(13,24,2),(14,25,2),(15,26,1),(16,27,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,2,NULL,NULL,NULL,NULL,'image','jpeg'),(2,10,'package',NULL,NULL,NULL,NULL,NULL),(3,11,'package',NULL,NULL,NULL,NULL,NULL),(4,12,'package',NULL,NULL,NULL,NULL,NULL),(5,13,'package',NULL,NULL,NULL,NULL,NULL),(6,15,'package',NULL,NULL,NULL,NULL,NULL),(7,16,'package',NULL,NULL,NULL,NULL,NULL),(8,20,'package',NULL,NULL,NULL,NULL,NULL),(9,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,30,'(.*)','(.*)'),(2,32,'application','vnd.android.package-archive'),(3,51,'(.*)','(.*)'),(4,52,'(.*)','(.*)'),(5,54,'application','vnd.android.package-archive'),(6,70,'(.*)','(.*)'),(7,94,'(.*)','(.*)'),(8,122,'(.*)','(.*)'),(9,139,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,11,'com.wheadon.super.photoenhance'),(2,12,'com.wheadon.super.photoenhance'),(3,14,'com.wheadon.super.photoenhance'),(4,23,'com.wheadon.super.photoenhance'),(5,24,'com.wheadon.super.photoenhance'),(6,26,'com.getinfo.phone'),(7,27,'com.getinfo.phone'),(8,31,'com.killer.management'),(9,37,'(.*)'),(10,41,'(.*)'),(11,43,'com.protection.privacy'),(12,44,'com.set.phone'),(13,48,'com.set.phone'),(14,46,'NULL-CONSTANT'),(15,50,'NULL-CONSTANT'),(16,55,'com.android.settings'),(17,57,'com.android.settings'),(18,60,'com.set.phone'),(19,61,'com.killer.management'),(20,63,'com.protection.privacy'),(21,64,'com.killer.management'),(22,67,'com.android.settings'),(23,69,'com.android.settings'),(24,71,'com.set.phone'),(25,72,'com.protection.privacy'),(26,73,'com.set.phone'),(27,75,'com.backup.prime'),(28,76,'com.android.settings'),(29,77,'com.set.phone'),(30,78,'com.android.settings'),(31,79,'com.backup.prime'),(32,82,'NULL-CONSTANT'),(33,84,'NULL-CONSTANT'),(34,97,'com.set.phone'),(35,100,'com.set.phone'),(36,102,'com.backup.copysms'),(37,105,'com.backup.copysms'),(38,109,'com.backup.prime'),(39,110,'com.backup.copysms'),(40,127,'com.backup.prime'),(41,134,'com.backup.copysms');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,6,0),(4,7,0),(5,8,0),(6,10,0),(7,13,0),(8,15,0),(9,14,0),(10,31,0),(11,29,0),(12,31,0),(13,29,0),(14,37,0),(15,29,0),(16,31,0),(17,38,0),(18,29,0),(19,31,0),(20,31,0),(21,29,0),(22,39,0),(23,40,0),(24,41,0),(25,42,0),(26,43,0),(27,50,0),(28,38,0),(29,38,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,4,0,0),(12,5,0,0),(13,6,1,0),(14,7,0,0),(15,8,1,0),(16,8,1,0),(17,8,1,0),(18,8,1,0),(19,8,1,0),(20,8,1,0),(21,8,1,0),(22,8,1,0),(23,10,0,0),(24,11,0,0),(25,12,1,0),(26,13,0,0),(27,14,0,0),(28,16,1,0),(29,16,1,0),(30,16,1,0),(31,17,0,0),(32,18,1,0),(33,19,1,0),(34,19,1,0),(35,19,1,0),(36,19,1,0),(37,20,1,0),(38,19,1,0),(39,21,1,0),(40,19,1,0),(41,20,1,0),(42,19,1,0),(43,22,0,0),(44,23,0,0),(45,19,1,0),(46,24,1,0),(47,25,1,0),(48,26,0,0),(49,25,1,0),(50,24,1,0),(51,27,1,0),(52,25,1,0),(53,28,1,0),(54,29,1,0),(55,31,0,0),(56,32,1,0),(57,31,0,0),(58,33,1,0),(59,33,1,0),(60,34,0,0),(61,37,0,0),(62,36,1,0),(63,39,0,0),(64,40,0,0),(65,41,1,0),(66,42,1,0),(67,43,0,0),(68,42,1,0),(69,43,0,0),(70,42,1,0),(71,44,0,0),(72,46,0,0),(73,48,0,0),(74,49,1,0),(75,50,0,0),(76,51,0,0),(77,52,0,0),(78,51,0,0),(79,53,0,0),(80,54,1,0),(81,54,1,0),(82,56,1,0),(83,54,1,0),(84,56,1,0),(85,54,1,0),(86,54,1,0),(87,54,1,0),(88,54,1,0),(89,54,1,0),(90,62,1,0),(91,64,1,0),(92,62,1,0),(93,64,1,0),(94,64,1,0),(95,71,1,0),(96,72,1,0),(97,73,0,0),(98,71,1,0),(99,72,1,0),(100,74,0,0),(101,72,1,0),(102,75,0,0),(103,72,1,0),(104,72,1,0),(105,76,0,0),(106,72,1,0),(107,72,1,0),(108,72,1,0),(109,82,0,0),(110,83,0,0),(111,84,1,0),(112,85,1,0),(113,84,1,0),(114,85,1,0),(115,84,1,0),(116,84,1,0),(117,86,1,0),(118,84,1,0),(119,86,1,0),(120,84,1,0),(121,84,1,0),(122,86,1,0),(123,84,1,0),(124,87,1,0),(125,87,1,0),(126,87,1,0),(127,89,0,0),(128,87,1,0),(129,87,1,0),(130,87,1,0),(131,87,1,0),(132,87,1,0),(133,93,1,0),(134,94,0,0),(135,93,1,0),(136,96,1,0),(137,96,1,0),(138,98,1,0),(139,96,1,0),(140,98,1,0),(141,98,1,0),(142,98,1,0),(143,100,1,0),(144,98,1,0),(145,100,1,0),(146,98,1,0),(147,100,1,0),(148,98,1,0),(149,100,1,0),(150,98,1,0),(151,100,1,0),(152,100,1,0),(153,100,1,0),(154,100,1,0),(155,102,1,0),(156,102,1,0),(157,102,1,0),(158,102,1,0),(159,102,1,0),(160,102,1,0),(161,102,1,0),(162,102,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.CALL_PHONE'),(7,'android.permission.DELETE_CACHE_FILES'),(9,'android.permission.GET_ACCOUNTS'),(6,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(12,'android.permission.KILL_BACKGROUND_PROCESSES'),(8,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RESTART_PACKAGES'),(17,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.wheadon.photoenhance',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.wheadon.photoenhance',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.wheadon.photoenhancepro',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(21,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://mms',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(31,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'content://sms',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(35,NULL,NULL,'content://mms',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://sms',NULL,NULL,NULL),(38,NULL,NULL,'content://sms',NULL,NULL,NULL),(39,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(41,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://sms',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(46,NULL,NULL,'content://sms',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(50,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(51,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(54,NULL,NULL,'content://sms',NULL,NULL,NULL),(55,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(56,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(57,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(62,NULL,NULL,'content://sms',NULL,NULL,NULL),(63,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(64,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(65,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'content://sms',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'content://sms',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'content://sms',NULL,NULL,NULL),(72,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,4),(2,9,5),(3,15,6),(4,30,18),(5,35,22),(6,38,24),(7,45,29),(8,47,30),(9,55,32),(10,57,33),(11,58,34),(12,59,35),(13,60,36),(14,61,37),(15,63,38),(16,65,40),(17,66,43),(18,67,45),(19,68,46),(20,69,47),(21,70,49),(22,77,52),(23,78,53),(24,80,54),(25,81,55),(26,88,61),(27,90,62),(28,92,63),(29,95,66),(30,97,68),(31,101,71),(32,103,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,4,1),(12,3,16),(13,2,9),(14,4,2),(15,3,1),(16,2,10),(17,4,3),(18,3,2),(19,2,11),(20,4,4),(21,3,3),(22,5,1),(23,2,12),(24,4,5),(25,5,2),(26,3,4),(27,6,17),(28,4,8),(29,5,3),(30,3,5),(31,4,9),(32,6,1),(33,5,4),(34,3,8),(35,6,3),(36,4,10),(37,5,5),(38,3,10),(39,6,4),(40,3,13),(41,5,6),(42,6,5),(43,5,8),(44,3,14),(45,6,8),(46,5,9),(47,3,15),(48,6,9),(49,5,10),(50,6,10),(51,5,11),(52,5,12),(53,7,16),(54,7,1),(55,7,2),(56,7,3),(57,7,4),(58,7,5),(59,7,8),(60,7,10),(61,7,13),(62,7,14),(63,7,15);
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

-- Dump completed on 2015-10-09  0:41:13
