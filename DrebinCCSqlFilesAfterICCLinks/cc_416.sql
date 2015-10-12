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
) ENGINE=InnoDB AUTO_INCREMENT=2635 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,79,10,2,NULL),(2,81,10,2,NULL),(3,18,10,2,NULL),(4,31,10,2,NULL),(5,32,10,2,NULL),(6,173,10,2,NULL),(7,157,10,2,NULL),(8,159,10,2,NULL),(9,133,10,2,NULL),(10,137,10,2,NULL),(11,139,10,2,NULL),(12,53,10,2,NULL),(13,25,10,2,NULL),(14,27,10,2,NULL),(15,46,10,2,NULL),(16,47,10,2,NULL),(17,158,10,2,NULL),(18,123,10,2,NULL),(19,125,10,2,NULL),(20,138,10,2,NULL),(21,140,10,2,NULL),(22,151,10,2,NULL),(23,163,10,2,NULL),(24,2,10,2,NULL),(25,4,10,2,NULL),(26,197,10,2,NULL),(27,198,10,2,NULL),(28,211,10,2,NULL),(29,212,10,2,NULL),(30,213,10,2,NULL),(31,214,10,2,NULL),(32,215,10,2,NULL),(33,216,10,2,NULL),(34,203,10,2,NULL),(35,204,10,2,NULL),(36,196,10,2,NULL),(37,263,10,2,NULL),(38,265,10,2,NULL),(39,274,10,2,NULL),(40,271,10,2,NULL),(41,272,10,2,NULL),(42,279,10,2,NULL),(43,280,10,2,NULL),(44,281,10,2,NULL),(45,282,10,2,NULL),(46,243,10,2,NULL),(47,244,10,2,NULL),(48,267,10,2,NULL),(49,250,10,2,NULL),(50,10,10,2,NULL),(51,79,16,2,NULL),(52,81,16,2,NULL),(53,18,16,2,NULL),(54,31,16,2,NULL),(55,32,16,2,NULL),(56,173,16,2,NULL),(57,157,16,2,NULL),(58,159,16,2,NULL),(59,133,16,2,NULL),(60,137,16,2,NULL),(61,139,16,2,NULL),(62,53,16,2,NULL),(63,25,16,2,NULL),(64,27,16,2,NULL),(65,46,16,2,NULL),(66,47,16,2,NULL),(67,158,16,2,NULL),(68,123,16,2,NULL),(69,125,16,2,NULL),(70,138,16,2,NULL),(71,140,16,2,NULL),(72,151,16,2,NULL),(73,163,16,2,NULL),(74,2,16,2,NULL),(75,4,16,2,NULL),(76,197,16,2,NULL),(77,198,16,2,NULL),(78,211,16,2,NULL),(79,212,16,2,NULL),(80,213,16,2,NULL),(81,214,16,2,NULL),(82,215,16,2,NULL),(83,216,16,2,NULL),(84,203,16,2,NULL),(85,204,16,2,NULL),(86,196,16,2,NULL),(87,263,16,2,NULL),(88,265,16,2,NULL),(89,274,16,2,NULL),(90,271,16,2,NULL),(91,272,16,2,NULL),(92,279,16,2,NULL),(93,280,16,2,NULL),(94,281,16,2,NULL),(95,282,16,2,NULL),(96,243,16,2,NULL),(97,244,16,2,NULL),(98,267,16,2,NULL),(99,250,16,2,NULL),(100,6,29,2,NULL),(101,52,29,2,NULL),(102,79,21,2,NULL),(103,81,21,2,NULL),(104,18,21,2,NULL),(105,31,21,2,NULL),(106,32,21,2,NULL),(107,173,21,2,NULL),(108,157,21,2,NULL),(109,159,21,2,NULL),(110,133,21,2,NULL),(111,137,21,2,NULL),(112,139,21,2,NULL),(113,53,21,2,NULL),(114,25,21,2,NULL),(115,27,21,2,NULL),(116,46,21,2,NULL),(117,47,21,2,NULL),(118,158,21,2,NULL),(119,123,21,2,NULL),(120,125,21,2,NULL),(121,138,21,2,NULL),(122,140,21,2,NULL),(123,151,21,2,NULL),(124,163,21,2,NULL),(125,2,21,2,NULL),(126,4,21,2,NULL),(127,197,21,2,NULL),(128,198,21,2,NULL),(129,211,21,2,NULL),(130,212,21,2,NULL),(131,213,21,2,NULL),(132,214,21,2,NULL),(133,215,21,2,NULL),(134,216,21,2,NULL),(135,203,21,2,NULL),(136,204,21,2,NULL),(137,196,21,2,NULL),(138,263,21,2,NULL),(139,265,21,2,NULL),(140,274,21,2,NULL),(141,271,21,2,NULL),(142,272,21,2,NULL),(143,279,21,2,NULL),(144,280,21,2,NULL),(145,281,21,2,NULL),(146,282,21,2,NULL),(147,243,21,2,NULL),(148,244,21,2,NULL),(149,267,21,2,NULL),(150,250,21,2,NULL),(151,12,16,2,NULL),(152,15,16,2,NULL),(153,20,16,2,NULL),(154,21,16,2,NULL),(155,23,16,2,NULL),(156,25,1,2,NULL),(157,27,1,2,NULL),(158,46,1,2,NULL),(159,47,1,2,NULL),(160,25,2,2,NULL),(161,27,2,2,NULL),(162,46,2,2,NULL),(163,47,2,2,NULL),(164,25,4,2,NULL),(165,27,4,2,NULL),(166,46,4,2,NULL),(167,47,4,2,NULL),(168,25,8,2,NULL),(169,27,8,2,NULL),(170,46,8,2,NULL),(171,47,8,2,NULL),(172,25,14,2,NULL),(173,27,14,2,NULL),(174,46,14,2,NULL),(175,47,14,2,NULL),(176,25,6,2,NULL),(177,27,6,2,NULL),(178,46,6,2,NULL),(179,47,6,2,NULL),(180,25,13,2,NULL),(181,27,13,2,NULL),(182,46,13,2,NULL),(183,47,13,2,NULL),(184,25,20,2,NULL),(185,27,20,2,NULL),(186,46,20,2,NULL),(187,47,20,2,NULL),(188,25,24,2,NULL),(189,27,24,2,NULL),(190,46,24,2,NULL),(191,47,24,2,NULL),(192,25,30,2,NULL),(193,27,30,2,NULL),(194,46,30,2,NULL),(195,47,30,2,NULL),(196,25,34,2,NULL),(197,27,34,2,NULL),(198,46,34,2,NULL),(199,47,34,2,NULL),(200,25,38,2,NULL),(201,27,38,2,NULL),(202,46,38,2,NULL),(203,47,38,2,NULL),(204,25,41,2,NULL),(205,27,41,2,NULL),(206,46,41,2,NULL),(207,47,41,2,NULL),(208,25,43,2,NULL),(209,27,43,2,NULL),(210,46,43,2,NULL),(211,47,43,2,NULL),(212,25,47,2,NULL),(213,27,47,2,NULL),(214,46,47,2,NULL),(215,47,47,2,NULL),(216,25,49,2,NULL),(217,27,49,2,NULL),(218,46,49,2,NULL),(219,47,49,2,NULL),(220,25,39,2,NULL),(221,27,39,2,NULL),(222,46,39,2,NULL),(223,47,39,2,NULL),(224,25,17,2,NULL),(225,27,17,2,NULL),(226,46,17,2,NULL),(227,47,17,2,NULL),(228,25,27,2,NULL),(229,27,27,2,NULL),(230,46,27,2,NULL),(231,47,27,2,NULL),(232,25,32,2,NULL),(233,27,32,2,NULL),(234,46,32,2,NULL),(235,47,32,2,NULL),(236,25,37,2,NULL),(237,27,37,2,NULL),(238,46,37,2,NULL),(239,47,37,2,NULL),(240,25,40,2,NULL),(241,27,40,2,NULL),(242,46,40,2,NULL),(243,47,40,2,NULL),(244,25,42,2,NULL),(245,27,42,2,NULL),(246,46,42,2,NULL),(247,47,42,2,NULL),(248,25,44,2,NULL),(249,27,44,2,NULL),(250,46,44,2,NULL),(251,47,44,2,NULL),(252,25,46,2,NULL),(253,27,46,2,NULL),(254,46,46,2,NULL),(255,47,46,2,NULL),(256,25,48,2,NULL),(257,27,48,2,NULL),(258,46,48,2,NULL),(259,47,48,2,NULL),(260,25,52,2,NULL),(261,27,52,2,NULL),(262,46,52,2,NULL),(263,47,52,2,NULL),(264,25,53,2,NULL),(265,27,53,2,NULL),(266,46,53,2,NULL),(267,47,53,2,NULL),(268,25,19,2,NULL),(269,27,19,2,NULL),(270,46,19,2,NULL),(271,47,19,2,NULL),(272,25,28,2,NULL),(273,27,28,2,NULL),(274,46,28,2,NULL),(275,47,28,2,NULL),(276,25,54,2,NULL),(277,27,54,2,NULL),(278,46,54,2,NULL),(279,47,54,2,NULL),(280,25,55,2,NULL),(281,27,55,2,NULL),(282,46,55,2,NULL),(283,47,55,2,NULL),(284,25,56,2,NULL),(285,27,56,2,NULL),(286,46,56,2,NULL),(287,47,56,2,NULL),(288,25,58,2,NULL),(289,27,58,2,NULL),(290,46,58,2,NULL),(291,47,58,2,NULL),(292,25,59,2,NULL),(293,27,59,2,NULL),(294,46,59,2,NULL),(295,47,59,2,NULL),(296,25,60,2,NULL),(297,27,60,2,NULL),(298,46,60,2,NULL),(299,47,60,2,NULL),(300,25,63,2,NULL),(301,27,63,2,NULL),(302,46,63,2,NULL),(303,47,63,2,NULL),(304,25,64,2,NULL),(305,27,64,2,NULL),(306,46,64,2,NULL),(307,47,64,2,NULL),(308,25,82,2,NULL),(309,27,82,2,NULL),(310,46,82,2,NULL),(311,47,82,2,NULL),(312,25,83,2,NULL),(313,27,83,2,NULL),(314,46,83,2,NULL),(315,47,83,2,NULL),(316,25,65,2,NULL),(317,27,65,2,NULL),(318,46,65,2,NULL),(319,47,65,2,NULL),(320,25,72,2,NULL),(321,27,72,2,NULL),(322,46,72,2,NULL),(323,47,72,2,NULL),(324,25,75,2,NULL),(325,27,75,2,NULL),(326,46,75,2,NULL),(327,47,75,2,NULL),(328,25,76,2,NULL),(329,27,76,2,NULL),(330,46,76,2,NULL),(331,47,76,2,NULL),(332,25,77,2,NULL),(333,27,77,2,NULL),(334,46,77,2,NULL),(335,47,77,2,NULL),(336,25,80,2,NULL),(337,27,80,2,NULL),(338,46,80,2,NULL),(339,47,80,2,NULL),(340,25,81,2,NULL),(341,27,81,2,NULL),(342,46,81,2,NULL),(343,47,81,2,NULL),(344,25,84,2,NULL),(345,27,84,2,NULL),(346,46,84,2,NULL),(347,47,84,2,NULL),(348,25,85,2,NULL),(349,27,85,2,NULL),(350,46,85,2,NULL),(351,47,85,2,NULL),(352,29,31,2,NULL),(353,79,39,2,NULL),(354,81,39,2,NULL),(355,18,39,2,NULL),(356,31,39,2,NULL),(357,32,39,2,NULL),(358,173,39,2,NULL),(359,157,39,2,NULL),(360,159,39,2,NULL),(361,133,39,2,NULL),(362,137,39,2,NULL),(363,139,39,2,NULL),(364,53,39,2,NULL),(365,158,39,2,NULL),(366,123,39,2,NULL),(367,125,39,2,NULL),(368,138,39,2,NULL),(369,140,39,2,NULL),(370,151,39,2,NULL),(371,163,39,2,NULL),(372,2,39,2,NULL),(373,4,39,2,NULL),(374,197,39,2,NULL),(375,198,39,2,NULL),(376,211,39,2,NULL),(377,212,39,2,NULL),(378,213,39,2,NULL),(379,214,39,2,NULL),(380,215,39,2,NULL),(381,216,39,2,NULL),(382,203,39,2,NULL),(383,204,39,2,NULL),(384,196,39,2,NULL),(385,263,39,2,NULL),(386,265,39,2,NULL),(387,274,39,2,NULL),(388,271,39,2,NULL),(389,272,39,2,NULL),(390,279,39,2,NULL),(391,280,39,2,NULL),(392,281,39,2,NULL),(393,282,39,2,NULL),(394,243,39,2,NULL),(395,244,39,2,NULL),(396,267,39,2,NULL),(397,250,39,2,NULL),(398,24,8,2,NULL),(399,26,8,2,NULL),(400,28,8,2,NULL),(401,79,1,2,NULL),(402,81,1,2,NULL),(403,18,1,2,NULL),(404,31,1,2,NULL),(405,32,1,2,NULL),(406,173,1,2,NULL),(407,157,1,2,NULL),(408,159,1,2,NULL),(409,133,1,2,NULL),(410,137,1,2,NULL),(411,139,1,2,NULL),(412,53,1,2,NULL),(413,158,1,2,NULL),(414,123,1,2,NULL),(415,125,1,2,NULL),(416,138,1,2,NULL),(417,140,1,2,NULL),(418,151,1,2,NULL),(419,163,1,2,NULL),(420,2,1,2,NULL),(421,4,1,2,NULL),(422,197,1,2,NULL),(423,198,1,2,NULL),(424,211,1,2,NULL),(425,212,1,2,NULL),(426,213,1,2,NULL),(427,214,1,2,NULL),(428,215,1,2,NULL),(429,216,1,2,NULL),(430,203,1,2,NULL),(431,204,1,2,NULL),(432,196,1,2,NULL),(433,263,1,2,NULL),(434,265,1,2,NULL),(435,274,1,2,NULL),(436,271,1,2,NULL),(437,272,1,2,NULL),(438,279,1,2,NULL),(439,280,1,2,NULL),(440,281,1,2,NULL),(441,282,1,2,NULL),(442,243,1,2,NULL),(443,244,1,2,NULL),(444,267,1,2,NULL),(445,250,1,2,NULL),(446,7,8,2,NULL),(447,13,1,2,NULL),(448,22,8,2,NULL),(449,30,1,2,NULL),(450,49,1,2,NULL),(451,77,1,2,NULL),(452,79,2,2,NULL),(453,81,2,2,NULL),(454,18,2,2,NULL),(455,31,2,2,NULL),(456,32,2,2,NULL),(457,173,2,2,NULL),(458,157,2,2,NULL),(459,159,2,2,NULL),(460,133,2,2,NULL),(461,137,2,2,NULL),(462,139,2,2,NULL),(463,53,2,2,NULL),(464,158,2,2,NULL),(465,123,2,2,NULL),(466,125,2,2,NULL),(467,138,2,2,NULL),(468,140,2,2,NULL),(469,151,2,2,NULL),(470,163,2,2,NULL),(471,2,2,2,NULL),(472,4,2,2,NULL),(473,197,2,2,NULL),(474,198,2,2,NULL),(475,211,2,2,NULL),(476,212,2,2,NULL),(477,213,2,2,NULL),(478,214,2,2,NULL),(479,215,2,2,NULL),(480,216,2,2,NULL),(481,203,2,2,NULL),(482,204,2,2,NULL),(483,196,2,2,NULL),(484,263,2,2,NULL),(485,265,2,2,NULL),(486,274,2,2,NULL),(487,271,2,2,NULL),(488,272,2,2,NULL),(489,279,2,2,NULL),(490,280,2,2,NULL),(491,281,2,2,NULL),(492,282,2,2,NULL),(493,243,2,2,NULL),(494,244,2,2,NULL),(495,267,2,2,NULL),(496,250,2,2,NULL),(497,56,2,2,NULL),(498,18,4,2,NULL),(499,31,4,2,NULL),(500,32,4,2,NULL),(501,79,8,2,NULL),(502,81,8,2,NULL),(503,79,14,2,NULL),(504,81,14,2,NULL),(505,79,6,2,NULL),(506,81,6,2,NULL),(507,173,4,2,NULL),(508,79,13,2,NULL),(509,81,13,2,NULL),(510,79,20,2,NULL),(511,81,20,2,NULL),(512,79,24,2,NULL),(513,81,24,2,NULL),(514,79,30,2,NULL),(515,81,30,2,NULL),(516,79,34,2,NULL),(517,81,34,2,NULL),(518,157,4,2,NULL),(519,159,4,2,NULL),(520,79,38,2,NULL),(521,81,38,2,NULL),(522,133,4,2,NULL),(523,137,4,2,NULL),(524,139,4,2,NULL),(525,79,41,2,NULL),(526,81,41,2,NULL),(527,79,43,2,NULL),(528,81,43,2,NULL),(529,53,4,2,NULL),(530,79,47,2,NULL),(531,81,47,2,NULL),(532,79,49,2,NULL),(533,81,49,2,NULL),(534,79,17,2,NULL),(535,81,17,2,NULL),(536,158,4,2,NULL),(537,79,27,2,NULL),(538,81,27,2,NULL),(539,79,32,2,NULL),(540,81,32,2,NULL),(541,79,37,2,NULL),(542,81,37,2,NULL),(543,79,40,2,NULL),(544,81,40,2,NULL),(545,79,42,2,NULL),(546,81,42,2,NULL),(547,123,4,2,NULL),(548,125,4,2,NULL),(549,79,44,2,NULL),(550,81,44,2,NULL),(551,138,4,2,NULL),(552,140,4,2,NULL),(553,151,4,2,NULL),(554,79,46,2,NULL),(555,81,46,2,NULL),(556,79,48,2,NULL),(557,81,48,2,NULL),(558,163,4,2,NULL),(559,79,52,2,NULL),(560,81,52,2,NULL),(561,79,53,2,NULL),(562,81,53,2,NULL),(563,79,19,2,NULL),(564,81,19,2,NULL),(565,2,4,2,NULL),(566,4,4,2,NULL),(567,79,28,2,NULL),(568,81,28,2,NULL),(569,79,54,2,NULL),(570,81,54,2,NULL),(571,79,55,2,NULL),(572,81,55,2,NULL),(573,79,56,2,NULL),(574,81,56,2,NULL),(575,79,58,2,NULL),(576,81,58,2,NULL),(577,197,4,2,NULL),(578,198,4,2,NULL),(579,79,59,2,NULL),(580,81,59,2,NULL),(581,211,4,2,NULL),(582,212,4,2,NULL),(583,79,60,2,NULL),(584,81,60,2,NULL),(585,213,4,2,NULL),(586,214,4,2,NULL),(587,215,4,2,NULL),(588,216,4,2,NULL),(589,203,4,2,NULL),(590,204,4,2,NULL),(591,196,4,2,NULL),(592,79,63,2,NULL),(593,81,63,2,NULL),(594,79,64,2,NULL),(595,81,64,2,NULL),(596,79,82,2,NULL),(597,81,82,2,NULL),(598,79,83,2,NULL),(599,81,83,2,NULL),(600,79,65,2,NULL),(601,81,65,2,NULL),(602,263,4,2,NULL),(603,265,4,2,NULL),(604,274,4,2,NULL),(605,79,72,2,NULL),(606,81,72,2,NULL),(607,79,75,2,NULL),(608,81,75,2,NULL),(609,79,76,2,NULL),(610,81,76,2,NULL),(611,271,4,2,NULL),(612,272,4,2,NULL),(613,79,77,2,NULL),(614,81,77,2,NULL),(615,279,4,2,NULL),(616,280,4,2,NULL),(617,281,4,2,NULL),(618,282,4,2,NULL),(619,243,4,2,NULL),(620,244,4,2,NULL),(621,267,4,2,NULL),(622,250,4,2,NULL),(623,79,80,2,NULL),(624,81,80,2,NULL),(625,79,81,2,NULL),(626,81,81,2,NULL),(627,79,84,2,NULL),(628,81,84,2,NULL),(629,79,85,2,NULL),(630,81,85,2,NULL),(631,19,2,2,NULL),(632,93,7,2,NULL),(633,18,8,2,NULL),(634,31,8,2,NULL),(635,32,8,2,NULL),(636,18,14,2,NULL),(637,31,14,2,NULL),(638,32,14,2,NULL),(639,18,6,2,NULL),(640,31,6,2,NULL),(641,32,6,2,NULL),(642,18,13,2,NULL),(643,31,13,2,NULL),(644,32,13,2,NULL),(645,18,20,2,NULL),(646,31,20,2,NULL),(647,32,20,2,NULL),(648,18,24,2,NULL),(649,31,24,2,NULL),(650,32,24,2,NULL),(651,18,30,2,NULL),(652,31,30,2,NULL),(653,32,30,2,NULL),(654,18,34,2,NULL),(655,31,34,2,NULL),(656,32,34,2,NULL),(657,18,38,2,NULL),(658,31,38,2,NULL),(659,32,38,2,NULL),(660,18,41,2,NULL),(661,31,41,2,NULL),(662,32,41,2,NULL),(663,18,43,2,NULL),(664,31,43,2,NULL),(665,32,43,2,NULL),(666,18,47,2,NULL),(667,31,47,2,NULL),(668,32,47,2,NULL),(669,18,49,2,NULL),(670,31,49,2,NULL),(671,32,49,2,NULL),(672,18,17,2,NULL),(673,31,17,2,NULL),(674,32,17,2,NULL),(675,18,27,2,NULL),(676,31,27,2,NULL),(677,32,27,2,NULL),(678,18,32,2,NULL),(679,31,32,2,NULL),(680,32,32,2,NULL),(681,18,37,2,NULL),(682,31,37,2,NULL),(683,32,37,2,NULL),(684,18,40,2,NULL),(685,31,40,2,NULL),(686,32,40,2,NULL),(687,18,42,2,NULL),(688,31,42,2,NULL),(689,32,42,2,NULL),(690,18,44,2,NULL),(691,31,44,2,NULL),(692,32,44,2,NULL),(693,18,46,2,NULL),(694,31,46,2,NULL),(695,32,46,2,NULL),(696,18,48,2,NULL),(697,31,48,2,NULL),(698,32,48,2,NULL),(699,18,52,2,NULL),(700,31,52,2,NULL),(701,32,52,2,NULL),(702,18,53,2,NULL),(703,31,53,2,NULL),(704,32,53,2,NULL),(705,18,19,2,NULL),(706,31,19,2,NULL),(707,32,19,2,NULL),(708,18,28,2,NULL),(709,31,28,2,NULL),(710,32,28,2,NULL),(711,18,54,2,NULL),(712,31,54,2,NULL),(713,32,54,2,NULL),(714,18,55,2,NULL),(715,31,55,2,NULL),(716,32,55,2,NULL),(717,18,56,2,NULL),(718,31,56,2,NULL),(719,32,56,2,NULL),(720,18,58,2,NULL),(721,31,58,2,NULL),(722,32,58,2,NULL),(723,18,59,2,NULL),(724,31,59,2,NULL),(725,32,59,2,NULL),(726,18,60,2,NULL),(727,31,60,2,NULL),(728,32,60,2,NULL),(729,18,63,2,NULL),(730,31,63,2,NULL),(731,32,63,2,NULL),(732,18,64,2,NULL),(733,31,64,2,NULL),(734,32,64,2,NULL),(735,18,82,2,NULL),(736,31,82,2,NULL),(737,32,82,2,NULL),(738,18,83,2,NULL),(739,31,83,2,NULL),(740,32,83,2,NULL),(741,18,65,2,NULL),(742,31,65,2,NULL),(743,32,65,2,NULL),(744,18,72,2,NULL),(745,31,72,2,NULL),(746,32,72,2,NULL),(747,18,75,2,NULL),(748,31,75,2,NULL),(749,32,75,2,NULL),(750,18,76,2,NULL),(751,31,76,2,NULL),(752,32,76,2,NULL),(753,18,77,2,NULL),(754,31,77,2,NULL),(755,32,77,2,NULL),(756,18,80,2,NULL),(757,31,80,2,NULL),(758,32,80,2,NULL),(759,18,81,2,NULL),(760,31,81,2,NULL),(761,32,81,2,NULL),(762,18,84,2,NULL),(763,31,84,2,NULL),(764,32,84,2,NULL),(765,18,85,2,NULL),(766,31,85,2,NULL),(767,32,85,2,NULL),(768,173,8,2,NULL),(769,157,8,2,NULL),(770,159,8,2,NULL),(771,133,8,2,NULL),(772,137,8,2,NULL),(773,139,8,2,NULL),(774,53,8,2,NULL),(775,158,8,2,NULL),(776,123,8,2,NULL),(777,125,8,2,NULL),(778,138,8,2,NULL),(779,140,8,2,NULL),(780,151,8,2,NULL),(781,163,8,2,NULL),(782,2,8,2,NULL),(783,4,8,2,NULL),(784,197,8,2,NULL),(785,198,8,2,NULL),(786,211,8,2,NULL),(787,212,8,2,NULL),(788,213,8,2,NULL),(789,214,8,2,NULL),(790,215,8,2,NULL),(791,216,8,2,NULL),(792,203,8,2,NULL),(793,204,8,2,NULL),(794,196,8,2,NULL),(795,263,8,2,NULL),(796,265,8,2,NULL),(797,274,8,2,NULL),(798,271,8,2,NULL),(799,272,8,2,NULL),(800,279,8,2,NULL),(801,280,8,2,NULL),(802,281,8,2,NULL),(803,282,8,2,NULL),(804,243,8,2,NULL),(805,244,8,2,NULL),(806,267,8,2,NULL),(807,250,8,2,NULL),(808,8,8,2,NULL),(809,16,8,2,NULL),(810,35,8,2,NULL),(811,173,14,2,NULL),(812,157,14,2,NULL),(813,159,14,2,NULL),(814,133,14,2,NULL),(815,137,14,2,NULL),(816,139,14,2,NULL),(817,53,14,2,NULL),(818,158,14,2,NULL),(819,123,14,2,NULL),(820,125,14,2,NULL),(821,138,14,2,NULL),(822,140,14,2,NULL),(823,151,14,2,NULL),(824,163,14,2,NULL),(825,2,14,2,NULL),(826,4,14,2,NULL),(827,197,14,2,NULL),(828,198,14,2,NULL),(829,211,14,2,NULL),(830,212,14,2,NULL),(831,213,14,2,NULL),(832,214,14,2,NULL),(833,215,14,2,NULL),(834,216,14,2,NULL),(835,203,14,2,NULL),(836,204,14,2,NULL),(837,196,14,2,NULL),(838,263,14,2,NULL),(839,265,14,2,NULL),(840,274,14,2,NULL),(841,271,14,2,NULL),(842,272,14,2,NULL),(843,279,14,2,NULL),(844,280,14,2,NULL),(845,281,14,2,NULL),(846,282,14,2,NULL),(847,243,14,2,NULL),(848,244,14,2,NULL),(849,267,14,2,NULL),(850,250,14,2,NULL),(851,96,47,2,NULL),(852,108,47,2,NULL),(853,109,47,2,NULL),(854,124,47,2,NULL),(855,177,47,2,NULL),(856,179,47,2,NULL),(857,129,47,2,NULL),(858,141,43,2,NULL),(859,173,6,2,NULL),(860,157,6,2,NULL),(861,159,6,2,NULL),(862,133,6,2,NULL),(863,137,6,2,NULL),(864,139,6,2,NULL),(865,53,6,2,NULL),(866,158,6,2,NULL),(867,123,6,2,NULL),(868,125,6,2,NULL),(869,138,6,2,NULL),(870,140,6,2,NULL),(871,151,6,2,NULL),(872,163,6,2,NULL),(873,2,6,2,NULL),(874,4,6,2,NULL),(875,197,6,2,NULL),(876,198,6,2,NULL),(877,211,6,2,NULL),(878,212,6,2,NULL),(879,213,6,2,NULL),(880,214,6,2,NULL),(881,215,6,2,NULL),(882,216,6,2,NULL),(883,203,6,2,NULL),(884,204,6,2,NULL),(885,196,6,2,NULL),(886,263,6,2,NULL),(887,265,6,2,NULL),(888,274,6,2,NULL),(889,271,6,2,NULL),(890,272,6,2,NULL),(891,279,6,2,NULL),(892,280,6,2,NULL),(893,281,6,2,NULL),(894,282,6,2,NULL),(895,243,6,2,NULL),(896,244,6,2,NULL),(897,267,6,2,NULL),(898,250,6,2,NULL),(899,155,30,2,NULL),(900,171,3,2,NULL),(901,173,13,2,NULL),(902,173,20,2,NULL),(903,173,24,2,NULL),(904,173,30,2,NULL),(905,173,34,2,NULL),(906,173,38,2,NULL),(907,173,41,2,NULL),(908,173,43,2,NULL),(909,173,47,2,NULL),(910,173,49,2,NULL),(911,173,17,2,NULL),(912,173,27,2,NULL),(913,173,32,2,NULL),(914,173,37,2,NULL),(915,173,40,2,NULL),(916,173,42,2,NULL),(917,173,44,2,NULL),(918,173,46,2,NULL),(919,173,48,2,NULL),(920,173,52,2,NULL),(921,173,53,2,NULL),(922,173,19,2,NULL),(923,173,28,2,NULL),(924,173,54,2,NULL),(925,173,55,2,NULL),(926,173,56,2,NULL),(927,173,58,2,NULL),(928,173,59,2,NULL),(929,173,60,2,NULL),(930,173,63,2,NULL),(931,173,64,2,NULL),(932,173,82,2,NULL),(933,173,83,2,NULL),(934,173,65,2,NULL),(935,173,72,2,NULL),(936,173,75,2,NULL),(937,173,76,2,NULL),(938,173,77,2,NULL),(939,173,80,2,NULL),(940,173,81,2,NULL),(941,173,84,2,NULL),(942,173,85,2,NULL),(943,94,47,2,NULL),(944,120,30,2,NULL),(945,157,13,2,NULL),(946,159,13,2,NULL),(947,133,13,2,NULL),(948,137,13,2,NULL),(949,139,13,2,NULL),(950,53,13,2,NULL),(951,158,13,2,NULL),(952,123,13,2,NULL),(953,125,13,2,NULL),(954,138,13,2,NULL),(955,140,13,2,NULL),(956,151,13,2,NULL),(957,163,13,2,NULL),(958,2,13,2,NULL),(959,4,13,2,NULL),(960,197,13,2,NULL),(961,198,13,2,NULL),(962,211,13,2,NULL),(963,212,13,2,NULL),(964,213,13,2,NULL),(965,214,13,2,NULL),(966,215,13,2,NULL),(967,216,13,2,NULL),(968,203,13,2,NULL),(969,204,13,2,NULL),(970,196,13,2,NULL),(971,263,13,2,NULL),(972,265,13,2,NULL),(973,274,13,2,NULL),(974,271,13,2,NULL),(975,272,13,2,NULL),(976,279,13,2,NULL),(977,280,13,2,NULL),(978,281,13,2,NULL),(979,282,13,2,NULL),(980,243,13,2,NULL),(981,244,13,2,NULL),(982,267,13,2,NULL),(983,250,13,2,NULL),(984,122,47,2,NULL),(985,150,30,2,NULL),(986,157,20,2,NULL),(987,159,20,2,NULL),(988,133,20,2,NULL),(989,137,20,2,NULL),(990,139,20,2,NULL),(991,53,20,2,NULL),(992,158,20,2,NULL),(993,123,20,2,NULL),(994,125,20,2,NULL),(995,138,20,2,NULL),(996,140,20,2,NULL),(997,151,20,2,NULL),(998,163,20,2,NULL),(999,2,20,2,NULL),(1000,4,20,2,NULL),(1001,197,20,2,NULL),(1002,198,20,2,NULL),(1003,211,20,2,NULL),(1004,212,20,2,NULL),(1005,213,20,2,NULL),(1006,214,20,2,NULL),(1007,215,20,2,NULL),(1008,216,20,2,NULL),(1009,203,20,2,NULL),(1010,204,20,2,NULL),(1011,196,20,2,NULL),(1012,263,20,2,NULL),(1013,265,20,2,NULL),(1014,274,20,2,NULL),(1015,271,20,2,NULL),(1016,272,20,2,NULL),(1017,279,20,2,NULL),(1018,280,20,2,NULL),(1019,281,20,2,NULL),(1020,282,20,2,NULL),(1021,243,20,2,NULL),(1022,244,20,2,NULL),(1023,267,20,2,NULL),(1024,250,20,2,NULL),(1025,148,47,2,NULL),(1026,157,24,2,NULL),(1027,159,24,2,NULL),(1028,133,24,2,NULL),(1029,137,24,2,NULL),(1030,139,24,2,NULL),(1031,53,24,2,NULL),(1032,158,24,2,NULL),(1033,123,24,2,NULL),(1034,125,24,2,NULL),(1035,138,24,2,NULL),(1036,140,24,2,NULL),(1037,151,24,2,NULL),(1038,163,24,2,NULL),(1039,2,24,2,NULL),(1040,4,24,2,NULL),(1041,197,24,2,NULL),(1042,198,24,2,NULL),(1043,211,24,2,NULL),(1044,212,24,2,NULL),(1045,213,24,2,NULL),(1046,214,24,2,NULL),(1047,215,24,2,NULL),(1048,216,24,2,NULL),(1049,203,24,2,NULL),(1050,204,24,2,NULL),(1051,196,24,2,NULL),(1052,263,24,2,NULL),(1053,265,24,2,NULL),(1054,274,24,2,NULL),(1055,271,24,2,NULL),(1056,272,24,2,NULL),(1057,279,24,2,NULL),(1058,280,24,2,NULL),(1059,281,24,2,NULL),(1060,282,24,2,NULL),(1061,243,24,2,NULL),(1062,244,24,2,NULL),(1063,267,24,2,NULL),(1064,250,24,2,NULL),(1065,152,47,2,NULL),(1066,161,3,2,NULL),(1067,175,3,2,NULL),(1068,157,30,2,NULL),(1069,159,30,2,NULL),(1070,133,30,2,NULL),(1071,137,30,2,NULL),(1072,139,30,2,NULL),(1073,53,30,2,NULL),(1074,158,30,2,NULL),(1075,123,30,2,NULL),(1076,125,30,2,NULL),(1077,138,30,2,NULL),(1078,140,30,2,NULL),(1079,151,30,2,NULL),(1080,163,30,2,NULL),(1081,2,30,2,NULL),(1082,4,30,2,NULL),(1083,197,30,2,NULL),(1084,198,30,2,NULL),(1085,211,30,2,NULL),(1086,212,30,2,NULL),(1087,213,30,2,NULL),(1088,214,30,2,NULL),(1089,215,30,2,NULL),(1090,216,30,2,NULL),(1091,203,30,2,NULL),(1092,204,30,2,NULL),(1093,196,30,2,NULL),(1094,263,30,2,NULL),(1095,265,30,2,NULL),(1096,274,30,2,NULL),(1097,271,30,2,NULL),(1098,272,30,2,NULL),(1099,279,30,2,NULL),(1100,280,30,2,NULL),(1101,281,30,2,NULL),(1102,282,30,2,NULL),(1103,243,30,2,NULL),(1104,244,30,2,NULL),(1105,267,30,2,NULL),(1106,250,30,2,NULL),(1107,91,30,2,NULL),(1108,157,38,2,NULL),(1109,159,38,2,NULL),(1110,133,34,2,NULL),(1111,137,34,2,NULL),(1112,139,34,2,NULL),(1113,157,41,2,NULL),(1114,159,41,2,NULL),(1115,157,43,2,NULL),(1116,159,43,2,NULL),(1117,53,34,2,NULL),(1118,157,47,2,NULL),(1119,159,47,2,NULL),(1120,157,49,2,NULL),(1121,159,49,2,NULL),(1122,157,17,2,NULL),(1123,159,17,2,NULL),(1124,158,34,2,NULL),(1125,157,27,2,NULL),(1126,159,27,2,NULL),(1127,157,32,2,NULL),(1128,159,32,2,NULL),(1129,157,37,2,NULL),(1130,159,37,2,NULL),(1131,157,40,2,NULL),(1132,159,40,2,NULL),(1133,157,42,2,NULL),(1134,159,42,2,NULL),(1135,123,34,2,NULL),(1136,125,34,2,NULL),(1137,157,44,2,NULL),(1138,159,44,2,NULL),(1139,138,34,2,NULL),(1140,140,34,2,NULL),(1141,151,34,2,NULL),(1142,157,46,2,NULL),(1143,159,46,2,NULL),(1144,157,48,2,NULL),(1145,159,48,2,NULL),(1146,163,34,2,NULL),(1147,157,52,2,NULL),(1148,159,52,2,NULL),(1149,157,53,2,NULL),(1150,159,53,2,NULL),(1151,157,19,2,NULL),(1152,159,19,2,NULL),(1153,2,34,2,NULL),(1154,4,34,2,NULL),(1155,157,28,2,NULL),(1156,159,28,2,NULL),(1157,157,54,2,NULL),(1158,159,54,2,NULL),(1159,157,55,2,NULL),(1160,159,55,2,NULL),(1161,157,56,2,NULL),(1162,159,56,2,NULL),(1163,157,58,2,NULL),(1164,159,58,2,NULL),(1165,197,34,2,NULL),(1166,198,34,2,NULL),(1167,157,59,2,NULL),(1168,159,59,2,NULL),(1169,211,34,2,NULL),(1170,212,34,2,NULL),(1171,157,60,2,NULL),(1172,159,60,2,NULL),(1173,213,34,2,NULL),(1174,214,34,2,NULL),(1175,215,34,2,NULL),(1176,216,34,2,NULL),(1177,203,34,2,NULL),(1178,204,34,2,NULL),(1179,196,34,2,NULL),(1180,157,63,2,NULL),(1181,159,63,2,NULL),(1182,157,64,2,NULL),(1183,159,64,2,NULL),(1184,157,82,2,NULL),(1185,159,82,2,NULL),(1186,157,83,2,NULL),(1187,159,83,2,NULL),(1188,157,65,2,NULL),(1189,159,65,2,NULL),(1190,263,34,2,NULL),(1191,265,34,2,NULL),(1192,274,34,2,NULL),(1193,157,72,2,NULL),(1194,159,72,2,NULL),(1195,157,75,2,NULL),(1196,159,75,2,NULL),(1197,157,76,2,NULL),(1198,159,76,2,NULL),(1199,271,34,2,NULL),(1200,272,34,2,NULL),(1201,157,77,2,NULL),(1202,159,77,2,NULL),(1203,279,34,2,NULL),(1204,280,34,2,NULL),(1205,281,34,2,NULL),(1206,282,34,2,NULL),(1207,243,34,2,NULL),(1208,244,34,2,NULL),(1209,267,34,2,NULL),(1210,250,34,2,NULL),(1211,157,80,2,NULL),(1212,159,80,2,NULL),(1213,157,81,2,NULL),(1214,159,81,2,NULL),(1215,157,84,2,NULL),(1216,159,84,2,NULL),(1217,157,85,2,NULL),(1218,159,85,2,NULL),(1219,71,38,2,NULL),(1220,76,30,2,NULL),(1221,133,41,2,NULL),(1222,137,41,2,NULL),(1223,139,41,2,NULL),(1224,133,43,2,NULL),(1225,137,43,2,NULL),(1226,139,43,2,NULL),(1227,53,38,2,NULL),(1228,133,47,2,NULL),(1229,137,47,2,NULL),(1230,139,47,2,NULL),(1231,133,49,2,NULL),(1232,137,49,2,NULL),(1233,139,49,2,NULL),(1234,133,17,2,NULL),(1235,137,17,2,NULL),(1236,139,17,2,NULL),(1237,158,38,2,NULL),(1238,133,27,2,NULL),(1239,137,27,2,NULL),(1240,139,27,2,NULL),(1241,133,32,2,NULL),(1242,137,32,2,NULL),(1243,139,32,2,NULL),(1244,133,37,2,NULL),(1245,137,37,2,NULL),(1246,139,37,2,NULL),(1247,133,40,2,NULL),(1248,137,40,2,NULL),(1249,139,40,2,NULL),(1250,133,42,2,NULL),(1251,137,42,2,NULL),(1252,139,42,2,NULL),(1253,123,38,2,NULL),(1254,125,38,2,NULL),(1255,133,44,2,NULL),(1256,137,44,2,NULL),(1257,139,44,2,NULL),(1258,138,38,2,NULL),(1259,140,38,2,NULL),(1260,151,38,2,NULL),(1261,133,46,2,NULL),(1262,137,46,2,NULL),(1263,139,46,2,NULL),(1264,133,48,2,NULL),(1265,137,48,2,NULL),(1266,139,48,2,NULL),(1267,163,38,2,NULL),(1268,133,52,2,NULL),(1269,137,52,2,NULL),(1270,139,52,2,NULL),(1271,133,53,2,NULL),(1272,137,53,2,NULL),(1273,139,53,2,NULL),(1274,133,19,2,NULL),(1275,137,19,2,NULL),(1276,139,19,2,NULL),(1277,2,38,2,NULL),(1278,4,38,2,NULL),(1279,133,28,2,NULL),(1280,137,28,2,NULL),(1281,139,28,2,NULL),(1282,133,54,2,NULL),(1283,137,54,2,NULL),(1284,139,54,2,NULL),(1285,133,55,2,NULL),(1286,137,55,2,NULL),(1287,139,55,2,NULL),(1288,133,56,2,NULL),(1289,137,56,2,NULL),(1290,139,56,2,NULL),(1291,133,58,2,NULL),(1292,137,58,2,NULL),(1293,139,58,2,NULL),(1294,197,38,2,NULL),(1295,198,38,2,NULL),(1296,133,59,2,NULL),(1297,137,59,2,NULL),(1298,139,59,2,NULL),(1299,211,38,2,NULL),(1300,212,38,2,NULL),(1301,133,60,2,NULL),(1302,137,60,2,NULL),(1303,139,60,2,NULL),(1304,213,38,2,NULL),(1305,214,38,2,NULL),(1306,215,38,2,NULL),(1307,216,38,2,NULL),(1308,203,38,2,NULL),(1309,204,38,2,NULL),(1310,196,38,2,NULL),(1311,133,63,2,NULL),(1312,137,63,2,NULL),(1313,139,63,2,NULL),(1314,133,64,2,NULL),(1315,137,64,2,NULL),(1316,139,64,2,NULL),(1317,133,82,2,NULL),(1318,137,82,2,NULL),(1319,139,82,2,NULL),(1320,133,83,2,NULL),(1321,137,83,2,NULL),(1322,139,83,2,NULL),(1323,133,65,2,NULL),(1324,137,65,2,NULL),(1325,139,65,2,NULL),(1326,263,38,2,NULL),(1327,265,38,2,NULL),(1328,274,38,2,NULL),(1329,133,72,2,NULL),(1330,137,72,2,NULL),(1331,139,72,2,NULL),(1332,133,75,2,NULL),(1333,137,75,2,NULL),(1334,139,75,2,NULL),(1335,133,76,2,NULL),(1336,137,76,2,NULL),(1337,139,76,2,NULL),(1338,271,38,2,NULL),(1339,272,38,2,NULL),(1340,133,77,2,NULL),(1341,137,77,2,NULL),(1342,139,77,2,NULL),(1343,279,38,2,NULL),(1344,280,38,2,NULL),(1345,281,38,2,NULL),(1346,282,38,2,NULL),(1347,243,38,2,NULL),(1348,244,38,2,NULL),(1349,267,38,2,NULL),(1350,250,38,2,NULL),(1351,133,80,2,NULL),(1352,137,80,2,NULL),(1353,139,80,2,NULL),(1354,133,81,2,NULL),(1355,137,81,2,NULL),(1356,139,81,2,NULL),(1357,133,84,2,NULL),(1358,137,84,2,NULL),(1359,139,84,2,NULL),(1360,133,85,2,NULL),(1361,137,85,2,NULL),(1362,139,85,2,NULL),(1363,53,41,2,NULL),(1364,158,41,2,NULL),(1365,123,41,2,NULL),(1366,125,41,2,NULL),(1367,138,41,2,NULL),(1368,140,41,2,NULL),(1369,151,41,2,NULL),(1370,163,41,2,NULL),(1371,2,41,2,NULL),(1372,4,41,2,NULL),(1373,197,41,2,NULL),(1374,198,41,2,NULL),(1375,211,41,2,NULL),(1376,212,41,2,NULL),(1377,213,41,2,NULL),(1378,214,41,2,NULL),(1379,215,41,2,NULL),(1380,216,41,2,NULL),(1381,203,41,2,NULL),(1382,204,41,2,NULL),(1383,196,41,2,NULL),(1384,263,41,2,NULL),(1385,265,41,2,NULL),(1386,274,41,2,NULL),(1387,271,41,2,NULL),(1388,272,41,2,NULL),(1389,279,41,2,NULL),(1390,280,41,2,NULL),(1391,281,41,2,NULL),(1392,282,41,2,NULL),(1393,243,41,2,NULL),(1394,244,41,2,NULL),(1395,267,41,2,NULL),(1396,250,41,2,NULL),(1397,144,47,2,NULL),(1398,146,47,2,NULL),(1399,154,47,2,NULL),(1400,53,43,2,NULL),(1401,158,43,2,NULL),(1402,123,43,2,NULL),(1403,125,43,2,NULL),(1404,138,43,2,NULL),(1405,140,43,2,NULL),(1406,151,43,2,NULL),(1407,163,43,2,NULL),(1408,2,43,2,NULL),(1409,4,43,2,NULL),(1410,197,43,2,NULL),(1411,198,43,2,NULL),(1412,211,43,2,NULL),(1413,212,43,2,NULL),(1414,213,43,2,NULL),(1415,214,43,2,NULL),(1416,215,43,2,NULL),(1417,216,43,2,NULL),(1418,203,43,2,NULL),(1419,204,43,2,NULL),(1420,196,43,2,NULL),(1421,263,43,2,NULL),(1422,265,43,2,NULL),(1423,274,43,2,NULL),(1424,271,43,2,NULL),(1425,272,43,2,NULL),(1426,279,43,2,NULL),(1427,280,43,2,NULL),(1428,281,43,2,NULL),(1429,282,43,2,NULL),(1430,243,43,2,NULL),(1431,244,43,2,NULL),(1432,267,43,2,NULL),(1433,250,43,2,NULL),(1434,43,30,2,NULL),(1435,53,47,2,NULL),(1436,53,49,2,NULL),(1437,53,17,2,NULL),(1438,53,27,2,NULL),(1439,53,32,2,NULL),(1440,53,37,2,NULL),(1441,53,40,2,NULL),(1442,53,42,2,NULL),(1443,53,44,2,NULL),(1444,53,46,2,NULL),(1445,53,48,2,NULL),(1446,53,52,2,NULL),(1447,53,53,2,NULL),(1448,53,19,2,NULL),(1449,53,28,2,NULL),(1450,53,54,2,NULL),(1451,53,55,2,NULL),(1452,53,56,2,NULL),(1453,53,58,2,NULL),(1454,53,59,2,NULL),(1455,53,60,2,NULL),(1456,53,63,2,NULL),(1457,53,64,2,NULL),(1458,53,82,2,NULL),(1459,53,83,2,NULL),(1460,53,65,2,NULL),(1461,53,72,2,NULL),(1462,53,75,2,NULL),(1463,53,76,2,NULL),(1464,53,77,2,NULL),(1465,53,80,2,NULL),(1466,53,81,2,NULL),(1467,53,84,2,NULL),(1468,53,85,2,NULL),(1469,158,47,2,NULL),(1470,123,47,2,NULL),(1471,125,47,2,NULL),(1472,138,47,2,NULL),(1473,140,47,2,NULL),(1474,151,47,2,NULL),(1475,163,47,2,NULL),(1476,2,47,2,NULL),(1477,4,47,2,NULL),(1478,197,47,2,NULL),(1479,198,47,2,NULL),(1480,211,47,2,NULL),(1481,212,47,2,NULL),(1482,213,47,2,NULL),(1483,214,47,2,NULL),(1484,215,47,2,NULL),(1485,216,47,2,NULL),(1486,203,47,2,NULL),(1487,204,47,2,NULL),(1488,196,47,2,NULL),(1489,263,47,2,NULL),(1490,265,47,2,NULL),(1491,274,47,2,NULL),(1492,271,47,2,NULL),(1493,272,47,2,NULL),(1494,279,47,2,NULL),(1495,280,47,2,NULL),(1496,281,47,2,NULL),(1497,282,47,2,NULL),(1498,243,47,2,NULL),(1499,244,47,2,NULL),(1500,267,47,2,NULL),(1501,250,47,2,NULL),(1502,48,47,2,NULL),(1503,114,47,2,NULL),(1504,116,47,2,NULL),(1505,158,49,2,NULL),(1506,123,49,2,NULL),(1507,125,49,2,NULL),(1508,138,49,2,NULL),(1509,140,49,2,NULL),(1510,151,49,2,NULL),(1511,163,49,2,NULL),(1512,2,49,2,NULL),(1513,4,49,2,NULL),(1514,197,49,2,NULL),(1515,198,49,2,NULL),(1516,211,49,2,NULL),(1517,212,49,2,NULL),(1518,213,49,2,NULL),(1519,214,49,2,NULL),(1520,215,49,2,NULL),(1521,216,49,2,NULL),(1522,203,49,2,NULL),(1523,204,49,2,NULL),(1524,196,49,2,NULL),(1525,263,49,2,NULL),(1526,265,49,2,NULL),(1527,274,49,2,NULL),(1528,271,49,2,NULL),(1529,272,49,2,NULL),(1530,279,49,2,NULL),(1531,280,49,2,NULL),(1532,281,49,2,NULL),(1533,282,49,2,NULL),(1534,243,49,2,NULL),(1535,244,49,2,NULL),(1536,267,49,2,NULL),(1537,250,49,2,NULL),(1538,158,19,2,NULL),(1539,123,19,2,NULL),(1540,125,19,2,NULL),(1541,138,19,2,NULL),(1542,140,19,2,NULL),(1543,151,19,2,NULL),(1544,163,19,2,NULL),(1545,2,19,2,NULL),(1546,4,19,2,NULL),(1547,197,19,2,NULL),(1548,198,19,2,NULL),(1549,211,19,2,NULL),(1550,212,19,2,NULL),(1551,213,19,2,NULL),(1552,214,19,2,NULL),(1553,215,19,2,NULL),(1554,216,19,2,NULL),(1555,203,19,2,NULL),(1556,204,19,2,NULL),(1557,196,19,2,NULL),(1558,263,19,2,NULL),(1559,265,19,2,NULL),(1560,274,19,2,NULL),(1561,271,19,2,NULL),(1562,272,19,2,NULL),(1563,279,19,2,NULL),(1564,280,19,2,NULL),(1565,281,19,2,NULL),(1566,282,19,2,NULL),(1567,243,19,2,NULL),(1568,244,19,2,NULL),(1569,267,19,2,NULL),(1570,250,19,2,NULL),(1571,2,17,2,NULL),(1572,4,17,2,NULL),(1573,2,27,2,NULL),(1574,4,27,2,NULL),(1575,2,32,2,NULL),(1576,4,32,2,NULL),(1577,2,37,2,NULL),(1578,4,37,2,NULL),(1579,2,40,2,NULL),(1580,4,40,2,NULL),(1581,2,42,2,NULL),(1582,4,42,2,NULL),(1583,2,44,2,NULL),(1584,4,44,2,NULL),(1585,2,46,2,NULL),(1586,4,46,2,NULL),(1587,2,48,2,NULL),(1588,4,48,2,NULL),(1589,2,52,2,NULL),(1590,4,52,2,NULL),(1591,2,53,2,NULL),(1592,4,53,2,NULL),(1593,2,28,2,NULL),(1594,4,28,2,NULL),(1595,2,54,2,NULL),(1596,4,54,2,NULL),(1597,2,55,2,NULL),(1598,4,55,2,NULL),(1599,2,56,2,NULL),(1600,4,56,2,NULL),(1601,2,58,2,NULL),(1602,4,58,2,NULL),(1603,2,59,2,NULL),(1604,4,59,2,NULL),(1605,2,60,2,NULL),(1606,4,60,2,NULL),(1607,2,63,2,NULL),(1608,4,63,2,NULL),(1609,2,64,2,NULL),(1610,4,64,2,NULL),(1611,2,82,2,NULL),(1612,4,82,2,NULL),(1613,2,83,2,NULL),(1614,4,83,2,NULL),(1615,2,65,2,NULL),(1616,4,65,2,NULL),(1617,2,72,2,NULL),(1618,4,72,2,NULL),(1619,2,75,2,NULL),(1620,4,75,2,NULL),(1621,2,76,2,NULL),(1622,4,76,2,NULL),(1623,2,77,2,NULL),(1624,4,77,2,NULL),(1625,2,80,2,NULL),(1626,4,80,2,NULL),(1627,2,81,2,NULL),(1628,4,81,2,NULL),(1629,2,84,2,NULL),(1630,4,84,2,NULL),(1631,2,85,2,NULL),(1632,4,85,2,NULL),(1633,5,19,2,NULL),(1634,1,19,2,NULL),(1635,158,28,2,NULL),(1636,123,28,2,NULL),(1637,125,28,2,NULL),(1638,138,28,2,NULL),(1639,140,28,2,NULL),(1640,151,28,2,NULL),(1641,163,28,2,NULL),(1642,197,28,2,NULL),(1643,198,28,2,NULL),(1644,211,28,2,NULL),(1645,212,28,2,NULL),(1646,213,28,2,NULL),(1647,214,28,2,NULL),(1648,215,28,2,NULL),(1649,216,28,2,NULL),(1650,203,28,2,NULL),(1651,204,28,2,NULL),(1652,196,28,2,NULL),(1653,263,28,2,NULL),(1654,265,28,2,NULL),(1655,274,28,2,NULL),(1656,271,28,2,NULL),(1657,272,28,2,NULL),(1658,279,28,2,NULL),(1659,280,28,2,NULL),(1660,281,28,2,NULL),(1661,282,28,2,NULL),(1662,243,28,2,NULL),(1663,244,28,2,NULL),(1664,267,28,2,NULL),(1665,250,28,2,NULL),(1666,158,54,2,NULL),(1667,123,54,2,NULL),(1668,125,54,2,NULL),(1669,138,54,2,NULL),(1670,140,54,2,NULL),(1671,151,54,2,NULL),(1672,163,54,2,NULL),(1673,197,54,2,NULL),(1674,198,54,2,NULL),(1675,211,54,2,NULL),(1676,212,54,2,NULL),(1677,213,54,2,NULL),(1678,214,54,2,NULL),(1679,215,54,2,NULL),(1680,216,54,2,NULL),(1681,203,54,2,NULL),(1682,204,54,2,NULL),(1683,196,54,2,NULL),(1684,263,54,2,NULL),(1685,265,54,2,NULL),(1686,274,54,2,NULL),(1687,271,54,2,NULL),(1688,272,54,2,NULL),(1689,279,54,2,NULL),(1690,280,54,2,NULL),(1691,281,54,2,NULL),(1692,282,54,2,NULL),(1693,243,54,2,NULL),(1694,244,54,2,NULL),(1695,267,54,2,NULL),(1696,250,54,2,NULL),(1697,158,65,2,NULL),(1698,123,65,2,NULL),(1699,125,65,2,NULL),(1700,138,65,2,NULL),(1701,140,65,2,NULL),(1702,151,65,2,NULL),(1703,163,65,2,NULL),(1704,197,65,2,NULL),(1705,198,65,2,NULL),(1706,211,65,2,NULL),(1707,212,65,2,NULL),(1708,213,65,2,NULL),(1709,214,65,2,NULL),(1710,215,65,2,NULL),(1711,216,65,2,NULL),(1712,203,65,2,NULL),(1713,204,65,2,NULL),(1714,196,65,2,NULL),(1715,263,65,2,NULL),(1716,265,65,2,NULL),(1717,274,65,2,NULL),(1718,271,65,2,NULL),(1719,272,65,2,NULL),(1720,279,65,2,NULL),(1721,280,65,2,NULL),(1722,281,65,2,NULL),(1723,282,65,2,NULL),(1724,243,65,2,NULL),(1725,244,65,2,NULL),(1726,267,65,2,NULL),(1727,250,65,2,NULL),(1728,263,17,2,NULL),(1729,265,17,2,NULL),(1730,263,27,2,NULL),(1731,265,27,2,NULL),(1732,263,32,2,NULL),(1733,265,32,2,NULL),(1734,263,37,2,NULL),(1735,265,37,2,NULL),(1736,263,40,2,NULL),(1737,265,40,2,NULL),(1738,263,42,2,NULL),(1739,265,42,2,NULL),(1740,263,44,2,NULL),(1741,265,44,2,NULL),(1742,263,46,2,NULL),(1743,265,46,2,NULL),(1744,263,48,2,NULL),(1745,265,48,2,NULL),(1746,263,52,2,NULL),(1747,265,52,2,NULL),(1748,263,53,2,NULL),(1749,265,53,2,NULL),(1750,263,55,2,NULL),(1751,265,55,2,NULL),(1752,263,56,2,NULL),(1753,265,56,2,NULL),(1754,263,58,2,NULL),(1755,265,58,2,NULL),(1756,263,59,2,NULL),(1757,265,59,2,NULL),(1758,263,60,2,NULL),(1759,265,60,2,NULL),(1760,263,63,2,NULL),(1761,265,63,2,NULL),(1762,263,64,2,NULL),(1763,265,64,2,NULL),(1764,263,82,2,NULL),(1765,265,82,2,NULL),(1766,263,83,2,NULL),(1767,265,83,2,NULL),(1768,263,72,2,NULL),(1769,265,72,2,NULL),(1770,263,75,2,NULL),(1771,265,75,2,NULL),(1772,263,76,2,NULL),(1773,265,76,2,NULL),(1774,263,77,2,NULL),(1775,265,77,2,NULL),(1776,263,80,2,NULL),(1777,265,80,2,NULL),(1778,263,81,2,NULL),(1779,265,81,2,NULL),(1780,263,84,2,NULL),(1781,265,84,2,NULL),(1782,263,85,2,NULL),(1783,265,85,2,NULL),(1784,274,17,2,NULL),(1785,274,27,2,NULL),(1786,274,32,2,NULL),(1787,274,37,2,NULL),(1788,274,40,2,NULL),(1789,274,42,2,NULL),(1790,274,44,2,NULL),(1791,274,46,2,NULL),(1792,274,48,2,NULL),(1793,274,52,2,NULL),(1794,274,53,2,NULL),(1795,274,55,2,NULL),(1796,274,56,2,NULL),(1797,274,58,2,NULL),(1798,274,59,2,NULL),(1799,274,60,2,NULL),(1800,274,63,2,NULL),(1801,274,64,2,NULL),(1802,274,82,2,NULL),(1803,274,83,2,NULL),(1804,274,72,2,NULL),(1805,274,75,2,NULL),(1806,274,76,2,NULL),(1807,274,77,2,NULL),(1808,274,80,2,NULL),(1809,274,81,2,NULL),(1810,274,84,2,NULL),(1811,274,85,2,NULL),(1812,266,80,2,NULL),(1813,284,80,2,NULL),(1814,158,72,2,NULL),(1815,123,72,2,NULL),(1816,125,72,2,NULL),(1817,138,72,2,NULL),(1818,140,72,2,NULL),(1819,151,72,2,NULL),(1820,163,72,2,NULL),(1821,197,72,2,NULL),(1822,198,72,2,NULL),(1823,211,72,2,NULL),(1824,212,72,2,NULL),(1825,213,72,2,NULL),(1826,214,72,2,NULL),(1827,215,72,2,NULL),(1828,216,72,2,NULL),(1829,203,72,2,NULL),(1830,204,72,2,NULL),(1831,196,72,2,NULL),(1832,271,72,2,NULL),(1833,272,72,2,NULL),(1834,279,72,2,NULL),(1835,280,72,2,NULL),(1836,281,72,2,NULL),(1837,282,72,2,NULL),(1838,243,72,2,NULL),(1839,244,72,2,NULL),(1840,267,72,2,NULL),(1841,250,72,2,NULL),(1842,258,65,2,NULL),(1843,241,80,2,NULL),(1844,257,80,2,NULL),(1845,158,75,2,NULL),(1846,123,75,2,NULL),(1847,125,75,2,NULL),(1848,138,75,2,NULL),(1849,140,75,2,NULL),(1850,151,75,2,NULL),(1851,163,75,2,NULL),(1852,197,75,2,NULL),(1853,198,75,2,NULL),(1854,211,75,2,NULL),(1855,212,75,2,NULL),(1856,213,75,2,NULL),(1857,214,75,2,NULL),(1858,215,75,2,NULL),(1859,216,75,2,NULL),(1860,203,75,2,NULL),(1861,204,75,2,NULL),(1862,196,75,2,NULL),(1863,271,75,2,NULL),(1864,272,75,2,NULL),(1865,279,75,2,NULL),(1866,280,75,2,NULL),(1867,281,75,2,NULL),(1868,282,75,2,NULL),(1869,243,75,2,NULL),(1870,244,75,2,NULL),(1871,267,75,2,NULL),(1872,250,75,2,NULL),(1873,278,75,2,NULL),(1874,271,17,2,NULL),(1875,272,17,2,NULL),(1876,158,76,2,NULL),(1877,271,27,2,NULL),(1878,272,27,2,NULL),(1879,271,32,2,NULL),(1880,272,32,2,NULL),(1881,271,37,2,NULL),(1882,272,37,2,NULL),(1883,271,40,2,NULL),(1884,272,40,2,NULL),(1885,271,42,2,NULL),(1886,272,42,2,NULL),(1887,123,76,2,NULL),(1888,125,76,2,NULL),(1889,271,44,2,NULL),(1890,272,44,2,NULL),(1891,138,76,2,NULL),(1892,140,76,2,NULL),(1893,151,76,2,NULL),(1894,271,46,2,NULL),(1895,272,46,2,NULL),(1896,271,48,2,NULL),(1897,272,48,2,NULL),(1898,163,76,2,NULL),(1899,271,52,2,NULL),(1900,272,52,2,NULL),(1901,271,53,2,NULL),(1902,272,53,2,NULL),(1903,271,55,2,NULL),(1904,272,55,2,NULL),(1905,271,56,2,NULL),(1906,272,56,2,NULL),(1907,271,58,2,NULL),(1908,272,58,2,NULL),(1909,197,76,2,NULL),(1910,198,76,2,NULL),(1911,271,59,2,NULL),(1912,272,59,2,NULL),(1913,211,76,2,NULL),(1914,212,76,2,NULL),(1915,271,60,2,NULL),(1916,272,60,2,NULL),(1917,213,76,2,NULL),(1918,214,76,2,NULL),(1919,215,76,2,NULL),(1920,216,76,2,NULL),(1921,203,76,2,NULL),(1922,204,76,2,NULL),(1923,196,76,2,NULL),(1924,271,63,2,NULL),(1925,272,63,2,NULL),(1926,271,64,2,NULL),(1927,272,64,2,NULL),(1928,271,82,2,NULL),(1929,272,82,2,NULL),(1930,271,83,2,NULL),(1931,272,83,2,NULL),(1932,271,77,2,NULL),(1933,272,77,2,NULL),(1934,279,76,2,NULL),(1935,280,76,2,NULL),(1936,281,76,2,NULL),(1937,282,76,2,NULL),(1938,243,76,2,NULL),(1939,244,76,2,NULL),(1940,267,76,2,NULL),(1941,250,76,2,NULL),(1942,271,80,2,NULL),(1943,272,80,2,NULL),(1944,271,81,2,NULL),(1945,272,81,2,NULL),(1946,271,84,2,NULL),(1947,272,84,2,NULL),(1948,271,85,2,NULL),(1949,272,85,2,NULL),(1950,268,80,2,NULL),(1951,279,17,2,NULL),(1952,280,17,2,NULL),(1953,281,17,2,NULL),(1954,282,17,2,NULL),(1955,158,77,2,NULL),(1956,279,27,2,NULL),(1957,280,27,2,NULL),(1958,281,27,2,NULL),(1959,282,27,2,NULL),(1960,279,32,2,NULL),(1961,280,32,2,NULL),(1962,281,32,2,NULL),(1963,282,32,2,NULL),(1964,279,37,2,NULL),(1965,280,37,2,NULL),(1966,281,37,2,NULL),(1967,282,37,2,NULL),(1968,279,40,2,NULL),(1969,280,40,2,NULL),(1970,281,40,2,NULL),(1971,282,40,2,NULL),(1972,279,42,2,NULL),(1973,280,42,2,NULL),(1974,281,42,2,NULL),(1975,282,42,2,NULL),(1976,123,77,2,NULL),(1977,125,77,2,NULL),(1978,279,44,2,NULL),(1979,280,44,2,NULL),(1980,281,44,2,NULL),(1981,282,44,2,NULL),(1982,138,77,2,NULL),(1983,140,77,2,NULL),(1984,151,77,2,NULL),(1985,279,46,2,NULL),(1986,280,46,2,NULL),(1987,281,46,2,NULL),(1988,282,46,2,NULL),(1989,279,48,2,NULL),(1990,280,48,2,NULL),(1991,281,48,2,NULL),(1992,282,48,2,NULL),(1993,163,77,2,NULL),(1994,279,52,2,NULL),(1995,280,52,2,NULL),(1996,281,52,2,NULL),(1997,282,52,2,NULL),(1998,279,53,2,NULL),(1999,280,53,2,NULL),(2000,281,53,2,NULL),(2001,282,53,2,NULL),(2002,279,55,2,NULL),(2003,280,55,2,NULL),(2004,281,55,2,NULL),(2005,282,55,2,NULL),(2006,279,56,2,NULL),(2007,280,56,2,NULL),(2008,281,56,2,NULL),(2009,282,56,2,NULL),(2010,279,58,2,NULL),(2011,280,58,2,NULL),(2012,281,58,2,NULL),(2013,282,58,2,NULL),(2014,197,77,2,NULL),(2015,198,77,2,NULL),(2016,279,59,2,NULL),(2017,280,59,2,NULL),(2018,281,59,2,NULL),(2019,282,59,2,NULL),(2020,211,77,2,NULL),(2021,212,77,2,NULL),(2022,279,60,2,NULL),(2023,280,60,2,NULL),(2024,281,60,2,NULL),(2025,282,60,2,NULL),(2026,213,77,2,NULL),(2027,214,77,2,NULL),(2028,215,77,2,NULL),(2029,216,77,2,NULL),(2030,203,77,2,NULL),(2031,204,77,2,NULL),(2032,196,77,2,NULL),(2033,279,63,2,NULL),(2034,280,63,2,NULL),(2035,281,63,2,NULL),(2036,282,63,2,NULL),(2037,279,64,2,NULL),(2038,280,64,2,NULL),(2039,281,64,2,NULL),(2040,282,64,2,NULL),(2041,279,82,2,NULL),(2042,280,82,2,NULL),(2043,281,82,2,NULL),(2044,282,82,2,NULL),(2045,279,83,2,NULL),(2046,280,83,2,NULL),(2047,281,83,2,NULL),(2048,282,83,2,NULL),(2049,243,77,2,NULL),(2050,244,77,2,NULL),(2051,267,77,2,NULL),(2052,250,77,2,NULL),(2053,279,80,2,NULL),(2054,280,80,2,NULL),(2055,281,80,2,NULL),(2056,282,80,2,NULL),(2057,279,81,2,NULL),(2058,280,81,2,NULL),(2059,281,81,2,NULL),(2060,282,81,2,NULL),(2061,279,84,2,NULL),(2062,280,84,2,NULL),(2063,281,84,2,NULL),(2064,282,84,2,NULL),(2065,279,85,2,NULL),(2066,280,85,2,NULL),(2067,281,85,2,NULL),(2068,282,85,2,NULL),(2069,253,78,2,NULL),(2070,283,75,2,NULL),(2071,243,17,2,NULL),(2072,244,17,2,NULL),(2073,267,17,2,NULL),(2074,243,27,2,NULL),(2075,244,27,2,NULL),(2076,267,27,2,NULL),(2077,243,32,2,NULL),(2078,244,32,2,NULL),(2079,267,32,2,NULL),(2080,243,37,2,NULL),(2081,244,37,2,NULL),(2082,267,37,2,NULL),(2083,243,40,2,NULL),(2084,244,40,2,NULL),(2085,267,40,2,NULL),(2086,243,42,2,NULL),(2087,244,42,2,NULL),(2088,267,42,2,NULL),(2089,243,44,2,NULL),(2090,244,44,2,NULL),(2091,267,44,2,NULL),(2092,243,46,2,NULL),(2093,244,46,2,NULL),(2094,267,46,2,NULL),(2095,243,48,2,NULL),(2096,244,48,2,NULL),(2097,267,48,2,NULL),(2098,243,52,2,NULL),(2099,244,52,2,NULL),(2100,267,52,2,NULL),(2101,243,53,2,NULL),(2102,244,53,2,NULL),(2103,267,53,2,NULL),(2104,243,55,2,NULL),(2105,244,55,2,NULL),(2106,267,55,2,NULL),(2107,243,56,2,NULL),(2108,244,56,2,NULL),(2109,267,56,2,NULL),(2110,243,58,2,NULL),(2111,244,58,2,NULL),(2112,267,58,2,NULL),(2113,243,59,2,NULL),(2114,244,59,2,NULL),(2115,267,59,2,NULL),(2116,243,60,2,NULL),(2117,244,60,2,NULL),(2118,267,60,2,NULL),(2119,243,63,2,NULL),(2120,244,63,2,NULL),(2121,267,63,2,NULL),(2122,243,64,2,NULL),(2123,244,64,2,NULL),(2124,267,64,2,NULL),(2125,243,82,2,NULL),(2126,244,82,2,NULL),(2127,267,82,2,NULL),(2128,243,83,2,NULL),(2129,244,83,2,NULL),(2130,267,83,2,NULL),(2131,243,80,2,NULL),(2132,244,80,2,NULL),(2133,267,80,2,NULL),(2134,243,81,2,NULL),(2135,244,81,2,NULL),(2136,267,81,2,NULL),(2137,243,84,2,NULL),(2138,244,84,2,NULL),(2139,267,84,2,NULL),(2140,243,85,2,NULL),(2141,244,85,2,NULL),(2142,267,85,2,NULL),(2143,275,80,2,NULL),(2144,250,17,2,NULL),(2145,250,27,2,NULL),(2146,250,32,2,NULL),(2147,250,37,2,NULL),(2148,250,40,2,NULL),(2149,250,42,2,NULL),(2150,250,44,2,NULL),(2151,250,46,2,NULL),(2152,250,48,2,NULL),(2153,250,52,2,NULL),(2154,250,53,2,NULL),(2155,250,55,2,NULL),(2156,250,56,2,NULL),(2157,250,58,2,NULL),(2158,250,59,2,NULL),(2159,250,60,2,NULL),(2160,250,63,2,NULL),(2161,250,64,2,NULL),(2162,250,82,2,NULL),(2163,250,83,2,NULL),(2164,250,80,2,NULL),(2165,250,81,2,NULL),(2166,250,84,2,NULL),(2167,250,85,2,NULL),(2168,158,80,2,NULL),(2169,123,80,2,NULL),(2170,125,80,2,NULL),(2171,138,80,2,NULL),(2172,140,80,2,NULL),(2173,151,80,2,NULL),(2174,163,80,2,NULL),(2175,197,80,2,NULL),(2176,198,80,2,NULL),(2177,211,80,2,NULL),(2178,212,80,2,NULL),(2179,213,80,2,NULL),(2180,214,80,2,NULL),(2181,215,80,2,NULL),(2182,216,80,2,NULL),(2183,203,80,2,NULL),(2184,204,80,2,NULL),(2185,196,80,2,NULL),(2186,242,80,2,NULL),(2187,276,80,2,NULL),(2188,277,80,2,NULL),(2189,158,81,2,NULL),(2190,123,81,2,NULL),(2191,125,81,2,NULL),(2192,138,81,2,NULL),(2193,140,81,2,NULL),(2194,151,81,2,NULL),(2195,163,81,2,NULL),(2196,197,81,2,NULL),(2197,198,81,2,NULL),(2198,211,81,2,NULL),(2199,212,81,2,NULL),(2200,213,81,2,NULL),(2201,214,81,2,NULL),(2202,215,81,2,NULL),(2203,216,81,2,NULL),(2204,203,81,2,NULL),(2205,204,81,2,NULL),(2206,196,81,2,NULL),(2207,158,84,2,NULL),(2208,123,84,2,NULL),(2209,125,84,2,NULL),(2210,138,84,2,NULL),(2211,140,84,2,NULL),(2212,151,84,2,NULL),(2213,163,84,2,NULL),(2214,197,84,2,NULL),(2215,198,84,2,NULL),(2216,211,84,2,NULL),(2217,212,84,2,NULL),(2218,213,84,2,NULL),(2219,214,84,2,NULL),(2220,215,84,2,NULL),(2221,216,84,2,NULL),(2222,203,84,2,NULL),(2223,204,84,2,NULL),(2224,196,84,2,NULL),(2225,158,85,2,NULL),(2226,123,85,2,NULL),(2227,125,85,2,NULL),(2228,138,85,2,NULL),(2229,140,85,2,NULL),(2230,151,85,2,NULL),(2231,163,85,2,NULL),(2232,197,85,2,NULL),(2233,198,85,2,NULL),(2234,211,85,2,NULL),(2235,212,85,2,NULL),(2236,213,85,2,NULL),(2237,214,85,2,NULL),(2238,215,85,2,NULL),(2239,216,85,2,NULL),(2240,203,85,2,NULL),(2241,204,85,2,NULL),(2242,196,85,2,NULL),(2243,40,52,2,NULL),(2244,44,52,2,NULL),(2245,90,52,2,NULL),(2246,95,52,2,NULL),(2247,98,52,2,NULL),(2248,166,52,2,NULL),(2249,132,52,2,NULL),(2250,176,48,2,NULL),(2251,158,17,2,NULL),(2252,123,17,2,NULL),(2253,125,17,2,NULL),(2254,138,17,2,NULL),(2255,140,17,2,NULL),(2256,151,17,2,NULL),(2257,163,17,2,NULL),(2258,197,17,2,NULL),(2259,198,17,2,NULL),(2260,211,17,2,NULL),(2261,212,17,2,NULL),(2262,213,17,2,NULL),(2263,214,17,2,NULL),(2264,215,17,2,NULL),(2265,216,17,2,NULL),(2266,203,17,2,NULL),(2267,204,17,2,NULL),(2268,196,17,2,NULL),(2269,54,12,2,NULL),(2270,72,40,2,NULL),(2271,158,27,2,NULL),(2272,158,32,2,NULL),(2273,158,37,2,NULL),(2274,158,40,2,NULL),(2275,158,42,2,NULL),(2276,158,44,2,NULL),(2277,158,46,2,NULL),(2278,158,48,2,NULL),(2279,158,52,2,NULL),(2280,158,53,2,NULL),(2281,158,55,2,NULL),(2282,158,56,2,NULL),(2283,158,58,2,NULL),(2284,158,59,2,NULL),(2285,158,60,2,NULL),(2286,158,63,2,NULL),(2287,158,64,2,NULL),(2288,158,82,2,NULL),(2289,158,83,2,NULL),(2290,134,52,2,NULL),(2291,178,40,2,NULL),(2292,123,27,2,NULL),(2293,125,27,2,NULL),(2294,138,27,2,NULL),(2295,140,27,2,NULL),(2296,151,27,2,NULL),(2297,163,27,2,NULL),(2298,197,27,2,NULL),(2299,198,27,2,NULL),(2300,211,27,2,NULL),(2301,212,27,2,NULL),(2302,213,27,2,NULL),(2303,214,27,2,NULL),(2304,215,27,2,NULL),(2305,216,27,2,NULL),(2306,203,27,2,NULL),(2307,204,27,2,NULL),(2308,196,27,2,NULL),(2309,75,40,2,NULL),(2310,147,52,2,NULL),(2311,123,32,2,NULL),(2312,125,32,2,NULL),(2313,138,32,2,NULL),(2314,140,32,2,NULL),(2315,151,32,2,NULL),(2316,163,32,2,NULL),(2317,197,32,2,NULL),(2318,198,32,2,NULL),(2319,211,32,2,NULL),(2320,212,32,2,NULL),(2321,213,32,2,NULL),(2322,214,32,2,NULL),(2323,215,32,2,NULL),(2324,216,32,2,NULL),(2325,203,32,2,NULL),(2326,204,32,2,NULL),(2327,196,32,2,NULL),(2328,143,52,2,NULL),(2329,123,37,2,NULL),(2330,125,37,2,NULL),(2331,138,37,2,NULL),(2332,140,37,2,NULL),(2333,151,37,2,NULL),(2334,163,37,2,NULL),(2335,197,37,2,NULL),(2336,198,37,2,NULL),(2337,211,37,2,NULL),(2338,212,37,2,NULL),(2339,213,37,2,NULL),(2340,214,37,2,NULL),(2341,215,37,2,NULL),(2342,216,37,2,NULL),(2343,203,37,2,NULL),(2344,204,37,2,NULL),(2345,196,37,2,NULL),(2346,101,12,2,NULL),(2347,145,12,2,NULL),(2348,156,52,2,NULL),(2349,123,40,2,NULL),(2350,125,40,2,NULL),(2351,138,40,2,NULL),(2352,140,40,2,NULL),(2353,151,40,2,NULL),(2354,163,40,2,NULL),(2355,197,40,2,NULL),(2356,198,40,2,NULL),(2357,211,40,2,NULL),(2358,212,40,2,NULL),(2359,213,40,2,NULL),(2360,214,40,2,NULL),(2361,215,40,2,NULL),(2362,216,40,2,NULL),(2363,203,40,2,NULL),(2364,204,40,2,NULL),(2365,196,40,2,NULL),(2366,180,40,2,NULL),(2367,123,44,2,NULL),(2368,125,44,2,NULL),(2369,138,42,2,NULL),(2370,140,42,2,NULL),(2371,151,42,2,NULL),(2372,123,46,2,NULL),(2373,125,46,2,NULL),(2374,123,48,2,NULL),(2375,125,48,2,NULL),(2376,163,42,2,NULL),(2377,123,52,2,NULL),(2378,125,52,2,NULL),(2379,123,53,2,NULL),(2380,125,53,2,NULL),(2381,123,55,2,NULL),(2382,125,55,2,NULL),(2383,123,56,2,NULL),(2384,125,56,2,NULL),(2385,123,58,2,NULL),(2386,125,58,2,NULL),(2387,197,42,2,NULL),(2388,198,42,2,NULL),(2389,123,59,2,NULL),(2390,125,59,2,NULL),(2391,211,42,2,NULL),(2392,212,42,2,NULL),(2393,123,60,2,NULL),(2394,125,60,2,NULL),(2395,213,42,2,NULL),(2396,214,42,2,NULL),(2397,215,42,2,NULL),(2398,216,42,2,NULL),(2399,203,42,2,NULL),(2400,204,42,2,NULL),(2401,196,42,2,NULL),(2402,123,63,2,NULL),(2403,125,63,2,NULL),(2404,123,64,2,NULL),(2405,125,64,2,NULL),(2406,123,82,2,NULL),(2407,125,82,2,NULL),(2408,123,83,2,NULL),(2409,125,83,2,NULL),(2410,36,40,2,NULL),(2411,92,44,2,NULL),(2412,138,46,2,NULL),(2413,140,46,2,NULL),(2414,151,46,2,NULL),(2415,138,48,2,NULL),(2416,140,48,2,NULL),(2417,151,48,2,NULL),(2418,163,44,2,NULL),(2419,138,52,2,NULL),(2420,140,52,2,NULL),(2421,151,52,2,NULL),(2422,138,53,2,NULL),(2423,140,53,2,NULL),(2424,151,53,2,NULL),(2425,138,55,2,NULL),(2426,140,55,2,NULL),(2427,151,55,2,NULL),(2428,138,56,2,NULL),(2429,140,56,2,NULL),(2430,151,56,2,NULL),(2431,138,58,2,NULL),(2432,140,58,2,NULL),(2433,151,58,2,NULL),(2434,197,44,2,NULL),(2435,198,44,2,NULL),(2436,138,59,2,NULL),(2437,140,59,2,NULL),(2438,151,59,2,NULL),(2439,211,44,2,NULL),(2440,212,44,2,NULL),(2441,138,60,2,NULL),(2442,140,60,2,NULL),(2443,151,60,2,NULL),(2444,213,44,2,NULL),(2445,214,44,2,NULL),(2446,215,44,2,NULL),(2447,216,44,2,NULL),(2448,203,44,2,NULL),(2449,204,44,2,NULL),(2450,196,44,2,NULL),(2451,138,63,2,NULL),(2452,140,63,2,NULL),(2453,151,63,2,NULL),(2454,138,64,2,NULL),(2455,140,64,2,NULL),(2456,151,64,2,NULL),(2457,138,82,2,NULL),(2458,140,82,2,NULL),(2459,151,82,2,NULL),(2460,138,83,2,NULL),(2461,140,83,2,NULL),(2462,151,83,2,NULL),(2463,163,46,2,NULL),(2464,197,46,2,NULL),(2465,198,46,2,NULL),(2466,211,46,2,NULL),(2467,212,46,2,NULL),(2468,213,46,2,NULL),(2469,214,46,2,NULL),(2470,215,46,2,NULL),(2471,216,46,2,NULL),(2472,203,46,2,NULL),(2473,204,46,2,NULL),(2474,196,46,2,NULL),(2475,50,52,2,NULL),(2476,64,52,2,NULL),(2477,66,52,2,NULL),(2478,82,51,2,NULL),(2479,163,48,2,NULL),(2480,197,48,2,NULL),(2481,198,48,2,NULL),(2482,211,48,2,NULL),(2483,212,48,2,NULL),(2484,213,48,2,NULL),(2485,214,48,2,NULL),(2486,215,48,2,NULL),(2487,216,48,2,NULL),(2488,203,48,2,NULL),(2489,204,48,2,NULL),(2490,196,48,2,NULL),(2491,181,40,2,NULL),(2492,163,52,2,NULL),(2493,163,53,2,NULL),(2494,163,55,2,NULL),(2495,163,56,2,NULL),(2496,163,58,2,NULL),(2497,163,59,2,NULL),(2498,163,60,2,NULL),(2499,163,63,2,NULL),(2500,163,64,2,NULL),(2501,163,82,2,NULL),(2502,163,83,2,NULL),(2503,197,52,2,NULL),(2504,198,52,2,NULL),(2505,211,52,2,NULL),(2506,212,52,2,NULL),(2507,213,52,2,NULL),(2508,214,52,2,NULL),(2509,215,52,2,NULL),(2510,216,52,2,NULL),(2511,203,52,2,NULL),(2512,204,52,2,NULL),(2513,196,52,2,NULL),(2514,60,52,2,NULL),(2515,68,52,2,NULL),(2516,168,52,2,NULL),(2517,197,53,2,NULL),(2518,198,53,2,NULL),(2519,211,53,2,NULL),(2520,212,53,2,NULL),(2521,213,53,2,NULL),(2522,214,53,2,NULL),(2523,215,53,2,NULL),(2524,216,53,2,NULL),(2525,203,53,2,NULL),(2526,204,53,2,NULL),(2527,196,53,2,NULL),(2528,197,55,2,NULL),(2529,198,55,2,NULL),(2530,211,55,2,NULL),(2531,212,55,2,NULL),(2532,213,55,2,NULL),(2533,214,55,2,NULL),(2534,215,55,2,NULL),(2535,216,55,2,NULL),(2536,203,55,2,NULL),(2537,204,55,2,NULL),(2538,196,55,2,NULL),(2539,206,63,2,NULL),(2540,225,63,2,NULL),(2541,197,56,2,NULL),(2542,198,56,2,NULL),(2543,211,56,2,NULL),(2544,212,56,2,NULL),(2545,213,56,2,NULL),(2546,214,56,2,NULL),(2547,215,56,2,NULL),(2548,216,56,2,NULL),(2549,203,56,2,NULL),(2550,204,56,2,NULL),(2551,196,56,2,NULL),(2552,190,55,2,NULL),(2553,205,63,2,NULL),(2554,224,63,2,NULL),(2555,197,59,2,NULL),(2556,198,59,2,NULL),(2557,211,58,2,NULL),(2558,212,58,2,NULL),(2559,197,60,2,NULL),(2560,198,60,2,NULL),(2561,213,58,2,NULL),(2562,214,58,2,NULL),(2563,215,58,2,NULL),(2564,216,58,2,NULL),(2565,203,58,2,NULL),(2566,204,58,2,NULL),(2567,196,58,2,NULL),(2568,197,63,2,NULL),(2569,198,63,2,NULL),(2570,197,64,2,NULL),(2571,198,64,2,NULL),(2572,197,82,2,NULL),(2573,198,82,2,NULL),(2574,197,83,2,NULL),(2575,198,83,2,NULL),(2576,187,58,2,NULL),(2577,188,58,2,NULL),(2578,189,58,2,NULL),(2579,211,60,2,NULL),(2580,212,60,2,NULL),(2581,213,59,2,NULL),(2582,214,59,2,NULL),(2583,215,59,2,NULL),(2584,216,59,2,NULL),(2585,203,59,2,NULL),(2586,204,59,2,NULL),(2587,196,59,2,NULL),(2588,211,63,2,NULL),(2589,212,63,2,NULL),(2590,211,64,2,NULL),(2591,212,64,2,NULL),(2592,211,82,2,NULL),(2593,212,82,2,NULL),(2594,211,83,2,NULL),(2595,212,83,2,NULL),(2596,195,63,2,NULL),(2597,203,60,2,NULL),(2598,204,60,2,NULL),(2599,196,60,2,NULL),(2600,213,63,2,NULL),(2601,214,63,2,NULL),(2602,215,63,2,NULL),(2603,216,63,2,NULL),(2604,213,64,2,NULL),(2605,214,64,2,NULL),(2606,215,64,2,NULL),(2607,216,64,2,NULL),(2608,213,82,2,NULL),(2609,214,82,2,NULL),(2610,215,82,2,NULL),(2611,216,82,2,NULL),(2612,213,83,2,NULL),(2613,214,83,2,NULL),(2614,215,83,2,NULL),(2615,216,83,2,NULL),(2616,207,58,2,NULL),(2617,203,63,2,NULL),(2618,204,63,2,NULL),(2619,203,64,2,NULL),(2620,204,64,2,NULL),(2621,203,82,2,NULL),(2622,204,82,2,NULL),(2623,203,83,2,NULL),(2624,204,83,2,NULL),(2625,223,63,2,NULL),(2626,196,63,2,NULL),(2627,196,64,2,NULL),(2628,196,82,2,NULL),(2629,196,83,2,NULL),(2630,208,63,2,NULL),(2631,209,63,2,NULL),(2632,217,63,2,NULL),(2633,235,63,2,NULL),(2634,236,63,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:25
