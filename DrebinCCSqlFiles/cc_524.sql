-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_524
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
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.NEW_OUTGOING_CALL'),(8,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.settings.LOCATION_SOURCE_SETTINGS'),(4,'com.google.android.c2dm.intent.RECEIVE'),(10,'com.google.android.c2dm.intent.REGISTER'),(3,'com.google.android.c2dm.intent.REGISTRATION'),(12,'lab.sodino.sms.delivery'),(11,'lab.sodino.sms.send');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'spy.lifemonitor.com',1),(2,'com.wWebLoicbyalfred',1327649543),(3,'spy.lifemonitor.com',3),(4,'com.android.nmh.reader',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.wWebLoicbyalfred');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'spy.lifemonitor.com.LifemonitorActivity'),(2,1,'spy.lifemonitor.com.tracking'),(3,1,'spy.lifemonitor.com.mService'),(4,1,'spy.lifemonitor.com.OnBootReceiver'),(5,1,'spy.lifemonitor.com.RepeatingAlarmService'),(6,2,'com.wWebLoicbyalfred.MainNavigationActivity'),(7,2,'com.wWebLoicbyalfred.MessageViewer'),(8,2,'com.wWebLoicbyalfred.Server.C2DMClientReceiver'),(9,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(10,3,'spy.lifemonitor.com.LifemonitorActivity'),(11,3,'spy.lifemonitor.com.tracking'),(12,3,'spy.lifemonitor.com.settings'),(13,3,'spy.lifemonitor.com.register'),(14,3,'spy.lifemonitor.com.mService'),(15,3,'spy.lifemonitor.com.StartApp'),(16,3,'spy.lifemonitor.com.OnBootReceiver'),(17,1,'spy.lifemonitor.com.tracking$4'),(18,3,'spy.lifemonitor.com.RepeatingAlarmService'),(19,3,'spy.lifemonitor.com.SmsReceiver'),(20,2,'com.wWebLoicbyalfred.Utils.BrowserDownloadListener'),(21,2,'com.google.android.c2dm.C2DMessaging'),(22,3,'spy.lifemonitor.com.register$2'),(23,3,'spy.lifemonitor.com.LifemonitorActivity$6'),(24,3,'spy.lifemonitor.com.tracking$6'),(25,3,'spy.lifemonitor.com.tracking$4'),(26,3,'spy.lifemonitor.com.LifemonitorActivity$5'),(27,4,'com.android.nmh.reader.activities.InitActivity'),(28,4,'com.android.nmh.reader.activities.OnlineBooksActivity'),(29,4,'com.android.nmh.reader.activities.OnlineBookActivity'),(30,4,'com.android.nmh.reader.activities.OnlineChaptersActivity'),(31,4,'com.android.nmh.reader.activities.SearchResultActivity'),(32,4,'com.android.nmh.reader.activities.OnlineReaderActivity'),(33,4,'com.android.nmh.reader.activities.LocalReaderActivity'),(34,4,'com.android.nmh.reader.activities.ReaderSetActivity'),(35,4,'com.android.nmh.reader.activities.LocalBooksActivity'),(36,4,'com.android.nmh.reader.activities.LocalSearchFilesActivity'),(37,4,'com.android.nmh.reader.activities.SubjectActivity'),(38,4,'com.android.nmh.reader.activities.SubjectsActivity'),(39,4,'com.android.nmh.reader.receiver.SmsReceived'),(40,4,'com.aiwan.AdActivity'),(41,4,'com.adpooh.adscast.PopAdsActivity'),(42,4,'com.adpooh.adscast.AdsWebViewActivity'),(43,4,'com.android.nmh.reader.activities.lays.OnlineReaderMenuLay'),(44,4,'com.android.nmh.reader.activities.lays.LocalReaderMenuLay'),(45,4,'com.android.nmh.reader.activities.lays.LocalBooksLay'),(46,4,'com.android.nmh.reader.activities.lays.OnlineBooksTitleLay'),(47,4,'com.android.nmh.reader.activities.lays.OnlineBookLay'),(48,4,'com.android.nmh.reader.abstracts.AbsActivity$4'),(49,4,'com.android.nmh.reader.activities.lays.OnlineBookLay$7'),(50,4,'com.aiwan.c'),(51,4,'com.android.nmh.reader.activities.lays.OnlineBooksMenuLay$2'),(52,4,'com.aiwan.b');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'gps'),(2,9,'unregistered'),(3,9,'registration_id'),(4,7,'title'),(5,9,'title'),(6,9,'message'),(7,9,'url'),(8,9,'error'),(9,7,'url'),(10,11,'FirstRun'),(11,18,'pdus'),(12,12,'edtReboot'),(13,12,'edtPhone'),(14,12,'edtPhone2'),(15,12,'edtPhone3'),(16,12,'edtBodyMsg'),(17,12,'edtDeleteContacts'),(18,11,'gps'),(19,12,'edtBackupSMS'),(20,12,'cbFormatSD'),(21,12,'cbSendSMS'),(22,12,'edtEmailLogin'),(23,12,'edtEmailPassword'),(24,12,'cbReboot'),(25,12,'cbFormatContacts'),(26,15,'android.intent.extra.PHONE_NUMBER'),(27,12,'edtFormatSD'),(28,23,'word'),(29,22,'bookId'),(30,25,'bookFilePath'),(31,29,'subjectDate'),(32,31,'ConfirmNumber'),(33,24,'chapterId'),(34,31,'pdus'),(35,23,'type'),(36,24,'bookCurrentOffest'),(37,21,'bookId'),(38,24,'bookCover'),(39,29,'subjectName'),(40,29,'subjectCover'),(41,29,'subjectIntro'),(42,24,'bookAuthor'),(43,24,'bookId'),(44,29,'subjectId'),(45,25,'bookTitle'),(46,25,'bookId'),(47,32,'adWebsit'),(48,34,'kind'),(49,34,'web_url'),(50,33,'vo'),(51,32,'showWebsit'),(52,33,'btnVisible'),(53,32,'downloadUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,5,'r',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,10,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,18,'r',0,NULL,NULL),(18,19,'r',1,NULL,NULL),(19,27,'a',1,NULL,NULL),(20,28,'a',0,NULL,NULL),(21,29,'a',0,NULL,NULL),(22,30,'a',0,NULL,NULL),(23,31,'a',0,NULL,NULL),(24,32,'a',0,NULL,NULL),(25,33,'a',0,NULL,NULL),(26,34,'a',0,NULL,NULL),(27,35,'a',0,NULL,NULL),(28,36,'a',0,NULL,NULL),(29,37,'a',0,NULL,NULL),(30,38,'a',0,NULL,NULL),(31,39,'r',1,NULL,NULL),(32,40,'a',0,NULL,NULL),(33,41,'a',0,NULL,NULL),(34,42,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,5),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,2),(12,12,2),(13,13,5),(14,14,2),(15,15,2),(16,16,4),(17,17,4),(18,18,2),(19,19,6),(20,20,6),(21,21,6),(22,21,9),(23,22,6),(24,23,6),(25,24,18),(26,25,15),(27,26,10),(28,27,11),(29,28,13),(30,29,11),(31,30,18),(32,31,10),(33,32,11),(34,33,18),(35,34,10),(36,35,17),(37,36,11),(38,37,11),(39,38,11),(40,39,10),(41,40,11),(42,41,18),(43,42,11),(44,43,16),(45,44,30),(46,45,24),(47,45,25),(48,46,25),(49,46,24),(50,47,27),(51,48,23),(52,48,20),(53,48,21),(54,49,29),(55,50,29),(56,51,21),(57,52,27),(58,53,22),(59,53,27),(60,54,24),(61,54,25),(62,54,33),(63,55,33),(64,56,21),(65,57,33),(66,57,30),(67,58,33),(68,58,32),(69,59,33),(70,59,27),(71,60,33),(72,60,27),(73,60,22),(74,61,27),(75,62,33),(76,62,24),(77,62,25),(78,63,22),(79,63,33),(80,63,27),(81,64,33),(82,65,20),(83,65,21),(84,65,33),(85,65,23),(86,66,29),(87,66,33),(88,67,29),(89,67,33),(90,68,32),(91,68,33),(92,69,27),(93,70,33),(94,71,20),(95,71,21),(96,71,33),(97,71,23),(98,72,30),(99,72,33),(100,73,21),(101,74,33),(102,75,32),(103,75,33),(104,76,29),(105,76,33),(106,77,33),(107,77,32),(108,78,33),(109,78,29),(110,79,27),(111,79,33),(112,80,33),(113,80,25),(114,80,24),(115,81,33),(116,81,25),(117,81,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<spy.lifemonitor.com.LifemonitorActivity: void onClick(android.view.View)>',46,'a',NULL),(2,17,'<spy.lifemonitor.com.tracking$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(3,2,'<spy.lifemonitor.com.tracking: void onCreate(android.os.Bundle)>',8,'s',NULL),(4,5,'<spy.lifemonitor.com.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',23,'a',NULL),(5,2,'<spy.lifemonitor.com.tracking: void changeInterval()>',6,'s',NULL),(6,2,'<spy.lifemonitor.com.tracking: void onCreate(android.os.Bundle)>',8,'s',NULL),(7,2,'<spy.lifemonitor.com.tracking: void onClick(android.view.View)>',21,'a',NULL),(8,2,'<spy.lifemonitor.com.tracking: void onClick(android.view.View)>',21,'a',NULL),(9,1,'<spy.lifemonitor.com.LifemonitorActivity: void onClick(android.view.View)>',46,'a',NULL),(10,17,'<spy.lifemonitor.com.tracking$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(11,2,'<spy.lifemonitor.com.tracking: void onResume()>',19,'a',NULL),(12,2,'<spy.lifemonitor.com.tracking: void onResume()>',19,'a',NULL),(13,5,'<spy.lifemonitor.com.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',23,'a',NULL),(14,2,'<spy.lifemonitor.com.tracking: void changeInterval()>',6,'s',NULL),(15,2,'<spy.lifemonitor.com.tracking: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(16,4,'<spy.lifemonitor.com.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(17,4,'<spy.lifemonitor.com.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(18,2,'<spy.lifemonitor.com.tracking: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(19,20,'<com.wWebLoicbyalfred.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(20,6,'<com.wWebLoicbyalfred.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(21,21,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(22,20,'<com.wWebLoicbyalfred.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(23,6,'<com.wWebLoicbyalfred.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(24,19,'<spy.lifemonitor.com.SmsReceiver: java.lang.String delete_msg()>',47,'p',NULL),(25,15,'<spy.lifemonitor.com.StartApp: void onReceive(android.content.Context,android.content.Intent)>',17,'a',NULL),(26,10,'<spy.lifemonitor.com.LifemonitorActivity: void auth(java.lang.String,java.lang.String)>',103,'a',NULL),(27,11,'<spy.lifemonitor.com.tracking: void onClick(android.view.View)>',20,'a',NULL),(28,22,'<spy.lifemonitor.com.register$2: void onClick(android.view.View)>',95,'a',NULL),(29,11,'<spy.lifemonitor.com.tracking: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(30,19,'<spy.lifemonitor.com.SmsReceiver: void deleteContacts()>',19,'p',NULL),(31,10,'<spy.lifemonitor.com.LifemonitorActivity: void onClick(android.view.View)>',8,'a',NULL),(32,11,'<spy.lifemonitor.com.tracking: void onCreate(android.os.Bundle)>',7,'s',NULL),(33,19,'<spy.lifemonitor.com.SmsReceiver: java.lang.String delete_msg()>',14,'p',NULL),(34,23,'<spy.lifemonitor.com.LifemonitorActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(35,18,'<spy.lifemonitor.com.RepeatingAlarmService: void onReceive(android.content.Context,android.content.Intent)>',26,'a',NULL),(36,24,'<spy.lifemonitor.com.tracking$6: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(37,25,'<spy.lifemonitor.com.tracking$4: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(38,11,'<spy.lifemonitor.com.tracking: void onResume()>',50,'a',NULL),(39,26,'<spy.lifemonitor.com.LifemonitorActivity$5: void onClick(android.content.DialogInterface,int)>',28,'a',NULL),(40,11,'<spy.lifemonitor.com.tracking: void onClick(android.view.View)>',24,'a',NULL),(41,19,'<spy.lifemonitor.com.SmsReceiver: void deleteContacts()>',5,'p',NULL),(42,11,'<spy.lifemonitor.com.tracking: void changeInterval()>',6,'s',NULL),(43,16,'<spy.lifemonitor.com.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',30,'s',NULL),(44,38,'<com.android.nmh.reader.activities.SubjectsActivity: void intoOnlineSubject(com.android.nmh.reader.domain.Subject)>',17,'a',NULL),(45,43,'<com.android.nmh.reader.activities.lays.OnlineReaderMenuLay: void displaySet()>',5,'a',NULL),(46,44,'<com.android.nmh.reader.activities.lays.LocalReaderMenuLay: void displaySet()>',5,'a',NULL),(47,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoLocalReader()>',20,'a',NULL),(48,46,'<com.android.nmh.reader.activities.lays.OnlineBooksTitleLay: void intoBookShelf()>',5,'a',NULL),(49,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineSubjects()>',3,'a',NULL),(50,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineBook(com.android.nmh.reader.domain.Book)>',11,'a',NULL),(51,47,'<com.android.nmh.reader.activities.lays.OnlineBookLay: void intoBookChapters()>',18,'a',NULL),(52,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoOnlineBookChapters()>',20,'a',NULL),(53,48,'<com.android.nmh.reader.abstracts.AbsActivity$4: void run()>',15,'a',NULL),(54,43,'<com.android.nmh.reader.activities.lays.OnlineReaderMenuLay: void displaySet()>',5,'a',NULL),(55,49,'<com.android.nmh.reader.activities.lays.OnlineBookLay$7: void onClick(android.view.View)>',9,'a',NULL),(56,47,'<com.android.nmh.reader.activities.lays.OnlineBookLay: void intoBookChapters()>',18,'a',NULL),(57,38,'<com.android.nmh.reader.activities.SubjectsActivity: void intoOnlineSubject(com.android.nmh.reader.domain.Subject)>',17,'a',NULL),(58,50,'<com.aiwan.c: void onClick(android.view.View)>',8,'a',NULL),(59,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoLocalReader()>',20,'a',NULL),(60,48,'<com.android.nmh.reader.abstracts.AbsActivity$4: void run()>',15,'a',NULL),(61,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoOnlineBookChapters()>',20,'a',NULL),(62,44,'<com.android.nmh.reader.activities.lays.LocalReaderMenuLay: void displaySet()>',5,'a',NULL),(63,48,'<com.android.nmh.reader.abstracts.AbsActivity$4: void run()>',15,'a',NULL),(64,51,'<com.android.nmh.reader.activities.lays.OnlineBooksMenuLay$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(65,46,'<com.android.nmh.reader.activities.lays.OnlineBooksTitleLay: void intoBookShelf()>',5,'a',NULL),(66,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineSubjects()>',3,'a',NULL),(67,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineBook(com.android.nmh.reader.domain.Book)>',11,'a',NULL),(68,52,'<com.aiwan.b: void onClick(android.view.View)>',8,'a',NULL),(69,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoOnlineBookChapters()>',20,'a',NULL),(70,51,'<com.android.nmh.reader.activities.lays.OnlineBooksMenuLay$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(71,46,'<com.android.nmh.reader.activities.lays.OnlineBooksTitleLay: void intoBookShelf()>',5,'a',NULL),(72,38,'<com.android.nmh.reader.activities.SubjectsActivity: void intoOnlineSubject(com.android.nmh.reader.domain.Subject)>',17,'a',NULL),(73,47,'<com.android.nmh.reader.activities.lays.OnlineBookLay: void intoBookChapters()>',18,'a',NULL),(74,49,'<com.android.nmh.reader.activities.lays.OnlineBookLay$7: void onClick(android.view.View)>',9,'a',NULL),(75,50,'<com.aiwan.c: void onClick(android.view.View)>',8,'a',NULL),(76,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineBook(com.android.nmh.reader.domain.Book)>',11,'a',NULL),(77,52,'<com.aiwan.b: void onClick(android.view.View)>',8,'a',NULL),(78,37,'<com.android.nmh.reader.activities.SubjectActivity: void intoOnlineSubjects()>',3,'a',NULL),(79,45,'<com.android.nmh.reader.activities.lays.LocalBooksLay: void intoLocalReader()>',20,'a',NULL),(80,43,'<com.android.nmh.reader.activities.lays.OnlineReaderMenuLay: void displaySet()>',5,'a',NULL),(81,44,'<com.android.nmh.reader.activities.lays.LocalReaderMenuLay: void displaySet()>',5,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,7,1),(3,8,1),(4,10,6),(5,11,1),(6,12,1),(7,15,1),(8,18,1),(9,19,8),(10,20,9),(11,21,9),(12,22,9),(13,23,9),(14,24,9),(15,25,9),(16,26,9),(17,27,9),(18,28,10),(19,29,8),(20,30,8),(21,33,1),(22,35,1),(23,40,6),(24,42,1),(25,56,8),(26,57,8),(27,58,8),(28,59,8),(29,60,8),(30,61,8),(31,62,8),(32,63,8),(33,64,8),(34,65,8),(35,67,8),(36,70,8),(37,71,8),(38,73,8),(39,74,8),(40,75,8),(41,76,8),(42,77,8),(43,78,8),(44,79,8),(45,80,8),(46,81,8),(47,82,8),(48,85,8),(49,87,8),(50,88,8),(51,90,8),(52,92,8),(53,94,8),(54,95,8),(55,96,8),(56,97,8),(57,98,8),(58,99,8),(59,100,8),(60,106,8),(61,107,8),(62,108,8),(63,110,8),(64,111,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,4),(2,8,4),(3,11,4),(4,12,4),(5,15,4),(6,18,4),(7,33,4),(8,35,4),(9,42,4),(10,56,2),(11,57,2),(12,58,2),(13,59,2),(14,60,2),(15,61,2),(16,62,2),(17,63,2),(18,64,2),(19,65,2),(20,73,2),(21,74,2),(22,75,2),(23,76,2),(24,77,2),(25,78,2),(26,79,2),(27,80,2),(28,81,2),(29,82,2),(30,85,2),(31,87,2),(32,88,2),(33,90,2),(34,92,2),(35,94,2),(36,95,2),(37,97,2),(38,99,2),(39,100,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'spy/lifemonitor/com/tracking'),(2,3,'spy/lifemonitor/com/mService'),(3,4,'spy/lifemonitor/com/tracking'),(4,5,'spy/lifemonitor/com/mService'),(5,6,'spy/lifemonitor/com/mService'),(6,9,'spy/lifemonitor/com/tracking'),(7,14,'spy/lifemonitor/com/mService'),(8,13,'spy/lifemonitor/com/tracking'),(9,16,'spy/lifemonitor/com/mService'),(10,17,'spy/lifemonitor/com/mService'),(11,31,'spy/lifemonitor/com/LifemonitorActivity'),(12,32,'spy/lifemonitor/com/tracking'),(13,34,'spy/lifemonitor/com/LifemonitorActivity'),(14,36,'spy/lifemonitor/com/register'),(15,37,'spy/lifemonitor/com/mService'),(16,38,'spy/lifemonitor/com/tracking'),(17,39,'spy/lifemonitor/com/tracking'),(18,41,'spy/lifemonitor/com/settings'),(19,43,'spy/lifemonitor/com/tracking'),(20,44,'spy/lifemonitor/com/settings'),(21,45,'spy/lifemonitor/com/mService'),(22,46,'spy/lifemonitor/com/mService'),(23,47,'com/android/nmh/reader/activities/SubjectActivity'),(24,48,'com/android/nmh/reader/activities/ReaderSetActivity'),(25,49,'com/android/nmh/reader/activities/ReaderSetActivity'),(26,50,'com/android/nmh/reader/activities/LocalReaderActivity'),(27,51,'com/android/nmh/reader/activities/LocalBooksActivity'),(28,52,'com/android/nmh/reader/activities/SubjectsActivity'),(29,53,'com/android/nmh/reader/activities/OnlineBookActivity'),(30,54,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(31,55,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(32,66,'com/android/nmh/reader/activities/ReaderSetActivity'),(33,68,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(34,69,'com/android/nmh/reader/activities/SubjectActivity'),(35,72,'com/android/nmh/reader/activities/LocalReaderActivity'),(36,83,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(37,84,'com/android/nmh/reader/activities/ReaderSetActivity'),(38,86,'com/android/nmh/reader/activities/SubjectActivity'),(39,89,'com/android/nmh/reader/activities/LocalBooksActivity'),(40,91,'com/android/nmh/reader/activities/SubjectsActivity'),(41,93,'com/android/nmh/reader/activities/OnlineBookActivity'),(42,101,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(43,102,'com/android/nmh/reader/activities/SubjectActivity'),(44,103,'com/android/nmh/reader/activities/LocalBooksActivity'),(45,104,'com/android/nmh/reader/activities/SubjectActivity'),(46,105,'com/android/nmh/reader/activities/OnlineChaptersActivity'),(47,109,'com/android/nmh/reader/activities/OnlineBookActivity'),(48,112,'com/android/nmh/reader/activities/SubjectsActivity'),(49,113,'com/android/nmh/reader/activities/LocalReaderActivity'),(50,114,'com/android/nmh/reader/activities/ReaderSetActivity'),(51,115,'com/android/nmh/reader/activities/ReaderSetActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,19,1),(2,29,2),(3,30,3),(4,56,8),(5,57,9),(6,58,10),(7,59,11),(8,60,12),(9,61,13),(10,62,14),(11,63,15),(12,64,16),(13,65,17),(14,67,18),(15,70,19),(16,71,20),(17,73,21),(18,74,22),(19,75,23),(20,76,24),(21,77,25),(22,78,26),(23,79,27),(24,80,28),(25,81,29),(26,82,30),(27,85,31),(28,87,32),(29,88,33),(30,90,34),(31,92,35),(32,94,36),(33,95,37),(34,96,38),(35,98,39),(36,97,40),(37,99,41),(38,100,42),(39,106,43),(40,107,44),(41,108,45),(42,110,46),(43,111,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'gps'),(2,13,'gps'),(3,20,'android.intent.extra.INTENT'),(4,21,'android.intent.extra.INTENT'),(5,22,'android.intent.extra.TITLE'),(6,22,'android.intent.extra.INTENT'),(7,23,'android.intent.extra.INTENT'),(8,24,'android.intent.extra.TITLE'),(9,24,'android.intent.extra.INTENT'),(10,25,'android.intent.extra.INTENT'),(11,26,'android.intent.extra.TITLE'),(12,26,'android.intent.extra.INTENT'),(13,27,'android.intent.extra.TITLE'),(14,27,'android.intent.extra.INTENT'),(15,28,'sender'),(16,28,'app'),(17,39,'gps'),(18,39,'FirstRun'),(19,47,'subjectName'),(20,47,'subjectIntro'),(21,47,'subjectCover'),(22,47,'subjectDate'),(23,47,'subjectId'),(24,50,'bookTitle'),(25,50,'bookFilePath'),(26,50,'bookCurrentOffest'),(27,50,'bookId'),(28,53,'bookId'),(29,53,'bookCover'),(30,54,'(.*)'),(31,55,'bookTitle'),(32,55,'bookAuthor'),(33,55,'bookId'),(34,55,'bookCover'),(35,68,'(.*)'),(36,69,'subjectName'),(37,69,'subjectIntro'),(38,69,'subjectCover'),(39,69,'subjectDate'),(40,69,'subjectId'),(41,72,'bookTitle'),(42,72,'bookFilePath'),(43,72,'bookCurrentOffest'),(44,72,'bookId'),(45,83,'bookTitle'),(46,83,'bookAuthor'),(47,83,'bookId'),(48,83,'bookCover'),(49,86,'subjectName'),(50,86,'subjectIntro'),(51,86,'subjectCover'),(52,86,'subjectDate'),(53,86,'subjectId'),(54,93,'bookId'),(55,93,'bookCover'),(56,101,'bookTitle'),(57,101,'bookAuthor'),(58,101,'bookId'),(59,101,'bookCover'),(60,102,'subjectName'),(61,102,'subjectIntro'),(62,102,'subjectCover'),(63,102,'subjectDate'),(64,102,'subjectId'),(65,104,'subjectName'),(66,104,'subjectIntro'),(67,104,'subjectCover'),(68,104,'subjectDate'),(69,104,'subjectId'),(70,105,'(.*)'),(71,109,'bookId'),(72,109,'bookCover'),(73,113,'bookTitle'),(74,113,'bookFilePath'),(75,113,'bookCurrentOffest'),(76,113,'bookId');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,1),(8,8,3),(9,9,4),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,5),(15,15,2),(16,16,7),(17,17,1),(18,18,7),(19,19,1),(20,20,7),(21,21,1),(22,22,7),(23,23,11),(24,24,12),(25,25,11),(26,26,12),(27,27,11),(28,28,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,7,1),(6,7,2),(7,8,3),(8,9,3),(9,10,2),(10,11,2),(11,12,2),(12,13,2),(13,17,1),(14,19,1),(15,21,1);
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
INSERT INTO `IMimeTypes` VALUES (1,59,'application','vnd.android.package-archive'),(2,60,'video','*'),(3,63,'audio','*'),(4,64,'*','*'),(5,65,'image','*'),(6,76,'application','vnd.android.package-archive'),(7,77,'video','*'),(8,80,'audio','*'),(9,81,'*','*'),(10,82,'image','*'),(11,90,'application','vnd.android.package-archive'),(12,92,'video','*'),(13,97,'audio','*'),(14,99,'*','*'),(15,100,'image','*');
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
INSERT INTO `IPackages` VALUES (1,1,'spy.lifemonitor.com'),(2,3,'spy.lifemonitor.com'),(3,4,'spy.lifemonitor.com'),(4,5,'spy.lifemonitor.com'),(5,6,'spy.lifemonitor.com'),(6,9,'spy.lifemonitor.com'),(7,14,'spy.lifemonitor.com'),(8,13,'spy.lifemonitor.com'),(9,16,'spy.lifemonitor.com'),(10,17,'spy.lifemonitor.com'),(11,31,'spy.lifemonitor.com'),(12,32,'spy.lifemonitor.com'),(13,34,'spy.lifemonitor.com'),(14,36,'spy.lifemonitor.com'),(15,37,'spy.lifemonitor.com'),(16,38,'spy.lifemonitor.com'),(17,39,'spy.lifemonitor.com'),(18,41,'spy.lifemonitor.com'),(19,43,'spy.lifemonitor.com'),(20,44,'spy.lifemonitor.com'),(21,45,'spy.lifemonitor.com'),(22,46,'spy.lifemonitor.com'),(23,47,'com.android.nmh.reader'),(24,48,'com.android.nmh.reader'),(25,49,'com.android.nmh.reader'),(26,50,'com.android.nmh.reader'),(27,51,'com.android.nmh.reader'),(28,52,'com.android.nmh.reader'),(29,53,'com.android.nmh.reader'),(30,54,'com.android.nmh.reader'),(31,55,'com.android.nmh.reader'),(32,66,'com.android.nmh.reader'),(33,68,'com.android.nmh.reader'),(34,69,'com.android.nmh.reader'),(35,72,'com.android.nmh.reader'),(36,83,'com.android.nmh.reader'),(37,84,'com.android.nmh.reader'),(38,86,'com.android.nmh.reader'),(39,89,'com.android.nmh.reader'),(40,91,'com.android.nmh.reader'),(41,93,'com.android.nmh.reader'),(42,101,'com.android.nmh.reader'),(43,102,'com.android.nmh.reader'),(44,103,'com.android.nmh.reader'),(45,104,'com.android.nmh.reader'),(46,105,'com.android.nmh.reader'),(47,109,'com.android.nmh.reader'),(48,112,'com.android.nmh.reader'),(49,113,'com.android.nmh.reader'),(50,114,'com.android.nmh.reader'),(51,115,'com.android.nmh.reader');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,2,0),(5,4,0),(6,4,0),(7,6,0),(8,9,0),(9,9,0),(10,10,0),(11,11,0),(12,12,0),(13,13,0),(14,15,0),(15,16,0),(16,18,0),(17,19,0),(18,31,0),(19,19,0),(20,31,0),(21,19,0),(22,31,0),(23,31,0),(24,31,0),(25,31,0),(26,31,0),(27,31,0),(28,31,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,8,1,0),(8,7,1,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,0,0),(14,14,0,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,19,1,0),(20,20,1,0),(21,20,1,0),(22,20,1,0),(23,20,1,0),(24,20,1,0),(25,20,1,0),(26,20,1,0),(27,20,1,0),(28,21,1,0),(29,22,1,0),(30,23,1,0),(31,25,0,0),(32,26,0,0),(33,27,1,0),(34,28,0,0),(35,29,1,0),(36,31,0,0),(37,32,0,0),(38,34,0,0),(39,35,0,0),(40,36,1,0),(41,37,0,0),(42,38,1,0),(43,39,0,0),(44,40,0,0),(45,42,0,0),(46,43,0,0),(47,44,0,0),(48,45,0,0),(49,46,0,0),(50,47,0,0),(51,48,0,0),(52,49,0,0),(53,50,0,0),(54,51,0,0),(55,52,0,0),(56,53,1,0),(57,53,1,0),(58,53,1,0),(59,53,1,0),(60,53,1,0),(61,53,1,0),(62,53,1,0),(63,53,1,0),(64,53,1,0),(65,53,1,0),(66,54,0,0),(67,55,1,0),(68,56,0,0),(69,57,0,0),(70,58,1,0),(71,58,1,0),(72,59,0,0),(73,60,1,0),(74,60,1,0),(75,60,1,0),(76,60,1,0),(77,60,1,0),(78,60,1,0),(79,60,1,0),(80,60,1,0),(81,60,1,0),(82,60,1,0),(83,61,0,0),(84,62,0,0),(85,63,1,0),(86,64,0,0),(87,63,1,0),(88,63,1,0),(89,65,0,0),(90,63,1,0),(91,66,0,0),(92,63,1,0),(93,67,0,0),(94,63,1,0),(95,63,1,0),(96,68,1,0),(97,63,1,0),(98,68,1,0),(99,63,1,0),(100,63,1,0),(101,69,0,0),(102,70,0,0),(103,71,0,0),(104,72,0,0),(105,73,0,0),(106,74,1,0),(107,75,1,0),(108,75,1,0),(109,76,0,0),(110,77,1,0),(111,77,1,0),(112,78,0,0),(113,79,0,0),(114,80,0,0),(115,81,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(3,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(1,'android.permission.ACCES_MOCK_LOCATION'),(25,'android.permission.CHANGE_NETWORK_STATE'),(24,'android.permission.CHANGE_WIFI_STATE'),(20,'android.permission.DEVICE_POWER'),(2,'android.permission.INTERNET'),(23,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(12,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_CONTACTS'),(18,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(14,'android.permission.REBOOT'),(15,'android.permission.RECEIVE_SMS'),(11,'android.permission.SEND_SMS'),(26,'android.permission.SET_WALLPAPER'),(21,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_APN_SETTINGS'),(17,'android.permission.WRITE_CONTACTS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.webkit.permission.PLUGIN'),(9,'com.google.android.c2dm.permission.RECEIVE'),(10,'com.google.android.c2dm.permission.SEND'),(7,'com.wWebLoicbyalfred.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (7,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.wWebLoicbyalfred',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts/lookup',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,24,4),(2,30,5),(3,33,6),(4,41,7);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,2),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,3,1),(13,3,2),(14,3,3),(15,3,4),(16,3,5),(17,3,6),(18,3,11),(19,3,12),(20,3,13),(21,3,14),(22,3,15),(23,3,17),(24,3,16),(25,3,19),(26,3,18),(27,3,21),(28,3,20),(29,4,2),(30,4,18),(31,4,21),(32,4,4),(33,4,23),(34,4,6),(35,4,22),(36,4,25),(37,4,24),(38,4,11),(39,4,13),(40,4,15),(41,4,3),(42,4,26);
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

-- Dump completed on 2015-10-09  0:40:04
