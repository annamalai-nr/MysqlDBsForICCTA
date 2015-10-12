-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_56
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(12,'android.intent.action.ACTION_POWER_CONNECTED'),(8,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(11,'android.intent.action.UMS_DISCONNECTED'),(14,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(10,'android.net.conn.MEDIA_NOFS'),(13,'android.net.wifi.PICK_WIFI_WORK'),(4,'android.provider.Telephony.SIM_FULL'),(3,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.sec.android.bridge',14),(2,'com.keji.danti612',32),(3,'com.keji.danti1006',32),(4,'com.keji.danti395',25),(5,'com.keji.danti618',32),(6,'com.chenjg.txtbrowser.yzya',3),(7,'com.droidhen.falldown',19);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sec.android.bridge.BridgeProvider'),(2,1,'com.sec.android.bridge.BaseBroadcastReceiver'),(3,2,'com.keji.danti.MainA'),(4,2,'com.keji.danti.Boutique'),(5,2,'com.keji.danti.Background'),(6,2,'com.keji.danti.Lists'),(7,2,'com.keji.danti.History'),(8,3,'com.keji.danti.MainA'),(9,4,'com.keji.danti.MainA'),(10,2,'com.keji.danti.TextDetail'),(11,2,'com.keji.danti.Setting'),(12,4,'com.keji.danti.Boutique'),(13,3,'com.keji.danti.Boutique'),(14,2,'com.android.view.custom.BaseAActivity'),(15,4,'com.keji.danti.Background'),(16,3,'com.keji.danti.Background'),(17,2,'com.android.view.custom.FirstAActivity'),(18,4,'com.keji.danti.Lists'),(19,3,'com.keji.danti.Lists'),(20,2,'com.android.view.custom.SecondAActivity'),(21,5,'com.keji.danti.MainA'),(22,3,'com.keji.danti.History'),(23,4,'com.keji.danti.History'),(24,2,'com.android.view.custom.ThirdAActivity'),(25,3,'com.keji.danti.TextDetail'),(26,4,'com.keji.danti.TextDetail'),(27,2,'com.android.view.custom.FourthAActivity'),(28,3,'com.keji.danti.Setting'),(29,4,'com.keji.danti.Setting'),(30,2,'com.android.view.custom.FirstAService'),(31,5,'com.keji.danti.Boutique'),(32,4,'com.keji.danti.AdSmsService'),(33,3,'com.android.view.custom.BaseAActivity'),(34,2,'com.android.view.custom.SecondAService'),(35,5,'com.keji.danti.Background'),(36,4,'com.android.adomb.AdSmsService'),(37,3,'com.android.view.custom.FirstAActivity'),(38,2,'com.android.view.custom.ThirdAService'),(39,5,'com.keji.danti.Lists'),(40,4,'com.android.adomb.SystemPlus'),(41,3,'com.android.view.custom.SecondAActivity'),(42,2,'com.android.view.custom.FourthAService'),(43,5,'com.keji.danti.History'),(44,3,'com.android.view.custom.ThirdAActivity'),(45,4,'com.android.adomb.MainRun'),(46,2,'com.android.view.custom.BaseABroadcastReceiver'),(47,5,'com.keji.danti.TextDetail'),(48,3,'com.android.view.custom.FourthAActivity'),(49,4,'com.keji.danti.BaseBroadcastReceiver'),(50,5,'com.keji.danti.Setting'),(51,3,'com.android.view.custom.FirstAService'),(52,5,'com.android.view.custom.BaseAActivity'),(53,3,'com.android.view.custom.SecondAService'),(54,4,'com.android.adomb.ForAlarm'),(55,5,'com.android.view.custom.FirstAActivity'),(56,3,'com.android.view.custom.ThirdAService'),(57,5,'com.android.view.custom.SecondAActivity'),(58,3,'com.android.view.custom.FourthAService'),(59,5,'com.android.view.custom.ThirdAActivity'),(60,3,'com.android.view.custom.BaseABroadcastReceiver'),(61,5,'com.android.view.custom.FourthAActivity'),(62,5,'com.android.view.custom.FirstAService'),(63,5,'com.android.view.custom.SecondAService'),(64,5,'com.android.view.custom.ThirdAService'),(65,5,'com.android.view.custom.FourthAService'),(66,5,'com.android.view.custom.BaseABroadcastReceiver'),(67,4,'com.keji.danti.a.a'),(68,4,'com.keji.danti.a.ao'),(69,4,'com.madhouse.android.ads._'),(70,4,'com.keji.danti.a.ar'),(71,4,'com.keji.danti.c.pa'),(72,2,'com.keji.danti.a.sy'),(73,3,'com.keji.danti.a.sv'),(74,2,'com.keji.danti.a.ao'),(75,4,'com.keji.danti.pf'),(76,3,'com.keji.danti.a.ao'),(77,2,'com.sec.android.providers.drm.Onion'),(78,5,'com.keji.danti.a.sv'),(79,3,'com.keji.danti.a.sy'),(80,5,'com.keji.danti.a.ar'),(81,3,'com.keji.danti.a.ar'),(82,4,'com.keji.danti.a.st'),(83,2,'com.keji.danti.ph'),(84,3,'com.sec.android.providers.drm.Onion'),(85,2,'com.keji.danti.a.ar'),(86,5,'com.sec.android.providers.drm.Onion'),(87,5,'com.keji.danti.a.ao'),(88,2,'com.keji.danti.a.sv'),(89,5,'com.keji.danti.ph'),(90,3,'com.keji.danti.ph'),(91,5,'com.keji.danti.a.sy'),(92,6,'com.chenjg.txtbrowser.yzya.Cover'),(93,6,'com.chenjg.txtbrowser.yzya.TxtBrowser'),(94,6,'com.android.view.custom.BaseAActivity'),(95,6,'com.android.view.custom.FirstAActivity'),(96,6,'com.android.view.custom.SecondAActivity'),(97,6,'com.android.view.custom.ThirdAActivity'),(98,6,'com.android.view.custom.FourthAActivity'),(99,6,'com.android.view.custom.FirstAService'),(100,6,'com.android.view.custom.SecondAService'),(101,6,'com.android.view.custom.ThirdAService'),(102,6,'com.android.view.custom.FourthAService'),(103,6,'com.android.view.custom.BaseABroadcastReceiver'),(104,6,'com.chenjg.txtbrowser.yzya.Cover$StartThread'),(105,6,'com.sec.android.providers.drm.Onion'),(106,7,'com.droidhen.falldown.CoverActivity'),(107,7,'com.droidhen.falldown.GameActivity'),(108,7,'com.droidhen.falldown.OptionActivity'),(109,7,'com.droidhen.falldown.score.OnlineScoreActivity'),(110,7,'com.droidhen.activity.MoreActivity'),(111,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(112,7,'com.millennialmedia.android.VideoPlayer'),(113,7,'com.admob.android.ads.AdMobActivity'),(114,7,'net.youmi.android.AdActivity'),(115,7,'com.droidhen.falldown.SystemPlus'),(116,7,'com.droidhen.falldown.MainRun'),(117,7,'com.droidhen.falldown.ForAlarm'),(118,7,'com.droidhen.falldown.BaseAActivity'),(119,7,'com.droidhen.falldown.GameActivity$2'),(120,7,'com.droidhen.activity.MoreHelper');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,5,'data'),(3,16,'data'),(4,6,'appsec'),(5,25,'index'),(6,46,'PID'),(7,35,'data'),(8,10,'notSaveDate'),(9,39,'appsec'),(10,15,'data'),(11,26,'index'),(12,60,'PID'),(13,25,'notSaveDate'),(14,66,'PID'),(15,26,'notSaveDate'),(16,10,'index'),(17,18,'appsec'),(18,47,'notSaveDate'),(19,47,'index'),(20,68,'UMENG_APPKEY'),(21,78,'PID'),(22,68,'UMENG_CHANNEL'),(23,86,'u'),(24,86,'sin'),(25,86,'au'),(26,86,'ru'),(27,86,'ap'),(28,86,'p'),(29,86,'s'),(30,87,'A7D1721B9508405D8271AB82AC6D9B3C'),(31,84,'shouldResizeOverlay'),(32,86,'t'),(33,86,'int'),(34,86,'o'),(35,84,'overlayTransition'),(36,86,'sku'),(37,84,'overlayTitle'),(38,84,'shouldShowNavbar'),(39,86,'c'),(40,84,'shouldShowTitlebar'),(41,86,'si'),(42,83,'ad'),(43,86,'su'),(44,86,'b'),(45,86,'oi'),(46,86,'json'),(47,86,'$'),(48,86,'msm'),(49,86,'sd'),(50,86,'rd'),(51,86,'sc'),(52,86,'tr'),(53,86,'a'),(54,86,'cs'),(55,86,'nosk'),(56,86,'mi'),(57,86,'ad'),(58,84,'transitionTime'),(59,86,'or'),(60,86,'skd'),(61,86,'cbo'),(62,84,'canAccelerate');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,40,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,92,'a',1,NULL,NULL),(68,93,'a',0,NULL,NULL),(69,94,'a',0,NULL,NULL),(70,95,'a',0,NULL,NULL),(71,96,'a',0,NULL,NULL),(72,97,'a',0,NULL,NULL),(73,98,'a',0,NULL,NULL),(74,99,'s',0,NULL,NULL),(75,100,'s',0,NULL,NULL),(76,101,'s',0,NULL,NULL),(77,102,'s',0,NULL,NULL),(78,103,'r',1,NULL,NULL),(79,106,'a',1,NULL,NULL),(80,107,'a',0,NULL,NULL),(81,108,'a',0,NULL,NULL),(82,109,'a',0,NULL,NULL),(83,110,'a',0,NULL,NULL),(84,111,'a',0,NULL,NULL),(85,112,'a',0,NULL,NULL),(86,113,'a',0,NULL,NULL),(87,114,'a',0,NULL,NULL),(88,115,'s',0,NULL,NULL),(89,116,'s',0,NULL,NULL),(90,117,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,12),(3,3,25),(4,4,9),(5,5,45),(6,6,19),(7,7,9),(8,8,28),(9,9,49),(10,10,11),(11,11,25),(12,12,18),(13,13,4),(14,14,19),(15,15,8),(16,18,54),(17,16,46),(18,17,39),(19,19,29),(20,20,9),(21,21,47),(22,22,3),(23,23,26),(24,24,19),(25,25,6),(26,26,47),(27,27,60),(28,28,10),(29,29,66),(30,30,33),(31,31,10),(32,32,31),(33,33,13),(34,34,6),(35,35,39),(36,36,26),(37,37,14),(38,38,21),(39,39,18),(40,40,52),(41,41,50),(42,42,67),(43,42,69),(44,43,67),(45,43,69),(46,44,78),(47,45,79),(48,46,79),(49,47,80),(50,48,79),(51,49,79),(52,49,80),(53,50,90),(54,51,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.sec.android.bridge.BaseBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(2,67,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(3,68,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(4,9,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(5,45,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(6,69,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(7,67,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(8,70,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,71,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(10,72,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,68,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(12,73,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(13,74,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(14,75,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(15,76,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,77,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(17,78,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(18,54,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(19,79,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,9,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(21,80,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,74,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(23,81,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(24,82,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(25,83,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(26,80,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(27,84,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(28,85,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,86,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(30,33,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(31,85,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(32,87,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(33,76,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,88,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(35,89,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(36,81,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(37,14,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,87,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(39,90,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,52,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,91,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(42,104,'<com.chenjg.txtbrowser.yzya.Cover$StartThread: void run()>',11,'a',NULL),(43,94,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(44,105,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(45,118,'<com.droidhen.falldown.BaseAActivity: void b()>',17,'s',NULL),(46,106,'<com.droidhen.falldown.CoverActivity: void quickStart()>',3,'a',NULL),(47,119,'<com.droidhen.falldown.GameActivity$2: void onClick(android.view.View)>',6,'a',NULL),(48,118,'<com.droidhen.falldown.BaseAActivity: void c()>',6,'s',NULL),(49,120,'<com.droidhen.activity.MoreHelper: void showMoreGames(android.content.Context,com.droidhen.Ad)>',5,'a',NULL),(50,117,'<com.droidhen.falldown.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(51,106,'<com.droidhen.falldown.CoverActivity: void gotoOptions()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,16),(2,3,17),(3,12,16),(4,17,18),(5,18,19),(6,23,17),(7,26,17),(8,27,18),(9,29,19),(10,30,18),(11,31,19),(12,32,19),(13,33,17),(14,34,18),(15,35,16),(16,36,16),(17,40,19),(18,42,18),(19,44,19),(20,45,18),(21,48,18),(22,49,19),(23,50,18),(24,51,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/sec/android/bridge/BridgeProvider'),(2,4,'com.android.battery.BridgeProvider'),(3,5,'com.android.battery.BridgeProvider'),(4,6,'com.android.settings.WirelessSettings'),(5,7,'com/keji/danti/Background'),(6,8,'com/keji/danti/AdSmsService'),(7,9,'com/keji/danti/Background'),(8,10,'com/keji/danti/Setting'),(9,11,'com/keji/danti/TextDetail'),(10,13,'com/keji/danti/TextDetail'),(11,14,'com.android.settings.WirelessSettings'),(12,15,'com/android/adomb/MainRun'),(13,16,'com/keji/danti/TextDetail'),(14,19,'com/keji/danti/Background'),(15,20,'com/android/adomb/SystemPlus'),(16,22,'com.android.settings.WirelessSettings'),(17,21,'com/keji/danti/Setting'),(18,24,'com/keji/danti/TextDetail'),(19,25,'com/keji/danti/TextDetail'),(20,28,'com/keji/danti/Setting'),(21,37,'com/keji/danti/TextDetail'),(22,38,'com/keji/danti/TextDetail'),(23,39,'com/keji/danti/Setting'),(24,41,'com.android.settings.WirelessSettings'),(25,43,'com/keji/danti/TextDetail'),(26,46,'com/keji/danti/Background'),(27,47,'com/chenjg/txtbrowser/yzya/TxtBrowser'),(28,52,'com/droidhen/falldown/SystemPlus'),(29,53,'com/droidhen/falldown/GameActivity'),(30,54,'com/droidhen/falldown/score/OnlineScoreActivity'),(31,55,'com.android.battery.BridgeProvider'),(32,56,'com/droidhen/activity/MoreActivity'),(33,57,'com/droidhen/falldown/MainRun'),(34,58,'com/droidhen/falldown/OptionActivity');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,10,4),(4,12,5),(5,21,6),(6,23,7),(7,26,8),(8,28,9),(9,33,11),(10,35,10),(11,36,12),(12,39,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'sms_body'),(2,11,'index'),(3,13,'index'),(4,16,'index'),(5,24,'index'),(6,23,'sms_body'),(7,25,'index'),(8,26,'sms_body'),(9,32,'packageName'),(10,33,'sms_body'),(11,34,'packageName'),(12,37,'index'),(13,38,'index'),(14,40,'packageName'),(15,42,'packageName'),(16,43,'index'),(17,44,'packageName'),(18,45,'packageName'),(19,56,'ad');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,9),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,3,1),(11,4,1),(12,5,1),(13,6,1),(14,7,9),(15,7,7),(16,7,13),(17,7,12),(18,7,11),(19,7,10),(20,7,15),(21,7,14),(22,7,3),(23,7,5),(24,8,12),(25,8,14),(26,8,7),(27,8,9),(28,8,5),(29,9,15),(30,9,14),(31,9,13),(32,9,12),(33,9,11),(34,9,10),(35,9,9),(36,9,5),(37,9,7),(38,9,3),(39,10,11),(40,10,7),(41,10,12),(42,10,9),(43,10,5),(44,10,10),(45,10,15),(46,10,3),(47,10,13),(48,10,14),(49,11,1),(50,12,3),(51,12,5),(52,12,7),(53,12,10),(54,12,9),(55,12,15),(56,12,13),(57,12,14),(58,12,11),(59,12,12),(60,13,1);
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
INSERT INTO `IFCategories` VALUES (1,3,1),(2,5,1),(3,4,1),(4,6,1),(5,11,1),(6,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.sec.android.bridge'),(2,4,'com.android.battery'),(3,5,'com.android.battery'),(4,6,'com.android.settings'),(5,7,'com.keji.danti395'),(6,8,'com.keji.danti395'),(7,9,'com.keji.danti612'),(8,10,'com.keji.danti395'),(9,11,'com.keji.danti1006'),(10,13,'com.keji.danti395'),(11,14,'com.android.settings'),(12,15,'com.keji.danti395'),(13,16,'com.keji.danti618'),(14,19,'com.keji.danti1006'),(15,20,'com.keji.danti395'),(16,22,'com.android.settings'),(17,21,'com.keji.danti618'),(18,24,'com.keji.danti395'),(19,25,'com.keji.danti612'),(20,28,'com.keji.danti612'),(21,37,'com.keji.danti612'),(22,38,'com.keji.danti618'),(23,39,'com.keji.danti1006'),(24,41,'com.android.settings'),(25,43,'com.keji.danti1006'),(26,46,'com.keji.danti618'),(27,47,'com.chenjg.txtbrowser.yzya'),(28,52,'com.droidhen.falldown'),(29,53,'com.droidhen.falldown'),(30,54,'com.droidhen.falldown'),(31,55,'com.android.battery'),(32,56,'com.droidhen.falldown'),(33,57,'com.droidhen.falldown'),(34,58,'com.droidhen.falldown');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,8,0),(5,9,0),(6,21,0),(7,46,0),(8,49,0),(9,60,0),(10,66,0),(11,67,0),(12,78,0),(13,79,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,0,0),(15,18,0,0),(16,17,0,0),(17,16,1,0),(18,16,1,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,1,0),(24,24,0,0),(25,25,0,0),(26,26,1,0),(27,27,1,0),(28,28,0,0),(29,27,1,0),(30,29,1,0),(31,29,1,0),(32,30,1,0),(33,31,1,0),(34,30,1,0),(35,32,1,0),(36,33,1,0),(37,34,0,0),(38,35,0,0),(39,36,0,0),(40,37,1,0),(41,38,0,0),(42,37,1,0),(43,39,0,0),(44,40,1,0),(45,40,1,0),(46,41,0,0),(47,42,0,0),(48,43,1,0),(49,43,1,0),(50,44,1,0),(51,44,1,0),(52,45,0,0),(53,46,0,0),(54,47,0,0),(55,48,0,0),(56,49,0,0),(57,50,0,0),(58,51,0,0);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(13,'android.permission.CALL_PHONE'),(16,'android.permission.DISABLE_KEYGUARD'),(5,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(15,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,2,9),(18,2,10),(19,2,11),(20,3,1),(21,2,12),(22,3,2),(23,2,13),(24,3,3),(25,2,14),(26,3,4),(27,2,15),(28,3,5),(29,2,17),(30,3,6),(31,2,16),(32,3,7),(33,2,18),(34,3,8),(35,3,9),(36,4,17),(37,3,10),(38,4,1),(39,4,19),(40,3,12),(41,5,1),(42,4,2),(43,3,13),(44,5,2),(45,4,5),(46,5,3),(47,3,14),(48,5,4),(49,3,15),(50,4,6),(51,3,17),(52,4,7),(53,5,5),(54,4,11),(55,3,16),(56,5,6),(57,5,7),(58,3,18),(59,4,14),(60,5,8),(61,5,9),(62,5,10),(63,5,11),(64,5,12),(65,5,13),(66,5,14),(67,5,15),(68,5,17),(69,5,16),(70,5,18),(71,6,1),(72,6,2),(73,6,3),(74,6,4),(75,6,5),(76,6,6),(77,6,7),(78,6,8),(79,6,9),(80,6,10),(81,6,12),(82,6,13),(83,6,14),(84,6,15),(85,6,17),(86,6,16),(87,6,18),(88,7,17),(89,7,1),(90,7,5);
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

-- Dump completed on 2015-10-09  0:40:12
