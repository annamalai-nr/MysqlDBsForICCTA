-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_88
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(14,'android.bluetooth.adapter.action.STATE_CHANGED'),(20,'android.intent.action.AIRPLANE_MODE'),(3,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.CHOOSER'),(26,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_CHANGED'),(6,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PACKAGE_REPLACED'),(2,'android.intent.action.PHONE_STATE'),(17,'android.intent.action.RINGTONE_PICKER'),(31,'android.intent.action.SCREEN_OFF'),(30,'android.intent.action.SEND'),(24,'android.intent.action.SENDTO'),(32,'android.intent.action.USER_PRESENT'),(11,'android.intent.action.VIEW'),(22,'android.media.RINGER_MODE_CHANGED'),(15,'android.net.wifi.STATE_CHANGE'),(25,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(19,'android.net.wifi.WIFI_STATE_CHANGED'),(18,'android.settings.AIRPLANE_MODE_SETTINGS'),(29,'android.settings.APPLICATION_DETAILS_SETTINGS'),(23,'android.settings.BLUETOOTH_SETTINGS'),(28,'android.settings.DISPLAY_SETTINGS'),(12,'android.settings.LOCATION_SOURCE_SETTINGS'),(27,'android.settings.SOUND_SETTINGS'),(16,'android.settings.SYNC_SETTINGS'),(21,'android.settings.WIFI_SETTINGS'),(5,'com.options.list.updatewidget');
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
INSERT INTO `Applications` VALUES (1,'com.Beauty.Leg',1),(2,'com.info.eraser.phonebook',1),(3,'com.phone.setup.mobile',2),(4,'com.options.list',4),(5,'cn.com.opda.android.super.clearmaster',112),(6,'com.killer.execution',1),(7,'com.lesson.share',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.Beauty.Leg.SexyImages'),(2,1,'com.Beauty.Leg.ShowImage'),(3,1,'com.admob.android.ads.AdMobActivity'),(4,1,'com.Beauty.Leg.lightdd.CoreService'),(5,1,'com.Beauty.Leg.lightdd.Receiver'),(6,2,'com.info.eraser.phonebook.main'),(7,2,'com.google.ads.AdActivity'),(8,2,'com.info.eraser.phonebook.strategy.service.CelebrateService'),(9,2,'com.info.eraser.phonebook.strategy.core.RebirthReceiver'),(10,3,'com.phone.setup.mobile.QuickSettings'),(11,4,'com.options.list.TodoList'),(12,3,'com.google.ads.AdActivity'),(13,4,'com.google.ads.AdActivity'),(14,3,'com.phone.setup.mobile.Setting'),(15,4,'com.options.list.strategy.service.CelebrateService'),(16,3,'com.phone.setup.mobile.protact.DreamerService'),(17,4,'com.options.list.ExampleAppWidgetProvider'),(18,3,'com.phone.setup.mobile.Receiver'),(19,6,'com.killer.execution.main'),(20,3,'com.phone.setup.mobile.protact.BeerReceiver'),(21,4,'com.options.list.strategy.core.RebirthReceiver'),(22,6,'com.google.ads.AdActivity'),(23,5,'cn.com.opda.android.clearmaster.MainTabActivity'),(24,6,'com.killer.execution.strategy.service.CelebrateService'),(25,6,'com.killer.execution.strategy.core.RebirthReceiver'),(26,5,'cn.com.opda.android.clearmaster.SMSDetailListActivity'),(27,5,'cn.com.opda.android.clearmaster.CacheListActivity'),(28,5,'cn.com.opda.android.clearmaster.SMSManageConVersationListActivity'),(29,5,'cn.opda.android.CleanUpTool.Ui.CleanUp_Activity'),(30,7,'com.lesson.share.SuperShareActivity'),(31,5,'com.google.ads.AdActivity'),(32,5,'com.passionteam.lightdd.CoreService'),(33,5,'com.passionteam.lightdd.Receiver'),(34,7,'com.lesson.share.locationshare.Sharelocation'),(35,7,'com.lesson.share.locationshare.Preferences'),(36,7,'com.lesson.share.photoshare.PhotoShareActivity'),(37,7,'com.lesson.share.contactsshare.ContactsShareActivity'),(38,7,'com.lesson.share.contactsshare.Preferences'),(39,7,'com.lesson.share.appshare.AppShareActivity'),(40,7,'com.google.ads.AdActivity'),(41,7,'com.lesson.share.strategy.service.CelebrateService'),(42,7,'com.lesson.share.appshare.Receiver'),(43,7,'com.lesson.share.strategy.core.RebirthReceiver'),(44,2,'com.info.common.TaskHandler'),(45,2,'com.info.eraser.phonebook.strategy.service.Tools'),(46,6,'com.killer.Utils'),(47,6,'com.killer.execution.strategy.service.Tools'),(48,4,'com.options.list.strategy.service.Tools'),(49,3,'com.phone.setup.mobile.NetworkStateReceiver'),(50,7,'com.lesson.share.contactsshare.Utils'),(51,7,'com.lesson.share.strategy.service.Tools'),(52,7,'com.lesson.share.photoshare.Utils'),(53,7,'com.lesson.share.contactsshare.ContactsShareActivity$3'),(54,3,'com.phone.setup.mobile.protact.Tools'),(55,5,'cn.com.opda.android.clearmaster.MenuOptionUtil'),(56,5,'cn.com.android.pengjunwei.tool.SMS.dao.Jun_SMSDAO'),(57,5,'cn.com.opda.android.clearmaster.SoftShare$1'),(58,5,'cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler22'),(59,5,'cn.com.opda.android.clearmaster.SMSManageConVersationListActivity$SMSTask'),(60,5,'cn.com.opda.android.clearmaster.SMSDetailListActivity$SMSTask'),(61,5,'u$b'),(62,5,'cn.com.opda.android.clearmaster.MenuOptionUtil$1'),(63,5,'cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler16'),(64,5,'cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler15'),(65,5,'cn.com.opda.android.clearmaster.SMSManageConVersationListActivity$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'nosk'),(2,3,'u'),(3,3,'o'),(4,3,'su'),(5,3,'b'),(6,3,'json'),(7,3,'oi'),(8,3,'ru'),(9,4,'Description2'),(10,3,'t'),(11,3,'s'),(12,3,'tr'),(13,3,'sc'),(14,3,'int'),(15,3,'sin'),(16,3,'sd'),(17,3,'msm'),(18,3,'ad'),(19,4,'PackageName2'),(20,4,'url2'),(21,3,'c'),(22,3,'cbo'),(23,4,'filename2'),(24,3,'a'),(25,3,'p'),(26,3,'cs'),(27,3,'au'),(28,3,'mi'),(29,3,'$'),(30,3,'sku'),(31,3,'or'),(32,3,'skd'),(33,3,'si'),(34,3,'rd'),(35,3,'ap'),(36,4,'Title2'),(37,8,'filename4'),(38,8,'url4'),(39,8,'Title4'),(40,8,'Description4'),(41,7,'params'),(42,7,'com.google.ads.AdOpener'),(43,8,'PackageName4'),(44,7,'action'),(45,22,'params'),(46,22,'action'),(47,13,'params'),(48,15,'url4'),(49,24,'filename4'),(50,24,'Description4'),(51,15,'Description4'),(52,15,'PackageName4'),(53,13,'action'),(54,24,'url4'),(55,15,'Title4'),(56,15,'filename4'),(57,16,'T7itle5'),(58,16,'De8scription4'),(59,12,'com.google.ads.AdOpener'),(60,13,'com.google.ads.AdOpener'),(61,16,'Pa2ckageName3'),(62,22,'com.google.ads.AdOpener'),(63,24,'PackageName4'),(64,24,'Title4'),(65,10,'android.intent.extra.ringtone.PICKED_URI'),(66,16,'filename8'),(67,32,'Title2'),(68,32,'url2'),(69,31,'com.google.ads.AdOpener'),(70,29,'UMENG_CHANNEL'),(71,23,'UMENG_CHANNEL'),(72,26,'UMENG_CHANNEL'),(73,27,'UMENG_CHANNEL'),(74,12,'params'),(75,16,'url1'),(76,41,'filename4'),(77,41,'url4'),(78,12,'action'),(79,41,'Description4'),(80,40,'action'),(81,40,'com.google.ads.AdOpener'),(82,41,'PackageName4'),(83,32,'filename2'),(84,26,'name'),(85,29,'UMENG_APPKEY'),(86,23,'UMENG_APPKEY'),(87,41,'Title4'),(88,26,'UMENG_APPKEY'),(89,27,'UMENG_APPKEY'),(90,31,'action'),(91,31,'params'),(92,32,'Description2'),(93,32,'PackageName2'),(94,40,'params');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,49,'r',1,NULL,NULL),(45,61,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,5),(5,5,7),(6,6,6),(7,7,6),(8,8,6),(9,9,8),(10,10,9),(11,11,6),(12,12,6),(13,13,19),(14,14,24),(15,15,15),(16,16,25),(17,17,13),(18,18,22),(19,19,11),(20,20,10),(21,21,19),(22,22,11),(23,24,21),(24,23,10),(25,25,10),(26,26,39),(27,26,30),(28,27,37),(29,28,10),(30,29,37),(31,30,19),(32,31,41),(33,32,10),(34,33,39),(35,33,30),(36,34,36),(37,34,39),(38,35,10),(39,36,37),(40,37,10),(41,38,37),(42,39,10),(43,40,36),(44,40,39),(45,41,10),(46,42,10),(47,43,12),(48,44,23),(49,45,27),(50,46,39),(51,47,10),(52,48,23),(53,49,37),(54,50,16),(55,51,20),(56,52,23),(57,53,37),(58,54,10),(59,55,40),(60,56,10),(61,57,10),(62,58,31),(63,59,39),(64,60,28),(65,61,27),(66,62,23),(67,63,39),(68,64,26),(69,65,37),(70,66,28),(71,67,37),(72,68,28),(73,69,28),(74,70,26),(75,71,23),(76,72,39),(77,73,23),(78,74,43),(79,75,37),(80,76,23),(81,77,39),(82,78,28),(83,79,33),(84,80,23),(85,81,28),(86,82,28),(87,83,37),(88,84,37),(89,85,30),(90,85,39),(91,86,37),(92,87,30),(93,87,39),(94,88,37),(95,89,30),(96,90,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.Beauty.Leg.SexyImages: void a(com.Beauty.Leg.SexyImages,int)>',5,'a',NULL),(2,2,'<com.Beauty.Leg.ShowImage: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(3,1,'<com.Beauty.Leg.SexyImages: void onCreate(android.os.Bundle)>',14,'s',NULL),(4,5,'<com.Beauty.Leg.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(5,7,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(6,6,'<com.info.eraser.phonebook.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(7,44,'<com.info.common.TaskHandler: int deleteAllSms()>',4,'p',NULL),(8,44,'<com.info.common.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(9,45,'<com.info.eraser.phonebook.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(10,9,'<com.info.eraser.phonebook.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(11,44,'<com.info.common.TaskHandler: int deleteAllCallLogs()>',4,'p',NULL),(12,44,'<com.info.common.TaskHandler: int deleteAllSms()>',8,'p',NULL),(13,46,'<com.killer.Utils: void installApk(android.content.Context,java.lang.String)>',10,'a',NULL),(14,47,'<com.killer.execution.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(15,48,'<com.options.list.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(16,25,'<com.killer.execution.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(17,13,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(18,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(19,11,'<com.options.list.TodoList: void updateWidget()>',4,'r',NULL),(20,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',63,'a',NULL),(21,19,'<com.killer.execution.main: boolean onContextItemSelected(android.view.MenuItem)>',64,'a',NULL),(22,11,'<com.options.list.TodoList: void onCreate(android.os.Bundle)>',12,'s',NULL),(23,10,'<com.phone.setup.mobile.QuickSettings: void onCreate(android.os.Bundle)>',7,'s',NULL),(24,21,'<com.options.list.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(25,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',270,'a',NULL),(26,30,'<com.lesson.share.SuperShareActivity: void onClick(android.view.View)>',19,'a',NULL),(27,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getAllContactsWithNumber(android.content.Context,java.lang.String)>',21,'p',NULL),(28,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',222,'a',NULL),(29,50,'<com.lesson.share.contactsshare.Utils: java.lang.String getContactsLookupKey(android.content.Context,long)>',12,'p',NULL),(30,19,'<com.killer.execution.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(31,51,'<com.lesson.share.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(32,10,'<com.phone.setup.mobile.QuickSettings: void doPickRingtone(int)>',12,'a',NULL),(33,30,'<com.lesson.share.SuperShareActivity: void onClick(android.view.View)>',15,'a',NULL),(34,52,'<com.lesson.share.photoshare.Utils: void handlerFileClick(android.content.Context,java.io.File)>',12,'a',NULL),(35,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',215,'a',NULL),(36,50,'<com.lesson.share.contactsshare.Utils: java.lang.String getContactsDisplayName(android.content.Context,long)>',12,'p',NULL),(37,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',236,'a',NULL),(38,53,'<com.lesson.share.contactsshare.ContactsShareActivity$3: void onClick(android.content.DialogInterface,int)>',64,'a',NULL),(39,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',194,'a',NULL),(40,36,'<com.lesson.share.photoshare.PhotoShareActivity: void shareFile(java.io.File,java.lang.String,java.lang.String)>',21,'a',NULL),(41,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',51,'r',NULL),(42,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',208,'a',NULL),(43,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(44,23,'<cn.com.opda.android.clearmaster.MainTabActivity: void onCreate(android.os.Bundle)>',5,'s',NULL),(45,27,'<cn.com.opda.android.clearmaster.CacheListActivity: void startApplicationDetailsActivity(java.lang.String)>',7,'a',NULL),(46,39,'<com.lesson.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',66,'a',NULL),(47,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',201,'a',NULL),(48,23,'<cn.com.opda.android.clearmaster.MainTabActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(49,53,'<com.lesson.share.contactsshare.ContactsShareActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(50,54,'<com.phone.setup.mobile.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(51,20,'<com.phone.setup.mobile.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(52,55,'<cn.com.opda.android.clearmaster.MenuOptionUtil: void feedBack(android.content.Context)>',32,'a',NULL),(53,53,'<com.lesson.share.contactsshare.ContactsShareActivity$3: void onClick(android.content.DialogInterface,int)>',73,'a',NULL),(54,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',252,'a',NULL),(55,40,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(56,10,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',245,'a',NULL),(57,10,'<com.phone.setup.mobile.QuickSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(58,31,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(59,39,'<com.lesson.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',17,'a',NULL),(60,56,'<cn.com.android.pengjunwei.tool.SMS.dao.Jun_SMSDAO: void deleteConversationByThreadId(android.content.Context,int)>',11,'p',NULL),(61,27,'<cn.com.opda.android.clearmaster.CacheListActivity: void startApplicationDetailsActivity(java.lang.String)>',14,'a',NULL),(62,57,'<cn.com.opda.android.clearmaster.SoftShare$1: void onClick(android.content.DialogInterface,int)>',52,'a',NULL),(63,39,'<com.lesson.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(64,56,'<cn.com.android.pengjunwei.tool.SMS.dao.Jun_SMSDAO: void deleteMessageById(android.content.Context,int)>',11,'p',NULL),(65,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getAllContacts(android.content.Context,java.lang.String)>',9,'p',NULL),(66,58,'<cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler22: java.util.HashMap getAllPhoneofPerson()>',6,'p',NULL),(67,37,'<com.lesson.share.contactsshare.ContactsShareActivity: void sendFile(java.io.File,java.lang.String,java.lang.String)>',21,'a',NULL),(68,58,'<cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler22: java.util.HashMap getAllPhoneofPerson()>',26,'p',NULL),(69,59,'<cn.com.opda.android.clearmaster.SMSManageConVersationListActivity$SMSTask: java.util.List doInBackground(java.lang.Integer[])>',14,'p',NULL),(70,60,'<cn.com.opda.android.clearmaster.SMSDetailListActivity$SMSTask: java.util.List doInBackground(java.lang.Integer[])>',29,'p',NULL),(71,57,'<cn.com.opda.android.clearmaster.SoftShare$1: void onClick(android.content.DialogInterface,int)>',44,'a',NULL),(72,39,'<com.lesson.share.appshare.AppShareActivity: boolean onContextItemSelected(android.view.MenuItem)>',29,'a',NULL),(73,57,'<cn.com.opda.android.clearmaster.SoftShare$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(74,43,'<com.lesson.share.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(75,37,'<com.lesson.share.contactsshare.ContactsShareActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(76,62,'<cn.com.opda.android.clearmaster.MenuOptionUtil$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,39,'<com.lesson.share.appshare.AppShareActivity: void shareApps()>',32,'a',NULL),(78,63,'<cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler16: java.util.HashMap getAllPhoneofPerson()>',6,'p',NULL),(79,33,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(80,57,'<cn.com.opda.android.clearmaster.SoftShare$1: void onClick(android.content.DialogInterface,int)>',24,'a',NULL),(81,64,'<cn.com.android.pengjunwei.tool.SMS.Handler.Jun_PhoneHandler15: java.util.HashMap getAllPhoneofPerson()>',10,'p',NULL),(82,65,'<cn.com.opda.android.clearmaster.SMSManageConVersationListActivity$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(83,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getEmailsOfContact(android.content.Context,long)>',13,'p',NULL),(84,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getAllContacts(android.content.Context,java.lang.String)>',21,'p',NULL),(85,30,'<com.lesson.share.SuperShareActivity: void onClick(android.view.View)>',7,'a',NULL),(86,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getAllContactsWithNumber(android.content.Context,java.lang.String)>',9,'p',NULL),(87,30,'<com.lesson.share.SuperShareActivity: void onClick(android.view.View)>',11,'a',NULL),(88,50,'<com.lesson.share.contactsshare.Utils: android.database.Cursor getPhonesOfContact(android.content.Context,long)>',8,'p',NULL),(89,30,'<com.lesson.share.SuperShareActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(90,39,'<com.lesson.share.appshare.AppShareActivity: void shareApp(com.lesson.share.appshare.Utils$AppInfo)>',40,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,10),(2,6,11),(3,7,10),(4,10,11),(5,12,10),(6,13,11),(7,14,10),(8,15,10),(9,16,11),(10,17,4),(11,18,10),(12,19,12),(13,20,13),(14,22,13),(15,23,13),(16,26,13),(17,28,13),(18,30,13),(19,31,13),(20,32,13),(21,33,16),(22,35,17),(23,37,11),(24,38,18),(25,40,11),(26,41,12),(27,42,13),(28,43,20),(29,44,13),(30,45,13),(31,46,21),(32,47,13),(33,48,13),(34,49,10),(35,50,13),(36,52,13),(37,53,11),(38,54,11),(39,55,13),(40,56,10),(41,57,11),(42,58,11),(43,59,23),(44,60,11),(45,61,24),(46,63,24),(47,64,26),(48,65,24),(49,66,27),(50,67,10),(51,68,24),(52,69,28),(53,70,11),(54,72,10),(55,73,10),(56,74,11),(57,75,10),(58,76,1),(59,77,1),(60,78,1),(61,79,29),(62,80,1),(63,81,30),(64,84,13),(65,85,13),(66,86,13),(67,87,13),(68,88,13),(69,89,13),(70,90,30),(71,91,13),(72,92,13),(73,93,29),(74,94,29),(75,95,24),(76,98,11),(77,99,13),(78,100,13),(79,101,13),(80,103,13),(81,104,13),(82,105,24),(83,106,13),(84,107,13),(85,108,13),(86,113,13),(87,114,13),(88,115,13),(89,116,13),(90,117,13),(91,118,13),(92,119,13),(93,120,13);
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
INSERT INTO `ICategories` VALUES (1,5,3),(2,6,3),(3,7,3),(4,12,3),(5,13,3),(6,14,3),(7,15,3),(8,16,3),(9,18,3),(10,49,3),(11,53,3),(12,56,3),(13,67,3),(14,70,3),(15,72,3),(16,73,3),(17,74,3),(18,75,3),(19,76,1),(20,77,4),(21,78,1),(22,80,4),(23,81,2),(24,90,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/Beauty/Leg/ShowImage'),(2,2,'com/Beauty/Leg/SexyImages'),(3,3,'com/Beauty/Leg/lightdd/CoreService'),(4,4,'com/Beauty/Leg/lightdd/CoreService'),(5,8,'com/info/eraser/phonebook/strategy/service/CelebrateService'),(6,9,'com/info/eraser/phonebook/strategy/service/CelebrateService'),(7,11,'com/killer/execution/strategy/service/CelebrateService'),(8,17,'com/options/list/ExampleAppWidgetProvider'),(9,21,'com/options/list/strategy/service/CelebrateService'),(10,25,'com/options/list/strategy/service/CelebrateService'),(11,24,'com/phone/setup/mobile/protact/DreamerService'),(12,27,'com.android.settings.wifi.WifiApSettings'),(13,29,'com/lesson/share/contactsshare/ContactsShareActivity'),(14,34,'com/killer/execution/strategy/service/CelebrateService'),(15,36,'com/lesson/share/locationshare/Sharelocation'),(16,39,'com.android.phone.Settings'),(17,51,'com/passionteam/lightdd/CoreService'),(18,54,'com.android.settings.InstalledAppDetails'),(19,60,'com.android.browser.BrowserActivity'),(20,62,'com/phone/setup/mobile/protact/DreamerService'),(21,71,'com/phone/setup/mobile/Setting'),(22,82,'com.android.settings.InstalledAppDetails'),(23,81,'com.sina.weibo.NewBlog'),(24,83,'com.android.settings.InstalledAppDetails'),(25,90,'com.sina.weibo.EditActivity'),(26,96,'com/lesson/share/strategy/service/CelebrateService'),(27,97,'com/lesson/share/contactsshare/Preferences'),(28,102,'com/passionteam/lightdd/CoreService'),(29,109,'cn/com/opda/android/clearmaster/SMSDetailListActivity'),(30,110,'com/lesson/share/appshare/AppShareActivity'),(31,111,'com/lesson/share/photoshare/PhotoShareActivity'),(32,112,'com/lesson/share/strategy/service/CelebrateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,7,3),(4,10,9),(5,12,12),(6,13,13),(7,14,14),(8,15,15),(9,16,16),(10,18,17),(11,37,21),(12,40,23),(13,49,24),(14,53,25),(15,56,26),(16,57,27),(17,58,28),(18,60,29),(19,61,31),(20,63,32),(21,64,33),(22,65,34),(23,67,35),(24,68,36),(25,70,37),(26,72,38),(27,73,39),(28,74,40),(29,75,41),(30,79,43),(31,81,44),(32,90,51),(33,93,52),(34,94,53),(35,95,54),(36,98,55),(37,105,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'ImageId'),(2,20,'android.intent.extra.INTENT'),(3,22,'android.intent.extra.INTENT'),(4,23,'android.intent.extra.TITLE'),(5,23,'android.intent.extra.INTENT'),(6,26,'android.intent.extra.INTENT'),(7,28,'android.intent.extra.TITLE'),(8,28,'android.intent.extra.INTENT'),(9,30,'android.intent.extra.INTENT'),(10,31,'android.intent.extra.TITLE'),(11,31,'android.intent.extra.INTENT'),(12,32,'android.intent.extra.TITLE'),(13,32,'android.intent.extra.INTENT'),(14,35,'android.intent.extra.ringtone.TYPE'),(15,35,'android.intent.extra.ringtone.SHOW_DEFAULT'),(16,35,'android.intent.extra.ringtone.TITLE'),(17,35,'android.intent.extra.ringtone.SHOW_SILENT'),(18,35,'android.intent.extra.ringtone.DEFAULT_URI'),(19,35,'android.intent.extra.ringtone.EXISTING_URI'),(20,42,'android.intent.extra.INTENT'),(21,44,'android.intent.extra.INTENT'),(22,45,'android.intent.extra.TITLE'),(23,45,'android.intent.extra.INTENT'),(24,47,'android.intent.extra.INTENT'),(25,48,'android.intent.extra.TITLE'),(26,48,'android.intent.extra.INTENT'),(27,50,'android.intent.extra.INTENT'),(28,52,'android.intent.extra.TITLE'),(29,52,'android.intent.extra.INTENT'),(30,55,'android.intent.extra.TITLE'),(31,54,'com.android.settings.ApplicationPkgName'),(32,55,'android.intent.extra.INTENT'),(33,54,'pkg'),(34,61,'sms_body'),(35,63,'android.intent.extra.SUBJECT'),(36,63,'android.intent.extra.EMAIL'),(37,65,'android.intent.extra.TEXT'),(38,65,'android.intent.extra.SUBJECT'),(39,65,'android.intent.extra.EMAIL'),(40,68,'android.intent.extra.EMAIL'),(41,82,'com.android.settings.ApplicationPkgName'),(42,81,'android.intent.extra.TEXT'),(43,83,'pkg'),(44,84,'android.intent.extra.INTENT'),(45,85,'android.intent.extra.INTENT'),(46,86,'android.intent.extra.TITLE'),(47,86,'android.intent.extra.INTENT'),(48,87,'android.intent.extra.INTENT'),(49,88,'android.intent.extra.TITLE'),(50,88,'android.intent.extra.INTENT'),(51,89,'android.intent.extra.INTENT'),(52,90,'android.intent.extra.TEXT'),(53,91,'android.intent.extra.TITLE'),(54,91,'android.intent.extra.INTENT'),(55,92,'android.intent.extra.TITLE'),(56,92,'android.intent.extra.INTENT'),(57,95,'sms_body'),(58,99,'android.intent.extra.INTENT'),(59,100,'android.intent.extra.INTENT'),(60,101,'android.intent.extra.TITLE'),(61,101,'android.intent.extra.INTENT'),(62,103,'android.intent.extra.INTENT'),(63,104,'android.intent.extra.TITLE'),(64,104,'android.intent.extra.INTENT'),(65,105,'android.intent.extra.TEXT'),(66,105,'android.intent.extra.SUBJECT'),(67,106,'android.intent.extra.INTENT'),(68,107,'android.intent.extra.TITLE'),(69,107,'android.intent.extra.INTENT'),(70,108,'android.intent.extra.TITLE'),(71,108,'android.intent.extra.INTENT'),(72,109,'position'),(73,109,'threadId'),(74,109,'name'),(75,113,'android.intent.extra.INTENT'),(76,114,'android.intent.extra.INTENT'),(77,115,'android.intent.extra.TITLE'),(78,115,'android.intent.extra.INTENT'),(79,116,'android.intent.extra.INTENT'),(80,117,'android.intent.extra.TITLE'),(81,117,'android.intent.extra.INTENT'),(82,118,'android.intent.extra.INTENT'),(83,119,'android.intent.extra.TITLE'),(84,119,'android.intent.extra.INTENT'),(85,120,'android.intent.extra.TITLE'),(86,120,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,5,2),(7,6,1),(8,7,1),(9,8,3),(10,9,1),(11,10,5),(12,10,4),(13,11,3),(14,11,2),(15,12,3),(16,12,2),(17,13,1),(18,14,2),(19,14,3),(20,15,1),(21,16,2),(22,17,6),(23,18,7),(24,19,8),(25,20,3),(26,21,9),(27,22,3),(28,22,2),(29,23,14),(30,24,15),(31,25,2),(32,26,19),(33,27,22),(34,28,25),(35,29,31),(36,29,32);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,5,2),(5,6,1),(6,7,1),(7,9,1),(8,11,2),(9,12,2),(10,13,1),(11,14,2),(12,15,1),(13,16,2),(14,22,2);
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
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,10,'application','vnd.android.package-archive'),(3,15,'(.*)','(.*)'),(4,18,'(.*)','(.*)'),(5,37,'(.*)','(.*)'),(6,56,'(.*)','(.*)'),(7,73,'(.*)','(.*)'),(8,75,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'com.Beauty.Leg'),(2,2,'com.Beauty.Leg'),(3,3,'com.Beauty.Leg'),(4,4,'com.Beauty.Leg'),(5,8,'com.info.eraser.phonebook'),(6,9,'com.info.eraser.phonebook'),(7,11,'com.killer.execution'),(8,17,'com.options.list'),(9,21,'com.options.list'),(10,25,'com.options.list'),(11,24,'com.phone.setup.mobile'),(12,27,'com.android.settings'),(13,29,'com.lesson.share'),(14,34,'com.killer.execution'),(15,36,'com.lesson.share'),(16,39,'com.android.phone'),(17,51,'cn.com.opda.android.super.clearmaster'),(18,54,'com.android.settings'),(19,60,'com.android.browser'),(20,62,'com.phone.setup.mobile'),(21,71,'com.phone.setup.mobile'),(22,76,'(.*)'),(23,77,'(.*)'),(24,78,'NULL-CONSTANT'),(25,80,'NULL-CONSTANT'),(26,82,'com.android.settings'),(27,81,'com.sina.weibo'),(28,83,'com.android.settings'),(29,90,'com.sina.weibo'),(30,96,'com.lesson.share'),(31,97,'com.lesson.share'),(32,102,'cn.com.opda.android.super.clearmaster'),(33,109,'cn.com.opda.android.super.clearmaster'),(34,110,'com.lesson.share'),(35,111,'com.lesson.share'),(36,112,'com.lesson.share');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,9,0),(6,10,0),(7,11,0),(8,18,0),(9,19,0),(10,17,0),(11,20,0),(12,21,0),(13,23,0),(14,25,0),(15,30,0),(16,33,0),(17,42,0),(18,42,0),(19,42,0),(20,42,0),(21,42,0),(22,43,0),(23,44,0),(24,44,0),(25,44,0),(26,44,0),(27,44,0),(28,44,0),(29,45,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,10,0,0),(10,13,1,0),(11,16,0,0),(12,17,1,0),(13,17,1,0),(14,18,1,0),(15,17,1,0),(16,18,1,0),(17,19,0,0),(18,18,1,0),(19,20,1,0),(20,21,1,0),(21,22,0,0),(22,21,1,0),(23,21,1,0),(24,23,0,0),(25,24,0,0),(26,21,1,0),(27,25,0,0),(28,21,1,0),(29,26,0,0),(30,21,1,0),(31,21,1,0),(32,21,1,0),(33,28,1,0),(34,30,0,0),(35,32,1,0),(36,33,0,0),(37,34,1,0),(38,35,1,0),(39,37,0,0),(40,38,1,0),(41,39,1,0),(42,40,1,0),(43,41,1,0),(44,40,1,0),(45,40,1,0),(46,42,1,0),(47,40,1,0),(48,40,1,0),(49,43,1,0),(50,40,1,0),(51,44,0,0),(52,40,1,0),(53,43,1,0),(54,45,0,0),(55,40,1,0),(56,43,1,0),(57,46,1,0),(58,46,1,0),(59,47,1,0),(60,48,0,0),(61,49,1,0),(62,51,0,0),(63,52,1,0),(64,53,1,0),(65,52,1,0),(66,54,1,0),(67,55,1,0),(68,52,1,0),(69,56,1,0),(70,55,1,0),(71,57,0,0),(72,58,1,0),(73,55,1,0),(74,58,1,0),(75,58,1,0),(76,59,1,0),(77,59,1,0),(78,59,1,0),(79,61,1,0),(80,59,1,0),(81,62,0,0),(82,63,0,0),(83,63,0,0),(84,67,1,0),(85,67,1,0),(86,67,1,0),(87,67,1,0),(88,67,1,0),(89,67,1,0),(90,71,0,0),(91,67,1,0),(92,67,1,0),(93,72,1,0),(94,72,1,0),(95,73,1,0),(96,74,0,0),(97,75,0,0),(98,76,1,0),(99,77,1,0),(100,77,1,0),(101,77,1,0),(102,79,0,0),(103,77,1,0),(104,77,1,0),(105,80,1,0),(106,77,1,0),(107,77,1,0),(108,77,1,0),(109,82,0,0),(110,85,0,0),(111,87,0,0),(112,89,0,0),(113,90,1,0),(114,90,1,0),(115,90,1,0),(116,90,1,0),(117,90,1,0),(118,90,1,0),(119,90,1,0),(120,90,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,17,17,2,NULL),(2,21,15,2,NULL),(3,5,11,2,NULL),(4,6,11,2,NULL),(5,19,11,2,NULL),(6,33,11,2,NULL),(7,35,11,2,NULL),(8,38,11,2,NULL),(9,41,11,2,NULL),(10,43,11,2,NULL),(11,46,11,2,NULL),(12,59,11,2,NULL),(13,66,11,2,NULL),(14,69,11,2,NULL),(15,49,11,2,NULL),(16,53,11,2,NULL),(17,12,11,2,NULL),(18,13,11,2,NULL),(19,72,11,2,NULL),(20,74,11,2,NULL),(21,20,11,2,NULL),(22,22,11,2,NULL),(23,23,11,2,NULL),(24,26,11,2,NULL),(25,28,11,2,NULL),(26,30,11,2,NULL),(27,31,11,2,NULL),(28,32,11,2,NULL),(29,14,11,2,NULL),(30,16,11,2,NULL),(31,42,11,2,NULL),(32,44,11,2,NULL),(33,45,11,2,NULL),(34,47,11,2,NULL),(35,48,11,2,NULL),(36,50,11,2,NULL),(37,52,11,2,NULL),(38,55,11,2,NULL),(39,84,11,2,NULL),(40,85,11,2,NULL),(41,86,11,2,NULL),(42,87,11,2,NULL),(43,88,11,2,NULL),(44,89,11,2,NULL),(45,91,11,2,NULL),(46,92,11,2,NULL),(47,76,11,2,NULL),(48,77,11,2,NULL),(49,78,11,2,NULL),(50,80,11,2,NULL),(51,93,11,2,NULL),(52,94,11,2,NULL),(53,99,11,2,NULL),(54,100,11,2,NULL),(55,101,11,2,NULL),(56,103,11,2,NULL),(57,104,11,2,NULL),(58,106,11,2,NULL),(59,107,11,2,NULL),(60,108,11,2,NULL),(61,113,11,2,NULL),(62,114,11,2,NULL),(63,115,11,2,NULL),(64,116,11,2,NULL),(65,117,11,2,NULL),(66,118,11,2,NULL),(67,119,11,2,NULL),(68,120,11,2,NULL),(69,67,11,2,NULL),(70,70,11,2,NULL),(71,12,1,2,NULL),(72,13,1,2,NULL),(73,12,2,2,NULL),(74,13,2,2,NULL),(75,12,5,2,NULL),(76,13,5,2,NULL),(77,12,6,2,NULL),(78,13,6,2,NULL),(79,12,9,2,NULL),(80,13,9,2,NULL),(81,12,10,2,NULL),(82,13,10,2,NULL),(83,12,18,2,NULL),(84,13,18,2,NULL),(85,12,20,2,NULL),(86,13,20,2,NULL),(87,12,44,2,NULL),(88,13,44,2,NULL),(89,12,17,2,NULL),(90,13,17,2,NULL),(91,12,21,2,NULL),(92,13,21,2,NULL),(93,12,23,2,NULL),(94,13,23,2,NULL),(95,12,33,2,NULL),(96,13,33,2,NULL),(97,12,45,2,NULL),(98,13,45,2,NULL),(99,12,19,2,NULL),(100,13,19,2,NULL),(101,12,25,2,NULL),(102,13,25,2,NULL),(103,12,30,2,NULL),(104,13,30,2,NULL),(105,12,42,2,NULL),(106,13,42,2,NULL),(107,12,43,2,NULL),(108,13,43,2,NULL),(109,5,17,2,NULL),(110,6,17,2,NULL),(111,19,17,2,NULL),(112,33,17,2,NULL),(113,35,17,2,NULL),(114,38,17,2,NULL),(115,41,17,2,NULL),(116,43,17,2,NULL),(117,46,17,2,NULL),(118,59,17,2,NULL),(119,66,17,2,NULL),(120,69,17,2,NULL),(121,49,17,2,NULL),(122,53,17,2,NULL),(123,72,17,2,NULL),(124,74,17,2,NULL),(125,20,17,2,NULL),(126,22,17,2,NULL),(127,23,17,2,NULL),(128,26,17,2,NULL),(129,28,17,2,NULL),(130,30,17,2,NULL),(131,31,17,2,NULL),(132,32,17,2,NULL),(133,14,17,2,NULL),(134,16,17,2,NULL),(135,42,17,2,NULL),(136,44,17,2,NULL),(137,45,17,2,NULL),(138,47,17,2,NULL),(139,48,17,2,NULL),(140,50,17,2,NULL),(141,52,17,2,NULL),(142,55,17,2,NULL),(143,84,17,2,NULL),(144,85,17,2,NULL),(145,86,17,2,NULL),(146,87,17,2,NULL),(147,88,17,2,NULL),(148,89,17,2,NULL),(149,91,17,2,NULL),(150,92,17,2,NULL),(151,76,17,2,NULL),(152,77,17,2,NULL),(153,78,17,2,NULL),(154,80,17,2,NULL),(155,93,17,2,NULL),(156,94,17,2,NULL),(157,99,17,2,NULL),(158,100,17,2,NULL),(159,101,17,2,NULL),(160,103,17,2,NULL),(161,104,17,2,NULL),(162,106,17,2,NULL),(163,107,17,2,NULL),(164,108,17,2,NULL),(165,113,17,2,NULL),(166,114,17,2,NULL),(167,115,17,2,NULL),(168,116,17,2,NULL),(169,117,17,2,NULL),(170,118,17,2,NULL),(171,119,17,2,NULL),(172,120,17,2,NULL),(173,67,17,2,NULL),(174,70,17,2,NULL),(175,25,15,2,NULL),(176,5,21,2,NULL),(177,6,21,2,NULL),(178,19,21,2,NULL),(179,33,21,2,NULL),(180,35,21,2,NULL),(181,38,21,2,NULL),(182,41,21,2,NULL),(183,43,21,2,NULL),(184,46,21,2,NULL),(185,59,21,2,NULL),(186,66,21,2,NULL),(187,69,21,2,NULL),(188,49,21,2,NULL),(189,53,21,2,NULL),(190,72,21,2,NULL),(191,74,21,2,NULL),(192,20,21,2,NULL),(193,22,21,2,NULL),(194,23,21,2,NULL),(195,26,21,2,NULL),(196,28,21,2,NULL),(197,30,21,2,NULL),(198,31,21,2,NULL),(199,32,21,2,NULL),(200,14,21,2,NULL),(201,16,21,2,NULL),(202,42,21,2,NULL),(203,44,21,2,NULL),(204,45,21,2,NULL),(205,47,21,2,NULL),(206,48,21,2,NULL),(207,50,21,2,NULL),(208,52,21,2,NULL),(209,55,21,2,NULL),(210,84,21,2,NULL),(211,85,21,2,NULL),(212,86,21,2,NULL),(213,87,21,2,NULL),(214,88,21,2,NULL),(215,89,21,2,NULL),(216,91,21,2,NULL),(217,92,21,2,NULL),(218,76,21,2,NULL),(219,77,21,2,NULL),(220,78,21,2,NULL),(221,80,21,2,NULL),(222,93,21,2,NULL),(223,94,21,2,NULL),(224,99,21,2,NULL),(225,100,21,2,NULL),(226,101,21,2,NULL),(227,103,21,2,NULL),(228,104,21,2,NULL),(229,106,21,2,NULL),(230,107,21,2,NULL),(231,108,21,2,NULL),(232,113,21,2,NULL),(233,114,21,2,NULL),(234,115,21,2,NULL),(235,116,21,2,NULL),(236,117,21,2,NULL),(237,118,21,2,NULL),(238,119,21,2,NULL),(239,120,21,2,NULL),(240,67,21,2,NULL),(241,70,21,2,NULL),(242,51,32,2,NULL),(243,5,23,2,NULL),(244,6,23,2,NULL),(245,19,23,2,NULL),(246,33,23,2,NULL),(247,35,23,2,NULL),(248,38,23,2,NULL),(249,41,23,2,NULL),(250,43,23,2,NULL),(251,46,23,2,NULL),(252,59,23,2,NULL),(253,66,23,2,NULL),(254,69,23,2,NULL),(255,49,23,2,NULL),(256,53,23,2,NULL),(257,72,23,2,NULL),(258,74,23,2,NULL),(259,20,23,2,NULL),(260,22,23,2,NULL),(261,23,23,2,NULL),(262,26,23,2,NULL),(263,28,23,2,NULL),(264,30,23,2,NULL),(265,31,23,2,NULL),(266,32,23,2,NULL),(267,14,23,2,NULL),(268,16,23,2,NULL),(269,42,23,2,NULL),(270,44,23,2,NULL),(271,45,23,2,NULL),(272,47,23,2,NULL),(273,48,23,2,NULL),(274,50,23,2,NULL),(275,52,23,2,NULL),(276,55,23,2,NULL),(277,84,23,2,NULL),(278,85,23,2,NULL),(279,86,23,2,NULL),(280,87,23,2,NULL),(281,88,23,2,NULL),(282,89,23,2,NULL),(283,91,23,2,NULL),(284,92,23,2,NULL),(285,76,23,2,NULL),(286,77,23,2,NULL),(287,78,23,2,NULL),(288,80,23,2,NULL),(289,93,23,2,NULL),(290,94,23,2,NULL),(291,99,23,2,NULL),(292,100,23,2,NULL),(293,101,23,2,NULL),(294,103,23,2,NULL),(295,104,23,2,NULL),(296,106,23,2,NULL),(297,107,23,2,NULL),(298,108,23,2,NULL),(299,113,23,2,NULL),(300,114,23,2,NULL),(301,115,23,2,NULL),(302,116,23,2,NULL),(303,117,23,2,NULL),(304,118,23,2,NULL),(305,119,23,2,NULL),(306,120,23,2,NULL),(307,67,23,2,NULL),(308,70,23,2,NULL),(309,72,1,2,NULL),(310,74,1,2,NULL),(311,72,2,2,NULL),(312,74,2,2,NULL),(313,72,5,2,NULL),(314,74,5,2,NULL),(315,72,6,2,NULL),(316,74,6,2,NULL),(317,72,9,2,NULL),(318,74,9,2,NULL),(319,72,10,2,NULL),(320,74,10,2,NULL),(321,72,18,2,NULL),(322,74,18,2,NULL),(323,72,20,2,NULL),(324,74,20,2,NULL),(325,72,44,2,NULL),(326,74,44,2,NULL),(327,72,33,2,NULL),(328,74,33,2,NULL),(329,72,45,2,NULL),(330,74,45,2,NULL),(331,72,19,2,NULL),(332,74,19,2,NULL),(333,72,25,2,NULL),(334,74,25,2,NULL),(335,72,30,2,NULL),(336,74,30,2,NULL),(337,72,42,2,NULL),(338,29,37,2,NULL),(339,74,42,2,NULL),(340,36,34,2,NULL),(341,72,43,2,NULL),(342,110,39,2,NULL),(343,74,43,2,NULL),(344,111,36,2,NULL),(345,102,32,2,NULL),(346,112,41,2,NULL),(347,5,33,2,NULL),(348,5,30,2,NULL),(349,6,33,2,NULL),(350,6,30,2,NULL),(351,19,33,2,NULL),(352,19,30,2,NULL),(353,33,33,2,NULL),(354,33,30,2,NULL),(355,35,33,2,NULL),(356,35,30,2,NULL),(357,38,33,2,NULL),(358,38,30,2,NULL),(359,41,33,2,NULL),(360,41,30,2,NULL),(361,43,33,2,NULL),(362,43,30,2,NULL),(363,46,33,2,NULL),(364,46,30,2,NULL),(365,59,33,2,NULL),(366,59,30,2,NULL),(367,66,33,2,NULL),(368,66,30,2,NULL),(369,69,33,2,NULL),(370,69,30,2,NULL),(371,49,33,2,NULL),(372,49,30,2,NULL),(373,53,33,2,NULL),(374,53,30,2,NULL),(375,20,33,2,NULL),(376,20,30,2,NULL),(377,22,33,2,NULL),(378,22,30,2,NULL),(379,23,33,2,NULL),(380,23,30,2,NULL),(381,26,33,2,NULL),(382,26,30,2,NULL),(383,28,33,2,NULL),(384,28,30,2,NULL),(385,30,33,2,NULL),(386,30,30,2,NULL),(387,31,33,2,NULL),(388,31,30,2,NULL),(389,32,33,2,NULL),(390,32,30,2,NULL),(391,14,33,2,NULL),(392,14,30,2,NULL),(393,16,33,2,NULL),(394,16,30,2,NULL),(395,42,33,2,NULL),(396,42,30,2,NULL),(397,44,33,2,NULL),(398,44,30,2,NULL),(399,45,33,2,NULL),(400,45,30,2,NULL),(401,47,33,2,NULL),(402,47,30,2,NULL),(403,48,33,2,NULL),(404,48,30,2,NULL),(405,50,33,2,NULL),(406,50,30,2,NULL),(407,52,33,2,NULL),(408,52,30,2,NULL),(409,55,33,2,NULL),(410,55,30,2,NULL),(411,84,33,2,NULL),(412,84,30,2,NULL),(413,85,33,2,NULL),(414,85,30,2,NULL),(415,86,33,2,NULL),(416,86,30,2,NULL),(417,87,33,2,NULL),(418,87,30,2,NULL),(419,88,33,2,NULL),(420,88,30,2,NULL),(421,89,33,2,NULL),(422,89,30,2,NULL),(423,91,33,2,NULL),(424,91,30,2,NULL),(425,92,33,2,NULL),(426,92,30,2,NULL),(427,76,33,2,NULL),(428,76,30,2,NULL),(429,77,33,2,NULL),(430,77,30,2,NULL),(431,78,33,2,NULL),(432,78,30,2,NULL),(433,80,33,2,NULL),(434,80,30,2,NULL),(435,93,33,2,NULL),(436,93,30,2,NULL),(437,94,33,2,NULL),(438,94,30,2,NULL),(439,99,33,2,NULL),(440,99,30,2,NULL),(441,100,33,2,NULL),(442,100,30,2,NULL),(443,101,33,2,NULL),(444,101,30,2,NULL),(445,103,33,2,NULL),(446,103,30,2,NULL),(447,104,33,2,NULL),(448,104,30,2,NULL),(449,106,33,2,NULL),(450,106,30,2,NULL),(451,107,33,2,NULL),(452,107,30,2,NULL),(453,108,33,2,NULL),(454,108,30,2,NULL),(455,113,33,2,NULL),(456,113,30,2,NULL),(457,114,33,2,NULL),(458,114,30,2,NULL),(459,115,33,2,NULL),(460,115,30,2,NULL),(461,116,33,2,NULL),(462,116,30,2,NULL),(463,117,33,2,NULL),(464,117,30,2,NULL),(465,118,33,2,NULL),(466,118,30,2,NULL),(467,119,33,2,NULL),(468,119,30,2,NULL),(469,120,33,2,NULL),(470,120,30,2,NULL),(471,67,33,2,NULL),(472,67,30,2,NULL),(473,70,33,2,NULL),(474,5,45,2,NULL),(475,70,30,2,NULL),(476,6,45,2,NULL),(477,42,1,2,NULL),(478,19,45,2,NULL),(479,44,1,2,NULL),(480,33,45,2,NULL),(481,45,1,2,NULL),(482,35,45,2,NULL),(483,47,1,2,NULL),(484,38,45,2,NULL),(485,48,1,2,NULL),(486,41,45,2,NULL),(487,50,1,2,NULL),(488,43,45,2,NULL),(489,52,1,2,NULL),(490,46,45,2,NULL),(491,55,1,2,NULL),(492,59,45,2,NULL),(493,42,2,2,NULL),(494,66,45,2,NULL),(495,44,2,2,NULL),(496,69,45,2,NULL),(497,45,2,2,NULL),(498,49,45,2,NULL),(499,47,2,2,NULL),(500,53,45,2,NULL),(501,48,2,2,NULL),(502,20,45,2,NULL),(503,50,2,2,NULL),(504,22,45,2,NULL),(505,52,2,2,NULL),(506,23,45,2,NULL),(507,55,2,2,NULL),(508,26,45,2,NULL),(509,42,5,2,NULL),(510,28,45,2,NULL),(511,44,5,2,NULL),(512,30,45,2,NULL),(513,45,5,2,NULL),(514,31,45,2,NULL),(515,47,5,2,NULL),(516,32,45,2,NULL),(517,48,5,2,NULL),(518,14,45,2,NULL),(519,50,5,2,NULL),(520,16,45,2,NULL),(521,52,5,2,NULL),(522,42,45,2,NULL),(523,55,5,2,NULL),(524,44,45,2,NULL),(525,42,6,2,NULL),(526,45,45,2,NULL),(527,44,6,2,NULL),(528,47,45,2,NULL),(529,45,6,2,NULL),(530,48,45,2,NULL),(531,47,6,2,NULL),(532,50,45,2,NULL),(533,48,6,2,NULL),(534,52,45,2,NULL),(535,50,6,2,NULL),(536,55,45,2,NULL),(537,52,6,2,NULL),(538,84,45,2,NULL),(539,55,6,2,NULL),(540,85,45,2,NULL),(541,42,9,2,NULL),(542,86,45,2,NULL),(543,44,9,2,NULL),(544,87,45,2,NULL),(545,45,9,2,NULL),(546,88,45,2,NULL),(547,47,9,2,NULL),(548,89,45,2,NULL),(549,48,9,2,NULL),(550,91,45,2,NULL),(551,50,9,2,NULL),(552,92,45,2,NULL),(553,52,9,2,NULL),(554,76,45,2,NULL),(555,55,9,2,NULL),(556,77,45,2,NULL),(557,42,10,2,NULL),(558,78,45,2,NULL),(559,44,10,2,NULL),(560,80,45,2,NULL),(561,45,10,2,NULL),(562,93,45,2,NULL),(563,47,10,2,NULL),(564,94,45,2,NULL),(565,48,10,2,NULL),(566,99,45,2,NULL),(567,50,10,2,NULL),(568,100,45,2,NULL),(569,52,10,2,NULL),(570,101,45,2,NULL),(571,55,10,2,NULL),(572,103,45,2,NULL),(573,42,18,2,NULL),(574,104,45,2,NULL),(575,44,18,2,NULL),(576,106,45,2,NULL),(577,45,18,2,NULL),(578,107,45,2,NULL),(579,47,18,2,NULL),(580,108,45,2,NULL),(581,48,18,2,NULL),(582,113,45,2,NULL),(583,50,18,2,NULL),(584,114,45,2,NULL),(585,52,18,2,NULL),(586,115,45,2,NULL),(587,55,18,2,NULL),(588,116,45,2,NULL),(589,42,20,2,NULL),(590,117,45,2,NULL),(591,44,20,2,NULL),(592,118,45,2,NULL),(593,45,20,2,NULL),(594,119,45,2,NULL),(595,47,20,2,NULL),(596,120,45,2,NULL),(597,48,20,2,NULL),(598,67,45,2,NULL),(599,50,20,2,NULL),(600,70,45,2,NULL),(601,52,20,2,NULL),(602,55,20,2,NULL),(603,42,44,2,NULL),(604,44,44,2,NULL),(605,45,44,2,NULL),(606,47,44,2,NULL),(607,48,44,2,NULL),(608,50,44,2,NULL),(609,52,44,2,NULL),(610,55,44,2,NULL),(611,42,19,2,NULL),(612,44,19,2,NULL),(613,45,19,2,NULL),(614,47,19,2,NULL),(615,48,19,2,NULL),(616,50,19,2,NULL),(617,52,19,2,NULL),(618,55,19,2,NULL),(619,42,25,2,NULL),(620,44,25,2,NULL),(621,45,25,2,NULL),(622,47,25,2,NULL),(623,48,25,2,NULL),(624,50,25,2,NULL),(625,52,25,2,NULL),(626,55,25,2,NULL),(627,42,42,2,NULL),(628,44,42,2,NULL),(629,45,42,2,NULL),(630,47,42,2,NULL),(631,48,42,2,NULL),(632,50,42,2,NULL),(633,52,42,2,NULL),(634,55,42,2,NULL),(635,42,43,2,NULL),(636,44,43,2,NULL),(637,45,43,2,NULL),(638,47,43,2,NULL),(639,48,43,2,NULL),(640,50,43,2,NULL),(641,52,43,2,NULL),(642,55,43,2,NULL),(643,97,38,2,NULL),(644,84,1,2,NULL),(645,85,1,2,NULL),(646,86,1,2,NULL),(647,87,1,2,NULL),(648,88,1,2,NULL),(649,89,1,2,NULL),(650,91,1,2,NULL),(651,92,1,2,NULL),(652,84,2,2,NULL),(653,85,2,2,NULL),(654,86,2,2,NULL),(655,87,2,2,NULL),(656,88,2,2,NULL),(657,89,2,2,NULL),(658,91,2,2,NULL),(659,92,2,2,NULL),(660,84,5,2,NULL),(661,85,5,2,NULL),(662,86,5,2,NULL),(663,87,5,2,NULL),(664,88,5,2,NULL),(665,89,5,2,NULL),(666,91,5,2,NULL),(667,92,5,2,NULL),(668,84,6,2,NULL),(669,85,6,2,NULL),(670,86,6,2,NULL),(671,87,6,2,NULL),(672,88,6,2,NULL),(673,89,6,2,NULL),(674,91,6,2,NULL),(675,92,6,2,NULL),(676,84,9,2,NULL),(677,85,9,2,NULL),(678,86,9,2,NULL),(679,87,9,2,NULL),(680,88,9,2,NULL),(681,89,9,2,NULL),(682,91,9,2,NULL),(683,92,9,2,NULL),(684,84,10,2,NULL),(685,85,10,2,NULL),(686,86,10,2,NULL),(687,87,10,2,NULL),(688,88,10,2,NULL),(689,89,10,2,NULL),(690,91,10,2,NULL),(691,92,10,2,NULL),(692,84,18,2,NULL),(693,85,18,2,NULL),(694,86,18,2,NULL),(695,87,18,2,NULL),(696,88,18,2,NULL),(697,89,18,2,NULL),(698,91,18,2,NULL),(699,92,18,2,NULL),(700,84,20,2,NULL),(701,85,20,2,NULL),(702,86,20,2,NULL),(703,87,20,2,NULL),(704,88,20,2,NULL),(705,89,20,2,NULL),(706,91,20,2,NULL),(707,92,20,2,NULL),(708,84,44,2,NULL),(709,85,44,2,NULL),(710,86,44,2,NULL),(711,87,44,2,NULL),(712,88,44,2,NULL),(713,89,44,2,NULL),(714,91,44,2,NULL),(715,92,44,2,NULL),(716,84,19,2,NULL),(717,85,19,2,NULL),(718,86,19,2,NULL),(719,87,19,2,NULL),(720,88,19,2,NULL),(721,89,19,2,NULL),(722,91,19,2,NULL),(723,92,19,2,NULL),(724,84,25,2,NULL),(725,85,25,2,NULL),(726,86,25,2,NULL),(727,87,25,2,NULL),(728,88,25,2,NULL),(729,89,25,2,NULL),(730,91,25,2,NULL),(731,92,25,2,NULL),(732,84,42,2,NULL),(733,85,42,2,NULL),(734,86,42,2,NULL),(735,87,42,2,NULL),(736,88,42,2,NULL),(737,89,42,2,NULL),(738,91,42,2,NULL),(739,92,42,2,NULL),(740,84,43,2,NULL),(741,85,43,2,NULL),(742,86,43,2,NULL),(743,87,43,2,NULL),(744,88,43,2,NULL),(745,89,43,2,NULL),(746,91,43,2,NULL),(747,92,43,2,NULL),(748,76,1,2,NULL),(749,77,1,2,NULL),(750,78,1,2,NULL),(751,80,1,2,NULL),(752,93,1,2,NULL),(753,94,1,2,NULL),(754,99,1,2,NULL),(755,100,1,2,NULL),(756,101,1,2,NULL),(757,103,1,2,NULL),(758,104,1,2,NULL),(759,106,1,2,NULL),(760,107,1,2,NULL),(761,108,1,2,NULL),(762,113,1,2,NULL),(763,114,1,2,NULL),(764,115,1,2,NULL),(765,116,1,2,NULL),(766,117,1,2,NULL),(767,118,1,2,NULL),(768,119,1,2,NULL),(769,120,1,2,NULL),(770,76,2,2,NULL),(771,77,2,2,NULL),(772,78,2,2,NULL),(773,80,2,2,NULL),(774,93,2,2,NULL),(775,94,2,2,NULL),(776,99,2,2,NULL),(777,100,2,2,NULL),(778,101,2,2,NULL),(779,103,2,2,NULL),(780,104,2,2,NULL),(781,106,2,2,NULL),(782,107,2,2,NULL),(783,108,2,2,NULL),(784,113,2,2,NULL),(785,114,2,2,NULL),(786,115,2,2,NULL),(787,116,2,2,NULL),(788,117,2,2,NULL),(789,118,2,2,NULL),(790,119,2,2,NULL),(791,120,2,2,NULL),(792,76,5,2,NULL),(793,77,5,2,NULL),(794,78,5,2,NULL),(795,80,5,2,NULL),(796,93,5,2,NULL),(797,94,5,2,NULL),(798,99,5,2,NULL),(799,100,5,2,NULL),(800,101,5,2,NULL),(801,103,5,2,NULL),(802,104,5,2,NULL),(803,106,5,2,NULL),(804,107,5,2,NULL),(805,108,5,2,NULL),(806,113,5,2,NULL),(807,114,5,2,NULL),(808,115,5,2,NULL),(809,116,5,2,NULL),(810,117,5,2,NULL),(811,118,5,2,NULL),(812,119,5,2,NULL),(813,120,5,2,NULL),(814,76,6,2,NULL),(815,77,6,2,NULL),(816,78,6,2,NULL),(817,80,6,2,NULL),(818,93,6,2,NULL),(819,94,6,2,NULL),(820,99,6,2,NULL),(821,100,6,2,NULL),(822,101,6,2,NULL),(823,103,6,2,NULL),(824,104,6,2,NULL),(825,106,6,2,NULL),(826,107,6,2,NULL),(827,108,6,2,NULL),(828,113,6,2,NULL),(829,114,6,2,NULL),(830,115,6,2,NULL),(831,116,6,2,NULL),(832,117,6,2,NULL),(833,118,6,2,NULL),(834,119,6,2,NULL),(835,120,6,2,NULL),(836,76,9,2,NULL),(837,77,9,2,NULL),(838,78,9,2,NULL),(839,80,9,2,NULL),(840,93,9,2,NULL),(841,94,9,2,NULL),(842,99,9,2,NULL),(843,100,9,2,NULL),(844,101,9,2,NULL),(845,103,9,2,NULL),(846,104,9,2,NULL),(847,106,9,2,NULL),(848,107,9,2,NULL),(849,108,9,2,NULL),(850,113,9,2,NULL),(851,114,9,2,NULL),(852,115,9,2,NULL),(853,116,9,2,NULL),(854,117,9,2,NULL),(855,118,9,2,NULL),(856,119,9,2,NULL),(857,120,9,2,NULL),(858,76,10,2,NULL),(859,77,10,2,NULL),(860,78,10,2,NULL),(861,80,10,2,NULL),(862,93,10,2,NULL),(863,94,10,2,NULL),(864,99,10,2,NULL),(865,100,10,2,NULL),(866,101,10,2,NULL),(867,103,10,2,NULL),(868,104,10,2,NULL),(869,106,10,2,NULL),(870,107,10,2,NULL),(871,108,10,2,NULL),(872,113,10,2,NULL),(873,114,10,2,NULL),(874,115,10,2,NULL),(875,116,10,2,NULL),(876,117,10,2,NULL),(877,118,10,2,NULL),(878,119,10,2,NULL),(879,120,10,2,NULL),(880,76,18,2,NULL),(881,77,18,2,NULL),(882,78,18,2,NULL),(883,80,18,2,NULL),(884,93,18,2,NULL),(885,94,18,2,NULL),(886,99,18,2,NULL),(887,100,18,2,NULL),(888,101,18,2,NULL),(889,103,18,2,NULL),(890,104,18,2,NULL),(891,106,18,2,NULL),(892,107,18,2,NULL),(893,108,18,2,NULL),(894,113,18,2,NULL),(895,114,18,2,NULL),(896,115,18,2,NULL),(897,116,18,2,NULL),(898,117,18,2,NULL),(899,118,18,2,NULL),(900,119,18,2,NULL),(901,120,18,2,NULL),(902,76,20,2,NULL),(903,77,20,2,NULL),(904,78,20,2,NULL),(905,80,20,2,NULL),(906,93,20,2,NULL),(907,94,20,2,NULL),(908,99,20,2,NULL),(909,100,20,2,NULL),(910,101,20,2,NULL),(911,103,20,2,NULL),(912,104,20,2,NULL),(913,106,20,2,NULL),(914,107,20,2,NULL),(915,108,20,2,NULL),(916,113,20,2,NULL),(917,114,20,2,NULL),(918,115,20,2,NULL),(919,116,20,2,NULL),(920,117,20,2,NULL),(921,118,20,2,NULL),(922,119,20,2,NULL),(923,120,20,2,NULL),(924,76,44,2,NULL),(925,77,44,2,NULL),(926,78,44,2,NULL),(927,80,44,2,NULL),(928,93,44,2,NULL),(929,94,44,2,NULL),(930,99,44,2,NULL),(931,100,44,2,NULL),(932,101,44,2,NULL),(933,103,44,2,NULL),(934,104,44,2,NULL),(935,106,44,2,NULL),(936,107,44,2,NULL),(937,108,44,2,NULL),(938,113,44,2,NULL),(939,114,44,2,NULL),(940,115,44,2,NULL),(941,116,44,2,NULL),(942,117,44,2,NULL),(943,118,44,2,NULL),(944,119,44,2,NULL),(945,120,44,2,NULL),(946,76,19,2,NULL),(947,77,19,2,NULL),(948,78,19,2,NULL),(949,80,19,2,NULL),(950,93,19,2,NULL),(951,94,19,2,NULL),(952,99,19,2,NULL),(953,100,19,2,NULL),(954,101,19,2,NULL),(955,103,19,2,NULL),(956,104,19,2,NULL),(957,106,19,2,NULL),(958,107,19,2,NULL),(959,108,19,2,NULL),(960,113,19,2,NULL),(961,114,19,2,NULL),(962,115,19,2,NULL),(963,116,19,2,NULL),(964,117,19,2,NULL),(965,118,19,2,NULL),(966,119,19,2,NULL),(967,120,19,2,NULL),(968,76,25,2,NULL),(969,77,25,2,NULL),(970,78,25,2,NULL),(971,80,25,2,NULL),(972,93,25,2,NULL),(973,94,25,2,NULL),(974,99,25,2,NULL),(975,100,25,2,NULL),(976,101,25,2,NULL),(977,103,25,2,NULL),(978,104,25,2,NULL),(979,106,25,2,NULL),(980,107,25,2,NULL),(981,108,25,2,NULL),(982,113,25,2,NULL),(983,114,25,2,NULL),(984,115,25,2,NULL),(985,116,25,2,NULL),(986,117,25,2,NULL),(987,118,25,2,NULL),(988,119,25,2,NULL),(989,120,25,2,NULL),(990,76,42,2,NULL),(991,77,42,2,NULL),(992,78,42,2,NULL),(993,80,42,2,NULL),(994,93,42,2,NULL),(995,94,42,2,NULL),(996,99,42,2,NULL),(997,100,42,2,NULL),(998,101,42,2,NULL),(999,103,42,2,NULL),(1000,104,42,2,NULL),(1001,106,42,2,NULL),(1002,107,42,2,NULL),(1003,108,42,2,NULL),(1004,113,42,2,NULL),(1005,114,42,2,NULL),(1006,115,42,2,NULL),(1007,116,42,2,NULL),(1008,117,42,2,NULL),(1009,118,42,2,NULL),(1010,119,42,2,NULL),(1011,120,42,2,NULL),(1012,76,43,2,NULL),(1013,77,43,2,NULL),(1014,78,43,2,NULL),(1015,80,43,2,NULL),(1016,93,43,2,NULL),(1017,94,43,2,NULL),(1018,99,43,2,NULL),(1019,100,43,2,NULL),(1020,101,43,2,NULL),(1021,103,43,2,NULL),(1022,104,43,2,NULL),(1023,106,43,2,NULL),(1024,107,43,2,NULL),(1025,108,43,2,NULL),(1026,113,43,2,NULL),(1027,114,43,2,NULL),(1028,115,43,2,NULL),(1029,116,43,2,NULL),(1030,117,43,2,NULL),(1031,118,43,2,NULL),(1032,119,43,2,NULL),(1033,120,43,2,NULL),(1034,67,1,2,NULL),(1035,70,1,2,NULL),(1036,67,2,2,NULL),(1037,70,2,2,NULL),(1038,67,5,2,NULL),(1039,70,5,2,NULL),(1040,67,6,2,NULL),(1041,70,6,2,NULL),(1042,67,9,2,NULL),(1043,70,9,2,NULL),(1044,67,10,2,NULL),(1045,70,10,2,NULL),(1046,67,18,2,NULL),(1047,70,18,2,NULL),(1048,67,20,2,NULL),(1049,70,20,2,NULL),(1050,67,44,2,NULL),(1051,70,44,2,NULL),(1052,67,19,2,NULL),(1053,70,19,2,NULL),(1054,67,25,2,NULL),(1055,70,25,2,NULL),(1056,67,42,2,NULL),(1057,70,42,2,NULL),(1058,67,43,2,NULL),(1059,70,43,2,NULL),(1060,5,42,2,NULL),(1061,6,42,2,NULL),(1062,19,42,2,NULL),(1063,33,42,2,NULL),(1064,35,42,2,NULL),(1065,38,42,2,NULL),(1066,41,42,2,NULL),(1067,43,42,2,NULL),(1068,46,42,2,NULL),(1069,59,42,2,NULL),(1070,66,42,2,NULL),(1071,69,42,2,NULL),(1072,49,42,2,NULL),(1073,53,42,2,NULL),(1074,20,42,2,NULL),(1075,22,42,2,NULL),(1076,23,42,2,NULL),(1077,26,42,2,NULL),(1078,28,42,2,NULL),(1079,30,42,2,NULL),(1080,31,42,2,NULL),(1081,32,42,2,NULL),(1082,14,42,2,NULL),(1083,16,42,2,NULL),(1084,96,41,2,NULL),(1085,5,43,2,NULL),(1086,6,43,2,NULL),(1087,19,43,2,NULL),(1088,33,43,2,NULL),(1089,35,43,2,NULL),(1090,38,43,2,NULL),(1091,41,43,2,NULL),(1092,43,43,2,NULL),(1093,46,43,2,NULL),(1094,59,43,2,NULL),(1095,66,43,2,NULL),(1096,69,43,2,NULL),(1097,49,43,2,NULL),(1098,53,43,2,NULL),(1099,20,43,2,NULL),(1100,22,43,2,NULL),(1101,23,43,2,NULL),(1102,26,43,2,NULL),(1103,28,43,2,NULL),(1104,30,43,2,NULL),(1105,31,43,2,NULL),(1106,32,43,2,NULL),(1107,14,43,2,NULL),(1108,16,43,2,NULL),(1109,8,8,2,NULL),(1110,5,6,2,NULL),(1111,6,6,2,NULL),(1112,19,6,2,NULL),(1113,33,6,2,NULL),(1114,35,6,2,NULL),(1115,38,6,2,NULL),(1116,41,6,2,NULL),(1117,43,6,2,NULL),(1118,46,6,2,NULL),(1119,59,6,2,NULL),(1120,66,6,2,NULL),(1121,69,6,2,NULL),(1122,49,6,2,NULL),(1123,53,6,2,NULL),(1124,20,6,2,NULL),(1125,22,6,2,NULL),(1126,23,6,2,NULL),(1127,26,6,2,NULL),(1128,28,6,2,NULL),(1129,30,6,2,NULL),(1130,31,6,2,NULL),(1131,32,6,2,NULL),(1132,14,6,2,NULL),(1133,16,6,2,NULL),(1134,5,1,2,NULL),(1135,6,1,2,NULL),(1136,5,2,2,NULL),(1137,6,2,2,NULL),(1138,5,5,2,NULL),(1139,6,5,2,NULL),(1140,5,9,2,NULL),(1141,6,9,2,NULL),(1142,5,10,2,NULL),(1143,6,10,2,NULL),(1144,5,18,2,NULL),(1145,6,18,2,NULL),(1146,5,20,2,NULL),(1147,6,20,2,NULL),(1148,5,44,2,NULL),(1149,6,44,2,NULL),(1150,5,19,2,NULL),(1151,6,19,2,NULL),(1152,5,25,2,NULL),(1153,6,25,2,NULL),(1154,9,8,2,NULL),(1155,19,9,2,NULL),(1156,33,9,2,NULL),(1157,35,9,2,NULL),(1158,38,9,2,NULL),(1159,41,9,2,NULL),(1160,43,9,2,NULL),(1161,46,9,2,NULL),(1162,59,9,2,NULL),(1163,66,9,2,NULL),(1164,69,9,2,NULL),(1165,49,9,2,NULL),(1166,53,9,2,NULL),(1167,20,9,2,NULL),(1168,22,9,2,NULL),(1169,23,9,2,NULL),(1170,26,9,2,NULL),(1171,28,9,2,NULL),(1172,30,9,2,NULL),(1173,31,9,2,NULL),(1174,32,9,2,NULL),(1175,14,9,2,NULL),(1176,16,9,2,NULL),(1177,1,2,2,NULL),(1178,3,4,2,NULL),(1179,19,1,2,NULL),(1180,33,1,2,NULL),(1181,35,1,2,NULL),(1182,38,1,2,NULL),(1183,41,1,2,NULL),(1184,43,1,2,NULL),(1185,46,1,2,NULL),(1186,59,1,2,NULL),(1187,66,1,2,NULL),(1188,69,1,2,NULL),(1189,49,1,2,NULL),(1190,53,1,2,NULL),(1191,20,1,2,NULL),(1192,22,1,2,NULL),(1193,23,1,2,NULL),(1194,26,1,2,NULL),(1195,28,1,2,NULL),(1196,30,1,2,NULL),(1197,31,1,2,NULL),(1198,32,1,2,NULL),(1199,14,1,2,NULL),(1200,16,1,2,NULL),(1201,2,1,2,NULL),(1202,19,2,2,NULL),(1203,33,2,2,NULL),(1204,35,2,2,NULL),(1205,38,2,2,NULL),(1206,41,2,2,NULL),(1207,43,2,2,NULL),(1208,46,2,2,NULL),(1209,59,2,2,NULL),(1210,66,2,2,NULL),(1211,69,2,2,NULL),(1212,49,2,2,NULL),(1213,53,2,2,NULL),(1214,20,2,2,NULL),(1215,22,2,2,NULL),(1216,23,2,2,NULL),(1217,26,2,2,NULL),(1218,28,2,2,NULL),(1219,30,2,2,NULL),(1220,31,2,2,NULL),(1221,32,2,2,NULL),(1222,14,2,2,NULL),(1223,16,2,2,NULL),(1224,4,4,2,NULL),(1225,19,5,2,NULL),(1226,33,5,2,NULL),(1227,35,5,2,NULL),(1228,38,5,2,NULL),(1229,41,5,2,NULL),(1230,43,5,2,NULL),(1231,46,5,2,NULL),(1232,59,5,2,NULL),(1233,66,5,2,NULL),(1234,69,5,2,NULL),(1235,49,5,2,NULL),(1236,53,5,2,NULL),(1237,20,5,2,NULL),(1238,22,5,2,NULL),(1239,23,5,2,NULL),(1240,26,5,2,NULL),(1241,28,5,2,NULL),(1242,30,5,2,NULL),(1243,31,5,2,NULL),(1244,32,5,2,NULL),(1245,14,5,2,NULL),(1246,16,5,2,NULL),(1247,34,24,2,NULL),(1248,20,10,2,NULL),(1249,22,10,2,NULL),(1250,23,10,2,NULL),(1251,26,10,2,NULL),(1252,28,10,2,NULL),(1253,30,10,2,NULL),(1254,31,10,2,NULL),(1255,32,10,2,NULL),(1256,19,19,2,NULL),(1257,33,19,2,NULL),(1258,35,19,2,NULL),(1259,38,19,2,NULL),(1260,41,19,2,NULL),(1261,43,19,2,NULL),(1262,46,19,2,NULL),(1263,59,19,2,NULL),(1264,66,19,2,NULL),(1265,69,19,2,NULL),(1266,49,19,2,NULL),(1267,53,19,2,NULL),(1268,20,18,2,NULL),(1269,22,18,2,NULL),(1270,23,18,2,NULL),(1271,26,18,2,NULL),(1272,28,18,2,NULL),(1273,30,18,2,NULL),(1274,31,18,2,NULL),(1275,32,18,2,NULL),(1276,20,20,2,NULL),(1277,22,20,2,NULL),(1278,23,20,2,NULL),(1279,26,20,2,NULL),(1280,28,20,2,NULL),(1281,30,20,2,NULL),(1282,31,20,2,NULL),(1283,32,20,2,NULL),(1284,20,44,2,NULL),(1285,22,44,2,NULL),(1286,23,44,2,NULL),(1287,26,44,2,NULL),(1288,28,44,2,NULL),(1289,30,44,2,NULL),(1290,31,44,2,NULL),(1291,32,44,2,NULL),(1292,14,19,2,NULL),(1293,16,19,2,NULL),(1294,20,25,2,NULL),(1295,22,25,2,NULL),(1296,23,25,2,NULL),(1297,26,25,2,NULL),(1298,28,25,2,NULL),(1299,30,25,2,NULL),(1300,31,25,2,NULL),(1301,32,25,2,NULL),(1302,14,10,2,NULL),(1303,16,10,2,NULL),(1304,14,18,2,NULL),(1305,16,18,2,NULL),(1306,14,20,2,NULL),(1307,16,20,2,NULL),(1308,14,44,2,NULL),(1309,16,44,2,NULL),(1310,14,25,2,NULL),(1311,16,25,2,NULL),(1312,11,24,2,NULL),(1313,19,25,2,NULL),(1314,33,25,2,NULL),(1315,35,25,2,NULL),(1316,38,25,2,NULL),(1317,41,25,2,NULL),(1318,43,25,2,NULL),(1319,46,25,2,NULL),(1320,59,25,2,NULL),(1321,66,25,2,NULL),(1322,69,25,2,NULL),(1323,49,25,2,NULL),(1324,53,25,2,NULL),(1325,24,16,2,NULL),(1326,71,14,2,NULL),(1327,49,10,2,NULL),(1328,53,10,2,NULL),(1329,19,18,2,NULL),(1330,33,18,2,NULL),(1331,35,18,2,NULL),(1332,38,18,2,NULL),(1333,41,18,2,NULL),(1334,43,18,2,NULL),(1335,46,18,2,NULL),(1336,59,18,2,NULL),(1337,66,18,2,NULL),(1338,69,18,2,NULL),(1339,19,20,2,NULL),(1340,33,20,2,NULL),(1341,35,20,2,NULL),(1342,38,20,2,NULL),(1343,41,20,2,NULL),(1344,43,20,2,NULL),(1345,46,20,2,NULL),(1346,59,20,2,NULL),(1347,66,20,2,NULL),(1348,69,20,2,NULL),(1349,19,44,2,NULL),(1350,33,44,2,NULL),(1351,35,44,2,NULL),(1352,38,44,2,NULL),(1353,41,44,2,NULL),(1354,43,44,2,NULL),(1355,46,44,2,NULL),(1356,59,44,2,NULL),(1357,66,44,2,NULL),(1358,69,44,2,NULL),(1359,49,18,2,NULL),(1360,53,18,2,NULL),(1361,49,20,2,NULL),(1362,53,20,2,NULL),(1363,49,44,2,NULL),(1364,53,44,2,NULL),(1365,62,16,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BLUETOOTH'),(21,'android.permission.BLUETOOTH_ADMIN'),(22,'android.permission.CHANGE_NETWORK_STATE'),(18,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.GET_ACCOUNTS'),(26,'android.permission.GET_PACKAGE_SIZE'),(23,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(20,'android.permission.READ_SYNC_SETTINGS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(25,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SET_WALLPAPER'),(8,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(5,'android.permission.WRITE_SMS'),(15,'android.permission.WRITE_SYNC_SETTINGS'),(13,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://mms',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://www.opda.com.cn',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(31,NULL,NULL,'smsto:',NULL,NULL,NULL),(32,NULL,NULL,'mailto:',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'mailto:',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'mailto:',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://sms/',NULL,NULL,NULL),(43,'package','(.*)',NULL,NULL,NULL,NULL),(44,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(45,NULL,NULL,'content://sms/',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(49,NULL,NULL,'content://sms/',NULL,NULL,NULL),(50,NULL,NULL,'content://sms/',NULL,NULL,NULL),(51,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(52,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(54,NULL,NULL,'smsto:',NULL,NULL,NULL),(55,NULL,NULL,'http://market.android.com/search?q=opda',NULL,NULL,NULL),(56,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(57,NULL,NULL,'mailto:',NULL,NULL,NULL),(58,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(59,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(60,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(61,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(62,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,7,4),(2,8,5),(3,9,6),(4,11,7),(5,12,8),(6,14,10),(7,15,11),(8,27,18),(9,29,19),(10,31,20),(11,36,22),(12,50,30),(13,60,42),(14,64,45),(15,65,46),(16,66,47),(17,68,48),(18,69,49),(19,70,50),(20,78,56),(21,81,58),(22,83,59),(23,84,60),(24,86,61),(25,88,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,3,1),(17,3,3),(18,3,7),(19,3,10),(20,3,12),(21,3,14),(22,3,15),(23,3,17),(24,4,1),(25,3,16),(26,4,3),(27,3,19),(28,4,4),(29,3,18),(30,4,6),(31,3,21),(32,4,7),(33,3,20),(34,4,9),(35,3,22),(36,4,10),(37,4,12),(38,6,1),(39,5,1),(40,6,3),(41,6,4),(42,5,3),(43,6,6),(44,5,4),(45,5,5),(46,6,7),(47,5,23),(48,6,9),(49,6,10),(50,5,6),(51,6,12),(52,5,7),(53,5,25),(54,5,24),(55,5,9),(56,5,26),(57,5,12),(58,5,14),(59,7,1),(60,7,19),(61,7,3),(62,7,6),(63,7,7),(64,7,9),(65,7,27),(66,7,10),(67,7,12);
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
