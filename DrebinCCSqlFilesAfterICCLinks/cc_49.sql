-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_49
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
INSERT INTO `ActionStrings` VALUES (30,'(.*)'),(31,'NULL-CONSTANT'),(15,'android.appwidget.action.APPWIDGET_UPDATE'),(7,'android.intent.action.ACTION_CLOSE_SYSTEM_DIALOGS'),(10,'android.intent.action.ACTION_DATE_CHANGED'),(6,'android.intent.action.ACTION_PACKAGE_INSTALL'),(11,'android.intent.action.ACTION_POWER_CONNECTED'),(4,'android.intent.action.ACTION_SCREEN_OFF'),(5,'android.intent.action.ACTION_USER_PRESENT'),(9,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(34,'android.intent.action.SEND'),(33,'android.intent.action.SENDTO'),(23,'android.intent.action.UMS_CONNECTED'),(20,'android.intent.action.UMS_DISCONNECTED'),(13,'android.intent.action.USER_PRESENT'),(32,'android.intent.action.VIEW'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(19,'android.net.conn.MEDIA_NOFS'),(22,'android.net.wifi.PICK_WIFI_WORK'),(21,'android.provider.Telephony.SMS_RECEIVED'),(35,'com.android.sms.ndsns.MESSAGE_SENT'),(8,'com.kayac.bm11.recoroid.boot'),(2,'com.kayac.bm11.recoroid.bootmain'),(3,'com.kayac.bm11.recoroid.killstop'),(18,'com.kayac.bm11.recoroid.vR'),(17,'com.kayac.bm11.recoroid.vc'),(16,'com.kayac.bm11.recoroid.vs'),(29,'com.nd.commplatform.activity.SNSControlCenterActivity');
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
INSERT INTO `Applications` VALUES (1,'com.kayac.bm11.recoroid',19),(2,'com.keji.danti726',32),(3,'com.keji.danti406',25),(4,'com.keji.danti628',32),(5,'bubei.pureman',1),(6,'com.keji.danti416',25),(7,'com.zhangling.anTest16',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.kayac.bm11.recoroid.mainlist'),(2,1,'com.kayac.bm11.recoroid.calling'),(3,1,'com.kayac.bm11.recoroid.preview'),(4,1,'com.kayac.bm11.recoroid.delfile'),(5,1,'com.kayac.bm11.recoroid.editfile'),(6,1,'com.kayac.bm11.recoroid.ConfigWindow'),(7,2,'com.keji.danti.MainA'),(8,3,'com.keji.danti.MainA'),(9,1,'com.kayac.bm11.recoroid.geotest'),(10,1,'com.kayac.bm11.recoroid.getposSvc'),(11,2,'com.keji.danti.Boutique'),(12,3,'com.keji.danti.Boutique'),(13,1,'com.kayac.bm11.recoroid.chksvc'),(14,6,'com.keji.danti.MainA'),(15,2,'com.keji.danti.Background'),(16,3,'com.keji.danti.Background'),(17,1,'com.kayac.bm11.recoroid.RecSvc'),(18,4,'com.keji.danti.MainA'),(19,2,'com.keji.danti.Lists'),(20,3,'com.keji.danti.Lists'),(21,1,'com.kayac.bm11.recoroid.RecSvcW'),(22,6,'com.keji.danti.Boutique'),(23,2,'com.keji.danti.History'),(24,3,'com.keji.danti.History'),(25,5,'bubei.pureman.PureMan'),(26,6,'com.keji.danti.Background'),(27,2,'com.keji.danti.TextDetail'),(28,4,'com.keji.danti.Boutique'),(29,3,'com.keji.danti.TextDetail'),(30,1,'com.kayac.bm11.recoroid.WaitCall'),(31,6,'com.keji.danti.Lists'),(32,2,'com.keji.danti.Setting'),(33,4,'com.keji.danti.Background'),(34,3,'com.keji.danti.Setting'),(35,6,'com.keji.danti.History'),(36,1,'com.kayac.bm11.recoroid.stopRec'),(37,5,'com.android.view.custom.BaseAActivity'),(38,2,'com.android.view.custom.BaseAActivity'),(39,4,'com.keji.danti.Lists'),(40,3,'com.keji.danti.AdSmsService'),(41,6,'com.keji.danti.TextDetail'),(42,1,'com.kayac.bm11.recoroid.SystemPlus'),(43,5,'com.android.view.custom.FirstAActivity'),(44,2,'com.android.view.custom.FirstAActivity'),(45,3,'com.android.adomb.AdSmsService'),(46,4,'com.keji.danti.History'),(47,6,'com.keji.danti.Setting'),(48,1,'com.kayac.bm11.recoroid.MainRun'),(49,5,'com.android.view.custom.SecondAActivity'),(50,2,'com.android.view.custom.SecondAActivity'),(51,3,'com.android.adomb.SystemPlus'),(52,4,'com.keji.danti.TextDetail'),(53,6,'com.keji.danti.AdSmsService'),(54,1,'com.kayac.bm11.recoroid.bootset'),(55,5,'com.android.view.custom.ThirdAActivity'),(56,2,'com.android.view.custom.ThirdAActivity'),(57,4,'com.keji.danti.Setting'),(58,3,'com.android.adomb.MainRun'),(59,6,'com.android.adomb.AdSmsService'),(60,5,'com.android.view.custom.FourthAActivity'),(61,2,'com.android.view.custom.FourthAActivity'),(62,3,'com.keji.danti.BaseBroadcastReceiver'),(63,4,'com.android.view.custom.BaseAActivity'),(64,6,'com.android.adomb.SystemPlus'),(65,5,'com.android.view.custom.FirstAService'),(66,2,'com.android.view.custom.FirstAService'),(67,1,'com.kayac.bm11.recoroid.WidProRec'),(68,4,'com.android.view.custom.FirstAActivity'),(69,6,'com.android.adomb.MainRun'),(70,5,'com.android.view.custom.SecondAService'),(71,2,'com.android.view.custom.SecondAService'),(72,4,'com.android.view.custom.SecondAActivity'),(73,6,'com.keji.danti.BaseBroadcastReceiver'),(74,3,'com.android.adomb.ForAlarm'),(75,2,'com.android.view.custom.ThirdAService'),(76,5,'com.android.view.custom.ThirdAService'),(77,4,'com.android.view.custom.ThirdAActivity'),(78,1,'com.kayac.bm11.recoroid.WidProRre'),(79,2,'com.android.view.custom.FourthAService'),(80,5,'com.android.view.custom.FourthAService'),(81,4,'com.android.view.custom.FourthAActivity'),(82,6,'com.android.adomb.ForAlarm'),(83,2,'com.android.view.custom.BaseABroadcastReceiver'),(84,5,'com.android.view.custom.BaseABroadcastReceiver'),(85,4,'com.android.view.custom.FirstAService'),(86,1,'com.kayac.bm11.recoroid.ForAlarm'),(87,4,'com.android.view.custom.SecondAService'),(88,4,'com.android.view.custom.ThirdAService'),(89,4,'com.android.view.custom.FourthAService'),(90,4,'com.android.view.custom.BaseABroadcastReceiver'),(91,7,'com.zhangling.anTest16.Main'),(92,7,'com.zhangling.anTest16.Select'),(93,7,'com.zhangling.anTest16.SelectRes'),(94,7,'com.zhangling.anTest16.Background'),(95,7,'com.zhangling.anTest16.Test'),(96,7,'com.zhangling.anTest16.Booking'),(97,7,'com.zhangling.anTest16.Lists'),(98,7,'com.zhangling.anTest16.Query'),(99,7,'com.zhangling.anTest16.History'),(100,7,'com.zhangling.anTest16.TextDetail'),(101,7,'com.zhangling.anTest16.List1'),(102,7,'com.zhangling.anTest16.Setting'),(103,7,'com.zhangling.anTest16.TestPay'),(104,7,'com.zhangling.anTest16.TestPay2'),(105,7,'com.nd.commplatform.activity.SNSControlCenterActivity'),(106,5,'com.sec.android.providers.drm.Onion'),(107,3,'com.keji.danti.a.a'),(108,6,'com.keji.danti.a.a'),(109,3,'com.madhouse.android.ads._'),(110,6,'com.keji.danti.a.ao'),(111,1,'com.kayac.bm11.recoroid.BaseAActivity'),(112,6,'com.madhouse.android.ads._'),(113,3,'com.keji.danti.a.ar'),(114,6,'com.keji.danti.c.pa'),(115,6,'com.keji.danti.a.st'),(116,3,'com.keji.danti.a.ao'),(117,4,'com.keji.danti.a.ao'),(118,4,'com.keji.danti.a.ar'),(119,3,'com.keji.danti.a.st'),(120,6,'com.keji.danti.a.ar'),(121,3,'com.keji.danti.c.pa'),(122,3,'com.keji.danti.pf'),(123,6,'com.keji.danti.pf'),(124,4,'com.keji.danti.a.sv'),(125,7,'com.nd.commplatform.C.A'),(126,4,'com.keji.danti.a.sy'),(127,7,'com.zhangling.anTest16.Booking$1'),(128,4,'com.sec.android.providers.drm.Onion'),(129,7,'com.zhangling.anTest16.BaseActivity$4'),(130,4,'com.keji.danti.ph'),(131,7,'com.zhangling.anTest16.Lists$3'),(132,7,'com.nd.commplatform.B.B.B$1'),(133,7,'com.nd.commplatform.C.H'),(134,7,'com.nd.commplatform.J.K$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,83,'PID'),(2,26,'data'),(3,3,'sel_ID'),(4,20,'recStopper'),(5,20,'recmode'),(6,29,'index'),(7,16,'data'),(8,41,'index'),(9,52,'index'),(10,34,'data'),(11,41,'notSaveDate'),(12,5,'fID'),(13,40,'appsec'),(14,29,'notSaveDate'),(15,90,'PID'),(16,52,'notSaveDate'),(17,4,'fname'),(18,105,'ND2Bean91ManageView_smsValueParam'),(19,105,'productInfo'),(20,93,'index'),(21,93,'res'),(22,92,'index'),(23,105,'com/nd/commplatform/J/R_getPreAccount'),(24,105,'SNSRechargeHelpView_showFlag'),(25,105,'SNSRechargeCardHelpView_flag'),(26,105,'SNSConsumDetailView_detail'),(27,105,'SNSSMSRechargeResultView_value'),(28,105,'SNSRechargeDetailView_detail');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'s',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'s',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,45,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,71,'s',0,NULL,NULL),(71,70,'s',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'r',0,NULL,NULL),(83,84,'r',1,NULL,NULL),(84,83,'r',1,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'a',1,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',1,NULL,NULL),(106,125,'r',1,NULL,NULL),(107,134,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,83),(2,2,25),(3,2,37),(4,3,14),(5,4,12),(6,5,22),(7,6,8),(8,7,21),(9,8,41),(10,9,58),(11,10,1),(12,11,30),(13,12,33),(14,13,41),(15,14,20),(16,15,8),(17,16,6),(18,17,8),(19,18,73),(20,19,3),(21,20,30),(22,21,29),(23,22,20),(24,23,18),(25,24,14),(26,25,29),(27,26,3),(28,27,82),(29,28,52),(30,29,21),(31,30,1),(32,31,47),(33,32,63),(34,33,74),(35,34,1),(36,35,14),(37,36,28),(38,38,86),(39,37,62),(40,39,69),(41,40,1),(42,41,21),(43,42,30),(44,43,52),(45,44,3),(46,45,40),(47,46,2),(48,47,57),(49,48,1),(50,49,96),(51,50,90),(52,51,36),(53,52,97),(54,53,1),(55,54,40),(56,55,20),(57,56,97),(58,57,54),(59,58,105),(60,59,2),(61,60,105),(62,61,6),(63,62,2),(64,63,103),(65,64,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,106,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(2,37,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(3,14,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(4,107,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(5,108,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(6,107,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(7,109,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(8,110,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(9,58,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(10,111,'<com.kayac.bm11.recoroid.BaseAActivity: void c()>',6,'s',NULL),(11,112,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(12,113,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(13,110,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(14,21,'<com.kayac.bm11.recoroid.RecSvcW: void init()>',5,'r',NULL),(15,8,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(16,6,'<com.kayac.bm11.recoroid.ConfigWindow: void gosetting()>',4,'a',NULL),(17,8,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(18,114,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(19,3,'<com.kayac.bm11.recoroid.preview: void delFile()>',6,'a',NULL),(20,115,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(21,116,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(22,21,'<com.kayac.bm11.recoroid.RecSvcW: void savePlace()>',5,'s',NULL),(23,117,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(24,108,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(25,116,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(26,3,'<com.kayac.bm11.recoroid.preview: void goshare()>',26,'a',NULL),(27,82,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(28,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,119,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(30,111,'<com.kayac.bm11.recoroid.BaseAActivity: void b()>',17,'s',NULL),(31,120,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(32,63,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(33,74,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(34,1,'<com.kayac.bm11.recoroid.mainlist: void gosetting()>',4,'a',NULL),(35,14,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(36,117,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(37,121,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(38,86,'<com.kayac.bm11.recoroid.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(39,69,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(40,1,'<com.kayac.bm11.recoroid.mainlist: void onResumeFunc()>',33,'s',NULL),(41,122,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(42,123,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(43,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(44,3,'<com.kayac.bm11.recoroid.preview: void editFile()>',6,'a',NULL),(45,124,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(46,2,'<com.kayac.bm11.recoroid.calling: void startrec()>',19,'s',NULL),(47,126,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(48,1,'<com.kayac.bm11.recoroid.mainlist: void onCreate(android.os.Bundle)>',18,'s',NULL),(49,127,'<com.zhangling.anTest16.Booking$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(50,128,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(51,36,'<com.kayac.bm11.recoroid.stopRec: void onStart(android.content.Intent,int)>',8,'s',NULL),(52,129,'<com.zhangling.anTest16.BaseActivity$4: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(53,1,'<com.kayac.bm11.recoroid.mainlist: void serviceInit()>',19,'s',NULL),(54,130,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(55,21,'<com.kayac.bm11.recoroid.RecSvcW: void TimerEnd()>',12,'r',NULL),(56,131,'<com.zhangling.anTest16.Lists$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(57,54,'<com.kayac.bm11.recoroid.bootset: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(58,132,'<com.nd.commplatform.B.B.B$1: void onClick(android.view.View)>',14,'a',0),(59,2,'<com.kayac.bm11.recoroid.calling: void startrec()>',22,'s',NULL),(60,133,'<com.nd.commplatform.C.H: void A(int,android.content.Context,android.content.Intent)>',15,'a',NULL),(61,6,'<com.kayac.bm11.recoroid.ConfigWindow: void setcallon()>',4,'s',NULL),(62,2,'<com.kayac.bm11.recoroid.calling: void stoprecwidget(boolean)>',9,'s',NULL),(63,103,'<com.zhangling.anTest16.TestPay: void onCreate(android.os.Bundle)>',5,'a',NULL),(64,1,'<com.kayac.bm11.recoroid.mainlist: void showdetail(long)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,30),(2,2,31),(3,3,30),(4,4,31),(5,6,32),(6,7,32),(7,13,33),(8,14,16),(9,16,32),(10,19,32),(11,21,33),(12,26,34),(13,33,31),(14,34,32),(15,35,30),(16,37,32),(17,44,33),(18,45,32),(19,53,30),(20,55,31),(21,59,17),(22,69,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/android/adomb/SystemPlus'),(2,8,'com.android.settings.WirelessSettings'),(3,9,'com/keji/danti/Setting'),(4,10,'com.android.battery.BridgeProvider'),(5,11,'com.android.battery.BridgeProvider'),(6,12,'com/keji/danti/Background'),(7,15,'com/android/adomb/SystemPlus'),(8,16,'com/kayac/bm11/recoroid/mainlist'),(9,17,'com.android.battery.BridgeProvider'),(10,18,'com/keji/danti/AdSmsService'),(11,19,'com/kayac/bm11/recoroid/delfile'),(12,20,'com/keji/danti/TextDetail'),(13,22,'com/kayac/bm11/recoroid/getposSvc'),(14,23,'com.android.settings.WirelessSettings'),(15,24,'com.android.settings.WirelessSettings'),(16,25,'com/keji/danti/Setting'),(17,27,'com/android/adomb/MainRun'),(18,28,'com/keji/danti/Setting'),(19,29,'com/keji/danti/TextDetail'),(20,30,'com/kayac/bm11/recoroid/SystemPlus'),(21,31,'com/keji/danti/Background'),(22,32,'com/android/adomb/MainRun'),(23,34,'com/kayac/bm11/recoroid/ConfigWindow'),(24,36,'com.android.battery.BridgeProvider'),(25,38,'com/kayac/bm11/recoroid/MainRun'),(26,39,'com/keji/danti/AdSmsService'),(27,40,'com.android.battery.BridgeProvider'),(28,41,'com/kayac/bm11/recoroid/WaitCall'),(29,42,'com/keji/danti/TextDetail'),(30,43,'com/keji/danti/TextDetail'),(31,45,'com/kayac/bm11/recoroid/editfile'),(32,46,'com/keji/danti/TextDetail'),(33,48,'com/kayac/bm11/recoroid/RecSvc'),(34,49,'com/keji/danti/Background'),(35,52,'com/kayac/bm11/recoroid/RecSvcW'),(36,51,'com/zhangling/anTest16/Select'),(37,54,'com/kayac/bm11/recoroid/RecSvcW'),(38,57,'com/kayac/bm11/recoroid/RecSvcW'),(39,56,'com/zhangling/anTest16/Select'),(40,58,'com/keji/danti/TextDetail'),(41,60,'com/zhangling/anTest16/Select'),(42,61,'com/kayac/bm11/recoroid/WaitCall'),(43,63,'com/kayac/bm11/recoroid/RecSvc'),(44,64,'com/nd/commplatform/activity/SNSControlCenterActivity'),(45,65,'com/kayac/bm11/recoroid/WaitCall'),(46,66,'com/kayac/bm11/recoroid/RecSvcW'),(47,67,'com/kayac/bm11/recoroid/RecSvc'),(48,68,'com/zhangling/anTest16/TestPay2'),(49,69,'com/kayac/bm11/recoroid/preview');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,9,4),(4,13,6),(5,21,7),(6,25,8),(7,28,9),(8,37,10),(9,44,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'sms_body'),(2,19,'fname'),(3,20,'index'),(4,21,'sms_body'),(5,22,'svID'),(6,26,'android.intent.extra.STREAM'),(7,29,'index'),(8,33,'packageName'),(9,35,'packageName'),(10,42,'index'),(11,43,'index'),(12,44,'sms_body'),(13,45,'fID'),(14,46,'index'),(15,51,'index'),(16,51,'notSaveDate'),(17,56,'index'),(18,58,'index'),(19,60,'index'),(20,66,'mainmode'),(21,67,'mainmode'),(22,69,'sel_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,3),(7,6,2),(8,7,1),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,5),(14,8,6),(15,8,4),(16,9,14),(17,9,13),(18,9,12),(19,9,11),(20,9,9),(21,10,17),(22,10,18),(23,10,15),(24,10,16),(25,11,9),(26,11,11),(27,11,12),(28,11,13),(29,11,14),(30,12,15),(31,13,11),(32,13,9),(33,13,20),(34,13,21),(35,13,22),(36,13,23),(37,13,19),(38,13,12),(39,13,13),(40,13,14),(41,14,9),(42,14,14),(43,14,12),(44,14,13),(45,14,11),(46,14,20),(47,14,19),(48,14,23),(49,14,22),(50,14,21),(51,15,1),(52,16,29),(53,17,21),(54,18,35),(55,19,35);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,26,'audio','3gpp');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.keji.danti416'),(2,8,'com.android.settings'),(3,9,'com.keji.danti416'),(4,10,'com.android.battery'),(5,11,'com.android.battery'),(6,12,'com.keji.danti406'),(7,15,'com.keji.danti406'),(8,16,'com.kayac.bm11.recoroid'),(9,17,'com.android.battery'),(10,18,'com.keji.danti416'),(11,19,'com.kayac.bm11.recoroid'),(12,20,'com.keji.danti416'),(13,22,'com.kayac.bm11.recoroid'),(14,23,'com.android.settings'),(15,24,'com.android.settings'),(16,25,'com.keji.danti406'),(17,27,'com.keji.danti416'),(18,28,'com.keji.danti628'),(19,29,'com.keji.danti406'),(20,30,'com.kayac.bm11.recoroid'),(21,31,'com.keji.danti416'),(22,32,'com.keji.danti406'),(23,34,'com.kayac.bm11.recoroid'),(24,36,'com.android.battery'),(25,38,'com.kayac.bm11.recoroid'),(26,39,'com.keji.danti406'),(27,40,'com.android.battery'),(28,41,'com.kayac.bm11.recoroid'),(29,42,'com.keji.danti406'),(30,43,'com.keji.danti416'),(31,45,'com.kayac.bm11.recoroid'),(32,46,'com.keji.danti628'),(33,48,'com.kayac.bm11.recoroid'),(34,49,'com.keji.danti628'),(35,52,'com.kayac.bm11.recoroid'),(36,51,'com.zhangling.anTest16'),(37,54,'com.kayac.bm11.recoroid'),(38,57,'com.kayac.bm11.recoroid'),(39,56,'com.zhangling.anTest16'),(40,58,'com.keji.danti628'),(41,60,'com.zhangling.anTest16'),(42,61,'com.kayac.bm11.recoroid'),(43,63,'com.kayac.bm11.recoroid'),(44,64,'com.zhangling.anTest16'),(45,65,'com.kayac.bm11.recoroid'),(46,66,'com.kayac.bm11.recoroid'),(47,67,'com.kayac.bm11.recoroid'),(48,68,'com.zhangling.anTest16'),(49,69,'com.kayac.bm11.recoroid');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,14,0),(5,18,0),(6,20,0),(7,25,0),(8,54,0),(9,62,0),(10,67,0),(11,73,0),(12,78,0),(13,83,0),(14,90,0),(15,91,0),(16,105,0),(17,106,0),(18,106,0),(19,107,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,1,0),(7,5,1,0),(8,6,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,12,0,0),(13,13,1,0),(14,14,1,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,1,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,25,0,0),(26,26,1,0),(27,27,0,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,0,0),(32,33,0,0),(33,32,1,0),(34,34,0,0),(35,32,1,0),(36,35,0,0),(37,36,1,0),(38,38,0,0),(39,37,0,0),(40,39,0,0),(41,40,0,0),(42,41,0,0),(43,42,0,0),(44,43,1,0),(45,44,0,0),(46,45,0,0),(47,46,1,0),(48,46,0,0),(49,47,0,0),(50,48,1,0),(51,49,0,0),(52,48,0,0),(53,50,1,0),(54,51,0,0),(55,50,1,0),(56,52,0,0),(57,53,0,0),(58,54,0,0),(59,55,1,0),(60,56,0,0),(61,57,0,0),(62,59,1,0),(63,59,0,0),(64,60,0,0),(65,61,0,0),(66,62,0,0),(67,62,0,0),(68,63,0,0),(69,64,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,50,25,2,NULL),(2,47,25,2,NULL),(3,62,25,2,NULL),(4,14,25,2,NULL),(5,59,25,2,NULL),(6,33,25,2,NULL),(7,35,25,2,NULL),(8,3,25,2,NULL),(9,4,25,2,NULL),(10,3,1,2,NULL),(11,4,1,2,NULL),(12,3,20,2,NULL),(13,4,20,2,NULL),(14,3,54,2,NULL),(15,4,54,2,NULL),(16,3,67,2,NULL),(17,4,67,2,NULL),(18,3,78,2,NULL),(19,4,78,2,NULL),(20,3,7,2,NULL),(21,4,7,2,NULL),(22,3,8,2,NULL),(23,4,8,2,NULL),(24,3,62,2,NULL),(25,4,62,2,NULL),(26,3,18,2,NULL),(27,4,18,2,NULL),(28,3,90,2,NULL),(29,4,90,2,NULL),(30,3,83,2,NULL),(31,4,83,2,NULL),(32,3,14,2,NULL),(33,4,14,2,NULL),(34,3,73,2,NULL),(35,4,73,2,NULL),(36,3,91,2,NULL),(37,4,91,2,NULL),(38,3,105,2,NULL),(39,4,105,2,NULL),(40,3,106,2,NULL),(41,4,106,2,NULL),(42,3,107,2,NULL),(43,4,107,2,NULL),(44,50,83,2,NULL),(45,47,83,2,NULL),(46,62,83,2,NULL),(47,14,83,2,NULL),(48,59,83,2,NULL),(49,33,83,2,NULL),(50,35,83,2,NULL),(51,5,51,2,NULL),(52,5,64,2,NULL),(53,50,14,2,NULL),(54,47,14,2,NULL),(55,62,14,2,NULL),(56,14,14,2,NULL),(57,59,14,2,NULL),(58,33,14,2,NULL),(59,35,14,2,NULL),(60,50,73,2,NULL),(61,47,73,2,NULL),(62,62,73,2,NULL),(63,14,73,2,NULL),(64,59,73,2,NULL),(65,33,73,2,NULL),(66,35,73,2,NULL),(67,27,58,2,NULL),(68,27,69,2,NULL),(69,50,7,2,NULL),(70,47,7,2,NULL),(71,62,7,2,NULL),(72,14,7,2,NULL),(73,59,7,2,NULL),(74,33,7,2,NULL),(75,35,7,2,NULL),(76,15,51,2,NULL),(77,15,64,2,NULL),(78,50,8,2,NULL),(79,47,8,2,NULL),(80,62,8,2,NULL),(81,14,8,2,NULL),(82,59,8,2,NULL),(83,33,8,2,NULL),(84,35,8,2,NULL),(85,50,62,2,NULL),(86,47,62,2,NULL),(87,62,62,2,NULL),(88,14,62,2,NULL),(89,59,62,2,NULL),(90,33,62,2,NULL),(91,35,62,2,NULL),(92,32,58,2,NULL),(93,32,69,2,NULL),(94,34,6,2,NULL),(95,41,31,2,NULL),(96,52,20,2,NULL),(97,57,20,2,NULL),(98,69,3,2,NULL),(99,47,1,2,NULL),(100,62,1,2,NULL),(101,50,20,2,NULL),(102,50,91,2,NULL),(103,14,1,2,NULL),(104,59,1,2,NULL),(105,47,91,2,NULL),(106,50,54,2,NULL),(107,62,91,2,NULL),(108,50,67,2,NULL),(109,14,91,2,NULL),(110,50,78,2,NULL),(111,59,91,2,NULL),(112,50,18,2,NULL),(113,33,91,2,NULL),(114,33,1,2,NULL),(115,35,91,2,NULL),(116,35,1,2,NULL),(117,68,104,2,NULL),(118,50,90,2,NULL),(119,50,105,2,NULL),(120,50,106,2,NULL),(121,47,105,2,NULL),(122,50,107,2,NULL),(123,62,105,2,NULL),(124,48,17,2,NULL),(125,14,105,2,NULL),(126,63,17,2,NULL),(127,59,105,2,NULL),(128,66,20,2,NULL),(129,33,105,2,NULL),(130,67,17,2,NULL),(131,35,105,2,NULL),(132,47,20,2,NULL),(133,47,106,2,NULL),(134,62,20,2,NULL),(135,62,106,2,NULL),(136,47,54,2,NULL),(137,14,106,2,NULL),(138,62,54,2,NULL),(139,59,106,2,NULL),(140,47,67,2,NULL),(141,33,106,2,NULL),(142,62,67,2,NULL),(143,35,106,2,NULL),(144,47,78,2,NULL),(145,47,107,2,NULL),(146,62,78,2,NULL),(147,62,107,2,NULL),(148,47,18,2,NULL),(149,14,107,2,NULL),(150,62,18,2,NULL),(151,59,107,2,NULL),(152,47,90,2,NULL),(153,33,107,2,NULL),(154,62,90,2,NULL),(155,35,107,2,NULL),(156,19,4,2,NULL),(157,45,5,2,NULL),(158,16,1,2,NULL),(159,65,31,2,NULL),(160,22,10,2,NULL),(161,14,54,2,NULL),(162,59,54,2,NULL),(163,14,67,2,NULL),(164,59,67,2,NULL),(165,14,78,2,NULL),(166,59,78,2,NULL),(167,14,18,2,NULL),(168,59,18,2,NULL),(169,33,20,2,NULL),(170,35,20,2,NULL),(171,14,90,2,NULL),(172,59,90,2,NULL),(173,54,20,2,NULL),(174,61,31,2,NULL),(175,33,54,2,NULL),(176,35,54,2,NULL),(177,33,67,2,NULL),(178,35,67,2,NULL),(179,33,78,2,NULL),(180,35,78,2,NULL),(181,38,48,2,NULL),(182,33,18,2,NULL),(183,35,18,2,NULL),(184,33,90,2,NULL),(185,35,90,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(1,'android.permission.DISABLE_KEYGUARD'),(4,'android.permission.INTERNET'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_LOGS'),(2,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(20,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_SMS'),(9,'android.permission.RECORD_AUDIO'),(18,'android.permission.RESTART_PACKAGES'),(10,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_APN_SETTINGS'),(17,'android.permission.WRITE_CONTACTS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,7,3),(2,11,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,1,8),(10,2,2),(11,1,9),(12,2,4),(13,2,6),(14,2,7),(15,2,8),(16,2,10),(17,2,11),(18,2,12),(19,4,1),(20,2,13),(21,4,2),(22,3,17),(23,2,14),(24,4,4),(25,3,19),(26,2,15),(27,3,2),(28,4,6),(29,2,17),(30,3,21),(31,4,7),(32,2,16),(33,5,1),(34,3,4),(35,4,8),(36,2,19),(37,5,2),(38,4,10),(39,3,6),(40,6,17),(41,5,4),(42,2,18),(43,4,11),(44,3,22),(45,6,19),(46,2,21),(47,5,6),(48,4,12),(49,6,2),(50,3,13),(51,2,20),(52,5,7),(53,3,14),(54,4,13),(55,6,21),(56,5,8),(57,6,4),(58,4,14),(59,5,10),(60,4,15),(61,6,6),(62,5,11),(63,6,22),(64,4,17),(65,5,12),(66,6,13),(67,4,16),(68,5,13),(69,6,14),(70,4,19),(71,5,15),(72,4,18),(73,5,17),(74,4,21),(75,5,16),(76,4,20),(77,5,19),(78,5,18),(79,5,21),(80,5,20),(81,7,17),(82,7,16),(83,7,19),(84,7,2),(85,7,21),(86,7,4),(87,7,22),(88,7,8),(89,7,10),(90,7,14),(91,7,15);
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

-- Dump completed on 2015-10-12  3:30:40
