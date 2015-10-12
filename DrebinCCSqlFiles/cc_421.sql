-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_421
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(9,'.ImageTestActivity'),(16,'.Myhall'),(14,'.Web'),(5,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(8,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(18,'android.intent.action.PACKAGE_REMOVED'),(19,'android.intent.action.SCREEN_OFF'),(4,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.animationscene.GameBootReceiver'),(10,'com.animationscene.ImageTestActivity'),(17,'com.animationscene.Myhall'),(13,'com.animationscene.Web'),(20,'iup.pr4f.umiob.abaipic.soHNKULqFpp'),(7,'tud.nfnpelo.jedbrij.bSSHuSpsd12');
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
INSERT INTO `Applications` VALUES (1,'com.prjjck.gclbpwchej',10021),(2,'com.animationscene',1016),(3,'ujmbb.qjlhrjp10l',10033),(4,'com.nkjmaeg',10040),(5,'com.ckmswujkfah.tctmvkgndbt',10037),(6,'tud.nfnpelo.jedbrij',4),(7,'iup.pr4f.umiob.abaipic',10018);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.prjjck.gclbpwchej.Splash'),(2,1,'com.prjjck.gclbpwchej.about'),(3,1,'com.prjjck.gclbpwchej.Main'),(4,1,'com.prjjck.gclbpwchej.kit1'),(5,1,'com.prjjck.gclbpwchej.kit2'),(6,1,'com.prjjck.gclbpwchej.kit3'),(7,1,'com.dQKgjtav.AkfUcwshMQDdQ'),(8,1,'com.dQKgjtav.vEphGedQWhKRkQ'),(9,2,'com.animationscene.Myhall'),(10,2,'com.animationscene.Web'),(11,2,'com.animationscene.HomeActivity'),(12,2,'com.animationscene.SortActivity1'),(13,2,'com.animationscene.SortActivity2'),(14,3,'ujmbb.qjlhrjp10l.wallsport0221j'),(15,2,'com.animationscene.SearchActivity'),(16,3,'ujmbb.qjlhrjp10l.asianbody'),(17,3,'ujmbb.qjlhrjp10l.game.Main'),(18,2,'com.animationscene.ManagerActivity'),(19,3,'ujmbb.qjlhrjp10l.MyWebView'),(20,3,'com.mobclix.android.sdk.MobclixBrowserActivity'),(21,2,'com.animationscene.GameInfo'),(22,3,'com.BCLBJnbm.qsnCfjkBru'),(23,2,'com.animationscene.TableClass'),(24,4,'com.nkjmaeg.KickFly'),(25,3,'com.BCLBJnbm.akqlsUJkseCiE'),(26,3,'com.BCLBJnbm.ntpDurIhbwNACpL'),(27,4,'com.nkjmaeg.GameModeActivity'),(28,2,'com.animationscene.GameAlertDialog'),(29,3,'com.BCLBJnbm.phDWdatTa'),(30,2,'com.animationscene.DevelopmentSettings'),(31,4,'cn.domob.android.ads.DomobActivity'),(32,3,'com.BCLBJnbm.MsVNDlkAlpwabB'),(33,4,'com.dGAoEop.EHJQbrpUDGLqq'),(34,3,'com.BCLBJnbm.QBgCWkoDesFPUg'),(35,4,'com.waps.OffersWebView'),(36,2,'com.animationscene.qimg.ImageTestActivity'),(37,3,'com.BCLBJnbm.userPermissionReceiver'),(38,4,'com.dGAoEop.AhgrprCLqgvPdu'),(39,2,'com.animationscene.qimg.ADactivity'),(40,4,'com.nd.dianjin.activity.OfferAppActivity'),(41,2,'com.animationscene.GameService'),(42,2,'com.animationscene.GameBootReceiver'),(43,5,'com.ckmswujkfah.tctmvkgndbt.first'),(44,5,'com.lmBffVeTH.dNeOirPRqh'),(45,5,'com.lmBffVeTH.fjaRDRLafoqdgU'),(46,5,'com.nd.dianjin.activity.OfferAppActivity'),(47,6,'tud.nfnpelo.jedbrij.GirlDiz'),(48,6,'tud.nfnpelo.jedbrij.GirlGame'),(49,6,'net.youmi.android.AdActivity'),(50,6,'net.youmi.android.spotad.AdActivity'),(51,6,'cn.domob.android.ads.DomobActivity'),(52,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(54,6,'com.vpon.adon.android.WebInApp'),(55,6,'com.google.ads.AdActivity'),(56,6,'com.adchina.android.ads.views.AdBrowserView'),(57,6,'ifw.uMUab.MyActivity'),(58,6,'ifw.uMUab.ApopMain'),(59,6,'ifw.uMUab.bSSHuSpsd16'),(60,6,'ifw.uMUab.bSSHuSpsd8'),(61,6,'ifw.uMUab.bSSHuSpsd9'),(62,6,'ifw.uMUab.bSSHuSpsd2'),(63,6,'ifw.uMUab.bSSHuSpsd10'),(64,6,'ifw.uMUab.bSSHuSpsd11'),(65,6,'ifw.uMUab.bSSHuSpsd12'),(66,4,'cn.domob.android.ads.DomobAdManager'),(67,4,'cn.domob.android.ads.i'),(68,4,'com.nd.dianjin.DianJinPlatform'),(69,4,'cn.domob.android.ads.DomobActionReceiver'),(70,4,'cn.domob.android.ads.DomobAdEngine$2'),(71,4,'cn.domob.android.ads.i$6'),(72,5,'com.nd.dianjin.DianJinPlatform'),(73,2,'bn'),(74,3,'com.BCLBJnbm.ad'),(75,2,'cx'),(76,2,'ch'),(77,3,'ujmbb.qjlhrjp10l.DialogUtil$1'),(78,3,'ujmbb.qjlhrjp10l.asianbody$2'),(79,3,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(80,3,'com.BCLBJnbm.j'),(81,2,'ah'),(82,2,'di'),(83,3,'ujmbb.qjlhrjp10l.asianbody$3'),(84,3,'ujmbb.qjlhrjp10l.MyWebView$7'),(85,6,'ifw.uMUab.i'),(86,6,'ifw.uMUab.s'),(87,2,'cc'),(88,3,'ujmbb.qjlhrjp10l.wallsport0221j$1'),(89,6,'ifw.uMUab.k'),(90,3,'com.BCLBJnbm.ab'),(91,2,'df'),(92,2,'af'),(93,6,'net.youmi.android.t'),(94,2,'f'),(95,7,'iup.pr4f.umiob.abaipic.GameTemplate'),(96,7,'com.EOQJIpuU.BGJEDRRsStGCVu'),(97,7,'com.EOQJIpuU.gpoCIfIHggvB'),(98,7,'com.EOQJIpuU.RSQckJIICKEIvJL'),(99,7,'com.EOQJIpuU.WNTEODWbW'),(100,7,'com.EOQJIpuU.FCBWOfUS'),(101,7,'com.EOQJIpuU.nWIFuCUt'),(102,2,'i'),(103,7,'com.EOQJIpuU.imEURwNdRpud'),(104,7,'com.EOQJIpuU.OBbOINGdrfjwgvi'),(105,7,'com.EOQJIpuU.soHNKULqFpp'),(106,6,'ifw.uMUab.j'),(107,2,'ad'),(108,6,'net.youmi.android.be'),(109,6,'ifw.uMUab.x'),(110,7,'com.EOQJIpuU.ay'),(111,7,'com.EOQJIpuU.br'),(112,7,'com.EOQJIpuU.bb'),(113,7,'com.EOQJIpuU.ax'),(114,7,'com.EOQJIpuU.af'),(115,7,'com.EOQJIpuU.g'),(116,7,'com.EOQJIpuU.h'),(117,7,'com.EOQJIpuU.ai');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,38,'DOMOB_TEST_MODE'),(2,33,'DOMOB_TEST_MODE'),(3,31,'actType'),(4,38,'DOMOB_PID'),(5,33,'DOMOB_PID'),(6,38,'DOMOB_ALLOW_LOCATION'),(7,33,'DOMOB_ALLOW_LOCATION'),(8,18,'package_name'),(9,31,'appName'),(10,18,'app_name'),(11,18,'icon'),(12,31,'appId'),(13,18,'total'),(14,9,'service_channel'),(15,36,'service_channel'),(16,10,'service_channel'),(17,21,'filepath'),(18,26,'apkURL'),(19,34,'fileURL'),(20,26,'detailFlag'),(21,18,'soft_id'),(22,9,'nextclassid'),(23,18,'url'),(24,26,'apkSize'),(25,26,'apkInfo'),(26,32,'packageName'),(27,15,'package_name'),(28,20,'ujmbb.qjlhrjp10l.type'),(29,64,'service_channel'),(30,62,'isDirectFromTable'),(31,49,'D50EF1926ADD471892E72BCE6D7E032C'),(32,21,'from_table'),(33,18,'completed'),(34,26,'apkVersion'),(35,63,'title'),(36,21,'from_alert'),(37,13,'package_name'),(38,13,'nextclassid'),(39,48,'LastName'),(40,26,'imageURL'),(41,32,'fileURL'),(42,34,'fileName'),(43,26,'apkTitle'),(44,15,'version_code'),(45,25,'np_app_key'),(46,26,'np_app_key'),(47,34,'np_app_key'),(48,22,'np_app_key'),(49,21,'title'),(50,29,'np_app_key'),(51,20,'ujmbb.qjlhrjp10l.data'),(52,26,'iconURL'),(53,26,'packageName'),(54,20,'ujmbb.qjlhrjp10l.currency'),(55,26,'apkSoftID'),(56,54,'url'),(57,63,'fromtable'),(58,63,'content'),(59,59,'poptitle'),(60,59,'popurl'),(61,60,'title'),(62,63,'url'),(63,55,'com.google.ads.AdOpener'),(64,28,'title'),(65,62,'from'),(66,18,'status'),(67,49,'EB80F3291A8E469c962CA133BDC549D7'),(68,60,'status'),(69,60,'from_alert'),(70,54,'adWidth'),(71,60,'fromtype'),(72,63,'apk_url'),(73,49,'172C94EDC717477aBF600D7898A64A8E'),(74,49,'D780FBF4215247bcBB1AC0AD33C474FE'),(75,15,'status'),(76,63,'package_name'),(77,41,'service_channel'),(78,63,'version_code'),(79,60,'filepath'),(80,60,'from_table'),(81,60,'game'),(82,48,'NextName'),(83,18,'filepath'),(84,28,'content'),(85,59,'service_channel'),(86,28,'btn_txt'),(87,13,'status'),(88,28,'url'),(89,21,'status'),(90,63,'btn_txt'),(91,55,'action'),(92,55,'params'),(93,74,'title'),(94,69,'poptitle'),(95,70,'from_table'),(96,70,'game'),(97,73,'content'),(98,68,'soft_id'),(99,74,'content'),(100,73,'url'),(101,72,'package_name'),(102,70,'title'),(103,69,'NEW_APP_ID'),(104,68,'NEW_APP_ID'),(105,70,'filepath'),(106,69,'popurl'),(107,72,'isDirectFromTable'),(108,68,'version_code'),(109,74,'apkurl'),(110,73,'package_name'),(111,70,'status'),(112,73,'fromtable'),(113,73,'apk_url'),(114,75,'NEW_APP_ID'),(115,72,'from'),(116,70,'fromtype'),(117,73,'btn_txt'),(118,70,'package_name'),(119,73,'version_code'),(120,73,'title'),(121,74,'packagename'),(122,70,'from_alert');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,69,'r',1,NULL,NULL),(67,95,'a',1,NULL,NULL),(68,96,'a',1,NULL,NULL),(69,97,'a',0,NULL,NULL),(70,98,'a',1,NULL,NULL),(71,99,'a',1,NULL,NULL),(72,100,'a',1,NULL,NULL),(73,101,'a',0,NULL,NULL),(74,103,'a',0,NULL,NULL),(75,104,'s',1,NULL,NULL),(76,105,'r',1,NULL,NULL),(77,114,'r',1,NULL,NULL),(78,117,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,3),(3,3,6),(4,4,7),(5,5,7),(6,6,4),(7,7,3),(8,8,3),(9,9,3),(10,10,33),(11,10,38),(12,11,38),(13,11,33),(14,12,38),(15,13,38),(16,14,33),(17,15,33),(18,15,38),(19,16,38),(20,16,33),(21,17,45),(22,18,27),(23,19,44),(24,20,44),(25,21,23),(26,22,28),(27,22,23),(28,23,19),(29,24,45),(30,25,11),(31,26,37),(32,27,13),(33,28,34),(34,29,13),(35,30,11),(36,31,25),(37,32,11),(38,33,25),(39,34,21),(40,35,16),(41,36,21),(42,37,25),(43,37,16),(44,38,21),(45,39,25),(46,40,28),(47,41,20),(48,41,25),(49,42,39),(50,43,26),(51,43,25),(52,44,9),(53,45,11),(54,46,25),(55,46,26),(56,47,65),(57,48,28),(58,49,65),(59,50,18),(60,51,22),(61,52,49),(62,52,63),(63,53,22),(64,54,18),(65,55,16),(66,55,25),(67,56,19),(68,56,25),(69,57,49),(70,57,57),(71,58,9),(72,59,22),(73,60,49),(74,60,60),(75,61,21),(76,62,26),(77,63,13),(78,64,14),(79,65,60),(80,65,49),(81,66,9),(82,67,25),(83,68,36),(84,69,16),(85,70,32),(86,71,59),(87,72,42),(88,73,55),(89,74,15),(90,75,22),(91,76,13),(92,77,9),(93,78,49),(94,79,39),(95,80,60),(96,81,21),(97,82,61),(98,83,61),(99,84,9),(100,85,61),(101,85,62),(102,85,49),(103,85,63),(104,86,18),(105,87,49),(106,88,10),(107,89,39),(108,90,11),(109,91,13),(110,92,63),(111,92,49),(112,93,13),(113,94,28),(114,94,23),(115,95,49),(116,96,36),(117,97,49),(118,97,60),(119,98,42),(120,99,36),(121,100,21),(122,101,60),(123,102,9),(124,103,60),(125,103,49),(126,104,15),(127,105,10),(128,106,49),(129,106,63),(130,107,23),(131,108,49),(132,109,9),(133,110,28),(134,111,10),(135,112,42),(136,113,11),(137,114,28),(138,115,49),(139,115,57),(140,116,49),(141,116,60),(142,117,57),(143,118,49),(144,118,63),(145,119,65),(146,120,57),(147,121,49),(148,121,60),(149,122,70),(150,123,68),(151,124,70),(152,125,70),(153,126,71),(154,127,68),(155,128,73),(156,128,71),(157,128,72),(158,129,70),(159,130,74),(160,131,70),(161,132,68),(162,133,71),(163,133,73),(164,133,72),(165,134,68),(166,135,73),(167,136,76),(168,137,70),(169,138,74),(170,139,70),(171,140,76),(172,141,69),(173,142,71),(174,143,70),(175,144,76),(176,145,70),(177,146,68),(178,147,73),(179,148,73),(180,149,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.prjjck.gclbpwchej.kit2: void onClick(android.view.View)>',7,'a',NULL),(2,3,'<com.prjjck.gclbpwchej.Main: void onClick(android.view.View)>',7,'a',NULL),(3,6,'<com.prjjck.gclbpwchej.kit3: void onClick(android.view.View)>',7,'a',NULL),(4,7,'<com.dQKgjtav.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(5,7,'<com.dQKgjtav.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(6,4,'<com.prjjck.gclbpwchej.kit1: void onClick(android.view.View)>',7,'a',NULL),(7,3,'<com.prjjck.gclbpwchej.Main: void onClick(android.view.View)>',11,'a',NULL),(8,3,'<com.prjjck.gclbpwchej.Main: void onClick(android.view.View)>',19,'a',NULL),(9,3,'<com.prjjck.gclbpwchej.Main: void onClick(android.view.View)>',15,'a',NULL),(10,66,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(11,67,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(12,68,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(13,38,'<com.dGAoEop.AhgrprCLqgvPdu: void a()>',3,'a',NULL),(14,33,'<com.dGAoEop.EHJQbrpUDGLqq: void b()>',3,'a',NULL),(15,70,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(16,71,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(17,72,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(18,27,'<com.nkjmaeg.GameModeActivity: void onClick(android.view.View)>',8,'a',NULL),(19,44,'<com.lmBffVeTH.dNeOirPRqh: void a()>',3,'a',NULL),(20,44,'<com.lmBffVeTH.dNeOirPRqh: void a(java.lang.String)>',11,'a',NULL),(21,23,'<com.animationscene.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(22,73,'<bn: void a(int,boolean)>',29,'a',NULL),(23,19,'<ujmbb.qjlhrjp10l.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(24,45,'<com.lmBffVeTH.fjaRDRLafoqdgU: void a()>',3,'a',NULL),(25,11,'<com.animationscene.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(26,74,'<com.BCLBJnbm.ad: void run()>',25,'s',NULL),(27,75,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(28,34,'<com.BCLBJnbm.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(29,13,'<com.animationscene.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(30,76,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(31,25,'<com.BCLBJnbm.akqlsUJkseCiE: void b()>',55,'a',NULL),(32,76,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(33,25,'<com.BCLBJnbm.akqlsUJkseCiE: void a()>',3,'a',NULL),(34,21,'<com.animationscene.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(35,77,'<ujmbb.qjlhrjp10l.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(36,21,'<com.animationscene.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(37,78,'<ujmbb.qjlhrjp10l.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(38,21,'<com.animationscene.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(39,25,'<com.BCLBJnbm.akqlsUJkseCiE: void b()>',45,'a',NULL),(40,28,'<com.animationscene.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(41,79,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(42,39,'<com.animationscene.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(43,80,'<com.BCLBJnbm.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(44,81,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(45,76,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(46,26,'<com.BCLBJnbm.ntpDurIhbwNACpL: void a(com.BCLBJnbm.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(47,65,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(48,28,'<com.animationscene.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(49,65,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(50,18,'<com.animationscene.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(51,22,'<com.BCLBJnbm.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(52,63,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',84,'a',NULL),(53,22,'<com.BCLBJnbm.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(54,82,'<di: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(55,83,'<ujmbb.qjlhrjp10l.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(56,84,'<ujmbb.qjlhrjp10l.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(57,85,'<ifw.uMUab.i: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',11,'a',NULL),(58,9,'<com.animationscene.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(59,22,'<com.BCLBJnbm.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(60,86,'<ifw.uMUab.s: void onClick(android.view.View)>',239,'a',NULL),(61,87,'<cc: void onClick(android.view.View)>',205,'a',NULL),(62,26,'<com.BCLBJnbm.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(63,75,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(64,88,'<ujmbb.qjlhrjp10l.wallsport0221j$1: void run()>',21,'a',NULL),(65,89,'<ifw.uMUab.k: void onClick(android.view.View)>',239,'a',NULL),(66,81,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(67,25,'<com.BCLBJnbm.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(68,36,'<com.animationscene.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(69,16,'<ujmbb.qjlhrjp10l.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(70,32,'<com.BCLBJnbm.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(71,59,'<ifw.uMUab.bSSHuSpsd16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(72,42,'<com.animationscene.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(73,55,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(74,15,'<com.animationscene.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(75,90,'<com.BCLBJnbm.ab: void run()>',8,'s',NULL),(76,91,'<df: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(77,92,'<af: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(78,57,'<ifw.uMUab.MyActivity: void a()>',48,'a',NULL),(79,39,'<com.animationscene.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(80,60,'<ifw.uMUab.bSSHuSpsd8: void onCreate(android.os.Bundle)>',33,'s',NULL),(81,87,'<cc: void onClick(android.view.View)>',224,'a',NULL),(82,61,'<ifw.uMUab.bSSHuSpsd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(83,61,'<ifw.uMUab.bSSHuSpsd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(84,81,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(85,62,'<ifw.uMUab.bSSHuSpsd2: void a(int,boolean)>',10,'s',NULL),(86,82,'<di: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(87,93,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(88,10,'<com.animationscene.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(89,94,'<f: void onClick(android.view.View)>',6,'a',NULL),(90,11,'<com.animationscene.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(91,75,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(92,63,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',66,'a',NULL),(93,13,'<com.animationscene.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(94,73,'<bn: void a(int,boolean)>',10,'s',NULL),(95,57,'<ifw.uMUab.MyActivity: void a()>',7,'a',NULL),(96,102,'<i: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(97,86,'<ifw.uMUab.s: void onClick(android.view.View)>',218,'a',NULL),(98,42,'<com.animationscene.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(99,36,'<com.animationscene.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(100,21,'<com.animationscene.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(101,60,'<ifw.uMUab.bSSHuSpsd8: void onCreate(android.os.Bundle)>',84,'s',NULL),(102,9,'<com.animationscene.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(103,106,'<ifw.uMUab.j: void onClick(android.view.View)>',221,'a',NULL),(104,15,'<com.animationscene.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(105,107,'<ad: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(106,63,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',53,'a',NULL),(107,23,'<com.animationscene.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(108,108,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(109,81,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(110,28,'<com.animationscene.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(111,10,'<com.animationscene.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(112,42,'<com.animationscene.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(113,11,'<com.animationscene.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(114,28,'<com.animationscene.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(115,109,'<ifw.uMUab.x: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(116,106,'<ifw.uMUab.j: void onClick(android.view.View)>',242,'a',NULL),(117,57,'<ifw.uMUab.MyActivity: void onCreate(android.os.Bundle)>',27,'s',NULL),(118,63,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',75,'a',NULL),(119,65,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(120,57,'<ifw.uMUab.MyActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(121,89,'<ifw.uMUab.k: void onClick(android.view.View)>',218,'a',NULL),(122,110,'<com.EOQJIpuU.ay: void onClick(android.view.View)>',184,'a',NULL),(123,111,'<com.EOQJIpuU.br: void onClick(android.view.View)>',105,'a',NULL),(124,112,'<com.EOQJIpuU.bb: void onClick(android.view.View)>',181,'a',NULL),(125,113,'<com.EOQJIpuU.ax: void onClick(android.view.View)>',196,'a',NULL),(126,99,'<com.EOQJIpuU.WNTEODWbW: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(127,96,'<com.EOQJIpuU.BGJEDRRsStGCVu: void onCreate(android.os.Bundle)>',61,'s',NULL),(128,100,'<com.EOQJIpuU.FCBWOfUS: void a(int,boolean)>',42,'a',NULL),(129,98,'<com.EOQJIpuU.RSQckJIICKEIvJL: void onCreate(android.os.Bundle)>',10,'a',NULL),(130,103,'<com.EOQJIpuU.imEURwNdRpud: void onCreate(android.os.Bundle)>',13,'s',NULL),(131,113,'<com.EOQJIpuU.ax: void onClick(android.view.View)>',181,'a',NULL),(132,96,'<com.EOQJIpuU.BGJEDRRsStGCVu: void onCreate(android.os.Bundle)>',65,'s',NULL),(133,100,'<com.EOQJIpuU.FCBWOfUS: void a(int,boolean)>',10,'s',NULL),(134,115,'<com.EOQJIpuU.g: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(135,101,'<com.EOQJIpuU.nWIFuCUt: void onClick(android.view.View)>',70,'a',NULL),(136,105,'<com.EOQJIpuU.soHNKULqFpp: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(137,112,'<com.EOQJIpuU.bb: void onClick(android.view.View)>',196,'a',NULL),(138,103,'<com.EOQJIpuU.imEURwNdRpud: void onClick(android.view.View)>',26,'a',NULL),(139,110,'<com.EOQJIpuU.ay: void onClick(android.view.View)>',199,'a',NULL),(140,105,'<com.EOQJIpuU.soHNKULqFpp: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(141,97,'<com.EOQJIpuU.gpoCIfIHggvB: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(142,99,'<com.EOQJIpuU.WNTEODWbW: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(143,98,'<com.EOQJIpuU.RSQckJIICKEIvJL: void onCreate(android.os.Bundle)>',41,'s',NULL),(144,105,'<com.EOQJIpuU.soHNKULqFpp: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(145,98,'<com.EOQJIpuU.RSQckJIICKEIvJL: void onCreate(android.os.Bundle)>',91,'s',NULL),(146,116,'<com.EOQJIpuU.h: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(147,101,'<com.EOQJIpuU.nWIFuCUt: void onClick(android.view.View)>',61,'a',NULL),(148,101,'<com.EOQJIpuU.nWIFuCUt: void onClick(android.view.View)>',48,'a',NULL),(149,101,'<com.EOQJIpuU.nWIFuCUt: void onClick(android.view.View)>',79,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,10,2),(3,14,2),(4,16,2),(5,17,2),(6,18,2),(7,19,2),(8,23,2),(9,25,2),(10,27,2),(11,29,2),(12,31,2),(13,39,2),(14,45,2),(15,46,2),(16,48,2),(17,50,2),(18,51,1),(19,52,7),(20,54,1),(21,55,7),(22,59,8),(23,60,2),(24,65,1),(25,66,2),(26,67,1),(27,68,1),(28,69,2),(29,70,1),(30,71,1),(31,72,1),(32,76,1),(33,79,1),(34,80,1),(35,82,9),(36,83,1),(37,84,10),(38,85,2),(39,88,2),(40,91,11),(41,93,11),(42,94,2),(43,96,2),(44,98,1),(45,100,1),(46,101,1),(47,102,1),(48,103,1),(49,104,1),(50,107,1),(51,108,1),(52,109,12),(53,110,12),(54,111,12),(55,112,13),(56,113,12),(57,114,14),(58,115,12),(59,116,12),(60,118,12),(61,119,12),(62,122,2),(63,124,2),(64,127,2),(65,128,2),(66,129,15),(67,130,2),(68,134,16),(69,135,2),(70,136,17),(71,137,2),(72,139,2),(73,141,1),(74,142,2),(75,143,1),(76,144,2),(77,146,2),(78,147,2),(79,148,3),(80,150,2),(81,151,15),(82,152,2),(83,153,2),(84,155,2),(85,156,2),(86,157,2),(87,158,2),(88,160,1),(89,161,1),(90,162,1),(91,163,1),(92,165,3),(93,168,2),(94,169,2),(95,170,2),(96,171,2),(97,173,2),(98,174,2),(99,175,1),(100,176,1),(101,177,1),(102,178,1),(103,181,1),(104,182,1),(105,183,1),(106,184,1),(107,185,1),(108,186,1),(109,188,2),(110,189,2),(111,193,3),(112,194,20),(113,195,1),(114,196,1),(115,197,1),(116,198,1),(117,199,1),(118,200,1),(119,201,1),(120,202,1),(121,203,1),(122,204,20),(123,206,1),(124,207,1),(125,212,2),(126,213,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,51,1),(2,54,3),(3,65,1),(4,67,1),(5,68,3),(6,70,3),(7,71,1),(8,72,3),(9,76,1),(10,79,3),(11,80,1),(12,83,3),(13,98,1),(14,100,3),(15,101,1),(16,102,1),(17,103,3),(18,104,3),(19,107,1),(20,108,3),(21,141,1),(22,143,3),(23,160,1),(24,161,3),(25,162,1),(26,163,3),(27,175,1),(28,176,3),(29,177,1),(30,178,3),(31,181,1),(32,182,3),(33,183,1),(34,184,3),(35,185,1),(36,186,3),(37,195,1),(38,196,3),(39,197,1),(40,198,3),(41,199,4),(42,200,1),(43,201,3),(44,202,1),(45,203,3),(46,206,1),(47,207,3);
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
INSERT INTO `IClasses` VALUES (1,1,'com/prjjck/gclbpwchej/kit3'),(2,2,'com/prjjck/gclbpwchej/kit1'),(3,3,'com/prjjck/gclbpwchej/kit1'),(4,5,'com/prjjck/gclbpwchej/Splash'),(5,6,'com/prjjck/gclbpwchej/kit2'),(6,7,'com/prjjck/gclbpwchej/kit2'),(7,8,'com/prjjck/gclbpwchej/about'),(8,9,'com/prjjck/gclbpwchej/kit3'),(9,11,'com/nd/dianjin/activity/OfferAppActivity'),(10,12,'com/nkjmaeg/GameModeActivity'),(11,13,'com/nkjmaeg/GameModeActivity'),(12,20,'com/nd/dianjin/activity/OfferAppActivity'),(13,21,'com/nkjmaeg/KickFly'),(14,22,'com/ckmswujkfah/tctmvkgndbt/first'),(15,24,'com/animationscene/GameInfo'),(16,26,'com/animationscene/Myhall'),(17,28,'com/ckmswujkfah/tctmvkgndbt/first'),(18,30,'com/BCLBJnbm/phDWdatTa'),(19,33,'com/animationscene/GameInfo'),(20,32,'com/BCLBJnbm/ntpDurIhbwNACpL'),(21,34,'com/animationscene/GameInfo'),(22,35,'ujmbb/qjlhrjp10l/wallsport0221j'),(23,37,'ujmbb/qjlhrjp10l/wallsport0221j'),(24,36,'com/animationscene/Myhall'),(25,38,'com/animationscene/Myhall'),(26,40,'com/animationscene/Myhall'),(27,41,'ujmbb/qjlhrjp10l/MyWebView'),(28,42,'com/animationscene/Myhall'),(29,43,'ujmbb/qjlhrjp10l/wallsport0221j'),(30,44,'com/animationscene/GameAlertDialog'),(31,47,'com/animationscene/GameInfo'),(32,49,'com/animationscene/Myhall'),(33,52,'ifw/uMUab/bSSHuSpsd11'),(34,53,'com/animationscene/GameInfo'),(35,55,'ifw/uMUab/bSSHuSpsd11'),(36,57,'com/animationscene/GameService'),(37,56,'com/BCLBJnbm/akqlsUJkseCiE'),(38,58,'ifw/uMUab/bSSHuSpsd10'),(39,61,'ujmbb/qjlhrjp10l/asianbody'),(40,62,'tud/nfnpelo/jedbrij/GirlDiz'),(41,63,'com/animationscene/GameService'),(42,64,'com/BCLBJnbm/akqlsUJkseCiE'),(43,73,'com/animationscene/Myhall'),(44,75,'ujmbb/qjlhrjp10l/asianbody'),(45,77,'com/animationscene/Myhall'),(46,78,'ujmbb/qjlhrjp10l/wallsport0221j'),(47,81,'ujmbb/qjlhrjp10l/game/Main'),(48,82,'com/animationscene/GameService'),(49,84,'com/animationscene/GameService'),(50,86,'tud/nfnpelo/jedbrij/GirlDiz'),(51,87,'com/animationscene/GameService'),(52,89,'com/animationscene/GameService'),(53,90,'com/BCLBJnbm/phDWdatTa'),(54,92,'com/animationscene/Myhall'),(55,95,'ifw/uMUab/bSSHuSpsd16'),(56,97,'ifw/uMUab/bSSHuSpsd11'),(57,99,'ifw/uMUab/bSSHuSpsd8'),(58,105,'com/animationscene/Myhall'),(59,106,'ifw/uMUab/bSSHuSpsd11'),(60,112,'com/animationscene/GameService'),(61,114,'com/animationscene/GameService'),(62,117,'com/animationscene/qimg/ImageTestActivity'),(63,120,'com/animationscene/Myhall'),(64,121,'com/animationscene/GameInfo'),(65,123,'com/animationscene/GameService'),(66,125,'com/animationscene/GameService'),(67,126,'tud/nfnpelo/jedbrij/GirlDiz'),(68,129,'com/animationscene/GameService'),(69,131,'com/animationscene/GameService'),(70,132,'com/animationscene/GameService'),(71,133,'ifw/uMUab/bSSHuSpsd11'),(72,134,'com/animationscene/GameService'),(73,136,'com/animationscene/GameService'),(74,138,'com/animationscene/GameInfo'),(75,140,'ifw/uMUab/bSSHuSpsd8'),(76,145,'com/animationscene/Myhall'),(77,149,'com/animationscene/GameService'),(78,151,'com/animationscene/GameService'),(79,154,'com/animationscene/GameInfo'),(80,159,'tud/nfnpelo/jedbrij/GirlDiz'),(81,164,'ifw/uMUab/bSSHuSpsd11'),(82,166,'ifw/uMUab/bSSHuSpsd11'),(83,167,'ifw/uMUab/bSSHuSpsd11'),(84,172,'com/EOQJIpuU/gpoCIfIHggvB'),(85,179,'com/EOQJIpuU/RSQckJIICKEIvJL'),(86,180,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(87,187,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(88,190,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(89,191,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(90,192,'iup/pr4f/umiob/abaipic/GameTemplate'),(91,194,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(92,204,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(93,205,'iup/pr4f/umiob/abaipic/GameTemplate'),(94,208,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(95,209,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(96,210,'com/EOQJIpuU/OBbOINGdrfjwgvi'),(97,211,'iup/pr4f/umiob/abaipic/GameTemplate'),(98,214,'com/EOQJIpuU/RSQckJIICKEIvJL'),(99,215,'com/EOQJIpuU/nWIFuCUt');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,10,3),(3,14,4),(4,16,5),(5,17,6),(6,18,7),(7,19,8),(8,23,9),(9,25,10),(10,27,11),(11,29,12),(12,31,13),(13,39,14),(14,45,15),(15,46,16),(16,48,17),(17,50,18),(18,60,20),(19,59,19),(20,66,21),(21,69,22),(22,85,23),(23,88,24),(24,91,25),(25,93,26),(26,94,27),(27,96,28),(28,122,29),(29,124,30),(30,127,31),(31,128,32),(32,130,33),(33,135,34),(34,137,35),(35,139,36),(36,142,37),(37,144,38),(38,146,39),(39,147,40),(40,150,41),(41,152,42),(42,153,43),(43,155,44),(44,156,45),(45,157,46),(46,158,47),(47,168,48),(48,169,49),(49,170,50),(50,171,51),(51,173,52),(52,174,53),(53,188,54),(54,189,55),(55,212,56),(56,213,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'oriention'),(2,20,'oriention'),(3,32,'apkVersion'),(4,32,'apkURL'),(5,33,'title'),(6,32,'apkInfo'),(7,32,'packageName'),(8,32,'apkSoftID'),(9,32,'apkTitle'),(10,32,'iconURL'),(11,32,'apkSize'),(12,32,'imageURL'),(13,34,'title'),(14,36,'title'),(15,36,'nextclassid'),(16,36,'clicked'),(17,44,'title'),(18,44,'btn_txt'),(19,44,'need_adb_flag'),(20,44,'cont'),(21,44,'close_flag'),(22,49,'clicked'),(23,53,'id'),(24,53,'from_alert'),(25,53,'detail_flag'),(26,58,'title'),(27,58,'btn_txt'),(28,58,'need_adb_flag'),(29,58,'cont'),(30,58,'close_flag'),(31,73,'title'),(32,73,'nextclassid'),(33,73,'clicked'),(34,77,'clicked'),(35,92,'title'),(36,92,'nextclassid'),(37,92,'clicked'),(38,95,'popurl'),(39,95,'poptitle'),(40,99,'game'),(41,99,'fromtype'),(42,105,'clicked'),(43,109,'android.intent.extra.INTENT'),(44,110,'android.intent.extra.INTENT'),(45,111,'android.intent.extra.TITLE'),(46,111,'android.intent.extra.INTENT'),(47,113,'android.intent.extra.INTENT'),(48,115,'android.intent.extra.TITLE'),(49,115,'android.intent.extra.INTENT'),(50,116,'android.intent.extra.INTENT'),(51,118,'android.intent.extra.TITLE'),(52,118,'android.intent.extra.INTENT'),(53,120,'nextclassid'),(54,119,'android.intent.extra.TITLE'),(55,120,'clicked'),(56,119,'android.intent.extra.INTENT'),(57,121,'title'),(58,140,'id'),(59,140,'from_alert'),(60,140,'detail_flag'),(61,145,'clicked'),(62,172,'popurl'),(63,172,'poptitle'),(64,179,'game'),(65,179,'fromtype'),(66,214,'id'),(67,214,'from_alert'),(68,214,'detail_flag'),(69,215,'title'),(70,215,'btn_txt'),(71,215,'need_adb_flag'),(72,215,'cont'),(73,215,'close_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,12,3),(9,13,1),(10,14,4),(11,15,1),(12,16,1),(13,17,5),(14,19,1),(15,21,1),(16,22,1),(17,23,1),(18,24,1),(19,25,1),(20,26,4),(21,26,5),(22,27,6),(23,28,6),(24,30,1),(25,31,1),(26,32,1),(27,33,1),(28,34,1),(29,35,4),(30,35,5),(31,36,6),(32,37,18),(33,38,18),(34,39,19),(35,40,6),(36,41,18),(37,42,4);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,8,1),(3,13,1),(4,15,1),(5,16,1),(6,19,1),(7,21,1),(8,25,1),(9,28,2),(10,30,1),(11,34,1),(12,36,2),(13,37,2),(14,38,2),(15,40,2),(16,41,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,27,'package',NULL,NULL,NULL,NULL,NULL),(2,28,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,41,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,14,'application','vnd.android.package-archive'),(3,16,'application','vnd.android.package-archive'),(4,17,'application','vnd.android.package-archive'),(5,18,'application','vnd.android.package-archive'),(6,19,'application','vnd.android.package-archive'),(7,25,'(.*)','(.*)'),(8,27,'application','vnd.android.package-archive'),(9,48,'application','vnd.android.package-archive'),(10,66,'application','vnd.android.package-archive'),(11,69,'application','vnd.android.package-archive'),(12,85,'application','vnd.android.package-archive'),(13,91,'(.*)','(.*)'),(14,94,'application','vnd.android.package-archive'),(15,127,'application','vnd.android.package-archive'),(16,128,'application','vnd.android.package-archive'),(17,130,'application','vnd.android.package-archive'),(18,135,'application','vnd.android.package-archive'),(19,137,'application','vnd.android.package-archive'),(20,139,'application','vnd.android.package-archive'),(21,142,'application','vnd.android.package-archive'),(22,144,'application','vnd.android.package-archive'),(23,146,'application','vnd.android.package-archive'),(24,147,'application','vnd.android.package-archive'),(25,150,'application','vnd.android.package-archive'),(26,152,'application','vnd.android.package-archive'),(27,153,'application','vnd.android.package-archive'),(28,155,'application','vnd.android.package-archive'),(29,156,'application','vnd.android.package-archive'),(30,168,'application','vnd.android.package-archive'),(31,169,'application','vnd.android.package-archive'),(32,170,'application','vnd.android.package-archive'),(33,171,'application','vnd.android.package-archive'),(34,173,'application','vnd.android.package-archive'),(35,174,'application','vnd.android.package-archive'),(36,188,'application','vnd.android.package-archive'),(37,189,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.prjjck.gclbpwchej'),(2,2,'com.prjjck.gclbpwchej'),(3,3,'com.prjjck.gclbpwchej'),(4,5,'com.prjjck.gclbpwchej'),(5,6,'com.prjjck.gclbpwchej'),(6,7,'com.prjjck.gclbpwchej'),(7,8,'com.prjjck.gclbpwchej'),(8,9,'com.prjjck.gclbpwchej'),(9,11,'com.nkjmaeg'),(10,12,'com.nkjmaeg'),(11,13,'com.nkjmaeg'),(12,20,'com.ckmswujkfah.tctmvkgndbt'),(13,21,'com.nkjmaeg'),(14,22,'com.ckmswujkfah.tctmvkgndbt'),(15,24,'com.animationscene'),(16,26,'com.animationscene'),(17,28,'com.ckmswujkfah.tctmvkgndbt'),(18,30,'ujmbb.qjlhrjp10l'),(19,33,'com.animationscene'),(20,32,'ujmbb.qjlhrjp10l'),(21,34,'com.animationscene'),(22,35,'ujmbb.qjlhrjp10l'),(23,37,'ujmbb.qjlhrjp10l'),(24,36,'com.animationscene'),(25,38,'com.animationscene'),(26,40,'com.animationscene'),(27,41,'ujmbb.qjlhrjp10l'),(28,42,'com.animationscene'),(29,43,'ujmbb.qjlhrjp10l'),(30,44,'com.animationscene'),(31,47,'com.animationscene'),(32,49,'com.animationscene'),(33,51,'(.*)'),(34,52,'tud.nfnpelo.jedbrij'),(35,54,'(.*)'),(36,53,'com.animationscene'),(37,55,'tud.nfnpelo.jedbrij'),(38,57,'com.animationscene'),(39,56,'ujmbb.qjlhrjp10l'),(40,58,'tud.nfnpelo.jedbrij'),(41,61,'ujmbb.qjlhrjp10l'),(42,62,'tud.nfnpelo.jedbrij'),(43,63,'com.animationscene'),(44,64,'ujmbb.qjlhrjp10l'),(45,65,'(.*)'),(46,67,'(.*)'),(47,68,''),(48,70,'(.*)'),(49,71,''),(50,72,'(.*)'),(51,73,'com.animationscene'),(52,75,'ujmbb.qjlhrjp10l'),(53,76,'(.*)'),(54,77,'com.animationscene'),(55,78,'ujmbb.qjlhrjp10l'),(56,79,''),(57,81,'ujmbb.qjlhrjp10l'),(58,80,''),(59,82,'com.animationscene'),(60,83,'(.*)'),(61,84,'com.animationscene'),(62,86,'tud.nfnpelo.jedbrij'),(63,87,'com.animationscene'),(64,89,'com.animationscene'),(65,90,'ujmbb.qjlhrjp10l'),(66,92,'com.animationscene'),(67,95,'tud.nfnpelo.jedbrij'),(68,97,'tud.nfnpelo.jedbrij'),(69,98,'(.*)'),(70,100,''),(71,99,'tud.nfnpelo.jedbrij'),(72,101,''),(73,102,'(.*)'),(74,103,'(.*)'),(75,104,'(.*)'),(76,105,'com.animationscene'),(77,106,'tud.nfnpelo.jedbrij'),(78,107,'NULL-CONSTANT'),(79,108,'NULL-CONSTANT'),(80,112,'com.animationscene'),(81,114,'com.animationscene'),(82,117,'com.animationscene'),(83,120,'com.animationscene'),(84,121,'com.animationscene'),(85,123,'com.animationscene'),(86,125,'com.animationscene'),(87,126,'tud.nfnpelo.jedbrij'),(88,129,'com.animationscene'),(89,131,'com.animationscene'),(90,132,'com.animationscene'),(91,133,'tud.nfnpelo.jedbrij'),(92,134,'com.animationscene'),(93,136,'com.animationscene'),(94,138,'com.animationscene'),(95,140,'tud.nfnpelo.jedbrij'),(96,141,'(.*)'),(97,143,'(.*)'),(98,145,'com.animationscene'),(99,149,'com.animationscene'),(100,151,'com.animationscene'),(101,154,'com.animationscene'),(102,159,'tud.nfnpelo.jedbrij'),(103,160,'(.*)'),(104,161,''),(105,162,''),(106,163,'(.*)'),(107,164,'tud.nfnpelo.jedbrij'),(108,166,'tud.nfnpelo.jedbrij'),(109,167,'tud.nfnpelo.jedbrij'),(110,172,'iup.pr4f.umiob.abaipic'),(111,175,'(.*)'),(112,176,''),(113,177,''),(114,178,'(.*)'),(115,179,'iup.pr4f.umiob.abaipic'),(116,180,'iup.pr4f.umiob.abaipic'),(117,181,'(.*)'),(118,182,''),(119,183,''),(120,184,'(.*)'),(121,185,'(.*)'),(122,186,'(.*)'),(123,187,'iup.pr4f.umiob.abaipic'),(124,190,'iup.pr4f.umiob.abaipic'),(125,191,'iup.pr4f.umiob.abaipic'),(126,192,'iup.pr4f.umiob.abaipic'),(127,194,'iup.pr4f.umiob.abaipic'),(128,195,'(.*)'),(129,196,''),(130,197,''),(131,198,'(.*)'),(132,200,'(.*)'),(133,201,''),(134,202,''),(135,203,'(.*)'),(136,204,'iup.pr4f.umiob.abaipic'),(137,205,'iup.pr4f.umiob.abaipic'),(138,206,'(.*)'),(139,207,'(.*)'),(140,208,'iup.pr4f.umiob.abaipic'),(141,209,'iup.pr4f.umiob.abaipic'),(142,210,'iup.pr4f.umiob.abaipic'),(143,211,'iup.pr4f.umiob.abaipic'),(144,214,'iup.pr4f.umiob.abaipic'),(145,215,'iup.pr4f.umiob.abaipic');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,13,0),(4,14,0),(5,15,0),(6,18,0),(7,21,0),(8,22,0),(9,23,0),(10,24,0),(11,27,0),(12,30,0),(13,36,0),(14,37,0),(15,38,0),(16,41,0),(17,42,0),(18,43,0),(19,45,0),(20,47,0),(21,57,0),(22,60,0),(23,61,0),(24,62,0),(25,64,0),(26,65,0),(27,66,0),(28,42,0),(29,67,0),(30,68,0),(31,70,0),(32,71,0),(33,72,0),(34,75,0),(35,76,0),(36,65,0),(37,42,0),(38,65,0),(39,77,0),(40,76,0),(41,76,0),(42,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,11,1,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,16,1,0),(15,16,1,0),(16,16,1,0),(17,16,1,0),(18,16,1,0),(19,16,1,0),(20,17,0,0),(21,18,0,0),(22,19,0,0),(23,20,1,0),(24,21,0,0),(25,20,1,0),(26,22,0,0),(27,23,1,0),(28,24,0,0),(29,25,1,0),(30,26,0,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,30,0,0),(35,31,0,0),(36,32,0,0),(37,33,0,0),(38,34,0,0),(39,35,1,0),(40,36,0,0),(41,37,0,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,1,0),(46,41,1,0),(47,42,0,0),(48,43,1,0),(49,44,0,0),(50,45,1,0),(51,46,1,0),(52,47,0,0),(53,48,0,0),(54,46,1,0),(55,49,0,0),(56,51,0,0),(57,50,0,0),(58,52,0,0),(59,54,1,0),(60,55,1,0),(61,56,0,0),(62,57,0,0),(63,58,0,0),(64,59,0,0),(65,60,1,0),(66,61,1,0),(67,62,1,0),(68,60,1,0),(69,61,1,0),(70,62,1,0),(71,60,1,0),(72,60,1,0),(73,63,0,0),(74,64,1,0),(75,64,0,0),(76,65,1,0),(77,66,0,0),(78,67,0,0),(79,65,1,0),(80,65,1,0),(81,69,0,0),(82,68,0,0),(83,65,1,0),(84,68,0,0),(85,70,1,0),(86,71,0,0),(87,72,0,0),(88,73,1,0),(89,74,0,0),(90,75,0,0),(91,73,1,0),(92,76,0,0),(93,73,1,0),(94,77,1,0),(95,78,0,0),(96,79,1,0),(97,80,0,0),(98,81,1,0),(99,82,0,0),(100,81,1,0),(101,81,1,0),(102,83,1,0),(103,81,1,0),(104,83,1,0),(105,84,0,0),(106,85,0,0),(107,86,1,0),(108,86,1,0),(109,87,1,0),(110,87,1,0),(111,87,1,0),(112,88,0,0),(113,87,1,0),(114,88,0,0),(115,87,1,0),(116,87,1,0),(117,89,0,0),(118,87,1,0),(119,87,1,0),(120,90,0,0),(121,91,0,0),(122,92,1,0),(123,93,0,0),(124,92,1,0),(125,94,0,0),(126,95,0,0),(127,96,1,0),(128,97,1,0),(129,98,0,0),(130,97,1,0),(131,99,0,0),(132,100,0,0),(133,101,0,0),(134,102,0,0),(135,103,1,0),(136,102,0,0),(137,103,1,0),(138,104,0,0),(139,105,1,0),(140,106,0,0),(141,107,1,0),(142,108,1,0),(143,107,1,0),(144,108,1,0),(145,109,0,0),(146,108,1,0),(147,108,1,0),(148,110,1,0),(149,111,0,0),(150,108,1,0),(151,112,0,0),(152,108,1,0),(153,108,1,0),(154,113,0,0),(155,108,1,0),(156,108,1,0),(157,114,1,0),(158,114,1,0),(159,115,0,0),(160,116,1,0),(161,116,1,0),(162,116,1,0),(163,116,1,0),(164,117,0,0),(165,118,1,0),(166,119,0,0),(167,120,0,0),(168,121,1,0),(169,121,1,0),(170,122,1,0),(171,122,1,0),(172,123,0,0),(173,124,1,0),(174,124,1,0),(175,125,1,0),(176,125,1,0),(177,125,1,0),(178,125,1,0),(179,126,0,0),(180,127,0,0),(181,128,1,0),(182,128,1,0),(183,128,1,0),(184,128,1,0),(185,129,1,0),(186,129,1,0),(187,130,0,0),(188,131,1,0),(189,131,1,0),(190,132,0,0),(191,133,0,0),(192,134,0,0),(193,135,1,0),(194,136,0,0),(195,137,1,0),(196,137,1,0),(197,137,1,0),(198,137,1,0),(199,138,1,0),(200,139,1,0),(201,139,1,0),(202,139,1,0),(203,139,1,0),(204,140,0,0),(205,141,0,0),(206,142,1,0),(207,142,1,0),(208,143,0,0),(209,144,0,0),(210,145,0,0),(211,146,0,0),(212,147,1,0),(213,147,1,0),(214,148,0,0),(215,149,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(17,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_COARSE_UPDATES'),(16,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CALL_PHONE'),(11,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(13,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(20,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.SEND_SMS'),(7,'android.permission.SET_WALLPAPER'),(14,'android.permission.SYSTEM_ALERT_WINDOW'),(23,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(5,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'file://',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,10,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,2),(19,3,3),(20,3,5),(21,3,6),(22,3,7),(23,3,13),(24,3,14),(25,3,15),(26,4,17),(27,4,16),(28,4,1),(29,4,2),(30,4,3),(31,4,4),(32,4,5),(33,4,15),(34,5,17),(35,5,16),(36,5,1),(37,5,19),(38,5,2),(39,5,18),(40,5,3),(41,5,21),(42,5,4),(43,5,20),(44,5,5),(45,5,22),(46,6,17),(47,6,16),(48,6,1),(49,6,2),(50,6,3),(51,6,4),(52,6,5),(53,6,6),(54,6,8),(55,6,12),(56,7,1),(57,7,2),(58,7,3),(59,7,4),(60,7,5),(61,7,6),(62,7,8),(63,7,12),(64,7,15),(65,7,17),(66,7,16),(67,7,19),(68,7,23);
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

-- Dump completed on 2015-10-09  0:39:36
