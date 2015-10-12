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
) ENGINE=InnoDB AUTO_INCREMENT=2486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,60,44,2,NULL),(2,242,44,2,NULL),(3,244,44,2,NULL),(4,160,44,2,NULL),(5,218,44,2,NULL),(6,220,44,2,NULL),(7,49,59,2,NULL),(8,141,8,2,NULL),(9,53,59,2,NULL),(10,292,19,2,NULL),(11,276,59,2,NULL),(12,285,1,2,NULL),(13,96,59,2,NULL),(14,285,3,2,NULL),(15,100,59,2,NULL),(16,285,4,2,NULL),(17,265,59,2,NULL),(18,285,5,2,NULL),(19,147,21,2,NULL),(20,285,7,2,NULL),(21,257,43,2,NULL),(22,285,10,2,NULL),(23,202,1,2,NULL),(24,285,13,2,NULL),(25,202,3,2,NULL),(26,285,14,2,NULL),(27,202,4,2,NULL),(28,285,16,2,NULL),(29,202,5,2,NULL),(30,285,19,2,NULL),(31,202,7,2,NULL),(32,285,24,2,NULL),(33,202,10,2,NULL),(34,285,32,2,NULL),(35,202,13,2,NULL),(36,285,36,2,NULL),(37,202,14,2,NULL),(38,285,44,2,NULL),(39,202,16,2,NULL),(40,285,47,2,NULL),(41,202,19,2,NULL),(42,285,15,2,NULL),(43,202,24,2,NULL),(44,285,22,2,NULL),(45,202,32,2,NULL),(46,285,39,2,NULL),(47,202,36,2,NULL),(48,285,30,2,NULL),(49,202,44,2,NULL),(50,285,35,2,NULL),(51,202,47,2,NULL),(52,285,38,2,NULL),(53,202,15,2,NULL),(54,285,43,2,NULL),(55,202,22,2,NULL),(56,285,46,2,NULL),(57,202,39,2,NULL),(58,285,51,2,NULL),(59,202,30,2,NULL),(60,285,53,2,NULL),(61,202,35,2,NULL),(62,285,59,2,NULL),(63,202,38,2,NULL),(64,285,61,2,NULL),(65,202,43,2,NULL),(66,285,29,2,NULL),(67,202,46,2,NULL),(68,285,42,2,NULL),(69,202,51,2,NULL),(70,285,50,2,NULL),(71,202,53,2,NULL),(72,285,60,2,NULL),(73,202,59,2,NULL),(74,285,62,2,NULL),(75,202,61,2,NULL),(76,285,82,2,NULL),(77,202,29,2,NULL),(78,285,83,2,NULL),(79,202,42,2,NULL),(80,285,84,2,NULL),(81,202,50,2,NULL),(82,285,63,2,NULL),(83,202,60,2,NULL),(84,285,73,2,NULL),(85,202,62,2,NULL),(86,285,76,2,NULL),(87,202,82,2,NULL),(88,285,77,2,NULL),(89,202,83,2,NULL),(90,285,78,2,NULL),(91,202,84,2,NULL),(92,285,80,2,NULL),(93,202,63,2,NULL),(94,285,81,2,NULL),(95,202,73,2,NULL),(96,203,44,2,NULL),(97,202,76,2,NULL),(98,275,19,2,NULL),(99,202,77,2,NULL),(100,35,13,2,NULL),(101,202,78,2,NULL),(102,37,13,2,NULL),(103,202,80,2,NULL),(104,45,13,2,NULL),(105,202,81,2,NULL),(106,46,13,2,NULL),(107,126,59,2,NULL),(108,47,13,2,NULL),(109,156,43,2,NULL),(110,113,13,2,NULL),(111,35,30,2,NULL),(112,116,13,2,NULL),(113,37,30,2,NULL),(114,208,13,2,NULL),(115,45,30,2,NULL),(116,211,13,2,NULL),(117,46,30,2,NULL),(118,238,13,2,NULL),(119,47,30,2,NULL),(120,234,13,2,NULL),(121,113,30,2,NULL),(122,27,13,2,NULL),(123,116,30,2,NULL),(124,28,13,2,NULL),(125,208,30,2,NULL),(126,38,13,2,NULL),(127,211,30,2,NULL),(128,40,13,2,NULL),(129,238,30,2,NULL),(130,271,13,2,NULL),(131,234,30,2,NULL),(132,273,13,2,NULL),(133,27,30,2,NULL),(134,215,13,2,NULL),(135,28,30,2,NULL),(136,259,13,2,NULL),(137,38,30,2,NULL),(138,261,13,2,NULL),(139,40,30,2,NULL),(140,111,13,2,NULL),(141,271,30,2,NULL),(142,69,13,2,NULL),(143,273,30,2,NULL),(144,89,13,2,NULL),(145,215,30,2,NULL),(146,94,13,2,NULL),(147,259,30,2,NULL),(148,97,13,2,NULL),(149,261,30,2,NULL),(150,101,13,2,NULL),(151,111,30,2,NULL),(152,107,13,2,NULL),(153,69,30,2,NULL),(154,109,13,2,NULL),(155,89,30,2,NULL),(156,110,13,2,NULL),(157,94,30,2,NULL),(158,112,13,2,NULL),(159,97,30,2,NULL),(160,114,13,2,NULL),(161,101,30,2,NULL),(162,118,13,2,NULL),(163,107,30,2,NULL),(164,120,13,2,NULL),(165,109,30,2,NULL),(166,122,13,2,NULL),(167,110,30,2,NULL),(168,158,13,2,NULL),(169,112,30,2,NULL),(170,161,13,2,NULL),(171,114,30,2,NULL),(172,162,13,2,NULL),(173,118,30,2,NULL),(174,166,13,2,NULL),(175,120,30,2,NULL),(176,182,13,2,NULL),(177,122,30,2,NULL),(178,183,13,2,NULL),(179,158,30,2,NULL),(180,187,13,2,NULL),(181,161,30,2,NULL),(182,190,13,2,NULL),(183,162,30,2,NULL),(184,192,13,2,NULL),(185,166,30,2,NULL),(186,196,13,2,NULL),(187,182,30,2,NULL),(188,198,13,2,NULL),(189,183,30,2,NULL),(190,201,13,2,NULL),(191,187,30,2,NULL),(192,136,13,2,NULL),(193,190,30,2,NULL),(194,144,13,2,NULL),(195,192,30,2,NULL),(196,291,13,2,NULL),(197,196,30,2,NULL),(198,294,13,2,NULL),(199,198,30,2,NULL),(200,296,13,2,NULL),(201,201,30,2,NULL),(202,297,13,2,NULL),(203,136,30,2,NULL),(204,233,13,2,NULL),(205,144,30,2,NULL),(206,235,13,2,NULL),(207,291,30,2,NULL),(208,299,13,2,NULL),(209,294,30,2,NULL),(210,121,19,2,NULL),(211,296,30,2,NULL),(212,225,44,2,NULL),(213,297,30,2,NULL),(214,35,14,2,NULL),(215,233,30,2,NULL),(216,37,14,2,NULL),(217,235,30,2,NULL),(218,45,14,2,NULL),(219,299,30,2,NULL),(220,46,14,2,NULL),(221,277,59,2,NULL),(222,47,14,2,NULL),(223,286,43,2,NULL),(224,113,14,2,NULL),(225,35,35,2,NULL),(226,116,14,2,NULL),(227,37,35,2,NULL),(228,208,14,2,NULL),(229,45,35,2,NULL),(230,211,14,2,NULL),(231,46,35,2,NULL),(232,238,14,2,NULL),(233,47,35,2,NULL),(234,234,14,2,NULL),(235,113,35,2,NULL),(236,27,14,2,NULL),(237,116,35,2,NULL),(238,28,14,2,NULL),(239,208,35,2,NULL),(240,38,14,2,NULL),(241,211,35,2,NULL),(242,40,14,2,NULL),(243,238,35,2,NULL),(244,271,14,2,NULL),(245,234,35,2,NULL),(246,273,14,2,NULL),(247,27,35,2,NULL),(248,215,14,2,NULL),(249,28,35,2,NULL),(250,259,14,2,NULL),(251,38,35,2,NULL),(252,261,14,2,NULL),(253,40,35,2,NULL),(254,111,14,2,NULL),(255,271,35,2,NULL),(256,69,14,2,NULL),(257,273,35,2,NULL),(258,89,14,2,NULL),(259,215,35,2,NULL),(260,94,14,2,NULL),(261,259,35,2,NULL),(262,97,14,2,NULL),(263,261,35,2,NULL),(264,101,14,2,NULL),(265,111,35,2,NULL),(266,107,14,2,NULL),(267,69,35,2,NULL),(268,109,14,2,NULL),(269,89,35,2,NULL),(270,110,14,2,NULL),(271,94,35,2,NULL),(272,112,14,2,NULL),(273,97,35,2,NULL),(274,114,14,2,NULL),(275,101,35,2,NULL),(276,118,14,2,NULL),(277,107,35,2,NULL),(278,120,14,2,NULL),(279,109,35,2,NULL),(280,122,14,2,NULL),(281,110,35,2,NULL),(282,158,14,2,NULL),(283,112,35,2,NULL),(284,161,14,2,NULL),(285,114,35,2,NULL),(286,162,14,2,NULL),(287,118,35,2,NULL),(288,166,14,2,NULL),(289,120,35,2,NULL),(290,182,14,2,NULL),(291,122,35,2,NULL),(292,183,14,2,NULL),(293,158,35,2,NULL),(294,187,14,2,NULL),(295,161,35,2,NULL),(296,190,14,2,NULL),(297,162,35,2,NULL),(298,192,14,2,NULL),(299,166,35,2,NULL),(300,196,14,2,NULL),(301,182,35,2,NULL),(302,198,14,2,NULL),(303,183,35,2,NULL),(304,201,14,2,NULL),(305,187,35,2,NULL),(306,136,14,2,NULL),(307,190,35,2,NULL),(308,144,14,2,NULL),(309,192,35,2,NULL),(310,291,14,2,NULL),(311,196,35,2,NULL),(312,294,14,2,NULL),(313,198,35,2,NULL),(314,296,14,2,NULL),(315,201,35,2,NULL),(316,297,14,2,NULL),(317,136,35,2,NULL),(318,233,14,2,NULL),(319,144,35,2,NULL),(320,235,14,2,NULL),(321,291,35,2,NULL),(322,299,14,2,NULL),(323,294,35,2,NULL),(324,137,44,2,NULL),(325,296,35,2,NULL),(326,35,16,2,NULL),(327,297,35,2,NULL),(328,37,16,2,NULL),(329,233,35,2,NULL),(330,45,16,2,NULL),(331,235,35,2,NULL),(332,46,16,2,NULL),(333,299,35,2,NULL),(334,47,16,2,NULL),(335,81,59,2,NULL),(336,113,16,2,NULL),(337,35,38,2,NULL),(338,116,16,2,NULL),(339,37,38,2,NULL),(340,208,16,2,NULL),(341,45,38,2,NULL),(342,211,16,2,NULL),(343,46,38,2,NULL),(344,238,16,2,NULL),(345,47,38,2,NULL),(346,234,16,2,NULL),(347,113,38,2,NULL),(348,27,16,2,NULL),(349,116,38,2,NULL),(350,28,16,2,NULL),(351,208,38,2,NULL),(352,38,16,2,NULL),(353,211,38,2,NULL),(354,40,16,2,NULL),(355,238,38,2,NULL),(356,271,16,2,NULL),(357,234,38,2,NULL),(358,273,16,2,NULL),(359,27,38,2,NULL),(360,215,16,2,NULL),(361,28,38,2,NULL),(362,259,16,2,NULL),(363,38,38,2,NULL),(364,261,16,2,NULL),(365,40,38,2,NULL),(366,111,16,2,NULL),(367,271,38,2,NULL),(368,69,16,2,NULL),(369,273,38,2,NULL),(370,89,16,2,NULL),(371,215,38,2,NULL),(372,94,16,2,NULL),(373,259,38,2,NULL),(374,97,16,2,NULL),(375,261,38,2,NULL),(376,101,16,2,NULL),(377,111,38,2,NULL),(378,107,16,2,NULL),(379,69,38,2,NULL),(380,109,16,2,NULL),(381,89,38,2,NULL),(382,110,16,2,NULL),(383,94,38,2,NULL),(384,112,16,2,NULL),(385,97,38,2,NULL),(386,114,16,2,NULL),(387,101,38,2,NULL),(388,118,16,2,NULL),(389,107,38,2,NULL),(390,120,16,2,NULL),(391,109,38,2,NULL),(392,122,16,2,NULL),(393,110,38,2,NULL),(394,158,16,2,NULL),(395,112,38,2,NULL),(396,161,16,2,NULL),(397,114,38,2,NULL),(398,162,16,2,NULL),(399,118,38,2,NULL),(400,166,16,2,NULL),(401,120,38,2,NULL),(402,182,16,2,NULL),(403,122,38,2,NULL),(404,183,16,2,NULL),(405,158,38,2,NULL),(406,187,16,2,NULL),(407,161,38,2,NULL),(408,190,16,2,NULL),(409,162,38,2,NULL),(410,192,16,2,NULL),(411,166,38,2,NULL),(412,196,16,2,NULL),(413,182,38,2,NULL),(414,198,16,2,NULL),(415,183,38,2,NULL),(416,201,16,2,NULL),(417,187,38,2,NULL),(418,136,16,2,NULL),(419,190,38,2,NULL),(420,144,16,2,NULL),(421,192,38,2,NULL),(422,291,16,2,NULL),(423,196,38,2,NULL),(424,294,16,2,NULL),(425,198,38,2,NULL),(426,296,16,2,NULL),(427,201,38,2,NULL),(428,297,16,2,NULL),(429,136,38,2,NULL),(430,233,16,2,NULL),(431,144,38,2,NULL),(432,235,16,2,NULL),(433,291,38,2,NULL),(434,299,16,2,NULL),(435,294,38,2,NULL),(436,163,8,2,NULL),(437,296,38,2,NULL),(438,236,44,2,NULL),(439,297,38,2,NULL),(440,247,8,2,NULL),(441,233,38,2,NULL),(442,35,19,2,NULL),(443,235,38,2,NULL),(444,37,19,2,NULL),(445,299,38,2,NULL),(446,45,19,2,NULL),(447,64,21,2,NULL),(448,46,19,2,NULL),(449,193,59,2,NULL),(450,47,19,2,NULL),(451,217,21,2,NULL),(452,113,19,2,NULL),(453,287,21,2,NULL),(454,116,19,2,NULL),(455,35,43,2,NULL),(456,208,19,2,NULL),(457,37,43,2,NULL),(458,211,19,2,NULL),(459,45,43,2,NULL),(460,238,19,2,NULL),(461,46,43,2,NULL),(462,234,19,2,NULL),(463,47,43,2,NULL),(464,27,19,2,NULL),(465,113,43,2,NULL),(466,28,19,2,NULL),(467,116,43,2,NULL),(468,38,19,2,NULL),(469,208,43,2,NULL),(470,40,19,2,NULL),(471,211,43,2,NULL),(472,271,19,2,NULL),(473,238,43,2,NULL),(474,273,19,2,NULL),(475,234,43,2,NULL),(476,215,19,2,NULL),(477,27,43,2,NULL),(478,259,19,2,NULL),(479,28,43,2,NULL),(480,261,19,2,NULL),(481,38,43,2,NULL),(482,111,19,2,NULL),(483,40,43,2,NULL),(484,69,19,2,NULL),(485,271,43,2,NULL),(486,89,19,2,NULL),(487,273,43,2,NULL),(488,94,19,2,NULL),(489,215,43,2,NULL),(490,97,19,2,NULL),(491,259,43,2,NULL),(492,101,19,2,NULL),(493,261,43,2,NULL),(494,107,19,2,NULL),(495,111,43,2,NULL),(496,109,19,2,NULL),(497,69,43,2,NULL),(498,110,19,2,NULL),(499,89,43,2,NULL),(500,112,19,2,NULL),(501,94,43,2,NULL),(502,114,19,2,NULL),(503,97,43,2,NULL),(504,118,19,2,NULL),(505,101,43,2,NULL),(506,120,19,2,NULL),(507,107,43,2,NULL),(508,122,19,2,NULL),(509,109,43,2,NULL),(510,158,19,2,NULL),(511,110,43,2,NULL),(512,161,19,2,NULL),(513,112,43,2,NULL),(514,162,19,2,NULL),(515,114,43,2,NULL),(516,166,19,2,NULL),(517,118,43,2,NULL),(518,182,19,2,NULL),(519,120,43,2,NULL),(520,183,19,2,NULL),(521,122,43,2,NULL),(522,187,19,2,NULL),(523,158,43,2,NULL),(524,190,19,2,NULL),(525,161,43,2,NULL),(526,192,19,2,NULL),(527,162,43,2,NULL),(528,196,19,2,NULL),(529,166,43,2,NULL),(530,198,19,2,NULL),(531,182,43,2,NULL),(532,201,19,2,NULL),(533,183,43,2,NULL),(534,136,19,2,NULL),(535,187,43,2,NULL),(536,144,19,2,NULL),(537,190,43,2,NULL),(538,291,19,2,NULL),(539,192,43,2,NULL),(540,294,19,2,NULL),(541,196,43,2,NULL),(542,296,19,2,NULL),(543,198,43,2,NULL),(544,297,19,2,NULL),(545,201,43,2,NULL),(546,233,19,2,NULL),(547,136,43,2,NULL),(548,235,19,2,NULL),(549,144,43,2,NULL),(550,299,19,2,NULL),(551,291,43,2,NULL),(552,178,19,2,NULL),(553,294,43,2,NULL),(554,113,1,2,NULL),(555,296,43,2,NULL),(556,116,1,2,NULL),(557,297,43,2,NULL),(558,113,3,2,NULL),(559,233,43,2,NULL),(560,116,3,2,NULL),(561,235,43,2,NULL),(562,113,4,2,NULL),(563,299,43,2,NULL),(564,116,4,2,NULL),(565,197,43,2,NULL),(566,35,24,2,NULL),(567,271,1,2,NULL),(568,37,24,2,NULL),(569,273,1,2,NULL),(570,113,5,2,NULL),(571,271,3,2,NULL),(572,116,5,2,NULL),(573,273,3,2,NULL),(574,45,24,2,NULL),(575,271,4,2,NULL),(576,46,24,2,NULL),(577,273,4,2,NULL),(578,47,24,2,NULL),(579,35,46,2,NULL),(580,113,7,2,NULL),(581,37,46,2,NULL),(582,116,7,2,NULL),(583,271,5,2,NULL),(584,113,10,2,NULL),(585,273,5,2,NULL),(586,116,10,2,NULL),(587,45,46,2,NULL),(588,208,24,2,NULL),(589,46,46,2,NULL),(590,211,24,2,NULL),(591,47,46,2,NULL),(592,238,24,2,NULL),(593,271,7,2,NULL),(594,113,32,2,NULL),(595,273,7,2,NULL),(596,116,32,2,NULL),(597,271,10,2,NULL),(598,113,36,2,NULL),(599,273,10,2,NULL),(600,116,36,2,NULL),(601,271,24,2,NULL),(602,234,24,2,NULL),(603,273,24,2,NULL),(604,113,44,2,NULL),(605,113,46,2,NULL),(606,116,44,2,NULL),(607,116,46,2,NULL),(608,113,47,2,NULL),(609,208,46,2,NULL),(610,116,47,2,NULL),(611,211,46,2,NULL),(612,113,15,2,NULL),(613,238,46,2,NULL),(614,116,15,2,NULL),(615,271,32,2,NULL),(616,113,22,2,NULL),(617,273,32,2,NULL),(618,116,22,2,NULL),(619,271,36,2,NULL),(620,27,24,2,NULL),(621,273,36,2,NULL),(622,28,24,2,NULL),(623,234,46,2,NULL),(624,38,24,2,NULL),(625,271,44,2,NULL),(626,40,24,2,NULL),(627,273,44,2,NULL),(628,113,39,2,NULL),(629,271,47,2,NULL),(630,116,39,2,NULL),(631,273,47,2,NULL),(632,215,24,2,NULL),(633,271,15,2,NULL),(634,259,24,2,NULL),(635,273,15,2,NULL),(636,261,24,2,NULL),(637,271,22,2,NULL),(638,113,51,2,NULL),(639,273,22,2,NULL),(640,116,51,2,NULL),(641,27,46,2,NULL),(642,113,53,2,NULL),(643,28,46,2,NULL),(644,116,53,2,NULL),(645,38,46,2,NULL),(646,111,24,2,NULL),(647,40,46,2,NULL),(648,113,59,2,NULL),(649,271,39,2,NULL),(650,116,59,2,NULL),(651,273,39,2,NULL),(652,113,61,2,NULL),(653,215,46,2,NULL),(654,116,61,2,NULL),(655,259,46,2,NULL),(656,113,29,2,NULL),(657,261,46,2,NULL),(658,116,29,2,NULL),(659,271,51,2,NULL),(660,113,42,2,NULL),(661,273,51,2,NULL),(662,116,42,2,NULL),(663,271,53,2,NULL),(664,113,50,2,NULL),(665,273,53,2,NULL),(666,116,50,2,NULL),(667,111,46,2,NULL),(668,69,24,2,NULL),(669,271,59,2,NULL),(670,89,24,2,NULL),(671,273,59,2,NULL),(672,94,24,2,NULL),(673,271,61,2,NULL),(674,97,24,2,NULL),(675,273,61,2,NULL),(676,101,24,2,NULL),(677,271,29,2,NULL),(678,107,24,2,NULL),(679,273,29,2,NULL),(680,109,24,2,NULL),(681,271,42,2,NULL),(682,110,24,2,NULL),(683,273,42,2,NULL),(684,112,24,2,NULL),(685,271,50,2,NULL),(686,114,24,2,NULL),(687,273,50,2,NULL),(688,118,24,2,NULL),(689,69,46,2,NULL),(690,120,24,2,NULL),(691,89,46,2,NULL),(692,122,24,2,NULL),(693,94,46,2,NULL),(694,158,24,2,NULL),(695,97,46,2,NULL),(696,161,24,2,NULL),(697,101,46,2,NULL),(698,162,24,2,NULL),(699,107,46,2,NULL),(700,166,24,2,NULL),(701,109,46,2,NULL),(702,182,24,2,NULL),(703,110,46,2,NULL),(704,183,24,2,NULL),(705,112,46,2,NULL),(706,187,24,2,NULL),(707,114,46,2,NULL),(708,190,24,2,NULL),(709,118,46,2,NULL),(710,192,24,2,NULL),(711,120,46,2,NULL),(712,196,24,2,NULL),(713,122,46,2,NULL),(714,198,24,2,NULL),(715,158,46,2,NULL),(716,201,24,2,NULL),(717,161,46,2,NULL),(718,136,24,2,NULL),(719,162,46,2,NULL),(720,144,24,2,NULL),(721,166,46,2,NULL),(722,113,60,2,NULL),(723,182,46,2,NULL),(724,116,60,2,NULL),(725,183,46,2,NULL),(726,113,62,2,NULL),(727,187,46,2,NULL),(728,116,62,2,NULL),(729,190,46,2,NULL),(730,113,82,2,NULL),(731,192,46,2,NULL),(732,116,82,2,NULL),(733,196,46,2,NULL),(734,113,83,2,NULL),(735,198,46,2,NULL),(736,116,83,2,NULL),(737,201,46,2,NULL),(738,113,84,2,NULL),(739,136,46,2,NULL),(740,116,84,2,NULL),(741,144,46,2,NULL),(742,113,63,2,NULL),(743,271,60,2,NULL),(744,116,63,2,NULL),(745,273,60,2,NULL),(746,291,24,2,NULL),(747,271,62,2,NULL),(748,294,24,2,NULL),(749,273,62,2,NULL),(750,113,73,2,NULL),(751,271,82,2,NULL),(752,116,73,2,NULL),(753,273,82,2,NULL),(754,113,76,2,NULL),(755,271,83,2,NULL),(756,116,76,2,NULL),(757,273,83,2,NULL),(758,113,77,2,NULL),(759,271,84,2,NULL),(760,116,77,2,NULL),(761,273,84,2,NULL),(762,296,24,2,NULL),(763,271,63,2,NULL),(764,297,24,2,NULL),(765,273,63,2,NULL),(766,113,78,2,NULL),(767,291,46,2,NULL),(768,116,78,2,NULL),(769,294,46,2,NULL),(770,233,24,2,NULL),(771,271,73,2,NULL),(772,235,24,2,NULL),(773,273,73,2,NULL),(774,299,24,2,NULL),(775,271,76,2,NULL),(776,113,80,2,NULL),(777,273,76,2,NULL),(778,116,80,2,NULL),(779,271,77,2,NULL),(780,113,81,2,NULL),(781,273,77,2,NULL),(782,116,81,2,NULL),(783,296,46,2,NULL),(784,87,19,2,NULL),(785,297,46,2,NULL),(786,256,28,2,NULL),(787,271,78,2,NULL),(788,208,1,2,NULL),(789,273,78,2,NULL),(790,211,1,2,NULL),(791,233,46,2,NULL),(792,238,1,2,NULL),(793,235,46,2,NULL),(794,208,3,2,NULL),(795,299,46,2,NULL),(796,211,3,2,NULL),(797,271,80,2,NULL),(798,238,3,2,NULL),(799,273,80,2,NULL),(800,208,4,2,NULL),(801,271,81,2,NULL),(802,211,4,2,NULL),(803,273,81,2,NULL),(804,238,4,2,NULL),(805,180,43,2,NULL),(806,208,5,2,NULL),(807,232,49,2,NULL),(808,211,5,2,NULL),(809,215,1,2,NULL),(810,238,5,2,NULL),(811,259,1,2,NULL),(812,208,7,2,NULL),(813,261,1,2,NULL),(814,211,7,2,NULL),(815,215,3,2,NULL),(816,238,7,2,NULL),(817,259,3,2,NULL),(818,208,10,2,NULL),(819,261,3,2,NULL),(820,211,10,2,NULL),(821,215,4,2,NULL),(822,238,10,2,NULL),(823,259,4,2,NULL),(824,261,4,2,NULL),(825,208,32,2,NULL),(826,215,5,2,NULL),(827,211,32,2,NULL),(828,259,5,2,NULL),(829,238,32,2,NULL),(830,261,5,2,NULL),(831,208,36,2,NULL),(832,215,7,2,NULL),(833,211,36,2,NULL),(834,238,36,2,NULL),(835,259,7,2,NULL),(836,208,44,2,NULL),(837,261,7,2,NULL),(838,211,44,2,NULL),(839,215,10,2,NULL),(840,238,44,2,NULL),(841,259,10,2,NULL),(842,208,47,2,NULL),(843,261,10,2,NULL),(844,211,47,2,NULL),(845,215,32,2,NULL),(846,238,47,2,NULL),(847,259,32,2,NULL),(848,208,15,2,NULL),(849,261,32,2,NULL),(850,211,15,2,NULL),(851,215,36,2,NULL),(852,238,15,2,NULL),(853,259,36,2,NULL),(854,208,22,2,NULL),(855,261,36,2,NULL),(856,211,22,2,NULL),(857,215,44,2,NULL),(858,238,22,2,NULL),(859,259,44,2,NULL),(860,208,39,2,NULL),(861,261,44,2,NULL),(862,211,39,2,NULL),(863,215,47,2,NULL),(864,238,39,2,NULL),(865,259,47,2,NULL),(866,208,51,2,NULL),(867,261,47,2,NULL),(868,211,51,2,NULL),(869,215,15,2,NULL),(870,238,51,2,NULL),(871,259,15,2,NULL),(872,208,53,2,NULL),(873,261,15,2,NULL),(874,211,53,2,NULL),(875,215,22,2,NULL),(876,238,53,2,NULL),(877,259,22,2,NULL),(878,208,59,2,NULL),(879,261,22,2,NULL),(880,211,59,2,NULL),(881,215,39,2,NULL),(882,238,59,2,NULL),(883,259,39,2,NULL),(884,208,61,2,NULL),(885,261,39,2,NULL),(886,211,61,2,NULL),(887,215,51,2,NULL),(888,238,61,2,NULL),(889,259,51,2,NULL),(890,208,29,2,NULL),(891,261,51,2,NULL),(892,211,29,2,NULL),(893,215,53,2,NULL),(894,238,29,2,NULL),(895,259,53,2,NULL),(896,208,42,2,NULL),(897,261,53,2,NULL),(898,211,42,2,NULL),(899,215,59,2,NULL),(900,238,42,2,NULL),(901,259,59,2,NULL),(902,208,50,2,NULL),(903,261,59,2,NULL),(904,211,50,2,NULL),(905,215,61,2,NULL),(906,238,50,2,NULL),(907,259,61,2,NULL),(908,208,60,2,NULL),(909,261,61,2,NULL),(910,211,60,2,NULL),(911,215,29,2,NULL),(912,238,60,2,NULL),(913,259,29,2,NULL),(914,208,62,2,NULL),(915,261,29,2,NULL),(916,211,62,2,NULL),(917,215,42,2,NULL),(918,238,62,2,NULL),(919,259,42,2,NULL),(920,208,82,2,NULL),(921,261,42,2,NULL),(922,211,82,2,NULL),(923,215,50,2,NULL),(924,238,82,2,NULL),(925,259,50,2,NULL),(926,208,83,2,NULL),(927,261,50,2,NULL),(928,211,83,2,NULL),(929,215,60,2,NULL),(930,238,83,2,NULL),(931,259,60,2,NULL),(932,208,84,2,NULL),(933,261,60,2,NULL),(934,211,84,2,NULL),(935,215,62,2,NULL),(936,238,84,2,NULL),(937,259,62,2,NULL),(938,208,63,2,NULL),(939,261,62,2,NULL),(940,211,63,2,NULL),(941,215,82,2,NULL),(942,238,63,2,NULL),(943,259,82,2,NULL),(944,208,73,2,NULL),(945,261,82,2,NULL),(946,211,73,2,NULL),(947,215,83,2,NULL),(948,238,73,2,NULL),(949,259,83,2,NULL),(950,208,76,2,NULL),(951,261,83,2,NULL),(952,211,76,2,NULL),(953,215,84,2,NULL),(954,238,76,2,NULL),(955,259,84,2,NULL),(956,208,77,2,NULL),(957,261,84,2,NULL),(958,211,77,2,NULL),(959,215,63,2,NULL),(960,238,77,2,NULL),(961,259,63,2,NULL),(962,208,78,2,NULL),(963,261,63,2,NULL),(964,211,78,2,NULL),(965,215,73,2,NULL),(966,238,78,2,NULL),(967,259,73,2,NULL),(968,208,80,2,NULL),(969,261,73,2,NULL),(970,211,80,2,NULL),(971,215,76,2,NULL),(972,238,80,2,NULL),(973,259,76,2,NULL),(974,208,81,2,NULL),(975,261,76,2,NULL),(976,211,81,2,NULL),(977,215,77,2,NULL),(978,238,81,2,NULL),(979,259,77,2,NULL),(980,35,32,2,NULL),(981,261,77,2,NULL),(982,37,32,2,NULL),(983,215,78,2,NULL),(984,45,32,2,NULL),(985,259,78,2,NULL),(986,46,32,2,NULL),(987,261,78,2,NULL),(988,47,32,2,NULL),(989,215,80,2,NULL),(990,234,32,2,NULL),(991,259,80,2,NULL),(992,27,32,2,NULL),(993,261,80,2,NULL),(994,28,32,2,NULL),(995,215,81,2,NULL),(996,38,32,2,NULL),(997,259,81,2,NULL),(998,40,32,2,NULL),(999,261,81,2,NULL),(1000,111,32,2,NULL),(1001,35,51,2,NULL),(1002,69,32,2,NULL),(1003,37,51,2,NULL),(1004,89,32,2,NULL),(1005,45,51,2,NULL),(1006,94,32,2,NULL),(1007,46,51,2,NULL),(1008,97,32,2,NULL),(1009,47,51,2,NULL),(1010,101,32,2,NULL),(1011,234,51,2,NULL),(1012,107,32,2,NULL),(1013,27,51,2,NULL),(1014,109,32,2,NULL),(1015,28,51,2,NULL),(1016,110,32,2,NULL),(1017,38,51,2,NULL),(1018,112,32,2,NULL),(1019,40,51,2,NULL),(1020,114,32,2,NULL),(1021,111,51,2,NULL),(1022,118,32,2,NULL),(1023,69,51,2,NULL),(1024,120,32,2,NULL),(1025,89,51,2,NULL),(1026,122,32,2,NULL),(1027,94,51,2,NULL),(1028,158,32,2,NULL),(1029,97,51,2,NULL),(1030,161,32,2,NULL),(1031,101,51,2,NULL),(1032,162,32,2,NULL),(1033,107,51,2,NULL),(1034,166,32,2,NULL),(1035,109,51,2,NULL),(1036,182,32,2,NULL),(1037,110,51,2,NULL),(1038,183,32,2,NULL),(1039,112,51,2,NULL),(1040,187,32,2,NULL),(1041,114,51,2,NULL),(1042,190,32,2,NULL),(1043,118,51,2,NULL),(1044,192,32,2,NULL),(1045,120,51,2,NULL),(1046,196,32,2,NULL),(1047,122,51,2,NULL),(1048,198,32,2,NULL),(1049,158,51,2,NULL),(1050,201,32,2,NULL),(1051,161,51,2,NULL),(1052,136,32,2,NULL),(1053,162,51,2,NULL),(1054,144,32,2,NULL),(1055,166,51,2,NULL),(1056,291,32,2,NULL),(1057,182,51,2,NULL),(1058,294,32,2,NULL),(1059,183,51,2,NULL),(1060,296,32,2,NULL),(1061,187,51,2,NULL),(1062,297,32,2,NULL),(1063,190,51,2,NULL),(1064,233,32,2,NULL),(1065,192,51,2,NULL),(1066,235,32,2,NULL),(1067,196,51,2,NULL),(1068,299,32,2,NULL),(1069,198,51,2,NULL),(1070,129,44,2,NULL),(1071,201,51,2,NULL),(1072,181,44,2,NULL),(1073,136,51,2,NULL),(1074,184,44,2,NULL),(1075,144,51,2,NULL),(1076,35,36,2,NULL),(1077,291,51,2,NULL),(1078,37,36,2,NULL),(1079,294,51,2,NULL),(1080,45,36,2,NULL),(1081,296,51,2,NULL),(1082,46,36,2,NULL),(1083,297,51,2,NULL),(1084,47,36,2,NULL),(1085,233,51,2,NULL),(1086,234,36,2,NULL),(1087,235,51,2,NULL),(1088,27,36,2,NULL),(1089,299,51,2,NULL),(1090,28,36,2,NULL),(1091,106,59,2,NULL),(1092,38,36,2,NULL),(1093,108,59,2,NULL),(1094,40,36,2,NULL),(1095,221,59,2,NULL),(1096,111,36,2,NULL),(1097,35,53,2,NULL),(1098,69,36,2,NULL),(1099,37,53,2,NULL),(1100,89,36,2,NULL),(1101,45,53,2,NULL),(1102,94,36,2,NULL),(1103,46,53,2,NULL),(1104,97,36,2,NULL),(1105,47,53,2,NULL),(1106,101,36,2,NULL),(1107,234,53,2,NULL),(1108,107,36,2,NULL),(1109,27,53,2,NULL),(1110,109,36,2,NULL),(1111,28,53,2,NULL),(1112,110,36,2,NULL),(1113,38,53,2,NULL),(1114,112,36,2,NULL),(1115,40,53,2,NULL),(1116,114,36,2,NULL),(1117,111,53,2,NULL),(1118,118,36,2,NULL),(1119,69,53,2,NULL),(1120,120,36,2,NULL),(1121,89,53,2,NULL),(1122,122,36,2,NULL),(1123,94,53,2,NULL),(1124,158,36,2,NULL),(1125,97,53,2,NULL),(1126,161,36,2,NULL),(1127,101,53,2,NULL),(1128,162,36,2,NULL),(1129,107,53,2,NULL),(1130,166,36,2,NULL),(1131,109,53,2,NULL),(1132,182,36,2,NULL),(1133,110,53,2,NULL),(1134,183,36,2,NULL),(1135,112,53,2,NULL),(1136,187,36,2,NULL),(1137,114,53,2,NULL),(1138,190,36,2,NULL),(1139,118,53,2,NULL),(1140,192,36,2,NULL),(1141,120,53,2,NULL),(1142,196,36,2,NULL),(1143,122,53,2,NULL),(1144,198,36,2,NULL),(1145,158,53,2,NULL),(1146,201,36,2,NULL),(1147,161,53,2,NULL),(1148,136,36,2,NULL),(1149,162,53,2,NULL),(1150,144,36,2,NULL),(1151,166,53,2,NULL),(1152,291,36,2,NULL),(1153,182,53,2,NULL),(1154,294,36,2,NULL),(1155,183,53,2,NULL),(1156,296,36,2,NULL),(1157,187,53,2,NULL),(1158,297,36,2,NULL),(1159,190,53,2,NULL),(1160,233,36,2,NULL),(1161,192,53,2,NULL),(1162,235,36,2,NULL),(1163,196,53,2,NULL),(1164,299,36,2,NULL),(1165,198,53,2,NULL),(1166,93,19,2,NULL),(1167,201,53,2,NULL),(1168,234,1,2,NULL),(1169,136,53,2,NULL),(1170,234,3,2,NULL),(1171,144,53,2,NULL),(1172,234,4,2,NULL),(1173,291,53,2,NULL),(1174,234,5,2,NULL),(1175,294,53,2,NULL),(1176,234,7,2,NULL),(1177,296,53,2,NULL),(1178,234,10,2,NULL),(1179,297,53,2,NULL),(1180,234,44,2,NULL),(1181,233,53,2,NULL),(1182,234,47,2,NULL),(1183,235,53,2,NULL),(1184,234,15,2,NULL),(1185,299,53,2,NULL),(1186,234,22,2,NULL),(1187,123,43,2,NULL),(1188,234,39,2,NULL),(1189,111,1,2,NULL),(1190,234,59,2,NULL),(1191,111,3,2,NULL),(1192,234,61,2,NULL),(1193,111,4,2,NULL),(1194,234,29,2,NULL),(1195,111,5,2,NULL),(1196,234,42,2,NULL),(1197,111,7,2,NULL),(1198,234,50,2,NULL),(1199,111,10,2,NULL),(1200,234,60,2,NULL),(1201,111,44,2,NULL),(1202,234,62,2,NULL),(1203,111,47,2,NULL),(1204,234,82,2,NULL),(1205,111,15,2,NULL),(1206,234,83,2,NULL),(1207,111,22,2,NULL),(1208,234,84,2,NULL),(1209,111,39,2,NULL),(1210,234,63,2,NULL),(1211,111,59,2,NULL),(1212,234,73,2,NULL),(1213,111,61,2,NULL),(1214,234,76,2,NULL),(1215,111,29,2,NULL),(1216,234,77,2,NULL),(1217,111,42,2,NULL),(1218,234,78,2,NULL),(1219,111,50,2,NULL),(1220,234,80,2,NULL),(1221,111,60,2,NULL),(1222,234,81,2,NULL),(1223,111,62,2,NULL),(1224,35,44,2,NULL),(1225,111,82,2,NULL),(1226,37,44,2,NULL),(1227,111,83,2,NULL),(1228,45,44,2,NULL),(1229,111,84,2,NULL),(1230,46,44,2,NULL),(1231,111,63,2,NULL),(1232,47,44,2,NULL),(1233,111,73,2,NULL),(1234,27,44,2,NULL),(1235,111,76,2,NULL),(1236,28,44,2,NULL),(1237,111,77,2,NULL),(1238,38,44,2,NULL),(1239,111,78,2,NULL),(1240,40,44,2,NULL),(1241,111,80,2,NULL),(1242,69,44,2,NULL),(1243,111,81,2,NULL),(1244,89,44,2,NULL),(1245,35,59,2,NULL),(1246,94,44,2,NULL),(1247,37,59,2,NULL),(1248,97,44,2,NULL),(1249,45,59,2,NULL),(1250,101,44,2,NULL),(1251,46,59,2,NULL),(1252,107,44,2,NULL),(1253,47,59,2,NULL),(1254,109,44,2,NULL),(1255,27,59,2,NULL),(1256,110,44,2,NULL),(1257,28,59,2,NULL),(1258,112,44,2,NULL),(1259,38,59,2,NULL),(1260,114,44,2,NULL),(1261,40,59,2,NULL),(1262,118,44,2,NULL),(1263,69,59,2,NULL),(1264,120,44,2,NULL),(1265,89,59,2,NULL),(1266,122,44,2,NULL),(1267,94,59,2,NULL),(1268,158,44,2,NULL),(1269,97,59,2,NULL),(1270,161,44,2,NULL),(1271,101,59,2,NULL),(1272,162,44,2,NULL),(1273,107,59,2,NULL),(1274,166,44,2,NULL),(1275,109,59,2,NULL),(1276,182,44,2,NULL),(1277,110,59,2,NULL),(1278,183,44,2,NULL),(1279,112,59,2,NULL),(1280,187,44,2,NULL),(1281,114,59,2,NULL),(1282,190,44,2,NULL),(1283,118,59,2,NULL),(1284,192,44,2,NULL),(1285,120,59,2,NULL),(1286,196,44,2,NULL),(1287,122,59,2,NULL),(1288,198,44,2,NULL),(1289,158,59,2,NULL),(1290,201,44,2,NULL),(1291,161,59,2,NULL),(1292,136,44,2,NULL),(1293,162,59,2,NULL),(1294,144,44,2,NULL),(1295,166,59,2,NULL),(1296,291,44,2,NULL),(1297,182,59,2,NULL),(1298,294,44,2,NULL),(1299,183,59,2,NULL),(1300,296,44,2,NULL),(1301,187,59,2,NULL),(1302,297,44,2,NULL),(1303,190,59,2,NULL),(1304,233,44,2,NULL),(1305,192,59,2,NULL),(1306,235,44,2,NULL),(1307,196,59,2,NULL),(1308,299,44,2,NULL),(1309,198,59,2,NULL),(1310,50,44,2,NULL),(1311,201,59,2,NULL),(1312,167,44,2,NULL),(1313,136,59,2,NULL),(1314,214,44,2,NULL),(1315,144,59,2,NULL),(1316,35,47,2,NULL),(1317,291,59,2,NULL),(1318,37,47,2,NULL),(1319,294,59,2,NULL),(1320,45,47,2,NULL),(1321,296,59,2,NULL),(1322,46,47,2,NULL),(1323,297,59,2,NULL),(1324,47,47,2,NULL),(1325,233,59,2,NULL),(1326,27,47,2,NULL),(1327,235,59,2,NULL),(1328,28,47,2,NULL),(1329,299,59,2,NULL),(1330,38,47,2,NULL),(1331,85,59,2,NULL),(1332,40,47,2,NULL),(1333,229,59,2,NULL),(1334,69,47,2,NULL),(1335,248,59,2,NULL),(1336,89,47,2,NULL),(1337,35,61,2,NULL),(1338,94,47,2,NULL),(1339,37,61,2,NULL),(1340,97,47,2,NULL),(1341,45,61,2,NULL),(1342,101,47,2,NULL),(1343,46,61,2,NULL),(1344,107,47,2,NULL),(1345,47,61,2,NULL),(1346,109,47,2,NULL),(1347,27,61,2,NULL),(1348,110,47,2,NULL),(1349,28,61,2,NULL),(1350,112,47,2,NULL),(1351,38,61,2,NULL),(1352,114,47,2,NULL),(1353,40,61,2,NULL),(1354,118,47,2,NULL),(1355,69,61,2,NULL),(1356,120,47,2,NULL),(1357,89,61,2,NULL),(1358,122,47,2,NULL),(1359,94,61,2,NULL),(1360,158,47,2,NULL),(1361,97,61,2,NULL),(1362,161,47,2,NULL),(1363,101,61,2,NULL),(1364,162,47,2,NULL),(1365,107,61,2,NULL),(1366,166,47,2,NULL),(1367,109,61,2,NULL),(1368,182,47,2,NULL),(1369,110,61,2,NULL),(1370,183,47,2,NULL),(1371,112,61,2,NULL),(1372,187,47,2,NULL),(1373,114,61,2,NULL),(1374,190,47,2,NULL),(1375,118,61,2,NULL),(1376,192,47,2,NULL),(1377,120,61,2,NULL),(1378,196,47,2,NULL),(1379,122,61,2,NULL),(1380,198,47,2,NULL),(1381,158,61,2,NULL),(1382,201,47,2,NULL),(1383,161,61,2,NULL),(1384,136,47,2,NULL),(1385,162,61,2,NULL),(1386,144,47,2,NULL),(1387,166,61,2,NULL),(1388,291,47,2,NULL),(1389,182,61,2,NULL),(1390,294,47,2,NULL),(1391,183,61,2,NULL),(1392,296,47,2,NULL),(1393,187,61,2,NULL),(1394,297,47,2,NULL),(1395,190,61,2,NULL),(1396,233,47,2,NULL),(1397,192,61,2,NULL),(1398,235,47,2,NULL),(1399,196,61,2,NULL),(1400,299,47,2,NULL),(1401,198,61,2,NULL),(1402,201,61,2,NULL),(1403,136,61,2,NULL),(1404,144,61,2,NULL),(1405,291,61,2,NULL),(1406,294,61,2,NULL),(1407,296,61,2,NULL),(1408,297,61,2,NULL),(1409,233,61,2,NULL),(1410,235,61,2,NULL),(1411,299,61,2,NULL),(1412,213,52,2,NULL),(1413,69,1,2,NULL),(1414,69,3,2,NULL),(1415,69,4,2,NULL),(1416,35,50,2,NULL),(1417,37,50,2,NULL),(1418,69,5,2,NULL),(1419,45,50,2,NULL),(1420,46,50,2,NULL),(1421,47,50,2,NULL),(1422,69,7,2,NULL),(1423,69,10,2,NULL),(1424,69,15,2,NULL),(1425,69,22,2,NULL),(1426,27,50,2,NULL),(1427,42,18,2,NULL),(1428,28,50,2,NULL),(1429,82,17,2,NULL),(1430,38,50,2,NULL),(1431,95,20,2,NULL),(1432,40,50,2,NULL),(1433,35,15,2,NULL),(1434,69,39,2,NULL),(1435,37,15,2,NULL),(1436,69,29,2,NULL),(1437,45,15,2,NULL),(1438,69,42,2,NULL),(1439,46,15,2,NULL),(1440,89,50,2,NULL),(1441,47,15,2,NULL),(1442,94,50,2,NULL),(1443,27,15,2,NULL),(1444,97,50,2,NULL),(1445,28,15,2,NULL),(1446,101,50,2,NULL),(1447,38,15,2,NULL),(1448,107,50,2,NULL),(1449,40,15,2,NULL),(1450,109,50,2,NULL),(1451,89,15,2,NULL),(1452,110,50,2,NULL),(1453,94,15,2,NULL),(1454,112,50,2,NULL),(1455,97,15,2,NULL),(1456,114,50,2,NULL),(1457,101,15,2,NULL),(1458,118,50,2,NULL),(1459,107,15,2,NULL),(1460,120,50,2,NULL),(1461,109,15,2,NULL),(1462,122,50,2,NULL),(1463,110,15,2,NULL),(1464,158,50,2,NULL),(1465,112,15,2,NULL),(1466,161,50,2,NULL),(1467,114,15,2,NULL),(1468,162,50,2,NULL),(1469,118,15,2,NULL),(1470,166,50,2,NULL),(1471,120,15,2,NULL),(1472,182,50,2,NULL),(1473,122,15,2,NULL),(1474,183,50,2,NULL),(1475,158,15,2,NULL),(1476,187,50,2,NULL),(1477,161,15,2,NULL),(1478,190,50,2,NULL),(1479,162,15,2,NULL),(1480,192,50,2,NULL),(1481,166,15,2,NULL),(1482,196,50,2,NULL),(1483,182,15,2,NULL),(1484,198,50,2,NULL),(1485,183,15,2,NULL),(1486,201,50,2,NULL),(1487,187,15,2,NULL),(1488,136,50,2,NULL),(1489,190,15,2,NULL),(1490,144,50,2,NULL),(1491,192,15,2,NULL),(1492,69,60,2,NULL),(1493,196,15,2,NULL),(1494,69,62,2,NULL),(1495,198,15,2,NULL),(1496,69,82,2,NULL),(1497,201,15,2,NULL),(1498,69,83,2,NULL),(1499,136,15,2,NULL),(1500,69,84,2,NULL),(1501,144,15,2,NULL),(1502,69,63,2,NULL),(1503,291,15,2,NULL),(1504,291,50,2,NULL),(1505,294,15,2,NULL),(1506,294,50,2,NULL),(1507,296,15,2,NULL),(1508,69,73,2,NULL),(1509,297,15,2,NULL),(1510,69,76,2,NULL),(1511,233,15,2,NULL),(1512,69,77,2,NULL),(1513,235,15,2,NULL),(1514,296,50,2,NULL),(1515,299,15,2,NULL),(1516,297,50,2,NULL),(1517,25,26,2,NULL),(1518,69,78,2,NULL),(1519,99,26,2,NULL),(1520,233,50,2,NULL),(1521,35,22,2,NULL),(1522,235,50,2,NULL),(1523,37,22,2,NULL),(1524,299,50,2,NULL),(1525,45,22,2,NULL),(1526,69,80,2,NULL),(1527,46,22,2,NULL),(1528,69,81,2,NULL),(1529,47,22,2,NULL),(1530,89,1,2,NULL),(1531,27,22,2,NULL),(1532,94,1,2,NULL),(1533,28,22,2,NULL),(1534,97,1,2,NULL),(1535,38,22,2,NULL),(1536,101,1,2,NULL),(1537,40,22,2,NULL),(1538,107,1,2,NULL),(1539,89,22,2,NULL),(1540,109,1,2,NULL),(1541,94,22,2,NULL),(1542,110,1,2,NULL),(1543,97,22,2,NULL),(1544,112,1,2,NULL),(1545,101,22,2,NULL),(1546,114,1,2,NULL),(1547,107,22,2,NULL),(1548,118,1,2,NULL),(1549,109,22,2,NULL),(1550,120,1,2,NULL),(1551,110,22,2,NULL),(1552,122,1,2,NULL),(1553,112,22,2,NULL),(1554,158,1,2,NULL),(1555,114,22,2,NULL),(1556,161,1,2,NULL),(1557,118,22,2,NULL),(1558,162,1,2,NULL),(1559,120,22,2,NULL),(1560,166,1,2,NULL),(1561,122,22,2,NULL),(1562,182,1,2,NULL),(1563,158,22,2,NULL),(1564,183,1,2,NULL),(1565,161,22,2,NULL),(1566,187,1,2,NULL),(1567,162,22,2,NULL),(1568,190,1,2,NULL),(1569,166,22,2,NULL),(1570,192,1,2,NULL),(1571,182,22,2,NULL),(1572,196,1,2,NULL),(1573,183,22,2,NULL),(1574,198,1,2,NULL),(1575,187,22,2,NULL),(1576,201,1,2,NULL),(1577,190,22,2,NULL),(1578,89,3,2,NULL),(1579,192,22,2,NULL),(1580,94,3,2,NULL),(1581,196,22,2,NULL),(1582,97,3,2,NULL),(1583,198,22,2,NULL),(1584,101,3,2,NULL),(1585,201,22,2,NULL),(1586,107,3,2,NULL),(1587,136,22,2,NULL),(1588,109,3,2,NULL),(1589,144,22,2,NULL),(1590,110,3,2,NULL),(1591,291,22,2,NULL),(1592,112,3,2,NULL),(1593,294,22,2,NULL),(1594,114,3,2,NULL),(1595,296,22,2,NULL),(1596,118,3,2,NULL),(1597,297,22,2,NULL),(1598,120,3,2,NULL),(1599,233,22,2,NULL),(1600,122,3,2,NULL),(1601,235,22,2,NULL),(1602,158,3,2,NULL),(1603,299,22,2,NULL),(1604,161,3,2,NULL),(1605,23,15,2,NULL),(1606,162,3,2,NULL),(1607,29,15,2,NULL),(1608,166,3,2,NULL),(1609,31,15,2,NULL),(1610,182,3,2,NULL),(1611,77,15,2,NULL),(1612,183,3,2,NULL),(1613,91,15,2,NULL),(1614,187,3,2,NULL),(1615,27,1,2,NULL),(1616,190,3,2,NULL),(1617,28,1,2,NULL),(1618,192,3,2,NULL),(1619,38,1,2,NULL),(1620,196,3,2,NULL),(1621,40,1,2,NULL),(1622,198,3,2,NULL),(1623,27,3,2,NULL),(1624,201,3,2,NULL),(1625,28,3,2,NULL),(1626,89,4,2,NULL),(1627,38,3,2,NULL),(1628,94,4,2,NULL),(1629,40,3,2,NULL),(1630,97,4,2,NULL),(1631,27,4,2,NULL),(1632,101,4,2,NULL),(1633,28,4,2,NULL),(1634,107,4,2,NULL),(1635,38,4,2,NULL),(1636,109,4,2,NULL),(1637,40,4,2,NULL),(1638,110,4,2,NULL),(1639,27,5,2,NULL),(1640,112,4,2,NULL),(1641,28,5,2,NULL),(1642,114,4,2,NULL),(1643,38,5,2,NULL),(1644,118,4,2,NULL),(1645,40,5,2,NULL),(1646,120,4,2,NULL),(1647,27,7,2,NULL),(1648,122,4,2,NULL),(1649,28,7,2,NULL),(1650,158,4,2,NULL),(1651,38,7,2,NULL),(1652,161,4,2,NULL),(1653,40,7,2,NULL),(1654,162,4,2,NULL),(1655,27,10,2,NULL),(1656,166,4,2,NULL),(1657,28,10,2,NULL),(1658,182,4,2,NULL),(1659,38,10,2,NULL),(1660,183,4,2,NULL),(1661,40,10,2,NULL),(1662,187,4,2,NULL),(1663,190,4,2,NULL),(1664,27,39,2,NULL),(1665,192,4,2,NULL),(1666,28,39,2,NULL),(1667,196,4,2,NULL),(1668,38,39,2,NULL),(1669,198,4,2,NULL),(1670,40,39,2,NULL),(1671,201,4,2,NULL),(1672,27,29,2,NULL),(1673,89,5,2,NULL),(1674,28,29,2,NULL),(1675,94,5,2,NULL),(1676,38,29,2,NULL),(1677,97,5,2,NULL),(1678,40,29,2,NULL),(1679,101,5,2,NULL),(1680,27,42,2,NULL),(1681,107,5,2,NULL),(1682,28,42,2,NULL),(1683,109,5,2,NULL),(1684,38,42,2,NULL),(1685,110,5,2,NULL),(1686,40,42,2,NULL),(1687,112,5,2,NULL),(1688,27,60,2,NULL),(1689,114,5,2,NULL),(1690,28,60,2,NULL),(1691,118,5,2,NULL),(1692,38,60,2,NULL),(1693,120,5,2,NULL),(1694,40,60,2,NULL),(1695,122,5,2,NULL),(1696,27,62,2,NULL),(1697,158,5,2,NULL),(1698,28,62,2,NULL),(1699,161,5,2,NULL),(1700,38,62,2,NULL),(1701,162,5,2,NULL),(1702,40,62,2,NULL),(1703,166,5,2,NULL),(1704,27,82,2,NULL),(1705,182,5,2,NULL),(1706,28,82,2,NULL),(1707,183,5,2,NULL),(1708,38,82,2,NULL),(1709,187,5,2,NULL),(1710,40,82,2,NULL),(1711,190,5,2,NULL),(1712,27,83,2,NULL),(1713,192,5,2,NULL),(1714,28,83,2,NULL),(1715,196,5,2,NULL),(1716,38,83,2,NULL),(1717,198,5,2,NULL),(1718,40,83,2,NULL),(1719,201,5,2,NULL),(1720,27,84,2,NULL),(1721,89,7,2,NULL),(1722,28,84,2,NULL),(1723,94,7,2,NULL),(1724,38,84,2,NULL),(1725,97,7,2,NULL),(1726,40,84,2,NULL),(1727,101,7,2,NULL),(1728,27,63,2,NULL),(1729,107,7,2,NULL),(1730,28,63,2,NULL),(1731,109,7,2,NULL),(1732,38,63,2,NULL),(1733,110,7,2,NULL),(1734,40,63,2,NULL),(1735,112,7,2,NULL),(1736,27,73,2,NULL),(1737,114,7,2,NULL),(1738,28,73,2,NULL),(1739,118,7,2,NULL),(1740,38,73,2,NULL),(1741,120,7,2,NULL),(1742,40,73,2,NULL),(1743,122,7,2,NULL),(1744,27,76,2,NULL),(1745,158,7,2,NULL),(1746,28,76,2,NULL),(1747,161,7,2,NULL),(1748,38,76,2,NULL),(1749,162,7,2,NULL),(1750,40,76,2,NULL),(1751,166,7,2,NULL),(1752,27,77,2,NULL),(1753,182,7,2,NULL),(1754,28,77,2,NULL),(1755,183,7,2,NULL),(1756,38,77,2,NULL),(1757,187,7,2,NULL),(1758,40,77,2,NULL),(1759,190,7,2,NULL),(1760,27,78,2,NULL),(1761,192,7,2,NULL),(1762,28,78,2,NULL),(1763,196,7,2,NULL),(1764,38,78,2,NULL),(1765,198,7,2,NULL),(1766,40,78,2,NULL),(1767,201,7,2,NULL),(1768,27,80,2,NULL),(1769,89,10,2,NULL),(1770,28,80,2,NULL),(1771,94,10,2,NULL),(1772,38,80,2,NULL),(1773,97,10,2,NULL),(1774,40,80,2,NULL),(1775,101,10,2,NULL),(1776,27,81,2,NULL),(1777,107,10,2,NULL),(1778,28,81,2,NULL),(1779,109,10,2,NULL),(1780,38,81,2,NULL),(1781,110,10,2,NULL),(1782,40,81,2,NULL),(1783,112,10,2,NULL),(1784,44,31,2,NULL),(1785,114,10,2,NULL),(1786,35,39,2,NULL),(1787,118,10,2,NULL),(1788,37,39,2,NULL),(1789,120,10,2,NULL),(1790,45,39,2,NULL),(1791,122,10,2,NULL),(1792,46,39,2,NULL),(1793,158,10,2,NULL),(1794,47,39,2,NULL),(1795,161,10,2,NULL),(1796,89,39,2,NULL),(1797,162,10,2,NULL),(1798,94,39,2,NULL),(1799,166,10,2,NULL),(1800,97,39,2,NULL),(1801,182,10,2,NULL),(1802,101,39,2,NULL),(1803,183,10,2,NULL),(1804,107,39,2,NULL),(1805,187,10,2,NULL),(1806,109,39,2,NULL),(1807,190,10,2,NULL),(1808,110,39,2,NULL),(1809,192,10,2,NULL),(1810,112,39,2,NULL),(1811,196,10,2,NULL),(1812,114,39,2,NULL),(1813,198,10,2,NULL),(1814,118,39,2,NULL),(1815,201,10,2,NULL),(1816,120,39,2,NULL),(1817,122,39,2,NULL),(1818,158,39,2,NULL),(1819,161,39,2,NULL),(1820,162,39,2,NULL),(1821,166,39,2,NULL),(1822,182,39,2,NULL),(1823,183,39,2,NULL),(1824,187,39,2,NULL),(1825,190,39,2,NULL),(1826,192,39,2,NULL),(1827,196,39,2,NULL),(1828,198,39,2,NULL),(1829,201,39,2,NULL),(1830,136,39,2,NULL),(1831,144,39,2,NULL),(1832,291,39,2,NULL),(1833,294,39,2,NULL),(1834,89,29,2,NULL),(1835,296,39,2,NULL),(1836,94,29,2,NULL),(1837,297,39,2,NULL),(1838,97,29,2,NULL),(1839,233,39,2,NULL),(1840,101,29,2,NULL),(1841,235,39,2,NULL),(1842,107,29,2,NULL),(1843,299,39,2,NULL),(1844,109,29,2,NULL),(1845,110,29,2,NULL),(1846,112,29,2,NULL),(1847,114,29,2,NULL),(1848,118,29,2,NULL),(1849,120,29,2,NULL),(1850,122,29,2,NULL),(1851,158,29,2,NULL),(1852,161,29,2,NULL),(1853,162,29,2,NULL),(1854,166,29,2,NULL),(1855,182,29,2,NULL),(1856,183,29,2,NULL),(1857,187,29,2,NULL),(1858,190,29,2,NULL),(1859,192,29,2,NULL),(1860,196,29,2,NULL),(1861,198,29,2,NULL),(1862,201,29,2,NULL),(1863,89,42,2,NULL),(1864,94,42,2,NULL),(1865,97,42,2,NULL),(1866,101,42,2,NULL),(1867,107,42,2,NULL),(1868,109,42,2,NULL),(1869,110,42,2,NULL),(1870,112,42,2,NULL),(1871,114,42,2,NULL),(1872,118,42,2,NULL),(1873,120,42,2,NULL),(1874,122,42,2,NULL),(1875,158,42,2,NULL),(1876,161,42,2,NULL),(1877,162,42,2,NULL),(1878,166,42,2,NULL),(1879,182,42,2,NULL),(1880,183,42,2,NULL),(1881,187,42,2,NULL),(1882,190,42,2,NULL),(1883,192,42,2,NULL),(1884,196,42,2,NULL),(1885,198,42,2,NULL),(1886,201,42,2,NULL),(1887,89,60,2,NULL),(1888,94,60,2,NULL),(1889,97,60,2,NULL),(1890,101,60,2,NULL),(1891,107,60,2,NULL),(1892,109,60,2,NULL),(1893,110,60,2,NULL),(1894,112,60,2,NULL),(1895,114,60,2,NULL),(1896,118,60,2,NULL),(1897,120,60,2,NULL),(1898,122,60,2,NULL),(1899,158,60,2,NULL),(1900,161,60,2,NULL),(1901,162,60,2,NULL),(1902,166,60,2,NULL),(1903,182,60,2,NULL),(1904,183,60,2,NULL),(1905,187,60,2,NULL),(1906,190,60,2,NULL),(1907,192,60,2,NULL),(1908,196,60,2,NULL),(1909,198,60,2,NULL),(1910,201,60,2,NULL),(1911,89,62,2,NULL),(1912,94,62,2,NULL),(1913,97,62,2,NULL),(1914,101,62,2,NULL),(1915,107,62,2,NULL),(1916,109,62,2,NULL),(1917,110,62,2,NULL),(1918,112,62,2,NULL),(1919,114,62,2,NULL),(1920,118,62,2,NULL),(1921,120,62,2,NULL),(1922,122,62,2,NULL),(1923,158,62,2,NULL),(1924,161,62,2,NULL),(1925,162,62,2,NULL),(1926,166,62,2,NULL),(1927,182,62,2,NULL),(1928,183,62,2,NULL),(1929,187,62,2,NULL),(1930,190,62,2,NULL),(1931,192,62,2,NULL),(1932,196,62,2,NULL),(1933,198,62,2,NULL),(1934,201,62,2,NULL),(1935,89,82,2,NULL),(1936,94,82,2,NULL),(1937,97,82,2,NULL),(1938,101,82,2,NULL),(1939,107,82,2,NULL),(1940,109,82,2,NULL),(1941,110,82,2,NULL),(1942,112,82,2,NULL),(1943,114,82,2,NULL),(1944,118,82,2,NULL),(1945,120,82,2,NULL),(1946,122,82,2,NULL),(1947,158,82,2,NULL),(1948,161,82,2,NULL),(1949,162,82,2,NULL),(1950,166,82,2,NULL),(1951,182,82,2,NULL),(1952,183,82,2,NULL),(1953,187,82,2,NULL),(1954,190,82,2,NULL),(1955,192,82,2,NULL),(1956,196,82,2,NULL),(1957,198,82,2,NULL),(1958,201,82,2,NULL),(1959,89,83,2,NULL),(1960,94,83,2,NULL),(1961,97,83,2,NULL),(1962,101,83,2,NULL),(1963,107,83,2,NULL),(1964,109,83,2,NULL),(1965,110,83,2,NULL),(1966,112,83,2,NULL),(1967,114,83,2,NULL),(1968,118,83,2,NULL),(1969,120,83,2,NULL),(1970,122,83,2,NULL),(1971,158,83,2,NULL),(1972,161,83,2,NULL),(1973,162,83,2,NULL),(1974,166,83,2,NULL),(1975,182,83,2,NULL),(1976,183,83,2,NULL),(1977,187,83,2,NULL),(1978,190,83,2,NULL),(1979,192,83,2,NULL),(1980,196,83,2,NULL),(1981,198,83,2,NULL),(1982,201,83,2,NULL),(1983,89,84,2,NULL),(1984,94,84,2,NULL),(1985,97,84,2,NULL),(1986,101,84,2,NULL),(1987,107,84,2,NULL),(1988,109,84,2,NULL),(1989,110,84,2,NULL),(1990,112,84,2,NULL),(1991,114,84,2,NULL),(1992,118,84,2,NULL),(1993,120,84,2,NULL),(1994,122,84,2,NULL),(1995,158,84,2,NULL),(1996,161,84,2,NULL),(1997,162,84,2,NULL),(1998,166,84,2,NULL),(1999,182,84,2,NULL),(2000,183,84,2,NULL),(2001,187,84,2,NULL),(2002,190,84,2,NULL),(2003,192,84,2,NULL),(2004,196,84,2,NULL),(2005,198,84,2,NULL),(2006,201,84,2,NULL),(2007,89,63,2,NULL),(2008,94,63,2,NULL),(2009,97,63,2,NULL),(2010,101,63,2,NULL),(2011,107,63,2,NULL),(2012,109,63,2,NULL),(2013,110,63,2,NULL),(2014,112,63,2,NULL),(2015,114,63,2,NULL),(2016,118,63,2,NULL),(2017,120,63,2,NULL),(2018,122,63,2,NULL),(2019,158,63,2,NULL),(2020,161,63,2,NULL),(2021,162,63,2,NULL),(2022,166,63,2,NULL),(2023,182,63,2,NULL),(2024,183,63,2,NULL),(2025,187,63,2,NULL),(2026,190,63,2,NULL),(2027,192,63,2,NULL),(2028,196,63,2,NULL),(2029,198,63,2,NULL),(2030,201,63,2,NULL),(2031,89,73,2,NULL),(2032,94,73,2,NULL),(2033,97,73,2,NULL),(2034,101,73,2,NULL),(2035,107,73,2,NULL),(2036,109,73,2,NULL),(2037,110,73,2,NULL),(2038,112,73,2,NULL),(2039,114,73,2,NULL),(2040,118,73,2,NULL),(2041,120,73,2,NULL),(2042,122,73,2,NULL),(2043,158,73,2,NULL),(2044,161,73,2,NULL),(2045,162,73,2,NULL),(2046,166,73,2,NULL),(2047,182,73,2,NULL),(2048,183,73,2,NULL),(2049,187,73,2,NULL),(2050,190,73,2,NULL),(2051,192,73,2,NULL),(2052,196,73,2,NULL),(2053,198,73,2,NULL),(2054,201,73,2,NULL),(2055,89,76,2,NULL),(2056,94,76,2,NULL),(2057,97,76,2,NULL),(2058,101,76,2,NULL),(2059,107,76,2,NULL),(2060,109,76,2,NULL),(2061,110,76,2,NULL),(2062,112,76,2,NULL),(2063,114,76,2,NULL),(2064,118,76,2,NULL),(2065,120,76,2,NULL),(2066,122,76,2,NULL),(2067,158,76,2,NULL),(2068,161,76,2,NULL),(2069,162,76,2,NULL),(2070,166,76,2,NULL),(2071,182,76,2,NULL),(2072,183,76,2,NULL),(2073,187,76,2,NULL),(2074,190,76,2,NULL),(2075,192,76,2,NULL),(2076,196,76,2,NULL),(2077,198,76,2,NULL),(2078,201,76,2,NULL),(2079,89,77,2,NULL),(2080,94,77,2,NULL),(2081,97,77,2,NULL),(2082,101,77,2,NULL),(2083,107,77,2,NULL),(2084,109,77,2,NULL),(2085,110,77,2,NULL),(2086,112,77,2,NULL),(2087,114,77,2,NULL),(2088,118,77,2,NULL),(2089,120,77,2,NULL),(2090,122,77,2,NULL),(2091,158,77,2,NULL),(2092,161,77,2,NULL),(2093,162,77,2,NULL),(2094,166,77,2,NULL),(2095,182,77,2,NULL),(2096,183,77,2,NULL),(2097,187,77,2,NULL),(2098,190,77,2,NULL),(2099,192,77,2,NULL),(2100,196,77,2,NULL),(2101,198,77,2,NULL),(2102,201,77,2,NULL),(2103,89,78,2,NULL),(2104,94,78,2,NULL),(2105,97,78,2,NULL),(2106,101,78,2,NULL),(2107,107,78,2,NULL),(2108,109,78,2,NULL),(2109,110,78,2,NULL),(2110,112,78,2,NULL),(2111,114,78,2,NULL),(2112,118,78,2,NULL),(2113,120,78,2,NULL),(2114,122,78,2,NULL),(2115,158,78,2,NULL),(2116,161,78,2,NULL),(2117,162,78,2,NULL),(2118,166,78,2,NULL),(2119,182,78,2,NULL),(2120,183,78,2,NULL),(2121,187,78,2,NULL),(2122,190,78,2,NULL),(2123,192,78,2,NULL),(2124,196,78,2,NULL),(2125,198,78,2,NULL),(2126,201,78,2,NULL),(2127,89,80,2,NULL),(2128,94,80,2,NULL),(2129,97,80,2,NULL),(2130,101,80,2,NULL),(2131,107,80,2,NULL),(2132,109,80,2,NULL),(2133,110,80,2,NULL),(2134,112,80,2,NULL),(2135,114,80,2,NULL),(2136,118,80,2,NULL),(2137,120,80,2,NULL),(2138,122,80,2,NULL),(2139,158,80,2,NULL),(2140,161,80,2,NULL),(2141,162,80,2,NULL),(2142,166,80,2,NULL),(2143,182,80,2,NULL),(2144,183,80,2,NULL),(2145,187,80,2,NULL),(2146,190,80,2,NULL),(2147,192,80,2,NULL),(2148,196,80,2,NULL),(2149,198,80,2,NULL),(2150,201,80,2,NULL),(2151,89,81,2,NULL),(2152,94,81,2,NULL),(2153,97,81,2,NULL),(2154,101,81,2,NULL),(2155,107,81,2,NULL),(2156,109,81,2,NULL),(2157,110,81,2,NULL),(2158,112,81,2,NULL),(2159,114,81,2,NULL),(2160,118,81,2,NULL),(2161,120,81,2,NULL),(2162,122,81,2,NULL),(2163,158,81,2,NULL),(2164,161,81,2,NULL),(2165,162,81,2,NULL),(2166,166,81,2,NULL),(2167,182,81,2,NULL),(2168,183,81,2,NULL),(2169,187,81,2,NULL),(2170,190,81,2,NULL),(2171,192,81,2,NULL),(2172,196,81,2,NULL),(2173,198,81,2,NULL),(2174,201,81,2,NULL),(2175,136,1,2,NULL),(2176,144,1,2,NULL),(2177,136,3,2,NULL),(2178,144,3,2,NULL),(2179,136,4,2,NULL),(2180,144,4,2,NULL),(2181,136,5,2,NULL),(2182,144,5,2,NULL),(2183,136,7,2,NULL),(2184,144,7,2,NULL),(2185,136,10,2,NULL),(2186,144,10,2,NULL),(2187,136,29,2,NULL),(2188,144,29,2,NULL),(2189,136,42,2,NULL),(2190,144,42,2,NULL),(2191,136,60,2,NULL),(2192,144,60,2,NULL),(2193,136,62,2,NULL),(2194,144,62,2,NULL),(2195,136,82,2,NULL),(2196,144,82,2,NULL),(2197,136,83,2,NULL),(2198,144,83,2,NULL),(2199,136,84,2,NULL),(2200,144,84,2,NULL),(2201,136,63,2,NULL),(2202,144,63,2,NULL),(2203,136,73,2,NULL),(2204,144,73,2,NULL),(2205,136,76,2,NULL),(2206,144,76,2,NULL),(2207,136,77,2,NULL),(2208,144,77,2,NULL),(2209,136,78,2,NULL),(2210,144,78,2,NULL),(2211,136,80,2,NULL),(2212,144,80,2,NULL),(2213,136,81,2,NULL),(2214,144,81,2,NULL),(2215,61,50,2,NULL),(2216,35,60,2,NULL),(2217,37,60,2,NULL),(2218,45,60,2,NULL),(2219,46,60,2,NULL),(2220,47,60,2,NULL),(2221,291,60,2,NULL),(2222,294,60,2,NULL),(2223,296,60,2,NULL),(2224,297,60,2,NULL),(2225,233,60,2,NULL),(2226,235,60,2,NULL),(2227,299,60,2,NULL),(2228,35,62,2,NULL),(2229,37,62,2,NULL),(2230,45,62,2,NULL),(2231,46,62,2,NULL),(2232,47,62,2,NULL),(2233,291,62,2,NULL),(2234,294,62,2,NULL),(2235,296,62,2,NULL),(2236,297,62,2,NULL),(2237,233,62,2,NULL),(2238,235,62,2,NULL),(2239,299,62,2,NULL),(2240,35,82,2,NULL),(2241,37,82,2,NULL),(2242,45,82,2,NULL),(2243,46,82,2,NULL),(2244,47,82,2,NULL),(2245,291,82,2,NULL),(2246,294,82,2,NULL),(2247,296,82,2,NULL),(2248,297,82,2,NULL),(2249,233,82,2,NULL),(2250,235,82,2,NULL),(2251,299,82,2,NULL),(2252,35,83,2,NULL),(2253,37,83,2,NULL),(2254,45,83,2,NULL),(2255,46,83,2,NULL),(2256,47,83,2,NULL),(2257,291,83,2,NULL),(2258,294,83,2,NULL),(2259,296,83,2,NULL),(2260,297,83,2,NULL),(2261,233,83,2,NULL),(2262,235,83,2,NULL),(2263,299,83,2,NULL),(2264,35,84,2,NULL),(2265,37,84,2,NULL),(2266,45,84,2,NULL),(2267,46,84,2,NULL),(2268,47,84,2,NULL),(2269,291,84,2,NULL),(2270,294,84,2,NULL),(2271,296,84,2,NULL),(2272,297,84,2,NULL),(2273,233,84,2,NULL),(2274,235,84,2,NULL),(2275,299,84,2,NULL),(2276,16,7,2,NULL),(2277,18,7,2,NULL),(2278,55,2,2,NULL),(2279,84,7,2,NULL),(2280,35,1,2,NULL),(2281,37,1,2,NULL),(2282,45,1,2,NULL),(2283,46,1,2,NULL),(2284,47,1,2,NULL),(2285,291,1,2,NULL),(2286,294,1,2,NULL),(2287,296,1,2,NULL),(2288,297,1,2,NULL),(2289,233,1,2,NULL),(2290,235,1,2,NULL),(2291,299,1,2,NULL),(2292,2,1,2,NULL),(2293,7,1,2,NULL),(2294,24,7,2,NULL),(2295,34,1,2,NULL),(2296,39,7,2,NULL),(2297,43,1,2,NULL),(2298,35,3,2,NULL),(2299,37,3,2,NULL),(2300,45,3,2,NULL),(2301,46,3,2,NULL),(2302,47,3,2,NULL),(2303,291,3,2,NULL),(2304,294,3,2,NULL),(2305,296,3,2,NULL),(2306,297,3,2,NULL),(2307,233,3,2,NULL),(2308,235,3,2,NULL),(2309,299,3,2,NULL),(2310,1,3,2,NULL),(2311,35,5,2,NULL),(2312,37,5,2,NULL),(2313,45,4,2,NULL),(2314,46,4,2,NULL),(2315,47,4,2,NULL),(2316,35,7,2,NULL),(2317,37,7,2,NULL),(2318,35,10,2,NULL),(2319,37,10,2,NULL),(2320,35,29,2,NULL),(2321,37,29,2,NULL),(2322,35,42,2,NULL),(2323,37,42,2,NULL),(2324,35,63,2,NULL),(2325,37,63,2,NULL),(2326,291,4,2,NULL),(2327,294,4,2,NULL),(2328,35,73,2,NULL),(2329,37,73,2,NULL),(2330,35,76,2,NULL),(2331,37,76,2,NULL),(2332,35,77,2,NULL),(2333,37,77,2,NULL),(2334,296,4,2,NULL),(2335,297,4,2,NULL),(2336,35,78,2,NULL),(2337,37,78,2,NULL),(2338,233,4,2,NULL),(2339,235,4,2,NULL),(2340,299,4,2,NULL),(2341,35,80,2,NULL),(2342,37,80,2,NULL),(2343,35,81,2,NULL),(2344,37,81,2,NULL),(2345,14,7,2,NULL),(2346,66,1,2,NULL),(2347,45,5,2,NULL),(2348,46,5,2,NULL),(2349,47,5,2,NULL),(2350,291,5,2,NULL),(2351,294,5,2,NULL),(2352,296,5,2,NULL),(2353,297,5,2,NULL),(2354,233,5,2,NULL),(2355,235,5,2,NULL),(2356,299,5,2,NULL),(2357,41,3,2,NULL),(2358,88,6,2,NULL),(2359,45,7,2,NULL),(2360,46,7,2,NULL),(2361,47,7,2,NULL),(2362,45,10,2,NULL),(2363,46,10,2,NULL),(2364,47,10,2,NULL),(2365,45,29,2,NULL),(2366,46,29,2,NULL),(2367,47,29,2,NULL),(2368,45,42,2,NULL),(2369,46,42,2,NULL),(2370,47,42,2,NULL),(2371,45,63,2,NULL),(2372,46,63,2,NULL),(2373,47,63,2,NULL),(2374,45,73,2,NULL),(2375,46,73,2,NULL),(2376,47,73,2,NULL),(2377,45,76,2,NULL),(2378,46,76,2,NULL),(2379,47,76,2,NULL),(2380,45,77,2,NULL),(2381,46,77,2,NULL),(2382,47,77,2,NULL),(2383,45,78,2,NULL),(2384,46,78,2,NULL),(2385,47,78,2,NULL),(2386,45,80,2,NULL),(2387,46,80,2,NULL),(2388,47,80,2,NULL),(2389,45,81,2,NULL),(2390,46,81,2,NULL),(2391,47,81,2,NULL),(2392,291,7,2,NULL),(2393,294,7,2,NULL),(2394,296,7,2,NULL),(2395,297,7,2,NULL),(2396,233,7,2,NULL),(2397,235,7,2,NULL),(2398,299,7,2,NULL),(2399,26,7,2,NULL),(2400,51,7,2,NULL),(2401,63,7,2,NULL),(2402,291,10,2,NULL),(2403,294,10,2,NULL),(2404,296,10,2,NULL),(2405,297,10,2,NULL),(2406,233,10,2,NULL),(2407,235,10,2,NULL),(2408,299,10,2,NULL),(2409,291,29,2,NULL),(2410,294,29,2,NULL),(2411,296,29,2,NULL),(2412,297,29,2,NULL),(2413,233,29,2,NULL),(2414,235,29,2,NULL),(2415,299,29,2,NULL),(2416,13,29,2,NULL),(2417,15,29,2,NULL),(2418,291,42,2,NULL),(2419,294,42,2,NULL),(2420,296,42,2,NULL),(2421,297,42,2,NULL),(2422,233,42,2,NULL),(2423,235,42,2,NULL),(2424,299,42,2,NULL),(2425,291,63,2,NULL),(2426,294,63,2,NULL),(2427,296,63,2,NULL),(2428,297,63,2,NULL),(2429,233,63,2,NULL),(2430,235,63,2,NULL),(2431,299,63,2,NULL),(2432,291,73,2,NULL),(2433,294,73,2,NULL),(2434,291,76,2,NULL),(2435,294,76,2,NULL),(2436,291,77,2,NULL),(2437,294,77,2,NULL),(2438,291,78,2,NULL),(2439,294,78,2,NULL),(2440,291,80,2,NULL),(2441,294,80,2,NULL),(2442,291,81,2,NULL),(2443,294,81,2,NULL),(2444,165,75,2,NULL),(2445,179,80,2,NULL),(2446,231,80,2,NULL),(2447,272,63,2,NULL),(2448,296,73,2,NULL),(2449,297,73,2,NULL),(2450,233,73,2,NULL),(2451,235,73,2,NULL),(2452,299,73,2,NULL),(2453,295,63,2,NULL),(2454,216,80,2,NULL),(2455,288,80,2,NULL),(2456,296,76,2,NULL),(2457,297,76,2,NULL),(2458,233,76,2,NULL),(2459,235,76,2,NULL),(2460,299,76,2,NULL),(2461,200,76,2,NULL),(2462,296,78,2,NULL),(2463,297,78,2,NULL),(2464,233,77,2,NULL),(2465,235,77,2,NULL),(2466,299,77,2,NULL),(2467,296,80,2,NULL),(2468,297,80,2,NULL),(2469,296,81,2,NULL),(2470,297,81,2,NULL),(2471,223,80,2,NULL),(2472,233,78,2,NULL),(2473,235,78,2,NULL),(2474,299,78,2,NULL),(2475,274,79,2,NULL),(2476,284,76,2,NULL),(2477,233,80,2,NULL),(2478,235,80,2,NULL),(2479,299,80,2,NULL),(2480,233,81,2,NULL),(2481,235,81,2,NULL),(2482,299,81,2,NULL),(2483,134,80,2,NULL),(2484,172,80,2,NULL),(2485,226,80,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:25
