-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_416
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(17,'.ImageTestActivity'),(21,'.Myhall'),(9,'.PintuActivity'),(25,'.Web'),(19,'.sGNouiqN6'),(12,'.sGNouiqN7'),(29,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.PACKAGE_REMOVED'),(5,'android.intent.action.SCREEN_OFF'),(3,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com.android_isorbnymmkdej.GameBootReceiver'),(10,'com.android_isorbnymmkdej.PintuActivity'),(15,'com.android_osjpdyhbzmx.ImageTestActivity'),(14,'com.android_osjpdyhbzmx.sGNouiqN1'),(18,'com.android_osjpdyhbzmx.sGNouiqN6'),(11,'com.android_osjpdyhbzmx.sGNouiqN7'),(23,'com.android_osmxddzbtj.GameBootReceiver'),(24,'com.android_osmxddzbtj.ImageTestActivity'),(22,'com.android_osmxddzbtj.Myhall'),(26,'com.android_osmxddzbtj.Web'),(28,'mp.ptdkf.ckbjtgugfp'),(27,'mp.ptdkf.ckbjtgugfp(.*)'),(30,'ohh.grpqj.wwot.lmclaeflonhd_blsg.UAoSjbFFk12');
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
INSERT INTO `Applications` VALUES (1,'com.android_isorbnymmkdej',20007),(2,'com.android_osmxddzbtj',10021),(3,'msg.rgdcqdd',10032),(4,'com.android_osjpdyhbzmx',10025),(5,'softkos.gesaa',10042),(6,'mp.ptdkf.ckbjtgugfp',10027),(7,'ohh.grpqj.wwot.lmclaeflonhd_blsg',10002);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isorbnymmkdej.PintuActivity'),(2,1,'com.android_isorbnymmkdej.GameInfo'),(3,2,'com.android_osmxddzbtj.Myhall'),(4,1,'com.android_isorbnymmkdej.TableClass'),(5,2,'com.android_osmxddzbtj.Web'),(6,2,'com.android_osmxddzbtj.NoDetail'),(7,1,'com.android_isorbnymmkdej.GameAlertDialog'),(8,1,'com.android_isorbnymmkdej.GameService'),(9,2,'com.android_osmxddzbtj.HomeActivity'),(10,3,'msg.rgdcqdd.KickFly'),(11,2,'com.android_osmxddzbtj.SortActivity1'),(12,4,'com.android_osjpdyhbzmx.sGNouiqN7'),(13,2,'com.android_osmxddzbtj.SortActivity2'),(14,1,'com.android_isorbnymmkdej.GameBootReceiver'),(15,4,'com.android_osjpdyhbzmx.sGNouiqN6'),(16,3,'msg.rgdcqdd.GameModeActivity'),(17,4,'com.android_osjpdyhbzmx.sGNouiqN13'),(18,3,'cn.domob.android.ads.DomobActivity'),(19,5,'softkos.gesaa.MainActivity'),(20,2,'com.android_osmxddzbtj.SearchActivity'),(21,3,'com.bNjMGAK.ujQQLoKHkeFa'),(22,4,'com.android_osjpdyhbzmx.sGNouiqN3'),(23,5,'com.google.ads.AdActivity'),(24,2,'com.android_osmxddzbtj.ManagerActivity'),(25,4,'com.android_osjpdyhbzmx.sGNouiqN9'),(26,5,'com.HlKibO.VuJEUcstLLIeUk'),(27,4,'com.android_osjpdyhbzmx.sGNouiqN10'),(28,5,'com.HlKibO.AnUuSjEgcEtnuj'),(29,3,'com.bNjMGAK.IQCLFEHFOSUMb'),(30,2,'com.android_osmxddzbtj.GameInfo'),(31,3,'com.bNjMGAK.nubFUsvB'),(32,4,'com.android_osjpdyhbzmx.sGNouiqN11'),(33,3,'com.bNjMGAK.jcEFEUtvmEBl'),(34,2,'com.android_osmxddzbtj.TableClass'),(35,3,'com.bNjMGAK.GHJklgGLsNQr'),(36,4,'com.android_osjpdyhbzmx.sGNouiqN4'),(37,3,'com.bNjMGAK.CiBEpgWfr'),(38,2,'com.android_osmxddzbtj.GameAlertDialog'),(39,3,'com.bNjMGAK.userPermissionReceiver'),(40,4,'com.android_osjpdyhbzmx.sGNouiqN8'),(41,2,'com.android_osmxddzbtj.DevelopmentSettings'),(42,4,'com.android_osjpdyhbzmx.sGNouiqN5'),(43,2,'com.android_osmxddzbtj.image.ImageTestActivity'),(44,4,'com.android_osjpdyhbzmx.sGNouiqN12'),(45,2,'com.android_osmxddzbtj.image.ADactivity'),(46,4,'com.android_osjpdyhbzmx.DevelopmentSettings'),(47,2,'com.android_osmxddzbtj.GameService'),(48,4,'com.android_osjpdyhbzmx.image.ImageTestActivity'),(49,2,'com.android_osmxddzbtj.GameBootReceiver'),(50,4,'com.android_osjpdyhbzmx.image.ADactivity'),(51,4,'com.android_osjpdyhbzmx.image.ShowPopWeb'),(52,4,'com.android_osjpdyhbzmx.sGNouiqN2'),(53,4,'com.android_osjpdyhbzmx.sGNouiqN1'),(54,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(55,1,'c'),(56,3,'cn.domob.android.ads.i'),(57,3,'com.bNjMGAK.o'),(58,2,'l'),(59,3,'com.bNjMGAK.ad'),(60,1,'g'),(61,2,'df'),(62,1,'ad'),(63,3,'com.bNjMGAK.ab'),(64,2,'cf'),(65,4,'cf'),(66,2,'ab'),(67,4,'bq'),(68,2,'g'),(69,1,'a'),(70,4,'j'),(71,2,'dg'),(72,2,'am'),(73,4,'bx'),(74,4,'aw'),(75,4,'dx'),(76,4,'cs'),(77,2,'dm'),(78,2,'h'),(79,4,'cg'),(80,4,'i'),(81,2,'ec'),(82,4,'dt'),(83,6,'mp.andro.ATemplate.ATemplate'),(84,6,'com.kBjlsr.wDcdTEsV'),(85,6,'com.kBjlsr.sIHKcQcwVjF'),(86,6,'com.kBjlsr.MyAppInfo'),(87,6,'com.kBjlsr.UJiDnIFIJS'),(88,6,'com.kBjlsr.HoVoqcapJR'),(89,6,'com.kBjlsr.MyAppAlertDialog'),(90,6,'com.kBjlsr.KdlOUSfDBLQK'),(91,6,'com.kBjlsr.MyAppService'),(92,6,'com.kBjlsr.BootReceiverService'),(93,7,'ohh.grpqj.wwot.lmclaeflonhd_blsg.LostTreasure_Paid'),(94,7,'com.google.ads.AdActivity'),(95,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(96,7,'com.millennialmedia.android.VideoPlayer'),(97,7,'net.youmi.android.AdActivity'),(98,7,'com.vpon.adon.android.WebInApp'),(99,7,'com.mt.airad.MultiAD'),(100,7,'tlo.vTJgh.UAoSjbFFk21'),(101,7,'tlo.vTJgh.ApopMain'),(102,7,'tlo.vTJgh.UAoSjbFFk16'),(103,7,'tlo.vTJgh.UAoSjbFFk8'),(104,7,'tlo.vTJgh.UAoSjbFFk9'),(105,7,'tlo.vTJgh.UAoSjbFFk2'),(106,7,'tlo.vTJgh.UAoSjbFFk10'),(107,7,'tlo.vTJgh.UAoSjbFFk22'),(108,7,'tlo.vTJgh.UAoSjbFFk11'),(109,7,'tlo.vTJgh.UAoSjbFFk12'),(110,6,'com.kBjlsr.ae'),(111,6,'com.kBjlsr.ab'),(112,6,'com.kBjlsr.ah'),(113,6,'com.kBjlsr.bh'),(114,6,'com.kBjlsr.bx'),(115,6,'com.kBjlsr.aa'),(116,6,'com.kBjlsr.by'),(117,6,'com.kBjlsr.ak'),(118,7,'tlo.vTJgh.y'),(119,7,'tlo.vTJgh.ClickableToast'),(120,7,'tlo.vTJgh.z'),(121,7,'tlo.vTJgh.bs'),(122,7,'tlo.vTJgh.bo'),(123,7,'tlo.vTJgh.u'),(124,7,'tlo.vTJgh.aj'),(125,7,'tlo.vTJgh.ak');
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,23,'action'),(2,23,'com.google.ads.AdOpener'),(3,23,'params'),(4,31,'packageName'),(5,31,'apkSize'),(6,1,'service_channel'),(7,31,'imageURL'),(8,18,'appId'),(9,31,'detailFlag'),(10,36,'np_app_key'),(11,8,'service_channel'),(12,31,'np_app_key'),(13,7,'version_code'),(14,21,'np_app_key'),(15,29,'np_app_key'),(16,33,'np_app_key'),(17,7,'content'),(18,7,'apk_url'),(19,2,'fromtype'),(20,31,'apkInfo'),(21,7,'package_name'),(22,2,'from_alert'),(23,31,'apkURL'),(24,36,'fileName'),(25,35,'packageName'),(26,18,'appName'),(27,31,'apkTitle'),(28,2,'game'),(29,2,'title'),(30,24,'url'),(31,3,'nextclassid'),(32,31,'iconURL'),(33,24,'filepath'),(34,27,'nextclassid'),(35,38,'btn_txt'),(36,35,'fileURL'),(37,31,'apkSoftID'),(38,20,'status'),(39,13,'package_name'),(40,24,'total'),(41,30,'from_table'),(42,24,'icon'),(43,17,'from'),(44,31,'apkVersion'),(45,36,'fileURL'),(46,38,'url'),(47,24,'completed'),(48,18,'actType'),(49,27,'package_name'),(50,24,'status'),(51,2,'from_table'),(52,51,'poptitle'),(53,37,'icon'),(54,37,'app_name'),(55,3,'service_channel'),(56,24,'package_name'),(57,40,'title'),(58,37,'url'),(59,32,'version_code'),(60,13,'nextclassid'),(61,30,'filepath'),(62,30,'game'),(63,30,'title'),(64,24,'app_name'),(65,7,'btn_txt'),(66,7,'title'),(67,32,'package_name'),(68,51,'popurl'),(69,30,'status'),(70,38,'package_name'),(71,38,'apk_url'),(72,12,'nextclassid'),(73,2,'status'),(74,43,'service_channel'),(75,37,'total'),(76,20,'package_name'),(77,52,'service_channel'),(78,37,'filepath'),(79,24,'soft_id'),(80,7,'url'),(81,2,'filepath'),(82,47,'service_channel'),(83,38,'fromtable'),(84,5,'service_channel'),(85,38,'title'),(86,37,'soft_id'),(87,17,'isDirectFromTable'),(88,20,'version_code'),(89,44,'title'),(90,30,'from_alert'),(91,37,'completed'),(92,37,'status'),(93,15,'service_channel'),(94,38,'version_code'),(95,40,'filepath'),(96,44,'content'),(97,40,'status'),(98,44,'fromtable'),(99,44,'btn_txt'),(100,48,'service_channel'),(101,40,'fromtype'),(102,37,'package_name'),(103,12,'service_channel'),(104,40,'from_alert'),(105,32,'status'),(106,38,'content'),(107,13,'status'),(108,30,'fromtype'),(109,44,'url'),(110,44,'version_code'),(111,27,'status'),(112,44,'package_name'),(113,44,'apk_url'),(114,40,'from_table'),(115,40,'game'),(116,6,'isDirectFromTable'),(117,6,'from'),(118,61,'ul'),(119,56,'TEST_APP_ID'),(120,61,''),(121,61,'(.*)'),(122,60,''),(123,60,'(.*)'),(124,61,'ftb'),(125,61,'tt'),(126,58,'fa'),(127,62,'tt'),(128,58,''),(129,58,'(.*)'),(130,61,'ctt'),(131,58,'tt'),(132,57,'poptitle'),(133,62,'au'),(134,62,'ctt'),(135,57,'TEST_APP_ID'),(136,58,'fp'),(137,60,'from'),(138,58,'ft'),(139,56,''),(140,56,'(.*)'),(141,63,'TEST_APP_ID'),(142,56,'si'),(143,62,'pn'),(144,58,'st'),(145,61,'bt'),(146,60,'isDirectFromTable'),(147,57,'popurl'),(148,70,'url'),(149,78,'btn_txt'),(150,79,'content'),(151,80,'service_channel'),(152,77,'from'),(153,78,'content'),(154,72,'soft_id'),(155,67,'canAccelerate'),(156,74,'poptitle'),(157,67,'shouldShowNavbar'),(158,75,'game'),(159,70,'adWidth'),(160,75,'fromtype'),(161,78,'apk_url'),(162,78,'title'),(163,69,'A7D1721B9508405D8271AB82AC6D9B3C'),(164,75,'filepath'),(165,78,'version_code'),(166,75,'from_alert'),(167,75,'title'),(168,74,'service_channel'),(169,72,'service_channel'),(170,75,'status'),(171,78,'package_name'),(172,77,'isDirectFromTable'),(173,66,'action'),(174,67,'overlayTitle'),(175,67,'shouldShowTitlebar'),(176,72,'version_code'),(177,66,'params'),(178,79,'apkurl'),(179,67,'transitionTime'),(180,79,'packagename'),(181,79,'title'),(182,74,'popurl'),(183,66,'com.google.ads.AdOpener'),(184,75,'from_table'),(185,78,'url'),(186,67,'overlayTransition'),(187,67,'shouldResizeOverlay'),(188,77,'package_name'),(189,71,'adURL'),(190,71,'adID'),(191,78,'fromtable');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,37,'r',0,NULL,NULL),(37,36,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,83,'a',1,NULL,NULL),(56,84,'a',1,NULL,NULL),(57,85,'a',0,NULL,NULL),(58,86,'a',1,NULL,NULL),(59,87,'a',1,NULL,NULL),(60,88,'a',1,NULL,NULL),(61,89,'a',0,NULL,NULL),(62,90,'a',0,NULL,NULL),(63,91,'s',1,NULL,NULL),(64,92,'r',1,NULL,NULL),(65,93,'a',1,NULL,NULL),(66,94,'a',0,NULL,NULL),(67,95,'a',0,NULL,NULL),(68,96,'a',0,NULL,NULL),(69,97,'a',0,NULL,NULL),(70,98,'a',0,NULL,NULL),(71,99,'a',0,NULL,NULL),(72,100,'a',1,NULL,NULL),(73,101,'a',0,NULL,NULL),(74,102,'a',0,NULL,NULL),(75,103,'a',1,NULL,NULL),(76,104,'a',1,NULL,NULL),(77,105,'a',1,NULL,NULL),(78,106,'a',0,NULL,NULL),(79,107,'a',0,NULL,NULL),(80,108,'s',1,NULL,NULL),(81,109,'r',1,NULL,NULL),(82,112,'r',1,NULL,NULL),(83,117,'r',1,NULL,NULL),(84,121,'r',1,NULL,NULL),(85,122,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,28),(2,2,23),(3,3,26),(4,4,21),(5,5,2),(6,6,14),(7,7,21),(8,8,2),(9,9,29),(10,9,16),(11,10,29),(12,11,2),(13,12,29),(14,13,29),(15,14,14),(16,15,31),(17,15,29),(18,16,7),(19,17,7),(20,18,29),(21,19,29),(22,20,2),(23,21,29),(24,22,1),(25,23,1),(26,24,29),(27,24,31),(28,25,36),(29,26,2),(30,27,7),(31,28,9),(32,29,39),(33,30,14),(34,31,44),(35,32,35),(36,33,7),(37,33,4),(38,34,3),(39,35,12),(40,36,2),(41,37,21),(42,38,45),(43,39,31),(44,40,49),(45,41,2),(46,42,48),(47,43,7),(48,43,4),(49,44,21),(50,45,45),(51,46,22),(52,47,24),(53,49,4),(54,48,12),(55,50,2),(56,51,53),(57,52,3),(58,53,48),(59,54,5),(60,55,2),(61,56,53),(62,57,38),(63,58,22),(64,59,32),(65,60,38),(66,61,2),(67,62,15),(68,63,4),(69,64,13),(70,65,48),(71,66,2),(72,67,9),(73,68,27),(74,69,3),(75,70,12),(76,71,34),(77,72,44),(78,73,7),(79,74,13),(80,75,15),(81,76,3),(82,77,2),(83,78,30),(84,79,40),(85,80,37),(86,81,37),(87,82,3),(88,83,27),(89,84,24),(90,85,40),(91,86,49),(92,87,49),(93,88,3),(94,89,22),(95,90,13),(96,91,22),(97,92,20),(98,93,42),(99,94,5),(100,95,30),(101,96,48),(102,97,6),(103,97,38),(104,97,34),(105,98,12),(106,99,45),(107,100,42),(108,100,44),(109,100,17),(110,101,38),(111,102,27),(112,103,13),(113,104,50),(114,105,38),(115,106,44),(116,107,38),(117,107,34),(118,107,6),(119,108,3),(120,109,37),(121,110,43),(122,111,40),(123,112,32),(124,113,24),(125,114,12),(126,115,20),(127,116,44),(128,117,30),(129,118,27),(130,119,43),(131,120,9),(132,121,40),(133,122,34),(134,123,22),(135,124,27),(136,125,30),(137,126,9),(138,127,50),(139,128,22),(140,129,43),(141,130,15),(142,131,13),(143,132,53),(144,133,13),(145,134,40),(146,135,9),(147,136,9),(148,137,12),(149,138,30),(150,139,42),(151,139,17),(152,139,44),(153,140,5),(154,141,27),(155,142,42),(156,143,50),(157,144,12),(158,145,58),(159,146,59),(160,147,57),(161,148,58),(162,149,61),(163,149,60),(164,149,59),(165,150,62),(166,151,58),(167,152,58),(168,153,61),(169,154,58),(170,155,56),(171,156,61),(172,157,64),(173,158,56),(174,159,59),(175,160,61),(176,160,59),(177,160,60),(178,161,64),(179,162,56),(180,163,58),(181,164,62),(182,165,58),(183,166,56),(184,167,58),(185,168,58),(186,169,56),(187,170,64),(188,171,75),(189,172,75),(190,173,81),(191,174,78),(192,175,72),(193,176,75),(194,177,79),(195,178,75),(196,179,78),(197,180,75),(198,181,72),(199,182,75),(200,183,74),(201,184,75),(202,185,66),(203,186,72),(204,187,78),(205,188,76),(206,188,78),(207,188,77),(208,189,75),(209,190,76),(210,191,72),(211,192,71),(212,193,79),(213,194,81),(214,195,81),(215,196,76),(216,197,76),(217,197,77),(218,197,78),(219,198,78),(220,199,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,28,'<com.HlKibO.AnUuSjEgcEtnuj: void onRestart()>',4,'a',NULL),(2,23,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(3,26,'<com.HlKibO.VuJEUcstLLIeUk: void onRestart()>',7,'a',NULL),(4,21,'<com.bNjMGAK.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(5,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(6,14,'<com.android_isorbnymmkdej.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(7,21,'<com.bNjMGAK.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(8,55,'<c: void onClick(android.view.View)>',221,'a',NULL),(9,16,'<msg.rgdcqdd.GameModeActivity: void onClick(android.view.View)>',8,'a',NULL),(10,29,'<com.bNjMGAK.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(11,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(12,56,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(13,29,'<com.bNjMGAK.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(14,14,'<com.android_isorbnymmkdej.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(15,57,'<com.bNjMGAK.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(16,7,'<com.android_isorbnymmkdej.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(17,7,'<com.android_isorbnymmkdej.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(18,29,'<com.bNjMGAK.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(19,29,'<com.bNjMGAK.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(20,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(21,29,'<com.bNjMGAK.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(22,1,'<com.android_isorbnymmkdej.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(23,1,'<com.android_isorbnymmkdej.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(24,31,'<com.bNjMGAK.nubFUsvB: void a(com.bNjMGAK.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(25,37,'<com.bNjMGAK.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(26,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(27,7,'<com.android_isorbnymmkdej.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(28,58,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(29,59,'<com.bNjMGAK.ad: void run()>',25,'s',NULL),(30,14,'<com.android_isorbnymmkdej.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(31,44,'<com.android_osjpdyhbzmx.sGNouiqN12: void onClick(android.view.View)>',53,'a',NULL),(32,35,'<com.bNjMGAK.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(33,60,'<g: void a(int,boolean)>',10,'s',NULL),(34,61,'<df: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(35,12,'<com.android_osjpdyhbzmx.sGNouiqN7: void onCreate(android.os.Bundle)>',98,'s',NULL),(36,62,'<ad: void onClick(android.view.View)>',218,'a',NULL),(37,63,'<com.bNjMGAK.ab: void run()>',8,'s',NULL),(38,45,'<com.android_osmxddzbtj.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(39,31,'<com.bNjMGAK.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(40,49,'<com.android_osmxddzbtj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(41,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(42,48,'<com.android_osjpdyhbzmx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',56,'s',NULL),(43,60,'<g: void a(int,boolean)>',57,'a',NULL),(44,21,'<com.bNjMGAK.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(45,45,'<com.android_osmxddzbtj.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(46,22,'<com.android_osjpdyhbzmx.sGNouiqN3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(47,64,'<cf: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(48,65,'<cf: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(49,4,'<com.android_isorbnymmkdej.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(50,55,'<c: void onClick(android.view.View)>',242,'a',NULL),(51,53,'<com.android_osjpdyhbzmx.sGNouiqN1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(52,61,'<df: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(53,48,'<com.android_osjpdyhbzmx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',52,'s',NULL),(54,66,'<ab: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(55,62,'<ad: void onClick(android.view.View)>',239,'a',NULL),(56,53,'<com.android_osjpdyhbzmx.sGNouiqN1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(57,38,'<com.android_osmxddzbtj.GameAlertDialog: void onClick(android.view.View)>',84,'a',NULL),(58,22,'<com.android_osjpdyhbzmx.sGNouiqN3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(59,32,'<com.android_osjpdyhbzmx.sGNouiqN11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(60,38,'<com.android_osmxddzbtj.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(61,2,'<com.android_isorbnymmkdej.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(62,67,'<bq: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(63,4,'<com.android_isorbnymmkdej.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(64,68,'<g: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(65,48,'<com.android_osjpdyhbzmx.image.ImageTestActivity: void b()>',9,'a',NULL),(66,69,'<a: void onClick(android.view.View)>',239,'a',NULL),(67,58,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(68,70,'<j: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(69,71,'<dg: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(70,12,'<com.android_osjpdyhbzmx.sGNouiqN7: void onCreate(android.os.Bundle)>',103,'s',NULL),(71,34,'<com.android_osmxddzbtj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(72,44,'<com.android_osjpdyhbzmx.sGNouiqN12: void onClick(android.view.View)>',84,'a',NULL),(73,7,'<com.android_isorbnymmkdej.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(74,13,'<com.android_osmxddzbtj.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(75,15,'<com.android_osjpdyhbzmx.sGNouiqN6: void onCreate(android.os.Bundle)>',21,'s',NULL),(76,3,'<com.android_osmxddzbtj.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(77,69,'<a: void onClick(android.view.View)>',218,'a',NULL),(78,72,'<am: void onClick(android.view.View)>',239,'a',NULL),(79,40,'<com.android_osjpdyhbzmx.sGNouiqN8: void onCreate(android.os.Bundle)>',108,'a',NULL),(80,73,'<bx: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(81,73,'<bx: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(82,3,'<com.android_osmxddzbtj.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(83,70,'<j: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(84,64,'<cf: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(85,74,'<aw: void onClick(android.view.View)>',239,'a',NULL),(86,49,'<com.android_osmxddzbtj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(87,49,'<com.android_osmxddzbtj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(88,61,'<df: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(89,75,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(90,13,'<com.android_osmxddzbtj.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(91,75,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(92,20,'<com.android_osmxddzbtj.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(93,42,'<com.android_osjpdyhbzmx.sGNouiqN5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(94,5,'<com.android_osmxddzbtj.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(95,72,'<am: void onClick(android.view.View)>',218,'a',NULL),(96,76,'<cs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(97,6,'<com.android_osmxddzbtj.NoDetail: void a(int,boolean)>',10,'s',NULL),(98,65,'<cf: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(99,77,'<dm: void onClick(android.view.View)>',6,'a',NULL),(100,17,'<com.android_osjpdyhbzmx.sGNouiqN13: void a(int,boolean)>',10,'s',NULL),(101,38,'<com.android_osmxddzbtj.GameAlertDialog: void onClick(android.view.View)>',75,'a',NULL),(102,27,'<com.android_osjpdyhbzmx.sGNouiqN10: void onCreate(android.os.Bundle)>',13,'s',NULL),(103,78,'<h: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(104,79,'<cg: void onClick(android.view.View)>',6,'a',NULL),(105,38,'<com.android_osmxddzbtj.GameAlertDialog: void onClick(android.view.View)>',66,'a',NULL),(106,44,'<com.android_osjpdyhbzmx.sGNouiqN12: void onClick(android.view.View)>',66,'a',NULL),(107,6,'<com.android_osmxddzbtj.NoDetail: void a(int,boolean)>',63,'a',NULL),(108,61,'<df: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(109,36,'<com.android_osjpdyhbzmx.sGNouiqN4: void onCreate(android.os.Bundle)>',50,'s',NULL),(110,43,'<com.android_osmxddzbtj.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(111,40,'<com.android_osjpdyhbzmx.sGNouiqN8: void onCreate(android.os.Bundle)>',113,'a',NULL),(112,32,'<com.android_osjpdyhbzmx.sGNouiqN11: void onCreate(android.os.Bundle)>',14,'s',NULL),(113,24,'<com.android_osmxddzbtj.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(114,65,'<cf: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(115,20,'<com.android_osmxddzbtj.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(116,44,'<com.android_osjpdyhbzmx.sGNouiqN12: void onClick(android.view.View)>',75,'a',NULL),(117,30,'<com.android_osmxddzbtj.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(118,70,'<j: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(119,43,'<com.android_osmxddzbtj.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(120,9,'<com.android_osmxddzbtj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(121,40,'<com.android_osjpdyhbzmx.sGNouiqN8: void onCreate(android.os.Bundle)>',25,'s',NULL),(122,34,'<com.android_osmxddzbtj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(123,22,'<com.android_osjpdyhbzmx.sGNouiqN3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(124,80,'<i: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(125,30,'<com.android_osmxddzbtj.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(126,58,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(127,50,'<com.android_osjpdyhbzmx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(128,75,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(129,81,'<ec: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(130,15,'<com.android_osjpdyhbzmx.sGNouiqN6: void onCreate(android.os.Bundle)>',25,'s',NULL),(131,78,'<h: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(132,53,'<com.android_osjpdyhbzmx.sGNouiqN1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(133,78,'<h: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(134,74,'<aw: void onClick(android.view.View)>',218,'a',NULL),(135,9,'<com.android_osmxddzbtj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(136,9,'<com.android_osmxddzbtj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(137,65,'<cf: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(138,30,'<com.android_osmxddzbtj.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(139,17,'<com.android_osjpdyhbzmx.sGNouiqN13: void a(int,boolean)>',63,'a',NULL),(140,5,'<com.android_osmxddzbtj.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(141,27,'<com.android_osjpdyhbzmx.sGNouiqN10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(142,42,'<com.android_osjpdyhbzmx.sGNouiqN5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(143,50,'<com.android_osjpdyhbzmx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(144,82,'<dt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(145,110,'<com.kBjlsr.ae: void onClick(android.view.View)>',197,'a',NULL),(146,87,'<com.kBjlsr.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(147,85,'<com.kBjlsr.sIHKcQcwVjF: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(148,111,'<com.kBjlsr.ab: void onClick(android.view.View)>',185,'a',NULL),(149,88,'<com.kBjlsr.HoVoqcapJR: void a(int,boolean)>',10,'s',NULL),(150,90,'<com.kBjlsr.KdlOUSfDBLQK: void onClick(android.view.View)>',26,'a',NULL),(151,86,'<com.kBjlsr.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(152,110,'<com.kBjlsr.ae: void onClick(android.view.View)>',182,'a',NULL),(153,89,'<com.kBjlsr.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(154,86,'<com.kBjlsr.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(155,84,'<com.kBjlsr.wDcdTEsV: void onCreate(android.os.Bundle)>',61,'s',NULL),(156,89,'<com.kBjlsr.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(157,92,'<com.kBjlsr.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(158,113,'<com.kBjlsr.bh: void onClick(android.view.View)>',101,'a',NULL),(159,87,'<com.kBjlsr.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(160,88,'<com.kBjlsr.HoVoqcapJR: void a(int,boolean)>',42,'a',NULL),(161,92,'<com.kBjlsr.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(162,114,'<com.kBjlsr.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(163,111,'<com.kBjlsr.ab: void onClick(android.view.View)>',200,'a',NULL),(164,90,'<com.kBjlsr.KdlOUSfDBLQK: void onCreate(android.os.Bundle)>',13,'s',NULL),(165,86,'<com.kBjlsr.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(166,84,'<com.kBjlsr.wDcdTEsV: void onCreate(android.os.Bundle)>',57,'s',NULL),(167,115,'<com.kBjlsr.aa: void onClick(android.view.View)>',182,'a',NULL),(168,115,'<com.kBjlsr.aa: void onClick(android.view.View)>',197,'a',NULL),(169,116,'<com.kBjlsr.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(170,92,'<com.kBjlsr.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(171,118,'<tlo.vTJgh.y: void onClick(android.view.View)>',242,'a',NULL),(172,103,'<tlo.vTJgh.UAoSjbFFk8: void onCreate(android.os.Bundle)>',39,'s',NULL),(173,109,'<tlo.vTJgh.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(174,106,'<tlo.vTJgh.UAoSjbFFk10: void onClick(android.view.View)>',68,'a',NULL),(175,119,'<tlo.vTJgh.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(176,120,'<tlo.vTJgh.z: void onClick(android.view.View)>',239,'a',NULL),(177,107,'<tlo.vTJgh.UAoSjbFFk22: void onClick(android.view.View)>',26,'a',NULL),(178,120,'<tlo.vTJgh.z: void onClick(android.view.View)>',218,'a',NULL),(179,106,'<tlo.vTJgh.UAoSjbFFk10: void onClick(android.view.View)>',86,'a',NULL),(180,123,'<tlo.vTJgh.u: void onClick(android.view.View)>',218,'a',NULL),(181,124,'<tlo.vTJgh.aj: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(182,103,'<tlo.vTJgh.UAoSjbFFk8: void onCreate(android.os.Bundle)>',90,'s',NULL),(183,102,'<tlo.vTJgh.UAoSjbFFk16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(184,123,'<tlo.vTJgh.u: void onClick(android.view.View)>',239,'a',NULL),(185,94,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(186,100,'<tlo.vTJgh.UAoSjbFFk21: void onCreate(android.os.Bundle)>',69,'s',NULL),(187,106,'<tlo.vTJgh.UAoSjbFFk10: void onClick(android.view.View)>',77,'a',NULL),(188,105,'<tlo.vTJgh.UAoSjbFFk2: void a(int,boolean)>',10,'s',NULL),(189,118,'<tlo.vTJgh.y: void onClick(android.view.View)>',221,'a',NULL),(190,104,'<tlo.vTJgh.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(191,125,'<tlo.vTJgh.ak: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(192,99,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(193,107,'<tlo.vTJgh.UAoSjbFFk22: void onCreate(android.os.Bundle)>',13,'s',NULL),(194,109,'<tlo.vTJgh.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(195,109,'<tlo.vTJgh.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(196,104,'<tlo.vTJgh.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(197,105,'<tlo.vTJgh.UAoSjbFFk2: void a(int,boolean)>',43,'a',NULL),(198,106,'<tlo.vTJgh.UAoSjbFFk10: void onClick(android.view.View)>',55,'a',NULL),(199,100,'<tlo.vTJgh.UAoSjbFFk21: void onCreate(android.os.Bundle)>',65,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,7),(3,4,7),(4,9,6),(5,11,6),(6,14,6),(7,16,8),(8,17,6),(9,18,4),(10,25,1),(11,26,9),(12,27,1),(13,28,10),(14,31,6),(15,32,6),(16,33,6),(17,35,8),(18,37,6),(19,41,6),(20,40,11),(21,45,6),(22,44,12),(23,46,1),(24,47,1),(25,53,6),(26,55,1),(27,58,1),(28,59,1),(29,60,14),(30,62,1),(31,63,1),(32,64,15),(33,65,1),(34,66,17),(35,67,6),(36,69,1),(37,70,1),(38,73,1),(39,74,1),(40,78,6),(41,79,1),(42,81,1),(43,83,1),(44,85,1),(45,87,1),(46,88,6),(47,89,1),(48,95,18),(49,97,6),(50,98,19),(51,99,6),(52,100,1),(53,102,1),(54,103,1),(55,104,1),(56,105,1),(57,106,1),(58,107,20),(59,108,21),(60,109,22),(61,110,6),(62,111,20),(63,112,1),(64,113,1),(65,114,23),(66,115,1),(67,116,23),(68,117,1),(69,121,6),(70,123,1),(71,125,1),(72,126,6),(73,127,6),(74,128,6),(75,133,4),(76,137,6),(77,138,6),(78,139,6),(79,140,6),(80,144,24),(81,146,17),(82,151,4),(83,157,1),(84,158,6),(85,159,1),(86,163,6),(87,165,6),(88,168,14),(89,169,6),(90,170,6),(91,172,6),(92,173,6),(93,177,25),(94,179,26),(95,182,6),(96,183,1),(97,184,1),(98,185,1),(99,186,1),(100,191,6),(101,192,6),(102,193,6),(103,194,6),(104,196,1),(105,197,1),(106,198,1),(107,199,6),(108,200,6),(109,201,6),(110,202,6),(111,203,6),(112,204,6),(113,208,27),(114,209,28),(115,211,1),(116,212,1),(117,213,1),(118,214,1),(119,215,1),(120,216,1),(121,219,1),(122,220,1),(123,221,1),(124,222,1),(125,226,6),(126,227,6),(127,228,6),(128,229,6),(129,230,1),(130,231,1),(131,232,1),(132,233,1),(133,235,27),(134,236,28),(135,237,1),(136,238,1),(137,239,1),(138,240,1),(139,243,6),(140,244,6),(141,246,1),(142,247,1),(143,248,1),(144,249,1),(145,250,1),(146,251,6),(147,252,6),(148,254,6),(149,255,6),(150,259,1),(151,260,1),(152,261,1),(153,262,1),(154,263,6),(155,264,7),(156,265,7),(157,267,4),(158,269,6),(159,270,6),(160,271,1),(161,272,1),(162,274,29),(163,276,30),(164,277,30),(165,279,1),(166,280,1),(167,281,1),(168,282,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,25,2),(2,27,3),(3,46,2),(4,47,3),(5,55,2),(6,58,3),(7,59,2),(8,62,3),(9,63,2),(10,65,3),(11,69,2),(12,70,3),(13,73,2),(14,74,3),(15,79,2),(16,81,3),(17,83,2),(18,85,3),(19,87,2),(20,89,3),(21,100,2),(22,102,3),(23,103,2),(24,104,2),(25,105,3),(26,106,3),(27,112,2),(28,113,3),(29,115,2),(30,117,3),(31,123,2),(32,125,3),(33,157,2),(34,159,3),(35,183,2),(36,184,3),(37,185,2),(38,186,3),(39,196,5),(40,197,2),(41,198,3),(42,211,2),(43,212,3),(44,213,2),(45,214,3),(46,215,2),(47,216,3),(48,219,2),(49,220,3),(50,221,2),(51,222,3),(52,230,2),(53,231,3),(54,232,2),(55,233,3),(56,237,2),(57,238,3),(58,239,2),(59,240,3),(60,246,2),(61,247,3),(62,248,2),(63,249,3),(64,250,5),(65,259,2),(66,260,3),(67,261,2),(68,262,3),(69,271,2),(70,272,3),(71,279,2),(72,280,3),(73,281,2),(74,282,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'softkos/gesaa/MainActivity'),(2,5,'softkos/gesaa/MainActivity'),(3,6,'com/bNjMGAK/IQCLFEHFOSUMb'),(4,7,'com/android_isorbnymmkdej/GameService'),(5,8,'com/android_isorbnymmkdej/GameService'),(6,10,'msg/rgdcqdd/KickFly'),(7,12,'msg/rgdcqdd/GameModeActivity'),(8,13,'com/android_isorbnymmkdej/PintuActivity'),(9,15,'msg/rgdcqdd/GameModeActivity'),(10,16,'com/android_isorbnymmkdej/GameService'),(11,20,'msg/rgdcqdd/GameModeActivity'),(12,19,'com/android_isorbnymmkdej/GameInfo'),(13,21,'msg/rgdcqdd/GameModeActivity'),(14,22,'com/android_isorbnymmkdej/GameService'),(15,23,'msg/rgdcqdd/GameModeActivity'),(16,24,'com/android_isorbnymmkdej/GameService'),(17,26,'com/android_isorbnymmkdej/GameService'),(18,28,'com/android_isorbnymmkdej/GameService'),(19,30,'com/android_isorbnymmkdej/PintuActivity'),(20,29,'com/bNjMGAK/nubFUsvB'),(21,34,'com/bNjMGAK/jcEFEUtvmEBl'),(22,35,'com/android_isorbnymmkdej/GameService'),(23,36,'com/android_osjpdyhbzmx/sGNouiqN8'),(24,38,'com/android_isorbnymmkdej/GameService'),(25,39,'com/android_osmxddzbtj/Myhall'),(26,40,'com/android_osjpdyhbzmx/sGNouiqN2'),(27,42,'com/bNjMGAK/jcEFEUtvmEBl'),(28,44,'com/android_osjpdyhbzmx/sGNouiqN2'),(29,43,'com/android_osmxddzbtj/GameInfo'),(30,48,'com/android_osmxddzbtj/GameService'),(31,49,'com/android_isorbnymmkdej/PintuActivity'),(32,50,'com/android_osjpdyhbzmx/sGNouiqN2'),(33,51,'com/android_isorbnymmkdej/PintuActivity'),(34,52,'com/bNjMGAK/IQCLFEHFOSUMb'),(35,54,'com/android_osjpdyhbzmx/sGNouiqN7'),(36,57,'com/android_osjpdyhbzmx/sGNouiqN7'),(37,56,'com/android_isorbnymmkdej/GameInfo'),(38,60,'com/android_osjpdyhbzmx/sGNouiqN2'),(39,61,'com/android_osmxddzbtj/Myhall'),(40,64,'com/android_osjpdyhbzmx/sGNouiqN2'),(41,66,'com/android_osjpdyhbzmx/sGNouiqN2'),(42,68,'com/android_osjpdyhbzmx/sGNouiqN2'),(43,72,'com/android_osjpdyhbzmx/sGNouiqN8'),(44,71,'com/android_osmxddzbtj/GameAlertDialog'),(45,75,'com/android_osjpdyhbzmx/sGNouiqN8'),(46,77,'com/android_isorbnymmkdej/PintuActivity'),(47,76,'com/android_osmxddzbtj/GameInfo'),(48,80,'com/android_osmxddzbtj/Myhall'),(49,82,'com/android_osjpdyhbzmx/image/ShowPopWeb'),(50,84,'com/android_osmxddzbtj/Myhall'),(51,86,'com/android_osjpdyhbzmx/sGNouiqN7'),(52,90,'com/android_osjpdyhbzmx/sGNouiqN2'),(53,91,'com/android_osmxddzbtj/GameInfo'),(54,92,'com/android_osjpdyhbzmx/sGNouiqN12'),(55,94,'com/android_osmxddzbtj/GameService'),(56,93,'com/android_isorbnymmkdej/GameAlertDialog'),(57,95,'com/android_osjpdyhbzmx/sGNouiqN2'),(58,96,'com/android_osmxddzbtj/GameService'),(59,98,'com/android_osjpdyhbzmx/sGNouiqN2'),(60,101,'com/android_osjpdyhbzmx/sGNouiqN7'),(61,108,'com/android_osmxddzbtj/GameService'),(62,109,'com/android_osmxddzbtj/GameService'),(63,114,'com/android_osmxddzbtj/GameService'),(64,116,'com/android_osmxddzbtj/GameService'),(65,118,'com/android_osmxddzbtj/Myhall'),(66,119,'com/android_osjpdyhbzmx/sGNouiqN7'),(67,120,'com/android_osmxddzbtj/GameInfo'),(68,122,'com/android_osmxddzbtj/GameService'),(69,124,'com/android_osmxddzbtj/GameService'),(70,129,'com/android_osmxddzbtj/GameService'),(71,130,'com/android_osjpdyhbzmx/sGNouiqN7'),(72,131,'com/android_osmxddzbtj/image/ImageTestActivity'),(73,132,'com/android_osjpdyhbzmx/sGNouiqN2'),(74,134,'com/android_osjpdyhbzmx/sGNouiqN2'),(75,135,'com/android_osmxddzbtj/Myhall'),(76,136,'com/android_osjpdyhbzmx/image/ImageTestActivity'),(77,141,'com/android_osmxddzbtj/image/ImageTestActivity'),(78,142,'com/android_osmxddzbtj/Myhall'),(79,143,'com/android_osjpdyhbzmx/sGNouiqN2'),(80,144,'com/android_osmxddzbtj/GameService'),(81,145,'com/android_osjpdyhbzmx/sGNouiqN7'),(82,146,'com/android_osmxddzbtj/GameService'),(83,147,'com/android_osjpdyhbzmx/sGNouiqN2'),(84,148,'com/android_osmxddzbtj/GameService'),(85,149,'com/android_osjpdyhbzmx/sGNouiqN7'),(86,150,'com/android_osmxddzbtj/GameInfo'),(87,152,'com/android_osmxddzbtj/GameService'),(88,154,'com/android_osmxddzbtj/GameService'),(89,153,'com/android_osjpdyhbzmx/sGNouiqN8'),(90,156,'com/android_osjpdyhbzmx/sGNouiqN2'),(91,155,'com/android_osmxddzbtj/GameInfo'),(92,161,'com/android_osmxddzbtj/Myhall'),(93,160,'com/android_osjpdyhbzmx/sGNouiqN7'),(94,162,'com/android_osmxddzbtj/GameInfo'),(95,164,'com/android_osjpdyhbzmx/sGNouiqN8'),(96,166,'com/android_osjpdyhbzmx/sGNouiqN2'),(97,167,'com/android_osmxddzbtj/GameInfo'),(98,168,'com/android_osjpdyhbzmx/sGNouiqN2'),(99,171,'com/android_osmxddzbtj/Myhall'),(100,174,'com/android_osjpdyhbzmx/sGNouiqN7'),(101,175,'com/android_osmxddzbtj/Myhall'),(102,176,'com/android_osjpdyhbzmx/image/ImageTestActivity'),(103,177,'com/android_osmxddzbtj/GameService'),(104,178,'com/android_osjpdyhbzmx/sGNouiqN8'),(105,179,'com/android_osmxddzbtj/GameService'),(106,180,'com/android_osjpdyhbzmx/sGNouiqN8'),(107,181,'com/android_osjpdyhbzmx/sGNouiqN8'),(108,187,'com/kBjlsr/MyAppInfo'),(109,188,'com/kBjlsr/MyAppInfo'),(110,189,'com/kBjlsr/MyAppInfo'),(111,190,'mp/andro/ATemplate/ATemplate'),(112,195,'com/kBjlsr/MyAppService'),(113,205,'com/kBjlsr/MyAppService'),(114,206,'com/kBjlsr/MyAppService'),(115,207,'com/kBjlsr/MyAppInfo'),(116,208,'com/kBjlsr/MyAppService'),(117,209,'com/kBjlsr/MyAppService'),(118,210,'com/kBjlsr/sIHKcQcwVjF'),(119,217,'com/kBjlsr/MyAppService'),(120,218,'mp/andro/ATemplate/ATemplate'),(121,223,'com/kBjlsr/MyAppService'),(122,224,'com/kBjlsr/MyAppService'),(123,225,'com/kBjlsr/MyAppService'),(124,234,'mp/andro/ATemplate/ATemplate'),(125,235,'com/kBjlsr/MyAppService'),(126,236,'com/kBjlsr/MyAppService'),(127,241,'tlo/vTJgh/UAoSjbFFk11'),(128,242,'tlo/vTJgh/UAoSjbFFk11'),(129,245,'tlo/vTJgh/UAoSjbFFk16'),(130,253,'tlo/vTJgh/UAoSjbFFk10'),(131,256,'ohh/grpqj/wwot/lmclaeflonhd_blsg/LostTreasure_Paid'),(132,257,'tlo/vTJgh/UAoSjbFFk11'),(133,258,'ohh/grpqj/wwot/lmclaeflonhd_blsg/LostTreasure_Paid'),(134,266,'tlo/vTJgh/UAoSjbFFk11'),(135,268,'tlo/vTJgh/UAoSjbFFk11'),(136,273,'ohh/grpqj/wwot/lmclaeflonhd_blsg/LostTreasure_Paid'),(137,275,'tlo/vTJgh/UAoSjbFFk11'),(138,276,'tlo/vTJgh/UAoSjbFFk11'),(139,277,'tlo/vTJgh/UAoSjbFFk11'),(140,278,'tlo/vTJgh/UAoSjbFFk8'),(141,283,'tlo/vTJgh/UAoSjbFFk8'),(142,284,'tlo/vTJgh/UAoSjbFFk11');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,9,4),(5,11,5),(6,14,6),(7,17,7),(8,31,8),(9,32,9),(10,33,10),(11,37,11),(12,41,12),(13,45,13),(14,53,14),(15,67,15),(16,78,16),(17,88,17),(18,97,18),(19,99,19),(20,107,20),(21,110,21),(22,111,22),(23,121,23),(24,126,24),(25,127,25),(26,128,26),(27,137,27),(28,138,28),(29,139,29),(30,140,30),(31,158,31),(32,163,32),(33,165,33),(34,169,34),(35,170,35),(36,172,36),(37,173,37),(38,182,38),(39,191,39),(40,192,40),(41,193,41),(42,194,42),(43,199,43),(44,200,44),(45,201,45),(46,202,46),(47,203,47),(48,204,48),(49,226,49),(50,227,50),(51,228,51),(52,229,52),(53,243,53),(54,244,54),(55,251,55),(56,252,56),(57,254,57),(58,255,58),(59,263,59),(60,264,60),(61,265,61),(62,269,62),(63,270,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,19,'id'),(2,19,'from_alert'),(3,19,'detail_flag'),(4,29,'apkVersion'),(5,29,'apkURL'),(6,29,'apkInfo'),(7,29,'packageName'),(8,29,'apkSoftID'),(9,29,'apkTitle'),(10,29,'iconURL'),(11,29,'apkSize'),(12,29,'imageURL'),(13,36,'id'),(14,36,'from_alert'),(15,36,'detail_flag'),(16,39,'clicked'),(17,43,'game'),(18,43,'fromtype'),(19,54,'nextclassid'),(20,54,'clicked'),(21,56,'game'),(22,57,'clicked'),(23,56,'fromtype'),(24,61,'clicked'),(25,71,'title'),(26,71,'btn_txt'),(27,71,'need_adb_flag'),(28,72,'game'),(29,71,'cont'),(30,72,'fromtype'),(31,71,'close_flag'),(32,75,'game'),(33,75,'fromtype'),(34,76,'id'),(35,76,'from_alert'),(36,76,'detail_flag'),(37,80,'title'),(38,80,'nextclassid'),(39,80,'clicked'),(40,82,'popurl'),(41,82,'poptitle'),(42,84,'title'),(43,84,'nextclassid'),(44,84,'clicked'),(45,86,'title'),(46,86,'nextclassid'),(47,86,'clicked'),(48,91,'game'),(49,91,'fromtype'),(50,92,'title'),(51,92,'btn_txt'),(52,92,'need_adb_flag'),(53,92,'cont'),(54,92,'close_flag'),(55,93,'title'),(56,93,'btn_txt'),(57,93,'need_adb_flag'),(58,93,'cont'),(59,93,'close_flag'),(60,118,'clicked'),(61,119,'title'),(62,119,'nextclassid'),(63,119,'clicked'),(64,120,'title'),(65,120,'game'),(66,120,'fromtype'),(67,130,'clicked'),(68,135,'title'),(69,135,'nextclassid'),(70,135,'clicked'),(71,142,'clicked'),(72,149,'clicked'),(73,150,'game'),(74,150,'fromtype'),(75,153,'title'),(76,153,'game'),(77,153,'fromtype'),(78,155,'game'),(79,155,'fromtype'),(80,160,'title'),(81,160,'nextclassid'),(82,160,'clicked'),(83,162,'title'),(84,162,'game'),(85,162,'fromtype'),(86,164,'title'),(87,164,'game'),(88,164,'fromtype'),(89,167,'title'),(90,167,'game'),(91,167,'fromtype'),(92,171,'nextclassid'),(93,171,'clicked'),(94,174,'clicked'),(95,178,'title'),(96,178,'game'),(97,178,'fromtype'),(98,180,'game'),(99,180,'fromtype'),(100,181,'game'),(101,181,'fromtype'),(102,187,''),(103,187,'(.*)'),(104,188,'(.*)'),(105,189,''),(106,207,'id'),(107,207,'df'),(108,207,'fa'),(109,210,'popurl'),(110,210,'poptitle'),(111,245,'popurl'),(112,245,'poptitle'),(113,253,'title'),(114,253,'btn_txt'),(115,253,'need_adb_flag'),(116,253,'cont'),(117,253,'close_flag'),(118,274,'adViewLeaveParameter'),(119,278,'game'),(120,278,'fromtype'),(121,283,'id'),(122,283,'from_alert'),(123,283,'detail_flag');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,9,2),(8,10,1),(9,12,1),(10,13,1),(11,14,1),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,1),(17,20,1),(18,21,1),(19,22,3),(20,23,1),(21,24,4),(22,25,1),(23,26,1),(24,27,1),(25,28,4),(26,29,1),(27,30,1),(28,31,2),(29,32,1),(30,33,2),(31,34,3),(32,34,5),(33,35,13),(34,36,16),(35,37,16),(36,38,16),(37,39,13),(38,40,13),(39,42,1),(40,43,1),(41,44,1),(42,45,1),(43,46,1),(44,47,3),(45,47,2),(46,49,1),(47,50,1),(48,51,1),(49,52,1),(50,53,1),(51,54,2),(52,54,3),(53,55,5),(54,56,13),(55,57,3),(56,58,16),(57,59,16),(58,60,13),(59,61,3),(60,62,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,13,2),(5,16,2),(6,26,2),(7,29,2),(8,30,2),(9,32,2),(10,35,4),(11,36,4),(12,37,4),(13,38,4),(14,39,4),(15,40,4),(16,42,2),(17,46,2),(18,49,2),(19,53,2),(20,56,4),(21,58,4),(22,59,4),(23,60,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,35,'package',NULL,NULL,NULL,NULL,NULL),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,37,'package',NULL,NULL,NULL,NULL,NULL),(4,38,'package',NULL,NULL,NULL,NULL,NULL),(5,39,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,56,'package',NULL,NULL,NULL,NULL,NULL),(8,58,'package',NULL,NULL,NULL,NULL,NULL),(9,59,'package',NULL,NULL,NULL,NULL,NULL),(10,60,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'(.*)','(.*)'),(2,9,'application','vnd.android.package-archive'),(3,11,'application','vnd.android.package-archive'),(4,17,'application','vnd.android.package-archive'),(5,37,'application','vnd.android.package-archive'),(6,41,'application','vnd.android.package-archive'),(7,45,'application','vnd.android.package-archive'),(8,67,'application','vnd.android.package-archive'),(9,78,'application','vnd.android.package-archive'),(10,88,'application','vnd.android.package-archive'),(11,97,'application','vnd.android.package-archive'),(12,99,'application','vnd.android.package-archive'),(13,126,'application','vnd.android.package-archive'),(14,127,'application','vnd.android.package-archive'),(15,128,'application','vnd.android.package-archive'),(16,165,'application','vnd.android.package-archive'),(17,170,'application','vnd.android.package-archive'),(18,172,'application','vnd.android.package-archive'),(19,182,'application','vnd.android.package-archive'),(20,193,'(.*)','(.*)'),(21,194,'(.*)','(.*)'),(22,201,'(.*)','(.*)'),(23,202,'(.*)','(.*)'),(24,228,'(.*)','(.*)'),(25,229,'(.*)','(.*)'),(26,251,'application','vnd.android.package-archive'),(27,252,'application','vnd.android.package-archive'),(28,254,'application','vnd.android.package-archive'),(29,255,'application','vnd.android.package-archive'),(30,264,'(.*)','(.*)'),(31,269,'application','vnd.android.package-archive'),(32,270,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'softkos.gesaa'),(2,5,'softkos.gesaa'),(3,6,'msg.rgdcqdd'),(4,7,'com.android_isorbnymmkdej'),(5,8,'com.android_isorbnymmkdej'),(6,10,'msg.rgdcqdd'),(7,12,'msg.rgdcqdd'),(8,13,'com.android_isorbnymmkdej'),(9,15,'msg.rgdcqdd'),(10,16,'com.android_isorbnymmkdej'),(11,20,'msg.rgdcqdd'),(12,19,'com.android_isorbnymmkdej'),(13,21,'msg.rgdcqdd'),(14,22,'com.android_isorbnymmkdej'),(15,23,'msg.rgdcqdd'),(16,24,'com.android_isorbnymmkdej'),(17,25,'(.*)'),(18,26,'com.android_isorbnymmkdej'),(19,27,'(.*)'),(20,28,'com.android_isorbnymmkdej'),(21,30,'com.android_isorbnymmkdej'),(22,29,'msg.rgdcqdd'),(23,34,'msg.rgdcqdd'),(24,35,'com.android_isorbnymmkdej'),(25,36,'com.android_osjpdyhbzmx'),(26,38,'com.android_isorbnymmkdej'),(27,39,'com.android_osmxddzbtj'),(28,40,'com.android_osjpdyhbzmx'),(29,42,'msg.rgdcqdd'),(30,44,'com.android_osjpdyhbzmx'),(31,43,'com.android_osmxddzbtj'),(32,46,'(.*)'),(33,48,'com.android_osmxddzbtj'),(34,47,'(.*)'),(35,49,'com.android_isorbnymmkdej'),(36,50,'com.android_osjpdyhbzmx'),(37,51,'com.android_isorbnymmkdej'),(38,52,'msg.rgdcqdd'),(39,54,'com.android_osjpdyhbzmx'),(40,55,'NULL-CONSTANT'),(41,57,'com.android_osjpdyhbzmx'),(42,56,'com.android_isorbnymmkdej'),(43,58,'NULL-CONSTANT'),(44,59,'(.*)'),(45,60,'com.android_osjpdyhbzmx'),(46,61,'com.android_osmxddzbtj'),(47,62,''),(48,63,''),(49,64,'com.android_osjpdyhbzmx'),(50,65,'(.*)'),(51,66,'com.android_osjpdyhbzmx'),(52,68,'com.android_osjpdyhbzmx'),(53,69,'(.*)'),(54,70,''),(55,73,''),(56,72,'com.android_osjpdyhbzmx'),(57,71,'com.android_osmxddzbtj'),(58,74,'(.*)'),(59,75,'com.android_osjpdyhbzmx'),(60,77,'com.android_isorbnymmkdej'),(61,76,'com.android_osmxddzbtj'),(62,79,'(.*)'),(63,81,'(.*)'),(64,80,'com.android_osmxddzbtj'),(65,82,'com.android_osjpdyhbzmx'),(66,83,'(.*)'),(67,84,'com.android_osmxddzbtj'),(68,85,''),(69,86,'com.android_osjpdyhbzmx'),(70,87,''),(71,89,'(.*)'),(72,90,'com.android_osjpdyhbzmx'),(73,91,'com.android_osmxddzbtj'),(74,92,'com.android_osjpdyhbzmx'),(75,94,'com.android_osmxddzbtj'),(76,93,'com.android_isorbnymmkdej'),(77,95,'com.android_osjpdyhbzmx'),(78,96,'com.android_osmxddzbtj'),(79,98,'com.android_osjpdyhbzmx'),(80,100,'(.*)'),(81,101,'com.android_osjpdyhbzmx'),(82,102,''),(83,103,'NULL-CONSTANT'),(84,104,''),(85,105,'NULL-CONSTANT'),(86,106,'(.*)'),(87,108,'com.android_osmxddzbtj'),(88,109,'com.android_osmxddzbtj'),(89,112,'(.*)'),(90,113,''),(91,114,'com.android_osmxddzbtj'),(92,115,''),(93,116,'com.android_osmxddzbtj'),(94,117,'(.*)'),(95,118,'com.android_osmxddzbtj'),(96,119,'com.android_osjpdyhbzmx'),(97,120,'com.android_osmxddzbtj'),(98,122,'com.android_osmxddzbtj'),(99,123,'(.*)'),(100,124,'com.android_osmxddzbtj'),(101,125,'(.*)'),(102,129,'com.android_osmxddzbtj'),(103,130,'com.android_osjpdyhbzmx'),(104,131,'com.android_osmxddzbtj'),(105,132,'com.android_osjpdyhbzmx'),(106,134,'com.android_osjpdyhbzmx'),(107,135,'com.android_osmxddzbtj'),(108,136,'com.android_osjpdyhbzmx'),(109,141,'com.android_osmxddzbtj'),(110,142,'com.android_osmxddzbtj'),(111,143,'com.android_osjpdyhbzmx'),(112,144,'com.android_osmxddzbtj'),(113,145,'com.android_osjpdyhbzmx'),(114,146,'com.android_osmxddzbtj'),(115,147,'com.android_osjpdyhbzmx'),(116,148,'com.android_osmxddzbtj'),(117,149,'com.android_osjpdyhbzmx'),(118,150,'com.android_osmxddzbtj'),(119,152,'com.android_osmxddzbtj'),(120,154,'com.android_osmxddzbtj'),(121,153,'com.android_osjpdyhbzmx'),(122,156,'com.android_osjpdyhbzmx'),(123,155,'com.android_osmxddzbtj'),(124,157,'(.*)'),(125,159,'(.*)'),(126,161,'com.android_osmxddzbtj'),(127,160,'com.android_osjpdyhbzmx'),(128,162,'com.android_osmxddzbtj'),(129,164,'com.android_osjpdyhbzmx'),(130,166,'com.android_osjpdyhbzmx'),(131,167,'com.android_osmxddzbtj'),(132,168,'com.android_osjpdyhbzmx'),(133,171,'com.android_osmxddzbtj'),(134,174,'com.android_osjpdyhbzmx'),(135,175,'com.android_osmxddzbtj'),(136,176,'com.android_osjpdyhbzmx'),(137,177,'com.android_osmxddzbtj'),(138,178,'com.android_osjpdyhbzmx'),(139,179,'com.android_osmxddzbtj'),(140,180,'com.android_osjpdyhbzmx'),(141,181,'com.android_osjpdyhbzmx'),(142,183,'(.*)'),(143,184,''),(144,185,''),(145,186,'(.*)'),(146,187,'mp.ptdkf.ckbjtgugfp'),(147,188,'mp.ptdkf.ckbjtgugfp'),(148,189,'mp.ptdkf.ckbjtgugfp'),(149,190,'mp.ptdkf.ckbjtgugfp'),(150,195,'mp.ptdkf.ckbjtgugfp'),(151,197,'(.*)'),(152,198,'(.*)'),(153,205,'mp.ptdkf.ckbjtgugfp'),(154,206,'mp.ptdkf.ckbjtgugfp'),(155,207,'mp.ptdkf.ckbjtgugfp'),(156,208,'mp.ptdkf.ckbjtgugfp'),(157,209,'mp.ptdkf.ckbjtgugfp'),(158,210,'mp.ptdkf.ckbjtgugfp'),(159,211,'(.*)'),(160,212,'(.*)'),(161,213,'(.*)'),(162,214,''),(163,215,''),(164,216,'(.*)'),(165,217,'mp.ptdkf.ckbjtgugfp'),(166,218,'mp.ptdkf.ckbjtgugfp'),(167,219,'(.*)'),(168,220,''),(169,221,''),(170,222,'(.*)'),(171,223,'mp.ptdkf.ckbjtgugfp'),(172,224,'mp.ptdkf.ckbjtgugfp'),(173,225,'mp.ptdkf.ckbjtgugfp'),(174,230,'(.*)'),(175,231,''),(176,232,''),(177,233,'(.*)'),(178,234,'mp.ptdkf.ckbjtgugfp'),(179,235,'mp.ptdkf.ckbjtgugfp'),(180,236,'mp.ptdkf.ckbjtgugfp'),(181,237,'(.*)'),(182,238,''),(183,239,''),(184,240,'(.*)'),(185,241,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(186,242,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(187,245,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(188,246,'(.*)'),(189,247,''),(190,248,''),(191,249,'(.*)'),(192,253,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(193,256,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(194,257,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(195,258,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(196,259,'(.*)'),(197,260,''),(198,261,''),(199,262,'(.*)'),(200,266,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(201,268,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(202,271,'(.*)'),(203,272,'(.*)'),(204,273,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(205,275,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(206,276,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(207,277,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(208,278,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(209,279,'(.*)'),(210,280,''),(211,281,''),(212,282,'(.*)'),(213,283,'ohh.grpqj.wwot.lmclaeflonhd_blsg'),(214,284,'ohh.grpqj.wwot.lmclaeflonhd_blsg');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,6,0),(5,8,0),(6,10,0),(7,13,0),(8,16,0),(9,14,0),(10,17,0),(11,19,0),(12,20,0),(13,21,0),(14,24,0),(15,27,0),(16,28,0),(17,30,0),(18,32,0),(19,34,0),(20,37,0),(21,38,0),(22,39,0),(23,40,0),(24,41,0),(25,42,0),(26,43,0),(27,44,0),(28,46,0),(29,47,0),(30,48,0),(31,49,0),(32,52,0),(33,53,0),(34,54,0),(35,14,0),(36,49,0),(37,14,0),(38,53,0),(39,53,0),(40,49,0),(41,55,0),(42,56,0),(43,58,0),(44,59,0),(45,60,0),(46,63,0),(47,64,0),(48,65,0),(49,72,0),(50,75,0),(51,76,0),(52,77,0),(53,80,0),(54,81,0),(55,82,0),(56,64,0),(57,83,0),(58,64,0),(59,81,0),(60,81,0),(61,84,0),(62,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,0,0),(7,5,0,0),(8,6,0,0),(9,8,1,0),(10,9,0,0),(11,8,1,0),(12,10,0,0),(13,11,0,0),(14,12,1,0),(15,13,0,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,0,0),(24,22,0,0),(25,24,1,0),(26,23,0,0),(27,24,1,0),(28,23,0,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,27,1,0),(33,28,1,0),(34,29,0,0),(35,30,0,0),(36,31,0,0),(37,32,1,0),(38,33,0,0),(39,34,0,0),(40,35,0,0),(41,36,1,0),(42,37,0,0),(43,38,0,0),(44,35,0,0),(45,36,1,0),(46,39,1,0),(47,39,1,0),(48,40,0,0),(49,41,0,0),(50,42,0,0),(51,43,0,0),(52,44,0,0),(53,45,1,0),(54,46,0,0),(55,47,1,0),(56,49,0,0),(57,48,0,0),(58,47,1,0),(59,50,1,0),(60,51,0,0),(61,52,0,0),(62,50,1,0),(63,50,1,0),(64,53,0,0),(65,50,1,0),(66,53,0,0),(67,54,1,0),(68,56,0,0),(69,55,1,0),(70,55,1,0),(71,57,0,0),(72,58,0,0),(73,55,1,0),(74,55,1,0),(75,59,0,0),(76,60,0,0),(77,61,0,0),(78,62,1,0),(79,63,1,0),(80,64,0,0),(81,63,1,0),(82,65,0,0),(83,66,1,0),(84,67,0,0),(85,66,1,0),(86,68,0,0),(87,66,1,0),(88,69,1,0),(89,66,1,0),(90,70,0,0),(91,71,0,0),(92,72,0,0),(93,73,0,0),(94,74,0,0),(95,75,0,0),(96,76,0,0),(97,77,1,0),(98,75,0,0),(99,77,1,0),(100,78,1,0),(101,79,0,0),(102,78,1,0),(103,80,1,0),(104,78,1,0),(105,80,1,0),(106,78,1,0),(107,81,1,0),(108,82,0,0),(109,82,0,0),(110,83,1,0),(111,84,1,0),(112,85,1,0),(113,85,1,0),(114,86,0,0),(115,85,1,0),(116,87,0,0),(117,85,1,0),(118,88,0,0),(119,89,0,0),(120,90,0,0),(121,91,1,0),(122,92,0,0),(123,93,1,0),(124,94,0,0),(125,93,1,0),(126,95,1,0),(127,96,1,0),(128,95,1,0),(129,97,0,0),(130,98,0,0),(131,99,0,0),(132,100,0,0),(133,101,1,0),(134,102,0,0),(135,103,0,0),(136,104,0,0),(137,105,1,0),(138,106,1,0),(139,105,1,0),(140,106,1,0),(141,107,0,0),(142,108,0,0),(143,109,0,0),(144,110,0,0),(145,111,0,0),(146,110,0,0),(147,112,0,0),(148,113,0,0),(149,114,0,0),(150,115,0,0),(151,116,1,0),(152,117,0,0),(153,118,0,0),(154,119,0,0),(155,120,0,0),(156,121,0,0),(157,122,1,0),(158,123,1,0),(159,122,1,0),(160,124,0,0),(161,125,0,0),(162,126,0,0),(163,127,1,0),(164,128,0,0),(165,129,1,0),(166,130,0,0),(167,131,0,0),(168,132,0,0),(169,133,1,0),(170,134,1,0),(171,135,0,0),(172,134,1,0),(173,136,1,0),(174,137,0,0),(175,138,0,0),(176,139,0,0),(177,140,0,0),(178,141,0,0),(179,140,0,0),(180,142,0,0),(181,143,0,0),(182,144,1,0),(183,145,1,0),(184,145,1,0),(185,145,1,0),(186,145,1,0),(187,146,0,0),(188,146,0,0),(189,146,0,0),(190,147,0,0),(191,148,1,0),(192,148,1,0),(193,148,1,0),(194,148,1,0),(195,149,0,0),(196,150,1,0),(197,151,1,0),(198,151,1,0),(199,152,1,0),(200,152,1,0),(201,152,1,0),(202,152,1,0),(203,153,1,0),(204,153,1,0),(205,154,0,0),(206,155,0,0),(207,156,0,0),(208,157,0,0),(209,157,0,0),(210,158,0,0),(211,159,1,0),(212,159,1,0),(213,160,1,0),(214,160,1,0),(215,160,1,0),(216,160,1,0),(217,161,0,0),(218,162,0,0),(219,163,1,0),(220,163,1,0),(221,163,1,0),(222,163,1,0),(223,164,0,0),(224,165,0,0),(225,166,0,0),(226,167,1,0),(227,167,1,0),(228,167,1,0),(229,167,1,0),(230,168,1,0),(231,168,1,0),(232,168,1,0),(233,168,1,0),(234,169,0,0),(235,170,0,0),(236,170,0,0),(237,171,1,0),(238,171,1,0),(239,171,1,0),(240,171,1,0),(241,172,0,0),(242,173,0,0),(243,174,1,0),(244,174,1,0),(245,175,0,0),(246,176,1,0),(247,176,1,0),(248,176,1,0),(249,176,1,0),(250,177,1,0),(251,178,1,0),(252,178,1,0),(253,179,0,0),(254,180,1,0),(255,180,1,0),(256,181,0,0),(257,182,0,0),(258,183,0,0),(259,184,1,0),(260,184,1,0),(261,184,1,0),(262,184,1,0),(263,185,1,0),(264,185,1,0),(265,185,1,0),(266,186,0,0),(267,187,1,0),(268,188,0,0),(269,189,1,0),(270,189,1,0),(271,190,1,0),(272,190,1,0),(273,191,0,0),(274,192,1,0),(275,193,0,0),(276,194,0,0),(277,195,0,0),(278,196,0,0),(279,197,1,0),(280,197,1,0),(281,197,1,0),(282,197,1,0),(283,198,0,0),(284,199,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.SET_WALLPAPER'),(12,'android.permission.SYSTEM_ALERT_WINDOW'),(17,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL),(51,NULL,NULL,'file://',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'file://',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,1,10),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,2,11),(22,3,16),(23,3,1),(24,3,2),(25,3,5),(26,4,1),(27,3,6),(28,4,2),(29,4,3),(30,3,9),(31,3,12),(32,4,5),(33,3,13),(34,4,6),(35,3,14),(36,4,9),(37,4,10),(38,3,15),(39,4,11),(40,5,17),(41,5,1),(42,5,5),(43,5,6),(44,5,9),(45,5,15),(46,6,17),(47,6,1),(48,6,2),(49,6,3),(50,6,5),(51,6,6),(52,6,9),(53,6,10),(54,6,13),(55,6,15),(56,7,16),(57,7,1),(58,7,2),(59,7,3),(60,7,5),(61,7,6),(62,7,9),(63,7,10),(64,7,13),(65,7,14),(66,7,15);
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

-- Dump completed on 2015-10-09  0:39:35
