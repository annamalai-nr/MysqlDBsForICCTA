-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_434
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
INSERT INTO `ActionStrings` VALUES (15,'.ImageTestActivity'),(22,'.Myhall'),(11,'.Web'),(12,'.oFoIHU6'),(28,'.oFoIHU7'),(23,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(5,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'com.android_osxgmtmn.ImageTestActivity'),(18,'com.android_osxgmtmn.oFoIHU1'),(13,'com.android_osxgmtmn.oFoIHU6'),(30,'com.android_osxgmtmn.oFoIHU7'),(9,'com.m_mnryzlsndc.GameBootReceiver'),(17,'com.m_mnryzlsndc.ImageTestActivity'),(24,'com.m_mnryzlsndc.Myhall'),(29,'com.m_mnryzlsndc.Web'),(19,'com.modelsshow.GameBootReceiver'),(25,'com.modelsshow.ImageTestActivity'),(26,'com.modelsshow.Myhall'),(27,'com.modelsshow.Web'),(7,'com.supermengshow.GameBootReceiver'),(20,'com.supermengshow.ImageTestActivity'),(21,'com.supermengshow.Myhall'),(10,'com.supermengshow.Web');
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
INSERT INTO `Applications` VALUES (1,'com.nooervkv.uerkjsfq',10026),(2,'com.supermengshow',1016),(3,'com.m_mnryzlsndc',10019),(4,'com.modelsshow',1015),(5,'com.android_osxgmtmn',10022),(6,'com.eqgddnqcj.gidrmkip_mpii',10032),(7,'com.vuor.narht.mrbngnesud',10023);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.joygames.doudizhu.DoudizhuActivity'),(2,1,'com.google.ads.AdActivity'),(3,1,'com.EjwUP.ToLfMCuwehGNtc'),(4,1,'com.EjwUP.ukfJcLptQgJjml'),(5,1,'com.nd.dianjin.activity.OfferAppActivity'),(6,1,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(7,2,'com.supermengshow.Myhall'),(8,2,'com.supermengshow.Web'),(9,2,'com.supermengshow.HomeActivity'),(10,2,'com.supermengshow.SortActivity1'),(11,2,'com.supermengshow.SortActivity2'),(12,2,'com.supermengshow.SearchActivity'),(13,2,'com.supermengshow.ManagerActivity'),(14,3,'com.m_mnryzlsndc.Myhall'),(15,2,'com.supermengshow.GameInfo'),(16,3,'com.m_mnryzlsndc.Web'),(17,4,'com.modelsshow.Myhall'),(18,3,'com.m_mnryzlsndc.HomeActivity'),(19,5,'com.android_osxgmtmn.oFoIHU7'),(20,4,'com.modelsshow.Web'),(21,2,'com.supermengshow.TableClass'),(22,6,'com.eqgddnqcj.gidrmkip_mpii.TitleActivity'),(23,3,'com.m_mnryzlsndc.SortActivity1'),(24,5,'com.android_osxgmtmn.oFoIHU6'),(25,4,'com.modelsshow.HomeActivity'),(26,3,'com.m_mnryzlsndc.SortActivity2'),(27,6,'com.eqgddnqcj.gidrmkip_mpii.GameActivity'),(28,5,'com.android_osxgmtmn.oFoIHU13'),(29,4,'com.modelsshow.SortActivity1'),(30,2,'com.supermengshow.GameAlertDialog'),(31,6,'com.eqgddnqcj.gidrmkip_mpii.RewardActivity'),(32,4,'com.modelsshow.SortActivity2'),(33,2,'com.supermengshow.DevelopmentSettings'),(34,3,'com.m_mnryzlsndc.SearchActivity'),(35,6,'com.eqgddnqcj.gidrmkip_mpii.AchievementActivity'),(36,5,'com.android_osxgmtmn.oFoIHU3'),(37,6,'com.eqgddnqcj.gidrmkip_mpii.CreditsActivity'),(38,5,'com.android_osxgmtmn.oFoIHU9'),(39,4,'com.modelsshow.SearchActivity'),(40,3,'com.m_mnryzlsndc.ManagerActivity'),(41,2,'com.supermengshow.qimg.ImageTestActivity'),(42,6,'com.eqgddnqcj.gidrmkip_mpii.LevelSelectActivity'),(43,5,'com.android_osxgmtmn.oFoIHU10'),(44,6,'com.eqgddnqcj.gidrmkip_mpii.MixerSelectActivity'),(45,4,'com.modelsshow.ManagerActivity'),(46,3,'com.m_mnryzlsndc.GameInfo'),(47,6,'com.eqgddnqcj.gidrmkip_mpii.DebugActivity'),(48,5,'com.android_osxgmtmn.oFoIHU11'),(49,2,'com.supermengshow.qimg.ADactivity'),(50,6,'com.eqgddnqcj.gidrmkip_mpii.OptionsActivity'),(51,4,'com.modelsshow.GameInfo'),(52,2,'com.supermengshow.GameService'),(53,3,'com.m_mnryzlsndc.TableClass'),(54,6,'com.RqvhiBDmO.ujQQLoKHkeFa'),(55,5,'com.android_osxgmtmn.oFoIHU4'),(56,4,'com.modelsshow.TableClass'),(57,3,'com.m_mnryzlsndc.GameAlertDialog'),(58,2,'com.supermengshow.GameBootReceiver'),(59,5,'com.android_osxgmtmn.oFoIHU8'),(60,6,'com.RqvhiBDmO.IQCLFEHFOSUMb'),(61,3,'com.m_mnryzlsndc.DevelopmentSettings'),(62,4,'com.modelsshow.GameAlertDialog'),(63,6,'com.RqvhiBDmO.nubFUsvB'),(64,5,'com.android_osxgmtmn.oFoIHU5'),(65,4,'com.modelsshow.DevelopmentSettings'),(66,6,'com.RqvhiBDmO.jcEFEUtvmEBl'),(67,3,'com.m_mnryzlsndc.image.ImageTestActivity'),(68,6,'com.RqvhiBDmO.GHJklgGLsNQr'),(69,4,'com.modelsshow.qimg.ImageTestActivity'),(70,5,'com.android_osxgmtmn.oFoIHU12'),(71,6,'com.RqvhiBDmO.CiBEpgWfr'),(72,3,'com.m_mnryzlsndc.image.ADactivity'),(73,6,'com.RqvhiBDmO.userPermissionReceiver'),(74,5,'com.android_osxgmtmn.DevelopmentSettings'),(75,3,'com.m_mnryzlsndc.GameService'),(76,4,'com.modelsshow.qimg.ADactivity'),(77,4,'com.modelsshow.GameService'),(78,5,'com.android_osxgmtmn.image.ImageTestActivity'),(79,3,'com.m_mnryzlsndc.GameBootReceiver'),(80,4,'com.modelsshow.GameBootReceiver'),(81,5,'com.android_osxgmtmn.image.ADactivity'),(82,5,'com.android_osxgmtmn.oFoIHU2'),(83,5,'com.android_osxgmtmn.oFoIHU1'),(84,1,'com.joygames.doudizhu.t'),(85,1,'com.nd.dianjin.DianJinPlatform'),(86,2,'ad'),(87,3,'bm'),(88,4,'s'),(89,4,'bo'),(90,4,'ac'),(91,3,'i'),(92,2,'bi'),(93,5,'cg'),(94,2,'eb'),(95,4,'bx'),(96,2,'af'),(97,3,'dt'),(98,4,'aw'),(99,5,'be'),(100,4,'bz'),(101,2,'au'),(102,3,'bs'),(103,5,'n'),(104,4,'by'),(105,2,'ca'),(106,3,'bw'),(107,5,'bi'),(108,6,'com.RqvhiBDmO.ad'),(109,6,'com.RqvhiBDmO.ab'),(110,2,'n'),(111,4,'v'),(112,3,'dl'),(113,5,'cb'),(114,2,'aw'),(115,5,'p'),(116,3,'dr'),(117,5,'q'),(118,4,'g'),(119,6,'com.RqvhiBDmO.o'),(120,2,'ae'),(121,3,'ba'),(122,4,'ad'),(123,6,'com.eqgddnqcj.gidrmkip_mpii.BatteryLevel'),(124,5,'cp'),(125,2,'dp'),(126,4,'an'),(127,3,'df'),(128,7,'com.vuor.narht.mrbngnesud.AgileBuddySplash'),(129,7,'com.vuor.narht.mrbngnesud.AgileBuddyActivity'),(130,7,'com.vuor.narht.mrbngnesud.Prefs'),(131,7,'com.vuor.narht.mrbngnesud.GlobalRankingActivity'),(132,7,'com.vuor.narht.mrbngnesud.TipsActivity'),(133,7,'cn.domob.android.ads.DomobActivity'),(134,7,'com.voPcWhqT.pVplbvLoM'),(135,2,'cz'),(136,7,'com.voPcWhqT.vUpmInLcTApNQ'),(137,7,'com.vuor.narht.mrbngnesud.ScoreUpgrateService'),(138,3,'co'),(139,3,'c'),(140,5,'df'),(141,5,'ac'),(142,7,'cn.domob.android.ads.be'),(143,7,'cn.domob.android.ads.am'),(144,7,'cn.domob.android.ads.ae'),(145,7,'cn.domob.android.ads.b'),(146,7,'cn.domob.android.ads.DomobActionReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'soft_id'),(2,7,'service_channel'),(3,15,'title'),(4,34,'status'),(5,40,'icon'),(6,13,'package_name'),(7,13,'icon'),(8,8,'service_channel'),(9,13,'status'),(10,13,'completed'),(11,7,'nextclassid'),(12,45,'filepath'),(13,40,'url'),(14,40,'app_name'),(15,78,'service_channel'),(16,48,'version_code'),(17,13,'app_name'),(18,11,'status'),(19,41,'service_channel'),(20,13,'url'),(21,43,'nextclassid'),(22,51,'status'),(23,19,'service_channel'),(24,63,'imageURL'),(25,14,'nextclassid'),(26,32,'nextclassid'),(27,40,'status'),(28,40,'package_name'),(29,13,'total'),(30,16,'service_channel'),(31,45,'icon'),(32,45,'completed'),(33,55,'app_name'),(34,63,'apkSize'),(35,63,'apkVersion'),(36,39,'package_name'),(37,68,'fileURL'),(38,45,'app_name'),(39,45,'soft_id'),(40,15,'from_alert'),(41,13,'filepath'),(42,30,'btn_txt'),(43,40,'soft_id'),(44,63,'iconURL'),(45,67,'service_channel'),(46,30,'content'),(47,12,'version_code'),(48,55,'soft_id'),(49,43,'status'),(50,45,'package_name'),(51,51,'from_alert'),(52,69,'service_channel'),(53,62,'url'),(54,30,'url'),(55,48,'package_name'),(56,43,'package_name'),(57,59,'title'),(58,59,'from_alert'),(59,63,'packageName'),(60,55,'filepath'),(61,20,'service_channel'),(62,24,'service_channel'),(63,57,'url'),(64,46,'status'),(65,68,'packageName'),(66,40,'total'),(67,63,'apkTitle'),(68,26,'nextclassid'),(69,14,'service_channel'),(70,46,'title'),(71,11,'nextclassid'),(72,40,'filepath'),(73,15,'filepath'),(74,45,'total'),(75,62,'btn_txt'),(76,30,'title'),(77,63,'apkSoftID'),(78,12,'package_name'),(79,82,'service_channel'),(80,17,'service_channel'),(81,26,'status'),(82,51,'title'),(83,63,'detailFlag'),(84,71,'fileName'),(85,63,'apkURL'),(86,40,'completed'),(87,63,'apkInfo'),(88,52,'service_channel'),(89,34,'package_name'),(90,46,'from_table'),(91,45,'status'),(92,57,'version_code'),(93,55,'total'),(94,34,'version_code'),(95,28,'from'),(96,45,'url'),(97,20,'nextclassid'),(98,55,'url'),(99,48,'status'),(100,55,'completed'),(101,55,'icon'),(102,28,'isDirectFromTable'),(103,77,'service_channel'),(104,50,'CALLER'),(105,12,'status'),(106,60,'np_app_key'),(107,66,'np_app_key'),(108,63,'np_app_key'),(109,54,'np_app_key'),(110,57,'apk_url'),(111,71,'np_app_key'),(112,32,'status'),(113,70,'content'),(114,55,'package_name'),(115,59,'status'),(116,59,'fromtype'),(117,71,'fileURL'),(118,17,'nextclassid'),(119,46,'filepath'),(120,51,'from_table'),(121,59,'filepath'),(122,55,'status'),(123,62,'title'),(124,57,'package_name'),(125,46,'from_alert'),(126,11,'package_name'),(127,57,'content'),(128,70,'apk_url'),(129,70,'version_code'),(130,59,'game'),(131,57,'title'),(132,39,'version_code'),(133,59,'from_table'),(134,70,'package_name'),(135,26,'package_name'),(136,70,'btn_txt'),(137,75,'service_channel'),(138,57,'btn_txt'),(139,15,'from_table'),(140,62,'content'),(141,46,'fromtype'),(142,15,'status'),(143,70,'fromtable'),(144,51,'filepath'),(145,32,'package_name'),(146,39,'status'),(147,46,'game'),(148,70,'url'),(149,70,'title'),(150,92,'DOMOB_ALLOW_LOCATION'),(151,90,'appId'),(152,90,'actType'),(153,90,'appName'),(154,92,'DOMOB_PID'),(155,92,'DOMOB_TEST_MODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'s',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',1,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'s',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,123,'r',1,NULL,NULL),(85,128,'a',1,NULL,NULL),(86,129,'a',0,NULL,NULL),(87,130,'a',0,NULL,NULL),(88,131,'a',0,NULL,NULL),(89,132,'a',0,NULL,NULL),(90,133,'a',0,NULL,NULL),(91,134,'a',0,NULL,NULL),(92,136,'a',1,NULL,NULL),(93,137,'s',0,NULL,NULL),(94,146,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,1),(4,4,4),(5,5,4),(6,6,11),(7,7,58),(8,8,15),(9,9,79),(10,10,14),(11,11,8),(12,12,19),(13,13,79),(14,14,12),(15,16,18),(16,15,60),(17,15,22),(18,17,45),(19,18,24),(20,19,60),(21,19,63),(22,20,41),(23,21,67),(24,22,17),(25,23,40),(26,24,24),(27,25,30),(28,25,21),(29,26,50),(30,26,60),(31,27,59),(32,28,49),(33,29,27),(34,30,32),(35,31,18),(36,32,35),(37,32,60),(38,33,11),(39,34,26),(40,35,70),(41,36,22),(42,36,60),(43,37,17),(44,38,11),(45,39,53),(46,40,47),(47,40,60),(48,41,69),(49,42,43),(50,43,30),(51,43,21),(52,44,71),(53,45,57),(54,46,25),(55,47,7),(56,48,43),(57,49,14),(58,50,58),(59,51,80),(60,52,60),(61,53,36),(62,54,57),(63,55,7),(64,57,22),(65,57,60),(66,56,32),(67,58,78),(68,59,60),(69,60,13),(70,61,17),(71,63,60),(72,62,67),(73,64,43),(74,65,62),(75,66,9),(76,67,73),(77,68,67),(78,69,39),(79,70,54),(80,71,9),(81,72,76),(82,73,27),(83,74,83),(84,75,30),(85,76,18),(86,77,32),(87,78,60),(88,78,50),(89,79,80),(90,80,41),(91,81,55),(92,82,31),(93,82,60),(94,83,14),(95,84,51),(96,85,60),(97,85,42),(98,86,53),(99,87,55),(100,88,7),(101,89,62),(102,90,83),(103,91,57),(104,92,54),(105,93,58),(106,94,17),(107,95,59),(108,96,60),(109,96,22),(110,97,7),(111,99,32),(112,98,20),(113,100,26),(114,101,54),(115,102,60),(116,102,22),(117,103,20),(118,104,51),(119,105,49),(120,106,14),(121,107,63),(122,107,60),(123,108,64),(124,109,7),(125,110,26),(126,111,37),(127,111,60),(128,112,15),(129,113,28),(130,113,64),(131,113,70),(132,114,54),(133,115,80),(134,116,26),(135,117,20),(136,118,68),(137,119,12),(138,120,46),(139,121,60),(140,121,22),(141,122,51),(142,123,30),(143,124,20),(144,125,60),(145,126,62),(146,127,37),(147,127,60),(148,128,59),(149,129,15),(150,130,31),(151,130,60),(152,131,36),(153,132,7),(154,133,46),(155,134,17),(156,135,60),(157,136,9),(158,137,20),(159,138,19),(160,139,81),(161,140,26),(162,141,15),(163,142,56),(164,143,57),(165,144,60),(166,144,47),(167,145,32),(168,146,55),(169,147,79),(170,148,35),(171,148,60),(172,149,45),(173,150,36),(174,151,34),(175,152,63),(176,154,11),(177,153,25),(178,155,36),(179,156,45),(180,157,14),(181,158,9),(182,159,24),(183,160,51),(184,161,34),(185,162,8),(186,163,56),(187,165,21),(188,164,40),(189,166,70),(190,166,28),(191,166,64),(192,167,21),(193,168,76),(194,169,70),(195,170,72),(196,171,17),(197,172,30),(198,173,16),(199,174,59),(200,175,39),(201,176,70),(202,178,51),(203,177,46),(204,179,49),(205,180,51),(206,181,18),(207,182,7),(208,183,36),(209,184,15),(210,185,14),(211,186,69),(212,187,59),(213,188,41),(214,189,25),(215,190,16),(216,191,8),(217,192,69),(218,193,40),(219,194,30),(220,195,48),(221,196,17),(222,197,9),(223,198,26),(224,199,13),(225,200,72),(226,201,64),(227,202,19),(228,203,13),(229,204,53),(230,204,57),(231,205,36),(232,206,11),(233,208,18),(234,207,25),(235,209,9),(236,210,43),(237,211,32),(238,212,18),(239,213,15),(240,214,11),(241,215,78),(242,216,76),(243,217,46),(244,218,83),(245,219,25),(246,220,14),(247,221,46),(248,222,70),(249,223,62),(250,224,43),(251,225,72),(252,226,20),(253,227,16),(254,228,56),(255,229,20),(256,230,25),(257,231,81),(258,232,57),(259,232,53),(260,233,56),(261,234,78),(262,235,43),(263,236,81),(264,237,48),(265,238,91),(266,239,87),(267,240,85),(268,241,85),(269,242,92),(270,243,92),(271,244,92),(272,245,92),(273,246,91),(274,247,89);
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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.EjwUP.ToLfMCuwehGNtc: void a()>',3,'a',NULL),(2,3,'<com.EjwUP.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(3,84,'<com.joygames.doudizhu.t: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(4,85,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(5,4,'<com.EjwUP.ukfJcLptQgJjml: void a()>',3,'a',NULL),(6,86,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(7,58,'<com.supermengshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(8,15,'<com.supermengshow.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(9,79,'<com.m_mnryzlsndc.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(10,87,'<bm: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(11,8,'<com.supermengshow.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(12,88,'<s: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(13,79,'<com.m_mnryzlsndc.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(14,12,'<com.supermengshow.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(15,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void onClick(android.view.View)>',26,'a',NULL),(16,18,'<com.m_mnryzlsndc.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(17,89,'<bo: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(18,24,'<com.android_osxgmtmn.oFoIHU6: void onCreate(android.os.Bundle)>',21,'s',NULL),(19,63,'<com.RqvhiBDmO.nubFUsvB: void a(com.RqvhiBDmO.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(20,41,'<com.supermengshow.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(21,67,'<com.m_mnryzlsndc.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(22,90,'<ac: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(23,91,'<i: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(24,24,'<com.android_osxgmtmn.oFoIHU6: void onCreate(android.os.Bundle)>',25,'s',NULL),(25,92,'<bi: void a(int,boolean)>',10,'s',NULL),(26,50,'<com.eqgddnqcj.gidrmkip_mpii.OptionsActivity: void returnToCaller()>',5,'a',NULL),(27,93,'<cg: void onClick(android.view.View)>',218,'a',NULL),(28,94,'<eb: void onClick(android.view.View)>',6,'a',NULL),(29,27,'<com.eqgddnqcj.gidrmkip_mpii.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(30,95,'<bx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(31,18,'<com.m_mnryzlsndc.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(32,35,'<com.eqgddnqcj.gidrmkip_mpii.AchievementActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(33,96,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(34,97,'<dt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(35,70,'<com.android_osxgmtmn.oFoIHU12: void onClick(android.view.View)>',84,'a',NULL),(36,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void onClick(android.view.View)>',33,'a',NULL),(37,90,'<ac: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(38,96,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(39,53,'<com.m_mnryzlsndc.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(40,47,'<com.eqgddnqcj.gidrmkip_mpii.DebugActivity: void onClick(android.view.View)>',23,'a',NULL),(41,98,'<aw: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(42,99,'<be: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(43,92,'<bi: void a(int,boolean)>',29,'a',NULL),(44,71,'<com.RqvhiBDmO.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(45,57,'<com.m_mnryzlsndc.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(46,100,'<bz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(47,101,'<au: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(48,99,'<be: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(49,102,'<bs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(50,58,'<com.supermengshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(51,80,'<com.modelsshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(52,60,'<com.RqvhiBDmO.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(53,103,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(54,57,'<com.m_mnryzlsndc.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(55,7,'<com.supermengshow.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(56,104,'<by: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(57,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void newGame()>',6,'a',NULL),(58,78,'<com.android_osxgmtmn.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(59,60,'<com.RqvhiBDmO.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(60,105,'<ca: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(61,90,'<ac: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(62,106,'<bw: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(63,60,'<com.RqvhiBDmO.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(64,107,'<bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(65,62,'<com.modelsshow.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(66,9,'<com.supermengshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(67,108,'<com.RqvhiBDmO.ad: void run()>',25,'s',NULL),(68,67,'<com.m_mnryzlsndc.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(69,39,'<com.modelsshow.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(70,109,'<com.RqvhiBDmO.ab: void run()>',8,'s',NULL),(71,110,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(72,111,'<v: void onClick(android.view.View)>',6,'a',NULL),(73,27,'<com.eqgddnqcj.gidrmkip_mpii.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(74,83,'<com.android_osxgmtmn.oFoIHU1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(75,30,'<com.supermengshow.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(76,112,'<dl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(77,32,'<com.modelsshow.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(78,50,'<com.eqgddnqcj.gidrmkip_mpii.OptionsActivity: void returnToCaller()>',10,'a',NULL),(79,80,'<com.modelsshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(80,41,'<com.supermengshow.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(81,113,'<cb: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(82,31,'<com.eqgddnqcj.gidrmkip_mpii.RewardActivity: void onClick(android.view.View)>',6,'a',NULL),(83,87,'<bm: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(84,51,'<com.modelsshow.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(85,42,'<com.eqgddnqcj.gidrmkip_mpii.LevelSelectActivity: void switchActivity(android.content.Intent)>',18,'a',NULL),(86,53,'<com.m_mnryzlsndc.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(87,113,'<cb: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(88,114,'<aw: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(89,62,'<com.modelsshow.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(90,83,'<com.android_osxgmtmn.oFoIHU1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(91,57,'<com.m_mnryzlsndc.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(92,54,'<com.RqvhiBDmO.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(93,58,'<com.supermengshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(94,17,'<com.modelsshow.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(95,59,'<com.android_osxgmtmn.oFoIHU8: void onCreate(android.os.Bundle)>',108,'a',NULL),(96,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void onClick(android.view.View)>',19,'a',NULL),(97,7,'<com.supermengshow.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(98,115,'<p: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(99,104,'<by: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(100,116,'<dr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(101,54,'<com.RqvhiBDmO.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(102,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void resumeGame()>',5,'a',NULL),(103,117,'<q: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(104,118,'<g: void onClick(android.view.View)>',224,'a',NULL),(105,49,'<com.supermengshow.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(106,87,'<bm: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(107,119,'<com.RqvhiBDmO.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(108,64,'<com.android_osxgmtmn.oFoIHU5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(109,101,'<au: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(110,97,'<dt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(111,37,'<com.eqgddnqcj.gidrmkip_mpii.CreditsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(112,120,'<ae: void onClick(android.view.View)>',205,'a',NULL),(113,28,'<com.android_osxgmtmn.oFoIHU13: void a(int,boolean)>',10,'s',NULL),(114,54,'<com.RqvhiBDmO.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(115,80,'<com.modelsshow.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(116,26,'<com.m_mnryzlsndc.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(117,115,'<p: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(118,68,'<com.RqvhiBDmO.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(119,12,'<com.supermengshow.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(120,121,'<ba: void onClick(android.view.View)>',239,'a',NULL),(121,22,'<com.eqgddnqcj.gidrmkip_mpii.TitleActivity: void onClick(android.view.View)>',40,'a',NULL),(122,51,'<com.modelsshow.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(123,30,'<com.supermengshow.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(124,115,'<p: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(125,60,'<com.RqvhiBDmO.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(126,62,'<com.modelsshow.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(127,37,'<com.eqgddnqcj.gidrmkip_mpii.CreditsActivity: void onClick(android.view.View)>',6,'a',NULL),(128,59,'<com.android_osxgmtmn.oFoIHU8: void onCreate(android.os.Bundle)>',113,'a',NULL),(129,15,'<com.supermengshow.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(130,31,'<com.eqgddnqcj.gidrmkip_mpii.RewardActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(131,36,'<com.android_osxgmtmn.oFoIHU3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(132,101,'<au: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(133,121,'<ba: void onClick(android.view.View)>',218,'a',NULL),(134,122,'<ad: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(135,60,'<com.RqvhiBDmO.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(136,9,'<com.supermengshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(137,19,'<com.android_osxgmtmn.oFoIHU7: void onCreate(android.os.Bundle)>',103,'s',NULL),(138,20,'<com.modelsshow.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(139,81,'<com.android_osxgmtmn.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(140,26,'<com.m_mnryzlsndc.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(141,120,'<ae: void onClick(android.view.View)>',224,'a',NULL),(142,56,'<com.modelsshow.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(143,57,'<com.m_mnryzlsndc.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(144,47,'<com.eqgddnqcj.gidrmkip_mpii.DebugActivity: void onClick(android.view.View)>',12,'a',NULL),(145,32,'<com.modelsshow.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(146,55,'<com.android_osxgmtmn.oFoIHU4: void onCreate(android.os.Bundle)>',50,'s',NULL),(147,79,'<com.m_mnryzlsndc.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(148,35,'<com.eqgddnqcj.gidrmkip_mpii.AchievementActivity: void onClick(android.view.View)>',5,'a',NULL),(149,89,'<bo: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(150,36,'<com.android_osxgmtmn.oFoIHU3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(151,34,'<com.m_mnryzlsndc.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(152,63,'<com.RqvhiBDmO.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(153,25,'<com.modelsshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(154,11,'<com.supermengshow.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(155,36,'<com.android_osxgmtmn.oFoIHU3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(156,45,'<com.modelsshow.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(157,87,'<bm: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(158,110,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(159,124,'<cp: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(160,51,'<com.modelsshow.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(161,34,'<com.m_mnryzlsndc.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(162,125,'<dp: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(163,126,'<an: void a(int,boolean)>',29,'a',NULL),(164,40,'<com.m_mnryzlsndc.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(165,21,'<com.supermengshow.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(166,28,'<com.android_osxgmtmn.oFoIHU13: void a(int,boolean)>',63,'a',NULL),(167,21,'<com.supermengshow.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(168,76,'<com.modelsshow.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(169,70,'<com.android_osxgmtmn.oFoIHU12: void onClick(android.view.View)>',53,'a',NULL),(170,72,'<com.m_mnryzlsndc.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(171,90,'<ac: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(172,30,'<com.supermengshow.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(173,127,'<df: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(174,59,'<com.android_osxgmtmn.oFoIHU8: void onCreate(android.os.Bundle)>',25,'s',NULL),(175,39,'<com.modelsshow.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(176,70,'<com.android_osxgmtmn.oFoIHU12: void onClick(android.view.View)>',66,'a',NULL),(177,46,'<com.m_mnryzlsndc.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(178,51,'<com.modelsshow.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(179,49,'<com.supermengshow.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(180,118,'<g: void onClick(android.view.View)>',205,'a',NULL),(181,112,'<dl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(182,101,'<au: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(183,103,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(184,15,'<com.supermengshow.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(185,14,'<com.m_mnryzlsndc.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(186,69,'<com.modelsshow.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(187,93,'<cg: void onClick(android.view.View)>',239,'a',NULL),(188,135,'<cz: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(189,100,'<bz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(190,16,'<com.m_mnryzlsndc.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(191,8,'<com.supermengshow.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(192,69,'<com.modelsshow.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(193,91,'<i: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(194,30,'<com.supermengshow.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(195,48,'<com.android_osxgmtmn.oFoIHU11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(196,17,'<com.modelsshow.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(197,110,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(198,97,'<dt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(199,105,'<ca: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(200,138,'<co: void onClick(android.view.View)>',6,'a',NULL),(201,64,'<com.android_osxgmtmn.oFoIHU5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(202,20,'<com.modelsshow.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(203,13,'<com.supermengshow.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(204,139,'<c: void a(int,boolean)>',57,'a',NULL),(205,103,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(206,11,'<com.supermengshow.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(207,25,'<com.modelsshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(208,18,'<com.m_mnryzlsndc.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(209,9,'<com.supermengshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(210,43,'<com.android_osxgmtmn.oFoIHU10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(211,104,'<by: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(212,112,'<dl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(213,15,'<com.supermengshow.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(214,96,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(215,140,'<df: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(216,76,'<com.modelsshow.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(217,46,'<com.m_mnryzlsndc.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(218,83,'<com.android_osxgmtmn.oFoIHU1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(219,100,'<bz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(220,14,'<com.m_mnryzlsndc.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(221,46,'<com.m_mnryzlsndc.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(222,70,'<com.android_osxgmtmn.oFoIHU12: void onClick(android.view.View)>',75,'a',NULL),(223,62,'<com.modelsshow.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(224,43,'<com.android_osxgmtmn.oFoIHU10: void onCreate(android.os.Bundle)>',13,'s',NULL),(225,72,'<com.m_mnryzlsndc.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(226,19,'<com.android_osxgmtmn.oFoIHU7: void onCreate(android.os.Bundle)>',98,'s',NULL),(227,16,'<com.m_mnryzlsndc.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(228,56,'<com.modelsshow.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(229,115,'<p: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(230,25,'<com.modelsshow.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(231,81,'<com.android_osxgmtmn.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(232,139,'<c: void a(int,boolean)>',10,'s',NULL),(233,126,'<an: void a(int,boolean)>',10,'s',NULL),(234,78,'<com.android_osxgmtmn.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(235,99,'<be: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(236,141,'<ac: void onClick(android.view.View)>',6,'a',NULL),(237,48,'<com.android_osxgmtmn.oFoIHU11: void onCreate(android.os.Bundle)>',14,'s',NULL),(238,134,'<com.voPcWhqT.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(239,130,'<com.vuor.narht.mrbngnesud.Prefs: void onClick(android.view.View)>',43,'a',NULL),(240,128,'<com.vuor.narht.mrbngnesud.AgileBuddySplash: void onCreate(android.os.Bundle)>',37,'s',NULL),(241,128,'<com.vuor.narht.mrbngnesud.AgileBuddySplash: void onClick(android.view.View)>',6,'a',NULL),(242,142,'<cn.domob.android.ads.be: void onClick(android.content.DialogInterface,int)>',8,'a',0),(243,143,'<cn.domob.android.ads.am: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(244,144,'<cn.domob.android.ads.ae: void p(cn.domob.android.ads.ae)>',6,'a',NULL),(245,145,'<cn.domob.android.ads.b: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(246,134,'<com.voPcWhqT.pVplbvLoM: void a()>',3,'a',NULL),(247,132,'<com.vuor.narht.mrbngnesud.TipsActivity: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,6),(3,7,7),(4,9,9),(5,11,10),(6,12,6),(7,13,11),(8,18,1),(9,19,12),(10,20,1),(11,21,1),(12,24,13),(13,25,1),(14,28,14),(15,31,6),(16,35,6),(17,36,6),(18,39,6),(19,43,6),(20,46,6),(21,53,6),(22,54,6),(23,55,7),(24,58,6),(25,59,6),(26,63,15),(27,64,6),(28,66,1),(29,68,16),(30,69,1),(31,71,6),(32,73,3),(33,76,17),(34,79,15),(35,83,18),(36,84,3),(37,88,15),(38,89,19),(39,90,1),(40,93,20),(41,94,1),(42,97,1),(43,98,14),(44,100,6),(45,101,6),(46,102,1),(47,104,6),(48,105,18),(49,112,21),(50,114,6),(51,116,22),(52,119,1),(53,118,6),(54,120,6),(55,122,1),(56,123,6),(57,124,1),(58,126,1),(59,128,1),(60,129,1),(61,131,6),(62,134,19),(63,136,6),(64,138,6),(65,140,1),(66,143,6),(67,144,1),(68,148,6),(69,149,1),(70,152,1),(71,157,6),(72,158,6),(73,160,6),(74,167,1),(75,168,1),(76,169,3),(77,173,1),(78,174,9),(79,177,1),(80,176,14),(81,180,1),(82,183,1),(83,184,6),(84,187,6),(85,188,6),(86,191,6),(87,196,1),(88,199,6),(89,200,1),(90,203,6),(91,206,6),(92,209,6),(93,211,6),(94,214,6),(95,217,22),(96,219,24),(97,220,1),(98,221,6),(99,222,6),(100,223,1),(101,226,1),(102,227,25),(103,228,1),(104,229,1),(105,231,15),(106,232,1),(107,236,26),(108,237,22),(109,238,14),(110,241,27),(111,244,11),(112,248,6),(113,249,6),(114,252,6),(115,255,6),(116,256,6),(117,262,3),(118,266,28),(119,267,29),(120,268,1),(121,269,30),(122,270,11),(123,271,1),(124,274,6),(125,281,6),(126,287,6),(127,290,6),(128,292,6),(129,293,6),(130,294,6),(131,295,6),(132,296,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,18,1),(2,20,1),(3,21,3),(4,25,3),(5,66,1),(6,69,3),(7,90,1),(8,94,3),(9,97,1),(10,102,3),(11,119,1),(12,122,3),(13,124,1),(14,126,1),(15,128,3),(16,129,3),(17,140,1),(18,144,3),(19,149,1),(20,152,3),(21,167,1),(22,168,3),(23,173,1),(24,177,3),(25,180,1),(26,183,3),(27,196,1),(28,200,3),(29,220,1),(30,223,3),(31,226,1),(32,228,1),(33,229,3),(34,232,3),(35,268,1),(36,271,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/joygames/doudizhu/DoudizhuActivity'),(2,4,'com/nd/dianjin/activity/OfferAppActivity'),(3,5,'com/joygames/doudizhu/DoudizhuActivity'),(4,6,'com/supermengshow/Myhall'),(5,7,'com/supermengshow/GameService'),(6,8,'com/supermengshow/Myhall'),(7,9,'com/m_mnryzlsndc/GameService'),(8,10,'com/m_mnryzlsndc/Myhall'),(9,11,'com/supermengshow/GameService'),(10,13,'com/supermengshow/GameService'),(11,14,'com/m_mnryzlsndc/GameService'),(12,15,'com/supermengshow/GameService'),(13,17,'com/eqgddnqcj/gidrmkip_mpii/AchievementActivity'),(14,16,'com/m_mnryzlsndc/GameInfo'),(15,19,'com/android_osxgmtmn/oFoIHU2'),(16,22,'com/supermengshow/GameService'),(17,23,'com/m_mnryzlsndc/GameService'),(18,24,'com/android_osxgmtmn/oFoIHU2'),(19,27,'com/android_osxgmtmn/oFoIHU2'),(20,26,'com/modelsshow/Myhall'),(21,29,'com/supermengshow/GameService'),(22,30,'com/eqgddnqcj/gidrmkip_mpii/LevelSelectActivity'),(23,32,'com/supermengshow/qimg/ImageTestActivity'),(24,33,'com/eqgddnqcj/gidrmkip_mpii/OptionsActivity'),(25,34,'com/modelsshow/Myhall'),(26,37,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(27,38,'com/supermengshow/Myhall'),(28,41,'com/eqgddnqcj/gidrmkip_mpii/CreditsActivity'),(29,42,'com/modelsshow/Myhall'),(30,40,'com/android_osxgmtmn/oFoIHU12'),(31,44,'com/m_mnryzlsndc/GameInfo'),(32,45,'com/eqgddnqcj/gidrmkip_mpii/GameActivity'),(33,48,'com/supermengshow/Myhall'),(34,47,'com/android_osxgmtmn/oFoIHU7'),(35,50,'com/m_mnryzlsndc/GameAlertDialog'),(36,52,'com/supermengshow/Myhall'),(37,51,'com/modelsshow/Myhall'),(38,49,'com/RqvhiBDmO/nubFUsvB'),(39,56,'com/modelsshow/GameService'),(40,55,'com/supermengshow/GameService'),(41,57,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(42,60,'com/supermengshow/GameService'),(43,62,'com/eqgddnqcj/gidrmkip_mpii/LevelSelectActivity'),(44,61,'com/modelsshow/GameInfo'),(45,63,'com/android_osxgmtmn/oFoIHU2'),(46,65,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(47,67,'com/modelsshow/Myhall'),(48,68,'com/android_osxgmtmn/oFoIHU2'),(49,70,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(50,74,'com/supermengshow/GameInfo'),(51,75,'com/RqvhiBDmO/jcEFEUtvmEBl'),(52,72,'com/android_osxgmtmn/oFoIHU7'),(53,76,'com/m_mnryzlsndc/GameService'),(54,77,'com/modelsshow/GameService'),(55,78,'com/RqvhiBDmO/jcEFEUtvmEBl'),(56,79,'com/m_mnryzlsndc/GameService'),(57,80,'com/supermengshow/GameInfo'),(58,81,'com/modelsshow/qimg/ImageTestActivity'),(59,82,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(60,83,'com/android_osxgmtmn/oFoIHU2'),(61,86,'com/modelsshow/GameService'),(62,85,'com/m_mnryzlsndc/Myhall'),(63,87,'com/eqgddnqcj/gidrmkip_mpii/GameActivity'),(64,88,'com/supermengshow/GameService'),(65,89,'com/modelsshow/GameService'),(66,92,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(67,91,'com/m_mnryzlsndc/Myhall'),(68,93,'com/supermengshow/GameService'),(69,95,'com/modelsshow/Myhall'),(70,96,'com/eqgddnqcj/gidrmkip_mpii/OptionsActivity'),(71,99,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(72,103,'com/eqgddnqcj/gidrmkip_mpii/GameActivity'),(73,105,'com/android_osxgmtmn/oFoIHU2'),(74,107,'com/RqvhiBDmO/IQCLFEHFOSUMb'),(75,108,'com/supermengshow/GameService'),(76,109,'com/modelsshow/GameService'),(77,106,'com/m_mnryzlsndc/GameInfo'),(78,110,'com/android_osxgmtmn/oFoIHU7'),(79,111,'com/eqgddnqcj/gidrmkip_mpii/RewardActivity'),(80,112,'com/supermengshow/GameService'),(81,113,'com/android_osxgmtmn/oFoIHU7'),(82,116,'com/supermengshow/GameService'),(83,115,'com/m_mnryzlsndc/Myhall'),(84,117,'com/eqgddnqcj/gidrmkip_mpii/GameActivity'),(85,121,'com/m_mnryzlsndc/Myhall'),(86,125,'com/supermengshow/Myhall'),(87,130,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(88,127,'com/m_mnryzlsndc/GameInfo'),(89,132,'com/android_osxgmtmn/oFoIHU2'),(90,133,'com/RqvhiBDmO/IQCLFEHFOSUMb'),(91,134,'com/modelsshow/GameService'),(92,135,'com/m_mnryzlsndc/GameInfo'),(93,137,'com/android_osxgmtmn/oFoIHU7'),(94,139,'com/supermengshow/GameInfo'),(95,141,'com/eqgddnqcj/gidrmkip_mpii/DebugActivity'),(96,142,'com/modelsshow/Myhall'),(97,145,'com/android_osxgmtmn/oFoIHU7'),(98,146,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(99,147,'com/modelsshow/GameInfo'),(100,150,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(101,151,'com/android_osxgmtmn/oFoIHU7'),(102,153,'com/supermengshow/Myhall'),(103,154,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(104,156,'com/supermengshow/Myhall'),(105,155,'com/android_osxgmtmn/oFoIHU8'),(106,159,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(107,162,'com/android_osxgmtmn/oFoIHU2'),(108,161,'com/supermengshow/Myhall'),(109,163,'com/modelsshow/GameService'),(110,165,'com/m_mnryzlsndc/GameService'),(111,166,'com/modelsshow/GameInfo'),(112,164,'com/android_osxgmtmn/oFoIHU8'),(113,170,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(114,171,'com/modelsshow/GameInfo'),(115,172,'com/android_osxgmtmn/oFoIHU2'),(116,174,'com/m_mnryzlsndc/GameService'),(117,175,'com/eqgddnqcj/gidrmkip_mpii/TitleActivity'),(118,179,'com/m_mnryzlsndc/GameService'),(119,178,'com/android_osxgmtmn/oFoIHU7'),(120,182,'com/modelsshow/GameInfo'),(121,181,'com/supermengshow/GameInfo'),(122,185,'com/modelsshow/GameService'),(123,186,'com/m_mnryzlsndc/Myhall'),(124,189,'com/modelsshow/GameService'),(125,190,'com/m_mnryzlsndc/GameInfo'),(126,192,'com/modelsshow/Myhall'),(127,193,'com/supermengshow/GameInfo'),(128,194,'com/m_mnryzlsndc/GameService'),(129,195,'com/android_osxgmtmn/image/ImageTestActivity'),(130,197,'com/modelsshow/GameInfo'),(131,198,'com/android_osxgmtmn/oFoIHU8'),(132,201,'com/modelsshow/Myhall'),(133,204,'com/android_osxgmtmn/oFoIHU2'),(134,205,'com/modelsshow/GameInfo'),(135,202,'com/supermengshow/GameAlertDialog'),(136,207,'com/modelsshow/Myhall'),(137,208,'com/m_mnryzlsndc/GameService'),(138,210,'com/supermengshow/GameInfo'),(139,212,'com/m_mnryzlsndc/GameInfo'),(140,213,'com/supermengshow/Myhall'),(141,216,'com/supermengshow/GameService'),(142,215,'com/android_osxgmtmn/oFoIHU7'),(143,217,'com/m_mnryzlsndc/GameService'),(144,218,'com/modelsshow/GameService'),(145,219,'com/m_mnryzlsndc/GameService'),(146,224,'com/m_mnryzlsndc/GameService'),(147,225,'com/supermengshow/GameService'),(148,227,'com/modelsshow/GameService'),(149,231,'com/modelsshow/GameService'),(150,230,'com/supermengshow/GameInfo'),(151,233,'com/android_osxgmtmn/oFoIHU8'),(152,236,'com/modelsshow/GameService'),(153,234,'com/supermengshow/Myhall'),(154,235,'com/m_mnryzlsndc/Myhall'),(155,237,'com/modelsshow/GameService'),(156,239,'com/m_mnryzlsndc/image/ImageTestActivity'),(157,240,'com/android_osxgmtmn/oFoIHU8'),(158,241,'com/modelsshow/GameService'),(159,242,'com/supermengshow/GameService'),(160,243,'com/m_mnryzlsndc/image/ImageTestActivity'),(161,244,'com/modelsshow/GameService'),(162,246,'com/supermengshow/GameService'),(163,245,'com/android_osxgmtmn/oFoIHU8'),(164,247,'com/m_mnryzlsndc/Myhall'),(165,250,'com/android_osxgmtmn/oFoIHU8'),(166,253,'com/supermengshow/Myhall'),(167,251,'com/modelsshow/Myhall'),(168,254,'com/supermengshow/GameInfo'),(169,257,'com/m_mnryzlsndc/Myhall'),(170,258,'com/android_osxgmtmn/oFoIHU2'),(171,259,'com/m_mnryzlsndc/GameService'),(172,260,'com/modelsshow/GameInfo'),(173,261,'com/m_mnryzlsndc/Myhall'),(174,264,'com/android_osxgmtmn/oFoIHU2'),(175,265,'com/m_mnryzlsndc/GameInfo'),(176,263,'com/modelsshow/GameAlertDialog'),(177,266,'com/android_osxgmtmn/oFoIHU2'),(178,267,'com/m_mnryzlsndc/GameService'),(179,269,'com/android_osxgmtmn/oFoIHU2'),(180,270,'com/m_mnryzlsndc/GameService'),(181,272,'com/android_osxgmtmn/oFoIHU7'),(182,273,'com/modelsshow/Myhall'),(183,275,'com/m_mnryzlsndc/GameService'),(184,276,'com/modelsshow/GameService'),(185,277,'com/android_osxgmtmn/oFoIHU2'),(186,278,'com/android_osxgmtmn/oFoIHU8'),(187,279,'com/android_osxgmtmn/image/ImageTestActivity'),(188,280,'com/android_osxgmtmn/oFoIHU2'),(189,282,'com/vuor/narht/mrbngnesud/TipsActivity'),(190,283,'com/vuor/narht/mrbngnesud/ScoreUpgrateService'),(191,285,'com/vuor/narht/mrbngnesud/TipsActivity'),(192,286,'com/vuor/narht/mrbngnesud/AgileBuddyActivity'),(193,288,'com/vuor/narht/mrbngnesud/Prefs'),(194,289,'com/vuor/narht/mrbngnesud/GlobalRankingActivity'),(195,297,'com/vuor/narht/mrbngnesud/AgileBuddySplash'),(196,298,'com/vuor/narht/mrbngnesud/AgileBuddyActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,12,3),(4,28,4),(5,31,5),(6,35,6),(7,36,7),(8,39,8),(9,43,9),(10,46,10),(11,53,11),(12,54,12),(13,58,13),(14,59,14),(15,64,15),(16,71,16),(17,98,17),(18,101,18),(19,100,19),(20,104,20),(21,114,21),(22,118,23),(23,120,22),(24,123,24),(25,131,25),(26,136,26),(27,138,27),(28,143,28),(29,148,29),(30,157,30),(31,158,31),(32,160,32),(33,176,33),(34,184,34),(35,187,35),(36,188,36),(37,191,37),(38,199,38),(39,203,39),(40,206,40),(41,209,41),(42,211,42),(43,214,43),(44,221,44),(45,222,45),(46,238,46),(47,248,47),(48,249,48),(49,252,49),(50,256,50),(51,255,51),(52,274,52),(53,281,53),(54,287,54),(55,290,55),(56,292,56),(57,293,57),(58,294,58),(59,295,59),(60,296,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'oriention'),(2,6,'title'),(3,6,'nextclassid'),(4,6,'clicked'),(5,10,'clicked'),(6,16,'game'),(7,16,'fromtype'),(8,26,'clicked'),(9,33,'CALLER'),(10,34,'title'),(11,34,'nextclassid'),(12,34,'clicked'),(13,38,'title'),(14,38,'nextclassid'),(15,38,'clicked'),(16,40,'title'),(17,40,'btn_txt'),(18,40,'need_adb_flag'),(19,40,'cont'),(20,42,'clicked'),(21,40,'close_flag'),(22,44,'game'),(23,44,'fromtype'),(24,47,'title'),(25,47,'nextclassid'),(26,47,'clicked'),(27,49,'apkVersion'),(28,50,'title'),(29,49,'apkURL'),(30,50,'btn_txt'),(31,49,'apkInfo'),(32,50,'need_adb_flag'),(33,49,'packageName'),(34,50,'cont'),(35,49,'apkSoftID'),(36,50,'close_flag'),(37,51,'title'),(38,49,'apkTitle'),(39,52,'clicked'),(40,49,'iconURL'),(41,51,'nextclassid'),(42,49,'apkSize'),(43,51,'clicked'),(44,49,'imageURL'),(45,61,'title'),(46,67,'clicked'),(47,72,'title'),(48,72,'nextclassid'),(49,72,'clicked'),(50,80,'title'),(51,85,'title'),(52,85,'nextclassid'),(53,85,'clicked'),(54,91,'clicked'),(55,96,'CALLER'),(56,106,'id'),(57,106,'from_alert'),(58,106,'detail_flag'),(59,113,'clicked'),(60,115,'title'),(61,115,'nextclassid'),(62,115,'clicked'),(63,121,'clicked'),(64,125,'clicked'),(65,127,'title'),(66,127,'game'),(67,127,'fromtype'),(68,135,'title'),(69,135,'game'),(70,135,'fromtype'),(71,137,'clicked'),(72,145,'clicked'),(73,147,'id'),(74,147,'from_table'),(75,147,'detail_flag'),(76,155,'game'),(77,156,'clicked'),(78,155,'fromtype'),(79,161,'nextclassid'),(80,161,'clicked'),(81,164,'game'),(82,164,'fromtype'),(83,171,'title'),(84,178,'nextclassid'),(85,178,'clicked'),(86,181,'title'),(87,186,'clicked'),(88,190,'game'),(89,190,'fromtype'),(90,198,'id'),(91,198,'from_alert'),(92,198,'detail_flag'),(93,201,'clicked'),(94,202,'title'),(95,202,'btn_txt'),(96,202,'need_adb_flag'),(97,202,'cont'),(98,202,'close_flag'),(99,212,'title'),(100,212,'game'),(101,212,'fromtype'),(102,213,'clicked'),(103,215,'title'),(104,215,'nextclassid'),(105,215,'clicked'),(106,230,'id'),(107,230,'from_alert'),(108,230,'detail_flag'),(109,233,'game'),(110,233,'fromtype'),(111,234,'title'),(112,235,'title'),(113,234,'nextclassid'),(114,235,'nextclassid'),(115,234,'clicked'),(116,235,'clicked'),(117,240,'game'),(118,240,'fromtype'),(119,245,'title'),(120,245,'game'),(121,245,'fromtype'),(122,247,'nextclassid'),(123,247,'clicked'),(124,250,'title'),(125,250,'game'),(126,251,'title'),(127,250,'fromtype'),(128,251,'nextclassid'),(129,251,'clicked'),(130,254,'title'),(131,260,'title'),(132,263,'title'),(133,263,'btn_txt'),(134,265,'game'),(135,263,'need_adb_flag'),(136,265,'fromtype'),(137,263,'cont'),(138,263,'close_flag'),(139,272,'clicked'),(140,273,'nextclassid'),(141,273,'clicked'),(142,278,'title'),(143,278,'game'),(144,278,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,3),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,1),(23,25,1),(24,26,1),(25,27,1),(26,28,1),(27,29,4),(28,30,3),(29,32,3),(30,31,1),(31,33,1),(32,34,1),(33,35,1),(34,36,5),(35,37,3),(36,38,1),(37,39,1),(38,40,1),(39,41,4),(40,42,4),(41,43,1),(42,44,4),(43,45,8),(44,46,2),(45,47,8),(46,48,2),(47,49,23),(48,50,8),(49,51,8),(50,53,1),(51,54,2),(52,55,2),(53,56,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,17,1),(3,23,1),(4,25,1),(5,33,1),(6,35,1),(7,38,1),(8,39,1),(9,40,1),(10,43,1),(11,45,2),(12,46,2),(13,47,2),(14,48,2),(15,50,2),(16,51,2),(17,53,1),(18,54,2),(19,55,2);
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
INSERT INTO `IFData` VALUES (1,3,'package',NULL,NULL,NULL,NULL,NULL),(2,45,'package',NULL,NULL,NULL,NULL,NULL),(3,46,'package',NULL,NULL,NULL,NULL,NULL),(4,47,'package',NULL,NULL,NULL,NULL,NULL),(5,48,'package',NULL,NULL,NULL,NULL,NULL),(6,50,'package',NULL,NULL,NULL,NULL,NULL),(7,51,'package',NULL,NULL,NULL,NULL,NULL),(8,54,'package',NULL,NULL,NULL,NULL,NULL),(9,55,'package',NULL,NULL,NULL,NULL,NULL),(10,56,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,12,'application','vnd.android.package-archive'),(3,31,'application','vnd.android.package-archive'),(4,36,'application','vnd.android.package-archive'),(5,46,'application','vnd.android.package-archive'),(6,54,'application','vnd.android.package-archive'),(7,71,'application','vnd.android.package-archive'),(8,100,'application','vnd.android.package-archive'),(9,118,'application','vnd.android.package-archive'),(10,123,'application','vnd.android.package-archive'),(11,131,'application','vnd.android.package-archive'),(12,136,'application','vnd.android.package-archive'),(13,138,'application','vnd.android.package-archive'),(14,157,'application','vnd.android.package-archive'),(15,158,'application','vnd.android.package-archive'),(16,160,'application','vnd.android.package-archive'),(17,188,'application','vnd.android.package-archive'),(18,191,'application','vnd.android.package-archive'),(19,203,'application','vnd.android.package-archive'),(20,211,'application','vnd.android.package-archive'),(21,214,'application','vnd.android.package-archive'),(22,221,'application','vnd.android.package-archive'),(23,255,'application','vnd.android.package-archive'),(24,281,'application','vnd.android.package-archive'),(25,290,'application','vnd.android.package-archive'),(26,292,'application','vnd.android.package-archive'),(27,293,'application','vnd.android.package-archive'),(28,294,'application','vnd.android.package-archive'),(29,295,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.nooervkv.uerkjsfq'),(2,4,'com.nooervkv.uerkjsfq'),(3,5,'com.nooervkv.uerkjsfq'),(4,6,'com.supermengshow'),(5,7,'com.supermengshow'),(6,8,'com.supermengshow'),(7,9,'com.m_mnryzlsndc'),(8,10,'com.m_mnryzlsndc'),(9,11,'com.supermengshow'),(10,13,'com.supermengshow'),(11,14,'com.m_mnryzlsndc'),(12,15,'com.supermengshow'),(13,17,'com.eqgddnqcj.gidrmkip_mpii'),(14,18,'NULL-CONSTANT'),(15,16,'com.m_mnryzlsndc'),(16,19,'com.android_osxgmtmn'),(17,20,'(.*)'),(18,22,'com.supermengshow'),(19,21,'NULL-CONSTANT'),(20,23,'com.m_mnryzlsndc'),(21,24,'com.android_osxgmtmn'),(22,25,'(.*)'),(23,27,'com.android_osxgmtmn'),(24,26,'com.modelsshow'),(25,29,'com.supermengshow'),(26,30,'com.eqgddnqcj.gidrmkip_mpii'),(27,32,'com.supermengshow'),(28,33,'com.eqgddnqcj.gidrmkip_mpii'),(29,34,'com.modelsshow'),(30,37,'com.eqgddnqcj.gidrmkip_mpii'),(31,38,'com.supermengshow'),(32,41,'com.eqgddnqcj.gidrmkip_mpii'),(33,42,'com.modelsshow'),(34,40,'com.android_osxgmtmn'),(35,44,'com.m_mnryzlsndc'),(36,45,'com.eqgddnqcj.gidrmkip_mpii'),(37,48,'com.supermengshow'),(38,47,'com.android_osxgmtmn'),(39,50,'com.m_mnryzlsndc'),(40,52,'com.supermengshow'),(41,51,'com.modelsshow'),(42,49,'com.eqgddnqcj.gidrmkip_mpii'),(43,56,'com.modelsshow'),(44,55,'com.supermengshow'),(45,57,'com.eqgddnqcj.gidrmkip_mpii'),(46,60,'com.supermengshow'),(47,62,'com.eqgddnqcj.gidrmkip_mpii'),(48,61,'com.modelsshow'),(49,63,'com.android_osxgmtmn'),(50,65,'com.eqgddnqcj.gidrmkip_mpii'),(51,66,'NULL-CONSTANT'),(52,67,'com.modelsshow'),(53,68,'com.android_osxgmtmn'),(54,70,'com.eqgddnqcj.gidrmkip_mpii'),(55,69,'NULL-CONSTANT'),(56,74,'com.supermengshow'),(57,75,'com.eqgddnqcj.gidrmkip_mpii'),(58,72,'com.android_osxgmtmn'),(59,76,'com.m_mnryzlsndc'),(60,77,'com.modelsshow'),(61,78,'com.eqgddnqcj.gidrmkip_mpii'),(62,79,'com.m_mnryzlsndc'),(63,80,'com.supermengshow'),(64,81,'com.modelsshow'),(65,82,'com.eqgddnqcj.gidrmkip_mpii'),(66,83,'com.android_osxgmtmn'),(67,86,'com.modelsshow'),(68,85,'com.m_mnryzlsndc'),(69,87,'com.eqgddnqcj.gidrmkip_mpii'),(70,88,'com.supermengshow'),(71,90,'NULL-CONSTANT'),(72,89,'com.modelsshow'),(73,92,'com.eqgddnqcj.gidrmkip_mpii'),(74,91,'com.m_mnryzlsndc'),(75,93,'com.supermengshow'),(76,94,'NULL-CONSTANT'),(77,95,'com.modelsshow'),(78,96,'com.eqgddnqcj.gidrmkip_mpii'),(79,97,'(.*)'),(80,99,'com.eqgddnqcj.gidrmkip_mpii'),(81,103,'com.eqgddnqcj.gidrmkip_mpii'),(82,102,'(.*)'),(83,105,'com.android_osxgmtmn'),(84,107,'com.eqgddnqcj.gidrmkip_mpii'),(85,108,'com.supermengshow'),(86,109,'com.modelsshow'),(87,106,'com.m_mnryzlsndc'),(88,110,'com.android_osxgmtmn'),(89,111,'com.eqgddnqcj.gidrmkip_mpii'),(90,112,'com.supermengshow'),(91,113,'com.android_osxgmtmn'),(92,116,'com.supermengshow'),(93,115,'com.m_mnryzlsndc'),(94,117,'com.eqgddnqcj.gidrmkip_mpii'),(95,119,'(.*)'),(96,121,'com.m_mnryzlsndc'),(97,122,''),(98,124,'(.*)'),(99,126,''),(100,125,'com.supermengshow'),(101,128,'(.*)'),(102,129,'(.*)'),(103,130,'com.eqgddnqcj.gidrmkip_mpii'),(104,127,'com.m_mnryzlsndc'),(105,132,'com.android_osxgmtmn'),(106,133,'com.eqgddnqcj.gidrmkip_mpii'),(107,134,'com.modelsshow'),(108,135,'com.m_mnryzlsndc'),(109,137,'com.android_osxgmtmn'),(110,139,'com.supermengshow'),(111,141,'com.eqgddnqcj.gidrmkip_mpii'),(112,142,'com.modelsshow'),(113,140,'(.*)'),(114,144,''),(115,145,'com.android_osxgmtmn'),(116,146,'com.eqgddnqcj.gidrmkip_mpii'),(117,147,'com.modelsshow'),(118,149,''),(119,150,'com.eqgddnqcj.gidrmkip_mpii'),(120,151,'com.android_osxgmtmn'),(121,153,'com.supermengshow'),(122,152,'(.*)'),(123,154,'com.eqgddnqcj.gidrmkip_mpii'),(124,156,'com.supermengshow'),(125,155,'com.android_osxgmtmn'),(126,159,'com.eqgddnqcj.gidrmkip_mpii'),(127,162,'com.android_osxgmtmn'),(128,161,'com.supermengshow'),(129,163,'com.modelsshow'),(130,165,'com.m_mnryzlsndc'),(131,166,'com.modelsshow'),(132,164,'com.android_osxgmtmn'),(133,167,'(.*)'),(134,168,''),(135,170,'com.eqgddnqcj.gidrmkip_mpii'),(136,171,'com.modelsshow'),(137,172,'com.android_osxgmtmn'),(138,173,''),(139,174,'com.m_mnryzlsndc'),(140,175,'com.eqgddnqcj.gidrmkip_mpii'),(141,177,'(.*)'),(142,179,'com.m_mnryzlsndc'),(143,180,'(.*)'),(144,178,'com.android_osxgmtmn'),(145,182,'com.modelsshow'),(146,181,'com.supermengshow'),(147,183,'(.*)'),(148,185,'com.modelsshow'),(149,186,'com.m_mnryzlsndc'),(150,189,'com.modelsshow'),(151,190,'com.m_mnryzlsndc'),(152,192,'com.modelsshow'),(153,193,'com.supermengshow'),(154,195,'com.android_osxgmtmn'),(155,194,'com.m_mnryzlsndc'),(156,196,'(.*)'),(157,197,'com.modelsshow'),(158,200,'(.*)'),(159,198,'com.android_osxgmtmn'),(160,201,'com.modelsshow'),(161,204,'com.android_osxgmtmn'),(162,205,'com.modelsshow'),(163,202,'com.supermengshow'),(164,207,'com.modelsshow'),(165,208,'com.m_mnryzlsndc'),(166,210,'com.supermengshow'),(167,212,'com.m_mnryzlsndc'),(168,213,'com.supermengshow'),(169,216,'com.supermengshow'),(170,215,'com.android_osxgmtmn'),(171,217,'com.m_mnryzlsndc'),(172,218,'com.modelsshow'),(173,220,'(.*)'),(174,219,'com.m_mnryzlsndc'),(175,223,''),(176,224,'com.m_mnryzlsndc'),(177,225,'com.supermengshow'),(178,226,''),(179,227,'com.modelsshow'),(180,228,'NULL-CONSTANT'),(181,229,'(.*)'),(182,231,'com.modelsshow'),(183,230,'com.supermengshow'),(184,232,'NULL-CONSTANT'),(185,233,'com.android_osxgmtmn'),(186,236,'com.modelsshow'),(187,234,'com.supermengshow'),(188,235,'com.m_mnryzlsndc'),(189,237,'com.modelsshow'),(190,239,'com.m_mnryzlsndc'),(191,240,'com.android_osxgmtmn'),(192,241,'com.modelsshow'),(193,242,'com.supermengshow'),(194,243,'com.m_mnryzlsndc'),(195,244,'com.modelsshow'),(196,246,'com.supermengshow'),(197,245,'com.android_osxgmtmn'),(198,247,'com.m_mnryzlsndc'),(199,250,'com.android_osxgmtmn'),(200,253,'com.supermengshow'),(201,251,'com.modelsshow'),(202,254,'com.supermengshow'),(203,257,'com.m_mnryzlsndc'),(204,258,'com.android_osxgmtmn'),(205,259,'com.m_mnryzlsndc'),(206,260,'com.modelsshow'),(207,261,'com.m_mnryzlsndc'),(208,264,'com.android_osxgmtmn'),(209,265,'com.m_mnryzlsndc'),(210,263,'com.modelsshow'),(211,266,'com.android_osxgmtmn'),(212,267,'com.m_mnryzlsndc'),(213,268,'(.*)'),(214,269,'com.android_osxgmtmn'),(215,270,'com.m_mnryzlsndc'),(216,271,'(.*)'),(217,272,'com.android_osxgmtmn'),(218,273,'com.modelsshow'),(219,275,'com.m_mnryzlsndc'),(220,276,'com.modelsshow'),(221,277,'com.android_osxgmtmn'),(222,278,'com.android_osxgmtmn'),(223,279,'com.android_osxgmtmn'),(224,280,'com.android_osxgmtmn'),(225,282,'com.vuor.narht.mrbngnesud'),(226,283,'com.vuor.narht.mrbngnesud'),(227,285,'com.vuor.narht.mrbngnesud'),(228,286,'com.vuor.narht.mrbngnesud'),(229,288,'com.vuor.narht.mrbngnesud'),(230,289,'com.vuor.narht.mrbngnesud'),(231,297,'com.vuor.narht.mrbngnesud'),(232,298,'com.vuor.narht.mrbngnesud');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,11,0),(5,12,0),(6,13,0),(7,15,0),(8,21,0),(9,22,0),(10,26,0),(11,28,0),(12,32,0),(13,34,0),(14,33,0),(15,39,0),(16,40,0),(17,41,0),(18,43,0),(19,45,0),(20,46,0),(21,48,0),(22,51,0),(23,52,0),(24,53,0),(25,54,0),(26,55,0),(27,56,0),(28,59,0),(29,58,0),(30,61,0),(31,64,0),(32,65,0),(33,67,0),(34,70,0),(35,69,0),(36,73,0),(37,74,0),(38,75,0),(39,77,0),(40,78,0),(41,79,0),(42,80,0),(43,82,0),(44,83,0),(45,58,0),(46,58,0),(47,80,0),(48,80,0),(49,84,0),(50,79,0),(51,83,0),(52,85,0),(53,92,0),(54,83,0),(55,79,0),(56,94,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,11,0,0),(14,13,0,0),(15,14,0,0),(16,16,0,0),(17,15,0,0),(18,17,1,0),(19,18,0,0),(20,19,1,0),(21,17,1,0),(22,20,0,0),(23,21,0,0),(24,18,0,0),(25,19,1,0),(26,22,0,0),(27,24,0,0),(28,23,1,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,30,0,0),(35,31,1,0),(36,27,1,0),(37,32,0,0),(38,33,0,0),(39,34,1,0),(40,35,0,0),(41,36,0,0),(42,37,0,0),(43,38,1,0),(44,39,0,0),(45,40,0,0),(46,41,1,0),(47,42,0,0),(48,43,0,0),(49,44,0,0),(50,45,0,0),(51,46,0,0),(52,47,0,0),(53,48,1,0),(54,49,1,0),(55,50,0,0),(56,51,0,0),(57,52,0,0),(58,53,1,0),(59,54,1,0),(60,55,0,0),(61,56,0,0),(62,57,0,0),(63,58,0,0),(64,54,1,0),(65,59,0,0),(66,60,1,0),(67,61,0,0),(68,58,0,0),(69,60,1,0),(70,63,0,0),(71,62,1,0),(72,64,0,0),(73,65,1,0),(74,66,0,0),(75,67,0,0),(76,68,0,0),(77,69,0,0),(78,70,0,0),(79,68,0,0),(80,71,0,0),(81,72,0,0),(82,73,0,0),(83,74,0,0),(84,75,1,0),(85,76,0,0),(86,77,0,0),(87,78,0,0),(88,80,0,0),(89,79,0,0),(90,81,1,0),(91,83,0,0),(92,82,0,0),(93,80,0,0),(94,81,1,0),(95,84,0,0),(96,85,0,0),(97,86,1,0),(98,87,1,0),(99,85,0,0),(100,88,1,0),(101,89,1,0),(102,86,1,0),(103,85,0,0),(104,89,1,0),(105,90,0,0),(106,91,0,0),(107,92,0,0),(108,93,0,0),(109,94,0,0),(110,95,0,0),(111,96,0,0),(112,97,0,0),(113,98,0,0),(114,99,1,0),(115,100,0,0),(116,97,0,0),(117,102,0,0),(118,103,1,0),(119,104,1,0),(120,105,1,0),(121,106,0,0),(122,104,1,0),(123,107,1,0),(124,108,1,0),(125,109,0,0),(126,104,1,0),(127,110,0,0),(128,108,1,0),(129,104,1,0),(130,111,0,0),(131,112,1,0),(132,113,0,0),(133,114,0,0),(134,115,0,0),(135,116,0,0),(136,112,1,0),(137,117,0,0),(138,118,1,0),(139,119,0,0),(140,120,1,0),(141,121,0,0),(142,122,0,0),(143,123,1,0),(144,120,1,0),(145,124,0,0),(146,125,0,0),(147,126,0,0),(148,123,1,0),(149,120,1,0),(150,127,0,0),(151,128,0,0),(152,120,1,0),(153,129,0,0),(154,130,0,0),(155,131,0,0),(156,132,0,0),(157,133,1,0),(158,134,1,0),(159,135,0,0),(160,133,1,0),(161,136,0,0),(162,137,0,0),(163,138,0,0),(164,139,0,0),(165,140,0,0),(166,142,0,0),(167,141,1,0),(168,141,1,0),(169,143,1,0),(170,144,0,0),(171,145,0,0),(172,146,0,0),(173,141,1,0),(174,147,0,0),(175,148,0,0),(176,149,1,0),(177,141,1,0),(178,150,0,0),(179,151,0,0),(180,152,1,0),(181,154,0,0),(182,153,0,0),(183,152,1,0),(184,155,1,0),(185,156,0,0),(186,157,0,0),(187,158,1,0),(188,159,1,0),(189,160,0,0),(190,161,0,0),(191,162,1,0),(192,163,0,0),(193,165,0,0),(194,164,0,0),(195,166,0,0),(196,167,1,0),(197,168,0,0),(198,169,0,0),(199,170,1,0),(200,167,1,0),(201,171,0,0),(202,172,0,0),(203,173,1,0),(204,174,0,0),(205,175,0,0),(206,176,1,0),(207,178,0,0),(208,177,0,0),(209,176,1,0),(210,179,0,0),(211,180,1,0),(212,181,0,0),(213,182,0,0),(214,180,1,0),(215,183,0,0),(216,184,0,0),(217,185,0,0),(218,186,0,0),(219,185,0,0),(220,187,1,0),(221,188,1,0),(222,189,1,0),(223,187,1,0),(224,190,0,0),(225,191,0,0),(226,187,1,0),(227,192,0,0),(228,193,1,0),(229,187,1,0),(230,194,0,0),(231,192,0,0),(232,193,1,0),(233,195,0,0),(234,197,0,0),(235,198,0,0),(236,196,0,0),(237,196,0,0),(238,199,1,0),(239,200,0,0),(240,201,0,0),(241,202,0,0),(242,203,0,0),(243,204,0,0),(244,202,0,0),(245,205,0,0),(246,206,0,0),(247,208,0,0),(248,207,1,0),(249,209,1,0),(250,210,0,0),(251,211,0,0),(252,212,1,0),(253,213,0,0),(254,214,0,0),(255,215,1,0),(256,216,1,0),(257,217,0,0),(258,218,0,0),(259,220,0,0),(260,219,0,0),(261,221,0,0),(262,222,1,0),(263,223,0,0),(264,224,0,0),(265,225,0,0),(266,226,0,0),(267,227,0,0),(268,228,1,0),(269,226,0,0),(270,227,0,0),(271,228,1,0),(272,229,0,0),(273,230,0,0),(274,231,1,0),(275,232,0,0),(276,233,0,0),(277,234,0,0),(278,235,0,0),(279,236,0,0),(280,237,0,0),(281,238,1,0),(282,239,0,0),(283,240,0,0),(284,241,1,0),(285,241,0,0),(286,241,0,0),(287,241,1,0),(288,241,0,0),(289,241,0,0),(290,243,1,0),(291,243,1,0),(292,243,1,0),(293,243,1,0),(294,243,1,0),(295,243,1,0),(296,244,1,0),(297,246,0,0),(298,247,0,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.SET_WALLPAPER'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'file://',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'market://search?q=pub:\"com.xoYu\"',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(56,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(59,NULL,NULL,'file://',NULL,NULL,NULL),(60,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,245,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,2),(19,3,3),(20,3,5),(21,4,1),(22,3,6),(23,4,2),(24,4,3),(25,3,7),(26,5,1),(27,3,8),(28,5,2),(29,4,5),(30,5,3),(31,3,9),(32,4,6),(33,5,5),(34,3,10),(35,4,7),(36,4,8),(37,5,6),(38,3,11),(39,6,1),(40,4,9),(41,3,12),(42,5,7),(43,6,2),(44,4,10),(45,5,8),(46,6,3),(47,4,11),(48,5,9),(49,6,6),(50,4,12),(51,5,10),(52,6,13),(53,5,11),(54,6,14),(55,5,12),(56,6,15),(57,7,16),(58,7,1),(59,7,2),(60,7,3),(61,7,4),(62,7,5);
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

-- Dump completed on 2015-10-09  0:39:40
