-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_24
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(21,'NULL-CONSTANT'),(14,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.ACTION_POWER_CONNECTED'),(19,'android.intent.action.BATTERY_LOW'),(16,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(24,'android.intent.action.DELETE'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SEARCH_LONG_PRESS'),(22,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(4,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(23,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(17,'android.provider.Telephony.SIM_FULL'),(6,'android.provider.Telephony.SMS_RECEIVED'),(18,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(15,'com.edwardkim.android.screenshotit.appwidgetprovider.ScreenShotItAppWidgetProvider.ACTION_WIDGET_RECEIVER'),(26,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.android.dateSkill',1),(2,'com.keji.danti645',32),(3,'com.edwardkim.android.screenshotitfull',25),(4,'com.keji.danti708',32),(5,'com.keji.danti602',32),(6,'com.keji.danti682',32),(7,'com.keji.danti428',27);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.dateSkill.DateSkill'),(2,1,'com.android.dateSkill.ShowContentList'),(3,1,'com.android.view.custom.BaseAActivity'),(4,1,'com.android.view.custom.FirstAActivity'),(5,3,'com.edwardkim.android.screenshotit.activities.ScreenShotIt'),(6,1,'com.android.view.custom.SecondAActivity'),(7,1,'com.android.view.custom.ThirdAActivity'),(8,3,'com.edwardkim.android.screenshotit.activities.Tutorial1'),(9,1,'com.android.view.custom.FourthAActivity'),(10,2,'com.keji.danti.MainA'),(11,3,'com.edwardkim.android.screenshotit.activities.Tutorial2'),(12,4,'com.keji.danti.MainA'),(13,1,'com.android.view.custom.FirstAService'),(14,3,'com.edwardkim.android.screenshotit.activities.Tutorial3'),(15,6,'com.keji.danti.MainA'),(16,5,'com.keji.danti.MainA'),(17,1,'com.android.view.custom.SecondAService'),(18,7,'com.keji.danti.MainA'),(19,3,'com.edwardkim.android.screenshotit.activities.Crop'),(20,2,'com.keji.danti.Boutique'),(21,1,'com.android.view.custom.ThirdAService'),(22,4,'com.keji.danti.Boutique'),(23,3,'com.edwardkim.android.screenshotit.activities.ScreenShotCountdown'),(24,1,'com.android.view.custom.FourthAService'),(25,2,'com.keji.danti.Background'),(26,5,'com.keji.danti.Boutique'),(27,4,'com.keji.danti.Background'),(28,6,'com.keji.danti.Boutique'),(29,7,'com.keji.danti.Boutique'),(30,2,'com.keji.danti.Lists'),(31,1,'com.android.view.custom.BaseABroadcastReceiver'),(32,4,'com.keji.danti.Lists'),(33,5,'com.keji.danti.Background'),(34,6,'com.keji.danti.Background'),(35,7,'com.keji.danti.Background'),(36,2,'com.keji.danti.History'),(37,5,'com.keji.danti.Lists'),(38,4,'com.keji.danti.History'),(39,6,'com.keji.danti.Lists'),(40,7,'com.keji.danti.Lists'),(41,2,'com.keji.danti.TextDetail'),(42,3,'com.edwardkim.android.screenshotit.services.ScreenShotService'),(43,4,'com.keji.danti.TextDetail'),(44,5,'com.keji.danti.History'),(45,6,'com.keji.danti.History'),(46,7,'com.keji.danti.History'),(47,2,'com.keji.danti.Setting'),(48,3,'com.kejikeji.AdSmsService'),(49,5,'com.keji.danti.TextDetail'),(50,4,'com.keji.danti.Setting'),(51,6,'com.keji.danti.TextDetail'),(52,7,'com.keji.danti.TextDetail'),(53,2,'com.android.view.custom.BaseAActivity'),(54,3,'com.kejikeji.SystemPlus'),(55,5,'com.keji.danti.Setting'),(56,4,'com.android.view.custom.BaseAActivity'),(57,6,'com.keji.danti.Setting'),(58,7,'com.keji.danti.Setting'),(59,2,'com.android.view.custom.FirstAActivity'),(60,3,'com.kejikeji.MainRun'),(61,5,'com.android.view.custom.BaseAActivity'),(62,4,'com.android.view.custom.FirstAActivity'),(63,6,'com.android.view.custom.BaseAActivity'),(64,7,'com.android.battery.BalckActivity2'),(65,2,'com.android.view.custom.SecondAActivity'),(66,3,'com.edwardkim.android.screenshotit.broadcastreceivers.StartupReceiver'),(67,5,'com.android.view.custom.FirstAActivity'),(68,4,'com.android.view.custom.SecondAActivity'),(69,6,'com.android.view.custom.FirstAActivity'),(70,7,'com.android.battery.BalckActivity'),(71,2,'com.android.view.custom.ThirdAActivity'),(72,4,'com.android.view.custom.ThirdAActivity'),(73,6,'com.android.view.custom.SecondAActivity'),(74,5,'com.android.view.custom.SecondAActivity'),(75,7,'com.android.battery.KillThreeSixZero'),(76,2,'com.android.view.custom.FourthAActivity'),(77,4,'com.android.view.custom.FourthAActivity'),(78,6,'com.android.view.custom.ThirdAActivity'),(79,5,'com.android.view.custom.ThirdAActivity'),(80,7,'com.android.battery.BridgeProvider'),(81,2,'com.android.view.custom.FirstAService'),(82,3,'com.edwardkim.android.screenshotit.broadcastreceivers.PackageInstalledReceiver'),(83,4,'com.android.view.custom.FirstAService'),(84,6,'com.android.view.custom.FourthAActivity'),(85,5,'com.android.view.custom.FourthAActivity'),(86,2,'com.android.view.custom.SecondAService'),(87,4,'com.android.view.custom.SecondAService'),(88,5,'com.android.view.custom.FirstAService'),(89,6,'com.android.view.custom.FirstAService'),(90,7,'com.android.battery.AdSmsService'),(91,2,'com.android.view.custom.ThirdAService'),(92,6,'com.android.view.custom.SecondAService'),(93,5,'com.android.view.custom.SecondAService'),(94,4,'com.android.view.custom.ThirdAService'),(95,7,'com.android.battery.PhoneService'),(96,2,'com.android.view.custom.FourthAService'),(97,3,'com.edwardkim.android.screenshotit.appwidgetprovider.ScreenShotItAppWidgetProvider'),(98,4,'com.android.view.custom.FourthAService'),(99,6,'com.android.view.custom.ThirdAService'),(100,5,'com.android.view.custom.ThirdAService'),(101,7,'com.android.battery.BaseBroadcastReceiver'),(102,2,'com.android.view.custom.BaseABroadcastReceiver'),(103,6,'com.android.view.custom.FourthAService'),(104,5,'com.android.view.custom.FourthAService'),(105,4,'com.android.view.custom.BaseABroadcastReceiver'),(106,5,'com.android.view.custom.BaseABroadcastReceiver'),(107,6,'com.android.view.custom.BaseABroadcastReceiver'),(108,3,'com.kejikeji.AdStartBroadcast'),(109,3,'com.kejikeji.ForAlarm'),(110,1,'com.android.dateSkill.DateSkill$1'),(111,1,'com.sec.android.providers.drm.Onion'),(112,6,'com.keji.danti.a.sv'),(113,6,'com.keji.danti.a.ar'),(114,4,'com.keji.danti.a.ar'),(115,7,'com.keji.danti.a.ar'),(116,2,'com.keji.danti.a.sy'),(117,5,'com.keji.danti.ph'),(118,6,'com.keji.danti.a.sy'),(119,7,'com.android.battery.b.pa'),(120,2,'com.sec.android.providers.drm.Onion'),(121,5,'com.keji.danti.a.ar'),(122,7,'com.keji.danti.a.ao'),(123,6,'com.keji.danti.a.ao'),(124,2,'com.keji.danti.ph'),(125,5,'com.keji.danti.a.ao'),(126,6,'com.keji.danti.ph'),(127,2,'com.keji.danti.a.ao'),(128,4,'com.sec.android.providers.drm.Onion'),(129,7,'com.keji.danti.a.a'),(130,2,'com.keji.danti.a.ar'),(131,4,'com.keji.danti.a.ao'),(132,5,'com.keji.danti.a.sy'),(133,2,'com.keji.danti.a.sv'),(134,7,'com.keji.danti.pf'),(135,4,'com.keji.danti.ph'),(136,6,'com.sec.android.providers.drm.Onion'),(137,4,'com.keji.danti.a.sy'),(138,5,'com.keji.danti.a.sv'),(139,4,'com.keji.danti.a.sv'),(140,7,'com.keji.danti.a.st'),(141,5,'com.sec.android.providers.drm.Onion'),(142,3,'com.edwardkim.android.screenshotit.activities.af'),(143,3,'com.edwardkim.android.screenshotit.activities.f'),(144,3,'com.edwardkim.android.screenshotit.activities.aa'),(145,3,'com.edwardkim.android.screenshotit.activities.k'),(146,3,'com.edwardkim.android.screenshotit.activities.al'),(147,3,'com.edwardkim.android.screenshotit.activities.x'),(148,3,'com.edwardkim.android.screenshotit.activities.g'),(149,3,'com.edwardkim.android.screenshotit.activities.d'),(150,3,'o'),(151,3,'p'),(152,3,'com.edwardkim.android.screenshotit.activities.a'),(153,3,'com.edwardkim.android.screenshotit.activities.m'),(154,3,'com.android.vending.licensing.h'),(155,3,'com.kejikeji.BaseAActivity'),(156,3,'com.edwardkim.android.screenshotit.activities.j'),(157,3,'com.edwardkim.android.screenshotit.activities.ah'),(158,3,'com.edwardkim.android.screenshotit.activities.w');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'Telead_PID'),(2,2,'Telead_PID'),(3,3,'Telead_PID'),(4,30,'PID'),(5,1,'Market_ID'),(6,2,'Market_ID'),(7,3,'Market_ID'),(8,106,'PID'),(9,44,'index'),(10,32,'appsec'),(11,102,'PID'),(12,27,'data'),(13,51,'notSaveDate'),(14,49,'index'),(15,51,'index'),(16,39,'appsec'),(17,105,'PID'),(18,41,'index'),(19,101,'APP_UID'),(20,44,'notSaveDate'),(21,35,'data'),(22,34,'data'),(23,38,'appsec'),(24,52,'appsec'),(25,40,'appsec'),(26,25,'data'),(27,41,'notSaveDate'),(28,31,'appsec'),(29,107,'PID'),(30,49,'notSaveDate'),(31,33,'data'),(32,52,'notSaveDate'),(33,52,'index'),(34,101,'pdus'),(35,97,'appWidgetId'),(36,8,'tutorial_finished'),(37,11,'tutorial_finished'),(38,108,'APP_UID'),(39,19,'image_error'),(40,19,'image_path');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',1,NULL,NULL),(16,15,'a',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'s',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'r',1,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,55,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,61,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,67,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',1,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,89,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,87,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,99,'s',0,NULL,NULL),(99,98,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',1,NULL,NULL),(106,107,'r',1,NULL,NULL),(107,106,'r',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,3),(3,2,30),(4,3,1),(5,3,3),(6,4,39),(7,5,51),(8,6,44),(9,7,58),(10,8,47),(11,9,38),(12,10,57),(13,11,101),(14,12,102),(15,13,44),(16,14,49),(17,15,52),(18,16,28),(19,17,31),(20,18,55),(21,19,26),(22,20,101),(23,21,39),(24,22,10),(25,23,105),(26,24,29),(27,25,62),(28,26,16),(29,27,41),(30,28,101),(31,29,12),(32,30,51),(33,31,56),(34,32,31),(35,33,22),(36,35,49),(37,34,40),(38,36,63),(39,37,53),(40,38,32),(41,39,18),(42,40,15),(43,41,106),(44,42,41),(45,43,50),(46,44,38),(47,45,52),(48,46,32),(49,47,21),(50,49,107),(51,48,40),(52,50,101),(53,51,18),(54,52,8),(55,53,19),(56,54,5),(57,55,19),(58,56,14),(59,57,5),(60,58,19),(61,59,23),(62,60,19),(63,61,42),(64,61,5),(65,62,109),(66,63,42),(67,63,5),(68,64,5),(69,65,19),(70,66,60),(71,67,5),(72,68,19),(73,69,14),(74,70,42),(75,70,5),(76,71,97),(77,72,66),(78,73,108),(79,74,23),(80,75,19),(81,76,23),(82,77,11),(83,78,5),(84,79,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,110,'<com.android.dateSkill.DateSkill$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(2,111,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(3,3,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(4,112,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(5,113,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(6,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(7,115,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(8,116,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,117,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,118,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,119,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(12,120,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(13,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(14,121,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,122,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(16,123,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(17,124,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,56,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(19,125,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(20,119,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(21,126,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(22,127,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(23,128,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(24,129,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(25,61,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,123,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(27,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(28,119,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(29,131,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(30,113,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(31,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(32,133,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(33,131,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,134,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,121,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(36,63,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,53,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,135,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(39,18,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(40,125,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(41,136,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(42,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,137,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,138,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(45,122,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,139,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(47,127,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(48,140,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(49,141,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(50,119,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(51,129,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(52,142,'<com.edwardkim.android.screenshotit.activities.af: void onClick(android.view.View)>',6,'a',NULL),(53,143,'<com.edwardkim.android.screenshotit.activities.f: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,144,'<com.edwardkim.android.screenshotit.activities.aa: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(55,145,'<com.edwardkim.android.screenshotit.activities.k: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,146,'<com.edwardkim.android.screenshotit.activities.al: void onClick(android.view.View)>',6,'a',NULL),(57,147,'<com.edwardkim.android.screenshotit.activities.x: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,148,'<com.edwardkim.android.screenshotit.activities.g: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(59,23,'<com.edwardkim.android.screenshotit.activities.ScreenShotCountdown: void onResume()>',8,'s',NULL),(60,149,'<com.edwardkim.android.screenshotit.activities.d: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(61,150,'<o: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(62,109,'<com.kejikeji.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(63,151,'<p: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,5,'<com.edwardkim.android.screenshotit.activities.ScreenShotIt: void onResume()>',12,'s',NULL),(65,152,'<com.edwardkim.android.screenshotit.activities.a: void onScanCompleted(java.lang.String,android.net.Uri)>',10,'a',NULL),(66,60,'<com.kejikeji.MainRun: void b()>',4,'s',NULL),(67,5,'<com.edwardkim.android.screenshotit.activities.ScreenShotIt: void onResume()>',4,'s',NULL),(68,153,'<com.edwardkim.android.screenshotit.activities.m: void onClick(android.view.View)>',31,'a',NULL),(69,14,'<com.edwardkim.android.screenshotit.activities.Tutorial3: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(70,154,'<com.android.vending.licensing.h: void a(com.android.vending.licensing.l)>',27,'s',NULL),(71,97,'<com.edwardkim.android.screenshotit.appwidgetprovider.ScreenShotItAppWidgetProvider: void onReceive(android.content.Context,android.content.Intent)>',26,'a',NULL),(72,66,'<com.edwardkim.android.screenshotit.broadcastreceivers.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(73,108,'<com.kejikeji.AdStartBroadcast: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(74,155,'<com.kejikeji.BaseAActivity: void a()>',17,'s',NULL),(75,156,'<com.edwardkim.android.screenshotit.activities.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(76,155,'<com.kejikeji.BaseAActivity: void b()>',6,'s',NULL),(77,157,'<com.edwardkim.android.screenshotit.activities.ah: void onClick(android.view.View)>',6,'a',NULL),(78,5,'<com.edwardkim.android.screenshotit.activities.ScreenShotIt: void onCreate(android.os.Bundle)>',190,'a',NULL),(79,158,'<com.edwardkim.android.screenshotit.activities.w: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,20),(2,3,21),(3,4,20),(4,5,21),(5,8,22),(6,15,20),(7,16,21),(8,18,22),(9,19,23),(10,21,21),(11,22,20),(12,24,23),(13,27,20),(14,29,21),(15,28,23),(16,30,21),(17,33,20),(18,36,22),(19,39,23),(20,41,22),(21,42,21),(22,43,21),(23,44,20),(24,47,23),(25,46,20),(26,49,20),(27,50,22),(28,51,21),(29,56,23),(30,58,20),(31,59,21),(32,63,23),(33,65,23),(34,66,23),(35,67,24),(36,68,23),(37,70,23),(38,71,23),(39,73,23),(40,75,23),(41,78,25),(42,79,25),(43,80,25),(44,81,25),(45,82,25),(46,83,25),(47,84,25),(48,85,25),(49,86,25),(50,87,25),(51,88,25),(52,89,25),(53,90,25),(54,91,25),(55,92,25),(56,93,25),(57,94,26),(58,99,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/dateSkill/ShowContentList'),(2,6,'com/keji/danti/TextDetail'),(3,7,'com/keji/danti/Setting'),(4,9,'com/keji/danti/Background'),(5,10,'com/keji/danti/Background'),(6,12,'com/keji/danti/Background'),(7,11,'com/keji/danti/TextDetail'),(8,13,'com/android/battery/PhoneService'),(9,14,'com/keji/danti/Setting'),(10,17,'com/keji/danti/Setting'),(11,20,'com/keji/danti/TextDetail'),(12,23,'com/android/battery/KillThreeSixZero'),(13,26,'com.android.settings.WirelessSettings'),(14,25,'com/keji/danti/TextDetail'),(15,31,'com.android.settings.WirelessSettings'),(16,32,'com/keji/danti/Setting'),(17,34,'com/android/battery/AdSmsService'),(18,35,'com.android.settings.WirelessSettings'),(19,37,'com/keji/danti/Background'),(20,38,'com/keji/danti/TextDetail'),(21,40,'com/keji/danti/TextDetail'),(22,45,'com/keji/danti/TextDetail'),(23,48,'com.android.settings.WirelessSettings'),(24,47,'com.android.packageinstaller.PackageInstallerActivity'),(25,52,'com/keji/danti/Background'),(26,53,'com/keji/danti/TextDetail'),(27,54,'com/keji/danti/Setting'),(28,55,'com/keji/danti/TextDetail'),(29,57,'com/keji/danti/TextDetail'),(30,60,'com/android/battery/BridgeProvider'),(31,61,'com.android.settings.WirelessSettings'),(32,62,'com/edwardkim/android/screenshotit/activities/Tutorial2'),(33,64,'com/edwardkim/android/screenshotit/activities/ScreenShotCountdown'),(34,69,'com/edwardkim/android/screenshotit/services/ScreenShotService'),(35,72,'com/kejikeji/MainRun'),(36,74,'com/edwardkim/android/screenshotit/services/ScreenShotService'),(37,76,'com.android.battery.BridgeProvider'),(38,77,'com/edwardkim/android/screenshotit/services/ScreenShotService'),(39,95,'com/edwardkim/android/screenshotit/activities/ScreenShotCountdown'),(40,96,'com/edwardkim/android/screenshotit/services/ScreenShotService'),(41,97,'com/kejikeji/AdSmsService'),(42,98,'com/kejikeji/SystemPlus'),(43,100,'com.android.battery.BridgeProvider'),(44,101,'com/edwardkim/android/screenshotit/activities/Tutorial3'),(45,102,'com/edwardkim/android/screenshotit/activities/Tutorial1'),(46,103,'com/edwardkim/android/screenshotit/activities/Tutorial1');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,8,2),(3,14,3),(4,17,4),(5,18,5),(6,19,6),(7,24,7),(8,28,8),(9,32,9),(10,36,10),(11,39,11),(12,41,12),(13,47,13),(14,50,14),(15,54,15),(16,56,16),(17,63,17),(18,65,18),(19,66,19),(20,67,20),(21,68,21),(22,70,22),(23,71,23),(24,73,24),(25,75,25),(26,99,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'arg2'),(2,6,'index'),(3,8,'sms_body'),(4,11,'index'),(5,18,'sms_body'),(6,20,'index'),(7,21,'packageName'),(8,22,'packageName'),(9,25,'index'),(10,29,'packageName'),(11,33,'packageName'),(12,36,'sms_body'),(13,38,'index'),(14,40,'index'),(15,41,'sms_body'),(16,42,'packageName'),(17,43,'packageName'),(18,44,'packageName'),(19,45,'index'),(20,46,'packageName'),(21,50,'sms_body'),(22,53,'index'),(23,55,'index'),(24,57,'index'),(25,78,'android.intent.extra.INTENT'),(26,79,'android.intent.extra.INTENT'),(27,80,'android.intent.extra.TITLE'),(28,80,'android.intent.extra.INTENT'),(29,81,'android.intent.extra.INTENT'),(30,82,'android.intent.extra.TITLE'),(31,82,'android.intent.extra.INTENT'),(32,83,'android.intent.extra.INTENT'),(33,84,'android.intent.extra.TITLE'),(34,84,'android.intent.extra.INTENT'),(35,85,'android.intent.extra.TITLE'),(36,85,'android.intent.extra.INTENT'),(37,86,'android.intent.extra.INTENT'),(38,87,'android.intent.extra.INTENT'),(39,88,'android.intent.extra.TITLE'),(40,88,'android.intent.extra.INTENT'),(41,89,'android.intent.extra.INTENT'),(42,90,'android.intent.extra.TITLE'),(43,90,'android.intent.extra.INTENT'),(44,91,'android.intent.extra.INTENT'),(45,92,'android.intent.extra.TITLE'),(46,92,'android.intent.extra.INTENT'),(47,93,'android.intent.extra.TITLE'),(48,93,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,12),(10,9,11),(11,9,10),(12,9,9),(13,9,8),(14,9,4),(15,9,5),(16,9,6),(17,9,7),(18,9,3),(19,10,7),(20,11,1),(21,12,13),(22,13,14),(23,13,15),(24,14,10),(25,14,9),(26,14,12),(27,14,11),(28,14,6),(29,14,5),(30,14,8),(31,14,7),(32,14,4),(33,14,3),(34,15,17),(35,15,16),(36,15,19),(37,15,5),(38,15,18),(39,15,9),(40,15,6),(41,15,7),(42,15,10),(43,15,11),(44,16,3),(45,16,4),(46,16,5),(47,16,6),(48,16,7),(49,16,8),(50,16,9),(51,16,10),(52,16,11),(53,16,12),(54,17,6),(55,17,7),(56,17,4),(57,17,5),(58,17,3),(59,17,12),(60,17,10),(61,17,11),(62,17,8),(63,17,9),(64,18,5),(65,18,6),(66,18,7),(67,18,8),(68,18,3),(69,18,4),(70,18,9),(71,18,10),(72,18,11),(73,18,12),(74,19,16),(75,19,11),(76,19,10),(77,19,9),(78,19,5),(79,19,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,10,3);
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
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.dateSkill'),(2,6,'com.keji.danti682'),(3,7,'com.keji.danti682'),(4,9,'com.keji.danti428'),(5,10,'com.keji.danti645'),(6,12,'com.keji.danti682'),(7,11,'com.keji.danti602'),(8,13,'com.keji.danti428'),(9,14,'com.keji.danti708'),(10,17,'com.keji.danti602'),(11,20,'com.keji.danti645'),(12,23,'com.keji.danti428'),(13,26,'com.android.settings'),(14,25,'com.keji.danti682'),(15,31,'com.android.settings'),(16,32,'com.keji.danti645'),(17,34,'com.keji.danti428'),(18,35,'com.android.settings'),(19,37,'com.keji.danti602'),(20,38,'com.keji.danti645'),(21,40,'com.keji.danti428'),(22,45,'com.keji.danti708'),(23,48,'com.android.settings'),(24,47,'com.android.packageinstaller'),(25,52,'com.keji.danti708'),(26,53,'com.keji.danti602'),(27,54,'com.keji.danti428'),(28,55,'com.keji.danti708'),(29,57,'com.keji.danti428'),(30,60,'com.keji.danti428'),(31,61,'com.android.settings'),(32,62,'com.edwardkim.android.screenshotitfull'),(33,64,'com.edwardkim.android.screenshotitfull'),(34,69,'com.edwardkim.android.screenshotitfull'),(35,72,'com.edwardkim.android.screenshotitfull'),(36,74,'com.edwardkim.android.screenshotitfull'),(37,76,'com.android.battery'),(38,77,'com.edwardkim.android.screenshotitfull'),(39,95,'com.edwardkim.android.screenshotitfull'),(40,96,'com.edwardkim.android.screenshotitfull'),(41,97,'com.edwardkim.android.screenshotitfull'),(42,98,'com.edwardkim.android.screenshotitfull'),(43,100,'com.android.battery'),(44,101,'com.edwardkim.android.screenshotitfull'),(45,102,'com.edwardkim.android.screenshotitfull'),(46,103,'com.edwardkim.android.screenshotitfull');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,10,0),(4,12,0),(5,15,0),(6,16,0),(7,18,0),(8,23,0),(9,30,0),(10,66,0),(11,80,0),(12,82,0),(13,97,0),(14,102,0),(15,101,0),(16,105,0),(17,107,0),(18,106,0),(19,108,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,1,0),(5,3,1,0),(6,4,0,0),(7,5,0,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,0,0),(14,13,0,0),(15,12,1,0),(16,12,1,0),(17,14,0,0),(18,15,1,0),(19,16,1,0),(20,17,0,0),(21,18,1,0),(22,18,1,0),(23,20,0,0),(24,19,1,0),(25,21,0,0),(26,22,0,0),(27,23,1,0),(28,24,1,0),(29,25,1,0),(30,23,1,0),(31,26,0,0),(32,27,0,0),(33,25,1,0),(34,28,0,0),(35,29,0,0),(36,30,1,0),(37,31,0,0),(38,32,0,0),(39,33,1,0),(40,34,0,0),(41,35,1,0),(42,36,1,0),(43,37,1,0),(44,36,1,0),(45,38,0,0),(46,37,1,0),(47,39,0,0),(48,40,0,0),(49,41,1,0),(50,42,1,0),(51,41,1,0),(52,43,0,0),(53,44,0,0),(54,45,0,0),(55,46,0,0),(56,47,1,0),(57,48,0,0),(58,49,1,0),(59,49,1,0),(60,50,0,0),(61,51,0,0),(62,52,0,0),(63,53,1,0),(64,54,0,0),(65,55,1,0),(66,56,1,0),(67,57,1,0),(68,58,1,0),(69,59,0,0),(70,60,1,0),(71,61,1,0),(72,62,0,0),(73,63,1,0),(74,64,0,0),(75,65,1,0),(76,66,0,0),(77,67,0,0),(78,68,1,0),(79,68,1,0),(80,68,1,0),(81,68,1,0),(82,68,1,0),(83,68,1,0),(84,68,1,0),(85,68,1,0),(86,69,1,0),(87,69,1,0),(88,69,1,0),(89,69,1,0),(90,69,1,0),(91,69,1,0),(92,69,1,0),(93,69,1,0),(94,70,1,0),(95,71,0,0),(96,72,0,0),(97,73,0,0),(98,74,0,0),(99,75,1,0),(100,76,0,0),(101,77,0,0),(102,78,0,0),(103,79,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,1,2,NULL),(2,4,12,2,NULL),(3,5,1,2,NULL),(4,5,12,2,NULL),(5,43,1,2,NULL),(6,43,12,2,NULL),(7,46,1,2,NULL),(8,46,12,2,NULL),(9,86,1,2,NULL),(10,86,12,2,NULL),(11,87,1,2,NULL),(12,87,12,2,NULL),(13,88,1,2,NULL),(14,88,12,2,NULL),(15,89,1,2,NULL),(16,89,12,2,NULL),(17,90,1,2,NULL),(18,90,12,2,NULL),(19,91,1,2,NULL),(20,91,12,2,NULL),(21,92,1,2,NULL),(22,92,12,2,NULL),(23,93,1,2,NULL),(24,93,12,2,NULL),(25,21,1,2,NULL),(26,21,12,2,NULL),(27,22,1,2,NULL),(28,22,12,2,NULL),(29,29,1,2,NULL),(30,29,12,2,NULL),(31,33,1,2,NULL),(32,33,12,2,NULL),(33,42,1,2,NULL),(34,42,12,2,NULL),(35,44,1,2,NULL),(36,44,12,2,NULL),(37,4,30,2,NULL),(38,21,30,2,NULL),(39,5,30,2,NULL),(40,22,30,2,NULL),(41,4,10,2,NULL),(42,21,10,2,NULL),(43,5,10,2,NULL),(44,22,10,2,NULL),(45,4,102,2,NULL),(46,21,102,2,NULL),(47,5,102,2,NULL),(48,22,102,2,NULL),(49,4,5,2,NULL),(50,21,5,2,NULL),(51,5,5,2,NULL),(52,22,5,2,NULL),(53,4,23,2,NULL),(54,21,23,2,NULL),(55,5,23,2,NULL),(56,22,23,2,NULL),(57,4,66,2,NULL),(58,21,66,2,NULL),(59,5,66,2,NULL),(60,22,66,2,NULL),(61,4,97,2,NULL),(62,21,97,2,NULL),(63,5,97,2,NULL),(64,22,97,2,NULL),(65,4,108,2,NULL),(66,21,108,2,NULL),(67,5,108,2,NULL),(68,22,108,2,NULL),(69,4,105,2,NULL),(70,21,105,2,NULL),(71,5,105,2,NULL),(72,22,105,2,NULL),(73,4,15,2,NULL),(74,21,15,2,NULL),(75,5,15,2,NULL),(76,22,15,2,NULL),(77,4,107,2,NULL),(78,21,107,2,NULL),(79,5,107,2,NULL),(80,22,107,2,NULL),(81,4,16,2,NULL),(82,21,16,2,NULL),(83,5,16,2,NULL),(84,22,16,2,NULL),(85,4,106,2,NULL),(86,21,106,2,NULL),(87,5,106,2,NULL),(88,22,106,2,NULL),(89,4,18,2,NULL),(90,21,18,2,NULL),(91,5,18,2,NULL),(92,22,18,2,NULL),(93,4,80,2,NULL),(94,21,80,2,NULL),(95,5,80,2,NULL),(96,22,80,2,NULL),(97,4,101,2,NULL),(98,21,101,2,NULL),(99,5,101,2,NULL),(100,22,101,2,NULL),(101,43,30,2,NULL),(102,43,105,2,NULL),(103,46,30,2,NULL),(104,46,105,2,NULL),(105,86,30,2,NULL),(106,86,105,2,NULL),(107,87,30,2,NULL),(108,87,105,2,NULL),(109,88,30,2,NULL),(110,88,105,2,NULL),(111,89,30,2,NULL),(112,89,105,2,NULL),(113,90,30,2,NULL),(114,90,105,2,NULL),(115,91,30,2,NULL),(116,91,105,2,NULL),(117,92,30,2,NULL),(118,92,105,2,NULL),(119,93,30,2,NULL),(120,93,105,2,NULL),(121,29,30,2,NULL),(122,29,105,2,NULL),(123,33,30,2,NULL),(124,33,105,2,NULL),(125,42,30,2,NULL),(126,42,105,2,NULL),(127,44,30,2,NULL),(128,44,105,2,NULL),(129,43,15,2,NULL),(130,46,15,2,NULL),(131,86,15,2,NULL),(132,43,16,2,NULL),(133,87,15,2,NULL),(134,46,16,2,NULL),(135,88,15,2,NULL),(136,86,16,2,NULL),(137,89,15,2,NULL),(138,87,16,2,NULL),(139,90,15,2,NULL),(140,88,16,2,NULL),(141,91,15,2,NULL),(142,89,16,2,NULL),(143,92,15,2,NULL),(144,90,16,2,NULL),(145,93,15,2,NULL),(146,91,16,2,NULL),(147,29,15,2,NULL),(148,92,16,2,NULL),(149,33,15,2,NULL),(150,93,16,2,NULL),(151,42,15,2,NULL),(152,29,16,2,NULL),(153,44,15,2,NULL),(154,33,16,2,NULL),(155,29,10,2,NULL),(156,42,16,2,NULL),(157,33,10,2,NULL),(158,44,16,2,NULL),(159,29,102,2,NULL),(160,42,10,2,NULL),(161,33,102,2,NULL),(162,44,10,2,NULL),(163,29,5,2,NULL),(164,42,102,2,NULL),(165,33,5,2,NULL),(166,44,102,2,NULL),(167,29,23,2,NULL),(168,42,5,2,NULL),(169,33,23,2,NULL),(170,44,5,2,NULL),(171,29,66,2,NULL),(172,42,23,2,NULL),(173,33,66,2,NULL),(174,44,23,2,NULL),(175,29,97,2,NULL),(176,42,66,2,NULL),(177,33,97,2,NULL),(178,44,66,2,NULL),(179,29,108,2,NULL),(180,42,97,2,NULL),(181,33,108,2,NULL),(182,44,97,2,NULL),(183,29,107,2,NULL),(184,42,108,2,NULL),(185,33,107,2,NULL),(186,44,108,2,NULL),(187,29,106,2,NULL),(188,42,107,2,NULL),(189,33,106,2,NULL),(190,44,107,2,NULL),(191,29,18,2,NULL),(192,42,106,2,NULL),(193,33,18,2,NULL),(194,44,106,2,NULL),(195,29,80,2,NULL),(196,42,18,2,NULL),(197,33,80,2,NULL),(198,44,18,2,NULL),(199,29,101,2,NULL),(200,42,80,2,NULL),(201,33,101,2,NULL),(202,44,80,2,NULL),(203,43,107,2,NULL),(204,42,101,2,NULL),(205,46,107,2,NULL),(206,44,101,2,NULL),(207,86,107,2,NULL),(208,43,106,2,NULL),(209,87,107,2,NULL),(210,46,106,2,NULL),(211,88,107,2,NULL),(212,86,106,2,NULL),(213,89,107,2,NULL),(214,87,106,2,NULL),(215,90,107,2,NULL),(216,88,106,2,NULL),(217,91,107,2,NULL),(218,89,106,2,NULL),(219,92,107,2,NULL),(220,90,106,2,NULL),(221,93,107,2,NULL),(222,91,106,2,NULL),(223,92,106,2,NULL),(224,93,106,2,NULL),(225,43,10,2,NULL),(226,46,10,2,NULL),(227,74,42,2,NULL),(228,86,10,2,NULL),(229,77,42,2,NULL),(230,87,10,2,NULL),(231,102,8,2,NULL),(232,88,10,2,NULL),(233,43,5,2,NULL),(234,89,10,2,NULL),(235,46,5,2,NULL),(236,90,10,2,NULL),(237,86,5,2,NULL),(238,91,10,2,NULL),(239,87,5,2,NULL),(240,92,10,2,NULL),(241,88,5,2,NULL),(242,93,10,2,NULL),(243,89,5,2,NULL),(244,43,102,2,NULL),(245,90,5,2,NULL),(246,46,102,2,NULL),(247,91,5,2,NULL),(248,43,23,2,NULL),(249,92,5,2,NULL),(250,46,23,2,NULL),(251,93,5,2,NULL),(252,43,66,2,NULL),(253,86,102,2,NULL),(254,46,66,2,NULL),(255,87,102,2,NULL),(256,43,97,2,NULL),(257,88,102,2,NULL),(258,46,97,2,NULL),(259,89,102,2,NULL),(260,43,108,2,NULL),(261,90,102,2,NULL),(262,46,108,2,NULL),(263,91,102,2,NULL),(264,43,18,2,NULL),(265,92,102,2,NULL),(266,46,18,2,NULL),(267,93,102,2,NULL),(268,43,80,2,NULL),(269,86,23,2,NULL),(270,46,80,2,NULL),(271,87,23,2,NULL),(272,43,101,2,NULL),(273,88,23,2,NULL),(274,46,101,2,NULL),(275,89,23,2,NULL),(276,90,23,2,NULL),(277,91,23,2,NULL),(278,92,23,2,NULL),(279,93,23,2,NULL),(280,86,66,2,NULL),(281,87,66,2,NULL),(282,88,66,2,NULL),(283,89,66,2,NULL),(284,90,66,2,NULL),(285,91,66,2,NULL),(286,92,66,2,NULL),(287,93,66,2,NULL),(288,86,97,2,NULL),(289,87,97,2,NULL),(290,88,97,2,NULL),(291,89,97,2,NULL),(292,90,97,2,NULL),(293,91,97,2,NULL),(294,92,97,2,NULL),(295,93,97,2,NULL),(296,86,108,2,NULL),(297,87,108,2,NULL),(298,88,108,2,NULL),(299,89,108,2,NULL),(300,90,108,2,NULL),(301,91,108,2,NULL),(302,92,108,2,NULL),(303,93,108,2,NULL),(304,86,18,2,NULL),(305,87,18,2,NULL),(306,88,18,2,NULL),(307,89,18,2,NULL),(308,90,18,2,NULL),(309,91,18,2,NULL),(310,92,18,2,NULL),(311,93,18,2,NULL),(312,86,80,2,NULL),(313,87,80,2,NULL),(314,88,80,2,NULL),(315,89,80,2,NULL),(316,90,80,2,NULL),(317,91,80,2,NULL),(318,92,80,2,NULL),(319,93,80,2,NULL),(320,86,101,2,NULL),(321,87,101,2,NULL),(322,88,101,2,NULL),(323,89,101,2,NULL),(324,90,101,2,NULL),(325,91,101,2,NULL),(326,92,101,2,NULL),(327,93,101,2,NULL),(328,69,42,2,NULL),(329,76,80,2,NULL),(330,96,42,2,NULL),(331,95,23,2,NULL),(332,97,48,2,NULL),(333,72,60,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(20,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.edwardkim.android.screenshotitfull',NULL,NULL,NULL),(18,NULL,NULL,'http://www.androidlicenser.com/store_fronts/3/buy',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=com.edwardkim.android.screenshotitfull',NULL,NULL,NULL),(20,NULL,NULL,'package:com.edwardkim.android.screenshotitfree',NULL,NULL,NULL),(21,NULL,NULL,'http://www.androidlicenser.com/store_fronts/3/buy',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.edwardkim.android.screenshotitfull',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.edwardkim.android.screenshotitfull',NULL,NULL,NULL),(24,NULL,NULL,'http://www.androidlicenser.com/store_fronts/3/buy',NULL,NULL,NULL),(25,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(26,NULL,NULL,'market://details?id=com.edwardkim.android.screenshotitfull',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,4,1),(21,3,16),(22,2,3),(23,4,2),(24,3,19),(25,2,4),(26,4,3),(27,5,1),(28,6,1),(29,3,4),(30,5,2),(31,6,2),(32,4,4),(33,2,5),(34,3,20),(35,7,1),(36,5,3),(37,4,5),(38,6,3),(39,2,6),(40,3,8),(41,7,2),(42,5,4),(43,6,4),(44,2,7),(45,4,6),(46,7,4),(47,3,10),(48,6,5),(49,5,5),(50,4,7),(51,2,8),(52,7,5),(53,3,12),(54,4,8),(55,2,9),(56,5,6),(57,6,6),(58,7,7),(59,3,13),(60,5,7),(61,4,9),(62,6,7),(63,2,10),(64,3,14),(65,7,8),(66,5,8),(67,6,8),(68,4,10),(69,2,11),(70,3,15),(71,7,9),(72,4,11),(73,5,9),(74,6,9),(75,2,12),(76,7,10),(77,4,12),(78,5,10),(79,6,10),(80,2,13),(81,7,11),(82,5,11),(83,6,11),(84,2,14),(85,4,13),(86,7,12),(87,4,14),(88,5,12),(89,2,15),(90,6,12),(91,7,13),(92,4,15),(93,5,13),(94,2,17),(95,6,13),(96,7,14),(97,4,17),(98,5,14),(99,2,16),(100,6,14),(101,7,15),(102,5,15),(103,4,16),(104,6,15),(105,2,18),(106,7,17),(107,5,17),(108,4,18),(109,6,17),(110,7,16),(111,5,16),(112,6,16),(113,7,19),(114,5,18),(115,6,18),(116,7,18);
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

-- Dump completed on 2015-10-12  3:29:47
