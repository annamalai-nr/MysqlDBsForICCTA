-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_35
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(17,'NULL-CONSTANT'),(2,'android.intent.action.ACTION_POWER_CONNECTED'),(11,'android.intent.action.BATTERY_LOW'),(7,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(5,'android.intent.action.USER_PRESENT'),(18,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(9,'android.provider.Telephony.SIM_FULL'),(8,'android.provider.Telephony.SMS_RECEIVED'),(10,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti567',32),(2,'com.keji.danti394',27),(3,'com.keji.danti414',25),(4,'com.keji.danti430',25),(5,'com.keji.danti429',25),(6,'com.keji.danti409',27),(7,'com.netmite.andme.launcher.asphalt4eliteracing',2000);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,1,'com.keji.danti.MainA'),(4,3,'com.keji.danti.Boutique'),(5,4,'com.keji.danti.MainA'),(6,3,'com.keji.danti.Background'),(7,2,'com.keji.danti.Boutique'),(8,3,'com.keji.danti.Lists'),(9,1,'com.keji.danti.Boutique'),(10,4,'com.keji.danti.Boutique'),(11,2,'com.keji.danti.Background'),(12,3,'com.keji.danti.History'),(13,1,'com.keji.danti.Background'),(14,4,'com.keji.danti.Background'),(15,2,'com.keji.danti.Lists'),(16,3,'com.keji.danti.TextDetail'),(17,1,'com.keji.danti.Lists'),(18,4,'com.keji.danti.Lists'),(19,2,'com.keji.danti.History'),(20,3,'com.keji.danti.Setting'),(21,1,'com.keji.danti.History'),(22,4,'com.keji.danti.History'),(23,5,'com.keji.danti.MainA'),(24,2,'com.keji.danti.TextDetail'),(25,3,'com.keji.danti.AdSmsService'),(26,1,'com.keji.danti.TextDetail'),(27,4,'com.keji.danti.TextDetail'),(28,2,'com.keji.danti.Setting'),(29,3,'com.android.adomb.AdSmsService'),(30,1,'com.keji.danti.Setting'),(31,4,'com.keji.danti.Setting'),(32,2,'com.android.battery.BalckActivity2'),(33,3,'com.android.adomb.SystemPlus'),(34,5,'com.keji.danti.Boutique'),(35,1,'com.android.view.custom.BaseAActivity'),(36,4,'com.keji.danti.AdSmsService'),(37,2,'com.android.battery.BalckActivity'),(38,3,'com.android.adomb.MainRun'),(39,1,'com.android.view.custom.FirstAActivity'),(40,5,'com.keji.danti.Background'),(41,4,'com.android.adomb.AdSmsService'),(42,3,'com.keji.danti.BaseBroadcastReceiver'),(43,2,'com.android.battery.KillThreeSixZero'),(44,1,'com.android.view.custom.SecondAActivity'),(45,5,'com.keji.danti.Lists'),(46,4,'com.android.adomb.SystemPlus'),(47,2,'com.android.battery.BridgeProvider'),(48,1,'com.android.view.custom.ThirdAActivity'),(49,5,'com.keji.danti.History'),(50,4,'com.android.adomb.MainRun'),(51,5,'com.keji.danti.TextDetail'),(52,1,'com.android.view.custom.FourthAActivity'),(53,6,'com.keji.danti.MainA'),(54,3,'com.android.adomb.ForAlarm'),(55,4,'com.keji.danti.BaseBroadcastReceiver'),(56,2,'com.android.battery.AdSmsService'),(57,5,'com.keji.danti.Setting'),(58,1,'com.android.view.custom.FirstAService'),(59,2,'com.android.battery.PhoneService'),(60,5,'com.keji.danti.AdSmsService'),(61,1,'com.android.view.custom.SecondAService'),(62,6,'com.keji.danti.Boutique'),(63,4,'com.android.adomb.ForAlarm'),(64,2,'com.android.battery.BaseBroadcastReceiver'),(65,5,'com.android.adomb.AdSmsService'),(66,1,'com.android.view.custom.ThirdAService'),(67,6,'com.keji.danti.Background'),(68,1,'com.android.view.custom.FourthAService'),(69,5,'com.android.adomb.SystemPlus'),(70,6,'com.keji.danti.Lists'),(71,1,'com.android.view.custom.BaseABroadcastReceiver'),(72,5,'com.android.adomb.MainRun'),(73,6,'com.keji.danti.History'),(74,5,'com.keji.danti.BaseBroadcastReceiver'),(75,6,'com.keji.danti.TextDetail'),(76,6,'com.keji.danti.Setting'),(77,5,'com.android.adomb.ForAlarm'),(78,6,'com.android.battery.BalckActivity2'),(79,6,'com.android.battery.BalckActivity'),(80,6,'com.android.battery.KillThreeSixZero'),(81,7,'com.netmite.andme.launcher.asphalt4eliteracing.GloftASP4'),(82,6,'com.android.battery.BridgeProvider'),(83,6,'com.android.battery.AdSmsService'),(84,7,'com.android.view.custom.BaseAActivity'),(85,6,'com.android.battery.PhoneService'),(86,7,'com.android.view.custom.FirstAActivity'),(87,6,'com.android.battery.BaseBroadcastReceiver'),(88,7,'com.android.view.custom.SecondAActivity'),(89,7,'com.android.view.custom.ThirdAActivity'),(90,7,'com.android.view.custom.FourthAActivity'),(91,7,'com.android.view.custom.FirstAService'),(92,7,'com.android.view.custom.SecondAService'),(93,7,'com.android.view.custom.ThirdAService'),(94,7,'com.android.view.custom.FourthAService'),(95,7,'com.android.view.custom.BaseABroadcastReceiver'),(96,3,'com.keji.danti.a.ar'),(97,3,'com.keji.danti.pf'),(98,3,'com.madhouse.android.ads._'),(99,3,'com.keji.danti.c.pa'),(100,4,'com.madhouse.android.ads._'),(101,5,'com.keji.danti.a.st'),(102,3,'com.keji.danti.a.st'),(103,3,'com.keji.danti.a.a'),(104,7,'com.netmite.andme.launcher.Launcher'),(105,4,'com.keji.danti.a.ar'),(106,3,'com.keji.danti.a.ao'),(107,4,'com.keji.danti.a.a'),(108,5,'com.keji.danti.a.a'),(109,1,'com.keji.danti.a.ao'),(110,4,'com.keji.danti.pf'),(111,1,'com.keji.danti.a.ar'),(112,5,'com.keji.danti.pf'),(113,2,'com.keji.danti.a.a'),(114,4,'com.keji.danti.a.ao'),(115,5,'com.keji.danti.a.ar'),(116,1,'com.sec.android.providers.drm.Onion'),(117,2,'com.keji.danti.a.ao'),(118,5,'com.keji.danti.a.ao'),(119,4,'com.keji.danti.a.st'),(120,6,'com.keji.danti.a.ao'),(121,2,'com.keji.danti.a.ar'),(122,5,'com.keji.danti.c.pa'),(123,7,'com.sec.android.providers.drm.Onion'),(124,1,'com.keji.danti.ph'),(125,4,'com.keji.danti.c.pa'),(126,6,'com.keji.danti.a.a'),(127,1,'com.keji.danti.a.sv'),(128,2,'com.android.battery.b.pa'),(129,6,'com.android.battery.b.pa'),(130,1,'com.keji.danti.a.sy'),(131,2,'com.keji.danti.a.st'),(132,6,'com.keji.danti.a.st'),(133,5,'com.madhouse.android.ads._'),(134,6,'com.keji.danti.a.ar'),(135,2,'com.keji.danti.pf'),(136,6,'com.keji.danti.pf');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'data'),(2,27,'notSaveDate'),(3,40,'data'),(4,16,'index'),(5,26,'index'),(6,14,'data'),(7,13,'data'),(8,16,'notSaveDate'),(9,71,'PID'),(10,17,'appsec'),(11,67,'data'),(12,11,'data'),(13,75,'notSaveDate'),(14,87,'APP_UID'),(15,52,'index'),(16,64,'APP_UID'),(17,95,'PID'),(18,27,'index'),(19,52,'notSaveDate'),(20,26,'notSaveDate'),(21,64,'pdus'),(22,87,'pdus'),(23,24,'index'),(24,75,'index'),(25,24,'notSaveDate'),(26,24,'appsec'),(27,15,'appsec'),(28,75,'appsec'),(29,70,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,8,'a',0,NULL,NULL),(8,7,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,42,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,58,'s',0,NULL,NULL),(58,57,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,63,'r',0,NULL,NULL),(63,62,'a',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,65,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'s',1,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,20),(2,2,7),(3,3,7),(4,4,50),(5,5,43),(6,6,18),(7,7,1),(8,8,62),(9,9,81),(10,9,84),(11,10,45),(12,11,7),(13,12,5),(14,13,23),(15,14,1),(16,15,84),(17,15,81),(18,16,31),(19,17,72),(20,18,16),(21,19,5),(22,20,34),(23,21,10),(24,22,4),(25,23,3),(26,24,77),(27,25,54),(28,26,18),(29,27,26),(30,28,45),(31,30,37),(32,29,2),(33,31,27),(34,32,58),(35,33,71),(36,34,1),(37,35,24),(38,36,52),(39,37,18),(40,39,9),(41,38,16),(42,40,75),(43,41,28),(44,42,5),(45,43,74),(46,44,95),(47,45,17),(48,46,24),(49,47,55),(50,48,63),(51,49,23),(52,50,84),(53,50,81),(54,51,17),(55,52,27),(56,53,52),(57,54,64),(58,55,87),(59,56,30),(60,57,15),(61,58,70),(62,59,23),(63,60,26),(64,61,64),(65,62,87),(66,63,45),(67,65,35),(68,64,2),(69,66,76),(70,67,53),(71,68,64),(72,69,87),(73,70,64),(74,71,75),(75,72,8),(76,73,87),(77,74,15),(78,75,53),(79,76,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,96,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(2,97,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(3,98,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(4,50,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(5,99,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,100,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(7,1,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(8,63,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(9,84,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(10,101,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(11,102,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(12,5,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(13,23,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(14,103,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(15,104,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(16,105,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(17,72,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(18,106,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(19,107,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(20,108,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(21,107,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(22,103,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(23,109,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,77,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,54,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(26,110,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(27,111,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(28,112,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(29,113,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(30,38,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(31,114,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(32,115,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(33,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(34,1,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(35,117,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(36,118,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(37,119,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(38,106,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(39,109,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(40,120,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(41,121,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(42,5,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(43,122,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(44,123,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(45,124,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(46,117,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(47,125,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(48,126,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(49,108,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(50,104,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(51,127,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(52,114,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(53,118,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(54,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(55,129,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(56,130,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(57,131,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(58,132,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(59,23,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(60,111,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(61,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(62,129,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(63,133,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(64,2,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(65,35,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(66,134,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(67,53,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(68,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(69,129,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(70,128,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(71,120,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(72,113,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(73,129,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(74,135,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(75,126,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(76,136,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,16),(2,11,17),(3,14,18),(4,17,1),(5,18,19),(6,20,18),(7,21,18),(8,22,18),(9,24,1),(10,28,19),(11,30,1),(12,35,16),(13,37,19),(14,38,17),(15,39,1),(16,40,19),(17,43,18),(18,44,19),(19,48,16),(20,51,17),(21,53,18),(22,55,18),(23,57,19),(24,69,18),(25,68,17),(26,71,16),(27,72,18),(28,77,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,17,1),(2,24,1),(3,30,1),(4,39,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/Background'),(2,2,'com/keji/danti/TextDetail'),(3,3,'com.android.battery.BridgeProvider'),(4,4,'com/keji/danti/AdSmsService'),(5,5,'com.android.battery.BridgeProvider'),(6,6,'com/android/adomb/MainRun'),(7,7,'com/keji/danti/TextDetail'),(8,9,'com/keji/danti/TextDetail'),(9,10,'com.android.battery.BridgeProvider'),(10,12,'com/android/adomb/SystemPlus'),(11,13,'com.android.settings.WirelessSettings'),(12,15,'com/keji/danti/Background'),(13,16,'com.android.battery.BridgeProvider'),(14,19,'com.android.settings.WirelessSettings'),(15,17,'com.netmite.andme.MIDletRunner'),(16,23,'com.android.settings.WirelessSettings'),(17,25,'com/android/adomb/MainRun'),(18,26,'com/android/adomb/MainRun'),(19,24,'com.netmite.andme.MIDletRunner'),(20,27,'com/keji/danti/TextDetail'),(21,29,'com/keji/danti/TextDetail'),(22,31,'com.android.battery.BridgeProvider'),(23,32,'com.android.settings.WirelessSettings'),(24,33,'com/keji/danti/Setting'),(25,30,'com.netmite.andme.MIDletRunner'),(26,34,'com/keji/danti/Background'),(27,36,'com/android/adomb/SystemPlus'),(28,41,'com/keji/danti/TextDetail'),(29,39,'com.netmite.andme.MIDletRunner'),(30,42,'com/keji/danti/Setting'),(31,45,'com/keji/danti/Background'),(32,46,'com/android/adomb/SystemPlus'),(33,47,'com/keji/danti/AdSmsService'),(34,49,'com/keji/danti/TextDetail'),(35,50,'com/keji/danti/Setting'),(36,52,'com/keji/danti/AdSmsService'),(37,54,'com.android.settings.WirelessSettings'),(38,56,'com/keji/danti/TextDetail'),(39,59,'com/android/battery/AdSmsService'),(40,60,'com/android/battery/AdSmsService'),(41,58,'com/keji/danti/Setting'),(42,61,'com/keji/danti/Background'),(43,62,'com/keji/danti/TextDetail'),(44,63,'com/keji/danti/TextDetail'),(45,64,'com.android.battery.BridgeProvider'),(46,66,'com/android/battery/KillThreeSixZero'),(47,67,'com/android/battery/KillThreeSixZero'),(48,65,'com/keji/danti/Setting'),(49,70,'com/keji/danti/Background'),(50,69,'com.android.packageinstaller.PackageInstallerActivity'),(51,73,'com/android/battery/BridgeProvider'),(52,72,'com.android.packageinstaller.PackageInstallerActivity'),(53,74,'com/android/battery/BridgeProvider'),(54,75,'com/android/battery/PhoneService'),(55,76,'com/keji/danti/Setting'),(56,78,'com/android/battery/PhoneService'),(57,80,'com.android.settings.WirelessSettings'),(58,79,'com/keji/danti/TextDetail'),(59,81,'com/keji/danti/TextDetail');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,3),(2,18,4),(3,20,5),(4,21,6),(5,22,7),(6,28,8),(7,33,9),(8,37,10),(9,42,11),(10,40,12),(11,43,13),(12,44,14),(13,50,15),(14,53,16),(15,55,17),(16,58,18),(17,57,19),(18,65,20),(19,69,22),(20,72,23),(21,76,24),(22,77,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'index'),(2,7,'index'),(3,9,'index'),(4,18,'sms_body'),(5,17,'midletapkpath'),(6,17,'midletclass'),(7,17,'(.*)'),(8,17,'midleturl'),(9,24,'midletapkpath'),(10,24,'midleturl'),(11,27,'index'),(12,28,'sms_body'),(13,29,'index'),(14,30,'midletapkpath'),(15,30,'midletclass'),(16,30,'midleturl'),(17,37,'sms_body'),(18,39,'midletapkpath'),(19,40,'sms_body'),(20,39,'(.*)'),(21,41,'index'),(22,39,'midleturl'),(23,44,'sms_body'),(24,49,'index'),(25,56,'index'),(26,57,'sms_body'),(27,62,'index'),(28,63,'index'),(29,68,'packageName'),(30,71,'packageName'),(31,79,'index'),(32,81,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,2),(11,7,1),(12,8,1),(13,9,4),(14,9,5),(15,9,6),(16,9,2),(17,9,3),(18,10,11),(19,10,7),(20,10,8),(21,10,9),(22,10,5),(23,10,10),(24,10,6),(25,10,3),(26,10,4),(27,10,2),(28,11,5),(29,11,4),(30,11,3),(31,11,2),(32,11,8),(33,11,6),(34,11,12),(35,11,13),(36,11,14),(37,11,15),(38,12,4),(39,12,3),(40,12,6),(41,12,5),(42,12,2),(43,13,1),(44,14,1),(45,15,4),(46,15,5),(47,15,2),(48,15,3),(49,15,8),(50,15,9),(51,15,6),(52,15,7),(53,15,10),(54,15,11),(55,16,2),(56,16,3),(57,16,4),(58,16,5),(59,16,15),(60,16,6),(61,16,8),(62,16,12),(63,16,13),(64,16,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,8,1),(7,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,17,'application','vnd.android.package-archive'),(2,24,'application','vnd.android.package-archive'),(3,30,'application','vnd.android.package-archive'),(4,39,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti414'),(2,2,'com.keji.danti414'),(3,3,'com.android.battery'),(4,4,'com.keji.danti414'),(5,5,'com.android.battery'),(6,6,'com.keji.danti430'),(7,7,'com.keji.danti429'),(8,9,'com.keji.danti414'),(9,10,'com.android.battery'),(10,12,'com.keji.danti429'),(11,13,'com.android.settings'),(12,15,'com.keji.danti430'),(13,16,'com.android.battery'),(14,19,'com.android.settings'),(15,17,'com.netmite.andme'),(16,23,'com.android.settings'),(17,25,'com.keji.danti429'),(18,26,'com.keji.danti414'),(19,24,'com.netmite.andme'),(20,27,'com.keji.danti430'),(21,29,'com.keji.danti429'),(22,31,'com.android.battery'),(23,32,'com.android.settings'),(24,34,'com.keji.danti429'),(25,30,'com.netmite.andme'),(26,33,'com.keji.danti430'),(27,36,'com.keji.danti414'),(28,41,'com.keji.danti430'),(29,39,'com.netmite.andme'),(30,42,'com.keji.danti414'),(31,45,'com.keji.danti394'),(32,46,'com.keji.danti430'),(33,47,'com.keji.danti429'),(34,49,'com.keji.danti567'),(35,50,'com.keji.danti394'),(36,52,'com.keji.danti430'),(37,54,'com.android.settings'),(38,56,'com.keji.danti567'),(39,59,'com.keji.danti394'),(40,60,'com.keji.danti409'),(41,58,'com.keji.danti429'),(42,61,'com.keji.danti567'),(43,62,'com.keji.danti394'),(44,63,'com.keji.danti409'),(45,64,'com.android.battery'),(46,66,'com.keji.danti394'),(47,67,'com.keji.danti409'),(48,65,'com.keji.danti567'),(49,70,'com.keji.danti409'),(50,69,'com.android.packageinstaller'),(51,73,'com.keji.danti394'),(52,72,'com.android.packageinstaller'),(53,74,'com.keji.danti409'),(54,75,'com.keji.danti394'),(55,76,'com.keji.danti409'),(56,78,'com.keji.danti409'),(57,80,'com.android.settings'),(58,79,'com.keji.danti394'),(59,81,'com.keji.danti409');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,23,0),(6,43,0),(7,47,0),(8,53,0),(9,55,0),(10,64,0),(11,71,0),(12,74,0),(13,81,0),(14,82,0),(15,87,0),(16,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,5,0,0),(5,7,0,0),(6,8,0,0),(7,10,0,0),(8,9,1,0),(9,11,0,0),(10,12,0,0),(11,9,1,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,16,0,0),(16,17,0,0),(17,15,0,0),(18,18,1,0),(19,19,0,0),(20,20,1,0),(21,21,1,0),(22,22,1,0),(23,23,0,0),(24,15,0,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,27,1,0),(29,28,0,0),(30,15,0,0),(31,30,0,0),(32,29,0,0),(33,31,0,0),(34,32,0,0),(35,33,1,0),(36,34,0,0),(37,35,1,0),(38,33,1,0),(39,15,0,0),(40,36,1,0),(41,37,0,0),(42,38,0,0),(43,39,1,0),(44,40,1,0),(45,41,0,0),(46,42,0,0),(47,43,0,0),(48,44,1,0),(49,45,0,0),(50,46,0,0),(51,44,1,0),(52,47,0,0),(53,48,1,0),(54,49,0,0),(55,50,1,0),(56,51,0,0),(57,52,1,0),(58,53,0,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,0,0),(63,58,0,0),(64,59,0,0),(65,60,0,0),(66,61,0,0),(67,62,0,0),(68,65,1,0),(69,64,0,0),(70,66,0,0),(71,65,1,0),(72,67,0,0),(73,68,0,0),(74,69,0,0),(75,70,0,0),(76,71,0,0),(77,72,1,0),(78,73,0,0),(79,74,0,0),(80,75,0,0),(81,76,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,68,81,2,NULL),(2,68,3,2,NULL),(3,71,81,2,NULL),(4,71,3,2,NULL),(5,8,81,2,NULL),(6,8,3,2,NULL),(7,11,81,2,NULL),(8,11,3,2,NULL),(9,8,71,2,NULL),(10,68,71,2,NULL),(11,11,71,2,NULL),(12,71,71,2,NULL),(13,8,2,2,NULL),(14,68,2,2,NULL),(15,11,2,2,NULL),(16,71,2,2,NULL),(17,8,47,2,NULL),(18,68,47,2,NULL),(19,11,47,2,NULL),(20,71,47,2,NULL),(21,8,64,2,NULL),(22,68,64,2,NULL),(23,11,64,2,NULL),(24,71,64,2,NULL),(25,8,1,2,NULL),(26,68,1,2,NULL),(27,11,1,2,NULL),(28,71,1,2,NULL),(29,8,43,2,NULL),(30,68,43,2,NULL),(31,11,43,2,NULL),(32,71,43,2,NULL),(33,8,5,2,NULL),(34,68,5,2,NULL),(35,11,5,2,NULL),(36,71,5,2,NULL),(37,8,55,2,NULL),(38,68,55,2,NULL),(39,11,55,2,NULL),(40,71,55,2,NULL),(41,8,23,2,NULL),(42,68,23,2,NULL),(43,11,23,2,NULL),(44,71,23,2,NULL),(45,8,74,2,NULL),(46,68,74,2,NULL),(47,11,74,2,NULL),(48,71,74,2,NULL),(49,8,53,2,NULL),(50,68,53,2,NULL),(51,11,53,2,NULL),(52,71,53,2,NULL),(53,8,82,2,NULL),(54,68,82,2,NULL),(55,11,82,2,NULL),(56,71,82,2,NULL),(57,8,87,2,NULL),(58,68,87,2,NULL),(59,11,87,2,NULL),(60,71,87,2,NULL),(61,8,95,2,NULL),(62,68,95,2,NULL),(63,11,95,2,NULL),(64,71,95,2,NULL),(65,5,47,2,NULL),(66,5,82,2,NULL),(67,36,32,2,NULL),(68,36,46,2,NULL),(69,36,69,2,NULL),(70,31,47,2,NULL),(71,31,82,2,NULL),(72,26,37,2,NULL),(73,26,50,2,NULL),(74,26,72,2,NULL),(75,10,47,2,NULL),(76,12,32,2,NULL),(77,10,82,2,NULL),(78,12,46,2,NULL),(79,46,32,2,NULL),(80,12,69,2,NULL),(81,46,46,2,NULL),(82,64,47,2,NULL),(83,46,69,2,NULL),(84,64,82,2,NULL),(85,3,47,2,NULL),(86,16,47,2,NULL),(87,3,82,2,NULL),(88,16,82,2,NULL),(89,6,37,2,NULL),(90,25,37,2,NULL),(91,6,50,2,NULL),(92,25,50,2,NULL),(93,6,72,2,NULL),(94,25,72,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'smsto:',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'one',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,6,2),(3,63,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,4),(7,3,17),(8,1,4),(9,2,5),(10,3,16),(11,1,5),(12,2,6),(13,3,19),(14,1,6),(15,3,4),(16,2,8),(17,1,7),(18,2,9),(19,3,5),(20,1,8),(21,2,10),(22,3,9),(23,1,9),(24,2,11),(25,3,12),(26,1,10),(27,3,13),(28,2,12),(29,1,11),(30,4,17),(31,3,15),(32,2,13),(33,4,16),(34,1,12),(35,2,14),(36,4,19),(37,1,13),(38,2,15),(39,1,14),(40,4,4),(41,2,17),(42,1,15),(43,4,5),(44,2,16),(45,1,17),(46,4,9),(47,2,19),(48,1,16),(49,4,12),(50,2,18),(51,1,18),(52,4,13),(53,4,15),(54,5,17),(55,5,16),(56,5,19),(57,5,4),(58,5,5),(59,5,9),(60,6,1),(61,5,12),(62,6,2),(63,5,13),(64,6,4),(65,5,15),(66,6,5),(67,6,6),(68,6,8),(69,6,9),(70,6,10),(71,6,11),(72,6,12),(73,6,13),(74,6,14),(75,6,15),(76,6,17),(77,6,16),(78,6,19),(79,6,18),(80,7,1),(81,7,2),(82,7,3),(83,7,4),(84,7,6),(85,7,7),(86,7,8),(87,7,9),(88,7,10),(89,7,11),(90,7,12),(91,7,13),(92,7,14),(93,7,15),(94,7,17),(95,7,16),(96,7,18);
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

-- Dump completed on 2015-10-12  3:30:10
