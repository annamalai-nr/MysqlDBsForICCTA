-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_412
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (22,'.ImageTestActivity'),(20,'.Myhall'),(15,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DELETE'),(8,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SENDTO'),(3,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(17,'com.dmbjy.GameBootReceiver'),(21,'com.dmbjy.Myhall'),(13,'com.dmbjy.Web'),(11,'com.picshow1.GameBootReceiver'),(23,'com.picshow1.ImageTestActivity'),(19,'com.picshow1.Myhall'),(18,'com.picshow1.Web'),(6,'tkn.ogfad.gpvcj.fkmhbundqj'),(7,'tkn.ogfad.gpvcj.fkmhbundqj(.*)');
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
INSERT INTO `Applications` VALUES (1,'igun.rqmv',10045),(2,'com.dmbjy',30001),(3,'tkn.ogfad.gpvcj.fkmhbundqj',10027),(4,'com.picshow1',1002),(5,'com.olkf.lsmqrdffr.jmodmtlao.qqjt',10033),(6,'dqco.plehovl',10033);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'igun.rqmv.SchottGunn'),(2,1,'com.wjcTU.WOeUCdjAnwnPdbP'),(3,1,'com.wjcTU.MGJTAQksastN'),(4,2,'com.dmbjy.book.MyBookActivity'),(5,3,'tkn.ogfad.gpvcj.fkmhbundqj.MainScreen'),(6,2,'com.dmbjy.book.ADactivity'),(7,3,'com.mobclix.android.sdk.MobclixBrowserActivity'),(8,2,'com.dmbjy.book.ShowContent'),(9,3,'com.lHrAIJ.wDcdTEsV'),(10,2,'com.dmbjy.book.SetActivity'),(11,4,'com.picshow1.Myhall'),(12,2,'com.dmbjy.Myhall'),(13,4,'com.picshow1.Web'),(14,3,'com.lHrAIJ.sIHKcQcwVjF'),(15,2,'com.dmbjy.Web'),(16,4,'com.picshow1.HomeActivity'),(17,3,'com.lHrAIJ.MyAppInfo'),(18,2,'com.dmbjy.HomeActivity'),(19,4,'com.picshow1.SortActivity1'),(20,2,'com.dmbjy.SortActivity1'),(21,4,'com.picshow1.SortActivity2'),(22,3,'com.lHrAIJ.UJiDnIFIJS'),(23,2,'com.dmbjy.SortActivity2'),(24,4,'com.picshow1.SearchActivity'),(25,3,'com.lHrAIJ.HoVoqcapJR'),(26,2,'com.dmbjy.SearchActivity'),(27,4,'com.picshow1.ManagerActivity'),(28,3,'com.lHrAIJ.MyAppAlertDialog'),(29,2,'com.dmbjy.ManagerActivity'),(30,3,'com.lHrAIJ.KdlOUSfDBLQK'),(31,4,'com.picshow1.GameInfo'),(32,3,'com.lHrAIJ.MyAppService'),(33,2,'com.dmbjy.GameInfo'),(34,4,'com.picshow1.TableClass'),(35,2,'com.dmbjy.TableClass'),(36,3,'com.lHrAIJ.BootReceiverService'),(37,4,'com.picshow1.GameAlertDialog'),(38,2,'com.dmbjy.GameAlertDialog'),(39,4,'com.picshow1.DevelopmentSettings'),(40,2,'com.dmbjy.DevelopmentSettings'),(41,5,'com.olkf.lsmqrdffr.jmodmtlao.qqjt.Main'),(42,2,'com.dmbjy.GameService'),(43,4,'com.picshow1.image.ImageTestActivity'),(44,5,'com.LUWqdmwh.qsnCfjkBru'),(45,2,'com.dmbjy.GameBootReceiver'),(46,4,'com.picshow1.GameService'),(47,5,'com.LUWqdmwh.akqlsUJkseCiE'),(48,5,'com.LUWqdmwh.ntpDurIhbwNACpL'),(49,4,'com.picshow1.GameBootReceiver'),(50,5,'com.LUWqdmwh.phDWdatTa'),(51,5,'com.LUWqdmwh.MsVNDlkAlpwabB'),(52,5,'com.LUWqdmwh.QBgCWkoDesFPUg'),(53,5,'com.LUWqdmwh.userPermissionReceiver'),(54,6,'dqco.plehovl.SpeedTesting'),(55,6,'dqco.plehovl.HiScoreScreen'),(56,6,'dqco.plehovl.GameScreen'),(57,6,'dqco.plehovl.Preferences'),(58,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(59,6,'com.papaya.base.EntryActivity'),(60,6,'com.papaya.web.WebActivity'),(61,6,'com.papaya.web.ExternalWebActivity'),(62,6,'com.papaya.social.SocialRegistrationActivity'),(63,6,'com.papaya.chat.FriendsActivity'),(64,6,'com.papaya.chat.ChatActivity'),(65,6,'com.papaya.utils.CountryCodeActivity'),(66,6,'com.HVpABbwNR.qsnCfjkBru'),(67,6,'com.HVpABbwNR.akqlsUJkseCiE'),(68,6,'com.HVpABbwNR.ntpDurIhbwNACpL'),(69,6,'com.HVpABbwNR.phDWdatTa'),(70,6,'com.HVpABbwNR.MsVNDlkAlpwabB'),(71,6,'com.HVpABbwNR.QBgCWkoDesFPUg'),(72,6,'com.HVpABbwNR.userPermissionReceiver'),(73,6,'com.papaya.social.PPYSocialContentProvider'),(74,5,'com.olkf.lsmqrdffr.jmodmtlao.qqjt.Main$21'),(75,3,'com.lHrAIJ.bx'),(76,5,'net.youmi.android.bb'),(77,5,'com.olkf.lsmqrdffr.jmodmtlao.qqjt.Main$20'),(78,5,'net.youmi.android.ch'),(79,3,'com.lHrAIJ.aa'),(80,4,'bv'),(81,5,'com.LUWqdmwh.ab'),(82,4,'cy'),(83,3,'com.lHrAIJ.ae'),(84,5,'net.youmi.android.bf'),(85,2,'aq'),(86,4,'ac'),(87,3,'com.lHrAIJ.ab'),(88,5,'net.youmi.android.bc'),(89,2,'u'),(90,4,'bd'),(91,5,'com.LUWqdmwh.j'),(92,2,'dx'),(93,4,'bo'),(94,4,'q'),(95,5,'net.youmi.android.ay'),(96,4,'ce'),(97,5,'net.youmi.android.ba'),(98,4,'af'),(99,5,'com.LUWqdmwh.ad'),(100,2,'al'),(101,2,'db'),(102,2,'ba'),(103,3,'com.lHrAIJ.by'),(104,4,'cd'),(105,3,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(106,3,'com.lHrAIJ.ah'),(107,3,'com.lHrAIJ.bh'),(108,3,'com.lHrAIJ.ak'),(109,2,'da'),(110,2,'cb'),(111,2,'bz'),(112,2,'ck'),(113,4,'cm');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'tkn.ogfad.gpvcj.fkmhbundqj.currency'),(2,48,'detailFlag'),(3,9,''),(4,9,'(.*)'),(5,48,'apkURL'),(6,7,'tkn.ogfad.gpvcj.fkmhbundqj.type'),(7,51,'packageName'),(8,17,'fa'),(9,25,'from'),(10,14,'popurl'),(11,51,'fileURL'),(12,52,'fileURL'),(13,48,'apkSoftID'),(14,48,'packageName'),(15,21,'nextclassid'),(16,17,''),(17,17,'(.*)'),(18,48,'imageURL'),(19,27,'package_name'),(20,27,'status'),(21,27,'soft_id'),(22,26,'package_name'),(23,48,'apkVersion'),(24,48,'apkSize'),(25,27,'icon'),(26,27,'app_name'),(27,24,'version_code'),(28,31,'title'),(29,33,'title'),(30,13,'service_channel'),(31,29,'completed'),(32,27,'url'),(33,29,'filepath'),(34,17,'tt'),(35,29,'total'),(36,17,'fp'),(37,9,'TEST_APP_ID'),(38,37,'url'),(39,33,'from_alert'),(40,27,'completed'),(41,48,'apkInfo'),(42,52,'fileName'),(43,29,'soft_id'),(44,38,'btn_txt'),(45,33,'from_table'),(46,29,'icon'),(47,48,'iconURL'),(48,30,'ctt'),(49,30,'au'),(50,28,''),(51,28,'(.*)'),(52,17,'st'),(53,24,'status'),(54,48,'apkTitle'),(55,25,''),(56,25,'(.*)'),(57,30,'tt'),(58,9,'si'),(59,28,'bt'),(60,37,'content'),(61,28,'ctt'),(62,47,'np_app_key'),(63,44,'np_app_key'),(64,52,'np_app_key'),(65,50,'np_app_key'),(66,48,'np_app_key'),(67,27,'total'),(68,31,'from_alert'),(69,38,'url'),(70,12,'service_channel'),(71,28,'tt'),(72,11,'service_channel'),(73,29,'app_name'),(74,42,'service_channel'),(75,12,'nextclassid'),(76,38,'title'),(77,27,'filepath'),(78,31,'status'),(79,46,'service_channel'),(80,25,'isDirectFromTable'),(81,17,'ft'),(82,33,'filepath'),(83,23,'package_name'),(84,28,'ftb'),(85,30,'pn'),(86,29,'package_name'),(87,14,'TEST_APP_ID'),(88,7,'tkn.ogfad.gpvcj.fkmhbundqj.data'),(89,23,'nextclassid'),(90,43,'service_channel'),(91,37,'btn_txt'),(92,11,'nextclassid'),(93,28,'ul'),(94,14,'poptitle'),(95,29,'url'),(96,21,'status'),(97,32,'TEST_APP_ID'),(98,4,'service_channel'),(99,33,'fromtype'),(100,26,'version_code'),(101,29,'status'),(102,31,'filepath'),(103,26,'status'),(104,24,'package_name'),(105,33,'game'),(106,15,'service_channel'),(107,23,'status'),(108,38,'package_name'),(109,21,'package_name'),(110,31,'from_table'),(111,38,'content'),(112,37,'title'),(113,33,'status'),(114,38,'version_code'),(115,38,'apk_url');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'p',0,NULL,NULL),(74,106,'r',1,NULL,NULL),(75,108,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,2),(3,3,47),(4,3,41),(5,4,9),(6,5,47),(7,6,44),(8,7,36),(9,8,44),(10,9,47),(11,10,22),(12,11,47),(13,12,24),(14,13,31),(15,14,17),(16,15,11),(17,16,47),(18,17,47),(19,18,34),(20,19,44),(21,20,16),(22,21,18),(23,22,17),(24,23,48),(25,23,47),(26,24,13),(27,25,38),(28,26,16),(29,27,47),(30,28,15),(31,29,21),(32,30,17),(33,31,47),(34,32,38),(35,32,35),(36,33,51),(37,34,27),(38,35,48),(39,35,47),(40,36,49),(41,37,38),(42,37,35),(43,38,28),(44,39,52),(45,40,33),(46,41,37),(47,42,17),(48,43,18),(49,44,13),(50,45,47),(51,46,33),(52,47,44),(53,48,31),(54,49,23),(55,50,47),(56,51,33),(57,52,48),(58,53,37),(59,54,35),(60,55,30),(61,56,11),(62,57,15),(63,58,47),(64,59,21),(65,60,17),(66,61,37),(67,62,53),(68,63,17),(69,64,33),(70,65,47),(71,66,27),(72,67,31),(73,68,12),(74,69,16),(75,70,4),(76,71,17),(77,72,21),(78,73,18),(79,74,4),(80,75,21),(81,76,9),(82,77,27),(83,78,8),(84,79,9),(85,80,31),(86,82,38),(87,81,22),(88,81,25),(89,81,28),(90,83,23),(91,84,15),(92,85,11),(93,86,7),(94,87,26),(95,88,16),(96,89,36),(97,90,6),(98,91,45),(99,92,24),(100,93,9),(101,94,13),(102,95,18),(103,96,14),(104,97,26),(105,98,16),(106,99,35),(107,100,30),(108,101,49),(109,102,36),(110,103,31),(111,104,12),(112,105,12),(113,106,34),(114,107,22),(115,107,25),(116,107,28),(117,108,31),(118,109,12),(119,110,22),(120,111,11),(121,112,23),(122,113,21),(123,114,9),(124,115,29),(125,116,37),(126,117,28),(127,118,45),(128,119,17),(129,120,12),(130,121,43),(131,122,17),(132,123,12),(133,124,11),(134,125,34),(135,126,23),(136,127,21),(137,128,45),(138,129,34),(139,130,38),(140,131,12),(141,132,11),(142,133,11),(143,134,29),(144,135,16),(145,136,43),(146,137,33),(147,138,49),(148,139,43),(149,140,18),(150,141,38),(151,142,8),(152,143,18),(153,144,8),(154,145,23),(155,146,23),(156,147,33),(157,148,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.wjcTU.MGJTAQksastN: void onRestart()>',4,'a',NULL),(2,2,'<com.wjcTU.WOeUCdjAnwnPdbP: void onRestart()>',7,'a',NULL),(3,74,'<com.olkf.lsmqrdffr.jmodmtlao.qqjt.Main$21: void onClick(android.view.View)>',15,'a',NULL),(4,75,'<com.lHrAIJ.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(5,76,'<net.youmi.android.bb: void onClick(android.view.View)>',14,'a',NULL),(6,44,'<com.LUWqdmwh.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(7,36,'<com.lHrAIJ.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(8,44,'<com.LUWqdmwh.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(9,77,'<com.olkf.lsmqrdffr.jmodmtlao.qqjt.Main$20: void onClick(android.view.View)>',7,'a',NULL),(10,22,'<com.lHrAIJ.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(11,78,'<net.youmi.android.ch: void onClick(android.view.View)>',26,'a',NULL),(12,24,'<com.picshow1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(13,31,'<com.picshow1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(14,79,'<com.lHrAIJ.aa: void onClick(android.view.View)>',197,'a',NULL),(15,11,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(16,47,'<com.LUWqdmwh.akqlsUJkseCiE: void b()>',45,'a',NULL),(17,47,'<com.LUWqdmwh.akqlsUJkseCiE: void b()>',55,'a',NULL),(18,80,'<bv: void a(int,boolean)>',29,'a',NULL),(19,81,'<com.LUWqdmwh.ab: void run()>',8,'s',NULL),(20,82,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(21,18,'<com.dmbjy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(22,83,'<com.lHrAIJ.ae: void onClick(android.view.View)>',197,'a',NULL),(23,48,'<com.LUWqdmwh.ntpDurIhbwNACpL: void a(com.LUWqdmwh.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(24,13,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(25,38,'<com.dmbjy.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(26,16,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(27,84,'<net.youmi.android.bf: void onClick(android.view.View)>',12,'a',NULL),(28,85,'<aq: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(29,86,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(30,87,'<com.lHrAIJ.ab: void onClick(android.view.View)>',200,'a',NULL),(31,88,'<net.youmi.android.bc: void onClick(android.view.View)>',8,'a',NULL),(32,89,'<u: void a(int,boolean)>',10,'s',NULL),(33,51,'<com.LUWqdmwh.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(34,90,'<bd: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(35,91,'<com.LUWqdmwh.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(36,49,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(37,89,'<u: void a(int,boolean)>',57,'a',NULL),(38,28,'<com.lHrAIJ.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(39,52,'<com.LUWqdmwh.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(40,33,'<com.dmbjy.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(41,37,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(42,79,'<com.lHrAIJ.aa: void onClick(android.view.View)>',182,'a',NULL),(43,92,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(44,93,'<bo: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(45,47,'<com.LUWqdmwh.akqlsUJkseCiE: void a()>',3,'a',NULL),(46,33,'<com.dmbjy.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(47,44,'<com.LUWqdmwh.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(48,94,'<q: void onClick(android.view.View)>',205,'a',NULL),(49,23,'<com.dmbjy.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(50,95,'<net.youmi.android.ay: void onClick(android.view.View)>',34,'a',NULL),(51,33,'<com.dmbjy.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(52,48,'<com.LUWqdmwh.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(53,37,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(54,35,'<com.dmbjy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(55,30,'<com.lHrAIJ.KdlOUSfDBLQK: void onClick(android.view.View)>',26,'a',NULL),(56,96,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(57,15,'<com.dmbjy.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(58,97,'<net.youmi.android.ba: void onClick(android.view.View)>',14,'a',NULL),(59,98,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(60,17,'<com.lHrAIJ.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(61,37,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(62,99,'<com.LUWqdmwh.ad: void run()>',25,'s',NULL),(63,87,'<com.lHrAIJ.ab: void onClick(android.view.View)>',185,'a',NULL),(64,100,'<al: void onClick(android.view.View)>',218,'a',NULL),(65,47,'<com.LUWqdmwh.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(66,27,'<com.picshow1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(67,31,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(68,101,'<db: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(69,16,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(70,102,'<ba: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(71,83,'<com.lHrAIJ.ae: void onClick(android.view.View)>',182,'a',NULL),(72,98,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(73,18,'<com.dmbjy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(74,4,'<com.dmbjy.book.MyBookActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(75,21,'<com.picshow1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(76,9,'<com.lHrAIJ.wDcdTEsV: void onCreate(android.os.Bundle)>',57,'s',NULL),(77,90,'<bd: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(78,8,'<com.dmbjy.book.ShowContent: void d()>',10,'a',NULL),(79,103,'<com.lHrAIJ.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(80,94,'<q: void onClick(android.view.View)>',224,'a',NULL),(81,25,'<com.lHrAIJ.HoVoqcapJR: void a(int,boolean)>',42,'a',NULL),(82,38,'<com.dmbjy.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(83,23,'<com.dmbjy.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(84,15,'<com.dmbjy.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(85,104,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(86,105,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(87,26,'<com.dmbjy.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(88,82,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(89,36,'<com.lHrAIJ.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(90,6,'<com.dmbjy.book.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(91,45,'<com.dmbjy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(92,24,'<com.picshow1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(93,107,'<com.lHrAIJ.bh: void onClick(android.view.View)>',101,'a',NULL),(94,13,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(95,18,'<com.dmbjy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(96,14,'<com.lHrAIJ.sIHKcQcwVjF: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(97,26,'<com.dmbjy.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(98,82,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(99,35,'<com.dmbjy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(100,30,'<com.lHrAIJ.KdlOUSfDBLQK: void onCreate(android.os.Bundle)>',13,'s',NULL),(101,49,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(102,36,'<com.lHrAIJ.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(103,31,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(104,12,'<com.dmbjy.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(105,101,'<db: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(106,34,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(107,25,'<com.lHrAIJ.HoVoqcapJR: void a(int,boolean)>',10,'s',NULL),(108,31,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(109,109,'<da: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(110,22,'<com.lHrAIJ.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(111,11,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(112,110,'<cb: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(113,21,'<com.picshow1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(114,9,'<com.lHrAIJ.wDcdTEsV: void onCreate(android.os.Bundle)>',61,'s',NULL),(115,29,'<com.dmbjy.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(116,37,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(117,28,'<com.lHrAIJ.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(118,45,'<com.dmbjy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(119,17,'<com.lHrAIJ.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(120,101,'<db: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(121,43,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(122,17,'<com.lHrAIJ.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(123,101,'<db: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(124,96,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(125,80,'<bv: void a(int,boolean)>',10,'s',NULL),(126,111,'<bz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(127,98,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(128,45,'<com.dmbjy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(129,34,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(130,38,'<com.dmbjy.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(131,12,'<com.dmbjy.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(132,96,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(133,96,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(134,112,'<ck: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(135,16,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(136,43,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(137,100,'<al: void onClick(android.view.View)>',239,'a',NULL),(138,49,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(139,113,'<cm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(140,92,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(141,38,'<com.dmbjy.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(142,8,'<com.dmbjy.book.ShowContent: void onClick(android.view.View)>',52,'a',NULL),(143,92,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(144,8,'<com.dmbjy.book.ShowContent: void onClick(android.view.View)>',56,'a',NULL),(145,110,'<cb: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(146,110,'<cb: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(147,33,'<com.dmbjy.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(148,112,'<ck: void onClick(android.content.DialogInterface,int)>',31,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,5,5),(3,6,6),(4,8,7),(5,9,5),(6,10,1),(7,12,5),(8,13,1),(9,14,5),(10,16,1),(11,19,1),(12,21,1),(13,23,1),(14,26,5),(15,27,1),(16,28,1),(17,30,1),(18,32,1),(19,33,1),(20,34,5),(21,35,1),(22,36,8),(23,37,5),(24,39,1),(25,40,5),(26,41,1),(27,43,5),(28,44,1),(29,45,9),(30,46,1),(31,47,5),(32,48,11),(33,50,5),(34,53,5),(35,55,5),(36,57,5),(37,58,5),(38,60,5),(39,63,5),(40,64,5),(41,66,5),(42,67,5),(43,69,1),(44,70,4),(45,71,1),(46,73,1),(47,75,13),(48,76,14),(49,77,5),(50,79,15),(51,82,5),(52,83,5),(53,85,5),(54,86,5),(55,87,5),(56,89,5),(57,93,5),(58,94,5),(59,95,5),(60,98,5),(61,99,5),(62,103,1),(63,105,1),(64,107,1),(65,109,1),(66,110,1),(67,111,1),(68,112,1),(69,113,1),(70,114,1),(71,116,1),(72,118,5),(73,119,5),(74,120,5),(75,125,17),(76,128,15),(77,130,18),(78,133,5),(79,134,1),(80,136,11),(81,137,1),(82,138,6),(83,141,7),(84,146,5),(85,148,19),(86,151,20),(87,156,5),(88,158,17),(89,159,5),(90,160,1),(91,163,1),(92,171,1),(93,172,4),(94,173,1),(95,174,21),(96,176,20),(97,178,1),(98,179,1),(99,181,1),(100,182,22),(101,183,1),(102,184,23),(103,185,1),(104,187,1),(105,188,5),(106,189,5),(107,190,5),(108,191,5),(109,196,5),(110,198,9);
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
INSERT INTO `ICategories` VALUES (1,10,1),(2,13,2),(3,16,1),(4,19,2),(5,21,1),(6,23,2),(7,27,1),(8,28,1),(9,30,2),(10,32,2),(11,33,1),(12,35,2),(13,39,1),(14,41,2),(15,44,1),(16,46,2),(17,69,1),(18,71,2),(19,73,4),(20,103,1),(21,105,2),(22,107,1),(23,109,1),(24,110,2),(25,111,2),(26,112,1),(27,113,1),(28,114,2),(29,116,2),(30,134,1),(31,137,2),(32,160,1),(33,163,2),(34,171,1),(35,173,2),(36,178,1),(37,179,2),(38,181,1),(39,183,2),(40,185,1),(41,187,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'igun/rqmv/SchottGunn'),(2,2,'igun/rqmv/SchottGunn'),(3,4,'tkn/ogfad/gpvcj/fkmhbundqj/MainScreen'),(4,6,'com/lHrAIJ/MyAppService'),(5,7,'com/LUWqdmwh/akqlsUJkseCiE'),(6,8,'com/lHrAIJ/MyAppService'),(7,11,'com/picshow1/GameService'),(8,15,'com/picshow1/Myhall'),(9,17,'com/picshow1/GameService'),(10,18,'com/olkf/lsmqrdffr/jmodmtlao/qqjt/Main'),(11,20,'com/olkf/lsmqrdffr/jmodmtlao/qqjt/Main'),(12,22,'com/picshow1/Myhall'),(13,24,'com/LUWqdmwh/phDWdatTa'),(14,25,'com/picshow1/GameInfo'),(15,29,'com/picshow1/GameService'),(16,31,'com/dmbjy/GameAlertDialog'),(17,38,'com/picshow1/Myhall'),(18,42,'com/dmbjy/GameService'),(19,49,'com/dmbjy/book/MyBookActivity'),(20,48,'com/picshow1/GameService'),(21,52,'com/dmbjy/Myhall'),(22,54,'com/picshow1/GameInfo'),(23,51,'com/LUWqdmwh/ntpDurIhbwNACpL'),(24,56,'com/dmbjy/Myhall'),(25,59,'com/olkf/lsmqrdffr/jmodmtlao/qqjt/Main'),(26,61,'com/dmbjy/GameService'),(27,62,'com/LUWqdmwh/akqlsUJkseCiE'),(28,65,'com/dmbjy/GameInfo'),(29,68,'com/dmbjy/Myhall'),(30,72,'com/dmbjy/GameInfo'),(31,74,'com/picshow1/Myhall'),(32,75,'com/dmbjy/GameService'),(33,78,'com/lHrAIJ/MyAppService'),(34,79,'com/dmbjy/GameService'),(35,81,'com/LUWqdmwh/phDWdatTa'),(36,80,'com/picshow1/GameAlertDialog'),(37,84,'com/olkf/lsmqrdffr/jmodmtlao/qqjt/Main'),(38,88,'com/picshow1/GameService'),(39,90,'com/picshow1/Myhall'),(40,91,'com/dmbjy/Myhall'),(41,92,'com/picshow1/Myhall'),(42,97,'com/dmbjy/Myhall'),(43,96,'com/picshow1/Myhall'),(44,101,'com/picshow1/GameService'),(45,100,'com/dmbjy/book/ShowContent'),(46,102,'com/lHrAIJ/MyAppService'),(47,104,'com/dmbjy/book/ShowContent'),(48,106,'tkn/ogfad/gpvcj/fkmhbundqj/MainScreen'),(49,108,'com/dmbjy/GameInfo'),(50,115,'com/dmbjy/GameService'),(51,117,'com/dmbjy/GameService'),(52,121,'com/dmbjy/GameInfo'),(53,123,'com/lHrAIJ/MyAppService'),(54,122,'com/picshow1/Myhall'),(55,124,'com/dmbjy/GameInfo'),(56,125,'com/dmbjy/GameService'),(57,126,'com/picshow1/GameInfo'),(58,127,'com/lHrAIJ/sIHKcQcwVjF'),(59,128,'com/picshow1/GameService'),(60,129,'com/dmbjy/GameInfo'),(61,131,'tkn/ogfad/gpvcj/fkmhbundqj/MainScreen'),(62,130,'com/picshow1/GameService'),(63,132,'com/dmbjy/GameService'),(64,135,'com/lHrAIJ/MyAppService'),(65,136,'com/picshow1/GameService'),(66,138,'com/lHrAIJ/MyAppService'),(67,139,'com/picshow1/GameService'),(68,140,'com/dmbjy/GameService'),(69,141,'com/lHrAIJ/MyAppService'),(70,143,'com/picshow1/GameInfo'),(71,142,'com/dmbjy/Myhall'),(72,144,'com/lHrAIJ/MyAppService'),(73,145,'com/picshow1/Myhall'),(74,147,'com/lHrAIJ/MyAppInfo'),(75,148,'com/picshow1/GameService'),(76,149,'com/lHrAIJ/MyAppInfo'),(77,151,'com/picshow1/GameService'),(78,152,'com/lHrAIJ/MyAppInfo'),(79,150,'com/dmbjy/GameInfo'),(80,153,'com/picshow1/GameInfo'),(81,154,'com/lHrAIJ/MyAppService'),(82,155,'com/dmbjy/GameService'),(83,158,'com/dmbjy/GameService'),(84,157,'com/lHrAIJ/MyAppInfo'),(85,162,'com/picshow1/GameService'),(86,161,'com/dmbjy/Myhall'),(87,164,'com/lHrAIJ/MyAppService'),(88,165,'com/dmbjy/Myhall'),(89,166,'com/picshow1/Myhall'),(90,167,'com/picshow1/GameService'),(91,168,'com/dmbjy/Myhall'),(92,169,'com/picshow1/GameInfo'),(93,170,'com/dmbjy/GameService'),(94,174,'com/dmbjy/GameService'),(95,175,'com/picshow1/Myhall'),(96,176,'com/dmbjy/GameService'),(97,177,'com/picshow1/Myhall'),(98,180,'com/picshow1/GameInfo'),(99,182,'com/picshow1/GameService'),(100,184,'com/picshow1/GameService'),(101,186,'com/picshow1/GameService'),(102,192,'com/dmbjy/book/SetActivity'),(103,193,'com/dmbjy/GameInfo'),(104,194,'com/dmbjy/book/ADactivity'),(105,195,'com/dmbjy/Myhall'),(106,197,'com/dmbjy/Myhall');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,5,2),(3,9,3),(4,12,4),(5,14,5),(6,26,6),(7,34,7),(8,36,8),(9,37,9),(10,40,10),(11,43,11),(12,45,12),(13,47,13),(14,50,14),(15,53,15),(16,55,16),(17,57,17),(18,58,18),(19,60,19),(20,63,20),(21,64,21),(22,67,22),(23,66,23),(24,77,24),(25,76,25),(26,82,26),(27,83,28),(28,85,27),(29,87,30),(30,86,29),(31,89,31),(32,94,32),(33,93,33),(34,95,34),(35,98,35),(36,99,36),(37,119,37),(38,118,38),(39,120,39),(40,133,40),(41,146,41),(42,156,42),(43,159,43),(44,189,44),(45,188,45),(46,190,46),(47,191,47),(48,196,48),(49,198,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,25,'title'),(2,31,'title'),(3,31,'btn_txt'),(4,31,'need_adb_flag'),(5,31,'cont'),(6,31,'close_flag'),(7,38,'title'),(8,38,'nextclassid'),(9,38,'clicked'),(10,51,'apkVersion'),(11,51,'apkURL'),(12,51,'apkInfo'),(13,51,'packageName'),(14,54,'id'),(15,51,'apkSoftID'),(16,54,'from_table'),(17,51,'apkTitle'),(18,54,'detail_flag'),(19,51,'iconURL'),(20,51,'apkSize'),(21,51,'imageURL'),(22,56,'title'),(23,56,'nextclassid'),(24,56,'clicked'),(25,65,'title'),(26,65,'game'),(27,65,'fromtype'),(28,72,'game'),(29,72,'fromtype'),(30,74,'clicked'),(31,76,'sms_body'),(32,80,'title'),(33,80,'btn_txt'),(34,80,'need_adb_flag'),(35,80,'cont'),(36,80,'close_flag'),(37,91,'clicked'),(38,92,'nextclassid'),(39,92,'clicked'),(40,96,'title'),(41,97,'nextclassid'),(42,96,'nextclassid'),(43,97,'clicked'),(44,96,'clicked'),(45,100,'position'),(46,100,'contentid'),(47,100,'totalnum'),(48,104,'position'),(49,104,'contentid'),(50,104,'totalnum'),(51,108,'id'),(52,108,'from_alert'),(53,108,'detail_flag'),(54,121,'game'),(55,121,'fromtype'),(56,122,'title'),(57,122,'nextclassid'),(58,122,'clicked'),(59,124,'game'),(60,124,'fromtype'),(61,127,'popurl'),(62,127,'poptitle'),(63,129,'game'),(64,129,'fromtype'),(65,142,'clicked'),(66,147,''),(67,149,''),(68,149,'(.*)'),(69,150,'title'),(70,150,'game'),(71,152,'(.*)'),(72,150,'fromtype'),(73,153,'title'),(74,157,'id'),(75,157,'df'),(76,157,'fa'),(77,161,'clicked'),(78,165,'clicked'),(79,166,'clicked'),(80,168,'title'),(81,168,'nextclassid'),(82,168,'clicked'),(83,169,'title'),(84,175,'clicked'),(85,177,'clicked'),(86,192,'tsize'),(87,192,'tcolor'),(88,193,'title'),(89,193,'game'),(90,193,'fromtype'),(91,195,'title'),(92,195,'nextclassid'),(93,195,'clicked');
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
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,2),(19,20,3),(20,21,4),(21,22,4),(22,24,1),(23,25,1),(24,26,1),(25,27,2),(26,28,1),(27,29,2),(28,30,3),(29,32,1),(30,33,3),(31,34,10),(32,35,12),(33,36,10),(34,37,12),(35,38,12),(36,39,16),(37,40,3),(38,41,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,5,1),(4,16,1),(5,24,1),(6,25,1),(7,26,1),(8,28,1),(9,32,1),(10,34,3),(11,35,3),(12,36,3),(13,37,3),(14,38,3),(15,41,3);
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
INSERT INTO `IFData` VALUES (1,34,'package',NULL,NULL,NULL,NULL,NULL),(2,35,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,41,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,37,'application','vnd.android.package-archive'),(2,43,'application','vnd.android.package-archive'),(3,47,'application','vnd.android.package-archive'),(4,58,'application','vnd.android.package-archive'),(5,60,'(.*)','(.*)'),(6,63,'(.*)','(.*)'),(7,64,'application','vnd.android.package-archive'),(8,66,'application','vnd.android.package-archive'),(9,83,'application','vnd.android.package-archive'),(10,86,'application','vnd.android.package-archive'),(11,87,'(.*)','(.*)'),(12,89,'(.*)','(.*)'),(13,93,'application','vnd.android.package-archive'),(14,98,'(.*)','(.*)'),(15,99,'(.*)','(.*)'),(16,118,'application','vnd.android.package-archive'),(17,146,'application','vnd.android.package-archive'),(18,188,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'igun.rqmv'),(2,2,'igun.rqmv'),(3,4,'tkn.ogfad.gpvcj.fkmhbundqj'),(4,6,'tkn.ogfad.gpvcj.fkmhbundqj'),(5,7,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(6,8,'tkn.ogfad.gpvcj.fkmhbundqj'),(7,10,'(.*)'),(8,11,'com.picshow1'),(9,13,'(.*)'),(10,15,'com.picshow1'),(11,16,'(.*)'),(12,17,'com.picshow1'),(13,18,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(14,19,''),(15,20,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(16,21,''),(17,22,'com.picshow1'),(18,24,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(19,23,'(.*)'),(20,25,'com.picshow1'),(21,27,'(.*)'),(22,28,'(.*)'),(23,29,'com.picshow1'),(24,30,''),(25,32,'(.*)'),(26,33,''),(27,31,'com.dmbjy'),(28,35,'(.*)'),(29,39,'(.*)'),(30,38,'com.picshow1'),(31,42,'com.dmbjy'),(32,41,''),(33,44,''),(34,46,'(.*)'),(35,49,'com.dmbjy'),(36,48,'com.picshow1'),(37,52,'com.dmbjy'),(38,54,'com.picshow1'),(39,51,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(40,56,'com.dmbjy'),(41,59,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(42,61,'com.dmbjy'),(43,62,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(44,65,'com.dmbjy'),(45,68,'com.dmbjy'),(46,69,'(.*)'),(47,71,'(.*)'),(48,72,'com.dmbjy'),(49,74,'com.picshow1'),(50,75,'com.dmbjy'),(51,78,'tkn.ogfad.gpvcj.fkmhbundqj'),(52,79,'com.dmbjy'),(53,81,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(54,80,'com.picshow1'),(55,84,'com.olkf.lsmqrdffr.jmodmtlao.qqjt'),(56,88,'com.picshow1'),(57,90,'com.picshow1'),(58,91,'com.dmbjy'),(59,92,'com.picshow1'),(60,97,'com.dmbjy'),(61,96,'com.picshow1'),(62,101,'com.picshow1'),(63,100,'com.dmbjy'),(64,102,'tkn.ogfad.gpvcj.fkmhbundqj'),(65,103,'NULL-CONSTANT'),(66,105,'NULL-CONSTANT'),(67,106,'tkn.ogfad.gpvcj.fkmhbundqj'),(68,104,'com.dmbjy'),(69,107,'(.*)'),(70,109,'(.*)'),(71,108,'com.dmbjy'),(72,110,''),(73,111,''),(74,112,''),(75,113,''),(76,115,'com.dmbjy'),(77,114,'(.*)'),(78,116,'(.*)'),(79,117,'com.dmbjy'),(80,121,'com.dmbjy'),(81,123,'tkn.ogfad.gpvcj.fkmhbundqj'),(82,122,'com.picshow1'),(83,124,'com.dmbjy'),(84,125,'com.dmbjy'),(85,126,'com.picshow1'),(86,127,'tkn.ogfad.gpvcj.fkmhbundqj'),(87,128,'com.picshow1'),(88,129,'com.dmbjy'),(89,131,'tkn.ogfad.gpvcj.fkmhbundqj'),(90,130,'com.picshow1'),(91,132,'com.dmbjy'),(92,135,'tkn.ogfad.gpvcj.fkmhbundqj'),(93,134,'(.*)'),(94,136,'com.picshow1'),(95,137,'(.*)'),(96,138,'tkn.ogfad.gpvcj.fkmhbundqj'),(97,139,'com.picshow1'),(98,140,'com.dmbjy'),(99,141,'tkn.ogfad.gpvcj.fkmhbundqj'),(100,143,'com.picshow1'),(101,142,'com.dmbjy'),(102,144,'tkn.ogfad.gpvcj.fkmhbundqj'),(103,145,'com.picshow1'),(104,147,'tkn.ogfad.gpvcj.fkmhbundqj'),(105,148,'com.picshow1'),(106,149,'tkn.ogfad.gpvcj.fkmhbundqj'),(107,151,'com.picshow1'),(108,152,'tkn.ogfad.gpvcj.fkmhbundqj'),(109,150,'com.dmbjy'),(110,153,'com.picshow1'),(111,154,'tkn.ogfad.gpvcj.fkmhbundqj'),(112,155,'com.dmbjy'),(113,157,'tkn.ogfad.gpvcj.fkmhbundqj'),(114,158,'com.dmbjy'),(115,160,'(.*)'),(116,162,'com.picshow1'),(117,161,'com.dmbjy'),(118,163,'(.*)'),(119,164,'tkn.ogfad.gpvcj.fkmhbundqj'),(120,165,'com.dmbjy'),(121,166,'com.picshow1'),(122,167,'com.picshow1'),(123,168,'com.dmbjy'),(124,169,'com.picshow1'),(125,170,'com.dmbjy'),(126,171,'(.*)'),(127,173,'(.*)'),(128,174,'com.dmbjy'),(129,175,'com.picshow1'),(130,176,'com.dmbjy'),(131,177,'com.picshow1'),(132,178,'NULL-CONSTANT'),(133,179,'NULL-CONSTANT'),(134,180,'com.picshow1'),(135,181,'(.*)'),(136,182,'com.picshow1'),(137,183,''),(138,184,'com.picshow1'),(139,185,''),(140,186,'com.picshow1'),(141,187,'(.*)'),(142,192,'com.dmbjy'),(143,193,'com.dmbjy'),(144,194,'com.dmbjy'),(145,195,'com.dmbjy'),(146,197,'com.dmbjy');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,9,0),(6,17,0),(7,21,0),(8,22,0),(9,23,0),(10,24,0),(11,25,0),(12,26,0),(13,27,0),(14,29,0),(15,31,0),(16,32,0),(17,33,0),(18,34,0),(19,35,0),(20,36,0),(21,40,0),(22,39,0),(23,41,0),(24,42,0),(25,43,0),(26,44,0),(27,45,0),(28,46,0),(29,49,0),(30,53,0),(31,54,0),(32,66,0),(33,72,0),(34,45,0),(35,36,0),(36,36,0),(37,49,0),(38,45,0),(39,74,0),(40,75,0),(41,49,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,7,0,0),(7,8,0,0),(8,7,0,0),(9,9,1,0),(10,10,1,0),(11,12,0,0),(12,11,1,0),(13,10,1,0),(14,11,1,0),(15,13,0,0),(16,14,1,0),(17,15,0,0),(18,16,0,0),(19,14,1,0),(20,17,0,0),(21,14,1,0),(22,18,0,0),(23,14,1,0),(24,19,0,0),(25,20,0,0),(26,21,1,0),(27,22,1,0),(28,23,1,0),(29,24,0,0),(30,22,1,0),(31,25,0,0),(32,23,1,0),(33,22,1,0),(34,26,1,0),(35,22,1,0),(36,27,1,0),(37,28,1,0),(38,29,0,0),(39,30,1,0),(40,31,1,0),(41,30,1,0),(42,32,0,0),(43,33,1,0),(44,30,1,0),(45,34,1,0),(46,30,1,0),(47,35,1,0),(48,36,0,0),(49,37,0,0),(50,38,1,0),(51,39,0,0),(52,40,0,0),(53,38,1,0),(54,41,0,0),(55,42,1,0),(56,43,0,0),(57,42,1,0),(58,44,1,0),(59,45,0,0),(60,42,1,0),(61,46,0,0),(62,47,0,0),(63,42,1,0),(64,48,1,0),(65,49,0,0),(66,48,1,0),(67,50,1,0),(68,51,0,0),(69,52,1,0),(70,53,1,0),(71,52,1,0),(72,54,0,0),(73,55,1,0),(74,56,0,0),(75,57,0,0),(76,58,1,0),(77,59,1,0),(78,60,0,0),(79,57,0,0),(80,61,0,0),(81,62,0,0),(82,63,1,0),(83,64,1,0),(84,65,0,0),(85,63,1,0),(86,64,1,0),(87,63,1,0),(88,66,0,0),(89,63,1,0),(90,67,0,0),(91,68,0,0),(92,69,0,0),(93,70,1,0),(94,71,1,0),(95,71,1,0),(96,72,0,0),(97,73,0,0),(98,71,1,0),(99,71,1,0),(100,74,0,0),(101,75,0,0),(102,76,0,0),(103,77,1,0),(104,78,0,0),(105,77,1,0),(106,79,0,0),(107,80,1,0),(108,82,0,0),(109,81,1,0),(110,80,1,0),(111,81,1,0),(112,80,1,0),(113,81,1,0),(114,80,1,0),(115,83,0,0),(116,81,1,0),(117,84,0,0),(118,85,1,0),(119,86,1,0),(120,86,1,0),(121,87,0,0),(122,88,0,0),(123,89,0,0),(124,90,0,0),(125,91,0,0),(126,92,0,0),(127,93,0,0),(128,94,0,0),(129,95,0,0),(130,94,0,0),(131,96,0,0),(132,97,0,0),(133,98,1,0),(134,99,1,0),(135,100,0,0),(136,101,0,0),(137,99,1,0),(138,102,0,0),(139,103,0,0),(140,104,0,0),(141,102,0,0),(142,105,0,0),(143,106,0,0),(144,107,0,0),(145,108,0,0),(146,109,1,0),(147,110,0,0),(148,111,0,0),(149,110,0,0),(150,112,0,0),(151,111,0,0),(152,110,0,0),(153,113,0,0),(154,114,0,0),(155,115,0,0),(156,116,1,0),(157,117,0,0),(158,118,0,0),(159,116,1,0),(160,119,1,0),(161,120,0,0),(162,121,0,0),(163,119,1,0),(164,122,0,0),(165,123,0,0),(166,124,0,0),(167,125,0,0),(168,126,0,0),(169,127,0,0),(170,128,0,0),(171,129,1,0),(172,130,1,0),(173,129,1,0),(174,131,0,0),(175,132,0,0),(176,131,0,0),(177,133,0,0),(178,134,1,0),(179,134,1,0),(180,135,0,0),(181,137,1,0),(182,136,0,0),(183,137,1,0),(184,136,0,0),(185,137,1,0),(186,138,0,0),(187,137,1,0),(188,139,1,0),(189,140,1,0),(190,141,1,0),(191,141,1,0),(192,142,0,0),(193,143,0,0),(194,144,0,0),(195,145,0,0),(196,146,1,0),(197,147,0,0),(198,148,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'pipo.android.ppy_cache');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.DELETE_CACHE_FILES'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(11,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.SET_WALLPAPER'),(15,'android.permission.SYSTEM_ALERT_WINDOW'),(4,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,73,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://antibodygame.com/litehighscore.html?login=(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.ckck.antibody2.antibody2',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'tel:',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://ditu.google.com/maps?q=,()&z=15&cbp=1',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'smsto:',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,6),(11,2,7),(12,3,1),(13,2,8),(14,3,2),(15,2,9),(16,3,3),(17,2,10),(18,3,5),(19,2,11),(20,3,6),(21,2,12),(22,3,7),(23,2,13),(24,3,9),(25,4,1),(26,3,13),(27,4,2),(28,3,14),(29,4,3),(30,4,6),(31,4,7),(32,4,9),(33,4,10),(34,4,11),(35,4,12),(36,4,13),(37,5,17),(38,5,16),(39,5,1),(40,5,2),(41,5,3),(42,5,6),(43,5,7),(44,5,14),(45,5,15),(46,6,1),(47,6,2),(48,6,18),(49,6,3),(50,6,4),(51,6,6),(52,6,7),(53,6,14),(54,6,15);
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
