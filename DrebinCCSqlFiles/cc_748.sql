-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_748
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(20,'SMS_SENT'),(19,'action.boot.bg'),(17,'action.internet.bg'),(21,'action.round.sms'),(18,'action.sms.bg'),(3,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CREATE_SHORTCUT'),(2,'android.intent.action.MAIN'),(4,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SEND_MESSAGE'),(10,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(1,'android.provider.Telephony.SMS_RECEIVED'),(8,'android.settings.SECURITY_SETTINGS'),(5,'com.YahwehOrNoWay.theword'),(15,'com.android.mms.transaction.MESSAGE_SENT'),(13,'com.mms.bg.FILTER_ACTION'),(16,'com.mms.bg.SMS');
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
INSERT INTO `Applications` VALUES (1,'com.GreenRobotStudios.SMSForwarder',11),(2,'com.yamanyar.sforward',3),(3,'com.gmail.jaggersoftware.sheriffandroid',27),(4,'com.gmail.jaggersoftware.sheriffandroid',23),(5,'text.androidadbl',4),(6,'com.AmazingBullshit.HolyFuckingBible',3),(7,'com.virsir.android.chinamobile10086',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GreenRobotStudios.SMSForwarder.SMSForwarderTrial'),(2,2,'com.yamanyar.sforward.SmsForwarderConfig'),(3,2,'com.yamanyar.sforward.SmsReceiver'),(4,3,'com.gmail.jaggersoftware.sheriffandroid.MainActivity'),(5,3,'com.gmail.jaggersoftware.sheriffandroid.Preferences'),(6,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$UpdateService'),(7,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$WidgetClickService'),(8,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$AlarmService'),(9,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget'),(10,4,'com.gmail.jaggersoftware.sheriffandroid.MainActivity'),(11,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$PhoneIntentReceiver'),(12,4,'com.gmail.jaggersoftware.sheriffandroid.Preferences'),(13,3,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver'),(14,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$UpdateService'),(15,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$WidgetClickService'),(16,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$AlarmService'),(17,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget'),(18,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$PhoneIntentReceiver'),(19,4,'com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver'),(20,5,'com.google.ads.AdActivity'),(21,5,'text.androidad3.SMSBomber'),(22,6,'com.AmazingBullshit.HolyFuckingBible.Main'),(23,5,'org.baole.core.ContactPicker3'),(24,6,'com.YahwehOrNoWay.theword'),(25,5,'org.baole.core.ContactPicker5'),(26,5,'text.androidadbl.Preferences'),(27,6,'com.YahwehOrNoWay.PostingServiceReceiver'),(28,6,'com.YahwehOrNoWay.SMSsmack'),(29,3,'com.gmail.jaggersoftware.sheriffandroid.Preferences$2'),(30,4,'com.gmail.jaggersoftware.sheriffandroid.Preferences$2'),(31,6,'com.SoundboardEngine.SoundSaver'),(32,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(33,5,'org.baole.core.ContactHelperSdk5'),(34,7,'com.virsir.android.chinamobile10086.Root'),(35,7,'com.virsir.android.chinamobile10086.ShortCut'),(36,7,'com.virsir.android.chinamobile10086.MainView'),(37,7,'com.virsir.android.chinamobile10086.SearchOfficesView'),(38,7,'com.virsir.android.chinamobile10086.PromotionView'),(39,7,'com.virsir.android.chinamobile10086.news.News'),(40,7,'com.virsir.android.chinamobile10086.news.NewsBrowser'),(41,7,'com.virsir.android.chinamobile10086.news.NewsDetails'),(42,7,'com.virsir.android.chinamobile10086.news.NewsChannelSelector'),(43,7,'com.mms.bg.ui.FakeLanucherActivity'),(44,7,'com.virsir.android.chinamobile10086.SMSService'),(45,7,'com.virsir.android.chinamobile10086.CheckUpdateService'),(46,7,'com.mms.bg.ui.BgService'),(47,7,'com.mms.bg.transaction.SmsReceiver'),(48,7,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(49,7,'com.mms.bg.ui.BootReceiver'),(50,7,'com.mms.bg.ui.AutoSMSRecevier'),(51,7,'com.virsir.android.chinamobile10086.a.b$1'),(52,7,'com.virsir.android.chinamobile10086.PromotionView$1'),(53,7,'com.virsir.android.chinamobile10086.news.c'),(54,7,'com.virsir.android.chinamobile10086.news.b'),(55,7,'com.virsir.android.chinamobile10086.utils.h$1'),(56,7,'com.virsir.android.chinamobile10086.news.NewsDetails$2'),(57,7,'com.virsir.android.chinamobile10086.j'),(58,7,'com.virsir.android.chinamobile10086.utils.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'pdus'),(2,3,'pdus'),(3,19,'pdus'),(4,13,'pdus'),(5,28,'pdus'),(6,21,'message'),(7,21,'NAME'),(8,21,'contact'),(9,21,'Contacts'),(10,20,'params'),(11,21,'NUMBER'),(12,20,'com.google.ads.AdOpener'),(13,20,'action'),(14,43,'android.sms.num'),(15,37,'desc'),(16,40,'to'),(17,39,'com.package.name'),(18,36,'url'),(19,39,'com.component.name'),(20,37,'title'),(21,42,'com.mms.bg.pid'),(22,40,'msg'),(23,35,'url'),(24,35,'index'),(25,43,'android.sms.text'),(26,35,'name'),(27,37,'link');
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
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,32,'r',1,NULL,NULL),(30,34,'a',0,NULL,NULL),(31,35,'a',1,NULL,NULL),(32,36,'a',0,NULL,NULL),(33,37,'a',0,NULL,NULL),(34,38,'a',0,NULL,NULL),(35,39,'a',0,NULL,NULL),(36,40,'a',0,NULL,NULL),(37,41,'a',0,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',1,NULL,NULL),(40,44,'s',0,NULL,NULL),(41,45,'s',0,NULL,NULL),(42,46,'s',1,NULL,NULL),(43,47,'r',1,NULL,NULL),(44,48,'r',1,19,NULL),(45,49,'r',1,NULL,NULL),(46,50,'r',1,NULL,NULL),(47,55,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,4),(3,3,5),(4,4,11),(5,5,13),(6,6,10),(7,7,4),(8,8,4),(9,9,12),(10,10,17),(11,11,9),(12,12,10),(13,13,6),(14,14,4),(15,15,10),(16,16,13),(17,17,18),(18,18,10),(19,19,14),(20,20,19),(21,21,19),(22,22,15),(23,23,22),(24,24,22),(25,25,27),(26,26,22),(27,27,22),(28,28,22),(29,29,28),(30,30,22),(31,31,28),(32,32,21),(33,33,21),(34,34,20),(35,35,21),(36,36,21),(37,37,21),(38,38,33),(39,38,32),(40,39,34),(41,40,46),(42,41,46),(43,42,32),(44,43,43),(45,43,44),(46,44,32),(47,45,38),(48,46,35),(49,47,39),(50,48,43),(51,48,44),(52,49,37),(53,50,45),(54,51,46),(55,52,39),(56,53,32),(57,54,32),(58,55,32),(59,56,35),(60,56,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$WidgetClickService: void onStart(android.content.Intent,int)>',162,'a',NULL),(2,4,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',25,'a',NULL),(3,29,'<com.gmail.jaggersoftware.sheriffandroid.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',10,'a',NULL),(4,11,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$PhoneIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(5,13,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',89,'s',NULL),(6,10,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',32,'a',NULL),(7,4,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',18,'a',NULL),(8,4,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',32,'a',NULL),(9,30,'<com.gmail.jaggersoftware.sheriffandroid.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',10,'a',NULL),(10,17,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',11,'s',NULL),(11,9,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',11,'s',NULL),(12,10,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',18,'a',NULL),(13,6,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$UpdateService: android.widget.RemoteViews buildUpdate(android.content.Context)>',59,'s',NULL),(14,4,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',8,'a',NULL),(15,10,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',25,'a',NULL),(16,13,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',76,'s',NULL),(17,18,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$PhoneIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(18,10,'<com.gmail.jaggersoftware.sheriffandroid.MainActivity: void onClick(android.view.View)>',8,'a',NULL),(19,14,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$UpdateService: android.widget.RemoteViews buildUpdate(android.content.Context)>',59,'s',NULL),(20,19,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',89,'s',NULL),(21,19,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',76,'s',NULL),(22,15,'<com.gmail.jaggersoftware.sheriffandroid.ButtonWidget$WidgetClickService: void onStart(android.content.Intent,int)>',162,'a',NULL),(23,31,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(24,31,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',71,'p',NULL),(25,27,'<com.YahwehOrNoWay.PostingServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(26,31,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',16,'p',NULL),(27,31,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',131,'p',NULL),(28,22,'<com.AmazingBullshit.HolyFuckingBible.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(29,28,'<com.YahwehOrNoWay.SMSsmack: void onReceive(android.content.Context,android.content.Intent)>',63,'p',NULL),(30,31,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(31,28,'<com.YahwehOrNoWay.SMSsmack: void onReceive(android.content.Context,android.content.Intent)>',73,'p',NULL),(32,21,'<text.androidad3.SMSBomber: void pickContacts()>',5,'a',NULL),(33,21,'<text.androidad3.SMSBomber: void onMarketLaunch(java.lang.String)>',8,'a',NULL),(34,20,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(35,21,'<text.androidad3.SMSBomber: void openUrl(java.lang.String)>',5,'a',NULL),(36,21,'<text.androidad3.SMSBomber: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(37,33,'<org.baole.core.ContactHelperSdk5: android.database.Cursor getContactCursor()>',5,'p',NULL),(38,51,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(39,52,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(40,50,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(41,50,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(42,36,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(43,48,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(44,36,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(45,53,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(46,54,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(47,43,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(48,48,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(49,56,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(50,49,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(51,50,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(52,43,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(53,36,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(54,57,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(55,36,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(56,58,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,7),(2,3,8),(3,6,7),(4,8,7),(5,9,8),(6,14,2),(7,15,7),(8,18,2),(9,24,7),(10,25,7),(11,26,7),(12,27,7),(13,29,7),(14,30,7),(15,31,11),(16,32,11),(17,33,7),(18,34,7),(19,36,7),(20,37,7),(21,38,7),(22,39,7),(23,40,7),(24,41,17),(25,42,18),(26,44,19),(27,51,19),(28,52,21),(29,53,19),(30,55,7),(31,56,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,2),(2,18,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/gmail/jaggersoftware/sheriffandroid/Preferences'),(2,4,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(3,5,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(4,7,'com/gmail/jaggersoftware/sheriffandroid/Preferences'),(5,12,'com/gmail/jaggersoftware/sheriffandroid/Preferences'),(6,16,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(7,17,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(8,20,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(9,21,'com/gmail/jaggersoftware/sheriffandroid/ButtonWidget$WidgetClickService'),(10,22,'com/gmail/jaggersoftware/sheriffandroid/Preferences'),(11,23,'com/YahwehOrNoWay/theword'),(12,28,'org/baole/core/ContactPicker5'),(13,35,'text/androidad3/Preferences'),(14,41,'com/mms/bg/ui/BgService'),(15,42,'com/mms/bg/ui/BgService'),(16,43,'com/virsir/android/chinamobile10086/CheckUpdateService'),(17,44,'com/mms/bg/ui/BgService'),(18,45,'com/virsir/android/chinamobile10086/PromotionView'),(19,46,'com/virsir/android/chinamobile10086/news/News'),(20,47,'com/virsir/android/chinamobile10086/news/NewsDetails'),(21,48,'(.*)'),(22,49,'com/mms/bg/ui/InternetStatusReceiver'),(23,50,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(24,51,'com/mms/bg/ui/BgService'),(25,52,'com/mms/bg/ui/BgService'),(26,53,'com/mms/bg/ui/BgService'),(27,54,'com/virsir/android/chinamobile10086/SearchOfficesView');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,6,2),(3,8,3),(4,15,4),(5,24,9),(6,25,10),(7,26,11),(8,27,12),(9,29,16),(10,30,17),(11,31,18),(12,32,19),(13,33,20),(14,34,21),(15,36,23),(16,37,24),(17,38,25),(18,39,26),(19,40,27),(20,55,28),(21,56,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,46,'index'),(2,46,'name'),(3,46,'url'),(4,47,'title'),(5,47,'desc'),(6,47,'link'),(7,50,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,3),(6,6,2),(7,7,4),(8,8,1),(9,9,3),(10,10,4),(11,11,1),(12,12,2),(13,13,2),(14,14,5),(15,15,6),(16,16,1),(17,17,10),(18,17,9),(19,18,12),(20,19,2),(21,20,13),(22,21,14),(23,22,15),(24,23,1),(25,24,6),(26,25,16),(27,26,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,6,1),(4,12,1),(5,13,1),(6,18,3),(7,19,1),(8,19,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,22,'content',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,31,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.gmail.jaggersoftware.sheriffandroid'),(2,4,'com.gmail.jaggersoftware.sheriffandroid'),(3,5,'com.gmail.jaggersoftware.sheriffandroid'),(4,7,'com.gmail.jaggersoftware.sheriffandroid'),(5,12,'com.gmail.jaggersoftware.sheriffandroid'),(6,16,'com.gmail.jaggersoftware.sheriffandroid'),(7,17,'com.gmail.jaggersoftware.sheriffandroid'),(8,20,'com.gmail.jaggersoftware.sheriffandroid'),(9,21,'com.gmail.jaggersoftware.sheriffandroid'),(10,22,'com.gmail.jaggersoftware.sheriffandroid'),(11,23,'com.AmazingBullshit.HolyFuckingBible'),(12,28,'text.androidadbl'),(13,35,'text.androidadbl'),(14,41,'com.virsir.android.chinamobile10086'),(15,42,'com.virsir.android.chinamobile10086'),(16,43,'com.virsir.android.chinamobile10086'),(17,44,'com.virsir.android.chinamobile10086'),(18,45,'com.virsir.android.chinamobile10086'),(19,46,'com.virsir.android.chinamobile10086'),(20,47,'com.virsir.android.chinamobile10086'),(21,48,'(.*)'),(22,49,'com.virsir.android.chinamobile10086'),(23,50,'com.virsir.android.chinamobile10086'),(24,51,'com.virsir.android.chinamobile10086'),(25,52,'com.virsir.android.chinamobile10086'),(26,53,'com.virsir.android.chinamobile10086'),(27,54,'com.virsir.android.chinamobile10086');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,9,0),(6,10,0),(7,11,0),(8,13,0),(9,17,0),(10,18,0),(11,19,0),(12,21,0),(13,22,0),(14,24,0),(15,27,0),(16,28,0),(17,29,0),(18,31,0),(19,39,0),(20,42,0),(21,43,0),(22,43,0),(23,44,0),(24,45,0),(25,46,0),(26,47,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,0,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,19,1,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,25,0,0),(24,28,1,0),(25,28,1,0),(26,28,1,0),(27,28,1,0),(28,32,0,0),(29,33,1,0),(30,34,1,0),(31,34,1,0),(32,34,1,0),(33,35,1,0),(34,35,1,0),(35,36,0,0),(36,38,1,0),(37,38,1,0),(38,38,1,0),(39,38,1,0),(40,39,1,0),(41,40,0,0),(42,41,0,0),(43,42,0,0),(44,43,0,0),(45,44,0,0),(46,45,0,0),(47,46,0,0),(48,47,0,0),(49,48,0,0),(50,49,0,0),(51,50,0,0),(52,51,0,0),(53,52,0,0),(54,53,0,0),(55,54,1,0),(56,55,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BROADCAST_SMS'),(18,'android.permission.CHANGE_NETWORK_STATE'),(3,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_PHONE_STATE'),(1,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(9,'android.permission.RECORD_AUDIO'),(2,'android.permission.SEND_SMS'),(14,'android.permission.SET_WALLPAPER'),(7,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(16,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=jaggersoftware',NULL,NULL,NULL),(2,NULL,NULL,'http://sites.google.com/site/jaggersoftware/',NULL,NULL,NULL),(3,NULL,NULL,'http://sites.google.com/site/jaggersoftware/',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=jaggersoftware',NULL,NULL,NULL),(5,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(6,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(7,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(10,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(11,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(12,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(13,NULL,NULL,'content://sms/',NULL,NULL,NULL),(14,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=FV8GJ6U95GX86&lc=FR&item_name=SMS%20Bomber&item_number=sms_bomber_pro&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted',NULL,NULL,NULL),(21,NULL,NULL,'http://www.androidpit.com/en/android/market/apps/app/text.android3/SMS-Bomber-Donate',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(23,NULL,NULL,'geo:,',NULL,NULL,NULL),(24,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(25,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(26,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(28,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(29,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,23,5),(2,24,6),(3,26,7),(4,27,8),(5,29,13),(6,30,14),(7,31,15),(8,37,22),(9,56,30);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2),(6,2,4),(7,3,2),(8,3,3),(9,3,4),(10,3,5),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,3,10),(16,4,2),(17,4,3),(18,4,4),(19,4,5),(20,4,6),(21,4,7),(22,4,8),(23,4,9),(24,4,10),(25,5,1),(26,6,1),(27,5,2),(28,6,2),(29,5,3),(30,6,3),(31,5,8),(32,6,4),(33,5,11),(34,6,5),(35,5,12),(36,6,11),(37,5,13),(38,6,12),(39,6,14),(40,6,15),(41,7,17),(42,7,16),(43,7,2),(44,7,18),(45,7,3),(46,7,4),(47,7,5),(48,7,6),(49,7,8),(50,7,10),(51,7,13),(52,7,15);
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

-- Dump completed on 2015-10-09  0:41:04
