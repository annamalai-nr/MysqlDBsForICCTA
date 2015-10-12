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
) ENGINE=InnoDB AUTO_INCREMENT=1382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,16,2,NULL),(2,68,43,2,NULL),(3,11,18,2,NULL),(4,14,38,2,NULL),(5,8,1,2,NULL),(6,16,38,2,NULL),(7,13,1,2,NULL),(8,20,38,2,NULL),(9,14,10,2,NULL),(10,23,38,2,NULL),(11,16,10,2,NULL),(12,70,38,2,NULL),(13,20,10,2,NULL),(14,72,38,2,NULL),(15,23,10,2,NULL),(16,74,38,2,NULL),(17,70,10,2,NULL),(18,77,38,2,NULL),(19,72,10,2,NULL),(20,79,38,2,NULL),(21,74,10,2,NULL),(22,83,38,2,NULL),(23,77,10,2,NULL),(24,85,38,2,NULL),(25,79,10,2,NULL),(26,88,38,2,NULL),(27,83,10,2,NULL),(28,54,38,2,NULL),(29,85,10,2,NULL),(30,58,38,2,NULL),(31,88,10,2,NULL),(32,22,38,2,NULL),(33,54,10,2,NULL),(34,25,38,2,NULL),(35,58,10,2,NULL),(36,27,38,2,NULL),(37,8,6,2,NULL),(38,29,38,2,NULL),(39,13,6,2,NULL),(40,31,38,2,NULL),(41,8,7,2,NULL),(42,34,38,2,NULL),(43,13,7,2,NULL),(44,35,38,2,NULL),(45,22,10,2,NULL),(46,39,38,2,NULL),(47,25,10,2,NULL),(48,6,38,2,NULL),(49,27,10,2,NULL),(50,7,38,2,NULL),(51,29,10,2,NULL),(52,92,38,2,NULL),(53,31,10,2,NULL),(54,94,38,2,NULL),(55,34,10,2,NULL),(56,131,38,2,NULL),(57,35,10,2,NULL),(58,132,38,2,NULL),(59,39,10,2,NULL),(60,133,38,2,NULL),(61,6,10,2,NULL),(62,134,38,2,NULL),(63,7,10,2,NULL),(64,135,38,2,NULL),(65,8,12,2,NULL),(66,136,38,2,NULL),(67,13,12,2,NULL),(68,137,38,2,NULL),(69,8,11,2,NULL),(70,138,38,2,NULL),(71,13,11,2,NULL),(72,140,38,2,NULL),(73,92,10,2,NULL),(74,141,38,2,NULL),(75,94,10,2,NULL),(76,98,38,2,NULL),(77,131,10,2,NULL),(78,101,38,2,NULL),(79,132,10,2,NULL),(80,8,38,2,NULL),(81,133,10,2,NULL),(82,13,38,2,NULL),(83,134,10,2,NULL),(84,1,38,2,NULL),(85,135,10,2,NULL),(86,2,38,2,NULL),(87,136,10,2,NULL),(88,24,38,2,NULL),(89,137,10,2,NULL),(90,64,38,2,NULL),(91,138,10,2,NULL),(92,66,38,2,NULL),(93,140,10,2,NULL),(94,82,38,2,NULL),(95,141,10,2,NULL),(96,69,38,2,NULL),(97,98,10,2,NULL),(98,73,38,2,NULL),(99,101,10,2,NULL),(100,121,38,2,NULL),(101,8,25,2,NULL),(102,123,38,2,NULL),(103,13,25,2,NULL),(104,41,38,2,NULL),(105,1,10,2,NULL),(106,43,38,2,NULL),(107,2,10,2,NULL),(108,49,38,2,NULL),(109,8,19,2,NULL),(110,51,38,2,NULL),(111,13,19,2,NULL),(112,53,38,2,NULL),(113,8,22,2,NULL),(114,56,38,2,NULL),(115,13,22,2,NULL),(116,60,38,2,NULL),(117,8,46,2,NULL),(118,61,38,2,NULL),(119,13,46,2,NULL),(120,65,38,2,NULL),(121,8,24,2,NULL),(122,67,38,2,NULL),(123,13,24,2,NULL),(124,81,38,2,NULL),(125,24,10,2,NULL),(126,86,38,2,NULL),(127,64,10,2,NULL),(128,28,38,2,NULL),(129,66,10,2,NULL),(130,36,38,2,NULL),(131,82,10,2,NULL),(132,40,38,2,NULL),(133,69,10,2,NULL),(134,45,38,2,NULL),(135,73,10,2,NULL),(136,78,38,2,NULL),(137,8,33,2,NULL),(138,80,38,2,NULL),(139,13,33,2,NULL),(140,84,38,2,NULL),(141,8,36,2,NULL),(142,87,38,2,NULL),(143,13,36,2,NULL),(144,89,38,2,NULL),(145,8,39,2,NULL),(146,93,38,2,NULL),(147,13,39,2,NULL),(148,95,38,2,NULL),(149,8,26,2,NULL),(150,97,38,2,NULL),(151,13,26,2,NULL),(152,55,38,2,NULL),(153,121,10,2,NULL),(154,59,38,2,NULL),(155,123,10,2,NULL),(156,26,41,2,NULL),(157,41,10,2,NULL),(158,28,1,2,NULL),(159,43,10,2,NULL),(160,36,1,2,NULL),(161,49,10,2,NULL),(162,40,1,2,NULL),(163,51,10,2,NULL),(164,45,1,2,NULL),(165,53,10,2,NULL),(166,78,1,2,NULL),(167,56,10,2,NULL),(168,80,1,2,NULL),(169,60,10,2,NULL),(170,84,1,2,NULL),(171,61,10,2,NULL),(172,87,1,2,NULL),(173,65,10,2,NULL),(174,89,1,2,NULL),(175,67,10,2,NULL),(176,93,1,2,NULL),(177,81,10,2,NULL),(178,95,1,2,NULL),(179,86,10,2,NULL),(180,97,1,2,NULL),(181,8,37,2,NULL),(182,28,6,2,NULL),(183,13,37,2,NULL),(184,36,6,2,NULL),(185,28,10,2,NULL),(186,40,6,2,NULL),(187,36,10,2,NULL),(188,45,6,2,NULL),(189,40,10,2,NULL),(190,78,6,2,NULL),(191,45,10,2,NULL),(192,80,6,2,NULL),(193,78,10,2,NULL),(194,84,6,2,NULL),(195,80,10,2,NULL),(196,87,6,2,NULL),(197,84,10,2,NULL),(198,89,6,2,NULL),(199,87,10,2,NULL),(200,93,6,2,NULL),(201,89,10,2,NULL),(202,95,6,2,NULL),(203,93,10,2,NULL),(204,97,6,2,NULL),(205,95,10,2,NULL),(206,28,7,2,NULL),(207,97,10,2,NULL),(208,36,7,2,NULL),(209,55,10,2,NULL),(210,40,7,2,NULL),(211,59,10,2,NULL),(212,45,7,2,NULL),(213,8,45,2,NULL),(214,78,7,2,NULL),(215,13,45,2,NULL),(216,80,7,2,NULL),(217,1,1,2,NULL),(218,84,7,2,NULL),(219,2,1,2,NULL),(220,87,7,2,NULL),(221,1,6,2,NULL),(222,89,7,2,NULL),(223,2,6,2,NULL),(224,93,7,2,NULL),(225,1,7,2,NULL),(226,95,7,2,NULL),(227,2,7,2,NULL),(228,97,7,2,NULL),(229,1,12,2,NULL),(230,28,12,2,NULL),(231,2,12,2,NULL),(232,36,12,2,NULL),(233,1,11,2,NULL),(234,40,12,2,NULL),(235,2,11,2,NULL),(236,45,12,2,NULL),(237,1,25,2,NULL),(238,78,12,2,NULL),(239,2,25,2,NULL),(240,80,12,2,NULL),(241,1,19,2,NULL),(242,84,12,2,NULL),(243,2,19,2,NULL),(244,87,12,2,NULL),(245,1,22,2,NULL),(246,89,12,2,NULL),(247,2,22,2,NULL),(248,93,12,2,NULL),(249,1,46,2,NULL),(250,95,12,2,NULL),(251,2,46,2,NULL),(252,97,12,2,NULL),(253,1,24,2,NULL),(254,28,11,2,NULL),(255,2,24,2,NULL),(256,36,11,2,NULL),(257,1,33,2,NULL),(258,40,11,2,NULL),(259,2,33,2,NULL),(260,45,11,2,NULL),(261,1,36,2,NULL),(262,78,11,2,NULL),(263,2,36,2,NULL),(264,80,11,2,NULL),(265,1,39,2,NULL),(266,84,11,2,NULL),(267,2,39,2,NULL),(268,87,11,2,NULL),(269,1,26,2,NULL),(270,89,11,2,NULL),(271,2,26,2,NULL),(272,93,11,2,NULL),(273,1,37,2,NULL),(274,95,11,2,NULL),(275,2,37,2,NULL),(276,97,11,2,NULL),(277,1,45,2,NULL),(278,28,25,2,NULL),(279,2,45,2,NULL),(280,36,25,2,NULL),(281,14,19,2,NULL),(282,40,25,2,NULL),(283,16,19,2,NULL),(284,45,25,2,NULL),(285,20,19,2,NULL),(286,78,25,2,NULL),(287,23,19,2,NULL),(288,80,25,2,NULL),(289,70,19,2,NULL),(290,84,25,2,NULL),(291,72,19,2,NULL),(292,87,25,2,NULL),(293,74,19,2,NULL),(294,89,25,2,NULL),(295,77,19,2,NULL),(296,93,25,2,NULL),(297,79,19,2,NULL),(298,95,25,2,NULL),(299,83,19,2,NULL),(300,97,25,2,NULL),(301,85,19,2,NULL),(302,28,19,2,NULL),(303,88,19,2,NULL),(304,36,19,2,NULL),(305,54,19,2,NULL),(306,40,19,2,NULL),(307,58,19,2,NULL),(308,45,19,2,NULL),(309,22,19,2,NULL),(310,78,19,2,NULL),(311,25,19,2,NULL),(312,80,19,2,NULL),(313,27,19,2,NULL),(314,84,19,2,NULL),(315,29,19,2,NULL),(316,87,19,2,NULL),(317,31,19,2,NULL),(318,89,19,2,NULL),(319,34,19,2,NULL),(320,93,19,2,NULL),(321,35,19,2,NULL),(322,95,19,2,NULL),(323,39,19,2,NULL),(324,97,19,2,NULL),(325,6,19,2,NULL),(326,28,22,2,NULL),(327,7,19,2,NULL),(328,36,22,2,NULL),(329,92,19,2,NULL),(330,40,22,2,NULL),(331,94,19,2,NULL),(332,45,22,2,NULL),(333,131,19,2,NULL),(334,78,22,2,NULL),(335,132,19,2,NULL),(336,80,22,2,NULL),(337,133,19,2,NULL),(338,84,22,2,NULL),(339,134,19,2,NULL),(340,87,22,2,NULL),(341,135,19,2,NULL),(342,89,22,2,NULL),(343,136,19,2,NULL),(344,93,22,2,NULL),(345,137,19,2,NULL),(346,95,22,2,NULL),(347,138,19,2,NULL),(348,97,22,2,NULL),(349,140,19,2,NULL),(350,28,46,2,NULL),(351,141,19,2,NULL),(352,36,46,2,NULL),(353,98,19,2,NULL),(354,40,46,2,NULL),(355,101,19,2,NULL),(356,45,46,2,NULL),(357,24,19,2,NULL),(358,78,46,2,NULL),(359,64,19,2,NULL),(360,80,46,2,NULL),(361,66,19,2,NULL),(362,84,46,2,NULL),(363,82,19,2,NULL),(364,87,46,2,NULL),(365,69,19,2,NULL),(366,89,46,2,NULL),(367,73,19,2,NULL),(368,93,46,2,NULL),(369,121,19,2,NULL),(370,95,46,2,NULL),(371,123,19,2,NULL),(372,97,46,2,NULL),(373,41,19,2,NULL),(374,28,24,2,NULL),(375,43,19,2,NULL),(376,36,24,2,NULL),(377,49,19,2,NULL),(378,40,24,2,NULL),(379,51,19,2,NULL),(380,45,24,2,NULL),(381,53,19,2,NULL),(382,78,24,2,NULL),(383,56,19,2,NULL),(384,80,24,2,NULL),(385,60,19,2,NULL),(386,84,24,2,NULL),(387,61,19,2,NULL),(388,87,24,2,NULL),(389,65,19,2,NULL),(390,89,24,2,NULL),(391,67,19,2,NULL),(392,93,24,2,NULL),(393,81,19,2,NULL),(394,95,24,2,NULL),(395,86,19,2,NULL),(396,97,24,2,NULL),(397,55,19,2,NULL),(398,28,33,2,NULL),(399,59,19,2,NULL),(400,36,33,2,NULL),(401,5,18,2,NULL),(402,40,33,2,NULL),(403,14,22,2,NULL),(404,45,33,2,NULL),(405,16,22,2,NULL),(406,78,33,2,NULL),(407,20,22,2,NULL),(408,80,33,2,NULL),(409,23,22,2,NULL),(410,84,33,2,NULL),(411,70,22,2,NULL),(412,87,33,2,NULL),(413,72,22,2,NULL),(414,89,33,2,NULL),(415,74,22,2,NULL),(416,93,33,2,NULL),(417,77,22,2,NULL),(418,95,33,2,NULL),(419,79,22,2,NULL),(420,97,33,2,NULL),(421,83,22,2,NULL),(422,28,36,2,NULL),(423,85,22,2,NULL),(424,36,36,2,NULL),(425,88,22,2,NULL),(426,40,36,2,NULL),(427,54,22,2,NULL),(428,45,36,2,NULL),(429,58,22,2,NULL),(430,78,36,2,NULL),(431,22,22,2,NULL),(432,80,36,2,NULL),(433,25,22,2,NULL),(434,84,36,2,NULL),(435,27,22,2,NULL),(436,87,36,2,NULL),(437,29,22,2,NULL),(438,89,36,2,NULL),(439,31,22,2,NULL),(440,93,36,2,NULL),(441,34,22,2,NULL),(442,95,36,2,NULL),(443,35,22,2,NULL),(444,97,36,2,NULL),(445,39,22,2,NULL),(446,28,39,2,NULL),(447,6,22,2,NULL),(448,36,39,2,NULL),(449,7,22,2,NULL),(450,40,39,2,NULL),(451,92,22,2,NULL),(452,45,39,2,NULL),(453,94,22,2,NULL),(454,78,39,2,NULL),(455,131,22,2,NULL),(456,80,39,2,NULL),(457,132,22,2,NULL),(458,84,39,2,NULL),(459,133,22,2,NULL),(460,87,39,2,NULL),(461,134,22,2,NULL),(462,89,39,2,NULL),(463,135,22,2,NULL),(464,93,39,2,NULL),(465,136,22,2,NULL),(466,95,39,2,NULL),(467,137,22,2,NULL),(468,97,39,2,NULL),(469,138,22,2,NULL),(470,28,26,2,NULL),(471,140,22,2,NULL),(472,36,26,2,NULL),(473,141,22,2,NULL),(474,40,26,2,NULL),(475,98,22,2,NULL),(476,45,26,2,NULL),(477,101,22,2,NULL),(478,78,26,2,NULL),(479,24,22,2,NULL),(480,80,26,2,NULL),(481,64,22,2,NULL),(482,84,26,2,NULL),(483,66,22,2,NULL),(484,87,26,2,NULL),(485,82,22,2,NULL),(486,89,26,2,NULL),(487,69,22,2,NULL),(488,93,26,2,NULL),(489,73,22,2,NULL),(490,95,26,2,NULL),(491,121,22,2,NULL),(492,97,26,2,NULL),(493,123,22,2,NULL),(494,28,37,2,NULL),(495,41,22,2,NULL),(496,36,37,2,NULL),(497,43,22,2,NULL),(498,40,37,2,NULL),(499,49,22,2,NULL),(500,45,37,2,NULL),(501,51,22,2,NULL),(502,78,37,2,NULL),(503,53,22,2,NULL),(504,80,37,2,NULL),(505,56,22,2,NULL),(506,84,37,2,NULL),(507,60,22,2,NULL),(508,87,37,2,NULL),(509,61,22,2,NULL),(510,89,37,2,NULL),(511,65,22,2,NULL),(512,93,37,2,NULL),(513,67,22,2,NULL),(514,95,37,2,NULL),(515,81,22,2,NULL),(516,97,37,2,NULL),(517,86,22,2,NULL),(518,28,45,2,NULL),(519,55,22,2,NULL),(520,36,45,2,NULL),(521,59,22,2,NULL),(522,40,45,2,NULL),(523,14,46,2,NULL),(524,45,45,2,NULL),(525,16,46,2,NULL),(526,78,45,2,NULL),(527,20,46,2,NULL),(528,80,45,2,NULL),(529,23,46,2,NULL),(530,84,45,2,NULL),(531,70,46,2,NULL),(532,87,45,2,NULL),(533,72,46,2,NULL),(534,89,45,2,NULL),(535,74,46,2,NULL),(536,93,45,2,NULL),(537,77,46,2,NULL),(538,95,45,2,NULL),(539,79,46,2,NULL),(540,97,45,2,NULL),(541,83,46,2,NULL),(542,55,1,2,NULL),(543,85,46,2,NULL),(544,59,1,2,NULL),(545,88,46,2,NULL),(546,55,6,2,NULL),(547,54,46,2,NULL),(548,59,6,2,NULL),(549,58,46,2,NULL),(550,55,7,2,NULL),(551,22,46,2,NULL),(552,59,7,2,NULL),(553,25,46,2,NULL),(554,55,12,2,NULL),(555,27,46,2,NULL),(556,59,12,2,NULL),(557,29,46,2,NULL),(558,55,11,2,NULL),(559,31,46,2,NULL),(560,59,11,2,NULL),(561,34,46,2,NULL),(562,55,25,2,NULL),(563,35,46,2,NULL),(564,59,25,2,NULL),(565,39,46,2,NULL),(566,55,46,2,NULL),(567,6,46,2,NULL),(568,59,46,2,NULL),(569,7,46,2,NULL),(570,55,24,2,NULL),(571,92,46,2,NULL),(572,59,24,2,NULL),(573,94,46,2,NULL),(574,55,33,2,NULL),(575,131,46,2,NULL),(576,59,33,2,NULL),(577,132,46,2,NULL),(578,55,36,2,NULL),(579,133,46,2,NULL),(580,59,36,2,NULL),(581,134,46,2,NULL),(582,55,39,2,NULL),(583,135,46,2,NULL),(584,59,39,2,NULL),(585,136,46,2,NULL),(586,55,26,2,NULL),(587,137,46,2,NULL),(588,59,26,2,NULL),(589,138,46,2,NULL),(590,55,37,2,NULL),(591,140,46,2,NULL),(592,59,37,2,NULL),(593,141,46,2,NULL),(594,55,45,2,NULL),(595,98,46,2,NULL),(596,59,45,2,NULL),(597,101,46,2,NULL),(598,71,43,2,NULL),(599,24,46,2,NULL),(600,14,45,2,NULL),(601,64,46,2,NULL),(602,16,45,2,NULL),(603,66,46,2,NULL),(604,20,45,2,NULL),(605,82,46,2,NULL),(606,23,45,2,NULL),(607,69,46,2,NULL),(608,70,45,2,NULL),(609,73,46,2,NULL),(610,72,45,2,NULL),(611,121,46,2,NULL),(612,74,45,2,NULL),(613,123,46,2,NULL),(614,77,45,2,NULL),(615,41,46,2,NULL),(616,79,45,2,NULL),(617,43,46,2,NULL),(618,83,45,2,NULL),(619,49,46,2,NULL),(620,85,45,2,NULL),(621,51,46,2,NULL),(622,88,45,2,NULL),(623,53,46,2,NULL),(624,54,45,2,NULL),(625,56,46,2,NULL),(626,58,45,2,NULL),(627,60,46,2,NULL),(628,22,45,2,NULL),(629,61,46,2,NULL),(630,25,45,2,NULL),(631,65,46,2,NULL),(632,27,45,2,NULL),(633,67,46,2,NULL),(634,29,45,2,NULL),(635,81,46,2,NULL),(636,31,45,2,NULL),(637,86,46,2,NULL),(638,34,45,2,NULL),(639,35,45,2,NULL),(640,39,45,2,NULL),(641,6,45,2,NULL),(642,7,45,2,NULL),(643,92,45,2,NULL),(644,94,45,2,NULL),(645,131,45,2,NULL),(646,132,45,2,NULL),(647,133,45,2,NULL),(648,134,45,2,NULL),(649,135,45,2,NULL),(650,136,45,2,NULL),(651,137,45,2,NULL),(652,138,45,2,NULL),(653,140,45,2,NULL),(654,141,45,2,NULL),(655,98,45,2,NULL),(656,101,45,2,NULL),(657,24,45,2,NULL),(658,64,45,2,NULL),(659,66,45,2,NULL),(660,82,45,2,NULL),(661,69,45,2,NULL),(662,73,45,2,NULL),(663,121,45,2,NULL),(664,123,45,2,NULL),(665,41,45,2,NULL),(666,43,45,2,NULL),(667,49,45,2,NULL),(668,51,45,2,NULL),(669,53,45,2,NULL),(670,56,45,2,NULL),(671,60,45,2,NULL),(672,61,45,2,NULL),(673,65,45,2,NULL),(674,67,45,2,NULL),(675,81,45,2,NULL),(676,86,45,2,NULL),(677,12,9,2,NULL),(678,22,1,2,NULL),(679,25,1,2,NULL),(680,27,1,2,NULL),(681,29,1,2,NULL),(682,31,1,2,NULL),(683,34,1,2,NULL),(684,35,1,2,NULL),(685,39,1,2,NULL),(686,14,7,2,NULL),(687,16,7,2,NULL),(688,20,7,2,NULL),(689,23,7,2,NULL),(690,70,7,2,NULL),(691,72,7,2,NULL),(692,74,7,2,NULL),(693,77,7,2,NULL),(694,79,7,2,NULL),(695,83,7,2,NULL),(696,85,7,2,NULL),(697,88,7,2,NULL),(698,54,7,2,NULL),(699,58,7,2,NULL),(700,22,6,2,NULL),(701,25,6,2,NULL),(702,27,6,2,NULL),(703,29,6,2,NULL),(704,31,6,2,NULL),(705,34,6,2,NULL),(706,35,6,2,NULL),(707,39,6,2,NULL),(708,6,7,2,NULL),(709,7,7,2,NULL),(710,22,12,2,NULL),(711,25,12,2,NULL),(712,27,12,2,NULL),(713,29,12,2,NULL),(714,31,12,2,NULL),(715,34,12,2,NULL),(716,35,12,2,NULL),(717,39,12,2,NULL),(718,22,11,2,NULL),(719,25,11,2,NULL),(720,27,11,2,NULL),(721,29,11,2,NULL),(722,31,11,2,NULL),(723,34,11,2,NULL),(724,35,11,2,NULL),(725,39,11,2,NULL),(726,92,7,2,NULL),(727,94,7,2,NULL),(728,131,7,2,NULL),(729,132,7,2,NULL),(730,133,7,2,NULL),(731,134,7,2,NULL),(732,135,7,2,NULL),(733,136,7,2,NULL),(734,137,7,2,NULL),(735,138,7,2,NULL),(736,140,7,2,NULL),(737,141,7,2,NULL),(738,98,7,2,NULL),(739,101,7,2,NULL),(740,22,25,2,NULL),(741,25,25,2,NULL),(742,27,25,2,NULL),(743,29,25,2,NULL),(744,31,25,2,NULL),(745,34,25,2,NULL),(746,35,25,2,NULL),(747,39,25,2,NULL),(748,22,24,2,NULL),(749,25,24,2,NULL),(750,27,24,2,NULL),(751,29,24,2,NULL),(752,31,24,2,NULL),(753,34,24,2,NULL),(754,35,24,2,NULL),(755,39,24,2,NULL),(756,24,7,2,NULL),(757,64,7,2,NULL),(758,66,7,2,NULL),(759,82,7,2,NULL),(760,69,7,2,NULL),(761,73,7,2,NULL),(762,22,33,2,NULL),(763,25,33,2,NULL),(764,27,33,2,NULL),(765,29,33,2,NULL),(766,31,33,2,NULL),(767,34,33,2,NULL),(768,35,33,2,NULL),(769,39,33,2,NULL),(770,22,36,2,NULL),(771,25,36,2,NULL),(772,27,36,2,NULL),(773,29,36,2,NULL),(774,31,36,2,NULL),(775,34,36,2,NULL),(776,35,36,2,NULL),(777,39,36,2,NULL),(778,22,39,2,NULL),(779,25,39,2,NULL),(780,27,39,2,NULL),(781,29,39,2,NULL),(782,31,39,2,NULL),(783,34,39,2,NULL),(784,35,39,2,NULL),(785,39,39,2,NULL),(786,22,26,2,NULL),(787,25,26,2,NULL),(788,27,26,2,NULL),(789,29,26,2,NULL),(790,31,26,2,NULL),(791,34,26,2,NULL),(792,35,26,2,NULL),(793,39,26,2,NULL),(794,121,7,2,NULL),(795,123,7,2,NULL),(796,41,7,2,NULL),(797,43,7,2,NULL),(798,49,7,2,NULL),(799,51,7,2,NULL),(800,53,7,2,NULL),(801,56,7,2,NULL),(802,60,7,2,NULL),(803,61,7,2,NULL),(804,65,7,2,NULL),(805,67,7,2,NULL),(806,81,7,2,NULL),(807,86,7,2,NULL),(808,22,37,2,NULL),(809,25,37,2,NULL),(810,27,37,2,NULL),(811,29,37,2,NULL),(812,31,37,2,NULL),(813,34,37,2,NULL),(814,35,37,2,NULL),(815,39,37,2,NULL),(816,6,1,2,NULL),(817,7,1,2,NULL),(818,6,6,2,NULL),(819,7,6,2,NULL),(820,6,12,2,NULL),(821,7,12,2,NULL),(822,6,11,2,NULL),(823,7,11,2,NULL),(824,6,25,2,NULL),(825,7,25,2,NULL),(826,6,24,2,NULL),(827,7,24,2,NULL),(828,6,33,2,NULL),(829,7,33,2,NULL),(830,6,36,2,NULL),(831,7,36,2,NULL),(832,6,39,2,NULL),(833,7,39,2,NULL),(834,6,26,2,NULL),(835,7,26,2,NULL),(836,6,37,2,NULL),(837,7,37,2,NULL),(838,15,9,2,NULL),(839,14,12,2,NULL),(840,16,12,2,NULL),(841,20,12,2,NULL),(842,23,12,2,NULL),(843,70,12,2,NULL),(844,72,12,2,NULL),(845,74,12,2,NULL),(846,77,12,2,NULL),(847,79,12,2,NULL),(848,83,12,2,NULL),(849,85,12,2,NULL),(850,88,12,2,NULL),(851,54,12,2,NULL),(852,58,12,2,NULL),(853,92,12,2,NULL),(854,94,12,2,NULL),(855,131,12,2,NULL),(856,132,12,2,NULL),(857,133,12,2,NULL),(858,134,12,2,NULL),(859,135,12,2,NULL),(860,136,12,2,NULL),(861,137,12,2,NULL),(862,138,12,2,NULL),(863,140,12,2,NULL),(864,141,12,2,NULL),(865,98,12,2,NULL),(866,101,12,2,NULL),(867,24,12,2,NULL),(868,64,12,2,NULL),(869,66,12,2,NULL),(870,82,12,2,NULL),(871,69,12,2,NULL),(872,73,12,2,NULL),(873,121,12,2,NULL),(874,123,12,2,NULL),(875,41,12,2,NULL),(876,43,12,2,NULL),(877,49,12,2,NULL),(878,51,12,2,NULL),(879,53,12,2,NULL),(880,56,12,2,NULL),(881,60,12,2,NULL),(882,61,12,2,NULL),(883,65,12,2,NULL),(884,67,12,2,NULL),(885,81,12,2,NULL),(886,86,12,2,NULL),(887,18,5,2,NULL),(888,14,1,2,NULL),(889,16,1,2,NULL),(890,20,1,2,NULL),(891,23,1,2,NULL),(892,70,1,2,NULL),(893,72,1,2,NULL),(894,74,1,2,NULL),(895,77,1,2,NULL),(896,79,1,2,NULL),(897,83,1,2,NULL),(898,85,1,2,NULL),(899,88,1,2,NULL),(900,54,1,2,NULL),(901,58,1,2,NULL),(902,92,1,2,NULL),(903,94,1,2,NULL),(904,131,1,2,NULL),(905,132,1,2,NULL),(906,133,1,2,NULL),(907,134,1,2,NULL),(908,135,1,2,NULL),(909,136,1,2,NULL),(910,137,1,2,NULL),(911,138,1,2,NULL),(912,140,1,2,NULL),(913,141,1,2,NULL),(914,98,1,2,NULL),(915,101,1,2,NULL),(916,24,1,2,NULL),(917,64,1,2,NULL),(918,66,1,2,NULL),(919,82,1,2,NULL),(920,69,1,2,NULL),(921,73,1,2,NULL),(922,121,1,2,NULL),(923,123,1,2,NULL),(924,41,1,2,NULL),(925,43,1,2,NULL),(926,49,1,2,NULL),(927,51,1,2,NULL),(928,53,1,2,NULL),(929,56,1,2,NULL),(930,60,1,2,NULL),(931,61,1,2,NULL),(932,65,1,2,NULL),(933,67,1,2,NULL),(934,81,1,2,NULL),(935,86,1,2,NULL),(936,10,3,2,NULL),(937,10,32,2,NULL),(938,14,6,2,NULL),(939,16,6,2,NULL),(940,14,11,2,NULL),(941,16,11,2,NULL),(942,14,25,2,NULL),(943,16,25,2,NULL),(944,14,24,2,NULL),(945,16,24,2,NULL),(946,14,33,2,NULL),(947,16,33,2,NULL),(948,14,36,2,NULL),(949,16,36,2,NULL),(950,14,39,2,NULL),(951,16,39,2,NULL),(952,14,26,2,NULL),(953,16,26,2,NULL),(954,14,37,2,NULL),(955,16,37,2,NULL),(956,20,6,2,NULL),(957,23,6,2,NULL),(958,70,6,2,NULL),(959,72,6,2,NULL),(960,74,6,2,NULL),(961,77,6,2,NULL),(962,79,6,2,NULL),(963,83,6,2,NULL),(964,85,6,2,NULL),(965,88,6,2,NULL),(966,20,11,2,NULL),(967,23,11,2,NULL),(968,70,11,2,NULL),(969,72,11,2,NULL),(970,74,11,2,NULL),(971,77,11,2,NULL),(972,79,11,2,NULL),(973,83,11,2,NULL),(974,85,11,2,NULL),(975,88,11,2,NULL),(976,20,25,2,NULL),(977,23,25,2,NULL),(978,70,25,2,NULL),(979,72,25,2,NULL),(980,74,25,2,NULL),(981,77,25,2,NULL),(982,79,25,2,NULL),(983,83,25,2,NULL),(984,85,25,2,NULL),(985,88,25,2,NULL),(986,20,24,2,NULL),(987,23,24,2,NULL),(988,70,24,2,NULL),(989,72,24,2,NULL),(990,74,24,2,NULL),(991,77,24,2,NULL),(992,37,27,2,NULL),(993,79,24,2,NULL),(994,46,29,2,NULL),(995,83,24,2,NULL),(996,90,31,2,NULL),(997,85,24,2,NULL),(998,88,24,2,NULL),(999,54,24,2,NULL),(1000,20,33,2,NULL),(1001,58,24,2,NULL),(1002,23,33,2,NULL),(1003,24,6,2,NULL),(1004,70,33,2,NULL),(1005,64,6,2,NULL),(1006,72,33,2,NULL),(1007,66,6,2,NULL),(1008,74,33,2,NULL),(1009,82,6,2,NULL),(1010,77,33,2,NULL),(1011,24,11,2,NULL),(1012,79,33,2,NULL),(1013,64,11,2,NULL),(1014,83,33,2,NULL),(1015,66,11,2,NULL),(1016,85,33,2,NULL),(1017,82,11,2,NULL),(1018,88,33,2,NULL),(1019,92,24,2,NULL),(1020,20,36,2,NULL),(1021,94,24,2,NULL),(1022,23,36,2,NULL),(1023,131,24,2,NULL),(1024,70,36,2,NULL),(1025,132,24,2,NULL),(1026,72,36,2,NULL),(1027,133,24,2,NULL),(1028,74,36,2,NULL),(1029,134,24,2,NULL),(1030,77,36,2,NULL),(1031,135,24,2,NULL),(1032,79,36,2,NULL),(1033,136,24,2,NULL),(1034,83,36,2,NULL),(1035,137,24,2,NULL),(1036,85,36,2,NULL),(1037,138,24,2,NULL),(1038,88,36,2,NULL),(1039,140,24,2,NULL),(1040,20,39,2,NULL),(1041,141,24,2,NULL),(1042,23,39,2,NULL),(1043,98,24,2,NULL),(1044,70,39,2,NULL),(1045,101,24,2,NULL),(1046,72,39,2,NULL),(1047,24,25,2,NULL),(1048,74,39,2,NULL),(1049,64,25,2,NULL),(1050,77,39,2,NULL),(1051,66,25,2,NULL),(1052,79,39,2,NULL),(1053,82,25,2,NULL),(1054,83,39,2,NULL),(1055,69,24,2,NULL),(1056,85,39,2,NULL),(1057,73,24,2,NULL),(1058,88,39,2,NULL),(1059,24,33,2,NULL),(1060,20,26,2,NULL),(1061,64,33,2,NULL),(1062,23,26,2,NULL),(1063,66,33,2,NULL),(1064,70,26,2,NULL),(1065,82,33,2,NULL),(1066,72,26,2,NULL),(1067,24,36,2,NULL),(1068,74,26,2,NULL),(1069,64,36,2,NULL),(1070,77,26,2,NULL),(1071,66,36,2,NULL),(1072,79,26,2,NULL),(1073,82,36,2,NULL),(1074,83,26,2,NULL),(1075,24,39,2,NULL),(1076,85,26,2,NULL),(1077,64,39,2,NULL),(1078,88,26,2,NULL),(1079,66,39,2,NULL),(1080,20,37,2,NULL),(1081,82,39,2,NULL),(1082,23,37,2,NULL),(1083,24,26,2,NULL),(1084,70,37,2,NULL),(1085,64,26,2,NULL),(1086,72,37,2,NULL),(1087,66,26,2,NULL),(1088,74,37,2,NULL),(1089,82,26,2,NULL),(1090,77,37,2,NULL),(1091,121,24,2,NULL),(1092,79,37,2,NULL),(1093,123,24,2,NULL),(1094,83,37,2,NULL),(1095,41,24,2,NULL),(1096,85,37,2,NULL),(1097,43,24,2,NULL),(1098,88,37,2,NULL),(1099,49,24,2,NULL),(1100,54,6,2,NULL),(1101,51,24,2,NULL),(1102,58,6,2,NULL),(1103,53,24,2,NULL),(1104,54,11,2,NULL),(1105,56,24,2,NULL),(1106,58,11,2,NULL),(1107,60,24,2,NULL),(1108,54,25,2,NULL),(1109,61,24,2,NULL),(1110,58,25,2,NULL),(1111,65,24,2,NULL),(1112,54,33,2,NULL),(1113,67,24,2,NULL),(1114,58,33,2,NULL),(1115,81,24,2,NULL),(1116,54,36,2,NULL),(1117,86,24,2,NULL),(1118,58,36,2,NULL),(1119,24,37,2,NULL),(1120,54,39,2,NULL),(1121,64,37,2,NULL),(1122,58,39,2,NULL),(1123,66,37,2,NULL),(1124,54,26,2,NULL),(1125,82,37,2,NULL),(1126,58,26,2,NULL),(1127,69,6,2,NULL),(1128,54,37,2,NULL),(1129,73,6,2,NULL),(1130,58,37,2,NULL),(1131,69,11,2,NULL),(1132,114,5,2,NULL),(1133,73,11,2,NULL),(1134,92,6,2,NULL),(1135,69,25,2,NULL),(1136,94,6,2,NULL),(1137,73,25,2,NULL),(1138,131,6,2,NULL),(1139,69,33,2,NULL),(1140,132,6,2,NULL),(1141,73,33,2,NULL),(1142,133,6,2,NULL),(1143,69,36,2,NULL),(1144,134,6,2,NULL),(1145,73,36,2,NULL),(1146,135,6,2,NULL),(1147,69,39,2,NULL),(1148,136,6,2,NULL),(1149,73,39,2,NULL),(1150,137,6,2,NULL),(1151,69,26,2,NULL),(1152,138,6,2,NULL),(1153,73,26,2,NULL),(1154,140,6,2,NULL),(1155,69,37,2,NULL),(1156,141,6,2,NULL),(1157,73,37,2,NULL),(1158,98,6,2,NULL),(1159,17,29,2,NULL),(1160,101,6,2,NULL),(1161,42,29,2,NULL),(1162,121,6,2,NULL),(1163,52,29,2,NULL),(1164,123,6,2,NULL),(1165,57,29,2,NULL),(1166,41,6,2,NULL),(1167,43,6,2,NULL),(1168,92,33,2,NULL),(1169,49,6,2,NULL),(1170,94,33,2,NULL),(1171,51,6,2,NULL),(1172,131,33,2,NULL),(1173,53,6,2,NULL),(1174,132,33,2,NULL),(1175,56,6,2,NULL),(1176,133,33,2,NULL),(1177,60,6,2,NULL),(1178,134,33,2,NULL),(1179,61,6,2,NULL),(1180,135,33,2,NULL),(1181,65,6,2,NULL),(1182,136,33,2,NULL),(1183,67,6,2,NULL),(1184,137,33,2,NULL),(1185,81,6,2,NULL),(1186,138,33,2,NULL),(1187,86,6,2,NULL),(1188,140,33,2,NULL),(1189,96,35,2,NULL),(1190,141,33,2,NULL),(1191,92,26,2,NULL),(1192,98,33,2,NULL),(1193,94,26,2,NULL),(1194,101,33,2,NULL),(1195,131,26,2,NULL),(1196,121,33,2,NULL),(1197,132,26,2,NULL),(1198,123,33,2,NULL),(1199,133,26,2,NULL),(1200,41,33,2,NULL),(1201,134,26,2,NULL),(1202,43,33,2,NULL),(1203,135,26,2,NULL),(1204,49,33,2,NULL),(1205,136,26,2,NULL),(1206,51,33,2,NULL),(1207,137,26,2,NULL),(1208,53,33,2,NULL),(1209,138,26,2,NULL),(1210,56,33,2,NULL),(1211,140,26,2,NULL),(1212,60,33,2,NULL),(1213,141,26,2,NULL),(1214,61,33,2,NULL),(1215,98,26,2,NULL),(1216,65,33,2,NULL),(1217,101,26,2,NULL),(1218,67,33,2,NULL),(1219,121,26,2,NULL),(1220,81,33,2,NULL),(1221,123,26,2,NULL),(1222,86,33,2,NULL),(1223,41,26,2,NULL),(1224,43,26,2,NULL),(1225,92,36,2,NULL),(1226,49,26,2,NULL),(1227,94,36,2,NULL),(1228,51,26,2,NULL),(1229,131,36,2,NULL),(1230,53,26,2,NULL),(1231,132,36,2,NULL),(1232,56,26,2,NULL),(1233,133,36,2,NULL),(1234,60,26,2,NULL),(1235,134,36,2,NULL),(1236,61,26,2,NULL),(1237,135,36,2,NULL),(1238,65,26,2,NULL),(1239,136,36,2,NULL),(1240,67,26,2,NULL),(1241,137,36,2,NULL),(1242,81,26,2,NULL),(1243,138,36,2,NULL),(1244,86,26,2,NULL),(1245,140,36,2,NULL),(1246,76,3,2,NULL),(1247,141,36,2,NULL),(1248,76,32,2,NULL),(1249,98,36,2,NULL),(1250,121,11,2,NULL),(1251,101,36,2,NULL),(1252,123,11,2,NULL),(1253,121,36,2,NULL),(1254,121,25,2,NULL),(1255,123,36,2,NULL),(1256,123,25,2,NULL),(1257,41,36,2,NULL),(1258,121,39,2,NULL),(1259,43,36,2,NULL),(1260,123,39,2,NULL),(1261,49,36,2,NULL),(1262,121,37,2,NULL),(1263,51,36,2,NULL),(1264,123,37,2,NULL),(1265,53,36,2,NULL),(1266,41,11,2,NULL),(1267,56,36,2,NULL),(1268,43,11,2,NULL),(1269,60,36,2,NULL),(1270,49,11,2,NULL),(1271,61,36,2,NULL),(1272,51,11,2,NULL),(1273,65,36,2,NULL),(1274,53,11,2,NULL),(1275,67,36,2,NULL),(1276,56,11,2,NULL),(1277,81,36,2,NULL),(1278,60,11,2,NULL),(1279,86,36,2,NULL),(1280,61,11,2,NULL),(1281,48,31,2,NULL),(1282,65,11,2,NULL),(1283,92,39,2,NULL),(1284,67,11,2,NULL),(1285,94,39,2,NULL),(1286,41,25,2,NULL),(1287,131,39,2,NULL),(1288,43,25,2,NULL),(1289,132,39,2,NULL),(1290,49,25,2,NULL),(1291,133,39,2,NULL),(1292,51,25,2,NULL),(1293,134,39,2,NULL),(1294,53,25,2,NULL),(1295,135,39,2,NULL),(1296,56,25,2,NULL),(1297,136,39,2,NULL),(1298,60,25,2,NULL),(1299,137,39,2,NULL),(1300,61,25,2,NULL),(1301,138,39,2,NULL),(1302,65,25,2,NULL),(1303,140,39,2,NULL),(1304,67,25,2,NULL),(1305,141,39,2,NULL),(1306,98,39,2,NULL),(1307,41,39,2,NULL),(1308,101,39,2,NULL),(1309,43,39,2,NULL),(1310,49,39,2,NULL),(1311,51,39,2,NULL),(1312,53,39,2,NULL),(1313,56,39,2,NULL),(1314,60,39,2,NULL),(1315,61,39,2,NULL),(1316,65,39,2,NULL),(1317,67,39,2,NULL),(1318,81,39,2,NULL),(1319,41,37,2,NULL),(1320,86,39,2,NULL),(1321,43,37,2,NULL),(1322,49,37,2,NULL),(1323,51,37,2,NULL),(1324,53,37,2,NULL),(1325,56,37,2,NULL),(1326,60,37,2,NULL),(1327,61,37,2,NULL),(1328,65,37,2,NULL),(1329,67,37,2,NULL),(1330,81,11,2,NULL),(1331,86,11,2,NULL),(1332,81,25,2,NULL),(1333,86,25,2,NULL),(1334,81,37,2,NULL),(1335,86,37,2,NULL),(1336,21,35,2,NULL),(1337,92,37,2,NULL),(1338,94,37,2,NULL),(1339,131,37,2,NULL),(1340,132,37,2,NULL),(1341,133,37,2,NULL),(1342,134,37,2,NULL),(1343,135,37,2,NULL),(1344,136,37,2,NULL),(1345,137,37,2,NULL),(1346,138,37,2,NULL),(1347,140,37,2,NULL),(1348,141,37,2,NULL),(1349,98,37,2,NULL),(1350,101,37,2,NULL),(1351,150,23,2,NULL),(1352,92,11,2,NULL),(1353,94,11,2,NULL),(1354,131,11,2,NULL),(1355,132,11,2,NULL),(1356,133,11,2,NULL),(1357,134,11,2,NULL),(1358,135,11,2,NULL),(1359,136,11,2,NULL),(1360,137,11,2,NULL),(1361,138,11,2,NULL),(1362,140,11,2,NULL),(1363,141,11,2,NULL),(1364,98,11,2,NULL),(1365,101,11,2,NULL),(1366,139,20,2,NULL),(1367,92,25,2,NULL),(1368,94,25,2,NULL),(1369,131,25,2,NULL),(1370,132,25,2,NULL),(1371,133,25,2,NULL),(1372,134,25,2,NULL),(1373,135,25,2,NULL),(1374,136,25,2,NULL),(1375,137,25,2,NULL),(1376,138,25,2,NULL),(1377,140,25,2,NULL),(1378,141,25,2,NULL),(1379,98,25,2,NULL),(1380,101,25,2,NULL),(1381,115,23,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:48
