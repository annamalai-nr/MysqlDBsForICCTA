-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_442
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
INSERT INTO `ActionStrings` VALUES (29,'(.*)'),(25,'.ImageTestActivity'),(11,'.Myhall'),(23,'.Web'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(18,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(9,'android.intent.action.DELETE'),(19,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.PACKAGE_REMOVED'),(17,'android.intent.action.SCREEN_OFF'),(26,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SENDTO'),(3,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(20,'android.media.action.IMAGE_CAPTURE'),(21,'com.android.launcher.action.INSTALL_SHORTCUT'),(2,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.ariasmyth1.GameBootReceiver'),(28,'com.ariasmyth1.ImageTestActivity'),(12,'com.ariasmyth1.Myhall'),(30,'com.ariasmyth1.Web'),(13,'com.carmodelcamp.GameBootReceiver'),(24,'com.carmodelcamp.ImageTestActivity'),(27,'com.carmodelcamp.Myhall'),(22,'com.carmodelcamp.Web'),(16,'gse.emoev.utfbnbqao.UTfelpdQf12');
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
INSERT INTO `Applications` VALUES (1,'com.ariasmyth1',1010),(2,'com.carmodelcamp',1015),(3,'vhb.jdsmtfelivi',10034),(4,'gse.emoev.utfbnbqao',1),(5,'com.hquoaehi.bcjhtmcwb',10025),(6,'baltorogames.nquaijhep',106),(7,'com.gvrehtiqt.kebm',10023);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'vhb.jdsmtfelivi.opening.SATBOXActivity'),(2,2,'com.carmodelcamp.Myhall'),(3,1,'com.ariasmyth1.Myhall'),(4,3,'vhb.jdsmtfelivi.opening.TitleActivity'),(5,2,'com.carmodelcamp.Web'),(6,1,'com.ariasmyth1.Web'),(7,3,'vhb.jdsmtfelivi.GameActivity'),(8,2,'com.carmodelcamp.HomeActivity'),(9,1,'com.ariasmyth1.HomeActivity'),(10,3,'vhb.jdsmtfelivi.opening.StageSelect'),(11,2,'com.carmodelcamp.SortActivity1'),(12,1,'com.ariasmyth1.SortActivity1'),(13,3,'vhb.jdsmtfelivi.opening.ObjectInit'),(14,2,'com.carmodelcamp.SortActivity2'),(15,1,'com.ariasmyth1.SortActivity2'),(16,3,'vhb.jdsmtfelivi.HighScoreActivity'),(17,3,'vhb.jdsmtfelivi.NightMareHighScoreActivity'),(18,1,'com.ariasmyth1.SearchActivity'),(19,2,'com.carmodelcamp.SearchActivity'),(20,3,'vhb.jdsmtfelivi.GameRankMy'),(21,3,'com.sJnmSocoG.TJJTVqJuuJjJgH'),(22,1,'com.ariasmyth1.ManagerActivity'),(23,2,'com.carmodelcamp.ManagerActivity'),(24,4,'gse.emoev.utfbnbqao.WhitesOut'),(25,1,'com.ariasmyth1.GameInfo'),(26,2,'com.carmodelcamp.GameInfo'),(27,3,'com.sJnmSocoG.SjVOjAkdrC'),(28,4,'ljq.GnEhGb.MyActivity'),(29,3,'com.sJnmSocoG.fOeaLOMR'),(30,1,'com.ariasmyth1.TableClass'),(31,2,'com.carmodelcamp.TableClass'),(32,3,'com.sJnmSocoG.kdcBhbJWJ'),(33,4,'ljq.GnEhGb.ApopMain'),(34,3,'com.sJnmSocoG.BpUBmcqB'),(35,1,'com.ariasmyth1.GameAlertDialog'),(36,2,'com.carmodelcamp.GameAlertDialog'),(37,4,'ljq.GnEhGb.UTfelpdQf16'),(38,3,'com.sJnmSocoG.iQGMdWhluiUGs'),(39,1,'com.ariasmyth1.DevelopmentSettings'),(40,2,'com.carmodelcamp.DevelopmentSettings'),(41,4,'ljq.GnEhGb.UTfelpdQf8'),(42,3,'com.sJnmSocoG.userPermissionReceiver'),(43,5,'com.hquoaehi.bcjhtmcwb.MetroQuiz'),(44,4,'ljq.GnEhGb.UTfelpdQf9'),(45,2,'com.carmodelcamp.qimg.ImageTestActivity'),(46,1,'com.ariasmyth1.mythimg.ImageTestActivity'),(47,5,'com.hquoaehi.bcjhtmcwb.QuestionActivity'),(48,5,'com.hquoaehi.bcjhtmcwb.PaperActivity'),(49,4,'ljq.GnEhGb.UTfelpdQf2'),(50,2,'com.carmodelcamp.qimg.ADactivity'),(51,5,'com.hquoaehi.bcjhtmcwb.PreferencesActivity'),(52,1,'com.ariasmyth1.image.ADactivity'),(53,6,'baltorogames.nquaijhep.Kartmania3D'),(54,2,'com.carmodelcamp.GameService'),(55,5,'com.hquoaehi.bcjhtmcwb.ScorePut'),(56,1,'com.ariasmyth1.GameService'),(57,4,'ljq.GnEhGb.UTfelpdQf10'),(58,6,'com.mQFmtwN.ErPJpRCtE'),(59,5,'com.hquoaehi.bcjhtmcwb.ScoreList'),(60,4,'ljq.GnEhGb.UTfelpdQf11'),(61,6,'com.mQFmtwN.PlKbBJSE'),(62,5,'net.youmi.android.AdActivity'),(63,2,'com.carmodelcamp.GameBootReceiver'),(64,1,'com.ariasmyth1.GameBootReceiver'),(65,5,'com.KtCMewd.MgrDKMpbq'),(66,5,'com.KtCMewd.VkTObNuMpK'),(67,4,'ljq.GnEhGb.UTfelpdQf12'),(68,6,'com.nd.dianjin.activity.OfferAppActivity'),(69,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(70,5,'com.nd.dianjin.activity.OfferAppActivity'),(71,5,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(72,7,'com.gamevisa8.fish.MainActivity'),(73,7,'com.gamevisa8.fish.Ranking'),(74,7,'com.gvrehtiqt.kebm.EditProfile'),(75,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(76,7,'com.google.ads.AdActivity'),(77,7,'com.PdAJIjDNK.VemfFBVA'),(78,7,'com.PdAJIjDNK.wwltBMCp'),(79,7,'com.nd.dianjin.activity.OfferAppActivity'),(80,7,'com.gamevisa8.fish.Widget'),(81,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(82,6,'com.nd.dianjin.DianJinPlatform'),(83,4,'ljq.GnEhGb.am'),(84,4,'ljq.GnEhGb.ClickableToast'),(85,4,'ljq.GnEhGb.al'),(86,5,'net.youmi.android.t'),(87,4,'ljq.GnEhGb.ag'),(88,2,'ch'),(89,1,'o'),(90,2,'cz'),(91,1,'dc'),(92,3,'com.sJnmSocoG.m'),(93,5,'com.hquoaehi.bcjhtmcwb.QuestionActivity$2'),(94,3,'vhb.jdsmtfelivi.e'),(95,2,'dc'),(96,2,'cx'),(97,5,'net.youmi.android.bd'),(98,2,'bc'),(99,3,'vhb.jdsmtfelivi.g'),(100,1,'dq'),(101,4,'ljq.GnEhGb.af'),(102,2,'e'),(103,3,'vhb.jdsmtfelivi.ad'),(104,3,'vhb.jdsmtfelivi.m'),(105,3,'mediba.ad.sdk.android.ac'),(106,4,'ljq.GnEhGb.br'),(107,7,'com.mobclix.android.sdk.MobclixCreative$Action'),(108,3,'vhb.jdsmtfelivi.i'),(109,5,'com.nd.dianjin.DianJinPlatform'),(110,7,'com.mobclix.android.sdk.Mobclix$2'),(111,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(112,2,'v'),(113,1,'m'),(114,2,'bl'),(115,3,'vhb.jdsmtfelivi.opening.j'),(116,4,'ljq.GnEhGb.bo'),(117,3,'vhb.jdsmtfelivi.af'),(118,4,'ljq.GnEhGb.ae'),(119,1,'bo'),(120,2,'do'),(121,7,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(122,3,'vhb.jdsmtfelivi.ac'),(123,1,'bw'),(124,3,'vhb.jdsmtfelivi.util.BaseActivity'),(125,2,'ai'),(126,1,'n'),(127,3,'vhb.jdsmtfelivi.h'),(128,7,'com.gamevisa8.fish.Ranking$2'),(129,3,'vhb.jdsmtfelivi.f'),(130,7,'com.nd.dianjin.DianJinPlatform'),(131,7,'com.gamevisa8.fish.MainActivity$9'),(132,3,'vhb.jdsmtfelivi.d'),(133,7,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(134,7,'com.gamevisa8.fish.MainActivity$5'),(135,7,'com.gamevisa8.fish.MainActivity$7'),(136,3,'com.sJnmSocoG.ad'),(137,3,'com.sJnmSocoG.n'),(138,2,'dl'),(139,1,'do'),(140,1,'ce'),(141,1,'dy');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,57,'title'),(2,57,'btn_txt'),(3,41,'fromtype'),(4,57,'apk_url'),(5,24,'MoveCount'),(6,15,'nextclassid'),(7,49,'isDirectFromTable'),(8,41,'from_alert'),(9,23,'icon'),(10,28,'soft_id'),(11,6,'service_channel'),(12,22,'completed'),(13,35,'content'),(14,23,'filepath'),(15,22,'url'),(16,23,'app_name'),(17,3,'nextclassid'),(18,26,'title'),(19,23,'soft_id'),(20,62,'D50EF1926ADD471892E72BCE6D7E032C'),(21,62,'D780FBF4215247bcBB1AC0AD33C474FE'),(22,62,'172C94EDC717477aBF600D7898A64A8E'),(23,57,'package_name'),(24,18,'package_name'),(25,22,'status'),(26,25,'from_alert'),(27,22,'app_name'),(28,22,'soft_id'),(29,38,'fileURL'),(30,23,'completed'),(31,28,'version_code'),(32,29,'apkTitle'),(33,24,'Selections'),(34,36,'popurl'),(35,41,'from_table'),(36,41,'filepath'),(37,37,'title'),(38,19,'status'),(39,14,'nextclassid'),(40,75,'com.gvrehtiqt.kebm.type'),(41,49,'from'),(42,5,'service_channel'),(43,29,'apkSize'),(44,29,'apkInfo'),(45,24,'Level'),(46,29,'iconURL'),(47,23,'package_name'),(48,23,'status'),(49,36,'service_channel'),(50,28,'service_channel'),(51,46,'service_channel'),(52,3,'service_channel'),(53,35,'title'),(54,25,'title'),(55,60,'service_channel'),(56,75,'com.gvrehtiqt.kebm.data'),(57,57,'content'),(58,36,'poptitle'),(59,26,'filepath'),(60,29,'detailFlag'),(61,56,'service_channel'),(62,62,'EB80F3291A8E469c962CA133BDC549D7'),(63,29,'apkVersion'),(64,38,'np_app_key'),(65,21,'np_app_key'),(66,29,'np_app_key'),(67,32,'np_app_key'),(68,27,'np_app_key'),(69,34,'packageName'),(70,22,'package_name'),(71,18,'status'),(72,29,'imageURL'),(73,14,'package_name'),(74,2,'nextclassid'),(75,41,'title'),(76,22,'icon'),(77,57,'fromtable'),(78,22,'total'),(79,35,'url'),(80,25,'from_table'),(81,41,'game'),(82,41,'status'),(83,7,'NightMare'),(84,57,'url'),(85,23,'url'),(86,2,'service_channel'),(87,23,'total'),(88,26,'status'),(89,72,'ADMOB_PUBLISHER_ID'),(90,73,'ADMOB_PUBLISHER_ID'),(91,57,'version_code'),(92,29,'apkURL'),(93,25,'status'),(94,22,'filepath'),(95,15,'status'),(96,14,'status'),(97,72,'UMENG_APPKEY'),(98,29,'apkSoftID'),(99,19,'package_name'),(100,73,'UMENG_APPKEY'),(101,73,'mGameID'),(102,72,'UMENG_CHANNEL'),(103,73,'UMENG_CHANNEL'),(104,37,'content'),(105,72,'com.mobclix.LOG_LEVEL'),(106,73,'com.mobclix.LOG_LEVEL'),(107,26,'from_alert'),(108,35,'btn_txt'),(109,76,'params'),(110,38,'fileName'),(111,73,'mThisGameHighScore'),(112,72,'com.mobclix.APPLICATION_ID'),(113,73,'com.mobclix.APPLICATION_ID'),(114,76,'com.google.ads.AdOpener'),(115,37,'btn_txt'),(116,25,'filepath'),(117,34,'fileURL'),(118,29,'packageName'),(119,15,'package_name'),(120,37,'url'),(121,18,'version_code'),(122,44,'service_channel'),(123,75,'imageUri'),(124,76,'action'),(125,19,'version_code'),(126,55,'service_channel'),(127,26,'from_table');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,44,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,54,'s',1,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,106,'r',1,NULL,NULL),(83,110,'r',1,NULL,NULL),(84,111,'r',1,NULL,NULL),(85,116,'r',1,NULL,NULL),(86,133,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,58),(2,2,61),(3,3,61),(4,4,45),(5,5,36),(6,6,67),(7,7,41),(8,8,28),(9,9,41),(10,10,62),(11,11,41),(12,12,23),(13,13,30),(14,14,64),(15,15,14),(16,16,57),(17,17,62),(18,17,43),(19,18,9),(20,20,41),(21,19,5),(22,21,47),(23,21,62),(24,22,21),(25,23,41),(26,24,26),(27,25,9),(28,26,47),(29,26,62),(30,27,17),(31,27,27),(32,28,44),(33,29,18),(34,30,27),(35,31,66),(36,32,28),(37,33,14),(38,34,43),(39,35,3),(40,36,4),(41,36,27),(42,38,63),(43,37,62),(44,39,4),(45,39,27),(46,40,41),(47,41,25),(48,42,21),(49,43,31),(50,44,27),(51,44,16),(52,45,3),(53,46,28),(54,47,8),(55,48,3),(56,49,27),(57,49,20),(58,50,41),(59,51,50),(60,52,3),(61,53,27),(62,53,29),(63,54,63),(64,55,30),(65,56,57),(66,57,14),(67,58,20),(68,59,64),(69,60,72),(70,61,7),(71,62,22),(72,64,67),(73,63,14),(74,65,73),(75,66,25),(76,68,23),(77,67,62),(78,67,54),(79,69,7),(80,69,4),(81,70,46),(82,71,72),(83,72,65),(84,73,27),(85,73,4),(86,74,14),(87,75,28),(88,76,72),(89,77,27),(90,77,16),(91,78,66),(92,79,19),(93,80,18),(94,81,45),(95,82,23),(96,83,9),(97,84,65),(98,85,75),(99,86,4),(100,87,35),(101,88,45),(102,88,57),(103,88,49),(104,89,37),(105,90,9),(106,91,27),(107,92,41),(108,93,26),(109,94,38),(110,95,15),(111,96,72),(112,97,2),(113,98,77),(114,100,67),(115,99,4),(116,99,27),(117,101,15),(118,102,63),(119,103,75),(120,104,21),(121,105,9),(122,106,8),(123,107,20),(124,107,27),(125,108,28),(126,109,8),(127,110,3),(128,111,32),(129,112,57),(130,113,25),(131,114,57),(132,115,50),(133,116,75),(134,117,14),(135,118,27),(136,118,20),(137,119,75),(138,120,37),(139,121,72),(140,122,22),(141,123,7),(142,123,4),(143,124,6),(144,125,34),(145,126,2),(146,127,15),(147,128,78),(148,129,5),(149,130,16),(150,130,27),(151,131,73),(152,132,35),(153,133,27),(154,134,72),(155,135,17),(156,135,27),(157,136,44),(158,137,35),(159,138,27),(160,138,4),(161,139,22),(162,140,78),(163,141,21),(164,142,8),(165,143,72),(166,144,27),(167,144,17),(168,145,37),(169,146,25),(170,147,4),(171,147,7),(172,147,27),(173,148,9),(174,149,27),(175,150,2),(176,151,30),(177,152,75),(178,153,29),(179,154,15),(180,155,72),(181,156,26),(182,157,72),(183,158,15),(184,159,2),(185,160,42),(186,162,15),(187,161,75),(188,163,8),(189,164,27),(190,164,29),(191,165,35),(192,166,8),(193,167,5),(194,168,3),(195,169,31),(196,170,3),(197,171,75),(198,172,2),(199,173,6),(200,174,26),(201,175,46),(202,176,46),(203,177,26),(204,178,19),(205,179,72),(206,180,25),(207,181,30),(208,183,50),(209,182,77),(210,184,76),(211,185,2),(212,186,6),(213,187,31),(214,188,25),(215,189,26),(216,190,31),(217,191,64),(218,192,2),(219,193,44),(220,194,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,58,'<com.mQFmtwN.ErPJpRCtE: void a(java.lang.String)>',10,'a',NULL),(2,82,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(3,61,'<com.mQFmtwN.PlKbBJSE: void a()>',3,'a',NULL),(4,44,'<ljq.GnEhGb.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(5,37,'<ljq.GnEhGb.UTfelpdQf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(6,67,'<ljq.GnEhGb.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(7,83,'<ljq.GnEhGb.am: void onClick(android.view.View)>',239,'a',NULL),(8,84,'<ljq.GnEhGb.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(9,85,'<ljq.GnEhGb.al: void onClick(android.view.View)>',242,'a',NULL),(10,86,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(11,87,'<ljq.GnEhGb.ag: void onClick(android.view.View)>',218,'a',NULL),(12,88,'<ch: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(13,89,'<o: void a(int,boolean)>',29,'a',NULL),(14,64,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(15,90,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(16,57,'<ljq.GnEhGb.UTfelpdQf10: void onClick(android.view.View)>',66,'a',NULL),(17,43,'<com.hquoaehi.bcjhtmcwb.MetroQuiz: void onClick(android.view.View)>',13,'a',NULL),(18,91,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(19,5,'<com.carmodelcamp.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(20,41,'<ljq.GnEhGb.UTfelpdQf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(21,47,'<com.hquoaehi.bcjhtmcwb.QuestionActivity: void onClick(android.view.View)>',24,'a',NULL),(22,92,'<com.sJnmSocoG.m: void run()>',8,'s',NULL),(23,83,'<ljq.GnEhGb.am: void onClick(android.view.View)>',218,'a',NULL),(24,26,'<com.carmodelcamp.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(25,9,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(26,93,'<com.hquoaehi.bcjhtmcwb.QuestionActivity$2: void onClick(android.view.View)>',14,'a',NULL),(27,94,'<vhb.jdsmtfelivi.e: void onClick(android.view.View)>',6,'a',NULL),(28,95,'<dc: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(29,18,'<com.ariasmyth1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(30,27,'<com.sJnmSocoG.SjVOjAkdrC: void b()>',55,'a',NULL),(31,66,'<com.KtCMewd.VkTObNuMpK: void a()>',3,'a',NULL),(32,28,'<ljq.GnEhGb.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(33,96,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(34,43,'<com.hquoaehi.bcjhtmcwb.MetroQuiz: void doChoose(int)>',18,'a',NULL),(35,3,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(36,4,'<vhb.jdsmtfelivi.opening.TitleActivity: void c(vhb.jdsmtfelivi.opening.TitleActivity)>',28,'a',NULL),(37,97,'<net.youmi.android.bd: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(38,63,'<com.carmodelcamp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(39,4,'<vhb.jdsmtfelivi.opening.TitleActivity: void c(vhb.jdsmtfelivi.opening.TitleActivity)>',19,'a',NULL),(40,41,'<ljq.GnEhGb.UTfelpdQf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(41,25,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(42,21,'<com.sJnmSocoG.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',28,'a',0),(43,98,'<bc: void a(int,boolean)>',29,'a',NULL),(44,99,'<vhb.jdsmtfelivi.g: void onClick(android.view.View)>',15,'a',NULL),(45,100,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(46,101,'<ljq.GnEhGb.af: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(47,102,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(48,100,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(49,103,'<vhb.jdsmtfelivi.ad: void onClick(android.view.View)>',6,'a',NULL),(50,85,'<ljq.GnEhGb.al: void onClick(android.view.View)>',221,'a',NULL),(51,50,'<com.carmodelcamp.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(52,100,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(53,29,'<com.sJnmSocoG.fOeaLOMR: void a(com.sJnmSocoG.fOeaLOMR,android.content.Context,java.lang.String)>',5,'a',NULL),(54,63,'<com.carmodelcamp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(55,30,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(56,57,'<ljq.GnEhGb.UTfelpdQf10: void onClick(android.view.View)>',53,'a',NULL),(57,90,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(58,20,'<vhb.jdsmtfelivi.GameRankMy: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(59,64,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(60,72,'<com.gamevisa8.fish.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(61,104,'<vhb.jdsmtfelivi.m: void onClick(android.content.DialogInterface,int)>',20,'a',NULL),(62,22,'<com.ariasmyth1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(63,14,'<com.carmodelcamp.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(64,67,'<ljq.GnEhGb.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(65,73,'<com.gamevisa8.fish.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(66,25,'<com.ariasmyth1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(67,55,'<com.hquoaehi.bcjhtmcwb.ScorePut: void onClick(android.view.View)>',27,'a',NULL),(68,23,'<com.carmodelcamp.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(69,105,'<mediba.ad.sdk.android.ac: void setPressed(boolean)>',9,'a',0),(70,46,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(71,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(72,65,'<com.KtCMewd.MgrDKMpbq: void a(java.lang.String)>',10,'a',NULL),(73,4,'<vhb.jdsmtfelivi.opening.TitleActivity: void c(vhb.jdsmtfelivi.opening.TitleActivity)>',34,'a',NULL),(74,14,'<com.carmodelcamp.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(75,28,'<ljq.GnEhGb.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(76,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(77,108,'<vhb.jdsmtfelivi.i: void onClick(android.view.View)>',6,'a',NULL),(78,109,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(79,19,'<com.carmodelcamp.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(80,18,'<com.ariasmyth1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(81,44,'<ljq.GnEhGb.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(82,88,'<ch: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(83,9,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(84,65,'<com.KtCMewd.MgrDKMpbq: void a()>',3,'a',NULL),(85,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(86,4,'<vhb.jdsmtfelivi.opening.TitleActivity: void onActivityResult(int,int,android.content.Intent)>',12,'a',NULL),(87,35,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(88,49,'<ljq.GnEhGb.UTfelpdQf2: void a(int,boolean)>',10,'s',NULL),(89,36,'<com.carmodelcamp.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(90,91,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(91,27,'<com.sJnmSocoG.SjVOjAkdrC: void b()>',45,'a',NULL),(92,87,'<ljq.GnEhGb.ag: void onClick(android.view.View)>',239,'a',NULL),(93,112,'<v: void onClick(android.view.View)>',205,'a',NULL),(94,38,'<com.sJnmSocoG.iQGMdWhluiUGs: void c(android.content.Context)>',74,'a',NULL),(95,113,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(96,107,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(97,114,'<bl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(98,77,'<com.PdAJIjDNK.VemfFBVA: void a(java.lang.String)>',10,'a',NULL),(99,115,'<vhb.jdsmtfelivi.opening.j: void onClick(android.view.View)>',21,'a',NULL),(100,67,'<ljq.GnEhGb.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(101,113,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(102,63,'<com.carmodelcamp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(103,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(104,21,'<com.sJnmSocoG.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',18,'a',NULL),(105,91,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(106,8,'<com.carmodelcamp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(107,117,'<vhb.jdsmtfelivi.af: void onClick(android.view.View)>',15,'a',NULL),(108,118,'<ljq.GnEhGb.ae: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(109,8,'<com.carmodelcamp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(110,3,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(111,32,'<com.sJnmSocoG.kdcBhbJWJ: void a()>',96,'r',NULL),(112,57,'<ljq.GnEhGb.UTfelpdQf10: void onClick(android.view.View)>',75,'a',NULL),(113,119,'<bo: void onClick(android.view.View)>',224,'a',NULL),(114,57,'<ljq.GnEhGb.UTfelpdQf10: void onClick(android.view.View)>',84,'a',NULL),(115,120,'<do: void onClick(android.view.View)>',6,'a',NULL),(116,121,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(117,90,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(118,122,'<vhb.jdsmtfelivi.ac: void onClick(android.view.View)>',6,'a',NULL),(119,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(120,36,'<com.carmodelcamp.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(121,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(122,123,'<bw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(123,124,'<vhb.jdsmtfelivi.util.BaseActivity: void c()>',9,'a',NULL),(124,6,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(125,34,'<com.sJnmSocoG.BpUBmcqB: void a(java.lang.String)>',10,'a',NULL),(126,125,'<ai: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(127,126,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(128,78,'<com.PdAJIjDNK.wwltBMCp: void a()>',3,'a',NULL),(129,5,'<com.carmodelcamp.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(130,127,'<vhb.jdsmtfelivi.h: void onClick(android.view.View)>',6,'a',NULL),(131,128,'<com.gamevisa8.fish.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(132,35,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(133,27,'<com.sJnmSocoG.SjVOjAkdrC: void a()>',3,'a',NULL),(134,107,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(135,129,'<vhb.jdsmtfelivi.f: void onClick(android.view.View)>',12,'a',NULL),(136,45,'<com.carmodelcamp.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(137,35,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(138,4,'<vhb.jdsmtfelivi.opening.TitleActivity: void c(vhb.jdsmtfelivi.opening.TitleActivity)>',13,'a',NULL),(139,123,'<bw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(140,130,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(141,21,'<com.sJnmSocoG.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',33,'a',NULL),(142,102,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(143,131,'<com.gamevisa8.fish.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(144,132,'<vhb.jdsmtfelivi.d: void onClick(android.view.View)>',6,'a',NULL),(145,36,'<com.carmodelcamp.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(146,25,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(147,124,'<vhb.jdsmtfelivi.util.BaseActivity: void d()>',9,'a',NULL),(148,9,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(149,27,'<com.sJnmSocoG.SjVOjAkdrC: void onBackPressed()>',5,'a',NULL),(150,2,'<com.carmodelcamp.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(151,89,'<o: void a(int,boolean)>',10,'s',NULL),(152,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',133,'p',NULL),(153,29,'<com.sJnmSocoG.fOeaLOMR: void onCreate(android.os.Bundle)>',67,'a',NULL),(154,113,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(155,134,'<com.gamevisa8.fish.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(156,26,'<com.carmodelcamp.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(157,135,'<com.gamevisa8.fish.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(158,15,'<com.ariasmyth1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(159,125,'<ai: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(160,136,'<com.sJnmSocoG.ad: void run()>',25,'s',NULL),(161,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(162,15,'<com.ariasmyth1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(163,102,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(164,137,'<com.sJnmSocoG.n: void h(android.content.Context,java.lang.String)>',10,'a',NULL),(165,35,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(166,8,'<com.carmodelcamp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(167,138,'<dl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(168,100,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(169,31,'<com.carmodelcamp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(170,139,'<do: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(171,75,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(172,125,'<ai: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(173,140,'<ce: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(174,112,'<v: void onClick(android.view.View)>',224,'a',NULL),(175,141,'<dy: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(176,46,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(177,26,'<com.carmodelcamp.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(178,19,'<com.carmodelcamp.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(179,72,'<com.gamevisa8.fish.MainActivity: void j()>',10,'a',NULL),(180,25,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(181,30,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(182,77,'<com.PdAJIjDNK.VemfFBVA: void a()>',3,'a',NULL),(183,50,'<com.carmodelcamp.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(184,76,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(185,125,'<ai: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(186,6,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(187,31,'<com.carmodelcamp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(188,119,'<bo: void onClick(android.view.View)>',205,'a',NULL),(189,26,'<com.carmodelcamp.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(190,98,'<bc: void a(int,boolean)>',10,'s',NULL),(191,64,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(192,2,'<com.carmodelcamp.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(193,45,'<com.carmodelcamp.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(194,36,'<com.carmodelcamp.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,7,1),(3,8,1),(4,9,1),(5,10,1),(6,12,1),(7,13,1),(8,14,1),(9,15,1),(10,16,8),(11,17,8),(12,18,8),(13,19,7),(14,20,8),(15,22,7),(16,21,8),(17,24,9),(18,25,8),(19,26,8),(20,27,10),(21,28,7),(22,29,7),(23,30,8),(24,31,7),(25,39,7),(26,41,7),(27,42,7),(28,43,7),(29,44,7),(30,52,11),(31,53,7),(32,55,12),(33,57,13),(34,58,7),(35,61,7),(36,67,7),(37,69,7),(38,70,7),(39,71,7),(40,74,7),(41,75,1),(42,76,7),(43,78,1),(44,79,7),(45,83,7),(46,85,10),(47,86,15),(48,87,7),(49,91,16),(50,98,7),(51,103,7),(52,107,1),(53,108,1),(54,111,1),(55,112,1),(56,115,19),(57,116,2),(58,118,2),(59,119,20),(60,120,7),(61,122,20),(62,123,1),(63,124,7),(64,125,20),(65,126,1),(66,130,7),(67,131,20),(68,132,1),(69,133,1),(70,135,7),(71,136,7),(72,138,16),(73,140,13),(74,143,19),(75,145,20),(76,147,20),(77,152,20),(78,154,21),(79,155,2),(80,156,20),(81,157,1),(82,159,1),(83,161,7),(84,162,1),(85,164,7),(86,165,1),(87,166,7),(88,167,7),(89,168,7),(90,169,9),(91,170,7),(92,171,7),(93,172,7),(94,174,7),(95,178,22),(96,179,7),(97,182,23),(98,184,7),(99,186,7),(100,188,24),(101,190,25),(102,191,1),(103,194,7),(104,195,1),(105,196,7),(106,197,7),(107,200,7),(108,201,7),(109,203,27),(110,205,11),(111,206,1),(112,207,7),(113,209,1),(114,211,7),(115,216,8),(116,217,8),(117,219,8),(118,220,7),(119,221,7),(120,222,8),(121,223,7),(122,224,7),(123,225,8),(124,226,8),(125,227,7),(126,228,8),(127,230,8),(128,232,7),(129,233,8),(130,235,8),(131,236,8),(132,237,7),(133,238,1),(134,239,8),(135,240,1),(136,241,8),(137,242,1),(138,243,7),(139,244,8),(140,246,1),(141,245,8),(142,247,25),(143,248,8),(144,250,28),(145,254,1),(146,256,7),(147,257,1),(148,258,7),(149,260,23),(150,261,29),(151,262,1),(152,263,30),(153,264,29),(154,265,1),(155,266,7),(156,268,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,2),(3,9,1),(4,10,2),(5,12,1),(6,13,2),(7,14,1),(8,15,2),(9,75,1),(10,78,2),(11,107,1),(12,108,1),(13,111,2),(14,112,2),(15,123,1),(16,126,2),(17,132,1),(18,133,2),(19,157,1),(20,159,2),(21,162,1),(22,165,2),(23,191,1),(24,195,2),(25,206,1),(26,209,2),(27,238,1),(28,240,2),(29,242,1),(30,246,2),(31,254,1),(32,257,2),(33,262,1),(34,265,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/nd/dianjin/activity/OfferAppActivity'),(2,3,'baltorogames/nquaijhep/Kartmania3D'),(3,4,'ljq/GnEhGb/UTfelpdQf8'),(4,5,'gse/emoev/utfbnbqao/WhitesOut'),(5,6,'ljq/GnEhGb/UTfelpdQf11'),(6,11,'ljq/GnEhGb/UTfelpdQf16'),(7,23,'com/ariasmyth1/Myhall'),(8,27,'com/ariasmyth1/GameService'),(9,32,'com/hquoaehi/bcjhtmcwb/QuestionActivity'),(10,34,'ljq/GnEhGb/UTfelpdQf11'),(11,35,'com/carmodelcamp/GameService'),(12,36,'com/hquoaehi/bcjhtmcwb/ScorePut'),(13,33,'com/ariasmyth1/Myhall'),(14,37,'com/sJnmSocoG/kdcBhbJWJ'),(15,38,'com/carmodelcamp/GameService'),(16,40,'com/ariasmyth1/GameInfo'),(17,45,'com/ariasmyth1/GameService'),(18,46,'vhb/jdsmtfelivi/opening/SATBOXActivity'),(19,47,'com/hquoaehi/bcjhtmcwb/MetroQuiz'),(20,48,'ljq/GnEhGb/UTfelpdQf11'),(21,49,'com/carmodelcamp/Myhall'),(22,50,'com/hquoaehi/bcjhtmcwb/QuestionActivity'),(23,51,'vhb/jdsmtfelivi/opening/StageSelect'),(24,52,'com/ariasmyth1/GameService'),(25,56,'ljq/GnEhGb/UTfelpdQf11'),(26,55,'com/ariasmyth1/GameService'),(27,54,'vhb/jdsmtfelivi/GameActivity'),(28,57,'com/carmodelcamp/GameService'),(29,59,'com/ariasmyth1/Myhall'),(30,60,'com/carmodelcamp/Myhall'),(31,62,'vhb/jdsmtfelivi/opening/TitleActivity'),(32,64,'gse/emoev/utfbnbqao/WhitesOut'),(33,63,'com/ariasmyth1/Myhall'),(34,65,'vhb/jdsmtfelivi/NightMareHighScoreActivity'),(35,66,'com/carmodelcamp/Myhall'),(36,68,'com/ariasmyth1/Myhall'),(37,72,'com/carmodelcamp/GameInfo'),(38,73,'com/ariasmyth1/Myhall'),(39,77,'com/carmodelcamp/GameService'),(40,80,'com/ariasmyth1/GameInfo'),(41,84,'vhb/jdsmtfelivi/opening/TitleActivity'),(42,82,'com/carmodelcamp/GameInfo'),(43,81,'ljq/GnEhGb/UTfelpdQf8'),(44,85,'com/ariasmyth1/GameService'),(45,88,'vhb/jdsmtfelivi/opening/TitleActivity'),(46,89,'com/ariasmyth1/GameService'),(47,90,'com/carmodelcamp/GameService'),(48,91,'ljq/GnEhGb/UTfelpdQf11'),(49,92,'com/gamevisa8/fish/EditProfile'),(50,93,'com/ariasmyth1/Myhall'),(51,94,'com/carmodelcamp/GameService'),(52,95,'com/hquoaehi/bcjhtmcwb/ScoreList'),(53,96,'com/ariasmyth1/GameService'),(54,97,'com/mobclix/android/sdk/MobclixBrowserActivity'),(55,99,'vhb/jdsmtfelivi/GameActivity'),(56,100,'com/carmodelcamp/GameInfo'),(57,101,'ljq/GnEhGb/UTfelpdQf11'),(58,102,'com/mobclix/android/sdk/MobclixBrowserActivity'),(59,105,'com/carmodelcamp/GameInfo'),(60,106,'com/ariasmyth1/GameInfo'),(61,104,'com/nd/dianjin/activity/OfferAppActivity'),(62,110,'com/hquoaehi/bcjhtmcwb/MetroQuiz'),(63,109,'com/ariasmyth1/Myhall'),(64,114,'vhb/jdsmtfelivi/GameActivity'),(65,117,'ljq/GnEhGb/UTfelpdQf11'),(66,121,'vhb/jdsmtfelivi/opening/SATBOXActivity'),(67,129,'com/ariasmyth1/Myhall'),(68,134,'com/mobclix/android/sdk/MobclixBrowserActivity'),(69,127,'com/sJnmSocoG/fOeaLOMR'),(70,137,'vhb/jdsmtfelivi/GameRankMy'),(71,138,'ljq/GnEhGb/UTfelpdQf11'),(72,139,'com/ariasmyth1/GameInfo'),(73,140,'com/carmodelcamp/GameService'),(74,142,'com/sJnmSocoG/SjVOjAkdrC'),(75,146,'com/carmodelcamp/GameInfo'),(76,144,'com/ariasmyth1/GameInfo'),(77,148,'vhb/jdsmtfelivi/HighScoreActivity'),(78,149,'gse/emoev/utfbnbqao/WhitesOut'),(79,150,'com/ariasmyth1/GameService'),(80,151,'com/carmodelcamp/Myhall'),(81,160,'com/carmodelcamp/qimg/ImageTestActivity'),(82,158,'ljq/GnEhGb/UTfelpdQf10'),(83,163,'com/carmodelcamp/Myhall'),(84,173,'com/ariasmyth1/GameService'),(85,175,'com/carmodelcamp/Myhall'),(86,177,'com/gamevisa8/fish/MainActivity'),(87,176,'com/ariasmyth1/Myhall'),(88,178,'com/carmodelcamp/GameService'),(89,180,'com/gamevisa8/fish/EditProfile'),(90,182,'com/carmodelcamp/GameService'),(91,183,'vhb/jdsmtfelivi/opening/SATBOXActivity'),(92,181,'com/ariasmyth1/GameAlertDialog'),(93,185,'vhb/jdsmtfelivi/opening/TitleActivity'),(94,188,'com/carmodelcamp/GameService'),(95,187,'com/ariasmyth1/GameInfo'),(96,189,'vhb/jdsmtfelivi/opening/StageSelect'),(97,190,'com/carmodelcamp/GameService'),(98,192,'com/nd/dianjin/activity/OfferAppActivity'),(99,193,'com/sJnmSocoG/SjVOjAkdrC'),(100,199,'com/ariasmyth1/GameService'),(101,198,'com/carmodelcamp/GameAlertDialog'),(102,202,'vhb/jdsmtfelivi/opening/SATBOXActivity'),(103,203,'com/carmodelcamp/GameService'),(104,204,'com/ariasmyth1/GameService'),(105,205,'com/carmodelcamp/GameService'),(106,210,'com/carmodelcamp/Myhall'),(107,212,'com/ariasmyth1/GameService'),(108,214,'com/sJnmSocoG/kdcBhbJWJ'),(109,213,'com/carmodelcamp/Myhall'),(110,215,'com/ariasmyth1/GameInfo'),(111,218,'com/carmodelcamp/GameInfo'),(112,229,'com/ariasmyth1/Myhall'),(113,231,'com/carmodelcamp/GameInfo'),(114,234,'com/carmodelcamp/Myhall'),(115,247,'com/ariasmyth1/GameService'),(116,249,'com/carmodelcamp/Myhall'),(117,250,'com/ariasmyth1/GameService'),(118,251,'com/carmodelcamp/GameService'),(119,253,'com/ariasmyth1/Myhall'),(120,252,'com/gamevisa8/fish/Ranking'),(121,255,'com/gamevisa8/fish/MainActivity'),(122,259,'com/carmodelcamp/Myhall'),(123,260,'com/ariasmyth1/GameService'),(124,263,'com/ariasmyth1/GameService'),(125,267,'com/carmodelcamp/Myhall'),(126,269,'com/carmodelcamp/GameService'),(127,270,'com/ariasmyth1/GameService'),(128,271,'com/carmodelcamp/GameService'),(129,272,'com/carmodelcamp/GameService'),(130,273,'com/carmodelcamp/GameInfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,19,2),(3,22,3),(4,24,4),(5,29,6),(6,28,5),(7,31,7),(8,39,8),(9,43,9),(10,42,10),(11,44,11),(12,53,12),(13,58,13),(14,61,14),(15,67,15),(16,69,16),(17,70,17),(18,71,18),(19,74,19),(20,76,20),(21,79,21),(22,83,22),(23,86,23),(24,87,24),(25,98,25),(26,103,26),(27,120,27),(28,124,28),(29,130,29),(30,135,30),(31,136,31),(32,161,32),(33,164,33),(34,166,34),(35,167,35),(36,168,36),(37,169,37),(38,170,38),(39,171,39),(40,172,40),(41,174,41),(42,179,42),(43,184,43),(44,186,44),(45,194,45),(46,196,46),(47,197,47),(48,200,48),(49,201,49),(50,207,51),(51,211,52),(52,221,53),(53,220,54),(54,223,55),(55,224,56),(56,227,57),(57,232,58),(58,237,59),(59,243,60),(60,256,61),(61,258,62),(62,261,63),(63,264,64),(64,266,65),(65,268,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'oriention'),(2,4,'game'),(3,4,'fromtype'),(4,11,'popurl'),(5,11,'poptitle'),(6,16,'android.intent.extra.INTENT'),(7,17,'android.intent.extra.INTENT'),(8,18,'android.intent.extra.TITLE'),(9,18,'android.intent.extra.INTENT'),(10,20,'android.intent.extra.INTENT'),(11,21,'android.intent.extra.TITLE'),(12,21,'android.intent.extra.INTENT'),(13,25,'android.intent.extra.INTENT'),(14,26,'android.intent.extra.TITLE'),(15,26,'android.intent.extra.INTENT'),(16,30,'android.intent.extra.TITLE'),(17,30,'android.intent.extra.INTENT'),(18,33,'title'),(19,33,'nextclassid'),(20,33,'clicked'),(21,41,'sms_body'),(22,49,'title'),(23,49,'nextclassid'),(24,49,'clicked'),(25,51,'Stage'),(26,54,'NightMare'),(27,63,'clicked'),(28,66,'title'),(29,66,'nextclassid'),(30,66,'clicked'),(31,68,'clicked'),(32,73,'clicked'),(33,81,'id'),(34,81,'from_alert'),(35,82,'title'),(36,81,'detail_flag'),(37,86,'android.intent.extra.SUBJECT'),(38,92,'mGameID'),(39,92,'nick'),(40,99,'NightMare'),(41,100,'title'),(42,104,'oriention'),(43,109,'nextclassid'),(44,109,'clicked'),(45,114,'NightMare'),(46,114,'Stage'),(47,119,'output'),(48,122,'output'),(49,122,'android.intent.extra.videoQuality'),(50,127,'apkVersion'),(51,129,'title'),(52,127,'apkURL'),(53,129,'nextclassid'),(54,127,'apkInfo'),(55,129,'clicked'),(56,127,'packageName'),(57,127,'apkSoftID'),(58,127,'apkTitle'),(59,127,'iconURL'),(60,127,'apkSize'),(61,127,'imageURL'),(62,139,'title'),(63,144,'title'),(64,145,'output'),(65,147,'output'),(66,147,'android.intent.extra.videoQuality'),(67,151,'nextclassid'),(68,151,'clicked'),(69,154,'apkURL'),(70,154,'duplicate'),(71,154,'packageName'),(72,154,'android.intent.extra.shortcut.NAME'),(73,158,'title'),(74,154,'apkSoftID'),(75,158,'btn_txt'),(76,154,'apkTitle'),(77,154,'apkVersion'),(78,158,'need_adb_flag'),(79,158,'cont'),(80,154,'apkInfo'),(81,158,'close_flag'),(82,154,'android.intent.extra.shortcut.ICON'),(83,154,'iconURL'),(84,154,'apkSize'),(85,154,'imageURL'),(86,163,'title'),(87,154,'android.intent.extra.shortcut.INTENT'),(88,163,'nextclassid'),(89,163,'clicked'),(90,175,'clicked'),(91,176,'title'),(92,176,'nextclassid'),(93,176,'clicked'),(94,180,'mGameID'),(95,180,'nick'),(96,181,'title'),(97,181,'btn_txt'),(98,181,'need_adb_flag'),(99,181,'cont'),(100,181,'close_flag'),(101,187,'id'),(102,187,'from_table'),(103,187,'detail_flag'),(104,189,'Stage'),(105,192,'oriention'),(106,198,'title'),(107,198,'btn_txt'),(108,198,'need_adb_flag'),(109,198,'cont'),(110,198,'close_flag'),(111,213,'clicked'),(112,215,'title'),(113,216,'android.intent.extra.INTENT'),(114,217,'android.intent.extra.INTENT'),(115,218,'title'),(116,219,'android.intent.extra.TITLE'),(117,219,'android.intent.extra.INTENT'),(118,222,'android.intent.extra.INTENT'),(119,225,'android.intent.extra.TITLE'),(120,225,'android.intent.extra.INTENT'),(121,226,'android.intent.extra.INTENT'),(122,228,'android.intent.extra.TITLE'),(123,229,'clicked'),(124,228,'android.intent.extra.INTENT'),(125,230,'android.intent.extra.TITLE'),(126,230,'android.intent.extra.INTENT'),(127,233,'android.intent.extra.INTENT'),(128,234,'clicked'),(129,235,'android.intent.extra.INTENT'),(130,236,'android.intent.extra.TITLE'),(131,236,'android.intent.extra.INTENT'),(132,239,'android.intent.extra.INTENT'),(133,241,'android.intent.extra.TITLE'),(134,241,'android.intent.extra.INTENT'),(135,244,'android.intent.extra.INTENT'),(136,245,'android.intent.extra.TITLE'),(137,245,'android.intent.extra.INTENT'),(138,248,'android.intent.extra.TITLE'),(139,248,'android.intent.extra.INTENT'),(140,252,'mGameID'),(141,252,'mThisGameHighScore'),(142,259,'clicked'),(143,273,'id'),(144,273,'from_table'),(145,273,'detail_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,7,1),(6,6,1),(7,8,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,2),(15,17,2),(16,18,3),(17,21,1),(18,20,1),(19,22,1),(20,23,1),(21,25,1),(22,26,1),(23,27,1),(24,28,1),(25,29,4),(26,30,4),(27,31,1),(28,32,4),(29,32,3),(30,33,5),(31,34,5),(32,36,1),(33,37,6),(34,38,5),(35,39,5),(36,40,14),(37,41,17),(38,42,18),(39,43,17),(40,43,3),(41,44,14),(42,45,3),(43,46,17),(44,46,26),(45,47,5),(46,48,26),(47,48,17),(48,49,5),(49,50,14);
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
INSERT INTO `IFCategories` VALUES (1,6,1),(2,12,1),(3,21,1),(4,22,1),(5,25,1),(6,26,1),(7,27,1),(8,28,1),(9,31,1),(10,36,1),(11,39,3),(12,40,3),(13,44,3),(14,47,3),(15,49,3),(16,50,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,33,'package',NULL,NULL,NULL,NULL,NULL),(2,34,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,40,'package',NULL,NULL,NULL,NULL,NULL),(6,44,'package',NULL,NULL,NULL,NULL,NULL),(7,47,'package',NULL,NULL,NULL,NULL,NULL),(8,49,'package',NULL,NULL,NULL,NULL,NULL),(9,50,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,19,'application','vnd.android.package-archive'),(3,22,'application','vnd.android.package-archive'),(4,39,'application','vnd.android.package-archive'),(5,41,'vnd.android-dir','mms-sms'),(6,42,'application','vnd.android.package-archive'),(7,44,'application','vnd.android.package-archive'),(8,53,'application','vnd.android.package-archive'),(9,58,'application','vnd.android.package-archive'),(10,61,'application','vnd.android.package-archive'),(11,67,'application','vnd.android.package-archive'),(12,70,'application','vnd.android.package-archive'),(13,71,'application','vnd.android.package-archive'),(14,74,'application','vnd.android.package-archive'),(15,76,'application','vnd.android.package-archive'),(16,79,'application','vnd.android.package-archive'),(17,83,'application','vnd.android.package-archive'),(18,87,'application','vnd.android.package-archive'),(19,98,'application','vnd.android.package-archive'),(20,115,'image','*'),(21,124,'application','vnd.android.package-archive'),(22,128,'image','*'),(23,130,'application','vnd.android.package-archive'),(24,131,'image','*'),(25,135,'application','vnd.android.package-archive'),(26,136,'application','vnd.android.package-archive'),(27,143,'image','*'),(28,153,'image','*'),(29,156,'image','*'),(30,174,'application','vnd.android.package-archive'),(31,220,'application','vnd.android.package-archive'),(32,227,'application','vnd.android.package-archive'),(33,232,'application','vnd.android.package-archive'),(34,237,'application','vnd.android.package-archive'),(35,243,'application','vnd.android.package-archive'),(36,261,'(.*)','(.*)'),(37,266,'application','vnd.android.package-archive'),(38,268,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'baltorogames.nquaijhep'),(2,3,'baltorogames.nquaijhep'),(3,4,'gse.emoev.utfbnbqao'),(4,5,'gse.emoev.utfbnbqao'),(5,6,'gse.emoev.utfbnbqao'),(6,7,'(.*)'),(7,8,''),(8,9,''),(9,10,'(.*)'),(10,11,'gse.emoev.utfbnbqao'),(11,12,'(.*)'),(12,13,''),(13,14,''),(14,15,'(.*)'),(15,23,'com.ariasmyth1'),(16,27,'com.ariasmyth1'),(17,32,'com.hquoaehi.bcjhtmcwb'),(18,34,'gse.emoev.utfbnbqao'),(19,35,'com.carmodelcamp'),(20,36,'com.hquoaehi.bcjhtmcwb'),(21,33,'com.ariasmyth1'),(22,37,'vhb.jdsmtfelivi'),(23,38,'com.carmodelcamp'),(24,40,'com.ariasmyth1'),(25,45,'com.ariasmyth1'),(26,46,'vhb.jdsmtfelivi'),(27,47,'com.hquoaehi.bcjhtmcwb'),(28,48,'gse.emoev.utfbnbqao'),(29,49,'com.carmodelcamp'),(30,50,'com.hquoaehi.bcjhtmcwb'),(31,51,'vhb.jdsmtfelivi'),(32,52,'com.ariasmyth1'),(33,56,'gse.emoev.utfbnbqao'),(34,55,'com.ariasmyth1'),(35,54,'vhb.jdsmtfelivi'),(36,57,'com.carmodelcamp'),(37,59,'com.ariasmyth1'),(38,60,'com.carmodelcamp'),(39,62,'vhb.jdsmtfelivi'),(40,64,'gse.emoev.utfbnbqao'),(41,63,'com.ariasmyth1'),(42,65,'vhb.jdsmtfelivi'),(43,66,'com.carmodelcamp'),(44,68,'com.ariasmyth1'),(45,72,'com.carmodelcamp'),(46,73,'com.ariasmyth1'),(47,75,'(.*)'),(48,77,'com.carmodelcamp'),(49,78,'(.*)'),(50,80,'com.ariasmyth1'),(51,84,'vhb.jdsmtfelivi'),(52,82,'com.carmodelcamp'),(53,81,'gse.emoev.utfbnbqao'),(54,85,'com.ariasmyth1'),(55,88,'vhb.jdsmtfelivi'),(56,89,'com.ariasmyth1'),(57,90,'com.carmodelcamp'),(58,91,'gse.emoev.utfbnbqao'),(59,92,'com.gvrehtiqt.kebm'),(60,93,'com.ariasmyth1'),(61,94,'com.carmodelcamp'),(62,95,'com.hquoaehi.bcjhtmcwb'),(63,96,'com.ariasmyth1'),(64,97,'com.gvrehtiqt.kebm'),(65,99,'vhb.jdsmtfelivi'),(66,100,'com.carmodelcamp'),(67,102,'com.gvrehtiqt.kebm'),(68,101,'gse.emoev.utfbnbqao'),(69,105,'com.carmodelcamp'),(70,106,'com.ariasmyth1'),(71,104,'com.hquoaehi.bcjhtmcwb'),(72,107,'(.*)'),(73,108,'NULL-CONSTANT'),(74,110,'com.hquoaehi.bcjhtmcwb'),(75,109,'com.ariasmyth1'),(76,111,'(.*)'),(77,112,'NULL-CONSTANT'),(78,114,'vhb.jdsmtfelivi'),(79,117,'gse.emoev.utfbnbqao'),(80,121,'vhb.jdsmtfelivi'),(81,123,'(.*)'),(82,126,''),(83,132,''),(84,129,'com.ariasmyth1'),(85,134,'com.gvrehtiqt.kebm'),(86,133,'(.*)'),(87,127,'vhb.jdsmtfelivi'),(88,137,'vhb.jdsmtfelivi'),(89,138,'gse.emoev.utfbnbqao'),(90,139,'com.ariasmyth1'),(91,140,'com.carmodelcamp'),(92,142,'vhb.jdsmtfelivi'),(93,146,'com.carmodelcamp'),(94,144,'com.ariasmyth1'),(95,148,'vhb.jdsmtfelivi'),(96,149,'gse.emoev.utfbnbqao'),(97,150,'com.ariasmyth1'),(98,151,'com.carmodelcamp'),(99,157,'(.*)'),(100,159,''),(101,160,'com.carmodelcamp'),(102,158,'gse.emoev.utfbnbqao'),(103,162,''),(104,165,'(.*)'),(105,163,'com.carmodelcamp'),(106,173,'com.ariasmyth1'),(107,175,'com.carmodelcamp'),(108,177,'com.gvrehtiqt.kebm'),(109,176,'com.ariasmyth1'),(110,178,'com.carmodelcamp'),(111,180,'com.gvrehtiqt.kebm'),(112,182,'com.carmodelcamp'),(113,183,'vhb.jdsmtfelivi'),(114,181,'com.ariasmyth1'),(115,185,'vhb.jdsmtfelivi'),(116,188,'com.carmodelcamp'),(117,187,'com.ariasmyth1'),(118,189,'vhb.jdsmtfelivi'),(119,190,'com.carmodelcamp'),(120,191,'NULL-CONSTANT'),(121,192,'com.gvrehtiqt.kebm'),(122,193,'vhb.jdsmtfelivi'),(123,195,'NULL-CONSTANT'),(124,199,'com.ariasmyth1'),(125,198,'com.carmodelcamp'),(126,202,'vhb.jdsmtfelivi'),(127,203,'com.carmodelcamp'),(128,204,'com.ariasmyth1'),(129,206,'(.*)'),(130,205,'com.carmodelcamp'),(131,209,'(.*)'),(132,210,'com.carmodelcamp'),(133,212,'com.ariasmyth1'),(134,214,'vhb.jdsmtfelivi'),(135,213,'com.carmodelcamp'),(136,215,'com.ariasmyth1'),(137,218,'com.carmodelcamp'),(138,229,'com.ariasmyth1'),(139,231,'com.carmodelcamp'),(140,234,'com.carmodelcamp'),(141,238,'(.*)'),(142,240,''),(143,242,''),(144,246,'(.*)'),(145,247,'com.ariasmyth1'),(146,249,'com.carmodelcamp'),(147,250,'com.ariasmyth1'),(148,251,'com.carmodelcamp'),(149,253,'com.ariasmyth1'),(150,252,'com.gvrehtiqt.kebm'),(151,254,'(.*)'),(152,255,'com.gvrehtiqt.kebm'),(153,257,'(.*)'),(154,259,'com.carmodelcamp'),(155,260,'com.ariasmyth1'),(156,262,'(.*)'),(157,263,'com.ariasmyth1'),(158,265,'(.*)'),(159,267,'com.carmodelcamp'),(160,269,'com.carmodelcamp'),(161,270,'com.ariasmyth1'),(162,271,'com.carmodelcamp'),(163,272,'com.carmodelcamp'),(164,273,'com.carmodelcamp');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,15,0),(3,14,0),(4,18,0),(5,19,0),(6,21,0),(7,22,0),(8,23,0),(9,24,0),(10,25,0),(11,26,0),(12,28,0),(13,30,0),(14,31,0),(15,41,0),(16,40,0),(17,39,0),(18,42,0),(19,43,0),(20,45,0),(21,44,0),(22,46,0),(23,49,0),(24,53,0),(25,55,0),(26,56,0),(27,60,0),(28,61,0),(29,64,0),(30,63,0),(31,66,0),(32,67,0),(33,69,0),(34,71,0),(35,72,0),(36,78,0),(37,80,0),(38,81,0),(39,67,0),(40,67,0),(41,82,0),(42,83,0),(43,84,0),(44,64,0),(45,85,0),(46,86,0),(47,64,0),(48,86,0),(49,63,0),(50,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,10,1,0),(17,10,1,0),(18,10,1,0),(19,11,1,0),(20,10,1,0),(21,10,1,0),(22,11,1,0),(23,13,0,0),(24,12,1,0),(25,10,1,0),(26,10,1,0),(27,14,0,0),(28,16,1,0),(29,15,1,0),(30,10,1,0),(31,16,1,0),(32,17,0,0),(33,18,0,0),(34,20,0,0),(35,19,0,0),(36,21,0,0),(37,22,0,0),(38,24,0,0),(39,23,1,0),(40,25,0,0),(41,26,1,0),(42,23,1,0),(43,27,1,0),(44,28,1,0),(45,29,0,0),(46,30,0,0),(47,31,0,0),(48,32,0,0),(49,33,0,0),(50,34,0,0),(51,36,0,0),(52,35,0,0),(53,37,1,0),(54,39,0,0),(55,35,0,0),(56,40,0,0),(57,38,0,0),(58,37,1,0),(59,41,0,0),(60,43,0,0),(61,37,1,0),(62,44,0,0),(63,45,0,0),(64,46,0,0),(65,44,0,0),(66,47,0,0),(67,37,1,0),(68,48,0,0),(69,49,1,0),(70,37,1,0),(71,50,1,0),(72,51,0,0),(73,52,0,0),(74,37,1,0),(75,53,1,0),(76,50,1,0),(77,54,0,0),(78,53,1,0),(79,37,1,0),(80,55,0,0),(81,56,0,0),(82,57,0,0),(83,37,1,0),(84,58,0,0),(85,59,0,0),(86,60,1,0),(87,37,1,0),(88,61,0,0),(89,62,0,0),(90,63,0,0),(91,64,0,0),(92,65,0,0),(93,66,0,0),(94,68,0,0),(95,67,0,0),(96,70,0,0),(97,71,0,0),(98,72,1,0),(99,73,0,0),(100,74,0,0),(101,75,0,0),(102,76,0,0),(103,77,1,0),(104,78,0,0),(105,79,0,0),(106,80,0,0),(107,81,1,0),(108,82,1,0),(109,83,0,0),(110,84,0,0),(111,81,1,0),(112,82,1,0),(113,85,1,0),(114,86,0,0),(115,85,1,0),(116,87,1,0),(117,88,0,0),(118,89,1,0),(119,85,1,0),(120,90,1,0),(121,91,0,0),(122,85,1,0),(123,92,1,0),(124,93,1,0),(125,85,1,0),(126,92,1,0),(127,94,0,0),(128,85,1,0),(129,95,0,0),(130,93,1,0),(131,85,1,0),(132,92,1,0),(133,92,1,0),(134,96,0,0),(135,97,1,0),(136,98,1,0),(137,99,0,0),(138,100,0,0),(139,101,0,0),(140,102,0,0),(141,103,1,0),(142,104,0,0),(143,103,1,0),(144,105,0,0),(145,103,1,0),(146,106,0,0),(147,103,1,0),(148,107,0,0),(149,108,0,0),(150,110,0,0),(151,109,0,0),(152,103,1,0),(153,103,1,0),(154,111,1,0),(155,112,1,0),(156,103,1,0),(157,113,1,0),(158,114,0,0),(159,113,1,0),(160,115,0,0),(161,116,1,0),(162,113,1,0),(163,117,0,0),(164,116,1,0),(165,113,1,0),(166,118,1,0),(167,120,1,0),(168,121,1,0),(169,122,1,0),(170,120,1,0),(171,121,1,0),(172,123,1,0),(173,124,0,0),(174,125,1,0),(175,126,0,0),(176,127,0,0),(177,128,0,0),(178,129,0,0),(179,130,1,0),(180,131,0,0),(181,132,0,0),(182,129,0,0),(183,133,0,0),(184,134,1,0),(185,135,0,0),(186,134,1,0),(187,137,0,0),(188,136,0,0),(189,138,0,0),(190,136,0,0),(191,139,1,0),(192,140,0,0),(193,141,0,0),(194,142,1,0),(195,139,1,0),(196,143,1,0),(197,144,1,0),(198,145,0,0),(199,146,0,0),(200,147,1,0),(201,148,1,0),(202,149,0,0),(203,150,0,0),(204,151,0,0),(205,150,0,0),(206,153,1,0),(207,154,1,0),(208,155,1,0),(209,153,1,0),(210,156,0,0),(211,157,1,0),(212,158,0,0),(213,159,0,0),(214,160,0,0),(215,162,0,0),(216,161,1,0),(217,161,1,0),(218,163,0,0),(219,161,1,0),(220,164,1,0),(221,165,1,0),(222,161,1,0),(223,165,1,0),(224,166,1,0),(225,161,1,0),(226,161,1,0),(227,167,1,0),(228,161,1,0),(229,168,0,0),(230,161,1,0),(231,169,0,0),(232,170,1,0),(233,171,1,0),(234,172,0,0),(235,171,1,0),(236,171,1,0),(237,173,1,0),(238,174,1,0),(239,171,1,0),(240,174,1,0),(241,171,1,0),(242,174,1,0),(243,175,1,0),(244,171,1,0),(245,171,1,0),(246,174,1,0),(247,176,0,0),(248,171,1,0),(249,177,0,0),(250,176,0,0),(251,178,0,0),(252,179,0,0),(253,180,0,0),(254,181,1,0),(255,182,0,0),(256,183,1,0),(257,181,1,0),(258,184,1,0),(259,185,0,0),(260,186,0,0),(261,184,1,0),(262,187,1,0),(263,186,0,0),(264,184,1,0),(265,187,1,0),(266,188,1,0),(267,189,0,0),(268,188,1,0),(269,190,0,0),(270,191,0,0),(271,192,0,0),(272,193,0,0),(273,194,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(9,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(6,'android.permission.INTERNET'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SET_WALLPAPER'),(12,'android.permission.SYSTEM_ALERT_WINDOW'),(14,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_act2',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_act2',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'mailto:androidmj002@gmail.com',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_vsboss',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_vsboss',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'http://www.arttec.co.jp/sat-box',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_act2',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(47,NULL,NULL,'market://details?id=jp.co.arttec.satbox.galaxylaser_vsboss',NULL,NULL,NULL),(48,NULL,NULL,'market://search?q=pub:SAT-BOX',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'market://search?q=pname:com.gamevisa8.fishpro1',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://',NULL,NULL,NULL),(58,NULL,NULL,'file://',NULL,NULL,NULL),(59,NULL,NULL,'file://',NULL,NULL,NULL),(60,NULL,NULL,'file://',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(66,NULL,NULL,'file://',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,152,50);
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
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,3,1),(6,2,3),(7,1,3),(8,3,2),(9,2,4),(10,3,6),(11,1,4),(12,2,5),(13,1,5),(14,3,7),(15,2,6),(16,3,10),(17,1,6),(18,2,7),(19,1,7),(20,3,12),(21,2,8),(22,3,13),(23,1,8),(24,2,9),(25,3,14),(26,1,9),(27,2,10),(28,1,10),(29,2,11),(30,1,11),(31,4,1),(32,4,2),(33,4,4),(34,4,6),(35,4,7),(36,4,10),(37,4,11),(38,4,13),(39,5,17),(40,5,16),(41,5,1),(42,5,6),(43,5,7),(44,5,10),(45,5,14),(46,5,15),(47,6,19),(48,6,18),(49,6,6),(50,6,7),(51,6,10),(52,6,14),(53,6,15),(54,7,17),(55,7,1),(56,7,6),(57,7,7),(58,7,10),(59,7,15);
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

-- Dump completed on 2015-10-09  0:39:42
