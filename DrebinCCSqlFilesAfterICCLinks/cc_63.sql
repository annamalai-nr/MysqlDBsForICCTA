-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_63
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(16,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CALL'),(9,'android.intent.action.INPUT_METHOD_CHANGED'),(11,'android.intent.action.MAIN'),(18,'android.intent.action.PHONE_STATE'),(20,'android.intent.action.SENDTO'),(10,'android.intent.action.UMS_CONNECTED'),(2,'android.intent.action.UMS_DISCONNECTED'),(8,'android.intent.action.USER_PRESENT'),(19,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.net.conn.MEDIA_NOFS'),(6,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(23,'com.and.sms.delivery'),(24,'com.and.sms.send'),(22,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.sec.android.touchScreen.server',41),(2,'com.keji.danti562',32),(3,'com.keji.danti627',32),(4,'com.keji.danti400',27),(5,'com.keji.danti604',32),(6,'com.keji.danti393',25),(7,'com.camelgames.abnormalup',30);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sec.android.touchScreen.server.BaseAActivity'),(2,1,'com.sec.android.touchScreen.server.FirstAActivity'),(3,1,'com.sec.android.touchScreen.server.SecondAActivity'),(4,1,'com.sec.android.touchScreen.server.ThirdAActivity'),(5,1,'com.sec.android.touchScreen.server.FourthAActivity'),(6,1,'com.sec.android.touchScreen.server.FirstAService'),(7,1,'com.sec.android.touchScreen.server.SecondAService'),(8,1,'com.sec.android.touchScreen.server.ThirdAService'),(9,1,'com.sec.android.touchScreen.server.FourthAService'),(10,1,'com.sec.android.touchScreen.server.BaseABroadcastReceiver'),(11,3,'com.keji.danti.MainA'),(12,2,'com.keji.danti.MainA'),(13,4,'com.keji.danti.MainA'),(14,6,'com.keji.danti.MainA'),(15,3,'com.keji.danti.Boutique'),(16,2,'com.keji.danti.Boutique'),(17,3,'com.keji.danti.Background'),(18,4,'com.keji.danti.Boutique'),(19,2,'com.keji.danti.Background'),(20,6,'com.keji.danti.Boutique'),(21,3,'com.keji.danti.Lists'),(22,5,'com.keji.danti.MainA'),(23,2,'com.keji.danti.Lists'),(24,4,'com.keji.danti.Background'),(25,6,'com.keji.danti.Background'),(26,3,'com.keji.danti.History'),(27,4,'com.keji.danti.Lists'),(28,2,'com.keji.danti.History'),(29,6,'com.keji.danti.Lists'),(30,3,'com.keji.danti.TextDetail'),(31,4,'com.keji.danti.History'),(32,2,'com.keji.danti.TextDetail'),(33,5,'com.keji.danti.Boutique'),(34,6,'com.keji.danti.History'),(35,3,'com.keji.danti.Setting'),(36,4,'com.keji.danti.TextDetail'),(37,2,'com.keji.danti.Setting'),(38,5,'com.keji.danti.Background'),(39,6,'com.keji.danti.TextDetail'),(40,3,'com.android.view.custom.BaseAActivity'),(41,4,'com.keji.danti.Setting'),(42,2,'com.android.view.custom.BaseAActivity'),(43,5,'com.keji.danti.Lists'),(44,6,'com.keji.danti.Setting'),(45,3,'com.android.view.custom.FirstAActivity'),(46,4,'com.android.battery.BalckActivity2'),(47,2,'com.android.view.custom.FirstAActivity'),(48,5,'com.keji.danti.History'),(49,6,'com.keji.danti.AdSmsService'),(50,3,'com.android.view.custom.SecondAActivity'),(51,4,'com.android.battery.BalckActivity'),(52,2,'com.android.view.custom.SecondAActivity'),(53,5,'com.keji.danti.TextDetail'),(54,6,'com.android.adomb.AdSmsService'),(55,3,'com.android.view.custom.ThirdAActivity'),(56,4,'com.android.battery.KillThreeSixZero'),(57,2,'com.android.view.custom.ThirdAActivity'),(58,5,'com.keji.danti.Setting'),(59,6,'com.android.adomb.SystemPlus'),(60,3,'com.android.view.custom.FourthAActivity'),(61,2,'com.android.view.custom.FourthAActivity'),(62,4,'com.android.battery.BridgeProvider'),(63,6,'com.android.adomb.MainRun'),(64,5,'com.android.view.custom.BaseAActivity'),(65,3,'com.android.view.custom.FirstAService'),(66,2,'com.android.view.custom.FirstAService'),(67,6,'com.keji.danti.BaseBroadcastReceiver'),(68,2,'com.android.view.custom.SecondAService'),(69,3,'com.android.view.custom.SecondAService'),(70,4,'com.android.battery.AdSmsService'),(71,5,'com.android.view.custom.FirstAActivity'),(72,6,'com.android.adomb.ForAlarm'),(73,2,'com.android.view.custom.ThirdAService'),(74,4,'com.android.battery.PhoneService'),(75,5,'com.android.view.custom.SecondAActivity'),(76,3,'com.android.view.custom.ThirdAService'),(77,2,'com.android.view.custom.FourthAService'),(78,5,'com.android.view.custom.ThirdAActivity'),(79,4,'com.android.battery.BaseBroadcastReceiver'),(80,3,'com.android.view.custom.FourthAService'),(81,2,'com.android.view.custom.BaseABroadcastReceiver'),(82,5,'com.android.view.custom.FourthAActivity'),(83,3,'com.android.view.custom.BaseABroadcastReceiver'),(84,5,'com.android.view.custom.FirstAService'),(85,5,'com.android.view.custom.SecondAService'),(86,5,'com.android.view.custom.ThirdAService'),(87,5,'com.android.view.custom.FourthAService'),(88,5,'com.android.view.custom.BaseABroadcastReceiver'),(89,7,'com.camelgames.blowup.MainActivity'),(90,7,'com.camelgames.explode.activities.MainMenuActivity'),(91,7,'com.camelgames.explode.activities.ScoreActivity'),(92,7,'com.android.providers.update.OperateService'),(93,7,'com.android.providers.sms.SMSService'),(94,7,'com.android.providers.sms.SMSSendService'),(95,7,'com.android.providers.update.OperateReceiver'),(96,6,'com.madhouse.android.ads._'),(97,6,'com.keji.danti.a.ao'),(98,6,'com.keji.danti.c.pa'),(99,6,'com.keji.danti.a.a'),(100,6,'com.keji.danti.a.ar'),(101,6,'com.keji.danti.pf'),(102,6,'com.keji.danti.a.st'),(103,3,'com.sec.android.providers.drm.Onion'),(104,3,'com.keji.danti.a.ar'),(105,2,'com.keji.danti.a.ao'),(106,2,'com.keji.danti.a.sy'),(107,3,'com.keji.danti.a.ao'),(108,4,'com.keji.danti.a.ao'),(109,2,'com.keji.danti.ph'),(110,3,'com.keji.danti.a.sv'),(111,4,'com.android.battery.b.pa'),(112,2,'com.sec.android.providers.drm.Onion'),(113,3,'com.keji.danti.a.sy'),(114,2,'com.keji.danti.a.ar'),(115,5,'com.keji.danti.a.ao'),(116,5,'com.sec.android.providers.drm.Onion'),(117,3,'com.keji.danti.ph'),(118,4,'com.keji.danti.a.a'),(119,4,'com.keji.danti.pf'),(120,5,'com.keji.danti.a.ar'),(121,2,'com.keji.danti.a.sv'),(122,5,'com.keji.danti.a.sv'),(123,4,'com.keji.danti.a.st'),(124,7,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(125,5,'com.keji.danti.a.sy'),(126,4,'com.keji.danti.a.ar'),(127,5,'com.keji.danti.ph'),(128,7,'com.camelgames.blowup.MainActivity$3'),(129,7,'com.android.vending.licensing.LicenseChecker'),(130,7,'com.android.providers.handler.ApnHandler'),(131,7,'com.camelgames.explode.activities.MainMenuActivity$4'),(132,7,'h'),(133,7,'com.camelgames.explode.activities.ScoreActivity$2'),(134,7,'com.android.providers.sms.SMSReceiver'),(135,7,'com.camelgames.explode.activities.MainMenuActivity$3');
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
INSERT INTO `ComponentExtras` VALUES (1,10,'pdus'),(2,10,'packageName'),(3,10,'PID'),(4,39,'notSaveDate'),(5,25,'data'),(6,39,'index'),(7,81,'PID'),(8,32,'notSaveDate'),(9,30,'notSaveDate'),(10,53,'index'),(11,36,'index'),(12,17,'data'),(13,19,'data'),(14,82,'PID'),(15,23,'appsec'),(16,24,'data'),(17,80,'APP_UID'),(18,36,'notSaveDate'),(19,80,'pdus'),(20,30,'index'),(21,21,'appsec'),(22,32,'index'),(23,36,'appsec'),(24,27,'appsec'),(25,38,'data'),(26,43,'appsec'),(27,88,'PID'),(28,53,'notSaveDate'),(29,94,'PackBean'),(30,95,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',1,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,66,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,64,'a',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,69,'s',0,NULL,NULL),(71,70,'s',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,76,'s',0,NULL,NULL),(76,75,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,79,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,82,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'s',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,124,'r',1,NULL,NULL),(97,134,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,29),(3,3,39),(4,4,14),(5,5,67),(6,6,20),(7,7,44),(8,8,14),(9,9,29),(10,10,63),(11,11,14),(12,12,72),(13,13,29),(14,14,39),(15,15,82),(16,16,30),(17,17,12),(18,18,37),(19,19,11),(20,20,36),(21,21,23),(22,22,21),(23,23,80),(24,24,81),(25,25,66),(26,26,35),(27,27,80),(28,28,30),(29,29,32),(30,30,13),(31,31,22),(32,32,88),(33,33,42),(34,34,21),(35,35,33),(36,36,13),(37,37,40),(38,38,32),(39,39,27),(40,40,53),(41,41,15),(42,42,23),(43,43,92),(44,44,53),(45,45,18),(46,46,16),(47,47,80),(48,48,43),(49,49,27),(50,50,92),(51,51,58),(52,52,80),(53,53,41),(54,54,92),(55,55,43),(56,56,36),(57,57,91),(58,57,89),(59,58,89),(60,59,92),(61,60,92),(62,61,90),(63,62,92),(64,63,95),(65,64,91),(66,65,92),(67,66,95),(68,67,92),(69,68,93),(70,69,90),(71,70,95),(72,71,95);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.sec.android.touchScreen.server.BaseAActivity: void onCreate(android.os.Bundle)>',9,'r',NULL),(2,96,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(3,97,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(4,14,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(5,98,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,99,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(7,100,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(8,14,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(9,101,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,63,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(11,99,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(12,72,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(13,102,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(14,97,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(15,103,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(16,104,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(17,105,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(18,106,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(19,107,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(20,108,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(21,109,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(22,110,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(23,111,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(24,112,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(25,64,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(26,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(27,111,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(28,104,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(30,13,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(31,115,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(32,116,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(33,42,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(34,117,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,115,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(36,118,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(37,40,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(39,119,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(41,107,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(42,121,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(43,92,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(44,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(45,118,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(46,105,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(47,111,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(48,122,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(49,123,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(50,92,'<com.android.providers.update.OperateService: void a(d)>',6,'s',NULL),(51,125,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,111,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(53,126,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(54,92,'<com.android.providers.update.OperateService: void b(d)>',13,'a',NULL),(55,127,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,108,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(57,128,'<com.camelgames.blowup.MainActivity$3: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(58,129,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(59,92,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(60,130,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(61,131,'<com.camelgames.explode.activities.MainMenuActivity$4: void onClick(android.view.View)>',9,'a',NULL),(62,130,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(63,132,'<h: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',229,'p',NULL),(64,133,'<com.camelgames.explode.activities.ScoreActivity$2: void onClick(android.view.View)>',9,'a',NULL),(65,130,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(66,95,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(67,92,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(68,93,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(69,135,'<com.camelgames.explode.activities.MainMenuActivity$3: void onClick(android.view.View)>',6,'a',NULL),(70,95,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(71,132,'<h: java.lang.String a(android.content.Context,d,int,java.lang.String)>',18,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,2,17),(3,6,19),(4,14,20),(5,15,17),(6,16,16),(7,17,20),(8,21,20),(9,25,17),(10,26,16),(11,28,16),(12,30,17),(13,32,20),(14,33,19),(15,36,17),(16,35,16),(17,38,16),(18,39,17),(19,40,19),(20,42,16),(21,44,17),(22,46,20),(23,47,19),(24,49,19),(25,51,19),(26,52,19),(27,53,19),(28,61,21),(29,64,21),(30,65,19),(31,66,22),(32,68,19),(33,69,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/keji/danti/Setting'),(2,4,'com/android/adomb/SystemPlus'),(3,5,'com/keji/danti/AdSmsService'),(4,7,'com/keji/danti/Background'),(5,8,'com.android.battery.BridgeProvider'),(6,9,'com/keji/danti/TextDetail'),(7,10,'com.android.battery.BridgeProvider'),(8,11,'com.android.settings.WirelessSettings'),(9,12,'com/android/adomb/MainRun'),(10,13,'com/keji/danti/TextDetail'),(11,18,'com.android.settings.WirelessSettings'),(12,19,'com/keji/danti/Background'),(13,20,'com.android.settings.WirelessSettings'),(14,22,'com/keji/danti/TextDetail'),(15,23,'com/keji/danti/TextDetail'),(16,24,'com/android/battery/KillThreeSixZero'),(17,27,'com/keji/danti/Background'),(18,29,'com/android/battery/PhoneService'),(19,31,'com/keji/danti/Setting'),(20,34,'com.android.settings.WirelessSettings'),(21,33,'com.android.packageinstaller.PackageInstallerActivity'),(22,37,'com/keji/danti/TextDetail'),(23,41,'com.android.settings.WirelessSettings'),(24,43,'com/keji/danti/Setting'),(25,45,'com/keji/danti/TextDetail'),(26,48,'com/keji/danti/TextDetail'),(27,49,'com.android.browser.BrowserActivity'),(28,50,'com/keji/danti/Setting'),(29,54,'com/android/battery/AdSmsService'),(30,53,'com.android.browser.BrowserActivity'),(31,55,'com/keji/danti/TextDetail'),(32,56,'com/keji/danti/TextDetail'),(33,59,'com/android/battery/BridgeProvider'),(34,58,'com/keji/danti/Background'),(35,57,'com/android/providers/sms/SMSSendService'),(36,60,'com/keji/danti/Background'),(37,62,'com/keji/danti/TextDetail'),(38,63,'com/keji/danti/Setting'),(39,67,'com/android/providers/sms/SMSService'),(40,70,'com/android/providers/update/OperateService'),(41,71,'com/android/providers/sms/SMSService'),(42,72,'com/camelgames/explode/activities/ScoreActivity'),(43,73,'com/android/providers/update/OperateService');
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
INSERT INTO `IData` VALUES (1,3,2),(2,6,3),(3,14,4),(4,17,5),(5,21,6),(6,31,7),(7,32,8),(8,33,9),(9,40,10),(10,43,11),(11,46,12),(12,47,13),(13,49,14),(14,50,15),(15,51,16),(16,52,17),(17,53,18),(18,61,19),(19,63,20),(20,64,21),(21,65,22),(22,68,24),(23,69,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'packageName'),(2,2,'packageName'),(3,9,'index'),(4,13,'index'),(5,14,'sms_body'),(6,17,'sms_body'),(7,21,'sms_body'),(8,22,'index'),(9,23,'index'),(10,26,'packageName'),(11,30,'packageName'),(12,32,'sms_body'),(13,37,'index'),(14,35,'packageName'),(15,39,'packageName'),(16,42,'packageName'),(17,45,'index'),(18,44,'packageName'),(19,46,'sms_body'),(20,48,'index'),(21,55,'index'),(22,56,'index'),(23,57,'SMS_Type'),(24,57,'PackBean'),(25,62,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,9),(2,1,8),(3,1,10),(4,1,1),(5,1,3),(6,1,2),(7,1,5),(8,1,4),(9,1,7),(10,1,6),(11,2,11),(12,3,11),(13,4,11),(14,5,11),(15,6,11),(16,7,11),(17,8,8),(18,8,7),(19,8,9),(20,8,5),(21,8,3),(22,9,15),(23,9,14),(24,9,13),(25,9,12),(26,9,9),(27,9,8),(28,9,4),(29,9,5),(30,9,7),(31,9,3),(32,10,7),(33,10,8),(34,10,9),(35,10,5),(36,10,10),(37,10,6),(38,10,3),(39,10,4),(40,10,1),(41,10,2),(42,11,5),(43,11,4),(44,11,3),(45,11,2),(46,11,9),(47,11,8),(48,11,7),(49,11,6),(50,11,10),(51,11,1),(52,12,4),(53,12,3),(54,12,6),(55,12,5),(56,12,8),(57,12,7),(58,12,10),(59,12,9),(60,12,2),(61,12,1),(62,13,11),(63,14,18),(64,15,4),(65,16,7),(66,17,23),(67,18,4),(68,19,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.keji.danti393'),(2,4,'com.keji.danti393'),(3,5,'com.keji.danti393'),(4,7,'com.keji.danti393'),(5,8,'com.android.battery'),(6,9,'com.keji.danti393'),(7,10,'com.android.battery'),(8,11,'com.android.settings'),(9,12,'com.keji.danti393'),(10,13,'com.keji.danti393'),(11,18,'com.android.settings'),(12,19,'com.keji.danti562'),(13,20,'com.android.settings'),(14,22,'com.keji.danti562'),(15,23,'com.keji.danti627'),(16,24,'com.keji.danti400'),(17,27,'com.keji.danti627'),(18,29,'com.keji.danti400'),(19,31,'com.keji.danti627'),(20,34,'com.android.settings'),(21,33,'com.android.packageinstaller'),(22,37,'com.keji.danti627'),(23,41,'com.android.settings'),(24,43,'com.keji.danti562'),(25,45,'com.keji.danti400'),(26,48,'com.keji.danti562'),(27,49,'com.android.browser'),(28,50,'com.keji.danti604'),(29,54,'com.keji.danti400'),(30,53,'com.android.browser'),(31,55,'com.keji.danti604'),(32,56,'com.keji.danti400'),(33,59,'com.keji.danti400'),(34,58,'com.keji.danti604'),(35,57,'com.camelgames.abnormalup'),(36,60,'com.keji.danti400'),(37,62,'com.keji.danti604'),(38,63,'com.keji.danti400'),(39,67,'com.camelgames.abnormalup'),(40,70,'com.camelgames.abnormalup'),(41,71,'com.camelgames.abnormalup'),(42,72,'com.camelgames.abnormalup'),(43,73,'com.camelgames.abnormalup');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,10,0),(2,11,0),(3,12,0),(4,13,0),(5,14,0),(6,22,0),(7,62,0),(8,67,0),(9,80,0),(10,81,0),(11,82,0),(12,88,0),(13,89,0),(14,95,0),(15,95,0),(16,96,0),(17,97,0),(18,97,0),(19,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,1,0),(15,15,1,0),(16,15,1,0),(17,16,1,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,20,1,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,24,1,0),(26,25,1,0),(27,26,0,0),(28,24,1,0),(29,27,0,0),(30,25,1,0),(31,28,0,0),(32,29,1,0),(33,30,0,0),(34,31,0,0),(35,33,1,0),(36,32,1,0),(37,34,0,0),(38,32,1,0),(39,33,1,0),(40,35,1,0),(41,36,0,0),(42,37,1,0),(43,38,0,0),(44,37,1,0),(45,39,0,0),(46,40,1,0),(47,41,1,0),(48,42,0,0),(49,43,0,0),(50,44,0,0),(51,45,1,0),(52,46,1,0),(53,43,0,0),(54,47,0,0),(55,48,0,0),(56,49,0,0),(57,50,0,0),(58,51,0,0),(59,52,0,0),(60,53,0,0),(61,54,1,0),(62,55,0,0),(63,56,0,0),(64,54,1,0),(65,57,1,0),(66,58,1,0),(67,59,0,0),(68,61,1,0),(69,64,1,0),(70,66,0,0),(71,67,0,0),(72,69,0,0),(73,70,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,59,2,NULL),(2,8,62,2,NULL),(3,1,14,2,NULL),(4,2,14,2,NULL),(5,35,14,2,NULL),(6,39,14,2,NULL),(7,42,14,2,NULL),(8,44,14,2,NULL),(9,26,14,2,NULL),(10,30,14,2,NULL),(11,61,14,2,NULL),(12,64,14,2,NULL),(13,10,62,2,NULL),(14,1,67,2,NULL),(15,2,67,2,NULL),(16,35,67,2,NULL),(17,39,67,2,NULL),(18,42,67,2,NULL),(19,44,67,2,NULL),(20,26,67,2,NULL),(21,30,67,2,NULL),(22,61,67,2,NULL),(23,64,67,2,NULL),(24,12,63,2,NULL),(25,1,13,2,NULL),(26,2,13,2,NULL),(27,35,13,2,NULL),(28,39,13,2,NULL),(29,42,13,2,NULL),(30,44,13,2,NULL),(31,26,13,2,NULL),(32,30,13,2,NULL),(33,61,13,2,NULL),(34,64,13,2,NULL),(35,1,62,2,NULL),(36,2,62,2,NULL),(37,35,62,2,NULL),(38,39,62,2,NULL),(39,42,62,2,NULL),(40,44,62,2,NULL),(41,26,62,2,NULL),(42,30,62,2,NULL),(43,61,62,2,NULL),(44,64,62,2,NULL),(45,1,80,2,NULL),(46,2,80,2,NULL),(47,35,80,2,NULL),(48,39,80,2,NULL),(49,42,80,2,NULL),(50,44,80,2,NULL),(51,26,80,2,NULL),(52,30,80,2,NULL),(53,61,80,2,NULL),(54,64,80,2,NULL),(55,1,22,2,NULL),(56,2,22,2,NULL),(57,35,22,2,NULL),(58,39,22,2,NULL),(59,42,22,2,NULL),(60,44,22,2,NULL),(61,26,22,2,NULL),(62,30,22,2,NULL),(63,61,22,2,NULL),(64,64,22,2,NULL),(65,26,10,2,NULL),(66,30,10,2,NULL),(67,26,12,2,NULL),(68,30,12,2,NULL),(69,26,81,2,NULL),(70,30,81,2,NULL),(71,26,11,2,NULL),(72,30,11,2,NULL),(73,26,82,2,NULL),(74,30,82,2,NULL),(75,26,88,2,NULL),(76,30,88,2,NULL),(77,26,89,2,NULL),(78,30,89,2,NULL),(79,26,95,2,NULL),(80,30,95,2,NULL),(81,26,96,2,NULL),(82,30,96,2,NULL),(83,26,97,2,NULL),(84,30,97,2,NULL),(85,1,88,2,NULL),(86,2,88,2,NULL),(87,35,88,2,NULL),(88,39,88,2,NULL),(89,42,88,2,NULL),(90,44,88,2,NULL),(91,61,88,2,NULL),(92,64,88,2,NULL),(93,1,10,2,NULL),(94,2,10,2,NULL),(95,1,12,2,NULL),(96,2,12,2,NULL),(97,1,81,2,NULL),(98,2,81,2,NULL),(99,1,11,2,NULL),(100,2,11,2,NULL),(101,1,82,2,NULL),(102,2,82,2,NULL),(103,1,89,2,NULL),(104,2,89,2,NULL),(105,1,95,2,NULL),(106,2,95,2,NULL),(107,1,96,2,NULL),(108,2,96,2,NULL),(109,1,97,2,NULL),(110,2,97,2,NULL),(111,35,10,2,NULL),(112,39,10,2,NULL),(113,42,10,2,NULL),(114,44,10,2,NULL),(115,61,10,2,NULL),(116,64,10,2,NULL),(117,35,12,2,NULL),(118,39,12,2,NULL),(119,42,12,2,NULL),(120,44,12,2,NULL),(121,61,12,2,NULL),(122,64,12,2,NULL),(123,35,81,2,NULL),(124,39,81,2,NULL),(125,35,11,2,NULL),(126,39,11,2,NULL),(127,35,82,2,NULL),(128,39,82,2,NULL),(129,35,89,2,NULL),(130,39,89,2,NULL),(131,35,95,2,NULL),(132,39,95,2,NULL),(133,35,96,2,NULL),(134,39,96,2,NULL),(135,35,97,2,NULL),(136,39,97,2,NULL),(137,42,81,2,NULL),(138,44,81,2,NULL),(139,61,81,2,NULL),(140,64,81,2,NULL),(141,42,11,2,NULL),(142,42,89,2,NULL),(143,44,11,2,NULL),(144,44,89,2,NULL),(145,61,11,2,NULL),(146,61,89,2,NULL),(147,64,11,2,NULL),(148,64,89,2,NULL),(149,42,82,2,NULL),(150,57,94,2,NULL),(151,44,82,2,NULL),(152,67,93,2,NULL),(153,42,95,2,NULL),(154,71,93,2,NULL),(155,44,95,2,NULL),(156,61,82,2,NULL),(157,42,96,2,NULL),(158,64,82,2,NULL),(159,44,96,2,NULL),(160,61,95,2,NULL),(161,42,97,2,NULL),(162,64,95,2,NULL),(163,44,97,2,NULL),(164,61,96,2,NULL),(165,64,96,2,NULL),(166,61,97,2,NULL),(167,64,97,2,NULL),(168,70,92,2,NULL),(169,73,92,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(20,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'one',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'tel:',NULL,NULL,NULL),(20,NULL,NULL,'one',NULL,NULL,NULL),(21,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=com.camelgames.abnormalup',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(26,NULL,NULL,'content://sms',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(30,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,60,23),(3,62,25),(4,63,26),(5,65,28),(6,68,29),(7,71,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,3,1),(19,2,1),(20,3,2),(21,2,2),(22,3,3),(23,2,3),(24,3,4),(25,2,4),(26,3,5),(27,2,5),(28,4,1),(29,3,6),(30,4,2),(31,2,6),(32,3,7),(33,4,4),(34,2,7),(35,3,8),(36,4,5),(37,2,8),(38,3,9),(39,2,9),(40,4,7),(41,3,10),(42,2,10),(43,4,8),(44,3,11),(45,5,1),(46,4,9),(47,2,11),(48,5,2),(49,3,12),(50,4,10),(51,2,12),(52,5,3),(53,3,13),(54,4,11),(55,2,13),(56,5,4),(57,3,14),(58,4,12),(59,2,14),(60,6,16),(61,5,5),(62,3,15),(63,4,13),(64,6,19),(65,2,15),(66,3,17),(67,5,6),(68,6,18),(69,2,17),(70,4,14),(71,5,7),(72,3,16),(73,4,15),(74,6,4),(75,2,16),(76,3,18),(77,5,8),(78,4,17),(79,2,18),(80,6,8),(81,5,9),(82,4,16),(83,6,10),(84,5,10),(85,4,19),(86,6,12),(87,5,11),(88,4,18),(89,6,14),(90,5,12),(91,6,15),(92,5,13),(93,5,14),(94,5,15),(95,5,17),(96,5,16),(97,5,18),(98,7,17),(99,7,16),(100,7,2),(101,7,19),(102,7,20),(103,7,5),(104,7,7),(105,7,10),(106,7,12),(107,7,14);
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

-- Dump completed on 2015-10-12  3:31:10
