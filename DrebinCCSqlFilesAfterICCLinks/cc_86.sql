-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_86
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
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CALL'),(5,'android.intent.action.CHOOSER'),(11,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.SCREEN_ON'),(6,'android.intent.action.VIEW'),(10,'android.settings.APPLICATION_DETAILS_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.Beauty.Girl',1),(2,'com.Beauty.Breast',1),(3,'com.file.phoneset',2),(4,'com.info.eraser.record',1),(5,'com.quick.task',2),(6,'com.copy.contact',4),(7,'com.backup.copysms',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.Beauty.Girl.SexyImages'),(2,1,'com.Beauty.Girl.ShowImage'),(3,1,'com.admob.android.ads.AdMobActivity'),(4,1,'com.Beauty.Girl.lightdd.CoreService'),(5,1,'com.Beauty.Girl.lightdd.Receiver'),(6,2,'com.Beauty.Breast.SexyImages'),(7,2,'com.Beauty.Breast.ShowImage'),(8,2,'com.admob.android.ads.AdMobActivity'),(9,2,'com.Beauty.Breast.lightdd.CoreService'),(10,2,'com.Beauty.Breast.lightdd.Receiver'),(11,3,'com.file.phoneset.main'),(12,3,'com.google.ads.AdActivity'),(13,3,'com.file.phoneset.protact.DreamerService'),(14,3,'com.file.phoneset.protact.BeerReceiver'),(15,5,'com.quick.task.main'),(16,4,'com.info.eraser.record.main'),(17,5,'com.quick.task.Settings'),(18,4,'com.google.ads.AdActivity'),(19,5,'com.google.ads.AdActivity'),(20,4,'com.info.eraser.record.strategy.service.CelebrateService'),(21,5,'com.quick.task.KillService'),(22,4,'com.info.eraser.record.strategy.core.RebirthReceiver'),(23,5,'com.quick.task.protact.DreamerService'),(24,5,'com.quick.task.Receiver'),(25,5,'com.quick.task.ExampleAppWidgetProvider'),(26,5,'com.quick.task.protact.BeerReceiver'),(27,6,'com.copy.contact.main'),(28,7,'com.backup.copysms.main'),(29,6,'com.google.ads.AdActivity'),(30,7,'com.backup.contacts.main'),(31,6,'com.copy.contact.strategy.service.CelebrateService'),(32,7,'com.backup.sms.main'),(33,6,'com.copy.contact.strategy.core.RebirthReceiver'),(34,7,'com.backup.sms.Conver'),(35,7,'com.backup.sms.MessagesActivity'),(36,7,'com.google.ads.AdActivity'),(37,7,'com.backup.copysms.protact.DreamerService'),(38,7,'com.backup.copysms.protact.BeerReceiver'),(39,4,'com.info.common.TaskHandler'),(40,3,'com.file.phoneset.Utils'),(41,4,'com.info.eraser.record.strategy.service.Tools'),(42,3,'com.file.phoneset.protact.Tools'),(43,5,'com.quick.task.protact.Tools'),(44,6,'com.copy.contact.TaskHandler'),(45,6,'com.vcard.VCardComposer'),(46,6,'com.copy.contact.main$12'),(47,7,'com.backup.contacts.TaskHandler'),(48,7,'com.backup.copysms.protact.Tools'),(49,6,'com.copy.contact.strategy.service.Tools'),(50,7,'com.backup.sms.SmsHandler'),(51,7,'com.backup.contacts.SmsHandler'),(52,6,'com.copy.contact.SmsHandler'),(53,7,'com.vcard.VCardComposer'),(54,7,'com.backup.sms.main$16'),(55,7,'com.backup.sms.TaskHandler'),(56,7,'com.backup.sms.main$12'),(57,7,'com.backup.contacts.main$12');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'b'),(2,8,'t'),(3,9,'filename2'),(4,8,'tr'),(5,9,'PackageName2'),(6,9,'Title2'),(7,8,'cs'),(8,8,'json'),(9,8,'u'),(10,8,'si'),(11,8,'nosk'),(12,8,'sd'),(13,8,'ap'),(14,8,'$'),(15,9,'url2'),(16,8,'ad'),(17,8,'msm'),(18,8,'mi'),(19,8,'au'),(20,8,'sku'),(21,8,'sin'),(22,8,'ru'),(23,8,'s'),(24,8,'p'),(25,8,'int'),(26,9,'Description2'),(27,8,'or'),(28,8,'o'),(29,8,'cbo'),(30,8,'skd'),(31,8,'oi'),(32,8,'su'),(33,8,'rd'),(34,8,'c'),(35,8,'a'),(36,8,'sc'),(37,13,'url1'),(38,12,'action'),(39,13,'De8scription4'),(40,12,'params'),(41,18,'action'),(42,20,'filename4'),(43,18,'params'),(44,20,'Description4'),(45,13,'filename8'),(46,13,'T7itle5'),(47,13,'Pa2ckageName3'),(48,20,'Title4'),(49,19,'action'),(50,20,'url4'),(51,20,'PackageName4'),(52,12,'com.google.ads.AdOpener'),(53,18,'com.google.ads.AdOpener'),(54,19,'params'),(55,23,'Pa2ckageName3'),(56,23,'url1'),(57,19,'com.google.ads.AdOpener'),(58,23,'T7itle5'),(59,23,'filename8'),(60,23,'De8scription4'),(61,21,'screen'),(62,31,'url4'),(63,31,'PackageName4'),(64,29,'params'),(65,29,'action'),(66,37,'T7itle5'),(67,31,'filename4'),(68,31,'Description4'),(69,34,'filename'),(70,37,'url1'),(71,31,'Title4'),(72,29,'com.google.ads.AdOpener'),(73,35,'name'),(74,36,'action'),(75,36,'params'),(76,37,'Pa2ckageName3'),(77,37,'De8scription4'),(78,36,'com.google.ads.AdOpener'),(79,35,'number'),(80,37,'filename8');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,7),(3,3,6),(4,4,10),(5,5,11),(6,6,16),(7,7,11),(8,8,22),(9,9,16),(10,10,11),(11,11,16),(12,12,14),(13,13,20),(14,14,26),(15,15,13),(16,16,18),(17,17,24),(18,18,12),(19,19,24),(20,20,19),(21,22,11),(22,21,16),(23,23,16),(24,24,24),(25,25,23),(26,26,15),(27,27,15),(28,28,15),(29,29,15),(30,30,15),(31,31,24),(32,32,15),(33,33,15),(34,34,33),(35,35,29),(36,36,27),(37,37,27),(38,38,27),(39,39,30),(40,40,37),(41,41,27),(42,42,31),(43,43,32),(44,44,27),(45,45,30),(46,46,27),(47,47,30),(48,48,32),(49,49,35),(50,50,38),(51,51,35),(52,51,34),(53,52,32),(54,53,32),(55,54,32),(56,55,34),(57,56,32),(58,57,32),(59,58,36),(60,59,34),(61,59,35),(62,60,30),(63,61,32),(64,62,32),(65,63,28),(66,64,35),(67,65,32),(68,66,32),(69,67,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.Beauty.Breast.SexyImages: void onCreate(android.os.Bundle)>',14,'s',NULL),(2,7,'<com.Beauty.Breast.ShowImage: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(3,6,'<com.Beauty.Breast.SexyImages: void a(com.Beauty.Breast.SexyImages,int)>',5,'a',NULL),(4,10,'<com.Beauty.Breast.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(5,11,'<com.file.phoneset.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(6,39,'<com.info.common.TaskHandler: int deleteAllSms()>',8,'p',NULL),(7,40,'<com.file.phoneset.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(8,22,'<com.info.eraser.record.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(9,39,'<com.info.common.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(10,11,'<com.file.phoneset.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(11,16,'<com.info.eraser.record.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(12,14,'<com.file.phoneset.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(13,41,'<com.info.eraser.record.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(14,26,'<com.quick.task.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(15,42,'<com.file.phoneset.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(16,18,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(17,24,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(18,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(19,24,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(20,19,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(21,39,'<com.info.common.TaskHandler: int deleteAllCallLogs()>',4,'p',NULL),(22,11,'<com.file.phoneset.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(23,39,'<com.info.common.TaskHandler: int deleteAllSms()>',4,'p',NULL),(24,24,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(25,43,'<com.quick.task.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(26,15,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(27,15,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(28,15,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(29,15,'<com.quick.task.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(30,15,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(31,24,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(32,15,'<com.quick.task.main: void onCreate(android.os.Bundle)>',11,'s',NULL),(33,15,'<com.quick.task.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(34,33,'<com.copy.contact.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(35,29,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(36,44,'<com.copy.contact.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(37,45,'<com.vcard.VCardComposer: boolean init(java.lang.String,java.lang.String[])>',16,'p',NULL),(38,46,'<com.copy.contact.main$12: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(39,47,'<com.backup.contacts.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(40,48,'<com.backup.copysms.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(41,27,'<com.copy.contact.main: void onCreate(android.os.Bundle)>',14,'s',NULL),(42,49,'<com.copy.contact.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(43,50,'<com.backup.sms.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(44,45,'<com.vcard.VCardComposer: java.lang.String createOneEntryInternal(java.lang.String)>',10,'p',NULL),(45,51,'<com.backup.contacts.SmsHandler: int getContactsCount()>',6,'p',NULL),(46,52,'<com.copy.contact.SmsHandler: int getContactsCount()>',6,'p',NULL),(47,53,'<com.vcard.VCardComposer: boolean init(java.lang.String,java.lang.String[])>',16,'p',NULL),(48,50,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',38,'p',0),(49,35,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(50,38,'<com.backup.copysms.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(51,34,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(52,54,'<com.backup.sms.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(53,50,'<com.backup.sms.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(54,55,'<com.backup.sms.TaskHandler: int deleteAllSms()>',8,'p',NULL),(55,34,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(56,55,'<com.backup.sms.TaskHandler: int deleteAllSms()>',4,'p',NULL),(57,56,'<com.backup.sms.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(58,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(59,50,'<com.backup.sms.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(60,53,'<com.vcard.VCardComposer: java.lang.String createOneEntryInternal(java.lang.String)>',10,'p',NULL),(61,50,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',33,'p',NULL),(62,50,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(63,28,'<com.backup.copysms.main: void onCreate(android.os.Bundle)>',8,'s',NULL),(64,35,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(65,50,'<com.backup.sms.SmsHandler: int getSmsCount()>',4,'p',NULL),(66,50,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(67,57,'<com.backup.contacts.main$12: void onClick(android.content.DialogInterface,int)>',32,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,5),(2,6,5),(3,7,5),(4,8,5),(5,9,5),(6,10,5),(7,11,5),(8,12,5),(9,13,6),(10,15,6),(11,19,7),(12,21,7),(13,22,6),(14,23,6),(15,25,7),(16,26,7),(17,27,7),(18,28,6),(19,30,7),(20,34,10),(21,35,1),(22,36,1),(23,38,11),(24,43,7),(25,44,6),(26,45,7),(27,46,5),(28,47,5),(29,48,5),(30,49,5),(31,50,5),(32,51,5),(33,52,5),(34,53,5),(35,55,5),(36,56,5),(37,57,5),(38,58,5),(39,59,5),(40,60,5),(41,61,5),(42,62,5),(43,65,5),(44,66,5),(45,67,5),(46,68,5),(47,69,5),(48,70,5),(49,71,5),(50,72,5),(51,73,12),(52,74,12),(53,76,7),(54,77,6),(55,78,7),(56,80,12),(57,81,12),(58,82,5),(59,83,5),(60,84,5),(61,85,5),(62,86,5),(63,87,5),(64,88,5),(65,89,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,19,3),(2,21,3),(3,22,3),(4,23,3),(5,25,3),(6,26,3),(7,27,3),(8,28,3),(9,30,3),(10,35,1),(11,36,4),(12,43,3),(13,44,3),(14,45,3),(15,76,3),(16,77,3),(17,78,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/Beauty/Breast/lightdd/CoreService'),(2,2,'com/Beauty/Breast/SexyImages'),(3,3,'com/Beauty/Breast/ShowImage'),(4,4,'com/Beauty/Breast/lightdd/CoreService'),(5,14,'com/info/eraser/record/strategy/service/CelebrateService'),(6,16,'com/info/eraser/record/strategy/service/CelebrateService'),(7,17,'com/file/phoneset/protact/DreamerService'),(8,18,'com/quick/task/protact/DreamerService'),(9,20,'com/quick/task/KillService'),(10,24,'com/quick/task/KillService'),(11,29,'com/file/phoneset/protact/DreamerService'),(12,31,'com/quick/task/KillService'),(13,32,'com.android.settings.InstalledAppDetails'),(14,33,'com.android.settings.InstalledAppDetails'),(15,37,'com/quick/task/KillService'),(16,39,'com/quick/task/KillService'),(17,40,'com/quick/task/protact/DreamerService'),(18,41,'com/quick/task/Settings'),(19,42,'com/copy/contact/strategy/service/CelebrateService'),(20,54,'com/copy/contact/strategy/service/CelebrateService'),(21,63,'com/backup/copysms/protact/DreamerService'),(22,64,'com/backup/sms/MessagesActivity'),(23,75,'com/backup/sms/Conver'),(24,79,'com/backup/copysms/protact/DreamerService');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,2),(2,15,4),(3,19,7),(4,21,8),(5,22,9),(6,23,10),(7,25,11),(8,26,12),(9,27,13),(10,28,15),(11,30,17),(12,34,19),(13,38,20),(14,43,21),(15,44,22),(16,45,23),(17,73,36),(18,74,37),(19,76,39),(20,77,40),(21,78,41),(22,80,45),(23,81,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'ImageId'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.INTENT'),(4,7,'android.intent.extra.TITLE'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.INTENT'),(7,9,'android.intent.extra.TITLE'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.INTENT'),(10,11,'android.intent.extra.TITLE'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.TITLE'),(13,12,'android.intent.extra.INTENT'),(14,20,'screen'),(15,24,'screen'),(16,32,'com.android.settings.ApplicationPkgName'),(17,33,'pkg'),(18,39,'screen'),(19,46,'android.intent.extra.INTENT'),(20,47,'android.intent.extra.INTENT'),(21,48,'android.intent.extra.TITLE'),(22,48,'android.intent.extra.INTENT'),(23,49,'android.intent.extra.INTENT'),(24,50,'android.intent.extra.TITLE'),(25,50,'android.intent.extra.INTENT'),(26,51,'android.intent.extra.INTENT'),(27,52,'android.intent.extra.TITLE'),(28,52,'android.intent.extra.INTENT'),(29,53,'android.intent.extra.TITLE'),(30,53,'android.intent.extra.INTENT'),(31,55,'android.intent.extra.INTENT'),(32,56,'android.intent.extra.INTENT'),(33,57,'android.intent.extra.TITLE'),(34,57,'android.intent.extra.INTENT'),(35,58,'android.intent.extra.INTENT'),(36,59,'android.intent.extra.TITLE'),(37,59,'android.intent.extra.INTENT'),(38,60,'android.intent.extra.INTENT'),(39,61,'android.intent.extra.TITLE'),(40,61,'android.intent.extra.INTENT'),(41,62,'android.intent.extra.TITLE'),(42,62,'android.intent.extra.INTENT'),(43,64,'name'),(44,64,'number'),(45,65,'android.intent.extra.INTENT'),(46,66,'android.intent.extra.INTENT'),(47,67,'android.intent.extra.TITLE'),(48,67,'android.intent.extra.INTENT'),(49,68,'android.intent.extra.INTENT'),(50,69,'android.intent.extra.TITLE'),(51,69,'android.intent.extra.INTENT'),(52,70,'android.intent.extra.INTENT'),(53,71,'android.intent.extra.TITLE'),(54,71,'android.intent.extra.INTENT'),(55,72,'android.intent.extra.TITLE'),(56,72,'android.intent.extra.INTENT'),(57,75,'filename'),(58,82,'android.intent.extra.INTENT'),(59,83,'android.intent.extra.INTENT'),(60,84,'android.intent.extra.TITLE'),(61,84,'android.intent.extra.INTENT'),(62,85,'android.intent.extra.INTENT'),(63,86,'android.intent.extra.TITLE'),(64,86,'android.intent.extra.INTENT'),(65,87,'android.intent.extra.INTENT'),(66,88,'android.intent.extra.TITLE'),(67,88,'android.intent.extra.INTENT'),(68,89,'android.intent.extra.TITLE'),(69,89,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,8,3),(10,9,1),(11,10,1),(12,11,3),(13,11,2),(14,12,3),(15,13,4),(16,14,2),(17,14,3),(18,15,1),(19,16,1),(20,17,2),(21,17,3),(22,18,2),(23,18,3),(24,19,8),(25,20,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,6,2),(5,7,1),(6,8,2),(7,9,1),(8,10,1),(9,11,2),(10,14,2),(11,15,1),(12,16,1),(13,17,2),(14,18,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'application','vnd.android.package-archive'),(2,15,'(.*)','(.*)'),(3,25,'(.*)','(.*)'),(4,26,'(.*)','(.*)'),(5,30,'(.*)','(.*)'),(6,45,'(.*)','(.*)'),(7,78,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'com.Beauty.Breast'),(2,2,'com.Beauty.Breast'),(3,3,'com.Beauty.Breast'),(4,4,'com.Beauty.Breast'),(5,14,'com.info.eraser.record'),(6,16,'com.info.eraser.record'),(7,17,'com.file.phoneset'),(8,18,'com.quick.task'),(9,20,'com.quick.task'),(10,24,'com.quick.task'),(11,29,'com.file.phoneset'),(12,31,'com.quick.task'),(13,32,'com.android.settings'),(14,33,'com.android.settings'),(15,35,'(.*)'),(16,36,'(.*)'),(17,37,'com.quick.task'),(18,39,'com.quick.task'),(19,40,'com.quick.task'),(20,41,'com.quick.task'),(21,42,'com.copy.contact'),(22,54,'com.copy.contact'),(23,63,'com.backup.copysms'),(24,64,'com.backup.copysms'),(25,75,'com.backup.copysms'),(26,79,'com.backup.copysms');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,7,0),(6,10,0),(7,11,0),(8,14,0),(9,15,0),(10,16,0),(11,22,0),(12,24,0),(13,25,0),(14,26,0),(15,27,0),(16,28,0),(17,33,0),(18,38,0),(19,24,0),(20,24,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,7,1,0),(14,8,0,0),(15,10,1,0),(16,11,0,0),(17,12,0,0),(18,14,0,0),(19,16,1,0),(20,17,0,0),(21,18,1,0),(22,16,1,0),(23,18,1,0),(24,19,0,0),(25,16,1,0),(26,18,1,0),(27,20,1,0),(28,20,1,0),(29,22,0,0),(30,20,1,0),(31,24,0,0),(32,26,0,0),(33,26,0,0),(34,27,1,0),(35,28,1,0),(36,28,1,0),(37,29,0,0),(38,30,1,0),(39,31,0,0),(40,32,0,0),(41,33,0,0),(42,34,0,0),(43,35,1,0),(44,35,1,0),(45,35,1,0),(46,38,1,0),(47,38,1,0),(48,38,1,0),(49,38,1,0),(50,38,1,0),(51,38,1,0),(52,38,1,0),(53,38,1,0),(54,41,0,0),(55,49,1,0),(56,49,1,0),(57,49,1,0),(58,49,1,0),(59,49,1,0),(60,49,1,0),(61,49,1,0),(62,49,1,0),(63,50,0,0),(64,51,0,0),(65,52,1,0),(66,52,1,0),(67,52,1,0),(68,52,1,0),(69,52,1,0),(70,52,1,0),(71,52,1,0),(72,52,1,0),(73,55,1,0),(74,55,1,0),(75,57,0,0),(76,58,1,0),(77,58,1,0),(78,58,1,0),(79,63,0,0),(80,64,1,0),(81,64,1,0),(82,67,1,0),(83,67,1,0),(84,67,1,0),(85,67,1,0),(86,67,1,0),(87,67,1,0),(88,67,1,0),(89,67,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,79,37,2,NULL),(2,5,28,2,NULL),(3,6,28,2,NULL),(4,7,28,2,NULL),(5,8,28,2,NULL),(6,9,28,2,NULL),(7,10,28,2,NULL),(8,11,28,2,NULL),(9,12,28,2,NULL),(10,21,28,2,NULL),(11,23,28,2,NULL),(12,19,28,2,NULL),(13,22,28,2,NULL),(14,34,28,2,NULL),(15,35,28,2,NULL),(16,36,28,2,NULL),(17,38,28,2,NULL),(18,27,28,2,NULL),(19,28,28,2,NULL),(20,43,28,2,NULL),(21,44,28,2,NULL),(22,73,28,2,NULL),(23,74,28,2,NULL),(24,55,28,2,NULL),(25,56,28,2,NULL),(26,57,28,2,NULL),(27,58,28,2,NULL),(28,59,28,2,NULL),(29,60,28,2,NULL),(30,61,28,2,NULL),(31,62,28,2,NULL),(32,80,28,2,NULL),(33,81,28,2,NULL),(34,76,28,2,NULL),(35,77,28,2,NULL),(36,64,35,2,NULL),(37,73,1,2,NULL),(38,74,1,2,NULL),(39,73,2,2,NULL),(40,74,2,2,NULL),(41,73,5,2,NULL),(42,74,5,2,NULL),(43,73,6,2,NULL),(44,74,6,2,NULL),(45,73,7,2,NULL),(46,74,7,2,NULL),(47,73,10,2,NULL),(48,74,10,2,NULL),(49,73,11,2,NULL),(50,74,11,2,NULL),(51,73,14,2,NULL),(52,74,14,2,NULL),(53,73,16,2,NULL),(54,74,16,2,NULL),(55,73,22,2,NULL),(56,74,22,2,NULL),(57,73,15,2,NULL),(58,74,15,2,NULL),(59,73,24,2,NULL),(60,74,24,2,NULL),(61,73,25,2,NULL),(62,74,25,2,NULL),(63,73,26,2,NULL),(64,74,26,2,NULL),(65,73,27,2,NULL),(66,74,27,2,NULL),(67,73,33,2,NULL),(68,74,33,2,NULL),(69,73,38,2,NULL),(70,74,38,2,NULL),(71,55,1,2,NULL),(72,56,1,2,NULL),(73,57,1,2,NULL),(74,58,1,2,NULL),(75,59,1,2,NULL),(76,60,1,2,NULL),(77,61,1,2,NULL),(78,62,1,2,NULL),(79,80,1,2,NULL),(80,81,1,2,NULL),(81,55,2,2,NULL),(82,56,2,2,NULL),(83,57,2,2,NULL),(84,58,2,2,NULL),(85,59,2,2,NULL),(86,60,2,2,NULL),(87,61,2,2,NULL),(88,62,2,2,NULL),(89,80,2,2,NULL),(90,81,2,2,NULL),(91,55,5,2,NULL),(92,56,5,2,NULL),(93,57,5,2,NULL),(94,58,5,2,NULL),(95,59,5,2,NULL),(96,60,5,2,NULL),(97,61,5,2,NULL),(98,62,5,2,NULL),(99,80,5,2,NULL),(100,81,5,2,NULL),(101,55,6,2,NULL),(102,56,6,2,NULL),(103,57,6,2,NULL),(104,58,6,2,NULL),(105,59,6,2,NULL),(106,60,6,2,NULL),(107,61,6,2,NULL),(108,62,6,2,NULL),(109,80,6,2,NULL),(110,81,6,2,NULL),(111,55,7,2,NULL),(112,56,7,2,NULL),(113,57,7,2,NULL),(114,58,7,2,NULL),(115,59,7,2,NULL),(116,60,7,2,NULL),(117,61,7,2,NULL),(118,62,7,2,NULL),(119,80,7,2,NULL),(120,81,7,2,NULL),(121,55,10,2,NULL),(122,56,10,2,NULL),(123,57,10,2,NULL),(124,58,10,2,NULL),(125,59,10,2,NULL),(126,60,10,2,NULL),(127,61,10,2,NULL),(128,62,10,2,NULL),(129,80,10,2,NULL),(130,81,10,2,NULL),(131,55,11,2,NULL),(132,56,11,2,NULL),(133,57,11,2,NULL),(134,58,11,2,NULL),(135,59,11,2,NULL),(136,60,11,2,NULL),(137,61,11,2,NULL),(138,62,11,2,NULL),(139,80,11,2,NULL),(140,81,11,2,NULL),(141,55,14,2,NULL),(142,56,14,2,NULL),(143,57,14,2,NULL),(144,58,14,2,NULL),(145,59,14,2,NULL),(146,60,14,2,NULL),(147,61,14,2,NULL),(148,62,14,2,NULL),(149,80,14,2,NULL),(150,81,14,2,NULL),(151,55,16,2,NULL),(152,56,16,2,NULL),(153,57,16,2,NULL),(154,58,16,2,NULL),(155,59,16,2,NULL),(156,60,16,2,NULL),(157,61,16,2,NULL),(158,62,16,2,NULL),(159,80,16,2,NULL),(160,81,16,2,NULL),(161,55,22,2,NULL),(162,56,22,2,NULL),(163,57,22,2,NULL),(164,58,22,2,NULL),(165,59,22,2,NULL),(166,60,22,2,NULL),(167,61,22,2,NULL),(168,62,22,2,NULL),(169,80,22,2,NULL),(170,81,22,2,NULL),(171,55,15,2,NULL),(172,56,15,2,NULL),(173,57,15,2,NULL),(174,58,15,2,NULL),(175,59,15,2,NULL),(176,60,15,2,NULL),(177,61,15,2,NULL),(178,62,15,2,NULL),(179,80,15,2,NULL),(180,81,15,2,NULL),(181,55,24,2,NULL),(182,56,24,2,NULL),(183,57,24,2,NULL),(184,58,24,2,NULL),(185,59,24,2,NULL),(186,60,24,2,NULL),(187,61,24,2,NULL),(188,62,24,2,NULL),(189,80,24,2,NULL),(190,81,24,2,NULL),(191,55,25,2,NULL),(192,56,25,2,NULL),(193,57,25,2,NULL),(194,58,25,2,NULL),(195,59,25,2,NULL),(196,60,25,2,NULL),(197,61,25,2,NULL),(198,62,25,2,NULL),(199,80,25,2,NULL),(200,81,25,2,NULL),(201,55,26,2,NULL),(202,56,26,2,NULL),(203,57,26,2,NULL),(204,58,26,2,NULL),(205,59,26,2,NULL),(206,60,26,2,NULL),(207,61,26,2,NULL),(208,62,26,2,NULL),(209,80,26,2,NULL),(210,81,26,2,NULL),(211,55,27,2,NULL),(212,56,27,2,NULL),(213,57,27,2,NULL),(214,58,27,2,NULL),(215,59,27,2,NULL),(216,60,27,2,NULL),(217,61,27,2,NULL),(218,62,27,2,NULL),(219,80,27,2,NULL),(220,81,27,2,NULL),(221,55,33,2,NULL),(222,56,33,2,NULL),(223,57,33,2,NULL),(224,58,33,2,NULL),(225,59,33,2,NULL),(226,60,33,2,NULL),(227,61,33,2,NULL),(228,62,33,2,NULL),(229,80,33,2,NULL),(230,81,33,2,NULL),(231,55,38,2,NULL),(232,56,38,2,NULL),(233,57,38,2,NULL),(234,58,38,2,NULL),(235,59,38,2,NULL),(236,60,38,2,NULL),(237,61,38,2,NULL),(238,62,38,2,NULL),(239,80,38,2,NULL),(240,81,38,2,NULL),(241,76,1,2,NULL),(242,77,1,2,NULL),(243,76,2,2,NULL),(244,77,2,2,NULL),(245,76,5,2,NULL),(246,77,5,2,NULL),(247,76,6,2,NULL),(248,77,6,2,NULL),(249,76,7,2,NULL),(250,77,7,2,NULL),(251,76,10,2,NULL),(252,77,10,2,NULL),(253,76,11,2,NULL),(254,77,11,2,NULL),(255,76,14,2,NULL),(256,77,14,2,NULL),(257,76,16,2,NULL),(258,77,16,2,NULL),(259,76,22,2,NULL),(260,77,22,2,NULL),(261,76,15,2,NULL),(262,77,15,2,NULL),(263,76,24,2,NULL),(264,77,24,2,NULL),(265,76,25,2,NULL),(266,77,25,2,NULL),(267,76,26,2,NULL),(268,77,26,2,NULL),(269,76,27,2,NULL),(270,77,27,2,NULL),(271,76,33,2,NULL),(272,77,33,2,NULL),(273,76,38,2,NULL),(274,77,38,2,NULL),(275,63,37,2,NULL),(276,5,38,2,NULL),(277,6,38,2,NULL),(278,7,38,2,NULL),(279,8,38,2,NULL),(280,9,38,2,NULL),(281,10,38,2,NULL),(282,11,38,2,NULL),(283,12,38,2,NULL),(284,21,38,2,NULL),(285,23,38,2,NULL),(286,19,38,2,NULL),(287,22,38,2,NULL),(288,34,38,2,NULL),(289,35,38,2,NULL),(290,36,38,2,NULL),(291,38,38,2,NULL),(292,27,38,2,NULL),(293,28,38,2,NULL),(294,43,38,2,NULL),(295,44,38,2,NULL),(296,5,1,2,NULL),(297,6,1,2,NULL),(298,7,1,2,NULL),(299,8,1,2,NULL),(300,9,1,2,NULL),(301,10,1,2,NULL),(302,11,1,2,NULL),(303,12,1,2,NULL),(304,16,20,2,NULL),(305,21,1,2,NULL),(306,54,31,2,NULL),(307,5,16,2,NULL),(308,23,1,2,NULL),(309,5,27,2,NULL),(310,6,16,2,NULL),(311,19,1,2,NULL),(312,6,27,2,NULL),(313,22,1,2,NULL),(314,7,16,2,NULL),(315,7,27,2,NULL),(316,34,1,2,NULL),(317,8,16,2,NULL),(318,8,27,2,NULL),(319,35,1,2,NULL),(320,9,16,2,NULL),(321,9,27,2,NULL),(322,36,1,2,NULL),(323,10,16,2,NULL),(324,10,27,2,NULL),(325,38,1,2,NULL),(326,11,16,2,NULL),(327,11,27,2,NULL),(328,27,1,2,NULL),(329,12,16,2,NULL),(330,28,1,2,NULL),(331,12,27,2,NULL),(332,21,16,2,NULL),(333,43,1,2,NULL),(334,21,27,2,NULL),(335,44,1,2,NULL),(336,23,16,2,NULL),(337,23,27,2,NULL),(338,19,16,2,NULL),(339,5,2,2,NULL),(340,19,27,2,NULL),(341,22,16,2,NULL),(342,6,2,2,NULL),(343,22,27,2,NULL),(344,34,16,2,NULL),(345,7,2,2,NULL),(346,35,16,2,NULL),(347,34,27,2,NULL),(348,8,2,2,NULL),(349,36,16,2,NULL),(350,35,27,2,NULL),(351,9,2,2,NULL),(352,38,16,2,NULL),(353,36,27,2,NULL),(354,10,2,2,NULL),(355,27,16,2,NULL),(356,38,27,2,NULL),(357,28,16,2,NULL),(358,11,2,2,NULL),(359,27,27,2,NULL),(360,43,16,2,NULL),(361,12,2,2,NULL),(362,44,16,2,NULL),(363,28,27,2,NULL),(364,21,2,2,NULL),(365,19,2,2,NULL),(366,43,27,2,NULL),(367,23,2,2,NULL),(368,22,2,2,NULL),(369,44,27,2,NULL),(370,34,2,2,NULL),(371,19,5,2,NULL),(372,22,5,2,NULL),(373,43,2,2,NULL),(374,35,2,2,NULL),(375,19,6,2,NULL),(376,36,2,2,NULL),(377,44,2,2,NULL),(378,22,6,2,NULL),(379,38,2,2,NULL),(380,43,5,2,NULL),(381,19,7,2,NULL),(382,27,2,2,NULL),(383,44,5,2,NULL),(384,28,2,2,NULL),(385,22,7,2,NULL),(386,43,6,2,NULL),(387,5,5,2,NULL),(388,19,10,2,NULL),(389,44,6,2,NULL),(390,6,5,2,NULL),(391,22,10,2,NULL),(392,43,7,2,NULL),(393,7,5,2,NULL),(394,19,11,2,NULL),(395,8,5,2,NULL),(396,44,7,2,NULL),(397,22,11,2,NULL),(398,9,5,2,NULL),(399,43,10,2,NULL),(400,19,14,2,NULL),(401,10,5,2,NULL),(402,44,10,2,NULL),(403,22,14,2,NULL),(404,11,5,2,NULL),(405,43,11,2,NULL),(406,19,22,2,NULL),(407,12,5,2,NULL),(408,44,11,2,NULL),(409,22,22,2,NULL),(410,21,5,2,NULL),(411,43,14,2,NULL),(412,19,15,2,NULL),(413,23,5,2,NULL),(414,44,14,2,NULL),(415,22,15,2,NULL),(416,34,5,2,NULL),(417,43,22,2,NULL),(418,19,24,2,NULL),(419,35,5,2,NULL),(420,44,22,2,NULL),(421,22,24,2,NULL),(422,36,5,2,NULL),(423,43,15,2,NULL),(424,19,25,2,NULL),(425,38,5,2,NULL),(426,44,15,2,NULL),(427,22,25,2,NULL),(428,27,5,2,NULL),(429,43,24,2,NULL),(430,19,26,2,NULL),(431,28,5,2,NULL),(432,44,24,2,NULL),(433,22,26,2,NULL),(434,43,25,2,NULL),(435,19,33,2,NULL),(436,44,25,2,NULL),(437,22,33,2,NULL),(438,43,26,2,NULL),(439,14,20,2,NULL),(440,44,26,2,NULL),(441,5,22,2,NULL),(442,43,33,2,NULL),(443,6,22,2,NULL),(444,44,33,2,NULL),(445,7,22,2,NULL),(446,42,31,2,NULL),(447,8,22,2,NULL),(448,5,33,2,NULL),(449,9,22,2,NULL),(450,6,33,2,NULL),(451,10,22,2,NULL),(452,7,33,2,NULL),(453,11,22,2,NULL),(454,8,33,2,NULL),(455,12,22,2,NULL),(456,9,33,2,NULL),(457,21,22,2,NULL),(458,10,33,2,NULL),(459,23,22,2,NULL),(460,11,33,2,NULL),(461,34,22,2,NULL),(462,12,33,2,NULL),(463,35,22,2,NULL),(464,21,33,2,NULL),(465,36,22,2,NULL),(466,23,33,2,NULL),(467,38,22,2,NULL),(468,34,33,2,NULL),(469,27,22,2,NULL),(470,35,33,2,NULL),(471,28,22,2,NULL),(472,36,33,2,NULL),(473,38,33,2,NULL),(474,27,33,2,NULL),(475,28,33,2,NULL),(476,37,21,2,NULL),(477,40,23,2,NULL),(478,41,17,2,NULL),(479,34,6,2,NULL),(480,35,6,2,NULL),(481,36,6,2,NULL),(482,38,6,2,NULL),(483,34,7,2,NULL),(484,35,7,2,NULL),(485,36,7,2,NULL),(486,38,7,2,NULL),(487,34,10,2,NULL),(488,35,10,2,NULL),(489,36,10,2,NULL),(490,38,10,2,NULL),(491,34,11,2,NULL),(492,35,11,2,NULL),(493,36,11,2,NULL),(494,38,11,2,NULL),(495,5,15,2,NULL),(496,6,15,2,NULL),(497,7,15,2,NULL),(498,8,15,2,NULL),(499,9,15,2,NULL),(500,10,15,2,NULL),(501,11,15,2,NULL),(502,12,15,2,NULL),(503,21,15,2,NULL),(504,23,15,2,NULL),(505,34,14,2,NULL),(506,35,14,2,NULL),(507,36,14,2,NULL),(508,38,14,2,NULL),(509,27,15,2,NULL),(510,28,15,2,NULL),(511,34,24,2,NULL),(512,35,24,2,NULL),(513,36,24,2,NULL),(514,38,24,2,NULL),(515,34,25,2,NULL),(516,35,25,2,NULL),(517,36,25,2,NULL),(518,38,25,2,NULL),(519,34,26,2,NULL),(520,35,26,2,NULL),(521,36,26,2,NULL),(522,38,26,2,NULL),(523,27,6,2,NULL),(524,28,6,2,NULL),(525,27,7,2,NULL),(526,28,7,2,NULL),(527,27,10,2,NULL),(528,28,10,2,NULL),(529,27,11,2,NULL),(530,28,11,2,NULL),(531,27,14,2,NULL),(532,28,14,2,NULL),(533,27,24,2,NULL),(534,28,24,2,NULL),(535,27,25,2,NULL),(536,28,25,2,NULL),(537,27,26,2,NULL),(538,28,26,2,NULL),(539,20,21,2,NULL),(540,24,21,2,NULL),(541,31,21,2,NULL),(542,39,21,2,NULL),(543,5,24,2,NULL),(544,6,24,2,NULL),(545,7,24,2,NULL),(546,8,24,2,NULL),(547,9,24,2,NULL),(548,10,24,2,NULL),(549,11,24,2,NULL),(550,12,24,2,NULL),(551,21,24,2,NULL),(552,23,24,2,NULL),(553,5,25,2,NULL),(554,6,25,2,NULL),(555,7,25,2,NULL),(556,8,25,2,NULL),(557,9,25,2,NULL),(558,10,25,2,NULL),(559,11,25,2,NULL),(560,12,25,2,NULL),(561,21,25,2,NULL),(562,23,25,2,NULL),(563,18,23,2,NULL),(564,5,26,2,NULL),(565,6,26,2,NULL),(566,7,26,2,NULL),(567,8,26,2,NULL),(568,9,26,2,NULL),(569,10,26,2,NULL),(570,11,26,2,NULL),(571,12,26,2,NULL),(572,21,26,2,NULL),(573,23,26,2,NULL),(574,29,13,2,NULL),(575,5,6,2,NULL),(576,6,6,2,NULL),(577,7,6,2,NULL),(578,1,9,2,NULL),(579,8,6,2,NULL),(580,3,7,2,NULL),(581,9,6,2,NULL),(582,10,6,2,NULL),(583,11,6,2,NULL),(584,12,6,2,NULL),(585,5,7,2,NULL),(586,21,6,2,NULL),(587,6,7,2,NULL),(588,23,6,2,NULL),(589,7,7,2,NULL),(590,8,7,2,NULL),(591,2,6,2,NULL),(592,9,7,2,NULL),(593,10,7,2,NULL),(594,11,7,2,NULL),(595,12,7,2,NULL),(596,21,7,2,NULL),(597,5,10,2,NULL),(598,23,7,2,NULL),(599,6,10,2,NULL),(600,4,9,2,NULL),(601,7,10,2,NULL),(602,8,10,2,NULL),(603,9,10,2,NULL),(604,10,10,2,NULL),(605,11,10,2,NULL),(606,12,10,2,NULL),(607,21,11,2,NULL),(608,21,10,2,NULL),(609,23,11,2,NULL),(610,23,10,2,NULL),(611,5,14,2,NULL),(612,6,14,2,NULL),(613,7,14,2,NULL),(614,8,14,2,NULL),(615,9,14,2,NULL),(616,10,14,2,NULL),(617,11,14,2,NULL),(618,12,14,2,NULL),(619,21,14,2,NULL),(620,23,14,2,NULL),(621,17,13,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.CALL_PHONE'),(9,'android.permission.GET_ACCOUNTS'),(14,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(16,'android.permission.KILL_BACKGROUND_PROCESSES'),(8,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SET_WALLPAPER'),(18,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS'),(13,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'content://sms',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'content://sms',NULL,NULL,NULL),(35,NULL,NULL,'content://sms',NULL,NULL,NULL),(36,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(37,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'content://mms',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(44,NULL,NULL,'content://sms',NULL,NULL,NULL),(45,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(46,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'content://sms',NULL,NULL,NULL),(48,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,1),(2,9,3),(3,13,5),(4,15,6),(5,21,14),(6,23,16),(7,25,18),(8,36,24),(9,37,25),(10,39,26),(11,40,27),(12,42,28),(13,43,29),(14,44,30),(15,45,31),(16,46,32),(17,47,33),(18,53,34),(19,54,35),(20,56,38),(21,59,42),(22,60,43),(23,61,44),(24,65,47),(25,66,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,3),(9,3,4),(10,3,5),(11,3,6),(12,4,1),(13,4,3),(14,4,4),(15,4,5),(16,4,6),(17,5,16),(18,4,7),(19,5,1),(20,4,8),(21,5,3),(22,4,9),(23,5,4),(24,4,10),(25,5,6),(26,4,11),(27,5,14),(28,4,12),(29,5,15),(30,4,13),(31,6,17),(32,6,1),(33,7,17),(34,6,18),(35,7,1),(36,6,3),(37,7,18),(38,6,4),(39,7,3),(40,6,5),(41,7,4),(42,6,6),(43,7,5),(44,6,8),(45,7,6),(46,6,9),(47,7,7),(48,6,10),(49,7,8),(50,6,11),(51,7,10),(52,7,11);
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
