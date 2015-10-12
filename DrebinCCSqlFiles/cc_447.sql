-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_447
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(13,'.ImageTestActivity'),(24,'.Myhall'),(11,'.Web'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.PACKAGE_REMOVED'),(23,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(3,'android.intent.action.VIEW'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'com.android.vending.billing.IN_APP_NOTIFY'),(7,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(8,'com.android.vending.billing.RESPONSE_CODE'),(14,'com.huoljzy.GameBootReceiver'),(21,'com.huoljzy.ImageTestActivity'),(25,'com.huoljzy.Myhall'),(10,'com.huoljzy.Web'),(18,'com.stepbystep.GameBootReceiver'),(12,'com.stepbystep.ImageTestActivity'),(26,'com.stepbystep.Myhall'),(22,'com.stepbystep.Web'),(19,'ujmbb.qjlhrjp10l'),(20,'ujmbb.qjlhrjp10l(.*)');
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
INSERT INTO `Applications` VALUES (1,'ktinfo.ujeipiflr',10036),(2,'jp.lptqsnvvauu.owgfihf',10021),(3,'com.bjordkpw.fhebfpiph',10038),(4,'com.huoljzy',1002),(5,'com.stepbystep',1016),(6,'ujmbb.qjlhrjp10l',10027),(7,'com.fgqnmdnrco.gmvhglmukh',10041);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ktinfo.ujeipiflr.FloatNose'),(2,1,'com.JoGHcqch.dqFbiRIWw'),(3,1,'com.JoGHcqch.ihbAnQwRk'),(4,2,'jp.lptqsnvvauu.owgfihf.Andjong'),(5,2,'jp.lptqsnvvauu.owgfihf.About'),(6,2,'jp.lptqsnvvauu.owgfihf.Game'),(7,2,'jp.lptqsnvvauu.owgfihf.Settings'),(8,2,'com.EvamVKm.AkfUcwshMQDdQ'),(9,2,'com.EvamVKm.vEphGedQWhKRkQ'),(10,3,'com.bjordkpw.fhebfpiph.Drummermt'),(11,3,'com.ldDjR.TacUDekenMNC'),(12,4,'com.huoljzy.Myhall'),(13,4,'com.huoljzy.Web'),(14,3,'com.ldDjR.EfhCdluTkvoEsa'),(15,4,'com.huoljzy.HomeActivity'),(16,3,'com.ldDjR.QGaMmrUhd'),(17,4,'com.huoljzy.SortActivity1'),(18,3,'com.ldDjR.BDoWuFdqIfmVo'),(19,4,'com.huoljzy.SortActivity2'),(20,3,'com.ldDjR.tSppnJTqPh'),(21,3,'com.ldDjR.GUwsUhEcKB'),(22,4,'com.huoljzy.SearchActivity'),(23,5,'com.stepbystep.Myhall'),(24,3,'com.ldDjR.userPermissionReceiver'),(25,5,'com.stepbystep.Web'),(26,4,'com.huoljzy.ManagerActivity'),(27,5,'com.stepbystep.HomeActivity'),(28,5,'com.stepbystep.SortActivity1'),(29,5,'com.stepbystep.SortActivity2'),(30,4,'com.huoljzy.GameInfo'),(31,5,'com.stepbystep.SearchActivity'),(32,4,'com.huoljzy.TableClass'),(33,5,'com.stepbystep.ManagerActivity'),(34,4,'com.huoljzy.GameAlertDialog'),(35,4,'com.huoljzy.DevelopmentSettings'),(36,5,'com.stepbystep.GameInfo'),(37,4,'com.huoljzy.himg.ImageTestActivity'),(38,5,'com.stepbystep.TableClass'),(39,6,'ujmbb.qjlhrjp10l.wallsport0221j'),(40,5,'com.stepbystep.GameAlertDialog'),(41,4,'com.huoljzy.GameService'),(42,5,'com.stepbystep.DevelopmentSettings'),(43,6,'ujmbb.qjlhrjp10l.asianbody'),(44,6,'ujmbb.qjlhrjp10l.game.Main'),(45,4,'com.huoljzy.GameBootReceiver'),(46,5,'com.stepbystep.qimg.ImageTestActivity'),(47,6,'ujmbb.qjlhrjp10l.MyWebView'),(48,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(49,6,'com.hwRIPoqRf.wDcdTEsV'),(50,5,'com.stepbystep.qimg.ADactivity'),(51,5,'com.stepbystep.GameService'),(52,6,'com.hwRIPoqRf.sIHKcQcwVjF'),(53,6,'com.hwRIPoqRf.MyAppInfo'),(54,5,'com.stepbystep.GameBootReceiver'),(55,6,'com.hwRIPoqRf.UJiDnIFIJS'),(56,6,'com.hwRIPoqRf.HoVoqcapJR'),(57,6,'com.hwRIPoqRf.MyAppAlertDialog'),(58,6,'com.hwRIPoqRf.KdlOUSfDBLQK'),(59,6,'com.hwRIPoqRf.MyAppService'),(60,6,'com.hwRIPoqRf.BootReceiverService'),(61,7,'com.fgqnmdnrco.gmvhglmukh.MainActivity'),(62,7,'com.crossfield.stage.StageActivity'),(63,7,'com.crossfield.ranking.RankingActivity'),(64,7,'com.crossfield.more.MoreActivity'),(65,7,'com.google.ads.AdActivity'),(66,7,'com.rARDpkd.oTokiUwvwpsPvTO'),(67,7,'com.rARDpkd.WFUabFkwCdhnINo'),(68,7,'com.fgqnmdnrco.gmvhglmukh.BillingRequestService'),(69,7,'com.fgqnmdnrco.gmvhglmukh.BillingResponseReceiver'),(70,3,'com.ldDjR.ah'),(71,3,'com.ldDjR.ad'),(72,3,'com.ldDjR.ae'),(73,4,'ae'),(74,4,'bk'),(75,5,'bd'),(76,5,'x'),(77,4,'ad'),(78,5,'i'),(79,4,'bg'),(80,5,'cx'),(81,4,'h'),(82,5,'y'),(83,4,'f'),(84,7,'com.fgqnmdnrco.gmvhglmukh.MainActivity$2'),(85,6,'com.hwRIPoqRf.ae'),(86,7,'com.fgqnmdnrco.gmvhglmukh.MainActivity$1'),(87,4,'e'),(88,6,'com.hwRIPoqRf.aa'),(89,5,'bh'),(90,4,'ab'),(91,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(92,5,'di'),(93,6,'com.hwRIPoqRf.ab'),(94,5,'cv'),(95,4,'di'),(96,5,'aj'),(97,6,'com.hwRIPoqRf.bx'),(98,4,'o'),(99,6,'ujmbb.qjlhrjp10l.asianbody$2'),(100,6,'ujmbb.qjlhrjp10l.DialogUtil$1'),(101,5,'h'),(102,6,'com.hwRIPoqRf.ah'),(103,6,'ujmbb.qjlhrjp10l.MyWebView$7'),(104,6,'com.hwRIPoqRf.ak'),(105,5,'ao'),(106,6,'ujmbb.qjlhrjp10l.asianbody$3'),(107,6,'ujmbb.qjlhrjp10l.wallsport0221j$1'),(108,6,'com.hwRIPoqRf.by'),(109,6,'com.hwRIPoqRf.bh');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,20,'packageName'),(2,16,'packageName'),(3,16,'apkURL'),(4,21,'fileName'),(5,14,'np_app_key'),(6,18,'np_app_key'),(7,16,'np_app_key'),(8,11,'np_app_key'),(9,21,'np_app_key'),(10,21,'fileURL'),(11,16,'apkVersion'),(12,16,'detailFlag'),(13,16,'imageURL'),(14,16,'apkSoftID'),(15,16,'iconURL'),(16,16,'apkInfo'),(17,20,'fileURL'),(18,16,'apkSize'),(19,16,'apkTitle'),(20,30,'from_table'),(21,30,'title'),(22,26,'package_name'),(23,33,'filepath'),(24,36,'status'),(25,29,'nextclassid'),(26,40,'content'),(27,34,'btn_txt'),(28,26,'url'),(29,29,'status'),(30,13,'service_channel'),(31,33,'soft_id'),(32,22,'package_name'),(33,31,'package_name'),(34,33,'package_name'),(35,31,'status'),(36,33,'url'),(37,36,'title'),(38,33,'completed'),(39,26,'icon'),(40,53,'tt'),(41,57,'ftb'),(42,65,'params'),(43,26,'app_name'),(44,22,'version_code'),(45,12,'nextclassid'),(46,57,''),(47,57,'(.*)'),(48,58,'ctt'),(49,53,'ft'),(50,48,'ujmbb.qjlhrjp10l.type'),(51,53,''),(52,53,'(.*)'),(53,41,'service_channel'),(54,49,'TEST_APP_ID'),(55,52,'TEST_APP_ID'),(56,48,'ujmbb.qjlhrjp10l.currency'),(57,65,'action'),(58,23,'service_channel'),(59,46,'service_channel'),(60,59,'TEST_APP_ID'),(61,26,'filepath'),(62,25,'service_channel'),(63,53,'fa'),(64,65,'com.google.ads.AdOpener'),(65,19,'nextclassid'),(66,26,'completed'),(67,19,'package_name'),(68,34,'title'),(69,37,'service_channel'),(70,12,'service_channel'),(71,33,'icon'),(72,33,'status'),(73,26,'total'),(74,49,'si'),(75,40,'title'),(76,33,'total'),(77,23,'nextclassid'),(78,22,'status'),(79,33,'app_name'),(80,30,'filepath'),(81,34,'content'),(82,36,'filepath'),(83,26,'soft_id'),(84,26,'status'),(85,30,'from_alert'),(86,56,''),(87,56,'(.*)'),(88,58,'au'),(89,40,'btn_txt'),(90,36,'from_table'),(91,57,'tt'),(92,29,'package_name'),(93,30,'status'),(94,58,'pn'),(95,19,'status'),(96,51,'service_channel'),(97,48,'ujmbb.qjlhrjp10l.data'),(98,57,'bt'),(99,58,'tt'),(100,34,'url'),(101,40,'url'),(102,57,'ctt'),(103,56,'isDirectFromTable'),(104,36,'from_alert'),(105,31,'version_code'),(106,52,'poptitle'),(107,56,'from'),(108,53,'st'),(109,53,'fp'),(110,49,''),(111,49,'(.*)'),(112,57,'ul'),(113,52,'popurl');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,102,'r',1,NULL,NULL),(71,104,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,8),(4,4,4),(5,5,8),(6,6,4),(7,7,4),(8,8,14),(9,9,20),(10,10,11),(11,11,14),(12,11,16),(13,12,21),(14,13,24),(15,14,11),(16,15,11),(17,16,14),(18,17,14),(19,18,14),(20,18,16),(21,19,11),(22,20,14),(23,21,16),(24,22,32),(25,23,19),(26,24,26),(27,25,30),(28,26,27),(29,27,26),(30,28,12),(31,29,36),(32,30,30),(33,31,29),(34,32,13),(35,33,50),(36,34,33),(37,35,19),(38,36,46),(39,37,30),(40,38,45),(41,39,36),(42,40,30),(43,41,25),(44,42,34),(45,43,25),(46,44,67),(47,45,30),(48,46,61),(49,47,43),(50,48,65),(51,49,57),(52,50,27),(53,51,23),(54,52,12),(55,53,29),(56,54,66),(57,55,12),(58,56,58),(59,57,61),(60,58,22),(61,59,27),(62,60,53),(63,61,61),(64,62,61),(65,63,29),(66,64,19),(67,65,63),(68,66,27),(69,68,34),(70,67,61),(71,69,31),(72,70,47),(73,71,50),(74,72,57),(75,72,55),(76,72,56),(77,73,37),(78,74,29),(79,75,53),(80,76,40),(81,77,53),(82,78,32),(83,79,36),(84,80,15),(85,81,36),(86,82,34),(87,83,15),(88,84,48),(89,85,12),(90,86,60),(91,87,40),(92,87,38),(93,88,19),(94,89,53),(95,90,23),(96,91,32),(97,92,54),(98,93,19),(99,94,23),(100,95,49),(101,96,15),(102,97,50),(103,98,49),(104,99,40),(105,100,15),(106,101,60),(107,102,13),(108,103,29),(109,104,37),(110,105,43),(111,106,40),(112,107,55),(113,108,23),(114,109,15),(115,110,25),(116,111,15),(117,112,60),(118,113,34),(119,114,29),(120,115,45),(121,116,49),(122,117,23),(123,118,26),(124,119,58),(125,120,23),(126,121,32),(127,122,53),(128,123,40),(129,124,45),(130,125,37),(131,126,36),(132,127,19),(133,128,13),(134,129,40),(135,129,38),(136,130,43),(137,131,12),(138,132,33),(139,133,22),(140,134,53),(141,135,33),(142,136,12),(143,137,54),(144,138,12),(145,139,53),(146,140,54),(147,141,38),(148,142,30),(149,143,46),(150,144,38),(151,145,47),(152,146,27),(153,147,57),(154,148,31),(155,149,46),(156,150,43),(157,151,27),(158,152,39),(159,153,23),(160,154,49),(161,155,36),(162,156,52),(163,157,55),(164,157,57),(165,157,56),(166,158,53),(167,159,53),(168,160,49),(169,161,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.JoGHcqch.dqFbiRIWw: void a(java.lang.String)>',11,'a',NULL),(2,2,'<com.JoGHcqch.dqFbiRIWw: void a()>',3,'a',NULL),(3,8,'<com.EvamVKm.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(4,4,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',15,'a',NULL),(5,8,'<com.EvamVKm.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(6,4,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',7,'a',NULL),(7,4,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',11,'a',NULL),(8,14,'<com.ldDjR.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(9,20,'<com.ldDjR.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(10,11,'<com.ldDjR.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(11,16,'<com.ldDjR.QGaMmrUhd: void a(com.ldDjR.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(12,21,'<com.ldDjR.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(13,70,'<com.ldDjR.ah: void run()>',25,'s',NULL),(14,71,'<com.ldDjR.ad: void run()>',8,'s',NULL),(15,11,'<com.ldDjR.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(16,14,'<com.ldDjR.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(17,14,'<com.ldDjR.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(18,72,'<com.ldDjR.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(19,11,'<com.ldDjR.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(20,14,'<com.ldDjR.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(21,16,'<com.ldDjR.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(22,32,'<com.huoljzy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(23,73,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(24,74,'<bk: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(25,30,'<com.huoljzy.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(26,75,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(27,74,'<bk: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(28,12,'<com.huoljzy.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(29,36,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(30,30,'<com.huoljzy.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(31,76,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(32,13,'<com.huoljzy.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(33,50,'<com.stepbystep.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(34,33,'<com.stepbystep.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(35,77,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(36,46,'<com.stepbystep.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(37,30,'<com.huoljzy.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(38,45,'<com.huoljzy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(39,36,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(40,30,'<com.huoljzy.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(41,25,'<com.stepbystep.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(42,34,'<com.huoljzy.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(43,78,'<i: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(44,67,'<com.rARDpkd.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(45,79,'<bg: void onClick(android.view.View)>',205,'a',NULL),(46,61,'<com.fgqnmdnrco.gmvhglmukh.MainActivity: void buttonStart(android.view.View)>',19,'a',NULL),(47,43,'<ujmbb.qjlhrjp10l.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(48,65,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(49,57,'<com.hwRIPoqRf.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(50,75,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(51,80,'<cx: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(52,81,'<h: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(53,82,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(54,66,'<com.rARDpkd.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(55,83,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(56,58,'<com.hwRIPoqRf.KdlOUSfDBLQK: void onCreate(android.os.Bundle)>',13,'s',NULL),(57,61,'<com.fgqnmdnrco.gmvhglmukh.MainActivity: void buttonMore(android.view.View)>',6,'a',NULL),(58,22,'<com.huoljzy.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(59,27,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(60,85,'<com.hwRIPoqRf.ae: void onClick(android.view.View)>',182,'a',NULL),(61,84,'<com.fgqnmdnrco.gmvhglmukh.MainActivity$2: void onClick(android.content.DialogInterface,int)>',6,'a',0),(62,61,'<com.fgqnmdnrco.gmvhglmukh.MainActivity: void buttonRanking(android.view.View)>',19,'a',NULL),(63,29,'<com.stepbystep.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(64,19,'<com.huoljzy.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(65,63,'<com.crossfield.ranking.RankingActivity: void buttonMore(android.view.View)>',6,'a',NULL),(66,27,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(67,86,'<com.fgqnmdnrco.gmvhglmukh.MainActivity$1: void onClick(android.content.DialogInterface,int)>',6,'a',0),(68,34,'<com.huoljzy.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(69,31,'<com.stepbystep.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(70,47,'<ujmbb.qjlhrjp10l.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(71,50,'<com.stepbystep.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(72,56,'<com.hwRIPoqRf.HoVoqcapJR: void a(int,boolean)>',10,'s',NULL),(73,87,'<e: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(74,76,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(75,53,'<com.hwRIPoqRf.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(76,40,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(77,88,'<com.hwRIPoqRf.aa: void onClick(android.view.View)>',182,'a',NULL),(78,32,'<com.huoljzy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(79,36,'<com.stepbystep.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(80,15,'<com.huoljzy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(81,89,'<bh: void onClick(android.view.View)>',224,'a',NULL),(82,34,'<com.huoljzy.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(83,90,'<ab: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(84,91,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(85,83,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(86,60,'<com.hwRIPoqRf.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(87,92,'<di: void a(int,boolean)>',29,'a',NULL),(88,77,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(89,93,'<com.hwRIPoqRf.ab: void onClick(android.view.View)>',200,'a',NULL),(90,94,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(91,95,'<di: void a(int,boolean)>',10,'s',NULL),(92,54,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(93,77,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(94,94,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(95,49,'<com.hwRIPoqRf.wDcdTEsV: void onCreate(android.os.Bundle)>',61,'s',NULL),(96,15,'<com.huoljzy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(97,96,'<aj: void onClick(android.view.View)>',6,'a',NULL),(98,97,'<com.hwRIPoqRf.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(99,40,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(100,90,'<ab: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(101,60,'<com.hwRIPoqRf.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(102,98,'<o: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(103,29,'<com.stepbystep.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(104,37,'<com.huoljzy.himg.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(105,99,'<ujmbb.qjlhrjp10l.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(106,40,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(107,55,'<com.hwRIPoqRf.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(108,94,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(109,90,'<ab: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(110,25,'<com.stepbystep.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(111,15,'<com.huoljzy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(112,60,'<com.hwRIPoqRf.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(113,34,'<com.huoljzy.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(114,76,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(115,45,'<com.huoljzy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(116,49,'<com.hwRIPoqRf.wDcdTEsV: void onCreate(android.os.Bundle)>',57,'s',NULL),(117,23,'<com.stepbystep.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(118,26,'<com.huoljzy.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(119,58,'<com.hwRIPoqRf.KdlOUSfDBLQK: void onClick(android.view.View)>',26,'a',NULL),(120,94,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(121,95,'<di: void a(int,boolean)>',29,'a',NULL),(122,93,'<com.hwRIPoqRf.ab: void onClick(android.view.View)>',185,'a',NULL),(123,40,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(124,45,'<com.huoljzy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(125,37,'<com.huoljzy.himg.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(126,36,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(127,19,'<com.huoljzy.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(128,13,'<com.huoljzy.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(129,92,'<di: void a(int,boolean)>',10,'s',NULL),(130,100,'<ujmbb.qjlhrjp10l.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(131,83,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(132,101,'<h: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(133,22,'<com.huoljzy.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(134,53,'<com.hwRIPoqRf.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(135,101,'<h: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(136,83,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(137,54,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(138,12,'<com.huoljzy.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(139,85,'<com.hwRIPoqRf.ae: void onClick(android.view.View)>',197,'a',NULL),(140,54,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(141,38,'<com.stepbystep.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(142,79,'<bg: void onClick(android.view.View)>',224,'a',NULL),(143,46,'<com.stepbystep.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(144,38,'<com.stepbystep.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(145,103,'<ujmbb.qjlhrjp10l.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(146,27,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(147,57,'<com.hwRIPoqRf.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(148,31,'<com.stepbystep.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(149,105,'<ao: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(150,106,'<ujmbb.qjlhrjp10l.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(151,75,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(152,107,'<ujmbb.qjlhrjp10l.wallsport0221j$1: void run()>',21,'a',NULL),(153,23,'<com.stepbystep.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(154,108,'<com.hwRIPoqRf.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(155,89,'<bh: void onClick(android.view.View)>',205,'a',NULL),(156,52,'<com.hwRIPoqRf.sIHKcQcwVjF: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(157,56,'<com.hwRIPoqRf.HoVoqcapJR: void a(int,boolean)>',42,'a',NULL),(158,53,'<com.hwRIPoqRf.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(159,88,'<com.hwRIPoqRf.aa: void onClick(android.view.View)>',197,'a',NULL),(160,109,'<com.hwRIPoqRf.bh: void onClick(android.view.View)>',101,'a',NULL),(161,55,'<com.hwRIPoqRf.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,2,3),(3,4,3),(4,10,3),(5,11,1),(6,12,1),(7,19,3),(8,22,1),(9,23,1),(10,24,1),(11,25,1),(12,27,1),(13,28,1),(14,31,9),(15,36,10),(16,37,3),(17,38,11),(18,40,3),(19,41,12),(20,43,13),(21,44,14),(22,48,3),(23,49,3),(24,50,3),(25,52,3),(26,55,3),(27,56,3),(28,57,3),(29,59,3),(30,60,16),(31,61,3),(32,62,3),(33,63,16),(34,70,3),(35,71,3),(36,73,3),(37,76,3),(38,79,3),(39,82,3),(40,85,3),(41,86,3),(42,88,4),(43,89,3),(44,92,3),(45,94,3),(46,95,1),(47,97,1),(48,98,3),(49,99,1),(50,101,1),(51,102,3),(52,103,3),(53,108,1),(54,110,1),(55,112,1),(56,113,18),(57,115,1),(58,121,3),(59,122,3),(60,123,3),(61,124,19),(62,125,20),(63,126,3),(64,130,21),(65,131,13),(66,137,11),(67,138,22),(68,139,3),(69,140,19),(70,141,20),(71,143,4),(72,144,14),(73,148,1),(74,151,3),(75,153,3),(76,155,3),(77,157,3),(78,162,3),(79,164,1),(80,165,1),(81,167,1),(82,168,9),(83,170,1),(84,171,18),(85,172,24),(86,173,1),(87,175,25),(88,176,1),(89,178,1),(90,179,1),(91,180,1),(92,182,1),(93,183,1),(94,184,1),(95,186,1),(96,187,1),(97,191,3),(98,192,3),(99,193,3),(100,196,26),(101,197,24),(102,199,3),(103,201,3),(104,202,1),(105,203,1),(106,204,1),(107,205,1),(108,207,1),(109,208,1),(110,209,1),(111,210,1),(112,212,1),(113,213,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,1),(2,12,2),(3,22,1),(4,23,2),(5,24,1),(6,25,2),(7,27,1),(8,28,2),(9,95,1),(10,97,2),(11,99,1),(12,101,2),(13,108,1),(14,110,2),(15,112,1),(16,115,2),(17,148,4),(18,164,1),(19,165,2),(20,167,1),(21,170,2),(22,173,1),(23,176,2),(24,178,1),(25,179,1),(26,180,2),(27,182,2),(28,183,1),(29,184,1),(30,186,2),(31,187,2),(32,202,1),(33,203,2),(34,204,1),(35,205,2),(36,207,1),(37,208,2),(38,209,1),(39,210,2),(40,212,1),(41,213,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'ktinfo/ujeipiflr/FloatNose'),(2,5,'jp/lptqsnvvauu/owgfihf/Settings'),(3,6,'jp/lptqsnvvauu/owgfihf/Andjong'),(4,7,'jp/lptqsnvvauu/owgfihf/Game'),(5,8,'jp/lptqsnvvauu/owgfihf/About'),(6,9,'com/bjordkpw/fhebfpiph/Drummermt'),(7,13,'com/ldDjR/QGaMmrUhd'),(8,14,'com/ldDjR/BDoWuFdqIfmVo'),(9,15,'com/ldDjR/BDoWuFdqIfmVo'),(10,16,'com/ldDjR/EfhCdluTkvoEsa'),(11,17,'com/bjordkpw/fhebfpiph/Drummermt'),(12,18,'com/bjordkpw/fhebfpiph/Drummermt'),(13,20,'com/ldDjR/EfhCdluTkvoEsa'),(14,21,'com/bjordkpw/fhebfpiph/Drummermt'),(15,26,'com/huoljzy/Myhall'),(16,29,'com/huoljzy/GameService'),(17,30,'com/stepbystep/Myhall'),(18,32,'com/huoljzy/GameService'),(19,33,'com/stepbystep/Myhall'),(20,34,'com/huoljzy/Myhall'),(21,35,'com/stepbystep/GameInfo'),(22,36,'com/huoljzy/GameService'),(23,38,'com/huoljzy/GameService'),(24,39,'com/stepbystep/GameService'),(25,42,'com/huoljzy/Myhall'),(26,41,'com/stepbystep/GameService'),(27,43,'com/stepbystep/GameService'),(28,44,'com/huoljzy/GameService'),(29,45,'com/stepbystep/GameService'),(30,46,'com/huoljzy/Myhall'),(31,47,'com/stepbystep/GameService'),(32,51,'com/fgqnmdnrco/gmvhglmukh/MainActivity'),(33,53,'com/crossfield/stage/StageActivity'),(34,54,'ujmbb/qjlhrjp10l/game/Main'),(35,58,'com/stepbystep/GameInfo'),(36,65,'com/fgqnmdnrco/gmvhglmukh/MainActivity'),(37,64,'com/stepbystep/Myhall'),(38,67,'com/hwRIPoqRf/MyAppService'),(39,66,'com/huoljzy/Myhall'),(40,68,'com/crossfield/more/MoreActivity'),(41,69,'com/huoljzy/GameInfo'),(42,72,'com/crossfield/ranking/RankingActivity'),(43,74,'com/stepbystep/GameService'),(44,75,'com/huoljzy/GameInfo'),(45,77,'com/crossfield/more/MoreActivity'),(46,78,'com/stepbystep/Myhall'),(47,81,'com/stepbystep/GameInfo'),(48,80,'com/huoljzy/GameAlertDialog'),(49,83,'com/stepbystep/GameInfo'),(50,84,'com/hwRIPoqRf/MyAppService'),(51,87,'com/hwRIPoqRf/MyAppService'),(52,90,'com/huoljzy/GameInfo'),(53,91,'com/stepbystep/Myhall'),(54,93,'com/huoljzy/GameInfo'),(55,96,'com/huoljzy/GameInfo'),(56,100,'com/huoljzy/GameInfo'),(57,104,'com/huoljzy/Myhall'),(58,105,'com/hwRIPoqRf/MyAppService'),(59,106,'com/stepbystep/Myhall'),(60,107,'com/huoljzy/Myhall'),(61,109,'com/stepbystep/Myhall'),(62,111,'com/huoljzy/GameService'),(63,113,'com/stepbystep/GameService'),(64,114,'com/huoljzy/GameInfo'),(65,116,'com/stepbystep/Myhall'),(66,117,'com/hwRIPoqRf/MyAppService'),(67,118,'com/huoljzy/Myhall'),(68,119,'com/stepbystep/qimg/ImageTestActivity'),(69,120,'ujmbb/qjlhrjp10l/wallsport0221j'),(70,124,'com/hwRIPoqRf/MyAppService'),(71,125,'com/hwRIPoqRf/MyAppService'),(72,127,'com/stepbystep/GameInfo'),(73,128,'ujmbb/qjlhrjp10l/MyWebView'),(74,130,'com/huoljzy/GameService'),(75,129,'com/stepbystep/GameInfo'),(76,131,'com/huoljzy/GameService'),(77,132,'com/hwRIPoqRf/MyAppInfo'),(78,133,'com/stepbystep/Myhall'),(79,134,'com/hwRIPoqRf/MyAppInfo'),(80,135,'com/huoljzy/Myhall'),(81,136,'com/hwRIPoqRf/MyAppInfo'),(82,137,'com/stepbystep/GameService'),(83,138,'com/stepbystep/GameService'),(84,140,'com/hwRIPoqRf/MyAppService'),(85,141,'com/hwRIPoqRf/MyAppService'),(86,142,'com/stepbystep/Myhall'),(87,145,'com/hwRIPoqRf/MyAppService'),(88,144,'com/huoljzy/GameService'),(89,146,'com/stepbystep/GameService'),(90,147,'com/huoljzy/GameService'),(91,149,'com/stepbystep/Myhall'),(92,150,'com/huoljzy/Myhall'),(93,154,'com/huoljzy/GameService'),(94,152,'com/stepbystep/GameAlertDialog'),(95,156,'com/huoljzy/GameService'),(96,158,'com/stepbystep/Myhall'),(97,159,'com/huoljzy/GameService'),(98,160,'com/huoljzy/GameService'),(99,161,'com/stepbystep/GameService'),(100,163,'com/huoljzy/Myhall'),(101,166,'com/huoljzy/GameService'),(102,169,'com/huoljzy/Myhall'),(103,171,'com/stepbystep/GameService'),(104,172,'com/huoljzy/GameService'),(105,174,'com/stepbystep/GameService'),(106,175,'com/huoljzy/GameService'),(107,177,'com/stepbystep/GameInfo'),(108,181,'com/stepbystep/GameService'),(109,185,'ujmbb/qjlhrjp10l/asianbody'),(110,188,'com/stepbystep/GameInfo'),(111,189,'com/hwRIPoqRf/MyAppInfo'),(112,190,'com/stepbystep/GameService'),(113,195,'ujmbb/qjlhrjp10l/asianbody'),(114,196,'com/stepbystep/GameService'),(115,197,'com/stepbystep/GameService'),(116,198,'ujmbb/qjlhrjp10l/wallsport0221j'),(117,200,'ujmbb/qjlhrjp10l/wallsport0221j'),(118,206,'com/hwRIPoqRf/MyAppService'),(119,211,'com/hwRIPoqRf/sIHKcQcwVjF');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,3),(4,10,4),(5,19,5),(6,31,6),(7,37,7),(8,40,8),(9,48,9),(10,49,10),(11,50,11),(12,52,12),(13,55,14),(14,56,13),(15,57,15),(16,59,16),(17,60,17),(18,61,18),(19,63,19),(20,62,20),(21,70,21),(22,71,22),(23,73,23),(24,76,24),(25,79,25),(26,82,26),(27,86,27),(28,85,28),(29,89,29),(30,92,30),(31,94,31),(32,98,32),(33,102,33),(34,103,34),(35,121,35),(36,122,36),(37,123,37),(38,126,38),(39,139,39),(40,151,40),(41,153,41),(42,155,42),(43,157,43),(44,162,44),(45,168,45),(46,191,46),(47,192,47),(48,193,48),(49,199,49),(50,201,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'apkVersion'),(2,13,'apkURL'),(3,13,'apkInfo'),(4,13,'packageName'),(5,13,'apkSoftID'),(6,13,'apkTitle'),(7,13,'iconURL'),(8,13,'apkSize'),(9,13,'imageURL'),(10,26,'title'),(11,26,'nextclassid'),(12,26,'clicked'),(13,30,'title'),(14,30,'nextclassid'),(15,30,'clicked'),(16,35,'title'),(17,58,'title'),(18,64,'title'),(19,64,'nextclassid'),(20,64,'clicked'),(21,66,'clicked'),(22,75,'title'),(23,78,'nextclassid'),(24,78,'clicked'),(25,80,'title'),(26,80,'btn_txt'),(27,80,'need_adb_flag'),(28,80,'cont'),(29,80,'close_flag'),(30,96,'id'),(31,96,'from_table'),(32,96,'detail_flag'),(33,100,'title'),(34,104,'clicked'),(35,107,'title'),(36,107,'nextclassid'),(37,107,'clicked'),(38,109,'clicked'),(39,114,'title'),(40,116,'clicked'),(41,118,'nextclassid'),(42,118,'clicked'),(43,127,'title'),(44,129,'id'),(45,129,'from_alert'),(46,129,'detail_flag'),(47,132,''),(48,133,'clicked'),(49,134,''),(50,134,'(.*)'),(51,135,'title'),(52,135,'nextclassid'),(53,135,'clicked'),(54,136,'(.*)'),(55,142,'title'),(56,142,'nextclassid'),(57,142,'clicked'),(58,149,'clicked'),(59,152,'title'),(60,152,'btn_txt'),(61,152,'need_adb_flag'),(62,152,'cont'),(63,152,'close_flag'),(64,163,'clicked'),(65,169,'clicked'),(66,189,'id'),(67,189,'df'),(68,189,'fa'),(69,211,'popurl'),(70,211,'poptitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,6,1),(4,7,1),(5,8,1),(6,9,2),(7,10,1),(8,11,1),(9,12,1),(10,13,1),(11,14,1),(12,15,1),(13,16,4),(14,17,1),(15,18,1),(16,19,1),(17,21,1),(18,22,4),(19,24,5),(20,23,1),(21,25,1),(22,26,1),(23,27,1),(24,28,5),(25,29,1),(26,30,1),(27,31,1),(28,32,5),(29,32,2),(30,34,1),(31,35,6),(32,35,7),(33,35,8),(34,36,15),(35,37,17),(36,38,17),(37,39,15),(38,40,23),(39,41,15),(40,42,2),(41,43,17);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,6,1),(4,18,1),(5,21,1),(6,23,1),(7,25,1),(8,26,1),(9,31,1),(10,34,1),(11,36,3),(12,37,3),(13,38,3),(14,39,3),(15,41,3),(16,43,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,36,'package',NULL,NULL,NULL,NULL,NULL),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL),(6,43,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'(.*)','(.*)'),(2,4,'application','vnd.android.package-archive'),(3,10,'application','vnd.android.package-archive'),(4,19,'application','vnd.android.package-archive'),(5,50,'application','vnd.android.package-archive'),(6,52,'application','vnd.android.package-archive'),(7,55,'application','vnd.android.package-archive'),(8,60,'(.*)','(.*)'),(9,61,'application','vnd.android.package-archive'),(10,62,'application','vnd.android.package-archive'),(11,76,'(.*)','(.*)'),(12,79,'(.*)','(.*)'),(13,82,'application','vnd.android.package-archive'),(14,85,'application','vnd.android.package-archive'),(15,94,'(.*)','(.*)'),(16,98,'(.*)','(.*)'),(17,126,'application','vnd.android.package-archive'),(18,155,'(.*)','(.*)'),(19,157,'(.*)','(.*)'),(20,191,'application','vnd.android.package-archive'),(21,199,'application','vnd.android.package-archive'),(22,201,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'ktinfo.ujeipiflr'),(2,5,'jp.lptqsnvvauu.owgfihf'),(3,6,'jp.lptqsnvvauu.owgfihf'),(4,7,'jp.lptqsnvvauu.owgfihf'),(5,8,'jp.lptqsnvvauu.owgfihf'),(6,9,'com.bjordkpw.fhebfpiph'),(7,11,'(.*)'),(8,12,'(.*)'),(9,13,'com.bjordkpw.fhebfpiph'),(10,14,'com.bjordkpw.fhebfpiph'),(11,15,'com.bjordkpw.fhebfpiph'),(12,16,'com.bjordkpw.fhebfpiph'),(13,17,'com.bjordkpw.fhebfpiph'),(14,18,'com.bjordkpw.fhebfpiph'),(15,20,'com.bjordkpw.fhebfpiph'),(16,21,'com.bjordkpw.fhebfpiph'),(17,22,'(.*)'),(18,23,'(.*)'),(19,24,'(.*)'),(20,25,'(.*)'),(21,26,'com.huoljzy'),(22,27,'NULL-CONSTANT'),(23,28,'NULL-CONSTANT'),(24,29,'com.huoljzy'),(25,30,'com.stepbystep'),(26,32,'com.huoljzy'),(27,33,'com.stepbystep'),(28,34,'com.huoljzy'),(29,35,'com.stepbystep'),(30,36,'com.huoljzy'),(31,38,'com.huoljzy'),(32,39,'com.stepbystep'),(33,42,'com.huoljzy'),(34,41,'com.stepbystep'),(35,43,'com.stepbystep'),(36,44,'com.huoljzy'),(37,45,'com.stepbystep'),(38,46,'com.huoljzy'),(39,47,'com.stepbystep'),(40,51,'com.fgqnmdnrco.gmvhglmukh'),(41,53,'com.fgqnmdnrco.gmvhglmukh'),(42,54,'ujmbb.qjlhrjp10l'),(43,58,'com.stepbystep'),(44,65,'com.fgqnmdnrco.gmvhglmukh'),(45,64,'com.stepbystep'),(46,66,'com.huoljzy'),(47,67,'ujmbb.qjlhrjp10l'),(48,68,'com.fgqnmdnrco.gmvhglmukh'),(49,69,'com.huoljzy'),(50,72,'com.fgqnmdnrco.gmvhglmukh'),(51,74,'com.stepbystep'),(52,75,'com.huoljzy'),(53,77,'com.fgqnmdnrco.gmvhglmukh'),(54,78,'com.stepbystep'),(55,81,'com.stepbystep'),(56,80,'com.huoljzy'),(57,83,'com.stepbystep'),(58,84,'ujmbb.qjlhrjp10l'),(59,87,'ujmbb.qjlhrjp10l'),(60,90,'com.huoljzy'),(61,91,'com.stepbystep'),(62,93,'com.huoljzy'),(63,95,'(.*)'),(64,97,''),(65,96,'com.huoljzy'),(66,99,''),(67,101,'(.*)'),(68,100,'com.huoljzy'),(69,104,'com.huoljzy'),(70,105,'ujmbb.qjlhrjp10l'),(71,106,'com.stepbystep'),(72,107,'com.huoljzy'),(73,108,'(.*)'),(74,109,'com.stepbystep'),(75,110,''),(76,111,'com.huoljzy'),(77,112,''),(78,113,'com.stepbystep'),(79,114,'com.huoljzy'),(80,115,'(.*)'),(81,116,'com.stepbystep'),(82,117,'ujmbb.qjlhrjp10l'),(83,118,'com.huoljzy'),(84,119,'com.stepbystep'),(85,120,'ujmbb.qjlhrjp10l'),(86,124,'ujmbb.qjlhrjp10l'),(87,125,'ujmbb.qjlhrjp10l'),(88,127,'com.stepbystep'),(89,128,'ujmbb.qjlhrjp10l'),(90,130,'com.huoljzy'),(91,129,'com.stepbystep'),(92,131,'com.huoljzy'),(93,132,'ujmbb.qjlhrjp10l'),(94,133,'com.stepbystep'),(95,134,'ujmbb.qjlhrjp10l'),(96,135,'com.huoljzy'),(97,136,'ujmbb.qjlhrjp10l'),(98,137,'com.stepbystep'),(99,138,'com.stepbystep'),(100,140,'ujmbb.qjlhrjp10l'),(101,141,'ujmbb.qjlhrjp10l'),(102,142,'com.stepbystep'),(103,145,'ujmbb.qjlhrjp10l'),(104,144,'com.huoljzy'),(105,146,'com.stepbystep'),(106,147,'com.huoljzy'),(107,149,'com.stepbystep'),(108,150,'com.huoljzy'),(109,154,'com.huoljzy'),(110,152,'com.stepbystep'),(111,156,'com.huoljzy'),(112,158,'com.stepbystep'),(113,159,'com.huoljzy'),(114,160,'com.huoljzy'),(115,161,'com.stepbystep'),(116,163,'com.huoljzy'),(117,164,'NULL-CONSTANT'),(118,166,'com.huoljzy'),(119,165,'NULL-CONSTANT'),(120,167,'(.*)'),(121,169,'com.huoljzy'),(122,170,'(.*)'),(123,171,'com.stepbystep'),(124,172,'com.huoljzy'),(125,173,'(.*)'),(126,174,'com.stepbystep'),(127,175,'com.huoljzy'),(128,176,''),(129,177,'com.stepbystep'),(130,178,''),(131,179,'(.*)'),(132,180,'(.*)'),(133,181,'com.stepbystep'),(134,182,''),(135,183,''),(136,184,'(.*)'),(137,185,'ujmbb.qjlhrjp10l'),(138,186,'(.*)'),(139,187,'(.*)'),(140,188,'com.stepbystep'),(141,189,'ujmbb.qjlhrjp10l'),(142,190,'com.stepbystep'),(143,195,'ujmbb.qjlhrjp10l'),(144,196,'com.stepbystep'),(145,197,'com.stepbystep'),(146,198,'ujmbb.qjlhrjp10l'),(147,200,'ujmbb.qjlhrjp10l'),(148,202,'(.*)'),(149,203,''),(150,204,''),(151,205,'(.*)'),(152,206,'ujmbb.qjlhrjp10l'),(153,207,'(.*)'),(154,208,''),(155,209,''),(156,210,'(.*)'),(157,211,'ujmbb.qjlhrjp10l'),(158,212,'(.*)'),(159,213,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,9,0),(5,10,0),(6,11,0),(7,19,0),(8,22,0),(9,24,0),(10,26,0),(11,29,0),(12,30,0),(13,31,0),(14,32,0),(15,33,0),(16,35,0),(17,36,0),(18,37,0),(19,38,0),(20,39,0),(21,41,0),(22,42,0),(23,46,0),(24,45,0),(25,49,0),(26,51,0),(27,53,0),(28,54,0),(29,55,0),(30,56,0),(31,59,0),(32,60,0),(33,61,0),(34,67,0),(35,69,0),(36,54,0),(37,45,0),(38,54,0),(39,45,0),(40,70,0),(41,60,0),(42,71,0),(43,60,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,11,1,0),(12,11,1,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,1,0),(20,19,0,0),(21,20,0,0),(22,21,1,0),(23,21,1,0),(24,22,1,0),(25,22,1,0),(26,23,0,0),(27,24,1,0),(28,24,1,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,30,0,0),(35,31,0,0),(36,32,0,0),(37,33,1,0),(38,32,0,0),(39,34,0,0),(40,35,1,0),(41,36,0,0),(42,37,0,0),(43,36,0,0),(44,38,0,0),(45,39,0,0),(46,40,0,0),(47,41,0,0),(48,42,1,0),(49,42,1,0),(50,43,1,0),(51,44,0,0),(52,45,1,0),(53,46,0,0),(54,47,0,0),(55,45,1,0),(56,49,1,0),(57,48,1,0),(58,50,0,0),(59,49,1,0),(60,48,1,0),(61,51,1,0),(62,52,1,0),(63,48,1,0),(64,53,0,0),(65,54,0,0),(66,55,0,0),(67,56,0,0),(68,57,0,0),(69,58,0,0),(70,59,1,0),(71,60,1,0),(72,62,0,0),(73,60,1,0),(74,63,0,0),(75,64,0,0),(76,60,1,0),(77,65,0,0),(78,66,0,0),(79,60,1,0),(80,68,0,0),(81,69,0,0),(82,70,1,0),(83,71,0,0),(84,72,0,0),(85,73,1,0),(86,74,1,0),(87,75,0,0),(88,76,1,0),(89,77,1,0),(90,78,0,0),(91,79,0,0),(92,77,1,0),(93,80,0,0),(94,77,1,0),(95,81,1,0),(96,82,0,0),(97,81,1,0),(98,77,1,0),(99,81,1,0),(100,83,0,0),(101,81,1,0),(102,84,1,0),(103,84,1,0),(104,85,0,0),(105,86,0,0),(106,87,0,0),(107,88,0,0),(108,89,1,0),(109,90,0,0),(110,89,1,0),(111,91,0,0),(112,89,1,0),(113,92,0,0),(114,93,0,0),(115,89,1,0),(116,94,0,0),(117,95,0,0),(118,96,0,0),(119,97,0,0),(120,98,0,0),(121,99,1,0),(122,100,1,0),(123,99,1,0),(124,101,0,0),(125,101,0,0),(126,102,1,0),(127,103,0,0),(128,105,0,0),(129,106,0,0),(130,104,0,0),(131,104,0,0),(132,107,0,0),(133,108,0,0),(134,107,0,0),(135,109,0,0),(136,107,0,0),(137,110,0,0),(138,110,0,0),(139,111,1,0),(140,112,0,0),(141,112,0,0),(142,114,0,0),(143,113,1,0),(144,115,0,0),(145,116,0,0),(146,117,0,0),(147,118,0,0),(148,119,1,0),(149,120,0,0),(150,121,0,0),(151,122,1,0),(152,123,0,0),(153,122,1,0),(154,124,0,0),(155,122,1,0),(156,125,0,0),(157,122,1,0),(158,126,0,0),(159,127,0,0),(160,128,0,0),(161,129,0,0),(162,130,1,0),(163,131,0,0),(164,132,1,0),(165,132,1,0),(166,133,0,0),(167,134,1,0),(168,135,1,0),(169,136,0,0),(170,134,1,0),(171,137,0,0),(172,138,0,0),(173,139,1,0),(174,140,0,0),(175,138,0,0),(176,139,1,0),(177,141,0,0),(178,139,1,0),(179,142,1,0),(180,139,1,0),(181,143,0,0),(182,142,1,0),(183,142,1,0),(184,144,1,0),(185,145,0,0),(186,142,1,0),(187,144,1,0),(188,146,0,0),(189,147,0,0),(190,148,0,0),(191,149,1,0),(192,150,1,0),(193,151,1,0),(194,152,1,0),(195,152,0,0),(196,153,0,0),(197,153,0,0),(198,154,0,0),(199,155,1,0),(200,156,0,0),(201,155,1,0),(202,157,1,0),(203,157,1,0),(204,157,1,0),(205,157,1,0),(206,158,0,0),(207,159,1,0),(208,159,1,0),(209,159,1,0),(210,159,1,0),(211,160,0,0),(212,161,1,0),(213,161,1,0);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_CACHE_FILESYSTEM'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.DELETE_CACHE_FILES'),(8,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(15,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(11,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.SET_WALLPAPER'),(7,'android.permission.SYSTEM_ALERT_WINDOW'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(16,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(45,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,4,1),(16,3,5),(17,4,2),(18,3,6),(19,4,3),(20,3,7),(21,4,5),(22,3,8),(23,4,6),(24,4,9),(25,4,10),(26,4,11),(27,4,12),(28,4,13),(29,5,1),(30,5,2),(31,5,3),(32,5,5),(33,5,6),(34,5,9),(35,5,10),(36,5,11),(37,5,12),(38,5,13),(39,5,14),(40,6,1),(41,6,2),(42,6,3),(43,6,4),(44,6,5),(45,6,6),(46,6,8),(47,6,9),(48,6,13),(49,6,14),(50,6,15),(51,7,16),(52,7,1),(53,7,2),(54,7,3),(55,7,4),(56,7,5);
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

-- Dump completed on 2015-10-09  0:39:43
