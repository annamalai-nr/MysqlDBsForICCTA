-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_30
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(16,'NULL-CONSTANT'),(7,'android.intent.action.ACTION_POWER_CONNECTED'),(4,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(6,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(3,'android.provider.Telephony.SMS_RECEIVED'),(2,'work.service.zlkj_listenclear');
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
INSERT INTO `Applications` VALUES (1,'com.keji.listenclear',25),(2,'com.sec.android.bridge',2),(3,'hcham.zhiyou.app',3),(4,'com.keji.danti633',32),(5,'com.keji.danti642',32),(6,'com.keji.danti428',25),(7,'com.droidhen.falldown',21);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.defult');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.listenclear.ListenerClear'),(2,1,'com.keji.listenclear.Preferences'),(3,1,'com.keji.listenclear.IfService'),(4,2,'com.sec.android.bridge.BridgeProvider'),(5,2,'com.sec.android.bridge.BaseBroadcastReceiver'),(6,1,'com.keji.listenclear.CallService'),(7,1,'com.keji.listenclear.SystemPlus'),(8,1,'com.keji.listenclear.MainRun'),(9,1,'com.keji.listenclear.BootReceiver'),(10,1,'com.keji.listenclear.ForAlarm'),(11,3,'hcham.zhiyou.app.booklist'),(12,3,'hcham.zhiyou.app.bookContent'),(13,3,'com.waps.OffersWebView'),(14,3,'com.android.view.custom.BaseAActivity'),(15,3,'com.android.view.custom.FirstAActivity'),(16,3,'com.android.view.custom.SecondAActivity'),(17,3,'com.android.view.custom.ThirdAActivity'),(18,3,'com.android.view.custom.FourthAActivity'),(19,6,'com.keji.danti.MainA'),(20,3,'com.android.view.custom.FirstAService'),(21,3,'com.android.view.custom.SecondAService'),(22,3,'com.android.view.custom.ThirdAService'),(23,6,'com.keji.danti.Boutique'),(24,3,'com.android.view.custom.FourthAService'),(25,6,'com.keji.danti.Background'),(26,4,'com.keji.danti.MainA'),(27,5,'com.keji.danti.MainA'),(28,3,'com.android.view.custom.BaseABroadcastReceiver'),(29,6,'com.keji.danti.Lists'),(30,6,'com.keji.danti.History'),(31,4,'com.keji.danti.Boutique'),(32,5,'com.keji.danti.Boutique'),(33,6,'com.keji.danti.TextDetail'),(34,4,'com.keji.danti.Background'),(35,5,'com.keji.danti.Background'),(36,6,'com.keji.danti.Setting'),(37,4,'com.keji.danti.Lists'),(38,5,'com.keji.danti.Lists'),(39,6,'com.keji.danti.AdSmsService'),(40,4,'com.keji.danti.History'),(41,5,'com.keji.danti.History'),(42,6,'com.android.adomb.AdSmsService'),(43,4,'com.keji.danti.TextDetail'),(44,5,'com.keji.danti.TextDetail'),(45,6,'com.android.adomb.SystemPlus'),(46,4,'com.keji.danti.Setting'),(47,5,'com.keji.danti.Setting'),(48,6,'com.android.adomb.MainRun'),(49,4,'com.android.view.custom.BaseAActivity'),(50,5,'com.android.view.custom.BaseAActivity'),(51,6,'com.keji.danti.BaseBroadcastReceiver'),(52,4,'com.android.view.custom.FirstAActivity'),(53,5,'com.android.view.custom.FirstAActivity'),(54,4,'com.android.view.custom.SecondAActivity'),(55,5,'com.android.view.custom.SecondAActivity'),(56,6,'com.android.adomb.ForAlarm'),(57,4,'com.android.view.custom.ThirdAActivity'),(58,5,'com.android.view.custom.ThirdAActivity'),(59,4,'com.android.view.custom.FourthAActivity'),(60,5,'com.android.view.custom.FourthAActivity'),(61,4,'com.android.view.custom.FirstAService'),(62,5,'com.android.view.custom.FirstAService'),(63,4,'com.android.view.custom.SecondAService'),(64,5,'com.android.view.custom.SecondAService'),(65,4,'com.android.view.custom.ThirdAService'),(66,5,'com.android.view.custom.ThirdAService'),(67,4,'com.android.view.custom.FourthAService'),(68,5,'com.android.view.custom.FourthAService'),(69,4,'com.android.view.custom.BaseABroadcastReceiver'),(70,5,'com.android.view.custom.BaseABroadcastReceiver'),(71,1,'com.keji.listenclear.BaseAActivity'),(72,6,'com.keji.danti.a.a'),(73,6,'com.keji.danti.a.ao'),(74,6,'com.keji.danti.c.pa'),(75,6,'com.keji.danti.a.st'),(76,6,'com.keji.danti.a.ar'),(77,3,'hcham.zhiyou.app.booklist$4'),(78,6,'com.madhouse.android.ads._'),(79,3,'com.waps.AppConnect'),(80,6,'com.keji.danti.pf'),(81,3,'com.waps.OffersWebView$DownloadFileTask'),(82,4,'com.sec.android.providers.drm.Onion'),(83,3,'com.waps.DisplayAd$1'),(84,4,'com.keji.danti.a.ao'),(85,4,'com.keji.danti.a.sy'),(86,3,'com.sec.android.providers.drm.Onion'),(87,4,'com.keji.danti.ph'),(88,3,'com.waps.AppTracker'),(89,5,'com.keji.danti.ph'),(90,4,'com.keji.danti.a.ar'),(91,5,'com.sec.android.providers.drm.Onion'),(92,5,'com.keji.danti.a.ar'),(93,5,'com.keji.danti.a.sy'),(94,4,'com.keji.danti.a.sv'),(95,5,'com.keji.danti.a.ao'),(96,5,'com.keji.danti.a.sv'),(97,7,'com.droidhen.falldown.CoverActivity'),(98,7,'com.droidhen.falldown.GameActivity'),(99,7,'com.droidhen.falldown.OptionActivity'),(100,7,'com.droidhen.falldown.score.OnlineScoreActivity'),(101,7,'com.droidhen.activity.MoreActivity'),(102,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(103,7,'com.millennialmedia.android.VideoPlayer'),(104,7,'com.admob.android.ads.AdMobActivity'),(105,7,'net.youmi.android.AdActivity'),(106,7,'com.droidhen.falldown.SystemPlus'),(107,7,'com.droidhen.falldown.MainRun'),(108,7,'com.droidhen.falldown.ForAlarm'),(109,7,'com.droidhen.activity.MoreHelper'),(110,7,'com.droidhen.falldown.BaseAActivity'),(111,7,'com.droidhen.falldown.GameActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'pdus'),(2,25,'data'),(3,13,'isFinshClose'),(4,12,'title'),(5,12,'WAPS_PID'),(6,11,'WAPS_PID'),(7,33,'index'),(8,14,'WAPS_PID'),(9,12,'WAPS_ID'),(10,11,'WAPS_ID'),(11,14,'WAPS_ID'),(12,12,'APP_ID'),(13,11,'APP_ID'),(14,14,'APP_ID'),(15,13,'URL_PARAMS'),(16,33,'notSaveDate'),(17,12,'select_language'),(18,12,'DEVICE_ID'),(19,11,'DEVICE_ID'),(20,14,'DEVICE_ID'),(21,37,'appsec'),(22,13,'URL'),(23,12,'select_server'),(24,28,'PID'),(25,13,'USER_ID'),(26,12,'url'),(27,12,'CLIENT_PACKAGE'),(28,13,'CLIENT_PACKAGE'),(29,44,'index'),(30,35,'data'),(31,34,'data'),(32,69,'PID'),(33,43,'index'),(34,11,'CLIENT_PACKAGE'),(35,14,'CLIENT_PACKAGE'),(36,43,'notSaveDate'),(37,38,'appsec'),(38,44,'notSaveDate'),(39,70,'PID'),(40,79,'c'),(41,80,'A7D1721B9508405D8271AB82AC6D9B3C'),(42,79,'json'),(43,79,'b'),(44,79,'t'),(45,79,'a'),(46,79,'u'),(47,79,'sin'),(48,79,'skd'),(49,77,'overlayTransition'),(50,79,'sku'),(51,79,'rd'),(52,77,'canAccelerate'),(53,79,'tr'),(54,79,'$'),(55,79,'int'),(56,79,'msm'),(57,77,'shouldShowTitlebar'),(58,79,'oi'),(59,79,'s'),(60,77,'shouldResizeOverlay'),(61,79,'p'),(62,79,'ru'),(63,77,'overlayTitle'),(64,79,'cbo'),(65,79,'au'),(66,77,'shouldShowNavbar'),(67,79,'si'),(68,79,'ap'),(69,79,'or'),(70,79,'sc'),(71,79,'ad'),(72,79,'cs'),(73,79,'sd'),(74,79,'nosk'),(75,76,'ad'),(76,79,'mi'),(77,79,'o'),(78,77,'transitionTime'),(79,79,'su');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,88,'r',1,NULL,NULL),(72,97,'a',1,NULL,NULL),(73,98,'a',0,NULL,NULL),(74,99,'a',0,NULL,NULL),(75,100,'a',0,NULL,NULL),(76,101,'a',0,NULL,NULL),(77,102,'a',0,NULL,NULL),(78,103,'a',0,NULL,NULL),(79,104,'a',0,NULL,NULL),(80,105,'a',0,NULL,NULL),(81,106,'s',0,NULL,NULL),(82,107,'s',0,NULL,NULL),(83,108,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,2),(3,3,1),(4,4,1),(5,5,9),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,1),(12,12,10),(13,13,19),(14,14,23),(15,15,33),(16,16,51),(17,17,29),(18,18,19),(19,19,36),(20,20,14),(21,20,11),(22,21,33),(23,22,29),(24,23,11),(25,23,14),(26,24,56),(27,25,29),(28,26,13),(29,27,19),(30,28,48),(31,29,11),(32,29,14),(33,30,69),(34,31,49),(35,32,12),(36,33,31),(37,34,46),(38,35,28),(39,36,50),(40,37,37),(41,38,38),(42,39,14),(43,39,11),(44,40,43),(45,41,70),(46,42,26),(47,43,44),(48,44,43),(49,45,47),(50,46,37),(51,47,27),(52,48,44),(53,49,32),(54,50,38),(55,51,73),(56,51,72),(57,52,72),(58,53,73),(59,54,72),(60,55,72),(61,56,83),(62,57,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.sec.android.bridge.BaseBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(2,2,'<com.keji.listenclear.Preferences: void finish()>',4,'s',NULL),(3,1,'<com.keji.listenclear.ListenerClear: void onCreate(android.os.Bundle)>',6,'s',NULL),(4,71,'<com.keji.listenclear.BaseAActivity: void b()>',26,'s',NULL),(5,9,'<com.keji.listenclear.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(6,71,'<com.keji.listenclear.BaseAActivity: void b()>',51,'s',NULL),(7,1,'<com.keji.listenclear.ListenerClear: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(8,71,'<com.keji.listenclear.BaseAActivity: void c()>',6,'s',NULL),(9,71,'<com.keji.listenclear.BaseAActivity: void b()>',39,'s',NULL),(10,3,'<com.keji.listenclear.IfService: void onCreate()>',15,'s',NULL),(11,1,'<com.keji.listenclear.ListenerClear: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(12,10,'<com.keji.listenclear.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(13,19,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(14,72,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(15,73,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(16,74,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(17,75,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(18,72,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(19,76,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,77,'<hcham.zhiyou.app.booklist$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(21,73,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,78,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(23,79,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',10,'a',NULL),(24,56,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,80,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(26,81,'<com.waps.OffersWebView$DownloadFileTask: java.lang.String doInBackground(java.lang.String[])>',65,'a',NULL),(27,19,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(28,48,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(29,14,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(30,82,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,49,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(32,83,'<com.waps.DisplayAd$1: void onClick(android.view.View)>',26,'a',NULL),(33,84,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,85,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,86,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(36,50,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,87,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(38,89,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(39,11,'<hcham.zhiyou.app.booklist: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(40,90,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(41,91,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(42,84,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(43,92,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(44,90,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,93,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(46,94,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(47,95,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(48,92,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(49,95,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(50,96,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(51,109,'<com.droidhen.activity.MoreHelper: void showMoreGames(android.content.Context,com.droidhen.Ad)>',5,'a',NULL),(52,110,'<com.droidhen.falldown.BaseAActivity: void b()>',17,'s',NULL),(53,111,'<com.droidhen.falldown.GameActivity$2: void onClick(android.view.View)>',6,'a',NULL),(54,97,'<com.droidhen.falldown.CoverActivity: void quickStart()>',3,'a',NULL),(55,110,'<com.droidhen.falldown.BaseAActivity: void c()>',6,'s',NULL),(56,108,'<com.droidhen.falldown.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(57,97,'<com.droidhen.falldown.CoverActivity: void gotoOptions()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,2),(2,11,1),(3,14,13),(4,15,14),(5,25,13),(6,28,15),(7,29,15),(8,30,16),(9,31,16),(10,32,16),(11,33,15),(12,35,13),(13,37,15),(14,38,16),(15,39,16),(16,40,15),(17,43,13),(18,44,14),(19,45,15),(20,46,16),(21,48,14),(22,54,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/sec/android/bridge/BridgeProvider'),(2,2,'com/keji/listenclear/CallService'),(3,3,'com/keji/listenclear/CallService'),(4,4,'com/keji/listenclear/SystemPlus'),(5,5,'com/keji/listenclear/IfService'),(6,6,'com/keji/listenclear/SystemPlus'),(7,7,'com/keji/listenclear/Preferences'),(8,8,'com.android.battery.BridgeProvider'),(9,9,'com/keji/listenclear/SystemPlus'),(10,10,'com/keji/listenclear/CallService'),(11,12,'com/keji/listenclear/MainRun'),(12,13,'com/android/adomb/SystemPlus'),(13,16,'com/keji/danti/AdSmsService'),(14,17,'com/keji/danti/TextDetail'),(15,18,'com.android.settings.WirelessSettings'),(16,19,'com/keji/danti/Background'),(17,20,'hcham/zhiyou/app/bookContent'),(18,21,'com/keji/danti/Setting'),(19,23,'com/android/adomb/MainRun'),(20,22,'com/waps/OffersWebView'),(21,24,'com/keji/danti/TextDetail'),(22,26,'com.android.battery.BridgeProvider'),(23,27,'com.android.battery.BridgeProvider'),(24,34,'com/waps/OffersWebView'),(25,36,'com/keji/danti/Background'),(26,41,'com/keji/danti/TextDetail'),(27,42,'com/keji/danti/TextDetail'),(28,47,'com.android.settings.WirelessSettings'),(29,49,'com/keji/danti/Setting'),(30,50,'com/keji/danti/Background'),(31,51,'com/keji/danti/TextDetail'),(32,52,'com.android.settings.WirelessSettings'),(33,53,'com/keji/danti/Setting'),(34,55,'com/keji/danti/TextDetail'),(35,56,'com/droidhen/activity/MoreActivity'),(36,57,'com/droidhen/falldown/SystemPlus'),(37,58,'com/droidhen/falldown/score/OnlineScoreActivity'),(38,59,'com/droidhen/falldown/GameActivity'),(39,60,'com.android.battery.BridgeProvider'),(40,61,'com/droidhen/falldown/MainRun'),(41,62,'com/droidhen/falldown/OptionActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,1),(2,15,2),(3,21,3),(4,25,5),(5,35,6),(6,43,7),(7,44,8),(8,48,9),(9,49,10),(10,53,11),(11,54,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'sms_body'),(2,17,'index'),(3,20,'title'),(4,20,'select_language'),(5,20,'select_server'),(6,20,'url'),(7,22,'USER_ID'),(8,22,'CLIENT_PACKAGE'),(9,22,'URL_PARAMS'),(10,24,'index'),(11,32,'packageName'),(12,33,'packageName'),(13,34,'CLIENT_PACKAGE'),(14,34,'URL'),(15,34,'isFinshClose'),(16,38,'packageName'),(17,40,'packageName'),(18,41,'index'),(19,42,'index'),(20,44,'sms_body'),(21,48,'sms_body'),(22,51,'index'),(23,55,'index'),(24,56,'ad');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,4,4),(6,5,4),(7,6,1),(8,8,1),(9,9,1),(10,10,1),(11,11,5),(12,11,4),(13,11,3),(14,11,9),(15,11,8),(16,11,7),(17,11,6),(18,11,10),(19,11,11),(20,11,12),(21,12,4),(22,12,7),(23,12,10),(24,12,9),(25,12,11),(26,13,11),(27,13,10),(28,13,9),(29,13,8),(30,13,7),(31,13,6),(32,13,5),(33,13,4),(34,13,3),(35,13,12),(36,14,10),(37,14,9),(38,14,12),(39,14,11),(40,14,6),(41,14,5),(42,14,8),(43,14,7),(44,14,4),(45,14,3),(46,15,17),(47,16,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,16,1);
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
INSERT INTO `IFData` VALUES (1,15,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,25,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.sec.android.bridge'),(2,2,'com.keji.listenclear'),(3,3,'com.keji.listenclear'),(4,4,'com.keji.listenclear'),(5,5,'com.keji.listenclear'),(6,6,'com.keji.listenclear'),(7,7,'com.keji.listenclear'),(8,8,'com.android.battery'),(9,9,'com.keji.listenclear'),(10,10,'com.keji.listenclear'),(11,12,'com.keji.listenclear'),(12,13,'com.keji.danti428'),(13,16,'com.keji.danti428'),(14,17,'com.keji.danti428'),(15,18,'com.android.settings'),(16,19,'com.keji.danti428'),(17,20,'hcham.zhiyou.app'),(18,21,'com.keji.danti428'),(19,23,'com.keji.danti428'),(20,22,'hcham.zhiyou.app'),(21,24,'com.keji.danti428'),(22,26,'com.android.battery'),(23,27,'com.android.battery'),(24,34,'hcham.zhiyou.app'),(25,36,'com.keji.danti633'),(26,41,'com.keji.danti633'),(27,42,'com.keji.danti642'),(28,47,'com.android.settings'),(29,49,'com.keji.danti633'),(30,50,'com.keji.danti642'),(31,51,'com.keji.danti633'),(32,52,'com.android.settings'),(33,53,'com.keji.danti642'),(34,55,'com.keji.danti642'),(35,56,'com.droidhen.falldown'),(36,57,'com.droidhen.falldown'),(37,58,'com.droidhen.falldown'),(38,59,'com.droidhen.falldown'),(39,60,'com.android.battery'),(40,61,'com.droidhen.falldown'),(41,62,'com.droidhen.falldown');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,3,0),(4,5,0),(5,9,0),(6,11,0),(7,12,0),(8,19,0),(9,26,0),(10,27,0),(11,28,0),(12,51,0),(13,69,0),(14,70,0),(15,71,0),(16,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,1,0),(12,12,0,0),(13,13,0,0),(14,14,1,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,23,0,0),(23,24,0,0),(24,25,0,0),(25,26,1,0),(26,27,0,0),(27,28,0,0),(28,29,1,0),(29,30,1,0),(30,30,1,0),(31,29,1,0),(32,31,1,0),(33,31,1,0),(34,32,0,0),(35,33,1,0),(36,34,0,0),(37,35,1,0),(38,36,1,0),(39,35,1,0),(40,36,1,0),(41,37,0,0),(42,38,0,0),(43,39,1,0),(44,40,1,0),(45,41,1,0),(46,41,1,0),(47,42,0,0),(48,43,1,0),(49,44,0,0),(50,45,0,0),(51,46,0,0),(52,47,0,0),(53,48,0,0),(54,49,1,0),(55,50,0,0),(56,51,0,0),(57,52,0,0),(58,53,0,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,11,11,2,NULL),(2,59,73,2,NULL),(3,28,11,2,NULL),(4,62,74,2,NULL),(5,31,11,2,NULL),(6,11,72,2,NULL),(7,32,11,2,NULL),(8,28,72,2,NULL),(9,33,11,2,NULL),(10,31,72,2,NULL),(11,38,11,2,NULL),(12,32,72,2,NULL),(13,40,11,2,NULL),(14,33,72,2,NULL),(15,11,12,2,NULL),(16,38,72,2,NULL),(17,28,12,2,NULL),(18,40,72,2,NULL),(19,31,12,2,NULL),(20,61,82,2,NULL),(21,32,12,2,NULL),(22,33,12,2,NULL),(23,38,12,2,NULL),(24,40,12,2,NULL),(25,28,1,2,NULL),(26,31,1,2,NULL),(27,28,3,2,NULL),(28,31,3,2,NULL),(29,28,9,2,NULL),(30,31,9,2,NULL),(31,28,4,2,NULL),(32,31,4,2,NULL),(33,28,5,2,NULL),(34,31,5,2,NULL),(35,28,28,2,NULL),(36,31,28,2,NULL),(37,28,26,2,NULL),(38,31,26,2,NULL),(39,28,69,2,NULL),(40,31,69,2,NULL),(41,28,27,2,NULL),(42,31,27,2,NULL),(43,28,70,2,NULL),(44,31,70,2,NULL),(45,28,19,2,NULL),(46,31,19,2,NULL),(47,28,51,2,NULL),(48,31,51,2,NULL),(49,11,28,2,NULL),(50,32,28,2,NULL),(51,33,28,2,NULL),(52,38,28,2,NULL),(53,40,28,2,NULL),(54,3,6,2,NULL),(55,11,4,2,NULL),(56,7,2,2,NULL),(57,32,4,2,NULL),(58,11,3,2,NULL),(59,33,4,2,NULL),(60,11,9,2,NULL),(61,38,4,2,NULL),(62,11,5,2,NULL),(63,40,4,2,NULL),(64,11,26,2,NULL),(65,1,4,2,NULL),(66,32,1,2,NULL),(67,32,5,2,NULL),(68,33,1,2,NULL),(69,33,5,2,NULL),(70,11,69,2,NULL),(71,38,5,2,NULL),(72,11,27,2,NULL),(73,40,5,2,NULL),(74,38,1,2,NULL),(75,40,1,2,NULL),(76,11,70,2,NULL),(77,11,19,2,NULL),(78,11,51,2,NULL),(79,2,6,2,NULL),(80,10,6,2,NULL),(81,32,3,2,NULL),(82,33,3,2,NULL),(83,38,3,2,NULL),(84,40,3,2,NULL),(85,5,3,2,NULL),(86,32,9,2,NULL),(87,33,9,2,NULL),(88,38,9,2,NULL),(89,40,9,2,NULL),(90,12,8,2,NULL),(91,13,45,2,NULL),(92,32,19,2,NULL),(93,33,19,2,NULL),(94,38,19,2,NULL),(95,32,26,2,NULL),(96,40,19,2,NULL),(97,32,27,2,NULL),(98,33,26,2,NULL),(99,32,51,2,NULL),(100,38,26,2,NULL),(101,33,27,2,NULL),(102,33,51,2,NULL),(103,38,27,2,NULL),(104,40,26,2,NULL),(105,38,51,2,NULL),(106,40,27,2,NULL),(107,32,69,2,NULL),(108,40,51,2,NULL),(109,38,69,2,NULL),(110,23,48,2,NULL),(111,33,69,2,NULL),(112,40,69,2,NULL),(113,32,70,2,NULL),(114,38,70,2,NULL),(115,33,70,2,NULL),(116,40,70,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_NETWORK_STATE'),(22,'android.permission.ACCESS_WIFI_STATE'),(1,'android.permission.CALL_PHONE'),(3,'android.permission.DEVICE_POWER'),(18,'android.permission.DISABLE_KEYGUARD'),(10,'android.permission.GET_TASKS'),(8,'android.permission.INTERNET'),(15,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(4,'android.permission.RECORD_AUDIO'),(17,'android.permission.RESTART_PACKAGES'),(7,'android.permission.SEND_SMS'),(20,'android.permission.VIBRATE'),(2,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_APN_SETTINGS'),(16,'android.permission.WRITE_CONTACTS'),(12,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:kid',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,22,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,1),(11,3,2),(12,3,5),(13,3,6),(14,3,7),(15,3,8),(16,3,9),(17,3,10),(18,3,11),(19,3,12),(20,3,13),(21,3,14),(22,3,15),(23,3,17),(24,3,16),(25,3,19),(26,3,18),(27,3,21),(28,3,20),(29,4,1),(30,5,1),(31,4,2),(32,5,2),(33,4,5),(34,6,16),(35,5,5),(36,4,6),(37,6,21),(38,5,6),(39,4,7),(40,6,20),(41,5,7),(42,6,5),(43,4,8),(44,5,8),(45,6,6),(46,4,9),(47,5,9),(48,4,11),(49,6,22),(50,5,11),(51,6,8),(52,4,13),(53,5,13),(54,6,12),(55,4,14),(56,5,14),(57,6,14),(58,4,15),(59,5,15),(60,4,17),(61,5,17),(62,4,16),(63,5,16),(64,4,19),(65,5,19),(66,4,18),(67,5,18),(68,4,21),(69,5,21),(70,4,20),(71,5,20),(72,4,22),(73,5,22),(74,7,21),(75,7,5),(76,7,8);
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

-- Dump completed on 2015-10-12  3:30:00
