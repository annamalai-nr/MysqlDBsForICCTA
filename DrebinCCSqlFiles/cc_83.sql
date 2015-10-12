-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_83
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
INSERT INTO `ActionStrings` VALUES (9,'(.*)'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CALL'),(16,'android.intent.action.CHOOSER'),(17,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_CHANGED'),(8,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(2,'android.intent.action.PHONE_STATE'),(12,'android.intent.action.RINGTONE_PICKER'),(19,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.VIEW'),(11,'android.media.RINGER_MODE_CHANGED'),(18,'android.settings.APPLICATION_DETAILS_SETTINGS'),(13,'android.settings.SOUND_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.smsbackup.phone',2),(2,'com.file.phoneset',1),(3,'com.backup.prime',1),(4,'com.sound.adjustment',4),(5,'com.quick.task',5),(6,'com.smsbackup.phone',4),(7,'com.move.app2sd',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.smsbackup.phone.main'),(2,1,'com.smsbackup.phone.Conver'),(3,1,'com.smsbackup.phone.MessagesActivity'),(4,1,'com.google.ads.AdActivity'),(5,1,'com.smsbackup.phone.protact.DreamerService'),(6,1,'com.smsbackup.phone.protact.BeerReceiver'),(7,2,'com.file.phoneset.main'),(8,2,'com.google.ads.AdActivity'),(9,2,'com.file.phoneset.protact.DreamerService'),(10,4,'com.sound.adjustment.SoundSetting'),(11,3,'com.backup.prime.main'),(12,2,'com.file.phoneset.protact.BeerReceiver'),(13,3,'com.backup.contacts.main'),(14,4,'com.google.ads.AdActivity'),(15,3,'com.backup.sms.main'),(16,4,'com.sound.adjustment.Setting'),(17,4,'com.sound.adjustment.strategy.service.CelebrateService'),(18,3,'com.backup.sms.Conver'),(19,3,'com.backup.sms.MessagesActivity'),(20,4,'com.sound.adjustment.Receiver'),(21,3,'com.google.ads.AdActivity'),(22,4,'com.sound.adjustment.strategy.core.RebirthReceiver'),(23,3,'com.backup.prime.grasp.service.AssuranceService'),(24,5,'com.quick.task.main'),(25,3,'com.backup.prime.grasp.core.BootReceiver'),(26,6,'com.smsbackup.phone.main'),(27,5,'com.quick.task.Settings'),(28,5,'com.google.ads.AdActivity'),(29,5,'com.quick.task.KillService'),(30,6,'com.smsbackup.phone.Conver'),(31,5,'com.quick.task.strategy.service.CelebrateService'),(32,6,'com.smsbackup.phone.MessagesActivity'),(33,5,'com.quick.task.Receiver'),(34,6,'com.google.ads.AdActivity'),(35,6,'com.smsbackup.phone.strategy.service.CelebrateService'),(36,5,'com.quick.task.ExampleAppWidgetProvider'),(37,6,'com.smsbackup.phone.strategy.core.RebirthReceiver'),(38,7,'com.move.app2sd.MainTab'),(39,5,'com.quick.task.strategy.core.RebirthReceiver'),(40,7,'com.move.app2sd.App2SdActivity'),(41,7,'com.move.app2sd.Preferences'),(42,7,'com.google.ads.AdActivity'),(43,7,'com.move.app2sd.strategy.service.CelebrateService'),(44,7,'com.move.app2sd.Receiver'),(45,7,'com.move.app2sd.strategy.core.RebirthReceiver'),(46,4,'com.sound.adjustment.strategy.service.Tools'),(47,4,'com.sound.adjustment.NetworkStateReceiver'),(48,2,'com.file.phoneset.protact.Tools'),(49,2,'com.file.phoneset.Utils'),(50,6,'com.smsbackup.phone.SmsHandler'),(51,1,'com.smsbackup.phone.SmsHandler'),(52,5,'com.quick.task.strategy.service.Tools'),(53,6,'com.smsbackup.phone.TaskHandler'),(54,6,'com.smsbackup.phone.strategy.service.Tools'),(55,1,'com.smsbackup.phone.main$12'),(56,1,'com.smsbackup.phone.TaskHandler'),(57,7,'com.move.app2sd.strategy.service.Tools'),(58,3,'com.backup.sms.c'),(59,3,'com.a.e'),(60,3,'com.backup.sms.af'),(61,1,'com.smsbackup.phone.protact.Tools'),(62,1,'com.smsbackup.phone.main$16'),(63,6,'com.smsbackup.phone.main$12'),(64,3,'com.backup.contacts.c'),(65,6,'com.smsbackup.phone.main$16'),(66,3,'com.backup.prime.grasp.a.h'),(67,3,'com.backup.sms.w'),(68,3,'com.backup.contacts.s'),(69,3,'com.backup.contacts.d'),(70,3,'com.backup.sms.ae');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'PackageName4'),(2,18,'url4'),(3,18,'filename4'),(4,10,'android.intent.extra.ringtone.PICKED_URI'),(5,9,'url1'),(6,8,'params'),(7,9,'filename8'),(8,18,'Description4'),(9,18,'Title4'),(10,13,'params'),(11,13,'action'),(12,13,'com.google.ads.AdOpener'),(13,9,'Pa2ckageName3'),(14,8,'action'),(15,9,'T7itle5'),(16,4,'params'),(17,34,'params'),(18,31,'filename4'),(19,28,'com.google.ads.AdOpener'),(20,31,'url4'),(21,43,'url4'),(22,42,'action'),(23,43,'Description4'),(24,43,'filename4'),(25,5,'filename8'),(26,3,'number'),(27,34,'action'),(28,34,'com.google.ads.AdOpener'),(29,28,'action'),(30,31,'Title4'),(31,5,'De8scription4'),(32,5,'url1'),(33,9,'De8scription4'),(34,8,'com.google.ads.AdOpener'),(35,29,'screen'),(36,31,'PackageName4'),(37,5,'T7itle5'),(38,35,'filename4'),(39,42,'com.google.ads.AdOpener'),(40,43,'PackageName4'),(41,23,'url6'),(42,28,'params'),(43,21,'action'),(44,23,'filename6'),(45,31,'Description4'),(46,3,'name'),(47,2,'filename'),(48,35,'Title4'),(49,42,'params'),(50,43,'Title4'),(51,35,'PackageName4'),(52,32,'number'),(53,30,'filename'),(54,35,'Description4'),(55,35,'url4'),(56,32,'name'),(57,23,'Title6'),(58,20,'number'),(59,5,'Pa2ckageName3'),(60,23,'PackageName6'),(61,4,'com.google.ads.AdOpener'),(62,4,'action'),(63,23,'Description6'),(64,21,'com.google.ads.AdOpener'),(65,20,'name'),(66,17,'filename'),(67,21,'params');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'s',0,NULL,NULL),(19,20,'r',1,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,47,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,13),(3,3,10),(4,4,22),(5,5,8),(6,6,10),(7,7,2),(8,7,3),(9,8,10),(10,9,9),(11,10,10),(12,11,7),(13,12,2),(14,13,12),(15,14,33),(16,15,1),(17,16,7),(18,17,26),(19,18,26),(20,19,3),(21,20,7),(22,21,37),(23,22,24),(24,23,40),(25,24,26),(26,25,1),(27,26,31),(28,27,40),(29,28,26),(30,29,24),(31,30,1),(32,31,26),(33,32,40),(34,33,3),(35,33,2),(36,34,35),(37,35,40),(38,36,24),(39,37,1),(40,38,26),(41,39,32),(42,40,33),(43,41,1),(44,43,7),(45,42,40),(46,44,24),(47,45,1),(48,46,26),(49,47,1),(50,48,40),(51,49,39),(52,50,32),(53,51,1),(54,52,33),(55,53,4),(56,54,42),(57,55,33),(58,56,24),(59,57,1),(60,58,38),(61,59,28),(62,60,3),(63,61,26),(64,62,45),(65,63,26),(66,64,43),(67,65,30),(68,65,32),(69,66,15),(70,67,15),(71,68,40),(72,69,34),(73,70,24),(74,71,14),(75,72,15),(76,73,24),(77,74,17),(78,75,5),(79,76,26),(80,77,1),(81,78,21),(82,79,1),(83,80,32),(84,80,30),(85,81,26),(86,82,14),(87,83,26),(88,84,15),(89,85,23),(90,86,6),(91,87,25),(92,88,15),(93,89,1),(94,90,15),(95,91,30),(96,92,14),(97,93,20),(98,93,17),(99,94,14),(100,95,14),(101,96,20),(102,97,20),(103,97,17),(104,98,15),(105,99,15),(106,100,20),(107,101,15),(108,102,15),(109,103,15),(110,104,11);
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
INSERT INTO `ExitPoints` VALUES (1,46,'<com.sound.adjustment.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(2,14,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(3,10,'<com.sound.adjustment.SoundSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(4,22,'<com.sound.adjustment.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(5,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(6,10,'<com.sound.adjustment.SoundSetting: void doPickRingtone(int)>',12,'a',NULL),(7,2,'<com.smsbackup.phone.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(8,10,'<com.sound.adjustment.SoundSetting: void onCreate(android.os.Bundle)>',7,'s',NULL),(9,48,'<com.file.phoneset.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(10,10,'<com.sound.adjustment.SoundSetting: void onClick(android.view.View)>',59,'a',NULL),(11,7,'<com.file.phoneset.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(12,2,'<com.smsbackup.phone.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(13,12,'<com.file.phoneset.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(14,33,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(15,1,'<com.smsbackup.phone.main: void onCreate(android.os.Bundle)>',15,'s',NULL),(16,49,'<com.file.phoneset.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(17,50,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',38,'p',0),(18,50,'<com.smsbackup.phone.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(19,3,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(20,7,'<com.file.phoneset.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(21,37,'<com.smsbackup.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(22,24,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(23,40,'<com.move.app2sd.App2SdActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(24,50,'<com.smsbackup.phone.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(25,51,'<com.smsbackup.phone.SmsHandler: int getSmsCount()>',4,'p',NULL),(26,52,'<com.quick.task.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(27,40,'<com.move.app2sd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',24,'a',NULL),(28,53,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',4,'p',NULL),(29,24,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(30,51,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(31,50,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(32,40,'<com.move.app2sd.App2SdActivity: void viewMarketComments(java.lang.String)>',10,'a',NULL),(33,51,'<com.smsbackup.phone.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(34,54,'<com.smsbackup.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(35,40,'<com.move.app2sd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',14,'a',NULL),(36,24,'<com.quick.task.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(37,55,'<com.smsbackup.phone.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(38,50,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(39,32,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(40,33,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(41,51,'<com.smsbackup.phone.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(42,40,'<com.move.app2sd.App2SdActivity: void showAppDetails(java.lang.String)>',11,'a',NULL),(43,7,'<com.file.phoneset.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(44,24,'<com.quick.task.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(45,51,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',33,'p',NULL),(46,50,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',33,'p',NULL),(47,51,'<com.smsbackup.phone.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(48,40,'<com.move.app2sd.App2SdActivity: void showAppDetails(java.lang.String)>',30,'a',NULL),(49,39,'<com.quick.task.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(50,32,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(51,56,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',8,'p',NULL),(52,33,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(53,4,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(54,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(55,33,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(56,24,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(57,56,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',4,'p',NULL),(58,38,'<com.move.app2sd.MainTab: void onCreate(android.os.Bundle)>',9,'s',NULL),(59,28,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(60,3,'<com.smsbackup.phone.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(61,53,'<com.smsbackup.phone.TaskHandler: int deleteAllSms()>',8,'p',NULL),(62,45,'<com.move.app2sd.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(63,50,'<com.smsbackup.phone.SmsHandler: int getSmsCount()>',4,'p',NULL),(64,57,'<com.move.app2sd.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(65,30,'<com.smsbackup.phone.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(66,58,'<com.backup.sms.c: void a(java.lang.String,long)>',27,'p',0),(67,58,'<com.backup.sms.c: int b()>',4,'p',NULL),(68,40,'<com.move.app2sd.App2SdActivity: void shareApp(com.move.app2sd.Utils$AppInfo)>',24,'a',NULL),(69,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(70,24,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(71,59,'<com.a.e: java.lang.String a(java.lang.String)>',10,'p',NULL),(72,60,'<com.backup.sms.af: int a()>',4,'p',NULL),(73,24,'<com.quick.task.main: void onCreate(android.os.Bundle)>',10,'s',NULL),(74,18,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(75,61,'<com.smsbackup.phone.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(76,26,'<com.smsbackup.phone.main: void onCreate(android.os.Bundle)>',14,'s',NULL),(77,51,'<com.smsbackup.phone.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(78,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(79,62,'<com.smsbackup.phone.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(80,50,'<com.smsbackup.phone.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(81,63,'<com.smsbackup.phone.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(82,64,'<com.backup.contacts.c: int a()>',6,'p',NULL),(83,65,'<com.smsbackup.phone.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(84,58,'<com.backup.sms.c: long b(com.backup.sms.ar)>',53,'p',0),(85,66,'<com.backup.prime.grasp.a.h: java.net.HttpURLConnection d()>',40,'p',NULL),(86,6,'<com.smsbackup.phone.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(87,25,'<com.backup.prime.grasp.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(88,58,'<com.backup.sms.c: java.util.ArrayList a()>',4,'p',NULL),(89,51,'<com.smsbackup.phone.SmsHandler: long creatSMStoPhone(com.smsbackup.phone.SmsHandler$SMS)>',38,'p',0),(90,67,'<com.backup.sms.w: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(91,30,'<com.smsbackup.phone.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(92,68,'<com.backup.contacts.s: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(93,58,'<com.backup.sms.c: java.lang.String c(java.lang.String)>',13,'p',NULL),(94,69,'<com.backup.contacts.d: int a()>',3,'p',NULL),(95,59,'<com.a.e: boolean f()>',14,'p',NULL),(96,19,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(97,18,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(98,60,'<com.backup.sms.af: int a()>',8,'p',NULL),(99,58,'<com.backup.sms.c: void a(java.lang.String,long)>',24,'p',NULL),(100,19,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(101,58,'<com.backup.sms.c: long b(com.backup.sms.ar)>',17,'p',NULL),(102,58,'<com.backup.sms.c: long b(com.backup.sms.ar)>',48,'p',NULL),(103,70,'<com.backup.sms.ae: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(104,11,'<com.backup.prime.main: void onCreate(android.os.Bundle)>',7,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,10),(3,3,9),(4,6,9),(5,7,10),(6,8,12),(7,9,9),(8,13,13),(9,14,14),(10,16,14),(11,19,10),(12,20,14),(13,22,16),(14,23,14),(15,24,17),(16,25,16),(17,27,16),(18,28,17),(19,29,16),(20,31,16),(21,32,10),(22,34,16),(23,35,16),(24,36,1),(25,39,16),(26,40,1),(27,41,14),(28,43,14),(29,44,10),(30,45,18),(31,49,16),(32,51,16),(33,53,16),(34,54,9),(35,55,9),(36,56,16),(37,58,10),(38,59,10),(39,60,16),(40,61,16),(41,62,9),(42,63,9),(43,64,1),(44,65,16),(45,66,1),(46,67,16),(47,69,9),(48,70,16),(49,72,16),(50,73,10),(51,74,16),(52,75,9),(53,77,16),(54,78,16),(55,79,16),(56,80,16),(57,81,9),(58,83,16),(59,82,18),(60,84,16),(61,85,16),(62,86,10),(63,87,16),(64,88,16),(65,89,16),(66,91,9),(67,92,14),(68,93,16),(69,95,16),(70,94,14),(71,97,16),(72,98,9),(73,99,16),(74,100,16),(75,101,10),(76,103,16),(77,104,9),(78,105,16),(79,106,16),(80,107,16),(81,108,16),(82,109,16),(83,110,16),(84,111,16),(85,112,16),(86,113,16),(87,116,16),(88,117,16),(89,118,16),(90,119,16),(91,121,14),(92,122,16),(93,123,14),(94,124,16),(95,125,16),(96,126,16),(97,127,16),(98,128,16),(99,129,16),(100,130,16),(101,131,16),(102,132,16),(103,133,16),(104,134,16),(105,135,16),(106,136,16),(107,137,16),(108,138,16),(109,140,14),(110,141,14),(111,142,16),(112,143,16),(113,144,16),(114,145,16),(115,146,16),(116,147,16),(117,148,16),(118,149,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,3),(2,2,3),(3,3,3),(4,6,3),(5,7,3),(6,9,3),(7,36,1),(8,40,4),(9,54,3),(10,55,3),(11,58,3),(12,59,3),(13,62,3),(14,63,3),(15,64,1),(16,66,4),(17,69,3),(18,73,3),(19,75,3),(20,81,3),(21,86,3),(22,91,3),(23,98,3),(24,101,3),(25,104,3);
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
INSERT INTO `IClasses` VALUES (1,4,'com/sound/adjustment/Setting'),(2,5,'com/sound/adjustment/strategy/service/CelebrateService'),(3,11,'com/sound/adjustment/strategy/service/CelebrateService'),(4,10,'com/smsbackup/phone/MessagesActivity'),(5,12,'com/file/phoneset/protact/DreamerService'),(6,15,'com/file/phoneset/protact/DreamerService'),(7,17,'com/quick/task/KillService'),(8,18,'com/smsbackup/phone/protact/DreamerService'),(9,21,'com/smsbackup/phone/strategy/service/CelebrateService'),(10,26,'com/move/app2sd/Preferences'),(11,30,'com.android.settings.InstalledAppDetails'),(12,33,'com.android.settings.InstalledAppDetails'),(13,37,'com/quick/task/Settings'),(14,38,'com/smsbackup/phone/Conver'),(15,42,'com/quick/task/KillService'),(16,46,'com/quick/task/KillService'),(17,48,'com/quick/task/strategy/service/CelebrateService'),(18,47,'com.android.settings.InstalledAppDetails'),(19,50,'com.android.settings.InstalledAppDetails'),(20,52,'com/quick/task/KillService'),(21,57,'com/quick/task/KillService'),(22,68,'com/move/app2sd/strategy/service/CelebrateService'),(23,71,'com/move/app2sd/strategy/service/CelebrateService'),(24,76,'com/smsbackup/phone/MessagesActivity'),(25,90,'com/quick/task/strategy/service/CelebrateService'),(26,96,'com/smsbackup/phone/strategy/service/CelebrateService'),(27,102,'com/smsbackup/phone/Conver'),(28,114,'com/smsbackup/phone/protact/DreamerService'),(29,115,'com/backup/prime/grasp/service/AssuranceService'),(30,120,'com/backup/sms/Conver'),(31,139,'com/backup/sms/MessagesActivity'),(32,150,'com/backup/prime/grasp/service/AssuranceService');
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
INSERT INTO `IData` VALUES (1,1,2),(2,2,3),(3,3,4),(4,6,5),(5,7,6),(6,9,7),(7,14,9),(8,16,10),(9,19,11),(10,20,13),(11,23,14),(12,24,15),(13,28,20),(14,32,23),(15,41,26),(16,43,28),(17,45,30),(18,44,31),(19,54,35),(20,55,36),(21,58,37),(22,59,38),(23,62,39),(24,63,40),(25,69,43),(26,73,45),(27,75,48),(28,82,51),(29,81,50),(30,86,52),(31,91,54),(32,92,55),(33,94,57),(34,98,59),(35,101,60),(36,104,61),(37,121,65),(38,123,66),(39,140,72),(40,141,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'android.intent.extra.ringtone.TYPE'),(2,8,'android.intent.extra.ringtone.SHOW_DEFAULT'),(3,8,'android.intent.extra.ringtone.TITLE'),(4,8,'android.intent.extra.ringtone.SHOW_SILENT'),(5,8,'android.intent.extra.ringtone.DEFAULT_URI'),(6,8,'android.intent.extra.ringtone.EXISTING_URI'),(7,10,'name'),(8,10,'number'),(9,17,'screen'),(10,22,'android.intent.extra.INTENT'),(11,25,'android.intent.extra.INTENT'),(12,27,'android.intent.extra.TITLE'),(13,27,'android.intent.extra.INTENT'),(14,29,'android.intent.extra.INTENT'),(15,30,'com.android.settings.ApplicationPkgName'),(16,31,'android.intent.extra.TITLE'),(17,31,'android.intent.extra.INTENT'),(18,33,'pkg'),(19,34,'android.intent.extra.INTENT'),(20,35,'android.intent.extra.TITLE'),(21,35,'android.intent.extra.INTENT'),(22,38,'filename'),(23,39,'android.intent.extra.TITLE'),(24,39,'android.intent.extra.INTENT'),(25,47,'com.android.settings.ApplicationPkgName'),(26,49,'android.intent.extra.INTENT'),(27,50,'pkg'),(28,51,'android.intent.extra.INTENT'),(29,52,'screen'),(30,53,'android.intent.extra.TITLE'),(31,53,'android.intent.extra.INTENT'),(32,56,'android.intent.extra.INTENT'),(33,57,'screen'),(34,60,'android.intent.extra.TITLE'),(35,60,'android.intent.extra.INTENT'),(36,61,'android.intent.extra.INTENT'),(37,65,'android.intent.extra.TITLE'),(38,65,'android.intent.extra.INTENT'),(39,67,'android.intent.extra.TITLE'),(40,67,'android.intent.extra.INTENT'),(41,70,'android.intent.extra.INTENT'),(42,72,'android.intent.extra.INTENT'),(43,74,'android.intent.extra.TITLE'),(44,74,'android.intent.extra.INTENT'),(45,76,'name'),(46,76,'number'),(47,77,'android.intent.extra.INTENT'),(48,78,'android.intent.extra.INTENT'),(49,79,'android.intent.extra.TITLE'),(50,79,'android.intent.extra.INTENT'),(51,80,'android.intent.extra.INTENT'),(52,83,'android.intent.extra.INTENT'),(53,84,'android.intent.extra.TITLE'),(54,84,'android.intent.extra.INTENT'),(55,85,'android.intent.extra.TITLE'),(56,85,'android.intent.extra.INTENT'),(57,87,'android.intent.extra.INTENT'),(58,88,'android.intent.extra.TITLE'),(59,88,'android.intent.extra.INTENT'),(60,89,'android.intent.extra.TITLE'),(61,89,'android.intent.extra.INTENT'),(62,93,'android.intent.extra.INTENT'),(63,95,'android.intent.extra.TITLE'),(64,95,'android.intent.extra.INTENT'),(65,97,'android.intent.extra.TITLE'),(66,97,'android.intent.extra.INTENT'),(67,99,'android.intent.extra.INTENT'),(68,100,'android.intent.extra.INTENT'),(69,102,'filename'),(70,103,'android.intent.extra.TITLE'),(71,103,'android.intent.extra.INTENT'),(72,105,'android.intent.extra.INTENT'),(73,106,'android.intent.extra.TITLE'),(74,106,'android.intent.extra.INTENT'),(75,107,'android.intent.extra.INTENT'),(76,108,'android.intent.extra.INTENT'),(77,109,'android.intent.extra.TITLE'),(78,110,'android.intent.extra.INTENT'),(79,109,'android.intent.extra.INTENT'),(80,111,'android.intent.extra.TITLE'),(81,112,'android.intent.extra.TITLE'),(82,111,'android.intent.extra.INTENT'),(83,112,'android.intent.extra.INTENT'),(84,113,'android.intent.extra.INTENT'),(85,116,'android.intent.extra.TITLE'),(86,116,'android.intent.extra.INTENT'),(87,117,'android.intent.extra.INTENT'),(88,118,'android.intent.extra.TITLE'),(89,118,'android.intent.extra.INTENT'),(90,120,'filename'),(91,119,'android.intent.extra.TITLE'),(92,119,'android.intent.extra.INTENT'),(93,122,'android.intent.extra.INTENT'),(94,124,'android.intent.extra.INTENT'),(95,125,'android.intent.extra.TITLE'),(96,125,'android.intent.extra.INTENT'),(97,126,'android.intent.extra.INTENT'),(98,127,'android.intent.extra.TITLE'),(99,127,'android.intent.extra.INTENT'),(100,128,'android.intent.extra.INTENT'),(101,129,'android.intent.extra.TITLE'),(102,129,'android.intent.extra.INTENT'),(103,130,'android.intent.extra.TITLE'),(104,130,'android.intent.extra.INTENT'),(105,131,'android.intent.extra.INTENT'),(106,132,'android.intent.extra.INTENT'),(107,133,'android.intent.extra.TITLE'),(108,133,'android.intent.extra.INTENT'),(109,134,'android.intent.extra.INTENT'),(110,135,'android.intent.extra.TITLE'),(111,135,'android.intent.extra.INTENT'),(112,136,'android.intent.extra.INTENT'),(113,137,'android.intent.extra.TITLE'),(114,137,'android.intent.extra.INTENT'),(115,138,'android.intent.extra.TITLE'),(116,138,'android.intent.extra.INTENT'),(117,139,'name'),(118,139,'number'),(119,142,'android.intent.extra.INTENT'),(120,143,'android.intent.extra.INTENT'),(121,144,'android.intent.extra.TITLE'),(122,144,'android.intent.extra.INTENT'),(123,145,'android.intent.extra.INTENT'),(124,146,'android.intent.extra.TITLE'),(125,146,'android.intent.extra.INTENT'),(126,147,'android.intent.extra.INTENT'),(127,148,'android.intent.extra.TITLE'),(128,148,'android.intent.extra.INTENT'),(129,149,'android.intent.extra.TITLE'),(130,149,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,1),(5,5,1),(6,4,1),(7,6,3),(8,6,2),(9,7,3),(10,8,2),(11,8,3),(12,9,1),(13,10,3),(14,10,2),(15,11,1),(16,12,3),(17,13,3),(18,13,2),(19,14,1),(20,15,4),(21,16,2),(22,16,3),(23,17,5),(24,18,6),(25,19,7),(26,20,8),(27,21,2),(28,21,3),(29,22,11),(30,23,15),(31,24,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,5,1),(5,4,1),(6,6,2),(7,8,2),(8,9,1),(9,10,2),(10,11,1),(11,13,2),(12,14,1),(13,16,2),(14,21,2);
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
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,3,'(.*)','(.*)'),(2,9,'(.*)','(.*)'),(3,19,'application','vnd.android.package-archive'),(4,44,'(.*)','(.*)'),(5,62,'(.*)','(.*)'),(6,63,'(.*)','(.*)'),(7,75,'(.*)','(.*)'),(8,91,'(.*)','(.*)'),(9,104,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,4,'com.sound.adjustment'),(2,5,'com.sound.adjustment'),(3,11,'com.sound.adjustment'),(4,10,'com.smsbackup.phone'),(5,12,'com.file.phoneset'),(6,15,'com.file.phoneset'),(7,17,'com.quick.task'),(8,18,'com.smsbackup.phone'),(9,21,'com.smsbackup.phone'),(10,26,'com.move.app2sd'),(11,30,'com.android.settings'),(12,33,'com.android.settings'),(13,36,'NULL-CONSTANT'),(14,37,'com.quick.task'),(15,38,'com.smsbackup.phone'),(16,40,'NULL-CONSTANT'),(17,42,'com.quick.task'),(18,46,'com.quick.task'),(19,48,'com.quick.task'),(20,47,'com.android.settings'),(21,50,'com.android.settings'),(22,52,'com.quick.task'),(23,57,'com.quick.task'),(24,64,'(.*)'),(25,66,'(.*)'),(26,68,'com.move.app2sd'),(27,71,'com.move.app2sd'),(28,76,'com.smsbackup.phone'),(29,90,'com.quick.task'),(30,96,'com.smsbackup.phone'),(31,102,'com.smsbackup.phone'),(32,114,'com.smsbackup.phone'),(33,115,'com.backup.prime'),(34,120,'com.backup.prime'),(35,139,'com.backup.prime'),(36,150,'com.backup.prime');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,10,0),(5,11,0),(6,12,0),(7,19,0),(8,22,0),(9,24,0),(10,25,0),(11,26,0),(12,33,0),(13,37,0),(14,38,0),(15,36,0),(16,39,0),(17,44,0),(18,44,0),(19,44,0),(20,44,0),(21,45,0),(22,46,0),(23,33,0),(24,33,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,5,1,0),(8,6,1,0),(9,5,1,0),(10,7,0,0),(11,8,0,0),(12,11,0,0),(13,10,1,0),(14,12,1,0),(15,13,0,0),(16,12,1,0),(17,14,0,0),(18,15,0,0),(19,16,1,0),(20,19,1,0),(21,21,0,0),(22,20,1,0),(23,19,1,0),(24,22,1,0),(25,20,1,0),(26,23,0,0),(27,20,1,0),(28,27,1,0),(29,20,1,0),(30,29,0,0),(31,20,1,0),(32,32,1,0),(33,29,0,0),(34,20,1,0),(35,20,1,0),(36,35,1,0),(37,36,0,0),(38,37,0,0),(39,20,1,0),(40,35,1,0),(41,39,1,0),(42,40,0,0),(43,39,1,0),(44,43,1,0),(45,42,1,0),(46,44,0,0),(47,48,0,0),(48,49,0,0),(49,50,1,0),(50,48,0,0),(51,50,1,0),(52,52,0,0),(53,50,1,0),(54,53,1,0),(55,54,1,0),(56,50,1,0),(57,55,0,0),(58,53,1,0),(59,54,1,0),(60,50,1,0),(61,50,1,0),(62,53,1,0),(63,54,1,0),(64,56,1,0),(65,50,1,0),(66,56,1,0),(67,50,1,0),(68,58,0,0),(69,59,1,0),(70,60,1,0),(71,62,0,0),(72,60,1,0),(73,59,1,0),(74,60,1,0),(75,59,1,0),(76,65,0,0),(77,60,1,0),(78,68,1,0),(79,60,1,0),(80,68,1,0),(81,69,1,0),(82,70,1,0),(83,60,1,0),(84,68,1,0),(85,60,1,0),(86,69,1,0),(87,68,1,0),(88,60,1,0),(89,68,1,0),(90,73,0,0),(91,69,1,0),(92,74,1,0),(93,68,1,0),(94,74,1,0),(95,68,1,0),(96,76,0,0),(97,68,1,0),(98,78,1,0),(99,79,1,0),(100,79,1,0),(101,78,1,0),(102,81,0,0),(103,79,1,0),(104,78,1,0),(105,79,1,0),(106,79,1,0),(107,79,1,0),(108,83,1,0),(109,79,1,0),(110,83,1,0),(111,79,1,0),(112,83,1,0),(113,83,1,0),(114,86,0,0),(115,87,0,0),(116,83,1,0),(117,83,1,0),(118,83,1,0),(119,83,1,0),(120,90,0,0),(121,91,1,0),(122,92,1,0),(123,91,1,0),(124,92,1,0),(125,92,1,0),(126,92,1,0),(127,92,1,0),(128,92,1,0),(129,92,1,0),(130,92,1,0),(131,96,1,0),(132,96,1,0),(133,96,1,0),(134,96,1,0),(135,96,1,0),(136,96,1,0),(137,96,1,0),(138,96,1,0),(139,97,0,0),(140,100,1,0),(141,100,1,0),(142,103,1,0),(143,103,1,0),(144,103,1,0),(145,103,1,0),(146,103,1,0),(147,103,1,0),(148,103,1,0),(149,103,1,0),(150,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.CALL_PHONE'),(20,'android.permission.CLEAR_APP_CACHE'),(18,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_ACCOUNTS'),(19,'android.permission.GET_PACKAGE_SIZE'),(14,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(16,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RESTART_PACKAGES'),(17,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://sms',NULL,NULL,NULL),(17,NULL,NULL,'content://sms',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://mms',NULL,NULL,NULL),(20,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(26,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'content://sms',NULL,NULL,NULL),(30,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'content://sms',NULL,NULL,NULL),(34,NULL,NULL,'content://sms',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://mms',NULL,NULL,NULL),(42,NULL,NULL,'content://sms',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://sms',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'content://sms',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'content://mms',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(63,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(64,NULL,NULL,'content://sms',NULL,NULL,NULL),(65,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(66,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(68,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(69,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(70,NULL,NULL,'content://sms',NULL,NULL,NULL),(71,NULL,NULL,'content://sms',NULL,NULL,NULL),(72,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(73,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'content://sms',NULL,NULL,NULL),(75,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,9,8),(3,18,12),(4,24,16),(5,25,17),(6,26,18),(7,28,19),(8,30,21),(9,31,22),(10,33,24),(11,34,25),(12,41,27),(13,45,29),(14,46,32),(15,47,33),(16,51,34),(17,57,41),(18,61,42),(19,63,44),(20,64,46),(21,67,47),(22,71,49),(23,72,53),(24,75,56),(25,80,58),(26,82,62),(27,85,63),(28,88,64),(29,93,67),(30,94,68),(31,95,69),(32,98,70),(33,99,71),(34,101,74),(35,102,75);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,3),(12,2,4),(13,3,1),(14,2,5),(15,3,2),(16,2,9),(17,3,3),(18,3,4),(19,4,1),(20,3,5),(21,4,2),(22,4,3),(23,3,6),(24,4,4),(25,3,7),(26,4,7),(27,3,8),(28,3,9),(29,4,9),(30,4,12),(31,3,10),(32,4,13),(33,3,11),(34,5,16),(35,5,1),(36,5,2),(37,5,3),(38,5,4),(39,6,1),(40,5,7),(41,6,2),(42,5,9),(43,6,3),(44,5,13),(45,6,4),(46,5,14),(47,6,5),(48,5,15),(49,6,6),(50,6,7),(51,6,8),(52,6,9),(53,6,13),(54,7,17),(55,7,1),(56,7,19),(57,7,2),(58,7,18),(59,7,3),(60,7,4),(61,7,20),(62,7,7),(63,7,9),(64,7,13);
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

-- Dump completed on 2015-10-09  0:41:12
