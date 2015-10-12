-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_782
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(15,'android.appwidget.action.APPWIDGET_UPDATE'),(16,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PACKAGE_CHANGED'),(6,'android.intent.action.PACKAGE_INSTALL'),(7,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PACKAGE_REPLACED'),(9,'android.intent.action.PACKAGE_RESTARTED'),(11,'android.intent.action.VIEW'),(22,'android.media.AUDIO_BECOMING_SILENT'),(21,'android.net.wifi.WIFI_STATE_CHANGED'),(3,'android.provider.Telephony.SMS_RECEIVED'),(19,'android.settings.SECURITY_SETTINGS'),(10,'com.noshufou.android.su.REQUEST'),(18,'com.whatsapp.sniffer.UPDATE_UI'),(17,'com.whatsapp.sniffer.UPDATE_UI_CONVERSACION'),(14,'net.sunyidingophone.environmental.LastAction'),(13,'net.sunyidingophone.environmental.NextAction'),(12,'net.sunyidingophone.environmental.UpdateTime');
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
INSERT INTO `Applications` VALUES (1,'com.vid4droid',5),(2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08',1),(3,'app.BatteryMonitor2_0',1),(4,'org.expressme.love.ui',1),(5,'net.sunyidingophone.environmental',1),(6,'com.whatsapp.sniffer',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.vid4droid.PleechActivity'),(2,1,'com.vid4droid.PleechService'),(3,1,'com.vid4droid.BillingService'),(4,1,'com.vid4droid.UpdateService'),(5,1,'com.vid4droid.BootReceiver'),(6,1,'com.vid4droid.SmsReceiver'),(7,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.AppInstall'),(8,3,'app.BatteryMonitor2_0.BatteryMonitor'),(9,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.InstallService'),(10,3,'app.BatteryMonitor2_0.InstallService'),(11,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver'),(12,3,'app.BatteryMonitor2_0.PackageReceiver'),(13,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.SuRequestReceiver'),(14,4,'org.expressme.love.ui.MainMenu'),(15,4,'org.expressme.love.ui.LoveActivity'),(16,4,'org.expressme.love.ui.InstallService'),(17,4,'org.expressme.love.ui.PackageReceiver'),(18,5,'net.sunyidingophone.environmental.EnvironmentalMain'),(19,5,'net.sunyidingophone.environmental.PublishedTips'),(20,5,'net.sunyidingophone.environmental.AudioConsole'),(21,5,'net.sunyidingophone.environmental.EnvironmentalTipMain'),(22,5,'net.sunyidingophone.environmental.CallRating'),(23,5,'net.sunyidingophone.environmental.AudioRating'),(24,5,'net.sunyidingophone.environmental.EnergyRating'),(25,5,'net.sunyidingophone.environmental.CallConsole'),(26,5,'net.sunyidingophone.environmental.CallListReport'),(27,5,'net.sunyidingophone.environmental.EnergyConsole'),(28,5,'net.sunyidingophone.environmental.LocationAction'),(29,5,'net.sunyidingophone.environmental.WidgetUpdateService'),(30,6,'com.whatsapp.sniffer.WhatsAppSnifferActivity'),(31,5,'net.sunyidingophone.environmental.InstallService'),(32,5,'net.sunyidingophone.environmental.MiniEnvironmentalWidget'),(33,6,'com.whatsapp.sniffer.ConversationActivity'),(34,6,'com.whatsapp.sniffer.helpers.Preferences'),(35,5,'net.sunyidingophone.environmental.PackageReceiver'),(36,6,'com.google.ads.AdActivity'),(37,6,'com.whatsapp.sniffer.services.ArpspoofService'),(38,6,'com.whatsapp.sniffer.services.TCPDumpService'),(39,3,'app.Util.BatteryWrapper$1'),(40,3,'app.BatteryMonitor2_0.BatteryMonitor$1'),(41,2,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.ApnControl'),(42,3,'app.BatteryMonitor2_0.ApnControl'),(43,4,'org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl'),(44,4,'org.expressme.love.contentwrapper.messager.MessagerWrapperImpl'),(45,4,'org.expressme.love.ui.MainMenu$2'),(46,4,'org.expressme.love.ui.ApnControl'),(47,6,'com.whatsapp.sniffer.helpers.k'),(48,6,'com.whatsapp.sniffer.helpers.WifiChangeChecker'),(49,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(50,6,'com.whatsapp.sniffer.a'),(51,6,'com.whatsapp.sniffer.m'),(52,6,'com.whatsapp.sniffer.r'),(53,6,'com.whatsapp.sniffer.c'),(54,5,'net.sunyidingophone.environmental.CallRating$1'),(55,5,'net.sunyidingophone.environmental.EnergyWrapper'),(56,5,'net.sunyidingophone.environmental.EnvironmentalTipMain$4'),(57,5,'net.sunyidingophone.environmental.CallWrapper'),(58,5,'net.sunyidingophone.environmental.ApnControl'),(59,5,'net.sunyidingophone.environmental.EnergyRating$1'),(60,5,'net.sunyidingophone.environmental.BatteryWrapper$1'),(61,5,'net.sunyidingophone.environmental.EnergyConsole$1'),(62,6,'com.whatsapp.sniffer.helpers.a'),(63,5,'net.sunyidingophone.environmental.AudioConsole$1'),(64,5,'android.appwidget.AppWidgetProvider'),(65,5,'net.sunyidingophone.environmental.EnvironmentalTipMain$2'),(66,5,'net.sunyidingophone.environmental.AudioRating$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,13,'desired_cmd'),(3,13,'socket'),(4,37,'interface'),(5,30,'fromNotification'),(6,36,'com.google.circles.platform.result.extra.ACTION'),(7,36,'action'),(8,36,'com.google.circles.platform.result.extra.CONFIRMATION'),(9,36,'com.google.ads.AdOpener'),(10,37,'gateway'),(11,33,'conversation_name'),(12,33,'table_name'),(13,36,'params'),(14,37,'localBin'),(15,26,'position');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,48,'r',1,NULL,NULL),(42,49,'r',1,NULL,NULL),(43,50,'r',1,NULL,NULL),(44,51,'r',1,NULL,NULL),(45,60,'r',1,NULL,NULL),(46,61,'r',1,NULL,NULL),(47,63,'r',1,NULL,NULL),(48,64,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,1),(4,4,5),(5,5,1),(6,6,12),(7,7,11),(8,8,8),(9,9,7),(10,10,11),(11,11,8),(12,12,7),(13,13,11),(14,14,14),(15,15,15),(16,16,17),(17,16,14),(18,17,15),(19,18,15),(20,19,15),(21,20,14),(22,21,15),(23,22,14),(24,23,38),(25,23,37),(26,24,38),(27,24,37),(28,25,38),(29,25,37),(30,26,37),(31,26,38),(32,27,38),(33,27,37),(34,28,37),(35,28,38),(36,29,36),(37,30,30),(38,31,30),(39,32,38),(40,32,37),(41,33,37),(42,33,38),(43,34,37),(44,34,38),(45,35,37),(46,35,38),(47,36,33),(48,37,22),(49,38,38),(50,38,37),(51,39,32),(52,40,36),(53,41,28),(54,42,27),(55,43,21),(56,44,22),(57,45,26),(58,45,25),(59,45,22),(60,46,18),(61,47,18),(62,48,24),(63,49,24),(64,50,27),(65,51,38),(66,51,37),(67,52,18),(68,53,30),(69,54,32),(70,55,21),(71,56,21),(72,57,25),(73,58,18),(74,59,23),(75,60,23),(76,61,21),(77,62,34),(78,62,18),(79,63,25),(80,64,18),(81,64,34),(82,65,25),(83,65,26),(84,65,22),(85,66,18),(86,67,18),(87,68,28),(88,69,32),(89,70,32),(90,71,27),(91,72,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,1,'<com.vid4droid.PleechActivity: void startBillingService()>',3,'s',NULL),(3,1,'<com.vid4droid.PleechActivity: void startPleechServices()>',3,'s',NULL),(4,5,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(5,1,'<com.vid4droid.PleechActivity: void updateApp(java.lang.String)>',49,'a',NULL),(6,12,'<app.BatteryMonitor2_0.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(7,11,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(8,8,'<app.BatteryMonitor2_0.BatteryMonitor: void installhider()>',15,'s',NULL),(9,41,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(10,11,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',10,'a',NULL),(11,42,'<app.BatteryMonitor2_0.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(12,7,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.AppInstall: void onCreate(android.os.Bundle)>',20,'s',NULL),(13,11,'<hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08.PackageReceiver: void onReceive(android.content.Context,android.content.Intent)>',49,'s',NULL),(14,14,'<org.expressme.love.ui.MainMenu: void installhider()>',15,'s',NULL),(15,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getCallLogCount_adress(long,long,int,java.lang.String)>',15,'p',NULL),(16,17,'<org.expressme.love.ui.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(17,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getTotalCallLogCount()>',5,'p',NULL),(18,43,'<org.expressme.love.contentwrapper.calllog.CalllogWrapperImpl: int getCallLogCount_adress(int)>',12,'p',NULL),(19,44,'<org.expressme.love.contentwrapper.messager.MessagerWrapperImpl: int getSmsTotalCount(int)>',15,'p',NULL),(20,45,'<org.expressme.love.ui.MainMenu$2: void onClick(android.view.View)>',7,'a',NULL),(21,44,'<org.expressme.love.contentwrapper.messager.MessagerWrapperImpl: int getSmsCount(java.lang.String,int)>',16,'p',NULL),(22,46,'<org.expressme.love.ui.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(23,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',693,'r',NULL),(24,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',340,'r',NULL),(25,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',537,'r',NULL),(26,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',91,'r',NULL),(27,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',578,'p',NULL),(28,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',132,'p',NULL),(29,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',76,'a',NULL),(30,52,'<com.whatsapp.sniffer.r: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(31,30,'<com.whatsapp.sniffer.WhatsAppSnifferActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(32,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',731,'r',NULL),(33,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',452,'r',NULL),(34,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',249,'p',NULL),(35,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',654,'r',NULL),(36,53,'<com.whatsapp.sniffer.c: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,54,'<net.sunyidingophone.environmental.CallRating$1: void onClick(android.view.View)>',7,'a',NULL),(38,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',208,'r',NULL),(39,32,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onEnabled(android.content.Context)>',4,'s',NULL),(40,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',112,'a',NULL),(41,28,'<net.sunyidingophone.environmental.LocationAction: void startLoactionService()>',23,'a',NULL),(42,55,'<net.sunyidingophone.environmental.EnergyWrapper: int updateBrightness(int)>',16,'p',NULL),(43,56,'<net.sunyidingophone.environmental.EnvironmentalTipMain$4: void onClick(android.content.DialogInterface,int)>',16,'s',NULL),(44,54,'<net.sunyidingophone.environmental.CallRating$1: void onClick(android.view.View)>',7,'a',NULL),(45,57,'<net.sunyidingophone.environmental.CallWrapper: net.sunyidingophone.environmental.CallLogEntry[] GetCallLogEntry(long,long)>',7,'p',NULL),(46,58,'<net.sunyidingophone.environmental.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(47,18,'<net.sunyidingophone.environmental.EnvironmentalMain: void installhider()>',15,'s',NULL),(48,59,'<net.sunyidingophone.environmental.EnergyRating$1: void onClick(android.view.View)>',7,'a',NULL),(49,59,'<net.sunyidingophone.environmental.EnergyRating$1: void onClick(android.view.View)>',7,'a',NULL),(50,55,'<net.sunyidingophone.environmental.EnergyWrapper: void updateBacklightTime(int)>',16,'p',NULL),(51,47,'<com.whatsapp.sniffer.helpers.k: boolean b(android.content.Context,java.lang.String)>',380,'p',NULL),(52,18,'<net.sunyidingophone.environmental.EnvironmentalMain: void installhider()>',15,'s',NULL),(53,62,'<com.whatsapp.sniffer.helpers.a: java.util.ArrayList a(android.content.Context)>',39,'p',NULL),(54,32,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',6,'s',NULL),(55,56,'<net.sunyidingophone.environmental.EnvironmentalTipMain$4: void onClick(android.content.DialogInterface,int)>',16,'s',NULL),(56,65,'<net.sunyidingophone.environmental.EnvironmentalTipMain$2: void onClick(android.view.View)>',7,'a',NULL),(57,25,'<net.sunyidingophone.environmental.CallConsole: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(58,18,'<net.sunyidingophone.environmental.EnvironmentalMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(59,66,'<net.sunyidingophone.environmental.AudioRating$1: void onClick(android.view.View)>',7,'a',NULL),(60,66,'<net.sunyidingophone.environmental.AudioRating$1: void onClick(android.view.View)>',7,'a',NULL),(61,65,'<net.sunyidingophone.environmental.EnvironmentalTipMain$2: void onClick(android.view.View)>',7,'a',NULL),(62,35,'<net.sunyidingophone.environmental.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(63,25,'<net.sunyidingophone.environmental.CallConsole: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(64,35,'<net.sunyidingophone.environmental.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(65,57,'<net.sunyidingophone.environmental.CallWrapper: net.sunyidingophone.environmental.CallLogEntry[] GetCallLogEntry(long,long)>',7,'p',NULL),(66,58,'<net.sunyidingophone.environmental.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(67,18,'<net.sunyidingophone.environmental.EnvironmentalMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(68,28,'<net.sunyidingophone.environmental.LocationAction: void startLoactionService()>',23,'a',NULL),(69,32,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',6,'s',NULL),(70,32,'<net.sunyidingophone.environmental.MiniEnvironmentalWidget: void onEnabled(android.content.Context)>',4,'s',NULL),(71,55,'<net.sunyidingophone.environmental.EnergyWrapper: void updateBacklightTime(int)>',16,'p',NULL),(72,55,'<net.sunyidingophone.environmental.EnergyWrapper: int updateBrightness(int)>',16,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,11),(2,6,1),(3,9,1),(4,13,1),(5,15,17),(6,16,18),(7,17,18),(8,18,18),(9,20,11),(10,22,17),(11,23,17),(12,24,17),(13,25,11),(14,27,18),(15,28,12),(16,29,11),(17,30,19),(18,31,20),(19,32,12),(20,34,20),(21,35,11),(22,41,12),(23,48,1),(24,50,1),(25,52,19),(26,54,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,1),(2,9,1),(3,13,1),(4,19,1),(5,48,1),(6,50,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/vid4droid/PleechService'),(2,2,'com/vid4droid/BillingService'),(3,3,'com/vid4droid/PleechService'),(4,4,'com/vid4droid/BillingService'),(5,6,'j.SMSHider.MainService'),(6,7,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(7,8,'app/BatteryMonitor2_0/InstallService'),(8,9,'NULL-CONSTANT'),(9,10,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(10,11,'hider/AppInstall/nvanmoshiriji_V31_mumayi_aff08/InstallService'),(11,12,'org/expressme/love/ui/InstallService'),(12,13,'j.SMSHider.MainService'),(13,14,'org/expressme/love/ui/LoveActivity'),(14,19,'com.google.android.apps.circles.platform.PlusOneActivity'),(15,21,'com/whatsapp/sniffer/helpers/Preferences'),(16,26,'net/sunyidingophone/environmental/CallConsole'),(17,33,'net/sunyidingophone/environmental/CallConsole'),(18,36,'net/sunyidingophone/environmental/InstallService'),(19,37,'net/sunyidingophone/environmental/EnergyConsole'),(20,38,'net/sunyidingophone/environmental/EnergyConsole'),(21,39,'net/sunyidingophone/environmental/InstallService'),(22,40,'net/sunyidingophone/environmental/WidgetUpdateService'),(23,42,'net/sunyidingophone/environmental/PublishedTips'),(24,43,'net/sunyidingophone/environmental/CallListReport'),(25,44,'(.*)'),(26,45,'net/sunyidingophone/environmental/AudioConsole'),(27,46,'net/sunyidingophone/environmental/AudioConsole'),(28,47,'net/sunyidingophone/environmental/PublishedTips'),(29,49,'net/sunyidingophone/environmental/CallListReport'),(30,48,'j.SMSHider.MainService'),(31,50,'j.SMSHider.MainService'),(32,51,'(.*)'),(33,53,'net/sunyidingophone/environmental/WidgetUpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,9,5),(4,13,7),(5,20,17),(6,25,19),(7,29,20),(8,31,22),(9,34,23),(10,35,26),(11,48,30),(12,50,32);
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
INSERT INTO `IExtras` VALUES (1,7,'InstallFromLocal'),(2,10,'InstallFromLocal'),(3,11,'InstallFromLocal'),(4,19,'com.google.circles.platform.intent.extra.ACTION'),(5,19,'(.*)'),(6,19,'com.google.circles.platform.intent.extra.ENTITY'),(7,19,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(8,43,'position'),(9,49,'position');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,8),(10,6,7),(11,6,9),(12,7,9),(13,7,8),(14,7,7),(15,7,6),(16,7,4),(17,7,5),(18,8,10),(19,9,1),(20,10,7),(21,10,8),(22,10,9),(23,10,5),(24,10,6),(25,10,4),(26,11,1),(27,12,11),(28,13,1),(29,14,1),(30,15,1),(31,16,1),(32,17,1),(33,18,1),(34,19,1),(35,20,1),(36,21,11),(37,22,1),(38,23,1),(39,24,1),(40,25,1),(41,26,1),(42,27,1),(43,28,1),(44,29,12),(45,30,1),(46,31,1),(47,32,13),(48,33,1),(49,34,14),(50,35,1),(51,36,1),(52,37,12),(53,38,13),(54,39,15),(55,40,14),(56,41,15),(57,42,5),(58,42,6),(59,42,7),(60,42,8),(61,42,4),(62,42,9),(63,43,8),(64,43,9),(65,43,6),(66,43,7),(67,43,4),(68,43,5),(69,44,16),(70,45,16),(71,46,16),(72,47,16),(73,48,16),(74,49,16),(75,50,17),(76,51,17),(77,52,17),(78,53,17),(79,54,18),(80,55,18),(81,56,18),(82,57,18),(83,58,21),(84,59,16),(85,60,16),(86,61,16),(87,62,16),(88,63,16),(89,64,16),(90,65,16),(91,66,16),(92,67,16),(93,68,16),(94,69,16),(95,70,16),(96,71,22),(97,72,22),(98,73,22),(99,74,22),(100,75,22),(101,76,22),(102,77,16),(103,78,16),(104,79,16),(105,80,16),(106,81,22),(107,82,16),(108,83,22),(109,84,16),(110,85,22),(111,86,22),(112,87,22),(113,88,22),(114,89,16),(115,90,16),(116,91,16),(117,92,16),(118,93,16),(119,94,16);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,5,1),(5,9,1),(6,11,1),(7,19,1),(8,36,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'package',NULL,NULL,NULL,NULL,NULL),(2,7,'package',NULL,NULL,NULL,NULL,NULL),(3,10,'package',NULL,NULL,NULL,NULL,NULL),(4,42,'package',NULL,NULL,NULL,NULL,NULL),(5,43,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,31,'(.*)','(.*)'),(3,35,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.vid4droid'),(2,2,'com.vid4droid'),(3,3,'com.vid4droid'),(4,4,'com.vid4droid'),(5,6,'j.SMSHider'),(6,7,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(7,8,'app.BatteryMonitor2_0'),(8,9,'(.*)'),(9,10,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(10,11,'hider.AppInstall.nvanmoshiriji_V31_mumayi_aff08'),(11,12,'org.expressme.love.ui'),(12,13,'j.SMSHider'),(13,14,'org.expressme.love.ui'),(14,19,'com.google.android.apps.plus'),(15,21,'com.whatsapp.sniffer'),(16,26,'net.sunyidingophone.environmental'),(17,33,'net.sunyidingophone.environmental'),(18,36,'net.sunyidingophone.environmental'),(19,37,'net.sunyidingophone.environmental'),(20,38,'net.sunyidingophone.environmental'),(21,39,'net.sunyidingophone.environmental'),(22,40,'net.sunyidingophone.environmental'),(23,42,'net.sunyidingophone.environmental'),(24,43,'net.sunyidingophone.environmental'),(25,44,'net.sunyidingophone.environmental'),(26,45,'net.sunyidingophone.environmental'),(27,46,'net.sunyidingophone.environmental'),(28,47,'net.sunyidingophone.environmental'),(29,49,'net.sunyidingophone.environmental'),(30,48,'j.SMSHider'),(31,50,'j.SMSHider'),(32,51,'net.sunyidingophone.environmental'),(33,53,'net.sunyidingophone.environmental');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,8,0),(6,11,0),(7,12,0),(8,13,0),(9,14,0),(10,17,0),(11,18,0),(12,19,0),(13,20,0),(14,21,0),(15,22,0),(16,23,0),(17,24,0),(18,25,0),(19,18,0),(20,26,0),(21,19,0),(22,20,0),(23,27,0),(24,21,0),(25,22,0),(26,28,0),(27,23,0),(28,24,0),(29,29,0),(30,25,0),(31,26,0),(32,29,0),(33,27,0),(34,29,0),(35,28,0),(36,30,0),(37,29,0),(38,29,0),(39,32,0),(40,29,0),(41,32,0),(42,34,0),(43,34,0),(44,12,0),(45,39,0),(46,40,0),(47,12,0),(48,39,0),(49,40,0),(50,41,0),(51,42,0),(52,43,0),(53,44,0),(54,41,0),(55,42,0),(56,43,0),(57,44,0),(58,41,0),(59,45,0),(60,46,0),(61,32,0),(62,47,0),(63,34,0),(64,48,0),(65,45,0),(66,46,0),(67,32,0),(68,47,0),(69,34,0),(70,48,0),(71,45,0),(72,46,0),(73,32,0),(74,47,0),(75,34,0),(76,48,0),(77,45,0),(78,46,0),(79,32,0),(80,47,0),(81,45,0),(82,34,0),(83,46,0),(84,48,0),(85,32,0),(86,47,0),(87,34,0),(88,48,0),(89,45,0),(90,46,0),(91,32,0),(92,47,0),(93,34,0),(94,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,10,0,0),(10,12,0,0),(11,13,0,0),(12,14,0,0),(13,16,0,0),(14,20,0,0),(15,23,1,0),(16,24,1,0),(17,25,1,0),(18,26,1,0),(19,29,0,0),(20,30,1,0),(21,31,0,0),(22,32,1,0),(23,33,1,0),(24,35,1,0),(25,36,1,0),(26,37,0,0),(27,38,1,0),(28,39,1,0),(29,40,1,0),(30,41,1,0),(31,40,1,0),(32,43,1,0),(33,44,0,0),(34,40,1,0),(35,40,1,0),(36,47,0,0),(37,48,0,0),(38,49,0,0),(39,52,0,0),(40,54,0,0),(41,55,1,0),(42,56,0,0),(43,57,0,0),(44,58,0,0),(45,59,0,0),(46,60,0,0),(47,61,0,0),(48,62,0,0),(49,63,0,0),(50,64,0,0),(51,67,0,0),(52,68,1,0),(53,69,0,0),(54,70,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,3,2,NULL),(2,3,2,2,NULL),(3,30,1,2,NULL),(4,52,1,2,NULL),(5,28,1,2,NULL),(6,54,1,2,NULL),(7,29,1,2,NULL),(8,34,1,2,NULL),(9,1,2,2,NULL),(10,4,3,2,NULL),(11,30,5,2,NULL),(12,21,35,2,NULL),(13,52,5,2,NULL),(14,36,31,2,NULL),(15,30,30,2,NULL),(16,28,5,2,NULL),(17,52,30,2,NULL),(18,39,31,2,NULL),(19,54,5,2,NULL),(20,28,30,2,NULL),(21,30,18,2,NULL),(22,29,5,2,NULL),(23,54,30,2,NULL),(24,52,18,2,NULL),(25,34,5,2,NULL),(26,29,30,2,NULL),(27,28,18,2,NULL),(28,30,6,2,NULL),(29,34,30,2,NULL),(30,54,18,2,NULL),(31,52,6,2,NULL),(32,29,6,2,NULL),(33,29,18,2,NULL),(34,28,6,2,NULL),(35,34,6,2,NULL),(36,34,18,2,NULL),(37,54,6,2,NULL),(38,29,7,2,NULL),(39,30,19,2,NULL),(40,52,19,2,NULL),(41,34,7,2,NULL),(42,28,19,2,NULL),(43,29,13,2,NULL),(44,54,19,2,NULL),(45,34,13,2,NULL),(46,29,19,2,NULL),(47,29,8,2,NULL),(48,34,19,2,NULL),(49,34,8,2,NULL),(50,30,20,2,NULL),(51,29,12,2,NULL),(52,52,20,2,NULL),(53,34,12,2,NULL),(54,28,20,2,NULL),(55,29,39,2,NULL),(56,54,20,2,NULL),(57,34,39,2,NULL),(58,29,20,2,NULL),(59,29,40,2,NULL),(60,34,20,2,NULL),(61,34,40,2,NULL),(62,30,21,2,NULL),(63,29,14,2,NULL),(64,52,21,2,NULL),(65,34,14,2,NULL),(66,28,21,2,NULL),(67,29,21,2,NULL),(68,54,21,2,NULL),(69,34,21,2,NULL),(70,30,22,2,NULL),(71,29,22,2,NULL),(72,52,22,2,NULL),(73,34,22,2,NULL),(74,28,22,2,NULL),(75,29,23,2,NULL),(76,54,22,2,NULL),(77,34,23,2,NULL),(78,30,23,2,NULL),(79,29,24,2,NULL),(80,52,23,2,NULL),(81,34,24,2,NULL),(82,28,23,2,NULL),(83,29,25,2,NULL),(84,54,23,2,NULL),(85,34,25,2,NULL),(86,30,24,2,NULL),(87,29,26,2,NULL),(88,52,24,2,NULL),(89,34,26,2,NULL),(90,28,24,2,NULL),(91,29,27,2,NULL),(92,54,24,2,NULL),(93,34,27,2,NULL),(94,43,26,2,NULL),(95,29,28,2,NULL),(96,49,26,2,NULL),(97,34,28,2,NULL),(98,30,25,2,NULL),(99,29,29,2,NULL),(100,52,25,2,NULL),(101,34,29,2,NULL),(102,28,25,2,NULL),(103,29,32,2,NULL),(104,54,25,2,NULL),(105,34,32,2,NULL),(106,30,26,2,NULL),(107,29,34,2,NULL),(108,52,26,2,NULL),(109,34,34,2,NULL),(110,28,26,2,NULL),(111,29,45,2,NULL),(112,54,26,2,NULL),(113,34,45,2,NULL),(114,30,27,2,NULL),(115,29,46,2,NULL),(116,52,27,2,NULL),(117,34,46,2,NULL),(118,28,27,2,NULL),(119,29,47,2,NULL),(120,54,27,2,NULL),(121,34,47,2,NULL),(122,12,16,2,NULL),(123,30,7,2,NULL),(124,29,48,2,NULL),(125,30,14,2,NULL),(126,52,7,2,NULL),(127,34,48,2,NULL),(128,52,14,2,NULL),(129,30,13,2,NULL),(130,29,41,2,NULL),(131,52,13,2,NULL),(132,28,14,2,NULL),(133,34,41,2,NULL),(134,30,8,2,NULL),(135,29,42,2,NULL),(136,54,14,2,NULL),(137,52,8,2,NULL),(138,34,42,2,NULL),(139,30,12,2,NULL),(140,29,43,2,NULL),(141,52,12,2,NULL),(142,34,43,2,NULL),(143,30,39,2,NULL),(144,29,44,2,NULL),(145,52,39,2,NULL),(146,34,44,2,NULL),(147,30,40,2,NULL),(148,30,41,2,NULL),(149,52,40,2,NULL),(150,52,41,2,NULL),(151,28,41,2,NULL),(152,30,29,2,NULL),(153,54,41,2,NULL),(154,52,29,2,NULL),(155,30,42,2,NULL),(156,30,32,2,NULL),(157,52,42,2,NULL),(158,52,32,2,NULL),(159,28,42,2,NULL),(160,28,28,2,NULL),(161,54,42,2,NULL),(162,54,28,2,NULL),(163,30,43,2,NULL),(164,30,34,2,NULL),(165,52,43,2,NULL),(166,52,34,2,NULL),(167,28,43,2,NULL),(168,30,45,2,NULL),(169,54,43,2,NULL),(170,52,45,2,NULL),(171,30,44,2,NULL),(172,30,46,2,NULL),(173,52,44,2,NULL),(174,52,46,2,NULL),(175,28,44,2,NULL),(176,30,47,2,NULL),(177,54,44,2,NULL),(178,52,47,2,NULL),(179,30,48,2,NULL),(180,52,48,2,NULL),(181,28,29,2,NULL),(182,54,29,2,NULL),(183,40,29,2,NULL),(184,53,29,2,NULL),(185,28,7,2,NULL),(186,54,7,2,NULL),(187,28,13,2,NULL),(188,54,13,2,NULL),(189,28,8,2,NULL),(190,54,8,2,NULL),(191,28,12,2,NULL),(192,54,12,2,NULL),(193,28,39,2,NULL),(194,54,39,2,NULL),(195,28,40,2,NULL),(196,54,40,2,NULL),(197,28,34,2,NULL),(198,54,34,2,NULL),(199,28,45,2,NULL),(200,54,45,2,NULL),(201,28,46,2,NULL),(202,54,46,2,NULL),(203,28,47,2,NULL),(204,54,47,2,NULL),(205,28,48,2,NULL),(206,54,48,2,NULL),(207,10,9,2,NULL),(208,7,9,2,NULL),(209,11,9,2,NULL),(210,8,10,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(14,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(5,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(7,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(8,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(9,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'content://sms',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/data/phones/filter',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones/filter',NULL,NULL,NULL),(17,NULL,NULL,'http://market.android.com/details?id=com.whatsapp.snifferDonate',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/phones/filter',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/details?id=com.whatsapp.snifferDonate',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://settings/system',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://settings/system',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/data/phones/filter',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/phones/filter',NULL,NULL,NULL),(30,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(31,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(32,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(33,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(34,NULL,NULL,'content://settings/system',NULL,NULL,NULL),(35,NULL,NULL,'content://settings/system',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,3),(2,11,4),(3,15,6),(4,17,8),(5,18,9),(6,19,10),(7,19,11),(8,21,12),(9,21,13),(10,22,14),(11,27,15),(12,28,16),(13,34,18),(14,42,21),(15,45,24),(16,46,25),(17,50,27),(18,51,28),(19,53,29),(20,65,31),(21,66,33),(22,71,34),(23,72,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,3,1),(13,2,6),(14,3,6),(15,2,10),(16,3,10),(17,2,11),(18,3,11),(19,2,12),(20,3,12),(21,3,13),(22,4,1),(23,4,2),(24,4,3),(25,4,6),(26,4,10),(27,4,11),(28,4,12),(29,4,14),(30,5,1),(31,5,2),(32,5,6),(33,5,10),(34,5,11),(35,5,12),(36,5,13),(37,5,14),(38,5,15),(39,6,17),(40,6,16),(41,6,18),(42,6,6),(43,6,12),(44,6,14);
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

-- Dump completed on 2015-10-12  3:31:44
