-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_57
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(18,'NULL-CONSTANT'),(13,'SMS_SENT'),(5,'android.intent.action.ACTION_POWER_CONNECTED'),(7,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PHONE_STATE'),(16,'android.intent.action.SENDTO'),(12,'android.intent.action.UMS_CONNECTED'),(4,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.conn.MEDIA_NOFS'),(8,'android.net.wifi.PICK_WIFI_WORK'),(6,'android.provider.Telephony.SMS_RECEIVED'),(14,'com.lz.myservicestart');
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
INSERT INTO `Applications` VALUES (1,'com.depositmobi',1),(2,'com.keji.danti635',32),(3,'com.keji.danti711',32),(4,'com.keji.danti623',32),(5,'com.znzn.apps.camerashow',7),(6,'com.keji.danti615',32),(7,'com.keji.danti415',25);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.depositmobi.Main'),(2,1,'com.depositmobi.ReadOffertActivity'),(3,1,'com.depositmobi.ActivationDoneActivity'),(4,2,'com.keji.danti.MainA'),(5,2,'com.keji.danti.Boutique'),(6,2,'com.keji.danti.Background'),(7,2,'com.keji.danti.Lists'),(8,2,'com.keji.danti.History'),(9,2,'com.keji.danti.TextDetail'),(10,2,'com.keji.danti.Setting'),(11,5,'com.znzn.apps.camerashow.activity.ACamera'),(12,2,'com.android.view.custom.BaseAActivity'),(13,2,'com.android.view.custom.FirstAActivity'),(14,2,'com.android.view.custom.SecondAActivity'),(15,5,'com.znzn.apps.camerashow.activity.AFileBrowser'),(16,3,'com.keji.danti.MainA'),(17,2,'com.android.view.custom.ThirdAActivity'),(18,4,'com.keji.danti.MainA'),(19,2,'com.android.view.custom.FourthAActivity'),(20,5,'com.znzn.apps.camerashow.activity.ASwitcher'),(21,3,'com.keji.danti.Boutique'),(22,2,'com.android.view.custom.FirstAService'),(23,3,'com.keji.danti.Background'),(24,7,'com.keji.danti.MainA'),(25,4,'com.keji.danti.Boutique'),(26,2,'com.android.view.custom.SecondAService'),(27,3,'com.keji.danti.Lists'),(28,5,'com.znzn.apps.camerashow.activity.AMake'),(29,2,'com.android.view.custom.ThirdAService'),(30,4,'com.keji.danti.Background'),(31,3,'com.keji.danti.History'),(32,2,'com.android.view.custom.FourthAService'),(33,4,'com.keji.danti.Lists'),(34,7,'com.keji.danti.Boutique'),(35,3,'com.keji.danti.TextDetail'),(36,5,'com.znzn.apps.camerashow.activity.AEdit'),(37,2,'com.android.view.custom.BaseABroadcastReceiver'),(38,4,'com.keji.danti.History'),(39,7,'com.keji.danti.Background'),(40,3,'com.keji.danti.Setting'),(41,4,'com.keji.danti.TextDetail'),(42,6,'com.keji.danti.MainA'),(43,7,'com.keji.danti.Lists'),(44,3,'com.android.view.custom.BaseAActivity'),(45,5,'com.znzn.apps.camerashow.activity.APicEdit'),(46,4,'com.keji.danti.Setting'),(47,1,'com.depositmobi.Main$1'),(48,7,'com.keji.danti.History'),(49,3,'com.android.view.custom.FirstAActivity'),(50,4,'com.android.view.custom.BaseAActivity'),(51,7,'com.keji.danti.TextDetail'),(52,6,'com.keji.danti.Boutique'),(53,3,'com.android.view.custom.SecondAActivity'),(54,5,'com.xxx.yyy.MyService'),(55,4,'com.android.view.custom.FirstAActivity'),(56,7,'com.keji.danti.Setting'),(57,6,'com.keji.danti.Background'),(58,3,'com.android.view.custom.ThirdAActivity'),(59,5,'com.xxx.yyy.MyBoolService'),(60,4,'com.android.view.custom.SecondAActivity'),(61,7,'com.keji.danti.AdSmsService'),(62,6,'com.keji.danti.Lists'),(63,3,'com.android.view.custom.FourthAActivity'),(64,4,'com.android.view.custom.ThirdAActivity'),(65,7,'com.android.adomb.AdSmsService'),(66,6,'com.keji.danti.History'),(67,3,'com.android.view.custom.FirstAService'),(68,5,'com.xxx.yyy.MyAlarmReceiver'),(69,4,'com.android.view.custom.FourthAActivity'),(70,7,'com.android.adomb.SystemPlus'),(71,6,'com.keji.danti.TextDetail'),(72,3,'com.android.view.custom.SecondAService'),(73,4,'com.android.view.custom.FirstAService'),(74,7,'com.android.adomb.MainRun'),(75,6,'com.keji.danti.Setting'),(76,3,'com.android.view.custom.ThirdAService'),(77,4,'com.android.view.custom.SecondAService'),(78,5,'com.xxx.yyy.NetWorkReceiver'),(79,7,'com.keji.danti.BaseBroadcastReceiver'),(80,6,'com.android.view.custom.BaseAActivity'),(81,3,'com.android.view.custom.FourthAService'),(82,4,'com.android.view.custom.ThirdAService'),(83,6,'com.android.view.custom.FirstAActivity'),(84,3,'com.android.view.custom.BaseABroadcastReceiver'),(85,4,'com.android.view.custom.FourthAService'),(86,7,'com.android.adomb.ForAlarm'),(87,5,'com.xxx.yyy.CustomBroadcastReceiver'),(88,6,'com.android.view.custom.SecondAActivity'),(89,4,'com.android.view.custom.BaseABroadcastReceiver'),(90,6,'com.android.view.custom.ThirdAActivity'),(91,6,'com.android.view.custom.FourthAActivity'),(92,6,'com.android.view.custom.FirstAService'),(93,6,'com.android.view.custom.SecondAService'),(94,6,'com.android.view.custom.ThirdAService'),(95,6,'com.android.view.custom.FourthAService'),(96,6,'com.android.view.custom.BaseABroadcastReceiver'),(97,7,'com.keji.danti.c.pa'),(98,7,'com.keji.danti.a.ao'),(99,2,'com.sec.android.providers.drm.Onion'),(100,7,'com.keji.danti.a.ar'),(101,7,'com.keji.danti.a.a'),(102,2,'com.keji.danti.a.sy'),(103,7,'com.keji.danti.pf'),(104,2,'com.keji.danti.a.ar'),(105,3,'com.keji.danti.ph'),(106,4,'com.keji.danti.a.ao'),(107,4,'com.keji.danti.a.ar'),(108,2,'com.keji.danti.ph'),(109,7,'com.madhouse.android.ads._'),(110,6,'com.keji.danti.a.ao'),(111,3,'com.keji.danti.a.ar'),(112,2,'com.keji.danti.a.ao'),(113,6,'com.keji.danti.a.ar'),(114,3,'com.keji.danti.a.sv'),(115,7,'com.keji.danti.a.st'),(116,3,'com.sec.android.providers.drm.Onion'),(117,2,'com.keji.danti.a.sv'),(118,4,'com.sec.android.providers.drm.Onion'),(119,4,'com.keji.danti.a.sv'),(120,6,'com.keji.danti.ph'),(121,3,'com.keji.danti.a.ao'),(122,6,'com.sec.android.providers.drm.Onion'),(123,4,'com.keji.danti.a.sy'),(124,6,'com.keji.danti.a.sy'),(125,4,'com.keji.danti.ph'),(126,3,'com.keji.danti.a.sy'),(127,6,'com.keji.danti.a.sv');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,51,'notSaveDate'),(3,39,'data'),(4,15,'com.znzn.apps.camerashow.activity.FileBrowser.INIT_FOLDER'),(5,6,'data'),(6,37,'PID'),(7,45,'com.znzn.apps.camerashow.activity.APicEdit.PATH'),(8,36,'com.znzn.apps.camerashow.activity.AEdit.COUNT'),(9,7,'appsec'),(10,28,'com.znzn.apps.camerashow.activity.AMake.PATH'),(11,36,'(.*)'),(12,15,'com.znzn.apps.camerashow.activity.FileBrowser.FILTER'),(13,33,'appsec'),(14,41,'index'),(15,35,'notSaveDate'),(16,89,'PID'),(17,9,'notSaveDate'),(18,51,'index'),(19,9,'index'),(20,27,'appsec'),(21,30,'data'),(22,71,'index'),(23,62,'appsec'),(24,71,'notSaveDate'),(25,23,'data'),(26,41,'notSaveDate'),(27,84,'PID'),(28,35,'index'),(29,57,'data'),(30,96,'PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,26,'s',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,46,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,79,'r',1,NULL,NULL),(79,78,'r',1,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,20),(4,4,86),(5,5,20),(6,6,24),(7,7,20),(8,8,78),(9,9,79),(10,10,51),(11,11,68),(12,12,37),(13,13,28),(14,14,56),(15,15,20),(16,17,10),(17,16,24),(18,18,20),(19,20,43),(20,19,9),(21,21,24),(22,22,27),(23,23,9),(24,24,18),(25,25,34),(26,26,44),(27,27,41),(28,28,7),(29,29,43),(30,30,52),(31,31,50),(32,32,35),(33,33,5),(34,34,74),(35,35,71),(36,36,51),(37,37,41),(38,38,27),(39,39,12),(40,40,71),(41,41,43),(42,42,26),(43,43,84),(44,44,4),(45,45,80),(46,46,7),(47,47,89),(48,48,35),(49,49,62),(50,50,33),(51,51,21),(52,52,96),(53,53,47),(54,54,16),(55,55,33),(56,56,75),(57,57,40),(58,58,62),(59,59,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(2,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(3,36,'<com.znzn.apps.camerashow.activity.AEdit: void action(com.znzn.apps.camerashow.activity.BaseActivity)>',3,'a',NULL),(4,86,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(5,28,'<com.znzn.apps.camerashow.activity.AMake: void action(com.znzn.apps.camerashow.activity.BaseActivity)>',3,'a',NULL),(6,24,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(7,15,'<com.znzn.apps.camerashow.activity.AFileBrowser: void actionFileBrowser(com.znzn.apps.camerashow.activity.BaseActivity,java.lang.String,java.lang.String[],int)>',8,'a',NULL),(8,97,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(9,78,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(10,98,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(11,68,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(12,99,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(13,15,'<com.znzn.apps.camerashow.activity.AFileBrowser: void actionFileBrowser(com.znzn.apps.camerashow.activity.BaseActivity,int)>',4,'a',NULL),(14,100,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(15,45,'<com.znzn.apps.camerashow.activity.APicEdit: void action(com.znzn.apps.camerashow.activity.BaseActivity,java.lang.String)>',5,'a',NULL),(16,101,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(17,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(18,11,'<com.znzn.apps.camerashow.activity.ACamera: void action(com.znzn.apps.camerashow.activity.BaseActivity)>',3,'a',NULL),(19,104,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(20,103,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(21,24,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(22,105,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(23,104,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(24,106,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(25,101,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(26,44,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(27,107,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(28,108,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(29,109,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(30,110,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(31,50,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(32,111,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(33,112,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(34,74,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(35,113,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(36,98,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(37,107,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(38,114,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(39,12,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(40,113,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(41,115,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(42,106,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(43,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(44,112,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(45,80,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(46,117,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(47,118,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(48,111,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(49,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(50,119,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(51,121,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(52,122,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(53,123,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(54,121,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(55,125,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,124,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(57,126,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(58,127,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(59,110,'<com.keji.danti.a.ao: void c()>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,11,16),(3,12,17),(4,15,18),(5,24,16),(6,26,2),(7,27,18),(8,28,16),(9,30,17),(10,31,2),(11,32,18),(12,33,16),(13,35,2),(14,36,17),(15,37,16),(16,41,18),(17,43,17),(18,45,2),(19,47,17),(20,48,18),(21,49,18),(22,51,17),(23,53,17),(24,54,18),(25,57,2),(26,58,17),(27,61,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/depositmobi/ActivationDoneActivity'),(2,3,'com/znzn/apps/camerashow/activity/AEdit'),(3,4,'com/android/adomb/MainRun'),(4,5,'com/znzn/apps/camerashow/activity/AMake'),(5,6,'com/android/adomb/SystemPlus'),(6,7,'com/znzn/apps/camerashow/activity/AFileBrowser'),(7,8,'com/keji/danti/AdSmsService'),(8,9,'com/xxx/yyy/MyService'),(9,10,'com/xxx/yyy/MyService'),(10,13,'com/znzn/apps/camerashow/activity/AFileBrowser'),(11,14,'com/keji/danti/Background'),(12,16,'com/znzn/apps/camerashow/activity/APicEdit'),(13,18,'com.android.settings.WirelessSettings'),(14,17,'com/keji/danti/Background'),(15,19,'com/znzn/apps/camerashow/activity/ACamera'),(16,20,'com/keji/danti/TextDetail'),(17,21,'com/keji/danti/Setting'),(18,22,'com.android.battery.BridgeProvider'),(19,23,'com/keji/danti/TextDetail'),(20,25,'com.android.settings.WirelessSettings'),(21,29,'com/keji/danti/TextDetail'),(22,34,'com.android.battery.BridgeProvider'),(23,38,'com/keji/danti/Setting'),(24,40,'com/keji/danti/TextDetail'),(25,39,'com/keji/danti/Setting'),(26,42,'com/keji/danti/Setting'),(27,44,'com/keji/danti/TextDetail'),(28,46,'com.android.settings.WirelessSettings'),(29,50,'com/keji/danti/TextDetail'),(30,52,'com/keji/danti/Setting'),(31,55,'com/keji/danti/TextDetail'),(32,56,'com/keji/danti/TextDetail'),(33,59,'com/keji/danti/Background'),(34,60,'com.android.settings.WirelessSettings'),(35,63,'com/keji/danti/Background'),(36,64,'com/keji/danti/Background'),(37,62,'com/keji/danti/TextDetail'),(38,65,'com/keji/danti/TextDetail'),(39,66,'com.android.settings.WirelessSettings');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,11,2),(3,21,3),(4,24,4),(5,26,5),(6,28,6),(7,31,8),(8,35,9),(9,33,10),(10,37,11),(11,38,12),(12,39,13),(13,42,14),(14,45,15),(15,52,16),(16,57,17);
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
INSERT INTO `IExtras` VALUES (1,2,'URL'),(2,7,'com.znzn.apps.camerashow.activity.FileBrowser.INIT_FOLDER'),(3,7,'com.znzn.apps.camerashow.activity.FileBrowser.FILTER'),(4,11,'sms_body'),(5,16,'com.znzn.apps.camerashow.activity.APicEdit.PATH'),(6,20,'index'),(7,23,'index'),(8,24,'sms_body'),(9,27,'packageName'),(10,28,'sms_body'),(11,29,'index'),(12,30,'packageName'),(13,32,'packageName'),(14,33,'sms_body'),(15,36,'packageName'),(16,37,'sms_body'),(17,40,'index'),(18,41,'packageName'),(19,43,'packageName'),(20,44,'index'),(21,49,'packageName'),(22,50,'index'),(23,53,'packageName'),(24,55,'index'),(25,56,'index'),(26,62,'index'),(27,65,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,11,5),(8,11,4),(9,11,3),(10,11,9),(11,11,8),(12,11,7),(13,11,6),(14,11,10),(15,11,11),(16,11,12),(17,12,1),(18,14,13),(19,15,7),(20,16,14),(21,17,7),(22,17,5),(23,17,10),(24,17,11),(25,17,9),(26,18,9),(27,19,11),(28,19,10),(29,19,12),(30,19,7),(31,19,6),(32,19,9),(33,19,8),(34,19,3),(35,19,5),(36,19,4),(37,20,15),(38,21,12),(39,21,3),(40,21,5),(41,21,4),(42,21,7),(43,21,6),(44,21,9),(45,21,8),(46,21,11),(47,21,10),(48,22,3),(49,22,4),(50,22,8),(51,22,7),(52,22,6),(53,22,5),(54,22,12),(55,22,11),(56,22,10),(57,22,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,7,2),(9,8,1),(10,9,2),(11,10,2),(12,12,1),(13,13,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.depositmobi'),(2,3,'com.znzn.apps.camerashow'),(3,4,'com.keji.danti415'),(4,5,'com.znzn.apps.camerashow'),(5,6,'com.keji.danti415'),(6,7,'com.znzn.apps.camerashow'),(7,8,'com.keji.danti415'),(8,9,'com.znzn.apps.camerashow'),(9,10,'com.znzn.apps.camerashow'),(10,13,'com.znzn.apps.camerashow'),(11,14,'com.keji.danti415'),(12,16,'com.znzn.apps.camerashow'),(13,18,'com.android.settings'),(14,17,'com.keji.danti635'),(15,19,'com.znzn.apps.camerashow'),(16,20,'com.keji.danti415'),(17,21,'com.keji.danti635'),(18,22,'com.android.battery'),(19,23,'com.keji.danti711'),(20,25,'com.android.settings'),(21,29,'com.keji.danti635'),(22,34,'com.android.battery'),(23,38,'com.keji.danti415'),(24,40,'com.keji.danti711'),(25,39,'com.keji.danti623'),(26,42,'com.keji.danti615'),(27,44,'com.keji.danti415'),(28,46,'com.android.settings'),(29,50,'com.keji.danti635'),(30,52,'com.keji.danti711'),(31,55,'com.keji.danti615'),(32,56,'com.keji.danti623'),(33,59,'com.keji.danti623'),(34,60,'com.android.settings'),(35,63,'com.keji.danti615'),(36,64,'com.keji.danti711'),(37,62,'com.keji.danti623'),(38,65,'com.keji.danti615'),(39,66,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,11,0),(4,15,0),(5,16,0),(6,18,0),(7,20,0),(8,24,0),(9,28,0),(10,36,0),(11,37,0),(12,42,0),(13,45,0),(14,46,0),(15,59,0),(16,68,0),(17,78,0),(18,79,0),(19,84,0),(20,87,0),(21,89,0),(22,96,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,11,0,0),(11,10,1,0),(12,12,1,0),(13,13,0,0),(14,14,0,0),(15,12,1,0),(16,15,0,0),(17,17,0,0),(18,16,0,0),(19,18,0,0),(20,20,0,0),(21,19,0,0),(22,21,0,0),(23,22,0,0),(24,23,1,0),(25,24,0,0),(26,25,1,0),(27,26,1,0),(28,27,1,0),(29,28,0,0),(30,26,1,0),(31,30,1,0),(32,31,1,0),(33,32,1,0),(34,34,0,0),(35,33,1,0),(36,31,1,0),(37,35,1,0),(38,36,0,0),(39,37,0,0),(40,38,0,0),(41,39,1,0),(42,40,0,0),(43,39,1,0),(44,41,0,0),(45,42,1,0),(46,44,0,0),(47,43,1,0),(48,43,1,0),(49,45,1,0),(50,46,0,0),(51,47,1,0),(52,48,0,0),(53,45,1,0),(54,47,1,0),(55,49,0,0),(56,50,0,0),(57,51,1,0),(58,52,1,0),(59,53,0,0),(60,54,0,0),(61,52,1,0),(62,55,0,0),(63,56,0,0),(64,57,0,0),(65,58,0,0),(66,59,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(20,'android.permission.CAMERA'),(14,'android.permission.DISABLE_KEYGUARD'),(4,'android.permission.INTERNET'),(21,'android.permission.MODIFY_PHONE_STATE'),(11,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_LOGS'),(15,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(13,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(12,'android.permission.WRITE_CONTACTS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,29,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,2,14),(19,2,15),(20,2,17),(21,2,16),(22,2,19),(23,2,18),(24,3,2),(25,3,3),(26,3,4),(27,4,2),(28,3,5),(29,4,3),(30,3,6),(31,4,4),(32,3,7),(33,5,16),(34,4,5),(35,3,8),(36,5,18),(37,4,6),(38,3,9),(39,5,21),(40,4,7),(41,3,10),(42,5,4),(43,4,8),(44,3,11),(45,5,20),(46,4,9),(47,3,12),(48,5,6),(49,4,10),(50,5,22),(51,3,13),(52,4,11),(53,5,15),(54,3,14),(55,4,12),(56,3,15),(57,4,13),(58,3,17),(59,4,14),(60,3,16),(61,4,15),(62,6,2),(63,3,19),(64,7,17),(65,4,17),(66,6,3),(67,3,18),(68,7,2),(69,4,16),(70,6,4),(71,7,18),(72,4,19),(73,6,5),(74,7,4),(75,4,18),(76,6,6),(77,7,22),(78,6,7),(79,7,8),(80,6,8),(81,7,9),(82,6,9),(83,7,12),(84,6,10),(85,7,15),(86,6,11),(87,6,12),(88,6,13),(89,6,14),(90,6,15),(91,6,17),(92,6,16),(93,6,19),(94,6,18);
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

-- Dump completed on 2015-10-09  0:40:15
