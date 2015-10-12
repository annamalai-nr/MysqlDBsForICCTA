-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_51
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(25,'NULL-CONSTANT'),(7,'android.intent.action.ACTION_POWER_CONNECTED'),(18,'android.intent.action.BATTERY_LOW'),(15,'android.intent.action.BATTERY_OKAY'),(9,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(28,'android.intent.action.PACKAGE_ADDED'),(29,'android.intent.action.PHONE_STATE'),(23,'android.intent.action.SEND'),(27,'android.intent.action.SENDTO'),(14,'android.intent.action.UMS_CONNECTED'),(6,'android.intent.action.UMS_DISCONNECTED'),(12,'android.intent.action.USER_PRESENT'),(24,'android.intent.action.VIEW'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.net.conn.MEDIA_NOFS'),(10,'android.net.wifi.PICK_WIFI_WORK'),(16,'android.provider.Telephony.SIM_FULL'),(8,'android.provider.Telephony.SMS_RECEIVED'),(17,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(19,'com.tencent.qqgame.hall.ui.Game'),(3,'com.tencent.qqgame.hall.ui.HallList'),(20,'com.tencent.qqgame.hall.ui.HelpAbout'),(2,'com.tencent.qqgame.hall.ui.Login'),(22,'com.tencent.qqgame.hall.ui.NotificationActivity'),(21,'com.tencent.qqgame.hall.ui.SysSetting'),(4,'com.tencent.qqgame.hall.ui.TableList');
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
INSERT INTO `Applications` VALUES (1,'com.pursuegirls',29),(2,'com.keji.danti707',32),(3,'com.keji.danti1003',32),(4,'com.catking.jndlj',1),(5,'com.keji.danti417',27),(6,'com.keji.danti422',25),(7,'tencent.qqgame.lord',24);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pursuegirls.MainAct'),(2,1,'com.pursuegirls.ListAct'),(3,1,'com.pursuegirls.EntryAct'),(4,1,'com.pursuegirls.SearchAct'),(5,1,'com.adwo.adsdk.AdwoSplashAdActivity'),(6,2,'com.keji.danti.MainA'),(7,3,'com.keji.danti.MainA'),(8,5,'com.keji.danti.MainA'),(9,2,'com.keji.danti.Boutique'),(10,2,'com.keji.danti.Background'),(11,3,'com.keji.danti.Boutique'),(12,2,'com.keji.danti.Lists'),(13,5,'com.keji.danti.Boutique'),(14,4,'com.catking.jndlj.LaunchView'),(15,3,'com.keji.danti.Background'),(16,2,'com.keji.danti.History'),(17,6,'com.keji.danti.MainA'),(18,5,'com.keji.danti.Background'),(19,3,'com.keji.danti.Lists'),(20,2,'com.keji.danti.TextDetail'),(21,5,'com.keji.danti.Lists'),(22,4,'com.catking.jndlj.GameActivity'),(23,3,'com.keji.danti.History'),(24,2,'com.keji.danti.Setting'),(25,5,'com.keji.danti.History'),(26,6,'com.keji.danti.Boutique'),(27,4,'com.catking.jndlj.DetailActivity'),(28,3,'com.keji.danti.TextDetail'),(29,2,'com.android.view.custom.BaseAActivity'),(30,5,'com.keji.danti.TextDetail'),(31,6,'com.keji.danti.Background'),(32,7,'com.tencent.qqgame.hall.ui.LoginActivity'),(33,4,'com.catking.jndlj.TextActivity'),(34,3,'com.keji.danti.Setting'),(35,2,'com.android.view.custom.FirstAActivity'),(36,5,'com.keji.danti.Setting'),(37,6,'com.keji.danti.Lists'),(38,4,'com.waps.OffersWebView'),(39,3,'com.android.view.custom.BaseAActivity'),(40,2,'com.android.view.custom.SecondAActivity'),(41,5,'com.android.battery.BalckActivity2'),(42,6,'com.keji.danti.History'),(43,3,'com.android.view.custom.FirstAActivity'),(44,4,'com.android.view.custom.BaseAActivity'),(45,2,'com.android.view.custom.ThirdAActivity'),(46,5,'com.android.battery.BalckActivity'),(47,6,'com.keji.danti.TextDetail'),(48,3,'com.android.view.custom.SecondAActivity'),(49,4,'com.android.view.custom.FirstAActivity'),(50,2,'com.android.view.custom.FourthAActivity'),(51,5,'com.android.battery.KillThreeSixZero'),(52,6,'com.keji.danti.Setting'),(53,3,'com.android.view.custom.ThirdAActivity'),(54,4,'com.android.view.custom.SecondAActivity'),(55,2,'com.android.view.custom.FirstAService'),(56,5,'com.android.battery.BridgeProvider'),(57,7,'com.tencent.qqgame.hall.ui.HallListActivity'),(58,6,'com.keji.danti.AdSmsService'),(59,3,'com.android.view.custom.FourthAActivity'),(60,4,'com.android.view.custom.ThirdAActivity'),(61,2,'com.android.view.custom.SecondAService'),(62,6,'com.android.adomb.AdSmsService'),(63,3,'com.android.view.custom.FirstAService'),(64,4,'com.android.view.custom.FourthAActivity'),(65,2,'com.android.view.custom.ThirdAService'),(66,5,'com.android.battery.AdSmsService'),(67,6,'com.android.adomb.SystemPlus'),(68,3,'com.android.view.custom.SecondAService'),(69,4,'com.android.view.custom.FirstAService'),(70,2,'com.android.view.custom.FourthAService'),(71,5,'com.android.battery.PhoneService'),(72,7,'com.tencent.qqgame.hall.ui.TableListActivity'),(73,6,'com.android.adomb.MainRun'),(74,4,'com.android.view.custom.SecondAService'),(75,3,'com.android.view.custom.ThirdAService'),(76,2,'com.android.view.custom.BaseABroadcastReceiver'),(77,5,'com.android.battery.BaseBroadcastReceiver'),(78,6,'com.keji.danti.BaseBroadcastReceiver'),(79,3,'com.android.view.custom.FourthAService'),(80,4,'com.android.view.custom.ThirdAService'),(81,4,'com.android.view.custom.FourthAService'),(82,3,'com.android.view.custom.BaseABroadcastReceiver'),(83,7,'com.tencent.qqgame.hall.ui.GameActivity'),(84,6,'com.android.adomb.ForAlarm'),(85,4,'com.android.view.custom.BaseABroadcastReceiver'),(86,7,'com.tencent.qqgame.hall.ui.HelpAboutActivity'),(87,7,'com.tencent.qqgame.hall.ui.SysSettingActivity'),(88,7,'com.tencent.qqgame.hall.ui.NotificationActivity'),(89,7,'tencent.qqgame.lord.SystemPlus'),(90,7,'tencent.qqgame.lord.MainRun'),(91,7,'tencent.qqgame.lord.ForAlarm'),(92,1,'com.pursuegirls.m'),(93,1,'com.pursuegirls.o'),(94,1,'com.pursuegirls.q'),(95,1,'com.android.sf.dna.To'),(96,1,'com.pursuegirls.h'),(97,1,'com.pursuegirls.b'),(98,6,'com.keji.danti.a.ar'),(99,6,'com.keji.danti.a.a'),(100,6,'com.keji.danti.a.st'),(101,6,'com.keji.danti.pf'),(102,2,'com.keji.danti.ph'),(103,3,'com.keji.danti.ph'),(104,2,'com.keji.danti.a.sv'),(105,5,'com.keji.danti.a.a'),(106,6,'com.keji.danti.c.pa'),(107,3,'com.keji.danti.a.ao'),(108,2,'com.keji.danti.a.ao'),(109,5,'com.android.battery.b.pa'),(110,6,'com.madhouse.android.ads._'),(111,2,'com.sec.android.providers.drm.Onion'),(112,6,'com.keji.danti.a.ao'),(113,5,'com.keji.danti.pf'),(114,3,'com.keji.danti.a.ar'),(115,2,'com.keji.danti.a.sy'),(116,5,'com.keji.danti.a.ar'),(117,3,'com.keji.danti.a.sv'),(118,3,'com.sec.android.providers.drm.Onion'),(119,5,'com.keji.danti.a.ao'),(120,2,'com.keji.danti.a.ar'),(121,4,'com.waps.s'),(122,3,'com.keji.danti.a.sy'),(123,5,'com.keji.danti.a.st'),(124,7,'tencent.qqgame.lord.BaseAActivity'),(125,4,'com.waps.AppConnect'),(126,7,'com.tencent.qqgame.hall.common.AActivity'),(127,4,'com.waps.aa'),(128,4,'com.waps.q'),(129,4,'com.waps.z'),(130,4,'com.sec.android.providers.drm.Onion'),(131,4,'com.waps.ac'),(132,4,'com.catking.utils.MyNotificationManager$IncomingCallReceiver'),(133,4,'com.waps.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'isTestMode'),(2,2,'com/pursuegirls/c/a'),(3,2,'seq'),(4,3,'com/pursuegirls/c/a'),(5,5,'Adwo_PID'),(6,47,'index'),(7,15,'data'),(8,31,'data'),(9,30,'notSaveDate'),(10,77,'pdus'),(11,30,'index'),(12,47,'notSaveDate'),(13,76,'PID'),(14,10,'data'),(15,20,'index'),(16,82,'PID'),(17,28,'notSaveDate'),(18,18,'data'),(19,77,'APP_UID'),(20,39,'CLIENT_PACKAGE'),(21,39,'Notify_Url_Params'),(22,20,'notSaveDate'),(23,12,'appsec'),(24,19,'appsec'),(25,27,'DEVICE_ID'),(26,39,'DEVICE_ID'),(27,43,'DEVICE_ID'),(28,23,'DEVICE_ID'),(29,14,'DEVICE_ID'),(30,39,'ACTIVITY_FLAG'),(31,28,'index'),(32,83,'IsViewGame'),(33,72,'Data'),(34,57,'ServerID'),(35,30,'appsec'),(36,21,'appsec'),(37,57,'HallIdList'),(38,57,'PlayerInHallNum'),(39,57,'HallNameList'),(40,39,'URL'),(41,32,'PicData'),(42,57,'HallType'),(43,85,'PID'),(44,27,'CLIENT_PACKAGE'),(45,43,'CLIENT_PACKAGE'),(46,23,'CLIENT_PACKAGE'),(47,14,'CLIENT_PACKAGE'),(48,39,'offers_webview_tag'),(49,27,'APP_ID'),(50,39,'APP_ID'),(51,43,'APP_ID'),(52,23,'APP_ID'),(53,14,'APP_ID'),(54,39,'UrlPath'),(55,27,'WAPS_ID'),(56,39,'WAPS_ID'),(57,43,'WAPS_ID'),(58,23,'WAPS_ID'),(59,14,'WAPS_ID'),(60,27,'WAPS_PID'),(61,39,'WAPS_PID'),(62,43,'WAPS_PID'),(63,23,'WAPS_PID'),(64,14,'WAPS_PID'),(65,39,'isFinshClose'),(66,39,'Notify_Id'),(67,39,'Offers_URL'),(68,39,'URL_PARAMS'),(69,39,'SHWO_FLAG'),(70,39,'USER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,75,'s',0,NULL,NULL),(75,74,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,79,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'r',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,128,'r',1,NULL,NULL),(93,132,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,4),(8,8,2),(9,9,52),(10,10,17),(11,11,84),(12,12,17),(13,13,37),(14,14,37),(15,15,12),(16,16,26),(17,17,19),(18,18,12),(19,19,13),(20,20,78),(21,21,11),(22,22,9),(23,23,77),(24,24,37),(25,25,38),(26,26,76),(27,27,47),(28,28,21),(29,29,6),(30,30,28),(31,31,77),(32,32,47),(33,33,24),(34,34,36),(35,35,19),(36,36,17),(37,37,29),(38,38,73),(39,39,82),(40,40,30),(41,41,43),(42,41,27),(43,42,20),(44,43,28),(45,44,77),(46,45,30),(47,47,20),(48,46,23),(49,48,7),(50,49,43),(51,49,14),(52,50,33),(53,51,21),(54,52,86),(55,52,83),(56,52,72),(57,52,57),(58,52,87),(59,52,88),(60,52,32),(61,53,8),(62,54,88),(63,55,8),(64,56,91),(65,57,77),(66,58,43),(67,58,27),(68,58,14),(69,59,32),(70,59,57),(71,59,72),(72,59,83),(73,60,32),(74,60,86),(75,60,57),(76,60,83),(77,60,88),(78,60,72),(79,60,87),(80,61,14),(81,61,27),(82,61,43),(83,62,32),(84,62,72),(85,62,87),(86,62,88),(87,62,86),(88,62,83),(89,62,57),(90,63,39),(91,64,72),(92,64,57),(93,64,32),(94,64,83),(95,65,88),(96,65,72),(97,65,57),(98,65,32),(99,65,83),(100,65,86),(101,65,87),(102,66,39),(103,67,85),(104,68,39),(105,69,14),(106,69,43),(107,70,14),(108,70,43),(109,71,43),(110,71,14),(111,72,14),(112,72,43),(113,73,23),(114,74,23),(115,75,34),(116,76,43),(117,76,14),(118,77,43),(119,78,39),(120,79,43),(121,79,27),(122,80,39),(123,81,39),(124,82,23),(125,83,27),(126,83,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.pursuegirls.EntryAct: boolean onMenuItemSelected(int,android.view.MenuItem)>',18,'a',NULL),(2,1,'<com.pursuegirls.MainAct: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(3,92,'<com.pursuegirls.m: void onClick(android.view.View)>',6,'a',NULL),(4,93,'<com.pursuegirls.o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(5,94,'<com.pursuegirls.q: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(6,95,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(7,96,'<com.pursuegirls.h: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(8,97,'<com.pursuegirls.b: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(9,98,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(10,99,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(11,84,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(12,17,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(13,100,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(14,101,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(15,102,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(16,99,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(17,103,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,104,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(19,105,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(20,106,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(21,107,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(22,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(23,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(24,110,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(25,39,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,111,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,112,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(28,113,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(29,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(30,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(31,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(32,112,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(33,115,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(34,116,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,117,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(36,17,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(37,29,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,73,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(39,118,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(40,119,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(41,27,'<com.catking.jndlj.DetailActivity: void doQuit()>',5,'a',NULL),(42,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(44,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(45,119,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(46,22,'<com.catking.jndlj.GameActivity: void jumpToDetailActivity(int)>',12,'a',NULL),(47,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(48,107,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(49,121,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(50,122,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,123,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(52,124,'<tencent.qqgame.lord.BaseAActivity: void b()>',38,'s',NULL),(53,105,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(54,88,'<com.tencent.qqgame.hall.ui.NotificationActivity: void onCreate(android.os.Bundle)>',10,'a',NULL),(55,8,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(56,91,'<tencent.qqgame.lord.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(57,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(58,125,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(59,126,'<com.tencent.qqgame.hall.common.AActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(60,124,'<tencent.qqgame.lord.BaseAActivity: void c()>',6,'s',NULL),(61,27,'<com.catking.jndlj.DetailActivity: void jumpToListActivity()>',3,'a',NULL),(62,124,'<tencent.qqgame.lord.BaseAActivity: void b()>',54,'s',NULL),(63,127,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,126,'<com.tencent.qqgame.hall.common.AActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(65,124,'<tencent.qqgame.lord.BaseAActivity: void b()>',69,'s',NULL),(66,129,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(67,130,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(68,131,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(69,14,'<com.catking.jndlj.LaunchView: void popContentView()>',5,'a',NULL),(70,121,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(71,14,'<com.catking.jndlj.LaunchView: void doQuit()>',5,'a',NULL),(72,121,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(73,22,'<com.catking.jndlj.GameActivity: void jumpToDetailActivity(int)>',16,'a',NULL),(74,22,'<com.catking.jndlj.GameActivity: void goBackToLoginActivity()>',6,'a',NULL),(75,33,'<com.catking.jndlj.TextActivity: void jumpToListActivity()>',3,'a',NULL),(76,14,'<com.catking.jndlj.LaunchView: void onResume()>',15,'a',NULL),(77,44,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(78,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(79,125,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(80,133,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(81,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(82,22,'<com.catking.jndlj.GameActivity: void jumpToDetailActivity(int)>',7,'a',NULL),(83,125,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,23),(2,5,23),(3,17,24),(4,19,24),(5,21,24),(6,22,24),(7,24,25),(8,25,26),(9,26,26),(10,27,25),(11,28,27),(12,38,25),(13,39,26),(14,41,26),(15,43,25),(16,44,1),(17,45,27),(18,46,27),(19,48,27),(20,55,1),(21,57,1),(22,60,1),(23,61,24),(24,63,1),(25,66,21),(26,71,20),(27,74,24),(28,75,26),(29,76,25),(30,79,24),(31,80,24),(32,81,1),(33,87,25),(34,88,26),(35,90,1),(36,91,1),(37,93,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,44,3),(2,55,1),(3,57,4),(4,60,1),(5,63,4),(6,81,3),(7,90,1),(8,91,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/pursuegirls/SearchAct'),(2,3,'com/pursuegirls/SearchAct'),(3,4,'com/pursuegirls/ListAct'),(4,6,'(.*)'),(5,7,'com/pursuegirls/EntryAct'),(6,8,'com/pursuegirls/EntryAct'),(7,9,'com/keji/danti/Background'),(8,10,'com.android.settings.WirelessSettings'),(9,11,'com/android/adomb/MainRun'),(10,12,'com.android.battery.BridgeProvider'),(11,13,'com/keji/danti/TextDetail'),(12,14,'com/keji/danti/TextDetail'),(13,15,'com/keji/danti/TextDetail'),(14,16,'com/keji/danti/TextDetail'),(15,18,'com/keji/danti/TextDetail'),(16,20,'com/keji/danti/AdSmsService'),(17,23,'com/android/battery/AdSmsService'),(18,30,'com.android.settings.WirelessSettings'),(19,29,'com/keji/danti/TextDetail'),(20,31,'com/keji/danti/Setting'),(21,32,'com/android/battery/BridgeProvider'),(22,33,'com/keji/danti/Setting'),(23,34,'com/keji/danti/Background'),(24,35,'com/keji/danti/Background'),(25,36,'com/keji/danti/TextDetail'),(26,37,'com/android/adomb/SystemPlus'),(27,40,'com.android.battery.BridgeProvider'),(28,42,'com/keji/danti/Setting'),(29,47,'com/android/battery/KillThreeSixZero'),(30,50,'com/catking/jndlj/TextActivity'),(31,51,'com.android.settings.WirelessSettings'),(32,49,'com/keji/danti/Setting'),(33,53,'com/keji/danti/Background'),(34,54,'com/keji/danti/TextDetail'),(35,56,'tencent/qqgame/lord/SystemPlus'),(36,58,'com.android.settings.WirelessSettings'),(37,59,'com/tencent/qqgame/hall/ui/GameActivity'),(38,62,'tencent/qqgame/lord/MainRun'),(39,61,'com.android.packageinstaller.PackageInstallerActivity'),(40,64,'com/android/battery/PhoneService'),(41,65,'com/waps/OffersWebView'),(42,67,'com.android.battery.BridgeProvider'),(43,68,'com/catking/jndlj/GameActivity'),(44,69,'tencent/qqgame/lord/SystemPlus'),(45,70,'com/waps/OffersWebView'),(46,72,'tencent/qqgame/lord/SystemPlus'),(47,73,'com/waps/OffersWebView'),(48,77,'NULL-CONSTANT'),(49,78,'com/catking/jndlj/GameActivity'),(50,82,'com/waps/OffersWebView'),(51,83,'com/catking/jndlj/DetailActivity'),(52,84,'com/catking/jndlj/LaunchView'),(53,85,'com/catking/jndlj/GameActivity'),(54,86,'(.*)'),(55,92,'com/waps/OffersWebView'),(56,94,'(.*)'),(57,95,'com/catking/jndlj/TextActivity'),(58,96,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,17,1),(2,19,2),(3,21,3),(4,22,4),(5,28,6),(6,31,7),(7,33,8),(8,42,9),(9,45,10),(10,46,11),(11,49,12),(12,48,13),(13,61,14),(14,74,15),(15,79,16),(16,80,17),(17,93,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.TEXT'),(2,1,'android.intent.extra.SUBJECT'),(3,4,'com/pursuegirls/c/a'),(4,4,'seq'),(5,5,'android.intent.extra.TEXT'),(6,5,'android.intent.extra.SUBJECT'),(7,7,'com/pursuegirls/c/a'),(8,8,'com/pursuegirls/c/a'),(9,13,'index'),(10,14,'index'),(11,15,'index'),(12,16,'index'),(13,18,'index'),(14,24,'packageName'),(15,26,'packageName'),(16,28,'sms_body'),(17,29,'index'),(18,36,'index'),(19,38,'packageName'),(20,39,'packageName'),(21,45,'sms_body'),(22,46,'sms_body'),(23,50,'index'),(24,48,'sms_body'),(25,54,'index'),(26,59,'ReturnWhere'),(27,65,'USER_ID'),(28,65,'CLIENT_PACKAGE'),(29,65,'Offers_URL'),(30,65,'offers_webview_tag'),(31,65,'URL_PARAMS'),(32,70,'Notify_Url_Params'),(33,70,'UrlPath'),(34,70,'ACTIVITY_FLAG'),(35,70,'isFinshClose'),(36,70,'offers_webview_tag'),(37,73,'UrlPath'),(38,73,'ACTIVITY_FLAG'),(39,73,'isFinshClose'),(40,73,'offers_webview_tag'),(41,82,'CLIENT_PACKAGE'),(42,82,'URL'),(43,82,'isFinshClose'),(44,82,'offers_webview_tag'),(45,87,'packageName'),(46,88,'packageName'),(47,92,'UrlPath'),(48,92,'ACTIVITY_FLAG'),(49,92,'offers_webview_tag'),(50,92,'URL_PARAMS'),(51,95,'index'),(52,96,'USER_ID'),(53,96,'CLIENT_PACKAGE'),(54,96,'Offers_URL'),(55,96,'offers_webview_tag'),(56,96,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,3),(11,11,4),(12,12,6),(13,12,5),(14,12,8),(15,12,7),(16,12,10),(17,12,9),(18,12,13),(19,12,14),(20,12,11),(21,12,12),(22,13,11),(23,13,9),(24,13,7),(25,13,12),(26,13,13),(27,14,16),(28,14,15),(29,14,9),(30,14,12),(31,14,13),(32,14,11),(33,14,8),(34,14,18),(35,14,7),(36,14,17),(37,15,14),(38,15,5),(39,15,8),(40,15,9),(41,15,6),(42,15,7),(43,15,12),(44,15,13),(45,15,10),(46,15,11),(47,16,5),(48,16,6),(49,16,7),(50,16,8),(51,16,9),(52,16,10),(53,16,11),(54,16,12),(55,16,13),(56,16,14),(57,17,19),(58,18,20),(59,19,21),(60,20,22),(61,21,28),(62,22,29);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,7,2),(9,8,2),(10,10,2),(11,11,2),(12,17,2),(13,18,2),(14,19,2),(15,20,2);
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
INSERT INTO `IFData` VALUES (1,21,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'message','rfc822'),(2,5,'message','rfc822'),(3,74,'application','vnd.android.package-archive'),(4,93,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.pursuegirls'),(2,3,'com.pursuegirls'),(3,4,'com.pursuegirls'),(4,6,'(.*)'),(5,7,'com.pursuegirls'),(6,8,'com.pursuegirls'),(7,9,'com.keji.danti422'),(8,10,'com.android.settings'),(9,11,'com.keji.danti422'),(10,12,'com.android.battery'),(11,13,'com.keji.danti422'),(12,14,'com.keji.danti422'),(13,15,'com.keji.danti707'),(14,16,'com.keji.danti1003'),(15,18,'com.keji.danti707'),(16,20,'com.keji.danti422'),(17,23,'com.keji.danti417'),(18,30,'com.android.settings'),(19,29,'com.keji.danti417'),(20,31,'com.keji.danti1003'),(21,32,'com.keji.danti417'),(22,33,'com.keji.danti422'),(23,34,'com.keji.danti707'),(24,35,'com.keji.danti417'),(25,37,'com.keji.danti422'),(26,36,'com.keji.danti1003'),(27,40,'com.android.battery'),(28,42,'com.keji.danti417'),(29,47,'com.keji.danti417'),(30,50,'com.catking.jndlj'),(31,51,'com.android.settings'),(32,49,'com.keji.danti707'),(33,53,'com.keji.danti1003'),(34,54,'com.keji.danti417'),(35,55,'(.*)'),(36,56,'tencent.qqgame.lord'),(37,58,'com.android.settings'),(38,57,'(.*)'),(39,59,'tencent.qqgame.lord'),(40,60,'NULL-CONSTANT'),(41,62,'tencent.qqgame.lord'),(42,61,'com.android.packageinstaller'),(43,63,'NULL-CONSTANT'),(44,64,'com.keji.danti417'),(45,65,'com.catking.jndlj'),(46,67,'com.android.battery'),(47,68,'com.catking.jndlj'),(48,69,'tencent.qqgame.lord'),(49,70,'com.catking.jndlj'),(50,72,'tencent.qqgame.lord'),(51,73,'com.catking.jndlj'),(52,77,'NULL-CONSTANT'),(53,78,'com.catking.jndlj'),(54,82,'com.catking.jndlj'),(55,83,'com.catking.jndlj'),(56,84,'com.catking.jndlj'),(57,85,'com.catking.jndlj'),(58,86,'com.catking.jndlj'),(59,90,'(.*)'),(60,91,'(.*)'),(61,92,'com.catking.jndlj'),(62,94,'(.*)'),(63,95,'com.catking.jndlj'),(64,96,'com.catking.jndlj');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,14,0),(6,17,0),(7,32,0),(8,32,0),(9,56,0),(10,57,0),(11,72,0),(12,76,0),(13,78,0),(14,77,0),(15,82,0),(16,85,0),(17,83,0),(18,86,0),(19,87,0),(20,88,0),(21,92,0),(22,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,17,0,0),(17,16,1,0),(18,18,0,0),(19,19,1,0),(20,20,0,0),(21,21,1,0),(22,22,1,0),(23,23,0,0),(24,25,1,0),(25,26,1,0),(26,25,1,0),(27,26,1,0),(28,27,1,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,34,0,0),(36,35,0,0),(37,36,0,0),(38,37,1,0),(39,37,1,0),(40,38,0,0),(41,39,1,0),(42,40,0,0),(43,39,1,0),(44,41,1,0),(45,42,1,0),(46,43,1,0),(47,44,0,0),(48,45,1,0),(49,47,0,0),(50,46,0,0),(51,48,0,0),(52,49,1,0),(53,50,0,0),(54,51,0,0),(55,49,1,0),(56,52,0,0),(57,49,1,0),(58,53,0,0),(59,54,0,0),(60,49,1,0),(61,55,0,0),(62,56,0,0),(63,49,1,0),(64,57,0,0),(65,58,0,0),(66,59,1,0),(67,60,0,0),(68,61,0,0),(69,62,0,0),(70,63,0,0),(71,64,1,0),(72,65,0,0),(73,63,0,0),(74,66,1,0),(75,67,1,0),(76,67,1,0),(77,68,0,0),(78,69,0,0),(79,70,1,0),(80,70,1,0),(81,71,1,0),(82,72,0,0),(83,73,0,0),(84,74,0,0),(85,75,0,0),(86,76,0,0),(87,77,1,0),(88,77,1,0),(89,78,1,0),(90,78,1,0),(91,78,1,0),(92,79,0,0),(93,80,1,0),(94,81,0,0),(95,82,0,0),(96,83,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(13,'android.permission.CALL_PHONE'),(16,'android.permission.DISABLE_KEYGUARD'),(22,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(23,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(12,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(18,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RECEIVE_SMS'),(15,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(21,'android.permission.SET_WALLPAPER'),(19,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,24,5);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,5),(9,2,6),(10,2,7),(11,3,1),(12,2,8),(13,3,2),(14,5,1),(15,2,9),(16,3,5),(17,5,2),(18,4,1),(19,2,10),(20,3,6),(21,5,3),(22,4,2),(23,2,11),(24,3,7),(25,4,3),(26,5,5),(27,2,12),(28,4,5),(29,5,6),(30,3,8),(31,2,13),(32,4,6),(33,3,9),(34,5,7),(35,2,14),(36,3,11),(37,4,7),(38,5,9),(39,2,15),(40,4,8),(41,3,12),(42,5,10),(43,2,17),(44,4,9),(45,3,13),(46,5,11),(47,2,16),(48,4,11),(49,3,14),(50,5,13),(51,2,19),(52,4,12),(53,3,15),(54,5,14),(55,2,18),(56,5,15),(57,4,13),(58,3,17),(59,2,20),(60,3,16),(61,4,14),(62,5,17),(63,4,15),(64,5,16),(65,3,19),(66,4,17),(67,5,19),(68,3,18),(69,6,17),(70,3,20),(71,5,18),(72,4,16),(73,6,1),(74,5,20),(75,4,19),(76,6,19),(77,4,18),(78,6,2),(79,4,21),(80,6,3),(81,4,20),(82,6,5),(83,4,23),(84,6,9),(85,4,22),(86,6,10),(87,6,14),(88,7,19),(89,7,2),(90,7,5);
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

-- Dump completed on 2015-10-09  0:39:59
