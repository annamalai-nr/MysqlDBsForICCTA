-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_47
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(23,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(10,'android.intent.action.BATTERY_LOW'),(3,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(27,'android.intent.action.PACKAGE_ADDED'),(26,'android.intent.action.SENDTO'),(16,'android.intent.action.UMS_CONNECTED'),(14,'android.intent.action.UMS_DISCONNECTED'),(11,'android.intent.action.USER_PRESENT'),(25,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.net.conn.MEDIA_NOFS'),(15,'android.net.wifi.PICK_WIFI_WORK'),(6,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(8,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(19,'com.tencent.qqgame.hall.ui.Game'),(17,'com.tencent.qqgame.hall.ui.HallList'),(20,'com.tencent.qqgame.hall.ui.HelpAbout'),(2,'com.tencent.qqgame.hall.ui.Login'),(22,'com.tencent.qqgame.hall.ui.NotificationActivity'),(21,'com.tencent.qqgame.hall.ui.SysSetting'),(18,'com.tencent.qqgame.hall.ui.TableList');
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
INSERT INTO `Applications` VALUES (1,'com.qixin.readh',29),(2,'com.keji.danti559',32),(3,'com.keji.danti598',32),(4,'com.keji.danti419',27),(5,'com.keji.danti734',32),(6,'com.keji.danti410',27),(7,'tencent.qqgame.lord',24);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.qixin.readh.MainA'),(2,1,'com.rostamimagic.iforce.iForceActivity'),(3,1,'com.rostamimagic.iforce.LoadActivity'),(4,1,'com.rostamimagic.iforce.SaveActivity'),(5,1,'com.rostamimagic.iforce.PresetsActivity'),(6,1,'com.rostamimagic.iforce.PresetEditorActivity'),(7,1,'com.rostamimagic.iforce.SettingsActivity'),(8,1,'com.rostamimagic.iforce.InstructionsActivity'),(9,1,'com.rostamimagic.iforce.VideosActivity'),(10,1,'com.rostamimagic.iforce.VideoPlayerActivity'),(11,1,'com.qixin.readh.FakeHomeScreenActivity'),(12,1,'com.waps.OffersWebView'),(13,2,'com.keji.danti.MainA'),(14,4,'com.keji.danti.MainA'),(15,3,'com.keji.danti.MainA'),(16,6,'com.keji.danti.MainA'),(17,5,'com.keji.danti.MainA'),(18,2,'com.keji.danti.Boutique'),(19,2,'com.keji.danti.Background'),(20,4,'com.keji.danti.Boutique'),(21,3,'com.keji.danti.Boutique'),(22,2,'com.keji.danti.Lists'),(23,6,'com.keji.danti.Boutique'),(24,5,'com.keji.danti.Boutique'),(25,4,'com.keji.danti.Background'),(26,3,'com.keji.danti.Background'),(27,2,'com.keji.danti.History'),(28,5,'com.keji.danti.Background'),(29,6,'com.keji.danti.Background'),(30,4,'com.keji.danti.Lists'),(31,3,'com.keji.danti.Lists'),(32,2,'com.keji.danti.TextDetail'),(33,4,'com.keji.danti.History'),(34,5,'com.keji.danti.Lists'),(35,6,'com.keji.danti.Lists'),(36,3,'com.keji.danti.History'),(37,2,'com.keji.danti.Setting'),(38,5,'com.keji.danti.History'),(39,6,'com.keji.danti.History'),(40,4,'com.keji.danti.TextDetail'),(41,3,'com.keji.danti.TextDetail'),(42,2,'com.android.view.custom.BaseAActivity'),(43,4,'com.keji.danti.Setting'),(44,6,'com.keji.danti.TextDetail'),(45,5,'com.keji.danti.TextDetail'),(46,3,'com.keji.danti.Setting'),(47,2,'com.android.view.custom.FirstAActivity'),(48,6,'com.keji.danti.Setting'),(49,4,'com.android.battery.BalckActivity2'),(50,5,'com.keji.danti.Setting'),(51,3,'com.android.view.custom.BaseAActivity'),(52,2,'com.android.view.custom.SecondAActivity'),(53,6,'com.android.battery.BalckActivity2'),(54,4,'com.android.battery.BalckActivity'),(55,5,'com.android.view.custom.BaseAActivity'),(56,3,'com.android.view.custom.FirstAActivity'),(57,2,'com.android.view.custom.ThirdAActivity'),(58,6,'com.android.battery.BalckActivity'),(59,5,'com.android.view.custom.FirstAActivity'),(60,4,'com.android.battery.KillThreeSixZero'),(61,3,'com.android.view.custom.SecondAActivity'),(62,2,'com.android.view.custom.FourthAActivity'),(63,6,'com.android.battery.KillThreeSixZero'),(64,5,'com.android.view.custom.SecondAActivity'),(65,4,'com.android.battery.BridgeProvider'),(66,3,'com.android.view.custom.ThirdAActivity'),(67,2,'com.android.view.custom.FirstAService'),(68,6,'com.android.battery.BridgeProvider'),(69,5,'com.android.view.custom.ThirdAActivity'),(70,3,'com.android.view.custom.FourthAActivity'),(71,2,'com.android.view.custom.SecondAService'),(72,4,'com.android.battery.AdSmsService'),(73,5,'com.android.view.custom.FourthAActivity'),(74,3,'com.android.view.custom.FirstAService'),(75,2,'com.android.view.custom.ThirdAService'),(76,6,'com.android.battery.AdSmsService'),(77,4,'com.android.battery.PhoneService'),(78,5,'com.android.view.custom.FirstAService'),(79,7,'com.tencent.qqgame.hall.ui.LoginActivity'),(80,3,'com.android.view.custom.SecondAService'),(81,2,'com.android.view.custom.FourthAService'),(82,5,'com.android.view.custom.SecondAService'),(83,4,'com.android.battery.BaseBroadcastReceiver'),(84,6,'com.android.battery.PhoneService'),(85,3,'com.android.view.custom.ThirdAService'),(86,2,'com.android.view.custom.BaseABroadcastReceiver'),(87,5,'com.android.view.custom.ThirdAService'),(88,6,'com.android.battery.BaseBroadcastReceiver'),(89,3,'com.android.view.custom.FourthAService'),(90,5,'com.android.view.custom.FourthAService'),(91,3,'com.android.view.custom.BaseABroadcastReceiver'),(92,5,'com.android.view.custom.BaseABroadcastReceiver'),(93,7,'com.tencent.qqgame.hall.ui.HallListActivity'),(94,7,'com.tencent.qqgame.hall.ui.TableListActivity'),(95,7,'com.tencent.qqgame.hall.ui.GameActivity'),(96,7,'com.tencent.qqgame.hall.ui.HelpAboutActivity'),(97,7,'com.tencent.qqgame.hall.ui.SysSettingActivity'),(98,7,'com.tencent.qqgame.hall.ui.NotificationActivity'),(99,7,'tencent.qqgame.lord.SystemPlus'),(100,7,'tencent.qqgame.lord.MainRun'),(101,7,'tencent.qqgame.lord.ForAlarm'),(102,1,'com.rostamimagic.iforce.Doodle'),(103,1,'com.qixin.readh.MainA$3'),(104,5,'com.keji.danti.a.sy'),(105,5,'com.keji.danti.ph'),(106,2,'com.keji.danti.a.sy'),(107,6,'com.keji.danti.a.ar'),(108,4,'com.keji.danti.a.st'),(109,3,'com.keji.danti.a.ao'),(110,5,'com.keji.danti.a.sv'),(111,2,'com.keji.danti.ph'),(112,1,'com.waps.AppConnect'),(113,3,'com.keji.danti.a.ar'),(114,6,'com.keji.danti.a.ao'),(115,5,'com.sec.android.providers.drm.Onion'),(116,2,'com.keji.danti.a.ao'),(117,6,'com.android.battery.b.pa'),(118,4,'com.android.battery.b.pa'),(119,5,'com.keji.danti.a.ar'),(120,2,'com.keji.danti.a.ar'),(121,1,'com.waps.OffersWebView$DownloadFileTask'),(122,4,'com.keji.danti.a.a'),(123,6,'com.keji.danti.a.st'),(124,4,'com.keji.danti.a.ao'),(125,6,'com.keji.danti.a.a'),(126,5,'com.keji.danti.a.ao'),(127,4,'com.keji.danti.a.ar'),(128,3,'com.keji.danti.a.sv'),(129,2,'com.sec.android.providers.drm.Onion'),(130,1,'com.waps.DisplayAd$1'),(131,3,'com.keji.danti.a.sy'),(132,2,'com.keji.danti.a.sv'),(133,3,'com.sec.android.providers.drm.Onion'),(134,4,'com.keji.danti.pf'),(135,3,'com.keji.danti.ph'),(136,7,'tencent.qqgame.lord.BaseAActivity'),(137,1,'com.android.sf.dna.To'),(138,1,'com.waps.AppTracker'),(139,6,'com.keji.danti.pf'),(140,7,'com.tencent.qqgame.hall.common.AActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'isFinshClose'),(2,12,'URL'),(3,10,'url'),(4,1,'WAPS_ID'),(5,1,'DEVICE_ID'),(6,33,'appsec'),(7,92,'PID'),(8,4,'DrawingName'),(9,1,'WAPS_PID'),(10,2,'_id'),(11,43,'appsec'),(12,35,'appsec'),(13,41,'index'),(14,40,'index'),(15,43,'notSaveDate'),(16,1,'CLIENT_PACKAGE'),(17,26,'data'),(18,43,'index'),(19,31,'appsec'),(20,44,'index'),(21,86,'PID'),(22,22,'appsec'),(23,19,'data'),(24,2,'DrawingName'),(25,12,'CLIENT_PACKAGE'),(26,12,'URL_PARAMS'),(27,1,'APP_ID'),(28,40,'notSaveDate'),(29,44,'notSaveDate'),(30,28,'data'),(31,30,'data'),(32,82,'APP_UID'),(33,91,'PID'),(34,41,'notSaveDate'),(35,32,'index'),(36,32,'notSaveDate'),(37,88,'APP_UID'),(38,88,'pdus'),(39,82,'pdus'),(40,12,'USER_ID'),(41,24,'data'),(42,40,'appsec'),(43,29,'appsec'),(44,4,'icon'),(45,79,'PicData'),(46,93,'HallIdList'),(47,93,'HallNameList'),(48,93,'PlayerInHallNum'),(49,93,'HallType'),(50,94,'Data'),(51,95,'IsViewGame'),(52,93,'ServerID');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,16,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,23,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,43,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,72,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,82,'s',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'a',1,NULL,NULL),(94,94,'a',1,NULL,NULL),(95,95,'a',1,NULL,NULL),(96,96,'a',1,NULL,NULL),(97,97,'a',1,NULL,NULL),(98,98,'a',1,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',0,NULL,NULL),(102,138,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,7),(3,3,2),(4,4,1),(5,5,1),(6,6,5),(7,7,2),(8,8,42),(9,9,50),(10,10,33),(11,11,1),(12,12,37),(13,13,48),(14,14,29),(15,15,15),(16,16,33),(17,17,22),(18,18,1),(19,19,14),(20,20,41),(21,21,43),(22,22,92),(23,23,13),(24,24,1),(25,25,21),(26,26,88),(27,27,82),(28,29,44),(29,28,32),(30,30,12),(31,32,51),(32,31,14),(33,33,35),(34,34,55),(35,35,40),(36,36,32),(37,37,17),(38,38,41),(39,39,5),(40,40,16),(41,41,43),(42,42,18),(43,43,1),(44,44,45),(45,45,31),(46,46,23),(47,47,86),(48,49,25),(49,48,1),(50,50,82),(51,52,44),(52,51,46),(53,53,40),(54,54,88),(55,55,7),(56,56,22),(57,57,91),(58,59,5),(59,58,88),(60,60,29),(61,61,31),(62,62,98),(63,62,97),(64,62,79),(65,62,94),(66,62,93),(67,62,96),(68,62,95),(69,63,17),(70,64,2),(71,64,1),(72,65,20),(73,66,94),(74,66,93),(75,66,79),(76,66,96),(77,66,95),(78,66,97),(79,66,98),(80,67,82),(81,68,35),(82,69,98),(83,69,97),(84,69,96),(85,69,95),(86,69,79),(87,69,94),(88,69,93),(89,70,9),(90,71,98),(91,72,88),(92,73,82),(93,74,7),(94,75,93),(95,75,95),(96,75,79),(97,75,94),(98,76,101),(99,77,93),(100,77,95),(101,77,79),(102,77,94),(103,78,95),(104,78,79),(105,78,96),(106,78,93),(107,78,94),(108,78,97),(109,78,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,102,'<com.rostamimagic.iforce.Doodle: void dialogLoadDrawing()>',6,'a',NULL),(2,7,'<com.rostamimagic.iforce.SettingsActivity: void displayVideos()>',3,'a',NULL),(3,2,'<com.rostamimagic.iforce.iForceActivity: void displayPresets()>',3,'a',NULL),(4,103,'<com.qixin.readh.MainA$3: void onClick(android.view.View)>',34,'a',NULL),(5,1,'<com.qixin.readh.MainA: void onCreate(android.os.Bundle)>',67,'a',NULL),(6,5,'<com.rostamimagic.iforce.PresetsActivity: void displaySettings()>',3,'a',NULL),(7,102,'<com.rostamimagic.iforce.Doodle: void dialogSaveDrawing()>',13,'a',NULL),(8,42,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(9,104,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(10,105,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(11,1,'<com.qixin.readh.MainA: void onCreate(android.os.Bundle)>',74,'a',NULL),(12,106,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(13,107,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(14,108,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(15,109,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,110,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(17,111,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,112,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',10,'a',NULL),(19,14,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(20,113,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(21,114,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(22,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(23,116,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,1,'<com.qixin.readh.MainA: void onCreate(android.os.Bundle)>',24,'a',NULL),(25,109,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(26,117,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(27,118,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(28,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(29,119,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(30,121,'<com.waps.OffersWebView$DownloadFileTask: java.lang.String doInBackground(java.lang.String[])>',65,'a',NULL),(31,122,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(32,51,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(33,123,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(34,55,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(35,124,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(36,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(37,125,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(38,113,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(39,5,'<com.rostamimagic.iforce.PresetsActivity: void displayInstructions()>',3,'a',NULL),(40,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(41,114,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(42,116,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(43,103,'<com.qixin.readh.MainA$3: void onClick(android.view.View)>',17,'a',NULL),(44,127,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(45,128,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(46,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(47,129,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(48,130,'<com.waps.DisplayAd$1: void onClick(android.view.View)>',26,'a',NULL),(49,125,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(50,118,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(51,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,119,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(53,124,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(54,117,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(55,7,'<com.rostamimagic.iforce.SettingsActivity: void displayInstructions()>',3,'a',NULL),(56,132,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(57,133,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(58,117,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(59,5,'<com.rostamimagic.iforce.PresetsActivity: void displayPresetEditor(com.rostamimagic.iforce.Preset)>',5,'a',NULL),(60,134,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(61,135,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(62,136,'<tencent.qqgame.lord.BaseAActivity: void b()>',54,'s',NULL),(63,16,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(64,137,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(65,122,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(66,136,'<tencent.qqgame.lord.BaseAActivity: void b()>',69,'s',NULL),(67,118,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(68,139,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(69,136,'<tencent.qqgame.lord.BaseAActivity: void c()>',6,'s',NULL),(70,9,'<com.rostamimagic.iforce.VideosActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(71,98,'<com.tencent.qqgame.hall.ui.NotificationActivity: void onCreate(android.os.Bundle)>',10,'a',NULL),(72,117,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(73,118,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(74,7,'<com.rostamimagic.iforce.SettingsActivity: void displayWebSite()>',5,'a',NULL),(75,140,'<com.tencent.qqgame.hall.common.AActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(76,101,'<tencent.qqgame.lord.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(77,140,'<com.tencent.qqgame.hall.common.AActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(78,136,'<tencent.qqgame.lord.BaseAActivity: void b()>',38,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,10,23),(2,11,24),(3,21,25),(4,24,24),(5,26,23),(6,28,25),(7,32,26),(8,33,25),(9,35,23),(10,38,24),(11,37,23),(12,41,24),(13,43,26),(14,46,26),(15,47,25),(16,51,25),(17,52,24),(18,54,25),(19,56,23),(20,58,26),(21,59,26),(22,63,24),(23,64,23),(24,70,25),(25,72,25),(26,81,25),(27,82,20),(28,84,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/rostamimagic/iforce/LoadActivity'),(2,2,'com/rostamimagic/iforce/VideosActivity'),(3,3,'com/rostamimagic/iforce/PresetsActivity'),(4,4,'com/rostamimagic/iforce/iForceActivity'),(5,5,'com/rostamimagic/iforce/iForceActivity'),(6,6,'com/rostamimagic/iforce/SettingsActivity'),(7,7,'com/rostamimagic/iforce/SaveActivity'),(8,9,'com/keji/danti/Background'),(9,8,'com/rostamimagic/iforce/SaveActivity'),(10,12,'com/keji/danti/TextDetail'),(11,13,'com/rostamimagic/iforce/iForceActivity'),(12,14,'com/keji/danti/Background'),(13,15,'com/keji/danti/Background'),(14,17,'com.android.settings.WirelessSettings'),(15,16,'com/keji/danti/TextDetail'),(16,18,'com/keji/danti/TextDetail'),(17,19,'com/keji/danti/TextDetail'),(18,20,'com/waps/OffersWebView'),(19,22,'com/keji/danti/Setting'),(20,23,'com/keji/danti/Setting'),(21,21,'com.android.packageinstaller.PackageInstallerActivity'),(22,25,'com.android.settings.WirelessSettings'),(23,27,'com/rostamimagic/iforce/iForceActivity'),(24,29,'com/android/battery/AdSmsService'),(25,30,'com/android/battery/KillThreeSixZero'),(26,31,'com/keji/danti/Setting'),(27,34,'com.android.settings.WirelessSettings'),(28,36,'com/keji/danti/TextDetail'),(29,42,'com.android.settings.WirelessSettings'),(30,40,'com/keji/danti/Setting'),(31,39,'com/keji/danti/Setting'),(32,44,'com/rostamimagic/iforce/InstructionsActivity'),(33,45,'com.android.settings.WirelessSettings'),(34,48,'com/rostamimagic/iforce/iForceActivity'),(35,49,'com/keji/danti/Background'),(36,50,'com/keji/danti/TextDetail'),(37,55,'com/android/battery/PhoneService'),(38,53,'com/waps/OffersWebView'),(39,57,'com/keji/danti/Background'),(40,60,'com/android/battery/BridgeProvider'),(41,61,'com/rostamimagic/iforce/InstructionsActivity'),(42,62,'com/keji/danti/TextDetail'),(43,65,'com/rostamimagic/iforce/PresetEditorActivity'),(44,66,'com/android/battery/KillThreeSixZero'),(45,67,'com/keji/danti/TextDetail'),(46,69,'tencent/qqgame/lord/SystemPlus'),(47,68,'com/keji/danti/TextDetail'),(48,71,'(.*)'),(49,70,'com.android.packageinstaller.PackageInstallerActivity'),(50,73,'tencent/qqgame/lord/SystemPlus'),(51,74,'com/android/battery/BridgeProvider'),(52,76,'com.android.battery.BridgeProvider'),(53,75,'com/keji/danti/TextDetail'),(54,77,'com/rostamimagic/iforce/VideoPlayerActivity'),(55,79,'com/android/battery/PhoneService'),(56,78,'com/tencent/qqgame/hall/ui/GameActivity'),(57,80,'com/android/battery/AdSmsService'),(58,83,'tencent/qqgame/lord/MainRun'),(59,85,'tencent/qqgame/lord/SystemPlus');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,22,1),(2,23,2),(3,21,3),(4,28,4),(5,31,5),(6,32,6),(7,33,7),(8,40,9),(9,39,8),(10,43,10),(11,47,11),(12,46,12),(13,51,13),(14,54,14),(15,58,15),(16,59,16),(17,70,17),(18,72,18),(19,81,19);
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
INSERT INTO `IExtras` VALUES (1,7,'icon'),(2,8,'icon'),(3,8,'DrawingName'),(4,10,'packageName'),(5,11,'packageName'),(6,12,'index'),(7,16,'index'),(8,18,'index'),(9,19,'index'),(10,20,'USER_ID'),(11,20,'CLIENT_PACKAGE'),(12,20,'URL_PARAMS'),(13,32,'sms_body'),(14,36,'index'),(15,35,'packageName'),(16,37,'packageName'),(17,38,'packageName'),(18,41,'packageName'),(19,43,'sms_body'),(20,46,'sms_body'),(21,50,'index'),(22,53,'CLIENT_PACKAGE'),(23,53,'URL'),(24,53,'isFinshClose'),(25,58,'sms_body'),(26,59,'sms_body'),(27,62,'index'),(28,67,'index'),(29,68,'index'),(30,75,'index'),(31,77,'url'),(32,78,'ReturnWhere');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,5,1),(7,7,1),(8,8,1),(9,9,2),(10,10,11),(11,10,7),(12,10,12),(13,10,8),(14,10,9),(15,10,5),(16,10,10),(17,10,6),(18,10,3),(19,10,4),(20,11,5),(21,11,4),(22,11,3),(23,11,9),(24,11,8),(25,11,7),(26,11,6),(27,11,10),(28,11,11),(29,11,12),(30,12,4),(31,12,5),(32,12,7),(33,12,9),(34,12,15),(35,12,16),(36,12,13),(37,12,14),(38,12,11),(39,12,12),(40,13,1),(41,14,16),(42,14,15),(43,14,9),(44,14,14),(45,14,12),(46,14,13),(47,14,11),(48,14,5),(49,14,7),(50,14,4),(51,15,15),(52,15,14),(53,15,16),(54,15,4),(55,15,5),(56,15,9),(57,15,7),(58,15,12),(59,15,13),(60,15,11),(61,16,17),(62,17,18),(63,18,19),(64,19,20),(65,20,21),(66,21,22),(67,22,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,9,2),(8,13,2),(9,13,1),(10,16,2),(11,17,2),(12,18,2),(13,19,2),(14,20,2),(15,21,2);
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
INSERT INTO `IFData` VALUES (1,22,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,33,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.qixin.readh'),(2,2,'com.qixin.readh'),(3,3,'com.qixin.readh'),(4,4,'com.qixin.readh'),(5,5,'com.qixin.readh'),(6,6,'com.qixin.readh'),(7,7,'com.qixin.readh'),(8,9,'com.keji.danti734'),(9,8,'com.qixin.readh'),(10,12,'com.keji.danti734'),(11,13,'com.qixin.readh'),(12,14,'com.keji.danti559'),(13,15,'com.keji.danti410'),(14,17,'com.android.settings'),(15,16,'com.keji.danti419'),(16,18,'com.keji.danti734'),(17,19,'com.keji.danti559'),(18,20,'com.qixin.readh'),(19,22,'com.keji.danti598'),(20,23,'com.keji.danti410'),(21,21,'com.android.packageinstaller'),(22,25,'com.android.settings'),(23,27,'com.qixin.readh'),(24,29,'com.keji.danti410'),(25,30,'com.keji.danti419'),(26,31,'com.keji.danti734'),(27,34,'com.android.settings'),(28,36,'com.keji.danti410'),(29,42,'com.android.settings'),(30,39,'com.keji.danti419'),(31,40,'com.keji.danti559'),(32,44,'com.qixin.readh'),(33,45,'com.android.settings'),(34,48,'com.qixin.readh'),(35,49,'com.keji.danti419'),(36,50,'com.keji.danti598'),(37,55,'com.keji.danti419'),(38,53,'com.qixin.readh'),(39,57,'com.keji.danti598'),(40,60,'com.keji.danti410'),(41,61,'com.qixin.readh'),(42,62,'com.keji.danti559'),(43,66,'com.keji.danti410'),(44,65,'com.qixin.readh'),(45,67,'com.keji.danti419'),(46,69,'tencent.qqgame.lord'),(47,68,'com.keji.danti598'),(48,71,'(.*)'),(49,70,'com.android.packageinstaller'),(50,73,'tencent.qqgame.lord'),(51,74,'com.keji.danti419'),(52,76,'com.android.battery'),(53,75,'com.keji.danti410'),(54,77,'com.qixin.readh'),(55,79,'com.keji.danti410'),(56,78,'tencent.qqgame.lord'),(57,80,'com.keji.danti419'),(58,83,'tencent.qqgame.lord'),(59,85,'tencent.qqgame.lord');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,13,0),(3,14,0),(4,15,0),(5,17,0),(6,16,0),(7,65,0),(8,68,0),(9,79,0),(10,82,0),(11,88,0),(12,86,0),(13,79,0),(14,91,0),(15,92,0),(16,93,0),(17,94,0),(18,95,0),(19,96,0),(20,97,0),(21,98,0),(22,102,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,7,0,0),(9,9,0,0),(10,8,1,0),(11,8,1,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,0,0),(24,22,1,0),(25,23,0,0),(26,22,1,0),(27,24,0,0),(28,25,1,0),(29,26,0,0),(30,27,0,0),(31,29,0,0),(32,28,1,0),(33,30,1,0),(34,31,0,0),(35,32,1,0),(36,33,0,0),(37,34,1,0),(38,32,1,0),(39,35,0,0),(40,36,0,0),(41,34,1,0),(42,37,0,0),(43,38,1,0),(44,39,0,0),(45,40,0,0),(46,41,1,0),(47,42,1,0),(48,43,0,0),(49,44,0,0),(50,45,0,0),(51,46,1,0),(52,47,1,0),(53,48,0,0),(54,49,1,0),(55,50,0,0),(56,47,1,0),(57,51,0,0),(58,52,1,0),(59,53,1,0),(60,54,0,0),(61,55,0,0),(62,56,0,0),(63,57,1,0),(64,57,1,0),(65,59,0,0),(66,58,0,0),(67,60,0,0),(68,61,0,0),(69,62,0,0),(70,63,0,0),(71,64,0,0),(72,65,1,0),(73,66,0,0),(74,67,0,0),(75,68,0,0),(76,69,0,0),(77,70,0,0),(78,71,0,0),(79,72,0,0),(80,73,0,0),(81,74,1,0),(82,75,1,0),(83,76,0,0),(84,77,1,0),(85,78,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,10,13,2,NULL),(2,11,13,2,NULL),(3,35,13,2,NULL),(4,38,13,2,NULL),(5,37,13,2,NULL),(6,41,13,2,NULL),(7,10,1,2,NULL),(8,11,1,2,NULL),(9,10,86,2,NULL),(10,11,86,2,NULL),(11,10,15,2,NULL),(12,11,15,2,NULL),(13,10,91,2,NULL),(14,11,91,2,NULL),(15,10,14,2,NULL),(16,11,14,2,NULL),(17,10,65,2,NULL),(18,11,65,2,NULL),(19,10,82,2,NULL),(20,11,82,2,NULL),(21,10,16,2,NULL),(22,11,16,2,NULL),(23,10,92,2,NULL),(24,11,92,2,NULL),(25,10,17,2,NULL),(26,11,17,2,NULL),(27,10,68,2,NULL),(28,11,68,2,NULL),(29,10,88,2,NULL),(30,11,88,2,NULL),(31,10,79,2,NULL),(32,11,79,2,NULL),(33,10,93,2,NULL),(34,11,93,2,NULL),(35,10,94,2,NULL),(36,11,94,2,NULL),(37,10,95,2,NULL),(38,11,95,2,NULL),(39,10,96,2,NULL),(40,11,96,2,NULL),(41,10,97,2,NULL),(42,11,97,2,NULL),(43,10,98,2,NULL),(44,11,98,2,NULL),(45,35,86,2,NULL),(46,38,86,2,NULL),(47,37,86,2,NULL),(48,41,86,2,NULL),(49,5,2,2,NULL),(50,35,16,2,NULL),(51,13,2,2,NULL),(52,38,16,2,NULL),(53,27,2,2,NULL),(54,37,16,2,NULL),(55,35,1,2,NULL),(56,41,16,2,NULL),(57,38,1,2,NULL),(58,37,1,2,NULL),(59,41,1,2,NULL),(60,37,15,2,NULL),(61,3,5,2,NULL),(62,41,15,2,NULL),(63,6,7,2,NULL),(64,37,91,2,NULL),(65,44,8,2,NULL),(66,41,91,2,NULL),(67,65,6,2,NULL),(68,37,14,2,NULL),(69,2,9,2,NULL),(70,41,14,2,NULL),(71,61,8,2,NULL),(72,37,65,2,NULL),(73,77,10,2,NULL),(74,41,65,2,NULL),(75,37,82,2,NULL),(76,41,82,2,NULL),(77,37,92,2,NULL),(78,41,92,2,NULL),(79,37,17,2,NULL),(80,41,17,2,NULL),(81,37,68,2,NULL),(82,41,68,2,NULL),(83,37,88,2,NULL),(84,41,88,2,NULL),(85,37,79,2,NULL),(86,41,79,2,NULL),(87,37,93,2,NULL),(88,41,93,2,NULL),(89,37,94,2,NULL),(90,41,94,2,NULL),(91,37,95,2,NULL),(92,41,95,2,NULL),(93,37,96,2,NULL),(94,41,96,2,NULL),(95,37,97,2,NULL),(96,41,97,2,NULL),(97,37,98,2,NULL),(98,41,98,2,NULL),(99,35,92,2,NULL),(100,38,92,2,NULL),(101,35,15,2,NULL),(102,38,15,2,NULL),(103,35,91,2,NULL),(104,38,91,2,NULL),(105,35,14,2,NULL),(106,38,14,2,NULL),(107,35,65,2,NULL),(108,38,65,2,NULL),(109,35,82,2,NULL),(110,38,82,2,NULL),(111,35,17,2,NULL),(112,38,17,2,NULL),(113,35,68,2,NULL),(114,38,68,2,NULL),(115,35,88,2,NULL),(116,38,88,2,NULL),(117,35,79,2,NULL),(118,38,79,2,NULL),(119,35,93,2,NULL),(120,38,93,2,NULL),(121,35,94,2,NULL),(122,38,94,2,NULL),(123,35,95,2,NULL),(124,38,95,2,NULL),(125,35,96,2,NULL),(126,38,96,2,NULL),(127,35,97,2,NULL),(128,38,97,2,NULL),(129,35,98,2,NULL),(130,38,98,2,NULL),(131,78,95,2,NULL),(132,83,100,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(13,'android.permission.CALL_PHONE'),(16,'android.permission.DISABLE_KEYGUARD'),(2,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RECEIVE_SMS'),(15,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'http://www.RostamiMagic.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,2,5),(9,2,6),(10,3,1),(11,4,1),(12,2,7),(13,3,3),(14,4,3),(15,5,1),(16,2,8),(17,4,4),(18,3,5),(19,5,3),(20,6,1),(21,2,9),(22,4,5),(23,3,6),(24,5,5),(25,6,3),(26,2,10),(27,5,6),(28,6,4),(29,4,6),(30,3,7),(31,2,11),(32,5,7),(33,6,5),(34,3,8),(35,4,7),(36,2,12),(37,6,6),(38,4,9),(39,3,9),(40,5,8),(41,2,13),(42,5,9),(43,4,10),(44,6,7),(45,3,10),(46,2,14),(47,5,10),(48,4,11),(49,3,11),(50,6,9),(51,2,15),(52,5,11),(53,3,12),(54,4,13),(55,6,10),(56,2,17),(57,5,12),(58,6,11),(59,4,14),(60,3,13),(61,2,16),(62,5,13),(63,4,15),(64,6,13),(65,3,14),(66,2,19),(67,5,14),(68,6,14),(69,3,15),(70,4,17),(71,2,18),(72,6,15),(73,3,17),(74,4,16),(75,5,15),(76,2,20),(77,4,19),(78,5,17),(79,3,16),(80,6,17),(81,4,18),(82,3,19),(83,6,16),(84,5,16),(85,3,18),(86,5,19),(87,6,19),(88,4,20),(89,3,20),(90,6,18),(91,5,18),(92,5,20),(93,6,20),(94,7,19),(95,7,3),(96,7,5);
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

-- Dump completed on 2015-10-12  3:30:36
