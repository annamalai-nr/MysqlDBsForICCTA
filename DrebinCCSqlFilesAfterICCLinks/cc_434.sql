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
) ENGINE=InnoDB AUTO_INCREMENT=1654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,109,77,2,NULL),(2,236,77,2,NULL),(3,237,77,2,NULL),(4,163,77,2,NULL),(5,241,77,2,NULL),(6,244,77,2,NULL),(7,182,51,2,NULL),(8,273,17,2,NULL),(9,248,1,2,NULL),(10,248,4,2,NULL),(11,248,11,2,NULL),(12,248,12,2,NULL),(13,248,13,2,NULL),(14,248,15,2,NULL),(15,248,21,2,NULL),(16,248,33,2,NULL),(17,248,41,2,NULL),(18,248,52,2,NULL),(19,248,58,2,NULL),(20,248,26,2,NULL),(21,248,34,2,NULL),(22,248,40,2,NULL),(23,248,46,2,NULL),(24,248,53,2,NULL),(25,248,61,2,NULL),(26,248,67,2,NULL),(27,248,75,2,NULL),(28,248,79,2,NULL),(29,248,32,2,NULL),(30,248,39,2,NULL),(31,248,45,2,NULL),(32,248,51,2,NULL),(33,248,56,2,NULL),(34,248,65,2,NULL),(35,248,69,2,NULL),(36,248,77,2,NULL),(37,248,80,2,NULL),(38,248,28,2,NULL),(39,248,43,2,NULL),(40,248,48,2,NULL),(41,248,55,2,NULL),(42,248,59,2,NULL),(43,248,64,2,NULL),(44,248,70,2,NULL),(45,248,74,2,NULL),(46,248,78,2,NULL),(47,248,82,2,NULL),(48,248,83,2,NULL),(49,248,22,2,NULL),(50,248,54,2,NULL),(51,248,73,2,NULL),(52,248,84,2,NULL),(53,248,85,2,NULL),(54,248,92,2,NULL),(55,86,77,2,NULL),(56,171,51,2,NULL),(57,249,32,2,NULL),(58,196,32,2,NULL),(59,200,32,2,NULL),(60,84,32,2,NULL),(61,143,32,2,NULL),(62,148,32,2,NULL),(63,120,32,2,NULL),(64,35,32,2,NULL),(65,97,32,2,NULL),(66,102,32,2,NULL),(67,59,32,2,NULL),(68,64,32,2,NULL),(69,169,32,2,NULL),(70,199,32,2,NULL),(71,268,32,2,NULL),(72,271,32,2,NULL),(73,73,32,2,NULL),(74,101,32,2,NULL),(75,104,32,2,NULL),(76,256,32,2,NULL),(77,184,32,2,NULL),(78,124,32,2,NULL),(79,128,32,2,NULL),(80,206,32,2,NULL),(81,209,32,2,NULL),(82,262,32,2,NULL),(83,274,32,2,NULL),(84,20,32,2,NULL),(85,25,32,2,NULL),(86,180,32,2,NULL),(87,183,32,2,NULL),(88,284,32,2,NULL),(89,77,77,2,NULL),(90,205,51,2,NULL),(91,249,39,2,NULL),(92,196,39,2,NULL),(93,200,39,2,NULL),(94,84,39,2,NULL),(95,143,39,2,NULL),(96,148,39,2,NULL),(97,120,39,2,NULL),(98,35,39,2,NULL),(99,97,39,2,NULL),(100,102,39,2,NULL),(101,59,39,2,NULL),(102,64,39,2,NULL),(103,169,39,2,NULL),(104,199,39,2,NULL),(105,268,39,2,NULL),(106,271,39,2,NULL),(107,73,39,2,NULL),(108,101,39,2,NULL),(109,104,39,2,NULL),(110,256,39,2,NULL),(111,184,39,2,NULL),(112,124,39,2,NULL),(113,128,39,2,NULL),(114,206,39,2,NULL),(115,209,39,2,NULL),(116,262,39,2,NULL),(117,274,39,2,NULL),(118,20,39,2,NULL),(119,25,39,2,NULL),(120,180,39,2,NULL),(121,183,39,2,NULL),(122,284,39,2,NULL),(123,185,77,2,NULL),(124,249,45,2,NULL),(125,196,45,2,NULL),(126,200,45,2,NULL),(127,84,45,2,NULL),(128,143,45,2,NULL),(129,148,45,2,NULL),(130,120,45,2,NULL),(131,35,45,2,NULL),(132,97,45,2,NULL),(133,102,45,2,NULL),(134,59,45,2,NULL),(135,64,45,2,NULL),(136,169,45,2,NULL),(137,199,45,2,NULL),(138,268,45,2,NULL),(139,271,45,2,NULL),(140,73,45,2,NULL),(141,101,45,2,NULL),(142,104,45,2,NULL),(143,256,45,2,NULL),(144,184,45,2,NULL),(145,124,45,2,NULL),(146,128,45,2,NULL),(147,206,45,2,NULL),(148,209,45,2,NULL),(149,262,45,2,NULL),(150,274,45,2,NULL),(151,20,45,2,NULL),(152,25,45,2,NULL),(153,180,45,2,NULL),(154,183,45,2,NULL),(155,284,45,2,NULL),(156,95,17,2,NULL),(157,142,17,2,NULL),(158,189,77,2,NULL),(159,207,17,2,NULL),(160,249,51,2,NULL),(161,196,51,2,NULL),(162,200,51,2,NULL),(163,84,51,2,NULL),(164,143,51,2,NULL),(165,148,51,2,NULL),(166,120,51,2,NULL),(167,35,51,2,NULL),(168,97,51,2,NULL),(169,102,51,2,NULL),(170,59,51,2,NULL),(171,64,51,2,NULL),(172,169,51,2,NULL),(173,199,51,2,NULL),(174,268,51,2,NULL),(175,271,51,2,NULL),(176,73,51,2,NULL),(177,101,51,2,NULL),(178,104,51,2,NULL),(179,256,51,2,NULL),(180,184,51,2,NULL),(181,124,51,2,NULL),(182,128,51,2,NULL),(183,206,51,2,NULL),(184,209,51,2,NULL),(185,262,51,2,NULL),(186,274,51,2,NULL),(187,20,51,2,NULL),(188,25,51,2,NULL),(189,180,51,2,NULL),(190,183,51,2,NULL),(191,284,51,2,NULL),(192,166,51,2,NULL),(193,268,1,2,NULL),(194,271,1,2,NULL),(195,268,4,2,NULL),(196,271,4,2,NULL),(197,249,56,2,NULL),(198,268,11,2,NULL),(199,271,11,2,NULL),(200,268,12,2,NULL),(201,271,12,2,NULL),(202,268,13,2,NULL),(203,271,13,2,NULL),(204,268,15,2,NULL),(205,271,15,2,NULL),(206,268,21,2,NULL),(207,271,21,2,NULL),(208,196,56,2,NULL),(209,200,56,2,NULL),(210,84,56,2,NULL),(211,143,56,2,NULL),(212,148,56,2,NULL),(213,268,33,2,NULL),(214,271,33,2,NULL),(215,268,41,2,NULL),(216,271,41,2,NULL),(217,120,56,2,NULL),(218,268,52,2,NULL),(219,271,52,2,NULL),(220,268,58,2,NULL),(221,271,58,2,NULL),(222,35,56,2,NULL),(223,268,26,2,NULL),(224,271,26,2,NULL),(225,268,34,2,NULL),(226,271,34,2,NULL),(227,268,40,2,NULL),(228,271,40,2,NULL),(229,268,46,2,NULL),(230,271,46,2,NULL),(231,268,53,2,NULL),(232,271,53,2,NULL),(233,97,56,2,NULL),(234,102,56,2,NULL),(235,59,56,2,NULL),(236,64,56,2,NULL),(237,169,56,2,NULL),(238,268,61,2,NULL),(239,271,61,2,NULL),(240,268,67,2,NULL),(241,271,67,2,NULL),(242,199,56,2,NULL),(243,268,75,2,NULL),(244,271,75,2,NULL),(245,268,79,2,NULL),(246,271,79,2,NULL),(247,73,56,2,NULL),(248,101,56,2,NULL),(249,104,56,2,NULL),(250,268,65,2,NULL),(251,271,65,2,NULL),(252,268,69,2,NULL),(253,271,69,2,NULL),(254,256,56,2,NULL),(255,268,77,2,NULL),(256,271,77,2,NULL),(257,268,80,2,NULL),(258,271,80,2,NULL),(259,268,28,2,NULL),(260,271,28,2,NULL),(261,184,56,2,NULL),(262,268,43,2,NULL),(263,271,43,2,NULL),(264,268,48,2,NULL),(265,271,48,2,NULL),(266,268,55,2,NULL),(267,271,55,2,NULL),(268,268,59,2,NULL),(269,271,59,2,NULL),(270,268,64,2,NULL),(271,271,64,2,NULL),(272,124,56,2,NULL),(273,128,56,2,NULL),(274,268,70,2,NULL),(275,271,70,2,NULL),(276,206,56,2,NULL),(277,209,56,2,NULL),(278,262,56,2,NULL),(279,268,74,2,NULL),(280,271,74,2,NULL),(281,268,78,2,NULL),(282,271,78,2,NULL),(283,274,56,2,NULL),(284,268,82,2,NULL),(285,271,82,2,NULL),(286,268,83,2,NULL),(287,271,83,2,NULL),(288,268,22,2,NULL),(289,271,22,2,NULL),(290,268,54,2,NULL),(291,271,54,2,NULL),(292,20,56,2,NULL),(293,25,56,2,NULL),(294,180,56,2,NULL),(295,183,56,2,NULL),(296,268,73,2,NULL),(297,271,73,2,NULL),(298,268,84,2,NULL),(299,271,84,2,NULL),(300,268,85,2,NULL),(301,271,85,2,NULL),(302,284,56,2,NULL),(303,268,92,2,NULL),(304,271,92,2,NULL),(305,147,51,2,NULL),(306,263,62,2,NULL),(307,73,1,2,NULL),(308,101,1,2,NULL),(309,104,1,2,NULL),(310,73,4,2,NULL),(311,101,4,2,NULL),(312,104,4,2,NULL),(313,73,11,2,NULL),(314,101,11,2,NULL),(315,104,11,2,NULL),(316,73,12,2,NULL),(317,101,12,2,NULL),(318,104,12,2,NULL),(319,73,13,2,NULL),(320,101,13,2,NULL),(321,104,13,2,NULL),(322,73,15,2,NULL),(323,101,15,2,NULL),(324,104,15,2,NULL),(325,73,21,2,NULL),(326,101,21,2,NULL),(327,104,21,2,NULL),(328,73,33,2,NULL),(329,101,33,2,NULL),(330,104,33,2,NULL),(331,73,41,2,NULL),(332,101,41,2,NULL),(333,104,41,2,NULL),(334,73,52,2,NULL),(335,101,52,2,NULL),(336,104,52,2,NULL),(337,73,58,2,NULL),(338,101,58,2,NULL),(339,104,58,2,NULL),(340,73,26,2,NULL),(341,101,26,2,NULL),(342,104,26,2,NULL),(343,73,34,2,NULL),(344,101,34,2,NULL),(345,104,34,2,NULL),(346,73,40,2,NULL),(347,101,40,2,NULL),(348,104,40,2,NULL),(349,73,46,2,NULL),(350,101,46,2,NULL),(351,104,46,2,NULL),(352,73,53,2,NULL),(353,101,53,2,NULL),(354,104,53,2,NULL),(355,73,61,2,NULL),(356,101,61,2,NULL),(357,104,61,2,NULL),(358,73,67,2,NULL),(359,101,67,2,NULL),(360,104,67,2,NULL),(361,73,75,2,NULL),(362,101,75,2,NULL),(363,104,75,2,NULL),(364,73,79,2,NULL),(365,101,79,2,NULL),(366,104,79,2,NULL),(367,73,65,2,NULL),(368,101,65,2,NULL),(369,104,65,2,NULL),(370,73,69,2,NULL),(371,101,69,2,NULL),(372,104,69,2,NULL),(373,73,77,2,NULL),(374,101,77,2,NULL),(375,104,77,2,NULL),(376,73,80,2,NULL),(377,101,80,2,NULL),(378,104,80,2,NULL),(379,73,28,2,NULL),(380,101,28,2,NULL),(381,104,28,2,NULL),(382,73,43,2,NULL),(383,101,43,2,NULL),(384,104,43,2,NULL),(385,73,48,2,NULL),(386,101,48,2,NULL),(387,104,48,2,NULL),(388,73,55,2,NULL),(389,101,55,2,NULL),(390,104,55,2,NULL),(391,73,59,2,NULL),(392,101,59,2,NULL),(393,104,59,2,NULL),(394,73,64,2,NULL),(395,101,64,2,NULL),(396,104,64,2,NULL),(397,73,70,2,NULL),(398,101,70,2,NULL),(399,104,70,2,NULL),(400,73,74,2,NULL),(401,101,74,2,NULL),(402,104,74,2,NULL),(403,73,78,2,NULL),(404,101,78,2,NULL),(405,104,78,2,NULL),(406,73,82,2,NULL),(407,101,82,2,NULL),(408,104,82,2,NULL),(409,73,83,2,NULL),(410,101,83,2,NULL),(411,104,83,2,NULL),(412,73,22,2,NULL),(413,101,22,2,NULL),(414,104,22,2,NULL),(415,73,54,2,NULL),(416,101,54,2,NULL),(417,104,54,2,NULL),(418,73,73,2,NULL),(419,101,73,2,NULL),(420,104,73,2,NULL),(421,73,84,2,NULL),(422,101,84,2,NULL),(423,104,84,2,NULL),(424,73,85,2,NULL),(425,101,85,2,NULL),(426,104,85,2,NULL),(427,73,92,2,NULL),(428,101,92,2,NULL),(429,104,92,2,NULL),(430,249,65,2,NULL),(431,196,65,2,NULL),(432,200,65,2,NULL),(433,84,65,2,NULL),(434,143,65,2,NULL),(435,148,65,2,NULL),(436,120,65,2,NULL),(437,35,65,2,NULL),(438,97,65,2,NULL),(439,102,65,2,NULL),(440,59,65,2,NULL),(441,64,65,2,NULL),(442,169,65,2,NULL),(443,199,65,2,NULL),(444,256,65,2,NULL),(445,184,65,2,NULL),(446,124,65,2,NULL),(447,128,65,2,NULL),(448,206,65,2,NULL),(449,209,65,2,NULL),(450,262,65,2,NULL),(451,274,65,2,NULL),(452,20,65,2,NULL),(453,25,65,2,NULL),(454,180,65,2,NULL),(455,183,65,2,NULL),(456,284,65,2,NULL),(457,218,77,2,NULL),(458,227,77,2,NULL),(459,231,77,2,NULL),(460,249,69,2,NULL),(461,196,69,2,NULL),(462,200,69,2,NULL),(463,84,69,2,NULL),(464,143,69,2,NULL),(465,148,69,2,NULL),(466,120,69,2,NULL),(467,35,69,2,NULL),(468,97,69,2,NULL),(469,102,69,2,NULL),(470,59,69,2,NULL),(471,64,69,2,NULL),(472,169,69,2,NULL),(473,199,69,2,NULL),(474,256,69,2,NULL),(475,184,69,2,NULL),(476,124,69,2,NULL),(477,128,69,2,NULL),(478,206,69,2,NULL),(479,209,69,2,NULL),(480,262,69,2,NULL),(481,274,69,2,NULL),(482,20,69,2,NULL),(483,25,69,2,NULL),(484,180,69,2,NULL),(485,183,69,2,NULL),(486,284,69,2,NULL),(487,197,51,2,NULL),(488,256,1,2,NULL),(489,256,4,2,NULL),(490,256,11,2,NULL),(491,256,12,2,NULL),(492,256,13,2,NULL),(493,256,15,2,NULL),(494,256,21,2,NULL),(495,256,33,2,NULL),(496,256,41,2,NULL),(497,256,52,2,NULL),(498,256,58,2,NULL),(499,256,26,2,NULL),(500,256,34,2,NULL),(501,256,40,2,NULL),(502,256,46,2,NULL),(503,256,53,2,NULL),(504,256,61,2,NULL),(505,256,67,2,NULL),(506,256,75,2,NULL),(507,256,79,2,NULL),(508,256,77,2,NULL),(509,256,80,2,NULL),(510,256,28,2,NULL),(511,256,43,2,NULL),(512,256,48,2,NULL),(513,256,55,2,NULL),(514,256,59,2,NULL),(515,256,64,2,NULL),(516,256,70,2,NULL),(517,256,74,2,NULL),(518,256,78,2,NULL),(519,256,82,2,NULL),(520,256,83,2,NULL),(521,256,22,2,NULL),(522,256,54,2,NULL),(523,256,73,2,NULL),(524,256,84,2,NULL),(525,256,85,2,NULL),(526,256,92,2,NULL),(527,249,77,2,NULL),(528,196,77,2,NULL),(529,200,77,2,NULL),(530,84,77,2,NULL),(531,143,77,2,NULL),(532,148,77,2,NULL),(533,120,77,2,NULL),(534,35,77,2,NULL),(535,97,77,2,NULL),(536,102,77,2,NULL),(537,59,77,2,NULL),(538,64,77,2,NULL),(539,169,77,2,NULL),(540,199,77,2,NULL),(541,184,77,2,NULL),(542,124,77,2,NULL),(543,128,77,2,NULL),(544,206,77,2,NULL),(545,209,77,2,NULL),(546,262,77,2,NULL),(547,274,77,2,NULL),(548,20,77,2,NULL),(549,25,77,2,NULL),(550,180,77,2,NULL),(551,183,77,2,NULL),(552,284,77,2,NULL),(553,56,77,2,NULL),(554,89,77,2,NULL),(555,134,77,2,NULL),(556,249,80,2,NULL),(557,196,80,2,NULL),(558,200,80,2,NULL),(559,84,80,2,NULL),(560,143,80,2,NULL),(561,148,80,2,NULL),(562,120,80,2,NULL),(563,35,80,2,NULL),(564,97,80,2,NULL),(565,102,80,2,NULL),(566,59,80,2,NULL),(567,64,80,2,NULL),(568,169,80,2,NULL),(569,199,80,2,NULL),(570,184,80,2,NULL),(571,124,80,2,NULL),(572,128,80,2,NULL),(573,206,80,2,NULL),(574,209,80,2,NULL),(575,262,80,2,NULL),(576,274,80,2,NULL),(577,20,80,2,NULL),(578,25,80,2,NULL),(579,180,80,2,NULL),(580,183,80,2,NULL),(581,284,80,2,NULL),(582,60,52,2,NULL),(583,112,52,2,NULL),(584,116,52,2,NULL),(585,11,52,2,NULL),(586,13,52,2,NULL),(587,225,52,2,NULL),(588,74,15,2,NULL),(589,161,7,2,NULL),(590,249,1,2,NULL),(591,249,4,2,NULL),(592,249,11,2,NULL),(593,249,12,2,NULL),(594,249,13,2,NULL),(595,249,15,2,NULL),(596,249,21,2,NULL),(597,249,33,2,NULL),(598,249,41,2,NULL),(599,249,52,2,NULL),(600,249,58,2,NULL),(601,249,26,2,NULL),(602,249,34,2,NULL),(603,249,40,2,NULL),(604,249,46,2,NULL),(605,249,53,2,NULL),(606,249,61,2,NULL),(607,249,67,2,NULL),(608,249,75,2,NULL),(609,249,79,2,NULL),(610,249,28,2,NULL),(611,249,43,2,NULL),(612,249,48,2,NULL),(613,249,55,2,NULL),(614,249,59,2,NULL),(615,249,64,2,NULL),(616,249,70,2,NULL),(617,249,74,2,NULL),(618,249,78,2,NULL),(619,249,82,2,NULL),(620,249,83,2,NULL),(621,249,22,2,NULL),(622,249,54,2,NULL),(623,249,73,2,NULL),(624,249,84,2,NULL),(625,249,85,2,NULL),(626,249,92,2,NULL),(627,181,15,2,NULL),(628,246,52,2,NULL),(629,196,11,2,NULL),(630,200,11,2,NULL),(631,84,11,2,NULL),(632,143,11,2,NULL),(633,148,11,2,NULL),(634,120,11,2,NULL),(635,35,11,2,NULL),(636,97,11,2,NULL),(637,102,11,2,NULL),(638,59,11,2,NULL),(639,64,11,2,NULL),(640,169,11,2,NULL),(641,199,11,2,NULL),(642,184,11,2,NULL),(643,124,11,2,NULL),(644,128,11,2,NULL),(645,206,11,2,NULL),(646,209,11,2,NULL),(647,262,11,2,NULL),(648,274,11,2,NULL),(649,20,11,2,NULL),(650,25,11,2,NULL),(651,180,11,2,NULL),(652,183,11,2,NULL),(653,284,11,2,NULL),(654,15,52,2,NULL),(655,139,15,2,NULL),(656,196,12,2,NULL),(657,200,12,2,NULL),(658,84,12,2,NULL),(659,143,12,2,NULL),(660,148,12,2,NULL),(661,120,12,2,NULL),(662,35,12,2,NULL),(663,97,12,2,NULL),(664,102,12,2,NULL),(665,59,12,2,NULL),(666,64,12,2,NULL),(667,169,12,2,NULL),(668,199,12,2,NULL),(669,184,12,2,NULL),(670,124,12,2,NULL),(671,128,12,2,NULL),(672,206,12,2,NULL),(673,209,12,2,NULL),(674,262,12,2,NULL),(675,274,12,2,NULL),(676,20,12,2,NULL),(677,25,12,2,NULL),(678,180,12,2,NULL),(679,183,12,2,NULL),(680,284,12,2,NULL),(681,242,52,2,NULL),(682,196,13,2,NULL),(683,200,13,2,NULL),(684,84,13,2,NULL),(685,143,13,2,NULL),(686,148,13,2,NULL),(687,120,13,2,NULL),(688,35,13,2,NULL),(689,97,13,2,NULL),(690,102,13,2,NULL),(691,59,13,2,NULL),(692,64,13,2,NULL),(693,169,13,2,NULL),(694,199,13,2,NULL),(695,184,13,2,NULL),(696,124,13,2,NULL),(697,128,13,2,NULL),(698,206,13,2,NULL),(699,209,13,2,NULL),(700,262,13,2,NULL),(701,274,13,2,NULL),(702,20,13,2,NULL),(703,25,13,2,NULL),(704,180,13,2,NULL),(705,183,13,2,NULL),(706,284,13,2,NULL),(707,8,7,2,NULL),(708,153,7,2,NULL),(709,216,52,2,NULL),(710,253,7,2,NULL),(711,196,15,2,NULL),(712,200,15,2,NULL),(713,84,15,2,NULL),(714,143,15,2,NULL),(715,148,15,2,NULL),(716,120,15,2,NULL),(717,35,15,2,NULL),(718,97,15,2,NULL),(719,102,15,2,NULL),(720,59,15,2,NULL),(721,64,15,2,NULL),(722,169,15,2,NULL),(723,199,15,2,NULL),(724,184,15,2,NULL),(725,124,15,2,NULL),(726,128,15,2,NULL),(727,206,15,2,NULL),(728,209,15,2,NULL),(729,262,15,2,NULL),(730,274,15,2,NULL),(731,20,15,2,NULL),(732,25,15,2,NULL),(733,180,15,2,NULL),(734,183,15,2,NULL),(735,284,15,2,NULL),(736,193,15,2,NULL),(737,196,1,2,NULL),(738,200,1,2,NULL),(739,196,4,2,NULL),(740,200,4,2,NULL),(741,84,21,2,NULL),(742,143,21,2,NULL),(743,148,21,2,NULL),(744,196,33,2,NULL),(745,200,33,2,NULL),(746,196,41,2,NULL),(747,200,41,2,NULL),(748,120,21,2,NULL),(749,196,52,2,NULL),(750,200,52,2,NULL),(751,196,58,2,NULL),(752,200,58,2,NULL),(753,35,21,2,NULL),(754,196,26,2,NULL),(755,200,26,2,NULL),(756,196,34,2,NULL),(757,200,34,2,NULL),(758,196,40,2,NULL),(759,200,40,2,NULL),(760,196,46,2,NULL),(761,200,46,2,NULL),(762,196,53,2,NULL),(763,200,53,2,NULL),(764,97,21,2,NULL),(765,102,21,2,NULL),(766,59,21,2,NULL),(767,64,21,2,NULL),(768,169,21,2,NULL),(769,196,61,2,NULL),(770,200,61,2,NULL),(771,196,67,2,NULL),(772,200,67,2,NULL),(773,199,21,2,NULL),(774,196,75,2,NULL),(775,200,75,2,NULL),(776,196,79,2,NULL),(777,200,79,2,NULL),(778,196,28,2,NULL),(779,200,28,2,NULL),(780,184,21,2,NULL),(781,196,43,2,NULL),(782,200,43,2,NULL),(783,196,48,2,NULL),(784,200,48,2,NULL),(785,196,55,2,NULL),(786,200,55,2,NULL),(787,196,59,2,NULL),(788,200,59,2,NULL),(789,196,64,2,NULL),(790,200,64,2,NULL),(791,124,21,2,NULL),(792,128,21,2,NULL),(793,196,70,2,NULL),(794,200,70,2,NULL),(795,206,21,2,NULL),(796,209,21,2,NULL),(797,262,21,2,NULL),(798,196,74,2,NULL),(799,200,74,2,NULL),(800,196,78,2,NULL),(801,200,78,2,NULL),(802,274,21,2,NULL),(803,196,82,2,NULL),(804,200,82,2,NULL),(805,196,83,2,NULL),(806,200,83,2,NULL),(807,196,22,2,NULL),(808,200,22,2,NULL),(809,196,54,2,NULL),(810,200,54,2,NULL),(811,20,21,2,NULL),(812,25,21,2,NULL),(813,180,21,2,NULL),(814,183,21,2,NULL),(815,196,73,2,NULL),(816,200,73,2,NULL),(817,196,84,2,NULL),(818,200,84,2,NULL),(819,196,85,2,NULL),(820,200,85,2,NULL),(821,284,21,2,NULL),(822,196,92,2,NULL),(823,200,92,2,NULL),(824,202,30,2,NULL),(825,230,15,2,NULL),(826,84,1,2,NULL),(827,143,1,2,NULL),(828,148,1,2,NULL),(829,84,4,2,NULL),(830,143,4,2,NULL),(831,148,4,2,NULL),(832,84,33,2,NULL),(833,143,33,2,NULL),(834,148,33,2,NULL),(835,84,41,2,NULL),(836,143,41,2,NULL),(837,148,41,2,NULL),(838,84,52,2,NULL),(839,143,52,2,NULL),(840,148,52,2,NULL),(841,84,58,2,NULL),(842,143,58,2,NULL),(843,148,58,2,NULL),(844,84,26,2,NULL),(845,143,26,2,NULL),(846,148,26,2,NULL),(847,84,34,2,NULL),(848,143,34,2,NULL),(849,148,34,2,NULL),(850,84,40,2,NULL),(851,143,40,2,NULL),(852,148,40,2,NULL),(853,84,46,2,NULL),(854,143,46,2,NULL),(855,148,46,2,NULL),(856,84,53,2,NULL),(857,143,53,2,NULL),(858,148,53,2,NULL),(859,84,61,2,NULL),(860,143,61,2,NULL),(861,148,61,2,NULL),(862,84,67,2,NULL),(863,143,67,2,NULL),(864,148,67,2,NULL),(865,84,75,2,NULL),(866,143,75,2,NULL),(867,148,75,2,NULL),(868,84,79,2,NULL),(869,143,79,2,NULL),(870,148,79,2,NULL),(871,84,28,2,NULL),(872,143,28,2,NULL),(873,148,28,2,NULL),(874,84,43,2,NULL),(875,143,43,2,NULL),(876,148,43,2,NULL),(877,84,48,2,NULL),(878,143,48,2,NULL),(879,148,48,2,NULL),(880,84,55,2,NULL),(881,143,55,2,NULL),(882,148,55,2,NULL),(883,84,59,2,NULL),(884,143,59,2,NULL),(885,148,59,2,NULL),(886,84,64,2,NULL),(887,143,64,2,NULL),(888,148,64,2,NULL),(889,84,70,2,NULL),(890,143,70,2,NULL),(891,148,70,2,NULL),(892,84,74,2,NULL),(893,143,74,2,NULL),(894,148,74,2,NULL),(895,84,78,2,NULL),(896,143,78,2,NULL),(897,148,78,2,NULL),(898,84,82,2,NULL),(899,143,82,2,NULL),(900,148,82,2,NULL),(901,84,83,2,NULL),(902,143,83,2,NULL),(903,148,83,2,NULL),(904,84,22,2,NULL),(905,143,22,2,NULL),(906,148,22,2,NULL),(907,84,54,2,NULL),(908,143,54,2,NULL),(909,148,54,2,NULL),(910,84,73,2,NULL),(911,143,73,2,NULL),(912,148,73,2,NULL),(913,84,84,2,NULL),(914,143,84,2,NULL),(915,148,84,2,NULL),(916,84,85,2,NULL),(917,143,85,2,NULL),(918,148,85,2,NULL),(919,84,92,2,NULL),(920,143,92,2,NULL),(921,148,92,2,NULL),(922,120,33,2,NULL),(923,35,33,2,NULL),(924,97,33,2,NULL),(925,102,33,2,NULL),(926,59,33,2,NULL),(927,64,33,2,NULL),(928,169,33,2,NULL),(929,199,33,2,NULL),(930,184,33,2,NULL),(931,124,33,2,NULL),(932,128,33,2,NULL),(933,206,33,2,NULL),(934,209,33,2,NULL),(935,262,33,2,NULL),(936,274,33,2,NULL),(937,20,33,2,NULL),(938,25,33,2,NULL),(939,180,33,2,NULL),(940,183,33,2,NULL),(941,284,33,2,NULL),(942,22,52,2,NULL),(943,88,52,2,NULL),(944,93,52,2,NULL),(945,120,41,2,NULL),(946,35,41,2,NULL),(947,97,41,2,NULL),(948,102,41,2,NULL),(949,59,41,2,NULL),(950,64,41,2,NULL),(951,169,41,2,NULL),(952,199,41,2,NULL),(953,184,41,2,NULL),(954,124,41,2,NULL),(955,128,41,2,NULL),(956,206,41,2,NULL),(957,209,41,2,NULL),(958,262,41,2,NULL),(959,274,41,2,NULL),(960,20,41,2,NULL),(961,25,41,2,NULL),(962,180,41,2,NULL),(963,183,41,2,NULL),(964,284,41,2,NULL),(965,210,15,2,NULL),(966,120,1,2,NULL),(967,120,4,2,NULL),(968,120,52,2,NULL),(969,120,58,2,NULL),(970,120,26,2,NULL),(971,120,34,2,NULL),(972,120,40,2,NULL),(973,120,46,2,NULL),(974,120,53,2,NULL),(975,120,61,2,NULL),(976,120,67,2,NULL),(977,120,75,2,NULL),(978,120,79,2,NULL),(979,120,28,2,NULL),(980,120,43,2,NULL),(981,120,48,2,NULL),(982,120,55,2,NULL),(983,120,59,2,NULL),(984,120,64,2,NULL),(985,120,70,2,NULL),(986,120,74,2,NULL),(987,120,78,2,NULL),(988,120,82,2,NULL),(989,120,83,2,NULL),(990,120,22,2,NULL),(991,120,54,2,NULL),(992,120,73,2,NULL),(993,120,84,2,NULL),(994,120,85,2,NULL),(995,120,92,2,NULL),(996,35,52,2,NULL),(997,97,52,2,NULL),(998,102,52,2,NULL),(999,59,52,2,NULL),(1000,64,52,2,NULL),(1001,169,52,2,NULL),(1002,199,52,2,NULL),(1003,184,52,2,NULL),(1004,124,52,2,NULL),(1005,128,52,2,NULL),(1006,206,52,2,NULL),(1007,209,52,2,NULL),(1008,262,52,2,NULL),(1009,274,52,2,NULL),(1010,20,52,2,NULL),(1011,25,52,2,NULL),(1012,180,52,2,NULL),(1013,183,52,2,NULL),(1014,284,52,2,NULL),(1015,7,52,2,NULL),(1016,55,52,2,NULL),(1017,108,52,2,NULL),(1018,35,58,2,NULL),(1019,97,58,2,NULL),(1020,102,58,2,NULL),(1021,59,58,2,NULL),(1022,64,58,2,NULL),(1023,169,58,2,NULL),(1024,199,58,2,NULL),(1025,184,58,2,NULL),(1026,124,58,2,NULL),(1027,128,58,2,NULL),(1028,206,58,2,NULL),(1029,209,58,2,NULL),(1030,262,58,2,NULL),(1031,274,58,2,NULL),(1032,20,58,2,NULL),(1033,25,58,2,NULL),(1034,180,58,2,NULL),(1035,183,58,2,NULL),(1036,284,58,2,NULL),(1037,162,82,2,NULL),(1038,266,82,2,NULL),(1039,269,82,2,NULL),(1040,19,82,2,NULL),(1041,24,82,2,NULL),(1042,27,82,2,NULL),(1043,132,82,2,NULL),(1044,195,78,2,NULL),(1045,35,28,2,NULL),(1046,97,28,2,NULL),(1047,102,28,2,NULL),(1048,59,28,2,NULL),(1049,64,28,2,NULL),(1050,169,28,2,NULL),(1051,199,28,2,NULL),(1052,184,28,2,NULL),(1053,124,28,2,NULL),(1054,128,28,2,NULL),(1055,206,28,2,NULL),(1056,209,28,2,NULL),(1057,262,28,2,NULL),(1058,274,28,2,NULL),(1059,20,28,2,NULL),(1060,25,28,2,NULL),(1061,180,28,2,NULL),(1062,183,28,2,NULL),(1063,284,28,2,NULL),(1064,155,59,2,NULL),(1065,178,20,2,NULL),(1066,184,1,2,NULL),(1067,184,4,2,NULL),(1068,184,26,2,NULL),(1069,184,34,2,NULL),(1070,184,40,2,NULL),(1071,184,46,2,NULL),(1072,184,53,2,NULL),(1073,184,61,2,NULL),(1074,184,67,2,NULL),(1075,184,75,2,NULL),(1076,184,79,2,NULL),(1077,184,43,2,NULL),(1078,184,48,2,NULL),(1079,184,55,2,NULL),(1080,184,59,2,NULL),(1081,184,64,2,NULL),(1082,184,70,2,NULL),(1083,184,74,2,NULL),(1084,184,78,2,NULL),(1085,184,82,2,NULL),(1086,184,83,2,NULL),(1087,184,22,2,NULL),(1088,184,54,2,NULL),(1089,184,73,2,NULL),(1090,184,84,2,NULL),(1091,184,85,2,NULL),(1092,184,92,2,NULL),(1093,250,59,2,NULL),(1094,264,82,2,NULL),(1095,35,43,2,NULL),(1096,97,43,2,NULL),(1097,102,43,2,NULL),(1098,59,43,2,NULL),(1099,64,43,2,NULL),(1100,169,43,2,NULL),(1101,199,43,2,NULL),(1102,124,43,2,NULL),(1103,128,43,2,NULL),(1104,206,43,2,NULL),(1105,209,43,2,NULL),(1106,262,43,2,NULL),(1107,274,43,2,NULL),(1108,20,43,2,NULL),(1109,25,43,2,NULL),(1110,180,43,2,NULL),(1111,183,43,2,NULL),(1112,284,43,2,NULL),(1113,233,59,2,NULL),(1114,280,82,2,NULL),(1115,35,48,2,NULL),(1116,97,48,2,NULL),(1117,102,48,2,NULL),(1118,59,48,2,NULL),(1119,64,48,2,NULL),(1120,169,48,2,NULL),(1121,199,48,2,NULL),(1122,124,48,2,NULL),(1123,128,48,2,NULL),(1124,206,48,2,NULL),(1125,209,48,2,NULL),(1126,262,48,2,NULL),(1127,274,48,2,NULL),(1128,20,48,2,NULL),(1129,25,48,2,NULL),(1130,180,48,2,NULL),(1131,183,48,2,NULL),(1132,284,48,2,NULL),(1133,172,82,2,NULL),(1134,35,55,2,NULL),(1135,97,55,2,NULL),(1136,102,55,2,NULL),(1137,59,55,2,NULL),(1138,64,55,2,NULL),(1139,169,55,2,NULL),(1140,199,55,2,NULL),(1141,124,55,2,NULL),(1142,128,55,2,NULL),(1143,206,55,2,NULL),(1144,209,55,2,NULL),(1145,262,55,2,NULL),(1146,274,55,2,NULL),(1147,20,55,2,NULL),(1148,25,55,2,NULL),(1149,180,55,2,NULL),(1150,183,55,2,NULL),(1151,284,55,2,NULL),(1152,110,20,2,NULL),(1153,151,20,2,NULL),(1154,204,82,2,NULL),(1155,35,59,2,NULL),(1156,97,59,2,NULL),(1157,102,59,2,NULL),(1158,59,59,2,NULL),(1159,64,59,2,NULL),(1160,169,59,2,NULL),(1161,199,59,2,NULL),(1162,124,59,2,NULL),(1163,128,59,2,NULL),(1164,206,59,2,NULL),(1165,209,59,2,NULL),(1166,262,59,2,NULL),(1167,274,59,2,NULL),(1168,20,59,2,NULL),(1169,25,59,2,NULL),(1170,180,59,2,NULL),(1171,183,59,2,NULL),(1172,284,59,2,NULL),(1173,240,59,2,NULL),(1174,124,1,2,NULL),(1175,128,1,2,NULL),(1176,124,4,2,NULL),(1177,128,4,2,NULL),(1178,35,64,2,NULL),(1179,124,26,2,NULL),(1180,128,26,2,NULL),(1181,124,34,2,NULL),(1182,128,34,2,NULL),(1183,124,40,2,NULL),(1184,128,40,2,NULL),(1185,124,46,2,NULL),(1186,128,46,2,NULL),(1187,124,53,2,NULL),(1188,128,53,2,NULL),(1189,97,64,2,NULL),(1190,102,64,2,NULL),(1191,59,64,2,NULL),(1192,64,64,2,NULL),(1193,169,64,2,NULL),(1194,124,61,2,NULL),(1195,128,61,2,NULL),(1196,124,67,2,NULL),(1197,128,67,2,NULL),(1198,199,64,2,NULL),(1199,124,75,2,NULL),(1200,128,75,2,NULL),(1201,124,79,2,NULL),(1202,128,79,2,NULL),(1203,124,70,2,NULL),(1204,128,70,2,NULL),(1205,206,64,2,NULL),(1206,209,64,2,NULL),(1207,262,64,2,NULL),(1208,124,74,2,NULL),(1209,128,74,2,NULL),(1210,124,78,2,NULL),(1211,128,78,2,NULL),(1212,274,64,2,NULL),(1213,124,82,2,NULL),(1214,128,82,2,NULL),(1215,124,83,2,NULL),(1216,128,83,2,NULL),(1217,124,22,2,NULL),(1218,128,22,2,NULL),(1219,124,54,2,NULL),(1220,128,54,2,NULL),(1221,20,64,2,NULL),(1222,25,64,2,NULL),(1223,180,64,2,NULL),(1224,183,64,2,NULL),(1225,124,73,2,NULL),(1226,128,73,2,NULL),(1227,124,84,2,NULL),(1228,128,84,2,NULL),(1229,124,85,2,NULL),(1230,128,85,2,NULL),(1231,284,64,2,NULL),(1232,124,92,2,NULL),(1233,128,92,2,NULL),(1234,40,70,2,NULL),(1235,198,59,2,NULL),(1236,206,1,2,NULL),(1237,209,1,2,NULL),(1238,262,1,2,NULL),(1239,206,4,2,NULL),(1240,209,4,2,NULL),(1241,262,4,2,NULL),(1242,35,70,2,NULL),(1243,206,26,2,NULL),(1244,209,26,2,NULL),(1245,262,26,2,NULL),(1246,206,34,2,NULL),(1247,209,34,2,NULL),(1248,262,34,2,NULL),(1249,206,40,2,NULL),(1250,209,40,2,NULL),(1251,262,40,2,NULL),(1252,206,46,2,NULL),(1253,209,46,2,NULL),(1254,262,46,2,NULL),(1255,206,53,2,NULL),(1256,209,53,2,NULL),(1257,262,53,2,NULL),(1258,97,70,2,NULL),(1259,102,70,2,NULL),(1260,59,70,2,NULL),(1261,64,70,2,NULL),(1262,169,70,2,NULL),(1263,206,61,2,NULL),(1264,209,61,2,NULL),(1265,262,61,2,NULL),(1266,206,67,2,NULL),(1267,209,67,2,NULL),(1268,262,67,2,NULL),(1269,199,70,2,NULL),(1270,206,75,2,NULL),(1271,209,75,2,NULL),(1272,262,75,2,NULL),(1273,206,79,2,NULL),(1274,209,79,2,NULL),(1275,262,79,2,NULL),(1276,206,74,2,NULL),(1277,209,74,2,NULL),(1278,262,74,2,NULL),(1279,206,78,2,NULL),(1280,209,78,2,NULL),(1281,262,78,2,NULL),(1282,274,70,2,NULL),(1283,206,82,2,NULL),(1284,209,82,2,NULL),(1285,262,82,2,NULL),(1286,206,83,2,NULL),(1287,209,83,2,NULL),(1288,262,83,2,NULL),(1289,206,22,2,NULL),(1290,209,22,2,NULL),(1291,262,22,2,NULL),(1292,206,54,2,NULL),(1293,209,54,2,NULL),(1294,262,54,2,NULL),(1295,20,70,2,NULL),(1296,25,70,2,NULL),(1297,180,70,2,NULL),(1298,183,70,2,NULL),(1299,206,73,2,NULL),(1300,209,73,2,NULL),(1301,262,73,2,NULL),(1302,206,84,2,NULL),(1303,209,84,2,NULL),(1304,262,84,2,NULL),(1305,206,85,2,NULL),(1306,209,85,2,NULL),(1307,262,85,2,NULL),(1308,284,70,2,NULL),(1309,206,92,2,NULL),(1310,209,92,2,NULL),(1311,262,92,2,NULL),(1312,35,74,2,NULL),(1313,97,74,2,NULL),(1314,102,74,2,NULL),(1315,59,74,2,NULL),(1316,64,74,2,NULL),(1317,169,74,2,NULL),(1318,199,74,2,NULL),(1319,274,74,2,NULL),(1320,20,74,2,NULL),(1321,25,74,2,NULL),(1322,180,74,2,NULL),(1323,183,74,2,NULL),(1324,284,74,2,NULL),(1325,63,82,2,NULL),(1326,68,82,2,NULL),(1327,277,82,2,NULL),(1328,35,78,2,NULL),(1329,97,78,2,NULL),(1330,102,78,2,NULL),(1331,59,78,2,NULL),(1332,64,78,2,NULL),(1333,169,78,2,NULL),(1334,199,78,2,NULL),(1335,274,78,2,NULL),(1336,20,78,2,NULL),(1337,25,78,2,NULL),(1338,180,78,2,NULL),(1339,183,78,2,NULL),(1340,284,78,2,NULL),(1341,164,59,2,NULL),(1342,274,1,2,NULL),(1343,274,4,2,NULL),(1344,274,26,2,NULL),(1345,274,34,2,NULL),(1346,274,40,2,NULL),(1347,274,46,2,NULL),(1348,274,53,2,NULL),(1349,274,61,2,NULL),(1350,274,67,2,NULL),(1351,274,75,2,NULL),(1352,274,79,2,NULL),(1353,274,82,2,NULL),(1354,274,83,2,NULL),(1355,274,22,2,NULL),(1356,274,54,2,NULL),(1357,274,73,2,NULL),(1358,274,84,2,NULL),(1359,274,85,2,NULL),(1360,274,92,2,NULL),(1361,35,82,2,NULL),(1362,97,82,2,NULL),(1363,102,82,2,NULL),(1364,59,82,2,NULL),(1365,64,82,2,NULL),(1366,169,82,2,NULL),(1367,199,82,2,NULL),(1368,20,82,2,NULL),(1369,25,82,2,NULL),(1370,180,82,2,NULL),(1371,183,82,2,NULL),(1372,284,82,2,NULL),(1373,83,82,2,NULL),(1374,105,82,2,NULL),(1375,258,82,2,NULL),(1376,35,83,2,NULL),(1377,97,83,2,NULL),(1378,102,83,2,NULL),(1379,59,83,2,NULL),(1380,64,83,2,NULL),(1381,169,83,2,NULL),(1382,199,83,2,NULL),(1383,20,83,2,NULL),(1384,25,83,2,NULL),(1385,180,83,2,NULL),(1386,183,83,2,NULL),(1387,284,83,2,NULL),(1388,217,75,2,NULL),(1389,219,75,2,NULL),(1390,259,75,2,NULL),(1391,224,75,2,NULL),(1392,267,75,2,NULL),(1393,270,75,2,NULL),(1394,16,46,2,NULL),(1395,247,14,2,NULL),(1396,35,1,2,NULL),(1397,35,4,2,NULL),(1398,35,26,2,NULL),(1399,35,34,2,NULL),(1400,35,40,2,NULL),(1401,35,46,2,NULL),(1402,35,53,2,NULL),(1403,35,61,2,NULL),(1404,35,67,2,NULL),(1405,35,75,2,NULL),(1406,35,79,2,NULL),(1407,35,22,2,NULL),(1408,35,54,2,NULL),(1409,35,73,2,NULL),(1410,35,84,2,NULL),(1411,35,85,2,NULL),(1412,35,92,2,NULL),(1413,135,46,2,NULL),(1414,165,75,2,NULL),(1415,97,26,2,NULL),(1416,102,26,2,NULL),(1417,59,26,2,NULL),(1418,64,26,2,NULL),(1419,169,26,2,NULL),(1420,199,26,2,NULL),(1421,20,26,2,NULL),(1422,25,26,2,NULL),(1423,180,26,2,NULL),(1424,183,26,2,NULL),(1425,284,26,2,NULL),(1426,179,75,2,NULL),(1427,190,46,2,NULL),(1428,97,34,2,NULL),(1429,102,34,2,NULL),(1430,59,34,2,NULL),(1431,64,34,2,NULL),(1432,169,34,2,NULL),(1433,199,34,2,NULL),(1434,20,34,2,NULL),(1435,25,34,2,NULL),(1436,180,34,2,NULL),(1437,183,34,2,NULL),(1438,284,34,2,NULL),(1439,194,75,2,NULL),(1440,97,40,2,NULL),(1441,102,40,2,NULL),(1442,59,40,2,NULL),(1443,64,40,2,NULL),(1444,169,40,2,NULL),(1445,199,40,2,NULL),(1446,20,40,2,NULL),(1447,25,40,2,NULL),(1448,180,40,2,NULL),(1449,183,40,2,NULL),(1450,284,40,2,NULL),(1451,208,75,2,NULL),(1452,257,14,2,NULL),(1453,261,14,2,NULL),(1454,97,46,2,NULL),(1455,102,46,2,NULL),(1456,59,46,2,NULL),(1457,64,46,2,NULL),(1458,169,46,2,NULL),(1459,199,46,2,NULL),(1460,20,46,2,NULL),(1461,25,46,2,NULL),(1462,180,46,2,NULL),(1463,183,46,2,NULL),(1464,284,46,2,NULL),(1465,44,46,2,NULL),(1466,97,1,2,NULL),(1467,102,1,2,NULL),(1468,97,4,2,NULL),(1469,102,4,2,NULL),(1470,59,53,2,NULL),(1471,64,53,2,NULL),(1472,169,53,2,NULL),(1473,97,61,2,NULL),(1474,102,61,2,NULL),(1475,97,67,2,NULL),(1476,102,67,2,NULL),(1477,199,53,2,NULL),(1478,97,75,2,NULL),(1479,102,75,2,NULL),(1480,97,79,2,NULL),(1481,102,79,2,NULL),(1482,97,22,2,NULL),(1483,102,22,2,NULL),(1484,97,54,2,NULL),(1485,102,54,2,NULL),(1486,20,53,2,NULL),(1487,25,53,2,NULL),(1488,180,53,2,NULL),(1489,183,53,2,NULL),(1490,97,73,2,NULL),(1491,102,73,2,NULL),(1492,97,84,2,NULL),(1493,102,84,2,NULL),(1494,97,85,2,NULL),(1495,102,85,2,NULL),(1496,284,53,2,NULL),(1497,97,92,2,NULL),(1498,102,92,2,NULL),(1499,50,57,2,NULL),(1500,106,46,2,NULL),(1501,59,1,2,NULL),(1502,64,1,2,NULL),(1503,169,1,2,NULL),(1504,59,4,2,NULL),(1505,64,4,2,NULL),(1506,169,4,2,NULL),(1507,59,61,2,NULL),(1508,64,61,2,NULL),(1509,169,61,2,NULL),(1510,59,67,2,NULL),(1511,64,67,2,NULL),(1512,169,67,2,NULL),(1513,59,75,2,NULL),(1514,64,75,2,NULL),(1515,169,75,2,NULL),(1516,59,79,2,NULL),(1517,64,79,2,NULL),(1518,169,79,2,NULL),(1519,59,22,2,NULL),(1520,64,22,2,NULL),(1521,169,22,2,NULL),(1522,59,54,2,NULL),(1523,64,54,2,NULL),(1524,169,54,2,NULL),(1525,59,73,2,NULL),(1526,64,73,2,NULL),(1527,169,73,2,NULL),(1528,59,84,2,NULL),(1529,64,84,2,NULL),(1530,169,84,2,NULL),(1531,59,85,2,NULL),(1532,64,85,2,NULL),(1533,169,85,2,NULL),(1534,59,92,2,NULL),(1535,64,92,2,NULL),(1536,169,92,2,NULL),(1537,199,61,2,NULL),(1538,20,61,2,NULL),(1539,25,61,2,NULL),(1540,180,61,2,NULL),(1541,183,61,2,NULL),(1542,284,61,2,NULL),(1543,23,75,2,NULL),(1544,76,75,2,NULL),(1545,79,75,2,NULL),(1546,199,67,2,NULL),(1547,20,67,2,NULL),(1548,25,67,2,NULL),(1549,180,67,2,NULL),(1550,183,67,2,NULL),(1551,284,67,2,NULL),(1552,265,46,2,NULL),(1553,199,1,2,NULL),(1554,199,4,2,NULL),(1555,199,75,2,NULL),(1556,199,79,2,NULL),(1557,199,22,2,NULL),(1558,199,54,2,NULL),(1559,199,73,2,NULL),(1560,199,84,2,NULL),(1561,199,85,2,NULL),(1562,199,92,2,NULL),(1563,20,75,2,NULL),(1564,25,75,2,NULL),(1565,180,75,2,NULL),(1566,183,75,2,NULL),(1567,284,75,2,NULL),(1568,9,75,2,NULL),(1569,14,75,2,NULL),(1570,174,75,2,NULL),(1571,20,79,2,NULL),(1572,25,79,2,NULL),(1573,180,79,2,NULL),(1574,183,79,2,NULL),(1575,284,79,2,NULL),(1576,20,1,2,NULL),(1577,25,1,2,NULL),(1578,180,1,2,NULL),(1579,183,1,2,NULL),(1580,284,1,2,NULL),(1581,1,1,2,NULL),(1582,5,1,2,NULL),(1583,20,4,2,NULL),(1584,25,4,2,NULL),(1585,180,4,2,NULL),(1586,183,4,2,NULL),(1587,284,4,2,NULL),(1588,17,35,2,NULL),(1589,41,37,2,NULL),(1590,62,42,2,NULL),(1591,111,31,2,NULL),(1592,117,27,2,NULL),(1593,141,47,2,NULL),(1594,20,22,2,NULL),(1595,25,22,2,NULL),(1596,180,22,2,NULL),(1597,183,22,2,NULL),(1598,284,22,2,NULL),(1599,33,50,2,NULL),(1600,82,22,2,NULL),(1601,92,22,2,NULL),(1602,154,22,2,NULL),(1603,37,22,2,NULL),(1604,175,22,2,NULL),(1605,130,22,2,NULL),(1606,150,22,2,NULL),(1607,96,50,2,NULL),(1608,99,22,2,NULL),(1609,103,27,2,NULL),(1610,45,27,2,NULL),(1611,170,22,2,NULL),(1612,30,42,2,NULL),(1613,87,27,2,NULL),(1614,107,60,2,NULL),(1615,133,60,2,NULL),(1616,20,54,2,NULL),(1617,25,54,2,NULL),(1618,180,54,2,NULL),(1619,183,54,2,NULL),(1620,284,54,2,NULL),(1621,57,22,2,NULL),(1622,65,22,2,NULL),(1623,70,22,2,NULL),(1624,146,22,2,NULL),(1625,159,22,2,NULL),(1626,20,73,2,NULL),(1627,25,73,2,NULL),(1628,180,73,2,NULL),(1629,183,73,2,NULL),(1630,20,84,2,NULL),(1631,25,84,2,NULL),(1632,180,84,2,NULL),(1633,183,84,2,NULL),(1634,20,85,2,NULL),(1635,25,85,2,NULL),(1636,180,85,2,NULL),(1637,183,85,2,NULL),(1638,20,92,2,NULL),(1639,25,92,2,NULL),(1640,180,92,2,NULL),(1641,183,92,2,NULL),(1642,49,63,2,NULL),(1643,284,73,2,NULL),(1644,284,84,2,NULL),(1645,283,93,2,NULL),(1646,285,89,2,NULL),(1647,286,86,2,NULL),(1648,288,87,2,NULL),(1649,289,88,2,NULL),(1650,284,92,2,NULL),(1651,282,89,2,NULL),(1652,298,86,2,NULL),(1653,297,85,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:28
