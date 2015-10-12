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
) ENGINE=InnoDB AUTO_INCREMENT=1680 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,19,5,2,NULL),(2,21,5,2,NULL),(3,26,5,2,NULL),(4,28,5,2,NULL),(5,91,5,2,NULL),(6,94,5,2,NULL),(7,68,5,2,NULL),(8,70,5,2,NULL),(9,77,5,2,NULL),(10,51,5,2,NULL),(11,53,5,2,NULL),(12,29,5,2,NULL),(13,31,5,2,NULL),(14,13,5,2,NULL),(15,16,5,2,NULL),(16,18,5,2,NULL),(17,20,5,2,NULL),(18,45,5,2,NULL),(19,103,5,2,NULL),(20,106,5,2,NULL),(21,78,5,2,NULL),(22,167,5,2,NULL),(23,169,5,2,NULL),(24,192,5,2,NULL),(25,193,5,2,NULL),(26,196,5,2,NULL),(27,197,5,2,NULL),(28,145,5,2,NULL),(29,147,5,2,NULL),(30,107,5,2,NULL),(31,110,5,2,NULL),(32,90,5,2,NULL),(33,93,5,2,NULL),(34,124,5,2,NULL),(35,125,5,2,NULL),(36,126,5,2,NULL),(37,127,5,2,NULL),(38,98,5,2,NULL),(39,100,5,2,NULL),(40,96,5,2,NULL),(41,51,1,2,NULL),(42,53,1,2,NULL),(43,51,4,2,NULL),(44,53,4,2,NULL),(45,51,20,2,NULL),(46,53,20,2,NULL),(47,51,2,2,NULL),(48,53,2,2,NULL),(49,51,3,2,NULL),(50,53,3,2,NULL),(51,51,13,2,NULL),(52,53,13,2,NULL),(53,51,18,2,NULL),(54,53,18,2,NULL),(55,51,21,2,NULL),(56,53,21,2,NULL),(57,51,26,2,NULL),(58,53,26,2,NULL),(59,51,32,2,NULL),(60,53,32,2,NULL),(61,51,73,2,NULL),(62,53,73,2,NULL),(63,51,74,2,NULL),(64,53,74,2,NULL),(65,51,8,2,NULL),(66,53,8,2,NULL),(67,51,19,2,NULL),(68,53,19,2,NULL),(69,51,22,2,NULL),(70,53,22,2,NULL),(71,51,25,2,NULL),(72,53,25,2,NULL),(73,51,34,2,NULL),(74,53,34,2,NULL),(75,51,36,2,NULL),(76,53,36,2,NULL),(77,51,71,2,NULL),(78,53,71,2,NULL),(79,51,72,2,NULL),(80,53,72,2,NULL),(81,51,78,2,NULL),(82,53,78,2,NULL),(83,51,23,2,NULL),(84,53,23,2,NULL),(85,51,33,2,NULL),(86,53,33,2,NULL),(87,51,37,2,NULL),(88,53,37,2,NULL),(89,51,38,2,NULL),(90,53,38,2,NULL),(91,51,53,2,NULL),(92,53,53,2,NULL),(93,51,59,2,NULL),(94,53,59,2,NULL),(95,51,82,2,NULL),(96,53,82,2,NULL),(97,51,60,2,NULL),(98,53,60,2,NULL),(99,51,62,2,NULL),(100,53,62,2,NULL),(101,51,64,2,NULL),(102,53,64,2,NULL),(103,51,65,2,NULL),(104,53,65,2,NULL),(105,51,66,2,NULL),(106,53,66,2,NULL),(107,51,69,2,NULL),(108,53,69,2,NULL),(109,51,70,2,NULL),(110,53,70,2,NULL),(111,51,79,2,NULL),(112,53,79,2,NULL),(113,51,80,2,NULL),(114,53,80,2,NULL),(115,51,81,2,NULL),(116,53,81,2,NULL),(117,51,75,2,NULL),(118,53,75,2,NULL),(119,51,77,2,NULL),(120,53,77,2,NULL),(121,22,34,2,NULL),(122,40,34,2,NULL),(123,19,8,2,NULL),(124,21,8,2,NULL),(125,26,8,2,NULL),(126,28,8,2,NULL),(127,91,8,2,NULL),(128,94,8,2,NULL),(129,68,8,2,NULL),(130,70,8,2,NULL),(131,77,8,2,NULL),(132,29,8,2,NULL),(133,31,8,2,NULL),(134,13,8,2,NULL),(135,16,8,2,NULL),(136,18,8,2,NULL),(137,20,8,2,NULL),(138,45,8,2,NULL),(139,103,8,2,NULL),(140,106,8,2,NULL),(141,78,8,2,NULL),(142,167,8,2,NULL),(143,169,8,2,NULL),(144,192,8,2,NULL),(145,193,8,2,NULL),(146,196,8,2,NULL),(147,197,8,2,NULL),(148,145,8,2,NULL),(149,147,8,2,NULL),(150,107,8,2,NULL),(151,110,8,2,NULL),(152,90,8,2,NULL),(153,93,8,2,NULL),(154,124,8,2,NULL),(155,125,8,2,NULL),(156,126,8,2,NULL),(157,127,8,2,NULL),(158,98,8,2,NULL),(159,100,8,2,NULL),(160,96,8,2,NULL),(161,32,5,2,NULL),(162,24,34,2,NULL),(163,43,34,2,NULL),(164,19,19,2,NULL),(165,21,19,2,NULL),(166,26,19,2,NULL),(167,28,19,2,NULL),(168,91,19,2,NULL),(169,94,19,2,NULL),(170,68,19,2,NULL),(171,70,19,2,NULL),(172,77,19,2,NULL),(173,29,19,2,NULL),(174,31,19,2,NULL),(175,13,19,2,NULL),(176,16,19,2,NULL),(177,18,19,2,NULL),(178,20,19,2,NULL),(179,45,19,2,NULL),(180,103,19,2,NULL),(181,106,19,2,NULL),(182,78,19,2,NULL),(183,167,19,2,NULL),(184,169,19,2,NULL),(185,192,19,2,NULL),(186,193,19,2,NULL),(187,196,19,2,NULL),(188,197,19,2,NULL),(189,145,19,2,NULL),(190,147,19,2,NULL),(191,107,19,2,NULL),(192,110,19,2,NULL),(193,90,19,2,NULL),(194,93,19,2,NULL),(195,124,19,2,NULL),(196,125,19,2,NULL),(197,126,19,2,NULL),(198,127,19,2,NULL),(199,98,19,2,NULL),(200,100,19,2,NULL),(201,96,19,2,NULL),(202,60,19,2,NULL),(203,29,1,2,NULL),(204,31,1,2,NULL),(205,29,4,2,NULL),(206,31,4,2,NULL),(207,19,22,2,NULL),(208,21,22,2,NULL),(209,26,22,2,NULL),(210,28,22,2,NULL),(211,29,20,2,NULL),(212,31,20,2,NULL),(213,29,2,2,NULL),(214,31,2,2,NULL),(215,29,3,2,NULL),(216,31,3,2,NULL),(217,29,13,2,NULL),(218,31,13,2,NULL),(219,29,18,2,NULL),(220,31,18,2,NULL),(221,91,22,2,NULL),(222,94,22,2,NULL),(223,29,21,2,NULL),(224,31,21,2,NULL),(225,68,22,2,NULL),(226,70,22,2,NULL),(227,77,22,2,NULL),(228,29,26,2,NULL),(229,31,26,2,NULL),(230,29,32,2,NULL),(231,31,32,2,NULL),(232,29,73,2,NULL),(233,31,73,2,NULL),(234,29,74,2,NULL),(235,31,74,2,NULL),(236,29,25,2,NULL),(237,31,25,2,NULL),(238,13,22,2,NULL),(239,16,22,2,NULL),(240,18,22,2,NULL),(241,20,22,2,NULL),(242,45,22,2,NULL),(243,103,22,2,NULL),(244,106,22,2,NULL),(245,78,22,2,NULL),(246,29,34,2,NULL),(247,31,34,2,NULL),(248,29,36,2,NULL),(249,31,36,2,NULL),(250,29,71,2,NULL),(251,31,71,2,NULL),(252,29,72,2,NULL),(253,31,72,2,NULL),(254,29,78,2,NULL),(255,31,78,2,NULL),(256,29,23,2,NULL),(257,31,23,2,NULL),(258,29,33,2,NULL),(259,31,33,2,NULL),(260,29,37,2,NULL),(261,31,37,2,NULL),(262,29,38,2,NULL),(263,31,38,2,NULL),(264,167,22,2,NULL),(265,169,22,2,NULL),(266,29,53,2,NULL),(267,31,53,2,NULL),(268,192,22,2,NULL),(269,193,22,2,NULL),(270,196,22,2,NULL),(271,197,22,2,NULL),(272,29,59,2,NULL),(273,31,59,2,NULL),(274,29,82,2,NULL),(275,31,82,2,NULL),(276,29,60,2,NULL),(277,31,60,2,NULL),(278,145,22,2,NULL),(279,147,22,2,NULL),(280,29,62,2,NULL),(281,31,62,2,NULL),(282,29,64,2,NULL),(283,31,64,2,NULL),(284,107,22,2,NULL),(285,110,22,2,NULL),(286,29,65,2,NULL),(287,31,65,2,NULL),(288,90,22,2,NULL),(289,93,22,2,NULL),(290,29,66,2,NULL),(291,31,66,2,NULL),(292,124,22,2,NULL),(293,125,22,2,NULL),(294,126,22,2,NULL),(295,127,22,2,NULL),(296,98,22,2,NULL),(297,100,22,2,NULL),(298,96,22,2,NULL),(299,29,69,2,NULL),(300,31,69,2,NULL),(301,29,70,2,NULL),(302,31,70,2,NULL),(303,29,79,2,NULL),(304,31,79,2,NULL),(305,29,80,2,NULL),(306,31,80,2,NULL),(307,29,81,2,NULL),(308,31,81,2,NULL),(309,29,75,2,NULL),(310,31,75,2,NULL),(311,29,77,2,NULL),(312,31,77,2,NULL),(313,69,34,2,NULL),(314,13,1,2,NULL),(315,16,1,2,NULL),(316,18,1,2,NULL),(317,20,1,2,NULL),(318,13,4,2,NULL),(319,16,4,2,NULL),(320,18,4,2,NULL),(321,20,4,2,NULL),(322,19,25,2,NULL),(323,21,25,2,NULL),(324,26,25,2,NULL),(325,28,25,2,NULL),(326,13,20,2,NULL),(327,16,20,2,NULL),(328,18,20,2,NULL),(329,20,20,2,NULL),(330,13,2,2,NULL),(331,16,2,2,NULL),(332,18,2,2,NULL),(333,20,2,2,NULL),(334,13,3,2,NULL),(335,16,3,2,NULL),(336,18,3,2,NULL),(337,20,3,2,NULL),(338,13,13,2,NULL),(339,16,13,2,NULL),(340,18,13,2,NULL),(341,20,13,2,NULL),(342,13,18,2,NULL),(343,16,18,2,NULL),(344,18,18,2,NULL),(345,20,18,2,NULL),(346,91,25,2,NULL),(347,94,25,2,NULL),(348,13,21,2,NULL),(349,16,21,2,NULL),(350,18,21,2,NULL),(351,20,21,2,NULL),(352,68,25,2,NULL),(353,70,25,2,NULL),(354,77,25,2,NULL),(355,13,26,2,NULL),(356,16,26,2,NULL),(357,18,26,2,NULL),(358,20,26,2,NULL),(359,13,32,2,NULL),(360,16,32,2,NULL),(361,18,32,2,NULL),(362,20,32,2,NULL),(363,13,73,2,NULL),(364,16,73,2,NULL),(365,18,73,2,NULL),(366,20,73,2,NULL),(367,13,74,2,NULL),(368,16,74,2,NULL),(369,18,74,2,NULL),(370,20,74,2,NULL),(371,45,25,2,NULL),(372,103,25,2,NULL),(373,106,25,2,NULL),(374,78,25,2,NULL),(375,13,34,2,NULL),(376,16,34,2,NULL),(377,18,34,2,NULL),(378,20,34,2,NULL),(379,13,36,2,NULL),(380,16,36,2,NULL),(381,18,36,2,NULL),(382,20,36,2,NULL),(383,13,71,2,NULL),(384,16,71,2,NULL),(385,18,71,2,NULL),(386,20,71,2,NULL),(387,13,72,2,NULL),(388,16,72,2,NULL),(389,18,72,2,NULL),(390,20,72,2,NULL),(391,13,78,2,NULL),(392,16,78,2,NULL),(393,18,78,2,NULL),(394,20,78,2,NULL),(395,13,23,2,NULL),(396,16,23,2,NULL),(397,18,23,2,NULL),(398,20,23,2,NULL),(399,13,33,2,NULL),(400,16,33,2,NULL),(401,18,33,2,NULL),(402,20,33,2,NULL),(403,13,37,2,NULL),(404,16,37,2,NULL),(405,18,37,2,NULL),(406,20,37,2,NULL),(407,13,38,2,NULL),(408,16,38,2,NULL),(409,18,38,2,NULL),(410,20,38,2,NULL),(411,167,25,2,NULL),(412,169,25,2,NULL),(413,13,53,2,NULL),(414,16,53,2,NULL),(415,18,53,2,NULL),(416,20,53,2,NULL),(417,192,25,2,NULL),(418,193,25,2,NULL),(419,196,25,2,NULL),(420,197,25,2,NULL),(421,13,59,2,NULL),(422,16,59,2,NULL),(423,18,59,2,NULL),(424,20,59,2,NULL),(425,13,82,2,NULL),(426,16,82,2,NULL),(427,18,82,2,NULL),(428,20,82,2,NULL),(429,13,60,2,NULL),(430,16,60,2,NULL),(431,18,60,2,NULL),(432,20,60,2,NULL),(433,145,25,2,NULL),(434,147,25,2,NULL),(435,13,62,2,NULL),(436,16,62,2,NULL),(437,18,62,2,NULL),(438,20,62,2,NULL),(439,13,64,2,NULL),(440,16,64,2,NULL),(441,18,64,2,NULL),(442,20,64,2,NULL),(443,107,25,2,NULL),(444,110,25,2,NULL),(445,13,65,2,NULL),(446,16,65,2,NULL),(447,18,65,2,NULL),(448,20,65,2,NULL),(449,90,25,2,NULL),(450,93,25,2,NULL),(451,13,66,2,NULL),(452,16,66,2,NULL),(453,18,66,2,NULL),(454,20,66,2,NULL),(455,124,25,2,NULL),(456,125,25,2,NULL),(457,126,25,2,NULL),(458,127,25,2,NULL),(459,98,25,2,NULL),(460,100,25,2,NULL),(461,96,25,2,NULL),(462,13,69,2,NULL),(463,16,69,2,NULL),(464,18,69,2,NULL),(465,20,69,2,NULL),(466,13,70,2,NULL),(467,16,70,2,NULL),(468,18,70,2,NULL),(469,20,70,2,NULL),(470,13,79,2,NULL),(471,16,79,2,NULL),(472,18,79,2,NULL),(473,20,79,2,NULL),(474,13,80,2,NULL),(475,16,80,2,NULL),(476,18,80,2,NULL),(477,20,80,2,NULL),(478,13,81,2,NULL),(479,16,81,2,NULL),(480,18,81,2,NULL),(481,20,81,2,NULL),(482,13,75,2,NULL),(483,16,75,2,NULL),(484,18,75,2,NULL),(485,20,75,2,NULL),(486,13,77,2,NULL),(487,16,77,2,NULL),(488,18,77,2,NULL),(489,20,77,2,NULL),(490,97,29,2,NULL),(491,109,19,2,NULL),(492,45,1,2,NULL),(493,103,1,2,NULL),(494,106,1,2,NULL),(495,45,4,2,NULL),(496,103,4,2,NULL),(497,106,4,2,NULL),(498,45,20,2,NULL),(499,103,20,2,NULL),(500,106,20,2,NULL),(501,45,2,2,NULL),(502,103,2,2,NULL),(503,106,2,2,NULL),(504,45,3,2,NULL),(505,103,3,2,NULL),(506,106,3,2,NULL),(507,45,13,2,NULL),(508,103,13,2,NULL),(509,106,13,2,NULL),(510,45,18,2,NULL),(511,103,18,2,NULL),(512,106,18,2,NULL),(513,45,21,2,NULL),(514,103,21,2,NULL),(515,106,21,2,NULL),(516,45,26,2,NULL),(517,103,26,2,NULL),(518,106,26,2,NULL),(519,45,32,2,NULL),(520,103,32,2,NULL),(521,106,32,2,NULL),(522,45,73,2,NULL),(523,103,73,2,NULL),(524,106,73,2,NULL),(525,45,74,2,NULL),(526,103,74,2,NULL),(527,106,74,2,NULL),(528,45,34,2,NULL),(529,103,34,2,NULL),(530,106,34,2,NULL),(531,45,36,2,NULL),(532,103,36,2,NULL),(533,106,36,2,NULL),(534,45,71,2,NULL),(535,103,71,2,NULL),(536,106,71,2,NULL),(537,45,72,2,NULL),(538,103,72,2,NULL),(539,106,72,2,NULL),(540,45,78,2,NULL),(541,103,78,2,NULL),(542,106,78,2,NULL),(543,45,23,2,NULL),(544,103,23,2,NULL),(545,106,23,2,NULL),(546,45,33,2,NULL),(547,103,33,2,NULL),(548,106,33,2,NULL),(549,45,37,2,NULL),(550,103,37,2,NULL),(551,106,37,2,NULL),(552,45,38,2,NULL),(553,103,38,2,NULL),(554,106,38,2,NULL),(555,45,53,2,NULL),(556,103,53,2,NULL),(557,106,53,2,NULL),(558,45,59,2,NULL),(559,103,59,2,NULL),(560,106,59,2,NULL),(561,45,82,2,NULL),(562,103,82,2,NULL),(563,106,82,2,NULL),(564,45,60,2,NULL),(565,103,60,2,NULL),(566,106,60,2,NULL),(567,45,62,2,NULL),(568,103,62,2,NULL),(569,106,62,2,NULL),(570,45,64,2,NULL),(571,103,64,2,NULL),(572,106,64,2,NULL),(573,45,65,2,NULL),(574,103,65,2,NULL),(575,106,65,2,NULL),(576,45,66,2,NULL),(577,103,66,2,NULL),(578,106,66,2,NULL),(579,45,69,2,NULL),(580,103,69,2,NULL),(581,106,69,2,NULL),(582,45,70,2,NULL),(583,103,70,2,NULL),(584,106,70,2,NULL),(585,45,79,2,NULL),(586,103,79,2,NULL),(587,106,79,2,NULL),(588,45,80,2,NULL),(589,103,80,2,NULL),(590,106,80,2,NULL),(591,45,81,2,NULL),(592,103,81,2,NULL),(593,106,81,2,NULL),(594,45,75,2,NULL),(595,103,75,2,NULL),(596,106,75,2,NULL),(597,45,77,2,NULL),(598,103,77,2,NULL),(599,106,77,2,NULL),(600,27,34,2,NULL),(601,78,1,2,NULL),(602,78,4,2,NULL),(603,78,20,2,NULL),(604,78,2,2,NULL),(605,78,3,2,NULL),(606,78,13,2,NULL),(607,78,18,2,NULL),(608,78,21,2,NULL),(609,78,26,2,NULL),(610,78,32,2,NULL),(611,78,73,2,NULL),(612,78,74,2,NULL),(613,78,34,2,NULL),(614,78,36,2,NULL),(615,78,71,2,NULL),(616,78,72,2,NULL),(617,78,78,2,NULL),(618,78,23,2,NULL),(619,78,33,2,NULL),(620,78,37,2,NULL),(621,78,38,2,NULL),(622,78,53,2,NULL),(623,78,59,2,NULL),(624,78,82,2,NULL),(625,78,60,2,NULL),(626,78,62,2,NULL),(627,78,64,2,NULL),(628,78,65,2,NULL),(629,78,66,2,NULL),(630,78,69,2,NULL),(631,78,70,2,NULL),(632,78,79,2,NULL),(633,78,80,2,NULL),(634,78,81,2,NULL),(635,78,75,2,NULL),(636,78,77,2,NULL),(637,19,34,2,NULL),(638,21,34,2,NULL),(639,26,34,2,NULL),(640,28,34,2,NULL),(641,91,34,2,NULL),(642,94,34,2,NULL),(643,68,34,2,NULL),(644,70,34,2,NULL),(645,77,34,2,NULL),(646,167,34,2,NULL),(647,169,34,2,NULL),(648,192,34,2,NULL),(649,193,34,2,NULL),(650,196,34,2,NULL),(651,197,34,2,NULL),(652,145,34,2,NULL),(653,147,34,2,NULL),(654,107,34,2,NULL),(655,110,34,2,NULL),(656,90,34,2,NULL),(657,93,34,2,NULL),(658,124,34,2,NULL),(659,125,34,2,NULL),(660,126,34,2,NULL),(661,127,34,2,NULL),(662,98,34,2,NULL),(663,100,34,2,NULL),(664,96,34,2,NULL),(665,19,60,2,NULL),(666,41,34,2,NULL),(667,21,60,2,NULL),(668,80,34,2,NULL),(669,26,60,2,NULL),(670,115,34,2,NULL),(671,28,60,2,NULL),(672,19,36,2,NULL),(673,91,60,2,NULL),(674,21,36,2,NULL),(675,94,60,2,NULL),(676,26,36,2,NULL),(677,68,60,2,NULL),(678,28,36,2,NULL),(679,70,60,2,NULL),(680,91,36,2,NULL),(681,77,60,2,NULL),(682,94,36,2,NULL),(683,167,60,2,NULL),(684,68,36,2,NULL),(685,169,60,2,NULL),(686,70,36,2,NULL),(687,192,60,2,NULL),(688,77,36,2,NULL),(689,193,60,2,NULL),(690,167,36,2,NULL),(691,196,60,2,NULL),(692,169,36,2,NULL),(693,197,60,2,NULL),(694,192,36,2,NULL),(695,145,60,2,NULL),(696,193,36,2,NULL),(697,147,60,2,NULL),(698,196,36,2,NULL),(699,107,60,2,NULL),(700,197,36,2,NULL),(701,110,60,2,NULL),(702,145,36,2,NULL),(703,90,60,2,NULL),(704,147,36,2,NULL),(705,93,60,2,NULL),(706,107,36,2,NULL),(707,124,60,2,NULL),(708,110,36,2,NULL),(709,125,60,2,NULL),(710,90,36,2,NULL),(711,126,60,2,NULL),(712,93,36,2,NULL),(713,127,60,2,NULL),(714,124,36,2,NULL),(715,98,60,2,NULL),(716,125,36,2,NULL),(717,100,60,2,NULL),(718,126,36,2,NULL),(719,96,60,2,NULL),(720,127,36,2,NULL),(721,145,1,2,NULL),(722,98,36,2,NULL),(723,147,1,2,NULL),(724,100,36,2,NULL),(725,145,4,2,NULL),(726,96,36,2,NULL),(727,147,4,2,NULL),(728,19,71,2,NULL),(729,145,20,2,NULL),(730,21,71,2,NULL),(731,147,20,2,NULL),(732,26,71,2,NULL),(733,145,2,2,NULL),(734,28,71,2,NULL),(735,147,2,2,NULL),(736,91,71,2,NULL),(737,145,3,2,NULL),(738,94,71,2,NULL),(739,147,3,2,NULL),(740,68,71,2,NULL),(741,145,13,2,NULL),(742,70,71,2,NULL),(743,147,13,2,NULL),(744,77,71,2,NULL),(745,145,18,2,NULL),(746,167,71,2,NULL),(747,147,18,2,NULL),(748,169,71,2,NULL),(749,145,21,2,NULL),(750,192,71,2,NULL),(751,147,21,2,NULL),(752,193,71,2,NULL),(753,145,26,2,NULL),(754,196,71,2,NULL),(755,147,26,2,NULL),(756,197,71,2,NULL),(757,145,32,2,NULL),(758,145,71,2,NULL),(759,147,32,2,NULL),(760,147,71,2,NULL),(761,145,73,2,NULL),(762,107,71,2,NULL),(763,147,73,2,NULL),(764,110,71,2,NULL),(765,145,74,2,NULL),(766,90,71,2,NULL),(767,147,74,2,NULL),(768,93,71,2,NULL),(769,145,72,2,NULL),(770,124,71,2,NULL),(771,147,72,2,NULL),(772,125,71,2,NULL),(773,145,78,2,NULL),(774,126,71,2,NULL),(775,147,78,2,NULL),(776,127,71,2,NULL),(777,145,23,2,NULL),(778,98,71,2,NULL),(779,147,23,2,NULL),(780,100,71,2,NULL),(781,145,33,2,NULL),(782,96,71,2,NULL),(783,147,33,2,NULL),(784,19,72,2,NULL),(785,145,37,2,NULL),(786,21,72,2,NULL),(787,147,37,2,NULL),(788,26,72,2,NULL),(789,145,38,2,NULL),(790,28,72,2,NULL),(791,147,38,2,NULL),(792,91,72,2,NULL),(793,145,53,2,NULL),(794,94,72,2,NULL),(795,147,53,2,NULL),(796,68,72,2,NULL),(797,145,59,2,NULL),(798,70,72,2,NULL),(799,147,59,2,NULL),(800,77,72,2,NULL),(801,145,82,2,NULL),(802,167,72,2,NULL),(803,147,82,2,NULL),(804,169,72,2,NULL),(805,145,62,2,NULL),(806,192,72,2,NULL),(807,147,62,2,NULL),(808,193,72,2,NULL),(809,145,64,2,NULL),(810,196,72,2,NULL),(811,147,64,2,NULL),(812,197,72,2,NULL),(813,145,65,2,NULL),(814,107,72,2,NULL),(815,147,65,2,NULL),(816,110,72,2,NULL),(817,145,66,2,NULL),(818,90,72,2,NULL),(819,147,66,2,NULL),(820,93,72,2,NULL),(821,145,69,2,NULL),(822,124,72,2,NULL),(823,147,69,2,NULL),(824,125,72,2,NULL),(825,145,70,2,NULL),(826,126,72,2,NULL),(827,147,70,2,NULL),(828,127,72,2,NULL),(829,145,79,2,NULL),(830,98,72,2,NULL),(831,147,79,2,NULL),(832,100,72,2,NULL),(833,145,80,2,NULL),(834,96,72,2,NULL),(835,147,80,2,NULL),(836,19,78,2,NULL),(837,145,81,2,NULL),(838,21,78,2,NULL),(839,147,81,2,NULL),(840,26,78,2,NULL),(841,145,75,2,NULL),(842,28,78,2,NULL),(843,147,75,2,NULL),(844,91,78,2,NULL),(845,145,77,2,NULL),(846,94,78,2,NULL),(847,147,77,2,NULL),(848,68,78,2,NULL),(849,105,69,2,NULL),(850,70,78,2,NULL),(851,144,69,2,NULL),(852,77,78,2,NULL),(853,19,62,2,NULL),(854,167,78,2,NULL),(855,21,62,2,NULL),(856,169,78,2,NULL),(857,26,62,2,NULL),(858,192,78,2,NULL),(859,28,62,2,NULL),(860,193,78,2,NULL),(861,91,62,2,NULL),(862,196,78,2,NULL),(863,94,62,2,NULL),(864,197,78,2,NULL),(865,68,62,2,NULL),(866,107,78,2,NULL),(867,70,62,2,NULL),(868,110,78,2,NULL),(869,77,62,2,NULL),(870,90,78,2,NULL),(871,167,62,2,NULL),(872,93,78,2,NULL),(873,169,62,2,NULL),(874,124,78,2,NULL),(875,192,62,2,NULL),(876,125,78,2,NULL),(877,193,62,2,NULL),(878,126,78,2,NULL),(879,196,62,2,NULL),(880,127,78,2,NULL),(881,197,62,2,NULL),(882,98,78,2,NULL),(883,107,62,2,NULL),(884,100,78,2,NULL),(885,110,62,2,NULL),(886,96,78,2,NULL),(887,90,62,2,NULL),(888,93,62,2,NULL),(889,124,62,2,NULL),(890,125,62,2,NULL),(891,126,62,2,NULL),(892,127,62,2,NULL),(893,98,62,2,NULL),(894,100,62,2,NULL),(895,96,62,2,NULL),(896,114,60,2,NULL),(897,123,69,2,NULL),(898,148,69,2,NULL),(899,107,1,2,NULL),(900,110,1,2,NULL),(901,107,4,2,NULL),(902,110,4,2,NULL),(903,19,64,2,NULL),(904,21,64,2,NULL),(905,26,64,2,NULL),(906,28,64,2,NULL),(907,107,20,2,NULL),(908,110,20,2,NULL),(909,107,2,2,NULL),(910,110,2,2,NULL),(911,107,3,2,NULL),(912,110,3,2,NULL),(913,107,13,2,NULL),(914,110,13,2,NULL),(915,107,18,2,NULL),(916,110,18,2,NULL),(917,91,64,2,NULL),(918,94,64,2,NULL),(919,107,21,2,NULL),(920,110,21,2,NULL),(921,68,64,2,NULL),(922,70,64,2,NULL),(923,77,64,2,NULL),(924,107,26,2,NULL),(925,110,26,2,NULL),(926,107,32,2,NULL),(927,110,32,2,NULL),(928,107,73,2,NULL),(929,110,73,2,NULL),(930,107,74,2,NULL),(931,110,74,2,NULL),(932,107,23,2,NULL),(933,110,23,2,NULL),(934,107,33,2,NULL),(935,110,33,2,NULL),(936,107,37,2,NULL),(937,110,37,2,NULL),(938,107,38,2,NULL),(939,110,38,2,NULL),(940,167,64,2,NULL),(941,169,64,2,NULL),(942,107,53,2,NULL),(943,110,53,2,NULL),(944,192,64,2,NULL),(945,193,64,2,NULL),(946,196,64,2,NULL),(947,197,64,2,NULL),(948,107,59,2,NULL),(949,110,59,2,NULL),(950,107,82,2,NULL),(951,110,82,2,NULL),(952,107,65,2,NULL),(953,110,65,2,NULL),(954,90,64,2,NULL),(955,93,64,2,NULL),(956,107,66,2,NULL),(957,110,66,2,NULL),(958,124,64,2,NULL),(959,125,64,2,NULL),(960,126,64,2,NULL),(961,127,64,2,NULL),(962,98,64,2,NULL),(963,100,64,2,NULL),(964,96,64,2,NULL),(965,107,69,2,NULL),(966,110,69,2,NULL),(967,107,70,2,NULL),(968,110,70,2,NULL),(969,107,79,2,NULL),(970,110,79,2,NULL),(971,107,80,2,NULL),(972,110,80,2,NULL),(973,107,81,2,NULL),(974,110,81,2,NULL),(975,107,75,2,NULL),(976,110,75,2,NULL),(977,107,77,2,NULL),(978,110,77,2,NULL),(979,129,64,2,NULL),(980,90,1,2,NULL),(981,93,1,2,NULL),(982,90,4,2,NULL),(983,93,4,2,NULL),(984,19,65,2,NULL),(985,21,65,2,NULL),(986,26,65,2,NULL),(987,28,65,2,NULL),(988,90,20,2,NULL),(989,93,20,2,NULL),(990,90,2,2,NULL),(991,93,2,2,NULL),(992,90,3,2,NULL),(993,93,3,2,NULL),(994,90,13,2,NULL),(995,93,13,2,NULL),(996,90,18,2,NULL),(997,93,18,2,NULL),(998,91,65,2,NULL),(999,94,65,2,NULL),(1000,90,21,2,NULL),(1001,93,21,2,NULL),(1002,68,65,2,NULL),(1003,70,65,2,NULL),(1004,77,65,2,NULL),(1005,90,26,2,NULL),(1006,93,26,2,NULL),(1007,90,32,2,NULL),(1008,93,32,2,NULL),(1009,90,73,2,NULL),(1010,93,73,2,NULL),(1011,90,74,2,NULL),(1012,93,74,2,NULL),(1013,90,23,2,NULL),(1014,93,23,2,NULL),(1015,90,33,2,NULL),(1016,93,33,2,NULL),(1017,90,37,2,NULL),(1018,93,37,2,NULL),(1019,90,38,2,NULL),(1020,93,38,2,NULL),(1021,167,65,2,NULL),(1022,169,65,2,NULL),(1023,90,53,2,NULL),(1024,93,53,2,NULL),(1025,192,65,2,NULL),(1026,193,65,2,NULL),(1027,196,65,2,NULL),(1028,197,65,2,NULL),(1029,90,59,2,NULL),(1030,93,59,2,NULL),(1031,90,82,2,NULL),(1032,93,82,2,NULL),(1033,90,66,2,NULL),(1034,93,66,2,NULL),(1035,124,65,2,NULL),(1036,125,65,2,NULL),(1037,126,65,2,NULL),(1038,127,65,2,NULL),(1039,98,65,2,NULL),(1040,100,65,2,NULL),(1041,96,65,2,NULL),(1042,90,69,2,NULL),(1043,93,69,2,NULL),(1044,90,70,2,NULL),(1045,93,70,2,NULL),(1046,90,79,2,NULL),(1047,93,79,2,NULL),(1048,90,80,2,NULL),(1049,93,80,2,NULL),(1050,90,81,2,NULL),(1051,93,81,2,NULL),(1052,90,75,2,NULL),(1053,93,75,2,NULL),(1054,90,77,2,NULL),(1055,93,77,2,NULL),(1056,133,69,2,NULL),(1057,124,1,2,NULL),(1058,125,1,2,NULL),(1059,126,1,2,NULL),(1060,127,1,2,NULL),(1061,124,4,2,NULL),(1062,125,4,2,NULL),(1063,126,4,2,NULL),(1064,127,4,2,NULL),(1065,19,66,2,NULL),(1066,21,66,2,NULL),(1067,26,66,2,NULL),(1068,28,66,2,NULL),(1069,124,20,2,NULL),(1070,125,20,2,NULL),(1071,126,20,2,NULL),(1072,127,20,2,NULL),(1073,124,2,2,NULL),(1074,125,2,2,NULL),(1075,126,2,2,NULL),(1076,127,2,2,NULL),(1077,124,3,2,NULL),(1078,125,3,2,NULL),(1079,126,3,2,NULL),(1080,127,3,2,NULL),(1081,124,13,2,NULL),(1082,125,13,2,NULL),(1083,126,13,2,NULL),(1084,127,13,2,NULL),(1085,124,18,2,NULL),(1086,125,18,2,NULL),(1087,126,18,2,NULL),(1088,127,18,2,NULL),(1089,91,66,2,NULL),(1090,94,66,2,NULL),(1091,124,21,2,NULL),(1092,125,21,2,NULL),(1093,126,21,2,NULL),(1094,127,21,2,NULL),(1095,68,66,2,NULL),(1096,70,66,2,NULL),(1097,77,66,2,NULL),(1098,124,26,2,NULL),(1099,125,26,2,NULL),(1100,126,26,2,NULL),(1101,127,26,2,NULL),(1102,124,32,2,NULL),(1103,125,32,2,NULL),(1104,126,32,2,NULL),(1105,127,32,2,NULL),(1106,124,73,2,NULL),(1107,125,73,2,NULL),(1108,126,73,2,NULL),(1109,127,73,2,NULL),(1110,124,74,2,NULL),(1111,125,74,2,NULL),(1112,126,74,2,NULL),(1113,127,74,2,NULL),(1114,124,23,2,NULL),(1115,125,23,2,NULL),(1116,126,23,2,NULL),(1117,127,23,2,NULL),(1118,124,33,2,NULL),(1119,125,33,2,NULL),(1120,126,33,2,NULL),(1121,127,33,2,NULL),(1122,124,37,2,NULL),(1123,125,37,2,NULL),(1124,126,37,2,NULL),(1125,127,37,2,NULL),(1126,124,38,2,NULL),(1127,125,38,2,NULL),(1128,126,38,2,NULL),(1129,127,38,2,NULL),(1130,167,66,2,NULL),(1131,169,66,2,NULL),(1132,124,53,2,NULL),(1133,125,53,2,NULL),(1134,126,53,2,NULL),(1135,4,27,2,NULL),(1136,127,53,2,NULL),(1137,11,28,2,NULL),(1138,192,66,2,NULL),(1139,19,23,2,NULL),(1140,193,66,2,NULL),(1141,21,23,2,NULL),(1142,196,66,2,NULL),(1143,26,23,2,NULL),(1144,197,66,2,NULL),(1145,28,23,2,NULL),(1146,124,59,2,NULL),(1147,91,23,2,NULL),(1148,125,59,2,NULL),(1149,94,23,2,NULL),(1150,126,59,2,NULL),(1151,68,23,2,NULL),(1152,127,59,2,NULL),(1153,70,23,2,NULL),(1154,124,82,2,NULL),(1155,77,23,2,NULL),(1156,125,82,2,NULL),(1157,167,23,2,NULL),(1158,126,82,2,NULL),(1159,169,23,2,NULL),(1160,127,82,2,NULL),(1161,192,23,2,NULL),(1162,98,66,2,NULL),(1163,193,23,2,NULL),(1164,100,66,2,NULL),(1165,196,23,2,NULL),(1166,96,66,2,NULL),(1167,197,23,2,NULL),(1168,124,69,2,NULL),(1169,98,23,2,NULL),(1170,125,69,2,NULL),(1171,100,23,2,NULL),(1172,126,69,2,NULL),(1173,96,23,2,NULL),(1174,127,69,2,NULL),(1175,17,23,2,NULL),(1176,124,70,2,NULL),(1177,19,33,2,NULL),(1178,125,70,2,NULL),(1179,21,33,2,NULL),(1180,126,70,2,NULL),(1181,26,33,2,NULL),(1182,127,70,2,NULL),(1183,28,33,2,NULL),(1184,124,79,2,NULL),(1185,91,33,2,NULL),(1186,125,79,2,NULL),(1187,94,33,2,NULL),(1188,126,79,2,NULL),(1189,68,33,2,NULL),(1190,127,79,2,NULL),(1191,70,33,2,NULL),(1192,124,80,2,NULL),(1193,77,33,2,NULL),(1194,125,80,2,NULL),(1195,167,33,2,NULL),(1196,126,80,2,NULL),(1197,169,33,2,NULL),(1198,127,80,2,NULL),(1199,192,33,2,NULL),(1200,124,81,2,NULL),(1201,193,33,2,NULL),(1202,125,81,2,NULL),(1203,196,33,2,NULL),(1204,126,81,2,NULL),(1205,197,33,2,NULL),(1206,127,81,2,NULL),(1207,98,33,2,NULL),(1208,124,75,2,NULL),(1209,100,33,2,NULL),(1210,125,75,2,NULL),(1211,96,33,2,NULL),(1212,126,75,2,NULL),(1213,19,37,2,NULL),(1214,127,75,2,NULL),(1215,21,37,2,NULL),(1216,124,77,2,NULL),(1217,26,37,2,NULL),(1218,125,77,2,NULL),(1219,28,37,2,NULL),(1220,126,77,2,NULL),(1221,91,37,2,NULL),(1222,127,77,2,NULL),(1223,94,37,2,NULL),(1224,131,64,2,NULL),(1225,68,37,2,NULL),(1226,98,1,2,NULL),(1227,70,37,2,NULL),(1228,100,1,2,NULL),(1229,77,37,2,NULL),(1230,98,4,2,NULL),(1231,167,37,2,NULL),(1232,100,4,2,NULL),(1233,169,37,2,NULL),(1234,98,20,2,NULL),(1235,192,37,2,NULL),(1236,100,20,2,NULL),(1237,193,37,2,NULL),(1238,98,2,2,NULL),(1239,196,37,2,NULL),(1240,100,2,2,NULL),(1241,197,37,2,NULL),(1242,98,3,2,NULL),(1243,98,37,2,NULL),(1244,100,3,2,NULL),(1245,100,37,2,NULL),(1246,96,37,2,NULL),(1247,98,13,2,NULL),(1248,100,13,2,NULL),(1249,98,18,2,NULL),(1250,100,18,2,NULL),(1251,98,21,2,NULL),(1252,100,21,2,NULL),(1253,98,26,2,NULL),(1254,100,26,2,NULL),(1255,98,32,2,NULL),(1256,100,32,2,NULL),(1257,98,73,2,NULL),(1258,100,73,2,NULL),(1259,98,74,2,NULL),(1260,100,74,2,NULL),(1261,98,38,2,NULL),(1262,100,38,2,NULL),(1263,98,53,2,NULL),(1264,100,53,2,NULL),(1265,98,59,2,NULL),(1266,100,59,2,NULL),(1267,98,82,2,NULL),(1268,100,82,2,NULL),(1269,98,69,2,NULL),(1270,100,69,2,NULL),(1271,98,70,2,NULL),(1272,100,70,2,NULL),(1273,98,79,2,NULL),(1274,100,79,2,NULL),(1275,98,80,2,NULL),(1276,100,80,2,NULL),(1277,98,81,2,NULL),(1278,100,81,2,NULL),(1279,98,75,2,NULL),(1280,100,75,2,NULL),(1281,98,77,2,NULL),(1282,100,77,2,NULL),(1283,153,69,2,NULL),(1284,96,1,2,NULL),(1285,96,4,2,NULL),(1286,96,20,2,NULL),(1287,96,2,2,NULL),(1288,96,3,2,NULL),(1289,96,13,2,NULL),(1290,96,18,2,NULL),(1291,96,21,2,NULL),(1292,96,26,2,NULL),(1293,96,32,2,NULL),(1294,96,73,2,NULL),(1295,96,74,2,NULL),(1296,96,38,2,NULL),(1297,96,53,2,NULL),(1298,96,59,2,NULL),(1299,96,82,2,NULL),(1300,96,69,2,NULL),(1301,96,70,2,NULL),(1302,96,79,2,NULL),(1303,96,80,2,NULL),(1304,96,81,2,NULL),(1305,96,75,2,NULL),(1306,96,77,2,NULL),(1307,19,69,2,NULL),(1308,21,69,2,NULL),(1309,26,69,2,NULL),(1310,28,69,2,NULL),(1311,91,69,2,NULL),(1312,94,69,2,NULL),(1313,68,69,2,NULL),(1314,70,69,2,NULL),(1315,77,69,2,NULL),(1316,167,69,2,NULL),(1317,169,69,2,NULL),(1318,192,69,2,NULL),(1319,193,69,2,NULL),(1320,196,69,2,NULL),(1321,197,69,2,NULL),(1322,138,69,2,NULL),(1323,139,69,2,NULL),(1324,158,69,2,NULL),(1325,19,70,2,NULL),(1326,21,70,2,NULL),(1327,26,70,2,NULL),(1328,28,70,2,NULL),(1329,91,70,2,NULL),(1330,94,70,2,NULL),(1331,68,70,2,NULL),(1332,70,70,2,NULL),(1333,77,70,2,NULL),(1334,167,70,2,NULL),(1335,169,70,2,NULL),(1336,192,70,2,NULL),(1337,193,70,2,NULL),(1338,196,70,2,NULL),(1339,197,70,2,NULL),(1340,19,79,2,NULL),(1341,21,79,2,NULL),(1342,26,79,2,NULL),(1343,28,79,2,NULL),(1344,91,79,2,NULL),(1345,94,79,2,NULL),(1346,68,79,2,NULL),(1347,70,79,2,NULL),(1348,77,79,2,NULL),(1349,167,79,2,NULL),(1350,169,79,2,NULL),(1351,192,79,2,NULL),(1352,193,79,2,NULL),(1353,196,79,2,NULL),(1354,197,79,2,NULL),(1355,19,80,2,NULL),(1356,21,80,2,NULL),(1357,26,80,2,NULL),(1358,28,80,2,NULL),(1359,91,80,2,NULL),(1360,94,80,2,NULL),(1361,68,80,2,NULL),(1362,70,80,2,NULL),(1363,77,80,2,NULL),(1364,167,80,2,NULL),(1365,169,80,2,NULL),(1366,192,80,2,NULL),(1367,193,80,2,NULL),(1368,196,80,2,NULL),(1369,197,80,2,NULL),(1370,19,81,2,NULL),(1371,21,81,2,NULL),(1372,26,81,2,NULL),(1373,28,81,2,NULL),(1374,91,81,2,NULL),(1375,94,81,2,NULL),(1376,68,81,2,NULL),(1377,70,81,2,NULL),(1378,77,81,2,NULL),(1379,167,81,2,NULL),(1380,169,81,2,NULL),(1381,192,81,2,NULL),(1382,193,81,2,NULL),(1383,196,81,2,NULL),(1384,197,81,2,NULL),(1385,19,75,2,NULL),(1386,21,75,2,NULL),(1387,26,75,2,NULL),(1388,28,75,2,NULL),(1389,91,75,2,NULL),(1390,94,75,2,NULL),(1391,68,75,2,NULL),(1392,70,75,2,NULL),(1393,77,75,2,NULL),(1394,167,75,2,NULL),(1395,169,75,2,NULL),(1396,192,75,2,NULL),(1397,193,75,2,NULL),(1398,196,75,2,NULL),(1399,19,1,2,NULL),(1400,197,75,2,NULL),(1401,21,1,2,NULL),(1402,130,75,2,NULL),(1403,26,1,2,NULL),(1404,19,77,2,NULL),(1405,28,1,2,NULL),(1406,21,77,2,NULL),(1407,91,1,2,NULL),(1408,26,77,2,NULL),(1409,94,1,2,NULL),(1410,28,77,2,NULL),(1411,68,1,2,NULL),(1412,91,77,2,NULL),(1413,70,1,2,NULL),(1414,94,77,2,NULL),(1415,77,1,2,NULL),(1416,68,77,2,NULL),(1417,167,1,2,NULL),(1418,70,77,2,NULL),(1419,169,1,2,NULL),(1420,77,77,2,NULL),(1421,192,1,2,NULL),(1422,167,77,2,NULL),(1423,193,1,2,NULL),(1424,169,77,2,NULL),(1425,196,1,2,NULL),(1426,192,77,2,NULL),(1427,197,1,2,NULL),(1428,193,77,2,NULL),(1429,5,7,2,NULL),(1430,196,77,2,NULL),(1431,15,7,2,NULL),(1432,197,77,2,NULL),(1433,19,4,2,NULL),(1434,21,4,2,NULL),(1435,26,4,2,NULL),(1436,28,4,2,NULL),(1437,91,4,2,NULL),(1438,94,4,2,NULL),(1439,68,4,2,NULL),(1440,70,4,2,NULL),(1441,77,4,2,NULL),(1442,167,4,2,NULL),(1443,169,4,2,NULL),(1444,192,4,2,NULL),(1445,193,4,2,NULL),(1446,196,4,2,NULL),(1447,197,4,2,NULL),(1448,2,1,2,NULL),(1449,3,1,2,NULL),(1450,7,1,2,NULL),(1451,25,1,2,NULL),(1452,19,20,2,NULL),(1453,21,20,2,NULL),(1454,26,20,2,NULL),(1455,28,20,2,NULL),(1456,19,2,2,NULL),(1457,21,2,2,NULL),(1458,26,2,2,NULL),(1459,28,2,2,NULL),(1460,19,3,2,NULL),(1461,21,3,2,NULL),(1462,26,3,2,NULL),(1463,28,3,2,NULL),(1464,19,13,2,NULL),(1465,21,13,2,NULL),(1466,26,13,2,NULL),(1467,28,13,2,NULL),(1468,19,18,2,NULL),(1469,21,18,2,NULL),(1470,26,18,2,NULL),(1471,28,18,2,NULL),(1472,19,21,2,NULL),(1473,21,21,2,NULL),(1474,26,21,2,NULL),(1475,28,21,2,NULL),(1476,19,26,2,NULL),(1477,21,26,2,NULL),(1478,26,26,2,NULL),(1479,28,26,2,NULL),(1480,19,32,2,NULL),(1481,21,32,2,NULL),(1482,26,32,2,NULL),(1483,28,32,2,NULL),(1484,19,73,2,NULL),(1485,21,73,2,NULL),(1486,26,73,2,NULL),(1487,28,73,2,NULL),(1488,19,74,2,NULL),(1489,21,74,2,NULL),(1490,26,74,2,NULL),(1491,28,74,2,NULL),(1492,19,38,2,NULL),(1493,21,38,2,NULL),(1494,26,38,2,NULL),(1495,28,38,2,NULL),(1496,19,53,2,NULL),(1497,21,53,2,NULL),(1498,26,53,2,NULL),(1499,28,53,2,NULL),(1500,19,59,2,NULL),(1501,21,59,2,NULL),(1502,26,59,2,NULL),(1503,28,59,2,NULL),(1504,19,82,2,NULL),(1505,21,82,2,NULL),(1506,26,82,2,NULL),(1507,28,82,2,NULL),(1508,1,10,2,NULL),(1509,91,20,2,NULL),(1510,94,20,2,NULL),(1511,68,20,2,NULL),(1512,70,20,2,NULL),(1513,77,20,2,NULL),(1514,167,20,2,NULL),(1515,169,20,2,NULL),(1516,192,20,2,NULL),(1517,193,20,2,NULL),(1518,196,20,2,NULL),(1519,197,20,2,NULL),(1520,91,38,2,NULL),(1521,94,38,2,NULL),(1522,68,38,2,NULL),(1523,70,38,2,NULL),(1524,77,38,2,NULL),(1525,167,38,2,NULL),(1526,169,38,2,NULL),(1527,192,38,2,NULL),(1528,193,38,2,NULL),(1529,196,38,2,NULL),(1530,197,38,2,NULL),(1531,167,2,2,NULL),(1532,169,2,2,NULL),(1533,167,3,2,NULL),(1534,169,3,2,NULL),(1535,167,13,2,NULL),(1536,169,13,2,NULL),(1537,167,18,2,NULL),(1538,169,18,2,NULL),(1539,167,21,2,NULL),(1540,169,21,2,NULL),(1541,167,26,2,NULL),(1542,169,26,2,NULL),(1543,167,32,2,NULL),(1544,169,32,2,NULL),(1545,167,73,2,NULL),(1546,169,73,2,NULL),(1547,167,74,2,NULL),(1548,169,74,2,NULL),(1549,167,53,2,NULL),(1550,169,53,2,NULL),(1551,167,59,2,NULL),(1552,169,59,2,NULL),(1553,167,82,2,NULL),(1554,169,82,2,NULL),(1555,177,54,2,NULL),(1556,185,54,2,NULL),(1557,91,53,2,NULL),(1558,94,53,2,NULL),(1559,68,53,2,NULL),(1560,70,53,2,NULL),(1561,77,53,2,NULL),(1562,192,53,2,NULL),(1563,193,53,2,NULL),(1564,196,53,2,NULL),(1565,197,53,2,NULL),(1566,170,38,2,NULL),(1567,175,38,2,NULL),(1568,178,38,2,NULL),(1569,184,38,2,NULL),(1570,192,2,2,NULL),(1571,193,2,2,NULL),(1572,196,2,2,NULL),(1573,197,2,2,NULL),(1574,192,3,2,NULL),(1575,193,3,2,NULL),(1576,196,3,2,NULL),(1577,197,3,2,NULL),(1578,192,13,2,NULL),(1579,193,13,2,NULL),(1580,196,13,2,NULL),(1581,197,13,2,NULL),(1582,192,18,2,NULL),(1583,193,18,2,NULL),(1584,196,18,2,NULL),(1585,197,18,2,NULL),(1586,192,21,2,NULL),(1587,193,21,2,NULL),(1588,196,21,2,NULL),(1589,197,21,2,NULL),(1590,192,26,2,NULL),(1591,193,26,2,NULL),(1592,196,26,2,NULL),(1593,197,26,2,NULL),(1594,192,32,2,NULL),(1595,193,32,2,NULL),(1596,196,32,2,NULL),(1597,197,32,2,NULL),(1598,192,73,2,NULL),(1599,193,73,2,NULL),(1600,196,73,2,NULL),(1601,197,73,2,NULL),(1602,192,74,2,NULL),(1603,193,74,2,NULL),(1604,196,74,2,NULL),(1605,197,74,2,NULL),(1606,192,59,2,NULL),(1607,193,59,2,NULL),(1608,196,59,2,NULL),(1609,197,59,2,NULL),(1610,192,82,2,NULL),(1611,193,82,2,NULL),(1612,196,82,2,NULL),(1613,197,82,2,NULL),(1614,172,55,2,NULL),(1615,91,59,2,NULL),(1616,94,59,2,NULL),(1617,68,59,2,NULL),(1618,70,59,2,NULL),(1619,77,59,2,NULL),(1620,91,82,2,NULL),(1621,94,82,2,NULL),(1622,68,82,2,NULL),(1623,70,82,2,NULL),(1624,77,82,2,NULL),(1625,91,2,2,NULL),(1626,94,2,2,NULL),(1627,68,2,2,NULL),(1628,70,2,2,NULL),(1629,77,2,2,NULL),(1630,42,26,2,NULL),(1631,81,26,2,NULL),(1632,91,3,2,NULL),(1633,94,3,2,NULL),(1634,68,3,2,NULL),(1635,70,3,2,NULL),(1636,77,3,2,NULL),(1637,35,2,2,NULL),(1638,79,26,2,NULL),(1639,89,26,2,NULL),(1640,91,13,2,NULL),(1641,94,13,2,NULL),(1642,68,13,2,NULL),(1643,70,13,2,NULL),(1644,77,13,2,NULL),(1645,61,13,2,NULL),(1646,91,21,2,NULL),(1647,94,21,2,NULL),(1648,68,18,2,NULL),(1649,70,18,2,NULL),(1650,77,18,2,NULL),(1651,91,26,2,NULL),(1652,94,26,2,NULL),(1653,91,32,2,NULL),(1654,94,32,2,NULL),(1655,91,73,2,NULL),(1656,94,73,2,NULL),(1657,91,74,2,NULL),(1658,94,74,2,NULL),(1659,116,26,2,NULL),(1660,68,21,2,NULL),(1661,70,21,2,NULL),(1662,77,21,2,NULL),(1663,74,13,2,NULL),(1664,86,24,2,NULL),(1665,68,26,2,NULL),(1666,70,26,2,NULL),(1667,77,26,2,NULL),(1668,68,32,2,NULL),(1669,70,32,2,NULL),(1670,77,32,2,NULL),(1671,68,73,2,NULL),(1672,70,73,2,NULL),(1673,77,73,2,NULL),(1674,68,74,2,NULL),(1675,70,74,2,NULL),(1676,77,74,2,NULL),(1677,37,26,2,NULL),(1678,44,26,2,NULL),(1679,118,26,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:28
