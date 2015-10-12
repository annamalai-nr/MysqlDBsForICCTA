-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_388
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'(.*)'),(10,'NULL-CONSTANT'),(15,'android.bluetooth.adapter.action.DISCOVERY_FINISHED'),(14,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(12,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(13,'android.bluetooth.device.action.FOUND'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(5,'android.intent.action.CREATE_SHORTCUT'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PHONE_STATE'),(6,'android.intent.action.RUN'),(4,'android.intent.action.VIEW');
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
INSERT INTO `Applications` VALUES (1,'si.modula.android.instantheartrate',1070),(2,'com.catking.dqe',1),(3,'net.qianyue.book.nky',3),(4,'com.androidemu.harvesgmario',211),(5,'com.gambler.SendSMS',1),(6,'com.androidemu.harvemifeng',209),(7,'com.qixin.ytujumpp',30);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.catking.dqe.LaunchView'),(2,3,'net.qianyue.book.nky.main'),(3,2,'com.catking.dqe.GameActivity'),(4,3,'com.waps.OffersWebView'),(5,2,'com.waps.OffersWebView'),(6,1,'si.modula.android.instantheartrate.InstantHeartRate'),(7,1,'com.geinimi.custom.Ad3053_30530001'),(8,1,'com.geinimi.custom.GoogleKeyboard'),(9,1,'com.geinimi.AdServiceReceiver'),(10,4,'com.waps.OffersWebView'),(11,4,'com.androidemu.harvesgmario.MainActivity'),(12,5,'com.gambler.SendSMS.MainActivity'),(13,4,'com.androidemu.harvesgmario.FileChooser'),(14,4,'com.androidemu.harvesgmario.StateSlotsActivity'),(15,4,'com.androidemu.harvesgmario.KeyProfilesActivity'),(16,4,'com.androidemu.harvesgmario.HelpActivity'),(17,5,'com.gambler.SendSMS.SMSMonitor'),(18,4,'com.androidemu.harvesgmario.DeviceListActivity'),(19,6,'com.waps.OffersWebView'),(20,4,'com.androidemu.harvesgmario.EmulatorSettings'),(21,6,'com.androidemu.harvemifeng.MainActivity'),(22,4,'com.androidemu.harvesgmario.EmulatorActivity'),(23,5,'com.gambler.SendSMS.StartBroadcastReceiver'),(24,6,'com.androidemu.harvemifeng.FileChooser'),(25,6,'com.androidemu.harvemifeng.StateSlotsActivity'),(26,6,'com.androidemu.harvemifeng.KeyProfilesActivity'),(27,4,'com.vpon.adon.android.WebInApp'),(28,6,'com.androidemu.harvemifeng.HelpActivity'),(29,4,'com.androidemu.harvesgmario.CreateShortcuts'),(30,6,'com.androidemu.harvemifeng.DeviceListActivity'),(31,6,'com.androidemu.harvemifeng.EmulatorSettings'),(32,6,'com.androidemu.harvemifeng.EmulatorActivity'),(33,4,'com.androidemu.harvesgmario.EmulatorService'),(34,6,'com.vpon.adon.android.WebInApp'),(35,7,'com.qixin.ytujumpp.MainA'),(36,6,'com.androidemu.harvemifeng.CreateShortcuts'),(37,7,'com.realarcade.DOJ.MrGame'),(38,6,'com.androidemu.harvemifeng.EmulatorService'),(39,7,'com.waps.OffersWebView'),(40,5,'com.gambler.SendSMS.e'),(41,5,'com.gambler.SendSMS.f'),(42,5,'com.gambler.SendSMS.a'),(43,3,'com.waps.s'),(44,3,'com.waps.AppConnect'),(45,2,'com.waps.ac'),(46,1,'com.geinimi.c.b'),(47,2,'com.waps.z'),(48,1,'si.modula.android.instantheartrate.InstantHeartRate$7'),(49,2,'com.waps.q'),(50,3,'com.waps.q'),(51,3,'com.waps.ac'),(52,3,'com.waps.aa'),(53,2,'com.waps.AppConnect'),(54,1,'si.modula.android.instantheartrate.InstantHeartRate$5'),(55,1,'com.geinimi.AdActivity'),(56,3,'com.waps.o'),(57,2,'com.waps.s'),(58,3,'com.waps.z'),(59,1,'com.geinimi.c.j'),(60,2,'com.waps.aa'),(61,1,'com.geinimi.ads.c'),(62,1,'com.geinimi.AdService'),(63,2,'com.waps.o'),(64,2,'com.catking.utils.MyNotificationManager$IncomingCallReceiver'),(65,7,'com.waps.s'),(66,7,'com.waps.AppConnect'),(67,4,'com.waps.z'),(68,4,'com.waps.o'),(69,7,'com.waps.q'),(70,7,'com.waps.o'),(71,7,'com.waps.z'),(72,7,'com.qixin.ytujumpp.MainA$2'),(73,6,'com.waps.q'),(74,4,'com.waps.s'),(75,6,'com.waps.z'),(76,7,'com.waps.ac'),(77,6,'com.waps.aa'),(78,4,'com.waps.aa'),(79,7,'com.waps.aa'),(80,6,'com.waps.o'),(81,4,'com.androidemu.harvesgmario.DeviceListActivity$3'),(82,4,'com.waps.q'),(83,6,'com.androidemu.harvemifeng.DeviceListActivity$3'),(84,4,'com.waps.ac'),(85,4,'com.waps.AppConnect'),(86,6,'com.waps.ac'),(87,6,'com.waps.s'),(88,6,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'WAPS_PID'),(2,2,'WAPS_PID'),(3,4,'Offers_URL'),(4,4,'URL'),(5,5,'USER_ID'),(6,5,'URL'),(7,5,'offers_webview_tag'),(8,4,'WAPS_ID'),(9,2,'WAPS_ID'),(10,4,'CLIENT_PACKAGE'),(11,2,'CLIENT_PACKAGE'),(12,4,'URL_PARAMS'),(13,5,'ACTIVITY_FLAG'),(14,4,'APP_ID'),(15,5,'DEVICE_ID'),(16,2,'APP_ID'),(17,1,'DEVICE_ID'),(18,4,'SHWO_FLAG'),(19,3,'DEVICE_ID'),(20,4,'offers_webview_tag'),(21,5,'Offers_URL'),(22,5,'APP_ID'),(23,1,'APP_ID'),(24,3,'APP_ID'),(25,4,'UrlPath'),(26,4,'Notify_Url_Params'),(27,2,'UMENG_CHANNEL'),(28,5,'UrlPath'),(29,5,'CLIENT_PACKAGE'),(30,4,'ACTIVITY_FLAG'),(31,1,'CLIENT_PACKAGE'),(32,2,'UMENG_APPKEY'),(33,3,'CLIENT_PACKAGE'),(34,4,'DEVICE_ID'),(35,2,'DEVICE_ID'),(36,4,'isFinshClose'),(37,4,'USER_ID'),(38,4,'Notify_Id'),(39,7,'did'),(40,8,'did'),(41,7,'ACTIVITY_PARAM_KEY'),(42,5,'SHWO_FLAG'),(43,5,'isFinshClose'),(44,7,'ptid'),(45,8,'ptid'),(46,7,'salesid'),(47,8,'salesid'),(48,7,'cpid'),(49,8,'cpid'),(50,5,'WAPS_ID'),(51,1,'WAPS_ID'),(52,3,'WAPS_ID'),(53,5,'Notify_Id'),(54,5,'WAPS_PID'),(55,1,'WAPS_PID'),(56,3,'WAPS_PID'),(57,5,'Notify_Url_Params'),(58,5,'URL_PARAMS'),(59,39,'WAPS_ID'),(60,37,'WAPS_ID'),(61,35,'WAPS_ID'),(62,39,'USER_ID'),(63,39,'Offers_URL'),(64,39,'DEVICE_ID'),(65,37,'DEVICE_ID'),(66,35,'DEVICE_ID'),(67,35,'UMENG_CHANNEL'),(68,39,'UrlPath'),(69,35,'UMENG_APPKEY'),(70,39,'SHWO_FLAG'),(71,39,'isFinshClose'),(72,13,'currentDir'),(73,11,'currentDir'),(74,19,'UrlPath'),(75,39,'APP_ID'),(76,37,'APP_ID'),(77,35,'APP_ID'),(78,21,'WAPS_ID'),(79,19,'WAPS_ID'),(80,32,'WAPS_ID'),(81,24,'WAPS_ID'),(82,21,'CLIENT_PACKAGE'),(83,32,'CLIENT_PACKAGE'),(84,24,'CLIENT_PACKAGE'),(85,21,'APP_ID'),(86,19,'APP_ID'),(87,32,'APP_ID'),(88,24,'APP_ID'),(89,14,'saveMode'),(90,10,'URL'),(91,19,'URL'),(92,39,'offers_webview_tag'),(93,19,'ACTIVITY_FLAG'),(94,19,'isFinshClose'),(95,39,'Notify_Url_Params'),(96,10,'CLIENT_PACKAGE'),(97,10,'DEVICE_ID'),(98,13,'DEVICE_ID'),(99,22,'DEVICE_ID'),(100,11,'DEVICE_ID'),(101,10,'WAPS_ID'),(102,13,'WAPS_ID'),(103,22,'WAPS_ID'),(104,11,'WAPS_ID'),(105,10,'offers_webview_tag'),(106,39,'CLIENT_PACKAGE'),(107,10,'Notify_Id'),(108,37,'CLIENT_PACKAGE'),(109,10,'UrlPath'),(110,35,'CLIENT_PACKAGE'),(111,32,'device_address'),(112,19,'offers_webview_tag'),(113,19,'URL_PARAMS'),(114,39,'Notify_Id'),(115,39,'ACTIVITY_FLAG'),(116,39,'WAPS_PID'),(117,37,'WAPS_PID'),(118,10,'APP_ID'),(119,35,'WAPS_PID'),(120,13,'APP_ID'),(121,22,'APP_ID'),(122,11,'APP_ID'),(123,39,'URL_PARAMS'),(124,39,'URL'),(125,21,'DEVICE_ID'),(126,15,'title'),(127,19,'DEVICE_ID'),(128,10,'URL_PARAMS'),(129,32,'DEVICE_ID'),(130,10,'SHWO_FLAG'),(131,24,'DEVICE_ID'),(132,10,'USER_ID'),(133,19,'CLIENT_PACKAGE'),(134,19,'USER_ID'),(135,10,'ACTIVITY_FLAG'),(136,13,'CLIENT_PACKAGE'),(137,22,'CLIENT_PACKAGE'),(138,11,'CLIENT_PACKAGE'),(139,10,'Notify_Url_Params'),(140,21,'title'),(141,24,'title'),(142,25,'saveMode'),(143,19,'Notify_Url_Params'),(144,19,'Notify_Id'),(145,19,'SHWO_FLAG'),(146,26,'title'),(147,13,'filters'),(148,11,'filters'),(149,10,'WAPS_PID'),(150,13,'WAPS_PID'),(151,22,'WAPS_PID'),(152,21,'filters'),(153,11,'WAPS_PID'),(154,24,'filters'),(155,21,'currentDir'),(156,24,'currentDir'),(157,10,'isFinshClose'),(158,22,'device_address'),(159,10,'Offers_URL'),(160,13,'title'),(161,11,'title'),(162,19,'Offers_URL'),(163,21,'WAPS_PID'),(164,19,'WAPS_PID'),(165,32,'WAPS_PID'),(166,24,'WAPS_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,15,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,42,'r',1,NULL,NULL),(42,49,'r',1,NULL,NULL),(43,50,'r',1,NULL,NULL),(44,64,'r',1,NULL,NULL),(45,69,'r',1,NULL,NULL),(46,73,'r',1,NULL,NULL),(47,81,'r',1,NULL,NULL),(48,82,'r',1,NULL,NULL),(49,83,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,12),(2,2,23),(3,3,17),(4,4,23),(5,5,17),(6,6,17),(7,7,2),(8,8,2),(9,9,4),(10,10,2),(11,11,1),(12,12,5),(13,13,2),(14,14,5),(15,15,8),(16,16,5),(17,17,9),(18,18,6),(19,19,5),(20,20,4),(21,21,4),(22,22,3),(23,22,1),(24,23,3),(25,24,6),(26,25,3),(27,26,7),(28,27,4),(29,28,8),(30,29,3),(31,30,7),(32,31,4),(33,32,3),(34,32,1),(35,33,8),(36,34,4),(37,35,8),(38,36,5),(39,37,8),(40,38,8),(41,39,8),(42,40,1),(43,40,3),(44,41,8),(45,42,8),(46,43,5),(47,44,1),(48,45,1),(49,45,3),(50,46,1),(51,47,3),(52,48,37),(53,49,35),(54,50,37),(55,50,35),(56,51,35),(57,52,10),(58,53,10),(59,54,32),(60,55,39),(61,56,10),(62,57,39),(63,58,22),(64,59,21),(65,59,24),(66,60,13),(67,60,11),(68,61,39),(69,62,24),(70,62,21),(71,63,32),(72,64,19),(73,65,22),(74,66,35),(75,67,19),(76,68,35),(77,69,35),(78,69,37),(79,70,13),(80,70,11),(81,70,22),(82,71,19),(83,72,39),(84,73,19),(85,74,37),(86,74,35),(87,75,22),(88,76,10),(89,77,35),(90,78,31),(91,79,31),(92,80,39),(93,81,11),(94,81,13),(95,82,22),(96,83,32),(97,84,19),(98,85,39),(99,86,13),(100,86,11),(101,87,32),(102,88,35),(103,89,13),(104,89,11),(105,89,22),(106,90,24),(107,90,21),(108,91,22),(109,92,32),(110,93,31),(111,94,10),(112,94,18),(113,95,22),(114,95,13),(115,95,11),(116,96,30),(117,96,19),(118,97,22),(119,98,21),(120,98,24),(121,98,32),(122,99,20),(123,100,32),(124,101,20),(125,102,24),(126,102,21),(127,102,32),(128,103,22),(129,104,13),(130,104,11),(131,104,22),(132,105,21),(133,105,24),(134,106,11),(135,106,13),(136,107,32),(137,108,20),(138,109,32),(139,109,21),(140,109,24),(141,110,10),(142,111,21),(143,111,32),(144,111,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,12,'<com.gambler.SendSMS.MainActivity: void onCreate(android.os.Bundle)>',33,'s',NULL),(2,23,'<com.gambler.SendSMS.StartBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'a',NULL),(3,17,'<com.gambler.SendSMS.SMSMonitor: void onCreate()>',13,'p',NULL),(4,23,'<com.gambler.SendSMS.StartBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(5,40,'<com.gambler.SendSMS.e: void a()>',11,'p',NULL),(6,40,'<com.gambler.SendSMS.e: void a()>',4,'p',NULL),(7,43,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(8,44,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(9,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(10,43,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(11,1,'<com.catking.dqe.LaunchView: void onResume()>',14,'a',NULL),(12,45,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,43,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(14,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(15,46,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(16,47,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(17,9,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(18,48,'<si.modula.android.instantheartrate.InstantHeartRate$7: void onClick(android.view.View)>',9,'a',NULL),(19,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(20,51,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(21,52,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,53,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(23,3,'<com.catking.dqe.GameActivity: void goBackToLoginActivity()>',9,'a',NULL),(24,54,'<si.modula.android.instantheartrate.InstantHeartRate$5: void onClick(android.view.View)>',6,'a',NULL),(25,53,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(26,55,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(27,56,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(28,46,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(29,3,'<com.catking.dqe.GameActivity: void doQuit()>',8,'a',NULL),(30,55,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(31,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(32,57,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(33,46,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(34,58,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,59,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(36,60,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,46,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(38,46,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(39,61,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(40,57,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(41,46,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(42,62,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(43,63,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(44,1,'<com.catking.dqe.LaunchView: void popContentView()>',5,'a',NULL),(45,57,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(46,1,'<com.catking.dqe.LaunchView: void doQuit()>',7,'a',NULL),(47,53,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(48,37,'<com.realarcade.DOJ.MrGame: boolean AndroidLaunchBrowser(java.lang.String)>',5,'a',NULL),(49,35,'<com.qixin.ytujumpp.MainA: void onCreate(android.os.Bundle)>',33,'a',NULL),(50,65,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(51,66,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(52,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(53,67,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,32,'<com.androidemu.harvemifeng.EmulatorActivity: void onSaveState()>',7,'a',NULL),(55,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(56,68,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(57,70,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(58,22,'<com.androidemu.harvesgmario.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(59,21,'<com.androidemu.harvemifeng.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(60,11,'<com.androidemu.harvesgmario.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(61,71,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(62,21,'<com.androidemu.harvemifeng.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(63,32,'<com.androidemu.harvemifeng.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(64,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(65,22,'<com.androidemu.harvesgmario.EmulatorActivity: void onSaveState()>',7,'a',NULL),(66,72,'<com.qixin.ytujumpp.MainA$2: void onClick(android.view.View)>',30,'a',NULL),(67,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(68,66,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(69,65,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(70,74,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(71,75,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(72,76,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(73,77,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(74,65,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(75,22,'<com.androidemu.harvesgmario.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(76,78,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,35,'<com.qixin.ytujumpp.MainA: void onCreate(android.os.Bundle)>',74,'a',NULL),(78,31,'<com.androidemu.harvemifeng.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(79,31,'<com.androidemu.harvemifeng.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(80,79,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,11,'<com.androidemu.harvesgmario.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(82,22,'<com.androidemu.harvesgmario.EmulatorActivity: void onLoadState()>',6,'a',NULL),(83,32,'<com.androidemu.harvemifeng.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(84,80,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(85,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(86,11,'<com.androidemu.harvesgmario.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(87,32,'<com.androidemu.harvemifeng.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(88,72,'<com.qixin.ytujumpp.MainA$2: void onClick(android.view.View)>',17,'a',NULL),(89,74,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(90,21,'<com.androidemu.harvemifeng.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(91,22,'<com.androidemu.harvesgmario.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(92,32,'<com.androidemu.harvemifeng.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(93,31,'<com.androidemu.harvemifeng.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL),(94,84,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(95,85,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(96,86,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(97,22,'<com.androidemu.harvesgmario.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(98,87,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(99,20,'<com.androidemu.harvesgmario.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL),(100,32,'<com.androidemu.harvemifeng.EmulatorActivity: void onLoadState()>',6,'a',NULL),(101,20,'<com.androidemu.harvesgmario.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(102,87,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(103,22,'<com.androidemu.harvesgmario.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(104,74,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(105,21,'<com.androidemu.harvemifeng.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(106,11,'<com.androidemu.harvesgmario.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(107,32,'<com.androidemu.harvemifeng.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(108,20,'<com.androidemu.harvesgmario.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(109,87,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(110,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(111,88,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,1),(3,3,6),(4,7,1),(5,8,1),(6,9,4),(7,11,4),(8,15,1),(9,16,1),(10,17,1),(11,18,4),(12,20,1),(13,21,8),(14,22,8),(15,24,1),(16,25,8),(17,27,1),(18,28,8),(19,29,8),(20,32,8),(21,33,8),(22,35,8),(23,37,4),(24,40,4),(25,41,1),(26,45,1),(27,46,4),(28,47,1),(29,48,1),(30,49,9),(31,50,1),(32,51,10),(33,56,4),(34,58,4),(35,59,4),(36,60,1),(37,62,4),(38,63,4),(39,64,4),(40,67,1),(41,68,1),(42,69,1),(43,70,1),(44,73,4),(45,76,4),(46,77,4),(47,78,12),(48,79,4),(49,80,4),(50,87,1),(51,88,1),(52,89,4),(53,91,1),(54,92,4),(55,93,1),(56,94,4),(57,95,1),(58,97,1),(59,109,12),(60,110,4),(61,112,1),(62,113,1),(63,114,14),(64,124,4),(65,125,4),(66,130,1),(67,131,14),(68,132,1),(69,133,1),(70,134,4),(71,135,1),(72,136,4),(73,137,4),(74,143,1),(75,144,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,3),(3,15,1),(4,16,3),(5,17,1),(6,20,3),(7,24,1),(8,27,3),(9,41,4),(10,45,1),(11,47,3),(12,48,1),(13,50,3),(14,60,4),(15,67,1),(16,68,3),(17,69,1),(18,70,3),(19,87,1),(20,88,3),(21,91,1),(22,93,3),(23,95,1),(24,97,3),(25,112,1),(26,113,3),(27,130,1),(28,132,3),(29,133,1),(30,135,3),(31,143,1),(32,144,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/gambler/SendSMS/SMSMonitor'),(2,2,'com/gambler/SendSMS/MainActivity'),(3,3,'com/gambler/SendSMS/SMSMonitor'),(4,4,'com/waps/OffersWebView'),(5,5,'com/waps/OffersWebView'),(6,10,'(.*)'),(7,12,'NULL-CONSTANT'),(8,14,'(.*)'),(9,19,'(.*)'),(10,26,'NULL-CONSTANT'),(11,30,'com/waps/OffersWebView'),(12,31,'com/waps/OffersWebView'),(13,36,'com/catking/dqe/LaunchView'),(14,34,'com/waps/OffersWebView'),(15,39,'(.*)'),(16,38,'com/waps/OffersWebView'),(17,42,'(.*)'),(18,43,'(.*)'),(19,52,'com/waps/OffersWebView'),(20,53,'com/waps/OffersWebView'),(21,54,'com/waps/OffersWebView'),(22,55,'(.*)'),(23,57,'com/catking/dqe/GameActivity'),(24,61,'com/waps/OffersWebView'),(25,65,'com/realarcade/DOJ/MrGame'),(26,72,'(.*)'),(27,71,'com/waps/OffersWebView'),(28,75,'(.*)'),(29,74,'com/androidemu/harvemifeng/StateSlotsActivity'),(30,81,'com/androidemu/harvemifeng/EmulatorSettings'),(31,79,'com/androidemu/harvesgmario/EmulatorActivity'),(32,82,'(.*)'),(33,84,'com/realarcade/DOJ/MrGame'),(34,83,'com/androidemu/harvesgmario/StateSlotsActivity'),(35,86,'com/waps/OffersWebView'),(36,96,'NULL-CONSTANT'),(37,98,'com/waps/OffersWebView'),(38,99,'com/waps/OffersWebView'),(39,100,'com/waps/OffersWebView'),(40,102,'com/realarcade/DOJ/MrGame'),(41,101,'com/waps/OffersWebView'),(42,103,'com/androidemu/harvemifeng/FileChooser'),(43,104,'com/waps/OffersWebView'),(44,105,'com/androidemu/harvemifeng/KeyProfilesActivity'),(45,106,'com/waps/OffersWebView'),(46,108,'com/androidemu/harvesgmario/StateSlotsActivity'),(47,107,'com/waps/OffersWebView'),(48,115,'com/realarcade/DOJ/MrGame'),(49,116,'com/waps/OffersWebView'),(50,117,'com/androidemu/harvemifeng/EmulatorSettings'),(51,118,'com/androidemu/harvesgmario/EmulatorSettings'),(52,119,'com/androidemu/harvemifeng/KeyProfilesActivity'),(53,120,'NULL-CONSTANT'),(54,122,'NULL-CONSTANT'),(55,121,'com/waps/OffersWebView'),(56,123,'com/androidemu/harvesgmario/DeviceListActivity'),(57,126,'com/androidemu/harvesgmario/KeyProfilesActivity'),(58,127,'com/androidemu/harvemifeng/StateSlotsActivity'),(59,128,'com/androidemu/harvesgmario/KeyProfilesActivity'),(60,137,'com/androidemu/harvemifeng/EmulatorActivity'),(61,138,'com/androidemu/harvesgmario/EmulatorSettings'),(62,139,'com/androidemu/harvemifeng/DeviceListActivity'),(63,140,'com/androidemu/harvesgmario/FileChooser'),(64,141,'com/waps/OffersWebView'),(65,145,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,4),(2,11,5),(3,18,7),(4,37,8),(5,40,10),(6,46,12),(7,56,16),(8,58,17),(9,59,18),(10,62,19),(11,63,20),(12,64,21),(13,73,22),(14,74,23),(15,76,24),(16,77,25),(17,79,26),(18,80,27),(19,83,28),(20,89,29),(21,92,30),(22,94,31),(23,108,32),(24,110,33),(25,124,34),(26,125,35),(27,127,36),(28,134,37),(29,136,38),(30,137,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'CLIENT_PACKAGE'),(2,4,'URL'),(3,4,'isFinshClose'),(4,4,'offers_webview_tag'),(5,5,'USER_ID'),(6,5,'CLIENT_PACKAGE'),(7,5,'Offers_URL'),(8,5,'offers_webview_tag'),(9,5,'URL_PARAMS'),(10,21,'android.intent.extra.INTENT'),(11,22,'android.intent.extra.INTENT'),(12,25,'android.intent.extra.TITLE'),(13,25,'android.intent.extra.INTENT'),(14,28,'android.intent.extra.INTENT'),(15,29,'android.intent.extra.TITLE'),(16,29,'android.intent.extra.INTENT'),(17,30,'Notify_Url_Params'),(18,31,'USER_ID'),(19,30,'UrlPath'),(20,31,'CLIENT_PACKAGE'),(21,32,'android.intent.extra.INTENT'),(22,30,'ACTIVITY_FLAG'),(23,31,'Offers_URL'),(24,30,'isFinshClose'),(25,31,'offers_webview_tag'),(26,30,'offers_webview_tag'),(27,31,'URL_PARAMS'),(28,33,'android.intent.extra.TITLE'),(29,33,'android.intent.extra.INTENT'),(30,34,'UrlPath'),(31,35,'android.intent.extra.TITLE'),(32,34,'ACTIVITY_FLAG'),(33,34,'isFinshClose'),(34,35,'android.intent.extra.INTENT'),(35,34,'offers_webview_tag'),(36,38,'UrlPath'),(37,38,'ACTIVITY_FLAG'),(38,38,'offers_webview_tag'),(39,38,'URL_PARAMS'),(40,49,'android.intent.extra.shortcut.NAME'),(41,49,'android.intent.extra.shortcut.ICON'),(42,49,'android.intent.extra.shortcut.INTENT'),(43,51,'android.intent.extra.shortcut.NAME'),(44,51,'android.intent.extra.shortcut.ICON'),(45,51,'android.intent.extra.shortcut.INTENT'),(46,52,'Notify_Url_Params'),(47,52,'UrlPath'),(48,52,'ACTIVITY_FLAG'),(49,52,'isFinshClose'),(50,52,'offers_webview_tag'),(51,53,'UrlPath'),(52,53,'ACTIVITY_FLAG'),(53,53,'isFinshClose'),(54,53,'offers_webview_tag'),(55,54,'CLIENT_PACKAGE'),(56,54,'URL'),(57,54,'isFinshClose'),(58,54,'offers_webview_tag'),(59,61,'USER_ID'),(60,61,'CLIENT_PACKAGE'),(61,61,'Offers_URL'),(62,61,'offers_webview_tag'),(63,61,'URL_PARAMS'),(64,71,'USER_ID'),(65,71,'CLIENT_PACKAGE'),(66,71,'Offers_URL'),(67,71,'offers_webview_tag'),(68,71,'URL_PARAMS'),(69,74,'saveMode'),(70,83,'saveMode'),(71,86,'USER_ID'),(72,86,'CLIENT_PACKAGE'),(73,86,'Offers_URL'),(74,86,'offers_webview_tag'),(75,86,'URL_PARAMS'),(76,98,'UrlPath'),(77,98,'ACTIVITY_FLAG'),(78,98,'isFinshClose'),(79,98,'offers_webview_tag'),(80,99,'CLIENT_PACKAGE'),(81,100,'Notify_Url_Params'),(82,99,'URL'),(83,100,'UrlPath'),(84,99,'isFinshClose'),(85,100,'ACTIVITY_FLAG'),(86,99,'offers_webview_tag'),(87,100,'isFinshClose'),(88,100,'offers_webview_tag'),(89,101,'Notify_Url_Params'),(90,101,'UrlPath'),(91,101,'ACTIVITY_FLAG'),(92,101,'isFinshClose'),(93,101,'offers_webview_tag'),(94,103,'title'),(95,103,'filters'),(96,104,'UrlPath'),(97,104,'ACTIVITY_FLAG'),(98,104,'isFinshClose'),(99,104,'offers_webview_tag'),(100,105,'title'),(101,106,'UrlPath'),(102,106,'ACTIVITY_FLAG'),(103,106,'isFinshClose'),(104,106,'offers_webview_tag'),(105,107,'Notify_Url_Params'),(106,107,'UrlPath'),(107,107,'ACTIVITY_FLAG'),(108,107,'isFinshClose'),(109,107,'offers_webview_tag'),(110,116,'CLIENT_PACKAGE'),(111,116,'URL'),(112,116,'isFinshClose'),(113,116,'offers_webview_tag'),(114,119,'title'),(115,121,'USER_ID'),(116,121,'CLIENT_PACKAGE'),(117,121,'Offers_URL'),(118,121,'offers_webview_tag'),(119,121,'URL_PARAMS'),(120,126,'title'),(121,128,'title'),(122,140,'title'),(123,140,'filters'),(124,141,'CLIENT_PACKAGE'),(125,141,'URL'),(126,141,'isFinshClose'),(127,141,'offers_webview_tag'),(128,145,'USER_ID'),(129,145,'CLIENT_PACKAGE'),(130,145,'Offers_URL'),(131,145,'offers_webview_tag'),(132,145,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,2),(5,6,1),(6,7,1),(7,8,3),(8,9,3),(9,10,1),(10,11,2),(11,12,4),(12,13,5),(13,14,4),(14,15,1),(15,16,5),(16,17,3),(17,18,3),(18,19,3),(19,20,7),(20,21,7),(21,22,11),(22,23,7),(23,24,7),(24,25,13),(25,26,13),(26,27,13),(27,28,13),(28,29,15),(29,30,15),(30,31,7),(31,32,15),(32,33,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,6,1),(8,8,2),(9,9,2),(10,10,1),(11,10,2),(12,12,2),(13,13,2),(14,14,2),(15,15,1),(16,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'file',NULL,NULL,NULL,NULL,NULL),(2,12,NULL,NULL,NULL,NULL,'application','zip'),(3,12,NULL,NULL,NULL,NULL,'application','octet-stream'),(4,14,'file',NULL,NULL,NULL,NULL,NULL),(5,14,NULL,NULL,NULL,NULL,'application','zip'),(6,14,NULL,NULL,NULL,NULL,'application','octet-stream'),(7,20,'package',NULL,NULL,NULL,NULL,NULL),(8,21,'package',NULL,NULL,NULL,NULL,NULL),(9,23,'package',NULL,NULL,NULL,NULL,NULL),(10,24,'package',NULL,NULL,NULL,NULL,NULL),(11,31,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,18,'application','vnd.android.package-archive'),(2,40,'application','vnd.android.package-archive'),(3,46,'application','vnd.android.package-archive'),(4,56,'application','vnd.android.package-archive'),(5,73,'application','vnd.android.package-archive'),(6,76,'application','vnd.android.package-archive'),(7,77,'application','vnd.android.package-archive'),(8,80,'application','vnd.android.package-archive'),(9,94,'application','vnd.android.package-archive'),(10,110,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.gambler.SendSMS'),(2,2,'com.gambler.SendSMS'),(3,3,'com.gambler.SendSMS'),(4,4,'net.qianyue.book.nky'),(5,5,'net.qianyue.book.nky'),(6,7,'(.*)'),(7,8,'(.*)'),(8,10,'com.catking.dqe'),(9,12,'NULL-CONSTANT'),(10,14,'(.*)'),(11,15,'(.*)'),(12,16,'(.*)'),(13,17,'NULL-CONSTANT'),(14,19,'si.modula.android.instantheartrate'),(15,20,'NULL-CONSTANT'),(16,24,'(.*)'),(17,26,'NULL-CONSTANT'),(18,27,'(.*)'),(19,30,'net.qianyue.book.nky'),(20,31,'com.catking.dqe'),(21,36,'com.catking.dqe'),(22,34,'net.qianyue.book.nky'),(23,39,'si.modula.android.instantheartrate'),(24,38,'com.catking.dqe'),(25,42,'si.modula.android.instantheartrate'),(26,43,'(.*)'),(27,45,'(.*)'),(28,47,'(.*)'),(29,48,'NULL-CONSTANT'),(30,50,'NULL-CONSTANT'),(31,52,'com.catking.dqe'),(32,53,'com.catking.dqe'),(33,54,'com.catking.dqe'),(34,55,'si.modula.android.instantheartrate'),(35,57,'com.catking.dqe'),(36,61,'com.catking.dqe'),(37,65,'com.qixin.ytujumpp'),(38,67,'(.*)'),(39,68,'(.*)'),(40,69,'NULL-CONSTANT'),(41,70,'NULL-CONSTANT'),(42,72,'(.*)'),(43,71,'com.qixin.ytujumpp'),(44,75,'(.*)'),(45,74,'com.androidemu.harvemifeng'),(46,81,'com.androidemu.harvemifeng'),(47,79,'com.androidemu.harvesgmario'),(48,82,'(.*)'),(49,84,'com.qixin.ytujumpp'),(50,83,'com.androidemu.harvesgmario'),(51,87,'(.*)'),(52,86,'com.qixin.ytujumpp'),(53,88,'(.*)'),(54,91,'(.*)'),(55,93,'(.*)'),(56,95,'NULL-CONSTANT'),(57,96,'NULL-CONSTANT'),(58,97,'NULL-CONSTANT'),(59,98,'com.androidemu.harvemifeng'),(60,99,'com.qixin.ytujumpp'),(61,100,'com.androidemu.harvemifeng'),(62,102,'com.qixin.ytujumpp'),(63,101,'com.androidemu.harvesgmario'),(64,103,'com.androidemu.harvemifeng'),(65,104,'com.androidemu.harvesgmario'),(66,105,'com.androidemu.harvemifeng'),(67,106,'com.qixin.ytujumpp'),(68,108,'com.androidemu.harvesgmario'),(69,107,'com.qixin.ytujumpp'),(70,112,'(.*)'),(71,113,'(.*)'),(72,115,'com.qixin.ytujumpp'),(73,116,'com.androidemu.harvesgmario'),(74,117,'com.androidemu.harvemifeng'),(75,118,'com.androidemu.harvesgmario'),(76,119,'com.androidemu.harvemifeng'),(77,120,'NULL-CONSTANT'),(78,122,'NULL-CONSTANT'),(79,121,'com.androidemu.harvesgmario'),(80,123,'com.androidemu.harvesgmario'),(81,126,'com.androidemu.harvesgmario'),(82,127,'com.androidemu.harvemifeng'),(83,128,'com.androidemu.harvesgmario'),(84,130,'(.*)'),(85,132,'(.*)'),(86,133,'NULL-CONSTANT'),(87,135,'NULL-CONSTANT'),(88,137,'com.androidemu.harvemifeng'),(89,138,'com.androidemu.harvesgmario'),(90,139,'com.androidemu.harvemifeng'),(91,140,'com.androidemu.harvesgmario'),(92,143,'(.*)'),(93,141,'com.androidemu.harvemifeng'),(94,144,'(.*)'),(95,145,'com.androidemu.harvemifeng');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,6,0),(4,7,0),(5,9,0),(6,11,0),(7,12,0),(8,12,0),(9,17,0),(10,21,0),(11,23,0),(12,22,0),(13,29,0),(14,32,0),(15,35,0),(16,36,0),(17,40,0),(18,23,0),(19,41,0),(20,42,0),(21,43,0),(22,44,0),(23,45,0),(24,46,0),(25,47,0),(26,48,0),(27,49,0),(28,46,0),(29,49,0),(30,46,0),(31,48,0),(32,47,0),(33,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,7,0,0),(5,8,0,0),(6,9,1,0),(7,9,1,0),(8,9,1,0),(9,10,1,0),(10,11,0,0),(11,10,1,0),(12,12,0,0),(13,13,1,0),(14,14,0,0),(15,13,1,0),(16,13,1,0),(17,13,1,0),(18,16,1,0),(19,17,0,0),(20,13,1,0),(21,18,1,0),(22,18,1,0),(23,19,1,0),(24,19,1,0),(25,18,1,0),(26,20,0,0),(27,19,1,0),(28,18,1,0),(29,18,1,0),(30,21,0,0),(31,22,0,0),(32,18,1,0),(33,18,1,0),(34,21,0,0),(35,18,1,0),(36,23,0,0),(37,24,1,0),(38,25,0,0),(39,26,0,0),(40,27,1,0),(41,29,1,0),(42,30,0,0),(43,31,0,0),(44,32,1,0),(45,32,1,0),(46,34,1,0),(47,32,1,0),(48,32,1,0),(49,35,1,0),(50,32,1,0),(51,35,1,0),(52,36,0,0),(53,36,0,0),(54,40,0,0),(55,42,0,0),(56,43,1,0),(57,44,0,0),(58,45,1,0),(59,45,1,0),(60,46,1,0),(61,47,0,0),(62,48,1,0),(63,48,1,0),(64,48,1,0),(65,49,0,0),(66,50,1,0),(67,50,1,0),(68,50,1,0),(69,50,1,0),(70,50,1,0),(71,51,0,0),(72,52,0,0),(73,53,1,0),(74,54,0,0),(75,55,0,0),(76,56,1,0),(77,57,1,0),(78,58,1,0),(79,60,0,0),(80,61,1,0),(81,63,0,0),(82,64,0,0),(83,65,0,0),(84,66,0,0),(85,67,1,0),(86,68,0,0),(87,67,1,0),(88,67,1,0),(89,69,1,0),(90,70,1,0),(91,70,1,0),(92,69,1,0),(93,70,1,0),(94,71,1,0),(95,70,1,0),(96,72,0,0),(97,70,1,0),(98,73,0,0),(99,74,0,0),(100,73,0,0),(101,76,0,0),(102,77,0,0),(103,78,0,0),(104,76,0,0),(105,79,0,0),(106,80,0,0),(107,80,0,0),(108,82,0,0),(109,83,1,0),(110,84,1,0),(111,85,1,0),(112,85,1,0),(113,85,1,0),(114,87,1,0),(115,88,0,0),(116,89,0,0),(117,90,0,0),(118,91,0,0),(119,93,0,0),(120,94,0,0),(121,95,0,0),(122,96,0,0),(123,97,0,0),(124,98,1,0),(125,98,1,0),(126,99,0,0),(127,100,0,0),(128,101,0,0),(129,102,1,0),(130,102,1,0),(131,103,1,0),(132,102,1,0),(133,102,1,0),(134,104,1,0),(135,102,1,0),(136,104,1,0),(137,105,0,0),(138,106,0,0),(139,107,0,0),(140,108,0,0),(141,109,0,0),(142,110,1,0),(143,110,1,0),(144,110,1,0),(145,111,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(22,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.BLUETOOTH'),(24,'android.permission.BLUETOOTH_ADMIN'),(8,'android.permission.CALL_PHONE'),(14,'android.permission.CAMERA'),(19,'android.permission.GET_TASKS'),(15,'android.permission.INTERNET'),(11,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(26,'android.permission.PROCESS_OUTGOING_CALLS'),(7,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(25,'android.permission.RECEIVE_BOOT_COMPLETED'),(27,'android.permission.RECEIVE_SMS'),(28,'android.permission.RECORD_AUDIO'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(23,'android.permission.VIBRATE'),(29,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(16,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Permissions` VALUES (14,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=si.modula.android.instantheartrate',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'http://www.doodle-jump.com/H_AND2STANDARD/?mb=1&cid=1&',NULL,NULL,NULL),(21,NULL,NULL,'http://www.doodle-jump.com/H_AND2STANDARD/?request=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,5,2),(3,6,3),(4,15,6),(5,28,9),(6,33,11),(7,38,13),(8,39,14),(9,41,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,19),(4,1,3),(5,2,2),(6,1,4),(7,2,20),(8,1,5),(9,2,5),(10,1,6),(11,2,10),(12,1,7),(13,2,11),(14,3,19),(15,1,8),(16,2,15),(17,3,20),(18,1,9),(19,3,5),(20,1,10),(21,3,10),(22,1,11),(23,3,15),(24,1,12),(25,1,13),(26,1,14),(27,1,15),(28,1,17),(29,1,16),(30,1,18),(31,4,21),(32,4,20),(33,4,5),(34,4,23),(35,4,22),(36,4,24),(37,4,10),(38,5,4),(39,5,5),(40,4,15),(41,5,25),(42,5,27),(43,5,10),(44,5,26),(45,5,29),(46,5,28),(47,5,13),(48,5,15),(49,6,21),(50,6,20),(51,6,5),(52,6,23),(53,6,22),(54,6,24),(55,6,10),(56,6,15),(57,7,19),(58,7,20),(59,7,5),(60,7,23),(61,7,10),(62,7,29),(63,7,15);
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

-- Dump completed on 2015-10-09  0:39:26
