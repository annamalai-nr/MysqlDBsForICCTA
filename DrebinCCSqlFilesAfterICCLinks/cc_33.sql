-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_33
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (23,'(.*)'),(30,'ACTION_PICK_PROFILE'),(13,'CallBlockerService.ACTION_APPLY_END'),(12,'CallBlockerService.ACTION_APPLY_PROFILE'),(14,'CallBlockerService.ACTION_CHECK_SCHEDULES'),(24,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(6,'android.intent.action.BOOT_COMPLETED'),(28,'android.intent.action.CALL'),(31,'android.intent.action.CHOOSER'),(32,'android.intent.action.DELETE'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.NEW_OUTGOING_CALL'),(26,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(25,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SMS_RECEIVED'),(27,'com.android.sms.ndsns.MESSAGE_SENT'),(22,'com.nd.commplatform.activity.SNSControlCenterActivity'),(15,'fahrbot.daemon.phone.CALL_BLOCKED'),(29,'fahrbot.daemon.phone.CALL_BLOCKED_LOGED'),(18,'fahrbot.daemon.phone.CRASHED'),(20,'fahrbot.daemon.phone.LOOKUP_PHONE'),(17,'fahrbot.daemon.phone.NEW_SMS'),(19,'fahrbot.daemon.phone.STARTED'),(21,'fahrbot.daemon.phone.STOPPED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti656',32),(2,'com.keji.danti608',32),(3,'com.keji.danti607',32),(4,'com.keji.danti704',32),(5,'fahrbot.apps.rootcallblocker.pro',29),(6,'com.keji.danti727',32),(7,'com.zhangling.anTest8',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,1,'com.keji.danti.Boutique'),(3,1,'com.keji.danti.Background'),(4,1,'com.keji.danti.Lists'),(5,1,'com.keji.danti.History'),(6,1,'com.keji.danti.TextDetail'),(7,1,'com.keji.danti.Setting'),(8,1,'com.android.view.custom.BaseAActivity'),(9,5,'fahrbot.apps.rootcallblocker.ui.CallBlockerPreferences'),(10,1,'com.android.view.custom.FirstAActivity'),(11,5,'fahrbot.apps.rootcallblocker.ui.CallLogListActivity'),(12,1,'com.android.view.custom.SecondAActivity'),(13,5,'fahrbot.apps.rootcallblocker.ui.BlackListActivity'),(14,1,'com.android.view.custom.ThirdAActivity'),(15,2,'com.keji.danti.MainA'),(16,5,'fahrbot.apps.rootcallblocker.ui.DefaultPreferences'),(17,1,'com.android.view.custom.FourthAActivity'),(18,3,'com.keji.danti.MainA'),(19,5,'fahrbot.apps.rootcallblocker.ui.WhiteListActivity'),(20,1,'com.android.view.custom.FirstAService'),(21,4,'com.keji.danti.MainA'),(22,5,'fahrbot.lib.log.CrashReportActivity'),(23,1,'com.android.view.custom.SecondAService'),(24,2,'com.keji.danti.Boutique'),(25,3,'com.keji.danti.Boutique'),(26,5,'fahrbot.apps.rootcallblocker.ui.ProfilesPreferencesActivity'),(27,1,'com.android.view.custom.ThirdAService'),(28,2,'com.keji.danti.Background'),(29,4,'com.keji.danti.Boutique'),(30,3,'com.keji.danti.Background'),(31,5,'fahrbot.apps.rootcallblocker.ui.ProfilePreferenceActivity'),(32,6,'com.keji.danti.MainA'),(33,1,'com.android.view.custom.FourthAService'),(34,2,'com.keji.danti.Lists'),(35,4,'com.keji.danti.Background'),(36,3,'com.keji.danti.Lists'),(37,5,'fahrbot.apps.rootcallblocker.ui.base.TextActivity'),(38,1,'com.android.view.custom.BaseABroadcastReceiver'),(39,2,'com.keji.danti.History'),(40,4,'com.keji.danti.Lists'),(41,3,'com.keji.danti.History'),(42,5,'fahrbot.apps.rootcallblocker.ui.SupportActivity'),(43,6,'com.keji.danti.Boutique'),(44,2,'com.keji.danti.TextDetail'),(45,4,'com.keji.danti.History'),(46,3,'com.keji.danti.TextDetail'),(47,5,'fahrbot.apps.rootcallblocker.ui.SchedulingActivity'),(48,2,'com.keji.danti.Setting'),(49,6,'com.keji.danti.Background'),(50,4,'com.keji.danti.TextDetail'),(51,3,'com.keji.danti.Setting'),(52,5,'fahrbot.apps.rootcallblocker.ui.SchedulePreferenceActivity'),(53,6,'com.keji.danti.Lists'),(54,2,'com.android.view.custom.BaseAActivity'),(55,4,'com.keji.danti.Setting'),(56,5,'fahrbot.apps.rootcallblocker.ui.ProfileSelectActivity'),(57,3,'com.android.view.custom.BaseAActivity'),(58,6,'com.keji.danti.History'),(59,2,'com.android.view.custom.FirstAActivity'),(60,4,'com.android.view.custom.BaseAActivity'),(61,3,'com.android.view.custom.FirstAActivity'),(62,5,'fahrbot.apps.rootcallblocker.ui.MainActivity'),(63,2,'com.android.view.custom.SecondAActivity'),(64,6,'com.keji.danti.TextDetail'),(65,4,'com.android.view.custom.FirstAActivity'),(66,3,'com.android.view.custom.SecondAActivity'),(67,6,'com.keji.danti.Setting'),(68,2,'com.android.view.custom.ThirdAActivity'),(69,4,'com.android.view.custom.SecondAActivity'),(70,3,'com.android.view.custom.ThirdAActivity'),(71,6,'com.android.view.custom.BaseAActivity'),(72,2,'com.android.view.custom.FourthAActivity'),(73,5,'fahrbot.apps.rootcallblocker.ui.CallLogActivity'),(74,4,'com.android.view.custom.ThirdAActivity'),(75,3,'com.android.view.custom.FourthAActivity'),(76,6,'com.android.view.custom.FirstAActivity'),(77,2,'com.android.view.custom.FirstAService'),(78,5,'fahrbot.apps.rootcallblocker.ui.HiddenModePreferences'),(79,4,'com.android.view.custom.FourthAActivity'),(80,3,'com.android.view.custom.FirstAService'),(81,6,'com.android.view.custom.SecondAActivity'),(82,2,'com.android.view.custom.SecondAService'),(83,5,'fahrbot.apps.rootcallblocker.ui.ContactListActivity'),(84,4,'com.android.view.custom.FirstAService'),(85,3,'com.android.view.custom.SecondAService'),(86,2,'com.android.view.custom.ThirdAService'),(87,6,'com.android.view.custom.ThirdAActivity'),(88,5,'fahrbot.apps.rootcallblocker.utils.CallBlockerService'),(89,4,'com.android.view.custom.SecondAService'),(90,3,'com.android.view.custom.ThirdAService'),(91,6,'com.android.view.custom.FourthAActivity'),(92,2,'com.android.view.custom.FourthAService'),(93,4,'com.android.view.custom.ThirdAService'),(94,3,'com.android.view.custom.FourthAService'),(95,6,'com.android.view.custom.FirstAService'),(96,2,'com.android.view.custom.BaseABroadcastReceiver'),(97,4,'com.android.view.custom.FourthAService'),(98,5,'fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver'),(99,3,'com.android.view.custom.BaseABroadcastReceiver'),(100,6,'com.android.view.custom.SecondAService'),(101,4,'com.android.view.custom.BaseABroadcastReceiver'),(102,6,'com.android.view.custom.ThirdAService'),(103,6,'com.android.view.custom.FourthAService'),(104,6,'com.android.view.custom.BaseABroadcastReceiver'),(105,7,'com.zhangling.anTest8.Main'),(106,7,'com.zhangling.anTest8.Background'),(107,7,'com.zhangling.anTest8.Test'),(108,7,'com.zhangling.anTest8.Booking'),(109,7,'com.zhangling.anTest8.Lists'),(110,7,'com.zhangling.anTest8.Query'),(111,7,'com.zhangling.anTest8.History'),(112,7,'com.zhangling.anTest8.TextDetail'),(113,7,'com.zhangling.anTest8.List1'),(114,7,'com.zhangling.anTest8.Setting'),(115,7,'com.zhangling.anTest8.TestPay'),(116,7,'com.zhangling.anTest8.TestPay2'),(117,7,'com.nd.commplatform.activity.SNSControlCenterActivity'),(118,1,'com.keji.danti.a.ar'),(119,1,'com.sec.android.providers.drm.Onion'),(120,1,'com.keji.danti.a.ao'),(121,1,'com.keji.danti.a.sy'),(122,1,'com.keji.danti.a.sv'),(123,1,'com.keji.danti.ph'),(124,2,'com.keji.danti.a.sy'),(125,2,'com.sec.android.providers.drm.Onion'),(126,2,'com.keji.danti.a.sv'),(127,2,'com.keji.danti.a.ar'),(128,6,'com.keji.danti.a.ao'),(129,3,'com.keji.danti.a.ar'),(130,2,'com.keji.danti.a.ao'),(131,4,'com.keji.danti.a.ao'),(132,6,'com.keji.danti.a.ar'),(133,3,'com.keji.danti.ph'),(134,4,'com.keji.danti.a.ar'),(135,6,'com.keji.danti.a.sv'),(136,3,'com.keji.danti.a.ao'),(137,2,'com.keji.danti.ph'),(138,6,'com.keji.danti.a.sy'),(139,6,'com.sec.android.providers.drm.Onion'),(140,3,'com.keji.danti.a.sv'),(141,4,'com.keji.danti.a.sy'),(142,6,'com.keji.danti.ph'),(143,3,'com.keji.danti.a.sy'),(144,4,'com.keji.danti.ph'),(145,4,'com.sec.android.providers.drm.Onion'),(146,3,'com.sec.android.providers.drm.Onion'),(147,4,'com.keji.danti.a.sv'),(148,7,'com.nd.commplatform.B.B.B$1'),(149,7,'com.nd.commplatform.C.A'),(150,7,'com.zhangling.anTest8.Booking$1'),(151,7,'com.zhangling.anTest8.Lists$3'),(152,7,'com.zhangling.anTest8.Setting$3'),(153,7,'com.nd.commplatform.J.K$1'),(154,7,'com.nd.commplatform.C.H'),(155,7,'com.zhangling.anTest8.BaseActivity$4'),(156,5,'fahrbot.apps.rootcallblocker.ui.l'),(157,5,'fahrbot.apps.rootcallblocker.utils.a'),(158,5,'fahrbot.apps.rootcallblocker.ui.base.BlockListActivity'),(159,5,'fahrbot.lib.log.a'),(160,5,'fahrbot.lib.phone.f'),(161,5,'fahrbot.apps.rootcallblocker.utils.d'),(162,5,'fahrbot.apps.rootcallblocker.ui.base.BasePreferenceActivity'),(163,5,'com.android.sf.dna.To');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,38,'PID'),(2,6,'notSaveDate'),(3,3,'data'),(4,4,'appsec'),(5,6,'index'),(6,44,'index'),(7,34,'appsec'),(8,44,'notSaveDate'),(9,46,'index'),(10,98,'PID'),(11,36,'appsec'),(12,40,'appsec'),(13,28,'data'),(14,50,'notSaveDate'),(15,96,'PID'),(16,104,'PID'),(17,49,'data'),(18,31,'data'),(19,35,'data'),(20,101,'PID'),(21,63,'notSaveDate'),(22,50,'index'),(23,63,'index'),(24,53,'appsec'),(25,46,'notSaveDate'),(26,117,'SNSRechargeHelpView_showFlag'),(27,117,'productInfo'),(28,117,'ND2Bean91ManageView_smsValueParam'),(29,117,'SNSConsumDetailView_detail'),(30,117,'SNSRechargeCardHelpView_flag'),(31,112,'index'),(32,117,'com/nd/commplatform/J/R_getPreAccount'),(33,117,'SNSSMSRechargeResultView_value'),(34,117,'SNSRechargeDetailView_detail'),(35,112,'notSaveDate'),(36,22,'crash_streams'),(37,99,'DATA'),(38,88,'DATA'),(39,22,'crash_fatal'),(40,22,'descr'),(41,22,'crash_file'),(42,73,'extra_launch_pwd'),(43,22,'streams'),(44,99,'android.intent.extra.PHONE_NUMBER'),(45,22,'log'),(46,88,'ISCDMA'),(47,37,'help_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,63,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,71,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,86,'s',0,NULL,NULL),(88,88,'s',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,92,'s',0,NULL,NULL),(92,91,'a',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,99,'r',1,NULL,NULL),(99,98,'r',1,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'r',1,NULL,NULL),(105,105,'a',1,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',1,NULL,NULL),(118,149,'r',1,NULL,NULL),(119,153,'r',1,NULL,NULL),(120,156,'r',1,NULL,NULL),(121,160,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,38),(3,3,1),(4,4,2),(5,5,6),(6,6,8),(7,7,7),(8,8,4),(9,9,4),(10,10,48),(11,11,96),(12,12,34),(13,13,54),(14,14,44),(15,15,43),(16,16,46),(17,17,15),(18,18,29),(19,20,24),(20,19,63),(21,22,50),(22,21,36),(23,23,44),(24,24,53),(25,25,18),(26,26,21),(27,27,34),(28,28,46),(29,29,67),(30,30,50),(31,31,104),(32,32,36),(33,33,55),(34,34,53),(35,35,57),(36,36,60),(37,37,72),(38,38,52),(39,39,40),(40,40,25),(41,41,63),(42,42,101),(43,43,98),(44,44,32),(45,45,40),(46,46,117),(47,47,108),(48,48,109),(49,49,114),(50,50,112),(51,51,117),(52,52,109),(53,53,115),(54,54,73),(55,55,73),(56,56,62),(57,57,42),(58,58,11),(59,59,99),(60,60,9),(61,61,19),(62,61,13),(63,62,99),(64,63,62),(65,64,26),(66,64,9),(67,65,42),(68,66,51),(69,67,88),(70,68,73),(71,69,30),(72,70,22),(73,71,99),(74,72,99),(75,72,47),(76,73,73),(77,74,99),(78,74,88),(79,75,99),(80,76,30),(81,77,42),(82,78,99),(83,79,73),(84,80,73),(85,81,99),(86,82,47),(87,82,26),(88,83,73),(89,84,26),(90,85,73),(91,86,73),(92,87,19),(93,87,13),(94,88,99),(95,89,30),(96,90,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(2,119,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(3,120,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(4,120,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(5,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(6,8,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(7,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(8,122,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(9,123,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(10,124,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(11,125,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(12,126,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(13,54,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(14,127,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(15,128,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(16,129,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(17,130,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(18,131,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(19,132,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(20,130,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(21,133,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(22,134,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(23,127,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(24,135,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(25,136,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(26,131,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(27,137,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(28,129,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(29,138,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(30,134,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(31,139,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(32,140,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(33,141,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(34,142,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,57,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(36,60,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,71,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(38,143,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(39,144,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,136,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(41,132,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(42,145,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(43,146,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(44,128,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(45,147,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(46,148,'<com.nd.commplatform.B.B.B$1: void onClick(android.view.View)>',14,'a',0),(47,150,'<com.zhangling.anTest8.Booking$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(48,151,'<com.zhangling.anTest8.Lists$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(49,152,'<com.zhangling.anTest8.Setting$3: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(50,112,'<com.zhangling.anTest8.TextDetail: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(51,154,'<com.nd.commplatform.C.H: void A(int,android.content.Context,android.content.Intent)>',15,'a',NULL),(52,155,'<com.zhangling.anTest8.BaseActivity$4: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(53,115,'<com.zhangling.anTest8.TestPay: void onCreate(android.os.Bundle)>',5,'a',NULL),(54,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: void onClick(android.view.View)>',11,'a',NULL),(55,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: void a(fahrbot.apps.rootcallblocker.utils.db.dbo.BlockedCall)>',13,'a',NULL),(56,157,'<fahrbot.apps.rootcallblocker.utils.a: void a(android.app.Activity,fahrbot.apps.rootcallblocker.utils.s)>',19,'p',NULL),(57,42,'<fahrbot.apps.rootcallblocker.ui.SupportActivity: boolean onPreferenceClick(android.preference.Preference)>',27,'a',NULL),(58,11,'<fahrbot.apps.rootcallblocker.ui.CallLogListActivity: void onCreate(android.os.Bundle)>',11,'p',NULL),(59,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',102,'s',NULL),(60,9,'<fahrbot.apps.rootcallblocker.ui.CallBlockerPreferences: boolean onPreferenceClick(android.preference.Preference)>',19,'a',NULL),(61,158,'<fahrbot.apps.rootcallblocker.ui.base.BlockListActivity: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(62,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',112,'s',NULL),(63,62,'<fahrbot.apps.rootcallblocker.ui.MainActivity: void b()>',7,'a',NULL),(64,159,'<fahrbot.lib.log.a: void a(java.lang.Thread,java.lang.Throwable,boolean)>',56,'a',NULL),(65,42,'<fahrbot.apps.rootcallblocker.ui.SupportActivity: void a(java.lang.String)>',5,'a',NULL),(66,52,'<fahrbot.apps.rootcallblocker.ui.SchedulePreferenceActivity: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(67,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void a(android.content.Context,fahrbot.apps.rootcallblocker.utils.db.dbo.BlockedCall)>',39,'r',NULL),(68,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: void onClick(android.view.View)>',18,'a',NULL),(69,31,'<fahrbot.apps.rootcallblocker.ui.ProfilePreferenceActivity: boolean onPreferenceClick(android.preference.Preference)>',33,'a',NULL),(70,22,'<fahrbot.lib.log.CrashReportActivity: void onClick(android.view.View)>',114,'a',NULL),(71,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',187,'s',NULL),(72,157,'<fahrbot.apps.rootcallblocker.utils.a: void a()>',6,'s',NULL),(73,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: boolean onContextItemSelected(android.view.MenuItem)>',58,'a',NULL),(74,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: java.lang.String a(android.content.Context,java.lang.String)>',8,'p',NULL),(75,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',197,'p',NULL),(76,31,'<fahrbot.apps.rootcallblocker.ui.ProfilePreferenceActivity: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(77,42,'<fahrbot.apps.rootcallblocker.ui.SupportActivity: boolean onPreferenceClick(android.preference.Preference)>',17,'a',NULL),(78,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',92,'s',NULL),(79,161,'<fahrbot.apps.rootcallblocker.utils.d: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(80,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: boolean onContextItemSelected(android.view.MenuItem)>',42,'a',NULL),(81,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',86,'r',NULL),(82,162,'<fahrbot.apps.rootcallblocker.ui.base.BasePreferenceActivity: void a(java.lang.Class)>',4,'a',NULL),(83,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: void onClick(android.view.View)>',7,'a',NULL),(84,26,'<fahrbot.apps.rootcallblocker.ui.ProfilesPreferencesActivity: boolean onPreferenceClick(android.preference.Preference)>',14,'a',NULL),(85,163,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(86,73,'<fahrbot.apps.rootcallblocker.ui.CallLogActivity: void a(fahrbot.apps.rootcallblocker.utils.db.dbo.BlockedSms)>',13,'a',NULL),(87,158,'<fahrbot.apps.rootcallblocker.ui.base.BlockListActivity: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(88,98,'<fahrbot.apps.rootcallblocker.utils.DaemonBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',172,'a',NULL),(89,31,'<fahrbot.apps.rootcallblocker.ui.ProfilePreferenceActivity: boolean onPreferenceClick(android.preference.Preference)>',22,'a',NULL),(90,157,'<fahrbot.apps.rootcallblocker.utils.a: void a(java.lang.Boolean)>',14,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,23),(2,3,24),(3,5,25),(4,6,26),(5,7,24),(6,8,23),(7,13,23),(8,14,24),(9,16,24),(10,17,23),(11,19,25),(12,22,25),(13,23,25),(14,24,26),(15,27,26),(16,32,26),(17,34,26),(18,35,23),(19,37,24),(20,40,24),(21,41,24),(22,42,23),(23,43,23),(24,44,24),(25,46,23),(26,48,25),(27,50,23),(28,51,24),(29,52,23),(30,53,24),(31,64,28),(32,73,30),(33,74,29),(34,77,31),(35,78,31),(36,79,31),(37,80,31),(38,81,31),(39,82,31),(40,83,31),(41,84,31),(42,86,14),(43,87,26),(44,89,25),(45,91,32),(46,92,26),(47,93,29),(48,99,28),(49,103,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/keji/danti/Setting'),(2,4,'com.android.settings.WirelessSettings'),(3,9,'com/keji/danti/Background'),(4,10,'com/keji/danti/TextDetail'),(5,11,'com/keji/danti/TextDetail'),(6,12,'com/keji/danti/Background'),(7,15,'com/keji/danti/TextDetail'),(8,18,'com/keji/danti/Setting'),(9,21,'com.android.settings.WirelessSettings'),(10,20,'com/keji/danti/Setting'),(11,26,'com/keji/danti/TextDetail'),(12,25,'com/keji/danti/Setting'),(13,28,'com/keji/danti/TextDetail'),(14,29,'com.android.settings.WirelessSettings'),(15,30,'com.android.settings.WirelessSettings'),(16,33,'com/keji/danti/Background'),(17,31,'com/keji/danti/TextDetail'),(18,36,'com/keji/danti/TextDetail'),(19,38,'com/keji/danti/Background'),(20,39,'com/keji/danti/TextDetail'),(21,45,'com/keji/danti/Background'),(22,47,'com/keji/danti/TextDetail'),(23,49,'com/keji/danti/Setting'),(24,54,'com.android.settings.WirelessSettings'),(25,55,'com/keji/danti/TextDetail'),(26,56,'com/zhangling/anTest8/TextDetail'),(27,57,'com/zhangling/anTest8/TextDetail'),(28,58,'com/zhangling/anTest8/Background'),(29,59,'com/zhangling/anTest8/Setting'),(30,60,'com/nd/commplatform/activity/SNSControlCenterActivity'),(31,61,'com/zhangling/anTest8/TextDetail'),(32,62,'com/zhangling/anTest8/TestPay2'),(33,63,'fahrbot/apps/rootcallblocker/ui/ProfilesPreferencesActivity'),(34,65,'fahrbot/apps/rootcallblocker/ui/base/TextActivity'),(35,66,'fahrbot/apps/rootcallblocker/utils/CallBlockerService'),(36,67,'fahrbot/apps/rootcallblocker/ui/HiddenModePreferences'),(37,68,'fahrbot/apps/rootcallblocker/ui/ContactListActivity'),(38,69,'fahrbot/apps/rootcallblocker/utils/CallBlockerService'),(39,70,'(.*)'),(40,71,'fahrbot/lib/log/CrashReportActivity'),(41,72,'fahrbot/apps/rootcallblocker/ui/base/TextActivity'),(42,73,'fahrbot/apps/rootcallblocker/ui/ProfileSelectActivity'),(43,75,'(.*)'),(44,76,'fahrbot/apps/rootcallblocker/ui/DefaultPreferences'),(45,85,'fahrbot/apps/rootcallblocker/utils/CallBlockerService'),(46,86,'fahrbot/apps/rootcallblocker/utils/CallBlockerService'),(47,88,'fahrbot/apps/rootcallblocker/ui/BlackListActivity'),(48,90,'fahrbot/apps/rootcallblocker/utils/CallBlockerService'),(49,94,'fahrbot/apps/rootcallblocker/ui/SchedulePreferenceActivity'),(50,95,'fahrbot/apps/rootcallblocker/ui/SchedulingActivity'),(51,96,'fahrbot/apps/rootcallblocker/ui/CallBlockerPreferences'),(52,97,'fahrbot/apps/rootcallblocker/ui/ProfilePreferenceActivity'),(53,98,'(.*)'),(54,100,'fahrbot/apps/rootcallblocker/ui/CallLogListActivity'),(55,101,'fahrbot/apps/rootcallblocker/ui/CallLogActivity'),(56,102,'fahrbot/apps/rootcallblocker/ui/WhiteListActivity'),(57,103,'fahrbot/apps/rootcallblocker/utils/CallBlockerService');
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
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,6,3),(4,18,4),(5,19,5),(6,20,6),(7,22,7),(8,23,8),(9,24,9),(10,25,10),(11,27,11),(12,32,12),(13,34,13),(14,48,14),(15,49,15),(16,59,16),(17,64,17),(18,87,20),(19,89,23),(20,91,24),(21,92,25),(22,99,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'sms_body'),(2,7,'packageName'),(3,8,'packageName'),(4,10,'index'),(5,11,'index'),(6,15,'index'),(7,16,'packageName'),(8,17,'packageName'),(9,24,'sms_body'),(10,26,'index'),(11,27,'sms_body'),(12,28,'index'),(13,31,'index'),(14,32,'sms_body'),(15,34,'sms_body'),(16,36,'index'),(17,39,'index'),(18,40,'packageName'),(19,41,'packageName'),(20,42,'packageName'),(21,43,'packageName'),(22,44,'packageName'),(23,46,'packageName'),(24,47,'index'),(25,55,'index'),(26,56,'index'),(27,56,'notSaveDate'),(28,57,'index'),(29,61,'index'),(30,65,'help_name'),(31,71,'crash_file'),(32,71,'crash_notify_id'),(33,71,'crash_fatal'),(34,72,'help_name'),(35,76,'profile_id'),(36,77,'android.intent.extra.INTENT'),(37,78,'android.intent.extra.INTENT'),(38,79,'android.intent.extra.TITLE'),(39,79,'android.intent.extra.INTENT'),(40,80,'android.intent.extra.INTENT'),(41,81,'android.intent.extra.TITLE'),(42,81,'android.intent.extra.INTENT'),(43,82,'android.intent.extra.INTENT'),(44,83,'android.intent.extra.TITLE'),(45,83,'android.intent.extra.INTENT'),(46,84,'android.intent.extra.TITLE'),(47,84,'android.intent.extra.INTENT'),(48,85,'(.*)'),(49,85,'action'),(50,88,'profile_id'),(51,97,'profile_id'),(52,101,'extra_launch_pwd'),(53,102,'profile_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,8),(11,6,2),(12,6,7),(13,6,10),(14,6,9),(15,6,11),(16,7,1),(17,8,12),(18,8,14),(19,8,13),(20,9,11),(21,9,10),(22,9,9),(23,9,8),(24,9,4),(25,9,5),(26,9,6),(27,9,7),(28,9,2),(29,9,3),(30,10,11),(31,10,7),(32,10,8),(33,10,9),(34,10,5),(35,10,10),(36,10,6),(37,10,3),(38,10,4),(39,10,2),(40,11,18),(41,11,19),(42,11,20),(43,11,21),(44,11,6),(45,11,15),(46,11,16),(47,11,17),(48,12,4),(49,12,3),(50,12,6),(51,12,5),(52,12,8),(53,12,7),(54,12,10),(55,12,9),(56,12,11),(57,12,2),(58,13,11),(59,13,10),(60,13,9),(61,13,8),(62,13,7),(63,13,6),(64,13,5),(65,13,4),(66,13,3),(67,13,2),(68,14,1),(69,15,22),(70,16,5),(71,17,27),(72,18,27),(73,19,29),(74,20,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.keji.danti656'),(2,4,'com.android.settings'),(3,9,'com.keji.danti656'),(4,10,'com.keji.danti656'),(5,11,'com.keji.danti656'),(6,12,'com.keji.danti608'),(7,15,'com.keji.danti608'),(8,18,'com.keji.danti608'),(9,21,'com.android.settings'),(10,20,'com.keji.danti607'),(11,26,'com.keji.danti607'),(12,25,'com.keji.danti704'),(13,28,'com.keji.danti727'),(14,29,'com.android.settings'),(15,30,'com.android.settings'),(16,33,'com.keji.danti727'),(17,31,'com.keji.danti608'),(18,36,'com.keji.danti607'),(19,38,'com.keji.danti704'),(20,39,'com.keji.danti727'),(21,45,'com.keji.danti607'),(22,47,'com.keji.danti704'),(23,49,'com.keji.danti727'),(24,54,'com.android.settings'),(25,55,'com.keji.danti704'),(26,56,'com.zhangling.anTest8'),(27,57,'com.zhangling.anTest8'),(28,58,'com.zhangling.anTest8'),(29,59,'com.zhangling.anTest8'),(30,60,'com.zhangling.anTest8'),(31,61,'com.zhangling.anTest8'),(32,62,'com.zhangling.anTest8'),(33,63,'fahrbot.apps.rootcallblocker.pro'),(34,65,'fahrbot.apps.rootcallblocker.pro'),(35,66,'fahrbot.apps.rootcallblocker.pro'),(36,67,'fahrbot.apps.rootcallblocker.pro'),(37,68,'fahrbot.apps.rootcallblocker.pro'),(38,69,'fahrbot.apps.rootcallblocker.pro'),(39,70,'fahrbot.apps.rootcallblocker.pro'),(40,71,'fahrbot.apps.rootcallblocker.pro'),(41,72,'fahrbot.apps.rootcallblocker.pro'),(42,73,'fahrbot.apps.rootcallblocker.pro'),(43,75,'fahrbot.apps.rootcallblocker.pro'),(44,76,'fahrbot.apps.rootcallblocker.pro'),(45,85,'fahrbot.apps.rootcallblocker.pro'),(46,86,'fahrbot.apps.rootcallblocker.pro'),(47,88,'fahrbot.apps.rootcallblocker.pro'),(48,90,'fahrbot.apps.rootcallblocker.pro'),(49,94,'fahrbot.apps.rootcallblocker.pro'),(50,95,'fahrbot.apps.rootcallblocker.pro'),(51,96,'fahrbot.apps.rootcallblocker.pro'),(52,97,'fahrbot.apps.rootcallblocker.pro'),(53,98,'(.*)'),(54,100,'fahrbot.apps.rootcallblocker.pro'),(55,101,'fahrbot.apps.rootcallblocker.pro'),(56,102,'fahrbot.apps.rootcallblocker.pro'),(57,103,'fahrbot.apps.rootcallblocker.pro');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,15,0),(3,18,0),(4,21,0),(5,32,0),(6,38,0),(7,62,0),(8,88,0),(9,96,0),(10,98,0),(11,99,0),(12,101,0),(13,104,0),(14,105,0),(15,117,0),(16,118,0),(17,118,0),(18,119,0),(19,120,0),(20,121,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,1,0),(14,11,1,0),(15,12,0,0),(16,13,1,0),(17,13,1,0),(18,14,0,0),(19,15,1,0),(20,16,0,0),(21,17,0,0),(22,18,1,0),(23,20,1,0),(24,19,1,0),(25,22,0,0),(26,21,0,0),(27,23,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,0,0),(32,28,1,0),(33,29,0,0),(34,30,1,0),(35,31,1,0),(36,32,0,0),(37,31,1,0),(38,33,0,0),(39,34,0,0),(40,35,1,0),(41,36,1,0),(42,35,1,0),(43,36,1,0),(44,37,1,0),(45,38,0,0),(46,37,1,0),(47,39,0,0),(48,40,1,0),(49,41,0,0),(50,42,1,0),(51,42,1,0),(52,43,1,0),(53,43,1,0),(54,44,0,0),(55,45,0,0),(56,47,0,0),(57,48,0,0),(58,49,0,0),(59,50,0,0),(60,51,0,0),(61,52,0,0),(62,53,0,0),(63,54,0,0),(64,55,1,0),(65,57,0,0),(66,59,0,0),(67,60,0,0),(68,61,0,0),(69,62,0,0),(70,63,0,0),(71,64,0,0),(72,65,0,0),(73,66,0,0),(74,67,1,0),(75,68,0,0),(76,69,0,0),(77,70,1,0),(78,70,1,0),(79,70,1,0),(80,70,1,0),(81,70,1,0),(82,70,1,0),(83,70,1,0),(84,70,1,0),(85,71,0,0),(86,72,0,0),(87,73,1,0),(88,76,0,0),(89,77,1,0),(90,78,0,0),(91,79,1,0),(92,80,1,0),(93,81,1,0),(94,82,0,0),(95,82,0,0),(96,83,0,0),(97,84,0,0),(98,85,0,0),(99,86,1,0),(100,87,0,0),(101,88,0,0),(102,89,0,0),(103,90,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,7,15,2,NULL),(2,8,15,2,NULL),(3,16,15,2,NULL),(4,17,15,2,NULL),(5,40,15,2,NULL),(6,42,15,2,NULL),(7,41,15,2,NULL),(8,43,15,2,NULL),(9,77,15,2,NULL),(10,78,15,2,NULL),(11,79,15,2,NULL),(12,80,15,2,NULL),(13,81,15,2,NULL),(14,82,15,2,NULL),(15,83,15,2,NULL),(16,84,15,2,NULL),(17,64,15,2,NULL),(18,87,15,2,NULL),(19,92,15,2,NULL),(20,99,15,2,NULL),(21,74,15,2,NULL),(22,93,15,2,NULL),(23,44,15,2,NULL),(24,46,15,2,NULL),(25,16,1,2,NULL),(26,17,1,2,NULL),(27,16,38,2,NULL),(28,17,38,2,NULL),(29,16,96,2,NULL),(30,17,96,2,NULL),(31,16,18,2,NULL),(32,17,18,2,NULL),(33,16,98,2,NULL),(34,17,98,2,NULL),(35,16,21,2,NULL),(36,17,21,2,NULL),(37,16,101,2,NULL),(38,17,101,2,NULL),(39,16,62,2,NULL),(40,17,62,2,NULL),(41,16,88,2,NULL),(42,17,88,2,NULL),(43,16,99,2,NULL),(44,17,99,2,NULL),(45,16,120,2,NULL),(46,17,120,2,NULL),(47,16,121,2,NULL),(48,17,121,2,NULL),(49,16,32,2,NULL),(50,17,32,2,NULL),(51,16,104,2,NULL),(52,17,104,2,NULL),(53,16,105,2,NULL),(54,17,105,2,NULL),(55,16,117,2,NULL),(56,17,117,2,NULL),(57,16,118,2,NULL),(58,17,118,2,NULL),(59,16,119,2,NULL),(60,17,119,2,NULL),(61,7,96,2,NULL),(62,8,96,2,NULL),(63,40,96,2,NULL),(64,42,96,2,NULL),(65,41,96,2,NULL),(66,43,96,2,NULL),(67,77,96,2,NULL),(68,78,96,2,NULL),(69,79,96,2,NULL),(70,80,96,2,NULL),(71,81,96,2,NULL),(72,82,96,2,NULL),(73,83,96,2,NULL),(74,84,96,2,NULL),(75,64,96,2,NULL),(76,87,96,2,NULL),(77,92,96,2,NULL),(78,99,96,2,NULL),(79,74,96,2,NULL),(80,93,96,2,NULL),(81,44,96,2,NULL),(82,46,96,2,NULL),(83,7,32,2,NULL),(84,8,32,2,NULL),(85,40,32,2,NULL),(86,42,32,2,NULL),(87,41,32,2,NULL),(88,43,32,2,NULL),(89,77,32,2,NULL),(90,78,32,2,NULL),(91,79,32,2,NULL),(92,80,32,2,NULL),(93,81,32,2,NULL),(94,82,32,2,NULL),(95,83,32,2,NULL),(96,84,32,2,NULL),(97,64,32,2,NULL),(98,87,32,2,NULL),(99,92,32,2,NULL),(100,99,32,2,NULL),(101,74,32,2,NULL),(102,93,32,2,NULL),(103,44,32,2,NULL),(104,46,32,2,NULL),(105,44,1,2,NULL),(106,46,1,2,NULL),(107,44,38,2,NULL),(108,46,38,2,NULL),(109,44,18,2,NULL),(110,46,18,2,NULL),(111,44,98,2,NULL),(112,46,98,2,NULL),(113,44,21,2,NULL),(114,46,21,2,NULL),(115,44,101,2,NULL),(116,46,101,2,NULL),(117,44,62,2,NULL),(118,46,62,2,NULL),(119,44,88,2,NULL),(120,46,88,2,NULL),(121,44,99,2,NULL),(122,46,99,2,NULL),(123,44,120,2,NULL),(124,46,120,2,NULL),(125,44,121,2,NULL),(126,46,121,2,NULL),(127,44,104,2,NULL),(128,46,104,2,NULL),(129,44,105,2,NULL),(130,46,105,2,NULL),(131,44,117,2,NULL),(132,46,117,2,NULL),(133,44,118,2,NULL),(134,46,118,2,NULL),(135,44,119,2,NULL),(136,46,119,2,NULL),(137,7,104,2,NULL),(138,8,104,2,NULL),(139,40,104,2,NULL),(140,42,104,2,NULL),(141,41,104,2,NULL),(142,43,104,2,NULL),(143,77,104,2,NULL),(144,78,104,2,NULL),(145,79,104,2,NULL),(146,80,104,2,NULL),(147,81,104,2,NULL),(148,82,104,2,NULL),(149,83,104,2,NULL),(150,84,104,2,NULL),(151,64,104,2,NULL),(152,87,104,2,NULL),(153,92,104,2,NULL),(154,99,104,2,NULL),(155,74,104,2,NULL),(156,93,104,2,NULL),(157,7,18,2,NULL),(158,8,18,2,NULL),(159,40,18,2,NULL),(160,42,18,2,NULL),(161,41,18,2,NULL),(162,43,18,2,NULL),(163,77,18,2,NULL),(164,78,18,2,NULL),(165,79,18,2,NULL),(166,80,18,2,NULL),(167,81,18,2,NULL),(168,82,18,2,NULL),(169,83,18,2,NULL),(170,84,18,2,NULL),(171,64,18,2,NULL),(172,87,18,2,NULL),(173,92,18,2,NULL),(174,99,18,2,NULL),(175,74,18,2,NULL),(176,93,18,2,NULL),(177,40,1,2,NULL),(178,42,1,2,NULL),(179,40,38,2,NULL),(180,42,38,2,NULL),(181,40,98,2,NULL),(182,42,98,2,NULL),(183,40,21,2,NULL),(184,42,21,2,NULL),(185,40,101,2,NULL),(186,42,101,2,NULL),(187,40,62,2,NULL),(188,42,62,2,NULL),(189,40,88,2,NULL),(190,42,88,2,NULL),(191,40,99,2,NULL),(192,42,99,2,NULL),(193,40,120,2,NULL),(194,42,120,2,NULL),(195,40,121,2,NULL),(196,42,121,2,NULL),(197,40,105,2,NULL),(198,42,105,2,NULL),(199,40,117,2,NULL),(200,42,117,2,NULL),(201,40,118,2,NULL),(202,42,118,2,NULL),(203,40,119,2,NULL),(204,42,119,2,NULL),(205,7,98,2,NULL),(206,8,98,2,NULL),(207,41,98,2,NULL),(208,43,98,2,NULL),(209,77,98,2,NULL),(210,78,98,2,NULL),(211,79,98,2,NULL),(212,80,98,2,NULL),(213,81,98,2,NULL),(214,82,98,2,NULL),(215,83,98,2,NULL),(216,84,98,2,NULL),(217,64,98,2,NULL),(218,87,98,2,NULL),(219,92,98,2,NULL),(220,99,98,2,NULL),(221,74,98,2,NULL),(222,93,98,2,NULL),(223,7,1,2,NULL),(224,8,1,2,NULL),(225,41,1,2,NULL),(226,43,1,2,NULL),(227,77,1,2,NULL),(228,78,1,2,NULL),(229,79,1,2,NULL),(230,80,1,2,NULL),(231,81,1,2,NULL),(232,82,1,2,NULL),(233,83,1,2,NULL),(234,84,1,2,NULL),(235,64,1,2,NULL),(236,87,1,2,NULL),(237,92,1,2,NULL),(238,99,1,2,NULL),(239,74,1,2,NULL),(240,93,1,2,NULL),(241,7,38,2,NULL),(242,8,38,2,NULL),(243,7,21,2,NULL),(244,8,21,2,NULL),(245,7,101,2,NULL),(246,8,101,2,NULL),(247,7,62,2,NULL),(248,8,62,2,NULL),(249,7,88,2,NULL),(250,8,88,2,NULL),(251,7,99,2,NULL),(252,8,99,2,NULL),(253,7,120,2,NULL),(254,8,120,2,NULL),(255,7,121,2,NULL),(256,8,121,2,NULL),(257,7,105,2,NULL),(258,8,105,2,NULL),(259,7,117,2,NULL),(260,8,117,2,NULL),(261,7,118,2,NULL),(262,8,118,2,NULL),(263,7,119,2,NULL),(264,8,119,2,NULL),(265,41,38,2,NULL),(266,43,38,2,NULL),(267,77,38,2,NULL),(268,78,38,2,NULL),(269,79,38,2,NULL),(270,80,38,2,NULL),(271,81,38,2,NULL),(272,82,38,2,NULL),(273,83,38,2,NULL),(274,84,38,2,NULL),(275,64,38,2,NULL),(276,87,38,2,NULL),(277,92,38,2,NULL),(278,99,38,2,NULL),(279,74,38,2,NULL),(280,93,38,2,NULL),(281,41,105,2,NULL),(282,43,105,2,NULL),(283,77,105,2,NULL),(284,78,105,2,NULL),(285,79,105,2,NULL),(286,80,105,2,NULL),(287,81,105,2,NULL),(288,82,105,2,NULL),(289,83,105,2,NULL),(290,84,105,2,NULL),(291,64,105,2,NULL),(292,87,105,2,NULL),(293,92,105,2,NULL),(294,99,105,2,NULL),(295,74,105,2,NULL),(296,93,105,2,NULL),(297,59,114,2,NULL),(298,62,116,2,NULL),(299,41,117,2,NULL),(300,43,117,2,NULL),(301,77,117,2,NULL),(302,78,117,2,NULL),(303,79,117,2,NULL),(304,80,117,2,NULL),(305,81,117,2,NULL),(306,82,117,2,NULL),(307,83,117,2,NULL),(308,84,117,2,NULL),(309,64,117,2,NULL),(310,87,117,2,NULL),(311,92,117,2,NULL),(312,99,117,2,NULL),(313,74,117,2,NULL),(314,93,117,2,NULL),(315,41,118,2,NULL),(316,43,118,2,NULL),(317,77,118,2,NULL),(318,78,118,2,NULL),(319,79,118,2,NULL),(320,80,118,2,NULL),(321,81,118,2,NULL),(322,82,118,2,NULL),(323,83,118,2,NULL),(324,84,118,2,NULL),(325,64,118,2,NULL),(326,87,118,2,NULL),(327,92,118,2,NULL),(328,99,118,2,NULL),(329,74,118,2,NULL),(330,93,118,2,NULL),(331,41,119,2,NULL),(332,43,119,2,NULL),(333,77,119,2,NULL),(334,78,119,2,NULL),(335,79,119,2,NULL),(336,80,119,2,NULL),(337,81,119,2,NULL),(338,82,119,2,NULL),(339,83,119,2,NULL),(340,84,119,2,NULL),(341,64,119,2,NULL),(342,87,119,2,NULL),(343,92,119,2,NULL),(344,99,119,2,NULL),(345,74,119,2,NULL),(346,93,119,2,NULL),(347,67,78,2,NULL),(348,77,21,2,NULL),(349,78,21,2,NULL),(350,79,21,2,NULL),(351,80,21,2,NULL),(352,81,21,2,NULL),(353,82,21,2,NULL),(354,83,21,2,NULL),(355,84,21,2,NULL),(356,77,101,2,NULL),(357,78,101,2,NULL),(358,79,101,2,NULL),(359,80,101,2,NULL),(360,81,101,2,NULL),(361,82,101,2,NULL),(362,83,101,2,NULL),(363,84,101,2,NULL),(364,77,62,2,NULL),(365,78,62,2,NULL),(366,79,62,2,NULL),(367,80,62,2,NULL),(368,81,62,2,NULL),(369,82,62,2,NULL),(370,83,62,2,NULL),(371,84,62,2,NULL),(372,77,88,2,NULL),(373,78,88,2,NULL),(374,79,88,2,NULL),(375,80,88,2,NULL),(376,81,88,2,NULL),(377,82,88,2,NULL),(378,83,88,2,NULL),(379,84,88,2,NULL),(380,77,99,2,NULL),(381,78,99,2,NULL),(382,79,99,2,NULL),(383,80,99,2,NULL),(384,81,99,2,NULL),(385,82,99,2,NULL),(386,83,99,2,NULL),(387,84,99,2,NULL),(388,77,120,2,NULL),(389,78,120,2,NULL),(390,79,120,2,NULL),(391,80,120,2,NULL),(392,81,120,2,NULL),(393,82,120,2,NULL),(394,83,120,2,NULL),(395,84,120,2,NULL),(396,77,121,2,NULL),(397,78,121,2,NULL),(398,79,121,2,NULL),(399,80,121,2,NULL),(400,81,121,2,NULL),(401,82,121,2,NULL),(402,83,121,2,NULL),(403,84,121,2,NULL),(404,97,30,2,NULL),(405,76,16,2,NULL),(406,88,13,2,NULL),(407,102,19,2,NULL),(408,65,37,2,NULL),(409,72,37,2,NULL),(410,73,56,2,NULL),(411,41,62,2,NULL),(412,43,62,2,NULL),(413,64,62,2,NULL),(414,87,62,2,NULL),(415,92,62,2,NULL),(416,99,62,2,NULL),(417,74,62,2,NULL),(418,93,62,2,NULL),(419,63,26,2,NULL),(420,96,9,2,NULL),(421,64,21,2,NULL),(422,87,21,2,NULL),(423,92,21,2,NULL),(424,99,21,2,NULL),(425,64,101,2,NULL),(426,87,101,2,NULL),(427,92,101,2,NULL),(428,99,101,2,NULL),(429,64,88,2,NULL),(430,87,88,2,NULL),(431,92,88,2,NULL),(432,99,88,2,NULL),(433,64,99,2,NULL),(434,87,99,2,NULL),(435,92,99,2,NULL),(436,99,99,2,NULL),(437,64,120,2,NULL),(438,87,120,2,NULL),(439,92,120,2,NULL),(440,99,120,2,NULL),(441,64,121,2,NULL),(442,87,121,2,NULL),(443,92,121,2,NULL),(444,99,121,2,NULL),(445,41,88,2,NULL),(446,43,88,2,NULL),(447,74,88,2,NULL),(448,93,88,2,NULL),(449,66,88,2,NULL),(450,69,88,2,NULL),(451,85,88,2,NULL),(452,90,88,2,NULL),(453,101,73,2,NULL),(454,74,21,2,NULL),(455,93,21,2,NULL),(456,41,99,2,NULL),(457,43,99,2,NULL),(458,74,101,2,NULL),(459,93,101,2,NULL),(460,74,120,2,NULL),(461,93,120,2,NULL),(462,74,121,2,NULL),(463,93,121,2,NULL),(464,41,120,2,NULL),(465,43,120,2,NULL),(466,41,121,2,NULL),(467,43,121,2,NULL),(468,41,21,2,NULL),(469,43,21,2,NULL),(470,41,101,2,NULL),(471,43,101,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(20,'android.permission.PROCESS_OUTGOING_CALLS'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'smsto:',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://fahrbot.apps.rootcallblocker.beta/profiles',NULL,NULL,NULL),(19,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(20,NULL,NULL,'sms:(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=fahrbot.apps.rootcallblocker.pro',NULL,NULL,NULL),(24,'package','fahrbot.apps.rootcallblocker.beta',NULL,NULL,NULL,NULL),(25,NULL,NULL,'sms:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,56,18),(2,58,19),(3,74,21),(4,75,22);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,3,1),(22,3,2),(23,2,3),(24,4,1),(25,2,4),(26,3,3),(27,4,2),(28,2,5),(29,3,4),(30,4,3),(31,3,5),(32,5,19),(33,2,6),(34,4,4),(35,5,3),(36,2,7),(37,3,6),(38,4,5),(39,5,20),(40,2,8),(41,3,7),(42,4,6),(43,5,7),(44,3,8),(45,2,9),(46,6,1),(47,4,7),(48,5,8),(49,3,9),(50,6,2),(51,2,10),(52,4,8),(53,6,3),(54,2,11),(55,3,10),(56,5,14),(57,4,9),(58,6,4),(59,5,15),(60,3,11),(61,2,12),(62,4,10),(63,6,5),(64,3,12),(65,2,13),(66,4,11),(67,2,14),(68,6,6),(69,3,13),(70,4,12),(71,6,7),(72,2,15),(73,3,14),(74,4,13),(75,6,8),(76,3,15),(77,2,17),(78,4,14),(79,3,17),(80,2,16),(81,6,9),(82,4,15),(83,2,18),(84,3,16),(85,6,10),(86,4,17),(87,3,18),(88,6,11),(89,4,16),(90,6,12),(91,4,18),(92,6,13),(93,6,14),(94,6,15),(95,6,17),(96,6,16),(97,6,18),(98,7,17),(99,7,1),(100,7,19),(101,7,5),(102,7,6),(103,7,7),(104,7,9),(105,7,12),(106,7,13),(107,7,15);
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

-- Dump completed on 2015-10-12  3:30:05
