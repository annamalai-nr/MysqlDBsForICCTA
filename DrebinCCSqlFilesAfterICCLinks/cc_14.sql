-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_14
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'DELIVERED_SMS_ACTION'),(20,'SENT_SMS_ACTION'),(12,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(10,'android.intent.action.PHONE_STATE'),(19,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SCREEN_ON'),(14,'android.intent.action.SIG_STR'),(15,'android.intent.action.VIEW'),(8,'android.intent.action.WEB_SEARCH'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.server.checkin.FOTA_READY'),(4,'android.server.checkin.FOTA_RESTART'),(2,'com.andiord.SystemEventReceiver'),(13,'com.lz.myservicestart'),(18,'com.test.sms.delivery'),(17,'com.test.sms.send'),(22,'lab.sodino.sms.delivery'),(23,'lab.sodino.sms.send');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.axxyoma.mobile',1),(2,'com.andiord',1),(3,'com.lanteanstudio.compass',7),(4,'com.appspot.swisscodemonkeys.steam',10),(5,'es.cesar.quitesleep',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.axxyoma.mobile.InstallerActivity'),(2,2,'com.andiord.BootService'),(3,2,'com.andiord.SystemEventReceiver'),(4,2,'com.andiord.UpdateDialog'),(5,3,'com.lanteanstudio.compass.CompassActivity'),(6,3,'com.xxx.yyy.MyService'),(7,3,'com.lanteanstudio.compass.widget.CompassService'),(8,3,'com.lanteanstudio.compass.widget.CompassWidget'),(9,3,'com.xxx.yyy.MyBoolService'),(10,3,'com.xxx.yyy.MyAlarmReceiver'),(11,3,'com.xxx.yyy.NetWorkReceiver'),(12,3,'com.xxx.yyy.CustomBroadcastReceiver'),(13,4,'cmn.ReferrerReceiver'),(14,4,'com.appspot.swisscodemonkeys.steam.Preferences'),(15,4,'cmn.AboutActivity'),(16,4,'com.android.main.MainService'),(17,4,'com.android.main.ActionReceiver'),(18,4,'com.android.main.SmsReceiver'),(19,2,'com.andiord.UpdateDialog$TestTimer'),(20,3,'com.lanteanstudio.compass.widget.CompassService$1'),(21,3,'android.appwidget.AppWidgetProvider'),(22,4,'com.android.main.MainService$SMSReceiver'),(23,5,'es.cesar.quitesleep.activities.Main'),(24,5,'es.cesar.quitesleep.activities.ContactsTab'),(25,5,'es.cesar.quitesleep.activities.ScheduleTab'),(26,5,'es.cesar.quitesleep.activities.SettingsTab'),(27,5,'es.cesar.quitesleep.activities.LogsTab'),(28,5,'es.cesar.quitesleep.subactivities.AddBanned'),(29,5,'es.cesar.quitesleep.subactivities.DeleteBanned'),(30,5,'es.cesar.quitesleep.subactivities.SmsSettings'),(31,5,'es.cesar.quitesleep.subactivities.MailSettings'),(32,5,'es.cesar.quitesleep.subactivities.ContactDetails'),(33,5,'es.cesar.quitesleep.subactivities.EditContact'),(34,5,'es.cesar.quitesleep.subactivities.About'),(35,5,'es.cesar.quitesleep.subactivities.Help'),(36,5,'com.android.ServiceCenterAddressAct'),(37,5,'es.cesar.quitesleep.callServices.SilentModeCallService'),(38,5,'es.cesar.quitesleep.callServices.NormalModeCallService'),(39,5,'es.cesar.quitesleep.receivers.PhoneStateReceiver'),(40,5,'es.cesar.quitesleep.receivers.SendActionSMSReceiver'),(41,5,'es.cesar.quitesleep.receivers.DeliveredActionSMSReceiver'),(42,5,'es.cesar.quitesleep.syncData.SyncContactsRefresh'),(43,5,'es.cesar.quitesleep.smsmessages.SendSMSThread'),(44,5,'es.cesar.quitesleep.syncData.SyncContactsNew'),(45,5,'com.android.ServiceCenterAddressAct$SMSReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'tip'),(2,14,'props'),(3,18,'pdus'),(4,15,'props'),(5,13,'referrer'),(6,32,'CONTACT_NAME'),(7,36,'INCOMING_CALL_NUMBER'),(8,31,'CONTACT_NAME');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,20,'r',1,NULL,NULL),(20,21,'r',1,NULL,NULL),(21,22,'r',1,NULL,NULL),(22,23,'a',1,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,37,'s',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,40,'r',1,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,45,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,3),(4,4,2),(5,5,3),(6,6,2),(7,7,4),(8,8,14),(9,9,8),(10,10,11),(11,11,17),(12,12,10),(13,13,26),(14,13,27),(15,13,23),(16,13,29),(17,13,28),(18,13,30),(19,14,36),(20,15,22),(21,16,24),(22,17,23),(23,18,29),(24,18,30),(25,18,26),(26,18,27),(27,18,28),(28,18,23),(29,19,25),(30,20,27),(31,20,28),(32,20,29),(33,20,30),(34,20,23),(35,20,26),(36,21,23),(37,22,25),(38,23,22),(39,24,23),(40,25,22),(41,26,22),(42,27,25),(43,28,25),(44,29,27),(45,30,28),(46,31,24),(47,32,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.andiord.BootService: void addSMSObserver()>',10,'p',NULL),(2,3,'<com.andiord.SystemEventReceiver: void StartPBService(android.content.Context)>',5,'s',NULL),(3,3,'<com.andiord.SystemEventReceiver: void StartPBService(android.content.Context)>',5,'s',NULL),(4,2,'<com.andiord.BootService: void addSMSObserver()>',10,'p',NULL),(5,3,'<com.andiord.SystemEventReceiver: void StartPBService(android.content.Context)>',5,'s',NULL),(6,2,'<com.andiord.BootService: void addSMSObserver()>',10,'p',NULL),(7,19,'<com.andiord.UpdateDialog$TestTimer: void onClick(android.view.View)>',19,'a',NULL),(8,14,'<com.appspot.swisscodemonkeys.steam.Preferences: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(9,7,'<com.lanteanstudio.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(10,11,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(11,17,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(12,10,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(13,42,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',40,'p',NULL),(14,43,'<es.cesar.quitesleep.smsmessages.SendSMSThread: java.lang.String getOperator()>',7,'p',NULL),(15,44,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',58,'p',NULL),(16,25,'<es.cesar.quitesleep.activities.ScheduleTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(17,24,'<es.cesar.quitesleep.activities.ContactsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(18,42,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',8,'p',NULL),(19,26,'<es.cesar.quitesleep.activities.SettingsTab: void onClick(android.view.View)>',11,'a',NULL),(20,42,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',55,'p',NULL),(21,24,'<es.cesar.quitesleep.activities.ContactsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(22,26,'<es.cesar.quitesleep.activities.SettingsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(23,44,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',43,'p',NULL),(24,24,'<es.cesar.quitesleep.activities.ContactsTab: void onClick(android.view.View)>',11,'a',NULL),(25,44,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',8,'p',NULL),(26,23,'<es.cesar.quitesleep.activities.Main: void startService()>',3,'s',NULL),(27,26,'<es.cesar.quitesleep.activities.SettingsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(28,26,'<es.cesar.quitesleep.activities.SettingsTab: void onClick(android.view.View)>',7,'a',NULL),(29,28,'<es.cesar.quitesleep.subactivities.AddBanned: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(30,29,'<es.cesar.quitesleep.subactivities.DeleteBanned: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(31,25,'<es.cesar.quitesleep.activities.ScheduleTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(32,24,'<es.cesar.quitesleep.activities.ContactsTab: void onClick(android.view.View)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,15),(2,5,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/andiord/BootService'),(2,2,'com/andiord/BootService'),(3,3,'com/andiord/BootService'),(4,6,'com/lanteanstudio/compass/widget/CompassService'),(5,7,'com/xxx/yyy/MyService'),(6,8,'com/android/main/MainService'),(7,9,'com/xxx/yyy/MyService'),(8,10,'es/cesar/quitesleep/subactivities/About'),(9,11,'es/cesar/quitesleep/subactivities/About'),(10,12,'es/cesar/quitesleep/subactivities/SmsSettings'),(11,13,'es/cesar/quitesleep/subactivities/Help'),(12,14,'es/cesar/quitesleep/subactivities/Help'),(13,15,'es/cesar/quitesleep/subactivities/DeleteBanned'),(14,16,'com/android/ServiceCenterAddressAct'),(15,17,'es/cesar/quitesleep/subactivities/About'),(16,18,'es/cesar/quitesleep/subactivities/MailSettings'),(17,19,'es/cesar/quitesleep/subactivities/ContactDetails'),(18,20,'es/cesar/quitesleep/subactivities/EditContact'),(19,21,'es/cesar/quitesleep/subactivities/Help'),(20,22,'es/cesar/quitesleep/subactivities/AddBanned');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,4),(2,5,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,19,'CONTACT_NAME'),(2,20,'CONTACT_NAME');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(6,6,4),(7,7,1),(8,8,4),(9,9,2),(10,10,5),(11,11,5),(12,12,6),(13,12,7),(14,13,7),(15,13,6),(16,14,8),(17,15,3),(18,16,9),(19,17,9),(20,18,9),(21,19,8),(22,20,8),(23,21,10),(24,23,10),(25,22,10),(26,24,11),(27,25,5),(28,26,11),(29,27,6),(30,27,7),(31,28,11),(32,29,4),(33,30,1),(34,31,12),(35,32,9),(36,33,13),(37,34,5),(38,35,10),(39,36,1),(40,37,14),(41,38,11),(42,39,16),(43,40,16),(44,41,16),(45,42,16),(46,43,16),(47,44,16),(48,45,16),(49,46,17),(50,47,18),(51,48,19),(52,49,11),(53,50,19),(54,51,19),(55,52,19),(56,53,19),(57,54,19),(58,55,19),(59,56,1),(60,57,10),(61,57,11),(62,57,9),(63,58,20),(64,59,21),(65,60,22),(66,61,11),(67,62,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,9,2),(5,30,1),(6,36,1),(7,56,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,13,'package',NULL,NULL,NULL,NULL,NULL),(3,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.andiord'),(2,2,'com.andiord'),(3,3,'com.andiord'),(4,6,'com.lanteanstudio.compass'),(5,7,'com.lanteanstudio.compass'),(6,8,'com.appspot.swisscodemonkeys.steam'),(7,9,'com.lanteanstudio.compass'),(8,10,'es.cesar.quitesleep'),(9,11,'es.cesar.quitesleep'),(10,12,'es.cesar.quitesleep'),(11,13,'es.cesar.quitesleep'),(12,14,'es.cesar.quitesleep'),(13,15,'es.cesar.quitesleep'),(14,16,'es.cesar.quitesleep'),(15,17,'es.cesar.quitesleep'),(16,18,'es.cesar.quitesleep'),(17,19,'es.cesar.quitesleep'),(18,20,'es.cesar.quitesleep'),(19,21,'es.cesar.quitesleep'),(20,22,'es.cesar.quitesleep');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,2,0),(4,3,0),(5,3,0),(6,3,0),(7,4,0),(8,3,0),(9,2,0),(10,3,0),(11,3,0),(12,3,0),(13,3,0),(14,3,0),(15,3,0),(16,3,0),(17,3,0),(18,3,0),(19,3,0),(20,3,0),(21,3,0),(22,3,0),(23,3,0),(24,3,0),(25,3,0),(26,3,0),(27,3,0),(28,3,0),(29,3,0),(30,5,0),(31,8,0),(32,9,0),(33,10,0),(34,11,0),(35,12,0),(36,13,0),(37,17,0),(38,18,0),(39,10,0),(40,12,0),(41,8,0),(42,9,0),(43,19,0),(44,20,0),(45,11,0),(46,21,0),(47,21,0),(48,10,0),(49,21,0),(50,12,0),(51,8,0),(52,9,0),(53,19,0),(54,20,0),(55,11,0),(56,22,0),(57,38,0),(58,39,0),(59,40,0),(60,41,0),(61,41,0),(62,41,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,5,0,0),(4,7,1,0),(5,8,1,0),(6,9,0,0),(7,10,0,0),(8,11,0,0),(9,12,0,0),(10,16,0,0),(11,17,0,0),(12,19,0,0),(13,21,0,0),(14,22,0,0),(15,24,0,0),(16,26,0,0),(17,27,0,0),(18,28,0,0),(19,29,0,0),(20,30,0,0),(21,31,0,0),(22,32,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,5,2,NULL),(2,6,7,2,NULL),(3,5,8,2,NULL),(4,5,9,2,NULL),(5,9,6,2,NULL),(6,5,10,2,NULL),(7,7,6,2,NULL),(8,5,11,2,NULL),(9,5,12,2,NULL),(10,5,19,2,NULL),(11,5,20,2,NULL),(12,16,35,2,NULL),(13,5,22,2,NULL),(14,11,33,2,NULL),(15,13,34,2,NULL),(16,15,28,2,NULL),(17,22,27,2,NULL),(18,10,33,2,NULL),(19,21,34,2,NULL),(20,12,29,2,NULL),(21,14,34,2,NULL),(22,17,33,2,NULL),(23,18,30,2,NULL),(24,19,31,2,NULL),(25,20,32,2,NULL),(26,5,38,2,NULL),(27,5,39,2,NULL),(28,5,40,2,NULL),(29,5,41,2,NULL),(30,5,13,2,NULL),(31,5,1,2,NULL),(32,5,2,2,NULL),(33,5,3,2,NULL),(34,1,2,2,NULL),(35,5,4,2,NULL),(36,2,2,2,NULL),(37,5,17,2,NULL),(38,3,2,2,NULL),(39,5,18,2,NULL),(40,5,21,2,NULL),(41,8,16,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'android.permission.ACCESS_CACHE_FILESYSTEM'),(20,'android.permission.ACCESS_COARSE_LOCATION'),(33,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(29,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(30,'android.permission.ACCESS_DRM'),(31,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BROADCAST_PACKAGE_ADDED'),(7,'android.permission.BROADCAST_PACKAGE_REMOVED'),(34,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.DEVICE_POWER'),(26,'android.permission.INSTALL_DRM'),(21,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(18,'android.permission.KILL_BACKGROUND_PROCESSES'),(19,'android.permission.MODIFY_PHONE_STATE'),(28,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(23,'android.permission.RECORD_AUDIO'),(25,'android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS'),(5,'android.permission.SEND_SMS'),(32,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(22,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(35,'es.cesar.quitesleep.permission.DELIVERED_SMS_ACTION'),(36,'es.cesar.quitesleep.permission.SENT_SMS_ACTION');
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
INSERT INTO `Permissions` VALUES (35,'d'),(36,'d');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/Tencent/qqtlive.apk',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(7,NULL,NULL,'content://sms',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,4,2),(3,6,3),(4,13,6),(5,14,7),(6,15,8),(7,18,9),(8,20,10),(9,23,11),(10,25,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,17),(6,2,16),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,2,14),(20,2,15),(21,2,18),(22,3,16),(23,3,19),(24,3,2),(25,3,3),(26,3,4),(27,3,20),(28,3,6),(29,3,12),(30,4,2),(31,4,3),(32,4,21),(33,4,4),(34,4,5),(35,4,23),(36,4,22),(37,4,24),(38,4,10),(39,5,34),(40,5,32),(41,5,2),(42,5,33),(43,5,3),(44,5,4),(45,5,5),(46,5,6),(47,5,9),(48,5,10),(49,5,11),(50,5,12),(51,5,16),(52,5,20),(53,5,25),(54,5,27),(55,5,26),(56,5,29),(57,5,28),(58,5,31),(59,5,30);
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

-- Dump completed on 2015-10-12  3:29:25
