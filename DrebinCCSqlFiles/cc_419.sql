-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_419
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(21,'.ImageTestActivity'),(12,'.Myhall'),(19,'.Web'),(8,'.butMcBm14'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(30,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CHOOSER'),(27,'android.intent.action.DELETE'),(17,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_REMOVED'),(24,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SENDTO'),(5,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(18,'android.media.action.IMAGE_CAPTURE'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'com.cosplay.GameBootReceiver'),(23,'com.cosplay.ImageTestActivity'),(14,'com.cosplay.Myhall'),(20,'com.cosplay.Web'),(13,'com.m_zltbwxxg.GameBootReceiver'),(29,'com.m_zltbwxxg.ImageTestActivity'),(32,'com.m_zltbwxxg.Myhall'),(31,'com.m_zltbwxxg.Web'),(10,'fBo.iSCfQp.butMcBm12'),(9,'fBo.iSCfQp.butMcBm14'),(25,'tud.nfnpelo.jedbrij.bSSHuSpsd12');
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
INSERT INTO `Applications` VALUES (1,'fBo.iSCfQp',1100),(2,'com.m_zltbwxxg',10019),(3,'vrhnjblm.iabewpt.spsju',10032),(4,'com.cosplay',1015),(5,'jp.fa.clricsq.k_gfwm',10020),(6,'com.ndugdqobssq.ddpk',10023),(7,'tud.nfnpelo.jedbrij',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'fBo.iSCfQp.image.butMcBm19'),(2,1,'fBo.iSCfQp.image.butMcBm18'),(3,1,'fBo.iSCfQp.butMcBm8'),(4,1,'fBo.iSCfQp.butMcBm9'),(5,1,'fBo.iSCfQp.butMcBm2'),(6,1,'fBo.iSCfQp.butMcBm10'),(7,1,'fBo.iSCfQp.butMcBm11'),(8,2,'com.m_zltbwxxg.Myhall'),(9,2,'com.m_zltbwxxg.Web'),(10,1,'fBo.iSCfQp.butMcBm12'),(11,2,'com.m_zltbwxxg.HomeActivity'),(12,2,'com.m_zltbwxxg.SortActivity1'),(13,2,'com.m_zltbwxxg.SortActivity2'),(14,2,'com.m_zltbwxxg.SearchActivity'),(15,3,'vrhnjblm.iabewpt.spsju.MenuActivity'),(16,2,'com.m_zltbwxxg.ManagerActivity'),(17,3,'vrhnjblm.iabewpt.spsju.GameActivity'),(18,3,'vrhnjblm.iabewpt.spsju.RequestActivity'),(19,2,'com.m_zltbwxxg.GameInfo'),(20,3,'vrhnjblm.iabewpt.spsju.SelectorActivity'),(21,4,'com.cosplay.Myhall'),(22,3,'com.sBKMD.ujQQLoKHkeFa'),(23,4,'com.cosplay.Web'),(24,2,'com.m_zltbwxxg.TableClass'),(25,4,'com.cosplay.HomeActivity'),(26,3,'com.sBKMD.IQCLFEHFOSUMb'),(27,4,'com.cosplay.SortActivity1'),(28,2,'com.m_zltbwxxg.GameAlertDialog'),(29,5,'jp.fa.clricsq.k_gfwm.StartActivity'),(30,4,'com.cosplay.SortActivity2'),(31,3,'com.sBKMD.nubFUsvB'),(32,2,'com.m_zltbwxxg.DevelopmentSettings'),(33,3,'com.sBKMD.jcEFEUtvmEBl'),(34,4,'com.cosplay.SearchActivity'),(35,3,'com.sBKMD.GHJklgGLsNQr'),(36,2,'com.m_zltbwxxg.image.ImageTestActivity'),(37,3,'com.sBKMD.CiBEpgWfr'),(38,3,'com.sBKMD.userPermissionReceiver'),(39,4,'com.cosplay.ManagerActivity'),(40,5,'com.rUQoGCHH.uGMjAeBEPAwF'),(41,2,'com.m_zltbwxxg.image.ADactivity'),(42,5,'com.rUQoGCHH.GpQuBdHAqMJ'),(43,4,'com.cosplay.GameInfo'),(44,2,'com.m_zltbwxxg.GameService'),(45,5,'com.nd.dianjin.activity.OfferAppActivity'),(46,4,'com.cosplay.TableClass'),(47,2,'com.m_zltbwxxg.GameBootReceiver'),(48,5,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(49,4,'com.cosplay.GameAlertDialog'),(50,6,'com.mmappforce7.snow.MainActivity'),(51,4,'com.cosplay.DevelopmentSettings'),(52,6,'com.mmappforce7.snow.Ranking'),(53,4,'com.cosplay.qimg.ImageTestActivity'),(54,6,'com.ndugdqobssq.ddpk.EditProfile'),(55,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(56,6,'com.google.ads.AdActivity'),(57,4,'com.cosplay.qimg.ADactivity'),(58,6,'com.IoBjn.pVplbvLoM'),(59,4,'com.cosplay.GameService'),(60,6,'com.IoBjn.vUpmInLcTApNQ'),(61,4,'com.cosplay.GameBootReceiver'),(62,6,'com.mmappforce7.snow.Widget'),(63,7,'tud.nfnpelo.jedbrij.GirlDiz'),(64,7,'tud.nfnpelo.jedbrij.GirlGame'),(65,7,'net.youmi.android.AdActivity'),(66,7,'net.youmi.android.spotad.AdActivity'),(67,7,'cn.domob.android.ads.DomobActivity'),(68,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(70,7,'com.vpon.adon.android.WebInApp'),(71,7,'com.google.ads.AdActivity'),(72,7,'com.adchina.android.ads.views.AdBrowserView'),(73,7,'ifw.uMUab.MyActivity'),(74,7,'ifw.uMUab.ApopMain'),(75,7,'ifw.uMUab.bSSHuSpsd16'),(76,7,'ifw.uMUab.bSSHuSpsd8'),(77,7,'ifw.uMUab.bSSHuSpsd9'),(78,7,'ifw.uMUab.bSSHuSpsd2'),(79,7,'ifw.uMUab.bSSHuSpsd10'),(80,7,'ifw.uMUab.bSSHuSpsd11'),(81,7,'ifw.uMUab.bSSHuSpsd12'),(82,1,'d'),(83,1,'b'),(84,1,'ad'),(85,5,'com.nd.dianjin.DianJinPlatform'),(86,3,'com.sBKMD.ab'),(87,2,'dk'),(88,2,'x'),(89,4,'br'),(90,3,'com.sBKMD.ad'),(91,2,'ar'),(92,4,'ai'),(93,6,'com.mmappforce7.snow.MainActivity$7'),(94,6,'com.mmappforce7.snow.Ranking$2'),(95,3,'com.sBKMD.o'),(96,4,'av'),(97,3,'vrhnjblm.iabewpt.spsju.SelectorActivity$3'),(98,2,'l'),(99,7,'ifw.uMUab.k'),(100,4,'v'),(101,7,'ifw.uMUab.s'),(102,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(103,6,'com.mmappforce7.snow.MainActivity$5'),(104,4,'ct'),(105,2,'ak'),(106,7,'net.youmi.android.t'),(107,6,'com.mobclix.android.sdk.MobclixCreative$Action'),(108,2,'db'),(109,4,'cg'),(110,2,'dw'),(111,7,'ifw.uMUab.x'),(112,4,'m'),(113,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(114,7,'ifw.uMUab.j'),(115,6,'com.mobclix.android.sdk.Mobclix$2'),(116,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(117,4,'au'),(118,7,'net.youmi.android.be'),(119,2,'ci'),(120,4,'aj'),(121,4,'dc'),(122,2,'o'),(123,2,'cx'),(124,4,'cm'),(125,2,'dm'),(126,7,'ifw.uMUab.i');
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
INSERT INTO `ComponentExtras` VALUES (1,6,'title'),(2,3,'status'),(3,3,'title'),(4,29,'P'),(5,29,'GAMEID'),(6,6,'btn_txt'),(7,29,'MEMBERID'),(8,6,'package_name'),(9,6,'content'),(10,6,'version_code'),(11,3,'from_table'),(12,31,'apkSize'),(13,34,'fileURL'),(14,1,'stylebox'),(15,3,'filepath'),(16,5,'isDirectFromTable'),(17,6,'fromtable'),(18,6,'url'),(19,34,'packageName'),(20,31,'apkTitle'),(21,31,'apkSoftID'),(22,3,'fromtype'),(23,16,'completed'),(24,31,'apkInfo'),(25,15,'name'),(26,31,'detailFlag'),(27,19,'title'),(28,38,'icon'),(29,9,'service_channel'),(30,3,'from_alert'),(31,49,'title'),(32,38,'app_name'),(33,43,'status'),(34,55,'com.ndugdqobssq.ddpk.data'),(35,16,'app_name'),(36,36,'service_channel'),(37,55,'com.ndugdqobssq.ddpk.type'),(38,56,'com.google.ads.AdOpener'),(39,37,'fileURL'),(40,31,'apkURL'),(41,16,'package_name'),(42,31,'imageURL'),(43,31,'iconURL'),(44,22,'np_app_key'),(45,33,'np_app_key'),(46,31,'np_app_key'),(47,37,'np_app_key'),(48,26,'np_app_key'),(49,38,'status'),(50,7,'stylebox'),(51,5,'from'),(52,37,'fileName'),(53,16,'total'),(54,19,'from_alert'),(55,28,'package_name'),(56,50,'com.mobclix.APPLICATION_ID'),(57,52,'com.mobclix.APPLICATION_ID'),(58,50,'com.mobclix.LOG_LEVEL'),(59,52,'com.mobclix.LOG_LEVEL'),(60,6,'apk_url'),(61,38,'package_name'),(62,56,'action'),(63,3,'game'),(64,38,'soft_id'),(65,52,'mGameID'),(66,31,'packageName'),(67,13,'package_name'),(68,31,'apkVersion'),(69,16,'url'),(70,28,'apk_url'),(71,28,'url'),(72,38,'total'),(73,14,'status'),(74,14,'package_name'),(75,14,'version_code'),(76,19,'filepath'),(77,79,'content'),(78,30,'nextclassid'),(79,16,'icon'),(80,28,'content'),(81,21,'nextclassid'),(82,59,'service_channel'),(83,43,'title'),(84,76,'fromtype'),(85,55,'imageUri'),(86,38,'filepath'),(87,13,'nextclassid'),(88,56,'params'),(89,16,'filepath'),(90,8,'nextclassid'),(91,78,'isDirectFromTable'),(92,16,'soft_id'),(93,30,'status'),(94,13,'status'),(95,16,'status'),(96,50,'UMENG_CHANNEL'),(97,52,'UMENG_CHANNEL'),(98,53,'service_channel'),(99,75,'popurl'),(100,35,'version_code'),(101,78,'from'),(102,79,'btn_txt'),(103,75,'poptitle'),(104,79,'url'),(105,70,'adWidth'),(106,76,'from_alert'),(107,8,'service_channel'),(108,76,'from_table'),(109,71,'params'),(110,50,'UMENG_APPKEY'),(111,52,'UMENG_APPKEY'),(112,65,'D780FBF4215247bcBB1AC0AD33C474FE'),(113,76,'title'),(114,30,'package_name'),(115,49,'btn_txt'),(116,38,'completed'),(117,35,'package_name'),(118,35,'status'),(119,23,'service_channel'),(120,28,'title'),(121,52,'mThisGameHighScore'),(122,71,'com.google.ads.AdOpener'),(123,43,'filepath'),(124,64,'LastName'),(125,65,'EB80F3291A8E469c962CA133BDC549D7'),(126,76,'game'),(127,65,'D50EF1926ADD471892E72BCE6D7E032C'),(128,38,'url'),(129,50,'ADMOB_PUBLISHER_ID'),(130,52,'ADMOB_PUBLISHER_ID'),(131,21,'service_channel'),(132,71,'action'),(133,28,'version_code'),(134,79,'fromtable'),(135,44,'service_channel'),(136,43,'from_alert'),(137,76,'status'),(138,79,'apk_url'),(139,19,'status'),(140,19,'game'),(141,43,'from_table'),(142,19,'from_table'),(143,19,'fromtype'),(144,49,'content'),(145,75,'service_channel'),(146,70,'url'),(147,49,'url'),(148,28,'btn_txt'),(149,79,'package_name'),(150,79,'version_code'),(151,79,'title'),(152,76,'filepath'),(153,80,'service_channel'),(154,64,'NextName'),(155,65,'172C94EDC717477aBF600D7898A64A8E');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,35,'s',0,NULL,NULL),(35,34,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,39,'a',1,NULL,NULL),(39,38,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,102,'r',1,NULL,NULL),(83,113,'r',1,NULL,NULL),(84,115,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,3),(7,7,40),(8,8,40),(9,9,4),(10,9,5),(11,9,6),(12,10,42),(13,11,1),(14,12,42),(15,13,3),(16,14,26),(17,15,3),(18,16,22),(19,17,10),(20,18,31),(21,18,26),(22,19,26),(23,20,3),(24,21,26),(25,22,34),(26,23,3),(27,24,4),(28,25,22),(29,26,31),(30,27,3),(31,28,6),(32,29,26),(33,29,15),(34,30,22),(35,31,3),(36,32,37),(37,33,6),(38,34,6),(39,35,26),(40,35,15),(41,36,21),(42,37,47),(43,38,10),(44,39,1),(45,40,8),(46,41,58),(47,42,8),(48,43,58),(49,44,10),(50,45,43),(51,46,11),(52,47,55),(53,48,5),(54,48,6),(55,48,4),(56,49,25),(57,50,39),(58,51,50),(59,52,3),(60,53,19),(61,54,30),(62,55,50),(63,56,26),(64,57,38),(65,58,26),(66,58,15),(67,59,52),(68,60,61),(69,61,1),(70,62,31),(71,62,26),(72,63,28),(73,64,6),(74,65,55),(75,66,21),(76,67,26),(77,68,41),(78,69,15),(79,69,26),(80,70,23),(81,71,8),(82,72,22),(83,73,26),(84,73,20),(85,74,53),(86,75,13),(87,76,55),(88,77,57),(89,78,24),(90,79,65),(91,79,76),(92,80,53),(93,81,14),(94,82,57),(95,84,13),(96,83,65),(97,83,76),(98,85,30),(99,86,50),(100,87,36),(101,88,43),(102,89,52),(103,90,28),(104,90,24),(105,91,81),(106,92,56),(107,93,16),(108,94,65),(109,95,11),(110,96,30),(111,97,25),(112,98,50),(113,99,11),(114,100,25),(115,101,9),(116,102,55),(117,103,30),(118,104,55),(119,105,9),(120,106,38),(121,107,19),(122,108,65),(123,109,47),(124,110,38),(125,111,81),(126,112,50),(127,113,16),(128,114,73),(129,114,65),(130,115,23),(131,116,50),(132,117,24),(133,118,73),(134,119,49),(135,120,36),(136,121,55),(137,122,65),(138,122,76),(139,123,21),(140,124,13),(141,125,43),(142,126,19),(143,127,46),(144,128,77),(145,129,25),(146,130,13),(147,131,76),(148,131,65),(149,132,50),(150,133,43),(151,134,28),(152,135,50),(153,136,47),(154,137,49),(155,138,76),(156,139,9),(157,140,43),(158,141,50),(159,142,53),(160,143,77),(161,143,79),(162,143,78),(163,143,65),(164,144,21),(165,145,14),(166,146,81),(167,147,55),(168,148,11),(169,149,61),(170,150,73),(171,151,49),(172,152,65),(173,152,79),(174,153,41),(175,154,19),(176,155,30),(177,156,28),(178,157,65),(179,157,76),(180,158,25),(181,159,8),(182,160,21),(183,161,19),(184,162,61),(185,163,65),(186,164,36),(187,165,30),(188,166,8),(189,167,28),(190,168,25),(191,169,49),(192,170,16),(193,171,23),(194,172,8),(195,173,46),(196,174,13),(197,175,46),(198,176,65),(199,177,65),(200,177,79),(201,178,13),(202,179,21),(203,180,35),(204,181,65),(205,181,76),(206,182,41),(207,183,57),(208,184,28),(209,184,24),(210,185,46),(211,186,65),(212,186,79),(213,187,11),(214,188,35),(215,189,43),(216,190,76),(217,191,8),(218,192,21),(219,193,71),(220,194,11),(221,195,75),(222,196,77),(223,197,65),(224,197,73),(225,198,79),(226,198,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<fBo.iSCfQp.butMcBm9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(2,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',81,'a',NULL),(3,82,'<d: void onClick(android.view.View)>',221,'a',NULL),(4,83,'<b: void onClick(android.view.View)>',218,'a',NULL),(5,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',177,'a',NULL),(6,84,'<ad: void onClick(android.view.View)>',239,'a',NULL),(7,40,'<com.rUQoGCHH.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(8,40,'<com.rUQoGCHH.uGMjAeBEPAwF: void a()>',3,'a',NULL),(9,5,'<fBo.iSCfQp.butMcBm2: void a(int,boolean)>',10,'s',NULL),(10,42,'<com.rUQoGCHH.GpQuBdHAqMJ: void a()>',3,'a',NULL),(11,1,'<fBo.iSCfQp.image.butMcBm19: void onCreate(android.os.Bundle)>',124,'s',NULL),(12,85,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(13,82,'<d: void onClick(android.view.View)>',242,'a',NULL),(14,26,'<com.sBKMD.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(15,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',33,'s',NULL),(16,22,'<com.sBKMD.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(17,10,'<fBo.iSCfQp.butMcBm12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(18,31,'<com.sBKMD.nubFUsvB: void a(com.sBKMD.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(19,26,'<com.sBKMD.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(20,84,'<ad: void onClick(android.view.View)>',218,'a',NULL),(21,26,'<com.sBKMD.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(22,35,'<com.sBKMD.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(23,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',76,'a',NULL),(24,4,'<fBo.iSCfQp.butMcBm9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(25,86,'<com.sBKMD.ab: void run()>',8,'s',NULL),(26,31,'<com.sBKMD.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(27,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',90,'s',NULL),(28,6,'<fBo.iSCfQp.butMcBm10: void onClick(android.view.View)>',53,'a',NULL),(29,15,'<vrhnjblm.iabewpt.spsju.MenuActivity: void RequestName(int)>',4,'a',NULL),(30,22,'<com.sBKMD.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(31,3,'<fBo.iSCfQp.butMcBm8: void onCreate(android.os.Bundle)>',172,'a',NULL),(32,37,'<com.sBKMD.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(33,6,'<fBo.iSCfQp.butMcBm10: void onClick(android.view.View)>',66,'a',NULL),(34,6,'<fBo.iSCfQp.butMcBm10: void onClick(android.view.View)>',75,'a',NULL),(35,15,'<vrhnjblm.iabewpt.spsju.MenuActivity: void openScoreTable(int)>',30,'a',NULL),(36,21,'<com.cosplay.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(37,47,'<com.m_zltbwxxg.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(38,10,'<fBo.iSCfQp.butMcBm12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(39,1,'<fBo.iSCfQp.image.butMcBm19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(40,87,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(41,58,'<com.IoBjn.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(42,8,'<com.m_zltbwxxg.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(43,58,'<com.IoBjn.pVplbvLoM: void a()>',3,'a',NULL),(44,10,'<fBo.iSCfQp.butMcBm12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(45,43,'<com.cosplay.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(46,88,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(47,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',133,'p',NULL),(48,5,'<fBo.iSCfQp.butMcBm2: void a(int,boolean)>',63,'a',NULL),(49,89,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(50,90,'<com.sBKMD.ad: void run()>',25,'s',NULL),(51,50,'<com.mmappforce7.snow.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(52,83,'<b: void onClick(android.view.View)>',239,'a',NULL),(53,91,'<ar: void onClick(android.view.View)>',239,'a',NULL),(54,92,'<ai: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(55,93,'<com.mmappforce7.snow.MainActivity$7: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(56,26,'<com.sBKMD.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(57,39,'<com.cosplay.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(58,15,'<vrhnjblm.iabewpt.spsju.MenuActivity: void StartSurviveMode()>',4,'a',NULL),(59,94,'<com.mmappforce7.snow.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(60,61,'<com.cosplay.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(61,1,'<fBo.iSCfQp.image.butMcBm19: void onCreate(android.os.Bundle)>',128,'s',NULL),(62,95,'<com.sBKMD.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(63,28,'<com.m_zltbwxxg.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(64,6,'<fBo.iSCfQp.butMcBm10: void onClick(android.view.View)>',84,'a',NULL),(65,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(66,96,'<av: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(67,26,'<com.sBKMD.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(68,41,'<com.m_zltbwxxg.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(69,15,'<vrhnjblm.iabewpt.spsju.MenuActivity: void StartGame()>',3,'a',NULL),(70,23,'<com.cosplay.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(71,87,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(72,22,'<com.sBKMD.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(73,97,'<vrhnjblm.iabewpt.spsju.SelectorActivity$3: void onClick(android.view.View)>',27,'a',NULL),(74,53,'<com.cosplay.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(75,98,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(76,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(77,57,'<com.cosplay.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(78,24,'<com.m_zltbwxxg.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(79,99,'<ifw.uMUab.k: void onClick(android.view.View)>',218,'a',NULL),(80,100,'<v: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(81,14,'<com.m_zltbwxxg.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(82,57,'<com.cosplay.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(83,101,'<ifw.uMUab.s: void onClick(android.view.View)>',218,'a',NULL),(84,98,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(85,30,'<com.cosplay.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(86,103,'<com.mmappforce7.snow.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(87,36,'<com.m_zltbwxxg.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(88,104,'<ct: void onClick(android.view.View)>',224,'a',NULL),(89,52,'<com.mmappforce7.snow.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(90,105,'<ak: void a(int,boolean)>',10,'s',NULL),(91,81,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(92,56,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(93,16,'<com.m_zltbwxxg.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(94,106,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(95,11,'<com.m_zltbwxxg.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(96,92,'<ai: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(97,25,'<com.cosplay.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(98,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(99,88,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(100,89,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(101,108,'<db: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(102,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(103,30,'<com.cosplay.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(104,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(105,9,'<com.m_zltbwxxg.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(106,109,'<cg: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(107,19,'<com.m_zltbwxxg.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(108,73,'<ifw.uMUab.MyActivity: void a()>',48,'a',NULL),(109,47,'<com.m_zltbwxxg.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(110,109,'<cg: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(111,81,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(112,107,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(113,110,'<dw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(114,111,'<ifw.uMUab.x: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(115,112,'<m: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(116,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(117,24,'<com.m_zltbwxxg.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(118,73,'<ifw.uMUab.MyActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(119,49,'<com.cosplay.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(120,36,'<com.m_zltbwxxg.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(121,55,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(122,114,'<ifw.uMUab.j: void onClick(android.view.View)>',242,'a',NULL),(123,96,'<av: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(124,98,'<l: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(125,43,'<com.cosplay.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(126,91,'<ar: void onClick(android.view.View)>',218,'a',NULL),(127,46,'<com.cosplay.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(128,77,'<ifw.uMUab.bSSHuSpsd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(129,25,'<com.cosplay.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(130,13,'<com.m_zltbwxxg.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(131,99,'<ifw.uMUab.k: void onClick(android.view.View)>',239,'a',NULL),(132,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(133,104,'<ct: void onClick(android.view.View)>',205,'a',NULL),(134,28,'<com.m_zltbwxxg.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(135,50,'<com.mmappforce7.snow.MainActivity: void d()>',10,'a',NULL),(136,47,'<com.m_zltbwxxg.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(137,49,'<com.cosplay.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(138,76,'<ifw.uMUab.bSSHuSpsd8: void onCreate(android.os.Bundle)>',33,'s',NULL),(139,9,'<com.m_zltbwxxg.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(140,43,'<com.cosplay.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(141,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(142,53,'<com.cosplay.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(143,78,'<ifw.uMUab.bSSHuSpsd2: void a(int,boolean)>',10,'s',NULL),(144,96,'<av: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(145,14,'<com.m_zltbwxxg.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(146,81,'<ifw.uMUab.bSSHuSpsd12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(147,116,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(148,88,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(149,61,'<com.cosplay.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(150,73,'<ifw.uMUab.MyActivity: void onCreate(android.os.Bundle)>',27,'s',NULL),(151,49,'<com.cosplay.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(152,79,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',66,'a',NULL),(153,41,'<com.m_zltbwxxg.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(154,19,'<com.m_zltbwxxg.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(155,92,'<ai: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(156,28,'<com.m_zltbwxxg.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(157,101,'<ifw.uMUab.s: void onClick(android.view.View)>',239,'a',NULL),(158,89,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(159,8,'<com.m_zltbwxxg.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(160,117,'<au: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(161,19,'<com.m_zltbwxxg.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(162,61,'<com.cosplay.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(163,118,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(164,119,'<ci: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(165,120,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(166,87,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(167,28,'<com.m_zltbwxxg.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(168,25,'<com.cosplay.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(169,49,'<com.cosplay.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(170,110,'<dw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(171,23,'<com.cosplay.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(172,87,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(173,121,'<dc: void a(int,boolean)>',29,'a',NULL),(174,122,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(175,46,'<com.cosplay.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(176,73,'<ifw.uMUab.MyActivity: void a()>',7,'a',NULL),(177,79,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',84,'a',NULL),(178,13,'<com.m_zltbwxxg.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(179,21,'<com.cosplay.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(180,34,'<com.cosplay.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(181,114,'<ifw.uMUab.j: void onClick(android.view.View)>',221,'a',NULL),(182,123,'<cx: void onClick(android.view.View)>',6,'a',NULL),(183,124,'<cm: void onClick(android.view.View)>',6,'a',NULL),(184,105,'<ak: void a(int,boolean)>',57,'a',NULL),(185,121,'<dc: void a(int,boolean)>',10,'s',NULL),(186,79,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',53,'a',NULL),(187,11,'<com.m_zltbwxxg.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(188,34,'<com.cosplay.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(189,43,'<com.cosplay.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(190,76,'<ifw.uMUab.bSSHuSpsd8: void onCreate(android.os.Bundle)>',84,'s',NULL),(191,125,'<dm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(192,96,'<av: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(193,71,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(194,11,'<com.m_zltbwxxg.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(195,75,'<ifw.uMUab.bSSHuSpsd16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(196,77,'<ifw.uMUab.bSSHuSpsd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(197,126,'<ifw.uMUab.i: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',11,'a',NULL),(198,79,'<ifw.uMUab.bSSHuSpsd10: void onClick(android.view.View)>',75,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,4,4),(3,5,4),(4,6,4),(5,8,1),(6,9,1),(7,10,4),(8,11,1),(9,12,1),(10,16,8),(11,18,9),(12,19,1),(13,20,1),(14,21,1),(15,22,1),(16,26,10),(17,27,1),(18,28,1),(19,30,4),(20,32,4),(21,33,4),(22,35,1),(23,37,1),(24,38,1),(25,40,1),(26,45,4),(27,46,4),(28,47,3),(29,48,4),(30,49,12),(31,50,13),(32,52,4),(33,53,14),(34,54,4),(35,57,4),(36,58,4),(37,59,4),(38,62,4),(39,63,10),(40,65,4),(41,69,15),(42,70,1),(43,71,1),(44,72,1),(45,74,1),(46,75,4),(47,76,1),(48,78,1),(49,79,1),(50,80,1),(51,85,16),(52,86,4),(53,92,17),(54,94,18),(55,96,19),(56,97,18),(57,100,20),(58,101,18),(59,103,18),(60,106,21),(61,107,22),(62,108,23),(63,109,22),(64,110,22),(65,112,22),(66,111,4),(67,113,1),(68,114,22),(69,116,1),(70,115,4),(71,117,4),(72,118,22),(73,119,4),(74,120,22),(75,122,22),(76,125,4),(77,127,4),(78,130,1),(79,132,1),(80,134,25),(81,135,1),(82,136,4),(83,138,1),(84,139,26),(85,140,22),(86,142,22),(87,144,26),(88,145,22),(89,146,22),(90,148,4),(91,150,22),(92,151,4),(93,152,22),(94,154,22),(95,155,4),(96,157,22),(97,159,17),(98,161,18),(99,162,18),(100,164,27),(101,166,18),(102,167,13),(103,169,1),(104,170,18),(105,171,1),(106,174,27),(107,177,4),(108,181,29),(109,182,22),(110,184,21),(111,183,22),(112,185,1),(113,187,22),(114,188,1),(115,189,4),(116,190,22),(117,191,1),(118,192,22),(119,194,4),(120,195,1),(121,196,22),(122,198,22),(123,199,4),(124,201,22),(125,202,4),(126,204,1),(127,206,4),(128,207,1),(129,208,4),(130,209,1),(131,210,4),(132,211,4),(133,212,1),(134,215,3),(135,218,31),(136,219,4),(137,220,19),(138,222,4),(139,226,25),(140,227,4),(141,230,4),(142,233,4),(143,234,4),(144,235,4),(145,237,4),(146,238,3),(147,239,1),(148,240,4),(149,241,1),(150,242,32),(151,243,1),(152,244,12),(153,245,4),(154,246,1),(155,248,16),(156,249,4),(157,250,4),(158,252,4),(159,254,4),(160,255,4),(161,258,4),(162,259,4),(163,260,4),(164,261,4),(165,262,1),(166,263,4),(167,264,1),(168,266,4),(169,268,4),(170,271,1),(171,273,1),(172,278,4),(173,281,4),(174,285,4),(175,289,4),(176,291,4),(177,293,26),(178,294,26),(179,296,1),(180,297,1),(181,299,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,8,2),(2,9,4),(3,11,2),(4,12,4),(5,19,2),(6,20,4),(7,21,2),(8,22,4),(9,27,2),(10,28,4),(11,35,2),(12,37,4),(13,38,2),(14,40,4),(15,70,2),(16,71,2),(17,72,4),(18,74,4),(19,76,2),(20,78,2),(21,79,4),(22,80,4),(23,113,2),(24,116,4),(25,130,2),(26,132,4),(27,135,2),(28,138,4),(29,169,2),(30,171,4),(31,185,2),(32,188,4),(33,191,2),(34,195,4),(35,204,2),(36,207,4),(37,209,2),(38,212,4),(39,239,2),(40,241,4),(41,243,2),(42,246,4),(43,262,2),(44,264,4),(45,271,2),(46,273,4),(47,296,2),(48,297,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'fBo/iSCfQp/butMcBm8'),(2,2,'fBo/iSCfQp/image/butMcBm19'),(3,7,'fBo/iSCfQp/image/butMcBm19'),(4,13,'jp/fa/clricsq/k_gfwm/StartActivity'),(5,14,'fBo/iSCfQp/butMcBm11'),(6,15,'jp/fa/clricsq/k_gfwm/StartActivity'),(7,16,'fBo/iSCfQp/butMcBm11'),(8,17,'com/nd/dianjin/activity/OfferAppActivity'),(9,18,'fBo/iSCfQp/butMcBm11'),(10,23,'vrhnjblm/iabewpt/spsju/MenuActivity'),(11,24,'fBo/iSCfQp/butMcBm11'),(12,25,'com/sBKMD/IQCLFEHFOSUMb'),(13,26,'fBo/iSCfQp/butMcBm11'),(14,29,'vrhnjblm/iabewpt/spsju/MenuActivity'),(15,31,'vrhnjblm/iabewpt/spsju/MenuActivity'),(16,34,'fBo/iSCfQp/image/butMcBm19'),(17,36,'com/sBKMD/jcEFEUtvmEBl'),(18,39,'fBo/iSCfQp/butMcBm11'),(19,42,'vrhnjblm/iabewpt/spsju/RequestActivity'),(20,41,'fBo/iSCfQp/butMcBm8'),(21,43,'fBo/iSCfQp/image/butMcBm19'),(22,44,'com/sBKMD/nubFUsvB'),(23,49,'com/cosplay/GameService'),(24,51,'fBo/iSCfQp/butMcBm11'),(25,50,'com/m_zltbwxxg/GameService'),(26,53,'com/cosplay/GameService'),(27,56,'com/m_zltbwxxg/Myhall'),(28,55,'fBo/iSCfQp/image/butMcBm18'),(29,60,'com/m_zltbwxxg/GameService'),(30,61,'com/mmappforce7/snow/MainActivity'),(31,63,'fBo/iSCfQp/butMcBm11'),(32,64,'com/cosplay/Myhall'),(33,66,'fBo/iSCfQp/image/butMcBm19'),(34,68,'com/sBKMD/jcEFEUtvmEBl'),(35,67,'com/cosplay/Myhall'),(36,73,'com/cosplay/Myhall'),(37,77,'vrhnjblm/iabewpt/spsju/MenuActivity'),(38,81,'com/cosplay/GameService'),(39,82,'vrhnjblm/iabewpt/spsju/GameActivity'),(40,83,'com/mmappforce7/snow/EditProfile'),(41,84,'fBo/iSCfQp/butMcBm11'),(42,85,'com/cosplay/GameService'),(43,87,'com/m_zltbwxxg/GameInfo'),(44,91,'vrhnjblm/iabewpt/spsju/MenuActivity'),(45,90,'com/cosplay/Myhall'),(46,88,'fBo/iSCfQp/butMcBm10'),(47,93,'com/m_zltbwxxg/GameInfo'),(48,95,'vrhnjblm/iabewpt/spsju/SelectorActivity'),(49,96,'com/cosplay/GameService'),(50,99,'com/sBKMD/IQCLFEHFOSUMb'),(51,98,'com/m_zltbwxxg/Myhall'),(52,100,'com/cosplay/GameService'),(53,104,'vrhnjblm/iabewpt/spsju/GameActivity'),(54,106,'com/cosplay/GameService'),(55,105,'com/m_zltbwxxg/Myhall'),(56,108,'com/cosplay/GameService'),(57,121,'com/m_zltbwxxg/GameInfo'),(58,123,'com/cosplay/GameInfo'),(59,124,'com/m_zltbwxxg/GameInfo'),(60,126,'com/cosplay/GameService'),(61,129,'com/m_zltbwxxg/GameService'),(62,131,'com/mmappforce7/snow/EditProfile'),(63,133,'com/m_zltbwxxg/GameService'),(64,134,'ifw/uMUab/bSSHuSpsd11'),(65,137,'com/m_zltbwxxg/GameService'),(66,141,'com/m_zltbwxxg/Myhall'),(67,143,'com/cosplay/GameInfo'),(68,147,'com/cosplay/Myhall'),(69,149,'com/m_zltbwxxg/Myhall'),(70,153,'com/cosplay/GameInfo'),(71,156,'com/cosplay/GameInfo'),(72,160,'com/m_zltbwxxg/GameService'),(73,163,'com/m_zltbwxxg/Myhall'),(74,165,'ifw/uMUab/bSSHuSpsd16'),(75,167,'com/m_zltbwxxg/GameService'),(76,172,'ifw/uMUab/bSSHuSpsd11'),(77,173,'com/mobclix/android/sdk/MobclixBrowserActivity'),(78,175,'tud/nfnpelo/jedbrij/GirlDiz'),(79,176,'com/mobclix/android/sdk/MobclixBrowserActivity'),(80,178,'com/m_zltbwxxg/GameInfo'),(81,179,'ifw/uMUab/bSSHuSpsd11'),(82,180,'com/cosplay/GameInfo'),(83,181,'com/m_zltbwxxg/GameService'),(84,184,'com/m_zltbwxxg/GameService'),(85,186,'com/cosplay/Myhall'),(86,193,'com/cosplay/GameService'),(87,197,'com/cosplay/GameInfo'),(88,200,'ifw/uMUab/bSSHuSpsd8'),(89,203,'com/m_zltbwxxg/GameService'),(90,205,'com/mobclix/android/sdk/MobclixBrowserActivity'),(91,214,'com/m_zltbwxxg/GameService'),(92,213,'com/mmappforce7/snow/Ranking'),(93,216,'ifw/uMUab/bSSHuSpsd11'),(94,217,'com/cosplay/Myhall'),(95,218,'com/m_zltbwxxg/GameService'),(96,221,'com/cosplay/GameService'),(97,220,'com/m_zltbwxxg/GameService'),(98,223,'ifw/uMUab/bSSHuSpsd11'),(99,225,'com/m_zltbwxxg/GameService'),(100,224,'com/cosplay/Myhall'),(101,226,'ifw/uMUab/bSSHuSpsd11'),(102,229,'com/cosplay/GameService'),(103,231,'ifw/uMUab/bSSHuSpsd11'),(104,228,'com/m_zltbwxxg/GameInfo'),(105,232,'com/cosplay/GameAlertDialog'),(106,236,'com/m_zltbwxxg/GameService'),(107,242,'com/m_zltbwxxg/GameService'),(108,244,'com/m_zltbwxxg/GameService'),(109,247,'com/m_zltbwxxg/Myhall'),(110,248,'com/cosplay/GameService'),(111,251,'com/cosplay/Myhall'),(112,253,'com/m_zltbwxxg/Myhall'),(113,257,'com/cosplay/GameInfo'),(114,256,'com/m_zltbwxxg/GameAlertDialog'),(115,265,'com/cosplay/GameService'),(116,269,'com/cosplay/Myhall'),(117,267,'com/m_zltbwxxg/Myhall'),(118,272,'tud/nfnpelo/jedbrij/GirlDiz'),(119,270,'com/m_zltbwxxg/Myhall'),(120,276,'com/cosplay/GameService'),(121,275,'com/m_zltbwxxg/GameInfo'),(122,274,'ifw/uMUab/bSSHuSpsd10'),(123,277,'com/cosplay/GameService'),(124,279,'com/m_zltbwxxg/image/ImageTestActivity'),(125,280,'com/cosplay/qimg/ImageTestActivity'),(126,282,'com/m_zltbwxxg/image/ImageTestActivity'),(127,283,'com/cosplay/GameService'),(128,286,'com/cosplay/GameInfo'),(129,284,'ifw/uMUab/bSSHuSpsd8'),(130,287,'com/cosplay/Myhall'),(131,288,'ifw/uMUab/bSSHuSpsd11'),(132,290,'com/cosplay/Myhall'),(133,292,'com/m_zltbwxxg/GameInfo'),(134,295,'tud/nfnpelo/jedbrij/GirlDiz'),(135,298,'tud/nfnpelo/jedbrij/GirlDiz');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,10,5),(6,30,6),(7,32,7),(8,33,8),(9,45,9),(10,46,10),(11,48,11),(12,52,12),(13,54,13),(14,58,14),(15,57,15),(16,59,16),(17,62,17),(18,65,19),(19,69,20),(20,75,21),(21,86,22),(22,111,23),(23,115,24),(24,117,25),(25,119,26),(26,125,27),(27,127,28),(28,136,29),(29,139,30),(30,144,31),(31,148,32),(32,151,33),(33,155,34),(34,164,35),(35,174,36),(36,177,37),(37,189,38),(38,194,39),(39,199,40),(40,202,41),(41,206,42),(42,208,43),(43,211,44),(44,210,45),(45,219,46),(46,222,47),(47,227,48),(48,230,49),(49,233,50),(50,234,51),(51,235,52),(52,237,53),(53,240,54),(54,245,55),(55,249,56),(56,250,57),(57,252,58),(58,254,59),(59,255,60),(60,258,61),(61,259,62),(62,260,63),(63,261,64),(64,263,65),(65,266,66),(66,268,67),(67,278,68),(68,281,69),(69,285,70),(70,289,71),(71,291,72),(72,293,73),(73,294,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'game'),(2,1,'fromtype'),(3,17,'oriention'),(4,41,'id'),(5,41,'from_alert'),(6,41,'detail_flag'),(7,44,'apkVersion'),(8,44,'apkURL'),(9,44,'apkInfo'),(10,44,'packageName'),(11,44,'apkSoftID'),(12,44,'apkTitle'),(13,44,'iconURL'),(14,44,'apkSize'),(15,44,'imageURL'),(16,55,'startid'),(17,56,'clicked'),(18,55,'position'),(19,67,'title'),(20,67,'nextclassid'),(21,67,'clicked'),(22,69,'android.intent.extra.SUBJECT'),(23,73,'title'),(24,73,'nextclassid'),(25,73,'clicked'),(26,83,'mGameID'),(27,83,'nick'),(28,87,'id'),(29,87,'from_alert'),(30,87,'detail_flag'),(31,88,'title'),(32,88,'btn_txt'),(33,90,'clicked'),(34,88,'need_adb_flag'),(35,88,'cont'),(36,93,'game'),(37,88,'close_flag'),(38,93,'fromtype'),(39,94,'output'),(40,97,'output'),(41,98,'clicked'),(42,97,'android.intent.extra.videoQuality'),(43,105,'title'),(44,105,'nextclassid'),(45,105,'clicked'),(46,107,'android.intent.extra.INTENT'),(47,109,'android.intent.extra.INTENT'),(48,110,'android.intent.extra.TITLE'),(49,110,'android.intent.extra.INTENT'),(50,112,'android.intent.extra.INTENT'),(51,114,'android.intent.extra.TITLE'),(52,114,'android.intent.extra.INTENT'),(53,118,'android.intent.extra.INTENT'),(54,120,'android.intent.extra.TITLE'),(55,121,'game'),(56,120,'android.intent.extra.INTENT'),(57,121,'fromtype'),(58,122,'android.intent.extra.TITLE'),(59,122,'android.intent.extra.INTENT'),(60,124,'title'),(61,124,'game'),(62,124,'fromtype'),(63,131,'mGameID'),(64,131,'nick'),(65,140,'android.intent.extra.INTENT'),(66,141,'nextclassid'),(67,141,'clicked'),(68,143,'title'),(69,142,'android.intent.extra.INTENT'),(70,145,'android.intent.extra.TITLE'),(71,145,'android.intent.extra.INTENT'),(72,147,'nextclassid'),(73,146,'android.intent.extra.INTENT'),(74,147,'clicked'),(75,149,'title'),(76,149,'nextclassid'),(77,150,'android.intent.extra.TITLE'),(78,149,'clicked'),(79,150,'android.intent.extra.INTENT'),(80,153,'title'),(81,152,'android.intent.extra.INTENT'),(82,154,'android.intent.extra.TITLE'),(83,154,'android.intent.extra.INTENT'),(84,156,'title'),(85,157,'android.intent.extra.TITLE'),(86,157,'android.intent.extra.INTENT'),(87,161,'output'),(88,162,'output'),(89,165,'popurl'),(90,162,'android.intent.extra.videoQuality'),(91,165,'poptitle'),(92,178,'game'),(93,178,'fromtype'),(94,180,'id'),(95,180,'from_table'),(96,180,'detail_flag'),(97,182,'android.intent.extra.INTENT'),(98,183,'android.intent.extra.INTENT'),(99,186,'clicked'),(100,187,'android.intent.extra.TITLE'),(101,187,'android.intent.extra.INTENT'),(102,190,'android.intent.extra.INTENT'),(103,192,'android.intent.extra.TITLE'),(104,192,'android.intent.extra.INTENT'),(105,196,'android.intent.extra.INTENT'),(106,198,'android.intent.extra.TITLE'),(107,200,'game'),(108,198,'android.intent.extra.INTENT'),(109,200,'fromtype'),(110,201,'android.intent.extra.TITLE'),(111,201,'android.intent.extra.INTENT'),(112,213,'mGameID'),(113,213,'mThisGameHighScore'),(114,224,'clicked'),(115,228,'title'),(116,228,'game'),(117,228,'fromtype'),(118,232,'title'),(119,232,'btn_txt'),(120,232,'need_adb_flag'),(121,232,'cont'),(122,232,'close_flag'),(123,251,'title'),(124,251,'nextclassid'),(125,251,'clicked'),(126,253,'clicked'),(127,256,'title'),(128,256,'btn_txt'),(129,256,'need_adb_flag'),(130,256,'cont'),(131,256,'close_flag'),(132,267,'clicked'),(133,270,'title'),(134,270,'nextclassid'),(135,270,'clicked'),(136,274,'title'),(137,274,'btn_txt'),(138,275,'title'),(139,274,'need_adb_flag'),(140,275,'game'),(141,274,'cont'),(142,275,'fromtype'),(143,274,'close_flag'),(144,284,'id'),(145,284,'from_alert'),(146,284,'detail_flag'),(147,290,'clicked'),(148,292,'game'),(149,292,'fromtype');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,15,1),(14,16,3),(15,17,4),(16,18,1),(17,19,1),(18,20,1),(19,21,5),(20,22,1),(21,23,1),(22,24,1),(23,25,1),(24,26,2),(25,27,6),(26,29,3),(27,30,1),(28,31,1),(29,32,1),(30,33,2),(31,34,7),(32,36,1),(33,37,1),(34,38,1),(35,39,1),(36,40,1),(37,41,2),(38,41,5),(39,42,6),(40,43,11),(41,44,11),(42,45,6),(43,46,11),(44,47,24),(45,47,5),(46,48,6),(47,49,28),(48,49,24),(49,50,28),(50,50,24),(51,51,30),(52,52,11),(53,53,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,12,2),(5,17,3),(6,17,1),(7,19,2),(8,22,2),(9,24,2),(10,30,2),(11,31,2),(12,32,2),(13,36,2),(14,40,2),(15,42,5),(16,43,5),(17,44,5),(18,45,5),(19,46,5),(20,48,5),(21,52,5),(22,53,5);
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
INSERT INTO `IFData` VALUES (1,17,'hangame-s-powa','',NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,42,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL),(9,52,'package',NULL,NULL,NULL,NULL,NULL),(10,53,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,5,'application','vnd.android.package-archive'),(4,6,'application','vnd.android.package-archive'),(5,10,'application','vnd.android.package-archive'),(6,30,'application','vnd.android.package-archive'),(7,32,'application','vnd.android.package-archive'),(8,33,'application','vnd.android.package-archive'),(9,57,'application','vnd.android.package-archive'),(10,86,'application','vnd.android.package-archive'),(11,92,'image','*'),(12,102,'image','*'),(13,103,'image','*'),(14,115,'application','vnd.android.package-archive'),(15,117,'application','vnd.android.package-archive'),(16,119,'application','vnd.android.package-archive'),(17,125,'application','vnd.android.package-archive'),(18,127,'application','vnd.android.package-archive'),(19,139,'(.*)','(.*)'),(20,155,'application','vnd.android.package-archive'),(21,159,'image','*'),(22,168,'image','*'),(23,170,'image','*'),(24,177,'application','vnd.android.package-archive'),(25,194,'application','vnd.android.package-archive'),(26,199,'application','vnd.android.package-archive'),(27,206,'application','vnd.android.package-archive'),(28,210,'application','vnd.android.package-archive'),(29,245,'application','vnd.android.package-archive'),(30,249,'application','vnd.android.package-archive'),(31,250,'application','vnd.android.package-archive'),(32,252,'application','vnd.android.package-archive'),(33,254,'application','vnd.android.package-archive'),(34,255,'application','vnd.android.package-archive'),(35,258,'application','vnd.android.package-archive'),(36,260,'application','vnd.android.package-archive'),(37,263,'application','vnd.android.package-archive'),(38,266,'application','vnd.android.package-archive'),(39,268,'application','vnd.android.package-archive'),(40,278,'application','vnd.android.package-archive'),(41,281,'application','vnd.android.package-archive'),(42,289,'application','vnd.android.package-archive'),(43,293,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'fBo.iSCfQp'),(2,2,'fBo.iSCfQp'),(3,7,'fBo.iSCfQp'),(4,8,'(.*)'),(5,9,''),(6,11,''),(7,12,'(.*)'),(8,13,'jp.fa.clricsq.k_gfwm'),(9,14,'fBo.iSCfQp'),(10,15,'jp.fa.clricsq.k_gfwm'),(11,16,'fBo.iSCfQp'),(12,17,'jp.fa.clricsq.k_gfwm'),(13,18,'fBo.iSCfQp'),(14,19,'(.*)'),(15,20,''),(16,21,''),(17,22,'(.*)'),(18,23,'vrhnjblm.iabewpt.spsju'),(19,24,'fBo.iSCfQp'),(20,25,'vrhnjblm.iabewpt.spsju'),(21,26,'fBo.iSCfQp'),(22,27,'(.*)'),(23,28,'(.*)'),(24,29,'vrhnjblm.iabewpt.spsju'),(25,31,'vrhnjblm.iabewpt.spsju'),(26,34,'fBo.iSCfQp'),(27,36,'vrhnjblm.iabewpt.spsju'),(28,35,'(.*)'),(29,37,'(.*)'),(30,38,'(.*)'),(31,39,'fBo.iSCfQp'),(32,40,'(.*)'),(33,42,'vrhnjblm.iabewpt.spsju'),(34,41,'fBo.iSCfQp'),(35,43,'fBo.iSCfQp'),(36,44,'vrhnjblm.iabewpt.spsju'),(37,49,'com.cosplay'),(38,51,'fBo.iSCfQp'),(39,50,'com.m_zltbwxxg'),(40,53,'com.cosplay'),(41,56,'com.m_zltbwxxg'),(42,55,'fBo.iSCfQp'),(43,60,'com.m_zltbwxxg'),(44,61,'com.ndugdqobssq.ddpk'),(45,64,'com.cosplay'),(46,63,'fBo.iSCfQp'),(47,66,'fBo.iSCfQp'),(48,68,'vrhnjblm.iabewpt.spsju'),(49,67,'com.cosplay'),(50,70,'(.*)'),(51,71,'(.*)'),(52,72,''),(53,74,''),(54,73,'com.cosplay'),(55,76,''),(56,77,'vrhnjblm.iabewpt.spsju'),(57,78,''),(58,79,'(.*)'),(59,81,'com.cosplay'),(60,80,'(.*)'),(61,82,'vrhnjblm.iabewpt.spsju'),(62,83,'com.ndugdqobssq.ddpk'),(63,84,'fBo.iSCfQp'),(64,85,'com.cosplay'),(65,87,'com.m_zltbwxxg'),(66,91,'vrhnjblm.iabewpt.spsju'),(67,90,'com.cosplay'),(68,88,'fBo.iSCfQp'),(69,93,'com.m_zltbwxxg'),(70,95,'vrhnjblm.iabewpt.spsju'),(71,96,'com.cosplay'),(72,99,'vrhnjblm.iabewpt.spsju'),(73,98,'com.m_zltbwxxg'),(74,100,'com.cosplay'),(75,104,'vrhnjblm.iabewpt.spsju'),(76,106,'com.cosplay'),(77,105,'com.m_zltbwxxg'),(78,108,'com.cosplay'),(79,113,'(.*)'),(80,116,'(.*)'),(81,121,'com.m_zltbwxxg'),(82,123,'com.cosplay'),(83,124,'com.m_zltbwxxg'),(84,126,'com.cosplay'),(85,129,'com.m_zltbwxxg'),(86,130,'(.*)'),(87,131,'com.ndugdqobssq.ddpk'),(88,133,'com.m_zltbwxxg'),(89,132,''),(90,134,'tud.nfnpelo.jedbrij'),(91,135,''),(92,137,'com.m_zltbwxxg'),(93,138,'(.*)'),(94,141,'com.m_zltbwxxg'),(95,143,'com.cosplay'),(96,147,'com.cosplay'),(97,149,'com.m_zltbwxxg'),(98,153,'com.cosplay'),(99,156,'com.cosplay'),(100,160,'com.m_zltbwxxg'),(101,163,'com.m_zltbwxxg'),(102,165,'tud.nfnpelo.jedbrij'),(103,167,'com.m_zltbwxxg'),(104,169,'NULL-CONSTANT'),(105,172,'tud.nfnpelo.jedbrij'),(106,171,'NULL-CONSTANT'),(107,173,'com.ndugdqobssq.ddpk'),(108,175,'tud.nfnpelo.jedbrij'),(109,176,'com.ndugdqobssq.ddpk'),(110,178,'com.m_zltbwxxg'),(111,179,'tud.nfnpelo.jedbrij'),(112,180,'com.cosplay'),(113,181,'com.m_zltbwxxg'),(114,185,'(.*)'),(115,184,'com.m_zltbwxxg'),(116,186,'com.cosplay'),(117,188,''),(118,191,''),(119,193,'com.cosplay'),(120,195,'(.*)'),(121,197,'com.cosplay'),(122,200,'tud.nfnpelo.jedbrij'),(123,203,'com.m_zltbwxxg'),(124,204,'(.*)'),(125,205,'com.ndugdqobssq.ddpk'),(126,207,''),(127,209,''),(128,212,'(.*)'),(129,214,'com.m_zltbwxxg'),(130,213,'com.ndugdqobssq.ddpk'),(131,216,'tud.nfnpelo.jedbrij'),(132,217,'com.cosplay'),(133,218,'com.m_zltbwxxg'),(134,221,'com.cosplay'),(135,220,'com.m_zltbwxxg'),(136,223,'tud.nfnpelo.jedbrij'),(137,225,'com.m_zltbwxxg'),(138,224,'com.cosplay'),(139,226,'tud.nfnpelo.jedbrij'),(140,229,'com.cosplay'),(141,231,'tud.nfnpelo.jedbrij'),(142,228,'com.m_zltbwxxg'),(143,232,'com.cosplay'),(144,236,'com.m_zltbwxxg'),(145,239,'(.*)'),(146,241,''),(147,242,'com.m_zltbwxxg'),(148,243,''),(149,244,'com.m_zltbwxxg'),(150,246,'(.*)'),(151,247,'com.m_zltbwxxg'),(152,248,'com.cosplay'),(153,251,'com.cosplay'),(154,253,'com.m_zltbwxxg'),(155,257,'com.cosplay'),(156,256,'com.m_zltbwxxg'),(157,262,'NULL-CONSTANT'),(158,264,'NULL-CONSTANT'),(159,265,'com.cosplay'),(160,269,'com.cosplay'),(161,267,'com.m_zltbwxxg'),(162,272,'tud.nfnpelo.jedbrij'),(163,271,'(.*)'),(164,270,'com.m_zltbwxxg'),(165,273,'(.*)'),(166,276,'com.cosplay'),(167,275,'com.m_zltbwxxg'),(168,274,'tud.nfnpelo.jedbrij'),(169,277,'com.cosplay'),(170,279,'com.m_zltbwxxg'),(171,280,'com.cosplay'),(172,282,'com.m_zltbwxxg'),(173,283,'com.cosplay'),(174,286,'com.cosplay'),(175,284,'tud.nfnpelo.jedbrij'),(176,287,'com.cosplay'),(177,288,'tud.nfnpelo.jedbrij'),(178,290,'com.cosplay'),(179,292,'com.m_zltbwxxg'),(180,295,'tud.nfnpelo.jedbrij'),(181,296,'(.*)'),(182,297,'(.*)'),(183,298,'tud.nfnpelo.jedbrij');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,7,0),(6,10,0),(7,13,0),(8,14,0),(9,15,0),(10,16,0),(11,19,0),(12,22,0),(13,24,0),(14,29,0),(15,30,0),(16,32,0),(17,29,0),(18,35,0),(19,36,0),(20,38,0),(21,39,0),(22,42,0),(23,43,0),(24,44,0),(25,46,0),(26,47,0),(27,48,0),(28,50,0),(29,51,0),(30,53,0),(31,59,0),(32,60,0),(33,61,0),(34,62,0),(35,63,0),(36,73,0),(37,76,0),(38,77,0),(39,78,0),(40,80,0),(41,81,0),(42,10,0),(43,47,0),(44,10,0),(45,61,0),(46,81,0),(47,82,0),(48,81,0),(49,83,0),(50,83,0),(51,84,0),(52,61,0),(53,47,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,1,0),(6,4,1,0),(7,5,0,0),(8,6,1,0),(9,6,1,0),(10,7,1,0),(11,6,1,0),(12,6,1,0),(13,8,0,0),(14,9,0,0),(15,10,0,0),(16,11,0,0),(17,12,0,0),(18,11,0,0),(19,13,1,0),(20,13,1,0),(21,13,1,0),(22,13,1,0),(23,14,0,0),(24,15,0,0),(25,16,0,0),(26,17,0,0),(27,18,1,0),(28,18,1,0),(29,19,0,0),(30,20,1,0),(31,21,0,0),(32,20,1,0),(33,22,1,0),(34,23,0,0),(35,24,1,0),(36,25,0,0),(37,24,1,0),(38,26,1,0),(39,27,0,0),(40,26,1,0),(41,28,0,0),(42,29,0,0),(43,31,0,0),(44,32,0,0),(45,33,1,0),(46,33,1,0),(47,34,1,0),(48,35,1,0),(49,36,0,0),(50,37,0,0),(51,38,0,0),(52,35,1,0),(53,36,0,0),(54,35,1,0),(55,39,0,0),(56,40,0,0),(57,41,1,0),(58,35,1,0),(59,35,1,0),(60,42,0,0),(61,43,0,0),(62,35,1,0),(63,44,0,0),(64,45,0,0),(65,46,1,0),(66,48,0,0),(67,49,0,0),(68,50,0,0),(69,51,1,0),(70,52,1,0),(71,53,1,0),(72,52,1,0),(73,54,0,0),(74,53,1,0),(75,55,1,0),(76,52,1,0),(77,56,0,0),(78,53,1,0),(79,52,1,0),(80,53,1,0),(81,57,0,0),(82,58,0,0),(83,59,0,0),(84,61,0,0),(85,60,0,0),(86,62,1,0),(87,63,0,0),(88,64,0,0),(89,65,1,0),(90,66,0,0),(91,67,0,0),(92,65,1,0),(93,68,0,0),(94,65,1,0),(95,69,0,0),(96,70,0,0),(97,65,1,0),(98,71,0,0),(99,72,0,0),(100,70,0,0),(101,65,1,0),(102,65,1,0),(103,65,1,0),(104,73,0,0),(105,75,0,0),(106,74,0,0),(107,76,1,0),(108,74,0,0),(109,76,1,0),(110,76,1,0),(111,77,1,0),(112,76,1,0),(113,78,1,0),(114,76,1,0),(115,79,1,0),(116,78,1,0),(117,80,1,0),(118,76,1,0),(119,79,1,0),(120,76,1,0),(121,81,0,0),(122,76,1,0),(123,82,0,0),(124,84,0,0),(125,83,1,0),(126,85,0,0),(127,83,1,0),(128,86,1,0),(129,87,0,0),(130,88,1,0),(131,89,0,0),(132,88,1,0),(133,90,0,0),(134,91,0,0),(135,88,1,0),(136,92,1,0),(137,93,0,0),(138,88,1,0),(139,92,1,0),(140,94,1,0),(141,95,0,0),(142,94,1,0),(143,96,0,0),(144,92,1,0),(145,94,1,0),(146,94,1,0),(147,97,0,0),(148,98,1,0),(149,99,0,0),(150,94,1,0),(151,98,1,0),(152,94,1,0),(153,100,0,0),(154,94,1,0),(155,101,1,0),(156,103,0,0),(157,94,1,0),(158,104,1,0),(159,104,1,0),(160,105,0,0),(161,104,1,0),(162,104,1,0),(163,107,0,0),(164,106,1,0),(165,108,0,0),(166,104,1,0),(167,109,0,0),(168,104,1,0),(169,110,1,0),(170,104,1,0),(171,110,1,0),(172,111,0,0),(173,112,0,0),(174,113,1,0),(175,114,0,0),(176,116,0,0),(177,115,1,0),(178,117,0,0),(179,118,0,0),(180,119,0,0),(181,120,0,0),(182,121,1,0),(183,121,1,0),(184,120,0,0),(185,122,1,0),(186,123,0,0),(187,121,1,0),(188,122,1,0),(189,124,1,0),(190,121,1,0),(191,122,1,0),(192,121,1,0),(193,125,0,0),(194,126,1,0),(195,122,1,0),(196,121,1,0),(197,127,0,0),(198,121,1,0),(199,126,1,0),(200,128,0,0),(201,121,1,0),(202,129,1,0),(203,130,0,0),(204,131,1,0),(205,132,0,0),(206,133,1,0),(207,131,1,0),(208,134,1,0),(209,131,1,0),(210,133,1,0),(211,134,1,0),(212,131,1,0),(213,135,0,0),(214,136,0,0),(215,137,1,0),(216,138,0,0),(217,140,0,0),(218,139,0,0),(219,141,1,0),(220,139,0,0),(221,142,0,0),(222,141,1,0),(223,143,0,0),(224,144,0,0),(225,145,0,0),(226,146,0,0),(227,147,1,0),(228,148,0,0),(229,149,0,0),(230,147,1,0),(231,150,0,0),(232,151,0,0),(233,152,1,0),(234,153,1,0),(235,152,1,0),(236,154,0,0),(237,155,1,0),(238,156,1,0),(239,157,1,0),(240,158,1,0),(241,157,1,0),(242,159,0,0),(243,157,1,0),(244,159,0,0),(245,160,1,0),(246,157,1,0),(247,161,0,0),(248,162,0,0),(249,163,1,0),(250,164,1,0),(251,165,0,0),(252,163,1,0),(253,166,0,0),(254,163,1,0),(255,163,1,0),(256,167,0,0),(257,168,0,0),(258,163,1,0),(259,169,1,0),(260,163,1,0),(261,169,1,0),(262,170,1,0),(263,163,1,0),(264,170,1,0),(265,171,0,0),(266,163,1,0),(267,172,0,0),(268,163,1,0),(269,173,0,0),(270,174,0,0),(271,175,1,0),(272,176,0,0),(273,175,1,0),(274,177,0,0),(275,178,0,0),(276,179,0,0),(277,180,0,0),(278,181,1,0),(279,182,0,0),(280,183,0,0),(281,181,1,0),(282,184,0,0),(283,185,0,0),(284,186,0,0),(285,187,1,0),(286,188,0,0),(287,189,0,0),(288,190,0,0),(289,191,1,0),(290,192,0,0),(291,193,1,0),(292,194,0,0),(293,193,1,0),(294,193,1,0),(295,195,0,0),(296,196,1,0),(297,196,1,0),(298,197,0,0),(299,198,1,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SET_WALLPAPER'),(12,'android.permission.SYSTEM_ALERT_WINDOW'),(14,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=(.*)&m=(.*)&p=(.*)&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=&m=(.*)&p=(.*)&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=&m=(.*)&p=(.*)(.*)&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=(.*)&m=(.*)&p=&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=(.*)&m=(.*)&p=(.*)(.*)&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://www.amoneron.com/slugs/scoretable.php?n=&m=(.*)&p=&s=(.*)&v=1&cc=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'mailto:androidmj002@gmail.com',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://',NULL,NULL,NULL),(58,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(69,NULL,NULL,'file://',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'file://',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,47,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,2,9),(18,2,10),(19,2,11),(20,3,1),(21,3,2),(22,3,5),(23,3,6),(24,3,12),(25,4,1),(26,4,2),(27,3,13),(28,3,14),(29,4,3),(30,4,4),(31,4,5),(32,4,6),(33,4,7),(34,4,8),(35,4,9),(36,4,10),(37,4,11),(38,5,16),(39,5,1),(40,5,5),(41,5,6),(42,5,7),(43,5,15),(44,6,1),(45,6,5),(46,6,6),(47,6,7),(48,6,10),(49,6,15),(50,7,17),(51,7,16),(52,7,1),(53,7,2),(54,7,4),(55,7,5),(56,7,6),(57,7,7),(58,7,8),(59,7,15);
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
