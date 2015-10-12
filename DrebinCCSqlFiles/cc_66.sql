-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_66
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(31,'(.*)ACTION_DEACTIVATED'),(38,'(.*)ACTION_EVENT_UPLOADED'),(24,'(.*)ACTION_NUMBER_OF_EVENTS_CHANGED'),(37,'(.*)ACTION_SERVICE_STATUS_CALLBACK'),(3,'SMS_SENT'),(5,'android.app.action.DEVICE_ADMIN_ENABLED'),(11,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.ACTION_POWER_DISCONNECTED'),(28,'android.intent.action.ACTION_SHUTDOWN'),(29,'android.intent.action.AIRPLANE_MODE'),(30,'android.intent.action.BATTERY_LOW'),(26,'android.intent.action.BATTERY_OKAY'),(4,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(13,'android.intent.action.DOCK_EVENT'),(17,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(32,'android.intent.action.PACKAGE_ADDED'),(35,'android.intent.action.PACKAGE_DATA_CLEARED'),(34,'android.intent.action.PACKAGE_REMOVED'),(33,'android.intent.action.PACKAGE_REPLACED'),(25,'android.intent.action.PHONE_STATE'),(27,'android.intent.action.REBOOT'),(10,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.TIME_CHANGED'),(7,'android.intent.action.TIME_TICK'),(15,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(36,'android.net.conn.CONNECTIVITY_CHANGE'),(6,'com.agilebinary.mobilemonitor.SCHEDULED_ACTION'),(16,'com.agilebinary.mobilemonitor.WATCHDOG_ACTION'),(22,'com.android.launcher.action.INSTALL_SHORTCUT'),(23,'com.apperhand.action.show.eula'),(21,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(20,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
INSERT INTO `Applications` VALUES (1,'com.fettinger.smsbomber',3),(2,'com.depositmobi',1),(3,'ru.jabox.android.smsbox.happybox',10),(4,'ua.com.nextgenmobile.smsbox',2),(5,'com.cds.phoneboost',6),(6,'com.agilebinary.phonebeagle',150);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.fettinger.smsbomber.SMSBomber'),(2,1,'com.fettinger.smsbomber.Warning'),(3,1,'com.fettinger.smsbomber.ShowContacts'),(4,2,'com.depositmobi.Main'),(5,2,'com.depositmobi.ReadOffertActivity'),(6,2,'com.depositmobi.ActivationDoneActivity'),(7,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(8,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(9,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(10,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(11,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(12,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(13,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(14,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(15,1,'com.fettinger.smsbomber.SMSBomber$BombListener'),(16,1,'com.fettinger.smsbomber.SMSBomber$ContactListener'),(17,2,'com.depositmobi.Main$1'),(18,4,'ua.com.nextgenmobile.smsbox.Main'),(19,4,'ua.com.nextgenmobile.smsbox.TopicViewer'),(20,4,'ua.com.nextgenmobile.smsbox.SMSSender'),(21,4,'ua.com.nextgenmobile.smsbox.MySupport'),(22,4,'com.google.ads.AdActivity'),(23,5,'com.cds.phoneboost.Boost'),(24,5,'com.apperhand.device.android.EULAActivity'),(25,5,'com.apperhand.device.android.AndroidSDKProvider'),(26,5,'com.pad.android.xappad.AdNotification'),(27,5,'com.pad.android.xappad.AdReminderNotification'),(28,5,'com.cds.phoneboost.BootReceiver'),(29,6,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(30,6,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(31,6,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(32,6,'com.agilebinary.mobilemonitor.device.android.device.admin.MyDeviceAdminReceiver'),(33,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(34,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.ScheduledActionReceiver'),(35,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.WatchdogReceiver'),(36,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver'),(37,4,'ua.com.nextgenmobile.smsbox.SMSSender$1'),(38,4,'ua.com.nextgenmobile.smsbox.SMSSender$2'),(39,3,'ru.jabox.android.smsbox.d.d'),(40,5,'com.apperhand.device.android.a.b'),(41,5,'com.apperhand.device.android.a.e'),(42,5,'com.apperhand.device.android.a.c'),(43,6,'com.agilebinary.mobilemonitor.device.android.device.a.b'),(44,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(45,6,'com.agilebinary.mobilemonitor.device.android.device.g'),(46,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(47,6,'com.agilebinary.mobilemonitor.device.android.ui.c'),(48,6,'com.agilebinary.mobilemonitor.device.android.ui.a'),(49,6,'com.agilebinary.mobilemonitor.device.android.ui.ac'),(50,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.c'),(51,6,'com.agilebinary.mobilemonitor.device.android.ui.ab'),(52,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(53,6,'com.agilebinary.mobilemonitor.device.android.device.admin.b'),(54,6,'com.agilebinary.mobilemonitor.device.android.device.a.n'),(55,6,'com.agilebinary.mobilemonitor.device.android.device.a.a'),(56,6,'com.agilebinary.mobilemonitor.device.android.device.a.m'),(57,6,'com.agilebinary.mobilemonitor.device.android.device.a.l'),(58,6,'com.agilebinary.mobilemonitor.device.android.device.a.k'),(59,6,'com.agilebinary.mobilemonitor.device.android.device.a.c'),(60,6,'com.agilebinary.mobilemonitor.device.android.device.a.i'),(61,6,'com.agilebinary.mobilemonitor.device.android.device.a.f');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'ANZ'),(2,1,'SEND'),(3,1,'NUMMER'),(4,6,'URL'),(5,9,'categoryId'),(6,20,'params'),(7,14,'android.intent.extra.EMAIL'),(8,20,'com.google.ads.AdOpener'),(9,14,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(10,9,'categoryName'),(11,14,'ru.jabox.logcollector.intent.extra.BUFFER'),(12,10,'categoryId'),(13,20,'action'),(14,14,'android.intent.extra.SUBJECT'),(15,14,'ru.jabox.logcollector.intent.extra.DATA'),(16,10,'templateText'),(17,10,'templateSenderName'),(18,14,'android.intent.extra.CC'),(19,14,'ru.jabox.logcollector.intent.extra.FORMAT'),(20,10,'templateId'),(21,14,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(22,14,'android.intent.extra.BCC'),(23,25,'sectionid'),(24,25,'alarmtype'),(25,23,'USER_AGENT'),(26,23,'M_SERVER_URL'),(27,23,'FIRST_RUN'),(28,24,'sectionid'),(29,23,'APPLICATION_ID'),(30,25,'remindertitle'),(31,23,'SERVICE_MODE'),(32,23,'eulaAcceptDetails'),(33,23,'DEVELOPER_ID'),(34,25,'remindertext'),(35,25,'remindericon'),(36,29,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(37,29,'EXTRA_URI'),(38,27,'EXTRA_EULA_SHOWING'),(39,29,'EXTRA_START_FROM_GUI'),(40,29,'EXTRA_SYNC_NOW'),(41,29,'EXTRA_DEACTIVATE_FROM_GUI'),(42,29,'EXTRA_FETCH_COMMANDS_NOW'),(43,29,'EXTRA_FORCE_BROADCASTS'),(44,29,'EXTRA_START_WATCHDOG'),(45,29,'EXTRA_START_SCHEDULED_ACTION'),(46,34,'android.intent.extra.PHONE_NUMBER');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,17,'r',1,NULL,NULL),(16,18,'a',1,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',1,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'s',0,NULL,NULL),(24,26,'r',0,NULL,NULL),(25,27,'r',0,NULL,NULL),(26,28,'r',1,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'s',0,NULL,NULL),(30,32,'r',1,37,NULL),(31,33,'r',1,NULL,NULL),(32,34,'r',1,NULL,NULL),(33,35,'r',1,NULL,NULL),(34,36,'r',1,NULL,NULL),(35,39,'r',1,NULL,NULL),(36,44,'r',1,NULL,NULL),(37,45,'r',1,NULL,NULL),(38,46,'r',1,NULL,NULL),(39,47,'r',1,NULL,NULL),(40,48,'r',1,NULL,NULL),(41,49,'r',1,NULL,NULL),(42,50,'r',1,NULL,NULL),(43,51,'r',1,NULL,NULL),(44,52,'r',1,NULL,NULL),(45,53,'r',1,NULL,NULL),(46,32,'r',1,NULL,NULL),(47,52,'r',1,38,NULL),(48,44,'r',1,38,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,4),(4,4,4),(5,5,6),(6,6,6),(7,7,4),(8,8,4),(9,9,19),(10,10,16),(11,11,17),(12,12,8),(13,13,20),(14,14,9),(15,15,18),(16,16,7),(17,17,8),(18,18,18),(19,19,13),(20,20,8),(21,21,8),(22,22,8),(23,23,8),(24,24,23),(25,25,23),(26,26,23),(27,27,23),(28,28,21),(29,29,23),(30,30,23),(31,31,21),(32,32,23),(33,33,34),(34,33,27),(35,33,29),(36,34,34),(37,34,27),(38,34,29),(39,35,34),(40,35,27),(41,35,29),(42,36,29),(43,36,27),(44,36,34),(45,37,27),(46,37,34),(47,37,29),(48,38,29),(49,39,31),(50,39,32),(51,39,33),(52,39,27),(53,40,29),(54,41,34),(55,41,29),(56,41,27),(57,42,29),(58,43,29),(59,43,27),(60,43,34),(61,44,29),(62,45,34),(63,45,29),(64,45,27),(65,46,27),(66,47,29),(67,47,27),(68,47,34),(69,48,29),(70,49,29),(71,49,27),(72,49,34),(73,50,29),(74,50,27),(75,50,34),(76,51,29),(77,52,29),(78,53,29),(79,54,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,15,'<com.fettinger.smsbomber.SMSBomber$BombListener: void onClick(android.view.View)>',17,'a',NULL),(2,16,'<com.fettinger.smsbomber.SMSBomber$ContactListener: void onClick(android.view.View)>',7,'a',NULL),(3,4,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(4,4,'<com.depositmobi.Main: void onClick(android.view.View)>',7,'a',NULL),(5,6,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(6,6,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(7,4,'<com.depositmobi.Main: void onClick(android.view.View)>',7,'a',NULL),(8,4,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(9,21,'<ua.com.nextgenmobile.smsbox.MySupport: void onClick(android.view.View)>',15,'a',NULL),(10,18,'<ua.com.nextgenmobile.smsbox.Main: void onClick(android.view.View)>',37,'a',NULL),(11,19,'<ua.com.nextgenmobile.smsbox.TopicViewer: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(12,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(13,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(14,9,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(15,37,'<ua.com.nextgenmobile.smsbox.SMSSender$1: void onClick(android.view.View)>',9,'a',NULL),(16,7,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(17,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(18,38,'<ua.com.nextgenmobile.smsbox.SMSSender$2: void onClick(android.view.View)>',11,'a',NULL),(19,13,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(20,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(21,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(22,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(23,8,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(24,40,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(25,41,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(26,40,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(27,41,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(28,25,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,boolean)>',64,'a',NULL),(29,40,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(30,41,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(31,25,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(32,42,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(33,43,'<com.agilebinary.mobilemonitor.device.android.device.a.b: void onChange(boolean)>',10,'p',NULL),(34,54,'<com.agilebinary.mobilemonitor.device.android.device.a.n: void onChange(boolean)>',11,'p',NULL),(35,43,'<com.agilebinary.mobilemonitor.device.android.device.a.b: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.i,android.os.Handler)>',16,'p',NULL),(36,55,'<com.agilebinary.mobilemonitor.device.android.device.a.a: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.c,android.os.Handler)>',18,'p',NULL),(37,56,'<com.agilebinary.mobilemonitor.device.android.device.a.m: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.k,android.os.Handler)>',18,'p',NULL),(38,57,'<com.agilebinary.mobilemonitor.device.android.device.a.l: void c()>',9,'p',NULL),(39,31,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String,android.net.Uri)>',21,'s',0),(40,57,'<com.agilebinary.mobilemonitor.device.android.device.a.l: boolean b()>',36,'p',NULL),(41,58,'<com.agilebinary.mobilemonitor.device.android.device.a.k: void a()>',18,'p',NULL),(42,31,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(43,59,'<com.agilebinary.mobilemonitor.device.android.device.a.c: void b()>',9,'p',NULL),(44,31,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(45,58,'<com.agilebinary.mobilemonitor.device.android.device.a.k: void a()>',9,'p',NULL),(46,29,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(47,56,'<com.agilebinary.mobilemonitor.device.android.device.a.m: void onChange(boolean)>',17,'p',NULL),(48,31,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(49,60,'<com.agilebinary.mobilemonitor.device.android.device.a.i: void a()>',18,'p',NULL),(50,54,'<com.agilebinary.mobilemonitor.device.android.device.a.n: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.k,android.os.Handler)>',18,'p',NULL),(51,31,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(52,57,'<com.agilebinary.mobilemonitor.device.android.device.a.l: boolean b()>',6,'p',0),(53,61,'<com.agilebinary.mobilemonitor.device.android.device.a.f: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.l,android.os.Handler)>',18,'p',NULL),(54,36,'<com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,2),(2,6,2),(3,9,18),(4,10,18),(5,11,18),(6,12,18),(7,13,18),(8,14,18),(9,15,18),(10,16,18),(11,20,2),(12,22,19),(13,24,19),(14,25,2),(15,27,20),(16,28,18),(17,29,18),(18,30,18),(19,31,18),(20,32,2),(21,33,18),(22,35,18),(23,36,18),(24,37,18),(25,38,18),(26,39,18),(27,40,18),(28,41,18),(29,42,18),(30,43,18),(31,44,18),(32,45,18),(33,48,22),(34,53,23),(35,54,23),(36,55,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/fettinger/smsbomber/Warning'),(2,2,'com/fettinger/smsbomber/ShowContacts'),(3,3,'com/depositmobi/ActivationDoneActivity'),(4,4,'com/depositmobi/ReadOffertActivity'),(5,7,'com/depositmobi/ReadOffertActivity'),(6,8,'com/depositmobi/ActivationDoneActivity'),(7,17,'ua/com/nextgenmobile/smsbox/TopicViewer'),(8,18,'ua/com/nextgenmobile/smsbox/SMSSender'),(9,19,'ru/jabox/android/smsbox/activity/HelpActivity'),(10,21,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(11,23,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(12,26,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(13,27,'ru/jabox/android/smsbox/log/SendLogActivity'),(14,34,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(15,46,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(16,47,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(17,49,'com/apperhand/device/android/EULAActivity'),(18,50,'com/apperhand/device/android/EULAActivity'),(19,51,'com/apperhand/device/android/AndroidSDKProvider'),(20,52,'com/apperhand/device/android/AndroidSDKProvider'),(21,56,'com/agilebinary/mobilemonitor/device/android/ui/MainActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,20,3),(4,22,4),(5,24,5),(6,32,6),(7,55,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'ANZ'),(2,3,'URL'),(3,8,'URL'),(4,9,'android.intent.extra.INTENT'),(5,10,'android.intent.extra.INTENT'),(6,11,'android.intent.extra.TITLE'),(7,11,'android.intent.extra.INTENT'),(8,12,'android.intent.extra.INTENT'),(9,13,'android.intent.extra.TITLE'),(10,13,'android.intent.extra.INTENT'),(11,14,'android.intent.extra.INTENT'),(12,15,'android.intent.extra.TITLE'),(13,15,'android.intent.extra.INTENT'),(14,16,'android.intent.extra.TITLE'),(15,16,'android.intent.extra.INTENT'),(16,21,'templateId'),(17,21,'templateSenderName'),(18,21,'categoryId'),(19,21,'templateText'),(20,23,'templateId'),(21,23,'categoryId'),(22,23,'templateText'),(23,25,'sms_body'),(24,27,'android.intent.extra.SUBJECT'),(25,27,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(26,28,'android.intent.extra.INTENT'),(27,27,'ru.jabox.logcollector.intent.extra.FORMAT'),(28,27,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(29,27,'ru.jabox.logcollector.intent.extra.DATA'),(30,29,'android.intent.extra.INTENT'),(31,30,'android.intent.extra.TITLE'),(32,30,'android.intent.extra.INTENT'),(33,31,'android.intent.extra.INTENT'),(34,33,'android.intent.extra.TITLE'),(35,33,'android.intent.extra.INTENT'),(36,35,'android.intent.extra.INTENT'),(37,36,'android.intent.extra.TITLE'),(38,36,'android.intent.extra.INTENT'),(39,37,'android.intent.extra.TITLE'),(40,38,'android.intent.extra.INTENT'),(41,37,'android.intent.extra.INTENT'),(42,39,'android.intent.extra.INTENT'),(43,40,'android.intent.extra.TITLE'),(44,40,'android.intent.extra.INTENT'),(45,41,'android.intent.extra.INTENT'),(46,42,'android.intent.extra.TITLE'),(47,42,'android.intent.extra.INTENT'),(48,43,'android.intent.extra.INTENT'),(49,44,'android.intent.extra.TITLE'),(50,44,'android.intent.extra.INTENT'),(51,45,'android.intent.extra.TITLE'),(52,45,'android.intent.extra.INTENT'),(53,47,'categoryName'),(54,47,'categoryId'),(55,48,'android.intent.extra.shortcut.NAME'),(56,48,'android.intent.extra.shortcut.ICON'),(57,48,'android.intent.extra.shortcut.INTENT'),(58,51,'M_SERVER_URL'),(59,51,'USER_AGENT'),(60,51,'SERVICE_MODE'),(61,51,'FIRST_RUN'),(62,51,'DEVELOPER_ID'),(63,51,'APPLICATION_ID'),(64,52,'eulaAcceptDetails'),(65,52,'M_SERVER_URL'),(66,52,'USER_AGENT'),(67,52,'SERVICE_MODE'),(68,52,'FIRST_RUN'),(69,52,'DEVELOPER_ID'),(70,52,'APPLICATION_ID'),(71,54,'footerHTML'),(72,54,'bodyHTML');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,6,3),(7,7,1),(8,8,1),(9,9,4),(10,10,5),(11,11,4),(12,12,6),(13,13,11),(14,13,10),(15,13,9),(16,13,8),(17,13,7),(18,13,16),(19,13,17),(20,13,12),(21,13,13),(22,13,14),(23,13,15),(24,14,8),(25,15,21),(26,16,21),(27,17,24),(28,18,24),(29,19,24),(30,20,24),(31,21,24),(32,22,24),(33,23,24),(34,24,24),(35,25,24),(36,26,24),(37,27,24),(38,28,24),(39,29,24),(40,30,24),(41,31,24),(42,32,25),(43,33,26),(44,33,27),(45,33,30),(46,33,28),(47,33,29),(48,34,31),(49,35,31),(50,36,31),(51,37,31),(52,38,31),(53,39,31),(54,40,31),(55,41,31),(56,42,31),(57,43,31),(58,44,31),(59,45,31),(60,46,31),(61,47,31),(62,48,31),(63,49,34),(64,49,35),(65,49,32),(66,49,33),(67,50,36),(68,51,37),(69,52,37),(70,53,37),(71,54,37),(72,55,37),(73,56,37),(74,57,37),(75,58,37),(76,59,37),(77,60,37),(78,61,37),(79,62,37),(80,63,37),(81,64,37),(82,65,37),(83,66,38),(84,67,38),(85,68,38),(86,69,38),(87,70,38),(88,71,38),(89,72,38),(90,73,38),(91,74,38),(92,75,38),(93,76,38),(94,77,38),(95,78,38),(96,79,38),(97,80,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,1),(6,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'alarm',NULL,NULL,NULL,NULL,NULL),(2,49,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,22,'(.*)','(.*)'),(2,25,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.fettinger.smsbomber'),(2,2,'com.fettinger.smsbomber'),(3,3,'com.depositmobi'),(4,4,'com.depositmobi'),(5,7,'com.depositmobi'),(6,8,'com.depositmobi'),(7,17,'ua.com.nextgenmobile.smsbox'),(8,18,'ua.com.nextgenmobile.smsbox'),(9,19,'ru.jabox.android.smsbox.happybox'),(10,21,'ru.jabox.android.smsbox.happybox'),(11,23,'ru.jabox.android.smsbox.happybox'),(12,26,'ru.jabox.android.smsbox.happybox'),(13,27,'ru.jabox.android.smsbox.happybox'),(14,34,'ru.jabox.android.smsbox.happybox'),(15,46,'ru.jabox.android.smsbox.happybox'),(16,47,'ru.jabox.android.smsbox.happybox'),(17,49,'com.cds.phoneboost'),(18,50,'com.cds.phoneboost'),(19,51,'com.cds.phoneboost'),(20,52,'com.cds.phoneboost'),(21,53,'com.cds.phoneboost'),(22,54,'com.cds.phoneboost'),(23,56,'com.agilebinary.phonebeagle');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,4,0),(4,7,0),(5,15,0),(6,15,0),(7,16,0),(8,21,0),(9,26,0),(10,30,0),(11,31,0),(12,32,0),(13,33,0),(14,34,0),(15,35,0),(16,35,0),(17,33,0),(18,32,0),(19,36,0),(20,37,0),(21,38,0),(22,39,0),(23,40,0),(24,41,0),(25,42,0),(26,43,0),(27,31,0),(28,44,0),(29,34,0),(30,45,0),(31,46,0),(32,47,0),(33,42,0),(34,33,0),(35,32,0),(36,36,0),(37,37,0),(38,38,0),(39,39,0),(40,40,0),(41,41,0),(42,42,0),(43,43,0),(44,31,0),(45,44,0),(46,34,0),(47,45,0),(48,46,0),(49,38,0),(50,48,0),(51,33,0),(52,32,0),(53,36,0),(54,37,0),(55,38,0),(56,39,0),(57,40,0),(58,41,0),(59,42,0),(60,43,0),(61,31,0),(62,44,0),(63,34,0),(64,45,0),(65,46,0),(66,33,0),(67,32,0),(68,36,0),(69,37,0),(70,38,0),(71,39,0),(72,40,0),(73,41,0),(74,42,0),(75,43,0),(76,31,0),(77,44,0),(78,34,0),(79,45,0),(80,46,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,9,1,0),(11,9,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,13,1,0),(21,14,0,0),(22,13,1,0),(23,14,0,0),(24,13,1,0),(25,15,1,0),(26,16,0,0),(27,17,0,0),(28,18,1,0),(29,18,1,0),(30,18,1,0),(31,18,1,0),(32,19,1,0),(33,18,1,0),(34,20,0,0),(35,18,1,0),(36,18,1,0),(37,18,1,0),(38,21,1,0),(39,21,1,0),(40,21,1,0),(41,21,1,0),(42,21,1,0),(43,21,1,0),(44,21,1,0),(45,21,1,0),(46,22,0,0),(47,23,0,0),(48,27,1,0),(49,28,0,0),(50,28,0,0),(51,31,0,0),(52,31,0,0),(53,32,1,0),(54,32,1,0),(55,46,1,0),(56,54,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (38,'<NULL>'),(13,'android.permission.ACCESS_COARSE_LOCATION'),(34,'android.permission.ACCESS_COARSE_UPDATES'),(21,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(31,'android.permission.ACCESS_WIFI_STATE'),(37,'android.permission.BIND_DEVICE_ADMIN'),(36,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(29,'android.permission.PROCESS_OUTGOING_CALLS'),(2,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_EXTERNAL_STORAGE'),(4,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(35,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(32,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(26,'android.permission.WAKE_LOCK'),(33,'android.permission.WRITE_CONTACTS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(19,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(22,'com.fede.launcher.permission.READ_SETTINGS'),(15,'com.htc.launcher.permission.READ_SETTINGS'),(10,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(18,'com.lge.launcher.permission.READ_SETTINGS'),(11,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(12,'com.motorola.dlauncher.permission.READ_SETTINGS'),(25,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(28,'com.motorola.launcher.permission.READ_SETTINGS'),(23,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(13,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(15,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(20,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(26,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,24,7),(2,25,8),(3,25,9),(4,26,10),(5,29,11),(6,30,12),(7,33,13),(8,34,14),(9,35,15),(10,36,16),(11,37,17),(12,38,18),(13,40,NULL),(14,41,19),(15,43,20),(16,45,21),(17,47,23),(18,49,24),(19,50,25),(20,53,26);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,4,3),(9,4,5),(10,4,6),(11,4,7),(12,4,8),(13,5,3),(14,5,6),(15,5,8),(16,5,9),(17,5,10),(18,5,11),(19,5,12),(20,5,13),(21,5,14),(22,5,15),(23,5,17),(24,5,16),(25,5,19),(26,5,18),(27,5,21),(28,5,20),(29,5,23),(30,5,22),(31,5,25),(32,5,24),(33,5,27),(34,5,26),(35,5,28),(36,6,34),(37,6,35),(38,6,1),(39,6,32),(40,6,2),(41,6,33),(42,6,3),(43,6,36),(44,6,6),(45,6,8),(46,6,17),(47,6,21),(48,6,27),(49,6,26),(50,6,29),(51,6,31),(52,6,30);
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

-- Dump completed on 2015-10-09  0:40:40
