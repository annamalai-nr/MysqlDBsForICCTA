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
) ENGINE=InnoDB AUTO_INCREMENT=1932 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,17,2,NULL),(2,3,17,2,NULL),(3,4,17,2,NULL),(4,5,17,2,NULL),(5,6,17,2,NULL),(6,7,17,2,NULL),(7,8,17,2,NULL),(8,9,17,2,NULL),(9,128,17,2,NULL),(10,135,17,2,NULL),(11,54,17,2,NULL),(12,55,17,2,NULL),(13,80,17,2,NULL),(14,83,17,2,NULL),(15,134,17,2,NULL),(16,139,17,2,NULL),(17,203,17,2,NULL),(18,204,17,2,NULL),(19,206,17,2,NULL),(20,208,17,2,NULL),(21,100,17,2,NULL),(22,103,17,2,NULL),(23,167,17,2,NULL),(24,26,17,2,NULL),(25,27,17,2,NULL),(26,17,17,2,NULL),(27,18,17,2,NULL),(28,66,17,2,NULL),(29,69,17,2,NULL),(30,71,17,2,NULL),(31,73,17,2,NULL),(32,61,17,2,NULL),(33,62,17,2,NULL),(34,14,17,2,NULL),(35,93,17,2,NULL),(36,95,17,2,NULL),(37,215,17,2,NULL),(38,216,17,2,NULL),(39,235,17,2,NULL),(40,236,17,2,NULL),(41,243,17,2,NULL),(42,244,17,2,NULL),(43,255,17,2,NULL),(44,256,17,2,NULL),(45,257,17,2,NULL),(46,258,17,2,NULL),(47,232,17,2,NULL),(48,233,17,2,NULL),(49,260,17,2,NULL),(50,239,17,2,NULL),(51,60,32,2,NULL),(52,77,32,2,NULL),(53,2,18,2,NULL),(54,3,18,2,NULL),(55,4,18,2,NULL),(56,5,18,2,NULL),(57,6,18,2,NULL),(58,7,18,2,NULL),(59,8,18,2,NULL),(60,9,18,2,NULL),(61,128,18,2,NULL),(62,135,18,2,NULL),(63,54,18,2,NULL),(64,55,18,2,NULL),(65,80,18,2,NULL),(66,83,18,2,NULL),(67,134,18,2,NULL),(68,139,18,2,NULL),(69,203,18,2,NULL),(70,204,18,2,NULL),(71,206,18,2,NULL),(72,208,18,2,NULL),(73,100,18,2,NULL),(74,103,18,2,NULL),(75,167,18,2,NULL),(76,26,18,2,NULL),(77,27,18,2,NULL),(78,17,18,2,NULL),(79,18,18,2,NULL),(80,66,18,2,NULL),(81,69,18,2,NULL),(82,71,18,2,NULL),(83,73,18,2,NULL),(84,61,18,2,NULL),(85,62,18,2,NULL),(86,14,18,2,NULL),(87,93,18,2,NULL),(88,95,18,2,NULL),(89,215,18,2,NULL),(90,216,18,2,NULL),(91,235,18,2,NULL),(92,236,18,2,NULL),(93,243,18,2,NULL),(94,244,18,2,NULL),(95,255,18,2,NULL),(96,256,18,2,NULL),(97,257,18,2,NULL),(98,258,18,2,NULL),(99,232,18,2,NULL),(100,233,18,2,NULL),(101,260,18,2,NULL),(102,239,18,2,NULL),(103,202,17,2,NULL),(104,172,32,2,NULL),(105,175,32,2,NULL),(106,80,1,2,NULL),(107,83,1,2,NULL),(108,2,22,2,NULL),(109,3,22,2,NULL),(110,4,22,2,NULL),(111,5,22,2,NULL),(112,6,22,2,NULL),(113,7,22,2,NULL),(114,8,22,2,NULL),(115,9,22,2,NULL),(116,80,3,2,NULL),(117,83,3,2,NULL),(118,80,4,2,NULL),(119,83,4,2,NULL),(120,128,22,2,NULL),(121,135,22,2,NULL),(122,80,6,2,NULL),(123,83,6,2,NULL),(124,54,22,2,NULL),(125,55,22,2,NULL),(126,80,15,2,NULL),(127,83,15,2,NULL),(128,80,57,2,NULL),(129,83,57,2,NULL),(130,80,24,2,NULL),(131,83,24,2,NULL),(132,134,22,2,NULL),(133,139,22,2,NULL),(134,80,26,2,NULL),(135,83,26,2,NULL),(136,203,22,2,NULL),(137,204,22,2,NULL),(138,206,22,2,NULL),(139,208,22,2,NULL),(140,100,22,2,NULL),(141,103,22,2,NULL),(142,167,22,2,NULL),(143,80,32,2,NULL),(144,83,32,2,NULL),(145,80,34,2,NULL),(146,83,34,2,NULL),(147,80,59,2,NULL),(148,83,59,2,NULL),(149,80,70,2,NULL),(150,83,70,2,NULL),(151,80,16,2,NULL),(152,83,16,2,NULL),(153,80,19,2,NULL),(154,83,19,2,NULL),(155,80,23,2,NULL),(156,83,23,2,NULL),(157,26,22,2,NULL),(158,27,22,2,NULL),(159,80,25,2,NULL),(160,83,25,2,NULL),(161,17,22,2,NULL),(162,18,22,2,NULL),(163,80,27,2,NULL),(164,83,27,2,NULL),(165,66,22,2,NULL),(166,69,22,2,NULL),(167,71,22,2,NULL),(168,73,22,2,NULL),(169,61,22,2,NULL),(170,62,22,2,NULL),(171,14,22,2,NULL),(172,80,33,2,NULL),(173,83,33,2,NULL),(174,80,35,2,NULL),(175,83,35,2,NULL),(176,80,53,2,NULL),(177,83,53,2,NULL),(178,80,56,2,NULL),(179,83,56,2,NULL),(180,80,36,2,NULL),(181,83,36,2,NULL),(182,93,22,2,NULL),(183,95,22,2,NULL),(184,80,40,2,NULL),(185,83,40,2,NULL),(186,80,42,2,NULL),(187,83,42,2,NULL),(188,80,43,2,NULL),(189,83,43,2,NULL),(190,215,22,2,NULL),(191,216,22,2,NULL),(192,80,52,2,NULL),(193,83,52,2,NULL),(194,80,60,2,NULL),(195,83,60,2,NULL),(196,80,61,2,NULL),(197,83,61,2,NULL),(198,80,63,2,NULL),(199,83,63,2,NULL),(200,235,22,2,NULL),(201,236,22,2,NULL),(202,80,64,2,NULL),(203,83,64,2,NULL),(204,243,22,2,NULL),(205,244,22,2,NULL),(206,80,65,2,NULL),(207,83,65,2,NULL),(208,255,22,2,NULL),(209,256,22,2,NULL),(210,257,22,2,NULL),(211,258,22,2,NULL),(212,232,22,2,NULL),(213,233,22,2,NULL),(214,260,22,2,NULL),(215,239,22,2,NULL),(216,80,68,2,NULL),(217,83,68,2,NULL),(218,80,69,2,NULL),(219,83,69,2,NULL),(220,80,71,2,NULL),(221,83,71,2,NULL),(222,80,72,2,NULL),(223,83,72,2,NULL),(224,170,22,2,NULL),(225,134,1,2,NULL),(226,139,1,2,NULL),(227,2,24,2,NULL),(228,3,24,2,NULL),(229,4,24,2,NULL),(230,5,24,2,NULL),(231,6,24,2,NULL),(232,7,24,2,NULL),(233,8,24,2,NULL),(234,9,24,2,NULL),(235,134,3,2,NULL),(236,139,3,2,NULL),(237,134,4,2,NULL),(238,139,4,2,NULL),(239,128,24,2,NULL),(240,135,24,2,NULL),(241,134,6,2,NULL),(242,139,6,2,NULL),(243,54,24,2,NULL),(244,55,24,2,NULL),(245,134,15,2,NULL),(246,139,15,2,NULL),(247,134,57,2,NULL),(248,139,57,2,NULL),(249,134,26,2,NULL),(250,139,26,2,NULL),(251,203,24,2,NULL),(252,204,24,2,NULL),(253,206,24,2,NULL),(254,208,24,2,NULL),(255,100,24,2,NULL),(256,103,24,2,NULL),(257,167,24,2,NULL),(258,134,32,2,NULL),(259,139,32,2,NULL),(260,134,34,2,NULL),(261,139,34,2,NULL),(262,134,59,2,NULL),(263,139,59,2,NULL),(264,134,70,2,NULL),(265,139,70,2,NULL),(266,134,16,2,NULL),(267,139,16,2,NULL),(268,134,19,2,NULL),(269,139,19,2,NULL),(270,134,23,2,NULL),(271,139,23,2,NULL),(272,26,24,2,NULL),(273,27,24,2,NULL),(274,134,25,2,NULL),(275,139,25,2,NULL),(276,17,24,2,NULL),(277,18,24,2,NULL),(278,134,27,2,NULL),(279,139,27,2,NULL),(280,66,24,2,NULL),(281,69,24,2,NULL),(282,71,24,2,NULL),(283,73,24,2,NULL),(284,61,24,2,NULL),(285,62,24,2,NULL),(286,14,24,2,NULL),(287,134,33,2,NULL),(288,139,33,2,NULL),(289,134,35,2,NULL),(290,139,35,2,NULL),(291,134,53,2,NULL),(292,139,53,2,NULL),(293,134,56,2,NULL),(294,139,56,2,NULL),(295,134,36,2,NULL),(296,139,36,2,NULL),(297,93,24,2,NULL),(298,95,24,2,NULL),(299,134,40,2,NULL),(300,139,40,2,NULL),(301,134,42,2,NULL),(302,139,42,2,NULL),(303,134,43,2,NULL),(304,139,43,2,NULL),(305,215,24,2,NULL),(306,216,24,2,NULL),(307,134,52,2,NULL),(308,139,52,2,NULL),(309,134,60,2,NULL),(310,139,60,2,NULL),(311,134,61,2,NULL),(312,139,61,2,NULL),(313,134,63,2,NULL),(314,139,63,2,NULL),(315,235,24,2,NULL),(316,236,24,2,NULL),(317,134,64,2,NULL),(318,139,64,2,NULL),(319,243,24,2,NULL),(320,244,24,2,NULL),(321,134,65,2,NULL),(322,139,65,2,NULL),(323,255,24,2,NULL),(324,256,24,2,NULL),(325,257,24,2,NULL),(326,258,24,2,NULL),(327,232,24,2,NULL),(328,233,24,2,NULL),(329,260,24,2,NULL),(330,239,24,2,NULL),(331,134,68,2,NULL),(332,139,68,2,NULL),(333,134,69,2,NULL),(334,139,69,2,NULL),(335,134,71,2,NULL),(336,139,71,2,NULL),(337,134,72,2,NULL),(338,139,72,2,NULL),(339,70,32,2,NULL),(340,203,1,2,NULL),(341,204,1,2,NULL),(342,206,1,2,NULL),(343,208,1,2,NULL),(344,2,26,2,NULL),(345,3,26,2,NULL),(346,4,26,2,NULL),(347,5,26,2,NULL),(348,6,26,2,NULL),(349,7,26,2,NULL),(350,8,26,2,NULL),(351,9,26,2,NULL),(352,203,3,2,NULL),(353,204,3,2,NULL),(354,206,3,2,NULL),(355,208,3,2,NULL),(356,203,4,2,NULL),(357,204,4,2,NULL),(358,206,4,2,NULL),(359,208,4,2,NULL),(360,128,26,2,NULL),(361,135,26,2,NULL),(362,203,6,2,NULL),(363,204,6,2,NULL),(364,206,6,2,NULL),(365,208,6,2,NULL),(366,54,26,2,NULL),(367,55,26,2,NULL),(368,203,15,2,NULL),(369,204,15,2,NULL),(370,206,15,2,NULL),(371,208,15,2,NULL),(372,203,57,2,NULL),(373,204,57,2,NULL),(374,206,57,2,NULL),(375,208,57,2,NULL),(376,100,26,2,NULL),(377,103,26,2,NULL),(378,167,26,2,NULL),(379,203,32,2,NULL),(380,204,32,2,NULL),(381,206,32,2,NULL),(382,208,32,2,NULL),(383,203,34,2,NULL),(384,204,34,2,NULL),(385,206,34,2,NULL),(386,208,34,2,NULL),(387,203,59,2,NULL),(388,204,59,2,NULL),(389,206,59,2,NULL),(390,208,59,2,NULL),(391,203,70,2,NULL),(392,204,70,2,NULL),(393,206,70,2,NULL),(394,208,70,2,NULL),(395,203,16,2,NULL),(396,204,16,2,NULL),(397,206,16,2,NULL),(398,208,16,2,NULL),(399,203,19,2,NULL),(400,204,19,2,NULL),(401,206,19,2,NULL),(402,208,19,2,NULL),(403,203,23,2,NULL),(404,204,23,2,NULL),(405,206,23,2,NULL),(406,208,23,2,NULL),(407,26,26,2,NULL),(408,27,26,2,NULL),(409,203,25,2,NULL),(410,204,25,2,NULL),(411,206,25,2,NULL),(412,208,25,2,NULL),(413,17,26,2,NULL),(414,18,26,2,NULL),(415,203,27,2,NULL),(416,204,27,2,NULL),(417,206,27,2,NULL),(418,208,27,2,NULL),(419,66,26,2,NULL),(420,69,26,2,NULL),(421,71,26,2,NULL),(422,73,26,2,NULL),(423,61,26,2,NULL),(424,62,26,2,NULL),(425,14,26,2,NULL),(426,203,33,2,NULL),(427,204,33,2,NULL),(428,206,33,2,NULL),(429,208,33,2,NULL),(430,203,35,2,NULL),(431,204,35,2,NULL),(432,206,35,2,NULL),(433,208,35,2,NULL),(434,203,53,2,NULL),(435,204,53,2,NULL),(436,206,53,2,NULL),(437,208,53,2,NULL),(438,203,56,2,NULL),(439,204,56,2,NULL),(440,206,56,2,NULL),(441,208,56,2,NULL),(442,203,36,2,NULL),(443,204,36,2,NULL),(444,206,36,2,NULL),(445,208,36,2,NULL),(446,93,26,2,NULL),(447,95,26,2,NULL),(448,203,40,2,NULL),(449,204,40,2,NULL),(450,206,40,2,NULL),(451,208,40,2,NULL),(452,203,42,2,NULL),(453,204,42,2,NULL),(454,206,42,2,NULL),(455,208,42,2,NULL),(456,203,43,2,NULL),(457,204,43,2,NULL),(458,206,43,2,NULL),(459,208,43,2,NULL),(460,215,26,2,NULL),(461,216,26,2,NULL),(462,203,52,2,NULL),(463,204,52,2,NULL),(464,206,52,2,NULL),(465,208,52,2,NULL),(466,203,60,2,NULL),(467,204,60,2,NULL),(468,206,60,2,NULL),(469,208,60,2,NULL),(470,203,61,2,NULL),(471,204,61,2,NULL),(472,206,61,2,NULL),(473,208,61,2,NULL),(474,203,63,2,NULL),(475,204,63,2,NULL),(476,206,63,2,NULL),(477,208,63,2,NULL),(478,235,26,2,NULL),(479,236,26,2,NULL),(480,203,64,2,NULL),(481,204,64,2,NULL),(482,206,64,2,NULL),(483,208,64,2,NULL),(484,243,26,2,NULL),(485,244,26,2,NULL),(486,203,65,2,NULL),(487,204,65,2,NULL),(488,206,65,2,NULL),(489,208,65,2,NULL),(490,255,26,2,NULL),(491,256,26,2,NULL),(492,257,26,2,NULL),(493,258,26,2,NULL),(494,232,26,2,NULL),(495,233,26,2,NULL),(496,260,26,2,NULL),(497,239,26,2,NULL),(498,203,68,2,NULL),(499,204,68,2,NULL),(500,206,68,2,NULL),(501,208,68,2,NULL),(502,203,69,2,NULL),(503,204,69,2,NULL),(504,206,69,2,NULL),(505,208,69,2,NULL),(506,203,71,2,NULL),(507,204,71,2,NULL),(508,206,71,2,NULL),(509,208,71,2,NULL),(510,203,72,2,NULL),(511,204,72,2,NULL),(512,206,72,2,NULL),(513,208,72,2,NULL),(514,191,22,2,NULL),(515,100,1,2,NULL),(516,103,1,2,NULL),(517,100,3,2,NULL),(518,103,3,2,NULL),(519,100,4,2,NULL),(520,103,4,2,NULL),(521,100,6,2,NULL),(522,103,6,2,NULL),(523,100,15,2,NULL),(524,103,15,2,NULL),(525,100,57,2,NULL),(526,103,57,2,NULL),(527,100,32,2,NULL),(528,103,32,2,NULL),(529,100,34,2,NULL),(530,103,34,2,NULL),(531,100,59,2,NULL),(532,103,59,2,NULL),(533,100,70,2,NULL),(534,103,70,2,NULL),(535,100,16,2,NULL),(536,103,16,2,NULL),(537,100,19,2,NULL),(538,103,19,2,NULL),(539,100,23,2,NULL),(540,103,23,2,NULL),(541,100,25,2,NULL),(542,103,25,2,NULL),(543,100,27,2,NULL),(544,103,27,2,NULL),(545,100,33,2,NULL),(546,103,33,2,NULL),(547,100,35,2,NULL),(548,103,35,2,NULL),(549,100,53,2,NULL),(550,103,53,2,NULL),(551,100,56,2,NULL),(552,103,56,2,NULL),(553,100,36,2,NULL),(554,103,36,2,NULL),(555,100,40,2,NULL),(556,103,40,2,NULL),(557,100,42,2,NULL),(558,103,42,2,NULL),(559,100,43,2,NULL),(560,103,43,2,NULL),(561,100,52,2,NULL),(562,103,52,2,NULL),(563,100,60,2,NULL),(564,103,60,2,NULL),(565,100,61,2,NULL),(566,103,61,2,NULL),(567,100,63,2,NULL),(568,103,63,2,NULL),(569,100,64,2,NULL),(570,103,64,2,NULL),(571,100,65,2,NULL),(572,103,65,2,NULL),(573,100,68,2,NULL),(574,103,68,2,NULL),(575,100,69,2,NULL),(576,103,69,2,NULL),(577,100,71,2,NULL),(578,103,71,2,NULL),(579,100,72,2,NULL),(580,103,72,2,NULL),(581,63,32,2,NULL),(582,167,1,2,NULL),(583,167,3,2,NULL),(584,167,4,2,NULL),(585,167,6,2,NULL),(586,167,15,2,NULL),(587,167,57,2,NULL),(588,167,32,2,NULL),(589,167,34,2,NULL),(590,167,59,2,NULL),(591,167,70,2,NULL),(592,167,16,2,NULL),(593,167,19,2,NULL),(594,167,23,2,NULL),(595,167,25,2,NULL),(596,167,27,2,NULL),(597,167,33,2,NULL),(598,167,35,2,NULL),(599,167,53,2,NULL),(600,167,56,2,NULL),(601,167,36,2,NULL),(602,167,40,2,NULL),(603,167,42,2,NULL),(604,167,43,2,NULL),(605,167,52,2,NULL),(606,167,60,2,NULL),(607,167,61,2,NULL),(608,167,63,2,NULL),(609,167,64,2,NULL),(610,167,65,2,NULL),(611,167,68,2,NULL),(612,167,69,2,NULL),(613,167,71,2,NULL),(614,167,72,2,NULL),(615,2,32,2,NULL),(616,3,32,2,NULL),(617,4,32,2,NULL),(618,5,32,2,NULL),(619,6,32,2,NULL),(620,7,32,2,NULL),(621,8,32,2,NULL),(622,9,32,2,NULL),(623,128,32,2,NULL),(624,135,32,2,NULL),(625,54,32,2,NULL),(626,55,32,2,NULL),(627,26,32,2,NULL),(628,27,32,2,NULL),(629,17,32,2,NULL),(630,18,32,2,NULL),(631,66,32,2,NULL),(632,69,32,2,NULL),(633,71,32,2,NULL),(634,73,32,2,NULL),(635,61,32,2,NULL),(636,62,32,2,NULL),(637,14,32,2,NULL),(638,93,32,2,NULL),(639,95,32,2,NULL),(640,215,32,2,NULL),(641,216,32,2,NULL),(642,235,32,2,NULL),(643,236,32,2,NULL),(644,243,32,2,NULL),(645,244,32,2,NULL),(646,255,32,2,NULL),(647,256,32,2,NULL),(648,257,32,2,NULL),(649,258,32,2,NULL),(650,232,32,2,NULL),(651,233,32,2,NULL),(652,260,32,2,NULL),(653,239,32,2,NULL),(654,72,32,2,NULL),(655,147,32,2,NULL),(656,194,32,2,NULL),(657,2,34,2,NULL),(658,3,34,2,NULL),(659,4,34,2,NULL),(660,5,34,2,NULL),(661,6,34,2,NULL),(662,7,34,2,NULL),(663,8,34,2,NULL),(664,9,34,2,NULL),(665,128,34,2,NULL),(666,135,34,2,NULL),(667,54,34,2,NULL),(668,55,34,2,NULL),(669,26,34,2,NULL),(670,27,34,2,NULL),(671,17,34,2,NULL),(672,18,34,2,NULL),(673,66,34,2,NULL),(674,69,34,2,NULL),(675,71,34,2,NULL),(676,73,34,2,NULL),(677,61,34,2,NULL),(678,62,34,2,NULL),(679,14,34,2,NULL),(680,93,34,2,NULL),(681,95,34,2,NULL),(682,215,34,2,NULL),(683,216,34,2,NULL),(684,235,34,2,NULL),(685,236,34,2,NULL),(686,243,34,2,NULL),(687,244,34,2,NULL),(688,255,34,2,NULL),(689,256,34,2,NULL),(690,257,34,2,NULL),(691,258,34,2,NULL),(692,232,34,2,NULL),(693,233,34,2,NULL),(694,260,34,2,NULL),(695,239,34,2,NULL),(696,2,59,2,NULL),(697,3,59,2,NULL),(698,4,59,2,NULL),(699,5,59,2,NULL),(700,6,59,2,NULL),(701,7,59,2,NULL),(702,8,59,2,NULL),(703,9,59,2,NULL),(704,128,59,2,NULL),(705,135,59,2,NULL),(706,54,59,2,NULL),(707,55,59,2,NULL),(708,26,59,2,NULL),(709,27,59,2,NULL),(710,17,59,2,NULL),(711,18,59,2,NULL),(712,66,59,2,NULL),(713,69,59,2,NULL),(714,71,59,2,NULL),(715,73,59,2,NULL),(716,61,59,2,NULL),(717,62,59,2,NULL),(718,14,59,2,NULL),(719,93,59,2,NULL),(720,95,59,2,NULL),(721,215,59,2,NULL),(722,216,59,2,NULL),(723,235,59,2,NULL),(724,236,59,2,NULL),(725,243,59,2,NULL),(726,244,59,2,NULL),(727,255,59,2,NULL),(728,256,59,2,NULL),(729,257,59,2,NULL),(730,258,59,2,NULL),(731,232,59,2,NULL),(732,233,59,2,NULL),(733,260,59,2,NULL),(734,239,59,2,NULL),(735,2,70,2,NULL),(736,3,70,2,NULL),(737,4,70,2,NULL),(738,5,70,2,NULL),(739,6,70,2,NULL),(740,7,70,2,NULL),(741,8,70,2,NULL),(742,9,70,2,NULL),(743,128,70,2,NULL),(744,135,70,2,NULL),(745,54,70,2,NULL),(746,55,70,2,NULL),(747,26,70,2,NULL),(748,27,70,2,NULL),(749,17,70,2,NULL),(750,18,70,2,NULL),(751,66,70,2,NULL),(752,69,70,2,NULL),(753,71,70,2,NULL),(754,73,70,2,NULL),(755,61,70,2,NULL),(756,62,70,2,NULL),(757,14,70,2,NULL),(758,93,70,2,NULL),(759,95,70,2,NULL),(760,215,70,2,NULL),(761,216,70,2,NULL),(762,235,70,2,NULL),(763,236,70,2,NULL),(764,243,70,2,NULL),(765,244,70,2,NULL),(766,255,70,2,NULL),(767,256,70,2,NULL),(768,257,70,2,NULL),(769,258,70,2,NULL),(770,232,70,2,NULL),(771,233,70,2,NULL),(772,260,70,2,NULL),(773,239,70,2,NULL),(774,2,60,2,NULL),(775,3,60,2,NULL),(776,4,60,2,NULL),(777,5,60,2,NULL),(778,6,60,2,NULL),(779,7,60,2,NULL),(780,8,60,2,NULL),(781,9,60,2,NULL),(782,128,60,2,NULL),(783,135,60,2,NULL),(784,54,60,2,NULL),(785,55,60,2,NULL),(786,26,60,2,NULL),(787,27,60,2,NULL),(788,17,60,2,NULL),(789,18,60,2,NULL),(790,66,60,2,NULL),(791,69,60,2,NULL),(792,71,60,2,NULL),(793,73,60,2,NULL),(794,61,60,2,NULL),(795,62,60,2,NULL),(796,14,60,2,NULL),(797,93,60,2,NULL),(798,95,60,2,NULL),(799,215,60,2,NULL),(800,216,60,2,NULL),(801,235,60,2,NULL),(802,236,60,2,NULL),(803,243,60,2,NULL),(804,244,60,2,NULL),(805,255,60,2,NULL),(806,256,60,2,NULL),(807,257,60,2,NULL),(808,258,60,2,NULL),(809,232,60,2,NULL),(810,233,60,2,NULL),(811,260,60,2,NULL),(812,239,60,2,NULL),(813,234,68,2,NULL),(814,238,68,2,NULL),(815,2,61,2,NULL),(816,3,61,2,NULL),(817,4,61,2,NULL),(818,5,61,2,NULL),(819,6,61,2,NULL),(820,7,61,2,NULL),(821,8,61,2,NULL),(822,9,61,2,NULL),(823,128,61,2,NULL),(824,135,61,2,NULL),(825,54,61,2,NULL),(826,55,61,2,NULL),(827,26,61,2,NULL),(828,27,61,2,NULL),(829,17,61,2,NULL),(830,18,61,2,NULL),(831,66,61,2,NULL),(832,69,61,2,NULL),(833,71,61,2,NULL),(834,73,61,2,NULL),(835,61,61,2,NULL),(836,62,61,2,NULL),(837,14,61,2,NULL),(838,93,61,2,NULL),(839,95,61,2,NULL),(840,215,61,2,NULL),(841,216,61,2,NULL),(842,235,61,2,NULL),(843,236,61,2,NULL),(844,243,61,2,NULL),(845,244,61,2,NULL),(846,255,61,2,NULL),(847,256,61,2,NULL),(848,257,61,2,NULL),(849,258,61,2,NULL),(850,232,61,2,NULL),(851,233,61,2,NULL),(852,260,61,2,NULL),(853,239,61,2,NULL),(854,259,60,2,NULL),(855,248,68,2,NULL),(856,261,68,2,NULL),(857,235,1,2,NULL),(858,236,1,2,NULL),(859,2,63,2,NULL),(860,3,63,2,NULL),(861,4,63,2,NULL),(862,5,63,2,NULL),(863,6,63,2,NULL),(864,7,63,2,NULL),(865,8,63,2,NULL),(866,9,63,2,NULL),(867,235,3,2,NULL),(868,236,3,2,NULL),(869,235,4,2,NULL),(870,236,4,2,NULL),(871,128,63,2,NULL),(872,135,63,2,NULL),(873,235,6,2,NULL),(874,236,6,2,NULL),(875,54,63,2,NULL),(876,55,63,2,NULL),(877,235,15,2,NULL),(878,236,15,2,NULL),(879,235,57,2,NULL),(880,236,57,2,NULL),(881,235,16,2,NULL),(882,236,16,2,NULL),(883,235,19,2,NULL),(884,236,19,2,NULL),(885,235,23,2,NULL),(886,236,23,2,NULL),(887,26,63,2,NULL),(888,27,63,2,NULL),(889,235,25,2,NULL),(890,236,25,2,NULL),(891,17,63,2,NULL),(892,18,63,2,NULL),(893,235,27,2,NULL),(894,236,27,2,NULL),(895,66,63,2,NULL),(896,69,63,2,NULL),(897,71,63,2,NULL),(898,73,63,2,NULL),(899,61,63,2,NULL),(900,62,63,2,NULL),(901,14,63,2,NULL),(902,235,33,2,NULL),(903,236,33,2,NULL),(904,235,35,2,NULL),(905,236,35,2,NULL),(906,235,53,2,NULL),(907,236,53,2,NULL),(908,235,56,2,NULL),(909,236,56,2,NULL),(910,235,36,2,NULL),(911,236,36,2,NULL),(912,93,63,2,NULL),(913,95,63,2,NULL),(914,235,40,2,NULL),(915,236,40,2,NULL),(916,235,42,2,NULL),(917,236,42,2,NULL),(918,235,43,2,NULL),(919,236,43,2,NULL),(920,215,63,2,NULL),(921,216,63,2,NULL),(922,235,52,2,NULL),(923,236,52,2,NULL),(924,235,64,2,NULL),(925,236,64,2,NULL),(926,243,63,2,NULL),(927,244,63,2,NULL),(928,235,65,2,NULL),(929,236,65,2,NULL),(930,255,63,2,NULL),(931,256,63,2,NULL),(932,257,63,2,NULL),(933,258,63,2,NULL),(934,232,63,2,NULL),(935,233,63,2,NULL),(936,260,63,2,NULL),(937,239,63,2,NULL),(938,235,68,2,NULL),(939,236,68,2,NULL),(940,235,69,2,NULL),(941,236,69,2,NULL),(942,235,71,2,NULL),(943,236,71,2,NULL),(944,235,72,2,NULL),(945,236,72,2,NULL),(946,245,63,2,NULL),(947,243,1,2,NULL),(948,244,1,2,NULL),(949,2,64,2,NULL),(950,3,64,2,NULL),(951,4,64,2,NULL),(952,5,64,2,NULL),(953,6,64,2,NULL),(954,7,64,2,NULL),(955,8,64,2,NULL),(956,9,64,2,NULL),(957,243,3,2,NULL),(958,244,3,2,NULL),(959,243,4,2,NULL),(960,244,4,2,NULL),(961,128,64,2,NULL),(962,135,64,2,NULL),(963,243,6,2,NULL),(964,244,6,2,NULL),(965,54,64,2,NULL),(966,55,64,2,NULL),(967,243,15,2,NULL),(968,244,15,2,NULL),(969,243,57,2,NULL),(970,244,57,2,NULL),(971,243,16,2,NULL),(972,244,16,2,NULL),(973,243,19,2,NULL),(974,244,19,2,NULL),(975,243,23,2,NULL),(976,244,23,2,NULL),(977,26,64,2,NULL),(978,27,64,2,NULL),(979,243,25,2,NULL),(980,244,25,2,NULL),(981,17,64,2,NULL),(982,18,64,2,NULL),(983,243,27,2,NULL),(984,244,27,2,NULL),(985,66,64,2,NULL),(986,69,64,2,NULL),(987,71,64,2,NULL),(988,73,64,2,NULL),(989,61,64,2,NULL),(990,62,64,2,NULL),(991,14,64,2,NULL),(992,243,33,2,NULL),(993,244,33,2,NULL),(994,243,35,2,NULL),(995,244,35,2,NULL),(996,243,53,2,NULL),(997,244,53,2,NULL),(998,243,56,2,NULL),(999,244,56,2,NULL),(1000,243,36,2,NULL),(1001,244,36,2,NULL),(1002,93,64,2,NULL),(1003,95,64,2,NULL),(1004,243,40,2,NULL),(1005,244,40,2,NULL),(1006,243,42,2,NULL),(1007,244,42,2,NULL),(1008,243,43,2,NULL),(1009,244,43,2,NULL),(1010,215,64,2,NULL),(1011,216,64,2,NULL),(1012,243,52,2,NULL),(1013,244,52,2,NULL),(1014,243,65,2,NULL),(1015,244,65,2,NULL),(1016,255,64,2,NULL),(1017,256,64,2,NULL),(1018,257,64,2,NULL),(1019,258,64,2,NULL),(1020,232,64,2,NULL),(1021,233,64,2,NULL),(1022,260,64,2,NULL),(1023,239,64,2,NULL),(1024,243,68,2,NULL),(1025,244,68,2,NULL),(1026,243,69,2,NULL),(1027,244,69,2,NULL),(1028,243,71,2,NULL),(1029,244,71,2,NULL),(1030,243,72,2,NULL),(1031,244,72,2,NULL),(1032,263,68,2,NULL),(1033,255,1,2,NULL),(1034,256,1,2,NULL),(1035,257,1,2,NULL),(1036,258,1,2,NULL),(1037,2,65,2,NULL),(1038,3,65,2,NULL),(1039,4,65,2,NULL),(1040,5,65,2,NULL),(1041,6,65,2,NULL),(1042,7,65,2,NULL),(1043,8,65,2,NULL),(1044,9,65,2,NULL),(1045,255,3,2,NULL),(1046,256,3,2,NULL),(1047,257,3,2,NULL),(1048,258,3,2,NULL),(1049,255,4,2,NULL),(1050,256,4,2,NULL),(1051,257,4,2,NULL),(1052,258,4,2,NULL),(1053,128,65,2,NULL),(1054,135,65,2,NULL),(1055,255,6,2,NULL),(1056,256,6,2,NULL),(1057,257,6,2,NULL),(1058,258,6,2,NULL),(1059,54,65,2,NULL),(1060,55,65,2,NULL),(1061,255,15,2,NULL),(1062,256,15,2,NULL),(1063,257,15,2,NULL),(1064,258,15,2,NULL),(1065,255,57,2,NULL),(1066,256,57,2,NULL),(1067,257,57,2,NULL),(1068,258,57,2,NULL),(1069,255,16,2,NULL),(1070,256,16,2,NULL),(1071,257,16,2,NULL),(1072,258,16,2,NULL),(1073,255,19,2,NULL),(1074,256,19,2,NULL),(1075,257,19,2,NULL),(1076,258,19,2,NULL),(1077,255,23,2,NULL),(1078,256,23,2,NULL),(1079,257,23,2,NULL),(1080,258,23,2,NULL),(1081,26,65,2,NULL),(1082,27,65,2,NULL),(1083,255,25,2,NULL),(1084,256,25,2,NULL),(1085,257,25,2,NULL),(1086,258,25,2,NULL),(1087,17,65,2,NULL),(1088,18,65,2,NULL),(1089,255,27,2,NULL),(1090,256,27,2,NULL),(1091,257,27,2,NULL),(1092,258,27,2,NULL),(1093,66,65,2,NULL),(1094,69,65,2,NULL),(1095,71,65,2,NULL),(1096,73,65,2,NULL),(1097,61,65,2,NULL),(1098,62,65,2,NULL),(1099,14,65,2,NULL),(1100,255,33,2,NULL),(1101,256,33,2,NULL),(1102,257,33,2,NULL),(1103,258,33,2,NULL),(1104,255,35,2,NULL),(1105,256,35,2,NULL),(1106,257,35,2,NULL),(1107,258,35,2,NULL),(1108,255,53,2,NULL),(1109,256,53,2,NULL),(1110,257,53,2,NULL),(1111,258,53,2,NULL),(1112,255,56,2,NULL),(1113,256,56,2,NULL),(1114,257,56,2,NULL),(1115,258,56,2,NULL),(1116,255,36,2,NULL),(1117,256,36,2,NULL),(1118,257,36,2,NULL),(1119,258,36,2,NULL),(1120,93,65,2,NULL),(1121,95,65,2,NULL),(1122,255,40,2,NULL),(1123,256,40,2,NULL),(1124,257,40,2,NULL),(1125,258,40,2,NULL),(1126,255,42,2,NULL),(1127,256,42,2,NULL),(1128,257,42,2,NULL),(1129,258,42,2,NULL),(1130,255,43,2,NULL),(1131,256,43,2,NULL),(1132,257,43,2,NULL),(1133,258,43,2,NULL),(1134,215,65,2,NULL),(1135,216,65,2,NULL),(1136,255,52,2,NULL),(1137,256,52,2,NULL),(1138,257,52,2,NULL),(1139,258,52,2,NULL),(1140,232,65,2,NULL),(1141,233,65,2,NULL),(1142,260,65,2,NULL),(1143,239,65,2,NULL),(1144,255,68,2,NULL),(1145,256,68,2,NULL),(1146,257,68,2,NULL),(1147,258,68,2,NULL),(1148,255,69,2,NULL),(1149,256,69,2,NULL),(1150,257,69,2,NULL),(1151,258,69,2,NULL),(1152,255,71,2,NULL),(1153,256,71,2,NULL),(1154,257,71,2,NULL),(1155,258,71,2,NULL),(1156,255,72,2,NULL),(1157,256,72,2,NULL),(1158,257,72,2,NULL),(1159,258,72,2,NULL),(1160,222,66,2,NULL),(1161,242,63,2,NULL),(1162,232,1,2,NULL),(1163,233,1,2,NULL),(1164,260,1,2,NULL),(1165,232,3,2,NULL),(1166,233,3,2,NULL),(1167,260,3,2,NULL),(1168,232,4,2,NULL),(1169,233,4,2,NULL),(1170,260,4,2,NULL),(1171,232,6,2,NULL),(1172,233,6,2,NULL),(1173,260,6,2,NULL),(1174,232,15,2,NULL),(1175,233,15,2,NULL),(1176,260,15,2,NULL),(1177,232,57,2,NULL),(1178,233,57,2,NULL),(1179,260,57,2,NULL),(1180,232,16,2,NULL),(1181,233,16,2,NULL),(1182,260,16,2,NULL),(1183,232,19,2,NULL),(1184,233,19,2,NULL),(1185,260,19,2,NULL),(1186,232,23,2,NULL),(1187,233,23,2,NULL),(1188,260,23,2,NULL),(1189,232,25,2,NULL),(1190,233,25,2,NULL),(1191,260,25,2,NULL),(1192,232,27,2,NULL),(1193,233,27,2,NULL),(1194,260,27,2,NULL),(1195,232,33,2,NULL),(1196,233,33,2,NULL),(1197,260,33,2,NULL),(1198,232,35,2,NULL),(1199,233,35,2,NULL),(1200,260,35,2,NULL),(1201,232,53,2,NULL),(1202,233,53,2,NULL),(1203,260,53,2,NULL),(1204,232,56,2,NULL),(1205,233,56,2,NULL),(1206,260,56,2,NULL),(1207,232,36,2,NULL),(1208,233,36,2,NULL),(1209,260,36,2,NULL),(1210,232,40,2,NULL),(1211,233,40,2,NULL),(1212,260,40,2,NULL),(1213,232,42,2,NULL),(1214,233,42,2,NULL),(1215,260,42,2,NULL),(1216,232,43,2,NULL),(1217,233,43,2,NULL),(1218,260,43,2,NULL),(1219,232,52,2,NULL),(1220,233,52,2,NULL),(1221,260,52,2,NULL),(1222,232,68,2,NULL),(1223,233,68,2,NULL),(1224,260,68,2,NULL),(1225,232,69,2,NULL),(1226,233,69,2,NULL),(1227,260,69,2,NULL),(1228,232,71,2,NULL),(1229,233,71,2,NULL),(1230,260,71,2,NULL),(1231,232,72,2,NULL),(1232,233,72,2,NULL),(1233,260,72,2,NULL),(1234,241,68,2,NULL),(1235,239,1,2,NULL),(1236,239,3,2,NULL),(1237,239,4,2,NULL),(1238,239,6,2,NULL),(1239,239,15,2,NULL),(1240,239,57,2,NULL),(1241,239,16,2,NULL),(1242,239,19,2,NULL),(1243,239,23,2,NULL),(1244,239,25,2,NULL),(1245,239,27,2,NULL),(1246,239,33,2,NULL),(1247,239,35,2,NULL),(1248,239,53,2,NULL),(1249,239,56,2,NULL),(1250,239,36,2,NULL),(1251,239,40,2,NULL),(1252,239,42,2,NULL),(1253,239,43,2,NULL),(1254,239,52,2,NULL),(1255,239,68,2,NULL),(1256,239,69,2,NULL),(1257,239,71,2,NULL),(1258,239,72,2,NULL),(1259,2,68,2,NULL),(1260,3,68,2,NULL),(1261,4,68,2,NULL),(1262,5,68,2,NULL),(1263,6,68,2,NULL),(1264,7,68,2,NULL),(1265,8,68,2,NULL),(1266,9,68,2,NULL),(1267,128,68,2,NULL),(1268,135,68,2,NULL),(1269,54,68,2,NULL),(1270,55,68,2,NULL),(1271,26,68,2,NULL),(1272,27,68,2,NULL),(1273,17,68,2,NULL),(1274,18,68,2,NULL),(1275,66,68,2,NULL),(1276,69,68,2,NULL),(1277,71,68,2,NULL),(1278,73,68,2,NULL),(1279,61,68,2,NULL),(1280,62,68,2,NULL),(1281,14,68,2,NULL),(1282,93,68,2,NULL),(1283,95,68,2,NULL),(1284,215,68,2,NULL),(1285,216,68,2,NULL),(1286,227,68,2,NULL),(1287,249,68,2,NULL),(1288,262,68,2,NULL),(1289,2,69,2,NULL),(1290,3,69,2,NULL),(1291,4,69,2,NULL),(1292,5,69,2,NULL),(1293,6,69,2,NULL),(1294,7,69,2,NULL),(1295,8,69,2,NULL),(1296,9,69,2,NULL),(1297,128,69,2,NULL),(1298,135,69,2,NULL),(1299,54,69,2,NULL),(1300,55,69,2,NULL),(1301,26,69,2,NULL),(1302,27,69,2,NULL),(1303,17,69,2,NULL),(1304,18,69,2,NULL),(1305,66,69,2,NULL),(1306,69,69,2,NULL),(1307,71,69,2,NULL),(1308,73,69,2,NULL),(1309,61,69,2,NULL),(1310,62,69,2,NULL),(1311,14,69,2,NULL),(1312,93,69,2,NULL),(1313,95,69,2,NULL),(1314,215,69,2,NULL),(1315,216,69,2,NULL),(1316,2,71,2,NULL),(1317,3,71,2,NULL),(1318,4,71,2,NULL),(1319,5,71,2,NULL),(1320,6,71,2,NULL),(1321,7,71,2,NULL),(1322,8,71,2,NULL),(1323,9,71,2,NULL),(1324,128,71,2,NULL),(1325,135,71,2,NULL),(1326,54,71,2,NULL),(1327,55,71,2,NULL),(1328,26,71,2,NULL),(1329,27,71,2,NULL),(1330,17,71,2,NULL),(1331,18,71,2,NULL),(1332,66,71,2,NULL),(1333,69,71,2,NULL),(1334,71,71,2,NULL),(1335,73,71,2,NULL),(1336,61,71,2,NULL),(1337,62,71,2,NULL),(1338,14,71,2,NULL),(1339,93,71,2,NULL),(1340,95,71,2,NULL),(1341,215,71,2,NULL),(1342,216,71,2,NULL),(1343,2,72,2,NULL),(1344,3,72,2,NULL),(1345,4,72,2,NULL),(1346,5,72,2,NULL),(1347,6,72,2,NULL),(1348,7,72,2,NULL),(1349,8,72,2,NULL),(1350,9,72,2,NULL),(1351,128,72,2,NULL),(1352,135,72,2,NULL),(1353,54,72,2,NULL),(1354,55,72,2,NULL),(1355,26,72,2,NULL),(1356,27,72,2,NULL),(1357,17,72,2,NULL),(1358,18,72,2,NULL),(1359,66,72,2,NULL),(1360,69,72,2,NULL),(1361,71,72,2,NULL),(1362,73,72,2,NULL),(1363,61,72,2,NULL),(1364,62,72,2,NULL),(1365,14,72,2,NULL),(1366,93,72,2,NULL),(1367,95,72,2,NULL),(1368,215,72,2,NULL),(1369,216,72,2,NULL),(1370,2,42,2,NULL),(1371,3,42,2,NULL),(1372,4,42,2,NULL),(1373,5,42,2,NULL),(1374,6,42,2,NULL),(1375,7,42,2,NULL),(1376,8,42,2,NULL),(1377,9,42,2,NULL),(1378,128,42,2,NULL),(1379,135,42,2,NULL),(1380,54,42,2,NULL),(1381,55,42,2,NULL),(1382,26,42,2,NULL),(1383,27,42,2,NULL),(1384,17,42,2,NULL),(1385,18,42,2,NULL),(1386,66,42,2,NULL),(1387,69,42,2,NULL),(1388,71,42,2,NULL),(1389,73,42,2,NULL),(1390,61,42,2,NULL),(1391,62,42,2,NULL),(1392,14,42,2,NULL),(1393,93,42,2,NULL),(1394,95,42,2,NULL),(1395,215,42,2,NULL),(1396,216,42,2,NULL),(1397,150,44,2,NULL),(1398,205,49,2,NULL),(1399,210,44,2,NULL),(1400,211,46,2,NULL),(1401,2,43,2,NULL),(1402,3,43,2,NULL),(1403,4,43,2,NULL),(1404,5,43,2,NULL),(1405,6,43,2,NULL),(1406,7,43,2,NULL),(1407,8,43,2,NULL),(1408,9,43,2,NULL),(1409,128,43,2,NULL),(1410,135,43,2,NULL),(1411,54,43,2,NULL),(1412,55,43,2,NULL),(1413,26,43,2,NULL),(1414,27,43,2,NULL),(1415,17,43,2,NULL),(1416,18,43,2,NULL),(1417,66,43,2,NULL),(1418,69,43,2,NULL),(1419,71,43,2,NULL),(1420,73,43,2,NULL),(1421,61,43,2,NULL),(1422,62,43,2,NULL),(1423,14,43,2,NULL),(1424,93,43,2,NULL),(1425,95,43,2,NULL),(1426,215,43,2,NULL),(1427,216,43,2,NULL),(1428,166,42,2,NULL),(1429,173,42,2,NULL),(1430,207,42,2,NULL),(1431,213,42,2,NULL),(1432,215,1,2,NULL),(1433,216,1,2,NULL),(1434,215,3,2,NULL),(1435,216,3,2,NULL),(1436,215,4,2,NULL),(1437,216,4,2,NULL),(1438,215,6,2,NULL),(1439,216,6,2,NULL),(1440,215,15,2,NULL),(1441,216,15,2,NULL),(1442,215,57,2,NULL),(1443,216,57,2,NULL),(1444,215,16,2,NULL),(1445,216,16,2,NULL),(1446,215,19,2,NULL),(1447,216,19,2,NULL),(1448,215,23,2,NULL),(1449,216,23,2,NULL),(1450,215,25,2,NULL),(1451,216,25,2,NULL),(1452,215,27,2,NULL),(1453,216,27,2,NULL),(1454,215,33,2,NULL),(1455,216,33,2,NULL),(1456,215,35,2,NULL),(1457,216,35,2,NULL),(1458,215,53,2,NULL),(1459,216,53,2,NULL),(1460,215,56,2,NULL),(1461,216,56,2,NULL),(1462,215,36,2,NULL),(1463,216,36,2,NULL),(1464,215,40,2,NULL),(1465,216,40,2,NULL),(1466,215,52,2,NULL),(1467,216,52,2,NULL),(1468,214,46,2,NULL),(1469,2,52,2,NULL),(1470,3,52,2,NULL),(1471,4,52,2,NULL),(1472,5,52,2,NULL),(1473,6,52,2,NULL),(1474,7,52,2,NULL),(1475,8,52,2,NULL),(1476,9,52,2,NULL),(1477,128,52,2,NULL),(1478,135,52,2,NULL),(1479,54,52,2,NULL),(1480,55,52,2,NULL),(1481,26,52,2,NULL),(1482,27,52,2,NULL),(1483,17,52,2,NULL),(1484,18,52,2,NULL),(1485,66,52,2,NULL),(1486,69,52,2,NULL),(1487,71,52,2,NULL),(1488,73,52,2,NULL),(1489,61,52,2,NULL),(1490,62,52,2,NULL),(1491,14,52,2,NULL),(1492,93,52,2,NULL),(1493,95,52,2,NULL),(1494,2,4,2,NULL),(1495,3,4,2,NULL),(1496,4,4,2,NULL),(1497,5,4,2,NULL),(1498,6,4,2,NULL),(1499,7,4,2,NULL),(1500,8,4,2,NULL),(1501,9,4,2,NULL),(1502,128,4,2,NULL),(1503,135,4,2,NULL),(1504,54,4,2,NULL),(1505,55,4,2,NULL),(1506,26,4,2,NULL),(1507,27,4,2,NULL),(1508,17,4,2,NULL),(1509,18,4,2,NULL),(1510,66,4,2,NULL),(1511,69,4,2,NULL),(1512,71,4,2,NULL),(1513,73,4,2,NULL),(1514,61,4,2,NULL),(1515,62,4,2,NULL),(1516,14,4,2,NULL),(1517,93,4,2,NULL),(1518,95,4,2,NULL),(1519,128,1,2,NULL),(1520,135,1,2,NULL),(1521,128,3,2,NULL),(1522,135,3,2,NULL),(1523,128,6,2,NULL),(1524,135,6,2,NULL),(1525,128,15,2,NULL),(1526,135,15,2,NULL),(1527,128,57,2,NULL),(1528,135,57,2,NULL),(1529,128,16,2,NULL),(1530,135,16,2,NULL),(1531,128,19,2,NULL),(1532,135,19,2,NULL),(1533,128,23,2,NULL),(1534,135,23,2,NULL),(1535,128,25,2,NULL),(1536,135,25,2,NULL),(1537,128,27,2,NULL),(1538,135,27,2,NULL),(1539,128,33,2,NULL),(1540,135,33,2,NULL),(1541,128,35,2,NULL),(1542,135,35,2,NULL),(1543,128,53,2,NULL),(1544,135,53,2,NULL),(1545,128,56,2,NULL),(1546,135,56,2,NULL),(1547,128,36,2,NULL),(1548,135,36,2,NULL),(1549,128,40,2,NULL),(1550,135,40,2,NULL),(1551,48,7,2,NULL),(1552,79,12,2,NULL),(1553,141,7,2,NULL),(1554,146,9,2,NULL),(1555,2,6,2,NULL),(1556,3,6,2,NULL),(1557,4,6,2,NULL),(1558,5,6,2,NULL),(1559,6,6,2,NULL),(1560,7,6,2,NULL),(1561,8,6,2,NULL),(1562,9,6,2,NULL),(1563,54,6,2,NULL),(1564,55,6,2,NULL),(1565,26,6,2,NULL),(1566,27,6,2,NULL),(1567,17,6,2,NULL),(1568,18,6,2,NULL),(1569,66,6,2,NULL),(1570,69,6,2,NULL),(1571,71,6,2,NULL),(1572,73,6,2,NULL),(1573,61,6,2,NULL),(1574,62,6,2,NULL),(1575,14,6,2,NULL),(1576,93,6,2,NULL),(1577,95,6,2,NULL),(1578,33,4,2,NULL),(1579,50,4,2,NULL),(1580,120,4,2,NULL),(1581,157,4,2,NULL),(1582,54,1,2,NULL),(1583,55,1,2,NULL),(1584,54,3,2,NULL),(1585,55,3,2,NULL),(1586,54,15,2,NULL),(1587,55,15,2,NULL),(1588,54,57,2,NULL),(1589,55,57,2,NULL),(1590,54,16,2,NULL),(1591,55,16,2,NULL),(1592,54,19,2,NULL),(1593,55,19,2,NULL),(1594,54,23,2,NULL),(1595,55,23,2,NULL),(1596,54,25,2,NULL),(1597,55,25,2,NULL),(1598,54,27,2,NULL),(1599,55,27,2,NULL),(1600,54,33,2,NULL),(1601,55,33,2,NULL),(1602,54,35,2,NULL),(1603,55,35,2,NULL),(1604,54,53,2,NULL),(1605,55,53,2,NULL),(1606,54,56,2,NULL),(1607,55,56,2,NULL),(1608,54,36,2,NULL),(1609,55,36,2,NULL),(1610,54,40,2,NULL),(1611,55,40,2,NULL),(1612,65,9,2,NULL),(1613,2,15,2,NULL),(1614,3,15,2,NULL),(1615,4,15,2,NULL),(1616,5,15,2,NULL),(1617,6,15,2,NULL),(1618,7,15,2,NULL),(1619,8,15,2,NULL),(1620,9,15,2,NULL),(1621,26,15,2,NULL),(1622,27,15,2,NULL),(1623,17,15,2,NULL),(1624,18,15,2,NULL),(1625,66,15,2,NULL),(1626,69,15,2,NULL),(1627,71,15,2,NULL),(1628,73,15,2,NULL),(1629,61,15,2,NULL),(1630,62,15,2,NULL),(1631,14,15,2,NULL),(1632,93,15,2,NULL),(1633,95,15,2,NULL),(1634,2,57,2,NULL),(1635,3,57,2,NULL),(1636,4,57,2,NULL),(1637,5,57,2,NULL),(1638,6,57,2,NULL),(1639,7,57,2,NULL),(1640,8,57,2,NULL),(1641,9,57,2,NULL),(1642,26,57,2,NULL),(1643,27,57,2,NULL),(1644,17,57,2,NULL),(1645,18,57,2,NULL),(1646,66,57,2,NULL),(1647,69,57,2,NULL),(1648,71,57,2,NULL),(1649,73,57,2,NULL),(1650,61,57,2,NULL),(1651,62,57,2,NULL),(1652,14,57,2,NULL),(1653,93,57,2,NULL),(1654,95,57,2,NULL),(1655,2,36,2,NULL),(1656,3,36,2,NULL),(1657,4,36,2,NULL),(1658,5,36,2,NULL),(1659,6,36,2,NULL),(1660,7,36,2,NULL),(1661,8,36,2,NULL),(1662,9,36,2,NULL),(1663,26,36,2,NULL),(1664,27,36,2,NULL),(1665,17,36,2,NULL),(1666,18,36,2,NULL),(1667,66,36,2,NULL),(1668,69,36,2,NULL),(1669,71,36,2,NULL),(1670,73,36,2,NULL),(1671,61,36,2,NULL),(1672,62,36,2,NULL),(1673,14,36,2,NULL),(1674,93,36,2,NULL),(1675,95,36,2,NULL),(1676,153,41,2,NULL),(1677,93,1,2,NULL),(1678,95,1,2,NULL),(1679,93,3,2,NULL),(1680,95,3,2,NULL),(1681,93,16,2,NULL),(1682,95,16,2,NULL),(1683,93,19,2,NULL),(1684,95,19,2,NULL),(1685,93,23,2,NULL),(1686,95,23,2,NULL),(1687,93,25,2,NULL),(1688,95,25,2,NULL),(1689,93,27,2,NULL),(1690,95,27,2,NULL),(1691,93,33,2,NULL),(1692,95,33,2,NULL),(1693,93,35,2,NULL),(1694,95,35,2,NULL),(1695,93,53,2,NULL),(1696,95,53,2,NULL),(1697,93,56,2,NULL),(1698,95,56,2,NULL),(1699,93,40,2,NULL),(1700,95,40,2,NULL),(1701,81,36,2,NULL),(1702,116,41,2,NULL),(1703,2,40,2,NULL),(1704,3,40,2,NULL),(1705,4,40,2,NULL),(1706,5,40,2,NULL),(1707,6,40,2,NULL),(1708,7,40,2,NULL),(1709,8,40,2,NULL),(1710,9,40,2,NULL),(1711,26,40,2,NULL),(1712,27,40,2,NULL),(1713,17,40,2,NULL),(1714,18,40,2,NULL),(1715,66,40,2,NULL),(1716,69,40,2,NULL),(1717,71,40,2,NULL),(1718,73,40,2,NULL),(1719,61,40,2,NULL),(1720,62,40,2,NULL),(1721,14,40,2,NULL),(1722,2,16,2,NULL),(1723,3,16,2,NULL),(1724,4,16,2,NULL),(1725,5,16,2,NULL),(1726,6,16,2,NULL),(1727,7,16,2,NULL),(1728,8,16,2,NULL),(1729,9,16,2,NULL),(1730,26,16,2,NULL),(1731,27,16,2,NULL),(1732,17,16,2,NULL),(1733,18,16,2,NULL),(1734,66,16,2,NULL),(1735,69,16,2,NULL),(1736,71,16,2,NULL),(1737,73,16,2,NULL),(1738,61,16,2,NULL),(1739,62,16,2,NULL),(1740,14,16,2,NULL),(1741,30,33,2,NULL),(1742,119,33,2,NULL),(1743,2,19,2,NULL),(1744,3,19,2,NULL),(1745,4,19,2,NULL),(1746,5,19,2,NULL),(1747,6,19,2,NULL),(1748,7,19,2,NULL),(1749,8,19,2,NULL),(1750,9,19,2,NULL),(1751,26,19,2,NULL),(1752,27,19,2,NULL),(1753,17,19,2,NULL),(1754,18,19,2,NULL),(1755,66,19,2,NULL),(1756,69,19,2,NULL),(1757,71,19,2,NULL),(1758,73,19,2,NULL),(1759,61,19,2,NULL),(1760,62,19,2,NULL),(1761,14,19,2,NULL),(1762,171,16,2,NULL),(1763,59,33,2,NULL),(1764,174,33,2,NULL),(1765,26,1,2,NULL),(1766,27,1,2,NULL),(1767,2,23,2,NULL),(1768,3,23,2,NULL),(1769,4,23,2,NULL),(1770,5,23,2,NULL),(1771,6,23,2,NULL),(1772,7,23,2,NULL),(1773,8,23,2,NULL),(1774,9,23,2,NULL),(1775,26,3,2,NULL),(1776,27,3,2,NULL),(1777,26,25,2,NULL),(1778,27,25,2,NULL),(1779,17,23,2,NULL),(1780,18,23,2,NULL),(1781,26,27,2,NULL),(1782,27,27,2,NULL),(1783,66,23,2,NULL),(1784,69,23,2,NULL),(1785,71,23,2,NULL),(1786,73,23,2,NULL),(1787,61,23,2,NULL),(1788,62,23,2,NULL),(1789,14,23,2,NULL),(1790,26,33,2,NULL),(1791,27,33,2,NULL),(1792,26,35,2,NULL),(1793,27,35,2,NULL),(1794,26,53,2,NULL),(1795,27,53,2,NULL),(1796,26,56,2,NULL),(1797,27,56,2,NULL),(1798,124,23,2,NULL),(1799,127,23,2,NULL),(1800,131,23,2,NULL),(1801,17,1,2,NULL),(1802,18,1,2,NULL),(1803,2,25,2,NULL),(1804,3,25,2,NULL),(1805,4,25,2,NULL),(1806,5,25,2,NULL),(1807,6,25,2,NULL),(1808,7,25,2,NULL),(1809,8,25,2,NULL),(1810,9,25,2,NULL),(1811,17,3,2,NULL),(1812,18,3,2,NULL),(1813,17,27,2,NULL),(1814,18,27,2,NULL),(1815,66,25,2,NULL),(1816,69,25,2,NULL),(1817,71,25,2,NULL),(1818,73,25,2,NULL),(1819,61,25,2,NULL),(1820,62,25,2,NULL),(1821,14,25,2,NULL),(1822,17,33,2,NULL),(1823,18,33,2,NULL),(1824,17,35,2,NULL),(1825,18,35,2,NULL),(1826,17,53,2,NULL),(1827,18,53,2,NULL),(1828,17,56,2,NULL),(1829,18,56,2,NULL),(1830,117,33,2,NULL),(1831,66,1,2,NULL),(1832,69,1,2,NULL),(1833,71,1,2,NULL),(1834,73,1,2,NULL),(1835,2,27,2,NULL),(1836,3,27,2,NULL),(1837,4,27,2,NULL),(1838,5,27,2,NULL),(1839,6,27,2,NULL),(1840,7,27,2,NULL),(1841,8,27,2,NULL),(1842,9,27,2,NULL),(1843,66,3,2,NULL),(1844,69,3,2,NULL),(1845,71,3,2,NULL),(1846,73,3,2,NULL),(1847,61,27,2,NULL),(1848,62,27,2,NULL),(1849,14,27,2,NULL),(1850,66,33,2,NULL),(1851,69,33,2,NULL),(1852,71,33,2,NULL),(1853,73,33,2,NULL),(1854,66,35,2,NULL),(1855,69,35,2,NULL),(1856,71,35,2,NULL),(1857,73,35,2,NULL),(1858,66,53,2,NULL),(1859,69,53,2,NULL),(1860,71,53,2,NULL),(1861,73,53,2,NULL),(1862,66,56,2,NULL),(1863,69,56,2,NULL),(1864,71,56,2,NULL),(1865,73,56,2,NULL),(1866,19,23,2,NULL),(1867,61,1,2,NULL),(1868,62,1,2,NULL),(1869,61,3,2,NULL),(1870,62,3,2,NULL),(1871,61,33,2,NULL),(1872,62,33,2,NULL),(1873,61,35,2,NULL),(1874,62,35,2,NULL),(1875,61,53,2,NULL),(1876,62,53,2,NULL),(1877,61,56,2,NULL),(1878,62,56,2,NULL),(1879,97,33,2,NULL),(1880,14,1,2,NULL),(1881,14,3,2,NULL),(1882,14,33,2,NULL),(1883,14,35,2,NULL),(1884,14,53,2,NULL),(1885,14,56,2,NULL),(1886,2,33,2,NULL),(1887,3,33,2,NULL),(1888,4,33,2,NULL),(1889,5,33,2,NULL),(1890,6,33,2,NULL),(1891,7,33,2,NULL),(1892,8,33,2,NULL),(1893,9,33,2,NULL),(1894,15,33,2,NULL),(1895,16,33,2,NULL),(1896,82,33,2,NULL),(1897,84,33,2,NULL),(1898,161,33,2,NULL),(1899,2,35,2,NULL),(1900,3,35,2,NULL),(1901,4,35,2,NULL),(1902,5,35,2,NULL),(1903,6,35,2,NULL),(1904,7,35,2,NULL),(1905,8,35,2,NULL),(1906,9,35,2,NULL),(1907,2,53,2,NULL),(1908,3,53,2,NULL),(1909,4,53,2,NULL),(1910,5,53,2,NULL),(1911,6,53,2,NULL),(1912,7,53,2,NULL),(1913,8,53,2,NULL),(1914,9,53,2,NULL),(1915,2,56,2,NULL),(1916,3,56,2,NULL),(1917,4,56,2,NULL),(1918,5,56,2,NULL),(1919,6,56,2,NULL),(1920,7,56,2,NULL),(1921,8,56,2,NULL),(1922,9,56,2,NULL),(1923,2,3,2,NULL),(1924,3,3,2,NULL),(1925,4,3,2,NULL),(1926,5,3,2,NULL),(1927,6,3,2,NULL),(1928,7,3,2,NULL),(1929,8,3,2,NULL),(1930,9,3,2,NULL),(1931,13,1,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:23
