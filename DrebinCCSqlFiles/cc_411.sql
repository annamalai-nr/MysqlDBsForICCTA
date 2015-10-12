-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_411
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
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(17,'.ImageTestActivity'),(18,'.Myhall'),(10,'.PintuActivity'),(14,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.PACKAGE_REMOVED'),(21,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'com.android.vending.INSTALL_REFERRER'),(27,'com.cars.GameBootReceiver'),(23,'com.cars.ImageTestActivity'),(24,'com.cars.Myhall'),(29,'com.cars.Web'),(22,'com.fbbwallpaper.GameBootReceiver'),(16,'com.fbbwallpaper.ImageTestActivity'),(19,'com.fbbwallpaper.Myhall'),(13,'com.fbbwallpaper.Web'),(20,'com.m_dgmnbz.GameBootReceiver'),(28,'com.m_dgmnbz.ImageTestActivity'),(26,'com.m_dgmnbz.Myhall'),(30,'com.m_dgmnbz.Web'),(8,'com.pintu_zqmn.GameBootReceiver'),(11,'com.pintu_zqmn.PintuActivity'),(15,'vjsfpa.dosdgt.CqefceLnD');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_zqmn',20007),(2,'com.ilmfwrwal.qlehunarugttdgvj',10021),(3,'com.fbbwallpaper',10019),(4,'com.m_dgmnbz',10019),(5,'com.cars',10018),(6,'net.dincbib.wokdorl.sigwtipkdni',10038),(7,'vjsfpa.dosdgt',10013);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_zqmn.PintuActivity'),(2,1,'com.pintu_zqmn.GameInfo'),(3,1,'com.pintu_zqmn.TableClass'),(4,1,'com.pintu_zqmn.GameAlertDialog'),(5,1,'com.pintu_zqmn.GameService'),(6,1,'com.pintu_zqmn.GameBootReceiver'),(7,2,'com.ilmfwrwal.qlehunarugttdgvj.RetroDefenceLite'),(8,2,'com.chEJSkWE.AkfUcwshMQDdQ'),(9,2,'com.chEJSkWE.vEphGedQWhKRkQ'),(10,3,'com.fbbwallpaper.Myhall'),(11,3,'com.fbbwallpaper.Web'),(12,3,'com.fbbwallpaper.HomeActivity'),(13,4,'com.m_dgmnbz.Myhall'),(14,3,'com.fbbwallpaper.SortActivity1'),(15,4,'com.m_dgmnbz.Web'),(16,3,'com.fbbwallpaper.SortActivity2'),(17,4,'com.m_dgmnbz.HomeActivity'),(18,4,'com.m_dgmnbz.SortActivity1'),(19,3,'com.fbbwallpaper.SearchActivity'),(20,4,'com.m_dgmnbz.SortActivity2'),(21,3,'com.fbbwallpaper.ManagerActivity'),(22,4,'com.m_dgmnbz.SearchActivity'),(23,3,'com.fbbwallpaper.GameInfo'),(24,5,'com.cars.Myhall'),(25,4,'com.m_dgmnbz.ManagerActivity'),(26,5,'com.cars.Web'),(27,3,'com.fbbwallpaper.TableClass'),(28,5,'com.cars.HomeActivity'),(29,4,'com.m_dgmnbz.GameInfo'),(30,5,'com.cars.SortActivity1'),(31,3,'com.fbbwallpaper.GameAlertDialog'),(32,5,'com.cars.SortActivity2'),(33,4,'com.m_dgmnbz.TableClass'),(34,3,'com.fbbwallpaper.DevelopmentSettings'),(35,5,'com.cars.SearchActivity'),(36,4,'com.m_dgmnbz.GameAlertDialog'),(37,3,'com.fbbwallpaper.qimg.ImageTestActivity'),(38,4,'com.m_dgmnbz.DevelopmentSettings'),(39,5,'com.cars.ManagerActivity'),(40,6,'net.dincbib.wokdorl.sigwtipkdni.MyMainActivity'),(41,4,'com.m_dgmnbz.image.ImageTestActivity'),(42,5,'com.cars.GameInfo'),(43,3,'com.fbbwallpaper.qimg.ADactivity'),(44,3,'com.fbbwallpaper.GameService'),(45,5,'com.cars.TableClass'),(46,4,'com.m_dgmnbz.image.ADactivity'),(47,6,'net.dincbib.wokdorl.sigwtipkdni.MyPauseActivity'),(48,4,'com.m_dgmnbz.GameService'),(49,7,'vjsfpa.dosdgt.LoadingActivity'),(50,3,'com.fbbwallpaper.GameBootReceiver'),(51,6,'net.dincbib.wokdorl.sigwtipkdni.MyPreferenceActivity'),(52,5,'com.cars.GameAlertDialog'),(53,6,'com.admob.android.ads.AdMobActivity'),(54,7,'vjsfpa.dosdgt.DrawActivity'),(55,5,'com.cars.DevelopmentSettings'),(56,6,'com.google.ads.AdActivity'),(57,4,'com.m_dgmnbz.GameBootReceiver'),(58,7,'com.admob.android.ads.AdMobActivity'),(59,6,'com.wEiuAV.TacUDekenMNC'),(60,7,'com.RWflWQAsh.dgAvupIEWNip'),(61,5,'com.cars.qimg.ImageTestActivity'),(62,6,'com.wEiuAV.EfhCdluTkvoEsa'),(63,7,'com.RWflWQAsh.frHJrGhbNqd'),(64,5,'com.cars.qimg.ADactivity'),(65,6,'com.wEiuAV.QGaMmrUhd'),(66,7,'com.RWflWQAsh.nptRkgSMHBLrV'),(67,5,'com.cars.GameService'),(68,6,'com.wEiuAV.BDoWuFdqIfmVo'),(69,6,'com.wEiuAV.tSppnJTqPh'),(70,7,'com.RWflWQAsh.gMjJoglSDNmG'),(71,5,'com.cars.GameBootReceiver'),(72,6,'com.wEiuAV.GUwsUhEcKB'),(73,6,'com.wEiuAV.userPermissionReceiver'),(74,7,'com.RWflWQAsh.KBtQPfrDgn'),(75,7,'com.RWflWQAsh.inAtSlmlhD'),(76,7,'com.RWflWQAsh.oMtoheonVw'),(77,7,'com.RWflWQAsh.PiPsOpDhF'),(78,7,'com.admob.android.ads.analytics.InstallReceiver'),(79,7,'com.RWflWQAsh.CqefceLnD'),(80,1,'w'),(81,1,'x'),(82,1,'b'),(83,1,'l'),(84,3,'at'),(85,4,'cc'),(86,4,'s'),(87,3,'ap'),(88,5,'q'),(89,4,'x'),(90,4,'e'),(91,7,'com.RWflWQAsh.bs'),(92,3,'q'),(93,5,'ax'),(94,7,'com.RWflWQAsh.br'),(95,5,'d'),(96,3,'l'),(97,5,'al'),(98,4,'au'),(99,5,'bi'),(100,7,'com.RWflWQAsh.bg'),(101,5,'at'),(102,4,'ae'),(103,7,'com.RWflWQAsh.bf'),(104,5,'y'),(105,3,'ae'),(106,3,'co'),(107,7,'com.RWflWQAsh.z'),(108,4,'bv'),(109,3,'du'),(110,4,'bs'),(111,7,'com.RWflWQAsh.ar'),(112,3,'dl'),(113,6,'com.wEiuAV.ae'),(114,5,'dq'),(115,6,'net.sunflat.android.appbase.ag'),(116,4,'di'),(117,5,'n'),(118,7,'com.RWflWQAsh.ac'),(119,7,'com.RWflWQAsh.bv'),(120,3,'ch'),(121,6,'com.admob.android.ads.at'),(122,5,'am'),(123,5,'bv'),(124,6,'com.wEiuAV.ah'),(125,4,'ai'),(126,3,'v'),(127,6,'com.wEiuAV.ad'),(128,4,'c'),(129,3,'h');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'title'),(2,4,'apk_url'),(3,2,'fromtype'),(4,4,'package_name'),(5,4,'version_code'),(6,2,'from_table'),(7,4,'title'),(8,5,'service_channel'),(9,1,'service_channel'),(10,2,'status'),(11,2,'filepath'),(12,4,'btn_txt'),(13,2,'from_alert'),(14,4,'content'),(15,2,'game'),(16,36,'content'),(17,4,'url'),(18,20,'package_name'),(19,31,'title'),(20,23,'filepath'),(21,10,'nextclassid'),(22,21,'filepath'),(23,21,'soft_id'),(24,74,'isDirectFromTable'),(25,78,'referrer'),(26,66,'filepath'),(27,76,'apkurl'),(28,13,'service_channel'),(29,36,'url'),(30,25,'completed'),(31,20,'nextclassid'),(32,25,'app_name'),(33,41,'service_channel'),(34,44,'service_channel'),(35,63,'popurl'),(36,16,'nextclassid'),(37,66,'game'),(38,23,'title'),(39,75,'title'),(40,25,'soft_id'),(41,25,'total'),(42,35,'package_name'),(43,39,'soft_id'),(44,39,'status'),(45,21,'completed'),(46,29,'from_alert'),(47,39,'package_name'),(48,32,'package_name'),(49,35,'version_code'),(50,61,'service_channel'),(51,25,'url'),(52,66,'from_alert'),(53,60,'version_code'),(54,76,'content'),(55,23,'status'),(56,21,'url'),(57,39,'app_name'),(58,21,'package_name'),(59,39,'icon'),(60,13,'nextclassid'),(61,22,'package_name'),(62,29,'from_table'),(63,19,'status'),(64,24,'nextclassid'),(65,39,'filepath'),(66,32,'status'),(67,15,'service_channel'),(68,39,'total'),(69,57,'tr'),(70,57,'t'),(71,57,'sc'),(72,52,'title'),(73,21,'app_name'),(74,57,'$'),(75,57,'ap'),(76,29,'fromtype'),(77,78,'(.*)'),(78,75,'content'),(79,63,'NEW_APP_ID'),(80,60,'NEW_APP_ID'),(81,11,'service_channel'),(82,23,'game'),(83,29,'title'),(84,57,'sin'),(85,57,'or'),(86,65,'imageURL'),(87,65,'iconURL'),(88,53,'or'),(89,37,'service_channel'),(90,57,'mi'),(91,21,'status'),(92,52,'version_code'),(93,57,'rd'),(94,42,'status'),(95,53,'ap'),(96,53,'oi'),(97,25,'filepath'),(98,52,'package_name'),(99,52,'btn_txt'),(100,39,'url'),(101,57,'si'),(102,24,'service_channel'),(103,67,'service_channel'),(104,31,'btn_txt'),(105,53,'t'),(106,77,'NEW_APP_ID'),(107,59,'np_app_key'),(108,57,'p'),(109,65,'np_app_key'),(110,66,'fromtype'),(111,62,'np_app_key'),(112,71,'np_app_key'),(113,75,'version_code'),(114,68,'np_app_key'),(115,74,'from'),(116,75,'fromtable'),(117,57,'o'),(118,75,'btn_txt'),(119,57,'c'),(120,54,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(121,78,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(122,65,'apkVersion'),(123,36,'btn_txt'),(124,66,'status'),(125,53,'si'),(126,25,'icon'),(127,65,'apkTitle'),(128,23,'from_alert'),(129,69,'packageName'),(130,65,'apkURL'),(131,53,'c'),(132,53,'su'),(133,25,'package_name'),(134,57,'a'),(135,53,'s'),(136,53,'ad'),(137,39,'completed'),(138,53,'json'),(139,53,'cs'),(140,53,'u'),(141,53,'p'),(142,53,'sin'),(143,65,'detailFlag'),(144,53,'cbo'),(145,75,'package_name'),(146,20,'status'),(147,31,'url'),(148,25,'status'),(149,26,'service_channel'),(150,31,'package_name'),(151,57,'ad'),(152,21,'total'),(153,74,'package_name'),(154,31,'version_code'),(155,10,'service_channel'),(156,42,'title'),(157,31,'apk_url'),(158,29,'game'),(159,21,'icon'),(160,53,'skd'),(161,36,'title'),(162,53,'tr'),(163,36,'version_code'),(164,22,'version_code'),(165,53,'ru'),(166,53,'rd'),(167,53,'int'),(168,65,'apkSoftID'),(169,53,'mi'),(170,54,'admob_activity'),(171,31,'content'),(172,19,'package_name'),(173,57,'ru'),(174,32,'nextclassid'),(175,57,'oi'),(176,42,'from_table'),(177,65,'packageName'),(178,66,'from_table'),(179,65,'apkInfo'),(180,76,'packagename'),(181,71,'fileURL'),(182,57,'json'),(183,35,'status'),(184,56,'com.google.ads.AdOpener'),(185,76,'title'),(186,75,'url'),(187,63,'poptitle'),(188,57,'cs'),(189,75,'apk_url'),(190,53,'sku'),(191,65,'apkSize'),(192,53,'nosk'),(193,36,'package_name'),(194,53,'msm'),(195,60,'soft_id'),(196,57,'msm'),(197,57,'skd'),(198,54,'ADMOB_PUBLISHER_ID'),(199,54,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(200,78,'ADMOB_PUBLISHER_ID'),(201,78,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(202,53,'sd'),(203,57,'int'),(204,57,'sd'),(205,57,'u'),(206,57,'s'),(207,57,'au'),(208,22,'status'),(209,36,'apk_url'),(210,66,'title'),(211,52,'content'),(212,16,'package_name'),(213,23,'fromtype'),(214,53,'o'),(215,56,'action'),(216,62,'ADMOB_PUBLISHER_ID'),(217,62,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(218,53,'a'),(219,56,'params'),(220,62,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(221,53,'sc'),(222,57,'sku'),(223,57,'su'),(224,57,'cbo'),(225,69,'fileURL'),(226,42,'from_alert'),(227,71,'fileName'),(228,16,'status'),(229,53,'b'),(230,53,'au'),(231,57,'nosk'),(232,57,'b'),(233,53,'$'),(234,23,'from_table'),(235,29,'filepath'),(236,42,'filepath'),(237,52,'apk_url'),(238,48,'service_channel'),(239,52,'url'),(240,29,'status'),(241,19,'version_code');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,50,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,57,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'s',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,72,'r',0,NULL,NULL),(72,71,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,107,'r',1,NULL,NULL),(81,118,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,8),(3,3,2),(4,4,2),(5,5,3),(6,6,2),(7,7,2),(8,8,2),(9,9,4),(10,9,3),(11,10,3),(12,10,4),(13,11,2),(14,12,6),(15,13,2),(16,14,4),(17,15,2),(18,16,2),(19,17,2),(20,18,1),(21,19,4),(22,20,4),(23,21,6),(24,22,6),(25,23,1),(26,24,3),(27,25,37),(28,26,2),(29,27,2),(30,28,25),(31,29,11),(32,30,4),(33,31,29),(34,32,31),(35,33,29),(36,34,27),(37,34,31),(38,35,31),(39,36,70),(40,37,35),(41,38,58),(42,39,32),(43,40,46),(44,41,31),(45,42,79),(46,43,13),(47,44,64),(48,45,66),(49,46,23),(50,47,36),(51,48,28),(52,49,33),(53,50,32),(54,51,66),(55,52,31),(56,52,27),(57,53,64),(58,54,13),(59,55,10),(60,56,24),(61,57,16),(62,58,36),(63,58,33),(64,59,63),(65,60,32),(66,61,25),(67,62,37),(68,63,76),(69,64,39),(70,65,15),(71,66,60),(72,67,26),(73,68,10),(74,69,17),(75,70,60),(76,71,24),(77,72,20),(78,73,60),(79,74,42),(80,75,16),(81,76,17),(82,77,75),(83,78,58),(84,79,43),(85,80,59),(86,81,17),(87,82,10),(88,83,75),(89,84,28),(90,85,71),(91,86,51),(92,87,20),(93,88,39),(94,89,51),(95,90,46),(96,91,79),(97,92,10),(98,93,20),(99,94,39),(100,95,59),(101,96,12),(102,97,36),(103,98,61),(104,99,70),(105,99,75),(106,99,74),(107,100,16),(108,101,24),(109,102,41),(110,103,60),(111,104,21),(112,105,65),(113,105,62),(114,106,45),(115,108,17),(116,107,23),(117,109,66),(118,110,19),(119,111,52),(120,111,45),(121,112,59),(122,113,13),(123,114,11),(124,115,42),(125,116,40),(126,116,62),(127,117,75),(128,118,15),(129,119,27),(130,120,12),(131,121,20),(132,122,79),(133,123,32),(134,124,13),(135,125,24),(136,126,21),(137,127,76),(138,128,33),(139,129,23),(140,130,75),(141,131,45),(142,131,52),(143,132,29),(144,134,28),(145,133,62),(146,135,43),(147,136,22),(148,137,66),(149,138,28),(150,139,56),(151,140,36),(152,141,42),(153,142,11),(154,143,66),(155,144,28),(156,145,43),(157,146,13),(158,147,13),(159,148,23),(160,149,62),(161,150,42),(162,151,66),(163,152,19),(164,153,62),(165,154,61),(166,156,17),(167,155,21),(168,157,65),(169,158,52),(170,159,29),(171,160,10),(172,161,69),(173,162,24),(174,163,10),(175,164,70),(176,164,74),(177,164,75),(178,165,40),(179,165,62),(180,166,35),(181,167,16),(182,168,24),(183,169,41),(184,170,51),(185,171,72),(186,172,27),(187,173,41),(188,174,60),(189,175,72),(190,176,66),(191,177,36),(192,178,42),(193,179,12),(194,180,65),(195,180,62),(196,181,32),(197,182,20),(198,183,31),(199,184,61),(200,185,66),(201,186,58),(202,187,12),(203,188,32),(204,189,73),(205,190,25),(206,191,70),(207,192,28),(208,193,20),(209,194,16),(210,195,62),(211,196,26),(212,197,59),(213,198,13),(214,199,37),(215,200,62),(216,201,23),(217,202,46),(218,203,42),(219,204,12),(220,205,33),(221,205,36),(222,206,26),(223,207,16),(224,208,15),(225,209,24),(226,210,72),(227,211,10),(228,212,17),(229,213,64),(230,214,12),(231,215,45),(232,216,29),(233,217,22),(234,218,52),(235,219,52),(236,220,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.chEJSkWE.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(2,8,'<com.chEJSkWE.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(3,80,'<w: void onClick(android.view.View)>',221,'a',NULL),(4,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(5,3,'<com.pintu_zqmn.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(6,81,'<x: void onClick(android.view.View)>',239,'a',NULL),(7,80,'<w: void onClick(android.view.View)>',242,'a',NULL),(8,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(9,82,'<b: void a(int,boolean)>',10,'s',NULL),(10,82,'<b: void a(int,boolean)>',57,'a',NULL),(11,83,'<l: void onClick(android.view.View)>',218,'a',NULL),(12,6,'<com.pintu_zqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(13,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(14,4,'<com.pintu_zqmn.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(15,83,'<l: void onClick(android.view.View)>',239,'a',NULL),(16,81,'<x: void onClick(android.view.View)>',218,'a',NULL),(17,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(18,1,'<com.pintu_zqmn.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(19,4,'<com.pintu_zqmn.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(20,4,'<com.pintu_zqmn.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(21,6,'<com.pintu_zqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(22,6,'<com.pintu_zqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(23,1,'<com.pintu_zqmn.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(24,3,'<com.pintu_zqmn.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(25,84,'<at: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(26,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(27,2,'<com.pintu_zqmn.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(28,85,'<cc: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(29,11,'<com.fbbwallpaper.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(30,4,'<com.pintu_zqmn.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(31,86,'<s: void onClick(android.view.View)>',218,'a',NULL),(32,31,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(33,29,'<com.m_dgmnbz.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(34,87,'<ap: void a(int,boolean)>',57,'a',NULL),(35,31,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(36,70,'<com.RWflWQAsh.gMjJoglSDNmG: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(37,35,'<com.cars.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(38,57,'<com.m_dgmnbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(39,88,'<q: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(40,89,'<x: void onClick(android.view.View)>',6,'a',NULL),(41,31,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(42,79,'<com.RWflWQAsh.CqefceLnD: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(43,90,'<e: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(44,64,'<com.cars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(45,91,'<com.RWflWQAsh.bs: void onClick(android.view.View)>',199,'a',NULL),(46,92,'<q: void onClick(android.view.View)>',239,'a',NULL),(47,36,'<com.m_dgmnbz.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(48,93,'<ax: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(49,33,'<com.m_dgmnbz.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(50,32,'<com.cars.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(51,94,'<com.RWflWQAsh.br: void onClick(android.view.View)>',196,'a',NULL),(52,87,'<ap: void a(int,boolean)>',10,'s',NULL),(53,95,'<d: void onClick(android.view.View)>',6,'a',NULL),(54,90,'<e: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(55,96,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(56,97,'<al: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(57,16,'<com.fbbwallpaper.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(58,98,'<au: void a(int,boolean)>',10,'s',NULL),(59,63,'<com.RWflWQAsh.frHJrGhbNqd: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(60,32,'<com.cars.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(61,85,'<cc: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(62,37,'<com.fbbwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(63,76,'<com.RWflWQAsh.oMtoheonVw: void onCreate(android.os.Bundle)>',13,'s',NULL),(64,99,'<bi: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(65,15,'<com.m_dgmnbz.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(66,100,'<com.RWflWQAsh.bg: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(67,101,'<at: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(68,10,'<com.fbbwallpaper.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(69,17,'<com.m_dgmnbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(70,60,'<com.RWflWQAsh.dgAvupIEWNip: void onCreate(android.os.Bundle)>',61,'s',NULL),(71,97,'<al: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(72,102,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(73,103,'<com.RWflWQAsh.bf: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(74,104,'<y: void onClick(android.view.View)>',224,'a',NULL),(75,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(76,17,'<com.m_dgmnbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(77,75,'<com.RWflWQAsh.inAtSlmlhD: void onClick(android.view.View)>',70,'a',NULL),(78,57,'<com.m_dgmnbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(79,106,'<co: void onClick(android.view.View)>',6,'a',NULL),(80,59,'<com.wEiuAV.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(81,108,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(82,96,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(83,75,'<com.RWflWQAsh.inAtSlmlhD: void onClick(android.view.View)>',79,'a',NULL),(84,93,'<ax: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(85,72,'<com.wEiuAV.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(86,50,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(87,102,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(88,99,'<bi: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(89,50,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(90,46,'<com.m_dgmnbz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(91,79,'<com.RWflWQAsh.CqefceLnD: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(92,96,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(93,20,'<com.m_dgmnbz.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(94,39,'<com.cars.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(95,59,'<com.wEiuAV.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(96,109,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(97,36,'<com.m_dgmnbz.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(98,61,'<com.cars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(99,74,'<com.RWflWQAsh.KBtQPfrDgn: void a(int,boolean)>',10,'s',NULL),(100,16,'<com.fbbwallpaper.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(101,97,'<al: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(102,110,'<bs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(103,111,'<com.RWflWQAsh.ar: void onClick(android.view.View)>',105,'a',NULL),(104,112,'<dl: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(105,113,'<com.wEiuAV.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(106,45,'<com.cars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(107,23,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(108,17,'<com.m_dgmnbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(109,94,'<com.RWflWQAsh.br: void onClick(android.view.View)>',181,'a',NULL),(110,19,'<com.fbbwallpaper.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(111,114,'<dq: void a(int,boolean)>',57,'a',NULL),(112,59,'<com.wEiuAV.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(113,90,'<e: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(114,11,'<com.fbbwallpaper.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(115,104,'<y: void onClick(android.view.View)>',205,'a',NULL),(116,115,'<net.sunflat.android.appbase.ag: void a(int,int)>',102,'a',NULL),(117,75,'<com.RWflWQAsh.inAtSlmlhD: void onClick(android.view.View)>',61,'a',NULL),(118,116,'<di: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(119,27,'<com.fbbwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(120,12,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(121,102,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(122,79,'<com.RWflWQAsh.CqefceLnD: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(123,117,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(124,13,'<com.m_dgmnbz.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(125,24,'<com.cars.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(126,21,'<com.fbbwallpaper.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(127,76,'<com.RWflWQAsh.oMtoheonVw: void onClick(android.view.View)>',26,'a',NULL),(128,33,'<com.m_dgmnbz.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(129,92,'<q: void onClick(android.view.View)>',218,'a',NULL),(130,75,'<com.RWflWQAsh.inAtSlmlhD: void onClick(android.view.View)>',48,'a',NULL),(131,114,'<dq: void a(int,boolean)>',10,'s',NULL),(132,29,'<com.m_dgmnbz.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(133,62,'<com.wEiuAV.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(134,28,'<com.cars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(135,43,'<com.fbbwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(136,22,'<com.m_dgmnbz.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(137,119,'<com.RWflWQAsh.bv: void onClick(android.view.View)>',181,'a',NULL),(138,28,'<com.cars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(139,56,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(140,36,'<com.m_dgmnbz.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(141,42,'<com.cars.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(142,120,'<ch: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(143,66,'<com.RWflWQAsh.nptRkgSMHBLrV: void onCreate(android.os.Bundle)>',82,'s',NULL),(144,28,'<com.cars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(145,43,'<com.fbbwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(146,90,'<e: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(147,13,'<com.m_dgmnbz.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(148,23,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(149,62,'<com.wEiuAV.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(150,42,'<com.cars.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(151,91,'<com.RWflWQAsh.bs: void onClick(android.view.View)>',184,'a',NULL),(152,19,'<com.fbbwallpaper.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(153,121,'<com.admob.android.ads.at: void a(android.content.Context)>',11,'a',0),(154,61,'<com.cars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(155,112,'<dl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(156,108,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(157,65,'<com.wEiuAV.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(158,52,'<com.cars.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(159,86,'<s: void onClick(android.view.View)>',239,'a',NULL),(160,96,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(161,69,'<com.wEiuAV.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(162,122,'<am: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(163,10,'<com.fbbwallpaper.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(164,74,'<com.RWflWQAsh.KBtQPfrDgn: void a(int,boolean)>',42,'a',NULL),(165,115,'<net.sunflat.android.appbase.ag: void a(java.lang.String)>',17,'a',NULL),(166,35,'<com.cars.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(167,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(168,24,'<com.cars.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(169,41,'<com.m_dgmnbz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(170,50,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(171,71,'<com.cars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(172,27,'<com.fbbwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(173,41,'<com.m_dgmnbz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(174,60,'<com.RWflWQAsh.dgAvupIEWNip: void onCreate(android.os.Bundle)>',65,'s',NULL),(175,71,'<com.cars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(176,119,'<com.RWflWQAsh.bv: void onClick(android.view.View)>',196,'a',NULL),(177,36,'<com.m_dgmnbz.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(178,42,'<com.cars.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(179,12,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(180,65,'<com.wEiuAV.QGaMmrUhd: void a(com.wEiuAV.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(181,117,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(182,20,'<com.m_dgmnbz.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(183,31,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(184,123,'<bv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(185,66,'<com.RWflWQAsh.nptRkgSMHBLrV: void onCreate(android.os.Bundle)>',32,'s',NULL),(186,57,'<com.m_dgmnbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(187,109,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(188,117,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(189,124,'<com.wEiuAV.ah: void run()>',25,'s',NULL),(190,25,'<com.m_dgmnbz.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(191,70,'<com.RWflWQAsh.gMjJoglSDNmG: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(192,93,'<ax: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(193,125,'<ai: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(194,126,'<v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(195,62,'<com.wEiuAV.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(196,26,'<com.cars.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(197,127,'<com.wEiuAV.ad: void run()>',8,'s',NULL),(198,128,'<c: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(199,37,'<com.fbbwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(200,62,'<com.wEiuAV.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(201,23,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(202,46,'<com.m_dgmnbz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(203,42,'<com.cars.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(204,109,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(205,98,'<au: void a(int,boolean)>',57,'a',NULL),(206,26,'<com.cars.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(207,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(208,15,'<com.m_dgmnbz.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(209,97,'<al: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(210,71,'<com.cars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(211,129,'<h: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(212,108,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(213,64,'<com.cars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(214,12,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(215,45,'<com.cars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(216,29,'<com.m_dgmnbz.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(217,22,'<com.m_dgmnbz.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(218,52,'<com.cars.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(219,52,'<com.cars.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(220,52,'<com.cars.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,4),(2,3,4),(3,4,4),(4,7,1),(5,8,1),(6,9,1),(7,10,1),(8,11,1),(9,12,1),(10,13,1),(11,14,1),(12,18,4),(13,19,4),(14,20,8),(15,23,1),(16,24,1),(17,25,1),(18,26,1),(19,27,4),(20,28,4),(21,30,10),(22,31,11),(23,32,4),(24,33,4),(25,34,3),(26,36,8),(27,38,1),(28,39,1),(29,40,4),(30,43,12),(31,44,13),(32,46,14),(33,47,4),(34,48,4),(35,49,3),(36,58,4),(37,59,15),(38,60,4),(39,62,4),(40,63,1),(41,64,1),(42,65,1),(43,66,4),(44,67,1),(45,68,1),(46,69,4),(47,71,1),(48,72,1),(49,73,1),(50,74,1),(51,76,1),(52,77,1),(53,80,1),(54,82,1),(55,84,1),(56,90,1),(57,92,16),(58,93,1),(59,94,12),(60,95,17),(61,98,4),(62,100,18),(63,103,19),(64,104,4),(65,106,1),(66,108,4),(67,109,1),(68,110,3),(69,111,1),(70,113,20),(71,114,1),(72,117,4),(73,119,4),(74,122,22),(75,123,1),(76,124,22),(77,127,1),(78,132,4),(79,133,3),(80,134,23),(81,136,17),(82,139,4),(83,141,12),(84,142,4),(85,146,4),(86,149,4),(87,152,4),(88,153,4),(89,154,4),(90,156,4),(91,157,4),(92,158,4),(93,159,4),(94,160,4),(95,162,4),(96,163,15),(97,164,4),(98,166,4),(99,168,4),(100,169,18),(101,171,4),(102,172,1),(103,174,24),(104,175,4),(105,176,4),(106,179,4),(107,181,4),(108,185,4),(109,187,4),(110,188,4),(111,191,25),(112,192,4),(113,193,25),(114,197,4),(115,199,18),(116,203,26),(117,204,4),(118,206,4),(119,208,1),(120,209,1),(121,210,4),(122,211,1),(123,212,1),(124,213,4),(125,214,1),(126,217,1),(127,216,4),(128,218,4),(129,220,1),(130,221,1),(131,222,4),(132,223,1),(133,225,4),(134,226,1),(135,227,4),(136,228,1),(137,232,4),(138,233,1),(139,234,4),(140,235,27),(141,236,1),(142,237,17),(143,238,4),(144,240,1),(145,241,28),(146,242,27),(147,243,4),(148,244,1),(149,247,1),(150,249,1),(151,250,1),(152,251,4),(153,253,1),(154,254,1),(155,256,4),(156,258,20),(157,263,1),(158,265,1),(159,269,14),(160,272,4),(161,273,29),(162,276,4),(163,283,30),(164,284,14),(165,286,4),(166,290,1),(167,292,1),(168,296,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,2),(2,8,4),(3,9,2),(4,10,4),(5,11,2),(6,12,4),(7,13,2),(8,14,4),(9,23,2),(10,24,4),(11,25,2),(12,26,4),(13,38,2),(14,39,4),(15,63,2),(16,64,2),(17,65,4),(18,67,4),(19,68,2),(20,71,2),(21,72,4),(22,73,4),(23,74,2),(24,76,4),(25,77,2),(26,80,4),(27,82,2),(28,84,4),(29,90,2),(30,93,4),(31,106,2),(32,109,4),(33,111,2),(34,114,4),(35,123,2),(36,127,4),(37,172,6),(38,208,2),(39,209,2),(40,211,4),(41,212,4),(42,214,2),(43,217,4),(44,220,2),(45,221,2),(46,223,4),(47,226,4),(48,228,2),(49,233,4),(50,236,2),(51,240,4),(52,244,2),(53,247,4),(54,250,2),(55,249,2),(56,253,4),(57,254,4),(58,263,2),(59,265,4),(60,290,2),(61,292,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/ilmfwrwal/qlehunarugttdgvj/RetroDefenceLite'),(2,5,'com/pintu_zqmn/GameService'),(3,6,'com/pintu_zqmn/GameInfo'),(4,15,'com/pintu_zqmn/PintuActivity'),(5,16,'com/pintu_zqmn/GameService'),(6,17,'com/pintu_zqmn/PintuActivity'),(7,20,'com/pintu_zqmn/GameService'),(8,21,'com/pintu_zqmn/PintuActivity'),(9,22,'com/pintu_zqmn/GameAlertDialog'),(10,29,'com/pintu_zqmn/PintuActivity'),(11,30,'com/pintu_zqmn/GameService'),(12,31,'com/pintu_zqmn/GameService'),(13,35,'com/pintu_zqmn/GameService'),(14,36,'com/pintu_zqmn/GameService'),(15,37,'com/pintu_zqmn/GameService'),(16,41,'com/pintu_zqmn/GameService'),(17,42,'com/pintu_zqmn/PintuActivity'),(18,44,'com/fbbwallpaper/GameService'),(19,45,'com/pintu_zqmn/GameInfo'),(20,46,'com/fbbwallpaper/GameService'),(21,50,'com/m_dgmnbz/Myhall'),(22,51,'com/fbbwallpaper/qimg/ImageTestActivity'),(23,54,'com/cars/GameInfo'),(24,52,'com/fbbwallpaper/GameAlertDialog'),(25,55,'com/m_dgmnbz/GameService'),(26,53,'com/RWflWQAsh/nptRkgSMHBLrV'),(27,57,'com/m_dgmnbz/image/ImageTestActivity'),(28,56,'com/cars/Myhall'),(29,59,'com/RWflWQAsh/PiPsOpDhF'),(30,61,'com/m_dgmnbz/Myhall'),(31,70,'com/cars/GameInfo'),(32,75,'com/cars/GameInfo'),(33,78,'com/fbbwallpaper/GameService'),(34,79,'com/cars/qimg/ImageTestActivity'),(35,81,'com/m_dgmnbz/Myhall'),(36,83,'com/fbbwallpaper/Myhall'),(37,85,'com/cars/Myhall'),(38,87,'com/m_dgmnbz/GameService'),(39,86,'com/fbbwallpaper/GameInfo'),(40,88,'vjsfpa/dosdgt/LoadingActivity'),(41,89,'com/cars/GameService'),(42,91,'com/RWflWQAsh/PiPsOpDhF'),(43,92,'com/fbbwallpaper/GameService'),(44,95,'com/fbbwallpaper/GameService'),(45,96,'com/m_dgmnbz/GameService'),(46,97,'vjsfpa/dosdgt/LoadingActivity'),(47,101,'com/RWflWQAsh/PiPsOpDhF'),(48,100,'com/fbbwallpaper/GameService'),(49,99,'com/m_dgmnbz/Myhall'),(50,102,'com/cars/Myhall'),(51,103,'com/fbbwallpaper/GameService'),(52,105,'vjsfpa/dosdgt/LoadingActivity'),(53,107,'com/fbbwallpaper/GameInfo'),(54,112,'com/fbbwallpaper/qimg/ImageTestActivity'),(55,113,'com/m_dgmnbz/GameService'),(56,115,'com/wEiuAV/EfhCdluTkvoEsa'),(57,116,'com/fbbwallpaper/Myhall'),(58,118,'com/RWflWQAsh/inAtSlmlhD'),(59,122,'com/fbbwallpaper/GameService'),(60,121,'com/m_dgmnbz/Myhall'),(61,124,'com/fbbwallpaper/GameService'),(62,120,'com/wEiuAV/QGaMmrUhd'),(63,126,'com/RWflWQAsh/PiPsOpDhF'),(64,125,'com/m_dgmnbz/GameInfo'),(65,128,'com/fbbwallpaper/Myhall'),(66,129,'com/m_dgmnbz/GameService'),(67,130,'com/cars/GameService'),(68,131,'com/wEiuAV/EfhCdluTkvoEsa'),(69,134,'com/cars/GameService'),(70,135,'com/RWflWQAsh/PiPsOpDhF'),(71,136,'com/cars/GameService'),(72,137,'com/fbbwallpaper/GameService'),(73,138,'com/cars/Myhall'),(74,140,'com/RWflWQAsh/frHJrGhbNqd'),(75,143,'com/cars/GameInfo'),(76,145,'com/fbbwallpaper/Myhall'),(77,144,'com/m_dgmnbz/GameInfo'),(78,147,'com/fbbwallpaper/GameService'),(79,148,'com/cars/qimg/ImageTestActivity'),(80,150,'com/m_dgmnbz/Myhall'),(81,151,'com/fbbwallpaper/GameService'),(82,155,'com/fbbwallpaper/GameInfo'),(83,163,'com/RWflWQAsh/PiPsOpDhF'),(84,161,'com/m_dgmnbz/GameInfo'),(85,165,'com/cars/Myhall'),(86,167,'com/m_dgmnbz/GameService'),(87,170,'com/fbbwallpaper/GameService'),(88,169,'com/cars/GameService'),(89,173,'com/m_dgmnbz/GameInfo'),(90,174,'com/cars/GameService'),(91,178,'com/cars/GameService'),(92,177,'com/RWflWQAsh/nptRkgSMHBLrV'),(93,180,'com/m_dgmnbz/GameService'),(94,182,'net/dincbib/wokdorl/sigwtipkdni/MyMainActivity'),(95,184,'com/m_dgmnbz/GameInfo'),(96,183,'com/fbbwallpaper/GameInfo'),(97,186,'com/cars/GameInfo'),(98,190,'com/cars/Myhall'),(99,189,'com/m_dgmnbz/GameAlertDialog'),(100,194,'com/RWflWQAsh/PiPsOpDhF'),(101,195,'com/cars/Myhall'),(102,196,'com/m_dgmnbz/Myhall'),(103,198,'com/fbbwallpaper/GameService'),(104,199,'com/m_dgmnbz/GameService'),(105,200,'net/dincbib/wokdorl/sigwtipkdni/MyMainActivity'),(106,201,'com/cars/Myhall'),(107,203,'com/m_dgmnbz/GameService'),(108,202,'com/fbbwallpaper/GameInfo'),(109,205,'com/cars/GameService'),(110,207,'com/m_dgmnbz/GameInfo'),(111,215,'com/fbbwallpaper/Myhall'),(112,219,'com/fbbwallpaper/GameService'),(113,224,'com/cars/GameService'),(114,229,'com/cars/GameService'),(115,230,'com/m_dgmnbz/GameService'),(116,231,'com/fbbwallpaper/GameService'),(117,235,'com/cars/GameService'),(118,237,'com/m_dgmnbz/GameService'),(119,239,'com/RWflWQAsh/PiPsOpDhF'),(120,241,'com/m_dgmnbz/GameService'),(121,242,'com/cars/GameService'),(122,246,'com/cars/Myhall'),(123,245,'com/m_dgmnbz/GameInfo'),(124,248,'com/fbbwallpaper/Myhall'),(125,252,'com/m_dgmnbz/GameInfo'),(126,255,'com/fbbwallpaper/GameInfo'),(127,257,'com/RWflWQAsh/PiPsOpDhF'),(128,258,'com/m_dgmnbz/GameService'),(129,261,'com/wEiuAV/BDoWuFdqIfmVo'),(130,260,'com/cars/GameInfo'),(131,262,'com/m_dgmnbz/GameService'),(132,259,'com/fbbwallpaper/GameInfo'),(133,268,'net/dincbib/wokdorl/sigwtipkdni/MyMainActivity'),(134,264,'com/cars/Myhall'),(135,266,'com/m_dgmnbz/Myhall'),(136,267,'com/fbbwallpaper/Myhall'),(137,270,'com/wEiuAV/BDoWuFdqIfmVo'),(138,269,'com/cars/GameService'),(139,271,'com/fbbwallpaper/GameService'),(140,273,'com/cars/GameService'),(141,274,'net/dincbib/wokdorl/sigwtipkdni/MyMainActivity'),(142,275,'com/fbbwallpaper/Myhall'),(143,277,'com/cars/GameService'),(144,279,'com/m_dgmnbz/image/ImageTestActivity'),(145,278,'com/fbbwallpaper/Myhall'),(146,280,'com/cars/GameService'),(147,282,'com/cars/Myhall'),(148,283,'com/m_dgmnbz/GameService'),(149,281,'com/fbbwallpaper/Myhall'),(150,284,'com/m_dgmnbz/GameService'),(151,285,'com/cars/GameService'),(152,288,'com/cars/GameInfo'),(153,287,'com/m_dgmnbz/Myhall'),(154,289,'com/fbbwallpaper/GameInfo'),(155,291,'com/m_dgmnbz/Myhall'),(156,293,'com/m_dgmnbz/GameService'),(157,294,'com/cars/GameInfo'),(158,295,'com/cars/GameAlertDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,4,3),(4,18,4),(5,19,5),(6,27,6),(7,28,7),(8,32,8),(9,33,9),(10,40,10),(11,43,11),(12,47,12),(13,48,13),(14,58,14),(15,60,15),(16,62,16),(17,66,17),(18,69,18),(19,94,19),(20,98,20),(21,104,21),(22,108,22),(23,117,23),(24,119,24),(25,132,25),(26,141,26),(27,139,27),(28,142,28),(29,146,29),(30,149,30),(31,153,31),(32,152,32),(33,154,33),(34,158,34),(35,156,35),(36,157,36),(37,159,37),(38,160,38),(39,162,39),(40,164,40),(41,166,41),(42,168,42),(43,171,43),(44,175,44),(45,176,45),(46,179,46),(47,181,47),(48,185,48),(49,187,49),(50,188,50),(51,191,51),(52,192,52),(53,193,53),(54,197,54),(55,204,55),(56,206,56),(57,210,57),(58,213,58),(59,216,59),(60,218,60),(61,222,61),(62,225,62),(63,227,63),(64,232,64),(65,234,65),(66,238,66),(67,243,67),(68,251,68),(69,256,69),(70,272,70),(71,276,71),(72,286,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'game'),(2,6,'fromtype'),(3,22,'title'),(4,22,'btn_txt'),(5,22,'need_adb_flag'),(6,22,'cont'),(7,22,'close_flag'),(8,45,'id'),(9,45,'from_alert'),(10,45,'detail_flag'),(11,52,'title'),(12,52,'btn_txt'),(13,52,'need_adb_flag'),(14,52,'cont'),(15,53,'game'),(16,52,'close_flag'),(17,53,'fromtype'),(18,56,'title'),(19,56,'nextclassid'),(20,56,'clicked'),(21,61,'clicked'),(22,70,'title'),(23,75,'title'),(24,81,'clicked'),(25,83,'clicked'),(26,85,'clicked'),(27,86,'title'),(28,86,'game'),(29,86,'fromtype'),(30,99,'nextclassid'),(31,99,'clicked'),(32,102,'clicked'),(33,107,'title'),(34,107,'game'),(35,107,'fromtype'),(36,116,'clicked'),(37,118,'title'),(38,118,'btn_txt'),(39,118,'need_adb_flag'),(40,118,'cont'),(41,118,'close_flag'),(42,120,'apkVersion'),(43,120,'apkURL'),(44,121,'title'),(45,120,'apkInfo'),(46,121,'nextclassid'),(47,120,'packageName'),(48,121,'clicked'),(49,120,'apkSoftID'),(50,120,'apkTitle'),(51,120,'iconURL'),(52,120,'apkSize'),(53,120,'imageURL'),(54,125,'game'),(55,125,'fromtype'),(56,128,'clicked'),(57,138,'clicked'),(58,140,'popurl'),(59,140,'poptitle'),(60,144,'game'),(61,144,'fromtype'),(62,150,'clicked'),(63,155,'game'),(64,155,'fromtype'),(65,161,'title'),(66,161,'game'),(67,165,'title'),(68,161,'fromtype'),(69,165,'nextclassid'),(70,165,'clicked'),(71,173,'game'),(72,173,'fromtype'),(73,177,'id'),(74,177,'from_alert'),(75,177,'detail_flag'),(76,183,'game'),(77,184,'game'),(78,183,'fromtype'),(79,184,'fromtype'),(80,189,'title'),(81,189,'btn_txt'),(82,189,'need_adb_flag'),(83,189,'cont'),(84,189,'close_flag'),(85,195,'nextclassid'),(86,195,'clicked'),(87,196,'clicked'),(88,202,'game'),(89,202,'fromtype'),(90,207,'title'),(91,207,'game'),(92,207,'fromtype'),(93,215,'clicked'),(94,245,'id'),(95,245,'from_alert'),(96,245,'detail_flag'),(97,248,'nextclassid'),(98,248,'clicked'),(99,252,'title'),(100,252,'game'),(101,252,'fromtype'),(102,255,'id'),(103,255,'from_alert'),(104,255,'detail_flag'),(105,259,'title'),(106,260,'title'),(107,259,'game'),(108,259,'fromtype'),(109,264,'title'),(110,264,'nextclassid'),(111,266,'title'),(112,264,'clicked'),(113,267,'title'),(114,266,'nextclassid'),(115,266,'clicked'),(116,267,'nextclassid'),(117,267,'clicked'),(118,278,'title'),(119,278,'nextclassid'),(120,278,'clicked'),(121,281,'title'),(122,281,'nextclassid'),(123,282,'clicked'),(124,281,'clicked'),(125,287,'title'),(126,287,'nextclassid'),(127,287,'clicked'),(128,289,'game'),(129,289,'fromtype'),(130,294,'id'),(131,294,'from_alert'),(132,294,'detail_flag'),(133,295,'title'),(134,295,'btn_txt'),(135,295,'need_adb_flag'),(136,295,'cont'),(137,295,'close_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,2),(6,7,1),(7,8,1),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,1),(16,17,1),(17,18,1),(18,19,3),(19,20,1),(20,21,1),(21,22,3),(22,24,1),(23,25,4),(24,26,1),(25,27,1),(26,28,1),(27,29,1),(28,31,1),(29,32,2),(30,33,3),(31,34,2),(32,35,1),(33,36,1),(34,37,1),(35,38,1),(36,39,1),(37,40,1),(38,41,2),(39,42,1),(40,43,5),(41,44,1),(42,45,6),(43,46,2),(44,46,5),(45,47,7),(46,48,9),(47,49,9),(48,50,21),(49,51,7),(50,52,9),(51,53,5),(52,54,7),(53,55,9),(54,56,7),(55,57,7),(56,58,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,4,2),(4,7,2),(5,21,2),(6,25,1),(7,25,3),(8,26,2),(9,28,2),(10,31,2),(11,35,2),(12,36,2),(13,37,2),(14,39,2),(15,44,2),(16,47,5),(17,48,5),(18,49,5),(19,51,5),(20,52,5),(21,54,5),(22,55,5),(23,56,5),(24,57,5),(25,58,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,25,'net.sunflat.android.papimissile',NULL,NULL,NULL,NULL,NULL),(2,47,'package',NULL,NULL,NULL,NULL,NULL),(3,48,'package',NULL,NULL,NULL,NULL,NULL),(4,49,'package',NULL,NULL,NULL,NULL,NULL),(5,51,'package',NULL,NULL,NULL,NULL,NULL),(6,52,'package',NULL,NULL,NULL,NULL,NULL),(7,54,'package',NULL,NULL,NULL,NULL,NULL),(8,55,'package',NULL,NULL,NULL,NULL,NULL),(9,56,'package',NULL,NULL,NULL,NULL,NULL),(10,57,'package',NULL,NULL,NULL,NULL,NULL),(11,58,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,3,'application','vnd.android.package-archive'),(3,4,'application','vnd.android.package-archive'),(4,18,'application','vnd.android.package-archive'),(5,19,'application','vnd.android.package-archive'),(6,27,'application','vnd.android.package-archive'),(7,28,'application','vnd.android.package-archive'),(8,40,'application','vnd.android.package-archive'),(9,47,'application','vnd.android.package-archive'),(10,48,'application','vnd.android.package-archive'),(11,98,'application','vnd.android.package-archive'),(12,139,'application','vnd.android.package-archive'),(13,142,'application','vnd.android.package-archive'),(14,146,'application','vnd.android.package-archive'),(15,149,'application','vnd.android.package-archive'),(16,152,'application','vnd.android.package-archive'),(17,156,'application','vnd.android.package-archive'),(18,157,'application','vnd.android.package-archive'),(19,176,'application','vnd.android.package-archive'),(20,179,'application','vnd.android.package-archive'),(21,185,'application','vnd.android.package-archive'),(22,188,'application','vnd.android.package-archive'),(23,191,'(.*)','(.*)'),(24,192,'application','vnd.android.package-archive'),(25,204,'application','vnd.android.package-archive'),(26,206,'application','vnd.android.package-archive'),(27,216,'application','vnd.android.package-archive'),(28,218,'application','vnd.android.package-archive'),(29,256,'application','vnd.android.package-archive'),(30,272,'application','vnd.android.package-archive'),(31,286,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ilmfwrwal.qlehunarugttdgvj'),(2,5,'com.pintu_zqmn'),(3,6,'com.pintu_zqmn'),(4,7,'(.*)'),(5,8,''),(6,9,''),(7,10,'(.*)'),(8,11,'(.*)'),(9,12,''),(10,13,''),(11,14,'(.*)'),(12,15,'com.pintu_zqmn'),(13,16,'com.pintu_zqmn'),(14,17,'com.pintu_zqmn'),(15,20,'com.pintu_zqmn'),(16,21,'com.pintu_zqmn'),(17,22,'com.pintu_zqmn'),(18,23,'(.*)'),(19,24,''),(20,25,''),(21,26,'(.*)'),(22,29,'com.pintu_zqmn'),(23,30,'com.pintu_zqmn'),(24,31,'com.pintu_zqmn'),(25,35,'com.pintu_zqmn'),(26,36,'com.pintu_zqmn'),(27,37,'com.pintu_zqmn'),(28,38,'(.*)'),(29,39,'(.*)'),(30,41,'com.pintu_zqmn'),(31,42,'com.pintu_zqmn'),(32,44,'com.fbbwallpaper'),(33,45,'com.pintu_zqmn'),(34,46,'com.fbbwallpaper'),(35,50,'com.m_dgmnbz'),(36,51,'com.fbbwallpaper'),(37,54,'com.cars'),(38,52,'com.fbbwallpaper'),(39,55,'com.m_dgmnbz'),(40,53,'vjsfpa.dosdgt'),(41,57,'com.m_dgmnbz'),(42,56,'com.cars'),(43,59,'vjsfpa.dosdgt'),(44,61,'com.m_dgmnbz'),(45,63,'(.*)'),(46,64,'(.*)'),(47,65,''),(48,67,''),(49,68,''),(50,70,'com.cars'),(51,71,''),(52,72,'(.*)'),(53,73,'(.*)'),(54,74,'(.*)'),(55,75,'com.cars'),(56,76,'(.*)'),(57,77,'(.*)'),(58,78,'com.fbbwallpaper'),(59,79,'com.cars'),(60,80,''),(61,82,''),(62,81,'com.m_dgmnbz'),(63,83,'com.fbbwallpaper'),(64,84,'(.*)'),(65,85,'com.cars'),(66,87,'com.m_dgmnbz'),(67,86,'com.fbbwallpaper'),(68,88,'vjsfpa.dosdgt'),(69,89,'com.cars'),(70,90,'NULL-CONSTANT'),(71,91,'vjsfpa.dosdgt'),(72,92,'com.fbbwallpaper'),(73,93,'NULL-CONSTANT'),(74,95,'com.fbbwallpaper'),(75,96,'com.m_dgmnbz'),(76,97,'vjsfpa.dosdgt'),(77,101,'vjsfpa.dosdgt'),(78,100,'com.fbbwallpaper'),(79,99,'com.m_dgmnbz'),(80,102,'com.cars'),(81,103,'com.fbbwallpaper'),(82,105,'vjsfpa.dosdgt'),(83,106,'(.*)'),(84,107,'com.fbbwallpaper'),(85,109,''),(86,111,''),(87,112,'com.fbbwallpaper'),(88,113,'com.m_dgmnbz'),(89,114,'(.*)'),(90,115,'net.dincbib.wokdorl.sigwtipkdni'),(91,116,'com.fbbwallpaper'),(92,118,'vjsfpa.dosdgt'),(93,122,'com.fbbwallpaper'),(94,121,'com.m_dgmnbz'),(95,123,'NULL-CONSTANT'),(96,124,'com.fbbwallpaper'),(97,120,'net.dincbib.wokdorl.sigwtipkdni'),(98,126,'vjsfpa.dosdgt'),(99,125,'com.m_dgmnbz'),(100,127,'NULL-CONSTANT'),(101,128,'com.fbbwallpaper'),(102,129,'com.m_dgmnbz'),(103,130,'com.cars'),(104,131,'net.dincbib.wokdorl.sigwtipkdni'),(105,134,'com.cars'),(106,135,'vjsfpa.dosdgt'),(107,136,'com.cars'),(108,137,'com.fbbwallpaper'),(109,138,'com.cars'),(110,140,'vjsfpa.dosdgt'),(111,143,'com.cars'),(112,145,'com.fbbwallpaper'),(113,144,'com.m_dgmnbz'),(114,147,'com.fbbwallpaper'),(115,148,'com.cars'),(116,150,'com.m_dgmnbz'),(117,151,'com.fbbwallpaper'),(118,155,'com.fbbwallpaper'),(119,163,'vjsfpa.dosdgt'),(120,161,'com.m_dgmnbz'),(121,165,'com.cars'),(122,167,'com.m_dgmnbz'),(123,170,'com.fbbwallpaper'),(124,169,'com.cars'),(125,173,'com.m_dgmnbz'),(126,174,'com.cars'),(127,178,'com.cars'),(128,177,'vjsfpa.dosdgt'),(129,180,'com.m_dgmnbz'),(130,182,'net.dincbib.wokdorl.sigwtipkdni'),(131,184,'com.m_dgmnbz'),(132,183,'com.fbbwallpaper'),(133,186,'com.cars'),(134,190,'com.cars'),(135,189,'com.m_dgmnbz'),(136,194,'vjsfpa.dosdgt'),(137,195,'com.cars'),(138,196,'com.m_dgmnbz'),(139,198,'com.fbbwallpaper'),(140,199,'com.m_dgmnbz'),(141,200,'net.dincbib.wokdorl.sigwtipkdni'),(142,201,'com.cars'),(143,203,'com.m_dgmnbz'),(144,202,'com.fbbwallpaper'),(145,205,'com.cars'),(146,208,'NULL-CONSTANT'),(147,209,'(.*)'),(148,207,'com.m_dgmnbz'),(149,211,'NULL-CONSTANT'),(150,212,'(.*)'),(151,214,'(.*)'),(152,215,'com.fbbwallpaper'),(153,217,''),(154,219,'com.fbbwallpaper'),(155,220,''),(156,221,'(.*)'),(157,224,'com.cars'),(158,223,'(.*)'),(159,226,''),(160,229,'com.cars'),(161,228,''),(162,230,'com.m_dgmnbz'),(163,231,'com.fbbwallpaper'),(164,233,'(.*)'),(165,235,'com.cars'),(166,236,'(.*)'),(167,237,'com.m_dgmnbz'),(168,239,'vjsfpa.dosdgt'),(169,240,'(.*)'),(170,241,'com.m_dgmnbz'),(171,242,'com.cars'),(172,244,'(.*)'),(173,246,'com.cars'),(174,247,''),(175,245,'com.m_dgmnbz'),(176,249,'(.*)'),(177,250,''),(178,248,'com.fbbwallpaper'),(179,253,'(.*)'),(180,254,'(.*)'),(181,252,'com.m_dgmnbz'),(182,255,'com.fbbwallpaper'),(183,257,'vjsfpa.dosdgt'),(184,258,'com.m_dgmnbz'),(185,261,'net.dincbib.wokdorl.sigwtipkdni'),(186,260,'com.cars'),(187,259,'com.fbbwallpaper'),(188,262,'com.m_dgmnbz'),(189,263,'(.*)'),(190,265,'(.*)'),(191,268,'net.dincbib.wokdorl.sigwtipkdni'),(192,264,'com.cars'),(193,266,'com.m_dgmnbz'),(194,267,'com.fbbwallpaper'),(195,270,'net.dincbib.wokdorl.sigwtipkdni'),(196,269,'com.cars'),(197,271,'com.fbbwallpaper'),(198,273,'com.cars'),(199,274,'net.dincbib.wokdorl.sigwtipkdni'),(200,275,'com.fbbwallpaper'),(201,277,'com.cars'),(202,279,'com.m_dgmnbz'),(203,278,'com.fbbwallpaper'),(204,280,'com.cars'),(205,282,'com.cars'),(206,283,'com.m_dgmnbz'),(207,281,'com.fbbwallpaper'),(208,284,'com.m_dgmnbz'),(209,285,'com.cars'),(210,288,'com.cars'),(211,287,'com.m_dgmnbz'),(212,289,'com.fbbwallpaper'),(213,290,'(.*)'),(214,291,'com.m_dgmnbz'),(215,292,'(.*)'),(216,293,'com.m_dgmnbz'),(217,294,'com.cars'),(218,295,'com.cars');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,7,0),(6,6,0),(7,9,0),(8,16,0),(9,19,0),(10,20,0),(11,21,0),(12,22,0),(13,23,0),(14,25,0),(15,27,0),(16,29,0),(17,32,0),(18,33,0),(19,34,0),(20,35,0),(21,37,0),(22,38,0),(23,40,0),(24,39,0),(25,40,0),(26,41,0),(27,42,0),(28,44,0),(29,45,0),(30,49,0),(31,48,0),(32,51,0),(33,55,0),(34,58,0),(35,59,0),(36,60,0),(37,61,0),(38,66,0),(39,67,0),(40,70,0),(41,72,0),(42,74,0),(43,73,0),(44,77,0),(45,78,0),(46,79,0),(47,6,0),(48,6,0),(49,79,0),(50,80,0),(51,79,0),(52,58,0),(53,81,0),(54,72,0),(55,51,0),(56,51,0),(57,58,0),(58,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,7,1,0),(12,7,1,0),(13,7,1,0),(14,7,1,0),(15,8,0,0),(16,9,0,0),(17,10,0,0),(18,11,1,0),(19,11,1,0),(20,12,0,0),(21,13,0,0),(22,14,0,0),(23,15,1,0),(24,15,1,0),(25,15,1,0),(26,15,1,0),(27,16,1,0),(28,16,1,0),(29,17,0,0),(30,18,0,0),(31,18,0,0),(32,19,1,0),(33,19,1,0),(34,20,1,0),(35,21,0,0),(36,22,0,0),(37,23,0,0),(38,24,1,0),(39,24,1,0),(40,25,1,0),(41,26,0,0),(42,27,0,0),(43,28,1,0),(44,29,0,0),(45,30,0,0),(46,29,0,0),(47,31,1,0),(48,31,1,0),(49,32,1,0),(50,33,0,0),(51,34,0,0),(52,35,0,0),(53,36,0,0),(54,37,0,0),(55,38,0,0),(56,39,0,0),(57,40,0,0),(58,41,1,0),(59,42,0,0),(60,41,1,0),(61,43,0,0),(62,44,1,0),(63,45,1,0),(64,46,1,0),(65,45,1,0),(66,47,1,0),(67,46,1,0),(68,45,1,0),(69,47,1,0),(70,48,0,0),(71,46,1,0),(72,45,1,0),(73,46,1,0),(74,49,1,0),(75,50,0,0),(76,49,1,0),(77,51,1,0),(78,52,0,0),(79,53,0,0),(80,51,1,0),(81,54,0,0),(82,51,1,0),(83,55,0,0),(84,51,1,0),(85,56,0,0),(86,57,0,0),(87,58,0,0),(88,59,0,0),(89,60,0,0),(90,61,1,0),(91,63,0,0),(92,62,0,0),(93,61,1,0),(94,64,1,0),(95,62,0,0),(96,65,0,0),(97,66,0,0),(98,67,1,0),(99,69,0,0),(100,68,0,0),(101,70,0,0),(102,71,0,0),(103,68,0,0),(104,72,1,0),(105,73,0,0),(106,74,1,0),(107,75,0,0),(108,76,1,0),(109,74,1,0),(110,77,1,0),(111,74,1,0),(112,79,0,0),(113,78,0,0),(114,74,1,0),(115,80,0,0),(116,82,0,0),(117,81,1,0),(118,83,0,0),(119,84,1,0),(120,85,0,0),(121,87,0,0),(122,86,0,0),(123,88,1,0),(124,89,0,0),(125,90,0,0),(126,91,0,0),(127,88,1,0),(128,92,0,0),(129,93,0,0),(130,94,0,0),(131,95,0,0),(132,96,1,0),(133,97,1,0),(134,98,0,0),(135,99,0,0),(136,98,0,0),(137,100,0,0),(138,101,0,0),(139,102,1,0),(140,103,0,0),(141,104,1,0),(142,105,1,0),(143,106,0,0),(144,108,0,0),(145,107,0,0),(146,109,1,0),(147,110,0,0),(148,111,0,0),(149,109,1,0),(150,113,0,0),(151,114,0,0),(152,115,1,0),(153,116,1,0),(154,117,1,0),(155,119,0,0),(156,118,1,0),(157,115,1,0),(158,116,1,0),(159,117,1,0),(160,116,1,0),(161,121,0,0),(162,120,1,0),(163,122,0,0),(164,116,1,0),(165,123,0,0),(166,116,1,0),(167,124,0,0),(168,116,1,0),(169,125,0,0),(170,126,0,0),(171,116,1,0),(172,127,1,0),(173,128,0,0),(174,125,0,0),(175,116,1,0),(176,129,1,0),(177,130,0,0),(178,131,0,0),(179,129,1,0),(180,132,0,0),(181,134,1,0),(182,133,0,0),(183,135,0,0),(184,136,0,0),(185,137,1,0),(186,138,0,0),(187,139,1,0),(188,137,1,0),(189,140,0,0),(190,141,0,0),(191,139,1,0),(192,142,1,0),(193,139,1,0),(194,143,0,0),(195,144,0,0),(196,146,0,0),(197,145,1,0),(198,148,0,0),(199,147,0,0),(200,149,0,0),(201,150,0,0),(202,152,0,0),(203,147,0,0),(204,151,1,0),(205,154,0,0),(206,151,1,0),(207,156,0,0),(208,155,1,0),(209,157,1,0),(210,158,1,0),(211,155,1,0),(212,157,1,0),(213,158,1,0),(214,159,1,0),(215,160,0,0),(216,161,1,0),(217,159,1,0),(218,162,1,0),(219,163,0,0),(220,159,1,0),(221,164,1,0),(222,165,1,0),(223,159,1,0),(224,166,0,0),(225,167,1,0),(226,164,1,0),(227,165,1,0),(228,164,1,0),(229,168,0,0),(230,169,0,0),(231,170,0,0),(232,165,1,0),(233,164,1,0),(234,165,1,0),(235,171,0,0),(236,172,1,0),(237,173,0,0),(238,165,1,0),(239,174,0,0),(240,172,1,0),(241,173,0,0),(242,175,0,0),(243,165,1,0),(244,176,1,0),(245,177,0,0),(246,178,0,0),(247,176,1,0),(248,179,0,0),(249,180,1,0),(250,176,1,0),(251,181,1,0),(252,182,0,0),(253,176,1,0),(254,180,1,0),(255,183,0,0),(256,184,1,0),(257,185,0,0),(258,186,0,0),(259,187,0,0),(260,188,0,0),(261,189,0,0),(262,190,0,0),(263,191,1,0),(264,192,0,0),(265,191,1,0),(266,193,0,0),(267,194,0,0),(268,195,0,0),(269,196,0,0),(270,197,0,0),(271,199,0,0),(272,198,1,0),(273,196,0,0),(274,200,0,0),(275,201,0,0),(276,202,1,0),(277,203,0,0),(278,204,0,0),(279,205,0,0),(280,206,0,0),(281,207,0,0),(282,209,0,0),(283,208,0,0),(284,208,0,0),(285,210,0,0),(286,211,1,0),(287,212,0,0),(288,213,0,0),(289,214,0,0),(290,215,1,0),(291,216,0,0),(292,215,1,0),(293,217,0,0),(294,218,0,0),(295,219,0,0),(296,220,1,0);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(9,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.SET_WALLPAPER'),(14,'android.permission.SYSTEM_ALERT_WINDOW'),(12,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'http://www.sunflat.net/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&fv=9',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://www.sunflat.net.testsrv:38087/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&lid=(.*)&sn=NULL-CONSTANT&fv=9',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'http://www.sunflat.net/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&lid=(.*)&fv=9',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'http://www.sunflat.net.testsrv:38087/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&lid=(.*)&fv=9',NULL,NULL,NULL),(41,NULL,NULL,'http://www.sunflat.net/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&lid=(.*)&sn=NULL-CONSTANT&fv=9',NULL,NULL,NULL),(42,NULL,NULL,'http://www.sunflat.net/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&sn=NULL-CONSTANT&fv=9',NULL,NULL,NULL),(43,NULL,NULL,'http://www.sunflat.net.testsrv:38087/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&fv=9',NULL,NULL,NULL),(44,NULL,NULL,'http://www.sunflat.net.testsrv:38087/android/cmd/jump?gid=(.*)&v=(.*)&htid=(.*)&arid=(.*)&dt=(.*)&tgt=(.*)&ha=(.*)&tt=(.*)&tn=(.*)&sn=NULL-CONSTANT&fv=9',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'',NULL,NULL,NULL),(65,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'file://',NULL,NULL,NULL),(70,NULL,NULL,'file://',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://',NULL,NULL,NULL);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,3,1),(13,2,5),(14,3,2),(15,2,6),(16,3,3),(17,2,9),(18,3,4),(19,2,11),(20,3,5),(21,2,12),(22,3,6),(23,4,1),(24,3,7),(25,4,2),(26,3,8),(27,4,3),(28,3,9),(29,4,4),(30,3,10),(31,4,5),(32,3,13),(33,4,6),(34,4,7),(35,4,8),(36,4,9),(37,4,10),(38,4,13),(39,5,1),(40,5,2),(41,5,3),(42,5,4),(43,5,5),(44,5,6),(45,5,7),(46,5,8),(47,5,9),(48,5,10),(49,5,13),(50,6,1),(51,6,2),(52,6,5),(53,6,6),(54,6,9),(55,6,11),(56,6,14),(57,6,15),(58,7,1),(59,7,2),(60,7,3),(61,7,5),(62,7,6),(63,7,9),(64,7,10),(65,7,11),(66,7,15);
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

-- Dump completed on 2015-10-09  0:39:34
