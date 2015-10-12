-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_433
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(4,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.SCREEN_OFF'),(3,'android.intent.action.USER_PRESENT'),(1,'android.intent.action.VIEW'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'com.android.vending.billing.IN_APP_NOTIFY'),(6,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(7,'com.android.vending.billing.RESPONSE_CODE'),(15,'com.ovruuvjrdogg.rdppccdus.BootReceiver'),(13,'lfboq.mbswp.fuiVf12'),(9,'pmepljfcdkl.dfwk.UTfelpdQf12');
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
INSERT INTO `Applications` VALUES (1,'ho.ti.enkubrv.r_qrcd',10035),(2,'pmepljfcdkl.dfwk',4),(3,'lfboq.mbswp',10001),(4,'cross.vdiud.ifcrfdmbhckjq',10036),(5,'com.igkvtkla.ksbcpm',10037),(6,'com.ovruuvjrdogg.rdppccdus',10024),(7,'com.nvld.hhnw.pdj.cqif',10023);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ho.ti.enkubrv.r_qrcd.StartActivity'),(2,2,'pmepljfcdkl.dfwk.StarWar'),(3,2,'wsu.beVvfaKs.MyActivity'),(4,1,'com.NluBf.DebsjghfHVCrKIH'),(5,3,'lfboq.mbswp.KickKick'),(6,3,'com.google.ads.AdActivity'),(7,1,'com.NluBf.mGavvohs'),(8,3,'ncf.ijDkQ.MyActivity'),(9,2,'wsu.beVvfaKs.ApopMain'),(10,1,'com.NluBf.mNQQilkd'),(11,2,'wsu.beVvfaKs.UTfelpdQf16'),(12,1,'com.NluBf.RheHSiAKIceJnIi'),(13,2,'wsu.beVvfaKs.UTfelpdQf8'),(14,3,'ncf.ijDkQ.ApopMain'),(15,1,'com.NluBf.cGgcKnTQuCM'),(16,3,'ncf.ijDkQ.fuiVf16'),(17,1,'com.NluBf.SLkkpiWeGrSj'),(18,2,'wsu.beVvfaKs.UTfelpdQf9'),(19,3,'ncf.ijDkQ.fuiVf8'),(20,1,'com.NluBf.userPermissionReceiver'),(21,2,'wsu.beVvfaKs.UTfelpdQf2'),(22,3,'ncf.ijDkQ.fuiVf9'),(23,4,'cross.vdiud.ifcrfdmbhckjq.MainActivity'),(24,2,'wsu.beVvfaKs.UTfelpdQf10'),(25,3,'ncf.ijDkQ.fuiVf2'),(26,2,'wsu.beVvfaKs.UTfelpdQf11'),(27,4,'cross.field.stage.StageActivity'),(28,4,'cross.field.ranking.RankingActivity'),(29,3,'ncf.ijDkQ.fuiVf10'),(30,4,'com.MDqaIBK.dqFbiRIWw'),(31,3,'ncf.ijDkQ.UpdateActivity'),(32,2,'wsu.beVvfaKs.UTfelpdQf12'),(33,4,'com.MDqaIBK.ihbAnQwRk'),(34,3,'ncf.ijDkQ.fuiVf11'),(35,4,'cross.vdiud.ifcrfdmbhckjq.BillingRequestService'),(36,3,'ncf.ijDkQ.fuiVf12'),(37,4,'cross.vdiud.ifcrfdmbhckjq.BillingResponseReceiver'),(38,5,'com.igkvtkla.ksbcpm.ISniperActivity'),(39,5,'com.scoreloop.android.coreui.HighscoresActivity'),(40,5,'com.scoreloop.android.coreui.ProfileActivity'),(41,5,'com.scoreloop.android.coreui.AccountActivity'),(42,5,'com.scoreloop.android.coreui.BuddiesActivity'),(43,5,'com.scoreloop.android.coreui.BuddiesAddActivity'),(44,5,'com.scoreloop.android.coreui.GameActivity'),(45,5,'com.scoreloop.android.coreui.GamesActivity'),(46,5,'com.scoreloop.android.coreui.UserActivity'),(47,5,'com.scoreloop.android.coreui.PostScoreActivity'),(48,5,'com.igkvtkla.ksbcpm.moreGameActivity'),(49,5,'com.igkvtkla.ksbcpm.SoundOptionActivity'),(50,5,'com.igkvtkla.ksbcpm.DifficultOptionActivity'),(51,5,'com.igkvtkla.ksbcpm.OptionList'),(52,5,'com.google.ads.AdActivity'),(53,5,'com.GokHj.rmOpbJBlnCdg'),(54,5,'com.GokHj.fPssjlnU'),(55,5,'com.GokHj.OdQPUGkPEJvgUal'),(56,5,'com.GokHj.mbwriEecLIQTii'),(57,5,'com.GokHj.astfMtFaOBRT'),(58,5,'com.GokHj.MDVPJLIVPCm'),(59,5,'com.GokHj.userPermissionReceiver'),(60,6,'com.ovruuvjrdogg.rdppccdus.BubblePop'),(61,6,'com.google.ads.AdActivity'),(62,6,'com.mFIefNcu.PGlvKJiwGWPK'),(63,6,'com.mFIefNcu.NRorLrbWGUsQQpo'),(64,6,'com.mFIefNcu.MyAppInfo'),(65,6,'com.mFIefNcu.WalmUAkfNjmTKdg'),(66,6,'com.mFIefNcu.AKUjSKLQKFdNN'),(67,6,'com.mFIefNcu.MyAppAlertDialog'),(68,6,'com.mFIefNcu.kiNrwKavdGufS'),(69,6,'com.mFIefNcu.MyAppService'),(70,6,'com.mFIefNcu.BootReceiverService'),(71,4,'cross.vdiud.ifcrfdmbhckjq.MainActivity$2'),(72,4,'cross.vdiud.ifcrfdmbhckjq.MainActivity$1'),(73,1,'com.NluBf.ah'),(74,1,'com.NluBf.v'),(75,3,'ncf.ijDkQ.bs'),(76,3,'ncf.ijDkQ.bu'),(77,1,'com.NluBf.i'),(78,3,'ncf.ijDkQ.g'),(79,2,'wsu.beVvfaKs.ae'),(80,3,'ncf.ijDkQ.z'),(81,2,'wsu.beVvfaKs.am'),(82,3,'ncf.ijDkQ.e'),(83,2,'wsu.beVvfaKs.bo'),(84,2,'wsu.beVvfaKs.af'),(85,2,'wsu.beVvfaKs.al'),(86,3,'ncf.ijDkQ.ac'),(87,2,'wsu.beVvfaKs.br'),(88,2,'wsu.beVvfaKs.ClickableToast'),(89,3,'ncf.ijDkQ.n'),(90,7,'com.nvld.hhnw.pdj.cqif.FindTheLady'),(91,7,'com.NIlBQ.pVplbvLoM'),(92,7,'com.NIlBQ.vUpmInLcTApNQ'),(93,2,'wsu.beVvfaKs.ag'),(94,3,'ncf.ijDkQ.ClickableToast'),(95,6,'com.mFIefNcu.bf'),(96,3,'u$b'),(97,6,'com.mFIefNcu.ac'),(98,6,'com.mFIefNcu.be'),(99,6,'com.mFIefNcu.bp'),(100,6,'com.mFIefNcu.ai'),(101,6,'com.mFIefNcu.y'),(102,6,'com.mFIefNcu.af'),(103,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(104,6,'com.mFIefNcu.z'),(105,5,'com.igkvtkla.ksbcpm.MyView'),(106,5,'com.scoreloop.android.coreui.GameActivity$1'),(107,5,'com.igkvtkla.ksbcpm.MyView$2'),(108,5,'com.igkvtkla.ksbcpm.OptionList$1'),(109,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(110,5,'com.igkvtkla.ksbcpm.moreGameActivity$1'),(111,5,'com.scoreloop.android.coreui.GamesActivity$1'),(112,5,'com.GokHj.ah'),(113,5,'com.scoreloop.android.coreui.AccountActivity$2'),(114,5,'com.igkvtkla.ksbcpm.MyView$1'),(115,5,'com.scoreloop.android.coreui.BuddiesActivity$1'),(116,5,'com.scoreloop.android.coreui.GamesActivity$2'),(117,5,'com.GokHj.af'),(118,5,'com.scoreloop.client.android.core.controller.AddressBook'),(119,5,'com.GokHj.p'),(120,5,'com.scoreloop.android.coreui.HighscoresActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'apkSize'),(2,10,'iconURL'),(3,1,'MEMBERID'),(4,7,'MEMBERID'),(5,10,'imageURL'),(6,12,'np_app_key'),(7,4,'np_app_key'),(8,17,'np_app_key'),(9,7,'np_app_key'),(10,10,'np_app_key'),(11,17,'fileName'),(12,10,'apkInfo'),(13,10,'apkTitle'),(14,10,'detailFlag'),(15,15,'packageName'),(16,10,'apkURL'),(17,17,'fileURL'),(18,19,'from_alert'),(19,1,'GAMEID'),(20,7,'GAMEID'),(21,10,'apkVersion'),(22,29,'url'),(23,10,'apkSoftID'),(24,15,'fileURL'),(25,1,'P'),(26,31,'apkurl'),(27,7,'P'),(28,19,'game'),(29,8,'version_code'),(30,10,'packageName'),(31,29,'content'),(32,6,'action'),(33,2,'Market_ID'),(34,21,'Market_ID'),(35,3,'Market_ID'),(36,26,'Market_ID'),(37,18,'Market_ID'),(38,13,'Market_ID'),(39,24,'Market_ID'),(40,25,'isDirectFromTable'),(41,6,'com.google.ads.AdOpener'),(42,13,'title'),(43,24,'fromtable'),(44,13,'status'),(45,13,'from_alert'),(46,21,'isDirectFromTable'),(47,13,'game'),(48,24,'url'),(49,24,'content'),(50,21,'from'),(51,2,'gfan_statistics_appkey'),(52,19,'title'),(53,6,'params'),(54,13,'from_table'),(55,26,'service_channel'),(56,29,'fromtable'),(57,3,'soft_id'),(58,34,'service_channel'),(59,19,'from_table'),(60,3,'version_code'),(61,29,'package_name'),(62,13,'fromtype'),(63,24,'apk_url'),(64,11,'popurl'),(65,19,'status'),(66,31,'packagename'),(67,29,'version_code'),(68,8,'soft_id'),(69,24,'package_name'),(70,16,'poptitle'),(71,25,'package_name'),(72,24,'btn_txt'),(73,31,'title'),(74,19,'filepath'),(75,67,'url'),(76,66,'package_name'),(77,29,'title'),(78,11,'poptitle'),(79,64,'fromtype'),(80,13,'filepath'),(81,64,'game'),(82,11,'service_channel'),(83,3,'service_channel'),(84,31,'content'),(85,2,'gfan_cpid'),(86,68,'packagename'),(87,64,'title'),(88,64,'from_alert'),(89,61,'action'),(90,25,'from'),(91,16,'popurl'),(92,29,'btn_txt'),(93,16,'service_channel'),(94,8,'service_channel'),(95,29,'apk_url'),(96,24,'version_code'),(97,60,'UMENG_APPKEY'),(98,24,'title'),(99,63,'poptitle'),(100,19,'fromtype'),(101,61,'params'),(102,68,'content'),(103,63,'popurl'),(104,67,'content'),(105,67,'apk_url'),(106,68,'apkurl'),(107,68,'title'),(108,67,'title'),(109,62,'NEW_APP_ID'),(110,64,'filepath'),(111,67,'btn_txt'),(112,63,'NEW_APP_ID'),(113,67,'fromtable'),(114,67,'version_code'),(115,69,'NEW_APP_ID'),(116,66,'isDirectFromTable'),(117,67,'package_name'),(118,62,'soft_id'),(119,66,'from'),(120,64,'package_name'),(121,64,'status'),(122,64,'from_table'),(123,61,'com.google.ads.AdOpener'),(124,60,'UMENG_CHANNEL'),(125,62,'version_code'),(126,55,'apkSize'),(127,57,'packageName'),(128,55,'packageName'),(129,55,'apkTitle'),(130,55,'apkSoftID'),(131,52,'com.google.ads.AdOpener'),(132,52,'action'),(133,55,'apkVersion'),(134,58,'fileName'),(135,58,'fileURL'),(136,55,'apkInfo'),(137,55,'detailFlag'),(138,58,'np_app_key'),(139,53,'np_app_key'),(140,55,'np_app_key'),(141,54,'np_app_key'),(142,56,'np_app_key'),(143,52,'params'),(144,55,'apkURL'),(145,55,'imageURL'),(146,57,'fileURL'),(147,55,'iconURL');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,75,'r',1,NULL,NULL),(72,76,'r',1,NULL,NULL),(73,83,'r',1,NULL,NULL),(74,87,'r',1,NULL,NULL),(75,90,'a',1,NULL,NULL),(76,91,'a',0,NULL,NULL),(77,92,'a',1,NULL,NULL),(78,96,'r',1,NULL,NULL),(79,100,'r',1,NULL,NULL),(80,102,'r',1,NULL,NULL),(81,103,'r',1,NULL,NULL),(82,109,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,17),(3,3,7),(4,4,7),(5,5,23),(6,6,23),(7,7,23),(8,8,4),(9,9,30),(10,10,7),(11,11,15),(12,12,28),(13,13,23),(14,14,20),(15,15,22),(16,15,25),(17,15,29),(18,16,23),(19,17,4),(20,18,30),(21,19,10),(22,19,7),(23,20,8),(24,21,7),(25,21,10),(26,22,19),(27,23,7),(28,24,10),(29,25,31),(30,26,22),(31,27,4),(32,28,16),(33,29,19),(34,30,11),(35,31,32),(36,32,3),(37,33,8),(38,34,36),(39,35,3),(40,36,19),(41,37,32),(42,38,29),(43,39,8),(44,40,13),(45,41,19),(46,42,6),(47,43,3),(48,44,13),(49,45,8),(50,46,22),(51,47,18),(52,48,19),(53,49,13),(54,50,24),(55,51,22),(56,51,25),(57,51,29),(58,52,3),(59,53,19),(60,54,24),(61,55,24),(62,56,31),(63,57,13),(64,58,36),(65,59,3),(66,60,13),(67,61,19),(68,62,24),(69,63,8),(70,64,62),(71,65,13),(72,66,65),(73,67,18),(74,68,19),(75,69,68),(76,71,29),(77,70,67),(78,72,13),(79,73,29),(80,74,62),(81,75,64),(82,76,13),(83,77,29),(84,78,63),(85,79,36),(86,80,18),(87,80,21),(88,80,24),(89,81,64),(90,82,32),(91,83,62),(92,84,64),(93,85,65),(94,85,66),(95,85,67),(96,86,62),(97,87,65),(98,88,76),(99,89,67),(100,90,76),(101,91,66),(102,91,67),(103,91,65),(104,92,64),(105,93,70),(106,94,70),(107,95,64),(108,96,62),(109,97,61),(110,98,64),(111,99,64),(112,100,68),(113,101,64),(114,102,70),(115,103,64),(116,104,38),(117,105,54),(118,105,44),(119,106,38),(120,107,51),(121,108,52),(122,109,54),(123,110,51),(124,111,58),(125,112,48),(126,113,45),(127,113,54),(128,114,54),(129,115,59),(130,116,53),(131,117,54),(132,118,39),(133,119,41),(134,119,54),(135,120,48),(136,121,57),(137,122,48),(138,123,48),(139,124,54),(140,125,40),(141,126,53),(142,127,53),(143,128,38),(144,129,38),(145,130,39),(146,131,45),(147,132,40),(148,133,42),(149,134,45),(150,135,53),(151,136,45),(152,137,48),(153,138,55),(154,139,43),(155,140,55),(156,140,54),(157,141,39),(158,142,54),(159,142,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.NluBf.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',31,'a',0),(2,17,'<com.NluBf.SLkkpiWeGrSj: void c(android.content.Context)>',74,'a',NULL),(3,7,'<com.NluBf.mGavvohs: void a()>',3,'a',NULL),(4,7,'<com.NluBf.mGavvohs: void b()>',45,'a',NULL),(5,71,'<cross.vdiud.ifcrfdmbhckjq.MainActivity$2: void onClick(android.content.DialogInterface,int)>',6,'a',0),(6,72,'<cross.vdiud.ifcrfdmbhckjq.MainActivity$1: void onClick(android.content.DialogInterface,int)>',6,'a',0),(7,23,'<cross.vdiud.ifcrfdmbhckjq.MainActivity: void buttonStart(android.view.View)>',19,'a',NULL),(8,4,'<com.NluBf.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',36,'a',NULL),(9,30,'<com.MDqaIBK.dqFbiRIWw: void a(java.lang.String)>',11,'a',NULL),(10,7,'<com.NluBf.mGavvohs: void b()>',55,'a',NULL),(11,15,'<com.NluBf.cGgcKnTQuCM: void a(java.lang.String)>',10,'a',NULL),(12,28,'<cross.field.ranking.RankingActivity: void buttonMore(android.view.View)>',7,'a',NULL),(13,23,'<cross.vdiud.ifcrfdmbhckjq.MainActivity: void buttonRanking(android.view.View)>',19,'a',NULL),(14,73,'<com.NluBf.ah: void run()>',25,'s',NULL),(15,25,'<ncf.ijDkQ.fuiVf2: void a(int,boolean)>',84,'a',NULL),(16,23,'<cross.vdiud.ifcrfdmbhckjq.MainActivity: void buttonMore(android.view.View)>',7,'a',NULL),(17,4,'<com.NluBf.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',21,'a',NULL),(18,30,'<com.MDqaIBK.dqFbiRIWw: void a()>',3,'a',NULL),(19,10,'<com.NluBf.mNQQilkd: void a(com.NluBf.mNQQilkd,android.content.Context,java.lang.String)>',5,'a',NULL),(20,8,'<ncf.ijDkQ.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(21,74,'<com.NluBf.v: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(22,19,'<ncf.ijDkQ.fuiVf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(23,7,'<com.NluBf.mGavvohs: void onBackPressed()>',5,'a',NULL),(24,10,'<com.NluBf.mNQQilkd: void onCreate(android.os.Bundle)>',67,'a',NULL),(25,31,'<ncf.ijDkQ.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(26,22,'<ncf.ijDkQ.fuiVf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(27,77,'<com.NluBf.i: void run()>',8,'s',NULL),(28,16,'<ncf.ijDkQ.fuiVf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(29,78,'<ncf.ijDkQ.g: void onClick(android.view.View)>',239,'a',NULL),(30,11,'<wsu.beVvfaKs.UTfelpdQf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(31,32,'<wsu.beVvfaKs.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(32,79,'<wsu.beVvfaKs.ae: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(33,8,'<ncf.ijDkQ.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(34,36,'<ncf.ijDkQ.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(35,3,'<wsu.beVvfaKs.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(36,19,'<ncf.ijDkQ.fuiVf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(37,32,'<wsu.beVvfaKs.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(38,29,'<ncf.ijDkQ.fuiVf10: void onClick(android.view.View)>',75,'a',NULL),(39,80,'<ncf.ijDkQ.z: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(40,81,'<wsu.beVvfaKs.am: void onClick(android.view.View)>',218,'a',NULL),(41,82,'<ncf.ijDkQ.e: void onClick(android.view.View)>',221,'a',NULL),(42,6,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(43,84,'<wsu.beVvfaKs.af: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(44,85,'<wsu.beVvfaKs.al: void onClick(android.view.View)>',242,'a',NULL),(45,86,'<ncf.ijDkQ.ac: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(46,22,'<ncf.ijDkQ.fuiVf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(47,18,'<wsu.beVvfaKs.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(48,82,'<ncf.ijDkQ.e: void onClick(android.view.View)>',242,'a',NULL),(49,85,'<wsu.beVvfaKs.al: void onClick(android.view.View)>',221,'a',NULL),(50,24,'<wsu.beVvfaKs.UTfelpdQf10: void onClick(android.view.View)>',66,'a',NULL),(51,25,'<ncf.ijDkQ.fuiVf2: void a(int,boolean)>',10,'s',NULL),(52,88,'<wsu.beVvfaKs.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(53,89,'<ncf.ijDkQ.n: void onClick(android.view.View)>',239,'a',NULL),(54,24,'<wsu.beVvfaKs.UTfelpdQf10: void onClick(android.view.View)>',53,'a',NULL),(55,24,'<wsu.beVvfaKs.UTfelpdQf10: void onClick(android.view.View)>',75,'a',NULL),(56,31,'<ncf.ijDkQ.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(57,13,'<wsu.beVvfaKs.UTfelpdQf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(58,36,'<ncf.ijDkQ.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(59,3,'<wsu.beVvfaKs.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(60,93,'<wsu.beVvfaKs.ag: void onClick(android.view.View)>',218,'a',NULL),(61,78,'<ncf.ijDkQ.g: void onClick(android.view.View)>',218,'a',NULL),(62,24,'<wsu.beVvfaKs.UTfelpdQf10: void onClick(android.view.View)>',84,'a',NULL),(63,94,'<ncf.ijDkQ.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(64,95,'<com.mFIefNcu.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(65,13,'<wsu.beVvfaKs.UTfelpdQf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(66,65,'<com.mFIefNcu.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(67,18,'<wsu.beVvfaKs.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(68,89,'<ncf.ijDkQ.n: void onClick(android.view.View)>',218,'a',NULL),(69,68,'<com.mFIefNcu.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(70,67,'<com.mFIefNcu.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(71,29,'<ncf.ijDkQ.fuiVf10: void onClick(android.view.View)>',84,'a',NULL),(72,81,'<wsu.beVvfaKs.am: void onClick(android.view.View)>',239,'a',NULL),(73,29,'<ncf.ijDkQ.fuiVf10: void onClick(android.view.View)>',66,'a',NULL),(74,62,'<com.mFIefNcu.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(75,64,'<com.mFIefNcu.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(76,93,'<wsu.beVvfaKs.ag: void onClick(android.view.View)>',239,'a',NULL),(77,29,'<ncf.ijDkQ.fuiVf10: void onClick(android.view.View)>',53,'a',NULL),(78,63,'<com.mFIefNcu.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(79,36,'<ncf.ijDkQ.fuiVf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(80,21,'<wsu.beVvfaKs.UTfelpdQf2: void a(int,boolean)>',10,'s',NULL),(81,97,'<com.mFIefNcu.ac: void onClick(android.view.View)>',197,'a',NULL),(82,32,'<wsu.beVvfaKs.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(83,98,'<com.mFIefNcu.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(84,64,'<com.mFIefNcu.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(85,66,'<com.mFIefNcu.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(86,99,'<com.mFIefNcu.bp: void onClick(android.view.View)>',106,'a',NULL),(87,65,'<com.mFIefNcu.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(88,91,'<com.NIlBQ.pVplbvLoM: void a()>',3,'a',NULL),(89,67,'<com.mFIefNcu.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(90,91,'<com.NIlBQ.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(91,66,'<com.mFIefNcu.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(92,101,'<com.mFIefNcu.y: void onClick(android.view.View)>',182,'a',NULL),(93,70,'<com.mFIefNcu.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(94,70,'<com.mFIefNcu.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(95,97,'<com.mFIefNcu.ac: void onClick(android.view.View)>',182,'a',NULL),(96,62,'<com.mFIefNcu.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(97,61,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(98,64,'<com.mFIefNcu.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(99,101,'<com.mFIefNcu.y: void onClick(android.view.View)>',197,'a',NULL),(100,68,'<com.mFIefNcu.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(101,104,'<com.mFIefNcu.z: void onClick(android.view.View)>',185,'a',NULL),(102,70,'<com.mFIefNcu.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(103,104,'<com.mFIefNcu.z: void onClick(android.view.View)>',200,'a',NULL),(104,105,'<com.igkvtkla.ksbcpm.MyView: void drawMainMenu(com.igkvtkla.ksbcpm.J2ME_Graphics)>',75,'a',NULL),(105,106,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(106,107,'<com.igkvtkla.ksbcpm.MyView$2: void run()>',7,'a',NULL),(107,108,'<com.igkvtkla.ksbcpm.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(108,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(109,54,'<com.GokHj.fPssjlnU: void b()>',55,'a',NULL),(110,108,'<com.igkvtkla.ksbcpm.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(111,58,'<com.GokHj.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(112,110,'<com.igkvtkla.ksbcpm.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(113,111,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(114,54,'<com.GokHj.fPssjlnU: void b()>',45,'a',NULL),(115,112,'<com.GokHj.ah: void run()>',25,'s',NULL),(116,53,'<com.GokHj.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(117,54,'<com.GokHj.fPssjlnU: void onBackPressed()>',5,'a',NULL),(118,39,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(119,113,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(120,110,'<com.igkvtkla.ksbcpm.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(121,57,'<com.GokHj.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(122,110,'<com.igkvtkla.ksbcpm.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(123,110,'<com.igkvtkla.ksbcpm.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(124,54,'<com.GokHj.fPssjlnU: void a()>',3,'a',NULL),(125,40,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(126,53,'<com.GokHj.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(127,53,'<com.GokHj.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(128,105,'<com.igkvtkla.ksbcpm.MyView: void drawMainMenu(com.igkvtkla.ksbcpm.J2ME_Graphics)>',104,'a',NULL),(129,114,'<com.igkvtkla.ksbcpm.MyView$1: void run()>',7,'a',NULL),(130,39,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(131,45,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(132,40,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(133,115,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(134,116,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(135,117,'<com.GokHj.af: void run()>',8,'s',NULL),(136,45,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(137,110,'<com.igkvtkla.ksbcpm.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(138,55,'<com.GokHj.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(139,118,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(140,119,'<com.GokHj.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(141,120,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(142,55,'<com.GokHj.OdQPUGkPEJvgUal: void a(com.GokHj.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,1),(2,8,1),(3,9,1),(4,10,1),(5,13,2),(6,14,1),(7,16,2),(8,18,2),(9,19,2),(10,20,2),(11,21,2),(12,23,1),(13,26,2),(14,28,2),(15,29,2),(16,31,2),(17,33,2),(18,34,2),(19,36,2),(20,38,2),(21,44,9),(22,45,10),(23,47,1),(24,48,1),(25,49,1),(26,50,1),(27,51,11),(28,53,1),(29,54,2),(30,55,11),(31,56,2),(32,57,2),(33,58,2),(34,62,2),(35,63,2),(36,64,1),(37,65,2),(38,66,1),(39,67,2),(40,68,1),(41,70,1),(42,72,2),(43,73,2),(44,75,2),(45,76,2),(46,77,10),(47,78,2),(48,80,13),(49,82,1),(50,83,1),(51,84,1),(52,85,1),(53,90,2),(54,91,2),(55,92,1),(56,93,2),(57,94,2),(58,95,1),(59,96,2),(60,98,1),(61,99,2),(62,100,1),(63,101,2),(64,102,2),(65,103,1),(66,104,2),(67,106,1),(68,107,2),(69,108,2),(70,110,2),(71,111,2),(72,112,2),(73,113,2),(74,115,13),(75,117,2),(76,118,9),(77,119,2),(78,120,2),(79,121,2),(80,124,2),(81,125,2),(82,126,2),(83,127,2),(84,132,1),(85,134,1),(86,135,1),(87,136,1),(88,137,1),(89,138,15),(90,139,15),(91,140,1),(92,141,1),(93,142,1),(94,143,1),(95,145,1),(96,146,11),(97,147,11),(98,149,2),(99,150,2),(100,151,2),(101,152,2),(102,154,1),(103,155,1),(104,156,1),(105,157,1),(106,159,2),(107,160,2),(108,161,2),(109,162,2),(110,164,1),(111,167,1),(112,168,11),(113,169,11),(114,173,1),(115,179,1),(116,180,1),(117,181,1),(118,182,1),(119,183,1),(120,191,1),(121,192,2),(122,193,2),(123,194,1),(124,196,2),(125,197,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,13,3),(2,16,4),(3,18,3),(4,19,3),(5,20,4),(6,21,4),(7,26,3),(8,28,4),(9,29,3),(10,31,4),(11,33,3),(12,34,4),(13,36,3),(14,38,4),(15,51,2),(16,53,2),(17,54,3),(18,55,2),(19,56,4),(20,57,3),(21,58,4),(22,62,3),(23,63,4),(24,65,3),(25,67,4),(26,72,3),(27,73,4),(28,75,3),(29,76,4),(30,78,6),(31,90,3),(32,91,3),(33,93,4),(34,94,4),(35,96,6),(36,99,3),(37,101,4),(38,102,3),(39,104,4),(40,107,3),(41,108,3),(42,110,4),(43,111,4),(44,112,3),(45,113,4),(46,117,3),(47,119,4),(48,120,3),(49,121,4),(50,124,3),(51,125,4),(52,126,3),(53,127,4),(54,149,3),(55,150,4),(56,151,3),(57,152,4),(58,159,3),(59,160,4),(60,161,3),(61,162,4),(62,192,3),(63,193,4),(64,196,3),(65,197,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/NluBf/mNQQilkd'),(2,2,'ho/ti/enkubrv/r_qrcd/StartActivity'),(3,3,'ho/ti/enkubrv/r_qrcd/StartActivity'),(4,4,'cross/field/stage/StageActivity'),(5,5,'com/NluBf/mGavvohs'),(6,7,'ho/ti/enkubrv/r_qrcd/StartActivity'),(7,11,'cross/field/ranking/RankingActivity'),(8,12,'com/NluBf/RheHSiAKIceJnIi'),(9,15,'com/NluBf/mGavvohs'),(10,17,'cross/vdiud/ifcrfdmbhckjq/MainActivity'),(11,22,'ncf/ijDkQ/fuiVf11'),(12,24,'ncf/ijDkQ/fuiVf11'),(13,25,'ho/ti/enkubrv/r_qrcd/StartActivity'),(14,27,'ncf/ijDkQ/fuiVf11'),(15,30,'com/NluBf/RheHSiAKIceJnIi'),(16,32,'lfboq/mbswp/KickKick'),(17,35,'pmepljfcdkl/dfwk/StarWar'),(18,37,'wsu/beVvfaKs/UTfelpdQf11'),(19,39,'pmepljfcdkl/dfwk/StarWar'),(20,40,'ncf/ijDkQ/fuiVf11'),(21,41,'ncf/ijDkQ/fuiVf11'),(22,42,'wsu/beVvfaKs/UTfelpdQf11'),(23,43,'ncf/ijDkQ/fuiVf11'),(24,44,'wsu/beVvfaKs/UTfelpdQf11'),(25,46,'lfboq/mbswp/KickKick'),(26,52,'pmepljfcdkl/dfwk/StarWar'),(27,59,'lfboq/mbswp/KickKick'),(28,60,'ncf/ijDkQ/fuiVf8'),(29,61,'wsu/beVvfaKs/UTfelpdQf8'),(30,69,'ncf/ijDkQ/fuiVf11'),(31,71,'wsu/beVvfaKs/UTfelpdQf16'),(32,74,'wsu/beVvfaKs/UTfelpdQf8'),(33,79,'wsu/beVvfaKs/UTfelpdQf11'),(34,81,'wsu/beVvfaKs/UTfelpdQf11'),(35,80,'ncf/ijDkQ/fuiVf11'),(36,87,'ncf/ijDkQ/fuiVf16'),(37,86,'wsu/beVvfaKs/UTfelpdQf10'),(38,88,'com/ovruuvjrdogg/rdppccdus/BubblePop'),(39,89,'wsu/beVvfaKs/UTfelpdQf11'),(40,97,'ncf/ijDkQ/fuiVf10'),(41,105,'com/mFIefNcu/MyAppService'),(42,109,'ncf/ijDkQ/fuiVf8'),(43,114,'com/ovruuvjrdogg/rdppccdus/BubblePop'),(44,115,'ncf/ijDkQ/fuiVf11'),(45,116,'wsu/beVvfaKs/UTfelpdQf11'),(46,118,'wsu/beVvfaKs/UTfelpdQf11'),(47,122,'com/ovruuvjrdogg/rdppccdus/BubblePop'),(48,123,'com/mFIefNcu/MyAppService'),(49,128,'com/mFIefNcu/NRorLrbWGUsQQpo'),(50,129,'com/mFIefNcu/MyAppInfo'),(51,130,'com/nvld/hhnw/pdj/cqif/FindTheLady'),(52,131,'com/mFIefNcu/MyAppInfo'),(53,133,'com/mFIefNcu/MyAppService'),(54,138,'com/mFIefNcu/MyAppService'),(55,139,'com/mFIefNcu/MyAppService'),(56,144,'com/mFIefNcu/MyAppService'),(57,148,'com/mFIefNcu/MyAppService'),(58,153,'com/mFIefNcu/MyAppService'),(59,158,'com/mFIefNcu/MyAppService'),(60,163,'com/igkvtkla/ksbcpm/moreGameActivity'),(61,165,'com/scoreloop/android/coreui/ProfileActivity'),(62,166,'com/igkvtkla/ksbcpm/DifficultOptionActivity'),(63,170,'com/igkvtkla/ksbcpm/ISniperActivity'),(64,171,'com/igkvtkla/ksbcpm/SoundOptionActivity'),(65,172,'com/GokHj/OdQPUGkPEJvgUal'),(66,174,'com/scoreloop/android/coreui/GameActivity'),(67,175,'com/igkvtkla/ksbcpm/ISniperActivity'),(68,176,'com/GokHj/mbwriEecLIQTii'),(69,177,'com/GokHj/fPssjlnU'),(70,178,'com/igkvtkla/ksbcpm/ISniperActivity'),(71,184,'com/igkvtkla/ksbcpm/ISniperActivity'),(72,185,'com/GokHj/fPssjlnU'),(73,186,'com/igkvtkla/ksbcpm/OptionList'),(74,187,'com/scoreloop/android/coreui/HighscoresActivity'),(75,188,'com/scoreloop/android/coreui/UserActivity'),(76,189,'com/scoreloop/android/coreui/GameActivity'),(77,190,'com/GokHj/mbwriEecLIQTii'),(78,195,'com/scoreloop/android/coreui/UserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,8,2),(3,9,3),(4,10,4),(5,14,5),(6,23,6),(7,47,7),(8,48,8),(9,49,9),(10,50,10),(11,51,11),(12,53,12),(13,55,13),(14,64,14),(15,66,15),(16,68,16),(17,70,17),(18,82,18),(19,83,19),(20,84,20),(21,85,21),(22,92,22),(23,95,23),(24,98,24),(25,100,25),(26,103,26),(27,106,27),(28,132,28),(29,134,29),(30,135,30),(31,136,31),(32,137,32),(33,140,33),(34,141,34),(35,142,35),(36,143,36),(37,145,37),(38,146,38),(39,147,39),(40,154,40),(41,155,41),(42,156,42),(43,157,43),(44,164,44),(45,167,45),(46,168,46),(47,169,47),(48,173,48),(49,179,49),(50,180,50),(51,181,51),(52,182,52),(53,183,53),(54,191,54),(55,194,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'apkVersion'),(2,1,'apkURL'),(3,1,'apkInfo'),(4,1,'packageName'),(5,1,'apkSoftID'),(6,1,'apkTitle'),(7,1,'iconURL'),(8,1,'apkSize'),(9,1,'imageURL'),(10,60,'game'),(11,60,'fromtype'),(12,61,'game'),(13,61,'fromtype'),(14,71,'popurl'),(15,71,'poptitle'),(16,74,'id'),(17,74,'from_alert'),(18,74,'detail_flag'),(19,86,'title'),(20,86,'btn_txt'),(21,87,'popurl'),(22,86,'need_adb_flag'),(23,87,'poptitle'),(24,86,'cont'),(25,86,'close_flag'),(26,97,'title'),(27,97,'btn_txt'),(28,97,'need_adb_flag'),(29,97,'cont'),(30,97,'close_flag'),(31,109,'id'),(32,109,'from_alert'),(33,109,'detail_flag'),(34,128,'popurl'),(35,128,'poptitle'),(36,129,'game'),(37,129,'fromtype'),(38,131,'id'),(39,131,'from_alert'),(40,131,'detail_flag'),(41,172,'apkVersion'),(42,172,'apkURL'),(43,172,'apkInfo'),(44,172,'packageName'),(45,172,'apkSoftID'),(46,172,'apkTitle'),(47,172,'iconURL'),(48,172,'apkSize'),(49,172,'imageURL');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,5,2),(3,6,2),(4,7,2),(5,8,2),(6,9,2),(7,10,2),(8,11,3),(9,12,2),(10,13,2),(11,15,2),(12,16,2),(13,17,4),(14,17,3),(15,18,2),(16,19,2),(17,20,4),(18,20,3),(19,21,5),(20,21,7),(21,21,6),(22,23,2),(23,24,3),(24,26,2),(25,27,2),(26,28,2),(27,29,2),(28,30,2),(29,31,4),(30,31,3),(31,32,8),(32,33,3),(33,34,3),(34,35,8),(35,36,12),(36,38,2),(37,39,12),(38,40,14),(39,41,3),(40,41,8),(41,42,14),(42,43,12),(43,44,3),(44,45,8),(45,46,3),(46,46,8),(47,47,14),(48,48,8),(49,48,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,3),(4,6,3),(5,7,3),(6,16,3),(7,18,3),(8,19,3),(9,23,3),(10,26,3),(11,30,3),(12,36,5),(13,38,3),(14,39,5),(15,40,5),(16,42,5),(17,43,5),(18,47,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,1,'hangame-s-powa','',NULL,NULL,NULL,NULL),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,39,'package',NULL,NULL,NULL,NULL,NULL),(4,40,'package',NULL,NULL,NULL,NULL,NULL),(5,42,'package',NULL,NULL,NULL,NULL,NULL),(6,43,'package',NULL,NULL,NULL,NULL,NULL),(7,47,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'(.*)','(.*)'),(2,9,'application','vnd.android.package-archive'),(3,23,'application','vnd.android.package-archive'),(4,47,'application','vnd.android.package-archive'),(5,48,'application','vnd.android.package-archive'),(6,49,'application','vnd.android.package-archive'),(7,50,'application','vnd.android.package-archive'),(8,55,'(.*)','(.*)'),(9,64,'application','vnd.android.package-archive'),(10,66,'application','vnd.android.package-archive'),(11,82,'application','vnd.android.package-archive'),(12,83,'application','vnd.android.package-archive'),(13,84,'application','vnd.android.package-archive'),(14,85,'application','vnd.android.package-archive'),(15,92,'application','vnd.android.package-archive'),(16,95,'application','vnd.android.package-archive'),(17,132,'application','vnd.android.package-archive'),(18,136,'(.*)','(.*)'),(19,137,'(.*)','(.*)'),(20,142,'(.*)','(.*)'),(21,143,'(.*)','(.*)'),(22,146,'(.*)','(.*)'),(23,156,'(.*)','(.*)'),(24,157,'(.*)','(.*)'),(25,168,'(.*)','(.*)'),(26,181,'application','vnd.android.package-archive'),(27,194,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ho.ti.enkubrv.r_qrcd'),(2,2,'ho.ti.enkubrv.r_qrcd'),(3,3,'ho.ti.enkubrv.r_qrcd'),(4,4,'cross.vdiud.ifcrfdmbhckjq'),(5,5,'ho.ti.enkubrv.r_qrcd'),(6,7,'ho.ti.enkubrv.r_qrcd'),(7,11,'cross.vdiud.ifcrfdmbhckjq'),(8,12,'ho.ti.enkubrv.r_qrcd'),(9,13,'(.*)'),(10,15,'ho.ti.enkubrv.r_qrcd'),(11,16,''),(12,17,'cross.vdiud.ifcrfdmbhckjq'),(13,18,''),(14,19,'(.*)'),(15,20,'(.*)'),(16,21,'(.*)'),(17,22,'lfboq.mbswp'),(18,24,'lfboq.mbswp'),(19,25,'ho.ti.enkubrv.r_qrcd'),(20,26,'(.*)'),(21,27,'lfboq.mbswp'),(22,28,'(.*)'),(23,29,'(.*)'),(24,30,'ho.ti.enkubrv.r_qrcd'),(25,31,'(.*)'),(26,32,'lfboq.mbswp'),(27,33,'(.*)'),(28,34,''),(29,35,'pmepljfcdkl.dfwk'),(30,36,''),(31,37,'pmepljfcdkl.dfwk'),(32,38,'(.*)'),(33,39,'pmepljfcdkl.dfwk'),(34,40,'lfboq.mbswp'),(35,41,'lfboq.mbswp'),(36,42,'pmepljfcdkl.dfwk'),(37,43,'lfboq.mbswp'),(38,44,'pmepljfcdkl.dfwk'),(39,46,'lfboq.mbswp'),(40,52,'pmepljfcdkl.dfwk'),(41,54,'(.*)'),(42,56,''),(43,57,''),(44,59,'lfboq.mbswp'),(45,58,'(.*)'),(46,60,'lfboq.mbswp'),(47,61,'pmepljfcdkl.dfwk'),(48,62,'(.*)'),(49,63,''),(50,65,''),(51,67,'(.*)'),(52,69,'lfboq.mbswp'),(53,71,'pmepljfcdkl.dfwk'),(54,72,'(.*)'),(55,73,''),(56,74,'pmepljfcdkl.dfwk'),(57,75,''),(58,76,'(.*)'),(59,79,'pmepljfcdkl.dfwk'),(60,81,'pmepljfcdkl.dfwk'),(61,80,'lfboq.mbswp'),(62,87,'lfboq.mbswp'),(63,86,'pmepljfcdkl.dfwk'),(64,88,'com.ovruuvjrdogg.rdppccdus'),(65,89,'pmepljfcdkl.dfwk'),(66,90,'(.*)'),(67,91,'(.*)'),(68,93,'(.*)'),(69,94,'(.*)'),(70,99,'(.*)'),(71,97,'lfboq.mbswp'),(72,101,''),(73,102,''),(74,105,'com.ovruuvjrdogg.rdppccdus'),(75,104,'(.*)'),(76,107,'(.*)'),(77,108,'(.*)'),(78,109,'lfboq.mbswp'),(79,110,'(.*)'),(80,111,''),(81,112,''),(82,113,'(.*)'),(83,114,'com.ovruuvjrdogg.rdppccdus'),(84,115,'lfboq.mbswp'),(85,116,'pmepljfcdkl.dfwk'),(86,117,'(.*)'),(87,118,'pmepljfcdkl.dfwk'),(88,119,''),(89,120,''),(90,121,'(.*)'),(91,122,'com.ovruuvjrdogg.rdppccdus'),(92,123,'com.ovruuvjrdogg.rdppccdus'),(93,124,'(.*)'),(94,125,''),(95,126,''),(96,127,'(.*)'),(97,128,'com.ovruuvjrdogg.rdppccdus'),(98,129,'com.ovruuvjrdogg.rdppccdus'),(99,130,'com.nvld.hhnw.pdj.cqif'),(100,131,'com.ovruuvjrdogg.rdppccdus'),(101,133,'com.ovruuvjrdogg.rdppccdus'),(102,138,'com.ovruuvjrdogg.rdppccdus'),(103,139,'com.ovruuvjrdogg.rdppccdus'),(104,144,'com.ovruuvjrdogg.rdppccdus'),(105,148,'com.ovruuvjrdogg.rdppccdus'),(106,149,'(.*)'),(107,150,''),(108,151,''),(109,152,'(.*)'),(110,153,'com.ovruuvjrdogg.rdppccdus'),(111,158,'com.ovruuvjrdogg.rdppccdus'),(112,159,'(.*)'),(113,160,''),(114,161,''),(115,162,'(.*)'),(116,163,'com.igkvtkla.ksbcpm'),(117,165,'com.igkvtkla.ksbcpm'),(118,166,'com.igkvtkla.ksbcpm'),(119,170,'com.igkvtkla.ksbcpm'),(120,171,'com.igkvtkla.ksbcpm'),(121,172,'com.igkvtkla.ksbcpm'),(122,174,'com.igkvtkla.ksbcpm'),(123,175,'com.igkvtkla.ksbcpm'),(124,176,'com.igkvtkla.ksbcpm'),(125,177,'com.igkvtkla.ksbcpm'),(126,178,'com.igkvtkla.ksbcpm'),(127,184,'com.igkvtkla.ksbcpm'),(128,185,'com.igkvtkla.ksbcpm'),(129,186,'com.igkvtkla.ksbcpm'),(130,187,'com.igkvtkla.ksbcpm'),(131,188,'com.igkvtkla.ksbcpm'),(132,189,'com.igkvtkla.ksbcpm'),(133,190,'com.igkvtkla.ksbcpm'),(134,192,'(.*)'),(135,193,'(.*)'),(136,195,'com.igkvtkla.ksbcpm'),(137,196,'(.*)'),(138,197,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,5,0),(5,4,0),(6,3,0),(7,8,0),(8,13,0),(9,18,0),(10,19,0),(11,20,0),(12,21,0),(13,22,0),(14,23,0),(15,25,0),(16,26,0),(17,32,0),(18,33,0),(19,34,0),(20,36,0),(21,37,0),(22,38,0),(23,53,0),(24,59,0),(25,60,0),(26,62,0),(27,64,0),(28,65,0),(29,66,0),(30,69,0),(31,70,0),(32,71,0),(33,72,0),(34,73,0),(35,74,0),(36,36,0),(37,75,0),(38,77,0),(39,32,0),(40,36,0),(41,78,0),(42,32,0),(43,70,0),(44,79,0),(45,80,0),(46,81,0),(47,70,0),(48,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,0,0),(4,7,0,0),(5,8,0,0),(6,9,1,0),(7,10,0,0),(8,9,1,0),(9,11,1,0),(10,12,1,0),(11,13,0,0),(12,14,0,0),(13,15,1,0),(14,16,1,0),(15,17,0,0),(16,15,1,0),(17,18,0,0),(18,15,1,0),(19,19,1,0),(20,15,1,0),(21,19,1,0),(22,20,0,0),(23,21,1,0),(24,22,0,0),(25,23,0,0),(26,24,1,0),(27,25,0,0),(28,24,1,0),(29,26,1,0),(30,27,0,0),(31,26,1,0),(32,28,0,0),(33,29,1,0),(34,29,1,0),(35,30,0,0),(36,29,1,0),(37,31,0,0),(38,29,1,0),(39,32,0,0),(40,33,0,0),(41,34,0,0),(42,35,0,0),(43,36,0,0),(44,37,0,0),(45,38,1,0),(46,39,0,0),(47,40,1,0),(48,41,1,0),(49,40,1,0),(50,41,1,0),(51,42,1,0),(52,43,0,0),(53,42,1,0),(54,44,1,0),(55,42,1,0),(56,44,1,0),(57,44,1,0),(58,44,1,0),(59,45,0,0),(60,46,0,0),(61,47,0,0),(62,48,1,0),(63,48,1,0),(64,49,1,0),(65,48,1,0),(66,49,1,0),(67,48,1,0),(68,50,1,0),(69,51,0,0),(70,50,1,0),(71,52,0,0),(72,53,1,0),(73,53,1,0),(74,54,0,0),(75,53,1,0),(76,53,1,0),(77,55,1,0),(78,56,1,0),(79,57,0,0),(80,58,0,0),(81,59,0,0),(82,60,1,0),(83,61,1,0),(84,60,1,0),(85,61,1,0),(86,62,0,0),(87,63,0,0),(88,64,0,0),(89,65,0,0),(90,66,1,0),(91,67,1,0),(92,68,1,0),(93,66,1,0),(94,67,1,0),(95,68,1,0),(96,69,1,0),(97,71,0,0),(98,70,1,0),(99,72,1,0),(100,70,1,0),(101,72,1,0),(102,72,1,0),(103,73,1,0),(104,72,1,0),(105,74,0,0),(106,73,1,0),(107,75,1,0),(108,76,1,0),(109,77,0,0),(110,75,1,0),(111,76,1,0),(112,76,1,0),(113,76,1,0),(114,78,0,0),(115,79,0,0),(116,80,0,0),(117,81,1,0),(118,82,0,0),(119,81,1,0),(120,81,1,0),(121,81,1,0),(122,83,0,0),(123,84,0,0),(124,85,1,0),(125,85,1,0),(126,85,1,0),(127,85,1,0),(128,86,0,0),(129,87,0,0),(130,88,0,0),(131,89,0,0),(132,90,1,0),(133,91,0,0),(134,92,1,0),(135,92,1,0),(136,92,1,0),(137,92,1,0),(138,93,0,0),(139,94,0,0),(140,95,1,0),(141,95,1,0),(142,95,1,0),(143,95,1,0),(144,96,0,0),(145,97,1,0),(146,97,1,0),(147,97,1,0),(148,98,0,0),(149,99,1,0),(150,99,1,0),(151,99,1,0),(152,99,1,0),(153,100,0,0),(154,101,1,0),(155,101,1,0),(156,101,1,0),(157,101,1,0),(158,102,0,0),(159,103,1,0),(160,103,1,0),(161,103,1,0),(162,103,1,0),(163,104,0,0),(164,105,1,0),(165,106,0,0),(166,107,0,0),(167,108,1,0),(168,108,1,0),(169,108,1,0),(170,109,0,0),(171,110,0,0),(172,111,0,0),(173,112,1,0),(174,113,0,0),(175,114,0,0),(176,115,0,0),(177,116,0,0),(178,117,0,0),(179,119,1,0),(180,120,1,0),(181,121,1,0),(182,122,1,0),(183,123,1,0),(184,124,0,0),(185,127,0,0),(186,128,0,0),(187,129,0,0),(188,133,0,0),(189,134,0,0),(190,135,0,0),(191,137,1,0),(192,138,1,0),(193,138,1,0),(194,140,1,0),(195,141,0,0),(196,142,1,0),(197,142,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CALL_PHONE'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(13,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(14,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://androida.me',NULL,NULL,NULL),(5,NULL,NULL,'http://androida.me',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'market://details?id=com.roidgame.unblocklego',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'market://details?id=com.roidgame.cuberunner',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=com.roidgame.spiderboy1',NULL,NULL,NULL),(53,NULL,NULL,'market://details?id=com.roidgame.sketchmet',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=com.roidgame.SaveBirds',NULL,NULL,NULL),(55,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,139,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,1,5),(7,2,2),(8,1,6),(9,2,4),(10,1,7),(11,2,5),(12,1,8),(13,2,6),(14,1,9),(15,2,7),(16,3,1),(17,2,9),(18,3,2),(19,2,10),(20,3,4),(21,2,11),(22,3,5),(23,2,12),(24,3,6),(25,3,9),(26,3,10),(27,3,12),(28,3,13),(29,4,1),(30,4,5),(31,4,6),(32,4,7),(33,4,9),(34,4,14),(35,5,1),(36,5,2),(37,5,3),(38,5,4),(39,5,5),(40,5,6),(41,5,9),(42,6,1),(43,6,2),(44,6,4),(45,6,5),(46,6,6),(47,6,7),(48,6,9),(49,6,10),(50,6,12),(51,6,15),(52,7,16),(53,7,1),(54,7,5),(55,7,6),(56,7,7),(57,7,8),(58,7,9),(59,7,11),(60,7,15);
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

-- Dump completed on 2015-10-09  0:39:39
