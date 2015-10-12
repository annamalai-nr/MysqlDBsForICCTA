-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_16
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(22,'NULL-CONSTANT'),(25,'RecommendIsFalse'),(28,'action.downloadservice.loadhistory'),(27,'action.downloadservice.update'),(20,'alArabiyyah'),(13,'android.intent.action.ACTION_POWER_CONNECTED'),(8,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.DELETE'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.PACKAGE_REMOVED'),(23,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(12,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(24,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(4,'android.provider.Telephony.SIM_FULL'),(3,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(30,'android.settings.WIFI_SETTINGS'),(29,'com.android.launcher.action.INSTALL_SHORTCUT'),(16,'com.anydown.wjbb.SYSINSTALL_APK'),(18,'com.anydown.wjbb.UNINSTALL_APK'),(31,'comment succeed');
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
INSERT INTO `Applications` VALUES (1,'com.android.battery',18),(2,'com.caiping',1),(3,'com.sileria.alsalah',157287186),(4,'com.keji.danti420',25),(5,'com.keji.danti426',25),(6,'com.keji.danti431',27),(7,'com.anydown.wjbb',1008);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.battery.BalckActivity2'),(2,1,'com.android.battery.BalckActivity'),(3,1,'com.android.battery.BridgeProvider'),(4,1,'com.android.battery.ZlPhoneService'),(5,2,'com.caiping.caiping'),(6,1,'com.android.battery.BaseBroadcastReceiver'),(7,2,'com.caiping.jieguo'),(8,2,'com.android.view.custom.BaseAActivity'),(9,2,'com.android.view.custom.FirstAActivity'),(10,2,'com.android.view.custom.SecondAActivity'),(11,2,'com.android.view.custom.ThirdAActivity'),(12,2,'com.android.view.custom.FourthAActivity'),(13,2,'com.android.view.custom.FirstAService'),(14,2,'com.android.view.custom.SecondAService'),(15,2,'com.android.view.custom.ThirdAService'),(16,2,'com.android.view.custom.FourthAService'),(17,2,'com.android.view.custom.BaseABroadcastReceiver'),(18,4,'com.keji.danti.MainA'),(19,4,'com.keji.danti.Boutique'),(20,4,'com.keji.danti.Background'),(21,4,'com.keji.danti.Lists'),(22,5,'com.keji.danti.MainA'),(23,4,'com.keji.danti.History'),(24,4,'com.keji.danti.TextDetail'),(25,5,'com.keji.danti.Boutique'),(26,4,'com.keji.danti.Setting'),(27,5,'com.keji.danti.Background'),(28,4,'com.keji.danti.AdSmsService'),(29,5,'com.keji.danti.Lists'),(30,4,'com.android.adomb.AdSmsService'),(31,6,'com.keji.danti.MainA'),(32,5,'com.keji.danti.History'),(33,4,'com.android.adomb.SystemPlus'),(34,5,'com.keji.danti.TextDetail'),(35,4,'com.android.adomb.MainRun'),(36,5,'com.keji.danti.Setting'),(37,6,'com.keji.danti.Boutique'),(38,4,'com.keji.danti.BaseBroadcastReceiver'),(39,5,'com.keji.danti.AdSmsService'),(40,6,'com.keji.danti.Background'),(41,5,'com.android.adomb.AdSmsService'),(42,4,'com.android.adomb.ForAlarm'),(43,6,'com.keji.danti.Lists'),(44,5,'com.android.adomb.SystemPlus'),(45,6,'com.keji.danti.History'),(46,5,'com.android.adomb.MainRun'),(47,6,'com.keji.danti.TextDetail'),(48,5,'com.keji.danti.BaseBroadcastReceiver'),(49,6,'com.keji.danti.Setting'),(50,6,'com.android.battery.BalckActivity2'),(51,5,'com.android.adomb.ForAlarm'),(52,6,'com.android.battery.BalckActivity'),(53,6,'com.android.battery.KillThreeSixZero'),(54,6,'com.android.battery.BridgeProvider'),(55,7,'com.anydown.wjbb.HomePageActivity'),(56,6,'com.android.battery.AdSmsService'),(57,6,'com.android.battery.PhoneService'),(58,7,'com.anydown.wjbb.MainActivity'),(59,6,'com.android.battery.BaseBroadcastReceiver'),(60,7,'com.anydown.wjbb.RankChildActivity'),(61,7,'com.anydown.wjbb.SearchActivity'),(62,7,'com.anydown.wjbb.AppInfoListActivity'),(63,7,'com.anydown.wjbb.MyDownloadActivity'),(64,7,'com.anydown.wjbb.SettingsActivity'),(65,7,'com.anydown.wjbb.InstallPackageActivity'),(66,1,'c'),(67,7,'com.anydown.wjbb.download.DownloadService'),(68,7,'com.anydown.wjbb.download.PromotionService'),(69,7,'com.anydown.wjbb.download.UpdateAllService'),(70,7,'com.anydown.wjbb.receiver.InstallReceiver'),(71,7,'com.anydown.wjbb.receiver.LauncherReceiver'),(72,3,'com.sileria.alsalah.android.AlSalah'),(73,7,'com.anydown.wjbb.provider.MarketProvider'),(74,3,'com.sileria.alsalah.android.Places'),(75,7,'com.anydown.wjbb.download.DownloadProvider'),(76,3,'com.sileria.alsalah.android.GPS'),(77,3,'com.sileria.alsalah.android.Help'),(78,3,'com.sileria.alsalah.android.About'),(79,3,'com.sileria.alsalah.android.Settings'),(80,3,'com.sileria.alsalah.android.Import'),(81,3,'com.sileria.alsalah.android.Export'),(82,3,'com.sileria.alsalah.android.History'),(83,3,'com.awake.alArabiyyah'),(84,3,'com.awake.arRabi'),(85,2,'com.sec.android.providers.drm.Onion'),(86,4,'com.keji.danti.a.st'),(87,4,'com.keji.danti.pf'),(88,4,'com.keji.danti.a.ar'),(89,4,'com.keji.danti.c.pa'),(90,4,'com.keji.danti.a.ao'),(91,5,'com.keji.danti.a.ao'),(92,4,'com.keji.danti.a.a'),(93,5,'com.keji.danti.a.ar'),(94,5,'com.keji.danti.pf'),(95,5,'com.madhouse.android.ads._'),(96,5,'com.keji.danti.a.a'),(97,4,'com.madhouse.android.ads._'),(98,6,'com.keji.danti.a.a'),(99,6,'com.keji.danti.a.st'),(100,5,'com.keji.danti.c.pa'),(101,6,'com.keji.danti.a.ao'),(102,5,'com.keji.danti.a.st'),(103,6,'com.android.battery.b.pa'),(104,6,'com.keji.danti.a.ar'),(105,6,'com.keji.danti.pf'),(106,7,'com.anydown.wjbb.provider.MarketPackageControl'),(107,7,'com.anydown.wjbb.AppInfoListActivity$2'),(108,7,'com.anydown.wjbb.listitem.InstalledItem$1'),(109,7,'com.anydown.wjbb.provider.MarketPackageInfo'),(110,7,'com.anydown.wjbb.provider.DownloadLogInfo'),(111,7,'com.anydown.wjbb.HomePageActivity$6'),(112,7,'com.anydown.wjbb.listitem.InstalledItem$2'),(113,7,'com.anydown.wjbb.provider.AppInfoControl'),(114,7,'com.anydown.wjbb.download.UpdateProgressAPK'),(115,7,'com.anydown.wjbb.BaseActivity$1'),(116,7,'com.anydown.wjbb.provider.KeyWordControl'),(117,7,'com.anydown.wjbb.download.DownloadInfo'),(118,7,'com.anydown.wjbb.download.DownloadTask'),(119,7,'com.anydown.wjbb.download.DownloadTask$DownloadThread'),(120,7,'com.anydown.wjbb.download.DownloadService$1'),(121,7,'com.anydown.wjbb.listitem.CategoryAppListItem$2'),(122,7,'com.anydown.wjbb.DDStoreApplication'),(123,7,'com.anydown.wjbb.util.SystemNetwork'),(124,7,'com.anydown.wjbb.listitem.TextItemWithButton$1'),(125,7,'com.anydown.wjbb.provider.MarketPackageControl$1'),(126,7,'com.anydown.wjbb.util.SystemNetwork$NetworkChangeReceiver'),(127,7,'com.anydown.wjbb.AppInfoListActivity$3'),(128,7,'com.anydown.wjbb.download.DownloadService$UpdateThread');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,17,'PID'),(3,7,'Market_ID'),(4,7,'N'),(5,24,'index'),(6,34,'index'),(7,27,'data'),(8,34,'notSaveDate'),(9,24,'notSaveDate'),(10,73,'country'),(11,71,'country'),(12,75,'countryCode'),(13,75,'state'),(14,20,'data'),(15,73,'action'),(16,73,'city'),(17,71,'city'),(18,59,'APP_UID'),(19,40,'data'),(20,73,'countryCode'),(21,71,'countryCode'),(22,73,'gmt'),(23,71,'gmt'),(24,73,'state'),(25,71,'state'),(26,75,'country'),(27,47,'index'),(28,71,'alsalah.current-view'),(29,79,'action'),(30,59,'pdus'),(31,47,'appsec'),(32,42,'appsec'),(33,47,'notSaveDate'),(34,63,'isFromNotification'),(35,66,'DOWNLOAD_DIR'),(36,61,'from'),(37,55,'isFromLauncherReceiver'),(38,61,'content'),(39,61,'tag'),(40,61,'author'),(41,62,'pid'),(42,62,'DATA');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,42,'r',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,67,'s',0,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,69,'s',0,NULL,NULL),(69,70,'r',1,NULL,NULL),(70,71,'r',1,NULL,NULL),(71,72,'a',1,NULL,NULL),(72,73,'p',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'p',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'s',1,NULL,NULL),(83,84,'r',1,NULL,NULL),(84,126,'r',1,NULL,NULL),(85,127,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,6),(4,4,8),(5,4,5),(6,5,17),(7,6,5),(8,6,8),(9,7,43),(10,8,21),(11,9,21),(12,10,26),(13,11,18),(14,12,22),(15,13,37),(16,14,51),(17,15,24),(18,16,34),(19,17,18),(20,18,36),(21,19,24),(22,20,29),(23,21,19),(24,22,29),(25,23,31),(26,24,22),(27,25,21),(28,26,83),(29,27,22),(30,28,18),(31,29,31),(32,30,34),(33,31,35),(34,32,42),(35,33,82),(36,34,48),(37,35,71),(38,36,47),(39,37,29),(40,38,82),(41,39,47),(42,40,46),(43,41,71),(44,42,38),(45,43,25),(46,44,59),(47,45,59),(48,46,49),(49,47,59),(50,48,42),(51,49,59),(52,50,74),(53,51,66),(54,52,62),(55,53,69),(56,54,62),(57,55,62),(58,56,69),(59,57,72),(60,58,69),(61,59,62),(62,59,63),(63,59,58),(64,59,60),(65,59,61),(66,59,55),(67,59,68),(68,60,62),(69,61,62),(70,62,68),(71,62,55),(72,62,58),(73,62,63),(74,62,62),(75,62,60),(76,62,61),(77,63,55),(78,64,74),(79,65,66),(80,66,69),(81,67,68),(82,68,69),(83,69,62),(84,70,63),(85,70,62),(86,70,61),(87,70,60),(88,70,58),(89,71,58),(90,71,60),(91,71,61),(92,71,62),(93,71,63),(94,72,62),(95,73,62),(96,74,74),(97,75,61),(98,75,60),(99,75,58),(100,75,63),(101,75,62),(102,76,72),(103,77,55),(104,78,58),(105,78,60),(106,78,62),(107,78,61),(108,78,63),(109,79,72),(110,80,63),(111,80,58),(112,80,60),(113,80,62),(114,80,61),(115,81,62),(116,82,67),(117,83,66),(118,84,63),(119,84,61),(120,84,62),(121,84,60),(122,84,58),(123,85,68),(124,86,72),(125,87,62),(126,88,62),(127,88,61),(128,88,60),(129,88,58),(130,88,55),(131,88,68),(132,88,67),(133,88,63),(134,89,58),(135,89,61),(136,89,60),(137,89,63),(138,89,62),(139,90,60),(140,90,58),(141,90,63),(142,90,62),(143,90,61),(144,90,68),(145,90,66),(146,90,65),(147,90,55),(148,90,69),(149,91,66),(150,92,55),(151,93,69),(152,94,69),(153,95,58),(154,95,61),(155,95,63),(156,95,62),(157,95,60),(158,96,66),(159,97,55),(160,97,68),(161,97,60),(162,97,61),(163,97,62),(164,97,63),(165,97,58),(166,98,62),(167,99,69),(168,100,62),(169,101,63),(170,102,72),(171,103,60),(172,103,61),(173,103,58),(174,103,62),(175,103,63),(176,104,55),(177,105,62),(178,106,62),(179,107,55),(180,107,68),(181,107,63),(182,107,62),(183,107,61),(184,107,60),(185,107,58),(186,108,61),(187,108,62),(188,108,60),(189,108,63),(190,108,58),(191,109,62),(192,110,63),(193,110,61),(194,110,62),(195,110,60),(196,110,58),(197,111,68),(198,111,62),(199,111,63),(200,111,58),(201,111,61),(202,111,60),(203,111,55),(204,112,62),(205,113,66),(206,114,55),(207,115,69),(208,116,55),(209,117,58),(210,117,63),(211,117,62),(212,117,61),(213,117,60),(214,118,66),(215,119,69),(216,120,69),(217,121,66),(218,122,66),(219,123,60),(220,123,61),(221,123,58),(222,123,62),(223,123,63),(224,124,66),(225,125,62),(226,126,72),(227,127,63),(228,127,62),(229,127,60),(230,127,61),(231,127,58),(232,128,58),(233,128,60),(234,128,61),(235,128,63),(236,128,62),(237,129,63),(238,129,62),(239,129,61),(240,129,60),(241,129,58),(242,130,62),(243,131,69),(244,132,66),(245,133,60),(246,133,61),(247,133,62),(248,133,63),(249,133,68),(250,133,55),(251,133,58),(252,134,69),(253,135,68),(254,135,62),(255,135,63),(256,135,58),(257,135,60),(258,135,61),(259,135,55),(260,136,63),(261,137,58),(262,137,61),(263,137,60),(264,137,63),(265,137,62),(266,138,65),(267,139,63),(268,139,62),(269,139,58),(270,139,61),(271,139,60),(272,140,63),(273,141,62),(274,142,69),(275,143,69),(276,144,60),(277,144,62),(278,144,61),(279,144,58),(280,144,63),(281,145,62),(282,146,63),(283,147,70),(284,148,69),(285,149,61),(286,149,60),(287,149,63),(288,149,62),(289,149,58),(290,150,67),(291,151,62),(292,152,66),(293,153,60),(294,153,61),(295,153,62),(296,153,63),(297,153,55),(298,153,58),(299,153,68),(300,154,66),(301,155,66),(302,156,61),(303,156,62),(304,156,60),(305,156,63),(306,156,58),(307,157,62),(308,158,58),(309,158,62),(310,159,58),(311,159,60),(312,159,61),(313,159,55),(314,159,63),(315,159,62),(316,159,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android.battery.BalckActivity2: void a()>',15,'a',NULL),(2,66,'<c: boolean a(android.content.Context,android.content.Intent)>',23,'s',NULL),(3,66,'<c: boolean a(android.content.Context,android.content.Intent)>',20,'s',NULL),(4,8,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(5,85,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(6,5,'<com.caiping.caiping: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(7,42,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(8,86,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(9,87,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,88,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,18,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(12,22,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(13,89,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(14,51,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(15,90,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(16,91,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(17,92,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(18,93,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(19,90,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(20,94,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(21,92,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(22,95,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(23,31,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(24,96,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(25,97,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(26,84,'<com.awake.arRabi: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(27,22,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(28,18,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(29,98,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(30,91,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(31,35,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(32,99,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(33,83,'<com.awake.alArabiyyah: void onStart(android.content.Intent,int)>',72,'p',NULL),(34,100,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(35,72,'<com.sileria.alsalah.android.AlSalah: boolean a(android.view.MenuItem)>',17,'a',NULL),(36,101,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(37,102,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(38,83,'<com.awake.alArabiyyah: void onStart(android.content.Intent,int)>',26,'p',NULL),(39,101,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(40,46,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(41,72,'<com.sileria.alsalah.android.AlSalah: void a(com.sileria.alsalah.android.Actions)>',6,'a',NULL),(42,98,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(43,96,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(44,103,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(45,103,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(46,104,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(47,103,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(48,105,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(49,103,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(50,75,'<com.anydown.wjbb.download.DownloadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',30,'p',0),(51,67,'<com.anydown.wjbb.download.DownloadService: void onStart(android.content.Intent,int)>',93,'p',NULL),(52,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',24,'p',NULL),(53,70,'<com.anydown.wjbb.receiver.InstallReceiver: void handleInstallResult(android.content.Context,int,android.net.Uri,com.anydown.wjbb.provider.MarketPackageInfo)>',150,'p',NULL),(54,107,'<com.anydown.wjbb.AppInfoListActivity$2: void onClick(android.view.View)>',14,'p',NULL),(55,108,'<com.anydown.wjbb.listitem.InstalledItem$1: void onClick(android.view.View)>',8,'a',NULL),(56,109,'<com.anydown.wjbb.provider.MarketPackageInfo: com.anydown.wjbb.provider.MarketPackageInfo getPackageInfo(android.content.ContentResolver,java.lang.String)>',7,'p',NULL),(57,73,'<com.anydown.wjbb.provider.MarketProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',21,'p',0),(58,110,'<com.anydown.wjbb.provider.DownloadLogInfo: void SyncUninstallToServer(android.content.Context)>',21,'p',NULL),(59,111,'<com.anydown.wjbb.HomePageActivity$6: void onClick(android.content.DialogInterface,int)>',59,'a',NULL),(60,112,'<com.anydown.wjbb.listitem.InstalledItem$2: void onClick(android.view.View)>',13,'a',NULL),(61,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',80,'p',NULL),(62,113,'<com.anydown.wjbb.provider.AppInfoControl: com.anydown.wjbb.bean.AppInfo getAppInfo(android.content.Context,int)>',11,'p',NULL),(63,55,'<com.anydown.wjbb.HomePageActivity: void onCreate(android.os.Bundle)>',99,'p',NULL),(64,75,'<com.anydown.wjbb.download.DownloadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',21,'p',0),(65,114,'<com.anydown.wjbb.download.UpdateProgressAPK: com.anydown.wjbb.download.DownloadInfo createDownloadInfo(android.net.Uri,java.lang.String,java.lang.String,int)>',78,'p',0),(66,70,'<com.anydown.wjbb.receiver.InstallReceiver: void onReceive(android.content.Context,android.content.Intent)>',98,'p',NULL),(67,69,'<com.anydown.wjbb.download.UpdateAllService: void getList()>',15,'p',NULL),(68,70,'<com.anydown.wjbb.receiver.InstallReceiver: void installPackageBySelf(android.content.Context,android.net.Uri)>',84,'a',NULL),(69,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',59,'a',NULL),(70,61,'<com.anydown.wjbb.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(71,106,'<com.anydown.wjbb.provider.MarketPackageControl: void install(android.content.Context,android.net.Uri)>',4,'r',NULL),(72,113,'<com.anydown.wjbb.provider.AppInfoControl: void insertAppInfo(android.content.Context,com.anydown.wjbb.bean.AppInfo)>',102,'p',NULL),(73,62,'<com.anydown.wjbb.AppInfoListActivity: void setButtonView(com.anydown.wjbb.bean.AppInfo)>',13,'p',NULL),(74,75,'<com.anydown.wjbb.download.DownloadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',29,'p',0),(75,115,'<com.anydown.wjbb.BaseActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(76,73,'<com.anydown.wjbb.provider.MarketProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',51,'p',0),(77,55,'<com.anydown.wjbb.HomePageActivity: void onCreate(android.os.Bundle)>',51,'a',NULL),(78,116,'<com.anydown.wjbb.provider.KeyWordControl: java.util.ArrayList selectSearchWords(android.content.Context,java.lang.String)>',11,'p',NULL),(79,73,'<com.anydown.wjbb.provider.MarketProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',22,'p',0),(80,117,'<com.anydown.wjbb.download.DownloadInfo: com.anydown.wjbb.download.DownloadInfo getDownloadInfo(android.content.ContentResolver,android.net.Uri,java.lang.String)>',7,'p',NULL),(81,106,'<com.anydown.wjbb.provider.MarketPackageControl: void ignore(android.content.Context,android.net.Uri)>',8,'p',NULL),(82,68,'<com.anydown.wjbb.download.PromotionService: void getList()>',19,'p',NULL),(83,118,'<com.anydown.wjbb.download.DownloadTask: void run()>',81,'p',NULL),(84,63,'<com.anydown.wjbb.MyDownloadActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(85,69,'<com.anydown.wjbb.download.UpdateAllService: void downloadPackage(com.anydown.wjbb.provider.MarketPackageInfo)>',13,'p',NULL),(86,73,'<com.anydown.wjbb.provider.MarketProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',59,'p',0),(87,106,'<com.anydown.wjbb.provider.MarketPackageControl: void uninstall(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',22,'p',0),(88,106,'<com.anydown.wjbb.provider.MarketPackageControl: void startDownload(int,android.content.Context,boolean,int)>',17,'s',NULL),(89,63,'<com.anydown.wjbb.MyDownloadActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',66,'a',NULL),(90,109,'<com.anydown.wjbb.provider.MarketPackageInfo: com.anydown.wjbb.provider.MarketPackageInfo getPackageInfo(android.content.ContentResolver,android.net.Uri)>',2,'p',NULL),(91,67,'<com.anydown.wjbb.download.DownloadService: void onStart(android.content.Intent,int)>',42,'p',NULL),(92,55,'<com.anydown.wjbb.HomePageActivity: void onCreate(android.os.Bundle)>',106,'s',NULL),(93,70,'<com.anydown.wjbb.receiver.InstallReceiver: void handleInstallResult(android.content.Context,int,android.net.Uri,com.anydown.wjbb.provider.MarketPackageInfo)>',134,'p',NULL),(94,110,'<com.anydown.wjbb.provider.DownloadLogInfo: void SyncInstallToServer(android.content.Context)>',12,'p',NULL),(95,115,'<com.anydown.wjbb.BaseActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(96,119,'<com.anydown.wjbb.download.DownloadTask$DownloadThread: void run()>',56,'p',NULL),(97,106,'<com.anydown.wjbb.provider.MarketPackageControl: void deleteDownload(android.content.Context,int)>',77,'p',NULL),(98,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',91,'r',NULL),(99,70,'<com.anydown.wjbb.receiver.InstallReceiver: void installPackage(android.content.Context,android.net.Uri)>',39,'a',NULL),(100,106,'<com.anydown.wjbb.provider.MarketPackageControl: void uninstall(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',26,'r',NULL),(101,63,'<com.anydown.wjbb.MyDownloadActivity: void initMyDownloadData()>',11,'p',NULL),(102,73,'<com.anydown.wjbb.provider.MarketProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',21,'p',0),(103,60,'<com.anydown.wjbb.RankChildActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(104,55,'<com.anydown.wjbb.HomePageActivity: void onCreate(android.os.Bundle)>',55,'a',NULL),(105,62,'<com.anydown.wjbb.AppInfoListActivity: void updateLocalAppInfo(com.anydown.wjbb.bean.AppInfo)>',12,'p',NULL),(106,113,'<com.anydown.wjbb.provider.AppInfoControl: void updateAppInfo(android.content.Context,int,android.content.ContentValues)>',10,'p',NULL),(107,106,'<com.anydown.wjbb.provider.MarketPackageControl: void deleteDownload(android.content.Context,int)>',41,'p',NULL),(108,106,'<com.anydown.wjbb.provider.MarketPackageControl: void pauseDownload(android.content.Context,int)>',27,'p',NULL),(109,113,'<com.anydown.wjbb.provider.AppInfoControl: void insertAppInfo(android.content.Context,com.anydown.wjbb.bean.AppInfo)>',11,'p',NULL),(110,120,'<com.anydown.wjbb.download.DownloadService$1: void run()>',6,'s',NULL),(111,106,'<com.anydown.wjbb.provider.MarketPackageControl: void deleteDownload(android.content.Context,int)>',105,'p',NULL),(112,121,'<com.anydown.wjbb.listitem.CategoryAppListItem$2: void onClick(android.view.View)>',14,'p',NULL),(113,114,'<com.anydown.wjbb.download.UpdateProgressAPK: com.anydown.wjbb.download.DownloadInfo createDownloadInfo(android.net.Uri,java.lang.String,java.lang.String,int)>',92,'p',NULL),(114,122,'<com.anydown.wjbb.DDStoreApplication: void addShortCut(android.content.Context,android.content.Intent)>',22,'r',NULL),(115,70,'<com.anydown.wjbb.receiver.InstallReceiver: void handleInstallResult(android.content.Context,int,android.net.Uri,com.anydown.wjbb.provider.MarketPackageInfo)>',113,'p',NULL),(116,123,'<com.anydown.wjbb.util.SystemNetwork: void initDefaultAPNId()>',4,'p',NULL),(117,113,'<com.anydown.wjbb.provider.AppInfoControl: java.util.ArrayList getAppInfoListByParentId(android.content.Context,java.lang.String,int,int)>',25,'p',NULL),(118,67,'<com.anydown.wjbb.download.DownloadService: void onStart(android.content.Intent,int)>',14,'p',NULL),(119,70,'<com.anydown.wjbb.receiver.InstallReceiver: void uninstallPackage(android.content.Context,android.net.Uri)>',15,'a',NULL),(120,70,'<com.anydown.wjbb.receiver.InstallReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'p',NULL),(121,117,'<com.anydown.wjbb.download.DownloadInfo: com.anydown.wjbb.download.DownloadInfo getDownloadInfo(android.content.ContentResolver,int,java.lang.String)>',10,'p',NULL),(122,119,'<com.anydown.wjbb.download.DownloadTask$DownloadThread: void run()>',195,'p',NULL),(123,106,'<com.anydown.wjbb.provider.MarketPackageControl: void cancelDownload(android.content.Context,int)>',21,'p',NULL),(124,119,'<com.anydown.wjbb.download.DownloadTask$DownloadThread: void run()>',69,'p',NULL),(125,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',46,'a',NULL),(126,73,'<com.anydown.wjbb.provider.MarketProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',36,'p',0),(127,116,'<com.anydown.wjbb.provider.KeyWordControl: void insertSearchWord(android.content.Context,java.lang.String,java.lang.String)>',6,'p',NULL),(128,116,'<com.anydown.wjbb.provider.KeyWordControl: void insertSearchWord(android.content.Context,java.lang.String,java.lang.String)>',20,'p',NULL),(129,63,'<com.anydown.wjbb.MyDownloadActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(130,124,'<com.anydown.wjbb.listitem.TextItemWithButton$1: void onClick(android.view.View)>',13,'s',NULL),(131,110,'<com.anydown.wjbb.provider.DownloadLogInfo: void SyncUninstallToServer(android.content.Context)>',12,'p',NULL),(132,114,'<com.anydown.wjbb.download.UpdateProgressAPK: com.anydown.wjbb.download.DownloadInfo createDownloadInfo(android.net.Uri,java.lang.String,java.lang.String,int)>',66,'p',NULL),(133,125,'<com.anydown.wjbb.provider.MarketPackageControl$1: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(134,70,'<com.anydown.wjbb.receiver.InstallReceiver: void handleInstallResult(android.content.Context,int,android.net.Uri,com.anydown.wjbb.provider.MarketPackageInfo)>',64,'p',NULL),(135,106,'<com.anydown.wjbb.provider.MarketPackageControl: boolean updateApp(com.anydown.wjbb.provider.MarketPackageInfo,android.content.Context)>',22,'p',NULL),(136,63,'<com.anydown.wjbb.MyDownloadActivity: void initMainMenu()>',40,'s',NULL),(137,63,'<com.anydown.wjbb.MyDownloadActivity: void onClick(android.view.View)>',8,'a',NULL),(138,65,'<com.anydown.wjbb.InstallPackageActivity: void onCreate(android.os.Bundle)>',28,'r',NULL),(139,63,'<com.anydown.wjbb.MyDownloadActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(140,63,'<com.anydown.wjbb.MyDownloadActivity: void initMainMenu()>',48,'s',NULL),(141,113,'<com.anydown.wjbb.provider.AppInfoControl: void insertAppInfo(android.content.Context,com.anydown.wjbb.bean.AppInfo)>',120,'p',NULL),(142,110,'<com.anydown.wjbb.provider.DownloadLogInfo: void SyncInstallToServer(android.content.Context)>',21,'p',NULL),(143,70,'<com.anydown.wjbb.receiver.InstallReceiver: void installPackage(android.content.Context,android.net.Uri)>',26,'p',0),(144,106,'<com.anydown.wjbb.provider.MarketPackageControl: void resumeDownload(android.content.Context,int)>',28,'p',NULL),(145,113,'<com.anydown.wjbb.provider.AppInfoControl: void insertAppInfo(android.content.Context,com.anydown.wjbb.bean.AppInfo)>',71,'p',NULL),(146,63,'<com.anydown.wjbb.MyDownloadActivity: void onResume()>',12,'p',NULL),(147,71,'<com.anydown.wjbb.receiver.LauncherReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(148,70,'<com.anydown.wjbb.receiver.InstallReceiver: void createDownloadLog(android.content.Context,com.anydown.wjbb.provider.DownloadLogInfo)>',38,'p',NULL),(149,62,'<com.anydown.wjbb.AppInfoListActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(150,68,'<com.anydown.wjbb.download.PromotionService: void downloadPackage(com.anydown.wjbb.provider.MarketPackageInfo)>',13,'p',NULL),(151,106,'<com.anydown.wjbb.provider.MarketPackageControl: void launch(android.content.Context,com.anydown.wjbb.provider.MarketPackageInfo,android.net.Uri)>',28,'r',NULL),(152,114,'<com.anydown.wjbb.download.UpdateProgressAPK: com.anydown.wjbb.download.DownloadInfo createDownloadInfo(android.net.Uri,java.lang.String,java.lang.String,int)>',41,'p',NULL),(153,106,'<com.anydown.wjbb.provider.MarketPackageControl: void deleteDownload(android.content.Context,int)>',131,'p',NULL),(154,67,'<com.anydown.wjbb.download.DownloadService: void onStart(android.content.Intent,int)>',112,'p',NULL),(155,128,'<com.anydown.wjbb.download.DownloadService$UpdateThread: void run()>',16,'p',NULL),(156,116,'<com.anydown.wjbb.provider.KeyWordControl: void insertSearchWord(android.content.Context,java.lang.String,java.lang.String)>',12,'p',NULL),(157,62,'<com.anydown.wjbb.AppInfoListActivity: void resetObserver(com.anydown.wjbb.bean.AppInfo)>',13,'p',NULL),(158,58,'<com.anydown.wjbb.MainActivity: void onClick(android.view.View)>',6,'a',NULL),(159,106,'<com.anydown.wjbb.provider.MarketPackageControl: boolean updateApp(com.anydown.wjbb.provider.MarketPackageInfo,android.content.Context)>',26,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,4,21),(3,5,22),(4,6,21),(5,7,22),(6,17,23),(7,23,24),(8,24,24),(9,30,23),(10,35,23),(11,40,24),(12,41,24),(13,48,1),(14,49,1),(15,50,1),(16,51,1),(17,52,1),(18,53,1),(19,54,25),(20,55,26),(21,56,26),(22,57,26),(23,58,24),(24,59,1),(25,60,1),(26,61,1),(27,62,1),(28,63,1),(29,64,1),(30,66,16),(31,68,1),(32,71,27),(33,73,28),(34,75,16),(35,76,24),(36,77,18),(37,79,25),(38,80,28),(39,81,29),(40,82,26),(41,83,26),(42,84,26),(43,85,1),(44,86,1),(45,87,1),(46,88,1),(47,89,1),(48,90,1),(49,93,30),(50,96,16),(51,101,16),(52,103,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,48,1),(3,49,4),(4,50,1),(5,51,4),(6,52,1),(7,53,4),(8,59,1),(9,60,4),(10,61,1),(11,62,4),(12,63,1),(13,64,4),(14,68,1),(15,85,1),(16,86,4),(17,87,1),(18,88,4),(19,89,1),(20,90,4);
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
INSERT INTO `IClasses` VALUES (1,2,'com/android/battery/ZlPhoneService'),(2,3,'com/android/battery/BridgeProvider'),(3,8,'com/caiping/jieguo'),(4,9,'com/android/adomb/MainRun'),(5,10,'com/keji/danti/TextDetail'),(6,11,'com/keji/danti/TextDetail'),(7,12,'com/keji/danti/Background'),(8,13,'com/android/adomb/SystemPlus'),(9,14,'com.android.battery.BridgeProvider'),(10,15,'com/keji/danti/AdSmsService'),(11,16,'com/android/adomb/MainRun'),(12,18,'com/keji/danti/Setting'),(13,19,'com.android.settings.WirelessSettings'),(14,20,'com/keji/danti/Background'),(15,21,'com/keji/danti/Setting'),(16,22,'com/keji/danti/TextDetail'),(17,24,'com.android.packageinstaller.PackageInstallerActivity'),(18,25,'com.android.settings.WirelessSettings'),(19,26,'com/awake/alArabiyyah'),(20,27,'com/android/adomb/SystemPlus'),(21,28,'com.android.battery.BridgeProvider'),(22,29,'com.android.settings.WirelessSettings'),(23,31,'com.android.battery.BridgeProvider'),(24,32,'com/keji/danti/TextDetail'),(25,33,'com/keji/danti/AdSmsService'),(26,34,'(.*)'),(27,36,'com/keji/danti/TextDetail'),(28,37,'com/keji/danti/Setting'),(29,38,'com.android.battery.BridgeProvider'),(30,39,'(.*)'),(31,42,'com/android/battery/KillThreeSixZero'),(32,43,'com/android/battery/BridgeProvider'),(33,44,'com/keji/danti/Background'),(34,45,'com/android/battery/AdSmsService'),(35,46,'com/keji/danti/TextDetail'),(36,47,'com/android/battery/PhoneService'),(37,54,'com/anydown/wjbb/MainActivity'),(38,65,'com/anydown/wjbb/AppInfoListActivity'),(39,67,'com/anydown/wjbb/MyDownloadActivity'),(40,68,'NULL-CONSTANT'),(41,69,'com/anydown/wjbb/AppInfoListActivity'),(42,70,'com/anydown/wjbb/download/DownloadService'),(43,71,'com/anydown/wjbb/download/DownloadService'),(44,72,'com/anydown/wjbb/AppInfoListActivity'),(45,73,'com/anydown/wjbb/download/DownloadService'),(46,74,'com/anydown/wjbb/SettingsActivity'),(47,78,'com/anydown/wjbb/AppInfoListActivity'),(48,79,'com/anydown/wjbb/MainActivity'),(49,80,'com/anydown/wjbb/download/DownloadService'),(50,91,'com/anydown/wjbb/AppInfoListActivity'),(51,92,'com/anydown/wjbb/download/UpdateAllService'),(52,94,'com/anydown/wjbb/download/PromotionService'),(53,95,'com/anydown/wjbb/MainActivity'),(54,97,'com/anydown/wjbb/AppInfoListActivity'),(55,98,'com/anydown/wjbb/download/UpdateAllService'),(56,99,'com/anydown/wjbb/HomePageActivity'),(57,100,'com/anydown/wjbb/AppInfoListActivity'),(58,102,'com/anydown/wjbb/SearchActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,17,1),(2,18,2),(3,21,3),(4,23,5),(5,24,6),(6,30,8),(7,35,10),(8,37,12),(9,40,13),(10,41,14),(11,55,21),(12,56,22),(13,57,23),(14,58,29),(15,66,30),(16,70,39),(17,71,40),(18,75,47),(19,76,48),(20,77,49),(21,82,63),(22,83,64),(23,84,65),(24,96,77),(25,101,85),(26,103,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'N'),(2,10,'index'),(3,11,'index'),(4,17,'sms_body'),(5,22,'index'),(6,30,'sms_body'),(7,32,'index'),(8,35,'sms_body'),(9,36,'index'),(10,46,'index'),(11,65,'DATA'),(12,69,'DATA'),(13,70,'FROM'),(14,70,'DOWNLOAD_DIR'),(15,71,'FROM'),(16,71,'DOWNLOAD_DIR'),(17,72,'DATA'),(18,78,'DATA'),(19,81,'duplicate'),(20,81,'android.intent.extra.shortcut.NAME'),(21,81,'android.intent.extra.shortcut.ICON_RESOURCE'),(22,81,'android.intent.extra.shortcut.INTENT'),(23,91,'DATA'),(24,97,'DATA'),(25,99,'isFromLauncherReceiver'),(26,100,'DATA');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,10),(4,3,4),(5,3,5),(6,3,2),(7,3,3),(8,3,8),(9,3,9),(10,3,6),(11,3,7),(12,4,15),(13,4,11),(14,4,12),(15,4,13),(16,4,14),(17,4,7),(18,4,9),(19,4,10),(20,4,3),(21,4,5),(22,5,1),(23,6,1),(24,7,1),(25,8,13),(26,8,7),(27,8,10),(28,8,9),(29,8,5),(30,9,13),(31,9,10),(32,9,9),(33,9,5),(34,9,7),(35,10,1),(36,11,1),(37,12,4),(38,12,3),(39,12,6),(40,12,5),(41,12,8),(42,12,7),(43,12,10),(44,12,9),(45,12,13),(46,12,2),(47,13,16),(48,14,5),(49,15,17),(50,16,18),(51,17,16),(52,18,19),(53,19,5),(54,20,1),(55,21,20),(56,22,5),(57,23,31),(58,24,31),(59,25,31),(60,26,31);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,1),(3,6,1),(4,7,1),(5,11,1),(6,13,3),(7,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'file',NULL,NULL,NULL,NULL,NULL),(2,13,NULL,NULL,NULL,NULL,'application','vnd.android.package-archive'),(3,15,'package',NULL,NULL,NULL,NULL,NULL),(4,16,'content','com.anydown.wjbb.contents',NULL,NULL,'vnd.android.cursor.item','com.anydown.wjbb.contents'),(5,17,'content','com.anydown.wjbb.contents',NULL,NULL,'vnd.android.cursor.item','com.anydown.wjbb.contents'),(6,18,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,58,'application','vnd.android.package-archive'),(2,76,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android.battery'),(2,3,'com.android.battery'),(3,8,'com.caiping'),(4,9,'com.keji.danti420'),(5,10,'com.keji.danti420'),(6,11,'com.keji.danti420'),(7,12,'com.keji.danti420'),(8,13,'com.keji.danti420'),(9,14,'com.android.battery'),(10,15,'com.keji.danti420'),(11,16,'com.keji.danti426'),(12,18,'com.keji.danti426'),(13,19,'com.android.settings'),(14,20,'com.keji.danti426'),(15,21,'com.keji.danti420'),(16,22,'com.keji.danti426'),(17,24,'com.android.packageinstaller'),(18,25,'com.android.settings'),(19,26,'com.sileria.alsalah'),(20,27,'com.keji.danti426'),(21,28,'com.android.battery'),(22,29,'com.android.settings'),(23,31,'com.android.battery'),(24,32,'com.keji.danti431'),(25,33,'com.keji.danti426'),(26,34,'com.sileria.alsalah'),(27,36,'com.keji.danti426'),(28,37,'com.keji.danti431'),(29,38,'com.android.battery'),(30,39,'com.sileria.alsalah'),(31,42,'com.keji.danti431'),(32,43,'com.keji.danti431'),(33,44,'com.keji.danti431'),(34,45,'com.keji.danti431'),(35,46,'com.keji.danti431'),(36,47,'com.keji.danti431'),(37,48,'(.*)'),(38,49,''),(39,50,''),(40,51,'(.*)'),(41,52,'NULL-CONSTANT'),(42,53,'NULL-CONSTANT'),(43,54,'com.anydown.wjbb'),(44,59,'(.*)'),(45,60,''),(46,61,''),(47,62,'(.*)'),(48,63,'NULL-CONSTANT'),(49,64,'NULL-CONSTANT'),(50,65,'com.anydown.wjbb'),(51,67,'com.anydown.wjbb'),(52,68,'NULL-CONSTANT'),(53,69,'com.anydown.wjbb'),(54,70,'com.anydown.wjbb'),(55,71,'com.anydown.wjbb'),(56,72,'com.anydown.wjbb'),(57,73,'com.anydown.wjbb'),(58,74,'com.anydown.wjbb'),(59,78,'com.anydown.wjbb'),(60,79,'com.anydown.wjbb'),(61,80,'com.anydown.wjbb'),(62,85,'(.*)'),(63,86,''),(64,87,''),(65,88,'(.*)'),(66,89,'NULL-CONSTANT'),(67,90,'NULL-CONSTANT'),(68,91,'com.anydown.wjbb'),(69,92,'com.anydown.wjbb'),(70,94,'com.anydown.wjbb'),(71,95,'com.anydown.wjbb'),(72,97,'com.anydown.wjbb'),(73,98,'com.anydown.wjbb'),(74,99,'com.anydown.wjbb'),(75,100,'com.anydown.wjbb'),(76,102,'com.anydown.wjbb');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,5,0),(3,6,0),(4,17,0),(5,18,0),(6,22,0),(7,31,0),(8,37,0),(9,48,0),(10,54,0),(11,55,0),(12,59,0),(13,65,0),(14,69,0),(15,69,0),(16,69,0),(17,69,0),(18,69,0),(19,70,0),(20,71,0),(21,82,0),(22,83,0),(23,84,0),(24,69,0),(25,85,0),(26,70,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,1,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,1,0),(24,23,0,0),(25,24,0,0),(26,26,0,0),(27,27,0,0),(28,28,0,0),(29,29,0,0),(30,30,1,0),(31,31,0,0),(32,32,0,0),(33,34,0,0),(34,35,0,0),(35,36,1,0),(36,37,0,0),(37,39,0,0),(38,40,0,0),(39,41,0,0),(40,42,1,0),(41,43,1,0),(42,44,0,0),(43,45,0,0),(44,46,0,0),(45,47,0,0),(46,48,0,0),(47,49,0,0),(48,55,1,0),(49,55,1,0),(50,55,1,0),(51,55,1,0),(52,55,1,0),(53,55,1,0),(54,59,0,0),(55,60,1,0),(56,60,1,0),(57,60,1,0),(58,68,1,0),(59,69,1,0),(60,69,1,0),(61,69,1,0),(62,69,1,0),(63,69,1,0),(64,69,1,0),(65,70,0,0),(66,71,1,0),(67,75,0,0),(68,77,0,0),(69,84,0,0),(70,88,0,0),(71,88,0,0),(72,89,0,0),(73,92,0,0),(74,95,0,0),(75,98,1,0),(76,99,1,0),(77,100,1,0),(78,103,0,0),(79,104,0,0),(80,110,0,0),(81,114,1,0),(82,119,1,0),(83,119,1,0),(84,119,1,0),(85,125,1,0),(86,125,1,0),(87,125,1,0),(88,125,1,0),(89,125,1,0),(90,125,1,0),(91,129,0,0),(92,130,0,0),(93,133,1,0),(94,136,0,0),(95,137,0,0),(96,138,1,0),(97,139,0,0),(98,140,0,0),(99,147,0,0),(100,149,0,0),(101,151,1,0),(102,158,0,0),(103,159,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,73,66,2,NULL),(2,79,58,2,NULL),(3,1,55,2,NULL),(4,4,55,2,NULL),(5,5,55,2,NULL),(6,82,55,2,NULL),(7,83,55,2,NULL),(8,84,55,2,NULL),(9,1,71,2,NULL),(10,4,71,2,NULL),(11,5,71,2,NULL),(12,82,71,2,NULL),(13,83,71,2,NULL),(14,84,71,2,NULL),(15,1,82,2,NULL),(16,4,82,2,NULL),(17,5,82,2,NULL),(18,82,82,2,NULL),(19,83,82,2,NULL),(20,84,82,2,NULL),(21,26,82,2,NULL),(22,1,83,2,NULL),(23,4,83,2,NULL),(24,5,83,2,NULL),(25,82,83,2,NULL),(26,83,83,2,NULL),(27,84,83,2,NULL),(28,13,33,2,NULL),(29,13,44,2,NULL),(30,28,3,2,NULL),(31,28,54,2,NULL),(32,1,18,2,NULL),(33,4,18,2,NULL),(34,5,18,2,NULL),(35,82,18,2,NULL),(36,83,18,2,NULL),(37,84,18,2,NULL),(38,31,3,2,NULL),(39,31,54,2,NULL),(40,1,37,2,NULL),(41,4,37,2,NULL),(42,5,37,2,NULL),(43,82,37,2,NULL),(44,83,37,2,NULL),(45,84,37,2,NULL),(46,9,35,2,NULL),(47,9,46,2,NULL),(48,14,3,2,NULL),(49,14,54,2,NULL),(50,27,33,2,NULL),(51,27,44,2,NULL),(52,1,22,2,NULL),(53,4,22,2,NULL),(54,5,22,2,NULL),(55,82,22,2,NULL),(56,83,22,2,NULL),(57,84,22,2,NULL),(58,38,3,2,NULL),(59,38,54,2,NULL),(60,1,48,2,NULL),(61,4,48,2,NULL),(62,5,48,2,NULL),(63,82,48,2,NULL),(64,83,48,2,NULL),(65,84,48,2,NULL),(66,16,35,2,NULL),(67,16,46,2,NULL),(68,1,31,2,NULL),(69,8,7,2,NULL),(70,4,31,2,NULL),(71,1,5,2,NULL),(72,5,31,2,NULL),(73,4,5,2,NULL),(74,82,31,2,NULL),(75,5,5,2,NULL),(76,83,31,2,NULL),(77,82,5,2,NULL),(78,84,31,2,NULL),(79,83,5,2,NULL),(80,1,54,2,NULL),(81,84,5,2,NULL),(82,4,54,2,NULL),(83,4,3,2,NULL),(84,5,54,2,NULL),(85,5,3,2,NULL),(86,82,54,2,NULL),(87,4,6,2,NULL),(88,83,54,2,NULL),(89,5,6,2,NULL),(90,84,54,2,NULL),(91,4,17,2,NULL),(92,1,59,2,NULL),(93,5,17,2,NULL),(94,4,59,2,NULL),(95,5,59,2,NULL),(96,82,59,2,NULL),(97,4,69,2,NULL),(98,83,59,2,NULL),(99,5,69,2,NULL),(100,84,59,2,NULL),(101,4,70,2,NULL),(102,5,70,2,NULL),(103,4,84,2,NULL),(104,5,84,2,NULL),(105,4,85,2,NULL),(106,5,85,2,NULL),(107,1,17,2,NULL),(108,82,17,2,NULL),(109,83,17,2,NULL),(110,84,17,2,NULL),(111,1,3,2,NULL),(112,1,6,2,NULL),(113,1,69,2,NULL),(114,1,70,2,NULL),(115,1,84,2,NULL),(116,1,85,2,NULL),(117,82,3,2,NULL),(118,83,3,2,NULL),(119,84,3,2,NULL),(120,82,6,2,NULL),(121,83,6,2,NULL),(122,84,6,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.anydown.wjbb.contents'),(2,2,'com.anydown.wjbb.download');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (30,'android.permission.ACCESS_CHECKIN_PROPERTIES'),(46,'android.permission.ACCESS_COARSE_LOCATION'),(66,'android.permission.ACCESS_FINE_LOCATION'),(36,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(27,'android.permission.ACCESS_MOCK_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(83,'android.permission.ACCESS_SURFACE_FLINGER'),(45,'android.permission.ACCESS_WIFI_STATE'),(72,'android.permission.ACCOUNT_MANAGER'),(22,'android.permission.AUTHENTICATE_ACCOUNTS'),(53,'android.permission.BATTERY_STATS'),(35,'android.permission.BIND_APPWIDGET'),(20,'android.permission.BIND_INPUT_METHOD'),(34,'android.permission.BLUETOOTH'),(39,'android.permission.BLUETOOTH_ADMIN'),(61,'android.permission.BRICK'),(100,'android.permission.BROADCAST_PACKAGE_REMOVED'),(37,'android.permission.BROADCAST_SMS'),(95,'android.permission.BROADCAST_STICKY'),(43,'android.permission.BROADCAST_WAP_PUSH'),(5,'android.permission.CALL_PHONE'),(85,'android.permission.CALL_PRIVILEGED'),(64,'android.permission.CAMERA'),(86,'android.permission.CHANGE_COMPONENT_ENABLED_STATE'),(41,'android.permission.CHANGE_CONFIGURATION'),(84,'android.permission.CHANGE_NETWORK_STATE'),(18,'android.permission.CHANGE_WIFI_MULTICAST_STATE'),(108,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.CLEAR_APP_CACHE'),(19,'android.permission.CLEAR_APP_USER_DATA'),(50,'android.permission.CONTROL_LOCATION_UPDATES'),(52,'android.permission.DELETE_CACHE_FILES'),(42,'android.permission.DELETE_PACKAGES'),(40,'android.permission.DEVICE_POWER'),(38,'android.permission.DIAGNOSTIC'),(7,'android.permission.DISABLE_KEYGUARD'),(88,'android.permission.DUMP'),(33,'android.permission.EXPAND_STATUS_BAR'),(104,'android.permission.FACTORY_TEST'),(28,'android.permission.FLASHLIGHT'),(98,'android.permission.FORCE_BACK'),(62,'android.permission.GET_ACCOUNTS'),(97,'android.permission.GET_PACKAGE_SIZE'),(89,'android.permission.GET_TASKS'),(49,'android.permission.GLOBAL_SEARCH'),(29,'android.permission.HARDWARE_TEST'),(71,'android.permission.INJECT_EVENTS'),(78,'android.permission.INSTALL_LOCATION_PROVIDER'),(68,'android.permission.INSTALL_PACKAGES'),(24,'android.permission.INTERNAL_SYSTEM_WINDOW'),(11,'android.permission.INTERNET'),(25,'android.permission.MANAGE_ACCOUNTS'),(51,'android.permission.MANAGE_APP_TOKENS'),(59,'android.permission.MASTER_CLEAR'),(76,'android.permission.MODIFY_AUDIO_SETTINGS'),(81,'android.permission.MODIFY_PHONE_STATE'),(58,'android.permission.MOUNT_FORMAT_FILESYSTEMS'),(48,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(26,'android.permission.PERSISTENT_ACTIVITY'),(90,'android.permission.PROCESS_OUTGOING_CALLS'),(63,'android.permission.READ_CALENDAR'),(4,'android.permission.READ_CONTACTS'),(96,'android.permission.READ_FRAME_BUFFER'),(32,'android.permission.READ_INPUT_STATE'),(16,'android.permission.READ_LOGS'),(107,'android.permission.READ_OWNER_DATA'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(54,'android.permission.READ_SYNC_SETTINGS'),(31,'android.permission.READ_SYNC_STATS'),(44,'android.permission.REBOOT'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(74,'android.permission.RECEIVE_MMS'),(3,'android.permission.RECEIVE_SMS'),(70,'android.permission.RECEIVE_WAP_PUSH'),(67,'android.permission.RECORD_AUDIO'),(105,'android.permission.REORDER_TASKS'),(17,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(60,'android.permission.SET_ACTIVITY_WATCHER'),(73,'android.permission.SET_ALWAYS_FINISH'),(101,'android.permission.SET_ANIMATION_SCALE'),(103,'android.permission.SET_DEBUG_APP'),(102,'android.permission.SET_ORIENTATION'),(23,'android.permission.SET_PREFERRED_APPLICATIONS'),(106,'android.permission.SET_PROCESS_LIMIT'),(55,'android.permission.SET_TIME_ZONE'),(87,'android.permission.SET_WALLPAPER'),(93,'android.permission.SET_WALLPAPER_HINTS'),(57,'android.permission.SIGNAL_PERSISTENT_PROCESSES'),(47,'android.permission.STATUS_BAR'),(65,'android.permission.SUBSCRIBED_FEEDS_READ'),(109,'android.permission.SUBSCRIBED_FEEDS_WRITE'),(80,'android.permission.SYSTEM_ALERT_WINDOW'),(99,'android.permission.UPDATE_DEVICE_STATS'),(69,'android.permission.USE_CREDENTIALS'),(12,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_APN_SETTINGS'),(77,'android.permission.WRITE_CALENDAR'),(6,'android.permission.WRITE_CONTACTS'),(91,'android.permission.WRITE_EXTERNAL_STORAGE'),(94,'android.permission.WRITE_GSERVICES'),(92,'android.permission.WRITE_OWNER_DATA'),(75,'android.permission.WRITE_SECURE_SETTINGS'),(82,'android.permission.WRITE_SETTINGS'),(2,'android.permission.WRITE_SMS'),(79,'android.permission.WRITE_SYNC_SETTINGS'),(56,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(110,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,72,0,NULL,NULL),(2,74,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(16,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(17,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(18,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(19,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(20,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(21,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'package:',NULL,NULL,NULL),(23,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(25,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(26,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(27,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(28,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(31,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(32,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(33,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(34,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(35,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(36,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(37,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(38,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(39,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(40,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(41,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(42,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(43,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(44,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(45,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(46,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(47,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(50,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(51,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(52,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(53,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(54,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(55,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(56,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(57,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(58,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(59,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(61,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(62,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(63,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'package:',NULL,NULL,NULL),(65,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(66,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(67,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(68,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(69,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(70,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(71,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(72,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(73,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(74,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(75,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(76,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(77,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(78,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(79,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(80,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(81,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(82,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(83,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(84,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(85,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(86,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(87,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(88,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(89,NULL,NULL,'content://com.anydown.wjbb.download',NULL,NULL,NULL),(90,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(91,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL),(92,NULL,NULL,'content://com.anydown.wjbb.contents',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,22,4),(2,25,7),(3,33,9),(4,38,11),(5,51,15),(6,52,16),(7,53,17),(8,54,18),(9,56,19),(10,58,20),(11,61,24),(12,62,25),(13,63,26),(14,66,27),(15,67,28),(16,72,31),(17,73,32),(18,78,33),(19,80,34),(20,81,35),(21,82,36),(22,83,37),(23,85,NULL),(24,85,38),(25,90,41),(26,91,42),(27,93,43),(28,94,44),(29,96,45),(30,97,46),(31,101,50),(32,105,51),(33,106,52),(34,107,53),(35,108,54),(36,109,55),(37,111,56),(38,112,57),(39,113,58),(40,115,59),(41,116,60),(42,117,61),(43,118,62),(44,120,66),(45,121,67),(46,122,68),(47,123,69),(48,124,70),(49,127,71),(50,128,72),(51,131,73),(52,132,74),(53,134,75),(54,135,76),(55,141,78),(56,142,79),(57,144,80),(58,145,81),(59,146,82),(60,148,83),(61,150,NULL),(62,150,84),(63,152,86),(64,153,87),(65,154,88),(66,155,89),(67,156,90),(68,157,91);
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,2,3),(14,1,11),(15,2,4),(16,1,12),(17,2,5),(18,1,13),(19,2,6),(20,1,14),(21,2,7),(22,2,8),(23,2,9),(24,2,10),(25,2,11),(26,2,12),(27,2,13),(28,2,14),(29,2,15),(30,2,17),(31,2,16),(32,3,1),(33,3,2),(34,3,3),(35,3,4),(36,3,5),(37,4,2),(38,3,6),(39,4,6),(40,3,7),(41,4,8),(42,3,8),(43,4,9),(44,3,9),(45,4,11),(46,3,10),(47,4,12),(48,3,11),(49,4,13),(50,3,12),(51,4,91),(52,3,13),(53,4,45),(54,3,14),(55,3,15),(56,5,2),(57,3,17),(58,5,6),(59,5,8),(60,3,16),(61,6,1),(62,5,9),(63,3,19),(64,6,2),(65,3,18),(66,5,11),(67,6,3),(68,3,21),(69,5,12),(70,6,5),(71,3,20),(72,5,13),(73,6,6),(74,3,23),(75,5,91),(76,6,7),(77,3,22),(78,5,45),(79,6,8),(80,3,25),(81,6,9),(82,3,24),(83,6,10),(84,3,27),(85,6,11),(86,3,26),(87,6,12),(88,3,29),(89,6,13),(90,3,28),(91,6,14),(92,3,31),(93,6,45),(94,3,30),(95,6,15),(96,3,34),(97,6,17),(98,3,35),(99,6,91),(100,3,32),(101,3,33),(102,3,38),(103,3,39),(104,3,36),(105,3,37),(106,3,42),(107,3,43),(108,3,40),(109,3,41),(110,3,46),(111,7,68),(112,3,47),(113,7,66),(114,7,97),(115,3,44),(116,3,45),(117,7,110),(118,7,8),(119,3,51),(120,3,50),(121,7,42),(122,7,10),(123,3,49),(124,7,11),(125,3,48),(126,7,13),(127,3,55),(128,7,14),(129,3,54),(130,7,15),(131,3,53),(132,3,52),(133,7,17),(134,3,59),(135,7,21),(136,3,58),(137,7,91),(138,3,57),(139,3,56),(140,3,63),(141,3,62),(142,3,61),(143,3,60),(144,3,68),(145,3,69),(146,3,70),(147,3,71),(148,3,64),(149,3,65),(150,3,66),(151,3,67),(152,3,76),(153,3,77),(154,3,78),(155,3,79),(156,3,72),(157,3,73),(158,3,74),(159,3,75),(160,3,85),(161,3,84),(162,3,87),(163,3,86),(164,3,81),(165,3,80),(166,3,83),(167,3,82),(168,3,93),(169,3,92),(170,3,95),(171,3,94),(172,3,89),(173,3,88),(174,3,91),(175,3,90),(176,3,102),(177,3,103),(178,3,100),(179,3,101),(180,3,98),(181,3,99),(182,3,96),(183,3,97),(184,3,108),(185,3,109),(186,3,106),(187,3,107),(188,3,104),(189,3,105);
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

-- Dump completed on 2015-10-12  3:29:29
