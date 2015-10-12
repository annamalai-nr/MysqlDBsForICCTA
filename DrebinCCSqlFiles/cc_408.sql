-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_408
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
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(13,'alterforce.kjuutbqfh_hkoh.BootReceiver'),(3,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(15,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(7,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(6,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b(.*)'),(11,'com/android/vending/licensing/ILicensingService'),(14,'iup.pr4f.umiob.abaipic.kUASPJiTO');
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
INSERT INTO `Applications` VALUES (1,'com.unbievnb.bo',10033),(2,'com.ecmgqbugo',10053),(3,'alterforce.kjuutbqfh_hkoh',10024),(4,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b',10031),(5,'com.idaliusqgp.onrwqoperdm',10052),(6,'com.hmmh.vvjfrtnisisdaig',10053),(7,'iup.pr4f.umiob.abaipic',10017);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.ALTERNATIVE'),(5,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.unbievnb.bo.GameSceneActivity'),(2,1,'com.KnRhJnsp.jkOADoHhRFg'),(3,1,'com.KnRhJnsp.BEWjbSRVu'),(4,2,'com.ecmgqbugo.PluckingDaisies'),(5,2,'com.google.ads.AdActivity'),(6,2,'com.jAaqWNoQ.oMOHlTGQwv'),(7,2,'com.jAaqWNoQ.GoQbmKimFQ'),(8,2,'com.waps.OffersWebView'),(9,2,'com.jAaqWNoQ.PtRRthDkBlpkPkQ'),(10,2,'com.jAaqWNoQ.ADsDialog'),(11,2,'com.jAaqWNoQ.NewNotificationDialog'),(12,2,'com.jAaqWNoQ.JQdhntkwtD'),(13,2,'com.jAaqWNoQ.thWQilwinMOH'),(14,2,'com.jAaqWNoQ.LcCwMpwlrvGdleo'),(15,2,'com.jAaqWNoQ.userPermissionReceiver'),(16,4,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b.GameMIDletDEER3'),(17,3,'alterforce.jewels_lite.main'),(18,3,'com.BHBRMILsm.PGlvKJiwGWPK'),(19,4,'com.LUFsE.baHLOeFpUsdKp'),(20,3,'com.BHBRMILsm.NRorLrbWGUsQQpo'),(21,4,'com.LUFsE.JstjejhCtcUBN'),(22,3,'com.BHBRMILsm.MyAppInfo'),(23,4,'com.LUFsE.MyAppInfo'),(24,3,'com.BHBRMILsm.WalmUAkfNjmTKdg'),(25,4,'com.LUFsE.ttPFEsAk'),(26,3,'com.BHBRMILsm.AKUjSKLQKFdNN'),(27,4,'com.LUFsE.LDLKcAoDpab'),(28,3,'com.BHBRMILsm.MyAppAlertDialog'),(29,4,'com.LUFsE.MyAppAlertDialog'),(30,3,'com.BHBRMILsm.kiNrwKavdGufS'),(31,4,'com.LUFsE.aLGpMhJSBD'),(32,3,'com.BHBRMILsm.MyAppService'),(33,4,'com.LUFsE.MyAppService'),(34,3,'com.BHBRMILsm.BootReceiverService'),(35,4,'com.LUFsE.BootReceiverService'),(36,5,'com.camelgames.supertumble.MainActivity'),(37,5,'com.camelgames.erasestacker.activities.ScoreActivity'),(38,5,'com.iIRuK.jBeqohboJJOr'),(39,5,'com.waps.OffersWebView'),(40,5,'com.iIRuK.liFOgWubwqCg'),(41,5,'com.iIRuK.bOsiHMDvckEHibn'),(42,6,'com.edba.woodbridgesfree.WoodBridgesFreeActivity'),(43,6,'com.ADTvaIL.oMOHlTGQwv'),(44,6,'com.ADTvaIL.GoQbmKimFQ'),(45,6,'com.waps.OffersWebView'),(46,6,'com.ADTvaIL.PtRRthDkBlpkPkQ'),(47,6,'com.ADTvaIL.ADsDialog'),(48,6,'com.ADTvaIL.NewNotificationDialog'),(49,6,'com.ADTvaIL.JQdhntkwtD'),(50,6,'com.ADTvaIL.thWQilwinMOH'),(51,6,'com.ADTvaIL.LcCwMpwlrvGdleo'),(52,6,'com.ADTvaIL.userPermissionReceiver'),(53,4,'com.LUFsE.aa'),(54,2,'com.jAaqWNoQ.ag'),(55,2,'com.waps.ao'),(56,2,'com.jAaqWNoQ.ak'),(57,4,'com.LUFsE.ak'),(58,4,'com.netmite.andme.launcher.Launcher'),(59,5,'com.waps.SDKUtils'),(60,2,'com.waps.y'),(61,2,'com.waps.al'),(62,4,'com.LUFsE.ae'),(63,5,'com.waps.g'),(64,5,'com.waps.w'),(65,2,'com.waps.w'),(66,5,'com.waps.y'),(67,3,'com.BHBRMILsm.be'),(68,4,'com.LUFsE.bl'),(69,2,'com.waps.SDKUtils'),(70,5,'com.waps.ao'),(71,3,'com.BHBRMILsm.ac'),(72,4,'com.LUFsE.bn'),(73,4,'com.LUFsE.ah'),(74,5,'com.camelgames.supertumble.MainActivity$3'),(75,5,'com.waps.al'),(76,3,'com.BHBRMILsm.z'),(77,3,'com.BHBRMILsm.bp'),(78,3,'com.BHBRMILsm.y'),(79,5,'com.android.vending.licensing.LicenseChecker'),(80,5,'com.waps.AppConnect'),(81,6,'com.waps.w'),(82,6,'com.waps.al'),(83,4,'com.LUFsE.ab'),(84,6,'com.ADTvaIL.ak'),(85,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(86,3,'com.BHBRMILsm.bf'),(87,6,'com.waps.y'),(88,3,'com.BHBRMILsm.af'),(89,7,'iup.pr4f.umiob.abaipic.GameTemplate'),(90,6,'com.ADTvaIL.ag'),(91,4,'com.LUFsE.bk'),(92,7,'com.aWSdm.MQLQjToO'),(93,7,'com.aWSdm.wvtBnPliUhm'),(94,7,'com.aWSdm.umDsBDEJBmiEwS'),(95,7,'com.aWSdm.wdmBUALsVbuEe'),(96,7,'com.aWSdm.towfNAUkJlJOD'),(97,6,'com.waps.SDKUtils'),(98,7,'com.aWSdm.bNIlfLrEqi'),(99,7,'com.aWSdm.IjUDDAws'),(100,7,'com.aWSdm.gLidLvBJhp'),(101,7,'com.aWSdm.kUASPJiTO'),(102,6,'com.waps.ao'),(103,3,'com.BHBRMILsm.ai'),(104,7,'com.aWSdm.ah'),(105,7,'com.aWSdm.br'),(106,7,'com.aWSdm.bo'),(107,7,'com.aWSdm.ak'),(108,7,'com.aWSdm.bn'),(109,7,'com.aWSdm.z'),(110,7,'com.aWSdm.aw'),(111,7,'com.aWSdm.y');
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,19,'TEST_APP_ID'),(2,31,'ctt'),(3,29,'ftb'),(4,14,'apkInfo'),(5,33,'TEST_APP_ID'),(6,14,'packageName'),(7,19,''),(8,19,'(.*)'),(9,14,'showFlag'),(10,29,'ul'),(11,19,'si'),(12,27,''),(13,27,'(.*)'),(14,29,''),(15,29,'(.*)'),(16,27,'from'),(17,23,'fa'),(18,29,'tt'),(19,8,'CLIENT_PACKAGE'),(20,8,'isFinshClose'),(21,8,'URL'),(22,9,'iconURL'),(23,9,'apkVersion'),(24,5,'APP_ID'),(25,7,'APP_ID'),(26,8,'SHWO_FLAG'),(27,39,'Offers_URL'),(28,8,'Offers_URL'),(29,39,'URL'),(30,5,'WAPS_ID'),(31,7,'WAPS_ID'),(32,9,'np_app_key'),(33,14,'np_app_key'),(34,10,'np_app_key'),(35,12,'np_app_key'),(36,11,'np_app_key'),(37,5,'np_app_key'),(38,6,'np_app_key'),(39,7,'np_app_key'),(40,5,'WAPS_PID'),(41,7,'WAPS_PID'),(42,10,'adsDialogApkUrl'),(43,5,'CLIENT_PACKAGE'),(44,7,'CLIENT_PACKAGE'),(45,8,'ACTIVITY_FLAG'),(46,8,'UrlPath'),(47,14,'fileURL'),(48,9,'imageURL'),(49,37,'DEVICE_ID'),(50,38,'DEVICE_ID'),(51,40,'DEVICE_ID'),(52,36,'DEVICE_ID'),(53,39,'ACTIVITY_FLAG'),(54,10,'apkSoftID'),(55,31,'tt'),(56,31,'au'),(57,22,'filepath'),(58,9,'apkTitle'),(59,39,'URL_PARAMS'),(60,9,'showFlag'),(61,22,'title'),(62,8,'Notify_Id'),(63,28,'apk_url'),(64,5,'DEVICE_ID'),(65,28,'content'),(66,7,'DEVICE_ID'),(67,9,'apkSize'),(68,5,'APP_PID'),(69,7,'APP_PID'),(70,14,'fileName'),(71,20,'poptitle'),(72,39,'Notify_Url_Params'),(73,39,'offers_webview_tag'),(74,39,'UrlPath'),(75,39,'USER_ID'),(76,9,'apkURL'),(77,28,'fromtable'),(78,11,'packageName'),(79,10,'adsDialogMessage'),(80,9,'apkInfo'),(81,10,'packageName'),(82,30,'apkurl'),(83,22,'fromtype'),(84,23,'tt'),(85,30,'title'),(86,23,''),(87,23,'(.*)'),(88,37,'APP_PID'),(89,23,'ft'),(90,38,'APP_PID'),(91,40,'APP_PID'),(92,36,'APP_PID'),(93,37,'WAPS_ID'),(94,38,'WAPS_ID'),(95,40,'WAPS_ID'),(96,36,'WAPS_ID'),(97,27,'isDirectFromTable'),(98,13,'fileURL'),(99,13,'packageName'),(100,9,'packageName'),(101,8,'ADVIEW'),(102,5,'ADVIEW'),(103,7,'ADVIEW'),(104,14,'apkSoftID'),(105,23,'fp'),(106,38,'CLIENT_PACKAGE'),(107,40,'CLIENT_PACKAGE'),(108,36,'CLIENT_PACKAGE'),(109,37,'APP_ID'),(110,38,'APP_ID'),(111,40,'APP_ID'),(112,36,'APP_ID'),(113,39,'CLIENT_PACKAGE'),(114,31,'pn'),(115,39,'Notify_Id'),(116,5,'action'),(117,21,'popurl'),(118,5,'com.google.ads.AdOpener'),(119,38,''),(120,38,'(.*)'),(121,9,'detailFlag'),(122,8,'Notify_Url_Params'),(123,40,''),(124,40,'(.*)'),(125,8,'offers_webview_tag'),(126,36,''),(127,36,'(.*)'),(128,41,''),(129,41,'(.*)'),(130,37,'CLIENT_PACKAGE'),(131,47,'adsDialogMessage'),(132,28,'title'),(133,18,'version_code'),(134,46,'apkSoftID'),(135,21,'TEST_APP_ID'),(136,37,'WAPS_PID'),(137,38,'WAPS_PID'),(138,40,'WAPS_PID'),(139,36,'WAPS_PID'),(140,39,'SHWO_FLAG'),(141,39,'isFinshClose'),(142,14,'apkTitle'),(143,39,'ADVIEW'),(144,51,'showFlag'),(145,37,'ADVIEW'),(146,38,'ADVIEW'),(147,40,'ADVIEW'),(148,36,'ADVIEW'),(149,48,'showFlag'),(150,8,'URL_PARAMS'),(151,47,'np_app_key'),(152,5,'params'),(153,51,'np_app_key'),(154,8,'USER_ID'),(155,49,'np_app_key'),(156,9,'apkSoftID'),(157,44,'np_app_key'),(158,48,'np_app_key'),(159,29,'bt'),(160,43,'np_app_key'),(161,23,'st'),(162,46,'np_app_key'),(163,11,'showFlag'),(164,51,'apkInfo'),(165,50,'fileURL'),(166,28,'url'),(167,46,'apkTitle'),(168,18,'NEW_APP_ID'),(169,46,'iconURL'),(170,32,'NEW_APP_ID'),(171,44,'WAPS_ID'),(172,30,'content'),(173,46,'apkSize'),(174,21,'poptitle'),(175,46,'detailFlag'),(176,29,'ctt'),(177,45,'Notify_Id'),(178,30,'packagename'),(179,45,'SHWO_FLAG'),(180,45,'URL_PARAMS'),(181,45,'Notify_Url_Params'),(182,46,'apkURL'),(183,22,'from_alert'),(184,46,'showFlag'),(185,45,'isFinshClose'),(186,28,'version_code'),(187,20,'NEW_APP_ID'),(188,18,'soft_id'),(189,28,'btn_txt'),(190,20,'popurl'),(191,26,'isDirectFromTable'),(192,22,'package_name'),(193,26,'package_name'),(194,22,'status'),(195,22,'from_table'),(196,22,'game'),(197,28,'package_name'),(198,26,'from'),(199,47,'apkSoftID'),(200,45,'ACTIVITY_FLAG'),(201,44,'APP_PID'),(202,45,'Offers_URL'),(203,44,'CLIENT_PACKAGE'),(204,44,'APP_ID'),(205,45,'URL'),(206,44,'DEVICE_ID'),(207,47,'packageName'),(208,48,'packageName'),(209,46,'imageURL'),(210,46,'apkVersion'),(211,45,'USER_ID'),(212,51,'fileURL'),(213,46,'apkInfo'),(214,51,'packageName'),(215,45,'UrlPath'),(216,47,'adsDialogApkUrl'),(217,50,'packageName'),(218,51,'fileName'),(219,51,'apkSoftID'),(220,44,'WAPS_PID'),(221,51,'apkTitle'),(222,45,'CLIENT_PACKAGE'),(223,45,'offers_webview_tag'),(224,46,'packageName'),(225,45,'ADVIEW'),(226,44,'ADVIEW'),(227,67,'packagename'),(228,65,'from'),(229,63,'from_alert'),(230,68,'NEW_APP_ID'),(231,62,'poptitle'),(232,67,'content'),(233,66,'title'),(234,61,'NEW_APP_ID'),(235,66,'url'),(236,63,'from_table'),(237,63,'title'),(238,63,'status'),(239,67,'title'),(240,66,'package_name'),(241,61,'version_code'),(242,67,'apkurl'),(243,65,'isDirectFromTable'),(244,63,'game'),(245,66,'btn_txt'),(246,66,'content'),(247,66,'fromtable'),(248,66,'version_code'),(249,63,'package_name'),(250,63,'fromtype'),(251,65,'package_name'),(252,66,'apk_url'),(253,61,'soft_id'),(254,62,'NEW_APP_ID'),(255,62,'popurl'),(256,63,'filepath');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,57,'r',1,NULL,NULL),(54,60,'r',1,NULL,NULL),(55,66,'r',1,NULL,NULL),(56,73,'r',1,NULL,NULL),(57,85,'r',1,NULL,NULL),(58,87,'r',1,NULL,NULL),(59,88,'r',1,NULL,NULL),(60,89,'a',1,NULL,NULL),(61,92,'a',1,NULL,NULL),(62,93,'a',0,NULL,NULL),(63,94,'a',1,NULL,NULL),(64,95,'a',1,NULL,NULL),(65,96,'a',1,NULL,NULL),(66,98,'a',0,NULL,NULL),(67,99,'a',0,NULL,NULL),(68,100,'s',1,NULL,NULL),(69,101,'r',1,NULL,NULL),(70,103,'r',1,NULL,NULL),(71,104,'r',1,NULL,NULL),(72,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,3,2),(5,4,1),(6,5,1),(7,5,2),(8,6,31),(9,7,35),(10,8,25),(11,9,29),(12,10,23),(13,11,5),(14,11,9),(15,11,7),(16,11,10),(17,11,11),(18,12,8),(19,13,23),(20,14,9),(21,14,11),(22,14,5),(23,14,7),(24,15,19),(25,16,15),(26,17,16),(27,18,5),(28,18,7),(29,19,40),(30,19,38),(31,19,36),(32,20,7),(33,20,5),(34,21,6),(35,22,23),(36,23,7),(37,24,37),(38,25,8),(39,26,39),(40,26,37),(41,27,8),(42,28,23),(43,29,18),(44,30,29),(45,31,30),(46,32,38),(47,32,36),(48,32,40),(49,33,14),(50,34,25),(51,34,27),(52,34,29),(53,35,18),(54,36,40),(55,36,41),(56,36,36),(57,36,38),(58,37,24),(59,37,26),(60,37,28),(61,38,34),(62,39,37),(63,39,38),(64,40,15),(65,41,18),(66,42,19),(67,43,6),(68,44,22),(69,45,35),(70,46,40),(71,47,5),(72,47,7),(73,48,39),(74,48,37),(75,49,22),(76,50,19),(77,51,39),(78,52,31),(79,53,37),(80,53,36),(81,54,28),(82,55,23),(83,56,38),(84,56,36),(85,56,40),(86,57,22),(87,58,5),(88,58,7),(89,59,16),(90,61,40),(91,60,27),(92,60,29),(93,60,25),(94,62,18),(95,63,19),(96,64,7),(97,65,22),(98,66,7),(99,66,5),(100,67,36),(101,68,25),(102,69,5),(103,70,40),(104,71,45),(105,72,24),(106,73,16),(107,74,38),(108,74,40),(109,74,36),(110,75,6),(111,76,44),(112,77,6),(113,78,34),(114,79,23),(115,80,13),(116,81,43),(117,82,22),(118,83,38),(119,84,52),(120,85,7),(121,86,35),(122,87,50),(123,88,18),(124,89,23),(125,90,44),(126,91,30),(127,92,24),(128,93,21),(129,94,22),(130,95,44),(131,96,23),(132,97,22),(133,98,44),(134,98,48),(135,98,46),(136,99,19),(137,100,22),(138,101,23),(139,102,52),(140,103,44),(141,104,28),(142,105,34),(143,106,22),(144,107,44),(145,108,20),(146,109,28),(147,109,26),(148,109,24),(149,110,43),(150,111,44),(151,112,45),(152,113,43),(153,114,43),(154,115,44),(155,116,44),(156,117,51),(157,118,45),(158,119,44),(159,119,46),(160,119,47),(161,119,48),(162,120,63),(163,121,66),(164,122,63),(165,123,69),(166,124,63),(167,125,66),(168,126,61),(169,127,63),(170,128,61),(171,129,61),(172,130,67),(173,131,61),(174,132,67),(175,133,66),(176,134,64),(177,135,64),(178,136,63),(179,137,63),(180,138,69),(181,139,61),(182,140,63),(183,141,63),(184,142,64),(185,142,65),(186,142,66),(187,143,62),(188,144,66),(189,145,63),(190,146,69),(191,147,66),(192,147,64),(193,147,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.unbievnb.bo.GameSceneActivity: void callMarketGetFullVersion()>',4,'a',NULL),(2,1,'<com.unbievnb.bo.GameSceneActivity: void callShare()>',10,'a',NULL),(3,2,'<com.KnRhJnsp.jkOADoHhRFg: void a(java.lang.String)>',11,'a',NULL),(4,1,'<com.unbievnb.bo.GameSceneActivity: void callMarketRateCurrentVersion()>',11,'a',NULL),(5,2,'<com.KnRhJnsp.jkOADoHhRFg: void a()>',3,'a',NULL),(6,31,'<com.LUFsE.aLGpMhJSBD: void onClick(android.view.View)>',26,'a',NULL),(7,35,'<com.LUFsE.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(8,25,'<com.LUFsE.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(9,29,'<com.LUFsE.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(10,53,'<com.LUFsE.aa: void onClick(android.view.View)>',197,'a',NULL),(11,54,'<com.jAaqWNoQ.ag: void f(android.content.Context,java.lang.String)>',11,'a',NULL),(12,55,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(13,23,'<com.LUFsE.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(14,54,'<com.jAaqWNoQ.ag: void b(android.content.Context,java.lang.String)>',4,'a',NULL),(15,19,'<com.LUFsE.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',57,'s',NULL),(16,56,'<com.jAaqWNoQ.ak: void run()>',32,'s',NULL),(17,58,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(18,7,'<com.jAaqWNoQ.GoQbmKimFQ: void a()>',3,'a',NULL),(19,59,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(20,61,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(21,6,'<com.jAaqWNoQ.oMOHlTGQwv: void onCreate(android.os.Bundle)>',27,'a',NULL),(22,62,'<com.LUFsE.ae: void onClick(android.view.View)>',182,'a',NULL),(23,7,'<com.jAaqWNoQ.GoQbmKimFQ: void onBackPressed()>',5,'a',NULL),(24,63,'<com.waps.g: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(25,8,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(26,64,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(27,65,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(28,23,'<com.LUFsE.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(29,18,'<com.BHBRMILsm.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(30,29,'<com.LUFsE.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(31,30,'<com.BHBRMILsm.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(32,59,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(33,14,'<com.jAaqWNoQ.LcCwMpwlrvGdleo: void c(android.content.Context)>',74,'a',NULL),(34,27,'<com.LUFsE.LDLKcAoDpab: void a(int,boolean)>',42,'a',NULL),(35,67,'<com.BHBRMILsm.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(36,41,'<com.iIRuK.bOsiHMDvckEHibn: void a(android.content.Context,java.lang.String)>',10,'a',NULL),(37,26,'<com.BHBRMILsm.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(38,34,'<com.BHBRMILsm.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(39,38,'<com.iIRuK.jBeqohboJJOr: void b()>',33,'a',NULL),(40,56,'<com.jAaqWNoQ.ak: void run()>',25,'s',NULL),(41,18,'<com.BHBRMILsm.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(42,68,'<com.LUFsE.bl: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(43,6,'<com.jAaqWNoQ.oMOHlTGQwv: void b(android.content.Context)>',3,'s',NULL),(44,22,'<com.BHBRMILsm.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(45,35,'<com.LUFsE.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(46,40,'<com.iIRuK.liFOgWubwqCg: void a()>',15,'a',NULL),(47,69,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(48,70,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,71,'<com.BHBRMILsm.ac: void onClick(android.view.View)>',182,'a',NULL),(50,72,'<com.LUFsE.bn: void onClick(android.view.View)>',101,'a',NULL),(51,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(52,31,'<com.LUFsE.aLGpMhJSBD: void onCreate(android.os.Bundle)>',13,'s',NULL),(53,74,'<com.camelgames.supertumble.MainActivity$3: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(54,28,'<com.BHBRMILsm.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(55,53,'<com.LUFsE.aa: void onClick(android.view.View)>',182,'a',NULL),(56,75,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(57,76,'<com.BHBRMILsm.z: void onClick(android.view.View)>',185,'a',NULL),(58,61,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(59,58,'<com.netmite.andme.launcher.Launcher: void startAndroidMarket()>',6,'a',NULL),(60,27,'<com.LUFsE.LDLKcAoDpab: void a(int,boolean)>',10,'s',NULL),(61,40,'<com.iIRuK.liFOgWubwqCg: void a()>',9,'a',NULL),(62,77,'<com.BHBRMILsm.bp: void onClick(android.view.View)>',106,'a',NULL),(63,19,'<com.LUFsE.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',61,'s',NULL),(64,7,'<com.jAaqWNoQ.GoQbmKimFQ: void b()>',45,'a',NULL),(65,78,'<com.BHBRMILsm.y: void onClick(android.view.View)>',197,'a',NULL),(66,69,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(67,79,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(68,25,'<com.LUFsE.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(69,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(70,80,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(71,81,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(72,24,'<com.BHBRMILsm.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(73,58,'<com.netmite.andme.launcher.Launcher: void startGetRunner()>',9,'a',NULL),(74,75,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(75,6,'<com.jAaqWNoQ.oMOHlTGQwv: void onCreate(android.os.Bundle)>',15,'a',NULL),(76,82,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(77,6,'<com.jAaqWNoQ.oMOHlTGQwv: void onCreate(android.os.Bundle)>',22,'a',NULL),(78,34,'<com.BHBRMILsm.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(79,83,'<com.LUFsE.ab: void onClick(android.view.View)>',185,'a',NULL),(80,13,'<com.jAaqWNoQ.thWQilwinMOH: void a(java.lang.String)>',10,'a',NULL),(81,43,'<com.ADTvaIL.oMOHlTGQwv: void onCreate(android.os.Bundle)>',27,'a',NULL),(82,78,'<com.BHBRMILsm.y: void onClick(android.view.View)>',182,'a',NULL),(83,38,'<com.iIRuK.jBeqohboJJOr: void onRestart()>',7,'a',NULL),(84,84,'<com.ADTvaIL.ak: void run()>',32,'s',NULL),(85,7,'<com.jAaqWNoQ.GoQbmKimFQ: void b()>',55,'a',NULL),(86,35,'<com.LUFsE.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(87,50,'<com.ADTvaIL.thWQilwinMOH: void a(java.lang.String)>',10,'a',NULL),(88,86,'<com.BHBRMILsm.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(89,83,'<com.LUFsE.ab: void onClick(android.view.View)>',200,'a',NULL),(90,44,'<com.ADTvaIL.GoQbmKimFQ: void a()>',3,'a',NULL),(91,30,'<com.BHBRMILsm.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(92,24,'<com.BHBRMILsm.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(93,21,'<com.LUFsE.JstjejhCtcUBN: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(94,22,'<com.BHBRMILsm.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(95,44,'<com.ADTvaIL.GoQbmKimFQ: void b()>',45,'a',NULL),(96,23,'<com.LUFsE.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(97,22,'<com.BHBRMILsm.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(98,90,'<com.ADTvaIL.ag: void b(android.content.Context,java.lang.String)>',4,'a',NULL),(99,91,'<com.LUFsE.bk: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(100,76,'<com.BHBRMILsm.z: void onClick(android.view.View)>',200,'a',NULL),(101,62,'<com.LUFsE.ae: void onClick(android.view.View)>',197,'a',NULL),(102,84,'<com.ADTvaIL.ak: void run()>',25,'s',NULL),(103,97,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(104,28,'<com.BHBRMILsm.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(105,34,'<com.BHBRMILsm.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(106,71,'<com.BHBRMILsm.ac: void onClick(android.view.View)>',197,'a',NULL),(107,82,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(108,20,'<com.BHBRMILsm.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(109,26,'<com.BHBRMILsm.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(110,43,'<com.ADTvaIL.oMOHlTGQwv: void b(android.content.Context)>',3,'s',NULL),(111,44,'<com.ADTvaIL.GoQbmKimFQ: void onBackPressed()>',5,'a',NULL),(112,102,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(113,43,'<com.ADTvaIL.oMOHlTGQwv: void onCreate(android.os.Bundle)>',15,'a',NULL),(114,43,'<com.ADTvaIL.oMOHlTGQwv: void onCreate(android.os.Bundle)>',22,'a',NULL),(115,97,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(116,44,'<com.ADTvaIL.GoQbmKimFQ: void b()>',55,'a',NULL),(117,51,'<com.ADTvaIL.LcCwMpwlrvGdleo: void c(android.content.Context)>',74,'a',NULL),(118,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(119,90,'<com.ADTvaIL.ag: void f(android.content.Context,java.lang.String)>',11,'a',NULL),(120,105,'<com.aWSdm.br: void onClick(android.view.View)>',196,'a',NULL),(121,98,'<com.aWSdm.bNIlfLrEqi: void onClick(android.view.View)>',79,'a',NULL),(122,106,'<com.aWSdm.bo: void onClick(android.view.View)>',199,'a',NULL),(123,101,'<com.aWSdm.kUASPJiTO: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(124,108,'<com.aWSdm.bn: void onClick(android.view.View)>',196,'a',NULL),(125,98,'<com.aWSdm.bNIlfLrEqi: void onClick(android.view.View)>',61,'a',NULL),(126,92,'<com.aWSdm.MQLQjToO: void onCreate(android.os.Bundle)>',61,'s',NULL),(127,94,'<com.aWSdm.umDsBDEJBmiEwS: void onCreate(android.os.Bundle)>',10,'a',NULL),(128,109,'<com.aWSdm.z: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(129,92,'<com.aWSdm.MQLQjToO: void onCreate(android.os.Bundle)>',65,'s',NULL),(130,99,'<com.aWSdm.IjUDDAws: void onClick(android.view.View)>',26,'a',NULL),(131,110,'<com.aWSdm.aw: void onClick(android.view.View)>',105,'a',NULL),(132,99,'<com.aWSdm.IjUDDAws: void onCreate(android.os.Bundle)>',13,'s',NULL),(133,98,'<com.aWSdm.bNIlfLrEqi: void onClick(android.view.View)>',48,'a',NULL),(134,95,'<com.aWSdm.wdmBUALsVbuEe: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(135,95,'<com.aWSdm.wdmBUALsVbuEe: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(136,106,'<com.aWSdm.bo: void onClick(android.view.View)>',184,'a',NULL),(137,94,'<com.aWSdm.umDsBDEJBmiEwS: void onCreate(android.os.Bundle)>',41,'s',NULL),(138,101,'<com.aWSdm.kUASPJiTO: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(139,111,'<com.aWSdm.y: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(140,108,'<com.aWSdm.bn: void onClick(android.view.View)>',181,'a',NULL),(141,105,'<com.aWSdm.br: void onClick(android.view.View)>',181,'a',NULL),(142,96,'<com.aWSdm.towfNAUkJlJOD: void a(int,boolean)>',42,'a',NULL),(143,93,'<com.aWSdm.wvtBnPliUhm: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(144,98,'<com.aWSdm.bNIlfLrEqi: void onClick(android.view.View)>',70,'a',NULL),(145,94,'<com.aWSdm.umDsBDEJBmiEwS: void onCreate(android.os.Bundle)>',91,'s',NULL),(146,101,'<com.aWSdm.kUASPJiTO: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(147,96,'<com.aWSdm.towfNAUkJlJOD: void a(int,boolean)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,5),(3,3,5),(4,4,5),(5,5,5),(6,6,5),(7,7,5),(8,8,5),(9,9,5),(10,10,4),(11,11,4),(12,12,4),(13,14,1),(14,15,6),(15,16,7),(16,17,1),(17,18,1),(18,20,1),(19,21,1),(20,22,1),(21,23,4),(22,24,1),(23,25,4),(24,26,1),(25,27,1),(26,28,1),(27,29,1),(28,32,4),(29,34,1),(30,35,4),(31,36,1),(32,37,4),(33,38,1),(34,39,4),(35,40,4),(36,41,4),(37,43,1),(38,44,1),(39,45,4),(40,46,1),(41,47,4),(42,49,4),(43,51,4),(44,53,4),(45,54,1),(46,55,1),(47,56,4),(48,57,4),(49,58,4),(50,61,4),(51,62,4),(52,64,4),(53,66,1),(54,68,4),(55,69,1),(56,71,1),(57,73,1),(58,74,4),(59,76,4),(60,80,1),(61,82,6),(62,83,1),(63,84,7),(64,85,4),(65,86,4),(66,87,4),(67,88,4),(68,90,4),(69,91,4),(70,92,4),(71,93,1),(72,94,4),(73,95,1),(74,96,4),(75,98,4),(76,99,4),(77,100,4),(78,101,4),(79,102,4),(80,103,4),(81,104,4),(82,106,4),(83,107,4),(84,109,4),(85,110,4),(86,111,4),(87,113,1),(88,114,4),(89,121,1),(90,122,1),(91,123,4),(92,125,11),(93,126,1),(94,128,4),(95,130,1),(96,132,12),(97,133,4),(98,134,1),(99,135,12),(100,137,4),(101,138,1),(102,139,1),(103,140,4),(104,142,1),(105,144,1),(106,145,1),(107,147,13),(108,148,4),(109,149,4),(110,151,4),(111,152,4),(112,154,4),(113,155,4),(114,158,4),(115,159,4),(116,160,4),(117,162,4),(118,164,1),(119,165,1),(120,167,1),(121,168,1),(122,169,1),(123,176,1),(124,178,1),(125,179,1),(126,180,1),(127,181,1),(128,182,1),(129,184,1),(130,185,1),(131,186,1),(132,187,1),(133,188,4),(134,189,4),(135,190,4),(136,192,4),(137,193,4),(138,194,13),(139,195,4),(140,196,1),(141,197,1),(142,199,1),(143,201,1),(144,203,1),(145,204,1),(146,206,1),(147,208,1),(148,209,4),(149,212,4),(150,215,1),(151,216,1),(152,217,4),(153,218,1),(154,219,1),(155,220,1),(156,221,1),(157,223,1),(158,224,1),(159,225,1),(160,226,1),(161,228,1),(162,229,1),(163,230,1),(164,231,1),(165,232,4),(166,233,4),(167,235,1),(168,236,1),(169,239,1),(170,243,1),(171,244,1),(172,246,4),(173,247,4),(174,249,14),(175,251,4),(176,252,4),(177,253,4),(178,254,4),(179,255,1),(180,256,1),(181,257,1),(182,258,1),(183,260,15),(184,262,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,3),(2,17,1),(3,18,4),(4,20,1),(5,21,4),(6,22,1),(7,24,4),(8,26,1),(9,27,4),(10,28,1),(11,29,4),(12,34,1),(13,35,4),(14,35,5),(15,36,1),(16,37,5),(17,37,1),(18,38,1),(19,39,5),(20,39,1),(21,40,4),(22,40,5),(23,43,1),(24,44,1),(25,45,5),(26,46,4),(27,47,5),(28,54,1),(29,55,4),(30,66,1),(31,69,4),(32,71,1),(33,73,4),(34,80,1),(35,83,4),(36,85,5),(37,85,4),(38,87,1),(39,87,5),(40,91,1),(41,91,5),(42,93,1),(43,94,5),(44,94,4),(45,95,4),(46,98,5),(47,102,5),(48,113,1),(49,121,1),(50,122,4),(51,126,1),(52,130,4),(53,134,1),(54,138,1),(55,139,4),(56,142,4),(57,144,1),(58,145,4),(59,164,1),(60,165,4),(61,167,3),(62,168,1),(63,169,4),(64,176,1),(65,178,4),(66,179,1),(67,180,1),(68,181,4),(69,182,4),(70,184,1),(71,185,1),(72,186,4),(73,187,4),(74,188,4),(75,188,5),(76,189,5),(77,189,1),(78,190,5),(79,190,1),(80,192,5),(81,192,4),(82,193,5),(83,195,5),(84,196,1),(85,197,4),(86,199,1),(87,201,4),(88,203,1),(89,204,4),(90,206,1),(91,208,4),(92,215,1),(93,216,4),(94,218,1),(95,219,4),(96,220,1),(97,221,4),(98,223,1),(99,224,4),(100,225,1),(101,226,4),(102,228,1),(103,229,4),(104,230,1),(105,231,4),(106,235,1),(107,236,4),(108,239,3),(109,243,1),(110,244,4),(111,255,1),(112,256,4),(113,257,1),(114,258,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,13,'com/unbievnb/bo/GameSceneActivity'),(2,15,'com/LUFsE/MyAppService'),(3,16,'com/LUFsE/MyAppService'),(4,19,'com/LUFsE/MyAppInfo'),(5,30,'com/LUFsE/MyAppService'),(6,31,'com/jAaqWNoQ/JQdhntkwtD'),(7,33,'com/ecmgqbugo/PluckingDaisies'),(8,34,'com.netmite.andme.MIDletRunner'),(9,36,'com.netmite.andme.MIDletRunner'),(10,38,'com.netmite.andme.MIDletRunner'),(11,45,''),(12,44,'com.netmite.andme.MIDletRunner'),(13,48,'com/jAaqWNoQ/GoQbmKimFQ'),(14,47,''),(15,50,'com/ecmgqbugo/PluckingDaisies'),(16,52,'(.*)'),(17,59,'com/LUFsE/MyAppService'),(18,60,'com/BHBRMILsm/MyAppService'),(19,63,'com/BHBRMILsm/MyAppService'),(20,67,'alterforce/jewels_lite/main'),(21,70,'com/BHBRMILsm/MyAppService'),(22,65,'com/jAaqWNoQ/PtRRthDkBlpkPkQ'),(23,72,'com/BHBRMILsm/MyAppService'),(24,75,'com/jAaqWNoQ/JQdhntkwtD'),(25,77,'com/BHBRMILsm/MyAppService'),(26,78,'com/crdscnw/irawf/thctgndh/etoi_dvducf_b/GameMIDletDEER3'),(27,79,'com/jAaqWNoQ/JQdhntkwtD'),(28,81,'com/camelgames/supertumble/MainActivity'),(29,82,'com/LUFsE/MyAppService'),(30,84,'com/LUFsE/MyAppService'),(31,89,'com/LUFsE/JstjejhCtcUBN'),(32,97,'com/LUFsE/MyAppService'),(33,98,''),(34,102,''),(35,105,'(.*)'),(36,108,'(.*)'),(37,112,'(.*)'),(38,113,'com.android.vending.AssetBrowserActivity'),(39,115,'(.*)'),(40,116,'com/iIRuK/bOsiHMDvckEHibn'),(41,117,'com/LUFsE/MyAppService'),(42,118,'com/BHBRMILsm/NRorLrbWGUsQQpo'),(43,119,'com/LUFsE/MyAppService'),(44,120,'com/ecmgqbugo/PluckingDaisies'),(45,124,'com/LUFsE/MyAppInfo'),(46,127,'com/LUFsE/MyAppInfo'),(47,131,'com/LUFsE/MyAppInfo'),(48,129,'(.*)'),(49,141,'com/jAaqWNoQ/GoQbmKimFQ'),(50,146,'com/jAaqWNoQ/PtRRthDkBlpkPkQ'),(51,147,'com/BHBRMILsm/MyAppService'),(52,150,'com/ADTvaIL/GoQbmKimFQ'),(53,153,'com/iIRuK/bOsiHMDvckEHibn'),(54,156,'com/ADTvaIL/JQdhntkwtD'),(55,157,'com/ecmgqbugo/PluckingDaisies'),(56,161,'com/LUFsE/MyAppService'),(57,163,'alterforce/jewels_lite/main'),(58,166,'com/edba/woodbridgesfree/WoodBridgesFreeActivity'),(59,170,'com/BHBRMILsm/MyAppInfo'),(60,171,'com/crdscnw/irawf/thctgndh/etoi_dvducf_b/GameMIDletDEER3'),(61,172,'com/BHBRMILsm/MyAppService'),(62,173,'com/edba/woodbridgesfree/WoodBridgesFreeActivity'),(63,174,'com/LUFsE/MyAppService'),(64,175,'com/BHBRMILsm/MyAppService'),(65,177,'com/crdscnw/irawf/thctgndh/etoi_dvducf_b/GameMIDletDEER3'),(66,183,'com/ADTvaIL/JQdhntkwtD'),(67,191,'com/BHBRMILsm/MyAppInfo'),(68,193,''),(69,194,'com/BHBRMILsm/MyAppService'),(70,195,''),(71,198,'(.*)'),(72,200,'(.*)'),(73,202,'alterforce/jewels_lite/main'),(74,205,'com/ADTvaIL/JQdhntkwtD'),(75,207,'com/edba/woodbridgesfree/WoodBridgesFreeActivity'),(76,210,'com/ADTvaIL/GoQbmKimFQ'),(77,211,'com/ADTvaIL/PtRRthDkBlpkPkQ'),(78,213,'com/edba/woodbridgesfree/WoodBridgesFreeActivity'),(79,214,'com/ADTvaIL/PtRRthDkBlpkPkQ'),(80,222,'com/aWSdm/bNIlfLrEqi'),(81,227,'com/aWSdm/gLidLvBJhp'),(82,234,'com/aWSdm/gLidLvBJhp'),(83,237,'iup/pr4f/umiob/abaipic/GameTemplate'),(84,238,'com/aWSdm/gLidLvBJhp'),(85,240,'com/aWSdm/wvtBnPliUhm'),(86,241,'com/aWSdm/gLidLvBJhp'),(87,242,'com/aWSdm/umDsBDEJBmiEwS'),(88,245,'com/aWSdm/umDsBDEJBmiEwS'),(89,248,'com/aWSdm/gLidLvBJhp'),(90,249,'com/aWSdm/gLidLvBJhp'),(91,250,'iup/pr4f/umiob/abaipic/GameTemplate'),(92,259,'iup/pr4f/umiob/abaipic/GameTemplate'),(93,261,'com/aWSdm/gLidLvBJhp'),(94,262,'com/aWSdm/gLidLvBJhp'),(95,263,'com/aWSdm/gLidLvBJhp');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,10,2),(3,11,3),(4,12,4),(5,23,5),(6,25,6),(7,32,7),(8,35,8),(9,37,9),(10,39,10),(11,40,11),(12,41,12),(13,45,13),(14,47,14),(15,49,15),(16,51,16),(17,53,17),(18,56,18),(19,57,20),(20,58,19),(21,61,21),(22,62,22),(23,64,23),(24,68,24),(25,74,25),(26,76,26),(27,85,27),(28,86,28),(29,87,29),(30,88,30),(31,90,31),(32,91,32),(33,92,33),(34,94,34),(35,96,35),(36,98,36),(37,99,37),(38,100,38),(39,101,39),(40,103,40),(41,102,41),(42,104,42),(43,106,43),(44,107,44),(45,109,45),(46,110,46),(47,111,47),(48,114,48),(49,123,49),(50,128,50),(51,132,51),(52,133,52),(53,135,53),(54,137,54),(55,140,55),(56,148,56),(57,151,57),(58,149,58),(59,152,59),(60,154,61),(61,155,60),(62,158,62),(63,159,63),(64,160,64),(65,162,65),(66,188,66),(67,189,67),(68,190,68),(69,192,69),(70,193,70),(71,195,71),(72,209,72),(73,212,73),(74,217,74),(75,232,75),(76,233,76),(77,246,77),(78,247,78),(79,251,79),(80,252,80),(81,253,81),(82,254,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.INTENT'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.TITLE'),(4,4,'android.intent.extra.INTENT'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.TITLE'),(7,6,'android.intent.extra.INTENT'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.TITLE'),(10,8,'android.intent.extra.INTENT'),(11,9,'android.intent.extra.TITLE'),(12,9,'android.intent.extra.INTENT'),(13,19,'id'),(14,19,'df'),(15,19,'fa'),(16,34,'midletapkpath'),(17,34,'midletclass'),(18,34,'(.*)'),(19,34,'midleturl'),(20,36,'midletapkpath'),(21,36,'midleturl'),(22,38,'midletapkpath'),(23,38,'midletclass'),(24,38,'midleturl'),(25,44,'midletapkpath'),(26,44,'(.*)'),(27,44,'midleturl'),(28,52,'CLIENT_PACKAGE'),(29,52,'URL'),(30,52,'isFinshClose'),(31,52,'offers_webview_tag'),(32,65,'apkVersion'),(33,65,'apkURL'),(34,65,'apkInfo'),(35,65,'packageName'),(36,65,'apkSoftID'),(37,65,'apkTitle'),(38,65,'iconURL'),(39,65,'apkSize'),(40,65,'imageURL'),(41,89,'popurl'),(42,89,'poptitle'),(43,105,'CLIENT_PACKAGE'),(44,105,'URL'),(45,105,'offers_webview_tag'),(46,108,'CLIENT_PACKAGE'),(47,108,'URL'),(48,108,'isFinshClose'),(49,108,'offers_webview_tag'),(50,112,'CLIENT_PACKAGE'),(51,112,'URL'),(52,112,'offers_webview_tag'),(53,115,'CLIENT_PACKAGE'),(54,115,'URL'),(55,115,'isFinshClose'),(56,115,'offers_webview_tag'),(57,118,'popurl'),(58,118,'poptitle'),(59,124,''),(60,127,''),(61,127,'(.*)'),(62,129,'USER_ID'),(63,129,'CLIENT_PACKAGE'),(64,129,'Offers_URL'),(65,129,'offers_webview_tag'),(66,131,'(.*)'),(67,129,'URL_PARAMS'),(68,146,'(.*)'),(69,170,'game'),(70,170,'fromtype'),(71,191,'id'),(72,191,'from_alert'),(73,191,'detail_flag'),(74,198,'CLIENT_PACKAGE'),(75,198,'URL'),(76,198,'offers_webview_tag'),(77,200,'CLIENT_PACKAGE'),(78,200,'URL'),(79,200,'isFinshClose'),(80,200,'offers_webview_tag'),(81,211,'(.*)'),(82,214,'apkVersion'),(83,214,'apkURL'),(84,214,'apkInfo'),(85,214,'packageName'),(86,214,'apkSoftID'),(87,214,'apkTitle'),(88,214,'iconURL'),(89,214,'apkSize'),(90,214,'imageURL'),(91,222,'title'),(92,222,'btn_txt'),(93,222,'need_adb_flag'),(94,222,'cont'),(95,222,'close_flag'),(96,240,'popurl'),(97,240,'poptitle'),(98,242,'id'),(99,242,'from_alert'),(100,242,'detail_flag'),(101,245,'game'),(102,245,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,5,2),(4,8,1),(5,9,1),(6,10,1),(7,11,1),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,1),(13,17,1),(14,18,2),(15,19,3),(16,19,2),(17,21,1),(18,23,1),(19,24,2),(20,25,2),(21,26,8),(22,27,8),(23,28,9),(24,29,10),(25,30,10),(26,31,2),(27,31,9),(28,32,8),(29,33,9),(30,35,1),(31,36,1),(32,37,1),(33,38,1),(34,39,1),(35,40,8),(36,41,2),(37,41,3),(38,42,2),(39,43,9),(40,44,2),(41,45,10),(42,46,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,6,2),(4,8,1),(5,9,1),(6,16,1),(7,17,1),(8,21,1),(9,23,1),(10,29,6),(11,30,6),(12,35,1),(13,39,1),(14,40,6),(15,45,6),(16,46,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,26,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,30,'package',NULL,NULL,NULL,NULL,NULL),(5,32,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'(.*)','(.*)'),(2,23,'(.*)','(.*)'),(3,25,'application','vnd.android.package-archive'),(4,34,'application','vnd.android.package-archive'),(5,36,'application','vnd.android.package-archive'),(6,38,'application','vnd.android.package-archive'),(7,44,'application','vnd.android.package-archive'),(8,53,'(.*)','(.*)'),(9,56,'(.*)','(.*)'),(10,58,'application','vnd.android.package-archive'),(11,57,'application','vnd.android.package-archive'),(12,68,'application','vnd.android.package-archive'),(13,76,'(.*)','(.*)'),(14,86,'application','vnd.android.package-archive'),(15,92,'(.*)','(.*)'),(16,96,'(.*)','(.*)'),(17,106,'(.*)','(.*)'),(18,109,'(.*)','(.*)'),(19,111,'(.*)','(.*)'),(20,114,'(.*)','(.*)'),(21,132,'(.*)','(.*)'),(22,133,'application','vnd.android.package-archive'),(23,149,'application','vnd.android.package-archive'),(24,154,'(.*)','(.*)'),(25,158,'(.*)','(.*)'),(26,159,'(.*)','(.*)'),(27,160,'(.*)','(.*)'),(28,162,'application','vnd.android.package-archive'),(29,209,'application','vnd.android.package-archive'),(30,217,'(.*)','(.*)'),(31,246,'application','vnd.android.package-archive'),(32,247,'application','vnd.android.package-archive'),(33,251,'application','vnd.android.package-archive'),(34,252,'application','vnd.android.package-archive'),(35,253,'application','vnd.android.package-archive'),(36,254,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,13,'com.unbievnb.bo'),(2,15,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(3,16,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(4,17,'(.*)'),(5,18,'(.*)'),(6,19,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(7,20,'(.*)'),(8,21,''),(9,22,''),(10,24,'(.*)'),(11,26,'(.*)'),(12,27,'(.*)'),(13,28,'(.*)'),(14,29,'(.*)'),(15,30,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(16,31,'com.ecmgqbugo'),(17,33,'com.ecmgqbugo'),(18,34,'com.netmite.andme'),(19,35,''),(20,36,'com.netmite.andme'),(21,37,''),(22,39,'(.*)'),(23,38,'com.netmite.andme'),(24,40,'(.*)'),(25,43,'(.*)'),(26,46,'(.*)'),(27,45,''),(28,44,'com.netmite.andme'),(29,48,'com.ecmgqbugo'),(30,47,'(.*)'),(31,50,'com.ecmgqbugo'),(32,52,'com.idaliusqgp.onrwqoperdm'),(33,54,'(.*)'),(34,55,'(.*)'),(35,59,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(36,60,'alterforce.kjuutbqfh_hkoh'),(37,63,'alterforce.kjuutbqfh_hkoh'),(38,67,'alterforce.kjuutbqfh_hkoh'),(39,66,'(.*)'),(40,69,''),(41,70,'alterforce.kjuutbqfh_hkoh'),(42,65,'com.ecmgqbugo'),(43,71,''),(44,72,'alterforce.kjuutbqfh_hkoh'),(45,73,'(.*)'),(46,75,'com.ecmgqbugo'),(47,77,'alterforce.kjuutbqfh_hkoh'),(48,78,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(49,79,'com.ecmgqbugo'),(50,80,'(.*)'),(51,81,'com.idaliusqgp.onrwqoperdm'),(52,82,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(53,83,'(.*)'),(54,84,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(55,85,''),(56,87,''),(57,89,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(58,91,'(.*)'),(59,93,'(.*)'),(60,95,'(.*)'),(61,94,'(.*)'),(62,97,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(63,98,''),(64,102,'(.*)'),(65,105,'com.idaliusqgp.onrwqoperdm'),(66,108,'com.idaliusqgp.onrwqoperdm'),(67,112,'com.ecmgqbugo'),(68,113,'com.android.vending'),(69,117,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(70,115,'com.ecmgqbugo'),(71,116,'com.idaliusqgp.onrwqoperdm'),(72,118,'alterforce.kjuutbqfh_hkoh'),(73,119,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(74,120,'com.ecmgqbugo'),(75,121,'(.*)'),(76,122,''),(77,124,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(78,126,''),(79,127,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(80,130,'(.*)'),(81,131,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(82,129,'com.idaliusqgp.onrwqoperdm'),(83,134,'(.*)'),(84,138,'(.*)'),(85,139,'(.*)'),(86,141,'com.ecmgqbugo'),(87,142,'(.*)'),(88,144,'(.*)'),(89,146,'com.ecmgqbugo'),(90,145,'(.*)'),(91,147,'alterforce.kjuutbqfh_hkoh'),(92,150,'com.hmmh.vvjfrtnisisdaig'),(93,153,'com.idaliusqgp.onrwqoperdm'),(94,156,'com.hmmh.vvjfrtnisisdaig'),(95,157,'com.ecmgqbugo'),(96,161,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(97,163,'alterforce.kjuutbqfh_hkoh'),(98,164,'(.*)'),(99,165,''),(100,166,'com.hmmh.vvjfrtnisisdaig'),(101,168,''),(102,169,'(.*)'),(103,170,'alterforce.kjuutbqfh_hkoh'),(104,171,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(105,172,'alterforce.kjuutbqfh_hkoh'),(106,173,'com.hmmh.vvjfrtnisisdaig'),(107,174,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(108,175,'alterforce.kjuutbqfh_hkoh'),(109,177,'com.crdscnw.irawf.thctgndh.etoi_dvducf_b'),(110,176,'(.*)'),(111,178,'(.*)'),(112,179,'(.*)'),(113,180,'(.*)'),(114,183,'com.hmmh.vvjfrtnisisdaig'),(115,181,''),(116,182,''),(117,184,''),(118,185,''),(119,186,'(.*)'),(120,187,'(.*)'),(121,188,''),(122,189,''),(123,190,'(.*)'),(124,191,'alterforce.kjuutbqfh_hkoh'),(125,192,'(.*)'),(126,193,''),(127,194,'alterforce.kjuutbqfh_hkoh'),(128,195,'(.*)'),(129,196,'(.*)'),(130,197,''),(131,198,'com.hmmh.vvjfrtnisisdaig'),(132,199,''),(133,201,'(.*)'),(134,200,'com.hmmh.vvjfrtnisisdaig'),(135,202,'alterforce.kjuutbqfh_hkoh'),(136,203,'(.*)'),(137,204,''),(138,205,'com.hmmh.vvjfrtnisisdaig'),(139,206,''),(140,207,'com.hmmh.vvjfrtnisisdaig'),(141,208,'(.*)'),(142,210,'com.hmmh.vvjfrtnisisdaig'),(143,211,'com.hmmh.vvjfrtnisisdaig'),(144,213,'com.hmmh.vvjfrtnisisdaig'),(145,214,'com.hmmh.vvjfrtnisisdaig'),(146,215,'(.*)'),(147,216,'(.*)'),(148,218,'(.*)'),(149,219,''),(150,220,''),(151,221,'(.*)'),(152,222,'iup.pr4f.umiob.abaipic'),(153,223,'(.*)'),(154,224,''),(155,225,''),(156,226,'(.*)'),(157,227,'iup.pr4f.umiob.abaipic'),(158,228,'(.*)'),(159,229,''),(160,230,''),(161,231,'(.*)'),(162,234,'iup.pr4f.umiob.abaipic'),(163,235,'(.*)'),(164,236,'(.*)'),(165,237,'iup.pr4f.umiob.abaipic'),(166,238,'iup.pr4f.umiob.abaipic'),(167,240,'iup.pr4f.umiob.abaipic'),(168,241,'iup.pr4f.umiob.abaipic'),(169,242,'iup.pr4f.umiob.abaipic'),(170,243,'(.*)'),(171,244,'(.*)'),(172,245,'iup.pr4f.umiob.abaipic'),(173,248,'iup.pr4f.umiob.abaipic'),(174,249,'iup.pr4f.umiob.abaipic'),(175,250,'iup.pr4f.umiob.abaipic'),(176,255,'(.*)'),(177,256,''),(178,257,''),(179,258,'(.*)'),(180,259,'iup.pr4f.umiob.abaipic'),(181,261,'iup.pr4f.umiob.abaipic'),(182,262,'iup.pr4f.umiob.abaipic'),(183,263,'iup.pr4f.umiob.abaipic');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,6,0),(5,15,0),(6,16,0),(7,17,0),(8,18,0),(9,19,0),(10,22,0),(11,23,0),(12,24,0),(13,25,0),(14,26,0),(15,27,0),(16,32,0),(17,33,0),(18,35,0),(19,34,0),(20,36,0),(21,40,0),(22,42,0),(23,43,0),(24,52,0),(25,53,0),(26,54,0),(27,55,0),(28,56,0),(29,35,0),(30,34,0),(31,57,0),(32,58,0),(33,59,0),(34,60,0),(35,61,0),(36,63,0),(37,64,0),(38,65,0),(39,68,0),(40,34,0),(41,69,0),(42,70,0),(43,71,0),(44,72,0),(45,69,0),(46,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,2,1,0),(6,2,1,0),(7,2,1,0),(8,2,1,0),(9,2,1,0),(10,3,1,0),(11,3,1,0),(12,4,1,0),(13,5,0,0),(14,6,1,0),(15,7,0,0),(16,7,0,0),(17,8,1,0),(18,8,1,0),(19,9,0,0),(20,10,1,0),(21,10,1,0),(22,10,1,0),(23,11,1,0),(24,10,1,0),(25,12,1,0),(26,13,1,0),(27,13,1,0),(28,14,1,0),(29,14,1,0),(30,15,0,0),(31,16,0,0),(32,17,1,0),(33,18,0,0),(34,17,0,0),(35,19,1,0),(36,17,0,0),(37,19,1,0),(38,17,0,0),(39,19,1,0),(40,19,1,0),(41,17,1,0),(42,20,1,0),(43,20,1,0),(44,17,0,0),(45,19,0,0),(46,20,1,0),(47,19,0,0),(48,21,0,0),(49,22,1,0),(50,23,0,0),(51,22,1,0),(52,24,0,0),(53,22,1,0),(54,25,1,0),(55,25,1,0),(56,22,1,0),(57,26,1,0),(58,27,1,0),(59,28,0,0),(60,29,0,0),(61,30,1,0),(62,30,1,0),(63,31,0,0),(64,32,1,0),(65,33,0,0),(66,34,1,0),(67,35,0,0),(68,36,1,0),(69,34,1,0),(70,37,0,0),(71,34,1,0),(72,38,0,0),(73,34,1,0),(74,39,1,0),(75,40,0,0),(76,39,1,0),(77,41,0,0),(78,42,0,0),(79,43,0,0),(80,44,1,0),(81,46,0,0),(82,45,0,0),(83,44,1,0),(84,45,0,0),(85,47,1,0),(86,48,1,0),(87,47,1,0),(88,49,1,0),(89,50,0,0),(90,49,1,0),(91,47,1,0),(92,49,1,0),(93,51,1,0),(94,47,1,0),(95,51,1,0),(96,49,1,0),(97,52,0,0),(98,47,0,0),(99,53,1,0),(100,54,1,0),(101,55,1,0),(102,47,0,0),(103,54,1,0),(104,55,1,0),(105,56,0,0),(106,55,1,0),(107,57,1,0),(108,56,0,0),(109,55,1,0),(110,57,1,0),(111,57,1,0),(112,58,0,0),(113,59,0,0),(114,57,1,0),(115,58,0,0),(116,61,0,0),(117,60,0,0),(118,62,0,0),(119,63,0,0),(120,64,0,0),(121,65,1,0),(122,65,1,0),(123,66,1,0),(124,68,0,0),(125,67,1,0),(126,65,1,0),(127,68,0,0),(128,69,1,0),(129,70,0,0),(130,65,1,0),(131,68,0,0),(132,69,1,0),(133,71,1,0),(134,72,1,0),(135,69,1,0),(136,74,1,0),(137,73,1,0),(138,74,1,0),(139,72,1,0),(140,73,1,0),(141,75,0,0),(142,74,1,0),(143,76,1,0),(144,76,1,0),(145,76,1,0),(146,77,0,0),(147,78,0,0),(148,79,1,0),(149,80,1,0),(150,81,0,0),(151,79,1,0),(152,82,1,0),(153,83,0,0),(154,79,1,0),(155,82,1,0),(156,84,0,0),(157,85,0,0),(158,79,1,0),(159,82,1,0),(160,82,1,0),(161,86,0,0),(162,87,1,0),(163,88,0,0),(164,89,1,0),(165,89,1,0),(166,90,0,0),(167,91,1,0),(168,89,1,0),(169,89,1,0),(170,92,0,0),(171,93,0,0),(172,94,0,0),(173,95,0,0),(174,96,0,0),(175,97,0,0),(176,98,1,0),(177,99,0,0),(178,98,1,0),(179,101,1,0),(180,100,1,0),(181,101,1,0),(182,100,1,0),(183,102,0,0),(184,101,1,0),(185,100,1,0),(186,101,1,0),(187,100,1,0),(188,103,1,0),(189,103,1,0),(190,103,1,0),(191,104,0,0),(192,103,1,0),(193,103,0,0),(194,105,0,0),(195,103,0,0),(196,106,1,0),(197,106,1,0),(198,107,0,0),(199,106,1,0),(200,107,0,0),(201,106,1,0),(202,108,0,0),(203,109,1,0),(204,109,1,0),(205,110,0,0),(206,109,1,0),(207,111,0,0),(208,109,1,0),(209,112,1,0),(210,113,0,0),(211,114,0,0),(212,115,1,0),(213,116,0,0),(214,117,0,0),(215,118,1,0),(216,118,1,0),(217,119,1,0),(218,120,1,0),(219,120,1,0),(220,120,1,0),(221,120,1,0),(222,121,0,0),(223,122,1,0),(224,122,1,0),(225,122,1,0),(226,122,1,0),(227,123,0,0),(228,124,1,0),(229,124,1,0),(230,124,1,0),(231,124,1,0),(232,125,1,0),(233,125,1,0),(234,126,0,0),(235,127,1,0),(236,127,1,0),(237,128,0,0),(238,129,0,0),(239,130,1,0),(240,131,0,0),(241,132,0,0),(242,133,0,0),(243,134,1,0),(244,134,1,0),(245,135,0,0),(246,136,1,0),(247,136,1,0),(248,137,0,0),(249,138,0,0),(250,139,0,0),(251,140,1,0),(252,140,1,0),(253,141,1,0),(254,141,1,0),(255,142,1,0),(256,142,1,0),(257,142,1,0),(258,142,1,0),(259,143,0,0),(260,144,1,0),(261,145,0,0),(262,146,0,0),(263,147,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.CALL_PHONE'),(9,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.SYSTEM_ALERT_WINDOW'),(5,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(13,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.greenlog.bb',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://www.netmite.com/android/andme_signed.apk',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'http://market.android.com/details?id=com.idaliusqgp.onrwqoperdm',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'http://www.netmite.com/android/andme_signed.apk',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://',NULL,NULL,NULL),(61,NULL,NULL,'file://',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(78,NULL,NULL,'file://',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(80,NULL,NULL,'file://',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,4,1),(16,3,1),(17,4,2),(18,3,2),(19,4,3),(20,3,3),(21,4,4),(22,3,4),(23,4,6),(24,3,6),(25,4,7),(26,3,7),(27,4,9),(28,3,9),(29,4,12),(30,3,11),(31,3,12),(32,5,1),(33,5,2),(34,5,3),(35,5,4),(36,5,6),(37,5,9),(38,5,13),(39,6,1),(40,6,2),(41,6,3),(42,6,5),(43,6,7),(44,6,8),(45,6,9),(46,7,1),(47,7,2),(48,7,3),(49,7,4),(50,7,5),(51,7,6),(52,7,7),(53,7,9),(54,7,10),(55,7,11),(56,7,12),(57,7,14),(58,7,15);
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

-- Dump completed on 2015-10-09  0:39:32
