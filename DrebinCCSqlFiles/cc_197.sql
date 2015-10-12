-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_197
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.SENDTO'),(10,'android.intent.action.VIEW'),(8,'android.search.action.SEARCH_SETTINGS'),(2,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(3,'android.settings.APPLICATION_SETTINGS'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'com.igamepower.appmaster.GameBootReceiver'),(14,'com.igamepower.appmaster.Myhall'),(12,'com.igamepower.appmaster.Web'),(9,'com.motorola.blur.contacts.VIEW_PEOPLE_BYCOMMUNICATION'),(15,'com.zft.task.result');
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
INSERT INTO `Applications` VALUES (1,'com.z4mod.z4root',2),(2,'Super.mobi.eraser',4),(3,'com.z4mod.z4root',6),(4,'com.igamepower.appmaster',1003),(5,'com.igamepower.appmaster',1004),(6,'com.zft',1),(7,'com.zft',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.DEVELOPMENT_PREFERENCE'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(6,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.z4mod.z4root.z4root'),(2,1,'com.z4mod.z4root.Phase1'),(3,1,'com.z4mod.z4root.Phase2'),(4,1,'com.z4mod.z4root.TermPreferences'),(5,1,'com.z4mod.z4root.AlarmReceiver'),(6,1,'com.z4mod.z4root.Phase1$4'),(7,2,'mobi.infolife.eraser.MainActivity'),(8,2,'com.android.root.main'),(9,2,'com.android.root.Setting'),(10,2,'com.android.root.AlarmReceiver'),(11,2,'mobi.infolife.eraser.Widget'),(12,1,'com.z4mod.z4root.z4root$1'),(13,3,'com.z4mod.z4root.z4root'),(14,3,'com.z4mod.z4root.Phase1'),(15,3,'com.z4mod.z4root.Phase2'),(16,3,'com.z4mod.z4root.PhaseRemove'),(17,3,'com.admob.android.ads.AdMobActivity'),(18,3,'com.z4mod.z4root.AlarmReceiver'),(19,4,'com.igamepower.appmaster.Myhall'),(20,4,'com.igamepower.appmaster.HomeActivity'),(21,4,'com.igamepower.appmaster.SortActivity1'),(22,4,'com.igamepower.appmaster.SortActivity2'),(23,5,'com.igamepower.appmaster.Myhall'),(24,4,'com.igamepower.appmaster.SearchActivity'),(25,5,'com.igamepower.appmaster.Web'),(26,4,'com.igamepower.appmaster.ManagerActivity'),(27,5,'com.igamepower.appmaster.HomeActivity'),(28,4,'com.igamepower.appmaster.GameInfo'),(29,5,'com.igamepower.appmaster.SortActivity1'),(30,5,'com.igamepower.appmaster.SortActivity2'),(31,4,'com.igamepower.appmaster.TableClass'),(32,5,'com.igamepower.appmaster.SearchActivity'),(33,4,'com.igamepower.appmaster.Web'),(34,5,'com.igamepower.appmaster.ManagerActivity'),(35,4,'com.igamepower.appmaster.GameAlertDialog'),(36,5,'com.igamepower.appmaster.GameInfo'),(37,4,'com.igamepower.appmaster.TestView'),(38,5,'com.igamepower.appmaster.TableClass'),(39,4,'com.igamepower.appmaster.DevelopmentSettings'),(40,5,'com.igamepower.appmaster.GameAlertDialog'),(41,4,'com.igamepower.appmaster.GameService'),(42,5,'com.igamepower.appmaster.TestView'),(43,5,'com.igamepower.appmaster.DevelopmentSettings'),(44,4,'com.igamepower.appmaster.GameBootReceiver'),(45,5,'com.igamepower.appmaster.GameService'),(46,5,'com.igamepower.appmaster.GameBootReceiver'),(47,6,'com.zft.QLogoPage'),(48,6,'com.zft.setting_.QAideTools'),(49,6,'com.zft.setting_.QUserDefineZF'),(50,6,'com.zft.setting_.QCallSetting'),(51,6,'com.zft.setting_.QGracePeriod'),(52,6,'com.zft.setting_.QHFWarnning'),(53,6,'com.zft.setting_.QIPSetting_'),(54,6,'com.zft.setting_.QPresentCall'),(55,6,'com.zft.setting_.QRomaSetting'),(56,6,'com.zft.setting_.QTHFCalc'),(57,6,'com.zft.setting_.QSpecialNumber'),(58,6,'com.zft.setting_.QTrafficSetting'),(59,6,'com.zft.setting_.QSMSSetting_'),(60,6,'com.zft.setting_.QCallInfoShowPosition'),(61,6,'com.zft.QDescriptionPage'),(62,6,'com.zft.subpage.QSmsSubPage'),(63,6,'com.zft.QDefinningTc'),(64,6,'com.zft.QChangeTC'),(65,6,'com.zft.QLocationPage'),(66,6,'com.zft.QMainPage'),(67,6,'com.zft.QRegistPage'),(68,6,'com.zft.QSelectTC'),(69,6,'com.zft.QSelectMainTc'),(70,6,'com.zft.QSelectNetTc'),(71,6,'com.zft.QDetailMainTc'),(72,6,'com.zft.QFeatruePage'),(73,3,'com.z4mod.z4root.Phase1$4'),(74,6,'com.zft.QTcInfo'),(75,6,'com.zft.subpage.QTrafficSubPage'),(76,6,'com.zft.subpage.QSmdrPage'),(77,6,'com.zft.subpage.QChargePage'),(78,6,'com.zft.subpage.QFeedBackPage'),(79,6,'com.zft.subpage.QFriendsPage'),(80,6,'com.core.components.QSubList'),(81,7,'com.zft.QLogoPage'),(82,6,'com.zft.QCallReport'),(83,7,'com.zft.setting_.QAideTools'),(84,6,'com.zft.subpage.QPieSubPage'),(85,3,'com.z4mod.z4root.z4root$2'),(86,6,'com.zft.subpage.QBarChartSubPage'),(87,6,'com.service.ZftService'),(88,7,'com.zft.setting_.QUserDefineZF'),(89,6,'com.service.BootBroadcastReceiver'),(90,7,'com.zft.setting_.QCallSetting'),(91,6,'com.service.callLogs.LogsContentProvider'),(92,6,'com.provider.Variable'),(93,7,'com.zft.setting_.QGracePeriod'),(94,3,'com.z4mod.z4root.z4root$1'),(95,7,'com.zft.setting_.QHFWarnning'),(96,7,'com.zft.setting_.QIPSetting_'),(97,3,'com.z4mod.z4root.z4root$3'),(98,7,'com.zft.setting_.QPresentCall'),(99,7,'com.zft.setting_.QRomaSetting'),(100,7,'com.zft.setting_.QTHFCalc'),(101,7,'com.zft.setting_.QSpecialNumber'),(102,7,'com.zft.setting_.QTrafficSetting'),(103,7,'com.zft.setting_.QSMSSetting_'),(104,7,'com.zft.setting_.QCallInfoShowPosition'),(105,7,'com.zft.setting_.QHelpAndSupport'),(106,7,'com.zft.information.QInformation'),(107,7,'com.zft.information.QInformation_info'),(108,7,'com.zft.QDescriptionPage'),(109,7,'com.zft.subpage.QSmsSubPage'),(110,7,'com.zft.QDefinningTc'),(111,7,'com.zft.QChangeTC'),(112,5,'com.igamepower.appmaster.aq'),(113,7,'com.zft.QLocationPage'),(114,7,'com.zft.QMainPage'),(115,4,'com.igamepower.appmaster.bj'),(116,7,'com.zft.QRegistPage'),(117,7,'com.zft.QSelectTC'),(118,7,'com.zft.QSelectMainTc'),(119,7,'com.zft.QSelectNetTc'),(120,7,'com.zft.QDetailMainTc'),(121,7,'com.zft.QFeatruePage'),(122,7,'com.zft.QTcInfo'),(123,7,'com.zft.QChangeTC_'),(124,7,'com.zft.subpage.QTrafficSubPage'),(125,7,'com.zft.subpage.QSmdrPage'),(126,7,'com.zft.subpage.QChargePage'),(127,4,'com.igamepower.appmaster.ao'),(128,5,'com.igamepower.appmaster.bu'),(129,7,'com.zft.subpage.QFeedBackPage'),(130,7,'com.zft.subpage.QFriendsPage'),(131,7,'com.core.components.QSubList'),(132,7,'com.zft.happysms.MainActivity'),(133,7,'com.zft.QCallReport'),(134,7,'com.zft.subpage.QPieSubPage'),(135,7,'com.zft.subpage.QBarChartSubPage'),(136,5,'com.igamepower.appmaster.cl'),(137,7,'com.zft.subpage.QSmsduSubPage'),(138,7,'com.service.ZftService'),(139,7,'com.service.BootBroadcastReceiver'),(140,7,'com.zft.CheckChargeReceiver'),(141,4,'com.igamepower.appmaster.bh'),(142,7,'com.service.callLogs.LogsContentProvider'),(143,7,'com.provider.Variable'),(144,5,'com.igamepower.appmaster.bj'),(145,7,'com.service.netraffic.TrafficProvider'),(146,4,'com.igamepower.appmaster.z'),(147,4,'com.igamepower.appmaster.ah'),(148,4,'com.igamepower.appmaster.bs'),(149,5,'com.igamepower.appmaster.bl'),(150,4,'com.igamepower.appmaster.bn'),(151,5,'com.igamepower.appmaster.aa'),(152,5,'com.igamepower.appmaster.bk'),(153,4,'com.igamepower.appmaster.bi'),(154,5,'com.igamepower.appmaster.ai'),(155,4,'com.igamepower.appmaster.cj'),(156,5,'com.igamepower.appmaster.bp');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'UMENG_CHANNEL'),(2,6,'UMENG_APPKEY'),(3,15,'ru'),(4,15,'au'),(5,15,'$'),(6,15,'skd'),(7,15,'sin'),(8,15,'o'),(9,15,'sd'),(10,15,'s'),(11,15,'int'),(12,15,'b'),(13,15,'t'),(14,15,'oi'),(15,15,'c'),(16,15,'json'),(17,15,'a'),(18,15,'p'),(19,15,'ad'),(20,15,'rd'),(21,15,'u'),(22,15,'or'),(23,15,'msm'),(24,15,'su'),(25,15,'cbo'),(26,15,'ap'),(27,15,'mi'),(28,15,'sku'),(29,15,'nosk'),(30,15,'cs'),(31,15,'si'),(32,15,'tr'),(33,15,'sc'),(34,24,'app_name'),(35,24,'soft_id'),(36,24,'completed'),(37,30,'package_name'),(38,38,'url'),(39,22,'package_name'),(40,28,'nextclassid'),(41,34,'from_table'),(42,33,'btn_txt'),(43,38,'content'),(44,22,'status'),(45,24,'filepath'),(46,32,'status'),(47,32,'total'),(48,32,'completed'),(49,24,'status'),(50,20,'package_name'),(51,32,'url'),(52,32,'soft_id'),(53,24,'url'),(54,20,'version_code'),(55,26,'status'),(56,24,'total'),(57,32,'icon'),(58,32,'app_name'),(59,33,'content'),(60,26,'title'),(61,32,'package_name'),(62,28,'status'),(63,20,'nextclassid'),(64,21,'nextclassid'),(65,20,'status'),(66,24,'package_name'),(67,28,'package_name'),(68,38,'title'),(69,34,'title'),(70,33,'url'),(71,32,'filepath'),(72,24,'icon'),(73,17,'nextclassid'),(74,33,'title'),(75,38,'btn_txt'),(76,34,'filepath'),(77,30,'version_code'),(78,34,'status'),(79,26,'from_table'),(80,22,'version_code'),(81,26,'filepath'),(82,30,'status');
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',0,NULL,NULL),(6,7,'a',0,NULL,NULL),(7,8,'a',1,NULL,NULL),(8,9,'s',0,NULL,NULL),(9,10,'s',0,NULL,NULL),(10,11,'r',1,NULL,NULL),(11,13,'a',1,NULL,NULL),(12,14,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'r',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'a',0,NULL,NULL),(19,21,'a',0,NULL,NULL),(20,22,'a',1,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',1,NULL,NULL),(23,25,'a',1,NULL,NULL),(24,26,'a',1,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,28,'a',1,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',1,NULL,NULL),(29,31,'a',1,NULL,NULL),(30,32,'a',1,NULL,NULL),(31,33,'a',1,NULL,NULL),(32,34,'a',1,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',1,NULL,NULL),(35,37,'a',1,NULL,NULL),(36,38,'a',1,NULL,NULL),(37,39,'a',1,NULL,NULL),(38,40,'a',0,NULL,NULL),(39,41,'s',1,NULL,NULL),(40,42,'a',1,NULL,NULL),(41,43,'a',1,NULL,NULL),(42,44,'r',1,NULL,NULL),(43,45,'s',1,NULL,NULL),(44,46,'r',1,NULL,NULL),(45,47,'a',1,NULL,NULL),(46,48,'a',0,NULL,NULL),(47,49,'a',0,NULL,NULL),(48,50,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',1,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'a',1,NULL,NULL),(79,82,'a',1,NULL,NULL),(80,83,'a',1,NULL,NULL),(81,84,'a',0,NULL,NULL),(82,86,'a',0,NULL,NULL),(83,87,'s',0,NULL,NULL),(84,88,'a',1,NULL,NULL),(85,89,'r',1,NULL,NULL),(86,90,'a',1,NULL,NULL),(87,91,'p',0,NULL,NULL),(88,92,'p',0,NULL,NULL),(89,93,'a',1,NULL,NULL),(90,95,'a',1,NULL,NULL),(91,96,'a',1,NULL,NULL),(92,98,'a',1,NULL,NULL),(93,99,'a',1,NULL,NULL),(94,100,'a',1,NULL,NULL),(95,101,'a',1,NULL,NULL),(96,102,'a',1,NULL,NULL),(97,103,'a',1,NULL,NULL),(98,104,'a',1,NULL,NULL),(99,105,'a',1,NULL,NULL),(100,106,'a',0,NULL,NULL),(101,107,'a',0,NULL,NULL),(102,108,'a',0,NULL,NULL),(103,109,'a',0,NULL,NULL),(104,110,'a',0,NULL,NULL),(105,111,'a',0,NULL,NULL),(106,113,'a',0,NULL,NULL),(107,114,'a',1,NULL,NULL),(108,116,'a',0,NULL,NULL),(109,117,'a',0,NULL,NULL),(110,118,'a',0,NULL,NULL),(111,119,'a',0,NULL,NULL),(112,120,'a',0,NULL,NULL),(113,121,'a',0,NULL,NULL),(114,122,'a',0,NULL,NULL),(115,123,'a',0,NULL,NULL),(116,124,'a',0,NULL,NULL),(117,125,'a',0,NULL,NULL),(118,126,'a',0,NULL,NULL),(119,129,'a',0,NULL,NULL),(120,130,'a',0,NULL,NULL),(121,131,'a',0,NULL,NULL),(122,132,'a',0,NULL,NULL),(123,133,'a',1,NULL,NULL),(124,134,'a',0,NULL,NULL),(125,135,'a',0,NULL,NULL),(126,137,'a',0,NULL,NULL),(127,138,'s',0,NULL,NULL),(128,139,'r',1,NULL,NULL),(129,140,'r',1,NULL,NULL),(130,142,'p',0,NULL,NULL),(131,143,'p',0,NULL,NULL),(132,145,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,5),(4,4,1),(5,5,6),(6,6,6),(7,7,6),(8,8,7),(9,9,7),(10,10,6),(11,11,12),(12,12,12),(13,13,11),(14,14,11),(15,15,11),(16,16,16),(17,17,11),(18,18,33),(19,19,34),(20,20,24),(21,21,31),(22,22,28),(23,23,42),(24,24,21),(25,25,26),(26,26,25),(27,27,38),(28,28,40),(29,29,20),(30,30,43),(31,31,26),(32,32,20),(33,33,34),(34,34,33),(35,35,28),(36,36,33),(37,37,38),(38,38,17),(39,39,34),(40,40,17),(41,41,20),(42,42,35),(43,43,36),(44,44,18),(45,45,32),(46,46,26),(47,47,29),(48,48,32),(49,49,31),(50,50,38),(51,51,42),(52,52,21),(53,53,18),(54,54,23),(55,55,20),(56,56,24),(57,57,44),(58,58,18),(59,59,28),(60,60,26),(61,61,20),(62,62,21),(63,63,17),(64,64,32),(65,65,29),(66,66,28),(67,67,22),(68,68,30),(69,69,31),(70,70,23),(71,71,18),(72,72,34),(73,73,30),(74,74,24),(75,75,25),(76,76,42),(77,77,44),(78,78,17),(79,79,25),(80,80,26),(81,81,38),(82,82,36),(83,83,22),(84,84,21),(85,85,20),(86,86,21),(87,87,28),(88,88,17),(89,89,21),(90,90,33),(91,91,21),(92,92,17),(93,93,25),(94,94,39),(95,95,23),(96,96,28),(97,97,18),(98,98,25),(99,99,17),(100,100,18),(101,101,44),(102,102,34),(103,103,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,6,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(3,5,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(4,12,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',12,'a',NULL),(5,7,'<mobi.infolife.eraser.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL),(6,7,'<mobi.infolife.eraser.MainActivity: boolean callQuickSearchSetting()>',7,'a',NULL),(7,7,'<mobi.infolife.eraser.MainActivity: boolean callMotoContactsHistory()>',11,'a',NULL),(8,8,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(9,8,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(10,7,'<mobi.infolife.eraser.MainActivity: boolean callYouTubeSearchSetting()>',10,'a',NULL),(11,73,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(12,73,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(13,13,'<com.z4mod.z4root.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(14,85,'<com.z4mod.z4root.z4root$2: void onClick(android.view.View)>',17,'a',NULL),(15,94,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',17,'a',NULL),(16,18,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(17,97,'<com.z4mod.z4root.z4root$3: void onClick(android.view.View)>',20,'a',NULL),(18,35,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',27,'a',NULL),(19,112,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',198,'a',NULL),(20,115,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(21,33,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',37,'s',NULL),(22,30,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(23,44,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(24,23,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(25,127,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',221,'a',NULL),(26,128,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(27,40,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',52,'a',NULL),(28,42,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(29,22,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(30,136,'<com.igamepower.appmaster.cl: void run()>',55,'a',NULL),(31,28,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',92,'a',NULL),(32,141,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(33,36,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(34,35,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',45,'a',NULL),(35,144,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(36,35,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',36,'a',NULL),(37,40,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',29,'a',NULL),(38,146,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(39,112,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',216,'a',NULL),(40,147,'<com.igamepower.appmaster.ah: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(41,141,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(42,37,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(43,38,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,148,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(45,149,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(46,28,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(47,31,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(48,34,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(49,150,'<com.igamepower.appmaster.bn: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(50,40,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(51,44,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(52,23,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(53,20,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(54,25,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',49,'s',NULL),(55,141,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(56,26,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(57,46,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(58,20,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(59,144,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(60,28,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(61,22,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(62,151,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(63,146,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(64,149,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(65,31,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(66,152,'<com.igamepower.appmaster.bk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(67,24,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(68,32,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(69,33,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',41,'s',NULL),(70,25,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',45,'s',NULL),(71,148,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(72,36,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(73,32,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(74,115,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(75,27,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(76,44,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(77,46,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(78,19,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(79,128,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(80,127,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',240,'a',NULL),(81,40,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',43,'a',NULL),(82,38,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(83,24,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(84,151,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(85,153,'<com.igamepower.appmaster.bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(86,154,'<com.igamepower.appmaster.ai: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(87,144,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(88,19,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(89,151,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(90,35,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',54,'a',NULL),(91,151,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(92,146,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(93,27,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(94,155,'<com.igamepower.appmaster.cj: void run()>',55,'a',NULL),(95,156,'<com.igamepower.appmaster.bp: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(96,30,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(97,148,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(98,128,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(99,146,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(100,20,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',59,'a',NULL),(101,46,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(102,36,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',85,'a',NULL),(103,27,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,3),(3,5,7),(4,6,8),(5,7,9),(6,11,2),(7,12,3),(8,20,10),(9,21,11),(10,22,10),(11,24,12),(12,25,13),(13,26,14),(14,28,10),(15,29,10),(16,30,5),(17,37,5),(18,38,10),(19,39,10),(20,42,1),(21,43,10),(22,44,1),(23,45,1),(24,47,1),(25,49,1),(26,50,1),(27,52,1),(28,54,1),(29,55,1),(30,56,1),(31,58,10),(32,64,10),(33,66,13),(34,73,11),(35,79,12),(36,83,1),(37,85,1),(38,86,13),(39,88,14),(40,89,10),(41,90,1),(42,91,10),(43,92,1),(44,93,10),(45,94,1),(46,95,1),(47,100,10),(48,109,10),(49,111,10),(50,114,10),(51,115,13),(52,117,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,2),(2,7,1),(3,10,3),(4,42,1),(5,44,5),(6,45,1),(7,47,5),(8,49,1),(9,50,5),(10,52,1),(11,54,5),(12,55,1),(13,56,5),(14,83,1),(15,85,5),(16,90,1),(17,92,5),(18,94,1),(19,95,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/z4mod/z4root/Phase2'),(2,4,'com/z4mod/z4root/Phase1'),(3,7,'com.motorola.blur.contacts.ViewIdentitiesActivity'),(4,8,'com/android/root/Setting'),(5,9,'(.*)'),(6,10,'com.google.android.youtube.SettingsActivity'),(7,13,'com/z4mod/z4root/z4root'),(8,14,'com/z4mod/z4root/Phase1'),(9,15,'com/z4mod/z4root/Phase1'),(10,16,'com/z4mod/z4root/Phase2'),(11,17,'com/z4mod/z4root/PhaseRemove'),(12,18,'com/z4mod/z4root/Phase1'),(13,19,'com/igamepower/appmaster/GameInfo'),(14,23,'com/igamepower/appmaster/GameService'),(15,24,'com/igamepower/appmaster/GameService'),(16,25,'com/igamepower/appmaster/GameService'),(17,26,'com/igamepower/appmaster/GameService'),(18,27,'com/igamepower/appmaster/GameInfo'),(19,31,'com/igamepower/appmaster/GameService'),(20,32,'com/igamepower/appmaster/GameInfo'),(21,34,'com/igamepower/appmaster/Myhall'),(22,33,'com/igamepower/appmaster/GameAlertDialog'),(23,35,'com/igamepower/appmaster/Myhall'),(24,36,'com/igamepower/appmaster/GameService'),(25,40,'com/igamepower/appmaster/GameInfo'),(26,41,'com/igamepower/appmaster/Myhall'),(27,46,'com/igamepower/appmaster/GameInfo'),(28,48,'com/igamepower/appmaster/GameService'),(29,51,'com/igamepower/appmaster/GameInfo'),(30,53,'com/igamepower/appmaster/GameService'),(31,57,'com/igamepower/appmaster/GameService'),(32,59,'com/igamepower/appmaster/GameAlertDialog'),(33,60,'com/igamepower/appmaster/GameService'),(34,61,'com/igamepower/appmaster/GameService'),(35,62,'com/igamepower/appmaster/Myhall'),(36,63,'com/igamepower/appmaster/GameService'),(37,65,'com/igamepower/appmaster/GameService'),(38,66,'com/igamepower/appmaster/GameService'),(39,67,'com/igamepower/appmaster/GameInfo'),(40,68,'com/igamepower/appmaster/Myhall'),(41,69,'com/igamepower/appmaster/Myhall'),(42,70,'com/igamepower/appmaster/GameService'),(43,71,'com/igamepower/appmaster/Myhall'),(44,72,'com/igamepower/appmaster/Myhall'),(45,74,'com/igamepower/appmaster/GameInfo'),(46,76,'com/igamepower/appmaster/GameService'),(47,75,'com/igamepower/appmaster/Myhall'),(48,77,'com/igamepower/appmaster/GameInfo'),(49,78,'com/igamepower/appmaster/GameService'),(50,79,'com/igamepower/appmaster/GameService'),(51,80,'com/igamepower/appmaster/Myhall'),(52,81,'com/igamepower/appmaster/Myhall'),(53,82,'com/igamepower/appmaster/GameService'),(54,84,'com/igamepower/appmaster/Myhall'),(55,86,'com/igamepower/appmaster/GameService'),(56,87,'com/igamepower/appmaster/GameService'),(57,88,'com/igamepower/appmaster/GameService'),(58,96,'com/igamepower/appmaster/GameInfo'),(59,97,'com/igamepower/appmaster/GameInfo'),(60,98,'com/igamepower/appmaster/Myhall'),(61,99,'com/igamepower/appmaster/Myhall'),(62,101,'com/igamepower/appmaster/GameInfo'),(63,102,'com/igamepower/appmaster/GameService'),(64,103,'com/igamepower/appmaster/Myhall'),(65,104,'com/igamepower/appmaster/GameAlertDialog'),(66,105,'com/igamepower/appmaster/Myhall'),(67,106,'com/igamepower/appmaster/Myhall'),(68,107,'com/igamepower/appmaster/GameInfo'),(69,108,'com/igamepower/appmaster/GameAlertDialog'),(70,110,'com/igamepower/appmaster/GameInfo'),(71,113,'com/igamepower/appmaster/Myhall'),(72,112,'com/igamepower/appmaster/Myhall'),(73,115,'com/igamepower/appmaster/GameService'),(74,116,'com/igamepower/appmaster/Myhall');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,20,2),(3,21,3),(4,22,4),(5,28,5),(6,29,6),(7,38,7),(8,39,8),(9,43,9),(10,58,10),(11,64,11),(12,73,12),(13,89,13),(14,91,14),(15,93,15),(16,100,16),(17,109,17),(18,111,18),(19,114,19),(20,117,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'android.intent.extra.SUBJECT'),(2,19,'id'),(3,19,'from_table'),(4,19,'detail_flag'),(5,27,'title'),(6,32,'title'),(7,33,'title'),(8,33,'btn_txt'),(9,33,'need_adb_flag'),(10,33,'cont'),(11,33,'close_flag'),(12,35,'title'),(13,35,'nextclassid'),(14,35,'clicked'),(15,40,'id'),(16,40,'from_table'),(17,40,'detail_flag'),(18,41,'clicked'),(19,46,'title'),(20,51,'title'),(21,59,'title'),(22,59,'btn_txt'),(23,59,'need_adb_flag'),(24,59,'cont'),(25,59,'close_flag'),(26,62,'nextclassid'),(27,62,'clicked'),(28,68,'title'),(29,68,'nextclassid'),(30,68,'clicked'),(31,71,'clicked'),(32,72,'clicked'),(33,75,'title'),(34,75,'nextclassid'),(35,75,'clicked'),(36,80,'title'),(37,80,'nextclassid'),(38,80,'clicked'),(39,84,'nextclassid'),(40,84,'clicked'),(41,98,'clicked'),(42,99,'title'),(43,99,'nextclassid'),(44,99,'clicked'),(45,101,'title'),(46,103,'clicked'),(47,104,'title'),(48,104,'btn_txt'),(49,104,'need_adb_flag'),(50,104,'cont'),(51,104,'close_flag'),(52,105,'clicked'),(53,106,'clicked'),(54,108,'title'),(55,108,'btn_txt'),(56,108,'need_adb_flag'),(57,108,'cont'),(58,108,'close_flag'),(59,110,'title'),(60,112,'title'),(61,112,'nextclassid'),(62,113,'clicked'),(63,112,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,5),(19,19,1),(20,20,1),(21,21,5),(22,22,6),(23,23,1),(24,24,6),(25,25,1),(26,26,1),(27,27,1),(28,28,10),(29,29,1),(30,30,1),(31,31,6),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,10),(46,46,6),(47,47,15),(48,48,16),(49,49,16),(50,50,17),(51,51,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,7,1),(5,13,1),(6,19,1),(7,23,1),(8,25,1),(9,26,2),(10,27,1),(11,28,2),(12,29,4),(13,30,4),(14,32,4),(15,33,4),(16,34,4),(17,35,4),(18,36,4),(19,37,4),(20,38,4),(21,39,4),(22,40,4),(23,41,4),(24,42,4),(25,43,4),(26,44,2),(27,45,2),(28,48,6),(29,49,6),(30,50,6),(31,51,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,48,'package',NULL,NULL,NULL,NULL,NULL),(2,49,'package',NULL,NULL,NULL,NULL,NULL),(3,50,'package',NULL,NULL,NULL,NULL,NULL),(4,51,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,20,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,28,'application','vnd.android.package-archive'),(4,29,'application','vnd.android.package-archive'),(5,43,'application','vnd.android.package-archive'),(6,58,'application','vnd.android.package-archive'),(7,100,'application','vnd.android.package-archive'),(8,109,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.z4mod.z4root'),(2,4,'com.z4mod.z4root'),(3,7,'com.motorola.blur.contacts'),(4,8,'Super.mobi.eraser'),(5,9,'Super.mobi.eraser'),(6,10,'com.google.android.youtube'),(7,13,'com.z4mod.z4root'),(8,14,'com.z4mod.z4root'),(9,15,'com.z4mod.z4root'),(10,16,'com.z4mod.z4root'),(11,17,'com.z4mod.z4root'),(12,18,'com.z4mod.z4root'),(13,19,'com.igamepower.appmaster'),(14,23,'com.igamepower.appmaster'),(15,24,'com.igamepower.appmaster'),(16,25,'com.igamepower.appmaster'),(17,26,'com.igamepower.appmaster'),(18,27,'com.igamepower.appmaster'),(19,31,'com.igamepower.appmaster'),(20,32,'com.igamepower.appmaster'),(21,34,'com.igamepower.appmaster'),(22,33,'com.igamepower.appmaster'),(23,35,'com.igamepower.appmaster'),(24,36,'com.igamepower.appmaster'),(25,40,'com.igamepower.appmaster'),(26,41,'com.igamepower.appmaster'),(27,42,'(.*)'),(28,44,''),(29,45,''),(30,46,'com.igamepower.appmaster'),(31,47,'(.*)'),(32,48,'com.igamepower.appmaster'),(33,49,'(.*)'),(34,50,'(.*)'),(35,51,'com.igamepower.appmaster'),(36,53,'com.igamepower.appmaster'),(37,52,'NULL-CONSTANT'),(38,54,'NULL-CONSTANT'),(39,55,'(.*)'),(40,56,'(.*)'),(41,57,'com.igamepower.appmaster'),(42,59,'com.igamepower.appmaster'),(43,60,'com.igamepower.appmaster'),(44,61,'com.igamepower.appmaster'),(45,62,'com.igamepower.appmaster'),(46,63,'com.igamepower.appmaster'),(47,65,'com.igamepower.appmaster'),(48,66,'com.igamepower.appmaster'),(49,67,'com.igamepower.appmaster'),(50,68,'com.igamepower.appmaster'),(51,69,'com.igamepower.appmaster'),(52,70,'com.igamepower.appmaster'),(53,71,'com.igamepower.appmaster'),(54,72,'com.igamepower.appmaster'),(55,74,'com.igamepower.appmaster'),(56,76,'com.igamepower.appmaster'),(57,75,'com.igamepower.appmaster'),(58,77,'com.igamepower.appmaster'),(59,78,'com.igamepower.appmaster'),(60,79,'com.igamepower.appmaster'),(61,80,'com.igamepower.appmaster'),(62,81,'com.igamepower.appmaster'),(63,82,'com.igamepower.appmaster'),(64,83,'NULL-CONSTANT'),(65,85,'NULL-CONSTANT'),(66,84,'com.igamepower.appmaster'),(67,86,'com.igamepower.appmaster'),(68,87,'com.igamepower.appmaster'),(69,88,'com.igamepower.appmaster'),(70,90,'(.*)'),(71,92,''),(72,94,''),(73,95,'(.*)'),(74,96,'com.igamepower.appmaster'),(75,97,'com.igamepower.appmaster'),(76,98,'com.igamepower.appmaster'),(77,99,'com.igamepower.appmaster'),(78,101,'com.igamepower.appmaster'),(79,102,'com.igamepower.appmaster'),(80,103,'com.igamepower.appmaster'),(81,104,'com.igamepower.appmaster'),(82,105,'com.igamepower.appmaster'),(83,106,'com.igamepower.appmaster'),(84,107,'com.igamepower.appmaster'),(85,108,'com.igamepower.appmaster'),(86,110,'com.igamepower.appmaster'),(87,113,'com.igamepower.appmaster'),(88,112,'com.igamepower.appmaster'),(89,115,'com.igamepower.appmaster'),(90,116,'com.igamepower.appmaster');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,10,0),(4,11,0),(5,20,0),(6,22,0),(7,23,0),(8,24,0),(9,26,0),(10,28,0),(11,29,0),(12,30,0),(13,31,0),(14,32,0),(15,34,0),(16,35,0),(17,36,0),(18,37,0),(19,39,0),(20,40,0),(21,41,0),(22,42,0),(23,43,0),(24,44,0),(25,45,0),(26,64,0),(27,78,0),(28,79,0),(29,80,0),(30,84,0),(31,85,0),(32,86,0),(33,89,0),(34,90,0),(35,91,0),(36,92,0),(37,93,0),(38,94,0),(39,95,0),(40,96,0),(41,97,0),(42,98,0),(43,99,0),(44,107,0),(45,123,0),(46,128,0),(47,129,0),(48,44,0),(49,42,0),(50,42,0),(51,44,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,1,0),(12,12,1,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,17,0,0),(19,18,0,0),(20,19,1,0),(21,20,1,0),(22,19,1,0),(23,22,0,0),(24,21,0,0),(25,23,0,0),(26,24,0,0),(27,26,0,0),(28,25,1,0),(29,25,1,0),(30,27,1,0),(31,28,0,0),(32,29,0,0),(33,30,0,0),(34,31,0,0),(35,32,0,0),(36,33,0,0),(37,34,1,0),(38,35,1,0),(39,36,1,0),(40,37,0,0),(41,38,0,0),(42,39,1,0),(43,40,1,0),(44,39,1,0),(45,39,1,0),(46,41,0,0),(47,39,1,0),(48,42,0,0),(49,43,1,0),(50,43,1,0),(51,44,0,0),(52,45,1,0),(53,46,0,0),(54,45,1,0),(55,47,1,0),(56,47,1,0),(57,48,0,0),(58,49,1,0),(59,50,0,0),(60,51,0,0),(61,52,0,0),(62,53,0,0),(63,54,0,0),(64,55,1,0),(65,56,0,0),(66,57,0,0),(67,58,0,0),(68,59,0,0),(69,60,0,0),(70,61,0,0),(71,62,0,0),(72,63,0,0),(73,64,1,0),(74,65,0,0),(75,66,0,0),(76,67,0,0),(77,68,0,0),(78,69,0,0),(79,70,0,0),(80,71,0,0),(81,72,0,0),(82,73,0,0),(83,74,1,0),(84,75,0,0),(85,74,1,0),(86,76,0,0),(87,77,0,0),(88,78,0,0),(89,79,1,0),(90,80,1,0),(91,81,1,0),(92,80,1,0),(93,81,1,0),(94,80,1,0),(95,80,1,0),(96,82,0,0),(97,83,0,0),(98,84,0,0),(99,85,0,0),(100,86,1,0),(101,87,0,0),(102,88,0,0),(103,89,0,0),(104,90,0,0),(105,91,0,0),(106,92,0,0),(107,93,0,0),(108,94,0,0),(109,95,1,0),(110,96,0,0),(111,97,1,0),(112,98,0,0),(113,99,0,0),(114,100,1,0),(115,101,0,0),(116,102,0,0),(117,103,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.service.callLogs.LogsContentProvider'),(2,2,'com.provider.Variable'),(3,3,'com.service.callLogs.LogsContentProvider'),(4,4,'com.provider.Variable'),(5,5,'com.service.net.TrafficContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_CACHE_FILESYSTEM'),(10,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(24,'android.permission.ADD_SYSTEM_SERVICE'),(30,'android.permission.CALL_PHONE'),(34,'android.permission.CHANGE_NETWORK_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.DELETE_CACHE_FILES'),(35,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(31,'android.permission.MODIFY_AUDIO_SETTINGS'),(33,'android.permission.MODIFY_PHONE_STATE'),(20,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(27,'android.permission.PROCESS_OUTGOING_CALLS'),(8,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(23,'android.permission.READ_OWNER_DATA'),(2,'android.permission.READ_PHONE_STATE'),(32,'android.permission.READ_SMS'),(21,'android.permission.RECEIVE_BOOT_COMPLETED'),(29,'android.permission.RECEIVE_SMS'),(18,'android.permission.RESTART_PACKAGES'),(25,'android.permission.SEND_SMS'),(1,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_OWNER_DATA'),(17,'android.permission.WRITE_SECURE_SETTINGS'),(22,'android.permission.WRITE_SETTINGS'),(28,'android.permission.WRITE_SMS'),(11,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(4,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(12,'com.android.launcher.permission.INSTALL_SHORTCUT'),(19,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,87,0,NULL,NULL),(2,88,0,NULL,NULL),(3,130,0,NULL,NULL),(4,131,0,NULL,NULL),(5,132,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'mailto:xijing.lai@gmail.com',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,3,1),(13,3,3),(14,4,2),(15,4,3),(16,4,6),(17,4,10),(18,4,12),(19,4,13),(20,4,14),(21,4,15),(22,4,17),(23,4,16),(24,5,2),(25,4,19),(26,5,3),(27,4,18),(28,5,6),(29,4,21),(30,5,10),(31,4,20),(32,5,12),(33,4,23),(34,5,13),(35,4,22),(36,5,14),(37,5,15),(38,5,17),(39,5,16),(40,5,19),(41,5,18),(42,5,21),(43,5,20),(44,5,23),(45,5,22),(46,6,34),(47,6,32),(48,6,2),(49,6,33),(50,6,3),(51,6,5),(52,6,7),(53,6,8),(54,6,10),(55,6,12),(56,6,19),(57,6,25),(58,6,24),(59,6,27),(60,6,26),(61,6,29),(62,6,28),(63,6,31),(64,6,30),(65,7,34),(66,7,35),(67,7,1),(68,7,32),(69,7,2),(70,7,3),(71,7,33),(72,7,5),(73,7,7),(74,7,8),(75,7,10),(76,7,12),(77,7,19),(78,7,21),(79,7,25),(80,7,24),(81,7,27),(82,7,26),(83,7,29),(84,7,28),(85,7,31),(86,7,30);
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

-- Dump completed on 2015-10-09  0:38:31
