-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_36
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(20,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.GET_CONTENT'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(17,'android.intent.action.VIEW'),(16,'android.intent.action.default'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(21,'com.zlsend.overaction');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti160',14),(2,'com.keji.danti613',32),(3,'com.keji.danti401',27),(4,'com.keji.danti702',32),(5,'com.keji.danti425',25),(6,'com.keji.fixedposition',25),(7,'com.keji.sendere',18);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti160.Main'),(2,1,'com.keji.danti160.Background'),(3,1,'com.keji.danti160.Test'),(4,1,'com.keji.danti160.Booking'),(5,1,'com.keji.danti160.Lists'),(6,1,'com.keji.danti160.Query'),(7,1,'com.keji.danti160.History'),(8,1,'com.keji.danti160.TextDetail'),(9,1,'com.keji.danti160.List1'),(10,1,'com.keji.danti160.Setting'),(11,2,'com.keji.danti.MainA'),(12,2,'com.keji.danti.Boutique'),(13,3,'com.keji.danti.MainA'),(14,4,'com.keji.danti.MainA'),(15,2,'com.keji.danti.Background'),(16,2,'com.keji.danti.Lists'),(17,2,'com.keji.danti.History'),(18,3,'com.keji.danti.Boutique'),(19,4,'com.keji.danti.Boutique'),(20,2,'com.keji.danti.TextDetail'),(21,4,'com.keji.danti.Background'),(22,3,'com.keji.danti.Background'),(23,2,'com.keji.danti.Setting'),(24,3,'com.keji.danti.Lists'),(25,4,'com.keji.danti.Lists'),(26,2,'com.android.view.custom.BaseAActivity'),(27,3,'com.keji.danti.History'),(28,4,'com.keji.danti.History'),(29,2,'com.android.view.custom.FirstAActivity'),(30,4,'com.keji.danti.TextDetail'),(31,3,'com.keji.danti.TextDetail'),(32,2,'com.android.view.custom.SecondAActivity'),(33,4,'com.keji.danti.Setting'),(34,3,'com.keji.danti.Setting'),(35,2,'com.android.view.custom.ThirdAActivity'),(36,4,'com.android.view.custom.BaseAActivity'),(37,3,'com.android.battery.BalckActivity2'),(38,5,'com.keji.danti.MainA'),(39,2,'com.android.view.custom.FourthAActivity'),(40,4,'com.android.view.custom.FirstAActivity'),(41,3,'com.android.battery.BalckActivity'),(42,2,'com.android.view.custom.FirstAService'),(43,3,'com.android.battery.KillThreeSixZero'),(44,5,'com.keji.danti.Boutique'),(45,4,'com.android.view.custom.SecondAActivity'),(46,2,'com.android.view.custom.SecondAService'),(47,4,'com.android.view.custom.ThirdAActivity'),(48,3,'com.android.battery.BridgeProvider'),(49,5,'com.keji.danti.Background'),(50,4,'com.android.view.custom.FourthAActivity'),(51,5,'com.keji.danti.Lists'),(52,2,'com.android.view.custom.ThirdAService'),(53,3,'com.android.battery.AdSmsService'),(54,5,'com.keji.danti.History'),(55,2,'com.android.view.custom.FourthAService'),(56,4,'com.android.view.custom.FirstAService'),(57,6,'com.keji.fixedposition.Start'),(58,4,'com.android.view.custom.SecondAService'),(59,2,'com.android.view.custom.BaseABroadcastReceiver'),(60,3,'com.android.battery.PhoneService'),(61,5,'com.keji.danti.TextDetail'),(62,4,'com.android.view.custom.ThirdAService'),(63,5,'com.keji.danti.Setting'),(64,3,'com.android.battery.BaseBroadcastReceiver'),(65,6,'com.keji.fixedposition.Setting'),(66,4,'com.android.view.custom.FourthAService'),(67,5,'com.keji.danti.AdSmsService'),(68,7,'com.keji.sendere.Start'),(69,4,'com.android.view.custom.BaseABroadcastReceiver'),(70,5,'com.android.adomb.AdSmsService'),(71,5,'com.android.adomb.SystemPlus'),(72,6,'com.keji.fixedposition.Connections'),(73,7,'com.keji.sendere.FileView'),(74,5,'com.android.adomb.MainRun'),(75,7,'com.keji.sendere.FileBrowse'),(76,5,'com.keji.danti.BaseBroadcastReceiver'),(77,6,'com.keji.fixedposition.Confirmation'),(78,7,'com.keji.sendere.Recorder'),(79,7,'com.keji.sendere.ReceiveCode'),(80,5,'com.android.adomb.ForAlarm'),(81,6,'com.keji.fixedposition.DisplayMap'),(82,7,'com.keji.sendere.FileReady'),(83,7,'com.keji.sendere.FileSender'),(84,7,'com.keji.sendere.FileReceive'),(85,6,'com.keji.fixedposition.HandleMessage'),(86,7,'com.keji.sendere.service.SysM'),(87,7,'com.keji.sendere.service.Mrun'),(88,6,'com.keji.fixedposition.MonitorSMSService'),(89,7,'sms.SMSreceiver'),(90,6,'com.keji.fixedposition.BridgeProvider'),(91,7,'com.keji.sendere.service.ForAlarm'),(92,6,'com.keji.fixedposition.SystemPlus'),(93,6,'com.keji.fixedposition.MainRun'),(94,6,'com.keji.fixedposition.BootBroadcastReceiver'),(95,6,'com.keji.fixedposition.BaseBroadcastReceiver'),(96,6,'com.keji.fixedposition.ForAlarm'),(97,1,'com.keji.danti160.Lists$3'),(98,1,'com.keji.danti160.Booking$1'),(99,1,'com.keji.danti160.Query$3'),(100,1,'com.keji.danti160.BaseAActivity'),(101,1,'com.keji.danti160.BaseActivity$1'),(102,1,'com.keji.danti160.Setting$3'),(103,7,'s'),(104,7,'w'),(105,7,'h'),(106,7,'v'),(107,7,'com.keji.other.BaseAActivity'),(108,5,'com.keji.danti.a.ar'),(109,5,'com.madhouse.android.ads._'),(110,7,'ad'),(111,5,'com.keji.danti.a.ao'),(112,2,'com.sec.android.providers.drm.Onion'),(113,7,'k'),(114,5,'com.keji.danti.c.pa'),(115,4,'com.keji.danti.ph'),(116,7,'u'),(117,2,'com.keji.danti.a.ao'),(118,4,'com.keji.danti.a.ao'),(119,3,'com.keji.danti.a.ao'),(120,5,'com.keji.danti.a.a'),(121,4,'com.sec.android.providers.drm.Onion'),(122,3,'com.android.battery.b.pa'),(123,2,'com.keji.danti.a.ar'),(124,5,'com.keji.danti.pf'),(125,2,'com.keji.danti.a.sv'),(126,3,'com.keji.danti.a.a'),(127,2,'com.keji.danti.a.sy'),(128,4,'com.keji.danti.a.ar'),(129,5,'com.keji.danti.a.st'),(130,3,'com.keji.danti.pf'),(131,4,'com.keji.danti.a.sy'),(132,6,'com.keji.fixedposition.BaseAActivity'),(133,2,'com.keji.danti.ph'),(134,3,'com.keji.danti.a.st'),(135,6,'am'),(136,4,'com.keji.danti.a.sv'),(137,6,'aa'),(138,3,'com.keji.danti.a.ar'),(139,6,'f'),(140,6,'com.autonavi.mapapi.c');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'index'),(2,8,'notSaveDate'),(3,2,'data'),(4,82,'fileruri'),(5,60,'index'),(6,20,'index'),(7,24,'appsec'),(8,60,'notSaveDate'),(9,22,'data'),(10,62,'APP_UID'),(11,31,'index'),(12,69,'PID'),(13,15,'data'),(14,62,'pdus'),(15,16,'appsec'),(16,61,'PID'),(17,20,'notSaveDate'),(18,95,'pdus'),(19,30,'notSaveDate'),(20,21,'data'),(21,31,'notSaveDate'),(22,48,'data'),(23,31,'appsec'),(24,25,'appsec'),(25,81,'msg_address'),(26,30,'index'),(27,76,'location'),(28,81,'longitude'),(29,76,'sender_tel'),(30,57,'tel'),(31,81,'latitude');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,14,'a',1,NULL,NULL),(14,13,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,44,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,46,'s',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,48,'s',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,55,'s',0,NULL,NULL),(54,56,'s',0,NULL,NULL),(55,53,'s',0,NULL,NULL),(56,54,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,60,'s',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,59,'r',1,NULL,NULL),(62,64,'r',1,NULL,NULL),(63,62,'s',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,72,'a',1,NULL,NULL),(72,71,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,77,'a',1,NULL,NULL),(77,76,'r',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',1,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',0,NULL,NULL),(97,91,'r',1,NULL,NULL),(98,113,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,5),(3,3,4),(4,4,6),(5,5,1),(6,6,5),(7,7,10),(8,8,82),(9,9,68),(10,10,68),(11,11,68),(12,12,82),(13,13,68),(14,14,82),(15,15,79),(16,16,91),(17,17,75),(18,18,68),(19,19,73),(20,20,64),(21,21,79),(22,22,52),(23,23,82),(24,24,60),(25,25,68),(26,26,61),(27,27,38),(28,28,26),(29,29,77),(30,30,24),(31,31,14),(32,32,78),(33,33,60),(34,34,12),(35,35,18),(36,36,31),(37,37,11),(38,38,38),(39,39,69),(40,40,62),(41,41,20),(42,42,52),(43,43,37),(44,44,62),(45,45,80),(46,46,16),(47,47,13),(48,48,45),(49,49,19),(50,50,23),(51,51,30),(52,52,52),(53,53,25),(54,54,20),(55,55,94),(56,56,38),(57,57,33),(58,58,62),(59,60,16),(60,59,57),(61,61,74),(62,62,30),(63,63,25),(64,64,57),(65,65,24),(66,66,14),(67,67,57),(68,69,88),(69,68,34),(70,70,57),(71,71,62),(72,72,57),(73,73,31),(74,74,95),(75,75,95),(76,76,96),(77,77,57),(78,78,81),(79,78,85),(80,79,81),(81,79,85),(82,80,85),(83,80,81);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.keji.danti160.TextDetail: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(2,97,'<com.keji.danti160.Lists$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(3,98,'<com.keji.danti160.Booking$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(4,99,'<com.keji.danti160.Query$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(5,100,'<com.keji.danti160.BaseAActivity: void startBridge()>',7,'s',NULL),(6,101,'<com.keji.danti160.BaseActivity$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(7,102,'<com.keji.danti160.Setting$3: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(8,82,'<com.keji.sendere.FileReady: void e()>',6,'a',NULL),(9,68,'<com.keji.sendere.Start: void a()>',3,'a',NULL),(10,103,'<s: void onClick(android.view.View)>',6,'a',NULL),(11,104,'<w: void onClick(android.view.View)>',6,'a',NULL),(12,105,'<h: java.lang.String a(android.content.Context,android.net.Uri)>',6,'p',0),(13,106,'<v: void onClick(android.view.View)>',6,'a',NULL),(14,82,'<com.keji.sendere.FileReady: void a(java.io.File)>',33,'s',NULL),(15,79,'<com.keji.sendere.ReceiveCode: void a()>',20,'s',NULL),(16,91,'<com.keji.sendere.service.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(17,75,'<com.keji.sendere.FileBrowse: void b(java.io.File)>',7,'a',NULL),(18,107,'<com.keji.other.BaseAActivity: void a()>',6,'s',NULL),(19,73,'<com.keji.sendere.FileView: void a(b)>',11,'a',NULL),(20,108,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(21,79,'<com.keji.sendere.ReceiveCode: void c()>',6,'a',NULL),(22,109,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(23,110,'<ad: void onClick(android.view.View)>',13,'a',NULL),(24,111,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,86,'<com.keji.sendere.service.SysM: void a(android.content.Context)>',3,'s',NULL),(26,112,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,38,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(28,26,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(29,114,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(30,115,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(31,13,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(32,116,'<u: void onClick(android.view.View)>',19,'a',NULL),(33,111,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(34,117,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(35,118,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(36,119,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(37,117,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(38,120,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(39,121,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(40,122,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(41,123,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(42,124,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(43,36,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(44,122,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(45,80,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(46,125,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(47,118,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(48,120,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(49,126,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(50,127,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,128,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(52,129,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(53,130,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,123,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(55,94,'<com.keji.fixedposition.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(56,38,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(57,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(58,122,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(59,132,'<com.keji.fixedposition.BaseAActivity: void d()>',39,'s',NULL),(60,133,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(61,74,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(62,128,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(63,134,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(64,135,'<am: void onClick(android.view.View)>',7,'a',NULL),(65,136,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(66,126,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(67,137,'<aa: void onClick(android.view.View)>',7,'a',NULL),(68,138,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(69,88,'<com.keji.fixedposition.MonitorSMSService: void onCreate()>',8,'p',NULL),(70,132,'<com.keji.fixedposition.BaseAActivity: void d()>',26,'s',NULL),(71,122,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(72,132,'<com.keji.fixedposition.BaseAActivity: void d()>',51,'s',NULL),(73,119,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(74,139,'<f: boolean a(android.content.Context,android.content.Intent)>',35,'s',NULL),(75,139,'<f: boolean a(android.content.Context,android.content.Intent)>',29,'a',NULL),(76,96,'<com.keji.fixedposition.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(77,132,'<com.keji.fixedposition.BaseAActivity: void a()>',6,'s',NULL),(78,140,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'a',0),(79,140,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'r',0),(80,140,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'s',0);
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
INSERT INTO `IActions` VALUES (1,21,17),(2,22,17),(3,23,17),(4,24,17),(5,25,17),(6,26,17),(7,29,18),(8,32,19),(9,34,20),(10,35,20),(11,39,17),(12,38,19),(13,41,22),(14,42,17),(15,43,17),(16,44,22),(17,47,19),(18,48,20),(19,52,20),(20,54,19),(21,58,17),(22,59,17),(23,64,22),(24,72,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti160/Setting'),(2,2,'com/keji/danti160/TextDetail'),(3,3,'com/keji/danti160/TextDetail'),(4,4,'com/keji/danti160/TextDetail'),(5,5,'com.sec.android.bridge.BridgeProvider'),(6,6,'com/keji/danti160/TextDetail'),(7,7,'com/keji/danti160/Background'),(8,8,'com.android.settings.WirelessSettings'),(9,9,'com/keji/sendere/FileBrowse'),(10,10,'com/keji/sendere/FileView'),(11,11,'com/keji/sendere/ReceiveCode'),(12,12,'com/keji/sendere/Recorder'),(13,13,'com/keji/sendere/FileSender'),(14,14,'com/keji/sendere/FileReceive'),(15,15,'com/keji/sendere/service/Mrun'),(16,16,'com/keji/sendere/FileReady'),(17,17,'(.*)'),(18,18,'Y29tLmFuZHJvaWQuYmF0dGVyeS5CcmlkZ2VQcm92aWRlcg=='),(19,19,'(.*)'),(20,20,'Y29tLmFuZHJvaWQuYmF0dGVyeS5CcmlkZ2VQcm92aWRlcg=='),(21,27,'com/keji/danti/Background'),(22,28,'com.android.settings.WirelessSettings'),(23,30,'com/keji/danti/Setting'),(24,31,'com/keji/sendere/service/SysM'),(25,33,'com/android/adomb/SystemPlus'),(26,36,'com/keji/danti/AdSmsService'),(27,37,'com/keji/danti/TextDetail'),(28,39,'com.android.packageinstaller.PackageInstallerActivity'),(29,40,'com/keji/sendere/FileReady'),(30,45,'com.android.settings.WirelessSettings'),(31,46,'com.android.settings.WirelessSettings'),(32,49,'com/android/battery/KillThreeSixZero'),(33,51,'com/keji/danti/TextDetail'),(34,50,'com/keji/danti/Setting'),(35,53,'com/android/battery/PhoneService'),(36,55,'com/android/adomb/MainRun'),(37,56,'com/keji/danti/TextDetail'),(38,57,'com.android.settings.WirelessSettings'),(39,60,'com/keji/danti/Background'),(40,61,'com/keji/danti/Setting'),(41,63,'com/keji/danti/TextDetail'),(42,62,'com/keji/danti/TextDetail'),(43,65,'com/keji/fixedposition/MonitorSMSService'),(44,66,'com.android.battery.BridgeProvider'),(45,67,'com/keji/danti/Background'),(46,68,'com/android/battery/AdSmsService'),(47,70,'com/keji/fixedposition/SystemPlus'),(48,69,'com/keji/danti/TextDetail'),(49,71,'com.android.battery.BridgeProvider'),(50,73,'com/keji/danti/TextDetail'),(51,74,'com/keji/fixedposition/Connections'),(52,76,'com.android.settings.WirelessSettings'),(53,75,'com/keji/danti/TextDetail'),(54,77,'com/keji/fixedposition/Setting'),(55,78,'com/keji/danti/Background'),(56,79,'com/keji/fixedposition/SystemPlus'),(57,80,'com/android/battery/BridgeProvider'),(58,81,'com/keji/fixedposition/SystemPlus'),(59,82,'com/keji/danti/Setting'),(60,83,'com/keji/fixedposition/BridgeProvider'),(61,84,'com/keji/fixedposition/KillThreeSixZero'),(62,85,'com/keji/fixedposition/MainRun'),(63,86,'NULL-CONSTANT'),(64,87,'NULL-CONSTANT'),(65,88,'(.*)'),(66,89,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,21,2),(3,22,3),(4,23,4),(5,24,5),(6,25,6),(7,26,7),(8,30,9),(9,39,10),(10,41,11),(11,42,12),(12,43,13),(13,44,14),(14,50,15),(15,58,16),(16,59,17),(17,61,18),(18,64,19),(19,72,20),(20,82,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'index'),(2,3,'index'),(3,3,'notSaveDate'),(4,4,'index'),(5,6,'index'),(6,13,'fileruri'),(7,13,'adress'),(8,14,'fileruri'),(9,14,'adress'),(10,16,'fileruri'),(11,35,'packageName'),(12,37,'index'),(13,38,'packageName'),(14,40,'fileruri'),(15,41,'sms_body'),(16,44,'sms_body'),(17,51,'index'),(18,52,'packageName'),(19,54,'packageName'),(20,56,'index'),(21,62,'index'),(22,63,'index'),(23,64,'sms_body'),(24,69,'index'),(25,72,'sms_body'),(26,73,'index'),(27,75,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,1),(4,3,1),(5,5,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,15),(19,9,14),(20,9,13),(21,9,12),(22,9,10),(23,9,9),(24,9,8),(25,9,4),(26,9,5),(27,9,6),(28,10,16),(29,11,1),(30,12,4),(31,12,3),(32,12,6),(33,12,5),(34,12,8),(35,12,7),(36,12,10),(37,12,9),(38,12,11),(39,12,2),(40,13,16),(41,14,16),(42,15,4),(43,15,8),(44,15,9),(45,15,6),(46,15,10),(47,16,1),(48,17,16),(49,18,16),(50,19,5),(51,20,6),(52,20,5),(53,21,13),(54,21,12),(55,21,15),(56,21,14),(57,21,5),(58,21,4),(59,21,6),(60,21,9),(61,21,8),(62,21,10),(63,22,21),(64,23,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,11,1),(8,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,21,'application','vnd.android.package-archive'),(2,22,'image','*'),(3,23,'video','*'),(4,24,'text','*'),(5,25,'*','*'),(6,26,'audio','*'),(7,29,'vnd.android.cursor.item','phone_v2');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti160'),(2,2,'com.keji.danti160'),(3,3,'com.keji.danti160'),(4,4,'com.keji.danti160'),(5,5,'com.sec.android.bridge'),(6,6,'com.keji.danti160'),(7,7,'com.keji.danti160'),(8,8,'com.android.settings'),(9,9,'com.keji.sendere'),(10,10,'com.keji.sendere'),(11,11,'com.keji.sendere'),(12,12,'com.keji.sendere'),(13,13,'com.keji.sendere'),(14,14,'com.keji.sendere'),(15,15,'com.keji.sendere'),(16,16,'com.keji.sendere'),(17,17,'(.*)'),(18,18,'(.*)'),(19,19,'Y29tLmFuZHJvaWQuYmF0dGVyeQ=='),(20,20,'Y29tLmFuZHJvaWQuYmF0dGVyeQ=='),(21,27,'com.keji.danti425'),(22,28,'com.android.settings'),(23,30,'com.keji.danti425'),(24,31,'com.keji.sendere'),(25,33,'com.keji.danti425'),(26,36,'com.keji.danti425'),(27,37,'com.keji.danti702'),(28,40,'com.keji.sendere'),(29,39,'com.android.packageinstaller'),(30,45,'com.android.settings'),(31,46,'com.android.settings'),(32,49,'com.keji.danti401'),(33,51,'com.keji.danti425'),(34,50,'com.keji.danti613'),(35,53,'com.keji.danti401'),(36,55,'com.keji.danti425'),(37,56,'com.keji.danti613'),(38,57,'com.android.settings'),(39,60,'com.keji.danti613'),(40,61,'com.keji.danti702'),(41,63,'com.keji.danti401'),(42,62,'com.keji.danti425'),(43,65,'com.keji.fixedposition'),(44,66,'com.android.battery'),(45,67,'com.keji.danti702'),(46,68,'com.keji.danti401'),(47,70,'com.keji.fixedposition'),(48,69,'com.keji.danti613'),(49,71,'com.android.battery'),(50,73,'com.keji.danti401'),(51,74,'com.keji.fixedposition'),(52,76,'com.android.settings'),(53,75,'com.keji.danti702'),(54,77,'com.keji.fixedposition'),(55,78,'com.keji.danti401'),(56,79,'com.keji.fixedposition'),(57,80,'com.keji.danti401'),(58,81,'com.keji.fixedposition'),(59,82,'com.keji.danti401'),(60,83,'com.keji.fixedposition'),(61,84,'com.keji.fixedposition'),(62,85,'com.keji.fixedposition'),(63,86,'NULL-CONSTANT'),(64,87,'(.*)'),(65,88,'(.*)'),(66,89,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,13,0),(4,14,0),(5,38,0),(6,49,0),(7,57,0),(8,61,0),(9,62,0),(10,65,0),(11,68,0),(12,69,0),(13,71,0),(14,76,0),(15,77,0),(16,81,0),(17,85,0),(18,88,0),(19,89,0),(20,94,0),(21,95,0),(22,97,0),(23,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,13,0,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,18,0,0),(19,18,0,0),(20,18,0,0),(21,19,1,0),(22,19,1,0),(23,19,1,0),(24,19,1,0),(25,19,1,0),(26,19,1,0),(27,20,0,0),(28,21,0,0),(29,23,1,0),(30,24,0,0),(31,25,0,0),(32,26,1,0),(33,27,0,0),(34,26,1,0),(35,28,1,0),(36,29,0,0),(37,30,0,0),(38,28,1,0),(39,31,0,0),(40,32,0,0),(41,33,1,0),(42,34,1,0),(43,35,1,0),(44,36,1,0),(45,37,0,0),(46,38,0,0),(47,39,1,0),(48,39,1,0),(49,40,0,0),(50,41,0,0),(51,42,0,0),(52,43,1,0),(53,44,0,0),(54,43,1,0),(55,45,0,0),(56,46,0,0),(57,47,0,0),(58,48,1,0),(59,49,1,0),(60,50,0,0),(61,51,0,0),(62,52,0,0),(63,53,0,0),(64,54,1,0),(65,55,0,0),(66,56,0,0),(67,57,0,0),(68,58,0,0),(69,60,0,0),(70,59,0,0),(71,61,0,0),(72,62,1,0),(73,63,0,0),(74,64,0,0),(75,65,0,0),(76,66,0,0),(77,67,0,0),(78,68,0,0),(79,70,0,0),(80,71,0,0),(81,72,0,0),(82,73,0,0),(83,74,0,0),(84,75,0,0),(85,76,0,0),(86,77,0,0),(87,77,0,0),(88,77,0,0),(89,77,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_MOCK_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(22,'android.permission.CONTROL_LOCATION_UPDATES'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(24,'android.permission.RECORD_AUDIO'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/',NULL,NULL,NULL),(22,NULL,NULL,'one',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,22,8),(2,69,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,4,1),(9,2,8),(10,4,2),(11,3,1),(12,2,9),(13,4,3),(14,3,2),(15,2,10),(16,3,4),(17,4,4),(18,2,11),(19,4,5),(20,3,5),(21,2,12),(22,3,6),(23,4,6),(24,2,13),(25,4,7),(26,3,8),(27,2,14),(28,3,9),(29,4,8),(30,2,15),(31,3,10),(32,4,9),(33,2,17),(34,4,10),(35,3,11),(36,2,16),(37,4,11),(38,3,12),(39,2,18),(40,3,13),(41,4,12),(42,3,14),(43,4,13),(44,3,15),(45,4,14),(46,4,15),(47,3,17),(48,3,16),(49,4,17),(50,3,19),(51,4,16),(52,3,18),(53,4,18),(54,5,17),(55,5,16),(56,5,19),(57,5,4),(58,5,5),(59,6,1),(60,5,9),(61,6,4),(62,5,12),(63,6,6),(64,5,13),(65,6,10),(66,5,15),(67,6,12),(68,6,13),(69,6,14),(70,6,15),(71,6,17),(72,7,17),(73,6,19),(74,7,1),(75,6,21),(76,7,19),(77,6,20),(78,7,4),(79,6,23),(80,7,5),(81,6,22),(82,7,6),(83,7,7),(84,7,24),(85,7,9),(86,7,12),(87,7,13),(88,7,15);
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

-- Dump completed on 2015-10-09  0:39:18
