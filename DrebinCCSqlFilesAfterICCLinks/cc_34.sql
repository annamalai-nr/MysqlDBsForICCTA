-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_34
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'(.*)'),(33,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(35,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(34,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(21,'http://smudgeware.com/highscores/android/minishot/scores.php'),(27,'http://smudgeware.com/highscores/android/minishot/scores.php?action=add&name=(.*)&score=(.*)&sec='),(17,'http://smudgeware.com/highscores/android/minishot/scores.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)'),(23,'http://smudgeware.com/highscores/android/minishot/scores.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)(.*)'),(22,'http://smudgeware.com/highscores/android/minishot/scores_3pt.php'),(29,'http://smudgeware.com/highscores/android/minishot/scores_3pt.php?action=add&name=(.*)&score=(.*)&sec='),(30,'http://smudgeware.com/highscores/android/minishot/scores_3pt.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)'),(25,'http://smudgeware.com/highscores/android/minishot/scores_3pt.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)(.*)'),(18,'http://smudgeware.com/highscores/android/minishot/scores_moving.php'),(26,'http://smudgeware.com/highscores/android/minishot/scores_moving.php?action=add&name=(.*)&score=(.*)&sec='),(24,'http://smudgeware.com/highscores/android/minishot/scores_moving.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)'),(31,'http://smudgeware.com/highscores/android/minishot/scores_moving.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)(.*)'),(28,'http://smudgeware.com/highscores/android/minishot/scores_random.php'),(19,'http://smudgeware.com/highscores/android/minishot/scores_random.php?action=add&name=(.*)&score=(.*)&sec='),(20,'http://smudgeware.com/highscores/android/minishot/scores_random.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)'),(16,'http://smudgeware.com/highscores/android/minishot/scores_random.php?action=add&name=(.*)&score=(.*)&sec=(.*)(.*)(.*)(.*)(.*)');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti753',32),(2,'com.keji.danti558',32),(3,'com.computertimeco.minishot.android',24),(4,'com.keji.danti640',32),(5,'com.keji.danti427',27),(6,'com.keji.danti689',32),(7,'com.jjdd',6);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,3,'com.computertimeco.minishot.android.MiniShot'),(2,1,'com.keji.danti.MainA'),(3,3,'com.computertimeco.minishot.android.HighScores'),(4,3,'com.computertimeco.minishot.android.HighScoresOnline'),(5,1,'com.keji.danti.Boutique'),(6,3,'com.computertimeco.minishot.android.SystemPlus'),(7,1,'com.keji.danti.Background'),(8,3,'com.computertimeco.minishot.android.MainRun'),(9,1,'com.keji.danti.Lists'),(10,3,'com.computertimeco.minishot.android.ForAlarm'),(11,2,'com.keji.danti.MainA'),(12,1,'com.keji.danti.History'),(13,1,'com.keji.danti.TextDetail'),(14,4,'com.keji.danti.MainA'),(15,2,'com.keji.danti.Boutique'),(16,1,'com.keji.danti.Setting'),(17,2,'com.keji.danti.Background'),(18,1,'com.android.view.custom.BaseAActivity'),(19,5,'com.keji.danti.MainA'),(20,6,'com.keji.danti.MainA'),(21,4,'com.keji.danti.Boutique'),(22,2,'com.keji.danti.Lists'),(23,1,'com.android.view.custom.FirstAActivity'),(24,2,'com.keji.danti.History'),(25,4,'com.keji.danti.Background'),(26,1,'com.android.view.custom.SecondAActivity'),(27,5,'com.keji.danti.Boutique'),(28,2,'com.keji.danti.TextDetail'),(29,4,'com.keji.danti.Lists'),(30,6,'com.keji.danti.Boutique'),(31,1,'com.android.view.custom.ThirdAActivity'),(32,5,'com.keji.danti.Background'),(33,2,'com.keji.danti.Setting'),(34,4,'com.keji.danti.History'),(35,6,'com.keji.danti.Background'),(36,1,'com.android.view.custom.FourthAActivity'),(37,5,'com.keji.danti.Lists'),(38,4,'com.keji.danti.TextDetail'),(39,2,'com.android.view.custom.BaseAActivity'),(40,6,'com.keji.danti.Lists'),(41,1,'com.android.view.custom.FirstAService'),(42,5,'com.keji.danti.History'),(43,2,'com.android.view.custom.FirstAActivity'),(44,4,'com.keji.danti.Setting'),(45,1,'com.android.view.custom.SecondAService'),(46,6,'com.keji.danti.History'),(47,5,'com.keji.danti.TextDetail'),(48,4,'com.android.view.custom.BaseAActivity'),(49,2,'com.android.view.custom.SecondAActivity'),(50,1,'com.android.view.custom.ThirdAService'),(51,6,'com.keji.danti.TextDetail'),(52,5,'com.keji.danti.Setting'),(53,2,'com.android.view.custom.ThirdAActivity'),(54,4,'com.android.view.custom.FirstAActivity'),(55,1,'com.android.view.custom.FourthAService'),(56,6,'com.keji.danti.Setting'),(57,5,'com.android.battery.BalckActivity2'),(58,2,'com.android.view.custom.FourthAActivity'),(59,4,'com.android.view.custom.SecondAActivity'),(60,6,'com.android.view.custom.BaseAActivity'),(61,1,'com.android.view.custom.BaseABroadcastReceiver'),(62,5,'com.android.battery.BalckActivity'),(63,4,'com.android.view.custom.ThirdAActivity'),(64,2,'com.android.view.custom.FirstAService'),(65,6,'com.android.view.custom.FirstAActivity'),(66,5,'com.android.battery.KillThreeSixZero'),(67,2,'com.android.view.custom.SecondAService'),(68,4,'com.android.view.custom.FourthAActivity'),(69,6,'com.android.view.custom.SecondAActivity'),(70,5,'com.android.battery.BridgeProvider'),(71,2,'com.android.view.custom.ThirdAService'),(72,4,'com.android.view.custom.FirstAService'),(73,6,'com.android.view.custom.ThirdAActivity'),(74,2,'com.android.view.custom.FourthAService'),(75,4,'com.android.view.custom.SecondAService'),(76,6,'com.android.view.custom.FourthAActivity'),(77,5,'com.android.battery.AdSmsService'),(78,4,'com.android.view.custom.ThirdAService'),(79,2,'com.android.view.custom.BaseABroadcastReceiver'),(80,6,'com.android.view.custom.FirstAService'),(81,5,'com.android.battery.PhoneService'),(82,4,'com.android.view.custom.FourthAService'),(83,6,'com.android.view.custom.SecondAService'),(84,5,'com.android.battery.BaseBroadcastReceiver'),(85,4,'com.android.view.custom.BaseABroadcastReceiver'),(86,6,'com.android.view.custom.ThirdAService'),(87,6,'com.android.view.custom.FourthAService'),(88,6,'com.android.view.custom.BaseABroadcastReceiver'),(89,7,'com.jjdd.JJDDClient'),(90,7,'com.jjdd.ValidateProfile'),(91,7,'com.android.view.custom.BaseAActivity'),(92,7,'com.android.view.custom.FirstAActivity'),(93,7,'com.android.view.custom.SecondAActivity'),(94,7,'com.android.view.custom.ThirdAActivity'),(95,7,'com.android.view.custom.FourthAActivity'),(96,7,'com.jjdd.PushService'),(97,7,'com.android.view.custom.FirstAService'),(98,7,'com.android.view.custom.SecondAService'),(99,7,'com.android.view.custom.ThirdAService'),(100,7,'com.android.view.custom.FourthAService'),(101,7,'com.jjdd.BootReceiver'),(102,7,'com.android.view.custom.BaseABroadcastReceiver'),(103,7,'com.jjdd.LocalFileContentProvider'),(104,3,'com.computertimeco.minishot.android.BaseAActivity'),(105,1,'com.keji.danti.ph'),(106,1,'com.sec.android.providers.drm.Onion'),(107,1,'com.keji.danti.a.sv'),(108,4,'com.keji.danti.ph'),(109,1,'com.keji.danti.a.ar'),(110,6,'com.keji.danti.a.ao'),(111,4,'com.keji.danti.a.ao'),(112,5,'com.keji.danti.a.ar'),(113,1,'com.keji.danti.a.ao'),(114,2,'com.keji.danti.a.ar'),(115,6,'com.keji.danti.a.sv'),(116,5,'com.keji.danti.a.ao'),(117,6,'com.sec.android.providers.drm.Onion'),(118,4,'com.sec.android.providers.drm.Onion'),(119,1,'com.keji.danti.a.sy'),(120,2,'com.keji.danti.a.sv'),(121,4,'com.keji.danti.a.sv'),(122,2,'com.keji.danti.a.ao'),(123,5,'com.android.battery.b.pa'),(124,4,'com.keji.danti.a.ar'),(125,6,'com.keji.danti.a.sy'),(126,2,'com.sec.android.providers.drm.Onion'),(127,4,'com.keji.danti.a.sy'),(128,5,'com.keji.danti.a.a'),(129,6,'com.keji.danti.a.ar'),(130,7,'com.phonegap.DroidGap'),(131,2,'com.keji.danti.a.sy'),(132,6,'com.keji.danti.ph'),(133,7,'com.sec.android.providers.drm.Onion'),(134,2,'com.keji.danti.ph'),(135,5,'com.keji.danti.pf'),(136,5,'com.keji.danti.a.st');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,61,'PID'),(2,7,'data'),(3,84,'APP_UID'),(4,47,'notSaveDate'),(5,13,'notSaveDate'),(6,85,'PID'),(7,96,'host'),(8,91,'url'),(9,89,'url'),(10,9,'appsec'),(11,29,'appsec'),(12,91,'clientRunning'),(13,13,'index'),(14,89,'clientRunning'),(15,91,'fragment'),(16,89,'fragment'),(17,22,'appsec'),(18,41,'appsec'),(19,38,'index'),(20,25,'data'),(21,84,'pdus'),(22,17,'data'),(23,36,'data'),(24,51,'index'),(25,51,'notSaveDate'),(26,96,'httpPushEnable'),(27,38,'notSaveDate'),(28,96,'socketPushEnable'),(29,79,'PID'),(30,28,'notSaveDate'),(31,96,'httpPushToken'),(32,90,'params'),(33,88,'PID'),(34,96,'disablePushSound'),(35,28,'index'),(36,96,'ignoreFirstHttpPush'),(37,91,'HOST_URL'),(38,32,'data'),(39,89,'HOST_URL'),(40,102,'PID'),(41,96,'enableGetOffineMessage'),(42,96,'httpPushSex'),(43,96,'loginString'),(44,96,'clientRunning'),(45,96,'httpPushUID'),(46,96,'httpPushURL'),(47,47,'index'),(48,47,'appsec'),(49,37,'appsec');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'s',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'s',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',1,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'s',0,NULL,NULL),(84,84,'r',1,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'p',0,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,10),(3,3,1),(4,4,3),(5,5,9),(6,6,61),(7,7,9),(8,8,18),(9,9,29),(10,10,13),(11,11,30),(12,12,21),(13,13,91),(14,14,52),(15,15,5),(16,16,28),(17,17,41),(18,18,14),(19,19,47),(20,20,88),(21,21,85),(22,22,89),(23,22,91),(24,23,22),(25,24,16),(26,25,19),(27,26,91),(28,26,89),(29,27,60),(30,28,2),(31,29,29),(32,30,15),(33,31,101),(34,32,13),(35,33,84),(36,34,38),(37,35,56),(38,36,39),(39,37,47),(40,38,20),(41,39,79),(42,40,44),(43,41,19),(44,42,51),(45,43,48),(46,44,28),(47,45,27),(48,46,51),(49,47,84),(50,48,38),(51,49,91),(52,50,34),(53,51,84),(54,52,41),(55,53,102),(56,54,22),(57,55,37),(58,56,11),(59,57,37),(60,58,84);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.computertimeco.minishot.android.MainRun: void b()>',4,'s',NULL),(2,10,'<com.computertimeco.minishot.android.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(3,104,'<com.computertimeco.minishot.android.BaseAActivity: void a()>',10,'s',NULL),(4,3,'<com.computertimeco.minishot.android.HighScores: boolean BrowseUrl(java.lang.String)>',5,'a',NULL),(5,105,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(6,106,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(7,107,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(8,18,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(9,108,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,109,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(11,110,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(12,111,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(13,91,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(14,112,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(15,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(16,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(17,115,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(18,111,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(19,116,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(20,117,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(21,118,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(22,89,'<com.jjdd.JJDDClient: void doBindService(android.content.ServiceConnection)>',4,'s',NULL),(23,120,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(24,119,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(25,19,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(26,89,'<com.jjdd.JJDDClient: void doStartService(android.content.Intent)>',2,'s',0),(27,60,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(28,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,121,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(30,122,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(31,101,'<com.jjdd.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',71,'s',NULL),(32,109,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(33,123,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(34,124,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(35,125,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,39,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,116,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(38,110,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(39,126,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(40,127,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(41,128,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(42,129,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(43,48,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(44,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,128,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(46,129,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(47,123,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(48,124,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(49,130,'<com.phonegap.DroidGap: void startActivityForResult(android.content.Intent,int)>',12,'a',NULL),(50,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,123,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(52,132,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(53,133,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(54,134,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(55,135,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,122,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(57,136,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(58,123,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,16),(2,5,17),(3,6,18),(4,7,19),(5,8,20),(6,9,21),(7,10,22),(8,11,23),(9,12,24),(10,13,25),(11,14,26),(12,15,27),(13,16,28),(14,17,29),(15,18,30),(16,19,31),(17,21,32),(18,22,33),(19,24,33),(20,25,32),(21,28,34),(22,29,34),(23,30,33),(24,32,32),(25,33,34),(26,35,35),(27,37,35),(28,38,32),(29,40,32),(30,43,33),(31,44,33),(32,45,34),(33,47,33),(34,49,34),(35,50,32),(36,52,35),(37,54,35),(38,56,33),(39,58,32),(40,60,32),(41,62,33),(42,65,33),(43,67,34),(44,68,32),(45,69,35),(46,76,32),(47,79,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.android.battery.BridgeProvider'),(2,2,'com/computertimeco/minishot/android/MainRun'),(3,3,'com/computertimeco/minishot/android/SystemPlus'),(4,4,'com/computertimeco/minishot/android/HighScoresOnline'),(5,5,'com/computertimeco/minishot/android/HighScoresOnline'),(6,6,'com/computertimeco/minishot/android/HighScoresOnline'),(7,7,'com/computertimeco/minishot/android/HighScoresOnline'),(8,8,'com/computertimeco/minishot/android/HighScoresOnline'),(9,9,'com/computertimeco/minishot/android/HighScoresOnline'),(10,10,'com/computertimeco/minishot/android/HighScoresOnline'),(11,11,'com/computertimeco/minishot/android/HighScoresOnline'),(12,12,'com/computertimeco/minishot/android/HighScoresOnline'),(13,13,'com/computertimeco/minishot/android/HighScoresOnline'),(14,14,'com/computertimeco/minishot/android/HighScoresOnline'),(15,15,'com/computertimeco/minishot/android/HighScoresOnline'),(16,16,'com/computertimeco/minishot/android/HighScoresOnline'),(17,17,'com/computertimeco/minishot/android/HighScoresOnline'),(18,18,'com/computertimeco/minishot/android/HighScoresOnline'),(19,19,'com/computertimeco/minishot/android/HighScoresOnline'),(20,20,'com/keji/danti/TextDetail'),(21,23,'com/keji/danti/TextDetail'),(22,26,'com/keji/danti/TextDetail'),(23,27,'com/keji/danti/Setting'),(24,31,'com/keji/danti/Background'),(25,36,'com.android.settings.WirelessSettings'),(26,34,'com/keji/danti/TextDetail'),(27,39,'com/jjdd/PushService'),(28,42,'com/keji/danti/Background'),(29,41,'com/keji/danti/TextDetail'),(30,46,'com.android.settings.WirelessSettings'),(31,45,'com.android.packageinstaller.PackageInstallerActivity'),(32,48,'com/keji/danti/TextDetail'),(33,53,'com/android/battery/PhoneService'),(34,55,'com/keji/danti/Background'),(35,57,'com/keji/danti/Setting'),(36,59,'com.android.settings.WirelessSettings'),(37,61,'com/keji/danti/Background'),(38,63,'com.android.settings.WirelessSettings'),(39,64,'com/keji/danti/Setting'),(40,51,'com/jjdd/PushService'),(41,66,'com/keji/danti/Setting'),(42,70,'com/android/battery/BridgeProvider'),(43,71,'com/keji/danti/Setting'),(44,73,'com/keji/danti/Background'),(45,74,'com/android/battery/AdSmsService'),(46,75,'com/keji/danti/TextDetail'),(47,77,'com/keji/danti/TextDetail'),(48,78,'com/keji/danti/TextDetail'),(49,80,'com.android.settings.WirelessSettings'),(50,81,'com/keji/danti/TextDetail'),(51,82,'com/android/battery/KillThreeSixZero');
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
INSERT INTO `IData` VALUES (1,27,1),(2,28,2),(3,29,3),(4,33,4),(5,35,5),(6,37,6),(7,45,7),(8,49,8),(9,52,9),(10,54,10),(11,57,11),(12,64,12),(13,66,13),(14,67,14),(15,71,15),(16,69,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'index'),(2,23,'index'),(3,24,'packageName'),(4,25,'packageName'),(5,26,'index'),(6,30,'packageName'),(7,32,'packageName'),(8,34,'index'),(9,35,'sms_body'),(10,37,'sms_body'),(11,41,'index'),(12,47,'packageName'),(13,48,'index'),(14,51,'port'),(15,50,'packageName'),(16,51,'pushInterval'),(17,51,'heartDelay'),(18,52,'sms_body'),(19,51,'reconnectDelay'),(20,51,'host'),(21,51,'loginString'),(22,54,'sms_body'),(23,51,'httpPushToken'),(24,56,'packageName'),(25,51,'status'),(26,51,'ignoreFirstHttpPush'),(27,51,'httpPushUID'),(28,58,'packageName'),(29,51,'httpPushEnable'),(30,51,'disablePushSound'),(31,51,'socketPushEnable'),(32,51,'httpPushInterval'),(33,51,'start'),(34,51,'action'),(35,51,'httpPushURL'),(36,51,'clientRunning'),(37,51,'timeout'),(38,51,'httpPushSex'),(39,51,'end'),(40,65,'packageName'),(41,51,'enableGetOffineMessage'),(42,68,'packageName'),(43,69,'sms_body'),(44,75,'index'),(45,77,'index'),(46,78,'index'),(47,81,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,1),(18,9,11),(19,9,10),(20,9,9),(21,9,8),(22,9,4),(23,9,5),(24,9,6),(25,9,7),(26,9,2),(27,9,3),(28,10,11),(29,10,7),(30,10,8),(31,10,9),(32,10,5),(33,10,10),(34,10,6),(35,10,3),(36,10,4),(37,10,2),(38,11,5),(39,11,4),(40,11,9),(41,11,8),(42,11,6),(43,11,10),(44,11,12),(45,11,13),(46,11,14),(47,11,15),(48,12,4),(49,12,3),(50,12,6),(51,12,5),(52,12,8),(53,12,7),(54,12,10),(55,12,9),(56,12,11),(57,12,2),(58,13,1),(59,14,6),(60,15,4),(61,15,5),(62,15,2),(63,15,3),(64,15,8),(65,15,9),(66,15,6),(67,15,7),(68,15,10),(69,15,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,13,1),(8,14,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.battery'),(2,2,'com.computertimeco.minishot.android'),(3,3,'com.computertimeco.minishot.android'),(4,4,'com.computertimeco.minishot.android'),(5,5,'com.computertimeco.minishot.android'),(6,6,'com.computertimeco.minishot.android'),(7,7,'com.computertimeco.minishot.android'),(8,8,'com.computertimeco.minishot.android'),(9,9,'com.computertimeco.minishot.android'),(10,10,'com.computertimeco.minishot.android'),(11,11,'com.computertimeco.minishot.android'),(12,12,'com.computertimeco.minishot.android'),(13,13,'com.computertimeco.minishot.android'),(14,14,'com.computertimeco.minishot.android'),(15,15,'com.computertimeco.minishot.android'),(16,16,'com.computertimeco.minishot.android'),(17,17,'com.computertimeco.minishot.android'),(18,18,'com.computertimeco.minishot.android'),(19,19,'com.computertimeco.minishot.android'),(20,20,'com.keji.danti753'),(21,23,'com.keji.danti753'),(22,26,'com.keji.danti640'),(23,27,'com.keji.danti753'),(24,31,'com.keji.danti427'),(25,36,'com.android.settings'),(26,34,'com.keji.danti689'),(27,39,'com.jjdd'),(28,42,'com.keji.danti753'),(29,41,'com.keji.danti558'),(30,46,'com.android.settings'),(31,45,'com.android.packageinstaller'),(32,48,'com.keji.danti640'),(33,53,'com.keji.danti427'),(34,55,'com.keji.danti689'),(35,57,'com.keji.danti427'),(36,59,'com.android.settings'),(37,61,'com.keji.danti640'),(38,63,'com.android.settings'),(39,64,'com.keji.danti689'),(40,51,'com.jjdd'),(41,66,'com.keji.danti558'),(42,70,'com.keji.danti427'),(43,71,'com.keji.danti640'),(44,73,'com.keji.danti558'),(45,74,'com.keji.danti427'),(46,75,'com.keji.danti689'),(47,77,'com.keji.danti558'),(48,78,'com.keji.danti427'),(49,80,'com.android.settings'),(50,81,'com.keji.danti427'),(51,82,'com.keji.danti427');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,11,0),(4,14,0),(5,19,0),(6,20,0),(7,61,0),(8,70,0),(9,79,0),(10,85,0),(11,84,0),(12,88,0),(13,89,0),(14,101,0),(15,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,4,0,0),(6,4,0,0),(7,4,0,0),(8,4,0,0),(9,4,0,0),(10,4,0,0),(11,4,0,0),(12,4,0,0),(13,4,0,0),(14,4,0,0),(15,4,0,0),(16,4,0,0),(17,4,0,0),(18,4,0,0),(19,4,0,0),(20,5,0,0),(21,6,1,0),(22,6,1,0),(23,7,0,0),(24,8,1,0),(25,8,1,0),(26,9,0,0),(27,10,0,0),(28,11,1,0),(29,12,1,0),(30,13,1,0),(31,14,0,0),(32,13,1,0),(33,15,1,0),(34,17,0,0),(35,16,1,0),(36,18,0,0),(37,19,1,0),(38,20,1,0),(39,22,0,0),(40,21,1,0),(41,23,0,0),(42,24,0,0),(43,20,1,0),(44,21,1,0),(45,25,0,0),(46,28,0,0),(47,27,1,0),(48,29,0,0),(49,30,1,0),(50,27,1,0),(51,31,0,0),(52,32,1,0),(53,33,0,0),(54,34,1,0),(55,35,0,0),(56,36,1,0),(57,37,0,0),(58,36,1,0),(59,38,0,0),(60,39,1,0),(61,40,0,0),(62,39,1,0),(63,41,0,0),(64,42,0,0),(65,43,1,0),(66,44,0,0),(67,45,1,0),(68,43,1,0),(69,46,1,0),(70,47,0,0),(71,48,0,0),(72,49,1,0),(73,50,0,0),(74,51,0,0),(75,52,0,0),(76,53,1,0),(77,54,0,0),(78,55,0,0),(79,53,1,0),(80,56,0,0),(81,57,0,0),(82,58,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,24,1,2,NULL),(2,25,1,2,NULL),(3,56,1,2,NULL),(4,58,1,2,NULL),(5,65,1,2,NULL),(6,68,1,2,NULL),(7,47,1,2,NULL),(8,50,1,2,NULL),(9,30,1,2,NULL),(10,32,1,2,NULL),(11,4,4,2,NULL),(12,5,4,2,NULL),(13,6,4,2,NULL),(14,7,4,2,NULL),(15,8,4,2,NULL),(16,9,4,2,NULL),(17,10,4,2,NULL),(18,11,4,2,NULL),(19,12,4,2,NULL),(20,13,4,2,NULL),(21,14,4,2,NULL),(22,15,4,2,NULL),(23,16,4,2,NULL),(24,17,4,2,NULL),(25,18,4,2,NULL),(26,19,4,2,NULL),(27,1,70,2,NULL),(28,2,8,2,NULL),(29,24,2,2,NULL),(30,24,19,2,NULL),(31,25,2,2,NULL),(32,25,19,2,NULL),(33,56,2,2,NULL),(34,56,19,2,NULL),(35,58,2,2,NULL),(36,58,19,2,NULL),(37,65,2,2,NULL),(38,65,19,2,NULL),(39,68,2,2,NULL),(40,68,19,2,NULL),(41,47,2,2,NULL),(42,47,19,2,NULL),(43,50,2,2,NULL),(44,50,19,2,NULL),(45,30,2,2,NULL),(46,30,19,2,NULL),(47,32,2,2,NULL),(48,32,19,2,NULL),(49,24,61,2,NULL),(50,24,70,2,NULL),(51,25,61,2,NULL),(52,25,70,2,NULL),(53,24,11,2,NULL),(54,56,70,2,NULL),(55,25,11,2,NULL),(56,58,70,2,NULL),(57,24,79,2,NULL),(58,65,70,2,NULL),(59,25,79,2,NULL),(60,68,70,2,NULL),(61,24,14,2,NULL),(62,47,70,2,NULL),(63,25,14,2,NULL),(64,50,70,2,NULL),(65,24,85,2,NULL),(66,30,70,2,NULL),(67,25,85,2,NULL),(68,32,70,2,NULL),(69,24,84,2,NULL),(70,25,84,2,NULL),(71,24,20,2,NULL),(72,56,84,2,NULL),(73,25,20,2,NULL),(74,58,84,2,NULL),(75,24,88,2,NULL),(76,65,84,2,NULL),(77,25,88,2,NULL),(78,68,84,2,NULL),(79,24,89,2,NULL),(80,47,84,2,NULL),(81,25,89,2,NULL),(82,50,84,2,NULL),(83,24,101,2,NULL),(84,30,84,2,NULL),(85,25,101,2,NULL),(86,32,84,2,NULL),(87,24,102,2,NULL),(88,25,102,2,NULL),(89,56,61,2,NULL),(90,58,61,2,NULL),(91,65,61,2,NULL),(92,68,61,2,NULL),(93,47,61,2,NULL),(94,50,61,2,NULL),(95,30,61,2,NULL),(96,32,61,2,NULL),(97,56,20,2,NULL),(98,58,20,2,NULL),(99,65,20,2,NULL),(100,68,20,2,NULL),(101,47,20,2,NULL),(102,50,20,2,NULL),(103,30,20,2,NULL),(104,32,20,2,NULL),(105,47,11,2,NULL),(106,50,11,2,NULL),(107,47,79,2,NULL),(108,50,79,2,NULL),(109,47,14,2,NULL),(110,50,14,2,NULL),(111,47,85,2,NULL),(112,50,85,2,NULL),(113,47,88,2,NULL),(114,50,88,2,NULL),(115,47,89,2,NULL),(116,50,89,2,NULL),(117,47,101,2,NULL),(118,50,101,2,NULL),(119,47,102,2,NULL),(120,50,102,2,NULL),(121,56,88,2,NULL),(122,58,88,2,NULL),(123,65,88,2,NULL),(124,68,88,2,NULL),(125,30,88,2,NULL),(126,32,88,2,NULL),(127,39,96,2,NULL),(128,56,89,2,NULL),(129,56,14,2,NULL),(130,58,89,2,NULL),(131,58,14,2,NULL),(132,65,89,2,NULL),(133,65,14,2,NULL),(134,68,89,2,NULL),(135,68,14,2,NULL),(136,30,89,2,NULL),(137,30,14,2,NULL),(138,32,89,2,NULL),(139,32,14,2,NULL),(140,30,11,2,NULL),(141,65,11,2,NULL),(142,32,11,2,NULL),(143,68,11,2,NULL),(144,30,79,2,NULL),(145,65,79,2,NULL),(146,32,79,2,NULL),(147,68,79,2,NULL),(148,30,85,2,NULL),(149,65,85,2,NULL),(150,32,85,2,NULL),(151,68,85,2,NULL),(152,30,101,2,NULL),(153,65,101,2,NULL),(154,32,101,2,NULL),(155,68,101,2,NULL),(156,30,102,2,NULL),(157,65,102,2,NULL),(158,32,102,2,NULL),(159,68,102,2,NULL),(160,51,96,2,NULL),(161,56,85,2,NULL),(162,56,101,2,NULL),(163,58,85,2,NULL),(164,58,101,2,NULL),(165,56,102,2,NULL),(166,58,102,2,NULL),(167,56,11,2,NULL),(168,58,11,2,NULL),(169,56,79,2,NULL),(170,58,79,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.jjdd');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(23,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(22,'android.permission.CAMERA'),(11,'android.permission.DISABLE_KEYGUARD'),(25,'android.permission.INSTALL_PACKAGES'),(15,'android.permission.INTERNET'),(26,'android.permission.MODIFY_AUDIO_SETTINGS'),(21,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(24,'android.permission.RECORD_AUDIO'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,103,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,3,17),(12,2,1),(13,1,11),(14,3,16),(15,2,2),(16,1,12),(17,3,15),(18,2,3),(19,1,13),(20,2,4),(21,1,14),(22,2,5),(23,4,1),(24,1,15),(25,4,2),(26,2,6),(27,1,17),(28,2,7),(29,4,3),(30,1,16),(31,2,8),(32,4,4),(33,1,18),(34,2,9),(35,4,5),(36,5,1),(37,6,1),(38,2,10),(39,4,6),(40,5,2),(41,6,2),(42,2,11),(43,4,7),(44,5,4),(45,6,3),(46,2,12),(47,4,8),(48,5,5),(49,6,4),(50,4,9),(51,2,13),(52,5,6),(53,6,5),(54,2,14),(55,4,10),(56,5,8),(57,6,6),(58,2,15),(59,4,11),(60,5,9),(61,6,7),(62,2,17),(63,4,12),(64,5,10),(65,6,8),(66,2,16),(67,4,13),(68,5,11),(69,6,9),(70,2,18),(71,4,14),(72,5,12),(73,6,10),(74,4,15),(75,5,13),(76,6,11),(77,4,17),(78,6,12),(79,5,14),(80,4,16),(81,5,15),(82,6,13),(83,4,18),(84,5,17),(85,6,14),(86,6,15),(87,5,16),(88,5,19),(89,6,17),(90,5,18),(91,6,16),(92,6,18),(93,7,1),(94,7,2),(95,7,3),(96,7,4),(97,7,6),(98,7,7),(99,7,8),(100,7,9),(101,7,10),(102,7,11),(103,7,12),(104,7,13),(105,7,14),(106,7,15),(107,7,17),(108,7,16),(109,7,19),(110,7,18),(111,7,21),(112,7,20),(113,7,23),(114,7,22),(115,7,25),(116,7,24),(117,7,27),(118,7,26);
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

-- Dump completed on 2015-10-12  3:30:07
