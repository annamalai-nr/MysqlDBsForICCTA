-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_203
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
INSERT INTO `ActionStrings` VALUES (17,'(.*).SEND_SMS'),(16,'android.intent.action.BATTERY_CHANGED'),(21,'android.intent.action.BATTERY_LOW'),(18,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(3,'android.intent.action.CHOOSER'),(15,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(22,'android.settings.APPLICATION_DETAILS_SETTINGS'),(10,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'android.settings.APPLICATION_SETTINGS'),(23,'android.settings.LOCATION_SOURCE_SETTINGS'),(6,'com.extend.battery.intent.http.SHOW'),(4,'com.itframework.installer.updater.CHECK'),(5,'com.itframework.installer.updater.UPDATE'),(9,'com.zanalytics.sms.MESSAGE_RECEIVED'),(14,'com.zft.task.result'),(13,'flashrec.status_update.download'),(12,'flashrec.status_update.flash');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'org.zenthought.flashrec',5),(2,'com.pocketluxus.recovery',1),(3,'net.ponury.faceniff',2),(4,'com.power.SuperSolo',10),(5,'com.extend.battery',91),(6,'com.zft',5);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.zenthought.flashrec.FlashRec'),(2,1,'org.zenthought.flashrec.FlashServ'),(3,1,'org.zenthought.flashrec.DownloadServ'),(4,2,'com.pocketluxus.recovery.RecoveryDeluxe'),(5,2,'com.pocketluxus.recovery.Recovery'),(6,2,'com.pocketluxus.recovery.AlarmReceiver'),(7,3,'net.ponury.faceniff.faceniff'),(8,3,'net.ponury.faceniff.ProfileList'),(9,3,'net.ponury.faceniff.bgservice'),(10,4,'com.codingcaveman.SoloTrial.SplashActivity'),(11,4,'com.codingcaveman.SoloTrial.StrumActivity'),(12,4,'com.codingcaveman.SoloTrial.LayoutEditorActivity'),(13,4,'com.codingcaveman.SoloTrial.ChordEditorActivity'),(14,4,'com.codingcaveman.SoloTrial.CapoActivity'),(15,4,'com.codingcaveman.SoloTrial.SettingsActivity'),(16,4,'com.codingcaveman.SoloTrial.ExpiredActivity'),(17,4,'com.codingcaveman.SoloTrial.UpgradeActivity'),(18,4,'com.android.root.main'),(19,4,'com.android.root.Setting'),(20,4,'com.android.root.AlarmReceiver'),(21,5,'com.extend.battery.Splash'),(22,5,'com.extend.battery.TabHandler'),(23,5,'com.extend.battery.TaskKillerActivity'),(24,5,'com.extend.battery.UninstallerActivity'),(25,5,'com.extend.battery.SecurityAuditActivity'),(26,5,'com.extend.battery.InstallerActivity'),(27,5,'com.extend.battery.FeaturesActivity'),(28,5,'com.extend.battery.BoosterActivity'),(29,5,'com.extend.battery.BatteryActivity'),(30,5,'com.extend.battery.RatingActivity'),(31,5,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(32,5,'com.itframework.installer.util.NonMarketDialogActivity'),(33,5,'com.extend.battery.BatteryService'),(34,5,'com.itframework.installer.util.InstallWorker'),(35,5,'com.zanalytics.sms.SmsReceiverService'),(36,5,'com.itframework.installer.updater.UpdateReceiver'),(37,5,'com.extend.battery.NotificationReceiver'),(38,5,'com.extend.battery.BootReceiver'),(39,5,'com.zanalytics.sms.SmsReceiver'),(40,3,'net.ponury.faceniff.faceniff$6'),(41,2,'com.pocketluxus.recovery.RecoveryDeluxe$4'),(42,3,'net.ponury.faceniff.BuyMe$2'),(43,6,'com.zft.QLogoPage'),(44,6,'com.zft.setting_.QAideTools'),(45,6,'com.zft.setting_.QUserDefineZF'),(46,6,'com.zft.setting_.QCallSetting'),(47,6,'com.zft.setting_.QGracePeriod'),(48,6,'com.zft.setting_.QHFWarnning'),(49,6,'com.zft.setting_.QIPSetting_'),(50,6,'com.zft.setting_.QPresentCall'),(51,6,'com.zft.setting_.QRomaSetting'),(52,6,'com.zft.setting_.QTHFCalc'),(53,6,'com.zft.setting_.QSpecialNumber'),(54,6,'com.zft.setting_.QTrafficSetting'),(55,4,'com.codingcaveman.SoloTrial.z'),(56,6,'com.zft.setting_.QSMSSetting_'),(57,6,'com.zft.setting_.QCallInfoShowPosition'),(58,6,'com.zft.setting_.QHelpAndSupport'),(59,6,'com.zft.information.QInformation'),(60,6,'com.zft.information.QInformation_info'),(61,6,'com.zft.QDescriptionPage'),(62,6,'com.zft.subpage.QSmsSubPage'),(63,6,'com.zft.QDefinningTc'),(64,6,'com.zft.QChangeTC'),(65,6,'com.zft.QLocationPage'),(66,6,'com.zft.QMainPage'),(67,6,'com.zft.QRegistPage'),(68,6,'com.zft.QSelectTC'),(69,6,'com.zft.QSelectMainTc'),(70,1,'org.zenthought.flashrec.FlashRec$1'),(71,6,'com.zft.QSelectNetTc'),(72,6,'com.zft.QDetailMainTc'),(73,6,'com.zft.QFeatruePage'),(74,6,'com.zft.QTcInfo'),(75,6,'com.zft.QChangeTC_'),(76,1,'org.zenthought.flashrec.FlashRec$4'),(77,6,'com.zft.subpage.QTrafficSubPage'),(78,6,'com.zft.subpage.QSmdrPage'),(79,6,'com.zft.subpage.QChargePage'),(80,4,'com.codingcaveman.SoloTrial.y'),(81,6,'com.zft.subpage.QFeedBackPage'),(82,6,'com.zft.subpage.QFriendsPage'),(83,6,'com.core.components.QSubList'),(84,6,'com.zft.happysms.MainActivity'),(85,6,'com.zft.QCallReport'),(86,6,'com.zft.subpage.QPieSubPage'),(87,1,'org.zenthought.flashrec.FlashRecAsyncService'),(88,6,'com.zft.subpage.QBarChartSubPage'),(89,6,'com.zft.subpage.QSmsduSubPage'),(90,6,'com.service.ZftService'),(91,6,'com.service.BootBroadcastReceiver'),(92,6,'com.zft.CheckChargeReceiver'),(93,6,'com.service.callLogs.LogsContentProvider'),(94,4,'com.codingcaveman.SoloTrial.r'),(95,6,'com.provider.Variable'),(96,6,'com.service.netraffic.TrafficProvider'),(97,5,'com.zanalytics.sms.j'),(98,5,'com.extend.battery.d'),(99,5,'com.extend.battery.c'),(100,5,'com.extend.battery.a'),(101,5,'com.zanalytics.sms.c'),(102,5,'com.zanalytics.sms.a'),(103,5,'com.extend.battery.bb'),(104,5,'com.extend.battery.ba'),(105,5,'com.itframework.installer.a.b'),(106,5,'com.extend.battery.k'),(107,5,'com.extend.battery.features.s');
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
INSERT INTO `ComponentExtras` VALUES (1,9,'receiver'),(2,13,'Group'),(3,1,'progress'),(4,2,'command'),(5,3,'command'),(6,1,'status_message'),(7,2,'validate_after'),(8,3,'validate_after'),(9,1,'status'),(10,1,'progress_total'),(11,2,'validate_before'),(12,3,'validate_before'),(13,13,'Signature'),(14,1,'job'),(15,2,'file'),(16,3,'file'),(17,13,'ChordName'),(18,1,'url'),(19,34,'filename'),(20,36,'URL'),(21,31,'forceDownload'),(22,34,'finishedText'),(23,37,'clickevent'),(24,31,'url'),(25,34,'downloadingToast'),(26,34,'downloadingTicker'),(27,34,'downloadingWait'),(28,31,'callbackIntent'),(29,31,'downloadingToast'),(30,34,'url'),(31,34,'finishedTitle'),(32,31,'downloadStarting'),(33,39,'pdus'),(34,31,'downloadingWait'),(35,31,'downloadingProgress'),(36,34,'forceDownload'),(37,34,'showNotifications'),(38,34,'downloadingTitle'),(39,29,'technology'),(40,31,'finishedTicker'),(41,34,'callbackIntent'),(42,34,'finishedTicker'),(43,31,'downloadingTitle'),(44,31,'finishedText'),(45,31,'downloadingTicker'),(46,31,'finishedTitle'),(47,34,'downloadingProgress'),(48,31,'filename'),(49,34,'downloadStarting');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,43,'a',1,NULL,NULL),(41,44,'a',1,NULL,NULL),(42,45,'a',1,NULL,NULL),(43,46,'a',1,NULL,NULL),(44,47,'a',1,NULL,NULL),(45,48,'a',1,NULL,NULL),(46,49,'a',1,NULL,NULL),(47,50,'a',1,NULL,NULL),(48,51,'a',1,NULL,NULL),(49,52,'a',1,NULL,NULL),(50,53,'a',1,NULL,NULL),(51,54,'a',1,NULL,NULL),(52,56,'a',1,NULL,NULL),(53,57,'a',1,NULL,NULL),(54,58,'a',1,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'a',0,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'a',1,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'r',1,NULL,NULL),(67,71,'a',0,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'a',0,NULL,NULL),(70,74,'a',0,NULL,NULL),(71,75,'a',0,NULL,NULL),(72,77,'a',0,NULL,NULL),(73,78,'a',0,NULL,NULL),(74,79,'a',0,NULL,NULL),(75,81,'a',0,NULL,NULL),(76,82,'a',0,NULL,NULL),(77,83,'a',0,NULL,NULL),(78,84,'a',0,NULL,NULL),(79,85,'a',1,NULL,NULL),(80,86,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'s',0,NULL,NULL),(84,91,'r',1,NULL,NULL),(85,92,'r',1,NULL,NULL),(86,93,'p',0,NULL,NULL),(87,95,'p',0,NULL,NULL),(88,96,'p',0,NULL,NULL),(89,98,'r',1,NULL,NULL),(90,99,'r',1,NULL,NULL),(91,100,'r',1,NULL,NULL),(92,101,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,5),(3,3,7),(4,4,7),(5,5,8),(6,6,7),(7,7,4),(8,8,4),(9,9,7),(10,10,4),(11,11,7),(12,12,8),(13,12,7),(14,13,11),(15,14,12),(16,15,17),(17,16,11),(18,17,1),(19,18,11),(20,19,11),(21,20,18),(22,21,16),(23,22,1),(24,23,17),(25,24,1),(26,25,10),(27,26,18),(28,27,2),(29,27,3),(30,28,12),(31,29,11),(32,30,10),(33,31,11),(34,32,39),(35,33,28),(36,33,29),(37,34,26),(38,34,29),(39,35,24),(40,35,29),(41,36,22),(42,37,37),(43,38,26),(44,38,25),(45,38,24),(46,38,29),(47,39,28),(48,39,29),(49,40,34),(50,41,31),(51,42,31),(52,43,29),(53,43,23),(54,44,24),(55,45,31),(56,46,29),(57,47,37),(58,48,24),(59,48,26),(60,48,25),(61,48,29),(62,49,21),(63,50,25),(64,51,39),(65,52,29),(66,53,34),(67,54,21),(68,55,39),(69,56,29),(70,56,24),(71,57,29),(72,57,28),(73,58,28),(74,59,21),(75,60,34),(76,61,21),(77,62,34),(78,63,26),(79,64,29),(80,64,25),(81,65,21),(82,66,21),(83,67,28),(84,67,29),(85,68,38),(86,69,29),(87,69,28),(88,69,26),(89,69,25),(90,69,24),(91,70,39),(92,71,21),(93,72,24),(94,72,25),(95,72,26),(96,72,28),(97,72,29),(98,73,26),(99,73,29),(100,74,29),(101,74,25),(102,74,26),(103,74,24),(104,75,22),(105,76,28),(106,77,34),(107,78,39),(108,79,24),(109,80,38),(110,81,31),(111,82,24),(112,82,29),(113,83,25),(114,83,29),(115,84,29),(116,84,23),(117,85,34),(118,86,21),(119,87,39),(120,88,29),(121,88,24),(122,89,26),(123,90,26),(124,90,25),(125,90,29),(126,90,24),(127,91,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.pocketluxus.recovery.RecoveryDeluxe: void startEmailToMobilizy()>',12,'a',NULL),(2,5,'<com.pocketluxus.recovery.Recovery: void startEmailToMobilizy()>',12,'a',NULL),(3,7,'<net.ponury.faceniff.faceniff: boolean bootup()>',66,'a',NULL),(4,40,'<net.ponury.faceniff.faceniff$6: void onClick(android.view.View)>',10,'a',NULL),(5,8,'<net.ponury.faceniff.ProfileList: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(6,7,'<net.ponury.faceniff.faceniff: void onStart()>',3,'s',NULL),(7,41,'<com.pocketluxus.recovery.RecoveryDeluxe$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(8,41,'<com.pocketluxus.recovery.RecoveryDeluxe$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(9,7,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(10,4,'<com.pocketluxus.recovery.RecoveryDeluxe: void switchTORecovery()>',3,'a',NULL),(11,7,'<net.ponury.faceniff.faceniff: void onStart()>',10,'s',NULL),(12,42,'<net.ponury.faceniff.BuyMe$2: void onClick(android.view.View)>',13,'a',NULL),(13,11,'<com.codingcaveman.SoloTrial.StrumActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',18,'a',NULL),(14,12,'<com.codingcaveman.SoloTrial.LayoutEditorActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',35,'a',NULL),(15,55,'<com.codingcaveman.SoloTrial.z: void onClick(android.view.View)>',6,'a',NULL),(16,11,'<com.codingcaveman.SoloTrial.StrumActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',46,'a',NULL),(17,1,'<org.zenthought.flashrec.FlashRec: void dump_image(java.io.File)>',15,'s',NULL),(18,11,'<com.codingcaveman.SoloTrial.StrumActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',50,'a',NULL),(19,11,'<com.codingcaveman.SoloTrial.StrumActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',56,'a',NULL),(20,18,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(21,16,'<com.codingcaveman.SoloTrial.ExpiredActivity: void e()>',4,'a',NULL),(22,76,'<org.zenthought.flashrec.FlashRec$4: void onClick(android.view.View)>',26,'s',NULL),(23,80,'<com.codingcaveman.SoloTrial.y: void onClick(android.view.View)>',6,'a',NULL),(24,1,'<org.zenthought.flashrec.FlashRec: void flash_image(java.io.File)>',15,'s',NULL),(25,10,'<com.codingcaveman.SoloTrial.SplashActivity: void d()>',10,'a',NULL),(26,18,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(27,87,'<org.zenthought.flashrec.FlashRecAsyncService: void sendUpdateBroadcast()>',2,'r',NULL),(28,12,'<com.codingcaveman.SoloTrial.LayoutEditorActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',18,'a',NULL),(29,11,'<com.codingcaveman.SoloTrial.StrumActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(30,10,'<com.codingcaveman.SoloTrial.SplashActivity: void d()>',5,'a',NULL),(31,94,'<com.codingcaveman.SoloTrial.r: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,97,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(33,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(34,26,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(35,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(36,22,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(37,37,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(38,102,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(39,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(40,34,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(41,31,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(42,31,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(43,103,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(44,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(45,31,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(46,29,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(47,37,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(48,102,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(49,104,'<com.extend.battery.ba: void run()>',58,'a',NULL),(50,25,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(51,97,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(52,29,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(53,105,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(54,21,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(55,97,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(56,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(57,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(58,28,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(59,104,'<com.extend.battery.ba: void run()>',212,'a',NULL),(60,105,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(61,21,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(62,34,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(63,26,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(64,25,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(65,104,'<com.extend.battery.ba: void run()>',212,'a',NULL),(66,104,'<com.extend.battery.ba: void run()>',118,'a',NULL),(67,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(68,38,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(69,106,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(70,39,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(71,104,'<com.extend.battery.ba: void run()>',58,'a',NULL),(72,106,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(73,26,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(74,107,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(75,22,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(76,28,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(77,34,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(78,97,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(79,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(80,38,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(81,31,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(82,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(83,25,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(84,103,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(85,34,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(86,104,'<com.extend.battery.ba: void run()>',118,'a',NULL),(87,39,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(88,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(89,26,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(90,107,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(91,25,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,3),(10,10,3),(11,11,3),(12,12,3),(13,14,3),(14,15,3),(15,17,3),(16,18,2),(17,19,3),(18,22,10),(19,23,2),(20,24,11),(21,28,2),(22,31,2),(23,32,3),(24,33,3),(25,34,3),(26,35,3),(27,36,3),(28,37,3),(29,38,3),(30,39,3),(31,44,2),(32,46,2),(33,50,13),(34,52,13),(35,54,12),(36,56,12),(37,60,15),(38,63,17),(39,64,2),(40,69,1),(41,72,17),(42,76,22),(43,81,2),(44,84,2),(45,85,2),(46,92,23),(47,94,23),(48,96,2),(49,98,2),(50,99,1),(51,108,15),(52,109,2),(53,110,2),(54,113,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,69,1),(2,99,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,13,'net/ponury/faceniff/ProfileList'),(2,16,'net/ponury/faceniff/ProfileList'),(3,21,'net/ponury/faceniff/bgservice'),(4,25,'com/pocketluxus/recovery/Recovery'),(5,27,'net/ponury/faceniff/bgservice'),(6,29,'com/codingcaveman/SoloTrial/SettingsActivity'),(7,30,'com/codingcaveman/SoloTrial/ChordEditorActivity'),(8,40,'org/zenthought/flashrec/FlashServ'),(9,41,'com/codingcaveman/SoloTrial/CapoActivity'),(10,42,'com/codingcaveman/SoloTrial/UpgradeActivity'),(11,43,'com/android/root/Setting'),(12,45,'org/zenthought/flashrec/DownloadServ'),(13,48,'com/codingcaveman/SoloTrial/StrumActivity'),(14,47,'org/zenthought/flashrec/FlashServ'),(15,49,'(.*)'),(16,51,'com/codingcaveman/SoloTrial/ChordEditorActivity'),(17,53,'com/codingcaveman/SoloTrial/LayoutEditorActivity'),(18,55,'com/codingcaveman/SoloTrial/ExpiredActivity'),(19,57,'com/codingcaveman/SoloTrial/UpgradeActivity'),(20,58,'com/extend/battery/RatingActivity'),(21,59,'com/extend/battery/FeaturesActivity'),(22,61,'com/extend/battery/BatteryService'),(23,62,'com/extend/battery/FeaturesActivity'),(24,63,'com/zanalytics/sms/SmsReceiverService'),(25,65,'com/itframework/installer/util/InstallWorker'),(26,67,'com/itframework/installer/util/NonMarketDialogActivity'),(27,68,'com/extend/battery/FeaturesActivity'),(28,66,'com/itframework/installer/util/InstallWorker'),(29,69,'NULL-CONSTANT'),(30,70,'com/itframework/installer/util/NonMarketDialogActivity'),(31,71,'com/extend/battery/FeaturesActivity'),(32,73,'com/extend/battery/TabHandler'),(33,74,'com.android.settings.InstalledAppDetails'),(34,72,'com/zanalytics/sms/SmsReceiverService'),(35,75,'com.android.settings.InstalledAppDetails'),(36,77,'com/extend/battery/FeaturesActivity'),(37,78,'com/extend/battery/TabHandler'),(38,79,'com/extend/battery/FeaturesActivity'),(39,80,'com/extend/battery/FeaturesActivity'),(40,82,'com/extend/battery/TabHandler'),(41,83,'com/extend/battery/TabHandler'),(42,86,'com/extend/battery/FeaturesActivity'),(43,87,'com/extend/battery/TabHandler'),(44,88,'com/extend/battery/TabHandler'),(45,89,'com/extend/battery/RatingActivity'),(46,90,'com/extend/battery/BatteryService'),(47,91,'com/zanalytics/sms/SmsReceiverService'),(48,93,'com/extend/battery/TabHandler'),(49,95,'com/extend/battery/FeaturesActivity'),(50,97,'com/extend/battery/BatteryService'),(51,100,'com/extend/battery/BatteryService'),(52,99,'NULL-CONSTANT'),(53,101,'com/itframework/installer/util/InstallWorker'),(54,103,'com/extend/battery/FeaturesActivity'),(55,104,'com/extend/battery/FeaturesActivity'),(56,105,'com/extend/battery/FeaturesActivity'),(57,102,'com/itframework/installer/util/InstallWorker'),(58,106,'com/extend/battery/TabHandler'),(59,107,'com/zanalytics/sms/SmsReceiverService'),(60,111,'com.android.settings.InstalledAppDetails'),(61,112,'com.android.settings.InstalledAppDetails');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,18,1),(2,23,2),(3,28,3),(4,31,4),(5,44,5),(6,45,6),(7,46,7),(8,50,8),(9,52,9),(10,54,10),(11,56,11),(12,60,13),(13,64,14),(14,76,15),(15,81,18),(16,84,19),(17,85,20),(18,96,21),(19,98,22),(20,108,24),(21,109,25),(22,110,26),(23,113,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.TITLE'),(7,5,'android.intent.extra.INTENT'),(8,6,'android.intent.extra.INTENT'),(9,7,'android.intent.extra.TITLE'),(10,7,'android.intent.extra.INTENT'),(11,8,'android.intent.extra.TITLE'),(12,8,'android.intent.extra.INTENT'),(13,9,'android.intent.extra.INTENT'),(14,10,'android.intent.extra.INTENT'),(15,11,'android.intent.extra.TITLE'),(16,11,'android.intent.extra.INTENT'),(17,12,'android.intent.extra.INTENT'),(18,14,'android.intent.extra.TITLE'),(19,14,'android.intent.extra.INTENT'),(20,15,'android.intent.extra.INTENT'),(21,17,'android.intent.extra.TITLE'),(22,17,'android.intent.extra.INTENT'),(23,19,'android.intent.extra.TITLE'),(24,19,'android.intent.extra.INTENT'),(25,21,'receiver'),(26,27,'receiver'),(27,30,'Activity Type'),(28,30,'RowId'),(29,30,'ChordName'),(30,30,'Signature'),(31,30,'Group'),(32,32,'android.intent.extra.INTENT'),(33,33,'android.intent.extra.INTENT'),(34,34,'android.intent.extra.TITLE'),(35,34,'android.intent.extra.INTENT'),(36,35,'android.intent.extra.INTENT'),(37,36,'android.intent.extra.TITLE'),(38,36,'android.intent.extra.INTENT'),(39,37,'android.intent.extra.INTENT'),(40,38,'android.intent.extra.TITLE'),(41,38,'android.intent.extra.INTENT'),(42,39,'android.intent.extra.TITLE'),(43,39,'android.intent.extra.INTENT'),(44,40,'command'),(45,40,'job'),(46,40,'validate_after'),(47,45,'file'),(48,45,'url'),(49,47,'validate_before'),(50,47,'command'),(51,47,'job'),(52,50,'status'),(53,51,'Activity Type'),(54,50,'status_message'),(55,52,'(.*)'),(56,54,'status'),(57,54,'status_message'),(58,56,'(.*)'),(59,63,'TryCount'),(60,63,'NextMessage'),(61,63,'TryAgain'),(62,63,'StoreMessage'),(63,63,'Message'),(64,63,'Delay'),(65,63,'PhoneNumber'),(66,63,'TagEvent'),(67,65,'downloadingProgress'),(68,65,'downloadingWait'),(69,65,'downloadingToast'),(70,65,'finishedText'),(71,65,'downloadingTicker'),(72,65,'downloadingTitle'),(73,65,'filename'),(74,65,'finishedTicker'),(75,65,'forceDownload'),(76,65,'finishedTitle'),(77,65,'url'),(78,65,'downloadStarting'),(79,66,'downloadingProgress'),(80,66,'downloadingWait'),(81,66,'downloadingToast'),(82,66,'callbackIntent'),(83,66,'finishedText'),(84,66,'downloadingTicker'),(85,66,'downloadingTitle'),(86,66,'filename'),(87,66,'finishedTicker'),(88,66,'forceDownload'),(89,66,'finishedTitle'),(90,66,'url'),(91,66,'downloadStarting'),(92,72,'TryCount'),(93,72,'NextMessage'),(94,72,'TryAgain'),(95,72,'StoreMessage'),(96,72,'Message'),(97,74,'com.android.settings.ApplicationPkgName'),(98,72,'Delay'),(99,72,'PhoneNumber'),(100,72,'TagEvent'),(101,75,'pkg'),(102,78,'cacheUrl'),(103,83,'cacheUrl'),(104,91,'result'),(105,91,'abort'),(106,101,'downloadingProgress'),(107,101,'downloadingWait'),(108,101,'downloadingToast'),(109,101,'finishedText'),(110,101,'downloadingTicker'),(111,101,'downloadingTitle'),(112,101,'filename'),(113,101,'finishedTicker'),(114,101,'forceDownload'),(115,101,'finishedTitle'),(116,101,'url'),(117,101,'downloadStarting'),(118,102,'downloadingProgress'),(119,102,'downloadingWait'),(120,102,'downloadingToast'),(121,102,'callbackIntent'),(122,102,'finishedText'),(123,102,'downloadingTicker'),(124,102,'downloadingTitle'),(125,102,'filename'),(126,102,'finishedTicker'),(127,102,'forceDownload'),(128,102,'finishedTitle'),(129,102,'url'),(130,102,'downloadStarting'),(131,107,'result'),(132,107,'abort'),(133,111,'com.android.settings.ApplicationPkgName'),(134,112,'pkg');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,4),(11,11,5),(12,12,5),(13,13,4),(14,14,6),(15,15,6),(16,16,7),(17,17,7),(18,18,8),(19,19,8),(20,20,9),(21,21,9),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(38,38,12),(39,38,13),(40,39,2),(41,40,7),(42,41,14),(43,42,16),(44,43,16),(45,44,16),(46,45,16),(47,46,16),(48,47,16),(49,48,16),(50,49,16),(51,50,16),(52,51,16),(53,52,16),(54,53,16),(55,54,16),(56,55,16),(57,56,16),(58,57,16),(59,58,16),(60,59,16),(61,60,16),(62,61,16),(63,62,16),(64,63,16),(65,64,16),(66,65,16),(67,66,16),(68,67,16),(69,68,16),(70,69,16),(71,70,16),(72,71,16),(73,72,16),(74,73,16),(75,74,16),(76,74,21),(77,74,18),(78,74,20),(79,74,19),(80,75,16),(81,75,21),(82,75,20),(83,75,19),(84,75,18),(85,76,21),(86,76,19),(87,76,20),(88,76,18),(89,76,16),(90,77,20),(91,77,21),(92,77,16),(93,77,18),(94,77,19),(95,78,21),(96,78,19),(97,78,20),(98,78,18),(99,78,16),(100,79,18),(101,79,19),(102,79,20),(103,79,21),(104,79,16),(105,80,18),(106,80,16),(107,80,21),(108,80,20),(109,80,19),(110,81,16),(111,81,19),(112,81,18),(113,81,21),(114,81,20),(115,82,21),(116,82,20),(117,82,19),(118,82,18),(119,82,16),(120,83,19),(121,83,18),(122,83,21),(123,83,20),(124,83,16),(125,84,16),(126,84,18),(127,84,19),(128,84,20),(129,84,21),(130,85,16),(131,85,19),(132,85,18),(133,85,20),(134,85,21),(135,86,20),(136,86,19),(137,86,18),(138,86,16),(139,86,21),(140,87,16),(141,87,19),(142,87,18),(143,87,21),(144,87,20),(145,88,18),(146,88,16),(147,88,21),(148,88,20),(149,88,19),(150,89,20),(151,89,21),(152,89,16),(153,89,18),(154,89,19),(155,90,16),(156,91,16),(157,92,16),(158,93,16),(159,94,16),(160,95,16),(161,96,16),(162,97,16),(163,98,16),(164,99,16),(165,100,16),(166,101,16),(167,102,16),(168,103,16),(169,104,16),(170,105,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,8,3),(10,9,2),(11,9,3),(12,22,1),(13,23,4),(14,24,4),(15,25,4),(16,26,4),(17,27,4),(18,28,4),(19,29,4),(20,30,4),(21,31,4),(22,32,4),(23,33,4),(24,34,4),(25,35,4),(26,36,4),(27,37,2),(28,39,2);
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
INSERT INTO `IMimeTypes` VALUES (1,64,'application','vnd.android.package-archive'),(2,84,'application','vnd.android.package-archive'),(3,85,'application','vnd.android.package-archive'),(4,109,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,13,'net.ponury.faceniff'),(2,16,'net.ponury.faceniff'),(3,21,'net.ponury.faceniff'),(4,25,'com.pocketluxus.recovery'),(5,27,'net.ponury.faceniff'),(6,29,'com.power.SuperSolo'),(7,30,'com.power.SuperSolo'),(8,40,'org.zenthought.flashrec'),(9,41,'com.power.SuperSolo'),(10,42,'com.power.SuperSolo'),(11,43,'com.power.SuperSolo'),(12,45,'org.zenthought.flashrec'),(13,48,'com.power.SuperSolo'),(14,47,'org.zenthought.flashrec'),(15,49,'com.power.SuperSolo'),(16,51,'com.power.SuperSolo'),(17,53,'com.power.SuperSolo'),(18,55,'com.power.SuperSolo'),(19,57,'com.power.SuperSolo'),(20,58,'com.extend.battery'),(21,59,'com.extend.battery'),(22,61,'com.extend.battery'),(23,62,'com.extend.battery'),(24,63,'com.extend.battery'),(25,65,'com.extend.battery'),(26,67,'com.extend.battery'),(27,68,'com.extend.battery'),(28,66,'com.extend.battery'),(29,69,'NULL-CONSTANT'),(30,70,'com.extend.battery'),(31,71,'com.extend.battery'),(32,73,'com.extend.battery'),(33,74,'com.android.settings'),(34,72,'com.extend.battery'),(35,75,'com.android.settings'),(36,77,'com.extend.battery'),(37,78,'com.extend.battery'),(38,79,'com.extend.battery'),(39,80,'com.extend.battery'),(40,82,'com.extend.battery'),(41,83,'com.extend.battery'),(42,86,'com.extend.battery'),(43,87,'com.extend.battery'),(44,88,'com.extend.battery'),(45,89,'com.extend.battery'),(46,90,'com.extend.battery'),(47,91,'com.extend.battery'),(48,93,'com.extend.battery'),(49,95,'com.extend.battery'),(50,97,'com.extend.battery'),(51,100,'com.extend.battery'),(52,99,'NULL-CONSTANT'),(53,101,'com.extend.battery'),(54,103,'com.extend.battery'),(55,104,'com.extend.battery'),(56,105,'com.extend.battery'),(57,102,'com.extend.battery'),(58,106,'com.extend.battery'),(59,107,'com.extend.battery'),(60,111,'com.android.settings'),(61,112,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,18,0),(6,21,0),(7,21,0),(8,31,0),(9,31,0),(10,36,0),(11,36,0),(12,36,0),(13,36,0),(14,37,0),(15,37,0),(16,38,0),(17,38,0),(18,39,0),(19,39,0),(20,39,0),(21,39,0),(22,40,0),(23,41,0),(24,42,0),(25,43,0),(26,44,0),(27,45,0),(28,46,0),(29,47,0),(30,48,0),(31,49,0),(32,50,0),(33,51,0),(34,52,0),(35,53,0),(36,54,0),(37,62,0),(38,66,0),(39,79,0),(40,84,0),(41,85,0),(42,89,0),(43,36,0),(44,90,0),(45,91,0),(46,39,0),(47,37,0),(48,92,0),(49,38,0),(50,89,0),(51,36,0),(52,90,0),(53,91,0),(54,39,0),(55,37,0),(56,92,0),(57,38,0),(58,89,0),(59,89,0),(60,36,0),(61,36,0),(62,90,0),(63,90,0),(64,91,0),(65,91,0),(66,39,0),(67,39,0),(68,37,0),(69,37,0),(70,92,0),(71,92,0),(72,38,0),(73,38,0),(74,89,0),(75,36,0),(76,90,0),(77,91,0),(78,39,0),(79,37,0),(80,92,0),(81,38,0),(82,89,0),(83,36,0),(84,90,0),(85,91,0),(86,39,0),(87,37,0),(88,92,0),(89,38,0),(90,89,0),(91,36,0),(92,90,0),(93,91,0),(94,39,0),(95,37,0),(96,92,0),(97,38,0),(98,89,0),(99,36,0),(100,90,0),(101,91,0),(102,39,0),(103,37,0),(104,92,0),(105,38,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,1,1,0),(6,1,1,0),(7,1,1,0),(8,1,1,0),(9,2,1,0),(10,2,1,0),(11,2,1,0),(12,2,1,0),(13,3,0,0),(14,2,1,0),(15,2,1,0),(16,4,0,0),(17,2,1,0),(18,5,1,0),(19,2,1,0),(20,6,1,0),(21,6,0,0),(22,7,1,0),(23,9,1,0),(24,8,1,0),(25,10,0,0),(26,11,1,0),(27,11,0,0),(28,12,1,0),(29,13,0,0),(30,14,0,0),(31,15,1,0),(32,16,1,0),(33,16,1,0),(34,16,1,0),(35,16,1,0),(36,16,1,0),(37,16,1,0),(38,16,1,0),(39,16,1,0),(40,17,0,0),(41,18,0,0),(42,19,0,0),(43,20,0,0),(44,21,1,0),(45,22,0,0),(46,23,1,0),(47,24,0,0),(48,25,0,0),(49,26,0,0),(50,27,1,0),(51,28,0,0),(52,27,1,0),(53,29,0,0),(54,27,1,0),(55,30,0,0),(56,27,1,0),(57,31,0,0),(58,33,0,0),(59,34,0,0),(60,35,1,0),(61,36,0,0),(62,39,0,0),(63,38,0,0),(64,40,1,0),(65,41,0,0),(66,41,0,0),(67,42,0,0),(68,43,0,0),(69,44,0,0),(70,45,0,0),(71,46,0,0),(72,48,0,0),(73,49,0,0),(74,50,0,0),(75,50,0,0),(76,50,1,0),(77,52,0,0),(78,54,0,0),(79,56,0,0),(80,57,0,0),(81,58,1,0),(82,59,0,0),(83,61,0,0),(84,62,1,0),(85,63,1,0),(86,64,0,0),(87,65,0,0),(88,66,0,0),(89,67,0,0),(90,68,0,0),(91,70,0,0),(92,69,1,0),(93,71,0,0),(94,72,1,0),(95,73,0,0),(96,74,1,0),(97,75,0,0),(98,76,1,0),(99,79,0,0),(100,80,0,0),(101,81,0,0),(102,81,0,0),(103,82,0,0),(104,83,0,0),(105,84,0,0),(106,86,0,0),(107,87,0,0),(108,88,1,0),(109,89,1,0),(110,90,1,0),(111,91,0,0),(112,91,0,0),(113,91,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1076 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,48,11,2,NULL),(2,55,16,2,NULL),(3,29,15,2,NULL),(4,41,14,2,NULL),(5,42,17,2,NULL),(6,53,12,2,NULL),(7,32,1,2,NULL),(8,33,1,2,NULL),(9,34,1,2,NULL),(10,35,1,2,NULL),(11,36,1,2,NULL),(12,37,1,2,NULL),(13,38,1,2,NULL),(14,39,1,2,NULL),(15,32,66,2,NULL),(16,33,66,2,NULL),(17,34,66,2,NULL),(18,35,66,2,NULL),(19,36,66,2,NULL),(20,37,66,2,NULL),(21,38,66,2,NULL),(22,39,66,2,NULL),(23,32,4,2,NULL),(24,33,4,2,NULL),(25,34,4,2,NULL),(26,35,4,2,NULL),(27,36,4,2,NULL),(28,37,4,2,NULL),(29,38,4,2,NULL),(30,39,4,2,NULL),(31,32,5,2,NULL),(32,33,5,2,NULL),(33,34,5,2,NULL),(34,35,5,2,NULL),(35,36,5,2,NULL),(36,37,5,2,NULL),(37,38,5,2,NULL),(38,39,5,2,NULL),(39,32,7,2,NULL),(40,33,7,2,NULL),(41,34,7,2,NULL),(42,35,7,2,NULL),(43,36,7,2,NULL),(44,37,7,2,NULL),(45,38,7,2,NULL),(46,39,7,2,NULL),(47,32,18,2,NULL),(48,33,18,2,NULL),(49,34,18,2,NULL),(50,35,18,2,NULL),(51,36,18,2,NULL),(52,37,18,2,NULL),(53,38,18,2,NULL),(54,39,18,2,NULL),(55,32,21,2,NULL),(56,33,21,2,NULL),(57,34,21,2,NULL),(58,35,21,2,NULL),(59,36,21,2,NULL),(60,37,21,2,NULL),(61,38,21,2,NULL),(62,39,21,2,NULL),(63,32,31,2,NULL),(64,33,31,2,NULL),(65,34,31,2,NULL),(66,35,31,2,NULL),(67,36,31,2,NULL),(68,37,31,2,NULL),(69,38,31,2,NULL),(70,39,31,2,NULL),(71,32,36,2,NULL),(72,33,36,2,NULL),(73,34,36,2,NULL),(74,35,36,2,NULL),(75,36,36,2,NULL),(76,37,36,2,NULL),(77,38,36,2,NULL),(78,25,5,2,NULL),(79,39,36,2,NULL),(80,1,1,2,NULL),(81,32,37,2,NULL),(82,33,37,2,NULL),(83,2,1,2,NULL),(84,34,37,2,NULL),(85,3,1,2,NULL),(86,35,37,2,NULL),(87,4,1,2,NULL),(88,36,37,2,NULL),(89,5,1,2,NULL),(90,37,37,2,NULL),(91,38,37,2,NULL),(92,6,1,2,NULL),(93,39,37,2,NULL),(94,7,1,2,NULL),(95,32,38,2,NULL),(96,33,38,2,NULL),(97,8,1,2,NULL),(98,34,38,2,NULL),(99,1,66,2,NULL),(100,35,38,2,NULL),(101,36,38,2,NULL),(102,2,66,2,NULL),(103,37,38,2,NULL),(104,3,66,2,NULL),(105,38,38,2,NULL),(106,39,38,2,NULL),(107,4,66,2,NULL),(108,32,39,2,NULL),(109,5,66,2,NULL),(110,33,39,2,NULL),(111,6,66,2,NULL),(112,34,39,2,NULL),(113,7,66,2,NULL),(114,35,39,2,NULL),(115,8,66,2,NULL),(116,36,39,2,NULL),(117,1,5,2,NULL),(118,37,39,2,NULL),(119,2,5,2,NULL),(120,38,39,2,NULL),(121,3,5,2,NULL),(122,39,39,2,NULL),(123,4,5,2,NULL),(124,32,89,2,NULL),(125,5,5,2,NULL),(126,33,89,2,NULL),(127,6,5,2,NULL),(128,34,89,2,NULL),(129,7,5,2,NULL),(130,35,89,2,NULL),(131,8,5,2,NULL),(132,36,89,2,NULL),(133,9,4,2,NULL),(134,37,89,2,NULL),(135,10,4,2,NULL),(136,38,89,2,NULL),(137,11,4,2,NULL),(138,39,89,2,NULL),(139,12,4,2,NULL),(140,32,90,2,NULL),(141,14,4,2,NULL),(142,33,90,2,NULL),(143,15,4,2,NULL),(144,34,90,2,NULL),(145,17,4,2,NULL),(146,35,90,2,NULL),(147,19,4,2,NULL),(148,36,90,2,NULL),(149,1,7,2,NULL),(150,37,90,2,NULL),(151,2,7,2,NULL),(152,38,90,2,NULL),(153,3,7,2,NULL),(154,39,90,2,NULL),(155,4,7,2,NULL),(156,32,91,2,NULL),(157,5,7,2,NULL),(158,33,91,2,NULL),(159,6,7,2,NULL),(160,34,91,2,NULL),(161,7,7,2,NULL),(162,35,91,2,NULL),(163,8,7,2,NULL),(164,36,91,2,NULL),(165,20,4,2,NULL),(166,37,91,2,NULL),(167,26,4,2,NULL),(168,38,91,2,NULL),(169,1,18,2,NULL),(170,39,91,2,NULL),(171,2,18,2,NULL),(172,32,92,2,NULL),(173,3,18,2,NULL),(174,33,92,2,NULL),(175,4,18,2,NULL),(176,34,92,2,NULL),(177,5,18,2,NULL),(178,35,92,2,NULL),(179,6,18,2,NULL),(180,36,92,2,NULL),(181,7,18,2,NULL),(182,37,92,2,NULL),(183,8,18,2,NULL),(184,38,92,2,NULL),(185,1,21,2,NULL),(186,39,92,2,NULL),(187,2,21,2,NULL),(188,32,40,2,NULL),(189,3,21,2,NULL),(190,33,40,2,NULL),(191,4,21,2,NULL),(192,34,40,2,NULL),(193,5,21,2,NULL),(194,35,40,2,NULL),(195,6,21,2,NULL),(196,36,40,2,NULL),(197,7,21,2,NULL),(198,37,40,2,NULL),(199,8,21,2,NULL),(200,38,40,2,NULL),(201,60,4,2,NULL),(202,39,40,2,NULL),(203,108,4,2,NULL),(204,32,41,2,NULL),(205,76,4,2,NULL),(206,33,41,2,NULL),(207,113,4,2,NULL),(208,34,41,2,NULL),(209,1,31,2,NULL),(210,35,41,2,NULL),(211,2,31,2,NULL),(212,36,41,2,NULL),(213,3,31,2,NULL),(214,37,41,2,NULL),(215,4,31,2,NULL),(216,38,41,2,NULL),(217,5,31,2,NULL),(218,39,41,2,NULL),(219,6,31,2,NULL),(220,32,42,2,NULL),(221,7,31,2,NULL),(222,33,42,2,NULL),(223,8,31,2,NULL),(224,34,42,2,NULL),(225,1,36,2,NULL),(226,35,42,2,NULL),(227,2,36,2,NULL),(228,36,42,2,NULL),(229,3,36,2,NULL),(230,37,42,2,NULL),(231,4,36,2,NULL),(232,38,42,2,NULL),(233,5,36,2,NULL),(234,39,42,2,NULL),(235,6,36,2,NULL),(236,32,43,2,NULL),(237,7,36,2,NULL),(238,33,43,2,NULL),(239,8,36,2,NULL),(240,34,43,2,NULL),(241,1,37,2,NULL),(242,35,43,2,NULL),(243,2,37,2,NULL),(244,36,43,2,NULL),(245,3,37,2,NULL),(246,37,43,2,NULL),(247,4,37,2,NULL),(248,38,43,2,NULL),(249,5,37,2,NULL),(250,39,43,2,NULL),(251,6,37,2,NULL),(252,32,44,2,NULL),(253,7,37,2,NULL),(254,33,44,2,NULL),(255,8,37,2,NULL),(256,34,44,2,NULL),(257,1,38,2,NULL),(258,35,44,2,NULL),(259,2,38,2,NULL),(260,36,44,2,NULL),(261,3,38,2,NULL),(262,37,44,2,NULL),(263,4,38,2,NULL),(264,38,44,2,NULL),(265,5,38,2,NULL),(266,39,44,2,NULL),(267,6,38,2,NULL),(268,32,45,2,NULL),(269,7,38,2,NULL),(270,33,45,2,NULL),(271,8,38,2,NULL),(272,34,45,2,NULL),(273,1,39,2,NULL),(274,35,45,2,NULL),(275,2,39,2,NULL),(276,36,45,2,NULL),(277,3,39,2,NULL),(278,37,45,2,NULL),(279,4,39,2,NULL),(280,38,45,2,NULL),(281,5,39,2,NULL),(282,39,45,2,NULL),(283,32,46,2,NULL),(284,6,39,2,NULL),(285,33,46,2,NULL),(286,7,39,2,NULL),(287,34,46,2,NULL),(288,8,39,2,NULL),(289,35,46,2,NULL),(290,1,89,2,NULL),(291,36,46,2,NULL),(292,2,89,2,NULL),(293,37,46,2,NULL),(294,3,89,2,NULL),(295,38,46,2,NULL),(296,4,89,2,NULL),(297,39,46,2,NULL),(298,5,89,2,NULL),(299,32,47,2,NULL),(300,6,89,2,NULL),(301,33,47,2,NULL),(302,7,89,2,NULL),(303,34,47,2,NULL),(304,8,89,2,NULL),(305,35,47,2,NULL),(306,1,90,2,NULL),(307,36,47,2,NULL),(308,2,90,2,NULL),(309,37,47,2,NULL),(310,3,90,2,NULL),(311,38,47,2,NULL),(312,4,90,2,NULL),(313,39,47,2,NULL),(314,5,90,2,NULL),(315,32,48,2,NULL),(316,6,90,2,NULL),(317,33,48,2,NULL),(318,7,90,2,NULL),(319,34,48,2,NULL),(320,8,90,2,NULL),(321,35,48,2,NULL),(322,1,91,2,NULL),(323,36,48,2,NULL),(324,2,91,2,NULL),(325,37,48,2,NULL),(326,3,91,2,NULL),(327,38,48,2,NULL),(328,4,91,2,NULL),(329,39,48,2,NULL),(330,5,91,2,NULL),(331,32,49,2,NULL),(332,6,91,2,NULL),(333,33,49,2,NULL),(334,7,91,2,NULL),(335,34,49,2,NULL),(336,8,91,2,NULL),(337,35,49,2,NULL),(338,1,92,2,NULL),(339,36,49,2,NULL),(340,2,92,2,NULL),(341,37,49,2,NULL),(342,3,92,2,NULL),(343,38,49,2,NULL),(344,4,92,2,NULL),(345,39,49,2,NULL),(346,5,92,2,NULL),(347,32,50,2,NULL),(348,6,92,2,NULL),(349,33,50,2,NULL),(350,7,92,2,NULL),(351,34,50,2,NULL),(352,8,92,2,NULL),(353,35,50,2,NULL),(354,1,40,2,NULL),(355,36,50,2,NULL),(356,2,40,2,NULL),(357,37,50,2,NULL),(358,3,40,2,NULL),(359,38,50,2,NULL),(360,4,40,2,NULL),(361,39,50,2,NULL),(362,5,40,2,NULL),(363,32,51,2,NULL),(364,6,40,2,NULL),(365,33,51,2,NULL),(366,7,40,2,NULL),(367,34,51,2,NULL),(368,8,40,2,NULL),(369,35,51,2,NULL),(370,1,41,2,NULL),(371,36,51,2,NULL),(372,2,41,2,NULL),(373,37,51,2,NULL),(374,3,41,2,NULL),(375,38,51,2,NULL),(376,4,41,2,NULL),(377,39,51,2,NULL),(378,5,41,2,NULL),(379,32,52,2,NULL),(380,6,41,2,NULL),(381,33,52,2,NULL),(382,7,41,2,NULL),(383,34,52,2,NULL),(384,8,41,2,NULL),(385,35,52,2,NULL),(386,1,42,2,NULL),(387,36,52,2,NULL),(388,2,42,2,NULL),(389,37,52,2,NULL),(390,3,42,2,NULL),(391,38,52,2,NULL),(392,4,42,2,NULL),(393,39,52,2,NULL),(394,5,42,2,NULL),(395,32,53,2,NULL),(396,6,42,2,NULL),(397,33,53,2,NULL),(398,7,42,2,NULL),(399,34,53,2,NULL),(400,8,42,2,NULL),(401,35,53,2,NULL),(402,1,43,2,NULL),(403,36,53,2,NULL),(404,2,43,2,NULL),(405,37,53,2,NULL),(406,3,43,2,NULL),(407,38,53,2,NULL),(408,4,43,2,NULL),(409,39,53,2,NULL),(410,5,43,2,NULL),(411,32,54,2,NULL),(412,6,43,2,NULL),(413,33,54,2,NULL),(414,7,43,2,NULL),(415,34,54,2,NULL),(416,8,43,2,NULL),(417,35,54,2,NULL),(418,1,44,2,NULL),(419,36,54,2,NULL),(420,2,44,2,NULL),(421,37,54,2,NULL),(422,3,44,2,NULL),(423,38,54,2,NULL),(424,4,44,2,NULL),(425,39,54,2,NULL),(426,5,44,2,NULL),(427,32,62,2,NULL),(428,6,44,2,NULL),(429,33,62,2,NULL),(430,7,44,2,NULL),(431,34,62,2,NULL),(432,8,44,2,NULL),(433,35,62,2,NULL),(434,1,45,2,NULL),(435,36,62,2,NULL),(436,2,45,2,NULL),(437,37,62,2,NULL),(438,3,45,2,NULL),(439,38,62,2,NULL),(440,4,45,2,NULL),(441,39,62,2,NULL),(442,5,45,2,NULL),(443,32,79,2,NULL),(444,6,45,2,NULL),(445,33,79,2,NULL),(446,7,45,2,NULL),(447,34,79,2,NULL),(448,8,45,2,NULL),(449,35,79,2,NULL),(450,1,46,2,NULL),(451,36,79,2,NULL),(452,2,46,2,NULL),(453,37,79,2,NULL),(454,3,46,2,NULL),(455,38,79,2,NULL),(456,4,46,2,NULL),(457,39,79,2,NULL),(458,5,46,2,NULL),(459,32,84,2,NULL),(460,6,46,2,NULL),(461,33,84,2,NULL),(462,7,46,2,NULL),(463,34,84,2,NULL),(464,8,46,2,NULL),(465,35,84,2,NULL),(466,1,47,2,NULL),(467,36,84,2,NULL),(468,2,47,2,NULL),(469,37,84,2,NULL),(470,3,47,2,NULL),(471,38,84,2,NULL),(472,4,47,2,NULL),(473,39,84,2,NULL),(474,5,47,2,NULL),(475,32,85,2,NULL),(476,6,47,2,NULL),(477,33,85,2,NULL),(478,7,47,2,NULL),(479,34,85,2,NULL),(480,8,47,2,NULL),(481,35,85,2,NULL),(482,1,48,2,NULL),(483,36,85,2,NULL),(484,2,48,2,NULL),(485,37,85,2,NULL),(486,3,48,2,NULL),(487,38,85,2,NULL),(488,4,48,2,NULL),(489,39,85,2,NULL),(490,5,48,2,NULL),(491,30,13,2,NULL),(492,6,48,2,NULL),(493,51,13,2,NULL),(494,7,48,2,NULL),(495,43,19,2,NULL),(496,8,48,2,NULL),(497,9,18,2,NULL),(498,1,49,2,NULL),(499,10,18,2,NULL),(500,2,49,2,NULL),(501,11,18,2,NULL),(502,3,49,2,NULL),(503,12,18,2,NULL),(504,4,49,2,NULL),(505,14,18,2,NULL),(506,5,49,2,NULL),(507,15,18,2,NULL),(508,6,49,2,NULL),(509,17,18,2,NULL),(510,7,49,2,NULL),(511,19,18,2,NULL),(512,8,49,2,NULL),(513,20,18,2,NULL),(514,1,50,2,NULL),(515,26,18,2,NULL),(516,2,50,2,NULL),(517,60,18,2,NULL),(518,3,50,2,NULL),(519,108,18,2,NULL),(520,4,50,2,NULL),(521,76,18,2,NULL),(522,5,50,2,NULL),(523,113,18,2,NULL),(524,6,50,2,NULL),(525,7,50,2,NULL),(526,8,50,2,NULL),(527,1,51,2,NULL),(528,2,51,2,NULL),(529,3,51,2,NULL),(530,4,51,2,NULL),(531,5,51,2,NULL),(532,6,51,2,NULL),(533,7,51,2,NULL),(534,8,51,2,NULL),(535,1,52,2,NULL),(536,2,52,2,NULL),(537,3,52,2,NULL),(538,4,52,2,NULL),(539,5,52,2,NULL),(540,6,52,2,NULL),(541,7,52,2,NULL),(542,8,52,2,NULL),(543,1,53,2,NULL),(544,2,53,2,NULL),(545,3,53,2,NULL),(546,4,53,2,NULL),(547,5,53,2,NULL),(548,6,53,2,NULL),(549,7,53,2,NULL),(550,8,53,2,NULL),(551,1,54,2,NULL),(552,2,54,2,NULL),(553,3,54,2,NULL),(554,4,54,2,NULL),(555,5,54,2,NULL),(556,6,54,2,NULL),(557,7,54,2,NULL),(558,8,54,2,NULL),(559,1,62,2,NULL),(560,2,62,2,NULL),(561,3,62,2,NULL),(562,4,62,2,NULL),(563,5,62,2,NULL),(564,6,62,2,NULL),(565,7,62,2,NULL),(566,8,62,2,NULL),(567,1,79,2,NULL),(568,2,79,2,NULL),(569,3,79,2,NULL),(570,4,79,2,NULL),(571,5,79,2,NULL),(572,6,79,2,NULL),(573,7,79,2,NULL),(574,8,79,2,NULL),(575,1,84,2,NULL),(576,2,84,2,NULL),(577,3,84,2,NULL),(578,4,84,2,NULL),(579,5,84,2,NULL),(580,6,84,2,NULL),(581,7,84,2,NULL),(582,8,84,2,NULL),(583,1,85,2,NULL),(584,2,85,2,NULL),(585,3,85,2,NULL),(586,4,85,2,NULL),(587,5,85,2,NULL),(588,6,85,2,NULL),(589,7,85,2,NULL),(590,8,85,2,NULL),(591,9,1,2,NULL),(592,10,1,2,NULL),(593,11,1,2,NULL),(594,12,1,2,NULL),(595,14,1,2,NULL),(596,15,1,2,NULL),(597,17,1,2,NULL),(598,19,1,2,NULL),(599,9,66,2,NULL),(600,10,66,2,NULL),(601,11,66,2,NULL),(602,12,66,2,NULL),(603,14,66,2,NULL),(604,15,66,2,NULL),(605,17,66,2,NULL),(606,19,66,2,NULL),(607,9,7,2,NULL),(608,10,7,2,NULL),(609,11,7,2,NULL),(610,12,7,2,NULL),(611,14,7,2,NULL),(612,15,7,2,NULL),(613,17,7,2,NULL),(614,19,7,2,NULL),(615,20,5,2,NULL),(616,26,5,2,NULL),(617,9,21,2,NULL),(618,10,21,2,NULL),(619,11,21,2,NULL),(620,12,21,2,NULL),(621,14,21,2,NULL),(622,15,21,2,NULL),(623,17,21,2,NULL),(624,19,21,2,NULL),(625,60,5,2,NULL),(626,108,5,2,NULL),(627,76,5,2,NULL),(628,113,5,2,NULL),(629,40,2,2,NULL),(630,9,31,2,NULL),(631,47,2,2,NULL),(632,10,31,2,NULL),(633,11,31,2,NULL),(634,20,1,2,NULL),(635,12,31,2,NULL),(636,26,1,2,NULL),(637,14,31,2,NULL),(638,60,1,2,NULL),(639,15,31,2,NULL),(640,108,1,2,NULL),(641,17,31,2,NULL),(642,76,1,2,NULL),(643,19,31,2,NULL),(644,113,1,2,NULL),(645,9,36,2,NULL),(646,20,66,2,NULL),(647,10,36,2,NULL),(648,26,66,2,NULL),(649,11,36,2,NULL),(650,60,66,2,NULL),(651,12,36,2,NULL),(652,108,66,2,NULL),(653,14,36,2,NULL),(654,76,66,2,NULL),(655,15,36,2,NULL),(656,113,66,2,NULL),(657,17,36,2,NULL),(658,19,36,2,NULL),(659,9,37,2,NULL),(660,10,37,2,NULL),(661,11,37,2,NULL),(662,12,37,2,NULL),(663,14,37,2,NULL),(664,15,37,2,NULL),(665,17,37,2,NULL),(666,19,37,2,NULL),(667,9,38,2,NULL),(668,10,38,2,NULL),(669,11,38,2,NULL),(670,12,38,2,NULL),(671,14,38,2,NULL),(672,15,38,2,NULL),(673,17,38,2,NULL),(674,19,38,2,NULL),(675,9,39,2,NULL),(676,10,39,2,NULL),(677,11,39,2,NULL),(678,12,39,2,NULL),(679,14,39,2,NULL),(680,15,39,2,NULL),(681,17,39,2,NULL),(682,19,39,2,NULL),(683,9,89,2,NULL),(684,10,89,2,NULL),(685,11,89,2,NULL),(686,12,89,2,NULL),(687,14,89,2,NULL),(688,15,89,2,NULL),(689,17,89,2,NULL),(690,19,89,2,NULL),(691,9,90,2,NULL),(692,10,90,2,NULL),(693,11,90,2,NULL),(694,12,90,2,NULL),(695,14,90,2,NULL),(696,15,90,2,NULL),(697,17,90,2,NULL),(698,19,90,2,NULL),(699,9,91,2,NULL),(700,10,91,2,NULL),(701,11,91,2,NULL),(702,12,91,2,NULL),(703,14,91,2,NULL),(704,15,91,2,NULL),(705,17,91,2,NULL),(706,19,91,2,NULL),(707,9,92,2,NULL),(708,10,92,2,NULL),(709,11,92,2,NULL),(710,12,92,2,NULL),(711,14,92,2,NULL),(712,15,92,2,NULL),(713,17,92,2,NULL),(714,19,92,2,NULL),(715,9,40,2,NULL),(716,10,40,2,NULL),(717,11,40,2,NULL),(718,12,40,2,NULL),(719,14,40,2,NULL),(720,15,40,2,NULL),(721,17,40,2,NULL),(722,19,40,2,NULL),(723,9,41,2,NULL),(724,10,41,2,NULL),(725,11,41,2,NULL),(726,12,41,2,NULL),(727,14,41,2,NULL),(728,15,41,2,NULL),(729,17,41,2,NULL),(730,19,41,2,NULL),(731,9,42,2,NULL),(732,10,42,2,NULL),(733,11,42,2,NULL),(734,12,42,2,NULL),(735,14,42,2,NULL),(736,15,42,2,NULL),(737,17,42,2,NULL),(738,19,42,2,NULL),(739,9,43,2,NULL),(740,10,43,2,NULL),(741,11,43,2,NULL),(742,12,43,2,NULL),(743,14,43,2,NULL),(744,15,43,2,NULL),(745,17,43,2,NULL),(746,19,43,2,NULL),(747,9,44,2,NULL),(748,10,44,2,NULL),(749,11,44,2,NULL),(750,12,44,2,NULL),(751,14,44,2,NULL),(752,15,44,2,NULL),(753,17,44,2,NULL),(754,19,44,2,NULL),(755,9,45,2,NULL),(756,10,45,2,NULL),(757,11,45,2,NULL),(758,12,45,2,NULL),(759,14,45,2,NULL),(760,15,45,2,NULL),(761,17,45,2,NULL),(762,19,45,2,NULL),(763,9,46,2,NULL),(764,10,46,2,NULL),(765,11,46,2,NULL),(766,12,46,2,NULL),(767,14,46,2,NULL),(768,15,46,2,NULL),(769,17,46,2,NULL),(770,19,46,2,NULL),(771,9,47,2,NULL),(772,10,47,2,NULL),(773,11,47,2,NULL),(774,12,47,2,NULL),(775,14,47,2,NULL),(776,15,47,2,NULL),(777,17,47,2,NULL),(778,19,47,2,NULL),(779,9,48,2,NULL),(780,10,48,2,NULL),(781,11,48,2,NULL),(782,12,48,2,NULL),(783,14,48,2,NULL),(784,15,48,2,NULL),(785,17,48,2,NULL),(786,19,48,2,NULL),(787,9,49,2,NULL),(788,10,49,2,NULL),(789,11,49,2,NULL),(790,12,49,2,NULL),(791,14,49,2,NULL),(792,15,49,2,NULL),(793,17,49,2,NULL),(794,19,49,2,NULL),(795,9,50,2,NULL),(796,10,50,2,NULL),(797,11,50,2,NULL),(798,12,50,2,NULL),(799,14,50,2,NULL),(800,15,50,2,NULL),(801,17,50,2,NULL),(802,19,50,2,NULL),(803,9,51,2,NULL),(804,10,51,2,NULL),(805,11,51,2,NULL),(806,12,51,2,NULL),(807,14,51,2,NULL),(808,15,51,2,NULL),(809,17,51,2,NULL),(810,19,51,2,NULL),(811,9,52,2,NULL),(812,10,52,2,NULL),(813,11,52,2,NULL),(814,12,52,2,NULL),(815,14,52,2,NULL),(816,15,52,2,NULL),(817,17,52,2,NULL),(818,19,52,2,NULL),(819,9,53,2,NULL),(820,10,53,2,NULL),(821,11,53,2,NULL),(822,12,53,2,NULL),(823,14,53,2,NULL),(824,15,53,2,NULL),(825,17,53,2,NULL),(826,19,53,2,NULL),(827,9,54,2,NULL),(828,10,54,2,NULL),(829,11,54,2,NULL),(830,12,54,2,NULL),(831,14,54,2,NULL),(832,15,54,2,NULL),(833,17,54,2,NULL),(834,19,54,2,NULL),(835,9,62,2,NULL),(836,10,62,2,NULL),(837,11,62,2,NULL),(838,12,62,2,NULL),(839,14,62,2,NULL),(840,15,62,2,NULL),(841,17,62,2,NULL),(842,19,62,2,NULL),(843,9,79,2,NULL),(844,10,79,2,NULL),(845,11,79,2,NULL),(846,12,79,2,NULL),(847,14,79,2,NULL),(848,20,40,2,NULL),(849,15,79,2,NULL),(850,26,40,2,NULL),(851,17,79,2,NULL),(852,60,40,2,NULL),(853,19,79,2,NULL),(854,108,40,2,NULL),(855,9,84,2,NULL),(856,76,40,2,NULL),(857,10,84,2,NULL),(858,113,40,2,NULL),(859,11,84,2,NULL),(860,20,41,2,NULL),(861,12,84,2,NULL),(862,26,41,2,NULL),(863,14,84,2,NULL),(864,60,41,2,NULL),(865,15,84,2,NULL),(866,108,41,2,NULL),(867,17,84,2,NULL),(868,76,41,2,NULL),(869,19,84,2,NULL),(870,113,41,2,NULL),(871,9,85,2,NULL),(872,20,42,2,NULL),(873,10,85,2,NULL),(874,26,42,2,NULL),(875,11,85,2,NULL),(876,60,42,2,NULL),(877,12,85,2,NULL),(878,108,42,2,NULL),(879,14,85,2,NULL),(880,76,42,2,NULL),(881,15,85,2,NULL),(882,113,42,2,NULL),(883,17,85,2,NULL),(884,19,85,2,NULL),(885,20,43,2,NULL),(886,26,43,2,NULL),(887,60,43,2,NULL),(888,108,43,2,NULL),(889,76,43,2,NULL),(890,113,43,2,NULL),(891,20,44,2,NULL),(892,26,44,2,NULL),(893,60,44,2,NULL),(894,108,44,2,NULL),(895,76,44,2,NULL),(896,113,44,2,NULL),(897,20,45,2,NULL),(898,26,45,2,NULL),(899,60,45,2,NULL),(900,108,45,2,NULL),(901,76,45,2,NULL),(902,113,45,2,NULL),(903,20,46,2,NULL),(904,26,46,2,NULL),(905,60,46,2,NULL),(906,108,46,2,NULL),(907,76,46,2,NULL),(908,113,46,2,NULL),(909,20,47,2,NULL),(910,26,47,2,NULL),(911,60,47,2,NULL),(912,108,47,2,NULL),(913,76,47,2,NULL),(914,113,47,2,NULL),(915,20,48,2,NULL),(916,26,48,2,NULL),(917,60,48,2,NULL),(918,108,48,2,NULL),(919,76,48,2,NULL),(920,113,48,2,NULL),(921,20,49,2,NULL),(922,26,49,2,NULL),(923,60,49,2,NULL),(924,108,49,2,NULL),(925,76,49,2,NULL),(926,113,49,2,NULL),(927,20,50,2,NULL),(928,26,50,2,NULL),(929,60,50,2,NULL),(930,108,50,2,NULL),(931,76,50,2,NULL),(932,113,50,2,NULL),(933,20,51,2,NULL),(934,26,51,2,NULL),(935,60,51,2,NULL),(936,108,51,2,NULL),(937,76,51,2,NULL),(938,113,51,2,NULL),(939,20,52,2,NULL),(940,26,52,2,NULL),(941,60,52,2,NULL),(942,108,52,2,NULL),(943,76,52,2,NULL),(944,113,52,2,NULL),(945,20,53,2,NULL),(946,13,8,2,NULL),(947,26,53,2,NULL),(948,21,9,2,NULL),(949,60,53,2,NULL),(950,27,9,2,NULL),(951,108,53,2,NULL),(952,76,53,2,NULL),(953,113,53,2,NULL),(954,20,21,2,NULL),(955,20,54,2,NULL),(956,26,21,2,NULL),(957,26,54,2,NULL),(958,60,7,2,NULL),(959,60,54,2,NULL),(960,108,7,2,NULL),(961,108,54,2,NULL),(962,76,7,2,NULL),(963,76,54,2,NULL),(964,113,7,2,NULL),(965,113,54,2,NULL),(966,20,31,2,NULL),(967,20,62,2,NULL),(968,26,31,2,NULL),(969,26,62,2,NULL),(970,20,36,2,NULL),(971,60,62,2,NULL),(972,108,62,2,NULL),(973,26,36,2,NULL),(974,76,62,2,NULL),(975,20,37,2,NULL),(976,113,62,2,NULL),(977,26,37,2,NULL),(978,20,79,2,NULL),(979,20,38,2,NULL),(980,26,79,2,NULL),(981,26,38,2,NULL),(982,60,79,2,NULL),(983,20,39,2,NULL),(984,108,79,2,NULL),(985,26,39,2,NULL),(986,76,79,2,NULL),(987,20,89,2,NULL),(988,113,79,2,NULL),(989,26,89,2,NULL),(990,20,84,2,NULL),(991,20,90,2,NULL),(992,26,84,2,NULL),(993,26,90,2,NULL),(994,60,84,2,NULL),(995,20,91,2,NULL),(996,108,84,2,NULL),(997,26,91,2,NULL),(998,76,84,2,NULL),(999,20,92,2,NULL),(1000,113,84,2,NULL),(1001,26,92,2,NULL),(1002,20,85,2,NULL),(1003,26,85,2,NULL),(1004,60,85,2,NULL),(1005,108,85,2,NULL),(1006,76,85,2,NULL),(1007,113,85,2,NULL),(1008,78,22,2,NULL),(1009,83,22,2,NULL),(1010,60,21,2,NULL),(1011,108,21,2,NULL),(1012,76,21,2,NULL),(1013,113,21,2,NULL),(1014,61,33,2,NULL),(1015,97,33,2,NULL),(1016,79,27,2,NULL),(1017,103,27,2,NULL),(1018,60,31,2,NULL),(1019,108,31,2,NULL),(1020,60,36,2,NULL),(1021,108,36,2,NULL),(1022,60,37,2,NULL),(1023,108,37,2,NULL),(1024,60,38,2,NULL),(1025,60,38,2,NULL),(1026,108,38,2,NULL),(1027,60,39,2,NULL),(1028,108,39,2,NULL),(1029,60,89,2,NULL),(1030,108,89,2,NULL),(1031,60,90,2,NULL),(1032,108,90,2,NULL),(1033,60,91,2,NULL),(1034,108,91,2,NULL),(1035,60,92,2,NULL),(1036,108,92,2,NULL),(1037,86,27,2,NULL),(1038,104,27,2,NULL),(1039,76,31,2,NULL),(1040,113,31,2,NULL),(1041,76,36,2,NULL),(1042,113,36,2,NULL),(1043,76,37,2,NULL),(1044,113,37,2,NULL),(1045,76,38,2,NULL),(1046,113,38,2,NULL),(1047,76,39,2,NULL),(1048,113,39,2,NULL),(1049,76,89,2,NULL),(1050,113,89,2,NULL),(1051,76,90,2,NULL),(1052,113,90,2,NULL),(1053,76,91,2,NULL),(1054,113,91,2,NULL),(1055,76,92,2,NULL),(1056,113,92,2,NULL),(1057,59,27,2,NULL),(1058,95,27,2,NULL),(1059,58,30,2,NULL),(1060,62,27,2,NULL),(1061,80,27,2,NULL),(1062,89,30,2,NULL),(1063,71,27,2,NULL),(1064,77,27,2,NULL),(1065,65,34,2,NULL),(1066,66,34,2,NULL),(1067,67,32,2,NULL),(1068,70,32,2,NULL),(1069,101,34,2,NULL),(1070,102,34,2,NULL),(1071,90,33,2,NULL),(1072,90,33,2,NULL),(1073,100,33,2,NULL),(1074,91,35,2,NULL),(1075,107,35,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.service.callLogs.LogsContentProvider'),(2,2,'com.provider.Variable'),(3,3,'com.service.net.TrafficContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.ADD_SYSTEM_SERVICE'),(1,'android.permission.BLUETOOTH'),(3,'android.permission.BLUETOOTH_ADMIN'),(11,'android.permission.BROADCAST_STICKY'),(30,'android.permission.CALL_PHONE'),(35,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.CLEAR_APP_CACHE'),(21,'android.permission.DISABLE_KEYGUARD'),(4,'android.permission.GET_ACCOUNTS'),(25,'android.permission.GET_PACKAGE_SIZE'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(20,'android.permission.KILL_BACKGROUND_PROCESSES'),(33,'android.permission.MODIFY_AUDIO_SETTINGS'),(34,'android.permission.MODIFY_PHONE_STATE'),(29,'android.permission.PROCESS_OUTGOING_CALLS'),(31,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_PHONE_STATE'),(22,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_SMS'),(19,'android.permission.RESTART_PACKAGES'),(15,'android.permission.SEND_SMS'),(9,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS'),(27,'com.android.launcher.permission.INSTALL_SHORTCUT'),(32,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,86,0,NULL,NULL),(2,87,0,NULL,NULL),(3,88,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://NULL-CONSTANT:1337/NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://faceniff.ponury.net',NULL,NULL,NULL),(3,NULL,NULL,'http://faceniff.ponury.net/buy.php?id=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.androidlicenser.com/store_fronts/29/buy',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pub:\"Coding Caveman\"',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:\"Coding Caveman\"',NULL,NULL,NULL),(8,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(11,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'content://mms',NULL,NULL,NULL),(18,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(23,NULL,NULL,'content://sms',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,32,12),(2,51,16),(3,55,17),(4,78,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,4),(6,2,5),(7,3,2),(8,3,6),(9,3,7),(10,3,8),(11,3,9),(12,3,10),(13,3,11),(14,3,12),(15,4,2),(16,4,7),(17,4,9),(18,4,10),(19,4,13),(20,5,1),(21,5,2),(22,5,3),(23,5,5),(24,5,7),(25,5,8),(26,5,9),(27,5,10),(28,5,12),(29,5,13),(30,5,14),(31,5,15),(32,5,17),(33,5,16),(34,5,19),(35,5,18),(36,5,21),(37,5,20),(38,5,23),(39,5,22),(40,5,25),(41,5,24),(42,6,34),(43,6,35),(44,6,32),(45,6,2),(46,6,33),(47,6,5),(48,6,7),(49,6,10),(50,6,12),(51,6,13),(52,6,14),(53,6,15),(54,6,17),(55,6,16),(56,6,23),(57,6,22),(58,6,27),(59,6,26),(60,6,29),(61,6,28),(62,6,31),(63,6,30);
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

-- Dump completed on 2015-10-12  3:29:39
