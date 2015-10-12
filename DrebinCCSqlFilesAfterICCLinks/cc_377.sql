-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_377
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(13,'android.app.action.ADD_DEVICE_ADMIN'),(4,'android.app.action.DEVICE_ADMIN_ENABLED'),(16,'android.app.action.SET_NEW_PASSWORD'),(12,'android.intent.action.CREATE_LIVE_FOLDER'),(3,'android.intent.action.DELETE'),(7,'android.intent.action.EDIT'),(8,'android.intent.action.GET_CONTENT'),(10,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(15,'android.settings.SECURITY_SETTINGS'),(9,'com.android.notepad.action.EDIT_NOTE'),(11,'com.android.notepad.action.EDIT_TITLE');
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
INSERT INTO `Applications` VALUES (1,'com.magicsms.own',1),(2,'com.four.PhotoGallery',1),(3,'com.FourCobblers.Free.PhoneLock',22),(4,'com.FourCobblers.Free.PhoneLock',32),(5,'com.FourCobblers.Free.PhoneLock',42),(6,'com.FourCobblers.Free.PhoneLock',10);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.ALTERNATIVE'),(5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SELECTED_ALTERNATIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.magicsms.own.MagicSMSActivity'),(2,1,'com.magicsms.own.receiver.SMSReceiver'),(3,2,'com.four.PhotoGallery.InstagramHDGalleryActivity'),(4,2,'com.four.PhotoGallery.GalleryActivity'),(5,2,'com.four.PhotoGallery.AlertActivity'),(6,2,'com.four.PhotoGallery.WallpaperActivity'),(7,2,'com.four.PhotoGallery.GalleryActivity$1'),(8,2,'com.four.PhotoGallery.InstagramHDGalleryActivity$1'),(9,2,'com.four.PhotoGallery.WallpaperActivity$1'),(10,3,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(11,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(12,3,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(13,4,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(14,3,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(15,3,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(16,3,'com.FourCobblers.Free.PhoneLock.Help'),(17,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(18,3,'com.google.ads.AdActivity'),(19,4,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(20,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(21,4,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(22,4,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(23,5,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(24,4,'com.FourCobblers.Free.PhoneLock.Help'),(25,3,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(26,4,'com.google.ads.AdActivity'),(27,6,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(28,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(29,4,'com.FourCobblers.Free.PhoneLock.NotesList'),(30,5,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(31,5,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(32,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(33,5,'com.FourCobblers.Free.PhoneLock.Help'),(34,6,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(35,5,'com.google.ads.AdActivity'),(36,6,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(37,5,'com.FourCobblers.Free.PhoneLock.NotesList'),(38,6,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(39,6,'com.FourCobblers.Free.PhoneLock.Help'),(40,4,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(41,6,'com.google.ads.AdActivity'),(42,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(43,6,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(44,5,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(45,4,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(46,5,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(47,4,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(48,5,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(49,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(50,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(51,4,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(52,5,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(53,4,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(54,5,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(55,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(56,3,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(57,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(58,3,'u$b'),(59,6,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(60,6,'u$b'),(61,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(62,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(63,5,'u$b'),(64,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(65,4,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(66,5,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(67,4,'u$b'),(68,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,6,'POSITION'),(3,15,'action'),(4,22,'pdus'),(5,15,'params'),(6,38,'com.google.ads.AdOpener'),(7,38,'params'),(8,15,'com.google.ads.AdOpener'),(9,40,'pdus'),(10,38,'action'),(11,23,'com.google.ads.AdOpener'),(12,48,'pdus'),(13,23,'params'),(14,37,'origContent'),(15,32,'action'),(16,32,'params'),(17,23,'action'),(18,49,'pdus'),(19,32,'com.google.ads.AdOpener'),(20,41,'origContent');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,10,'a',1,NULL,NULL),(8,11,'a',0,NULL,NULL),(9,12,'a',0,NULL,NULL),(10,13,'a',1,NULL,NULL),(11,14,'a',0,NULL,NULL),(12,15,'a',0,NULL,NULL),(13,16,'a',0,NULL,NULL),(14,17,'a',0,NULL,NULL),(15,18,'a',0,NULL,NULL),(16,19,'a',0,NULL,NULL),(17,21,'a',0,NULL,NULL),(18,20,'r',1,17,NULL),(19,22,'a',0,NULL,NULL),(20,23,'a',1,NULL,NULL),(21,24,'a',0,NULL,NULL),(22,25,'r',1,NULL,NULL),(23,26,'a',0,NULL,NULL),(24,27,'a',1,NULL,NULL),(25,28,'a',0,NULL,NULL),(26,29,'a',1,NULL,NULL),(27,30,'a',0,NULL,NULL),(28,31,'a',0,NULL,NULL),(29,32,'a',0,NULL,NULL),(30,33,'a',0,NULL,NULL),(31,34,'a',0,NULL,NULL),(32,35,'a',0,NULL,NULL),(33,36,'a',0,NULL,NULL),(34,37,'a',1,NULL,NULL),(35,38,'a',0,NULL,NULL),(36,39,'a',0,NULL,NULL),(37,40,'a',1,NULL,NULL),(38,41,'a',0,NULL,NULL),(39,42,'r',1,17,NULL),(40,43,'r',1,NULL,NULL),(41,44,'a',1,NULL,NULL),(42,45,'a',1,NULL,NULL),(43,46,'a',1,NULL,NULL),(44,47,'a',1,NULL,NULL),(45,48,'a',1,NULL,NULL),(46,49,'r',1,17,NULL),(47,50,'r',1,17,NULL),(48,51,'r',1,NULL,NULL),(49,52,'r',1,NULL,NULL),(50,53,'p',0,NULL,NULL),(51,54,'p',0,NULL,NULL),(52,58,'r',1,NULL,NULL),(53,60,'r',1,NULL,NULL),(54,63,'r',1,NULL,NULL),(55,67,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,5),(3,3,3),(4,4,3),(5,5,6),(6,6,4),(7,7,3),(8,8,6),(9,9,8),(10,10,8),(11,11,8),(12,12,8),(13,13,29),(14,14,8),(15,15,38),(16,16,7),(17,16,8),(18,17,8),(19,18,8),(20,19,15),(21,20,29),(22,21,29),(23,22,24),(24,22,29),(25,23,29),(26,24,29),(27,25,29),(28,26,29),(29,27,37),(30,28,50),(31,29,42),(32,30,50),(33,31,43),(34,32,32),(35,33,14),(36,34,48),(37,35,14),(38,36,51),(39,37,25),(40,38,23),(41,39,41),(42,40,20),(43,40,25),(44,41,51),(45,42,50),(46,43,37),(47,44,34),(48,45,14),(49,46,25),(50,47,10),(51,47,14),(52,48,41),(53,49,14),(54,50,25),(55,50,20),(56,51,51),(57,52,14),(58,53,25),(59,54,26),(60,55,34),(61,56,26),(62,57,41),(63,58,41),(64,59,37),(65,60,25),(66,61,14),(67,62,37),(68,63,34),(69,64,14),(70,64,10),(71,65,49),(72,66,26),(73,67,14),(74,68,25),(75,69,25),(76,70,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.four.PhotoGallery.GalleryActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(2,5,'<com.four.PhotoGallery.AlertActivity: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(3,3,'<com.four.PhotoGallery.InstagramHDGalleryActivity: void deleteActivator()>',4,'a',NULL),(4,8,'<com.four.PhotoGallery.InstagramHDGalleryActivity$1: void onClick(android.view.View)>',7,'a',NULL),(5,9,'<com.four.PhotoGallery.WallpaperActivity$1: void onClick(android.view.View)>',7,'a',NULL),(6,4,'<com.four.PhotoGallery.GalleryActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(7,3,'<com.four.PhotoGallery.InstagramHDGalleryActivity: void onCreate(android.os.Bundle)>',37,'a',NULL),(8,6,'<com.four.PhotoGallery.WallpaperActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(9,55,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(10,11,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(11,55,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(12,11,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(13,32,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(14,56,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(15,41,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(16,10,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(17,55,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(18,55,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(19,18,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(20,57,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(21,32,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(22,27,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(23,57,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(24,57,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(25,59,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(26,57,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(27,40,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(28,53,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(29,45,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(30,53,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(31,46,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(32,35,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(33,61,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(34,51,'<com.FourCobblers.Free.PhoneLock.SMSCommandHandle: java.lang.String getLocation(boolean)>',18,'r',NULL),(35,62,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(36,54,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(37,28,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(38,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(39,44,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(40,23,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(41,54,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(42,53,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(43,40,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(44,37,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(45,61,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(46,64,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(47,65,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(48,44,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(49,61,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(50,66,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(51,54,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(52,17,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(53,64,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(54,29,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(55,37,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(56,29,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(57,44,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(58,44,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(59,40,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(60,28,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(61,61,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(62,40,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(63,37,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(64,13,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(65,52,'<com.FourCobblers.Free.PhoneLock.SMSCommandHandle: java.lang.String getLocation(boolean)>',18,'r',NULL),(66,29,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(67,17,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(68,64,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(69,68,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(70,64,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,3),(2,14,6),(3,18,13),(4,19,14),(5,21,6),(6,22,15),(7,23,14),(8,24,16),(9,25,14),(10,27,6),(11,28,6),(12,29,14),(13,31,16),(14,32,15),(15,33,13),(16,35,14),(17,36,16),(18,37,6),(19,39,14),(20,40,13),(21,43,14),(22,45,6),(23,47,14),(24,48,7),(25,50,16),(26,54,6),(27,55,15),(28,56,7),(29,57,10),(30,58,10),(31,59,6),(32,60,15),(33,67,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,19,5),(2,21,5),(3,23,5),(4,25,5),(5,27,5),(6,29,5),(7,35,5),(8,38,3),(9,37,5),(10,39,5),(11,43,5),(12,45,5),(13,47,5),(14,62,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/four/PhotoGallery/WallpaperActivity'),(2,2,'com.activator.ActivatorActivity'),(3,4,'com/four/PhotoGallery/GalleryActivity'),(4,5,'com/four/PhotoGallery/GalleryActivity'),(5,6,'com/four/PhotoGallery/InstagramHDGalleryActivity'),(6,7,'com/four/PhotoGallery/AlertActivity'),(7,8,'com/four/PhotoGallery/GalleryActivity'),(8,9,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(9,11,'com/FourCobblers/Free/PhoneLock/Help'),(10,12,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(11,13,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(12,16,'com/FourCobblers/Free/PhoneLock/Help'),(13,17,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(14,20,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(15,26,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(16,30,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(17,34,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(18,38,'com.android.settings.widget.SettingsAppWidgetProvider'),(19,42,'com/FourCobblers/Free/PhoneLock/Help'),(20,44,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(21,46,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(22,49,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(23,51,'com/FourCobblers/Free/PhoneLock/NotesList'),(24,52,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(25,53,'com/FourCobblers/Free/PhoneLock/NotesList'),(26,61,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(27,62,'com.android.settings.widget.SettingsAppWidgetProvider'),(28,64,'com/FourCobblers/Free/PhoneLock/Help'),(29,65,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(30,66,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(31,68,'com/FourCobblers/Free/PhoneLock/SetSMSCommand');
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
INSERT INTO `IData` VALUES (1,3,1),(2,14,2),(3,19,3),(4,21,4),(5,23,5),(6,25,6),(7,27,7),(8,28,8),(9,29,9),(10,35,11),(11,38,12),(12,37,13),(13,39,14),(14,43,15),(15,45,16),(16,47,17),(17,48,18),(18,54,20),(19,56,21),(20,57,22),(21,58,23),(22,59,24),(23,62,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'POSITION'),(2,18,'android.app.extra.DEVICE_ADMIN'),(3,18,'android.app.extra.ADD_EXPLANATION'),(4,33,'android.app.extra.DEVICE_ADMIN'),(5,33,'android.app.extra.ADD_EXPLANATION'),(6,40,'android.app.extra.DEVICE_ADMIN'),(7,40,'android.app.extra.ADD_EXPLANATION'),(8,67,'android.app.extra.DEVICE_ADMIN'),(9,67,'android.app.extra.ADD_EXPLANATION');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,4),(9,9,1),(10,10,2),(11,11,1),(12,13,7),(13,13,6),(14,13,5),(15,14,8),(16,16,5),(17,16,6),(18,16,7),(19,17,6),(20,17,7),(21,17,9),(22,18,8),(23,19,4),(24,20,10),(25,21,2),(26,22,7),(27,22,6),(28,22,9),(29,23,10),(30,24,11),(31,25,11),(32,26,12),(33,27,12),(34,28,4),(35,29,4),(36,30,2),(37,31,2),(38,32,17),(39,32,18),(40,33,18),(41,33,17),(42,34,17),(43,34,18),(44,35,18),(45,35,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,7,1),(6,9,1),(7,11,1),(8,13,2),(9,14,2),(10,16,2),(11,18,2),(12,17,2),(13,20,2),(14,22,2),(15,23,2),(16,24,4),(17,24,3),(18,24,2),(19,25,3),(20,25,2),(21,25,4),(22,26,2),(23,27,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(2,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(3,16,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(4,18,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(5,17,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(6,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(7,22,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(8,23,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(9,24,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(10,25,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note');
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
INSERT INTO `IMimeTypes` VALUES (1,23,'(.*)','(.*)'),(2,29,'(.*)','(.*)'),(3,39,'(.*)','(.*)'),(4,47,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.four.PhotoGallery'),(2,2,'com.activator'),(3,4,'com.four.PhotoGallery'),(4,5,'com.four.PhotoGallery'),(5,6,'com.four.PhotoGallery'),(6,7,'com.four.PhotoGallery'),(7,8,'com.four.PhotoGallery'),(8,9,'com.FourCobblers.Free.PhoneLock'),(9,11,'com.FourCobblers.Free.PhoneLock'),(10,12,'com.FourCobblers.Free.PhoneLock'),(11,13,'com.FourCobblers.Free.PhoneLock'),(12,16,'com.FourCobblers.Free.PhoneLock'),(13,17,'com.FourCobblers.Free.PhoneLock'),(14,20,'com.FourCobblers.Free.PhoneLock'),(15,26,'com.FourCobblers.Free.PhoneLock'),(16,30,'com.FourCobblers.Free.PhoneLock'),(17,34,'com.FourCobblers.Free.PhoneLock'),(18,38,'com.android.settings'),(19,42,'com.FourCobblers.Free.PhoneLock'),(20,44,'com.FourCobblers.Free.PhoneLock'),(21,46,'com.FourCobblers.Free.PhoneLock'),(22,49,'com.FourCobblers.Free.PhoneLock'),(23,51,'com.FourCobblers.Free.PhoneLock'),(24,52,'com.FourCobblers.Free.PhoneLock'),(25,53,'com.FourCobblers.Free.PhoneLock'),(26,61,'com.FourCobblers.Free.PhoneLock'),(27,62,'com.android.settings'),(28,64,'com.FourCobblers.Free.PhoneLock'),(29,65,'com.FourCobblers.Free.PhoneLock'),(30,66,'com.FourCobblers.Free.PhoneLock'),(31,68,'com.FourCobblers.Free.PhoneLock');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,2,0),(5,3,0),(6,7,0),(7,10,0),(8,18,0),(9,20,0),(10,22,0),(11,24,0),(12,26,0),(13,26,0),(14,26,0),(15,34,0),(16,34,0),(17,37,0),(18,34,0),(19,39,0),(20,37,0),(21,40,0),(22,41,0),(23,41,0),(24,42,0),(25,43,0),(26,44,0),(27,45,0),(28,46,0),(29,47,0),(30,48,0),(31,49,0),(32,52,0),(33,53,0),(34,54,0),(35,55,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,10,0,0),(12,10,0,0),(13,11,0,0),(14,12,1,0),(15,13,1,0),(16,13,0,0),(17,13,0,0),(18,14,1,0),(19,15,1,0),(20,16,0,0),(21,15,1,0),(22,17,1,0),(23,15,1,0),(24,18,1,0),(25,19,1,0),(26,20,0,0),(27,19,1,0),(28,21,1,0),(29,19,1,0),(30,22,0,0),(31,23,1,0),(32,24,1,0),(33,25,1,0),(34,26,0,0),(35,32,1,0),(36,33,1,0),(37,32,1,0),(38,34,0,0),(39,32,1,0),(40,35,1,0),(41,37,1,0),(42,37,0,0),(43,38,1,0),(44,37,0,0),(45,38,1,0),(46,40,0,0),(47,38,1,0),(48,44,1,0),(49,45,0,0),(50,46,1,0),(51,47,0,0),(52,49,0,0),(53,50,0,0),(54,52,1,0),(55,53,1,0),(56,54,1,0),(57,55,1,0),(58,56,1,0),(59,60,1,0),(60,61,1,0),(61,64,0,0),(62,65,0,0),(63,67,1,0),(64,67,0,0),(65,68,0,0),(66,67,0,0),(67,69,1,0),(68,70,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,8,2,NULL),(2,20,14,2,NULL),(3,20,25,2,NULL),(4,20,29,2,NULL),(5,3,7,2,NULL),(6,10,7,2,NULL),(7,25,7,2,NULL),(8,27,7,2,NULL),(9,63,7,2,NULL),(10,43,7,2,NULL),(11,45,7,2,NULL),(12,41,7,2,NULL),(13,35,7,2,NULL),(14,37,7,2,NULL),(15,15,7,2,NULL),(16,19,7,2,NULL),(17,21,7,2,NULL),(18,11,13,2,NULL),(19,11,21,2,NULL),(20,11,30,2,NULL),(21,11,36,2,NULL),(22,12,7,2,NULL),(23,12,10,2,NULL),(24,12,20,2,NULL),(25,12,24,2,NULL),(26,10,1,2,NULL),(27,10,2,2,NULL),(28,10,3,2,NULL),(29,10,18,2,NULL),(30,10,22,2,NULL),(31,10,52,2,NULL),(32,10,10,2,NULL),(33,10,26,2,NULL),(34,10,44,2,NULL),(35,10,46,2,NULL),(36,10,48,2,NULL),(37,10,55,2,NULL),(38,10,20,2,NULL),(39,10,34,2,NULL),(40,10,45,2,NULL),(41,10,47,2,NULL),(42,10,49,2,NULL),(43,10,54,2,NULL),(44,10,24,2,NULL),(45,10,39,2,NULL),(46,10,40,2,NULL),(47,10,53,2,NULL),(48,25,1,2,NULL),(49,27,1,2,NULL),(50,25,2,2,NULL),(51,27,2,2,NULL),(52,25,3,2,NULL),(53,27,3,2,NULL),(54,25,18,2,NULL),(55,27,18,2,NULL),(56,25,22,2,NULL),(57,27,22,2,NULL),(58,25,52,2,NULL),(59,27,52,2,NULL),(60,25,10,2,NULL),(61,27,10,2,NULL),(62,25,26,2,NULL),(63,27,26,2,NULL),(64,25,44,2,NULL),(65,27,44,2,NULL),(66,25,46,2,NULL),(67,27,46,2,NULL),(68,25,48,2,NULL),(69,27,48,2,NULL),(70,25,55,2,NULL),(71,27,55,2,NULL),(72,25,20,2,NULL),(73,27,20,2,NULL),(74,25,34,2,NULL),(75,27,34,2,NULL),(76,25,45,2,NULL),(77,27,45,2,NULL),(78,25,47,2,NULL),(79,27,47,2,NULL),(80,25,49,2,NULL),(81,27,49,2,NULL),(82,25,54,2,NULL),(83,27,54,2,NULL),(84,25,24,2,NULL),(85,27,24,2,NULL),(86,25,39,2,NULL),(87,27,39,2,NULL),(88,25,40,2,NULL),(89,27,40,2,NULL),(90,25,53,2,NULL),(91,27,53,2,NULL),(92,3,18,2,NULL),(93,63,18,2,NULL),(94,43,18,2,NULL),(95,45,18,2,NULL),(96,41,18,2,NULL),(97,35,18,2,NULL),(98,37,18,2,NULL),(99,15,18,2,NULL),(100,19,18,2,NULL),(101,21,18,2,NULL),(102,3,22,2,NULL),(103,63,22,2,NULL),(104,43,22,2,NULL),(105,45,22,2,NULL),(106,41,22,2,NULL),(107,35,22,2,NULL),(108,37,22,2,NULL),(109,15,22,2,NULL),(110,19,22,2,NULL),(111,21,22,2,NULL),(112,3,52,2,NULL),(113,63,52,2,NULL),(114,43,52,2,NULL),(115,45,52,2,NULL),(116,41,52,2,NULL),(117,35,52,2,NULL),(118,37,52,2,NULL),(119,15,52,2,NULL),(120,19,52,2,NULL),(121,21,52,2,NULL),(122,61,8,2,NULL),(123,61,14,2,NULL),(124,61,25,2,NULL),(125,61,29,2,NULL),(126,3,10,2,NULL),(127,63,10,2,NULL),(128,43,10,2,NULL),(129,45,10,2,NULL),(130,41,10,2,NULL),(131,35,10,2,NULL),(132,37,10,2,NULL),(133,15,10,2,NULL),(134,19,10,2,NULL),(135,21,10,2,NULL),(136,64,13,2,NULL),(137,64,21,2,NULL),(138,64,30,2,NULL),(139,64,36,2,NULL),(140,66,7,2,NULL),(141,66,10,2,NULL),(142,66,20,2,NULL),(143,66,24,2,NULL),(144,63,1,2,NULL),(145,63,2,2,NULL),(146,63,3,2,NULL),(147,63,26,2,NULL),(148,63,44,2,NULL),(149,63,46,2,NULL),(150,63,48,2,NULL),(151,63,55,2,NULL),(152,63,20,2,NULL),(153,63,34,2,NULL),(154,63,45,2,NULL),(155,63,47,2,NULL),(156,63,49,2,NULL),(157,63,54,2,NULL),(158,63,24,2,NULL),(159,63,39,2,NULL),(160,63,40,2,NULL),(161,63,53,2,NULL),(162,43,1,2,NULL),(163,45,1,2,NULL),(164,43,2,2,NULL),(165,45,2,2,NULL),(166,43,3,2,NULL),(167,45,3,2,NULL),(168,43,26,2,NULL),(169,45,26,2,NULL),(170,43,44,2,NULL),(171,45,44,2,NULL),(172,43,46,2,NULL),(173,45,46,2,NULL),(174,43,48,2,NULL),(175,45,48,2,NULL),(176,43,55,2,NULL),(177,45,55,2,NULL),(178,43,20,2,NULL),(179,45,20,2,NULL),(180,43,34,2,NULL),(181,45,34,2,NULL),(182,43,45,2,NULL),(183,45,45,2,NULL),(184,43,47,2,NULL),(185,45,47,2,NULL),(186,43,49,2,NULL),(187,45,49,2,NULL),(188,43,54,2,NULL),(189,45,54,2,NULL),(190,43,24,2,NULL),(191,45,24,2,NULL),(192,43,39,2,NULL),(193,45,39,2,NULL),(194,43,40,2,NULL),(195,45,40,2,NULL),(196,43,53,2,NULL),(197,45,53,2,NULL),(198,3,26,2,NULL),(199,41,26,2,NULL),(200,35,26,2,NULL),(201,37,26,2,NULL),(202,15,26,2,NULL),(203,19,26,2,NULL),(204,21,26,2,NULL),(205,3,44,2,NULL),(206,41,44,2,NULL),(207,35,44,2,NULL),(208,37,44,2,NULL),(209,15,44,2,NULL),(210,19,44,2,NULL),(211,21,44,2,NULL),(212,3,46,2,NULL),(213,41,46,2,NULL),(214,35,46,2,NULL),(215,37,46,2,NULL),(216,15,46,2,NULL),(217,19,46,2,NULL),(218,21,46,2,NULL),(219,3,48,2,NULL),(220,41,48,2,NULL),(221,35,48,2,NULL),(222,37,48,2,NULL),(223,15,48,2,NULL),(224,19,48,2,NULL),(225,21,48,2,NULL),(226,3,55,2,NULL),(227,41,55,2,NULL),(228,35,55,2,NULL),(229,37,55,2,NULL),(230,15,55,2,NULL),(231,19,55,2,NULL),(232,21,55,2,NULL),(233,46,8,2,NULL),(234,46,14,2,NULL),(235,46,25,2,NULL),(236,46,29,2,NULL),(237,3,20,2,NULL),(238,41,20,2,NULL),(239,35,20,2,NULL),(240,37,20,2,NULL),(241,15,20,2,NULL),(242,19,20,2,NULL),(243,21,20,2,NULL),(244,42,13,2,NULL),(245,42,21,2,NULL),(246,42,30,2,NULL),(247,42,36,2,NULL),(248,44,7,2,NULL),(249,44,10,2,NULL),(250,44,20,2,NULL),(251,44,24,2,NULL),(252,41,1,2,NULL),(253,41,2,2,NULL),(254,41,3,2,NULL),(255,41,34,2,NULL),(256,41,45,2,NULL),(257,41,47,2,NULL),(258,41,49,2,NULL),(259,41,54,2,NULL),(260,41,24,2,NULL),(261,41,39,2,NULL),(262,41,40,2,NULL),(263,41,53,2,NULL),(264,35,1,2,NULL),(265,37,1,2,NULL),(266,35,2,2,NULL),(267,37,2,2,NULL),(268,35,3,2,NULL),(269,37,3,2,NULL),(270,35,34,2,NULL),(271,37,34,2,NULL),(272,35,45,2,NULL),(273,37,45,2,NULL),(274,35,47,2,NULL),(275,37,47,2,NULL),(276,35,49,2,NULL),(277,37,49,2,NULL),(278,35,54,2,NULL),(279,37,54,2,NULL),(280,35,24,2,NULL),(281,37,24,2,NULL),(282,35,39,2,NULL),(283,37,39,2,NULL),(284,35,40,2,NULL),(285,37,40,2,NULL),(286,35,53,2,NULL),(287,37,53,2,NULL),(288,3,34,2,NULL),(289,15,34,2,NULL),(290,19,34,2,NULL),(291,21,34,2,NULL),(292,3,45,2,NULL),(293,15,45,2,NULL),(294,19,45,2,NULL),(295,21,45,2,NULL),(296,3,47,2,NULL),(297,15,47,2,NULL),(298,19,47,2,NULL),(299,21,47,2,NULL),(300,3,49,2,NULL),(301,15,49,2,NULL),(302,19,49,2,NULL),(303,21,49,2,NULL),(304,3,54,2,NULL),(305,15,54,2,NULL),(306,19,54,2,NULL),(307,21,54,2,NULL),(308,30,8,2,NULL),(309,30,14,2,NULL),(310,30,25,2,NULL),(311,30,29,2,NULL),(312,3,24,2,NULL),(313,15,24,2,NULL),(314,19,24,2,NULL),(315,21,24,2,NULL),(316,16,13,2,NULL),(317,16,21,2,NULL),(318,16,30,2,NULL),(319,16,36,2,NULL),(320,17,7,2,NULL),(321,17,10,2,NULL),(322,17,20,2,NULL),(323,17,24,2,NULL),(324,15,1,2,NULL),(325,15,2,2,NULL),(326,15,3,2,NULL),(327,15,39,2,NULL),(328,15,40,2,NULL),(329,15,53,2,NULL),(330,19,1,2,NULL),(331,21,1,2,NULL),(332,19,2,2,NULL),(333,21,2,2,NULL),(334,19,3,2,NULL),(335,21,3,2,NULL),(336,19,39,2,NULL),(337,21,39,2,NULL),(338,19,40,2,NULL),(339,21,40,2,NULL),(340,19,53,2,NULL),(341,21,53,2,NULL),(342,3,39,2,NULL),(343,3,40,2,NULL),(344,3,53,2,NULL),(345,3,1,2,NULL),(346,3,2,2,NULL),(347,7,5,2,NULL),(348,6,3,2,NULL),(349,8,4,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.FourCobblers.Free.Util.NotePad'),(2,2,'com.FourCobblers.Free.Util.NotePad');
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(3,'android.permission.ACCESS_GPS'),(4,'android.permission.ACCESS_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BIND_DEVICE_ADMIN'),(13,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.INTERNET'),(8,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(5,'android.permission.SET_WALLPAPER'),(14,'android.permission.UPDATE_DEVICE_STATS'),(15,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,50,0,NULL,NULL),(2,51,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'package:com.activator',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'custom:3',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(19,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(21,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(22,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(25,NULL,NULL,'custom:3',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,30,10),(2,51,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,2,7),(8,3,1),(9,3,2),(10,3,6),(11,3,7),(12,3,8),(13,3,9),(14,4,1),(15,3,10),(16,4,2),(17,3,11),(18,4,6),(19,3,12),(20,4,7),(21,4,8),(22,4,9),(23,4,10),(24,4,11),(25,4,12),(26,4,13),(27,4,14),(28,5,1),(29,4,15),(30,5,2),(31,5,6),(32,5,7),(33,5,8),(34,5,9),(35,5,10),(36,5,11),(37,5,12),(38,6,1),(39,5,13),(40,6,2),(41,5,14),(42,6,6),(43,5,15),(44,6,7),(45,5,16),(46,6,8),(47,6,9),(48,6,10),(49,6,11),(50,6,12);
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

-- Dump completed on 2015-10-12  3:30:15
