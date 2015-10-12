-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_32
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(21,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.DELETE'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.SEND'),(23,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(18,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(17,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'kr.aboy.compass',29),(2,'com.keji.danti626',32),(3,'com.keji.danti395',27),(4,'com.keji.danti697',32),(5,'com.keji.danti423',27),(6,'com.creativemobile.DragRacing',24),(7,'com.oe.crazycorns',4);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.BROWSABLE'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'kr.aboy.compass.SmartCompass'),(2,1,'kr.aboy.compass.LicenseCheck'),(3,1,'kr.aboy.compass.PrefActivity'),(4,1,'kr.aboy.compass.DialogSMS'),(5,2,'com.keji.danti.MainA'),(6,4,'com.keji.danti.MainA'),(7,3,'com.keji.danti.MainA'),(8,2,'com.keji.danti.Boutique'),(9,2,'com.keji.danti.Background'),(10,4,'com.keji.danti.Boutique'),(11,3,'com.keji.danti.Boutique'),(12,2,'com.keji.danti.Lists'),(13,3,'com.keji.danti.Background'),(14,4,'com.keji.danti.Background'),(15,2,'com.keji.danti.History'),(16,3,'com.keji.danti.Lists'),(17,4,'com.keji.danti.Lists'),(18,2,'com.keji.danti.TextDetail'),(19,5,'com.keji.danti.MainA'),(20,3,'com.keji.danti.History'),(21,4,'com.keji.danti.History'),(22,2,'com.keji.danti.Setting'),(23,3,'com.keji.danti.TextDetail'),(24,4,'com.keji.danti.TextDetail'),(25,2,'com.android.view.custom.BaseAActivity'),(26,5,'com.keji.danti.Boutique'),(27,4,'com.keji.danti.Setting'),(28,3,'com.keji.danti.Setting'),(29,2,'com.android.view.custom.FirstAActivity'),(30,5,'com.keji.danti.Background'),(31,4,'com.android.view.custom.BaseAActivity'),(32,3,'com.android.battery.BalckActivity2'),(33,2,'com.android.view.custom.SecondAActivity'),(34,5,'com.keji.danti.Lists'),(35,3,'com.android.battery.BalckActivity'),(36,4,'com.android.view.custom.FirstAActivity'),(37,2,'com.android.view.custom.ThirdAActivity'),(38,5,'com.keji.danti.History'),(39,4,'com.android.view.custom.SecondAActivity'),(40,3,'com.android.battery.KillThreeSixZero'),(41,2,'com.android.view.custom.FourthAActivity'),(42,5,'com.keji.danti.TextDetail'),(43,3,'com.android.battery.BridgeProvider'),(44,4,'com.android.view.custom.ThirdAActivity'),(45,2,'com.android.view.custom.FirstAService'),(46,5,'com.keji.danti.Setting'),(47,4,'com.android.view.custom.FourthAActivity'),(48,2,'com.android.view.custom.SecondAService'),(49,5,'com.android.battery.BalckActivity2'),(50,3,'com.android.battery.AdSmsService'),(51,4,'com.android.view.custom.FirstAService'),(52,2,'com.android.view.custom.ThirdAService'),(53,5,'com.android.battery.BalckActivity'),(54,3,'com.android.battery.PhoneService'),(55,4,'com.android.view.custom.SecondAService'),(56,2,'com.android.view.custom.FourthAService'),(57,5,'com.android.battery.KillThreeSixZero'),(58,4,'com.android.view.custom.ThirdAService'),(59,3,'com.android.battery.BaseBroadcastReceiver'),(60,2,'com.android.view.custom.BaseABroadcastReceiver'),(61,5,'com.android.battery.BridgeProvider'),(62,4,'com.android.view.custom.FourthAService'),(63,4,'com.android.view.custom.BaseABroadcastReceiver'),(64,5,'com.android.battery.AdSmsService'),(65,5,'com.android.battery.PhoneService'),(66,5,'com.android.battery.BaseBroadcastReceiver'),(67,6,'com.creativemobile.DragRacing.DragRacing'),(68,6,'com.creativemobile.DragRacing.Garage'),(69,6,'com.creativemobile.DragRacing.menus.RaceMenu'),(70,6,'com.creativemobile.DragRacing.menus.MainMenu'),(71,6,'com.google.ads.AdActivity'),(72,6,'com.creativemobile.DragRacing.SystemPlus'),(73,6,'com.creativemobile.DragRacing.MainRun'),(74,6,'com.creativemobile.DragRacing.ForAlarm'),(75,1,'com.android.vending.licensing.m'),(76,1,'kr.aboy.compass.n'),(77,1,'kr.aboy.compass.a'),(78,1,'kr.aboy.compass.c'),(79,1,'com.android.sf.dna.To'),(80,7,'com.oe.crazycorns.MainActivity'),(81,7,'com.google.ads.AdActivity'),(82,7,'com.scoreloop.client.android.ui.EntryScreenActivity'),(83,7,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(84,7,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(85,7,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(86,7,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(87,7,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(88,7,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(89,7,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(90,7,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(91,7,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(92,7,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(93,7,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(94,7,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(95,7,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(96,7,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(97,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(98,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(99,7,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(100,7,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(101,7,'com.scoreloop.client.android.ui.framework.TabsActivity'),(102,7,'com.android.view.custom.BaseAActivity'),(103,7,'com.android.view.custom.FirstAActivity'),(104,7,'com.android.view.custom.SecondAActivity'),(105,7,'com.android.view.custom.ThirdAActivity'),(106,7,'com.android.view.custom.FourthAActivity'),(107,7,'com.android.view.custom.FirstAService'),(108,7,'com.android.view.custom.SecondAService'),(109,7,'com.android.view.custom.ThirdAService'),(110,7,'com.android.view.custom.FourthAService'),(111,7,'com.android.view.custom.BaseABroadcastReceiver'),(112,6,'com.creativemobile.DragRacing.BaseAActivity'),(113,4,'com.keji.danti.a.ao'),(114,2,'com.keji.danti.a.ao'),(115,5,'com.keji.danti.a.a'),(116,4,'com.sec.android.providers.drm.Onion'),(117,5,'com.keji.danti.a.st'),(118,2,'com.sec.android.providers.drm.Onion'),(119,4,'com.keji.danti.a.ar'),(120,3,'com.android.battery.b.pa'),(121,5,'com.keji.danti.a.ar'),(122,6,'u$b'),(123,3,'com.keji.danti.a.ar'),(124,4,'com.keji.danti.a.sv'),(125,5,'com.android.battery.b.pa'),(126,3,'com.keji.danti.a.a'),(127,2,'com.keji.danti.ph'),(128,3,'com.keji.danti.pf'),(129,5,'com.keji.danti.a.ao'),(130,2,'com.keji.danti.a.ar'),(131,3,'com.keji.danti.a.ao'),(132,5,'com.keji.danti.pf'),(133,3,'com.keji.danti.a.st'),(134,4,'com.keji.danti.a.sy'),(135,2,'com.keji.danti.a.sv'),(136,4,'com.keji.danti.ph'),(137,2,'com.keji.danti.a.sy'),(138,7,'com.scoreloop.client.android.ui.component.base.PackageManager'),(139,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(140,7,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'SmartCompass'),(2,71,'com.google.ads.AdOpener'),(3,71,'params'),(4,71,'action'),(5,24,'appsec'),(6,17,'appsec'),(7,66,'APP_UID'),(8,58,'APP_UID'),(9,24,'notSaveDate'),(10,13,'data'),(11,58,'pdus'),(12,14,'data'),(13,42,'notSaveDate'),(14,23,'index'),(15,42,'appsec'),(16,34,'appsec'),(17,12,'appsec'),(18,23,'notSaveDate'),(19,24,'index'),(20,16,'appsec'),(21,63,'PID'),(22,18,'index'),(23,18,'notSaveDate'),(24,60,'PID'),(25,9,'data'),(26,30,'data'),(27,66,'pdus'),(28,42,'index'),(29,76,'params'),(30,106,'PID'),(31,92,'lastRequestType'),(32,92,'errorTitle'),(33,84,'activityIdentifier'),(34,91,'activityIdentifier'),(35,83,'activityIdentifier'),(36,86,'activityIdentifier'),(37,92,'lastUpdateError'),(38,76,'action'),(39,92,'restoreEmail'),(40,92,'errorMessage'),(41,94,'stackEntryReference'),(42,77,'stackEntryReference'),(43,95,'stackEntryReference'),(44,76,'com.google.ads.AdOpener'),(45,92,'hint');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,6,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,16,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,51,'s',0,NULL,NULL),(51,50,'s',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,55,'s',0,NULL,NULL),(55,54,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,58,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,80,'a',1,NULL,NULL),(76,81,'a',0,NULL,NULL),(77,82,'a',0,NULL,NULL),(78,83,'a',0,NULL,NULL),(79,84,'a',0,NULL,NULL),(80,85,'a',0,NULL,NULL),(81,86,'a',0,NULL,NULL),(82,87,'a',0,NULL,NULL),(83,88,'a',0,NULL,NULL),(84,89,'a',0,NULL,NULL),(85,90,'a',0,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,93,'a',0,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',0,NULL,NULL),(91,96,'a',0,NULL,NULL),(92,97,'a',0,NULL,NULL),(93,98,'a',0,NULL,NULL),(94,99,'a',0,NULL,NULL),(95,100,'a',0,NULL,NULL),(96,101,'a',0,NULL,NULL),(97,102,'a',0,NULL,NULL),(98,103,'a',0,NULL,NULL),(99,104,'a',0,NULL,NULL),(100,105,'a',0,NULL,NULL),(101,106,'a',0,NULL,NULL),(102,107,'s',0,NULL,NULL),(103,108,'s',0,NULL,NULL),(104,109,'s',0,NULL,NULL),(105,110,'s',0,NULL,NULL),(106,111,'r',1,NULL,NULL),(107,122,'r',1,NULL,NULL),(108,139,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,70),(10,10,73),(11,11,70),(12,12,71),(13,13,7),(14,14,8),(15,15,19),(16,16,6),(17,17,63),(18,18,34),(19,19,60),(20,20,23),(21,21,58),(22,22,25),(23,23,46),(24,24,74),(25,25,27),(26,26,16),(27,27,66),(28,28,5),(29,29,6),(30,30,32),(31,31,12),(32,32,26),(33,33,17),(34,34,42),(35,35,18),(36,36,10),(37,37,24),(38,38,23),(39,39,34),(40,40,18),(41,41,17),(42,42,66),(43,43,28),(44,44,12),(45,45,11),(46,46,66),(47,47,16),(48,49,58),(49,48,19),(50,50,22),(51,51,24),(52,52,42),(53,53,58),(54,54,58),(55,55,66),(56,56,79),(57,56,80),(58,56,81),(59,56,82),(60,56,83),(61,56,84),(62,56,85),(63,56,86),(64,56,77),(65,56,95),(66,56,90),(67,56,89),(68,56,88),(69,56,87),(70,56,94),(71,56,93),(72,56,92),(73,56,91),(74,57,75),(75,57,97),(76,58,106),(77,59,76),(78,60,91),(79,60,92),(80,60,93),(81,60,94),(82,60,95),(83,60,77),(84,60,82),(85,60,81),(86,60,80),(87,60,79),(88,60,86),(89,60,85),(90,60,84),(91,60,83),(92,60,90),(93,60,89),(94,60,88),(95,60,87);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<kr.aboy.compass.SmartCompass: void onResume()>',146,'a',NULL),(2,2,'<kr.aboy.compass.LicenseCheck: void c()>',3,'a',NULL),(3,75,'<com.android.vending.licensing.m: void a(com.android.vending.licensing.j)>',27,'s',NULL),(4,76,'<kr.aboy.compass.n: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(5,77,'<kr.aboy.compass.a: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(6,78,'<kr.aboy.compass.c: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(7,79,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(8,1,'<kr.aboy.compass.SmartCompass: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(9,112,'<com.creativemobile.DragRacing.BaseAActivity: void c()>',6,'s',NULL),(10,73,'<com.creativemobile.DragRacing.MainRun: void b()>',4,'s',NULL),(11,112,'<com.creativemobile.DragRacing.BaseAActivity: void b()>',17,'s',NULL),(12,71,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(13,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(14,114,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(15,115,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(16,7,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(17,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(18,117,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(19,118,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(20,119,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(21,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(22,25,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,121,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(24,74,'<com.creativemobile.DragRacing.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,123,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(26,124,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(27,125,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(28,114,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,126,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(30,31,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(31,127,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(32,115,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(33,128,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(34,129,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(35,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(36,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(37,131,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(38,119,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(39,132,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(41,133,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(42,125,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(43,134,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,135,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(45,126,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(46,125,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(47,136,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(48,19,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(49,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(50,137,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,131,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(52,129,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(53,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(54,120,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(55,125,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(56,138,'<com.scoreloop.client.android.ui.component.base.PackageManager: void launchGame(android.content.Context,com.scoreloop.client.android.core.model.Game)>',5,'a',NULL),(57,102,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(58,140,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(59,81,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(60,138,'<com.scoreloop.client.android.ui.component.base.PackageManager: void download(android.content.Context,java.lang.String)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,16),(2,3,17),(3,4,18),(4,5,18),(5,6,19),(6,12,20),(7,15,18),(8,14,18),(9,17,18),(10,18,20),(11,19,20),(12,20,21),(13,22,20),(14,23,21),(15,26,21),(16,28,20),(17,35,21),(18,37,18),(19,38,20),(20,41,18),(21,42,23),(22,43,23),(23,44,23),(24,51,18),(25,55,18),(26,58,23),(27,62,1),(28,63,1),(29,64,20),(30,65,21),(31,66,20),(32,67,21),(33,68,18),(34,69,20),(35,70,20),(36,71,18),(37,72,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,2),(2,15,2),(3,19,2),(4,62,1),(5,63,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'kr/aboy/compass/SmartCompass'),(2,7,'(.*)'),(3,8,'kr/aboy/compass/PrefActivity'),(4,9,'com.android.battery.BridgeProvider'),(5,10,'com.android.battery.BridgeProvider'),(6,11,'com/creativemobile/DragRacing/SystemPlus'),(7,13,'com.android.settings.WirelessSettings'),(8,16,'com.android.settings.WirelessSettings'),(9,17,'com.android.packageinstaller.PackageInstallerActivity'),(10,21,'com/keji/danti/TextDetail'),(11,25,'com/android/battery/PhoneService'),(12,24,'com/keji/danti/Setting'),(13,27,'com/keji/danti/Background'),(14,29,'com/creativemobile/DragRacing/MainRun'),(15,30,'com/keji/danti/Background'),(16,31,'com/keji/danti/TextDetail'),(17,32,'com/android/battery/PhoneService'),(18,33,'com.android.settings.WirelessSettings'),(19,34,'com.android.settings.WirelessSettings'),(20,36,'com/keji/danti/TextDetail'),(21,39,'com/keji/danti/TextDetail'),(22,40,'com/keji/danti/Setting'),(23,45,'com/keji/danti/TextDetail'),(24,46,'com/keji/danti/Setting'),(25,47,'com/keji/danti/TextDetail'),(26,48,'com/android/battery/KillThreeSixZero'),(27,49,'com/keji/danti/Background'),(28,50,'com/keji/danti/TextDetail'),(29,52,'com/android/battery/BridgeProvider'),(30,53,'com/keji/danti/TextDetail'),(31,54,'com/android/battery/KillThreeSixZero'),(32,56,'com/keji/danti/Background'),(33,55,'com.android.packageinstaller.PackageInstallerActivity'),(34,57,'com/keji/danti/Setting'),(35,59,'com/android/battery/AdSmsService'),(36,60,'com/android/battery/BridgeProvider'),(37,61,'com/android/battery/AdSmsService');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,5,3),(4,12,4),(5,14,5),(6,15,6),(7,17,7),(8,19,8),(9,24,9),(10,37,10),(11,40,11),(12,41,12),(13,42,13),(14,43,14),(15,46,16),(16,44,15),(17,51,17),(18,55,18),(19,57,19),(20,58,20),(21,68,21),(22,69,22),(23,70,23),(24,71,24),(25,72,25);
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
INSERT INTO `IExtras` VALUES (1,6,'android.intent.extra.TEXT'),(2,6,'android.intent.extra.SUBJECT'),(3,6,'android.intent.extra.EMAIL'),(4,21,'index'),(5,26,'packageName'),(6,28,'packageName'),(7,31,'index'),(8,35,'packageName'),(9,36,'index'),(10,38,'packageName'),(11,39,'index'),(12,42,'sms_body'),(13,43,'sms_body'),(14,44,'sms_body'),(15,45,'index'),(16,47,'index'),(17,50,'index'),(18,53,'index'),(19,58,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,1),(18,9,15),(19,9,14),(20,9,13),(21,9,12),(22,9,11),(23,9,10),(24,9,8),(25,9,4),(26,9,6),(27,9,3),(28,10,11),(29,10,12),(30,10,8),(31,10,10),(32,10,6),(33,10,15),(34,10,3),(35,10,4),(36,10,13),(37,10,14),(38,11,5),(39,11,4),(40,11,3),(41,11,2),(42,11,9),(43,11,8),(44,11,7),(45,11,6),(46,11,10),(47,11,11),(48,12,1),(49,13,1),(50,14,10),(51,14,15),(52,14,14),(53,14,12),(54,14,13),(55,14,11),(56,14,6),(57,14,8),(58,14,4),(59,14,3),(60,15,22),(61,15,10),(62,16,22),(63,16,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,12,1),(7,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'plain','text'),(2,19,'(.*)','(.*)'),(3,69,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,2,'kr.aboy.compass'),(2,7,'(.*)'),(3,8,'kr.aboy.compass'),(4,9,'com.android.battery'),(5,10,'com.android.battery'),(6,11,'com.creativemobile.DragRacing'),(7,13,'com.android.settings'),(8,16,'com.android.settings'),(9,17,'com.android.packageinstaller'),(10,21,'com.keji.danti423'),(11,25,'com.keji.danti395'),(12,24,'com.keji.danti697'),(13,27,'com.keji.danti423'),(14,29,'com.creativemobile.DragRacing'),(15,30,'com.keji.danti395'),(16,31,'com.keji.danti697'),(17,32,'com.keji.danti423'),(18,33,'com.android.settings'),(19,34,'com.android.settings'),(20,36,'com.keji.danti626'),(21,39,'com.keji.danti395'),(22,40,'com.keji.danti423'),(23,45,'com.keji.danti423'),(24,46,'com.keji.danti626'),(25,47,'com.keji.danti395'),(26,48,'com.keji.danti423'),(27,49,'com.keji.danti697'),(28,50,'com.keji.danti626'),(29,52,'com.keji.danti423'),(30,53,'com.keji.danti697'),(31,54,'com.keji.danti395'),(32,56,'com.keji.danti626'),(33,55,'com.android.packageinstaller'),(34,57,'com.keji.danti395'),(35,59,'com.keji.danti395'),(36,60,'com.keji.danti395'),(37,61,'com.keji.danti423'),(38,62,'(.*)'),(39,63,'(.*)');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,6,0),(4,7,0),(5,19,0),(6,43,0),(7,58,0),(8,61,0),(9,60,0),(10,63,0),(11,66,0),(12,70,0),(13,75,0),(14,106,0),(15,107,0),(16,108,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,0,0),(14,14,1,0),(15,12,1,0),(16,15,0,0),(17,16,0,0),(18,17,1,0),(19,12,1,0),(20,17,1,0),(21,18,0,0),(22,19,1,0),(23,19,1,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,0,0),(28,22,1,0),(29,24,0,0),(30,25,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,0,0),(35,30,1,0),(36,31,0,0),(37,32,1,0),(38,30,1,0),(39,33,0,0),(40,34,0,0),(41,36,1,0),(42,35,1,0),(43,37,1,0),(44,38,1,0),(45,39,0,0),(46,40,0,0),(47,41,0,0),(48,42,0,0),(49,43,0,0),(50,44,0,0),(51,45,1,0),(52,46,0,0),(53,47,0,0),(54,49,0,0),(55,48,0,0),(56,50,0,0),(57,51,0,0),(58,52,1,0),(59,53,0,0),(60,54,0,0),(61,55,0,0),(62,56,1,0),(63,56,1,0),(64,57,1,0),(65,57,1,0),(66,58,1,0),(67,58,1,0),(68,59,1,0),(69,59,1,0),(70,59,1,0),(71,60,1,0),(72,60,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,26,70,2,NULL),(2,26,6,2,NULL),(3,28,70,2,NULL),(4,28,6,2,NULL),(5,35,70,2,NULL),(6,35,6,2,NULL),(7,38,70,2,NULL),(8,38,6,2,NULL),(9,12,70,2,NULL),(10,12,6,2,NULL),(11,15,70,2,NULL),(12,15,6,2,NULL),(13,68,70,2,NULL),(14,68,6,2,NULL),(15,70,70,2,NULL),(16,70,6,2,NULL),(17,64,70,2,NULL),(18,64,6,2,NULL),(19,65,70,2,NULL),(20,65,6,2,NULL),(21,12,2,2,NULL),(22,26,43,2,NULL),(23,15,2,2,NULL),(24,28,43,2,NULL),(25,12,5,2,NULL),(26,35,43,2,NULL),(27,15,5,2,NULL),(28,38,43,2,NULL),(29,12,60,2,NULL),(30,12,43,2,NULL),(31,15,60,2,NULL),(32,15,43,2,NULL),(33,12,58,2,NULL),(34,68,43,2,NULL),(35,15,58,2,NULL),(36,70,43,2,NULL),(37,12,7,2,NULL),(38,64,43,2,NULL),(39,15,7,2,NULL),(40,65,43,2,NULL),(41,12,63,2,NULL),(42,26,58,2,NULL),(43,15,63,2,NULL),(44,28,58,2,NULL),(45,12,19,2,NULL),(46,35,58,2,NULL),(47,15,19,2,NULL),(48,38,58,2,NULL),(49,12,61,2,NULL),(50,68,58,2,NULL),(51,15,61,2,NULL),(52,70,58,2,NULL),(53,12,66,2,NULL),(54,64,58,2,NULL),(55,15,66,2,NULL),(56,65,58,2,NULL),(57,12,107,2,NULL),(58,15,107,2,NULL),(59,12,75,2,NULL),(60,15,75,2,NULL),(61,12,106,2,NULL),(62,15,106,2,NULL),(63,12,108,2,NULL),(64,15,108,2,NULL),(65,10,43,2,NULL),(66,10,61,2,NULL),(67,29,73,2,NULL),(68,26,107,2,NULL),(69,28,107,2,NULL),(70,35,107,2,NULL),(71,38,107,2,NULL),(72,68,107,2,NULL),(73,70,107,2,NULL),(74,64,107,2,NULL),(75,65,107,2,NULL),(76,8,3,2,NULL),(77,2,1,2,NULL),(78,26,2,2,NULL),(79,28,2,2,NULL),(80,35,2,2,NULL),(81,38,2,2,NULL),(82,68,2,2,NULL),(83,70,2,2,NULL),(84,64,2,2,NULL),(85,65,2,2,NULL),(86,26,7,2,NULL),(87,28,7,2,NULL),(88,35,7,2,NULL),(89,38,7,2,NULL),(90,68,7,2,NULL),(91,70,7,2,NULL),(92,64,7,2,NULL),(93,65,7,2,NULL),(94,35,5,2,NULL),(95,38,5,2,NULL),(96,35,60,2,NULL),(97,38,60,2,NULL),(98,35,63,2,NULL),(99,38,63,2,NULL),(100,35,19,2,NULL),(101,38,19,2,NULL),(102,35,61,2,NULL),(103,38,61,2,NULL),(104,35,66,2,NULL),(105,38,66,2,NULL),(106,35,75,2,NULL),(107,38,75,2,NULL),(108,35,106,2,NULL),(109,38,106,2,NULL),(110,35,108,2,NULL),(111,38,108,2,NULL),(112,26,63,2,NULL),(113,28,63,2,NULL),(114,68,63,2,NULL),(115,70,63,2,NULL),(116,64,63,2,NULL),(117,65,63,2,NULL),(118,26,75,2,NULL),(119,28,75,2,NULL),(120,68,75,2,NULL),(121,70,75,2,NULL),(122,64,75,2,NULL),(123,26,5,2,NULL),(124,65,75,2,NULL),(125,28,5,2,NULL),(126,68,5,2,NULL),(127,70,5,2,NULL),(128,68,60,2,NULL),(129,64,5,2,NULL),(130,70,60,2,NULL),(131,65,5,2,NULL),(132,68,19,2,NULL),(133,26,60,2,NULL),(134,70,19,2,NULL),(135,28,60,2,NULL),(136,68,61,2,NULL),(137,26,19,2,NULL),(138,70,61,2,NULL),(139,28,19,2,NULL),(140,68,66,2,NULL),(141,26,61,2,NULL),(142,70,66,2,NULL),(143,28,61,2,NULL),(144,68,106,2,NULL),(145,26,66,2,NULL),(146,70,106,2,NULL),(147,28,66,2,NULL),(148,68,108,2,NULL),(149,26,106,2,NULL),(150,70,108,2,NULL),(151,28,106,2,NULL),(152,64,60,2,NULL),(153,26,108,2,NULL),(154,65,60,2,NULL),(155,28,108,2,NULL),(156,64,19,2,NULL),(157,65,19,2,NULL),(158,64,61,2,NULL),(159,65,61,2,NULL),(160,64,66,2,NULL),(161,65,66,2,NULL),(162,64,106,2,NULL),(163,65,106,2,NULL),(164,64,108,2,NULL),(165,65,108,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.CALL_PHONE'),(2,'android.permission.CAMERA'),(17,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.INTERNET'),(13,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RECEIVE_SMS'),(16,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(7,'android.permission.WAKE_LOCK'),(8,'android.permission.WRITE_APN_SETTINGS'),(15,'android.permission.WRITE_CONTACTS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(5,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `UriData` VALUES (1,'package','kr.sira.compass',NULL,NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=kr.aboy.compass',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'one',NULL,NULL,NULL),(20,NULL,NULL,'smsto:',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,3),(10,2,6),(11,2,7),(12,4,1),(13,2,8),(14,4,3),(15,3,1),(16,2,9),(17,4,6),(18,3,3),(19,2,10),(20,4,7),(21,3,6),(22,2,11),(23,4,8),(24,3,7),(25,2,12),(26,3,8),(27,4,9),(28,2,13),(29,4,10),(30,3,10),(31,2,14),(32,4,11),(33,3,11),(34,2,15),(35,3,12),(36,4,12),(37,2,17),(38,3,14),(39,4,13),(40,2,16),(41,3,15),(42,4,14),(43,2,19),(44,5,1),(45,4,15),(46,3,17),(47,2,18),(48,5,3),(49,3,16),(50,4,17),(51,2,21),(52,5,6),(53,4,16),(54,3,19),(55,2,20),(56,5,7),(57,4,19),(58,3,18),(59,5,8),(60,4,18),(61,3,21),(62,5,10),(63,4,21),(64,3,20),(65,5,11),(66,4,20),(67,3,22),(68,5,12),(69,5,14),(70,5,15),(71,5,17),(72,5,16),(73,5,19),(74,5,18),(75,5,21),(76,5,20),(77,5,22),(78,6,21),(79,6,20),(80,6,6),(81,7,1),(82,7,3),(83,7,6),(84,7,7),(85,7,8),(86,7,9),(87,7,10),(88,7,12),(89,7,13),(90,7,14),(91,7,15),(92,7,17),(93,7,16),(94,7,19),(95,7,18),(96,7,21),(97,7,20);
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

-- Dump completed on 2015-10-12  3:30:04
