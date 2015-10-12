-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_448
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'.ImageTestActivity'),(15,'.Myhall'),(9,'.PintuActivity'),(21,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.SCREEN_OFF'),(3,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(11,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg.UAoSjbFFk12'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.pintu_hljzy.PintuActivity'),(12,'com.replayanimation.GameBootReceiver'),(17,'com.replayanimation.ImageTestActivity'),(14,'com.replayanimation.Myhall'),(20,'com.replayanimation.Web'),(7,'hww.nmj.ranb'),(6,'hww.nmj.ranb(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.pintu_hljzy',20005),(2,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg',10002),(3,'com.replayanimation',1016),(4,'hww.nmj.ranb',10031),(5,'gamea.fqaqpcsrihhsa.tapav',10046),(6,'baltorogames.ieqjkdfuf',10041);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_hljzy.PintuActivity'),(2,1,'com.pintu_hljzy.GameInfo'),(3,1,'com.pintu_hljzy.TableClass'),(4,2,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg.Main'),(5,1,'com.pintu_hljzy.GameAlertDialog'),(6,1,'com.pintu.GameService'),(7,2,'mkk.uAwATt.UAoSjbFFk21'),(8,1,'com.pintu.GameBootReceiver'),(9,2,'mkk.uAwATt.ApopMain'),(10,2,'mkk.uAwATt.UAoSjbFFk16'),(11,2,'mkk.uAwATt.UAoSjbFFk8'),(12,2,'mkk.uAwATt.UAoSjbFFk9'),(13,2,'mkk.uAwATt.UAoSjbFFk2'),(14,3,'com.replayanimation.Myhall'),(15,4,'hww.nmj.ranb.main'),(16,3,'com.replayanimation.Web'),(17,2,'mkk.uAwATt.UAoSjbFFk10'),(18,4,'hww.nmj.ranb.SelectLevel'),(19,3,'com.replayanimation.HomeActivity'),(20,2,'mkk.uAwATt.UAoSjbFFk22'),(21,4,'hww.nmj.ranb.gameActivity'),(22,3,'com.replayanimation.SortActivity1'),(23,2,'mkk.uAwATt.UAoSjbFFk11'),(24,4,'com.BkwkJW.baHLOeFpUsdKp'),(25,3,'com.replayanimation.SortActivity2'),(26,2,'mkk.uAwATt.UAoSjbFFk12'),(27,3,'com.replayanimation.SearchActivity'),(28,4,'com.BkwkJW.JstjejhCtcUBN'),(29,5,'gamea.fqaqpcsrihhsa.tapav.GameOnePieceGameWin'),(30,4,'com.BkwkJW.MyAppInfo'),(31,3,'com.replayanimation.ManagerActivity'),(32,5,'com.admob.android.ads.AdMobActivity'),(33,4,'com.BkwkJW.ttPFEsAk'),(34,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(35,3,'com.replayanimation.GameInfo'),(36,5,'com.HpWTupFMB.eeUcJGaorsN'),(37,5,'com.HpWTupFMB.hpWRnuScciEi'),(38,4,'com.BkwkJW.LDLKcAoDpab'),(39,3,'com.replayanimation.TableClass'),(40,4,'com.BkwkJW.MyAppAlertDialog'),(41,5,'com.HpWTupFMB.EIbJgETwWrV'),(42,3,'com.replayanimation.GameAlertDialog'),(43,4,'com.BkwkJW.aLGpMhJSBD'),(44,6,'baltorogames.ieqjkdfuf.Kartmania3D'),(45,3,'com.replayanimation.DevelopmentSettings'),(46,4,'com.BkwkJW.MyAppService'),(47,6,'com.JUStOuFK.oTokiUwvwpsPvTO'),(48,6,'com.JUStOuFK.WFUabFkwCdhnINo'),(49,3,'com.replayanimation.qimg.ImageTestActivity'),(50,4,'com.BkwkJW.BootReceiverService'),(51,3,'com.replayanimation.qimg.ADactivity'),(52,3,'com.replayanimation.GameService'),(53,3,'com.replayanimation.GameBootReceiver'),(54,1,'r'),(55,1,'aw'),(56,1,'p'),(57,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(58,1,'v'),(59,2,'mkk.uAwATt.y'),(60,2,'mkk.uAwATt.u'),(61,3,'d'),(62,2,'com.netmite.andme.launcher.Launcher'),(63,3,'bl'),(64,3,'bc'),(65,4,'com.BkwkJW.ab'),(66,4,'com.BkwkJW.aa'),(67,3,'bd'),(68,3,'bv'),(69,2,'mkk.uAwATt.ClickableToast'),(70,3,'bw'),(71,4,'com.BkwkJW.bl'),(72,3,'eb'),(73,2,'mkk.uAwATt.aj'),(74,4,'com.BkwkJW.ak'),(75,2,'mkk.uAwATt.z'),(76,2,'mkk.uAwATt.bs'),(77,2,'mkk.uAwATt.bo'),(78,4,'com.BkwkJW.bk'),(79,4,'com.BkwkJW.ae'),(80,4,'com.BkwkJW.ah'),(81,2,'mkk.uAwATt.ak'),(82,3,'an'),(83,4,'com.BkwkJW.bn'),(84,3,'bj'),(85,3,'dg'),(86,3,'dx');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'apk_url'),(2,5,'package_name'),(3,2,'fromtype'),(4,2,'title'),(5,5,'btn_txt'),(6,32,'t'),(7,5,'title'),(8,32,'s'),(9,2,'filepath'),(10,32,'int'),(11,1,'service_channel'),(12,32,'si'),(13,2,'from_alert'),(14,34,'gamea.fqaqpcsrihhsa.tapav.data'),(15,2,'from_table'),(16,20,'apkurl'),(17,32,'sc'),(18,32,'or'),(19,32,'cs'),(20,32,'oi'),(21,7,'version_code'),(22,32,'nosk'),(23,10,'poptitle'),(24,32,'tr'),(25,34,'gamea.fqaqpcsrihhsa.tapav.type'),(26,32,'cbo'),(27,34,'gamea.fqaqpcsrihhsa.tapav.currency'),(28,32,'json'),(29,32,'a'),(30,32,'u'),(31,41,''),(32,41,'(.*)'),(33,20,'content'),(34,32,'sku'),(35,32,'$'),(36,7,'soft_id'),(37,32,'ap'),(38,32,'sd'),(39,32,'au'),(40,5,'content'),(41,32,'skd'),(42,32,'su'),(43,32,'p'),(44,11,'from_table'),(45,32,'c'),(46,32,'sin'),(47,32,'rd'),(48,32,'mi'),(49,32,'o'),(50,32,'ad'),(51,5,'version_code'),(52,5,'url'),(53,2,'status'),(54,40,''),(55,40,'(.*)'),(56,24,'TEST_APP_ID'),(57,28,'TEST_APP_ID'),(58,17,'url'),(59,43,'pn'),(60,40,'ul'),(61,30,'st'),(62,32,'b'),(63,32,'msm'),(64,2,'game'),(65,32,'ru'),(66,28,'popurl'),(67,30,'ft'),(68,38,'isDirectFromTable'),(69,42,'btn_txt'),(70,28,'poptitle'),(71,17,'package_name'),(72,17,'apk_url'),(73,24,'si'),(74,40,'ctt'),(75,35,'status'),(76,40,'tt'),(77,27,'package_name'),(78,31,'app_name'),(79,31,'icon'),(80,25,'nextclassid'),(81,40,'ftb'),(82,31,'completed'),(83,25,'status'),(84,27,'version_code'),(85,31,'filepath'),(86,52,'service_channel'),(87,11,'title'),(88,30,''),(89,30,'(.*)'),(90,31,'total'),(91,31,'soft_id'),(92,31,'status'),(93,43,'ctt'),(94,20,'packagename'),(95,11,'filepath'),(96,13,'package_name'),(97,11,'from_alert'),(98,17,'title'),(99,31,'package_name'),(100,40,'bt'),(101,23,'service_channel'),(102,35,'from_table'),(103,38,''),(104,38,'(.*)'),(105,35,'title'),(106,38,'from'),(107,17,'content'),(108,30,'tt'),(109,43,'au'),(110,17,'btn_txt'),(111,21,'level'),(112,30,'fp'),(113,24,''),(114,24,'(.*)'),(115,10,'popurl'),(116,11,'fromtype'),(117,13,'isDirectFromTable'),(118,7,'service_channel'),(119,10,'service_channel'),(120,31,'url'),(121,17,'version_code'),(122,13,'from'),(123,20,'title'),(124,11,'game'),(125,30,'fa'),(126,46,'TEST_APP_ID'),(127,42,'content'),(128,11,'status'),(129,17,'fromtable'),(130,42,'url'),(131,14,'service_channel'),(132,43,'tt'),(133,49,'service_channel'),(134,25,'package_name'),(135,14,'nextclassid'),(136,35,'filepath'),(137,42,'title'),(138,16,'service_channel'),(139,27,'status'),(140,35,'from_alert');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,74,'r',1,NULL,NULL),(55,76,'r',1,NULL,NULL),(56,77,'r',1,NULL,NULL),(57,80,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,48),(2,2,47),(3,3,5),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,5),(9,8,3),(10,9,5),(11,10,2),(12,11,5),(13,12,1),(14,13,2),(15,14,5),(16,14,3),(17,15,2),(18,16,34),(19,17,2),(20,18,7),(21,19,17),(22,20,11),(23,21,5),(24,22,37),(25,23,2),(26,24,17),(27,25,37),(28,26,3),(29,27,36),(30,28,17),(31,29,2),(32,30,50),(33,31,2),(34,32,17),(35,32,12),(36,32,13),(37,33,36),(38,34,12),(39,35,2),(40,36,11),(41,37,41),(42,38,3),(43,39,28),(44,40,1),(45,41,30),(46,42,19),(47,43,4),(48,44,33),(49,44,38),(50,44,40),(51,45,14),(52,46,16),(53,47,31),(54,48,40),(55,48,33),(56,48,38),(57,49,53),(58,50,30),(59,51,35),(60,52,25),(61,53,26),(62,54,53),(63,55,30),(64,56,20),(65,57,17),(66,58,35),(67,59,12),(68,60,40),(69,61,20),(70,62,50),(71,63,25),(72,64,26),(73,65,53),(74,67,15),(75,66,7),(76,68,25),(77,69,30),(78,70,17),(79,70,13),(80,70,12),(81,71,50),(82,72,16),(83,73,24),(84,74,42),(85,74,39),(86,75,40),(87,76,35),(88,77,25),(89,78,7),(90,79,24),(91,80,27),(92,81,7),(93,82,42),(94,83,11),(95,84,33),(96,85,42),(97,86,43),(98,87,14),(99,88,43),(100,89,11),(101,90,14),(102,91,24),(103,92,4),(104,93,42),(105,94,30),(106,95,51),(107,96,10),(108,97,14),(109,98,30),(110,99,49),(111,100,26),(112,101,11),(113,102,19),(114,103,19),(115,104,33),(116,105,11),(117,106,27),(118,107,42),(119,108,30),(120,109,11),(121,110,19),(122,111,25),(123,112,39),(124,113,15),(125,114,7),(126,115,24),(127,116,11),(128,117,39),(129,118,30),(130,119,39),(131,119,42),(132,120,49),(133,121,24),(134,122,14),(135,123,30),(136,124,14),(137,125,35),(138,126,31),(139,127,19),(140,128,16),(141,129,14),(142,130,35),(143,131,51),(144,132,35),(145,133,51),(146,134,49),(147,135,19),(148,136,25),(149,137,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,48,'<com.JUStOuFK.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(2,47,'<com.JUStOuFK.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(3,5,'<com.pintu_hljzy.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(4,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(5,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(6,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(7,54,'<r: void onClick(android.view.View)>',239,'a',NULL),(8,55,'<aw: void a(int,boolean)>',10,'s',NULL),(9,5,'<com.pintu_hljzy.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(10,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(11,5,'<com.pintu_hljzy.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(12,1,'<com.pintu_hljzy.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(13,56,'<p: void onClick(android.view.View)>',242,'a',NULL),(14,55,'<aw: void a(int,boolean)>',57,'a',NULL),(15,56,'<p: void onClick(android.view.View)>',221,'a',NULL),(16,57,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(17,58,'<v: void onClick(android.view.View)>',239,'a',NULL),(18,7,'<mkk.uAwATt.UAoSjbFFk21: void onCreate(android.os.Bundle)>',69,'s',NULL),(19,17,'<mkk.uAwATt.UAoSjbFFk10: void onClick(android.view.View)>',77,'a',NULL),(20,59,'<mkk.uAwATt.y: void onClick(android.view.View)>',221,'a',NULL),(21,5,'<com.pintu_hljzy.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(22,37,'<com.HpWTupFMB.hpWRnuScciEi: void onRestart()>',7,'a',NULL),(23,54,'<r: void onClick(android.view.View)>',218,'a',NULL),(24,17,'<mkk.uAwATt.UAoSjbFFk10: void onClick(android.view.View)>',86,'a',NULL),(25,37,'<com.HpWTupFMB.hpWRnuScciEi: void onRestart()>',14,'a',NULL),(26,3,'<com.pintu_hljzy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(27,36,'<com.HpWTupFMB.eeUcJGaorsN: void onRestart()>',7,'a',NULL),(28,17,'<mkk.uAwATt.UAoSjbFFk10: void onClick(android.view.View)>',68,'a',NULL),(29,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(30,50,'<com.BkwkJW.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(31,2,'<com.pintu_hljzy.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(32,13,'<mkk.uAwATt.UAoSjbFFk2: void a(int,boolean)>',10,'s',NULL),(33,36,'<com.HpWTupFMB.eeUcJGaorsN: void b()>',12,'a',NULL),(34,12,'<mkk.uAwATt.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(35,58,'<v: void onClick(android.view.View)>',218,'a',NULL),(36,60,'<mkk.uAwATt.u: void onClick(android.view.View)>',239,'a',NULL),(37,41,'<com.HpWTupFMB.EIbJgETwWrV: void a(android.content.Context,java.lang.String)>',10,'a',NULL),(38,3,'<com.pintu_hljzy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(39,28,'<com.BkwkJW.JstjejhCtcUBN: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(40,1,'<com.pintu_hljzy.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(41,30,'<com.BkwkJW.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(42,61,'<d: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(43,62,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(44,38,'<com.BkwkJW.LDLKcAoDpab: void a(int,boolean)>',42,'a',NULL),(45,63,'<bl: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(46,64,'<bc: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(47,31,'<com.replayanimation.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(48,38,'<com.BkwkJW.LDLKcAoDpab: void a(int,boolean)>',10,'s',NULL),(49,53,'<com.replayanimation.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(50,65,'<com.BkwkJW.ab: void onClick(android.view.View)>',200,'a',NULL),(51,35,'<com.replayanimation.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(52,25,'<com.replayanimation.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(53,26,'<mkk.uAwATt.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(54,53,'<com.replayanimation.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(55,66,'<com.BkwkJW.aa: void onClick(android.view.View)>',197,'a',NULL),(56,20,'<mkk.uAwATt.UAoSjbFFk22: void onClick(android.view.View)>',26,'a',NULL),(57,17,'<mkk.uAwATt.UAoSjbFFk10: void onClick(android.view.View)>',55,'a',NULL),(58,67,'<bd: void onClick(android.view.View)>',224,'a',NULL),(59,12,'<mkk.uAwATt.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(60,40,'<com.BkwkJW.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(61,20,'<mkk.uAwATt.UAoSjbFFk22: void onCreate(android.os.Bundle)>',13,'s',NULL),(62,50,'<com.BkwkJW.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(63,68,'<bv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(64,26,'<mkk.uAwATt.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(65,53,'<com.replayanimation.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(66,69,'<mkk.uAwATt.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(67,15,'<hww.nmj.ranb.main: void toGameActivity()>',8,'a',NULL),(68,70,'<bw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(69,30,'<com.BkwkJW.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(70,13,'<mkk.uAwATt.UAoSjbFFk2: void a(int,boolean)>',43,'a',NULL),(71,50,'<com.BkwkJW.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(72,16,'<com.replayanimation.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(73,71,'<com.BkwkJW.bl: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(74,72,'<eb: void a(int,boolean)>',10,'s',NULL),(75,40,'<com.BkwkJW.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(76,35,'<com.replayanimation.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(77,70,'<bw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(78,73,'<mkk.uAwATt.aj: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(79,24,'<com.BkwkJW.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',61,'s',NULL),(80,27,'<com.replayanimation.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(81,7,'<mkk.uAwATt.UAoSjbFFk21: void onCreate(android.os.Bundle)>',65,'s',NULL),(82,42,'<com.replayanimation.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(83,75,'<mkk.uAwATt.z: void onClick(android.view.View)>',239,'a',NULL),(84,33,'<com.BkwkJW.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(85,42,'<com.replayanimation.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(86,43,'<com.BkwkJW.aLGpMhJSBD: void onClick(android.view.View)>',26,'a',NULL),(87,14,'<com.replayanimation.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(88,43,'<com.BkwkJW.aLGpMhJSBD: void onCreate(android.os.Bundle)>',13,'s',NULL),(89,11,'<mkk.uAwATt.UAoSjbFFk8: void onCreate(android.os.Bundle)>',90,'s',NULL),(90,63,'<bl: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(91,78,'<com.BkwkJW.bk: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(92,62,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(93,42,'<com.replayanimation.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(94,30,'<com.BkwkJW.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(95,51,'<com.replayanimation.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(96,10,'<mkk.uAwATt.UAoSjbFFk16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(97,14,'<com.replayanimation.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(98,79,'<com.BkwkJW.ae: void onClick(android.view.View)>',197,'a',NULL),(99,49,'<com.replayanimation.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(100,26,'<mkk.uAwATt.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(101,60,'<mkk.uAwATt.u: void onClick(android.view.View)>',218,'a',NULL),(102,61,'<d: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(103,19,'<com.replayanimation.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(104,33,'<com.BkwkJW.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(105,75,'<mkk.uAwATt.z: void onClick(android.view.View)>',218,'a',NULL),(106,27,'<com.replayanimation.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(107,42,'<com.replayanimation.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(108,66,'<com.BkwkJW.aa: void onClick(android.view.View)>',182,'a',NULL),(109,59,'<mkk.uAwATt.y: void onClick(android.view.View)>',242,'a',NULL),(110,19,'<com.replayanimation.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(111,70,'<bw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(112,39,'<com.replayanimation.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(113,15,'<hww.nmj.ranb.main: boolean onTouchEvent(android.view.MotionEvent)>',21,'a',NULL),(114,81,'<mkk.uAwATt.ak: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(115,24,'<com.BkwkJW.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',57,'s',NULL),(116,11,'<mkk.uAwATt.UAoSjbFFk8: void onCreate(android.os.Bundle)>',39,'s',NULL),(117,39,'<com.replayanimation.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(118,79,'<com.BkwkJW.ae: void onClick(android.view.View)>',182,'a',NULL),(119,72,'<eb: void a(int,boolean)>',29,'a',NULL),(120,82,'<an: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(121,83,'<com.BkwkJW.bn: void onClick(android.view.View)>',101,'a',NULL),(122,84,'<bj: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(123,65,'<com.BkwkJW.ab: void onClick(android.view.View)>',185,'a',NULL),(124,63,'<bl: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(125,35,'<com.replayanimation.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(126,85,'<dg: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(127,19,'<com.replayanimation.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(128,16,'<com.replayanimation.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(129,63,'<bl: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(130,35,'<com.replayanimation.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(131,51,'<com.replayanimation.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(132,67,'<bd: void onClick(android.view.View)>',205,'a',NULL),(133,86,'<dx: void onClick(android.view.View)>',6,'a',NULL),(134,49,'<com.replayanimation.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(135,61,'<d: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(136,25,'<com.replayanimation.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(137,85,'<dg: void onClick(android.content.DialogInterface,int)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,5),(3,8,1),(4,9,1),(5,10,1),(6,11,1),(7,13,4),(8,17,1),(9,18,1),(10,19,1),(11,20,1),(12,22,5),(13,23,5),(14,24,5),(15,25,1),(16,26,5),(17,27,1),(18,29,1),(19,30,4),(20,31,1),(21,32,5),(22,34,5),(23,36,5),(24,38,5),(25,42,5),(26,44,5),(27,45,6),(28,48,5),(29,49,7),(30,50,5),(31,52,5),(32,53,5),(33,54,5),(34,55,1),(35,56,5),(36,57,1),(37,58,1),(38,60,1),(39,61,1),(40,62,1),(41,64,9),(42,65,5),(43,66,5),(44,67,10),(45,68,1),(46,69,1),(47,71,1),(48,72,1),(49,73,5),(50,74,1),(51,75,1),(52,78,1),(53,80,1),(54,81,1),(55,82,1),(56,84,1),(57,85,1),(58,87,11),(59,88,12),(60,89,1),(61,90,1),(62,91,1),(63,93,1),(64,94,1),(65,95,1),(66,96,1),(67,97,1),(68,98,1),(69,99,1),(70,101,1),(71,103,6),(72,105,11),(73,106,7),(74,107,12),(75,112,1),(76,114,1),(77,116,1),(78,119,1),(79,120,5),(80,122,5),(81,129,1),(82,131,1),(83,133,1),(84,134,5),(85,136,1),(86,137,5),(87,138,1),(88,139,14),(89,142,15),(90,145,5),(91,146,4),(92,147,1),(93,149,1),(94,152,1),(95,153,17),(96,154,1),(97,156,18),(98,157,1),(99,158,1),(100,159,5),(101,161,5),(102,163,1),(103,164,5),(104,166,1),(105,167,5),(106,169,5),(107,170,1),(108,171,5),(109,173,1),(110,174,5),(111,175,5),(112,176,1),(113,177,5),(114,178,1),(115,179,1),(116,181,1),(117,186,5),(118,187,5),(119,189,5),(120,190,5),(121,191,5),(122,193,5),(123,194,5),(124,196,5),(125,198,5),(126,199,5),(127,200,19),(128,201,5),(129,202,20),(130,203,21),(131,206,5),(132,207,5),(133,208,5),(134,213,1),(135,214,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,8,2),(2,9,3),(3,10,2),(4,11,3),(5,17,2),(6,18,3),(7,19,2),(8,20,3),(9,25,2),(10,27,3),(11,29,2),(12,31,3),(13,55,2),(14,57,3),(15,58,2),(16,60,2),(17,61,3),(18,62,3),(19,68,2),(20,69,2),(21,71,3),(22,72,2),(23,74,2),(24,75,3),(25,78,2),(26,80,2),(27,81,2),(28,82,3),(29,84,2),(30,85,3),(31,89,2),(32,90,5),(33,91,3),(34,93,2),(35,94,2),(36,95,3),(37,96,3),(38,97,2),(39,98,2),(40,99,3),(41,101,3),(42,112,2),(43,114,3),(44,116,2),(45,119,3),(46,129,2),(47,131,3),(48,133,2),(49,136,3),(50,138,5),(51,147,2),(52,149,3),(53,152,2),(54,154,3),(55,157,2),(56,158,3),(57,163,2),(58,166,3),(59,170,2),(60,173,3),(61,176,2),(62,178,3),(63,179,2),(64,181,3),(65,213,2),(66,214,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'baltorogames/ieqjkdfuf/Kartmania3D'),(2,2,'baltorogames/ieqjkdfuf/Kartmania3D'),(3,5,'com/pintu_hljzy/PintuActivity'),(4,6,'com/pintu_hljzy/PintuActivity'),(5,7,'com/pintu_hljzy/GameService'),(6,12,'com/pintu_hljzy/GameService'),(7,14,'com/pintu_hljzy/GameService'),(8,15,'com/pintu_hljzy/GameAlertDialog'),(9,16,'com/pintu_hljzy/GameService'),(10,21,'com/pintu_hljzy/PintuActivity'),(11,28,'mkk/uAwATt/UAoSjbFFk11'),(12,33,'com/pintu_hljzy/GameInfo'),(13,35,'com/HpWTupFMB/EIbJgETwWrV'),(14,39,'gamea/fqaqpcsrihhsa/tapav/GameOnePieceGameWin'),(15,37,'mkk/uAwATt/UAoSjbFFk10'),(16,40,'com/pintu_hljzy/GameInfo'),(17,41,'com/HpWTupFMB/EIbJgETwWrV'),(18,43,'com/pintu_hljzy/PintuActivity'),(19,45,'com/BkwkJW/MyAppService'),(20,46,'com/pintu_hljzy/PintuActivity'),(21,47,'mkk/uAwATt/UAoSjbFFk11'),(22,49,'com/BkwkJW/MyAppService'),(23,51,'mkk/uAwATt/UAoSjbFFk8'),(24,59,'hww/nmj/ranb/main'),(25,63,'com/BkwkJW/MyAppService'),(26,64,'com/pintu_hljzy/GameService'),(27,67,'com/pintu_hljzy/GameService'),(28,70,'com/replayanimation/Myhall'),(29,69,'com.netmite.andme.MIDletRunner'),(30,74,'com.netmite.andme.MIDletRunner'),(31,76,'com/replayanimation/GameService'),(32,77,'com/BkwkJW/MyAppService'),(33,78,'com.netmite.andme.MIDletRunner'),(34,79,'com/replayanimation/GameService'),(35,83,'com/replayanimation/GameService'),(36,81,'com.netmite.andme.MIDletRunner'),(37,86,'com/replayanimation/GameInfo'),(38,87,'mkk/uAwATt/UAoSjbFFk11'),(39,88,'com/replayanimation/GameService'),(40,92,'mkk/uAwATt/UAoSjbFFk8'),(41,100,'com/BkwkJW/MyAppInfo'),(42,102,'mkk/uAwATt/UAoSjbFFk11'),(43,103,'com/BkwkJW/MyAppService'),(44,104,'com/replayanimation/Myhall'),(45,105,'mkk/uAwATt/UAoSjbFFk11'),(46,106,'com/BkwkJW/MyAppService'),(47,107,'com/replayanimation/GameService'),(48,109,'hww/nmj/ranb/gameActivity'),(49,108,'mkk/uAwATt/UAoSjbFFk16'),(50,111,'com/BkwkJW/MyAppService'),(51,110,'com/replayanimation/Myhall'),(52,113,'com/BkwkJW/MyAppService'),(53,115,'com/replayanimation/GameService'),(54,117,'hww/nmj/ranb/main'),(55,118,'com/replayanimation/GameService'),(56,121,'com/replayanimation/Myhall'),(57,123,'com/replayanimation/GameInfo'),(58,124,'cen/rupkomd/ejfut/rhidqddm/egkvr_guqrgg/Main'),(59,125,'com/BkwkJW/MyAppService'),(60,126,'com/replayanimation/GameInfo'),(61,127,'mkk/uAwATt/UAoSjbFFk11'),(62,128,'com/replayanimation/GameAlertDialog'),(63,130,'com/BkwkJW/MyAppInfo'),(64,132,'com/BkwkJW/MyAppInfo'),(65,135,'com/BkwkJW/MyAppInfo'),(66,139,'com/replayanimation/GameService'),(67,140,'com/BkwkJW/MyAppService'),(68,141,'mkk/uAwATt/UAoSjbFFk11'),(69,142,'com/replayanimation/GameService'),(70,144,'hww/nmj/ranb/main'),(71,143,'com/replayanimation/Myhall'),(72,148,'com/replayanimation/GameInfo'),(73,150,'cen/rupkomd/ejfut/rhidqddm/egkvr_guqrgg/Main'),(74,151,'com/replayanimation/GameService'),(75,153,'com/replayanimation/GameService'),(76,155,'mkk/uAwATt/UAoSjbFFk11'),(77,156,'com/replayanimation/GameService'),(78,160,'com/replayanimation/GameInfo'),(79,162,'com/replayanimation/Myhall'),(80,165,'com/replayanimation/GameService'),(81,168,'com/replayanimation/GameInfo'),(82,172,'com/replayanimation/GameInfo'),(83,180,'hww/nmj/ranb/SelectLevel'),(84,182,'cen/rupkomd/ejfut/rhidqddm/egkvr_guqrgg/Main'),(85,183,'com/BkwkJW/MyAppService'),(86,184,'mkk/uAwATt/UAoSjbFFk11'),(87,185,'com/replayanimation/GameInfo'),(88,188,'com/replayanimation/Myhall'),(89,192,'com/BkwkJW/JstjejhCtcUBN'),(90,195,'com/replayanimation/Myhall'),(91,197,'com/replayanimation/Myhall'),(92,202,'com/replayanimation/GameService'),(93,203,'com/replayanimation/GameService'),(94,204,'com/replayanimation/Myhall'),(95,205,'com/replayanimation/Myhall'),(96,209,'com/replayanimation/qimg/ImageTestActivity'),(97,210,'com/replayanimation/GameService'),(98,211,'com/replayanimation/Myhall'),(99,212,'com/replayanimation/GameService');
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
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,22,3),(4,23,4),(5,24,5),(6,26,6),(7,32,7),(8,34,8),(9,36,9),(10,38,10),(11,42,11),(12,44,12),(13,48,13),(14,50,14),(15,52,15),(16,53,16),(17,54,17),(18,56,18),(19,65,19),(20,66,20),(21,73,21),(22,120,22),(23,122,23),(24,134,24),(25,137,25),(26,145,26),(27,159,27),(28,161,28),(29,164,29),(30,167,30),(31,169,31),(32,171,32),(33,174,33),(34,175,34),(35,177,35),(36,186,36),(37,187,37),(38,189,38),(39,190,39),(40,191,40),(41,193,41),(42,194,42),(43,196,43),(44,198,44),(45,199,45),(46,200,46),(47,201,47),(48,206,48),(49,207,49),(50,208,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'title'),(2,15,'btn_txt'),(3,15,'need_adb_flag'),(4,15,'cont'),(5,15,'close_flag'),(6,33,'id'),(7,33,'from_alert'),(8,33,'detail_flag'),(9,37,'title'),(10,37,'btn_txt'),(11,37,'need_adb_flag'),(12,37,'cont'),(13,37,'close_flag'),(14,40,'game'),(15,40,'fromtype'),(16,51,'game'),(17,51,'fromtype'),(18,70,'clicked'),(19,69,'midletapkpath'),(20,69,'midletclass'),(21,69,'(.*)'),(22,69,'midleturl'),(23,74,'midletapkpath'),(24,74,'midleturl'),(25,78,'midletapkpath'),(26,78,'midletclass'),(27,78,'midleturl'),(28,81,'midletapkpath'),(29,81,'(.*)'),(30,81,'midleturl'),(31,86,'title'),(32,92,'id'),(33,92,'from_alert'),(34,92,'detail_flag'),(35,100,'id'),(36,100,'df'),(37,100,'fa'),(38,104,'title'),(39,104,'nextclassid'),(40,104,'clicked'),(41,108,'popurl'),(42,109,'level'),(43,108,'poptitle'),(44,110,'title'),(45,110,'nextclassid'),(46,110,'clicked'),(47,123,'title'),(48,128,'title'),(49,128,'btn_txt'),(50,128,'need_adb_flag'),(51,128,'cont'),(52,130,''),(53,128,'close_flag'),(54,130,'(.*)'),(55,132,'(.*)'),(56,135,''),(57,143,'clicked'),(58,160,'title'),(59,162,'nextclassid'),(60,162,'clicked'),(61,168,'id'),(62,168,'from_alert'),(63,168,'detail_flag'),(64,180,'maxLevel'),(65,192,'popurl'),(66,192,'poptitle'),(67,195,'clicked'),(68,204,'clicked'),(69,211,'title'),(70,211,'nextclassid'),(71,211,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,6,1),(6,7,2),(7,8,1),(8,9,1),(9,10,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,2),(15,16,3),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,1),(23,26,1),(24,27,4),(25,28,1),(26,29,1),(27,30,3),(28,31,1),(29,32,2),(30,33,8),(31,34,13),(32,35,3),(33,36,3),(34,37,16),(35,38,8),(36,39,16),(37,40,8),(38,41,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,6,2),(5,12,2),(6,13,2),(7,23,2),(8,26,2),(9,28,2),(10,29,2),(11,31,2),(12,33,4),(13,34,4),(14,38,4),(15,40,4),(16,41,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,33,'package',NULL,NULL,NULL,NULL,NULL),(2,34,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,40,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,22,'application','vnd.android.package-archive'),(2,23,'application','vnd.android.package-archive'),(3,32,'application','vnd.android.package-archive'),(4,34,'application','vnd.android.package-archive'),(5,36,'application','vnd.android.package-archive'),(6,38,'application','vnd.android.package-archive'),(7,52,'application','vnd.android.package-archive'),(8,54,'application','vnd.android.package-archive'),(9,56,'application','vnd.android.package-archive'),(10,69,'application','vnd.android.package-archive'),(11,73,'application','vnd.android.package-archive'),(12,74,'application','vnd.android.package-archive'),(13,78,'application','vnd.android.package-archive'),(14,81,'application','vnd.android.package-archive'),(15,159,'application','vnd.android.package-archive'),(16,161,'application','vnd.android.package-archive'),(17,164,'application','vnd.android.package-archive'),(18,167,'application','vnd.android.package-archive'),(19,174,'(.*)','(.*)'),(20,177,'(.*)','(.*)'),(21,189,'(.*)','(.*)'),(22,190,'application','vnd.android.package-archive'),(23,191,'(.*)','(.*)'),(24,193,'application','vnd.android.package-archive'),(25,198,'(.*)','(.*)'),(26,199,'(.*)','(.*)'),(27,207,'application','vnd.android.package-archive'),(28,208,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'baltorogames.ieqjkdfuf'),(2,2,'baltorogames.ieqjkdfuf'),(3,5,'com.pintu_hljzy'),(4,6,'com.pintu_hljzy'),(5,7,'com.pintu_hljzy'),(6,8,'(.*)'),(7,9,''),(8,10,''),(9,11,'(.*)'),(10,12,'com.pintu_hljzy'),(11,14,'com.pintu_hljzy'),(12,15,'com.pintu_hljzy'),(13,16,'com.pintu_hljzy'),(14,17,'(.*)'),(15,18,''),(16,19,''),(17,20,'(.*)'),(18,21,'com.pintu_hljzy'),(19,25,'(.*)'),(20,28,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(21,27,''),(22,29,''),(23,31,'(.*)'),(24,33,'com.pintu_hljzy'),(25,35,'gamea.fqaqpcsrihhsa.tapav'),(26,39,'gamea.fqaqpcsrihhsa.tapav'),(27,37,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(28,40,'com.pintu_hljzy'),(29,41,'gamea.fqaqpcsrihhsa.tapav'),(30,43,'com.pintu_hljzy'),(31,45,'hww.nmj.ranb'),(32,46,'com.pintu_hljzy'),(33,47,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(34,49,'hww.nmj.ranb'),(35,51,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(36,55,'(.*)'),(37,57,''),(38,58,'(.*)'),(39,59,'hww.nmj.ranb'),(40,60,''),(41,61,'(.*)'),(42,62,'(.*)'),(43,63,'hww.nmj.ranb'),(44,64,'com.pintu_hljzy'),(45,67,'com.pintu_hljzy'),(46,68,'(.*)'),(47,70,'com.replayanimation'),(48,71,''),(49,69,'com.netmite.andme'),(50,72,''),(51,75,'(.*)'),(52,74,'com.netmite.andme'),(53,76,'com.replayanimation'),(54,77,'hww.nmj.ranb'),(55,78,'com.netmite.andme'),(56,79,'com.replayanimation'),(57,80,'(.*)'),(58,82,''),(59,83,'com.replayanimation'),(60,81,'com.netmite.andme'),(61,84,''),(62,85,'(.*)'),(63,86,'com.replayanimation'),(64,87,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(65,88,'com.replayanimation'),(66,89,'(.*)'),(67,91,''),(68,93,''),(69,92,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(70,94,'(.*)'),(71,95,'(.*)'),(72,96,''),(73,97,'(.*)'),(74,98,''),(75,99,'(.*)'),(76,100,'hww.nmj.ranb'),(77,101,'(.*)'),(78,102,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(79,103,'hww.nmj.ranb'),(80,104,'com.replayanimation'),(81,105,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(82,106,'hww.nmj.ranb'),(83,107,'com.replayanimation'),(84,109,'hww.nmj.ranb'),(85,108,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(86,111,'hww.nmj.ranb'),(87,110,'com.replayanimation'),(88,112,'(.*)'),(89,113,'hww.nmj.ranb'),(90,114,''),(91,115,'com.replayanimation'),(92,116,''),(93,117,'hww.nmj.ranb'),(94,118,'com.replayanimation'),(95,119,'(.*)'),(96,121,'com.replayanimation'),(97,123,'com.replayanimation'),(98,124,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(99,125,'hww.nmj.ranb'),(100,126,'com.replayanimation'),(101,127,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(102,129,'(.*)'),(103,128,'com.replayanimation'),(104,130,'hww.nmj.ranb'),(105,131,''),(106,132,'hww.nmj.ranb'),(107,133,''),(108,135,'hww.nmj.ranb'),(109,136,'(.*)'),(110,139,'com.replayanimation'),(111,140,'hww.nmj.ranb'),(112,141,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(113,142,'com.replayanimation'),(114,144,'hww.nmj.ranb'),(115,143,'com.replayanimation'),(116,147,'(.*)'),(117,148,'com.replayanimation'),(118,149,'(.*)'),(119,150,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(120,151,'com.replayanimation'),(121,152,'(.*)'),(122,153,'com.replayanimation'),(123,154,''),(124,155,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(125,156,'com.replayanimation'),(126,157,''),(127,158,'(.*)'),(128,160,'com.replayanimation'),(129,162,'com.replayanimation'),(130,163,'(.*)'),(131,165,'com.replayanimation'),(132,166,'(.*)'),(133,168,'com.replayanimation'),(134,170,'(.*)'),(135,172,'com.replayanimation'),(136,173,''),(137,176,''),(138,178,'(.*)'),(139,179,'(.*)'),(140,180,'hww.nmj.ranb'),(141,182,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(142,181,'(.*)'),(143,183,'hww.nmj.ranb'),(144,184,'cen.rupkomd.ejfut.rhidqddm.egkvr_guqrgg'),(145,185,'com.replayanimation'),(146,188,'com.replayanimation'),(147,192,'hww.nmj.ranb'),(148,195,'com.replayanimation'),(149,197,'com.replayanimation'),(150,202,'com.replayanimation'),(151,203,'com.replayanimation'),(152,204,'com.replayanimation'),(153,205,'com.replayanimation'),(154,209,'com.replayanimation'),(155,210,'com.replayanimation'),(156,211,'com.replayanimation'),(157,212,'com.replayanimation'),(158,213,'NULL-CONSTANT'),(159,214,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,8,0),(8,11,0),(9,12,0),(10,13,0),(11,15,0),(12,23,0),(13,24,0),(14,25,0),(15,27,0),(16,26,0),(17,29,0),(18,30,0),(19,31,0),(20,33,0),(21,35,0),(22,38,0),(23,37,0),(24,39,0),(25,44,0),(26,46,0),(27,45,0),(28,48,0),(29,49,0),(30,50,0),(31,52,0),(32,53,0),(33,50,0),(34,26,0),(35,54,0),(36,55,0),(37,56,0),(38,26,0),(39,57,0),(40,53,0),(41,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,7,1,0),(10,7,1,0),(11,7,1,0),(12,8,0,0),(13,9,1,0),(14,10,0,0),(15,11,0,0),(16,12,0,0),(17,13,1,0),(18,13,1,0),(19,13,1,0),(20,13,1,0),(21,14,0,0),(22,15,1,0),(23,15,1,0),(24,16,1,0),(25,17,1,0),(26,16,1,0),(27,17,1,0),(28,18,0,0),(29,17,1,0),(30,19,1,0),(31,17,1,0),(32,20,1,0),(33,21,0,0),(34,20,1,0),(35,22,0,0),(36,23,1,0),(37,24,0,0),(38,23,1,0),(39,25,0,0),(40,26,0,0),(41,27,0,0),(42,28,1,0),(43,29,0,0),(44,28,1,0),(45,30,0,0),(46,31,0,0),(47,32,0,0),(48,33,1,0),(49,30,0,0),(50,33,1,0),(51,34,0,0),(52,35,1,0),(53,33,1,0),(54,35,1,0),(55,36,1,0),(56,37,1,0),(57,36,1,0),(58,38,1,0),(59,39,0,0),(60,36,1,0),(61,38,1,0),(62,36,1,0),(63,41,0,0),(64,40,0,0),(65,42,1,0),(66,43,1,0),(67,40,0,0),(68,44,1,0),(69,43,0,0),(70,45,0,0),(71,44,1,0),(72,44,1,0),(73,46,1,0),(74,43,0,0),(75,44,1,0),(76,47,0,0),(77,48,0,0),(78,43,0,0),(79,49,0,0),(80,50,1,0),(81,43,0,0),(82,50,1,0),(83,51,0,0),(84,50,1,0),(85,50,1,0),(86,52,0,0),(87,53,0,0),(88,54,0,0),(89,55,1,0),(90,56,1,0),(91,55,1,0),(92,57,0,0),(93,55,1,0),(94,58,1,0),(95,55,1,0),(96,58,1,0),(97,59,1,0),(98,58,1,0),(99,59,1,0),(100,60,0,0),(101,58,1,0),(102,61,0,0),(103,62,0,0),(104,63,0,0),(105,64,0,0),(106,62,0,0),(107,65,0,0),(108,66,0,0),(109,67,0,0),(110,68,0,0),(111,69,0,0),(112,70,1,0),(113,71,0,0),(114,70,1,0),(115,72,0,0),(116,70,1,0),(117,73,0,0),(118,74,0,0),(119,70,1,0),(120,75,1,0),(121,76,0,0),(122,75,1,0),(123,77,0,0),(124,78,0,0),(125,79,0,0),(126,80,0,0),(127,81,0,0),(128,82,0,0),(129,83,1,0),(130,84,0,0),(131,83,1,0),(132,84,0,0),(133,83,1,0),(134,85,1,0),(135,84,0,0),(136,83,1,0),(137,85,1,0),(138,86,1,0),(139,87,0,0),(140,88,0,0),(141,89,0,0),(142,87,0,0),(143,90,0,0),(144,91,0,0),(145,92,1,0),(146,93,1,0),(147,94,1,0),(148,95,0,0),(149,94,1,0),(150,96,0,0),(151,97,0,0),(152,98,1,0),(153,99,0,0),(154,98,1,0),(155,100,0,0),(156,99,0,0),(157,98,1,0),(158,98,1,0),(159,101,1,0),(160,102,0,0),(161,101,1,0),(162,103,0,0),(163,104,1,0),(164,105,1,0),(165,106,0,0),(166,104,1,0),(167,105,1,0),(168,107,0,0),(169,108,1,0),(170,109,1,0),(171,108,1,0),(172,110,0,0),(173,109,1,0),(174,108,1,0),(175,111,1,0),(176,109,1,0),(177,108,1,0),(178,109,1,0),(179,112,1,0),(180,113,0,0),(181,112,1,0),(182,114,0,0),(183,115,0,0),(184,116,0,0),(185,117,0,0),(186,118,1,0),(187,118,1,0),(188,119,0,0),(189,118,1,0),(190,120,1,0),(191,118,1,0),(192,121,0,0),(193,122,1,0),(194,123,1,0),(195,124,0,0),(196,123,1,0),(197,125,0,0),(198,123,1,0),(199,123,1,0),(200,126,1,0),(201,127,1,0),(202,128,0,0),(203,128,0,0),(204,129,0,0),(205,130,0,0),(206,131,1,0),(207,132,1,0),(208,132,1,0),(209,133,0,0),(210,134,0,0),(211,135,0,0),(212,136,0,0),(213,137,1,0),(214,137,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,139,52,2,NULL),(2,142,52,2,NULL),(3,151,52,2,NULL),(4,115,52,2,NULL),(5,202,52,2,NULL),(6,203,52,2,NULL),(7,162,14,2,NULL),(8,172,35,2,NULL),(9,201,1,2,NULL),(10,201,2,2,NULL),(11,201,3,2,NULL),(12,201,6,2,NULL),(13,201,8,2,NULL),(14,201,4,2,NULL),(15,201,7,2,NULL),(16,201,11,2,NULL),(17,201,12,2,NULL),(18,201,13,2,NULL),(19,201,23,2,NULL),(20,201,26,2,NULL),(21,201,55,2,NULL),(22,201,56,2,NULL),(23,201,25,2,NULL),(24,201,27,2,NULL),(25,201,31,2,NULL),(26,201,35,2,NULL),(27,201,39,2,NULL),(28,201,45,2,NULL),(29,201,49,2,NULL),(30,201,52,2,NULL),(31,201,53,2,NULL),(32,201,15,2,NULL),(33,201,24,2,NULL),(34,201,30,2,NULL),(35,201,33,2,NULL),(36,201,38,2,NULL),(37,201,46,2,NULL),(38,201,50,2,NULL),(39,201,54,2,NULL),(40,201,57,2,NULL),(41,201,29,2,NULL),(42,201,37,2,NULL),(43,201,44,2,NULL),(44,201,48,2,NULL),(45,86,35,2,NULL),(46,212,52,2,NULL),(47,58,25,2,NULL),(48,61,25,2,NULL),(49,3,25,2,NULL),(50,4,25,2,NULL),(51,13,25,2,NULL),(52,97,25,2,NULL),(53,99,25,2,NULL),(54,112,25,2,NULL),(55,114,25,2,NULL),(56,116,25,2,NULL),(57,119,25,2,NULL),(58,30,25,2,NULL),(59,42,25,2,NULL),(60,44,25,2,NULL),(61,90,25,2,NULL),(62,179,25,2,NULL),(63,181,25,2,NULL),(64,134,25,2,NULL),(65,137,25,2,NULL),(66,146,25,2,NULL),(67,206,25,2,NULL),(68,147,25,2,NULL),(69,149,25,2,NULL),(70,163,25,2,NULL),(71,166,25,2,NULL),(72,68,25,2,NULL),(73,58,44,2,NULL),(74,71,25,2,NULL),(75,61,44,2,NULL),(76,72,25,2,NULL),(77,3,44,2,NULL),(78,75,25,2,NULL),(79,4,44,2,NULL),(80,120,25,2,NULL),(81,13,44,2,NULL),(82,122,25,2,NULL),(83,97,44,2,NULL),(84,138,25,2,NULL),(85,99,44,2,NULL),(86,48,25,2,NULL),(87,112,44,2,NULL),(88,50,25,2,NULL),(89,114,44,2,NULL),(90,53,25,2,NULL),(91,116,44,2,NULL),(92,126,35,2,NULL),(93,119,44,2,NULL),(94,165,52,2,NULL),(95,30,44,2,NULL),(96,58,27,2,NULL),(97,42,44,2,NULL),(98,61,27,2,NULL),(99,44,44,2,NULL),(100,3,27,2,NULL),(101,90,44,2,NULL),(102,4,27,2,NULL),(103,179,44,2,NULL),(104,13,27,2,NULL),(105,181,44,2,NULL),(106,97,27,2,NULL),(107,134,44,2,NULL),(108,99,27,2,NULL),(109,137,44,2,NULL),(110,112,27,2,NULL),(111,146,44,2,NULL),(112,114,27,2,NULL),(113,206,44,2,NULL),(114,116,27,2,NULL),(115,147,44,2,NULL),(116,119,27,2,NULL),(117,149,44,2,NULL),(118,30,27,2,NULL),(119,163,44,2,NULL),(120,42,27,2,NULL),(121,166,44,2,NULL),(122,44,27,2,NULL),(123,68,44,2,NULL),(124,90,27,2,NULL),(125,71,44,2,NULL),(126,179,27,2,NULL),(127,72,44,2,NULL),(128,181,27,2,NULL),(129,75,44,2,NULL),(130,134,27,2,NULL),(131,120,44,2,NULL),(132,137,27,2,NULL),(133,122,44,2,NULL),(134,146,27,2,NULL),(135,138,44,2,NULL),(136,206,27,2,NULL),(137,48,44,2,NULL),(138,147,27,2,NULL),(139,50,44,2,NULL),(140,149,27,2,NULL),(141,53,44,2,NULL),(142,163,27,2,NULL),(143,2,44,2,NULL),(144,166,27,2,NULL),(145,1,44,2,NULL),(146,68,27,2,NULL),(147,58,48,2,NULL),(148,71,27,2,NULL),(149,61,48,2,NULL),(150,72,27,2,NULL),(151,3,48,2,NULL),(152,75,27,2,NULL),(153,4,48,2,NULL),(154,120,27,2,NULL),(155,13,48,2,NULL),(156,122,27,2,NULL),(157,97,48,2,NULL),(158,138,27,2,NULL),(159,99,48,2,NULL),(160,48,27,2,NULL),(161,112,48,2,NULL),(162,50,27,2,NULL),(163,114,48,2,NULL),(164,53,27,2,NULL),(165,116,48,2,NULL),(166,76,52,2,NULL),(167,119,48,2,NULL),(168,58,31,2,NULL),(169,30,48,2,NULL),(170,61,31,2,NULL),(171,42,48,2,NULL),(172,3,31,2,NULL),(173,44,48,2,NULL),(174,4,31,2,NULL),(175,90,48,2,NULL),(176,13,31,2,NULL),(177,179,48,2,NULL),(178,97,31,2,NULL),(179,181,48,2,NULL),(180,99,31,2,NULL),(181,134,48,2,NULL),(182,112,31,2,NULL),(183,137,48,2,NULL),(184,114,31,2,NULL),(185,146,48,2,NULL),(186,116,31,2,NULL),(187,206,48,2,NULL),(188,119,31,2,NULL),(189,147,48,2,NULL),(190,30,31,2,NULL),(191,149,48,2,NULL),(192,42,31,2,NULL),(193,163,48,2,NULL),(194,44,31,2,NULL),(195,166,48,2,NULL),(196,90,31,2,NULL),(197,68,48,2,NULL),(198,179,31,2,NULL),(199,71,48,2,NULL),(200,181,31,2,NULL),(201,72,48,2,NULL),(202,134,31,2,NULL),(203,75,48,2,NULL),(204,137,31,2,NULL),(205,120,48,2,NULL),(206,146,31,2,NULL),(207,122,48,2,NULL),(208,206,31,2,NULL),(209,138,48,2,NULL),(210,147,31,2,NULL),(211,48,48,2,NULL),(212,149,31,2,NULL),(213,50,48,2,NULL),(214,163,31,2,NULL),(215,53,48,2,NULL),(216,166,31,2,NULL),(217,68,31,2,NULL),(218,71,31,2,NULL),(219,72,31,2,NULL),(220,75,31,2,NULL),(221,120,31,2,NULL),(222,122,31,2,NULL),(223,138,31,2,NULL),(224,48,31,2,NULL),(225,50,31,2,NULL),(226,53,31,2,NULL),(227,83,52,2,NULL),(228,121,14,2,NULL),(229,197,14,2,NULL),(230,205,14,2,NULL),(231,58,35,2,NULL),(232,61,35,2,NULL),(233,3,35,2,NULL),(234,4,35,2,NULL),(235,13,35,2,NULL),(236,97,35,2,NULL),(237,99,35,2,NULL),(238,112,35,2,NULL),(239,114,35,2,NULL),(240,116,35,2,NULL),(241,119,35,2,NULL),(242,30,35,2,NULL),(243,42,35,2,NULL),(244,44,35,2,NULL),(245,90,35,2,NULL),(246,179,35,2,NULL),(247,181,35,2,NULL),(248,134,35,2,NULL),(249,137,35,2,NULL),(250,146,35,2,NULL),(251,206,35,2,NULL),(252,147,35,2,NULL),(253,149,35,2,NULL),(254,163,35,2,NULL),(255,166,35,2,NULL),(256,68,35,2,NULL),(257,71,35,2,NULL),(258,72,35,2,NULL),(259,75,35,2,NULL),(260,120,35,2,NULL),(261,122,35,2,NULL),(262,138,35,2,NULL),(263,48,35,2,NULL),(264,50,35,2,NULL),(265,53,35,2,NULL),(266,185,35,2,NULL),(267,179,1,2,NULL),(268,181,1,2,NULL),(269,179,2,2,NULL),(270,181,2,2,NULL),(271,179,3,2,NULL),(272,181,3,2,NULL),(273,58,39,2,NULL),(274,61,39,2,NULL),(275,3,39,2,NULL),(276,4,39,2,NULL),(277,13,39,2,NULL),(278,179,6,2,NULL),(279,181,6,2,NULL),(280,179,8,2,NULL),(281,181,8,2,NULL),(282,179,4,2,NULL),(283,181,4,2,NULL),(284,179,7,2,NULL),(285,181,7,2,NULL),(286,179,11,2,NULL),(287,181,11,2,NULL),(288,179,12,2,NULL),(289,181,12,2,NULL),(290,97,39,2,NULL),(291,99,39,2,NULL),(292,179,13,2,NULL),(293,181,13,2,NULL),(294,112,39,2,NULL),(295,114,39,2,NULL),(296,116,39,2,NULL),(297,119,39,2,NULL),(298,30,39,2,NULL),(299,42,39,2,NULL),(300,44,39,2,NULL),(301,90,39,2,NULL),(302,179,23,2,NULL),(303,181,23,2,NULL),(304,179,26,2,NULL),(305,181,26,2,NULL),(306,179,55,2,NULL),(307,181,55,2,NULL),(308,179,56,2,NULL),(309,181,56,2,NULL),(310,134,39,2,NULL),(311,137,39,2,NULL),(312,146,39,2,NULL),(313,179,45,2,NULL),(314,181,45,2,NULL),(315,179,49,2,NULL),(316,181,49,2,NULL),(317,206,39,2,NULL),(318,179,52,2,NULL),(319,181,52,2,NULL),(320,179,53,2,NULL),(321,181,53,2,NULL),(322,179,15,2,NULL),(323,181,15,2,NULL),(324,179,24,2,NULL),(325,181,24,2,NULL),(326,179,30,2,NULL),(327,181,30,2,NULL),(328,147,39,2,NULL),(329,149,39,2,NULL),(330,179,33,2,NULL),(331,181,33,2,NULL),(332,163,39,2,NULL),(333,166,39,2,NULL),(334,179,38,2,NULL),(335,181,38,2,NULL),(336,68,39,2,NULL),(337,71,39,2,NULL),(338,72,39,2,NULL),(339,75,39,2,NULL),(340,120,39,2,NULL),(341,122,39,2,NULL),(342,138,39,2,NULL),(343,179,46,2,NULL),(344,181,46,2,NULL),(345,179,50,2,NULL),(346,181,50,2,NULL),(347,179,54,2,NULL),(348,181,54,2,NULL),(349,179,57,2,NULL),(350,181,57,2,NULL),(351,179,29,2,NULL),(352,181,29,2,NULL),(353,48,39,2,NULL),(354,50,39,2,NULL),(355,53,39,2,NULL),(356,179,37,2,NULL),(357,181,37,2,NULL),(358,128,42,2,NULL),(359,168,35,2,NULL),(360,134,1,2,NULL),(361,137,1,2,NULL),(362,146,1,2,NULL),(363,134,2,2,NULL),(364,137,2,2,NULL),(365,146,2,2,NULL),(366,134,3,2,NULL),(367,137,3,2,NULL),(368,146,3,2,NULL),(369,134,6,2,NULL),(370,137,6,2,NULL),(371,146,6,2,NULL),(372,134,8,2,NULL),(373,137,8,2,NULL),(374,146,8,2,NULL),(375,134,4,2,NULL),(376,137,4,2,NULL),(377,146,4,2,NULL),(378,134,7,2,NULL),(379,137,7,2,NULL),(380,146,7,2,NULL),(381,134,11,2,NULL),(382,137,11,2,NULL),(383,146,11,2,NULL),(384,134,12,2,NULL),(385,137,12,2,NULL),(386,146,12,2,NULL),(387,134,13,2,NULL),(388,137,13,2,NULL),(389,146,13,2,NULL),(390,134,23,2,NULL),(391,137,23,2,NULL),(392,146,23,2,NULL),(393,134,26,2,NULL),(394,137,26,2,NULL),(395,146,26,2,NULL),(396,134,55,2,NULL),(397,137,55,2,NULL),(398,146,55,2,NULL),(399,134,56,2,NULL),(400,137,56,2,NULL),(401,146,56,2,NULL),(402,134,45,2,NULL),(403,137,45,2,NULL),(404,146,45,2,NULL),(405,134,49,2,NULL),(406,137,49,2,NULL),(407,146,49,2,NULL),(408,134,52,2,NULL),(409,137,52,2,NULL),(410,146,52,2,NULL),(411,134,53,2,NULL),(412,137,53,2,NULL),(413,146,53,2,NULL),(414,134,15,2,NULL),(415,137,15,2,NULL),(416,146,15,2,NULL),(417,134,24,2,NULL),(418,137,24,2,NULL),(419,146,24,2,NULL),(420,134,30,2,NULL),(421,137,30,2,NULL),(422,146,30,2,NULL),(423,134,33,2,NULL),(424,137,33,2,NULL),(425,146,33,2,NULL),(426,134,38,2,NULL),(427,137,38,2,NULL),(428,146,38,2,NULL),(429,134,46,2,NULL),(430,137,46,2,NULL),(431,146,46,2,NULL),(432,134,50,2,NULL),(433,137,50,2,NULL),(434,146,50,2,NULL),(435,134,54,2,NULL),(436,137,54,2,NULL),(437,146,54,2,NULL),(438,134,57,2,NULL),(439,137,57,2,NULL),(440,146,57,2,NULL),(441,134,29,2,NULL),(442,137,29,2,NULL),(443,146,29,2,NULL),(444,134,37,2,NULL),(445,137,37,2,NULL),(446,146,37,2,NULL),(447,58,45,2,NULL),(448,61,45,2,NULL),(449,3,45,2,NULL),(450,4,45,2,NULL),(451,13,45,2,NULL),(452,97,45,2,NULL),(453,99,45,2,NULL),(454,112,45,2,NULL),(455,114,45,2,NULL),(456,116,45,2,NULL),(457,119,45,2,NULL),(458,30,45,2,NULL),(459,42,45,2,NULL),(460,44,45,2,NULL),(461,90,45,2,NULL),(462,206,45,2,NULL),(463,147,45,2,NULL),(464,149,45,2,NULL),(465,163,45,2,NULL),(466,166,45,2,NULL),(467,68,45,2,NULL),(468,71,45,2,NULL),(469,72,45,2,NULL),(470,75,45,2,NULL),(471,120,45,2,NULL),(472,122,45,2,NULL),(473,138,45,2,NULL),(474,48,45,2,NULL),(475,50,45,2,NULL),(476,53,45,2,NULL),(477,153,52,2,NULL),(478,156,52,2,NULL),(479,210,52,2,NULL),(480,58,49,2,NULL),(481,61,49,2,NULL),(482,3,49,2,NULL),(483,4,49,2,NULL),(484,13,49,2,NULL),(485,97,49,2,NULL),(486,99,49,2,NULL),(487,112,49,2,NULL),(488,114,49,2,NULL),(489,116,49,2,NULL),(490,119,49,2,NULL),(491,30,49,2,NULL),(492,42,49,2,NULL),(493,44,49,2,NULL),(494,90,49,2,NULL),(495,206,49,2,NULL),(496,147,49,2,NULL),(497,149,49,2,NULL),(498,163,49,2,NULL),(499,166,49,2,NULL),(500,68,49,2,NULL),(501,71,49,2,NULL),(502,72,49,2,NULL),(503,75,49,2,NULL),(504,120,49,2,NULL),(505,122,49,2,NULL),(506,138,49,2,NULL),(507,48,49,2,NULL),(508,50,49,2,NULL),(509,53,49,2,NULL),(510,148,35,2,NULL),(511,206,1,2,NULL),(512,206,2,2,NULL),(513,206,3,2,NULL),(514,206,6,2,NULL),(515,206,8,2,NULL),(516,206,4,2,NULL),(517,206,7,2,NULL),(518,206,11,2,NULL),(519,206,12,2,NULL),(520,206,13,2,NULL),(521,206,23,2,NULL),(522,206,26,2,NULL),(523,206,55,2,NULL),(524,206,56,2,NULL),(525,206,52,2,NULL),(526,206,53,2,NULL),(527,206,15,2,NULL),(528,206,24,2,NULL),(529,206,30,2,NULL),(530,206,33,2,NULL),(531,206,38,2,NULL),(532,206,46,2,NULL),(533,206,50,2,NULL),(534,206,54,2,NULL),(535,206,57,2,NULL),(536,206,29,2,NULL),(537,206,37,2,NULL),(538,58,52,2,NULL),(539,61,52,2,NULL),(540,3,52,2,NULL),(541,4,52,2,NULL),(542,13,52,2,NULL),(543,97,52,2,NULL),(544,99,52,2,NULL),(545,112,52,2,NULL),(546,114,52,2,NULL),(547,116,52,2,NULL),(548,119,52,2,NULL),(549,30,52,2,NULL),(550,42,52,2,NULL),(551,44,52,2,NULL),(552,90,52,2,NULL),(553,147,52,2,NULL),(554,149,52,2,NULL),(555,163,52,2,NULL),(556,166,52,2,NULL),(557,68,52,2,NULL),(558,71,52,2,NULL),(559,72,52,2,NULL),(560,75,52,2,NULL),(561,120,52,2,NULL),(562,122,52,2,NULL),(563,138,52,2,NULL),(564,48,52,2,NULL),(565,50,52,2,NULL),(566,53,52,2,NULL),(567,79,52,2,NULL),(568,88,52,2,NULL),(569,107,52,2,NULL),(570,58,53,2,NULL),(571,61,53,2,NULL),(572,3,53,2,NULL),(573,4,53,2,NULL),(574,13,53,2,NULL),(575,97,53,2,NULL),(576,99,53,2,NULL),(577,112,53,2,NULL),(578,114,53,2,NULL),(579,116,53,2,NULL),(580,119,53,2,NULL),(581,30,53,2,NULL),(582,42,53,2,NULL),(583,44,53,2,NULL),(584,90,53,2,NULL),(585,147,53,2,NULL),(586,149,53,2,NULL),(587,163,53,2,NULL),(588,166,53,2,NULL),(589,68,53,2,NULL),(590,71,53,2,NULL),(591,72,53,2,NULL),(592,75,53,2,NULL),(593,120,53,2,NULL),(594,122,53,2,NULL),(595,138,53,2,NULL),(596,48,53,2,NULL),(597,50,53,2,NULL),(598,53,53,2,NULL),(599,109,21,2,NULL),(600,180,18,2,NULL),(601,58,15,2,NULL),(602,61,15,2,NULL),(603,3,15,2,NULL),(604,4,15,2,NULL),(605,13,15,2,NULL),(606,97,15,2,NULL),(607,99,15,2,NULL),(608,112,15,2,NULL),(609,114,15,2,NULL),(610,116,15,2,NULL),(611,119,15,2,NULL),(612,30,15,2,NULL),(613,42,15,2,NULL),(614,44,15,2,NULL),(615,90,15,2,NULL),(616,147,15,2,NULL),(617,149,15,2,NULL),(618,163,15,2,NULL),(619,166,15,2,NULL),(620,68,15,2,NULL),(621,71,15,2,NULL),(622,72,15,2,NULL),(623,75,15,2,NULL),(624,120,15,2,NULL),(625,122,15,2,NULL),(626,138,15,2,NULL),(627,48,15,2,NULL),(628,50,15,2,NULL),(629,53,15,2,NULL),(630,125,46,2,NULL),(631,183,46,2,NULL),(632,58,24,2,NULL),(633,61,24,2,NULL),(634,3,24,2,NULL),(635,4,24,2,NULL),(636,13,24,2,NULL),(637,97,24,2,NULL),(638,99,24,2,NULL),(639,112,24,2,NULL),(640,114,24,2,NULL),(641,116,24,2,NULL),(642,119,24,2,NULL),(643,30,24,2,NULL),(644,42,24,2,NULL),(645,44,24,2,NULL),(646,90,24,2,NULL),(647,147,24,2,NULL),(648,149,24,2,NULL),(649,163,24,2,NULL),(650,166,24,2,NULL),(651,68,24,2,NULL),(652,71,24,2,NULL),(653,72,24,2,NULL),(654,75,24,2,NULL),(655,120,24,2,NULL),(656,122,24,2,NULL),(657,138,24,2,NULL),(658,48,24,2,NULL),(659,50,24,2,NULL),(660,53,24,2,NULL),(661,59,15,2,NULL),(662,63,46,2,NULL),(663,111,46,2,NULL),(664,147,1,2,NULL),(665,149,1,2,NULL),(666,147,2,2,NULL),(667,149,2,2,NULL),(668,147,3,2,NULL),(669,149,3,2,NULL),(670,58,30,2,NULL),(671,61,30,2,NULL),(672,3,30,2,NULL),(673,4,30,2,NULL),(674,13,30,2,NULL),(675,147,6,2,NULL),(676,149,6,2,NULL),(677,147,8,2,NULL),(678,149,8,2,NULL),(679,147,4,2,NULL),(680,149,4,2,NULL),(681,147,7,2,NULL),(682,149,7,2,NULL),(683,147,11,2,NULL),(684,149,11,2,NULL),(685,147,12,2,NULL),(686,149,12,2,NULL),(687,97,30,2,NULL),(688,99,30,2,NULL),(689,147,13,2,NULL),(690,149,13,2,NULL),(691,112,30,2,NULL),(692,114,30,2,NULL),(693,116,30,2,NULL),(694,119,30,2,NULL),(695,30,30,2,NULL),(696,42,30,2,NULL),(697,44,30,2,NULL),(698,90,30,2,NULL),(699,147,23,2,NULL),(700,149,23,2,NULL),(701,147,26,2,NULL),(702,149,26,2,NULL),(703,147,55,2,NULL),(704,149,55,2,NULL),(705,147,56,2,NULL),(706,149,56,2,NULL),(707,147,33,2,NULL),(708,149,33,2,NULL),(709,163,30,2,NULL),(710,166,30,2,NULL),(711,147,38,2,NULL),(712,149,38,2,NULL),(713,68,30,2,NULL),(714,71,30,2,NULL),(715,72,30,2,NULL),(716,75,30,2,NULL),(717,120,30,2,NULL),(718,122,30,2,NULL),(719,138,30,2,NULL),(720,147,46,2,NULL),(721,149,46,2,NULL),(722,147,50,2,NULL),(723,149,50,2,NULL),(724,147,54,2,NULL),(725,149,54,2,NULL),(726,147,57,2,NULL),(727,149,57,2,NULL),(728,147,29,2,NULL),(729,149,29,2,NULL),(730,48,30,2,NULL),(731,50,30,2,NULL),(732,53,30,2,NULL),(733,147,37,2,NULL),(734,149,37,2,NULL),(735,130,30,2,NULL),(736,132,30,2,NULL),(737,135,30,2,NULL),(738,163,1,2,NULL),(739,166,1,2,NULL),(740,163,2,2,NULL),(741,166,2,2,NULL),(742,163,3,2,NULL),(743,166,3,2,NULL),(744,58,33,2,NULL),(745,61,33,2,NULL),(746,3,33,2,NULL),(747,4,33,2,NULL),(748,13,33,2,NULL),(749,163,6,2,NULL),(750,166,6,2,NULL),(751,163,8,2,NULL),(752,166,8,2,NULL),(753,163,4,2,NULL),(754,166,4,2,NULL),(755,163,7,2,NULL),(756,166,7,2,NULL),(757,163,11,2,NULL),(758,166,11,2,NULL),(759,163,12,2,NULL),(760,166,12,2,NULL),(761,97,33,2,NULL),(762,99,33,2,NULL),(763,163,13,2,NULL),(764,166,13,2,NULL),(765,112,33,2,NULL),(766,114,33,2,NULL),(767,116,33,2,NULL),(768,119,33,2,NULL),(769,30,33,2,NULL),(770,42,33,2,NULL),(771,44,33,2,NULL),(772,90,33,2,NULL),(773,163,23,2,NULL),(774,166,23,2,NULL),(775,163,26,2,NULL),(776,166,26,2,NULL),(777,163,55,2,NULL),(778,166,55,2,NULL),(779,163,56,2,NULL),(780,166,56,2,NULL),(781,163,38,2,NULL),(782,166,38,2,NULL),(783,68,33,2,NULL),(784,71,33,2,NULL),(785,72,33,2,NULL),(786,75,33,2,NULL),(787,120,33,2,NULL),(788,122,33,2,NULL),(789,138,33,2,NULL),(790,163,46,2,NULL),(791,166,46,2,NULL),(792,163,50,2,NULL),(793,166,50,2,NULL),(794,163,54,2,NULL),(795,166,54,2,NULL),(796,163,57,2,NULL),(797,166,57,2,NULL),(798,163,29,2,NULL),(799,166,29,2,NULL),(800,48,33,2,NULL),(801,50,33,2,NULL),(802,53,33,2,NULL),(803,163,37,2,NULL),(804,166,37,2,NULL),(805,77,46,2,NULL),(806,68,1,2,NULL),(807,71,1,2,NULL),(808,72,1,2,NULL),(809,75,1,2,NULL),(810,68,2,2,NULL),(811,71,2,2,NULL),(812,72,2,2,NULL),(813,75,2,2,NULL),(814,68,3,2,NULL),(815,71,3,2,NULL),(816,72,3,2,NULL),(817,75,3,2,NULL),(818,58,38,2,NULL),(819,61,38,2,NULL),(820,3,38,2,NULL),(821,4,38,2,NULL),(822,13,38,2,NULL),(823,68,6,2,NULL),(824,71,6,2,NULL),(825,72,6,2,NULL),(826,75,6,2,NULL),(827,68,8,2,NULL),(828,71,8,2,NULL),(829,72,8,2,NULL),(830,75,8,2,NULL),(831,68,4,2,NULL),(832,71,4,2,NULL),(833,72,4,2,NULL),(834,75,4,2,NULL),(835,68,7,2,NULL),(836,71,7,2,NULL),(837,72,7,2,NULL),(838,75,7,2,NULL),(839,68,11,2,NULL),(840,71,11,2,NULL),(841,72,11,2,NULL),(842,75,11,2,NULL),(843,68,12,2,NULL),(844,71,12,2,NULL),(845,72,12,2,NULL),(846,75,12,2,NULL),(847,97,38,2,NULL),(848,99,38,2,NULL),(849,68,13,2,NULL),(850,71,13,2,NULL),(851,72,13,2,NULL),(852,75,13,2,NULL),(853,112,38,2,NULL),(854,114,38,2,NULL),(855,116,38,2,NULL),(856,119,38,2,NULL),(857,30,38,2,NULL),(858,42,38,2,NULL),(859,44,38,2,NULL),(860,90,38,2,NULL),(861,68,23,2,NULL),(862,71,23,2,NULL),(863,72,23,2,NULL),(864,75,23,2,NULL),(865,68,26,2,NULL),(866,71,26,2,NULL),(867,72,26,2,NULL),(868,75,26,2,NULL),(869,68,55,2,NULL),(870,71,55,2,NULL),(871,72,55,2,NULL),(872,75,55,2,NULL),(873,68,56,2,NULL),(874,71,56,2,NULL),(875,72,56,2,NULL),(876,75,56,2,NULL),(877,120,38,2,NULL),(878,122,38,2,NULL),(879,138,38,2,NULL),(880,68,46,2,NULL),(881,71,46,2,NULL),(882,72,46,2,NULL),(883,75,46,2,NULL),(884,68,50,2,NULL),(885,71,50,2,NULL),(886,72,50,2,NULL),(887,75,50,2,NULL),(888,68,54,2,NULL),(889,71,54,2,NULL),(890,72,54,2,NULL),(891,75,54,2,NULL),(892,68,57,2,NULL),(893,71,57,2,NULL),(894,72,57,2,NULL),(895,75,57,2,NULL),(896,68,29,2,NULL),(897,71,29,2,NULL),(898,72,29,2,NULL),(899,75,29,2,NULL),(900,48,38,2,NULL),(901,50,38,2,NULL),(902,53,38,2,NULL),(903,68,37,2,NULL),(904,71,37,2,NULL),(905,72,37,2,NULL),(906,75,37,2,NULL),(907,100,30,2,NULL),(908,120,1,2,NULL),(909,122,1,2,NULL),(910,120,2,2,NULL),(911,122,2,2,NULL),(912,120,3,2,NULL),(913,122,3,2,NULL),(914,120,6,2,NULL),(915,122,6,2,NULL),(916,120,8,2,NULL),(917,122,8,2,NULL),(918,120,4,2,NULL),(919,122,4,2,NULL),(920,120,7,2,NULL),(921,122,7,2,NULL),(922,120,11,2,NULL),(923,122,11,2,NULL),(924,120,12,2,NULL),(925,122,12,2,NULL),(926,120,13,2,NULL),(927,122,13,2,NULL),(928,120,23,2,NULL),(929,122,23,2,NULL),(930,120,26,2,NULL),(931,122,26,2,NULL),(932,120,55,2,NULL),(933,122,55,2,NULL),(934,120,56,2,NULL),(935,122,56,2,NULL),(936,120,46,2,NULL),(937,122,46,2,NULL),(938,120,50,2,NULL),(939,122,50,2,NULL),(940,120,54,2,NULL),(941,122,54,2,NULL),(942,120,57,2,NULL),(943,122,57,2,NULL),(944,120,29,2,NULL),(945,122,29,2,NULL),(946,120,37,2,NULL),(947,122,37,2,NULL),(948,140,46,2,NULL),(949,138,1,2,NULL),(950,138,2,2,NULL),(951,138,3,2,NULL),(952,138,6,2,NULL),(953,138,8,2,NULL),(954,138,4,2,NULL),(955,138,7,2,NULL),(956,138,11,2,NULL),(957,138,12,2,NULL),(958,138,13,2,NULL),(959,138,23,2,NULL),(960,138,26,2,NULL),(961,138,55,2,NULL),(962,138,56,2,NULL),(963,138,46,2,NULL),(964,138,50,2,NULL),(965,138,54,2,NULL),(966,138,57,2,NULL),(967,138,29,2,NULL),(968,138,37,2,NULL),(969,58,46,2,NULL),(970,61,46,2,NULL),(971,3,46,2,NULL),(972,4,46,2,NULL),(973,13,46,2,NULL),(974,97,46,2,NULL),(975,99,46,2,NULL),(976,112,46,2,NULL),(977,114,46,2,NULL),(978,116,46,2,NULL),(979,119,46,2,NULL),(980,30,46,2,NULL),(981,42,46,2,NULL),(982,44,46,2,NULL),(983,90,46,2,NULL),(984,48,46,2,NULL),(985,50,46,2,NULL),(986,53,46,2,NULL),(987,45,46,2,NULL),(988,49,46,2,NULL),(989,103,46,2,NULL),(990,106,46,2,NULL),(991,113,46,2,NULL),(992,58,50,2,NULL),(993,61,50,2,NULL),(994,3,50,2,NULL),(995,4,50,2,NULL),(996,13,50,2,NULL),(997,97,50,2,NULL),(998,99,50,2,NULL),(999,112,50,2,NULL),(1000,114,50,2,NULL),(1001,116,50,2,NULL),(1002,119,50,2,NULL),(1003,30,50,2,NULL),(1004,42,50,2,NULL),(1005,44,50,2,NULL),(1006,90,50,2,NULL),(1007,48,50,2,NULL),(1008,50,50,2,NULL),(1009,53,50,2,NULL),(1010,58,54,2,NULL),(1011,61,54,2,NULL),(1012,3,54,2,NULL),(1013,4,54,2,NULL),(1014,13,54,2,NULL),(1015,97,54,2,NULL),(1016,99,54,2,NULL),(1017,112,54,2,NULL),(1018,114,54,2,NULL),(1019,116,54,2,NULL),(1020,119,54,2,NULL),(1021,30,54,2,NULL),(1022,42,54,2,NULL),(1023,44,54,2,NULL),(1024,90,54,2,NULL),(1025,48,54,2,NULL),(1026,50,54,2,NULL),(1027,53,54,2,NULL),(1028,58,57,2,NULL),(1029,61,57,2,NULL),(1030,3,57,2,NULL),(1031,4,57,2,NULL),(1032,13,57,2,NULL),(1033,97,57,2,NULL),(1034,99,57,2,NULL),(1035,112,57,2,NULL),(1036,114,57,2,NULL),(1037,116,57,2,NULL),(1038,119,57,2,NULL),(1039,30,57,2,NULL),(1040,42,57,2,NULL),(1041,44,57,2,NULL),(1042,90,57,2,NULL),(1043,48,57,2,NULL),(1044,50,57,2,NULL),(1045,53,57,2,NULL),(1046,58,29,2,NULL),(1047,61,29,2,NULL),(1048,3,29,2,NULL),(1049,4,29,2,NULL),(1050,13,29,2,NULL),(1051,97,29,2,NULL),(1052,99,29,2,NULL),(1053,112,29,2,NULL),(1054,114,29,2,NULL),(1055,116,29,2,NULL),(1056,119,29,2,NULL),(1057,30,29,2,NULL),(1058,42,29,2,NULL),(1059,44,29,2,NULL),(1060,90,29,2,NULL),(1061,48,29,2,NULL),(1062,50,29,2,NULL),(1063,53,29,2,NULL),(1064,41,41,2,NULL),(1065,48,1,2,NULL),(1066,50,1,2,NULL),(1067,53,1,2,NULL),(1068,48,2,2,NULL),(1069,50,2,2,NULL),(1070,53,2,2,NULL),(1071,48,3,2,NULL),(1072,50,3,2,NULL),(1073,53,3,2,NULL),(1074,48,6,2,NULL),(1075,50,6,2,NULL),(1076,53,6,2,NULL),(1077,48,8,2,NULL),(1078,50,8,2,NULL),(1079,53,8,2,NULL),(1080,48,4,2,NULL),(1081,50,4,2,NULL),(1082,53,4,2,NULL),(1083,48,7,2,NULL),(1084,50,7,2,NULL),(1085,53,7,2,NULL),(1086,48,11,2,NULL),(1087,50,11,2,NULL),(1088,53,11,2,NULL),(1089,48,12,2,NULL),(1090,50,12,2,NULL),(1091,53,12,2,NULL),(1092,48,13,2,NULL),(1093,50,13,2,NULL),(1094,53,13,2,NULL),(1095,48,23,2,NULL),(1096,50,23,2,NULL),(1097,53,23,2,NULL),(1098,48,26,2,NULL),(1099,50,26,2,NULL),(1100,53,26,2,NULL),(1101,48,55,2,NULL),(1102,50,55,2,NULL),(1103,53,55,2,NULL),(1104,48,56,2,NULL),(1105,50,56,2,NULL),(1106,53,56,2,NULL),(1107,48,37,2,NULL),(1108,50,37,2,NULL),(1109,53,37,2,NULL),(1110,35,41,2,NULL),(1111,39,29,2,NULL),(1112,58,37,2,NULL),(1113,61,37,2,NULL),(1114,3,37,2,NULL),(1115,4,37,2,NULL),(1116,13,37,2,NULL),(1117,97,37,2,NULL),(1118,99,37,2,NULL),(1119,112,37,2,NULL),(1120,114,37,2,NULL),(1121,116,37,2,NULL),(1122,119,37,2,NULL),(1123,30,37,2,NULL),(1124,42,37,2,NULL),(1125,44,37,2,NULL),(1126,90,37,2,NULL),(1127,58,4,2,NULL),(1128,61,4,2,NULL),(1129,3,4,2,NULL),(1130,4,4,2,NULL),(1131,13,4,2,NULL),(1132,97,4,2,NULL),(1133,99,4,2,NULL),(1134,112,4,2,NULL),(1135,114,4,2,NULL),(1136,116,4,2,NULL),(1137,119,4,2,NULL),(1138,30,4,2,NULL),(1139,42,4,2,NULL),(1140,44,4,2,NULL),(1141,90,4,2,NULL),(1142,28,23,2,NULL),(1143,127,23,2,NULL),(1144,58,7,2,NULL),(1145,61,7,2,NULL),(1146,3,7,2,NULL),(1147,4,7,2,NULL),(1148,13,7,2,NULL),(1149,97,7,2,NULL),(1150,99,7,2,NULL),(1151,112,7,2,NULL),(1152,114,7,2,NULL),(1153,116,7,2,NULL),(1154,119,7,2,NULL),(1155,30,7,2,NULL),(1156,42,7,2,NULL),(1157,44,7,2,NULL),(1158,90,7,2,NULL),(1159,150,4,2,NULL),(1160,141,23,2,NULL),(1161,184,23,2,NULL),(1162,58,11,2,NULL),(1163,61,11,2,NULL),(1164,3,11,2,NULL),(1165,4,11,2,NULL),(1166,13,11,2,NULL),(1167,97,11,2,NULL),(1168,99,11,2,NULL),(1169,112,11,2,NULL),(1170,114,11,2,NULL),(1171,116,11,2,NULL),(1172,119,11,2,NULL),(1173,30,11,2,NULL),(1174,42,11,2,NULL),(1175,44,11,2,NULL),(1176,90,11,2,NULL),(1177,51,11,2,NULL),(1178,97,1,2,NULL),(1179,99,1,2,NULL),(1180,97,2,2,NULL),(1181,99,2,2,NULL),(1182,97,3,2,NULL),(1183,99,3,2,NULL),(1184,58,12,2,NULL),(1185,61,12,2,NULL),(1186,3,12,2,NULL),(1187,4,12,2,NULL),(1188,13,12,2,NULL),(1189,97,6,2,NULL),(1190,99,6,2,NULL),(1191,97,8,2,NULL),(1192,99,8,2,NULL),(1193,97,13,2,NULL),(1194,99,13,2,NULL),(1195,112,12,2,NULL),(1196,114,12,2,NULL),(1197,116,12,2,NULL),(1198,119,12,2,NULL),(1199,30,12,2,NULL),(1200,42,12,2,NULL),(1201,44,12,2,NULL),(1202,90,12,2,NULL),(1203,97,23,2,NULL),(1204,99,23,2,NULL),(1205,97,26,2,NULL),(1206,99,26,2,NULL),(1207,97,55,2,NULL),(1208,99,55,2,NULL),(1209,97,56,2,NULL),(1210,99,56,2,NULL),(1211,47,23,2,NULL),(1212,112,1,2,NULL),(1213,114,1,2,NULL),(1214,116,1,2,NULL),(1215,119,1,2,NULL),(1216,112,2,2,NULL),(1217,114,2,2,NULL),(1218,116,2,2,NULL),(1219,119,2,2,NULL),(1220,112,3,2,NULL),(1221,114,3,2,NULL),(1222,116,3,2,NULL),(1223,119,3,2,NULL),(1224,58,13,2,NULL),(1225,61,13,2,NULL),(1226,3,13,2,NULL),(1227,4,13,2,NULL),(1228,13,13,2,NULL),(1229,112,6,2,NULL),(1230,114,6,2,NULL),(1231,116,6,2,NULL),(1232,119,6,2,NULL),(1233,112,8,2,NULL),(1234,114,8,2,NULL),(1235,116,8,2,NULL),(1236,119,8,2,NULL),(1237,30,13,2,NULL),(1238,42,13,2,NULL),(1239,44,13,2,NULL),(1240,90,13,2,NULL),(1241,112,23,2,NULL),(1242,114,23,2,NULL),(1243,116,23,2,NULL),(1244,119,23,2,NULL),(1245,112,26,2,NULL),(1246,114,26,2,NULL),(1247,116,26,2,NULL),(1248,119,26,2,NULL),(1249,112,55,2,NULL),(1250,114,55,2,NULL),(1251,116,55,2,NULL),(1252,119,55,2,NULL),(1253,112,56,2,NULL),(1254,114,56,2,NULL),(1255,116,56,2,NULL),(1256,119,56,2,NULL),(1257,37,17,2,NULL),(1258,92,11,2,NULL),(1259,30,1,2,NULL),(1260,42,1,2,NULL),(1261,44,1,2,NULL),(1262,30,2,2,NULL),(1263,42,2,2,NULL),(1264,44,2,2,NULL),(1265,30,3,2,NULL),(1266,42,3,2,NULL),(1267,44,3,2,NULL),(1268,30,6,2,NULL),(1269,42,6,2,NULL),(1270,44,6,2,NULL),(1271,30,8,2,NULL),(1272,42,8,2,NULL),(1273,44,8,2,NULL),(1274,30,23,2,NULL),(1275,42,23,2,NULL),(1276,44,23,2,NULL),(1277,30,26,2,NULL),(1278,42,26,2,NULL),(1279,44,26,2,NULL),(1280,30,55,2,NULL),(1281,42,55,2,NULL),(1282,44,55,2,NULL),(1283,30,56,2,NULL),(1284,42,56,2,NULL),(1285,44,56,2,NULL),(1286,102,23,2,NULL),(1287,90,1,2,NULL),(1288,90,2,2,NULL),(1289,90,3,2,NULL),(1290,90,6,2,NULL),(1291,90,8,2,NULL),(1292,90,23,2,NULL),(1293,90,26,2,NULL),(1294,90,55,2,NULL),(1295,90,56,2,NULL),(1296,58,23,2,NULL),(1297,61,23,2,NULL),(1298,3,23,2,NULL),(1299,4,23,2,NULL),(1300,13,23,2,NULL),(1301,87,23,2,NULL),(1302,105,23,2,NULL),(1303,155,23,2,NULL),(1304,58,26,2,NULL),(1305,61,26,2,NULL),(1306,3,26,2,NULL),(1307,4,26,2,NULL),(1308,13,26,2,NULL),(1309,58,55,2,NULL),(1310,61,55,2,NULL),(1311,3,55,2,NULL),(1312,4,55,2,NULL),(1313,13,55,2,NULL),(1314,58,56,2,NULL),(1315,61,56,2,NULL),(1316,3,56,2,NULL),(1317,4,56,2,NULL),(1318,13,56,2,NULL),(1319,58,1,2,NULL),(1320,61,1,2,NULL),(1321,3,1,2,NULL),(1322,4,1,2,NULL),(1323,13,1,2,NULL),(1324,5,1,2,NULL),(1325,6,1,2,NULL),(1326,43,1,2,NULL),(1327,46,1,2,NULL),(1328,58,2,2,NULL),(1329,61,2,2,NULL),(1330,3,2,2,NULL),(1331,4,2,2,NULL),(1332,13,2,2,NULL),(1333,40,2,2,NULL),(1334,3,3,2,NULL),(1335,4,3,2,NULL),(1336,13,3,2,NULL),(1337,58,6,2,NULL),(1338,61,6,2,NULL),(1339,58,8,2,NULL),(1340,61,8,2,NULL),(1341,15,5,2,NULL),(1342,33,2,2,NULL),(1343,3,6,2,NULL),(1344,4,6,2,NULL),(1345,13,6,2,NULL),(1346,3,8,2,NULL),(1347,4,8,2,NULL),(1348,13,8,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BLUETOOTH'),(16,'android.permission.BLUETOOTH_ADMIN'),(8,'android.permission.DELETE_CACHE_FILES'),(11,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.SET_WALLPAPER'),(15,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,5),(15,2,6),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,3,1),(21,3,2),(22,3,3),(23,3,4),(24,4,1),(25,3,5),(26,4,2),(27,3,6),(28,4,5),(29,3,7),(30,4,6),(31,3,8),(32,4,9),(33,3,9),(34,4,10),(35,3,10),(36,4,11),(37,3,13),(38,4,12),(39,5,1),(40,5,5),(41,5,6),(42,5,9),(43,5,11),(44,5,12),(45,6,16),(46,6,1),(47,6,5),(48,6,6),(49,6,9),(50,6,12),(51,6,14),(52,6,15);
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

-- Dump completed on 2015-10-12  3:30:31
